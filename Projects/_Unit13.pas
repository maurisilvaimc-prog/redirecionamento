//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit13;

interface

uses
  SysUtils, Classes;

    @@Legend@Initialize; stdcall;//004ADF90
    @@Legend@Finalize; stdcall;//004ADFA0
    //function sub_004ADFB0(?:?; ?:?; ?:?):?;//004ADFB0
    //procedure sub_004AE0AC(?:?; ?:?);//004AE0AC
    //procedure sub_004AE180(?:?; ?:?);//004AE180
    //procedure sub_004AE1A8(?:?; ?:?);//004AE1A8
    //function sub_004AE1FC(?:?; ?:?):?;//004AE1FC
    //function sub_004AE234(?:?; ?:?):?;//004AE234
    //function sub_004AE26C(?:?; ?:?):?;//004AE26C
    //function sub_004AE2A4(?:?; ?:?):?;//004AE2A4
    //function sub_004AE2DC(?:?; ?:?; ?:?):?;//004AE2DC
    //function sub_004AE33C(?:?; ?:?):?;//004AE33C
    //procedure sub_004AE3D4(?:?; ?:?);//004AE3D4
    //procedure sub_004AE44C(?:?; ?:?);//004AE44C
    //procedure sub_004AE4B4(?:?; ?:?);//004AE4B4
    //procedure sub_004AE50C(?:?; ?:?);//004AE50C
    //function sub_004AE590(?:?; ?:?):?;//004AE590
    //procedure sub_004AE600(?:?; ?:?);//004AE600
    //procedure sub_004AE644(?:?; ?:?; ?:?);//004AE644
    //function sub_004AE6FC(?:?; ?:?):?;//004AE6FC
    //procedure sub_004AE730(?:?);//004AE730
    //procedure sub_004AE8D8(?:?);//004AE8D8
    //function sub_004AE914(?:?; ?:?; ?:?):?;//004AE914
    //procedure sub_004AEA54(?:?; ?:?; ?:?);//004AEA54
    //procedure sub_004AEABC(?:?; ?:?; ?:?);//004AEABC
    //procedure sub_004AEB24(?:?; ?:?; ?:?; ?:?);//004AEB24
    //procedure sub_004AECBC(?:?; ?:?; ?:?);//004AECBC
    //procedure sub_004AED08(?:?; ?:?; ?:?);//004AED08
    //procedure sub_004AED54(?:?; ?:?; ?:?);//004AED54
    //procedure sub_004AEDB0(?:?; ?:?; ?:?);//004AEDB0
    //procedure sub_004AEF5C(?:?; ?:?; ?:?);//004AEF5C
    //procedure sub_004AF188(?:?; ?:?; ?:?);//004AF188
    //procedure sub_004AF1F0(?:?; ?:?; ?:?);//004AF1F0
    //procedure sub_004AF248(?:?; ?:?; ?:?);//004AF248
    //procedure sub_004AF284(?:?; ?:?; ?:?);//004AF284
    //procedure sub_004AF2C0(?:?; ?:?; ?:?);//004AF2C0
    //procedure sub_004AF368(?:?; ?:?; ?:?);//004AF368
    //procedure sub_004AF604(?:?; ?:?; ?:?);//004AF604
    //procedure sub_004AF86C(?:?; ?:?; ?:?);//004AF86C
    //procedure sub_004AF8C8(?:?; ?:?; ?:?);//004AF8C8
    //procedure sub_004AF964(?:?; ?:?; ?:?);//004AF964
    //procedure sub_004AF9A0(?:?; ?:?; ?:?);//004AF9A0
    //procedure sub_004AF9E0(?:?; ?:?; ?:?);//004AF9E0
    //procedure sub_004AFA20(?:?; ?:?; ?:?);//004AFA20
    //procedure sub_004AFB54(?:?; ?:?; ?:?);//004AFB54
    //function sub_004AFDF4(?:?; ?:?; ?:?):?;//004AFDF4
    //procedure sub_004AFEB4(?:?; ?:?);//004AFEB4
    //procedure sub_004AFFB4(?:?; ?:?; ?:?);//004AFFB4
    //procedure sub_004B0068(?:?; ?:?);//004B0068
    //procedure sub_004B0164(?:?; ?:?);//004B0164
    //procedure sub_004B01CC(?:?; ?:?);//004B01CC
    //procedure sub_004B02C8(?:?; ?:?);//004B02C8
    //procedure sub_004B0440(?:?; ?:?);//004B0440
    //procedure sub_004B04C0(?:?; ?:?);//004B04C0
    //procedure sub_004B0644(?:?; ?:?);//004B0644
    //function sub_004B06E0(?:?; ?:?):?;//004B06E0
    //procedure sub_004B07AC(?:?; ?:?);//004B07AC
    //procedure sub_004B0894(?:?; ?:?; ?:?);//004B0894
    //function sub_004B0924(?:?; ?:?; ?:?; ?:?):?;//004B0924
    //procedure sub_004B0D00(?:?; ?:?; ?:?);//004B0D00
    //function sub_004B1080(?:?; ?:?):?;//004B1080
    //function sub_004B10DC(?:TSaveIDCDialog; ?:?; ?:?):?;//004B10DC
    //function sub_004B1170(?:TOpenOptions; ?:?):?;//004B1170
    //procedure sub_004B11C0(?:?);//004B11C0

implementation

//004ADFB0
{*function sub_004ADFB0(?:?; ?:?; ?:?):?;
begin
 004ADFB0    push        ebp
 004ADFB1    mov         ebp,esp
 004ADFB3    add         esp,0FFFFFFC8
 004ADFB6    mov         dword ptr [ebp-38],ecx
 004ADFB9    mov         dword ptr [ebp-34],edx
 004ADFBC    mov         dword ptr [ebp-4],eax
 004ADFBF    mov         eax,6C4678
 004ADFC4    call        0066FECC
 004ADFC9    mov         word ptr [ebp-20],8
 004ADFCF    mov         eax,dword ptr [ebp-4]
 004ADFD2    add         eax,4
 004ADFD5    call        00401EA8
 004ADFDA    inc         dword ptr [ebp-14]
 004ADFDD    mov         eax,dword ptr [ebp-4]
 004ADFE0    add         eax,8
 004ADFE3    call        00401EA8
 004ADFE8    inc         dword ptr [ebp-14]
 004ADFEB    mov         edx,dword ptr [ebp-4]
 004ADFEE    mov         ecx,dword ptr [ebp-34]
 004ADFF1    mov         dword ptr [edx],ecx
 004ADFF3    mov         word ptr [ebp-20],14
 004ADFF9    mov         edx,6C3F84
 004ADFFE    lea         eax,[ebp-8]
 004AE001    call        0067DAB4
 004AE006    inc         dword ptr [ebp-14]
 004AE009    lea         edx,[ebp-8]
 004AE00C    mov         eax,dword ptr [ebp-4]
 004AE00F    add         eax,4
 004AE012    call        0067DCD0
 004AE017    dec         dword ptr [ebp-14]
 004AE01A    lea         eax,[ebp-8]
 004AE01D    mov         edx,2
 004AE022    call        0067DCA0
 004AE027    mov         word ptr [ebp-20],20
 004AE02D    mov         edx,6C3F85
 004AE032    lea         eax,[ebp-0C]
 004AE035    call        0067DAB4
 004AE03A    inc         dword ptr [ebp-14]
 004AE03D    lea         edx,[ebp-0C]
 004AE040    mov         eax,dword ptr [ebp-4]
 004AE043    add         eax,8
 004AE046    call        0067DCD0
 004AE04B    dec         dword ptr [ebp-14]
 004AE04E    lea         eax,[ebp-0C]
 004AE051    mov         edx,2
 004AE056    call        0067DCA0
 004AE05B    mov         dl,1
 004AE05D    mov         eax,[006428B0];TStringList
 004AE062    call        0040BB0C
 004AE067    mov         ecx,dword ptr [ebp-4]
 004AE06A    mov         dword ptr [ecx+0C],eax
 004AE06D    mov         dl,1
 004AE06F    mov         eax,[006422A4];TList
 004AE074    call        00413424
 004AE079    mov         ecx,dword ptr [ebp-4]
 004AE07C    mov         dword ptr [ecx+10],eax
 004AE07F    mov         eax,dword ptr [ebp-4]
 004AE082    mov         edx,dword ptr [ebp-38]
 004AE085    mov         dword ptr [eax+14],edx
 004AE088    mov         ecx,dword ptr [ebp-4]
 004AE08B    mov         dword ptr [ecx+18],1
 004AE092    mov         eax,dword ptr [ebp-4]
 004AE095    xor         edx,edx
 004AE097    mov         dword ptr [eax+1C],edx
 004AE09A    mov         ecx,dword ptr [ebp-30]
 004AE09D    mov         dword ptr fs:[0],ecx
 004AE0A4    mov         eax,dword ptr [ebp-4]
 004AE0A7    mov         esp,ebp
 004AE0A9    pop         ebp
 004AE0AA    ret
end;*}

//004AE0AC
{*procedure sub_004AE0AC(?:?; ?:?);
begin
 004AE0AC    push        ebp
 004AE0AD    mov         ebp,esp
 004AE0AF    add         esp,0FFFFFFC4
 004AE0B2    mov         dword ptr [ebp-3C],edx
 004AE0B5    mov         dword ptr [ebp-4],eax
 004AE0B8    mov         eax,6C46D4
 004AE0BD    call        0066FECC
 004AE0C2    mov         dword ptr [ebp-1C],2
 004AE0C9    mov         edx,dword ptr [ebp-4]
 004AE0CC    test        edx,edx
>004AE0CE    je          004AE171
 004AE0D4    mov         word ptr [ebp-28],8
 004AE0DA    mov         ecx,dword ptr [ebp-4]
 004AE0DD    mov         eax,dword ptr [ecx+0C]
 004AE0E0    mov         dword ptr [ebp-0C],eax
 004AE0E3    mov         edx,dword ptr [ebp-0C]
 004AE0E6    test        edx,edx
>004AE0E8    je          004AE10B
 004AE0EA    mov         ecx,dword ptr [ebp-0C]
 004AE0ED    mov         eax,dword ptr [ecx]
 004AE0EF    mov         dword ptr [ebp-8],eax
 004AE0F2    mov         word ptr [ebp-28],20
 004AE0F8    mov         edx,3
 004AE0FD    mov         eax,dword ptr [ebp-0C]
 004AE100    mov         ecx,dword ptr [eax]
 004AE102    call        dword ptr [ecx-4]
 004AE105    mov         word ptr [ebp-28],14
 004AE10B    mov         edx,dword ptr [ebp-4]
 004AE10E    mov         eax,dword ptr [edx+10]
 004AE111    mov         dword ptr [ebp-14],eax
 004AE114    mov         edx,dword ptr [ebp-14]
 004AE117    test        edx,edx
>004AE119    je          004AE13C
 004AE11B    mov         ecx,dword ptr [ebp-14]
 004AE11E    mov         eax,dword ptr [ecx]
 004AE120    mov         dword ptr [ebp-10],eax
 004AE123    mov         word ptr [ebp-28],38
 004AE129    mov         edx,3
 004AE12E    mov         eax,dword ptr [ebp-14]
 004AE131    mov         ecx,dword ptr [eax]
 004AE133    call        dword ptr [ecx-4]
 004AE136    mov         word ptr [ebp-28],2C
 004AE13C    dec         dword ptr [ebp-1C]
 004AE13F    mov         eax,dword ptr [ebp-4]
 004AE142    add         eax,8
 004AE145    mov         edx,2
 004AE14A    call        0067DCA0
 004AE14F    dec         dword ptr [ebp-1C]
 004AE152    mov         eax,dword ptr [ebp-4]
 004AE155    add         eax,4
 004AE158    mov         edx,2
 004AE15D    call        0067DCA0
 004AE162    test        byte ptr [ebp-3C],1
>004AE166    je          004AE171
 004AE168    push        dword ptr [ebp-4]
 004AE16B    call        0066EAB0
 004AE170    pop         ecx
 004AE171    mov         ecx,dword ptr [ebp-38]
 004AE174    mov         dword ptr fs:[0],ecx
 004AE17B    mov         esp,ebp
 004AE17D    pop         ebp
 004AE17E    ret
end;*}

//004AE180
{*procedure sub_004AE180(?:?; ?:?);
begin
 004AE180    push        ebp
 004AE181    mov         ebp,esp
 004AE183    add         esp,0FFFFFFF8
 004AE186    mov         dword ptr [ebp-8],edx
 004AE189    mov         dword ptr [ebp-4],eax
 004AE18C    mov         eax,dword ptr [ebp-8]
 004AE18F    mov         edx,dword ptr [ebp-4]
 004AE192    mov         dword ptr [edx],eax
 004AE194    mov         ecx,dword ptr [ebp-4]
 004AE197    xor         eax,eax
 004AE199    mov         dword ptr [ecx+1C],eax
 004AE19C    mov         edx,dword ptr [ebp-4]
 004AE19F    inc         dword ptr [edx+18]
 004AE1A2    pop         ecx
 004AE1A3    pop         ecx
 004AE1A4    pop         ebp
 004AE1A5    ret
end;*}

//004AE1A8
{*procedure sub_004AE1A8(?:?; ?:?);
begin
 004AE1A8    push        ebp
 004AE1A9    mov         ebp,esp
 004AE1AB    add         esp,0FFFFFFF4
 004AE1AE    mov         dword ptr [ebp-8],edx
 004AE1B1    mov         dword ptr [ebp-4],eax
 004AE1B4    mov         eax,dword ptr [ebp-8]
 004AE1B7    call        00531360
 004AE1BC    mov         dword ptr [ebp-0C],eax
 004AE1BF    push        dword ptr [ebp-0C]
 004AE1C2    push        6C3F86
 004AE1C7    mov         edx,dword ptr [ebp-4]
 004AE1CA    push        dword ptr [edx]
 004AE1CC    call        00671CF4
 004AE1D1    add         esp,0C
 004AE1D4    mov         ecx,dword ptr [ebp-4]
 004AE1D7    add         dword ptr [ecx+1C],eax
 004AE1DA    push        dword ptr [ebp-0C]
 004AE1DD    push        6C3F9B
 004AE1E2    mov         eax,dword ptr [ebp-4]
 004AE1E5    push        dword ptr [eax]
 004AE1E7    call        00671CF4
 004AE1EC    add         esp,0C
 004AE1EF    mov         edx,dword ptr [ebp-4]
 004AE1F2    add         dword ptr [edx+1C],eax
 004AE1F5    mov         esp,ebp
 004AE1F7    pop         ebp
 004AE1F8    ret
end;*}

//004AE1FC
{*function sub_004AE1FC(?:?; ?:?):?;
begin
 004AE1FC    push        ebp
 004AE1FD    mov         ebp,esp
 004AE1FF    add         esp,0FFFFFFF8
 004AE202    mov         dword ptr [ebp-8],edx
 004AE205    mov         dword ptr [ebp-4],eax
 004AE208    mov         eax,dword ptr [ebp-8]
 004AE20B    call        00531360
 004AE210    push        eax
 004AE211    push        6C3FB6
 004AE216    mov         edx,dword ptr [ebp-4]
 004AE219    push        dword ptr [edx]
 004AE21B    call        00671CF4
 004AE220    add         esp,0C
 004AE223    mov         ecx,dword ptr [ebp-4]
 004AE226    add         dword ptr [ecx+1C],eax
 004AE229    mov         eax,dword ptr [ebp-8]
 004AE22C    inc         eax
 004AE22D    pop         ecx
 004AE22E    pop         ecx
 004AE22F    pop         ebp
 004AE230    ret
end;*}

//004AE234
{*function sub_004AE234(?:?; ?:?):?;
begin
 004AE234    push        ebp
 004AE235    mov         ebp,esp
 004AE237    add         esp,0FFFFFFF8
 004AE23A    mov         dword ptr [ebp-8],edx
 004AE23D    mov         dword ptr [ebp-4],eax
 004AE240    mov         eax,dword ptr [ebp-8]
 004AE243    call        00531360
 004AE248    push        eax
 004AE249    push        6C3FC8
 004AE24E    mov         edx,dword ptr [ebp-4]
 004AE251    push        dword ptr [edx]
 004AE253    call        00671CF4
 004AE258    add         esp,0C
 004AE25B    mov         ecx,dword ptr [ebp-4]
 004AE25E    add         dword ptr [ecx+1C],eax
 004AE261    mov         eax,dword ptr [ebp-8]
 004AE264    add         eax,2
 004AE267    pop         ecx
 004AE268    pop         ecx
 004AE269    pop         ebp
 004AE26A    ret
end;*}

//004AE26C
{*function sub_004AE26C(?:?; ?:?):?;
begin
 004AE26C    push        ebp
 004AE26D    mov         ebp,esp
 004AE26F    add         esp,0FFFFFFF8
 004AE272    mov         dword ptr [ebp-8],edx
 004AE275    mov         dword ptr [ebp-4],eax
 004AE278    mov         eax,dword ptr [ebp-8]
 004AE27B    call        00531360
 004AE280    push        eax
 004AE281    push        6C3FDA
 004AE286    mov         edx,dword ptr [ebp-4]
 004AE289    push        dword ptr [edx]
 004AE28B    call        00671CF4
 004AE290    add         esp,0C
 004AE293    mov         ecx,dword ptr [ebp-4]
 004AE296    add         dword ptr [ecx+1C],eax
 004AE299    mov         eax,dword ptr [ebp-8]
 004AE29C    add         eax,4
 004AE29F    pop         ecx
 004AE2A0    pop         ecx
 004AE2A1    pop         ebp
 004AE2A2    ret
end;*}

//004AE2A4
{*function sub_004AE2A4(?:?; ?:?):?;
begin
 004AE2A4    push        ebp
 004AE2A5    mov         ebp,esp
 004AE2A7    add         esp,0FFFFFFF8
 004AE2AA    mov         dword ptr [ebp-8],edx
 004AE2AD    mov         dword ptr [ebp-4],eax
 004AE2B0    mov         eax,dword ptr [ebp-8]
 004AE2B3    call        00531360
 004AE2B8    push        eax
 004AE2B9    push        6C3FED
 004AE2BE    mov         edx,dword ptr [ebp-4]
 004AE2C1    push        dword ptr [edx]
 004AE2C3    call        00671CF4
 004AE2C8    add         esp,0C
 004AE2CB    mov         ecx,dword ptr [ebp-4]
 004AE2CE    add         dword ptr [ecx+1C],eax
 004AE2D1    mov         eax,dword ptr [ebp-8]
 004AE2D4    add         eax,8
 004AE2D7    pop         ecx
 004AE2D8    pop         ecx
 004AE2D9    pop         ebp
 004AE2DA    ret
end;*}

//004AE2DC
{*function sub_004AE2DC(?:?; ?:?; ?:?):?;
begin
 004AE2DC    push        ebp
 004AE2DD    mov         ebp,esp
 004AE2DF    add         esp,0FFFFFFF4
 004AE2E2    mov         dword ptr [ebp-0C],ecx
 004AE2E5    mov         dword ptr [ebp-8],edx
 004AE2E8    mov         dword ptr [ebp-4],eax
 004AE2EB    mov         eax,dword ptr [ebp-8]
 004AE2EE    call        00531360
 004AE2F3    push        eax
 004AE2F4    push        6C4000
 004AE2F9    mov         edx,dword ptr [ebp-4]
 004AE2FC    push        dword ptr [edx]
 004AE2FE    call        00671CF4
 004AE303    add         esp,0C
 004AE306    mov         ecx,dword ptr [ebp-4]
 004AE309    add         dword ptr [ecx+1C],eax
 004AE30C    push        dword ptr [ebp-0C]
 004AE30F    mov         eax,dword ptr [ebp-8]
 004AE312    call        00531360
 004AE317    push        eax
 004AE318    push        6C4012
 004AE31D    mov         edx,dword ptr [ebp-4]
 004AE320    push        dword ptr [edx]
 004AE322    call        00671CF4
 004AE327    add         esp,10
 004AE32A    mov         ecx,dword ptr [ebp-4]
 004AE32D    add         dword ptr [ecx+1C],eax
 004AE330    mov         eax,dword ptr [ebp-8]
 004AE333    mov         edx,dword ptr [ebp-0C]
 004AE336    add         eax,edx
 004AE338    mov         esp,ebp
 004AE33A    pop         ebp
 004AE33B    ret
end;*}

//004AE33C
{*function sub_004AE33C(?:?; ?:?):?;
begin
 004AE33C    push        ebp
 004AE33D    mov         ebp,esp
 004AE33F    add         esp,0FFFFFFF4
 004AE342    mov         dword ptr [ebp-8],edx
 004AE345    mov         dword ptr [ebp-4],eax
 004AE348    mov         eax,[006941D4];0x0 gvar_006941D4
 004AE34D    mov         edx,dword ptr [ebp-8]
 004AE350    mov         cl,byte ptr [eax+edx]
 004AE353    mov         byte ptr [ebp-9],cl
 004AE356    mov         al,byte ptr [ebp-9]
 004AE359    test        al,al
>004AE35B    jne         004AE363
 004AE35D    mov         eax,dword ptr [ebp-8]
 004AE360    inc         eax
>004AE361    jmp         004AE3CF
 004AE363    mov         edx,dword ptr [ebp-8]
 004AE366    inc         edx
 004AE367    xor         eax,eax
 004AE369    mov         al,byte ptr [ebp-9]
 004AE36C    call        00535AA0
 004AE371    test        al,al
>004AE373    jne         004AE37A
 004AE375    mov         eax,dword ptr [ebp-8]
>004AE378    jmp         004AE3CF
 004AE37A    push        6C4029
 004AE37F    mov         edx,dword ptr [ebp-4]
 004AE382    push        dword ptr [edx]
 004AE384    call        00671CF4
 004AE389    add         esp,8
 004AE38C    mov         ecx,dword ptr [ebp-4]
 004AE38F    add         dword ptr [ecx+1C],eax
 004AE392    mov         eax,dword ptr [ebp-8]
 004AE395    call        00531360
 004AE39A    xor         edx,edx
 004AE39C    mov         dl,byte ptr [ebp-9]
 004AE39F    add         eax,edx
 004AE3A1    inc         eax
 004AE3A2    push        eax
 004AE3A3    mov         eax,dword ptr [ebp-8]
 004AE3A6    call        00531360
 004AE3AB    push        eax
 004AE3AC    push        6C4052
 004AE3B1    mov         edx,dword ptr [ebp-4]
 004AE3B4    push        dword ptr [edx]
 004AE3B6    call        00671CF4
 004AE3BB    add         esp,10
 004AE3BE    mov         ecx,dword ptr [ebp-4]
 004AE3C1    add         dword ptr [ecx+1C],eax
 004AE3C4    xor         eax,eax
 004AE3C6    mov         al,byte ptr [ebp-9]
 004AE3C9    mov         edx,dword ptr [ebp-8]
 004AE3CC    add         eax,edx
 004AE3CE    inc         eax
 004AE3CF    mov         esp,ebp
 004AE3D1    pop         ebp
 004AE3D2    ret
end;*}

//004AE3D4
{*procedure sub_004AE3D4(?:?; ?:?);
begin
 004AE3D4    push        ebp
 004AE3D5    mov         ebp,esp
 004AE3D7    add         esp,0FFFFFFF4
 004AE3DA    mov         dword ptr [ebp-8],edx
 004AE3DD    mov         dword ptr [ebp-4],eax
 004AE3E0    mov         eax,[006941D4];0x0 gvar_006941D4
 004AE3E5    mov         edx,dword ptr [ebp-8]
 004AE3E8    add         eax,edx
 004AE3EA    push        eax
 004AE3EB    call        0066FAB4
 004AE3F0    pop         ecx
 004AE3F1    mov         dword ptr [ebp-0C],eax
 004AE3F4    push        6C406A
 004AE3F9    mov         ecx,dword ptr [ebp-4]
 004AE3FC    push        dword ptr [ecx]
 004AE3FE    call        00671CF4
 004AE403    add         esp,8
 004AE406    mov         edx,dword ptr [ebp-4]
 004AE409    add         dword ptr [edx+1C],eax
 004AE40C    mov         eax,dword ptr [ebp-8]
 004AE40F    call        00531360
 004AE414    mov         ecx,dword ptr [ebp-0C]
 004AE417    add         eax,ecx
 004AE419    inc         eax
 004AE41A    push        eax
 004AE41B    mov         eax,dword ptr [ebp-8]
 004AE41E    call        00531360
 004AE423    push        eax
 004AE424    push        6C4094
 004AE429    mov         edx,dword ptr [ebp-4]
 004AE42C    push        dword ptr [edx]
 004AE42E    call        00671CF4
 004AE433    add         esp,10
 004AE436    mov         ecx,dword ptr [ebp-4]
 004AE439    add         dword ptr [ecx+1C],eax
 004AE43C    mov         eax,dword ptr [ebp-8]
 004AE43F    mov         edx,dword ptr [ebp-0C]
 004AE442    add         eax,edx
 004AE444    inc         eax
 004AE445    mov         esp,ebp
 004AE447    pop         ebp
 004AE448    ret
end;*}

//004AE44C
{*procedure sub_004AE44C(?:?; ?:?);
begin
 004AE44C    push        ebp
 004AE44D    mov         ebp,esp
 004AE44F    add         esp,0FFFFFFF8
 004AE452    mov         dword ptr [ebp-8],edx
 004AE455    mov         dword ptr [ebp-4],eax
 004AE458    push        6C40AC
 004AE45D    mov         eax,dword ptr [ebp-4]
 004AE460    push        dword ptr [eax]
 004AE462    call        00671CF4
 004AE467    add         esp,8
 004AE46A    mov         edx,dword ptr [ebp-4]
 004AE46D    add         dword ptr [edx+1C],eax
 004AE470    mov         eax,dword ptr [ebp-8]
 004AE473    call        00531360
 004AE478    push        eax
 004AE479    push        6C40D6
 004AE47E    mov         edx,dword ptr [ebp-4]
 004AE481    push        dword ptr [edx]
 004AE483    call        00671CF4
 004AE488    add         esp,0C
 004AE48B    mov         ecx,dword ptr [ebp-4]
 004AE48E    add         dword ptr [ecx+1C],eax
 004AE491    mov         edx,dword ptr [ebp-8]
 004AE494    add         edx,0FFFFFFFC
 004AE497    mov         eax,dword ptr [ebp-4]
 004AE49A    call        004AE26C
 004AE49F    mov         edx,dword ptr [ebp-8]
 004AE4A2    add         edx,0FFFFFFF8
 004AE4A5    mov         eax,dword ptr [ebp-4]
 004AE4A8    call        004AE26C
 004AE4AD    pop         ecx
 004AE4AE    pop         ecx
 004AE4AF    pop         ebp
 004AE4B0    ret
end;*}

//004AE4B4
{*procedure sub_004AE4B4(?:?; ?:?);
begin
 004AE4B4    push        ebp
 004AE4B5    mov         ebp,esp
 004AE4B7    add         esp,0FFFFFFF8
 004AE4BA    mov         dword ptr [ebp-8],edx
 004AE4BD    mov         dword ptr [ebp-4],eax
 004AE4C0    push        6C40EB
 004AE4C5    mov         eax,dword ptr [ebp-4]
 004AE4C8    push        dword ptr [eax]
 004AE4CA    call        00671CF4
 004AE4CF    add         esp,8
 004AE4D2    mov         edx,dword ptr [ebp-4]
 004AE4D5    add         dword ptr [edx+1C],eax
 004AE4D8    mov         eax,dword ptr [ebp-8]
 004AE4DB    call        00531360
 004AE4E0    push        eax
 004AE4E1    push        6C4115
 004AE4E6    mov         edx,dword ptr [ebp-4]
 004AE4E9    push        dword ptr [edx]
 004AE4EB    call        00671CF4
 004AE4F0    add         esp,0C
 004AE4F3    mov         ecx,dword ptr [ebp-4]
 004AE4F6    add         dword ptr [ecx+1C],eax
 004AE4F9    mov         edx,dword ptr [ebp-8]
 004AE4FC    add         edx,0FFFFFFFC
 004AE4FF    mov         eax,dword ptr [ebp-4]
 004AE502    call        004AE26C
 004AE507    pop         ecx
 004AE508    pop         ecx
 004AE509    pop         ebp
 004AE50A    ret
end;*}

//004AE50C
{*procedure sub_004AE50C(?:?; ?:?);
begin
 004AE50C    push        ebp
 004AE50D    mov         ebp,esp
 004AE50F    add         esp,0FFFFFFF8
 004AE512    mov         dword ptr [ebp-8],edx
 004AE515    mov         dword ptr [ebp-4],eax
 004AE518    push        6C412A
 004AE51D    mov         eax,dword ptr [ebp-4]
 004AE520    push        dword ptr [eax]
 004AE522    call        00671CF4
 004AE527    add         esp,8
 004AE52A    mov         edx,dword ptr [ebp-4]
 004AE52D    add         dword ptr [edx+1C],eax
 004AE530    mov         eax,dword ptr [ebp-8]
 004AE533    call        00531360
 004AE538    push        eax
 004AE539    push        6C4154
 004AE53E    mov         edx,dword ptr [ebp-4]
 004AE541    push        dword ptr [edx]
 004AE543    call        00671CF4
 004AE548    add         esp,0C
 004AE54B    mov         ecx,dword ptr [ebp-4]
 004AE54E    add         dword ptr [ecx+1C],eax
 004AE551    mov         edx,dword ptr [ebp-8]
 004AE554    add         edx,0FFFFFFFC
 004AE557    mov         eax,dword ptr [ebp-4]
 004AE55A    call        004AE26C
 004AE55F    mov         edx,dword ptr [ebp-8]
 004AE562    add         edx,0FFFFFFF8
 004AE565    mov         eax,dword ptr [ebp-4]
 004AE568    call        004AE26C
 004AE56D    mov         edx,dword ptr [ebp-8]
 004AE570    add         edx,0FFFFFFF6
 004AE573    mov         eax,dword ptr [ebp-4]
 004AE576    call        004AE234
 004AE57B    mov         edx,dword ptr [ebp-8]
 004AE57E    add         edx,0FFFFFFF4
 004AE581    mov         eax,dword ptr [ebp-4]
 004AE584    call        004AE234
 004AE589    pop         ecx
 004AE58A    pop         ecx
 004AE58B    pop         ebp
 004AE58C    ret
end;*}

//004AE590
{*function sub_004AE590(?:?; ?:?):?;
begin
 004AE590    push        ebp
 004AE591    mov         ebp,esp
 004AE593    add         esp,0FFFFFF40
 004AE599    mov         dword ptr [ebp-8],edx
 004AE59C    mov         dword ptr [ebp-4],eax
 004AE59F    mov         eax,dword ptr [ebp-8]
 004AE5A2    call        00531360
 004AE5A7    push        eax
 004AE5A8    push        6C4169
 004AE5AD    mov         edx,dword ptr [ebp-4]
 004AE5B0    push        dword ptr [edx]
 004AE5B2    call        00671CF4
 004AE5B7    add         esp,0C
 004AE5BA    mov         ecx,dword ptr [ebp-4]
 004AE5BD    add         dword ptr [ecx+1C],eax
 004AE5C0    mov         eax,dword ptr [ebp-8]
 004AE5C3    call        00531360
 004AE5C8    xor         edx,edx
 004AE5CA    push        edx
 004AE5CB    push        eax
 004AE5CC    push        0
 004AE5CE    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AE5D4    mov         eax,dword ptr [ebp-8]
 004AE5D7    add         edx,eax
 004AE5D9    mov         eax,6ECAB0
 004AE5DE    xor         ecx,ecx
 004AE5E0    call        004749C0
 004AE5E5    mov         dword ptr [ebp-0C],eax
 004AE5E8    mov         edx,dword ptr [ebp-0C]
 004AE5EB    test        edx,edx
>004AE5ED    jne         004AE5F6
 004AE5EF    mov         dword ptr [ebp-0C],1
 004AE5F6    mov         eax,dword ptr [ebp-0C]
 004AE5F9    mov         esp,ebp
 004AE5FB    pop         ebp
 004AE5FC    ret
end;*}

//004AE600
{*procedure sub_004AE600(?:?; ?:?);
begin
 004AE600    push        ebp
 004AE601    mov         ebp,esp
 004AE603    add         esp,0FFFFFFF8
 004AE606    mov         dword ptr [ebp-8],edx
 004AE609    mov         dword ptr [ebp-4],eax
 004AE60C    mov         eax,dword ptr [ebp-8]
 004AE60F    test        eax,eax
>004AE611    je          004AE640
 004AE613    push        dword ptr [ebp-8]
 004AE616    push        6C417B
 004AE61B    mov         edx,dword ptr [ebp-4]
 004AE61E    push        dword ptr [edx]
 004AE620    call        00671CF4
 004AE625    add         esp,0C
 004AE628    mov         ecx,dword ptr [ebp-4]
 004AE62B    add         dword ptr [ecx+1C],eax
 004AE62E    mov         eax,dword ptr [ebp-8]
 004AE631    call        005312C8
 004AE636    mov         edx,eax
 004AE638    mov         eax,dword ptr [ebp-4]
 004AE63B    call        004AE590
 004AE640    pop         ecx
 004AE641    pop         ecx
 004AE642    pop         ebp
 004AE643    ret
end;*}

//004AE644
{*procedure sub_004AE644(?:?; ?:?; ?:?);
begin
 004AE644    push        ebp
 004AE645    mov         ebp,esp
 004AE647    add         esp,0FFFFFFCC
 004AE64A    mov         dword ptr [ebp-4],ecx
 004AE64D    mov         dword ptr [ebp-34],edx
 004AE650    mov         dword ptr [ebp-30],eax
 004AE653    mov         eax,6C4738
 004AE658    call        0066FECC
 004AE65D    mov         dword ptr [ebp-10],1
 004AE664    lea         edx,[ebp-4]
 004AE667    lea         eax,[ebp-4]
 004AE66A    call        0067DAEC
 004AE66F    inc         dword ptr [ebp-10]
 004AE672    mov         word ptr [ebp-1C],8
 004AE678    mov         word ptr [ebp-1C],14
 004AE67E    lea         eax,[ebp-8]
 004AE681    call        00401EA8
 004AE686    push        eax
 004AE687    inc         dword ptr [ebp-10]
 004AE68A    lea         eax,[ebp-4]
 004AE68D    call        00405290
 004AE692    push        eax
 004AE693    lea         eax,[ebp-4]
 004AE696    call        00403C0C
 004AE69B    pop         edx
 004AE69C    pop         ecx
 004AE69D    call        005363EC
 004AE6A2    lea         eax,[ebp-8]
 004AE6A5    call        00403C0C
 004AE6AA    push        eax
 004AE6AB    mov         eax,dword ptr [ebp-34]
 004AE6AE    call        00531360
 004AE6B3    push        eax
 004AE6B4    push        6C4195
 004AE6B9    mov         edx,dword ptr [ebp-30]
 004AE6BC    push        dword ptr [edx]
 004AE6BE    call        00671CF4
 004AE6C3    add         esp,10
 004AE6C6    mov         ecx,dword ptr [ebp-30]
 004AE6C9    add         dword ptr [ecx+1C],eax
 004AE6CC    dec         dword ptr [ebp-10]
 004AE6CF    lea         eax,[ebp-8]
 004AE6D2    mov         edx,2
 004AE6D7    call        0067DCA0
 004AE6DC    dec         dword ptr [ebp-10]
 004AE6DF    lea         eax,[ebp-4]
 004AE6E2    mov         edx,2
 004AE6E7    call        0067DCA0
 004AE6EC    mov         ecx,dword ptr [ebp-2C]
 004AE6EF    mov         dword ptr fs:[0],ecx
 004AE6F6    mov         esp,ebp
 004AE6F8    pop         ebp
 004AE6F9    ret
end;*}

//004AE6FC
{*function sub_004AE6FC(?:?; ?:?):?;
begin
 004AE6FC    push        ebp
 004AE6FD    mov         ebp,esp
 004AE6FF    add         esp,0FFFFFFF4
 004AE702    mov         dword ptr [ebp-8],edx
 004AE705    mov         dword ptr [ebp-4],eax
 004AE708    mov         eax,[006941D4];0x0 gvar_006941D4
 004AE70D    mov         edx,dword ptr [ebp-8]
 004AE710    mov         cx,word ptr [eax+edx]
 004AE714    mov         word ptr [ebp-0A],cx
 004AE718    mov         edx,dword ptr [ebp-8]
 004AE71B    mov         eax,dword ptr [ebp-4]
 004AE71E    call        004AE234
 004AE723    mov         dword ptr [ebp-8],eax
 004AE726    mov         eax,dword ptr [ebp-8]
 004AE729    mov         esp,ebp
 004AE72B    pop         ebp
 004AE72C    ret
end;*}

//004AE730
{*procedure sub_004AE730(?:?);
begin
 004AE730    push        ebp
 004AE731    mov         ebp,esp
 004AE733    push        ecx
 004AE734    mov         dword ptr [ebp-4],eax
 004AE737    push        6C41AD
 004AE73C    mov         eax,dword ptr [ebp-4]
 004AE73F    push        dword ptr [eax]
 004AE741    call        00671CF4
 004AE746    add         esp,8
 004AE749    mov         edx,dword ptr [ebp-4]
 004AE74C    add         dword ptr [edx+1C],eax
 004AE74F    push        6C41C1
 004AE754    mov         ecx,dword ptr [ebp-4]
 004AE757    push        dword ptr [ecx]
 004AE759    call        00671CF4
 004AE75E    add         esp,8
 004AE761    mov         edx,dword ptr [ebp-4]
 004AE764    add         dword ptr [edx+1C],eax
 004AE767    push        6C41D6
 004AE76C    mov         eax,dword ptr [ebp-4]
 004AE76F    push        dword ptr [eax]
 004AE771    call        00671CF4
 004AE776    add         esp,8
 004AE779    mov         ecx,dword ptr [ebp-4]
 004AE77C    add         dword ptr [ecx+1C],eax
 004AE77F    push        6C41E0
 004AE784    mov         eax,dword ptr [ebp-4]
 004AE787    push        dword ptr [eax]
 004AE789    call        00671CF4
 004AE78E    add         esp,8
 004AE791    mov         edx,dword ptr [ebp-4]
 004AE794    add         dword ptr [edx+1C],eax
 004AE797    push        6C41EC
 004AE79C    mov         ecx,dword ptr [ebp-4]
 004AE79F    push        dword ptr [ecx]
 004AE7A1    call        00671CF4
 004AE7A6    add         esp,8
 004AE7A9    mov         edx,dword ptr [ebp-4]
 004AE7AC    add         dword ptr [edx+1C],eax
 004AE7AF    push        6C41F8
 004AE7B4    mov         eax,dword ptr [ebp-4]
 004AE7B7    push        dword ptr [eax]
 004AE7B9    call        00671CF4
 004AE7BE    add         esp,8
 004AE7C1    mov         ecx,dword ptr [ebp-4]
 004AE7C4    add         dword ptr [ecx+1C],eax
 004AE7C7    push        6C4210
 004AE7CC    mov         eax,dword ptr [ebp-4]
 004AE7CF    push        dword ptr [eax]
 004AE7D1    call        00671CF4
 004AE7D6    add         esp,8
 004AE7D9    mov         edx,dword ptr [ebp-4]
 004AE7DC    add         dword ptr [edx+1C],eax
 004AE7DF    push        6C4226
 004AE7E4    mov         ecx,dword ptr [ebp-4]
 004AE7E7    push        dword ptr [ecx]
 004AE7E9    call        00671CF4
 004AE7EE    add         esp,8
 004AE7F1    mov         edx,dword ptr [ebp-4]
 004AE7F4    add         dword ptr [edx+1C],eax
 004AE7F7    push        6C4238
 004AE7FC    mov         eax,dword ptr [ebp-4]
 004AE7FF    push        dword ptr [eax]
 004AE801    call        00671CF4
 004AE806    add         esp,8
 004AE809    mov         ecx,dword ptr [ebp-4]
 004AE80C    add         dword ptr [ecx+1C],eax
 004AE80F    push        6C4251
 004AE814    mov         eax,dword ptr [ebp-4]
 004AE817    push        dword ptr [eax]
 004AE819    call        00671CF4
 004AE81E    add         esp,8
 004AE821    mov         edx,dword ptr [ebp-4]
 004AE824    add         dword ptr [edx+1C],eax
 004AE827    push        6C425D
 004AE82C    mov         ecx,dword ptr [ebp-4]
 004AE82F    push        dword ptr [ecx]
 004AE831    call        00671CF4
 004AE836    add         esp,8
 004AE839    mov         edx,dword ptr [ebp-4]
 004AE83C    add         dword ptr [edx+1C],eax
 004AE83F    push        6C4269
 004AE844    mov         eax,dword ptr [ebp-4]
 004AE847    push        dword ptr [eax]
 004AE849    call        00671CF4
 004AE84E    add         esp,8
 004AE851    mov         ecx,dword ptr [ebp-4]
 004AE854    add         dword ptr [ecx+1C],eax
 004AE857    push        6C429C
 004AE85C    mov         eax,dword ptr [ebp-4]
 004AE85F    push        dword ptr [eax]
 004AE861    call        00671CF4
 004AE866    add         esp,8
 004AE869    mov         edx,dword ptr [ebp-4]
 004AE86C    add         dword ptr [edx+1C],eax
 004AE86F    push        6C42B2
 004AE874    mov         ecx,dword ptr [ebp-4]
 004AE877    push        dword ptr [ecx]
 004AE879    call        00671CF4
 004AE87E    add         esp,8
 004AE881    mov         edx,dword ptr [ebp-4]
 004AE884    add         dword ptr [edx+1C],eax
 004AE887    push        6C42C5
 004AE88C    mov         eax,dword ptr [ebp-4]
 004AE88F    push        dword ptr [eax]
 004AE891    call        00671CF4
 004AE896    add         esp,8
 004AE899    mov         ecx,dword ptr [ebp-4]
 004AE89C    add         dword ptr [ecx+1C],eax
 004AE89F    push        6C42C8
 004AE8A4    mov         eax,dword ptr [ebp-4]
 004AE8A7    push        dword ptr [eax]
 004AE8A9    call        00671CF4
 004AE8AE    add         esp,8
 004AE8B1    mov         edx,dword ptr [ebp-4]
 004AE8B4    add         dword ptr [edx+1C],eax
 004AE8B7    push        dword ptr ds:[6ECB50];gvar_006ECB50
 004AE8BD    push        6C42D8
 004AE8C2    mov         ecx,dword ptr [ebp-4]
 004AE8C5    push        dword ptr [ecx]
 004AE8C7    call        00671CF4
 004AE8CC    add         esp,0C
 004AE8CF    mov         edx,dword ptr [ebp-4]
 004AE8D2    add         dword ptr [edx+1C],eax
 004AE8D5    pop         ecx
 004AE8D6    pop         ebp
 004AE8D7    ret
end;*}

//004AE8D8
{*procedure sub_004AE8D8(?:?);
begin
 004AE8D8    push        ebp
 004AE8D9    mov         ebp,esp
 004AE8DB    push        ecx
 004AE8DC    mov         dword ptr [ebp-4],eax
 004AE8DF    push        6C42E7
 004AE8E4    mov         eax,dword ptr [ebp-4]
 004AE8E7    push        dword ptr [eax]
 004AE8E9    call        00671CF4
 004AE8EE    add         esp,8
 004AE8F1    mov         edx,dword ptr [ebp-4]
 004AE8F4    add         dword ptr [edx+1C],eax
 004AE8F7    push        6C42FB
 004AE8FC    mov         ecx,dword ptr [ebp-4]
 004AE8FF    push        dword ptr [ecx]
 004AE901    call        00671CF4
 004AE906    add         esp,8
 004AE909    mov         edx,dword ptr [ebp-4]
 004AE90C    add         dword ptr [edx+1C],eax
 004AE90F    pop         ecx
 004AE910    pop         ebp
 004AE911    ret
end;*}

//004AE914
{*function sub_004AE914(?:?; ?:?; ?:?):?;
begin
 004AE914    push        ebp
 004AE915    mov         ebp,esp
 004AE917    add         esp,0FFFFFFBC
 004AE91A    mov         dword ptr [ebp-38],ecx
 004AE91D    mov         byte ptr [ebp-31],dl
 004AE920    mov         dword ptr [ebp-30],eax
 004AE923    mov         eax,6C4778
 004AE928    call        0066FECC
 004AE92D    mov         edx,dword ptr [ebp-38]
 004AE930    mov         dword ptr [ebp-3C],edx
 004AE933    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AE939    mov         eax,dword ptr [ebp-38]
 004AE93C    mov         dl,byte ptr [ecx+eax+5]
 004AE940    mov         byte ptr [ebp-3D],dl
 004AE943    mov         word ptr [ebp-1C],8
 004AE949    xor         ecx,ecx
 004AE94B    mov         cl,byte ptr [ebp-3D]
 004AE94E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AE954    mov         eax,dword ptr [ebp-38]
 004AE957    add         edx,eax
 004AE959    add         edx,6
 004AE95C    lea         eax,[ebp-4]
 004AE95F    call        0067DB28
 004AE964    mov         edx,eax
 004AE966    inc         dword ptr [ebp-10]
 004AE969    mov         eax,dword ptr [ebp-30]
 004AE96C    add         eax,8
 004AE96F    call        0067DCD0
 004AE974    dec         dword ptr [ebp-10]
 004AE977    lea         eax,[ebp-4]
 004AE97A    mov         edx,2
 004AE97F    call        0067DCA0
 004AE984    mov         eax,dword ptr [ebp-38]
 004AE987    call        00531360
 004AE98C    mov         dword ptr [ebp-44],eax
 004AE98F    push        dword ptr [ebp-44]
 004AE992    push        6C430B
 004AE997    mov         edx,dword ptr [ebp-30]
 004AE99A    push        dword ptr [edx]
 004AE99C    call        00671CF4
 004AE9A1    add         esp,0C
 004AE9A4    mov         ecx,dword ptr [ebp-30]
 004AE9A7    add         dword ptr [ecx+1C],eax
 004AE9AA    mov         eax,dword ptr [ebp-30]
 004AE9AD    add         eax,8
 004AE9B0    call        00403C0C
 004AE9B5    push        eax
 004AE9B6    mov         word ptr [ebp-1C],14
 004AE9BC    lea         eax,[ebp-8]
 004AE9BF    call        00401EA8
 004AE9C4    mov         edx,eax
 004AE9C6    inc         dword ptr [ebp-10]
 004AE9C9    mov         al,byte ptr [ebp-31]
 004AE9CC    call        00537190
 004AE9D1    lea         eax,[ebp-8]
 004AE9D4    call        00403C0C
 004AE9D9    push        eax
 004AE9DA    push        dword ptr [ebp-44]
 004AE9DD    push        dword ptr [ebp-44]
 004AE9E0    push        6C4320
 004AE9E5    mov         edx,dword ptr [ebp-30]
 004AE9E8    push        dword ptr [edx]
 004AE9EA    call        00671CF4
 004AE9EF    add         esp,18
 004AE9F2    mov         ecx,dword ptr [ebp-30]
 004AE9F5    add         dword ptr [ecx+1C],eax
 004AE9F8    dec         dword ptr [ebp-10]
 004AE9FB    lea         eax,[ebp-8]
 004AE9FE    mov         edx,2
 004AEA03    call        0067DCA0
 004AEA08    mov         edx,dword ptr [ebp-38]
 004AEA0B    mov         eax,dword ptr [ebp-30]
 004AEA0E    call        004AE26C
 004AEA13    mov         dword ptr [ebp-38],eax
 004AEA16    mov         edx,dword ptr [ebp-38]
 004AEA19    mov         eax,dword ptr [ebp-30]
 004AEA1C    call        004AE1A8
 004AEA21    mov         edx,dword ptr [ebp-38]
 004AEA24    mov         eax,dword ptr [ebp-30]
 004AEA27    call        004AE1FC
 004AEA2C    mov         dword ptr [ebp-38],eax
 004AEA2F    mov         edx,dword ptr [ebp-38]
 004AEA32    mov         eax,dword ptr [ebp-30]
 004AEA35    call        004AE33C
 004AEA3A    mov         dword ptr [ebp-38],eax
 004AEA3D    mov         eax,dword ptr [ebp-38]
 004AEA40    mov         edx,dword ptr [ebp-3C]
 004AEA43    sub         eax,edx
 004AEA45    mov         ecx,dword ptr [ebp-2C]
 004AEA48    mov         dword ptr fs:[0],ecx
 004AEA4F    mov         esp,ebp
 004AEA51    pop         ebp
 004AEA52    ret
end;*}

//004AEA54
{*procedure sub_004AEA54(?:?; ?:?; ?:?);
begin
 004AEA54    push        ebp
 004AEA55    mov         ebp,esp
 004AEA57    add         esp,0FFFFFFF4
 004AEA5A    mov         dword ptr [ebp-0C],ecx
 004AEA5D    mov         byte ptr [ebp-5],dl
 004AEA60    mov         dword ptr [ebp-4],eax
 004AEA63    mov         ecx,dword ptr [ebp-0C]
 004AEA66    mov         dl,byte ptr [ebp-5]
 004AEA69    mov         eax,dword ptr [ebp-4]
 004AEA6C    call        004AE914
 004AEA71    add         dword ptr [ebp-0C],eax
 004AEA74    mov         edx,dword ptr [ebp-0C]
 004AEA77    mov         eax,dword ptr [ebp-4]
 004AEA7A    call        004AE1FC
 004AEA7F    mov         dword ptr [ebp-0C],eax
 004AEA82    mov         edx,dword ptr [ebp-0C]
 004AEA85    mov         eax,dword ptr [ebp-4]
 004AEA88    call        004AE26C
 004AEA8D    mov         dword ptr [ebp-0C],eax
 004AEA90    mov         edx,dword ptr [ebp-0C]
 004AEA93    mov         eax,dword ptr [ebp-4]
 004AEA96    call        004AE26C
 004AEA9B    mov         dword ptr [ebp-0C],eax
 004AEA9E    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AEAA4    cmp         ecx,7DA
>004AEAAA    jl          004AEAB7
 004AEAAC    mov         edx,dword ptr [ebp-0C]
 004AEAAF    mov         eax,dword ptr [ebp-4]
 004AEAB2    call        004AE6FC
 004AEAB7    mov         esp,ebp
 004AEAB9    pop         ebp
 004AEABA    ret
end;*}

//004AEABC
{*procedure sub_004AEABC(?:?; ?:?; ?:?);
begin
 004AEABC    push        ebp
 004AEABD    mov         ebp,esp
 004AEABF    add         esp,0FFFFFFF4
 004AEAC2    mov         dword ptr [ebp-0C],ecx
 004AEAC5    mov         byte ptr [ebp-5],dl
 004AEAC8    mov         dword ptr [ebp-4],eax
 004AEACB    mov         ecx,dword ptr [ebp-0C]
 004AEACE    mov         dl,byte ptr [ebp-5]
 004AEAD1    mov         eax,dword ptr [ebp-4]
 004AEAD4    call        004AE914
 004AEAD9    add         dword ptr [ebp-0C],eax
 004AEADC    mov         edx,dword ptr [ebp-0C]
 004AEADF    mov         eax,dword ptr [ebp-4]
 004AEAE2    call        004AE1FC
 004AEAE7    mov         dword ptr [ebp-0C],eax
 004AEAEA    mov         edx,dword ptr [ebp-0C]
 004AEAED    mov         eax,dword ptr [ebp-4]
 004AEAF0    call        004AE26C
 004AEAF5    mov         dword ptr [ebp-0C],eax
 004AEAF8    mov         edx,dword ptr [ebp-0C]
 004AEAFB    mov         eax,dword ptr [ebp-4]
 004AEAFE    call        004AE26C
 004AEB03    mov         dword ptr [ebp-0C],eax
 004AEB06    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AEB0C    cmp         ecx,7DA
>004AEB12    jl          004AEB1F
 004AEB14    mov         edx,dword ptr [ebp-0C]
 004AEB17    mov         eax,dword ptr [ebp-4]
 004AEB1A    call        004AE6FC
 004AEB1F    mov         esp,ebp
 004AEB21    pop         ebp
 004AEB22    ret
end;*}

//004AEB24
{*procedure sub_004AEB24(?:?; ?:?; ?:?; ?:?);
begin
 004AEB24    push        ebp
 004AEB25    mov         ebp,esp
 004AEB27    add         esp,0FFFFFFB4
 004AEB2A    mov         dword ptr [ebp-3C],ecx
 004AEB2D    mov         byte ptr [ebp-35],dl
 004AEB30    mov         dword ptr [ebp-34],eax
 004AEB33    mov         eax,6C47C0
 004AEB38    call        0066FECC
 004AEB3D    mov         ecx,dword ptr [ebp-3C]
 004AEB40    mov         dl,byte ptr [ebp-35]
 004AEB43    mov         eax,dword ptr [ebp-34]
 004AEB46    call        004AE914
 004AEB4B    add         dword ptr [ebp-3C],eax
 004AEB4E    mov         edx,dword ptr [ebp-3C]
 004AEB51    mov         eax,dword ptr [ebp-34]
 004AEB54    call        004AE1FC
 004AEB59    mov         dword ptr [ebp-3C],eax
 004AEB5C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AEB62    mov         ecx,dword ptr [ebp-3C]
 004AEB65    mov         eax,dword ptr [edx+ecx]
 004AEB68    mov         dword ptr [ebp-40],eax
 004AEB6B    mov         edx,dword ptr [ebp-3C]
 004AEB6E    mov         eax,dword ptr [ebp-34]
 004AEB71    call        004AE26C
 004AEB76    mov         dword ptr [ebp-3C],eax
 004AEB79    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AEB7F    mov         ecx,dword ptr [ebp-3C]
 004AEB82    mov         eax,dword ptr [edx+ecx]
 004AEB85    mov         dword ptr [ebp-44],eax
 004AEB88    mov         edx,dword ptr [ebp-3C]
 004AEB8B    mov         eax,dword ptr [ebp-34]
 004AEB8E    call        004AE26C
 004AEB93    mov         dword ptr [ebp-3C],eax
 004AEB96    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AEB9C    mov         ecx,dword ptr [ebp-3C]
 004AEB9F    mov         eax,dword ptr [edx+ecx]
 004AEBA2    mov         dword ptr [ebp-48],eax
 004AEBA5    mov         edx,dword ptr [ebp-3C]
 004AEBA8    mov         eax,dword ptr [ebp-34]
 004AEBAB    call        004AE26C
 004AEBB0    mov         dword ptr [ebp-3C],eax
 004AEBB3    mov         edx,dword ptr [ebp-48]
 004AEBB6    mov         ecx,dword ptr [ebp+8]
 004AEBB9    cmp         edx,ecx
>004AEBBB    jne         004AECAC
 004AEBC1    mov         word ptr [ebp-20],8
 004AEBC7    mov         edx,6C4349
 004AEBCC    lea         eax,[ebp-4]
 004AEBCF    call        0067DAB4
 004AEBD4    inc         dword ptr [ebp-14]
 004AEBD7    mov         edx,dword ptr [eax]
 004AEBD9    mov         eax,dword ptr [ebp-34]
 004AEBDC    mov         eax,dword ptr [eax+8]
 004AEBDF    call        SameText
 004AEBE4    test        al,al
>004AEBE6    jne         004AEC62
 004AEBE8    mov         edx,6C4352
 004AEBED    lea         eax,[ebp-8]
 004AEBF0    call        0067DAB4
 004AEBF5    inc         dword ptr [ebp-14]
 004AEBF8    mov         edx,dword ptr [eax]
 004AEBFA    mov         ecx,dword ptr [ebp-34]
 004AEBFD    mov         eax,dword ptr [ecx+8]
 004AEC00    call        SameText
 004AEC05    test        al,al
 004AEC07    setne       dl
 004AEC0A    and         edx,1
 004AEC0D    push        edx
 004AEC0E    dec         dword ptr [ebp-14]
 004AEC11    lea         eax,[ebp-8]
 004AEC14    mov         edx,2
 004AEC19    call        0067DCA0
 004AEC1E    pop         ecx
 004AEC1F    test        ecx,ecx
>004AEC21    jne         004AEC62
 004AEC23    mov         edx,6C435B
 004AEC28    lea         eax,[ebp-0C]
 004AEC2B    call        0067DAB4
 004AEC30    inc         dword ptr [ebp-14]
 004AEC33    mov         edx,dword ptr [eax]
 004AEC35    mov         eax,dword ptr [ebp-34]
 004AEC38    mov         eax,dword ptr [eax+8]
 004AEC3B    call        SameText
 004AEC40    test        al,al
 004AEC42    setne       dl
 004AEC45    and         edx,1
 004AEC48    push        edx
 004AEC49    dec         dword ptr [ebp-14]
 004AEC4C    lea         eax,[ebp-0C]
 004AEC4F    mov         edx,2
 004AEC54    call        0067DCA0
 004AEC59    pop         ecx
 004AEC5A    test        ecx,ecx
>004AEC5C    jne         004AEC62
 004AEC5E    xor         eax,eax
>004AEC60    jmp         004AEC67
 004AEC62    mov         eax,1
 004AEC67    push        eax
 004AEC68    dec         dword ptr [ebp-14]
 004AEC6B    lea         eax,[ebp-4]
 004AEC6E    mov         edx,2
 004AEC73    call        0067DCA0
 004AEC78    pop         ecx
 004AEC79    test        cl,cl
>004AEC7B    je          004AEC89
 004AEC7D    xor         eax,eax
 004AEC7F    mov         dword ptr [ebp-40],eax
 004AEC82    mov         dword ptr [ebp-44],1
 004AEC89    mov         edx,dword ptr [ebp-40]
 004AEC8C    mov         dword ptr [ebp-4C],edx
>004AEC8F    jmp         004AECA2
 004AEC91    mov         edx,dword ptr [ebp-3C]
 004AEC94    mov         eax,dword ptr [ebp-34]
 004AEC97    call        004AE33C
 004AEC9C    mov         dword ptr [ebp-3C],eax
 004AEC9F    inc         dword ptr [ebp-4C]
 004AECA2    mov         ecx,dword ptr [ebp-4C]
 004AECA5    mov         eax,dword ptr [ebp-44]
 004AECA8    cmp         ecx,eax
>004AECAA    jbe         004AEC91
 004AECAC    mov         edx,dword ptr [ebp-30]
 004AECAF    mov         dword ptr fs:[0],edx
 004AECB6    mov         esp,ebp
 004AECB8    pop         ebp
 004AECB9    ret         4
end;*}

//004AECBC
{*procedure sub_004AECBC(?:?; ?:?; ?:?);
begin
 004AECBC    push        ebp
 004AECBD    mov         ebp,esp
 004AECBF    add         esp,0FFFFFFF4
 004AECC2    mov         dword ptr [ebp-0C],ecx
 004AECC5    mov         byte ptr [ebp-5],dl
 004AECC8    mov         dword ptr [ebp-4],eax
 004AECCB    mov         ecx,dword ptr [ebp-0C]
 004AECCE    mov         dl,byte ptr [ebp-5]
 004AECD1    mov         eax,dword ptr [ebp-4]
 004AECD4    call        004AE914
 004AECD9    add         dword ptr [ebp-0C],eax
 004AECDC    mov         edx,dword ptr [ebp-0C]
 004AECDF    mov         eax,dword ptr [ebp-4]
 004AECE2    call        004AE1FC
 004AECE7    mov         dword ptr [ebp-0C],eax
 004AECEA    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AECF0    cmp         ecx,7DA
>004AECF6    jl          004AED03
 004AECF8    mov         edx,dword ptr [ebp-0C]
 004AECFB    mov         eax,dword ptr [ebp-4]
 004AECFE    call        004AE6FC
 004AED03    mov         esp,ebp
 004AED05    pop         ebp
 004AED06    ret
end;*}

//004AED08
{*procedure sub_004AED08(?:?; ?:?; ?:?);
begin
 004AED08    push        ebp
 004AED09    mov         ebp,esp
 004AED0B    add         esp,0FFFFFFF4
 004AED0E    mov         dword ptr [ebp-0C],ecx
 004AED11    mov         byte ptr [ebp-5],dl
 004AED14    mov         dword ptr [ebp-4],eax
 004AED17    mov         ecx,dword ptr [ebp-0C]
 004AED1A    mov         dl,byte ptr [ebp-5]
 004AED1D    mov         eax,dword ptr [ebp-4]
 004AED20    call        004AE914
 004AED25    add         dword ptr [ebp-0C],eax
 004AED28    mov         edx,dword ptr [ebp-0C]
 004AED2B    mov         eax,dword ptr [ebp-4]
 004AED2E    call        004AE1FC
 004AED33    mov         dword ptr [ebp-0C],eax
 004AED36    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AED3C    cmp         ecx,7DA
>004AED42    jl          004AED4F
 004AED44    mov         edx,dword ptr [ebp-0C]
 004AED47    mov         eax,dword ptr [ebp-4]
 004AED4A    call        004AE6FC
 004AED4F    mov         esp,ebp
 004AED51    pop         ebp
 004AED52    ret
end;*}

//004AED54
{*procedure sub_004AED54(?:?; ?:?; ?:?);
begin
 004AED54    push        ebp
 004AED55    mov         ebp,esp
 004AED57    add         esp,0FFFFFFF4
 004AED5A    mov         dword ptr [ebp-0C],ecx
 004AED5D    mov         byte ptr [ebp-5],dl
 004AED60    mov         dword ptr [ebp-4],eax
 004AED63    mov         ecx,dword ptr [ebp-0C]
 004AED66    mov         dl,byte ptr [ebp-5]
 004AED69    mov         eax,dword ptr [ebp-4]
 004AED6C    call        004AE914
 004AED71    add         dword ptr [ebp-0C],eax
 004AED74    mov         edx,dword ptr [ebp-0C]
 004AED77    mov         eax,dword ptr [ebp-4]
 004AED7A    call        004AE1FC
 004AED7F    mov         dword ptr [ebp-0C],eax
 004AED82    mov         edx,dword ptr [ebp-0C]
 004AED85    mov         eax,dword ptr [ebp-4]
 004AED88    call        004AE26C
 004AED8D    mov         dword ptr [ebp-0C],eax
 004AED90    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AED96    cmp         ecx,7DA
>004AED9C    jl          004AEDA9
 004AED9E    mov         edx,dword ptr [ebp-0C]
 004AEDA1    mov         eax,dword ptr [ebp-4]
 004AEDA4    call        004AE6FC
 004AEDA9    mov         esp,ebp
 004AEDAB    pop         ebp
 004AEDAC    ret
end;*}

//004AEDB0
{*procedure sub_004AEDB0(?:?; ?:?; ?:?);
begin
 004AEDB0    push        ebp
 004AEDB1    mov         ebp,esp
 004AEDB3    add         esp,0FFFFFFDC
 004AEDB6    mov         dword ptr [ebp-0C],ecx
 004AEDB9    mov         byte ptr [ebp-5],dl
 004AEDBC    mov         dword ptr [ebp-4],eax
 004AEDBF    mov         ecx,dword ptr [ebp-0C]
 004AEDC2    mov         dl,byte ptr [ebp-5]
 004AEDC5    mov         eax,dword ptr [ebp-4]
 004AEDC8    call        004AE914
 004AEDCD    add         dword ptr [ebp-0C],eax
 004AEDD0    mov         edx,dword ptr [ebp-0C]
 004AEDD3    mov         eax,dword ptr [ebp-4]
 004AEDD6    call        004AE26C
 004AEDDB    mov         dword ptr [ebp-0C],eax
 004AEDDE    mov         edx,dword ptr [ebp-0C]
 004AEDE1    mov         eax,dword ptr [ebp-4]
 004AEDE4    call        004AE26C
 004AEDE9    mov         dword ptr [ebp-0C],eax
 004AEDEC    mov         edx,dword ptr [ebp-0C]
 004AEDEF    mov         eax,dword ptr [ebp-4]
 004AEDF2    call        004AE234
 004AEDF7    mov         dword ptr [ebp-0C],eax
 004AEDFA    mov         edx,dword ptr [ebp-0C]
 004AEDFD    mov         eax,dword ptr [ebp-4]
 004AEE00    call        004AE33C
 004AEE05    mov         dword ptr [ebp-0C],eax
 004AEE08    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AEE0E    mov         eax,dword ptr [ebp-0C]
 004AEE11    mov         dx,word ptr [ecx+eax]
 004AEE15    mov         word ptr [ebp-0E],dx
 004AEE19    mov         edx,dword ptr [ebp-0C]
 004AEE1C    mov         eax,dword ptr [ebp-4]
 004AEE1F    call        004AE234
 004AEE24    mov         dword ptr [ebp-0C],eax
 004AEE27    xor         ecx,ecx
 004AEE29    mov         dword ptr [ebp-14],ecx
>004AEE2C    jmp         004AEE6B
 004AEE2E    xor         eax,eax
 004AEE30    mov         dword ptr [ebp-18],eax
 004AEE33    mov         edx,dword ptr [ebp-0C]
 004AEE36    mov         eax,dword ptr [ebp-4]
 004AEE39    call        004AE26C
 004AEE3E    mov         dword ptr [ebp-0C],eax
 004AEE41    inc         dword ptr [ebp-18]
 004AEE44    mov         edx,dword ptr [ebp-18]
 004AEE47    cmp         edx,6
>004AEE4A    jl          004AEE33
 004AEE4C    mov         edx,dword ptr [ebp-0C]
 004AEE4F    mov         eax,dword ptr [ebp-4]
 004AEE52    call        004AE234
 004AEE57    mov         dword ptr [ebp-0C],eax
 004AEE5A    mov         edx,dword ptr [ebp-0C]
 004AEE5D    mov         eax,dword ptr [ebp-4]
 004AEE60    call        004AE33C
 004AEE65    mov         dword ptr [ebp-0C],eax
 004AEE68    inc         dword ptr [ebp-14]
 004AEE6B    movzx       ecx,word ptr [ebp-0E]
 004AEE6F    mov         eax,dword ptr [ebp-14]
 004AEE72    cmp         ecx,eax
>004AEE74    jg          004AEE2E
 004AEE76    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AEE7C    cmp         edx,7DA
>004AEE82    jl          004AEF55
 004AEE88    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AEE8E    mov         eax,dword ptr [ebp-0C]
 004AEE91    mov         dx,word ptr [ecx+eax]
 004AEE95    mov         word ptr [ebp-0E],dx
 004AEE99    mov         edx,dword ptr [ebp-0C]
 004AEE9C    mov         eax,dword ptr [ebp-4]
 004AEE9F    call        004AE234
 004AEEA4    mov         dword ptr [ebp-0C],eax
 004AEEA7    xor         ecx,ecx
 004AEEA9    mov         dword ptr [ebp-1C],ecx
>004AEEAC    jmp         004AEF3B
 004AEEB1    mov         edx,dword ptr [ebp-0C]
 004AEEB4    mov         eax,dword ptr [ebp-4]
 004AEEB7    call        004AE1FC
 004AEEBC    mov         dword ptr [ebp-0C],eax
 004AEEBF    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AEEC5    mov         eax,dword ptr [ebp-0C]
 004AEEC8    mov         edx,dword ptr [ecx+eax]
 004AEECB    mov         dword ptr [ebp-20],edx
 004AEECE    mov         edx,dword ptr [ebp-0C]
 004AEED1    mov         eax,dword ptr [ebp-4]
 004AEED4    call        004AE26C
 004AEED9    mov         dword ptr [ebp-0C],eax
 004AEEDC    xor         ecx,ecx
 004AEEDE    mov         dword ptr [ebp-24],ecx
 004AEEE1    mov         eax,dword ptr [ebp-20]
 004AEEE4    call        005312C8
 004AEEE9    mov         edx,eax
 004AEEEB    mov         eax,dword ptr [ebp-4]
 004AEEEE    call        004AE26C
 004AEEF3    add         dword ptr [ebp-20],4
 004AEEF7    inc         dword ptr [ebp-24]
 004AEEFA    mov         edx,dword ptr [ebp-24]
 004AEEFD    cmp         edx,6
>004AEF00    jl          004AEEE1
 004AEF02    mov         eax,dword ptr [ebp-20]
 004AEF05    call        005312C8
 004AEF0A    mov         edx,eax
 004AEF0C    mov         eax,dword ptr [ebp-4]
 004AEF0F    call        004AE234
 004AEF14    add         dword ptr [ebp-20],2
 004AEF18    mov         eax,dword ptr [ebp-20]
 004AEF1B    call        005312C8
 004AEF20    mov         edx,eax
 004AEF22    mov         eax,dword ptr [ebp-4]
 004AEF25    call        004AE33C
 004AEF2A    mov         edx,dword ptr [ebp-0C]
 004AEF2D    mov         eax,dword ptr [ebp-4]
 004AEF30    call        004AE6FC
 004AEF35    mov         dword ptr [ebp-0C],eax
 004AEF38    inc         dword ptr [ebp-1C]
 004AEF3B    movzx       edx,word ptr [ebp-0E]
 004AEF3F    mov         ecx,dword ptr [ebp-1C]
 004AEF42    cmp         edx,ecx
>004AEF44    jg          004AEEB1
 004AEF4A    mov         edx,dword ptr [ebp-0C]
 004AEF4D    mov         eax,dword ptr [ebp-4]
 004AEF50    call        004AE6FC
 004AEF55    mov         esp,ebp
 004AEF57    pop         ebp
 004AEF58    ret
end;*}

//004AEF5C
{*procedure sub_004AEF5C(?:?; ?:?; ?:?);
begin
 004AEF5C    push        ebp
 004AEF5D    mov         ebp,esp
 004AEF5F    add         esp,0FFFFFFD4
 004AEF62    mov         dword ptr [ebp-0C],ecx
 004AEF65    mov         byte ptr [ebp-5],dl
 004AEF68    mov         dword ptr [ebp-4],eax
 004AEF6B    mov         eax,dword ptr [ebp-0C]
 004AEF6E    mov         dword ptr [ebp-10],eax
 004AEF71    mov         ecx,dword ptr [ebp-0C]
 004AEF74    mov         dl,byte ptr [ebp-5]
 004AEF77    mov         eax,dword ptr [ebp-4]
 004AEF7A    call        004AE914
 004AEF7F    add         dword ptr [ebp-0C],eax
 004AEF82    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AEF88    mov         ecx,dword ptr [ebp-0C]
 004AEF8B    mov         al,byte ptr [edx+ecx]
 004AEF8E    mov         byte ptr [ebp-15],al
 004AEF91    mov         edx,dword ptr [ebp-0C]
 004AEF94    mov         eax,dword ptr [ebp-4]
 004AEF97    call        004AE1FC
 004AEF9C    mov         dword ptr [ebp-0C],eax
 004AEF9F    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AEFA5    mov         ecx,dword ptr [ebp-0C]
 004AEFA8    mov         al,byte ptr [edx+ecx]
 004AEFAB    mov         byte ptr [ebp-16],al
 004AEFAE    mov         edx,dword ptr [ebp-0C]
 004AEFB1    mov         eax,dword ptr [ebp-4]
 004AEFB4    call        004AE1FC
 004AEFB9    mov         dword ptr [ebp-0C],eax
 004AEFBC    xor         edx,edx
 004AEFBE    mov         dword ptr [ebp-1C],edx
>004AEFC1    jmp         004AEFF0
 004AEFC3    mov         edx,dword ptr [ebp-0C]
 004AEFC6    mov         eax,dword ptr [ebp-4]
 004AEFC9    call        004AE1FC
 004AEFCE    mov         dword ptr [ebp-0C],eax
 004AEFD1    mov         edx,dword ptr [ebp-0C]
 004AEFD4    mov         eax,dword ptr [ebp-4]
 004AEFD7    call        004AE33C
 004AEFDC    mov         dword ptr [ebp-0C],eax
 004AEFDF    mov         edx,dword ptr [ebp-0C]
 004AEFE2    mov         eax,dword ptr [ebp-4]
 004AEFE5    call        004AE33C
 004AEFEA    mov         dword ptr [ebp-0C],eax
 004AEFED    inc         dword ptr [ebp-1C]
 004AEFF0    xor         ecx,ecx
 004AEFF2    mov         cl,byte ptr [ebp-16]
 004AEFF5    mov         eax,dword ptr [ebp-1C]
 004AEFF8    cmp         ecx,eax
>004AEFFA    jg          004AEFC3
 004AEFFC    mov         dl,byte ptr [ebp-15]
 004AEFFF    test        dl,dl
>004AF001    je          004AF02A
 004AF003    mov         edx,dword ptr [ebp-0C]
 004AF006    mov         eax,dword ptr [ebp-4]
 004AF009    call        004AE33C
 004AF00E    mov         dword ptr [ebp-0C],eax
 004AF011    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF017    cmp         ecx,6
>004AF01A    jle         004AF02A
 004AF01C    mov         edx,dword ptr [ebp-0C]
 004AF01F    mov         eax,dword ptr [ebp-4]
 004AF022    call        004AE26C
 004AF027    mov         dword ptr [ebp-0C],eax
 004AF02A    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF030    cmp         ecx,6
>004AF033    jle         004AF183
 004AF039    mov         edx,dword ptr [ebp-0C]
 004AF03C    mov         eax,dword ptr [ebp-4]
 004AF03F    call        004AE1FC
 004AF044    mov         dword ptr [ebp-0C],eax
 004AF047    xor         ecx,ecx
 004AF049    mov         dword ptr [ebp-20],ecx
>004AF04C    jmp         004AF05F
 004AF04E    mov         edx,dword ptr [ebp-0C]
 004AF051    mov         eax,dword ptr [ebp-4]
 004AF054    call        004AE26C
 004AF059    mov         dword ptr [ebp-0C],eax
 004AF05C    inc         dword ptr [ebp-20]
 004AF05F    xor         ecx,ecx
 004AF061    mov         cl,byte ptr [ebp-16]
 004AF064    mov         eax,dword ptr [ebp-20]
 004AF067    cmp         ecx,eax
>004AF069    jg          004AF04E
 004AF06B    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF071    cmp         edx,7DA
>004AF077    jl          004AF183
 004AF07D    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF083    mov         eax,dword ptr [ebp-0C]
 004AF086    mov         edx,dword ptr [ecx+eax]
 004AF089    mov         dword ptr [ebp-24],edx
 004AF08C    mov         edx,dword ptr [ebp-0C]
 004AF08F    mov         eax,dword ptr [ebp-4]
 004AF092    call        004AE26C
 004AF097    mov         dword ptr [ebp-0C],eax
 004AF09A    mov         edx,dword ptr [ebp-0C]
 004AF09D    mov         eax,dword ptr [ebp-4]
 004AF0A0    call        004AE6FC
 004AF0A5    mov         ecx,dword ptr [ebp-24]
 004AF0A8    test        ecx,ecx
>004AF0AA    je          004AF183
 004AF0B0    mov         eax,dword ptr [ebp-24]
 004AF0B3    call        00531EE8
 004AF0B8    test        al,al
>004AF0BA    je          004AF0C9
 004AF0BC    mov         eax,dword ptr [ebp-24]
 004AF0BF    call        005312C8
 004AF0C4    mov         dword ptr [ebp-14],eax
>004AF0C7    jmp         004AF0D4
 004AF0C9    mov         edx,dword ptr [ebp-10]
 004AF0CC    mov         ecx,dword ptr [ebp-24]
 004AF0CF    add         edx,ecx
 004AF0D1    mov         dword ptr [ebp-14],edx
 004AF0D4    mov         eax,[006941D4];0x0 gvar_006941D4
 004AF0D9    mov         edx,dword ptr [ebp-14]
 004AF0DC    mov         cl,byte ptr [eax+edx]
 004AF0DF    mov         byte ptr [ebp-25],cl
 004AF0E2    mov         edx,dword ptr [ebp-14]
 004AF0E5    mov         eax,dword ptr [ebp-4]
 004AF0E8    call        004AE1FC
 004AF0ED    mov         dword ptr [ebp-14],eax
 004AF0F0    mov         cl,byte ptr [ebp-25]
 004AF0F3    cmp         cl,0FF
>004AF0F6    je          004AF183
 004AF0FC    mov         edx,dword ptr [ebp-14]
 004AF0FF    mov         eax,dword ptr [ebp-4]
 004AF102    call        004AE1FC
 004AF107    mov         dword ptr [ebp-14],eax
 004AF10A    mov         edx,dword ptr [ebp-14]
 004AF10D    mov         eax,dword ptr [ebp-4]
 004AF110    call        004AE26C
 004AF115    mov         dword ptr [ebp-14],eax
 004AF118    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF11E    mov         eax,dword ptr [ebp-14]
 004AF121    mov         dl,byte ptr [ecx+eax]
 004AF124    mov         byte ptr [ebp-16],dl
 004AF127    mov         edx,dword ptr [ebp-14]
 004AF12A    mov         eax,dword ptr [ebp-4]
 004AF12D    call        004AE1FC
 004AF132    mov         dword ptr [ebp-14],eax
 004AF135    xor         ecx,ecx
 004AF137    mov         dword ptr [ebp-2C],ecx
>004AF13A    jmp         004AF177
 004AF13C    mov         edx,dword ptr [ebp-14]
 004AF13F    mov         eax,dword ptr [ebp-4]
 004AF142    call        004AE1FC
 004AF147    mov         dword ptr [ebp-14],eax
 004AF14A    mov         edx,dword ptr [ebp-14]
 004AF14D    mov         eax,dword ptr [ebp-4]
 004AF150    call        004AE26C
 004AF155    mov         dword ptr [ebp-14],eax
 004AF158    mov         edx,dword ptr [ebp-14]
 004AF15B    mov         eax,dword ptr [ebp-4]
 004AF15E    call        004AE33C
 004AF163    mov         dword ptr [ebp-14],eax
 004AF166    mov         edx,dword ptr [ebp-14]
 004AF169    mov         eax,dword ptr [ebp-4]
 004AF16C    call        004AE6FC
 004AF171    mov         dword ptr [ebp-14],eax
 004AF174    inc         dword ptr [ebp-2C]
 004AF177    xor         ecx,ecx
 004AF179    mov         cl,byte ptr [ebp-16]
 004AF17C    mov         eax,dword ptr [ebp-2C]
 004AF17F    cmp         ecx,eax
>004AF181    jg          004AF13C
 004AF183    mov         esp,ebp
 004AF185    pop         ebp
 004AF186    ret
end;*}

//004AF188
{*procedure sub_004AF188(?:?; ?:?; ?:?);
begin
 004AF188    push        ebp
 004AF189    mov         ebp,esp
 004AF18B    add         esp,0FFFFFFF4
 004AF18E    mov         dword ptr [ebp-0C],ecx
 004AF191    mov         byte ptr [ebp-5],dl
 004AF194    mov         dword ptr [ebp-4],eax
 004AF197    mov         ecx,dword ptr [ebp-0C]
 004AF19A    mov         dl,byte ptr [ebp-5]
 004AF19D    mov         eax,dword ptr [ebp-4]
 004AF1A0    call        004AE914
 004AF1A5    add         dword ptr [ebp-0C],eax
 004AF1A8    mov         edx,dword ptr [ebp-0C]
 004AF1AB    mov         eax,dword ptr [ebp-4]
 004AF1AE    call        004AE1FC
 004AF1B3    mov         dword ptr [ebp-0C],eax
 004AF1B6    mov         edx,dword ptr [ebp-0C]
 004AF1B9    mov         eax,dword ptr [ebp-4]
 004AF1BC    call        004AE26C
 004AF1C1    mov         dword ptr [ebp-0C],eax
 004AF1C4    mov         edx,dword ptr [ebp-0C]
 004AF1C7    mov         eax,dword ptr [ebp-4]
 004AF1CA    call        004AE26C
 004AF1CF    mov         dword ptr [ebp-0C],eax
 004AF1D2    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF1D8    cmp         ecx,7DA
>004AF1DE    jl          004AF1EB
 004AF1E0    mov         edx,dword ptr [ebp-0C]
 004AF1E3    mov         eax,dword ptr [ebp-4]
 004AF1E6    call        004AE6FC
 004AF1EB    mov         esp,ebp
 004AF1ED    pop         ebp
 004AF1EE    ret
end;*}

//004AF1F0
{*procedure sub_004AF1F0(?:?; ?:?; ?:?);
begin
 004AF1F0    push        ebp
 004AF1F1    mov         ebp,esp
 004AF1F3    add         esp,0FFFFFFF4
 004AF1F6    mov         dword ptr [ebp-0C],ecx
 004AF1F9    mov         byte ptr [ebp-5],dl
 004AF1FC    mov         dword ptr [ebp-4],eax
 004AF1FF    mov         ecx,dword ptr [ebp-0C]
 004AF202    mov         dl,byte ptr [ebp-5]
 004AF205    mov         eax,dword ptr [ebp-4]
 004AF208    call        004AE914
 004AF20D    add         dword ptr [ebp-0C],eax
 004AF210    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 004AF215    cmp         eax,7D9
>004AF21A    jl          004AF22A
 004AF21C    mov         edx,dword ptr [ebp-0C]
 004AF21F    mov         eax,dword ptr [ebp-4]
 004AF222    call        004AE234
 004AF227    mov         dword ptr [ebp-0C],eax
 004AF22A    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF230    cmp         edx,7DA
>004AF236    jl          004AF243
 004AF238    mov         edx,dword ptr [ebp-0C]
 004AF23B    mov         eax,dword ptr [ebp-4]
 004AF23E    call        004AE6FC
 004AF243    mov         esp,ebp
 004AF245    pop         ebp
 004AF246    ret
end;*}

//004AF248
{*procedure sub_004AF248(?:?; ?:?; ?:?);
begin
 004AF248    push        ebp
 004AF249    mov         ebp,esp
 004AF24B    add         esp,0FFFFFFF4
 004AF24E    mov         dword ptr [ebp-0C],ecx
 004AF251    mov         byte ptr [ebp-5],dl
 004AF254    mov         dword ptr [ebp-4],eax
 004AF257    mov         ecx,dword ptr [ebp-0C]
 004AF25A    mov         dl,byte ptr [ebp-5]
 004AF25D    mov         eax,dword ptr [ebp-4]
 004AF260    call        004AE914
 004AF265    add         dword ptr [ebp-0C],eax
 004AF268    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 004AF26D    cmp         eax,7DA
>004AF272    jl          004AF27F
 004AF274    mov         edx,dword ptr [ebp-0C]
 004AF277    mov         eax,dword ptr [ebp-4]
 004AF27A    call        004AE6FC
 004AF27F    mov         esp,ebp
 004AF281    pop         ebp
 004AF282    ret
end;*}

//004AF284
{*procedure sub_004AF284(?:?; ?:?; ?:?);
begin
 004AF284    push        ebp
 004AF285    mov         ebp,esp
 004AF287    add         esp,0FFFFFFF4
 004AF28A    mov         dword ptr [ebp-0C],ecx
 004AF28D    mov         byte ptr [ebp-5],dl
 004AF290    mov         dword ptr [ebp-4],eax
 004AF293    mov         ecx,dword ptr [ebp-0C]
 004AF296    mov         dl,byte ptr [ebp-5]
 004AF299    mov         eax,dword ptr [ebp-4]
 004AF29C    call        004AE914
 004AF2A1    add         dword ptr [ebp-0C],eax
 004AF2A4    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 004AF2A9    cmp         eax,7DA
>004AF2AE    jl          004AF2BB
 004AF2B0    mov         edx,dword ptr [ebp-0C]
 004AF2B3    mov         eax,dword ptr [ebp-4]
 004AF2B6    call        004AE6FC
 004AF2BB    mov         esp,ebp
 004AF2BD    pop         ebp
 004AF2BE    ret
end;*}

//004AF2C0
{*procedure sub_004AF2C0(?:?; ?:?; ?:?);
begin
 004AF2C0    push        ebp
 004AF2C1    mov         ebp,esp
 004AF2C3    add         esp,0FFFFFFEC
 004AF2C6    mov         dword ptr [ebp-0C],ecx
 004AF2C9    mov         byte ptr [ebp-5],dl
 004AF2CC    mov         dword ptr [ebp-4],eax
 004AF2CF    mov         ecx,dword ptr [ebp-0C]
 004AF2D2    mov         dl,byte ptr [ebp-5]
 004AF2D5    mov         eax,dword ptr [ebp-4]
 004AF2D8    call        004AE914
 004AF2DD    add         dword ptr [ebp-0C],eax
 004AF2E0    mov         edx,dword ptr [ebp-0C]
 004AF2E3    mov         eax,dword ptr [ebp-4]
 004AF2E6    call        004AE26C
 004AF2EB    mov         dword ptr [ebp-0C],eax
 004AF2EE    mov         edx,dword ptr [ebp-0C]
 004AF2F1    mov         eax,dword ptr [ebp-4]
 004AF2F4    call        004AE26C
 004AF2F9    mov         dword ptr [ebp-0C],eax
 004AF2FC    mov         edx,dword ptr [ebp-0C]
 004AF2FF    mov         eax,dword ptr [ebp-4]
 004AF302    call        004AE26C
 004AF307    mov         dword ptr [ebp-0C],eax
 004AF30A    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF310    cmp         ecx,7DA
>004AF316    jl          004AF363
 004AF318    mov         eax,[006941D4];0x0 gvar_006941D4
 004AF31D    mov         edx,dword ptr [ebp-0C]
 004AF320    mov         cl,byte ptr [eax+edx]
 004AF323    mov         byte ptr [ebp-0D],cl
 004AF326    mov         edx,dword ptr [ebp-0C]
 004AF329    mov         eax,dword ptr [ebp-4]
 004AF32C    call        004AE1FC
 004AF331    mov         dword ptr [ebp-0C],eax
 004AF334    xor         ecx,ecx
 004AF336    mov         dword ptr [ebp-14],ecx
>004AF339    jmp         004AF34C
 004AF33B    mov         edx,dword ptr [ebp-0C]
 004AF33E    mov         eax,dword ptr [ebp-4]
 004AF341    call        004AE26C
 004AF346    mov         dword ptr [ebp-0C],eax
 004AF349    inc         dword ptr [ebp-14]
 004AF34C    xor         ecx,ecx
 004AF34E    mov         cl,byte ptr [ebp-0D]
 004AF351    mov         eax,dword ptr [ebp-14]
 004AF354    cmp         ecx,eax
>004AF356    jg          004AF33B
 004AF358    mov         edx,dword ptr [ebp-0C]
 004AF35B    mov         eax,dword ptr [ebp-4]
 004AF35E    call        004AE6FC
 004AF363    mov         esp,ebp
 004AF365    pop         ebp
 004AF366    ret
end;*}

//004AF368
{*procedure sub_004AF368(?:?; ?:?; ?:?);
begin
 004AF368    push        ebp
 004AF369    mov         ebp,esp
 004AF36B    add         esp,0FFFFFFE0
 004AF36E    mov         dword ptr [ebp-0C],ecx
 004AF371    mov         byte ptr [ebp-5],dl
 004AF374    mov         dword ptr [ebp-4],eax
 004AF377    mov         ecx,dword ptr [ebp-0C]
 004AF37A    mov         dl,byte ptr [ebp-5]
 004AF37D    mov         eax,dword ptr [ebp-4]
 004AF380    call        004AE914
 004AF385    add         dword ptr [ebp-0C],eax
 004AF388    mov         edx,dword ptr [ebp-0C]
 004AF38B    mov         eax,dword ptr [ebp-4]
 004AF38E    call        004AE26C
 004AF393    mov         dword ptr [ebp-0C],eax
 004AF396    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF39C    mov         eax,dword ptr [ebp-0C]
 004AF39F    mov         edx,dword ptr [ecx+eax]
 004AF3A2    mov         dword ptr [ebp-18],edx
 004AF3A5    mov         edx,dword ptr [ebp-0C]
 004AF3A8    mov         eax,dword ptr [ebp-4]
 004AF3AB    call        004AE26C
 004AF3B0    mov         dword ptr [ebp-0C],eax
 004AF3B3    xor         ecx,ecx
 004AF3B5    mov         dword ptr [ebp-10],ecx
 004AF3B8    mov         eax,dword ptr [ebp-10]
 004AF3BB    mov         edx,dword ptr [ebp-18]
 004AF3BE    cmp         eax,edx
>004AF3C0    jge         004AF3EB
 004AF3C2    mov         edx,dword ptr [ebp-0C]
 004AF3C5    mov         eax,dword ptr [ebp-4]
 004AF3C8    call        004AE26C
 004AF3CD    mov         dword ptr [ebp-0C],eax
 004AF3D0    mov         edx,dword ptr [ebp-0C]
 004AF3D3    mov         eax,dword ptr [ebp-4]
 004AF3D6    call        004AE26C
 004AF3DB    mov         dword ptr [ebp-0C],eax
 004AF3DE    inc         dword ptr [ebp-10]
 004AF3E1    mov         ecx,dword ptr [ebp-10]
 004AF3E4    mov         eax,dword ptr [ebp-18]
 004AF3E7    cmp         ecx,eax
>004AF3E9    jl          004AF3C2
 004AF3EB    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF3F1    cmp         edx,7DA
>004AF3F7    jl          004AF5FF
 004AF3FD    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF403    mov         eax,dword ptr [ebp-0C]
 004AF406    mov         dl,byte ptr [ecx+eax]
 004AF409    mov         byte ptr [ebp-19],dl
 004AF40C    mov         edx,dword ptr [ebp-0C]
 004AF40F    mov         eax,dword ptr [ebp-4]
 004AF412    call        004AE1FC
 004AF417    mov         dword ptr [ebp-0C],eax
 004AF41A    xor         ecx,ecx
 004AF41C    mov         dword ptr [ebp-10],ecx
>004AF41F    jmp         004AF432
 004AF421    mov         edx,dword ptr [ebp-0C]
 004AF424    mov         eax,dword ptr [ebp-4]
 004AF427    call        004AE26C
 004AF42C    mov         dword ptr [ebp-0C],eax
 004AF42F    inc         dword ptr [ebp-10]
 004AF432    xor         ecx,ecx
 004AF434    mov         cl,byte ptr [ebp-19]
 004AF437    mov         eax,dword ptr [ebp-10]
 004AF43A    cmp         ecx,eax
>004AF43C    jg          004AF421
 004AF43E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF444    mov         ecx,dword ptr [ebp-0C]
 004AF447    mov         eax,dword ptr [edx+ecx]
 004AF44A    mov         dword ptr [ebp-18],eax
 004AF44D    mov         edx,dword ptr [ebp-0C]
 004AF450    mov         eax,dword ptr [ebp-4]
 004AF453    call        004AE26C
 004AF458    mov         dword ptr [ebp-0C],eax
 004AF45B    xor         edx,edx
 004AF45D    mov         dword ptr [ebp-10],edx
 004AF460    mov         ecx,dword ptr [ebp-10]
 004AF463    mov         eax,dword ptr [ebp-18]
 004AF466    cmp         ecx,eax
>004AF468    jge         004AF4BD
 004AF46A    mov         edx,dword ptr [ebp-0C]
 004AF46D    mov         eax,dword ptr [ebp-4]
 004AF470    call        004AE26C
 004AF475    mov         dword ptr [ebp-0C],eax
 004AF478    mov         edx,dword ptr [ebp-0C]
 004AF47B    mov         eax,dword ptr [ebp-4]
 004AF47E    call        004AE26C
 004AF483    mov         dword ptr [ebp-0C],eax
 004AF486    mov         edx,dword ptr [ebp-0C]
 004AF489    mov         eax,dword ptr [ebp-4]
 004AF48C    call        004AE1FC
 004AF491    mov         dword ptr [ebp-0C],eax
 004AF494    mov         edx,dword ptr [ebp-0C]
 004AF497    mov         eax,dword ptr [ebp-4]
 004AF49A    call        004AE33C
 004AF49F    mov         dword ptr [ebp-0C],eax
 004AF4A2    mov         edx,dword ptr [ebp-0C]
 004AF4A5    mov         eax,dword ptr [ebp-4]
 004AF4A8    call        004AE6FC
 004AF4AD    mov         dword ptr [ebp-0C],eax
 004AF4B0    inc         dword ptr [ebp-10]
 004AF4B3    mov         edx,dword ptr [ebp-10]
 004AF4B6    mov         ecx,dword ptr [ebp-18]
 004AF4B9    cmp         edx,ecx
>004AF4BB    jl          004AF46A
 004AF4BD    mov         edx,dword ptr [ebp-0C]
 004AF4C0    mov         eax,dword ptr [ebp-4]
 004AF4C3    call        004AE6FC
 004AF4C8    mov         dword ptr [ebp-0C],eax
 004AF4CB    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF4D1    cmp         ecx,7DC
>004AF4D7    jl          004AF5FF
 004AF4DD    mov         eax,[006941D4];0x0 gvar_006941D4
 004AF4E2    mov         edx,dword ptr [ebp-0C]
 004AF4E5    mov         cx,word ptr [eax+edx]
 004AF4E9    mov         word ptr [ebp-1C],cx
 004AF4ED    mov         edx,dword ptr [ebp-0C]
 004AF4F0    mov         eax,dword ptr [ebp-4]
 004AF4F3    call        004AE234
 004AF4F8    mov         dword ptr [ebp-0C],eax
 004AF4FB    xor         ecx,ecx
 004AF4FD    mov         dword ptr [ebp-10],ecx
>004AF500    jmp         004AF5F0
 004AF505    mov         edx,dword ptr [ebp-0C]
 004AF508    mov         eax,dword ptr [ebp-4]
 004AF50B    call        004AE1FC
 004AF510    mov         dword ptr [ebp-0C],eax
 004AF513    mov         edx,dword ptr [ebp-0C]
 004AF516    mov         eax,dword ptr [ebp-4]
 004AF519    call        004AE26C
 004AF51E    mov         dword ptr [ebp-0C],eax
 004AF521    mov         edx,dword ptr [ebp-0C]
 004AF524    mov         eax,dword ptr [ebp-4]
 004AF527    call        004AE33C
 004AF52C    mov         dword ptr [ebp-0C],eax
 004AF52F    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF535    mov         eax,dword ptr [ebp-0C]
 004AF538    mov         dl,byte ptr [ecx+eax]
 004AF53B    mov         byte ptr [ebp-1D],dl
 004AF53E    mov         edx,dword ptr [ebp-0C]
 004AF541    mov         eax,dword ptr [ebp-4]
 004AF544    call        004AE1FC
 004AF549    mov         dword ptr [ebp-0C],eax
 004AF54C    mov         cl,byte ptr [ebp-1D]
 004AF54F    cmp         cl,0FF
>004AF552    je          004AF5DF
 004AF558    mov         edx,dword ptr [ebp-0C]
 004AF55B    mov         eax,dword ptr [ebp-4]
 004AF55E    call        004AE1FC
 004AF563    mov         dword ptr [ebp-0C],eax
 004AF566    mov         edx,dword ptr [ebp-0C]
 004AF569    mov         eax,dword ptr [ebp-4]
 004AF56C    call        004AE26C
 004AF571    mov         dword ptr [ebp-0C],eax
 004AF574    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF57A    mov         eax,dword ptr [ebp-0C]
 004AF57D    mov         dl,byte ptr [ecx+eax]
 004AF580    mov         byte ptr [ebp-1E],dl
 004AF583    mov         edx,dword ptr [ebp-0C]
 004AF586    mov         eax,dword ptr [ebp-4]
 004AF589    call        004AE1FC
 004AF58E    mov         dword ptr [ebp-0C],eax
 004AF591    xor         ecx,ecx
 004AF593    mov         dword ptr [ebp-14],ecx
>004AF596    jmp         004AF5D3
 004AF598    mov         edx,dword ptr [ebp-0C]
 004AF59B    mov         eax,dword ptr [ebp-4]
 004AF59E    call        004AE1FC
 004AF5A3    mov         dword ptr [ebp-0C],eax
 004AF5A6    mov         edx,dword ptr [ebp-0C]
 004AF5A9    mov         eax,dword ptr [ebp-4]
 004AF5AC    call        004AE26C
 004AF5B1    mov         dword ptr [ebp-0C],eax
 004AF5B4    mov         edx,dword ptr [ebp-0C]
 004AF5B7    mov         eax,dword ptr [ebp-4]
 004AF5BA    call        004AE33C
 004AF5BF    mov         dword ptr [ebp-0C],eax
 004AF5C2    mov         edx,dword ptr [ebp-0C]
 004AF5C5    mov         eax,dword ptr [ebp-4]
 004AF5C8    call        004AE6FC
 004AF5CD    mov         dword ptr [ebp-0C],eax
 004AF5D0    inc         dword ptr [ebp-14]
 004AF5D3    xor         ecx,ecx
 004AF5D5    mov         cl,byte ptr [ebp-1E]
 004AF5D8    mov         eax,dword ptr [ebp-14]
 004AF5DB    cmp         ecx,eax
>004AF5DD    jg          004AF598
 004AF5DF    mov         edx,dword ptr [ebp-0C]
 004AF5E2    mov         eax,dword ptr [ebp-4]
 004AF5E5    call        004AE6FC
 004AF5EA    mov         dword ptr [ebp-0C],eax
 004AF5ED    inc         dword ptr [ebp-10]
 004AF5F0    movzx       edx,word ptr [ebp-1C]
 004AF5F4    mov         ecx,dword ptr [ebp-10]
 004AF5F7    cmp         edx,ecx
>004AF5F9    jg          004AF505
 004AF5FF    mov         esp,ebp
 004AF601    pop         ebp
 004AF602    ret
end;*}

//004AF604
{*procedure sub_004AF604(?:?; ?:?; ?:?);
begin
 004AF604    push        ebp
 004AF605    mov         ebp,esp
 004AF607    add         esp,0FFFFFFDC
 004AF60A    mov         dword ptr [ebp-0C],ecx
 004AF60D    mov         byte ptr [ebp-5],dl
 004AF610    mov         dword ptr [ebp-4],eax
 004AF613    mov         ecx,dword ptr [ebp-0C]
 004AF616    mov         dl,byte ptr [ebp-5]
 004AF619    mov         eax,dword ptr [ebp-4]
 004AF61C    call        004AE914
 004AF621    add         dword ptr [ebp-0C],eax
 004AF624    mov         edx,dword ptr [ebp-0C]
 004AF627    mov         eax,dword ptr [ebp-4]
 004AF62A    call        004AE26C
 004AF62F    mov         dword ptr [ebp-0C],eax
 004AF632    mov         edx,dword ptr [ebp-0C]
 004AF635    mov         eax,dword ptr [ebp-4]
 004AF638    call        004AE1FC
 004AF63D    mov         dword ptr [ebp-0C],eax
 004AF640    mov         ecx,10
 004AF645    mov         edx,dword ptr [ebp-0C]
 004AF648    mov         eax,dword ptr [ebp-4]
 004AF64B    call        004AE2DC
 004AF650    mov         dword ptr [ebp-0C],eax
 004AF653    mov         edx,dword ptr [ebp-0C]
 004AF656    mov         eax,dword ptr [ebp-4]
 004AF659    call        004AE33C
 004AF65E    mov         dword ptr [ebp-0C],eax
 004AF661    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF667    mov         eax,dword ptr [ebp-0C]
 004AF66A    mov         dx,word ptr [ecx+eax]
 004AF66E    mov         word ptr [ebp-0E],dx
 004AF672    mov         edx,dword ptr [ebp-0C]
 004AF675    mov         eax,dword ptr [ebp-4]
 004AF678    call        004AE234
 004AF67D    mov         dword ptr [ebp-0C],eax
 004AF680    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF686    cmp         ecx,6
>004AF689    jl          004AF867
 004AF68F    mov         eax,[006941D4];0x0 gvar_006941D4
 004AF694    mov         edx,dword ptr [ebp-0C]
 004AF697    mov         cx,word ptr [eax+edx]
 004AF69B    mov         word ptr [ebp-10],cx
 004AF69F    mov         edx,dword ptr [ebp-0C]
 004AF6A2    mov         eax,dword ptr [ebp-4]
 004AF6A5    call        004AE234
 004AF6AA    mov         dword ptr [ebp-0C],eax
 004AF6AD    cmp         word ptr [ebp-10],0FFFF
>004AF6B3    je          004AF84E
 004AF6B9    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF6BF    cmp         ecx,7DA
>004AF6C5    jl          004AF7C9
 004AF6CB    xor         eax,eax
 004AF6CD    mov         dword ptr [ebp-14],eax
>004AF6D0    jmp         004AF7B5
 004AF6D5    mov         edx,dword ptr [ebp-0C]
 004AF6D8    mov         eax,dword ptr [ebp-4]
 004AF6DB    call        004AE33C
 004AF6E0    mov         dword ptr [ebp-0C],eax
 004AF6E3    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF6E9    mov         ecx,dword ptr [ebp-0C]
 004AF6EC    mov         al,byte ptr [edx+ecx]
 004AF6EF    mov         byte ptr [ebp-15],al
 004AF6F2    mov         edx,dword ptr [ebp-0C]
 004AF6F5    mov         eax,dword ptr [ebp-4]
 004AF6F8    call        004AE1FC
 004AF6FD    mov         dword ptr [ebp-0C],eax
 004AF700    mov         edx,dword ptr [ebp-0C]
 004AF703    mov         eax,dword ptr [ebp-4]
 004AF706    call        004AE1FC
 004AF70B    mov         dword ptr [ebp-0C],eax
 004AF70E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF714    mov         ecx,dword ptr [ebp-0C]
 004AF717    mov         al,byte ptr [edx+ecx]
 004AF71A    mov         byte ptr [ebp-16],al
 004AF71D    mov         edx,dword ptr [ebp-0C]
 004AF720    mov         eax,dword ptr [ebp-4]
 004AF723    call        004AE1FC
 004AF728    mov         dword ptr [ebp-0C],eax
 004AF72B    xor         edx,edx
 004AF72D    mov         dword ptr [ebp-1C],edx
>004AF730    jmp         004AF76D
 004AF732    mov         edx,dword ptr [ebp-0C]
 004AF735    mov         eax,dword ptr [ebp-4]
 004AF738    call        004AE1FC
 004AF73D    mov         dword ptr [ebp-0C],eax
 004AF740    mov         edx,dword ptr [ebp-0C]
 004AF743    mov         eax,dword ptr [ebp-4]
 004AF746    call        004AE33C
 004AF74B    mov         dword ptr [ebp-0C],eax
 004AF74E    mov         edx,dword ptr [ebp-0C]
 004AF751    mov         eax,dword ptr [ebp-4]
 004AF754    call        004AE33C
 004AF759    mov         dword ptr [ebp-0C],eax
 004AF75C    mov         edx,dword ptr [ebp-0C]
 004AF75F    mov         eax,dword ptr [ebp-4]
 004AF762    call        004AE26C
 004AF767    mov         dword ptr [ebp-0C],eax
 004AF76A    inc         dword ptr [ebp-1C]
 004AF76D    xor         ecx,ecx
 004AF76F    mov         cl,byte ptr [ebp-16]
 004AF772    mov         eax,dword ptr [ebp-1C]
 004AF775    cmp         ecx,eax
>004AF777    jg          004AF732
 004AF779    mov         dl,byte ptr [ebp-15]
 004AF77C    test        dl,dl
>004AF77E    je          004AF7B2
 004AF780    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AF786    mov         eax,dword ptr [ebp-0C]
 004AF789    mov         dl,byte ptr [ecx+eax]
 004AF78C    mov         byte ptr [ebp-1D],dl
 004AF78F    mov         edx,dword ptr [ebp-0C]
 004AF792    mov         eax,dword ptr [ebp-4]
 004AF795    call        004AE33C
 004AF79A    mov         dword ptr [ebp-0C],eax
 004AF79D    mov         cl,byte ptr [ebp-1D]
 004AF7A0    test        cl,cl
>004AF7A2    je          004AF7B2
 004AF7A4    mov         edx,dword ptr [ebp-0C]
 004AF7A7    mov         eax,dword ptr [ebp-4]
 004AF7AA    call        004AE26C
 004AF7AF    mov         dword ptr [ebp-0C],eax
 004AF7B2    inc         dword ptr [ebp-14]
 004AF7B5    movzx       ecx,word ptr [ebp-0E]
 004AF7B9    mov         eax,dword ptr [ebp-14]
 004AF7BC    cmp         ecx,eax
>004AF7BE    jg          004AF6D5
>004AF7C4    jmp         004AF84E
 004AF7C9    xor         edx,edx
 004AF7CB    mov         dword ptr [ebp-24],edx
>004AF7CE    jmp         004AF843
 004AF7D0    mov         edx,dword ptr [ebp-0C]
 004AF7D3    mov         eax,dword ptr [ebp-4]
 004AF7D6    call        004AE26C
 004AF7DB    mov         dword ptr [ebp-0C],eax
 004AF7DE    mov         edx,dword ptr [ebp-0C]
 004AF7E1    mov         eax,dword ptr [ebp-4]
 004AF7E4    call        004AE26C
 004AF7E9    mov         dword ptr [ebp-0C],eax
 004AF7EC    mov         edx,dword ptr [ebp-0C]
 004AF7EF    mov         eax,dword ptr [ebp-4]
 004AF7F2    call        004AE26C
 004AF7F7    mov         dword ptr [ebp-0C],eax
 004AF7FA    mov         edx,dword ptr [ebp-0C]
 004AF7FD    mov         eax,dword ptr [ebp-4]
 004AF800    call        004AE26C
 004AF805    mov         dword ptr [ebp-0C],eax
 004AF808    mov         edx,dword ptr [ebp-0C]
 004AF80B    mov         eax,dword ptr [ebp-4]
 004AF80E    call        004AE26C
 004AF813    mov         dword ptr [ebp-0C],eax
 004AF816    mov         edx,dword ptr [ebp-0C]
 004AF819    mov         eax,dword ptr [ebp-4]
 004AF81C    call        004AE26C
 004AF821    mov         dword ptr [ebp-0C],eax
 004AF824    mov         edx,dword ptr [ebp-0C]
 004AF827    mov         eax,dword ptr [ebp-4]
 004AF82A    call        004AE234
 004AF82F    mov         dword ptr [ebp-0C],eax
 004AF832    mov         edx,dword ptr [ebp-0C]
 004AF835    mov         eax,dword ptr [ebp-4]
 004AF838    call        004AE33C
 004AF83D    mov         dword ptr [ebp-0C],eax
 004AF840    inc         dword ptr [ebp-24]
 004AF843    movzx       ecx,word ptr [ebp-0E]
 004AF847    mov         eax,dword ptr [ebp-24]
 004AF84A    cmp         ecx,eax
>004AF84C    jg          004AF7D0
 004AF84E    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF854    cmp         edx,7DA
>004AF85A    jl          004AF867
 004AF85C    mov         edx,dword ptr [ebp-0C]
 004AF85F    mov         eax,dword ptr [ebp-4]
 004AF862    call        004AE6FC
 004AF867    mov         esp,ebp
 004AF869    pop         ebp
 004AF86A    ret
end;*}

//004AF86C
{*procedure sub_004AF86C(?:?; ?:?; ?:?);
begin
 004AF86C    push        ebp
 004AF86D    mov         ebp,esp
 004AF86F    add         esp,0FFFFFFF4
 004AF872    mov         dword ptr [ebp-0C],ecx
 004AF875    mov         byte ptr [ebp-5],dl
 004AF878    mov         dword ptr [ebp-4],eax
 004AF87B    mov         ecx,dword ptr [ebp-0C]
 004AF87E    mov         dl,byte ptr [ebp-5]
 004AF881    mov         eax,dword ptr [ebp-4]
 004AF884    call        004AE914
 004AF889    add         dword ptr [ebp-0C],eax
 004AF88C    mov         edx,dword ptr [ebp-0C]
 004AF88F    mov         eax,dword ptr [ebp-4]
 004AF892    call        004AE2A4
 004AF897    mov         dword ptr [ebp-0C],eax
 004AF89A    mov         edx,dword ptr [ebp-0C]
 004AF89D    mov         eax,dword ptr [ebp-4]
 004AF8A0    call        004AE2A4
 004AF8A5    mov         dword ptr [ebp-0C],eax
 004AF8A8    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF8AE    cmp         ecx,7DA
>004AF8B4    jl          004AF8C1
 004AF8B6    mov         edx,dword ptr [ebp-0C]
 004AF8B9    mov         eax,dword ptr [ebp-4]
 004AF8BC    call        004AE6FC
 004AF8C1    mov         esp,ebp
 004AF8C3    pop         ebp
 004AF8C4    ret
end;*}

//004AF8C8
{*procedure sub_004AF8C8(?:?; ?:?; ?:?);
begin
 004AF8C8    push        ebp
 004AF8C9    mov         ebp,esp
 004AF8CB    add         esp,0FFFFFFF4
 004AF8CE    mov         dword ptr [ebp-0C],ecx
 004AF8D1    mov         byte ptr [ebp-5],dl
 004AF8D4    mov         dword ptr [ebp-4],eax
 004AF8D7    mov         ecx,dword ptr [ebp-0C]
 004AF8DA    mov         dl,byte ptr [ebp-5]
 004AF8DD    mov         eax,dword ptr [ebp-4]
 004AF8E0    call        004AE914
 004AF8E5    add         dword ptr [ebp-0C],eax
 004AF8E8    mov         edx,dword ptr [ebp-0C]
 004AF8EB    mov         eax,dword ptr [ebp-4]
 004AF8EE    call        004AE26C
 004AF8F3    mov         dword ptr [ebp-0C],eax
 004AF8F6    mov         edx,dword ptr [ebp-0C]
 004AF8F9    mov         eax,dword ptr [ebp-4]
 004AF8FC    call        004AE26C
 004AF901    mov         dword ptr [ebp-0C],eax
 004AF904    mov         edx,dword ptr [ebp-0C]
 004AF907    mov         eax,dword ptr [ebp-4]
 004AF90A    call        004AE26C
 004AF90F    mov         dword ptr [ebp-0C],eax
 004AF912    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF918    cmp         ecx,6
>004AF91B    jl          004AF939
 004AF91D    mov         edx,dword ptr [ebp-0C]
 004AF920    mov         eax,dword ptr [ebp-4]
 004AF923    call        004AE26C
 004AF928    mov         dword ptr [ebp-0C],eax
 004AF92B    mov         edx,dword ptr [ebp-0C]
 004AF92E    mov         eax,dword ptr [ebp-4]
 004AF931    call        004AE33C
 004AF936    mov         dword ptr [ebp-0C],eax
 004AF939    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AF93F    cmp         ecx,7DA
>004AF945    jl          004AF960
 004AF947    mov         edx,dword ptr [ebp-0C]
 004AF94A    mov         eax,dword ptr [ebp-4]
 004AF94D    call        004AE26C
 004AF952    mov         dword ptr [ebp-0C],eax
 004AF955    mov         edx,dword ptr [ebp-0C]
 004AF958    mov         eax,dword ptr [ebp-4]
 004AF95B    call        004AE6FC
 004AF960    mov         esp,ebp
 004AF962    pop         ebp
 004AF963    ret
end;*}

//004AF964
{*procedure sub_004AF964(?:?; ?:?; ?:?);
begin
 004AF964    push        ebp
 004AF965    mov         ebp,esp
 004AF967    add         esp,0FFFFFFF4
 004AF96A    mov         dword ptr [ebp-0C],ecx
 004AF96D    mov         byte ptr [ebp-5],dl
 004AF970    mov         dword ptr [ebp-4],eax
 004AF973    mov         ecx,dword ptr [ebp-0C]
 004AF976    mov         dl,byte ptr [ebp-5]
 004AF979    mov         eax,dword ptr [ebp-4]
 004AF97C    call        004AE914
 004AF981    add         dword ptr [ebp-0C],eax
 004AF984    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 004AF989    cmp         eax,7DA
>004AF98E    jl          004AF99B
 004AF990    mov         edx,dword ptr [ebp-0C]
 004AF993    mov         eax,dword ptr [ebp-4]
 004AF996    call        004AE6FC
 004AF99B    mov         esp,ebp
 004AF99D    pop         ebp
 004AF99E    ret
end;*}

//004AF9A0
{*procedure sub_004AF9A0(?:?; ?:?; ?:?);
begin
 004AF9A0    push        ebp
 004AF9A1    mov         ebp,esp
 004AF9A3    add         esp,0FFFFFFF4
 004AF9A6    mov         dword ptr [ebp-0C],ecx
 004AF9A9    mov         byte ptr [ebp-5],dl
 004AF9AC    mov         dword ptr [ebp-4],eax
 004AF9AF    mov         ecx,dword ptr [ebp-0C]
 004AF9B2    mov         dl,byte ptr [ebp-5]
 004AF9B5    mov         eax,dword ptr [ebp-4]
 004AF9B8    call        004AE914
 004AF9BD    add         dword ptr [ebp-0C],eax
 004AF9C0    mov         edx,dword ptr [ebp-0C]
 004AF9C3    mov         eax,dword ptr [ebp-4]
 004AF9C6    call        004AE26C
 004AF9CB    mov         dword ptr [ebp-0C],eax
 004AF9CE    mov         edx,dword ptr [ebp-0C]
 004AF9D1    mov         eax,dword ptr [ebp-4]
 004AF9D4    call        004AE6FC
 004AF9D9    mov         esp,ebp
 004AF9DB    pop         ebp
 004AF9DC    ret
end;*}

//004AF9E0
{*procedure sub_004AF9E0(?:?; ?:?; ?:?);
begin
 004AF9E0    push        ebp
 004AF9E1    mov         ebp,esp
 004AF9E3    add         esp,0FFFFFFF4
 004AF9E6    mov         dword ptr [ebp-0C],ecx
 004AF9E9    mov         byte ptr [ebp-5],dl
 004AF9EC    mov         dword ptr [ebp-4],eax
 004AF9EF    mov         ecx,dword ptr [ebp-0C]
 004AF9F2    mov         dl,byte ptr [ebp-5]
 004AF9F5    mov         eax,dword ptr [ebp-4]
 004AF9F8    call        004AE914
 004AF9FD    add         dword ptr [ebp-0C],eax
 004AFA00    mov         edx,dword ptr [ebp-0C]
 004AFA03    mov         eax,dword ptr [ebp-4]
 004AFA06    call        004AE26C
 004AFA0B    mov         dword ptr [ebp-0C],eax
 004AFA0E    mov         edx,dword ptr [ebp-0C]
 004AFA11    mov         eax,dword ptr [ebp-4]
 004AFA14    call        004AE6FC
 004AFA19    mov         esp,ebp
 004AFA1B    pop         ebp
 004AFA1C    ret
end;*}

//004AFA20
{*procedure sub_004AFA20(?:?; ?:?; ?:?);
begin
 004AFA20    push        ebp
 004AFA21    mov         ebp,esp
 004AFA23    add         esp,0FFFFFFE4
 004AFA26    mov         dword ptr [ebp-0C],ecx
 004AFA29    mov         byte ptr [ebp-5],dl
 004AFA2C    mov         dword ptr [ebp-4],eax
 004AFA2F    mov         eax,dword ptr [ebp-0C]
 004AFA32    mov         dword ptr [ebp-10],eax
 004AFA35    mov         ecx,dword ptr [ebp-0C]
 004AFA38    mov         dl,byte ptr [ebp-5]
 004AFA3B    mov         eax,dword ptr [ebp-4]
 004AFA3E    call        004AE914
 004AFA43    add         dword ptr [ebp-0C],eax
 004AFA46    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AFA4C    mov         ecx,dword ptr [ebp-0C]
 004AFA4F    mov         eax,dword ptr [edx+ecx]
 004AFA52    mov         dword ptr [ebp-14],eax
 004AFA55    mov         edx,dword ptr [ebp-0C]
 004AFA58    mov         eax,dword ptr [ebp-4]
 004AFA5B    call        004AE26C
 004AFA60    mov         dword ptr [ebp-0C],eax
 004AFA63    mov         edx,dword ptr [ebp-0C]
 004AFA66    mov         eax,dword ptr [ebp-4]
 004AFA69    call        004AE6FC
 004AFA6E    mov         dword ptr [ebp-0C],eax
 004AFA71    mov         edx,dword ptr [ebp-14]
 004AFA74    test        edx,edx
>004AFA76    je          004AFB4F
 004AFA7C    mov         eax,dword ptr [ebp-14]
 004AFA7F    call        00531EE8
 004AFA84    test        al,al
>004AFA86    je          004AFA95
 004AFA88    mov         eax,dword ptr [ebp-14]
 004AFA8B    call        005312C8
 004AFA90    mov         dword ptr [ebp-0C],eax
>004AFA93    jmp         004AFAA0
 004AFA95    mov         edx,dword ptr [ebp-10]
 004AFA98    mov         ecx,dword ptr [ebp-14]
 004AFA9B    add         edx,ecx
 004AFA9D    mov         dword ptr [ebp-0C],edx
 004AFAA0    mov         eax,[006941D4];0x0 gvar_006941D4
 004AFAA5    mov         edx,dword ptr [ebp-0C]
 004AFAA8    mov         cl,byte ptr [eax+edx]
 004AFAAB    mov         byte ptr [ebp-15],cl
 004AFAAE    mov         edx,dword ptr [ebp-0C]
 004AFAB1    mov         eax,dword ptr [ebp-4]
 004AFAB4    call        004AE1FC
 004AFAB9    mov         dword ptr [ebp-0C],eax
 004AFABC    mov         cl,byte ptr [ebp-15]
 004AFABF    cmp         cl,0FF
>004AFAC2    je          004AFB4F
 004AFAC8    mov         edx,dword ptr [ebp-0C]
 004AFACB    mov         eax,dword ptr [ebp-4]
 004AFACE    call        004AE1FC
 004AFAD3    mov         dword ptr [ebp-0C],eax
 004AFAD6    mov         edx,dword ptr [ebp-0C]
 004AFAD9    mov         eax,dword ptr [ebp-4]
 004AFADC    call        004AE26C
 004AFAE1    mov         dword ptr [ebp-0C],eax
 004AFAE4    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AFAEA    mov         eax,dword ptr [ebp-0C]
 004AFAED    mov         dl,byte ptr [ecx+eax]
 004AFAF0    mov         byte ptr [ebp-16],dl
 004AFAF3    mov         edx,dword ptr [ebp-0C]
 004AFAF6    mov         eax,dword ptr [ebp-4]
 004AFAF9    call        004AE1FC
 004AFAFE    mov         dword ptr [ebp-0C],eax
 004AFB01    xor         ecx,ecx
 004AFB03    mov         dword ptr [ebp-1C],ecx
>004AFB06    jmp         004AFB43
 004AFB08    mov         edx,dword ptr [ebp-0C]
 004AFB0B    mov         eax,dword ptr [ebp-4]
 004AFB0E    call        004AE1FC
 004AFB13    mov         dword ptr [ebp-0C],eax
 004AFB16    mov         edx,dword ptr [ebp-0C]
 004AFB19    mov         eax,dword ptr [ebp-4]
 004AFB1C    call        004AE26C
 004AFB21    mov         dword ptr [ebp-0C],eax
 004AFB24    mov         edx,dword ptr [ebp-0C]
 004AFB27    mov         eax,dword ptr [ebp-4]
 004AFB2A    call        004AE33C
 004AFB2F    mov         dword ptr [ebp-0C],eax
 004AFB32    mov         edx,dword ptr [ebp-0C]
 004AFB35    mov         eax,dword ptr [ebp-4]
 004AFB38    call        004AE6FC
 004AFB3D    mov         dword ptr [ebp-0C],eax
 004AFB40    inc         dword ptr [ebp-1C]
 004AFB43    xor         ecx,ecx
 004AFB45    mov         cl,byte ptr [ebp-16]
 004AFB48    mov         eax,dword ptr [ebp-1C]
 004AFB4B    cmp         ecx,eax
>004AFB4D    jg          004AFB08
 004AFB4F    mov         esp,ebp
 004AFB51    pop         ebp
 004AFB52    ret
end;*}

//004AFB54
{*procedure sub_004AFB54(?:?; ?:?; ?:?);
begin
 004AFB54    push        ebp
 004AFB55    mov         ebp,esp
 004AFB57    add         esp,0FFFFFFB8
 004AFB5A    mov         dword ptr [ebp-3C],ecx
 004AFB5D    mov         dword ptr [ebp-38],edx
 004AFB60    mov         dword ptr [ebp-34],eax
 004AFB63    mov         eax,6C4800
 004AFB68    call        0066FECC
 004AFB6D    mov         word ptr [ebp-20],8
 004AFB73    lea         eax,[ebp-4]
 004AFB76    call        00401EA8
 004AFB7B    mov         edx,eax
 004AFB7D    inc         dword ptr [ebp-14]
 004AFB80    mov         eax,dword ptr [ebp-3C]
 004AFB83    call        0048591C
 004AFB88    lea         edx,[ebp-4]
 004AFB8B    mov         eax,dword ptr [ebp-34]
 004AFB8E    add         eax,8
 004AFB91    call        0067DCD0
 004AFB96    dec         dword ptr [ebp-14]
 004AFB99    lea         eax,[ebp-4]
 004AFB9C    mov         edx,2
 004AFBA1    call        0067DCA0
 004AFBA6    mov         ecx,dword ptr [ebp-34]
 004AFBA9    mov         ecx,dword ptr [ecx+8]
 004AFBAC    mov         edx,dword ptr [ebp-38]
 004AFBAF    mov         eax,dword ptr [ebp-34]
 004AFBB2    call        004AFDF4
 004AFBB7    add         dword ptr [ebp-38],eax
 004AFBBA    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 004AFBBF    cmp         eax,3
>004AFBC2    jl          004AFBE2
 004AFBC4    mov         edx,dword ptr [ebp-38]
 004AFBC7    mov         eax,dword ptr [ebp-34]
 004AFBCA    call        004AFEB4
 004AFBCF    add         dword ptr [ebp-38],4
 004AFBD3    mov         edx,dword ptr [ebp-38]
 004AFBD6    mov         eax,dword ptr [ebp-34]
 004AFBD9    call        004B0068
 004AFBDE    add         dword ptr [ebp-38],4
 004AFBE2    mov         edx,dword ptr [ebp-38]
 004AFBE5    mov         eax,dword ptr [ebp-34]
 004AFBE8    call        004B01CC
 004AFBED    add         dword ptr [ebp-38],4
 004AFBF1    mov         edx,dword ptr [ebp-38]
 004AFBF4    mov         eax,dword ptr [ebp-34]
 004AFBF7    call        004AE26C
 004AFBFC    mov         dword ptr [ebp-38],eax
 004AFBFF    mov         edx,dword ptr [ebp-38]
 004AFC02    mov         eax,dword ptr [ebp-34]
 004AFC05    call        004B02C8
 004AFC0A    add         dword ptr [ebp-38],4
 004AFC0E    mov         edx,dword ptr [ebp-38]
 004AFC11    mov         eax,dword ptr [ebp-34]
 004AFC14    call        004B04C0
 004AFC19    add         dword ptr [ebp-38],4
 004AFC1D    mov         edx,dword ptr [ebp-38]
 004AFC20    mov         eax,dword ptr [ebp-34]
 004AFC23    call        004B07AC
 004AFC28    add         dword ptr [ebp-38],4
 004AFC2C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AFC32    mov         ecx,dword ptr [ebp-38]
 004AFC35    mov         eax,dword ptr [edx+ecx]
 004AFC38    mov         dword ptr [ebp-40],eax
 004AFC3B    mov         edx,dword ptr [ebp-38]
 004AFC3E    mov         eax,dword ptr [ebp-34]
 004AFC41    call        004AE26C
 004AFC46    mov         dword ptr [ebp-38],eax
 004AFC49    mov         eax,dword ptr [ebp-40]
 004AFC4C    call        005312C8
 004AFC51    mov         edx,eax
 004AFC53    mov         eax,dword ptr [ebp-34]
 004AFC56    call        004AE33C
 004AFC5B    mov         edx,dword ptr [ebp-38]
 004AFC5E    mov         eax,dword ptr [ebp-34]
 004AFC61    call        004AE26C
 004AFC66    mov         dword ptr [ebp-38],eax
 004AFC69    mov         edx,dword ptr [ebp-38]
 004AFC6C    mov         eax,dword ptr [ebp-34]
 004AFC6F    call        004AE26C
 004AFC74    mov         dword ptr [ebp-38],eax
 004AFC77    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AFC7D    cmp         edx,7D9
>004AFC83    jl          004AFCAF
 004AFC85    mov         edx,dword ptr [ebp-38]
 004AFC88    mov         eax,dword ptr [ebp-34]
 004AFC8B    call        004AE26C
 004AFC90    mov         dword ptr [ebp-38],eax
 004AFC93    mov         edx,dword ptr [ebp-38]
 004AFC96    mov         eax,dword ptr [ebp-34]
 004AFC99    call        004AE26C
 004AFC9E    mov         dword ptr [ebp-38],eax
 004AFCA1    mov         edx,dword ptr [ebp-38]
 004AFCA4    mov         eax,dword ptr [ebp-34]
 004AFCA7    call        004AE26C
 004AFCAC    mov         dword ptr [ebp-38],eax
 004AFCAF    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AFCB5    cmp         ecx,3
>004AFCB8    jl          004AFCC8
 004AFCBA    mov         edx,dword ptr [ebp-38]
 004AFCBD    mov         eax,dword ptr [ebp-34]
 004AFCC0    call        004AE26C
 004AFCC5    mov         dword ptr [ebp-38],eax
 004AFCC8    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AFCCE    cmp         ecx,4
>004AFCD1    jl          004AFCFD
 004AFCD3    mov         edx,dword ptr [ebp-38]
 004AFCD6    mov         eax,dword ptr [ebp-34]
 004AFCD9    call        004AE26C
 004AFCDE    mov         dword ptr [ebp-38],eax
 004AFCE1    mov         edx,dword ptr [ebp-38]
 004AFCE4    mov         eax,dword ptr [ebp-34]
 004AFCE7    call        004AE26C
 004AFCEC    mov         dword ptr [ebp-38],eax
 004AFCEF    mov         edx,dword ptr [ebp-38]
 004AFCF2    mov         eax,dword ptr [ebp-34]
 004AFCF5    call        004AE26C
 004AFCFA    mov         dword ptr [ebp-38],eax
 004AFCFD    mov         edx,dword ptr [ebp-38]
 004AFD00    mov         eax,dword ptr [ebp-34]
 004AFD03    call        004AE26C
 004AFD08    mov         dword ptr [ebp-38],eax
 004AFD0B    mov         edx,dword ptr [ebp-38]
 004AFD0E    mov         eax,dword ptr [ebp-34]
 004AFD11    call        004AE26C
 004AFD16    mov         dword ptr [ebp-38],eax
 004AFD19    mov         edx,dword ptr [ebp-38]
 004AFD1C    mov         eax,dword ptr [ebp-34]
 004AFD1F    call        004AE26C
 004AFD24    mov         dword ptr [ebp-38],eax
 004AFD27    mov         edx,dword ptr [ebp-38]
 004AFD2A    mov         eax,dword ptr [ebp-34]
 004AFD2D    call        004AE26C
 004AFD32    mov         dword ptr [ebp-38],eax
 004AFD35    mov         eax,dword ptr [ebp-38]
 004AFD38    call        00531360
 004AFD3D    call        00536884
 004AFD42    call        005312C8
 004AFD47    mov         dword ptr [ebp-44],eax
 004AFD4A    xor         edx,edx
 004AFD4C    mov         dword ptr [ebp-48],edx
 004AFD4F    mov         ecx,dword ptr [ebp-38]
 004AFD52    mov         eax,dword ptr [ebp-44]
 004AFD55    cmp         ecx,eax
>004AFD57    jge         004AFDE4
 004AFD5D    mov         word ptr [ebp-20],14
 004AFD63    lea         eax,[ebp-8]
 004AFD66    call        00401EA8
 004AFD6B    mov         edx,eax
 004AFD6D    inc         dword ptr [ebp-14]
 004AFD70    mov         eax,dword ptr [ebp-48]
 004AFD73    call        0053164C
 004AFD78    lea         edx,[ebp-8]
 004AFD7B    push        edx
 004AFD7C    lea         eax,[ebp-0C]
 004AFD7F    call        00401EA8
 004AFD84    mov         ecx,eax
 004AFD86    inc         dword ptr [ebp-14]
 004AFD89    mov         eax,6C4364
 004AFD8E    pop         edx
 004AFD8F    call        0067E37C
 004AFD94    lea         ecx,[ebp-0C]
 004AFD97    mov         ecx,dword ptr [ecx]
 004AFD99    mov         edx,dword ptr [ebp-38]
 004AFD9C    mov         eax,dword ptr [ebp-34]
 004AFD9F    call        004AE644
 004AFDA4    dec         dword ptr [ebp-14]
 004AFDA7    lea         eax,[ebp-0C]
 004AFDAA    mov         edx,2
 004AFDAF    call        0067DCA0
 004AFDB4    dec         dword ptr [ebp-14]
 004AFDB7    lea         eax,[ebp-8]
 004AFDBA    mov         edx,2
 004AFDBF    call        0067DCA0
 004AFDC4    add         dword ptr [ebp-48],4
 004AFDC8    mov         edx,dword ptr [ebp-38]
 004AFDCB    mov         eax,dword ptr [ebp-34]
 004AFDCE    call        004AE26C
 004AFDD3    mov         dword ptr [ebp-38],eax
 004AFDD6    mov         ecx,dword ptr [ebp-38]
 004AFDD9    mov         eax,dword ptr [ebp-44]
 004AFDDC    cmp         ecx,eax
>004AFDDE    jl          004AFD5D
 004AFDE4    mov         edx,dword ptr [ebp-30]
 004AFDE7    mov         dword ptr fs:[0],edx
 004AFDEE    mov         esp,ebp
 004AFDF0    pop         ebp
 004AFDF1    ret
end;*}

//004AFDF4
{*function sub_004AFDF4(?:?; ?:?; ?:?):?;
begin
 004AFDF4    push        ebp
 004AFDF5    mov         ebp,esp
 004AFDF7    add         esp,0FFFFFFC8
 004AFDFA    mov         dword ptr [ebp-4],ecx
 004AFDFD    mov         dword ptr [ebp-30],edx
 004AFE00    mov         dword ptr [ebp-2C],eax
 004AFE03    mov         eax,6C4830
 004AFE08    call        0066FECC
 004AFE0D    mov         dword ptr [ebp-0C],1
 004AFE14    lea         edx,[ebp-4]
 004AFE17    lea         eax,[ebp-4]
 004AFE1A    call        0067DAEC
 004AFE1F    inc         dword ptr [ebp-0C]
 004AFE22    mov         word ptr [ebp-18],8
 004AFE28    mov         edx,dword ptr [ebp-30]
 004AFE2B    mov         dword ptr [ebp-34],edx
 004AFE2E    mov         eax,dword ptr [ebp-30]
 004AFE31    call        00531360
 004AFE36    mov         dword ptr [ebp-38],eax
 004AFE39    push        dword ptr [ebp-38]
 004AFE3C    push        6C4366
 004AFE41    mov         edx,dword ptr [ebp-2C]
 004AFE44    push        dword ptr [edx]
 004AFE46    call        00671CF4
 004AFE4B    add         esp,0C
 004AFE4E    mov         ecx,dword ptr [ebp-2C]
 004AFE51    add         dword ptr [ecx+1C],eax
 004AFE54    lea         eax,[ebp-4]
 004AFE57    call        00403C0C
 004AFE5C    push        eax
 004AFE5D    push        dword ptr [ebp-38]
 004AFE60    push        dword ptr [ebp-38]
 004AFE63    push        6C437B
 004AFE68    mov         edx,dword ptr [ebp-2C]
 004AFE6B    push        dword ptr [edx]
 004AFE6D    call        00671CF4
 004AFE72    add         esp,14
 004AFE75    mov         ecx,dword ptr [ebp-2C]
 004AFE78    add         dword ptr [ecx+1C],eax
 004AFE7B    mov         edx,dword ptr [ebp-30]
 004AFE7E    mov         eax,dword ptr [ebp-2C]
 004AFE81    call        004AE26C
 004AFE86    mov         dword ptr [ebp-30],eax
 004AFE89    mov         eax,dword ptr [ebp-30]
 004AFE8C    mov         edx,dword ptr [ebp-34]
 004AFE8F    sub         eax,edx
 004AFE91    push        eax
 004AFE92    dec         dword ptr [ebp-0C]
 004AFE95    lea         eax,[ebp-4]
 004AFE98    mov         edx,2
 004AFE9D    call        0067DCA0
 004AFEA2    pop         eax
 004AFEA3    mov         edx,dword ptr [ebp-28]
 004AFEA6    mov         dword ptr fs:[0],edx
 004AFEAD    mov         esp,ebp
 004AFEAF    pop         ebp
 004AFEB0    ret
end;*}

//004AFEB4
{*procedure sub_004AFEB4(?:?; ?:?);
begin
 004AFEB4    push        ebp
 004AFEB5    mov         ebp,esp
 004AFEB7    add         esp,0FFFFFFEC
 004AFEBA    mov         dword ptr [ebp-8],edx
 004AFEBD    mov         dword ptr [ebp-4],eax
 004AFEC0    mov         edx,dword ptr [ebp-8]
 004AFEC3    mov         eax,dword ptr [ebp-4]
 004AFEC6    call        004AE26C
 004AFECB    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AFED1    mov         eax,dword ptr [ebp-8]
 004AFED4    mov         edx,dword ptr [ecx+eax]
 004AFED7    mov         dword ptr [ebp-0C],edx
 004AFEDA    mov         ecx,dword ptr [ebp-0C]
 004AFEDD    test        ecx,ecx
>004AFEDF    je          004AFFAF
 004AFEE5    push        dword ptr [ebp-0C]
 004AFEE8    push        6C43A0
 004AFEED    mov         eax,dword ptr [ebp-4]
 004AFEF0    push        dword ptr [eax]
 004AFEF2    call        00671CF4
 004AFEF7    add         esp,0C
 004AFEFA    mov         edx,dword ptr [ebp-4]
 004AFEFD    add         dword ptr [edx+1C],eax
 004AFF00    mov         eax,dword ptr [ebp-4]
 004AFF03    add         eax,8
 004AFF06    call        00403C0C
 004AFF0B    push        eax
 004AFF0C    push        dword ptr [ebp-0C]
 004AFF0F    push        6C43B5
 004AFF14    mov         edx,dword ptr [ebp-4]
 004AFF17    push        dword ptr [edx]
 004AFF19    call        00671CF4
 004AFF1E    add         esp,10
 004AFF21    mov         ecx,dword ptr [ebp-4]
 004AFF24    add         dword ptr [ecx+1C],eax
 004AFF27    mov         eax,dword ptr [ebp-0C]
 004AFF2A    call        005312C8
 004AFF2F    mov         dword ptr [ebp-8],eax
 004AFF32    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AFF38    mov         ecx,dword ptr [ebp-8]
 004AFF3B    mov         eax,dword ptr [edx+ecx]
 004AFF3E    mov         dword ptr [ebp-10],eax
 004AFF41    mov         edx,dword ptr [ebp-8]
 004AFF44    mov         eax,dword ptr [ebp-4]
 004AFF47    call        004AE26C
 004AFF4C    mov         dword ptr [ebp-8],eax
 004AFF4F    xor         edx,edx
 004AFF51    mov         dword ptr [ebp-14],edx
>004AFF54    jmp         004AFFA5
 004AFF56    mov         ecx,10
 004AFF5B    mov         edx,dword ptr [ebp-8]
 004AFF5E    mov         eax,dword ptr [ebp-4]
 004AFF61    call        004AE2DC
 004AFF66    mov         dword ptr [ebp-8],eax
 004AFF69    mov         ecx,dword ptr [ebp-0C]
 004AFF6C    mov         edx,dword ptr [ebp-8]
 004AFF6F    mov         eax,dword ptr [ebp-4]
 004AFF72    call        004AFFB4
 004AFF77    add         dword ptr [ebp-8],4
 004AFF7B    mov         edx,dword ptr [ebp-8]
 004AFF7E    mov         eax,dword ptr [ebp-4]
 004AFF81    call        004AE26C
 004AFF86    mov         dword ptr [ebp-8],eax
 004AFF89    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004AFF8F    cmp         ecx,3
>004AFF92    jle         004AFFA2
 004AFF94    mov         edx,dword ptr [ebp-8]
 004AFF97    mov         eax,dword ptr [ebp-4]
 004AFF9A    call        004AE26C
 004AFF9F    mov         dword ptr [ebp-8],eax
 004AFFA2    inc         dword ptr [ebp-14]
 004AFFA5    mov         ecx,dword ptr [ebp-14]
 004AFFA8    mov         eax,dword ptr [ebp-10]
 004AFFAB    cmp         ecx,eax
>004AFFAD    jb          004AFF56
 004AFFAF    mov         esp,ebp
 004AFFB1    pop         ebp
 004AFFB2    ret
end;*}

//004AFFB4
{*procedure sub_004AFFB4(?:?; ?:?; ?:?);
begin
 004AFFB4    push        ebp
 004AFFB5    mov         ebp,esp
 004AFFB7    add         esp,0FFFFFFE0
 004AFFBA    mov         dword ptr [ebp-0C],ecx
 004AFFBD    mov         dword ptr [ebp-8],edx
 004AFFC0    mov         dword ptr [ebp-4],eax
 004AFFC3    mov         edx,dword ptr [ebp-8]
 004AFFC6    mov         eax,dword ptr [ebp-4]
 004AFFC9    call        004AE26C
 004AFFCE    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AFFD4    mov         eax,dword ptr [ebp-8]
 004AFFD7    mov         edx,dword ptr [ecx+eax]
 004AFFDA    mov         dword ptr [ebp-10],edx
 004AFFDD    mov         ecx,dword ptr [ebp-10]
 004AFFE0    test        ecx,ecx
>004AFFE2    je          004B0062
 004AFFE4    mov         eax,dword ptr [ebp-10]
 004AFFE7    call        005312C8
 004AFFEC    mov         dword ptr [ebp-14],eax
 004AFFEF    mov         edx,dword ptr [ebp-10]
 004AFFF2    mov         dword ptr [ebp-18],edx
 004AFFF5    xor         ecx,ecx
 004AFFF7    mov         dword ptr [ebp-1C],ecx
 004AFFFA    mov         eax,dword ptr [ebp-14]
 004AFFFD    call        00531360
 004B0002    mov         edx,dword ptr [ebp-0C]
 004B0005    cmp         eax,edx
>004B0007    je          004B004D
 004B0009    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B000F    mov         eax,dword ptr [ebp-14]
 004B0012    mov         edx,dword ptr [ecx+eax]
 004B0015    mov         dword ptr [ebp-20],edx
 004B0018    mov         edx,dword ptr [ebp-14]
 004B001B    mov         eax,dword ptr [ebp-4]
 004B001E    call        004AE26C
 004B0023    mov         dword ptr [ebp-14],eax
 004B0026    mov         edx,dword ptr [ebp-20]
 004B0029    mov         eax,dword ptr [ebp-4]
 004B002C    call        004AE600
 004B0031    mov         ecx,dword ptr [ebp-20]
 004B0034    test        ecx,ecx
>004B0036    je          004B0048
 004B0038    mov         eax,dword ptr [ebp-20]
 004B003B    mov         edx,dword ptr [ebp-18]
 004B003E    cmp         eax,edx
>004B0040    jae         004B0048
 004B0042    mov         ecx,dword ptr [ebp-20]
 004B0045    mov         dword ptr [ebp-18],ecx
 004B0048    inc         dword ptr [ebp-1C]
>004B004B    jmp         004AFFFA
 004B004D    dec         dword ptr [ebp-18]
 004B0050    mov         eax,dword ptr [ebp-18]
 004B0053    call        005312C8
 004B0058    mov         edx,eax
 004B005A    mov         eax,dword ptr [ebp-4]
 004B005D    call        004AE1FC
 004B0062    mov         esp,ebp
 004B0064    pop         ebp
 004B0065    ret
end;*}

//004B0068
{*procedure sub_004B0068(?:?; ?:?);
begin
 004B0068    push        ebp
 004B0069    mov         ebp,esp
 004B006B    add         esp,0FFFFFFEC
 004B006E    mov         dword ptr [ebp-8],edx
 004B0071    mov         dword ptr [ebp-4],eax
 004B0074    mov         edx,dword ptr [ebp-8]
 004B0077    mov         eax,dword ptr [ebp-4]
 004B007A    call        004AE26C
 004B007F    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B0085    mov         eax,dword ptr [ebp-8]
 004B0088    mov         edx,dword ptr [ecx+eax]
 004B008B    mov         dword ptr [ebp-0C],edx
 004B008E    mov         ecx,dword ptr [ebp-0C]
 004B0091    test        ecx,ecx
>004B0093    je          004B015E
 004B0099    push        dword ptr [ebp-0C]
 004B009C    push        6C43DC
 004B00A1    mov         eax,dword ptr [ebp-4]
 004B00A4    push        dword ptr [eax]
 004B00A6    call        00671CF4
 004B00AB    add         esp,0C
 004B00AE    mov         edx,dword ptr [ebp-4]
 004B00B1    add         dword ptr [edx+1C],eax
 004B00B4    mov         eax,dword ptr [ebp-4]
 004B00B7    add         eax,8
 004B00BA    call        00403C0C
 004B00BF    push        eax
 004B00C0    push        dword ptr [ebp-0C]
 004B00C3    push        6C43F1
 004B00C8    mov         edx,dword ptr [ebp-4]
 004B00CB    push        dword ptr [edx]
 004B00CD    call        00671CF4
 004B00D2    add         esp,10
 004B00D5    mov         ecx,dword ptr [ebp-4]
 004B00D8    add         dword ptr [ecx+1C],eax
 004B00DB    mov         eax,dword ptr [ebp-0C]
 004B00DE    call        005312C8
 004B00E3    mov         dword ptr [ebp-8],eax
 004B00E6    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B00EC    mov         ecx,dword ptr [ebp-8]
 004B00EF    mov         eax,dword ptr [edx+ecx]
 004B00F2    mov         dword ptr [ebp-10],eax
 004B00F5    mov         edx,dword ptr [ebp-8]
 004B00F8    mov         eax,dword ptr [ebp-4]
 004B00FB    call        004AE26C
 004B0100    mov         dword ptr [ebp-8],eax
 004B0103    xor         edx,edx
 004B0105    mov         dword ptr [ebp-14],edx
>004B0108    jmp         004B0154
 004B010A    mov         edx,dword ptr [ebp-8]
 004B010D    mov         eax,dword ptr [ebp-4]
 004B0110    call        004AE26C
 004B0115    mov         dword ptr [ebp-8],eax
 004B0118    mov         edx,dword ptr [ebp-8]
 004B011B    mov         eax,dword ptr [ebp-4]
 004B011E    call        004AE26C
 004B0123    mov         dword ptr [ebp-8],eax
 004B0126    mov         edx,dword ptr [ebp-8]
 004B0129    mov         eax,dword ptr [ebp-4]
 004B012C    call        004AE26C
 004B0131    mov         dword ptr [ebp-8],eax
 004B0134    mov         edx,dword ptr [ebp-8]
 004B0137    mov         eax,dword ptr [ebp-4]
 004B013A    call        004B0164
 004B013F    add         dword ptr [ebp-8],4
 004B0143    mov         edx,dword ptr [ebp-8]
 004B0146    mov         eax,dword ptr [ebp-4]
 004B0149    call        004AE26C
 004B014E    mov         dword ptr [ebp-8],eax
 004B0151    inc         dword ptr [ebp-14]
 004B0154    mov         ecx,dword ptr [ebp-14]
 004B0157    mov         eax,dword ptr [ebp-10]
 004B015A    cmp         ecx,eax
>004B015C    jb          004B010A
 004B015E    mov         esp,ebp
 004B0160    pop         ebp
 004B0161    ret
end;*}

//004B0164
{*procedure sub_004B0164(?:?; ?:?);
begin
 004B0164    push        ebp
 004B0165    mov         ebp,esp
 004B0167    add         esp,0FFFFFFF0
 004B016A    mov         dword ptr [ebp-8],edx
 004B016D    mov         dword ptr [ebp-4],eax
 004B0170    mov         edx,dword ptr [ebp-8]
 004B0173    mov         eax,dword ptr [ebp-4]
 004B0176    call        004AE26C
 004B017B    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B0181    mov         eax,dword ptr [ebp-8]
 004B0184    mov         edx,dword ptr [ecx+eax]
 004B0187    mov         dword ptr [ebp-0C],edx
 004B018A    mov         ecx,dword ptr [ebp-0C]
 004B018D    test        ecx,ecx
>004B018F    je          004B01C6
 004B0191    mov         eax,dword ptr [ebp-0C]
 004B0194    call        005312C8
 004B0199    mov         dword ptr [ebp-8],eax
 004B019C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B01A2    mov         ecx,dword ptr [ebp-8]
 004B01A5    mov         al,byte ptr [edx+ecx+1]
 004B01A9    mov         byte ptr [ebp-0D],al
 004B01AC    mov         eax,dword ptr [ebp-0C]
 004B01AF    call        005312C8
 004B01B4    mov         edx,eax
 004B01B6    xor         ecx,ecx
 004B01B8    mov         cl,byte ptr [ebp-0D]
 004B01BB    add         ecx,2
 004B01BE    mov         eax,dword ptr [ebp-4]
 004B01C1    call        004AE2DC
 004B01C6    mov         esp,ebp
 004B01C8    pop         ebp
 004B01C9    ret
end;*}

//004B01CC
{*procedure sub_004B01CC(?:?; ?:?);
begin
 004B01CC    push        ebp
 004B01CD    mov         ebp,esp
 004B01CF    add         esp,0FFFFFFEC
 004B01D2    mov         dword ptr [ebp-8],edx
 004B01D5    mov         dword ptr [ebp-4],eax
 004B01D8    mov         edx,dword ptr [ebp-8]
 004B01DB    mov         eax,dword ptr [ebp-4]
 004B01DE    call        004AE26C
 004B01E3    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B01E9    mov         eax,dword ptr [ebp-8]
 004B01EC    mov         edx,dword ptr [ecx+eax]
 004B01EF    mov         dword ptr [ebp-0C],edx
 004B01F2    mov         ecx,dword ptr [ebp-0C]
 004B01F5    test        ecx,ecx
>004B01F7    je          004B02C1
 004B01FD    push        dword ptr [ebp-0C]
 004B0200    push        6C4418
 004B0205    mov         eax,dword ptr [ebp-4]
 004B0208    push        dword ptr [eax]
 004B020A    call        00671CF4
 004B020F    add         esp,0C
 004B0212    mov         edx,dword ptr [ebp-4]
 004B0215    add         dword ptr [edx+1C],eax
 004B0218    mov         eax,dword ptr [ebp-4]
 004B021B    add         eax,8
 004B021E    call        00403C0C
 004B0223    push        eax
 004B0224    push        dword ptr [ebp-0C]
 004B0227    push        6C442D
 004B022C    mov         edx,dword ptr [ebp-4]
 004B022F    push        dword ptr [edx]
 004B0231    call        00671CF4
 004B0236    add         esp,10
 004B0239    mov         ecx,dword ptr [ebp-4]
 004B023C    add         dword ptr [ecx+1C],eax
 004B023F    mov         eax,dword ptr [ebp-0C]
 004B0242    call        005312C8
 004B0247    mov         dword ptr [ebp-8],eax
 004B024A    mov         edx,dword ptr [ebp-8]
 004B024D    mov         eax,dword ptr [ebp-4]
 004B0250    call        004AE1FC
 004B0255    mov         dword ptr [ebp-8],eax
 004B0258    mov         edx,dword ptr [ebp-8]
 004B025B    mov         eax,dword ptr [ebp-4]
 004B025E    call        004AE1FC
 004B0263    mov         dword ptr [ebp-8],eax
 004B0266    mov         edx,dword ptr [ebp-8]
 004B0269    mov         eax,dword ptr [ebp-4]
 004B026C    call        004AE26C
 004B0271    mov         dword ptr [ebp-8],eax
 004B0274    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B027A    mov         ecx,dword ptr [ebp-8]
 004B027D    mov         eax,dword ptr [edx+ecx]
 004B0280    mov         dword ptr [ebp-10],eax
 004B0283    mov         edx,dword ptr [ebp-8]
 004B0286    mov         eax,dword ptr [ebp-4]
 004B0289    call        004AE26C
 004B028E    mov         dword ptr [ebp-8],eax
 004B0291    xor         edx,edx
 004B0293    mov         dword ptr [ebp-14],edx
>004B0296    jmp         004B02B7
 004B0298    mov         edx,dword ptr [ebp-8]
 004B029B    mov         eax,dword ptr [ebp-4]
 004B029E    call        004AE26C
 004B02A3    mov         dword ptr [ebp-8],eax
 004B02A6    mov         edx,dword ptr [ebp-8]
 004B02A9    mov         eax,dword ptr [ebp-4]
 004B02AC    call        004AE26C
 004B02B1    mov         dword ptr [ebp-8],eax
 004B02B4    inc         dword ptr [ebp-14]
 004B02B7    mov         ecx,dword ptr [ebp-14]
 004B02BA    mov         eax,dword ptr [ebp-10]
 004B02BD    cmp         ecx,eax
>004B02BF    jb          004B0298
 004B02C1    mov         esp,ebp
 004B02C3    pop         ebp
 004B02C4    ret
end;*}

//004B02C8
{*procedure sub_004B02C8(?:?; ?:?);
begin
 004B02C8    push        ebp
 004B02C9    mov         ebp,esp
 004B02CB    add         esp,0FFFFFFE8
 004B02CE    mov         dword ptr [ebp-8],edx
 004B02D1    mov         dword ptr [ebp-4],eax
 004B02D4    mov         edx,dword ptr [ebp-8]
 004B02D7    mov         eax,dword ptr [ebp-4]
 004B02DA    call        004AE26C
 004B02DF    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B02E5    mov         eax,dword ptr [ebp-8]
 004B02E8    mov         edx,dword ptr [ecx+eax]
 004B02EB    mov         dword ptr [ebp-0C],edx
 004B02EE    mov         ecx,dword ptr [ebp-0C]
 004B02F1    test        ecx,ecx
>004B02F3    je          004B043B
 004B02F9    push        dword ptr [ebp-0C]
 004B02FC    push        6C4454
 004B0301    mov         eax,dword ptr [ebp-4]
 004B0304    push        dword ptr [eax]
 004B0306    call        00671CF4
 004B030B    add         esp,0C
 004B030E    mov         edx,dword ptr [ebp-4]
 004B0311    add         dword ptr [edx+1C],eax
 004B0314    mov         eax,dword ptr [ebp-4]
 004B0317    add         eax,8
 004B031A    call        00403C0C
 004B031F    push        eax
 004B0320    push        dword ptr [ebp-0C]
 004B0323    push        6C4469
 004B0328    mov         edx,dword ptr [ebp-4]
 004B032B    push        dword ptr [edx]
 004B032D    call        00671CF4
 004B0332    add         esp,10
 004B0335    mov         ecx,dword ptr [ebp-4]
 004B0338    add         dword ptr [ecx+1C],eax
 004B033B    mov         eax,dword ptr [ebp-0C]
 004B033E    call        005312C8
 004B0343    mov         dword ptr [ebp-8],eax
 004B0346    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B034C    mov         ecx,dword ptr [ebp-8]
 004B034F    mov         ax,word ptr [edx+ecx]
 004B0353    mov         word ptr [ebp-0E],ax
 004B0357    mov         edx,dword ptr [ebp-8]
 004B035A    mov         eax,dword ptr [ebp-4]
 004B035D    call        004AE234
 004B0362    mov         dword ptr [ebp-8],eax
 004B0365    mov         edx,dword ptr [ebp-8]
 004B0368    mov         eax,dword ptr [ebp-4]
 004B036B    call        004B0440
 004B0370    add         dword ptr [ebp-8],4
 004B0374    xor         edx,edx
 004B0376    mov         dword ptr [ebp-14],edx
>004B0379    jmp         004B03A8
 004B037B    mov         edx,dword ptr [ebp-8]
 004B037E    mov         eax,dword ptr [ebp-4]
 004B0381    call        004AE26C
 004B0386    mov         dword ptr [ebp-8],eax
 004B0389    mov         edx,dword ptr [ebp-8]
 004B038C    mov         eax,dword ptr [ebp-4]
 004B038F    call        004AE234
 004B0394    mov         dword ptr [ebp-8],eax
 004B0397    mov         edx,dword ptr [ebp-8]
 004B039A    mov         eax,dword ptr [ebp-4]
 004B039D    call        004AE33C
 004B03A2    mov         dword ptr [ebp-8],eax
 004B03A5    inc         dword ptr [ebp-14]
 004B03A8    movzx       ecx,word ptr [ebp-0E]
 004B03AC    mov         eax,dword ptr [ebp-14]
 004B03AF    cmp         ecx,eax
>004B03B1    jg          004B037B
 004B03B3    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004B03B9    cmp         edx,7DA
>004B03BF    jl          004B043B
 004B03C1    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B03C7    mov         eax,dword ptr [ebp-8]
 004B03CA    mov         dx,word ptr [ecx+eax]
 004B03CE    mov         word ptr [ebp-0E],dx
 004B03D2    mov         edx,dword ptr [ebp-8]
 004B03D5    mov         eax,dword ptr [ebp-4]
 004B03D8    call        004AE234
 004B03DD    mov         dword ptr [ebp-8],eax
 004B03E0    xor         ecx,ecx
 004B03E2    mov         dword ptr [ebp-18],ecx
>004B03E5    jmp         004B0430
 004B03E7    mov         edx,dword ptr [ebp-8]
 004B03EA    mov         eax,dword ptr [ebp-4]
 004B03ED    call        004AE1FC
 004B03F2    mov         dword ptr [ebp-8],eax
 004B03F5    mov         edx,dword ptr [ebp-8]
 004B03F8    mov         eax,dword ptr [ebp-4]
 004B03FB    call        004AE26C
 004B0400    mov         dword ptr [ebp-8],eax
 004B0403    mov         edx,dword ptr [ebp-8]
 004B0406    mov         eax,dword ptr [ebp-4]
 004B0409    call        004AE26C
 004B040E    mov         dword ptr [ebp-8],eax
 004B0411    mov         edx,dword ptr [ebp-8]
 004B0414    mov         eax,dword ptr [ebp-4]
 004B0417    call        004AE33C
 004B041C    mov         dword ptr [ebp-8],eax
 004B041F    mov         edx,dword ptr [ebp-8]
 004B0422    mov         eax,dword ptr [ebp-4]
 004B0425    call        004AE6FC
 004B042A    mov         dword ptr [ebp-8],eax
 004B042D    inc         dword ptr [ebp-18]
 004B0430    movzx       ecx,word ptr [ebp-0E]
 004B0434    mov         eax,dword ptr [ebp-18]
 004B0437    cmp         ecx,eax
>004B0439    jg          004B03E7
 004B043B    mov         esp,ebp
 004B043D    pop         ebp
 004B043E    ret
end;*}

//004B0440
{*procedure sub_004B0440(?:?; ?:?);
begin
 004B0440    push        ebp
 004B0441    mov         ebp,esp
 004B0443    add         esp,0FFFFFFEC
 004B0446    mov         dword ptr [ebp-8],edx
 004B0449    mov         dword ptr [ebp-4],eax
 004B044C    mov         edx,dword ptr [ebp-8]
 004B044F    mov         eax,dword ptr [ebp-4]
 004B0452    call        004AE26C
 004B0457    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B045D    mov         eax,dword ptr [ebp-8]
 004B0460    mov         edx,dword ptr [ecx+eax]
 004B0463    mov         dword ptr [ebp-0C],edx
 004B0466    mov         ecx,dword ptr [ebp-0C]
 004B0469    test        ecx,ecx
>004B046B    je          004B04BA
 004B046D    mov         eax,dword ptr [ebp-0C]
 004B0470    call        005312C8
 004B0475    mov         dword ptr [ebp-8],eax
 004B0478    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B047E    mov         ecx,dword ptr [ebp-8]
 004B0481    mov         ax,word ptr [edx+ecx]
 004B0485    mov         word ptr [ebp-0E],ax
 004B0489    mov         edx,dword ptr [ebp-8]
 004B048C    mov         eax,dword ptr [ebp-4]
 004B048F    call        004AE234
 004B0494    mov         dword ptr [ebp-8],eax
 004B0497    xor         edx,edx
 004B0499    mov         dword ptr [ebp-14],edx
>004B049C    jmp         004B04AF
 004B049E    mov         edx,dword ptr [ebp-8]
 004B04A1    mov         eax,dword ptr [ebp-4]
 004B04A4    call        004AE26C
 004B04A9    mov         dword ptr [ebp-8],eax
 004B04AC    inc         dword ptr [ebp-14]
 004B04AF    movzx       ecx,word ptr [ebp-0E]
 004B04B3    mov         eax,dword ptr [ebp-14]
 004B04B6    cmp         ecx,eax
>004B04B8    jg          004B049E
 004B04BA    mov         esp,ebp
 004B04BC    pop         ebp
 004B04BD    ret
end;*}

//004B04C0
{*procedure sub_004B04C0(?:?; ?:?);
begin
 004B04C0    push        ebp
 004B04C1    mov         ebp,esp
 004B04C3    add         esp,0FFFFFFDC
 004B04C6    mov         dword ptr [ebp-8],edx
 004B04C9    mov         dword ptr [ebp-4],eax
 004B04CC    mov         edx,dword ptr [ebp-8]
 004B04CF    mov         eax,dword ptr [ebp-4]
 004B04D2    call        004AE26C
 004B04D7    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B04DD    mov         eax,dword ptr [ebp-8]
 004B04E0    mov         edx,dword ptr [ecx+eax]
 004B04E3    mov         dword ptr [ebp-0C],edx
 004B04E6    mov         ecx,dword ptr [ebp-0C]
 004B04E9    test        ecx,ecx
>004B04EB    je          004B0640
 004B04F1    push        dword ptr [ebp-0C]
 004B04F4    push        6C4491
 004B04F9    mov         eax,dword ptr [ebp-4]
 004B04FC    push        dword ptr [eax]
 004B04FE    call        00671CF4
 004B0503    add         esp,0C
 004B0506    mov         edx,dword ptr [ebp-4]
 004B0509    add         dword ptr [edx+1C],eax
 004B050C    mov         eax,dword ptr [ebp-4]
 004B050F    add         eax,8
 004B0512    call        00403C0C
 004B0517    push        eax
 004B0518    push        dword ptr [ebp-0C]
 004B051B    push        6C44A6
 004B0520    mov         edx,dword ptr [ebp-4]
 004B0523    push        dword ptr [edx]
 004B0525    call        00671CF4
 004B052A    add         esp,10
 004B052D    mov         ecx,dword ptr [ebp-4]
 004B0530    add         dword ptr [ecx+1C],eax
 004B0533    mov         eax,dword ptr [ebp-0C]
 004B0536    call        005312C8
 004B053B    mov         dword ptr [ebp-8],eax
 004B053E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B0544    mov         ecx,dword ptr [ebp-8]
 004B0547    mov         ax,word ptr [edx+ecx]
 004B054B    mov         word ptr [ebp-0E],ax
 004B054F    mov         edx,dword ptr [ebp-8]
 004B0552    mov         eax,dword ptr [ebp-4]
 004B0555    call        004AE234
 004B055A    mov         dword ptr [ebp-8],eax
 004B055D    xor         edx,edx
 004B055F    mov         dword ptr [ebp-14],edx
>004B0562    jmp         004B05C9
 004B0564    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B056A    mov         eax,dword ptr [ebp-8]
 004B056D    mov         dx,word ptr [ecx+eax]
 004B0571    mov         word ptr [ebp-16],dx
 004B0575    movzx       ecx,word ptr [ebp-16]
 004B0579    mov         eax,dword ptr [ebp-8]
 004B057C    add         ecx,eax
 004B057E    mov         dword ptr [ebp-1C],ecx
 004B0581    mov         edx,dword ptr [ebp-8]
 004B0584    mov         eax,dword ptr [ebp-4]
 004B0587    call        004AE234
 004B058C    mov         dword ptr [ebp-8],eax
 004B058F    mov         edx,dword ptr [ebp-8]
 004B0592    mov         eax,dword ptr [ebp-4]
 004B0595    call        004AE26C
 004B059A    mov         dword ptr [ebp-8],eax
 004B059D    mov         edx,dword ptr [ebp-8]
 004B05A0    mov         eax,dword ptr [ebp-4]
 004B05A3    call        004AE33C
 004B05A8    mov         dword ptr [ebp-8],eax
 004B05AB    mov         edx,dword ptr [ebp-8]
 004B05AE    mov         ecx,dword ptr [ebp-1C]
 004B05B1    cmp         edx,ecx
>004B05B3    jge         004B05C6
 004B05B5    mov         edx,dword ptr [ebp-8]
 004B05B8    mov         eax,dword ptr [ebp-4]
 004B05BB    call        004B06E0
 004B05C0    mov         ecx,dword ptr [ebp-1C]
 004B05C3    mov         dword ptr [ebp-8],ecx
 004B05C6    inc         dword ptr [ebp-14]
 004B05C9    movzx       eax,word ptr [ebp-0E]
 004B05CD    mov         edx,dword ptr [ebp-14]
 004B05D0    cmp         eax,edx
>004B05D2    jg          004B0564
 004B05D4    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004B05DA    cmp         ecx,7DA
>004B05E0    jl          004B0640
 004B05E2    mov         eax,[006941D4];0x0 gvar_006941D4
 004B05E7    mov         edx,dword ptr [ebp-8]
 004B05EA    mov         cx,word ptr [eax+edx]
 004B05EE    mov         word ptr [ebp-1E],cx
 004B05F2    mov         edx,dword ptr [ebp-8]
 004B05F5    mov         eax,dword ptr [ebp-4]
 004B05F8    call        004AE234
 004B05FD    mov         dword ptr [ebp-8],eax
 004B0600    xor         ecx,ecx
 004B0602    mov         dword ptr [ebp-24],ecx
>004B0605    jmp         004B0635
 004B0607    mov         edx,dword ptr [ebp-8]
 004B060A    mov         eax,dword ptr [ebp-4]
 004B060D    call        004B0644
 004B0612    add         dword ptr [ebp-8],4
 004B0616    mov         edx,dword ptr [ebp-8]
 004B0619    mov         eax,dword ptr [ebp-4]
 004B061C    call        004AE234
 004B0621    mov         dword ptr [ebp-8],eax
 004B0624    mov         edx,dword ptr [ebp-8]
 004B0627    mov         eax,dword ptr [ebp-4]
 004B062A    call        004AE234
 004B062F    mov         dword ptr [ebp-8],eax
 004B0632    inc         dword ptr [ebp-24]
 004B0635    movzx       ecx,word ptr [ebp-1E]
 004B0639    mov         eax,dword ptr [ebp-24]
 004B063C    cmp         ecx,eax
>004B063E    jg          004B0607
 004B0640    mov         esp,ebp
 004B0642    pop         ebp
 004B0643    ret
end;*}

//004B0644
{*procedure sub_004B0644(?:?; ?:?);
begin
 004B0644    push        ebp
 004B0645    mov         ebp,esp
 004B0647    add         esp,0FFFFFFEC
 004B064A    mov         dword ptr [ebp-8],edx
 004B064D    mov         dword ptr [ebp-4],eax
 004B0650    mov         edx,dword ptr [ebp-8]
 004B0653    mov         eax,dword ptr [ebp-4]
 004B0656    call        004AE26C
 004B065B    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B0661    mov         eax,dword ptr [ebp-8]
 004B0664    mov         edx,dword ptr [ecx+eax]
 004B0667    mov         dword ptr [ebp-0C],edx
 004B066A    mov         ecx,dword ptr [ebp-0C]
 004B066D    test        ecx,ecx
>004B066F    je          004B06DB
 004B0671    mov         eax,dword ptr [ebp-0C]
 004B0674    call        005312C8
 004B0679    mov         dword ptr [ebp-8],eax
 004B067C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B0682    mov         ecx,dword ptr [ebp-8]
 004B0685    mov         ax,word ptr [edx+ecx]
 004B0689    mov         word ptr [ebp-0E],ax
 004B068D    movzx       edx,word ptr [ebp-0E]
 004B0691    mov         ecx,dword ptr [ebp-8]
 004B0694    add         edx,ecx
 004B0696    mov         dword ptr [ebp-14],edx
 004B0699    mov         edx,dword ptr [ebp-8]
 004B069C    mov         eax,dword ptr [ebp-4]
 004B069F    call        004AE234
 004B06A4    mov         dword ptr [ebp-8],eax
 004B06A7    mov         edx,dword ptr [ebp-8]
 004B06AA    mov         eax,dword ptr [ebp-4]
 004B06AD    call        004AE26C
 004B06B2    mov         dword ptr [ebp-8],eax
 004B06B5    mov         edx,dword ptr [ebp-8]
 004B06B8    mov         eax,dword ptr [ebp-4]
 004B06BB    call        004AE33C
 004B06C0    mov         dword ptr [ebp-8],eax
 004B06C3    mov         ecx,dword ptr [ebp-8]
 004B06C6    mov         eax,dword ptr [ebp-14]
 004B06C9    cmp         ecx,eax
>004B06CB    jge         004B06DB
 004B06CD    mov         edx,dword ptr [ebp-8]
 004B06D0    mov         eax,dword ptr [ebp-4]
 004B06D3    call        004B06E0
 004B06D8    mov         dword ptr [ebp-8],eax
 004B06DB    mov         esp,ebp
 004B06DD    pop         ebp
 004B06DE    ret
end;*}

//004B06E0
{*function sub_004B06E0(?:?; ?:?):?;
begin
 004B06E0    push        ebp
 004B06E1    mov         ebp,esp
 004B06E3    add         esp,0FFFFFFF0
 004B06E6    mov         dword ptr [ebp-8],edx
 004B06E9    mov         dword ptr [ebp-4],eax
 004B06EC    mov         edx,dword ptr [ebp-8]
 004B06EF    mov         eax,dword ptr [ebp-4]
 004B06F2    call        004AE1FC
 004B06F7    mov         dword ptr [ebp-8],eax
 004B06FA    mov         edx,dword ptr [ebp-8]
 004B06FD    mov         eax,dword ptr [ebp-4]
 004B0700    call        004AE1FC
 004B0705    mov         dword ptr [ebp-8],eax
 004B0708    mov         edx,dword ptr [ebp-8]
 004B070B    mov         eax,dword ptr [ebp-4]
 004B070E    call        004AE26C
 004B0713    mov         dword ptr [ebp-8],eax
 004B0716    mov         edx,dword ptr [ebp-8]
 004B0719    mov         eax,dword ptr [ebp-4]
 004B071C    call        004AE234
 004B0721    mov         dword ptr [ebp-8],eax
 004B0724    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B072A    mov         eax,dword ptr [ebp-8]
 004B072D    mov         dl,byte ptr [ecx+eax]
 004B0730    mov         byte ptr [ebp-9],dl
 004B0733    mov         edx,dword ptr [ebp-8]
 004B0736    mov         eax,dword ptr [ebp-4]
 004B0739    call        004AE1FC
 004B073E    mov         dword ptr [ebp-8],eax
 004B0741    xor         ecx,ecx
 004B0743    mov         dword ptr [ebp-10],ecx
>004B0746    jmp         004B0791
 004B0748    mov         edx,dword ptr [ebp-8]
 004B074B    mov         eax,dword ptr [ebp-4]
 004B074E    call        004AE1FC
 004B0753    mov         dword ptr [ebp-8],eax
 004B0756    mov         edx,dword ptr [ebp-8]
 004B0759    mov         eax,dword ptr [ebp-4]
 004B075C    call        004AE26C
 004B0761    mov         dword ptr [ebp-8],eax
 004B0764    mov         edx,dword ptr [ebp-8]
 004B0767    mov         eax,dword ptr [ebp-4]
 004B076A    call        004AE234
 004B076F    mov         dword ptr [ebp-8],eax
 004B0772    mov         edx,dword ptr [ebp-8]
 004B0775    mov         eax,dword ptr [ebp-4]
 004B0778    call        004AE33C
 004B077D    mov         dword ptr [ebp-8],eax
 004B0780    mov         edx,dword ptr [ebp-8]
 004B0783    mov         eax,dword ptr [ebp-4]
 004B0786    call        004AE6FC
 004B078B    mov         dword ptr [ebp-8],eax
 004B078E    inc         dword ptr [ebp-10]
 004B0791    xor         ecx,ecx
 004B0793    mov         cl,byte ptr [ebp-9]
 004B0796    mov         eax,dword ptr [ebp-10]
 004B0799    cmp         ecx,eax
>004B079B    jg          004B0748
 004B079D    mov         edx,dword ptr [ebp-8]
 004B07A0    mov         eax,dword ptr [ebp-4]
 004B07A3    call        004AE6FC
 004B07A8    mov         esp,ebp
 004B07AA    pop         ebp
 004B07AB    ret
end;*}

//004B07AC
{*procedure sub_004B07AC(?:?; ?:?);
begin
 004B07AC    push        ebp
 004B07AD    mov         ebp,esp
 004B07AF    add         esp,0FFFFFFE8
 004B07B2    mov         dword ptr [ebp-8],edx
 004B07B5    mov         dword ptr [ebp-4],eax
 004B07B8    mov         edx,dword ptr [ebp-8]
 004B07BB    mov         eax,dword ptr [ebp-4]
 004B07BE    call        004AE26C
 004B07C3    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B07C9    mov         eax,dword ptr [ebp-8]
 004B07CC    mov         edx,dword ptr [ecx+eax]
 004B07CF    mov         dword ptr [ebp-0C],edx
 004B07D2    mov         ecx,dword ptr [ebp-0C]
 004B07D5    test        ecx,ecx
>004B07D7    je          004B088F
 004B07DD    push        dword ptr [ebp-0C]
 004B07E0    push        6C44CF
 004B07E5    mov         eax,dword ptr [ebp-4]
 004B07E8    push        dword ptr [eax]
 004B07EA    call        00671CF4
 004B07EF    add         esp,0C
 004B07F2    mov         edx,dword ptr [ebp-4]
 004B07F5    add         dword ptr [edx+1C],eax
 004B07F8    mov         eax,dword ptr [ebp-4]
 004B07FB    add         eax,8
 004B07FE    call        00403C0C
 004B0803    push        eax
 004B0804    push        dword ptr [ebp-0C]
 004B0807    push        6C44E4
 004B080C    mov         edx,dword ptr [ebp-4]
 004B080F    push        dword ptr [edx]
 004B0811    call        00671CF4
 004B0816    add         esp,10
 004B0819    mov         ecx,dword ptr [ebp-4]
 004B081C    add         dword ptr [ecx+1C],eax
 004B081F    mov         eax,dword ptr [ebp-0C]
 004B0822    call        005312C8
 004B0827    mov         dword ptr [ebp-8],eax
 004B082A    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B0830    mov         ecx,dword ptr [ebp-8]
 004B0833    mov         ax,word ptr [edx+ecx]
 004B0837    mov         word ptr [ebp-0E],ax
 004B083B    mov         edx,dword ptr [ebp-8]
 004B083E    mov         eax,dword ptr [ebp-4]
 004B0841    call        004AE234
 004B0846    mov         dword ptr [ebp-8],eax
 004B0849    xor         edx,edx
 004B084B    mov         dword ptr [ebp-14],edx
>004B084E    jmp         004B0861
 004B0850    mov         edx,dword ptr [ebp-8]
 004B0853    mov         eax,dword ptr [ebp-4]
 004B0856    call        004AE234
 004B085B    mov         dword ptr [ebp-8],eax
 004B085E    inc         dword ptr [ebp-14]
 004B0861    movzx       ecx,word ptr [ebp-0E]
 004B0865    mov         eax,dword ptr [ebp-14]
 004B0868    cmp         ecx,eax
>004B086A    jg          004B0850
 004B086C    xor         edx,edx
 004B086E    mov         dword ptr [ebp-18],edx
>004B0871    jmp         004B0884
 004B0873    mov         edx,dword ptr [ebp-8]
 004B0876    mov         eax,dword ptr [ebp-4]
 004B0879    call        004AE26C
 004B087E    mov         dword ptr [ebp-8],eax
 004B0881    inc         dword ptr [ebp-18]
 004B0884    movzx       ecx,word ptr [ebp-0E]
 004B0888    mov         eax,dword ptr [ebp-18]
 004B088B    cmp         ecx,eax
>004B088D    jg          004B0873
 004B088F    mov         esp,ebp
 004B0891    pop         ebp
 004B0892    ret
end;*}

//004B0894
{*procedure sub_004B0894(?:?; ?:?; ?:?);
begin
 004B0894    push        ebp
 004B0895    mov         ebp,esp
 004B0897    add         esp,0FFFFFFCC
 004B089A    mov         dword ptr [ebp-34],ecx
 004B089D    mov         dword ptr [ebp-30],edx
 004B08A0    mov         dword ptr [ebp-2C],eax
 004B08A3    mov         eax,6C4854
 004B08A8    call        0066FECC
 004B08AD    mov         word ptr [ebp-18],8
 004B08B3    lea         eax,[ebp-4]
 004B08B6    call        00401EA8
 004B08BB    mov         edx,eax
 004B08BD    inc         dword ptr [ebp-0C]
 004B08C0    mov         eax,dword ptr [ebp-34]
 004B08C3    call        0048591C
 004B08C8    lea         edx,[ebp-4]
 004B08CB    mov         eax,dword ptr [ebp-2C]
 004B08CE    add         eax,8
 004B08D1    call        0067DCD0
 004B08D6    dec         dword ptr [ebp-0C]
 004B08D9    lea         eax,[ebp-4]
 004B08DC    mov         edx,2
 004B08E1    call        0067DCA0
 004B08E6    mov         ecx,dword ptr [ebp-2C]
 004B08E9    mov         ecx,dword ptr [ecx+8]
 004B08EC    mov         edx,dword ptr [ebp-30]
 004B08EF    mov         eax,dword ptr [ebp-2C]
 004B08F2    call        004AE644
 004B08F7    mov         edx,dword ptr [ebp-30]
 004B08FA    mov         eax,dword ptr [ebp-2C]
 004B08FD    call        004AE26C
 004B0902    mov         dword ptr [ebp-30],eax
 004B0905    mov         edx,dword ptr [ebp-30]
 004B0908    mov         eax,dword ptr [ebp-2C]
 004B090B    call        004AE26C
 004B0910    mov         dword ptr [ebp-30],eax
 004B0913    mov         ecx,dword ptr [ebp-28]
 004B0916    mov         dword ptr fs:[0],ecx
 004B091D    mov         esp,ebp
 004B091F    pop         ebp
 004B0920    ret
end;*}

//004B0924
{*function sub_004B0924(?:?; ?:?; ?:?; ?:?):?;
begin
 004B0924    push        ebp
 004B0925    mov         ebp,esp
 004B0927    add         esp,0FFFFFF98
 004B092A    mov         dword ptr [ebp-40],ecx
 004B092D    mov         dword ptr [ebp-3C],edx
 004B0930    mov         dword ptr [ebp-38],eax
 004B0933    mov         eax,6C48A8
 004B0938    call        0066FECC
 004B093D    mov         word ptr [ebp-24],8
 004B0943    lea         eax,[ebp-4]
 004B0946    call        00401EA8
 004B094B    mov         edx,eax
 004B094D    inc         dword ptr [ebp-18]
 004B0950    mov         eax,dword ptr [ebp-40]
 004B0953    call        0048591C
 004B0958    lea         edx,[ebp-4]
 004B095B    mov         eax,dword ptr [ebp-38]
 004B095E    add         eax,8
 004B0961    call        0067DCD0
 004B0966    dec         dword ptr [ebp-18]
 004B0969    lea         eax,[ebp-4]
 004B096C    mov         edx,2
 004B0971    call        0067DCA0
 004B0976    mov         ecx,dword ptr [ebp-3C]
 004B0979    mov         dword ptr [ebp-44],ecx
 004B097C    mov         eax,dword ptr [ebp-3C]
 004B097F    call        00531360
 004B0984    mov         dword ptr [ebp-48],eax
 004B0987    mov         word ptr [ebp-24],14
 004B098D    mov         edx,6C450E
 004B0992    lea         eax,[ebp-8]
 004B0995    call        0067DAB4
 004B099A    inc         dword ptr [ebp-18]
 004B099D    lea         edx,[ebp-8]
 004B09A0    mov         eax,dword ptr [ebp-38]
 004B09A3    add         eax,8
 004B09A6    call        0067DD9C
 004B09AB    push        eax
 004B09AC    dec         dword ptr [ebp-18]
 004B09AF    lea         eax,[ebp-8]
 004B09B2    mov         edx,2
 004B09B7    call        0067DCA0
 004B09BC    pop         ecx
 004B09BD    test        cl,cl
>004B09BF    je          004B0B10
 004B09C5    mov         eax,dword ptr [ebp-38]
 004B09C8    mov         edx,dword ptr [eax+8]
 004B09CB    mov         ecx,dword ptr [ebp-38]
 004B09CE    mov         eax,dword ptr [ecx+0C]
 004B09D1    mov         ecx,dword ptr [eax]
 004B09D3    call        dword ptr [ecx+54]
 004B09D6    mov         dword ptr [ebp-4C],eax
 004B09D9    mov         edx,dword ptr [ebp-4C]
 004B09DC    inc         edx
>004B09DD    jne         004B0A37
 004B09DF    mov         eax,dword ptr [ebp-38]
 004B09E2    mov         edx,dword ptr [eax+8]
 004B09E5    mov         ecx,dword ptr [ebp-38]
 004B09E8    mov         eax,dword ptr [ecx+0C]
 004B09EB    mov         ecx,dword ptr [eax]
 004B09ED    call        dword ptr [ecx+38]
 004B09F0    push        dword ptr [ebp-48]
 004B09F3    push        6C450F
 004B09F8    mov         edx,dword ptr [ebp-38]
 004B09FB    push        dword ptr [edx]
 004B09FD    call        00671CF4
 004B0A02    add         esp,0C
 004B0A05    mov         edx,dword ptr [ebp-38]
 004B0A08    add         dword ptr [edx+1C],eax
 004B0A0B    mov         eax,dword ptr [ebp-38]
 004B0A0E    add         eax,8
 004B0A11    call        00403C0C
 004B0A16    push        eax
 004B0A17    push        dword ptr [ebp-48]
 004B0A1A    push        6C4524
 004B0A1F    mov         ecx,dword ptr [ebp-38]
 004B0A22    push        dword ptr [ecx]
 004B0A24    call        00671CF4
 004B0A29    add         esp,10
 004B0A2C    mov         edx,dword ptr [ebp-38]
 004B0A2F    add         dword ptr [edx+1C],eax
>004B0A32    jmp         004B0AC9
 004B0A37    mov         edx,dword ptr [ebp-4C]
 004B0A3A    mov         eax,dword ptr [ebp-38]
 004B0A3D    call        004B1080
 004B0A42    mov         dword ptr [ebp-50],eax
 004B0A45    mov         ecx,dword ptr [ebp-50]
 004B0A48    test        ecx,ecx
>004B0A4A    jne         004B0A75
 004B0A4C    push        8
 004B0A4E    call        0066EAE4
 004B0A53    pop         ecx
 004B0A54    mov         dword ptr [ebp-50],eax
 004B0A57    mov         eax,dword ptr [ebp-50]
 004B0A5A    mov         edx,dword ptr [ebp-4C]
 004B0A5D    mov         dword ptr [eax],edx
 004B0A5F    mov         ecx,dword ptr [ebp-50]
 004B0A62    xor         eax,eax
 004B0A64    mov         dword ptr [ecx+4],eax
 004B0A67    mov         edx,dword ptr [ebp-50]
 004B0A6A    mov         ecx,dword ptr [ebp-38]
 004B0A6D    mov         eax,dword ptr [ecx+10]
 004B0A70    call        TList.Add
 004B0A75    mov         edx,dword ptr [ebp-50]
 004B0A78    mov         ecx,dword ptr [edx+4]
 004B0A7B    mov         dword ptr [ebp-54],ecx
 004B0A7E    mov         eax,dword ptr [ebp-50]
 004B0A81    inc         dword ptr [eax+4]
 004B0A84    push        dword ptr [ebp-48]
 004B0A87    push        6C4544
 004B0A8C    mov         edx,dword ptr [ebp-38]
 004B0A8F    push        dword ptr [edx]
 004B0A91    call        00671CF4
 004B0A96    add         esp,0C
 004B0A99    mov         ecx,dword ptr [ebp-38]
 004B0A9C    add         dword ptr [ecx+1C],eax
 004B0A9F    push        dword ptr [ebp-54]
 004B0AA2    mov         eax,dword ptr [ebp-38]
 004B0AA5    add         eax,8
 004B0AA8    call        00403C0C
 004B0AAD    push        eax
 004B0AAE    push        dword ptr [ebp-48]
 004B0AB1    push        6C4559
 004B0AB6    mov         edx,dword ptr [ebp-38]
 004B0AB9    push        dword ptr [edx]
 004B0ABB    call        00671CF4
 004B0AC0    add         esp,14
 004B0AC3    mov         ecx,dword ptr [ebp-38]
 004B0AC6    add         dword ptr [ecx+1C],eax
 004B0AC9    mov         word ptr [ebp-24],20
 004B0ACF    push        0
 004B0AD1    push        0
 004B0AD3    push        1
 004B0AD5    push        0
 004B0AD7    lea         eax,[ebp-0C]
 004B0ADA    call        00401EA8
 004B0ADF    push        eax
 004B0AE0    inc         dword ptr [ebp-18]
 004B0AE3    mov         cl,1
 004B0AE5    mov         edx,dword ptr [ebp-48]
 004B0AE8    mov         eax,dword ptr [ebp-40]
 004B0AEB    call        0048741C
 004B0AF0    lea         ecx,[ebp-0C]
 004B0AF3    mov         ecx,dword ptr [ecx]
 004B0AF5    mov         edx,dword ptr [ebp-3C]
 004B0AF8    mov         eax,dword ptr [ebp-38]
 004B0AFB    call        004AE644
 004B0B00    dec         dword ptr [ebp-18]
 004B0B03    lea         eax,[ebp-0C]
 004B0B06    mov         edx,2
 004B0B0B    call        0067DCA0
 004B0B10    mov         eax,dword ptr [ebp-48]
 004B0B13    call        00532DCC
 004B0B18    mov         dword ptr [ebp-58],eax
 004B0B1B    mov         edx,dword ptr [ebp-58]
 004B0B1E    test        edx,edx
>004B0B20    jne         004B0B33
 004B0B22    xor         eax,eax
 004B0B24    mov         edx,dword ptr [ebp-34]
 004B0B27    mov         dword ptr fs:[0],edx
>004B0B2E    jmp         004B0CF8
 004B0B33    mov         edx,dword ptr [ebp-3C]
 004B0B36    mov         eax,dword ptr [ebp-38]
 004B0B39    call        004AE590
 004B0B3E    mov         dword ptr [ebp-5C],eax
 004B0B41    mov         cl,byte ptr [ebp+8]
 004B0B44    test        cl,cl
>004B0B46    jne         004B0B52
 004B0B48    mov         eax,dword ptr [ebp-58]
 004B0B4B    mov         edx,dword ptr [ebp-5C]
 004B0B4E    cmp         eax,edx
>004B0B50    jne         004B0B89
 004B0B52    mov         ecx,dword ptr [ebp-48]
 004B0B55    mov         eax,dword ptr [ebp-5C]
 004B0B58    add         ecx,eax
 004B0B5A    push        ecx
 004B0B5B    push        dword ptr [ebp-48]
 004B0B5E    push        6C457C
 004B0B63    mov         edx,dword ptr [ebp-38]
 004B0B66    push        dword ptr [edx]
 004B0B68    call        00671CF4
 004B0B6D    add         esp,10
 004B0B70    mov         ecx,dword ptr [ebp-38]
 004B0B73    add         dword ptr [ecx+1C],eax
 004B0B76    mov         eax,dword ptr [ebp-5C]
 004B0B79    dec         eax
 004B0B7A    mov         edx,dword ptr [ebp-34]
 004B0B7D    mov         dword ptr fs:[0],edx
>004B0B84    jmp         004B0CF8
 004B0B89    mov         ecx,dword ptr [ebp-3C]
 004B0B8C    mov         eax,dword ptr [ebp-44]
 004B0B8F    sub         ecx,eax
 004B0B91    inc         ecx
 004B0B92    mov         edx,dword ptr [ebp-58]
 004B0B95    cmp         ecx,edx
>004B0B97    jne         004B0BC3
 004B0B99    mov         eax,dword ptr [ebp-3C]
 004B0B9C    call        00531360
 004B0BA1    inc         eax
 004B0BA2    push        eax
 004B0BA3    push        dword ptr [ebp-48]
 004B0BA6    push        6C4599
 004B0BAB    mov         edx,dword ptr [ebp-38]
 004B0BAE    push        dword ptr [edx]
 004B0BB0    call        00671CF4
 004B0BB5    add         esp,10
 004B0BB8    mov         ecx,dword ptr [ebp-38]
 004B0BBB    add         dword ptr [ecx+1C],eax
>004B0BBE    jmp         004B0CE6
 004B0BC3    mov         eax,dword ptr [ebp-3C]
 004B0BC6    call        00531360
 004B0BCB    call        0053A308
 004B0BD0    mov         dword ptr [ebp-60],eax
 004B0BD3    mov         edx,dword ptr [ebp-60]
 004B0BD6    test        edx,edx
>004B0BD8    je          004B0C29
 004B0BDA    mov         ecx,dword ptr [ebp-60]
 004B0BDD    mov         eax,dword ptr [ecx+0E]
 004B0BE0    test        eax,eax
>004B0BE2    je          004B0C29
 004B0BE4    mov         word ptr [ebp-24],2C
 004B0BEA    lea         eax,[ebp-10]
 004B0BED    call        00401EA8
 004B0BF2    mov         ecx,eax
 004B0BF4    inc         dword ptr [ebp-18]
 004B0BF7    mov         edx,dword ptr [ebp-60]
 004B0BFA    mov         edx,dword ptr [edx+0E]
 004B0BFD    mov         eax,[006E9C8C];^_FMain_11011981
 004B0C02    mov         eax,dword ptr [eax]
 004B0C04    call        00413D84
 004B0C09    lea         ecx,[ebp-10]
 004B0C0C    mov         ecx,dword ptr [ecx]
 004B0C0E    mov         edx,dword ptr [ebp-3C]
 004B0C11    mov         eax,dword ptr [ebp-38]
 004B0C14    call        004AE644
 004B0C19    dec         dword ptr [ebp-18]
 004B0C1C    lea         eax,[ebp-10]
 004B0C1F    mov         edx,2
 004B0C24    call        0067DCA0
 004B0C29    mov         edx,dword ptr [ebp-3C]
 004B0C2C    mov         eax,6000000
 004B0C31    call        00532B74
 004B0C36    test        al,al
>004B0C38    je          004B0C4D
 004B0C3A    mov         edx,dword ptr [ebp-3C]
 004B0C3D    mov         eax,dword ptr [ebp-38]
 004B0C40    call        004AE590
 004B0C45    inc         dword ptr [ebp-3C]
>004B0C48    jmp         004B0B89
 004B0C4D    mov         edx,dword ptr [ebp-3C]
 004B0C50    mov         eax,1000
 004B0C55    call        00532B74
 004B0C5A    test        al,al
>004B0C5C    je          004B0CB0
 004B0C5E    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004B0C64    mov         eax,dword ptr [ebp-3C]
 004B0C67    mov         edx,dword ptr [ecx+eax]
 004B0C6A    mov         dword ptr [ebp-64],edx
 004B0C6D    mov         edx,dword ptr [ebp-3C]
 004B0C70    mov         eax,dword ptr [ebp-38]
 004B0C73    call        004AE26C
 004B0C78    mov         dword ptr [ebp-3C],eax
 004B0C7B    xor         ecx,ecx
 004B0C7D    mov         dword ptr [ebp-68],ecx
>004B0C80    jmp         004B0CA1
 004B0C82    mov         edx,dword ptr [ebp-3C]
 004B0C85    mov         eax,dword ptr [ebp-38]
 004B0C88    call        004AE26C
 004B0C8D    mov         dword ptr [ebp-3C],eax
 004B0C90    mov         edx,dword ptr [ebp-3C]
 004B0C93    mov         eax,dword ptr [ebp-38]
 004B0C96    call        004AE26C
 004B0C9B    mov         dword ptr [ebp-3C],eax
 004B0C9E    inc         dword ptr [ebp-68]
 004B0CA1    mov         ecx,dword ptr [ebp-68]
 004B0CA4    mov         eax,dword ptr [ebp-64]
 004B0CA7    cmp         ecx,eax
>004B0CA9    jb          004B0C82
>004B0CAB    jmp         004B0B89
 004B0CB0    mov         edx,dword ptr [ebp-3C]
 004B0CB3    mov         eax,800000
 004B0CB8    call        00532B74
 004B0CBD    test        al,al
>004B0CBF    je          004B0CDE
 004B0CC1    mov         edx,dword ptr [ebp-3C]
 004B0CC4    mov         ecx,dword ptr [ebp-44]
 004B0CC7    cmp         edx,ecx
>004B0CC9    je          004B0CDE
 004B0CCB    mov         edx,dword ptr [ebp-3C]
 004B0CCE    mov         eax,dword ptr [ebp-38]
 004B0CD1    call        004AE590
 004B0CD6    inc         dword ptr [ebp-3C]
>004B0CD9    jmp         004B0B89
 004B0CDE    inc         dword ptr [ebp-3C]
>004B0CE1    jmp         004B0B89
 004B0CE6    mov         eax,dword ptr [ebp-3C]
 004B0CE9    mov         edx,dword ptr [ebp-44]
 004B0CEC    sub         eax,edx
 004B0CEE    mov         ecx,dword ptr [ebp-34]
 004B0CF1    mov         dword ptr fs:[0],ecx
 004B0CF8    mov         esp,ebp
 004B0CFA    pop         ebp
 004B0CFB    ret         4
end;*}

//004B0D00
{*procedure sub_004B0D00(?:?; ?:?; ?:?);
begin
 004B0D00    push        ebp
 004B0D01    mov         ebp,esp
 004B0D03    add         esp,0FFFFFF9C
 004B0D06    mov         dword ptr [ebp-54],ecx
 004B0D09    mov         dword ptr [ebp-50],edx
 004B0D0C    mov         dword ptr [ebp-4C],eax
 004B0D0F    mov         eax,6C496C
 004B0D14    call        0066FECC
 004B0D19    mov         eax,dword ptr [ebp-54]
 004B0D1C    call        004858C4
 004B0D21    test        al,al
>004B0D23    je          004B1072
 004B0D29    mov         edx,dword ptr [ebp-50]
 004B0D2C    mov         eax,dword ptr [ebp-4C]
 004B0D2F    call        004AE1FC
 004B0D34    mov         word ptr [ebp-38],8
 004B0D3A    mov         edx,6C45B6
 004B0D3F    lea         eax,[ebp-4]
 004B0D42    call        0067DAB4
 004B0D47    inc         dword ptr [ebp-2C]
 004B0D4A    lea         edx,[ebp-4]
 004B0D4D    mov         eax,dword ptr [ebp-54]
 004B0D50    add         eax,0A
 004B0D53    call        0067DD84
 004B0D58    test        al,al
>004B0D5A    jne         004B0EA4
 004B0D60    mov         edx,6C45B7
 004B0D65    lea         eax,[ebp-8]
 004B0D68    call        0067DAB4
 004B0D6D    inc         dword ptr [ebp-2C]
 004B0D70    mov         edx,dword ptr [eax]
 004B0D72    mov         ecx,dword ptr [ebp-54]
 004B0D75    mov         eax,dword ptr [ecx+0A]
 004B0D78    call        SameText
 004B0D7D    test        al,al
>004B0D7F    jne         004B0E81
 004B0D85    mov         edx,6C45BE
 004B0D8A    lea         eax,[ebp-0C]
 004B0D8D    call        0067DAB4
 004B0D92    inc         dword ptr [ebp-2C]
 004B0D95    mov         edx,dword ptr [eax]
 004B0D97    mov         ecx,dword ptr [ebp-54]
 004B0D9A    mov         eax,dword ptr [ecx+0A]
 004B0D9D    call        SameText
 004B0DA2    xor         edx,edx
 004B0DA4    mov         dl,al
 004B0DA6    cmp         edx,1
 004B0DA9    sbb         ecx,ecx
 004B0DAB    neg         ecx
 004B0DAD    push        ecx
 004B0DAE    dec         dword ptr [ebp-2C]
 004B0DB1    lea         eax,[ebp-0C]
 004B0DB4    mov         edx,2
 004B0DB9    call        0067DCA0
 004B0DBE    pop         ecx
 004B0DBF    test        ecx,ecx
>004B0DC1    je          004B0E81
 004B0DC7    mov         edx,6C45C5
 004B0DCC    lea         eax,[ebp-10]
 004B0DCF    call        0067DAB4
 004B0DD4    inc         dword ptr [ebp-2C]
 004B0DD7    mov         edx,dword ptr [eax]
 004B0DD9    mov         eax,dword ptr [ebp-54]
 004B0DDC    mov         eax,dword ptr [eax+0A]
 004B0DDF    call        SameText
 004B0DE4    xor         edx,edx
 004B0DE6    mov         dl,al
 004B0DE8    cmp         edx,1
 004B0DEB    sbb         ecx,ecx
 004B0DED    neg         ecx
 004B0DEF    push        ecx
 004B0DF0    dec         dword ptr [ebp-2C]
 004B0DF3    lea         eax,[ebp-10]
 004B0DF6    mov         edx,2
 004B0DFB    call        0067DCA0
 004B0E00    pop         ecx
 004B0E01    test        ecx,ecx
>004B0E03    je          004B0E81
 004B0E05    mov         edx,6C45CE
 004B0E0A    lea         eax,[ebp-14]
 004B0E0D    call        0067DAB4
 004B0E12    inc         dword ptr [ebp-2C]
 004B0E15    mov         edx,dword ptr [eax]
 004B0E17    mov         eax,dword ptr [ebp-54]
 004B0E1A    mov         eax,dword ptr [eax+0A]
 004B0E1D    call        SameText
 004B0E22    xor         edx,edx
 004B0E24    mov         dl,al
 004B0E26    cmp         edx,1
 004B0E29    sbb         ecx,ecx
 004B0E2B    neg         ecx
 004B0E2D    push        ecx
 004B0E2E    dec         dword ptr [ebp-2C]
 004B0E31    lea         eax,[ebp-14]
 004B0E34    mov         edx,2
 004B0E39    call        0067DCA0
 004B0E3E    pop         ecx
 004B0E3F    test        ecx,ecx
>004B0E41    je          004B0E81
 004B0E43    mov         edx,6C45D3
 004B0E48    lea         eax,[ebp-18]
 004B0E4B    call        0067DAB4
 004B0E50    inc         dword ptr [ebp-2C]
 004B0E53    mov         edx,dword ptr [eax]
 004B0E55    mov         eax,dword ptr [ebp-54]
 004B0E58    mov         eax,dword ptr [eax+0A]
 004B0E5B    call        SameText
 004B0E60    xor         edx,edx
 004B0E62    mov         dl,al
 004B0E64    cmp         edx,1
 004B0E67    sbb         ecx,ecx
 004B0E69    neg         ecx
 004B0E6B    push        ecx
 004B0E6C    dec         dword ptr [ebp-2C]
 004B0E6F    lea         eax,[ebp-18]
 004B0E72    mov         edx,2
 004B0E77    call        0067DCA0
 004B0E7C    pop         ecx
 004B0E7D    test        ecx,ecx
>004B0E7F    jne         004B0E85
 004B0E81    xor         eax,eax
>004B0E83    jmp         004B0E8A
 004B0E85    mov         eax,1
 004B0E8A    push        eax
 004B0E8B    dec         dword ptr [ebp-2C]
 004B0E8E    lea         eax,[ebp-8]
 004B0E91    mov         edx,2
 004B0E96    call        0067DCA0
 004B0E9B    pop         ecx
 004B0E9C    test        ecx,ecx
>004B0E9E    jne         004B0EA4
 004B0EA0    xor         eax,eax
>004B0EA2    jmp         004B0EA9
 004B0EA4    mov         eax,1
 004B0EA9    push        eax
 004B0EAA    dec         dword ptr [ebp-2C]
 004B0EAD    lea         eax,[ebp-4]
 004B0EB0    mov         edx,2
 004B0EB5    call        0067DCA0
 004B0EBA    pop         ecx
 004B0EBB    test        cl,cl
>004B0EBD    je          004B0FFD
 004B0EC3    mov         word ptr [ebp-38],20
 004B0EC9    lea         eax,[ebp-1C]
 004B0ECC    call        00401EA8
 004B0ED1    mov         edx,eax
 004B0ED3    inc         dword ptr [ebp-2C]
 004B0ED6    mov         eax,dword ptr [ebp-54]
 004B0ED9    call        0048591C
 004B0EDE    mov         word ptr [ebp-38],14
 004B0EE4    mov         edx,dword ptr [ebp-1C]
 004B0EE7    mov         ecx,dword ptr [ebp-4C]
 004B0EEA    mov         eax,dword ptr [ecx+0C]
 004B0EED    mov         ecx,dword ptr [eax]
 004B0EEF    call        dword ptr [ecx+54]
 004B0EF2    mov         dword ptr [ebp-58],eax
 004B0EF5    mov         eax,dword ptr [ebp-50]
 004B0EF8    call        00531360
 004B0EFD    mov         dword ptr [ebp-5C],eax
 004B0F00    mov         edx,dword ptr [ebp-58]
 004B0F03    inc         edx
>004B0F04    jne         004B0F58
 004B0F06    mov         edx,dword ptr [ebp-1C]
 004B0F09    mov         eax,dword ptr [ebp-4C]
 004B0F0C    mov         eax,dword ptr [eax+0C]
 004B0F0F    mov         ecx,dword ptr [eax]
 004B0F11    call        dword ptr [ecx+38]
 004B0F14    push        dword ptr [ebp-5C]
 004B0F17    push        6C45DC
 004B0F1C    mov         edx,dword ptr [ebp-4C]
 004B0F1F    push        dword ptr [edx]
 004B0F21    call        00671CF4
 004B0F26    add         esp,0C
 004B0F29    mov         edx,dword ptr [ebp-4C]
 004B0F2C    add         dword ptr [edx+1C],eax
 004B0F2F    lea         eax,[ebp-1C]
 004B0F32    call        00403C0C
 004B0F37    push        eax
 004B0F38    push        dword ptr [ebp-5C]
 004B0F3B    push        6C45F1
 004B0F40    mov         ecx,dword ptr [ebp-4C]
 004B0F43    push        dword ptr [ecx]
 004B0F45    call        00671CF4
 004B0F4A    add         esp,10
 004B0F4D    mov         edx,dword ptr [ebp-4C]
 004B0F50    add         dword ptr [edx+1C],eax
>004B0F53    jmp         004B0FE7
 004B0F58    mov         edx,dword ptr [ebp-58]
 004B0F5B    mov         eax,dword ptr [ebp-4C]
 004B0F5E    call        004B1080
 004B0F63    mov         dword ptr [ebp-60],eax
 004B0F66    mov         ecx,dword ptr [ebp-60]
 004B0F69    test        ecx,ecx
>004B0F6B    jne         004B0F96
 004B0F6D    push        8
 004B0F6F    call        0066EAE4
 004B0F74    pop         ecx
 004B0F75    mov         dword ptr [ebp-60],eax
 004B0F78    mov         eax,dword ptr [ebp-60]
 004B0F7B    mov         edx,dword ptr [ebp-58]
 004B0F7E    mov         dword ptr [eax],edx
 004B0F80    mov         ecx,dword ptr [ebp-60]
 004B0F83    xor         eax,eax
 004B0F85    mov         dword ptr [ecx+4],eax
 004B0F88    mov         edx,dword ptr [ebp-60]
 004B0F8B    mov         ecx,dword ptr [ebp-4C]
 004B0F8E    mov         eax,dword ptr [ecx+10]
 004B0F91    call        TList.Add
 004B0F96    mov         edx,dword ptr [ebp-60]
 004B0F99    mov         ecx,dword ptr [edx+4]
 004B0F9C    mov         dword ptr [ebp-64],ecx
 004B0F9F    mov         eax,dword ptr [ebp-60]
 004B0FA2    inc         dword ptr [eax+4]
 004B0FA5    push        dword ptr [ebp-5C]
 004B0FA8    push        6C460E
 004B0FAD    mov         edx,dword ptr [ebp-4C]
 004B0FB0    push        dword ptr [edx]
 004B0FB2    call        00671CF4
 004B0FB7    add         esp,0C
 004B0FBA    mov         ecx,dword ptr [ebp-4C]
 004B0FBD    add         dword ptr [ecx+1C],eax
 004B0FC0    push        dword ptr [ebp-64]
 004B0FC3    lea         eax,[ebp-1C]
 004B0FC6    call        00403C0C
 004B0FCB    push        eax
 004B0FCC    push        dword ptr [ebp-5C]
 004B0FCF    push        6C4623
 004B0FD4    mov         edx,dword ptr [ebp-4C]
 004B0FD7    push        dword ptr [edx]
 004B0FD9    call        00671CF4
 004B0FDE    add         esp,14
 004B0FE1    mov         ecx,dword ptr [ebp-4C]
 004B0FE4    add         dword ptr [ecx+1C],eax
 004B0FE7    dec         dword ptr [ebp-2C]
 004B0FEA    lea         eax,[ebp-1C]
 004B0FED    mov         edx,2
 004B0FF2    call        0067DCA0
 004B0FF7    mov         word ptr [ebp-38],0
 004B0FFD    mov         word ptr [ebp-38],2C
 004B1003    mov         edx,6C4643
 004B1008    lea         eax,[ebp-20]
 004B100B    call        0067DAB4
 004B1010    inc         dword ptr [ebp-2C]
 004B1013    lea         edx,[ebp-20]
 004B1016    mov         eax,dword ptr [ebp-54]
 004B1019    add         eax,0A
 004B101C    call        0067DD9C
 004B1021    push        eax
 004B1022    dec         dword ptr [ebp-2C]
 004B1025    lea         eax,[ebp-20]
 004B1028    mov         edx,2
 004B102D    call        0067DCA0
 004B1032    pop         ecx
 004B1033    test        cl,cl
>004B1035    je          004B1072
 004B1037    mov         word ptr [ebp-38],38
 004B103D    mov         eax,dword ptr [ebp-54]
 004B1040    add         eax,0A
 004B1043    call        00403C0C
 004B1048    mov         edx,eax
 004B104A    lea         eax,[ebp-24]
 004B104D    call        0067DAB4
 004B1052    inc         dword ptr [ebp-2C]
 004B1055    mov         ecx,dword ptr [eax]
 004B1057    mov         edx,dword ptr [ebp-50]
 004B105A    mov         eax,dword ptr [ebp-4C]
 004B105D    call        004AE644
 004B1062    dec         dword ptr [ebp-2C]
 004B1065    lea         eax,[ebp-24]
 004B1068    mov         edx,2
 004B106D    call        0067DCA0
 004B1072    mov         ecx,dword ptr [ebp-48]
 004B1075    mov         dword ptr fs:[0],ecx
 004B107C    mov         esp,ebp
 004B107E    pop         ebp
 004B107F    ret
end;*}

//004B1080
{*function sub_004B1080(?:?; ?:?):?;
begin
 004B1080    push        ebp
 004B1081    mov         ebp,esp
 004B1083    add         esp,0FFFFFFEC
 004B1086    mov         dword ptr [ebp-8],edx
 004B1089    mov         dword ptr [ebp-4],eax
 004B108C    mov         eax,dword ptr [ebp-4]
 004B108F    mov         edx,dword ptr [eax+10]
 004B1092    mov         ecx,dword ptr [edx+8]
 004B1095    mov         dword ptr [ebp-0C],ecx
 004B1098    xor         eax,eax
 004B109A    mov         dword ptr [ebp-10],eax
 004B109D    mov         edx,dword ptr [ebp-10]
 004B10A0    mov         ecx,dword ptr [ebp-0C]
 004B10A3    cmp         edx,ecx
>004B10A5    jge         004B10D6
 004B10A7    mov         eax,dword ptr [ebp-4]
 004B10AA    mov         eax,dword ptr [eax+10]
 004B10AD    mov         edx,dword ptr [ebp-10]
 004B10B0    call        TList.Get
 004B10B5    mov         dword ptr [ebp-14],eax
 004B10B8    mov         ecx,dword ptr [ebp-14]
 004B10BB    mov         eax,dword ptr [ecx]
 004B10BD    mov         edx,dword ptr [ebp-8]
 004B10C0    cmp         eax,edx
>004B10C2    jne         004B10C9
 004B10C4    mov         eax,dword ptr [ebp-14]
>004B10C7    jmp         004B10D8
 004B10C9    inc         dword ptr [ebp-10]
 004B10CC    mov         edx,dword ptr [ebp-10]
 004B10CF    mov         ecx,dword ptr [ebp-0C]
 004B10D2    cmp         edx,ecx
>004B10D4    jl          004B10A7
 004B10D6    xor         eax,eax
 004B10D8    mov         esp,ebp
 004B10DA    pop         ebp
 004B10DB    ret
end;*}

//004B10DC
{*function sub_004B10DC(?:TSaveIDCDialog; ?:?; ?:?):?;
begin
 004B10DC    push        ebp
 004B10DD    mov         ebp,esp
 004B10DF    add         esp,0FFFFFFD0
 004B10E2    mov         byte ptr [ebp-8],dl
 004B10E5    test        dl,dl
>004B10E7    jle         004B10EE
 004B10E9    call        0067EF6C
 004B10EE    mov         dword ptr [ebp-30],ecx
 004B10F1    mov         byte ptr [ebp-29],dl
 004B10F4    mov         dword ptr [ebp-4],eax
 004B10F7    mov         eax,6C49C0
 004B10FC    call        0066FECC
 004B1101    mov         word ptr [ebp-18],8
 004B1107    mov         ecx,dword ptr [ebp-30]
 004B110A    xor         edx,edx
 004B110C    mov         eax,dword ptr [ebp-4]
 004B110F    call        TOpenDialog.Create
 004B1114    add         dword ptr [ebp-0C],0B
 004B1118    mov         eax,dword ptr [ebp-4]
 004B111B    add         eax,5C;TSaveIDCDialog.Options:TOpenOptions
 004B111E    mov         dl,13
 004B1120    call        004B1170
 004B1125    mov         ecx,dword ptr [ebp-4]
 004B1128    mov         eax,dword ptr [ebp+8]
 004B112B    mov         dword ptr [ecx+44],eax
 004B112E    mov         dl,byte ptr ds:[6941AF];0x0 gvar_006941AF
 004B1134    test        dl,dl
>004B1136    je          004B113F
 004B1138    mov         ecx,1
>004B113D    jmp         004B1141
 004B113F    xor         ecx,ecx
 004B1141    push        ecx
 004B1142    push        65
 004B1144    mov         eax,dword ptr [ebp-4]
 004B1147    push        dword ptr [eax+3C];TSaveIDCDialog.FHandle:HWND
 004B114A    call        USER32.CheckDlgButton
 004B114F    mov         edx,dword ptr [ebp-28]
 004B1152    mov         dword ptr fs:[0],edx
 004B1159    mov         eax,dword ptr [ebp-4]
 004B115C    mov         dl,byte ptr [ebp-29]
 004B115F    test        dl,dl
>004B1161    je          004B1168
 004B1163    call        0067EF79
 004B1168    mov         esp,ebp
 004B116A    pop         ebp
 004B116B    ret         4
end;*}

//004B1170
{*function sub_004B1170(?:TOpenOptions; ?:?):?;
begin
 004B1170    push        ebp
 004B1171    mov         ebp,esp
 004B1173    add         esp,0FFFFFFF8
 004B1176    mov         byte ptr [ebp-5],dl
 004B1179    mov         dword ptr [ebp-4],eax
 004B117C    mov         al,byte ptr [ebp-5]
 004B117F    test        al,al
>004B1181    jl          004B11B6
 004B1183    mov         dl,byte ptr [ebp-5]
 004B1186    cmp         dl,15
>004B1189    jg          004B11B6
 004B118B    movsx       ecx,byte ptr [ebp-5]
 004B118F    and         ecx,80000007
>004B1195    jns         004B119C
 004B1197    dec         ecx
 004B1198    or          ecx,0FFFFFFF8
 004B119B    inc         ecx
 004B119C    mov         al,1
 004B119E    shl         al,cl
 004B11A0    not         al
 004B11A2    movsx       edx,byte ptr [ebp-5]
 004B11A6    test        edx,edx
>004B11A8    jns         004B11AD
 004B11AA    add         edx,7
 004B11AD    sar         edx,3
 004B11B0    mov         ecx,dword ptr [ebp-4]
 004B11B3    and         byte ptr [ecx+edx],al
 004B11B6    mov         eax,dword ptr [ebp-4]
 004B11B9    pop         ecx
 004B11BA    pop         ecx
 004B11BB    pop         ebp
 004B11BC    ret
end;*}

//004B11C0
{*procedure sub_004B11C0(?:?);
begin
 004B11C0    push        ebp
 004B11C1    mov         ebp,esp
 004B11C3    add         esp,0FFFFFFF8
 004B11C6    mov         dword ptr [ebp-8],edx
 004B11C9    mov         dword ptr [ebp-4],eax
 004B11CC    mov         eax,dword ptr [ebp-8]
 004B11CF    mov         edx,dword ptr [eax]
 004B11D1    sub         edx,111
>004B11D7    jne         004B1208
 004B11D9    mov         ecx,dword ptr [ebp-8]
 004B11DC    mov         ax,word ptr [ecx+4]
 004B11E0    sub         ax,65
>004B11E4    jne         004B1208
 004B11E6    push        65
 004B11E8    mov         edx,dword ptr [ebp-4]
 004B11EB    push        dword ptr [edx+3C];TSaveIDCDialog.FHandle:HWND
 004B11EE    call        USER32.IsDlgButtonChecked
 004B11F3    cmp         eax,1
>004B11F6    jne         004B1201
 004B11F8    mov         byte ptr ds:[6941AF],1;gvar_006941AF
>004B11FF    jmp         004B1208
 004B1201    mov         byte ptr ds:[6941AF],0;gvar_006941AF
 004B1208    mov         edx,dword ptr [ebp-8]
 004B120B    mov         eax,dword ptr [ebp-4]
 004B120E    call        005E9EDC
 004B1213    pop         ecx
 004B1214    pop         ecx
 004B1215    pop         ebp
 004B1216    ret
end;*}

end.