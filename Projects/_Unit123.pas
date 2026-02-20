//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit123;

interface

uses
  SysUtils, Classes;

    procedure sub_0067A16C;//0067A16C
    //procedure sub_0067A197(?:?; ?:Extended; ?:Extended);//0067A197
    //function sub_0067A19E(?:?):?;//0067A19E
    //function sub_0067A237(?:?; ?:?; ?:?; ?:?):?;//0067A237
    //function sub_0067A629(?:?):?;//0067A629
    //function sub_0067A6A0(?:?; ?:?; ?:?; ?:?):?;//0067A6A0
    //procedure sub_0067A7AF(?:?; ?:?; ?:?);//0067A7AF
    //procedure sub_0067A8BD(?:?);//0067A8BD
    //procedure sub_0067A8D5(?:?; ?:?);//0067A8D5
    //procedure sub_0067A8F2(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0067A8F2
    //procedure sub_0067A9C2(?:?; ?:?);//0067A9C2
    //procedure sub_0067AA40(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0067AA40
    //function sub_0067AD11:?;//0067AD11
    //procedure sub_0067AD46(?:?; ?:?);//0067AD46
    //procedure sub_0067ADDD(?:?; ?:?);//0067ADDD
    //procedure sub_0067AE22(?:?; ?:?; ?:?; ?:?);//0067AE22
    //procedure sub_0067AE97(?:?);//0067AE97
    //procedure sub_0067AF32(?:?; ?:?);//0067AF32
    //procedure sub_0067B065(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0067B065
    //procedure sub_0067B187(?:?; ?:?; ?:?; ?:?; ?:?);//0067B187
    //procedure sub_0067B469(?:?; ?:?);//0067B469
    //procedure sub_0067B5E7(?:?);//0067B5E7
    //function sub_0067B603(?:?; ?:?):?;//0067B603
    //function sub_0067B707(?:?; ?:?):?;//0067B707
    //procedure sub_0067B74C(?:?; ?:?; ?:?; ?:?; ?:?);//0067B74C
    //procedure sub_0067BC05(?:?; ?:?; ?:?; ?:?; ?:?);//0067BC05
    //function sub_0067BCFC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0067BCFC
    //procedure sub_0067BD47(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0067BD47
    //procedure sub_0067C07A(?:?; ?:?; ?:?; ?:?; ?:?);//0067C07A
    //function sub_0067C19E(?:?; ?:?; ?:?):?;//0067C19E
    //function sub_0067C225(?:?; ?:?; ?:?; ?:?):?;//0067C225

implementation

//0067A16C
procedure sub_0067A16C;
begin
{*
 0067A16C    push        6E7E2C
 0067A171    push        0
 0067A173    call        KERNEL32.GetModuleHandleA
 0067A178    push        eax
 0067A179    call        KERNEL32.GetProcAddress
 0067A17E    mov         [006F1290],eax;gvar_006F1290
 0067A183    cmp         dword ptr ds:[6F1290],0;gvar_006F1290
>0067A18A    jne         0067A196
 0067A18C    mov         dword ptr ds:[6F1290],694098
 0067A196    ret
*}
end;

//0067A197
{*procedure sub_0067A197(?:?; ?:Extended; ?:Extended);
begin
 0067A197    mov         esp,ebx
 0067A199    mov         ebp,ecx
 0067A19B    jmp         eax
 0067A19D    ret
end;*}

//0067A19E
{*function sub_0067A19E(?:?):?;
begin
 0067A19E    push        ebp
 0067A19F    mov         ebp,esp
 0067A1A1    mov         eax,dword ptr [ebp+8]
 0067A1A4    mov         edx,dword ptr [eax]
 0067A1A6    cmp         edx,0C0000092
>0067A1AC    jg          0067A1DE
>0067A1AE    je          0067A213
 0067A1B0    cmp         edx,0C000008E
>0067A1B6    jg          0067A1CF
>0067A1B8    je          0067A217
 0067A1BA    sub         edx,0C0000005
>0067A1C0    je          0067A223
 0067A1C2    sub         edx,87
>0067A1C8    je          0067A20B
 0067A1CA    dec         edx
>0067A1CB    je          0067A21F
>0067A1CD    jmp         0067A233
 0067A1CF    add         edx,3FFFFF71
 0067A1D5    sub         edx,2
>0067A1D8    jb          0067A213
>0067A1DA    je          0067A21B
>0067A1DC    jmp         0067A233
 0067A1DE    cmp         edx,0C0000096
>0067A1E4    jg          0067A1F8
>0067A1E6    je          0067A227
 0067A1E8    sub         edx,0C0000093
>0067A1EE    je          0067A21F
 0067A1F0    dec         edx
>0067A1F1    je          0067A207
 0067A1F3    dec         edx
>0067A1F4    je          0067A20F
>0067A1F6    jmp         0067A233
 0067A1F8    sub         edx,0C00000FD
>0067A1FE    je          0067A22F
 0067A200    sub         edx,3D
>0067A203    je          0067A22B
>0067A205    jmp         0067A233
 0067A207    mov         al,3
 0067A209    pop         ebp
 0067A20A    ret
 0067A20B    mov         al,4
 0067A20D    pop         ebp
 0067A20E    ret
 0067A20F    mov         al,5
 0067A211    pop         ebp
 0067A212    ret
 0067A213    mov         al,6
 0067A215    pop         ebp
 0067A216    ret
 0067A217    mov         al,7
 0067A219    pop         ebp
 0067A21A    ret
 0067A21B    mov         al,8
 0067A21D    pop         ebp
 0067A21E    ret
 0067A21F    mov         al,9
 0067A221    pop         ebp
 0067A222    ret
 0067A223    mov         al,0B
 0067A225    pop         ebp
 0067A226    ret
 0067A227    mov         al,0C
 0067A229    pop         ebp
 0067A22A    ret
 0067A22B    mov         al,0D
 0067A22D    pop         ebp
 0067A22E    ret
 0067A22F    mov         al,0E
 0067A231    pop         ebp
 0067A232    ret
 0067A233    mov         al,15
 0067A235    pop         ebp
 0067A236    ret
end;*}

//0067A237
{*function sub_0067A237(?:?; ?:?; ?:?; ?:?):?;
begin
 0067A237    push        ebp
 0067A238    mov         ebp,esp
 0067A23A    add         esp,0FFFFFFA8
 0067A23D    mov         eax,6E74DC
 0067A242    push        ebx
 0067A243    push        esi
 0067A244    push        edi
 0067A245    call        0066FECC
 0067A24A    push        dword ptr [ebp+8]
 0067A24D    call        0067A19E
 0067A252    pop         ecx
 0067A253    and         eax,0FF
 0067A258    cmp         eax,3
>0067A25B    jl          0067A262
 0067A25D    cmp         eax,0F
>0067A260    jle         0067A272
 0067A262    xor         eax,eax
 0067A264    mov         edx,dword ptr [ebp-50]
 0067A267    mov         dword ptr fs:[0000],edx
>0067A26D    jmp         0067A622
 0067A272    mov         esi,dword ptr [eax*8+6E73B4]
 0067A279    add         eax,0FFFFFFFD
 0067A27C    cmp         eax,0B
>0067A27F    ja          0067A54A
 0067A285    jmp         dword ptr [eax*4+67A28C]
 0067A285    dd          0067A2BC
 0067A285    dd          0067A2F8
 0067A285    dd          0067A334
 0067A285    dd          0067A370
 0067A285    dd          0067A3AC
 0067A285    dd          0067A3E8
 0067A285    dd          0067A424
 0067A285    dd          0067A54A
 0067A285    dd          0067A460
 0067A285    dd          0067A49C
 0067A285    dd          0067A4D8
 0067A285    dd          0067A511
 0067A2BC    mov         word ptr [ebp-40],8
 0067A2C2    mov         edx,6E7E3C
 0067A2C7    lea         eax,[ebp-4]
 0067A2CA    call        0067DAB4
 0067A2CF    inc         dword ptr [ebp-34]
 0067A2D2    mov         ecx,dword ptr [eax]
 0067A2D4    mov         dl,1
 0067A2D6    mov         eax,[00656A50];EDivByZero
 0067A2DB    call        0067C804
 0067A2E0    mov         dword ptr [ebp-58],eax
 0067A2E3    dec         dword ptr [ebp-34]
 0067A2E6    lea         eax,[ebp-4]
 0067A2E9    mov         edx,2
 0067A2EE    call        0067DCA0
>0067A2F3    jmp         0067A56A
 0067A2F8    mov         word ptr [ebp-40],14
 0067A2FE    mov         edx,6E7E47
 0067A303    lea         eax,[ebp-8]
 0067A306    call        0067DAB4
 0067A30B    inc         dword ptr [ebp-34]
 0067A30E    mov         ecx,dword ptr [eax]
 0067A310    mov         dl,1
 0067A312    mov         eax,[00656AA8];ERangeError
 0067A317    call        0054AAB4
 0067A31C    mov         dword ptr [ebp-58],eax
 0067A31F    dec         dword ptr [ebp-34]
 0067A322    lea         eax,[ebp-8]
 0067A325    mov         edx,2
 0067A32A    call        0067DCA0
>0067A32F    jmp         0067A56A
 0067A334    mov         word ptr [ebp-40],20
 0067A33A    mov         edx,6E7E53
 0067A33F    lea         eax,[ebp-0C]
 0067A342    call        0067DAB4
 0067A347    inc         dword ptr [ebp-34]
 0067A34A    mov         ecx,dword ptr [eax]
 0067A34C    mov         dl,1
 0067A34E    mov         eax,[00656B00];EIntOverflow
 0067A353    call        0067C8B0
 0067A358    mov         dword ptr [ebp-58],eax
 0067A35B    dec         dword ptr [ebp-34]
 0067A35E    lea         eax,[ebp-0C]
 0067A361    mov         edx,2
 0067A366    call        0067DCA0
>0067A36B    jmp         0067A56A
 0067A370    mov         word ptr [ebp-40],2C
 0067A376    mov         edx,6E7E60
 0067A37B    lea         eax,[ebp-10]
 0067A37E    call        0067DAB4
 0067A383    inc         dword ptr [ebp-34]
 0067A386    mov         ecx,dword ptr [eax]
 0067A388    mov         dl,1
 0067A38A    mov         eax,[00656BB4];EInvalidOp
 0067A38F    call        0067C95C
 0067A394    mov         dword ptr [ebp-58],eax
 0067A397    dec         dword ptr [ebp-34]
 0067A39A    lea         eax,[ebp-10]
 0067A39D    mov         edx,2
 0067A3A2    call        0067DCA0
>0067A3A7    jmp         0067A56A
 0067A3AC    mov         word ptr [ebp-40],38
 0067A3B2    mov         edx,6E7E6B
 0067A3B7    lea         eax,[ebp-14]
 0067A3BA    call        0067DAB4
 0067A3BF    inc         dword ptr [ebp-34]
 0067A3C2    mov         ecx,dword ptr [eax]
 0067A3C4    mov         dl,1
 0067A3C6    mov         eax,[00656C0C];EZeroDivide
 0067A3CB    call        0067CA08
 0067A3D0    mov         dword ptr [ebp-58],eax
 0067A3D3    dec         dword ptr [ebp-34]
 0067A3D6    lea         eax,[ebp-14]
 0067A3D9    mov         edx,2
 0067A3DE    call        0067DCA0
>0067A3E3    jmp         0067A56A
 0067A3E8    mov         word ptr [ebp-40],44
 0067A3EE    mov         edx,6E7E77
 0067A3F3    lea         eax,[ebp-18]
 0067A3F6    call        0067DAB4
 0067A3FB    inc         dword ptr [ebp-34]
 0067A3FE    mov         ecx,dword ptr [eax]
 0067A400    mov         dl,1
 0067A402    mov         eax,[00656C64];EOverflow
 0067A407    call        0067CAB4
 0067A40C    mov         dword ptr [ebp-58],eax
 0067A40F    dec         dword ptr [ebp-34]
 0067A412    lea         eax,[ebp-18]
 0067A415    mov         edx,2
 0067A41A    call        0067DCA0
>0067A41F    jmp         0067A56A
 0067A424    mov         word ptr [ebp-40],50
 0067A42A    mov         edx,6E7E81
 0067A42F    lea         eax,[ebp-1C]
 0067A432    call        0067DAB4
 0067A437    inc         dword ptr [ebp-34]
 0067A43A    mov         ecx,dword ptr [eax]
 0067A43C    mov         dl,1
 0067A43E    mov         eax,[00656CBC];EUnderflow
 0067A443    call        0067CB60
 0067A448    mov         dword ptr [ebp-58],eax
 0067A44B    dec         dword ptr [ebp-34]
 0067A44E    lea         eax,[ebp-1C]
 0067A451    mov         edx,2
 0067A456    call        0067DCA0
>0067A45B    jmp         0067A56A
 0067A460    mov         word ptr [ebp-40],5C
 0067A466    mov         edx,6E7E8C
 0067A46B    lea         eax,[ebp-20]
 0067A46E    call        0067DAB4
 0067A473    inc         dword ptr [ebp-34]
 0067A476    mov         ecx,dword ptr [eax]
 0067A478    mov         dl,1
 0067A47A    mov         eax,[00656E28];EAccessViolation
 0067A47F    call        0067CC0C
 0067A484    mov         dword ptr [ebp-58],eax
 0067A487    dec         dword ptr [ebp-34]
 0067A48A    lea         eax,[ebp-20]
 0067A48D    mov         edx,2
 0067A492    call        0067DCA0
>0067A497    jmp         0067A56A
 0067A49C    mov         word ptr [ebp-40],68
 0067A4A2    mov         edx,6E7E9D
 0067A4A7    lea         eax,[ebp-24]
 0067A4AA    call        0067DAB4
 0067A4AF    inc         dword ptr [ebp-34]
 0067A4B2    mov         ecx,dword ptr [eax]
 0067A4B4    mov         dl,1
 0067A4B6    mov         eax,[00656E88];EPrivilege
 0067A4BB    call        0067CCB8
 0067A4C0    mov         dword ptr [ebp-58],eax
 0067A4C3    dec         dword ptr [ebp-34]
 0067A4C6    lea         eax,[ebp-24]
 0067A4C9    mov         edx,2
 0067A4CE    call        0067DCA0
>0067A4D3    jmp         0067A56A
 0067A4D8    mov         word ptr [ebp-40],74
 0067A4DE    mov         edx,6E7EA8
 0067A4E3    lea         eax,[ebp-28]
 0067A4E6    call        0067DAB4
 0067A4EB    inc         dword ptr [ebp-34]
 0067A4EE    mov         ecx,dword ptr [eax]
 0067A4F0    mov         dl,1
 0067A4F2    mov         eax,[00656F3C];EControlC
 0067A4F7    call        0067CD64
 0067A4FC    mov         dword ptr [ebp-58],eax
 0067A4FF    dec         dword ptr [ebp-34]
 0067A502    lea         eax,[ebp-28]
 0067A505    mov         edx,2
 0067A50A    call        0067DCA0
>0067A50F    jmp         0067A56A
 0067A511    mov         word ptr [ebp-40],80
 0067A517    mov         edx,6E7EB2
 0067A51C    lea         eax,[ebp-2C]
 0067A51F    call        0067DAB4
 0067A524    inc         dword ptr [ebp-34]
 0067A527    mov         ecx,dword ptr [eax]
 0067A529    mov         dl,1
 0067A52B    mov         eax,[00656EE0];EStackOverflow
 0067A530    call        0067CE10
 0067A535    mov         dword ptr [ebp-58],eax
 0067A538    dec         dword ptr [ebp-34]
 0067A53B    lea         eax,[ebp-2C]
 0067A53E    mov         edx,2
 0067A543    call        0067DCA0
>0067A548    jmp         0067A56A
 0067A54A    mov         ecx,6E7EC1
 0067A54F    test        ecx,ecx
>0067A551    je          0067A56A
 0067A553    push        118
 0067A558    push        6E7EEE
 0067A55D    push        6E7ED6
 0067A562    call        00678AD8
 0067A567    add         esp,0C
 0067A56A    mov         di,word ptr [esi+4]
 0067A56E    test        di,20
>0067A573    jne         0067A58C
 0067A575    push        11D
 0067A57A    push        6E7F06
 0067A57F    push        6E7EF5
 0067A584    call        00678AD8
 0067A589    add         esp,0C
 0067A58C    mov         eax,dword ptr [esi+8]
 0067A58F    mov         dword ptr [ebp-54],eax
 0067A592    push        56
 0067A594    call        0067A629
 0067A599    mov         ebx,eax
 0067A59B    xor         eax,eax
 0067A59D    pop         ecx
 0067A59E    xor         ecx,ecx
 0067A5A0    mov         dword ptr [ebx],eax
 0067A5A2    mov         dword ptr [ebx+4],esi
 0067A5A5    xor         eax,eax
 0067A5A7    mov         dword ptr [ebx+0C],2
 0067A5AE    mov         dword ptr [ebx+10],4
 0067A5B5    mov         word ptr [ebx+18],di
 0067A5B9    mov         word ptr [ebx+1A],0
 0067A5BF    mov         edx,dword ptr [ebp-54]
 0067A5C2    mov         dword ptr [ebx+14],edx
 0067A5C5    mov         dword ptr [ebx+8],ecx
 0067A5C8    mov         dword ptr [ebx+28],eax
 0067A5CB    xor         edx,edx
 0067A5CD    mov         dword ptr [ebx+2C],edx
 0067A5D0    xor         ecx,ecx
 0067A5D2    mov         dword ptr [ebx+1C],67A673
 0067A5D9    mov         dword ptr [ebx+34],ecx
 0067A5DC    xor         eax,eax
 0067A5DE    mov         dword ptr [ebx+38],eax
 0067A5E1    xor         edx,edx
 0067A5E3    mov         dword ptr [ebx+20],edx
 0067A5E6    xor         ecx,ecx
 0067A5E8    mov         dword ptr [ebx+24],ecx
 0067A5EB    mov         byte ptr [ebx+45],0
 0067A5EF    mov         byte ptr [ebx+44],1
 0067A5F3    mov         eax,dword ptr [ebp+0C]
 0067A5F6    mov         dword ptr [ebx+46],eax
 0067A5F9    lea         eax,[ebp-58]
 0067A5FC    mov         edx,dword ptr [ebp+10]
 0067A5FF    mov         dword ptr [ebx+4A],edx
 0067A602    lea         edx,[ebx+52]
 0067A605    mov         ecx,dword ptr [ebp+14]
 0067A608    mov         dword ptr [ebx+4E],ecx
 0067A60B    push        4
 0067A60D    push        eax
 0067A60E    push        edx
 0067A60F    call        0066F894
 0067A614    add         esp,0C
 0067A617    mov         eax,ebx
 0067A619    mov         edx,dword ptr [ebp-50]
 0067A61C    mov         dword ptr fs:[0000],edx
 0067A622    pop         edi
 0067A623    pop         esi
 0067A624    pop         ebx
 0067A625    mov         esp,ebp
 0067A627    pop         ebp
 0067A628    ret
end;*}

//0067A629
{*function sub_0067A629(?:?):?;
begin
 0067A629    push        ebp
 0067A62A    mov         ebp,esp
 0067A62C    push        ebx
 0067A62D    mov         ebx,dword ptr [ebp+8]
 0067A630    push        ebx
 0067A631    call        0066F2C8
 0067A636    pop         ecx
 0067A637    test        eax,eax
>0067A639    jne         0067A670
 0067A63B    cmp         ebx,80
>0067A641    ja          0067A651
 0067A643    call        @GetTls
 0067A648    test        byte ptr [eax+14],1;{threadvar_20}
>0067A64F    je          0067A656
 0067A651    call        00678E4C
 0067A656    call        @GetTls
 0067A65B    or          dword ptr [eax+14],1;{threadvar_20}
 0067A662    call        @GetTls
 0067A667    mov         eax,dword ptr [eax+24];{threadvar_36}
 0067A66D    pop         ebx
 0067A66E    pop         ebp
 0067A66F    ret
 0067A670    pop         ebx
 0067A671    pop         ebp
 0067A672    ret
end;*}

//0067A6A0
{*function sub_0067A6A0(?:?; ?:?; ?:?; ?:?):?;
begin
 0067A6A0    push        ebp
 0067A6A1    mov         ebp,esp
 0067A6A3    push        ecx
 0067A6A4    push        ebx
 0067A6A5    push        esi
 0067A6A6    push        edi
 0067A6A7    mov         esi,dword ptr [ebp+10]
 0067A6AA    mov         edi,dword ptr [ebp+8]
 0067A6AD    push        dword ptr [ebp+0C]
 0067A6B0    push        0
 0067A6B2    push        esi
 0067A6B3    push        edi
 0067A6B4    call        00670550
 0067A6B9    add         esp,10
 0067A6BC    test        eax,eax
>0067A6BE    je          0067A6CA
 0067A6C0    mov         eax,1
>0067A6C5    jmp         0067A7A9
 0067A6CA    movzx       edx,word ptr [edi+4]
 0067A6CE    mov         dword ptr [ebp-4],edx
 0067A6D1    movzx       ebx,word ptr [esi+4]
 0067A6D5    test        byte ptr [ebp+14],2
>0067A6D9    je          0067A71E
 0067A6DB    test        bl,20
>0067A6DE    je          0067A71E
 0067A6E0    test        byte ptr [ebp-4],20
>0067A6E4    jne         0067A6FD
 0067A6E6    push        196
 0067A6EB    push        6E7F21
 0067A6F0    push        6E7F0D
 0067A6F5    call        00678AD8
 0067A6FA    add         esp,0C
 0067A6FD    push        dword ptr [ebp+0C]
 0067A700    push        1
 0067A702    push        dword ptr [esi+8]
 0067A705    push        dword ptr [edi+8]
 0067A708    call        00670550
 0067A70D    add         esp,10
 0067A710    test        eax,eax
>0067A712    je          0067A71E
 0067A714    mov         eax,1
>0067A719    jmp         0067A7A9
 0067A71E    test        bl,20
>0067A721    je          0067A769
 0067A723    push        dword ptr [ebp+0C]
 0067A726    push        1
 0067A728    push        dword ptr [esi+8]
 0067A72B    push        edi
 0067A72C    call        00670550
 0067A731    add         esp,10
 0067A734    test        eax,eax
>0067A736    je          0067A73F
 0067A738    mov         eax,1
>0067A73D    jmp         0067A7A9
 0067A73F    mov         esi,dword ptr [esi+8]
 0067A742    movzx       ebx,word ptr [esi+4]
 0067A746    test        bl,10
>0067A749    jne         0067A74F
 0067A74B    xor         eax,eax
>0067A74D    jmp         0067A7A9
 0067A74F    push        dword ptr [ebp+0C]
 0067A752    push        0
 0067A754    push        esi
 0067A755    push        edi
 0067A756    call        00670550
 0067A75B    add         esp,10
 0067A75E    test        eax,eax
>0067A760    je          0067A769
 0067A762    mov         eax,1
>0067A767    jmp         0067A7A9
 0067A769    test        bl,10
>0067A76C    je          0067A7A7
 0067A76E    test        byte ptr [ebp+14],1
>0067A772    je          0067A77B
 0067A774    mov         eax,1
>0067A779    jmp         0067A7A9
 0067A77B    test        byte ptr [ebp-4],10
>0067A77F    jne         0067A785
 0067A781    xor         eax,eax
>0067A783    jmp         0067A7A9
 0067A785    test        bl,40
>0067A788    je          0067A7A7
 0067A78A    test        bh,1
>0067A78D    jne         0067A795
 0067A78F    test        byte ptr [ebp-3],1
>0067A793    jne         0067A7A7
 0067A795    test        bh,2
>0067A798    jne         0067A7A0
 0067A79A    test        byte ptr [ebp-3],2
>0067A79E    jne         0067A7A7
 0067A7A0    mov         eax,1
>0067A7A5    jmp         0067A7A9
 0067A7A7    xor         eax,eax
 0067A7A9    pop         edi
 0067A7AA    pop         esi
 0067A7AB    pop         ebx
 0067A7AC    pop         ecx
 0067A7AD    pop         ebp
 0067A7AE    ret
end;*}

//0067A7AF
{*procedure sub_0067A7AF(?:?; ?:?; ?:?);
begin
 0067A7AF    push        ebp
 0067A7B0    mov         ebp,esp
 0067A7B2    push        ebx
 0067A7B3    push        esi
 0067A7B4    push        edi
 0067A7B5    mov         ebx,dword ptr [ebp+14]
 0067A7B8    mov         edi,dword ptr [ebp+0C]
 0067A7BB    test        bh,1
 0067A7BE    mov         esi,dword ptr [ebp+8]
>0067A7C1    jne         0067A7DF
 0067A7C3    test        bl,20
>0067A7C6    je          0067A7DF
 0067A7C8    push        204
 0067A7CD    push        6E7F5D
 0067A7D2    push        6E7F28
 0067A7D7    call        00678AD8
 0067A7DC    add         esp,0C
 0067A7DF    test        bl,80
>0067A7E2    je          0067A7FB
 0067A7E4    push        206
 0067A7E9    push        6E7F7D
 0067A7EE    push        6E7F64
 0067A7F3    call        00678AD8
 0067A7F8    add         esp,0C
 0067A7FB    test        bh,10
>0067A7FE    je          0067A864
 0067A800    and         ebx,7
 0067A803    dec         ebx
>0067A804    je          0067A813
 0067A806    dec         ebx
>0067A807    je          0067A822
 0067A809    dec         ebx
>0067A80A    je          0067A82E
 0067A80C    sub         ebx,2
>0067A80F    je          0067A839
>0067A811    jmp         0067A842
 0067A813    push        edi
 0067A814    push        0
 0067A816    push        esi
 0067A817    call        dword ptr [ebp+10]
 0067A81A    add         esp,0C
>0067A81D    jmp         0067A8B8
 0067A822    push        0
 0067A824    push        edi
 0067A825    push        esi
 0067A826    call        dword ptr [ebp+10]
>0067A829    jmp         0067A8B8
 0067A82E    mov         ecx,edi
 0067A830    xor         edx,edx
 0067A832    mov         eax,esi
 0067A834    call        dword ptr [ebp+10]
>0067A837    jmp         0067A8B8
 0067A839    push        edi
 0067A83A    push        0
 0067A83C    push        esi
 0067A83D    call        dword ptr [ebp+10]
>0067A840    jmp         0067A8B8
 0067A842    mov         eax,6E7F84
 0067A847    test        eax,eax
>0067A849    je          0067A8B8
 0067A84B    push        231
 0067A850    push        6E7F93
 0067A855    push        6E7F8A
 0067A85A    call        00678AD8
 0067A85F    add         esp,0C
>0067A862    jmp         0067A8B8
 0067A864    and         ebx,7
 0067A867    dec         ebx
>0067A868    je          0067A877
 0067A86A    dec         ebx
>0067A86B    je          0067A881
 0067A86D    dec         ebx
>0067A86E    je          0067A888
 0067A870    sub         ebx,2
>0067A873    je          0067A891
>0067A875    jmp         0067A898
 0067A877    push        edi
 0067A878    push        esi
 0067A879    call        dword ptr [ebp+10]
 0067A87C    add         esp,8
>0067A87F    jmp         0067A8B8
 0067A881    push        esi
 0067A882    push        edi
 0067A883    call        dword ptr [ebp+10]
>0067A886    jmp         0067A8B8
 0067A888    mov         edx,edi
 0067A88A    mov         eax,esi
 0067A88C    call        dword ptr [ebp+10]
>0067A88F    jmp         0067A8B8
 0067A891    push        edi
 0067A892    push        esi
 0067A893    call        dword ptr [ebp+10]
>0067A896    jmp         0067A8B8
 0067A898    mov         edx,6E7F9A
 0067A89D    test        edx,edx
>0067A89F    je          0067A8B8
 0067A8A1    push        25D
 0067A8A6    push        6E7FA9
 0067A8AB    push        6E7FA0
 0067A8B0    call        00678AD8
 0067A8B5    add         esp,0C
 0067A8B8    pop         edi
 0067A8B9    pop         esi
 0067A8BA    pop         ebx
 0067A8BB    pop         ebp
 0067A8BC    ret
end;*}

//0067A8BD
{*procedure sub_0067A8BD(?:?);
begin
 0067A8BD    push        ebp
 0067A8BE    mov         ebp,esp
 0067A8C0    mov         edx,dword ptr [ebp+8]
 0067A8C3    xor         eax,eax
 0067A8C5    test        edx,edx
>0067A8C7    je          0067A8D3
>0067A8C9    jmp         0067A8CC
 0067A8CB    inc         eax
 0067A8CC    mov         cl,byte ptr [edx]
 0067A8CE    inc         edx
 0067A8CF    test        cl,cl
>0067A8D1    jne         0067A8CB
 0067A8D3    pop         ebp
 0067A8D4    ret
end;*}

//0067A8D5
{*procedure sub_0067A8D5(?:?; ?:?);
begin
 0067A8D5    push        ebp
 0067A8D6    mov         ebp,esp
 0067A8D8    push        ebx
 0067A8D9    lea         eax,[ebp+8]
 0067A8DC    push        eax
 0067A8DD    mov         eax,dword ptr [ebp+0C]
 0067A8E0    inc         eax
 0067A8E1    inc         eax
 0067A8E2    push        eax
 0067A8E3    push        0
 0067A8E5    push        0EEDFAE6
 0067A8EA    call        KERNEL32.RaiseException
 0067A8EF    pop         ebx
 0067A8F0    pop         ebp
 0067A8F1    ret
end;*}

//0067A8F2
{*procedure sub_0067A8F2(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0067A8F2    push        ebp
 0067A8F3    mov         ebp,esp
 0067A8F5    push        ebx
 0067A8F6    push        esi
 0067A8F7    push        edi
 0067A8F8    cmp         dword ptr [ebp+1C],0
 0067A8FC    mov         esi,dword ptr [ebp+18]
>0067A8FF    je          0067A908
 0067A901    mov         ebx,2
>0067A906    jmp         0067A90A
 0067A908    xor         ebx,ebx
 0067A90A    test        byte ptr [ebp+10],2
>0067A90E    je          0067A916
 0067A910    or          ebx,80
 0067A916    mov         eax,[006F1290];0x0 gvar_006F1290
 0067A91B    cmp         dword ptr [eax],2
>0067A91E    jne         0067A943
 0067A920    push        dword ptr [ebp+0C]
 0067A923    call        0067043C
 0067A928    pop         ecx
 0067A929    mov         edi,eax
 0067A92B    push        edi
 0067A92C    call        0067A8BD
 0067A931    pop         ecx
 0067A932    push        eax
 0067A933    push        edi
 0067A934    push        dword ptr [ebp+14]
 0067A937    push        3
 0067A939    push        0
 0067A93B    call        0067A8D5
 0067A940    add         esp,14
 0067A943    test        esi,80
>0067A949    je          0067A962
 0067A94B    push        2CC
 0067A950    push        6E7FC9
 0067A955    push        6E7FB0
 0067A95A    call        00678AD8
 0067A95F    add         esp,0C
 0067A962    and         esi,7
 0067A965    dec         esi
>0067A966    je          0067A975
 0067A968    dec         esi
>0067A969    je          0067A981
 0067A96B    dec         esi
>0067A96C    je          0067A98A
 0067A96E    sub         esi,2
>0067A971    je          0067A994
>0067A973    jmp         0067A99D
 0067A975    push        ebx
 0067A976    push        dword ptr [ebp+8]
 0067A979    call        dword ptr [ebp+14]
 0067A97C    add         esp,8
>0067A97F    jmp         0067A9BD
 0067A981    push        ebx
 0067A982    push        dword ptr [ebp+8]
 0067A985    call        dword ptr [ebp+14]
>0067A988    jmp         0067A9BD
 0067A98A    mov         edx,ebx
 0067A98C    mov         eax,dword ptr [ebp+8]
 0067A98F    call        dword ptr [ebp+14]
>0067A992    jmp         0067A9BD
 0067A994    push        ebx
 0067A995    push        dword ptr [ebp+8]
 0067A998    call        dword ptr [ebp+14]
>0067A99B    jmp         0067A9BD
 0067A99D    mov         ecx,6E7FD0
 0067A9A2    test        ecx,ecx
>0067A9A4    je          0067A9BD
 0067A9A6    push        2F3
 0067A9AB    push        6E7FDF
 0067A9B0    push        6E7FD6
 0067A9B5    call        00678AD8
 0067A9BA    add         esp,0C
 0067A9BD    pop         edi
 0067A9BE    pop         esi
 0067A9BF    pop         ebx
 0067A9C0    pop         ebp
 0067A9C1    ret
end;*}

//0067A9C2
{*procedure sub_0067A9C2(?:?; ?:?);
begin
 0067A9C2    push        ebp
 0067A9C3    mov         ebp,esp
 0067A9C5    push        ebx
 0067A9C6    mov         ebx,dword ptr [ebp+10]
 0067A9C9    test        bl,80
>0067A9CC    je          0067A9E5
 0067A9CE    push        2FB
 0067A9D3    push        6E7FFE
 0067A9D8    push        6E7FE6
 0067A9DD    call        00678AD8
 0067A9E2    add         esp,0C
 0067A9E5    and         ebx,7
 0067A9E8    dec         ebx
>0067A9E9    je          0067A9F8
 0067A9EB    dec         ebx
>0067A9EC    je          0067AA02
 0067A9EE    dec         ebx
>0067A9EF    je          0067AA0B
 0067A9F1    sub         ebx,2
>0067A9F4    je          0067AA14
>0067A9F6    jmp         0067AA1D
 0067A9F8    push        dword ptr [ebp+8]
 0067A9FB    call        dword ptr [ebp+0C]
 0067A9FE    pop         ecx
 0067A9FF    pop         ebx
 0067AA00    pop         ebp
 0067AA01    ret
 0067AA02    push        dword ptr [ebp+8]
 0067AA05    call        dword ptr [ebp+0C]
 0067AA08    pop         ebx
 0067AA09    pop         ebp
 0067AA0A    ret
 0067AA0B    mov         eax,dword ptr [ebp+8]
 0067AA0E    call        dword ptr [ebp+0C]
 0067AA11    pop         ebx
 0067AA12    pop         ebp
 0067AA13    ret
 0067AA14    push        dword ptr [ebp+8]
 0067AA17    call        dword ptr [ebp+0C]
 0067AA1A    pop         ebx
 0067AA1B    pop         ebp
 0067AA1C    ret
 0067AA1D    mov         edx,6E8005
 0067AA22    test        edx,edx
>0067AA24    je          0067AA3D
 0067AA26    push        322
 0067AA2B    push        6E8014
 0067AA30    push        6E800B
 0067AA35    call        00678AD8
 0067AA3A    add         esp,0C
 0067AA3D    pop         ebx
 0067AA3E    pop         ebp
 0067AA3F    ret
end;*}

//0067AA40
{*procedure sub_0067AA40(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0067AA40    push        ebp
 0067AA41    mov         ebp,esp
 0067AA43    add         esp,0FFFFFFC0
 0067AA46    push        ebx
 0067AA47    push        esi
 0067AA48    push        edi
 0067AA49    mov         eax,6E7588
 0067AA4E    call        0066FECC
 0067AA53    mov         esi,dword ptr [ebp+8]
 0067AA56    call        @GetTls
 0067AA5B    or          dword ptr [eax+14],2;{threadvar_20}
 0067AA62    call        @GetTls
 0067AA67    test        esi,esi
>0067AA69    je          0067AA73
 0067AA6B    movzx       edx,word ptr [esi+6]
 0067AA6F    add         edx,esi
>0067AA71    jmp         0067AA75
 0067AA73    xor         edx,edx
 0067AA75    mov         dword ptr [eax+20],edx
 0067AA7B    call        @GetTls
 0067AA80    mov         ecx,dword ptr [ebp+20]
 0067AA83    mov         dword ptr [eax+1C],ecx
 0067AA89    call        @GetTls
 0067AA8E    mov         edx,dword ptr [ebp+24]
 0067AA91    test        esi,esi
 0067AA93    mov         dword ptr [eax+18],edx
>0067AA99    jne         0067AABE
 0067AA9B    cmp         dword ptr [ebp+2C],0
>0067AA9F    je          0067AAA7
 0067AAA1    test        byte ptr [ebp+1C],4
>0067AAA5    jne         0067AABE
 0067AAA7    push        372
 0067AAAC    push        6E8052
 0067AAB1    push        6E801B
 0067AAB6    call        00678AD8
 0067AABB    add         esp,0C
 0067AABE    test        esi,esi
>0067AAC0    je          0067AACE
 0067AAC2    test        byte ptr [esi+4],2
>0067AAC6    je          0067AACE
 0067AAC8    test        byte ptr [esi+0C],80
>0067AACC    jne         0067AAD4
 0067AACE    test        byte ptr [ebp+1C],4
>0067AAD2    je          0067AB18
 0067AAD4    mov         dword ptr [ebp-28],esi
 0067AAD7    test        esi,esi
>0067AAD9    je          0067AAEA
 0067AADB    test        byte ptr [esi+4],30
>0067AADF    je          0067AAEA
 0067AAE1    mov         eax,dword ptr [ebp-28]
 0067AAE4    mov         ecx,dword ptr [eax+8]
 0067AAE7    mov         dword ptr [ebp-28],ecx
 0067AAEA    sub         dword ptr [ebp+28],4
 0067AAEE    push        dword ptr [ebp-28]
 0067AAF1    push        dword ptr [ebp+3A]
 0067AAF4    push        dword ptr [ebp+39]
 0067AAF7    push        dword ptr [ebp+37]
 0067AAFA    push        dword ptr [ebp+38]
 0067AAFD    push        dword ptr [ebp+35]
 0067AB00    push        dword ptr [ebp+0C]
 0067AB03    push        dword ptr [ebp+28]
 0067AB06    push        esp
 0067AB07    push        8
 0067AB09    push        0C0000025
 0067AB0E    push        0EEDFADE
 0067AB13    call        KERNEL32.RaiseException
 0067AB18    mov         dword ptr [ebp-28],esi
 0067AB1B    movzx       edi,word ptr [esi+4]
 0067AB1F    test        edi,2
 0067AB25    mov         ebx,dword ptr [esi]
>0067AB27    je          0067AB2E
 0067AB29    mov         eax,dword ptr [esi+0C]
>0067AB2C    jmp         0067AB30
 0067AB2E    xor         eax,eax
 0067AB30    test        edi,30
 0067AB36    mov         dword ptr [ebp-2C],eax
>0067AB39    je          0067AB44
 0067AB3B    mov         edx,dword ptr [ebp-28]
 0067AB3E    mov         ecx,dword ptr [edx+8]
 0067AB41    mov         dword ptr [ebp-28],ecx
 0067AB44    lea         eax,[ebx+52]
 0067AB47    push        eax
 0067AB48    call        0067A629
 0067AB4D    pop         ecx
 0067AB4E    mov         dword ptr [ebp-30],eax
 0067AB51    mov         edx,dword ptr [ebp-30]
 0067AB54    xor         ecx,ecx
 0067AB56    mov         dword ptr [edx],ecx
 0067AB58    mov         eax,dword ptr [ebp-30]
 0067AB5B    mov         dword ptr [eax+4],esi
 0067AB5E    mov         edx,dword ptr [ebp-30]
 0067AB61    mov         ecx,dword ptr [ebp+1C]
 0067AB64    mov         dword ptr [edx+0C],ecx
 0067AB67    mov         eax,dword ptr [ebp-30]
 0067AB6A    mov         dword ptr [eax+10],ebx
 0067AB6D    mov         edx,dword ptr [ebp-30]
 0067AB70    mov         word ptr [edx+18],di
 0067AB74    mov         ecx,dword ptr [ebp-30]
 0067AB77    mov         ax,word ptr [ebp-2C]
 0067AB7B    mov         word ptr [ecx+1A],ax
 0067AB7F    mov         edx,dword ptr [ebp-30]
 0067AB82    mov         ecx,dword ptr [ebp-28]
 0067AB85    mov         dword ptr [edx+14],ecx
 0067AB88    mov         eax,dword ptr [ebp-30]
 0067AB8B    mov         edx,dword ptr [ebp+10]
 0067AB8E    mov         dword ptr [eax+8],edx
 0067AB91    mov         ecx,dword ptr [ebp-30]
 0067AB94    xor         eax,eax
 0067AB96    mov         dword ptr [ecx+28],eax
 0067AB99    mov         edx,dword ptr [ebp-30]
 0067AB9C    xor         ecx,ecx
 0067AB9E    mov         dword ptr [edx+2C],ecx
 0067ABA1    mov         eax,dword ptr [ebp-30]
 0067ABA4    mov         dword ptr [eax+1C],67A673
 0067ABAB    mov         edx,dword ptr [ebp-30]
 0067ABAE    mov         ecx,dword ptr [ebp+20]
 0067ABB1    mov         dword ptr [edx+34],ecx
 0067ABB4    mov         eax,dword ptr [ebp-30]
 0067ABB7    mov         edx,dword ptr [ebp+24]
 0067ABBA    mov         dword ptr [eax+38],edx
 0067ABBD    mov         ecx,dword ptr [ebp-30]
 0067ABC0    mov         eax,dword ptr [ebp+14]
 0067ABC3    mov         dword ptr [ecx+20],eax
 0067ABC6    mov         edx,dword ptr [ebp-30]
 0067ABC9    mov         ecx,dword ptr [ebp+18]
 0067ABCC    mov         dword ptr [edx+24],ecx
 0067ABCF    mov         eax,dword ptr [ebp-30]
 0067ABD2    mov         byte ptr [eax+45],0
 0067ABD6    mov         edx,dword ptr [ebp-30]
 0067ABD9    mov         byte ptr [edx+44],1
 0067ABDD    push        ebx
 0067ABDE    push        dword ptr [ebp+0C]
 0067ABE1    mov         ecx,dword ptr [ebp-30]
 0067ABE4    add         ecx,52
 0067ABE7    push        ecx
 0067ABE8    call        0066F894
 0067ABED    add         esp,0C
 0067ABF0    mov         eax,[006F1290];0x0 gvar_006F1290
 0067ABF5    cmp         dword ptr [eax],1
>0067ABF8    je          0067AC05
 0067ABFA    mov         edx,dword ptr ds:[6F1290];0x0 gvar_006F1290
 0067AC00    cmp         dword ptr [edx],2
>0067AC03    jne         0067AC6B
 0067AC05    push        esi
 0067AC06    call        0067043C
 0067AC0B    mov         ebx,eax
 0067AC0D    mov         eax,dword ptr [ebp+34]
 0067AC10    pop         ecx
 0067AC11    push        dword ptr [eax+18]
 0067AC14    mov         edx,dword ptr [ebp+34]
 0067AC17    push        dword ptr [edx+14]
 0067AC1A    mov         ecx,dword ptr [ebp+34]
 0067AC1D    push        dword ptr [ecx+10]
 0067AC20    mov         eax,dword ptr [ebp+34]
 0067AC23    push        dword ptr [eax+0C]
 0067AC26    mov         edx,dword ptr [ebp+34]
 0067AC29    push        dword ptr [edx+8]
 0067AC2C    mov         ecx,dword ptr [ebp+34]
 0067AC2F    push        dword ptr [ecx+4]
 0067AC32    mov         eax,dword ptr [ebp+34]
 0067AC35    push        dword ptr [eax]
 0067AC37    mov         edx,dword ptr [ebp-30]
 0067AC3A    cmp         byte ptr [edx+44],0
>0067AC3E    je          0067AC48
 0067AC40    mov         ecx,dword ptr [ebp-30]
 0067AC43    add         ecx,52
>0067AC46    jmp         0067AC4E
 0067AC48    mov         eax,dword ptr [ebp-30]
 0067AC4B    mov         ecx,dword ptr [eax+40]
 0067AC4E    push        ecx
 0067AC4F    push        ebx
 0067AC50    call        0067A8BD
 0067AC55    pop         ecx
 0067AC56    push        eax
 0067AC57    push        ebx
 0067AC58    mov         edx,dword ptr [ebp+28]
 0067AC5B    sub         edx,5
 0067AC5E    push        edx
 0067AC5F    push        0B
 0067AC61    push        1
 0067AC63    call        0067A8D5
 0067AC68    add         esp,34
 0067AC6B    test        byte ptr [ebp-2C],1
>0067AC6F    je          0067ACD5
 0067AC71    cmp         dword ptr [ebp+14],0
>0067AC75    jne         0067AC8E
 0067AC77    push        444
 0067AC7C    push        6E8062
 0067AC81    push        6E8059
 0067AC86    call        00678AD8
 0067AC8B    add         esp,0C
 0067AC8E    mov         eax,[006F128C];0x0 gvar_006F128C:Extended
 0067AC93    mov         dword ptr [ebp-34],eax
 0067AC96    mov         word ptr [ebp-14],8
 0067AC9C    push        dword ptr [ebp+18]
 0067AC9F    push        dword ptr [ebp+14]
 0067ACA2    push        dword ptr [ebp+0C]
 0067ACA5    mov         edx,dword ptr [ebp-30]
 0067ACA8    add         edx,52
 0067ACAB    push        edx
 0067ACAC    call        0067A7AF
 0067ACB1    mov         word ptr [ebp-14],0
 0067ACB7    add         esp,10
>0067ACBA    jmp         0067ACCC
 0067ACBC    call        00670AD8
 0067ACC1    mov         word ptr [ebp-14],10
 0067ACC7    call        0067AF32
 0067ACCC    mov         ecx,dword ptr [ebp-34]
 0067ACCF    mov         dword ptr ds:[6F128C],ecx;gvar_006F128C:Extended
 0067ACD5    call        @GetTls
 0067ACDA    mov         eax,dword ptr [eax+20];{threadvar_32}
 0067ACE0    mov         dword ptr [ebp-40],eax
 0067ACE3    lea         eax,[ebp-40]
 0067ACE6    mov         edx,dword ptr [ebp+28]
 0067ACE9    mov         dword ptr [ebp-3C],edx
 0067ACEC    mov         ecx,dword ptr [ebp-30]
 0067ACEF    mov         dword ptr [ebp-38],ecx
 0067ACF2    push        eax
 0067ACF3    push        3
 0067ACF5    push        1
 0067ACF7    push        0EEFFACE
 0067ACFC    call        KERNEL32.RaiseException
 0067AD01    mov         edx,dword ptr [ebp-24]
 0067AD04    mov         dword ptr fs:[0000],edx
 0067AD0A    pop         edi
 0067AD0B    pop         esi
 0067AD0C    pop         ebx
 0067AD0D    mov         esp,ebp
 0067AD0F    pop         ebp
 0067AD10    ret
end;*}

//0067AD11
{*function sub_0067AD11:?;
begin
 0067AD11    mov         ecx,esp
 0067AD13    add         ecx,4
 0067AD16    push        ecx
 0067AD17    push        ebp
 0067AD18    push        esi
 0067AD19    push        edi
 0067AD1A    push        edx
 0067AD1B    push        ebx
 0067AD1C    push        eax
 0067AD1D    push        esp
 0067AD1E    push        dword ptr [ecx+20]
 0067AD21    push        0
 0067AD23    push        dword ptr [ecx-4]
 0067AD26    push        dword ptr [ecx+1C]
 0067AD29    push        dword ptr [ecx+18]
 0067AD2C    push        dword ptr [ecx+14]
 0067AD2F    push        dword ptr [ecx+10]
 0067AD32    push        dword ptr [ecx+0C]
 0067AD35    push        dword ptr [ecx+8]
 0067AD38    push        dword ptr [ecx+4]
 0067AD3B    push        dword ptr [ecx]
 0067AD3D    call        0067AA40
 0067AD42    add         esp,4C
 0067AD45    ret
end;*}

//0067AD46
{*procedure sub_0067AD46(?:?; ?:?);
begin
 0067AD46    push        ebp
 0067AD47    mov         ebp,esp
 0067AD49    push        ecx
 0067AD4A    push        ebx
 0067AD4B    push        esi
 0067AD4C    push        edi
 0067AD4D    mov         ecx,ebp
 0067AD4F    add         ecx,8
 0067AD52    push        ecx
 0067AD53    push        dword ptr [ebp]
 0067AD56    push        esi
 0067AD57    push        edi
 0067AD58    push        edx
 0067AD59    push        ebx
 0067AD5A    push        eax
 0067AD5B    mov         dword ptr [ebp-4],esp
 0067AD5E    mov         eax,ebp
 0067AD60    mov         esi,dword ptr [eax+4]
 0067AD63    call        @GetTls
 0067AD68    mov         ebx,dword ptr [eax+10];{threadvar_16}
 0067AD6E    test        ebx,ebx
>0067AD70    jne         0067AD77
 0067AD72    call        00670AD8
 0067AD77    test        byte ptr [ebx+0C],4
>0067AD7B    je          0067AD9F
 0067AD7D    cmp         byte ptr [ebx+44],0
>0067AD81    jne         0067AD9A
 0067AD83    push        550
 0067AD88    push        6E8078
 0067AD8D    push        6E8069
 0067AD92    call        00678AD8
 0067AD97    add         esp,0C
 0067AD9A    mov         eax,dword ptr [ebx+52]
>0067AD9D    jmp         0067ADAD
 0067AD9F    cmp         byte ptr [ebx+44],0
>0067ADA3    je          0067ADAA
 0067ADA5    lea         eax,[ebx+52]
>0067ADA8    jmp         0067ADAD
 0067ADAA    mov         eax,dword ptr [ebx+40]
 0067ADAD    or          dword ptr [ebx+0C],8
 0067ADB1    push        dword ptr [ebp-4]
 0067ADB4    push        0
 0067ADB6    push        1
 0067ADB8    push        esi
 0067ADB9    push        dword ptr [ebp+0C]
 0067ADBC    push        dword ptr [ebp+8]
 0067ADBF    push        dword ptr [ebx+0C]
 0067ADC2    push        dword ptr [ebx+24]
 0067ADC5    push        dword ptr [ebx+20]
 0067ADC8    push        dword ptr [ebx+8]
 0067ADCB    push        eax
 0067ADCC    push        dword ptr [ebx+4]
 0067ADCF    call        0067AA40
 0067ADD4    add         esp,30
 0067ADD7    pop         edi
 0067ADD8    pop         esi
 0067ADD9    pop         ebx
 0067ADDA    pop         ecx
 0067ADDB    pop         ebp
 0067ADDC    ret
end;*}

//0067ADDD
{*procedure sub_0067ADDD(?:?; ?:?);
begin
 0067ADDD    push        ebp
 0067ADDE    mov         ebp,esp
 0067ADE0    add         esp,0FFFFFFB0
 0067ADE3    push        ebx
 0067ADE4    mov         ebx,dword ptr [ebp+0C]
 0067ADE7    test        ebx,ebx
>0067ADE9    jne         0067AE01
 0067ADEB    mov         dword ptr [ebp-50],26
 0067ADF2    mov         dword ptr [ebp-4C],2
 0067ADF9    xor         eax,eax
 0067ADFB    lea         ebx,[ebp-50]
 0067ADFE    mov         dword ptr [ebp-40],eax
 0067AE01    or          dword ptr [ebx+4],2
 0067AE05    mov         eax,7B
 0067AE0A    mov         edx,7B
 0067AE0F    mov         eax,dword ptr [ebp+8]
 0067AE12    mov         edx,ebx
 0067AE14    call        00670DCE
 0067AE19    xor         dword ptr [ebx+4],2
 0067AE1D    pop         ebx
 0067AE1E    mov         esp,ebp
 0067AE20    pop         ebp
 0067AE21    ret
end;*}

//0067AE22
{*procedure sub_0067AE22(?:?; ?:?; ?:?; ?:?);
begin
 0067AE22    push        ebp
 0067AE23    mov         ebp,esp
 0067AE25    add         esp,0FFFFFFDC
 0067AE28    mov         eax,6E75BC
 0067AE2D    push        ebx
 0067AE2E    push        esi
 0067AE2F    push        edi
 0067AE30    mov         ebx,dword ptr [ebp+10]
 0067AE33    call        0066FECC
 0067AE38    test        ebx,ebx
>0067AE3A    jne         0067AE53
 0067AE3C    push        5B8
 0067AE41    push        6E8088
 0067AE46    push        6E807F
 0067AE4B    call        00678AD8
 0067AE50    add         esp,0C
 0067AE53    mov         word ptr [ebp-14],8
 0067AE59    push        1
 0067AE5B    push        dword ptr [ebp+14]
 0067AE5E    push        ebx
 0067AE5F    push        0
 0067AE61    push        dword ptr [ebp+0C]
 0067AE64    push        dword ptr [ebp+8]
 0067AE67    call        0067A8F2
 0067AE6C    mov         word ptr [ebp-14],0
 0067AE72    add         esp,18
>0067AE75    jmp         0067AE87
 0067AE77    call        00670AD8
 0067AE7C    mov         word ptr [ebp-14],10
 0067AE82    call        0067AF32
 0067AE87    mov         edx,dword ptr [ebp-24]
 0067AE8A    mov         dword ptr fs:[0000],edx
 0067AE90    pop         edi
 0067AE91    pop         esi
 0067AE92    pop         ebx
 0067AE93    mov         esp,ebp
 0067AE95    pop         ebp
 0067AE96    ret
end;*}

//0067AE97
{*procedure sub_0067AE97(?:?);
begin
 0067AE97    push        ebp
 0067AE98    mov         ebp,esp
 0067AE9A    push        ebx
 0067AE9B    push        esi
 0067AE9C    mov         ebx,dword ptr [ebp+8]
 0067AE9F    cmp         byte ptr [ebx+44],0
>0067AEA3    je          0067AEE6
 0067AEA5    test        byte ptr [ebx+1A],2
>0067AEA9    je          0067AEE2
 0067AEAB    mov         eax,dword ptr [ebx+14]
 0067AEAE    mov         esi,dword ptr ds:[6F128C];0x0 gvar_006F128C:Extended
 0067AEB4    lea         edx,[ebx+52]
 0067AEB7    test        byte ptr [eax+0C],80
>0067AEBB    je          0067AEBF
 0067AEBD    mov         edx,dword ptr [edx]
 0067AEBF    mov         ecx,dword ptr [ebx+0C]
 0067AEC2    and         ecx,0C
 0067AEC5    cmp         ecx,0C
>0067AEC8    je          0067AEDC
 0067AECA    movzx       ecx,word ptr [eax+2C]
 0067AECE    push        ecx
 0067AECF    push        dword ptr [eax+28]
 0067AED2    push        eax
 0067AED3    push        edx
 0067AED4    call        0067AE22
 0067AED9    add         esp,10
 0067AEDC    mov         dword ptr ds:[6F128C],esi;gvar_006F128C:Extended
 0067AEE2    mov         byte ptr [ebx+44],0
 0067AEE6    cmp         byte ptr [ebx+45],0
>0067AEEA    je          0067AF2E
 0067AEEC    mov         esi,dword ptr [ebx+3C]
 0067AEEF    test        esi,esi
>0067AEF1    jne         0067AF0A
 0067AEF3    push        5FD
 0067AEF8    push        6E8097
 0067AEFD    push        6E808F
 0067AF02    call        00678AD8
 0067AF07    add         esp,0C
 0067AF0A    test        byte ptr [esi+4],2
>0067AF0E    je          0067AF2A
 0067AF10    test        byte ptr [esi+0C],2
>0067AF14    je          0067AF2A
 0067AF16    movzx       eax,word ptr [esi+2C]
 0067AF1A    push        eax
 0067AF1B    push        dword ptr [esi+28]
 0067AF1E    push        esi
 0067AF1F    push        dword ptr [ebx+40]
 0067AF22    call        0067AE22
 0067AF27    add         esp,10
 0067AF2A    mov         byte ptr [ebx+45],0
 0067AF2E    pop         esi
 0067AF2F    pop         ebx
 0067AF30    pop         ebp
 0067AF31    ret
end;*}

//0067AF32
{*procedure sub_0067AF32(?:?; ?:?);
begin
 0067AF32    push        ebp
 0067AF33    mov         ebp,esp
 0067AF35    add         esp,0FFFFFFEC
 0067AF38    push        ebx
 0067AF39    push        esi
 0067AF3A    push        edi
 0067AF3B    mov         dword ptr [ebp-8],ebx
 0067AF3E    mov         dword ptr [ebp-0C],edi
 0067AF41    mov         dword ptr [ebp-10],esi
 0067AF44    call        @GetTls
 0067AF49    cmp         dword ptr [eax+10],0;{threadvar_16}
>0067AF50    jne         0067AF69
 0067AF52    push        628
 0067AF57    push        6E80B1
 0067AF5C    push        6E809E
 0067AF61    call        00678AD8
 0067AF66    add         esp,0C
 0067AF69    call        @GetTls
 0067AF6E    mov         ebx,dword ptr [eax+10];{threadvar_16}
 0067AF74    call        @GetTls
 0067AF79    mov         edx,dword ptr [ebx]
 0067AF7B    mov         dword ptr [eax+10],edx
 0067AF81    mov         eax,dword ptr [ebx+28]
 0067AF84    mov         dword ptr [ebp-4],eax
 0067AF87    mov         esi,dword ptr fs:[0000]
 0067AF8D    test        esi,esi
>0067AF8F    jne         0067AFA8
 0067AF91    push        636
 0067AF96    push        6E80BB
 0067AF9B    push        6E80B8
 0067AFA0    call        00678AD8
 0067AFA5    add         esp,0C
 0067AFA8    cmp         esi,dword ptr [ebx+28]
>0067AFAB    je          0067AFC4
 0067AFAD    push        637
 0067AFB2    push        6E80DA
 0067AFB7    push        6E80C2
 0067AFBC    call        00678AD8
 0067AFC1    add         esp,0C
 0067AFC4    mov         eax,dword ptr [ebp-4]
 0067AFC7    mov         ecx,dword ptr [ebp-4]
 0067AFCA    movzx       edx,word ptr [eax+10]
 0067AFCE    mov         eax,dword ptr [ecx+8]
 0067AFD1    mov         ecx,dword ptr [ebp-4]
 0067AFD4    mov         dx,word ptr [eax+edx]
 0067AFD8    mov         word ptr [ecx+10],dx
 0067AFDC    push        ebx
 0067AFDD    call        0067AE97
 0067AFE2    pop         ecx
 0067AFE3    mov         esi,dword ptr [ebx+0C]
 0067AFE6    and         esi,2
 0067AFE9    test        esi,esi
 0067AFEB    push        ebx
 0067AFEC    call        dword ptr [ebx+1C]
 0067AFEF    pop         ecx
 0067AFF0    test        esi,esi
>0067AFF2    je          0067B02A
 0067AFF4    mov         eax,[006F1290];0x0 gvar_006F1290
 0067AFF9    cmp         dword ptr [eax],2
>0067AFFC    jne         0067B00D
 0067AFFE    push        dword ptr [ebp+4]
 0067B001    push        1
 0067B003    push        6
 0067B005    call        0067A8D5
 0067B00A    add         esp,0C
 0067B00D    mov         edx,dword ptr [ebp-4]
 0067B010    mov         ecx,dword ptr [edx+0C]
 0067B013    mov         dword ptr [ebp-14],ecx
 0067B016    mov         ebx,dword ptr [ebp-8]
 0067B019    mov         edi,dword ptr [ebp-0C]
 0067B01C    mov         esi,dword ptr [ebp-10]
 0067B01F    mov         edx,dword ptr [ebp-14]
 0067B022    mov         esp,ebp
 0067B024    pop         ebp
 0067B025    pop         eax
 0067B026    mov         esp,edx
 0067B028    push        eax
 0067B029    ret
 0067B02A    mov         eax,[006F1290];0x0 gvar_006F1290
 0067B02F    cmp         dword ptr [eax],2
>0067B032    jne         0067B043
 0067B034    push        dword ptr [ebp+4]
 0067B037    push        1
 0067B039    push        6
 0067B03B    call        0067A8D5
 0067B040    add         esp,0C
 0067B043    mov         ebx,dword ptr [ebp-8]
 0067B046    mov         edi,dword ptr [ebp-0C]
 0067B049    mov         esi,dword ptr [ebp-10]
 0067B04C    mov         eax,ebp
 0067B04E    mov         eax,dword ptr [ebp+4]
 0067B051    mov         edx,dword ptr [ebp-4]
 0067B054    mov         edx,dword ptr [edx+0C]
 0067B057    mov         ebp,dword ptr [ebp]
 0067B05A    mov         esp,edx
 0067B05C    push        eax
 0067B05D    ret
end;*}

//0067B065
{*procedure sub_0067B065(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0067B065    push        ebp
 0067B066    mov         ebp,esp
 0067B068    push        ebx
 0067B069    push        esi
 0067B06A    push        edi
 0067B06B    mov         edi,dword ptr [ebp+8]
 0067B06E    mov         esi,dword ptr [edi+4]
 0067B071    test        esi,esi
>0067B073    je          0067B092
 0067B075    test        byte ptr [esi+4],30
>0067B079    jne         0067B092
 0067B07B    push        6B1
 0067B080    push        6E8111
 0067B085    push        6E80E1
 0067B08A    call        00678AD8
 0067B08F    add         esp,0C
 0067B092    push        56
 0067B094    call        0067A629
 0067B099    pop         ecx
 0067B09A    mov         ebx,eax
 0067B09C    call        @GetTls
 0067B0A1    mov         eax,dword ptr [eax+10];{threadvar_16}
 0067B0A7    mov         dword ptr [ebx],eax
 0067B0A9    call        @GetTls
 0067B0AE    mov         dword ptr [eax+10],ebx;{threadvar_16}
 0067B0B4    mov         edx,dword ptr [ebp+10]
 0067B0B7    cmp         dword ptr [edx+10],8
>0067B0BB    jne         0067B0D8
 0067B0BD    mov         ecx,dword ptr [ebp+10]
 0067B0C0    mov         eax,dword ptr [ecx+30]
 0067B0C3    mov         dword ptr [ebx+14],eax
 0067B0C6    test        eax,eax
>0067B0C8    je          0067B0D0
 0067B0CA    mov         dx,word ptr [eax+0C]
>0067B0CE    jmp         0067B0D2
 0067B0D0    xor         edx,edx
 0067B0D2    mov         word ptr [ebx+1A],dx
>0067B0D6    jmp         0067B0FB
 0067B0D8    mov         eax,esi
 0067B0DA    test        esi,esi
>0067B0DC    je          0067B0E3
 0067B0DE    mov         ecx,dword ptr [esi+8]
>0067B0E1    jmp         0067B0E5
 0067B0E3    xor         ecx,ecx
 0067B0E5    mov         dword ptr [ebx+14],ecx
 0067B0E8    test        esi,esi
>0067B0EA    je          0067B0F5
 0067B0EC    mov         edx,dword ptr [esi+8]
 0067B0EF    mov         dx,word ptr [edx+0C]
>0067B0F3    jmp         0067B0F7
 0067B0F5    xor         edx,edx
 0067B0F7    mov         word ptr [ebx+1A],dx
 0067B0FB    mov         dword ptr [ebx+4],eax
 0067B0FE    mov         dword ptr [ebx+0C],4
 0067B105    mov         dword ptr [ebx+10],4
 0067B10C    test        eax,eax
>0067B10E    je          0067B116
 0067B110    mov         ax,word ptr [eax+4]
>0067B114    jmp         0067B118
 0067B116    xor         eax,eax
 0067B118    mov         word ptr [ebx+18],ax
 0067B11C    xor         edx,edx
 0067B11E    mov         dword ptr [ebx+8],edx
 0067B121    xor         eax,eax
 0067B123    mov         ecx,dword ptr [ebp+0C]
 0067B126    xor         edx,edx
 0067B128    mov         dword ptr [ebx+28],ecx
 0067B12B    mov         dword ptr [ebx+2C],edi
 0067B12E    mov         dword ptr [ebx+1C],67A673
 0067B135    mov         dword ptr [ebx+34],eax
 0067B138    mov         dword ptr [ebx+38],edx
 0067B13B    xor         ecx,ecx
 0067B13D    xor         eax,eax
 0067B13F    mov         dword ptr [ebx+20],ecx
 0067B142    mov         dword ptr [ebx+24],eax
 0067B145    mov         byte ptr [ebx+45],0
 0067B149    mov         byte ptr [ebx+44],1
 0067B14D    mov         dword ptr [ebx+3C],esi
 0067B150    test        esi,esi
 0067B152    mov         edx,dword ptr [ebp+1C]
 0067B155    mov         dword ptr [ebx+30],edx
 0067B158    mov         ecx,dword ptr [ebp+10]
 0067B15B    mov         eax,dword ptr [ecx+18]
 0067B15E    mov         dword ptr [ebx+52],eax
>0067B161    je          0067B182
 0067B163    test        byte ptr [edi+8],80
>0067B167    jne         0067B182
 0067B169    mov         byte ptr [ebx+45],1
 0067B16D    mov         edx,dword ptr [ebp+14]
 0067B170    lea         eax,[ebx+52]
 0067B173    mov         ecx,dword ptr [edx]
 0067B175    add         ecx,dword ptr [ebp+18]
 0067B178    mov         dword ptr [ebx+40],ecx
 0067B17B    mov         edx,dword ptr [ebx+40]
 0067B17E    mov         eax,dword ptr [eax]
 0067B180    mov         dword ptr [edx],eax
 0067B182    pop         edi
 0067B183    pop         esi
 0067B184    pop         ebx
 0067B185    pop         ebp
 0067B186    ret
end;*}

//0067B187
{*procedure sub_0067B187(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0067B187    push        ebp
 0067B188    mov         ebp,esp
 0067B18A    add         esp,0FFFFFFF0
 0067B18D    push        ebx
 0067B18E    push        esi
 0067B18F    push        edi
 0067B190    mov         ebx,dword ptr [ebp+10]
 0067B193    mov         eax,dword ptr [ebx+28]
 0067B196    cmp         eax,dword ptr [ebp+0C]
>0067B199    je          0067B1B2
 0067B19B    push        721
 0067B1A0    push        6E8134
 0067B1A5    push        6E8118
 0067B1AA    call        00678AD8
 0067B1AF    add         esp,0C
 0067B1B2    mov         edx,dword ptr [ebx+2C]
 0067B1B5    cmp         edx,dword ptr [ebp+8]
>0067B1B8    je          0067B1D1
 0067B1BA    push        722
 0067B1BF    push        6E8157
 0067B1C4    push        6E813B
 0067B1C9    call        00678AD8
 0067B1CE    add         esp,0C
 0067B1D1    cmp         byte ptr [ebx+45],0
>0067B1D5    je          0067B1EE
 0067B1D7    push        724
 0067B1DC    push        6E8175
 0067B1E1    push        6E815E
 0067B1E6    call        00678AD8
 0067B1EB    add         esp,0C
 0067B1EE    mov         ecx,dword ptr [ebp+8]
 0067B1F1    mov         eax,dword ptr [ecx+4]
 0067B1F4    mov         dword ptr [ebx+3C],eax
 0067B1F7    test        eax,eax
>0067B1F9    je          0067B462
 0067B1FF    mov         edx,dword ptr [ebp+8]
 0067B202    test        byte ptr [edx+8],80
>0067B206    jne         0067B462
 0067B20C    mov         ecx,dword ptr [ebp+8]
 0067B20F    mov         esi,eax
 0067B211    test        byte ptr [ecx+8],1
 0067B215    sete        dl
 0067B218    and         edx,1
 0067B21B    lea         ecx,[ebx+52]
 0067B21E    mov         dword ptr [ebp-0C],edx
 0067B221    mov         dword ptr [ebp-8],ecx
 0067B224    mov         byte ptr [ebx+45],1
 0067B228    mov         edx,dword ptr [ebp+14]
 0067B22B    mov         ecx,dword ptr [edx]
 0067B22D    add         ecx,dword ptr [ebp+18]
 0067B230    mov         dword ptr [ebx+40],ecx
 0067B233    movzx       eax,word ptr [esi+4]
 0067B237    mov         edi,dword ptr [esi]
 0067B239    mov         dword ptr [ebp-4],eax
 0067B23C    test        al,30
>0067B23E    je          0067B24A
 0067B240    mov         esi,dword ptr [esi+8]
 0067B243    movzx       edx,word ptr [esi+4]
 0067B247    mov         dword ptr [ebp-4],edx
 0067B24A    test        al,10
>0067B24C    je          0067B26E
 0067B24E    test        byte ptr [ebx+0C],1
>0067B252    je          0067B26E
 0067B254    push        edi
 0067B255    push        0
 0067B257    push        dword ptr [ebx+40]
 0067B25A    call        0066F904
 0067B25F    mov         dword ptr [ebp-0C],1
 0067B266    add         esp,0C
>0067B269    jmp         0067B438
 0067B26E    test        byte ptr [ebp-4],1
>0067B272    je          0067B344
 0067B278    test        al,30
>0067B27A    je          0067B344
 0067B280    test        al,20
>0067B282    je          0067B2B8
 0067B284    test        byte ptr [ebx+18],10
>0067B288    je          0067B2A1
 0067B28A    push        781
 0067B28F    push        6E819E
 0067B294    push        6E817C
 0067B299    call        00678AD8
 0067B29E    add         esp,0C
 0067B2A1    mov         dword ptr [ebp-0C],1
 0067B2A8    test        byte ptr [ebx+0C],2
>0067B2AC    je          0067B2F8
 0067B2AE    mov         ecx,dword ptr [ebp-8]
 0067B2B1    mov         eax,dword ptr [ecx]
 0067B2B3    mov         dword ptr [ebp-8],eax
>0067B2B6    jmp         0067B2F8
 0067B2B8    test        al,10
>0067B2BA    jne         0067B2D3
 0067B2BC    push        794
 0067B2C1    push        6E81B6
 0067B2C6    push        6E81A5
 0067B2CB    call        00678AD8
 0067B2D0    add         esp,0C
 0067B2D3    test        byte ptr [ebx+18],10
>0067B2D7    jne         0067B2F0
 0067B2D9    push        795
 0067B2DE    push        6E81D8
 0067B2E3    push        6E81BD
 0067B2E8    call        00678AD8
 0067B2ED    add         esp,0C
 0067B2F0    mov         edx,dword ptr [ebp-8]
 0067B2F3    mov         ecx,dword ptr [edx]
 0067B2F5    mov         dword ptr [ebp-8],ecx
 0067B2F8    push        esi
 0067B2F9    push        dword ptr [ebx+14]
 0067B2FC    call        00670474
 0067B301    add         esp,8
 0067B304    test        eax,eax
>0067B306    jne         0067B32F
 0067B308    mov         eax,dword ptr [ebp-8]
 0067B30B    mov         dword ptr [ebp-10],eax
 0067B30E    push        esi
 0067B30F    push        dword ptr [ebx+14]
 0067B312    push        dword ptr [ebp-8]
 0067B315    call        006708C4
 0067B31A    add         esp,0C
 0067B31D    mov         dword ptr [ebp-8],eax
 0067B320    mov         edx,dword ptr [ebp-8]
 0067B323    cmp         edx,dword ptr [ebp-10]
>0067B326    je          0067B32F
 0067B328    mov         dword ptr [ebp-0C],1
 0067B32F    push        edi
 0067B330    lea         ecx,[ebp-8]
 0067B333    push        ecx
 0067B334    push        dword ptr [ebx+40]
 0067B337    call        0066F894
 0067B33C    add         esp,0C
>0067B33F    jmp         0067B438
 0067B344    test        byte ptr [ebx+18],1
>0067B348    je          0067B3F0
 0067B34E    mov         eax,dword ptr [ebx+4]
 0067B351    cmp         eax,dword ptr [ebx+14]
>0067B354    je          0067B36D
 0067B356    push        7B5
 0067B35B    push        6E8202
 0067B360    push        6E81DF
 0067B365    call        00678AD8
 0067B36A    add         esp,0C
 0067B36D    push        esi
 0067B36E    push        dword ptr [ebx+14]
 0067B371    call        00670474
 0067B376    add         esp,8
 0067B379    test        eax,eax
>0067B37B    jne         0067B396
 0067B37D    push        esi
 0067B37E    push        dword ptr [ebx+14]
 0067B381    push        dword ptr [ebp-8]
 0067B384    call        006708C4
 0067B389    add         esp,0C
 0067B38C    mov         dword ptr [ebp-8],eax
 0067B38F    mov         dword ptr [ebp-0C],1
 0067B396    test        byte ptr [esi+0C],1
>0067B39A    je          0067B3DF
 0067B39C    mov         edx,dword ptr [ebp+8]
 0067B39F    cmp         dword ptr [edx+0C],0
>0067B3A3    jne         0067B3BC
 0067B3A5    push        7CF
 0067B3AA    push        6E821C
 0067B3AF    push        6E8209
 0067B3B4    call        00678AD8
 0067B3B9    add         esp,0C
 0067B3BC    mov         ecx,dword ptr [ebp+8]
 0067B3BF    push        dword ptr [ecx+10]
 0067B3C2    mov         eax,dword ptr [ebp+8]
 0067B3C5    push        dword ptr [eax+0C]
 0067B3C8    push        dword ptr [ebp-8]
 0067B3CB    push        dword ptr [ebx+40]
 0067B3CE    call        0067A7AF
 0067B3D3    mov         dword ptr [ebp-0C],1
 0067B3DA    add         esp,10
>0067B3DD    jmp         0067B438
 0067B3DF    push        edi
 0067B3E0    push        dword ptr [ebp-8]
 0067B3E3    push        dword ptr [ebx+40]
 0067B3E6    call        0066F894
 0067B3EB    add         esp,0C
>0067B3EE    jmp         0067B438
 0067B3F0    test        al,20
>0067B3F2    je          0067B40D
 0067B3F4    push        edi
 0067B3F5    lea         edx,[ebp-8]
 0067B3F8    push        edx
 0067B3F9    push        dword ptr [ebx+40]
 0067B3FC    call        0066F894
 0067B401    mov         dword ptr [ebp-0C],1
 0067B408    add         esp,0C
>0067B40B    jmp         0067B438
 0067B40D    cmp         edi,dword ptr [ebx+10]
>0067B410    je          0067B429
 0067B412    push        7F7
 0067B417    push        6E823A
 0067B41C    push        6E8223
 0067B421    call        00678AD8
 0067B426    add         esp,0C
 0067B429    push        edi
 0067B42A    push        dword ptr [ebp-8]
 0067B42D    push        dword ptr [ebx+40]
 0067B430    call        0066F894
 0067B435    add         esp,0C
 0067B438    cmp         dword ptr [ebp-0C],0
>0067B43C    jne         0067B462
 0067B43E    test        byte ptr [ebp-4],3
>0067B442    je          0067B462
 0067B444    test        byte ptr [esi+0C],2
>0067B448    je          0067B45E
 0067B44A    movzx       ecx,word ptr [esi+2C]
 0067B44E    push        ecx
 0067B44F    push        dword ptr [esi+28]
 0067B452    push        esi
 0067B453    push        dword ptr [ebp-8]
 0067B456    call        0067AE22
 0067B45B    add         esp,10
 0067B45E    mov         byte ptr [ebx+44],0
 0067B462    pop         edi
 0067B463    pop         esi
 0067B464    pop         ebx
 0067B465    mov         esp,ebp
 0067B467    pop         ebp
 0067B468    ret
end;*}

//0067B469
{*procedure sub_0067B469(?:?; ?:?);
begin
 0067B469    push        ebp
 0067B46A    mov         ebp,esp
 0067B46C    add         esp,0FFFFFFF0
 0067B46F    xor         eax,eax
 0067B471    push        ebx
 0067B472    push        esi
 0067B473    push        edi
 0067B474    mov         dword ptr [ebp-0C],eax
 0067B477    mov         edx,dword ptr [ebp+8]
 0067B47A    mov         ecx,dword ptr [edx+8]
 0067B47D    mov         dword ptr [ebp-4],ecx
 0067B480    mov         eax,dword ptr [ebp-4]
 0067B483    mov         edx,dword ptr [ebp+8]
 0067B486    sub         edx,dword ptr [eax+4]
 0067B489    mov         dword ptr [ebp-8],edx
 0067B48C    mov         ecx,dword ptr [ebp+8]
 0067B48F    movzx       ebx,word ptr [ecx+10]
>0067B493    jmp         0067B5C0
 0067B498    mov         eax,ebx
 0067B49A    mov         edx,dword ptr [ebp-4]
 0067B49D    mov         ecx,dword ptr [ebp+8]
 0067B4A0    movzx       edi,word ptr [edx+eax]
 0067B4A4    add         eax,2
 0067B4A7    mov         edx,dword ptr [ebp-4]
 0067B4AA    movzx       edx,word ptr [edx+eax]
 0067B4AE    mov         word ptr [ecx+10],di
 0067B4B2    add         eax,2
 0067B4B5    sub         edx,1
>0067B4B8    jb          0067B4D6
 0067B4BA    sub         edx,3
>0067B4BD    jb          0067B5BE
>0067B4C3    je          0067B518
 0067B4C5    dec         edx
>0067B4C6    je          0067B577
>0067B4CC    jmp         0067B59E
>0067B4D1    jmp         0067B5BE
 0067B4D6    mov         edx,dword ptr [ebp-4]
 0067B4D9    mov         ecx,dword ptr [ebp+8]
 0067B4DC    mov         eax,dword ptr [edx+eax+4]
 0067B4E0    mov         [006F1294],eax;gvar_006F1294
 0067B4E5    mov         word ptr [ecx+12],1
 0067B4EB    push        ebx
 0067B4EC    push        ebp
 0067B4ED    push        esi
 0067B4EE    push        edi
 0067B4EF    mov         ecx,7B
 0067B4F4    mov         ebx,7B
 0067B4F9    mov         ecx,dword ptr [ebp-8]
 0067B4FC    mov         ebx,6F1294;gvar_006F1294
 0067B501    call        00670DE3
 0067B506    pop         edi
 0067B507    pop         esi
 0067B508    pop         ebp
 0067B509    pop         ebx
 0067B50A    mov         eax,dword ptr [ebp+8]
 0067B50D    mov         word ptr [eax+12],0
>0067B513    jmp         0067B5BE
 0067B518    call        @GetTls
 0067B51D    add         eax,10
 0067B522    mov         dword ptr [ebp-10],eax
>0067B525    jmp         0067B537
 0067B527    mov         edx,dword ptr [esi+28]
 0067B52A    cmp         edx,dword ptr [ebp+8]
>0067B52D    jne         0067B534
 0067B52F    cmp         ebx,dword ptr [esi+30]
>0067B532    je          0067B540
 0067B534    mov         dword ptr [ebp-10],esi
 0067B537    mov         ecx,dword ptr [ebp-10]
 0067B53A    mov         esi,dword ptr [ecx]
 0067B53C    test        esi,esi
>0067B53E    jne         0067B527
 0067B540    test        esi,esi
>0067B542    je          0067B54B
 0067B544    mov         eax,dword ptr [ebp-10]
 0067B547    cmp         esi,dword ptr [eax]
>0067B549    je          0067B562
 0067B54B    push        8B9
 0067B550    push        6E825D
 0067B555    push        6E8241
 0067B55A    call        00678AD8
 0067B55F    add         esp,0C
 0067B562    mov         edx,dword ptr [esi]
 0067B564    mov         ecx,dword ptr [ebp-10]
 0067B567    mov         dword ptr [ecx],edx
 0067B569    push        esi
 0067B56A    call        0067AE97
 0067B56F    pop         ecx
 0067B570    push        esi
 0067B571    call        dword ptr [esi+1C]
 0067B574    pop         ecx
>0067B575    jmp         0067B5BE
 0067B577    mov         edx,dword ptr [ebp-4]
 0067B57A    mov         ecx,dword ptr [ebp-4]
 0067B57D    mov         edx,dword ptr [edx+eax]
 0067B580    add         eax,4
 0067B583    mov         eax,dword ptr [ecx+eax]
 0067B586    push        dword ptr [ebp-8]
 0067B589    push        dword ptr [ebp+8]
 0067B58C    add         edx,dword ptr [ebp-0C]
 0067B58F    push        edx
 0067B590    push        eax
 0067B591    call        0067C225
 0067B596    add         esp,10
 0067B599    mov         dword ptr [ebp-0C],eax
>0067B59C    jmp         0067B5BE
 0067B59E    mov         eax,6E8264
 0067B5A3    test        eax,eax
>0067B5A5    je          0067B5BE
 0067B5A7    push        8E8
 0067B5AC    push        6E82A7
 0067B5B1    push        6E8284
 0067B5B6    call        00678AD8
 0067B5BB    add         esp,0C
 0067B5BE    mov         ebx,edi
 0067B5C0    test        ebx,ebx
>0067B5C2    je          0067B5CD
 0067B5C4    cmp         ebx,dword ptr [ebp+0C]
>0067B5C7    jne         0067B498
 0067B5CD    pop         edi
 0067B5CE    pop         esi
 0067B5CF    pop         ebx
 0067B5D0    mov         esp,ebp
 0067B5D2    pop         ebp
 0067B5D3    ret
end;*}

//0067B5E7
{*procedure sub_0067B5E7(?:?);
begin
 0067B5E7    push        ebp
 0067B5E8    mov         ebp,esp
 0067B5EA    push        ebx
 0067B5EB    mov         ebx,dword ptr [ebp+8]
 0067B5EE    push        0
 0067B5F0    push        ebx
 0067B5F1    call        0067B469
 0067B5F6    add         esp,8
 0067B5F9    mov         eax,dword ptr [ebx]
 0067B5FB    mov         fs:[00000000],eax
 0067B600    pop         ebx
 0067B601    pop         ebp
 0067B602    ret
end;*}

//0067B603
{*function sub_0067B603(?:?; ?:?):?;
begin
 0067B603    push        ebp
 0067B604    mov         ebp,esp
 0067B606    add         esp,0FFFFFF00
 0067B60C    push        ebx
 0067B60D    push        esi
 0067B60E    push        edi
 0067B60F    mov         edi,dword ptr [ebp+8]
 0067B612    add         edi,8
>0067B615    jmp         0067B6F5
 0067B61A    mov         eax,dword ptr [edi+4]
 0067B61D    test        eax,eax
>0067B61F    jne         0067B628
 0067B621    mov         eax,edi
>0067B623    jmp         0067B700
 0067B628    test        byte ptr [eax+4],30
>0067B62C    je          0067B6F2
 0067B632    push        eax
 0067B633    call        0067043C
 0067B638    pop         ecx
 0067B639    mov         esi,eax
 0067B63B    mov         ebx,esi
 0067B63D    push        6
 0067B63F    push        6E82AE
 0067B644    push        ebx
 0067B645    call        0066FB80
 0067B64A    add         esp,0C
 0067B64D    test        eax,eax
>0067B64F    jne         0067B656
 0067B651    add         esi,6
>0067B654    jmp         0067B66D
 0067B656    push        9
 0067B658    push        6E82B5
 0067B65D    push        ebx
 0067B65E    call        0066FB80
 0067B663    add         esp,0C
 0067B666    test        eax,eax
>0067B668    jne         0067B66D
 0067B66A    add         esi,9
 0067B66D    cmp         esi,ebx
>0067B66F    jne         0067B63B
>0067B671    jmp         0067B67E
 0067B673    movsx       eax,byte ptr [ebx]
 0067B676    cmp         eax,3A
>0067B679    jne         0067B67D
 0067B67B    mov         esi,ebx
 0067B67D    inc         ebx
 0067B67E    cmp         byte ptr [ebx],0
>0067B681    jne         0067B673
 0067B683    movsx       eax,byte ptr [esi]
 0067B686    cmp         eax,3A
>0067B689    jne         0067B68C
 0067B68B    inc         esi
 0067B68C    push        esi
 0067B68D    call        0066FAB4
 0067B692    pop         ecx
 0067B693    mov         ebx,eax
 0067B695    sub         ebx,2
 0067B698    cmp         ebx,0FF
>0067B69E    jg          0067B6F2
 0067B6A0    push        ebx
 0067B6A1    push        esi
 0067B6A2    lea         eax,[ebp-0FF]
 0067B6A8    push        eax
 0067B6A9    call        0066F894
 0067B6AE    add         esp,0C
 0067B6B1    mov         byte ptr [ebp-100],bl
 0067B6B7    mov         edx,dword ptr [ebp+0C]
 0067B6BA    mov         ecx,dword ptr [edx+18]
 0067B6BD    mov         ebx,dword ptr [ecx]
 0067B6BF    xor         eax,eax
 0067B6C1    lea         edx,[ebp-100]
 0067B6C7    mov         al,byte ptr [ebp-100]
 0067B6CD    inc         eax
 0067B6CE    push        eax
 0067B6CF    push        dword ptr [ebx-2C]
 0067B6D2    push        edx
 0067B6D3    call        0066FBCC
 0067B6D8    add         esp,0C
 0067B6DB    test        eax,eax
>0067B6DD    je          0067B6EA
 0067B6DF    mov         ebx,dword ptr [ebx-24]
 0067B6E2    test        ebx,ebx
>0067B6E4    je          0067B6EA
 0067B6E6    mov         ebx,dword ptr [ebx]
>0067B6E8    jmp         0067B6BF
 0067B6EA    test        ebx,ebx
>0067B6EC    je          0067B6F2
 0067B6EE    mov         eax,edi
>0067B6F0    jmp         0067B700
 0067B6F2    add         edi,14
 0067B6F5    cmp         dword ptr [edi],0
>0067B6F8    jne         0067B61A
 0067B6FE    xor         eax,eax
 0067B700    pop         edi
 0067B701    pop         esi
 0067B702    pop         ebx
 0067B703    mov         esp,ebp
 0067B705    pop         ebp
 0067B706    ret
end;*}

//0067B707
{*function sub_0067B707(?:?; ?:?):?;
begin
 0067B707    push        ebp
 0067B708    mov         ebp,esp
 0067B70A    push        ebx
 0067B70B    push        esi
 0067B70C    mov         esi,dword ptr [ebp+0C]
 0067B70F    mov         ebx,dword ptr [ebp+8]
 0067B712    add         ebx,8
>0067B715    jmp         0067B741
 0067B717    mov         eax,dword ptr [ebx+4]
 0067B71A    test        eax,eax
>0067B71C    jne         0067B722
 0067B71E    mov         eax,ebx
>0067B720    jmp         0067B748
 0067B722    push        0
 0067B724    push        dword ptr [esi+0C]
 0067B727    push        eax
 0067B728    push        dword ptr [esi+8]
 0067B72B    push        dword ptr [esi+4]
 0067B72E    call        0067A6A0
 0067B733    add         esp,14
 0067B736    test        eax,eax
>0067B738    je          0067B73E
 0067B73A    mov         eax,ebx
>0067B73C    jmp         0067B748
 0067B73E    add         ebx,14
 0067B741    cmp         dword ptr [ebx],0
>0067B744    jne         0067B717
 0067B746    xor         eax,eax
 0067B748    pop         esi
 0067B749    pop         ebx
 0067B74A    pop         ebp
 0067B74B    ret
end;*}

//0067B74C
{*procedure sub_0067B74C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0067B74C    push        ebp
 0067B74D    mov         ebp,esp
 0067B74F    add         esp,0FFFFFEA0
 0067B755    push        ebx
 0067B756    push        esi
 0067B757    push        edi
 0067B758    mov         edi,dword ptr [ebp+8]
 0067B75B    mov         eax,6E75E0
 0067B760    call        0066FECC
 0067B765    mov         edx,dword ptr [edi+1C]
 0067B768    mov         dword ptr [ebp-30],edx
 0067B76B    mov         ecx,dword ptr [ebp+0C]
 0067B76E    mov         eax,dword ptr [ecx+8]
 0067B771    mov         dword ptr [ebp-34],eax
 0067B774    mov         edx,dword ptr [ebp-34]
 0067B777    mov         ecx,dword ptr [ebp+0C]
 0067B77A    sub         ecx,dword ptr [edx+4]
 0067B77D    mov         dword ptr [ebp-3C],ecx
 0067B780    mov         eax,dword ptr [ebp+0C]
 0067B783    mov         edx,dword ptr [eax+0C]
 0067B786    mov         dword ptr [ebp-40],edx
 0067B789    cmp         dword ptr [edi],0EEDFAE6
>0067B78F    jne         0067B7A1
 0067B791    xor         eax,eax
 0067B793    mov         edx,dword ptr [ebp-2C]
 0067B796    mov         dword ptr fs:[0000],edx
>0067B79C    jmp         0067BBFE
 0067B7A1    call        00676E4C
 0067B7A6    test        byte ptr [edi+4],6
>0067B7AA    je          0067B825
 0067B7AC    push        0
 0067B7AE    push        dword ptr [ebp+0C]
 0067B7B1    call        0067B469
 0067B7B6    add         esp,8
 0067B7B9    cmp         dword ptr [edi],0EEFFACE
>0067B7BF    jne         0067B812
 0067B7C1    mov         ecx,dword ptr [ebp-34]
 0067B7C4    mov         ebx,dword ptr [ecx]
 0067B7C6    test        ebx,ebx
>0067B7C8    je          0067B812
>0067B7CA    jmp         0067B7F1
 0067B7CC    push        1
 0067B7CE    mov         eax,dword ptr [ebp-30]
 0067B7D1    push        dword ptr [eax+0C]
 0067B7D4    push        dword ptr [ebx]
 0067B7D6    mov         edx,dword ptr [ebp-30]
 0067B7D9    push        dword ptr [edx+8]
 0067B7DC    mov         ecx,dword ptr [ebp-30]
 0067B7DF    push        dword ptr [ecx+4]
 0067B7E2    call        0067A6A0
 0067B7E7    add         esp,14
 0067B7EA    test        eax,eax
>0067B7EC    jne         0067B812
 0067B7EE    add         ebx,4
 0067B7F1    cmp         dword ptr [ebx],0
>0067B7F4    jne         0067B7CC
 0067B7F6    mov         ebx,dword ptr fs:[0000]
 0067B7FC    mov         eax,dword ptr [ebp+0C]
 0067B7FF    mov         edx,dword ptr [eax]
 0067B801    mov         dword ptr fs:[0000],edx
 0067B807    call        00670B4C
 0067B80C    mov         dword ptr fs:[0000],ebx
 0067B812    mov         eax,1
 0067B817    mov         edx,dword ptr [ebp-2C]
 0067B81A    mov         dword ptr fs:[0000],edx
>0067B820    jmp         0067BBFE
 0067B825    mov         ecx,dword ptr [ebp+0C]
 0067B828    movzx       ebx,word ptr [ecx+10]
 0067B82C    test        ebx,ebx
>0067B82E    je          0067BBF0
 0067B834    mov         esi,ebx
 0067B836    mov         eax,dword ptr [ebp-34]
 0067B839    movzx       edx,word ptr [eax+esi]
 0067B83D    mov         dword ptr [ebp-38],edx
 0067B840    add         esi,2
 0067B843    mov         ecx,dword ptr [ebp-34]
 0067B846    movzx       eax,word ptr [ecx+esi]
 0067B84A    mov         dword ptr [ebp-44],eax
 0067B84D    add         esi,2
 0067B850    mov         edx,dword ptr [ebp-44]
 0067B853    cmp         edx,5
>0067B856    ja          0067BBC5
 0067B85C    jmp         dword ptr [edx*4+67B863]
 0067B85C    dd          0067BBE5
 0067B85C    dd          0067BB15
 0067B85C    dd          0067BB68
 0067B85C    dd          0067B87B
 0067B85C    dd          0067BBE5
 0067B85C    dd          0067BBE5
 0067B87B    test        byte ptr [edi+3],80
>0067B87F    je          0067B8B0
 0067B881    test        byte ptr [ebp+2C],2
>0067B885    je          0067B8B0
 0067B887    mov         eax,fs:[00000000]
 0067B88C    mov         dword ptr [ebp-60],eax
 0067B88F    push        dword ptr [ebp+10]
 0067B892    push        dword ptr [ebp-60]
 0067B895    push        dword ptr [ebp+18]
 0067B898    push        edi
 0067B899    call        0067A237
 0067B89E    add         esp,10
 0067B8A1    mov         dword ptr [ebp-30],eax
 0067B8A4    cmp         dword ptr [ebp-30],0
>0067B8A8    je          0067BBE5
>0067B8AE    jmp         0067B8D3
 0067B8B0    mov         ecx,dword ptr [edi]
 0067B8B2    sub         ecx,0EEDFADE
>0067B8B8    je          0067B8C8
 0067B8BA    sub         ecx,1FFF0
>0067B8C0    jne         0067BBE5
>0067B8C6    jmp         0067B8D3
 0067B8C8    test        byte ptr [ebp+2C],1
>0067B8CC    jne         0067B8D3
>0067B8CE    jmp         0067BBE5
 0067B8D3    mov         eax,dword ptr [ebp-34]
 0067B8D6    mov         edx,dword ptr [eax+esi]
 0067B8D9    mov         dword ptr [ebp-4C],edx
 0067B8DC    add         esi,4
 0067B8DF    cmp         dword ptr [edi],0EEDFADE
>0067B8E5    jne         0067B8F8
 0067B8E7    push        edi
 0067B8E8    push        dword ptr [ebp-4C]
 0067B8EB    call        0067B603
 0067B8F0    add         esp,8
 0067B8F3    mov         dword ptr [ebp-48],eax
>0067B8F6    jmp         0067B909
 0067B8F8    push        dword ptr [ebp-30]
 0067B8FB    push        dword ptr [ebp-4C]
 0067B8FE    call        0067B707
 0067B903    add         esp,8
 0067B906    mov         dword ptr [ebp-48],eax
 0067B909    cmp         dword ptr [ebp-48],0
>0067B90D    jne         0067B968
 0067B90F    test        byte ptr [edi+3],80
>0067B913    je          0067BBE5
 0067B919    call        @GetTls
 0067B91E    mov         ecx,dword ptr [ebp-30]
 0067B921    mov         edx,dword ptr [ecx]
 0067B923    mov         dword ptr [eax+10],edx
 0067B929    mov         eax,dword ptr [ebp-30]
 0067B92C    mov         ecx,dword ptr [eax+52]
 0067B92F    mov         dword ptr [ebp-8],ecx
 0067B932    cmp         dword ptr [ebp-8],0
>0067B936    je          0067B959
 0067B938    mov         eax,dword ptr [ebp-8]
 0067B93B    mov         edx,dword ptr [eax]
 0067B93D    mov         dword ptr [ebp-4],edx
 0067B940    mov         word ptr [ebp-1C],14
 0067B946    mov         edx,3
 0067B94B    mov         eax,dword ptr [ebp-8]
 0067B94E    mov         ecx,dword ptr [eax]
 0067B950    call        dword ptr [ecx-4]
 0067B953    mov         word ptr [ebp-1C],8
 0067B959    push        dword ptr [ebp-30]
 0067B95C    mov         eax,dword ptr [ebp-30]
 0067B95F    call        dword ptr [eax+1C]
 0067B962    pop         ecx
>0067B963    jmp         0067BBE5
 0067B968    mov         edx,dword ptr ds:[6F1290];0x0 gvar_006F1290
 0067B96E    cmp         dword ptr [edx],1
>0067B971    je          0067B97E
 0067B973    mov         ecx,dword ptr ds:[6F1290];0x0 gvar_006F1290
 0067B979    cmp         dword ptr [ecx],2
>0067B97C    jne         0067B9A1
 0067B97E    cmp         dword ptr [edi],0EEDFACE
>0067B984    jb          0067B98E
 0067B986    cmp         dword ptr [edi],0EEFFACE
>0067B98C    jbe         0067B9A1
 0067B98E    push        dword ptr [ebp+10]
 0067B991    push        edi
 0067B992    push        dword ptr [ebp+0C]
 0067B995    push        3
 0067B997    push        2
 0067B999    call        0067A8D5
 0067B99E    add         esp,14
 0067B9A1    cmp         dword ptr [edi],0EEDFADE
>0067B9A7    je          0067B9DF
 0067B9A9    call        @GetTls
 0067B9AE    mov         eax,dword ptr [eax+10];{threadvar_16}
 0067B9B4    mov         edx,dword ptr [ebp-30]
 0067B9B7    mov         dword ptr [edx],eax
 0067B9B9    call        @GetTls
 0067B9BE    mov         ecx,dword ptr [ebp-30]
 0067B9C1    mov         dword ptr [eax+10],ecx
 0067B9C7    mov         eax,dword ptr [ebp-30]
 0067B9CA    mov         edx,dword ptr [ebp+0C]
 0067B9CD    mov         dword ptr [eax+28],edx
 0067B9D0    mov         ecx,dword ptr [ebp-30]
 0067B9D3    mov         eax,dword ptr [ebp-48]
 0067B9D6    mov         dword ptr [ecx+2C],eax
 0067B9D9    mov         edx,dword ptr [ebp-30]
 0067B9DC    mov         dword ptr [edx+30],esi
 0067B9DF    mov         dword ptr [ebp-54],esi
 0067B9E2    mov         ecx,dword ptr [ebp-48]
 0067B9E5    mov         eax,dword ptr [ecx]
 0067B9E7    mov         dword ptr [ebp-50],eax
 0067B9EA    push        edi
 0067B9EB    push        dword ptr [ebp+0C]
 0067B9EE    call        0067ADDD
 0067B9F3    add         esp,8
 0067B9F6    push        ebx
 0067B9F7    push        dword ptr [ebp+0C]
 0067B9FA    call        0067B469
 0067B9FF    add         esp,8
 0067BA02    mov         edx,dword ptr [ebp+0C]
 0067BA05    mov         cx,word ptr [ebp-54]
 0067BA09    mov         word ptr [edx+10],cx
 0067BA0D    cmp         dword ptr [ebp-44],3
>0067BA11    jne         0067BA4A
 0067BA13    cmp         dword ptr [edi],0EEDFADE
>0067BA19    jne         0067BA33
 0067BA1B    push        esi
 0067BA1C    push        dword ptr [ebp-3C]
 0067BA1F    push        dword ptr [ebp-4C]
 0067BA22    push        edi
 0067BA23    push        dword ptr [ebp+0C]
 0067BA26    push        dword ptr [ebp-48]
 0067BA29    call        0067B065
 0067BA2E    add         esp,18
>0067BA31    jmp         0067BA4A
 0067BA33    push        dword ptr [ebp-3C]
 0067BA36    push        dword ptr [ebp-4C]
 0067BA39    push        dword ptr [ebp-30]
 0067BA3C    push        dword ptr [ebp+0C]
 0067BA3F    push        dword ptr [ebp-48]
 0067BA42    call        0067B187
 0067BA47    add         esp,14
 0067BA4A    call        @GetTls
 0067BA4F    and         dword ptr [eax+14],0FFFFFFFD;{threadvar_20}
 0067BA56    mov         eax,[006F1290];0x0 gvar_006F1290
 0067BA5B    cmp         dword ptr [eax],2
>0067BA5E    jne         0067BAF3
 0067BA64    cmp         dword ptr [ebp-44],3
>0067BA68    jne         0067BAF3
 0067BA6E    cmp         dword ptr [edi],0EEDFADE
>0067BA74    jne         0067BAA8
 0067BA76    mov         edx,dword ptr [edi+18]
 0067BA79    mov         eax,dword ptr [edx]
 0067BA7B    mov         ebx,dword ptr [eax-2C]
 0067BA7E    movsx       eax,byte ptr [ebx]
 0067BA81    push        eax
 0067BA82    lea         edx,[ebx+1]
 0067BA85    push        edx
 0067BA86    lea         ecx,[ebp-160]
 0067BA8C    push        ecx
 0067BA8D    call        0066FCFC
 0067BA92    movsx       eax,byte ptr [ebx]
 0067BA95    add         esp,0C
 0067BA98    lea         ebx,[ebp-160]
 0067BA9E    mov         byte ptr [ebp+eax-160],0
>0067BAA6    jmp         0067BAB6
 0067BAA8    mov         eax,dword ptr [ebp-30]
 0067BAAB    push        dword ptr [eax+4]
 0067BAAE    call        0067043C
 0067BAB3    pop         ecx
 0067BAB4    mov         ebx,eax
 0067BAB6    cmp         dword ptr [edi],0EEDFADE
>0067BABC    jne         0067BAC3
 0067BABE    mov         eax,dword ptr [edi+18]
>0067BAC1    jmp         0067BADA
 0067BAC3    mov         edx,dword ptr [ebp-30]
 0067BAC6    cmp         byte ptr [edx+44],0
>0067BACA    je          0067BAD4
 0067BACC    mov         eax,dword ptr [ebp-30]
 0067BACF    add         eax,52
>0067BAD2    jmp         0067BADA
 0067BAD4    mov         edx,dword ptr [ebp-30]
 0067BAD7    mov         eax,dword ptr [edx+40]
 0067BADA    push        eax
 0067BADB    push        ebx
 0067BADC    call        0067A8BD
 0067BAE1    pop         ecx
 0067BAE2    push        eax
 0067BAE3    push        ebx
 0067BAE4    push        dword ptr [ebp-50]
 0067BAE7    push        5
 0067BAE9    push        3
 0067BAEB    call        0067A8D5
 0067BAF0    add         esp,18
 0067BAF3    mov         eax,7B
 0067BAF8    mov         ebx,7B
 0067BAFD    mov         ecx,7B
 0067BB02    mov         eax,dword ptr [ebp-50]
 0067BB05    mov         ebx,dword ptr [ebp-40]
 0067BB08    mov         ecx,dword ptr [ebp-3C]
 0067BB0B    call        0067A197
>0067BB10    jmp         0067BBE5
 0067BB15    cmp         dword ptr [edi],0EEFFACE
>0067BB1B    je          0067BBE5
 0067BB21    mov         dword ptr [ebp-5C],edi
 0067BB24    mov         edx,dword ptr [ebp+10]
 0067BB27    mov         dword ptr [ebp-58],edx
 0067BB2A    mov         ecx,dword ptr [ebp+0C]
 0067BB2D    mov         eax,dword ptr [edi]
 0067BB2F    mov         dword ptr [ecx+14],eax
 0067BB32    lea         edx,[ebp-5C]
 0067BB35    mov         ecx,dword ptr [ebp+0C]
 0067BB38    mov         dword ptr [ecx+18],edx
 0067BB3B    mov         eax,dword ptr [ebp-34]
 0067BB3E    mov         edx,dword ptr [eax+esi]
 0067BB41    mov         dword ptr ds:[6F1298],edx;gvar_006F1298
 0067BB47    push        ebx
 0067BB48    push        ebp
 0067BB49    push        esi
 0067BB4A    push        edi
 0067BB4B    mov         ecx,7B
 0067BB50    mov         ebx,7B
 0067BB55    mov         ecx,dword ptr [ebp-3C]
 0067BB58    mov         ebx,6F1298;gvar_006F1298
 0067BB5D    call        00670DE3
 0067BB62    pop         edi
 0067BB63    pop         esi
 0067BB64    pop         ebp
 0067BB65    pop         ebx
>0067BB66    jmp         0067BB7E
 0067BB68    cmp         dword ptr [edi],0EEFFACE
>0067BB6E    je          0067BBE5
 0067BB70    mov         ecx,dword ptr [ebp+0C]
 0067BB73    mov         eax,dword ptr [edi]
 0067BB75    mov         dword ptr [ecx+14],eax
 0067BB78    mov         edx,dword ptr [ebp-34]
 0067BB7B    mov         eax,dword ptr [edx+esi]
 0067BB7E    test        eax,eax
>0067BB80    jge         0067BBA0
 0067BB82    test        byte ptr [edi+4],1
>0067BB86    je          0067BB93
 0067BB88    mov         edx,dword ptr [ebp+0C]
 0067BB8B    mov         cx,word ptr [ebp-38]
 0067BB8F    mov         word ptr [edx+10],cx
 0067BB93    xor         eax,eax
 0067BB95    mov         edx,dword ptr [ebp-2C]
 0067BB98    mov         dword ptr fs:[0000],edx
>0067BB9E    jmp         0067BBFE
 0067BBA0    test        eax,eax
>0067BBA2    je          0067BBE5
 0067BBA4    mov         ecx,dword ptr [ebp+0C]
 0067BBA7    xor         eax,eax
 0067BBA9    mov         dword ptr [ecx+18],eax
 0067BBAC    add         esi,4
 0067BBAF    mov         edx,dword ptr [ebp-38]
 0067BBB2    mov         dword ptr [ebp-54],edx
 0067BBB5    mov         ebx,edx
 0067BBB7    mov         eax,dword ptr [ebp-34]
 0067BBBA    mov         edx,dword ptr [eax+esi]
 0067BBBD    mov         dword ptr [ebp-50],edx
>0067BBC0    jmp         0067B9EA
 0067BBC5    mov         ecx,6E82BF
 0067BBCA    test        ecx,ecx
>0067BBCC    je          0067BBE5
 0067BBCE    push        0BFF
 0067BBD3    push        6E830C
 0067BBD8    push        6E82E4
 0067BBDD    call        00678AD8
 0067BBE2    add         esp,0C
 0067BBE5    mov         ebx,dword ptr [ebp-38]
 0067BBE8    test        ebx,ebx
>0067BBEA    jne         0067B834
 0067BBF0    mov         eax,1
 0067BBF5    mov         edx,dword ptr [ebp-2C]
 0067BBF8    mov         dword ptr fs:[0000],edx
 0067BBFE    pop         edi
 0067BBFF    pop         esi
 0067BC00    pop         ebx
 0067BC01    mov         esp,ebp
 0067BC03    pop         ebp
 0067BC04    ret
end;*}

//0067BC05
{*procedure sub_0067BC05(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0067BC05    push        ebp
 0067BC06    mov         ebp,esp
 0067BC08    add         esp,0FFFFFFDC
 0067BC0B    mov         eax,6E7640
 0067BC10    push        ebx
 0067BC11    push        esi
 0067BC12    push        edi
 0067BC13    mov         edi,dword ptr [ebp+14]
 0067BC16    mov         esi,dword ptr [ebp+10]
 0067BC19    mov         ebx,dword ptr [ebp+0C]
 0067BC1C    call        0066FECC
 0067BC21    test        byte ptr [ebx+0C],2
>0067BC25    jne         0067BC3E
 0067BC27    push        0C1B
 0067BC2C    push        6E833B
 0067BC31    push        6E8313
 0067BC36    call        00678AD8
 0067BC3B    add         esp,0C
 0067BC3E    cmp         dword ptr [ebx+28],0
>0067BC42    jne         0067BC5B
 0067BC44    push        0C1C
 0067BC49    push        6E835F
 0067BC4E    push        6E8342
 0067BC53    call        00678AD8
 0067BC58    add         esp,0C
 0067BC5B    mov         word ptr [ebp-14],8
 0067BC61    mov         word ptr [ebp-14],14
 0067BC67    mov         edx,dword ptr [ebp+18]
 0067BC6A    mov         ecx,dword ptr [edx+1C]
 0067BC6D    cmp         ecx,dword ptr [ebx+20]
>0067BC70    jae         0067BC8D
 0067BC72    test        esi,esi
>0067BC74    jne         0067BC8D
 0067BC76    push        0C27
 0067BC7B    push        6E83A6
 0067BC80    push        6E8366
 0067BC85    call        00678AD8
 0067BC8A    add         esp,0C
 0067BC8D    test        esi,2
>0067BC93    jne         0067BCA7
 0067BC95    test        edi,edi
>0067BC97    je          0067BC9E
 0067BC99    mov         eax,dword ptr [ebx+20]
>0067BC9C    jmp         0067BCA1
 0067BC9E    mov         eax,dword ptr [ebx+24]
 0067BCA1    mov         edx,dword ptr [ebp+18]
 0067BCA4    sub         dword ptr [edx+1C],eax
 0067BCA7    push        edi
 0067BCA8    movzx       ecx,word ptr [ebx+2C]
 0067BCAC    push        ecx
 0067BCAD    push        dword ptr [ebx+28]
 0067BCB0    push        esi
 0067BCB1    push        ebx
 0067BCB2    push        dword ptr [ebp+8]
 0067BCB5    call        0067A8F2
 0067BCBA    mov         word ptr [ebp-14],8
 0067BCC0    add         esp,18
>0067BCC3    jmp         0067BCD5
 0067BCC5    call        00670AD8
 0067BCCA    mov         word ptr [ebp-14],1C
 0067BCD0    call        0067AF32
 0067BCD5    mov         word ptr [ebp-14],0
>0067BCDB    jmp         0067BCED
 0067BCDD    call        00670AD8
 0067BCE2    mov         word ptr [ebp-14],10
 0067BCE8    call        0067AF32
 0067BCED    mov         eax,dword ptr [ebp-24]
 0067BCF0    mov         fs:[00000000],eax
 0067BCF5    pop         edi
 0067BCF6    pop         esi
 0067BCF7    pop         ebx
 0067BCF8    mov         esp,ebp
 0067BCFA    pop         ebp
 0067BCFB    ret
end;*}

//0067BCFC
{*function sub_0067BCFC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0067BCFC    push        ebp
 0067BCFD    mov         ebp,esp
 0067BCFF    push        ebx
 0067BD00    push        esi
 0067BD01    push        edi
 0067BD02    mov         esi,dword ptr [ebp+18]
 0067BD05    mov         ebx,dword ptr [ebp+10]
 0067BD08    mov         edi,dword ptr [ebp+8]
>0067BD0B    jmp         0067BD3A
 0067BD0D    mov         eax,dword ptr [ebx+4]
 0067BD10    add         eax,edi
 0067BD12    cmp         dword ptr [ebp+1C],0
>0067BD16    je          0067BD1A
 0067BD18    mov         eax,dword ptr [eax]
 0067BD1A    mov         edx,dword ptr [ebx]
 0067BD1C    test        byte ptr [edx+0C],2
>0067BD20    je          0067BD3A
 0067BD22    push        dword ptr [ebp+24]
 0067BD25    push        dword ptr [ebp+20]
 0067BD28    push        0
 0067BD2A    push        esi
 0067BD2B    push        dword ptr [ebp+0C]
 0067BD2E    push        edx
 0067BD2F    push        eax
 0067BD30    call        0067BD47
 0067BD35    add         esp,1C
 0067BD38    xor         esi,esi
 0067BD3A    sub         ebx,0C
 0067BD3D    cmp         ebx,dword ptr [ebp+14]
>0067BD40    jae         0067BD0D
 0067BD42    pop         edi
 0067BD43    pop         esi
 0067BD44    pop         ebx
 0067BD45    pop         ebp
 0067BD46    ret
end;*}

//0067BD47
{*procedure sub_0067BD47(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0067BD47    push        ebp
 0067BD48    mov         ebp,esp
 0067BD4A    add         esp,0FFFFFFE8
 0067BD4D    push        ebx
 0067BD4E    push        esi
 0067BD4F    push        edi
 0067BD50    mov         esi,dword ptr [ebp+14]
 0067BD53    mov         eax,dword ptr [ebp+0C]
 0067BD56    test        byte ptr [eax+0C],2
>0067BD5A    jne         0067BD73
 0067BD5C    push        0CB2
 0067BD61    push        6E83D5
 0067BD66    push        6E83AD
 0067BD6B    call        00678AD8
 0067BD70    add         esp,0C
 0067BD73    cmp         dword ptr [ebp+18],0
>0067BD77    je          0067BD81
 0067BD79    mov         edx,dword ptr [ebp+0C]
 0067BD7C    mov         ebx,dword ptr [edx+20]
>0067BD7F    jmp         0067BD87
 0067BD81    mov         eax,dword ptr [ebp+0C]
 0067BD84    mov         ebx,dword ptr [eax+24]
 0067BD87    test        esi,esi
>0067BD89    je          0067BD93
 0067BD8B    cmp         ebx,esi
>0067BD8D    ja          0067BE2E
 0067BD93    test        esi,esi
>0067BD95    jne         0067BE12
 0067BD97    test        byte ptr [ebp+10],2
>0067BD9B    je          0067BE12
 0067BD9D    mov         eax,dword ptr [ebp+0C]
 0067BDA0    cmp         word ptr [eax+10],0
>0067BDA5    je          0067C073
 0067BDAB    mov         edx,dword ptr [ebp+0C]
 0067BDAE    movzx       ebx,word ptr [edx+10]
 0067BDB2    add         ebx,dword ptr [ebp+0C]
 0067BDB5    test        ebx,ebx
>0067BDB7    jne         0067BDD0
 0067BDB9    push        0CCF
 0067BDBE    push        6E83DF
 0067BDC3    push        6E83DC
 0067BDC8    call        00678AD8
 0067BDCD    add         esp,0C
 0067BDD0    mov         esi,dword ptr [ebx]
 0067BDD2    test        byte ptr [esi+0C],2
>0067BDD6    je          0067C073
 0067BDDC    cmp         dword ptr [ebx+4],0
>0067BDE0    je          0067BDF9
 0067BDE2    push        0CD3
 0067BDE7    push        6E83F6
 0067BDEC    push        6E83E6
 0067BDF1    call        00678AD8
 0067BDF6    add         esp,0C
 0067BDF9    push        dword ptr [ebp+20]
 0067BDFC    push        0
 0067BDFE    push        dword ptr [ebp+10]
 0067BE01    push        esi
 0067BE02    push        dword ptr [ebp+8]
 0067BE05    call        0067BC05
 0067BE0A    add         esp,14
>0067BE0D    jmp         0067C073
 0067BE12    push        dword ptr [ebp+20]
 0067BE15    push        dword ptr [ebp+18]
 0067BE18    push        dword ptr [ebp+10]
 0067BE1B    push        dword ptr [ebp+0C]
 0067BE1E    push        dword ptr [ebp+8]
 0067BE21    call        0067BC05
 0067BE26    add         esp,14
>0067BE29    jmp         0067C073
 0067BE2E    cmp         ebx,esi
>0067BE30    ja          0067BE49
 0067BE32    push        0CEC
 0067BE37    push        6E8410
 0067BE3C    push        6E83FD
 0067BE41    call        00678AD8
 0067BE46    add         esp,0C
 0067BE49    mov         ebx,esi
 0067BE4B    mov         eax,dword ptr [ebp+0C]
 0067BE4E    movzx       edx,word ptr [eax+12]
 0067BE52    add         edx,dword ptr [ebp+0C]
 0067BE55    mov         dword ptr [ebp-10],edx
 0067BE58    mov         dword ptr [ebp-0C],edx
 0067BE5B    cmp         dword ptr [ebp+18],0
>0067BE5F    je          0067BEC2
 0067BE61    mov         eax,dword ptr [ebp-10]
 0067BE64    mov         esi,dword ptr [eax]
 0067BE66    test        esi,esi
>0067BE68    je          0067BEC2
 0067BE6A    test        byte ptr [esi+4],1
>0067BE6E    jne         0067BE87
 0067BE70    push        0D17
 0067BE75    push        6E8430
 0067BE7A    push        6E8417
 0067BE7F    call        00678AD8
 0067BE84    add         esp,0C
 0067BE87    test        byte ptr [esi+0C],2
>0067BE8B    je          0067BEBC
 0067BE8D    mov         eax,dword ptr [esi+24]
 0067BE90    cmp         ebx,eax
>0067BE92    ja          0067BEBA
 0067BE94    push        dword ptr [ebp+20]
 0067BE97    push        dword ptr [ebp+1C]
 0067BE9A    push        1
 0067BE9C    push        ebx
 0067BE9D    push        dword ptr [ebp-0C]
 0067BEA0    mov         edx,dword ptr [ebp-10]
 0067BEA3    add         edx,0C
 0067BEA6    push        edx
 0067BEA7    push        dword ptr [ebp+10]
 0067BEAA    push        dword ptr [ebp+8]
 0067BEAD    call        0067BCFC
 0067BEB2    add         esp,20
>0067BEB5    jmp         0067C073
 0067BEBA    sub         ebx,eax
 0067BEBC    add         dword ptr [ebp-10],0C
>0067BEC0    jmp         0067BE61
 0067BEC2    mov         ecx,dword ptr [ebp+0C]
 0067BEC5    movzx       eax,word ptr [ecx+10]
 0067BEC9    add         eax,dword ptr [ebp+0C]
 0067BECC    mov         dword ptr [ebp-8],eax
 0067BECF    mov         dword ptr [ebp-4],eax
 0067BED2    mov         edx,dword ptr [ebp-8]
 0067BED5    mov         esi,dword ptr [edx]
 0067BED7    test        esi,esi
>0067BED9    je          0067BF62
 0067BEDF    test        byte ptr [esi+4],1
>0067BEE3    jne         0067BEFC
 0067BEE5    push        0D3E
 0067BEEA    push        6E8450
 0067BEEF    push        6E8437
 0067BEF4    call        00678AD8
 0067BEF9    add         esp,0C
 0067BEFC    test        byte ptr [esi+0C],2
>0067BF00    je          0067BF59
 0067BF02    mov         eax,dword ptr [esi+24]
 0067BF05    cmp         ebx,eax
>0067BF07    ja          0067BF57
 0067BF09    push        dword ptr [ebp+20]
 0067BF0C    push        dword ptr [ebp+1C]
 0067BF0F    push        0
 0067BF11    push        ebx
 0067BF12    push        dword ptr [ebp-4]
 0067BF15    mov         edx,dword ptr [ebp-8]
 0067BF18    add         edx,0C
 0067BF1B    push        edx
 0067BF1C    push        dword ptr [ebp+10]
 0067BF1F    push        dword ptr [ebp+8]
 0067BF22    call        0067BCFC
 0067BF27    add         esp,20
 0067BF2A    cmp         dword ptr [ebp+18],0
>0067BF2E    je          0067C073
 0067BF34    push        dword ptr [ebp+20]
 0067BF37    push        dword ptr [ebp+1C]
 0067BF3A    push        1
 0067BF3C    push        0
 0067BF3E    push        dword ptr [ebp-0C]
 0067BF41    push        dword ptr [ebp-10]
 0067BF44    push        dword ptr [ebp+10]
 0067BF47    push        dword ptr [ebp+8]
 0067BF4A    call        0067BCFC
 0067BF4F    add         esp,20
>0067BF52    jmp         0067C073
 0067BF57    sub         ebx,eax
 0067BF59    add         dword ptr [ebp-8],0C
>0067BF5D    jmp         0067BED2
 0067BF62    mov         ecx,dword ptr [ebp+0C]
 0067BF65    movzx       edi,word ptr [ecx+2E]
 0067BF69    add         edi,dword ptr [ebp+0C]
 0067BF6C    mov         dword ptr [ebp-14],edi
 0067BF6F    mov         esi,dword ptr [edi]
 0067BF71    test        esi,esi
>0067BF73    jne         0067BF8C
 0067BF75    push        0D64
 0067BF7A    push        6E845F
 0067BF7F    push        6E8457
 0067BF84    call        00678AD8
 0067BF89    add         esp,0C
 0067BF8C    mov         dword ptr [ebp-18],1
 0067BF93    test        byte ptr [esi+5],4
>0067BF97    je          0067BFA2
 0067BF99    mov         eax,dword ptr [esi+0C]
 0067BF9C    mov         dword ptr [ebp-18],eax
 0067BF9F    mov         esi,dword ptr [esi+8]
 0067BFA2    test        byte ptr [esi+0C],2
>0067BFA6    jne         0067BFBF
 0067BFA8    push        0D72
 0067BFAD    push        6E848E
 0067BFB2    push        6E8466
 0067BFB7    call        00678AD8
 0067BFBC    add         esp,0C
 0067BFBF    mov         eax,dword ptr [ebp-18]
 0067BFC2    imul        dword ptr [esi+20]
 0067BFC5    cmp         ebx,eax
>0067BFC7    jbe         0067BFD0
 0067BFC9    sub         ebx,eax
>0067BFCB    jmp         0067C06B
 0067BFD0    mov         edx,dword ptr [edi+4]
 0067BFD3    add         edx,dword ptr [ebp+8]
 0067BFD6    mov         eax,dword ptr [edi]
 0067BFD8    mov         dword ptr [ebp-18],1
 0067BFDF    test        byte ptr [eax+5],4
>0067BFE3    je          0067BFEE
 0067BFE5    mov         ecx,dword ptr [eax+0C]
 0067BFE8    mov         dword ptr [ebp-18],ecx
 0067BFEB    mov         eax,dword ptr [eax+8]
 0067BFEE    cmp         dword ptr [ebp-18],1
>0067BFF2    jbe         0067C008
 0067BFF4    push        dword ptr [ebp+20]
 0067BFF7    push        dword ptr [ebp+1C]
 0067BFFA    push        ebx
 0067BFFB    push        dword ptr [edi]
 0067BFFD    push        edx
 0067BFFE    call        0067C07A
 0067C003    add         esp,14
>0067C006    jmp         0067C01D
 0067C008    push        dword ptr [ebp+20]
 0067C00B    push        dword ptr [ebp+1C]
 0067C00E    push        1
 0067C010    push        ebx
 0067C011    push        0
 0067C013    push        eax
 0067C014    push        edx
 0067C015    call        0067BD47
 0067C01A    add         esp,1C
 0067C01D    xor         ebx,ebx
 0067C01F    sub         edi,8
 0067C022    cmp         edi,dword ptr [ebp-14]
>0067C025    jae         0067BFD0
 0067C027    push        dword ptr [ebp+20]
 0067C02A    push        dword ptr [ebp+1C]
 0067C02D    push        0
 0067C02F    push        0
 0067C031    push        dword ptr [ebp-4]
 0067C034    push        dword ptr [ebp-8]
 0067C037    push        dword ptr [ebp+10]
 0067C03A    push        dword ptr [ebp+8]
 0067C03D    call        0067BCFC
 0067C042    add         esp,20
 0067C045    cmp         dword ptr [ebp+18],0
>0067C049    je          0067C073
 0067C04B    push        dword ptr [ebp+20]
 0067C04E    push        dword ptr [ebp+1C]
 0067C051    push        1
 0067C053    push        0
 0067C055    push        dword ptr [ebp-0C]
 0067C058    push        dword ptr [ebp-10]
 0067C05B    push        dword ptr [ebp+10]
 0067C05E    push        dword ptr [ebp+8]
 0067C061    call        0067BCFC
 0067C066    add         esp,20
>0067C069    jmp         0067C073
 0067C06B    add         edi,8
>0067C06E    jmp         0067BF6F
 0067C073    pop         edi
 0067C074    pop         esi
 0067C075    pop         ebx
 0067C076    mov         esp,ebp
 0067C078    pop         ebp
 0067C079    ret
end;*}

//0067C07A
{*procedure sub_0067C07A(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0067C07A    push        ebp
 0067C07B    mov         ebp,esp
 0067C07D    add         esp,0FFFFFFF8
 0067C080    push        ebx
 0067C081    push        esi
 0067C082    push        edi
 0067C083    mov         ebx,dword ptr [ebp+0C]
 0067C086    mov         esi,dword ptr [ebp+8]
 0067C089    test        byte ptr [ebx+5],4
>0067C08D    jne         0067C0A6
 0067C08F    push        0DCB
 0067C094    push        6E84B3
 0067C099    push        6E8495
 0067C09E    call        00678AD8
 0067C0A3    add         esp,0C
 0067C0A6    mov         eax,dword ptr [ebx+8]
 0067C0A9    test        byte ptr [eax+0C],2
>0067C0AD    jne         0067C0C6
 0067C0AF    push        0DCC
 0067C0B4    push        6E84F5
 0067C0B9    push        6E84BA
 0067C0BE    call        00678AD8
 0067C0C3    add         esp,0C
 0067C0C6    mov         edx,dword ptr [ebx+0C]
 0067C0C9    mov         dword ptr [ebp-4],edx
 0067C0CC    mov         ebx,dword ptr [ebx+8]
 0067C0CF    mov         edi,dword ptr [ebx+20]
 0067C0D2    test        edi,edi
>0067C0D4    jne         0067C0ED
 0067C0D6    push        0DD5
 0067C0DB    push        6E8505
 0067C0E0    push        6E84FC
 0067C0E5    call        00678AD8
 0067C0EA    add         esp,0C
 0067C0ED    cmp         dword ptr [ebp+10],0
>0067C0F1    jne         0067C0FB
 0067C0F3    mov         eax,edi
 0067C0F5    imul        dword ptr [ebp-4]
 0067C0F8    mov         dword ptr [ebp+10],eax
 0067C0FB    mov         eax,dword ptr [ebp+10]
 0067C0FE    xor         edx,edx
 0067C100    div         eax,edi
 0067C102    mov         dword ptr [ebp-8],eax
 0067C105    mov         ecx,dword ptr [ebp-8]
 0067C108    cmp         ecx,dword ptr [ebp-4]
>0067C10B    jbe         0067C12A
 0067C10D    cmp         dword ptr [ebp-4],0
>0067C111    je          0067C12A
 0067C113    push        0DDE
 0067C118    push        6E8534
 0067C11D    push        6E850C
 0067C122    call        00678AD8
 0067C127    add         esp,0C
 0067C12A    mov         eax,dword ptr [ebp-8]
 0067C12D    imul        edi
 0067C12F    sub         dword ptr [ebp+10],eax
 0067C132    cmp         edi,dword ptr [ebp+10]
>0067C135    jae         0067C14E
 0067C137    push        0DDF
 0067C13C    push        6E8550
 0067C141    push        6E853B
 0067C146    call        00678AD8
 0067C14B    add         esp,0C
 0067C14E    mov         edx,dword ptr [ebp-8]
 0067C151    imul        edx,dword ptr [ebx]
 0067C154    add         esi,edx
 0067C156    cmp         dword ptr [ebp+10],0
>0067C15A    je          0067C18C
 0067C15C    push        dword ptr [ebp+18]
 0067C15F    push        dword ptr [ebp+14]
 0067C162    push        1
 0067C164    push        dword ptr [ebp+10]
 0067C167    push        0
 0067C169    push        ebx
 0067C16A    push        esi
 0067C16B    call        0067BD47
 0067C170    add         esp,1C
>0067C173    jmp         0067C18C
 0067C175    sub         esi,dword ptr [ebx]
 0067C177    push        dword ptr [ebp+18]
 0067C17A    push        dword ptr [ebp+14]
 0067C17D    push        1
 0067C17F    push        edi
 0067C180    push        0
 0067C182    push        ebx
 0067C183    push        esi
 0067C184    call        0067BD47
 0067C189    add         esp,1C
 0067C18C    mov         ecx,dword ptr [ebp-8]
 0067C18F    add         dword ptr [ebp-8],0FFFFFFFF
 0067C193    test        ecx,ecx
>0067C195    jne         0067C175
 0067C197    pop         edi
 0067C198    pop         esi
 0067C199    pop         ebx
 0067C19A    pop         ecx
 0067C19B    pop         ecx
 0067C19C    pop         ebp
 0067C19D    ret
end;*}

//0067C19E
{*function sub_0067C19E(?:?; ?:?; ?:?):?;
begin
 0067C19E    push        ebp
 0067C19F    mov         ebp,esp
 0067C1A1    push        ebx
 0067C1A2    push        esi
 0067C1A3    push        edi
 0067C1A4    mov         edi,dword ptr [ebp+0C]
 0067C1A7    mov         esi,dword ptr [ebp+8]
 0067C1AA    mov         ebx,dword ptr [edi]
 0067C1AC    test        byte ptr [ebx+4],2
>0067C1B0    jne         0067C1C9
 0067C1B2    push        0E12
 0067C1B7    push        6E8571
 0067C1BC    push        6E8557
 0067C1C1    call        00678AD8
 0067C1C6    add         esp,0C
 0067C1C9    mov         eax,dword ptr [ebx+0C]
 0067C1CC    and         eax,50
 0067C1CF    cmp         eax,50
>0067C1D2    je          0067C1D8
 0067C1D4    mov         eax,esi
>0067C1D6    jmp         0067C220
 0067C1D8    cmp         dword ptr [ebx+8],0FFFFFFFF
>0067C1DC    jne         0067C1E2
 0067C1DE    mov         eax,esi
>0067C1E0    jmp         0067C220
 0067C1E2    cmp         dword ptr [ebp+10],0
>0067C1E6    jne         0067C1F3
 0067C1E8    mov         edx,dword ptr [ebx+8]
 0067C1EB    add         edx,esi
 0067C1ED    mov         ebx,edx
 0067C1EF    mov         ebx,dword ptr [ebx]
>0067C1F1    jmp         0067C1F6
 0067C1F3    mov         ebx,dword ptr [ebp+10]
 0067C1F6    sub         esi,dword ptr [ebx-8]
 0067C1F9    sub         ebx,dword ptr [ebx-4]
 0067C1FC    cmp         dword ptr [ebx-4],0
>0067C200    je          0067C219
 0067C202    push        0E38
 0067C207    push        6E859D
 0067C20C    push        6E8578
 0067C211    call        00678AD8
 0067C216    add         esp,0C
 0067C219    mov         eax,dword ptr [ebx-0C]
 0067C21C    mov         dword ptr [edi],eax
 0067C21E    mov         eax,esi
 0067C220    pop         edi
 0067C221    pop         esi
 0067C222    pop         ebx
 0067C223    pop         ebp
 0067C224    ret
end;*}

//0067C225
{*function sub_0067C225(?:?; ?:?; ?:?; ?:?):?;
begin
 0067C225    push        ebp
 0067C226    mov         ebp,esp
 0067C228    add         esp,0FFFFFFE4
 0067C22B    xor         eax,eax
 0067C22D    push        ebx
 0067C22E    push        esi
 0067C22F    push        edi
 0067C230    mov         dword ptr [ebp-8],eax
 0067C233    cmp         dword ptr [ebp+8],0
>0067C237    jne         0067C240
 0067C239    xor         eax,eax
>0067C23B    jmp         0067C6A2
 0067C240    mov         edx,dword ptr [ebp+10]
 0067C243    mov         eax,dword ptr [edx+1C]
 0067C246    mov         dword ptr [ebp-4],eax
 0067C249    mov         edx,dword ptr [ebp+0C]
 0067C24C    sub         dword ptr [ebp-4],edx
 0067C24F    mov         ecx,dword ptr [ebp+8]
 0067C252    test        byte ptr [ecx+4],20
>0067C256    je          0067C2CD
 0067C258    mov         eax,dword ptr [ebp+8]
 0067C25B    test        byte ptr [eax+4],11
>0067C25F    jne         0067C278
 0067C261    push        0E77
 0067C266    push        6E85D3
 0067C26B    push        6E85A4
 0067C270    call        00678AD8
 0067C275    add         esp,0C
 0067C278    mov         edx,dword ptr [ebp+8]
 0067C27B    mov         ecx,dword ptr [edx]
 0067C27D    test        byte ptr [ecx+4],10
>0067C281    jne         0067C29A
 0067C283    push        0E7B
 0067C288    push        6E85FE
 0067C28D    push        6E85DA
 0067C292    call        00678AD8
 0067C297    add         esp,0C
 0067C29A    mov         eax,dword ptr [ebp+8]
 0067C29D    mov         edx,dword ptr [eax]
 0067C29F    mov         ecx,dword ptr [edx+8]
 0067C2A2    test        byte ptr [ecx+0C],2
>0067C2A6    jne         0067C2BF
 0067C2A8    push        0E7C
 0067C2AD    push        6E8648
 0067C2B2    push        6E8605
 0067C2B7    call        00678AD8
 0067C2BC    add         esp,0C
 0067C2BF    mov         eax,dword ptr [ebp+8]
 0067C2C2    mov         edx,dword ptr [eax]
 0067C2C4    mov         ecx,dword ptr [edx+8]
 0067C2C7    mov         eax,dword ptr [ecx+20]
 0067C2CA    mov         dword ptr [ebp-4],eax
 0067C2CD    mov         edx,dword ptr [ebp+8]
 0067C2D0    test        byte ptr [edx+5],1
>0067C2D4    je          0067C310
 0067C2D6    mov         ecx,dword ptr [ebp+8]
 0067C2D9    mov         eax,dword ptr [ecx]
 0067C2DB    test        byte ptr [eax+4],2
>0067C2DF    je          0067C2EC
 0067C2E1    mov         edx,dword ptr [ebp+8]
 0067C2E4    mov         ecx,dword ptr [edx]
 0067C2E6    test        byte ptr [ecx+0C],2
>0067C2EA    jne         0067C303
 0067C2EC    push        0E8A
 0067C2F1    push        6E86A6
 0067C2F6    push        6E864F
 0067C2FB    call        00678AD8
 0067C300    add         esp,0C
 0067C303    mov         eax,dword ptr [ebp+8]
 0067C306    mov         edx,dword ptr [eax]
 0067C308    mov         eax,dword ptr [edx+24]
>0067C30B    jmp         0067C6A2
 0067C310    cmp         dword ptr [ebp-4],0
>0067C314    jg          0067C33F
 0067C316    mov         edx,dword ptr [ebp+8]
 0067C319    test        byte ptr [edx+5],4
>0067C31D    jne         0067C33F
 0067C31F    mov         ecx,dword ptr [ebp+8]
 0067C322    mov         eax,dword ptr [ecx+4]
 0067C325    and         eax,3
 0067C328    cmp         eax,3
>0067C32B    jne         0067C338
 0067C32D    mov         ebx,dword ptr [ebp+8]
 0067C330    inc         dword ptr [ebp-8]
>0067C333    jmp         0067C460
 0067C338    xor         eax,eax
>0067C33A    jmp         0067C6A2
 0067C33F    mov         ebx,dword ptr [ebp+8]
 0067C342    cmp         dword ptr [ebx],0
>0067C345    jne         0067C34F
 0067C347    sub         ebx,0C
>0067C34A    jmp         0067C460
 0067C34F    test        byte ptr [ebx+5],10
>0067C353    je          0067C37E
 0067C355    mov         eax,dword ptr [ebx]
 0067C357    test        byte ptr [eax+5],4
>0067C35B    jne         0067C374
 0067C35D    push        0ED6
 0067C362    push        6E86D4
 0067C367    push        6E86AD
 0067C36C    call        00678AD8
 0067C371    add         esp,0C
 0067C374    mov         edx,dword ptr [ebx]
 0067C376    mov         esi,dword ptr [edx+8]
 0067C379    mov         dword ptr [ebp-0C],esi
>0067C37C    jmp         0067C383
 0067C37E    mov         esi,dword ptr [ebx]
 0067C380    mov         dword ptr [ebp-0C],esi
 0067C383    mov         edi,1
 0067C388    mov         eax,dword ptr [ebp-0C]
 0067C38B    test        byte ptr [eax+4],10
>0067C38F    je          0067C420
 0067C395    mov         edx,dword ptr [ebp-0C]
 0067C398    mov         esi,dword ptr [edx+8]
 0067C39B    mov         dword ptr [ebp-0C],esi
 0067C39E    mov         ecx,dword ptr [ebp-0C]
 0067C3A1    test        byte ptr [ecx+4],2
>0067C3A5    je          0067C420
 0067C3A7    mov         eax,dword ptr [ebp-0C]
 0067C3AA    test        byte ptr [eax+0C],20
>0067C3AE    je          0067C420
 0067C3B0    test        byte ptr [ebx+4],8
>0067C3B4    je          0067C420
 0067C3B6    xor         esi,esi
 0067C3B8    mov         eax,dword ptr [ebp-0C]
 0067C3BB    test        byte ptr [eax+0C],2
>0067C3BF    jne         0067C3D8
 0067C3C1    push        0EF6
 0067C3C6    push        6E8703
 0067C3CB    push        6E86DB
 0067C3D0    call        00678AD8
 0067C3D5    add         esp,0C
 0067C3D8    test        byte ptr [ebx+4],4
>0067C3DC    je          0067C3E9
 0067C3DE    mov         edx,dword ptr [ebp+14]
 0067C3E1    add         edx,dword ptr [ebx+8]
 0067C3E4    mov         dword ptr [ebp-10],edx
>0067C3E7    jmp         0067C3EF
 0067C3E9    mov         ecx,dword ptr [ebx+8]
 0067C3EC    mov         dword ptr [ebp-10],ecx
 0067C3EF    mov         eax,dword ptr [ebp-10]
 0067C3F2    mov         edx,dword ptr [eax]
 0067C3F4    mov         dword ptr [ebp-10],edx
 0067C3F7    test        byte ptr [ebx+5],10
>0067C3FB    je          0067C400
 0067C3FD    mov         esi,dword ptr [eax+4]
 0067C400    test        byte ptr [ebx+4],40
>0067C404    je          0067C40A
 0067C406    add         dword ptr [ebp-10],4
 0067C40A    push        esi
 0067C40B    lea         eax,[ebp-0C]
 0067C40E    push        eax
 0067C40F    push        dword ptr [ebp-10]
 0067C412    call        0067C19E
 0067C417    add         esp,0C
 0067C41A    mov         dword ptr [ebp-10],eax
 0067C41D    mov         esi,dword ptr [ebp-0C]
 0067C420    mov         eax,dword ptr [ebp-0C]
 0067C423    test        byte ptr [eax+5],4
>0067C427    je          0067C42F
 0067C429    mov         edi,dword ptr [esi+0C]
 0067C42C    mov         esi,dword ptr [esi+8]
 0067C42F    test        byte ptr [esi+0C],2
>0067C433    jne         0067C44C
 0067C435    push        0F21
 0067C43A    push        6E8733
 0067C43F    push        6E870A
 0067C444    call        00678AD8
 0067C449    add         esp,0C
 0067C44C    imul        edi,dword ptr [esi+20]
 0067C450    cmp         edi,dword ptr [ebp-4]
>0067C453    jae         0067C460
 0067C455    sub         dword ptr [ebp-4],edi
 0067C458    add         ebx,0C
>0067C45B    jmp         0067C342
 0067C460    mov         eax,dword ptr [ebx]
 0067C462    mov         dword ptr [ebp-14],eax
 0067C465    mov         esi,dword ptr [ebx+4]
 0067C468    test        esi,4
>0067C46E    je          0067C47B
 0067C470    mov         eax,dword ptr [ebp+14]
 0067C473    add         eax,dword ptr [ebx+8]
 0067C476    mov         dword ptr [ebp-18],eax
>0067C479    jmp         0067C481
 0067C47B    mov         edx,dword ptr [ebx+8]
 0067C47E    mov         dword ptr [ebp-18],edx
 0067C481    test        esi,1000
>0067C487    je          0067C4B2
 0067C489    mov         ecx,dword ptr [ebp-14]
 0067C48C    test        byte ptr [ecx+5],4
>0067C490    jne         0067C4A9
 0067C492    push        0F51
 0067C497    push        6E8758
 0067C49C    push        6E873A
 0067C4A1    call        00678AD8
 0067C4A6    add         esp,0C
 0067C4A9    mov         eax,dword ptr [ebp-14]
 0067C4AC    mov         edx,dword ptr [eax+8]
 0067C4AF    mov         dword ptr [ebp-14],edx
 0067C4B2    test        esi,11
>0067C4B8    je          0067C543
 0067C4BE    xor         edi,edi
 0067C4C0    mov         eax,dword ptr [ebp-14]
 0067C4C3    test        byte ptr [eax+4],10
>0067C4C7    jne         0067C4E0
 0067C4C9    push        0F5B
 0067C4CE    push        6E877B
 0067C4D3    push        6E875F
 0067C4D8    call        00678AD8
 0067C4DD    add         esp,0C
 0067C4E0    mov         edx,dword ptr [ebp-14]
 0067C4E3    test        esi,1000
 0067C4E9    mov         ecx,dword ptr [edx+8]
 0067C4EC    mov         dword ptr [ebp-14],ecx
 0067C4EF    mov         eax,dword ptr [ebp-18]
 0067C4F2    mov         edx,dword ptr [eax]
 0067C4F4    mov         dword ptr [ebp-18],edx
>0067C4F7    je          0067C4FC
 0067C4F9    mov         edi,dword ptr [eax+4]
 0067C4FC    mov         edx,esi
 0067C4FE    mov         eax,dword ptr [ebp-18]
 0067C501    and         edx,48
 0067C504    mov         dword ptr [ebp-1C],eax
 0067C507    cmp         edx,40
>0067C50A    jne         0067C510
 0067C50C    add         dword ptr [ebp-18],4
 0067C510    mov         ecx,dword ptr [ebp-14]
 0067C513    test        byte ptr [ecx+4],2
>0067C517    je          0067C543
 0067C519    mov         eax,dword ptr [ebp-14]
 0067C51C    test        byte ptr [eax+0C],20
>0067C520    je          0067C543
 0067C522    test        esi,8
>0067C528    je          0067C543
 0067C52A    push        edi
 0067C52B    lea         edx,[ebp-14]
 0067C52E    push        edx
 0067C52F    push        dword ptr [ebp-18]
 0067C532    call        0067C19E
 0067C537    add         esp,0C
 0067C53A    mov         dword ptr [ebp-18],eax
 0067C53D    mov         ecx,dword ptr [ebp-18]
 0067C540    mov         dword ptr [ebp-1C],ecx
 0067C543    cmp         dword ptr [ebp-8],0
>0067C547    jne         0067C609
 0067C54D    test        esi,400
>0067C553    je          0067C5A2
 0067C555    mov         eax,dword ptr [ebp-14]
 0067C558    cmp         word ptr [eax+10],0
>0067C55D    je          0067C58B
 0067C55F    mov         edx,dword ptr [ebp-14]
 0067C562    movzx       edi,word ptr [edx+10]
 0067C566    add         edi,dword ptr [ebp-14]
 0067C569    test        edi,edi
>0067C56B    jne         0067C584
 0067C56D    push        0F91
 0067C572    push        6E8785
 0067C577    push        6E8782
 0067C57C    call        00678AD8
 0067C581    add         esp,0C
 0067C584    mov         eax,dword ptr [edi]
 0067C586    mov         eax,dword ptr [eax+20]
>0067C589    jmp         0067C58D
 0067C58B    xor         eax,eax
 0067C58D    mov         edx,dword ptr [ebp-4]
 0067C590    cmp         edx,eax
>0067C592    jb          0067C59B
 0067C594    mov         eax,1
>0067C599    jmp         0067C5A4
 0067C59B    mov         eax,2
>0067C5A0    jmp         0067C5A4
 0067C5A2    xor         eax,eax
 0067C5A4    mov         edx,dword ptr [ebp-14]
 0067C5A7    test        byte ptr [edx+5],4
>0067C5AB    je          0067C5C6
 0067C5AD    push        dword ptr [ebp+10]
 0067C5B0    push        dword ptr [ebp+14]
 0067C5B3    push        dword ptr [ebp-4]
 0067C5B6    push        dword ptr [ebp-14]
 0067C5B9    push        dword ptr [ebp-18]
 0067C5BC    call        0067C07A
 0067C5C1    add         esp,14
>0067C5C4    jmp         0067C5E0
 0067C5C6    push        dword ptr [ebp+10]
 0067C5C9    push        dword ptr [ebp+14]
 0067C5CC    push        1
 0067C5CE    push        dword ptr [ebp-4]
 0067C5D1    push        eax
 0067C5D2    push        dword ptr [ebp-14]
 0067C5D5    push        dword ptr [ebp-18]
 0067C5D8    call        0067BD47
 0067C5DD    add         esp,1C
 0067C5E0    test        esi,400
>0067C5E6    je          0067C609
 0067C5E8    mov         ecx,dword ptr [ebp+10]
 0067C5EB    test        byte ptr [ecx+20],1
>0067C5EF    je          0067C609
 0067C5F1    mov         eax,dword ptr [ebp+10]
 0067C5F4    cmp         byte ptr [eax+20],0FF
>0067C5F8    je          0067C609
 0067C5FA    mov         edx,dword ptr [ebp-18]
 0067C5FD    mov         eax,dword ptr [edx]
 0067C5FF    mov         eax,dword ptr [eax-8]
 0067C602    mov         edi,eax
 0067C604    mov         eax,dword ptr [ebp-18]
 0067C607    call        edi
 0067C609    mov         edx,esi
 0067C60B    and         edx,3
 0067C60E    cmp         edx,3
>0067C611    jne         0067C68D
 0067C613    and         esi,48
 0067C616    cmp         esi,48
>0067C619    jne         0067C61F
 0067C61B    sub         dword ptr [ebp-1C],4
 0067C61F    mov         ecx,dword ptr [ebp-14]
 0067C622    test        byte ptr [ecx+5],4
>0067C626    je          0067C660
 0067C628    mov         eax,dword ptr [ebp-14]
 0067C62B    mov         edx,dword ptr [eax+8]
 0067C62E    mov         dword ptr [ebp-14],edx
 0067C631    mov         ecx,dword ptr [ebp-14]
 0067C634    cmp         dword ptr [ecx+1C],0
>0067C638    je          0067C655
 0067C63A    mov         eax,dword ptr [ebp-14]
 0067C63D    movzx       edx,word ptr [eax+1A]
 0067C641    push        edx
 0067C642    mov         ecx,dword ptr [ebp-14]
 0067C645    push        dword ptr [ecx+1C]
 0067C648    push        dword ptr [ebp-1C]
 0067C64B    call        0067A9C2
 0067C650    add         esp,0C
>0067C653    jmp         0067C68D
 0067C655    push        dword ptr [ebp-1C]
 0067C658    call        0066EAC0
 0067C65D    pop         ecx
>0067C65E    jmp         0067C68D
 0067C660    mov         eax,dword ptr [ebp-14]
 0067C663    cmp         dword ptr [eax+14],0
>0067C667    je          0067C684
 0067C669    mov         edx,dword ptr [ebp-14]
 0067C66C    movzx       ecx,word ptr [edx+18]
 0067C670    push        ecx
 0067C671    mov         eax,dword ptr [ebp-14]
 0067C674    push        dword ptr [eax+14]
 0067C677    push        dword ptr [ebp-1C]
 0067C67A    call        0067A9C2
 0067C67F    add         esp,0C
>0067C682    jmp         0067C68D
 0067C684    push        dword ptr [ebp-1C]
 0067C687    call        0066EAB0
 0067C68C    pop         ecx
 0067C68D    xor         edx,edx
 0067C68F    mov         dword ptr [ebp-4],edx
 0067C692    mov         ecx,ebx
 0067C694    add         ebx,0FFFFFFF4
 0067C697    cmp         ecx,dword ptr [ebp+8]
>0067C69A    ja          0067C460
 0067C6A0    xor         eax,eax
 0067C6A2    pop         edi
 0067C6A3    pop         esi
 0067C6A4    pop         ebx
 0067C6A5    mov         esp,ebp
 0067C6A7    pop         ebp
 0067C6A8    ret
end;*}

end.