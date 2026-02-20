//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit117;

interface

uses
  SysUtils, Classes;

    procedure sub_00679504;//00679504
    //function sub_006795A0:?;//006795A0

implementation

//00679504
procedure sub_00679504;
begin
{*
 00679504    push        ebx
 00679505    push        100
 0067950A    call        0066F2C8
 0067950F    pop         ecx
 00679510    mov         ebx,eax
 00679512    mov         dword ptr ds:[6E7274],ebx;gvar_006E7274
 00679518    test        ebx,ebx
>0067951A    jne         00679527
 0067951C    push        6E7278
 00679521    call        00678D94
 00679526    pop         ecx
 00679527    push        0FF
 0067952C    mov         eax,[006E7274];0x0 gvar_006E7274
 00679531    push        eax
 00679532    push        0
 00679534    call        KERNEL32.GetModuleFileNameA
 00679539    pop         ebx
 0067953A    ret
*}
end;

//006795A0
{*function sub_006795A0:?;
begin
 006795A0    push        ebx
 006795A1    push        esi
 006795A2    push        edi
 006795A3    push        ebp
 006795A4    push        ecx
 006795A5    cmp         dword ptr ds:[6EE22C],0;gvar_006EE22C
>006795AC    jne         00679621
 006795AE    cmp         dword ptr ds:[6EE24C],0;gvar_006EE24C:PChar
>006795B5    jne         006795D0
 006795B7    call        KERNEL32.GetEnvironmentStrings
 006795BC    mov         [006EE24C],eax;gvar_006EE24C:PChar
 006795C1    test        eax,eax
>006795C3    jne         006795D0
 006795C5    push        6E7298
 006795CA    call        00678D94
 006795CF    pop         ecx
 006795D0    xor         ebp,ebp
 006795D2    xor         esi,esi
 006795D4    mov         ebx,dword ptr ds:[6EE24C];0x0 gvar_006EE24C:PChar
>006795DA    jmp         006795E4
 006795DC    lea         eax,[edi+1]
 006795DF    inc         esi
 006795E0    add         ebp,eax
 006795E2    add         ebx,eax
 006795E4    push        ebx
 006795E5    call        0066FAB4
 006795EA    pop         ecx
 006795EB    mov         edi,eax
 006795ED    test        eax,eax
>006795EF    jne         006795DC
 006795F1    lea         edi,[ebp+1]
 006795F4    push        edi
 006795F5    call        0066F2C8
 006795FA    pop         ecx
 006795FB    mov         ebx,eax
 006795FD    mov         dword ptr ds:[6EE230],ebx;gvar_006EE230
 00679603    test        ebx,ebx
>00679605    jne         0067960E
 00679607    xor         eax,eax
>00679609    jmp         006796E4
 0067960E    push        edi
 0067960F    mov         edx,dword ptr ds:[6EE24C];0x0 gvar_006EE24C:PChar
 00679615    push        edx
 00679616    push        ebx
 00679617    call        0066F894
 0067961C    add         esp,0C
>0067961F    jmp         00679641
 00679621    xor         esi,esi
 00679623    mov         ebx,dword ptr ds:[6EE22C];0x0 gvar_006EE22C
>00679629    jmp         0067963B
 0067962B    push        eax
 0067962C    call        0066FAB4
 00679631    pop         ecx
 00679632    test        eax,eax
>00679634    jne         00679637
 00679636    dec         esi
 00679637    inc         esi
 00679638    add         ebx,4
 0067963B    mov         eax,dword ptr [ebx]
 0067963D    test        eax,eax
>0067963F    jne         0067962B
 00679641    lea         ebx,[esi+4]
 00679644    push        4
 00679646    mov         dword ptr ds:[6EE234],ebx;gvar_006EE234
 0067964C    inc         ebx
 0067964D    push        ebx
 0067964E    call        0066EA84
 00679653    add         esp,8
 00679656    test        eax,eax
 00679658    mov         dword ptr [esp],eax
>0067965B    jne         00679664
 0067965D    xor         eax,eax
>0067965F    jmp         006796E4
 00679664    cmp         dword ptr ds:[6EE22C],0;gvar_006EE22C
>0067966B    jne         00679695
 0067966D    xor         esi,esi
 0067966F    mov         ebx,dword ptr ds:[6EE230];0x0 gvar_006EE230
 00679675    mov         eax,dword ptr [esp]
 00679678    mov         ebp,eax
>0067967A    jmp         00679686
 0067967C    mov         dword ptr [ebp],ebx
 0067967F    add         ebp,4
 00679682    inc         esi
 00679683    inc         edi
 00679684    add         ebx,edi
 00679686    push        ebx
 00679687    call        0066FAB4
 0067968C    pop         ecx
 0067968D    mov         edi,eax
 0067968F    test        eax,eax
>00679691    jne         0067967C
>00679693    jmp         006796C6
 00679695    xor         esi,esi
 00679697    mov         ebx,dword ptr ds:[6EE22C];0x0 gvar_006EE22C
 0067969D    mov         eax,dword ptr [esp]
 006796A0    mov         edi,eax
>006796A2    jmp         006796C0
 006796A4    push        eax
 006796A5    call        0066FAB4
 006796AA    pop         ecx
 006796AB    test        eax,eax
>006796AD    je          006796B5
 006796AF    mov         eax,dword ptr [ebx]
 006796B1    mov         dword ptr [edi],eax
>006796B3    jmp         006796B9
 006796B5    dec         esi
 006796B6    add         edi,0FFFFFFFC
 006796B9    add         edi,4
 006796BC    inc         esi
 006796BD    add         ebx,4
 006796C0    mov         eax,dword ptr [ebx]
 006796C2    test        eax,eax
>006796C4    jne         006796A4
 006796C6    mov         eax,[006EE22C];0x0 gvar_006EE22C
 006796CB    test        eax,eax
>006796CD    je          006796D6
 006796CF    push        eax
 006796D0    call        0066F2D8
 006796D5    pop         ecx
 006796D6    mov         edx,dword ptr [esp]
 006796D9    mov         eax,1
 006796DE    mov         dword ptr ds:[6EE22C],edx;gvar_006EE22C
 006796E4    pop         edx
 006796E5    pop         ebp
 006796E6    pop         edi
 006796E7    pop         esi
 006796E8    pop         ebx
 006796E9    ret
end;*}

end.