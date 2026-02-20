//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit81;

interface

uses
  SysUtils, Classes;

    procedure sub_00640EA0;//00640EA0
    //function sub_00640ED0(?:TEditMask; ?:Integer):?;//00640ED0
    //function sub_00641070(?:TEditMask; ?:?):?;//00641070
    //function sub_0064111C(?:?):?;//0064111C
    //procedure sub_00641150(?:TEditMask; ?:AnsiString; ?:?; ?:?);//00641150
    //function sub_006413B0(?:?):?;//006413B0
    //function sub_0064146C(?:?):?;//0064146C
    //procedure sub_006414EC(?:TEditMask; ?:Integer; ?:?);//006414EC
    //function sub_00641590(?:TEditMask; ?:Integer):?;//00641590
    //function sub_006415EC(?:TEditMask; ?:?):?;//006415EC
    //function sub_0064166C(?:TEditMask; ?:?):?;//0064166C
    //procedure sub_006416B4(?:TEditMask; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//006416B4
    //procedure sub_00641874(?:TEditMask; ?:AnsiString; ?:?; ?:?);//00641874

implementation

//00640EA0
procedure sub_00640EA0;
begin
{*
 00640EA0    push        ebp
 00640EA1    mov         ebp,esp
 00640EA3    sub         dword ptr ds:[6ECF84],1
 00640EAA    pop         ebp
 00640EAB    ret
*}
end;

//00640ED0
{*function sub_00640ED0(?:TEditMask; ?:Integer):?;
begin
 00640ED0    push        ebp
 00640ED1    mov         ebp,esp
 00640ED3    add         esp,0FFFFFFF4
 00640ED6    mov         dword ptr [ebp-8],edx
 00640ED9    mov         dword ptr [ebp-4],eax
 00640EDC    mov         byte ptr [ebp-9],1
 00640EE0    mov         byte ptr [ebp-0A],0
 00640EE4    mov         eax,dword ptr [ebp-4]
 00640EE7    call        @LStrLen
 00640EEC    cmp         eax,dword ptr [ebp-8]
>00640EEF    jl          00640EFE
 00640EF1    mov         eax,dword ptr [ebp-8]
 00640EF4    mov         edx,dword ptr [ebp-4]
 00640EF7    mov         al,byte ptr [edx+eax-1]
 00640EFB    mov         byte ptr [ebp-0A],al
 00640EFE    mov         eax,dword ptr [ebp-4]
 00640F01    call        @LStrLen
 00640F06    cmp         eax,dword ptr [ebp-8]
>00640F09    jge         00640F14
 00640F0B    mov         byte ptr [ebp-9],0
>00640F0F    jmp         00641066
 00640F14    mov         edx,dword ptr [ebp-8]
 00640F17    mov         eax,dword ptr [ebp-4]
 00640F1A    call        0065CF98
 00640F1F    test        al,al
>00640F21    je          00640F2C
 00640F23    mov         byte ptr [ebp-9],1
>00640F27    jmp         00641066
 00640F2C    cmp         dword ptr [ebp-8],1
>00640F30    jle         00640F7D
 00640F32    mov         eax,dword ptr [ebp-8]
 00640F35    mov         edx,dword ptr [ebp-4]
 00640F38    cmp         byte ptr [edx+eax-2],5C
>00640F3D    jne         00640F7D
 00640F3F    mov         edx,dword ptr [ebp-8]
 00640F42    dec         edx
 00640F43    mov         eax,dword ptr [ebp-4]
 00640F46    call        0065CF98
 00640F4B    test        al,al
>00640F4D    jne         00640F7D
 00640F4F    cmp         dword ptr [ebp-8],2
>00640F53    jle         00640F74
 00640F55    mov         eax,dword ptr [ebp-8]
 00640F58    mov         edx,dword ptr [ebp-4]
 00640F5B    cmp         byte ptr [edx+eax-3],5C
>00640F60    jne         00640F74
 00640F62    mov         edx,dword ptr [ebp-8]
 00640F65    sub         edx,2
 00640F68    mov         eax,dword ptr [ebp-4]
 00640F6B    call        0065CF98
 00640F70    test        al,al
>00640F72    je          00640F7D
 00640F74    mov         byte ptr [ebp-9],1
>00640F78    jmp         00641066
 00640F7D    mov         al,byte ptr [ebp-0A]
 00640F80    cmp         al,byte ptr ds:[6E47F8];0x3B gvar_006E47F8
>00640F86    jne         00640FAE
 00640F88    mov         eax,dword ptr [ebp-4]
 00640F8B    call        @LStrLen
 00640F90    cmp         eax,4
>00640F93    jl          00640FAE
 00640F95    mov         eax,dword ptr [ebp-4]
 00640F98    call        @LStrLen
 00640F9D    sub         eax,4
 00640FA0    cmp         eax,dword ptr [ebp-8]
>00640FA3    jge         00640FAE
 00640FA5    mov         byte ptr [ebp-9],6
>00640FA9    jmp         00641066
 00640FAE    mov         eax,dword ptr [ebp-4]
 00640FB1    call        @LStrLen
 00640FB6    cmp         eax,4
>00640FB9    jl          00641008
 00640FBB    mov         eax,dword ptr [ebp-4]
 00640FBE    call        @LStrLen
 00640FC3    sub         eax,4
 00640FC6    cmp         eax,dword ptr [ebp-8]
>00640FC9    jge         00641008
 00640FCB    mov         eax,dword ptr [ebp-8]
 00640FCE    mov         edx,dword ptr [ebp-4]
 00640FD1    mov         al,byte ptr [edx+eax-2]
 00640FD5    cmp         al,byte ptr ds:[6E47F8];0x3B gvar_006E47F8
>00640FDB    jne         00641008
 00640FDD    cmp         dword ptr [ebp-8],2
>00640FE1    jle         00641002
 00640FE3    mov         eax,dword ptr [ebp-8]
 00640FE6    mov         edx,dword ptr [ebp-4]
 00640FE9    cmp         byte ptr [edx+eax-3],5C
>00640FEE    jne         00641002
 00640FF0    mov         edx,dword ptr [ebp-8]
 00640FF3    sub         edx,2
 00640FF6    mov         eax,dword ptr [ebp-4]
 00640FF9    call        0065CF98
 00640FFE    cmp         al,2
>00641000    jne         00641008
 00641002    mov         byte ptr [ebp-9],7
>00641006    jmp         00641066
 00641008    mov         al,byte ptr [ebp-0A]
 0064100B    sub         al,2F
>0064100D    je          00641013
 0064100F    sub         al,0B
>00641011    jne         00641019
 00641013    mov         byte ptr [ebp-9],2
>00641017    jmp         00641066
 00641019    mov         al,byte ptr [ebp-0A]
 0064101C    sub         al,21
>0064101E    je          0064102C
 00641020    sub         al,1B
>00641022    je          0064102C
 00641024    sub         al,2
>00641026    je          0064102C
 00641028    sub         al,1E
>0064102A    jne         00641032
 0064102C    mov         byte ptr [ebp-9],3
>00641030    jmp         00641066
 00641032    mov         al,byte ptr [ebp-0A]
 00641035    sub         al,23
>00641037    je          00641049
 00641039    sub         al,16
>0064103B    je          00641049
 0064103D    sub         al,28
>0064103F    je          00641049
 00641041    sub         al,2
>00641043    je          00641049
 00641045    sub         al,9
>00641047    jne         0064104F
 00641049    mov         byte ptr [ebp-9],5
>0064104D    jmp         00641066
 0064104F    mov         al,byte ptr [ebp-0A]
 00641052    sub         al,30
>00641054    je          00641062
 00641056    sub         al,11
>00641058    je          00641062
 0064105A    sub         al,2
>0064105C    je          00641062
 0064105E    sub         al,9
>00641060    jne         00641066
 00641062    mov         byte ptr [ebp-9],4
 00641066    mov         al,byte ptr [ebp-9]
 00641069    mov         esp,ebp
 0064106B    pop         ebp
 0064106C    ret
end;*}

//00641070
{*function sub_00641070(?:TEditMask; ?:?):?;
begin
 00641070    push        ebp
 00641071    mov         ebp,esp
 00641073    add         esp,0FFFFFFE8
 00641076    mov         dword ptr [ebp-8],edx
 00641079    mov         dword ptr [ebp-4],eax
 0064107C    mov         al,[00641118];0x0 gvar_00641118
 00641081    mov         byte ptr [ebp-9],al
 00641084    mov         eax,dword ptr [ebp-4]
 00641087    call        @LStrLen
 0064108C    test        eax,eax
>0064108E    jle         006410FC
 00641090    mov         dword ptr [ebp-18],eax
 00641093    mov         dword ptr [ebp-10],1
 0064109A    mov         eax,dword ptr [ebp-4]
 0064109D    mov         edx,dword ptr [ebp-10]
 006410A0    mov         al,byte ptr [eax+edx-1]
 006410A4    mov         byte ptr [ebp-11],al
 006410A7    cmp         byte ptr [ebp-11],21
>006410AB    jne         006410B3
 006410AD    or          byte ptr [ebp-9],1
>006410B1    jmp         006410F4
 006410B3    cmp         byte ptr [ebp-11],3E
>006410B7    jne         006410DE
 006410B9    mov         eax,dword ptr [ebp-10]
 006410BC    cmp         eax,dword ptr [ebp-8]
>006410BF    jge         006410DE
 006410C1    and         byte ptr [ebp-9],0FB
 006410C5    cmp         dword ptr [ebp-10],1
>006410C9    jle         006410D8
 006410CB    mov         eax,dword ptr [ebp-4]
 006410CE    mov         edx,dword ptr [ebp-10]
 006410D1    cmp         byte ptr [eax+edx-2],3C
>006410D6    je          006410F4
 006410D8    or          byte ptr [ebp-9],2
>006410DC    jmp         006410F4
 006410DE    cmp         byte ptr [ebp-11],3C
>006410E2    jne         006410F4
 006410E4    mov         eax,dword ptr [ebp-10]
 006410E7    cmp         eax,dword ptr [ebp-8]
>006410EA    jge         006410F4
 006410EC    and         byte ptr [ebp-9],0FD
 006410F0    or          byte ptr [ebp-9],4
 006410F4    inc         dword ptr [ebp-10]
 006410F7    dec         dword ptr [ebp-18]
>006410FA    jne         0064109A
 006410FC    mov         edx,dword ptr [ebp-8]
 006410FF    mov         eax,dword ptr [ebp-4]
 00641102    call        00640ED0
 00641107    cmp         al,1
>00641109    jne         0064110F
 0064110B    or          byte ptr [ebp-9],8
 0064110F    mov         al,byte ptr [ebp-9]
 00641112    mov         esp,ebp
 00641114    pop         ebp
 00641115    ret
end;*}

//0064111C
{*function sub_0064111C(?:?):?;
begin
 0064111C    push        ebp
 0064111D    mov         ebp,esp
 0064111F    push        ecx
 00641120    mov         byte ptr [ebp-1],al
 00641123    mov         al,byte ptr [ebp-1]
 00641126    mov         byte ptr [ebp-2],al
 00641129    mov         al,byte ptr [ebp-1]
 0064112C    sub         al,2F
>0064112E    je          00641140
 00641130    sub         al,0B
>00641132    jne         0064114A
 00641134    mov         eax,[006EA10C];^gvar_006ED024
 00641139    mov         al,byte ptr [eax]
 0064113B    mov         byte ptr [ebp-2],al
>0064113E    jmp         0064114A
 00641140    mov         eax,[006EA104];^gvar_006ED019
 00641145    mov         al,byte ptr [eax]
 00641147    mov         byte ptr [ebp-2],al
 0064114A    mov         al,byte ptr [ebp-2]
 0064114D    pop         ecx
 0064114E    pop         ebp
 0064114F    ret
end;*}

//00641150
{*procedure sub_00641150(?:TEditMask; ?:AnsiString; ?:?; ?:?);
begin
 00641150    push        ebp
 00641151    mov         ebp,esp
 00641153    add         esp,0FFFFFFC0
 00641156    push        ebx
 00641157    xor         ebx,ebx
 00641159    mov         dword ptr [ebp-40],ebx
 0064115C    mov         dword ptr [ebp-34],ebx
 0064115F    mov         dword ptr [ebp-38],ebx
 00641162    mov         dword ptr [ebp-3C],ebx
 00641165    mov         dword ptr [ebp-30],ebx
 00641168    mov         dword ptr [ebp-24],ebx
 0064116B    mov         dword ptr [ebp-28],ebx
 0064116E    mov         dword ptr [ebp-2C],ebx
 00641171    mov         byte ptr [ebp-9],cl
 00641174    mov         dword ptr [ebp-8],edx
 00641177    mov         dword ptr [ebp-4],eax
 0064117A    xor         eax,eax
 0064117C    push        ebp
 0064117D    push        6413A0
 00641182    push        dword ptr fs:[eax]
 00641185    mov         dword ptr fs:[eax],esp
 00641188    mov         eax,dword ptr [ebp+8]
 0064118B    mov         edx,dword ptr [ebp-8]
 0064118E    call        @LStrAsg
 00641193    mov         edx,1
 00641198    mov         eax,dword ptr [ebp-4]
 0064119B    call        00641070
 006411A0    mov         byte ptr [ebp-1A],al
 006411A3    test        byte ptr [ebp-1A],1
>006411A7    jne         00641295
 006411AD    mov         dword ptr [ebp-14],1
 006411B4    mov         eax,dword ptr [ebp-4]
 006411B7    call        @LStrLen
 006411BC    test        eax,eax
>006411BE    jle         00641385
 006411C4    mov         dword ptr [ebp-20],eax
 006411C7    mov         dword ptr [ebp-18],1
 006411CE    mov         edx,dword ptr [ebp-18]
 006411D1    mov         eax,dword ptr [ebp-4]
 006411D4    call        00640ED0
 006411D9    mov         byte ptr [ebp-19],al
 006411DC    mov         al,byte ptr [ebp-19]
 006411DF    dec         eax
 006411E0    sub         al,2
>006411E2    jae         00641250
 006411E4    lea         eax,[ebp-24]
 006411E7    push        eax
 006411E8    mov         ecx,dword ptr [ebp-14]
 006411EB    dec         ecx
 006411EC    mov         eax,dword ptr [ebp+8]
 006411EF    mov         eax,dword ptr [eax]
 006411F1    mov         edx,1
 006411F6    call        @LStrCopy
 006411FB    push        dword ptr [ebp-24]
 006411FE    mov         eax,dword ptr [ebp-4]
 00641201    mov         edx,dword ptr [ebp-18]
 00641204    mov         al,byte ptr [eax+edx-1]
 00641208    call        0064111C
 0064120D    mov         edx,eax
 0064120F    lea         eax,[ebp-28]
 00641212    call        @LStrFromChar
 00641217    push        dword ptr [ebp-28]
 0064121A    lea         eax,[ebp-2C]
 0064121D    push        eax
 0064121E    mov         eax,dword ptr [ebp+8]
 00641221    mov         eax,dword ptr [eax]
 00641223    call        @LStrLen
 00641228    mov         ecx,eax
 0064122A    sub         ecx,dword ptr [ebp-14]
 0064122D    inc         ecx
 0064122E    mov         eax,dword ptr [ebp+8]
 00641231    mov         eax,dword ptr [eax]
 00641233    mov         edx,dword ptr [ebp-14]
 00641236    call        @LStrCopy
 0064123B    push        dword ptr [ebp-2C]
 0064123E    mov         eax,dword ptr [ebp+8]
 00641241    mov         edx,3
 00641246    call        @LStrCatN
 0064124B    inc         dword ptr [ebp-14]
>0064124E    jmp         00641284
 00641250    mov         al,byte ptr [ebp-19]
 00641253    add         al,0FC
 00641255    sub         al,2
>00641257    jae         00641284
 00641259    mov         eax,dword ptr [ebp+8]
 0064125C    mov         eax,dword ptr [eax]
 0064125E    call        @LStrLen
 00641263    cmp         eax,dword ptr [ebp-14]
>00641266    jge         00641281
 00641268    lea         eax,[ebp-30]
 0064126B    mov         dl,byte ptr [ebp-9]
 0064126E    call        @LStrFromChar
 00641273    mov         edx,dword ptr [ebp-30]
 00641276    mov         eax,dword ptr [ebp+8]
 00641279    call        @LStrCat
 0064127E    mov         eax,dword ptr [ebp+8]
 00641281    inc         dword ptr [ebp-14]
 00641284    inc         dword ptr [ebp-18]
 00641287    dec         dword ptr [ebp-20]
>0064128A    jne         006411CE
>00641290    jmp         00641385
 00641295    mov         eax,dword ptr [ebp+8]
 00641298    mov         eax,dword ptr [eax]
 0064129A    call        @LStrLen
 0064129F    mov         dword ptr [ebp-14],eax
 006412A2    mov         eax,dword ptr [ebp-4]
 006412A5    call        @LStrLen
 006412AA    dec         eax
 006412AB    test        eax,eax
>006412AD    jl          00641385
 006412B3    inc         eax
 006412B4    mov         dword ptr [ebp-20],eax
 006412B7    mov         dword ptr [ebp-10],0
 006412BE    mov         eax,dword ptr [ebp-4]
 006412C1    call        @LStrLen
 006412C6    sub         eax,dword ptr [ebp-10]
 006412C9    mov         dword ptr [ebp-18],eax
 006412CC    mov         edx,dword ptr [ebp-18]
 006412CF    mov         eax,dword ptr [ebp-4]
 006412D2    call        00640ED0
 006412D7    mov         byte ptr [ebp-19],al
 006412DA    mov         al,byte ptr [ebp-19]
 006412DD    dec         eax
 006412DE    sub         al,2
>006412E0    jae         0064134A
 006412E2    lea         eax,[ebp-34]
 006412E5    push        eax
 006412E6    mov         eax,dword ptr [ebp+8]
 006412E9    mov         eax,dword ptr [eax]
 006412EB    mov         ecx,dword ptr [ebp-14]
 006412EE    mov         edx,1
 006412F3    call        @LStrCopy
 006412F8    push        dword ptr [ebp-34]
 006412FB    mov         eax,dword ptr [ebp-4]
 006412FE    mov         edx,dword ptr [ebp-18]
 00641301    mov         al,byte ptr [eax+edx-1]
 00641305    call        0064111C
 0064130A    mov         edx,eax
 0064130C    lea         eax,[ebp-38]
 0064130F    call        @LStrFromChar
 00641314    push        dword ptr [ebp-38]
 00641317    lea         eax,[ebp-3C]
 0064131A    push        eax
 0064131B    mov         eax,dword ptr [ebp+8]
 0064131E    mov         eax,dword ptr [eax]
 00641320    call        @LStrLen
 00641325    mov         ecx,eax
 00641327    sub         ecx,dword ptr [ebp-14]
 0064132A    mov         edx,dword ptr [ebp-14]
 0064132D    inc         edx
 0064132E    mov         eax,dword ptr [ebp+8]
 00641331    mov         eax,dword ptr [eax]
 00641333    call        @LStrCopy
 00641338    push        dword ptr [ebp-3C]
 0064133B    mov         eax,dword ptr [ebp+8]
 0064133E    mov         edx,3
 00641343    call        @LStrCatN
>00641348    jmp         00641379
 0064134A    mov         al,byte ptr [ebp-19]
 0064134D    add         al,0FC
 0064134F    sub         al,2
>00641351    jae         00641379
 00641353    cmp         dword ptr [ebp-14],1
>00641357    jge         00641376
 00641359    lea         eax,[ebp-40]
 0064135C    mov         dl,byte ptr [ebp-9]
 0064135F    call        @LStrFromChar
 00641364    mov         edx,dword ptr [ebp-40]
 00641367    mov         ecx,dword ptr [ebp+8]
 0064136A    mov         ecx,dword ptr [ecx]
 0064136C    mov         eax,dword ptr [ebp+8]
 0064136F    call        @LStrCat3
>00641374    jmp         00641379
 00641376    dec         dword ptr [ebp-14]
 00641379    inc         dword ptr [ebp-10]
 0064137C    dec         dword ptr [ebp-20]
>0064137F    jne         006412BE
 00641385    xor         eax,eax
 00641387    pop         edx
 00641388    pop         ecx
 00641389    pop         ecx
 0064138A    mov         dword ptr fs:[eax],edx
 0064138D    push        6413A7
 00641392    lea         eax,[ebp-40]
 00641395    mov         edx,8
 0064139A    call        @LStrArrayClr
 0064139F    ret
>006413A0    jmp         @HandleFinally
>006413A5    jmp         00641392
 006413A7    pop         ebx
 006413A8    mov         esp,ebp
 006413AA    pop         ebp
 006413AB    ret         4
end;*}

//006413B0
{*function sub_006413B0(?:?):?;
begin
 006413B0    push        ebp
 006413B1    mov         ebp,esp
 006413B3    add         esp,0FFFFFFEC
 006413B6    mov         dword ptr [ebp-4],eax
 006413B9    mov         byte ptr [ebp-5],1
 006413BD    mov         eax,dword ptr [ebp-4]
 006413C0    call        @LStrLen
 006413C5    cmp         eax,4
>006413C8    jl          00641465
 006413CE    mov         dword ptr [ebp-10],0FFFFFFFF
 006413D5    mov         dword ptr [ebp-14],0FFFFFFFF
 006413DC    mov         eax,dword ptr [ebp-4]
 006413DF    call        @LStrLen
 006413E4    mov         dword ptr [ebp-0C],eax
 006413E7    cmp         dword ptr [ebp-14],0
>006413EB    jge         0064142F
 006413ED    mov         edx,dword ptr [ebp-0C]
 006413F0    mov         eax,dword ptr [ebp-4]
 006413F3    call        00640ED0
 006413F8    cmp         al,6
>006413FA    jne         00641410
 006413FC    cmp         dword ptr [ebp-10],0
>00641400    jge         0064140A
 00641402    mov         eax,dword ptr [ebp-0C]
 00641405    mov         dword ptr [ebp-10],eax
>00641408    jmp         00641410
 0064140A    mov         eax,dword ptr [ebp-0C]
 0064140D    mov         dword ptr [ebp-14],eax
 00641410    dec         dword ptr [ebp-0C]
 00641413    cmp         dword ptr [ebp-0C],0
>00641417    jle         0064142F
 00641419    mov         eax,dword ptr [ebp-4]
 0064141C    call        @LStrLen
 00641421    sub         eax,4
 00641424    cmp         eax,dword ptr [ebp-0C]
>00641427    jg          0064142F
 00641429    cmp         dword ptr [ebp-14],0
>0064142D    jl          006413ED
 0064142F    cmp         dword ptr [ebp-14],0
>00641433    jge         0064143B
 00641435    mov         eax,dword ptr [ebp-10]
 00641438    mov         dword ptr [ebp-14],eax
 0064143B    cmp         dword ptr [ebp-14],0
>0064143F    jle         00641465
 00641441    mov         eax,dword ptr [ebp-4]
 00641444    call        @LStrLen
 00641449    cmp         eax,dword ptr [ebp-14]
>0064144C    je          00641465
 0064144E    mov         eax,dword ptr [ebp-14]
 00641451    mov         edx,dword ptr [ebp-4]
 00641454    mov         al,byte ptr [edx+eax]
 00641457    cmp         al,byte ptr ds:[6E47FC];0x30 gvar_006E47FC
 0064145D    sete        al
 00641460    xor         al,1
 00641462    mov         byte ptr [ebp-5],al
 00641465    mov         al,byte ptr [ebp-5]
 00641468    mov         esp,ebp
 0064146A    pop         ebp
 0064146B    ret
end;*}

//0064146C
{*function sub_0064146C(?:?):?;
begin
 0064146C    push        ebp
 0064146D    mov         ebp,esp
 0064146F    add         esp,0FFFFFFF8
 00641472    mov         dword ptr [ebp-4],eax
 00641475    mov         al,[006E47F4];0x5F gvar_006E47F4
 0064147A    mov         byte ptr [ebp-5],al
 0064147D    mov         eax,dword ptr [ebp-4]
 00641480    call        @LStrLen
 00641485    cmp         eax,4
>00641488    jl          006414E5
 0064148A    mov         eax,dword ptr [ebp-4]
 0064148D    call        @LStrLen
 00641492    mov         edx,eax
 00641494    dec         edx
 00641495    mov         eax,dword ptr [ebp-4]
 00641498    call        00640ED0
 0064149D    cmp         al,6
>0064149F    jne         006414E5
 006414A1    mov         eax,dword ptr [ebp-4]
 006414A4    call        @LStrLen
 006414A9    mov         edx,eax
 006414AB    sub         edx,2
 006414AE    mov         eax,dword ptr [ebp-4]
 006414B1    call        00640ED0
 006414B6    cmp         al,6
>006414B8    je          006414D3
 006414BA    mov         eax,dword ptr [ebp-4]
 006414BD    call        @LStrLen
 006414C2    mov         edx,eax
 006414C4    sub         edx,3
 006414C7    mov         eax,dword ptr [ebp-4]
 006414CA    call        00640ED0
 006414CF    cmp         al,6
>006414D1    jne         006414E5
 006414D3    mov         eax,dword ptr [ebp-4]
 006414D6    call        @LStrLen
 006414DB    mov         edx,dword ptr [ebp-4]
 006414DE    mov         al,byte ptr [edx+eax-1]
 006414E2    mov         byte ptr [ebp-5],al
 006414E5    mov         al,byte ptr [ebp-5]
 006414E8    pop         ecx
 006414E9    pop         ecx
 006414EA    pop         ebp
 006414EB    ret
end;*}

//006414EC
{*procedure sub_006414EC(?:TEditMask; ?:Integer; ?:?);
begin
 006414EC    push        ebp
 006414ED    mov         ebp,esp
 006414EF    add         esp,0FFFFFFE4
 006414F2    push        ebx
 006414F3    xor         ebx,ebx
 006414F5    mov         dword ptr [ebp-1C],ebx
 006414F8    mov         dword ptr [ebp-0C],ecx
 006414FB    mov         dword ptr [ebp-8],edx
 006414FE    mov         dword ptr [ebp-4],eax
 00641501    xor         eax,eax
 00641503    push        ebp
 00641504    push        641581
 00641509    push        dword ptr fs:[eax]
 0064150C    mov         dword ptr fs:[eax],esp
 0064150F    mov         eax,dword ptr [ebp-0C]
 00641512    call        @LStrClr
 00641517    mov         eax,dword ptr [ebp-8]
 0064151A    test        eax,eax
>0064151C    jle         0064156B
 0064151E    mov         dword ptr [ebp-18],eax
 00641521    mov         dword ptr [ebp-10],1
 00641528    mov         edx,dword ptr [ebp-10]
 0064152B    mov         eax,dword ptr [ebp-4]
 0064152E    call        00640ED0
 00641533    mov         byte ptr [ebp-11],al
 00641536    mov         al,byte ptr [ebp-11]
 00641539    sub         al,3
>0064153B    je          00641563
 0064153D    add         al,0FD
 0064153F    sub         al,2
>00641541    jb          00641563
 00641543    lea         eax,[ebp-1C]
 00641546    mov         edx,dword ptr [ebp-4]
 00641549    mov         ecx,dword ptr [ebp-10]
 0064154C    mov         dl,byte ptr [edx+ecx-1]
 00641550    call        @LStrFromChar
 00641555    mov         edx,dword ptr [ebp-1C]
 00641558    mov         eax,dword ptr [ebp-0C]
 0064155B    call        @LStrCat
 00641560    mov         eax,dword ptr [ebp-0C]
 00641563    inc         dword ptr [ebp-10]
 00641566    dec         dword ptr [ebp-18]
>00641569    jne         00641528
 0064156B    xor         eax,eax
 0064156D    pop         edx
 0064156E    pop         ecx
 0064156F    pop         ecx
 00641570    mov         dword ptr fs:[eax],edx
 00641573    push        641588
 00641578    lea         eax,[ebp-1C]
 0064157B    call        @LStrClr
 00641580    ret
>00641581    jmp         @HandleFinally
>00641586    jmp         00641578
 00641588    pop         ebx
 00641589    mov         esp,ebp
 0064158B    pop         ebp
 0064158C    ret
end;*}

//00641590
{*function sub_00641590(?:TEditMask; ?:Integer):?;
begin
 00641590    push        ebp
 00641591    mov         ebp,esp
 00641593    add         esp,0FFFFFFF0
 00641596    xor         ecx,ecx
 00641598    mov         dword ptr [ebp-10],ecx
 0064159B    mov         dword ptr [ebp-8],edx
 0064159E    mov         dword ptr [ebp-4],eax
 006415A1    xor         eax,eax
 006415A3    push        ebp
 006415A4    push        6415DE
 006415A9    push        dword ptr fs:[eax]
 006415AC    mov         dword ptr fs:[eax],esp
 006415AF    lea         ecx,[ebp-10]
 006415B2    mov         edx,dword ptr [ebp-8]
 006415B5    mov         eax,dword ptr [ebp-4]
 006415B8    call        006414EC
 006415BD    mov         eax,dword ptr [ebp-10]
 006415C0    call        @LStrLen
 006415C5    mov         dword ptr [ebp-0C],eax
 006415C8    xor         eax,eax
 006415CA    pop         edx
 006415CB    pop         ecx
 006415CC    pop         ecx
 006415CD    mov         dword ptr fs:[eax],edx
 006415D0    push        6415E5
 006415D5    lea         eax,[ebp-10]
 006415D8    call        @LStrClr
 006415DD    ret
>006415DE    jmp         @HandleFinally
>006415E3    jmp         006415D5
 006415E5    mov         eax,dword ptr [ebp-0C]
 006415E8    mov         esp,ebp
 006415EA    pop         ebp
 006415EB    ret
end;*}

//006415EC
{*function sub_006415EC(?:TEditMask; ?:?):?;
begin
 006415EC    push        ebp
 006415ED    mov         ebp,esp
 006415EF    add         esp,0FFFFFFE4
 006415F2    mov         dword ptr [ebp-8],edx
 006415F5    mov         dword ptr [ebp-4],eax
 006415F8    mov         eax,dword ptr [ebp-4]
 006415FB    call        @LStrLen
 00641600    mov         edx,eax
 00641602    mov         eax,dword ptr [ebp-4]
 00641605    call        00641590
 0064160A    mov         dword ptr [ebp-18],eax
 0064160D    mov         eax,dword ptr [ebp-8]
 00641610    cmp         eax,dword ptr [ebp-18]
>00641613    jle         0064161E
 00641615    mov         dword ptr [ebp-0C],0FFFFFFFF
>0064161C    jmp         00641662
 0064161E    xor         eax,eax
 00641620    mov         dword ptr [ebp-0C],eax
 00641623    mov         eax,dword ptr [ebp-8]
 00641626    mov         dword ptr [ebp-14],eax
 00641629    mov         eax,dword ptr [ebp-4]
 0064162C    call        @LStrLen
 00641631    test        eax,eax
>00641633    jle         00641662
 00641635    mov         dword ptr [ebp-1C],eax
 00641638    mov         dword ptr [ebp-10],1
 0064163F    inc         dword ptr [ebp-0C]
 00641642    mov         edx,dword ptr [ebp-10]
 00641645    mov         eax,dword ptr [ebp-4]
 00641648    call        00640ED0
 0064164D    cmp         al,3
>0064164F    je          0064165A
 00641651    dec         dword ptr [ebp-14]
 00641654    cmp         dword ptr [ebp-14],0
>00641658    jl          00641662
 0064165A    inc         dword ptr [ebp-10]
 0064165D    dec         dword ptr [ebp-1C]
>00641660    jne         0064163F
 00641662    mov         eax,dword ptr [ebp-0C]
 00641665    mov         esp,ebp
 00641667    pop         ebp
 00641668    ret
end;*}

//0064166C
{*function sub_0064166C(?:TEditMask; ?:?):?;
begin
 0064166C    push        ebp
 0064166D    mov         ebp,esp
 0064166F    add         esp,0FFFFFFEC
 00641672    mov         dword ptr [ebp-8],edx
 00641675    mov         dword ptr [ebp-4],eax
 00641678    mov         byte ptr [ebp-9],0
 0064167C    mov         edx,dword ptr [ebp-8]
 0064167F    mov         eax,dword ptr [ebp-4]
 00641682    call        006415EC
 00641687    mov         dword ptr [ebp-10],eax
 0064168A    cmp         dword ptr [ebp-10],0
>0064168E    jl          006416AA
 00641690    mov         edx,dword ptr [ebp-10]
 00641693    mov         eax,dword ptr [ebp-4]
 00641696    call        00640ED0
 0064169B    mov         byte ptr [ebp-11],al
 0064169E    mov         al,byte ptr [ebp-11]
 006416A1    dec         eax
 006416A2    sub         al,2
 006416A4    setb        al
 006416A7    mov         byte ptr [ebp-9],al
 006416AA    mov         al,byte ptr [ebp-9]
 006416AD    mov         esp,ebp
 006416AF    pop         ebp
 006416B0    ret
end;*}

//006416B4
{*procedure sub_006416B4(?:TEditMask; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 006416B4    push        ebp
 006416B5    mov         ebp,esp
 006416B7    add         esp,0FFFFFFCC
 006416BA    push        ebx
 006416BB    xor         ebx,ebx
 006416BD    mov         dword ptr [ebp-30],ebx
 006416C0    mov         dword ptr [ebp-34],ebx
 006416C3    mov         dword ptr [ebp-28],ebx
 006416C6    mov         dword ptr [ebp-2C],ebx
 006416C9    mov         dword ptr [ebp-24],ebx
 006416CC    mov         dword ptr [ebp-20],ebx
 006416CF    mov         dword ptr [ebp-0C],ecx
 006416D2    mov         dword ptr [ebp-8],edx
 006416D5    mov         dword ptr [ebp-4],eax
 006416D8    xor         eax,eax
 006416DA    push        ebp
 006416DB    push        641865
 006416E0    push        dword ptr fs:[eax]
 006416E3    mov         dword ptr fs:[eax],esp
 006416E6    mov         eax,dword ptr [ebp+14]
 006416E9    sub         eax,dword ptr [ebp-0C]
 006416EC    cmp         eax,dword ptr [ebp+10]
>006416EF    jge         00641794
 006416F5    mov         edx,1
 006416FA    mov         eax,dword ptr [ebp-4]
 006416FD    call        00641070
 00641702    mov         byte ptr [ebp-0D],al
 00641705    mov         eax,dword ptr [ebp+14]
 00641708    dec         eax
 00641709    mov         dword ptr [ebp-14],eax
 0064170C    test        byte ptr [ebp-0D],1
>00641710    je          00641719
 00641712    mov         eax,dword ptr [ebp-0C]
 00641715    dec         eax
 00641716    mov         dword ptr [ebp-14],eax
 00641719    mov         eax,dword ptr [ebp+8]
 0064171C    push        eax
 0064171D    mov         ecx,dword ptr [ebp-14]
 00641720    mov         edx,1
 00641725    mov         eax,dword ptr [ebp-8]
 00641728    call        @LStrCopy
 0064172D    mov         eax,dword ptr [ebp+14]
 00641730    sub         eax,dword ptr [ebp-0C]
 00641733    mov         edx,dword ptr [ebp+10]
 00641736    sub         edx,eax
 00641738    test        edx,edx
>0064173A    jle         00641767
 0064173C    mov         dword ptr [ebp-1C],edx
 0064173F    mov         dword ptr [ebp-18],1
 00641746    lea         eax,[ebp-20]
 00641749    mov         dl,byte ptr [ebp+0C]
 0064174C    call        @LStrFromChar
 00641751    mov         edx,dword ptr [ebp-20]
 00641754    mov         eax,dword ptr [ebp+8]
 00641757    call        @LStrCat
 0064175C    mov         eax,dword ptr [ebp+8]
 0064175F    inc         dword ptr [ebp-18]
 00641762    dec         dword ptr [ebp-1C]
>00641765    jne         00641746
 00641767    lea         eax,[ebp-24]
 0064176A    push        eax
 0064176B    mov         eax,dword ptr [ebp-8]
 0064176E    call        @LStrLen
 00641773    mov         ecx,eax
 00641775    mov         edx,dword ptr [ebp-14]
 00641778    inc         edx
 00641779    mov         eax,dword ptr [ebp-8]
 0064177C    call        @LStrCopy
 00641781    mov         edx,dword ptr [ebp-24]
 00641784    mov         eax,dword ptr [ebp+8]
 00641787    call        @LStrCat
 0064178C    mov         eax,dword ptr [ebp+8]
>0064178F    jmp         0064184A
 00641794    mov         eax,dword ptr [ebp+14]
 00641797    sub         eax,dword ptr [ebp-0C]
 0064179A    cmp         eax,dword ptr [ebp+10]
>0064179D    jle         0064183F
 006417A3    mov         edx,1
 006417A8    mov         eax,dword ptr [ebp-4]
 006417AB    call        00641070
 006417B0    mov         byte ptr [ebp-0D],al
 006417B3    test        byte ptr [ebp-0D],1
>006417B7    je          006417FC
 006417B9    lea         eax,[ebp-28]
 006417BC    push        eax
 006417BD    mov         eax,dword ptr [ebp-8]
 006417C0    call        @LStrLen
 006417C5    mov         ecx,eax
 006417C7    mov         edx,dword ptr [ebp+14]
 006417CA    sub         edx,dword ptr [ebp+10]
 006417CD    mov         eax,dword ptr [ebp-8]
 006417D0    call        @LStrCopy
 006417D5    mov         eax,dword ptr [ebp-28]
 006417D8    push        eax
 006417D9    lea         eax,[ebp-2C]
 006417DC    push        eax
 006417DD    mov         ecx,dword ptr [ebp-0C]
 006417E0    dec         ecx
 006417E1    mov         edx,1
 006417E6    mov         eax,dword ptr [ebp-8]
 006417E9    call        @LStrCopy
 006417EE    mov         edx,dword ptr [ebp-2C]
 006417F1    mov         eax,dword ptr [ebp+8]
 006417F4    pop         ecx
 006417F5    call        @LStrCat3
>006417FA    jmp         0064184A
 006417FC    lea         eax,[ebp-30]
 006417FF    push        eax
 00641800    mov         eax,dword ptr [ebp-8]
 00641803    call        @LStrLen
 00641808    mov         ecx,eax
 0064180A    mov         edx,dword ptr [ebp+14]
 0064180D    mov         eax,dword ptr [ebp-8]
 00641810    call        @LStrCopy
 00641815    mov         eax,dword ptr [ebp-30]
 00641818    push        eax
 00641819    lea         eax,[ebp-34]
 0064181C    push        eax
 0064181D    mov         ecx,dword ptr [ebp-0C]
 00641820    add         ecx,dword ptr [ebp+10]
 00641823    dec         ecx
 00641824    mov         edx,1
 00641829    mov         eax,dword ptr [ebp-8]
 0064182C    call        @LStrCopy
 00641831    mov         edx,dword ptr [ebp-34]
 00641834    mov         eax,dword ptr [ebp+8]
 00641837    pop         ecx
 00641838    call        @LStrCat3
>0064183D    jmp         0064184A
 0064183F    mov         eax,dword ptr [ebp+8]
 00641842    mov         edx,dword ptr [ebp-8]
 00641845    call        @LStrAsg
 0064184A    xor         eax,eax
 0064184C    pop         edx
 0064184D    pop         ecx
 0064184E    pop         ecx
 0064184F    mov         dword ptr fs:[eax],edx
 00641852    push        64186C
 00641857    lea         eax,[ebp-34]
 0064185A    mov         edx,6
 0064185F    call        @LStrArrayClr
 00641864    ret
>00641865    jmp         @HandleFinally
>0064186A    jmp         00641857
 0064186C    pop         ebx
 0064186D    mov         esp,ebp
 0064186F    pop         ebp
 00641870    ret         10
end;*}

//00641874
{*procedure sub_00641874(?:TEditMask; ?:AnsiString; ?:?; ?:?);
begin
 00641874    push        ebp
 00641875    mov         ebp,esp
 00641877    add         esp,0FFFFFFC4
 0064187A    push        ebx
 0064187B    xor         ebx,ebx
 0064187D    mov         dword ptr [ebp-3C],ebx
 00641880    mov         dword ptr [ebp-38],ebx
 00641883    mov         dword ptr [ebp-34],ebx
 00641886    mov         byte ptr [ebp-9],cl
 00641889    mov         dword ptr [ebp-8],edx
 0064188C    mov         dword ptr [ebp-4],eax
 0064188F    xor         eax,eax
 00641891    push        ebp
 00641892    push        641A86
 00641897    push        dword ptr fs:[eax]
 0064189A    mov         dword ptr fs:[eax],esp
 0064189D    xor         eax,eax
 0064189F    mov         dword ptr [ebp-14],eax
 006418A2    mov         eax,dword ptr [ebp+8]
 006418A5    mov         edx,dword ptr [ebp-8]
 006418A8    call        @LStrAsg
 006418AD    mov         eax,dword ptr [ebp-4]
 006418B0    call        @LStrLen
 006418B5    test        eax,eax
>006418B7    jle         006419BF
 006418BD    mov         dword ptr [ebp-2C],eax
 006418C0    mov         dword ptr [ebp-20],1
 006418C7    mov         edx,dword ptr [ebp-20]
 006418CA    mov         eax,dword ptr [ebp-4]
 006418CD    call        00640ED0
 006418D2    mov         byte ptr [ebp-21],al
 006418D5    mov         al,byte ptr [ebp-21]
 006418D8    dec         eax
 006418D9    sub         al,2
>006418DB    jae         006419B3
 006418E1    mov         edx,dword ptr [ebp-20]
 006418E4    mov         eax,dword ptr [ebp-4]
 006418E7    call        00641590
 006418EC    mov         dword ptr [ebp-1C],eax
 006418EF    mov         eax,dword ptr [ebp+8]
 006418F2    mov         eax,dword ptr [eax]
 006418F4    call        @LStrLen
 006418F9    inc         eax
 006418FA    mov         dword ptr [ebp-18],eax
 006418FD    mov         eax,dword ptr [ebp-14]
 00641900    inc         eax
 00641901    push        eax
 00641902    mov         eax,dword ptr [ebp+8]
 00641905    mov         eax,dword ptr [eax]
 00641907    call        @LStrLen
 0064190C    pop         edx
 0064190D    sub         eax,edx
>0064190F    jl          00641945
 00641911    inc         eax
 00641912    mov         dword ptr [ebp-30],eax
 00641915    mov         dword ptr [ebp-10],edx
 00641918    mov         eax,dword ptr [ebp-20]
 0064191B    mov         edx,dword ptr [ebp-4]
 0064191E    mov         al,byte ptr [edx+eax-1]
 00641922    call        0064111C
 00641927    mov         edx,dword ptr [ebp+8]
 0064192A    mov         edx,dword ptr [edx]
 0064192C    mov         ecx,dword ptr [ebp-10]
 0064192F    cmp         al,byte ptr [edx+ecx-1]
>00641933    jne         0064193D
 00641935    mov         eax,dword ptr [ebp-10]
 00641938    mov         dword ptr [ebp-18],eax
>0064193B    jmp         00641945
 0064193D    inc         dword ptr [ebp-10]
 00641940    dec         dword ptr [ebp-30]
>00641943    jne         00641918
 00641945    mov         eax,dword ptr [ebp+8]
 00641948    mov         eax,dword ptr [eax]
 0064194A    call        @LStrLen
 0064194F    cmp         eax,dword ptr [ebp-18]
>00641952    jge         0064197B
 00641954    mov         eax,dword ptr [ebp-20]
 00641957    mov         edx,dword ptr [ebp-4]
 0064195A    mov         al,byte ptr [edx+eax-1]
 0064195E    call        0064111C
 00641963    mov         edx,eax
 00641965    lea         eax,[ebp-34]
 00641968    call        @LStrFromChar
 0064196D    mov         edx,dword ptr [ebp-34]
 00641970    mov         eax,dword ptr [ebp+8]
 00641973    call        @LStrCat
 00641978    mov         eax,dword ptr [ebp+8]
 0064197B    mov         eax,dword ptr [ebp-18]
 0064197E    push        eax
 0064197F    mov         eax,dword ptr [ebp-14]
 00641982    inc         eax
 00641983    mov         edx,dword ptr [ebp-1C]
 00641986    sub         edx,eax
 00641988    push        edx
 00641989    mov         al,byte ptr [ebp-9]
 0064198C    push        eax
 0064198D    lea         eax,[ebp-38]
 00641990    push        eax
 00641991    mov         ecx,dword ptr [ebp-14]
 00641994    inc         ecx
 00641995    mov         edx,dword ptr [ebp+8]
 00641998    mov         edx,dword ptr [edx]
 0064199A    mov         eax,dword ptr [ebp-4]
 0064199D    call        006416B4
 006419A2    mov         edx,dword ptr [ebp-38]
 006419A5    mov         eax,dword ptr [ebp+8]
 006419A8    call        @LStrAsg
 006419AD    mov         eax,dword ptr [ebp-1C]
 006419B0    mov         dword ptr [ebp-14],eax
 006419B3    inc         dword ptr [ebp-20]
 006419B6    dec         dword ptr [ebp-2C]
>006419B9    jne         006418C7
 006419BF    mov         eax,dword ptr [ebp-4]
 006419C2    call        @LStrLen
 006419C7    mov         edx,eax
 006419C9    mov         eax,dword ptr [ebp-4]
 006419CC    call        00641590
 006419D1    mov         dword ptr [ebp-28],eax
 006419D4    mov         eax,dword ptr [ebp+8]
 006419D7    mov         eax,dword ptr [eax]
 006419D9    call        @LStrLen
 006419DE    cmp         eax,dword ptr [ebp-28]
>006419E1    je          00641A1A
 006419E3    mov         eax,dword ptr [ebp+8]
 006419E6    mov         eax,dword ptr [eax]
 006419E8    call        @LStrLen
 006419ED    inc         eax
 006419EE    push        eax
 006419EF    mov         eax,dword ptr [ebp-28]
 006419F2    sub         eax,dword ptr [ebp-14]
 006419F5    push        eax
 006419F6    mov         al,byte ptr [ebp-9]
 006419F9    push        eax
 006419FA    lea         eax,[ebp-3C]
 006419FD    push        eax
 006419FE    mov         ecx,dword ptr [ebp-14]
 00641A01    inc         ecx
 00641A02    mov         edx,dword ptr [ebp+8]
 00641A05    mov         edx,dword ptr [edx]
 00641A07    mov         eax,dword ptr [ebp-4]
 00641A0A    call        006416B4
 00641A0F    mov         edx,dword ptr [ebp-3C]
 00641A12    mov         eax,dword ptr [ebp+8]
 00641A15    call        @LStrAsg
 00641A1A    mov         eax,dword ptr [ebp+8]
 00641A1D    mov         eax,dword ptr [eax]
 00641A1F    call        @LStrLen
 00641A24    test        eax,eax
>00641A26    jle         00641A6B
 00641A28    mov         dword ptr [ebp-2C],eax
 00641A2B    mov         dword ptr [ebp-1C],1
 00641A32    mov         eax,dword ptr [ebp+8]
 00641A35    mov         eax,dword ptr [eax]
 00641A37    mov         edx,dword ptr [ebp-1C]
 00641A3A    cmp         byte ptr [eax+edx-1],20
>00641A3F    jne         00641A63
 00641A41    mov         edx,dword ptr [ebp-1C]
 00641A44    dec         edx
 00641A45    mov         eax,dword ptr [ebp-4]
 00641A48    call        0064166C
 00641A4D    test        al,al
>00641A4F    jne         00641A63
 00641A51    mov         eax,dword ptr [ebp+8]
 00641A54    call        @UniqueStringA
 00641A59    mov         edx,dword ptr [ebp-1C]
 00641A5C    mov         cl,byte ptr [ebp-9]
 00641A5F    mov         byte ptr [eax+edx-1],cl
 00641A63    inc         dword ptr [ebp-1C]
 00641A66    dec         dword ptr [ebp-2C]
>00641A69    jne         00641A32
 00641A6B    xor         eax,eax
 00641A6D    pop         edx
 00641A6E    pop         ecx
 00641A6F    pop         ecx
 00641A70    mov         dword ptr fs:[eax],edx
 00641A73    push        641A8D
 00641A78    lea         eax,[ebp-3C]
 00641A7B    mov         edx,3
 00641A80    call        @LStrArrayClr
 00641A85    ret
>00641A86    jmp         @HandleFinally
>00641A8B    jmp         00641A78
 00641A8D    pop         ebx
 00641A8E    mov         esp,ebp
 00641A90    pop         ebp
 00641A91    ret         4
end;*}

end.