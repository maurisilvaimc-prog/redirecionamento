//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit114;

interface

uses
  SysUtils, Classes;

    procedure sub_006789EC;//006789EC
    //function sub_006789FC(?:?):?;//006789FC
    //function sub_00678A18(?:?; ?:?):?;//00678A18
    //function sub_00678A70(?:?):?;//00678A70
    //procedure sub_00678A90(?:?; ?:?; ?:?);//00678A90
    //procedure sub_00678AD8(?:?; ?:?; ?:?);//00678AD8
    //function sub_00678B38:?;//00678B38
    //procedure sub_00678B88(?:?; ?:?);//00678B88
    //function sub_00678BF0:?;//00678BF0
    //function sub_00678C24:?;//00678C24
    //function sub_00678C68(?:?):?;//00678C68
    //procedure sub_00678D94(?:?);//00678D94

implementation

//006789EC
procedure sub_006789EC;
begin
{*
 006789EC    call        KERNEL32.GetACP
 006789F1    push        eax
 006789F2    call        006788C0
 006789F7    pop         ecx
 006789F8    ret
*}
end;

//006789FC
{*function sub_006789FC(?:?):?;
begin
 006789FC    push        ebp
 006789FD    mov         ebp,esp
 006789FF    mov         eax,dword ptr [ebp+8]
 00678A02    cmp         eax,0FF
>00678A07    jbe         00678A0D
 00678A09    xor         eax,eax
 00678A0B    pop         ebp
 00678A0C    ret
 00678A0D    push        eax
 00678A0E    call        00674660
 00678A13    pop         ecx
 00678A14    pop         ebp
 00678A15    ret
end;*}

//00678A18
{*function sub_00678A18(?:?; ?:?):?;
begin
 00678A18    push        ebp
 00678A19    mov         ebp,esp
 00678A1B    push        ebx
 00678A1C    push        esi
 00678A1D    mov         ecx,dword ptr [ebp+0C]
 00678A20    mov         eax,dword ptr [ebp+8]
 00678A23    xor         edx,edx
 00678A25    xor         ebx,ebx
 00678A27    mov         bl,byte ptr [eax]
 00678A29    test        byte ptr [ebx+6EDFF1],4
>00678A30    je          00678A57
 00678A32    cmp         byte ptr [eax+1],0
>00678A36    jne         00678A41
 00678A38    inc         eax
 00678A39    test        ecx,ecx
>00678A3B    jne         00678A68
 00678A3D    mov         edx,eax
>00678A3F    jmp         00678A68
 00678A41    xor         ebx,ebx
 00678A43    mov         bl,byte ptr [eax]
 00678A45    shl         ebx,8
 00678A48    movzx       esi,byte ptr [eax+1]
 00678A4C    or          ebx,esi
 00678A4E    cmp         ecx,ebx
>00678A50    jne         00678A54
 00678A52    mov         edx,eax
 00678A54    inc         eax
>00678A55    jmp         00678A61
 00678A57    xor         ebx,ebx
 00678A59    mov         bl,byte ptr [eax]
 00678A5B    cmp         ecx,ebx
>00678A5D    jne         00678A61
 00678A5F    mov         edx,eax
 00678A61    mov         bl,byte ptr [eax]
 00678A63    inc         eax
 00678A64    test        bl,bl
>00678A66    jne         00678A25
 00678A68    mov         eax,edx
 00678A6A    pop         esi
 00678A6B    pop         ebx
 00678A6C    pop         ebp
 00678A6D    ret
end;*}

//00678A70
{*function sub_00678A70(?:?):?;
begin
 00678A70    push        ebp
 00678A71    mov         ebp,esp
 00678A73    push        ebx
 00678A74    mov         ebx,dword ptr [ebp+8]
 00678A77    cmp         ebx,0FF
>00678A7D    ja          00678A88
 00678A7F    push        ebx
 00678A80    call        0067636C
 00678A85    pop         ecx
 00678A86    mov         ebx,eax
 00678A88    mov         eax,ebx
 00678A8A    pop         ebx
 00678A8B    pop         ebp
 00678A8C    ret
end;*}

//00678A90
{*procedure sub_00678A90(?:?; ?:?; ?:?);
begin
 00678A90    push        ebp
 00678A91    mov         ebp,esp
 00678A93    push        ecx
 00678A94    push        ebx
 00678A95    push        esi
 00678A96    push        edi
 00678A97    mov         ebx,dword ptr [ebp+8]
 00678A9A    mov         byte ptr [ebx],0
 00678A9D    lea         eax,[ebp+10]
 00678AA0    mov         dword ptr [ebp-4],eax
>00678AA3    jmp         00678AC1
 00678AA5    push        ebx
 00678AA6    call        0066FAB4
 00678AAB    pop         ecx
 00678AAC    mov         edi,dword ptr [ebp+0C]
 00678AAF    sub         edi,eax
 00678AB1    dec         edi
 00678AB2    test        edi,edi
>00678AB4    jle         00678ACF
 00678AB6    push        edi
 00678AB7    push        esi
 00678AB8    push        ebx
 00678AB9    call        0066FB10
 00678ABE    add         esp,0C
 00678AC1    add         dword ptr [ebp-4],4
 00678AC5    mov         eax,dword ptr [ebp-4]
 00678AC8    mov         esi,dword ptr [eax-4]
 00678ACB    test        esi,esi
>00678ACD    jne         00678AA5
 00678ACF    pop         edi
 00678AD0    pop         esi
 00678AD1    pop         ebx
 00678AD2    pop         ecx
 00678AD3    pop         ebp
 00678AD4    ret
end;*}

//00678AD8
{*procedure sub_00678AD8(?:?; ?:?; ?:?);
begin
 00678AD8    push        ebp
 00678AD9    mov         ebp,esp
 00678ADB    push        0
 00678ADD    push        6E7127
 00678AE2    mov         eax,dword ptr [ebp+0C]
 00678AE5    push        eax
 00678AE6    push        6E711F
 00678AEB    mov         edx,dword ptr [ebp+8]
 00678AEE    push        edx
 00678AEF    push        6E710C
 00678AF4    push        0F6
 00678AF9    push        6EE0F8
 00678AFE    call        00678A90
 00678B03    add         esp,20
 00678B06    push        6EE0F8
 00678B0B    call        0066FAB4
 00678B10    pop         ecx
 00678B11    add         eax,6EE0F8
 00678B17    push        eax
 00678B18    mov         ecx,dword ptr [ebp+10]
 00678B1B    push        ecx
 00678B1C    call        00677138
 00678B21    add         esp,8
 00678B24    push        6EE0F8
 00678B29    call        00678C68
 00678B2E    pop         ecx
 00678B2F    call        00678E4C
 00678B34    pop         ebp
 00678B35    ret
end;*}

//00678B38
{*function sub_00678B38:?;
begin
 00678B38    add         esp,0FFFFFFF0
 00678B3B    push        esp
 00678B3C    call        KERNEL32.GetLocalTime
 00678B41    movzx       eax,word ptr [esp+0E]
 00678B46    push        eax
 00678B47    movzx       edx,word ptr [esp+10]
 00678B4C    push        edx
 00678B4D    movzx       ecx,word ptr [esp+12]
 00678B52    push        ecx
 00678B53    movzx       eax,word ptr [esp+14]
 00678B58    push        eax
 00678B59    movzx       edx,word ptr [esp+10]
 00678B5E    push        edx
 00678B5F    movzx       ecx,word ptr [esp+1A]
 00678B64    push        ecx
 00678B65    movzx       eax,word ptr [esp+1A]
 00678B6A    push        eax
 00678B6B    push        6E7130;'%02d/%02d/%04d %02d:%02d:%02d.%03d '
 00678B70    push        6EE1F8;'
 00678B75    call        USER32.wsprintfA
 00678B7A    add         esp,24
 00678B7D    mov         eax,6EE1F8;'
 00678B82    add         esp,10
 00678B85    ret
end;*}

//00678B88
{*procedure sub_00678B88(?:?; ?:?);
begin
 00678B88    push        ebp
 00678B89    mov         ebp,esp
 00678B8B    push        ecx
 00678B8C    push        ebx
 00678B8D    push        esi
 00678B8E    push        edi
 00678B8F    mov         edi,dword ptr [ebp+0C]
 00678B92    push        0
 00678B94    push        80
 00678B99    push        2
 00678B9B    push        0
 00678B9D    push        0
 00678B9F    push        0C0000000
 00678BA4    mov         eax,dword ptr [ebp+8]
 00678BA7    push        eax
 00678BA8    call        KERNEL32.CreateFileA
 00678BAD    mov         ebx,eax
 00678BAF    test        eax,eax
>00678BB1    je          00678BEA
 00678BB3    call        00678B38
 00678BB8    mov         esi,eax
 00678BBA    lea         eax,[ebp-4]
 00678BBD    push        0
 00678BBF    push        eax
 00678BC0    push        esi
 00678BC1    call        0066FAB4
 00678BC6    pop         ecx
 00678BC7    push        eax
 00678BC8    push        esi
 00678BC9    push        ebx
 00678BCA    call        KERNEL32.WriteFile
 00678BCF    push        0
 00678BD1    lea         edx,[ebp-4]
 00678BD4    push        edx
 00678BD5    push        edi
 00678BD6    call        0066FAB4
 00678BDB    pop         ecx
 00678BDC    push        eax
 00678BDD    push        edi
 00678BDE    push        ebx
 00678BDF    call        KERNEL32.WriteFile
 00678BE4    push        ebx
 00678BE5    call        KERNEL32.CloseHandle
 00678BEA    pop         edi
 00678BEB    pop         esi
 00678BEC    pop         ebx
 00678BED    pop         ecx
 00678BEE    pop         ebp
 00678BEF    ret
end;*}

//00678BF0
{*function sub_00678BF0:?;
begin
 00678BF0    push        ebx
 00678BF1    push        esi
 00678BF2    call        KERNEL32.GetLastError
 00678BF7    mov         esi,eax
 00678BF9    call        00679ECC
 00678BFE    mov         ebx,eax
 00678C00    push        esi
 00678C01    add         ebx,0C
 00678C04    call        KERNEL32.SetLastError
 00678C09    mov         eax,ebx
 00678C0B    pop         esi
 00678C0C    pop         ebx
 00678C0D    ret
end;*}

//00678C24
{*function sub_00678C24:?;
begin
 00678C24    push        ecx
 00678C25    xor         eax,eax
 00678C27    mov         dword ptr [esp],eax
 00678C2A    call        KERNEL32.GetVersion
 00678C2F    shr         eax,10
 00678C32    movzx       edx,ax
 00678C35    test        dh,80
>00678C38    jne         00678C41
 00678C3A    mov         eax,2000
 00678C3F    pop         edx
 00678C40    ret
 00678C41    mov         edx,esp
 00678C43    push        edx
 00678C44    push        678C10
 00678C49    call        KERNEL32.GetCurrentThreadId
 00678C4E    push        eax
 00678C4F    call        USER32.EnumThreadWindows
 00678C54    cmp         dword ptr [esp],0
>00678C58    je          00678C61
 00678C5A    mov         eax,2000
>00678C5F    jmp         00678C66
 00678C61    mov         eax,1000
 00678C66    pop         edx
 00678C67    ret
end;*}

//00678C68
{*function sub_00678C68(?:?):?;
begin
 00678C68    push        ebp
 00678C69    mov         ebp,esp
 00678C6B    add         esp,0FFFFFF7C
 00678C71    cmp         dword ptr ds:[6E7158],0;gvar_006E7158
 00678C78    push        ebx
 00678C79    push        esi
 00678C7A    mov         esi,dword ptr [ebp+8]
>00678C7D    jne         00678D42
 00678C83    cmp         dword ptr ds:[6E7154],0;gvar_006E7154
>00678C8A    jne         00678D42
 00678C90    cmp         dword ptr ds:[6E7360],0;gvar_006E7360
>00678C97    je          00678CFC
 00678C99    push        80
 00678C9E    lea         eax,[ebp-84]
 00678CA4    push        eax
 00678CA5    push        0
 00678CA7    call        KERNEL32.GetModuleFileNameA
 00678CAC    push        5C
 00678CAE    lea         edx,[ebp-84]
 00678CB4    push        edx
 00678CB5    call        00678A18
 00678CBA    add         esp,8
 00678CBD    mov         ebx,eax
 00678CBF    test        eax,eax
>00678CC1    jne         00678CE2
 00678CC3    push        3A
 00678CC5    lea         edx,[ebp-84]
 00678CCB    push        edx
 00678CCC    call        00678A18
 00678CD1    add         esp,8
 00678CD4    mov         ebx,eax
 00678CD6    test        eax,eax
>00678CD8    jne         00678CE2
 00678CDA    lea         ebx,[ebp-84]
>00678CE0    jmp         00678CE3
 00678CE2    inc         ebx
 00678CE3    call        00678C24
 00678CE8    or          eax,10010
 00678CED    push        eax
 00678CEE    push        ebx
 00678CEF    push        esi
 00678CF0    push        0
 00678CF2    call        USER32.MessageBoxA
>00678CF7    jmp         00678D7D
 00678CFC    push        0F4
 00678CFE    call        KERNEL32.GetStdHandle
 00678D03    mov         ebx,eax
 00678D05    lea         eax,[ebp-4]
 00678D08    push        0
 00678D0A    push        eax
 00678D0B    push        2
 00678D0D    push        6E715C
 00678D12    push        ebx
 00678D13    call        KERNEL32.WriteFile
 00678D18    push        0
 00678D1A    lea         edx,[ebp-4]
 00678D1D    push        edx
 00678D1E    push        esi
 00678D1F    call        0066FAB4
 00678D24    pop         ecx
 00678D25    push        eax
 00678D26    push        esi
 00678D27    push        ebx
 00678D28    call        KERNEL32.WriteFile
 00678D2D    push        0
 00678D2F    lea         ecx,[ebp-4]
 00678D32    push        ecx
 00678D33    push        2
 00678D35    push        6E715F
 00678D3A    push        ebx
 00678D3B    call        KERNEL32.WriteFile
>00678D40    jmp         00678D7D
 00678D42    cmp         dword ptr ds:[6E7154],0;gvar_006E7154
>00678D49    je          00678D5C
 00678D4B    cmp         dword ptr ds:[6E7154],0FFFFFFFF;gvar_006E7154
>00678D52    je          00678D7D
 00678D54    push        esi
 00678D55    call        dword ptr ds:[6E7154]
 00678D5B    pop         ecx
 00678D5C    mov         eax,[006E7158];0x0 gvar_006E7158
 00678D61    test        eax,eax
>00678D63    je          00678D7D
 00678D65    cmp         dword ptr ds:[6E7158],0FFFFFFFF;gvar_006E7158
>00678D6C    je          00678D7D
 00678D6E    cmp         byte ptr [eax],0
>00678D71    je          00678D7D
 00678D73    push        esi
 00678D74    push        eax
 00678D75    call        00678B88
 00678D7A    add         esp,8
 00678D7D    pop         esi
 00678D7E    pop         ebx
 00678D7F    mov         esp,ebp
 00678D81    pop         ebp
 00678D82    ret
end;*}

//00678D94
{*procedure sub_00678D94(?:?);
begin
 00678D94    push        ebp
 00678D95    mov         ebp,esp
 00678D97    mov         eax,dword ptr [ebp+8]
 00678D9A    push        eax
 00678D9B    call        00678C68
 00678DA0    pop         ecx
 00678DA1    push        1
 00678DA3    call        00678EE4
 00678DA8    pop         ecx
 00678DA9    pop         ebp
 00678DAA    ret
end;*}

end.