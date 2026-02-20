//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit106;

interface

uses
  SysUtils, Classes;

    procedure sub_00670D40;//00670D40
    procedure sub_00670D6C;//00670D6C
    //procedure sub_00670D80(?:?);//00670D80
    //procedure sub_00670D95(?:?);//00670D95
    procedure sub_00670DCE;//00670DCE
    procedure sub_00670DE3(?:Extended; ?:Float; ?:Double);//00670DE3
    //function sub_00670E2C(?:?):?;//00670E2C
    //function sub_00670EA4(?:?):?;//00670EA4
    //function sub_00670F3C(?:?):?;//00670F3C
    //function sub_00670F6C(?:?):?;//00670F6C
    //function sub_00670F84(?:?; ?:?; ?:?):?;//00670F84
    //function sub_00671008(?:?; ?:?; ?:?; ?:?):?;//00671008
    //function sub_0067120C(?:?; ?:?):?;//0067120C
    //function sub_00671278(?:?; ?:?; ?:?):?;//00671278
    //function sub_006713C0(?:?; ?:?; ?:?):?;//006713C0
    //function sub_00671508:?;//00671508
    //function sub_0067154C(?:?; ?:?; ?:?):?;//0067154C
    //function sub_006715B0(?:?; ?:?; ?:?):?;//006715B0
    //function sub_00671614:?;//00671614
    //function sub_0067161C(?:?; ?:?; ?:?; ?:?):?;//0067161C
    //function sub_0067169C(?:?):?;//0067169C
    //procedure sub_0067172C(?:?);//0067172C
    //procedure sub_00671770(?:?; ?:?);//00671770
    //function sub_00671818(?:?; ?:?):?;//00671818
    //function sub_006718B8(?:?):?;//006718B8
    //function sub_00671948(?:?; ?:?; ?:?):?;//00671948
    //function sub_00671A84:?;//00671A84
    //procedure sub_00671AE8(?:?);//00671AE8
    //procedure sub_00671AF8(?:?);//00671AF8
    //function sub_00671B0C(?:?; ?:?; ?:?):?;//00671B0C
    //function sub_00671BE8(?:?; ?:?; ?:?; ?:?):?;//00671BE8
    //function sub_00671C94:?;//00671C94
    //function sub_00671CC0(?:?; ?:?):?;//00671CC0
    //function sub_00671CF4(?:?; ?:?; ?:?):?;//00671CF4
    //function sub_00671E08(?:?; ?:?; ?:?):?;//00671E08
    //function sub_00671F38(?:?; ?:?; ?:?; ?:?):?;//00671F38
    //function sub_00671F7C(?:?):?;//00671F7C
    //function sub_00671FD8(?:?; ?:?; ?:?):?;//00671FD8
    //function sub_0067204C(?:?):?;//0067204C
    //function sub_006720E8(?:?):?;//006720E8
    procedure sub_00672104;//00672104
    procedure sub_00672114;//00672114
    procedure sub_00672138;//00672138
    //procedure sub_00672148(?:?);//00672148
    //procedure sub_006721DC(?:?);//006721DC
    //function sub_00672224(?:?; ?:?):?;//00672224

implementation

//00670D40
procedure sub_00670D40;
begin
{*
 00670D40    mov         dword ptr ds:[6EDE44],670BF8
 00670D4A    mov         dword ptr ds:[6EDE48],670BF8
 00670D54    ret
*}
end;

//00670D6C
procedure sub_00670D6C;
begin
{*
 00670D6C    mov         eax,[006EE25C];0x0 gvar_006EE25C:Double
 00670D71    test        eax,eax
>00670D73    je          00670D7C
 00670D75    push        eax
 00670D76    call        00670CF4
 00670D7B    pop         ecx
 00670D7C    ret
*}
end;

//00670D80
{*procedure sub_00670D80(?:?);
begin
 00670D80    push        ebp
 00670D81    mov         ebp,esp
 00670D83    mov         eax,dword ptr [ebp+8]
 00670D86    mov         ecx,dword ptr fs:[0000]
 00670D8C    mov         dword ptr [eax],ecx
 00670D8E    mov         fs:[00000000],eax
 00670D93    pop         ebp
 00670D94    ret
end;*}

//00670D95
{*procedure sub_00670D95(?:?);
begin
 00670D95    push        ebp
 00670D96    mov         ebp,esp
 00670D98    mov         eax,dword ptr [ebp+8]
 00670D9B    mov         ecx,dword ptr fs:[0000]
 00670DA1    cmp         eax,ecx
>00670DA3    jne         00670DAE
 00670DA5    mov         eax,dword ptr [eax]
 00670DA7    mov         fs:[00000000],eax
 00670DAC    pop         ebp
 00670DAD    ret
 00670DAE    cmp         ecx,0FFFFFFFF
>00670DB1    je          00670DAC
 00670DB3    cmp         dword ptr [ecx],eax
>00670DB5    je          00670DBB
 00670DB7    mov         ecx,dword ptr [ecx]
>00670DB9    jmp         00670DAE
 00670DBB    mov         eax,dword ptr [eax]
 00670DBD    mov         dword ptr [ecx],eax
>00670DBF    jmp         00670DAC
>00670DC1    jmp         KERNEL32.RtlUnwind
 00670DC6    nop
 00670DC7    nop
 00670DC8    mov         esp,ebx
 00670DCA    mov         ebp,ecx
 00670DCC    jmp         eax
 00670DCE    push        ebx
 00670DCF    push        esi
 00670DD0    push        edi
 00670DD1    push        0
 00670DD3    push        edx
 00670DD4    push        670DDF
 00670DD9    push        eax
 00670DDA    call        KERNEL32.RtlUnwind
 00670DDF    pop         edi
 00670DE0    pop         esi
 00670DE1    pop         ebx
 00670DE2    ret
end;*}

//00670DCE
procedure sub_00670DCE;
begin
{*
 00670DCE    push        ebx
 00670DCF    push        esi
 00670DD0    push        edi
 00670DD1    push        0
 00670DD3    push        edx
 00670DD4    push        670DDF
 00670DD9    push        eax
 00670DDA    call        KERNEL32.RtlUnwind
 00670DDF    pop         edi
 00670DE0    pop         esi
 00670DE1    pop         ebx
 00670DE2    ret
*}
end;

//00670DE3
procedure sub_00670DE3(?:Extended; ?:Float; ?:Double);
begin
{*
 00670DE3    push        ebp
 00670DE4    mov         ebp,ecx
 00670DE6    call        dword ptr [ebx]
 00670DE8    pop         ebp
 00670DE9    ret
*}
end;

//00670E2C
{*function sub_00670E2C(?:?):?;
begin
 00670E2C    push        ebp
 00670E2D    mov         ebp,esp
 00670E2F    push        ebx
 00670E30    push        esi
 00670E31    mov         ebx,dword ptr [ebp+8]
 00670E34    xor         esi,esi
 00670E36    cmp         ebx,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>00670E3C    jb          00670E48
 00670E3E    push        6
 00670E40    call        006724FC
 00670E45    pop         ecx
>00670E46    jmp         00670E9D
 00670E48    push        ebx
 00670E49    call        00672148
 00670E4E    test        byte ptr [ebx*4+6E5CF2],1
 00670E56    pop         ecx
>00670E57    je          00670E5E
 00670E59    mov         esi,1
 00670E5E    test        esi,esi
>00670E60    jne         00670E72
 00670E62    mov         eax,dword ptr [ebx*4+6EDF14];gvar_006EDF14
 00670E69    push        eax
 00670E6A    call        KERNEL32.CloseHandle
 00670E6F    dec         eax
>00670E70    jne         00670E91
 00670E72    xor         edx,edx
 00670E74    mov         dword ptr [ebx*4+6E5CF0],edx;gvar_006E5CF0
 00670E7B    mov         dword ptr [ebx*4+6EDF14],0FFFFFFFF;gvar_006EDF14
 00670E86    push        ebx
 00670E87    call        006721DC
 00670E8C    pop         ecx
 00670E8D    xor         eax,eax
>00670E8F    jmp         00670E9D
 00670E91    push        ebx
 00670E92    call        006721DC
 00670E97    pop         ecx
 00670E98    call        00672568
 00670E9D    pop         esi
 00670E9E    pop         ebx
 00670E9F    pop         ebp
 00670EA0    ret
end;*}

//00670EA4
{*function sub_00670EA4(?:?):?;
begin
 00670EA4    push        ebp
 00670EA5    mov         ebp,esp
 00670EA7    push        ebx
 00670EA8    push        esi
 00670EA9    push        edi
 00670EAA    mov         ebx,dword ptr [ebp+8]
 00670EAD    cmp         ebx,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>00670EB3    jb          00670EBF
 00670EB5    push        0FA
 00670EB7    call        006724FC
 00670EBC    pop         ecx
>00670EBD    jmp         00670F37
 00670EBF    push        ebx
 00670EC0    call        00672148
 00670EC5    pop         ecx
 00670EC6    mov         eax,dword ptr [ebx*4+6E5CF0];gvar_006E5CF0
 00670ECD    test        ah,2
>00670ED0    je          00670ED9
 00670ED2    mov         esi,1
>00670ED7    jmp         00670F2E
 00670ED9    test        ah,20
>00670EDC    je          00670EE2
 00670EDE    xor         esi,esi
>00670EE0    jmp         00670F2E
 00670EE2    push        1
 00670EE4    push        0
 00670EE6    push        ebx
 00670EE7    call        00670F84
 00670EEC    add         esp,0C
 00670EEF    mov         esi,eax
 00670EF1    inc         eax
>00670EF2    jne         00670EF9
 00670EF4    or          esi,0FFFFFFFF
>00670EF7    jmp         00670F2E
 00670EF9    push        2
 00670EFB    push        0
 00670EFD    push        ebx
 00670EFE    call        00670F84
 00670F03    add         esp,0C
 00670F06    mov         edi,eax
 00670F08    inc         eax
>00670F09    jne         00670F10
 00670F0B    or          esi,0FFFFFFFF
>00670F0E    jmp         00670F2E
 00670F10    push        0
 00670F12    push        esi
 00670F13    push        ebx
 00670F14    call        00670F84
 00670F19    add         esp,0C
 00670F1C    inc         eax
>00670F1D    jne         00670F24
 00670F1F    or          esi,0FFFFFFFF
>00670F22    jmp         00670F2E
 00670F24    cmp         edi,esi
 00670F26    setle       al
 00670F29    and         eax,1
 00670F2C    mov         esi,eax
 00670F2E    push        ebx
 00670F2F    call        006721DC
 00670F34    pop         ecx
 00670F35    mov         eax,esi
 00670F37    pop         edi
 00670F38    pop         esi
 00670F39    pop         ebx
 00670F3A    pop         ebp
 00670F3B    ret
end;*}

//00670F3C
{*function sub_00670F3C(?:?):?;
begin
 00670F3C    push        ebp
 00670F3D    mov         ebp,esp
 00670F3F    push        ebx
 00670F40    mov         ebx,dword ptr [ebp+8]
 00670F43    cmp         ebx,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>00670F49    jb          00670F50
 00670F4B    xor         eax,eax
 00670F4D    pop         ebx
 00670F4E    pop         ebp
 00670F4F    ret
 00670F50    mov         edx,dword ptr [ebx*4+6EDF14];gvar_006EDF14
 00670F57    push        edx
 00670F58    call        KERNEL32.GetFileType
 00670F5D    cmp         eax,2
 00670F60    sete        al
 00670F63    and         eax,1
 00670F66    pop         ebx
 00670F67    pop         ebp
 00670F68    ret
end;*}

//00670F6C
{*function sub_00670F6C(?:?):?;
begin
 00670F6C    push        ebp
 00670F6D    mov         ebp,esp
 00670F6F    mov         eax,dword ptr [ebp+8]
 00670F72    push        eax
 00670F73    call        KERNEL32.GetFileType
 00670F78    cmp         eax,2
 00670F7B    sete        al
 00670F7E    and         eax,1
 00670F81    pop         ebp
 00670F82    ret
end;*}

//00670F84
{*function sub_00670F84(?:?; ?:?; ?:?):?;
begin
 00670F84    push        ebp
 00670F85    mov         ebp,esp
 00670F87    push        ebx
 00670F88    push        esi
 00670F89    push        edi
 00670F8A    mov         ebx,dword ptr [ebp+8]
 00670F8D    cmp         ebx,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>00670F93    jb          00670F9F
 00670F95    push        6
 00670F97    call        006724FC
 00670F9C    pop         ecx
>00670F9D    jmp         00671003
 00670F9F    mov         eax,dword ptr [ebp+10]
 00670FA2    sub         eax,1
>00670FA5    jb          00670FAE
>00670FA7    je          00670FB2
 00670FA9    dec         eax
>00670FAA    je          00670FB9
>00670FAC    jmp         00670FC0
 00670FAE    xor         edi,edi
>00670FB0    jmp         00670FCA
 00670FB2    mov         edi,1
>00670FB7    jmp         00670FCA
 00670FB9    mov         edi,2
>00670FBE    jmp         00670FCA
 00670FC0    push        1
 00670FC2    call        006724FC
 00670FC7    pop         ecx
>00670FC8    jmp         00671003
 00670FCA    push        ebx
 00670FCB    call        00672148
 00670FD0    pop         ecx
 00670FD1    and         dword ptr [ebx*4+6E5CF0],0FFFFFDFF;gvar_006E5CF0
 00670FDC    push        edi
 00670FDD    push        0
 00670FDF    mov         eax,dword ptr [ebp+0C]
 00670FE2    push        eax
 00670FE3    mov         edx,dword ptr [ebx*4+6EDF14];gvar_006EDF14
 00670FEA    push        edx
 00670FEB    call        KERNEL32.SetFilePointer
 00670FF0    mov         esi,eax
 00670FF2    inc         eax
>00670FF3    jne         00670FFA
 00670FF5    call        00672568
 00670FFA    push        ebx
 00670FFB    call        006721DC
 00671000    pop         ecx
 00671001    mov         eax,esi
 00671003    pop         edi
 00671004    pop         esi
 00671005    pop         ebx
 00671006    pop         ebp
 00671007    ret
end;*}

//00671008
{*function sub_00671008(?:?; ?:?; ?:?; ?:?):?;
begin
 00671008    push        ebp
 00671009    mov         ebp,esp
 0067100B    add         esp,0FFFFFFEC
 0067100E    push        ebx
 0067100F    push        esi
 00671010    push        edi
 00671011    call        00672104
 00671016    test        byte ptr [ebp+0D],0C0
>0067101A    jne         0067102C
 0067101C    mov         eax,[006E5DBC];^gvar_006E5DB8
 00671021    mov         edx,dword ptr [eax]
 00671023    and         edx,0C000
 00671029    or          dword ptr [ebp+0C],edx
 0067102C    test        byte ptr [ebp+0D],80
>00671030    jne         00671039
 00671032    or          dword ptr [ebp+0C],4000
 00671039    mov         ecx,dword ptr [ebp+0C]
 0067103C    and         ecx,700
 00671042    cmp         ecx,500
>00671048    jg          00671066
>0067104A    je          00671078
 0067104C    sub         ecx,100
>00671052    je          00671086
 00671054    sub         ecx,100
>0067105A    je          0067108D
 0067105C    sub         ecx,100
>00671062    je          0067107F
>00671064    jmp         00671094
 00671066    sub         ecx,600
>0067106C    je          0067108D
 0067106E    sub         ecx,100
>00671074    je          00671078
>00671076    jmp         00671094
 00671078    mov         edi,1
>0067107D    jmp         00671099
 0067107F    mov         edi,2
>00671084    jmp         00671099
 00671086    mov         edi,4
>0067108B    jmp         00671099
 0067108D    mov         edi,5
>00671092    jmp         00671099
 00671094    mov         edi,3
 00671099    test        byte ptr [ebp+0D],1
>0067109D    je          006710C0
 0067109F    lea         eax,[ebp+10]
 006710A2    add         eax,4
 006710A5    mov         eax,dword ptr [eax-4]
 006710A8    and         eax,dword ptr ds:[6E5834];0xFFFFFFFF gvar_006E5834
 006710AE    test        al,80
>006710B0    je          006710B9
 006710B2    mov         ebx,80
>006710B7    jmp         006710D2
 006710B9    mov         ebx,1
>006710BE    jmp         006710D2
 006710C0    mov         eax,dword ptr [ebp+8]
 006710C3    push        eax
 006710C4    call        KERNEL32.GetFileAttributesA
 006710C9    mov         ebx,eax
 006710CB    cmp         eax,0FFFFFFFF
>006710CE    jne         006710D2
 006710D0    xor         ebx,ebx
 006710D2    mov         eax,dword ptr [ebp+0C]
 006710D5    and         eax,3
 006710D8    sub         eax,1
>006710DB    jb          006710E4
>006710DD    je          006710ED
 006710DF    dec         eax
>006710E0    je          006710F6
>006710E2    jmp         006710FF
 006710E4    mov         dword ptr [ebp-4],80000000
>006710EB    jmp         0067110E
 006710ED    mov         dword ptr [ebp-4],40000000
>006710F4    jmp         0067110E
 006710F6    mov         dword ptr [ebp-4],0C0000000
>006710FD    jmp         0067110E
 006710FF    push        1
 00671101    call        006724FC
 00671106    pop         ecx
 00671107    mov         ebx,eax
>00671109    jmp         006711FE
 0067110E    mov         eax,dword ptr [ebp+0C]
 00671111    and         eax,70
 00671114    sub         eax,10
>00671117    je          0067112A
 00671119    sub         eax,10
>0067111C    je          00671131
 0067111E    sub         eax,10
>00671121    je          0067113A
 00671123    sub         eax,10
>00671126    je          00671143
>00671128    jmp         00671143
 0067112A    xor         edx,edx
 0067112C    mov         dword ptr [ebp-8],edx
>0067112F    jmp         0067114A
 00671131    mov         dword ptr [ebp-8],1
>00671138    jmp         0067114A
 0067113A    mov         dword ptr [ebp-8],2
>00671141    jmp         0067114A
 00671143    mov         dword ptr [ebp-8],3
 0067114A    mov         dword ptr [ebp-14],0C
 00671151    xor         ecx,ecx
 00671153    mov         dword ptr [ebp-10],ecx
 00671156    lea         ecx,[ebp-14]
 00671159    mov         eax,dword ptr [ebp+0C]
 0067115C    and         eax,80
 00671161    cmp         eax,1
 00671164    sbb         edx,edx
 00671166    neg         edx
 00671168    mov         dword ptr [ebp-0C],edx
 0067116B    push        0
 0067116D    push        ebx
 0067116E    push        edi
 0067116F    push        ecx
 00671170    mov         eax,dword ptr [ebp-8]
 00671173    push        eax
 00671174    mov         edx,dword ptr [ebp-4]
 00671177    push        edx
 00671178    mov         ecx,dword ptr [ebp+8]
 0067117B    push        ecx
 0067117C    call        KERNEL32.CreateFileA
 00671181    mov         esi,eax
 00671183    cmp         eax,0FFFFFFFF
>00671186    jne         006711B7
 00671188    call        KERNEL32.GetLastError
 0067118D    mov         ebx,eax
 0067118F    and         ebx,0FFFF
 00671195    cmp         ebx,6E
>00671198    jne         006711AC
 0067119A    test        byte ptr [ebp+0D],1
>0067119E    je          006711A7
 006711A0    mov         ebx,50
>006711A5    jmp         006711AC
 006711A7    mov         ebx,2
 006711AC    push        ebx
 006711AD    call        006724FC
 006711B2    pop         ecx
 006711B3    mov         ebx,eax
>006711B5    jmp         006711FE
 006711B7    mov         edi,esi
 006711B9    push        edi
 006711BA    call        00670F6C
 006711BF    pop         ecx
 006711C0    test        eax,eax
>006711C2    je          006711CB
 006711C4    or          dword ptr [ebp+0C],2000
 006711CB    test        bl,1
>006711CE    jne         006711D7
 006711D0    or          dword ptr [ebp+0C],100
 006711D7    and         dword ptr [ebp+0C],0FFFFF8FF
 006711DE    mov         eax,dword ptr [ebp+0C]
 006711E1    push        eax
 006711E2    push        edi
 006711E3    call        00672224
 006711E8    add         esp,8
 006711EB    mov         ebx,eax
 006711ED    inc         eax
>006711EE    jne         006711FE
 006711F0    push        4
 006711F2    call        006724FC
 006711F7    pop         ecx
 006711F8    push        esi
 006711F9    call        KERNEL32.CloseHandle
 006711FE    call        00672138
 00671203    mov         eax,ebx
 00671205    pop         edi
 00671206    pop         esi
 00671207    pop         ebx
 00671208    mov         esp,ebp
 0067120A    pop         ebp
 0067120B    ret
end;*}

//0067120C
{*function sub_0067120C(?:?; ?:?):?;
begin
 0067120C    push        ebp
 0067120D    mov         ebp,esp
 0067120F    add         esp,0FFFFFFF8
 00671212    push        ebx
 00671213    push        esi
 00671214    push        edi
 00671215    mov         eax,dword ptr [ebp+8]
 00671218    add         eax,dword ptr [ebp+0C]
 0067121B    mov         dword ptr [ebp-4],eax
 0067121E    mov         edi,dword ptr [ebp+8]
 00671221    mov         ebx,edi
 00671223    mov         eax,dword ptr [ebp-4]
 00671226    sub         eax,ebx
 00671228    push        eax
 00671229    push        0D
 0067122B    push        ebx
 0067122C    call        0066F874
 00671231    add         esp,0C
 00671234    mov         esi,eax
 00671236    test        eax,eax
>00671238    jne         0067123D
 0067123A    mov         esi,dword ptr [ebp-4]
 0067123D    mov         eax,esi
 0067123F    sub         eax,ebx
 00671241    cmp         edi,ebx
 00671243    mov         dword ptr [ebp-8],eax
>00671246    je          00671256
 00671248    mov         edx,dword ptr [ebp-8]
 0067124B    push        edx
 0067124C    push        ebx
 0067124D    push        edi
 0067124E    call        0066F894
 00671253    add         esp,0C
 00671256    mov         ecx,dword ptr [ebp-4]
 00671259    dec         ecx
 0067125A    cmp         esi,ecx
>0067125C    jb          00671268
 0067125E    mov         eax,edi
 00671260    sub         eax,dword ptr [ebp+8]
 00671263    add         eax,dword ptr [ebp-8]
>00671266    jmp         00671270
 00671268    lea         ebx,[esi+1]
 0067126B    add         edi,dword ptr [ebp-8]
>0067126E    jmp         00671223
 00671270    pop         edi
 00671271    pop         esi
 00671272    pop         ebx
 00671273    pop         ecx
 00671274    pop         ecx
 00671275    pop         ebp
 00671276    ret
end;*}

//00671278
{*function sub_00671278(?:?; ?:?; ?:?):?;
begin
 00671278    push        ebp
 00671279    mov         ebp,esp
 0067127B    add         esp,0FFFFFFF4
 0067127E    push        ebx
 0067127F    push        esi
 00671280    push        edi
 00671281    mov         ebx,dword ptr [ebp+0C]
 00671284    mov         eax,dword ptr [ebp+8]
 00671287    cmp         eax,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>0067128D    jb          0067129C
 0067128F    push        0FA
 00671291    call        006724FC
 00671296    pop         ecx
>00671297    jmp         006713B7
 0067129C    mov         edx,dword ptr [ebp+10]
 0067129F    inc         edx
 006712A0    cmp         edx,2
>006712A3    jae         006712AC
 006712A5    xor         eax,eax
>006712A7    jmp         006713B7
 006712AC    mov         edx,dword ptr [ebp+8]
 006712AF    push        edx
 006712B0    call        00672148
 006712B5    pop         ecx
 006712B6    mov         ecx,dword ptr [ebp+8]
 006712B9    test        byte ptr [ecx*4+6E5CF1],40
>006712C1    jne         006712DB
 006712C3    mov         eax,dword ptr [ebp+10]
 006712C6    push        eax
 006712C7    push        ebx
 006712C8    mov         edx,dword ptr [ebp+8]
 006712CB    push        edx
 006712CC    call        0067154C
 006712D1    add         esp,0C
 006712D4    mov         ebx,eax
>006712D6    jmp         006713AB
 006712DB    mov         ecx,dword ptr [ebp+8]
 006712DE    test        byte ptr [ecx*4+6E5CF1],2
>006712E6    je          006712EF
 006712E8    xor         ebx,ebx
>006712EA    jmp         006713AB
 006712EF    mov         eax,dword ptr [ebp+8]
 006712F2    xor         edi,edi
 006712F4    mov         esi,ebx
 006712F6    lea         edx,[eax*4+6E5CF0];gvar_006E5CF0
 006712FD    mov         dword ptr [ebp-0C],edx
 00671300    cmp         edi,dword ptr [ebp+10]
>00671303    jae         006713A9
 00671309    mov         ecx,dword ptr [ebp+10]
 0067130C    sub         ecx,edi
 0067130E    mov         dword ptr [ebp-4],ecx
 00671311    mov         eax,dword ptr [ebp-4]
 00671314    push        eax
 00671315    push        esi
 00671316    mov         edx,dword ptr [ebp+8]
 00671319    push        edx
 0067131A    call        0067154C
 0067131F    add         esp,0C
 00671322    mov         ebx,eax
 00671324    cmp         eax,0FFFFFFFF
>00671327    jne         0067132E
 00671329    or          ebx,0FFFFFFFF
>0067132C    jmp         006713AB
 0067132E    test        ebx,ebx
>00671330    je          006713A9
 00671332    push        ebx
 00671333    push        1A
 00671335    push        esi
 00671336    call        0066F874
 0067133B    add         esp,0C
 0067133E    mov         dword ptr [ebp-8],eax
 00671341    test        eax,eax
>00671343    je          00671357
 00671345    mov         edx,dword ptr [ebp-0C]
 00671348    or          dword ptr [edx],200
 0067134E    mov         ebx,dword ptr [ebp-8]
 00671351    sub         ebx,esi
 00671353    test        ebx,ebx
>00671355    je          006713A9
 00671357    cmp         byte ptr [esi+ebx-1],0D
>0067135C    jne         0067137A
 0067135E    push        1
 00671360    mov         eax,ebx
 00671362    dec         eax
 00671363    add         eax,esi
 00671365    push        eax
 00671366    mov         edx,dword ptr [ebp+8]
 00671369    push        edx
 0067136A    call        0067154C
 0067136F    add         esp,0C
 00671372    inc         eax
>00671373    jne         0067137A
 00671375    or          ebx,0FFFFFFFF
>00671378    jmp         006713AB
 0067137A    push        ebx
 0067137B    push        esi
 0067137C    call        0067120C
 00671381    add         esp,8
 00671384    add         edi,eax
 00671386    cmp         ebx,dword ptr [ebp-4]
>00671389    jae         00671394
 0067138B    mov         edx,dword ptr [ebp-0C]
 0067138E    test        byte ptr [edx+1],20;TMemoryManager.GetMem:function(val Size:Integer):Pointer
>00671392    jne         006713A9
 00671394    cmp         dword ptr [ebp-8],0
>00671398    jne         006713A9
 0067139A    test        eax,eax
>0067139C    jne         006713A9
 0067139E    add         esi,eax
 006713A0    cmp         edi,dword ptr [ebp+10]
>006713A3    jb          00671309
 006713A9    mov         ebx,edi
 006713AB    mov         eax,dword ptr [ebp+8]
 006713AE    push        eax
 006713AF    call        006721DC
 006713B4    pop         ecx
 006713B5    mov         eax,ebx
 006713B7    pop         edi
 006713B8    pop         esi
 006713B9    pop         ebx
 006713BA    mov         esp,ebp
 006713BC    pop         ebp
 006713BD    ret
end;*}

//006713C0
{*function sub_006713C0(?:?; ?:?; ?:?):?;
begin
 006713C0    push        ebp
 006713C1    mov         ebp,esp
 006713C3    add         esp,0FFFFFDF8
 006713C9    push        ebx
 006713CA    push        esi
 006713CB    push        edi
 006713CC    mov         edi,dword ptr [ebp+0C]
 006713CF    mov         eax,dword ptr [ebp+8]
 006713D2    cmp         eax,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>006713D8    jb          006713E7
 006713DA    push        0FA
 006713DC    call        006724FC
 006713E1    pop         ecx
>006713E2    jmp         006714EB
 006713E7    mov         edx,dword ptr [ebp+10]
 006713EA    inc         edx
 006713EB    cmp         edx,2
>006713EE    jae         006713F7
 006713F0    xor         eax,eax
>006713F2    jmp         006714EB
 006713F7    mov         edx,dword ptr [ebp+8]
 006713FA    push        edx
 006713FB    call        00672148
 00671400    pop         ecx
 00671401    mov         ecx,dword ptr [ebp+8]
 00671404    test        byte ptr [ecx*4+6E5CF1],8
>0067140C    je          0067141E
 0067140E    push        2
 00671410    push        0
 00671412    mov         eax,dword ptr [ebp+8]
 00671415    push        eax
 00671416    call        00670F84
 0067141B    add         esp,0C
 0067141E    mov         edx,dword ptr [ebp+8]
 00671421    test        byte ptr [edx*4+6E5CF1],40
>00671429    jne         00671443
 0067142B    mov         ecx,dword ptr [ebp+10]
 0067142E    push        ecx
 0067142F    push        edi
 00671430    mov         eax,dword ptr [ebp+8]
 00671433    push        eax
 00671434    call        006715B0
 00671439    add         esp,0C
 0067143C    mov         ebx,eax
>0067143E    jmp         006714DF
 00671443    mov         esi,edi
 00671445    xor         eax,eax
 00671447    mov         dword ptr [ebp-4],eax
 0067144A    xor         edx,edx
 0067144C    mov         dword ptr [ebp-8],edx
>0067144F    jmp         006714CC
 00671451    lea         ebx,[ebp-208]
>00671457    jmp         00671470
 00671459    mov         al,byte ptr [esi]
 0067145B    inc         esi
 0067145C    cmp         al,0A
>0067145E    jne         0067146D
 00671460    inc         dword ptr [ebp-4]
 00671463    mov         byte ptr [ebx],0D
 00671466    inc         ebx
 00671467    mov         byte ptr [ebx],0A
 0067146A    inc         ebx
>0067146B    jmp         00671470
 0067146D    mov         byte ptr [ebx],al
 0067146F    inc         ebx
 00671470    lea         edx,[ebp-208]
 00671476    mov         ecx,ebx
 00671478    sub         ecx,edx
 0067147A    cmp         ecx,1FF
>00671480    jge         0067148B
 00671482    mov         eax,esi
 00671484    sub         eax,edi
 00671486    cmp         eax,dword ptr [ebp+10]
>00671489    jb          00671459
 0067148B    lea         edx,[ebp-208]
 00671491    mov         ecx,ebx
 00671493    sub         ecx,edx
 00671495    lea         eax,[ebp-208]
 0067149B    push        ecx
 0067149C    push        eax
 0067149D    mov         edx,dword ptr [ebp+8]
 006714A0    push        edx
 006714A1    call        006715B0
 006714A6    add         esp,0C
 006714A9    lea         ecx,[ebp-208]
 006714AF    sub         ebx,ecx
 006714B1    cmp         eax,ebx
>006714B3    je          006714C9
 006714B5    cmp         eax,0FFFFFFFF
>006714B8    jne         006714BF
 006714BA    or          ebx,0FFFFFFFF
>006714BD    jmp         006714DF
 006714BF    mov         ebx,dword ptr [ebp-8]
 006714C2    sub         ebx,dword ptr [ebp-4]
 006714C5    add         ebx,eax
>006714C7    jmp         006714DF
 006714C9    add         dword ptr [ebp-8],eax
 006714CC    mov         eax,esi
 006714CE    sub         eax,edi
 006714D0    cmp         eax,dword ptr [ebp+10]
>006714D3    jb          00671451
 006714D9    mov         ebx,dword ptr [ebp-8]
 006714DC    sub         ebx,dword ptr [ebp-4]
 006714DF    mov         eax,dword ptr [ebp+8]
 006714E2    push        eax
 006714E3    call        006721DC
 006714E8    pop         ecx
 006714E9    mov         eax,ebx
 006714EB    pop         edi
 006714EC    pop         esi
 006714ED    pop         ebx
 006714EE    mov         esp,ebp
 006714F0    pop         ebp
 006714F1    ret
end;*}

//00671508
{*function sub_00671508:?;
begin
 00671508    push        ebx
 00671509    push        esi
 0067150A    push        edi
 0067150B    call        006736AC
 00671510    xor         edi,edi
 00671512    mov         esi,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
 00671518    mov         ebx,6E583C;gvar_006E583C
>0067151D    jmp         00671536
 0067151F    test        byte ptr [ebx+12],3
>00671523    je          00671533
 00671525    cmp         dword ptr [ebx+8],0
>00671529    je          00671533
 0067152B    push        ebx
 0067152C    call        006718B8
 00671531    pop         ecx
 00671532    inc         edi
 00671533    add         ebx,18
 00671536    mov         eax,esi
 00671538    add         esi,0FFFFFFFF
 0067153B    test        eax,eax
>0067153D    jne         0067151F
 0067153F    call        006736BC
 00671544    mov         eax,edi
 00671546    pop         edi
 00671547    pop         esi
 00671548    pop         ebx
 00671549    ret
end;*}

//0067154C
{*function sub_0067154C(?:?; ?:?; ?:?):?;
begin
 0067154C    push        ebp
 0067154D    mov         ebp,esp
 0067154F    push        ecx
 00671550    mov         eax,dword ptr [ebp+8]
 00671553    cmp         eax,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>00671559    jb          00671566
 0067155B    push        6
 0067155D    call        006724FC
 00671562    pop         ecx
 00671563    pop         ecx
 00671564    pop         ebp
 00671565    ret
 00671566    push        0
 00671568    lea         edx,[ebp-4]
 0067156B    push        edx
 0067156C    mov         ecx,dword ptr [ebp+10]
 0067156F    push        ecx
 00671570    mov         edx,dword ptr [ebp+0C]
 00671573    push        edx
 00671574    mov         eax,dword ptr [eax*4+6EDF14];gvar_006EDF14
 0067157B    push        eax
 0067157C    call        KERNEL32.ReadFile
 00671581    dec         eax
>00671582    je          0067158C
 00671584    call        00672568
 00671589    pop         ecx
 0067158A    pop         ebp
 0067158B    ret
 0067158C    mov         eax,dword ptr [ebp-4]
 0067158F    pop         ecx
 00671590    pop         ebp
 00671591    ret
end;*}

//006715B0
{*function sub_006715B0(?:?; ?:?; ?:?):?;
begin
 006715B0    push        ebp
 006715B1    mov         ebp,esp
 006715B3    push        ecx
 006715B4    mov         eax,dword ptr [ebp+8]
 006715B7    cmp         eax,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>006715BD    jb          006715CA
 006715BF    push        6
 006715C1    call        006724FC
 006715C6    pop         ecx
 006715C7    pop         ecx
 006715C8    pop         ebp
 006715C9    ret
 006715CA    push        0
 006715CC    lea         edx,[ebp-4]
 006715CF    push        edx
 006715D0    mov         ecx,dword ptr [ebp+10]
 006715D3    push        ecx
 006715D4    mov         edx,dword ptr [ebp+0C]
 006715D7    push        edx
 006715D8    mov         eax,dword ptr [eax*4+6EDF14];gvar_006EDF14
 006715DF    push        eax
 006715E0    call        KERNEL32.WriteFile
 006715E5    dec         eax
>006715E6    je          006715F0
 006715E8    call        00672568
 006715ED    pop         ecx
 006715EE    pop         ebp
 006715EF    ret
 006715F0    mov         eax,dword ptr [ebp-4]
 006715F3    pop         ecx
 006715F4    pop         ebp
 006715F5    ret
end;*}

//00671614
{*function sub_00671614:?;
begin
>00671614    jmp         00670DEC
end;*}

//0067161C
{*function sub_0067161C(?:?; ?:?; ?:?; ?:?):?;
begin
 0067161C    push        ebp
 0067161D    mov         ebp,esp
 0067161F    push        ebx
 00671620    push        esi
 00671621    push        edi
 00671622    mov         ebx,dword ptr [ebp+8]
 00671625    mov         edi,dword ptr [ebp+14]
 00671628    mov         esi,dword ptr [ebp+0C]
 0067162B    test        byte ptr [ebx+12],4
>0067162F    je          0067163B
 00671631    mov         eax,dword ptr [ebx+4]
 00671634    push        eax
 00671635    call        0066F2D8
 0067163A    pop         ecx
 0067163B    and         word ptr [ebx+12],0FFF3
 00671641    xor         edx,edx
 00671643    mov         dword ptr [ebx+0C],edx
 00671646    lea         ecx,[ebx+14]
 00671649    mov         dword ptr [ebx+4],ecx
 0067164C    mov         dword ptr [ebx],ecx
 0067164E    cmp         dword ptr [ebp+10],2
>00671652    je          00671692
 00671654    test        edi,edi
>00671656    jbe         00671692
 00671658    mov         dword ptr ds:[6E71B0],674228
 00671662    test        esi,esi
>00671664    jne         0067167F
 00671666    push        edi
 00671667    call        0066F2C8
 0067166C    pop         ecx
 0067166D    mov         esi,eax
 0067166F    test        eax,eax
>00671671    je          0067167A
 00671673    or          word ptr [ebx+12],4
>00671678    jmp         0067167F
 0067167A    or          eax,0FFFFFFFF
>0067167D    jmp         00671694
 0067167F    mov         dword ptr [ebx],esi
 00671681    mov         dword ptr [ebx+4],esi
 00671684    mov         dword ptr [ebx+0C],edi
 00671687    cmp         dword ptr [ebp+10],1
>0067168B    jne         00671692
 0067168D    or          word ptr [ebx+12],8
 00671692    xor         eax,eax
 00671694    pop         edi
 00671695    pop         esi
 00671696    pop         ebx
 00671697    pop         ebp
 00671698    ret
end;*}

//0067169C
{*function sub_0067169C(?:?):?;
begin
 0067169C    push        ebp
 0067169D    mov         ebp,esp
 0067169F    add         esp,0FFFFFEF8
 006716A5    mov         eax,dword ptr [ebp+8]
 006716A8    push        eax
 006716A9    call        KERNEL32.SetCurrentDirectoryA
 006716AE    dec         eax
>006716AF    je          006716B8
 006716B1    call        00672568
>006716B6    jmp         00671727
 006716B8    lea         edx,[ebp-108]
 006716BE    push        edx
 006716BF    push        104
 006716C4    call        KERNEL32.GetCurrentDirectoryA
 006716C9    test        eax,eax
>006716CB    jne         006716D4
 006716CD    call        00672568
>006716D2    jmp         00671727
 006716D4    cmp         dword ptr ds:[6EE214],1;gvar_006EE214
>006716DB    je          00671725
 006716DD    movsx       ecx,byte ptr [ebp-108]
 006716E4    push        ecx
 006716E5    call        00678A70
 006716EA    pop         ecx
 006716EB    cmp         al,41
>006716ED    jl          00671725
 006716EF    cmp         al,5A
>006716F1    jg          00671725
 006716F3    cmp         byte ptr [ebp-107],3A
>006716FA    jne         00671725
 006716FC    mov         byte ptr [ebp-4],3D
 00671700    mov         byte ptr [ebp-3],al
 00671703    lea         eax,[ebp-108]
 00671709    mov         byte ptr [ebp-2],3A
 0067170D    mov         byte ptr [ebp-1],0
 00671711    push        eax
 00671712    lea         edx,[ebp-4]
 00671715    push        edx
 00671716    call        KERNEL32.SetEnvironmentVariableA
 0067171B    dec         eax
>0067171C    je          00671725
 0067171E    call        00672568
>00671723    jmp         00671727
 00671725    xor         eax,eax
 00671727    mov         esp,ebp
 00671729    pop         ebp
 0067172A    ret
end;*}

//0067172C
{*procedure sub_0067172C(?:?);
begin
 0067172C    push        ebp
 0067172D    mov         ebp,esp
 0067172F    add         esp,0FFFFFEFC
 00671735    lea         eax,[ebp-104]
 0067173B    push        eax
 0067173C    push        104
 00671741    call        KERNEL32.GetCurrentDirectoryA
 00671746    cmp         byte ptr [ebp-104],61
>0067174D    jl          0067175B
 0067174F    movsx       edx,byte ptr [ebp-104]
 00671756    add         edx,0FFFFFFA0
>00671759    jmp         00671765
 0067175B    movsx       edx,byte ptr [ebp-104]
 00671762    add         edx,0FFFFFFC0
 00671765    mov         eax,dword ptr [ebp+8]
 00671768    mov         dword ptr [eax],edx
 0067176A    mov         esp,ebp
 0067176C    pop         ebp
 0067176D    ret
end;*}

//00671770
{*procedure sub_00671770(?:?; ?:?);
begin
 00671770    push        ebp
 00671771    mov         ebp,esp
 00671773    add         esp,0FFFFFEF8
 00671779    xor         eax,eax
 0067177B    lea         ecx,[ebp-4]
 0067177E    push        ebx
 0067177F    push        esi
 00671780    push        edi
 00671781    mov         esi,dword ptr [ebp+0C]
 00671784    lea         edi,[ebp-108]
 0067178A    mov         dword ptr [esi],eax
 0067178C    mov         byte ptr [ebp-4],3D
 00671790    mov         dl,byte ptr [ebp+8]
 00671793    add         dl,40
 00671796    mov         byte ptr [ebp-3],dl
 00671799    mov         byte ptr [ebp-2],3A
 0067179D    mov         byte ptr [ebp-1],0
 006717A1    push        104
 006717A6    push        edi
 006717A7    push        ecx
 006717A8    call        KERNEL32.GetEnvironmentVariableA
 006717AD    test        eax,eax
>006717AF    jne         006717D6
 006717B1    mov         al,byte ptr [ebp-3]
 006717B4    mov         byte ptr [edi],al
 006717B6    mov         byte ptr [edi+1],3A
 006717BA    mov         byte ptr [edi+2],5C
 006717BE    mov         byte ptr [edi+3],0
 006717C2    push        edi
 006717C3    lea         edx,[ebp-4]
 006717C6    push        edx
 006717C7    call        KERNEL32.SetEnvironmentVariableA
 006717CC    dec         eax
>006717CD    je          006717D6
 006717CF    call        00672568
>006717D4    jmp         00671811
 006717D6    push        edi
 006717D7    call        KERNEL32.SetCurrentDirectoryA
 006717DC    dec         eax
>006717DD    je          006717E6
 006717DF    call        00672568
>006717E4    jmp         00671811
 006717E6    mov         byte ptr [edi+1],3A
 006717EA    mov         byte ptr [edi+2],5C
 006717EE    mov         byte ptr [edi+3],0
 006717F2    mov         byte ptr [edi],41
>006717F5    jmp         0067180C
 006717F7    push        edi
 006717F8    call        KERNEL32.GetDriveTypeA
 006717FD    mov         ebx,eax
 006717FF    test        eax,eax
>00671801    je          0067180A
 00671803    cmp         ebx,1
>00671806    je          0067180A
 00671808    inc         dword ptr [esi]
 0067180A    inc         byte ptr [edi]
 0067180C    cmp         byte ptr [edi],5A
>0067180F    jle         006717F7
 00671811    pop         edi
 00671812    pop         esi
 00671813    pop         ebx
 00671814    mov         esp,ebp
 00671816    pop         ebp
 00671817    ret
end;*}

//00671818
{*function sub_00671818(?:?; ?:?):?;
begin
 00671818    push        ebp
 00671819    mov         ebp,esp
 0067181B    push        ebx
 0067181C    push        esi
 0067181D    push        edi
 0067181E    mov         ebx,dword ptr [ebp+8]
 00671821    test        ebx,ebx
>00671823    je          0067182A
 00671825    cmp         bl,byte ptr [ebx+17]
>00671828    je          00671832
 0067182A    or          eax,0FFFFFFFF
>0067182D    jmp         006718B2
 00671832    push        ebx
 00671833    call        006736CC
 00671838    cmp         dword ptr [ebx+0C],0
 0067183C    pop         ecx
>0067183D    je          00671865
 0067183F    cmp         dword ptr [ebx+8],0
>00671843    jge         00671855
 00671845    push        ebx
 00671846    call        006718B8
 0067184B    pop         ecx
 0067184C    test        eax,eax
>0067184E    je          00671855
 00671850    or          esi,0FFFFFFFF
>00671853    jmp         006718A9
 00671855    test        byte ptr [ebx+12],4
>00671859    je          00671865
 0067185B    mov         eax,dword ptr [ebx+4]
 0067185E    push        eax
 0067185F    call        0066F2D8
 00671864    pop         ecx
 00671865    movsx       edx,byte ptr [ebx+16]
 00671869    push        edx
 0067186A    call        00670E2C
 0067186F    pop         ecx
 00671870    mov         esi,eax
 00671872    mov         word ptr [ebx+12],0
 00671878    xor         eax,eax
 0067187A    xor         edx,edx
 0067187C    mov         dword ptr [ebx+0C],eax
 0067187F    mov         dword ptr [ebx+8],edx
 00671882    mov         byte ptr [ebx+16],0FF
 00671886    mov         di,word ptr [ebx+10]
 0067188A    test        di,di
>0067188D    je          006718A9
 0067188F    push        edi
 00671890    push        0
 00671892    push        0
 00671894    call        0067282C
 00671899    add         esp,0C
 0067189C    push        eax
 0067189D    call        006737E8
 006718A2    pop         ecx
 006718A3    mov         word ptr [ebx+10],0
 006718A9    push        ebx
 006718AA    call        00673794
 006718AF    pop         ecx
 006718B0    mov         eax,esi
 006718B2    pop         edi
 006718B3    pop         esi
 006718B4    pop         ebx
 006718B5    pop         ebp
 006718B6    ret
end;*}

//006718B8
{*function sub_006718B8(?:?):?;
begin
 006718B8    push        ebp
 006718B9    mov         ebp,esp
 006718BB    push        ebx
 006718BC    push        esi
 006718BD    mov         ebx,dword ptr [ebp+8]
 006718C0    test        ebx,ebx
>006718C2    jne         006718CD
 006718C4    call        00671A84
 006718C9    xor         eax,eax
>006718CB    jmp         00671943
 006718CD    cmp         bl,byte ptr [ebx+17]
>006718D0    je          006718D7
 006718D2    or          eax,0FFFFFFFF
>006718D5    jmp         00671943
 006718D7    push        ebx
 006718D8    call        006736CC
 006718DD    cmp         dword ptr [ebx+8],0
 006718E1    pop         ecx
>006718E2    jl          00671906
 006718E4    test        byte ptr [ebx+12],8
>006718E8    jne         006718F1
 006718EA    lea         edx,[ebx+14]
 006718ED    cmp         edx,dword ptr [ebx]
>006718EF    jne         00671902
 006718F1    xor         ecx,ecx
 006718F3    mov         dword ptr [ebx+8],ecx
 006718F6    lea         eax,[ebx+14]
 006718F9    cmp         eax,dword ptr [ebx]
>006718FB    jne         00671902
 006718FD    mov         edx,dword ptr [ebx+4]
 00671900    mov         dword ptr [ebx],edx
 00671902    xor         esi,esi
>00671904    jmp         0067193A
 00671906    mov         esi,dword ptr [ebx+0C]
 00671909    add         esi,dword ptr [ebx+8]
 0067190C    inc         esi
 0067190D    sub         dword ptr [ebx+8],esi
 00671910    push        esi
 00671911    mov         eax,dword ptr [ebx+4]
 00671914    mov         dword ptr [ebx],eax
 00671916    push        eax
 00671917    movsx       edx,byte ptr [ebx+16]
 0067191B    push        edx
 0067191C    call        006713C0
 00671921    add         esp,0C
 00671924    cmp         esi,eax
>00671926    je          00671938
 00671928    test        byte ptr [ebx+13],2
>0067192C    jne         00671938
 0067192E    or          word ptr [ebx+12],10
 00671933    or          esi,0FFFFFFFF
>00671936    jmp         0067193A
 00671938    xor         esi,esi
 0067193A    push        ebx
 0067193B    call        00673794
 00671940    pop         ecx
 00671941    mov         eax,esi
 00671943    pop         esi
 00671944    pop         ebx
 00671945    pop         ebp
 00671946    ret
end;*}

//00671948
{*function sub_00671948(?:?; ?:?; ?:?):?;
begin
 00671948    push        ebp
 00671949    mov         ebp,esp
 0067194B    add         esp,0FFFFFFF8
 0067194E    push        ebx
 0067194F    push        esi
 00671950    push        edi
 00671951    mov         ebx,dword ptr [ebp+10]
 00671954    mov         esi,dword ptr [ebp+8]
 00671957    push        ebx
 00671958    call        006736CC
 0067195D    cmp         dword ptr [ebx+0C],0
 00671961    pop         ecx
>00671962    je          00671A23
 00671968    dec         dword ptr [ebp+0C]
 0067196B    cmp         dword ptr [ebp+0C],0
>0067196F    jle         00671A57
 00671975    mov         eax,dword ptr [ebx+8]
 00671978    test        eax,eax
>0067197A    jle         006719E7
 0067197C    cmp         eax,dword ptr [ebp+0C]
>0067197F    jae         00671986
 00671981    mov         dword ptr [ebp-4],eax
>00671984    jmp         0067198C
 00671986    mov         edx,dword ptr [ebp+0C]
 00671989    mov         dword ptr [ebp-4],edx
 0067198C    mov         ecx,dword ptr [ebp-4]
 0067198F    push        ecx
 00671990    push        0A
 00671992    mov         eax,dword ptr [ebx]
 00671994    push        eax
 00671995    call        0066F874
 0067199A    add         esp,0C
 0067199D    mov         dword ptr [ebp-8],eax
 006719A0    test        eax,eax
>006719A2    je          006719AD
 006719A4    mov         edx,dword ptr [ebp-8]
 006719A7    sub         edx,dword ptr [ebx]
 006719A9    inc         edx
 006719AA    mov         dword ptr [ebp-4],edx
 006719AD    mov         ecx,dword ptr [ebp-4]
 006719B0    push        ecx
 006719B1    mov         eax,dword ptr [ebx]
 006719B3    push        eax
 006719B4    push        esi
 006719B5    call        0066F894
 006719BA    add         esp,0C
 006719BD    mov         edx,dword ptr [ebp-4]
 006719C0    add         dword ptr [ebx],edx
 006719C2    mov         ecx,dword ptr [ebx+8]
 006719C5    sub         ecx,dword ptr [ebp-4]
 006719C8    mov         dword ptr [ebx+8],ecx
 006719CB    add         esi,dword ptr [ebp-4]
 006719CE    mov         eax,dword ptr [ebp-4]
 006719D1    sub         dword ptr [ebp+0C],eax
 006719D4    cmp         dword ptr [ebp-8],0
>006719D8    jne         006719E0
 006719DA    cmp         dword ptr [ebp+0C],0
>006719DE    jne         00671A17
 006719E0    mov         edi,0A
>006719E5    jmp         00671A57
 006719E7    dec         dword ptr [ebx+8]
>006719EA    js          006719F5
 006719EC    mov         eax,dword ptr [ebx]
 006719EE    inc         dword ptr [ebx]
 006719F0    movzx       edi,byte ptr [eax]
>006719F3    jmp         006719FE
 006719F5    push        ebx
 006719F6    call        0067261C
 006719FB    pop         ecx
 006719FC    mov         edi,eax
 006719FE    cmp         edi,0FFFFFFFF
>00671A01    jne         00671A0A
 00671A03    or          word ptr [ebx+12],20
>00671A08    jmp         00671A57
 00671A0A    mov         eax,edi
 00671A0C    mov         byte ptr [esi],al
 00671A0E    inc         esi
 00671A0F    dec         dword ptr [ebp+0C]
 00671A12    cmp         edi,0A
>00671A15    je          00671A57
 00671A17    cmp         dword ptr [ebp+0C],0
>00671A1B    jg          00671975
>00671A21    jmp         00671A57
 00671A23    xor         edi,edi
>00671A25    jmp         00671A2C
 00671A27    mov         eax,edi
 00671A29    mov         byte ptr [esi],al
 00671A2B    inc         esi
 00671A2C    cmp         edi,0A
>00671A2F    je          00671A57
 00671A31    dec         dword ptr [ebp+0C]
 00671A34    mov         edx,dword ptr [ebp+0C]
 00671A37    test        edx,edx
>00671A39    jle         00671A57
 00671A3B    dec         dword ptr [ebx+8]
>00671A3E    js          00671A49
 00671A40    mov         ecx,dword ptr [ebx]
 00671A42    inc         dword ptr [ebx]
 00671A44    movzx       edi,byte ptr [ecx]
>00671A47    jmp         00671A52
 00671A49    push        ebx
 00671A4A    call        0067261C
 00671A4F    pop         ecx
 00671A50    mov         edi,eax
 00671A52    cmp         edi,0FFFFFFFF
>00671A55    jne         00671A27
 00671A57    inc         edi
>00671A58    jne         00671A63
 00671A5A    cmp         esi,dword ptr [ebp+8]
>00671A5D    jne         00671A63
 00671A5F    xor         esi,esi
>00671A61    jmp         00671A73
 00671A63    mov         byte ptr [esi],0
 00671A66    test        byte ptr [ebx+12],10
>00671A6A    je          00671A70
 00671A6C    xor         esi,esi
>00671A6E    jmp         00671A73
 00671A70    mov         esi,dword ptr [ebp+8]
 00671A73    push        ebx
 00671A74    call        00673794
 00671A79    pop         ecx
 00671A7A    mov         eax,esi
 00671A7C    pop         edi
 00671A7D    pop         esi
 00671A7E    pop         ebx
 00671A7F    pop         ecx
 00671A80    pop         ecx
 00671A81    pop         ebp
 00671A82    ret
end;*}

//00671A84
{*function sub_00671A84:?;
begin
 00671A84    push        ebx
 00671A85    push        esi
 00671A86    push        edi
 00671A87    push        ebp
 00671A88    call        006736AC
 00671A8D    xor         ebp,ebp
 00671A8F    mov         edi,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
 00671A95    mov         ebx,6E583C;gvar_006E583C
>00671A9A    jmp         00671AD3
 00671A9C    mov         eax,dword ptr [ebx+8]
 00671A9F    test        eax,eax
>00671AA1    jge         00671AD0
 00671AA3    mov         esi,dword ptr [ebx+0C]
 00671AA6    add         esi,eax
 00671AA8    inc         esi
 00671AA9    sub         dword ptr [ebx+8],esi
 00671AAC    push        esi
 00671AAD    mov         eax,dword ptr [ebx+4]
 00671AB0    mov         dword ptr [ebx],eax
 00671AB2    push        eax
 00671AB3    movsx       edx,byte ptr [ebx+16]
 00671AB7    push        edx
 00671AB8    call        006713C0
 00671ABD    add         esp,0C
 00671AC0    cmp         esi,eax
>00671AC2    je          00671ACF
 00671AC4    test        byte ptr [ebx+13],2
>00671AC8    jne         00671ACF
 00671ACA    or          word ptr [ebx+12],10
 00671ACF    inc         ebp
 00671AD0    add         ebx,18
 00671AD3    mov         ecx,edi
 00671AD5    add         edi,0FFFFFFFF
 00671AD8    test        ecx,ecx
>00671ADA    jne         00671A9C
 00671ADC    call        006736BC
 00671AE1    mov         eax,ebp
 00671AE3    pop         ebp
 00671AE4    pop         edi
 00671AE5    pop         esi
 00671AE6    pop         ebx
 00671AE7    ret
end;*}

//00671AE8
{*procedure sub_00671AE8(?:?);
begin
 00671AE8    push        ebp
 00671AE9    mov         ebp,esp
 00671AEB    mov         eax,dword ptr [ebp+8]
 00671AEE    mov         [006E5DBC],eax;^gvar_006E5DB8
 00671AF3    pop         ebp
 00671AF4    ret
end;*}

//00671AF8
{*procedure sub_00671AF8(?:?);
begin
 00671AF8    push        ebp
 00671AF9    mov         ebp,esp
 00671AFB    mov         eax,dword ptr [ebp+8]
 00671AFE    test        eax,eax
>00671B00    je          00671B09
 00671B02    mov         eax,dword ptr [eax]
 00671B04    mov         [006E5838],eax;gvar_006E5838
 00671B09    pop         ebp
 00671B0A    ret
end;*}

//00671B0C
{*function sub_00671B0C(?:?; ?:?; ?:?):?;
begin
 00671B0C    push        ebp
 00671B0D    mov         ebp,esp
 00671B0F    push        ecx
 00671B10    push        esi
 00671B11    mov         ecx,dword ptr [ebp+8]
 00671B14    xor         eax,eax
 00671B16    mov         dword ptr [ebp-4],eax
 00671B19    mov         al,byte ptr [ecx]
 00671B1B    inc         ecx
 00671B1C    cmp         al,72
>00671B1E    jne         00671B29
 00671B20    xor         edx,edx
 00671B22    mov         esi,1
>00671B27    jmp         00671B5E
 00671B29    cmp         al,77
>00671B2B    jne         00671B40
 00671B2D    mov         edx,301
 00671B32    mov         dword ptr [ebp-4],80
 00671B39    mov         esi,2
>00671B3E    jmp         00671B5E
 00671B40    cmp         al,61
>00671B42    jne         00671B57
 00671B44    mov         edx,901
 00671B49    mov         dword ptr [ebp-4],80
 00671B50    mov         esi,2
>00671B55    jmp         00671B5E
 00671B57    xor         eax,eax
>00671B59    jmp         00671BE1
 00671B5E    mov         al,byte ptr [ecx]
 00671B60    inc         ecx
 00671B61    cmp         al,2B
>00671B63    je          00671B72
 00671B65    cmp         byte ptr [ecx],2B
>00671B68    jne         00671B8A
 00671B6A    cmp         al,74
>00671B6C    je          00671B72
 00671B6E    cmp         al,62
>00671B70    jne         00671B8A
 00671B72    cmp         al,2B
>00671B74    jne         00671B78
 00671B76    mov         al,byte ptr [ecx]
 00671B78    and         edx,0FFFFFFFE
 00671B7B    mov         esi,3
 00671B80    mov         dword ptr [ebp-4],180
 00671B87    or          edx,2
 00671B8A    cmp         al,74
>00671B8C    jne         00671B96
 00671B8E    or          edx,4000
>00671B94    jmp         00671BC8
 00671B96    cmp         al,62
>00671B98    jne         00671BA5
 00671B9A    or          edx,8000
 00671BA0    or          esi,40
>00671BA3    jmp         00671BC8
 00671BA5    cmp         al,2B
>00671BA7    je          00671BB1
 00671BA9    test        al,al
>00671BAB    je          00671BB1
 00671BAD    xor         eax,eax
>00671BAF    jmp         00671BE1
 00671BB1    mov         ecx,dword ptr ds:[6E5DBC];^gvar_006E5DB8
 00671BB7    mov         eax,dword ptr [ecx]
 00671BB9    and         eax,0C000
 00671BBE    or          edx,eax
 00671BC0    test        dh,80
>00671BC3    je          00671BC8
 00671BC5    or          esi,40
 00671BC8    mov         dword ptr ds:[6E71B4],6741F0
 00671BD2    mov         ecx,dword ptr [ebp+0C]
 00671BD5    mov         dword ptr [ecx],edx
 00671BD7    mov         edx,dword ptr [ebp+10]
 00671BDA    mov         eax,dword ptr [ebp-4]
 00671BDD    mov         dword ptr [edx],eax
 00671BDF    mov         eax,esi
 00671BE1    pop         esi
 00671BE2    pop         ecx
 00671BE3    pop         ebp
 00671BE4    ret
end;*}

//00671BE8
{*function sub_00671BE8(?:?; ?:?; ?:?; ?:?):?;
begin
 00671BE8    push        ebp
 00671BE9    mov         ebp,esp
 00671BEB    add         esp,0FFFFFFF8
 00671BEE    push        ebx
 00671BEF    mov         ebx,dword ptr [ebp+8]
 00671BF2    lea         eax,[ebp-8]
 00671BF5    push        eax
 00671BF6    lea         edx,[ebp-4]
 00671BF9    push        edx
 00671BFA    mov         ecx,dword ptr [ebp+10]
 00671BFD    push        ecx
 00671BFE    call        00671B0C
 00671C03    add         esp,0C
 00671C06    mov         word ptr [ebx+12],ax
 00671C0A    test        ax,ax
>00671C0D    je          00671C33
 00671C0F    cmp         byte ptr [ebx+16],0
>00671C13    jge         00671C41
 00671C15    mov         edx,dword ptr [ebp-8]
 00671C18    push        edx
 00671C19    mov         ecx,dword ptr [ebp-4]
 00671C1C    or          ecx,dword ptr [ebp+14]
 00671C1F    push        ecx
 00671C20    mov         eax,dword ptr [ebp+0C]
 00671C23    push        eax
 00671C24    call        00671008
 00671C29    add         esp,0C
 00671C2C    mov         byte ptr [ebx+16],al
 00671C2F    test        al,al
>00671C31    jge         00671C41
 00671C33    mov         byte ptr [ebx+16],0FF
 00671C37    mov         word ptr [ebx+12],0
 00671C3D    xor         eax,eax
>00671C3F    jmp         00671C8C
 00671C41    movsx       edx,byte ptr [ebx+16]
 00671C45    test        byte ptr [edx*4+6E5CF1],20
>00671C4D    je          00671C55
 00671C4F    or          word ptr [ebx+12],200
 00671C55    push        200
 00671C5A    test        byte ptr [ebx+13],2
>00671C5E    je          00671C67
 00671C60    mov         ecx,1
>00671C65    jmp         00671C69
 00671C67    xor         ecx,ecx
 00671C69    push        ecx
 00671C6A    push        0
 00671C6C    push        ebx
 00671C6D    call        0067332C
 00671C72    add         esp,10
 00671C75    test        eax,eax
>00671C77    je          00671C84
 00671C79    push        ebx
 00671C7A    call        00671818
 00671C7F    pop         ecx
 00671C80    xor         eax,eax
>00671C82    jmp         00671C8C
 00671C84    mov         word ptr [ebx+10],0
 00671C8A    mov         eax,ebx
 00671C8C    pop         ebx
 00671C8D    pop         ecx
 00671C8E    pop         ecx
 00671C8F    pop         ebp
 00671C90    ret
end;*}

//00671C94
{*function sub_00671C94:?;
begin
 00671C94    mov         eax,6E583C;gvar_006E583C
>00671C99    jmp         00671CB7
 00671C9B    mov         edx,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
 00671CA1    shl         edx,3
 00671CA4    lea         edx,[edx+edx*2]
 00671CA7    add         edx,6E583C;gvar_006E583C
 00671CAD    cmp         eax,edx
>00671CAF    jb          00671CB4
 00671CB1    xor         eax,eax
 00671CB3    ret
 00671CB4    add         eax,18
 00671CB7    cmp         byte ptr [eax+16],0
>00671CBB    jge         00671C9B
 00671CBD    ret
end;*}

//00671CC0
{*function sub_00671CC0(?:?; ?:?):?;
begin
 00671CC0    push        ebp
 00671CC1    mov         ebp,esp
 00671CC3    push        ebx
 00671CC4    call        006736AC
 00671CC9    call        00671C94
 00671CCE    mov         ebx,eax
 00671CD0    test        eax,eax
>00671CD2    je          00671CE9
 00671CD4    push        0
 00671CD6    mov         edx,dword ptr [ebp+0C]
 00671CD9    push        edx
 00671CDA    mov         ecx,dword ptr [ebp+8]
 00671CDD    push        ecx
 00671CDE    push        ebx
 00671CDF    call        00671BE8
 00671CE4    add         esp,10
 00671CE7    mov         ebx,eax
 00671CE9    call        006736BC
 00671CEE    mov         eax,ebx
 00671CF0    pop         ebx
 00671CF1    pop         ebp
 00671CF2    ret
end;*}

//00671CF4
{*function sub_00671CF4(?:?; ?:?; ?:?):?;
begin
 00671CF4    push        ebp
 00671CF5    mov         ebp,esp
 00671CF7    push        ebx
 00671CF8    push        esi
 00671CF9    mov         ebx,dword ptr [ebp+8]
 00671CFC    lea         esi,[ebp+10]
 00671CFF    push        ebx
 00671D00    call        006736CC
 00671D05    pop         ecx
 00671D06    push        esi
 00671D07    push        0
 00671D09    push        0
 00671D0B    mov         eax,dword ptr [ebp+0C]
 00671D0E    push        eax
 00671D0F    push        ebx
 00671D10    push        671D2C
 00671D15    call        006738B4
 00671D1A    add         esp,18
 00671D1D    mov         esi,eax
 00671D1F    push        ebx
 00671D20    call        00673794
 00671D25    pop         ecx
 00671D26    mov         eax,esi
 00671D28    pop         esi
 00671D29    pop         ebx
 00671D2A    pop         ebp
 00671D2B    ret
end;*}

//00671E08
{*function sub_00671E08(?:?; ?:?; ?:?):?;
begin
 00671E08    push        ebp
 00671E09    mov         ebp,esp
 00671E0B    add         esp,0FFFFFFF8
 00671E0E    push        ebx
 00671E0F    push        esi
 00671E10    push        edi
 00671E11    mov         ebx,dword ptr [ebp+10]
 00671E14    mov         esi,dword ptr [ebp+0C]
 00671E17    mov         eax,dword ptr [ebp+8]
 00671E1A    mov         dword ptr [ebp-8],eax
 00671E1D    cmp         dword ptr [ebx+0C],0
>00671E21    je          00671F03
 00671E27    test        esi,esi
>00671E29    je          00671F2E
 00671E2F    mov         eax,dword ptr [ebx+8]
 00671E32    test        eax,eax
>00671E34    je          00671E65
 00671E36    cmp         eax,esi
>00671E38    jae         00671E3E
 00671E3A    mov         edi,eax
>00671E3C    jmp         00671E40
 00671E3E    mov         edi,esi
 00671E40    push        edi
 00671E41    mov         eax,dword ptr [ebx]
 00671E43    push        eax
 00671E44    mov         edx,dword ptr [ebp-8]
 00671E47    push        edx
 00671E48    call        0066F894
 00671E4D    add         esp,0C
 00671E50    add         dword ptr [ebx],edi
 00671E52    sub         dword ptr [ebx+8],edi
 00671E55    cmp         esi,edi
>00671E57    jne         00671E60
 00671E59    xor         eax,eax
>00671E5B    jmp         00671F30
 00671E60    add         dword ptr [ebp-8],edi
 00671E63    sub         esi,edi
 00671E65    mov         ecx,dword ptr [ebx+0C]
 00671E68    cmp         esi,ecx
>00671E6A    jb          00671ECB
 00671E6C    mov         eax,esi
 00671E6E    xor         edx,edx
 00671E70    div         eax,ecx
 00671E72    mov         edi,esi
 00671E74    sub         edi,edx
 00671E76    push        edi
 00671E77    mov         eax,dword ptr [ebp-8]
 00671E7A    push        eax
 00671E7B    movsx       edx,byte ptr [ebx+16]
 00671E7F    push        edx
 00671E80    call        00671278
 00671E85    add         esp,0C
 00671E88    mov         dword ptr [ebp-4],eax
 00671E8B    cmp         esi,eax
>00671E8D    jne         00671E96
 00671E8F    xor         eax,eax
>00671E91    jmp         00671F30
 00671E96    cmp         dword ptr [ebp-4],0FFFFFFFF
>00671E9A    jne         00671EA6
 00671E9C    or          word ptr [ebx+12],10
>00671EA1    jmp         00671F2E
 00671EA6    mov         edx,dword ptr [ebp-4]
 00671EA9    add         dword ptr [ebp-8],edx
 00671EAC    sub         esi,dword ptr [ebp-4]
 00671EAF    cmp         edi,dword ptr [ebp-4]
>00671EB2    je          00671ECB
 00671EB4    test        byte ptr [ebx+12],40
>00671EB8    jne         00671EC4
 00671EBA    cmp         dword ptr [ebp-4],0
>00671EBE    jne         00671E27
 00671EC4    or          word ptr [ebx+12],20
>00671EC9    jmp         00671F2E
 00671ECB    push        ebx
 00671ECC    call        00672634
 00671ED1    pop         ecx
 00671ED2    mov         dword ptr [ebp-4],eax
 00671ED5    inc         eax
>00671ED6    je          00671EE6
 00671ED8    mov         dl,byte ptr [ebp-4]
 00671EDB    mov         ecx,dword ptr [ebp-8]
 00671EDE    mov         byte ptr [ecx],dl
 00671EE0    inc         dword ptr [ebp-8]
 00671EE3    dec         esi
>00671EE4    jmp         00671EED
 00671EE6    or          word ptr [ebx+12],20
>00671EEB    jmp         00671F2E
 00671EED    test        esi,esi
>00671EEF    jne         00671E2F
>00671EF5    jmp         00671F2E
 00671EF7    mov         al,byte ptr [ebp-4]
 00671EFA    mov         edx,dword ptr [ebp-8]
 00671EFD    mov         byte ptr [edx],al
 00671EFF    inc         dword ptr [ebp-8]
 00671F02    dec         esi
 00671F03    test        esi,esi
>00671F05    je          00671F23
 00671F07    dec         dword ptr [ebx+8]
>00671F0A    js          00671F16
 00671F0C    mov         ecx,dword ptr [ebx]
 00671F0E    inc         dword ptr [ebx]
 00671F10    xor         eax,eax
 00671F12    mov         al,byte ptr [ecx]
>00671F14    jmp         00671F1D
 00671F16    push        ebx
 00671F17    call        0067261C
 00671F1C    pop         ecx
 00671F1D    mov         dword ptr [ebp-4],eax
 00671F20    inc         eax
>00671F21    jne         00671EF7
 00671F23    cmp         dword ptr [ebp-4],0FFFFFFFF
>00671F27    jne         00671F2E
 00671F29    or          word ptr [ebx+12],20
 00671F2E    mov         eax,esi
 00671F30    pop         edi
 00671F31    pop         esi
 00671F32    pop         ebx
 00671F33    pop         ecx
 00671F34    pop         ecx
 00671F35    pop         ebp
 00671F36    ret
end;*}

//00671F38
{*function sub_00671F38(?:?; ?:?; ?:?; ?:?):?;
begin
 00671F38    push        ebp
 00671F39    mov         ebp,esp
 00671F3B    push        ebx
 00671F3C    push        esi
 00671F3D    push        edi
 00671F3E    mov         edi,dword ptr [ebp+14]
 00671F41    mov         esi,dword ptr [ebp+0C]
 00671F44    test        esi,esi
>00671F46    jne         00671F4C
 00671F48    xor         eax,eax
>00671F4A    jmp         00671F76
 00671F4C    mov         ebx,esi
 00671F4E    imul        ebx,dword ptr [ebp+10]
 00671F52    push        edi
 00671F53    call        006736CC
 00671F58    pop         ecx
 00671F59    push        edi
 00671F5A    push        ebx
 00671F5B    mov         eax,dword ptr [ebp+8]
 00671F5E    push        eax
 00671F5F    call        00671E08
 00671F64    add         esp,0C
 00671F67    sub         ebx,eax
 00671F69    push        edi
 00671F6A    call        00673794
 00671F6F    mov         eax,ebx
 00671F71    xor         edx,edx
 00671F73    div         eax,esi
 00671F75    pop         ecx
 00671F76    pop         edi
 00671F77    pop         esi
 00671F78    pop         ebx
 00671F79    pop         ebp
 00671F7A    ret
end;*}

//00671F7C
{*function sub_00671F7C(?:?):?;
begin
 00671F7C    push        ebp
 00671F7D    mov         ebp,esp
 00671F7F    push        ebx
 00671F80    mov         ebx,dword ptr [ebp+8]
 00671F83    mov         edx,dword ptr [ebx+8]
 00671F86    test        edx,edx
>00671F88    jge         00671F94
 00671F8A    mov         eax,dword ptr [ebx+0C]
 00671F8D    add         eax,edx
 00671F8F    inc         eax
 00671F90    mov         ecx,eax
>00671F92    jmp         00671F98
 00671F94    mov         eax,edx
 00671F96    mov         ecx,edx
 00671F98    test        byte ptr [ebx+12],40
>00671F9C    je          00671FA3
 00671F9E    mov         eax,ecx
 00671FA0    pop         ebx
 00671FA1    pop         ebp
 00671FA2    ret
 00671FA3    cmp         dword ptr [ebx+8],0
 00671FA7    mov         edx,dword ptr [ebx]
>00671FA9    jge         00671FC8
>00671FAB    jmp         00671FB4
 00671FAD    dec         edx
 00671FAE    cmp         byte ptr [edx],0A
>00671FB1    jne         00671FB4
 00671FB3    inc         ecx
 00671FB4    mov         ebx,eax
 00671FB6    add         eax,0FFFFFFFF
 00671FB9    test        ebx,ebx
>00671FBB    jne         00671FAD
>00671FBD    jmp         00671FD1
 00671FBF    mov         bl,byte ptr [edx]
 00671FC1    inc         edx
 00671FC2    cmp         bl,0A
>00671FC5    jne         00671FC8
 00671FC7    inc         ecx
 00671FC8    mov         ebx,eax
 00671FCA    add         eax,0FFFFFFFF
 00671FCD    test        ebx,ebx
>00671FCF    jne         00671FBF
 00671FD1    mov         eax,ecx
 00671FD3    pop         ebx
 00671FD4    pop         ebp
 00671FD5    ret
end;*}

//00671FD8
{*function sub_00671FD8(?:?; ?:?; ?:?):?;
begin
 00671FD8    push        ebp
 00671FD9    mov         ebp,esp
 00671FDB    push        ebx
 00671FDC    push        esi
 00671FDD    push        edi
 00671FDE    mov         esi,dword ptr [ebp+10]
 00671FE1    mov         edi,dword ptr [ebp+0C]
 00671FE4    mov         ebx,dword ptr [ebp+8]
 00671FE7    push        ebx
 00671FE8    call        006718B8
 00671FED    pop         ecx
 00671FEE    test        eax,eax
>00671FF0    je          00671FF7
 00671FF2    or          eax,0FFFFFFFF
>00671FF5    jmp         00672046
 00671FF7    push        ebx
 00671FF8    call        006736CC
 00671FFD    pop         ecx
 00671FFE    cmp         esi,1
>00672001    jne         00672012
 00672003    cmp         dword ptr [ebx+8],0
>00672007    jle         00672012
 00672009    push        ebx
 0067200A    call        00671F7C
 0067200F    pop         ecx
 00672010    sub         edi,eax
 00672012    and         word ptr [ebx+12],0FE5F
 00672018    xor         edx,edx
 0067201A    mov         dword ptr [ebx+8],edx
 0067201D    mov         ecx,dword ptr [ebx+4]
 00672020    mov         dword ptr [ebx],ecx
 00672022    push        esi
 00672023    push        edi
 00672024    movsx       eax,byte ptr [ebx+16]
 00672028    push        eax
 00672029    call        00670F84
 0067202E    add         esp,0C
 00672031    inc         eax
>00672032    jne         00672039
 00672034    or          edx,0FFFFFFFF
>00672037    jmp         0067203B
 00672039    xor         edx,edx
 0067203B    mov         esi,edx
 0067203D    push        ebx
 0067203E    call        00673794
 00672043    pop         ecx
 00672044    mov         eax,esi
 00672046    pop         edi
 00672047    pop         esi
 00672048    pop         ebx
 00672049    pop         ebp
 0067204A    ret
end;*}

//0067204C
{*function sub_0067204C(?:?):?;
begin
 0067204C    push        ebp
 0067204D    mov         ebp,esp
 0067204F    push        ebx
 00672050    push        esi
 00672051    push        edi
 00672052    mov         ebx,dword ptr [ebp+8]
 00672055    push        ebx
 00672056    call        006736CC
 0067205B    pop         ecx
 0067205C    push        1
 0067205E    push        0
 00672060    movsx       eax,byte ptr [ebx+16]
 00672064    push        eax
 00672065    call        00670F84
 0067206A    add         esp,0C
 0067206D    mov         esi,eax
 0067206F    inc         eax
>00672070    je          006720CA
 00672072    cmp         dword ptr [ebx+8],0
>00672076    jge         006720C1
 00672078    movsx       edx,byte ptr [ebx+16]
 0067207C    test        byte ptr [edx*4+6E5CF1],8
>00672084    je          006720B6
 00672086    mov         edi,esi
 00672088    push        2
 0067208A    push        0
 0067208C    movsx       eax,byte ptr [ebx+16]
 00672090    push        eax
 00672091    call        00670F84
 00672096    add         esp,0C
 00672099    mov         esi,eax
 0067209B    inc         eax
>0067209C    je          006720CA
 0067209E    push        0
 006720A0    push        edi
 006720A1    movsx       edx,byte ptr [ebx+16]
 006720A5    push        edx
 006720A6    call        00670F84
 006720AB    add         esp,0C
 006720AE    inc         eax
>006720AF    jne         006720B6
 006720B1    or          esi,0FFFFFFFF
>006720B4    jmp         006720CA
 006720B6    push        ebx
 006720B7    call        00671F7C
 006720BC    pop         ecx
 006720BD    add         esi,eax
>006720BF    jmp         006720CA
 006720C1    push        ebx
 006720C2    call        00671F7C
 006720C7    pop         ecx
 006720C8    sub         esi,eax
 006720CA    push        ebx
 006720CB    call        00673794
 006720D0    pop         ecx
 006720D1    mov         eax,esi
 006720D3    pop         edi
 006720D4    pop         esi
 006720D5    pop         ebx
 006720D6    pop         ebp
 006720D7    ret
end;*}

//006720E8
{*function sub_006720E8(?:?):?;
begin
 006720E8    push        ebp
 006720E9    mov         ebp,esp
 006720EB    push        ecx
 006720EC    lea         eax,[ebp-4]
 006720EF    push        eax
 006720F0    mov         edx,dword ptr [ebp+8]
 006720F3    inc         edx
 006720F4    push        edx
 006720F5    call        00671770
 006720FA    add         esp,8
 006720FD    mov         eax,dword ptr [ebp-4]
 00672100    pop         ecx
 00672101    pop         ebp
 00672102    ret
end;*}

//00672104
procedure sub_00672104;
begin
{*
 00672104    mov         eax,[006EDFDC];0x0 gvar_006EDFDC
 00672109    push        eax
 0067210A    call        0067A0F8
 0067210F    pop         ecx
 00672110    ret
*}
end;

//00672114
procedure sub_00672114;
begin
{*
 00672114    mov         eax,[006EDFE0];0x0 gvar_006EDFE0
 00672119    test        eax,eax
>0067211B    je          0067212C
 0067211D    push        eax
 0067211E    call        0066F2D8
 00672123    pop         ecx
 00672124    xor         edx,edx
 00672126    mov         dword ptr ds:[6EDFE0],edx;gvar_006EDFE0
 0067212C    mov         dword ptr ds:[6E5DC0],1;gvar_006E5DC0
 00672136    ret
*}
end;

//00672138
procedure sub_00672138;
begin
{*
 00672138    mov         eax,[006EDFDC];0x0 gvar_006EDFDC
 0067213D    push        eax
 0067213E    call        0067A108
 00672143    pop         ecx
 00672144    ret
*}
end;

//00672148
{*procedure sub_00672148(?:?);
begin
 00672148    push        ebp
 00672149    mov         ebp,esp
 0067214B    push        ebx
 0067214C    push        esi
 0067214D    mov         ebx,dword ptr [ebp+8]
 00672150    mov         eax,[006EDFE0];0x0 gvar_006EDFE0
 00672155    test        eax,eax
>00672157    je          0067215F
 00672159    cmp         dword ptr [eax+ebx*4],0
>0067215D    jne         006721C8
 0067215F    call        00672104
 00672164    cmp         dword ptr ds:[6EDFE0],0;gvar_006EDFE0
>0067216B    jne         006721A3
 0067216D    mov         esi,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
 00672173    shl         esi,2
 00672176    push        esi
 00672177    call        0066F2C8
 0067217C    pop         ecx
 0067217D    mov         [006EDFE0],eax;gvar_006EDFE0
 00672182    test        eax,eax
>00672184    jne         00672191
 00672186    push        6E5DC4
 0067218B    call        0067A118
 00672190    pop         ecx
 00672191    push        esi
 00672192    push        0
 00672194    mov         edx,dword ptr ds:[6EDFE0];0x0 gvar_006EDFE0
 0067219A    push        edx
 0067219B    call        0066F904
 006721A0    add         esp,0C
 006721A3    mov         eax,[006EDFE0];0x0 gvar_006EDFE0
 006721A8    cmp         dword ptr [eax+ebx*4],0
>006721AC    jne         006721C3
 006721AE    push        6E5DE1
 006721B3    mov         edx,ebx
 006721B5    shl         edx,2
 006721B8    add         edx,eax
 006721BA    push        edx
 006721BB    call        0067A094
 006721C0    add         esp,8
 006721C3    call        00672138
 006721C8    mov         ecx,dword ptr ds:[6EDFE0];0x0 gvar_006EDFE0
 006721CE    mov         eax,dword ptr [ecx+ebx*4]
 006721D1    push        eax
 006721D2    call        0067A0F8
 006721D7    pop         ecx
 006721D8    pop         esi
 006721D9    pop         ebx
 006721DA    pop         ebp
 006721DB    ret
end;*}

//006721DC
{*procedure sub_006721DC(?:?);
begin
 006721DC    push        ebp
 006721DD    mov         ebp,esp
 006721DF    cmp         dword ptr ds:[6EDFE0],0;gvar_006EDFE0
>006721E6    jne         006721FF
 006721E8    push        0DC
 006721ED    push        6E5DFD
 006721F2    push        6E5DF6
 006721F7    call        00678AD8
 006721FC    add         esp,0C
 006721FF    mov         eax,[006EDFE0];0x0 gvar_006EDFE0
 00672204    mov         edx,dword ptr [ebp+8]
 00672207    mov         ecx,dword ptr [eax+edx*4]
 0067220A    push        ecx
 0067220B    call        0067A108
 00672210    pop         ecx
 00672211    cmp         dword ptr ds:[6E5DC0],0;gvar_006E5DC0
>00672218    je          0067221F
 0067221A    call        00672114
 0067221F    pop         ebp
 00672220    ret
end;*}

//00672224
{*function sub_00672224(?:?; ?:?):?;
begin
 00672224    push        ebp
 00672225    mov         ebp,esp
 00672227    xor         eax,eax
 00672229    mov         edx,6E5CF0;gvar_006E5CF0
>0067222E    jmp         00672239
 00672230    cmp         dword ptr [edx],0
>00672233    je          00672241
 00672235    inc         eax
 00672236    add         edx,4
 00672239    cmp         eax,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>0067223F    jl          00672230
 00672241    cmp         eax,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>00672247    jne         0067224E
 00672249    or          eax,0FFFFFFFF
 0067224C    pop         ebp
 0067224D    ret
 0067224E    mov         edx,dword ptr [ebp+0C]
 00672251    mov         dword ptr [eax*4+6E5CF0],edx;gvar_006E5CF0
 00672258    mov         ecx,dword ptr [ebp+8]
 0067225B    mov         dword ptr [eax*4+6EDF14],ecx;gvar_006EDF14
 00672262    pop         ebp
 00672263    ret
end;*}

end.