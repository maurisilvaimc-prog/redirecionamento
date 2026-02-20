//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit1;

interface

uses
  SysUtils, Classes;

    procedure sub_004015AC;//004015AC
    __GetExceptDLLinfo; stdcall;//00401605
    function @GetTls:Pointer;//004016EC
    procedure sub_004016FC;//004016FC
    procedure sub_00401708;//00401708
    //procedure sub_0040172C(?:?; ?:?; ?:?; ?:?);//0040172C
    procedure sub_004017C8;//004017C8

implementation

//004015AC
procedure sub_004015AC;
begin
{*
>004015AC    jmp         004015BE
*}
end;

//004016EC
function @GetTls:Pointer;
begin
{*
 004016EC    mov         eax,[0069408B]
 004016F1    mov         edx,dword ptr fs:[002C]
 004016F7    mov         eax,dword ptr [edx+eax*4]
 004016FA    ret
*}
end;

//004016FC
procedure sub_004016FC;
begin
{*
 004016FC    mov         eax,6940A8
 00401701    call        RegisterModule
 00401706    ret
*}
end;

//00401708
procedure sub_00401708;
begin
{*
 00401708    mov         eax,6940A8
 0040170D    call        UnregisterModule
 00401712    mov         eax,[006940B8];0x0 gvar_006940B8
 00401717    cmp         eax,dword ptr ds:[6940AC];0x0 gvar_006940AC
>0040171D    je          00401729
 0040171F    test        eax,eax
>00401721    je          00401729
 00401723    push        eax
 00401724    call        KERNEL32.FreeLibrary
 00401729    ret
*}
end;

//0040172C
{*procedure sub_0040172C(?:?; ?:?; ?:?; ?:?);
begin
 0040172C    push        ebp
 0040172D    mov         ebp,esp
 0040172F    mov         eax,dword ptr [ebp+10]
 00401732    mov         edx,dword ptr [ebp+8]
 00401735    cmp         byte ptr [ebp+0C],0
>00401739    je          0040174B
 0040173B    mov         byte ptr ds:[6EA384],1;gvar_006EA384
 00401742    mov         byte ptr ds:[6EA385],1;gvar_006EA385
>00401749    jmp         00401760
 0040174B    mov         ecx,dword ptr ds:[6EA2D4];^gvar_006ED2FC
 00401751    mov         byte ptr [ecx],dl
 00401753    mov         byte ptr ds:[6EA384],dl;gvar_006EA384
 00401759    mov         byte ptr ds:[6EA385],0;gvar_006EA385
 00401760    mov         [006EA390],eax;gvar_006EA390
 00401765    mov         [006940AC],eax;gvar_006940AC
 0040176A    xor         eax,eax
 0040176C    mov         [006940B0],eax;gvar_006940B0:Cardinal
 00401771    xor         eax,eax
 00401773    mov         [006940B4],eax;gvar_006940B4:Cardinal
 00401778    mov         byte ptr ds:[6EA386],1;gvar_006EA386
 0040177F    call        004016FC
 00401784    cmp         byte ptr ds:[6EA384],0;gvar_006EA384
>0040178B    jne         004017C5
 0040178D    mov         eax,40172C;sub_0040172C
 00401792    call        FindHInstance
 00401797    mov         [006940B0],eax;gvar_006940B0:Cardinal
 0040179C    mov         eax,6940A4
 004017A1    call        FindHInstance
 004017A6    mov         [006940B4],eax;gvar_006940B4:Cardinal
 004017AB    call        KERNEL32.GetCommandLineA
 004017B0    mov         edx,dword ptr ds:[6EA2DC];^gvar_006ED304
 004017B6    mov         dword ptr [edx],eax
 004017B8    mov         al,byte ptr [ebp+14]
 004017BB    xor         al,1
 004017BD    mov         edx,dword ptr ds:[6EA2E8];^IsConsole:Boolean
 004017C3    mov         byte ptr [edx],al
 004017C5    pop         ebp
 004017C6    ret
end;*}

//004017C8
procedure sub_004017C8;
begin
{*
 004017C8    push        ebx
 004017C9    push        esi
 004017CA    mov         ebx,dword ptr ds:[6EA2E4];^ExitProc:Pointer
 004017D0    cmp         byte ptr ds:[6EA384],0;gvar_006EA384
>004017D7    jne         004017EF
 004017D9    cmp         dword ptr [ebx],0
>004017DC    je          004017EF
 004017DE    mov         edx,dword ptr [ebx]
 004017E0    mov         eax,edx
 004017E2    xor         edx,edx
 004017E4    mov         dword ptr [ebx],edx
 004017E6    mov         esi,eax
 004017E8    call        esi
 004017EA    cmp         dword ptr [ebx],0
>004017ED    jne         004017DE
 004017EF    call        00401708
 004017F4    pop         esi
 004017F5    pop         ebx
 004017F6    ret
*}
end;

end.