//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit110;

interface

uses
  SysUtils, Classes;

    procedure sub_0067757C;//0067757C
    //function sub_00677594(?:?; ?:?; ?:?):?;//00677594

implementation

//0067757C
procedure sub_0067757C;
begin
{*
 0067757C    mov         dword ptr ds:[6E6E88],6772DC
 00677586    mov         dword ptr ds:[6E6E8C],677564
 00677590    ret
*}
end;

//00677594
{*function sub_00677594(?:?; ?:?; ?:?):?;
begin
 00677594    push        ebp
 00677595    mov         ebp,esp
 00677597    push        ebx
 00677598    push        esi
 00677599    push        edi
 0067759A    mov         ebx,dword ptr [ebp+10]
 0067759D    mov         esi,dword ptr [ebp+0C]
 006775A0    mov         edi,dword ptr [ebp+8]
 006775A3    push        0E
 006775A5    call        00674548
 006775AA    pop         ecx
 006775AB    cmp         di,47
>006775AF    je          006775C4
 006775B1    cmp         di,67
>006775B5    jne         006775CB
>006775B7    jmp         006775C4
 006775B9    sub         ebx,2
 006775BC    cmp         esi,ebx
>006775BE    jb          006775C4
 006775C0    mov         eax,esi
>006775C2    jmp         006775D9
 006775C4    cmp         word ptr [ebx-2],30
>006775C9    je          006775B9
 006775CB    mov         dx,word ptr [eax]
 006775CE    cmp         dx,word ptr [ebx-2]
>006775D2    jne         006775D7
 006775D4    sub         ebx,2
 006775D7    mov         eax,ebx
 006775D9    pop         edi
 006775DA    pop         esi
 006775DB    pop         ebx
 006775DC    pop         ebp
 006775DD    ret
end;*}

end.