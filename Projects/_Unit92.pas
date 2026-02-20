//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit92;

interface

uses
  SysUtils, Classes;

    procedure sub_0065611C;//0065611C
    //procedure sub_00656124(?:?; ?:?; ?:Integer; ?:?; ?:?);//00656124
    //procedure sub_0065615C(?:Integer; ?:Integer; ?:?);//0065615C
    //function sub_00656180(?:?; ?:?; ?:?):?;//00656180
    //function sub_00656230(?:TRect):?;//00656230
    //function sub_00656264(?:?; ?:?; ?:?):?;//00656264
    //procedure sub_006562B0(?:?; ?:?; ?:?; ?:?; ?:?);//006562B0
    //procedure sub_006562F0(?:?; ?:?);//006562F0

implementation

//0065611C
procedure sub_0065611C;
begin
{*
 0065611C    sub         dword ptr ds:[6ED004],1
 00656123    ret
*}
end;

//00656124
{*procedure sub_00656124(?:?; ?:?; ?:Integer; ?:?; ?:?);
begin
 00656124    push        ebp
 00656125    mov         ebp,esp
 00656127    add         esp,0FFFFFFF4
 0065612A    mov         dword ptr [ebp-0C],ecx
 0065612D    mov         dword ptr [ebp-8],edx
 00656130    mov         dword ptr [ebp-4],eax
 00656133    mov         eax,dword ptr [ebp+8]
 00656136    mov         edx,dword ptr [ebp-4]
 00656139    mov         dword ptr [eax],edx
 0065613B    mov         eax,dword ptr [ebp+8]
 0065613E    mov         edx,dword ptr [ebp-8]
 00656141    mov         dword ptr [eax+4],edx
 00656144    mov         eax,dword ptr [ebp+8]
 00656147    mov         edx,dword ptr [ebp+0C]
 0065614A    mov         dword ptr [eax+0C],edx
 0065614D    mov         eax,dword ptr [ebp+8]
 00656150    mov         edx,dword ptr [ebp-0C]
 00656153    mov         dword ptr [eax+8],edx
 00656156    mov         esp,ebp
 00656158    pop         ebp
 00656159    ret         8
end;*}

//0065615C
{*procedure sub_0065615C(?:Integer; ?:Integer; ?:?);
begin
 0065615C    push        ebp
 0065615D    mov         ebp,esp
 0065615F    add         esp,0FFFFFFF4
 00656162    mov         dword ptr [ebp-0C],ecx
 00656165    mov         dword ptr [ebp-8],edx
 00656168    mov         dword ptr [ebp-4],eax
 0065616B    mov         eax,dword ptr [ebp-0C]
 0065616E    mov         edx,dword ptr [ebp-4]
 00656171    mov         dword ptr [eax],edx
 00656173    mov         eax,dword ptr [ebp-0C]
 00656176    mov         edx,dword ptr [ebp-8]
 00656179    mov         dword ptr [eax+4],edx
 0065617C    mov         esp,ebp
 0065617E    pop         ebp
 0065617F    ret
end;*}

//00656180
{*function sub_00656180(?:?; ?:?; ?:?):?;
begin
 00656180    push        ebp
 00656181    mov         ebp,esp
 00656183    add         esp,0FFFFFFF0
 00656186    push        esi
 00656187    push        edi
 00656188    mov         dword ptr [ebp-0C],ecx
 0065618B    mov         dword ptr [ebp-8],edx
 0065618E    mov         dword ptr [ebp-4],eax
 00656191    mov         eax,dword ptr [ebp-8]
 00656194    mov         edx,dword ptr [ebp-4]
 00656197    mov         esi,eax
 00656199    mov         edi,edx
 0065619B    movs        dword ptr [edi],dword ptr [esi]
 0065619C    movs        dword ptr [edi],dword ptr [esi]
 0065619D    movs        dword ptr [edi],dword ptr [esi]
 0065619E    movs        dword ptr [edi],dword ptr [esi]
 0065619F    mov         eax,dword ptr [ebp-0C]
 006561A2    mov         eax,dword ptr [eax]
 006561A4    mov         edx,dword ptr [ebp-8]
 006561A7    cmp         eax,dword ptr [edx]
>006561A9    jle         006561B5
 006561AB    mov         eax,dword ptr [ebp-0C]
 006561AE    mov         eax,dword ptr [eax]
 006561B0    mov         edx,dword ptr [ebp-4]
 006561B3    mov         dword ptr [edx],eax
 006561B5    mov         eax,dword ptr [ebp-0C]
 006561B8    mov         eax,dword ptr [eax+4]
 006561BB    mov         edx,dword ptr [ebp-8]
 006561BE    cmp         eax,dword ptr [edx+4]
>006561C1    jle         006561CF
 006561C3    mov         eax,dword ptr [ebp-0C]
 006561C6    mov         eax,dword ptr [eax+4]
 006561C9    mov         edx,dword ptr [ebp-4]
 006561CC    mov         dword ptr [edx+4],eax
 006561CF    mov         eax,dword ptr [ebp-0C]
 006561D2    mov         eax,dword ptr [eax+8]
 006561D5    mov         edx,dword ptr [ebp-8]
 006561D8    cmp         eax,dword ptr [edx+8]
>006561DB    jge         006561E9
 006561DD    mov         eax,dword ptr [ebp-0C]
 006561E0    mov         eax,dword ptr [eax+8]
 006561E3    mov         edx,dword ptr [ebp-4]
 006561E6    mov         dword ptr [edx+8],eax
 006561E9    mov         eax,dword ptr [ebp-0C]
 006561EC    mov         eax,dword ptr [eax+0C]
 006561EF    mov         edx,dword ptr [ebp-8]
 006561F2    cmp         eax,dword ptr [edx+0C]
>006561F5    jge         00656203
 006561F7    mov         eax,dword ptr [ebp-0C]
 006561FA    mov         eax,dword ptr [eax+0C]
 006561FD    mov         edx,dword ptr [ebp-4]
 00656200    mov         dword ptr [edx+0C],eax
 00656203    mov         eax,dword ptr [ebp-4]
 00656206    call        00656230
 0065620B    xor         al,1
 0065620D    mov         byte ptr [ebp-0D],al
 00656210    cmp         byte ptr [ebp-0D],0
>00656214    jne         00656225
 00656216    mov         eax,dword ptr [ebp-4]
 00656219    xor         ecx,ecx
 0065621B    mov         edx,10
 00656220    call        @FillChar
 00656225    mov         al,byte ptr [ebp-0D]
 00656228    pop         edi
 00656229    pop         esi
 0065622A    mov         esp,ebp
 0065622C    pop         ebp
 0065622D    ret
end;*}

//00656230
{*function sub_00656230(?:TRect):?;
begin
 00656230    push        ebp
 00656231    mov         ebp,esp
 00656233    add         esp,0FFFFFFF8
 00656236    mov         dword ptr [ebp-4],eax
 00656239    mov         eax,dword ptr [ebp-4]
 0065623C    mov         eax,dword ptr [eax+8];TRect.Right:Longint
 0065623F    mov         edx,dword ptr [ebp-4]
 00656242    cmp         eax,dword ptr [edx]
>00656244    jle         00656258
 00656246    mov         eax,dword ptr [ebp-4]
 00656249    mov         eax,dword ptr [eax+0C]
 0065624C    mov         edx,dword ptr [ebp-4]
 0065624F    cmp         eax,dword ptr [edx+4];TRect.Top:Longint
>00656252    jle         00656258
 00656254    xor         eax,eax
>00656256    jmp         0065625A
 00656258    mov         al,1
 0065625A    mov         byte ptr [ebp-5],al
 0065625D    mov         al,byte ptr [ebp-5]
 00656260    pop         ecx
 00656261    pop         ecx
 00656262    pop         ebp
 00656263    ret
end;*}

//00656264
{*function sub_00656264(?:?; ?:?; ?:?):?;
begin
 00656264    push        ebp
 00656265    mov         ebp,esp
 00656267    add         esp,0FFFFFFF0
 0065626A    mov         dword ptr [ebp-0C],ecx
 0065626D    mov         dword ptr [ebp-8],edx
 00656270    mov         dword ptr [ebp-4],eax
 00656273    mov         eax,dword ptr [ebp-4]
 00656276    test        eax,eax
>00656278    je          006562A3
 0065627A    mov         eax,dword ptr [ebp-4]
 0065627D    mov         edx,dword ptr [ebp-8]
 00656280    add         dword ptr [eax],edx
 00656282    mov         eax,dword ptr [ebp-4]
 00656285    mov         edx,dword ptr [ebp-8]
 00656288    add         dword ptr [eax+8],edx
 0065628B    mov         eax,dword ptr [ebp-4]
 0065628E    mov         edx,dword ptr [ebp-0C]
 00656291    add         dword ptr [eax+4],edx
 00656294    mov         eax,dword ptr [ebp-4]
 00656297    mov         edx,dword ptr [ebp-0C]
 0065629A    add         dword ptr [eax+0C],edx
 0065629D    mov         byte ptr [ebp-0D],1
>006562A1    jmp         006562A7
 006562A3    mov         byte ptr [ebp-0D],0
 006562A7    mov         al,byte ptr [ebp-0D]
 006562AA    mov         esp,ebp
 006562AC    pop         ebp
 006562AD    ret
end;*}

//006562B0
{*procedure sub_006562B0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 006562B0    push        ebp
 006562B1    mov         ebp,esp
 006562B3    add         esp,0FFFFFFF4
 006562B6    mov         dword ptr [ebp-0C],ecx
 006562B9    mov         dword ptr [ebp-8],edx
 006562BC    mov         dword ptr [ebp-4],eax
 006562BF    mov         eax,dword ptr [ebp+8]
 006562C2    mov         edx,dword ptr [ebp-4]
 006562C5    mov         dword ptr [eax],edx
 006562C7    mov         eax,dword ptr [ebp+8]
 006562CA    mov         edx,dword ptr [ebp-8]
 006562CD    mov         dword ptr [eax+4],edx
 006562D0    mov         eax,dword ptr [ebp-4]
 006562D3    add         eax,dword ptr [ebp-0C]
 006562D6    mov         edx,dword ptr [ebp+8]
 006562D9    mov         dword ptr [edx+8],eax
 006562DC    mov         eax,dword ptr [ebp-8]
 006562DF    add         eax,dword ptr [ebp+0C]
 006562E2    mov         edx,dword ptr [ebp+8]
 006562E5    mov         dword ptr [edx+0C],eax
 006562E8    mov         esp,ebp
 006562EA    pop         ebp
 006562EB    ret         8
end;*}

//006562F0
{*procedure sub_006562F0(?:?; ?:?);
begin
 006562F0    push        ebp
 006562F1    mov         ebp,esp
 006562F3    add         esp,0FFFFFFF8
 006562F6    mov         dword ptr [ebp-8],edx
 006562F9    mov         dword ptr [ebp-4],eax
 006562FC    mov         eax,dword ptr [ebp-4]
 006562FF    mov         eax,dword ptr [eax+8]
 00656302    mov         edx,dword ptr [ebp-4]
 00656305    sub         eax,dword ptr [edx]
 00656307    sar         eax,1
>00656309    jns         0065630E
 0065630B    adc         eax,0
 0065630E    mov         edx,dword ptr [ebp-4]
 00656311    add         eax,dword ptr [edx]
 00656313    mov         edx,dword ptr [ebp-8]
 00656316    mov         dword ptr [edx],eax
 00656318    mov         eax,dword ptr [ebp-4]
 0065631B    mov         eax,dword ptr [eax+0C]
 0065631E    mov         edx,dword ptr [ebp-4]
 00656321    sub         eax,dword ptr [edx+4]
 00656324    sar         eax,1
>00656326    jns         0065632B
 00656328    adc         eax,0
 0065632B    mov         edx,dword ptr [ebp-4]
 0065632E    add         eax,dword ptr [edx+4]
 00656331    mov         edx,dword ptr [ebp-8]
 00656334    mov         dword ptr [edx+4],eax
 00656337    pop         ecx
 00656338    pop         ecx
 00656339    pop         ebp
 0065633A    ret
end;*}

end.