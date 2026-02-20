//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit96;

interface

uses
  SysUtils, Classes;

    procedure sub_0065F274;//0065F274
    //function sub_0065F27C(?:Exception):?;//0065F27C

implementation

//0065F274
procedure sub_0065F274;
begin
{*
 0065F274    sub         dword ptr ds:[6ED134],1
 0065F27B    ret
*}
end;

//0065F27C
{*function sub_0065F27C(?:Exception):?;
begin
 0065F27C    push        ebp
 0065F27D    mov         ebp,esp
 0065F27F    add         esp,0FFFFFFF8
 0065F282    mov         dword ptr [ebp-4],eax
 0065F285    mov         eax,dword ptr [ebp-4]
 0065F288    mov         edx,dword ptr ds:[656DCC];EConvertError
 0065F28E    call        @IsClass
 0065F293    test        al,al
>0065F295    je          0065F2A3
 0065F297    mov         dword ptr [ebp-8],80020005
>0065F29E    jmp         0065F331
 0065F2A3    mov         eax,dword ptr [ebp-4]
 0065F2A6    mov         edx,dword ptr ds:[656C64];EOverflow
 0065F2AC    call        @IsClass
 0065F2B1    test        al,al
>0065F2B3    je          0065F2BE
 0065F2B5    mov         dword ptr [ebp-8],8002000A
>0065F2BC    jmp         0065F331
 0065F2BE    mov         eax,dword ptr [ebp-4]
 0065F2C1    mov         edx,dword ptr ds:[656CBC];EUnderflow
 0065F2C7    call        @IsClass
 0065F2CC    test        al,al
>0065F2CE    je          0065F2D9
 0065F2D0    mov         dword ptr [ebp-8],8002000A
>0065F2D7    jmp         0065F331
 0065F2D9    mov         eax,dword ptr [ebp-4]
 0065F2DC    mov         edx,dword ptr ds:[656AA8];ERangeError
 0065F2E2    call        @IsClass
 0065F2E7    test        al,al
>0065F2E9    je          0065F2F4
 0065F2EB    mov         dword ptr [ebp-8],8002000A
>0065F2F2    jmp         0065F331
 0065F2F4    mov         eax,dword ptr [ebp-4]
 0065F2F7    mov         edx,dword ptr ds:[656B00];EIntOverflow
 0065F2FD    call        @IsClass
 0065F302    test        al,al
>0065F304    je          0065F30F
 0065F306    mov         dword ptr [ebp-8],8002000A
>0065F30D    jmp         0065F331
 0065F30F    mov         eax,dword ptr [ebp-4]
 0065F312    mov         edx,dword ptr ds:[65688C];EOutOfMemory
 0065F318    call        @IsClass
 0065F31D    test        al,al
>0065F31F    je          0065F32A
 0065F321    mov         dword ptr [ebp-8],8007000E
>0065F328    jmp         0065F331
 0065F32A    mov         dword ptr [ebp-8],80070057
 0065F331    mov         eax,dword ptr [ebp-8]
 0065F334    pop         ecx
 0065F335    pop         ecx
 0065F336    pop         ebp
 0065F337    ret
end;*}

end.