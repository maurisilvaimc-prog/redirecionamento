//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit6;

interface

uses
  SysUtils, Classes;

    @@Explorer@Initialize; stdcall;//0046DD28
    @@Explorer@Finalize; stdcall;//0046DD38
    //procedure sub_0046DD48(?:?; ?:?);//0046DD48
    //procedure sub_0046DDBC(?:?);//0046DDBC
    //function sub_0046DE3C(?:?):?;//0046DE3C
    //procedure sub_0046DF70(?:?; ?:?);//0046DF70
    //function sub_0046DFF0(?:?):?;//0046DFF0
    //procedure sub_0046E124(?:?; ?:?);//0046E124
    //function sub_0046E194(?:?):?;//0046E194
    //procedure sub_0046E2AC(?:?; ?:?);//0046E2AC
    //function sub_0046E32C(?:?):?;//0046E32C
    //procedure sub_0046E400(?:?; ?:?);//0046E400
    //function sub_0046E470(?:?):?;//0046E470
    //procedure sub_0046E58C(?:?; ?:?);//0046E58C
    //function sub_0046E5FC(?:?):?;//0046E5FC
    //procedure sub_0046E6F0(?:?; ?:?);//0046E6F0
    //function sub_0046E754(?:?):?;//0046E754
    //function sub_0046E844(?:?; ?:?):?;//0046E844
    //procedure sub_0046ECE8(?:?);//0046ECE8
    //function sub_0046EDD0(?:?; ?:?):?;//0046EDD0
    //procedure sub_0046EF0C(?:?; ?:?; ?:?);//0046EF0C
    //function sub_0046F174(?:?; ?:?; ?:?):?;//0046F174
    //function sub_0046FD54(?:?; ?:?; ?:?):?;//0046FD54
    //function sub_0046FFD8(?:?; ?:?; ?:?):?;//0046FFD8
    //function sub_004701C8(?:?; ?:?; ?:?):?;//004701C8
    //function sub_00470484(?:?; ?:?; ?:?):?;//00470484
    //function sub_00470708(?:?; ?:?; ?:?):?;//00470708
    //function sub_004707F4(?:?; ?:?; ?:?):?;//004707F4
    //function sub_004708F4(?:?; ?:?; ?:?):?;//004708F4
    //function sub_00470B78(?:?; ?:?; ?:?):?;//00470B78
    //function sub_00470DD8(?:?; ?:?; ?:?; ?:?):?;//00470DD8
    //function sub_004710E4(?:?; ?:?; ?:?; ?:?):?;//004710E4
    //function sub_00471484(?:?; ?:?; ?:?; ?:?):?;//00471484
    //function sub_00471688(?:?; ?:?; ?:?; ?:?; ?:?):?;//00471688
    //function sub_0047191C(?:?; ?:?; ?:?; ?:?):?;//0047191C
    //function sub_00471AE4(?:?; ?:?; ?:?; ?:?; ?:?):?;//00471AE4
    //function sub_00471F14(?:?; ?:dword; ?:?; ?:?):?;//00471F14
    //function sub_00472158(?:?; ?:?; ?:?; ?:?):?;//00472158
    //function sub_00472408(?:?; ?:?; ?:?; ?:?):?;//00472408
    //function sub_00472584(?:?; ?:?; ?:?; ?:?):?;//00472584
    //function sub_004726B0(?:?; ?:?; ?:?; ?:?; ?:?):?;//004726B0
    //function sub_0047288C(?:?; ?:?):?;//0047288C
    //function sub_0047299C(?:?; ?:?; ?:?):?;//0047299C
    //function sub_00472C40(?:?; ?:?):?;//00472C40
    //function sub_00472F30(?:?; ?:?):?;//00472F30
    //procedure sub_00473228(?:?; ?:?; ?:?);//00473228
    //function sub_00473858(?:?; ?:?; ?:?):?;//00473858
    //function sub_004738B4(?:?; ?:?):?;//004738B4
    //procedure sub_004738D8(?:?; ?:?);//004738D8
    //function sub_004738F8(?:?; ?:AnsiString; ?:?; ?:?):?;//004738F8
    //function sub_004739A0(?:?; ?:AnsiString; ?:?):?;//004739A0
    //function sub_00473A84(?:?; ?:AnsiString; ?:AnsiString; ?:?):?;//00473A84
    //procedure sub_00473E84(?:?; ?:?; ?:?; ?:?);//00473E84
    //function sub_00474528(?:?):?;//00474528
    //procedure sub_00474590(?:?; ?:?);//00474590
    //function sub_004745D0(?:?):?;//004745D0
    //function sub_00474648(?:?; ?:?):?;//00474648
    //function sub_004748DC(?:?; ?:?):?;//004748DC
    //function sub_00474954(?:?; ?:?; ?:?; ?:?):?;//00474954
    //function sub_004749C0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004749C0
    //procedure sub_00474B34(?:?; ?:?; ?:?);//00474B34
    //function sub_00474DEC(?:?; ?:?; ?:?; ?:?):?;//00474DEC
    //procedure sub_00474E94(?:?; ?:?; ?:Integer);//00474E94
    //function sub_00474F1C(?:?):?;//00474F1C
    //procedure sub_00475054(?:?; ?:?; ?:?);//00475054
    //function sub_0047513C(?:?):?;//0047513C
    //procedure sub_00475220(?:?; ?:?; ?:?; ?:?; ?:?);//00475220
    //procedure sub_00475338(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00475338
    //procedure sub_0047572C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0047572C
    //procedure sub_00475A38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00475A38
    //function sub_00476260(?:?):?;//00476260
    //function sub_0047627C(?:?):?;//0047627C
    //function sub_00476298(?:?):?;//00476298
    //function sub_004762B4(?:?):?;//004762B4
    //function sub_004762D0(?:?):?;//004762D0
    //function sub_004762F0(?:?):?;//004762F0
    //function sub_00476310(?:?):?;//00476310
    //function sub_00476338(?:?):?;//00476338
    //function sub_0047635C(?:TAnalyzeThread; ?:?; ?:?; ?:?):?;//0047635C
    destructor Destroy;//004763E4
    //function sub_00476440(?:?):?;//00476440
    procedure sub_00476450;//00476450
    //function sub_0047673C(?:TAnalyzeThread; ?:?; ?:?):?;//0047673C
    //function sub_00476828(?:?; ?:?; ?:?):?;//00476828
    //function sub_0047688C(?:TAnalyzeThread):?;//0047688C
    procedure sub_004768BC(?:TAnalyzeThread);//004768BC
    //procedure sub_004768C8(?:TAnalyzeThread; ?:?);//004768C8
    procedure sub_00476980(?:TAnalyzeThread; ?:AnsiString);//00476980
    //procedure sub_00476A00(?:TAnalyzeThread; ?:?);//00476A00
    procedure sub_00476A40(?:TAnalyzeThread);//00476A40
    procedure sub_00476A84(?:TAnalyzeThread);//00476A84
    procedure sub_00476AB4(?:TAnalyzeThread);//00476AB4
    procedure sub_00476AE4(?:TAnalyzeThread);//00476AE4
    procedure sub_00476B14(?:TAnalyzeThread);//00476B14
    procedure sub_00476B4C(?:TAnalyzeThread);//00476B4C
    procedure sub_00476B7C(?:TAnalyzeThread);//00476B7C
    procedure sub_00476BAC(?:TAnalyzeThread);//00476BAC
    procedure sub_00476BDC(?:TAnalyzeThread);//00476BDC
    procedure sub_00476C0C(?:TAnalyzeThread);//00476C0C
    procedure sub_00476E6C(?:TAnalyzeThread);//00476E6C
    procedure sub_00478874(?:TAnalyzeThread);//00478874
    procedure sub_00479218(?:TAnalyzeThread);//00479218
    procedure sub_0047A110(?:TAnalyzeThread);//0047A110
    procedure sub_0047A310(?:TAnalyzeThread);//0047A310
    //procedure sub_0047A8E4(?:TAnalyzeThread; ?:?; ?:Pointer; ?:?);//0047A8E4
    procedure sub_0047AA68(?:TAnalyzeThread);//0047AA68
    procedure sub_0047C2C8(?:TAnalyzeThread);//0047C2C8
    procedure sub_0047DCA4(?:TAnalyzeThread);//0047DCA4
    procedure sub_0047E788(?:TAnalyzeThread);//0047E788
    procedure sub_0047E9B0(?:TAnalyzeThread);//0047E9B0
    procedure sub_0047FD40(?:TAnalyzeThread);//0047FD40
    procedure sub_00480014(?:TAnalyzeThread);//00480014
    procedure sub_00480468(?:TAnalyzeThread);//00480468
    //procedure sub_0048071C(?:TAnalyzeThread; ?:?);//0048071C
    procedure sub_00480850(?:TAnalyzeThread);//00480850
    procedure sub_00481CC0(?:TAnalyzeThread);//00481CC0
    procedure sub_00481E7C(?:TAnalyzeThread);//00481E7C

implementation

//0046DD48
{*procedure sub_0046DD48(?:?; ?:?);
begin
 0046DD48    push        ebp
 0046DD49    mov         ebp,esp
 0046DD4B    add         esp,0FFFFFFDC
 0046DD4E    mov         eax,6B17D4
 0046DD53    call        0066FECC
 0046DD58    mov         dword ptr [ebp-8],2
 0046DD5F    mov         edx,dword ptr [ebp+8]
 0046DD62    test        edx,edx
>0046DD64    je          0046DDAD
 0046DD66    mov         word ptr [ebp-14],8
 0046DD6C    mov         ecx,dword ptr [ebp+8]
 0046DD6F    push        dword ptr [ecx+11]
 0046DD72    call        0046DDBC
 0046DD77    pop         ecx
 0046DD78    dec         dword ptr [ebp-8]
 0046DD7B    mov         eax,dword ptr [ebp+8]
 0046DD7E    add         eax,0D
 0046DD81    mov         edx,2
 0046DD86    call        0067DCA0
 0046DD8B    dec         dword ptr [ebp-8]
 0046DD8E    mov         eax,dword ptr [ebp+8]
 0046DD91    add         eax,9
 0046DD94    mov         edx,2
 0046DD99    call        0067DCA0
 0046DD9E    test        byte ptr [ebp+0C],1
>0046DDA2    je          0046DDAD
 0046DDA4    push        dword ptr [ebp+8]
 0046DDA7    call        0066EAB0
 0046DDAC    pop         ecx
 0046DDAD    mov         ecx,dword ptr [ebp-24]
 0046DDB0    mov         dword ptr fs:[0],ecx
 0046DDB7    mov         esp,ebp
 0046DDB9    pop         ebp
 0046DDBA    ret
end;*}

//0046DDBC
{*procedure sub_0046DDBC(?:?);
begin
 0046DDBC    push        ebp
 0046DDBD    mov         ebp,esp
 0046DDBF    add         esp,0FFFFFFCC
 0046DDC2    mov         eax,6B17F8
 0046DDC7    call        0066FECC
 0046DDCC    mov         edx,dword ptr [ebp+8]
 0046DDCF    test        edx,edx
>0046DDD1    je          0046DE2F
 0046DDD3    xor         ecx,ecx
 0046DDD5    mov         dword ptr [ebp-30],ecx
>0046DDD8    jmp         0046DDF4
 0046DDDA    mov         edx,dword ptr [ebp-30]
 0046DDDD    mov         eax,dword ptr [ebp+8]
 0046DDE0    call        TList.Get
 0046DDE5    mov         dword ptr [ebp-34],eax
 0046DDE8    push        dword ptr [ebp-34]
 0046DDEB    call        0066EAB0
 0046DDF0    pop         ecx
 0046DDF1    inc         dword ptr [ebp-30]
 0046DDF4    mov         ecx,dword ptr [ebp-30]
 0046DDF7    mov         eax,dword ptr [ebp+8]
 0046DDFA    mov         edx,dword ptr [eax+8]
 0046DDFD    cmp         ecx,edx
>0046DDFF    jl          0046DDDA
 0046DE01    mov         ecx,dword ptr [ebp+8]
 0046DE04    mov         dword ptr [ebp-8],ecx
 0046DE07    mov         eax,dword ptr [ebp-8]
 0046DE0A    test        eax,eax
>0046DE0C    je          0046DE2F
 0046DE0E    mov         edx,dword ptr [ebp-8]
 0046DE11    mov         ecx,dword ptr [edx]
 0046DE13    mov         dword ptr [ebp-4],ecx
 0046DE16    mov         word ptr [ebp-1C],14
 0046DE1C    mov         edx,3
 0046DE21    mov         eax,dword ptr [ebp-8]
 0046DE24    mov         ecx,dword ptr [eax]
 0046DE26    call        dword ptr [ecx-4]
 0046DE29    mov         word ptr [ebp-1C],8
 0046DE2F    mov         eax,dword ptr [ebp-2C]
 0046DE32    mov         fs:[00000000],eax
 0046DE38    mov         esp,ebp
 0046DE3A    pop         ebp
 0046DE3B    ret
end;*}

//0046DE3C
{*function sub_0046DE3C(?:?):?;
begin
 0046DE3C    push        ebp
 0046DE3D    mov         ebp,esp
 0046DE3F    add         esp,0FFFFFFCC
 0046DE42    mov         dword ptr [ebp-4],eax
 0046DE45    mov         eax,6B1858
 0046DE4A    call        0066FECC
 0046DE4F    mov         word ptr [ebp-24],8
 0046DE55    mov         eax,dword ptr [ebp-4]
 0046DE58    add         eax,2
 0046DE5B    call        00401EA8
 0046DE60    inc         dword ptr [ebp-18]
 0046DE63    mov         eax,dword ptr [ebp-4]
 0046DE66    add         eax,7
 0046DE69    call        00401EA8
 0046DE6E    inc         dword ptr [ebp-18]
 0046DE71    mov         eax,dword ptr [ebp-4]
 0046DE74    add         eax,0B
 0046DE77    call        00401EA8
 0046DE7C    inc         dword ptr [ebp-18]
 0046DE7F    mov         edx,dword ptr [ebp-4]
 0046DE82    mov         word ptr [edx],0FFFF
 0046DE87    mov         word ptr [ebp-24],14
 0046DE8D    mov         edx,6B1598
 0046DE92    lea         eax,[ebp-8]
 0046DE95    call        0067DAB4
 0046DE9A    inc         dword ptr [ebp-18]
 0046DE9D    lea         edx,[ebp-8]
 0046DEA0    mov         eax,dword ptr [ebp-4]
 0046DEA3    add         eax,2
 0046DEA6    call        0067DCD0
 0046DEAB    dec         dword ptr [ebp-18]
 0046DEAE    lea         eax,[ebp-8]
 0046DEB1    mov         edx,2
 0046DEB6    call        0067DCA0
 0046DEBB    mov         ecx,dword ptr [ebp-4]
 0046DEBE    mov         byte ptr [ecx+6],0
 0046DEC2    mov         word ptr [ebp-24],20
 0046DEC8    mov         edx,6B1599
 0046DECD    lea         eax,[ebp-0C]
 0046DED0    call        0067DAB4
 0046DED5    inc         dword ptr [ebp-18]
 0046DED8    lea         edx,[ebp-0C]
 0046DEDB    mov         eax,dword ptr [ebp-4]
 0046DEDE    add         eax,7
 0046DEE1    call        0067DCD0
 0046DEE6    dec         dword ptr [ebp-18]
 0046DEE9    lea         eax,[ebp-0C]
 0046DEEC    mov         edx,2
 0046DEF1    call        0067DCA0
 0046DEF6    mov         word ptr [ebp-24],2C
 0046DEFC    mov         edx,6B159A
 0046DF01    lea         eax,[ebp-10]
 0046DF04    call        0067DAB4
 0046DF09    inc         dword ptr [ebp-18]
 0046DF0C    lea         edx,[ebp-10]
 0046DF0F    mov         eax,dword ptr [ebp-4]
 0046DF12    add         eax,0B
 0046DF15    call        0067DCD0
 0046DF1A    dec         dword ptr [ebp-18]
 0046DF1D    lea         eax,[ebp-10]
 0046DF20    mov         edx,2
 0046DF25    call        0067DCA0
 0046DF2A    mov         ecx,dword ptr [ebp-4]
 0046DF2D    xor         eax,eax
 0046DF2F    mov         dword ptr [ecx+0F],eax
 0046DF32    mov         edx,dword ptr [ebp-4]
 0046DF35    xor         ecx,ecx
 0046DF37    mov         dword ptr [edx+13],ecx
 0046DF3A    mov         eax,dword ptr [ebp-4]
 0046DF3D    xor         edx,edx
 0046DF3F    mov         dword ptr [eax+17],edx
 0046DF42    mov         ecx,dword ptr [ebp-34]
 0046DF45    mov         dword ptr fs:[0],ecx
 0046DF4C    mov         eax,dword ptr [ebp-4]
 0046DF4F    mov         esp,ebp
 0046DF51    pop         ebp
 0046DF52    ret
end;*}

//0046DF70
{*procedure sub_0046DF70(?:?; ?:?);
begin
 0046DF70    push        ebp
 0046DF71    mov         ebp,esp
 0046DF73    add         esp,0FFFFFFD4
 0046DF76    mov         dword ptr [ebp-2C],edx
 0046DF79    mov         dword ptr [ebp-4],eax
 0046DF7C    mov         eax,6B18A0
 0046DF81    call        0066FECC
 0046DF86    mov         dword ptr [ebp-0C],3
 0046DF8D    mov         edx,dword ptr [ebp-4]
 0046DF90    test        edx,edx
>0046DF92    je          0046DFE2
 0046DF94    mov         word ptr [ebp-18],8
 0046DF9A    dec         dword ptr [ebp-0C]
 0046DF9D    mov         eax,dword ptr [ebp-4]
 0046DFA0    add         eax,0B
 0046DFA3    mov         edx,2
 0046DFA8    call        0067DCA0
 0046DFAD    dec         dword ptr [ebp-0C]
 0046DFB0    mov         eax,dword ptr [ebp-4]
 0046DFB3    add         eax,7
 0046DFB6    mov         edx,2
 0046DFBB    call        0067DCA0
 0046DFC0    dec         dword ptr [ebp-0C]
 0046DFC3    mov         eax,dword ptr [ebp-4]
 0046DFC6    add         eax,2
 0046DFC9    mov         edx,2
 0046DFCE    call        0067DCA0
 0046DFD3    test        byte ptr [ebp-2C],1
>0046DFD7    je          0046DFE2
 0046DFD9    push        dword ptr [ebp-4]
 0046DFDC    call        0066EAB0
 0046DFE1    pop         ecx
 0046DFE2    mov         ecx,dword ptr [ebp-28]
 0046DFE5    mov         dword ptr fs:[0],ecx
 0046DFEC    mov         esp,ebp
 0046DFEE    pop         ebp
 0046DFEF    ret
end;*}

//0046DFF0
{*function sub_0046DFF0(?:?):?;
begin
 0046DFF0    push        ebp
 0046DFF1    mov         ebp,esp
 0046DFF3    add         esp,0FFFFFFD0
 0046DFF6    mov         dword ptr [ebp-4],eax
 0046DFF9    mov         eax,6B18E4
 0046DFFE    call        0066FECC
 0046E003    mov         word ptr [ebp-20],8
 0046E009    mov         eax,dword ptr [ebp-4]
 0046E00C    add         eax,6
 0046E00F    call        00401EA8
 0046E014    inc         dword ptr [ebp-14]
 0046E017    mov         eax,dword ptr [ebp-4]
 0046E01A    add         eax,0D
 0046E01D    call        00401EA8
 0046E022    inc         dword ptr [ebp-14]
 0046E025    mov         edx,dword ptr [ebp-4]
 0046E028    xor         ecx,ecx
 0046E02A    mov         dword ptr [edx],ecx
 0046E02C    mov         eax,dword ptr [ebp-4]
 0046E02F    mov         word ptr [eax+4],0FFFF
 0046E035    mov         word ptr [ebp-20],14
 0046E03B    mov         edx,6B159B
 0046E040    lea         eax,[ebp-8]
 0046E043    call        0067DAB4
 0046E048    inc         dword ptr [ebp-14]
 0046E04B    lea         edx,[ebp-8]
 0046E04E    mov         eax,dword ptr [ebp-4]
 0046E051    add         eax,6
 0046E054    call        0067DCD0
 0046E059    dec         dword ptr [ebp-14]
 0046E05C    lea         eax,[ebp-8]
 0046E05F    mov         edx,2
 0046E064    call        0067DCA0
 0046E069    mov         ecx,dword ptr [ebp-4]
 0046E06C    mov         byte ptr [ecx+0A],0FF
 0046E070    mov         eax,dword ptr [ebp-4]
 0046E073    mov         word ptr [eax+0B],0
 0046E079    mov         word ptr [ebp-20],20
 0046E07F    mov         edx,6B159C
 0046E084    lea         eax,[ebp-0C]
 0046E087    call        0067DAB4
 0046E08C    inc         dword ptr [ebp-14]
 0046E08F    lea         edx,[ebp-0C]
 0046E092    mov         eax,dword ptr [ebp-4]
 0046E095    add         eax,0D
 0046E098    call        0067DCD0
 0046E09D    dec         dword ptr [ebp-14]
 0046E0A0    lea         eax,[ebp-0C]
 0046E0A3    mov         edx,2
 0046E0A8    call        0067DCA0
 0046E0AD    mov         ecx,dword ptr [ebp-4]
 0046E0B0    xor         eax,eax
 0046E0B2    mov         dword ptr [ecx+11],eax
 0046E0B5    mov         edx,dword ptr [ebp-4]
 0046E0B8    xor         ecx,ecx
 0046E0BA    mov         dword ptr [edx+15],ecx
 0046E0BD    mov         eax,dword ptr [ebp-4]
 0046E0C0    xor         edx,edx
 0046E0C2    mov         dword ptr [eax+19],edx
 0046E0C5    mov         ecx,dword ptr [ebp-4]
 0046E0C8    mov         word ptr [ecx+1D],0
 0046E0CE    mov         eax,dword ptr [ebp-4]
 0046E0D1    xor         edx,edx
 0046E0D3    mov         dword ptr [eax+1F],edx
 0046E0D6    mov         ecx,dword ptr [ebp-4]
 0046E0D9    mov         word ptr [ecx+23],0
 0046E0DF    mov         eax,dword ptr [ebp-4]
 0046E0E2    xor         edx,edx
 0046E0E4    mov         dword ptr [eax+25],edx
 0046E0E7    mov         ecx,dword ptr [ebp-4]
 0046E0EA    mov         word ptr [ecx+29],0
 0046E0F0    mov         eax,dword ptr [ebp-4]
 0046E0F3    xor         edx,edx
 0046E0F5    mov         dword ptr [eax+2B],edx
 0046E0F8    mov         ecx,dword ptr [ebp-30]
 0046E0FB    mov         dword ptr fs:[0],ecx
 0046E102    mov         eax,dword ptr [ebp-4]
 0046E105    mov         esp,ebp
 0046E107    pop         ebp
 0046E108    ret
end;*}

//0046E124
{*procedure sub_0046E124(?:?; ?:?);
begin
 0046E124    push        ebp
 0046E125    mov         ebp,esp
 0046E127    add         esp,0FFFFFFD4
 0046E12A    mov         dword ptr [ebp-2C],edx
 0046E12D    mov         dword ptr [ebp-4],eax
 0046E130    mov         eax,6B1920
 0046E135    call        0066FECC
 0046E13A    mov         dword ptr [ebp-0C],2
 0046E141    mov         edx,dword ptr [ebp-4]
 0046E144    test        edx,edx
>0046E146    je          0046E183
 0046E148    mov         word ptr [ebp-18],8
 0046E14E    dec         dword ptr [ebp-0C]
 0046E151    mov         eax,dword ptr [ebp-4]
 0046E154    add         eax,0D
 0046E157    mov         edx,2
 0046E15C    call        0067DCA0
 0046E161    dec         dword ptr [ebp-0C]
 0046E164    mov         eax,dword ptr [ebp-4]
 0046E167    add         eax,6
 0046E16A    mov         edx,2
 0046E16F    call        0067DCA0
 0046E174    test        byte ptr [ebp-2C],1
>0046E178    je          0046E183
 0046E17A    push        dword ptr [ebp-4]
 0046E17D    call        0066EAB0
 0046E182    pop         ecx
 0046E183    mov         ecx,dword ptr [ebp-28]
 0046E186    mov         dword ptr fs:[0],ecx
 0046E18D    mov         esp,ebp
 0046E18F    pop         ebp
 0046E190    ret
end;*}

//0046E194
{*function sub_0046E194(?:?):?;
begin
 0046E194    push        ebp
 0046E195    mov         ebp,esp
 0046E197    add         esp,0FFFFFFCC
 0046E19A    mov         dword ptr [ebp-4],eax
 0046E19D    mov         eax,6B1974
 0046E1A2    call        0066FECC
 0046E1A7    mov         word ptr [ebp-24],8
 0046E1AD    mov         eax,dword ptr [ebp-4]
 0046E1B0    add         eax,2
 0046E1B3    call        00401EA8
 0046E1B8    inc         dword ptr [ebp-18]
 0046E1BB    mov         eax,dword ptr [ebp-4]
 0046E1BE    add         eax,7
 0046E1C1    call        00401EA8
 0046E1C6    inc         dword ptr [ebp-18]
 0046E1C9    mov         eax,dword ptr [ebp-4]
 0046E1CC    add         eax,0B
 0046E1CF    call        00401EA8
 0046E1D4    inc         dword ptr [ebp-18]
 0046E1D7    mov         edx,dword ptr [ebp-4]
 0046E1DA    mov         word ptr [edx],0FFFF
 0046E1DF    mov         word ptr [ebp-24],14
 0046E1E5    mov         edx,6B159D
 0046E1EA    lea         eax,[ebp-8]
 0046E1ED    call        0067DAB4
 0046E1F2    inc         dword ptr [ebp-18]
 0046E1F5    lea         edx,[ebp-8]
 0046E1F8    mov         eax,dword ptr [ebp-4]
 0046E1FB    add         eax,2
 0046E1FE    call        0067DCD0
 0046E203    dec         dword ptr [ebp-18]
 0046E206    lea         eax,[ebp-8]
 0046E209    mov         edx,2
 0046E20E    call        0067DCA0
 0046E213    mov         ecx,dword ptr [ebp-4]
 0046E216    mov         byte ptr [ecx+6],0
 0046E21A    mov         word ptr [ebp-24],20
 0046E220    mov         edx,6B159E
 0046E225    lea         eax,[ebp-0C]
 0046E228    call        0067DAB4
 0046E22D    inc         dword ptr [ebp-18]
 0046E230    lea         edx,[ebp-0C]
 0046E233    mov         eax,dword ptr [ebp-4]
 0046E236    add         eax,7
 0046E239    call        0067DCD0
 0046E23E    dec         dword ptr [ebp-18]
 0046E241    lea         eax,[ebp-0C]
 0046E244    mov         edx,2
 0046E249    call        0067DCA0
 0046E24E    mov         word ptr [ebp-24],2C
 0046E254    mov         edx,6B159F
 0046E259    lea         eax,[ebp-10]
 0046E25C    call        0067DAB4
 0046E261    inc         dword ptr [ebp-18]
 0046E264    lea         edx,[ebp-10]
 0046E267    mov         eax,dword ptr [ebp-4]
 0046E26A    add         eax,0B
 0046E26D    call        0067DCD0
 0046E272    dec         dword ptr [ebp-18]
 0046E275    lea         eax,[ebp-10]
 0046E278    mov         edx,2
 0046E27D    call        0067DCA0
 0046E282    mov         ecx,dword ptr [ebp-34]
 0046E285    mov         dword ptr fs:[0],ecx
 0046E28C    mov         eax,dword ptr [ebp-4]
 0046E28F    mov         esp,ebp
 0046E291    pop         ebp
 0046E292    ret
end;*}

//0046E2AC
{*procedure sub_0046E2AC(?:?; ?:?);
begin
 0046E2AC    push        ebp
 0046E2AD    mov         ebp,esp
 0046E2AF    add         esp,0FFFFFFD4
 0046E2B2    mov         dword ptr [ebp-2C],edx
 0046E2B5    mov         dword ptr [ebp-4],eax
 0046E2B8    mov         eax,6B19BC
 0046E2BD    call        0066FECC
 0046E2C2    mov         dword ptr [ebp-0C],3
 0046E2C9    mov         edx,dword ptr [ebp-4]
 0046E2CC    test        edx,edx
>0046E2CE    je          0046E31E
 0046E2D0    mov         word ptr [ebp-18],8
 0046E2D6    dec         dword ptr [ebp-0C]
 0046E2D9    mov         eax,dword ptr [ebp-4]
 0046E2DC    add         eax,0B
 0046E2DF    mov         edx,2
 0046E2E4    call        0067DCA0
 0046E2E9    dec         dword ptr [ebp-0C]
 0046E2EC    mov         eax,dword ptr [ebp-4]
 0046E2EF    add         eax,7
 0046E2F2    mov         edx,2
 0046E2F7    call        0067DCA0
 0046E2FC    dec         dword ptr [ebp-0C]
 0046E2FF    mov         eax,dword ptr [ebp-4]
 0046E302    add         eax,2
 0046E305    mov         edx,2
 0046E30A    call        0067DCA0
 0046E30F    test        byte ptr [ebp-2C],1
>0046E313    je          0046E31E
 0046E315    push        dword ptr [ebp-4]
 0046E318    call        0066EAB0
 0046E31D    pop         ecx
 0046E31E    mov         ecx,dword ptr [ebp-28]
 0046E321    mov         dword ptr fs:[0],ecx
 0046E328    mov         esp,ebp
 0046E32A    pop         ebp
 0046E32B    ret
end;*}

//0046E32C
{*function sub_0046E32C(?:?):?;
begin
 0046E32C    push        ebp
 0046E32D    mov         ebp,esp
 0046E32F    add         esp,0FFFFFFD0
 0046E332    mov         dword ptr [ebp-4],eax
 0046E335    mov         eax,6B1A00
 0046E33A    call        0066FECC
 0046E33F    mov         word ptr [ebp-20],8
 0046E345    mov         eax,dword ptr [ebp-4]
 0046E348    add         eax,2
 0046E34B    call        00401EA8
 0046E350    inc         dword ptr [ebp-14]
 0046E353    mov         eax,dword ptr [ebp-4]
 0046E356    add         eax,6
 0046E359    call        00401EA8
 0046E35E    inc         dword ptr [ebp-14]
 0046E361    mov         edx,dword ptr [ebp-4]
 0046E364    mov         word ptr [edx],0FFFF
 0046E369    mov         word ptr [ebp-20],14
 0046E36F    mov         edx,6B15A0
 0046E374    lea         eax,[ebp-8]
 0046E377    call        0067DAB4
 0046E37C    inc         dword ptr [ebp-14]
 0046E37F    lea         edx,[ebp-8]
 0046E382    mov         eax,dword ptr [ebp-4]
 0046E385    add         eax,2
 0046E388    call        0067DCD0
 0046E38D    dec         dword ptr [ebp-14]
 0046E390    lea         eax,[ebp-8]
 0046E393    mov         edx,2
 0046E398    call        0067DCA0
 0046E39D    mov         word ptr [ebp-20],20
 0046E3A3    mov         edx,6B15A1
 0046E3A8    lea         eax,[ebp-0C]
 0046E3AB    call        0067DAB4
 0046E3B0    inc         dword ptr [ebp-14]
 0046E3B3    lea         edx,[ebp-0C]
 0046E3B6    mov         eax,dword ptr [ebp-4]
 0046E3B9    add         eax,6
 0046E3BC    call        0067DCD0
 0046E3C1    dec         dword ptr [ebp-14]
 0046E3C4    lea         eax,[ebp-0C]
 0046E3C7    mov         edx,2
 0046E3CC    call        0067DCA0
 0046E3D1    mov         ecx,dword ptr [ebp-30]
 0046E3D4    mov         dword ptr fs:[0],ecx
 0046E3DB    mov         eax,dword ptr [ebp-4]
 0046E3DE    mov         esp,ebp
 0046E3E0    pop         ebp
 0046E3E1    ret
end;*}

//0046E400
{*procedure sub_0046E400(?:?; ?:?);
begin
 0046E400    push        ebp
 0046E401    mov         ebp,esp
 0046E403    add         esp,0FFFFFFD4
 0046E406    mov         dword ptr [ebp-2C],edx
 0046E409    mov         dword ptr [ebp-4],eax
 0046E40C    mov         eax,6B1A3C
 0046E411    call        0066FECC
 0046E416    mov         dword ptr [ebp-0C],2
 0046E41D    mov         edx,dword ptr [ebp-4]
 0046E420    test        edx,edx
>0046E422    je          0046E45F
 0046E424    mov         word ptr [ebp-18],8
 0046E42A    dec         dword ptr [ebp-0C]
 0046E42D    mov         eax,dword ptr [ebp-4]
 0046E430    add         eax,6
 0046E433    mov         edx,2
 0046E438    call        0067DCA0
 0046E43D    dec         dword ptr [ebp-0C]
 0046E440    mov         eax,dword ptr [ebp-4]
 0046E443    add         eax,2
 0046E446    mov         edx,2
 0046E44B    call        0067DCA0
 0046E450    test        byte ptr [ebp-2C],1
>0046E454    je          0046E45F
 0046E456    push        dword ptr [ebp-4]
 0046E459    call        0066EAB0
 0046E45E    pop         ecx
 0046E45F    mov         ecx,dword ptr [ebp-28]
 0046E462    mov         dword ptr fs:[0],ecx
 0046E469    mov         esp,ebp
 0046E46B    pop         ebp
 0046E46C    ret
end;*}

//0046E470
{*function sub_0046E470(?:?):?;
begin
 0046E470    push        ebp
 0046E471    mov         ebp,esp
 0046E473    add         esp,0FFFFFFD0
 0046E476    mov         dword ptr [ebp-4],eax
 0046E479    mov         eax,6B1A80
 0046E47E    call        0066FECC
 0046E483    mov         word ptr [ebp-20],8
 0046E489    mov         eax,dword ptr [ebp-4]
 0046E48C    add         eax,2
 0046E48F    call        00401EA8
 0046E494    inc         dword ptr [ebp-14]
 0046E497    mov         eax,dword ptr [ebp-4]
 0046E49A    add         eax,0E
 0046E49D    call        00401EA8
 0046E4A2    inc         dword ptr [ebp-14]
 0046E4A5    mov         edx,dword ptr [ebp-4]
 0046E4A8    mov         word ptr [edx],0FFFF
 0046E4AD    mov         word ptr [ebp-20],14
 0046E4B3    mov         edx,6B15A2
 0046E4B8    lea         eax,[ebp-8]
 0046E4BB    call        0067DAB4
 0046E4C0    inc         dword ptr [ebp-14]
 0046E4C3    lea         edx,[ebp-8]
 0046E4C6    mov         eax,dword ptr [ebp-4]
 0046E4C9    add         eax,2
 0046E4CC    call        0067DCD0
 0046E4D1    dec         dword ptr [ebp-14]
 0046E4D4    lea         eax,[ebp-8]
 0046E4D7    mov         edx,2
 0046E4DC    call        0067DCA0
 0046E4E1    mov         ecx,dword ptr [ebp-4]
 0046E4E4    mov         byte ptr [ecx+6],0
 0046E4E8    mov         eax,dword ptr [ebp-4]
 0046E4EB    mov         byte ptr [eax+7],0
 0046E4EF    mov         edx,dword ptr [ebp-4]
 0046E4F2    mov         byte ptr [edx+8],0
 0046E4F6    mov         ecx,dword ptr [ebp-4]
 0046E4F9    mov         byte ptr [ecx+9],0
 0046E4FD    mov         eax,dword ptr [ebp-4]
 0046E500    xor         edx,edx
 0046E502    mov         dword ptr [eax+0A],edx
 0046E505    mov         word ptr [ebp-20],20
 0046E50B    mov         edx,6B15A3
 0046E510    lea         eax,[ebp-0C]
 0046E513    call        0067DAB4
 0046E518    inc         dword ptr [ebp-14]
 0046E51B    lea         edx,[ebp-0C]
 0046E51E    mov         eax,dword ptr [ebp-4]
 0046E521    add         eax,0E
 0046E524    call        0067DCD0
 0046E529    dec         dword ptr [ebp-14]
 0046E52C    lea         eax,[ebp-0C]
 0046E52F    mov         edx,2
 0046E534    call        0067DCA0
 0046E539    mov         ecx,dword ptr [ebp-4]
 0046E53C    xor         eax,eax
 0046E53E    mov         dword ptr [ecx+12],eax
 0046E541    mov         edx,dword ptr [ebp-4]
 0046E544    xor         ecx,ecx
 0046E546    mov         dword ptr [edx+16],ecx
 0046E549    mov         eax,dword ptr [ebp-4]
 0046E54C    xor         edx,edx
 0046E54E    mov         dword ptr [eax+1A],edx
 0046E551    mov         ecx,dword ptr [ebp-4]
 0046E554    mov         word ptr [ecx+1E],0
 0046E55A    mov         eax,dword ptr [ebp-4]
 0046E55D    xor         edx,edx
 0046E55F    mov         dword ptr [eax+20],edx
 0046E562    mov         ecx,dword ptr [ebp-30]
 0046E565    mov         dword ptr fs:[0],ecx
 0046E56C    mov         eax,dword ptr [ebp-4]
 0046E56F    mov         esp,ebp
 0046E571    pop         ebp
 0046E572    ret
end;*}

//0046E58C
{*procedure sub_0046E58C(?:?; ?:?);
begin
 0046E58C    push        ebp
 0046E58D    mov         ebp,esp
 0046E58F    add         esp,0FFFFFFD4
 0046E592    mov         dword ptr [ebp-2C],edx
 0046E595    mov         dword ptr [ebp-4],eax
 0046E598    mov         eax,6B1ABC
 0046E59D    call        0066FECC
 0046E5A2    mov         dword ptr [ebp-0C],2
 0046E5A9    mov         edx,dword ptr [ebp-4]
 0046E5AC    test        edx,edx
>0046E5AE    je          0046E5EB
 0046E5B0    mov         word ptr [ebp-18],8
 0046E5B6    dec         dword ptr [ebp-0C]
 0046E5B9    mov         eax,dword ptr [ebp-4]
 0046E5BC    add         eax,0E
 0046E5BF    mov         edx,2
 0046E5C4    call        0067DCA0
 0046E5C9    dec         dword ptr [ebp-0C]
 0046E5CC    mov         eax,dword ptr [ebp-4]
 0046E5CF    add         eax,2
 0046E5D2    mov         edx,2
 0046E5D7    call        0067DCA0
 0046E5DC    test        byte ptr [ebp-2C],1
>0046E5E0    je          0046E5EB
 0046E5E2    push        dword ptr [ebp-4]
 0046E5E5    call        0066EAB0
 0046E5EA    pop         ecx
 0046E5EB    mov         ecx,dword ptr [ebp-28]
 0046E5EE    mov         dword ptr fs:[0],ecx
 0046E5F5    mov         esp,ebp
 0046E5F7    pop         ebp
 0046E5F8    ret
end;*}

//0046E5FC
{*function sub_0046E5FC(?:?):?;
begin
 0046E5FC    push        ebp
 0046E5FD    mov         ebp,esp
 0046E5FF    add         esp,0FFFFFFD4
 0046E602    mov         dword ptr [ebp-4],eax
 0046E605    mov         eax,6B1AF0
 0046E60A    call        0066FECC
 0046E60F    mov         word ptr [ebp-1C],8
 0046E615    mov         eax,dword ptr [ebp-4]
 0046E618    add         eax,65
 0046E61B    call        00401EA8
 0046E620    inc         dword ptr [ebp-10]
 0046E623    mov         edx,dword ptr [ebp-4]
 0046E626    mov         byte ptr [edx+28],0
 0046E62A    mov         ecx,dword ptr [ebp-4]
 0046E62D    xor         eax,eax
 0046E62F    mov         dword ptr [ecx],eax
 0046E631    mov         edx,dword ptr [ebp-4]
 0046E634    xor         ecx,ecx
 0046E636    mov         dword ptr [edx+29],ecx
 0046E639    mov         eax,dword ptr [ebp-4]
 0046E63C    xor         edx,edx
 0046E63E    mov         dword ptr [eax+0C],edx
 0046E641    mov         ecx,dword ptr [ebp-4]
 0046E644    xor         eax,eax
 0046E646    mov         dword ptr [ecx+8],eax
 0046E649    mov         edx,dword ptr [ebp-4]
 0046E64C    xor         ecx,ecx
 0046E64E    mov         dword ptr [edx+14],ecx
 0046E651    mov         eax,dword ptr [ebp-4]
 0046E654    xor         edx,edx
 0046E656    mov         dword ptr [eax+18],edx
 0046E659    mov         ecx,dword ptr [ebp-4]
 0046E65C    xor         eax,eax
 0046E65E    mov         dword ptr [ecx+1C],eax
 0046E661    mov         edx,dword ptr [ebp-4]
 0046E664    xor         ecx,ecx
 0046E666    mov         dword ptr [edx+20],ecx
 0046E669    mov         eax,dword ptr [ebp-4]
 0046E66C    xor         edx,edx
 0046E66E    mov         dword ptr [eax+24],edx
 0046E671    mov         ecx,dword ptr [ebp-4]
 0046E674    xor         eax,eax
 0046E676    mov         dword ptr [ecx+10],eax
 0046E679    mov         edx,dword ptr [ebp-4]
 0046E67C    xor         ecx,ecx
 0046E67E    mov         dword ptr [edx+5D],ecx
 0046E681    mov         eax,dword ptr [ebp-4]
 0046E684    xor         edx,edx
 0046E686    mov         dword ptr [eax+61],edx
 0046E689    mov         word ptr [ebp-1C],14
 0046E68F    mov         edx,6B15A4
 0046E694    lea         eax,[ebp-8]
 0046E697    call        0067DAB4
 0046E69C    inc         dword ptr [ebp-10]
 0046E69F    lea         edx,[ebp-8]
 0046E6A2    mov         eax,dword ptr [ebp-4]
 0046E6A5    add         eax,65
 0046E6A8    call        0067DCD0
 0046E6AD    dec         dword ptr [ebp-10]
 0046E6B0    lea         eax,[ebp-8]
 0046E6B3    mov         edx,2
 0046E6B8    call        0067DCA0
 0046E6BD    mov         ecx,dword ptr [ebp-2C]
 0046E6C0    mov         dword ptr fs:[0],ecx
 0046E6C7    mov         eax,dword ptr [ebp-4]
 0046E6CA    mov         esp,ebp
 0046E6CC    pop         ebp
 0046E6CD    ret
end;*}

//0046E6F0
{*procedure sub_0046E6F0(?:?; ?:?);
begin
 0046E6F0    push        ebp
 0046E6F1    mov         ebp,esp
 0046E6F3    add         esp,0FFFFFFD4
 0046E6F6    mov         dword ptr [ebp-2C],edx
 0046E6F9    mov         dword ptr [ebp-4],eax
 0046E6FC    mov         eax,6B1B20
 0046E701    call        0066FECC
 0046E706    mov         dword ptr [ebp-0C],1
 0046E70D    mov         edx,dword ptr [ebp-4]
 0046E710    test        edx,edx
>0046E712    je          0046E744
 0046E714    mov         word ptr [ebp-18],8
 0046E71A    mov         eax,dword ptr [ebp-4]
 0046E71D    call        0046ECE8
 0046E722    dec         dword ptr [ebp-0C]
 0046E725    mov         eax,dword ptr [ebp-4]
 0046E728    add         eax,65
 0046E72B    mov         edx,2
 0046E730    call        0067DCA0
 0046E735    test        byte ptr [ebp-2C],1
>0046E739    je          0046E744
 0046E73B    push        dword ptr [ebp-4]
 0046E73E    call        0066EAB0
 0046E743    pop         ecx
 0046E744    mov         ecx,dword ptr [ebp-28]
 0046E747    mov         dword ptr fs:[0],ecx
 0046E74E    mov         esp,ebp
 0046E750    pop         ebp
 0046E751    ret
end;*}

//0046E754
{*function sub_0046E754(?:?):?;
begin
 0046E754    push        ebp
 0046E755    mov         ebp,esp
 0046E757    add         esp,0FFFFFED4
 0046E75D    mov         dword ptr [ebp-4],eax
 0046E760    mov         eax,dword ptr [ebp-4]
 0046E763    push        dword ptr [eax+29]
 0046E766    push        18
 0046E768    push        1
 0046E76A    lea         edx,[ebp-2C]
 0046E76D    push        edx
 0046E76E    call        00671F38
 0046E773    add         esp,10
 0046E776    mov         ecx,dword ptr [ebp-4]
 0046E779    push        dword ptr [ecx+29]
 0046E77C    push        1
 0046E77E    push        1
 0046E780    lea         eax,[ebp-5]
 0046E783    push        eax
 0046E784    call        00671F38
 0046E789    add         esp,10
 0046E78C    mov         edx,dword ptr [ebp-4]
 0046E78F    push        dword ptr [edx+29]
 0046E792    push        1
 0046E794    push        4
 0046E796    lea         ecx,[ebp-0C]
 0046E799    push        ecx
 0046E79A    call        00671F38
 0046E79F    add         esp,10
 0046E7A2    mov         eax,dword ptr [ebp-4]
 0046E7A5    push        dword ptr [eax+29]
 0046E7A8    push        1
 0046E7AA    push        4
 0046E7AC    lea         edx,[ebp-10]
 0046E7AF    push        edx
 0046E7B0    call        00671F38
 0046E7B5    add         esp,10
 0046E7B8    mov         ecx,dword ptr [ebp-4]
 0046E7BB    push        dword ptr [ecx+29]
 0046E7BE    push        100
 0046E7C3    push        1
 0046E7C5    lea         eax,[ebp-12C]
 0046E7CB    push        eax
 0046E7CC    call        00671F38
 0046E7D1    add         esp,10
 0046E7D4    mov         edx,dword ptr [ebp-4]
 0046E7D7    push        dword ptr [edx+29]
 0046E7DA    push        1
 0046E7DC    push        4
 0046E7DE    lea         ecx,[ebp-14]
 0046E7E1    push        ecx
 0046E7E2    call        00671F38
 0046E7E7    add         esp,10
 0046E7EA    push        6B15A5
 0046E7EF    lea         eax,[ebp-2C]
 0046E7F2    push        eax
 0046E7F3    call        0066FA38
 0046E7F8    add         esp,8
 0046E7FB    test        eax,eax
>0046E7FD    jne         0046E813
 0046E7FF    mov         edx,dword ptr [ebp-14]
 0046E802    cmp         edx,1
>0046E805    jne         0046E813
 0046E807    mov         ecx,dword ptr [ebp-14]
 0046E80A    mov         eax,dword ptr [ebp-4]
 0046E80D    mov         dword ptr [eax],ecx
 0046E80F    mov         al,1
>0046E811    jmp         0046E83E
 0046E813    push        6B15BD
 0046E818    lea         edx,[ebp-2C]
 0046E81B    push        edx
 0046E81C    call        0066FA38
 0046E821    add         esp,8
 0046E824    test        eax,eax
>0046E826    jne         0046E83C
 0046E828    mov         ecx,dword ptr [ebp-14]
 0046E82B    cmp         ecx,2
>0046E82E    jne         0046E83C
 0046E830    mov         eax,dword ptr [ebp-14]
 0046E833    mov         edx,dword ptr [ebp-4]
 0046E836    mov         dword ptr [edx],eax
 0046E838    mov         al,1
>0046E83A    jmp         0046E83E
 0046E83C    xor         eax,eax
 0046E83E    mov         esp,ebp
 0046E840    pop         ebp
 0046E841    ret
end;*}

//0046E844
{*function sub_0046E844(?:?; ?:?):?;
begin
 0046E844    push        ebp
 0046E845    mov         ebp,esp
 0046E847    add         esp,0FFFFFFCC
 0046E84A    mov         dword ptr [ebp-34],edx
 0046E84D    mov         dword ptr [ebp-30],eax
 0046E850    mov         eax,6B1B54
 0046E855    call        0066FECC
 0046E85A    mov         edx,dword ptr [ebp-30]
 0046E85D    mov         cl,byte ptr [edx+28]
 0046E860    test        cl,cl
>0046E862    je          0046E8B4
 0046E864    mov         word ptr [ebp-1C],8
 0046E86A    lea         eax,[ebp-4]
 0046E86D    mov         edx,dword ptr [ebp-34]
 0046E870    call        0067DAB4
 0046E875    mov         edx,eax
 0046E877    inc         dword ptr [ebp-10]
 0046E87A    mov         eax,dword ptr [ebp-30]
 0046E87D    add         eax,65
 0046E880    call        0067DD84
 0046E885    push        eax
 0046E886    dec         dword ptr [ebp-10]
 0046E889    lea         eax,[ebp-4]
 0046E88C    mov         edx,2
 0046E891    call        0067DCA0
 0046E896    pop         ecx
 0046E897    test        cl,cl
>0046E899    je          0046E8AC
 0046E89B    mov         al,1
 0046E89D    mov         edx,dword ptr [ebp-2C]
 0046E8A0    mov         dword ptr fs:[0],edx
>0046E8A7    jmp         0046ECE1
 0046E8AC    mov         eax,dword ptr [ebp-30]
 0046E8AF    call        0046ECE8
 0046E8B4    mov         edx,dword ptr [ebp-30]
 0046E8B7    mov         byte ptr [edx+28],0
 0046E8BB    push        6B15D5
 0046E8C0    push        dword ptr [ebp-34]
 0046E8C3    call        00671CC0
 0046E8C8    add         esp,8
 0046E8CB    mov         ecx,dword ptr [ebp-30]
 0046E8CE    mov         dword ptr [ecx+29],eax
 0046E8D1    mov         eax,dword ptr [ebp-30]
 0046E8D4    mov         edx,dword ptr [eax+29]
 0046E8D7    test        edx,edx
>0046E8D9    jne         0046E8EC
 0046E8DB    xor         eax,eax
 0046E8DD    mov         edx,dword ptr [ebp-2C]
 0046E8E0    mov         dword ptr fs:[0],edx
>0046E8E7    jmp         0046ECE1
 0046E8EC    mov         eax,dword ptr [ebp-30]
 0046E8EF    call        0046E754
 0046E8F4    test        al,al
>0046E8F6    jne         0046E91D
 0046E8F8    mov         edx,dword ptr [ebp-30]
 0046E8FB    push        dword ptr [edx+29]
 0046E8FE    call        00671818
 0046E903    pop         ecx
 0046E904    mov         ecx,dword ptr [ebp-30]
 0046E907    xor         eax,eax
 0046E909    mov         dword ptr [ecx+29],eax
 0046E90C    xor         eax,eax
 0046E90E    mov         edx,dword ptr [ebp-2C]
 0046E911    mov         dword ptr fs:[0],edx
>0046E918    jmp         0046ECE1
 0046E91D    push        2
 0046E91F    push        0FC
 0046E921    mov         ecx,dword ptr [ebp-30]
 0046E924    push        dword ptr [ecx+29]
 0046E927    call        00671FD8
 0046E92C    add         esp,0C
 0046E92F    mov         eax,dword ptr [ebp-30]
 0046E932    push        dword ptr [eax+29]
 0046E935    push        1
 0046E937    push        4
 0046E939    mov         edx,dword ptr [ebp-30]
 0046E93C    add         edx,2D
 0046E93F    push        edx
 0046E940    call        00671F38
 0046E945    add         esp,10
 0046E948    push        0
 0046E94A    mov         ecx,dword ptr [ebp-30]
 0046E94D    push        dword ptr [ecx+2D]
 0046E950    mov         eax,dword ptr [ebp-30]
 0046E953    push        dword ptr [eax+29]
 0046E956    call        00671FD8
 0046E95B    add         esp,0C
 0046E95E    mov         edx,dword ptr [ebp-30]
 0046E961    push        dword ptr [edx+29]
 0046E964    push        1
 0046E966    push        4
 0046E968    mov         ecx,dword ptr [ebp-30]
 0046E96B    add         ecx,4
 0046E96E    push        ecx
 0046E96F    call        00671F38
 0046E974    add         esp,10
 0046E977    mov         eax,dword ptr [ebp-30]
 0046E97A    mov         edx,dword ptr [eax+4]
 0046E97D    inc         edx
 0046E97E    add         edx,edx
 0046E980    push        edx
 0046E981    call        0066EC88
 0046E986    pop         ecx
 0046E987    mov         ecx,dword ptr [ebp-30]
 0046E98A    mov         dword ptr [ecx+0C],eax
 0046E98D    mov         eax,dword ptr [ebp-30]
 0046E990    mov         edx,dword ptr [eax+4]
 0046E993    inc         edx
 0046E994    add         edx,edx
 0046E996    push        edx
 0046E997    push        0FF
 0046E99C    mov         ecx,dword ptr [ebp-30]
 0046E99F    push        dword ptr [ecx+0C]
 0046E9A2    call        0066F904
 0046E9A7    add         esp,0C
 0046E9AA    mov         eax,dword ptr [ebp-30]
 0046E9AD    push        dword ptr [eax+29]
 0046E9B0    push        1
 0046E9B2    push        4
 0046E9B4    mov         edx,dword ptr [ebp-30]
 0046E9B7    add         edx,31
 0046E9BA    push        edx
 0046E9BB    call        00671F38
 0046E9C0    add         esp,10
 0046E9C3    mov         ecx,dword ptr [ebp-30]
 0046E9C6    mov         eax,dword ptr [ecx+4]
 0046E9C9    shl         eax,4
 0046E9CC    push        eax
 0046E9CD    call        0066EC88
 0046E9D2    pop         ecx
 0046E9D3    mov         edx,dword ptr [ebp-30]
 0046E9D6    mov         dword ptr [edx+8],eax
 0046E9D9    mov         ecx,dword ptr [ebp-30]
 0046E9DC    push        dword ptr [ecx+29]
 0046E9DF    mov         eax,dword ptr [ebp-30]
 0046E9E2    push        dword ptr [eax+4]
 0046E9E5    push        10
 0046E9E7    mov         edx,dword ptr [ebp-30]
 0046E9EA    push        dword ptr [edx+8]
 0046E9ED    call        00671F38
 0046E9F2    add         esp,10
 0046E9F5    mov         ecx,dword ptr [ebp-30]
 0046E9F8    push        dword ptr [ecx+29]
 0046E9FB    push        1
 0046E9FD    push        4
 0046E9FF    mov         eax,dword ptr [ebp-30]
 0046EA02    add         eax,35
 0046EA05    push        eax
 0046EA06    call        00671F38
 0046EA0B    add         esp,10
 0046EA0E    mov         edx,dword ptr [ebp-30]
 0046EA11    push        dword ptr [edx+29]
 0046EA14    push        1
 0046EA16    push        4
 0046EA18    mov         ecx,dword ptr [ebp-30]
 0046EA1B    add         ecx,39
 0046EA1E    push        ecx
 0046EA1F    call        00671F38
 0046EA24    add         esp,10
 0046EA27    mov         eax,dword ptr [ebp-30]
 0046EA2A    mov         edx,dword ptr [eax+35]
 0046EA2D    shl         edx,4
 0046EA30    push        edx
 0046EA31    call        0066EC88
 0046EA36    pop         ecx
 0046EA37    mov         ecx,dword ptr [ebp-30]
 0046EA3A    mov         dword ptr [ecx+14],eax
 0046EA3D    mov         eax,dword ptr [ebp-30]
 0046EA40    push        dword ptr [eax+29]
 0046EA43    mov         edx,dword ptr [ebp-30]
 0046EA46    push        dword ptr [edx+35]
 0046EA49    push        10
 0046EA4B    mov         ecx,dword ptr [ebp-30]
 0046EA4E    push        dword ptr [ecx+14]
 0046EA51    call        00671F38
 0046EA56    add         esp,10
 0046EA59    mov         eax,dword ptr [ebp-30]
 0046EA5C    push        dword ptr [eax+29]
 0046EA5F    push        1
 0046EA61    push        4
 0046EA63    mov         edx,dword ptr [ebp-30]
 0046EA66    add         edx,3D
 0046EA69    push        edx
 0046EA6A    call        00671F38
 0046EA6F    add         esp,10
 0046EA72    mov         ecx,dword ptr [ebp-30]
 0046EA75    push        dword ptr [ecx+29]
 0046EA78    push        1
 0046EA7A    push        4
 0046EA7C    mov         eax,dword ptr [ebp-30]
 0046EA7F    add         eax,41
 0046EA82    push        eax
 0046EA83    call        00671F38
 0046EA88    add         esp,10
 0046EA8B    mov         edx,dword ptr [ebp-30]
 0046EA8E    mov         ecx,dword ptr [edx+3D]
 0046EA91    shl         ecx,4
 0046EA94    push        ecx
 0046EA95    call        0066EC88
 0046EA9A    pop         ecx
 0046EA9B    mov         edx,dword ptr [ebp-30]
 0046EA9E    mov         dword ptr [edx+18],eax
 0046EAA1    mov         eax,dword ptr [ebp-30]
 0046EAA4    push        dword ptr [eax+29]
 0046EAA7    mov         ecx,dword ptr [ebp-30]
 0046EAAA    push        dword ptr [ecx+3D]
 0046EAAD    push        10
 0046EAAF    mov         eax,dword ptr [ebp-30]
 0046EAB2    push        dword ptr [eax+18]
 0046EAB5    call        00671F38
 0046EABA    add         esp,10
 0046EABD    mov         edx,dword ptr [ebp-30]
 0046EAC0    push        dword ptr [edx+29]
 0046EAC3    push        1
 0046EAC5    push        4
 0046EAC7    mov         ecx,dword ptr [ebp-30]
 0046EACA    add         ecx,45
 0046EACD    push        ecx
 0046EACE    call        00671F38
 0046EAD3    add         esp,10
 0046EAD6    mov         eax,dword ptr [ebp-30]
 0046EAD9    push        dword ptr [eax+29]
 0046EADC    push        1
 0046EADE    push        4
 0046EAE0    mov         edx,dword ptr [ebp-30]
 0046EAE3    add         edx,49
 0046EAE6    push        edx
 0046EAE7    call        00671F38
 0046EAEC    add         esp,10
 0046EAEF    mov         ecx,dword ptr [ebp-30]
 0046EAF2    mov         eax,dword ptr [ecx+45]
 0046EAF5    shl         eax,4
 0046EAF8    push        eax
 0046EAF9    call        0066EC88
 0046EAFE    pop         ecx
 0046EAFF    mov         edx,dword ptr [ebp-30]
 0046EB02    mov         dword ptr [edx+1C],eax
 0046EB05    mov         ecx,dword ptr [ebp-30]
 0046EB08    push        dword ptr [ecx+29]
 0046EB0B    mov         eax,dword ptr [ebp-30]
 0046EB0E    push        dword ptr [eax+45]
 0046EB11    push        10
 0046EB13    mov         edx,dword ptr [ebp-30]
 0046EB16    push        dword ptr [edx+1C]
 0046EB19    call        00671F38
 0046EB1E    add         esp,10
 0046EB21    mov         ecx,dword ptr [ebp-30]
 0046EB24    push        dword ptr [ecx+29]
 0046EB27    push        1
 0046EB29    push        4
 0046EB2B    mov         eax,dword ptr [ebp-30]
 0046EB2E    add         eax,4D
 0046EB31    push        eax
 0046EB32    call        00671F38
 0046EB37    add         esp,10
 0046EB3A    mov         edx,dword ptr [ebp-30]
 0046EB3D    push        dword ptr [edx+29]
 0046EB40    push        1
 0046EB42    push        4
 0046EB44    mov         ecx,dword ptr [ebp-30]
 0046EB47    add         ecx,51
 0046EB4A    push        ecx
 0046EB4B    call        00671F38
 0046EB50    add         esp,10
 0046EB53    mov         eax,dword ptr [ebp-30]
 0046EB56    mov         edx,dword ptr [eax+4D]
 0046EB59    shl         edx,4
 0046EB5C    push        edx
 0046EB5D    call        0066EC88
 0046EB62    pop         ecx
 0046EB63    mov         ecx,dword ptr [ebp-30]
 0046EB66    mov         dword ptr [ecx+20],eax
 0046EB69    mov         eax,dword ptr [ebp-30]
 0046EB6C    push        dword ptr [eax+29]
 0046EB6F    mov         edx,dword ptr [ebp-30]
 0046EB72    push        dword ptr [edx+4D]
 0046EB75    push        10
 0046EB77    mov         ecx,dword ptr [ebp-30]
 0046EB7A    push        dword ptr [ecx+20]
 0046EB7D    call        00671F38
 0046EB82    add         esp,10
 0046EB85    mov         eax,dword ptr [ebp-30]
 0046EB88    push        dword ptr [eax+29]
 0046EB8B    push        1
 0046EB8D    push        4
 0046EB8F    mov         edx,dword ptr [ebp-30]
 0046EB92    add         edx,59
 0046EB95    push        edx
 0046EB96    call        00671F38
 0046EB9B    add         esp,10
 0046EB9E    mov         ecx,dword ptr [ebp-30]
 0046EBA1    push        dword ptr [ecx+29]
 0046EBA4    push        1
 0046EBA6    push        4
 0046EBA8    mov         eax,dword ptr [ebp-30]
 0046EBAB    add         eax,55
 0046EBAE    push        eax
 0046EBAF    call        00671F38
 0046EBB4    add         esp,10
 0046EBB7    mov         edx,dword ptr [ebp-30]
 0046EBBA    mov         ecx,dword ptr [edx+59]
 0046EBBD    shl         ecx,4
 0046EBC0    push        ecx
 0046EBC1    call        0066EC88
 0046EBC6    pop         ecx
 0046EBC7    mov         edx,dword ptr [ebp-30]
 0046EBCA    mov         dword ptr [edx+24],eax
 0046EBCD    mov         eax,dword ptr [ebp-30]
 0046EBD0    push        dword ptr [eax+29]
 0046EBD3    mov         ecx,dword ptr [ebp-30]
 0046EBD6    push        dword ptr [ecx+59]
 0046EBD9    push        10
 0046EBDB    mov         eax,dword ptr [ebp-30]
 0046EBDE    push        dword ptr [eax+24]
 0046EBE1    call        00671F38
 0046EBE6    add         esp,10
 0046EBE9    mov         edx,dword ptr [ebp-30]
 0046EBEC    push        dword ptr [edx+59]
 0046EBEF    call        0066EC88
 0046EBF4    pop         ecx
 0046EBF5    mov         ecx,dword ptr [ebp-30]
 0046EBF8    mov         dword ptr [ecx+10],eax
 0046EBFB    mov         eax,dword ptr [ebp-30]
 0046EBFE    push        dword ptr [eax+59]
 0046EC01    push        0
 0046EC03    mov         edx,dword ptr [ebp-30]
 0046EC06    push        dword ptr [edx+10]
 0046EC09    call        0066F904
 0046EC0E    add         esp,0C
 0046EC11    push        2
 0046EC13    push        0
 0046EC15    mov         ecx,dword ptr [ebp-30]
 0046EC18    push        dword ptr [ecx+29]
 0046EC1B    call        00671FD8
 0046EC20    add         esp,0C
 0046EC23    mov         eax,dword ptr [ebp-30]
 0046EC26    push        dword ptr [eax+29]
 0046EC29    call        0067204C
 0046EC2E    pop         ecx
 0046EC2F    mov         edx,dword ptr [ebp-30]
 0046EC32    mov         dword ptr [edx+61],eax
 0046EC35    mov         ecx,dword ptr [ebp-30]
 0046EC38    mov         eax,dword ptr [ecx+61]
 0046EC3B    test        eax,eax
>0046EC3D    jle         0046EC89
 0046EC3F    mov         edx,dword ptr [ebp-30]
 0046EC42    push        dword ptr [edx+61]
 0046EC45    call        0066EC88
 0046EC4A    pop         ecx
 0046EC4B    mov         ecx,dword ptr [ebp-30]
 0046EC4E    mov         dword ptr [ecx+5D],eax
 0046EC51    mov         eax,dword ptr [ebp-30]
 0046EC54    mov         edx,dword ptr [eax+5D]
 0046EC57    test        edx,edx
>0046EC59    je          0046EC89
 0046EC5B    push        0
 0046EC5D    push        0
 0046EC5F    mov         ecx,dword ptr [ebp-30]
 0046EC62    push        dword ptr [ecx+29]
 0046EC65    call        00671FD8
 0046EC6A    add         esp,0C
 0046EC6D    mov         eax,dword ptr [ebp-30]
 0046EC70    push        dword ptr [eax+29]
 0046EC73    mov         edx,dword ptr [ebp-30]
 0046EC76    push        dword ptr [edx+61]
 0046EC79    push        1
 0046EC7B    mov         ecx,dword ptr [ebp-30]
 0046EC7E    push        dword ptr [ecx+5D]
 0046EC81    call        00671F38
 0046EC86    add         esp,10
 0046EC89    mov         eax,dword ptr [ebp-30]
 0046EC8C    push        dword ptr [eax+29]
 0046EC8F    call        00671818
 0046EC94    pop         ecx
 0046EC95    mov         edx,dword ptr [ebp-30]
 0046EC98    xor         ecx,ecx
 0046EC9A    mov         dword ptr [edx+29],ecx
 0046EC9D    mov         word ptr [ebp-1C],14
 0046ECA3    lea         eax,[ebp-8]
 0046ECA6    mov         edx,dword ptr [ebp-34]
 0046ECA9    call        0067DAB4
 0046ECAE    mov         edx,eax
 0046ECB0    inc         dword ptr [ebp-10]
 0046ECB3    mov         eax,dword ptr [ebp-30]
 0046ECB6    add         eax,65
 0046ECB9    call        0067DCD0
 0046ECBE    dec         dword ptr [ebp-10]
 0046ECC1    lea         eax,[ebp-8]
 0046ECC4    mov         edx,2
 0046ECC9    call        0067DCA0
 0046ECCE    mov         ecx,dword ptr [ebp-30]
 0046ECD1    mov         byte ptr [ecx+28],1
 0046ECD5    mov         al,1
 0046ECD7    mov         edx,dword ptr [ebp-2C]
 0046ECDA    mov         dword ptr fs:[0],edx
 0046ECE1    mov         esp,ebp
 0046ECE3    pop         ebp
 0046ECE4    ret
end;*}

//0046ECE8
{*procedure sub_0046ECE8(?:?);
begin
 0046ECE8    push        ebp
 0046ECE9    mov         ebp,esp
 0046ECEB    push        ecx
 0046ECEC    mov         dword ptr [ebp-4],eax
 0046ECEF    mov         eax,dword ptr [ebp-4]
 0046ECF2    mov         dl,byte ptr [eax+28]
 0046ECF5    test        dl,dl
>0046ECF7    je          0046EDCA
 0046ECFD    mov         ecx,dword ptr [ebp-4]
 0046ED00    mov         eax,dword ptr [ecx+0C]
 0046ED03    test        eax,eax
>0046ED05    je          0046ED13
 0046ED07    mov         edx,dword ptr [ebp-4]
 0046ED0A    push        dword ptr [edx+0C]
 0046ED0D    call        0066EAC0
 0046ED12    pop         ecx
 0046ED13    mov         ecx,dword ptr [ebp-4]
 0046ED16    mov         eax,dword ptr [ecx+8]
 0046ED19    test        eax,eax
>0046ED1B    je          0046ED29
 0046ED1D    mov         edx,dword ptr [ebp-4]
 0046ED20    push        dword ptr [edx+8]
 0046ED23    call        0066EAC0
 0046ED28    pop         ecx
 0046ED29    mov         ecx,dword ptr [ebp-4]
 0046ED2C    mov         eax,dword ptr [ecx+14]
 0046ED2F    test        eax,eax
>0046ED31    je          0046ED3F
 0046ED33    mov         edx,dword ptr [ebp-4]
 0046ED36    push        dword ptr [edx+14]
 0046ED39    call        0066EAC0
 0046ED3E    pop         ecx
 0046ED3F    mov         ecx,dword ptr [ebp-4]
 0046ED42    mov         eax,dword ptr [ecx+18]
 0046ED45    test        eax,eax
>0046ED47    je          0046ED55
 0046ED49    mov         edx,dword ptr [ebp-4]
 0046ED4C    push        dword ptr [edx+18]
 0046ED4F    call        0066EAC0
 0046ED54    pop         ecx
 0046ED55    mov         ecx,dword ptr [ebp-4]
 0046ED58    mov         eax,dword ptr [ecx+1C]
 0046ED5B    test        eax,eax
>0046ED5D    je          0046ED6B
 0046ED5F    mov         edx,dword ptr [ebp-4]
 0046ED62    push        dword ptr [edx+1C]
 0046ED65    call        0066EAC0
 0046ED6A    pop         ecx
 0046ED6B    mov         ecx,dword ptr [ebp-4]
 0046ED6E    mov         eax,dword ptr [ecx+20]
 0046ED71    test        eax,eax
>0046ED73    je          0046ED81
 0046ED75    mov         edx,dword ptr [ebp-4]
 0046ED78    push        dword ptr [edx+20]
 0046ED7B    call        0066EAC0
 0046ED80    pop         ecx
 0046ED81    mov         ecx,dword ptr [ebp-4]
 0046ED84    mov         eax,dword ptr [ecx+24]
 0046ED87    test        eax,eax
>0046ED89    je          0046ED97
 0046ED8B    mov         edx,dword ptr [ebp-4]
 0046ED8E    push        dword ptr [edx+24]
 0046ED91    call        0066EAC0
 0046ED96    pop         ecx
 0046ED97    mov         ecx,dword ptr [ebp-4]
 0046ED9A    mov         eax,dword ptr [ecx+10]
 0046ED9D    test        eax,eax
>0046ED9F    je          0046EDAD
 0046EDA1    mov         edx,dword ptr [ebp-4]
 0046EDA4    push        dword ptr [edx+10]
 0046EDA7    call        0066EAC0
 0046EDAC    pop         ecx
 0046EDAD    mov         ecx,dword ptr [ebp-4]
 0046EDB0    mov         eax,dword ptr [ecx+5D]
 0046EDB3    test        eax,eax
>0046EDB5    je          0046EDC3
 0046EDB7    mov         edx,dword ptr [ebp-4]
 0046EDBA    push        dword ptr [edx+5D]
 0046EDBD    call        0066EAC0
 0046EDC2    pop         ecx
 0046EDC3    mov         ecx,dword ptr [ebp-4]
 0046EDC6    mov         byte ptr [ecx+28],0
 0046EDCA    pop         ecx
 0046EDCB    pop         ebp
 0046EDCC    ret
end;*}

//0046EDD0
{*function sub_0046EDD0(?:?; ?:?):?;
begin
 0046EDD0    push        ebp
 0046EDD1    mov         ebp,esp
 0046EDD3    add         esp,0FFFFFFE4
 0046EDD6    mov         dword ptr [ebp-8],edx
 0046EDD9    mov         dword ptr [ebp-4],eax
 0046EDDC    mov         eax,dword ptr [ebp-4]
 0046EDDF    mov         dl,byte ptr [eax+28]
 0046EDE2    test        dl,dl
>0046EDE4    jne         0046EDEF
 0046EDE6    mov         ax,0FFFF
>0046EDEA    jmp         0046EF08
 0046EDEF    mov         edx,dword ptr [ebp-8]
 0046EDF2    test        edx,edx
>0046EDF4    je          0046EE09
 0046EDF6    mov         ecx,dword ptr [ebp-8]
 0046EDF9    mov         al,byte ptr [ecx]
 0046EDFB    test        al,al
>0046EDFD    je          0046EE09
 0046EDFF    mov         edx,dword ptr [ebp-4]
 0046EE02    mov         ecx,dword ptr [edx+4]
 0046EE05    test        ecx,ecx
>0046EE07    jne         0046EE12
 0046EE09    mov         ax,0FFFF
>0046EE0D    jmp         0046EF08
 0046EE12    xor         edx,edx
 0046EE14    mov         dword ptr [ebp-10],edx
 0046EE17    mov         ecx,dword ptr [ebp-4]
 0046EE1A    mov         eax,dword ptr [ecx+4]
 0046EE1D    dec         eax
 0046EE1E    mov         dword ptr [ebp-14],eax
 0046EE21    mov         edx,dword ptr [ebp-10]
 0046EE24    mov         ecx,dword ptr [ebp-14]
 0046EE27    cmp         edx,ecx
>0046EE29    jge         0046EEA9
 0046EE2B    mov         eax,dword ptr [ebp-10]
 0046EE2E    mov         edx,dword ptr [ebp-14]
 0046EE31    add         eax,edx
 0046EE33    sar         eax,1
>0046EE35    jns         0046EE3A
 0046EE37    adc         eax,0
 0046EE3A    mov         dword ptr [ebp-1C],eax
 0046EE3D    mov         ecx,dword ptr [ebp-1C]
 0046EE40    shl         ecx,4
 0046EE43    mov         eax,dword ptr [ebp-4]
 0046EE46    mov         edx,dword ptr [eax+8]
 0046EE49    mov         ecx,dword ptr [edx+ecx+0C]
 0046EE4D    mov         dword ptr [ebp-0C],ecx
 0046EE50    mov         eax,dword ptr [ebp-0C]
 0046EE53    shl         eax,4
 0046EE56    mov         edx,dword ptr [ebp-4]
 0046EE59    mov         ecx,dword ptr [edx+8]
 0046EE5C    mov         ecx,dword ptr [ecx+eax+4]
 0046EE60    mov         eax,dword ptr [ebp-0C]
 0046EE63    shl         eax,4
 0046EE66    mov         edx,dword ptr [ebp-4]
 0046EE69    mov         edx,dword ptr [edx+8]
 0046EE6C    mov         edx,dword ptr [edx+eax]
 0046EE6F    mov         eax,dword ptr [ebp-4]
 0046EE72    call        00473858
 0046EE77    mov         dword ptr [ebp-18],eax
 0046EE7A    mov         ecx,dword ptr [ebp-18]
 0046EE7D    add         ecx,4
 0046EE80    push        ecx
 0046EE81    push        dword ptr [ebp-8]
 0046EE84    call        0066FCB4
 0046EE89    add         esp,8
 0046EE8C    test        eax,eax
>0046EE8E    jg          0046EE98
 0046EE90    mov         eax,dword ptr [ebp-1C]
 0046EE93    mov         dword ptr [ebp-14],eax
>0046EE96    jmp         0046EE9F
 0046EE98    mov         edx,dword ptr [ebp-1C]
 0046EE9B    inc         edx
 0046EE9C    mov         dword ptr [ebp-10],edx
 0046EE9F    mov         ecx,dword ptr [ebp-10]
 0046EEA2    mov         eax,dword ptr [ebp-14]
 0046EEA5    cmp         ecx,eax
>0046EEA7    jl          0046EE2B
 0046EEA9    mov         edx,dword ptr [ebp-14]
 0046EEAC    shl         edx,4
 0046EEAF    mov         ecx,dword ptr [ebp-4]
 0046EEB2    mov         eax,dword ptr [ecx+8]
 0046EEB5    mov         edx,dword ptr [eax+edx+0C]
 0046EEB9    mov         dword ptr [ebp-0C],edx
 0046EEBC    mov         ecx,dword ptr [ebp-0C]
 0046EEBF    shl         ecx,4
 0046EEC2    mov         eax,dword ptr [ebp-4]
 0046EEC5    mov         edx,dword ptr [eax+8]
 0046EEC8    mov         ecx,dword ptr [edx+ecx+4]
 0046EECC    mov         eax,dword ptr [ebp-0C]
 0046EECF    shl         eax,4
 0046EED2    mov         edx,dword ptr [ebp-4]
 0046EED5    mov         edx,dword ptr [edx+8]
 0046EED8    mov         edx,dword ptr [edx+eax]
 0046EEDB    mov         eax,dword ptr [ebp-4]
 0046EEDE    call        00473858
 0046EEE3    mov         dword ptr [ebp-18],eax
 0046EEE6    mov         ecx,dword ptr [ebp-18]
 0046EEE9    add         ecx,4
 0046EEEC    push        ecx
 0046EEED    push        dword ptr [ebp-8]
 0046EEF0    call        0066FCB4
 0046EEF5    add         esp,8
 0046EEF8    test        eax,eax
>0046EEFA    jne         0046EF04
 0046EEFC    mov         eax,dword ptr [ebp-18]
 0046EEFF    mov         ax,word ptr [eax]
>0046EF02    jmp         0046EF08
 0046EF04    mov         ax,0FFFF
 0046EF08    mov         esp,ebp
 0046EF0A    pop         ebp
 0046EF0B    ret
end;*}

//0046EF0C
{*procedure sub_0046EF0C(?:?; ?:?; ?:?);
begin
 0046EF0C    push        ebp
 0046EF0D    mov         ebp,esp
 0046EF0F    add         esp,0FFFFFFA8
 0046EF12    mov         dword ptr [ebp-8],ecx
 0046EF15    mov         word ptr [ebp-3E],dx
 0046EF19    mov         dword ptr [ebp-3C],eax
 0046EF1C    mov         eax,6B1C24
 0046EF21    call        0066FECC
 0046EF26    mov         edx,dword ptr [ebp-3C]
 0046EF29    mov         cl,byte ptr [edx+28]
 0046EF2C    test        cl,cl
>0046EF2E    jne         0046EF84
 0046EF30    mov         word ptr [ebp-28],8
 0046EF36    mov         edx,6B15D8
 0046EF3B    lea         eax,[ebp-4]
 0046EF3E    call        0067DAB4
 0046EF43    inc         dword ptr [ebp-1C]
 0046EF46    lea         edx,[ebp-4]
 0046EF49    mov         eax,dword ptr [ebp-8]
 0046EF4C    call        0067DCD0
 0046EF51    mov         eax,dword ptr [ebp-8]
 0046EF54    mov         word ptr [ebp-28],14
 0046EF5A    push        eax
 0046EF5B    dec         dword ptr [ebp-1C]
 0046EF5E    lea         eax,[ebp-4]
 0046EF61    mov         edx,2
 0046EF66    call        0067DCA0
 0046EF6B    pop         eax
 0046EF6C    mov         word ptr [ebp-28],8
 0046EF72    inc         dword ptr [ebp-1C]
 0046EF75    mov         edx,dword ptr [ebp-38]
 0046EF78    mov         dword ptr fs:[0],edx
>0046EF7F    jmp         0046F170
 0046EF84    cmp         word ptr [ebp-3E],0FFFF
>0046EF8A    je          0046EF96
 0046EF8C    mov         ecx,dword ptr [ebp-3C]
 0046EF8F    mov         eax,dword ptr [ecx+4]
 0046EF92    test        eax,eax
>0046EF94    jne         0046EFEA
 0046EF96    mov         word ptr [ebp-28],20
 0046EF9C    mov         edx,6B15D9
 0046EFA1    lea         eax,[ebp-0C]
 0046EFA4    call        0067DAB4
 0046EFA9    inc         dword ptr [ebp-1C]
 0046EFAC    lea         edx,[ebp-0C]
 0046EFAF    mov         eax,dword ptr [ebp-8]
 0046EFB2    call        0067DCD0
 0046EFB7    mov         eax,dword ptr [ebp-8]
 0046EFBA    mov         word ptr [ebp-28],2C
 0046EFC0    push        eax
 0046EFC1    dec         dword ptr [ebp-1C]
 0046EFC4    lea         eax,[ebp-0C]
 0046EFC7    mov         edx,2
 0046EFCC    call        0067DCA0
 0046EFD1    pop         eax
 0046EFD2    mov         word ptr [ebp-28],20
 0046EFD8    inc         dword ptr [ebp-1C]
 0046EFDB    mov         edx,dword ptr [ebp-38]
 0046EFDE    mov         dword ptr fs:[0],edx
>0046EFE5    jmp         0046F170
 0046EFEA    xor         ecx,ecx
 0046EFEC    mov         dword ptr [ebp-48],ecx
 0046EFEF    mov         eax,dword ptr [ebp-3C]
 0046EFF2    mov         edx,dword ptr [eax+4]
 0046EFF5    dec         edx
 0046EFF6    mov         dword ptr [ebp-4C],edx
 0046EFF9    mov         ecx,dword ptr [ebp-48]
 0046EFFC    mov         eax,dword ptr [ebp-4C]
 0046EFFF    cmp         ecx,eax
>0046F001    jge         0046F07F
 0046F003    mov         edx,dword ptr [ebp-48]
 0046F006    mov         ecx,dword ptr [ebp-4C]
 0046F009    add         edx,ecx
 0046F00B    sar         edx,1
>0046F00D    jns         0046F012
 0046F00F    adc         edx,0
 0046F012    mov         dword ptr [ebp-58],edx
 0046F015    mov         eax,dword ptr [ebp-58]
 0046F018    shl         eax,4
 0046F01B    mov         edx,dword ptr [ebp-3C]
 0046F01E    mov         ecx,dword ptr [edx+8]
 0046F021    mov         eax,dword ptr [ecx+eax+8]
 0046F025    mov         dword ptr [ebp-44],eax
 0046F028    mov         edx,dword ptr [ebp-44]
 0046F02B    shl         edx,4
 0046F02E    mov         ecx,dword ptr [ebp-3C]
 0046F031    mov         eax,dword ptr [ecx+8]
 0046F034    mov         ecx,dword ptr [eax+edx+4]
 0046F038    mov         edx,dword ptr [ebp-44]
 0046F03B    shl         edx,4
 0046F03E    mov         eax,dword ptr [ebp-3C]
 0046F041    mov         eax,dword ptr [eax+8]
 0046F044    mov         edx,dword ptr [eax+edx]
 0046F047    mov         eax,dword ptr [ebp-3C]
 0046F04A    call        00473858
 0046F04F    mov         dword ptr [ebp-50],eax
 0046F052    mov         edx,dword ptr [ebp-50]
 0046F055    mov         cx,word ptr [edx]
 0046F058    mov         word ptr [ebp-52],cx
 0046F05C    mov         ax,word ptr [ebp-3E]
 0046F060    cmp         ax,word ptr [ebp-52]
>0046F064    ja          0046F06E
 0046F066    mov         edx,dword ptr [ebp-58]
 0046F069    mov         dword ptr [ebp-4C],edx
>0046F06C    jmp         0046F075
 0046F06E    mov         ecx,dword ptr [ebp-58]
 0046F071    inc         ecx
 0046F072    mov         dword ptr [ebp-48],ecx
 0046F075    mov         eax,dword ptr [ebp-48]
 0046F078    mov         edx,dword ptr [ebp-4C]
 0046F07B    cmp         eax,edx
>0046F07D    jl          0046F003
 0046F07F    mov         ecx,dword ptr [ebp-4C]
 0046F082    shl         ecx,4
 0046F085    mov         eax,dword ptr [ebp-3C]
 0046F088    mov         edx,dword ptr [eax+8]
 0046F08B    mov         ecx,dword ptr [edx+ecx+8]
 0046F08F    mov         dword ptr [ebp-44],ecx
 0046F092    mov         eax,dword ptr [ebp-44]
 0046F095    shl         eax,4
 0046F098    mov         edx,dword ptr [ebp-3C]
 0046F09B    mov         ecx,dword ptr [edx+8]
 0046F09E    mov         ecx,dword ptr [ecx+eax+4]
 0046F0A2    mov         eax,dword ptr [ebp-44]
 0046F0A5    shl         eax,4
 0046F0A8    mov         edx,dword ptr [ebp-3C]
 0046F0AB    mov         edx,dword ptr [edx+8]
 0046F0AE    mov         edx,dword ptr [edx+eax]
 0046F0B1    mov         eax,dword ptr [ebp-3C]
 0046F0B4    call        00473858
 0046F0B9    mov         dword ptr [ebp-50],eax
 0046F0BC    mov         ecx,dword ptr [ebp-50]
 0046F0BF    mov         ax,word ptr [ecx]
 0046F0C2    mov         word ptr [ebp-52],ax
 0046F0C6    mov         dx,word ptr [ebp-3E]
 0046F0CA    cmp         dx,word ptr [ebp-52]
>0046F0CE    jne         0046F121
 0046F0D0    mov         word ptr [ebp-28],38
 0046F0D6    mov         edx,dword ptr [ebp-50]
 0046F0D9    add         edx,4
 0046F0DC    lea         eax,[ebp-10]
 0046F0DF    call        0067DAB4
 0046F0E4    mov         edx,eax
 0046F0E6    inc         dword ptr [ebp-1C]
 0046F0E9    mov         eax,dword ptr [ebp-8]
 0046F0EC    call        0067DCD0
 0046F0F1    mov         eax,dword ptr [ebp-8]
 0046F0F4    mov         word ptr [ebp-28],44
 0046F0FA    push        eax
 0046F0FB    dec         dword ptr [ebp-1C]
 0046F0FE    lea         eax,[ebp-10]
 0046F101    mov         edx,2
 0046F106    call        0067DCA0
 0046F10B    pop         eax
 0046F10C    mov         word ptr [ebp-28],38
 0046F112    inc         dword ptr [ebp-1C]
 0046F115    mov         edx,dword ptr [ebp-38]
 0046F118    mov         dword ptr fs:[0],edx
>0046F11F    jmp         0046F170
 0046F121    mov         word ptr [ebp-28],50
 0046F127    mov         edx,6B15DA
 0046F12C    lea         eax,[ebp-14]
 0046F12F    call        0067DAB4
 0046F134    inc         dword ptr [ebp-1C]
 0046F137    lea         edx,[ebp-14]
 0046F13A    mov         eax,dword ptr [ebp-8]
 0046F13D    call        0067DCD0
 0046F142    mov         eax,dword ptr [ebp-8]
 0046F145    mov         word ptr [ebp-28],5C
 0046F14B    push        eax
 0046F14C    dec         dword ptr [ebp-1C]
 0046F14F    lea         eax,[ebp-14]
 0046F152    mov         edx,2
 0046F157    call        0067DCA0
 0046F15C    pop         eax
 0046F15D    mov         word ptr [ebp-28],50
 0046F163    inc         dword ptr [ebp-1C]
 0046F166    mov         edx,dword ptr [ebp-38]
 0046F169    mov         dword ptr fs:[0],edx
 0046F170    mov         esp,ebp
 0046F172    pop         ebp
 0046F173    ret
end;*}

//0046F174
{*function sub_0046F174(?:?; ?:?; ?:?):?;
begin
 0046F174    push        ebp
 0046F175    mov         ebp,esp
 0046F177    add         esp,0FFFFFF90
 0046F17A    mov         dword ptr [ebp-0C],ecx
 0046F17D    mov         dword ptr [ebp-8],edx
 0046F180    mov         dword ptr [ebp-4],eax
 0046F183    xor         eax,eax
 0046F185    mov         dword ptr [ebp-30],eax
 0046F188    mov         edx,dword ptr [ebp-4]
 0046F18B    mov         cl,byte ptr [edx+28]
 0046F18E    test        cl,cl
>0046F190    jne         0046F19A
 0046F192    mov         eax,dword ptr [ebp-30]
>0046F195    jmp         0046FD50
 0046F19A    mov         edx,dword ptr [ebp-0C]
 0046F19D    test        edx,edx
>0046F19F    je          0046F1AA
 0046F1A1    mov         ecx,dword ptr [ebp-0C]
 0046F1A4    mov         al,byte ptr [ecx]
 0046F1A6    test        al,al
>0046F1A8    jne         0046F1B2
 0046F1AA    mov         eax,dword ptr [ebp-30]
>0046F1AD    jmp         0046FD50
 0046F1B2    mov         edx,dword ptr [ebp-4]
 0046F1B5    mov         ecx,dword ptr [edx+35]
 0046F1B8    test        ecx,ecx
>0046F1BA    je          0046F3F9
 0046F1C0    xor         eax,eax
 0046F1C2    mov         dword ptr [ebp-14],eax
 0046F1C5    mov         edx,dword ptr [ebp-4]
 0046F1C8    mov         ecx,dword ptr [edx+35]
 0046F1CB    dec         ecx
 0046F1CC    mov         dword ptr [ebp-18],ecx
 0046F1CF    mov         eax,dword ptr [ebp-14]
 0046F1D2    mov         edx,dword ptr [ebp-18]
 0046F1D5    add         eax,edx
 0046F1D7    sar         eax,1
>0046F1D9    jns         0046F1DE
 0046F1DB    adc         eax,0
 0046F1DE    mov         dword ptr [ebp-1C],eax
 0046F1E1    mov         ecx,dword ptr [ebp-1C]
 0046F1E4    shl         ecx,4
 0046F1E7    mov         eax,dword ptr [ebp-4]
 0046F1EA    mov         edx,dword ptr [eax+14]
 0046F1ED    mov         ecx,dword ptr [edx+ecx+0C]
 0046F1F1    mov         dword ptr [ebp-20],ecx
 0046F1F4    mov         eax,dword ptr [ebp-20]
 0046F1F7    shl         eax,4
 0046F1FA    mov         edx,dword ptr [ebp-4]
 0046F1FD    mov         ecx,dword ptr [edx+14]
 0046F200    mov         ecx,dword ptr [ecx+eax+4]
 0046F204    mov         eax,dword ptr [ebp-20]
 0046F207    shl         eax,4
 0046F20A    mov         edx,dword ptr [ebp-4]
 0046F20D    mov         edx,dword ptr [edx+14]
 0046F210    mov         edx,dword ptr [edx+eax]
 0046F213    mov         eax,dword ptr [ebp-4]
 0046F216    call        00473858
 0046F21B    mov         dword ptr [ebp-38],eax
 0046F21E    mov         ecx,dword ptr [ebp-38]
 0046F221    add         ecx,4
 0046F224    push        ecx
 0046F225    push        dword ptr [ebp-0C]
 0046F228    call        0066FCB4
 0046F22D    add         esp,8
 0046F230    mov         dword ptr [ebp-3C],eax
 0046F233    mov         eax,dword ptr [ebp-3C]
 0046F236    test        eax,eax
>0046F238    jge         0046F246
 0046F23A    mov         edx,dword ptr [ebp-1C]
 0046F23D    dec         edx
 0046F23E    mov         dword ptr [ebp-18],edx
>0046F241    jmp         0046F3EA
 0046F246    mov         ecx,dword ptr [ebp-3C]
 0046F249    test        ecx,ecx
>0046F24B    jle         0046F259
 0046F24D    mov         eax,dword ptr [ebp-1C]
 0046F250    inc         eax
 0046F251    mov         dword ptr [ebp-14],eax
>0046F254    jmp         0046F3EA
 0046F259    mov         edx,dword ptr [ebp-1C]
 0046F25C    dec         edx
 0046F25D    mov         dword ptr [ebp-28],edx
 0046F260    mov         ecx,dword ptr [ebp-28]
 0046F263    test        ecx,ecx
>0046F265    jl          0046F2CA
 0046F267    mov         eax,dword ptr [ebp-28]
 0046F26A    shl         eax,4
 0046F26D    mov         edx,dword ptr [ebp-4]
 0046F270    mov         ecx,dword ptr [edx+14]
 0046F273    mov         eax,dword ptr [ecx+eax+0C]
 0046F277    mov         dword ptr [ebp-20],eax
 0046F27A    mov         edx,dword ptr [ebp-20]
 0046F27D    shl         edx,4
 0046F280    mov         ecx,dword ptr [ebp-4]
 0046F283    mov         eax,dword ptr [ecx+14]
 0046F286    mov         ecx,dword ptr [eax+edx+4]
 0046F28A    mov         edx,dword ptr [ebp-20]
 0046F28D    shl         edx,4
 0046F290    mov         eax,dword ptr [ebp-4]
 0046F293    mov         eax,dword ptr [eax+14]
 0046F296    mov         edx,dword ptr [eax+edx]
 0046F299    mov         eax,dword ptr [ebp-4]
 0046F29C    call        00473858
 0046F2A1    mov         dword ptr [ebp-38],eax
 0046F2A4    mov         edx,dword ptr [ebp-38]
 0046F2A7    add         edx,4
 0046F2AA    push        edx
 0046F2AB    push        dword ptr [ebp-0C]
 0046F2AE    call        0066FCB4
 0046F2B3    add         esp,8
 0046F2B6    mov         dword ptr [ebp-3C],eax
 0046F2B9    mov         ecx,dword ptr [ebp-3C]
 0046F2BC    test        ecx,ecx
>0046F2BE    jne         0046F2CA
 0046F2C0    dec         dword ptr [ebp-28]
 0046F2C3    mov         eax,dword ptr [ebp-28]
 0046F2C6    test        eax,eax
>0046F2C8    jge         0046F267
 0046F2CA    mov         edx,dword ptr [ebp-1C]
 0046F2CD    inc         edx
 0046F2CE    mov         dword ptr [ebp-2C],edx
>0046F2D1    jmp         0046F32F
 0046F2D3    mov         ecx,dword ptr [ebp-2C]
 0046F2D6    shl         ecx,4
 0046F2D9    mov         eax,dword ptr [ebp-4]
 0046F2DC    mov         edx,dword ptr [eax+14]
 0046F2DF    mov         ecx,dword ptr [edx+ecx+0C]
 0046F2E3    mov         dword ptr [ebp-20],ecx
 0046F2E6    mov         eax,dword ptr [ebp-20]
 0046F2E9    shl         eax,4
 0046F2EC    mov         edx,dword ptr [ebp-4]
 0046F2EF    mov         ecx,dword ptr [edx+14]
 0046F2F2    mov         ecx,dword ptr [ecx+eax+4]
 0046F2F6    mov         eax,dword ptr [ebp-20]
 0046F2F9    shl         eax,4
 0046F2FC    mov         edx,dword ptr [ebp-4]
 0046F2FF    mov         edx,dword ptr [edx+14]
 0046F302    mov         edx,dword ptr [edx+eax]
 0046F305    mov         eax,dword ptr [ebp-4]
 0046F308    call        00473858
 0046F30D    mov         dword ptr [ebp-38],eax
 0046F310    mov         ecx,dword ptr [ebp-38]
 0046F313    add         ecx,4
 0046F316    push        ecx
 0046F317    push        dword ptr [ebp-0C]
 0046F31A    call        0066FCB4
 0046F31F    add         esp,8
 0046F322    mov         dword ptr [ebp-3C],eax
 0046F325    mov         eax,dword ptr [ebp-3C]
 0046F328    test        eax,eax
>0046F32A    jne         0046F33C
 0046F32C    inc         dword ptr [ebp-2C]
 0046F32F    mov         edx,dword ptr [ebp-2C]
 0046F332    mov         ecx,dword ptr [ebp-4]
 0046F335    mov         eax,dword ptr [ecx+35]
 0046F338    cmp         edx,eax
>0046F33A    jl          0046F2D3
 0046F33C    mov         byte ptr [ebp-0D],0
 0046F340    mov         edx,dword ptr [ebp-28]
 0046F343    inc         edx
 0046F344    mov         dword ptr [ebp-24],edx
 0046F347    mov         ecx,dword ptr [ebp-24]
 0046F34A    mov         eax,dword ptr [ebp-2C]
 0046F34D    cmp         ecx,eax
>0046F34F    jge         0046F3F9
 0046F355    mov         edx,dword ptr [ebp-24]
 0046F358    shl         edx,4
 0046F35B    mov         ecx,dword ptr [ebp-4]
 0046F35E    mov         eax,dword ptr [ecx+14]
 0046F361    mov         edx,dword ptr [eax+edx+0C]
 0046F365    mov         dword ptr [ebp-20],edx
 0046F368    mov         ecx,dword ptr [ebp-20]
 0046F36B    shl         ecx,4
 0046F36E    mov         eax,dword ptr [ebp-4]
 0046F371    mov         edx,dword ptr [eax+14]
 0046F374    mov         ecx,dword ptr [edx+ecx+4]
 0046F378    mov         eax,dword ptr [ebp-20]
 0046F37B    shl         eax,4
 0046F37E    mov         edx,dword ptr [ebp-4]
 0046F381    mov         edx,dword ptr [edx+14]
 0046F384    mov         edx,dword ptr [edx+eax]
 0046F387    mov         eax,dword ptr [ebp-4]
 0046F38A    call        00473858
 0046F38F    mov         dword ptr [ebp-38],eax
 0046F392    mov         ecx,dword ptr [ebp-38]
 0046F395    mov         ax,word ptr [ecx]
 0046F398    mov         word ptr [ebp-34],ax
 0046F39C    xor         edx,edx
 0046F39E    mov         dword ptr [ebp-40],edx
 0046F3A1    mov         ecx,dword ptr [ebp-8]
 0046F3A4    mov         eax,dword ptr [ebp-40]
 0046F3A7    mov         dx,word ptr [ecx+eax*2]
 0046F3AB    mov         word ptr [ebp-32],dx
 0046F3AF    cmp         word ptr [ebp-32],0FFFF
>0046F3B5    je          0046F3D0
 0046F3B7    mov         cx,word ptr [ebp-32]
 0046F3BB    cmp         cx,word ptr [ebp-34]
>0046F3BF    jne         0046F3CB
 0046F3C1    or          dword ptr [ebp-30],1
 0046F3C5    mov         byte ptr [ebp-0D],1
>0046F3C9    jmp         0046F3D0
 0046F3CB    inc         dword ptr [ebp-40]
>0046F3CE    jmp         0046F3A1
 0046F3D0    mov         al,byte ptr [ebp-0D]
 0046F3D3    test        al,al
>0046F3D5    jne         0046F3F9
 0046F3D7    inc         dword ptr [ebp-24]
 0046F3DA    mov         edx,dword ptr [ebp-24]
 0046F3DD    mov         ecx,dword ptr [ebp-2C]
 0046F3E0    cmp         edx,ecx
>0046F3E2    jl          0046F355
>0046F3E8    jmp         0046F3F9
 0046F3EA    mov         eax,dword ptr [ebp-14]
 0046F3ED    mov         edx,dword ptr [ebp-18]
 0046F3F0    cmp         eax,edx
>0046F3F2    jg          0046F3F9
>0046F3F4    jmp         0046F1CF
 0046F3F9    mov         ecx,dword ptr [ebp-4]
 0046F3FC    mov         eax,dword ptr [ecx+3D]
 0046F3FF    test        eax,eax
>0046F401    je          0046F678
 0046F407    xor         edx,edx
 0046F409    mov         dword ptr [ebp-14],edx
 0046F40C    mov         ecx,dword ptr [ebp-4]
 0046F40F    mov         eax,dword ptr [ecx+3D]
 0046F412    dec         eax
 0046F413    mov         dword ptr [ebp-18],eax
 0046F416    mov         edx,dword ptr [ebp-14]
 0046F419    mov         ecx,dword ptr [ebp-18]
 0046F41C    add         edx,ecx
 0046F41E    sar         edx,1
>0046F420    jns         0046F425
 0046F422    adc         edx,0
 0046F425    mov         dword ptr [ebp-1C],edx
 0046F428    mov         eax,dword ptr [ebp-1C]
 0046F42B    shl         eax,4
 0046F42E    mov         edx,dword ptr [ebp-4]
 0046F431    mov         ecx,dword ptr [edx+18]
 0046F434    mov         eax,dword ptr [ecx+eax+0C]
 0046F438    mov         dword ptr [ebp-20],eax
 0046F43B    mov         edx,dword ptr [ebp-20]
 0046F43E    shl         edx,4
 0046F441    mov         ecx,dword ptr [ebp-4]
 0046F444    mov         eax,dword ptr [ecx+18]
 0046F447    mov         ecx,dword ptr [eax+edx+4]
 0046F44B    mov         edx,dword ptr [ebp-20]
 0046F44E    shl         edx,4
 0046F451    mov         eax,dword ptr [ebp-4]
 0046F454    mov         eax,dword ptr [eax+18]
 0046F457    mov         edx,dword ptr [eax+edx]
 0046F45A    mov         eax,dword ptr [ebp-4]
 0046F45D    call        00473858
 0046F462    mov         dword ptr [ebp-44],eax
 0046F465    mov         edx,dword ptr [ebp-4]
 0046F468    mov         ecx,dword ptr [edx]
 0046F46A    cmp         ecx,2
>0046F46D    jb          0046F473
 0046F46F    add         dword ptr [ebp-44],4
 0046F473    mov         eax,dword ptr [ebp-44]
 0046F476    add         eax,4
 0046F479    push        eax
 0046F47A    push        dword ptr [ebp-0C]
 0046F47D    call        0066FCB4
 0046F482    add         esp,8
 0046F485    mov         dword ptr [ebp-48],eax
 0046F488    mov         edx,dword ptr [ebp-48]
 0046F48B    test        edx,edx
>0046F48D    jge         0046F49B
 0046F48F    mov         ecx,dword ptr [ebp-1C]
 0046F492    dec         ecx
 0046F493    mov         dword ptr [ebp-18],ecx
>0046F496    jmp         0046F669
 0046F49B    mov         eax,dword ptr [ebp-48]
 0046F49E    test        eax,eax
>0046F4A0    jle         0046F4AE
 0046F4A2    mov         edx,dword ptr [ebp-1C]
 0046F4A5    inc         edx
 0046F4A6    mov         dword ptr [ebp-14],edx
>0046F4A9    jmp         0046F669
 0046F4AE    mov         ecx,dword ptr [ebp-1C]
 0046F4B1    dec         ecx
 0046F4B2    mov         dword ptr [ebp-28],ecx
 0046F4B5    mov         eax,dword ptr [ebp-28]
 0046F4B8    test        eax,eax
>0046F4BA    jl          0046F52D
 0046F4BC    mov         edx,dword ptr [ebp-28]
 0046F4BF    shl         edx,4
 0046F4C2    mov         ecx,dword ptr [ebp-4]
 0046F4C5    mov         eax,dword ptr [ecx+18]
 0046F4C8    mov         edx,dword ptr [eax+edx+0C]
 0046F4CC    mov         dword ptr [ebp-20],edx
 0046F4CF    mov         ecx,dword ptr [ebp-20]
 0046F4D2    shl         ecx,4
 0046F4D5    mov         eax,dword ptr [ebp-4]
 0046F4D8    mov         edx,dword ptr [eax+18]
 0046F4DB    mov         ecx,dword ptr [edx+ecx+4]
 0046F4DF    mov         eax,dword ptr [ebp-20]
 0046F4E2    shl         eax,4
 0046F4E5    mov         edx,dword ptr [ebp-4]
 0046F4E8    mov         edx,dword ptr [edx+18]
 0046F4EB    mov         edx,dword ptr [edx+eax]
 0046F4EE    mov         eax,dword ptr [ebp-4]
 0046F4F1    call        00473858
 0046F4F6    mov         dword ptr [ebp-44],eax
 0046F4F9    mov         ecx,dword ptr [ebp-4]
 0046F4FC    mov         eax,dword ptr [ecx]
 0046F4FE    cmp         eax,2
>0046F501    jb          0046F507
 0046F503    add         dword ptr [ebp-44],4
 0046F507    mov         edx,dword ptr [ebp-44]
 0046F50A    add         edx,4
 0046F50D    push        edx
 0046F50E    push        dword ptr [ebp-0C]
 0046F511    call        0066FCB4
 0046F516    add         esp,8
 0046F519    mov         dword ptr [ebp-48],eax
 0046F51C    mov         ecx,dword ptr [ebp-48]
 0046F51F    test        ecx,ecx
>0046F521    jne         0046F52D
 0046F523    dec         dword ptr [ebp-28]
 0046F526    mov         eax,dword ptr [ebp-28]
 0046F529    test        eax,eax
>0046F52B    jge         0046F4BC
 0046F52D    mov         edx,dword ptr [ebp-1C]
 0046F530    inc         edx
 0046F531    mov         dword ptr [ebp-2C],edx
>0046F534    jmp         0046F5A0
 0046F536    mov         ecx,dword ptr [ebp-2C]
 0046F539    shl         ecx,4
 0046F53C    mov         eax,dword ptr [ebp-4]
 0046F53F    mov         edx,dword ptr [eax+18]
 0046F542    mov         ecx,dword ptr [edx+ecx+0C]
 0046F546    mov         dword ptr [ebp-20],ecx
 0046F549    mov         eax,dword ptr [ebp-20]
 0046F54C    shl         eax,4
 0046F54F    mov         edx,dword ptr [ebp-4]
 0046F552    mov         ecx,dword ptr [edx+18]
 0046F555    mov         ecx,dword ptr [ecx+eax+4]
 0046F559    mov         eax,dword ptr [ebp-20]
 0046F55C    shl         eax,4
 0046F55F    mov         edx,dword ptr [ebp-4]
 0046F562    mov         edx,dword ptr [edx+18]
 0046F565    mov         edx,dword ptr [edx+eax]
 0046F568    mov         eax,dword ptr [ebp-4]
 0046F56B    call        00473858
 0046F570    mov         dword ptr [ebp-44],eax
 0046F573    mov         ecx,dword ptr [ebp-4]
 0046F576    mov         eax,dword ptr [ecx]
 0046F578    cmp         eax,2
>0046F57B    jb          0046F581
 0046F57D    add         dword ptr [ebp-44],4
 0046F581    mov         edx,dword ptr [ebp-44]
 0046F584    add         edx,4
 0046F587    push        edx
 0046F588    push        dword ptr [ebp-0C]
 0046F58B    call        0066FCB4
 0046F590    add         esp,8
 0046F593    mov         dword ptr [ebp-48],eax
 0046F596    mov         ecx,dword ptr [ebp-48]
 0046F599    test        ecx,ecx
>0046F59B    jne         0046F5AD
 0046F59D    inc         dword ptr [ebp-2C]
 0046F5A0    mov         eax,dword ptr [ebp-2C]
 0046F5A3    mov         edx,dword ptr [ebp-4]
 0046F5A6    mov         ecx,dword ptr [edx+3D]
 0046F5A9    cmp         eax,ecx
>0046F5AB    jl          0046F536
 0046F5AD    mov         byte ptr [ebp-0D],0
 0046F5B1    mov         eax,dword ptr [ebp-28]
 0046F5B4    inc         eax
 0046F5B5    mov         dword ptr [ebp-24],eax
 0046F5B8    mov         edx,dword ptr [ebp-24]
 0046F5BB    mov         ecx,dword ptr [ebp-2C]
 0046F5BE    cmp         edx,ecx
>0046F5C0    jge         0046F678
 0046F5C6    mov         eax,dword ptr [ebp-24]
 0046F5C9    shl         eax,4
 0046F5CC    mov         edx,dword ptr [ebp-4]
 0046F5CF    mov         ecx,dword ptr [edx+18]
 0046F5D2    mov         eax,dword ptr [ecx+eax+0C]
 0046F5D6    mov         dword ptr [ebp-20],eax
 0046F5D9    mov         edx,dword ptr [ebp-20]
 0046F5DC    shl         edx,4
 0046F5DF    mov         ecx,dword ptr [ebp-4]
 0046F5E2    mov         eax,dword ptr [ecx+18]
 0046F5E5    mov         ecx,dword ptr [eax+edx+4]
 0046F5E9    mov         edx,dword ptr [ebp-20]
 0046F5EC    shl         edx,4
 0046F5EF    mov         eax,dword ptr [ebp-4]
 0046F5F2    mov         eax,dword ptr [eax+18]
 0046F5F5    mov         edx,dword ptr [eax+edx]
 0046F5F8    mov         eax,dword ptr [ebp-4]
 0046F5FB    call        00473858
 0046F600    mov         dword ptr [ebp-44],eax
 0046F603    mov         edx,dword ptr [ebp-4]
 0046F606    mov         ecx,dword ptr [edx]
 0046F608    cmp         ecx,2
>0046F60B    jb          0046F611
 0046F60D    add         dword ptr [ebp-44],4
 0046F611    mov         eax,dword ptr [ebp-44]
 0046F614    mov         dx,word ptr [eax]
 0046F617    mov         word ptr [ebp-34],dx
 0046F61B    xor         ecx,ecx
 0046F61D    mov         dword ptr [ebp-4C],ecx
 0046F620    mov         eax,dword ptr [ebp-8]
 0046F623    mov         edx,dword ptr [ebp-4C]
 0046F626    mov         cx,word ptr [eax+edx*2]
 0046F62A    mov         word ptr [ebp-32],cx
 0046F62E    cmp         word ptr [ebp-32],0FFFF
>0046F634    je          0046F64F
 0046F636    mov         ax,word ptr [ebp-32]
 0046F63A    cmp         ax,word ptr [ebp-34]
>0046F63E    jne         0046F64A
 0046F640    or          dword ptr [ebp-30],2
 0046F644    mov         byte ptr [ebp-0D],1
>0046F648    jmp         0046F64F
 0046F64A    inc         dword ptr [ebp-4C]
>0046F64D    jmp         0046F620
 0046F64F    mov         dl,byte ptr [ebp-0D]
 0046F652    test        dl,dl
>0046F654    jne         0046F678
 0046F656    inc         dword ptr [ebp-24]
 0046F659    mov         ecx,dword ptr [ebp-24]
 0046F65C    mov         eax,dword ptr [ebp-2C]
 0046F65F    cmp         ecx,eax
>0046F661    jl          0046F5C6
>0046F667    jmp         0046F678
 0046F669    mov         edx,dword ptr [ebp-14]
 0046F66C    mov         ecx,dword ptr [ebp-18]
 0046F66F    cmp         edx,ecx
>0046F671    jg          0046F678
>0046F673    jmp         0046F416
 0046F678    mov         eax,dword ptr [ebp-4]
 0046F67B    mov         edx,dword ptr [eax+45]
 0046F67E    test        edx,edx
>0046F680    je          0046F8BF
 0046F686    xor         ecx,ecx
 0046F688    mov         dword ptr [ebp-14],ecx
 0046F68B    mov         eax,dword ptr [ebp-4]
 0046F68E    mov         edx,dword ptr [eax+45]
 0046F691    dec         edx
 0046F692    mov         dword ptr [ebp-18],edx
 0046F695    mov         ecx,dword ptr [ebp-14]
 0046F698    mov         eax,dword ptr [ebp-18]
 0046F69B    add         ecx,eax
 0046F69D    sar         ecx,1
>0046F69F    jns         0046F6A4
 0046F6A1    adc         ecx,0
 0046F6A4    mov         dword ptr [ebp-1C],ecx
 0046F6A7    mov         edx,dword ptr [ebp-1C]
 0046F6AA    shl         edx,4
 0046F6AD    mov         ecx,dword ptr [ebp-4]
 0046F6B0    mov         eax,dword ptr [ecx+1C]
 0046F6B3    mov         edx,dword ptr [eax+edx+0C]
 0046F6B7    mov         dword ptr [ebp-20],edx
 0046F6BA    mov         ecx,dword ptr [ebp-20]
 0046F6BD    shl         ecx,4
 0046F6C0    mov         eax,dword ptr [ebp-4]
 0046F6C3    mov         edx,dword ptr [eax+1C]
 0046F6C6    mov         ecx,dword ptr [edx+ecx+4]
 0046F6CA    mov         eax,dword ptr [ebp-20]
 0046F6CD    shl         eax,4
 0046F6D0    mov         edx,dword ptr [ebp-4]
 0046F6D3    mov         edx,dword ptr [edx+1C]
 0046F6D6    mov         edx,dword ptr [edx+eax]
 0046F6D9    mov         eax,dword ptr [ebp-4]
 0046F6DC    call        00473858
 0046F6E1    mov         dword ptr [ebp-50],eax
 0046F6E4    mov         ecx,dword ptr [ebp-50]
 0046F6E7    add         ecx,4
 0046F6EA    push        ecx
 0046F6EB    push        dword ptr [ebp-0C]
 0046F6EE    call        0066FCB4
 0046F6F3    add         esp,8
 0046F6F6    mov         dword ptr [ebp-54],eax
 0046F6F9    mov         eax,dword ptr [ebp-54]
 0046F6FC    test        eax,eax
>0046F6FE    jge         0046F70C
 0046F700    mov         edx,dword ptr [ebp-1C]
 0046F703    dec         edx
 0046F704    mov         dword ptr [ebp-18],edx
>0046F707    jmp         0046F8B0
 0046F70C    mov         ecx,dword ptr [ebp-54]
 0046F70F    test        ecx,ecx
>0046F711    jle         0046F71F
 0046F713    mov         eax,dword ptr [ebp-1C]
 0046F716    inc         eax
 0046F717    mov         dword ptr [ebp-14],eax
>0046F71A    jmp         0046F8B0
 0046F71F    mov         edx,dword ptr [ebp-1C]
 0046F722    dec         edx
 0046F723    mov         dword ptr [ebp-28],edx
 0046F726    mov         ecx,dword ptr [ebp-28]
 0046F729    test        ecx,ecx
>0046F72B    jl          0046F790
 0046F72D    mov         eax,dword ptr [ebp-28]
 0046F730    shl         eax,4
 0046F733    mov         edx,dword ptr [ebp-4]
 0046F736    mov         ecx,dword ptr [edx+1C]
 0046F739    mov         eax,dword ptr [ecx+eax+0C]
 0046F73D    mov         dword ptr [ebp-20],eax
 0046F740    mov         edx,dword ptr [ebp-20]
 0046F743    shl         edx,4
 0046F746    mov         ecx,dword ptr [ebp-4]
 0046F749    mov         eax,dword ptr [ecx+1C]
 0046F74C    mov         ecx,dword ptr [eax+edx+4]
 0046F750    mov         edx,dword ptr [ebp-20]
 0046F753    shl         edx,4
 0046F756    mov         eax,dword ptr [ebp-4]
 0046F759    mov         eax,dword ptr [eax+1C]
 0046F75C    mov         edx,dword ptr [eax+edx]
 0046F75F    mov         eax,dword ptr [ebp-4]
 0046F762    call        00473858
 0046F767    mov         dword ptr [ebp-50],eax
 0046F76A    mov         edx,dword ptr [ebp-50]
 0046F76D    add         edx,4
 0046F770    push        edx
 0046F771    push        dword ptr [ebp-0C]
 0046F774    call        0066FCB4
 0046F779    add         esp,8
 0046F77C    mov         dword ptr [ebp-54],eax
 0046F77F    mov         ecx,dword ptr [ebp-54]
 0046F782    test        ecx,ecx
>0046F784    jne         0046F790
 0046F786    dec         dword ptr [ebp-28]
 0046F789    mov         eax,dword ptr [ebp-28]
 0046F78C    test        eax,eax
>0046F78E    jge         0046F72D
 0046F790    mov         edx,dword ptr [ebp-1C]
 0046F793    inc         edx
 0046F794    mov         dword ptr [ebp-2C],edx
>0046F797    jmp         0046F7F5
 0046F799    mov         ecx,dword ptr [ebp-2C]
 0046F79C    shl         ecx,4
 0046F79F    mov         eax,dword ptr [ebp-4]
 0046F7A2    mov         edx,dword ptr [eax+1C]
 0046F7A5    mov         ecx,dword ptr [edx+ecx+0C]
 0046F7A9    mov         dword ptr [ebp-20],ecx
 0046F7AC    mov         eax,dword ptr [ebp-20]
 0046F7AF    shl         eax,4
 0046F7B2    mov         edx,dword ptr [ebp-4]
 0046F7B5    mov         ecx,dword ptr [edx+1C]
 0046F7B8    mov         ecx,dword ptr [ecx+eax+4]
 0046F7BC    mov         eax,dword ptr [ebp-20]
 0046F7BF    shl         eax,4
 0046F7C2    mov         edx,dword ptr [ebp-4]
 0046F7C5    mov         edx,dword ptr [edx+1C]
 0046F7C8    mov         edx,dword ptr [edx+eax]
 0046F7CB    mov         eax,dword ptr [ebp-4]
 0046F7CE    call        00473858
 0046F7D3    mov         dword ptr [ebp-50],eax
 0046F7D6    mov         ecx,dword ptr [ebp-50]
 0046F7D9    add         ecx,4
 0046F7DC    push        ecx
 0046F7DD    push        dword ptr [ebp-0C]
 0046F7E0    call        0066FCB4
 0046F7E5    add         esp,8
 0046F7E8    mov         dword ptr [ebp-54],eax
 0046F7EB    mov         eax,dword ptr [ebp-54]
 0046F7EE    test        eax,eax
>0046F7F0    jne         0046F802
 0046F7F2    inc         dword ptr [ebp-2C]
 0046F7F5    mov         edx,dword ptr [ebp-2C]
 0046F7F8    mov         ecx,dword ptr [ebp-4]
 0046F7FB    mov         eax,dword ptr [ecx+45]
 0046F7FE    cmp         edx,eax
>0046F800    jl          0046F799
 0046F802    mov         byte ptr [ebp-0D],0
 0046F806    mov         edx,dword ptr [ebp-28]
 0046F809    inc         edx
 0046F80A    mov         dword ptr [ebp-24],edx
 0046F80D    mov         ecx,dword ptr [ebp-24]
 0046F810    mov         eax,dword ptr [ebp-2C]
 0046F813    cmp         ecx,eax
>0046F815    jge         0046F8BF
 0046F81B    mov         edx,dword ptr [ebp-24]
 0046F81E    shl         edx,4
 0046F821    mov         ecx,dword ptr [ebp-4]
 0046F824    mov         eax,dword ptr [ecx+1C]
 0046F827    mov         edx,dword ptr [eax+edx+0C]
 0046F82B    mov         dword ptr [ebp-20],edx
 0046F82E    mov         ecx,dword ptr [ebp-20]
 0046F831    shl         ecx,4
 0046F834    mov         eax,dword ptr [ebp-4]
 0046F837    mov         edx,dword ptr [eax+1C]
 0046F83A    mov         ecx,dword ptr [edx+ecx+4]
 0046F83E    mov         eax,dword ptr [ebp-20]
 0046F841    shl         eax,4
 0046F844    mov         edx,dword ptr [ebp-4]
 0046F847    mov         edx,dword ptr [edx+1C]
 0046F84A    mov         edx,dword ptr [edx+eax]
 0046F84D    mov         eax,dword ptr [ebp-4]
 0046F850    call        00473858
 0046F855    mov         dword ptr [ebp-50],eax
 0046F858    mov         ecx,dword ptr [ebp-50]
 0046F85B    mov         ax,word ptr [ecx]
 0046F85E    mov         word ptr [ebp-34],ax
 0046F862    xor         edx,edx
 0046F864    mov         dword ptr [ebp-58],edx
 0046F867    mov         ecx,dword ptr [ebp-8]
 0046F86A    mov         eax,dword ptr [ebp-58]
 0046F86D    mov         dx,word ptr [ecx+eax*2]
 0046F871    mov         word ptr [ebp-32],dx
 0046F875    cmp         word ptr [ebp-32],0FFFF
>0046F87B    je          0046F896
 0046F87D    mov         cx,word ptr [ebp-32]
 0046F881    cmp         cx,word ptr [ebp-34]
>0046F885    jne         0046F891
 0046F887    or          dword ptr [ebp-30],4
 0046F88B    mov         byte ptr [ebp-0D],1
>0046F88F    jmp         0046F896
 0046F891    inc         dword ptr [ebp-58]
>0046F894    jmp         0046F867
 0046F896    mov         al,byte ptr [ebp-0D]
 0046F899    test        al,al
>0046F89B    jne         0046F8BF
 0046F89D    inc         dword ptr [ebp-24]
 0046F8A0    mov         edx,dword ptr [ebp-24]
 0046F8A3    mov         ecx,dword ptr [ebp-2C]
 0046F8A6    cmp         edx,ecx
>0046F8A8    jl          0046F81B
>0046F8AE    jmp         0046F8BF
 0046F8B0    mov         eax,dword ptr [ebp-14]
 0046F8B3    mov         edx,dword ptr [ebp-18]
 0046F8B6    cmp         eax,edx
>0046F8B8    jg          0046F8BF
>0046F8BA    jmp         0046F695
 0046F8BF    mov         ecx,dword ptr [ebp-4]
 0046F8C2    mov         eax,dword ptr [ecx+4D]
 0046F8C5    test        eax,eax
>0046F8C7    je          0046FB06
 0046F8CD    xor         edx,edx
 0046F8CF    mov         dword ptr [ebp-14],edx
 0046F8D2    mov         ecx,dword ptr [ebp-4]
 0046F8D5    mov         eax,dword ptr [ecx+4D]
 0046F8D8    dec         eax
 0046F8D9    mov         dword ptr [ebp-18],eax
 0046F8DC    mov         edx,dword ptr [ebp-14]
 0046F8DF    mov         ecx,dword ptr [ebp-18]
 0046F8E2    add         edx,ecx
 0046F8E4    sar         edx,1
>0046F8E6    jns         0046F8EB
 0046F8E8    adc         edx,0
 0046F8EB    mov         dword ptr [ebp-1C],edx
 0046F8EE    mov         eax,dword ptr [ebp-1C]
 0046F8F1    shl         eax,4
 0046F8F4    mov         edx,dword ptr [ebp-4]
 0046F8F7    mov         ecx,dword ptr [edx+20]
 0046F8FA    mov         eax,dword ptr [ecx+eax+0C]
 0046F8FE    mov         dword ptr [ebp-20],eax
 0046F901    mov         edx,dword ptr [ebp-20]
 0046F904    shl         edx,4
 0046F907    mov         ecx,dword ptr [ebp-4]
 0046F90A    mov         eax,dword ptr [ecx+20]
 0046F90D    mov         ecx,dword ptr [eax+edx+4]
 0046F911    mov         edx,dword ptr [ebp-20]
 0046F914    shl         edx,4
 0046F917    mov         eax,dword ptr [ebp-4]
 0046F91A    mov         eax,dword ptr [eax+20]
 0046F91D    mov         edx,dword ptr [eax+edx]
 0046F920    mov         eax,dword ptr [ebp-4]
 0046F923    call        00473858
 0046F928    mov         dword ptr [ebp-5C],eax
 0046F92B    mov         edx,dword ptr [ebp-5C]
 0046F92E    add         edx,4
 0046F931    push        edx
 0046F932    push        dword ptr [ebp-0C]
 0046F935    call        0066FCB4
 0046F93A    add         esp,8
 0046F93D    mov         dword ptr [ebp-60],eax
 0046F940    mov         ecx,dword ptr [ebp-60]
 0046F943    test        ecx,ecx
>0046F945    jge         0046F953
 0046F947    mov         eax,dword ptr [ebp-1C]
 0046F94A    dec         eax
 0046F94B    mov         dword ptr [ebp-18],eax
>0046F94E    jmp         0046FAF7
 0046F953    mov         edx,dword ptr [ebp-60]
 0046F956    test        edx,edx
>0046F958    jle         0046F966
 0046F95A    mov         ecx,dword ptr [ebp-1C]
 0046F95D    inc         ecx
 0046F95E    mov         dword ptr [ebp-14],ecx
>0046F961    jmp         0046FAF7
 0046F966    mov         eax,dword ptr [ebp-1C]
 0046F969    dec         eax
 0046F96A    mov         dword ptr [ebp-28],eax
 0046F96D    mov         edx,dword ptr [ebp-28]
 0046F970    test        edx,edx
>0046F972    jl          0046F9D7
 0046F974    mov         ecx,dword ptr [ebp-28]
 0046F977    shl         ecx,4
 0046F97A    mov         eax,dword ptr [ebp-4]
 0046F97D    mov         edx,dword ptr [eax+20]
 0046F980    mov         ecx,dword ptr [edx+ecx+0C]
 0046F984    mov         dword ptr [ebp-20],ecx
 0046F987    mov         eax,dword ptr [ebp-20]
 0046F98A    shl         eax,4
 0046F98D    mov         edx,dword ptr [ebp-4]
 0046F990    mov         ecx,dword ptr [edx+20]
 0046F993    mov         ecx,dword ptr [ecx+eax+4]
 0046F997    mov         eax,dword ptr [ebp-20]
 0046F99A    shl         eax,4
 0046F99D    mov         edx,dword ptr [ebp-4]
 0046F9A0    mov         edx,dword ptr [edx+20]
 0046F9A3    mov         edx,dword ptr [edx+eax]
 0046F9A6    mov         eax,dword ptr [ebp-4]
 0046F9A9    call        00473858
 0046F9AE    mov         dword ptr [ebp-5C],eax
 0046F9B1    mov         ecx,dword ptr [ebp-5C]
 0046F9B4    add         ecx,4
 0046F9B7    push        ecx
 0046F9B8    push        dword ptr [ebp-0C]
 0046F9BB    call        0066FCB4
 0046F9C0    add         esp,8
 0046F9C3    mov         dword ptr [ebp-60],eax
 0046F9C6    mov         eax,dword ptr [ebp-60]
 0046F9C9    test        eax,eax
>0046F9CB    jne         0046F9D7
 0046F9CD    dec         dword ptr [ebp-28]
 0046F9D0    mov         edx,dword ptr [ebp-28]
 0046F9D3    test        edx,edx
>0046F9D5    jge         0046F974
 0046F9D7    mov         ecx,dword ptr [ebp-1C]
 0046F9DA    inc         ecx
 0046F9DB    mov         dword ptr [ebp-2C],ecx
>0046F9DE    jmp         0046FA3C
 0046F9E0    mov         eax,dword ptr [ebp-2C]
 0046F9E3    shl         eax,4
 0046F9E6    mov         edx,dword ptr [ebp-4]
 0046F9E9    mov         ecx,dword ptr [edx+20]
 0046F9EC    mov         eax,dword ptr [ecx+eax+0C]
 0046F9F0    mov         dword ptr [ebp-20],eax
 0046F9F3    mov         edx,dword ptr [ebp-20]
 0046F9F6    shl         edx,4
 0046F9F9    mov         ecx,dword ptr [ebp-4]
 0046F9FC    mov         eax,dword ptr [ecx+20]
 0046F9FF    mov         ecx,dword ptr [eax+edx+4]
 0046FA03    mov         edx,dword ptr [ebp-20]
 0046FA06    shl         edx,4
 0046FA09    mov         eax,dword ptr [ebp-4]
 0046FA0C    mov         eax,dword ptr [eax+20]
 0046FA0F    mov         edx,dword ptr [eax+edx]
 0046FA12    mov         eax,dword ptr [ebp-4]
 0046FA15    call        00473858
 0046FA1A    mov         dword ptr [ebp-5C],eax
 0046FA1D    mov         edx,dword ptr [ebp-5C]
 0046FA20    add         edx,4
 0046FA23    push        edx
 0046FA24    push        dword ptr [ebp-0C]
 0046FA27    call        0066FCB4
 0046FA2C    add         esp,8
 0046FA2F    mov         dword ptr [ebp-60],eax
 0046FA32    mov         ecx,dword ptr [ebp-60]
 0046FA35    test        ecx,ecx
>0046FA37    jne         0046FA49
 0046FA39    inc         dword ptr [ebp-2C]
 0046FA3C    mov         eax,dword ptr [ebp-2C]
 0046FA3F    mov         edx,dword ptr [ebp-4]
 0046FA42    mov         ecx,dword ptr [edx+4D]
 0046FA45    cmp         eax,ecx
>0046FA47    jl          0046F9E0
 0046FA49    mov         byte ptr [ebp-0D],0
 0046FA4D    mov         eax,dword ptr [ebp-28]
 0046FA50    inc         eax
 0046FA51    mov         dword ptr [ebp-24],eax
 0046FA54    mov         edx,dword ptr [ebp-24]
 0046FA57    mov         ecx,dword ptr [ebp-2C]
 0046FA5A    cmp         edx,ecx
>0046FA5C    jge         0046FB06
 0046FA62    mov         eax,dword ptr [ebp-24]
 0046FA65    shl         eax,4
 0046FA68    mov         edx,dword ptr [ebp-4]
 0046FA6B    mov         ecx,dword ptr [edx+20]
 0046FA6E    mov         eax,dword ptr [ecx+eax+0C]
 0046FA72    mov         dword ptr [ebp-20],eax
 0046FA75    mov         edx,dword ptr [ebp-20]
 0046FA78    shl         edx,4
 0046FA7B    mov         ecx,dword ptr [ebp-4]
 0046FA7E    mov         eax,dword ptr [ecx+20]
 0046FA81    mov         ecx,dword ptr [eax+edx+4]
 0046FA85    mov         edx,dword ptr [ebp-20]
 0046FA88    shl         edx,4
 0046FA8B    mov         eax,dword ptr [ebp-4]
 0046FA8E    mov         eax,dword ptr [eax+20]
 0046FA91    mov         edx,dword ptr [eax+edx]
 0046FA94    mov         eax,dword ptr [ebp-4]
 0046FA97    call        00473858
 0046FA9C    mov         dword ptr [ebp-5C],eax
 0046FA9F    mov         edx,dword ptr [ebp-5C]
 0046FAA2    mov         cx,word ptr [edx]
 0046FAA5    mov         word ptr [ebp-34],cx
 0046FAA9    xor         eax,eax
 0046FAAB    mov         dword ptr [ebp-64],eax
 0046FAAE    mov         edx,dword ptr [ebp-8]
 0046FAB1    mov         ecx,dword ptr [ebp-64]
 0046FAB4    mov         ax,word ptr [edx+ecx*2]
 0046FAB8    mov         word ptr [ebp-32],ax
 0046FABC    cmp         word ptr [ebp-32],0FFFF
>0046FAC2    je          0046FADD
 0046FAC4    mov         dx,word ptr [ebp-32]
 0046FAC8    cmp         dx,word ptr [ebp-34]
>0046FACC    jne         0046FAD8
 0046FACE    or          dword ptr [ebp-30],8
 0046FAD2    mov         byte ptr [ebp-0D],1
>0046FAD6    jmp         0046FADD
 0046FAD8    inc         dword ptr [ebp-64]
>0046FADB    jmp         0046FAAE
 0046FADD    mov         cl,byte ptr [ebp-0D]
 0046FAE0    test        cl,cl
>0046FAE2    jne         0046FB06
 0046FAE4    inc         dword ptr [ebp-24]
 0046FAE7    mov         eax,dword ptr [ebp-24]
 0046FAEA    mov         edx,dword ptr [ebp-2C]
 0046FAED    cmp         eax,edx
>0046FAEF    jl          0046FA62
>0046FAF5    jmp         0046FB06
 0046FAF7    mov         ecx,dword ptr [ebp-14]
 0046FAFA    mov         eax,dword ptr [ebp-18]
 0046FAFD    cmp         ecx,eax
>0046FAFF    jg          0046FB06
>0046FB01    jmp         0046F8DC
 0046FB06    mov         edx,dword ptr [ebp-4]
 0046FB09    mov         ecx,dword ptr [edx+59]
 0046FB0C    test        ecx,ecx
>0046FB0E    je          0046FD4D
 0046FB14    xor         eax,eax
 0046FB16    mov         dword ptr [ebp-14],eax
 0046FB19    mov         edx,dword ptr [ebp-4]
 0046FB1C    mov         ecx,dword ptr [edx+59]
 0046FB1F    dec         ecx
 0046FB20    mov         dword ptr [ebp-18],ecx
 0046FB23    mov         eax,dword ptr [ebp-14]
 0046FB26    mov         edx,dword ptr [ebp-18]
 0046FB29    add         eax,edx
 0046FB2B    sar         eax,1
>0046FB2D    jns         0046FB32
 0046FB2F    adc         eax,0
 0046FB32    mov         dword ptr [ebp-1C],eax
 0046FB35    mov         ecx,dword ptr [ebp-1C]
 0046FB38    shl         ecx,4
 0046FB3B    mov         eax,dword ptr [ebp-4]
 0046FB3E    mov         edx,dword ptr [eax+24]
 0046FB41    mov         ecx,dword ptr [edx+ecx+0C]
 0046FB45    mov         dword ptr [ebp-20],ecx
 0046FB48    mov         eax,dword ptr [ebp-20]
 0046FB4B    shl         eax,4
 0046FB4E    mov         edx,dword ptr [ebp-4]
 0046FB51    mov         ecx,dword ptr [edx+24]
 0046FB54    mov         ecx,dword ptr [ecx+eax+4]
 0046FB58    mov         eax,dword ptr [ebp-20]
 0046FB5B    shl         eax,4
 0046FB5E    mov         edx,dword ptr [ebp-4]
 0046FB61    mov         edx,dword ptr [edx+24]
 0046FB64    mov         edx,dword ptr [edx+eax]
 0046FB67    mov         eax,dword ptr [ebp-4]
 0046FB6A    call        00473858
 0046FB6F    mov         dword ptr [ebp-68],eax
 0046FB72    mov         ecx,dword ptr [ebp-68]
 0046FB75    add         ecx,4
 0046FB78    push        ecx
 0046FB79    push        dword ptr [ebp-0C]
 0046FB7C    call        0066FCB4
 0046FB81    add         esp,8
 0046FB84    mov         dword ptr [ebp-6C],eax
 0046FB87    mov         eax,dword ptr [ebp-6C]
 0046FB8A    test        eax,eax
>0046FB8C    jge         0046FB9A
 0046FB8E    mov         edx,dword ptr [ebp-1C]
 0046FB91    dec         edx
 0046FB92    mov         dword ptr [ebp-18],edx
>0046FB95    jmp         0046FD3E
 0046FB9A    mov         ecx,dword ptr [ebp-6C]
 0046FB9D    test        ecx,ecx
>0046FB9F    jle         0046FBAD
 0046FBA1    mov         eax,dword ptr [ebp-1C]
 0046FBA4    inc         eax
 0046FBA5    mov         dword ptr [ebp-14],eax
>0046FBA8    jmp         0046FD3E
 0046FBAD    mov         edx,dword ptr [ebp-1C]
 0046FBB0    dec         edx
 0046FBB1    mov         dword ptr [ebp-28],edx
 0046FBB4    mov         ecx,dword ptr [ebp-28]
 0046FBB7    test        ecx,ecx
>0046FBB9    jl          0046FC1E
 0046FBBB    mov         eax,dword ptr [ebp-28]
 0046FBBE    shl         eax,4
 0046FBC1    mov         edx,dword ptr [ebp-4]
 0046FBC4    mov         ecx,dword ptr [edx+24]
 0046FBC7    mov         eax,dword ptr [ecx+eax+0C]
 0046FBCB    mov         dword ptr [ebp-20],eax
 0046FBCE    mov         edx,dword ptr [ebp-20]
 0046FBD1    shl         edx,4
 0046FBD4    mov         ecx,dword ptr [ebp-4]
 0046FBD7    mov         eax,dword ptr [ecx+24]
 0046FBDA    mov         ecx,dword ptr [eax+edx+4]
 0046FBDE    mov         edx,dword ptr [ebp-20]
 0046FBE1    shl         edx,4
 0046FBE4    mov         eax,dword ptr [ebp-4]
 0046FBE7    mov         eax,dword ptr [eax+24]
 0046FBEA    mov         edx,dword ptr [eax+edx]
 0046FBED    mov         eax,dword ptr [ebp-4]
 0046FBF0    call        00473858
 0046FBF5    mov         dword ptr [ebp-68],eax
 0046FBF8    mov         edx,dword ptr [ebp-68]
 0046FBFB    add         edx,4
 0046FBFE    push        edx
 0046FBFF    push        dword ptr [ebp-0C]
 0046FC02    call        0066FCB4
 0046FC07    add         esp,8
 0046FC0A    mov         dword ptr [ebp-6C],eax
 0046FC0D    mov         ecx,dword ptr [ebp-6C]
 0046FC10    test        ecx,ecx
>0046FC12    jne         0046FC1E
 0046FC14    dec         dword ptr [ebp-28]
 0046FC17    mov         eax,dword ptr [ebp-28]
 0046FC1A    test        eax,eax
>0046FC1C    jge         0046FBBB
 0046FC1E    mov         edx,dword ptr [ebp-1C]
 0046FC21    inc         edx
 0046FC22    mov         dword ptr [ebp-2C],edx
>0046FC25    jmp         0046FC83
 0046FC27    mov         ecx,dword ptr [ebp-2C]
 0046FC2A    shl         ecx,4
 0046FC2D    mov         eax,dword ptr [ebp-4]
 0046FC30    mov         edx,dword ptr [eax+24]
 0046FC33    mov         ecx,dword ptr [edx+ecx+0C]
 0046FC37    mov         dword ptr [ebp-20],ecx
 0046FC3A    mov         eax,dword ptr [ebp-20]
 0046FC3D    shl         eax,4
 0046FC40    mov         edx,dword ptr [ebp-4]
 0046FC43    mov         ecx,dword ptr [edx+24]
 0046FC46    mov         ecx,dword ptr [ecx+eax+4]
 0046FC4A    mov         eax,dword ptr [ebp-20]
 0046FC4D    shl         eax,4
 0046FC50    mov         edx,dword ptr [ebp-4]
 0046FC53    mov         edx,dword ptr [edx+24]
 0046FC56    mov         edx,dword ptr [edx+eax]
 0046FC59    mov         eax,dword ptr [ebp-4]
 0046FC5C    call        00473858
 0046FC61    mov         dword ptr [ebp-68],eax
 0046FC64    mov         ecx,dword ptr [ebp-68]
 0046FC67    add         ecx,4
 0046FC6A    push        ecx
 0046FC6B    push        dword ptr [ebp-0C]
 0046FC6E    call        0066FCB4
 0046FC73    add         esp,8
 0046FC76    mov         dword ptr [ebp-6C],eax
 0046FC79    mov         eax,dword ptr [ebp-6C]
 0046FC7C    test        eax,eax
>0046FC7E    jne         0046FC90
 0046FC80    inc         dword ptr [ebp-2C]
 0046FC83    mov         edx,dword ptr [ebp-2C]
 0046FC86    mov         ecx,dword ptr [ebp-4]
 0046FC89    mov         eax,dword ptr [ecx+59]
 0046FC8C    cmp         edx,eax
>0046FC8E    jl          0046FC27
 0046FC90    mov         byte ptr [ebp-0D],0
 0046FC94    mov         edx,dword ptr [ebp-28]
 0046FC97    inc         edx
 0046FC98    mov         dword ptr [ebp-24],edx
 0046FC9B    mov         ecx,dword ptr [ebp-24]
 0046FC9E    mov         eax,dword ptr [ebp-2C]
 0046FCA1    cmp         ecx,eax
>0046FCA3    jge         0046FD4D
 0046FCA9    mov         edx,dword ptr [ebp-24]
 0046FCAC    shl         edx,4
 0046FCAF    mov         ecx,dword ptr [ebp-4]
 0046FCB2    mov         eax,dword ptr [ecx+24]
 0046FCB5    mov         edx,dword ptr [eax+edx+0C]
 0046FCB9    mov         dword ptr [ebp-20],edx
 0046FCBC    mov         ecx,dword ptr [ebp-20]
 0046FCBF    shl         ecx,4
 0046FCC2    mov         eax,dword ptr [ebp-4]
 0046FCC5    mov         edx,dword ptr [eax+24]
 0046FCC8    mov         ecx,dword ptr [edx+ecx+4]
 0046FCCC    mov         eax,dword ptr [ebp-20]
 0046FCCF    shl         eax,4
 0046FCD2    mov         edx,dword ptr [ebp-4]
 0046FCD5    mov         edx,dword ptr [edx+24]
 0046FCD8    mov         edx,dword ptr [edx+eax]
 0046FCDB    mov         eax,dword ptr [ebp-4]
 0046FCDE    call        00473858
 0046FCE3    mov         dword ptr [ebp-68],eax
 0046FCE6    mov         ecx,dword ptr [ebp-68]
 0046FCE9    mov         ax,word ptr [ecx]
 0046FCEC    mov         word ptr [ebp-34],ax
 0046FCF0    xor         edx,edx
 0046FCF2    mov         dword ptr [ebp-70],edx
 0046FCF5    mov         ecx,dword ptr [ebp-8]
 0046FCF8    mov         eax,dword ptr [ebp-70]
 0046FCFB    mov         dx,word ptr [ecx+eax*2]
 0046FCFF    mov         word ptr [ebp-32],dx
 0046FD03    cmp         word ptr [ebp-32],0FFFF
>0046FD09    je          0046FD24
 0046FD0B    mov         cx,word ptr [ebp-32]
 0046FD0F    cmp         cx,word ptr [ebp-34]
>0046FD13    jne         0046FD1F
 0046FD15    or          dword ptr [ebp-30],10
 0046FD19    mov         byte ptr [ebp-0D],1
>0046FD1D    jmp         0046FD24
 0046FD1F    inc         dword ptr [ebp-70]
>0046FD22    jmp         0046FCF5
 0046FD24    mov         al,byte ptr [ebp-0D]
 0046FD27    test        al,al
>0046FD29    jne         0046FD4D
 0046FD2B    inc         dword ptr [ebp-24]
 0046FD2E    mov         edx,dword ptr [ebp-24]
 0046FD31    mov         ecx,dword ptr [ebp-2C]
 0046FD34    cmp         edx,ecx
>0046FD36    jl          0046FCA9
>0046FD3C    jmp         0046FD4D
 0046FD3E    mov         eax,dword ptr [ebp-14]
 0046FD41    mov         edx,dword ptr [ebp-18]
 0046FD44    cmp         eax,edx
>0046FD46    jg          0046FD4D
>0046FD48    jmp         0046FB23
 0046FD4D    mov         eax,dword ptr [ebp-30]
 0046FD50    mov         esp,ebp
 0046FD52    pop         ebp
 0046FD53    ret
end;*}

//0046FD54
{*function sub_0046FD54(?:?; ?:?; ?:?):?;
begin
 0046FD54    push        ebp
 0046FD55    mov         ebp,esp
 0046FD57    add         esp,0FFFFFFC8
 0046FD5A    mov         dword ptr [ebp-0C],ecx
 0046FD5D    mov         dword ptr [ebp-8],edx
 0046FD60    mov         dword ptr [ebp-4],eax
 0046FD63    mov         eax,dword ptr [ebp-4]
 0046FD66    mov         dl,byte ptr [eax+28]
 0046FD69    test        dl,dl
>0046FD6B    jne         0046FD75
 0046FD6D    or          eax,0FFFFFFFF
>0046FD70    jmp         0046FFD3
 0046FD75    mov         edx,dword ptr [ebp-8]
 0046FD78    test        edx,edx
>0046FD7A    je          0046FD96
 0046FD7C    mov         ecx,dword ptr [ebp-0C]
 0046FD7F    test        ecx,ecx
>0046FD81    je          0046FD96
 0046FD83    mov         eax,dword ptr [ebp-0C]
 0046FD86    mov         dl,byte ptr [eax]
 0046FD88    test        dl,dl
>0046FD8A    je          0046FD96
 0046FD8C    mov         ecx,dword ptr [ebp-4]
 0046FD8F    mov         eax,dword ptr [ecx+35]
 0046FD92    test        eax,eax
>0046FD94    jne         0046FD9E
 0046FD96    or          eax,0FFFFFFFF
>0046FD99    jmp         0046FFD3
 0046FD9E    xor         edx,edx
 0046FDA0    mov         dword ptr [ebp-18],edx
 0046FDA3    mov         ecx,dword ptr [ebp-4]
 0046FDA6    mov         eax,dword ptr [ecx+35]
 0046FDA9    dec         eax
 0046FDAA    mov         dword ptr [ebp-1C],eax
 0046FDAD    mov         edx,dword ptr [ebp-18]
 0046FDB0    mov         ecx,dword ptr [ebp-1C]
 0046FDB3    add         edx,ecx
 0046FDB5    sar         edx,1
>0046FDB7    jns         0046FDBC
 0046FDB9    adc         edx,0
 0046FDBC    mov         dword ptr [ebp-20],edx
 0046FDBF    mov         eax,dword ptr [ebp-20]
 0046FDC2    shl         eax,4
 0046FDC5    mov         edx,dword ptr [ebp-4]
 0046FDC8    mov         ecx,dword ptr [edx+14]
 0046FDCB    mov         eax,dword ptr [ecx+eax+0C]
 0046FDCF    mov         dword ptr [ebp-24],eax
 0046FDD2    mov         edx,dword ptr [ebp-24]
 0046FDD5    shl         edx,4
 0046FDD8    mov         ecx,dword ptr [ebp-4]
 0046FDDB    mov         eax,dword ptr [ecx+14]
 0046FDDE    mov         ecx,dword ptr [eax+edx+4]
 0046FDE2    mov         edx,dword ptr [ebp-24]
 0046FDE5    shl         edx,4
 0046FDE8    mov         eax,dword ptr [ebp-4]
 0046FDEB    mov         eax,dword ptr [eax+14]
 0046FDEE    mov         edx,dword ptr [eax+edx]
 0046FDF1    mov         eax,dword ptr [ebp-4]
 0046FDF4    call        00473858
 0046FDF9    mov         dword ptr [ebp-28],eax
 0046FDFC    mov         edx,dword ptr [ebp-28]
 0046FDFF    add         edx,4
 0046FE02    push        edx
 0046FE03    push        dword ptr [ebp-0C]
 0046FE06    call        0066FCB4
 0046FE0B    add         esp,8
 0046FE0E    mov         dword ptr [ebp-2C],eax
 0046FE11    mov         ecx,dword ptr [ebp-2C]
 0046FE14    test        ecx,ecx
>0046FE16    jge         0046FE24
 0046FE18    mov         eax,dword ptr [ebp-20]
 0046FE1B    dec         eax
 0046FE1C    mov         dword ptr [ebp-1C],eax
>0046FE1F    jmp         0046FFBB
 0046FE24    mov         edx,dword ptr [ebp-2C]
 0046FE27    test        edx,edx
>0046FE29    jle         0046FE37
 0046FE2B    mov         ecx,dword ptr [ebp-20]
 0046FE2E    inc         ecx
 0046FE2F    mov         dword ptr [ebp-18],ecx
>0046FE32    jmp         0046FFBB
 0046FE37    mov         eax,dword ptr [ebp-20]
 0046FE3A    dec         eax
 0046FE3B    mov         dword ptr [ebp-30],eax
 0046FE3E    mov         edx,dword ptr [ebp-30]
 0046FE41    test        edx,edx
>0046FE43    jl          0046FEA8
 0046FE45    mov         ecx,dword ptr [ebp-30]
 0046FE48    shl         ecx,4
 0046FE4B    mov         eax,dword ptr [ebp-4]
 0046FE4E    mov         edx,dword ptr [eax+14]
 0046FE51    mov         ecx,dword ptr [edx+ecx+0C]
 0046FE55    mov         dword ptr [ebp-24],ecx
 0046FE58    mov         eax,dword ptr [ebp-24]
 0046FE5B    shl         eax,4
 0046FE5E    mov         edx,dword ptr [ebp-4]
 0046FE61    mov         ecx,dword ptr [edx+14]
 0046FE64    mov         ecx,dword ptr [ecx+eax+4]
 0046FE68    mov         eax,dword ptr [ebp-24]
 0046FE6B    shl         eax,4
 0046FE6E    mov         edx,dword ptr [ebp-4]
 0046FE71    mov         edx,dword ptr [edx+14]
 0046FE74    mov         edx,dword ptr [edx+eax]
 0046FE77    mov         eax,dword ptr [ebp-4]
 0046FE7A    call        00473858
 0046FE7F    mov         dword ptr [ebp-28],eax
 0046FE82    mov         ecx,dword ptr [ebp-28]
 0046FE85    add         ecx,4
 0046FE88    push        ecx
 0046FE89    push        dword ptr [ebp-0C]
 0046FE8C    call        0066FCB4
 0046FE91    add         esp,8
 0046FE94    mov         dword ptr [ebp-2C],eax
 0046FE97    mov         eax,dword ptr [ebp-2C]
 0046FE9A    test        eax,eax
>0046FE9C    jne         0046FEA8
 0046FE9E    dec         dword ptr [ebp-30]
 0046FEA1    mov         edx,dword ptr [ebp-30]
 0046FEA4    test        edx,edx
>0046FEA6    jge         0046FE45
 0046FEA8    mov         ecx,dword ptr [ebp-20]
 0046FEAB    inc         ecx
 0046FEAC    mov         dword ptr [ebp-34],ecx
>0046FEAF    jmp         0046FF0D
 0046FEB1    mov         eax,dword ptr [ebp-34]
 0046FEB4    shl         eax,4
 0046FEB7    mov         edx,dword ptr [ebp-4]
 0046FEBA    mov         ecx,dword ptr [edx+14]
 0046FEBD    mov         eax,dword ptr [ecx+eax+0C]
 0046FEC1    mov         dword ptr [ebp-24],eax
 0046FEC4    mov         edx,dword ptr [ebp-24]
 0046FEC7    shl         edx,4
 0046FECA    mov         ecx,dword ptr [ebp-4]
 0046FECD    mov         eax,dword ptr [ecx+14]
 0046FED0    mov         ecx,dword ptr [eax+edx+4]
 0046FED4    mov         edx,dword ptr [ebp-24]
 0046FED7    shl         edx,4
 0046FEDA    mov         eax,dword ptr [ebp-4]
 0046FEDD    mov         eax,dword ptr [eax+14]
 0046FEE0    mov         edx,dword ptr [eax+edx]
 0046FEE3    mov         eax,dword ptr [ebp-4]
 0046FEE6    call        00473858
 0046FEEB    mov         dword ptr [ebp-28],eax
 0046FEEE    mov         edx,dword ptr [ebp-28]
 0046FEF1    add         edx,4
 0046FEF4    push        edx
 0046FEF5    push        dword ptr [ebp-0C]
 0046FEF8    call        0066FCB4
 0046FEFD    add         esp,8
 0046FF00    mov         dword ptr [ebp-2C],eax
 0046FF03    mov         ecx,dword ptr [ebp-2C]
 0046FF06    test        ecx,ecx
>0046FF08    jne         0046FF1A
 0046FF0A    inc         dword ptr [ebp-34]
 0046FF0D    mov         eax,dword ptr [ebp-34]
 0046FF10    mov         edx,dword ptr [ebp-4]
 0046FF13    mov         ecx,dword ptr [edx+35]
 0046FF16    cmp         eax,ecx
>0046FF18    jl          0046FEB1
 0046FF1A    mov         eax,dword ptr [ebp-30]
 0046FF1D    inc         eax
 0046FF1E    mov         dword ptr [ebp-38],eax
 0046FF21    mov         edx,dword ptr [ebp-38]
 0046FF24    mov         ecx,dword ptr [ebp-34]
 0046FF27    cmp         edx,ecx
>0046FF29    jge         0046FFB6
 0046FF2F    mov         eax,dword ptr [ebp-38]
 0046FF32    shl         eax,4
 0046FF35    mov         edx,dword ptr [ebp-4]
 0046FF38    mov         ecx,dword ptr [edx+14]
 0046FF3B    mov         eax,dword ptr [ecx+eax+0C]
 0046FF3F    mov         dword ptr [ebp-24],eax
 0046FF42    mov         edx,dword ptr [ebp-24]
 0046FF45    shl         edx,4
 0046FF48    mov         ecx,dword ptr [ebp-4]
 0046FF4B    mov         eax,dword ptr [ecx+14]
 0046FF4E    mov         ecx,dword ptr [eax+edx+4]
 0046FF52    mov         edx,dword ptr [ebp-24]
 0046FF55    shl         edx,4
 0046FF58    mov         eax,dword ptr [ebp-4]
 0046FF5B    mov         eax,dword ptr [eax+14]
 0046FF5E    mov         edx,dword ptr [eax+edx]
 0046FF61    mov         eax,dword ptr [ebp-4]
 0046FF64    call        00473858
 0046FF69    mov         dword ptr [ebp-28],eax
 0046FF6C    mov         edx,dword ptr [ebp-28]
 0046FF6F    mov         cx,word ptr [edx]
 0046FF72    mov         word ptr [ebp-10],cx
 0046FF76    xor         eax,eax
 0046FF78    mov         dword ptr [ebp-14],eax
 0046FF7B    mov         edx,dword ptr [ebp-8]
 0046FF7E    mov         ecx,dword ptr [ebp-14]
 0046FF81    mov         ax,word ptr [edx+ecx*2]
 0046FF85    mov         word ptr [ebp-0E],ax
 0046FF89    cmp         word ptr [ebp-0E],0FFFF
>0046FF8F    je          0046FFA5
 0046FF91    mov         dx,word ptr [ebp-0E]
 0046FF95    cmp         dx,word ptr [ebp-10]
>0046FF99    jne         0046FFA0
 0046FF9B    mov         eax,dword ptr [ebp-38]
>0046FF9E    jmp         0046FFD3
 0046FFA0    inc         dword ptr [ebp-14]
>0046FFA3    jmp         0046FF7B
 0046FFA5    inc         dword ptr [ebp-38]
 0046FFA8    mov         edx,dword ptr [ebp-38]
 0046FFAB    mov         ecx,dword ptr [ebp-34]
 0046FFAE    cmp         edx,ecx
>0046FFB0    jl          0046FF2F
 0046FFB6    or          eax,0FFFFFFFF
>0046FFB9    jmp         0046FFD3
 0046FFBB    mov         edx,dword ptr [ebp-18]
 0046FFBE    mov         ecx,dword ptr [ebp-1C]
 0046FFC1    cmp         edx,ecx
>0046FFC3    jle         0046FDAD
 0046FFC9    or          eax,0FFFFFFFF
>0046FFCC    jmp         0046FFD3
>0046FFCE    jmp         0046FDAD
 0046FFD3    mov         esp,ebp
 0046FFD5    pop         ebp
 0046FFD6    ret
end;*}

//0046FFD8
{*function sub_0046FFD8(?:?; ?:?; ?:?):?;
begin
 0046FFD8    push        ebp
 0046FFD9    mov         ebp,esp
 0046FFDB    add         esp,0FFFFFFD0
 0046FFDE    mov         dword ptr [ebp-0C],ecx
 0046FFE1    mov         dword ptr [ebp-8],edx
 0046FFE4    mov         dword ptr [ebp-4],eax
 0046FFE7    mov         eax,dword ptr [ebp-0C]
 0046FFEA    mov         dword ptr [eax],0FFFFFFFF
 0046FFF0    mov         edx,dword ptr [ebp-4]
 0046FFF3    mov         cl,byte ptr [edx+28]
 0046FFF6    test        cl,cl
>0046FFF8    jne         00470001
 0046FFFA    xor         eax,eax
>0046FFFC    jmp         004701C3
 00470001    mov         edx,dword ptr [ebp-8]
 00470004    test        edx,edx
>00470006    je          0047001B
 00470008    mov         ecx,dword ptr [ebp-8]
 0047000B    mov         al,byte ptr [ecx]
 0047000D    test        al,al
>0047000F    je          0047001B
 00470011    mov         edx,dword ptr [ebp-4]
 00470014    mov         ecx,dword ptr [edx+35]
 00470017    test        ecx,ecx
>00470019    jne         00470022
 0047001B    xor         eax,eax
>0047001D    jmp         004701C3
 00470022    xor         edx,edx
 00470024    mov         dword ptr [ebp-10],edx
 00470027    mov         ecx,dword ptr [ebp-4]
 0047002A    mov         eax,dword ptr [ecx+35]
 0047002D    dec         eax
 0047002E    mov         dword ptr [ebp-14],eax
 00470031    mov         edx,dword ptr [ebp-10]
 00470034    mov         ecx,dword ptr [ebp-14]
 00470037    add         edx,ecx
 00470039    sar         edx,1
>0047003B    jns         00470040
 0047003D    adc         edx,0
 00470040    mov         dword ptr [ebp-18],edx
 00470043    mov         eax,dword ptr [ebp-18]
 00470046    shl         eax,4
 00470049    mov         edx,dword ptr [ebp-4]
 0047004C    mov         ecx,dword ptr [edx+14]
 0047004F    mov         eax,dword ptr [ecx+eax+0C]
 00470053    mov         dword ptr [ebp-1C],eax
 00470056    mov         edx,dword ptr [ebp-1C]
 00470059    shl         edx,4
 0047005C    mov         ecx,dword ptr [ebp-4]
 0047005F    mov         eax,dword ptr [ecx+14]
 00470062    mov         ecx,dword ptr [eax+edx+4]
 00470066    mov         edx,dword ptr [ebp-1C]
 00470069    shl         edx,4
 0047006C    mov         eax,dword ptr [ebp-4]
 0047006F    mov         eax,dword ptr [eax+14]
 00470072    mov         edx,dword ptr [eax+edx]
 00470075    mov         eax,dword ptr [ebp-4]
 00470078    call        00473858
 0047007D    mov         dword ptr [ebp-20],eax
 00470080    mov         edx,dword ptr [ebp-20]
 00470083    add         edx,4
 00470086    push        edx
 00470087    push        dword ptr [ebp-8]
 0047008A    call        0066FCB4
 0047008F    add         esp,8
 00470092    mov         dword ptr [ebp-24],eax
 00470095    mov         ecx,dword ptr [ebp-24]
 00470098    test        ecx,ecx
>0047009A    jge         004700A8
 0047009C    mov         eax,dword ptr [ebp-18]
 0047009F    dec         eax
 004700A0    mov         dword ptr [ebp-14],eax
>004700A3    jmp         004701AC
 004700A8    mov         edx,dword ptr [ebp-24]
 004700AB    test        edx,edx
>004700AD    jle         004700BB
 004700AF    mov         ecx,dword ptr [ebp-18]
 004700B2    inc         ecx
 004700B3    mov         dword ptr [ebp-10],ecx
>004700B6    jmp         004701AC
 004700BB    mov         dword ptr [ebp-28],1
 004700C2    mov         eax,dword ptr [ebp-0C]
 004700C5    mov         edx,dword ptr [ebp-18]
 004700C8    mov         dword ptr [eax],edx
 004700CA    mov         ecx,dword ptr [ebp-18]
 004700CD    dec         ecx
 004700CE    mov         dword ptr [ebp-2C],ecx
 004700D1    mov         eax,dword ptr [ebp-2C]
 004700D4    test        eax,eax
>004700D6    jl          00470138
 004700D8    mov         edx,dword ptr [ebp-2C]
 004700DB    shl         edx,4
 004700DE    mov         ecx,dword ptr [ebp-4]
 004700E1    mov         eax,dword ptr [ecx+14]
 004700E4    mov         edx,dword ptr [eax+edx+0C]
 004700E8    mov         dword ptr [ebp-1C],edx
 004700EB    mov         ecx,dword ptr [ebp-1C]
 004700EE    shl         ecx,4
 004700F1    mov         eax,dword ptr [ebp-4]
 004700F4    mov         edx,dword ptr [eax+14]
 004700F7    mov         ecx,dword ptr [edx+ecx+4]
 004700FB    mov         eax,dword ptr [ebp-1C]
 004700FE    shl         eax,4
 00470101    mov         edx,dword ptr [ebp-4]
 00470104    mov         edx,dword ptr [edx+14]
 00470107    mov         edx,dword ptr [edx+eax]
 0047010A    mov         eax,dword ptr [ebp-4]
 0047010D    call        00473858
 00470112    mov         dword ptr [ebp-20],eax
 00470115    mov         ecx,dword ptr [ebp-20]
 00470118    add         ecx,4
 0047011B    push        ecx
 0047011C    push        dword ptr [ebp-8]
 0047011F    call        0066FCB4
 00470124    add         esp,8
 00470127    test        eax,eax
>00470129    jne         00470138
 0047012B    inc         dword ptr [ebp-28]
 0047012E    dec         dword ptr [ebp-2C]
 00470131    mov         eax,dword ptr [ebp-2C]
 00470134    test        eax,eax
>00470136    jge         004700D8
 00470138    mov         edx,dword ptr [ebp-18]
 0047013B    inc         edx
 0047013C    mov         dword ptr [ebp-30],edx
>0047013F    jmp         0047019A
 00470141    mov         ecx,dword ptr [ebp-30]
 00470144    shl         ecx,4
 00470147    mov         eax,dword ptr [ebp-4]
 0047014A    mov         edx,dword ptr [eax+14]
 0047014D    mov         ecx,dword ptr [edx+ecx+0C]
 00470151    mov         dword ptr [ebp-1C],ecx
 00470154    mov         eax,dword ptr [ebp-1C]
 00470157    shl         eax,4
 0047015A    mov         edx,dword ptr [ebp-4]
 0047015D    mov         ecx,dword ptr [edx+14]
 00470160    mov         ecx,dword ptr [ecx+eax+4]
 00470164    mov         eax,dword ptr [ebp-1C]
 00470167    shl         eax,4
 0047016A    mov         edx,dword ptr [ebp-4]
 0047016D    mov         edx,dword ptr [edx+14]
 00470170    mov         edx,dword ptr [edx+eax]
 00470173    mov         eax,dword ptr [ebp-4]
 00470176    call        00473858
 0047017B    mov         dword ptr [ebp-20],eax
 0047017E    mov         ecx,dword ptr [ebp-20]
 00470181    add         ecx,4
 00470184    push        ecx
 00470185    push        dword ptr [ebp-8]
 00470188    call        0066FCB4
 0047018D    add         esp,8
 00470190    test        eax,eax
>00470192    jne         004701A7
 00470194    inc         dword ptr [ebp-28]
 00470197    inc         dword ptr [ebp-30]
 0047019A    mov         eax,dword ptr [ebp-30]
 0047019D    mov         edx,dword ptr [ebp-4]
 004701A0    mov         ecx,dword ptr [edx+35]
 004701A3    cmp         eax,ecx
>004701A5    jl          00470141
 004701A7    mov         eax,dword ptr [ebp-28]
>004701AA    jmp         004701C3
 004701AC    mov         edx,dword ptr [ebp-10]
 004701AF    mov         ecx,dword ptr [ebp-14]
 004701B2    cmp         edx,ecx
>004701B4    jle         00470031
 004701BA    xor         eax,eax
>004701BC    jmp         004701C3
>004701BE    jmp         00470031
 004701C3    mov         esp,ebp
 004701C5    pop         ebp
 004701C6    ret
end;*}

//004701C8
{*function sub_004701C8(?:?; ?:?; ?:?):?;
begin
 004701C8    push        ebp
 004701C9    mov         ebp,esp
 004701CB    add         esp,0FFFFFFC8
 004701CE    mov         dword ptr [ebp-0C],ecx
 004701D1    mov         dword ptr [ebp-8],edx
 004701D4    mov         dword ptr [ebp-4],eax
 004701D7    mov         eax,dword ptr [ebp-4]
 004701DA    mov         dl,byte ptr [eax+28]
 004701DD    test        dl,dl
>004701DF    jne         004701E9
 004701E1    or          eax,0FFFFFFFF
>004701E4    jmp         0047047F
 004701E9    mov         edx,dword ptr [ebp-8]
 004701EC    test        edx,edx
>004701EE    je          0047020A
 004701F0    mov         ecx,dword ptr [ebp-0C]
 004701F3    test        ecx,ecx
>004701F5    je          0047020A
 004701F7    mov         eax,dword ptr [ebp-0C]
 004701FA    mov         dl,byte ptr [eax]
 004701FC    test        dl,dl
>004701FE    je          0047020A
 00470200    mov         ecx,dword ptr [ebp-4]
 00470203    mov         eax,dword ptr [ecx+3D]
 00470206    test        eax,eax
>00470208    jne         00470212
 0047020A    or          eax,0FFFFFFFF
>0047020D    jmp         0047047F
 00470212    xor         edx,edx
 00470214    mov         dword ptr [ebp-18],edx
 00470217    mov         ecx,dword ptr [ebp-4]
 0047021A    mov         eax,dword ptr [ecx+3D]
 0047021D    dec         eax
 0047021E    mov         dword ptr [ebp-1C],eax
 00470221    mov         edx,dword ptr [ebp-18]
 00470224    mov         ecx,dword ptr [ebp-1C]
 00470227    add         edx,ecx
 00470229    sar         edx,1
>0047022B    jns         00470230
 0047022D    adc         edx,0
 00470230    mov         dword ptr [ebp-20],edx
 00470233    mov         eax,dword ptr [ebp-20]
 00470236    shl         eax,4
 00470239    mov         edx,dword ptr [ebp-4]
 0047023C    mov         ecx,dword ptr [edx+18]
 0047023F    mov         eax,dword ptr [ecx+eax+0C]
 00470243    mov         dword ptr [ebp-24],eax
 00470246    mov         edx,dword ptr [ebp-24]
 00470249    shl         edx,4
 0047024C    mov         ecx,dword ptr [ebp-4]
 0047024F    mov         eax,dword ptr [ecx+18]
 00470252    mov         ecx,dword ptr [eax+edx+4]
 00470256    mov         edx,dword ptr [ebp-24]
 00470259    shl         edx,4
 0047025C    mov         eax,dword ptr [ebp-4]
 0047025F    mov         eax,dword ptr [eax+18]
 00470262    mov         edx,dword ptr [eax+edx]
 00470265    mov         eax,dword ptr [ebp-4]
 00470268    call        00473858
 0047026D    mov         dword ptr [ebp-28],eax
 00470270    mov         edx,dword ptr [ebp-4]
 00470273    mov         ecx,dword ptr [edx]
 00470275    cmp         ecx,2
>00470278    jb          0047027E
 0047027A    add         dword ptr [ebp-28],4
 0047027E    mov         eax,dword ptr [ebp-28]
 00470281    add         eax,4
 00470284    push        eax
 00470285    push        dword ptr [ebp-0C]
 00470288    call        0066FCB4
 0047028D    add         esp,8
 00470290    mov         dword ptr [ebp-2C],eax
 00470293    mov         edx,dword ptr [ebp-2C]
 00470296    test        edx,edx
>00470298    jge         004702A6
 0047029A    mov         ecx,dword ptr [ebp-20]
 0047029D    dec         ecx
 0047029E    mov         dword ptr [ebp-1C],ecx
>004702A1    jmp         00470467
 004702A6    mov         eax,dword ptr [ebp-2C]
 004702A9    test        eax,eax
>004702AB    jle         004702B9
 004702AD    mov         edx,dword ptr [ebp-20]
 004702B0    inc         edx
 004702B1    mov         dword ptr [ebp-18],edx
>004702B4    jmp         00470467
 004702B9    mov         ecx,dword ptr [ebp-20]
 004702BC    dec         ecx
 004702BD    mov         dword ptr [ebp-30],ecx
 004702C0    mov         eax,dword ptr [ebp-30]
 004702C3    test        eax,eax
>004702C5    jl          00470338
 004702C7    mov         edx,dword ptr [ebp-30]
 004702CA    shl         edx,4
 004702CD    mov         ecx,dword ptr [ebp-4]
 004702D0    mov         eax,dword ptr [ecx+18]
 004702D3    mov         edx,dword ptr [eax+edx+0C]
 004702D7    mov         dword ptr [ebp-24],edx
 004702DA    mov         ecx,dword ptr [ebp-24]
 004702DD    shl         ecx,4
 004702E0    mov         eax,dword ptr [ebp-4]
 004702E3    mov         edx,dword ptr [eax+18]
 004702E6    mov         ecx,dword ptr [edx+ecx+4]
 004702EA    mov         eax,dword ptr [ebp-24]
 004702ED    shl         eax,4
 004702F0    mov         edx,dword ptr [ebp-4]
 004702F3    mov         edx,dword ptr [edx+18]
 004702F6    mov         edx,dword ptr [edx+eax]
 004702F9    mov         eax,dword ptr [ebp-4]
 004702FC    call        00473858
 00470301    mov         dword ptr [ebp-28],eax
 00470304    mov         ecx,dword ptr [ebp-4]
 00470307    mov         eax,dword ptr [ecx]
 00470309    cmp         eax,2
>0047030C    jb          00470312
 0047030E    add         dword ptr [ebp-28],4
 00470312    mov         edx,dword ptr [ebp-28]
 00470315    add         edx,4
 00470318    push        edx
 00470319    push        dword ptr [ebp-0C]
 0047031C    call        0066FCB4
 00470321    add         esp,8
 00470324    mov         dword ptr [ebp-2C],eax
 00470327    mov         ecx,dword ptr [ebp-2C]
 0047032A    test        ecx,ecx
>0047032C    jne         00470338
 0047032E    dec         dword ptr [ebp-30]
 00470331    mov         eax,dword ptr [ebp-30]
 00470334    test        eax,eax
>00470336    jge         004702C7
 00470338    mov         edx,dword ptr [ebp-20]
 0047033B    inc         edx
 0047033C    mov         dword ptr [ebp-34],edx
>0047033F    jmp         004703AB
 00470341    mov         ecx,dword ptr [ebp-34]
 00470344    shl         ecx,4
 00470347    mov         eax,dword ptr [ebp-4]
 0047034A    mov         edx,dword ptr [eax+18]
 0047034D    mov         ecx,dword ptr [edx+ecx+0C]
 00470351    mov         dword ptr [ebp-24],ecx
 00470354    mov         eax,dword ptr [ebp-24]
 00470357    shl         eax,4
 0047035A    mov         edx,dword ptr [ebp-4]
 0047035D    mov         ecx,dword ptr [edx+18]
 00470360    mov         ecx,dword ptr [ecx+eax+4]
 00470364    mov         eax,dword ptr [ebp-24]
 00470367    shl         eax,4
 0047036A    mov         edx,dword ptr [ebp-4]
 0047036D    mov         edx,dword ptr [edx+18]
 00470370    mov         edx,dword ptr [edx+eax]
 00470373    mov         eax,dword ptr [ebp-4]
 00470376    call        00473858
 0047037B    mov         dword ptr [ebp-28],eax
 0047037E    mov         ecx,dword ptr [ebp-4]
 00470381    mov         eax,dword ptr [ecx]
 00470383    cmp         eax,2
>00470386    jb          0047038C
 00470388    add         dword ptr [ebp-28],4
 0047038C    mov         edx,dword ptr [ebp-28]
 0047038F    add         edx,4
 00470392    push        edx
 00470393    push        dword ptr [ebp-0C]
 00470396    call        0066FCB4
 0047039B    add         esp,8
 0047039E    mov         dword ptr [ebp-2C],eax
 004703A1    mov         ecx,dword ptr [ebp-2C]
 004703A4    test        ecx,ecx
>004703A6    jne         004703B8
 004703A8    inc         dword ptr [ebp-34]
 004703AB    mov         eax,dword ptr [ebp-34]
 004703AE    mov         edx,dword ptr [ebp-4]
 004703B1    mov         ecx,dword ptr [edx+3D]
 004703B4    cmp         eax,ecx
>004703B6    jl          00470341
 004703B8    mov         eax,dword ptr [ebp-30]
 004703BB    inc         eax
 004703BC    mov         dword ptr [ebp-38],eax
 004703BF    mov         edx,dword ptr [ebp-38]
 004703C2    mov         ecx,dword ptr [ebp-34]
 004703C5    cmp         edx,ecx
>004703C7    jge         00470462
 004703CD    mov         eax,dword ptr [ebp-38]
 004703D0    shl         eax,4
 004703D3    mov         edx,dword ptr [ebp-4]
 004703D6    mov         ecx,dword ptr [edx+18]
 004703D9    mov         eax,dword ptr [ecx+eax+0C]
 004703DD    mov         dword ptr [ebp-24],eax
 004703E0    mov         edx,dword ptr [ebp-24]
 004703E3    shl         edx,4
 004703E6    mov         ecx,dword ptr [ebp-4]
 004703E9    mov         eax,dword ptr [ecx+18]
 004703EC    mov         ecx,dword ptr [eax+edx+4]
 004703F0    mov         edx,dword ptr [ebp-24]
 004703F3    shl         edx,4
 004703F6    mov         eax,dword ptr [ebp-4]
 004703F9    mov         eax,dword ptr [eax+18]
 004703FC    mov         edx,dword ptr [eax+edx]
 004703FF    mov         eax,dword ptr [ebp-4]
 00470402    call        00473858
 00470407    mov         dword ptr [ebp-28],eax
 0047040A    mov         edx,dword ptr [ebp-4]
 0047040D    mov         ecx,dword ptr [edx]
 0047040F    cmp         ecx,2
>00470412    jb          00470418
 00470414    add         dword ptr [ebp-28],4
 00470418    mov         eax,dword ptr [ebp-28]
 0047041B    mov         dx,word ptr [eax]
 0047041E    mov         word ptr [ebp-10],dx
 00470422    xor         ecx,ecx
 00470424    mov         dword ptr [ebp-14],ecx
 00470427    mov         eax,dword ptr [ebp-8]
 0047042A    mov         edx,dword ptr [ebp-14]
 0047042D    mov         cx,word ptr [eax+edx*2]
 00470431    mov         word ptr [ebp-0E],cx
 00470435    cmp         word ptr [ebp-0E],0FFFF
>0047043B    je          00470451
 0047043D    mov         ax,word ptr [ebp-0E]
 00470441    cmp         ax,word ptr [ebp-10]
>00470445    jne         0047044C
 00470447    mov         eax,dword ptr [ebp-38]
>0047044A    jmp         0047047F
 0047044C    inc         dword ptr [ebp-14]
>0047044F    jmp         00470427
 00470451    inc         dword ptr [ebp-38]
 00470454    mov         edx,dword ptr [ebp-38]
 00470457    mov         ecx,dword ptr [ebp-34]
 0047045A    cmp         edx,ecx
>0047045C    jl          004703CD
 00470462    or          eax,0FFFFFFFF
>00470465    jmp         0047047F
 00470467    mov         edx,dword ptr [ebp-18]
 0047046A    mov         ecx,dword ptr [ebp-1C]
 0047046D    cmp         edx,ecx
>0047046F    jle         00470221
 00470475    or          eax,0FFFFFFFF
>00470478    jmp         0047047F
>0047047A    jmp         00470221
 0047047F    mov         esp,ebp
 00470481    pop         ebp
 00470482    ret
end;*}

//00470484
{*function sub_00470484(?:?; ?:?; ?:?):?;
begin
 00470484    push        ebp
 00470485    mov         ebp,esp
 00470487    add         esp,0FFFFFFC4
 0047048A    mov         dword ptr [ebp-0C],ecx
 0047048D    mov         dword ptr [ebp-8],edx
 00470490    mov         dword ptr [ebp-4],eax
 00470493    mov         eax,dword ptr [ebp-4]
 00470496    mov         dl,byte ptr [eax+28]
 00470499    test        dl,dl
>0047049B    jne         004704A5
 0047049D    or          eax,0FFFFFFFF
>004704A0    jmp         00470703
 004704A5    mov         edx,dword ptr [ebp-8]
 004704A8    test        edx,edx
>004704AA    je          004704C6
 004704AC    mov         ecx,dword ptr [ebp-0C]
 004704AF    test        ecx,ecx
>004704B1    je          004704C6
 004704B3    mov         eax,dword ptr [ebp-0C]
 004704B6    mov         dl,byte ptr [eax]
 004704B8    test        dl,dl
>004704BA    je          004704C6
 004704BC    mov         ecx,dword ptr [ebp-4]
 004704BF    mov         eax,dword ptr [ecx+45]
 004704C2    test        eax,eax
>004704C4    jne         004704CE
 004704C6    or          eax,0FFFFFFFF
>004704C9    jmp         00470703
 004704CE    xor         edx,edx
 004704D0    mov         dword ptr [ebp-1C],edx
 004704D3    mov         ecx,dword ptr [ebp-4]
 004704D6    mov         eax,dword ptr [ecx+45]
 004704D9    dec         eax
 004704DA    mov         dword ptr [ebp-20],eax
 004704DD    mov         edx,dword ptr [ebp-1C]
 004704E0    mov         ecx,dword ptr [ebp-20]
 004704E3    add         edx,ecx
 004704E5    sar         edx,1
>004704E7    jns         004704EC
 004704E9    adc         edx,0
 004704EC    mov         dword ptr [ebp-24],edx
 004704EF    mov         eax,dword ptr [ebp-24]
 004704F2    shl         eax,4
 004704F5    mov         edx,dword ptr [ebp-4]
 004704F8    mov         ecx,dword ptr [edx+1C]
 004704FB    mov         eax,dword ptr [ecx+eax+0C]
 004704FF    mov         dword ptr [ebp-28],eax
 00470502    mov         edx,dword ptr [ebp-28]
 00470505    shl         edx,4
 00470508    mov         ecx,dword ptr [ebp-4]
 0047050B    mov         eax,dword ptr [ecx+1C]
 0047050E    mov         ecx,dword ptr [eax+edx+4]
 00470512    mov         edx,dword ptr [ebp-28]
 00470515    shl         edx,4
 00470518    mov         eax,dword ptr [ebp-4]
 0047051B    mov         eax,dword ptr [eax+1C]
 0047051E    mov         edx,dword ptr [eax+edx]
 00470521    mov         eax,dword ptr [ebp-4]
 00470524    call        00473858
 00470529    mov         dword ptr [ebp-2C],eax
 0047052C    mov         edx,dword ptr [ebp-2C]
 0047052F    add         edx,4
 00470532    push        edx
 00470533    push        dword ptr [ebp-0C]
 00470536    call        0066FCB4
 0047053B    add         esp,8
 0047053E    mov         dword ptr [ebp-30],eax
 00470541    mov         ecx,dword ptr [ebp-30]
 00470544    test        ecx,ecx
>00470546    jge         00470554
 00470548    mov         eax,dword ptr [ebp-24]
 0047054B    dec         eax
 0047054C    mov         dword ptr [ebp-20],eax
>0047054F    jmp         004706EB
 00470554    mov         edx,dword ptr [ebp-30]
 00470557    test        edx,edx
>00470559    jle         00470567
 0047055B    mov         ecx,dword ptr [ebp-24]
 0047055E    inc         ecx
 0047055F    mov         dword ptr [ebp-1C],ecx
>00470562    jmp         004706EB
 00470567    mov         eax,dword ptr [ebp-24]
 0047056A    dec         eax
 0047056B    mov         dword ptr [ebp-34],eax
 0047056E    mov         edx,dword ptr [ebp-34]
 00470571    test        edx,edx
>00470573    jl          004705D8
 00470575    mov         ecx,dword ptr [ebp-34]
 00470578    shl         ecx,4
 0047057B    mov         eax,dword ptr [ebp-4]
 0047057E    mov         edx,dword ptr [eax+1C]
 00470581    mov         ecx,dword ptr [edx+ecx+0C]
 00470585    mov         dword ptr [ebp-28],ecx
 00470588    mov         eax,dword ptr [ebp-28]
 0047058B    shl         eax,4
 0047058E    mov         edx,dword ptr [ebp-4]
 00470591    mov         ecx,dword ptr [edx+1C]
 00470594    mov         ecx,dword ptr [ecx+eax+4]
 00470598    mov         eax,dword ptr [ebp-28]
 0047059B    shl         eax,4
 0047059E    mov         edx,dword ptr [ebp-4]
 004705A1    mov         edx,dword ptr [edx+1C]
 004705A4    mov         edx,dword ptr [edx+eax]
 004705A7    mov         eax,dword ptr [ebp-4]
 004705AA    call        00473858
 004705AF    mov         dword ptr [ebp-2C],eax
 004705B2    mov         ecx,dword ptr [ebp-2C]
 004705B5    add         ecx,4
 004705B8    push        ecx
 004705B9    push        dword ptr [ebp-0C]
 004705BC    call        0066FCB4
 004705C1    add         esp,8
 004705C4    mov         dword ptr [ebp-30],eax
 004705C7    mov         eax,dword ptr [ebp-30]
 004705CA    test        eax,eax
>004705CC    jne         004705D8
 004705CE    dec         dword ptr [ebp-34]
 004705D1    mov         edx,dword ptr [ebp-34]
 004705D4    test        edx,edx
>004705D6    jge         00470575
 004705D8    mov         ecx,dword ptr [ebp-24]
 004705DB    inc         ecx
 004705DC    mov         dword ptr [ebp-38],ecx
>004705DF    jmp         0047063D
 004705E1    mov         eax,dword ptr [ebp-38]
 004705E4    shl         eax,4
 004705E7    mov         edx,dword ptr [ebp-4]
 004705EA    mov         ecx,dword ptr [edx+1C]
 004705ED    mov         eax,dword ptr [ecx+eax+0C]
 004705F1    mov         dword ptr [ebp-28],eax
 004705F4    mov         edx,dword ptr [ebp-28]
 004705F7    shl         edx,4
 004705FA    mov         ecx,dword ptr [ebp-4]
 004705FD    mov         eax,dword ptr [ecx+1C]
 00470600    mov         ecx,dword ptr [eax+edx+4]
 00470604    mov         edx,dword ptr [ebp-28]
 00470607    shl         edx,4
 0047060A    mov         eax,dword ptr [ebp-4]
 0047060D    mov         eax,dword ptr [eax+1C]
 00470610    mov         edx,dword ptr [eax+edx]
 00470613    mov         eax,dword ptr [ebp-4]
 00470616    call        00473858
 0047061B    mov         dword ptr [ebp-2C],eax
 0047061E    mov         edx,dword ptr [ebp-2C]
 00470621    add         edx,4
 00470624    push        edx
 00470625    push        dword ptr [ebp-0C]
 00470628    call        0066FCB4
 0047062D    add         esp,8
 00470630    mov         dword ptr [ebp-30],eax
 00470633    mov         ecx,dword ptr [ebp-30]
 00470636    test        ecx,ecx
>00470638    jne         0047064A
 0047063A    inc         dword ptr [ebp-38]
 0047063D    mov         eax,dword ptr [ebp-38]
 00470640    mov         edx,dword ptr [ebp-4]
 00470643    mov         ecx,dword ptr [edx+45]
 00470646    cmp         eax,ecx
>00470648    jl          004705E1
 0047064A    mov         eax,dword ptr [ebp-34]
 0047064D    inc         eax
 0047064E    mov         dword ptr [ebp-3C],eax
 00470651    mov         edx,dword ptr [ebp-3C]
 00470654    mov         ecx,dword ptr [ebp-38]
 00470657    cmp         edx,ecx
>00470659    jge         004706E6
 0047065F    mov         eax,dword ptr [ebp-3C]
 00470662    shl         eax,4
 00470665    mov         edx,dword ptr [ebp-4]
 00470668    mov         ecx,dword ptr [edx+1C]
 0047066B    mov         eax,dword ptr [ecx+eax+0C]
 0047066F    mov         dword ptr [ebp-28],eax
 00470672    mov         edx,dword ptr [ebp-28]
 00470675    shl         edx,4
 00470678    mov         ecx,dword ptr [ebp-4]
 0047067B    mov         eax,dword ptr [ecx+1C]
 0047067E    mov         ecx,dword ptr [eax+edx+4]
 00470682    mov         edx,dword ptr [ebp-28]
 00470685    shl         edx,4
 00470688    mov         eax,dword ptr [ebp-4]
 0047068B    mov         eax,dword ptr [eax+1C]
 0047068E    mov         edx,dword ptr [eax+edx]
 00470691    mov         eax,dword ptr [ebp-4]
 00470694    call        00473858
 00470699    mov         dword ptr [ebp-2C],eax
 0047069C    mov         edx,dword ptr [ebp-2C]
 0047069F    mov         cx,word ptr [edx]
 004706A2    mov         word ptr [ebp-10],cx
 004706A6    xor         eax,eax
 004706A8    mov         dword ptr [ebp-18],eax
 004706AB    mov         edx,dword ptr [ebp-8]
 004706AE    mov         ecx,dword ptr [ebp-18]
 004706B1    mov         ax,word ptr [edx+ecx*2]
 004706B5    mov         word ptr [ebp-0E],ax
 004706B9    cmp         word ptr [ebp-0E],0FFFF
>004706BF    je          004706D5
 004706C1    mov         dx,word ptr [ebp-0E]
 004706C5    cmp         dx,word ptr [ebp-10]
>004706C9    jne         004706D0
 004706CB    mov         eax,dword ptr [ebp-3C]
>004706CE    jmp         00470703
 004706D0    inc         dword ptr [ebp-18]
>004706D3    jmp         004706AB
 004706D5    inc         dword ptr [ebp-3C]
 004706D8    mov         edx,dword ptr [ebp-3C]
 004706DB    mov         ecx,dword ptr [ebp-38]
 004706DE    cmp         edx,ecx
>004706E0    jl          0047065F
 004706E6    or          eax,0FFFFFFFF
>004706E9    jmp         00470703
 004706EB    mov         edx,dword ptr [ebp-1C]
 004706EE    mov         ecx,dword ptr [ebp-20]
 004706F1    cmp         edx,ecx
>004706F3    jle         004704DD
 004706F9    or          eax,0FFFFFFFF
>004706FC    jmp         00470703
>004706FE    jmp         004704DD
 00470703    mov         esp,ebp
 00470705    pop         ebp
 00470706    ret
end;*}

//00470708
{*function sub_00470708(?:?; ?:?; ?:?):?;
begin
 00470708    push        ebp
 00470709    mov         ebp,esp
 0047070B    add         esp,0FFFFFFE4
 0047070E    mov         dword ptr [ebp-0C],ecx
 00470711    mov         dword ptr [ebp-8],edx
 00470714    mov         dword ptr [ebp-4],eax
 00470717    mov         eax,dword ptr [ebp-4]
 0047071A    mov         dl,byte ptr [eax+28]
 0047071D    test        dl,dl
>0047071F    jne         00470729
 00470721    or          eax,0FFFFFFFF
>00470724    jmp         004707ED
 00470729    mov         edx,dword ptr [ebp-0C]
 0047072C    test        edx,edx
>0047072E    je          00470743
 00470730    mov         ecx,dword ptr [ebp-0C]
 00470733    mov         al,byte ptr [ecx]
 00470735    test        al,al
>00470737    je          00470743
 00470739    mov         edx,dword ptr [ebp-4]
 0047073C    mov         ecx,dword ptr [edx+4D]
 0047073F    test        ecx,ecx
>00470741    jne         0047074B
 00470743    or          eax,0FFFFFFFF
>00470746    jmp         004707ED
 0047074B    mov         edx,dword ptr [ebp-8]
 0047074E    mov         dword ptr [ebp-10],edx
>00470751    jmp         004707D9
 00470756    mov         ecx,dword ptr [ebp-10]
 00470759    shl         ecx,4
 0047075C    mov         eax,dword ptr [ebp-4]
 0047075F    mov         edx,dword ptr [eax+20]
 00470762    mov         ecx,dword ptr [edx+ecx+0C]
 00470766    mov         dword ptr [ebp-14],ecx
 00470769    mov         eax,dword ptr [ebp-14]
 0047076C    shl         eax,4
 0047076F    mov         edx,dword ptr [ebp-4]
 00470772    mov         ecx,dword ptr [edx+20]
 00470775    mov         ecx,dword ptr [ecx+eax+4]
 00470779    mov         eax,dword ptr [ebp-14]
 0047077C    shl         eax,4
 0047077F    mov         edx,dword ptr [ebp-4]
 00470782    mov         edx,dword ptr [edx+20]
 00470785    mov         edx,dword ptr [edx+eax]
 00470788    mov         eax,dword ptr [ebp-4]
 0047078B    call        00473858
 00470790    mov         dword ptr [ebp-18],eax
 00470793    add         dword ptr [ebp-18],2
 00470797    mov         ecx,dword ptr [ebp-18]
 0047079A    mov         ax,word ptr [ecx]
 0047079D    mov         word ptr [ebp-1A],ax
 004707A1    movzx       edx,word ptr [ebp-1A]
 004707A5    add         edx,3
 004707A8    add         dword ptr [ebp-18],edx
 004707AB    mov         ecx,dword ptr [ebp-18]
 004707AE    mov         ax,word ptr [ecx]
 004707B1    mov         word ptr [ebp-1A],ax
 004707B5    movzx       edx,word ptr [ebp-1A]
 004707B9    add         edx,5
 004707BC    add         dword ptr [ebp-18],edx
 004707BF    push        dword ptr [ebp-18]
 004707C2    push        dword ptr [ebp-0C]
 004707C5    call        0066FCB4
 004707CA    add         esp,8
 004707CD    test        eax,eax
>004707CF    jne         004707D6
 004707D1    mov         eax,dword ptr [ebp-10]
>004707D4    jmp         004707ED
 004707D6    inc         dword ptr [ebp-10]
 004707D9    mov         edx,dword ptr [ebp-10]
 004707DC    mov         ecx,dword ptr [ebp-4]
 004707DF    mov         eax,dword ptr [ecx+4D]
 004707E2    cmp         edx,eax
>004707E4    jl          00470756
 004707EA    or          eax,0FFFFFFFF
 004707ED    mov         esp,ebp
 004707EF    pop         ebp
 004707F0    ret
end;*}

//004707F4
{*function sub_004707F4(?:?; ?:?; ?:?):?;
begin
 004707F4    push        ebp
 004707F5    mov         ebp,esp
 004707F7    add         esp,0FFFFFFE4
 004707FA    mov         dword ptr [ebp-0C],ecx
 004707FD    mov         word ptr [ebp-6],dx
 00470801    mov         dword ptr [ebp-4],eax
 00470804    mov         eax,dword ptr [ebp-4]
 00470807    mov         dl,byte ptr [eax+28]
 0047080A    test        dl,dl
>0047080C    jne         00470816
 0047080E    or          eax,0FFFFFFFF
>00470811    jmp         004708ED
 00470816    mov         edx,dword ptr [ebp-0C]
 00470819    test        edx,edx
>0047081B    je          00470830
 0047081D    mov         ecx,dword ptr [ebp-0C]
 00470820    mov         al,byte ptr [ecx]
 00470822    test        al,al
>00470824    je          00470830
 00470826    mov         edx,dword ptr [ebp-4]
 00470829    mov         ecx,dword ptr [edx+4D]
 0047082C    test        ecx,ecx
>0047082E    jne         00470838
 00470830    or          eax,0FFFFFFFF
>00470833    jmp         004708ED
 00470838    xor         edx,edx
 0047083A    mov         dword ptr [ebp-14],edx
>0047083D    jmp         004708D9
 00470842    mov         ecx,dword ptr [ebp-14]
 00470845    shl         ecx,4
 00470848    mov         eax,dword ptr [ebp-4]
 0047084B    mov         edx,dword ptr [eax+20]
 0047084E    mov         ecx,dword ptr [edx+ecx+0C]
 00470852    mov         dword ptr [ebp-18],ecx
 00470855    mov         eax,dword ptr [ebp-18]
 00470858    shl         eax,4
 0047085B    mov         edx,dword ptr [ebp-4]
 0047085E    mov         ecx,dword ptr [edx+20]
 00470861    mov         ecx,dword ptr [ecx+eax+4]
 00470865    mov         eax,dword ptr [ebp-18]
 00470868    shl         eax,4
 0047086B    mov         edx,dword ptr [ebp-4]
 0047086E    mov         edx,dword ptr [edx+20]
 00470871    mov         edx,dword ptr [edx+eax]
 00470874    mov         eax,dword ptr [ebp-4]
 00470877    call        00473858
 0047087C    mov         dword ptr [ebp-1C],eax
 0047087F    mov         ecx,dword ptr [ebp-1C]
 00470882    mov         ax,word ptr [ecx]
 00470885    mov         word ptr [ebp-0E],ax
 00470889    add         dword ptr [ebp-1C],2
 0047088D    mov         edx,dword ptr [ebp-1C]
 00470890    mov         cx,word ptr [edx]
 00470893    mov         word ptr [ebp-10],cx
 00470897    movzx       eax,word ptr [ebp-10]
 0047089B    add         eax,3
 0047089E    add         dword ptr [ebp-1C],eax
 004708A1    mov         edx,dword ptr [ebp-1C]
 004708A4    mov         cx,word ptr [edx]
 004708A7    mov         word ptr [ebp-10],cx
 004708AB    movzx       eax,word ptr [ebp-10]
 004708AF    add         eax,5
 004708B2    add         dword ptr [ebp-1C],eax
 004708B5    mov         dx,word ptr [ebp-6]
 004708B9    cmp         dx,word ptr [ebp-0E]
>004708BD    jne         004708D6
 004708BF    push        dword ptr [ebp-1C]
 004708C2    push        dword ptr [ebp-0C]
 004708C5    call        0066FCB4
 004708CA    add         esp,8
 004708CD    test        eax,eax
>004708CF    jne         004708D6
 004708D1    mov         eax,dword ptr [ebp-14]
>004708D4    jmp         004708ED
 004708D6    inc         dword ptr [ebp-14]
 004708D9    mov         edx,dword ptr [ebp-14]
 004708DC    mov         ecx,dword ptr [ebp-4]
 004708DF    mov         eax,dword ptr [ecx+4D]
 004708E2    cmp         edx,eax
>004708E4    jl          00470842
 004708EA    or          eax,0FFFFFFFF
 004708ED    mov         esp,ebp
 004708EF    pop         ebp
 004708F0    ret
end;*}

//004708F4
{*function sub_004708F4(?:?; ?:?; ?:?):?;
begin
 004708F4    push        ebp
 004708F5    mov         ebp,esp
 004708F7    add         esp,0FFFFFFC4
 004708FA    mov         dword ptr [ebp-0C],ecx
 004708FD    mov         dword ptr [ebp-8],edx
 00470900    mov         dword ptr [ebp-4],eax
 00470903    mov         eax,dword ptr [ebp-4]
 00470906    mov         dl,byte ptr [eax+28]
 00470909    test        dl,dl
>0047090B    jne         00470915
 0047090D    or          eax,0FFFFFFFF
>00470910    jmp         00470B73
 00470915    mov         edx,dword ptr [ebp-8]
 00470918    test        edx,edx
>0047091A    je          00470936
 0047091C    mov         ecx,dword ptr [ebp-0C]
 0047091F    test        ecx,ecx
>00470921    je          00470936
 00470923    mov         eax,dword ptr [ebp-0C]
 00470926    mov         dl,byte ptr [eax]
 00470928    test        dl,dl
>0047092A    je          00470936
 0047092C    mov         ecx,dword ptr [ebp-4]
 0047092F    mov         eax,dword ptr [ecx+4D]
 00470932    test        eax,eax
>00470934    jne         0047093E
 00470936    or          eax,0FFFFFFFF
>00470939    jmp         00470B73
 0047093E    xor         edx,edx
 00470940    mov         dword ptr [ebp-1C],edx
 00470943    mov         ecx,dword ptr [ebp-4]
 00470946    mov         eax,dword ptr [ecx+4D]
 00470949    dec         eax
 0047094A    mov         dword ptr [ebp-20],eax
 0047094D    mov         edx,dword ptr [ebp-1C]
 00470950    mov         ecx,dword ptr [ebp-20]
 00470953    add         edx,ecx
 00470955    sar         edx,1
>00470957    jns         0047095C
 00470959    adc         edx,0
 0047095C    mov         dword ptr [ebp-24],edx
 0047095F    mov         eax,dword ptr [ebp-24]
 00470962    shl         eax,4
 00470965    mov         edx,dword ptr [ebp-4]
 00470968    mov         ecx,dword ptr [edx+20]
 0047096B    mov         eax,dword ptr [ecx+eax+0C]
 0047096F    mov         dword ptr [ebp-28],eax
 00470972    mov         edx,dword ptr [ebp-28]
 00470975    shl         edx,4
 00470978    mov         ecx,dword ptr [ebp-4]
 0047097B    mov         eax,dword ptr [ecx+20]
 0047097E    mov         ecx,dword ptr [eax+edx+4]
 00470982    mov         edx,dword ptr [ebp-28]
 00470985    shl         edx,4
 00470988    mov         eax,dword ptr [ebp-4]
 0047098B    mov         eax,dword ptr [eax+20]
 0047098E    mov         edx,dword ptr [eax+edx]
 00470991    mov         eax,dword ptr [ebp-4]
 00470994    call        00473858
 00470999    mov         dword ptr [ebp-3C],eax
 0047099C    mov         edx,dword ptr [ebp-3C]
 0047099F    add         edx,4
 004709A2    push        edx
 004709A3    push        dword ptr [ebp-0C]
 004709A6    call        0066FCB4
 004709AB    add         esp,8
 004709AE    mov         dword ptr [ebp-2C],eax
 004709B1    mov         ecx,dword ptr [ebp-2C]
 004709B4    test        ecx,ecx
>004709B6    jge         004709C4
 004709B8    mov         eax,dword ptr [ebp-24]
 004709BB    dec         eax
 004709BC    mov         dword ptr [ebp-20],eax
>004709BF    jmp         00470B5B
 004709C4    mov         edx,dword ptr [ebp-2C]
 004709C7    test        edx,edx
>004709C9    jle         004709D7
 004709CB    mov         ecx,dword ptr [ebp-24]
 004709CE    inc         ecx
 004709CF    mov         dword ptr [ebp-1C],ecx
>004709D2    jmp         00470B5B
 004709D7    mov         eax,dword ptr [ebp-24]
 004709DA    dec         eax
 004709DB    mov         dword ptr [ebp-30],eax
 004709DE    mov         edx,dword ptr [ebp-30]
 004709E1    test        edx,edx
>004709E3    jl          00470A48
 004709E5    mov         ecx,dword ptr [ebp-30]
 004709E8    shl         ecx,4
 004709EB    mov         eax,dword ptr [ebp-4]
 004709EE    mov         edx,dword ptr [eax+20]
 004709F1    mov         ecx,dword ptr [edx+ecx+0C]
 004709F5    mov         dword ptr [ebp-28],ecx
 004709F8    mov         eax,dword ptr [ebp-28]
 004709FB    shl         eax,4
 004709FE    mov         edx,dword ptr [ebp-4]
 00470A01    mov         ecx,dword ptr [edx+20]
 00470A04    mov         ecx,dword ptr [ecx+eax+4]
 00470A08    mov         eax,dword ptr [ebp-28]
 00470A0B    shl         eax,4
 00470A0E    mov         edx,dword ptr [ebp-4]
 00470A11    mov         edx,dword ptr [edx+20]
 00470A14    mov         edx,dword ptr [edx+eax]
 00470A17    mov         eax,dword ptr [ebp-4]
 00470A1A    call        00473858
 00470A1F    mov         dword ptr [ebp-3C],eax
 00470A22    mov         ecx,dword ptr [ebp-3C]
 00470A25    add         ecx,4
 00470A28    push        ecx
 00470A29    push        dword ptr [ebp-0C]
 00470A2C    call        0066FCB4
 00470A31    add         esp,8
 00470A34    mov         dword ptr [ebp-2C],eax
 00470A37    mov         eax,dword ptr [ebp-2C]
 00470A3A    test        eax,eax
>00470A3C    jne         00470A48
 00470A3E    dec         dword ptr [ebp-30]
 00470A41    mov         edx,dword ptr [ebp-30]
 00470A44    test        edx,edx
>00470A46    jge         004709E5
 00470A48    mov         ecx,dword ptr [ebp-24]
 00470A4B    inc         ecx
 00470A4C    mov         dword ptr [ebp-34],ecx
>00470A4F    jmp         00470AAD
 00470A51    mov         eax,dword ptr [ebp-34]
 00470A54    shl         eax,4
 00470A57    mov         edx,dword ptr [ebp-4]
 00470A5A    mov         ecx,dword ptr [edx+20]
 00470A5D    mov         eax,dword ptr [ecx+eax+0C]
 00470A61    mov         dword ptr [ebp-28],eax
 00470A64    mov         edx,dword ptr [ebp-28]
 00470A67    shl         edx,4
 00470A6A    mov         ecx,dword ptr [ebp-4]
 00470A6D    mov         eax,dword ptr [ecx+20]
 00470A70    mov         ecx,dword ptr [eax+edx+4]
 00470A74    mov         edx,dword ptr [ebp-28]
 00470A77    shl         edx,4
 00470A7A    mov         eax,dword ptr [ebp-4]
 00470A7D    mov         eax,dword ptr [eax+20]
 00470A80    mov         edx,dword ptr [eax+edx]
 00470A83    mov         eax,dword ptr [ebp-4]
 00470A86    call        00473858
 00470A8B    mov         dword ptr [ebp-3C],eax
 00470A8E    mov         edx,dword ptr [ebp-3C]
 00470A91    add         edx,4
 00470A94    push        edx
 00470A95    push        dword ptr [ebp-0C]
 00470A98    call        0066FCB4
 00470A9D    add         esp,8
 00470AA0    mov         dword ptr [ebp-2C],eax
 00470AA3    mov         ecx,dword ptr [ebp-2C]
 00470AA6    test        ecx,ecx
>00470AA8    jne         00470ABA
 00470AAA    inc         dword ptr [ebp-34]
 00470AAD    mov         eax,dword ptr [ebp-34]
 00470AB0    mov         edx,dword ptr [ebp-4]
 00470AB3    mov         ecx,dword ptr [edx+4D]
 00470AB6    cmp         eax,ecx
>00470AB8    jl          00470A51
 00470ABA    mov         eax,dword ptr [ebp-30]
 00470ABD    inc         eax
 00470ABE    mov         dword ptr [ebp-38],eax
 00470AC1    mov         edx,dword ptr [ebp-38]
 00470AC4    mov         ecx,dword ptr [ebp-34]
 00470AC7    cmp         edx,ecx
>00470AC9    jge         00470B56
 00470ACF    mov         eax,dword ptr [ebp-38]
 00470AD2    shl         eax,4
 00470AD5    mov         edx,dword ptr [ebp-4]
 00470AD8    mov         ecx,dword ptr [edx+20]
 00470ADB    mov         eax,dword ptr [ecx+eax+0C]
 00470ADF    mov         dword ptr [ebp-28],eax
 00470AE2    mov         edx,dword ptr [ebp-28]
 00470AE5    shl         edx,4
 00470AE8    mov         ecx,dword ptr [ebp-4]
 00470AEB    mov         eax,dword ptr [ecx+20]
 00470AEE    mov         ecx,dword ptr [eax+edx+4]
 00470AF2    mov         edx,dword ptr [ebp-28]
 00470AF5    shl         edx,4
 00470AF8    mov         eax,dword ptr [ebp-4]
 00470AFB    mov         eax,dword ptr [eax+20]
 00470AFE    mov         edx,dword ptr [eax+edx]
 00470B01    mov         eax,dword ptr [ebp-4]
 00470B04    call        00473858
 00470B09    mov         dword ptr [ebp-3C],eax
 00470B0C    mov         edx,dword ptr [ebp-3C]
 00470B0F    mov         cx,word ptr [edx]
 00470B12    mov         word ptr [ebp-10],cx
 00470B16    xor         eax,eax
 00470B18    mov         dword ptr [ebp-18],eax
 00470B1B    mov         edx,dword ptr [ebp-8]
 00470B1E    mov         ecx,dword ptr [ebp-18]
 00470B21    mov         ax,word ptr [edx+ecx*2]
 00470B25    mov         word ptr [ebp-0E],ax
 00470B29    cmp         word ptr [ebp-0E],0FFFF
>00470B2F    je          00470B45
 00470B31    mov         dx,word ptr [ebp-0E]
 00470B35    cmp         dx,word ptr [ebp-10]
>00470B39    jne         00470B40
 00470B3B    mov         eax,dword ptr [ebp-38]
>00470B3E    jmp         00470B73
 00470B40    inc         dword ptr [ebp-18]
>00470B43    jmp         00470B1B
 00470B45    inc         dword ptr [ebp-38]
 00470B48    mov         edx,dword ptr [ebp-38]
 00470B4B    mov         ecx,dword ptr [ebp-34]
 00470B4E    cmp         edx,ecx
>00470B50    jl          00470ACF
 00470B56    or          eax,0FFFFFFFF
>00470B59    jmp         00470B73
 00470B5B    mov         edx,dword ptr [ebp-1C]
 00470B5E    mov         ecx,dword ptr [ebp-20]
 00470B61    cmp         edx,ecx
>00470B63    jle         0047094D
 00470B69    or          eax,0FFFFFFFF
>00470B6C    jmp         00470B73
>00470B6E    jmp         0047094D
 00470B73    mov         esp,ebp
 00470B75    pop         ebp
 00470B76    ret
end;*}

//00470B78
{*function sub_00470B78(?:?; ?:?; ?:?):?;
begin
 00470B78    push        ebp
 00470B79    mov         ebp,esp
 00470B7B    add         esp,0FFFFFFCC
 00470B7E    mov         dword ptr [ebp-0C],ecx
 00470B81    mov         word ptr [ebp-6],dx
 00470B85    mov         dword ptr [ebp-4],eax
 00470B88    mov         eax,dword ptr [ebp-4]
 00470B8B    mov         dl,byte ptr [eax+28]
 00470B8E    test        dl,dl
>00470B90    jne         00470B9A
 00470B92    or          eax,0FFFFFFFF
>00470B95    jmp         00470DD1
 00470B9A    cmp         word ptr [ebp-6],0FFFF
>00470BA0    je          00470BBC
 00470BA2    mov         edx,dword ptr [ebp-0C]
 00470BA5    test        edx,edx
>00470BA7    je          00470BBC
 00470BA9    mov         ecx,dword ptr [ebp-0C]
 00470BAC    mov         al,byte ptr [ecx]
 00470BAE    test        al,al
>00470BB0    je          00470BBC
 00470BB2    mov         edx,dword ptr [ebp-4]
 00470BB5    mov         ecx,dword ptr [edx+59]
 00470BB8    test        ecx,ecx
>00470BBA    jne         00470BC4
 00470BBC    or          eax,0FFFFFFFF
>00470BBF    jmp         00470DD1
 00470BC4    xor         edx,edx
 00470BC6    mov         dword ptr [ebp-14],edx
 00470BC9    mov         ecx,dword ptr [ebp-4]
 00470BCC    mov         eax,dword ptr [ecx+59]
 00470BCF    dec         eax
 00470BD0    mov         dword ptr [ebp-18],eax
 00470BD3    mov         edx,dword ptr [ebp-14]
 00470BD6    mov         ecx,dword ptr [ebp-18]
 00470BD9    add         edx,ecx
 00470BDB    sar         edx,1
>00470BDD    jns         00470BE2
 00470BDF    adc         edx,0
 00470BE2    mov         dword ptr [ebp-1C],edx
 00470BE5    mov         eax,dword ptr [ebp-1C]
 00470BE8    shl         eax,4
 00470BEB    mov         edx,dword ptr [ebp-4]
 00470BEE    mov         ecx,dword ptr [edx+24]
 00470BF1    mov         eax,dword ptr [ecx+eax+0C]
 00470BF5    mov         dword ptr [ebp-20],eax
 00470BF8    mov         edx,dword ptr [ebp-20]
 00470BFB    shl         edx,4
 00470BFE    mov         ecx,dword ptr [ebp-4]
 00470C01    mov         eax,dword ptr [ecx+24]
 00470C04    mov         ecx,dword ptr [eax+edx+4]
 00470C08    mov         edx,dword ptr [ebp-20]
 00470C0B    shl         edx,4
 00470C0E    mov         eax,dword ptr [ebp-4]
 00470C11    mov         eax,dword ptr [eax+24]
 00470C14    mov         edx,dword ptr [eax+edx]
 00470C17    mov         eax,dword ptr [ebp-4]
 00470C1A    call        00473858
 00470C1F    mov         dword ptr [ebp-24],eax
 00470C22    mov         edx,dword ptr [ebp-24]
 00470C25    add         edx,4
 00470C28    push        edx
 00470C29    push        dword ptr [ebp-0C]
 00470C2C    call        0066FCB4
 00470C31    add         esp,8
 00470C34    mov         dword ptr [ebp-28],eax
 00470C37    mov         ecx,dword ptr [ebp-28]
 00470C3A    test        ecx,ecx
>00470C3C    jge         00470C4A
 00470C3E    mov         eax,dword ptr [ebp-1C]
 00470C41    dec         eax
 00470C42    mov         dword ptr [ebp-18],eax
>00470C45    jmp         00470DB9
 00470C4A    mov         edx,dword ptr [ebp-28]
 00470C4D    test        edx,edx
>00470C4F    jle         00470C5D
 00470C51    mov         ecx,dword ptr [ebp-1C]
 00470C54    inc         ecx
 00470C55    mov         dword ptr [ebp-14],ecx
>00470C58    jmp         00470DB9
 00470C5D    mov         eax,dword ptr [ebp-1C]
 00470C60    dec         eax
 00470C61    mov         dword ptr [ebp-2C],eax
 00470C64    mov         edx,dword ptr [ebp-2C]
 00470C67    test        edx,edx
>00470C69    jl          00470CCE
 00470C6B    mov         ecx,dword ptr [ebp-2C]
 00470C6E    shl         ecx,4
 00470C71    mov         eax,dword ptr [ebp-4]
 00470C74    mov         edx,dword ptr [eax+24]
 00470C77    mov         ecx,dword ptr [edx+ecx+0C]
 00470C7B    mov         dword ptr [ebp-20],ecx
 00470C7E    mov         eax,dword ptr [ebp-20]
 00470C81    shl         eax,4
 00470C84    mov         edx,dword ptr [ebp-4]
 00470C87    mov         ecx,dword ptr [edx+24]
 00470C8A    mov         ecx,dword ptr [ecx+eax+4]
 00470C8E    mov         eax,dword ptr [ebp-20]
 00470C91    shl         eax,4
 00470C94    mov         edx,dword ptr [ebp-4]
 00470C97    mov         edx,dword ptr [edx+24]
 00470C9A    mov         edx,dword ptr [edx+eax]
 00470C9D    mov         eax,dword ptr [ebp-4]
 00470CA0    call        00473858
 00470CA5    mov         dword ptr [ebp-24],eax
 00470CA8    mov         ecx,dword ptr [ebp-24]
 00470CAB    add         ecx,4
 00470CAE    push        ecx
 00470CAF    push        dword ptr [ebp-0C]
 00470CB2    call        0066FCB4
 00470CB7    add         esp,8
 00470CBA    mov         dword ptr [ebp-28],eax
 00470CBD    mov         eax,dword ptr [ebp-28]
 00470CC0    test        eax,eax
>00470CC2    jne         00470CCE
 00470CC4    dec         dword ptr [ebp-2C]
 00470CC7    mov         edx,dword ptr [ebp-2C]
 00470CCA    test        edx,edx
>00470CCC    jge         00470C6B
 00470CCE    mov         ecx,dword ptr [ebp-1C]
 00470CD1    inc         ecx
 00470CD2    mov         dword ptr [ebp-30],ecx
>00470CD5    jmp         00470D33
 00470CD7    mov         eax,dword ptr [ebp-30]
 00470CDA    shl         eax,4
 00470CDD    mov         edx,dword ptr [ebp-4]
 00470CE0    mov         ecx,dword ptr [edx+24]
 00470CE3    mov         eax,dword ptr [ecx+eax+0C]
 00470CE7    mov         dword ptr [ebp-20],eax
 00470CEA    mov         edx,dword ptr [ebp-20]
 00470CED    shl         edx,4
 00470CF0    mov         ecx,dword ptr [ebp-4]
 00470CF3    mov         eax,dword ptr [ecx+24]
 00470CF6    mov         ecx,dword ptr [eax+edx+4]
 00470CFA    mov         edx,dword ptr [ebp-20]
 00470CFD    shl         edx,4
 00470D00    mov         eax,dword ptr [ebp-4]
 00470D03    mov         eax,dword ptr [eax+24]
 00470D06    mov         edx,dword ptr [eax+edx]
 00470D09    mov         eax,dword ptr [ebp-4]
 00470D0C    call        00473858
 00470D11    mov         dword ptr [ebp-24],eax
 00470D14    mov         edx,dword ptr [ebp-24]
 00470D17    add         edx,4
 00470D1A    push        edx
 00470D1B    push        dword ptr [ebp-0C]
 00470D1E    call        0066FCB4
 00470D23    add         esp,8
 00470D26    mov         dword ptr [ebp-28],eax
 00470D29    mov         ecx,dword ptr [ebp-28]
 00470D2C    test        ecx,ecx
>00470D2E    jne         00470D40
 00470D30    inc         dword ptr [ebp-30]
 00470D33    mov         eax,dword ptr [ebp-30]
 00470D36    mov         edx,dword ptr [ebp-4]
 00470D39    mov         ecx,dword ptr [edx+59]
 00470D3C    cmp         eax,ecx
>00470D3E    jl          00470CD7
 00470D40    mov         eax,dword ptr [ebp-2C]
 00470D43    inc         eax
 00470D44    mov         dword ptr [ebp-34],eax
 00470D47    mov         edx,dword ptr [ebp-34]
 00470D4A    mov         ecx,dword ptr [ebp-30]
 00470D4D    cmp         edx,ecx
>00470D4F    jge         00470DB4
 00470D51    mov         eax,dword ptr [ebp-34]
 00470D54    shl         eax,4
 00470D57    mov         edx,dword ptr [ebp-4]
 00470D5A    mov         ecx,dword ptr [edx+24]
 00470D5D    mov         eax,dword ptr [ecx+eax+0C]
 00470D61    mov         dword ptr [ebp-20],eax
 00470D64    mov         edx,dword ptr [ebp-20]
 00470D67    shl         edx,4
 00470D6A    mov         ecx,dword ptr [ebp-4]
 00470D6D    mov         eax,dword ptr [ecx+24]
 00470D70    mov         ecx,dword ptr [eax+edx+4]
 00470D74    mov         edx,dword ptr [ebp-20]
 00470D77    shl         edx,4
 00470D7A    mov         eax,dword ptr [ebp-4]
 00470D7D    mov         eax,dword ptr [eax+24]
 00470D80    mov         edx,dword ptr [eax+edx]
 00470D83    mov         eax,dword ptr [ebp-4]
 00470D86    call        00473858
 00470D8B    mov         dword ptr [ebp-24],eax
 00470D8E    mov         edx,dword ptr [ebp-24]
 00470D91    mov         cx,word ptr [edx]
 00470D94    mov         word ptr [ebp-0E],cx
 00470D98    mov         ax,word ptr [ebp-6]
 00470D9C    cmp         ax,word ptr [ebp-0E]
>00470DA0    jne         00470DA7
 00470DA2    mov         eax,dword ptr [ebp-34]
>00470DA5    jmp         00470DD1
 00470DA7    inc         dword ptr [ebp-34]
 00470DAA    mov         edx,dword ptr [ebp-34]
 00470DAD    mov         ecx,dword ptr [ebp-30]
 00470DB0    cmp         edx,ecx
>00470DB2    jl          00470D51
 00470DB4    or          eax,0FFFFFFFF
>00470DB7    jmp         00470DD1
 00470DB9    mov         edx,dword ptr [ebp-14]
 00470DBC    mov         ecx,dword ptr [ebp-18]
 00470DBF    cmp         edx,ecx
>00470DC1    jle         00470BD3
 00470DC7    or          eax,0FFFFFFFF
>00470DCA    jmp         00470DD1
>00470DCC    jmp         00470BD3
 00470DD1    mov         esp,ebp
 00470DD3    pop         ebp
 00470DD4    ret
end;*}

//00470DD8
{*function sub_00470DD8(?:?; ?:?; ?:?; ?:?):?;
begin
 00470DD8    push        ebp
 00470DD9    mov         ebp,esp
 00470DDB    add         esp,0FFFFFF7C
 00470DE1    mov         dword ptr [ebp-54],ecx
 00470DE4    mov         word ptr [ebp-4E],dx
 00470DE8    mov         dword ptr [ebp-4C],eax
 00470DEB    mov         eax,6B1CAC
 00470DF0    call        0066FECC
 00470DF5    mov         edx,dword ptr [ebp-4C]
 00470DF8    mov         cl,byte ptr [edx+28]
 00470DFB    test        cl,cl
>00470DFD    jne         00470E11
 00470DFF    or          eax,0FFFFFFFF
 00470E02    mov         edx,dword ptr [ebp-48]
 00470E05    mov         dword ptr fs:[0],edx
>00470E0C    jmp         004710DD
 00470E11    cmp         word ptr [ebp-4E],0FFFF
>00470E17    je          00470E33
 00470E19    mov         ecx,dword ptr [ebp-54]
 00470E1C    test        ecx,ecx
>00470E1E    je          00470E33
 00470E20    mov         eax,dword ptr [ebp-54]
 00470E23    mov         dl,byte ptr [eax]
 00470E25    test        dl,dl
>00470E27    je          00470E33
 00470E29    mov         ecx,dword ptr [ebp-4C]
 00470E2C    mov         eax,dword ptr [ecx+59]
 00470E2F    test        eax,eax
>00470E31    jne         00470E45
 00470E33    or          eax,0FFFFFFFF
 00470E36    mov         edx,dword ptr [ebp-48]
 00470E39    mov         dword ptr fs:[0],edx
>00470E40    jmp         004710DD
 00470E45    mov         word ptr [ebp-38],8
 00470E4B    lea         eax,[ebp-24]
 00470E4E    call        0046E470
 00470E53    add         dword ptr [ebp-2C],3
 00470E57    mov         word ptr [ebp-38],14
 00470E5D    xor         edx,edx
 00470E5F    mov         dword ptr [ebp-60],edx
 00470E62    mov         ecx,dword ptr [ebp-4C]
 00470E65    mov         eax,dword ptr [ecx+59]
 00470E68    dec         eax
 00470E69    mov         dword ptr [ebp-64],eax
 00470E6C    mov         edx,dword ptr [ebp-60]
 00470E6F    mov         ecx,dword ptr [ebp-64]
 00470E72    add         edx,ecx
 00470E74    sar         edx,1
>00470E76    jns         00470E7B
 00470E78    adc         edx,0
 00470E7B    mov         dword ptr [ebp-68],edx
 00470E7E    mov         word ptr [ebp-38],14
 00470E84    mov         eax,dword ptr [ebp-68]
 00470E87    shl         eax,4
 00470E8A    mov         edx,dword ptr [ebp-4C]
 00470E8D    mov         ecx,dword ptr [edx+24]
 00470E90    mov         eax,dword ptr [ecx+eax+0C]
 00470E94    mov         dword ptr [ebp-6C],eax
 00470E97    mov         edx,dword ptr [ebp-6C]
 00470E9A    shl         edx,4
 00470E9D    mov         ecx,dword ptr [ebp-4C]
 00470EA0    mov         eax,dword ptr [ecx+24]
 00470EA3    mov         ecx,dword ptr [eax+edx+4]
 00470EA7    mov         edx,dword ptr [ebp-6C]
 00470EAA    shl         edx,4
 00470EAD    mov         eax,dword ptr [ebp-4C]
 00470EB0    mov         eax,dword ptr [eax+24]
 00470EB3    mov         edx,dword ptr [eax+edx]
 00470EB6    mov         eax,dword ptr [ebp-4C]
 00470EB9    call        00473858
 00470EBE    mov         dword ptr [ebp-70],eax
 00470EC1    mov         edx,dword ptr [ebp-70]
 00470EC4    add         edx,4
 00470EC7    push        edx
 00470EC8    push        dword ptr [ebp-54]
 00470ECB    call        0066FCB4
 00470ED0    add         esp,8
 00470ED3    mov         dword ptr [ebp-74],eax
 00470ED6    mov         ecx,dword ptr [ebp-74]
 00470ED9    test        ecx,ecx
>00470EDB    jge         00470EE9
 00470EDD    mov         eax,dword ptr [ebp-68]
 00470EE0    dec         eax
 00470EE1    mov         dword ptr [ebp-64],eax
>00470EE4    jmp         004710A8
 00470EE9    mov         edx,dword ptr [ebp-74]
 00470EEC    test        edx,edx
>00470EEE    jle         00470EFC
 00470EF0    mov         ecx,dword ptr [ebp-68]
 00470EF3    inc         ecx
 00470EF4    mov         dword ptr [ebp-60],ecx
>00470EF7    jmp         004710A8
 00470EFC    mov         eax,dword ptr [ebp-68]
 00470EFF    dec         eax
 00470F00    mov         dword ptr [ebp-78],eax
 00470F03    mov         edx,dword ptr [ebp-78]
 00470F06    test        edx,edx
>00470F08    jl          00470F6D
 00470F0A    mov         ecx,dword ptr [ebp-78]
 00470F0D    shl         ecx,4
 00470F10    mov         eax,dword ptr [ebp-4C]
 00470F13    mov         edx,dword ptr [eax+24]
 00470F16    mov         ecx,dword ptr [edx+ecx+0C]
 00470F1A    mov         dword ptr [ebp-6C],ecx
 00470F1D    mov         eax,dword ptr [ebp-6C]
 00470F20    shl         eax,4
 00470F23    mov         edx,dword ptr [ebp-4C]
 00470F26    mov         ecx,dword ptr [edx+24]
 00470F29    mov         ecx,dword ptr [ecx+eax+4]
 00470F2D    mov         eax,dword ptr [ebp-6C]
 00470F30    shl         eax,4
 00470F33    mov         edx,dword ptr [ebp-4C]
 00470F36    mov         edx,dword ptr [edx+24]
 00470F39    mov         edx,dword ptr [edx+eax]
 00470F3C    mov         eax,dword ptr [ebp-4C]
 00470F3F    call        00473858
 00470F44    mov         dword ptr [ebp-70],eax
 00470F47    mov         ecx,dword ptr [ebp-70]
 00470F4A    add         ecx,4
 00470F4D    push        ecx
 00470F4E    push        dword ptr [ebp-54]
 00470F51    call        0066FCB4
 00470F56    add         esp,8
 00470F59    mov         dword ptr [ebp-74],eax
 00470F5C    mov         eax,dword ptr [ebp-74]
 00470F5F    test        eax,eax
>00470F61    jne         00470F6D
 00470F63    dec         dword ptr [ebp-78]
 00470F66    mov         edx,dword ptr [ebp-78]
 00470F69    test        edx,edx
>00470F6B    jge         00470F0A
 00470F6D    mov         ecx,dword ptr [ebp-68]
 00470F70    inc         ecx
 00470F71    mov         dword ptr [ebp-7C],ecx
>00470F74    jmp         00470FD2
 00470F76    mov         eax,dword ptr [ebp-7C]
 00470F79    shl         eax,4
 00470F7C    mov         edx,dword ptr [ebp-4C]
 00470F7F    mov         ecx,dword ptr [edx+24]
 00470F82    mov         eax,dword ptr [ecx+eax+0C]
 00470F86    mov         dword ptr [ebp-6C],eax
 00470F89    mov         edx,dword ptr [ebp-6C]
 00470F8C    shl         edx,4
 00470F8F    mov         ecx,dword ptr [ebp-4C]
 00470F92    mov         eax,dword ptr [ecx+24]
 00470F95    mov         ecx,dword ptr [eax+edx+4]
 00470F99    mov         edx,dword ptr [ebp-6C]
 00470F9C    shl         edx,4
 00470F9F    mov         eax,dword ptr [ebp-4C]
 00470FA2    mov         eax,dword ptr [eax+24]
 00470FA5    mov         edx,dword ptr [eax+edx]
 00470FA8    mov         eax,dword ptr [ebp-4C]
 00470FAB    call        00473858
 00470FB0    mov         dword ptr [ebp-70],eax
 00470FB3    mov         edx,dword ptr [ebp-70]
 00470FB6    add         edx,4
 00470FB9    push        edx
 00470FBA    push        dword ptr [ebp-54]
 00470FBD    call        0066FCB4
 00470FC2    add         esp,8
 00470FC5    mov         dword ptr [ebp-74],eax
 00470FC8    mov         ecx,dword ptr [ebp-74]
 00470FCB    test        ecx,ecx
>00470FCD    jne         00470FDF
 00470FCF    inc         dword ptr [ebp-7C]
 00470FD2    mov         eax,dword ptr [ebp-7C]
 00470FD5    mov         edx,dword ptr [ebp-4C]
 00470FD8    mov         ecx,dword ptr [edx+59]
 00470FDB    cmp         eax,ecx
>00470FDD    jl          00470F76
 00470FDF    mov         eax,dword ptr [ebp-78]
 00470FE2    inc         eax
 00470FE3    mov         dword ptr [ebp-80],eax
 00470FE6    mov         word ptr [ebp-38],14
 00470FEC    mov         edx,dword ptr [ebp-80]
 00470FEF    mov         ecx,dword ptr [ebp-7C]
 00470FF2    cmp         edx,ecx
>00470FF4    jge         00471086
 00470FFA    lea         eax,[ebp-24]
 00470FFD    push        eax
 00470FFE    mov         edx,dword ptr [ebp-80]
 00471001    shl         edx,4
 00471004    mov         ecx,dword ptr [ebp-4C]
 00471007    mov         eax,dword ptr [ecx+24]
 0047100A    mov         edx,dword ptr [eax+edx+0C]
 0047100E    mov         ecx,1
 00471013    mov         eax,dword ptr [ebp-4C]
 00471016    call        00471F14
 0047101B    mov         dword ptr [ebp-58],eax
 0047101E    mov         edx,dword ptr [ebp-58]
 00471021    mov         cx,word ptr [edx]
 00471024    mov         word ptr [ebp-5A],cx
 00471028    mov         edx,dword ptr [ebp-58]
 0047102B    mov         eax,dword ptr [ebp+8]
 0047102E    call        0053EF88
 00471033    mov         byte ptr [ebp-81],al
 00471039    mov         word ptr [ebp-38],14
 0047103F    mov         cl,byte ptr [ebp-81]
 00471045    test        cl,cl
>00471047    je          00471075
 00471049    mov         ax,word ptr [ebp-4E]
 0047104D    cmp         ax,word ptr [ebp-5A]
>00471051    jne         00471075
 00471053    mov         eax,dword ptr [ebp-80]
 00471056    push        eax
 00471057    sub         dword ptr [ebp-2C],3
 0047105B    lea         eax,[ebp-24]
 0047105E    mov         edx,2
 00471063    call        0046E58C
 00471068    pop         eax
 00471069    mov         edx,dword ptr [ebp-48]
 0047106C    mov         dword ptr fs:[0],edx
>00471073    jmp         004710DD
 00471075    inc         dword ptr [ebp-80]
 00471078    mov         ecx,dword ptr [ebp-80]
 0047107B    mov         eax,dword ptr [ebp-7C]
 0047107E    cmp         ecx,eax
>00471080    jl          00470FFA
 00471086    or          eax,0FFFFFFFF
 00471089    push        eax
 0047108A    sub         dword ptr [ebp-2C],3
 0047108E    lea         eax,[ebp-24]
 00471091    mov         edx,2
 00471096    call        0046E58C
 0047109B    pop         eax
 0047109C    mov         edx,dword ptr [ebp-48]
 0047109F    mov         dword ptr fs:[0],edx
>004710A6    jmp         004710DD
 004710A8    mov         ecx,dword ptr [ebp-60]
 004710AB    mov         eax,dword ptr [ebp-64]
 004710AE    cmp         ecx,eax
>004710B0    jle         00470E6C
 004710B6    or          eax,0FFFFFFFF
 004710B9    push        eax
 004710BA    sub         dword ptr [ebp-2C],3
 004710BE    lea         eax,[ebp-24]
 004710C1    mov         edx,2
 004710C6    call        0046E58C
 004710CB    pop         eax
 004710CC    mov         edx,dword ptr [ebp-48]
 004710CF    mov         dword ptr fs:[0],edx
>004710D6    jmp         004710DD
>004710D8    jmp         00470E6C
 004710DD    mov         esp,ebp
 004710DF    pop         ebp
 004710E0    ret         4
end;*}

//004710E4
{*function sub_004710E4(?:?; ?:?; ?:?; ?:?):?;
begin
 004710E4    push        ebp
 004710E5    mov         ebp,esp
 004710E7    add         esp,0FFFFFF78
 004710ED    mov         dword ptr [ebp-54],ecx
 004710F0    mov         dword ptr [ebp-50],edx
 004710F3    mov         dword ptr [ebp-4C],eax
 004710F6    mov         eax,6B1CEC
 004710FB    call        0066FECC
 00471100    mov         edx,dword ptr [ebp-4C]
 00471103    mov         cl,byte ptr [edx+28]
 00471106    test        cl,cl
>00471108    jne         0047111C
 0047110A    or          eax,0FFFFFFFF
 0047110D    mov         edx,dword ptr [ebp-48]
 00471110    mov         dword ptr fs:[0],edx
>00471117    jmp         0047147C
 0047111C    mov         ecx,dword ptr [ebp-50]
 0047111F    test        ecx,ecx
>00471121    je          0047113D
 00471123    mov         eax,dword ptr [ebp-54]
 00471126    test        eax,eax
>00471128    je          0047113D
 0047112A    mov         edx,dword ptr [ebp-54]
 0047112D    mov         cl,byte ptr [edx]
 0047112F    test        cl,cl
>00471131    je          0047113D
 00471133    mov         eax,dword ptr [ebp-4C]
 00471136    mov         edx,dword ptr [eax+59]
 00471139    test        edx,edx
>0047113B    jne         0047114F
 0047113D    or          eax,0FFFFFFFF
 00471140    mov         edx,dword ptr [ebp-48]
 00471143    mov         dword ptr fs:[0],edx
>0047114A    jmp         0047147C
 0047114F    mov         word ptr [ebp-38],8
 00471155    lea         eax,[ebp-24]
 00471158    call        0046E470
 0047115D    add         dword ptr [ebp-2C],3
 00471161    mov         word ptr [ebp-38],14
 00471167    xor         edx,edx
 00471169    mov         dword ptr [ebp-64],edx
 0047116C    mov         ecx,dword ptr [ebp-4C]
 0047116F    mov         eax,dword ptr [ecx+59]
 00471172    dec         eax
 00471173    mov         dword ptr [ebp-68],eax
 00471176    mov         edx,dword ptr [ebp-64]
 00471179    mov         ecx,dword ptr [ebp-68]
 0047117C    add         edx,ecx
 0047117E    sar         edx,1
>00471180    jns         00471185
 00471182    adc         edx,0
 00471185    mov         dword ptr [ebp-6C],edx
 00471188    mov         word ptr [ebp-38],14
 0047118E    mov         eax,dword ptr [ebp-6C]
 00471191    shl         eax,4
 00471194    mov         edx,dword ptr [ebp-4C]
 00471197    mov         ecx,dword ptr [edx+24]
 0047119A    mov         eax,dword ptr [ecx+eax+0C]
 0047119E    mov         dword ptr [ebp-70],eax
 004711A1    mov         edx,dword ptr [ebp-70]
 004711A4    shl         edx,4
 004711A7    mov         ecx,dword ptr [ebp-4C]
 004711AA    mov         eax,dword ptr [ecx+24]
 004711AD    mov         ecx,dword ptr [eax+edx+4]
 004711B1    mov         edx,dword ptr [ebp-70]
 004711B4    shl         edx,4
 004711B7    mov         eax,dword ptr [ebp-4C]
 004711BA    mov         eax,dword ptr [eax+24]
 004711BD    mov         edx,dword ptr [eax+edx]
 004711C0    mov         eax,dword ptr [ebp-4C]
 004711C3    call        00473858
 004711C8    mov         dword ptr [ebp-74],eax
 004711CB    mov         edx,dword ptr [ebp-74]
 004711CE    add         edx,4
 004711D1    push        edx
 004711D2    push        dword ptr [ebp-54]
 004711D5    call        0066FCB4
 004711DA    add         esp,8
 004711DD    mov         dword ptr [ebp-78],eax
 004711E0    mov         ecx,dword ptr [ebp-78]
 004711E3    test        ecx,ecx
>004711E5    jge         004711F3
 004711E7    mov         eax,dword ptr [ebp-6C]
 004711EA    dec         eax
 004711EB    mov         dword ptr [ebp-68],eax
>004711EE    jmp         00471447
 004711F3    mov         edx,dword ptr [ebp-78]
 004711F6    test        edx,edx
>004711F8    jle         00471206
 004711FA    mov         ecx,dword ptr [ebp-6C]
 004711FD    inc         ecx
 004711FE    mov         dword ptr [ebp-64],ecx
>00471201    jmp         00471447
 00471206    mov         eax,dword ptr [ebp-6C]
 00471209    dec         eax
 0047120A    mov         dword ptr [ebp-7C],eax
 0047120D    mov         edx,dword ptr [ebp-7C]
 00471210    test        edx,edx
>00471212    jl          00471277
 00471214    mov         ecx,dword ptr [ebp-7C]
 00471217    shl         ecx,4
 0047121A    mov         eax,dword ptr [ebp-4C]
 0047121D    mov         edx,dword ptr [eax+24]
 00471220    mov         ecx,dword ptr [edx+ecx+0C]
 00471224    mov         dword ptr [ebp-70],ecx
 00471227    mov         eax,dword ptr [ebp-70]
 0047122A    shl         eax,4
 0047122D    mov         edx,dword ptr [ebp-4C]
 00471230    mov         ecx,dword ptr [edx+24]
 00471233    mov         ecx,dword ptr [ecx+eax+4]
 00471237    mov         eax,dword ptr [ebp-70]
 0047123A    shl         eax,4
 0047123D    mov         edx,dword ptr [ebp-4C]
 00471240    mov         edx,dword ptr [edx+24]
 00471243    mov         edx,dword ptr [edx+eax]
 00471246    mov         eax,dword ptr [ebp-4C]
 00471249    call        00473858
 0047124E    mov         dword ptr [ebp-74],eax
 00471251    mov         ecx,dword ptr [ebp-74]
 00471254    add         ecx,4
 00471257    push        ecx
 00471258    push        dword ptr [ebp-54]
 0047125B    call        0066FCB4
 00471260    add         esp,8
 00471263    mov         dword ptr [ebp-78],eax
 00471266    mov         eax,dword ptr [ebp-78]
 00471269    test        eax,eax
>0047126B    jne         00471277
 0047126D    dec         dword ptr [ebp-7C]
 00471270    mov         edx,dword ptr [ebp-7C]
 00471273    test        edx,edx
>00471275    jge         00471214
 00471277    mov         ecx,dword ptr [ebp-6C]
 0047127A    inc         ecx
 0047127B    mov         dword ptr [ebp-80],ecx
>0047127E    jmp         004712DC
 00471280    mov         eax,dword ptr [ebp-80]
 00471283    shl         eax,4
 00471286    mov         edx,dword ptr [ebp-4C]
 00471289    mov         ecx,dword ptr [edx+24]
 0047128C    mov         eax,dword ptr [ecx+eax+0C]
 00471290    mov         dword ptr [ebp-70],eax
 00471293    mov         edx,dword ptr [ebp-70]
 00471296    shl         edx,4
 00471299    mov         ecx,dword ptr [ebp-4C]
 0047129C    mov         eax,dword ptr [ecx+24]
 0047129F    mov         ecx,dword ptr [eax+edx+4]
 004712A3    mov         edx,dword ptr [ebp-70]
 004712A6    shl         edx,4
 004712A9    mov         eax,dword ptr [ebp-4C]
 004712AC    mov         eax,dword ptr [eax+24]
 004712AF    mov         edx,dword ptr [eax+edx]
 004712B2    mov         eax,dword ptr [ebp-4C]
 004712B5    call        00473858
 004712BA    mov         dword ptr [ebp-74],eax
 004712BD    mov         edx,dword ptr [ebp-74]
 004712C0    add         edx,4
 004712C3    push        edx
 004712C4    push        dword ptr [ebp-54]
 004712C7    call        0066FCB4
 004712CC    add         esp,8
 004712CF    mov         dword ptr [ebp-78],eax
 004712D2    mov         ecx,dword ptr [ebp-78]
 004712D5    test        ecx,ecx
>004712D7    jne         004712E9
 004712D9    inc         dword ptr [ebp-80]
 004712DC    mov         eax,dword ptr [ebp-4C]
 004712DF    mov         edx,dword ptr [eax+59]
 004712E2    mov         ecx,dword ptr [ebp-80]
 004712E5    cmp         edx,ecx
>004712E7    jg          00471280
 004712E9    mov         eax,dword ptr [ebp-7C]
 004712EC    inc         eax
 004712ED    mov         dword ptr [ebp-84],eax
 004712F3    mov         word ptr [ebp-38],14
 004712F9    mov         edx,dword ptr [ebp-84]
 004712FF    mov         ecx,dword ptr [ebp-80]
 00471302    cmp         edx,ecx
>00471304    jge         00471425
 0047130A    lea         eax,[ebp-24]
 0047130D    push        eax
 0047130E    mov         edx,dword ptr [ebp-84]
 00471314    shl         edx,4
 00471317    mov         ecx,dword ptr [ebp-4C]
 0047131A    mov         eax,dword ptr [ecx+24]
 0047131D    mov         edx,dword ptr [eax+edx+0C]
 00471321    mov         ecx,1
 00471326    mov         eax,dword ptr [ebp-4C]
 00471329    call        00471F14
 0047132E    mov         dword ptr [ebp-58],eax
 00471331    mov         edx,dword ptr [ebp-58]
 00471334    mov         cx,word ptr [edx]
 00471337    mov         word ptr [ebp-5C],cx
 0047133B    mov         eax,dword ptr [ebp+8]
 0047133E    test        eax,eax
>00471340    je          004713BF
 00471342    mov         edx,dword ptr [ebp-58]
 00471345    mov         eax,dword ptr [ebp+8]
 00471348    call        0053EF88
 0047134D    mov         byte ptr [ebp-85],al
 00471353    mov         word ptr [ebp-38],14
 00471359    mov         dl,byte ptr [ebp-85]
 0047135F    test        dl,dl
>00471361    je          0047140E
 00471367    xor         ecx,ecx
 00471369    mov         dword ptr [ebp-60],ecx
 0047136C    mov         eax,dword ptr [ebp-50]
 0047136F    mov         edx,dword ptr [ebp-60]
 00471372    mov         cx,word ptr [eax+edx*2]
 00471376    mov         word ptr [ebp-5A],cx
 0047137A    cmp         word ptr [ebp-5A],0FFFF
>00471380    je          0047140E
 00471386    mov         ax,word ptr [ebp-5A]
 0047138A    cmp         ax,word ptr [ebp-5C]
>0047138E    jne         004713B8
 00471390    mov         eax,dword ptr [ebp-84]
 00471396    push        eax
 00471397    sub         dword ptr [ebp-2C],3
 0047139B    lea         eax,[ebp-24]
 0047139E    mov         edx,2
 004713A3    call        0046E58C
 004713A8    pop         eax
 004713A9    mov         edx,dword ptr [ebp-48]
 004713AC    mov         dword ptr fs:[0],edx
>004713B3    jmp         0047147C
 004713B8    inc         dword ptr [ebp-60]
>004713BB    jmp         0047136C
>004713BD    jmp         0047140E
 004713BF    xor         ecx,ecx
 004713C1    mov         dword ptr [ebp-60],ecx
 004713C4    mov         eax,dword ptr [ebp-50]
 004713C7    mov         edx,dword ptr [ebp-60]
 004713CA    mov         cx,word ptr [eax+edx*2]
 004713CE    mov         word ptr [ebp-5A],cx
 004713D2    cmp         word ptr [ebp-5A],0FFFF
>004713D8    je          0047140E
 004713DA    mov         ax,word ptr [ebp-5A]
 004713DE    cmp         ax,word ptr [ebp-5C]
>004713E2    jne         00471409
 004713E4    mov         eax,dword ptr [ebp-84]
 004713EA    push        eax
 004713EB    sub         dword ptr [ebp-2C],3
 004713EF    lea         eax,[ebp-24]
 004713F2    mov         edx,2
 004713F7    call        0046E58C
 004713FC    pop         eax
 004713FD    mov         edx,dword ptr [ebp-48]
 00471400    mov         dword ptr fs:[0],edx
>00471407    jmp         0047147C
 00471409    inc         dword ptr [ebp-60]
>0047140C    jmp         004713C4
 0047140E    inc         dword ptr [ebp-84]
 00471414    mov         ecx,dword ptr [ebp-84]
 0047141A    mov         eax,dword ptr [ebp-80]
 0047141D    cmp         ecx,eax
>0047141F    jl          0047130A
 00471425    or          eax,0FFFFFFFF
 00471428    push        eax
 00471429    sub         dword ptr [ebp-2C],3
 0047142D    lea         eax,[ebp-24]
 00471430    mov         edx,2
 00471435    call        0046E58C
 0047143A    pop         eax
 0047143B    mov         edx,dword ptr [ebp-48]
 0047143E    mov         dword ptr fs:[0],edx
>00471445    jmp         0047147C
 00471447    mov         ecx,dword ptr [ebp-64]
 0047144A    mov         eax,dword ptr [ebp-68]
 0047144D    cmp         ecx,eax
>0047144F    jle         00471176
 00471455    or          eax,0FFFFFFFF
 00471458    push        eax
 00471459    sub         dword ptr [ebp-2C],3
 0047145D    lea         eax,[ebp-24]
 00471460    mov         edx,2
 00471465    call        0046E58C
 0047146A    pop         eax
 0047146B    mov         edx,dword ptr [ebp-48]
 0047146E    mov         dword ptr fs:[0],edx
>00471475    jmp         0047147C
>00471477    jmp         00471176
 0047147C    mov         esp,ebp
 0047147E    pop         ebp
 0047147F    ret         4
end;*}

//00471484
{*function sub_00471484(?:?; ?:?; ?:?; ?:?):?;
begin
 00471484    push        ebp
 00471485    mov         ebp,esp
 00471487    add         esp,0FFFFFFD4
 0047148A    mov         dword ptr [ebp-0C],ecx
 0047148D    mov         word ptr [ebp-6],dx
 00471491    mov         dword ptr [ebp-4],eax
 00471494    mov         eax,dword ptr [ebp-4]
 00471497    mov         dl,byte ptr [eax+28]
 0047149A    test        dl,dl
>0047149C    jne         004714A5
 0047149E    xor         eax,eax
>004714A0    jmp         00471680
 004714A5    cmp         word ptr [ebp-6],0FFFF
>004714AB    je          004714C5
 004714AD    mov         edx,dword ptr [ebp-4]
 004714B0    mov         ecx,dword ptr [edx+59]
 004714B3    test        ecx,ecx
>004714B5    je          004714C5
 004714B7    mov         eax,dword ptr [ebp-0C]
 004714BA    test        eax,eax
>004714BC    je          004714C5
 004714BE    mov         edx,dword ptr [ebp+8]
 004714C1    test        edx,edx
>004714C3    jne         004714CC
 004714C5    xor         eax,eax
>004714C7    jmp         00471680
 004714CC    mov         edx,dword ptr [ebp-0C]
 004714CF    mov         dword ptr [edx],0FFFFFFFF
 004714D5    mov         ecx,dword ptr [ebp+8]
 004714D8    mov         dword ptr [ecx],0FFFFFFFF
 004714DE    xor         eax,eax
 004714E0    mov         dword ptr [ebp-14],eax
 004714E3    mov         edx,dword ptr [ebp-4]
 004714E6    mov         ecx,dword ptr [edx+59]
 004714E9    dec         ecx
 004714EA    mov         dword ptr [ebp-18],ecx
 004714ED    mov         eax,dword ptr [ebp-14]
 004714F0    mov         edx,dword ptr [ebp-18]
 004714F3    add         eax,edx
 004714F5    sar         eax,1
>004714F7    jns         004714FC
 004714F9    adc         eax,0
 004714FC    mov         dword ptr [ebp-1C],eax
 004714FF    mov         ecx,dword ptr [ebp-1C]
 00471502    shl         ecx,4
 00471505    mov         eax,dword ptr [ebp-4]
 00471508    mov         edx,dword ptr [eax+24]
 0047150B    mov         ecx,dword ptr [edx+ecx+8]
 0047150F    mov         dword ptr [ebp-20],ecx
 00471512    mov         eax,dword ptr [ebp-20]
 00471515    shl         eax,4
 00471518    mov         edx,dword ptr [ebp-4]
 0047151B    mov         ecx,dword ptr [edx+24]
 0047151E    mov         ecx,dword ptr [ecx+eax+4]
 00471522    mov         eax,dword ptr [ebp-20]
 00471525    shl         eax,4
 00471528    mov         edx,dword ptr [ebp-4]
 0047152B    mov         edx,dword ptr [edx+24]
 0047152E    mov         edx,dword ptr [edx+eax]
 00471531    mov         eax,dword ptr [ebp-4]
 00471534    call        00473858
 00471539    mov         dword ptr [ebp-24],eax
 0047153C    mov         ecx,dword ptr [ebp-24]
 0047153F    mov         ax,word ptr [ecx]
 00471542    mov         word ptr [ebp-0E],ax
 00471546    mov         dx,word ptr [ebp-6]
 0047154A    cmp         dx,word ptr [ebp-0E]
>0047154E    jae         0047155C
 00471550    mov         ecx,dword ptr [ebp-1C]
 00471553    dec         ecx
 00471554    mov         dword ptr [ebp-18],ecx
>00471557    jmp         00471669
 0047155C    mov         ax,word ptr [ebp-6]
 00471560    cmp         ax,word ptr [ebp-0E]
>00471564    jbe         00471572
 00471566    mov         edx,dword ptr [ebp-1C]
 00471569    inc         edx
 0047156A    mov         dword ptr [ebp-14],edx
>0047156D    jmp         00471669
 00471572    mov         ecx,dword ptr [ebp-0C]
 00471575    mov         eax,dword ptr [ebp-1C]
 00471578    mov         dword ptr [ecx],eax
 0047157A    mov         edx,dword ptr [ebp+8]
 0047157D    mov         ecx,dword ptr [ebp-1C]
 00471580    mov         dword ptr [edx],ecx
 00471582    mov         eax,dword ptr [ebp-1C]
 00471585    dec         eax
 00471586    mov         dword ptr [ebp-28],eax
 00471589    mov         edx,dword ptr [ebp-28]
 0047158C    test        edx,edx
>0047158E    jl          004715F3
 00471590    mov         ecx,dword ptr [ebp-28]
 00471593    shl         ecx,4
 00471596    mov         eax,dword ptr [ebp-4]
 00471599    mov         edx,dword ptr [eax+24]
 0047159C    mov         ecx,dword ptr [edx+ecx+8]
 004715A0    mov         dword ptr [ebp-20],ecx
 004715A3    mov         eax,dword ptr [ebp-20]
 004715A6    shl         eax,4
 004715A9    mov         edx,dword ptr [ebp-4]
 004715AC    mov         ecx,dword ptr [edx+24]
 004715AF    mov         ecx,dword ptr [ecx+eax+4]
 004715B3    mov         eax,dword ptr [ebp-20]
 004715B6    shl         eax,4
 004715B9    mov         edx,dword ptr [ebp-4]
 004715BC    mov         edx,dword ptr [edx+24]
 004715BF    mov         edx,dword ptr [edx+eax]
 004715C2    mov         eax,dword ptr [ebp-4]
 004715C5    call        00473858
 004715CA    mov         dword ptr [ebp-24],eax
 004715CD    mov         ecx,dword ptr [ebp-24]
 004715D0    mov         ax,word ptr [ecx]
 004715D3    mov         word ptr [ebp-0E],ax
 004715D7    mov         dx,word ptr [ebp-0E]
 004715DB    cmp         dx,word ptr [ebp-6]
>004715DF    jne         004715F3
 004715E1    mov         ecx,dword ptr [ebp-0C]
 004715E4    mov         eax,dword ptr [ebp-28]
 004715E7    mov         dword ptr [ecx],eax
 004715E9    dec         dword ptr [ebp-28]
 004715EC    mov         edx,dword ptr [ebp-28]
 004715EF    test        edx,edx
>004715F1    jge         00471590
 004715F3    mov         ecx,dword ptr [ebp-1C]
 004715F6    inc         ecx
 004715F7    mov         dword ptr [ebp-2C],ecx
>004715FA    jmp         00471658
 004715FC    mov         eax,dword ptr [ebp-2C]
 004715FF    shl         eax,4
 00471602    mov         edx,dword ptr [ebp-4]
 00471605    mov         ecx,dword ptr [edx+24]
 00471608    mov         eax,dword ptr [ecx+eax+8]
 0047160C    mov         dword ptr [ebp-20],eax
 0047160F    mov         edx,dword ptr [ebp-20]
 00471612    shl         edx,4
 00471615    mov         ecx,dword ptr [ebp-4]
 00471618    mov         eax,dword ptr [ecx+24]
 0047161B    mov         ecx,dword ptr [eax+edx+4]
 0047161F    mov         edx,dword ptr [ebp-20]
 00471622    shl         edx,4
 00471625    mov         eax,dword ptr [ebp-4]
 00471628    mov         eax,dword ptr [eax+24]
 0047162B    mov         edx,dword ptr [eax+edx]
 0047162E    mov         eax,dword ptr [ebp-4]
 00471631    call        00473858
 00471636    mov         dword ptr [ebp-24],eax
 00471639    mov         edx,dword ptr [ebp-24]
 0047163C    mov         cx,word ptr [edx]
 0047163F    mov         word ptr [ebp-0E],cx
 00471643    mov         ax,word ptr [ebp-0E]
 00471647    cmp         ax,word ptr [ebp-6]
>0047164B    jne         00471665
 0047164D    mov         edx,dword ptr [ebp+8]
 00471650    mov         ecx,dword ptr [ebp-2C]
 00471653    mov         dword ptr [edx],ecx
 00471655    inc         dword ptr [ebp-2C]
 00471658    mov         eax,dword ptr [ebp-2C]
 0047165B    mov         edx,dword ptr [ebp-4]
 0047165E    mov         ecx,dword ptr [edx+59]
 00471661    cmp         eax,ecx
>00471663    jl          004715FC
 00471665    mov         al,1
>00471667    jmp         00471680
 00471669    mov         edx,dword ptr [ebp-14]
 0047166C    mov         ecx,dword ptr [ebp-18]
 0047166F    cmp         edx,ecx
>00471671    jle         004714ED
 00471677    xor         eax,eax
>00471679    jmp         00471680
>0047167B    jmp         004714ED
 00471680    mov         esp,ebp
 00471682    pop         ebp
 00471683    ret         4
end;*}

//00471688
{*function sub_00471688(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00471688    push        ebp
 00471689    mov         ebp,esp
 0047168B    add         esp,0FFFFFFC8
 0047168E    mov         dword ptr [ebp-0C],ecx
 00471691    mov         word ptr [ebp-6],dx
 00471695    mov         dword ptr [ebp-4],eax
 00471698    mov         eax,dword ptr [ebp-4]
 0047169B    mov         dl,byte ptr [eax+28]
 0047169E    test        dl,dl
>004716A0    je          004716B4
 004716A2    cmp         word ptr [ebp-6],0FFFF
>004716A8    je          004716B4
 004716AA    mov         ecx,dword ptr [ebp-4]
 004716AD    mov         eax,dword ptr [ecx+59]
 004716B0    test        eax,eax
>004716B2    jne         004716BB
 004716B4    xor         eax,eax
>004716B6    jmp         00471916
 004716BB    mov         edx,dword ptr [ebp-0C]
 004716BE    mov         dword ptr [edx],0FFFFFFFF
 004716C4    mov         ecx,dword ptr [ebp+0C]
 004716C7    mov         dword ptr [ecx],0FFFFFFFF
 004716CD    mov         eax,dword ptr [ebp+8]
 004716D0    xor         edx,edx
 004716D2    mov         dword ptr [eax],edx
 004716D4    xor         ecx,ecx
 004716D6    mov         dword ptr [ebp-14],ecx
 004716D9    mov         eax,dword ptr [ebp-4]
 004716DC    mov         edx,dword ptr [eax+59]
 004716DF    dec         edx
 004716E0    mov         dword ptr [ebp-18],edx
 004716E3    mov         ecx,dword ptr [ebp-14]
 004716E6    mov         eax,dword ptr [ebp-18]
 004716E9    add         ecx,eax
 004716EB    sar         ecx,1
>004716ED    jns         004716F2
 004716EF    adc         ecx,0
 004716F2    mov         dword ptr [ebp-1C],ecx
 004716F5    mov         edx,dword ptr [ebp-1C]
 004716F8    shl         edx,4
 004716FB    mov         ecx,dword ptr [ebp-4]
 004716FE    mov         eax,dword ptr [ecx+24]
 00471701    mov         edx,dword ptr [eax+edx+8]
 00471705    mov         dword ptr [ebp-20],edx
 00471708    mov         ecx,dword ptr [ebp-20]
 0047170B    shl         ecx,4
 0047170E    mov         eax,dword ptr [ebp-4]
 00471711    mov         edx,dword ptr [eax+24]
 00471714    mov         ecx,dword ptr [edx+ecx+4]
 00471718    mov         eax,dword ptr [ebp-20]
 0047171B    shl         eax,4
 0047171E    mov         edx,dword ptr [ebp-4]
 00471721    mov         edx,dword ptr [edx+24]
 00471724    mov         edx,dword ptr [edx+eax]
 00471727    mov         eax,dword ptr [ebp-4]
 0047172A    call        00473858
 0047172F    mov         dword ptr [ebp-24],eax
 00471732    mov         ecx,dword ptr [ebp-24]
 00471735    mov         ax,word ptr [ecx]
 00471738    mov         word ptr [ebp-0E],ax
 0047173C    mov         dx,word ptr [ebp-6]
 00471740    cmp         dx,word ptr [ebp-0E]
>00471744    jae         00471752
 00471746    mov         ecx,dword ptr [ebp-1C]
 00471749    dec         ecx
 0047174A    mov         dword ptr [ebp-18],ecx
>0047174D    jmp         004718FF
 00471752    mov         ax,word ptr [ebp-6]
 00471756    cmp         ax,word ptr [ebp-0E]
>0047175A    jbe         00471768
 0047175C    mov         edx,dword ptr [ebp-1C]
 0047175F    inc         edx
 00471760    mov         dword ptr [ebp-14],edx
>00471763    jmp         004718FF
 00471768    mov         ecx,dword ptr [ebp-0C]
 0047176B    mov         eax,dword ptr [ebp-1C]
 0047176E    mov         dword ptr [ecx],eax
 00471770    mov         edx,dword ptr [ebp+0C]
 00471773    mov         ecx,dword ptr [ebp-1C]
 00471776    mov         dword ptr [edx],ecx
 00471778    mov         eax,dword ptr [ebp-1C]
 0047177B    dec         eax
 0047177C    mov         dword ptr [ebp-28],eax
 0047177F    mov         edx,dword ptr [ebp-28]
 00471782    test        edx,edx
>00471784    jl          004717E9
 00471786    mov         ecx,dword ptr [ebp-28]
 00471789    shl         ecx,4
 0047178C    mov         eax,dword ptr [ebp-4]
 0047178F    mov         edx,dword ptr [eax+24]
 00471792    mov         ecx,dword ptr [edx+ecx+8]
 00471796    mov         dword ptr [ebp-20],ecx
 00471799    mov         eax,dword ptr [ebp-20]
 0047179C    shl         eax,4
 0047179F    mov         edx,dword ptr [ebp-4]
 004717A2    mov         ecx,dword ptr [edx+24]
 004717A5    mov         ecx,dword ptr [ecx+eax+4]
 004717A9    mov         eax,dword ptr [ebp-20]
 004717AC    shl         eax,4
 004717AF    mov         edx,dword ptr [ebp-4]
 004717B2    mov         edx,dword ptr [edx+24]
 004717B5    mov         edx,dword ptr [edx+eax]
 004717B8    mov         eax,dword ptr [ebp-4]
 004717BB    call        00473858
 004717C0    mov         dword ptr [ebp-24],eax
 004717C3    mov         ecx,dword ptr [ebp-24]
 004717C6    mov         ax,word ptr [ecx]
 004717C9    mov         word ptr [ebp-0E],ax
 004717CD    mov         dx,word ptr [ebp-0E]
 004717D1    cmp         dx,word ptr [ebp-6]
>004717D5    jne         004717E9
 004717D7    mov         ecx,dword ptr [ebp-0C]
 004717DA    mov         eax,dword ptr [ebp-28]
 004717DD    mov         dword ptr [ecx],eax
 004717DF    dec         dword ptr [ebp-28]
 004717E2    mov         edx,dword ptr [ebp-28]
 004717E5    test        edx,edx
>004717E7    jge         00471786
 004717E9    mov         ecx,dword ptr [ebp-1C]
 004717EC    inc         ecx
 004717ED    mov         dword ptr [ebp-2C],ecx
>004717F0    jmp         0047184E
 004717F2    mov         eax,dword ptr [ebp-2C]
 004717F5    shl         eax,4
 004717F8    mov         edx,dword ptr [ebp-4]
 004717FB    mov         ecx,dword ptr [edx+24]
 004717FE    mov         eax,dword ptr [ecx+eax+8]
 00471802    mov         dword ptr [ebp-20],eax
 00471805    mov         edx,dword ptr [ebp-20]
 00471808    shl         edx,4
 0047180B    mov         ecx,dword ptr [ebp-4]
 0047180E    mov         eax,dword ptr [ecx+24]
 00471811    mov         ecx,dword ptr [eax+edx+4]
 00471815    mov         edx,dword ptr [ebp-20]
 00471818    shl         edx,4
 0047181B    mov         eax,dword ptr [ebp-4]
 0047181E    mov         eax,dword ptr [eax+24]
 00471821    mov         edx,dword ptr [eax+edx]
 00471824    mov         eax,dword ptr [ebp-4]
 00471827    call        00473858
 0047182C    mov         dword ptr [ebp-24],eax
 0047182F    mov         edx,dword ptr [ebp-24]
 00471832    mov         cx,word ptr [edx]
 00471835    mov         word ptr [ebp-0E],cx
 00471839    mov         ax,word ptr [ebp-0E]
 0047183D    cmp         ax,word ptr [ebp-6]
>00471841    jne         0047185B
 00471843    mov         edx,dword ptr [ebp+0C]
 00471846    mov         ecx,dword ptr [ebp-2C]
 00471849    mov         dword ptr [edx],ecx
 0047184B    inc         dword ptr [ebp-2C]
 0047184E    mov         eax,dword ptr [ebp-2C]
 00471851    mov         edx,dword ptr [ebp-4]
 00471854    mov         ecx,dword ptr [edx+59]
 00471857    cmp         eax,ecx
>00471859    jl          004717F2
 0047185B    mov         eax,dword ptr [ebp-0C]
 0047185E    mov         edx,dword ptr [eax]
 00471860    mov         dword ptr [ebp-30],edx
>00471863    jmp         004718EB
 00471868    mov         ecx,dword ptr [ebp-30]
 0047186B    shl         ecx,4
 0047186E    mov         eax,dword ptr [ebp-4]
 00471871    mov         edx,dword ptr [eax+24]
 00471874    mov         ecx,dword ptr [edx+ecx+4]
 00471878    mov         eax,dword ptr [ebp-30]
 0047187B    shl         eax,4
 0047187E    mov         edx,dword ptr [ebp-4]
 00471881    mov         edx,dword ptr [edx+24]
 00471884    mov         edx,dword ptr [edx+eax]
 00471887    mov         eax,dword ptr [ebp-4]
 0047188A    call        00473858
 0047188F    mov         dword ptr [ebp-24],eax
 00471892    add         dword ptr [ebp-24],2
 00471896    mov         ecx,dword ptr [ebp-24]
 00471899    mov         ax,word ptr [ecx]
 0047189C    mov         word ptr [ebp-32],ax
 004718A0    movzx       edx,word ptr [ebp-32]
 004718A4    add         edx,3
 004718A7    add         dword ptr [ebp-24],edx
 004718AA    inc         dword ptr [ebp-24]
 004718AD    inc         dword ptr [ebp-24]
 004718B0    inc         dword ptr [ebp-24]
 004718B3    inc         dword ptr [ebp-24]
 004718B6    add         dword ptr [ebp-24],4
 004718BA    mov         ecx,dword ptr [ebp-24]
 004718BD    mov         ax,word ptr [ecx]
 004718C0    mov         word ptr [ebp-32],ax
 004718C4    movzx       edx,word ptr [ebp-32]
 004718C8    add         edx,3
 004718CB    add         dword ptr [ebp-24],edx
 004718CE    add         dword ptr [ebp-24],4
 004718D2    mov         ecx,dword ptr [ebp-24]
 004718D5    mov         eax,dword ptr [ecx]
 004718D7    mov         dword ptr [ebp-38],eax
 004718DA    mov         edx,dword ptr [ebp-38]
 004718DD    add         edx,3
 004718E0    and         edx,0FFFFFFFC
 004718E3    mov         ecx,dword ptr [ebp+8]
 004718E6    add         dword ptr [ecx],edx
 004718E8    inc         dword ptr [ebp-30]
 004718EB    mov         eax,dword ptr [ebp+0C]
 004718EE    mov         edx,dword ptr [eax]
 004718F0    mov         ecx,dword ptr [ebp-30]
 004718F3    cmp         edx,ecx
>004718F5    jge         00471868
 004718FB    mov         al,1
>004718FD    jmp         00471916
 004718FF    mov         edx,dword ptr [ebp-14]
 00471902    mov         ecx,dword ptr [ebp-18]
 00471905    cmp         edx,ecx
>00471907    jle         004716E3
 0047190D    xor         eax,eax
>0047190F    jmp         00471916
>00471911    jmp         004716E3
 00471916    mov         esp,ebp
 00471918    pop         ebp
 00471919    ret         8
end;*}

//0047191C
{*function sub_0047191C(?:?; ?:?; ?:?; ?:?):?;
begin
 0047191C    push        ebp
 0047191D    mov         ebp,esp
 0047191F    add         esp,0FFFFFFB8
 00471922    mov         dword ptr [ebp-3C],ecx
 00471925    mov         dword ptr [ebp-38],edx
 00471928    mov         dword ptr [ebp-34],eax
 0047192B    mov         eax,6B1D3C
 00471930    call        0066FECC
 00471935    mov         edx,dword ptr [ebp-34]
 00471938    mov         cl,byte ptr [edx+28]
 0047193B    test        cl,cl
>0047193D    jne         00471950
 0047193F    xor         eax,eax
 00471941    mov         edx,dword ptr [ebp-30]
 00471944    mov         dword ptr fs:[0],edx
>0047194B    jmp         00471ADC
 00471950    mov         ecx,dword ptr [ebp-38]
 00471953    inc         ecx
>00471954    jne         00471967
 00471956    xor         eax,eax
 00471958    mov         edx,dword ptr [ebp-30]
 0047195B    mov         dword ptr fs:[0],edx
>00471962    jmp         00471ADC
 00471967    mov         ecx,dword ptr [ebp-38]
 0047196A    shl         ecx,4
 0047196D    mov         eax,dword ptr [ebp-34]
 00471970    mov         edx,dword ptr [eax+14]
 00471973    mov         ecx,dword ptr [edx+ecx+4]
 00471977    mov         eax,dword ptr [ebp-38]
 0047197A    shl         eax,4
 0047197D    mov         edx,dword ptr [ebp-34]
 00471980    mov         edx,dword ptr [edx+14]
 00471983    mov         edx,dword ptr [edx+eax]
 00471986    mov         eax,dword ptr [ebp-34]
 00471989    call        00473858
 0047198E    mov         dword ptr [ebp-40],eax
 00471991    mov         ecx,dword ptr [ebp-40]
 00471994    mov         ax,word ptr [ecx]
 00471997    mov         edx,dword ptr [ebp+8]
 0047199A    mov         word ptr [edx],ax
 0047199D    add         dword ptr [ebp-40],2
 004719A1    mov         ecx,dword ptr [ebp-40]
 004719A4    mov         ax,word ptr [ecx]
 004719A7    mov         word ptr [ebp-42],ax
 004719AB    add         dword ptr [ebp-40],2
 004719AF    mov         word ptr [ebp-20],8
 004719B5    lea         eax,[ebp-4]
 004719B8    mov         edx,dword ptr [ebp-40]
 004719BB    call        0067DAB4
 004719C0    mov         edx,eax
 004719C2    inc         dword ptr [ebp-14]
 004719C5    mov         eax,dword ptr [ebp+8]
 004719C8    add         eax,2
 004719CB    call        0067DCD0
 004719D0    dec         dword ptr [ebp-14]
 004719D3    lea         eax,[ebp-4]
 004719D6    mov         edx,2
 004719DB    call        0067DCA0
 004719E0    movzx       ecx,word ptr [ebp-42]
 004719E4    inc         ecx
 004719E5    add         dword ptr [ebp-40],ecx
 004719E8    mov         eax,dword ptr [ebp-40]
 004719EB    mov         dl,byte ptr [eax]
 004719ED    mov         ecx,dword ptr [ebp+8]
 004719F0    mov         byte ptr [ecx+6],dl
 004719F3    inc         dword ptr [ebp-40]
 004719F6    mov         eax,dword ptr [ebp-40]
 004719F9    mov         dx,word ptr [eax]
 004719FC    mov         word ptr [ebp-42],dx
 00471A00    add         dword ptr [ebp-40],2
 00471A04    mov         word ptr [ebp-20],14
 00471A0A    lea         eax,[ebp-8]
 00471A0D    mov         edx,dword ptr [ebp-40]
 00471A10    call        0067DAB4
 00471A15    mov         edx,eax
 00471A17    inc         dword ptr [ebp-14]
 00471A1A    mov         eax,dword ptr [ebp+8]
 00471A1D    add         eax,7
 00471A20    call        0067DCD0
 00471A25    dec         dword ptr [ebp-14]
 00471A28    lea         eax,[ebp-8]
 00471A2B    mov         edx,2
 00471A30    call        0067DCA0
 00471A35    movzx       ecx,word ptr [ebp-42]
 00471A39    inc         ecx
 00471A3A    add         dword ptr [ebp-40],ecx
 00471A3D    mov         eax,dword ptr [ebp-40]
 00471A40    mov         dx,word ptr [eax]
 00471A43    mov         word ptr [ebp-42],dx
 00471A47    add         dword ptr [ebp-40],2
 00471A4B    mov         word ptr [ebp-20],20
 00471A51    lea         eax,[ebp-0C]
 00471A54    mov         edx,dword ptr [ebp-40]
 00471A57    call        0067DAB4
 00471A5C    mov         edx,eax
 00471A5E    inc         dword ptr [ebp-14]
 00471A61    mov         eax,dword ptr [ebp+8]
 00471A64    add         eax,0B
 00471A67    call        0067DCD0
 00471A6C    dec         dword ptr [ebp-14]
 00471A6F    lea         eax,[ebp-0C]
 00471A72    mov         edx,2
 00471A77    call        0067DCA0
 00471A7C    movzx       ecx,word ptr [ebp-42]
 00471A80    inc         ecx
 00471A81    add         dword ptr [ebp-40],ecx
 00471A84    mov         eax,dword ptr [ebp-40]
 00471A87    mov         edx,dword ptr [eax]
 00471A89    mov         dword ptr [ebp-48],edx
 00471A8C    add         dword ptr [ebp-40],4
 00471A90    mov         ecx,dword ptr [ebp-40]
 00471A93    mov         eax,dword ptr [ecx]
 00471A95    mov         edx,dword ptr [ebp+8]
 00471A98    mov         dword ptr [edx+0F],eax
 00471A9B    add         dword ptr [ebp-40],4
 00471A9F    mov         ecx,dword ptr [ebp-40]
 00471AA2    mov         eax,dword ptr [ecx]
 00471AA4    mov         edx,dword ptr [ebp+8]
 00471AA7    mov         dword ptr [edx+13],eax
 00471AAA    add         dword ptr [ebp-40],4
 00471AAE    mov         ecx,dword ptr [ebp+8]
 00471AB1    xor         eax,eax
 00471AB3    mov         dword ptr [ecx+17],eax
 00471AB6    test        byte ptr [ebp-3C],1
>00471ABA    je          00471ACF
 00471ABC    mov         edx,dword ptr [ebp+8]
 00471ABF    mov         ecx,dword ptr [edx+0F]
 00471AC2    test        ecx,ecx
>00471AC4    je          00471ACF
 00471AC6    mov         eax,dword ptr [ebp-40]
 00471AC9    mov         edx,dword ptr [ebp+8]
 00471ACC    mov         dword ptr [edx+17],eax
 00471ACF    mov         eax,dword ptr [ebp+8]
 00471AD2    mov         edx,dword ptr [ebp-30]
 00471AD5    mov         dword ptr fs:[0],edx
 00471ADC    mov         esp,ebp
 00471ADE    pop         ebp
 00471ADF    ret         4
end;*}

//00471AE4
{*function sub_00471AE4(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00471AE4    push        ebp
 00471AE5    mov         ebp,esp
 00471AE7    add         esp,0FFFFFF90
 00471AEA    mov         dword ptr [ebp-3C],ecx
 00471AED    mov         dword ptr [ebp-38],edx
 00471AF0    mov         dword ptr [ebp-34],eax
 00471AF3    mov         eax,6B1D94
 00471AF8    call        0066FECC
 00471AFD    mov         edx,dword ptr [ebp-34]
 00471B00    mov         cl,byte ptr [edx+28]
 00471B03    test        cl,cl
>00471B05    jne         00471B18
 00471B07    xor         eax,eax
 00471B09    mov         edx,dword ptr [ebp-30]
 00471B0C    mov         dword ptr fs:[0],edx
>00471B13    jmp         00471F0E
 00471B18    mov         ecx,dword ptr [ebp-38]
 00471B1B    test        ecx,ecx
>00471B1D    je          00471B32
 00471B1F    mov         eax,dword ptr [ebp-38]
 00471B22    mov         dl,byte ptr [eax]
 00471B24    test        dl,dl
>00471B26    je          00471B32
 00471B28    mov         ecx,dword ptr [ebp-34]
 00471B2B    mov         eax,dword ptr [ecx+59]
 00471B2E    test        eax,eax
>00471B30    jne         00471B43
 00471B32    xor         eax,eax
 00471B34    mov         edx,dword ptr [ebp-30]
 00471B37    mov         dword ptr fs:[0],edx
>00471B3E    jmp         00471F0E
 00471B43    xor         ecx,ecx
 00471B45    mov         dword ptr [ebp-44],ecx
 00471B48    mov         eax,dword ptr [ebp-34]
 00471B4B    mov         edx,dword ptr [eax+59]
 00471B4E    dec         edx
 00471B4F    mov         dword ptr [ebp-48],edx
 00471B52    mov         ecx,dword ptr [ebp-44]
 00471B55    mov         eax,dword ptr [ebp-48]
 00471B58    add         ecx,eax
 00471B5A    sar         ecx,1
>00471B5C    jns         00471B61
 00471B5E    adc         ecx,0
 00471B61    mov         dword ptr [ebp-4C],ecx
 00471B64    mov         edx,dword ptr [ebp-4C]
 00471B67    shl         edx,4
 00471B6A    mov         ecx,dword ptr [ebp-34]
 00471B6D    mov         eax,dword ptr [ecx+24]
 00471B70    mov         edx,dword ptr [eax+edx+0C]
 00471B74    mov         dword ptr [ebp-50],edx
 00471B77    mov         ecx,dword ptr [ebp-50]
 00471B7A    shl         ecx,4
 00471B7D    mov         eax,dword ptr [ebp-34]
 00471B80    mov         edx,dword ptr [eax+24]
 00471B83    mov         ecx,dword ptr [edx+ecx+4]
 00471B87    mov         eax,dword ptr [ebp-50]
 00471B8A    shl         eax,4
 00471B8D    mov         edx,dword ptr [ebp-34]
 00471B90    mov         edx,dword ptr [edx+24]
 00471B93    mov         edx,dword ptr [edx+eax]
 00471B96    mov         eax,dword ptr [ebp-34]
 00471B99    call        00473858
 00471B9E    mov         dword ptr [ebp-54],eax
 00471BA1    mov         ecx,dword ptr [ebp-54]
 00471BA4    add         ecx,4
 00471BA7    push        ecx
 00471BA8    push        dword ptr [ebp-38]
 00471BAB    call        0066FCB4
 00471BB0    add         esp,8
 00471BB3    mov         dword ptr [ebp-58],eax
 00471BB6    mov         eax,dword ptr [ebp-58]
 00471BB9    test        eax,eax
>00471BBB    jge         00471BC9
 00471BBD    mov         edx,dword ptr [ebp-4C]
 00471BC0    dec         edx
 00471BC1    mov         dword ptr [ebp-48],edx
>00471BC4    jmp         00471EED
 00471BC9    mov         ecx,dword ptr [ebp-58]
 00471BCC    test        ecx,ecx
>00471BCE    jle         00471BDC
 00471BD0    mov         eax,dword ptr [ebp-4C]
 00471BD3    inc         eax
 00471BD4    mov         dword ptr [ebp-44],eax
>00471BD7    jmp         00471EED
 00471BDC    mov         edx,dword ptr [ebp-4C]
 00471BDF    dec         edx
 00471BE0    mov         dword ptr [ebp-5C],edx
 00471BE3    mov         ecx,dword ptr [ebp-5C]
 00471BE6    test        ecx,ecx
>00471BE8    jl          00471C4D
 00471BEA    mov         eax,dword ptr [ebp-5C]
 00471BED    shl         eax,4
 00471BF0    mov         edx,dword ptr [ebp-34]
 00471BF3    mov         ecx,dword ptr [edx+24]
 00471BF6    mov         eax,dword ptr [ecx+eax+0C]
 00471BFA    mov         dword ptr [ebp-50],eax
 00471BFD    mov         edx,dword ptr [ebp-50]
 00471C00    shl         edx,4
 00471C03    mov         ecx,dword ptr [ebp-34]
 00471C06    mov         eax,dword ptr [ecx+24]
 00471C09    mov         ecx,dword ptr [eax+edx+4]
 00471C0D    mov         edx,dword ptr [ebp-50]
 00471C10    shl         edx,4
 00471C13    mov         eax,dword ptr [ebp-34]
 00471C16    mov         eax,dword ptr [eax+24]
 00471C19    mov         edx,dword ptr [eax+edx]
 00471C1C    mov         eax,dword ptr [ebp-34]
 00471C1F    call        00473858
 00471C24    mov         dword ptr [ebp-54],eax
 00471C27    mov         edx,dword ptr [ebp-54]
 00471C2A    add         edx,4
 00471C2D    push        edx
 00471C2E    push        dword ptr [ebp-38]
 00471C31    call        0066FCB4
 00471C36    add         esp,8
 00471C39    mov         dword ptr [ebp-58],eax
 00471C3C    mov         ecx,dword ptr [ebp-58]
 00471C3F    test        ecx,ecx
>00471C41    jne         00471C4D
 00471C43    dec         dword ptr [ebp-5C]
 00471C46    mov         eax,dword ptr [ebp-5C]
 00471C49    test        eax,eax
>00471C4B    jge         00471BEA
 00471C4D    mov         edx,dword ptr [ebp-4C]
 00471C50    inc         edx
 00471C51    mov         dword ptr [ebp-60],edx
>00471C54    jmp         00471CB2
 00471C56    mov         ecx,dword ptr [ebp-60]
 00471C59    shl         ecx,4
 00471C5C    mov         eax,dword ptr [ebp-34]
 00471C5F    mov         edx,dword ptr [eax+24]
 00471C62    mov         ecx,dword ptr [edx+ecx+0C]
 00471C66    mov         dword ptr [ebp-50],ecx
 00471C69    mov         eax,dword ptr [ebp-50]
 00471C6C    shl         eax,4
 00471C6F    mov         edx,dword ptr [ebp-34]
 00471C72    mov         ecx,dword ptr [edx+24]
 00471C75    mov         ecx,dword ptr [ecx+eax+4]
 00471C79    mov         eax,dword ptr [ebp-50]
 00471C7C    shl         eax,4
 00471C7F    mov         edx,dword ptr [ebp-34]
 00471C82    mov         edx,dword ptr [edx+24]
 00471C85    mov         edx,dword ptr [edx+eax]
 00471C88    mov         eax,dword ptr [ebp-34]
 00471C8B    call        00473858
 00471C90    mov         dword ptr [ebp-54],eax
 00471C93    mov         ecx,dword ptr [ebp-54]
 00471C96    add         ecx,4
 00471C99    push        ecx
 00471C9A    push        dword ptr [ebp-38]
 00471C9D    call        0066FCB4
 00471CA2    add         esp,8
 00471CA5    mov         dword ptr [ebp-58],eax
 00471CA8    mov         eax,dword ptr [ebp-58]
 00471CAB    test        eax,eax
>00471CAD    jne         00471CBF
 00471CAF    inc         dword ptr [ebp-60]
 00471CB2    mov         edx,dword ptr [ebp-60]
 00471CB5    mov         ecx,dword ptr [ebp-34]
 00471CB8    mov         eax,dword ptr [ecx+59]
 00471CBB    cmp         edx,eax
>00471CBD    jl          00471C56
 00471CBF    mov         edx,dword ptr [ebp-60]
 00471CC2    mov         ecx,dword ptr [ebp-5C]
 00471CC5    sub         edx,ecx
 00471CC7    dec         edx
 00471CC8    dec         edx
>00471CC9    jne         00471EDE
 00471CCF    mov         eax,dword ptr [ebp-4C]
 00471CD2    shl         eax,4
 00471CD5    mov         edx,dword ptr [ebp-34]
 00471CD8    mov         ecx,dword ptr [edx+24]
 00471CDB    mov         eax,dword ptr [ecx+eax+0C]
 00471CDF    mov         dword ptr [ebp-50],eax
 00471CE2    mov         edx,dword ptr [ebp+8]
 00471CE5    mov         ecx,dword ptr [ebp-50]
 00471CE8    mov         dword ptr [edx],ecx
 00471CEA    mov         eax,dword ptr [ebp-50]
 00471CED    shl         eax,4
 00471CF0    mov         edx,dword ptr [ebp-34]
 00471CF3    mov         ecx,dword ptr [edx+24]
 00471CF6    mov         ecx,dword ptr [ecx+eax+4]
 00471CFA    mov         eax,dword ptr [ebp-50]
 00471CFD    shl         eax,4
 00471D00    mov         edx,dword ptr [ebp-34]
 00471D03    mov         edx,dword ptr [edx+24]
 00471D06    mov         edx,dword ptr [edx+eax]
 00471D09    mov         eax,dword ptr [ebp-34]
 00471D0C    call        00473858
 00471D11    mov         dword ptr [ebp-54],eax
 00471D14    mov         ecx,dword ptr [ebp+0C]
 00471D17    mov         eax,dword ptr [ebp-54]
 00471D1A    mov         dx,word ptr [eax]
 00471D1D    mov         word ptr [ecx],dx
 00471D20    add         dword ptr [ebp-54],2
 00471D24    mov         ecx,dword ptr [ebp-54]
 00471D27    mov         ax,word ptr [ecx]
 00471D2A    mov         word ptr [ebp-62],ax
 00471D2E    add         dword ptr [ebp-54],2
 00471D32    mov         word ptr [ebp-20],8
 00471D38    lea         eax,[ebp-4]
 00471D3B    mov         edx,dword ptr [ebp-54]
 00471D3E    call        0067DAB4
 00471D43    mov         edx,eax
 00471D45    inc         dword ptr [ebp-14]
 00471D48    mov         eax,dword ptr [ebp+0C]
 00471D4B    add         eax,2
 00471D4E    call        0067DCD0
 00471D53    dec         dword ptr [ebp-14]
 00471D56    lea         eax,[ebp-4]
 00471D59    mov         edx,2
 00471D5E    call        0067DCA0
 00471D63    movzx       ecx,word ptr [ebp-62]
 00471D67    inc         ecx
 00471D68    add         dword ptr [ebp-54],ecx
 00471D6B    mov         eax,dword ptr [ebp-54]
 00471D6E    mov         dl,byte ptr [eax]
 00471D70    test        dl,dl
 00471D72    setne       cl
 00471D75    and         ecx,1
 00471D78    mov         eax,dword ptr [ebp+0C]
 00471D7B    mov         byte ptr [eax+6],cl
 00471D7E    inc         dword ptr [ebp-54]
 00471D81    mov         edx,dword ptr [ebp+0C]
 00471D84    mov         ecx,dword ptr [ebp-54]
 00471D87    mov         al,byte ptr [ecx]
 00471D89    mov         byte ptr [edx+7],al
 00471D8C    inc         dword ptr [ebp-54]
 00471D8F    mov         edx,dword ptr [ebp+0C]
 00471D92    mov         ecx,dword ptr [ebp-54]
 00471D95    mov         al,byte ptr [ecx]
 00471D97    mov         byte ptr [edx+8],al
 00471D9A    inc         dword ptr [ebp-54]
 00471D9D    mov         edx,dword ptr [ebp+0C]
 00471DA0    mov         ecx,dword ptr [ebp-54]
 00471DA3    mov         al,byte ptr [ecx]
 00471DA5    mov         byte ptr [edx+9],al
 00471DA8    inc         dword ptr [ebp-54]
 00471DAB    mov         edx,dword ptr [ebp+0C]
 00471DAE    mov         ecx,dword ptr [ebp-54]
 00471DB1    mov         eax,dword ptr [ecx]
 00471DB3    mov         dword ptr [edx+0A],eax
 00471DB6    add         dword ptr [ebp-54],4
 00471DBA    mov         edx,dword ptr [ebp-54]
 00471DBD    mov         cx,word ptr [edx]
 00471DC0    mov         word ptr [ebp-62],cx
 00471DC4    add         dword ptr [ebp-54],2
 00471DC8    mov         word ptr [ebp-20],14
 00471DCE    lea         eax,[ebp-0C]
 00471DD1    call        00401EA8
 00471DD6    push        eax
 00471DD7    inc         dword ptr [ebp-14]
 00471DDA    lea         eax,[ebp-8]
 00471DDD    mov         edx,dword ptr [ebp-54]
 00471DE0    call        0067DAB4
 00471DE5    inc         dword ptr [ebp-14]
 00471DE8    pop         edx
 00471DE9    call        00531D20
 00471DEE    lea         edx,[ebp-0C]
 00471DF1    mov         eax,dword ptr [ebp+0C]
 00471DF4    add         eax,0E
 00471DF7    call        0067DCD0
 00471DFC    dec         dword ptr [ebp-14]
 00471DFF    lea         eax,[ebp-0C]
 00471E02    mov         edx,2
 00471E07    call        0067DCA0
 00471E0C    dec         dword ptr [ebp-14]
 00471E0F    lea         eax,[ebp-8]
 00471E12    mov         edx,2
 00471E17    call        0067DCA0
 00471E1C    movzx       ecx,word ptr [ebp-62]
 00471E20    inc         ecx
 00471E21    add         dword ptr [ebp-54],ecx
 00471E24    mov         eax,dword ptr [ebp-54]
 00471E27    mov         edx,dword ptr [eax]
 00471E29    mov         dword ptr [ebp-68],edx
 00471E2C    add         dword ptr [ebp-54],4
 00471E30    mov         ecx,dword ptr [ebp-54]
 00471E33    mov         dword ptr [ebp-6C],ecx
 00471E36    mov         eax,dword ptr [ebp+0C]
 00471E39    mov         edx,dword ptr [ebp-54]
 00471E3C    mov         ecx,dword ptr [edx]
 00471E3E    mov         dword ptr [eax+12],ecx
 00471E41    add         dword ptr [ebp-54],4
 00471E45    mov         eax,dword ptr [ebp+0C]
 00471E48    mov         edx,dword ptr [ebp-54]
 00471E4B    mov         ecx,dword ptr [edx]
 00471E4D    mov         dword ptr [eax+16],ecx
 00471E50    add         dword ptr [ebp-54],4
 00471E54    mov         eax,dword ptr [ebp+0C]
 00471E57    xor         edx,edx
 00471E59    mov         dword ptr [eax+1A],edx
 00471E5C    test        byte ptr [ebp-3C],1
>00471E60    je          00471E75
 00471E62    mov         ecx,dword ptr [ebp+0C]
 00471E65    mov         eax,dword ptr [ecx+12]
 00471E68    test        eax,eax
>00471E6A    je          00471E75
 00471E6C    mov         edx,dword ptr [ebp+0C]
 00471E6F    mov         ecx,dword ptr [ebp-54]
 00471E72    mov         dword ptr [edx+1A],ecx
 00471E75    mov         eax,dword ptr [ebp-6C]
 00471E78    mov         edx,dword ptr [ebp-68]
 00471E7B    add         eax,edx
 00471E7D    mov         dword ptr [ebp-54],eax
 00471E80    mov         ecx,dword ptr [ebp-54]
 00471E83    mov         eax,dword ptr [ecx]
 00471E85    mov         dword ptr [ebp-70],eax
 00471E88    add         dword ptr [ebp-54],4
 00471E8C    mov         edx,dword ptr [ebp-54]
 00471E8F    mov         dword ptr [ebp-6C],edx
 00471E92    mov         ecx,dword ptr [ebp+0C]
 00471E95    mov         eax,dword ptr [ebp-54]
 00471E98    mov         dx,word ptr [eax]
 00471E9B    mov         word ptr [ecx+1E],dx
 00471E9F    add         dword ptr [ebp-54],2
 00471EA3    mov         ecx,dword ptr [ebp+0C]
 00471EA6    xor         eax,eax
 00471EA8    mov         dword ptr [ecx+20],eax
 00471EAB    test        byte ptr [ebp-3C],2
>00471EAF    je          00471EC4
 00471EB1    mov         edx,dword ptr [ebp+0C]
 00471EB4    cmp         word ptr [edx+1E],0
>00471EB9    je          00471EC4
 00471EBB    mov         ecx,dword ptr [ebp+0C]
 00471EBE    mov         eax,dword ptr [ebp-54]
 00471EC1    mov         dword ptr [ecx+20],eax
 00471EC4    mov         edx,dword ptr [ebp-6C]
 00471EC7    mov         ecx,dword ptr [ebp-70]
 00471ECA    add         edx,ecx
 00471ECC    mov         dword ptr [ebp-54],edx
 00471ECF    mov         eax,dword ptr [ebp+0C]
 00471ED2    mov         edx,dword ptr [ebp-30]
 00471ED5    mov         dword ptr fs:[0],edx
>00471EDC    jmp         00471F0E
 00471EDE    or          eax,0FFFFFFFF
 00471EE1    mov         edx,dword ptr [ebp-30]
 00471EE4    mov         dword ptr fs:[0],edx
>00471EEB    jmp         00471F0E
 00471EED    mov         ecx,dword ptr [ebp-44]
 00471EF0    mov         eax,dword ptr [ebp-48]
 00471EF3    cmp         ecx,eax
>00471EF5    jle         00471B52
 00471EFB    xor         eax,eax
 00471EFD    mov         edx,dword ptr [ebp-30]
 00471F00    mov         dword ptr fs:[0],edx
>00471F07    jmp         00471F0E
>00471F09    jmp         00471B52
 00471F0E    mov         esp,ebp
 00471F10    pop         ebp
 00471F11    ret         8
end;*}

//00471F14
{*function sub_00471F14(?:?; ?:dword; ?:?; ?:?):?;
begin
 00471F14    push        ebp
 00471F15    mov         ebp,esp
 00471F17    add         esp,0FFFFFFB0
 00471F1A    mov         dword ptr [ebp-3C],ecx
 00471F1D    mov         dword ptr [ebp-38],edx
 00471F20    mov         dword ptr [ebp-34],eax
 00471F23    mov         eax,6B1DE0
 00471F28    call        0066FECC
 00471F2D    mov         edx,dword ptr [ebp-34]
 00471F30    mov         cl,byte ptr [edx+28]
 00471F33    test        cl,cl
>00471F35    jne         00471F48
 00471F37    xor         eax,eax
 00471F39    mov         edx,dword ptr [ebp-30]
 00471F3C    mov         dword ptr fs:[0],edx
>00471F43    jmp         00472151
 00471F48    mov         ecx,dword ptr [ebp-38]
 00471F4B    inc         ecx
>00471F4C    jne         00471F5F
 00471F4E    xor         eax,eax
 00471F50    mov         edx,dword ptr [ebp-30]
 00471F53    mov         dword ptr fs:[0],edx
>00471F5A    jmp         00472151
 00471F5F    mov         ecx,dword ptr [ebp-38]
 00471F62    shl         ecx,4
 00471F65    mov         eax,dword ptr [ebp-34]
 00471F68    mov         edx,dword ptr [eax+24]
 00471F6B    mov         ecx,dword ptr [edx+ecx+4]
 00471F6F    mov         eax,dword ptr [ebp-38]
 00471F72    shl         eax,4
 00471F75    mov         edx,dword ptr [ebp-34]
 00471F78    mov         edx,dword ptr [edx+24]
 00471F7B    mov         edx,dword ptr [edx+eax]
 00471F7E    mov         eax,dword ptr [ebp-34]
 00471F81    call        00473858
 00471F86    mov         dword ptr [ebp-40],eax
 00471F89    mov         ecx,dword ptr [ebp-40]
 00471F8C    mov         ax,word ptr [ecx]
 00471F8F    mov         edx,dword ptr [ebp+8]
 00471F92    mov         word ptr [edx],ax
 00471F95    add         dword ptr [ebp-40],2
 00471F99    mov         ecx,dword ptr [ebp-40]
 00471F9C    mov         ax,word ptr [ecx]
 00471F9F    mov         word ptr [ebp-42],ax
 00471FA3    add         dword ptr [ebp-40],2
 00471FA7    mov         word ptr [ebp-20],8
 00471FAD    lea         eax,[ebp-4]
 00471FB0    mov         edx,dword ptr [ebp-40]
 00471FB3    call        0067DAB4
 00471FB8    mov         edx,eax
 00471FBA    inc         dword ptr [ebp-14]
 00471FBD    mov         eax,dword ptr [ebp+8]
 00471FC0    add         eax,2
 00471FC3    call        0067DCD0
 00471FC8    dec         dword ptr [ebp-14]
 00471FCB    lea         eax,[ebp-4]
 00471FCE    mov         edx,2
 00471FD3    call        0067DCA0
 00471FD8    movzx       ecx,word ptr [ebp-42]
 00471FDC    inc         ecx
 00471FDD    add         dword ptr [ebp-40],ecx
 00471FE0    mov         eax,dword ptr [ebp-40]
 00471FE3    mov         dl,byte ptr [eax]
 00471FE5    test        dl,dl
 00471FE7    setne       cl
 00471FEA    and         ecx,1
 00471FED    mov         eax,dword ptr [ebp+8]
 00471FF0    mov         byte ptr [eax+6],cl
 00471FF3    inc         dword ptr [ebp-40]
 00471FF6    mov         edx,dword ptr [ebp-40]
 00471FF9    mov         cl,byte ptr [edx]
 00471FFB    mov         eax,dword ptr [ebp+8]
 00471FFE    mov         byte ptr [eax+7],cl
 00472001    inc         dword ptr [ebp-40]
 00472004    mov         edx,dword ptr [ebp-40]
 00472007    mov         cl,byte ptr [edx]
 00472009    mov         eax,dword ptr [ebp+8]
 0047200C    mov         byte ptr [eax+8],cl
 0047200F    inc         dword ptr [ebp-40]
 00472012    mov         edx,dword ptr [ebp-40]
 00472015    mov         cl,byte ptr [edx]
 00472017    mov         eax,dword ptr [ebp+8]
 0047201A    mov         byte ptr [eax+9],cl
 0047201D    inc         dword ptr [ebp-40]
 00472020    mov         edx,dword ptr [ebp-40]
 00472023    mov         ecx,dword ptr [edx]
 00472025    mov         eax,dword ptr [ebp+8]
 00472028    mov         dword ptr [eax+0A],ecx
 0047202B    add         dword ptr [ebp-40],4
 0047202F    mov         edx,dword ptr [ebp-40]
 00472032    mov         cx,word ptr [edx]
 00472035    mov         word ptr [ebp-42],cx
 00472039    add         dword ptr [ebp-40],2
 0047203D    mov         word ptr [ebp-20],14
 00472043    lea         eax,[ebp-0C]
 00472046    call        00401EA8
 0047204B    push        eax
 0047204C    inc         dword ptr [ebp-14]
 0047204F    lea         eax,[ebp-8]
 00472052    mov         edx,dword ptr [ebp-40]
 00472055    call        0067DAB4
 0047205A    inc         dword ptr [ebp-14]
 0047205D    pop         edx
 0047205E    call        00531D20
 00472063    lea         edx,[ebp-0C]
 00472066    mov         eax,dword ptr [ebp+8]
 00472069    add         eax,0E
 0047206C    call        0067DCD0
 00472071    dec         dword ptr [ebp-14]
 00472074    lea         eax,[ebp-0C]
 00472077    mov         edx,2
 0047207C    call        0067DCA0
 00472081    dec         dword ptr [ebp-14]
 00472084    lea         eax,[ebp-8]
 00472087    mov         edx,2
 0047208C    call        0067DCA0
 00472091    movzx       ecx,word ptr [ebp-42]
 00472095    inc         ecx
 00472096    add         dword ptr [ebp-40],ecx
 00472099    mov         eax,dword ptr [ebp-40]
 0047209C    mov         edx,dword ptr [eax]
 0047209E    mov         dword ptr [ebp-48],edx
 004720A1    add         dword ptr [ebp-40],4
 004720A5    mov         ecx,dword ptr [ebp-40]
 004720A8    mov         dword ptr [ebp-4C],ecx
 004720AB    mov         eax,dword ptr [ebp-40]
 004720AE    mov         edx,dword ptr [eax]
 004720B0    mov         ecx,dword ptr [ebp+8]
 004720B3    mov         dword ptr [ecx+12],edx
 004720B6    add         dword ptr [ebp-40],4
 004720BA    mov         eax,dword ptr [ebp-40]
 004720BD    mov         edx,dword ptr [eax]
 004720BF    mov         ecx,dword ptr [ebp+8]
 004720C2    mov         dword ptr [ecx+16],edx
 004720C5    add         dword ptr [ebp-40],4
 004720C9    mov         eax,dword ptr [ebp+8]
 004720CC    xor         edx,edx
 004720CE    mov         dword ptr [eax+1A],edx
 004720D1    test        byte ptr [ebp-3C],1
>004720D5    je          004720EA
 004720D7    mov         ecx,dword ptr [ebp+8]
 004720DA    mov         eax,dword ptr [ecx+12]
 004720DD    test        eax,eax
>004720DF    je          004720EA
 004720E1    mov         edx,dword ptr [ebp-40]
 004720E4    mov         ecx,dword ptr [ebp+8]
 004720E7    mov         dword ptr [ecx+1A],edx
 004720EA    mov         eax,dword ptr [ebp-4C]
 004720ED    mov         edx,dword ptr [ebp-48]
 004720F0    add         eax,edx
 004720F2    mov         dword ptr [ebp-40],eax
 004720F5    mov         ecx,dword ptr [ebp-40]
 004720F8    mov         eax,dword ptr [ecx]
 004720FA    mov         dword ptr [ebp-50],eax
 004720FD    add         dword ptr [ebp-40],4
 00472101    mov         edx,dword ptr [ebp-40]
 00472104    mov         dword ptr [ebp-4C],edx
 00472107    mov         ecx,dword ptr [ebp-40]
 0047210A    mov         ax,word ptr [ecx]
 0047210D    mov         edx,dword ptr [ebp+8]
 00472110    mov         word ptr [edx+1E],ax
 00472114    add         dword ptr [ebp-40],2
 00472118    mov         ecx,dword ptr [ebp+8]
 0047211B    xor         eax,eax
 0047211D    mov         dword ptr [ecx+20],eax
 00472120    test        byte ptr [ebp-3C],2
>00472124    je          00472139
 00472126    mov         edx,dword ptr [ebp+8]
 00472129    cmp         word ptr [edx+1E],0
>0047212E    je          00472139
 00472130    mov         ecx,dword ptr [ebp-40]
 00472133    mov         eax,dword ptr [ebp+8]
 00472136    mov         dword ptr [eax+20],ecx
 00472139    mov         edx,dword ptr [ebp-4C]
 0047213C    mov         ecx,dword ptr [ebp-50]
 0047213F    add         edx,ecx
 00472141    mov         dword ptr [ebp-40],edx
 00472144    mov         eax,dword ptr [ebp+8]
 00472147    mov         edx,dword ptr [ebp-30]
 0047214A    mov         dword ptr fs:[0],edx
 00472151    mov         esp,ebp
 00472153    pop         ebp
 00472154    ret         4
end;*}

//00472158
{*function sub_00472158(?:?; ?:?; ?:?; ?:?):?;
begin
 00472158    push        ebp
 00472159    mov         ebp,esp
 0047215B    add         esp,0FFFFFFAC
 0047215E    mov         dword ptr [ebp-38],ecx
 00472161    mov         dword ptr [ebp-34],edx
 00472164    mov         dword ptr [ebp-30],eax
 00472167    mov         eax,6B1E20
 0047216C    call        0066FECC
 00472171    mov         edx,dword ptr [ebp-30]
 00472174    mov         cl,byte ptr [edx+28]
 00472177    test        cl,cl
>00472179    jne         0047218C
 0047217B    xor         eax,eax
 0047217D    mov         edx,dword ptr [ebp-2C]
 00472180    mov         dword ptr fs:[0],edx
>00472187    jmp         004723FF
 0047218C    mov         ecx,dword ptr [ebp-34]
 0047218F    inc         ecx
>00472190    jne         004721A3
 00472192    xor         eax,eax
 00472194    mov         edx,dword ptr [ebp-2C]
 00472197    mov         dword ptr fs:[0],edx
>0047219E    jmp         004723FF
 004721A3    mov         ecx,dword ptr [ebp-34]
 004721A6    shl         ecx,4
 004721A9    mov         eax,dword ptr [ebp-30]
 004721AC    mov         edx,dword ptr [eax+18]
 004721AF    mov         ecx,dword ptr [edx+ecx+4]
 004721B3    mov         eax,dword ptr [ebp-34]
 004721B6    shl         eax,4
 004721B9    mov         edx,dword ptr [ebp-30]
 004721BC    mov         edx,dword ptr [edx+18]
 004721BF    mov         edx,dword ptr [edx+eax]
 004721C2    mov         eax,dword ptr [ebp-30]
 004721C5    call        00473858
 004721CA    mov         dword ptr [ebp-3C],eax
 004721CD    mov         ecx,dword ptr [ebp-30]
 004721D0    mov         eax,dword ptr [ecx]
 004721D2    cmp         eax,1
>004721D5    jne         004721EE
 004721D7    mov         edx,dword ptr [ebp-34]
 004721DA    shl         edx,4
 004721DD    mov         ecx,dword ptr [ebp-30]
 004721E0    mov         eax,dword ptr [ecx+18]
 004721E3    mov         edx,dword ptr [eax+edx+4]
 004721E7    mov         ecx,dword ptr [ebp+8]
 004721EA    mov         dword ptr [ecx],edx
>004721EC    jmp         004721F8
 004721EE    mov         eax,dword ptr [ebp-3C]
 004721F1    mov         edx,dword ptr [eax]
 004721F3    mov         ecx,dword ptr [ebp+8]
 004721F6    mov         dword ptr [ecx],edx
 004721F8    add         dword ptr [ebp-3C],4
 004721FC    mov         eax,dword ptr [ebp-3C]
 004721FF    mov         dx,word ptr [eax]
 00472202    mov         ecx,dword ptr [ebp+8]
 00472205    mov         word ptr [ecx+4],dx
 00472209    add         dword ptr [ebp-3C],2
 0047220D    mov         eax,dword ptr [ebp-3C]
 00472210    mov         dx,word ptr [eax]
 00472213    mov         word ptr [ebp-3E],dx
 00472217    add         dword ptr [ebp-3C],2
 0047221B    mov         word ptr [ebp-1C],8
 00472221    lea         eax,[ebp-4]
 00472224    mov         edx,dword ptr [ebp-3C]
 00472227    call        0067DAB4
 0047222C    mov         edx,eax
 0047222E    inc         dword ptr [ebp-10]
 00472231    mov         eax,dword ptr [ebp+8]
 00472234    add         eax,6
 00472237    call        0067DCD0
 0047223C    dec         dword ptr [ebp-10]
 0047223F    lea         eax,[ebp-4]
 00472242    mov         edx,2
 00472247    call        0067DCA0
 0047224C    movzx       ecx,word ptr [ebp-3E]
 00472250    inc         ecx
 00472251    add         dword ptr [ebp-3C],ecx
 00472254    mov         eax,dword ptr [ebp-3C]
 00472257    mov         dl,byte ptr [eax]
 00472259    mov         ecx,dword ptr [ebp+8]
 0047225C    mov         byte ptr [ecx+0A],dl
 0047225F    inc         dword ptr [ebp-3C]
 00472262    mov         eax,dword ptr [ebp-3C]
 00472265    mov         dx,word ptr [eax]
 00472268    mov         ecx,dword ptr [ebp+8]
 0047226B    mov         word ptr [ecx+0B],dx
 0047226F    add         dword ptr [ebp-3C],2
 00472273    mov         eax,dword ptr [ebp-3C]
 00472276    mov         dx,word ptr [eax]
 00472279    mov         word ptr [ebp-3E],dx
 0047227D    add         dword ptr [ebp-3C],2
 00472281    mov         word ptr [ebp-1C],14
 00472287    lea         eax,[ebp-8]
 0047228A    mov         edx,dword ptr [ebp-3C]
 0047228D    call        0067DAB4
 00472292    mov         edx,eax
 00472294    inc         dword ptr [ebp-10]
 00472297    mov         eax,dword ptr [ebp+8]
 0047229A    add         eax,0D
 0047229D    call        0067DCD0
 004722A2    dec         dword ptr [ebp-10]
 004722A5    lea         eax,[ebp-8]
 004722A8    mov         edx,2
 004722AD    call        0067DCA0
 004722B2    movzx       ecx,word ptr [ebp-3E]
 004722B6    inc         ecx
 004722B7    add         dword ptr [ebp-3C],ecx
 004722BA    mov         eax,dword ptr [ebp-3C]
 004722BD    mov         edx,dword ptr [eax]
 004722BF    mov         dword ptr [ebp-44],edx
 004722C2    add         dword ptr [ebp-3C],4
 004722C6    mov         ecx,dword ptr [ebp-3C]
 004722C9    mov         dword ptr [ebp-48],ecx
 004722CC    mov         eax,dword ptr [ebp-3C]
 004722CF    mov         edx,dword ptr [eax]
 004722D1    mov         ecx,dword ptr [ebp+8]
 004722D4    mov         dword ptr [ecx+11],edx
 004722D7    add         dword ptr [ebp-3C],4
 004722DB    mov         eax,dword ptr [ebp-3C]
 004722DE    mov         edx,dword ptr [eax]
 004722E0    mov         ecx,dword ptr [ebp+8]
 004722E3    mov         dword ptr [ecx+15],edx
 004722E6    add         dword ptr [ebp-3C],4
 004722EA    mov         eax,dword ptr [ebp+8]
 004722ED    xor         edx,edx
 004722EF    mov         dword ptr [eax+19],edx
 004722F2    test        byte ptr [ebp-38],1
>004722F6    je          0047230B
 004722F8    mov         ecx,dword ptr [ebp+8]
 004722FB    mov         eax,dword ptr [ecx+11]
 004722FE    test        eax,eax
>00472300    je          0047230B
 00472302    mov         edx,dword ptr [ebp-3C]
 00472305    mov         ecx,dword ptr [ebp+8]
 00472308    mov         dword ptr [ecx+19],edx
 0047230B    mov         eax,dword ptr [ebp-48]
 0047230E    mov         edx,dword ptr [ebp-44]
 00472311    add         eax,edx
 00472313    mov         dword ptr [ebp-3C],eax
 00472316    mov         ecx,dword ptr [ebp-3C]
 00472319    mov         eax,dword ptr [ecx]
 0047231B    mov         dword ptr [ebp-4C],eax
 0047231E    add         dword ptr [ebp-3C],4
 00472322    mov         edx,dword ptr [ebp-3C]
 00472325    mov         dword ptr [ebp-48],edx
 00472328    mov         ecx,dword ptr [ebp-3C]
 0047232B    mov         ax,word ptr [ecx]
 0047232E    mov         edx,dword ptr [ebp+8]
 00472331    mov         word ptr [edx+1D],ax
 00472335    add         dword ptr [ebp-3C],2
 00472339    mov         ecx,dword ptr [ebp+8]
 0047233C    xor         eax,eax
 0047233E    mov         dword ptr [ecx+1F],eax
 00472341    test        byte ptr [ebp-38],8
>00472345    je          0047235A
 00472347    mov         edx,dword ptr [ebp+8]
 0047234A    cmp         word ptr [edx+1D],0
>0047234F    je          0047235A
 00472351    mov         ecx,dword ptr [ebp-3C]
 00472354    mov         eax,dword ptr [ebp+8]
 00472357    mov         dword ptr [eax+1F],ecx
 0047235A    mov         edx,dword ptr [ebp-48]
 0047235D    mov         ecx,dword ptr [ebp-4C]
 00472360    add         edx,ecx
 00472362    mov         dword ptr [ebp-3C],edx
 00472365    mov         eax,dword ptr [ebp-3C]
 00472368    mov         edx,dword ptr [eax]
 0047236A    mov         dword ptr [ebp-50],edx
 0047236D    add         dword ptr [ebp-3C],4
 00472371    mov         ecx,dword ptr [ebp-3C]
 00472374    mov         dword ptr [ebp-48],ecx
 00472377    mov         eax,dword ptr [ebp-3C]
 0047237A    mov         dx,word ptr [eax]
 0047237D    mov         ecx,dword ptr [ebp+8]
 00472380    mov         word ptr [ecx+23],dx
 00472384    add         dword ptr [ebp-3C],2
 00472388    mov         eax,dword ptr [ebp+8]
 0047238B    xor         edx,edx
 0047238D    mov         dword ptr [eax+25],edx
 00472390    test        byte ptr [ebp-38],10
>00472394    je          004723A9
 00472396    mov         ecx,dword ptr [ebp+8]
 00472399    cmp         word ptr [ecx+23],0
>0047239E    je          004723A9
 004723A0    mov         eax,dword ptr [ebp-3C]
 004723A3    mov         edx,dword ptr [ebp+8]
 004723A6    mov         dword ptr [edx+25],eax
 004723A9    mov         ecx,dword ptr [ebp-48]
 004723AC    mov         eax,dword ptr [ebp-50]
 004723AF    add         ecx,eax
 004723B1    mov         dword ptr [ebp-3C],ecx
 004723B4    mov         edx,dword ptr [ebp-3C]
 004723B7    mov         ecx,dword ptr [edx]
 004723B9    mov         dword ptr [ebp-54],ecx
 004723BC    add         dword ptr [ebp-3C],4
 004723C0    mov         eax,dword ptr [ebp-3C]
 004723C3    mov         dx,word ptr [eax]
 004723C6    mov         ecx,dword ptr [ebp+8]
 004723C9    mov         word ptr [ecx+29],dx
 004723CD    add         dword ptr [ebp-3C],2
 004723D1    mov         eax,dword ptr [ebp+8]
 004723D4    xor         edx,edx
 004723D6    mov         dword ptr [eax+2B],edx
 004723D9    test        byte ptr [ebp-38],20
>004723DD    je          004723F2
 004723DF    mov         ecx,dword ptr [ebp+8]
 004723E2    cmp         word ptr [ecx+29],0
>004723E7    je          004723F2
 004723E9    mov         eax,dword ptr [ebp-3C]
 004723EC    mov         edx,dword ptr [ebp+8]
 004723EF    mov         dword ptr [edx+2B],eax
 004723F2    mov         eax,dword ptr [ebp+8]
 004723F5    mov         edx,dword ptr [ebp-2C]
 004723F8    mov         dword ptr fs:[0],edx
 004723FF    mov         esp,ebp
 00472401    pop         ebp
 00472402    ret         4
end;*}

//00472408
{*function sub_00472408(?:?; ?:?; ?:?; ?:?):?;
begin
 00472408    push        ebp
 00472409    mov         ebp,esp
 0047240B    add         esp,0FFFFFFBC
 0047240E    mov         dword ptr [ebp-3C],ecx
 00472411    mov         dword ptr [ebp-38],edx
 00472414    mov         dword ptr [ebp-34],eax
 00472417    mov         eax,6B1E70
 0047241C    call        0066FECC
 00472421    mov         edx,dword ptr [ebp-34]
 00472424    mov         cl,byte ptr [edx+28]
 00472427    test        cl,cl
>00472429    jne         0047243C
 0047242B    xor         eax,eax
 0047242D    mov         edx,dword ptr [ebp-30]
 00472430    mov         dword ptr fs:[0],edx
>00472437    jmp         0047257B
 0047243C    mov         ecx,dword ptr [ebp-38]
 0047243F    inc         ecx
>00472440    jne         00472453
 00472442    xor         eax,eax
 00472444    mov         edx,dword ptr [ebp-30]
 00472447    mov         dword ptr fs:[0],edx
>0047244E    jmp         0047257B
 00472453    mov         ecx,dword ptr [ebp-38]
 00472456    shl         ecx,4
 00472459    mov         eax,dword ptr [ebp-34]
 0047245C    mov         edx,dword ptr [eax+1C]
 0047245F    mov         ecx,dword ptr [edx+ecx+4]
 00472463    mov         eax,dword ptr [ebp-38]
 00472466    shl         eax,4
 00472469    mov         edx,dword ptr [ebp-34]
 0047246C    mov         edx,dword ptr [edx+1C]
 0047246F    mov         edx,dword ptr [edx+eax]
 00472472    mov         eax,dword ptr [ebp-34]
 00472475    call        00473858
 0047247A    mov         dword ptr [ebp-40],eax
 0047247D    mov         ecx,dword ptr [ebp-40]
 00472480    mov         ax,word ptr [ecx]
 00472483    mov         edx,dword ptr [ebp+8]
 00472486    mov         word ptr [edx],ax
 00472489    add         dword ptr [ebp-40],2
 0047248D    mov         ecx,dword ptr [ebp-40]
 00472490    mov         ax,word ptr [ecx]
 00472493    mov         word ptr [ebp-42],ax
 00472497    add         dword ptr [ebp-40],2
 0047249B    mov         word ptr [ebp-20],8
 004724A1    lea         eax,[ebp-4]
 004724A4    mov         edx,dword ptr [ebp-40]
 004724A7    call        0067DAB4
 004724AC    mov         edx,eax
 004724AE    inc         dword ptr [ebp-14]
 004724B1    mov         eax,dword ptr [ebp+8]
 004724B4    add         eax,2
 004724B7    call        0067DCD0
 004724BC    dec         dword ptr [ebp-14]
 004724BF    lea         eax,[ebp-4]
 004724C2    mov         edx,2
 004724C7    call        0067DCA0
 004724CC    movzx       ecx,word ptr [ebp-42]
 004724D0    inc         ecx
 004724D1    add         dword ptr [ebp-40],ecx
 004724D4    mov         eax,dword ptr [ebp-40]
 004724D7    mov         dl,byte ptr [eax]
 004724D9    mov         ecx,dword ptr [ebp+8]
 004724DC    mov         byte ptr [ecx+6],dl
 004724DF    inc         dword ptr [ebp-40]
 004724E2    mov         eax,dword ptr [ebp-40]
 004724E5    mov         dx,word ptr [eax]
 004724E8    mov         word ptr [ebp-42],dx
 004724EC    add         dword ptr [ebp-40],2
 004724F0    mov         word ptr [ebp-20],14
 004724F6    lea         eax,[ebp-8]
 004724F9    mov         edx,dword ptr [ebp-40]
 004724FC    call        0067DAB4
 00472501    mov         edx,eax
 00472503    inc         dword ptr [ebp-14]
 00472506    mov         eax,dword ptr [ebp+8]
 00472509    add         eax,7
 0047250C    call        0067DCD0
 00472511    dec         dword ptr [ebp-14]
 00472514    lea         eax,[ebp-8]
 00472517    mov         edx,2
 0047251C    call        0067DCA0
 00472521    movzx       ecx,word ptr [ebp-42]
 00472525    inc         ecx
 00472526    add         dword ptr [ebp-40],ecx
 00472529    test        byte ptr [ebp-3C],40
>0047252D    je          0047256E
 0047252F    mov         eax,dword ptr [ebp-40]
 00472532    mov         dx,word ptr [eax]
 00472535    mov         word ptr [ebp-42],dx
 00472539    add         dword ptr [ebp-40],2
 0047253D    mov         word ptr [ebp-20],20
 00472543    lea         eax,[ebp-0C]
 00472546    mov         edx,dword ptr [ebp-40]
 00472549    call        0067DAB4
 0047254E    mov         edx,eax
 00472550    inc         dword ptr [ebp-14]
 00472553    mov         eax,dword ptr [ebp+8]
 00472556    add         eax,0B
 00472559    call        0067DCD0
 0047255E    dec         dword ptr [ebp-14]
 00472561    lea         eax,[ebp-0C]
 00472564    mov         edx,2
 00472569    call        0067DCA0
 0047256E    mov         eax,dword ptr [ebp+8]
 00472571    mov         edx,dword ptr [ebp-30]
 00472574    mov         dword ptr fs:[0],edx
 0047257B    mov         esp,ebp
 0047257D    pop         ebp
 0047257E    ret         4
end;*}

//00472584
{*function sub_00472584(?:?; ?:?; ?:?; ?:?):?;
begin
 00472584    push        ebp
 00472585    mov         ebp,esp
 00472587    add         esp,0FFFFFFC0
 0047258A    mov         dword ptr [ebp-38],ecx
 0047258D    mov         dword ptr [ebp-34],edx
 00472590    mov         dword ptr [ebp-30],eax
 00472593    mov         eax,6B1EBC
 00472598    call        0066FECC
 0047259D    mov         edx,dword ptr [ebp-30]
 004725A0    mov         cl,byte ptr [edx+28]
 004725A3    test        cl,cl
>004725A5    jne         004725B8
 004725A7    xor         eax,eax
 004725A9    mov         edx,dword ptr [ebp-2C]
 004725AC    mov         dword ptr fs:[0],edx
>004725B3    jmp         004726A8
 004725B8    mov         ecx,dword ptr [ebp-34]
 004725BB    inc         ecx
>004725BC    jne         004725CF
 004725BE    xor         eax,eax
 004725C0    mov         edx,dword ptr [ebp-2C]
 004725C3    mov         dword ptr fs:[0],edx
>004725CA    jmp         004726A8
 004725CF    mov         ecx,dword ptr [ebp-34]
 004725D2    shl         ecx,4
 004725D5    mov         eax,dword ptr [ebp-30]
 004725D8    mov         edx,dword ptr [eax+20]
 004725DB    mov         ecx,dword ptr [edx+ecx+4]
 004725DF    mov         eax,dword ptr [ebp-34]
 004725E2    shl         eax,4
 004725E5    mov         edx,dword ptr [ebp-30]
 004725E8    mov         edx,dword ptr [edx+20]
 004725EB    mov         edx,dword ptr [edx+eax]
 004725EE    mov         eax,dword ptr [ebp-30]
 004725F1    call        00473858
 004725F6    mov         dword ptr [ebp-3C],eax
 004725F9    mov         ecx,dword ptr [ebp+8]
 004725FC    mov         eax,dword ptr [ebp-3C]
 004725FF    mov         dx,word ptr [eax]
 00472602    mov         word ptr [ecx],dx
 00472605    add         dword ptr [ebp-3C],2
 00472609    mov         ecx,dword ptr [ebp-3C]
 0047260C    mov         ax,word ptr [ecx]
 0047260F    mov         word ptr [ebp-3E],ax
 00472613    add         dword ptr [ebp-3C],2
 00472617    mov         word ptr [ebp-1C],8
 0047261D    lea         eax,[ebp-4]
 00472620    mov         edx,dword ptr [ebp-3C]
 00472623    call        0067DAB4
 00472628    mov         edx,eax
 0047262A    inc         dword ptr [ebp-10]
 0047262D    mov         eax,dword ptr [ebp+8]
 00472630    add         eax,2
 00472633    call        0067DCD0
 00472638    dec         dword ptr [ebp-10]
 0047263B    lea         eax,[ebp-4]
 0047263E    mov         edx,2
 00472643    call        0067DCA0
 00472648    movzx       ecx,word ptr [ebp-3E]
 0047264C    inc         ecx
 0047264D    add         dword ptr [ebp-3C],ecx
 00472650    mov         eax,dword ptr [ebp-3C]
 00472653    mov         dx,word ptr [eax]
 00472656    mov         word ptr [ebp-3E],dx
 0047265A    add         dword ptr [ebp-3C],2
 0047265E    mov         word ptr [ebp-1C],14
 00472664    lea         eax,[ebp-8]
 00472667    mov         edx,dword ptr [ebp-3C]
 0047266A    call        0067DAB4
 0047266F    mov         edx,eax
 00472671    inc         dword ptr [ebp-10]
 00472674    mov         eax,dword ptr [ebp+8]
 00472677    add         eax,6
 0047267A    call        0067DCD0
 0047267F    dec         dword ptr [ebp-10]
 00472682    lea         eax,[ebp-8]
 00472685    mov         edx,2
 0047268A    call        0067DCA0
 0047268F    movzx       ecx,word ptr [ebp-3E]
 00472693    inc         ecx
 00472694    add         dword ptr [ebp-3C],ecx
 00472697    test        byte ptr [ebp-38],1
 0047269B    mov         eax,dword ptr [ebp+8]
 0047269E    mov         edx,dword ptr [ebp-2C]
 004726A1    mov         dword ptr fs:[0],edx
 004726A8    mov         esp,ebp
 004726AA    pop         ebp
 004726AB    ret         4
end;*}

//004726B0
{*function sub_004726B0(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004726B0    push        ebp
 004726B1    mov         ebp,esp
 004726B3    add         esp,0FFFFFFD0
 004726B6    mov         dword ptr [ebp-0C],ecx
 004726B9    mov         dword ptr [ebp-8],edx
 004726BC    mov         dword ptr [ebp-4],eax
 004726BF    mov         eax,dword ptr [ebp-4]
 004726C2    mov         dl,byte ptr [eax+28]
 004726C5    test        dl,dl
>004726C7    jne         004726D1
 004726C9    or          eax,0FFFFFFFF
>004726CC    jmp         00472884
 004726D1    mov         edx,dword ptr [ebp+8]
 004726D4    test        edx,edx
>004726D6    jne         004726E0
 004726D8    or          eax,0FFFFFFFF
>004726DB    jmp         00472884
 004726E0    mov         edx,dword ptr [ebp+8]
 004726E3    mov         ecx,dword ptr [edx+12]
 004726E6    mov         dword ptr [ebp-10],ecx
 004726E9    mov         eax,dword ptr [ebp-10]
 004726EC    test        eax,eax
>004726EE    je          004726FA
 004726F0    mov         edx,dword ptr [ebp-10]
 004726F3    mov         ecx,dword ptr [ebp+0C]
 004726F6    cmp         edx,ecx
>004726F8    jb          00472702
 004726FA    or          eax,0FFFFFFFF
>004726FD    jmp         00472884
 00472702    mov         edx,dword ptr [ebp+8]
 00472705    mov         ecx,dword ptr [edx+1A]
 00472708    mov         dword ptr [ebp-14],ecx
 0047270B    mov         eax,dword ptr [ebp-14]
 0047270E    mov         edx,dword ptr [ebp-10]
 00472711    add         eax,edx
 00472713    mov         dword ptr [ebp-18],eax
 00472716    xor         ecx,ecx
 00472718    mov         dword ptr [ebp-20],ecx
>0047271B    jmp         0047272E
 0047271D    mov         eax,dword ptr [ebp-18]
 00472720    mov         edx,dword ptr [ebp-20]
 00472723    mov         cl,byte ptr [eax+edx]
 00472726    cmp         cl,0FF
>00472729    jne         00472738
 0047272B    inc         dword ptr [ebp-20]
 0047272E    mov         eax,dword ptr [ebp-20]
 00472731    mov         edx,dword ptr [ebp-10]
 00472734    cmp         eax,edx
>00472736    jb          0047271D
 00472738    mov         ecx,dword ptr [ebp-20]
 0047273B    mov         dword ptr [ebp-24],ecx
>0047273E    jmp         00472869
 00472743    mov         eax,dword ptr [ebp-8]
 00472746    mov         edx,dword ptr [ebp-24]
 00472749    mov         cl,byte ptr [eax+edx]
 0047274C    mov         eax,dword ptr [ebp-14]
 0047274F    mov         edx,dword ptr [ebp-20]
 00472752    mov         al,byte ptr [eax+edx]
 00472755    cmp         cl,al
>00472757    jne         00472866
 0047275D    mov         edx,dword ptr [ebp-0C]
 00472760    mov         ecx,dword ptr [ebp-24]
 00472763    test        byte ptr [edx+ecx*4],1
>00472767    jne         00472866
 0047276D    mov         eax,dword ptr [ebp-0C]
 00472770    mov         edx,dword ptr [ebp-24]
 00472773    test        byte ptr [eax+edx*4],2
>00472777    jne         00472866
 0047277D    mov         byte ptr [ebp-25],1
 00472781    mov         ecx,dword ptr [ebp-20]
 00472784    mov         dword ptr [ebp-2C],ecx
>00472787    jmp         004727F2
 00472789    mov         eax,dword ptr [ebp-24]
 0047278C    mov         edx,dword ptr [ebp-20]
 0047278F    sub         eax,edx
 00472791    mov         ecx,dword ptr [ebp-2C]
 00472794    add         eax,ecx
 00472796    mov         edx,dword ptr [ebp-0C]
 00472799    test        byte ptr [edx+eax*4],1
>0047279D    jne         004727B5
 0047279F    mov         eax,dword ptr [ebp-24]
 004727A2    mov         ecx,dword ptr [ebp-20]
 004727A5    sub         eax,ecx
 004727A7    mov         edx,dword ptr [ebp-2C]
 004727AA    add         eax,edx
 004727AC    mov         ecx,dword ptr [ebp-0C]
 004727AF    test        byte ptr [ecx+eax*4],2
>004727B3    je          004727BB
 004727B5    mov         byte ptr [ebp-25],0
>004727B9    jmp         004727FC
 004727BB    mov         eax,dword ptr [ebp-24]
 004727BE    mov         edx,dword ptr [ebp-20]
 004727C1    sub         eax,edx
 004727C3    mov         ecx,dword ptr [ebp-8]
 004727C6    lea         eax,[ecx+eax]
 004727C9    mov         edx,dword ptr [ebp-2C]
 004727CC    mov         al,byte ptr [eax+edx]
 004727CF    mov         ecx,dword ptr [ebp-14]
 004727D2    mov         edx,dword ptr [ebp-2C]
 004727D5    mov         cl,byte ptr [ecx+edx]
 004727D8    cmp         al,cl
>004727DA    je          004727EF
 004727DC    mov         eax,dword ptr [ebp-18]
 004727DF    mov         edx,dword ptr [ebp-2C]
 004727E2    mov         al,byte ptr [eax+edx]
 004727E5    cmp         al,0FF
>004727E7    je          004727EF
 004727E9    mov         byte ptr [ebp-25],0
>004727ED    jmp         004727FC
 004727EF    inc         dword ptr [ebp-2C]
 004727F2    mov         ecx,dword ptr [ebp-2C]
 004727F5    mov         eax,dword ptr [ebp-10]
 004727F8    cmp         ecx,eax
>004727FA    jb          00472789
 004727FC    mov         dl,byte ptr [ebp-25]
 004727FF    test        dl,dl
>00472801    je          00472866
 00472803    mov         byte ptr [ebp-25],1
 00472807    xor         ecx,ecx
 00472809    mov         dword ptr [ebp-30],ecx
 0047280C    mov         eax,dword ptr [ebp-30]
 0047280F    mov         edx,dword ptr [ebp-20]
 00472812    cmp         eax,edx
>00472814    jge         00472855
 00472816    mov         ecx,dword ptr [ebp-24]
 00472819    mov         eax,dword ptr [ebp-20]
 0047281C    sub         ecx,eax
 0047281E    mov         edx,dword ptr [ebp-30]
 00472821    add         ecx,edx
 00472823    mov         eax,dword ptr [ebp-0C]
 00472826    test        byte ptr [eax+ecx*4],1
>0047282A    jne         00472842
 0047282C    mov         edx,dword ptr [ebp-24]
 0047282F    mov         ecx,dword ptr [ebp-20]
 00472832    sub         edx,ecx
 00472834    mov         eax,dword ptr [ebp-30]
 00472837    add         edx,eax
 00472839    mov         ecx,dword ptr [ebp-0C]
 0047283C    test        byte ptr [ecx+edx*4],2
>00472840    je          00472848
 00472842    mov         byte ptr [ebp-25],0
>00472846    jmp         00472855
 00472848    inc         dword ptr [ebp-30]
 0047284B    mov         edx,dword ptr [ebp-30]
 0047284E    mov         eax,dword ptr [ebp-20]
 00472851    cmp         edx,eax
>00472853    jl          00472816
 00472855    mov         dl,byte ptr [ebp-25]
 00472858    test        dl,dl
>0047285A    je          00472866
 0047285C    mov         eax,dword ptr [ebp-24]
 0047285F    mov         edx,dword ptr [ebp-20]
 00472862    sub         eax,edx
>00472864    jmp         00472884
 00472866    inc         dword ptr [ebp-24]
 00472869    mov         ecx,dword ptr [ebp+0C]
 0047286C    mov         eax,dword ptr [ebp-10]
 0047286F    sub         ecx,eax
 00472871    mov         edx,dword ptr [ebp-20]
 00472874    add         ecx,edx
 00472876    mov         eax,dword ptr [ebp-24]
 00472879    cmp         ecx,eax
>0047287B    ja          00472743
 00472881    or          eax,0FFFFFFFF
 00472884    mov         esp,ebp
 00472886    pop         ebp
 00472887    ret         8
end;*}

//0047288C
{*function sub_0047288C(?:?; ?:?):?;
begin
 0047288C    push        ebp
 0047288D    mov         ebp,esp
 0047288F    add         esp,0FFFFFFE0
 00472892    mov         word ptr [ebp-6],dx
 00472896    mov         dword ptr [ebp-4],eax
 00472899    mov         eax,dword ptr [ebp-4]
 0047289C    mov         dl,byte ptr [eax+28]
 0047289F    test        dl,dl
>004728A1    jne         004728AA
 004728A3    xor         eax,eax
>004728A5    jmp         00472995
 004728AA    cmp         word ptr [ebp-6],0FFFF
>004728B0    jne         004728B9
 004728B2    xor         eax,eax
>004728B4    jmp         00472995
 004728B9    movzx       edx,word ptr [ebp-6]
 004728BD    shl         edx,4
 004728C0    mov         ecx,dword ptr [ebp-4]
 004728C3    mov         eax,dword ptr [ecx+8]
 004728C6    mov         ecx,dword ptr [eax+edx+4]
 004728CA    movzx       edx,word ptr [ebp-6]
 004728CE    shl         edx,4
 004728D1    mov         eax,dword ptr [ebp-4]
 004728D4    mov         eax,dword ptr [eax+8]
 004728D7    mov         edx,dword ptr [eax+edx]
 004728DA    mov         eax,dword ptr [ebp-4]
 004728DD    call        00473858
 004728E2    mov         dword ptr [ebp-0C],eax
 004728E5    add         dword ptr [ebp-0C],2
 004728E9    mov         edx,dword ptr [ebp-0C]
 004728EC    mov         cx,word ptr [edx]
 004728EF    mov         word ptr [ebp-0E],cx
 004728F3    movzx       eax,word ptr [ebp-0E]
 004728F7    add         eax,3
 004728FA    add         dword ptr [ebp-0C],eax
 004728FD    mov         edx,dword ptr [ebp-0C]
 00472900    mov         cx,word ptr [edx]
 00472903    mov         word ptr [ebp-0E],cx
 00472907    movzx       eax,word ptr [ebp-0E]
 0047290B    add         eax,3
 0047290E    add         dword ptr [ebp-0C],eax
 00472911    mov         edx,dword ptr [ebp-0C]
 00472914    mov         cx,word ptr [edx]
 00472917    mov         word ptr [ebp-10],cx
 0047291B    movzx       eax,word ptr [ebp-10]
 0047291F    add         eax,2
 00472922    add         eax,eax
 00472924    push        eax
 00472925    call        0066EC88
 0047292A    pop         ecx
 0047292B    mov         dword ptr [ebp-14],eax
 0047292E    mov         edx,dword ptr [ebp-14]
 00472931    mov         cx,word ptr [ebp-6]
 00472935    mov         word ptr [edx],cx
 00472938    mov         dword ptr [ebp-18],1
 0047293F    cmp         word ptr [ebp-10],0
>00472944    je          00472986
 00472946    add         dword ptr [ebp-0C],2
 0047294A    xor         eax,eax
 0047294C    mov         dword ptr [ebp-1C],eax
>0047294F    jmp         0047297B
 00472951    mov         edx,dword ptr [ebp-0C]
 00472954    mov         cx,word ptr [edx]
 00472957    mov         word ptr [ebp-1E],cx
 0047295B    add         dword ptr [ebp-0C],2
 0047295F    cmp         word ptr [ebp-1E],0FFFF
>00472965    je          00472978
 00472967    mov         eax,dword ptr [ebp-14]
 0047296A    mov         edx,dword ptr [ebp-18]
 0047296D    mov         cx,word ptr [ebp-1E]
 00472971    mov         word ptr [eax+edx*2],cx
 00472975    inc         dword ptr [ebp-18]
 00472978    inc         dword ptr [ebp-1C]
 0047297B    movzx       eax,word ptr [ebp-10]
 0047297F    mov         edx,dword ptr [ebp-1C]
 00472982    cmp         eax,edx
>00472984    jg          00472951
 00472986    mov         ecx,dword ptr [ebp-14]
 00472989    mov         eax,dword ptr [ebp-18]
 0047298C    mov         word ptr [ecx+eax*2],0FFFF
 00472992    mov         eax,dword ptr [ebp-14]
 00472995    mov         esp,ebp
 00472997    pop         ebp
 00472998    ret
end;*}

//0047299C
{*function sub_0047299C(?:?; ?:?; ?:?):?;
begin
 0047299C    push        ebp
 0047299D    mov         ebp,esp
 0047299F    add         esp,0FFFFFFCC
 004729A2    mov         dword ptr [ebp-0C],ecx
 004729A5    mov         dword ptr [ebp-8],edx
 004729A8    mov         dword ptr [ebp-4],eax
 004729AB    mov         eax,dword ptr [ebp-4]
 004729AE    mov         dl,byte ptr [eax+28]
 004729B1    test        dl,dl
>004729B3    jne         004729BC
 004729B5    xor         eax,eax
>004729B7    jmp         00472C3B
 004729BC    xor         edx,edx
 004729BE    mov         dword ptr [ebp-10],edx
 004729C1    xor         ecx,ecx
 004729C3    mov         dword ptr [ebp-14],ecx
 004729C6    mov         eax,dword ptr [ebp-4]
 004729C9    mov         edx,dword ptr [eax+59]
 004729CC    dec         edx
 004729CD    mov         dword ptr [ebp-18],edx
 004729D0    mov         ecx,dword ptr [ebp-14]
 004729D3    mov         eax,dword ptr [ebp-18]
 004729D6    add         ecx,eax
 004729D8    sar         ecx,1
>004729DA    jns         004729DF
 004729DC    adc         ecx,0
 004729DF    mov         dword ptr [ebp-1C],ecx
 004729E2    mov         edx,dword ptr [ebp-1C]
 004729E5    shl         edx,4
 004729E8    mov         ecx,dword ptr [ebp-4]
 004729EB    mov         eax,dword ptr [ecx+24]
 004729EE    mov         edx,dword ptr [eax+edx+0C]
 004729F2    mov         dword ptr [ebp-20],edx
 004729F5    mov         ecx,dword ptr [ebp-20]
 004729F8    shl         ecx,4
 004729FB    mov         eax,dword ptr [ebp-4]
 004729FE    mov         edx,dword ptr [eax+24]
 00472A01    mov         ecx,dword ptr [edx+ecx+4]
 00472A05    mov         eax,dword ptr [ebp-20]
 00472A08    shl         eax,4
 00472A0B    mov         edx,dword ptr [ebp-4]
 00472A0E    mov         edx,dword ptr [edx+24]
 00472A11    mov         edx,dword ptr [edx+eax]
 00472A14    mov         eax,dword ptr [ebp-4]
 00472A17    call        00473858
 00472A1C    mov         dword ptr [ebp-24],eax
 00472A1F    mov         ecx,dword ptr [ebp-24]
 00472A22    add         ecx,4
 00472A25    push        ecx
 00472A26    push        dword ptr [ebp-8]
 00472A29    call        0066FCB4
 00472A2E    add         esp,8
 00472A31    mov         dword ptr [ebp-28],eax
 00472A34    mov         eax,dword ptr [ebp-28]
 00472A37    test        eax,eax
>00472A39    jge         00472A47
 00472A3B    mov         edx,dword ptr [ebp-1C]
 00472A3E    dec         edx
 00472A3F    mov         dword ptr [ebp-18],edx
>00472A42    jmp         00472C24
 00472A47    mov         ecx,dword ptr [ebp-28]
 00472A4A    test        ecx,ecx
>00472A4C    jle         00472A5A
 00472A4E    mov         eax,dword ptr [ebp-1C]
 00472A51    inc         eax
 00472A52    mov         dword ptr [ebp-14],eax
>00472A55    jmp         00472C24
 00472A5A    mov         edx,dword ptr [ebp-24]
 00472A5D    mov         cx,word ptr [edx]
 00472A60    mov         word ptr [ebp-2A],cx
 00472A64    cmp         word ptr [ebp-2A],0FFFF
>00472A6A    je          00472A7D
 00472A6C    mov         eax,dword ptr [ebp-0C]
 00472A6F    mov         edx,dword ptr [ebp-10]
 00472A72    mov         cx,word ptr [ebp-2A]
 00472A76    mov         word ptr [eax+edx*2],cx
 00472A7A    inc         dword ptr [ebp-10]
 00472A7D    mov         eax,dword ptr [ebp-1C]
 00472A80    dec         eax
 00472A81    mov         dword ptr [ebp-30],eax
 00472A84    mov         edx,dword ptr [ebp-30]
 00472A87    test        edx,edx
>00472A89    jl          00472B4E
 00472A8F    mov         ecx,dword ptr [ebp-30]
 00472A92    shl         ecx,4
 00472A95    mov         eax,dword ptr [ebp-4]
 00472A98    mov         edx,dword ptr [eax+24]
 00472A9B    mov         ecx,dword ptr [edx+ecx+0C]
 00472A9F    mov         dword ptr [ebp-20],ecx
 00472AA2    mov         eax,dword ptr [ebp-20]
 00472AA5    shl         eax,4
 00472AA8    mov         edx,dword ptr [ebp-4]
 00472AAB    mov         ecx,dword ptr [edx+24]
 00472AAE    mov         ecx,dword ptr [ecx+eax+4]
 00472AB2    mov         eax,dword ptr [ebp-20]
 00472AB5    shl         eax,4
 00472AB8    mov         edx,dword ptr [ebp-4]
 00472ABB    mov         edx,dword ptr [edx+24]
 00472ABE    mov         edx,dword ptr [edx+eax]
 00472AC1    mov         eax,dword ptr [ebp-4]
 00472AC4    call        00473858
 00472AC9    mov         dword ptr [ebp-24],eax
 00472ACC    mov         ecx,dword ptr [ebp-24]
 00472ACF    add         ecx,4
 00472AD2    push        ecx
 00472AD3    push        dword ptr [ebp-8]
 00472AD6    call        0066FCB4
 00472ADB    add         esp,8
 00472ADE    mov         dword ptr [ebp-28],eax
 00472AE1    mov         eax,dword ptr [ebp-28]
 00472AE4    test        eax,eax
>00472AE6    jne         00472B4E
 00472AE8    mov         edx,dword ptr [ebp-24]
 00472AEB    mov         cx,word ptr [edx]
 00472AEE    mov         word ptr [ebp-2A],cx
 00472AF2    cmp         word ptr [ebp-2A],0FFFF
>00472AF8    je          00472B40
 00472AFA    mov         eax,dword ptr [ebp-0C]
 00472AFD    mov         edx,dword ptr [ebp-10]
 00472B00    mov         cx,word ptr [eax+edx*2-2]
 00472B05    cmp         cx,word ptr [ebp-2A]
>00472B09    je          00472B40
 00472B0B    mov         eax,dword ptr [ebp-0C]
 00472B0E    mov         edx,dword ptr [ebp-10]
 00472B11    mov         cx,word ptr [ebp-2A]
 00472B15    mov         word ptr [eax+edx*2],cx
 00472B19    inc         dword ptr [ebp-10]
 00472B1C    mov         eax,dword ptr [ebp-10]
 00472B1F    mov         edx,dword ptr [ebp-4]
 00472B22    mov         ecx,dword ptr [edx+4]
 00472B25    cmp         eax,ecx
>00472B27    jl          00472B40
 00472B29    push        714
 00472B2E    push        6B15ED
 00472B33    push        6B15DB
 00472B38    call        00678AD8
 00472B3D    add         esp,0C
 00472B40    dec         dword ptr [ebp-30]
 00472B43    mov         eax,dword ptr [ebp-30]
 00472B46    test        eax,eax
>00472B48    jge         00472A8F
 00472B4E    mov         edx,dword ptr [ebp-1C]
 00472B51    inc         edx
 00472B52    mov         dword ptr [ebp-34],edx
>00472B55    jmp         00472C0E
 00472B5A    mov         ecx,dword ptr [ebp-34]
 00472B5D    shl         ecx,4
 00472B60    mov         eax,dword ptr [ebp-4]
 00472B63    mov         edx,dword ptr [eax+24]
 00472B66    mov         ecx,dword ptr [edx+ecx+0C]
 00472B6A    mov         dword ptr [ebp-20],ecx
 00472B6D    mov         eax,dword ptr [ebp-20]
 00472B70    shl         eax,4
 00472B73    mov         edx,dword ptr [ebp-4]
 00472B76    mov         ecx,dword ptr [edx+24]
 00472B79    mov         ecx,dword ptr [ecx+eax+4]
 00472B7D    mov         eax,dword ptr [ebp-20]
 00472B80    shl         eax,4
 00472B83    mov         edx,dword ptr [ebp-4]
 00472B86    mov         edx,dword ptr [edx+24]
 00472B89    mov         edx,dword ptr [edx+eax]
 00472B8C    mov         eax,dword ptr [ebp-4]
 00472B8F    call        00473858
 00472B94    mov         dword ptr [ebp-24],eax
 00472B97    mov         ecx,dword ptr [ebp-24]
 00472B9A    add         ecx,4
 00472B9D    push        ecx
 00472B9E    push        dword ptr [ebp-8]
 00472BA1    call        0066FCB4
 00472BA6    add         esp,8
 00472BA9    mov         dword ptr [ebp-28],eax
 00472BAC    mov         eax,dword ptr [ebp-28]
 00472BAF    test        eax,eax
>00472BB1    jne         00472C1F
 00472BB3    mov         edx,dword ptr [ebp-24]
 00472BB6    mov         cx,word ptr [edx]
 00472BB9    mov         word ptr [ebp-2A],cx
 00472BBD    cmp         word ptr [ebp-2A],0FFFF
>00472BC3    je          00472C0B
 00472BC5    mov         eax,dword ptr [ebp-0C]
 00472BC8    mov         edx,dword ptr [ebp-10]
 00472BCB    mov         cx,word ptr [eax+edx*2-2]
 00472BD0    cmp         cx,word ptr [ebp-2A]
>00472BD4    je          00472C0B
 00472BD6    mov         eax,dword ptr [ebp-0C]
 00472BD9    mov         edx,dword ptr [ebp-10]
 00472BDC    mov         cx,word ptr [ebp-2A]
 00472BE0    mov         word ptr [eax+edx*2],cx
 00472BE4    inc         dword ptr [ebp-10]
 00472BE7    mov         eax,dword ptr [ebp-10]
 00472BEA    mov         edx,dword ptr [ebp-4]
 00472BED    mov         ecx,dword ptr [edx+4]
 00472BF0    cmp         eax,ecx
>00472BF2    jl          00472C0B
 00472BF4    push        723
 00472BF9    push        6B161D
 00472BFE    push        6B160B
 00472C03    call        00678AD8
 00472C08    add         esp,0C
 00472C0B    inc         dword ptr [ebp-34]
 00472C0E    mov         eax,dword ptr [ebp-34]
 00472C11    mov         edx,dword ptr [ebp-4]
 00472C14    mov         ecx,dword ptr [edx+59]
 00472C17    cmp         eax,ecx
>00472C19    jl          00472B5A
 00472C1F    mov         eax,dword ptr [ebp-10]
>00472C22    jmp         00472C3B
 00472C24    mov         edx,dword ptr [ebp-14]
 00472C27    mov         ecx,dword ptr [ebp-18]
 00472C2A    cmp         edx,ecx
>00472C2C    jle         004729D0
 00472C32    xor         eax,eax
>00472C34    jmp         00472C3B
>00472C36    jmp         004729D0
 00472C3B    mov         esp,ebp
 00472C3D    pop         ebp
 00472C3E    ret
end;*}

//00472C40
{*function sub_00472C40(?:?; ?:?):?;
begin
 00472C40    push        ebp
 00472C41    mov         ebp,esp
 00472C43    add         esp,0FFFFFFCC
 00472C46    mov         dword ptr [ebp-8],edx
 00472C49    mov         dword ptr [ebp-4],eax
 00472C4C    mov         eax,dword ptr [ebp-4]
 00472C4F    mov         dl,byte ptr [eax+28]
 00472C52    test        dl,dl
>00472C54    jne         00472C5D
 00472C56    xor         eax,eax
>00472C58    jmp         00472F2A
 00472C5D    xor         edx,edx
 00472C5F    mov         dword ptr [ebp-0C],edx
 00472C62    xor         ecx,ecx
 00472C64    mov         dword ptr [ebp-10],ecx
 00472C67    xor         eax,eax
 00472C69    mov         dword ptr [ebp-14],eax
 00472C6C    mov         edx,dword ptr [ebp-4]
 00472C6F    mov         ecx,dword ptr [edx+3D]
 00472C72    dec         ecx
 00472C73    mov         dword ptr [ebp-18],ecx
 00472C76    mov         eax,dword ptr [ebp-14]
 00472C79    mov         edx,dword ptr [ebp-18]
 00472C7C    add         eax,edx
 00472C7E    sar         eax,1
>00472C80    jns         00472C85
 00472C82    adc         eax,0
 00472C85    mov         dword ptr [ebp-1C],eax
 00472C88    mov         ecx,dword ptr [ebp-1C]
 00472C8B    shl         ecx,4
 00472C8E    mov         eax,dword ptr [ebp-4]
 00472C91    mov         edx,dword ptr [eax+18]
 00472C94    mov         ecx,dword ptr [edx+ecx+0C]
 00472C98    mov         dword ptr [ebp-20],ecx
 00472C9B    mov         eax,dword ptr [ebp-20]
 00472C9E    shl         eax,4
 00472CA1    mov         edx,dword ptr [ebp-4]
 00472CA4    mov         ecx,dword ptr [edx+18]
 00472CA7    mov         ecx,dword ptr [ecx+eax+4]
 00472CAB    mov         eax,dword ptr [ebp-20]
 00472CAE    shl         eax,4
 00472CB1    mov         edx,dword ptr [ebp-4]
 00472CB4    mov         edx,dword ptr [edx+18]
 00472CB7    mov         edx,dword ptr [edx+eax]
 00472CBA    mov         eax,dword ptr [ebp-4]
 00472CBD    call        00473858
 00472CC2    mov         dword ptr [ebp-24],eax
 00472CC5    mov         ecx,dword ptr [ebp-4]
 00472CC8    mov         eax,dword ptr [ecx]
 00472CCA    cmp         eax,2
>00472CCD    jb          00472CD3
 00472CCF    add         dword ptr [ebp-24],4
 00472CD3    mov         edx,dword ptr [ebp-24]
 00472CD6    add         edx,4
 00472CD9    push        edx
 00472CDA    push        dword ptr [ebp-8]
 00472CDD    call        0066FCB4
 00472CE2    add         esp,8
 00472CE5    mov         dword ptr [ebp-28],eax
 00472CE8    mov         ecx,dword ptr [ebp-28]
 00472CEB    test        ecx,ecx
>00472CED    jge         00472CFB
 00472CEF    mov         eax,dword ptr [ebp-1C]
 00472CF2    dec         eax
 00472CF3    mov         dword ptr [ebp-18],eax
>00472CF6    jmp         00472F13
 00472CFB    mov         edx,dword ptr [ebp-28]
 00472CFE    test        edx,edx
>00472D00    jle         00472D0E
 00472D02    mov         ecx,dword ptr [ebp-1C]
 00472D05    inc         ecx
 00472D06    mov         dword ptr [ebp-14],ecx
>00472D09    jmp         00472F13
 00472D0E    mov         eax,dword ptr [ebp-4]
 00472D11    mov         edx,dword ptr [eax+4]
 00472D14    inc         edx
 00472D15    add         edx,edx
 00472D17    push        edx
 00472D18    call        0066EC88
 00472D1D    pop         ecx
 00472D1E    mov         dword ptr [ebp-10],eax
 00472D21    mov         ecx,dword ptr [ebp-24]
 00472D24    mov         ax,word ptr [ecx]
 00472D27    mov         word ptr [ebp-2A],ax
 00472D2B    cmp         word ptr [ebp-2A],0FFFF
>00472D31    je          00472D44
 00472D33    mov         edx,dword ptr [ebp-10]
 00472D36    mov         ecx,dword ptr [ebp-0C]
 00472D39    mov         ax,word ptr [ebp-2A]
 00472D3D    mov         word ptr [edx+ecx*2],ax
 00472D41    inc         dword ptr [ebp-0C]
 00472D44    mov         edx,dword ptr [ebp-1C]
 00472D47    dec         edx
 00472D48    mov         dword ptr [ebp-30],edx
 00472D4B    mov         ecx,dword ptr [ebp-30]
 00472D4E    test        ecx,ecx
>00472D50    jl          00472E23
 00472D56    mov         eax,dword ptr [ebp-30]
 00472D59    shl         eax,4
 00472D5C    mov         edx,dword ptr [ebp-4]
 00472D5F    mov         ecx,dword ptr [edx+18]
 00472D62    mov         eax,dword ptr [ecx+eax+0C]
 00472D66    mov         dword ptr [ebp-20],eax
 00472D69    mov         edx,dword ptr [ebp-20]
 00472D6C    shl         edx,4
 00472D6F    mov         ecx,dword ptr [ebp-4]
 00472D72    mov         eax,dword ptr [ecx+18]
 00472D75    mov         ecx,dword ptr [eax+edx+4]
 00472D79    mov         edx,dword ptr [ebp-20]
 00472D7C    shl         edx,4
 00472D7F    mov         eax,dword ptr [ebp-4]
 00472D82    mov         eax,dword ptr [eax+18]
 00472D85    mov         edx,dword ptr [eax+edx]
 00472D88    mov         eax,dword ptr [ebp-4]
 00472D8B    call        00473858
 00472D90    mov         dword ptr [ebp-24],eax
 00472D93    mov         edx,dword ptr [ebp-4]
 00472D96    mov         ecx,dword ptr [edx]
 00472D98    cmp         ecx,2
>00472D9B    jb          00472DA1
 00472D9D    add         dword ptr [ebp-24],4
 00472DA1    mov         eax,dword ptr [ebp-24]
 00472DA4    add         eax,4
 00472DA7    push        eax
 00472DA8    push        dword ptr [ebp-8]
 00472DAB    call        0066FCB4
 00472DB0    add         esp,8
 00472DB3    mov         dword ptr [ebp-28],eax
 00472DB6    mov         edx,dword ptr [ebp-28]
 00472DB9    test        edx,edx
>00472DBB    jne         00472E23
 00472DBD    mov         ecx,dword ptr [ebp-24]
 00472DC0    mov         ax,word ptr [ecx]
 00472DC3    mov         word ptr [ebp-2A],ax
 00472DC7    cmp         word ptr [ebp-2A],0FFFF
>00472DCD    je          00472E15
 00472DCF    mov         edx,dword ptr [ebp-10]
 00472DD2    mov         ecx,dword ptr [ebp-0C]
 00472DD5    mov         ax,word ptr [edx+ecx*2-2]
 00472DDA    cmp         ax,word ptr [ebp-2A]
>00472DDE    je          00472E15
 00472DE0    mov         edx,dword ptr [ebp-10]
 00472DE3    mov         ecx,dword ptr [ebp-0C]
 00472DE6    mov         ax,word ptr [ebp-2A]
 00472DEA    mov         word ptr [edx+ecx*2],ax
 00472DEE    inc         dword ptr [ebp-0C]
 00472DF1    mov         edx,dword ptr [ebp-0C]
 00472DF4    mov         ecx,dword ptr [ebp-4]
 00472DF7    mov         eax,dword ptr [ecx+4]
 00472DFA    cmp         edx,eax
>00472DFC    jl          00472E15
 00472DFE    push        756
 00472E03    push        6B164D
 00472E08    push        6B163B
 00472E0D    call        00678AD8
 00472E12    add         esp,0C
 00472E15    dec         dword ptr [ebp-30]
 00472E18    mov         edx,dword ptr [ebp-30]
 00472E1B    test        edx,edx
>00472E1D    jge         00472D56
 00472E23    mov         ecx,dword ptr [ebp-1C]
 00472E26    inc         ecx
 00472E27    mov         dword ptr [ebp-34],ecx
>00472E2A    jmp         00472EF1
 00472E2F    mov         eax,dword ptr [ebp-34]
 00472E32    shl         eax,4
 00472E35    mov         edx,dword ptr [ebp-4]
 00472E38    mov         ecx,dword ptr [edx+18]
 00472E3B    mov         eax,dword ptr [ecx+eax+0C]
 00472E3F    mov         dword ptr [ebp-20],eax
 00472E42    mov         edx,dword ptr [ebp-20]
 00472E45    shl         edx,4
 00472E48    mov         ecx,dword ptr [ebp-4]
 00472E4B    mov         eax,dword ptr [ecx+18]
 00472E4E    mov         ecx,dword ptr [eax+edx+4]
 00472E52    mov         edx,dword ptr [ebp-20]
 00472E55    shl         edx,4
 00472E58    mov         eax,dword ptr [ebp-4]
 00472E5B    mov         eax,dword ptr [eax+18]
 00472E5E    mov         edx,dword ptr [eax+edx]
 00472E61    mov         eax,dword ptr [ebp-4]
 00472E64    call        00473858
 00472E69    mov         dword ptr [ebp-24],eax
 00472E6C    mov         edx,dword ptr [ebp-4]
 00472E6F    mov         ecx,dword ptr [edx]
 00472E71    cmp         ecx,2
>00472E74    jb          00472E7A
 00472E76    add         dword ptr [ebp-24],4
 00472E7A    mov         eax,dword ptr [ebp-24]
 00472E7D    add         eax,4
 00472E80    push        eax
 00472E81    push        dword ptr [ebp-8]
 00472E84    call        0066FCB4
 00472E89    add         esp,8
 00472E8C    mov         dword ptr [ebp-28],eax
 00472E8F    mov         edx,dword ptr [ebp-28]
 00472E92    test        edx,edx
>00472E94    jne         00472F02
 00472E96    mov         ecx,dword ptr [ebp-24]
 00472E99    mov         ax,word ptr [ecx]
 00472E9C    mov         word ptr [ebp-2A],ax
 00472EA0    cmp         word ptr [ebp-2A],0FFFF
>00472EA6    je          00472EEE
 00472EA8    mov         edx,dword ptr [ebp-10]
 00472EAB    mov         ecx,dword ptr [ebp-0C]
 00472EAE    mov         ax,word ptr [edx+ecx*2-2]
 00472EB3    cmp         ax,word ptr [ebp-2A]
>00472EB7    je          00472EEE
 00472EB9    mov         edx,dword ptr [ebp-10]
 00472EBC    mov         ecx,dword ptr [ebp-0C]
 00472EBF    mov         ax,word ptr [ebp-2A]
 00472EC3    mov         word ptr [edx+ecx*2],ax
 00472EC7    inc         dword ptr [ebp-0C]
 00472ECA    mov         edx,dword ptr [ebp-0C]
 00472ECD    mov         ecx,dword ptr [ebp-4]
 00472ED0    mov         eax,dword ptr [ecx+4]
 00472ED3    cmp         edx,eax
>00472ED5    jl          00472EEE
 00472ED7    push        766
 00472EDC    push        6B167D
 00472EE1    push        6B166B
 00472EE6    call        00678AD8
 00472EEB    add         esp,0C
 00472EEE    inc         dword ptr [ebp-34]
 00472EF1    mov         edx,dword ptr [ebp-34]
 00472EF4    mov         ecx,dword ptr [ebp-4]
 00472EF7    mov         eax,dword ptr [ecx+3D]
 00472EFA    cmp         edx,eax
>00472EFC    jl          00472E2F
 00472F02    mov         edx,dword ptr [ebp-10]
 00472F05    mov         ecx,dword ptr [ebp-0C]
 00472F08    mov         word ptr [edx+ecx*2],0FFFF
 00472F0E    mov         eax,dword ptr [ebp-10]
>00472F11    jmp         00472F2A
 00472F13    mov         edx,dword ptr [ebp-14]
 00472F16    mov         ecx,dword ptr [ebp-18]
 00472F19    cmp         edx,ecx
>00472F1B    jle         00472C76
 00472F21    xor         eax,eax
>00472F23    jmp         00472F2A
>00472F25    jmp         00472C76
 00472F2A    mov         esp,ebp
 00472F2C    pop         ebp
 00472F2D    ret
end;*}

//00472F30
{*function sub_00472F30(?:?; ?:?):?;
begin
 00472F30    push        ebp
 00472F31    mov         ebp,esp
 00472F33    add         esp,0FFFFFFD0
 00472F36    mov         dword ptr [ebp-8],edx
 00472F39    mov         dword ptr [ebp-4],eax
 00472F3C    mov         eax,dword ptr [ebp-4]
 00472F3F    mov         dl,byte ptr [eax+28]
 00472F42    test        dl,dl
>00472F44    jne         00472F4D
 00472F46    xor         eax,eax
>00472F48    jmp         00473224
 00472F4D    xor         edx,edx
 00472F4F    mov         dword ptr [ebp-18],edx
 00472F52    xor         ecx,ecx
 00472F54    mov         dword ptr [ebp-20],ecx
 00472F57    mov         eax,dword ptr [ebp-4]
 00472F5A    mov         edx,dword ptr [eax+35]
 00472F5D    dec         edx
 00472F5E    mov         dword ptr [ebp-24],edx
 00472F61    mov         ecx,dword ptr [ebp-20]
 00472F64    mov         eax,dword ptr [ebp-24]
 00472F67    cmp         ecx,eax
>00472F69    jge         00472FE9
 00472F6B    mov         edx,dword ptr [ebp-20]
 00472F6E    mov         ecx,dword ptr [ebp-24]
 00472F71    add         edx,ecx
 00472F73    sar         edx,1
>00472F75    jns         00472F7A
 00472F77    adc         edx,0
 00472F7A    mov         dword ptr [ebp-28],edx
 00472F7D    mov         eax,dword ptr [ebp-28]
 00472F80    shl         eax,4
 00472F83    mov         edx,dword ptr [ebp-4]
 00472F86    mov         ecx,dword ptr [edx+14]
 00472F89    mov         eax,dword ptr [ecx+eax+0C]
 00472F8D    mov         dword ptr [ebp-0C],eax
 00472F90    mov         edx,dword ptr [ebp-0C]
 00472F93    shl         edx,4
 00472F96    mov         ecx,dword ptr [ebp-4]
 00472F99    mov         eax,dword ptr [ecx+14]
 00472F9C    mov         ecx,dword ptr [eax+edx+4]
 00472FA0    mov         edx,dword ptr [ebp-0C]
 00472FA3    shl         edx,4
 00472FA6    mov         eax,dword ptr [ebp-4]
 00472FA9    mov         eax,dword ptr [eax+14]
 00472FAC    mov         edx,dword ptr [eax+edx]
 00472FAF    mov         eax,dword ptr [ebp-4]
 00472FB2    call        00473858
 00472FB7    mov         dword ptr [ebp-1C],eax
 00472FBA    mov         edx,dword ptr [ebp-1C]
 00472FBD    add         edx,4
 00472FC0    push        edx
 00472FC1    push        dword ptr [ebp-8]
 00472FC4    call        0066FCB4
 00472FC9    add         esp,8
 00472FCC    test        eax,eax
>00472FCE    jg          00472FD8
 00472FD0    mov         ecx,dword ptr [ebp-28]
 00472FD3    mov         dword ptr [ebp-24],ecx
>00472FD6    jmp         00472FDF
 00472FD8    mov         eax,dword ptr [ebp-28]
 00472FDB    inc         eax
 00472FDC    mov         dword ptr [ebp-20],eax
 00472FDF    mov         edx,dword ptr [ebp-20]
 00472FE2    mov         ecx,dword ptr [ebp-24]
 00472FE5    cmp         edx,ecx
>00472FE7    jl          00472F6B
 00472FE9    mov         eax,dword ptr [ebp-24]
 00472FEC    shl         eax,4
 00472FEF    mov         edx,dword ptr [ebp-4]
 00472FF2    mov         ecx,dword ptr [edx+14]
 00472FF5    mov         eax,dword ptr [ecx+eax+0C]
 00472FF9    mov         dword ptr [ebp-0C],eax
 00472FFC    mov         edx,dword ptr [ebp-0C]
 00472FFF    shl         edx,4
 00473002    mov         ecx,dword ptr [ebp-4]
 00473005    mov         eax,dword ptr [ecx+14]
 00473008    mov         ecx,dword ptr [eax+edx+4]
 0047300C    mov         edx,dword ptr [ebp-0C]
 0047300F    shl         edx,4
 00473012    mov         eax,dword ptr [ebp-4]
 00473015    mov         eax,dword ptr [eax+14]
 00473018    mov         edx,dword ptr [eax+edx]
 0047301B    mov         eax,dword ptr [ebp-4]
 0047301E    call        00473858
 00473023    mov         dword ptr [ebp-1C],eax
 00473026    mov         edx,dword ptr [ebp-1C]
 00473029    add         edx,4
 0047302C    push        edx
 0047302D    push        dword ptr [ebp-8]
 00473030    call        0066FCB4
 00473035    add         esp,8
 00473038    test        eax,eax
>0047303A    jne         00473222
 00473040    mov         ecx,dword ptr [ebp-4]
 00473043    mov         eax,dword ptr [ecx+4]
 00473046    inc         eax
 00473047    add         eax,eax
 00473049    push        eax
 0047304A    call        0066EC88
 0047304F    pop         ecx
 00473050    mov         dword ptr [ebp-18],eax
 00473053    xor         edx,edx
 00473055    mov         dword ptr [ebp-10],edx
 00473058    mov         ecx,dword ptr [ebp-1C]
 0047305B    mov         ax,word ptr [ecx]
 0047305E    mov         word ptr [ebp-12],ax
 00473062    cmp         word ptr [ebp-12],0FFFF
>00473068    je          0047307B
 0047306A    mov         edx,dword ptr [ebp-18]
 0047306D    mov         ecx,dword ptr [ebp-10]
 00473070    mov         ax,word ptr [ebp-12]
 00473074    mov         word ptr [edx+ecx*2],ax
 00473078    inc         dword ptr [ebp-10]
 0047307B    mov         edx,dword ptr [ebp-24]
 0047307E    dec         edx
 0047307F    mov         dword ptr [ebp-2C],edx
 00473082    mov         ecx,dword ptr [ebp-2C]
 00473085    test        ecx,ecx
>00473087    jl          00473146
 0047308D    mov         eax,dword ptr [ebp-2C]
 00473090    shl         eax,4
 00473093    mov         edx,dword ptr [ebp-4]
 00473096    mov         ecx,dword ptr [edx+14]
 00473099    mov         eax,dword ptr [ecx+eax+0C]
 0047309D    mov         dword ptr [ebp-0C],eax
 004730A0    mov         edx,dword ptr [ebp-0C]
 004730A3    shl         edx,4
 004730A6    mov         ecx,dword ptr [ebp-4]
 004730A9    mov         eax,dword ptr [ecx+14]
 004730AC    mov         ecx,dword ptr [eax+edx+4]
 004730B0    mov         edx,dword ptr [ebp-0C]
 004730B3    shl         edx,4
 004730B6    mov         eax,dword ptr [ebp-4]
 004730B9    mov         eax,dword ptr [eax+14]
 004730BC    mov         edx,dword ptr [eax+edx]
 004730BF    mov         eax,dword ptr [ebp-4]
 004730C2    call        00473858
 004730C7    mov         dword ptr [ebp-1C],eax
 004730CA    mov         edx,dword ptr [ebp-1C]
 004730CD    add         edx,4
 004730D0    push        edx
 004730D1    push        dword ptr [ebp-8]
 004730D4    call        0066FCB4
 004730D9    add         esp,8
 004730DC    test        eax,eax
>004730DE    jne         00473146
 004730E0    mov         ecx,dword ptr [ebp-1C]
 004730E3    mov         ax,word ptr [ecx]
 004730E6    mov         word ptr [ebp-12],ax
 004730EA    cmp         word ptr [ebp-12],0FFFF
>004730F0    je          00473138
 004730F2    mov         edx,dword ptr [ebp-18]
 004730F5    mov         ecx,dword ptr [ebp-10]
 004730F8    mov         ax,word ptr [edx+ecx*2-2]
 004730FD    cmp         ax,word ptr [ebp-12]
>00473101    je          00473138
 00473103    mov         edx,dword ptr [ebp-18]
 00473106    mov         ecx,dword ptr [ebp-10]
 00473109    mov         ax,word ptr [ebp-12]
 0047310D    mov         word ptr [edx+ecx*2],ax
 00473111    inc         dword ptr [ebp-10]
 00473114    mov         edx,dword ptr [ebp-10]
 00473117    mov         ecx,dword ptr [ebp-4]
 0047311A    mov         eax,dword ptr [ecx+4]
 0047311D    cmp         edx,eax
>0047311F    jl          00473138
 00473121    push        79A
 00473126    push        6B16AD
 0047312B    push        6B169B
 00473130    call        00678AD8
 00473135    add         esp,0C
 00473138    dec         dword ptr [ebp-2C]
 0047313B    mov         edx,dword ptr [ebp-2C]
 0047313E    test        edx,edx
>00473140    jge         0047308D
 00473146    mov         ecx,dword ptr [ebp-24]
 00473149    inc         ecx
 0047314A    mov         dword ptr [ebp-30],ecx
>0047314D    jmp         00473200
 00473152    mov         eax,dword ptr [ebp-30]
 00473155    shl         eax,4
 00473158    mov         edx,dword ptr [ebp-4]
 0047315B    mov         ecx,dword ptr [edx+14]
 0047315E    mov         eax,dword ptr [ecx+eax+0C]
 00473162    mov         dword ptr [ebp-0C],eax
 00473165    mov         edx,dword ptr [ebp-0C]
 00473168    shl         edx,4
 0047316B    mov         ecx,dword ptr [ebp-4]
 0047316E    mov         eax,dword ptr [ecx+14]
 00473171    mov         ecx,dword ptr [eax+edx+4]
 00473175    mov         edx,dword ptr [ebp-0C]
 00473178    shl         edx,4
 0047317B    mov         eax,dword ptr [ebp-4]
 0047317E    mov         eax,dword ptr [eax+14]
 00473181    mov         edx,dword ptr [eax+edx]
 00473184    mov         eax,dword ptr [ebp-4]
 00473187    call        00473858
 0047318C    mov         dword ptr [ebp-1C],eax
 0047318F    mov         edx,dword ptr [ebp-1C]
 00473192    add         edx,4
 00473195    push        edx
 00473196    push        dword ptr [ebp-8]
 00473199    call        0066FCB4
 0047319E    add         esp,8
 004731A1    test        eax,eax
>004731A3    jne         00473211
 004731A5    mov         ecx,dword ptr [ebp-1C]
 004731A8    mov         ax,word ptr [ecx]
 004731AB    mov         word ptr [ebp-12],ax
 004731AF    cmp         word ptr [ebp-12],0FFFF
>004731B5    je          004731FD
 004731B7    mov         edx,dword ptr [ebp-18]
 004731BA    mov         ecx,dword ptr [ebp-10]
 004731BD    mov         ax,word ptr [edx+ecx*2-2]
 004731C2    cmp         ax,word ptr [ebp-12]
>004731C6    je          004731FD
 004731C8    mov         edx,dword ptr [ebp-18]
 004731CB    mov         ecx,dword ptr [ebp-10]
 004731CE    mov         ax,word ptr [ebp-12]
 004731D2    mov         word ptr [edx+ecx*2],ax
 004731D6    inc         dword ptr [ebp-10]
 004731D9    mov         edx,dword ptr [ebp-10]
 004731DC    mov         ecx,dword ptr [ebp-4]
 004731DF    mov         eax,dword ptr [ecx+4]
 004731E2    cmp         edx,eax
>004731E4    jl          004731FD
 004731E6    push        7A8
 004731EB    push        6B16DD
 004731F0    push        6B16CB
 004731F5    call        00678AD8
 004731FA    add         esp,0C
 004731FD    inc         dword ptr [ebp-30]
 00473200    mov         edx,dword ptr [ebp-30]
 00473203    mov         ecx,dword ptr [ebp-4]
 00473206    mov         eax,dword ptr [ecx+35]
 00473209    cmp         edx,eax
>0047320B    jl          00473152
 00473211    mov         edx,dword ptr [ebp-18]
 00473214    mov         ecx,dword ptr [ebp-10]
 00473217    mov         word ptr [edx+ecx*2],0FFFF
 0047321D    mov         eax,dword ptr [ebp-18]
>00473220    jmp         00473224
 00473222    xor         eax,eax
 00473224    mov         esp,ebp
 00473226    pop         ebp
 00473227    ret
end;*}

//00473228
{*procedure sub_00473228(?:?; ?:?; ?:?);
begin
 00473228    push        ebp
 00473229    mov         ebp,esp
 0047322B    add         esp,0FFFFFF68
 00473231    mov         dword ptr [ebp-60],ecx
 00473234    mov         dword ptr [ebp-8C],edx
 0047323A    mov         dword ptr [ebp-88],eax
 00473240    mov         eax,6B2074
 00473245    call        0066FECC
 0047324A    mov         word ptr [ebp-74],14
 00473250    mov         edx,6B16FC
 00473255    lea         eax,[ebp-4]
 00473258    call        0067DAB4
 0047325D    inc         dword ptr [ebp-68]
 00473260    mov         word ptr [ebp-74],8
 00473266    mov         edx,dword ptr [ebp-8C]
 0047326C    test        edx,edx
>0047326E    je          00473812
 00473274    mov         ecx,dword ptr [ebp-8C]
 0047327A    mov         al,byte ptr [ecx+8]
 0047327D    sub         al,43
>0047327F    je          00473296
 00473281    dec         al
>00473283    je          004732CC
 00473285    sub         al,2
>00473287    je          004732FF
 00473289    sub         al,0A
>0047328B    je          00473332
>00473291    jmp         00473363
 00473296    mov         word ptr [ebp-74],20
 0047329C    mov         edx,6B16FD
 004732A1    lea         eax,[ebp-8]
 004732A4    call        0067DAB4
 004732A9    inc         dword ptr [ebp-68]
 004732AC    lea         edx,[ebp-8]
 004732AF    lea         eax,[ebp-4]
 004732B2    call        0067DCE4
 004732B7    dec         dword ptr [ebp-68]
 004732BA    lea         eax,[ebp-8]
 004732BD    mov         edx,2
 004732C2    call        0067DCA0
>004732C7    jmp         00473363
 004732CC    mov         word ptr [ebp-74],2C
 004732D2    mov         edx,6B1709
 004732D7    lea         eax,[ebp-0C]
 004732DA    call        0067DAB4
 004732DF    inc         dword ptr [ebp-68]
 004732E2    lea         edx,[ebp-0C]
 004732E5    lea         eax,[ebp-4]
 004732E8    call        0067DCE4
 004732ED    dec         dword ptr [ebp-68]
 004732F0    lea         eax,[ebp-0C]
 004732F3    mov         edx,2
 004732F8    call        0067DCA0
>004732FD    jmp         00473363
 004732FF    mov         word ptr [ebp-74],38
 00473305    mov         edx,6B1714
 0047330A    lea         eax,[ebp-10]
 0047330D    call        0067DAB4
 00473312    inc         dword ptr [ebp-68]
 00473315    lea         edx,[ebp-10]
 00473318    lea         eax,[ebp-4]
 0047331B    call        0067DCE4
 00473320    dec         dword ptr [ebp-68]
 00473323    lea         eax,[ebp-10]
 00473326    mov         edx,2
 0047332B    call        0067DCA0
>00473330    jmp         00473363
 00473332    mov         word ptr [ebp-74],44
 00473338    mov         edx,6B171D
 0047333D    lea         eax,[ebp-14]
 00473340    call        0067DAB4
 00473345    inc         dword ptr [ebp-68]
 00473348    lea         edx,[ebp-14]
 0047334B    lea         eax,[ebp-4]
 0047334E    call        0067DCE4
 00473353    dec         dword ptr [ebp-68]
 00473356    lea         eax,[ebp-14]
 00473359    mov         edx,2
 0047335E    call        0067DCA0
 00473363    mov         word ptr [ebp-74],50
 00473369    mov         edx,6B1727
 0047336E    lea         eax,[ebp-18]
 00473371    call        0067DAB4
 00473376    inc         dword ptr [ebp-68]
 00473379    lea         edx,[ebp-18]
 0047337C    lea         eax,[ebp-4]
 0047337F    call        0067DD9C
 00473384    push        eax
 00473385    dec         dword ptr [ebp-68]
 00473388    lea         eax,[ebp-18]
 0047338B    mov         edx,2
 00473390    call        0067DCA0
 00473395    pop         ecx
 00473396    test        cl,cl
>00473398    je          004733CB
 0047339A    mov         word ptr [ebp-74],5C
 004733A0    mov         edx,6B1728
 004733A5    lea         eax,[ebp-1C]
 004733A8    call        0067DAB4
 004733AD    inc         dword ptr [ebp-68]
 004733B0    lea         edx,[ebp-1C]
 004733B3    lea         eax,[ebp-4]
 004733B6    call        0067DCE4
 004733BB    dec         dword ptr [ebp-68]
 004733BE    lea         eax,[ebp-1C]
 004733C1    mov         edx,2
 004733C6    call        0067DCA0
 004733CB    mov         edx,dword ptr [ebp-8C]
 004733D1    add         edx,2
 004733D4    lea         eax,[ebp-4]
 004733D7    call        0067DCE4
 004733DC    mov         ecx,dword ptr [ebp-8C]
 004733E2    cmp         word ptr [ecx+1E],0
>004733E7    je          0047341A
 004733E9    mov         word ptr [ebp-74],68
 004733EF    mov         edx,6B172A
 004733F4    lea         eax,[ebp-20]
 004733F7    call        0067DAB4
 004733FC    inc         dword ptr [ebp-68]
 004733FF    lea         edx,[ebp-20]
 00473402    lea         eax,[ebp-4]
 00473405    call        0067DCE4
 0047340A    dec         dword ptr [ebp-68]
 0047340D    lea         eax,[ebp-20]
 00473410    mov         edx,2
 00473415    call        0067DCA0
 0047341A    mov         ecx,dword ptr [ebp-8C]
 00473420    mov         eax,dword ptr [ecx+20]
 00473423    mov         dword ptr [ebp-90],eax
 00473429    mov         word ptr [ebp-74],8
 0047342F    xor         edx,edx
 00473431    mov         dword ptr [ebp-98],edx
>00473437    jmp         004735D0
 0047343C    mov         ecx,dword ptr [ebp-98]
 00473442    test        ecx,ecx
>00473444    je          00473477
 00473446    mov         word ptr [ebp-74],74
 0047344C    mov         edx,6B172C
 00473451    lea         eax,[ebp-24]
 00473454    call        0067DAB4
 00473459    inc         dword ptr [ebp-68]
 0047345C    lea         edx,[ebp-24]
 0047345F    lea         eax,[ebp-4]
 00473462    call        0067DCE4
 00473467    dec         dword ptr [ebp-68]
 0047346A    lea         eax,[ebp-24]
 0047346D    mov         edx,2
 00473472    call        0067DCA0
 00473477    mov         ecx,dword ptr [ebp-90]
 0047347D    mov         al,byte ptr [ecx]
 0047347F    cmp         al,22
>00473481    jne         004734B4
 00473483    mov         word ptr [ebp-74],80
 00473489    mov         edx,6B172F
 0047348E    lea         eax,[ebp-28]
 00473491    call        0067DAB4
 00473496    inc         dword ptr [ebp-68]
 00473499    lea         edx,[ebp-28]
 0047349C    lea         eax,[ebp-4]
 0047349F    call        0067DCE4
 004734A4    dec         dword ptr [ebp-68]
 004734A7    lea         eax,[ebp-28]
 004734AA    mov         edx,2
 004734AF    call        0067DCA0
 004734B4    inc         dword ptr [ebp-90]
 004734BA    add         dword ptr [ebp-90],4
 004734C1    add         dword ptr [ebp-90],4
 004734C8    mov         ecx,dword ptr [ebp-90]
 004734CE    mov         ax,word ptr [ecx]
 004734D1    mov         word ptr [ebp-92],ax
 004734D8    add         dword ptr [ebp-90],2
 004734DF    mov         word ptr [ebp-74],8C
 004734E5    movzx       ecx,word ptr [ebp-92]
 004734EC    lea         eax,[ebp-2C]
 004734EF    mov         edx,dword ptr [ebp-90]
 004734F5    call        0067DB28
 004734FA    push        eax
 004734FB    inc         dword ptr [ebp-68]
 004734FE    lea         eax,[ebp-34]
 00473501    call        00401EA8
 00473506    push        eax
 00473507    inc         dword ptr [ebp-68]
 0047350A    mov         edx,6B1734
 0047350F    lea         eax,[ebp-30]
 00473512    call        0067DAB4
 00473517    inc         dword ptr [ebp-68]
 0047351A    lea         edx,[ebp-30]
 0047351D    pop         ecx
 0047351E    pop         eax
 0047351F    call        0067DCF8
 00473524    lea         edx,[ebp-34]
 00473527    lea         eax,[ebp-4]
 0047352A    call        0067DCE4
 0047352F    dec         dword ptr [ebp-68]
 00473532    lea         eax,[ebp-34]
 00473535    mov         edx,2
 0047353A    call        0067DCA0
 0047353F    dec         dword ptr [ebp-68]
 00473542    lea         eax,[ebp-30]
 00473545    mov         edx,2
 0047354A    call        0067DCA0
 0047354F    dec         dword ptr [ebp-68]
 00473552    lea         eax,[ebp-2C]
 00473555    mov         edx,2
 0047355A    call        0067DCA0
 0047355F    movzx       ecx,word ptr [ebp-92]
 00473566    inc         ecx
 00473567    add         dword ptr [ebp-90],ecx
 0047356D    mov         eax,dword ptr [ebp-90]
 00473573    mov         dx,word ptr [eax]
 00473576    mov         word ptr [ebp-92],dx
 0047357D    add         dword ptr [ebp-90],2
 00473584    mov         word ptr [ebp-74],98
 0047358A    movzx       ecx,word ptr [ebp-92]
 00473591    lea         eax,[ebp-38]
 00473594    mov         edx,dword ptr [ebp-90]
 0047359A    call        0067DB28
 0047359F    mov         edx,eax
 004735A1    inc         dword ptr [ebp-68]
 004735A4    lea         eax,[ebp-4]
 004735A7    call        0067DCE4
 004735AC    dec         dword ptr [ebp-68]
 004735AF    lea         eax,[ebp-38]
 004735B2    mov         edx,2
 004735B7    call        0067DCA0
 004735BC    movzx       ecx,word ptr [ebp-92]
 004735C3    inc         ecx
 004735C4    add         dword ptr [ebp-90],ecx
 004735CA    inc         dword ptr [ebp-98]
 004735D0    mov         eax,dword ptr [ebp-8C]
 004735D6    movzx       edx,word ptr [eax+1E]
 004735DA    mov         ecx,dword ptr [ebp-98]
 004735E0    cmp         edx,ecx
>004735E2    jg          0047343C
 004735E8    mov         eax,dword ptr [ebp-8C]
 004735EE    cmp         word ptr [eax+1E],0
>004735F3    je          00473626
 004735F5    mov         word ptr [ebp-74],0A4
 004735FB    mov         edx,6B1736
 00473600    lea         eax,[ebp-3C]
 00473603    call        0067DAB4
 00473608    inc         dword ptr [ebp-68]
 0047360B    lea         edx,[ebp-3C]
 0047360E    lea         eax,[ebp-4]
 00473611    call        0067DCE4
 00473616    dec         dword ptr [ebp-68]
 00473619    lea         eax,[ebp-3C]
 0047361C    mov         edx,2
 00473621    call        0067DCA0
 00473626    mov         ecx,dword ptr [ebp-8C]
 0047362C    movsx       eax,byte ptr [ecx+8]
 00473630    cmp         eax,46
>00473633    jne         00473676
 00473635    mov         word ptr [ebp-74],0B0
 0047363B    lea         eax,[ebp-40]
 0047363E    call        00401EA8
 00473643    mov         ecx,eax
 00473645    inc         dword ptr [ebp-68]
 00473648    mov         edx,dword ptr [ebp-8C]
 0047364E    add         edx,0E
 00473651    mov         eax,6B1738
 00473656    call        0067E37C
 0047365B    lea         edx,[ebp-40]
 0047365E    lea         eax,[ebp-4]
 00473661    call        0067DCE4
 00473666    dec         dword ptr [ebp-68]
 00473669    lea         eax,[ebp-40]
 0047366C    mov         edx,2
 00473671    call        0067DCA0
 00473676    mov         word ptr [ebp-74],0BC
 0047367C    mov         edx,6B173A
 00473681    lea         eax,[ebp-44]
 00473684    call        0067DAB4
 00473689    inc         dword ptr [ebp-68]
 0047368C    lea         edx,[ebp-44]
 0047368F    lea         eax,[ebp-4]
 00473692    call        0067DCE4
 00473697    dec         dword ptr [ebp-68]
 0047369A    lea         eax,[ebp-44]
 0047369D    mov         edx,2
 004736A2    call        0067DCA0
 004736A7    mov         ecx,dword ptr [ebp-8C]
 004736AD    mov         al,byte ptr [ecx+9]
 004736B0    test        al,al
>004736B2    je          004736E5
 004736B4    mov         word ptr [ebp-74],0C8
 004736BA    mov         edx,6B173C
 004736BF    lea         eax,[ebp-48]
 004736C2    call        0067DAB4
 004736C7    inc         dword ptr [ebp-68]
 004736CA    lea         edx,[ebp-48]
 004736CD    lea         eax,[ebp-4]
 004736D0    call        0067DCE4
 004736D5    dec         dword ptr [ebp-68]
 004736D8    lea         eax,[ebp-48]
 004736DB    mov         edx,2
 004736E0    call        0067DCA0
 004736E5    mov         ecx,dword ptr [ebp-8C]
 004736EB    mov         al,byte ptr [ecx+9]
 004736EE    dec         al
>004736F0    je          00473707
 004736F2    dec         al
>004736F4    je          0047373D
 004736F6    dec         al
>004736F8    je          00473770
 004736FA    dec         al
>004736FC    je          004737A3
>00473702    jmp         004737D4
 00473707    mov         word ptr [ebp-74],0D4
 0047370D    mov         edx,6B173E
 00473712    lea         eax,[ebp-4C]
 00473715    call        0067DAB4
 0047371A    inc         dword ptr [ebp-68]
 0047371D    lea         edx,[ebp-4C]
 00473720    lea         eax,[ebp-4]
 00473723    call        0067DCE4
 00473728    dec         dword ptr [ebp-68]
 0047372B    lea         eax,[ebp-4C]
 0047372E    mov         edx,2
 00473733    call        0067DCA0
>00473738    jmp         004737D4
 0047373D    mov         word ptr [ebp-74],0E0
 00473743    mov         edx,6B1744
 00473748    lea         eax,[ebp-50]
 0047374B    call        0067DAB4
 00473750    inc         dword ptr [ebp-68]
 00473753    lea         edx,[ebp-50]
 00473756    lea         eax,[ebp-4]
 00473759    call        0067DCE4
 0047375E    dec         dword ptr [ebp-68]
 00473761    lea         eax,[ebp-50]
 00473764    mov         edx,2
 00473769    call        0067DCA0
>0047376E    jmp         004737D4
 00473770    mov         word ptr [ebp-74],0EC
 00473776    mov         edx,6B174B
 0047377B    lea         eax,[ebp-54]
 0047377E    call        0067DAB4
 00473783    inc         dword ptr [ebp-68]
 00473786    lea         edx,[ebp-54]
 00473789    lea         eax,[ebp-4]
 0047378C    call        0067DCE4
 00473791    dec         dword ptr [ebp-68]
 00473794    lea         eax,[ebp-54]
 00473797    mov         edx,2
 0047379C    call        0067DCA0
>004737A1    jmp         004737D4
 004737A3    mov         word ptr [ebp-74],0F8
 004737A9    mov         edx,6B1753
 004737AE    lea         eax,[ebp-58]
 004737B1    call        0067DAB4
 004737B6    inc         dword ptr [ebp-68]
 004737B9    lea         edx,[ebp-58]
 004737BC    lea         eax,[ebp-4]
 004737BF    call        0067DCE4
 004737C4    dec         dword ptr [ebp-68]
 004737C7    lea         eax,[ebp-58]
 004737CA    mov         edx,2
 004737CF    call        0067DCA0
 004737D4    mov         ecx,dword ptr [ebp-8C]
 004737DA    mov         al,byte ptr [ecx+9]
 004737DD    test        al,al
>004737DF    je          00473812
 004737E1    mov         word ptr [ebp-74],104
 004737E7    mov         edx,6B175C
 004737EC    lea         eax,[ebp-5C]
 004737EF    call        0067DAB4
 004737F4    inc         dword ptr [ebp-68]
 004737F7    lea         edx,[ebp-5C]
 004737FA    lea         eax,[ebp-4]
 004737FD    call        0067DCE4
 00473802    dec         dword ptr [ebp-68]
 00473805    lea         eax,[ebp-5C]
 00473808    mov         edx,2
 0047380D    call        0067DCA0
 00473812    mov         word ptr [ebp-74],110
 00473818    lea         edx,[ebp-4]
 0047381B    mov         eax,dword ptr [ebp-60]
 0047381E    call        0067DCD0
 00473823    mov         eax,dword ptr [ebp-60]
 00473826    mov         word ptr [ebp-74],11C
 0047382C    push        eax
 0047382D    dec         dword ptr [ebp-68]
 00473830    lea         eax,[ebp-4]
 00473833    mov         edx,2
 00473838    call        0067DCA0
 0047383D    pop         eax
 0047383E    mov         word ptr [ebp-74],110
 00473844    inc         dword ptr [ebp-68]
 00473847    mov         edx,dword ptr [ebp-84]
 0047384D    mov         dword ptr fs:[0],edx
 00473854    mov         esp,ebp
 00473856    pop         ebp
 00473857    ret
end;*}

//00473858
{*function sub_00473858(?:?; ?:?; ?:?):?;
begin
 00473858    push        ebp
 00473859    mov         ebp,esp
 0047385B    add         esp,0FFFFFFF4
 0047385E    mov         dword ptr [ebp-0C],ecx
 00473861    mov         dword ptr [ebp-8],edx
 00473864    mov         dword ptr [ebp-4],eax
 00473867    mov         eax,dword ptr [ebp-8]
 0047386A    test        eax,eax
>0047386C    jb          0047388D
 0047386E    mov         edx,dword ptr [ebp-8]
 00473871    mov         ecx,dword ptr [ebp-4]
 00473874    mov         eax,dword ptr [ecx+61]
 00473877    cmp         edx,eax
>00473879    jae         0047388D
 0047387B    mov         edx,dword ptr [ebp-8]
 0047387E    mov         ecx,dword ptr [ebp-0C]
 00473881    add         edx,ecx
 00473883    mov         eax,dword ptr [ebp-4]
 00473886    mov         ecx,dword ptr [eax+61]
 00473889    cmp         edx,ecx
>0047388B    jb          004738A4
 0047388D    push        803
 00473892    push        6B17A1
 00473897    push        6B175E
 0047389C    call        00678AD8
 004738A1    add         esp,0C
 004738A4    mov         edx,dword ptr [ebp-4]
 004738A7    mov         eax,dword ptr [edx+5D]
 004738AA    mov         edx,dword ptr [ebp-8]
 004738AD    add         eax,edx
 004738AF    mov         esp,ebp
 004738B1    pop         ebp
 004738B2    ret
end;*}

//004738B4
{*function sub_004738B4(?:?; ?:?):?;
begin
 004738B4    push        ebp
 004738B5    mov         ebp,esp
 004738B7    add         esp,0FFFFFFF8
 004738BA    mov         dword ptr [ebp-8],edx
 004738BD    mov         dword ptr [ebp-4],eax
 004738C0    mov         eax,dword ptr [ebp-4]
 004738C3    mov         edx,dword ptr [eax+10]
 004738C6    mov         ecx,dword ptr [ebp-8]
 004738C9    mov         al,byte ptr [edx+ecx]
 004738CC    cmp         al,1
 004738CE    sete        al
 004738D1    and         eax,1
 004738D4    pop         ecx
 004738D5    pop         ecx
 004738D6    pop         ebp
 004738D7    ret
end;*}

//004738D8
{*procedure sub_004738D8(?:?; ?:?);
begin
 004738D8    push        ebp
 004738D9    mov         ebp,esp
 004738DB    add         esp,0FFFFFFF8
 004738DE    mov         dword ptr [ebp-8],edx
 004738E1    mov         dword ptr [ebp-4],eax
 004738E4    mov         eax,dword ptr [ebp-4]
 004738E7    mov         edx,dword ptr [eax+10]
 004738EA    mov         ecx,dword ptr [ebp-8]
 004738ED    mov         byte ptr [edx+ecx],1
 004738F1    pop         ecx
 004738F2    pop         ecx
 004738F3    pop         ebp
 004738F4    ret
end;*}

//004738F8
{*function sub_004738F8(?:?; ?:AnsiString; ?:?; ?:?):?;
begin
 004738F8    push        ebp
 004738F9    mov         ebp,esp
 004738FB    add         esp,0FFFFFFC8
 004738FE    mov         dword ptr [ebp-30],ecx
 00473901    mov         dword ptr [ebp-4],edx
 00473904    mov         dword ptr [ebp-2C],eax
 00473907    mov         eax,6B21AC
 0047390C    call        0066FECC
 00473911    mov         dword ptr [ebp-0C],1
 00473918    lea         edx,[ebp-4]
 0047391B    lea         eax,[ebp-4]
 0047391E    call        0067DAEC
 00473923    inc         dword ptr [ebp-0C]
 00473926    mov         word ptr [ebp-18],8
 0047392C    push        dword ptr [ebp-30]
 0047392F    push        dword ptr [ebp+8]
 00473932    lea         eax,[ebp-4]
 00473935    call        00403C0C
 0047393A    mov         edx,eax
 0047393C    mov         ecx,3
 00473941    mov         eax,dword ptr [ebp-2C]
 00473944    call        00471AE4
 00473949    mov         dword ptr [ebp-34],eax
 0047394C    mov         edx,dword ptr [ebp-34]
 0047394F    test        edx,edx
>00473951    je          00473979
 00473953    mov         ecx,dword ptr [ebp-34]
 00473956    inc         ecx
>00473957    je          00473979
 00473959    mov         al,1
 0047395B    push        eax
 0047395C    dec         dword ptr [ebp-0C]
 0047395F    lea         eax,[ebp-4]
 00473962    mov         edx,2
 00473967    call        0067DCA0
 0047396C    pop         eax
 0047396D    mov         edx,dword ptr [ebp-28]
 00473970    mov         dword ptr fs:[0],edx
>00473977    jmp         00473997
 00473979    xor         eax,eax
 0047397B    push        eax
 0047397C    dec         dword ptr [ebp-0C]
 0047397F    lea         eax,[ebp-4]
 00473982    mov         edx,2
 00473987    call        0067DCA0
 0047398C    pop         eax
 0047398D    mov         edx,dword ptr [ebp-28]
 00473990    mov         dword ptr fs:[0],edx
 00473997    mov         esp,ebp
 00473999    pop         ebp
 0047399A    ret         4
end;*}

//004739A0
{*function sub_004739A0(?:?; ?:AnsiString; ?:?):?;
begin
 004739A0    push        ebp
 004739A1    mov         ebp,esp
 004739A3    add         esp,0FFFFFFC8
 004739A6    mov         dword ptr [ebp-30],ecx
 004739A9    mov         dword ptr [ebp-4],edx
 004739AC    mov         dword ptr [ebp-2C],eax
 004739AF    mov         eax,6B21D0
 004739B4    call        0066FECC
 004739B9    mov         dword ptr [ebp-0C],1
 004739C0    lea         edx,[ebp-4]
 004739C3    lea         eax,[ebp-4]
 004739C6    call        0067DAEC
 004739CB    inc         dword ptr [ebp-0C]
 004739CE    mov         word ptr [ebp-18],8
 004739D4    lea         eax,[ebp-4]
 004739D7    call        00403C0C
 004739DC    mov         edx,eax
 004739DE    mov         eax,dword ptr [ebp-2C]
 004739E1    call        00472C40
 004739E6    mov         dword ptr [ebp-38],eax
 004739E9    lea         eax,[ebp-4]
 004739EC    call        00403C0C
 004739F1    mov         ecx,eax
 004739F3    mov         edx,dword ptr [ebp-38]
 004739F6    mov         eax,dword ptr [ebp-2C]
 004739F9    call        004701C8
 004739FE    mov         dword ptr [ebp-34],eax
 00473A01    mov         edx,dword ptr [ebp-38]
 00473A04    test        edx,edx
>00473A06    je          00473A11
 00473A08    push        dword ptr [ebp-38]
 00473A0B    call        0066EAC0
 00473A10    pop         ecx
 00473A11    mov         ecx,dword ptr [ebp-34]
 00473A14    inc         ecx
>00473A15    je          00473A61
 00473A17    mov         eax,dword ptr [ebp-34]
 00473A1A    shl         eax,4
 00473A1D    mov         edx,dword ptr [ebp-2C]
 00473A20    mov         ecx,dword ptr [edx+18]
 00473A23    mov         eax,dword ptr [ecx+eax+0C]
 00473A27    mov         dword ptr [ebp-34],eax
 00473A2A    push        dword ptr [ebp-30]
 00473A2D    mov         ecx,38
 00473A32    mov         edx,dword ptr [ebp-34]
 00473A35    mov         eax,dword ptr [ebp-2C]
 00473A38    call        00472158
 00473A3D    test        eax,eax
>00473A3F    je          00473A61
 00473A41    mov         al,1
 00473A43    push        eax
 00473A44    dec         dword ptr [ebp-0C]
 00473A47    lea         eax,[ebp-4]
 00473A4A    mov         edx,2
 00473A4F    call        0067DCA0
 00473A54    pop         eax
 00473A55    mov         edx,dword ptr [ebp-28]
 00473A58    mov         dword ptr fs:[0],edx
>00473A5F    jmp         00473A7F
 00473A61    xor         eax,eax
 00473A63    push        eax
 00473A64    dec         dword ptr [ebp-0C]
 00473A67    lea         eax,[ebp-4]
 00473A6A    mov         edx,2
 00473A6F    call        0067DCA0
 00473A74    pop         eax
 00473A75    mov         edx,dword ptr [ebp-28]
 00473A78    mov         dword ptr fs:[0],edx
 00473A7F    mov         esp,ebp
 00473A81    pop         ebp
 00473A82    ret
end;*}

//00473A84
{*function sub_00473A84(?:?; ?:AnsiString; ?:AnsiString; ?:?):?;
begin
 00473A84    push        ebp
 00473A85    mov         ebp,esp
 00473A87    add         esp,0FFFFFF6C
 00473A8D    mov         dword ptr [ebp-8],ecx
 00473A90    mov         dword ptr [ebp-4],edx
 00473A93    mov         dword ptr [ebp-7C],eax
 00473A96    mov         eax,6B22A0
 00473A9B    call        0066FECC
 00473AA0    mov         dword ptr [ebp-5C],2
 00473AA7    lea         edx,[ebp-4]
 00473AAA    lea         eax,[ebp-4]
 00473AAD    call        0067DAEC
 00473AB2    inc         dword ptr [ebp-5C]
 00473AB5    mov         word ptr [ebp-68],8
 00473ABB    lea         edx,[ebp-8]
 00473ABE    lea         eax,[ebp-8]
 00473AC1    call        0067DAEC
 00473AC6    inc         dword ptr [ebp-5C]
 00473AC9    mov         word ptr [ebp-68],14
 00473ACF    lea         eax,[ebp-38]
 00473AD2    call        0046DFF0
 00473AD7    add         dword ptr [ebp-5C],3
 00473ADB    mov         word ptr [ebp-68],8
 00473AE1    mov         word ptr [ebp-68],20
 00473AE7    lea         eax,[ebp-3C]
 00473AEA    call        00401EA8
 00473AEF    inc         dword ptr [ebp-5C]
 00473AF2    mov         word ptr [ebp-68],8
 00473AF8    mov         word ptr [ebp-68],2C
 00473AFE    lea         eax,[ebp-40]
 00473B01    call        00401EA8
 00473B06    inc         dword ptr [ebp-5C]
 00473B09    mov         word ptr [ebp-68],8
 00473B0F    lea         eax,[ebp-4]
 00473B12    call        00403C0C
 00473B17    mov         edx,eax
 00473B19    mov         eax,dword ptr [ebp-7C]
 00473B1C    call        00472C40
 00473B21    mov         dword ptr [ebp-90],eax
 00473B27    lea         eax,[ebp-4]
 00473B2A    call        00403C0C
 00473B2F    mov         ecx,eax
 00473B31    mov         edx,dword ptr [ebp-90]
 00473B37    mov         eax,dword ptr [ebp-7C]
 00473B3A    call        004701C8
 00473B3F    mov         dword ptr [ebp-84],eax
 00473B45    mov         edx,dword ptr [ebp-90]
 00473B4B    test        edx,edx
>00473B4D    je          00473B5B
 00473B4F    push        dword ptr [ebp-90]
 00473B55    call        0066EAC0
 00473B5A    pop         ecx
 00473B5B    mov         ecx,dword ptr [ebp-84]
 00473B61    inc         ecx
>00473B62    je          00473E1F
 00473B68    mov         eax,dword ptr [ebp-84]
 00473B6E    shl         eax,4
 00473B71    mov         edx,dword ptr [ebp-7C]
 00473B74    mov         ecx,dword ptr [edx+18]
 00473B77    mov         eax,dword ptr [ecx+eax+0C]
 00473B7B    mov         dword ptr [ebp-84],eax
 00473B81    lea         edx,[ebp-38]
 00473B84    push        edx
 00473B85    mov         ecx,10
 00473B8A    mov         edx,dword ptr [ebp-84]
 00473B90    mov         eax,dword ptr [ebp-7C]
 00473B93    call        00472158
 00473B98    test        eax,eax
>00473B9A    je          00473E1F
 00473BA0    mov         ecx,dword ptr [ebp-13]
 00473BA3    mov         dword ptr [ebp-8C],ecx
 00473BA9    xor         eax,eax
 00473BAB    mov         dword ptr [ebp-80],eax
>00473BAE    jmp         00473E10
 00473BB3    inc         dword ptr [ebp-8C]
 00473BB9    add         dword ptr [ebp-8C],4
 00473BC0    add         dword ptr [ebp-8C],4
 00473BC7    mov         edx,dword ptr [ebp-8C]
 00473BCD    mov         cx,word ptr [edx]
 00473BD0    mov         word ptr [ebp-92],cx
 00473BD7    add         dword ptr [ebp-8C],2
 00473BDE    mov         word ptr [ebp-68],38
 00473BE4    movzx       ecx,word ptr [ebp-92]
 00473BEB    lea         eax,[ebp-44]
 00473BEE    mov         edx,dword ptr [ebp-8C]
 00473BF4    call        0067DB28
 00473BF9    mov         edx,eax
 00473BFB    inc         dword ptr [ebp-5C]
 00473BFE    lea         eax,[ebp-3C]
 00473C01    call        0067DCD0
 00473C06    dec         dword ptr [ebp-5C]
 00473C09    lea         eax,[ebp-44]
 00473C0C    mov         edx,2
 00473C11    call        0067DCA0
 00473C16    movzx       ecx,word ptr [ebp-92]
 00473C1D    inc         ecx
 00473C1E    add         dword ptr [ebp-8C],ecx
 00473C24    mov         eax,dword ptr [ebp-8C]
 00473C2A    mov         dx,word ptr [eax]
 00473C2D    mov         word ptr [ebp-92],dx
 00473C34    add         dword ptr [ebp-8C],2
 00473C3B    mov         word ptr [ebp-68],44
 00473C41    movzx       ecx,word ptr [ebp-92]
 00473C48    lea         eax,[ebp-48]
 00473C4B    mov         edx,dword ptr [ebp-8C]
 00473C51    call        0067DB28
 00473C56    push        eax
 00473C57    inc         dword ptr [ebp-5C]
 00473C5A    lea         eax,[ebp-4C]
 00473C5D    call        00401EA8
 00473C62    mov         edx,eax
 00473C64    inc         dword ptr [ebp-5C]
 00473C67    pop         eax
 00473C68    call        00531D20
 00473C6D    lea         edx,[ebp-4C]
 00473C70    lea         eax,[ebp-40]
 00473C73    call        0067DCD0
 00473C78    dec         dword ptr [ebp-5C]
 00473C7B    lea         eax,[ebp-4C]
 00473C7E    mov         edx,2
 00473C83    call        0067DCA0
 00473C88    dec         dword ptr [ebp-5C]
 00473C8B    lea         eax,[ebp-48]
 00473C8E    mov         edx,2
 00473C93    call        0067DCA0
 00473C98    movzx       ecx,word ptr [ebp-92]
 00473C9F    inc         ecx
 00473CA0    add         dword ptr [ebp-8C],ecx
 00473CA6    mov         eax,dword ptr [ebp-8C]
 00473CAC    mov         dx,word ptr [eax]
 00473CAF    mov         word ptr [ebp-92],dx
 00473CB6    movzx       ecx,word ptr [ebp-92]
 00473CBD    add         ecx,3
 00473CC0    add         dword ptr [ebp-8C],ecx
 00473CC6    mov         eax,dword ptr [ebp-8C]
 00473CCC    mov         dx,word ptr [eax]
 00473CCF    mov         word ptr [ebp-92],dx
 00473CD6    movzx       ecx,word ptr [ebp-92]
 00473CDD    add         ecx,3
 00473CE0    add         dword ptr [ebp-8C],ecx
 00473CE6    mov         eax,dword ptr [ebp-8C]
 00473CEC    mov         dx,word ptr [eax]
 00473CEF    mov         word ptr [ebp-92],dx
 00473CF6    movzx       ecx,word ptr [ebp-92]
 00473CFD    add         ecx,3
 00473D00    add         dword ptr [ebp-8C],ecx
 00473D06    mov         edx,dword ptr [ebp-8]
 00473D09    mov         eax,dword ptr [ebp-3C]
 00473D0C    call        SameText
 00473D11    test        al,al
>00473D13    je          00473E0D
 00473D19    mov         word ptr [ebp-68],50
 00473D1F    mov         edx,6B17BF
 00473D24    lea         eax,[ebp-50]
 00473D27    call        0067DAB4
 00473D2C    inc         dword ptr [ebp-5C]
 00473D2F    lea         edx,[ebp-50]
 00473D32    lea         eax,[ebp-40]
 00473D35    call        0067E2B8
 00473D3A    mov         dword ptr [ebp-88],eax
 00473D40    dec         dword ptr [ebp-5C]
 00473D43    lea         eax,[ebp-50]
 00473D46    mov         edx,2
 00473D4B    call        0067DCA0
 00473D50    mov         ecx,dword ptr [ebp-88]
 00473D56    test        ecx,ecx
>00473D58    je          00473DA0
 00473D5A    mov         word ptr [ebp-68],5C
 00473D60    lea         eax,[ebp-54]
 00473D63    call        00401EA8
 00473D68    push        eax
 00473D69    inc         dword ptr [ebp-5C]
 00473D6C    lea         eax,[ebp-40]
 00473D6F    call        00405290
 00473D74    mov         ecx,eax
 00473D76    mov         edx,dword ptr [ebp-88]
 00473D7C    inc         edx
 00473D7D    lea         eax,[ebp-40]
 00473D80    call        0067E0BC
 00473D85    lea         edx,[ebp-54]
 00473D88    lea         eax,[ebp-40]
 00473D8B    call        0067DCD0
 00473D90    dec         dword ptr [ebp-5C]
 00473D93    lea         eax,[ebp-54]
 00473D96    mov         edx,2
 00473D9B    call        0067DCA0
 00473DA0    mov         ecx,dword ptr [ebp+8]
 00473DA3    mov         edx,dword ptr [ebp-40]
 00473DA6    mov         eax,dword ptr [ebp-7C]
 00473DA9    call        004739A0
 00473DAE    push        eax
 00473DAF    dec         dword ptr [ebp-5C]
 00473DB2    lea         eax,[ebp-40]
 00473DB5    mov         edx,2
 00473DBA    call        0067DCA0
 00473DBF    dec         dword ptr [ebp-5C]
 00473DC2    lea         eax,[ebp-3C]
 00473DC5    mov         edx,2
 00473DCA    call        0067DCA0
 00473DCF    sub         dword ptr [ebp-5C],3
 00473DD3    lea         eax,[ebp-38]
 00473DD6    mov         edx,2
 00473DDB    call        0046E124
 00473DE0    dec         dword ptr [ebp-5C]
 00473DE3    lea         eax,[ebp-8]
 00473DE6    mov         edx,2
 00473DEB    call        0067DCA0
 00473DF0    dec         dword ptr [ebp-5C]
 00473DF3    lea         eax,[ebp-4]
 00473DF6    mov         edx,2
 00473DFB    call        0067DCA0
 00473E00    pop         eax
 00473E01    mov         edx,dword ptr [ebp-78]
 00473E04    mov         dword ptr fs:[0],edx
>00473E0B    jmp         00473E7E
 00473E0D    inc         dword ptr [ebp-80]
 00473E10    movzx       ecx,word ptr [ebp-15]
 00473E14    mov         eax,dword ptr [ebp-80]
 00473E17    cmp         ecx,eax
>00473E19    jg          00473BB3
 00473E1F    xor         eax,eax
 00473E21    push        eax
 00473E22    dec         dword ptr [ebp-5C]
 00473E25    lea         eax,[ebp-40]
 00473E28    mov         edx,2
 00473E2D    call        0067DCA0
 00473E32    dec         dword ptr [ebp-5C]
 00473E35    lea         eax,[ebp-3C]
 00473E38    mov         edx,2
 00473E3D    call        0067DCA0
 00473E42    sub         dword ptr [ebp-5C],3
 00473E46    lea         eax,[ebp-38]
 00473E49    mov         edx,2
 00473E4E    call        0046E124
 00473E53    dec         dword ptr [ebp-5C]
 00473E56    lea         eax,[ebp-8]
 00473E59    mov         edx,2
 00473E5E    call        0067DCA0
 00473E63    dec         dword ptr [ebp-5C]
 00473E66    lea         eax,[ebp-4]
 00473E69    mov         edx,2
 00473E6E    call        0067DCA0
 00473E73    pop         eax
 00473E74    mov         edx,dword ptr [ebp-78]
 00473E77    mov         dword ptr fs:[0],edx
 00473E7E    mov         esp,ebp
 00473E80    pop         ebp
 00473E81    ret         4
end;*}

//00473E84
{*procedure sub_00473E84(?:?; ?:?; ?:?; ?:?);
begin
 00473E84    push        ebp
 00473E85    mov         ebp,esp
 00473E87    add         esp,0FFFFFF58
 00473E8D    mov         dword ptr [ebp-8],ecx
 00473E90    mov         dword ptr [ebp-4],edx
 00473E93    mov         dword ptr [ebp-94],eax
 00473E99    mov         eax,6B24A0
 00473E9E    call        0066FECC
 00473EA3    mov         dword ptr [ebp-74],2
 00473EAA    lea         edx,[ebp-4]
 00473EAD    lea         eax,[ebp-4]
 00473EB0    call        0067DAEC
 00473EB5    inc         dword ptr [ebp-74]
 00473EB8    mov         word ptr [ebp-80],8
 00473EBE    lea         edx,[ebp-8]
 00473EC1    lea         eax,[ebp-8]
 00473EC4    call        0067DAEC
 00473EC9    inc         dword ptr [ebp-74]
 00473ECC    mov         word ptr [ebp-80],14
 00473ED2    lea         eax,[ebp-38]
 00473ED5    call        0046DFF0
 00473EDA    add         dword ptr [ebp-74],3
 00473EDE    mov         word ptr [ebp-80],8
 00473EE4    mov         word ptr [ebp-80],20
 00473EEA    lea         eax,[ebp-3C]
 00473EED    call        00401EA8
 00473EF2    inc         dword ptr [ebp-74]
 00473EF5    mov         word ptr [ebp-80],8
 00473EFB    mov         word ptr [ebp-80],2C
 00473F01    lea         eax,[ebp-40]
 00473F04    call        00401EA8
 00473F09    inc         dword ptr [ebp-74]
 00473F0C    mov         word ptr [ebp-80],8
 00473F12    mov         word ptr [ebp-80],38
 00473F18    lea         eax,[ebp-44]
 00473F1B    call        00401EA8
 00473F20    inc         dword ptr [ebp-74]
 00473F23    mov         word ptr [ebp-80],8
 00473F29    lea         eax,[ebp-4]
 00473F2C    call        00403C0C
 00473F31    mov         edx,eax
 00473F33    mov         eax,dword ptr [ebp-94]
 00473F39    call        00472C40
 00473F3E    mov         dword ptr [ebp-0A4],eax
 00473F44    lea         eax,[ebp-4]
 00473F47    call        00403C0C
 00473F4C    mov         ecx,eax
 00473F4E    mov         edx,dword ptr [ebp-0A4]
 00473F54    mov         eax,dword ptr [ebp-94]
 00473F5A    call        004701C8
 00473F5F    mov         dword ptr [ebp-9C],eax
 00473F65    mov         edx,dword ptr [ebp-0A4]
 00473F6B    test        edx,edx
>00473F6D    je          00473F7B
 00473F6F    push        dword ptr [ebp-0A4]
 00473F75    call        0066EAC0
 00473F7A    pop         ecx
 00473F7B    mov         ecx,dword ptr [ebp-9C]
 00473F81    inc         ecx
>00473F82    je          0047446E
 00473F88    mov         eax,dword ptr [ebp-9C]
 00473F8E    shl         eax,4
 00473F91    mov         edx,dword ptr [ebp-94]
 00473F97    mov         ecx,dword ptr [edx+18]
 00473F9A    mov         eax,dword ptr [ecx+eax+0C]
 00473F9E    mov         dword ptr [ebp-9C],eax
 00473FA4    lea         edx,[ebp-38]
 00473FA7    push        edx
 00473FA8    mov         ecx,10
 00473FAD    mov         edx,dword ptr [ebp-9C]
 00473FB3    mov         eax,dword ptr [ebp-94]
 00473FB9    call        00472158
 00473FBE    test        eax,eax
>00473FC0    je          0047446E
 00473FC6    mov         ecx,dword ptr [ebp-13]
 00473FC9    mov         dword ptr [ebp-0A0],ecx
 00473FCF    xor         eax,eax
 00473FD1    mov         dword ptr [ebp-98],eax
>00473FD7    jmp         0047445C
 00473FDC    inc         dword ptr [ebp-0A0]
 00473FE2    add         dword ptr [ebp-0A0],4
 00473FE9    add         dword ptr [ebp-0A0],4
 00473FF0    mov         edx,dword ptr [ebp-0A0]
 00473FF6    mov         cx,word ptr [edx]
 00473FF9    mov         word ptr [ebp-0A6],cx
 00474000    add         dword ptr [ebp-0A0],2
 00474007    mov         word ptr [ebp-80],44
 0047400D    movzx       ecx,word ptr [ebp-0A6]
 00474014    lea         eax,[ebp-48]
 00474017    mov         edx,dword ptr [ebp-0A0]
 0047401D    call        0067DB28
 00474022    mov         edx,eax
 00474024    inc         dword ptr [ebp-74]
 00474027    lea         eax,[ebp-3C]
 0047402A    call        0067DCD0
 0047402F    dec         dword ptr [ebp-74]
 00474032    lea         eax,[ebp-48]
 00474035    mov         edx,2
 0047403A    call        0067DCA0
 0047403F    movzx       ecx,word ptr [ebp-0A6]
 00474046    inc         ecx
 00474047    add         dword ptr [ebp-0A0],ecx
 0047404D    mov         eax,dword ptr [ebp-0A0]
 00474053    mov         dx,word ptr [eax]
 00474056    mov         word ptr [ebp-0A6],dx
 0047405D    add         dword ptr [ebp-0A0],2
 00474064    mov         word ptr [ebp-80],50
 0047406A    movzx       ecx,word ptr [ebp-0A6]
 00474071    lea         eax,[ebp-4C]
 00474074    mov         edx,dword ptr [ebp-0A0]
 0047407A    call        0067DB28
 0047407F    push        eax
 00474080    inc         dword ptr [ebp-74]
 00474083    lea         eax,[ebp-50]
 00474086    call        00401EA8
 0047408B    mov         edx,eax
 0047408D    inc         dword ptr [ebp-74]
 00474090    pop         eax
 00474091    call        00531D20
 00474096    lea         edx,[ebp-50]
 00474099    lea         eax,[ebp-40]
 0047409C    call        0067DCD0
 004740A1    dec         dword ptr [ebp-74]
 004740A4    lea         eax,[ebp-50]
 004740A7    mov         edx,2
 004740AC    call        0067DCA0
 004740B1    dec         dword ptr [ebp-74]
 004740B4    lea         eax,[ebp-4C]
 004740B7    mov         edx,2
 004740BC    call        0067DCA0
 004740C1    movzx       ecx,word ptr [ebp-0A6]
 004740C8    inc         ecx
 004740C9    add         dword ptr [ebp-0A0],ecx
 004740CF    mov         eax,dword ptr [ebp-0A0]
 004740D5    mov         dx,word ptr [eax]
 004740D8    mov         word ptr [ebp-0A6],dx
 004740DF    add         dword ptr [ebp-0A0],2
 004740E6    mov         word ptr [ebp-80],5C
 004740EC    movzx       ecx,word ptr [ebp-0A6]
 004740F3    lea         eax,[ebp-54]
 004740F6    mov         edx,dword ptr [ebp-0A0]
 004740FC    call        0067DB28
 00474101    push        eax
 00474102    inc         dword ptr [ebp-74]
 00474105    lea         eax,[ebp-58]
 00474108    call        00401EA8
 0047410D    mov         edx,eax
 0047410F    inc         dword ptr [ebp-74]
 00474112    pop         eax
 00474113    call        00531D20
 00474118    lea         edx,[ebp-58]
 0047411B    lea         eax,[ebp-44]
 0047411E    call        0067DCD0
 00474123    dec         dword ptr [ebp-74]
 00474126    lea         eax,[ebp-58]
 00474129    mov         edx,2
 0047412E    call        0067DCA0
 00474133    dec         dword ptr [ebp-74]
 00474136    lea         eax,[ebp-54]
 00474139    mov         edx,2
 0047413E    call        0067DCA0
 00474143    movzx       ecx,word ptr [ebp-0A6]
 0047414A    inc         ecx
 0047414B    add         dword ptr [ebp-0A0],ecx
 00474151    mov         edx,dword ptr [ebp-44]
 00474154    mov         eax,dword ptr [ebp-8]
 00474157    call        SameText
 0047415C    test        al,al
>0047415E    je          004741FC
 00474164    mov         word ptr [ebp-80],68
 0047416A    lea         edx,[ebp-3C]
 0047416D    mov         eax,dword ptr [ebp+8]
 00474170    call        0067DCD0
 00474175    mov         eax,dword ptr [ebp+8]
 00474178    mov         word ptr [ebp-80],74
 0047417E    push        eax
 0047417F    dec         dword ptr [ebp-74]
 00474182    lea         eax,[ebp-44]
 00474185    mov         edx,2
 0047418A    call        0067DCA0
 0047418F    dec         dword ptr [ebp-74]
 00474192    lea         eax,[ebp-40]
 00474195    mov         edx,2
 0047419A    call        0067DCA0
 0047419F    dec         dword ptr [ebp-74]
 004741A2    lea         eax,[ebp-3C]
 004741A5    mov         edx,2
 004741AA    call        0067DCA0
 004741AF    sub         dword ptr [ebp-74],3
 004741B3    lea         eax,[ebp-38]
 004741B6    mov         edx,2
 004741BB    call        0046E124
 004741C0    dec         dword ptr [ebp-74]
 004741C3    lea         eax,[ebp-8]
 004741C6    mov         edx,2
 004741CB    call        0067DCA0
 004741D0    dec         dword ptr [ebp-74]
 004741D3    lea         eax,[ebp-4]
 004741D6    mov         edx,2
 004741DB    call        0067DCA0
 004741E0    pop         eax
 004741E1    mov         word ptr [ebp-80],68
 004741E7    inc         dword ptr [ebp-74]
 004741EA    mov         edx,dword ptr [ebp-90]
 004741F0    mov         dword ptr fs:[0],edx
>004741F7    jmp         00474521
 004741FC    mov         ecx,dword ptr [ebp-0A0]
 00474202    mov         ax,word ptr [ecx]
 00474205    mov         word ptr [ebp-0A6],ax
 0047420C    add         dword ptr [ebp-0A0],2
 00474213    mov         word ptr [ebp-80],80
 00474219    movzx       ecx,word ptr [ebp-0A6]
 00474220    lea         eax,[ebp-5C]
 00474223    mov         edx,dword ptr [ebp-0A0]
 00474229    call        0067DB28
 0047422E    push        eax
 0047422F    inc         dword ptr [ebp-74]
 00474232    lea         eax,[ebp-60]
 00474235    call        00401EA8
 0047423A    mov         edx,eax
 0047423C    inc         dword ptr [ebp-74]
 0047423F    pop         eax
 00474240    call        00531D20
 00474245    lea         edx,[ebp-60]
 00474248    lea         eax,[ebp-44]
 0047424B    call        0067DCD0
 00474250    dec         dword ptr [ebp-74]
 00474253    lea         eax,[ebp-60]
 00474256    mov         edx,2
 0047425B    call        0067DCA0
 00474260    dec         dword ptr [ebp-74]
 00474263    lea         eax,[ebp-5C]
 00474266    mov         edx,2
 0047426B    call        0067DCA0
 00474270    movzx       ecx,word ptr [ebp-0A6]
 00474277    inc         ecx
 00474278    add         dword ptr [ebp-0A0],ecx
 0047427E    mov         edx,dword ptr [ebp-44]
 00474281    mov         eax,dword ptr [ebp-8]
 00474284    call        SameText
 00474289    test        al,al
>0047428B    je          00474329
 00474291    mov         word ptr [ebp-80],8C
 00474297    lea         edx,[ebp-3C]
 0047429A    mov         eax,dword ptr [ebp+8]
 0047429D    call        0067DCD0
 004742A2    mov         eax,dword ptr [ebp+8]
 004742A5    mov         word ptr [ebp-80],98
 004742AB    push        eax
 004742AC    dec         dword ptr [ebp-74]
 004742AF    lea         eax,[ebp-44]
 004742B2    mov         edx,2
 004742B7    call        0067DCA0
 004742BC    dec         dword ptr [ebp-74]
 004742BF    lea         eax,[ebp-40]
 004742C2    mov         edx,2
 004742C7    call        0067DCA0
 004742CC    dec         dword ptr [ebp-74]
 004742CF    lea         eax,[ebp-3C]
 004742D2    mov         edx,2
 004742D7    call        0067DCA0
 004742DC    sub         dword ptr [ebp-74],3
 004742E0    lea         eax,[ebp-38]
 004742E3    mov         edx,2
 004742E8    call        0046E124
 004742ED    dec         dword ptr [ebp-74]
 004742F0    lea         eax,[ebp-8]
 004742F3    mov         edx,2
 004742F8    call        0067DCA0
 004742FD    dec         dword ptr [ebp-74]
 00474300    lea         eax,[ebp-4]
 00474303    mov         edx,2
 00474308    call        0067DCA0
 0047430D    pop         eax
 0047430E    mov         word ptr [ebp-80],8C
 00474314    inc         dword ptr [ebp-74]
 00474317    mov         edx,dword ptr [ebp-90]
 0047431D    mov         dword ptr fs:[0],edx
>00474324    jmp         00474521
 00474329    mov         ecx,dword ptr [ebp-0A0]
 0047432F    mov         ax,word ptr [ecx]
 00474332    mov         word ptr [ebp-0A6],ax
 00474339    add         dword ptr [ebp-0A0],2
 00474340    mov         word ptr [ebp-80],0A4
 00474346    movzx       ecx,word ptr [ebp-0A6]
 0047434D    lea         eax,[ebp-64]
 00474350    mov         edx,dword ptr [ebp-0A0]
 00474356    call        0067DB28
 0047435B    push        eax
 0047435C    inc         dword ptr [ebp-74]
 0047435F    lea         eax,[ebp-68]
 00474362    call        00401EA8
 00474367    mov         edx,eax
 00474369    inc         dword ptr [ebp-74]
 0047436C    pop         eax
 0047436D    call        00531D20
 00474372    lea         edx,[ebp-68]
 00474375    lea         eax,[ebp-44]
 00474378    call        0067DCD0
 0047437D    dec         dword ptr [ebp-74]
 00474380    lea         eax,[ebp-68]
 00474383    mov         edx,2
 00474388    call        0067DCA0
 0047438D    dec         dword ptr [ebp-74]
 00474390    lea         eax,[ebp-64]
 00474393    mov         edx,2
 00474398    call        0067DCA0
 0047439D    movzx       ecx,word ptr [ebp-0A6]
 004743A4    inc         ecx
 004743A5    add         dword ptr [ebp-0A0],ecx
 004743AB    mov         edx,dword ptr [ebp-44]
 004743AE    mov         eax,dword ptr [ebp-8]
 004743B1    call        SameText
 004743B6    test        al,al
>004743B8    je          00474456
 004743BE    mov         word ptr [ebp-80],0B0
 004743C4    lea         edx,[ebp-3C]
 004743C7    mov         eax,dword ptr [ebp+8]
 004743CA    call        0067DCD0
 004743CF    mov         eax,dword ptr [ebp+8]
 004743D2    mov         word ptr [ebp-80],0BC
 004743D8    push        eax
 004743D9    dec         dword ptr [ebp-74]
 004743DC    lea         eax,[ebp-44]
 004743DF    mov         edx,2
 004743E4    call        0067DCA0
 004743E9    dec         dword ptr [ebp-74]
 004743EC    lea         eax,[ebp-40]
 004743EF    mov         edx,2
 004743F4    call        0067DCA0
 004743F9    dec         dword ptr [ebp-74]
 004743FC    lea         eax,[ebp-3C]
 004743FF    mov         edx,2
 00474404    call        0067DCA0
 00474409    sub         dword ptr [ebp-74],3
 0047440D    lea         eax,[ebp-38]
 00474410    mov         edx,2
 00474415    call        0046E124
 0047441A    dec         dword ptr [ebp-74]
 0047441D    lea         eax,[ebp-8]
 00474420    mov         edx,2
 00474425    call        0067DCA0
 0047442A    dec         dword ptr [ebp-74]
 0047442D    lea         eax,[ebp-4]
 00474430    mov         edx,2
 00474435    call        0067DCA0
 0047443A    pop         eax
 0047443B    mov         word ptr [ebp-80],0B0
 00474441    inc         dword ptr [ebp-74]
 00474444    mov         edx,dword ptr [ebp-90]
 0047444A    mov         dword ptr fs:[0],edx
>00474451    jmp         00474521
 00474456    inc         dword ptr [ebp-98]
 0047445C    movzx       ecx,word ptr [ebp-15]
 00474460    mov         eax,dword ptr [ebp-98]
 00474466    cmp         ecx,eax
>00474468    jg          00473FDC
 0047446E    mov         word ptr [ebp-80],0C8
 00474474    mov         edx,6B17C2
 00474479    lea         eax,[ebp-6C]
 0047447C    call        0067DAB4
 00474481    inc         dword ptr [ebp-74]
 00474484    lea         edx,[ebp-6C]
 00474487    mov         eax,dword ptr [ebp+8]
 0047448A    call        0067DCD0
 0047448F    mov         eax,dword ptr [ebp+8]
 00474492    mov         word ptr [ebp-80],0D4
 00474498    push        eax
 00474499    dec         dword ptr [ebp-74]
 0047449C    lea         eax,[ebp-6C]
 0047449F    mov         edx,2
 004744A4    call        0067DCA0
 004744A9    dec         dword ptr [ebp-74]
 004744AC    lea         eax,[ebp-44]
 004744AF    mov         edx,2
 004744B4    call        0067DCA0
 004744B9    dec         dword ptr [ebp-74]
 004744BC    lea         eax,[ebp-40]
 004744BF    mov         edx,2
 004744C4    call        0067DCA0
 004744C9    dec         dword ptr [ebp-74]
 004744CC    lea         eax,[ebp-3C]
 004744CF    mov         edx,2
 004744D4    call        0067DCA0
 004744D9    sub         dword ptr [ebp-74],3
 004744DD    lea         eax,[ebp-38]
 004744E0    mov         edx,2
 004744E5    call        0046E124
 004744EA    dec         dword ptr [ebp-74]
 004744ED    lea         eax,[ebp-8]
 004744F0    mov         edx,2
 004744F5    call        0067DCA0
 004744FA    dec         dword ptr [ebp-74]
 004744FD    lea         eax,[ebp-4]
 00474500    mov         edx,2
 00474505    call        0067DCA0
 0047450A    pop         eax
 0047450B    mov         word ptr [ebp-80],0C8
 00474511    inc         dword ptr [ebp-74]
 00474514    mov         edx,dword ptr [ebp-90]
 0047451A    mov         dword ptr fs:[0],edx
 00474521    mov         esp,ebp
 00474523    pop         ebp
 00474524    ret         4
end;*}

//00474528
{*function sub_00474528(?:?):?;
begin
 00474528    push        ebp
 00474529    mov         ebp,esp
 0047452B    add         esp,0FFFFFFD8
 0047452E    mov         dword ptr [ebp-4],eax
 00474531    mov         eax,6B28C4
 00474536    call        0066FECC
 0047453B    mov         word ptr [ebp-18],8
 00474541    mov         edx,dword ptr [ebp-4]
 00474544    xor         ecx,ecx
 00474546    mov         dword ptr [edx],ecx
 00474548    xor         eax,eax
 0047454A    mov         [006ECBCC],eax;gvar_006ECBCC
 0047454F    xor         edx,edx
 00474551    mov         dword ptr ds:[6ECBD0],edx;gvar_006ECBD0
 00474557    xor         ecx,ecx
 00474559    mov         dword ptr ds:[6ECBD4],ecx;gvar_006ECBD4
 0047455F    xor         eax,eax
 00474561    mov         [006ECBD8],eax;gvar_006ECBD8
 00474566    mov         edx,dword ptr [ebp-28]
 00474569    mov         dword ptr fs:[0],edx
 00474570    mov         eax,dword ptr [ebp-4]
 00474573    mov         esp,ebp
 00474575    pop         ebp
 00474576    ret
end;*}

//00474590
{*procedure sub_00474590(?:?; ?:?);
begin
 00474590    push        ebp
 00474591    mov         ebp,esp
 00474593    add         esp,0FFFFFFF8
 00474596    mov         dword ptr [ebp-8],edx
 00474599    mov         dword ptr [ebp-4],eax
 0047459C    mov         eax,dword ptr [ebp-4]
 0047459F    test        eax,eax
>004745A1    je          004745CC
 004745A3    mov         edx,dword ptr [ebp-4]
 004745A6    mov         ecx,dword ptr [edx]
 004745A8    test        ecx,ecx
>004745AA    je          004745B6
 004745AC    mov         eax,dword ptr [ebp-4]
 004745AF    push        dword ptr [eax]
 004745B1    call        KERNEL32.FreeLibrary
 004745B6    mov         edx,dword ptr [ebp-4]
 004745B9    xor         ecx,ecx
 004745BB    mov         dword ptr [edx],ecx
 004745BD    test        byte ptr [ebp-8],1
>004745C1    je          004745CC
 004745C3    push        dword ptr [ebp-4]
 004745C6    call        0066EAB0
 004745CB    pop         ecx
 004745CC    pop         ecx
 004745CD    pop         ecx
 004745CE    pop         ebp
 004745CF    ret
end;*}

//004745D0
{*function sub_004745D0(?:?):?;
begin
 004745D0    push        ebp
 004745D1    mov         ebp,esp
 004745D3    push        ecx
 004745D4    mov         dword ptr [ebp-4],eax
 004745D7    push        6B26D4
 004745DC    call        KERNEL32.LoadLibraryA
 004745E1    mov         edx,dword ptr [ebp-4]
 004745E4    mov         dword ptr [edx],eax
 004745E6    mov         eax,dword ptr [ebp-4]
 004745E9    mov         ecx,dword ptr [eax]
 004745EB    test        ecx,ecx
>004745ED    jne         004745F4
 004745EF    xor         eax,eax
 004745F1    pop         ecx
 004745F2    pop         ebp
 004745F3    ret
 004745F4    push        6B26DC
 004745F9    mov         edx,dword ptr [ebp-4]
 004745FC    push        dword ptr [edx]
 004745FE    call        KERNEL32.GetProcAddress
 00474603    mov         [006ECBCC],eax;gvar_006ECBCC
 00474608    push        6B26FD
 0047460D    mov         ecx,dword ptr [ebp-4]
 00474610    push        dword ptr [ecx]
 00474612    call        KERNEL32.GetProcAddress
 00474617    mov         [006ECBD0],eax;gvar_006ECBD0
 0047461C    push        6B271D
 00474621    mov         eax,dword ptr [ebp-4]
 00474624    push        dword ptr [eax]
 00474626    call        KERNEL32.GetProcAddress
 0047462B    mov         [006ECBD4],eax;gvar_006ECBD4
 00474630    push        1
 00474632    call        dword ptr ds:[6ECBCC]
 00474638    mov         [006ECBD8],eax;gvar_006ECBD8
 0047463D    mov         eax,1
 00474642    pop         ecx
 00474643    pop         ebp
 00474644    ret
end;*}

//00474648
{*function sub_00474648(?:?; ?:?):?;
begin
 00474648    push        ebp
 00474649    mov         ebp,esp
 0047464B    add         esp,0FFFFFFF4
 0047464E    mov         dword ptr [ebp-8],edx
 00474651    mov         dword ptr [ebp-4],eax
 00474654    mov         eax,dword ptr [ebp-8]
 00474657    mov         edx,dword ptr [eax]
 00474659    mov         dword ptr [ebp-0C],edx
 0047465C    mov         ecx,dword ptr [ebp-0C]
 0047465F    and         ecx,0FFFFFF
 00474665    cmp         ecx,766F6D
>0047466B    jne         00474691
 0047466D    mov         eax,dword ptr [ebp-8]
 00474670    mov         dl,byte ptr [eax+3]
 00474673    test        dl,dl
>00474675    je          00474683
 00474677    mov         ecx,dword ptr [ebp-8]
 0047467A    movsx       eax,byte ptr [ecx+4]
 0047467E    cmp         eax,78
>00474681    jne         0047468A
 00474683    mov         al,0D1
>00474685    jmp         004748D7
 0047468A    mov         al,92
>0047468C    jmp         004748D7
 00474691    mov         edx,dword ptr [ebp-0C]
 00474694    cmp         edx,68737570
>0047469A    jne         004746A3
 0047469C    mov         al,97
>0047469E    jmp         004748D7
 004746A3    mov         edx,dword ptr [ebp-0C]
 004746A6    cmp         edx,706F70
>004746AC    jne         004746B5
 004746AE    mov         al,96
>004746B0    jmp         004748D7
 004746B5    mov         edx,dword ptr [ebp-0C]
 004746B8    cmp         edx,706D6A
>004746BE    jne         004746C7
 004746C0    mov         al,8F
>004746C2    jmp         004748D7
 004746C7    mov         edx,dword ptr [ebp-0C]
 004746CA    cmp         edx,726F78
>004746D0    jne         004746D9
 004746D2    mov         al,0DE
>004746D4    jmp         004748D7
 004746D9    mov         edx,dword ptr [ebp-0C]
 004746DC    cmp         edx,706D63
>004746E2    jne         004746EB
 004746E4    mov         al,49
>004746E6    jmp         004748D7
 004746EB    mov         edx,dword ptr [ebp-0C]
 004746EE    cmp         edx,74736574
>004746F4    jne         004746FD
 004746F6    mov         al,5C
>004746F8    jmp         004748D7
 004746FD    mov         edx,dword ptr [ebp-0C]
 00474700    cmp         edx,61656C
>00474706    jne         0047470F
 00474708    mov         al,0D0
>0047470A    jmp         004748D7
 0047470F    mov         edx,dword ptr [ebp-0C]
 00474712    cmp         edx,646461
>00474718    jne         00474721
 0047471A    mov         al,0C2
>0047471C    jmp         004748D7
 00474721    mov         edx,dword ptr [ebp-0C]
 00474724    cmp         edx,627573
>0047472A    jne         00474733
 0047472C    mov         al,9B
>0047472E    jmp         004748D7
 00474733    mov         edx,dword ptr [ebp-0C]
 00474736    cmp         edx,726F
>0047473C    jne         00474745
 0047473E    mov         al,0D5
>00474740    jmp         004748D7
 00474745    mov         edx,dword ptr [ebp-0C]
 00474748    cmp         edx,646E61
>0047474E    jne         00474757
 00474750    mov         al,0C3
>00474752    jmp         004748D7
 00474757    mov         edx,dword ptr [ebp-0C]
 0047475A    cmp         edx,636E69
>00474760    jne         00474769
 00474762    mov         al,8E
>00474764    jmp         004748D7
 00474769    mov         edx,dword ptr [ebp-0C]
 0047476C    cmp         edx,636564
>00474772    jne         0047477B
 00474774    mov         al,8A
>00474776    jmp         004748D7
 0047477B    mov         edx,dword ptr [ebp-0C]
 0047477E    cmp         edx,6C756D
>00474784    jne         0047478D
 00474786    mov         al,93
>00474788    jmp         004748D7
 0047478D    mov         edx,dword ptr [ebp-0C]
 00474790    cmp         edx,766964
>00474796    jne         0047479F
 00474798    mov         al,8B
>0047479A    jmp         004748D7
 0047479F    mov         edx,dword ptr [ebp-0C]
 004747A2    cmp         edx,6C756D69
>004747A8    jne         004747B1
 004747AA    mov         al,0CD
>004747AC    jmp         004748D7
 004747B1    mov         edx,dword ptr [ebp-0C]
 004747B4    cmp         edx,76696469
>004747BA    jne         004747C3
 004747BC    mov         al,0CC
>004747BE    jmp         004748D7
 004747C3    mov         edx,dword ptr [ebp-0C]
 004747C6    cmp         edx,6C6873
>004747CC    je          004747D9
 004747CE    mov         ecx,dword ptr [ebp-0C]
 004747D1    cmp         ecx,646C6873
>004747D7    jne         004747E0
 004747D9    mov         al,0A1
>004747DB    jmp         004748D7
 004747E0    mov         edx,dword ptr [ebp-0C]
 004747E3    cmp         edx,726873
>004747E9    je          004747F6
 004747EB    mov         ecx,dword ptr [ebp-0C]
 004747EE    cmp         ecx,64726873
>004747F4    jne         004747FD
 004747F6    mov         al,9F
>004747F8    jmp         004748D7
 004747FD    mov         edx,dword ptr [ebp-0C]
 00474800    cmp         edx,6C6173
>00474806    jne         0047480F
 00474808    mov         al,0A0
>0047480A    jmp         004748D7
 0047480F    mov         edx,dword ptr [ebp-0C]
 00474812    cmp         edx,726173
>00474818    jne         00474821
 0047481A    mov         al,98
>0047481C    jmp         004748D7
 00474821    mov         edx,dword ptr [ebp-0C]
 00474824    cmp         edx,67656E
>0047482A    jne         00474833
 0047482C    mov         al,94
>0047482E    jmp         004748D7
 00474833    mov         edx,dword ptr [ebp-0C]
 00474836    cmp         edx,746F6E
>0047483C    jne         00474845
 0047483E    mov         al,0A2
>00474840    jmp         004748D7
 00474845    mov         edx,dword ptr [ebp-0C]
 00474848    cmp         edx,636461
>0047484E    jne         00474857
 00474850    mov         al,81
>00474852    jmp         004748D7
 00474857    mov         edx,dword ptr [ebp-0C]
 0047485A    cmp         edx,626273
>00474860    jne         00474866
 00474862    mov         al,99
>00474864    jmp         004748D7
 00474866    mov         edx,dword ptr [ebp-0C]
 00474869    cmp         edx,716463
>0047486F    jne         00474875
 00474871    mov         al,88
>00474873    jmp         004748D7
 00474875    mov         edx,dword ptr [ebp-0C]
 00474878    cmp         edx,67686378
>0047487E    jne         00474884
 00474880    mov         al,0DD
>00474882    jmp         004748D7
 00474884    mov         edx,dword ptr [ebp-0C]
 00474887    cmp         edx,7462
>0047488D    jne         00474893
 0047488F    mov         al,44
>00474891    jmp         004748D7
 00474893    mov         edx,dword ptr [ebp-0C]
 00474896    cmp         edx,637462
>0047489C    jne         004748A2
 0047489E    mov         al,45
>004748A0    jmp         004748D7
 004748A2    mov         edx,dword ptr [ebp-0C]
 004748A5    cmp         edx,727462
>004748AB    jne         004748B1
 004748AD    mov         al,46
>004748AF    jmp         004748D7
 004748B1    mov         edx,dword ptr [ebp-0C]
 004748B4    cmp         edx,737462
>004748BA    jne         004748C0
 004748BC    mov         al,47
>004748BE    jmp         004748D7
 004748C0    mov         edx,dword ptr [ebp-0C]
 004748C3    and         edx,0FFFFFF
 004748C9    cmp         edx,746573
>004748CF    jne         004748D5
 004748D1    mov         al,9A
>004748D3    jmp         004748D7
 004748D5    xor         eax,eax
 004748D7    mov         esp,ebp
 004748D9    pop         ebp
 004748DA    ret
end;*}

//004748DC
{*function sub_004748DC(?:?; ?:?):?;
begin
 004748DC    push        ebp
 004748DD    mov         ebp,esp
 004748DF    add         esp,0FFFFFFF4
 004748E2    mov         dword ptr [ebp-8],edx
 004748E5    mov         dword ptr [ebp-4],eax
 004748E8    mov         eax,dword ptr [ebp-8]
 004748EB    mov         dl,byte ptr [eax]
 004748ED    mov         byte ptr [ebp-9],dl
 004748F0    mov         cl,byte ptr [ebp-9]
 004748F3    test        cl,cl
>004748F5    jne         004748FB
 004748F7    xor         eax,eax
>004748F9    jmp         0047494D
 004748FB    push        5B
 004748FD    push        dword ptr [ebp-8]
 00474900    call        0066FBAD
 00474905    add         esp,8
 00474908    test        eax,eax
>0047490A    je          00474913
 0047490C    mov         eax,3
>00474911    jmp         0047494D
 00474913    movsx       edx,byte ptr [ebp-9]
 00474917    cmp         edx,30
>0047491A    jl          0047492C
 0047491C    movsx       ecx,byte ptr [ebp-9]
 00474920    cmp         ecx,39
>00474923    jg          0047492C
 00474925    mov         eax,1
>0047492A    jmp         0047494D
 0047492C    movsx       edx,byte ptr [ebp-9]
 00474930    cmp         edx,73
>00474933    jne         00474948
 00474935    mov         ecx,dword ptr [ebp-8]
 00474938    movsx       eax,byte ptr [ecx+1]
 0047493C    cmp         eax,74
>0047493F    jne         00474948
 00474941    mov         eax,4
>00474946    jmp         0047494D
 00474948    mov         eax,2
 0047494D    mov         esp,ebp
 0047494F    pop         ebp
 00474950    ret
end;*}

//00474954
{*function sub_00474954(?:?; ?:?; ?:?; ?:?):?;
begin
 00474954    push        ebp
 00474955    mov         ebp,esp
 00474957    add         esp,0FFFFFFF0
 0047495A    mov         dword ptr [ebp-0C],ecx
 0047495D    mov         dword ptr [ebp-8],edx
 00474960    mov         dword ptr [ebp-4],eax
 00474963    mov         eax,[00694254];0x0 gvar_00694254:TCriticalSection
 00474968    call        00656518
 0047496D    mov         eax,dword ptr [ebp-8]
 00474970    call        005312C8
 00474975    test        eax,eax
>00474977    je          004749A5
 00474979    mov         eax,dword ptr [ebp-8]
 0047497C    xor         edx,edx
 0047497E    push        edx
 0047497F    push        eax
 00474980    push        dword ptr [ebp+8]
 00474983    mov         eax,dword ptr [ebp-8]
 00474986    call        005312C8
 0047498B    mov         edx,eax
 0047498D    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00474993    add         edx,ecx
 00474995    mov         ecx,dword ptr [ebp-0C]
 00474998    mov         eax,dword ptr [ebp-4]
 0047499B    call        004749C0
 004749A0    mov         dword ptr [ebp-10],eax
>004749A3    jmp         004749AA
 004749A5    xor         edx,edx
 004749A7    mov         dword ptr [ebp-10],edx
 004749AA    mov         eax,[00694254];0x0 gvar_00694254:TCriticalSection
 004749AF    call        0065652C
 004749B4    mov         eax,dword ptr [ebp-10]
 004749B7    mov         esp,ebp
 004749B9    pop         ebp
 004749BA    ret         4
end;*}

//004749C0
{*function sub_004749C0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004749C0    push        ebp
 004749C1    mov         ebp,esp
 004749C3    add         esp,0FFFFFBE0
 004749C9    push        ebx
 004749CA    mov         dword ptr [ebp-0C],ecx
 004749CD    mov         dword ptr [ebp-8],edx
 004749D0    mov         dword ptr [ebp-4],eax
 004749D3    mov         eax,[00694254];0x0 gvar_00694254:TCriticalSection
 004749D8    call        00656518
 004749DD    push        64
 004749DF    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 004749E5    mov         edx,dword ptr [ecx]
 004749E7    push        dword ptr [ebp-8]
 004749EA    push        dword ptr [ebp+10]
 004749ED    push        dword ptr [ebp+0C]
 004749F0    call        dword ptr [edx+18]
 004749F3    mov         dword ptr [ebp-10],eax
 004749F6    mov         edx,dword ptr [ebp-0C]
 004749F9    test        edx,edx
>004749FB    je          00474B17
 00474A01    mov         ecx,dword ptr [ebp-10]
 00474A04    test        ecx,ecx
>00474A06    je          00474B10
 00474A0C    push        0B2
 00474A11    push        0
 00474A13    push        dword ptr [ebp-0C]
 00474A16    call        0066F904
 00474A1B    add         esp,0C
 00474A1E    mov         eax,dword ptr [ebp-0C]
 00474A21    mov         dword ptr [eax+65],0FFFFFFFF
 00474A28    mov         edx,dword ptr [ebp-0C]
 00474A2B    mov         dword ptr [edx+69],0FFFFFFFF
 00474A32    mov         ecx,dword ptr [ebp-0C]
 00474A35    mov         dword ptr [ecx+6D],0FFFFFFFF
 00474A3C    mov         eax,dword ptr [ebp-0C]
 00474A3F    mov         dword ptr [eax+71],0FFFFFFFF
 00474A46    mov         edx,dword ptr [ebp-0C]
 00474A49    mov         dword ptr [edx+75],0FFFFFFFF
 00474A50    mov         ecx,dword ptr [ebp-0C]
 00474A53    mov         dword ptr [ecx+0A6],0FFFFFFFF
 00474A5D    mov         eax,dword ptr [ebp-0C]
 00474A60    mov         dword ptr [eax+0AA],0FFFFFFFF
 00474A6A    mov         ecx,dword ptr [ebp+8]
 00474A6D    mov         edx,dword ptr [ebp-0C]
 00474A70    mov         eax,dword ptr [ebp-4]
 00474A73    call        00474B34
 00474A78    mov         edx,dword ptr [ebp-0C]
 00474A7B    mov         ecx,dword ptr [edx+75]
 00474A7E    inc         ecx
>00474A7F    je          00474A95
 00474A81    mov         eax,dword ptr [ebp-0C]
 00474A84    mov         edx,dword ptr [eax+79]
 00474A87    test        edx,edx
>00474A89    jne         00474A95
 00474A8B    mov         ecx,dword ptr [ebp-0C]
 00474A8E    mov         dword ptr [ecx+79],1
 00474A95    mov         eax,dword ptr [ebp-0C]
 00474A98    mov         edx,dword ptr [eax]
 00474A9A    mov         dword ptr [ebp-20],edx
 00474A9D    mov         ecx,dword ptr [ebp-0C]
 00474AA0    movsx       eax,byte ptr [ecx]
 00474AA3    cmp         eax,66
>00474AA6    je          00474AB3
 00474AA8    mov         edx,dword ptr [ebp-20]
 00474AAB    cmp         edx,74696177
>00474AB1    jne         00474ABC
 00474AB3    mov         ecx,dword ptr [ebp-0C]
 00474AB6    mov         byte ptr [ecx+60],1
>00474ABA    jmp         00474B08
 00474ABC    mov         eax,dword ptr [ebp-0C]
 00474ABF    movsx       edx,byte ptr [eax]
 00474AC2    cmp         edx,6A
>00474AC5    jne         00474AE3
 00474AC7    mov         ecx,dword ptr [ebp-0C]
 00474ACA    mov         byte ptr [ecx+62],1
 00474ACE    mov         eax,dword ptr [ebp-0C]
 00474AD1    movsx       edx,byte ptr [eax+1]
 00474AD5    cmp         edx,6D
>00474AD8    je          00474B08
 00474ADA    mov         ecx,dword ptr [ebp-0C]
 00474ADD    mov         byte ptr [ecx+63],1
>00474AE1    jmp         00474B08
 00474AE3    mov         eax,dword ptr [ebp-20]
 00474AE6    cmp         eax,6C6C6163
>00474AEB    jne         00474AF6
 00474AED    mov         edx,dword ptr [ebp-0C]
 00474AF0    mov         byte ptr [edx+61],1
>00474AF4    jmp         00474B08
 00474AF6    mov         ecx,dword ptr [ebp-20]
 00474AF9    cmp         ecx,746572
>00474AFF    jne         00474B08
 00474B01    mov         eax,dword ptr [ebp-0C]
 00474B04    mov         byte ptr [eax+64],1
 00474B08    mov         edx,dword ptr [ebp-10]
 00474B0B    mov         dword ptr [ebp-14],edx
>00474B0E    jmp         00474B1D
 00474B10    xor         ecx,ecx
 00474B12    mov         dword ptr [ebp-14],ecx
>00474B15    jmp         00474B1D
 00474B17    mov         eax,dword ptr [ebp-10]
 00474B1A    mov         dword ptr [ebp-14],eax
 00474B1D    mov         eax,[00694254];0x0 gvar_00694254:TCriticalSection
 00474B22    call        0065652C
 00474B27    mov         eax,dword ptr [ebp-14]
 00474B2A    pop         ebx
 00474B2B    mov         esp,ebp
 00474B2D    pop         ebp
 00474B2E    ret         0C
end;*}

//00474B34
{*procedure sub_00474B34(?:?; ?:?; ?:?);
begin
 00474B34    push        ebp
 00474B35    mov         ebp,esp
 00474B37    add         esp,0FFFFFFD8
 00474B3A    mov         dword ptr [ebp-0C],ecx
 00474B3D    mov         dword ptr [ebp-8],edx
 00474B40    mov         dword ptr [ebp-4],eax
 00474B43    xor         eax,eax
 00474B45    mov         dword ptr [ebp-20],eax
 00474B48    mov         edx,dword ptr [ebp-0C]
 00474B4B    test        edx,edx
>00474B4D    je          00474B55
 00474B4F    mov         ecx,dword ptr [ebp-0C]
 00474B52    mov         byte ptr [ecx],0
 00474B55    mov         eax,dword ptr [ebp-4]
 00474B58    call        004762B4
 00474B5D    mov         byte ptr [ebp-0D],al
 00474B60    mov         dl,byte ptr [ebp-0D]
 00474B63    test        dl,dl
>00474B65    je          00474C4E
 00474B6B    mov         cl,byte ptr [ebp-0D]
 00474B6E    sub         cl,0F0
>00474B71    je          00474B81
 00474B73    sub         cl,2
>00474B76    je          00474BAF
 00474B78    dec         cl
>00474B7A    je          00474BDC
>00474B7C    jmp         00474C4E
 00474B81    mov         eax,dword ptr [ebp-0C]
 00474B84    test        eax,eax
>00474B86    je          00474B98
 00474B88    push        6B2739
 00474B8D    push        dword ptr [ebp-0C]
 00474B90    call        0066F9A8
 00474B95    add         esp,8
 00474B98    mov         edx,dword ptr [ebp-8]
 00474B9B    xor         ecx,ecx
 00474B9D    mov         dword ptr [edx+0A6],ecx
 00474BA3    mov         dword ptr [ebp-20],5
>00474BAA    jmp         00474C4E
 00474BAF    mov         eax,dword ptr [ebp-0C]
 00474BB2    test        eax,eax
>00474BB4    je          00474BC6
 00474BB6    push        6B273F
 00474BBB    push        dword ptr [ebp-0C]
 00474BBE    call        0066F9A8
 00474BC3    add         esp,8
 00474BC6    mov         edx,dword ptr [ebp-8]
 00474BC9    mov         dword ptr [edx+0A6],1
 00474BD3    mov         dword ptr [ebp-20],6
>00474BDA    jmp         00474C4E
 00474BDC    mov         eax,dword ptr [ebp-4]
 00474BDF    call        004762D0
 00474BE4    xor         edx,edx
 00474BE6    mov         dl,al
 00474BE8    and         edx,0F6
 00474BEE    cmp         edx,0A6
>00474BF4    jne         00474C23
 00474BF6    mov         ecx,dword ptr [ebp-0C]
 00474BF9    test        ecx,ecx
>00474BFB    je          00474C0D
 00474BFD    push        6B2746
 00474C02    push        dword ptr [ebp-0C]
 00474C05    call        0066F9A8
 00474C0A    add         esp,8
 00474C0D    mov         eax,dword ptr [ebp-8]
 00474C10    mov         dword ptr [eax+0A6],2
 00474C1A    mov         dword ptr [ebp-20],5
>00474C21    jmp         00474C4E
 00474C23    mov         edx,dword ptr [ebp-0C]
 00474C26    test        edx,edx
>00474C28    je          00474C3A
 00474C2A    push        6B274C
 00474C2F    push        dword ptr [ebp-0C]
 00474C32    call        0066F9A8
 00474C37    add         esp,8
 00474C3A    mov         ecx,dword ptr [ebp-8]
 00474C3D    mov         dword ptr [ecx+0A6],3
 00474C47    mov         dword ptr [ebp-20],4
 00474C4E    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00474C54    mov         edx,dword ptr [ecx+4C]
 00474C57    mov         eax,dword ptr [edx]
 00474C59    mov         dword ptr [ebp-14],eax
 00474C5C    mov         eax,dword ptr [ebp-4]
 00474C5F    call        0047627C
 00474C64    test        al,al
>00474C66    jne         00474CE3
 00474C68    mov         eax,dword ptr [ebp-4]
 00474C6B    call        004762D0
 00474C70    xor         edx,edx
 00474C72    mov         dl,al
 00474C74    cmp         edx,99
>00474C7A    jg          00474C8D
>00474C7C    je          00474CBD
 00474C7E    sub         edx,60
>00474C81    je          00474C9F
 00474C83    dec         edx
>00474C84    je          00474CA9
 00474C86    sub         edx,37
>00474C89    je          00474CB3
>00474C8B    jmp         00474CE3
 00474C8D    sub         edx,9C
>00474C93    je          00474CC7
 00474C95    dec         edx
>00474C96    je          00474CD1
 00474C98    sub         edx,32
>00474C9B    je          00474CDB
>00474C9D    jmp         00474CE3
 00474C9F    mov         ecx,6B2751
 00474CA4    mov         dword ptr [ebp-14],ecx
>00474CA7    jmp         00474CE3
 00474CA9    mov         eax,6B2757
 00474CAE    mov         dword ptr [ebp-14],eax
>00474CB1    jmp         00474CE3
 00474CB3    mov         edx,6B275C
 00474CB8    mov         dword ptr [ebp-14],edx
>00474CBB    jmp         00474CE3
 00474CBD    mov         ecx,6B2760
 00474CC2    mov         dword ptr [ebp-14],ecx
>00474CC5    jmp         00474CE3
 00474CC7    mov         eax,6B2764
 00474CCC    mov         dword ptr [ebp-14],eax
>00474CCF    jmp         00474CE3
 00474CD1    mov         edx,6B276A
 00474CD6    mov         dword ptr [ebp-14],edx
>00474CD9    jmp         00474CE3
 00474CDB    mov         ecx,6B276F
 00474CE0    mov         dword ptr [ebp-14],ecx
 00474CE3    mov         eax,dword ptr [ebp-4]
 00474CE6    call        00476260
 00474CEB    test        al,al
>00474CED    jne         00474D03
 00474CEF    mov         eax,dword ptr [ebp-4]
 00474CF2    call        004762D0
 00474CF7    cmp         al,0E3
>00474CF9    jne         00474D03
 00474CFB    mov         edx,6B2774
 00474D00    mov         dword ptr [ebp-14],edx
 00474D03    mov         ecx,dword ptr [ebp-0C]
 00474D06    test        ecx,ecx
>00474D08    je          00474D18
 00474D0A    push        dword ptr [ebp-14]
 00474D0D    push        dword ptr [ebp-0C]
 00474D10    call        0066F9A8
 00474D15    add         esp,8
 00474D18    push        dword ptr [ebp-14]
 00474D1B    push        dword ptr [ebp-8]
 00474D1E    call        0066FA84
 00474D23    add         esp,8
 00474D26    push        dword ptr [ebp-14]
 00474D29    call        0066FAB4
 00474D2E    pop         ecx
 00474D2F    mov         edx,dword ptr [ebp-20]
 00474D32    add         eax,edx
 00474D34    mov         dword ptr [ebp-20],eax
 00474D37    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00474D3D    mov         edx,dword ptr [ecx+4C]
 00474D40    mov         eax,dword ptr [edx+4]
 00474D43    add         eax,9
 00474D46    mov         dword ptr [ebp-18],eax
 00474D49    xor         eax,eax
 00474D4B    mov         dword ptr [ebp-1C],eax
 00474D4E    mov         ecx,dword ptr [ebp-18]
 00474D51    mov         al,byte ptr [ecx]
 00474D53    test        al,al
>00474D55    je          00474DE6
 00474D5B    mov         edx,dword ptr [ebp-0C]
 00474D5E    test        edx,edx
>00474D60    je          00474D9E
 00474D62    mov         ecx,dword ptr [ebp-1C]
 00474D65    test        ecx,ecx
>00474D67    jne         00474D8E
 00474D69    mov         eax,dword ptr [ebp-20]
 00474D6C    cmp         eax,0C
>00474D6F    jge         00474D9E
 00474D71    push        6B2779
 00474D76    push        dword ptr [ebp-0C]
 00474D79    call        0066F9A8
 00474D7E    add         esp,8
 00474D81    inc         dword ptr [ebp-20]
 00474D84    mov         edx,dword ptr [ebp-20]
 00474D87    cmp         edx,0C
>00474D8A    jl          00474D71
>00474D8C    jmp         00474D9E
 00474D8E    push        6B277B
 00474D93    push        dword ptr [ebp-0C]
 00474D96    call        0066F9A8
 00474D9B    add         esp,8
 00474D9E    mov         ecx,dword ptr [ebp-18]
 00474DA1    xor         edx,edx
 00474DA3    xor         eax,eax
 00474DA5    mov         dx,word ptr [ecx+1]
 00474DA9    mov         dword ptr [ebp-28],edx
 00474DAC    mov         al,byte ptr [ecx]
 00474DAE    mov         dword ptr [ebp-24],eax
 00474DB1    add         ecx,4
 00474DB4    mov         dword ptr [ebp-18],ecx
 00474DB7    push        dword ptr [ebp-28]
 00474DBA    push        dword ptr [ebp-8]
 00474DBD    push        dword ptr [ebp-0C]
 00474DC0    mov         ecx,dword ptr [ebp-24]
 00474DC3    mov         edx,dword ptr [ebp-1C]
 00474DC6    mov         eax,dword ptr [ebp-4]
 00474DC9    call        00475A38
 00474DCE    mov         ecx,dword ptr [ebp-8]
 00474DD1    inc         byte ptr [ecx+0AE]
 00474DD7    inc         dword ptr [ebp-1C]
 00474DDA    mov         eax,dword ptr [ebp-1C]
 00474DDD    cmp         eax,3
>00474DE0    jl          00474D4E
 00474DE6    mov         esp,ebp
 00474DE8    pop         ebp
 00474DE9    ret
end;*}

//00474DEC
{*function sub_00474DEC(?:?; ?:?; ?:?; ?:?):?;
begin
 00474DEC    push        ebp
 00474DED    mov         ebp,esp
 00474DEF    add         esp,0FFFFFFF0
 00474DF2    mov         dword ptr [ebp-0C],ecx
 00474DF5    mov         dword ptr [ebp-8],edx
 00474DF8    mov         dword ptr [ebp-4],eax
 00474DFB    mov         eax,dword ptr [ebp+8]
 00474DFE    dec         eax
>00474DFF    jne         00474E1A
 00474E01    mov         edx,dword ptr [ebp-0C]
 00474E04    push        dword ptr [edx*4+6B2580]
 00474E0B    push        dword ptr [ebp-8]
 00474E0E    call        0066F9A8
 00474E13    add         esp,8
 00474E16    xor         eax,eax
>00474E18    jmp         00474E8E
 00474E1A    mov         edx,dword ptr [ebp+8]
 00474E1D    cmp         edx,2
>00474E20    jne         00474E3E
 00474E22    mov         ecx,dword ptr [ebp-0C]
 00474E25    push        dword ptr [ecx*4+6B25A0]
 00474E2C    push        dword ptr [ebp-8]
 00474E2F    call        0066F9A8
 00474E34    add         esp,8
 00474E37    mov         eax,8
>00474E3C    jmp         00474E8E
 00474E3E    mov         eax,dword ptr [ebp-4]
 00474E41    call        0047627C
 00474E46    mov         byte ptr [ebp-0D],al
 00474E49    mov         edx,dword ptr [ebp+8]
 00474E4C    cmp         edx,4
>00474E4F    je          00474E74
 00474E51    mov         cl,byte ptr [ebp-0D]
 00474E54    test        cl,cl
>00474E56    jne         00474E74
 00474E58    mov         eax,dword ptr [ebp-0C]
 00474E5B    push        dword ptr [eax*4+6B25A0]
 00474E62    push        dword ptr [ebp-8]
 00474E65    call        0066F9A8
 00474E6A    add         esp,8
 00474E6D    mov         eax,8
>00474E72    jmp         00474E8E
 00474E74    mov         edx,dword ptr [ebp-0C]
 00474E77    push        dword ptr [edx*4+6B25C0]
 00474E7E    push        dword ptr [ebp-8]
 00474E81    call        0066F9A8
 00474E86    add         esp,8
 00474E89    mov         eax,10
 00474E8E    mov         esp,ebp
 00474E90    pop         ebp
 00474E91    ret         4
end;*}

//00474E94
{*procedure sub_00474E94(?:?; ?:?; ?:Integer);
begin
 00474E94    push        ebp
 00474E95    mov         ebp,esp
 00474E97    add         esp,0FFFFFFE4
 00474E9A    mov         dword ptr [ebp-0C],ecx
 00474E9D    mov         dword ptr [ebp-8],edx
 00474EA0    mov         dword ptr [ebp-4],eax
 00474EA3    mov         eax,dword ptr [ebp-0C]
 00474EA6    cmp         eax,9
>00474EA9    ja          00474ECC
 00474EAB    push        dword ptr [ebp-0C]
 00474EAE    push        6B277D
 00474EB3    push        dword ptr [ebp-8]
 00474EB6    call        0066FAB4
 00474EBB    pop         ecx
 00474EBC    mov         edx,dword ptr [ebp-8]
 00474EBF    add         eax,edx
 00474EC1    push        eax
 00474EC2    call        006734B4
 00474EC7    add         esp,0C
>00474ECA    jmp         00474F15
 00474ECC    push        dword ptr [ebp-0C]
 00474ECF    push        6B2781
 00474ED4    lea         ecx,[ebp-1C]
 00474ED7    push        ecx
 00474ED8    call        006734B4
 00474EDD    add         esp,0C
 00474EE0    mov         al,byte ptr [ebp-1C]
 00474EE3    mov         byte ptr [ebp-0D],al
 00474EE6    xor         edx,edx
 00474EE8    mov         dl,byte ptr [ebp-0D]
 00474EEB    push        edx
 00474EEC    call        006745F4
 00474EF1    pop         ecx
 00474EF2    test        eax,eax
>00474EF4    jne         00474F06
 00474EF6    push        6B2785
 00474EFB    push        dword ptr [ebp-8]
 00474EFE    call        0066F9A8
 00474F03    add         esp,8
 00474F06    lea         ecx,[ebp-1C]
 00474F09    push        ecx
 00474F0A    push        dword ptr [ebp-8]
 00474F0D    call        0066F9A8
 00474F12    add         esp,8
 00474F15    mov         esp,ebp
 00474F17    pop         ebp
 00474F18    ret
end;*}

//00474F1C
{*function sub_00474F1C(?:?):?;
begin
 00474F1C    push        ebp
 00474F1D    mov         ebp,esp
 00474F1F    add         esp,0FFFFFFF4
 00474F22    push        ebx
 00474F23    push        esi
 00474F24    push        edi
 00474F25    mov         dword ptr [ebp-4],eax
 00474F28    xor         eax,eax
 00474F2A    mov         dword ptr [ebp-0C],eax
 00474F2D    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00474F33    mov         eax,dword ptr [ecx+68]
 00474F36    mov         dword ptr [ebp-8],eax
 00474F39    mov         edx,dword ptr [ebp-8]
 00474F3C    cmp         edx,11
>00474F3F    ja          0047504A
 00474F45    mov         dl,byte ptr [edx+474F52]
 00474F4B    jmp         dword ptr [edx*4+474F64]
 00474F4B    db          1
 00474F4B    db          1
 00474F4B    db          1
 00474F4B    db          1
 00474F4B    db          4
 00474F4B    db          3
 00474F4B    db          2
 00474F4B    db          1
 00474F4B    db          1
 00474F4B    db          1
 00474F4B    db          4
 00474F4B    db          3
 00474F4B    db          4
 00474F4B    db          4
 00474F4B    db          3
 00474F4B    db          3
 00474F4B    db          2
 00474F4B    db          1
 00474F4B    dd          0047504A
 00474F4B    dd          00474F78
 00474F4B    dd          00475040
 00474F4B    dd          00474FDC
 00474F4B    dd          00474F82
 00474F78    xor         eax,eax
 00474F7A    mov         dword ptr [ebp-0C],eax
>00474F7D    jmp         0047504A
 00474F82    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00474F88    mov         eax,dword ptr [ecx+64]
 00474F8B    movsx       eax,byte ptr [ecx+eax+3C]
 00474F90    mov         edi,dword ptr [ecx+38]
 00474F93    mov         ebx,dword ptr [ecx+28]
 00474F96    cdq
 00474F97    xor         esi,esi
 00474F99    add         edi,eax
 00474F9B    mov         al,byte ptr [ecx+51]
 00474F9E    push        ebp
 00474F9F    mov         ebp,dword ptr [ecx+2C]
 00474FA2    adc         esi,edx
 00474FA4    add         edi,ebx
 00474FA6    adc         esi,ebp
 00474FA8    pop         ebp
 00474FA9    test        al,al
>00474FAB    jne         00474FB6
 00474FAD    and         edi,0FFFF
 00474FB3    and         esi,0
 00474FB6    mov         eax,dword ptr [ecx+8]
 00474FB9    test        eax,eax
>00474FBB    jne         00474FD3
 00474FBD    and         ebx,0FFFF0000
 00474FC3    and         edi,0FFFF
 00474FC9    or          ebx,edi
 00474FCB    xor         esi,esi
 00474FCD    xor         ecx,ecx
 00474FCF    mov         edi,ebx
 00474FD1    or          esi,ecx
 00474FD3    mov         eax,edi
 00474FD5    mov         edx,esi
 00474FD7    mov         dword ptr [ebp-0C],eax
>00474FDA    jmp         0047504A
 00474FDC    mov         al,byte ptr [ecx+51]
 00474FDF    test        al,al
>00474FE1    je          00474FEC
 00474FE3    mov         edx,dword ptr [ecx+64]
 00474FE6    mov         eax,dword ptr [ecx+edx+3C]
>00474FEA    jmp         00474FF4
 00474FEC    mov         eax,dword ptr [ecx+64]
 00474FEF    movsx       eax,word ptr [ecx+eax+3C]
 00474FF4    mov         edi,dword ptr [ecx+38]
 00474FF7    mov         ebx,dword ptr [ecx+28]
 00474FFA    cdq
 00474FFB    xor         esi,esi
 00474FFD    add         edi,eax
 00474FFF    mov         al,byte ptr [ecx+51]
 00475002    push        ebp
 00475003    mov         ebp,dword ptr [ecx+2C]
 00475006    adc         esi,edx
 00475008    add         edi,ebx
 0047500A    adc         esi,ebp
 0047500C    pop         ebp
 0047500D    test        al,al
>0047500F    jne         0047501A
 00475011    and         edi,0FFFF
 00475017    and         esi,0
 0047501A    mov         eax,dword ptr [ecx+8]
 0047501D    test        eax,eax
>0047501F    jne         00475037
 00475021    and         ebx,0FFFF0000
 00475027    and         edi,0FFFF
 0047502D    or          ebx,edi
 0047502F    xor         esi,esi
 00475031    xor         ecx,ecx
 00475033    mov         edi,ebx
 00475035    or          esi,ecx
 00475037    mov         eax,edi
 00475039    mov         edx,esi
 0047503B    mov         dword ptr [ebp-0C],eax
>0047503E    jmp         0047504A
 00475040    mov         edx,dword ptr [ecx+64]
 00475043    mov         eax,dword ptr [ecx+edx+3C]
 00475047    mov         dword ptr [ebp-0C],eax
 0047504A    mov         eax,dword ptr [ebp-0C]
 0047504D    pop         edi
 0047504E    pop         esi
 0047504F    pop         ebx
 00475050    mov         esp,ebp
 00475052    pop         ebp
 00475053    ret
end;*}

//00475054
{*procedure sub_00475054(?:?; ?:?; ?:?);
begin
 00475054    push        ebp
 00475055    mov         ebp,esp
 00475057    add         esp,0FFFFFFEC
 0047505A    mov         dword ptr [ebp-0C],ecx
 0047505D    mov         dword ptr [ebp-8],edx
 00475060    mov         dword ptr [ebp-4],eax
 00475063    xor         eax,eax
 00475065    mov         dword ptr [ebp-14],eax
 00475068    mov         eax,dword ptr [ebp-4]
 0047506B    call        00476298
 00475070    mov         byte ptr [ebp-0D],al
 00475073    xor         edx,edx
 00475075    mov         dl,byte ptr [ebp-0D]
 00475078    cmp         edx,3E
>0047507B    jg          00475093
>0047507D    je          004750E0
 0047507F    sub         edx,26
>00475082    je          004750A0
 00475084    sub         edx,8
>00475087    je          004750B4
 00475089    sub         edx,8
>0047508C    je          004750CA
>0047508E    jmp         00475120
 00475093    sub         edx,64
>00475096    je          004750F6
 00475098    dec         edx
>00475099    je          0047510C
>0047509B    jmp         00475120
 004750A0    mov         dword ptr [ebp-14],6B2787
 004750A7    mov         ecx,dword ptr [ebp-0C]
 004750AA    xor         eax,eax
 004750AC    mov         dword ptr [ecx+0AA],eax
>004750B2    jmp         00475120
 004750B4    mov         dword ptr [ebp-14],6B278B
 004750BB    mov         edx,dword ptr [ebp-0C]
 004750BE    mov         dword ptr [edx+0AA],1
>004750C8    jmp         00475120
 004750CA    mov         dword ptr [ebp-14],6B278F
 004750D1    mov         ecx,dword ptr [ebp-0C]
 004750D4    mov         dword ptr [ecx+0AA],2
>004750DE    jmp         00475120
 004750E0    mov         dword ptr [ebp-14],6B2793
 004750E7    mov         eax,dword ptr [ebp-0C]
 004750EA    mov         dword ptr [eax+0AA],3
>004750F4    jmp         00475120
 004750F6    mov         dword ptr [ebp-14],6B2797
 004750FD    mov         edx,dword ptr [ebp-0C]
 00475100    mov         dword ptr [edx+0AA],4
>0047510A    jmp         00475120
 0047510C    mov         dword ptr [ebp-14],6B279B
 00475113    mov         ecx,dword ptr [ebp-0C]
 00475116    mov         dword ptr [ecx+0AA],5
 00475120    mov         eax,dword ptr [ebp-14]
 00475123    test        eax,eax
>00475125    je          00475135
 00475127    push        dword ptr [ebp-14]
 0047512A    push        dword ptr [ebp-8]
 0047512D    call        0066F9A8
 00475132    add         esp,8
 00475135    mov         esp,ebp
 00475137    pop         ebp
 00475138    ret
end;*}

//0047513C
{*function sub_0047513C(?:?):?;
begin
 0047513C    push        ebp
 0047513D    mov         ebp,esp
 0047513F    add         esp,0FFFFFFF0
 00475142    mov         dword ptr [ebp-4],eax
 00475145    mov         eax,dword ptr [ebp-4]
 00475148    call        0047627C
 0047514D    mov         byte ptr [ebp-5],al
 00475150    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475156    mov         ecx,dword ptr [ecx+4C]
 00475159    mov         ecx,dword ptr [ecx+4]
 0047515C    mov         dword ptr [ebp-0C],ecx
 0047515F    mov         dl,byte ptr [ebp-5]
 00475162    test        dl,dl
>00475164    jne         0047516D
 00475166    mov         ecx,2
>0047516B    jmp         00475172
 0047516D    mov         ecx,4
 00475172    mov         dword ptr [ebp-10],ecx
 00475175    mov         eax,dword ptr [ebp-0C]
 00475178    cmp         eax,1041BB30
>0047517D    je          0047518A
 0047517F    mov         edx,dword ptr [ebp-0C]
 00475182    cmp         edx,1041C370
>00475188    jne         00475191
 0047518A    xor         eax,eax
>0047518C    jmp         0047521A
 00475191    mov         edx,dword ptr [ebp-0C]
 00475194    cmp         edx,1041BC38
>0047519A    jne         004751A3
 0047519C    mov         eax,dword ptr [ebp-10]
 0047519F    add         eax,eax
>004751A1    jmp         0047521A
 004751A3    mov         edx,dword ptr [ebp-0C]
 004751A6    cmp         edx,1041BCB0
>004751AC    je          004751B9
 004751AE    mov         ecx,dword ptr [ebp-0C]
 004751B1    cmp         ecx,1041C3E8
>004751B7    jne         004751C1
 004751B9    mov         eax,dword ptr [ebp-10]
 004751BC    add         eax,2
>004751BF    jmp         0047521A
 004751C1    mov         edx,dword ptr [ebp-0C]
 004751C4    cmp         edx,1041BC98
>004751CA    je          004751D7
 004751CC    mov         ecx,dword ptr [ebp-0C]
 004751CF    cmp         ecx,1041C460
>004751D5    jne         004751EC
 004751D7    mov         al,byte ptr [ebp-5]
 004751DA    test        al,al
>004751DC    jne         004751E5
 004751DE    mov         eax,0E
>004751E3    jmp         0047521A
 004751E5    mov         eax,1C
>004751EA    jmp         0047521A
 004751EC    mov         edx,dword ptr [ebp-0C]
 004751EF    cmp         edx,1041BCF8
>004751F5    je          00475202
 004751F7    mov         ecx,dword ptr [ebp-0C]
 004751FA    cmp         ecx,1041C4C0
>00475200    jne         00475217
 00475202    mov         al,byte ptr [ebp-5]
 00475205    test        al,al
>00475207    jne         00475210
 00475209    mov         eax,5E
>0047520E    jmp         0047521A
 00475210    mov         eax,6C
>00475215    jmp         0047521A
 00475217    mov         eax,dword ptr [ebp-10]
 0047521A    mov         esp,ebp
 0047521C    pop         ebp
 0047521D    ret
end;*}

//00475220
{*procedure sub_00475220(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00475220    push        ebp
 00475221    mov         ebp,esp
 00475223    add         esp,0FFFFFFF0
 00475226    mov         byte ptr [ebp-9],cl
 00475229    mov         dword ptr [ebp-8],edx
 0047522C    mov         dword ptr [ebp-4],eax
 0047522F    xor         eax,eax
 00475231    mov         dword ptr [ebp-10],eax
 00475234    mov         edx,dword ptr [ebp-8]
 00475237    test        edx,edx
>00475239    jne         00475246
 0047523B    mov         eax,dword ptr [ebp-4]
 0047523E    call        0047513C
 00475243    mov         dword ptr [ebp-8],eax
 00475246    mov         edx,dword ptr [ebp-8]
 00475249    cmp         edx,10
>0047524C    ja          004752E4
 00475252    mov         dl,byte ptr [edx+47525F]
 00475258    jmp         dword ptr [edx*4+475270]
 00475258    db          0
 00475258    db          7
 00475258    db          6
 00475258    db          0
 00475258    db          5
 00475258    db          0
 00475258    db          4
 00475258    db          0
 00475258    db          3
 00475258    db          0
 00475258    db          2
 00475258    db          0
 00475258    db          0
 00475258    db          0
 00475258    db          0
 00475258    db          0
 00475258    db          1
 00475258    dd          004752E4
 00475258    dd          004752D6
 00475258    dd          004752CD
 00475258    dd          004752B4
 00475258    dd          004752AB
 00475258    dd          004752A2
 00475258    dd          00475299
 00475258    dd          00475290
 00475290    mov         dword ptr [ebp-10],6B27C1
>00475297    jmp         004752E4
 00475299    mov         dword ptr [ebp-10],6B27C6
>004752A0    jmp         004752E4
 004752A2    mov         dword ptr [ebp-10],6B27CB
>004752A9    jmp         004752E4
 004752AB    mov         dword ptr [ebp-10],6B27D1
>004752B2    jmp         004752E4
 004752B4    mov         cl,byte ptr [ebp-9]
 004752B7    test        cl,cl
>004752B9    je          004752C4
 004752BB    mov         dword ptr [ebp-10],6B27D7
>004752C2    jmp         004752E4
 004752C4    mov         dword ptr [ebp-10],6B27DE
>004752CB    jmp         004752E4
 004752CD    mov         dword ptr [ebp-10],6B27E4
>004752D4    jmp         004752E4
 004752D6    mov         al,byte ptr [ebp-9]
 004752D9    test        al,al
>004752DB    je          004752E4
 004752DD    mov         dword ptr [ebp-10],6B27EA
 004752E4    mov         edx,dword ptr [ebp-10]
 004752E7    test        edx,edx
>004752E9    je          00475331
 004752EB    mov         ecx,dword ptr [ebp+8]
 004752EE    test        ecx,ecx
>004752F0    je          00475310
 004752F2    push        dword ptr [ebp-10]
 004752F5    push        dword ptr [ebp+8]
 004752F8    call        0066F9A8
 004752FD    add         esp,8
 00475300    push        6B27F2
 00475305    push        dword ptr [ebp+8]
 00475308    call        0066F9A8
 0047530D    add         esp,8
 00475310    mov         al,byte ptr [ebp-8]
 00475313    mov         edx,dword ptr [ebp+0C]
 00475316    mov         byte ptr [edx+85],al
 0047531C    push        dword ptr [ebp-10]
 0047531F    mov         ecx,dword ptr [ebp+0C]
 00475322    add         ecx,86
 00475328    push        ecx
 00475329    call        0066FA84
 0047532E    add         esp,8
 00475331    mov         esp,ebp
 00475333    pop         ebp
 00475334    ret         8
end;*}

//00475338
{*procedure sub_00475338(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00475338    push        ebp
 00475339    mov         ebp,esp
 0047533B    add         esp,0FFFFFFCC
 0047533E    mov         dword ptr [ebp-0C],ecx
 00475341    mov         dword ptr [ebp-8],edx
 00475344    mov         dword ptr [ebp-4],eax
 00475347    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 0047534D    mov         edx,dword ptr [ecx+5C]
 00475350    mov         al,byte ptr [ecx+edx+3C]
 00475354    mov         byte ptr [ebp-0D],al
 00475357    mov         al,byte ptr [ebp-0D]
 0047535A    and         al,0C0
 0047535C    mov         byte ptr [ebp-0F],al
 0047535F    mov         dl,byte ptr [ebp-0F]
 00475362    cmp         dl,0C0
>00475365    jne         004753EE
 0047536B    mov         cl,byte ptr [ebp+14]
 0047536E    test        cl,cl
>00475370    jne         004753AD
 00475372    mov         al,byte ptr [ebp+10]
 00475375    test        al,al
>00475377    jne         004753AD
 00475379    xor         edx,edx
 0047537B    mov         dl,byte ptr [ebp-0D]
 0047537E    and         edx,7
 00475381    mov         dword ptr [ebp-30],edx
 00475384    push        dword ptr [ebp+18]
 00475387    mov         ecx,dword ptr [ebp-30]
 0047538A    mov         edx,dword ptr [ebp-0C]
 0047538D    mov         eax,dword ptr [ebp-4]
 00475390    call        00474DEC
 00475395    mov         dword ptr [ebp-2C],eax
 00475398    mov         ecx,dword ptr [ebp+0C]
 0047539B    mov         eax,dword ptr [ebp-8]
 0047539E    mov         edx,dword ptr [ebp-2C]
 004753A1    add         edx,dword ptr [ebp-30]
 004753A4    mov         dword ptr [ecx+eax*4+65],edx
>004753A8    jmp         00475724
 004753AD    mov         cl,byte ptr [ebp+10]
 004753B0    test        cl,cl
>004753B2    je          004753C4
 004753B4    push        6B27F8
 004753B9    push        dword ptr [ebp-0C]
 004753BC    call        0066F9A8
 004753C1    add         esp,8
 004753C4    xor         eax,eax
 004753C6    mov         al,byte ptr [ebp-0D]
 004753C9    and         eax,7
 004753CC    push        eax
 004753CD    push        6B27FA
 004753D2    push        dword ptr [ebp-0C]
 004753D5    call        0066FAB4
 004753DA    pop         ecx
 004753DB    mov         edx,dword ptr [ebp-0C]
 004753DE    add         eax,edx
 004753E0    push        eax
 004753E1    call        006734B4
 004753E6    add         esp,0C
>004753E9    jmp         00475724
 004753EE    mov         byte ptr [ebp-17],0
 004753F2    mov         dword ptr [ebp-24],0FFFFFFFF
 004753F9    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 004753FF    mov         edx,dword ptr [ecx+5C]
 00475402    lea         eax,[ecx+edx+3D]
 00475406    mov         dword ptr [ebp-14],eax
 00475409    xor         ecx,ecx
 0047540B    mov         cl,byte ptr [ebp-0D]
 0047540E    and         ecx,7
 00475411    mov         dword ptr [ebp-28],ecx
 00475414    mov         eax,dword ptr [ebp-28]
 00475417    cmp         eax,4
>0047541A    je          0047543D
 0047541C    xor         edx,edx
 0047541E    mov         dl,byte ptr [ebp-0D]
 00475421    and         edx,0C7
 00475427    cmp         edx,5
>0047542A    jne         004754B9
 00475430    mov         byte ptr [ebp-17],1
 00475434    mov         dword ptr [ebp-28],0FFFFFFFF
>0047543B    jmp         004754B9
 0047543D    mov         ecx,dword ptr [ebp-14]
 00475440    mov         al,byte ptr [ecx]
 00475442    mov         byte ptr [ebp-15],al
 00475445    inc         dword ptr [ebp-14]
 00475448    xor         edx,edx
 0047544A    mov         dl,byte ptr [ebp-15]
 0047544D    and         edx,7
 00475450    cmp         edx,5
>00475453    jne         00475465
 00475455    mov         cl,byte ptr [ebp-0F]
 00475458    test        cl,cl
>0047545A    jne         00475465
 0047545C    mov         dword ptr [ebp-28],0FFFFFFFF
>00475463    jmp         00475470
 00475465    xor         eax,eax
 00475467    mov         al,byte ptr [ebp-15]
 0047546A    and         eax,7
 0047546D    mov         dword ptr [ebp-28],eax
 00475470    xor         edx,edx
 00475472    mov         dl,byte ptr [ebp-15]
 00475475    sar         edx,3
 00475478    and         edx,7
 0047547B    mov         dword ptr [ebp-24],edx
 0047547E    mov         ecx,dword ptr [ebp-24]
 00475481    cmp         ecx,4
>00475484    je          0047549A
 00475486    xor         ecx,ecx
 00475488    mov         cl,byte ptr [ebp-15]
 0047548B    sar         ecx,6
 0047548E    mov         eax,1
 00475493    shl         eax,cl
 00475495    mov         dword ptr [ebp-20],eax
>00475498    jmp         004754A1
 0047549A    mov         dword ptr [ebp-24],0FFFFFFFF
 004754A1    xor         edx,edx
 004754A3    mov         dl,byte ptr [ebp-15]
 004754A6    and         edx,7
 004754A9    cmp         edx,5
>004754AC    jne         004754B9
 004754AE    mov         al,byte ptr [ebp-0F]
 004754B1    test        al,al
>004754B3    jne         004754B9
 004754B5    mov         byte ptr [ebp-17],1
 004754B9    xor         edx,edx
 004754BB    mov         dword ptr [ebp-34],edx
 004754BE    xor         ecx,ecx
 004754C0    mov         cl,byte ptr [ebp-0D]
 004754C3    and         ecx,0C0
 004754C9    cmp         ecx,40
>004754CC    jne         004754ED
 004754CE    mov         eax,dword ptr [ebp-14]
 004754D1    mov         dl,byte ptr [eax]
 004754D3    mov         byte ptr [ebp-16],dl
 004754D6    xor         ecx,ecx
 004754D8    mov         cl,byte ptr [ebp-16]
 004754DB    mov         dword ptr [ebp-34],ecx
 004754DE    test        byte ptr [ebp-16],80
>004754E2    je          00475502
 004754E4    or          dword ptr [ebp-34],0FFFFFF00
>004754EB    jmp         00475502
 004754ED    xor         eax,eax
 004754EF    mov         al,byte ptr [ebp-0D]
 004754F2    and         eax,0C0
 004754F7    cmp         eax,80
>004754FC    jne         00475502
 004754FE    mov         byte ptr [ebp-17],1
 00475502    mov         dl,byte ptr [ebp-17]
 00475505    test        dl,dl
>00475507    je          00475511
 00475509    mov         ecx,dword ptr [ebp-14]
 0047550C    mov         eax,dword ptr [ecx]
 0047550E    mov         dword ptr [ebp-34],eax
 00475511    mov         dl,byte ptr [ebp+14]
 00475514    test        dl,dl
>00475516    jne         00475523
 00475518    mov         cl,byte ptr [ebp+10]
 0047551B    test        cl,cl
>0047551D    jne         00475523
 0047551F    xor         eax,eax
>00475521    jmp         00475528
 00475523    mov         eax,1
 00475528    mov         byte ptr [ebp-1A],al
 0047552B    push        dword ptr [ebp+0C]
 0047552E    push        dword ptr [ebp+8]
 00475531    mov         cl,byte ptr [ebp-1A]
 00475534    mov         edx,dword ptr [ebp+18]
 00475537    mov         eax,dword ptr [ebp-4]
 0047553A    call        00475220
 0047553F    mov         ecx,dword ptr [ebp+0C]
 00475542    mov         edx,dword ptr [ebp-0C]
 00475545    mov         eax,dword ptr [ebp-4]
 00475548    call        00475054
 0047554D    mov         edx,dword ptr [ebp-28]
 00475550    inc         edx
>00475551    jne         0047555D
 00475553    mov         ecx,dword ptr [ebp-24]
 00475556    inc         ecx
>00475557    jne         0047555D
 00475559    xor         eax,eax
>0047555B    jmp         00475562
 0047555D    mov         eax,1
 00475562    mov         byte ptr [ebp-19],al
 00475565    mov         eax,dword ptr [ebp-4]
 00475568    call        00476298
 0047556D    test        al,al
>0047556F    jne         00475595
 00475571    mov         dl,byte ptr [ebp-19]
 00475574    test        dl,dl
>00475576    jne         00475595
 00475578    mov         ecx,dword ptr [ebp+0C]
 0047557B    mov         dword ptr [ecx+0AA],3
 00475585    push        6B27FF
 0047558A    push        dword ptr [ebp-0C]
 0047558D    call        0066F9A8
 00475592    add         esp,8
 00475595    push        6B2803
 0047559A    push        dword ptr [ebp-0C]
 0047559D    call        0066F9A8
 004755A2    add         esp,8
 004755A5    mov         eax,dword ptr [ebp-34]
 004755A8    test        eax,eax
 004755AA    setne       dl
 004755AD    and         edx,1
 004755B0    mov         byte ptr [ebp-18],dl
 004755B3    mov         cl,byte ptr [ebp-19]
 004755B6    test        cl,cl
>004755B8    je          00475652
 004755BE    mov         eax,dword ptr [ebp-28]
 004755C1    inc         eax
>004755C2    je          004755E5
 004755C4    mov         edx,dword ptr [ebp-28]
 004755C7    push        dword ptr [edx*4+6B25C0]
 004755CE    push        dword ptr [ebp-0C]
 004755D1    call        0066F9A8
 004755D6    add         esp,8
 004755D9    mov         ecx,dword ptr [ebp-28]
 004755DC    add         ecx,10
 004755DF    mov         eax,dword ptr [ebp+0C]
 004755E2    mov         dword ptr [eax+71],ecx
 004755E5    mov         edx,dword ptr [ebp-24]
 004755E8    inc         edx
>004755E9    je          00475656
 004755EB    mov         ecx,dword ptr [ebp-28]
 004755EE    inc         ecx
>004755EF    je          00475601
 004755F1    push        6B2805
 004755F6    push        dword ptr [ebp-0C]
 004755F9    call        0066F9A8
 004755FE    add         esp,8
 00475601    mov         eax,dword ptr [ebp-24]
 00475604    push        dword ptr [eax*4+6B25C0]
 0047560B    push        dword ptr [ebp-0C]
 0047560E    call        0066F9A8
 00475613    add         esp,8
 00475616    mov         edx,dword ptr [ebp-24]
 00475619    add         edx,10
 0047561C    mov         ecx,dword ptr [ebp+0C]
 0047561F    mov         dword ptr [ecx+75],edx
 00475622    mov         eax,dword ptr [ebp-20]
 00475625    dec         eax
>00475626    je          00475656
 00475628    push        dword ptr [ebp-20]
 0047562B    push        6B2807
 00475630    push        dword ptr [ebp-0C]
 00475633    call        0066FAB4
 00475638    pop         ecx
 00475639    mov         edx,dword ptr [ebp-0C]
 0047563C    add         eax,edx
 0047563E    push        eax
 0047563F    call        006734B4
 00475644    add         esp,0C
 00475647    mov         ecx,dword ptr [ebp+0C]
 0047564A    mov         eax,dword ptr [ebp-20]
 0047564D    mov         dword ptr [ecx+79],eax
>00475650    jmp         00475656
 00475652    mov         byte ptr [ebp-18],1
 00475656    mov         dl,byte ptr [ebp-17]
 00475659    test        dl,dl
>0047565B    je          004756BE
 0047565D    mov         ecx,dword ptr [ebp+0C]
 00475660    mov         eax,dword ptr [ebp-34]
 00475663    mov         dword ptr [ecx+7D],eax
 00475666    mov         dl,byte ptr [ebp-19]
 00475669    test        dl,dl
>0047566B    je          0047569E
 0047566D    mov         ecx,dword ptr [ebp-34]
 00475670    test        ecx,ecx
>00475672    jge         0047568E
 00475674    push        6B280B
 00475679    push        dword ptr [ebp-0C]
 0047567C    call        0066F9A8
 00475681    add         esp,8
 00475684    mov         eax,dword ptr [ebp-34]
 00475687    neg         eax
 00475689    mov         dword ptr [ebp-34],eax
>0047568C    jmp         0047569E
 0047568E    push        6B280D
 00475693    push        dword ptr [ebp-0C]
 00475696    call        0066F9A8
 0047569B    add         esp,8
 0047569E    mov         ecx,dword ptr [ebp-34]
 004756A1    mov         edx,dword ptr [ebp-0C]
 004756A4    mov         eax,dword ptr [ebp-4]
 004756A7    call        00474E94
 004756AC    push        6B280F
 004756B1    push        dword ptr [ebp-0C]
 004756B4    call        0066F9A8
 004756B9    add         esp,8
>004756BC    jmp         00475724
 004756BE    mov         dl,byte ptr [ebp-18]
 004756C1    test        dl,dl
>004756C3    je          00475714
 004756C5    mov         ecx,dword ptr [ebp+0C]
 004756C8    mov         eax,dword ptr [ebp-34]
 004756CB    mov         dword ptr [ecx+7D],eax
 004756CE    mov         dl,byte ptr [ebp-19]
 004756D1    test        dl,dl
>004756D3    je          00475706
 004756D5    mov         ecx,dword ptr [ebp-34]
 004756D8    test        ecx,ecx
>004756DA    jge         004756F6
 004756DC    push        6B2811
 004756E1    push        dword ptr [ebp-0C]
 004756E4    call        0066F9A8
 004756E9    add         esp,8
 004756EC    mov         eax,dword ptr [ebp-34]
 004756EF    neg         eax
 004756F1    mov         dword ptr [ebp-34],eax
>004756F4    jmp         00475706
 004756F6    push        6B2813
 004756FB    push        dword ptr [ebp-0C]
 004756FE    call        0066F9A8
 00475703    add         esp,8
 00475706    mov         ecx,dword ptr [ebp-34]
 00475709    mov         edx,dword ptr [ebp-0C]
 0047570C    mov         eax,dword ptr [ebp-4]
 0047570F    call        00474E94
 00475714    push        6B2815
 00475719    push        dword ptr [ebp-0C]
 0047571C    call        0066F9A8
 00475721    add         esp,8
 00475724    mov         esp,ebp
 00475726    pop         ebp
 00475727    ret         14
end;*}

//0047572C
{*procedure sub_0047572C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0047572C    push        ebp
 0047572D    mov         ebp,esp
 0047572F    add         esp,0FFFFFFD4
 00475732    mov         dword ptr [ebp-0C],ecx
 00475735    mov         dword ptr [ebp-8],edx
 00475738    mov         dword ptr [ebp-4],eax
 0047573B    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475741    mov         edx,dword ptr [ecx+5C]
 00475744    mov         al,byte ptr [ecx+edx+3C]
 00475748    mov         byte ptr [ebp-0D],al
 0047574B    xor         eax,eax
 0047574D    mov         al,byte ptr [ebp-0D]
 00475750    and         eax,0C0
 00475755    cmp         eax,0C0
>0047575A    jne         004757E3
 00475760    mov         dl,byte ptr [ebp+14]
 00475763    test        dl,dl
>00475765    jne         004757A2
 00475767    mov         cl,byte ptr [ebp+10]
 0047576A    test        cl,cl
>0047576C    jne         004757A2
 0047576E    xor         eax,eax
 00475770    mov         al,byte ptr [ebp-0D]
 00475773    and         eax,7
 00475776    mov         dword ptr [ebp-24],eax
 00475779    push        dword ptr [ebp+18]
 0047577C    mov         ecx,dword ptr [ebp-24]
 0047577F    mov         edx,dword ptr [ebp-0C]
 00475782    mov         eax,dword ptr [ebp-4]
 00475785    call        00474DEC
 0047578A    mov         dword ptr [ebp-20],eax
 0047578D    mov         edx,dword ptr [ebp+0C]
 00475790    mov         ecx,dword ptr [ebp-8]
 00475793    mov         eax,dword ptr [ebp-20]
 00475796    add         eax,dword ptr [ebp-24]
 00475799    mov         dword ptr [edx+ecx*4+65],eax
>0047579D    jmp         00475A32
 004757A2    mov         dl,byte ptr [ebp+10]
 004757A5    test        dl,dl
>004757A7    je          004757B9
 004757A9    push        6B2817
 004757AE    push        dword ptr [ebp-0C]
 004757B1    call        0066F9A8
 004757B6    add         esp,8
 004757B9    xor         ecx,ecx
 004757BB    mov         cl,byte ptr [ebp-0D]
 004757BE    and         ecx,7
 004757C1    push        ecx
 004757C2    push        6B2819
 004757C7    push        dword ptr [ebp-0C]
 004757CA    call        0066FAB4
 004757CF    pop         ecx
 004757D0    mov         edx,dword ptr [ebp-0C]
 004757D3    add         eax,edx
 004757D5    push        eax
 004757D6    call        006734B4
 004757DB    add         esp,0C
>004757DE    jmp         00475A32
 004757E3    mov         byte ptr [ebp-10],0
 004757E7    xor         eax,eax
 004757E9    mov         dword ptr [ebp-18],eax
 004757EC    xor         ecx,ecx
 004757EE    mov         cl,byte ptr [ebp-0D]
 004757F1    and         ecx,0C7
 004757F7    cmp         ecx,6
>004757FA    jne         00475805
 004757FC    mov         byte ptr [ebp-10],1
>00475800    jmp         0047589F
 00475805    mov         al,byte ptr [ebp-0D]
 00475808    and         al,7
 0047580A    mov         byte ptr [ebp-0F],al
 0047580D    xor         edx,edx
 0047580F    mov         dl,byte ptr [ebp-0F]
 00475812    mov         ecx,dword ptr [edx*4+6B2600]
 00475819    mov         dword ptr [ebp-18],ecx
 0047581C    mov         al,byte ptr [ebp-0F]
 0047581F    test        al,al
>00475821    je          00475833
 00475823    mov         dl,byte ptr [ebp-0F]
 00475826    cmp         dl,1
>00475829    je          00475833
 0047582B    mov         cl,byte ptr [ebp-0F]
 0047582E    cmp         cl,7
>00475831    jne         0047583D
 00475833    mov         eax,dword ptr [ebp+0C]
 00475836    mov         dword ptr [eax+71],0B
 0047583D    mov         dl,byte ptr [ebp-0F]
 00475840    cmp         dl,2
>00475843    je          00475854
 00475845    mov         cl,byte ptr [ebp-0F]
 00475848    cmp         cl,3
>0047584B    je          00475854
 0047584D    mov         al,byte ptr [ebp-0F]
 00475850    cmp         al,6
>00475852    jne         0047585E
 00475854    mov         edx,dword ptr [ebp+0C]
 00475857    mov         dword ptr [edx+71],0D
 0047585E    mov         cl,byte ptr [ebp-0F]
 00475861    test        cl,cl
>00475863    je          00475874
 00475865    mov         al,byte ptr [ebp-0F]
 00475868    cmp         al,2
>0047586A    je          00475874
 0047586C    mov         dl,byte ptr [ebp-0F]
 0047586F    cmp         dl,4
>00475872    jne         0047587E
 00475874    mov         ecx,dword ptr [ebp+0C]
 00475877    mov         dword ptr [ecx+75],0E
 0047587E    mov         al,byte ptr [ebp-0F]
 00475881    cmp         al,1
>00475883    je          00475895
 00475885    mov         dl,byte ptr [ebp-0F]
 00475888    cmp         dl,3
>0047588B    je          00475895
 0047588D    mov         cl,byte ptr [ebp-0F]
 00475890    cmp         cl,5
>00475893    jne         0047589F
 00475895    mov         eax,dword ptr [ebp+0C]
 00475898    mov         dword ptr [eax+75],0F
 0047589F    mov         byte ptr [ebp-19],0
 004758A3    xor         edx,edx
 004758A5    mov         dl,byte ptr [ebp-0D]
 004758A8    and         edx,0C0
 004758AE    cmp         edx,40
>004758B1    jne         004758E0
 004758B3    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 004758B9    mov         edx,dword ptr [ecx+5C]
 004758BC    mov         al,byte ptr [ecx+edx+3D]
 004758C0    test        al,80
 004758C2    mov         byte ptr [ebp-28],al
>004758C5    jne         004758D0
 004758C7    mov         eax,dword ptr [ebp-28]
 004758CA    mov         byte ptr [ebp-19],2B
>004758CE    jmp         004758D6
 004758D0    mov         byte ptr [ebp-19],2D
 004758D4    neg         eax
 004758D6    and         eax,0FF
 004758DB    mov         dword ptr [ebp-28],eax
>004758DE    jmp         004758F7
 004758E0    xor         ecx,ecx
 004758E2    mov         cl,byte ptr [ebp-0D]
 004758E5    and         ecx,0C0
 004758EB    cmp         ecx,80
>004758F1    jne         004758F7
 004758F3    mov         byte ptr [ebp-10],1
 004758F7    mov         al,byte ptr [ebp+14]
 004758FA    test        al,al
>004758FC    jne         00475909
 004758FE    mov         dl,byte ptr [ebp+10]
 00475901    test        dl,dl
>00475903    jne         00475909
 00475905    xor         ecx,ecx
>00475907    jmp         0047590E
 00475909    mov         ecx,1
 0047590E    mov         byte ptr [ebp-11],cl
 00475911    push        dword ptr [ebp+0C]
 00475914    push        dword ptr [ebp+8]
 00475917    mov         cl,byte ptr [ebp-11]
 0047591A    mov         edx,dword ptr [ebp+18]
 0047591D    mov         eax,dword ptr [ebp-4]
 00475920    call        00475220
 00475925    mov         ecx,dword ptr [ebp+0C]
 00475928    mov         edx,dword ptr [ebp-0C]
 0047592B    mov         eax,dword ptr [ebp-4]
 0047592E    call        00475054
 00475933    mov         eax,dword ptr [ebp-4]
 00475936    call        00476298
 0047593B    test        al,al
>0047593D    jne         00475963
 0047593F    mov         edx,dword ptr [ebp-18]
 00475942    test        edx,edx
>00475944    jne         00475963
 00475946    push        6B281E
 0047594B    push        dword ptr [ebp-0C]
 0047594E    call        0066F9A8
 00475953    add         esp,8
 00475956    mov         ecx,dword ptr [ebp+0C]
 00475959    mov         dword ptr [ecx+0AA],3
 00475963    push        6B2822
 00475968    push        dword ptr [ebp-0C]
 0047596B    call        0066F9A8
 00475970    add         esp,8
 00475973    mov         eax,dword ptr [ebp-18]
 00475976    test        eax,eax
>00475978    je          00475988
 0047597A    push        dword ptr [ebp-18]
 0047597D    push        dword ptr [ebp-0C]
 00475980    call        0066F9A8
 00475985    add         esp,8
 00475988    mov         dl,byte ptr [ebp-10]
 0047598B    test        dl,dl
>0047598D    je          004759E3
 0047598F    mov         ecx,dword ptr [ebp-18]
 00475992    test        ecx,ecx
>00475994    je          004759A6
 00475996    push        6B2824
 0047599B    push        dword ptr [ebp-0C]
 0047599E    call        0066F9A8
 004759A3    add         esp,8
 004759A6    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 004759AC    mov         edx,dword ptr [ecx+5C]
 004759AF    xor         eax,eax
 004759B1    mov         ax,word ptr [edx+ecx+3D]
 004759B6    mov         dword ptr [ebp-2C],eax
 004759B9    mov         eax,dword ptr [ebp+0C]
 004759BC    mov         edx,dword ptr [ebp-2C]
 004759BF    mov         dword ptr [eax+7D],edx
 004759C2    push        dword ptr [ebp-2C]
 004759C5    push        6B2826
 004759CA    push        dword ptr [ebp-0C]
 004759CD    call        0066FAB4
 004759D2    pop         ecx
 004759D3    mov         ecx,dword ptr [ebp-0C]
 004759D6    add         eax,ecx
 004759D8    push        eax
 004759D9    call        006734B4
 004759DE    add         esp,0C
>004759E1    jmp         00475A32
 004759E3    mov         al,byte ptr [ebp-19]
 004759E6    test        al,al
>004759E8    je          00475A32
 004759EA    mov         edx,dword ptr [ebp+0C]
 004759ED    mov         ecx,dword ptr [ebp-28]
 004759F0    mov         dword ptr [edx+7D],ecx
 004759F3    movsx       eax,byte ptr [ebp-19]
 004759F7    push        eax
 004759F8    push        6B282D
 004759FD    push        dword ptr [ebp-0C]
 00475A00    call        0066FAB4
 00475A05    pop         ecx
 00475A06    mov         edx,dword ptr [ebp-0C]
 00475A09    add         eax,edx
 00475A0B    push        eax
 00475A0C    call        006734B4
 00475A11    add         esp,0C
 00475A14    mov         ecx,dword ptr [ebp-28]
 00475A17    mov         edx,dword ptr [ebp-0C]
 00475A1A    mov         eax,dword ptr [ebp-4]
 00475A1D    call        00474E94
 00475A22    push        6B2830
 00475A27    push        dword ptr [ebp-0C]
 00475A2A    call        0066F9A8
 00475A2F    add         esp,8
 00475A32    mov         esp,ebp
 00475A34    pop         ebp
 00475A35    ret         14
end;*}

//00475A38
{*procedure sub_00475A38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00475A38    push        ebp
 00475A39    mov         ebp,esp
 00475A3B    add         esp,0FFFFFF94
 00475A3E    mov         dword ptr [ebp-0C],ecx
 00475A41    mov         dword ptr [ebp-8],edx
 00475A44    mov         dword ptr [ebp-4],eax
 00475A47    lea         eax,[ebp-6C]
 00475A4A    mov         dword ptr [ebp-2C],eax
 00475A4D    mov         edx,dword ptr [ebp-2C]
 00475A50    mov         byte ptr [edx],0
 00475A53    mov         ecx,dword ptr [ebp-0C]
 00475A56    cmp         ecx,1E
>00475A59    ja          004761E4
 00475A5F    jmp         dword ptr [ecx*4+475A66]
 00475A5F    dd          004761E4
 00475A5F    dd          00475AE2
 00475A5F    dd          00475B99
 00475A5F    dd          00475BB8
 00475A5F    dd          00475BDD
 00475A5F    dd          00475BFC
 00475A5F    dd          00475C39
 00475A5F    dd          00475C76
 00475A5F    dd          00475CC5
 00475A5F    dd          00475CF6
 00475A5F    dd          00475D4C
 00475A5F    dd          00475D7E
 00475A5F    dd          00475D7E
 00475A5F    dd          00475DAE
 00475A5F    dd          00475E2C
 00475A5F    dd          00475DAE
 00475A5F    dd          00475E4B
 00475A5F    dd          00475E81
 00475A5F    dd          00475EBC
 00475A5F    dd          00475F2F
 00475A5F    dd          00475F57
 00475A5F    dd          00475F87
 00475A5F    dd          00475FAF
 00475A5F    dd          00475FD3
 00475A5F    dd          00476007
 00475A5F    dd          00476032
 00475A5F    dd          00476051
 00475A5F    dd          00475DAE
 00475A5F    dd          004760D5
 00475A5F    dd          004760F4
 00475A5F    dd          00476166
 00475AE2    mov         eax,dword ptr [ebp-4]
 00475AE5    call        0047627C
 00475AEA    mov         byte ptr [ebp-0E],al
 00475AED    mov         dl,byte ptr [ebp-0E]
 00475AF0    test        dl,dl
>00475AF2    je          00475B45
 00475AF4    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475AFA    mov         edx,dword ptr [ecx+64]
 00475AFD    xor         eax,eax
 00475AFF    mov         ax,word ptr [ecx+edx+40]
 00475B04    mov         dword ptr [ebp-14],eax
 00475B07    push        dword ptr [ebp-14]
 00475B0A    push        6B2832
 00475B0F    push        dword ptr [ebp-2C]
 00475B12    call        006734B4
 00475B17    add         esp,0C
 00475B1A    add         dword ptr [ebp-2C],eax
 00475B1D    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475B23    mov         edx,dword ptr [ecx+64]
 00475B26    mov         eax,dword ptr [ecx+edx+3C]
 00475B2A    mov         dword ptr [ebp-14],eax
 00475B2D    push        dword ptr [ebp-14]
 00475B30    push        6B2839
 00475B35    push        dword ptr [ebp-2C]
 00475B38    call        006734B4
 00475B3D    add         esp,0C
>00475B40    jmp         004761E4
 00475B45    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475B4B    mov         edx,dword ptr [ecx+64]
 00475B4E    xor         eax,eax
 00475B50    mov         ax,word ptr [ecx+edx+3E]
 00475B55    mov         dword ptr [ebp-14],eax
 00475B58    push        dword ptr [ebp-14]
 00475B5B    push        6B283F
 00475B60    push        dword ptr [ebp-2C]
 00475B63    call        006734B4
 00475B68    add         esp,0C
 00475B6B    add         dword ptr [ebp-2C],eax
 00475B6E    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475B74    mov         edx,dword ptr [ecx+64]
 00475B77    xor         eax,eax
 00475B79    mov         ax,word ptr [ecx+edx+3C]
 00475B7E    mov         dword ptr [ebp-14],eax
 00475B81    push        dword ptr [ebp-14]
 00475B84    push        6B2846
 00475B89    push        dword ptr [ebp-2C]
 00475B8C    call        006734B4
 00475B91    add         esp,0C
>00475B94    jmp         004761E4
 00475B99    mov         eax,dword ptr [ebp-4]
 00475B9C    call        00476310
 00475BA1    push        eax
 00475BA2    push        6B284C
 00475BA7    lea         edx,[ebp-6C]
 00475BAA    push        edx
 00475BAB    call        006734B4
 00475BB0    add         esp,0C
>00475BB3    jmp         004761E4
 00475BB8    push        dword ptr [ebp+10]
 00475BBB    push        6B2851
 00475BC0    lea         ecx,[ebp-6C]
 00475BC3    push        ecx
 00475BC4    call        006734B4
 00475BC9    add         esp,0C
 00475BCC    mov         eax,dword ptr [ebp+10]
 00475BCF    mov         edx,dword ptr [ebp+0C]
 00475BD2    mov         dword ptr [edx+81],eax
>00475BD8    jmp         004761E4
 00475BDD    mov         eax,dword ptr [ebp-4]
 00475BE0    call        00476310
 00475BE5    push        eax
 00475BE6    push        6B2854
 00475BEB    lea         edx,[ebp-6C]
 00475BEE    push        edx
 00475BEF    call        006734B4
 00475BF4    add         esp,0C
>00475BF7    jmp         004761E4
 00475BFC    mov         eax,dword ptr [ebp-4]
 00475BFF    call        004762D0
 00475C04    xor         edx,edx
 00475C06    mov         dl,al
 00475C08    and         edx,7
 00475C0B    mov         dword ptr [ebp-24],edx
 00475C0E    push        dword ptr [ebp+10]
 00475C11    lea         edx,[ebp-6C]
 00475C14    mov         ecx,dword ptr [ebp-24]
 00475C17    mov         eax,dword ptr [ebp-4]
 00475C1A    call        00474DEC
 00475C1F    mov         dword ptr [ebp-20],eax
 00475C22    mov         eax,dword ptr [ebp-20]
 00475C25    mov         edx,dword ptr [ebp-24]
 00475C28    add         eax,edx
 00475C2A    mov         ecx,dword ptr [ebp-8]
 00475C2D    mov         edx,dword ptr [ebp+0C]
 00475C30    mov         dword ptr [edx+ecx*4+65],eax
>00475C34    jmp         004761E4
 00475C39    mov         eax,dword ptr [ebp-4]
 00475C3C    call        004762F0
 00475C41    xor         ecx,ecx
 00475C43    mov         cl,al
 00475C45    and         ecx,7
 00475C48    mov         dword ptr [ebp-24],ecx
 00475C4B    push        dword ptr [ebp+10]
 00475C4E    lea         edx,[ebp-6C]
 00475C51    mov         ecx,dword ptr [ebp-24]
 00475C54    mov         eax,dword ptr [ebp-4]
 00475C57    call        00474DEC
 00475C5C    mov         dword ptr [ebp-20],eax
 00475C5F    mov         eax,dword ptr [ebp-20]
 00475C62    mov         edx,dword ptr [ebp-24]
 00475C65    add         eax,edx
 00475C67    mov         ecx,dword ptr [ebp-8]
 00475C6A    mov         edx,dword ptr [ebp+0C]
 00475C6D    mov         dword ptr [edx+ecx*4+65],eax
>00475C71    jmp         004761E4
 00475C76    mov         eax,dword ptr [ebp-4]
 00475C79    call        004762D0
 00475C7E    cmp         al,83
>00475C80    jne         00475C95
 00475C82    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475C88    mov         edx,dword ptr [ecx+64]
 00475C8B    movsx       eax,byte ptr [ecx+edx+3C]
 00475C90    mov         dword ptr [ebp-14],eax
>00475C93    jmp         00475CA6
 00475C95    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475C9B    mov         edx,dword ptr [ecx+64]
 00475C9E    movzx       eax,byte ptr [ecx+edx+3C]
 00475CA3    mov         dword ptr [ebp-14],eax
 00475CA6    mov         ecx,dword ptr [ebp-14]
 00475CA9    mov         eax,dword ptr [ebp+0C]
 00475CAC    mov         dword ptr [eax+81],ecx
 00475CB2    lea         edx,[ebp-6C]
 00475CB5    mov         ecx,dword ptr [ebp-14]
 00475CB8    mov         eax,dword ptr [ebp-4]
 00475CBB    call        00474E94
>00475CC0    jmp         004761E4
 00475CC5    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475CCB    mov         edx,dword ptr [ecx+64]
 00475CCE    xor         eax,eax
 00475CD0    mov         al,byte ptr [ecx+edx+3E]
 00475CD4    mov         dword ptr [ebp-14],eax
 00475CD7    mov         edx,dword ptr [ebp-14]
 00475CDA    mov         ecx,dword ptr [ebp+0C]
 00475CDD    mov         dword ptr [ecx+81],edx
 00475CE3    lea         edx,[ebp-6C]
 00475CE6    mov         ecx,dword ptr [ebp-14]
 00475CE9    mov         eax,dword ptr [ebp-4]
 00475CEC    call        00474E94
>00475CF1    jmp         004761E4
 00475CF6    mov         eax,dword ptr [ebp-4]
 00475CF9    call        0047627C
 00475CFE    mov         byte ptr [ebp-0E],al
 00475D01    mov         dl,byte ptr [ebp-0E]
 00475D04    test        dl,dl
>00475D06    je          00475D1A
 00475D08    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475D0E    mov         edx,dword ptr [ecx+64]
 00475D11    mov         eax,dword ptr [ecx+edx+3C]
 00475D15    mov         dword ptr [ebp-14],eax
>00475D18    jmp         00475D2D
 00475D1A    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475D20    mov         edx,dword ptr [ecx+64]
 00475D23    xor         eax,eax
 00475D25    mov         ax,word ptr [ecx+edx+3C]
 00475D2A    mov         dword ptr [ebp-14],eax
 00475D2D    mov         ecx,dword ptr [ebp-14]
 00475D30    mov         eax,dword ptr [ebp+0C]
 00475D33    mov         dword ptr [eax+81],ecx
 00475D39    lea         edx,[ebp-6C]
 00475D3C    mov         ecx,dword ptr [ebp-14]
 00475D3F    mov         eax,dword ptr [ebp-4]
 00475D42    call        00474E94
>00475D47    jmp         004761E4
 00475D4C    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475D52    mov         edx,dword ptr [ecx+64]
 00475D55    xor         eax,eax
 00475D57    mov         ax,word ptr [ecx+edx+3C]
 00475D5C    mov         dword ptr [ebp-14],eax
 00475D5F    mov         edx,dword ptr [ebp-14]
 00475D62    mov         ecx,dword ptr [ebp+0C]
 00475D65    mov         dword ptr [ecx+81],edx
 00475D6B    lea         edx,[ebp-6C]
 00475D6E    mov         ecx,dword ptr [ebp-14]
 00475D71    mov         eax,dword ptr [ebp-4]
 00475D74    call        00474E94
>00475D79    jmp         004761E4
 00475D7E    mov         eax,dword ptr [ebp-4]
 00475D81    call        00474F1C
 00475D86    mov         dword ptr [ebp-18],eax
 00475D89    mov         edx,dword ptr [ebp-18]
 00475D8C    mov         ecx,dword ptr [ebp+0C]
 00475D8F    mov         dword ptr [ecx+81],edx
 00475D95    push        dword ptr [ebp-18]
 00475D98    push        6B2859
 00475D9D    lea         eax,[ebp-6C]
 00475DA0    push        eax
 00475DA1    call        006734B4
 00475DA6    add         esp,0C
>00475DA9    jmp         004761E4
 00475DAE    mov         eax,dword ptr [ebp-4]
 00475DB1    call        00476260
 00475DB6    mov         byte ptr [ebp-0D],al
 00475DB9    mov         dl,byte ptr [ebp-0D]
 00475DBC    test        dl,dl
>00475DBE    je          00475DF6
 00475DC0    push        dword ptr [ebp+10]
 00475DC3    mov         ecx,dword ptr [ebp-0C]
 00475DC6    cmp         ecx,0D
 00475DC9    sete        al
 00475DCC    and         eax,1
 00475DCF    push        eax
 00475DD0    mov         edx,dword ptr [ebp-0C]
 00475DD3    cmp         edx,1B
 00475DD6    sete        cl
 00475DD9    and         ecx,1
 00475DDC    push        ecx
 00475DDD    push        dword ptr [ebp+0C]
 00475DE0    push        dword ptr [ebp+8]
 00475DE3    lea         ecx,[ebp-6C]
 00475DE6    mov         edx,dword ptr [ebp-8]
 00475DE9    mov         eax,dword ptr [ebp-4]
 00475DEC    call        00475338
>00475DF1    jmp         004761E4
 00475DF6    push        dword ptr [ebp+10]
 00475DF9    mov         eax,dword ptr [ebp-0C]
 00475DFC    cmp         eax,0D
 00475DFF    sete        dl
 00475E02    and         edx,1
 00475E05    push        edx
 00475E06    mov         ecx,dword ptr [ebp-0C]
 00475E09    cmp         ecx,1B
 00475E0C    sete        al
 00475E0F    and         eax,1
 00475E12    push        eax
 00475E13    push        dword ptr [ebp+0C]
 00475E16    push        dword ptr [ebp+8]
 00475E19    lea         ecx,[ebp-6C]
 00475E1C    mov         edx,dword ptr [ebp-8]
 00475E1F    mov         eax,dword ptr [ebp-4]
 00475E22    call        0047572C
>00475E27    jmp         004761E4
 00475E2C    mov         eax,dword ptr [ebp-4]
 00475E2F    call        00476310
 00475E34    push        eax
 00475E35    push        6B285F
 00475E3A    lea         edx,[ebp-6C]
 00475E3D    push        edx
 00475E3E    call        006734B4
 00475E43    add         esp,0C
>00475E46    jmp         004761E4
 00475E4B    mov         eax,dword ptr [ebp-4]
 00475E4E    call        00476310
 00475E53    mov         dword ptr [ebp-24],eax
 00475E56    push        dword ptr [ebp+10]
 00475E59    lea         edx,[ebp-6C]
 00475E5C    mov         ecx,dword ptr [ebp-24]
 00475E5F    mov         eax,dword ptr [ebp-4]
 00475E62    call        00474DEC
 00475E67    mov         dword ptr [ebp-20],eax
 00475E6A    mov         edx,dword ptr [ebp-20]
 00475E6D    mov         ecx,dword ptr [ebp-24]
 00475E70    add         edx,ecx
 00475E72    mov         eax,dword ptr [ebp-8]
 00475E75    mov         ecx,dword ptr [ebp+0C]
 00475E78    mov         dword ptr [ecx+eax*4+65],edx
>00475E7C    jmp         004761E4
 00475E81    mov         eax,dword ptr [ebp-4]
 00475E84    call        00476310
 00475E89    mov         dword ptr [ebp-24],eax
 00475E8C    mov         edx,dword ptr [ebp-24]
 00475E8F    add         edx,18
 00475E92    mov         ecx,dword ptr [ebp-8]
 00475E95    mov         eax,dword ptr [ebp+0C]
 00475E98    mov         dword ptr [eax+ecx*4+65],edx
 00475E9C    mov         edx,dword ptr [ebp-24]
 00475E9F    push        dword ptr [edx*4+6B25E0]
 00475EA6    push        6B2864
 00475EAB    lea         ecx,[ebp-6C]
 00475EAE    push        ecx
 00475EAF    call        006734B4
 00475EB4    add         esp,0C
>00475EB7    jmp         004761E4
 00475EBC    lea         edx,[ebp-6C]
 00475EBF    mov         ecx,dword ptr [ebp+0C]
 00475EC2    mov         eax,dword ptr [ebp-4]
 00475EC5    call        00475054
 00475ECA    mov         eax,dword ptr [ebp-4]
 00475ECD    call        00476260
 00475ED2    mov         byte ptr [ebp-0D],al
 00475ED5    mov         dl,byte ptr [ebp-0D]
 00475ED8    test        dl,dl
>00475EDA    je          00475EEE
 00475EDC    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475EE2    mov         edx,dword ptr [ecx+64]
 00475EE5    mov         eax,dword ptr [ecx+edx+3C]
 00475EE9    mov         dword ptr [ebp-14],eax
>00475EEC    jmp         00475F01
 00475EEE    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00475EF4    mov         edx,dword ptr [ecx+64]
 00475EF7    xor         eax,eax
 00475EF9    mov         ax,word ptr [ecx+edx+3C]
 00475EFE    mov         dword ptr [ebp-14],eax
 00475F01    push        dword ptr [ebp-14]
 00475F04    push        6B2867
 00475F09    lea         ecx,[ebp-6C]
 00475F0C    push        ecx
 00475F0D    call        0066FAB4
 00475F12    pop         ecx
 00475F13    lea         edx,[ebp-6C]
 00475F16    add         eax,edx
 00475F18    push        eax
 00475F19    call        006734B4
 00475F1E    add         esp,0C
 00475F21    mov         eax,dword ptr [ebp-14]
 00475F24    mov         ecx,dword ptr [ebp+0C]
 00475F27    mov         dword ptr [ecx+7D],eax
>00475F2A    jmp         004761E4
 00475F2F    mov         eax,dword ptr [ebp+10]
 00475F32    push        dword ptr [eax*4+6B2580]
 00475F39    lea         edx,[ebp-6C]
 00475F3C    push        edx
 00475F3D    call        0066FA84
 00475F42    add         esp,8
 00475F45    mov         ecx,dword ptr [ebp-8]
 00475F48    mov         eax,dword ptr [ebp+0C]
 00475F4B    mov         edx,dword ptr [ebp+10]
 00475F4E    mov         dword ptr [eax+ecx*4+65],edx
>00475F52    jmp         004761E4
 00475F57    mov         ecx,dword ptr [ebp+10]
 00475F5A    mov         dword ptr [ebp-24],ecx
 00475F5D    push        0
 00475F5F    lea         edx,[ebp-6C]
 00475F62    mov         ecx,dword ptr [ebp-24]
 00475F65    mov         eax,dword ptr [ebp-4]
 00475F68    call        00474DEC
 00475F6D    mov         dword ptr [ebp-20],eax
 00475F70    mov         eax,dword ptr [ebp-20]
 00475F73    mov         edx,dword ptr [ebp-24]
 00475F76    add         eax,edx
 00475F78    mov         ecx,dword ptr [ebp-8]
 00475F7B    mov         edx,dword ptr [ebp+0C]
 00475F7E    mov         dword ptr [edx+ecx*4+65],eax
>00475F82    jmp         004761E4
 00475F87    mov         eax,dword ptr [ebp+10]
 00475F8A    push        dword ptr [eax*4+6B2580]
 00475F91    lea         ecx,[ebp-6C]
 00475F94    push        ecx
 00475F95    call        0066FA84
 00475F9A    add         esp,8
 00475F9D    mov         eax,dword ptr [ebp-8]
 00475FA0    mov         edx,dword ptr [ebp+0C]
 00475FA3    mov         ecx,dword ptr [ebp+10]
 00475FA6    mov         dword ptr [edx+eax*4+65],ecx
>00475FAA    jmp         004761E4
 00475FAF    push        6B286F
 00475FB4    lea         eax,[ebp-6C]
 00475FB7    push        eax
 00475FB8    call        0066FA84
 00475FBD    add         esp,8
 00475FC0    mov         edx,dword ptr [ebp-8]
 00475FC3    mov         ecx,dword ptr [ebp+0C]
 00475FC6    mov         dword ptr [ecx+edx*4+65],1E
>00475FCE    jmp         004761E4
 00475FD3    mov         eax,dword ptr [ebp-4]
 00475FD6    call        00476338
 00475FDB    mov         dword ptr [ebp-28],eax
 00475FDE    push        dword ptr [ebp-28]
 00475FE1    push        6B2872
 00475FE6    lea         edx,[ebp-6C]
 00475FE9    push        edx
 00475FEA    call        006734B4
 00475FEF    add         esp,0C
 00475FF2    mov         ecx,dword ptr [ebp-28]
 00475FF5    add         ecx,1E
 00475FF8    mov         eax,dword ptr [ebp-8]
 00475FFB    mov         edx,dword ptr [ebp+0C]
 00475FFE    mov         dword ptr [edx+eax*4+65],ecx
>00476002    jmp         004761E4
 00476007    mov         ecx,dword ptr [ebp+10]
 0047600A    push        dword ptr [ecx*4+6B25E0]
 00476011    lea         eax,[ebp-6C]
 00476014    push        eax
 00476015    call        0066FA84
 0047601A    add         esp,8
 0047601D    mov         edx,dword ptr [ebp+10]
 00476020    add         edx,18
 00476023    mov         ecx,dword ptr [ebp-8]
 00476026    mov         eax,dword ptr [ebp+0C]
 00476029    mov         dword ptr [eax+ecx*4+65],edx
>0047602D    jmp         004761E4
 00476032    mov         eax,dword ptr [ebp-4]
 00476035    call        00476310
 0047603A    push        eax
 0047603B    push        6B2879
 00476040    lea         edx,[ebp-6C]
 00476043    push        edx
 00476044    call        006734B4
 00476049    add         esp,0C
>0047604C    jmp         004761E4
 00476051    push        dword ptr [ebp+0C]
 00476054    push        dword ptr [ebp+8]
 00476057    xor         ecx,ecx
 00476059    mov         edx,dword ptr [ebp+10]
 0047605C    mov         eax,dword ptr [ebp-4]
 0047605F    call        00475220
 00476064    lea         edx,[ebp-6C]
 00476067    mov         ecx,dword ptr [ebp+0C]
 0047606A    mov         eax,dword ptr [ebp-4]
 0047606D    call        00475054
 00476072    mov         eax,dword ptr [ebp-4]
 00476075    call        00476260
 0047607A    mov         byte ptr [ebp-0D],al
 0047607D    mov         dl,byte ptr [ebp-0D]
 00476080    test        dl,dl
>00476082    je          004760B5
 00476084    mov         ecx,dword ptr [ebp+0C]
 00476087    mov         dword ptr [ecx+71],16
 0047608E    push        6B2883
 00476093    push        6B287E
 00476098    lea         eax,[ebp-6C]
 0047609B    push        eax
 0047609C    call        0066FAB4
 004760A1    pop         ecx
 004760A2    lea         edx,[ebp-6C]
 004760A5    add         eax,edx
 004760A7    push        eax
 004760A8    call        006734B4
 004760AD    add         esp,0C
>004760B0    jmp         004761E4
 004760B5    mov         ecx,dword ptr [ebp+0C]
 004760B8    mov         dword ptr [ecx+71],0E
 004760BF    push        6B2887
 004760C4    lea         eax,[ebp-6C]
 004760C7    push        eax
 004760C8    call        0066F9A8
 004760CD    add         esp,8
>004760D0    jmp         004761E4
 004760D5    mov         eax,dword ptr [ebp-4]
 004760D8    call        00476310
 004760DD    push        eax
 004760DE    push        6B288C
 004760E3    lea         edx,[ebp-6C]
 004760E6    push        edx
 004760E7    call        006734B4
 004760EC    add         esp,0C
>004760EF    jmp         004761E4
 004760F4    push        dword ptr [ebp+0C]
 004760F7    push        dword ptr [ebp+8]
 004760FA    xor         ecx,ecx
 004760FC    mov         edx,dword ptr [ebp+10]
 004760FF    mov         eax,dword ptr [ebp-4]
 00476102    call        00475220
 00476107    mov         eax,dword ptr [ebp-4]
 0047610A    call        00476260
 0047610F    mov         byte ptr [ebp-0D],al
 00476112    mov         dl,byte ptr [ebp-0D]
 00476115    test        dl,dl
>00476117    je          0047613E
 00476119    mov         ecx,dword ptr [ebp+0C]
 0047611C    mov         dword ptr [ecx+71],17
 00476123    push        6B2897
 00476128    push        6B2892
 0047612D    lea         eax,[ebp-6C]
 00476130    push        eax
 00476131    call        006734B4
 00476136    add         esp,0C
>00476139    jmp         004761E4
 0047613E    mov         edx,dword ptr [ebp+0C]
 00476141    xor         ecx,ecx
 00476143    mov         dword ptr [edx+0AA],ecx
 00476149    mov         eax,dword ptr [ebp+0C]
 0047614C    mov         dword ptr [eax+71],0F
 00476153    push        6B289B
 00476158    lea         edx,[ebp-6C]
 0047615B    push        edx
 0047615C    call        0066FA84
 00476161    add         esp,8
>00476164    jmp         004761E4
 00476166    push        dword ptr [ebp+0C]
 00476169    push        dword ptr [ebp+8]
 0047616C    xor         ecx,ecx
 0047616E    mov         edx,1
 00476173    mov         eax,dword ptr [ebp-4]
 00476176    call        00475220
 0047617B    lea         edx,[ebp-6C]
 0047617E    mov         ecx,dword ptr [ebp+0C]
 00476181    mov         eax,dword ptr [ebp-4]
 00476184    call        00475054
 00476189    mov         eax,dword ptr [ebp-4]
 0047618C    call        00476260
 00476191    mov         byte ptr [ebp-0D],al
 00476194    mov         dl,byte ptr [ebp-0D]
 00476197    test        dl,dl
>00476199    je          004761C9
 0047619B    mov         ecx,dword ptr [ebp+0C]
 0047619E    mov         dword ptr [ecx+71],13
 004761A5    push        6B28A8
 004761AA    push        6B28A3
 004761AF    lea         eax,[ebp-6C]
 004761B2    push        eax
 004761B3    call        0066FAB4
 004761B8    pop         ecx
 004761B9    lea         edx,[ebp-6C]
 004761BC    add         eax,edx
 004761BE    push        eax
 004761BF    call        006734B4
 004761C4    add         esp,0C
>004761C7    jmp         004761E4
 004761C9    mov         ecx,dword ptr [ebp+0C]
 004761CC    mov         dword ptr [ecx+71],0B
 004761D3    push        6B28AC
 004761D8    lea         eax,[ebp-6C]
 004761DB    push        eax
 004761DC    call        0066F9A8
 004761E1    add         esp,8
 004761E4    mov         edx,dword ptr [ebp-8]
 004761E7    test        edx,edx
>004761E9    jne         00476214
 004761EB    lea         ecx,[ebp-6C]
 004761EE    push        ecx
 004761EF    mov         eax,dword ptr [ebp+0C]
 004761F2    add         eax,20
 004761F5    push        eax
 004761F6    call        0066FA84
 004761FB    add         esp,8
 004761FE    lea         edx,[ebp-6C]
 00476201    mov         eax,dword ptr [ebp-4]
 00476204    call        004748DC
 00476209    mov         edx,dword ptr [ebp+0C]
 0047620C    mov         byte ptr [edx+0AF],al
>00476212    jmp         00476244
 00476214    mov         ecx,dword ptr [ebp-8]
 00476217    dec         ecx
>00476218    jne         00476230
 0047621A    lea         edx,[ebp-6C]
 0047621D    mov         eax,dword ptr [ebp-4]
 00476220    call        004748DC
 00476225    mov         ecx,dword ptr [ebp+0C]
 00476228    mov         byte ptr [ecx+0B0],al
>0047622E    jmp         00476244
 00476230    lea         edx,[ebp-6C]
 00476233    mov         eax,dword ptr [ebp-4]
 00476236    call        004748DC
 0047623B    mov         ecx,dword ptr [ebp+0C]
 0047623E    mov         byte ptr [ecx+0B1],al
 00476244    mov         eax,dword ptr [ebp+8]
 00476247    test        eax,eax
>00476249    je          0047625A
 0047624B    lea         edx,[ebp-6C]
 0047624E    push        edx
 0047624F    push        dword ptr [ebp+8]
 00476252    call        0066F9A8
 00476257    add         esp,8
 0047625A    mov         esp,ebp
 0047625C    pop         ebp
 0047625D    ret         0C
end;*}

//00476260
{*function sub_00476260(?:?):?;
begin
 00476260    push        ebp
 00476261    mov         ebp,esp
 00476263    add         esp,0FFFFFFF8
 00476266    mov         dword ptr [ebp-4],eax
 00476269    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 0047626F    mov         al,byte ptr [ecx+50]
 00476272    mov         byte ptr [ebp-5],al
 00476275    mov         al,byte ptr [ebp-5]
 00476278    pop         ecx
 00476279    pop         ecx
 0047627A    pop         ebp
 0047627B    ret
end;*}

//0047627C
{*function sub_0047627C(?:?):?;
begin
 0047627C    push        ebp
 0047627D    mov         ebp,esp
 0047627F    add         esp,0FFFFFFF8
 00476282    mov         dword ptr [ebp-4],eax
 00476285    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 0047628B    mov         al,byte ptr [ecx+51]
 0047628E    mov         byte ptr [ebp-5],al
 00476291    mov         al,byte ptr [ebp-5]
 00476294    pop         ecx
 00476295    pop         ecx
 00476296    pop         ebp
 00476297    ret
end;*}

//00476298
{*function sub_00476298(?:?):?;
begin
 00476298    push        ebp
 00476299    mov         ebp,esp
 0047629B    add         esp,0FFFFFFF8
 0047629E    mov         dword ptr [ebp-4],eax
 004762A1    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 004762A7    mov         al,byte ptr [ecx+52]
 004762AA    mov         byte ptr [ebp-5],al
 004762AD    mov         al,byte ptr [ebp-5]
 004762B0    pop         ecx
 004762B1    pop         ecx
 004762B2    pop         ebp
 004762B3    ret
end;*}

//004762B4
{*function sub_004762B4(?:?):?;
begin
 004762B4    push        ebp
 004762B5    mov         ebp,esp
 004762B7    add         esp,0FFFFFFF8
 004762BA    mov         dword ptr [ebp-4],eax
 004762BD    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 004762C3    mov         al,byte ptr [ecx+53]
 004762C6    mov         byte ptr [ebp-5],al
 004762C9    mov         al,byte ptr [ebp-5]
 004762CC    pop         ecx
 004762CD    pop         ecx
 004762CE    pop         ebp
 004762CF    ret
end;*}

//004762D0
{*function sub_004762D0(?:?):?;
begin
 004762D0    push        ebp
 004762D1    mov         ebp,esp
 004762D3    add         esp,0FFFFFFF8
 004762D6    mov         dword ptr [ebp-4],eax
 004762D9    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 004762DF    mov         eax,dword ptr [ecx+58]
 004762E2    mov         al,byte ptr [ecx+eax+3C]
 004762E6    mov         byte ptr [ebp-5],al
 004762E9    mov         al,byte ptr [ebp-5]
 004762EC    pop         ecx
 004762ED    pop         ecx
 004762EE    pop         ebp
 004762EF    ret
end;*}

//004762F0
{*function sub_004762F0(?:?):?;
begin
 004762F0    push        ebp
 004762F1    mov         ebp,esp
 004762F3    add         esp,0FFFFFFF8
 004762F6    mov         dword ptr [ebp-4],eax
 004762F9    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 004762FF    mov         eax,dword ptr [ecx+58]
 00476302    mov         al,byte ptr [ecx+eax+3D]
 00476306    mov         byte ptr [ebp-5],al
 00476309    mov         al,byte ptr [ebp-5]
 0047630C    pop         ecx
 0047630D    pop         ecx
 0047630E    pop         ebp
 0047630F    ret
end;*}

//00476310
{*function sub_00476310(?:?):?;
begin
 00476310    push        ebp
 00476311    mov         ebp,esp
 00476313    add         esp,0FFFFFFF8
 00476316    mov         dword ptr [ebp-4],eax
 00476319    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 0047631F    mov         eax,dword ptr [ecx+5C]
 00476322    mov         al,byte ptr [ecx+eax+3C]
 00476326    shr         eax,3
 00476329    and         eax,7
 0047632C    mov         dword ptr [ebp-8],eax
 0047632F    mov         eax,dword ptr [ebp-8]
 00476332    pop         ecx
 00476333    pop         ecx
 00476334    pop         ebp
 00476335    ret
end;*}

//00476338
{*function sub_00476338(?:?):?;
begin
 00476338    push        ebp
 00476339    mov         ebp,esp
 0047633B    add         esp,0FFFFFFF8
 0047633E    mov         dword ptr [ebp-4],eax
 00476341    mov         ecx,dword ptr ds:[6ECBD8];0x0 gvar_006ECBD8
 00476347    mov         eax,dword ptr [ecx+5C]
 0047634A    mov         al,byte ptr [ecx+eax+3C]
 0047634E    and         eax,7
 00476351    mov         dword ptr [ebp-8],eax
 00476354    mov         eax,dword ptr [ebp-8]
 00476357    pop         ecx
 00476358    pop         ecx
 00476359    pop         ebp
 0047635A    ret
end;*}

//0047635C
{*function sub_0047635C(?:TAnalyzeThread; ?:?; ?:?; ?:?):?;
begin
 0047635C    push        ebp
 0047635D    mov         ebp,esp
 0047635F    add         esp,0FFFFFFD0
 00476362    mov         byte ptr [ebp-8],dl
 00476365    test        dl,dl
>00476367    jle         0047636E
 00476369    call        0067EF6C
 0047636E    mov         dword ptr [ebp-30],ecx
 00476371    mov         byte ptr [ebp-29],dl
 00476374    mov         dword ptr [ebp-4],eax
 00476377    mov         eax,6B2DBC
 0047637C    call        0066FECC
 00476381    mov         word ptr [ebp-18],8
 00476387    mov         cl,1
 00476389    xor         edx,edx
 0047638B    mov         eax,dword ptr [ebp-4]
 0047638E    call        0064FCD0
 00476393    add         dword ptr [ebp-0C],2
 00476397    mov         dl,2
 00476399    mov         eax,dword ptr [ebp-4]
 0047639C    call        0064FF5C
 004763A1    mov         edx,dword ptr [ebp-4]
 004763A4    mov         ecx,dword ptr [ebp-30]
 004763A7    mov         dword ptr [edx+30],ecx;TAnalyzeThread.?f30:dword
 004763AA    mov         eax,dword ptr [ebp-4]
 004763AD    mov         edx,dword ptr [ebp+0C]
 004763B0    mov         dword ptr [eax+34],edx;TAnalyzeThread.?f34:dword
 004763B3    mov         ecx,dword ptr [ebp-4]
 004763B6    mov         al,byte ptr [ebp+8]
 004763B9    mov         byte ptr [ecx+3C],al
 004763BC    mov         edx,dword ptr [ebp-4]
 004763BF    xor         ecx,ecx
 004763C1    mov         dword ptr [edx+38],ecx;TAnalyzeThread.?f38:dword
 004763C4    mov         eax,dword ptr [ebp-28]
 004763C7    mov         fs:[00000000],eax
 004763CD    mov         eax,dword ptr [ebp-4]
 004763D0    mov         dl,byte ptr [ebp-29]
 004763D3    test        dl,dl
>004763D5    je          004763DC
 004763D7    call        0067EF79
 004763DC    mov         esp,ebp
 004763DE    pop         ebp
 004763DF    ret         8
end;*}

//004763E4
destructor TAnalyzeThread.Destroy;
begin
{*
 004763E4    push        ebp
 004763E5    mov         ebp,esp
 004763E7    add         esp,0FFFFFFD4
 004763EA    call        0067EF81
 004763EF    mov         byte ptr [ebp-29],dl
 004763F2    mov         dword ptr [ebp-4],eax
 004763F5    mov         eax,6B2DE0
 004763FA    call        0066FECC
 004763FF    mov         dword ptr [ebp-0C],2
 00476406    mov         dl,byte ptr [ebp-29]
 00476409    test        dl,dl
>0047640B    jl          00476421
 0047640D    mov         word ptr [ebp-18],8
 00476413    sub         dword ptr [ebp-0C],2
 00476417    xor         edx,edx
 00476419    mov         eax,dword ptr [ebp-4]
 0047641C    call        TThread.Destroy
 00476421    mov         ecx,dword ptr [ebp-28]
 00476424    mov         dword ptr fs:[0],ecx
 0047642B    mov         al,byte ptr [ebp-29]
 0047642E    test        al,al
>00476430    jle         0047643A
 00476432    mov         eax,dword ptr [ebp-4]
 00476435    call        0067EF74
 0047643A    mov         esp,ebp
 0047643C    pop         ebp
 0047643D    ret
*}
end;

//00476440
{*function sub_00476440(?:?):?;
begin
 00476440    push        ebp
 00476441    mov         ebp,esp
 00476443    push        ecx
 00476444    mov         dword ptr [ebp-4],eax
 00476447    mov         eax,dword ptr [ebp-4]
 0047644A    mov         eax,dword ptr [eax+14]
 0047644D    pop         ecx
 0047644E    pop         ebp
 0047644F    ret
end;*}

//00476450
procedure sub_00476450;
begin
{*
 00476450    push        ebp
 00476451    mov         ebp,esp
 00476453    add         esp,0FFFFFFD4
 00476456    push        ebx
 00476457    push        esi
 00476458    push        edi
 00476459    mov         dword ptr [ebp-2C],eax
 0047645C    mov         eax,6B2E14
 00476461    call        0066FECC
 00476466    mov         word ptr [ebp-18],8
 0047646C    mov         edx,dword ptr [ebp-2C]
 0047646F    mov         cl,byte ptr [edx+3C];TAnalyzeThread.?f3C:byte
 00476472    test        cl,cl
>00476474    je          004766D2
 0047647A    mov         eax,dword ptr [ebp-2C]
 0047647D    call        00476C0C
 00476482    mov         edx,dword ptr [ebp-2C]
 00476485    mov         dword ptr [edx+14],1;TAnalyzeThread.FReturnValue:Integer
 0047648C    mov         ecx,dword ptr ds:[6ECB40];0x0 gvar_006ECB40
 00476492    mov         dword ptr ds:[6ECB70],ecx;gvar_006ECB70
 00476498    mov         eax,dword ptr [ebp-2C]
 0047649B    call        00476B14
 004764A0    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004764A6    cmp         edx,2
>004764A9    je          004764C5
 004764AB    mov         eax,dword ptr [ebp-2C]
 004764AE    call        00476E6C
 004764B3    mov         edx,dword ptr [ebp-2C]
 004764B6    mov         dword ptr [edx+14],2;TAnalyzeThread.FReturnValue:Integer
 004764BD    mov         eax,dword ptr [ebp-2C]
 004764C0    call        00476A40
 004764C5    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004764CB    cmp         edx,2
>004764CE    jne         004764DA
 004764D0    mov         eax,dword ptr [ebp-2C]
 004764D3    call        00478874
>004764D8    jmp         004764E2
 004764DA    mov         eax,dword ptr [ebp-2C]
 004764DD    call        00479218
 004764E2    mov         edx,dword ptr [ebp-2C]
 004764E5    mov         dword ptr [edx+14],3;TAnalyzeThread.FReturnValue:Integer
 004764EC    mov         eax,dword ptr [ebp-2C]
 004764EF    call        00476AB4
 004764F4    mov         eax,dword ptr [ebp-2C]
 004764F7    call        00476A84
 004764FC    mov         eax,dword ptr [ebp-2C]
 004764FF    call        00476B14
 00476504    mov         eax,dword ptr [ebp-2C]
 00476507    call        0047A110
 0047650C    mov         edx,dword ptr [ebp-2C]
 0047650F    mov         dword ptr [edx+14],4;TAnalyzeThread.FReturnValue:Integer
 00476516    mov         eax,dword ptr [ebp-2C]
 00476519    call        00476B14
 0047651E    mov         eax,dword ptr [ebp-2C]
 00476521    call        0047C2C8
 00476526    mov         edx,dword ptr [ebp-2C]
 00476529    mov         dword ptr [edx+14],5;TAnalyzeThread.FReturnValue:Integer
 00476530    mov         eax,dword ptr [ebp-2C]
 00476533    call        00476B14
 00476538    mov         eax,dword ptr [ebp-2C]
 0047653B    call        0047E788
 00476540    mov         edx,dword ptr [ebp-2C]
 00476543    mov         dword ptr [edx+14],6;TAnalyzeThread.FReturnValue:Integer
 0047654A    mov         eax,dword ptr [ebp-2C]
 0047654D    call        00476AB4
 00476552    mov         eax,dword ptr [ebp-2C]
 00476555    call        00476B14
 0047655A    mov         eax,dword ptr [ebp-2C]
 0047655D    call        00476B7C
 00476562    mov         eax,dword ptr [ebp-2C]
 00476565    call        0047E9B0
 0047656A    mov         edx,dword ptr [ebp-2C]
 0047656D    mov         dword ptr [edx+14],7;TAnalyzeThread.FReturnValue:Integer
 00476574    mov         eax,dword ptr [ebp-2C]
 00476577    call        00476A40
 0047657C    mov         eax,dword ptr [ebp-2C]
 0047657F    call        0047FD40
 00476584    mov         edx,dword ptr [ebp-2C]
 00476587    mov         dword ptr [edx+14],8;TAnalyzeThread.FReturnValue:Integer
 0047658E    mov         eax,dword ptr [ebp-2C]
 00476591    call        00480014
 00476596    mov         edx,dword ptr [ebp-2C]
 00476599    mov         dword ptr [edx+14],9;TAnalyzeThread.FReturnValue:Integer
 004765A0    mov         eax,dword ptr [ebp-2C]
 004765A3    call        00480468
 004765A8    mov         edx,dword ptr [ebp-2C]
 004765AB    mov         dword ptr [edx+14],0A;TAnalyzeThread.FReturnValue:Integer
 004765B2    mov         eax,dword ptr [ebp-2C]
 004765B5    call        00476B14
 004765BA    mov         eax,dword ptr [ebp-2C]
 004765BD    call        00476B4C
 004765C2    mov         eax,dword ptr [ebp-2C]
 004765C5    call        0047DCA4
 004765CA    mov         edx,dword ptr [ebp-2C]
 004765CD    mov         dword ptr [edx+14],0B;TAnalyzeThread.FReturnValue:Integer
 004765D4    mov         eax,dword ptr [ebp-2C]
 004765D7    call        00476B14
 004765DC    mov         eax,dword ptr [ebp-2C]
 004765DF    call        00480850
 004765E4    mov         edx,dword ptr [ebp-2C]
 004765E7    mov         dword ptr [edx+14],0C;TAnalyzeThread.FReturnValue:Integer
 004765EE    mov         eax,dword ptr [ebp-2C]
 004765F1    call        00476B14
 004765F6    mov         eax,dword ptr [ebp-2C]
 004765F9    call        0047A310
 004765FE    mov         edx,dword ptr [ebp-2C]
 00476601    mov         dword ptr [edx+14],0D;TAnalyzeThread.FReturnValue:Integer
 00476608    mov         eax,dword ptr [ebp-2C]
 0047660B    call        00476B14
 00476610    mov         eax,dword ptr [ebp-2C]
 00476613    call        0047AA68
 00476618    mov         edx,dword ptr [ebp-2C]
 0047661B    mov         dword ptr [edx+14],0E;TAnalyzeThread.FReturnValue:Integer
 00476622    mov         eax,dword ptr [ebp-2C]
 00476625    call        00476B14
 0047662A    mov         dl,1
 0047662C    mov         eax,dword ptr [ebp-2C]
 0047662F    call        0048071C
 00476634    mov         edx,dword ptr [ebp-2C]
 00476637    mov         dword ptr [edx+14],0F;TAnalyzeThread.FReturnValue:Integer
 0047663E    mov         eax,dword ptr [ebp-2C]
 00476641    call        00476B14
 00476646    mov         eax,dword ptr [ebp-2C]
 00476649    call        00476AE4
 0047664E    mov         eax,dword ptr [ebp-2C]
 00476651    call        00481E7C
 00476656    mov         edx,dword ptr [ebp-2C]
 00476659    mov         dword ptr [edx+14],10;TAnalyzeThread.FReturnValue:Integer
 00476660    mov         eax,dword ptr [ebp-2C]
 00476663    call        00476B14
 00476668    xor         edx,edx
 0047666A    mov         eax,dword ptr [ebp-2C]
 0047666D    call        0048071C
 00476672    mov         edx,dword ptr [ebp-2C]
 00476675    mov         dword ptr [edx+14],11;TAnalyzeThread.FReturnValue:Integer
 0047667C    mov         eax,dword ptr [ebp-2C]
 0047667F    call        00476B14
 00476684    mov         eax,dword ptr [ebp-2C]
 00476687    call        00476AE4
 0047668C    mov         eax,dword ptr [ebp-2C]
 0047668F    call        00481E7C
 00476694    mov         edx,dword ptr [ebp-2C]
 00476697    mov         dword ptr [edx+14],12;TAnalyzeThread.FReturnValue:Integer
 0047669E    mov         eax,dword ptr [ebp-2C]
 004766A1    call        00476B14
 004766A6    xor         edx,edx
 004766A8    mov         eax,dword ptr [ebp-2C]
 004766AB    call        0048071C
 004766B0    mov         edx,dword ptr [ebp-2C]
 004766B3    mov         dword ptr [edx+14],13;TAnalyzeThread.FReturnValue:Integer
 004766BA    mov         eax,dword ptr [ebp-2C]
 004766BD    call        00476B14
 004766C2    mov         eax,dword ptr [ebp-2C]
 004766C5    call        00476AE4
 004766CA    mov         eax,dword ptr [ebp-2C]
 004766CD    call        00476BDC
 004766D2    mov         eax,dword ptr [ebp-2C]
 004766D5    call        00481CC0
 004766DA    mov         edx,dword ptr [ebp-2C]
 004766DD    mov         dword ptr [edx+14],14;TAnalyzeThread.FReturnValue:Integer
 004766E4    mov         eax,dword ptr [ebp-2C]
 004766E7    call        00476BAC
 004766EC    mov         word ptr [ebp-18],0
>004766F2    jmp         0047670F
 004766F4    mov         edx,dword ptr ds:[6E9DCC];^Application:TApplication
 004766FA    mov         eax,dword ptr [edx]
 004766FC    mov         edx,dword ptr [ebp-4]
 004766FF    call        005D874C
 00476704    mov         word ptr [ebp-18],10
 0047670A    call        0067AF32
 0047670F    push        0
 00476711    push        0C
 00476713    push        464
 00476718    mov         ecx,dword ptr [ebp-2C]
 0047671B    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 0047671E    call        TWinControl.GetHandle
 00476723    push        eax
 00476724    call        USER32.PostMessageA
 00476729    mov         edx,dword ptr [ebp-28]
 0047672C    mov         dword ptr fs:[0],edx
 00476733    pop         edi
 00476734    pop         esi
 00476735    pop         ebx
 00476736    mov         esp,ebp
 00476738    pop         ebp
 00476739    ret
*}
end;

//0047673C
{*function sub_0047673C(?:TAnalyzeThread; ?:?; ?:?):?;
begin
 0047673C    push        ebp
 0047673D    mov         ebp,esp
 0047673F    add         esp,0FFFFFFC0
 00476742    mov         dword ptr [ebp-34],ecx
 00476745    mov         dword ptr [ebp-30],edx
 00476748    mov         dword ptr [ebp-2C],eax
 0047674B    mov         eax,6B2E38
 00476750    call        0066FECC
 00476755    mov         dword ptr [ebp-38],1
 0047675C    mov         eax,dword ptr [ebp-30]
 0047675F    cdq
 00476760    idiv        eax,dword ptr [ebp-38]
 00476763    mov         dword ptr [ebp-3C],eax
 00476766    mov         ecx,dword ptr [ebp-3C]
 00476769    imul        ecx,dword ptr [ebp-38]
 0047676D    mov         eax,dword ptr [ebp-30]
 00476770    cmp         ecx,eax
>00476772    jge         00476777
 00476774    inc         dword ptr [ebp-3C]
 00476777    mov         edx,dword ptr [ebp-30]
 0047677A    cmp         edx,800
>00476780    jle         004767C2
 00476782    mov         dword ptr [ebp-38],100
 00476789    mov         ecx,dword ptr [ebp-3C]
 0047678C    cmp         ecx,800
>00476792    jle         004767C2
 00476794    mov         eax,dword ptr [ebp-38]
 00476797    add         eax,eax
 00476799    mov         dword ptr [ebp-38],eax
 0047679C    mov         eax,dword ptr [ebp-30]
 0047679F    cdq
 004767A0    idiv        eax,dword ptr [ebp-38]
 004767A3    mov         dword ptr [ebp-3C],eax
 004767A6    mov         ecx,dword ptr [ebp-3C]
 004767A9    imul        ecx,dword ptr [ebp-38]
 004767AD    mov         eax,dword ptr [ebp-30]
 004767B0    cmp         ecx,eax
>004767B2    jge         004767B7
 004767B4    inc         dword ptr [ebp-3C]
 004767B7    mov         edx,dword ptr [ebp-3C]
 004767BA    cmp         edx,800
>004767C0    jg          00476794
 004767C2    push        8
 004767C4    call        0066EAE4
 004767C9    pop         ecx
 004767CA    mov         dword ptr [ebp-4],eax
 004767CD    test        eax,eax
>004767CF    je          004767F3
 004767D1    mov         word ptr [ebp-18],14
 004767D7    push        dword ptr [ebp-34]
 004767DA    push        dword ptr [ebp-3C]
 004767DD    push        dword ptr [ebp-4]
 004767E0    call        00476828
 004767E5    add         esp,0C
 004767E8    mov         word ptr [ebp-18],8
 004767EE    mov         edx,dword ptr [ebp-4]
>004767F1    jmp         004767F6
 004767F3    mov         edx,dword ptr [ebp-4]
 004767F6    mov         dword ptr [ebp-40],edx
 004767F9    push        dword ptr [ebp-40]
 004767FC    push        0
 004767FE    push        464
 00476803    mov         eax,dword ptr [ebp-2C]
 00476806    mov         eax,dword ptr [eax+34]
 00476809    call        TWinControl.GetHandle
 0047680E    push        eax
 0047680F    call        USER32.SendMessageA
 00476814    mov         eax,dword ptr [ebp-38]
 00476817    dec         eax
 00476818    mov         edx,dword ptr [ebp-28]
 0047681B    mov         dword ptr fs:[0],edx
 00476822    mov         esp,ebp
 00476824    pop         ebp
 00476825    ret
end;*}

//00476828
{*function sub_00476828(?:?; ?:?; ?:?):?;
begin
 00476828    push        ebp
 00476829    mov         ebp,esp
 0047682B    add         esp,0FFFFFFDC
 0047682E    mov         eax,6B4D14
 00476833    call        0066FECC
 00476838    mov         word ptr [ebp-14],8
 0047683E    mov         edx,dword ptr [ebp+8]
 00476841    mov         ecx,dword ptr [ebp+0C]
 00476844    mov         dword ptr [edx],ecx
 00476846    mov         eax,dword ptr [ebp+8]
 00476849    add         eax,4
 0047684C    mov         edx,dword ptr [ebp+10]
 0047684F    call        0067DAEC
 00476854    inc         dword ptr [ebp-8]
 00476857    mov         ecx,dword ptr [ebp-24]
 0047685A    mov         dword ptr fs:[0],ecx
 00476861    mov         eax,dword ptr [ebp+8]
 00476864    mov         esp,ebp
 00476866    pop         ebp
 00476867    ret
end;*}

//0047688C
{*function sub_0047688C(?:TAnalyzeThread):?;
begin
 0047688C    push        ebp
 0047688D    mov         ebp,esp
 0047688F    push        ecx
 00476890    mov         dword ptr [ebp-4],eax
 00476893    mov         eax,dword ptr [ebp-4]
 00476896    mov         dl,byte ptr [eax+0D]
 00476899    test        dl,dl
>0047689B    jne         004768B7
 0047689D    push        0
 0047689F    push        1
 004768A1    push        464
 004768A6    mov         ecx,dword ptr [ebp-4]
 004768A9    mov         eax,dword ptr [ecx+34]
 004768AC    call        TWinControl.GetHandle
 004768B1    push        eax
 004768B2    call        USER32.SendMessageA
 004768B7    pop         ecx
 004768B8    pop         ebp
 004768B9    ret
end;*}

//004768BC
procedure sub_004768BC(?:TAnalyzeThread);
begin
{*
 004768BC    push        ebp
 004768BD    mov         ebp,esp
 004768BF    push        ecx
 004768C0    mov         dword ptr [ebp-4],eax
 004768C3    pop         ecx
 004768C4    pop         ebp
 004768C5    ret
*}
end;

//004768C8
{*procedure sub_004768C8(?:TAnalyzeThread; ?:?);
begin
 004768C8    push        ebp
 004768C9    mov         ebp,esp
 004768CB    add         esp,0FFFFFFC8
 004768CE    mov         dword ptr [ebp-34],edx
 004768D1    mov         dword ptr [ebp-30],eax
 004768D4    mov         eax,6B2E84
 004768D9    call        0066FECC
 004768DE    mov         edx,dword ptr [ebp-30]
 004768E1    mov         cl,byte ptr [edx+0D]
 004768E4    test        cl,cl
>004768E6    jne         0047696F
 004768EC    push        8
 004768EE    call        0066EAE4
 004768F3    pop         ecx
 004768F4    mov         dword ptr [ebp-8],eax
 004768F7    test        eax,eax
>004768F9    je          00476932
 004768FB    mov         word ptr [ebp-1C],20
 00476901    lea         eax,[ebp-4]
 00476904    call        00401EA8
 00476909    mov         edx,eax
 0047690B    inc         dword ptr [ebp-10]
 0047690E    mov         eax,dword ptr [ebp-34]
 00476911    call        0053188C
 00476916    lea         edx,[ebp-4]
 00476919    push        edx
 0047691A    push        0
 0047691C    push        dword ptr [ebp-8]
 0047691F    call        00476828
 00476924    add         esp,0C
 00476927    mov         word ptr [ebp-1C],14
 0047692D    mov         ecx,dword ptr [ebp-8]
>00476930    jmp         00476935
 00476932    mov         ecx,dword ptr [ebp-8]
 00476935    mov         dword ptr [ebp-38],ecx
 00476938    dec         dword ptr [ebp-10]
 0047693B    lea         eax,[ebp-4]
 0047693E    mov         edx,2
 00476943    call        0067DCA0
 00476948    mov         word ptr [ebp-1C],8
 0047694E    push        dword ptr [ebp-38]
 00476951    push        2
 00476953    push        464
 00476958    mov         eax,dword ptr [ebp-30]
 0047695B    mov         eax,dword ptr [eax+34]
 0047695E    call        TWinControl.GetHandle
 00476963    push        eax
 00476964    call        USER32.SendMessageA
 00476969    mov         word ptr [ebp-1C],0
 0047696F    mov         edx,dword ptr [ebp-2C]
 00476972    mov         dword ptr fs:[0],edx
 00476979    mov         esp,ebp
 0047697B    pop         ebp
 0047697C    ret
end;*}

//00476980
procedure sub_00476980(?:TAnalyzeThread; ?:AnsiString);
begin
{*
 00476980    push        ebp
 00476981    mov         ebp,esp
 00476983    add         esp,0FFFFFFCC
 00476986    mov         dword ptr [ebp-30],edx
 00476989    mov         dword ptr [ebp-2C],eax
 0047698C    mov         eax,6B2EC0
 00476991    call        0066FECC
 00476996    mov         edx,dword ptr [ebp-2C]
 00476999    mov         cl,byte ptr [edx+0D]
 0047699C    test        cl,cl
>0047699E    jne         004769F1
 004769A0    push        8
 004769A2    call        0066EAE4
 004769A7    pop         ecx
 004769A8    mov         dword ptr [ebp-4],eax
 004769AB    test        eax,eax
>004769AD    je          004769D0
 004769AF    mov         word ptr [ebp-18],14
 004769B5    push        dword ptr [ebp-30]
 004769B8    push        0
 004769BA    push        dword ptr [ebp-4]
 004769BD    call        00476828
 004769C2    add         esp,0C
 004769C5    mov         word ptr [ebp-18],8
 004769CB    mov         edx,dword ptr [ebp-4]
>004769CE    jmp         004769D3
 004769D0    mov         edx,dword ptr [ebp-4]
 004769D3    mov         dword ptr [ebp-34],edx
 004769D6    push        dword ptr [ebp-34]
 004769D9    push        2
 004769DB    push        464
 004769E0    mov         eax,dword ptr [ebp-2C]
 004769E3    mov         eax,dword ptr [eax+34]
 004769E6    call        TWinControl.GetHandle
 004769EB    push        eax
 004769EC    call        USER32.SendMessageA
 004769F1    mov         edx,dword ptr [ebp-28]
 004769F4    mov         dword ptr fs:[0],edx
 004769FB    mov         esp,ebp
 004769FD    pop         ebp
 004769FE    ret
*}
end;

//00476A00
{*procedure sub_00476A00(?:TAnalyzeThread; ?:?);
begin
 00476A00    push        ebp
 00476A01    mov         ebp,esp
 00476A03    add         esp,0FFFFFFF8
 00476A06    mov         dword ptr [ebp-8],edx
 00476A09    mov         dword ptr [ebp-4],eax
 00476A0C    mov         eax,dword ptr [ebp-4]
 00476A0F    mov         dl,byte ptr [eax+0D]
 00476A12    test        dl,dl
>00476A14    jne         00476A3A
 00476A16    mov         ecx,dword ptr [ebp-4]
 00476A19    inc         dword ptr [ecx+38]
 00476A1C    mov         eax,dword ptr [ebp-4]
 00476A1F    mov         edx,dword ptr [eax+38]
 00476A22    cmp         edx,0A
>00476A25    jne         00476A3A
 00476A27    mov         edx,dword ptr [ebp-8]
 00476A2A    mov         eax,dword ptr [ebp-4]
 00476A2D    call        004768C8
 00476A32    mov         ecx,dword ptr [ebp-4]
 00476A35    xor         eax,eax
 00476A37    mov         dword ptr [ecx+38],eax
 00476A3A    pop         ecx
 00476A3B    pop         ecx
 00476A3C    pop         ebp
 00476A3D    ret
end;*}

//00476A40
procedure sub_00476A40(?:TAnalyzeThread);
begin
{*
 00476A40    push        ebp
 00476A41    mov         ebp,esp
 00476A43    add         esp,0FFFFFFF8
 00476A46    mov         dword ptr [ebp-4],eax
 00476A49    mov         eax,dword ptr [ebp-4]
 00476A4C    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00476A4F    test        dl,dl
>00476A51    jne         00476A80
 00476A53    mov         ecx,dword ptr [ebp-4]
 00476A56    mov         eax,dword ptr [ecx+14]
 00476A59    cmp         eax,13
 00476A5C    sete        dl
 00476A5F    and         edx,1
 00476A62    mov         dword ptr [ebp-8],edx
 00476A65    push        dword ptr [ebp-8]
 00476A68    push        3
 00476A6A    push        464
 00476A6F    mov         ecx,dword ptr [ebp-4]
 00476A72    mov         eax,dword ptr [ecx+30]
 00476A75    call        TWinControl.GetHandle
 00476A7A    push        eax
 00476A7B    call        USER32.SendMessageA
 00476A80    pop         ecx
 00476A81    pop         ecx
 00476A82    pop         ebp
 00476A83    ret
*}
end;

//00476A84
procedure sub_00476A84(?:TAnalyzeThread);
begin
{*
 00476A84    push        ebp
 00476A85    mov         ebp,esp
 00476A87    push        ecx
 00476A88    mov         dword ptr [ebp-4],eax
 00476A8B    mov         eax,dword ptr [ebp-4]
 00476A8E    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00476A91    test        dl,dl
>00476A93    jne         00476AAF
 00476A95    push        0
 00476A97    push        4
 00476A99    push        464
 00476A9E    mov         ecx,dword ptr [ebp-4]
 00476AA1    mov         eax,dword ptr [ecx+30]
 00476AA4    call        TWinControl.GetHandle
 00476AA9    push        eax
 00476AAA    call        USER32.SendMessageA
 00476AAF    pop         ecx
 00476AB0    pop         ebp
 00476AB1    ret
*}
end;

//00476AB4
procedure sub_00476AB4(?:TAnalyzeThread);
begin
{*
 00476AB4    push        ebp
 00476AB5    mov         ebp,esp
 00476AB7    push        ecx
 00476AB8    mov         dword ptr [ebp-4],eax
 00476ABB    mov         eax,dword ptr [ebp-4]
 00476ABE    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00476AC1    test        dl,dl
>00476AC3    jne         00476ADF
 00476AC5    push        0
 00476AC7    push        5
 00476AC9    push        464
 00476ACE    mov         ecx,dword ptr [ebp-4]
 00476AD1    mov         eax,dword ptr [ecx+30]
 00476AD4    call        TWinControl.GetHandle
 00476AD9    push        eax
 00476ADA    call        USER32.SendMessageA
 00476ADF    pop         ecx
 00476AE0    pop         ebp
 00476AE1    ret
*}
end;

//00476AE4
procedure sub_00476AE4(?:TAnalyzeThread);
begin
{*
 00476AE4    push        ebp
 00476AE5    mov         ebp,esp
 00476AE7    push        ecx
 00476AE8    mov         dword ptr [ebp-4],eax
 00476AEB    mov         eax,dword ptr [ebp-4]
 00476AEE    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00476AF1    test        dl,dl
>00476AF3    jne         00476B0F
 00476AF5    push        0
 00476AF7    push        6
 00476AF9    push        464
 00476AFE    mov         ecx,dword ptr [ebp-4]
 00476B01    mov         eax,dword ptr [ecx+30]
 00476B04    call        TWinControl.GetHandle
 00476B09    push        eax
 00476B0A    call        USER32.SendMessageA
 00476B0F    pop         ecx
 00476B10    pop         ebp
 00476B11    ret
*}
end;

//00476B14
procedure sub_00476B14(?:TAnalyzeThread);
begin
{*
 00476B14    push        ebp
 00476B15    mov         ebp,esp
 00476B17    push        ecx
 00476B18    mov         dword ptr [ebp-4],eax
 00476B1B    mov         eax,dword ptr [ebp-4]
 00476B1E    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00476B21    test        dl,dl
>00476B23    jne         00476B47
 00476B25    mov         eax,dword ptr [ebp-4]
 00476B28    call        00476A40
 00476B2D    push        0
 00476B2F    push        7
 00476B31    push        464
 00476B36    mov         edx,dword ptr [ebp-4]
 00476B39    mov         eax,dword ptr [edx+30];TAnalyzeThread.?f30:dword
 00476B3C    call        TWinControl.GetHandle
 00476B41    push        eax
 00476B42    call        USER32.SendMessageA
 00476B47    pop         ecx
 00476B48    pop         ebp
 00476B49    ret
*}
end;

//00476B4C
procedure sub_00476B4C(?:TAnalyzeThread);
begin
{*
 00476B4C    push        ebp
 00476B4D    mov         ebp,esp
 00476B4F    push        ecx
 00476B50    mov         dword ptr [ebp-4],eax
 00476B53    mov         eax,dword ptr [ebp-4]
 00476B56    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00476B59    test        dl,dl
>00476B5B    jne         00476B77
 00476B5D    push        0
 00476B5F    push        8
 00476B61    push        464
 00476B66    mov         ecx,dword ptr [ebp-4]
 00476B69    mov         eax,dword ptr [ecx+30]
 00476B6C    call        TWinControl.GetHandle
 00476B71    push        eax
 00476B72    call        USER32.SendMessageA
 00476B77    pop         ecx
 00476B78    pop         ebp
 00476B79    ret
*}
end;

//00476B7C
procedure sub_00476B7C(?:TAnalyzeThread);
begin
{*
 00476B7C    push        ebp
 00476B7D    mov         ebp,esp
 00476B7F    push        ecx
 00476B80    mov         dword ptr [ebp-4],eax
 00476B83    mov         eax,dword ptr [ebp-4]
 00476B86    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00476B89    test        dl,dl
>00476B8B    jne         00476BA7
 00476B8D    push        0
 00476B8F    push        9
 00476B91    push        464
 00476B96    mov         ecx,dword ptr [ebp-4]
 00476B99    mov         eax,dword ptr [ecx+30]
 00476B9C    call        TWinControl.GetHandle
 00476BA1    push        eax
 00476BA2    call        USER32.SendMessageA
 00476BA7    pop         ecx
 00476BA8    pop         ebp
 00476BA9    ret
*}
end;

//00476BAC
procedure sub_00476BAC(?:TAnalyzeThread);
begin
{*
 00476BAC    push        ebp
 00476BAD    mov         ebp,esp
 00476BAF    push        ecx
 00476BB0    mov         dword ptr [ebp-4],eax
 00476BB3    mov         eax,dword ptr [ebp-4]
 00476BB6    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00476BB9    test        dl,dl
>00476BBB    jne         00476BD7
 00476BBD    push        0
 00476BBF    push        0A
 00476BC1    push        464
 00476BC6    mov         ecx,dword ptr [ebp-4]
 00476BC9    mov         eax,dword ptr [ecx+30]
 00476BCC    call        TWinControl.GetHandle
 00476BD1    push        eax
 00476BD2    call        USER32.SendMessageA
 00476BD7    pop         ecx
 00476BD8    pop         ebp
 00476BD9    ret
*}
end;

//00476BDC
procedure sub_00476BDC(?:TAnalyzeThread);
begin
{*
 00476BDC    push        ebp
 00476BDD    mov         ebp,esp
 00476BDF    push        ecx
 00476BE0    mov         dword ptr [ebp-4],eax
 00476BE3    mov         eax,dword ptr [ebp-4]
 00476BE6    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00476BE9    test        dl,dl
>00476BEB    jne         00476C07
 00476BED    push        0
 00476BEF    push        0B
 00476BF1    push        464
 00476BF6    mov         ecx,dword ptr [ebp-4]
 00476BF9    mov         eax,dword ptr [ecx+30]
 00476BFC    call        TWinControl.GetHandle
 00476C01    push        eax
 00476C02    call        USER32.SendMessageA
 00476C07    pop         ecx
 00476C08    pop         ebp
 00476C09    ret
*}
end;

//00476C0C
procedure sub_00476C0C(?:TAnalyzeThread);
begin
{*
 00476C0C    push        ebp
 00476C0D    mov         ebp,esp
 00476C0F    add         esp,0FFFFFFA0
 00476C12    mov         dword ptr [ebp-4C],eax
 00476C15    mov         eax,6B2F00
 00476C1A    call        0066FECC
 00476C1F    mov         word ptr [ebp-38],8
 00476C25    lea         eax,[ebp-24]
 00476C28    call        0046E470
 00476C2D    add         dword ptr [ebp-2C],3
 00476C31    mov         word ptr [ebp-38],14
 00476C37    mov         edx,6B2944
 00476C3C    mov         eax,6ECAB4
 00476C41    call        0046EDD0
 00476C46    mov         word ptr [ebp-5E],ax
 00476C4A    xor         edx,edx
 00476C4C    mov         dword ptr [ebp-50],edx
>00476C4F    jmp         00476D3E
 00476C54    mov         ecx,dword ptr [ebp-50]
 00476C57    mov         ecx,dword ptr [ecx*8+694140]
 00476C5E    mov         eax,6ECAB4
 00476C63    mov         dx,word ptr [ebp-5E]
 00476C67    call        00470B78
 00476C6C    mov         dword ptr [ebp-54],eax
 00476C6F    mov         eax,dword ptr [ebp-54]
 00476C72    inc         eax
>00476C73    je          00476D3B
 00476C79    mov         edx,dword ptr [ebp-54]
 00476C7C    shl         edx,4
 00476C7F    mov         ecx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 00476C85    mov         eax,dword ptr [ecx+edx+0C]
 00476C89    mov         dword ptr [ebp-54],eax
 00476C8C    mov         eax,6ECAB4
 00476C91    mov         edx,dword ptr [ebp-54]
 00476C94    call        004738B4
 00476C99    test        al,al
>00476C9B    jne         00476D3B
 00476CA1    lea         ecx,[ebp-24]
 00476CA4    push        ecx
 00476CA5    mov         eax,6ECAB4
 00476CAA    mov         ecx,3
 00476CAF    mov         edx,dword ptr [ebp-54]
 00476CB2    call        00471F14
 00476CB7    mov         dword ptr [ebp-5C],eax
 00476CBA    mov         eax,dword ptr [ebp-50]
 00476CBD    mov         edx,dword ptr [eax*8+694144]
 00476CC4    test        edx,edx
>00476CC6    je          00476CF0
 00476CC8    push        dword ptr [ebp-5C]
 00476CCB    push        0
 00476CCD    push        6
 00476CCF    mov         ecx,dword ptr [ebp-50]
 00476CD2    mov         eax,dword ptr [ecx*8+694144]
 00476CD9    call        005312C8
 00476CDE    mov         edx,eax
 00476CE0    mov         ecx,dword ptr [ebp-4C]
 00476CE3    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 00476CE6    mov         ecx,dword ptr [ebp-54]
 00476CE9    call        004052B4
>00476CEE    jmp         00476D3B
 00476CF0    push        dword ptr ds:[6ECB54];gvar_006ECB54
 00476CF6    push        dword ptr [ebp-5C]
 00476CF9    mov         eax,6ECAB4
 00476CFE    mov         ecx,dword ptr ds:[6941C8];0x0 gvar_006941C8
 00476D04    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00476D0A    call        004726B0
 00476D0F    mov         dword ptr [ebp-58],eax
 00476D12    mov         eax,dword ptr [ebp-5C]
 00476D15    test        eax,eax
>00476D17    je          00476D3B
 00476D19    mov         edx,dword ptr [ebp-58]
 00476D1C    inc         edx
>00476D1D    je          00476D3B
 00476D1F    push        dword ptr [ebp-5C]
 00476D22    push        1
 00476D24    mov         ecx,dword ptr [ebp-5C]
 00476D27    push        dword ptr [ecx+12]
 00476D2A    mov         eax,dword ptr [ebp-4C]
 00476D2D    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 00476D30    mov         ecx,dword ptr [ebp-54]
 00476D33    mov         edx,dword ptr [ebp-58]
 00476D36    call        004052B4
 00476D3B    inc         dword ptr [ebp-50]
 00476D3E    mov         eax,dword ptr [ebp-50]
 00476D41    mov         edx,dword ptr [eax*8+694140]
 00476D48    test        edx,edx
>00476D4A    je          00476D5A
 00476D4C    mov         ecx,dword ptr [ebp-4C]
 00476D4F    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 00476D52    test        al,al
>00476D54    je          00476C54
 00476D5A    mov         edx,6B294B
 00476D5F    mov         eax,6ECAB4
 00476D64    call        0046EDD0
 00476D69    mov         word ptr [ebp-5E],ax
 00476D6D    xor         edx,edx
 00476D6F    mov         dword ptr [ebp-50],edx
>00476D72    jmp         00476E27
 00476D77    mov         ecx,dword ptr [ebp-50]
 00476D7A    mov         ecx,dword ptr [ecx*8+694180]
 00476D81    mov         eax,6ECAB4
 00476D86    mov         dx,word ptr [ebp-5E]
 00476D8A    call        00470B78
 00476D8F    mov         dword ptr [ebp-54],eax
 00476D92    mov         eax,dword ptr [ebp-54]
 00476D95    inc         eax
>00476D96    je          00476E24
 00476D9C    mov         edx,dword ptr [ebp-54]
 00476D9F    shl         edx,4
 00476DA2    mov         ecx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 00476DA8    mov         eax,dword ptr [ecx+edx+0C]
 00476DAC    mov         dword ptr [ebp-54],eax
 00476DAF    mov         eax,6ECAB4
 00476DB4    mov         edx,dword ptr [ebp-54]
 00476DB7    call        004738B4
 00476DBC    test        al,al
>00476DBE    jne         00476E24
 00476DC0    lea         ecx,[ebp-24]
 00476DC3    push        ecx
 00476DC4    mov         eax,6ECAB4
 00476DC9    mov         ecx,3
 00476DCE    mov         edx,dword ptr [ebp-54]
 00476DD1    call        00471F14
 00476DD6    mov         dword ptr [ebp-5C],eax
 00476DD9    push        dword ptr ds:[6ECB54];gvar_006ECB54
 00476DDF    push        dword ptr [ebp-5C]
 00476DE2    mov         eax,6ECAB4
 00476DE7    mov         ecx,dword ptr ds:[6941C8];0x0 gvar_006941C8
 00476DED    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00476DF3    call        004726B0
 00476DF8    mov         dword ptr [ebp-58],eax
 00476DFB    mov         eax,dword ptr [ebp-5C]
 00476DFE    test        eax,eax
>00476E00    je          00476E24
 00476E02    mov         edx,dword ptr [ebp-58]
 00476E05    inc         edx
>00476E06    je          00476E24
 00476E08    push        dword ptr [ebp-5C]
 00476E0B    push        1
 00476E0D    mov         ecx,dword ptr [ebp-5C]
 00476E10    push        dword ptr [ecx+12]
 00476E13    mov         eax,dword ptr [ebp-4C]
 00476E16    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 00476E19    mov         ecx,dword ptr [ebp-54]
 00476E1C    mov         edx,dword ptr [ebp-58]
 00476E1F    call        004052B4
 00476E24    inc         dword ptr [ebp-50]
 00476E27    mov         eax,dword ptr [ebp-50]
 00476E2A    mov         edx,dword ptr [eax*8+694180]
 00476E31    test        edx,edx
>00476E33    je          00476E43
 00476E35    mov         ecx,dword ptr [ebp-4C]
 00476E38    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 00476E3B    test        al,al
>00476E3D    je          00476D77
 00476E43    mov         eax,dword ptr [ebp-4C]
 00476E46    call        004768BC
 00476E4B    sub         dword ptr [ebp-2C],3
 00476E4F    lea         eax,[ebp-24]
 00476E52    mov         edx,2
 00476E57    call        0046E58C
 00476E5C    mov         ecx,dword ptr [ebp-48]
 00476E5F    mov         dword ptr fs:[0],ecx
 00476E66    mov         esp,ebp
 00476E68    pop         ebp
 00476E69    ret
*}
end;

//00476E6C
procedure sub_00476E6C(?:TAnalyzeThread);
begin
{*
 00476E6C    push        ebp
 00476E6D    mov         ebp,esp
 00476E6F    add         esp,0FFFFFE78
 00476E75    mov         dword ptr [ebp-78],eax
 00476E78    mov         eax,6B3070
 00476E7D    call        0066FECC
 00476E82    mov         word ptr [ebp-64],8
 00476E88    lea         eax,[ebp-4]
 00476E8B    call        00401EA8
 00476E90    inc         dword ptr [ebp-58]
 00476E93    mov         word ptr [ebp-64],14
 00476E99    mov         word ptr [ebp-64],20
 00476E9F    lea         eax,[ebp-8]
 00476EA2    call        00401EA8
 00476EA7    inc         dword ptr [ebp-58]
 00476EAA    mov         word ptr [ebp-64],14
 00476EB0    mov         word ptr [ebp-64],2C
 00476EB6    mov         edx,6B2953
 00476EBB    lea         eax,[ebp-0C]
 00476EBE    call        0067DAB4
 00476EC3    inc         dword ptr [ebp-58]
 00476EC6    lea         ecx,[ebp-0C]
 00476EC9    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 00476ECF    mov         eax,dword ptr [ebp-78]
 00476ED2    call        0047673C
 00476ED7    mov         dword ptr [ebp-0C0],eax
 00476EDD    dec         dword ptr [ebp-58]
 00476EE0    lea         eax,[ebp-0C]
 00476EE3    mov         edx,2
 00476EE8    call        0067DCA0
 00476EED    mov         word ptr [ebp-64],14
 00476EF3    xor         ecx,ecx
 00476EF5    mov         dword ptr [ebp-0C4],ecx
>00476EFB    jmp         00478820
 00476F00    mov         eax,dword ptr [ebp-0C4]
 00476F06    mov         edx,dword ptr [ebp-0C0]
 00476F0C    and         eax,edx
>00476F0E    jne         00476F18
 00476F10    mov         eax,dword ptr [ebp-78]
 00476F13    call        0047688C
 00476F18    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00476F1E    mov         ecx,dword ptr [ebp-0C4]
 00476F24    mov         eax,dword ptr [edx+ecx]
 00476F27    mov         dword ptr [ebp-0C8],eax
 00476F2D    mov         word ptr [ebp-64],14
 00476F33    mov         eax,dword ptr [ebp-0C8]
 00476F39    call        00531EE8
 00476F3E    test        al,al
>00476F40    je          00478819
 00476F46    mov         eax,dword ptr [ebp-0C4]
 00476F4C    call        00531360
 00476F51    add         eax,4
 00476F54    mov         edx,dword ptr [ebp-0C8]
 00476F5A    cmp         eax,edx
>00476F5C    jne         00478819
 00476F62    mov         eax,dword ptr [ebp-0C4]
 00476F68    call        00531360
 00476F6D    xor         edx,edx
 00476F6F    sub         eax,3
 00476F72    sbb         edx,0
 00476F75    push        edx
 00476F76    push        eax
 00476F77    push        0
 00476F79    lea         ecx,[ebp-188]
 00476F7F    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00476F85    mov         eax,dword ptr [ebp-0C4]
 00476F8B    add         edx,eax
 00476F8D    add         edx,0FFFFFFFD
 00476F90    mov         eax,6ECAB0
 00476F95    call        004749C0
 00476F9A    mov         dword ptr [ebp-0B4],eax
 00476FA0    mov         edx,dword ptr [ebp-0B4]
 00476FA6    cmp         edx,3
>00476FA9    jle         00476FC9
 00476FAB    mov         cl,byte ptr [ebp-126]
 00476FB1    test        cl,cl
>00476FB3    je          00476FC9
 00476FB5    mov         eax,dword ptr [ebp-10B]
 00476FBB    mov         edx,dword ptr [ebp-0C8]
 00476FC1    cmp         eax,edx
>00476FC3    je          00478819
 00476FC9    mov         ecx,dword ptr [ebp-0C8]
 00476FCF    sub         ecx,4
 00476FD2    mov         dword ptr [ebp-0CC],ecx
 00476FD8    mov         eax,[006941D4];0x0 gvar_006941D4
 00476FDD    mov         edx,dword ptr [ebp-0C4]
 00476FE3    mov         cl,byte ptr [eax+edx+4]
 00476FE7    mov         byte ptr [ebp-0CD],cl
 00476FED    mov         al,byte ptr [ebp-0CD]
 00476FF3    test        al,al
>00476FF5    je          00478819
 00476FFB    mov         dl,byte ptr [ebp-0CD]
 00477001    cmp         dl,15
>00477004    ja          00478819
 0047700A    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477010    mov         eax,dword ptr [ebp-0C4]
 00477016    mov         dl,byte ptr [ecx+eax+5]
 0047701A    mov         byte ptr [ebp-0CE],dl
 00477020    mov         edx,dword ptr [ebp-0C4]
 00477026    add         edx,6
 00477029    xor         eax,eax
 0047702B    mov         al,byte ptr [ebp-0CE]
 00477031    call        00535AA0
 00477036    test        al,al
>00477038    je          00478819
 0047703E    mov         word ptr [ebp-64],44
 00477044    lea         eax,[ebp-10]
 00477047    call        00401EA8
 0047704C    mov         edx,eax
 0047704E    inc         dword ptr [ebp-58]
 00477051    mov         eax,dword ptr [ebp-0C8]
 00477057    call        00536978
 0047705C    mov         word ptr [ebp-64],38
 00477062    lea         edx,[ebp-10]
 00477065    mov         eax,dword ptr [ebp-78]
 00477068    call        00476980
 0047706D    xor         edx,edx
 0047706F    mov         dl,byte ptr [ebp-0CE]
 00477075    mov         ecx,dword ptr [ebp-0C4]
 0047707B    add         edx,ecx
 0047707D    add         edx,6
 00477080    mov         dword ptr [ebp-9C],edx
 00477086    mov         edx,dword ptr [ebp-0C4]
 0047708C    mov         eax,40
 00477091    call        00532BE8
 00477096    mov         word ptr [ebp-64],50
 0047709C    mov         edx,6B295E
 004770A1    lea         eax,[ebp-14]
 004770A4    call        0067DAB4
 004770A9    inc         dword ptr [ebp-58]
 004770AC    lea         edx,[ebp-14]
 004770AF    lea         eax,[ebp-8]
 004770B2    call        0067DCD0
 004770B7    dec         dword ptr [ebp-58]
 004770BA    lea         eax,[ebp-14]
 004770BD    mov         edx,2
 004770C2    call        0067DCA0
 004770C7    xor         ecx,ecx
 004770C9    mov         cl,byte ptr [ebp-0CD]
 004770CF    cmp         ecx,15
>004770D2    ja          00478667
 004770D8    jmp         dword ptr [ecx*4+4770DF]
 004770D8    dd          00478667
 004770D8    dd          00477137
 004770D8    dd          00477198
 004770D8    dd          004771FB
 004770D8    dd          004773A7
 004770D8    dd          004773FB
 004770D8    dd          0047744F
 004770D8    dd          004774A4
 004770D8    dd          00477773
 004770D8    dd          00477A0F
 004770D8    dd          00477A71
 004770D8    dd          00477AD3
 004770D8    dd          00477B22
 004770D8    dd          00477B71
 004770D8    dd          00477C13
 004770D8    dd          00477F3D
 004770D8    dd          00478285
 004770D8    dd          004782E1
 004770D8    dd          00478402
 004770D8    dd          00478451
 004770D8    dd          00478499
 004770D8    dd          004784E1
 00477137    inc         dword ptr [ebp-9C]
 0047713D    add         dword ptr [ebp-9C],4
 00477144    add         dword ptr [ebp-9C],4
 0047714B    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 00477150    cmp         eax,7DA
>00477155    jl          00477175
 00477157    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047715D    mov         ecx,dword ptr [ebp-9C]
 00477163    mov         ax,word ptr [edx+ecx]
 00477167    mov         word ptr [ebp-7E],ax
 0047716B    movzx       edx,word ptr [ebp-7E]
 0047716F    add         dword ptr [ebp-9C],edx
 00477175    mov         ecx,dword ptr [ebp-9C]
 0047717B    mov         eax,dword ptr [ebp-0C4]
 00477181    sub         ecx,eax
 00477183    mov         edx,dword ptr [ebp-0C4]
 00477189    mov         eax,2
 0047718E    call        00532C54
>00477193    jmp         00478667
 00477198    inc         dword ptr [ebp-9C]
 0047719E    add         dword ptr [ebp-9C],4
 004771A5    add         dword ptr [ebp-9C],4
 004771AC    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004771B2    cmp         edx,7DA
>004771B8    jl          004771D8
 004771BA    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004771C0    mov         eax,dword ptr [ebp-9C]
 004771C6    mov         dx,word ptr [ecx+eax]
 004771CA    mov         word ptr [ebp-7E],dx
 004771CE    movzx       ecx,word ptr [ebp-7E]
 004771D2    add         dword ptr [ebp-9C],ecx
 004771D8    mov         ecx,dword ptr [ebp-9C]
 004771DE    mov         eax,dword ptr [ebp-0C4]
 004771E4    sub         ecx,eax
 004771E6    mov         edx,dword ptr [ebp-0C4]
 004771EC    mov         eax,2
 004771F1    call        00532C54
>004771F6    jmp         00478667
 004771FB    inc         dword ptr [ebp-9C]
 00477201    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477207    mov         ecx,dword ptr [ebp-9C]
 0047720D    mov         eax,dword ptr [edx+ecx]
 00477210    mov         dword ptr [ebp-0A4],eax
 00477216    add         dword ptr [ebp-9C],4
 0047721D    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477223    mov         ecx,dword ptr [ebp-9C]
 00477229    mov         eax,dword ptr [edx+ecx]
 0047722C    mov         dword ptr [ebp-0A8],eax
 00477232    add         dword ptr [ebp-9C],4
 00477239    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047723F    mov         ecx,dword ptr [ebp-9C]
 00477245    mov         eax,dword ptr [edx+ecx]
 00477248    mov         dword ptr [ebp-8C],eax
 0047724E    add         dword ptr [ebp-9C],4
 00477255    mov         edx,dword ptr [ebp-8C]
 0047725B    mov         ecx,dword ptr [ebp-0CC]
 00477261    cmp         edx,ecx
>00477263    jne         00477384
 00477269    mov         word ptr [ebp-64],5C
 0047726F    mov         edx,6B295F
 00477274    lea         eax,[ebp-18]
 00477277    call        0067DAB4
 0047727C    inc         dword ptr [ebp-58]
 0047727F    mov         edx,dword ptr [eax]
 00477281    mov         eax,dword ptr [ebp-10]
 00477284    call        SameText
 00477289    test        al,al
>0047728B    jne         00477301
 0047728D    mov         edx,6B2968
 00477292    lea         eax,[ebp-1C]
 00477295    call        0067DAB4
 0047729A    inc         dword ptr [ebp-58]
 0047729D    mov         edx,dword ptr [eax]
 0047729F    mov         eax,dword ptr [ebp-10]
 004772A2    call        SameText
 004772A7    test        al,al
 004772A9    setne       cl
 004772AC    and         ecx,1
 004772AF    push        ecx
 004772B0    dec         dword ptr [ebp-58]
 004772B3    lea         eax,[ebp-1C]
 004772B6    mov         edx,2
 004772BB    call        0067DCA0
 004772C0    pop         ecx
 004772C1    test        ecx,ecx
>004772C3    jne         00477301
 004772C5    mov         edx,6B2971
 004772CA    lea         eax,[ebp-20]
 004772CD    call        0067DAB4
 004772D2    inc         dword ptr [ebp-58]
 004772D5    mov         edx,dword ptr [eax]
 004772D7    mov         eax,dword ptr [ebp-10]
 004772DA    call        SameText
 004772DF    test        al,al
 004772E1    setne       cl
 004772E4    and         ecx,1
 004772E7    push        ecx
 004772E8    dec         dword ptr [ebp-58]
 004772EB    lea         eax,[ebp-20]
 004772EE    mov         edx,2
 004772F3    call        0067DCA0
 004772F8    pop         ecx
 004772F9    test        ecx,ecx
>004772FB    jne         00477301
 004772FD    xor         eax,eax
>004772FF    jmp         00477306
 00477301    mov         eax,1
 00477306    push        eax
 00477307    dec         dword ptr [ebp-58]
 0047730A    lea         eax,[ebp-18]
 0047730D    mov         edx,2
 00477312    call        0067DCA0
 00477317    pop         ecx
 00477318    test        cl,cl
>0047731A    je          0047732E
 0047731C    xor         eax,eax
 0047731E    mov         dword ptr [ebp-0A4],eax
 00477324    mov         dword ptr [ebp-0A8],1
 0047732E    mov         edx,dword ptr [ebp-0A4]
 00477334    mov         dword ptr [ebp-98],edx
 0047733A    mov         ecx,dword ptr [ebp-98]
 00477340    mov         eax,dword ptr [ebp-0A8]
 00477346    cmp         ecx,eax
>00477348    jg          00477384
 0047734A    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477350    mov         ecx,dword ptr [ebp-9C]
 00477356    mov         al,byte ptr [edx+ecx]
 00477359    mov         byte ptr [ebp-0CE],al
 0047735F    xor         edx,edx
 00477361    mov         dl,byte ptr [ebp-0CE]
 00477367    inc         edx
 00477368    add         dword ptr [ebp-9C],edx
 0047736E    inc         dword ptr [ebp-98]
 00477374    mov         ecx,dword ptr [ebp-98]
 0047737A    mov         eax,dword ptr [ebp-0A8]
 00477380    cmp         ecx,eax
>00477382    jle         0047734A
 00477384    mov         ecx,dword ptr [ebp-9C]
 0047738A    mov         edx,dword ptr [ebp-0C4]
 00477390    sub         ecx,edx
 00477392    mov         edx,dword ptr [ebp-0C4]
 00477398    mov         eax,2
 0047739D    call        00532C54
>004773A2    jmp         00478667
 004773A7    inc         dword ptr [ebp-9C]
 004773AD    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004773B3    cmp         ecx,7DA
>004773B9    jl          004773D8
 004773BB    mov         eax,[006941D4];0x0 gvar_006941D4
 004773C0    mov         edx,dword ptr [ebp-9C]
 004773C6    mov         cx,word ptr [eax+edx]
 004773CA    mov         word ptr [ebp-7E],cx
 004773CE    movzx       eax,word ptr [ebp-7E]
 004773D2    add         dword ptr [ebp-9C],eax
 004773D8    mov         ecx,dword ptr [ebp-9C]
 004773DE    mov         edx,dword ptr [ebp-0C4]
 004773E4    sub         ecx,edx
 004773E6    mov         edx,dword ptr [ebp-0C4]
 004773EC    mov         eax,2
 004773F1    call        00532C54
>004773F6    jmp         00478667
 004773FB    inc         dword ptr [ebp-9C]
 00477401    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00477407    cmp         ecx,7DA
>0047740D    jl          0047742C
 0047740F    mov         eax,[006941D4];0x0 gvar_006941D4
 00477414    mov         edx,dword ptr [ebp-9C]
 0047741A    mov         cx,word ptr [eax+edx]
 0047741E    mov         word ptr [ebp-7E],cx
 00477422    movzx       eax,word ptr [ebp-7E]
 00477426    add         dword ptr [ebp-9C],eax
 0047742C    mov         ecx,dword ptr [ebp-9C]
 00477432    mov         edx,dword ptr [ebp-0C4]
 00477438    sub         ecx,edx
 0047743A    mov         edx,dword ptr [ebp-0C4]
 00477440    mov         eax,2
 00477445    call        00532C54
>0047744A    jmp         00478667
 0047744F    add         dword ptr [ebp-9C],5
 00477456    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 0047745C    cmp         ecx,7DA
>00477462    jl          00477481
 00477464    mov         eax,[006941D4];0x0 gvar_006941D4
 00477469    mov         edx,dword ptr [ebp-9C]
 0047746F    mov         cx,word ptr [eax+edx]
 00477473    mov         word ptr [ebp-7E],cx
 00477477    movzx       eax,word ptr [ebp-7E]
 0047747B    add         dword ptr [ebp-9C],eax
 00477481    mov         ecx,dword ptr [ebp-9C]
 00477487    mov         edx,dword ptr [ebp-0C4]
 0047748D    sub         ecx,edx
 0047748F    mov         edx,dword ptr [ebp-0C4]
 00477495    mov         eax,2
 0047749A    call        00532C54
>0047749F    jmp         00478667
 004774A4    add         dword ptr [ebp-9C],4
 004774AB    add         dword ptr [ebp-9C],4
 004774B2    add         dword ptr [ebp-9C],2
 004774B9    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004774BF    mov         eax,dword ptr [ebp-9C]
 004774C5    mov         dl,byte ptr [ecx+eax]
 004774C8    mov         byte ptr [ebp-0CE],dl
 004774CE    mov         edx,dword ptr [ebp-9C]
 004774D4    inc         edx
 004774D5    xor         eax,eax
 004774D7    mov         al,byte ptr [ebp-0CE]
 004774DD    call        00535AA0
 004774E2    test        al,al
>004774E4    je          0047754D
 004774E6    mov         word ptr [ebp-64],68
 004774EC    xor         ecx,ecx
 004774EE    mov         cl,byte ptr [ebp-0CE]
 004774F4    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004774FA    mov         eax,dword ptr [ebp-9C]
 00477500    add         edx,eax
 00477502    inc         edx
 00477503    lea         eax,[ebp-24]
 00477506    call        0067DB28
 0047750B    push        eax
 0047750C    inc         dword ptr [ebp-58]
 0047750F    lea         eax,[ebp-28]
 00477512    call        00401EA8
 00477517    mov         edx,eax
 00477519    inc         dword ptr [ebp-58]
 0047751C    pop         eax
 0047751D    call        0067E030
 00477522    lea         edx,[ebp-28]
 00477525    lea         eax,[ebp-8]
 00477528    call        0067DCD0
 0047752D    dec         dword ptr [ebp-58]
 00477530    lea         eax,[ebp-28]
 00477533    mov         edx,2
 00477538    call        0067DCA0
 0047753D    dec         dword ptr [ebp-58]
 00477540    lea         eax,[ebp-24]
 00477543    mov         edx,2
 00477548    call        0067DCA0
 0047754D    xor         ecx,ecx
 0047754F    mov         cl,byte ptr [ebp-0CE]
 00477555    inc         ecx
 00477556    add         dword ptr [ebp-9C],ecx
 0047755C    mov         eax,[006941D4];0x0 gvar_006941D4
 00477561    mov         edx,dword ptr [ebp-9C]
 00477567    mov         cx,word ptr [eax+edx]
 0047756B    mov         word ptr [ebp-80],cx
 0047756F    add         dword ptr [ebp-9C],2
 00477576    xor         eax,eax
 00477578    mov         dword ptr [ebp-98],eax
>0047757E    jmp         004775B1
 00477580    add         dword ptr [ebp-9C],1A
 00477587    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047758D    mov         ecx,dword ptr [ebp-9C]
 00477593    mov         al,byte ptr [edx+ecx]
 00477596    mov         byte ptr [ebp-0CE],al
 0047759C    xor         edx,edx
 0047759E    mov         dl,byte ptr [ebp-0CE]
 004775A4    inc         edx
 004775A5    add         dword ptr [ebp-9C],edx
 004775AB    inc         dword ptr [ebp-98]
 004775B1    movzx       ecx,word ptr [ebp-80]
 004775B5    mov         eax,dword ptr [ebp-98]
 004775BB    cmp         ecx,eax
>004775BD    jg          00477580
 004775BF    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004775C5    cmp         edx,7DA
>004775CB    jl          00477750
 004775D1    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004775D7    mov         eax,dword ptr [ebp-9C]
 004775DD    mov         dx,word ptr [ecx+eax]
 004775E1    mov         word ptr [ebp-80],dx
 004775E5    add         dword ptr [ebp-9C],2
 004775EC    xor         ecx,ecx
 004775EE    mov         dword ptr [ebp-98],ecx
>004775F4    jmp         00477680
 004775F9    inc         dword ptr [ebp-9C]
 004775FF    mov         eax,[006941D4];0x0 gvar_006941D4
 00477604    mov         edx,dword ptr [ebp-9C]
 0047760A    mov         ecx,dword ptr [eax+edx]
 0047760D    mov         dword ptr [ebp-88],ecx
 00477613    add         dword ptr [ebp-9C],4
 0047761A    mov         eax,dword ptr [ebp-88]
 00477620    call        005312C8
 00477625    mov         dword ptr [ebp-0B0],eax
 0047762B    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477631    mov         ecx,dword ptr [ebp-0B0]
 00477637    mov         al,byte ptr [edx+ecx+1A]
 0047763B    mov         byte ptr [ebp-0CE],al
 00477641    xor         ecx,ecx
 00477643    mov         cl,byte ptr [ebp-0CE]
 00477649    add         ecx,1B
 0047764C    mov         edx,dword ptr [ebp-0B0]
 00477652    mov         eax,2
 00477657    call        00532C54
 0047765C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477662    mov         ecx,dword ptr [ebp-9C]
 00477668    mov         ax,word ptr [edx+ecx]
 0047766C    mov         word ptr [ebp-7E],ax
 00477670    movzx       edx,word ptr [ebp-7E]
 00477674    add         dword ptr [ebp-9C],edx
 0047767A    inc         dword ptr [ebp-98]
 00477680    movzx       ecx,word ptr [ebp-80]
 00477684    mov         eax,dword ptr [ebp-98]
 0047768A    cmp         ecx,eax
>0047768C    jg          004775F9
 00477692    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477698    mov         ecx,dword ptr [ebp-9C]
 0047769E    mov         ax,word ptr [edx+ecx]
 004776A2    mov         word ptr [ebp-7E],ax
 004776A6    movzx       edx,word ptr [ebp-7E]
 004776AA    add         dword ptr [ebp-9C],edx
 004776B0    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004776B6    cmp         ecx,7DC
>004776BC    jl          00477750
 004776C2    mov         eax,[006941D4];0x0 gvar_006941D4
 004776C7    mov         edx,dword ptr [ebp-9C]
 004776CD    mov         cx,word ptr [eax+edx]
 004776D1    mov         word ptr [ebp-80],cx
 004776D5    add         dword ptr [ebp-9C],2
 004776DC    xor         eax,eax
 004776DE    mov         dword ptr [ebp-98],eax
>004776E4    jmp         00477742
 004776E6    inc         dword ptr [ebp-9C]
 004776EC    add         dword ptr [ebp-9C],2
 004776F3    add         dword ptr [ebp-9C],2
 004776FA    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477700    mov         ecx,dword ptr [ebp-9C]
 00477706    mov         al,byte ptr [edx+ecx]
 00477709    mov         byte ptr [ebp-0CE],al
 0047770F    xor         edx,edx
 00477711    mov         dl,byte ptr [ebp-0CE]
 00477717    inc         edx
 00477718    add         dword ptr [ebp-9C],edx
 0047771E    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477724    mov         eax,dword ptr [ebp-9C]
 0047772A    mov         dx,word ptr [ecx+eax]
 0047772E    mov         word ptr [ebp-7E],dx
 00477732    movzx       ecx,word ptr [ebp-7E]
 00477736    add         dword ptr [ebp-9C],ecx
 0047773C    inc         dword ptr [ebp-98]
 00477742    movzx       eax,word ptr [ebp-80]
 00477746    mov         edx,dword ptr [ebp-98]
 0047774C    cmp         eax,edx
>0047774E    jg          004776E6
 00477750    mov         ecx,dword ptr [ebp-9C]
 00477756    mov         eax,dword ptr [ebp-0C4]
 0047775C    sub         ecx,eax
 0047775E    mov         edx,dword ptr [ebp-0C4]
 00477764    mov         eax,2
 00477769    call        00532C54
>0047776E    jmp         00478667
 00477773    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477779    mov         ecx,dword ptr [ebp-9C]
 0047777F    mov         al,byte ptr [edx+ecx]
 00477782    mov         byte ptr [ebp-7B],al
 00477785    inc         dword ptr [ebp-9C]
 0047778B    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477791    mov         ecx,dword ptr [ebp-9C]
 00477797    mov         al,byte ptr [edx+ecx]
 0047779A    mov         byte ptr [ebp-79],al
 0047779D    inc         dword ptr [ebp-9C]
 004777A3    xor         edx,edx
 004777A5    mov         dword ptr [ebp-98],edx
>004777AB    jmp         00477800
 004777AD    inc         dword ptr [ebp-9C]
 004777B3    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004777B9    mov         eax,dword ptr [ebp-9C]
 004777BF    mov         dl,byte ptr [ecx+eax]
 004777C2    mov         byte ptr [ebp-0CE],dl
 004777C8    xor         ecx,ecx
 004777CA    mov         cl,byte ptr [ebp-0CE]
 004777D0    inc         ecx
 004777D1    add         dword ptr [ebp-9C],ecx
 004777D7    mov         eax,[006941D4];0x0 gvar_006941D4
 004777DC    mov         edx,dword ptr [ebp-9C]
 004777E2    mov         cl,byte ptr [eax+edx]
 004777E5    mov         byte ptr [ebp-0CE],cl
 004777EB    xor         eax,eax
 004777ED    mov         al,byte ptr [ebp-0CE]
 004777F3    inc         eax
 004777F4    add         dword ptr [ebp-9C],eax
 004777FA    inc         dword ptr [ebp-98]
 00477800    xor         edx,edx
 00477802    mov         dl,byte ptr [ebp-79]
 00477805    mov         ecx,dword ptr [ebp-98]
 0047780B    cmp         edx,ecx
>0047780D    jg          004777AD
 0047780F    mov         al,byte ptr [ebp-7B]
 00477812    test        al,al
>00477814    je          0047784C
 00477816    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047781C    mov         ecx,dword ptr [ebp-9C]
 00477822    mov         al,byte ptr [edx+ecx]
 00477825    mov         byte ptr [ebp-0CE],al
 0047782B    xor         edx,edx
 0047782D    mov         dl,byte ptr [ebp-0CE]
 00477833    inc         edx
 00477834    add         dword ptr [ebp-9C],edx
 0047783A    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00477840    cmp         ecx,6
>00477843    jle         0047784C
 00477845    add         dword ptr [ebp-9C],4
 0047784C    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 00477851    cmp         eax,6
>00477854    jle         004779EC
 0047785A    inc         dword ptr [ebp-9C]
 00477860    xor         edx,edx
 00477862    mov         dl,byte ptr [ebp-79]
 00477865    shl         edx,2
 00477868    add         dword ptr [ebp-9C],edx
 0047786E    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00477874    cmp         ecx,7DA
>0047787A    jl          004779EC
 00477880    mov         eax,[006941D4];0x0 gvar_006941D4
 00477885    mov         edx,dword ptr [ebp-9C]
 0047788B    mov         ecx,dword ptr [eax+edx]
 0047788E    mov         dword ptr [ebp-94],ecx
 00477894    add         dword ptr [ebp-9C],4
 0047789B    mov         eax,[006941D4];0x0 gvar_006941D4
 004778A0    mov         edx,dword ptr [ebp-9C]
 004778A6    mov         cx,word ptr [eax+edx]
 004778AA    mov         word ptr [ebp-7E],cx
 004778AE    movzx       eax,word ptr [ebp-7E]
 004778B2    add         dword ptr [ebp-9C],eax
 004778B8    mov         edx,dword ptr [ebp-94]
 004778BE    test        edx,edx
>004778C0    je          004779EC
 004778C6    mov         eax,dword ptr [ebp-94]
 004778CC    call        00531EE8
 004778D1    test        al,al
>004778D3    je          004778E8
 004778D5    mov         eax,dword ptr [ebp-94]
 004778DB    call        005312C8
 004778E0    mov         dword ptr [ebp-0B0],eax
>004778E6    jmp         004778FC
 004778E8    mov         edx,dword ptr [ebp-0C4]
 004778EE    mov         ecx,dword ptr [ebp-94]
 004778F4    add         edx,ecx
 004778F6    mov         dword ptr [ebp-0B0],edx
 004778FC    xor         eax,eax
 004778FE    mov         dword ptr [ebp-0A0],eax
 00477904    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047790A    mov         ecx,dword ptr [ebp-0B0]
 00477910    mov         al,byte ptr [edx+ecx]
 00477913    mov         byte ptr [ebp-7C],al
 00477916    inc         dword ptr [ebp-0A0]
 0047791C    mov         dl,byte ptr [ebp-7C]
 0047791F    cmp         dl,0FF
>00477922    je          004779D6
 00477928    inc         dword ptr [ebp-0A0]
 0047792E    add         dword ptr [ebp-0A0],4
 00477935    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047793B    mov         eax,dword ptr [ebp-0B0]
 00477941    lea         edx,[ecx+eax]
 00477944    mov         ecx,dword ptr [ebp-0A0]
 0047794A    mov         al,byte ptr [edx+ecx]
 0047794D    mov         byte ptr [ebp-79],al
 00477950    inc         dword ptr [ebp-0A0]
 00477956    xor         edx,edx
 00477958    mov         dword ptr [ebp-98],edx
>0047795E    jmp         004779C7
 00477960    inc         dword ptr [ebp-0A0]
 00477966    add         dword ptr [ebp-0A0],4
 0047796D    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477973    mov         eax,dword ptr [ebp-0B0]
 00477979    lea         edx,[ecx+eax]
 0047797C    mov         ecx,dword ptr [ebp-0A0]
 00477982    mov         al,byte ptr [edx+ecx]
 00477985    mov         byte ptr [ebp-0CE],al
 0047798B    xor         edx,edx
 0047798D    mov         dl,byte ptr [ebp-0CE]
 00477993    inc         edx
 00477994    add         dword ptr [ebp-0A0],edx
 0047799A    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004779A0    mov         eax,dword ptr [ebp-0B0]
 004779A6    lea         edx,[ecx+eax]
 004779A9    mov         ecx,dword ptr [ebp-0A0]
 004779AF    mov         ax,word ptr [edx+ecx]
 004779B3    mov         word ptr [ebp-7E],ax
 004779B7    movzx       edx,word ptr [ebp-7E]
 004779BB    add         dword ptr [ebp-0A0],edx
 004779C1    inc         dword ptr [ebp-98]
 004779C7    xor         ecx,ecx
 004779C9    mov         cl,byte ptr [ebp-79]
 004779CC    mov         eax,dword ptr [ebp-98]
 004779D2    cmp         ecx,eax
>004779D4    jg          00477960
 004779D6    mov         ecx,dword ptr [ebp-0A0]
 004779DC    mov         edx,dword ptr [ebp-0B0]
 004779E2    mov         eax,2
 004779E7    call        00532C54
 004779EC    mov         ecx,dword ptr [ebp-9C]
 004779F2    mov         edx,dword ptr [ebp-0C4]
 004779F8    sub         ecx,edx
 004779FA    mov         edx,dword ptr [ebp-0C4]
 00477A00    mov         eax,2
 00477A05    call        00532C54
>00477A0A    jmp         00478667
 00477A0F    inc         dword ptr [ebp-9C]
 00477A15    add         dword ptr [ebp-9C],4
 00477A1C    add         dword ptr [ebp-9C],4
 00477A23    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00477A29    cmp         ecx,7DA
>00477A2F    jl          00477A4E
 00477A31    mov         eax,[006941D4];0x0 gvar_006941D4
 00477A36    mov         edx,dword ptr [ebp-9C]
 00477A3C    mov         cx,word ptr [eax+edx]
 00477A40    mov         word ptr [ebp-7E],cx
 00477A44    movzx       eax,word ptr [ebp-7E]
 00477A48    add         dword ptr [ebp-9C],eax
 00477A4E    mov         ecx,dword ptr [ebp-9C]
 00477A54    mov         edx,dword ptr [ebp-0C4]
 00477A5A    sub         ecx,edx
 00477A5C    mov         edx,dword ptr [ebp-0C4]
 00477A62    mov         eax,2
 00477A67    call        00532C54
>00477A6C    jmp         00478667
 00477A71    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00477A77    cmp         ecx,7D9
>00477A7D    jl          00477A86
 00477A7F    add         dword ptr [ebp-9C],2
 00477A86    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 00477A8B    cmp         eax,7DA
>00477A90    jl          00477AB0
 00477A92    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477A98    mov         ecx,dword ptr [ebp-9C]
 00477A9E    mov         ax,word ptr [edx+ecx]
 00477AA2    mov         word ptr [ebp-7E],ax
 00477AA6    movzx       edx,word ptr [ebp-7E]
 00477AAA    add         dword ptr [ebp-9C],edx
 00477AB0    mov         ecx,dword ptr [ebp-9C]
 00477AB6    mov         eax,dword ptr [ebp-0C4]
 00477ABC    sub         ecx,eax
 00477ABE    mov         edx,dword ptr [ebp-0C4]
 00477AC4    mov         eax,2
 00477AC9    call        00532C54
>00477ACE    jmp         00478667
 00477AD3    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00477AD9    cmp         edx,7DA
>00477ADF    jl          00477AFF
 00477AE1    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477AE7    mov         eax,dword ptr [ebp-9C]
 00477AED    mov         dx,word ptr [ecx+eax]
 00477AF1    mov         word ptr [ebp-7E],dx
 00477AF5    movzx       ecx,word ptr [ebp-7E]
 00477AF9    add         dword ptr [ebp-9C],ecx
 00477AFF    mov         ecx,dword ptr [ebp-9C]
 00477B05    mov         eax,dword ptr [ebp-0C4]
 00477B0B    sub         ecx,eax
 00477B0D    mov         edx,dword ptr [ebp-0C4]
 00477B13    mov         eax,2
 00477B18    call        00532C54
>00477B1D    jmp         00478667
 00477B22    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00477B28    cmp         edx,7DA
>00477B2E    jl          00477B4E
 00477B30    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477B36    mov         eax,dword ptr [ebp-9C]
 00477B3C    mov         dx,word ptr [ecx+eax]
 00477B40    mov         word ptr [ebp-7E],dx
 00477B44    movzx       ecx,word ptr [ebp-7E]
 00477B48    add         dword ptr [ebp-9C],ecx
 00477B4E    mov         ecx,dword ptr [ebp-9C]
 00477B54    mov         eax,dword ptr [ebp-0C4]
 00477B5A    sub         ecx,eax
 00477B5C    mov         edx,dword ptr [ebp-0C4]
 00477B62    mov         eax,2
 00477B67    call        00532C54
>00477B6C    jmp         00478667
 00477B71    add         dword ptr [ebp-9C],4
 00477B78    add         dword ptr [ebp-9C],4
 00477B7F    add         dword ptr [ebp-9C],4
 00477B86    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00477B8C    cmp         edx,7DA
>00477B92    jl          00477BF0
 00477B94    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477B9A    mov         eax,dword ptr [ebp-9C]
 00477BA0    mov         dl,byte ptr [ecx+eax]
 00477BA3    mov         byte ptr [ebp-79],dl
 00477BA6    inc         dword ptr [ebp-9C]
 00477BAC    xor         ecx,ecx
 00477BAE    mov         dword ptr [ebp-98],ecx
>00477BB4    jmp         00477BC3
 00477BB6    add         dword ptr [ebp-9C],4
 00477BBD    inc         dword ptr [ebp-98]
 00477BC3    xor         eax,eax
 00477BC5    mov         al,byte ptr [ebp-79]
 00477BC8    mov         edx,dword ptr [ebp-98]
 00477BCE    cmp         eax,edx
>00477BD0    jg          00477BB6
 00477BD2    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477BD8    mov         eax,dword ptr [ebp-9C]
 00477BDE    mov         dx,word ptr [ecx+eax]
 00477BE2    mov         word ptr [ebp-7E],dx
 00477BE6    movzx       ecx,word ptr [ebp-7E]
 00477BEA    add         dword ptr [ebp-9C],ecx
 00477BF0    mov         ecx,dword ptr [ebp-9C]
 00477BF6    mov         eax,dword ptr [ebp-0C4]
 00477BFC    sub         ecx,eax
 00477BFE    mov         edx,dword ptr [ebp-0C4]
 00477C04    mov         eax,2
 00477C09    call        00532C54
>00477C0E    jmp         00478667
 00477C13    add         dword ptr [ebp-9C],4
 00477C1A    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477C20    mov         ecx,dword ptr [ebp-9C]
 00477C26    mov         eax,dword ptr [edx+ecx]
 00477C29    mov         dword ptr [ebp-0AC],eax
 00477C2F    add         dword ptr [ebp-9C],4
 00477C36    xor         edx,edx
 00477C38    mov         dword ptr [ebp-98],edx
 00477C3E    mov         ecx,dword ptr [ebp-98]
 00477C44    mov         eax,dword ptr [ebp-0AC]
 00477C4A    cmp         ecx,eax
>00477C4C    jge         00477C72
 00477C4E    add         dword ptr [ebp-9C],4
 00477C55    add         dword ptr [ebp-9C],4
 00477C5C    inc         dword ptr [ebp-98]
 00477C62    mov         edx,dword ptr [ebp-98]
 00477C68    mov         ecx,dword ptr [ebp-0AC]
 00477C6E    cmp         edx,ecx
>00477C70    jl          00477C4E
 00477C72    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 00477C77    cmp         eax,7DA
>00477C7C    jl          00477F1A
 00477C82    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477C88    mov         ecx,dword ptr [ebp-9C]
 00477C8E    mov         al,byte ptr [edx+ecx]
 00477C91    mov         byte ptr [ebp-7A],al
 00477C94    inc         dword ptr [ebp-9C]
 00477C9A    xor         edx,edx
 00477C9C    mov         dword ptr [ebp-98],edx
>00477CA2    jmp         00477CB1
 00477CA4    add         dword ptr [ebp-9C],4
 00477CAB    inc         dword ptr [ebp-98]
 00477CB1    xor         ecx,ecx
 00477CB3    mov         cl,byte ptr [ebp-7A]
 00477CB6    mov         eax,dword ptr [ebp-98]
 00477CBC    cmp         ecx,eax
>00477CBE    jg          00477CA4
 00477CC0    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477CC6    mov         ecx,dword ptr [ebp-9C]
 00477CCC    mov         eax,dword ptr [edx+ecx]
 00477CCF    mov         dword ptr [ebp-0AC],eax
 00477CD5    add         dword ptr [ebp-9C],4
 00477CDC    xor         edx,edx
 00477CDE    mov         dword ptr [ebp-98],edx
 00477CE4    mov         ecx,dword ptr [ebp-98]
 00477CEA    mov         eax,dword ptr [ebp-0AC]
 00477CF0    cmp         ecx,eax
>00477CF2    jge         00477D71
 00477CF4    add         dword ptr [ebp-9C],4
 00477CFB    add         dword ptr [ebp-9C],4
 00477D02    inc         dword ptr [ebp-9C]
 00477D08    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477D0E    mov         ecx,dword ptr [ebp-9C]
 00477D14    mov         al,byte ptr [edx+ecx]
 00477D17    mov         byte ptr [ebp-0CE],al
 00477D1D    xor         edx,edx
 00477D1F    mov         dl,byte ptr [ebp-0CE]
 00477D25    inc         edx
 00477D26    add         dword ptr [ebp-9C],edx
 00477D2C    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477D32    mov         eax,dword ptr [ebp-9C]
 00477D38    mov         dx,word ptr [ecx+eax]
 00477D3C    mov         word ptr [ebp-7E],dx
 00477D40    cmp         word ptr [ebp-7E],2
>00477D45    je          00477D51
 00477D47    mov         dword ptr ds:[69419C],1;gvar_0069419C
 00477D51    movzx       ecx,word ptr [ebp-7E]
 00477D55    add         dword ptr [ebp-9C],ecx
 00477D5B    inc         dword ptr [ebp-98]
 00477D61    mov         eax,dword ptr [ebp-98]
 00477D67    mov         edx,dword ptr [ebp-0AC]
 00477D6D    cmp         eax,edx
>00477D6F    jl          00477CF4
 00477D71    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477D77    mov         eax,dword ptr [ebp-9C]
 00477D7D    mov         dx,word ptr [ecx+eax]
 00477D81    mov         word ptr [ebp-7E],dx
 00477D85    cmp         word ptr [ebp-7E],2
>00477D8A    je          00477D96
 00477D8C    mov         dword ptr ds:[69419C],1;gvar_0069419C
 00477D96    movzx       ecx,word ptr [ebp-7E]
 00477D9A    add         dword ptr [ebp-9C],ecx
 00477DA0    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 00477DA5    cmp         eax,7DC
>00477DAA    jl          00477F1A
 00477DB0    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477DB6    mov         ecx,dword ptr [ebp-9C]
 00477DBC    mov         ax,word ptr [edx+ecx]
 00477DC0    mov         word ptr [ebp-82],ax
 00477DC7    add         dword ptr [ebp-9C],2
 00477DCE    xor         edx,edx
 00477DD0    mov         dword ptr [ebp-98],edx
>00477DD6    jmp         00477F05
 00477DDB    inc         dword ptr [ebp-9C]
 00477DE1    add         dword ptr [ebp-9C],4
 00477DE8    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477DEE    mov         eax,dword ptr [ebp-9C]
 00477DF4    mov         dl,byte ptr [ecx+eax]
 00477DF7    mov         byte ptr [ebp-0CE],dl
 00477DFD    xor         ecx,ecx
 00477DFF    mov         cl,byte ptr [ebp-0CE]
 00477E05    inc         ecx
 00477E06    add         dword ptr [ebp-9C],ecx
 00477E0C    mov         eax,[006941D4];0x0 gvar_006941D4
 00477E11    mov         edx,dword ptr [ebp-9C]
 00477E17    mov         cl,byte ptr [eax+edx]
 00477E1A    mov         byte ptr [ebp-7C],cl
 00477E1D    inc         dword ptr [ebp-9C]
 00477E23    mov         al,byte ptr [ebp-7C]
 00477E26    cmp         al,0FF
>00477E28    je          00477ED1
 00477E2E    inc         dword ptr [ebp-9C]
 00477E34    add         dword ptr [ebp-9C],4
 00477E3B    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477E41    mov         ecx,dword ptr [ebp-9C]
 00477E47    mov         al,byte ptr [edx+ecx]
 00477E4A    mov         byte ptr [ebp-79],al
 00477E4D    inc         dword ptr [ebp-9C]
 00477E53    xor         edx,edx
 00477E55    mov         dword ptr [ebp-0A0],edx
>00477E5B    jmp         00477EC2
 00477E5D    inc         dword ptr [ebp-9C]
 00477E63    add         dword ptr [ebp-9C],4
 00477E6A    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477E70    mov         eax,dword ptr [ebp-9C]
 00477E76    mov         dl,byte ptr [ecx+eax]
 00477E79    mov         byte ptr [ebp-0CE],dl
 00477E7F    xor         ecx,ecx
 00477E81    mov         cl,byte ptr [ebp-0CE]
 00477E87    inc         ecx
 00477E88    add         dword ptr [ebp-9C],ecx
 00477E8E    mov         eax,[006941D4];0x0 gvar_006941D4
 00477E93    mov         edx,dword ptr [ebp-9C]
 00477E99    mov         cx,word ptr [eax+edx]
 00477E9D    mov         word ptr [ebp-7E],cx
 00477EA1    cmp         word ptr [ebp-7E],2
>00477EA6    je          00477EB2
 00477EA8    mov         dword ptr ds:[69419C],1;gvar_0069419C
 00477EB2    movzx       eax,word ptr [ebp-7E]
 00477EB6    add         dword ptr [ebp-9C],eax
 00477EBC    inc         dword ptr [ebp-0A0]
 00477EC2    xor         edx,edx
 00477EC4    mov         dl,byte ptr [ebp-79]
 00477EC7    mov         ecx,dword ptr [ebp-0A0]
 00477ECD    cmp         edx,ecx
>00477ECF    jg          00477E5D
 00477ED1    mov         eax,[006941D4];0x0 gvar_006941D4
 00477ED6    mov         edx,dword ptr [ebp-9C]
 00477EDC    mov         cx,word ptr [eax+edx]
 00477EE0    mov         word ptr [ebp-7E],cx
 00477EE4    cmp         word ptr [ebp-7E],2
>00477EE9    je          00477EF5
 00477EEB    mov         dword ptr ds:[69419C],1;gvar_0069419C
 00477EF5    movzx       eax,word ptr [ebp-7E]
 00477EF9    add         dword ptr [ebp-9C],eax
 00477EFF    inc         dword ptr [ebp-98]
 00477F05    movzx       edx,word ptr [ebp-82]
 00477F0C    mov         ecx,dword ptr [ebp-98]
 00477F12    cmp         edx,ecx
>00477F14    jg          00477DDB
 00477F1A    mov         ecx,dword ptr [ebp-9C]
 00477F20    mov         eax,dword ptr [ebp-0C4]
 00477F26    sub         ecx,eax
 00477F28    mov         edx,dword ptr [ebp-0C4]
 00477F2E    mov         eax,2
 00477F33    call        00532C54
>00477F38    jmp         00478667
 00477F3D    add         dword ptr [ebp-9C],4
 00477F44    inc         dword ptr [ebp-9C]
 00477F4A    add         dword ptr [ebp-9C],10
 00477F51    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477F57    mov         ecx,dword ptr [ebp-9C]
 00477F5D    mov         al,byte ptr [edx+ecx]
 00477F60    mov         byte ptr [ebp-0CE],al
 00477F66    mov         edx,dword ptr [ebp-9C]
 00477F6C    inc         edx
 00477F6D    xor         eax,eax
 00477F6F    mov         al,byte ptr [ebp-0CE]
 00477F75    call        00535AA0
 00477F7A    test        al,al
>00477F7C    je          00477FE5
 00477F7E    mov         word ptr [ebp-64],74
 00477F84    xor         ecx,ecx
 00477F86    mov         cl,byte ptr [ebp-0CE]
 00477F8C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00477F92    mov         eax,dword ptr [ebp-9C]
 00477F98    add         edx,eax
 00477F9A    inc         edx
 00477F9B    lea         eax,[ebp-2C]
 00477F9E    call        0067DB28
 00477FA3    push        eax
 00477FA4    inc         dword ptr [ebp-58]
 00477FA7    lea         eax,[ebp-30]
 00477FAA    call        00401EA8
 00477FAF    mov         edx,eax
 00477FB1    inc         dword ptr [ebp-58]
 00477FB4    pop         eax
 00477FB5    call        0067E030
 00477FBA    lea         edx,[ebp-30]
 00477FBD    lea         eax,[ebp-8]
 00477FC0    call        0067DCD0
 00477FC5    dec         dword ptr [ebp-58]
 00477FC8    lea         eax,[ebp-30]
 00477FCB    mov         edx,2
 00477FD0    call        0067DCA0
 00477FD5    dec         dword ptr [ebp-58]
 00477FD8    lea         eax,[ebp-2C]
 00477FDB    mov         edx,2
 00477FE0    call        0067DCA0
 00477FE5    xor         ecx,ecx
 00477FE7    mov         cl,byte ptr [ebp-0CE]
 00477FED    inc         ecx
 00477FEE    add         dword ptr [ebp-9C],ecx
 00477FF4    mov         eax,[006941D4];0x0 gvar_006941D4
 00477FF9    mov         edx,dword ptr [ebp-9C]
 00477FFF    mov         cx,word ptr [eax+edx]
 00478003    mov         word ptr [ebp-80],cx
 00478007    add         dword ptr [ebp-9C],2
 0047800E    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 00478013    cmp         eax,6
>00478016    jl          00478262
 0047801C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478022    mov         ecx,dword ptr [ebp-9C]
 00478028    mov         ax,word ptr [edx+ecx]
 0047802C    mov         word ptr [ebp-7E],ax
 00478030    add         dword ptr [ebp-9C],2
 00478037    cmp         word ptr [ebp-7E],0FFFF
>0047803D    je          00478237
 00478043    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00478049    cmp         edx,7DA
>0047804F    jl          004781C4
 00478055    xor         ecx,ecx
 00478057    mov         dword ptr [ebp-98],ecx
>0047805D    jmp         004781B0
 00478062    mov         eax,[006941D4];0x0 gvar_006941D4
 00478067    mov         edx,dword ptr [ebp-9C]
 0047806D    mov         cl,byte ptr [eax+edx]
 00478070    mov         byte ptr [ebp-0CE],cl
 00478076    xor         eax,eax
 00478078    mov         al,byte ptr [ebp-0CE]
 0047807E    inc         eax
 0047807F    add         dword ptr [ebp-9C],eax
 00478085    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047808B    mov         ecx,dword ptr [ebp-9C]
 00478091    mov         al,byte ptr [edx+ecx]
 00478094    mov         byte ptr [ebp-7B],al
 00478097    inc         dword ptr [ebp-9C]
 0047809D    inc         dword ptr [ebp-9C]
 004780A3    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004780A9    mov         ecx,dword ptr [ebp-9C]
 004780AF    mov         al,byte ptr [edx+ecx]
 004780B2    mov         byte ptr [ebp-79],al
 004780B5    inc         dword ptr [ebp-9C]
 004780BB    xor         edx,edx
 004780BD    mov         dword ptr [ebp-0A0],edx
>004780C3    jmp         0047813D
 004780C5    inc         dword ptr [ebp-9C]
 004780CB    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004780D1    mov         eax,dword ptr [ebp-9C]
 004780D7    mov         dl,byte ptr [ecx+eax]
 004780DA    mov         byte ptr [ebp-0CE],dl
 004780E0    xor         ecx,ecx
 004780E2    mov         cl,byte ptr [ebp-0CE]
 004780E8    inc         ecx
 004780E9    add         dword ptr [ebp-9C],ecx
 004780EF    mov         eax,[006941D4];0x0 gvar_006941D4
 004780F4    mov         edx,dword ptr [ebp-9C]
 004780FA    mov         cl,byte ptr [eax+edx]
 004780FD    mov         byte ptr [ebp-0CE],cl
 00478103    xor         eax,eax
 00478105    mov         al,byte ptr [ebp-0CE]
 0047810B    inc         eax
 0047810C    add         dword ptr [ebp-9C],eax
 00478112    add         dword ptr [ebp-9C],4
 00478119    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047811F    mov         ecx,dword ptr [ebp-9C]
 00478125    mov         ax,word ptr [edx+ecx]
 00478129    mov         word ptr [ebp-7E],ax
 0047812D    movzx       edx,word ptr [ebp-7E]
 00478131    add         dword ptr [ebp-9C],edx
 00478137    inc         dword ptr [ebp-0A0]
 0047813D    xor         ecx,ecx
 0047813F    mov         cl,byte ptr [ebp-79]
 00478142    mov         eax,dword ptr [ebp-0A0]
 00478148    cmp         ecx,eax
>0047814A    jg          004780C5
 00478150    mov         dl,byte ptr [ebp-7B]
 00478153    test        dl,dl
>00478155    je          004781AA
 00478157    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047815D    mov         eax,dword ptr [ebp-9C]
 00478163    mov         dl,byte ptr [ecx+eax]
 00478166    mov         byte ptr [ebp-0CE],dl
 0047816C    xor         ecx,ecx
 0047816E    mov         cl,byte ptr [ebp-0CE]
 00478174    inc         ecx
 00478175    add         dword ptr [ebp-9C],ecx
 0047817B    mov         al,byte ptr [ebp-0CE]
 00478181    test        al,al
>00478183    je          004781AA
 00478185    add         dword ptr [ebp-9C],4
 0047818C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478192    mov         ecx,dword ptr [ebp-9C]
 00478198    mov         ax,word ptr [edx+ecx]
 0047819C    mov         word ptr [ebp-7E],ax
 004781A0    movzx       edx,word ptr [ebp-7E]
 004781A4    add         dword ptr [ebp-9C],edx
 004781AA    inc         dword ptr [ebp-98]
 004781B0    movzx       ecx,word ptr [ebp-80]
 004781B4    mov         eax,dword ptr [ebp-98]
 004781BA    cmp         ecx,eax
>004781BC    jg          00478062
>004781C2    jmp         00478237
 004781C4    xor         edx,edx
 004781C6    mov         dword ptr [ebp-98],edx
>004781CC    jmp         00478229
 004781CE    add         dword ptr [ebp-9C],4
 004781D5    add         dword ptr [ebp-9C],4
 004781DC    add         dword ptr [ebp-9C],4
 004781E3    add         dword ptr [ebp-9C],4
 004781EA    add         dword ptr [ebp-9C],4
 004781F1    add         dword ptr [ebp-9C],4
 004781F8    add         dword ptr [ebp-9C],2
 004781FF    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478205    mov         eax,dword ptr [ebp-9C]
 0047820B    mov         dl,byte ptr [ecx+eax]
 0047820E    mov         byte ptr [ebp-0CE],dl
 00478214    xor         ecx,ecx
 00478216    mov         cl,byte ptr [ebp-0CE]
 0047821C    inc         ecx
 0047821D    add         dword ptr [ebp-9C],ecx
 00478223    inc         dword ptr [ebp-98]
 00478229    movzx       eax,word ptr [ebp-80]
 0047822D    mov         edx,dword ptr [ebp-98]
 00478233    cmp         eax,edx
>00478235    jg          004781CE
 00478237    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 0047823D    cmp         ecx,7DA
>00478243    jl          00478262
 00478245    mov         eax,[006941D4];0x0 gvar_006941D4
 0047824A    mov         edx,dword ptr [ebp-9C]
 00478250    mov         cx,word ptr [eax+edx]
 00478254    mov         word ptr [ebp-7E],cx
 00478258    movzx       eax,word ptr [ebp-7E]
 0047825C    add         dword ptr [ebp-9C],eax
 00478262    mov         ecx,dword ptr [ebp-9C]
 00478268    mov         edx,dword ptr [ebp-0C4]
 0047826E    sub         ecx,edx
 00478270    mov         edx,dword ptr [ebp-0C4]
 00478276    mov         eax,2
 0047827B    call        00532C54
>00478280    jmp         00478667
 00478285    add         dword ptr [ebp-9C],8
 0047828C    add         dword ptr [ebp-9C],8
 00478293    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00478299    cmp         ecx,7DA
>0047829F    jl          004782BE
 004782A1    mov         eax,[006941D4];0x0 gvar_006941D4
 004782A6    mov         edx,dword ptr [ebp-9C]
 004782AC    mov         cx,word ptr [eax+edx]
 004782B0    mov         word ptr [ebp-7E],cx
 004782B4    movzx       eax,word ptr [ebp-7E]
 004782B8    add         dword ptr [ebp-9C],eax
 004782BE    mov         ecx,dword ptr [ebp-9C]
 004782C4    mov         edx,dword ptr [ebp-0C4]
 004782CA    sub         ecx,edx
 004782CC    mov         edx,dword ptr [ebp-0C4]
 004782D2    mov         eax,2
 004782D7    call        00532C54
>004782DC    jmp         00478667
 004782E1    add         dword ptr [ebp-9C],4
 004782E8    add         dword ptr [ebp-9C],4
 004782EF    add         dword ptr [ebp-9C],4
 004782F6    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004782FC    cmp         ecx,6
>004782FF    jl          004783AE
 00478305    add         dword ptr [ebp-9C],4
 0047830C    mov         eax,[006941D4];0x0 gvar_006941D4
 00478311    mov         edx,dword ptr [ebp-9C]
 00478317    mov         cl,byte ptr [eax+edx]
 0047831A    mov         byte ptr [ebp-0CE],cl
 00478320    mov         edx,dword ptr [ebp-9C]
 00478326    inc         edx
 00478327    xor         eax,eax
 00478329    mov         al,byte ptr [ebp-0CE]
 0047832F    call        00535AA0
 00478334    test        al,al
>00478336    je          0047839F
 00478338    mov         word ptr [ebp-64],80
 0047833E    xor         ecx,ecx
 00478340    mov         cl,byte ptr [ebp-0CE]
 00478346    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047834C    mov         eax,dword ptr [ebp-9C]
 00478352    add         edx,eax
 00478354    inc         edx
 00478355    lea         eax,[ebp-34]
 00478358    call        0067DB28
 0047835D    push        eax
 0047835E    inc         dword ptr [ebp-58]
 00478361    lea         eax,[ebp-38]
 00478364    call        00401EA8
 00478369    mov         edx,eax
 0047836B    inc         dword ptr [ebp-58]
 0047836E    pop         eax
 0047836F    call        0067E030
 00478374    lea         edx,[ebp-38]
 00478377    lea         eax,[ebp-8]
 0047837A    call        0067DCD0
 0047837F    dec         dword ptr [ebp-58]
 00478382    lea         eax,[ebp-38]
 00478385    mov         edx,2
 0047838A    call        0067DCA0
 0047838F    dec         dword ptr [ebp-58]
 00478392    lea         eax,[ebp-34]
 00478395    mov         edx,2
 0047839A    call        0067DCA0
 0047839F    xor         ecx,ecx
 004783A1    mov         cl,byte ptr [ebp-0CE]
 004783A7    inc         ecx
 004783A8    add         dword ptr [ebp-9C],ecx
 004783AE    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 004783B3    cmp         eax,7DA
>004783B8    jl          004783DF
 004783BA    add         dword ptr [ebp-9C],4
 004783C1    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004783C7    mov         ecx,dword ptr [ebp-9C]
 004783CD    mov         ax,word ptr [edx+ecx]
 004783D1    mov         word ptr [ebp-7E],ax
 004783D5    movzx       edx,word ptr [ebp-7E]
 004783D9    add         dword ptr [ebp-9C],edx
 004783DF    mov         ecx,dword ptr [ebp-9C]
 004783E5    mov         eax,dword ptr [ebp-0C4]
 004783EB    sub         ecx,eax
 004783ED    mov         edx,dword ptr [ebp-0C4]
 004783F3    mov         eax,2
 004783F8    call        00532C54
>004783FD    jmp         00478667
 00478402    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00478408    cmp         edx,7DA
>0047840E    jl          0047842E
 00478410    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478416    mov         eax,dword ptr [ebp-9C]
 0047841C    mov         dx,word ptr [ecx+eax]
 00478420    mov         word ptr [ebp-7E],dx
 00478424    movzx       ecx,word ptr [ebp-7E]
 00478428    add         dword ptr [ebp-9C],ecx
 0047842E    mov         ecx,dword ptr [ebp-9C]
 00478434    mov         eax,dword ptr [ebp-0C4]
 0047843A    sub         ecx,eax
 0047843C    mov         edx,dword ptr [ebp-0C4]
 00478442    mov         eax,2
 00478447    call        00532C54
>0047844C    jmp         00478667
 00478451    add         dword ptr [ebp-9C],4
 00478458    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047845E    mov         ecx,dword ptr [ebp-9C]
 00478464    mov         ax,word ptr [edx+ecx]
 00478468    mov         word ptr [ebp-7E],ax
 0047846C    movzx       edx,word ptr [ebp-7E]
 00478470    add         dword ptr [ebp-9C],edx
 00478476    mov         ecx,dword ptr [ebp-9C]
 0047847C    mov         eax,dword ptr [ebp-0C4]
 00478482    sub         ecx,eax
 00478484    mov         edx,dword ptr [ebp-0C4]
 0047848A    mov         eax,2
 0047848F    call        00532C54
>00478494    jmp         00478667
 00478499    add         dword ptr [ebp-9C],4
 004784A0    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004784A6    mov         ecx,dword ptr [ebp-9C]
 004784AC    mov         ax,word ptr [edx+ecx]
 004784B0    mov         word ptr [ebp-7E],ax
 004784B4    movzx       edx,word ptr [ebp-7E]
 004784B8    add         dword ptr [ebp-9C],edx
 004784BE    mov         ecx,dword ptr [ebp-9C]
 004784C4    mov         eax,dword ptr [ebp-0C4]
 004784CA    sub         ecx,eax
 004784CC    mov         edx,dword ptr [ebp-0C4]
 004784D2    mov         eax,2
 004784D7    call        00532C54
>004784DC    jmp         00478667
 004784E1    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004784E7    mov         ecx,dword ptr [ebp-9C]
 004784ED    mov         eax,dword ptr [edx+ecx]
 004784F0    mov         dword ptr [ebp-94],eax
 004784F6    add         dword ptr [ebp-9C],4
 004784FD    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478503    mov         ecx,dword ptr [ebp-9C]
 00478509    mov         ax,word ptr [edx+ecx]
 0047850D    mov         word ptr [ebp-7E],ax
 00478511    movzx       edx,word ptr [ebp-7E]
 00478515    add         dword ptr [ebp-9C],edx
 0047851B    mov         ecx,dword ptr [ebp-9C]
 00478521    mov         eax,dword ptr [ebp-0C4]
 00478527    sub         ecx,eax
 00478529    mov         edx,dword ptr [ebp-0C4]
 0047852F    mov         eax,2
 00478534    call        00532C54
 00478539    mov         edx,dword ptr [ebp-94]
 0047853F    test        edx,edx
>00478541    je          00478667
 00478547    mov         eax,dword ptr [ebp-94]
 0047854D    call        00531EE8
 00478552    test        al,al
>00478554    je          00478569
 00478556    mov         eax,dword ptr [ebp-94]
 0047855C    call        005312C8
 00478561    mov         dword ptr [ebp-0B0],eax
>00478567    jmp         0047857D
 00478569    mov         edx,dword ptr [ebp-0C4]
 0047856F    mov         ecx,dword ptr [ebp-94]
 00478575    add         edx,ecx
 00478577    mov         dword ptr [ebp-0B0],edx
 0047857D    xor         eax,eax
 0047857F    mov         dword ptr [ebp-0A0],eax
 00478585    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047858B    mov         ecx,dword ptr [ebp-0B0]
 00478591    mov         al,byte ptr [edx+ecx]
 00478594    mov         byte ptr [ebp-7C],al
 00478597    inc         dword ptr [ebp-0A0]
 0047859D    mov         dl,byte ptr [ebp-7C]
 004785A0    cmp         dl,0FF
>004785A3    je          00478651
 004785A9    inc         dword ptr [ebp-0A0]
 004785AF    add         dword ptr [ebp-0A0],4
 004785B6    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004785BC    mov         eax,dword ptr [ebp-0B0]
 004785C2    lea         edx,[ecx+eax]
 004785C5    mov         ecx,dword ptr [ebp-0A0]
 004785CB    mov         al,byte ptr [edx+ecx]
 004785CE    mov         byte ptr [ebp-79],al
 004785D1    inc         dword ptr [ebp-0A0]
 004785D7    xor         edx,edx
 004785D9    mov         dword ptr [ebp-98],edx
>004785DF    jmp         00478642
 004785E1    add         dword ptr [ebp-0A0],5
 004785E8    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004785EE    mov         eax,dword ptr [ebp-0B0]
 004785F4    lea         edx,[ecx+eax]
 004785F7    mov         ecx,dword ptr [ebp-0A0]
 004785FD    mov         al,byte ptr [edx+ecx]
 00478600    mov         byte ptr [ebp-0CE],al
 00478606    xor         edx,edx
 00478608    mov         dl,byte ptr [ebp-0CE]
 0047860E    inc         edx
 0047860F    add         dword ptr [ebp-0A0],edx
 00478615    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047861B    mov         eax,dword ptr [ebp-0B0]
 00478621    lea         edx,[ecx+eax]
 00478624    mov         ecx,dword ptr [ebp-0A0]
 0047862A    mov         ax,word ptr [edx+ecx]
 0047862E    mov         word ptr [ebp-7E],ax
 00478632    movzx       edx,word ptr [ebp-7E]
 00478636    add         dword ptr [ebp-0A0],edx
 0047863C    inc         dword ptr [ebp-98]
 00478642    xor         ecx,ecx
 00478644    mov         cl,byte ptr [ebp-79]
 00478647    mov         eax,dword ptr [ebp-98]
 0047864D    cmp         ecx,eax
>0047864F    jg          004785E1
 00478651    mov         ecx,dword ptr [ebp-0A0]
 00478657    mov         edx,dword ptr [ebp-0B0]
 0047865D    mov         eax,2
 00478662    call        00532C54
 00478667    mov         edx,dword ptr ds:[6941CC];0x0 gvar_006941CC
 0047866D    mov         ecx,dword ptr [ebp-0C4]
 00478673    mov         eax,dword ptr [edx+ecx*4]
 00478676    test        eax,eax
>00478678    jne         004786C5
 0047867A    push        26
 0047867C    call        0066EAE4
 00478681    pop         ecx
 00478682    mov         dword ptr [ebp-3C],eax
 00478685    test        eax,eax
>00478687    je          004786AE
 00478689    mov         word ptr [ebp-64],98
 0047868F    mov         cl,byte ptr [ebp-0CD]
 00478695    mov         edx,dword ptr [ebp-0C4]
 0047869B    mov         eax,dword ptr [ebp-3C]
 0047869E    call        00485550
 004786A3    mov         word ptr [ebp-64],8C
 004786A9    mov         edx,dword ptr [ebp-3C]
>004786AC    jmp         004786B1
 004786AE    mov         edx,dword ptr [ebp-3C]
 004786B1    mov         dword ptr [ebp-0B8],edx
 004786B7    mov         edx,dword ptr [ebp-10]
 004786BA    mov         eax,dword ptr [ebp-0B8]
 004786C0    call        00485974
 004786C5    push        9
 004786C7    call        0066EAE4
 004786CC    pop         ecx
 004786CD    mov         dword ptr [ebp-40],eax
 004786D0    test        eax,eax
>004786D2    je          004786F6
 004786D4    mov         word ptr [ebp-64],0B0
 004786DA    mov         eax,dword ptr [ebp-40]
 004786DD    add         eax,5
 004786E0    call        00401EA8
 004786E5    inc         dword ptr [ebp-58]
 004786E8    dec         dword ptr [ebp-58]
 004786EB    mov         word ptr [ebp-64],0A4
 004786F1    mov         edx,dword ptr [ebp-40]
>004786F4    jmp         004786F9
 004786F6    mov         edx,dword ptr [ebp-40]
 004786F9    mov         dword ptr [ebp-0D4],edx
 004786FF    mov         word ptr [ebp-64],38
 00478705    mov         eax,dword ptr [ebp-0D4]
 0047870B    mov         cl,byte ptr [ebp-0CD]
 00478711    mov         byte ptr [eax],cl
 00478713    mov         eax,dword ptr [ebp-0D4]
 00478719    mov         edx,dword ptr [ebp-0CC]
 0047871F    mov         dword ptr [eax+1],edx
 00478722    mov         word ptr [ebp-64],0BC
 00478728    mov         edx,6B297A
 0047872D    lea         eax,[ebp-44]
 00478730    call        0067DAB4
 00478735    inc         dword ptr [ebp-58]
 00478738    lea         edx,[ebp-44]
 0047873B    lea         eax,[ebp-8]
 0047873E    call        0067DD9C
 00478743    push        eax
 00478744    dec         dword ptr [ebp-58]
 00478747    lea         eax,[ebp-44]
 0047874A    mov         edx,2
 0047874F    call        0067DCA0
 00478754    pop         ecx
 00478755    test        cl,cl
>00478757    je          004787E2
 0047875D    mov         word ptr [ebp-64],0C8
 00478763    lea         eax,[ebp-48]
 00478766    call        00401EA8
 0047876B    mov         ecx,eax
 0047876D    inc         dword ptr [ebp-58]
 00478770    lea         edx,[ebp-8]
 00478773    mov         eax,6B297B
 00478778    call        0067E37C
 0047877D    lea         edx,[ebp-48]
 00478780    push        edx
 00478781    lea         eax,[ebp-50]
 00478784    call        00401EA8
 00478789    push        eax
 0047878A    inc         dword ptr [ebp-58]
 0047878D    mov         edx,6B297E
 00478792    lea         eax,[ebp-4C]
 00478795    call        0067DAB4
 0047879A    inc         dword ptr [ebp-58]
 0047879D    lea         edx,[ebp-4C]
 004787A0    pop         ecx
 004787A1    pop         eax
 004787A2    call        0067DCF8
 004787A7    lea         edx,[ebp-50]
 004787AA    lea         eax,[ebp-10]
 004787AD    call        0067DCE4
 004787B2    dec         dword ptr [ebp-58]
 004787B5    lea         eax,[ebp-50]
 004787B8    mov         edx,2
 004787BD    call        0067DCA0
 004787C2    dec         dword ptr [ebp-58]
 004787C5    lea         eax,[ebp-4C]
 004787C8    mov         edx,2
 004787CD    call        0067DCA0
 004787D2    dec         dword ptr [ebp-58]
 004787D5    lea         eax,[ebp-48]
 004787D8    mov         edx,2
 004787DD    call        0067DCA0
 004787E2    lea         edx,[ebp-10]
 004787E5    mov         eax,dword ptr [ebp-0D4]
 004787EB    add         eax,5
 004787EE    call        0067DCD0
 004787F3    mov         edx,dword ptr [ebp-0D4]
 004787F9    mov         eax,[006941E8];0x0 gvar_006941E8
 004787FE    call        TList.Add
 00478803    dec         dword ptr [ebp-58]
 00478806    lea         eax,[ebp-10]
 00478809    mov         edx,2
 0047880E    call        0067DCA0
 00478813    mov         word ptr [ebp-64],14
 00478819    add         dword ptr [ebp-0C4],4
 00478820    mov         ecx,dword ptr [ebp-0C4]
 00478826    mov         eax,[006ECB54];0x0 gvar_006ECB54
 0047882B    cmp         ecx,eax
>0047882D    jae         0047883D
 0047882F    mov         edx,dword ptr [ebp-78]
 00478832    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 00478835    test        cl,cl
>00478837    je          00476F00
 0047883D    mov         eax,dword ptr [ebp-78]
 00478840    call        004768BC
 00478845    dec         dword ptr [ebp-58]
 00478848    lea         eax,[ebp-8]
 0047884B    mov         edx,2
 00478850    call        0067DCA0
 00478855    dec         dword ptr [ebp-58]
 00478858    lea         eax,[ebp-4]
 0047885B    mov         edx,2
 00478860    call        0067DCA0
 00478865    mov         ecx,dword ptr [ebp-74]
 00478868    mov         dword ptr fs:[0],ecx
 0047886F    mov         esp,ebp
 00478871    pop         ebp
 00478872    ret
*}
end;

//00478874
procedure sub_00478874(?:TAnalyzeThread);
begin
{*
 00478874    push        ebp
 00478875    mov         ebp,esp
 00478877    add         esp,0FFFFFF34
 0047887D    mov         dword ptr [ebp-44],eax
 00478880    mov         eax,6B31D0
 00478885    call        0066FECC
 0047888A    mov         word ptr [ebp-30],8
 00478890    lea         eax,[ebp-4]
 00478893    call        00401EA8
 00478898    inc         dword ptr [ebp-24]
 0047889B    mov         word ptr [ebp-30],14
 004788A1    mov         word ptr [ebp-30],20
 004788A7    mov         edx,6B2980
 004788AC    lea         eax,[ebp-8]
 004788AF    call        0067DAB4
 004788B4    inc         dword ptr [ebp-24]
 004788B7    lea         ecx,[ebp-8]
 004788BA    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 004788C0    mov         eax,dword ptr [ebp-44]
 004788C3    call        0047673C
 004788C8    mov         dword ptr [ebp-64],eax
 004788CB    dec         dword ptr [ebp-24]
 004788CE    lea         eax,[ebp-8]
 004788D1    mov         edx,2
 004788D6    call        0067DCA0
 004788DB    mov         word ptr [ebp-30],14
 004788E1    xor         ecx,ecx
 004788E3    mov         dword ptr [ebp-4C],ecx
>004788E6    jmp         004791D6
 004788EB    mov         eax,dword ptr [ebp-4C]
 004788EE    mov         edx,dword ptr [ebp-64]
 004788F1    and         eax,edx
>004788F3    jne         004788FD
 004788F5    mov         eax,dword ptr [ebp-44]
 004788F8    call        0047688C
 004788FD    mov         edx,dword ptr [ebp-4C]
 00478900    mov         eax,3
 00478905    call        00532B74
 0047890A    test        al,al
>0047890C    jne         004791D2
 00478912    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478918    mov         ecx,dword ptr [ebp-4C]
 0047891B    mov         eax,dword ptr [edx+ecx]
 0047891E    mov         dword ptr [ebp-68],eax
 00478921    mov         word ptr [ebp-30],14
 00478927    mov         edx,dword ptr [ebp-68]
 0047892A    test        edx,edx
>0047892C    je          0047893E
 0047892E    mov         eax,dword ptr [ebp-68]
 00478931    call        00531EE8
 00478936    test        al,al
>00478938    je          004791D2
 0047893E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478944    mov         ecx,dword ptr [ebp-4C]
 00478947    mov         eax,dword ptr [edx+ecx+4]
 0047894B    mov         dword ptr [ebp-6C],eax
 0047894E    mov         edx,dword ptr [ebp-6C]
 00478951    test        edx,edx
>00478953    je          004789A3
 00478955    mov         eax,dword ptr [ebp-6C]
 00478958    call        00531EE8
 0047895D    test        al,al
>0047895F    je          004791D2
 00478965    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047896B    mov         ecx,dword ptr [ebp-50]
 0047896E    mov         al,byte ptr [edx+ecx]
 00478971    cmp         al,0E
>00478973    jne         004791D2
 00478979    mov         eax,dword ptr [ebp-6C]
 0047897C    call        005312C8
 00478981    mov         dword ptr [ebp-50],eax
 00478984    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047898A    mov         ecx,dword ptr [ebp-50]
 0047898D    mov         eax,dword ptr [edx+ecx+5]
 00478991    mov         dword ptr [ebp-60],eax
 00478994    mov         edx,dword ptr [ebp-60]
 00478997    cmp         edx,2710
>0047899D    ja          004791D2
 004789A3    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004789A9    mov         eax,dword ptr [ebp-4C]
 004789AC    mov         edx,dword ptr [ecx+eax+8]
 004789B0    mov         dword ptr [ebp-70],edx
 004789B3    mov         ecx,dword ptr [ebp-70]
 004789B6    test        ecx,ecx
>004789B8    je          004789F0
 004789BA    mov         eax,dword ptr [ebp-70]
 004789BD    call        00531EE8
 004789C2    test        al,al
>004789C4    je          004791D2
 004789CA    mov         eax,dword ptr [ebp-70]
 004789CD    call        005312C8
 004789D2    mov         dword ptr [ebp-50],eax
 004789D5    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004789DB    mov         ecx,dword ptr [ebp-50]
 004789DE    mov         al,byte ptr [edx+ecx]
 004789E1    mov         byte ptr [ebp-71],al
 004789E4    mov         dl,byte ptr [ebp-71]
 004789E7    cmp         dl,0C
>004789EA    ja          004791D2
 004789F0    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004789F6    mov         eax,dword ptr [ebp-4C]
 004789F9    mov         edx,dword ptr [ecx+eax+0C]
 004789FD    mov         dword ptr [ebp-78],edx
 00478A00    mov         ecx,dword ptr [ebp-78]
 00478A03    test        ecx,ecx
>00478A05    je          00478A3F
 00478A07    mov         eax,dword ptr [ebp-78]
 00478A0A    call        00531EE8
 00478A0F    test        al,al
>00478A11    je          004791D2
 00478A17    mov         eax,dword ptr [ebp-78]
 00478A1A    call        005312C8
 00478A1F    mov         dword ptr [ebp-50],eax
 00478A22    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478A28    mov         ecx,dword ptr [ebp-50]
 00478A2B    mov         ax,word ptr [edx+ecx]
 00478A2F    mov         word ptr [ebp-48],ax
 00478A33    cmp         word ptr [ebp-48],2710
>00478A39    ja          004791D2
 00478A3F    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478A45    mov         ecx,dword ptr [ebp-4C]
 00478A48    mov         eax,dword ptr [edx+ecx+10]
 00478A4C    mov         dword ptr [ebp-7C],eax
 00478A4F    mov         edx,dword ptr [ebp-7C]
 00478A52    test        edx,edx
>00478A54    je          00478A8E
 00478A56    mov         eax,dword ptr [ebp-7C]
 00478A59    call        00531EE8
 00478A5E    test        al,al
>00478A60    je          004791D2
 00478A66    mov         eax,dword ptr [ebp-7C]
 00478A69    call        005312C8
 00478A6E    mov         dword ptr [ebp-50],eax
 00478A71    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478A77    mov         ecx,dword ptr [ebp-50]
 00478A7A    mov         ax,word ptr [edx+ecx]
 00478A7E    mov         word ptr [ebp-48],ax
 00478A82    cmp         word ptr [ebp-48],2710
>00478A88    ja          004791D2
 00478A8E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478A94    mov         ecx,dword ptr [ebp-4C]
 00478A97    mov         eax,dword ptr [edx+ecx+14]
 00478A9B    mov         dword ptr [ebp-80],eax
 00478A9E    mov         edx,dword ptr [ebp-80]
 00478AA1    test        edx,edx
>00478AA3    je          00478ADD
 00478AA5    mov         eax,dword ptr [ebp-80]
 00478AA8    call        00531EE8
 00478AAD    test        al,al
>00478AAF    je          004791D2
 00478AB5    mov         eax,dword ptr [ebp-80]
 00478AB8    call        005312C8
 00478ABD    mov         dword ptr [ebp-50],eax
 00478AC0    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478AC6    mov         ecx,dword ptr [ebp-50]
 00478AC9    mov         ax,word ptr [edx+ecx]
 00478ACD    mov         word ptr [ebp-48],ax
 00478AD1    cmp         word ptr [ebp-48],2710
>00478AD7    ja          004791D2
 00478ADD    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478AE3    mov         ecx,dword ptr [ebp-4C]
 00478AE6    mov         eax,dword ptr [edx+ecx+18]
 00478AEA    mov         dword ptr [ebp-84],eax
 00478AF0    mov         edx,dword ptr [ebp-84]
 00478AF6    test        edx,edx
>00478AF8    je          004791D2
 00478AFE    mov         eax,dword ptr [ebp-84]
 00478B04    call        00531EE8
 00478B09    test        al,al
>00478B0B    je          004791D2
 00478B11    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478B17    mov         ecx,dword ptr [ebp-4C]
 00478B1A    mov         eax,dword ptr [edx+ecx+1C]
 00478B1E    mov         dword ptr [ebp-88],eax
 00478B24    mov         edx,dword ptr [ebp-88]
 00478B2A    test        edx,edx
>00478B2C    je          004791D2
 00478B32    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478B38    mov         eax,dword ptr [ebp-4C]
 00478B3B    mov         edx,dword ptr [ecx+eax+20]
 00478B3F    mov         dword ptr [ebp-8C],edx
 00478B45    mov         ecx,dword ptr [ebp-8C]
 00478B4B    test        ecx,ecx
>00478B4D    je          00478B62
 00478B4F    mov         eax,dword ptr [ebp-8C]
 00478B55    call        00531EE8
 00478B5A    test        al,al
>00478B5C    je          004791D2
 00478B62    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478B68    mov         ecx,dword ptr [ebp-4C]
 00478B6B    mov         eax,dword ptr [edx+ecx+24]
 00478B6F    mov         dword ptr [ebp-90],eax
 00478B75    mov         edx,dword ptr [ebp-90]
 00478B7B    test        edx,edx
>00478B7D    je          00478B92
 00478B7F    mov         eax,dword ptr [ebp-90]
 00478B85    call        00531EE8
 00478B8A    test        al,al
>00478B8C    je          004791D2
 00478B92    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478B98    mov         ecx,dword ptr [ebp-4C]
 00478B9B    mov         eax,dword ptr [edx+ecx+28]
 00478B9F    mov         dword ptr [ebp-94],eax
 00478BA5    mov         edx,dword ptr [ebp-94]
 00478BAB    test        edx,edx
>00478BAD    je          00478BC2
 00478BAF    mov         eax,dword ptr [ebp-94]
 00478BB5    call        00531EE8
 00478BBA    test        al,al
>00478BBC    je          004791D2
 00478BC2    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478BC8    mov         ecx,dword ptr [ebp-4C]
 00478BCB    mov         eax,dword ptr [edx+ecx+2C]
 00478BCF    mov         dword ptr [ebp-98],eax
 00478BD5    mov         edx,dword ptr [ebp-98]
 00478BDB    test        edx,edx
>00478BDD    je          00478BF2
 00478BDF    mov         eax,dword ptr [ebp-98]
 00478BE5    call        00531EE8
 00478BEA    test        al,al
>00478BEC    je          004791D2
 00478BF2    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478BF8    mov         ecx,dword ptr [ebp-4C]
 00478BFB    mov         eax,dword ptr [edx+ecx+30]
 00478BFF    mov         dword ptr [ebp-9C],eax
 00478C05    mov         edx,dword ptr [ebp-9C]
 00478C0B    test        edx,edx
>00478C0D    je          00478C22
 00478C0F    mov         eax,dword ptr [ebp-9C]
 00478C15    call        00531EE8
 00478C1A    test        al,al
>00478C1C    je          004791D2
 00478C22    mov         eax,dword ptr [ebp-4C]
 00478C25    call        00531360
 00478C2A    mov         edx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 00478C30    sub         eax,edx
 00478C32    mov         dword ptr [ebp-0A0],eax
 00478C38    mov         eax,dword ptr [ebp-0A0]
 00478C3E    call        005312C8
 00478C43    test        eax,eax
>00478C45    jl          004791D2
 00478C4B    mov         eax,dword ptr [ebp-0A0]
 00478C51    call        00536884
 00478C56    mov         dword ptr [ebp-0A4],eax
 00478C5C    mov         edx,dword ptr [ebp-4C]
 00478C5F    mov         ecx,dword ptr [ebp-0A4]
 00478C65    add         edx,ecx
 00478C67    mov         eax,dword ptr [ebp-0A0]
 00478C6D    sub         edx,eax
 00478C6F    mov         ecx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 00478C75    sub         edx,ecx
 00478C77    mov         eax,[006ECB54];0x0 gvar_006ECB54
 00478C7C    cmp         edx,eax
>00478C7E    jae         004791D2
 00478C84    mov         eax,dword ptr [ebp-84]
 00478C8A    call        005312C8
 00478C8F    mov         dword ptr [ebp-58],eax
 00478C92    mov         edx,dword ptr [ebp-58]
 00478C95    test        edx,edx
>00478C97    jle         004791D2
 00478C9D    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478CA3    mov         eax,dword ptr [ebp-58]
 00478CA6    mov         dl,byte ptr [ecx+eax]
 00478CA9    mov         byte ptr [ebp-45],dl
 00478CAC    mov         word ptr [ebp-30],2C
 00478CB2    xor         ecx,ecx
 00478CB4    mov         cl,byte ptr [ebp-45]
 00478CB7    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478CBD    mov         eax,dword ptr [ebp-58]
 00478CC0    add         edx,eax
 00478CC2    inc         edx
 00478CC3    lea         eax,[ebp-0C]
 00478CC6    call        0067DB28
 00478CCB    mov         edx,eax
 00478CCD    inc         dword ptr [ebp-24]
 00478CD0    lea         eax,[ebp-4]
 00478CD3    call        0067DCD0
 00478CD8    dec         dword ptr [ebp-24]
 00478CDB    lea         eax,[ebp-0C]
 00478CDE    mov         edx,2
 00478CE3    call        0067DCA0
 00478CE8    lea         edx,[ebp-4]
 00478CEB    mov         eax,dword ptr [ebp-44]
 00478CEE    call        00476980
 00478CF3    push        9
 00478CF5    call        0066EAE4
 00478CFA    pop         ecx
 00478CFB    mov         dword ptr [ebp-10],eax
 00478CFE    test        eax,eax
>00478D00    je          00478D24
 00478D02    mov         word ptr [ebp-30],44
 00478D08    mov         eax,dword ptr [ebp-10]
 00478D0B    add         eax,5
 00478D0E    call        00401EA8
 00478D13    inc         dword ptr [ebp-24]
 00478D16    dec         dword ptr [ebp-24]
 00478D19    mov         word ptr [ebp-30],38
 00478D1F    mov         edx,dword ptr [ebp-10]
>00478D22    jmp         00478D27
 00478D24    mov         edx,dword ptr [ebp-10]
 00478D27    mov         dword ptr [ebp-0A8],edx
 00478D2D    mov         word ptr [ebp-30],14
 00478D33    mov         eax,dword ptr [ebp-0A8]
 00478D39    mov         byte ptr [eax],23
 00478D3C    mov         eax,dword ptr [ebp-4C]
 00478D3F    call        00531360
 00478D44    mov         edx,dword ptr [ebp-0A8]
 00478D4A    mov         dword ptr [edx+1],eax
 00478D4D    lea         edx,[ebp-4]
 00478D50    mov         eax,dword ptr [ebp-0A8]
 00478D56    add         eax,5
 00478D59    call        0067DCD0
 00478D5E    mov         edx,dword ptr [ebp-0A8]
 00478D64    mov         eax,[006941E8];0x0 gvar_006941E8
 00478D69    call        TList.Add
 00478D6E    xor         ecx,ecx
 00478D70    mov         cl,byte ptr [ebp-45]
 00478D73    inc         ecx
 00478D74    mov         edx,dword ptr [ebp-58]
 00478D77    mov         eax,2
 00478D7C    call        00532C54
 00478D81    mov         ecx,dword ptr ds:[6941CC];0x0 gvar_006941CC
 00478D87    mov         eax,dword ptr [ebp-4C]
 00478D8A    mov         edx,dword ptr [ecx+eax*4]
 00478D8D    test        edx,edx
>00478D8F    jne         00478DDB
 00478D91    push        26
 00478D93    call        0066EAE4
 00478D98    pop         ecx
 00478D99    mov         dword ptr [ebp-14],eax
 00478D9C    test        eax,eax
>00478D9E    je          00478DBE
 00478DA0    mov         word ptr [ebp-30],5C
 00478DA6    mov         cl,23
 00478DA8    mov         edx,dword ptr [ebp-4C]
 00478DAB    mov         eax,dword ptr [ebp-14]
 00478DAE    call        00485550
 00478DB3    mov         word ptr [ebp-30],50
 00478DB9    mov         edx,dword ptr [ebp-14]
>00478DBC    jmp         00478DC1
 00478DBE    mov         edx,dword ptr [ebp-14]
 00478DC1    mov         dword ptr [ebp-0AC],edx
 00478DC7    mov         word ptr [ebp-30],14
 00478DCD    mov         edx,dword ptr [ebp-4]
 00478DD0    mov         eax,dword ptr [ebp-0AC]
 00478DD6    call        00485974
 00478DDB    mov         ecx,dword ptr [ebp-6C]
 00478DDE    test        ecx,ecx
>00478DE0    je          00478E55
 00478DE2    mov         eax,dword ptr [ebp-6C]
 00478DE5    call        005312C8
 00478DEA    mov         dword ptr [ebp-50],eax
 00478DED    xor         edx,edx
 00478DEF    mov         dword ptr [ebp-54],edx
 00478DF2    inc         dword ptr [ebp-50]
 00478DF5    inc         dword ptr [ebp-54]
 00478DF8    inc         dword ptr [ebp-50]
 00478DFB    inc         dword ptr [ebp-54]
 00478DFE    add         dword ptr [ebp-50],4
 00478E02    add         dword ptr [ebp-54],4
 00478E06    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478E0C    mov         eax,dword ptr [ebp-50]
 00478E0F    mov         edx,dword ptr [ecx+eax]
 00478E12    mov         dword ptr [ebp-60],edx
 00478E15    add         dword ptr [ebp-54],4
 00478E19    xor         ecx,ecx
 00478E1B    mov         dword ptr [ebp-0B0],ecx
>00478E21    jmp         00478E31
 00478E23    add         dword ptr [ebp-54],4
 00478E27    add         dword ptr [ebp-54],4
 00478E2B    inc         dword ptr [ebp-0B0]
 00478E31    mov         eax,dword ptr [ebp-0B0]
 00478E37    mov         edx,dword ptr [ebp-60]
 00478E3A    cmp         eax,edx
>00478E3C    jb          00478E23
 00478E3E    mov         eax,dword ptr [ebp-6C]
 00478E41    call        005312C8
 00478E46    mov         edx,eax
 00478E48    mov         ecx,dword ptr [ebp-54]
 00478E4B    mov         eax,2
 00478E50    call        00532C54
 00478E55    mov         edx,dword ptr [ebp-78]
 00478E58    test        edx,edx
>00478E5A    je          00478F4C
 00478E60    mov         eax,dword ptr [ebp-78]
 00478E63    call        005312C8
 00478E68    mov         dword ptr [ebp-50],eax
 00478E6B    xor         edx,edx
 00478E6D    mov         dword ptr [ebp-54],edx
 00478E70    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478E76    mov         eax,dword ptr [ebp-50]
 00478E79    mov         dx,word ptr [ecx+eax]
 00478E7D    mov         word ptr [ebp-48],dx
 00478E81    add         dword ptr [ebp-50],2
 00478E85    add         dword ptr [ebp-54],2
 00478E89    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478E8F    mov         eax,dword ptr [ebp-50]
 00478E92    mov         edx,dword ptr [ecx+eax]
 00478E95    mov         dword ptr [ebp-0B4],edx
 00478E9B    mov         word ptr [ebp-30],14
 00478EA1    add         dword ptr [ebp-50],4
 00478EA5    add         dword ptr [ebp-54],4
 00478EA9    xor         ecx,ecx
 00478EAB    mov         dword ptr [ebp-0B8],ecx
>00478EB1    jmp         00478EED
 00478EB3    add         dword ptr [ebp-50],4
 00478EB7    add         dword ptr [ebp-54],4
 00478EBB    add         dword ptr [ebp-50],2
 00478EBF    add         dword ptr [ebp-54],2
 00478EC3    mov         eax,[006941D4];0x0 gvar_006941D4
 00478EC8    mov         edx,dword ptr [ebp-50]
 00478ECB    mov         cl,byte ptr [eax+edx]
 00478ECE    mov         byte ptr [ebp-45],cl
 00478ED1    inc         dword ptr [ebp-50]
 00478ED4    inc         dword ptr [ebp-54]
 00478ED7    xor         eax,eax
 00478ED9    mov         al,byte ptr [ebp-45]
 00478EDC    add         dword ptr [ebp-50],eax
 00478EDF    xor         edx,edx
 00478EE1    mov         dl,byte ptr [ebp-45]
 00478EE4    add         dword ptr [ebp-54],edx
 00478EE7    inc         dword ptr [ebp-0B8]
 00478EED    movzx       ecx,word ptr [ebp-48]
 00478EF1    mov         eax,dword ptr [ebp-0B8]
 00478EF7    cmp         ecx,eax
>00478EF9    jg          00478EB3
 00478EFB    mov         eax,dword ptr [ebp-78]
 00478EFE    call        005312C8
 00478F03    mov         edx,eax
 00478F05    mov         ecx,dword ptr [ebp-54]
 00478F08    mov         eax,2
 00478F0D    call        00532C54
 00478F12    mov         eax,dword ptr [ebp-0B4]
 00478F18    call        005312C8
 00478F1D    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478F23    mov         cx,word ptr [edx+eax]
 00478F27    mov         word ptr [ebp-48],cx
 00478F2B    mov         eax,dword ptr [ebp-0B4]
 00478F31    call        005312C8
 00478F36    mov         edx,eax
 00478F38    movzx       ecx,word ptr [ebp-48]
 00478F3C    shl         ecx,2
 00478F3F    add         ecx,2
 00478F42    mov         eax,2
 00478F47    call        00532C54
 00478F4C    mov         edx,dword ptr [ebp-7C]
 00478F4F    test        edx,edx
>00478F51    je          00478FE8
 00478F57    mov         eax,dword ptr [ebp-7C]
 00478F5A    call        005312C8
 00478F5F    mov         dword ptr [ebp-50],eax
 00478F62    xor         edx,edx
 00478F64    mov         dword ptr [ebp-54],edx
 00478F67    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00478F6D    mov         eax,dword ptr [ebp-50]
 00478F70    mov         dx,word ptr [ecx+eax]
 00478F74    mov         word ptr [ebp-48],dx
 00478F78    add         dword ptr [ebp-50],2
 00478F7C    add         dword ptr [ebp-54],2
 00478F80    xor         ecx,ecx
 00478F82    mov         dword ptr [ebp-0BC],ecx
 00478F88    mov         word ptr [ebp-30],14
>00478F8E    jmp         00478FC3
 00478F90    mov         eax,[006941D4];0x0 gvar_006941D4
 00478F95    mov         edx,dword ptr [ebp-50]
 00478F98    mov         cx,word ptr [eax+edx]
 00478F9C    mov         word ptr [ebp-0BE],cx
 00478FA3    mov         word ptr [ebp-30],14
 00478FA9    movzx       eax,word ptr [ebp-0BE]
 00478FB0    add         dword ptr [ebp-50],eax
 00478FB3    movzx       edx,word ptr [ebp-0BE]
 00478FBA    add         dword ptr [ebp-54],edx
 00478FBD    inc         dword ptr [ebp-0BC]
 00478FC3    movzx       ecx,word ptr [ebp-48]
 00478FC7    mov         eax,dword ptr [ebp-0BC]
 00478FCD    cmp         ecx,eax
>00478FCF    jg          00478F90
 00478FD1    mov         eax,dword ptr [ebp-7C]
 00478FD4    call        005312C8
 00478FD9    mov         edx,eax
 00478FDB    mov         ecx,dword ptr [ebp-54]
 00478FDE    mov         eax,2
 00478FE3    call        00532C54
 00478FE8    mov         edx,dword ptr [ebp-80]
 00478FEB    test        edx,edx
>00478FED    je          0047905B
 00478FEF    mov         eax,dword ptr [ebp-80]
 00478FF2    call        005312C8
 00478FF7    mov         dword ptr [ebp-50],eax
 00478FFA    xor         edx,edx
 00478FFC    mov         dword ptr [ebp-54],edx
 00478FFF    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479005    mov         eax,dword ptr [ebp-50]
 00479008    mov         dx,word ptr [ecx+eax]
 0047900C    mov         word ptr [ebp-48],dx
 00479010    add         dword ptr [ebp-50],2
 00479014    add         dword ptr [ebp-54],2
 00479018    xor         ecx,ecx
 0047901A    mov         dword ptr [ebp-0C4],ecx
 00479020    mov         word ptr [ebp-30],14
>00479026    jmp         00479036
 00479028    add         dword ptr [ebp-54],2
 0047902C    add         dword ptr [ebp-54],4
 00479030    inc         dword ptr [ebp-0C4]
 00479036    movzx       eax,word ptr [ebp-48]
 0047903A    mov         edx,dword ptr [ebp-0C4]
 00479040    cmp         eax,edx
>00479042    jg          00479028
 00479044    mov         eax,dword ptr [ebp-80]
 00479047    call        005312C8
 0047904C    mov         edx,eax
 0047904E    mov         ecx,dword ptr [ebp-54]
 00479051    mov         eax,2
 00479056    call        00532C54
 0047905B    mov         ecx,dword ptr [ebp-0A4]
 00479061    mov         edx,dword ptr [ebp-0A0]
 00479067    sub         ecx,edx
 00479069    mov         eax,[006941FC];0x0 gvar_006941FC
 0047906E    sub         ecx,eax
 00479070    mov         edx,dword ptr [ebp-4C]
 00479073    mov         eax,2
 00479078    call        00532C54
 0047907D    mov         edx,dword ptr [ebp-44]
 00479080    mov         eax,dword ptr [edx+30];TAnalyzeThread.?f30:dword
 00479083    mov         edx,dword ptr [ebp-0A0]
 00479089    call        0040AAE4
 0047908E    mov         dword ptr [ebp-0C8],eax
 00479094    mov         word ptr [ebp-30],14
 0047909A    mov         ecx,dword ptr [ebp-0C8]
 004790A0    test        ecx,ecx
>004790A2    je          004791D2
 004790A8    mov         eax,dword ptr [ebp-70]
 004790AB    test        eax,eax
>004790AD    je          004791D2
 004790B3    mov         eax,dword ptr [ebp-70]
 004790B6    call        005312C8
 004790BB    mov         dword ptr [ebp-5C],eax
 004790BE    mov         edx,dword ptr [ebp-5C]
 004790C1    mov         dword ptr [ebp-58],edx
 004790C4    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004790CA    mov         eax,dword ptr [ebp-58]
 004790CD    mov         dl,byte ptr [ecx+eax]
 004790D0    mov         byte ptr [ebp-0C9],dl
 004790D6    inc         dword ptr [ebp-58]
 004790D9    mov         cl,byte ptr [ebp-0C9]
 004790DF    cmp         cl,7
>004790E2    jne         004791D2
 004790E8    mov         eax,[006941D4];0x0 gvar_006941D4
 004790ED    mov         edx,dword ptr [ebp-58]
 004790F0    mov         cl,byte ptr [eax+edx]
 004790F3    mov         byte ptr [ebp-45],cl
 004790F6    inc         dword ptr [ebp-58]
 004790F9    xor         eax,eax
 004790FB    mov         al,byte ptr [ebp-45]
 004790FE    mov         edx,dword ptr [ebp-58]
 00479101    call        00535AA0
 00479106    test        al,al
>00479108    je          004791D2
 0047910E    xor         ecx,ecx
 00479110    mov         cl,byte ptr [ebp-45]
 00479113    add         ecx,0A
 00479116    add         dword ptr [ebp-58],ecx
 00479119    mov         eax,[006941D4];0x0 gvar_006941D4
 0047911E    mov         edx,dword ptr [ebp-58]
 00479121    mov         cl,byte ptr [eax+edx]
 00479124    mov         byte ptr [ebp-45],cl
 00479127    inc         dword ptr [ebp-58]
 0047912A    xor         eax,eax
 0047912C    mov         al,byte ptr [ebp-45]
 0047912F    mov         edx,dword ptr [ebp-58]
 00479132    call        00535AA0
 00479137    test        al,al
>00479139    je          004791D2
 0047913F    mov         word ptr [ebp-30],74
 00479145    xor         ecx,ecx
 00479147    mov         cl,byte ptr [ebp-45]
 0047914A    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479150    mov         eax,dword ptr [ebp-58]
 00479153    add         edx,eax
 00479155    lea         eax,[ebp-1C]
 00479158    call        0067DB28
 0047915D    push        eax
 0047915E    inc         dword ptr [ebp-24]
 00479161    lea         eax,[ebp-18]
 00479164    call        00401EA8
 00479169    mov         edx,eax
 0047916B    inc         dword ptr [ebp-24]
 0047916E    pop         eax
 0047916F    call        0067E030
 00479174    dec         dword ptr [ebp-24]
 00479177    lea         eax,[ebp-1C]
 0047917A    mov         edx,2
 0047917F    call        0067DCA0
 00479184    mov         word ptr [ebp-30],68
 0047918A    xor         ecx,ecx
 0047918C    mov         cl,byte ptr [ebp-45]
 0047918F    add         dword ptr [ebp-58],ecx
 00479192    mov         eax,[006E9C8C];^_FMain_11011981
 00479197    mov         eax,dword ptr [eax]
 00479199    mov         ecx,dword ptr [ebp-18]
 0047919C    mov         edx,dword ptr [ebp-0C8]
 004791A2    call        0040ADFC
 004791A7    mov         ecx,dword ptr [ebp-58]
 004791AA    mov         eax,dword ptr [ebp-5C]
 004791AD    sub         ecx,eax
 004791AF    mov         edx,dword ptr [ebp-5C]
 004791B2    mov         eax,2
 004791B7    call        00532C54
 004791BC    dec         dword ptr [ebp-24]
 004791BF    lea         eax,[ebp-18]
 004791C2    mov         edx,2
 004791C7    call        0067DCA0
 004791CC    mov         word ptr [ebp-30],14
 004791D2    add         dword ptr [ebp-4C],4
 004791D6    mov         ecx,dword ptr [ebp-4C]
 004791D9    mov         eax,[006ECB54];0x0 gvar_006ECB54
 004791DE    cmp         ecx,eax
>004791E0    jae         004791F0
 004791E2    mov         edx,dword ptr [ebp-44]
 004791E5    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 004791E8    test        cl,cl
>004791EA    je          004788EB
 004791F0    mov         eax,dword ptr [ebp-44]
 004791F3    call        004768BC
 004791F8    dec         dword ptr [ebp-24]
 004791FB    lea         eax,[ebp-4]
 004791FE    mov         edx,2
 00479203    call        0067DCA0
 00479208    mov         ecx,dword ptr [ebp-40]
 0047920B    mov         dword ptr fs:[0],ecx
 00479212    mov         esp,ebp
 00479214    pop         ebp
 00479215    ret
*}
end;

//00479218
procedure sub_00479218(?:TAnalyzeThread);
begin
{*
 00479218    push        ebp
 00479219    mov         ebp,esp
 0047921B    add         esp,0FFFFFF00
 00479221    mov         dword ptr [ebp-40],eax
 00479224    mov         eax,6B32CC
 00479229    call        0066FECC
 0047922E    mov         word ptr [ebp-2C],14
 00479234    mov         edx,6B299E
 00479239    lea         eax,[ebp-4]
 0047923C    call        0067DAB4
 00479241    inc         dword ptr [ebp-20]
 00479244    lea         ecx,[ebp-4]
 00479247    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 0047924D    mov         eax,dword ptr [ebp-40]
 00479250    call        0047673C
 00479255    mov         dword ptr [ebp-5C],eax
 00479258    dec         dword ptr [ebp-20]
 0047925B    lea         eax,[ebp-4]
 0047925E    mov         edx,2
 00479263    call        0067DCA0
 00479268    mov         word ptr [ebp-2C],8
 0047926E    xor         ecx,ecx
 00479270    mov         dword ptr [ebp-60],ecx
>00479273    jmp         0047A0DF
 00479278    mov         eax,dword ptr [ebp-60]
 0047927B    mov         edx,dword ptr [ebp-5C]
 0047927E    and         eax,edx
>00479280    jne         0047928A
 00479282    mov         eax,dword ptr [ebp-40]
 00479285    call        0047688C
 0047928A    mov         edx,dword ptr [ebp-60]
 0047928D    mov         eax,3
 00479292    call        00532B74
 00479297    test        al,al
>00479299    jne         0047A0DB
 0047929F    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004792A5    mov         ecx,dword ptr [ebp-60]
 004792A8    mov         eax,dword ptr [edx+ecx]
 004792AB    mov         dword ptr [ebp-64],eax
 004792AE    mov         word ptr [ebp-2C],8
 004792B4    mov         eax,dword ptr [ebp-64]
 004792B7    call        00531EE8
 004792BC    test        al,al
>004792BE    je          0047A0DB
 004792C4    mov         eax,dword ptr [ebp-60]
 004792C7    call        00531360
 004792CC    mov         edx,dword ptr [ebp-64]
 004792CF    mov         ecx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 004792D5    add         edx,ecx
 004792D7    cmp         eax,edx
>004792D9    jne         0047A0DB
 004792DF    mov         eax,dword ptr [ebp-64]
 004792E2    mov         dword ptr [ebp-68],eax
 004792E5    mov         eax,dword ptr [ebp-68]
 004792E8    call        00536884
 004792ED    mov         dword ptr [ebp-6C],eax
 004792F0    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004792F6    mov         ecx,dword ptr [ebp-60]
 004792F9    mov         eax,dword ptr [edx+ecx+4]
 004792FD    mov         dword ptr [ebp-70],eax
 00479300    mov         edx,dword ptr [ebp-70]
 00479303    test        edx,edx
>00479305    je          00479340
 00479307    mov         eax,dword ptr [ebp-70]
 0047930A    call        00531EE8
 0047930F    test        al,al
>00479311    je          0047A0DB
 00479317    mov         eax,dword ptr [ebp-70]
 0047931A    call        005312C8
 0047931F    mov         dword ptr [ebp-4C],eax
 00479322    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479328    mov         ecx,dword ptr [ebp-4C]
 0047932B    mov         eax,dword ptr [edx+ecx]
 0047932E    mov         dword ptr [ebp-54],eax
 00479331    mov         edx,dword ptr [ebp-54]
 00479334    cmp         edx,2710
>0047933A    jg          0047A0DB
 00479340    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479346    mov         eax,dword ptr [ebp-60]
 00479349    mov         edx,dword ptr [ecx+eax+8]
 0047934D    mov         dword ptr [ebp-74],edx
 00479350    mov         ecx,dword ptr [ebp-74]
 00479353    test        ecx,ecx
>00479355    je          00479390
 00479357    mov         eax,dword ptr [ebp-74]
 0047935A    call        00531EE8
 0047935F    test        al,al
>00479361    je          0047A0DB
 00479367    mov         eax,dword ptr [ebp-74]
 0047936A    call        005312C8
 0047936F    mov         dword ptr [ebp-4C],eax
 00479372    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479378    mov         ecx,dword ptr [ebp-4C]
 0047937B    mov         eax,dword ptr [edx+ecx]
 0047937E    mov         dword ptr [ebp-54],eax
 00479381    mov         edx,dword ptr [ebp-54]
 00479384    cmp         edx,2710
>0047938A    jg          0047A0DB
 00479390    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479396    mov         eax,dword ptr [ebp-60]
 00479399    mov         edx,dword ptr [ecx+eax+0C]
 0047939D    mov         dword ptr [ebp-78],edx
 004793A0    mov         ecx,dword ptr [ebp-78]
 004793A3    test        ecx,ecx
>004793A5    je          004793E1
 004793A7    mov         eax,dword ptr [ebp-78]
 004793AA    call        00531EE8
 004793AF    test        al,al
>004793B1    je          0047A0DB
 004793B7    mov         eax,dword ptr [ebp-78]
 004793BA    call        005312C8
 004793BF    mov         dword ptr [ebp-4C],eax
 004793C2    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004793C8    mov         ecx,dword ptr [ebp-4C]
 004793CB    mov         eax,dword ptr [edx+ecx+6]
 004793CF    mov         dword ptr [ebp-58],eax
 004793D2    mov         edx,dword ptr [ebp-58]
 004793D5    cmp         edx,2710
>004793DB    ja          0047A0DB
 004793E1    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004793E7    mov         eax,dword ptr [ebp-60]
 004793EA    mov         edx,dword ptr [ecx+eax+10]
 004793EE    mov         dword ptr [ebp-7C],edx
 004793F1    mov         ecx,dword ptr [ebp-7C]
 004793F4    test        ecx,ecx
>004793F6    je          0047942E
 004793F8    mov         eax,dword ptr [ebp-7C]
 004793FB    call        00531EE8
 00479400    test        al,al
>00479402    je          0047A0DB
 00479408    mov         eax,dword ptr [ebp-7C]
 0047940B    call        005312C8
 00479410    mov         dword ptr [ebp-4C],eax
 00479413    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479419    mov         ecx,dword ptr [ebp-4C]
 0047941C    mov         al,byte ptr [edx+ecx]
 0047941F    mov         byte ptr [ebp-7D],al
 00479422    mov         dl,byte ptr [ebp-7D]
 00479425    cmp         dl,15
>00479428    ja          0047A0DB
 0047942E    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479434    mov         eax,dword ptr [ebp-60]
 00479437    mov         edx,dword ptr [ecx+eax+14]
 0047943B    mov         dword ptr [ebp-84],edx
 00479441    mov         ecx,dword ptr [ebp-84]
 00479447    test        ecx,ecx
>00479449    je          00479489
 0047944B    mov         eax,dword ptr [ebp-84]
 00479451    call        00531EE8
 00479456    test        al,al
>00479458    je          0047A0DB
 0047945E    mov         eax,dword ptr [ebp-84]
 00479464    call        005312C8
 00479469    mov         dword ptr [ebp-4C],eax
 0047946C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479472    mov         ecx,dword ptr [ebp-4C]
 00479475    mov         ax,word ptr [edx+ecx]
 00479479    mov         word ptr [ebp-42],ax
 0047947D    cmp         word ptr [ebp-42],2710
>00479483    ja          0047A0DB
 00479489    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047948F    mov         ecx,dword ptr [ebp-60]
 00479492    mov         eax,dword ptr [edx+ecx+18]
 00479496    mov         dword ptr [ebp-88],eax
 0047949C    mov         edx,dword ptr [ebp-88]
 004794A2    test        edx,edx
>004794A4    je          004794E4
 004794A6    mov         eax,dword ptr [ebp-88]
 004794AC    call        00531EE8
 004794B1    test        al,al
>004794B3    je          0047A0DB
 004794B9    mov         eax,dword ptr [ebp-88]
 004794BF    call        005312C8
 004794C4    mov         dword ptr [ebp-4C],eax
 004794C7    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004794CD    mov         ecx,dword ptr [ebp-4C]
 004794D0    mov         ax,word ptr [edx+ecx]
 004794D4    mov         word ptr [ebp-42],ax
 004794D8    cmp         word ptr [ebp-42],2710
>004794DE    ja          0047A0DB
 004794E4    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004794EA    mov         ecx,dword ptr [ebp-60]
 004794ED    mov         eax,dword ptr [edx+ecx+1C]
 004794F1    mov         dword ptr [ebp-8C],eax
 004794F7    mov         edx,dword ptr [ebp-8C]
 004794FD    test        edx,edx
>004794FF    je          0047953F
 00479501    mov         eax,dword ptr [ebp-8C]
 00479507    call        00531EE8
 0047950C    test        al,al
>0047950E    je          0047A0DB
 00479514    mov         eax,dword ptr [ebp-8C]
 0047951A    call        005312C8
 0047951F    mov         dword ptr [ebp-4C],eax
 00479522    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479528    mov         ecx,dword ptr [ebp-4C]
 0047952B    mov         ax,word ptr [edx+ecx]
 0047952F    mov         word ptr [ebp-42],ax
 00479533    cmp         word ptr [ebp-42],2710
>00479539    ja          0047A0DB
 0047953F    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479545    mov         ecx,dword ptr [ebp-60]
 00479548    mov         eax,dword ptr [edx+ecx+20]
 0047954C    mov         dword ptr [ebp-90],eax
 00479552    mov         edx,dword ptr [ebp-90]
 00479558    test        edx,edx
>0047955A    je          0047A0DB
 00479560    mov         eax,dword ptr [ebp-90]
 00479566    call        00531EE8
 0047956B    test        al,al
>0047956D    je          0047A0DB
 00479573    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479579    mov         ecx,dword ptr [ebp-60]
 0047957C    mov         eax,dword ptr [edx+ecx+28]
 00479580    mov         dword ptr [ebp-94],eax
 00479586    mov         edx,dword ptr [ebp-94]
 0047958C    test        edx,edx
>0047958E    je          004795A3
 00479590    mov         eax,dword ptr [ebp-94]
 00479596    call        00531EE8
 0047959B    test        al,al
>0047959D    je          0047A0DB
 004795A3    mov         eax,dword ptr [ebp-90]
 004795A9    call        005312C8
 004795AE    mov         dword ptr [ebp-98],eax
 004795B4    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004795BA    mov         ecx,dword ptr [ebp-98]
 004795C0    mov         al,byte ptr [edx+ecx]
 004795C3    mov         byte ptr [ebp-99],al
 004795C9    mov         word ptr [ebp-2C],2C
 004795CF    xor         ecx,ecx
 004795D1    mov         cl,byte ptr [ebp-99]
 004795D7    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004795DD    mov         eax,dword ptr [ebp-98]
 004795E3    add         edx,eax
 004795E5    inc         edx
 004795E6    lea         eax,[ebp-8]
 004795E9    call        0067DB28
 004795EE    inc         dword ptr [ebp-20]
 004795F1    mov         word ptr [ebp-2C],20
 004795F7    lea         edx,[ebp-8]
 004795FA    mov         eax,dword ptr [ebp-40]
 004795FD    call        00476980
 00479602    push        9
 00479604    call        0066EAE4
 00479609    pop         ecx
 0047960A    mov         dword ptr [ebp-0C],eax
 0047960D    test        eax,eax
>0047960F    je          00479633
 00479611    mov         word ptr [ebp-2C],44
 00479617    mov         eax,dword ptr [ebp-0C]
 0047961A    add         eax,5
 0047961D    call        00401EA8
 00479622    inc         dword ptr [ebp-20]
 00479625    dec         dword ptr [ebp-20]
 00479628    mov         word ptr [ebp-2C],38
 0047962E    mov         edx,dword ptr [ebp-0C]
>00479631    jmp         00479636
 00479633    mov         edx,dword ptr [ebp-0C]
 00479636    mov         dword ptr [ebp-0A0],edx
 0047963C    mov         word ptr [ebp-2C],20
 00479642    mov         eax,dword ptr [ebp-0A0]
 00479648    mov         byte ptr [eax],23
 0047964B    mov         eax,dword ptr [ebp-60]
 0047964E    call        00531360
 00479653    mov         edx,dword ptr [ebp-0A0]
 00479659    mov         dword ptr [edx+1],eax
 0047965C    lea         edx,[ebp-8]
 0047965F    mov         eax,dword ptr [ebp-0A0]
 00479665    add         eax,5
 00479668    call        0067DCD0
 0047966D    mov         edx,dword ptr [ebp-0A0]
 00479673    mov         eax,[006941E8];0x0 gvar_006941E8
 00479678    call        TList.Add
 0047967D    xor         ecx,ecx
 0047967F    mov         cl,byte ptr [ebp-99]
 00479685    inc         ecx
 00479686    mov         edx,dword ptr [ebp-98]
 0047968C    mov         eax,2
 00479691    call        00532C54
 00479696    mov         eax,dword ptr [ebp-60]
 00479699    call        00531360
 0047969E    call        0053A308
 004796A3    test        eax,eax
>004796A5    jne         004796F1
 004796A7    push        26
 004796A9    call        0066EAE4
 004796AE    pop         ecx
 004796AF    mov         dword ptr [ebp-10],eax
 004796B2    test        eax,eax
>004796B4    je          004796D4
 004796B6    mov         word ptr [ebp-2C],5C
 004796BC    mov         cl,23
 004796BE    mov         edx,dword ptr [ebp-60]
 004796C1    mov         eax,dword ptr [ebp-10]
 004796C4    call        00485550
 004796C9    mov         word ptr [ebp-2C],50
 004796CF    mov         edx,dword ptr [ebp-10]
>004796D2    jmp         004796D7
 004796D4    mov         edx,dword ptr [ebp-10]
 004796D7    mov         dword ptr [ebp-0A4],edx
 004796DD    mov         word ptr [ebp-2C],20
 004796E3    mov         edx,dword ptr [ebp-8]
 004796E6    mov         eax,dword ptr [ebp-0A4]
 004796EC    call        00485974
 004796F1    mov         edx,dword ptr [ebp-60]
 004796F4    mov         eax,2
 004796F9    call        00532BE8
 004796FE    mov         ecx,dword ptr [ebp-70]
 00479701    test        ecx,ecx
>00479703    je          00479955
 00479709    mov         eax,dword ptr [ebp-70]
 0047970C    call        005312C8
 00479711    mov         dword ptr [ebp-4C],eax
 00479714    xor         edx,edx
 00479716    mov         dword ptr [ebp-48],edx
 00479719    mov         edx,dword ptr [ebp-4C]
 0047971C    mov         eax,20000002
 00479721    call        00532BE8
 00479726    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047972C    mov         eax,dword ptr [ebp-4C]
 0047972F    mov         edx,dword ptr [ecx+eax]
 00479732    mov         dword ptr [ebp-54],edx
 00479735    add         dword ptr [ebp-4C],4
 00479739    add         dword ptr [ebp-48],4
 0047973D    xor         ecx,ecx
 0047973F    mov         dword ptr [ebp-0AC],ecx
 00479745    mov         eax,dword ptr [ebp-0AC]
 0047974B    mov         edx,dword ptr [ebp-54]
 0047974E    cmp         eax,edx
>00479750    jge         004797C8
 00479752    add         dword ptr [ebp-4C],10
 00479756    add         dword ptr [ebp-48],10
 0047975A    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479760    mov         eax,dword ptr [ebp-4C]
 00479763    mov         edx,dword ptr [ecx+eax]
 00479766    mov         dword ptr [ebp-0A8],edx
 0047976C    add         dword ptr [ebp-4C],4
 00479770    add         dword ptr [ebp-48],4
 00479774    mov         eax,dword ptr [ebp-0A8]
 0047977A    call        00531EE8
 0047977F    test        al,al
>00479781    je          0047979A
 00479783    mov         eax,dword ptr [ebp-0A8]
 00479789    call        005312C8
 0047978E    mov         edx,eax
 00479790    mov         eax,20000002
 00479795    call        00532BE8
 0047979A    add         dword ptr [ebp-4C],4
 0047979E    add         dword ptr [ebp-48],4
 004797A2    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004797A8    cmp         edx,3
>004797AB    jle         004797B5
 004797AD    add         dword ptr [ebp-4C],4
 004797B1    add         dword ptr [ebp-48],4
 004797B5    inc         dword ptr [ebp-0AC]
 004797BB    mov         ecx,dword ptr [ebp-0AC]
 004797C1    mov         eax,dword ptr [ebp-54]
 004797C4    cmp         ecx,eax
>004797C6    jl          00479752
 004797C8    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 004797CE    cmp         edx,7DC
>004797D4    jl          004797DF
 004797D6    mov         ecx,dword ptr [ebp-54]
 004797D9    shl         ecx,2
 004797DC    add         dword ptr [ebp-48],ecx
 004797DF    mov         eax,dword ptr [ebp-70]
 004797E2    call        005312C8
 004797E7    mov         edx,eax
 004797E9    mov         ecx,dword ptr [ebp-48]
 004797EC    mov         eax,2
 004797F1    call        00532C54
 004797F6    mov         eax,dword ptr [ebp-70]
 004797F9    call        005312C8
 004797FE    add         eax,4
 00479801    mov         dword ptr [ebp-4C],eax
 00479804    xor         edx,edx
 00479806    mov         dword ptr [ebp-0B0],edx
 0047980C    mov         word ptr [ebp-2C],20
 00479812    mov         ecx,dword ptr [ebp-0B0]
 00479818    mov         eax,dword ptr [ebp-54]
 0047981B    cmp         ecx,eax
>0047981D    jge         00479955
 00479823    add         dword ptr [ebp-4C],10
 00479827    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047982D    mov         ecx,dword ptr [ebp-4C]
 00479830    mov         eax,dword ptr [edx+ecx]
 00479833    mov         dword ptr [ebp-0A8],eax
 00479839    add         dword ptr [ebp-4C],4
 0047983D    add         dword ptr [ebp-4C],4
 00479841    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00479847    cmp         edx,3
>0047984A    jle         00479850
 0047984C    add         dword ptr [ebp-4C],4
 00479850    mov         eax,dword ptr [ebp-0A8]
 00479856    call        00531EE8
 0047985B    test        al,al
>0047985D    je          0047993E
 00479863    mov         edx,dword ptr [ebp-0A8]
 00479869    mov         dword ptr [ebp-0B4],edx
 0047986F    mov         word ptr [ebp-2C],20
 00479875    mov         ecx,dword ptr [ebp-0A8]
 0047987B    mov         dword ptr [ebp-0B8],ecx
 00479881    mov         eax,dword ptr [ebp-0A8]
 00479887    call        005312C8
 0047988C    mov         dword ptr [ebp-50],eax
 0047988F    xor         edx,edx
 00479891    mov         dword ptr [ebp-48],edx
 00479894    xor         ecx,ecx
 00479896    mov         dword ptr [ebp-0BC],ecx
 0047989C    mov         eax,dword ptr [ebp-50]
 0047989F    call        00531360
 004798A4    mov         edx,dword ptr [ebp-70]
 004798A7    cmp         eax,edx
>004798A9    je          004798F9
 004798AB    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004798B1    mov         eax,dword ptr [ebp-50]
 004798B4    mov         edx,dword ptr [ecx+eax]
 004798B7    mov         dword ptr [ebp-0C0],edx
 004798BD    mov         word ptr [ebp-2C],20
 004798C3    add         dword ptr [ebp-50],4
 004798C7    add         dword ptr [ebp-48],4
 004798CB    mov         ecx,dword ptr [ebp-0C0]
 004798D1    test        ecx,ecx
>004798D3    je          004798F1
 004798D5    mov         eax,dword ptr [ebp-0C0]
 004798DB    mov         edx,dword ptr [ebp-0B8]
 004798E1    cmp         eax,edx
>004798E3    jae         004798F1
 004798E5    mov         ecx,dword ptr [ebp-0C0]
 004798EB    mov         dword ptr [ebp-0B8],ecx
 004798F1    inc         dword ptr [ebp-0BC]
>004798F7    jmp         0047989C
 004798F9    mov         eax,dword ptr [ebp-0B4]
 004798FF    call        005312C8
 00479904    mov         edx,eax
 00479906    mov         ecx,dword ptr [ebp-48]
 00479909    mov         eax,2
 0047990E    call        00532C54
 00479913    dec         dword ptr [ebp-0B8]
 00479919    mov         eax,dword ptr [ebp-0B8]
 0047991F    call        005312C8
 00479924    mov         edx,eax
 00479926    mov         ecx,dword ptr [ebp-0B4]
 0047992C    mov         eax,dword ptr [ebp-0B8]
 00479932    sub         ecx,eax
 00479934    mov         eax,2
 00479939    call        00532C54
 0047993E    inc         dword ptr [ebp-0B0]
 00479944    mov         edx,dword ptr [ebp-0B0]
 0047994A    mov         ecx,dword ptr [ebp-54]
 0047994D    cmp         edx,ecx
>0047994F    jl          00479823
 00479955    mov         eax,dword ptr [ebp-74]
 00479958    test        eax,eax
>0047995A    je          00479A8F
 00479960    mov         eax,dword ptr [ebp-74]
 00479963    call        005312C8
 00479968    mov         dword ptr [ebp-4C],eax
 0047996B    xor         edx,edx
 0047996D    mov         dword ptr [ebp-48],edx
 00479970    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479976    mov         eax,dword ptr [ebp-4C]
 00479979    mov         edx,dword ptr [ecx+eax]
 0047997C    mov         dword ptr [ebp-54],edx
 0047997F    add         dword ptr [ebp-4C],4
 00479983    add         dword ptr [ebp-48],4
 00479987    xor         ecx,ecx
 00479989    mov         dword ptr [ebp-0C4],ecx
 0047998F    mov         word ptr [ebp-2C],20
 00479995    mov         eax,dword ptr [ebp-0C4]
 0047999B    mov         edx,dword ptr [ebp-54]
 0047999E    cmp         eax,edx
>004799A0    jge         00479A78
 004799A6    add         dword ptr [ebp-4C],4
 004799AA    add         dword ptr [ebp-48],4
 004799AE    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004799B4    mov         eax,dword ptr [ebp-4C]
 004799B7    mov         eax,dword ptr [ecx+eax]
 004799BA    call        005312C8
 004799BF    mov         dword ptr [ebp-0C8],eax
 004799C5    mov         word ptr [ebp-2C],20
 004799CB    add         dword ptr [ebp-4C],4
 004799CF    add         dword ptr [ebp-48],4
 004799D3    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004799D9    mov         ecx,dword ptr [ebp-0C8]
 004799DF    mov         al,byte ptr [edx+ecx]
 004799E2    mov         byte ptr [ebp-99],al
 004799E8    xor         ecx,ecx
 004799EA    mov         cl,byte ptr [ebp-99]
 004799F0    inc         ecx
 004799F1    mov         edx,dword ptr [ebp-0C8]
 004799F7    mov         eax,2
 004799FC    call        00532C54
 00479A01    add         dword ptr [ebp-4C],4
 00479A05    add         dword ptr [ebp-48],4
 00479A09    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479A0F    mov         ecx,dword ptr [ebp-4C]
 00479A12    mov         eax,dword ptr [edx+ecx]
 00479A15    call        005312C8
 00479A1A    mov         dword ptr [ebp-0C8],eax
 00479A20    add         dword ptr [ebp-4C],4
 00479A24    add         dword ptr [ebp-48],4
 00479A28    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479A2E    mov         ecx,dword ptr [ebp-0C8]
 00479A34    mov         al,byte ptr [edx+ecx+1]
 00479A38    mov         byte ptr [ebp-0C9],al
 00479A3E    xor         ecx,ecx
 00479A40    mov         cl,byte ptr [ebp-0C9]
 00479A46    add         ecx,2
 00479A49    mov         edx,dword ptr [ebp-0C8]
 00479A4F    mov         eax,2
 00479A54    call        00532C54
 00479A59    add         dword ptr [ebp-4C],4
 00479A5D    add         dword ptr [ebp-48],4
 00479A61    inc         dword ptr [ebp-0C4]
 00479A67    mov         edx,dword ptr [ebp-0C4]
 00479A6D    mov         ecx,dword ptr [ebp-54]
 00479A70    cmp         edx,ecx
>00479A72    jl          004799A6
 00479A78    mov         eax,dword ptr [ebp-74]
 00479A7B    call        005312C8
 00479A80    mov         edx,eax
 00479A82    mov         ecx,dword ptr [ebp-48]
 00479A85    mov         eax,2
 00479A8A    call        00532C54
 00479A8F    mov         edx,dword ptr [ebp-78]
 00479A92    test        edx,edx
>00479A94    je          00479B0F
 00479A96    mov         eax,dword ptr [ebp-78]
 00479A99    call        005312C8
 00479A9E    mov         dword ptr [ebp-4C],eax
 00479AA1    xor         edx,edx
 00479AA3    mov         dword ptr [ebp-48],edx
 00479AA6    inc         dword ptr [ebp-4C]
 00479AA9    inc         dword ptr [ebp-48]
 00479AAC    inc         dword ptr [ebp-4C]
 00479AAF    inc         dword ptr [ebp-48]
 00479AB2    add         dword ptr [ebp-4C],4
 00479AB6    add         dword ptr [ebp-48],4
 00479ABA    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479AC0    mov         eax,dword ptr [ebp-4C]
 00479AC3    mov         edx,dword ptr [ecx+eax]
 00479AC6    mov         dword ptr [ebp-58],edx
 00479AC9    add         dword ptr [ebp-48],4
 00479ACD    xor         ecx,ecx
 00479ACF    mov         dword ptr [ebp-0D0],ecx
 00479AD5    mov         word ptr [ebp-2C],20
>00479ADB    jmp         00479AEB
 00479ADD    add         dword ptr [ebp-48],4
 00479AE1    add         dword ptr [ebp-48],4
 00479AE5    inc         dword ptr [ebp-0D0]
 00479AEB    mov         eax,dword ptr [ebp-0D0]
 00479AF1    mov         edx,dword ptr [ebp-58]
 00479AF4    cmp         eax,edx
>00479AF6    jb          00479ADD
 00479AF8    mov         eax,dword ptr [ebp-78]
 00479AFB    call        005312C8
 00479B00    mov         edx,eax
 00479B02    mov         ecx,dword ptr [ebp-48]
 00479B05    mov         eax,2
 00479B0A    call        00532C54
 00479B0F    mov         edx,dword ptr [ebp-84]
 00479B15    test        edx,edx
>00479B17    je          00479CE6
 00479B1D    mov         eax,dword ptr [ebp-84]
 00479B23    call        005312C8
 00479B28    mov         dword ptr [ebp-4C],eax
 00479B2B    xor         edx,edx
 00479B2D    mov         dword ptr [ebp-48],edx
 00479B30    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479B36    mov         eax,dword ptr [ebp-4C]
 00479B39    mov         dx,word ptr [ecx+eax]
 00479B3D    mov         word ptr [ebp-42],dx
 00479B41    add         dword ptr [ebp-4C],2
 00479B45    add         dword ptr [ebp-48],2
 00479B49    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479B4F    mov         eax,dword ptr [ebp-4C]
 00479B52    mov         edx,dword ptr [ecx+eax]
 00479B55    mov         dword ptr [ebp-0D4],edx
 00479B5B    mov         word ptr [ebp-2C],20
 00479B61    add         dword ptr [ebp-4C],4
 00479B65    add         dword ptr [ebp-48],4
 00479B69    xor         ecx,ecx
 00479B6B    mov         dword ptr [ebp-0D8],ecx
>00479B71    jmp         00479BB6
 00479B73    add         dword ptr [ebp-4C],4
 00479B77    add         dword ptr [ebp-48],4
 00479B7B    add         dword ptr [ebp-4C],2
 00479B7F    add         dword ptr [ebp-48],2
 00479B83    mov         eax,[006941D4];0x0 gvar_006941D4
 00479B88    mov         edx,dword ptr [ebp-4C]
 00479B8B    mov         cl,byte ptr [eax+edx]
 00479B8E    mov         byte ptr [ebp-99],cl
 00479B94    inc         dword ptr [ebp-4C]
 00479B97    inc         dword ptr [ebp-48]
 00479B9A    xor         eax,eax
 00479B9C    mov         al,byte ptr [ebp-99]
 00479BA2    add         dword ptr [ebp-4C],eax
 00479BA5    xor         edx,edx
 00479BA7    mov         dl,byte ptr [ebp-99]
 00479BAD    add         dword ptr [ebp-48],edx
 00479BB0    inc         dword ptr [ebp-0D8]
 00479BB6    movzx       ecx,word ptr [ebp-42]
 00479BBA    mov         eax,dword ptr [ebp-0D8]
 00479BC0    cmp         ecx,eax
>00479BC2    jg          00479B73
 00479BC4    mov         edx,dword ptr [ebp-0D4]
 00479BCA    test        edx,edx
>00479BCC    je          00479C08
 00479BCE    mov         eax,dword ptr [ebp-0D4]
 00479BD4    call        005312C8
 00479BD9    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479BDF    mov         cx,word ptr [edx+eax]
 00479BE3    mov         word ptr [ebp-42],cx
 00479BE7    mov         eax,dword ptr [ebp-0D4]
 00479BED    call        005312C8
 00479BF2    mov         edx,eax
 00479BF4    movzx       ecx,word ptr [ebp-42]
 00479BF8    shl         ecx,2
 00479BFB    add         ecx,2
 00479BFE    mov         eax,2
 00479C03    call        00532C54
 00479C08    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00479C0E    cmp         edx,7DA
>00479C14    jl          00479CCC
 00479C1A    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479C20    mov         eax,dword ptr [ebp-4C]
 00479C23    mov         dx,word ptr [ecx+eax]
 00479C27    mov         word ptr [ebp-42],dx
 00479C2B    add         dword ptr [ebp-4C],2
 00479C2F    add         dword ptr [ebp-48],2
 00479C33    xor         ecx,ecx
 00479C35    mov         dword ptr [ebp-0DC],ecx
 00479C3B    mov         word ptr [ebp-2C],20
>00479C41    jmp         00479CBA
 00479C43    inc         dword ptr [ebp-4C]
 00479C46    inc         dword ptr [ebp-48]
 00479C49    add         dword ptr [ebp-4C],4
 00479C4D    add         dword ptr [ebp-48],4
 00479C51    add         dword ptr [ebp-4C],4
 00479C55    add         dword ptr [ebp-48],4
 00479C59    mov         eax,[006941D4];0x0 gvar_006941D4
 00479C5E    mov         edx,dword ptr [ebp-4C]
 00479C61    mov         cl,byte ptr [eax+edx]
 00479C64    mov         byte ptr [ebp-99],cl
 00479C6A    inc         dword ptr [ebp-4C]
 00479C6D    inc         dword ptr [ebp-48]
 00479C70    xor         eax,eax
 00479C72    mov         al,byte ptr [ebp-99]
 00479C78    add         dword ptr [ebp-4C],eax
 00479C7B    xor         edx,edx
 00479C7D    mov         dl,byte ptr [ebp-99]
 00479C83    add         dword ptr [ebp-48],edx
 00479C86    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479C8C    mov         eax,dword ptr [ebp-4C]
 00479C8F    mov         dx,word ptr [ecx+eax]
 00479C93    mov         word ptr [ebp-0DE],dx
 00479C9A    mov         word ptr [ebp-2C],20
 00479CA0    movzx       ecx,word ptr [ebp-0DE]
 00479CA7    add         dword ptr [ebp-4C],ecx
 00479CAA    movzx       eax,word ptr [ebp-0DE]
 00479CB1    add         dword ptr [ebp-48],eax
 00479CB4    inc         dword ptr [ebp-0DC]
 00479CBA    movzx       edx,word ptr [ebp-42]
 00479CBE    mov         ecx,dword ptr [ebp-0DC]
 00479CC4    cmp         edx,ecx
>00479CC6    jg          00479C43
 00479CCC    mov         eax,dword ptr [ebp-84]
 00479CD2    call        005312C8
 00479CD7    mov         edx,eax
 00479CD9    mov         ecx,dword ptr [ebp-48]
 00479CDC    mov         eax,2
 00479CE1    call        00532C54
 00479CE6    mov         edx,dword ptr [ebp-88]
 00479CEC    test        edx,edx
>00479CEE    je          00479E4D
 00479CF4    mov         eax,dword ptr [ebp-88]
 00479CFA    call        005312C8
 00479CFF    mov         dword ptr [ebp-4C],eax
 00479D02    xor         edx,edx
 00479D04    mov         dword ptr [ebp-48],edx
 00479D07    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479D0D    mov         eax,dword ptr [ebp-4C]
 00479D10    mov         dx,word ptr [ecx+eax]
 00479D14    mov         word ptr [ebp-42],dx
 00479D18    add         dword ptr [ebp-4C],2
 00479D1C    add         dword ptr [ebp-48],2
 00479D20    xor         ecx,ecx
 00479D22    mov         dword ptr [ebp-0E4],ecx
 00479D28    mov         word ptr [ebp-2C],20
>00479D2E    jmp         00479D63
 00479D30    mov         eax,[006941D4];0x0 gvar_006941D4
 00479D35    mov         edx,dword ptr [ebp-4C]
 00479D38    mov         cx,word ptr [eax+edx]
 00479D3C    mov         word ptr [ebp-0E6],cx
 00479D43    mov         word ptr [ebp-2C],20
 00479D49    movzx       eax,word ptr [ebp-0E6]
 00479D50    add         dword ptr [ebp-4C],eax
 00479D53    movzx       edx,word ptr [ebp-0E6]
 00479D5A    add         dword ptr [ebp-48],edx
 00479D5D    inc         dword ptr [ebp-0E4]
 00479D63    movzx       ecx,word ptr [ebp-42]
 00479D67    mov         eax,dword ptr [ebp-0E4]
 00479D6D    cmp         ecx,eax
>00479D6F    jg          00479D30
 00479D71    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00479D77    cmp         edx,7DA
>00479D7D    jl          00479E33
 00479D83    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479D89    mov         eax,dword ptr [ebp-4C]
 00479D8C    mov         dx,word ptr [ecx+eax]
 00479D90    mov         word ptr [ebp-42],dx
 00479D94    add         dword ptr [ebp-4C],2
 00479D98    add         dword ptr [ebp-48],2
 00479D9C    xor         ecx,ecx
 00479D9E    mov         dword ptr [ebp-0EC],ecx
>00479DA4    jmp         00479E15
 00479DA6    mov         eax,[006941D4];0x0 gvar_006941D4
 00479DAB    mov         edx,dword ptr [ebp-4C]
 00479DAE    mov         ecx,dword ptr [eax+edx]
 00479DB1    mov         dword ptr [ebp-0F0],ecx
 00479DB7    mov         word ptr [ebp-2C],20
 00479DBD    add         dword ptr [ebp-4C],4
 00479DC1    add         dword ptr [ebp-48],4
 00479DC5    mov         eax,dword ptr [ebp-0F0]
 00479DCB    call        005312C8
 00479DD0    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479DD6    mov         cx,word ptr [edx+eax]
 00479DDA    mov         word ptr [ebp-0F2],cx
 00479DE1    mov         eax,dword ptr [ebp-0F0]
 00479DE7    call        005312C8
 00479DEC    mov         edx,eax
 00479DEE    movzx       ecx,word ptr [ebp-0F2]
 00479DF5    mov         eax,2
 00479DFA    call        00532C54
 00479DFF    add         dword ptr [ebp-4C],2
 00479E03    add         dword ptr [ebp-48],2
 00479E07    add         dword ptr [ebp-4C],2
 00479E0B    add         dword ptr [ebp-48],2
 00479E0F    inc         dword ptr [ebp-0EC]
 00479E15    movzx       edx,word ptr [ebp-42]
 00479E19    mov         ecx,dword ptr [ebp-0EC]
 00479E1F    cmp         edx,ecx
>00479E21    jg          00479DA6
 00479E23    mov         eax,[006ECB3C];0x0 gvar_006ECB3C
 00479E28    cmp         eax,7DC
>00479E2D    jl          00479E33
 00479E2F    add         dword ptr [ebp-48],2
 00479E33    mov         eax,dword ptr [ebp-88]
 00479E39    call        005312C8
 00479E3E    mov         edx,eax
 00479E40    mov         ecx,dword ptr [ebp-48]
 00479E43    mov         eax,2
 00479E48    call        00532C54
 00479E4D    mov         edx,dword ptr [ebp-8C]
 00479E53    test        edx,edx
>00479E55    je          00479EC1
 00479E57    mov         eax,dword ptr [ebp-8C]
 00479E5D    call        005312C8
 00479E62    mov         dword ptr [ebp-4C],eax
 00479E65    xor         edx,edx
 00479E67    mov         dword ptr [ebp-48],edx
 00479E6A    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479E70    mov         eax,dword ptr [ebp-4C]
 00479E73    mov         dx,word ptr [ecx+eax]
 00479E77    mov         word ptr [ebp-42],dx
 00479E7B    add         dword ptr [ebp-48],2
 00479E7F    xor         ecx,ecx
 00479E81    mov         dword ptr [ebp-0F8],ecx
 00479E87    mov         word ptr [ebp-2C],20
>00479E8D    jmp         00479E99
 00479E8F    add         dword ptr [ebp-48],6
 00479E93    inc         dword ptr [ebp-0F8]
 00479E99    movzx       eax,word ptr [ebp-42]
 00479E9D    mov         edx,dword ptr [ebp-0F8]
 00479EA3    cmp         eax,edx
>00479EA5    jg          00479E8F
 00479EA7    mov         eax,dword ptr [ebp-8C]
 00479EAD    call        005312C8
 00479EB2    mov         edx,eax
 00479EB4    mov         ecx,dword ptr [ebp-48]
 00479EB7    mov         eax,2
 00479EBC    call        00532C54
 00479EC1    mov         ecx,dword ptr [ebp-6C]
 00479EC4    mov         edx,dword ptr [ebp-68]
 00479EC7    sub         ecx,edx
 00479EC9    mov         eax,[006941FC];0x0 gvar_006941FC
 00479ECE    sub         ecx,eax
 00479ED0    mov         edx,dword ptr [ebp-60]
 00479ED3    mov         eax,2
 00479ED8    call        00532C54
 00479EDD    mov         edx,dword ptr [ebp-40]
 00479EE0    mov         eax,dword ptr [edx+30];TAnalyzeThread.?f30:dword
 00479EE3    mov         edx,dword ptr [ebp-68]
 00479EE6    call        0040AAE4
 00479EEB    mov         dword ptr [ebp-0FC],eax
 00479EF1    mov         word ptr [ebp-2C],20
 00479EF7    mov         ecx,dword ptr [ebp-0FC]
 00479EFD    test        ecx,ecx
>00479EFF    je          0047A0C5
 00479F05    mov         eax,[006941D4];0x0 gvar_006941D4
 00479F0A    mov         edx,dword ptr [ebp-60]
 00479F0D    add         eax,edx
 00479F0F    mov         ecx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 00479F15    sub         eax,ecx
 00479F17    mov         edx,dword ptr ds:[69420C];0x0 gvar_0069420C
 00479F1D    mov         eax,dword ptr [eax+edx]
 00479F20    mov         dword ptr [ebp-64],eax
 00479F23    mov         ecx,dword ptr [ebp-64]
 00479F26    test        ecx,ecx
>00479F28    je          0047A0C5
 00479F2E    mov         eax,dword ptr [ebp-64]
 00479F31    call        00531EE8
 00479F36    test        al,al
>00479F38    je          0047A0C5
 00479F3E    mov         eax,dword ptr [ebp-64]
 00479F41    call        005312C8
 00479F46    mov         dword ptr [ebp-4C],eax
 00479F49    xor         edx,edx
 00479F4B    mov         dword ptr [ebp-48],edx
 00479F4E    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479F54    mov         eax,dword ptr [ebp-4C]
 00479F57    mov         dl,byte ptr [ecx+eax]
 00479F5A    mov         byte ptr [ebp-0FD],dl
 00479F60    inc         dword ptr [ebp-4C]
 00479F63    inc         dword ptr [ebp-48]
 00479F66    mov         cl,byte ptr [ebp-0FD]
 00479F6C    cmp         cl,7
>00479F6F    je          00479F86
 00479F71    dec         dword ptr [ebp-20]
 00479F74    lea         eax,[ebp-8]
 00479F77    mov         edx,2
 00479F7C    call        0067DCA0
>00479F81    jmp         0047A0DB
 00479F86    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479F8C    mov         eax,dword ptr [ebp-4C]
 00479F8F    mov         dl,byte ptr [ecx+eax]
 00479F92    mov         byte ptr [ebp-99],dl
 00479F98    inc         dword ptr [ebp-4C]
 00479F9B    inc         dword ptr [ebp-48]
 00479F9E    xor         eax,eax
 00479FA0    mov         al,byte ptr [ebp-99]
 00479FA6    mov         edx,dword ptr [ebp-4C]
 00479FA9    call        00535AA0
 00479FAE    test        al,al
>00479FB0    jne         00479FC7
 00479FB2    dec         dword ptr [ebp-20]
 00479FB5    lea         eax,[ebp-8]
 00479FB8    mov         edx,2
 00479FBD    call        0067DCA0
>00479FC2    jmp         0047A0DB
 00479FC7    xor         ecx,ecx
 00479FC9    mov         cl,byte ptr [ebp-99]
 00479FCF    add         ecx,0A
 00479FD2    add         dword ptr [ebp-4C],ecx
 00479FD5    xor         eax,eax
 00479FD7    mov         al,byte ptr [ebp-99]
 00479FDD    add         eax,0A
 00479FE0    add         dword ptr [ebp-48],eax
 00479FE3    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00479FE9    mov         ecx,dword ptr [ebp-4C]
 00479FEC    mov         al,byte ptr [edx+ecx]
 00479FEF    mov         byte ptr [ebp-99],al
 00479FF5    inc         dword ptr [ebp-4C]
 00479FF8    inc         dword ptr [ebp-48]
 00479FFB    xor         eax,eax
 00479FFD    mov         al,byte ptr [ebp-99]
 0047A003    mov         edx,dword ptr [ebp-4C]
 0047A006    call        00535AA0
 0047A00B    test        al,al
>0047A00D    jne         0047A024
 0047A00F    dec         dword ptr [ebp-20]
 0047A012    lea         eax,[ebp-8]
 0047A015    mov         edx,2
 0047A01A    call        0067DCA0
>0047A01F    jmp         0047A0DB
 0047A024    mov         word ptr [ebp-2C],74
 0047A02A    xor         ecx,ecx
 0047A02C    mov         cl,byte ptr [ebp-99]
 0047A032    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047A038    mov         eax,dword ptr [ebp-4C]
 0047A03B    add         edx,eax
 0047A03D    lea         eax,[ebp-18]
 0047A040    call        0067DB28
 0047A045    push        eax
 0047A046    inc         dword ptr [ebp-20]
 0047A049    lea         eax,[ebp-14]
 0047A04C    call        00401EA8
 0047A051    mov         edx,eax
 0047A053    inc         dword ptr [ebp-20]
 0047A056    pop         eax
 0047A057    call        0067E030
 0047A05C    dec         dword ptr [ebp-20]
 0047A05F    lea         eax,[ebp-18]
 0047A062    mov         edx,2
 0047A067    call        0067DCA0
 0047A06C    mov         word ptr [ebp-2C],68
 0047A072    xor         ecx,ecx
 0047A074    mov         cl,byte ptr [ebp-99]
 0047A07A    add         dword ptr [ebp-48],ecx
 0047A07D    mov         eax,[006E9C8C];^_FMain_11011981
 0047A082    mov         eax,dword ptr [eax]
 0047A084    mov         ecx,dword ptr [ebp-14]
 0047A087    mov         edx,dword ptr [ebp-0FC]
 0047A08D    call        0040ADFC
 0047A092    mov         eax,dword ptr [ebp-64]
 0047A095    call        005312C8
 0047A09A    mov         edx,eax
 0047A09C    add         edx,0FFFFFFFC
 0047A09F    mov         ecx,dword ptr [ebp-48]
 0047A0A2    add         ecx,4
 0047A0A5    mov         eax,2
 0047A0AA    call        00532C54
 0047A0AF    dec         dword ptr [ebp-20]
 0047A0B2    lea         eax,[ebp-14]
 0047A0B5    mov         edx,2
 0047A0BA    call        0067DCA0
 0047A0BF    mov         word ptr [ebp-2C],20
 0047A0C5    dec         dword ptr [ebp-20]
 0047A0C8    lea         eax,[ebp-8]
 0047A0CB    mov         edx,2
 0047A0D0    call        0067DCA0
 0047A0D5    mov         word ptr [ebp-2C],8
 0047A0DB    add         dword ptr [ebp-60],4
 0047A0DF    mov         ecx,dword ptr [ebp-60]
 0047A0E2    mov         eax,[006ECB4C];0x0 gvar_006ECB4C
 0047A0E7    cmp         ecx,eax
>0047A0E9    jae         0047A0F9
 0047A0EB    mov         edx,dword ptr [ebp-40]
 0047A0EE    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047A0F1    test        cl,cl
>0047A0F3    je          00479278
 0047A0F9    mov         eax,dword ptr [ebp-40]
 0047A0FC    call        004768BC
 0047A101    mov         edx,dword ptr [ebp-3C]
 0047A104    mov         dword ptr fs:[0],edx
 0047A10B    mov         esp,ebp
 0047A10D    pop         ebp
 0047A10E    ret
*}
end;

//0047A110
procedure sub_0047A110(?:TAnalyzeThread);
begin
{*
 0047A110    push        ebp
 0047A111    mov         ebp,esp
 0047A113    add         esp,0FFFFFF9C
 0047A116    mov         dword ptr [ebp-50],eax
 0047A119    mov         eax,6B33B8
 0047A11E    call        0066FECC
 0047A123    mov         word ptr [ebp-3C],14
 0047A129    mov         edx,6B29B9
 0047A12E    lea         eax,[ebp-20]
 0047A131    call        0067DAB4
 0047A136    inc         dword ptr [ebp-30]
 0047A139    lea         ecx,[ebp-20]
 0047A13C    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 0047A142    mov         eax,dword ptr [ebp-50]
 0047A145    call        0047673C
 0047A14A    mov         dword ptr [ebp-54],eax
 0047A14D    dec         dword ptr [ebp-30]
 0047A150    lea         eax,[ebp-20]
 0047A153    mov         edx,2
 0047A158    call        0067DCA0
 0047A15D    mov         word ptr [ebp-3C],8
 0047A163    mov         word ptr [ebp-3C],20
 0047A169    lea         eax,[ebp-1C]
 0047A16C    call        0046DE3C
 0047A171    add         dword ptr [ebp-30],4
 0047A175    mov         word ptr [ebp-3C],8
 0047A17B    xor         edx,edx
 0047A17D    mov         dword ptr [ebp-58],edx
>0047A180    jmp         0047A2CE
 0047A185    mov         ecx,dword ptr [ebp-58]
 0047A188    mov         eax,dword ptr [ebp-54]
 0047A18B    and         ecx,eax
>0047A18D    jne         0047A197
 0047A18F    mov         eax,dword ptr [ebp-50]
 0047A192    call        0047688C
 0047A197    mov         eax,dword ptr [ebp-58]
 0047A19A    call        00531360
 0047A19F    call        0053A308
 0047A1A4    mov         dword ptr [ebp-5C],eax
 0047A1A7    mov         word ptr [ebp-3C],8
 0047A1AD    mov         edx,dword ptr [ebp-5C]
 0047A1B0    test        edx,edx
>0047A1B2    je          0047A2CA
 0047A1B8    mov         ecx,dword ptr [ebp-5C]
 0047A1BB    mov         al,byte ptr [ecx+5]
 0047A1BE    cmp         al,23
>0047A1C0    jne         0047A2CA
 0047A1C6    mov         word ptr [ebp-3C],38
 0047A1CC    lea         eax,[ebp-24]
 0047A1CF    call        00401EA8
 0047A1D4    mov         edx,eax
 0047A1D6    inc         dword ptr [ebp-30]
 0047A1D9    mov         eax,dword ptr [ebp-5C]
 0047A1DC    call        0048591C
 0047A1E1    mov         word ptr [ebp-3C],2C
 0047A1E7    mov         word ptr [ebp-3C],44
 0047A1ED    lea         eax,[ebp-28]
 0047A1F0    call        00401EA8
 0047A1F5    mov         ecx,eax
 0047A1F7    inc         dword ptr [ebp-30]
 0047A1FA    lea         edx,[ebp-24]
 0047A1FD    mov         eax,6B29D5
 0047A202    call        0067E37C
 0047A207    mov         word ptr [ebp-3C],2C
 0047A20D    lea         eax,[ebp-28]
 0047A210    call        00403C0C
 0047A215    mov         edx,eax
 0047A217    mov         eax,6ECAB4
 0047A21C    call        00472F30
 0047A221    mov         dword ptr [ebp-60],eax
 0047A224    lea         eax,[ebp-28]
 0047A227    call        00403C0C
 0047A22C    mov         ecx,eax
 0047A22E    mov         eax,6ECAB4
 0047A233    mov         edx,dword ptr [ebp-60]
 0047A236    call        0046FD54
 0047A23B    mov         dword ptr [ebp-64],eax
 0047A23E    mov         ecx,dword ptr [ebp-64]
 0047A241    inc         ecx
>0047A242    je          0047A294
 0047A244    mov         eax,dword ptr [ebp-64]
 0047A247    shl         eax,4
 0047A24A    mov         edx,dword ptr ds:[6ECAC8];0x0 gvar_006ECAC8
 0047A250    mov         ecx,dword ptr [edx+eax+0C]
 0047A254    mov         dword ptr [ebp-64],ecx
 0047A257    lea         eax,[ebp-1C]
 0047A25A    push        eax
 0047A25B    mov         eax,6ECAB4
 0047A260    mov         ecx,1
 0047A265    mov         edx,dword ptr [ebp-64]
 0047A268    call        0047191C
 0047A26D    test        eax,eax
>0047A26F    je          0047A294
 0047A271    lea         edx,[ebp-24]
 0047A274    mov         eax,dword ptr [ebp-50]
 0047A277    call        00476980
 0047A27C    lea         ecx,[ebp-1C]
 0047A27F    push        ecx
 0047A280    mov         edx,dword ptr [ebp-58]
 0047A283    add         edx,4
 0047A286    mov         eax,dword ptr [ebp-50]
 0047A289    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047A28C    mov         ecx,dword ptr [ebp-64]
 0047A28F    call        00403C60
 0047A294    mov         edx,dword ptr [ebp-60]
 0047A297    test        edx,edx
>0047A299    je          0047A2A4
 0047A29B    push        dword ptr [ebp-60]
 0047A29E    call        0066EAC0
 0047A2A3    pop         ecx
 0047A2A4    dec         dword ptr [ebp-30]
 0047A2A7    lea         eax,[ebp-28]
 0047A2AA    mov         edx,2
 0047A2AF    call        0067DCA0
 0047A2B4    dec         dword ptr [ebp-30]
 0047A2B7    lea         eax,[ebp-24]
 0047A2BA    mov         edx,2
 0047A2BF    call        0067DCA0
 0047A2C4    mov         word ptr [ebp-3C],8
 0047A2CA    add         dword ptr [ebp-58],4
 0047A2CE    mov         ecx,dword ptr [ebp-58]
 0047A2D1    mov         eax,[006ECB4C];0x0 gvar_006ECB4C
 0047A2D6    cmp         ecx,eax
>0047A2D8    jae         0047A2E8
 0047A2DA    mov         edx,dword ptr [ebp-50]
 0047A2DD    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047A2E0    test        cl,cl
>0047A2E2    je          0047A185
 0047A2E8    mov         eax,dword ptr [ebp-50]
 0047A2EB    call        004768BC
 0047A2F0    sub         dword ptr [ebp-30],4
 0047A2F4    lea         eax,[ebp-1C]
 0047A2F7    mov         edx,2
 0047A2FC    call        0046DF70
 0047A301    mov         ecx,dword ptr [ebp-4C]
 0047A304    mov         dword ptr fs:[0],ecx
 0047A30B    mov         esp,ebp
 0047A30D    pop         ebp
 0047A30E    ret
*}
end;

//0047A310
procedure sub_0047A310(?:TAnalyzeThread);
begin
{*
 0047A310    push        ebp
 0047A311    mov         ebp,esp
 0047A313    add         esp,0FFFFFF2C
 0047A319    push        ebx
 0047A31A    mov         dword ptr [ebp-90],eax
 0047A320    mov         eax,6B34C4
 0047A325    call        0066FECC
 0047A32A    mov         word ptr [ebp-7C],14
 0047A330    mov         edx,6B29DA
 0047A335    lea         eax,[ebp-34]
 0047A338    call        0067DAB4
 0047A33D    inc         dword ptr [ebp-70]
 0047A340    lea         ecx,[ebp-34]
 0047A343    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 0047A349    mov         eax,dword ptr [ebp-90]
 0047A34F    call        0047673C
 0047A354    mov         dword ptr [ebp-98],eax
 0047A35A    dec         dword ptr [ebp-70]
 0047A35D    lea         eax,[ebp-34]
 0047A360    mov         edx,2
 0047A365    call        0067DCA0
 0047A36A    mov         word ptr [ebp-7C],8
 0047A370    mov         word ptr [ebp-7C],20
 0047A376    lea         eax,[ebp-30]
 0047A379    call        0046DFF0
 0047A37E    add         dword ptr [ebp-70],3
 0047A382    mov         word ptr [ebp-7C],8
 0047A388    lea         edx,[ebp-30]
 0047A38B    mov         dword ptr [ebp-9C],edx
 0047A391    xor         ecx,ecx
 0047A393    mov         dword ptr [ebp-0A0],ecx
>0047A399    jmp         0047A76D
 0047A39E    mov         eax,dword ptr [ebp-0A0]
 0047A3A4    mov         edx,dword ptr [ebp-98]
 0047A3AA    and         eax,edx
>0047A3AC    jne         0047A3B9
 0047A3AE    mov         eax,dword ptr [ebp-90]
 0047A3B4    call        0047688C
 0047A3B9    mov         eax,dword ptr [ebp-0A0]
 0047A3BF    call        00531360
 0047A3C4    call        0053A308
 0047A3C9    mov         dword ptr [ebp-0A4],eax
 0047A3CF    mov         word ptr [ebp-7C],8
 0047A3D5    mov         edx,dword ptr [ebp-0A4]
 0047A3DB    test        edx,edx
>0047A3DD    je          0047A766
 0047A3E3    mov         ecx,dword ptr [ebp-0A4]
 0047A3E9    mov         al,byte ptr [ecx+5]
 0047A3EC    cmp         al,23
>0047A3EE    jne         0047A766
 0047A3F4    mov         eax,dword ptr [ebp-0A0]
 0047A3FA    call        00531360
 0047A3FF    mov         edx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 0047A405    sub         eax,edx
 0047A407    mov         dword ptr [ebp-0A8],eax
 0047A40D    mov         edx,dword ptr [ebp-0A8]
 0047A413    mov         eax,dword ptr [ebp-90]
 0047A419    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047A41C    call        0040AAE4
 0047A421    mov         dword ptr [ebp-0AC],eax
 0047A427    mov         edx,dword ptr [ebp-0AC]
 0047A42D    test        edx,edx
>0047A42F    je          0047A766
 0047A435    xor         ecx,ecx
 0047A437    mov         dword ptr [ebp-0B0],ecx
>0047A43D    jmp         0047A73D
 0047A442    mov         word ptr [ebp-7C],38
 0047A448    lea         eax,[ebp-38]
 0047A44B    call        00401EA8
 0047A450    mov         ecx,eax
 0047A452    inc         dword ptr [ebp-70]
 0047A455    mov         edx,dword ptr [ebp-0AC]
 0047A45B    mov         eax,dword ptr [edx+24]
 0047A45E    mov         edx,dword ptr [ebp-0B0]
 0047A464    mov         ebx,dword ptr [eax]
 0047A466    call        dword ptr [ebx+0C]
 0047A469    lea         eax,[ebp-38]
 0047A46C    call        00403C0C
 0047A471    mov         edx,eax
 0047A473    mov         eax,6ECAB4
 0047A478    call        0046EDD0
 0047A47D    mov         word ptr [ebp-0B2],ax
 0047A484    dec         dword ptr [ebp-70]
 0047A487    lea         eax,[ebp-38]
 0047A48A    mov         edx,2
 0047A48F    call        0067DCA0
 0047A494    mov         word ptr [ebp-7C],2C
 0047A49A    mov         eax,6ECAB4
 0047A49F    mov         dx,word ptr [ebp-0B2]
 0047A4A6    call        0047288C
 0047A4AB    mov         dword ptr [ebp-0B8],eax
 0047A4B1    mov         word ptr [ebp-7C],44
 0047A4B7    lea         eax,[ebp-3C]
 0047A4BA    call        00401EA8
 0047A4BF    mov         edx,eax
 0047A4C1    inc         dword ptr [ebp-70]
 0047A4C4    mov         eax,dword ptr [ebp-0A4]
 0047A4CA    call        0048591C
 0047A4CF    lea         eax,[ebp-3C]
 0047A4D2    call        00403C0C
 0047A4D7    mov         ecx,eax
 0047A4D9    mov         eax,6ECAB4
 0047A4DE    mov         edx,dword ptr [ebp-0B8]
 0047A4E4    call        004701C8
 0047A4E9    mov         dword ptr [ebp-0BC],eax
 0047A4EF    dec         dword ptr [ebp-70]
 0047A4F2    lea         eax,[ebp-3C]
 0047A4F5    mov         edx,2
 0047A4FA    call        0067DCA0
 0047A4FF    mov         word ptr [ebp-7C],2C
 0047A505    mov         ecx,dword ptr [ebp-0BC]
 0047A50B    inc         ecx
>0047A50C    je          0047A71B
 0047A512    mov         eax,dword ptr [ebp-0BC]
 0047A518    shl         eax,4
 0047A51B    mov         edx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 0047A521    mov         ecx,dword ptr [edx+eax+0C]
 0047A525    mov         dword ptr [ebp-0BC],ecx
 0047A52B    push        dword ptr [ebp-9C]
 0047A531    mov         eax,6ECAB4
 0047A536    mov         ecx,8
 0047A53B    mov         edx,dword ptr [ebp-0BC]
 0047A541    call        00472158
 0047A546    test        eax,eax
>0047A548    je          0047A71B
 0047A54E    mov         eax,dword ptr [ebp-9C]
 0047A554    mov         edx,dword ptr [eax+1F]
 0047A557    test        edx,edx
>0047A559    je          0047A71B
 0047A55F    mov         edx,dword ptr [ebp-9C]
 0047A565    add         edx,6
 0047A568    mov         eax,dword ptr [ebp-90]
 0047A56E    call        00476980
 0047A573    mov         ecx,dword ptr [ebp-9C]
 0047A579    mov         eax,dword ptr [ecx+1F]
 0047A57C    mov         dword ptr [ebp-0C0],eax
 0047A582    mov         word ptr [ebp-7C],50
 0047A588    lea         edx,[ebp-54]
 0047A58B    push        edx
 0047A58C    call        004534C0
 0047A591    pop         ecx
 0047A592    add         dword ptr [ebp-70],3
 0047A596    mov         word ptr [ebp-7C],5C
 0047A59C    xor         ecx,ecx
 0047A59E    mov         dword ptr [ebp-0C4],ecx
>0047A5A4    jmp         0047A6EB
 0047A5A9    mov         eax,dword ptr [ebp-0C0]
 0047A5AF    mov         dl,byte ptr [eax]
 0047A5B1    mov         byte ptr [ebp-54],dl
 0047A5B4    inc         dword ptr [ebp-0C0]
 0047A5BA    mov         ecx,dword ptr [ebp-0C0]
 0047A5C0    mov         eax,dword ptr [ecx]
 0047A5C2    mov         dword ptr [ebp-53],eax
 0047A5C5    add         dword ptr [ebp-0C0],4
 0047A5CC    mov         edx,dword ptr [ebp-0C0]
 0047A5D2    mov         ecx,dword ptr [edx]
 0047A5D4    mov         dword ptr [ebp-4F],ecx
 0047A5D7    add         dword ptr [ebp-0C0],4
 0047A5DE    mov         eax,dword ptr [ebp-0C0]
 0047A5E4    mov         dx,word ptr [eax]
 0047A5E7    mov         word ptr [ebp-0C6],dx
 0047A5EE    mov         word ptr [ebp-7C],5C
 0047A5F4    add         dword ptr [ebp-0C0],2
 0047A5FB    mov         word ptr [ebp-7C],68
 0047A601    movzx       ecx,word ptr [ebp-0C6]
 0047A608    lea         eax,[ebp-58]
 0047A60B    mov         edx,dword ptr [ebp-0C0]
 0047A611    call        0067DB28
 0047A616    mov         edx,eax
 0047A618    inc         dword ptr [ebp-70]
 0047A61B    lea         eax,[ebp-4B]
 0047A61E    call        0067DCD0
 0047A623    dec         dword ptr [ebp-70]
 0047A626    lea         eax,[ebp-58]
 0047A629    mov         edx,2
 0047A62E    call        0067DCA0
 0047A633    movzx       ecx,word ptr [ebp-0C6]
 0047A63A    inc         ecx
 0047A63B    add         dword ptr [ebp-0C0],ecx
 0047A641    mov         eax,dword ptr [ebp-0C0]
 0047A647    mov         dx,word ptr [eax]
 0047A64A    mov         word ptr [ebp-0C6],dx
 0047A651    add         dword ptr [ebp-0C0],2
 0047A658    mov         word ptr [ebp-7C],74
 0047A65E    movzx       ecx,word ptr [ebp-0C6]
 0047A665    lea         eax,[ebp-5C]
 0047A668    mov         edx,dword ptr [ebp-0C0]
 0047A66E    call        0067DB28
 0047A673    push        eax
 0047A674    inc         dword ptr [ebp-70]
 0047A677    lea         eax,[ebp-60]
 0047A67A    call        00401EA8
 0047A67F    mov         edx,eax
 0047A681    inc         dword ptr [ebp-70]
 0047A684    pop         eax
 0047A685    call        00531D20
 0047A68A    lea         edx,[ebp-60]
 0047A68D    lea         eax,[ebp-47]
 0047A690    call        0067DCD0
 0047A695    dec         dword ptr [ebp-70]
 0047A698    lea         eax,[ebp-60]
 0047A69B    mov         edx,2
 0047A6A0    call        0067DCA0
 0047A6A5    dec         dword ptr [ebp-70]
 0047A6A8    lea         eax,[ebp-5C]
 0047A6AB    mov         edx,2
 0047A6B0    call        0067DCA0
 0047A6B5    movzx       ecx,word ptr [ebp-0C6]
 0047A6BC    inc         ecx
 0047A6BD    add         dword ptr [ebp-0C0],ecx
 0047A6C3    mov         al,byte ptr [ebp-54]
 0047A6C6    push        eax
 0047A6C7    push        dword ptr [ebp-53]
 0047A6CA    push        dword ptr [ebp-4F]
 0047A6CD    push        dword ptr [ebp-4B]
 0047A6D0    push        dword ptr [ebp-47]
 0047A6D3    mov         edx,dword ptr [ebp-0A4]
 0047A6D9    mov         eax,dword ptr [edx+1A]
 0047A6DC    xor         ecx,ecx
 0047A6DE    xor         edx,edx
 0047A6E0    call        004830E8
 0047A6E5    inc         dword ptr [ebp-0C4]
 0047A6EB    mov         eax,dword ptr [ebp-9C]
 0047A6F1    movzx       edx,word ptr [eax+1D]
 0047A6F5    mov         ecx,dword ptr [ebp-0C4]
 0047A6FB    cmp         edx,ecx
>0047A6FD    jg          0047A5A9
 0047A703    sub         dword ptr [ebp-70],3
 0047A707    push        2
 0047A709    lea         eax,[ebp-54]
 0047A70C    push        eax
 0047A70D    call        0046DD48
 0047A712    add         esp,8
 0047A715    mov         word ptr [ebp-7C],2C
 0047A71B    mov         edx,dword ptr [ebp-0B8]
 0047A721    test        edx,edx
>0047A723    je          0047A731
 0047A725    push        dword ptr [ebp-0B8]
 0047A72B    call        0066EAC0
 0047A730    pop         ecx
 0047A731    mov         word ptr [ebp-7C],8
 0047A737    inc         dword ptr [ebp-0B0]
 0047A73D    mov         ecx,dword ptr [ebp-0AC]
 0047A743    mov         eax,dword ptr [ecx+24]
 0047A746    mov         edx,dword ptr [eax]
 0047A748    call        dword ptr [edx+14]
 0047A74B    mov         ecx,dword ptr [ebp-0B0]
 0047A751    cmp         eax,ecx
>0047A753    jle         0047A766
 0047A755    mov         eax,dword ptr [ebp-90]
 0047A75B    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047A75E    test        dl,dl
>0047A760    je          0047A442
 0047A766    add         dword ptr [ebp-0A0],4
 0047A76D    mov         ecx,dword ptr [ebp-0A0]
 0047A773    mov         eax,[006ECB4C];0x0 gvar_006ECB4C
 0047A778    cmp         ecx,eax
>0047A77A    jae         0047A78D
 0047A77C    mov         edx,dword ptr [ebp-90]
 0047A782    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047A785    test        cl,cl
>0047A787    je          0047A39E
 0047A78D    mov         eax,dword ptr [ebp-90]
 0047A793    call        004768BC
 0047A798    mov         edx,dword ptr ds:[6ECB6C];0x0 gvar_006ECB6C
 0047A79E    mov         ecx,dword ptr [edx+8]
 0047A7A1    mov         dword ptr [ebp-0CC],ecx
 0047A7A7    mov         word ptr [ebp-7C],8
 0047A7AD    mov         word ptr [ebp-7C],80
 0047A7B3    mov         edx,6B29EB
 0047A7B8    lea         eax,[ebp-64]
 0047A7BB    call        0067DAB4
 0047A7C0    inc         dword ptr [ebp-70]
 0047A7C3    lea         ecx,[ebp-64]
 0047A7C6    mov         edx,dword ptr [ebp-0CC]
 0047A7CC    mov         eax,dword ptr [ebp-90]
 0047A7D2    call        0047673C
 0047A7D7    mov         dword ptr [ebp-98],eax
 0047A7DD    dec         dword ptr [ebp-70]
 0047A7E0    lea         eax,[ebp-64]
 0047A7E3    mov         edx,2
 0047A7E8    call        0067DCA0
 0047A7ED    xor         ecx,ecx
 0047A7EF    mov         dword ptr [ebp-0D0],ecx
 0047A7F5    mov         word ptr [ebp-7C],8
>0047A7FB    jmp         0047A893
 0047A800    mov         eax,dword ptr [ebp-0D0]
 0047A806    mov         edx,dword ptr [ebp-98]
 0047A80C    and         eax,edx
>0047A80E    jne         0047A81B
 0047A810    mov         eax,dword ptr [ebp-90]
 0047A816    call        0047688C
 0047A81B    mov         edx,dword ptr [ebp-0D0]
 0047A821    mov         eax,[006ECB6C];0x0 gvar_006ECB6C
 0047A826    call        TList.Get
 0047A82B    mov         dword ptr [ebp-0D4],eax
 0047A831    mov         word ptr [ebp-7C],8
 0047A837    mov         word ptr [ebp-7C],8C
 0047A83D    lea         eax,[ebp-68]
 0047A840    call        00401EA8
 0047A845    mov         edx,eax
 0047A847    inc         dword ptr [ebp-70]
 0047A84A    mov         ecx,dword ptr [ebp-0D4]
 0047A850    mov         eax,dword ptr [ecx+4]
 0047A853    call        00535C94
 0047A858    lea         edx,[ebp-68]
 0047A85B    mov         eax,dword ptr [ebp-90]
 0047A861    call        00476980
 0047A866    dec         dword ptr [ebp-70]
 0047A869    lea         eax,[ebp-68]
 0047A86C    mov         edx,2
 0047A871    call        0067DCA0
 0047A876    mov         ecx,dword ptr [ebp-0D4]
 0047A87C    mov         edx,dword ptr [ecx+4]
 0047A87F    mov         eax,dword ptr [ebp-90]
 0047A885    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047A888    call        004115D0
 0047A88D    inc         dword ptr [ebp-0D0]
 0047A893    mov         edx,dword ptr [ebp-0D0]
 0047A899    mov         ecx,dword ptr [ebp-0CC]
 0047A89F    cmp         edx,ecx
>0047A8A1    jge         0047A8B4
 0047A8A3    mov         eax,dword ptr [ebp-90]
 0047A8A9    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047A8AC    test        dl,dl
>0047A8AE    je          0047A800
 0047A8B4    mov         eax,dword ptr [ebp-90]
 0047A8BA    call        004768BC
 0047A8BF    sub         dword ptr [ebp-70],3
 0047A8C3    lea         eax,[ebp-30]
 0047A8C6    mov         edx,2
 0047A8CB    call        0046E124
 0047A8D0    mov         ecx,dword ptr [ebp-8C]
 0047A8D6    mov         dword ptr fs:[0],ecx
 0047A8DD    pop         ebx
 0047A8DE    mov         esp,ebp
 0047A8E0    pop         ebp
 0047A8E1    ret
*}
end;

//0047A8E4
{*procedure sub_0047A8E4(?:TAnalyzeThread; ?:?; ?:Pointer; ?:?);
begin
 0047A8E4    push        ebp
 0047A8E5    mov         ebp,esp
 0047A8E7    add         esp,0FFFFFFBC
 0047A8EA    mov         dword ptr [ebp-4],ecx
 0047A8ED    mov         dword ptr [ebp-34],edx
 0047A8F0    mov         dword ptr [ebp-30],eax
 0047A8F3    mov         eax,6B35B8
 0047A8F8    call        0066FECC
 0047A8FD    mov         dword ptr [ebp-10],1
 0047A904    lea         edx,[ebp-4]
 0047A907    lea         eax,[ebp-4]
 0047A90A    call        0067DAEC
 0047A90F    inc         dword ptr [ebp-10]
 0047A912    mov         word ptr [ebp-1C],8
 0047A918    mov         edx,dword ptr [ebp-34]
 0047A91B    mov         dword ptr [ebp-38],edx
 0047A91E    mov         ecx,dword ptr [ebp-38]
 0047A921    test        ecx,ecx
>0047A923    je          0047AA00
 0047A929    mov         eax,dword ptr [ebp-38]
 0047A92C    call        0053A308
 0047A931    mov         dword ptr [ebp-3C],eax
 0047A934    mov         word ptr [ebp-1C],8
 0047A93A    mov         edx,dword ptr [ebp-3C]
 0047A93D    test        edx,edx
>0047A93F    je          0047A9EA
 0047A945    mov         ecx,dword ptr [ebp-3C]
 0047A948    mov         eax,dword ptr [ecx+1A]
 0047A94B    mov         edx,dword ptr [eax+4]
 0047A94E    test        edx,edx
>0047A950    je          0047A9EA
 0047A956    xor         ecx,ecx
 0047A958    mov         dword ptr [ebp-40],ecx
>0047A95B    jmp         0047A9D3
 0047A95D    mov         eax,dword ptr [ebp-3C]
 0047A960    mov         edx,dword ptr [eax+1A]
 0047A963    mov         eax,dword ptr [edx+4]
 0047A966    mov         edx,dword ptr [ebp-40]
 0047A969    call        TList.Get
 0047A96E    mov         dword ptr [ebp-44],eax
 0047A971    mov         word ptr [ebp-1C],8
 0047A977    mov         ecx,dword ptr [ebp-44]
 0047A97A    mov         eax,dword ptr [ecx+9]
 0047A97D    mov         edx,dword ptr [ebp-4]
 0047A980    call        SameText
 0047A985    test        al,al
>0047A987    je          0047A9D0
 0047A989    mov         word ptr [ebp-1C],14
 0047A98F    mov         edx,dword ptr [ebp-44]
 0047A992    add         edx,0D
 0047A995    mov         eax,dword ptr [ebp+8]
 0047A998    call        0067DCD0
 0047A99D    mov         eax,dword ptr [ebp+8]
 0047A9A0    mov         word ptr [ebp-1C],20
 0047A9A6    push        eax
 0047A9A7    dec         dword ptr [ebp-10]
 0047A9AA    lea         eax,[ebp-4]
 0047A9AD    mov         edx,2
 0047A9B2    call        0067DCA0
 0047A9B7    pop         eax
 0047A9B8    mov         word ptr [ebp-1C],14
 0047A9BE    inc         dword ptr [ebp-10]
 0047A9C1    mov         edx,dword ptr [ebp-2C]
 0047A9C4    mov         dword ptr fs:[0],edx
>0047A9CB    jmp         0047AA5F
 0047A9D0    inc         dword ptr [ebp-40]
 0047A9D3    mov         ecx,dword ptr [ebp-3C]
 0047A9D6    mov         eax,dword ptr [ecx+1A]
 0047A9D9    mov         edx,dword ptr [eax+4]
 0047A9DC    mov         ecx,dword ptr [edx+8]
 0047A9DF    mov         eax,dword ptr [ebp-40]
 0047A9E2    cmp         ecx,eax
>0047A9E4    jg          0047A95D
 0047A9EA    mov         eax,dword ptr [ebp-38]
 0047A9ED    call        00535B28
 0047A9F2    mov         dword ptr [ebp-38],eax
 0047A9F5    mov         edx,dword ptr [ebp-38]
 0047A9F8    test        edx,edx
>0047A9FA    jne         0047A929
 0047AA00    mov         word ptr [ebp-1C],2C
 0047AA06    mov         edx,6B29FF
 0047AA0B    lea         eax,[ebp-8]
 0047AA0E    call        0067DAB4
 0047AA13    inc         dword ptr [ebp-10]
 0047AA16    lea         edx,[ebp-8]
 0047AA19    mov         eax,dword ptr [ebp+8]
 0047AA1C    call        0067DCD0
 0047AA21    mov         eax,dword ptr [ebp+8]
 0047AA24    mov         word ptr [ebp-1C],38
 0047AA2A    push        eax
 0047AA2B    dec         dword ptr [ebp-10]
 0047AA2E    lea         eax,[ebp-8]
 0047AA31    mov         edx,2
 0047AA36    call        0067DCA0
 0047AA3B    dec         dword ptr [ebp-10]
 0047AA3E    lea         eax,[ebp-4]
 0047AA41    mov         edx,2
 0047AA46    call        0067DCA0
 0047AA4B    pop         eax
 0047AA4C    mov         word ptr [ebp-1C],2C
 0047AA52    inc         dword ptr [ebp-10]
 0047AA55    mov         edx,dword ptr [ebp-2C]
 0047AA58    mov         dword ptr fs:[0],edx
 0047AA5F    mov         esp,ebp
 0047AA61    pop         ebp
 0047AA62    ret         4
end;*}

//0047AA68
procedure sub_0047AA68(?:TAnalyzeThread);
begin
{*
 0047AA68    push        ebp
 0047AA69    mov         ebp,esp
 0047AA6B    add         esp,0FFFFFD3C
 0047AA71    mov         dword ptr [ebp-148],eax
 0047AA77    mov         eax,6B3958
 0047AA7C    call        0066FECC
 0047AA81    mov         word ptr [ebp-134],8
 0047AA8A    lea         eax,[ebp-4]
 0047AA8D    call        00401EA8
 0047AA92    inc         dword ptr [ebp-128]
 0047AA98    mov         word ptr [ebp-134],14
 0047AAA1    mov         word ptr [ebp-134],20
 0047AAAA    lea         eax,[ebp-8]
 0047AAAD    call        00401EA8
 0047AAB2    inc         dword ptr [ebp-128]
 0047AAB8    mov         word ptr [ebp-134],14
 0047AAC1    mov         word ptr [ebp-134],2C
 0047AACA    lea         eax,[ebp-2C]
 0047AACD    call        0046E470
 0047AAD2    add         dword ptr [ebp-128],3
 0047AAD9    mov         word ptr [ebp-134],14
 0047AAE2    lea         edx,[ebp-2C]
 0047AAE5    mov         dword ptr [ebp-168],edx
 0047AAEB    mov         word ptr [ebp-134],38
 0047AAF4    lea         eax,[ebp-5C]
 0047AAF7    call        0046DFF0
 0047AAFC    add         dword ptr [ebp-128],3
 0047AB03    mov         word ptr [ebp-134],14
 0047AB0C    lea         edx,[ebp-5C]
 0047AB0F    mov         dword ptr [ebp-16C],edx
 0047AB15    mov         word ptr [ebp-134],44
 0047AB1E    mov         edx,6B2A00
 0047AB23    lea         eax,[ebp-60]
 0047AB26    call        0067DAB4
 0047AB2B    inc         dword ptr [ebp-128]
 0047AB31    lea         ecx,[ebp-60]
 0047AB34    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 0047AB3A    mov         eax,dword ptr [ebp-148]
 0047AB40    call        0047673C
 0047AB45    mov         dword ptr [ebp-170],eax
 0047AB4B    dec         dword ptr [ebp-128]
 0047AB51    lea         eax,[ebp-60]
 0047AB54    mov         edx,2
 0047AB59    call        0067DCA0
 0047AB5E    mov         word ptr [ebp-134],14
 0047AB67    xor         ecx,ecx
 0047AB69    mov         dword ptr [ebp-14C],ecx
>0047AB6F    jmp         0047B550
 0047AB74    mov         eax,dword ptr [ebp-14C]
 0047AB7A    mov         edx,dword ptr [ebp-170]
 0047AB80    and         eax,edx
>0047AB82    jne         0047AB8F
 0047AB84    mov         eax,dword ptr [ebp-148]
 0047AB8A    call        0047688C
 0047AB8F    mov         edx,dword ptr [ebp-14C]
 0047AB95    mov         eax,4
 0047AB9A    call        00532B74
 0047AB9F    test        al,al
>0047ABA1    je          0047B549
 0047ABA7    mov         eax,dword ptr [ebp-14C]
 0047ABAD    call        00531360
 0047ABB2    call        0053A308
 0047ABB7    mov         dword ptr [ebp-164],eax
 0047ABBD    mov         word ptr [ebp-134],50
 0047ABC6    lea         eax,[ebp-64]
 0047ABC9    call        00401EA8
 0047ABCE    mov         edx,eax
 0047ABD0    inc         dword ptr [ebp-128]
 0047ABD6    mov         eax,dword ptr [ebp-164]
 0047ABDC    call        0048591C
 0047ABE1    lea         edx,[ebp-64]
 0047ABE4    lea         eax,[ebp-8]
 0047ABE7    call        0067DCD0
 0047ABEC    dec         dword ptr [ebp-128]
 0047ABF2    lea         eax,[ebp-64]
 0047ABF5    mov         edx,2
 0047ABFA    call        0067DCA0
 0047ABFF    mov         word ptr [ebp-134],68
 0047AC08    mov         edx,6B2A17
 0047AC0D    lea         eax,[ebp-68]
 0047AC10    call        0067DAB4
 0047AC15    inc         dword ptr [ebp-128]
 0047AC1B    lea         edx,[ebp-68]
 0047AC1E    lea         eax,[ebp-8]
 0047AC21    call        0067DEF4
 0047AC26    mov         dword ptr [ebp-174],eax
 0047AC2C    dec         dword ptr [ebp-128]
 0047AC32    lea         eax,[ebp-68]
 0047AC35    mov         edx,2
 0047AC3A    call        0067DCA0
 0047AC3F    mov         word ptr [ebp-134],5C
 0047AC48    lea         eax,[ebp-8]
 0047AC4B    call        00405290
 0047AC50    mov         dword ptr [ebp-178],eax
 0047AC56    mov         byte ptr [ebp-179],0
 0047AC5D    mov         word ptr [ebp-134],74
 0047AC66    lea         eax,[ebp-6C]
 0047AC69    call        00401EA8
 0047AC6E    push        eax
 0047AC6F    inc         dword ptr [ebp-128]
 0047AC75    mov         edx,dword ptr [ebp-174]
 0047AC7B    inc         edx
 0047AC7C    lea         eax,[ebp-8]
 0047AC7F    mov         ecx,dword ptr [ebp-178]
 0047AC85    call        0067E0BC
 0047AC8A    lea         edx,[ebp-6C]
 0047AC8D    lea         eax,[ebp-4]
 0047AC90    call        0067DCD0
 0047AC95    dec         dword ptr [ebp-128]
 0047AC9B    lea         eax,[ebp-6C]
 0047AC9E    mov         edx,2
 0047ACA3    call        0067DCA0
 0047ACA8    lea         eax,[ebp-4]
 0047ACAB    call        00403C0C
 0047ACB0    mov         edx,eax
 0047ACB2    lea         ecx,[ebp-2C4]
 0047ACB8    mov         eax,6ECAB4
 0047ACBD    call        0047299C
 0047ACC2    mov         dword ptr [ebp-160],eax
 0047ACC8    xor         edx,edx
 0047ACCA    mov         dword ptr [ebp-150],edx
>0047ACD0    jmp         0047AF0A
 0047ACD5    lea         eax,[ebp-4]
 0047ACD8    call        00403C0C
 0047ACDD    mov         ecx,eax
 0047ACDF    mov         edx,dword ptr [ebp-150]
 0047ACE5    mov         dx,word ptr [ebp+edx*2-2C4]
 0047ACED    mov         eax,6ECAB4
 0047ACF2    call        00470B78
 0047ACF7    mov         dword ptr [ebp-15C],eax
 0047ACFD    mov         ecx,dword ptr [ebp-15C]
 0047AD03    inc         ecx
>0047AD04    je          0047AF04
 0047AD0A    mov         eax,dword ptr [ebp-15C]
 0047AD10    shl         eax,4
 0047AD13    mov         edx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 0047AD19    mov         ecx,dword ptr [edx+eax+0C]
 0047AD1D    mov         dword ptr [ebp-15C],ecx
 0047AD23    push        dword ptr [ebp-168]
 0047AD29    mov         eax,6ECAB4
 0047AD2E    mov         ecx,2
 0047AD33    mov         edx,dword ptr [ebp-15C]
 0047AD39    call        00471F14
 0047AD3E    test        eax,eax
>0047AD40    je          0047AEFA
 0047AD46    mov         eax,dword ptr [ebp-168]
 0047AD4C    movsx       edx,byte ptr [eax+8]
 0047AD50    cmp         edx,46
>0047AD53    jne         0047AD78
 0047AD55    mov         ecx,dword ptr [ebp-164]
 0047AD5B    mov         byte ptr [ecx+5],29
 0047AD5F    mov         edx,dword ptr [ebp-168]
 0047AD65    add         edx,0E
 0047AD68    mov         eax,dword ptr [ebp-164]
 0047AD6E    add         eax,0A
 0047AD71    call        0067DCD0
>0047AD76    jmp         0047AD91
 0047AD78    mov         ecx,dword ptr [ebp-168]
 0047AD7E    movsx       eax,byte ptr [ecx+8]
 0047AD82    cmp         eax,50
>0047AD85    jne         0047AD91
 0047AD87    mov         edx,dword ptr [ebp-164]
 0047AD8D    mov         byte ptr [edx+5],28
 0047AD91    mov         ecx,dword ptr [ebp-164]
 0047AD97    mov         eax,dword ptr [ecx+1E]
 0047AD9A    test        eax,eax
>0047AD9C    jne         0047ADD8
 0047AD9E    push        18
 0047ADA0    call        0066EAE4
 0047ADA5    pop         ecx
 0047ADA6    mov         dword ptr [ebp-70],eax
 0047ADA9    test        eax,eax
>0047ADAB    je          0047ADCC
 0047ADAD    mov         word ptr [ebp-134],8C
 0047ADB6    mov         eax,dword ptr [ebp-70]
 0047ADB9    call        0048378C
 0047ADBE    mov         word ptr [ebp-134],80
 0047ADC7    mov         edx,dword ptr [ebp-70]
>0047ADCA    jmp         0047ADCF
 0047ADCC    mov         edx,dword ptr [ebp-70]
 0047ADCF    mov         eax,dword ptr [ebp-164]
 0047ADD5    mov         dword ptr [eax+1E],edx
 0047ADD8    mov         ecx,dword ptr [ebp-168]
 0047ADDE    mov         eax,dword ptr [ecx+20]
 0047ADE1    test        eax,eax
>0047ADE3    je          0047AEFA
 0047ADE9    mov         edx,dword ptr [ebp-168]
 0047ADEF    mov         cl,byte ptr [edx+9]
 0047ADF2    mov         byte ptr [ebp-183],cl
 0047ADF8    mov         word ptr [ebp-134],5C
 0047AE01    xor         eax,eax
 0047AE03    mov         al,byte ptr [ebp-183]
 0047AE09    mov         edx,dword ptr [ebp-164]
 0047AE0F    mov         ecx,dword ptr [edx+1E]
 0047AE12    or          dword ptr [ecx],eax
 0047AE14    mov         word ptr [ebp-134],98
 0047AE1D    lea         eax,[ebp-7A]
 0047AE20    call        00401EA8
 0047AE25    inc         dword ptr [ebp-128]
 0047AE2B    lea         eax,[ebp-76]
 0047AE2E    call        00401EA8
 0047AE33    inc         dword ptr [ebp-128]
 0047AE39    inc         dword ptr [ebp-128]
 0047AE3F    mov         word ptr [ebp-134],0A4
 0047AE48    mov         edx,dword ptr [ebp-168]
 0047AE4E    mov         ecx,dword ptr [edx+20]
 0047AE51    mov         dword ptr [ebp-180],ecx
 0047AE57    mov         dword ptr [ebp-188],8
 0047AE61    xor         eax,eax
 0047AE63    mov         dword ptr [ebp-154],eax
>0047AE69    jmp         0047AEAA
 0047AE6B    lea         edx,[ebp-180]
 0047AE71    push        edx
 0047AE72    lea         ecx,[ebp-188]
 0047AE78    push        ecx
 0047AE79    lea         ecx,[ebp-84]
 0047AE7F    mov         dl,byte ptr [ebp-183]
 0047AE85    mov         eax,dword ptr [ebp-154]
 0047AE8B    call        00531B90
 0047AE90    lea         edx,[ebp-84]
 0047AE96    mov         eax,dword ptr [ebp-164]
 0047AE9C    mov         eax,dword ptr [eax+1E]
 0047AE9F    call        004839E8
 0047AEA4    inc         dword ptr [ebp-154]
 0047AEAA    mov         edx,dword ptr [ebp-168]
 0047AEB0    movzx       ecx,word ptr [edx+1E]
 0047AEB4    mov         eax,dword ptr [ebp-154]
 0047AEBA    cmp         ecx,eax
>0047AEBC    jg          0047AE6B
 0047AEBE    mov         byte ptr [ebp-179],1
 0047AEC5    dec         dword ptr [ebp-128]
 0047AECB    dec         dword ptr [ebp-128]
 0047AED1    lea         eax,[ebp-76]
 0047AED4    mov         edx,2
 0047AED9    call        0067DCA0
 0047AEDE    dec         dword ptr [ebp-128]
 0047AEE4    lea         eax,[ebp-7A]
 0047AEE7    mov         edx,2
 0047AEEC    call        0067DCA0
 0047AEF1    mov         word ptr [ebp-134],5C
 0047AEFA    mov         cl,byte ptr [ebp-179]
 0047AF00    test        cl,cl
>0047AF02    jne         0047AF2B
 0047AF04    inc         dword ptr [ebp-150]
 0047AF0A    mov         eax,dword ptr [ebp-150]
 0047AF10    mov         edx,dword ptr [ebp-160]
 0047AF16    cmp         eax,edx
>0047AF18    jge         0047AF2B
 0047AF1A    mov         ecx,dword ptr [ebp-148]
 0047AF20    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047AF23    test        al,al
>0047AF25    je          0047ACD5
 0047AF2B    mov         dl,byte ptr [ebp-179]
 0047AF31    test        dl,dl
>0047AF33    jne         0047B231
 0047AF39    mov         word ptr [ebp-134],0B0
 0047AF42    lea         eax,[ebp-88]
 0047AF48    call        00401EA8
 0047AF4D    push        eax
 0047AF4E    inc         dword ptr [ebp-128]
 0047AF54    mov         ecx,dword ptr [ebp-178]
 0047AF5A    mov         edx,dword ptr [ebp-174]
 0047AF60    sub         ecx,edx
 0047AF62    dec         ecx
 0047AF63    mov         edx,dword ptr [ebp-174]
 0047AF69    inc         edx
 0047AF6A    lea         eax,[ebp-8]
 0047AF6D    call        0067E0BC
 0047AF72    lea         edx,[ebp-88]
 0047AF78    lea         eax,[ebp-4]
 0047AF7B    call        0067DCD0
 0047AF80    dec         dword ptr [ebp-128]
 0047AF86    lea         eax,[ebp-88]
 0047AF8C    mov         edx,2
 0047AF91    call        0067DCA0
 0047AF96    lea         eax,[ebp-4]
 0047AF99    call        00403C0C
 0047AF9E    mov         edx,eax
 0047AFA0    lea         ecx,[ebp-2C4]
 0047AFA6    mov         eax,6ECAB4
 0047AFAB    call        0047299C
 0047AFB0    mov         dword ptr [ebp-160],eax
 0047AFB6    xor         edx,edx
 0047AFB8    mov         dword ptr [ebp-150],edx
>0047AFBE    jmp         0047B210
 0047AFC3    lea         eax,[ebp-4]
 0047AFC6    call        00403C0C
 0047AFCB    mov         ecx,eax
 0047AFCD    mov         edx,dword ptr [ebp-150]
 0047AFD3    mov         dx,word ptr [ebp+edx*2-2C4]
 0047AFDB    mov         eax,6ECAB4
 0047AFE0    call        00470B78
 0047AFE5    mov         dword ptr [ebp-15C],eax
 0047AFEB    mov         ecx,dword ptr [ebp-15C]
 0047AFF1    inc         ecx
>0047AFF2    je          0047B20A
 0047AFF8    mov         eax,dword ptr [ebp-15C]
 0047AFFE    shl         eax,4
 0047B001    mov         edx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 0047B007    mov         ecx,dword ptr [edx+eax+0C]
 0047B00B    mov         dword ptr [ebp-15C],ecx
 0047B011    push        dword ptr [ebp-168]
 0047B017    mov         eax,6ECAB4
 0047B01C    mov         ecx,2
 0047B021    mov         edx,dword ptr [ebp-15C]
 0047B027    call        00471F14
 0047B02C    test        eax,eax
>0047B02E    je          0047B200
 0047B034    mov         eax,dword ptr [ebp-168]
 0047B03A    movsx       edx,byte ptr [eax+8]
 0047B03E    cmp         edx,46
>0047B041    jne         0047B066
 0047B043    mov         ecx,dword ptr [ebp-164]
 0047B049    mov         byte ptr [ecx+5],29
 0047B04D    mov         edx,dword ptr [ebp-168]
 0047B053    add         edx,0E
 0047B056    mov         eax,dword ptr [ebp-164]
 0047B05C    add         eax,0A
 0047B05F    call        0067DCD0
>0047B064    jmp         0047B07F
 0047B066    mov         ecx,dword ptr [ebp-168]
 0047B06C    movsx       eax,byte ptr [ecx+8]
 0047B070    cmp         eax,50
>0047B073    jne         0047B07F
 0047B075    mov         edx,dword ptr [ebp-164]
 0047B07B    mov         byte ptr [edx+5],28
 0047B07F    mov         ecx,dword ptr [ebp-164]
 0047B085    mov         eax,dword ptr [ecx+1E]
 0047B088    test        eax,eax
>0047B08A    jne         0047B0D2
 0047B08C    push        18
 0047B08E    call        0066EAE4
 0047B093    pop         ecx
 0047B094    mov         dword ptr [ebp-8C],eax
 0047B09A    test        eax,eax
>0047B09C    je          0047B0C3
 0047B09E    mov         word ptr [ebp-134],0C8
 0047B0A7    mov         eax,dword ptr [ebp-8C]
 0047B0AD    call        0048378C
 0047B0B2    mov         word ptr [ebp-134],0BC
 0047B0BB    mov         edx,dword ptr [ebp-8C]
>0047B0C1    jmp         0047B0C9
 0047B0C3    mov         edx,dword ptr [ebp-8C]
 0047B0C9    mov         eax,dword ptr [ebp-164]
 0047B0CF    mov         dword ptr [eax+1E],edx
 0047B0D2    mov         ecx,dword ptr [ebp-168]
 0047B0D8    mov         eax,dword ptr [ecx+20]
 0047B0DB    test        eax,eax
>0047B0DD    je          0047B200
 0047B0E3    mov         edx,dword ptr [ebp-168]
 0047B0E9    mov         cl,byte ptr [edx+9]
 0047B0EC    mov         byte ptr [ebp-189],cl
 0047B0F2    mov         word ptr [ebp-134],5C
 0047B0FB    xor         eax,eax
 0047B0FD    mov         al,byte ptr [ebp-189]
 0047B103    mov         edx,dword ptr [ebp-164]
 0047B109    mov         ecx,dword ptr [edx+1E]
 0047B10C    or          dword ptr [ecx],eax
 0047B10E    mov         word ptr [ebp-134],0D4
 0047B117    lea         eax,[ebp-96]
 0047B11D    call        00401EA8
 0047B122    inc         dword ptr [ebp-128]
 0047B128    lea         eax,[ebp-92]
 0047B12E    call        00401EA8
 0047B133    inc         dword ptr [ebp-128]
 0047B139    inc         dword ptr [ebp-128]
 0047B13F    mov         word ptr [ebp-134],0E0
 0047B148    mov         edx,dword ptr [ebp-168]
 0047B14E    mov         ecx,dword ptr [edx+20]
 0047B151    mov         dword ptr [ebp-180],ecx
 0047B157    mov         dword ptr [ebp-190],8
 0047B161    xor         eax,eax
 0047B163    mov         dword ptr [ebp-154],eax
>0047B169    jmp         0047B1AA
 0047B16B    lea         edx,[ebp-180]
 0047B171    push        edx
 0047B172    lea         ecx,[ebp-190]
 0047B178    push        ecx
 0047B179    lea         ecx,[ebp-0A0]
 0047B17F    mov         dl,byte ptr [ebp-189]
 0047B185    mov         eax,dword ptr [ebp-154]
 0047B18B    call        00531B90
 0047B190    lea         edx,[ebp-0A0]
 0047B196    mov         eax,dword ptr [ebp-164]
 0047B19C    mov         eax,dword ptr [eax+1E]
 0047B19F    call        004839E8
 0047B1A4    inc         dword ptr [ebp-154]
 0047B1AA    mov         edx,dword ptr [ebp-168]
 0047B1B0    movzx       ecx,word ptr [edx+1E]
 0047B1B4    mov         eax,dword ptr [ebp-154]
 0047B1BA    cmp         ecx,eax
>0047B1BC    jg          0047B16B
 0047B1BE    mov         byte ptr [ebp-179],1
 0047B1C5    dec         dword ptr [ebp-128]
 0047B1CB    dec         dword ptr [ebp-128]
 0047B1D1    lea         eax,[ebp-92]
 0047B1D7    mov         edx,2
 0047B1DC    call        0067DCA0
 0047B1E1    dec         dword ptr [ebp-128]
 0047B1E7    lea         eax,[ebp-96]
 0047B1ED    mov         edx,2
 0047B1F2    call        0067DCA0
 0047B1F7    mov         word ptr [ebp-134],5C
 0047B200    mov         cl,byte ptr [ebp-179]
 0047B206    test        cl,cl
>0047B208    jne         0047B231
 0047B20A    inc         dword ptr [ebp-150]
 0047B210    mov         eax,dword ptr [ebp-150]
 0047B216    mov         edx,dword ptr [ebp-160]
 0047B21C    cmp         eax,edx
>0047B21E    jge         0047B231
 0047B220    mov         ecx,dword ptr [ebp-148]
 0047B226    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047B229    test        al,al
>0047B22B    je          0047AFC3
 0047B231    mov         dl,byte ptr [ebp-179]
 0047B237    test        dl,dl
>0047B239    jne         0047B3B8
 0047B23F    mov         word ptr [ebp-134],0EC
 0047B248    lea         eax,[ebp-0A4]
 0047B24E    call        00401EA8
 0047B253    push        eax
 0047B254    inc         dword ptr [ebp-128]
 0047B25A    mov         ecx,dword ptr [ebp-178]
 0047B260    mov         edx,dword ptr [ebp-174]
 0047B266    sub         ecx,edx
 0047B268    mov         edx,dword ptr [ebp-174]
 0047B26E    inc         edx
 0047B26F    lea         eax,[ebp-8]
 0047B272    call        0067E0BC
 0047B277    lea         edx,[ebp-0A4]
 0047B27D    lea         eax,[ebp-4]
 0047B280    call        0067DCD0
 0047B285    dec         dword ptr [ebp-128]
 0047B28B    lea         eax,[ebp-0A4]
 0047B291    mov         edx,2
 0047B296    call        0067DCA0
 0047B29B    lea         eax,[ebp-4]
 0047B29E    call        00403C0C
 0047B2A3    mov         edx,eax
 0047B2A5    lea         ecx,[ebp-2C4]
 0047B2AB    mov         eax,6ECAB4
 0047B2B0    call        0047299C
 0047B2B5    mov         dword ptr [ebp-160],eax
 0047B2BB    xor         edx,edx
 0047B2BD    mov         dword ptr [ebp-150],edx
>0047B2C3    jmp         0047B397
 0047B2C8    lea         eax,[ebp-4]
 0047B2CB    call        00403C0C
 0047B2D0    mov         ecx,eax
 0047B2D2    mov         edx,dword ptr [ebp-150]
 0047B2D8    mov         dx,word ptr [ebp+edx*2-2C4]
 0047B2E0    mov         eax,6ECAB4
 0047B2E5    call        00470B78
 0047B2EA    mov         dword ptr [ebp-15C],eax
 0047B2F0    mov         ecx,dword ptr [ebp-15C]
 0047B2F6    inc         ecx
>0047B2F7    je          0047B391
 0047B2FD    mov         eax,dword ptr [ebp-15C]
 0047B303    shl         eax,4
 0047B306    mov         edx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 0047B30C    mov         ecx,dword ptr [edx+eax+0C]
 0047B310    mov         dword ptr [ebp-15C],ecx
 0047B316    push        dword ptr [ebp-168]
 0047B31C    mov         eax,6ECAB4
 0047B321    mov         ecx,2
 0047B326    mov         edx,dword ptr [ebp-15C]
 0047B32C    call        00471F14
 0047B331    test        eax,eax
>0047B333    je          0047B387
 0047B335    mov         eax,dword ptr [ebp-168]
 0047B33B    movsx       edx,byte ptr [eax+8]
 0047B33F    cmp         edx,46
>0047B342    jne         0047B367
 0047B344    mov         ecx,dword ptr [ebp-164]
 0047B34A    mov         byte ptr [ecx+5],29
 0047B34E    mov         edx,dword ptr [ebp-168]
 0047B354    add         edx,0E
 0047B357    mov         eax,dword ptr [ebp-164]
 0047B35D    add         eax,0A
 0047B360    call        0067DCD0
>0047B365    jmp         0047B380
 0047B367    mov         ecx,dword ptr [ebp-168]
 0047B36D    movsx       eax,byte ptr [ecx+8]
 0047B371    cmp         eax,50
>0047B374    jne         0047B380
 0047B376    mov         edx,dword ptr [ebp-164]
 0047B37C    mov         byte ptr [edx+5],28
 0047B380    mov         byte ptr [ebp-179],1
 0047B387    mov         cl,byte ptr [ebp-179]
 0047B38D    test        cl,cl
>0047B38F    jne         0047B3B8
 0047B391    inc         dword ptr [ebp-150]
 0047B397    mov         eax,dword ptr [ebp-150]
 0047B39D    mov         edx,dword ptr [ebp-160]
 0047B3A3    cmp         eax,edx
>0047B3A5    jge         0047B3B8
 0047B3A7    mov         ecx,dword ptr [ebp-148]
 0047B3AD    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047B3B0    test        al,al
>0047B3B2    je          0047B2C8
 0047B3B8    mov         dl,byte ptr [ebp-179]
 0047B3BE    test        dl,dl
>0047B3C0    jne         0047B540
 0047B3C6    mov         word ptr [ebp-134],0F8
 0047B3CF    lea         eax,[ebp-0A8]
 0047B3D5    call        00401EA8
 0047B3DA    push        eax
 0047B3DB    inc         dword ptr [ebp-128]
 0047B3E1    mov         ecx,dword ptr [ebp-178]
 0047B3E7    mov         edx,dword ptr [ebp-174]
 0047B3ED    sub         ecx,edx
 0047B3EF    dec         ecx
 0047B3F0    mov         edx,dword ptr [ebp-174]
 0047B3F6    inc         edx
 0047B3F7    lea         eax,[ebp-8]
 0047B3FA    call        0067E0BC
 0047B3FF    lea         edx,[ebp-0A8]
 0047B405    lea         eax,[ebp-4]
 0047B408    call        0067DCD0
 0047B40D    dec         dword ptr [ebp-128]
 0047B413    lea         eax,[ebp-0A8]
 0047B419    mov         edx,2
 0047B41E    call        0067DCA0
 0047B423    lea         eax,[ebp-4]
 0047B426    call        00403C0C
 0047B42B    mov         edx,eax
 0047B42D    lea         ecx,[ebp-2C4]
 0047B433    mov         eax,6ECAB4
 0047B438    call        0047299C
 0047B43D    mov         dword ptr [ebp-160],eax
 0047B443    xor         edx,edx
 0047B445    mov         dword ptr [ebp-150],edx
>0047B44B    jmp         0047B51F
 0047B450    lea         eax,[ebp-4]
 0047B453    call        00403C0C
 0047B458    mov         ecx,eax
 0047B45A    mov         edx,dword ptr [ebp-150]
 0047B460    mov         dx,word ptr [ebp+edx*2-2C4]
 0047B468    mov         eax,6ECAB4
 0047B46D    call        00470B78
 0047B472    mov         dword ptr [ebp-15C],eax
 0047B478    mov         ecx,dword ptr [ebp-15C]
 0047B47E    inc         ecx
>0047B47F    je          0047B519
 0047B485    mov         eax,dword ptr [ebp-15C]
 0047B48B    shl         eax,4
 0047B48E    mov         edx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 0047B494    mov         ecx,dword ptr [edx+eax+0C]
 0047B498    mov         dword ptr [ebp-15C],ecx
 0047B49E    push        dword ptr [ebp-168]
 0047B4A4    mov         eax,6ECAB4
 0047B4A9    mov         ecx,2
 0047B4AE    mov         edx,dword ptr [ebp-15C]
 0047B4B4    call        00471F14
 0047B4B9    test        eax,eax
>0047B4BB    je          0047B50F
 0047B4BD    mov         eax,dword ptr [ebp-168]
 0047B4C3    movsx       edx,byte ptr [eax+8]
 0047B4C7    cmp         edx,46
>0047B4CA    jne         0047B4EF
 0047B4CC    mov         ecx,dword ptr [ebp-164]
 0047B4D2    mov         byte ptr [ecx+5],29
 0047B4D6    mov         edx,dword ptr [ebp-168]
 0047B4DC    add         edx,0E
 0047B4DF    mov         eax,dword ptr [ebp-164]
 0047B4E5    add         eax,0A
 0047B4E8    call        0067DCD0
>0047B4ED    jmp         0047B508
 0047B4EF    mov         ecx,dword ptr [ebp-168]
 0047B4F5    movsx       eax,byte ptr [ecx+8]
 0047B4F9    cmp         eax,50
>0047B4FC    jne         0047B508
 0047B4FE    mov         edx,dword ptr [ebp-164]
 0047B504    mov         byte ptr [edx+5],28
 0047B508    mov         byte ptr [ebp-179],1
 0047B50F    mov         cl,byte ptr [ebp-179]
 0047B515    test        cl,cl
>0047B517    jne         0047B540
 0047B519    inc         dword ptr [ebp-150]
 0047B51F    mov         eax,dword ptr [ebp-150]
 0047B525    mov         edx,dword ptr [ebp-160]
 0047B52B    cmp         eax,edx
>0047B52D    jge         0047B540
 0047B52F    mov         ecx,dword ptr [ebp-148]
 0047B535    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047B538    test        al,al
>0047B53A    je          0047B450
 0047B540    mov         word ptr [ebp-134],14
 0047B549    add         dword ptr [ebp-14C],4
 0047B550    mov         edx,dword ptr [ebp-14C]
 0047B556    mov         ecx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 0047B55C    cmp         edx,ecx
>0047B55E    jae         0047B571
 0047B560    mov         eax,dword ptr [ebp-148]
 0047B566    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047B569    test        dl,dl
>0047B56B    je          0047AB74
 0047B571    mov         eax,dword ptr [ebp-148]
 0047B577    call        004768BC
 0047B57C    mov         word ptr [ebp-134],104
 0047B585    mov         edx,6B2A19
 0047B58A    lea         eax,[ebp-0AC]
 0047B590    call        0067DAB4
 0047B595    inc         dword ptr [ebp-128]
 0047B59B    lea         ecx,[ebp-0AC]
 0047B5A1    mov         edx,dword ptr ds:[6941A0];0x0 gvar_006941A0
 0047B5A7    mov         eax,dword ptr [edx+0D]
 0047B5AA    mov         edx,dword ptr [eax+8]
 0047B5AD    mov         eax,dword ptr [ebp-148]
 0047B5B3    call        0047673C
 0047B5B8    dec         dword ptr [ebp-128]
 0047B5BE    lea         eax,[ebp-0AC]
 0047B5C4    mov         edx,2
 0047B5C9    call        0067DCA0
 0047B5CE    xor         ecx,ecx
 0047B5D0    mov         dword ptr [ebp-14C],ecx
>0047B5D6    jmp         0047C235
 0047B5DB    mov         eax,dword ptr [ebp-148]
 0047B5E1    call        0047688C
 0047B5E6    mov         edx,dword ptr ds:[6941A0];0x0 gvar_006941A0
 0047B5EC    mov         eax,dword ptr [edx+0D]
 0047B5EF    mov         edx,dword ptr [ebp-14C]
 0047B5F5    call        TList.Get
 0047B5FA    mov         dword ptr [ebp-194],eax
 0047B600    mov         word ptr [ebp-134],14
 0047B609    mov         word ptr [ebp-134],11C
 0047B612    mov         edx,dword ptr [ebp-194]
 0047B618    add         edx,0A
 0047B61B    lea         eax,[ebp-0B0]
 0047B621    call        0067DAEC
 0047B626    inc         dword ptr [ebp-128]
 0047B62C    mov         word ptr [ebp-134],110
 0047B635    lea         eax,[ebp-0B0]
 0047B63B    call        00535E90
 0047B640    mov         dword ptr [ebp-198],eax
 0047B646    mov         edx,dword ptr [ebp-198]
 0047B64C    test        edx,edx
>0047B64E    jne         0047B66B
 0047B650    dec         dword ptr [ebp-128]
 0047B656    lea         eax,[ebp-0B0]
 0047B65C    mov         edx,2
 0047B661    call        0067DCA0
>0047B666    jmp         0047C22F
 0047B66B    mov         eax,dword ptr [ebp-198]
 0047B671    call        0053A308
 0047B676    mov         dword ptr [ebp-164],eax
 0047B67C    mov         edx,dword ptr [ebp-164]
 0047B682    test        edx,edx
>0047B684    je          0047B696
 0047B686    mov         ecx,dword ptr [ebp-164]
 0047B68C    mov         eax,dword ptr [ecx+1A]
 0047B68F    mov         edx,dword ptr [eax+8]
 0047B692    test        edx,edx
>0047B694    jne         0047B6B1
 0047B696    dec         dword ptr [ebp-128]
 0047B69C    lea         eax,[ebp-0B0]
 0047B6A2    mov         edx,2
 0047B6A7    call        0067DCA0
>0047B6AC    jmp         0047C22F
 0047B6B1    mov         ecx,dword ptr [ebp-194]
 0047B6B7    mov         eax,dword ptr [ecx+16]
 0047B6BA    mov         dword ptr [ebp-19C],eax
 0047B6C0    xor         edx,edx
 0047B6C2    mov         dword ptr [ebp-150],edx
>0047B6C8    jmp         0047BC0E
 0047B6CD    mov         edx,dword ptr [ebp-150]
 0047B6D3    mov         eax,dword ptr [ebp-19C]
 0047B6D9    call        TList.Get
 0047B6DE    mov         dword ptr [ebp-1A0],eax
 0047B6E4    mov         word ptr [ebp-134],110
 0047B6ED    mov         eax,dword ptr [ebp-194]
 0047B6F3    add         eax,0A
 0047B6F6    call        00535E90
 0047B6FB    mov         dword ptr [ebp-1A4],eax
 0047B701    mov         word ptr [ebp-134],134
 0047B70A    lea         eax,[ebp-0B4]
 0047B710    call        00401EA8
 0047B715    push        eax
 0047B716    inc         dword ptr [ebp-128]
 0047B71C    lea         eax,[ebp-0B8]
 0047B722    call        00401EA8
 0047B727    mov         ecx,eax
 0047B729    inc         dword ptr [ebp-128]
 0047B72F    mov         eax,6B2A2F
 0047B734    mov         edx,dword ptr [ebp-1A0]
 0047B73A    call        0067E37C
 0047B73F    lea         ecx,[ebp-0B8]
 0047B745    mov         ecx,dword ptr [ecx]
 0047B747    mov         edx,dword ptr [ebp-1A4]
 0047B74D    mov         eax,dword ptr [ebp-148]
 0047B753    call        0047A8E4
 0047B758    dec         dword ptr [ebp-128]
 0047B75E    lea         eax,[ebp-0B8]
 0047B764    mov         edx,2
 0047B769    call        0067DCA0
 0047B76E    mov         word ptr [ebp-134],128
 0047B777    mov         word ptr [ebp-134],140
 0047B780    mov         edx,6B2A31
 0047B785    lea         eax,[ebp-0BC]
 0047B78B    call        0067DAB4
 0047B790    inc         dword ptr [ebp-128]
 0047B796    lea         edx,[ebp-0BC]
 0047B79C    lea         eax,[ebp-0B4]
 0047B7A2    call        0067DD84
 0047B7A7    push        eax
 0047B7A8    dec         dword ptr [ebp-128]
 0047B7AE    lea         eax,[ebp-0BC]
 0047B7B4    mov         edx,2
 0047B7B9    call        0067DCA0
 0047B7BE    pop         ecx
 0047B7BF    test        cl,cl
>0047B7C1    je          0047B81E
 0047B7C3    mov         word ptr [ebp-134],14C
 0047B7CC    lea         eax,[ebp-0C0]
 0047B7D2    call        00401EA8
 0047B7D7    push        eax
 0047B7D8    inc         dword ptr [ebp-128]
 0047B7DE    mov         edx,dword ptr [ebp-1A0]
 0047B7E4    mov         ecx,dword ptr [edx]
 0047B7E6    mov         edx,dword ptr [ebp-1A4]
 0047B7EC    mov         eax,dword ptr [ebp-148]
 0047B7F2    call        0047A8E4
 0047B7F7    lea         edx,[ebp-0C0]
 0047B7FD    lea         eax,[ebp-0B4]
 0047B803    call        0067DCD0
 0047B808    dec         dword ptr [ebp-128]
 0047B80E    lea         eax,[ebp-0C0]
 0047B814    mov         edx,2
 0047B819    call        0067DCA0
 0047B81E    mov         word ptr [ebp-134],158
 0047B827    mov         edx,6B2A32
 0047B82C    lea         eax,[ebp-0C4]
 0047B832    call        0067DAB4
 0047B837    inc         dword ptr [ebp-128]
 0047B83D    lea         edx,[ebp-0C4]
 0047B843    lea         eax,[ebp-0B4]
 0047B849    call        0067DD9C
 0047B84E    push        eax
 0047B84F    dec         dword ptr [ebp-128]
 0047B855    lea         eax,[ebp-0C4]
 0047B85B    mov         edx,2
 0047B860    call        0067DCA0
 0047B865    pop         ecx
 0047B866    test        cl,cl
>0047B868    je          0047BBE9
 0047B86E    xor         eax,eax
 0047B870    mov         dword ptr [ebp-154],eax
>0047B876    jmp         0047BBBF
 0047B87B    mov         edx,dword ptr [ebp-164]
 0047B881    mov         ecx,dword ptr [edx+1A]
 0047B884    mov         eax,dword ptr [ecx+8]
 0047B887    mov         edx,dword ptr [ebp-154]
 0047B88D    call        TList.Get
 0047B892    mov         dword ptr [ebp-1A8],eax
 0047B898    mov         word ptr [ebp-134],128
 0047B8A1    mov         word ptr [ebp-134],164
 0047B8AA    lea         eax,[ebp-0CC]
 0047B8B0    call        00401EA8
 0047B8B5    push        eax
 0047B8B6    inc         dword ptr [ebp-128]
 0047B8BC    mov         edx,6B2A33
 0047B8C1    lea         eax,[ebp-0C8]
 0047B8C7    call        0067DAB4
 0047B8CC    inc         dword ptr [ebp-128]
 0047B8D2    lea         edx,[ebp-0C8]
 0047B8D8    lea         eax,[ebp-0B0]
 0047B8DE    pop         ecx
 0047B8DF    call        0067DCF8
 0047B8E4    lea         edx,[ebp-0CC]
 0047B8EA    push        edx
 0047B8EB    lea         eax,[ebp-0D0]
 0047B8F1    call        00401EA8
 0047B8F6    mov         ecx,eax
 0047B8F8    inc         dword ptr [ebp-128]
 0047B8FE    mov         edx,dword ptr [ebp-1A0]
 0047B904    add         edx,4
 0047B907    pop         eax
 0047B908    call        0067DCF8
 0047B90D    lea         edx,[ebp-0D0]
 0047B913    mov         edx,dword ptr [edx]
 0047B915    mov         eax,dword ptr [ebp-1A8]
 0047B91B    mov         eax,dword ptr [eax+0A]
 0047B91E    call        SameText
 0047B923    push        eax
 0047B924    dec         dword ptr [ebp-128]
 0047B92A    lea         eax,[ebp-0D0]
 0047B930    mov         edx,2
 0047B935    call        0067DCA0
 0047B93A    dec         dword ptr [ebp-128]
 0047B940    lea         eax,[ebp-0CC]
 0047B946    mov         edx,2
 0047B94B    call        0067DCA0
 0047B950    dec         dword ptr [ebp-128]
 0047B956    lea         eax,[ebp-0C8]
 0047B95C    mov         edx,2
 0047B961    call        0067DCA0
 0047B966    pop         ecx
 0047B967    test        cl,cl
>0047B969    je          0047BBB9
 0047B96F    mov         eax,dword ptr [ebp-1A8]
 0047B975    mov         eax,dword ptr [eax+6]
 0047B978    call        0053A308
 0047B97D    mov         dword ptr [ebp-1AC],eax
 0047B983    mov         word ptr [ebp-134],128
 0047B98C    mov         edx,dword ptr [ebp-1AC]
 0047B992    test        edx,edx
>0047B994    je          0047BB7B
 0047B99A    mov         word ptr [ebp-134],17C
 0047B9A3    lea         edx,[ebp-0B0]
 0047B9A9    lea         eax,[ebp-0D4]
 0047B9AF    call        0067DAEC
 0047B9B4    inc         dword ptr [ebp-128]
 0047B9BA    mov         word ptr [ebp-134],170
 0047B9C3    push        dword ptr [ebp-16C]
 0047B9C9    mov         ecx,dword ptr [ebp-1A0]
 0047B9CF    mov         ecx,dword ptr [ecx]
 0047B9D1    mov         eax,6ECAB4
 0047B9D6    mov         edx,dword ptr [ebp-0D4]
 0047B9DC    call        00473A84
 0047B9E1    test        al,al
>0047B9E3    je          0047BABC
 0047B9E9    mov         eax,dword ptr [ebp-1AC]
 0047B9EF    mov         byte ptr [eax+5],28
 0047B9F3    mov         edx,dword ptr [ebp-1AC]
 0047B9F9    mov         ecx,dword ptr [edx+1E]
 0047B9FC    or          dword ptr [ecx],8000000
 0047BA02    mov         eax,dword ptr [ebp-1AC]
 0047BA08    mov         eax,dword ptr [eax+1E]
 0047BA0B    call        0048456C
 0047BA10    push        4
 0047BA12    mov         word ptr [ebp-134],188
 0047BA1B    mov         edx,6B2A35
 0047BA20    lea         eax,[ebp-0D8]
 0047BA26    call        0067DAB4
 0047BA2B    inc         dword ptr [ebp-128]
 0047BA31    push        dword ptr [eax]
 0047BA33    push        dword ptr [ebp-0B0]
 0047BA39    mov         edx,dword ptr [ebp-1AC]
 0047BA3F    mov         eax,dword ptr [edx+1E]
 0047BA42    xor         ecx,ecx
 0047BA44    mov         dl,21
 0047BA46    call        00483A34
 0047BA4B    dec         dword ptr [ebp-128]
 0047BA51    lea         eax,[ebp-0D8]
 0047BA57    mov         edx,2
 0047BA5C    call        0067DCA0
 0047BA61    mov         word ptr [ebp-134],194
 0047BA6A    push        0
 0047BA6C    lea         eax,[ebp-0DC]
 0047BA72    call        00401EA8
 0047BA77    push        eax
 0047BA78    inc         dword ptr [ebp-128]
 0047BA7E    mov         eax,dword ptr [ebp-16C]
 0047BA84    add         eax,0D
 0047BA87    call        00403C0C
 0047BA8C    mov         edx,eax
 0047BA8E    mov         ecx,dword ptr [ebp-1AC]
 0047BA94    mov         eax,dword ptr [ecx+1E]
 0047BA97    mov         ecx,1
 0047BA9C    call        00483F70
 0047BAA1    dec         dword ptr [ebp-128]
 0047BAA7    lea         eax,[ebp-0DC]
 0047BAAD    mov         edx,2
 0047BAB2    call        0067DCA0
>0047BAB7    jmp         0047BB5A
 0047BABC    mov         word ptr [ebp-134],1A0
 0047BAC5    lea         eax,[ebp-0E0]
 0047BACB    call        00401EA8
 0047BAD0    mov         edx,eax
 0047BAD2    inc         dword ptr [ebp-128]
 0047BAD8    lea         eax,[ebp-0D4]
 0047BADE    call        0053618C
 0047BAE3    lea         edx,[ebp-0E0]
 0047BAE9    lea         eax,[ebp-0D4]
 0047BAEF    call        0067DCD0
 0047BAF4    dec         dword ptr [ebp-128]
 0047BAFA    lea         eax,[ebp-0E0]
 0047BB00    mov         edx,2
 0047BB05    call        0067DCA0
 0047BB0A    mov         word ptr [ebp-134],1AC
 0047BB13    mov         edx,6B2A3A
 0047BB18    lea         eax,[ebp-0E4]
 0047BB1E    call        0067DAB4
 0047BB23    inc         dword ptr [ebp-128]
 0047BB29    lea         edx,[ebp-0E4]
 0047BB2F    lea         eax,[ebp-0D4]
 0047BB35    call        0067DD84
 0047BB3A    push        eax
 0047BB3B    dec         dword ptr [ebp-128]
 0047BB41    lea         eax,[ebp-0E4]
 0047BB47    mov         edx,2
 0047BB4C    call        0067DCA0
 0047BB51    pop         ecx
 0047BB52    test        cl,cl
>0047BB54    je          0047B9C3
 0047BB5A    dec         dword ptr [ebp-128]
 0047BB60    lea         eax,[ebp-0D4]
 0047BB66    mov         edx,2
 0047BB6B    call        0067DCA0
 0047BB70    mov         word ptr [ebp-134],128
>0047BB79    jmp         0047BBE9
 0047BB7B    mov         word ptr [ebp-134],1B8
 0047BB84    mov         edx,6B2A3B
 0047BB89    lea         eax,[ebp-0E8]
 0047BB8F    call        0067DAB4
 0047BB94    inc         dword ptr [ebp-128]
 0047BB9A    mov         eax,dword ptr [eax]
 0047BB9C    call        005ECEB0
 0047BBA1    dec         dword ptr [ebp-128]
 0047BBA7    lea         eax,[ebp-0E8]
 0047BBAD    mov         edx,2
 0047BBB2    call        0067DCA0
>0047BBB7    jmp         0047BBE9
 0047BBB9    inc         dword ptr [ebp-154]
 0047BBBF    mov         ecx,dword ptr [ebp-164]
 0047BBC5    mov         eax,dword ptr [ecx+1A]
 0047BBC8    mov         edx,dword ptr [eax+8]
 0047BBCB    mov         ecx,dword ptr [edx+8]
 0047BBCE    mov         eax,dword ptr [ebp-154]
 0047BBD4    cmp         ecx,eax
>0047BBD6    jle         0047BBE9
 0047BBD8    mov         edx,dword ptr [ebp-148]
 0047BBDE    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047BBE1    test        cl,cl
>0047BBE3    je          0047B87B
 0047BBE9    dec         dword ptr [ebp-128]
 0047BBEF    lea         eax,[ebp-0B4]
 0047BBF5    mov         edx,2
 0047BBFA    call        0067DCA0
 0047BBFF    mov         word ptr [ebp-134],110
 0047BC08    inc         dword ptr [ebp-150]
 0047BC0E    mov         ecx,dword ptr [ebp-19C]
 0047BC14    mov         eax,dword ptr [ecx+8]
 0047BC17    mov         edx,dword ptr [ebp-150]
 0047BC1D    cmp         eax,edx
>0047BC1F    jle         0047BC32
 0047BC21    mov         ecx,dword ptr [ebp-148]
 0047BC27    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047BC2A    test        al,al
>0047BC2C    je          0047B6CD
 0047BC32    xor         edx,edx
 0047BC34    mov         dword ptr [ebp-150],edx
>0047BC3A    jmp         0047C1E9
 0047BC3F    mov         ecx,dword ptr [ebp-194]
 0047BC45    mov         eax,dword ptr [ecx+1A]
 0047BC48    mov         edx,dword ptr [ebp-150]
 0047BC4E    call        TList.Get
 0047BC53    mov         dword ptr [ebp-1B0],eax
 0047BC59    mov         word ptr [ebp-134],110
 0047BC62    mov         ecx,dword ptr [ebp-1B0]
 0047BC68    mov         eax,dword ptr [ecx+0A]
 0047BC6B    mov         dword ptr [ebp-1B4],eax
 0047BC71    xor         edx,edx
 0047BC73    mov         dword ptr [ebp-154],edx
>0047BC79    jmp         0047C1BF
 0047BC7E    mov         edx,dword ptr [ebp-154]
 0047BC84    mov         eax,dword ptr [ebp-1B4]
 0047BC8A    call        TList.Get
 0047BC8F    mov         dword ptr [ebp-1B8],eax
 0047BC95    mov         word ptr [ebp-134],110
 0047BC9E    mov         eax,dword ptr [ebp-1B0]
 0047BCA4    add         eax,6
 0047BCA7    call        00535E90
 0047BCAC    mov         dword ptr [ebp-1BC],eax
 0047BCB2    mov         word ptr [ebp-134],1D0
 0047BCBB    lea         eax,[ebp-0EC]
 0047BCC1    call        00401EA8
 0047BCC6    push        eax
 0047BCC7    inc         dword ptr [ebp-128]
 0047BCCD    lea         eax,[ebp-0F0]
 0047BCD3    call        00401EA8
 0047BCD8    mov         ecx,eax
 0047BCDA    inc         dword ptr [ebp-128]
 0047BCE0    mov         eax,6B2A48
 0047BCE5    mov         edx,dword ptr [ebp-1B8]
 0047BCEB    call        0067E37C
 0047BCF0    lea         ecx,[ebp-0F0]
 0047BCF6    mov         ecx,dword ptr [ecx]
 0047BCF8    mov         edx,dword ptr [ebp-1BC]
 0047BCFE    mov         eax,dword ptr [ebp-148]
 0047BD04    call        0047A8E4
 0047BD09    dec         dword ptr [ebp-128]
 0047BD0F    lea         eax,[ebp-0F0]
 0047BD15    mov         edx,2
 0047BD1A    call        0067DCA0
 0047BD1F    mov         word ptr [ebp-134],1C4
 0047BD28    mov         word ptr [ebp-134],1DC
 0047BD31    mov         edx,6B2A4A
 0047BD36    lea         eax,[ebp-0F4]
 0047BD3C    call        0067DAB4
 0047BD41    inc         dword ptr [ebp-128]
 0047BD47    lea         edx,[ebp-0F4]
 0047BD4D    lea         eax,[ebp-0EC]
 0047BD53    call        0067DD84
 0047BD58    push        eax
 0047BD59    dec         dword ptr [ebp-128]
 0047BD5F    lea         eax,[ebp-0F4]
 0047BD65    mov         edx,2
 0047BD6A    call        0067DCA0
 0047BD6F    pop         ecx
 0047BD70    test        cl,cl
>0047BD72    je          0047BDCF
 0047BD74    mov         word ptr [ebp-134],1E8
 0047BD7D    lea         eax,[ebp-0F8]
 0047BD83    call        00401EA8
 0047BD88    push        eax
 0047BD89    inc         dword ptr [ebp-128]
 0047BD8F    mov         edx,dword ptr [ebp-1B8]
 0047BD95    mov         ecx,dword ptr [edx]
 0047BD97    mov         edx,dword ptr [ebp-1BC]
 0047BD9D    mov         eax,dword ptr [ebp-148]
 0047BDA3    call        0047A8E4
 0047BDA8    lea         edx,[ebp-0F8]
 0047BDAE    lea         eax,[ebp-0EC]
 0047BDB4    call        0067DCD0
 0047BDB9    dec         dword ptr [ebp-128]
 0047BDBF    lea         eax,[ebp-0F8]
 0047BDC5    mov         edx,2
 0047BDCA    call        0067DCA0
 0047BDCF    mov         word ptr [ebp-134],1F4
 0047BDD8    mov         edx,6B2A4B
 0047BDDD    lea         eax,[ebp-0FC]
 0047BDE3    call        0067DAB4
 0047BDE8    inc         dword ptr [ebp-128]
 0047BDEE    lea         edx,[ebp-0FC]
 0047BDF4    lea         eax,[ebp-0EC]
 0047BDFA    call        0067DD9C
 0047BDFF    push        eax
 0047BE00    dec         dword ptr [ebp-128]
 0047BE06    lea         eax,[ebp-0FC]
 0047BE0C    mov         edx,2
 0047BE11    call        0067DCA0
 0047BE16    pop         ecx
 0047BE17    test        cl,cl
>0047BE19    je          0047C19A
 0047BE1F    xor         eax,eax
 0047BE21    mov         dword ptr [ebp-158],eax
>0047BE27    jmp         0047C170
 0047BE2C    mov         edx,dword ptr [ebp-164]
 0047BE32    mov         ecx,dword ptr [edx+1A]
 0047BE35    mov         eax,dword ptr [ecx+8]
 0047BE38    mov         edx,dword ptr [ebp-158]
 0047BE3E    call        TList.Get
 0047BE43    mov         dword ptr [ebp-1C0],eax
 0047BE49    mov         word ptr [ebp-134],1C4
 0047BE52    mov         word ptr [ebp-134],200
 0047BE5B    lea         eax,[ebp-104]
 0047BE61    call        00401EA8
 0047BE66    push        eax
 0047BE67    inc         dword ptr [ebp-128]
 0047BE6D    mov         edx,6B2A4C
 0047BE72    lea         eax,[ebp-100]
 0047BE78    call        0067DAB4
 0047BE7D    inc         dword ptr [ebp-128]
 0047BE83    lea         edx,[ebp-100]
 0047BE89    lea         eax,[ebp-0B0]
 0047BE8F    pop         ecx
 0047BE90    call        0067DCF8
 0047BE95    lea         edx,[ebp-104]
 0047BE9B    push        edx
 0047BE9C    lea         eax,[ebp-108]
 0047BEA2    call        00401EA8
 0047BEA7    mov         ecx,eax
 0047BEA9    inc         dword ptr [ebp-128]
 0047BEAF    mov         edx,dword ptr [ebp-1B8]
 0047BEB5    add         edx,4
 0047BEB8    pop         eax
 0047BEB9    call        0067DCF8
 0047BEBE    lea         edx,[ebp-108]
 0047BEC4    mov         edx,dword ptr [edx]
 0047BEC6    mov         eax,dword ptr [ebp-1C0]
 0047BECC    mov         eax,dword ptr [eax+0A]
 0047BECF    call        SameText
 0047BED4    push        eax
 0047BED5    dec         dword ptr [ebp-128]
 0047BEDB    lea         eax,[ebp-108]
 0047BEE1    mov         edx,2
 0047BEE6    call        0067DCA0
 0047BEEB    dec         dword ptr [ebp-128]
 0047BEF1    lea         eax,[ebp-104]
 0047BEF7    mov         edx,2
 0047BEFC    call        0067DCA0
 0047BF01    dec         dword ptr [ebp-128]
 0047BF07    lea         eax,[ebp-100]
 0047BF0D    mov         edx,2
 0047BF12    call        0067DCA0
 0047BF17    pop         ecx
 0047BF18    test        cl,cl
>0047BF1A    je          0047C16A
 0047BF20    mov         eax,dword ptr [ebp-1C0]
 0047BF26    mov         eax,dword ptr [eax+6]
 0047BF29    call        0053A308
 0047BF2E    mov         dword ptr [ebp-1C4],eax
 0047BF34    mov         word ptr [ebp-134],1C4
 0047BF3D    mov         edx,dword ptr [ebp-1C4]
 0047BF43    test        edx,edx
>0047BF45    je          0047C12C
 0047BF4B    mov         word ptr [ebp-134],218
 0047BF54    lea         edx,[ebp-0B0]
 0047BF5A    lea         eax,[ebp-10C]
 0047BF60    call        0067DAEC
 0047BF65    inc         dword ptr [ebp-128]
 0047BF6B    mov         word ptr [ebp-134],20C
 0047BF74    push        dword ptr [ebp-16C]
 0047BF7A    mov         ecx,dword ptr [ebp-1B8]
 0047BF80    mov         ecx,dword ptr [ecx]
 0047BF82    mov         eax,6ECAB4
 0047BF87    mov         edx,dword ptr [ebp-10C]
 0047BF8D    call        00473A84
 0047BF92    test        al,al
>0047BF94    je          0047C06D
 0047BF9A    mov         eax,dword ptr [ebp-1C4]
 0047BFA0    mov         byte ptr [eax+5],28
 0047BFA4    mov         edx,dword ptr [ebp-1C4]
 0047BFAA    mov         ecx,dword ptr [edx+1E]
 0047BFAD    or          dword ptr [ecx],8000000
 0047BFB3    mov         eax,dword ptr [ebp-1C4]
 0047BFB9    mov         eax,dword ptr [eax+1E]
 0047BFBC    call        0048456C
 0047BFC1    push        4
 0047BFC3    mov         word ptr [ebp-134],224
 0047BFCC    mov         edx,6B2A4E
 0047BFD1    lea         eax,[ebp-110]
 0047BFD7    call        0067DAB4
 0047BFDC    inc         dword ptr [ebp-128]
 0047BFE2    push        dword ptr [eax]
 0047BFE4    push        dword ptr [ebp-0B0]
 0047BFEA    xor         ecx,ecx
 0047BFEC    mov         dl,21
 0047BFEE    mov         eax,dword ptr [ebp-1C4]
 0047BFF4    mov         eax,dword ptr [eax+1E]
 0047BFF7    call        00483A34
 0047BFFC    dec         dword ptr [ebp-128]
 0047C002    lea         eax,[ebp-110]
 0047C008    mov         edx,2
 0047C00D    call        0067DCA0
 0047C012    mov         word ptr [ebp-134],230
 0047C01B    push        0
 0047C01D    lea         eax,[ebp-114]
 0047C023    call        00401EA8
 0047C028    push        eax
 0047C029    inc         dword ptr [ebp-128]
 0047C02F    mov         eax,dword ptr [ebp-16C]
 0047C035    add         eax,0D
 0047C038    call        00403C0C
 0047C03D    mov         edx,eax
 0047C03F    mov         ecx,1
 0047C044    mov         eax,dword ptr [ebp-1C4]
 0047C04A    mov         eax,dword ptr [eax+1E]
 0047C04D    call        00483F70
 0047C052    dec         dword ptr [ebp-128]
 0047C058    lea         eax,[ebp-114]
 0047C05E    mov         edx,2
 0047C063    call        0067DCA0
>0047C068    jmp         0047C10B
 0047C06D    mov         word ptr [ebp-134],23C
 0047C076    lea         eax,[ebp-118]
 0047C07C    call        00401EA8
 0047C081    mov         edx,eax
 0047C083    inc         dword ptr [ebp-128]
 0047C089    lea         eax,[ebp-10C]
 0047C08F    call        0053618C
 0047C094    lea         edx,[ebp-118]
 0047C09A    lea         eax,[ebp-10C]
 0047C0A0    call        0067DCD0
 0047C0A5    dec         dword ptr [ebp-128]
 0047C0AB    lea         eax,[ebp-118]
 0047C0B1    mov         edx,2
 0047C0B6    call        0067DCA0
 0047C0BB    mov         word ptr [ebp-134],248
 0047C0C4    mov         edx,6B2A53
 0047C0C9    lea         eax,[ebp-11C]
 0047C0CF    call        0067DAB4
 0047C0D4    inc         dword ptr [ebp-128]
 0047C0DA    lea         edx,[ebp-11C]
 0047C0E0    lea         eax,[ebp-10C]
 0047C0E6    call        0067DD84
 0047C0EB    push        eax
 0047C0EC    dec         dword ptr [ebp-128]
 0047C0F2    lea         eax,[ebp-11C]
 0047C0F8    mov         edx,2
 0047C0FD    call        0067DCA0
 0047C102    pop         ecx
 0047C103    test        cl,cl
>0047C105    je          0047BF74
 0047C10B    dec         dword ptr [ebp-128]
 0047C111    lea         eax,[ebp-10C]
 0047C117    mov         edx,2
 0047C11C    call        0067DCA0
 0047C121    mov         word ptr [ebp-134],1C4
>0047C12A    jmp         0047C19A
 0047C12C    mov         word ptr [ebp-134],254
 0047C135    mov         edx,6B2A54
 0047C13A    lea         eax,[ebp-120]
 0047C140    call        0067DAB4
 0047C145    inc         dword ptr [ebp-128]
 0047C14B    mov         eax,dword ptr [eax]
 0047C14D    call        005ECEB0
 0047C152    dec         dword ptr [ebp-128]
 0047C158    lea         eax,[ebp-120]
 0047C15E    mov         edx,2
 0047C163    call        0067DCA0
>0047C168    jmp         0047C19A
 0047C16A    inc         dword ptr [ebp-158]
 0047C170    mov         ecx,dword ptr [ebp-164]
 0047C176    mov         eax,dword ptr [ecx+1A]
 0047C179    mov         edx,dword ptr [eax+8]
 0047C17C    mov         ecx,dword ptr [edx+8]
 0047C17F    mov         eax,dword ptr [ebp-158]
 0047C185    cmp         ecx,eax
>0047C187    jle         0047C19A
 0047C189    mov         edx,dword ptr [ebp-148]
 0047C18F    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047C192    test        cl,cl
>0047C194    je          0047BE2C
 0047C19A    dec         dword ptr [ebp-128]
 0047C1A0    lea         eax,[ebp-0EC]
 0047C1A6    mov         edx,2
 0047C1AB    call        0067DCA0
 0047C1B0    mov         word ptr [ebp-134],110
 0047C1B9    inc         dword ptr [ebp-154]
 0047C1BF    mov         ecx,dword ptr [ebp-1B4]
 0047C1C5    mov         eax,dword ptr [ecx+8]
 0047C1C8    mov         edx,dword ptr [ebp-154]
 0047C1CE    cmp         eax,edx
>0047C1D0    jle         0047C1E3
 0047C1D2    mov         ecx,dword ptr [ebp-148]
 0047C1D8    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047C1DB    test        al,al
>0047C1DD    je          0047BC7E
 0047C1E3    inc         dword ptr [ebp-150]
 0047C1E9    mov         edx,dword ptr [ebp-194]
 0047C1EF    mov         ecx,dword ptr [edx+1A]
 0047C1F2    mov         eax,dword ptr [ecx+8]
 0047C1F5    mov         edx,dword ptr [ebp-150]
 0047C1FB    cmp         eax,edx
>0047C1FD    jle         0047C210
 0047C1FF    mov         ecx,dword ptr [ebp-148]
 0047C205    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047C208    test        al,al
>0047C20A    je          0047BC3F
 0047C210    dec         dword ptr [ebp-128]
 0047C216    lea         eax,[ebp-0B0]
 0047C21C    mov         edx,2
 0047C221    call        0067DCA0
 0047C226    mov         word ptr [ebp-134],14
 0047C22F    inc         dword ptr [ebp-14C]
 0047C235    mov         ecx,dword ptr ds:[6941A0];0x0 gvar_006941A0
 0047C23B    mov         eax,dword ptr [ecx+0D]
 0047C23E    mov         edx,dword ptr [eax+8]
 0047C241    mov         ecx,dword ptr [ebp-14C]
 0047C247    cmp         edx,ecx
>0047C249    jle         0047C25C
 0047C24B    mov         eax,dword ptr [ebp-148]
 0047C251    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047C254    test        dl,dl
>0047C256    je          0047B5DB
 0047C25C    mov         eax,dword ptr [ebp-148]
 0047C262    call        004768BC
 0047C267    sub         dword ptr [ebp-128],3
 0047C26E    lea         eax,[ebp-5C]
 0047C271    mov         edx,2
 0047C276    call        0046E124
 0047C27B    sub         dword ptr [ebp-128],3
 0047C282    lea         eax,[ebp-2C]
 0047C285    mov         edx,2
 0047C28A    call        0046E58C
 0047C28F    dec         dword ptr [ebp-128]
 0047C295    lea         eax,[ebp-8]
 0047C298    mov         edx,2
 0047C29D    call        0067DCA0
 0047C2A2    dec         dword ptr [ebp-128]
 0047C2A8    lea         eax,[ebp-4]
 0047C2AB    mov         edx,2
 0047C2B0    call        0067DCA0
 0047C2B5    mov         ecx,dword ptr [ebp-144]
 0047C2BB    mov         dword ptr fs:[0],ecx
 0047C2C2    mov         esp,ebp
 0047C2C4    pop         ebp
 0047C2C5    ret
*}
end;

//0047C2C8
procedure sub_0047C2C8(?:TAnalyzeThread);
begin
{*
 0047C2C8    push        ebp
 0047C2C9    mov         ebp,esp
 0047C2CB    add         esp,0FFFFFEE4
 0047C2D1    push        ebx
 0047C2D2    mov         dword ptr [ebp-0B0],eax
 0047C2D8    mov         eax,6B3D40
 0047C2DD    call        0066FECC
 0047C2E2    mov         word ptr [ebp-9C],8
 0047C2EB    lea         eax,[ebp-24]
 0047C2EE    call        0046E470
 0047C2F3    add         dword ptr [ebp-90],3
 0047C2FA    mov         word ptr [ebp-9C],14
 0047C303    lea         edx,[ebp-24]
 0047C306    mov         dword ptr [ebp-108],edx
 0047C30C    mov         word ptr [ebp-9C],20
 0047C315    lea         eax,[ebp-40]
 0047C318    call        0046DE3C
 0047C31D    add         dword ptr [ebp-90],4
 0047C324    mov         word ptr [ebp-9C],14
 0047C32D    lea         edx,[ebp-40]
 0047C330    mov         dword ptr [ebp-10C],edx
 0047C336    mov         word ptr [ebp-9C],2C
 0047C33F    lea         eax,[ebp-44]
 0047C342    call        00401EA8
 0047C347    inc         dword ptr [ebp-90]
 0047C34D    mov         word ptr [ebp-9C],14
 0047C356    mov         word ptr [ebp-9C],38
 0047C35F    lea         eax,[ebp-48]
 0047C362    call        00401EA8
 0047C367    inc         dword ptr [ebp-90]
 0047C36D    mov         word ptr [ebp-9C],14
 0047C376    mov         word ptr [ebp-9C],44
 0047C37F    mov         edx,6B2A9C
 0047C384    lea         eax,[ebp-4C]
 0047C387    call        0067DAB4
 0047C38C    inc         dword ptr [ebp-90]
 0047C392    lea         ecx,[ebp-4C]
 0047C395    mov         edx,dword ptr ds:[6941DC];0x0 gvar_006941DC
 0047C39B    mov         eax,dword ptr [ebp-0B0]
 0047C3A1    call        0047673C
 0047C3A6    dec         dword ptr [ebp-90]
 0047C3AC    lea         eax,[ebp-4C]
 0047C3AF    mov         edx,2
 0047C3B4    call        0067DCA0
 0047C3B9    xor         ecx,ecx
 0047C3BB    mov         dword ptr [ebp-0DC],ecx
>0047C3C1    jmp         0047C848
 0047C3C6    mov         eax,dword ptr [ebp-0B0]
 0047C3CC    call        0047688C
 0047C3D1    mov         edx,dword ptr [ebp-0DC]
 0047C3D7    mov         eax,[006941E0];0x0 gvar_006941E0
 0047C3DC    call        TList.Get
 0047C3E1    mov         dword ptr [ebp-100],eax
 0047C3E7    mov         edx,dword ptr [ebp-100]
 0047C3ED    mov         cl,byte ptr [edx]
 0047C3EF    test        cl,cl
>0047C3F1    jne         0047C842
 0047C3F7    mov         eax,dword ptr [ebp-100]
 0047C3FD    mov         edx,dword ptr [eax+14]
 0047C400    mov         dword ptr [ebp-0BC],edx
 0047C406    mov         ecx,dword ptr [ebp-0BC]
 0047C40C    test        ecx,ecx
>0047C40E    je          0047C63F
 0047C414    mov         eax,dword ptr [ebp-100]
 0047C41A    mov         dl,byte ptr [eax+1]
 0047C41D    test        dl,dl
>0047C41F    jne         0047C63F
 0047C425    mov         ecx,dword ptr [ebp-0B0]
 0047C42B    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 0047C42E    mov         ecx,dword ptr [ebp-0BC]
 0047C434    xor         edx,edx
 0047C436    call        00418328
 0047C43B    xor         eax,eax
 0047C43D    mov         dword ptr [ebp-0EC],eax
>0047C443    jmp         0047C616
 0047C448    mov         word ptr [ebp-9C],50
 0047C451    lea         eax,[ebp-50]
 0047C454    call        00401EA8
 0047C459    mov         ecx,eax
 0047C45B    inc         dword ptr [ebp-90]
 0047C461    mov         edx,dword ptr [ebp-100]
 0047C467    mov         eax,dword ptr [edx+24]
 0047C46A    mov         edx,dword ptr [ebp-0EC]
 0047C470    mov         ebx,dword ptr [eax]
 0047C472    call        dword ptr [ebx+0C]
 0047C475    lea         eax,[ebp-50]
 0047C478    call        00403C0C
 0047C47D    mov         edx,eax
 0047C47F    mov         eax,6ECAB4
 0047C484    call        0046EDD0
 0047C489    mov         word ptr [ebp-0B4],ax
 0047C490    dec         dword ptr [ebp-90]
 0047C496    lea         eax,[ebp-50]
 0047C499    mov         edx,2
 0047C49E    call        0067DCA0
 0047C4A3    cmp         word ptr [ebp-0B4],0FFFF
>0047C4AC    je          0047C610
 0047C4B2    mov         ecx,dword ptr [ebp-100]
 0047C4B8    mov         byte ptr [ecx+3],1
 0047C4BC    mov         word ptr [ebp-9C],5C
 0047C4C5    lea         eax,[ebp-54]
 0047C4C8    call        00401EA8
 0047C4CD    mov         ecx,eax
 0047C4CF    inc         dword ptr [ebp-90]
 0047C4D5    mov         edx,dword ptr [ebp-100]
 0047C4DB    mov         eax,dword ptr [edx+24]
 0047C4DE    mov         edx,dword ptr [ebp-0EC]
 0047C4E4    mov         ebx,dword ptr [eax]
 0047C4E6    call        dword ptr [ebx+0C]
 0047C4E9    lea         eax,[ebp-54]
 0047C4EC    call        00403C0C
 0047C4F1    mov         ecx,eax
 0047C4F3    mov         eax,6ECAB4
 0047C4F8    mov         dx,word ptr [ebp-0B4]
 0047C4FF    call        00470B78
 0047C504    mov         dword ptr [ebp-0F0],eax
 0047C50A    dec         dword ptr [ebp-90]
 0047C510    lea         eax,[ebp-54]
 0047C513    mov         edx,2
 0047C518    call        0067DCA0
 0047C51D    mov         ecx,dword ptr [ebp-0F0]
 0047C523    inc         ecx
>0047C524    je          0047C610
 0047C52A    mov         eax,dword ptr [ebp-0F0]
 0047C530    shl         eax,4
 0047C533    mov         edx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 0047C539    mov         ecx,dword ptr [edx+eax+0C]
 0047C53D    mov         dword ptr [ebp-0F0],ecx
 0047C543    mov         eax,6ECAB4
 0047C548    mov         edx,dword ptr [ebp-0F0]
 0047C54E    call        004738B4
 0047C553    test        al,al
>0047C555    jne         0047C610
 0047C55B    push        dword ptr [ebp-108]
 0047C561    mov         eax,6ECAB4
 0047C566    mov         ecx,3
 0047C56B    mov         edx,dword ptr [ebp-0F0]
 0047C571    call        00471F14
 0047C576    test        eax,eax
>0047C578    je          0047C610
 0047C57E    mov         eax,dword ptr [ebp-0BC]
 0047C584    call        005312C8
 0047C589    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047C58F    add         eax,edx
 0047C591    mov         edx,dword ptr [ebp-108]
 0047C597    call        0053EF88
 0047C59C    test        al,al
>0047C59E    je          0047C5C5
 0047C5A0    mov         eax,dword ptr [ebp-0BC]
 0047C5A6    call        005312C8
 0047C5AB    mov         edx,eax
 0047C5AD    mov         eax,dword ptr [ebp-0B0]
 0047C5B3    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047C5B6    mov         ecx,dword ptr [ebp-108]
 0047C5BC    call        00404898
 0047C5C1    test        al,al
>0047C5C3    jne         0047C5C9
 0047C5C5    xor         edx,edx
>0047C5C7    jmp         0047C5CE
 0047C5C9    mov         edx,1
 0047C5CE    mov         byte ptr [ebp-0B1],dl
 0047C5D4    mov         al,byte ptr [ebp-0B1]
 0047C5DA    test        al,al
>0047C5DC    je          0047C610
 0047C5DE    push        dword ptr [ebp-108]
 0047C5E4    push        1
 0047C5E6    mov         edx,dword ptr [ebp-108]
 0047C5EC    push        dword ptr [edx+12]
 0047C5EF    mov         eax,dword ptr [ebp-0BC]
 0047C5F5    call        005312C8
 0047C5FA    mov         edx,eax
 0047C5FC    mov         ecx,dword ptr [ebp-0B0]
 0047C602    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 0047C605    mov         ecx,dword ptr [ebp-0F0]
 0047C60B    call        004052B4
 0047C610    inc         dword ptr [ebp-0EC]
 0047C616    mov         edx,dword ptr [ebp-100]
 0047C61C    mov         eax,dword ptr [edx+24]
 0047C61F    mov         edx,dword ptr [eax]
 0047C621    call        dword ptr [edx+14]
 0047C624    mov         ecx,dword ptr [ebp-0EC]
 0047C62A    cmp         eax,ecx
>0047C62C    jle         0047C63F
 0047C62E    mov         eax,dword ptr [ebp-0B0]
 0047C634    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047C637    test        dl,dl
>0047C639    je          0047C448
 0047C63F    mov         ecx,dword ptr [ebp-100]
 0047C645    mov         eax,dword ptr [ecx+0C]
 0047C648    mov         dword ptr [ebp-0C0],eax
 0047C64E    mov         edx,dword ptr [ebp-0C0]
 0047C654    test        edx,edx
>0047C656    je          0047C842
 0047C65C    mov         ecx,dword ptr [ebp-100]
 0047C662    mov         al,byte ptr [ecx+2]
 0047C665    test        al,al
>0047C667    jne         0047C842
 0047C66D    mov         edx,dword ptr [ebp-0B0]
 0047C673    mov         eax,dword ptr [edx+30];TAnalyzeThread.?f30:dword
 0047C676    mov         ecx,dword ptr [ebp-0C0]
 0047C67C    xor         edx,edx
 0047C67E    call        00418328
 0047C683    xor         eax,eax
 0047C685    mov         dword ptr [ebp-0EC],eax
>0047C68B    jmp         0047C819
 0047C690    mov         word ptr [ebp-9C],68
 0047C699    lea         eax,[ebp-58]
 0047C69C    call        00401EA8
 0047C6A1    mov         ecx,eax
 0047C6A3    inc         dword ptr [ebp-90]
 0047C6A9    mov         edx,dword ptr [ebp-100]
 0047C6AF    mov         eax,dword ptr [edx+24]
 0047C6B2    mov         edx,dword ptr [ebp-0EC]
 0047C6B8    mov         ebx,dword ptr [eax]
 0047C6BA    call        dword ptr [ebx+0C]
 0047C6BD    lea         eax,[ebp-58]
 0047C6C0    call        00403C0C
 0047C6C5    mov         edx,eax
 0047C6C7    mov         eax,6ECAB4
 0047C6CC    call        0046EDD0
 0047C6D1    mov         word ptr [ebp-0B4],ax
 0047C6D8    dec         dword ptr [ebp-90]
 0047C6DE    lea         eax,[ebp-58]
 0047C6E1    mov         edx,2
 0047C6E6    call        0067DCA0
 0047C6EB    cmp         word ptr [ebp-0B4],0FFFF
>0047C6F4    je          0047C813
 0047C6FA    mov         ecx,dword ptr [ebp-100]
 0047C700    mov         byte ptr [ecx+3],1
 0047C704    mov         ecx,6B2AC7
 0047C709    mov         eax,6ECAB4
 0047C70E    mov         dx,word ptr [ebp-0B4]
 0047C715    call        00470B78
 0047C71A    mov         dword ptr [ebp-0F0],eax
 0047C720    mov         eax,dword ptr [ebp-0F0]
 0047C726    inc         eax
>0047C727    je          0047C813
 0047C72D    mov         edx,dword ptr [ebp-0F0]
 0047C733    shl         edx,4
 0047C736    mov         ecx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 0047C73C    mov         eax,dword ptr [ecx+edx+0C]
 0047C740    mov         dword ptr [ebp-0F0],eax
 0047C746    mov         eax,6ECAB4
 0047C74B    mov         edx,dword ptr [ebp-0F0]
 0047C751    call        004738B4
 0047C756    test        al,al
>0047C758    jne         0047C813
 0047C75E    push        dword ptr [ebp-108]
 0047C764    mov         eax,6ECAB4
 0047C769    mov         ecx,3
 0047C76E    mov         edx,dword ptr [ebp-0F0]
 0047C774    call        00471F14
 0047C779    test        eax,eax
>0047C77B    je          0047C813
 0047C781    mov         eax,dword ptr [ebp-0C0]
 0047C787    call        005312C8
 0047C78C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047C792    add         eax,edx
 0047C794    mov         edx,dword ptr [ebp-108]
 0047C79A    call        0053EF88
 0047C79F    test        al,al
>0047C7A1    je          0047C7C8
 0047C7A3    mov         eax,dword ptr [ebp-0C0]
 0047C7A9    call        005312C8
 0047C7AE    mov         edx,eax
 0047C7B0    mov         eax,dword ptr [ebp-0B0]
 0047C7B6    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047C7B9    mov         ecx,dword ptr [ebp-108]
 0047C7BF    call        00404898
 0047C7C4    test        al,al
>0047C7C6    jne         0047C7CC
 0047C7C8    xor         edx,edx
>0047C7CA    jmp         0047C7D1
 0047C7CC    mov         edx,1
 0047C7D1    mov         byte ptr [ebp-0B1],dl
 0047C7D7    mov         al,byte ptr [ebp-0B1]
 0047C7DD    test        al,al
>0047C7DF    je          0047C813
 0047C7E1    push        dword ptr [ebp-108]
 0047C7E7    push        1
 0047C7E9    mov         edx,dword ptr [ebp-108]
 0047C7EF    push        dword ptr [edx+12]
 0047C7F2    mov         eax,dword ptr [ebp-0C0]
 0047C7F8    call        005312C8
 0047C7FD    mov         edx,eax
 0047C7FF    mov         ecx,dword ptr [ebp-0B0]
 0047C805    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 0047C808    mov         ecx,dword ptr [ebp-0F0]
 0047C80E    call        004052B4
 0047C813    inc         dword ptr [ebp-0EC]
 0047C819    mov         edx,dword ptr [ebp-100]
 0047C81F    mov         eax,dword ptr [edx+24]
 0047C822    mov         edx,dword ptr [eax]
 0047C824    call        dword ptr [edx+14]
 0047C827    mov         ecx,dword ptr [ebp-0EC]
 0047C82D    cmp         eax,ecx
>0047C82F    jle         0047C842
 0047C831    mov         eax,dword ptr [ebp-0B0]
 0047C837    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047C83A    test        dl,dl
>0047C83C    je          0047C690
 0047C842    inc         dword ptr [ebp-0DC]
 0047C848    mov         ecx,dword ptr [ebp-0DC]
 0047C84E    mov         eax,[006941DC];0x0 gvar_006941DC
 0047C853    cmp         ecx,eax
>0047C855    jge         0047C868
 0047C857    mov         edx,dword ptr [ebp-0B0]
 0047C85D    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047C860    test        cl,cl
>0047C862    je          0047C3C6
 0047C868    mov         eax,dword ptr [ebp-0B0]
 0047C86E    call        004768BC
 0047C873    mov         edx,dword ptr [ebp-0B0]
 0047C879    mov         eax,dword ptr [edx+30];TAnalyzeThread.?f30:dword
 0047C87C    mov         ecx,dword ptr ds:[6ECB40];0x0 gvar_006ECB40
 0047C882    xor         edx,edx
 0047C884    call        00418328
 0047C889    mov         word ptr [ebp-9C],74
 0047C892    mov         edx,6B2AD4
 0047C897    lea         eax,[ebp-5C]
 0047C89A    call        0067DAB4
 0047C89F    inc         dword ptr [ebp-90]
 0047C8A5    lea         ecx,[ebp-5C]
 0047C8A8    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 0047C8AE    mov         eax,dword ptr [ebp-0B0]
 0047C8B4    call        0047673C
 0047C8B9    mov         dword ptr [ebp-0FC],eax
 0047C8BF    dec         dword ptr [ebp-90]
 0047C8C5    lea         eax,[ebp-5C]
 0047C8C8    mov         edx,2
 0047C8CD    call        0067DCA0
 0047C8D2    xor         ecx,ecx
 0047C8D4    mov         dword ptr [ebp-0DC],ecx
>0047C8DA    jmp         0047CA05
 0047C8DF    mov         eax,dword ptr [ebp-0DC]
 0047C8E5    mov         edx,dword ptr [ebp-0FC]
 0047C8EB    and         eax,edx
>0047C8ED    jne         0047C8FA
 0047C8EF    mov         eax,dword ptr [ebp-0B0]
 0047C8F5    call        0047688C
 0047C8FA    mov         eax,dword ptr [ebp-0DC]
 0047C900    call        00531360
 0047C905    call        0053A308
 0047C90A    mov         dword ptr [ebp-104],eax
 0047C910    mov         edx,dword ptr [ebp-104]
 0047C916    test        edx,edx
>0047C918    je          0047C9FF
 0047C91E    mov         ecx,dword ptr [ebp-104]
 0047C924    mov         al,byte ptr [ecx+5]
 0047C927    cmp         al,23
>0047C929    jne         0047C9FF
 0047C92F    mov         eax,dword ptr [ebp-0DC]
 0047C935    call        00531360
 0047C93A    mov         dword ptr [ebp-0C4],eax
 0047C940    mov         word ptr [ebp-9C],80
 0047C949    lea         eax,[ebp-60]
 0047C94C    call        00401EA8
 0047C951    mov         edx,eax
 0047C953    inc         dword ptr [ebp-90]
 0047C959    mov         eax,dword ptr [ebp-0C4]
 0047C95F    call        00535C94
 0047C964    lea         edx,[ebp-60]
 0047C967    mov         eax,dword ptr [ebp-0B0]
 0047C96D    call        00476980
 0047C972    dec         dword ptr [ebp-90]
 0047C978    lea         eax,[ebp-60]
 0047C97B    mov         edx,2
 0047C980    call        0067DCA0
 0047C985    mov         ecx,dword ptr [ebp-0B0]
 0047C98B    add         ecx,0D;TAnalyzeThread.FTerminated:Boolean
 0047C98E    push        ecx
 0047C98F    mov         eax,dword ptr [ebp-0B0]
 0047C995    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047C998    mov         ecx,dword ptr [ebp-0C4]
 0047C99E    xor         edx,edx
 0047C9A0    call        00417380
 0047C9A5    mov         eax,dword ptr [ebp-0B0]
 0047C9AB    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047C9AE    test        dl,dl
>0047C9B0    jne         0047CA26
 0047C9B2    mov         ecx,dword ptr [ebp-0B0]
 0047C9B8    add         ecx,0D;TAnalyzeThread.FTerminated:Boolean
 0047C9BB    push        ecx
 0047C9BC    mov         eax,dword ptr [ebp-0B0]
 0047C9C2    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047C9C5    mov         ecx,dword ptr [ebp-0C4]
 0047C9CB    xor         edx,edx
 0047C9CD    call        00417D3C
 0047C9D2    mov         eax,dword ptr [ebp-0B0]
 0047C9D8    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047C9DB    test        dl,dl
>0047C9DD    jne         0047CA26
 0047C9DF    mov         ecx,dword ptr [ebp-0B0]
 0047C9E5    add         ecx,0D;TAnalyzeThread.FTerminated:Boolean
 0047C9E8    push        ecx
 0047C9E9    mov         eax,dword ptr [ebp-0B0]
 0047C9EF    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047C9F2    mov         ecx,dword ptr [ebp-0C4]
 0047C9F8    xor         edx,edx
 0047C9FA    call        00417F1C
 0047C9FF    inc         dword ptr [ebp-0DC]
 0047CA05    mov         eax,dword ptr [ebp-0DC]
 0047CA0B    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 0047CA11    cmp         eax,edx
>0047CA13    jae         0047CA26
 0047CA15    mov         ecx,dword ptr [ebp-0B0]
 0047CA1B    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047CA1E    test        al,al
>0047CA20    je          0047C8DF
 0047CA26    mov         eax,dword ptr [ebp-0B0]
 0047CA2C    call        004768BC
 0047CA31    mov         word ptr [ebp-9C],8C
 0047CA3A    mov         edx,6B2AE9
 0047CA3F    lea         eax,[ebp-64]
 0047CA42    call        0067DAB4
 0047CA47    inc         dword ptr [ebp-90]
 0047CA4D    lea         ecx,[ebp-64]
 0047CA50    mov         edx,7
 0047CA55    mov         eax,dword ptr [ebp-0B0]
 0047CA5B    call        0047673C
 0047CA60    dec         dword ptr [ebp-90]
 0047CA66    lea         eax,[ebp-64]
 0047CA69    mov         edx,2
 0047CA6E    call        0067DCA0
 0047CA73    xor         ecx,ecx
 0047CA75    mov         dword ptr [ebp-0E8],ecx
>0047CA7B    jmp         0047CE61
 0047CA80    mov         eax,dword ptr [ebp-0B0]
 0047CA86    call        0047688C
 0047CA8B    imul        edx,dword ptr [ebp-0E8],0D
 0047CA92    mov         ecx,dword ptr [edx+6B28D9]
 0047CA98    test        ecx,ecx
>0047CA9A    je          0047CE72
 0047CAA0    imul        eax,dword ptr [ebp-0E8],0D
 0047CAA7    mov         byte ptr [eax+6B28D8],0
 0047CAAE    imul        edx,dword ptr [ebp-0E8],0D
 0047CAB5    xor         ecx,ecx
 0047CAB7    mov         dword ptr [edx+6B28DD],ecx
 0047CABD    imul        eax,dword ptr [ebp-0E8],0D
 0047CAC4    mov         dword ptr [eax+6B28E1],0FFFFFFFF
 0047CACE    imul        edx,dword ptr [ebp-0E8],0D
 0047CAD5    mov         edx,dword ptr [edx+6B28D9]
 0047CADB    mov         eax,6ECAB4
 0047CAE0    call        0046EDD0
 0047CAE5    mov         word ptr [ebp-0B4],ax
 0047CAEC    cmp         word ptr [ebp-0B4],0FFFF
>0047CAF5    je          0047CE5B
 0047CAFB    lea         ecx,[ebp-0CC]
 0047CB01    push        ecx
 0047CB02    lea         ecx,[ebp-0C8]
 0047CB08    mov         eax,6ECAB4
 0047CB0D    mov         dx,word ptr [ebp-0B4]
 0047CB14    call        00471484
 0047CB19    test        al,al
>0047CB1B    je          0047CE5B
 0047CB21    xor         eax,eax
 0047CB23    mov         dword ptr [ebp-0DC],eax
>0047CB29    jmp         0047CE3A
 0047CB2E    mov         edx,dword ptr [ebp-0DC]
 0047CB34    mov         eax,[006941E0];0x0 gvar_006941E0
 0047CB39    call        TList.Get
 0047CB3E    mov         dword ptr [ebp-100],eax
 0047CB44    mov         edx,dword ptr [ebp-100]
 0047CB4A    mov         cl,byte ptr [edx]
 0047CB4C    test        cl,cl
>0047CB4E    jne         0047CE34
 0047CB54    mov         eax,dword ptr [ebp-100]
 0047CB5A    mov         eax,dword ptr [eax+24]
 0047CB5D    mov         edx,dword ptr [eax]
 0047CB5F    call        dword ptr [edx+14]
 0047CB62    test        eax,eax
>0047CB64    jne         0047CE34
 0047CB6A    mov         ecx,dword ptr [ebp-100]
 0047CB70    xor         eax,eax
 0047CB72    mov         dword ptr [ecx+1C],eax
 0047CB75    mov         edx,dword ptr [ebp-100]
 0047CB7B    mov         eax,dword ptr [edx+4]
 0047CB7E    call        005312C8
 0047CB83    mov         dword ptr [ebp-0F4],eax
 0047CB89    mov         edx,dword ptr [ebp-100]
 0047CB8F    mov         eax,dword ptr [edx+8]
 0047CB92    call        005312C8
 0047CB97    mov         dword ptr [ebp-0F8],eax
 0047CB9D    mov         edx,dword ptr [ebp-0F4]
 0047CBA3    mov         dword ptr [ebp-0E0],edx
>0047CBA9    jmp         0047CDCF
 0047CBAE    mov         edx,dword ptr [ebp-0E0]
 0047CBB4    mov         eax,10
 0047CBB9    call        00532B74
 0047CBBE    test        al,al
>0047CBC0    je          0047CDC9
 0047CBC6    mov         ecx,dword ptr [ebp-0E8]
 0047CBCC    cmp         ecx,5
>0047CBCF    je          0047CBED
 0047CBD1    mov         eax,dword ptr [ebp-0E0]
 0047CBD7    call        00531360
 0047CBDC    mov         edx,dword ptr [ebp-100]
 0047CBE2    mov         ecx,dword ptr [edx+14]
 0047CBE5    cmp         eax,ecx
>0047CBE7    je          0047CDC9
 0047CBED    mov         eax,dword ptr [ebp-0E8]
 0047CBF3    cmp         eax,5
>0047CBF6    je          0047CC14
 0047CBF8    mov         eax,dword ptr [ebp-0E0]
 0047CBFE    call        00531360
 0047CC03    mov         edx,dword ptr [ebp-100]
 0047CC09    mov         ecx,dword ptr [edx+0C]
 0047CC0C    cmp         eax,ecx
>0047CC0E    je          0047CDC9
 0047CC14    mov         eax,dword ptr [ebp-0E0]
 0047CC1A    call        00531360
 0047CC1F    call        0053A308
 0047CC24    mov         dword ptr [ebp-104],eax
 0047CC2A    mov         edx,dword ptr [ebp-104]
 0047CC30    test        edx,edx
>0047CC32    je          0047CC47
 0047CC34    mov         eax,dword ptr [ebp-104]
 0047CC3A    call        004858C4
 0047CC3F    test        al,al
>0047CC41    jne         0047CDC9
 0047CC47    mov         eax,dword ptr [ebp-0E0]
 0047CC4D    call        00531360
 0047CC52    mov         edx,eax
 0047CC54    mov         eax,dword ptr [ebp-0B0]
 0047CC5A    call        00476A00
 0047CC5F    mov         edx,dword ptr [ebp-0C8]
 0047CC65    mov         dword ptr [ebp-0E4],edx
>0047CC6B    jmp         0047CDA8
 0047CC70    mov         ecx,dword ptr [ebp-0E4]
 0047CC76    shl         ecx,4
 0047CC79    mov         eax,[006ECAD8];0x0 gvar_006ECAD8
 0047CC7E    mov         edx,dword ptr [eax+ecx+8]
 0047CC82    mov         dword ptr [ebp-0F0],edx
 0047CC88    mov         eax,6ECAB4
 0047CC8D    mov         edx,dword ptr [ebp-0F0]
 0047CC93    call        004738B4
 0047CC98    test        al,al
>0047CC9A    jne         0047CDA2
 0047CCA0    mov         byte ptr [ebp-0B1],0
 0047CCA7    push        dword ptr [ebp-108]
 0047CCAD    mov         eax,6ECAB4
 0047CCB2    mov         ecx,1
 0047CCB7    mov         edx,dword ptr [ebp-0F0]
 0047CCBD    call        00471F14
 0047CCC2    test        eax,eax
>0047CCC4    je          0047CDA2
 0047CCCA    mov         eax,dword ptr [ebp-108]
 0047CCD0    mov         edx,dword ptr [eax+12]
 0047CCD3    cmp         edx,8
>0047CCD6    jb          0047CDA2
 0047CCDC    mov         ecx,dword ptr [ebp-108]
 0047CCE2    mov         eax,dword ptr [ecx+12]
 0047CCE5    mov         edx,dword ptr [ebp-0E0]
 0047CCEB    add         eax,edx
 0047CCED    mov         ecx,dword ptr [ebp-0F8]
 0047CCF3    cmp         eax,ecx
>0047CCF5    jae         0047CDA2
 0047CCFB    mov         eax,[006941D4];0x0 gvar_006941D4
 0047CD00    mov         edx,dword ptr [ebp-0E0]
 0047CD06    add         eax,edx
 0047CD08    mov         edx,dword ptr [ebp-108]
 0047CD0E    call        0053EF88
 0047CD13    test        al,al
>0047CD15    je          0047CD35
 0047CD17    mov         eax,dword ptr [ebp-0B0]
 0047CD1D    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047CD20    mov         ecx,dword ptr [ebp-108]
 0047CD26    mov         edx,dword ptr [ebp-0E0]
 0047CD2C    call        00404898
 0047CD31    test        al,al
>0047CD33    jne         0047CD39
 0047CD35    xor         eax,eax
>0047CD37    jmp         0047CD3E
 0047CD39    mov         eax,1
 0047CD3E    mov         byte ptr [ebp-0B1],al
 0047CD44    mov         dl,byte ptr [ebp-0B1]
 0047CD4A    test        dl,dl
>0047CD4C    je          0047CDA2
 0047CD4E    mov         ecx,dword ptr [ebp-108]
 0047CD54    mov         eax,dword ptr [ecx+12]
 0047CD57    mov         dword ptr [ebp-118],eax
 0047CD5D    xor         edx,edx
 0047CD5F    mov         dword ptr [ebp-114],edx
 0047CD65    fild        qword ptr [ebp-118]
 0047CD6B    fmul        dword ptr ds:[47DC9C];100:Single
 0047CD71    mov         ecx,dword ptr [ebp-0F8]
 0047CD77    mov         eax,dword ptr [ebp-0F4]
 0047CD7D    sub         ecx,eax
 0047CD7F    inc         ecx
 0047CD80    mov         dword ptr [ebp-11C],ecx
 0047CD86    fild        dword ptr [ebp-11C]
 0047CD8C    fdivp       st(1),st
 0047CD8E    mov         edx,dword ptr [ebp-100]
 0047CD94    fadd        dword ptr [edx+1C]
 0047CD97    mov         ecx,dword ptr [ebp-100]
 0047CD9D    fstp        dword ptr [ecx+1C]
>0047CDA0    jmp         0047CDC9
 0047CDA2    inc         dword ptr [ebp-0E4]
 0047CDA8    mov         eax,dword ptr [ebp-0E4]
 0047CDAE    mov         edx,dword ptr [ebp-0CC]
 0047CDB4    cmp         eax,edx
>0047CDB6    jg          0047CDC9
 0047CDB8    mov         ecx,dword ptr [ebp-0B0]
 0047CDBE    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047CDC1    test        al,al
>0047CDC3    je          0047CC70
 0047CDC9    inc         dword ptr [ebp-0E0]
 0047CDCF    mov         edx,dword ptr [ebp-0E0]
 0047CDD5    mov         ecx,dword ptr [ebp-0F8]
 0047CDDB    cmp         edx,ecx
>0047CDDD    jge         0047CDF0
 0047CDDF    mov         eax,dword ptr [ebp-0B0]
 0047CDE5    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047CDE8    test        dl,dl
>0047CDEA    je          0047CBAE
 0047CDF0    mov         ecx,dword ptr [ebp-100]
 0047CDF6    fld         dword ptr [ecx+1C]
 0047CDF9    imul        eax,dword ptr [ebp-0E8],0D
 0047CE00    fcomp       dword ptr [eax+6B28DD]
 0047CE06    fnstsw      al
 0047CE08    sahf
>0047CE09    jbe         0047CE34
 0047CE0B    mov         edx,dword ptr [ebp-100]
 0047CE11    mov         ecx,dword ptr [edx+1C]
 0047CE14    imul        eax,dword ptr [ebp-0E8],0D
 0047CE1B    mov         dword ptr [eax+6B28DD],ecx
 0047CE21    imul        edx,dword ptr [ebp-0E8],0D
 0047CE28    mov         ecx,dword ptr [ebp-0DC]
 0047CE2E    mov         dword ptr [edx+6B28E1],ecx
 0047CE34    inc         dword ptr [ebp-0DC]
 0047CE3A    mov         eax,dword ptr [ebp-0DC]
 0047CE40    mov         edx,dword ptr ds:[6941DC];0x0 gvar_006941DC
 0047CE46    cmp         eax,edx
>0047CE48    jge         0047CE5B
 0047CE4A    mov         ecx,dword ptr [ebp-0B0]
 0047CE50    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047CE53    test        al,al
>0047CE55    je          0047CB2E
 0047CE5B    inc         dword ptr [ebp-0E8]
 0047CE61    mov         edx,dword ptr [ebp-0B0]
 0047CE67    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047CE6A    test        cl,cl
>0047CE6C    je          0047CA80
 0047CE72    mov         eax,dword ptr [ebp-0B0]
 0047CE78    call        004768BC
 0047CE7D    mov         word ptr [ebp-9C],98
 0047CE86    mov         edx,6B2B04
 0047CE8B    lea         eax,[ebp-68]
 0047CE8E    call        0067DAB4
 0047CE93    inc         dword ptr [ebp-90]
 0047CE99    lea         ecx,[ebp-68]
 0047CE9C    mov         edx,7
 0047CEA1    mov         eax,dword ptr [ebp-0B0]
 0047CEA7    call        0047673C
 0047CEAC    dec         dword ptr [ebp-90]
 0047CEB2    lea         eax,[ebp-68]
 0047CEB5    mov         edx,2
 0047CEBA    call        0067DCA0
 0047CEBF    xor         ecx,ecx
 0047CEC1    mov         dword ptr [ebp-0E8],ecx
>0047CEC7    jmp         0047D227
 0047CECC    mov         eax,dword ptr [ebp-0B0]
 0047CED2    call        0047688C
 0047CED7    imul        edx,dword ptr [ebp-0E8],0D
 0047CEDE    mov         ecx,dword ptr [edx+6B28D9]
 0047CEE4    test        ecx,ecx
>0047CEE6    je          0047D238
 0047CEEC    imul        eax,dword ptr [ebp-0E8],0D
 0047CEF3    mov         dl,byte ptr [eax+6B28D8]
 0047CEF9    test        dl,dl
>0047CEFB    jne         0047D221
 0047CF01    imul        ecx,dword ptr [ebp-0E8],0D
 0047CF08    fld         dword ptr [ecx+6B28DD]
 0047CF0E    fcomp       dword ptr ds:[47DCA0];50:Single
 0047CF14    fnstsw      al
 0047CF16    sahf
>0047CF17    jb          0047D221
 0047CF1D    imul        edx,dword ptr [ebp-0E8],0D
 0047CF24    mov         edx,dword ptr [edx+6B28D9]
 0047CF2A    mov         eax,6ECAB4
 0047CF2F    call        0046EDD0
 0047CF34    mov         word ptr [ebp-0B4],ax
 0047CF3B    cmp         word ptr [ebp-0B4],0FFFF
>0047CF44    je          0047D221
 0047CF4A    lea         ecx,[ebp-0CC]
 0047CF50    push        ecx
 0047CF51    lea         ecx,[ebp-0C8]
 0047CF57    mov         eax,6ECAB4
 0047CF5C    mov         dx,word ptr [ebp-0B4]
 0047CF63    call        00471484
 0047CF68    test        al,al
>0047CF6A    je          0047D221
 0047CF70    imul        eax,dword ptr [ebp-0E8],0D
 0047CF77    mov         edx,dword ptr [eax+6B28E1]
 0047CF7D    mov         dword ptr [ebp-0DC],edx
 0047CF83    mov         edx,dword ptr [ebp-0DC]
 0047CF89    mov         eax,[006941E0];0x0 gvar_006941E0
 0047CF8E    call        TList.Get
 0047CF93    mov         dword ptr [ebp-100],eax
 0047CF99    mov         ecx,dword ptr [ebp-100]
 0047CF9F    mov         al,byte ptr [ecx]
 0047CFA1    test        al,al
>0047CFA3    jne         0047D221
 0047CFA9    mov         edx,dword ptr [ebp-100]
 0047CFAF    mov         eax,dword ptr [edx+24]
 0047CFB2    mov         edx,dword ptr [eax]
 0047CFB4    call        dword ptr [edx+14]
 0047CFB7    test        eax,eax
>0047CFB9    jne         0047D221
 0047CFBF    mov         ecx,dword ptr [ebp-100]
 0047CFC5    mov         eax,dword ptr [ecx+4]
 0047CFC8    call        005312C8
 0047CFCD    mov         dword ptr [ebp-0F4],eax
 0047CFD3    mov         edx,dword ptr [ebp-100]
 0047CFD9    mov         eax,dword ptr [edx+8]
 0047CFDC    call        005312C8
 0047CFE1    mov         dword ptr [ebp-0F8],eax
 0047CFE7    mov         edx,dword ptr [ebp-0F4]
 0047CFED    mov         dword ptr [ebp-0E0],edx
>0047CFF3    jmp         0047D200
 0047CFF8    mov         edx,dword ptr [ebp-0E0]
 0047CFFE    mov         eax,10
 0047D003    call        00532B74
 0047D008    test        al,al
>0047D00A    je          0047D1FA
 0047D010    mov         ecx,dword ptr [ebp-0E8]
 0047D016    cmp         ecx,5
>0047D019    je          0047D037
 0047D01B    mov         eax,dword ptr [ebp-0E0]
 0047D021    call        00531360
 0047D026    mov         edx,dword ptr [ebp-100]
 0047D02C    mov         ecx,dword ptr [edx+14]
 0047D02F    cmp         eax,ecx
>0047D031    je          0047D1FA
 0047D037    mov         eax,dword ptr [ebp-0E8]
 0047D03D    cmp         eax,5
>0047D040    je          0047D05E
 0047D042    mov         eax,dword ptr [ebp-0E0]
 0047D048    call        00531360
 0047D04D    mov         edx,dword ptr [ebp-100]
 0047D053    mov         ecx,dword ptr [edx+0C]
 0047D056    cmp         eax,ecx
>0047D058    je          0047D1FA
 0047D05E    mov         eax,dword ptr [ebp-0E0]
 0047D064    call        00531360
 0047D069    call        0053A308
 0047D06E    mov         dword ptr [ebp-104],eax
 0047D074    mov         edx,dword ptr [ebp-104]
 0047D07A    test        edx,edx
>0047D07C    je          0047D091
 0047D07E    mov         eax,dword ptr [ebp-104]
 0047D084    call        004858C4
 0047D089    test        al,al
>0047D08B    jne         0047D1FA
 0047D091    mov         eax,dword ptr [ebp-0E0]
 0047D097    call        00531360
 0047D09C    mov         edx,eax
 0047D09E    mov         eax,dword ptr [ebp-0B0]
 0047D0A4    call        00476A00
 0047D0A9    mov         edx,dword ptr [ebp-0C8]
 0047D0AF    mov         dword ptr [ebp-0E4],edx
>0047D0B5    jmp         0047D1D9
 0047D0BA    mov         ecx,dword ptr [ebp-0E4]
 0047D0C0    shl         ecx,4
 0047D0C3    mov         eax,[006ECAD8];0x0 gvar_006ECAD8
 0047D0C8    mov         edx,dword ptr [eax+ecx+8]
 0047D0CC    mov         dword ptr [ebp-0F0],edx
 0047D0D2    mov         eax,6ECAB4
 0047D0D7    mov         edx,dword ptr [ebp-0F0]
 0047D0DD    call        004738B4
 0047D0E2    test        al,al
>0047D0E4    jne         0047D1D3
 0047D0EA    mov         byte ptr [ebp-0B1],0
 0047D0F1    push        dword ptr [ebp-108]
 0047D0F7    mov         eax,6ECAB4
 0047D0FC    mov         ecx,3
 0047D101    mov         edx,dword ptr [ebp-0F0]
 0047D107    call        00471F14
 0047D10C    test        eax,eax
>0047D10E    je          0047D1D3
 0047D114    mov         eax,dword ptr [ebp-108]
 0047D11A    mov         edx,dword ptr [eax+12]
 0047D11D    cmp         edx,8
>0047D120    jb          0047D1D3
 0047D126    mov         ecx,dword ptr [ebp-108]
 0047D12C    mov         eax,dword ptr [ecx+12]
 0047D12F    mov         edx,dword ptr [ebp-0E0]
 0047D135    add         eax,edx
 0047D137    mov         ecx,dword ptr [ebp-0F8]
 0047D13D    cmp         eax,ecx
>0047D13F    jae         0047D1D3
 0047D145    mov         eax,[006941D4];0x0 gvar_006941D4
 0047D14A    mov         edx,dword ptr [ebp-0E0]
 0047D150    add         eax,edx
 0047D152    mov         edx,dword ptr [ebp-108]
 0047D158    call        0053EF88
 0047D15D    test        al,al
>0047D15F    je          0047D17F
 0047D161    mov         eax,dword ptr [ebp-0B0]
 0047D167    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047D16A    mov         ecx,dword ptr [ebp-108]
 0047D170    mov         edx,dword ptr [ebp-0E0]
 0047D176    call        00404898
 0047D17B    test        al,al
>0047D17D    jne         0047D183
 0047D17F    xor         eax,eax
>0047D181    jmp         0047D188
 0047D183    mov         eax,1
 0047D188    mov         byte ptr [ebp-0B1],al
 0047D18E    mov         dl,byte ptr [ebp-0B1]
 0047D194    test        dl,dl
>0047D196    je          0047D1D3
 0047D198    push        dword ptr [ebp-108]
 0047D19E    push        1
 0047D1A0    mov         ecx,dword ptr [ebp-108]
 0047D1A6    push        dword ptr [ecx+12]
 0047D1A9    mov         eax,dword ptr [ebp-0B0]
 0047D1AF    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047D1B2    mov         ecx,dword ptr [ebp-0F0]
 0047D1B8    mov         edx,dword ptr [ebp-0E0]
 0047D1BE    call        004052B4
 0047D1C3    imul        eax,dword ptr [ebp-0E8],0D
 0047D1CA    mov         byte ptr [eax+6B28D8],1
>0047D1D1    jmp         0047D1FA
 0047D1D3    inc         dword ptr [ebp-0E4]
 0047D1D9    mov         edx,dword ptr [ebp-0E4]
 0047D1DF    mov         ecx,dword ptr [ebp-0CC]
 0047D1E5    cmp         edx,ecx
>0047D1E7    jg          0047D1FA
 0047D1E9    mov         eax,dword ptr [ebp-0B0]
 0047D1EF    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047D1F2    test        dl,dl
>0047D1F4    je          0047D0BA
 0047D1FA    inc         dword ptr [ebp-0E0]
 0047D200    mov         ecx,dword ptr [ebp-0E0]
 0047D206    mov         eax,dword ptr [ebp-0F8]
 0047D20C    cmp         ecx,eax
>0047D20E    jge         0047D221
 0047D210    mov         edx,dword ptr [ebp-0B0]
 0047D216    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047D219    test        cl,cl
>0047D21B    je          0047CFF8
 0047D221    inc         dword ptr [ebp-0E8]
 0047D227    mov         eax,dword ptr [ebp-0B0]
 0047D22D    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047D230    test        dl,dl
>0047D232    je          0047CECC
 0047D238    mov         eax,dword ptr [ebp-0B0]
 0047D23E    call        004768BC
 0047D243    xor         edx,edx
 0047D245    mov         dword ptr [ebp-0DC],edx
>0047D24B    jmp         0047D6F2
 0047D250    mov         edx,dword ptr [ebp-0DC]
 0047D256    mov         eax,[006941E0];0x0 gvar_006941E0
 0047D25B    call        TList.Get
 0047D260    mov         dword ptr [ebp-100],eax
 0047D266    mov         ecx,dword ptr [ebp-100]
 0047D26C    mov         al,byte ptr [ecx]
 0047D26E    test        al,al
>0047D270    jne         0047D6EC
 0047D276    mov         edx,dword ptr [ebp-100]
 0047D27C    mov         eax,dword ptr [edx+4]
 0047D27F    call        005312C8
 0047D284    mov         dword ptr [ebp-0F4],eax
 0047D28A    mov         edx,dword ptr [ebp-100]
 0047D290    mov         eax,dword ptr [edx+8]
 0047D293    call        005312C8
 0047D298    mov         dword ptr [ebp-0F8],eax
 0047D29E    mov         edx,dword ptr [ebp-0F8]
 0047D2A4    inc         edx
>0047D2A5    jne         0047D2B3
 0047D2A7    mov         ecx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 0047D2AD    mov         dword ptr [ebp-0F8],ecx
 0047D2B3    xor         eax,eax
 0047D2B5    mov         dword ptr [ebp-0EC],eax
>0047D2BB    jmp         0047D6C3
 0047D2C0    mov         word ptr [ebp-9C],0A4
 0047D2C9    lea         eax,[ebp-6C]
 0047D2CC    call        00401EA8
 0047D2D1    mov         ecx,eax
 0047D2D3    inc         dword ptr [ebp-90]
 0047D2D9    mov         edx,dword ptr [ebp-100]
 0047D2DF    mov         eax,dword ptr [edx+24]
 0047D2E2    mov         edx,dword ptr [ebp-0EC]
 0047D2E8    mov         ebx,dword ptr [eax]
 0047D2EA    call        dword ptr [ebx+0C]
 0047D2ED    lea         edx,[ebp-6C]
 0047D2F0    lea         eax,[ebp-48]
 0047D2F3    call        0067DCD0
 0047D2F8    dec         dword ptr [ebp-90]
 0047D2FE    lea         eax,[ebp-6C]
 0047D301    mov         edx,2
 0047D306    call        0067DCA0
 0047D30B    lea         eax,[ebp-48]
 0047D30E    call        00403C0C
 0047D313    mov         edx,eax
 0047D315    mov         eax,6ECAB4
 0047D31A    call        0046EDD0
 0047D31F    mov         word ptr [ebp-0B4],ax
 0047D326    cmp         word ptr [ebp-0B4],0FFFF
>0047D32F    je          0047D6BD
 0047D335    lea         edx,[ebp-0CC]
 0047D33B    push        edx
 0047D33C    lea         ecx,[ebp-0D4]
 0047D342    push        ecx
 0047D343    lea         ecx,[ebp-0C8]
 0047D349    mov         eax,6ECAB4
 0047D34E    mov         dx,word ptr [ebp-0B4]
 0047D355    call        00471688
 0047D35A    test        al,al
>0047D35C    je          0047D6BD
 0047D362    mov         word ptr [ebp-9C],0B0
 0047D36B    lea         eax,[ebp-70]
 0047D36E    call        00401EA8
 0047D373    mov         ecx,eax
 0047D375    inc         dword ptr [ebp-90]
 0047D37B    lea         edx,[ebp-48]
 0047D37E    mov         eax,6B2B1F
 0047D383    call        0067E37C
 0047D388    lea         edx,[ebp-70]
 0047D38B    push        edx
 0047D38C    lea         eax,[ebp-78]
 0047D38F    call        00401EA8
 0047D394    push        eax
 0047D395    inc         dword ptr [ebp-90]
 0047D39B    mov         edx,6B2B2A
 0047D3A0    lea         eax,[ebp-74]
 0047D3A3    call        0067DAB4
 0047D3A8    inc         dword ptr [ebp-90]
 0047D3AE    lea         edx,[ebp-74]
 0047D3B1    pop         ecx
 0047D3B2    pop         eax
 0047D3B3    call        0067DCF8
 0047D3B8    lea         ecx,[ebp-78]
 0047D3BB    mov         edx,dword ptr [ebp-0F8]
 0047D3C1    mov         eax,dword ptr [ebp-0F4]
 0047D3C7    sub         edx,eax
 0047D3C9    inc         edx
 0047D3CA    mov         eax,dword ptr [ebp-0B0]
 0047D3D0    call        0047673C
 0047D3D5    mov         dword ptr [ebp-0FC],eax
 0047D3DB    dec         dword ptr [ebp-90]
 0047D3E1    lea         eax,[ebp-78]
 0047D3E4    mov         edx,2
 0047D3E9    call        0067DCA0
 0047D3EE    dec         dword ptr [ebp-90]
 0047D3F4    lea         eax,[ebp-74]
 0047D3F7    mov         edx,2
 0047D3FC    call        0067DCA0
 0047D401    dec         dword ptr [ebp-90]
 0047D407    lea         eax,[ebp-70]
 0047D40A    mov         edx,2
 0047D40F    call        0067DCA0
 0047D414    mov         ecx,dword ptr [ebp-100]
 0047D41A    mov         byte ptr [ecx+3],1
 0047D41E    mov         eax,dword ptr [ebp-0F4]
 0047D424    mov         dword ptr [ebp-0E0],eax
 0047D42A    xor         edx,edx
 0047D42C    mov         dword ptr [ebp-0D8],edx
>0047D432    jmp         0047D691
 0047D437    mov         ecx,dword ptr [ebp-0D8]
 0047D43D    mov         eax,dword ptr [ebp-0FC]
 0047D443    and         ecx,eax
>0047D445    jne         0047D452
 0047D447    mov         eax,dword ptr [ebp-0B0]
 0047D44D    call        0047688C
 0047D452    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047D458    mov         ecx,dword ptr [ebp-0E0]
 0047D45E    mov         al,byte ptr [edx+ecx]
 0047D461    test        al,al
>0047D463    je          0047D685
 0047D469    mov         edx,dword ptr [ebp-0E0]
 0047D46F    mov         eax,10
 0047D474    call        00532B74
 0047D479    test        al,al
>0047D47B    jne         0047D494
 0047D47D    mov         edx,dword ptr ds:[6941C8];0x0 gvar_006941C8
 0047D483    mov         ecx,dword ptr [ebp-0E0]
 0047D489    mov         eax,dword ptr [edx+ecx*4]
 0047D48C    test        eax,eax
>0047D48E    jne         0047D685
 0047D494    mov         eax,dword ptr [ebp-0E0]
 0047D49A    call        00531360
 0047D49F    mov         edx,dword ptr [ebp-100]
 0047D4A5    mov         ecx,dword ptr [edx+14]
 0047D4A8    cmp         eax,ecx
>0047D4AA    jne         0047D4BD
 0047D4AC    mov         eax,dword ptr [ebp-100]
 0047D4B2    mov         dl,byte ptr [eax+1]
 0047D4B5    test        dl,dl
>0047D4B7    jne         0047D685
 0047D4BD    mov         eax,dword ptr [ebp-0E0]
 0047D4C3    call        00531360
 0047D4C8    mov         edx,dword ptr [ebp-100]
 0047D4CE    mov         ecx,dword ptr [edx+0C]
 0047D4D1    cmp         eax,ecx
>0047D4D3    jne         0047D4E6
 0047D4D5    mov         eax,dword ptr [ebp-100]
 0047D4DB    mov         dl,byte ptr [eax+2]
 0047D4DE    test        dl,dl
>0047D4E0    jne         0047D685
 0047D4E6    mov         eax,dword ptr [ebp-0E0]
 0047D4EC    call        00531360
 0047D4F1    call        0053A308
 0047D4F6    mov         dword ptr [ebp-104],eax
 0047D4FC    mov         edx,dword ptr [ebp-104]
 0047D502    test        edx,edx
>0047D504    je          0047D519
 0047D506    mov         eax,dword ptr [ebp-104]
 0047D50C    call        004858C4
 0047D511    test        al,al
>0047D513    jne         0047D685
 0047D519    mov         eax,dword ptr [ebp-0E0]
 0047D51F    call        00531360
 0047D524    mov         edx,eax
 0047D526    mov         eax,dword ptr [ebp-0B0]
 0047D52C    call        00476A00
 0047D531    mov         edx,dword ptr [ebp-0C8]
 0047D537    mov         dword ptr [ebp-0E4],edx
>0047D53D    jmp         0047D664
 0047D542    mov         ecx,dword ptr [ebp-0E4]
 0047D548    shl         ecx,4
 0047D54B    mov         eax,[006ECAD8];0x0 gvar_006ECAD8
 0047D550    mov         edx,dword ptr [eax+ecx+8]
 0047D554    mov         dword ptr [ebp-0F0],edx
 0047D55A    mov         eax,6ECAB4
 0047D55F    mov         edx,dword ptr [ebp-0F0]
 0047D565    call        004738B4
 0047D56A    test        al,al
>0047D56C    jne         0047D65E
 0047D572    push        dword ptr [ebp-108]
 0047D578    mov         eax,6ECAB4
 0047D57D    mov         ecx,3
 0047D582    mov         edx,dword ptr [ebp-0F0]
 0047D588    call        00471F14
 0047D58D    test        eax,eax
>0047D58F    je          0047D65E
 0047D595    mov         eax,dword ptr [ebp-108]
 0047D59B    mov         edx,dword ptr [eax+12]
 0047D59E    cmp         edx,8
>0047D5A1    jb          0047D65E
 0047D5A7    mov         ecx,dword ptr [ebp-108]
 0047D5AD    mov         eax,dword ptr [ecx+12]
 0047D5B0    mov         edx,dword ptr [ebp-0E0]
 0047D5B6    add         eax,edx
 0047D5B8    mov         ecx,dword ptr [ebp-0F8]
 0047D5BE    cmp         eax,ecx
>0047D5C0    jae         0047D65E
 0047D5C6    mov         eax,[006941D4];0x0 gvar_006941D4
 0047D5CB    mov         edx,dword ptr [ebp-0E0]
 0047D5D1    add         eax,edx
 0047D5D3    mov         edx,dword ptr [ebp-108]
 0047D5D9    call        0053EF88
 0047D5DE    test        al,al
>0047D5E0    je          0047D600
 0047D5E2    mov         eax,dword ptr [ebp-0B0]
 0047D5E8    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047D5EB    mov         ecx,dword ptr [ebp-108]
 0047D5F1    mov         edx,dword ptr [ebp-0E0]
 0047D5F7    call        00404898
 0047D5FC    test        al,al
>0047D5FE    jne         0047D604
 0047D600    xor         eax,eax
>0047D602    jmp         0047D609
 0047D604    mov         eax,1
 0047D609    mov         byte ptr [ebp-0B1],al
 0047D60F    mov         dl,byte ptr [ebp-0B1]
 0047D615    test        dl,dl
>0047D617    je          0047D65E
 0047D619    push        dword ptr [ebp-108]
 0047D61F    push        1
 0047D621    mov         ecx,dword ptr [ebp-108]
 0047D627    push        dword ptr [ecx+12]
 0047D62A    mov         eax,dword ptr [ebp-0B0]
 0047D630    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047D633    mov         ecx,dword ptr [ebp-0F0]
 0047D639    mov         edx,dword ptr [ebp-0E0]
 0047D63F    call        004052B4
 0047D644    mov         eax,dword ptr [ebp-108]
 0047D64A    mov         edx,dword ptr [eax+12]
 0047D64D    dec         edx
 0047D64E    mov         ecx,dword ptr [ebp-0E0]
 0047D654    add         edx,ecx
 0047D656    mov         dword ptr [ebp-0E0],edx
>0047D65C    jmp         0047D685
 0047D65E    inc         dword ptr [ebp-0E4]
 0047D664    mov         eax,dword ptr [ebp-0E4]
 0047D66A    mov         edx,dword ptr [ebp-0CC]
 0047D670    cmp         eax,edx
>0047D672    jg          0047D685
 0047D674    mov         ecx,dword ptr [ebp-0B0]
 0047D67A    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047D67D    test        al,al
>0047D67F    je          0047D542
 0047D685    inc         dword ptr [ebp-0E0]
 0047D68B    inc         dword ptr [ebp-0D8]
 0047D691    mov         edx,dword ptr [ebp-0E0]
 0047D697    mov         ecx,dword ptr [ebp-0F8]
 0047D69D    cmp         edx,ecx
>0047D69F    jge         0047D6B2
 0047D6A1    mov         eax,dword ptr [ebp-0B0]
 0047D6A7    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047D6AA    test        dl,dl
>0047D6AC    je          0047D437
 0047D6B2    mov         eax,dword ptr [ebp-0B0]
 0047D6B8    call        004768BC
 0047D6BD    inc         dword ptr [ebp-0EC]
 0047D6C3    mov         edx,dword ptr [ebp-100]
 0047D6C9    mov         eax,dword ptr [edx+24]
 0047D6CC    mov         edx,dword ptr [eax]
 0047D6CE    call        dword ptr [edx+14]
 0047D6D1    mov         ecx,dword ptr [ebp-0EC]
 0047D6D7    cmp         eax,ecx
>0047D6D9    jle         0047D6EC
 0047D6DB    mov         eax,dword ptr [ebp-0B0]
 0047D6E1    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047D6E4    test        dl,dl
>0047D6E6    je          0047D2C0
 0047D6EC    inc         dword ptr [ebp-0DC]
 0047D6F2    mov         ecx,dword ptr [ebp-0DC]
 0047D6F8    mov         eax,[006941DC];0x0 gvar_006941DC
 0047D6FD    cmp         ecx,eax
>0047D6FF    jge         0047D712
 0047D701    mov         edx,dword ptr [ebp-0B0]
 0047D707    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047D70A    test        cl,cl
>0047D70C    je          0047D250
 0047D712    mov         word ptr [ebp-9C],0BC
 0047D71B    mov         edx,6B2B32
 0047D720    lea         eax,[ebp-7C]
 0047D723    call        0067DAB4
 0047D728    inc         dword ptr [ebp-90]
 0047D72E    lea         ecx,[ebp-7C]
 0047D731    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 0047D737    mov         eax,dword ptr [ebp-0B0]
 0047D73D    call        0047673C
 0047D742    mov         dword ptr [ebp-0FC],eax
 0047D748    dec         dword ptr [ebp-90]
 0047D74E    lea         eax,[ebp-7C]
 0047D751    mov         edx,2
 0047D756    call        0067DCA0
 0047D75B    xor         ecx,ecx
 0047D75D    mov         dword ptr [ebp-0DC],ecx
>0047D763    jmp         0047DC0F
 0047D768    mov         eax,dword ptr [ebp-0DC]
 0047D76E    mov         edx,dword ptr [ebp-0FC]
 0047D774    and         eax,edx
>0047D776    jne         0047D783
 0047D778    mov         eax,dword ptr [ebp-0B0]
 0047D77E    call        0047688C
 0047D783    mov         eax,dword ptr [ebp-0DC]
 0047D789    call        00531360
 0047D78E    call        0053A308
 0047D793    mov         dword ptr [ebp-110],eax
 0047D799    mov         word ptr [ebp-9C],14
 0047D7A2    mov         edx,dword ptr [ebp-110]
 0047D7A8    test        edx,edx
>0047D7AA    je          0047DC09
 0047D7B0    mov         ecx,dword ptr [ebp-110]
 0047D7B6    mov         al,byte ptr [ecx+5]
 0047D7B9    cmp         al,23
>0047D7BB    jne         0047DC09
 0047D7C1    mov         word ptr [ebp-9C],0D4
 0047D7CA    lea         eax,[ebp-84]
 0047D7D0    call        00401EA8
 0047D7D5    mov         edx,eax
 0047D7D7    inc         dword ptr [ebp-90]
 0047D7DD    mov         eax,dword ptr [ebp-110]
 0047D7E3    call        0048591C
 0047D7E8    lea         edx,[ebp-84]
 0047D7EE    push        edx
 0047D7EF    lea         eax,[ebp-80]
 0047D7F2    call        00401EA8
 0047D7F7    mov         ecx,eax
 0047D7F9    inc         dword ptr [ebp-90]
 0047D7FF    mov         eax,6B2B45
 0047D804    pop         edx
 0047D805    call        0067E37C
 0047D80A    dec         dword ptr [ebp-90]
 0047D810    lea         eax,[ebp-84]
 0047D816    mov         edx,2
 0047D81B    call        0067DCA0
 0047D820    mov         word ptr [ebp-9C],0C8
 0047D829    lea         eax,[ebp-80]
 0047D82C    call        00403C0C
 0047D831    mov         edx,eax
 0047D833    lea         ecx,[ebp-0F0]
 0047D839    mov         eax,6ECAB4
 0047D83E    call        0046FFD8
 0047D843    mov         dword ptr [ebp-0D0],eax
 0047D849    mov         edx,dword ptr [ebp-0D0]
 0047D84F    dec         edx
>0047D850    jne         0047DBED
 0047D856    mov         eax,dword ptr [ebp-0DC]
 0047D85C    call        00531360
 0047D861    mov         dword ptr [ebp-0B8],eax
 0047D867    mov         edx,dword ptr [ebp-0B0]
 0047D86D    mov         eax,dword ptr [edx+30];TAnalyzeThread.?f30:dword
 0047D870    mov         edx,dword ptr [ebp-0B8]
 0047D876    call        0040AAE4
 0047D87B    mov         dword ptr [ebp-100],eax
 0047D881    mov         ecx,dword ptr [ebp-100]
 0047D887    test        ecx,ecx
>0047D889    je          0047D897
 0047D88B    mov         eax,dword ptr [ebp-100]
 0047D891    mov         dl,byte ptr [eax]
 0047D893    test        dl,dl
>0047D895    je          0047D8AF
 0047D897    dec         dword ptr [ebp-90]
 0047D89D    lea         eax,[ebp-80]
 0047D8A0    mov         edx,2
 0047D8A5    call        0067DCA0
>0047D8AA    jmp         0047DC09
 0047D8AF    mov         ecx,dword ptr [ebp-100]
 0047D8B5    mov         eax,dword ptr [ecx+24]
 0047D8B8    mov         edx,dword ptr [eax]
 0047D8BA    call        dword ptr [edx+14]
 0047D8BD    test        eax,eax
>0047D8BF    jne         0047DBED
 0047D8C5    mov         ecx,dword ptr [ebp-0F0]
 0047D8CB    shl         ecx,4
 0047D8CE    mov         eax,[006ECAC8];0x0 gvar_006ECAC8
 0047D8D3    mov         edx,dword ptr [eax+ecx+0C]
 0047D8D7    mov         dword ptr [ebp-0F0],edx
 0047D8DD    push        dword ptr [ebp-10C]
 0047D8E3    mov         eax,6ECAB4
 0047D8E8    mov         ecx,1
 0047D8ED    mov         edx,dword ptr [ebp-0F0]
 0047D8F3    call        0047191C
 0047D8F8    test        eax,eax
>0047D8FA    je          0047DBED
 0047D900    mov         eax,dword ptr [ebp-10C]
 0047D906    mov         dx,word ptr [eax]
 0047D909    mov         word ptr [ebp-0B4],dx
 0047D910    lea         ecx,[ebp-0CC]
 0047D916    push        ecx
 0047D917    lea         ecx,[ebp-0C8]
 0047D91D    mov         eax,6ECAB4
 0047D922    mov         dx,word ptr [ebp-0B4]
 0047D929    call        00471484
 0047D92E    test        al,al
>0047D930    jne         0047D94A
 0047D932    dec         dword ptr [ebp-90]
 0047D938    lea         eax,[ebp-80]
 0047D93B    mov         edx,2
 0047D940    call        0067DCA0
>0047D945    jmp         0047DC09
 0047D94A    mov         ecx,dword ptr [ebp-100]
 0047D950    mov         eax,dword ptr [ecx+4]
 0047D953    call        005312C8
 0047D958    mov         dword ptr [ebp-0F4],eax
 0047D95E    mov         edx,dword ptr [ebp-100]
 0047D964    mov         eax,dword ptr [edx+8]
 0047D967    call        005312C8
 0047D96C    mov         dword ptr [ebp-0F8],eax
 0047D972    mov         edx,dword ptr [ebp-0F4]
 0047D978    mov         dword ptr [ebp-0E0],edx
>0047D97E    jmp         0047DBCC
 0047D983    mov         edx,dword ptr [ebp-0E0]
 0047D989    mov         eax,10
 0047D98E    call        00532B74
 0047D993    test        al,al
>0047D995    je          0047DBC6
 0047D99B    mov         eax,dword ptr [ebp-0E0]
 0047D9A1    call        00531360
 0047D9A6    mov         edx,dword ptr [ebp-100]
 0047D9AC    mov         ecx,dword ptr [edx+14]
 0047D9AF    cmp         eax,ecx
>0047D9B1    jne         0047D9C4
 0047D9B3    mov         eax,dword ptr [ebp-100]
 0047D9B9    mov         dl,byte ptr [eax+1]
 0047D9BC    test        dl,dl
>0047D9BE    jne         0047DBC6
 0047D9C4    mov         eax,dword ptr [ebp-0E0]
 0047D9CA    call        00531360
 0047D9CF    mov         edx,dword ptr [ebp-100]
 0047D9D5    mov         ecx,dword ptr [edx+0C]
 0047D9D8    cmp         eax,ecx
>0047D9DA    jne         0047D9ED
 0047D9DC    mov         eax,dword ptr [ebp-100]
 0047D9E2    mov         dl,byte ptr [eax+2]
 0047D9E5    test        dl,dl
>0047D9E7    jne         0047DBC6
 0047D9ED    mov         eax,dword ptr [ebp-0E0]
 0047D9F3    call        00531360
 0047D9F8    call        0053A308
 0047D9FD    mov         dword ptr [ebp-110],eax
 0047DA03    mov         edx,dword ptr [ebp-110]
 0047DA09    test        edx,edx
>0047DA0B    je          0047DA20
 0047DA0D    mov         eax,dword ptr [ebp-110]
 0047DA13    call        004858C4
 0047DA18    test        al,al
>0047DA1A    jne         0047DBC6
 0047DA20    mov         eax,dword ptr [ebp-0E0]
 0047DA26    call        00531360
 0047DA2B    mov         edx,eax
 0047DA2D    mov         eax,dword ptr [ebp-0B0]
 0047DA33    call        00476A00
 0047DA38    mov         edx,dword ptr [ebp-0C8]
 0047DA3E    mov         dword ptr [ebp-0E4],edx
>0047DA44    jmp         0047DBA5
 0047DA49    mov         ecx,dword ptr [ebp-0E4]
 0047DA4F    shl         ecx,4
 0047DA52    mov         eax,[006ECAD8];0x0 gvar_006ECAD8
 0047DA57    mov         edx,dword ptr [eax+ecx+8]
 0047DA5B    mov         dword ptr [ebp-0F0],edx
 0047DA61    mov         eax,6ECAB4
 0047DA66    mov         edx,dword ptr [ebp-0F0]
 0047DA6C    call        004738B4
 0047DA71    test        al,al
>0047DA73    jne         0047DB9F
 0047DA79    mov         byte ptr [ebp-0B1],0
 0047DA80    push        dword ptr [ebp-108]
 0047DA86    mov         eax,6ECAB4
 0047DA8B    mov         ecx,3
 0047DA90    mov         edx,dword ptr [ebp-0F0]
 0047DA96    call        00471F14
 0047DA9B    test        eax,eax
>0047DA9D    je          0047DB9F
 0047DAA3    mov         eax,[006941D4];0x0 gvar_006941D4
 0047DAA8    mov         edx,dword ptr [ebp-0E0]
 0047DAAE    add         eax,edx
 0047DAB0    mov         edx,dword ptr [ebp-108]
 0047DAB6    call        0053EF88
 0047DABB    test        al,al
>0047DABD    je          0047DADD
 0047DABF    mov         eax,dword ptr [ebp-0B0]
 0047DAC5    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047DAC8    mov         ecx,dword ptr [ebp-108]
 0047DACE    mov         edx,dword ptr [ebp-0E0]
 0047DAD4    call        00404898
 0047DAD9    test        al,al
>0047DADB    jne         0047DAE1
 0047DADD    xor         eax,eax
>0047DADF    jmp         0047DAE6
 0047DAE1    mov         eax,1
 0047DAE6    mov         byte ptr [ebp-0B1],al
 0047DAEC    mov         dl,byte ptr [ebp-0B1]
 0047DAF2    test        dl,dl
>0047DAF4    je          0047DB9F
 0047DAFA    mov         word ptr [ebp-9C],0EC
 0047DB03    lea         eax,[ebp-88]
 0047DB09    call        00401EA8
 0047DB0E    mov         ecx,eax
 0047DB10    inc         dword ptr [ebp-90]
 0047DB16    mov         eax,6ECAB4
 0047DB1B    mov         dx,word ptr [ebp-0B4]
 0047DB22    call        0046EF0C
 0047DB27    mov         word ptr [ebp-9C],0E0
 0047DB30    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 0047DB36    mov         eax,dword ptr [ecx]
 0047DB38    mov         ecx,dword ptr [ebp-88]
 0047DB3E    mov         edx,dword ptr [ebp-100]
 0047DB44    call        0040ADFC
 0047DB49    mov         eax,dword ptr [ebp-100]
 0047DB4F    mov         byte ptr [eax+3],1
 0047DB53    push        dword ptr [ebp-108]
 0047DB59    push        1
 0047DB5B    mov         edx,dword ptr [ebp-108]
 0047DB61    push        dword ptr [edx+12]
 0047DB64    mov         ecx,dword ptr [ebp-0B0]
 0047DB6A    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 0047DB6D    mov         ecx,dword ptr [ebp-0F0]
 0047DB73    mov         edx,dword ptr [ebp-0E0]
 0047DB79    call        004052B4
 0047DB7E    dec         dword ptr [ebp-90]
 0047DB84    lea         eax,[ebp-88]
 0047DB8A    mov         edx,2
 0047DB8F    call        0067DCA0
>0047DB94    jmp         0047DBC6
 0047DB96    mov         word ptr [ebp-9C],0C8
 0047DB9F    inc         dword ptr [ebp-0E4]
 0047DBA5    mov         ecx,dword ptr [ebp-0E4]
 0047DBAB    mov         eax,dword ptr [ebp-0CC]
 0047DBB1    cmp         ecx,eax
>0047DBB3    jg          0047DBC6
 0047DBB5    mov         edx,dword ptr [ebp-0B0]
 0047DBBB    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047DBBE    test        cl,cl
>0047DBC0    je          0047DA49
 0047DBC6    inc         dword ptr [ebp-0E0]
 0047DBCC    mov         eax,dword ptr [ebp-0E0]
 0047DBD2    mov         edx,dword ptr [ebp-0F8]
 0047DBD8    cmp         eax,edx
>0047DBDA    jge         0047DBED
 0047DBDC    mov         ecx,dword ptr [ebp-0B0]
 0047DBE2    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047DBE5    test        al,al
>0047DBE7    je          0047D983
 0047DBED    dec         dword ptr [ebp-90]
 0047DBF3    lea         eax,[ebp-80]
 0047DBF6    mov         edx,2
 0047DBFB    call        0067DCA0
 0047DC00    mov         word ptr [ebp-9C],14
 0047DC09    inc         dword ptr [ebp-0DC]
 0047DC0F    mov         ecx,dword ptr [ebp-0DC]
 0047DC15    mov         eax,[006ECB4C];0x0 gvar_006ECB4C
 0047DC1A    cmp         ecx,eax
>0047DC1C    jae         0047DC2F
 0047DC1E    mov         edx,dword ptr [ebp-0B0]
 0047DC24    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047DC27    test        cl,cl
>0047DC29    je          0047D768
 0047DC2F    mov         eax,dword ptr [ebp-0B0]
 0047DC35    call        004768BC
 0047DC3A    dec         dword ptr [ebp-90]
 0047DC40    lea         eax,[ebp-48]
 0047DC43    mov         edx,2
 0047DC48    call        0067DCA0
 0047DC4D    dec         dword ptr [ebp-90]
 0047DC53    lea         eax,[ebp-44]
 0047DC56    mov         edx,2
 0047DC5B    call        0067DCA0
 0047DC60    sub         dword ptr [ebp-90],4
 0047DC67    lea         eax,[ebp-40]
 0047DC6A    mov         edx,2
 0047DC6F    call        0046DF70
 0047DC74    sub         dword ptr [ebp-90],3
 0047DC7B    lea         eax,[ebp-24]
 0047DC7E    mov         edx,2
 0047DC83    call        0046E58C
 0047DC88    mov         ecx,dword ptr [ebp-0AC]
 0047DC8E    mov         dword ptr fs:[0],ecx
 0047DC95    pop         ebx
 0047DC96    mov         esp,ebp
 0047DC98    pop         ebp
 0047DC99    ret
*}
end;

//0047DCA4
procedure sub_0047DCA4(?:TAnalyzeThread);
begin
{*
 0047DCA4    push        ebp
 0047DCA5    mov         ebp,esp
 0047DCA7    add         esp,0FFFFFF50
 0047DCAD    push        ebx
 0047DCAE    mov         dword ptr [ebp-60],eax
 0047DCB1    mov         eax,6B3EB4
 0047DCB6    call        0066FECC
 0047DCBB    mov         word ptr [ebp-4C],8
 0047DCC1    lea         eax,[ebp-24]
 0047DCC4    call        0046E470
 0047DCC9    add         dword ptr [ebp-40],3
 0047DCCD    mov         word ptr [ebp-4C],14
 0047DCD3    lea         edx,[ebp-24]
 0047DCD6    mov         dword ptr [ebp-0A4],edx
 0047DCDC    mov         word ptr [ebp-4C],20
 0047DCE2    lea         eax,[ebp-28]
 0047DCE5    call        00401EA8
 0047DCEA    inc         dword ptr [ebp-40]
 0047DCED    mov         word ptr [ebp-4C],14
 0047DCF3    mov         word ptr [ebp-4C],2C
 0047DCF9    mov         edx,6B2B4A
 0047DCFE    lea         eax,[ebp-2C]
 0047DD01    call        0067DAB4
 0047DD06    inc         dword ptr [ebp-40]
 0047DD09    lea         ecx,[ebp-2C]
 0047DD0C    mov         edx,dword ptr ds:[6941DC];0x0 gvar_006941DC
 0047DD12    mov         eax,dword ptr [ebp-60]
 0047DD15    call        0047673C
 0047DD1A    dec         dword ptr [ebp-40]
 0047DD1D    lea         eax,[ebp-2C]
 0047DD20    mov         edx,2
 0047DD25    call        0067DCA0
 0047DD2A    xor         ecx,ecx
 0047DD2C    mov         dword ptr [ebp-7C],ecx
>0047DD2F    jmp         0047E021
 0047DD34    mov         eax,dword ptr [ebp-60]
 0047DD37    call        0047688C
 0047DD3C    mov         edx,dword ptr [ebp-7C]
 0047DD3F    mov         eax,[006941E0];0x0 gvar_006941E0
 0047DD44    call        TList.Get
 0047DD49    mov         dword ptr [ebp-9C],eax
 0047DD4F    mov         edx,dword ptr [ebp-9C]
 0047DD55    mov         cl,byte ptr [edx]
 0047DD57    test        cl,cl
>0047DD59    jne         0047E01E
 0047DD5F    mov         eax,dword ptr [ebp-9C]
 0047DD65    mov         eax,dword ptr [eax+4]
 0047DD68    call        005312C8
 0047DD6D    mov         dword ptr [ebp-94],eax
 0047DD73    mov         edx,dword ptr [ebp-9C]
 0047DD79    mov         eax,dword ptr [edx+8]
 0047DD7C    call        005312C8
 0047DD81    mov         dword ptr [ebp-98],eax
 0047DD87    xor         edx,edx
 0047DD89    mov         dword ptr [ebp-8C],edx
>0047DD8F    jmp         0047DFF8
 0047DD94    mov         word ptr [ebp-4C],38
 0047DD9A    lea         eax,[ebp-30]
 0047DD9D    call        00401EA8
 0047DDA2    mov         ecx,eax
 0047DDA4    inc         dword ptr [ebp-40]
 0047DDA7    mov         edx,dword ptr [ebp-9C]
 0047DDAD    mov         eax,dword ptr [edx+24]
 0047DDB0    mov         edx,dword ptr [ebp-8C]
 0047DDB6    mov         ebx,dword ptr [eax]
 0047DDB8    call        dword ptr [ebx+0C]
 0047DDBB    lea         eax,[ebp-30]
 0047DDBE    call        00403C0C
 0047DDC3    mov         edx,eax
 0047DDC5    mov         eax,6ECAB4
 0047DDCA    call        0046EDD0
 0047DDCF    mov         word ptr [ebp-64],ax
 0047DDD3    dec         dword ptr [ebp-40]
 0047DDD6    lea         eax,[ebp-30]
 0047DDD9    mov         edx,2
 0047DDDE    call        0067DCA0
 0047DDE3    cmp         word ptr [ebp-64],0FFFF
>0047DDE9    je          0047DFF2
 0047DDEF    lea         ecx,[ebp-74]
 0047DDF2    push        ecx
 0047DDF3    lea         ecx,[ebp-70]
 0047DDF6    mov         eax,6ECAB4
 0047DDFB    mov         dx,word ptr [ebp-64]
 0047DDFF    call        00471484
 0047DE04    test        al,al
>0047DE06    je          0047DFF2
 0047DE0C    mov         eax,dword ptr [ebp-94]
 0047DE12    mov         dword ptr [ebp-80],eax
>0047DE15    jmp         0047DFD7
 0047DE1A    mov         edx,dword ptr [ebp-80]
 0047DE1D    mov         eax,10
 0047DE22    call        00532B74
 0047DE27    test        al,al
>0047DE29    je          0047DFD4
 0047DE2F    mov         eax,dword ptr [ebp-80]
 0047DE32    call        00531360
 0047DE37    mov         edx,dword ptr [ebp-9C]
 0047DE3D    mov         ecx,dword ptr [edx+14]
 0047DE40    cmp         eax,ecx
>0047DE42    jne         0047DE55
 0047DE44    mov         eax,dword ptr [ebp-9C]
 0047DE4A    mov         dl,byte ptr [eax+1]
 0047DE4D    test        dl,dl
>0047DE4F    jne         0047DFD4
 0047DE55    mov         eax,dword ptr [ebp-80]
 0047DE58    call        00531360
 0047DE5D    mov         edx,dword ptr [ebp-9C]
 0047DE63    mov         ecx,dword ptr [edx+0C]
 0047DE66    cmp         eax,ecx
>0047DE68    jne         0047DE7B
 0047DE6A    mov         eax,dword ptr [ebp-9C]
 0047DE70    mov         dl,byte ptr [eax+2]
 0047DE73    test        dl,dl
>0047DE75    jne         0047DFD4
 0047DE7B    mov         eax,dword ptr [ebp-80]
 0047DE7E    call        00531360
 0047DE83    call        0053A308
 0047DE88    mov         dword ptr [ebp-0A0],eax
 0047DE8E    mov         edx,dword ptr [ebp-0A0]
 0047DE94    test        edx,edx
>0047DE96    je          0047DEAB
 0047DE98    mov         eax,dword ptr [ebp-0A0]
 0047DE9E    call        004858C4
 0047DEA3    test        al,al
>0047DEA5    jne         0047DFD4
 0047DEAB    mov         eax,dword ptr [ebp-80]
 0047DEAE    call        00531360
 0047DEB3    mov         edx,eax
 0047DEB5    mov         eax,dword ptr [ebp-60]
 0047DEB8    call        00476A00
 0047DEBD    mov         edx,dword ptr [ebp-70]
 0047DEC0    mov         dword ptr [ebp-84],edx
>0047DEC6    jmp         0047DFB9
 0047DECB    mov         ecx,dword ptr [ebp-84]
 0047DED1    shl         ecx,4
 0047DED4    mov         eax,[006ECAD8];0x0 gvar_006ECAD8
 0047DED9    mov         edx,dword ptr [eax+ecx+8]
 0047DEDD    mov         dword ptr [ebp-90],edx
 0047DEE3    mov         eax,6ECAB4
 0047DEE8    mov         edx,dword ptr [ebp-90]
 0047DEEE    call        004738B4
 0047DEF3    test        al,al
>0047DEF5    jne         0047DFB3
 0047DEFB    push        dword ptr [ebp-0A4]
 0047DF01    mov         eax,6ECAB4
 0047DF06    mov         ecx,3
 0047DF0B    mov         edx,dword ptr [ebp-90]
 0047DF11    call        00471F14
 0047DF16    test        eax,eax
>0047DF18    je          0047DFB3
 0047DF1E    mov         eax,dword ptr [ebp-0A4]
 0047DF24    mov         edx,dword ptr [eax+12]
 0047DF27    cmp         edx,8
>0047DF2A    jb          0047DFB3
 0047DF30    mov         ecx,dword ptr [ebp-0A4]
 0047DF36    mov         eax,dword ptr [ecx+12]
 0047DF39    mov         edx,dword ptr [ebp-80]
 0047DF3C    add         eax,edx
 0047DF3E    mov         ecx,dword ptr [ebp-98]
 0047DF44    cmp         eax,ecx
>0047DF46    jae         0047DFB3
 0047DF48    mov         eax,[006941D4];0x0 gvar_006941D4
 0047DF4D    mov         edx,dword ptr [ebp-80]
 0047DF50    add         eax,edx
 0047DF52    mov         edx,dword ptr [ebp-0A4]
 0047DF58    call        0053EF88
 0047DF5D    test        al,al
>0047DF5F    je          0047DF79
 0047DF61    mov         eax,dword ptr [ebp-60]
 0047DF64    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047DF67    mov         ecx,dword ptr [ebp-0A4]
 0047DF6D    mov         edx,dword ptr [ebp-80]
 0047DF70    call        00404898
 0047DF75    test        al,al
>0047DF77    jne         0047DF7D
 0047DF79    xor         eax,eax
>0047DF7B    jmp         0047DF82
 0047DF7D    mov         eax,1
 0047DF82    mov         byte ptr [ebp-61],al
 0047DF85    mov         dl,byte ptr [ebp-61]
 0047DF88    test        dl,dl
>0047DF8A    je          0047DFB3
 0047DF8C    push        dword ptr [ebp-0A4]
 0047DF92    push        1
 0047DF94    mov         ecx,dword ptr [ebp-0A4]
 0047DF9A    push        dword ptr [ecx+12]
 0047DF9D    mov         eax,dword ptr [ebp-60]
 0047DFA0    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047DFA3    mov         ecx,dword ptr [ebp-90]
 0047DFA9    mov         edx,dword ptr [ebp-80]
 0047DFAC    call        004052B4
>0047DFB1    jmp         0047DFD4
 0047DFB3    inc         dword ptr [ebp-84]
 0047DFB9    mov         eax,dword ptr [ebp-84]
 0047DFBF    mov         edx,dword ptr [ebp-74]
 0047DFC2    cmp         eax,edx
>0047DFC4    jg          0047DFD4
 0047DFC6    mov         ecx,dword ptr [ebp-60]
 0047DFC9    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047DFCC    test        al,al
>0047DFCE    je          0047DECB
 0047DFD4    inc         dword ptr [ebp-80]
 0047DFD7    mov         edx,dword ptr [ebp-80]
 0047DFDA    mov         ecx,dword ptr [ebp-98]
 0047DFE0    cmp         edx,ecx
>0047DFE2    jge         0047DFF2
 0047DFE4    mov         eax,dword ptr [ebp-60]
 0047DFE7    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047DFEA    test        dl,dl
>0047DFEC    je          0047DE1A
 0047DFF2    inc         dword ptr [ebp-8C]
 0047DFF8    mov         ecx,dword ptr [ebp-9C]
 0047DFFE    mov         eax,dword ptr [ecx+24]
 0047E001    mov         edx,dword ptr [eax]
 0047E003    call        dword ptr [edx+14]
 0047E006    mov         ecx,dword ptr [ebp-8C]
 0047E00C    cmp         eax,ecx
>0047E00E    jle         0047E01E
 0047E010    mov         eax,dword ptr [ebp-60]
 0047E013    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047E016    test        dl,dl
>0047E018    je          0047DD94
 0047E01E    inc         dword ptr [ebp-7C]
 0047E021    mov         ecx,dword ptr [ebp-7C]
 0047E024    mov         eax,[006941DC];0x0 gvar_006941DC
 0047E029    cmp         ecx,eax
>0047E02B    jge         0047E03B
 0047E02D    mov         edx,dword ptr [ebp-60]
 0047E030    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E033    test        cl,cl
>0047E035    je          0047DD34
 0047E03B    mov         eax,dword ptr [ebp-60]
 0047E03E    call        004768BC
 0047E043    mov         word ptr [ebp-4C],44
 0047E049    mov         edx,6B2B5C
 0047E04E    lea         eax,[ebp-34]
 0047E051    call        0067DAB4
 0047E056    inc         dword ptr [ebp-40]
 0047E059    lea         ecx,[ebp-34]
 0047E05C    mov         edx,7
 0047E061    mov         eax,dword ptr [ebp-60]
 0047E064    call        0047673C
 0047E069    dec         dword ptr [ebp-40]
 0047E06C    lea         eax,[ebp-34]
 0047E06F    mov         edx,2
 0047E074    call        0067DCA0
 0047E079    xor         ecx,ecx
 0047E07B    mov         dword ptr [ebp-88],ecx
>0047E081    jmp         0047E3F8
 0047E086    mov         eax,dword ptr [ebp-60]
 0047E089    call        0047688C
 0047E08E    imul        edx,dword ptr [ebp-88],0D
 0047E095    mov         ecx,dword ptr [edx+6B28D9]
 0047E09B    test        ecx,ecx
>0047E09D    je          0047E406
 0047E0A3    imul        eax,dword ptr [ebp-88],0D
 0047E0AA    mov         dl,byte ptr [eax+6B28D8]
 0047E0B0    test        dl,dl
>0047E0B2    jne         0047E3F2
 0047E0B8    imul        ecx,dword ptr [ebp-88],0D
 0047E0BF    xor         eax,eax
 0047E0C1    mov         dword ptr [ecx+6B28DD],eax
 0047E0C7    imul        edx,dword ptr [ebp-88],0D
 0047E0CE    mov         dword ptr [edx+6B28E1],0FFFFFFFF
 0047E0D8    imul        ecx,dword ptr [ebp-88],0D
 0047E0DF    mov         edx,dword ptr [ecx+6B28D9]
 0047E0E5    mov         eax,6ECAB4
 0047E0EA    call        0046EDD0
 0047E0EF    mov         word ptr [ebp-64],ax
 0047E0F3    cmp         word ptr [ebp-64],0FFFF
>0047E0F9    je          0047E3F2
 0047E0FF    lea         ecx,[ebp-74]
 0047E102    push        ecx
 0047E103    lea         ecx,[ebp-70]
 0047E106    mov         eax,6ECAB4
 0047E10B    mov         dx,word ptr [ebp-64]
 0047E10F    call        00471484
 0047E114    test        al,al
>0047E116    je          0047E3F2
 0047E11C    xor         eax,eax
 0047E11E    mov         dword ptr [ebp-7C],eax
>0047E121    jmp         0047E3D7
 0047E126    mov         edx,dword ptr [ebp-7C]
 0047E129    mov         eax,[006941E0];0x0 gvar_006941E0
 0047E12E    call        TList.Get
 0047E133    mov         dword ptr [ebp-9C],eax
 0047E139    mov         edx,dword ptr [ebp-9C]
 0047E13F    mov         cl,byte ptr [edx]
 0047E141    test        cl,cl
>0047E143    jne         0047E3D4
 0047E149    mov         eax,dword ptr [ebp-9C]
 0047E14F    mov         eax,dword ptr [eax+24]
 0047E152    mov         edx,dword ptr [eax]
 0047E154    call        dword ptr [edx+14]
 0047E157    test        eax,eax
>0047E159    jne         0047E3D4
 0047E15F    mov         ecx,dword ptr [ebp-9C]
 0047E165    xor         eax,eax
 0047E167    mov         dword ptr [ecx+1C],eax
 0047E16A    mov         edx,dword ptr [ebp-9C]
 0047E170    mov         eax,dword ptr [edx+4]
 0047E173    call        005312C8
 0047E178    mov         dword ptr [ebp-94],eax
 0047E17E    mov         edx,dword ptr [ebp-9C]
 0047E184    mov         eax,dword ptr [edx+8]
 0047E187    call        005312C8
 0047E18C    mov         dword ptr [ebp-98],eax
 0047E192    mov         edx,dword ptr [ebp-94]
 0047E198    mov         dword ptr [ebp-80],edx
>0047E19B    jmp         0047E378
 0047E1A0    mov         edx,dword ptr [ebp-80]
 0047E1A3    mov         eax,10
 0047E1A8    call        00532B74
 0047E1AD    test        al,al
>0047E1AF    je          0047E375
 0047E1B5    mov         eax,dword ptr [ebp-80]
 0047E1B8    call        00531360
 0047E1BD    mov         edx,dword ptr [ebp-9C]
 0047E1C3    mov         ecx,dword ptr [edx+14]
 0047E1C6    cmp         eax,ecx
>0047E1C8    je          0047E375
 0047E1CE    mov         eax,dword ptr [ebp-80]
 0047E1D1    call        00531360
 0047E1D6    mov         edx,dword ptr [ebp-9C]
 0047E1DC    mov         ecx,dword ptr [edx+0C]
 0047E1DF    cmp         eax,ecx
>0047E1E1    je          0047E375
 0047E1E7    mov         eax,dword ptr [ebp-80]
 0047E1EA    call        00531360
 0047E1EF    call        0053A308
 0047E1F4    mov         dword ptr [ebp-0A0],eax
 0047E1FA    mov         edx,dword ptr [ebp-0A0]
 0047E200    test        edx,edx
>0047E202    je          0047E217
 0047E204    mov         eax,dword ptr [ebp-0A0]
 0047E20A    call        004858C4
 0047E20F    test        al,al
>0047E211    jne         0047E375
 0047E217    mov         eax,dword ptr [ebp-80]
 0047E21A    call        00531360
 0047E21F    mov         edx,eax
 0047E221    mov         eax,dword ptr [ebp-60]
 0047E224    call        00476A00
 0047E229    mov         edx,dword ptr [ebp-70]
 0047E22C    mov         dword ptr [ebp-84],edx
>0047E232    jmp         0047E35A
 0047E237    mov         ecx,dword ptr [ebp-84]
 0047E23D    shl         ecx,4
 0047E240    mov         eax,[006ECAD8];0x0 gvar_006ECAD8
 0047E245    mov         edx,dword ptr [eax+ecx+8]
 0047E249    mov         dword ptr [ebp-90],edx
 0047E24F    mov         eax,6ECAB4
 0047E254    mov         edx,dword ptr [ebp-90]
 0047E25A    call        004738B4
 0047E25F    test        al,al
>0047E261    jne         0047E354
 0047E267    mov         byte ptr [ebp-61],0
 0047E26B    push        dword ptr [ebp-0A4]
 0047E271    mov         eax,6ECAB4
 0047E276    mov         ecx,1
 0047E27B    mov         edx,dword ptr [ebp-90]
 0047E281    call        00471F14
 0047E286    test        eax,eax
>0047E288    je          0047E354
 0047E28E    mov         eax,dword ptr [ebp-0A4]
 0047E294    mov         edx,dword ptr [eax+12]
 0047E297    cmp         edx,8
>0047E29A    jb          0047E354
 0047E2A0    mov         ecx,dword ptr [ebp-0A4]
 0047E2A6    mov         eax,dword ptr [ecx+12]
 0047E2A9    mov         edx,dword ptr [ebp-80]
 0047E2AC    add         eax,edx
 0047E2AE    mov         ecx,dword ptr [ebp-98]
 0047E2B4    cmp         eax,ecx
>0047E2B6    jae         0047E354
 0047E2BC    mov         eax,[006941D4];0x0 gvar_006941D4
 0047E2C1    mov         edx,dword ptr [ebp-80]
 0047E2C4    add         eax,edx
 0047E2C6    mov         edx,dword ptr [ebp-0A4]
 0047E2CC    call        0053EF88
 0047E2D1    test        al,al
>0047E2D3    je          0047E2ED
 0047E2D5    mov         eax,dword ptr [ebp-60]
 0047E2D8    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047E2DB    mov         ecx,dword ptr [ebp-0A4]
 0047E2E1    mov         edx,dword ptr [ebp-80]
 0047E2E4    call        00404898
 0047E2E9    test        al,al
>0047E2EB    jne         0047E2F1
 0047E2ED    xor         eax,eax
>0047E2EF    jmp         0047E2F6
 0047E2F1    mov         eax,1
 0047E2F6    mov         byte ptr [ebp-61],al
 0047E2F9    mov         dl,byte ptr [ebp-61]
 0047E2FC    test        dl,dl
>0047E2FE    je          0047E354
 0047E300    mov         ecx,dword ptr [ebp-0A4]
 0047E306    mov         eax,dword ptr [ecx+12]
 0047E309    mov         dword ptr [ebp-0AC],eax
 0047E30F    xor         edx,edx
 0047E311    mov         dword ptr [ebp-0A8],edx
 0047E317    fild        qword ptr [ebp-0AC]
 0047E31D    fmul        dword ptr ds:[47E780];100:Single
 0047E323    mov         ecx,dword ptr [ebp-98]
 0047E329    mov         eax,dword ptr [ebp-94]
 0047E32F    sub         ecx,eax
 0047E331    inc         ecx
 0047E332    mov         dword ptr [ebp-0B0],ecx
 0047E338    fild        dword ptr [ebp-0B0]
 0047E33E    fdivp       st(1),st
 0047E340    mov         edx,dword ptr [ebp-9C]
 0047E346    fadd        dword ptr [edx+1C]
 0047E349    mov         ecx,dword ptr [ebp-9C]
 0047E34F    fstp        dword ptr [ecx+1C]
>0047E352    jmp         0047E375
 0047E354    inc         dword ptr [ebp-84]
 0047E35A    mov         eax,dword ptr [ebp-84]
 0047E360    mov         edx,dword ptr [ebp-74]
 0047E363    cmp         eax,edx
>0047E365    jg          0047E375
 0047E367    mov         ecx,dword ptr [ebp-60]
 0047E36A    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E36D    test        al,al
>0047E36F    je          0047E237
 0047E375    inc         dword ptr [ebp-80]
 0047E378    mov         edx,dword ptr [ebp-80]
 0047E37B    mov         ecx,dword ptr [ebp-98]
 0047E381    cmp         edx,ecx
>0047E383    jge         0047E393
 0047E385    mov         eax,dword ptr [ebp-60]
 0047E388    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047E38B    test        dl,dl
>0047E38D    je          0047E1A0
 0047E393    mov         ecx,dword ptr [ebp-9C]
 0047E399    fld         dword ptr [ecx+1C]
 0047E39C    imul        eax,dword ptr [ebp-88],0D
 0047E3A3    fcomp       dword ptr [eax+6B28DD]
 0047E3A9    fnstsw      al
 0047E3AB    sahf
>0047E3AC    jbe         0047E3D4
 0047E3AE    mov         edx,dword ptr [ebp-9C]
 0047E3B4    mov         ecx,dword ptr [edx+1C]
 0047E3B7    imul        eax,dword ptr [ebp-88],0D
 0047E3BE    mov         dword ptr [eax+6B28DD],ecx
 0047E3C4    imul        edx,dword ptr [ebp-88],0D
 0047E3CB    mov         ecx,dword ptr [ebp-7C]
 0047E3CE    mov         dword ptr [edx+6B28E1],ecx
 0047E3D4    inc         dword ptr [ebp-7C]
 0047E3D7    mov         eax,dword ptr [ebp-7C]
 0047E3DA    mov         edx,dword ptr ds:[6941DC];0x0 gvar_006941DC
 0047E3E0    cmp         eax,edx
>0047E3E2    jge         0047E3F2
 0047E3E4    mov         ecx,dword ptr [ebp-60]
 0047E3E7    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E3EA    test        al,al
>0047E3EC    je          0047E126
 0047E3F2    inc         dword ptr [ebp-88]
 0047E3F8    mov         edx,dword ptr [ebp-60]
 0047E3FB    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E3FE    test        cl,cl
>0047E400    je          0047E086
 0047E406    mov         eax,dword ptr [ebp-60]
 0047E409    call        004768BC
 0047E40E    mov         word ptr [ebp-4C],50
 0047E414    mov         edx,6B2B7C
 0047E419    lea         eax,[ebp-38]
 0047E41C    call        0067DAB4
 0047E421    inc         dword ptr [ebp-40]
 0047E424    lea         ecx,[ebp-38]
 0047E427    mov         edx,7
 0047E42C    mov         eax,dword ptr [ebp-60]
 0047E42F    call        0047673C
 0047E434    dec         dword ptr [ebp-40]
 0047E437    lea         eax,[ebp-38]
 0047E43A    mov         edx,2
 0047E43F    call        0067DCA0
 0047E444    xor         ecx,ecx
 0047E446    mov         dword ptr [ebp-88],ecx
>0047E44C    jmp         0047E738
 0047E451    mov         eax,dword ptr [ebp-60]
 0047E454    call        0047688C
 0047E459    imul        edx,dword ptr [ebp-88],0D
 0047E460    mov         ecx,dword ptr [edx+6B28D9]
 0047E466    test        ecx,ecx
>0047E468    je          0047E746
 0047E46E    imul        eax,dword ptr [ebp-88],0D
 0047E475    mov         dl,byte ptr [eax+6B28D8]
 0047E47B    test        dl,dl
>0047E47D    jne         0047E732
 0047E483    imul        ecx,dword ptr [ebp-88],0D
 0047E48A    fld         dword ptr [ecx+6B28DD]
 0047E490    fcomp       dword ptr ds:[47E784];50:Single
 0047E496    fnstsw      al
 0047E498    sahf
>0047E499    jb          0047E732
 0047E49F    imul        edx,dword ptr [ebp-88],0D
 0047E4A6    mov         edx,dword ptr [edx+6B28D9]
 0047E4AC    mov         eax,6ECAB4
 0047E4B1    call        0046EDD0
 0047E4B6    mov         word ptr [ebp-64],ax
 0047E4BA    cmp         word ptr [ebp-64],0FFFF
>0047E4C0    je          0047E732
 0047E4C6    lea         ecx,[ebp-74]
 0047E4C9    push        ecx
 0047E4CA    lea         ecx,[ebp-70]
 0047E4CD    mov         eax,6ECAB4
 0047E4D2    mov         dx,word ptr [ebp-64]
 0047E4D6    call        00471484
 0047E4DB    test        al,al
>0047E4DD    je          0047E732
 0047E4E3    imul        eax,dword ptr [ebp-88],0D
 0047E4EA    mov         edx,dword ptr [eax+6B28E1]
 0047E4F0    mov         dword ptr [ebp-7C],edx
 0047E4F3    mov         edx,dword ptr [ebp-7C]
 0047E4F6    mov         eax,[006941E0];0x0 gvar_006941E0
 0047E4FB    call        TList.Get
 0047E500    mov         dword ptr [ebp-9C],eax
 0047E506    mov         ecx,dword ptr [ebp-9C]
 0047E50C    mov         al,byte ptr [ecx]
 0047E50E    test        al,al
>0047E510    jne         0047E732
 0047E516    mov         edx,dword ptr [ebp-9C]
 0047E51C    mov         eax,dword ptr [edx+24]
 0047E51F    mov         edx,dword ptr [eax]
 0047E521    call        dword ptr [edx+14]
 0047E524    test        eax,eax
>0047E526    jne         0047E732
 0047E52C    mov         ecx,dword ptr [ebp-9C]
 0047E532    mov         eax,dword ptr [ecx+4]
 0047E535    call        005312C8
 0047E53A    mov         dword ptr [ebp-94],eax
 0047E540    mov         edx,dword ptr [ebp-9C]
 0047E546    mov         eax,dword ptr [edx+8]
 0047E549    call        005312C8
 0047E54E    mov         dword ptr [ebp-98],eax
 0047E554    mov         edx,dword ptr [ebp-94]
 0047E55A    mov         dword ptr [ebp-80],edx
>0047E55D    jmp         0047E717
 0047E562    mov         edx,dword ptr [ebp-80]
 0047E565    mov         eax,10
 0047E56A    call        00532B74
 0047E56F    test        al,al
>0047E571    je          0047E714
 0047E577    mov         eax,dword ptr [ebp-80]
 0047E57A    call        00531360
 0047E57F    mov         edx,dword ptr [ebp-9C]
 0047E585    mov         ecx,dword ptr [edx+14]
 0047E588    cmp         eax,ecx
>0047E58A    je          0047E714
 0047E590    mov         eax,dword ptr [ebp-80]
 0047E593    call        00531360
 0047E598    mov         edx,dword ptr [ebp-9C]
 0047E59E    mov         ecx,dword ptr [edx+0C]
 0047E5A1    cmp         eax,ecx
>0047E5A3    je          0047E714
 0047E5A9    mov         eax,dword ptr [ebp-80]
 0047E5AC    call        00531360
 0047E5B1    call        0053A308
 0047E5B6    mov         dword ptr [ebp-0A0],eax
 0047E5BC    mov         edx,dword ptr [ebp-0A0]
 0047E5C2    test        edx,edx
>0047E5C4    je          0047E5D9
 0047E5C6    mov         eax,dword ptr [ebp-0A0]
 0047E5CC    call        004858C4
 0047E5D1    test        al,al
>0047E5D3    jne         0047E714
 0047E5D9    mov         eax,dword ptr [ebp-80]
 0047E5DC    call        00531360
 0047E5E1    mov         edx,eax
 0047E5E3    mov         eax,dword ptr [ebp-60]
 0047E5E6    call        00476A00
 0047E5EB    mov         edx,dword ptr [ebp-70]
 0047E5EE    mov         dword ptr [ebp-84],edx
>0047E5F4    jmp         0047E6F9
 0047E5F9    mov         ecx,dword ptr [ebp-84]
 0047E5FF    shl         ecx,4
 0047E602    mov         eax,[006ECAD8];0x0 gvar_006ECAD8
 0047E607    mov         edx,dword ptr [eax+ecx+8]
 0047E60B    mov         dword ptr [ebp-90],edx
 0047E611    mov         eax,6ECAB4
 0047E616    mov         edx,dword ptr [ebp-90]
 0047E61C    call        004738B4
 0047E621    test        al,al
>0047E623    jne         0047E6F3
 0047E629    mov         byte ptr [ebp-61],0
 0047E62D    push        dword ptr [ebp-0A4]
 0047E633    mov         eax,6ECAB4
 0047E638    mov         ecx,3
 0047E63D    mov         edx,dword ptr [ebp-90]
 0047E643    call        00471F14
 0047E648    test        eax,eax
>0047E64A    je          0047E6F3
 0047E650    mov         eax,dword ptr [ebp-0A4]
 0047E656    mov         edx,dword ptr [eax+12]
 0047E659    cmp         edx,8
>0047E65C    jb          0047E6F3
 0047E662    mov         ecx,dword ptr [ebp-0A4]
 0047E668    mov         eax,dword ptr [ecx+12]
 0047E66B    mov         edx,dword ptr [ebp-80]
 0047E66E    add         eax,edx
 0047E670    mov         ecx,dword ptr [ebp-98]
 0047E676    cmp         eax,ecx
>0047E678    jae         0047E6F3
 0047E67A    mov         eax,[006941D4];0x0 gvar_006941D4
 0047E67F    mov         edx,dword ptr [ebp-80]
 0047E682    add         eax,edx
 0047E684    mov         edx,dword ptr [ebp-0A4]
 0047E68A    call        0053EF88
 0047E68F    test        al,al
>0047E691    je          0047E6AB
 0047E693    mov         eax,dword ptr [ebp-60]
 0047E696    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047E699    mov         ecx,dword ptr [ebp-0A4]
 0047E69F    mov         edx,dword ptr [ebp-80]
 0047E6A2    call        00404898
 0047E6A7    test        al,al
>0047E6A9    jne         0047E6AF
 0047E6AB    xor         eax,eax
>0047E6AD    jmp         0047E6B4
 0047E6AF    mov         eax,1
 0047E6B4    mov         byte ptr [ebp-61],al
 0047E6B7    mov         dl,byte ptr [ebp-61]
 0047E6BA    test        dl,dl
>0047E6BC    je          0047E6F3
 0047E6BE    push        dword ptr [ebp-0A4]
 0047E6C4    push        1
 0047E6C6    mov         ecx,dword ptr [ebp-0A4]
 0047E6CC    push        dword ptr [ecx+12]
 0047E6CF    mov         eax,dword ptr [ebp-60]
 0047E6D2    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047E6D5    mov         ecx,dword ptr [ebp-90]
 0047E6DB    mov         edx,dword ptr [ebp-80]
 0047E6DE    call        004052B4
 0047E6E3    imul        eax,dword ptr [ebp-88],0D
 0047E6EA    mov         byte ptr [eax+6B28D8],1
>0047E6F1    jmp         0047E714
 0047E6F3    inc         dword ptr [ebp-84]
 0047E6F9    mov         edx,dword ptr [ebp-84]
 0047E6FF    mov         ecx,dword ptr [ebp-74]
 0047E702    cmp         edx,ecx
>0047E704    jg          0047E714
 0047E706    mov         eax,dword ptr [ebp-60]
 0047E709    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047E70C    test        dl,dl
>0047E70E    je          0047E5F9
 0047E714    inc         dword ptr [ebp-80]
 0047E717    mov         ecx,dword ptr [ebp-80]
 0047E71A    mov         eax,dword ptr [ebp-98]
 0047E720    cmp         ecx,eax
>0047E722    jge         0047E732
 0047E724    mov         edx,dword ptr [ebp-60]
 0047E727    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E72A    test        cl,cl
>0047E72C    je          0047E562
 0047E732    inc         dword ptr [ebp-88]
 0047E738    mov         eax,dword ptr [ebp-60]
 0047E73B    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047E73E    test        dl,dl
>0047E740    je          0047E451
 0047E746    mov         eax,dword ptr [ebp-60]
 0047E749    call        004768BC
 0047E74E    dec         dword ptr [ebp-40]
 0047E751    lea         eax,[ebp-28]
 0047E754    mov         edx,2
 0047E759    call        0067DCA0
 0047E75E    sub         dword ptr [ebp-40],3
 0047E762    lea         eax,[ebp-24]
 0047E765    mov         edx,2
 0047E76A    call        0046E58C
 0047E76F    mov         ecx,dword ptr [ebp-5C]
 0047E772    mov         dword ptr fs:[0],ecx
 0047E779    pop         ebx
 0047E77A    mov         esp,ebp
 0047E77C    pop         ebp
 0047E77D    ret
*}
end;

//0047E788
procedure sub_0047E788(?:TAnalyzeThread);
begin
{*
 0047E788    push        ebp
 0047E789    mov         ebp,esp
 0047E78B    add         esp,0FFFFFFC0
 0047E78E    mov         dword ptr [ebp-30],eax
 0047E791    mov         eax,6B3F40
 0047E796    call        0066FECC
 0047E79B    mov         word ptr [ebp-1C],14
 0047E7A1    mov         edx,6B2B9C
 0047E7A6    lea         eax,[ebp-4]
 0047E7A9    call        0067DAB4
 0047E7AE    inc         dword ptr [ebp-10]
 0047E7B1    lea         ecx,[ebp-4]
 0047E7B4    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 0047E7BA    mov         eax,dword ptr [ebp-30]
 0047E7BD    call        0047673C
 0047E7C2    mov         dword ptr [ebp-34],eax
 0047E7C5    dec         dword ptr [ebp-10]
 0047E7C8    lea         eax,[ebp-4]
 0047E7CB    mov         edx,2
 0047E7D0    call        0067DCA0
 0047E7D5    mov         word ptr [ebp-1C],8
 0047E7DB    xor         ecx,ecx
 0047E7DD    mov         dword ptr [ebp-38],ecx
>0047E7E0    jmp         0047E97E
 0047E7E5    mov         eax,dword ptr [ebp-38]
 0047E7E8    mov         edx,dword ptr [ebp-34]
 0047E7EB    and         eax,edx
>0047E7ED    jne         0047E7F7
 0047E7EF    mov         eax,dword ptr [ebp-30]
 0047E7F2    call        0047688C
 0047E7F7    mov         eax,dword ptr [ebp-38]
 0047E7FA    call        00531360
 0047E7FF    call        0053A308
 0047E804    mov         dword ptr [ebp-3C],eax
 0047E807    mov         word ptr [ebp-1C],8
 0047E80D    mov         edx,dword ptr [ebp-3C]
 0047E810    test        edx,edx
>0047E812    je          0047E97B
 0047E818    mov         ecx,dword ptr [ebp-3C]
 0047E81B    mov         al,byte ptr [ecx+5]
 0047E81E    cmp         al,23
>0047E820    jne         0047E97B
 0047E826    mov         eax,dword ptr [ebp-38]
 0047E829    call        00531360
 0047E82E    mov         dword ptr [ebp-40],eax
 0047E831    mov         word ptr [ebp-1C],2C
 0047E837    lea         eax,[ebp-8]
 0047E83A    call        00401EA8
 0047E83F    mov         edx,eax
 0047E841    inc         dword ptr [ebp-10]
 0047E844    mov         eax,dword ptr [ebp-3C]
 0047E847    call        0048591C
 0047E84C    mov         word ptr [ebp-1C],20
 0047E852    lea         edx,[ebp-8]
 0047E855    mov         eax,dword ptr [ebp-30]
 0047E858    call        00476980
 0047E85D    mov         edx,dword ptr [ebp-40]
 0047E860    mov         ecx,dword ptr [ebp-30]
 0047E863    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 0047E866    call        0040F2F4
 0047E86B    mov         edx,dword ptr [ebp-30]
 0047E86E    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E871    test        cl,cl
>0047E873    je          0047E88A
 0047E875    dec         dword ptr [ebp-10]
 0047E878    lea         eax,[ebp-8]
 0047E87B    mov         edx,2
 0047E880    call        0067DCA0
>0047E885    jmp         0047E998
 0047E88A    mov         ecx,dword ptr [ebp-8]
 0047E88D    mov         edx,dword ptr [ebp-40]
 0047E890    mov         eax,dword ptr [ebp-30]
 0047E893    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047E896    call        0040F68C
 0047E89B    mov         edx,dword ptr [ebp-30]
 0047E89E    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E8A1    test        cl,cl
>0047E8A3    je          0047E8BA
 0047E8A5    dec         dword ptr [ebp-10]
 0047E8A8    lea         eax,[ebp-8]
 0047E8AB    mov         edx,2
 0047E8B0    call        0067DCA0
>0047E8B5    jmp         0047E998
 0047E8BA    mov         edx,dword ptr [ebp-40]
 0047E8BD    mov         eax,dword ptr [ebp-30]
 0047E8C0    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047E8C3    call        00410694
 0047E8C8    mov         edx,dword ptr [ebp-30]
 0047E8CB    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E8CE    test        cl,cl
>0047E8D0    je          0047E8E7
 0047E8D2    dec         dword ptr [ebp-10]
 0047E8D5    lea         eax,[ebp-8]
 0047E8D8    mov         edx,2
 0047E8DD    call        0067DCA0
>0047E8E2    jmp         0047E998
 0047E8E7    mov         edx,dword ptr [ebp-40]
 0047E8EA    mov         eax,dword ptr [ebp-30]
 0047E8ED    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047E8F0    call        0040FC24
 0047E8F5    mov         edx,dword ptr [ebp-30]
 0047E8F8    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E8FB    test        cl,cl
>0047E8FD    je          0047E914
 0047E8FF    dec         dword ptr [ebp-10]
 0047E902    lea         eax,[ebp-8]
 0047E905    mov         edx,2
 0047E90A    call        0067DCA0
>0047E90F    jmp         0047E998
 0047E914    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 0047E91A    cmp         ecx,2
>0047E91D    je          0047E957
 0047E91F    mov         edx,dword ptr [ebp-40]
 0047E922    mov         eax,dword ptr [ebp-30]
 0047E925    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047E928    call        0040E390
 0047E92D    mov         edx,dword ptr [ebp-40]
 0047E930    mov         ecx,dword ptr [ebp-30]
 0047E933    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 0047E936    call        0040ED6C
 0047E93B    mov         edx,dword ptr [ebp-30]
 0047E93E    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E941    test        cl,cl
>0047E943    je          0047E957
 0047E945    dec         dword ptr [ebp-10]
 0047E948    lea         eax,[ebp-8]
 0047E94B    mov         edx,2
 0047E950    call        0067DCA0
>0047E955    jmp         0047E998
 0047E957    mov         edx,dword ptr [ebp-40]
 0047E95A    mov         eax,dword ptr [ebp-30]
 0047E95D    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047E960    call        0040F14C
 0047E965    dec         dword ptr [ebp-10]
 0047E968    lea         eax,[ebp-8]
 0047E96B    mov         edx,2
 0047E970    call        0067DCA0
 0047E975    mov         word ptr [ebp-1C],8
 0047E97B    inc         dword ptr [ebp-38]
 0047E97E    mov         ecx,dword ptr [ebp-38]
 0047E981    mov         eax,[006ECB4C];0x0 gvar_006ECB4C
 0047E986    cmp         ecx,eax
>0047E988    jae         0047E998
 0047E98A    mov         edx,dword ptr [ebp-30]
 0047E98D    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047E990    test        cl,cl
>0047E992    je          0047E7E5
 0047E998    mov         eax,dword ptr [ebp-30]
 0047E99B    call        004768BC
 0047E9A0    mov         edx,dword ptr [ebp-2C]
 0047E9A3    mov         dword ptr fs:[0],edx
 0047E9AA    mov         esp,ebp
 0047E9AC    pop         ebp
 0047E9AD    ret
*}
end;

//0047E9B0
procedure sub_0047E9B0(?:TAnalyzeThread);
begin
{*
 0047E9B0    push        ebp
 0047E9B1    mov         ebp,esp
 0047E9B3    add         esp,0FFFFFB0C
 0047E9B9    push        ebx
 0047E9BA    mov         dword ptr [ebp-0B4],eax
 0047E9C0    mov         eax,6B4194
 0047E9C5    call        0066FECC
 0047E9CA    mov         word ptr [ebp-0A0],8
 0047E9D3    lea         eax,[ebp-0C]
 0047E9D6    call        0046E32C
 0047E9DB    add         dword ptr [ebp-94],3
 0047E9E2    mov         word ptr [ebp-0A0],14
 0047E9EB    lea         edx,[ebp-0C]
 0047E9EE    mov         dword ptr [ebp-0EC],edx
 0047E9F4    mov         word ptr [ebp-0A0],20
 0047E9FD    lea         eax,[ebp-10]
 0047EA00    call        00401EA8
 0047EA05    inc         dword ptr [ebp-94]
 0047EA0B    mov         word ptr [ebp-0A0],14
 0047EA14    mov         edx,dword ptr [ebp-0B4]
 0047EA1A    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047EA1D    test        cl,cl
>0047EA1F    je          0047EA5A
 0047EA21    dec         dword ptr [ebp-94]
 0047EA27    lea         eax,[ebp-10]
 0047EA2A    mov         edx,2
 0047EA2F    call        0067DCA0
 0047EA34    sub         dword ptr [ebp-94],3
 0047EA3B    lea         eax,[ebp-0C]
 0047EA3E    mov         edx,2
 0047EA43    call        0046E400
 0047EA48    mov         ecx,dword ptr [ebp-0B0]
 0047EA4E    mov         dword ptr fs:[0],ecx
>0047EA55    jmp         0047FD10
 0047EA5A    mov         eax,[006ECB7C];0x0 gvar_006ECB7C
 0047EA5F    cmp         eax,0FFFFFFFF
>0047EA62    jne         0047EA9D
 0047EA64    dec         dword ptr [ebp-94]
 0047EA6A    lea         eax,[ebp-10]
 0047EA6D    mov         edx,2
 0047EA72    call        0067DCA0
 0047EA77    sub         dword ptr [ebp-94],3
 0047EA7E    lea         eax,[ebp-0C]
 0047EA81    mov         edx,2
 0047EA86    call        0046E400
 0047EA8B    mov         ecx,dword ptr [ebp-0B0]
 0047EA91    mov         dword ptr fs:[0],ecx
>0047EA98    jmp         0047FD10
 0047EA9D    push        2
 0047EA9F    push        0
 0047EAA1    mov         eax,dword ptr [ebp-0B4]
 0047EAA7    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0047EAAA    add         eax,631
 0047EAAF    call        00403C0C
 0047EAB4    push        eax
 0047EAB5    call        KERNEL32.LoadLibraryExA
 0047EABA    mov         dword ptr [ebp-0F0],eax
 0047EAC0    mov         edx,dword ptr [ebp-0F0]
 0047EAC6    test        edx,edx
>0047EAC8    jne         0047EB03
 0047EACA    dec         dword ptr [ebp-94]
 0047EAD0    lea         eax,[ebp-10]
 0047EAD3    mov         edx,2
 0047EAD8    call        0067DCA0
 0047EADD    sub         dword ptr [ebp-94],3
 0047EAE4    lea         eax,[ebp-0C]
 0047EAE7    mov         edx,2
 0047EAEC    call        0046E400
 0047EAF1    mov         ecx,dword ptr [ebp-0B0]
 0047EAF7    mov         dword ptr fs:[0],ecx
>0047EAFE    jmp         0047FD10
 0047EB03    mov         eax,[006ECAB8];0x0 gvar_006ECAB8
 0047EB08    shl         eax,2
 0047EB0B    push        eax
 0047EB0C    call        0066EC88
 0047EB11    pop         ecx
 0047EB12    mov         dword ptr [ebp-0F4],eax
 0047EB18    mov         word ptr [ebp-0A0],2C
 0047EB21    mov         edx,6B2BB7
 0047EB26    lea         eax,[ebp-14]
 0047EB29    call        0067DAB4
 0047EB2E    inc         dword ptr [ebp-94]
 0047EB34    lea         ecx,[ebp-14]
 0047EB37    mov         edx,dword ptr ds:[6941DC];0x0 gvar_006941DC
 0047EB3D    mov         eax,dword ptr [ebp-0B4]
 0047EB43    call        0047673C
 0047EB48    dec         dword ptr [ebp-94]
 0047EB4E    lea         eax,[ebp-14]
 0047EB51    mov         edx,2
 0047EB56    call        0067DCA0
 0047EB5B    xor         ecx,ecx
 0047EB5D    mov         dword ptr [ebp-0C0],ecx
>0047EB63    jmp         0047FC99
 0047EB68    mov         eax,dword ptr [ebp-0B4]
 0047EB6E    call        0047688C
 0047EB73    mov         edx,dword ptr [ebp-0C0]
 0047EB79    mov         eax,[006941E0];0x0 gvar_006941E0
 0047EB7E    call        TList.Get
 0047EB83    mov         dword ptr [ebp-0E4],eax
 0047EB89    mov         edx,dword ptr [ebp-0E4]
 0047EB8F    test        edx,edx
>0047EB91    je          0047FC93
 0047EB97    mov         word ptr [ebp-0B6],0FFFF
 0047EBA0    mov         ecx,dword ptr [ebp-0E4]
 0047EBA6    mov         eax,dword ptr [ecx+24]
 0047EBA9    mov         edx,dword ptr [eax]
 0047EBAB    call        dword ptr [edx+14]
 0047EBAE    test        eax,eax
>0047EBB0    je          0047F33C
 0047EBB6    xor         ecx,ecx
 0047EBB8    mov         dword ptr [ebp-0C4],ecx
>0047EBBE    jmp         0047F30A
 0047EBC3    mov         edx,dword ptr [ebp-0C4]
 0047EBC9    mov         eax,dword ptr [ebp-0B4]
 0047EBCF    call        00476A00
 0047EBD4    mov         word ptr [ebp-0A0],38
 0047EBDD    lea         eax,[ebp-18]
 0047EBE0    call        00401EA8
 0047EBE5    mov         ecx,eax
 0047EBE7    inc         dword ptr [ebp-94]
 0047EBED    mov         edx,dword ptr [ebp-0E4]
 0047EBF3    mov         eax,dword ptr [edx+24]
 0047EBF6    mov         edx,dword ptr [ebp-0C4]
 0047EBFC    mov         ebx,dword ptr [eax]
 0047EBFE    call        dword ptr [ebx+0C]
 0047EC01    lea         eax,[ebp-18]
 0047EC04    call        00403C0C
 0047EC09    mov         edx,eax
 0047EC0B    mov         eax,6ECAB4
 0047EC10    call        0046EDD0
 0047EC15    mov         word ptr [ebp-0B6],ax
 0047EC1C    dec         dword ptr [ebp-94]
 0047EC22    lea         eax,[ebp-18]
 0047EC25    mov         edx,2
 0047EC2A    call        0067DCA0
 0047EC2F    cmp         word ptr [ebp-0B6],0FFFF
>0047EC38    je          0047EFF5
 0047EC3E    mov         ecx,dword ptr [ebp-0E4]
 0047EC44    mov         eax,dword ptr [ecx+4]
 0047EC47    call        005312C8
 0047EC4C    mov         dword ptr [ebp-0BC],eax
>0047EC52    jmp         0047EFC3
 0047EC57    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047EC5D    mov         ecx,dword ptr [ebp-0BC]
 0047EC63    mov         eax,dword ptr [edx+ecx]
 0047EC66    mov         dword ptr [ebp-0DC],eax
 0047EC6C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047EC72    mov         ecx,dword ptr [ebp-0BC]
 0047EC78    mov         eax,dword ptr [edx+ecx+4]
 0047EC7C    mov         dword ptr [ebp-0E0],eax
 0047EC82    mov         eax,dword ptr [ebp-0DC]
 0047EC88    call        00531EE8
 0047EC8D    test        al,al
>0047EC8F    je          0047EFBC
 0047EC95    mov         edx,dword ptr [ebp-0DC]
 0047EC9B    mov         ecx,dword ptr ds:[6ECB7C];0x0 gvar_006ECB7C
 0047ECA1    cmp         edx,ecx
>0047ECA3    jne         0047EFBC
 0047ECA9    mov         eax,dword ptr [ebp-0E0]
 0047ECAF    cmp         eax,10000
>0047ECB4    jae         0047EFBC
 0047ECBA    mov         eax,dword ptr [ebp-0BC]
 0047ECC0    call        00531360
 0047ECC5    call        0053A308
 0047ECCA    mov         dword ptr [ebp-0E8],eax
 0047ECD0    mov         edx,dword ptr [ebp-0BC]
 0047ECD6    mov         eax,200000
 0047ECDB    call        00532B74
 0047ECE0    test        al,al
>0047ECE2    je          0047ED2B
 0047ECE4    mov         edx,dword ptr [ebp-0BC]
 0047ECEA    mov         eax,10
 0047ECEF    call        00532CE4
 0047ECF4    mov         edx,dword ptr [ebp-0E8]
 0047ECFA    mov         dword ptr [ebp-1C],edx
 0047ECFD    mov         ecx,dword ptr [ebp-1C]
 0047ED00    test        ecx,ecx
>0047ED02    je          0047ED23
 0047ED04    mov         word ptr [ebp-0A0],50
 0047ED0D    mov         edx,3
 0047ED12    mov         eax,dword ptr [ebp-1C]
 0047ED15    call        00485744
 0047ED1A    mov         word ptr [ebp-0A0],44
 0047ED23    xor         ecx,ecx
 0047ED25    mov         dword ptr [ebp-0E8],ecx
 0047ED2B    mov         eax,dword ptr [ebp-0E8]
 0047ED31    test        eax,eax
>0047ED33    jne         0047ED76
 0047ED35    push        26
 0047ED37    call        0066EAE4
 0047ED3C    pop         ecx
 0047ED3D    mov         dword ptr [ebp-20],eax
 0047ED40    test        eax,eax
>0047ED42    je          0047ED6B
 0047ED44    mov         word ptr [ebp-0A0],68
 0047ED4D    mov         cl,22
 0047ED4F    mov         edx,dword ptr [ebp-0BC]
 0047ED55    mov         eax,dword ptr [ebp-20]
 0047ED58    call        00485550
 0047ED5D    mov         word ptr [ebp-0A0],5C
 0047ED66    mov         edx,dword ptr [ebp-20]
>0047ED69    jmp         0047ED6E
 0047ED6B    mov         edx,dword ptr [ebp-20]
 0047ED6E    mov         dword ptr [ebp-0E8],edx
>0047ED74    jmp         0047EDDB
 0047ED76    mov         eax,dword ptr [ebp-0E8]
 0047ED7C    mov         cl,byte ptr [eax+5]
 0047ED7F    cmp         cl,22
>0047ED82    je          0047EFBC
 0047ED88    mov         eax,dword ptr [ebp-0E8]
 0047ED8E    mov         edx,dword ptr [eax+16]
 0047ED91    test        edx,edx
>0047ED93    jne         0047EDDB
 0047ED95    push        4
 0047ED97    call        0066EAE4
 0047ED9C    pop         ecx
 0047ED9D    mov         dword ptr [ebp-24],eax
 0047EDA0    test        eax,eax
>0047EDA2    je          0047EDCF
 0047EDA4    mov         word ptr [ebp-0A0],80
 0047EDAD    mov         eax,dword ptr [ebp-24]
 0047EDB0    call        00401EA8
 0047EDB5    inc         dword ptr [ebp-94]
 0047EDBB    dec         dword ptr [ebp-94]
 0047EDC1    mov         word ptr [ebp-0A0],74
 0047EDCA    mov         edx,dword ptr [ebp-24]
>0047EDCD    jmp         0047EDD2
 0047EDCF    mov         edx,dword ptr [ebp-24]
 0047EDD2    mov         eax,dword ptr [ebp-0E8]
 0047EDD8    mov         dword ptr [eax+16],edx
 0047EDDB    mov         word ptr [ebp-0A0],8C
 0047EDE4    mov         edx,6B2BCD
 0047EDE9    lea         eax,[ebp-28]
 0047EDEC    call        0067DAB4
 0047EDF1    inc         dword ptr [ebp-94]
 0047EDF7    lea         edx,[ebp-28]
 0047EDFA    mov         eax,dword ptr [ebp-0E8]
 0047EE00    add         eax,0A
 0047EE03    call        0067DCD0
 0047EE08    dec         dword ptr [ebp-94]
 0047EE0E    lea         eax,[ebp-28]
 0047EE11    mov         edx,2
 0047EE16    call        0067DCA0
 0047EE1B    mov         ecx,8
 0047EE20    mov         edx,dword ptr [ebp-0BC]
 0047EE26    mov         eax,2
 0047EE2B    call        00532C54
 0047EE30    push        400
 0047EE35    lea         ecx,[ebp-4F4]
 0047EE3B    push        ecx
 0047EE3C    push        dword ptr [ebp-0E0]
 0047EE42    push        dword ptr [ebp-0F0]
 0047EE48    call        USER32.LoadStringA
 0047EE4D    mov         dword ptr [ebp-0C8],eax
 0047EE53    mov         word ptr [ebp-0A0],98
 0047EE5C    lea         edx,[ebp-4F4]
 0047EE62    lea         eax,[ebp-2C]
 0047EE65    mov         ecx,dword ptr [ebp-0C8]
 0047EE6B    call        0067DB28
 0047EE70    mov         edx,eax
 0047EE72    inc         dword ptr [ebp-94]
 0047EE78    mov         eax,dword ptr [ebp-0E8]
 0047EE7E    mov         eax,dword ptr [eax+16]
 0047EE81    call        0067DCD0
 0047EE86    dec         dword ptr [ebp-94]
 0047EE8C    lea         eax,[ebp-2C]
 0047EE8F    mov         edx,2
 0047EE94    call        0067DCA0
 0047EE99    lea         ecx,[ebp-4F4]
 0047EE9F    mov         eax,6ECAB4
 0047EEA4    mov         dx,word ptr [ebp-0B6]
 0047EEAB    call        004707F4
 0047EEB0    mov         dword ptr [ebp-0CC],eax
 0047EEB6    mov         ecx,dword ptr [ebp-0CC]
 0047EEBC    inc         ecx
>0047EEBD    je          0047EF38
 0047EEBF    mov         eax,dword ptr [ebp-0CC]
 0047EEC5    shl         eax,4
 0047EEC8    mov         edx,dword ptr ds:[6ECAD4];0x0 gvar_006ECAD4
 0047EECE    mov         ecx,dword ptr [edx+eax+0C]
 0047EED2    mov         dword ptr [ebp-0CC],ecx
 0047EED8    push        dword ptr [ebp-0EC]
 0047EEDE    mov         eax,6ECAB4
 0047EEE3    xor         ecx,ecx
 0047EEE5    mov         edx,dword ptr [ebp-0CC]
 0047EEEB    call        00472584
 0047EEF0    test        eax,eax
>0047EEF2    je          0047EFBC
 0047EEF8    mov         eax,dword ptr [ebp-0E8]
 0047EEFE    call        004858C4
 0047EF03    test        al,al
>0047EF05    jne         0047EFBC
 0047EF0B    mov         edx,dword ptr [ebp-0EC]
 0047EF11    add         edx,2
 0047EF14    mov         eax,dword ptr [ebp-0B4]
 0047EF1A    call        00476980
 0047EF1F    mov         edx,dword ptr [ebp-0EC]
 0047EF25    mov         edx,dword ptr [edx+2]
 0047EF28    mov         eax,dword ptr [ebp-0E8]
 0047EF2E    call        00485974
>0047EF33    jmp         0047EFBC
 0047EF38    mov         eax,dword ptr [ebp-0E8]
 0047EF3E    call        004858C4
 0047EF43    test        al,al
>0047EF45    jne         0047EFBC
 0047EF47    mov         word ptr [ebp-0A0],0A4
 0047EF50    lea         eax,[ebp-34]
 0047EF53    call        00401EA8
 0047EF58    push        eax
 0047EF59    inc         dword ptr [ebp-94]
 0047EF5F    lea         eax,[ebp-30]
 0047EF62    mov         edx,dword ptr ds:[6941F8];0x0 gvar_006941F8
 0047EF68    call        0067DC18
 0047EF6D    mov         edx,eax
 0047EF6F    inc         dword ptr [ebp-94]
 0047EF75    mov         eax,6B2BDB
 0047EF7A    pop         ecx
 0047EF7B    call        0067E37C
 0047EF80    lea         edx,[ebp-34]
 0047EF83    mov         edx,dword ptr [edx]
 0047EF85    mov         eax,dword ptr [ebp-0E8]
 0047EF8B    call        00485A80
 0047EF90    dec         dword ptr [ebp-94]
 0047EF96    lea         eax,[ebp-34]
 0047EF99    mov         edx,2
 0047EF9E    call        0067DCA0
 0047EFA3    dec         dword ptr [ebp-94]
 0047EFA9    lea         eax,[ebp-30]
 0047EFAC    mov         edx,2
 0047EFB1    call        0067DCA0
 0047EFB6    inc         dword ptr ds:[6941F8];gvar_006941F8
 0047EFBC    add         dword ptr [ebp-0BC],4
 0047EFC3    mov         ecx,dword ptr [ebp-0E4]
 0047EFC9    mov         eax,dword ptr [ecx+8]
 0047EFCC    call        005312C8
 0047EFD1    mov         edx,dword ptr [ebp-0BC]
 0047EFD7    cmp         eax,edx
>0047EFD9    jle         0047F304
 0047EFDF    mov         ecx,dword ptr [ebp-0B4]
 0047EFE5    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047EFE8    test        al,al
>0047EFEA    je          0047EC57
>0047EFF0    jmp         0047F304
 0047EFF5    mov         edx,dword ptr [ebp-0E4]
 0047EFFB    mov         eax,dword ptr [edx+4]
 0047EFFE    call        005312C8
 0047F003    mov         dword ptr [ebp-0BC],eax
>0047F009    jmp         0047F2DB
 0047F00E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047F014    mov         ecx,dword ptr [ebp-0BC]
 0047F01A    mov         eax,dword ptr [edx+ecx]
 0047F01D    mov         dword ptr [ebp-0DC],eax
 0047F023    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047F029    mov         ecx,dword ptr [ebp-0BC]
 0047F02F    mov         eax,dword ptr [edx+ecx+4]
 0047F033    mov         dword ptr [ebp-0E0],eax
 0047F039    mov         eax,dword ptr [ebp-0DC]
 0047F03F    call        00531EE8
 0047F044    test        al,al
>0047F046    je          0047F2D4
 0047F04C    mov         edx,dword ptr [ebp-0DC]
 0047F052    mov         ecx,dword ptr ds:[6ECB7C];0x0 gvar_006ECB7C
 0047F058    cmp         edx,ecx
>0047F05A    jne         0047F2D4
 0047F060    mov         eax,dword ptr [ebp-0E0]
 0047F066    cmp         eax,10000
>0047F06B    jae         0047F2D4
 0047F071    mov         eax,dword ptr [ebp-0BC]
 0047F077    call        00531360
 0047F07C    call        0053A308
 0047F081    mov         dword ptr [ebp-0E8],eax
 0047F087    mov         edx,dword ptr [ebp-0BC]
 0047F08D    mov         eax,200000
 0047F092    call        00532B74
 0047F097    test        al,al
>0047F099    je          0047F0E2
 0047F09B    mov         edx,dword ptr [ebp-0BC]
 0047F0A1    mov         eax,10
 0047F0A6    call        00532CE4
 0047F0AB    mov         edx,dword ptr [ebp-0E8]
 0047F0B1    mov         dword ptr [ebp-38],edx
 0047F0B4    mov         ecx,dword ptr [ebp-38]
 0047F0B7    test        ecx,ecx
>0047F0B9    je          0047F0DA
 0047F0BB    mov         word ptr [ebp-0A0],0BC
 0047F0C4    mov         edx,3
 0047F0C9    mov         eax,dword ptr [ebp-38]
 0047F0CC    call        00485744
 0047F0D1    mov         word ptr [ebp-0A0],0B0
 0047F0DA    xor         ecx,ecx
 0047F0DC    mov         dword ptr [ebp-0E8],ecx
 0047F0E2    mov         eax,dword ptr [ebp-0E8]
 0047F0E8    test        eax,eax
>0047F0EA    jne         0047F12D
 0047F0EC    push        26
 0047F0EE    call        0066EAE4
 0047F0F3    pop         ecx
 0047F0F4    mov         dword ptr [ebp-3C],eax
 0047F0F7    test        eax,eax
>0047F0F9    je          0047F122
 0047F0FB    mov         word ptr [ebp-0A0],0D4
 0047F104    mov         cl,22
 0047F106    mov         edx,dword ptr [ebp-0BC]
 0047F10C    mov         eax,dword ptr [ebp-3C]
 0047F10F    call        00485550
 0047F114    mov         word ptr [ebp-0A0],0C8
 0047F11D    mov         edx,dword ptr [ebp-3C]
>0047F120    jmp         0047F125
 0047F122    mov         edx,dword ptr [ebp-3C]
 0047F125    mov         dword ptr [ebp-0E8],edx
>0047F12B    jmp         0047F192
 0047F12D    mov         eax,dword ptr [ebp-0E8]
 0047F133    mov         cl,byte ptr [eax+5]
 0047F136    cmp         cl,22
>0047F139    je          0047F2D4
 0047F13F    mov         eax,dword ptr [ebp-0E8]
 0047F145    mov         edx,dword ptr [eax+16]
 0047F148    test        edx,edx
>0047F14A    jne         0047F192
 0047F14C    push        4
 0047F14E    call        0066EAE4
 0047F153    pop         ecx
 0047F154    mov         dword ptr [ebp-40],eax
 0047F157    test        eax,eax
>0047F159    je          0047F186
 0047F15B    mov         word ptr [ebp-0A0],0EC
 0047F164    mov         eax,dword ptr [ebp-40]
 0047F167    call        00401EA8
 0047F16C    inc         dword ptr [ebp-94]
 0047F172    dec         dword ptr [ebp-94]
 0047F178    mov         word ptr [ebp-0A0],0E0
 0047F181    mov         edx,dword ptr [ebp-40]
>0047F184    jmp         0047F189
 0047F186    mov         edx,dword ptr [ebp-40]
 0047F189    mov         eax,dword ptr [ebp-0E8]
 0047F18F    mov         dword ptr [eax+16],edx
 0047F192    mov         word ptr [ebp-0A0],0F8
 0047F19B    mov         edx,6B2BE6
 0047F1A0    lea         eax,[ebp-44]
 0047F1A3    call        0067DAB4
 0047F1A8    inc         dword ptr [ebp-94]
 0047F1AE    lea         edx,[ebp-44]
 0047F1B1    mov         eax,dword ptr [ebp-0E8]
 0047F1B7    add         eax,0A
 0047F1BA    call        0067DCD0
 0047F1BF    dec         dword ptr [ebp-94]
 0047F1C5    lea         eax,[ebp-44]
 0047F1C8    mov         edx,2
 0047F1CD    call        0067DCA0
 0047F1D2    mov         ecx,8
 0047F1D7    mov         edx,dword ptr [ebp-0BC]
 0047F1DD    mov         eax,2
 0047F1E2    call        00532C54
 0047F1E7    push        400
 0047F1EC    lea         ecx,[ebp-4F4]
 0047F1F2    push        ecx
 0047F1F3    push        dword ptr [ebp-0E0]
 0047F1F9    push        dword ptr [ebp-0F0]
 0047F1FF    call        USER32.LoadStringA
 0047F204    mov         dword ptr [ebp-0C8],eax
 0047F20A    mov         word ptr [ebp-0A0],104
 0047F213    lea         edx,[ebp-4F4]
 0047F219    lea         eax,[ebp-48]
 0047F21C    mov         ecx,dword ptr [ebp-0C8]
 0047F222    call        0067DB28
 0047F227    mov         edx,eax
 0047F229    inc         dword ptr [ebp-94]
 0047F22F    mov         eax,dword ptr [ebp-0E8]
 0047F235    mov         eax,dword ptr [eax+16]
 0047F238    call        0067DCD0
 0047F23D    dec         dword ptr [ebp-94]
 0047F243    lea         eax,[ebp-48]
 0047F246    mov         edx,2
 0047F24B    call        0067DCA0
 0047F250    mov         eax,dword ptr [ebp-0E8]
 0047F256    call        004858C4
 0047F25B    test        al,al
>0047F25D    jne         0047F2D4
 0047F25F    mov         word ptr [ebp-0A0],110
 0047F268    lea         eax,[ebp-50]
 0047F26B    call        00401EA8
 0047F270    push        eax
 0047F271    inc         dword ptr [ebp-94]
 0047F277    lea         eax,[ebp-4C]
 0047F27A    mov         edx,dword ptr ds:[6941F8];0x0 gvar_006941F8
 0047F280    call        0067DC18
 0047F285    mov         edx,eax
 0047F287    inc         dword ptr [ebp-94]
 0047F28D    mov         eax,6B2BF4
 0047F292    pop         ecx
 0047F293    call        0067E37C
 0047F298    lea         edx,[ebp-50]
 0047F29B    mov         edx,dword ptr [edx]
 0047F29D    mov         eax,dword ptr [ebp-0E8]
 0047F2A3    call        00485A80
 0047F2A8    dec         dword ptr [ebp-94]
 0047F2AE    lea         eax,[ebp-50]
 0047F2B1    mov         edx,2
 0047F2B6    call        0067DCA0
 0047F2BB    dec         dword ptr [ebp-94]
 0047F2C1    lea         eax,[ebp-4C]
 0047F2C4    mov         edx,2
 0047F2C9    call        0067DCA0
 0047F2CE    inc         dword ptr ds:[6941F8];gvar_006941F8
 0047F2D4    add         dword ptr [ebp-0BC],4
 0047F2DB    mov         ecx,dword ptr [ebp-0E4]
 0047F2E1    mov         eax,dword ptr [ecx+8]
 0047F2E4    call        005312C8
 0047F2E9    mov         edx,dword ptr [ebp-0BC]
 0047F2EF    cmp         eax,edx
>0047F2F1    jle         0047F304
 0047F2F3    mov         ecx,dword ptr [ebp-0B4]
 0047F2F9    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047F2FC    test        al,al
>0047F2FE    je          0047F00E
 0047F304    inc         dword ptr [ebp-0C4]
 0047F30A    mov         edx,dword ptr [ebp-0E4]
 0047F310    mov         eax,dword ptr [edx+24]
 0047F313    mov         edx,dword ptr [eax]
 0047F315    call        dword ptr [edx+14]
 0047F318    mov         ecx,dword ptr [ebp-0C4]
 0047F31E    cmp         eax,ecx
>0047F320    jle         0047FC93
 0047F326    mov         eax,dword ptr [ebp-0B4]
 0047F32C    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047F32F    test        dl,dl
>0047F331    je          0047EBC3
>0047F337    jmp         0047FC93
 0047F33C    mov         eax,dword ptr [ebp-0B4]
 0047F342    call        0047688C
 0047F347    mov         edx,dword ptr ds:[6ECAB8];0x0 gvar_006ECAB8
 0047F34D    shl         edx,2
 0047F350    push        edx
 0047F351    push        0
 0047F353    push        dword ptr [ebp-0F4]
 0047F359    call        0066F904
 0047F35E    add         esp,0C
 0047F361    xor         ecx,ecx
 0047F363    mov         dword ptr [ebp-0D4],ecx
 0047F369    mov         eax,dword ptr [ebp-0E4]
 0047F36F    mov         eax,dword ptr [eax+4]
 0047F372    call        005312C8
 0047F377    mov         dword ptr [ebp-0BC],eax
>0047F37D    jmp         0047F4A8
 0047F382    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047F388    mov         ecx,dword ptr [ebp-0BC]
 0047F38E    mov         eax,dword ptr [edx+ecx]
 0047F391    mov         dword ptr [ebp-0DC],eax
 0047F397    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047F39D    mov         ecx,dword ptr [ebp-0BC]
 0047F3A3    mov         eax,dword ptr [edx+ecx+4]
 0047F3A7    mov         dword ptr [ebp-0E0],eax
 0047F3AD    mov         eax,dword ptr [ebp-0DC]
 0047F3B3    call        00531EE8
 0047F3B8    test        al,al
>0047F3BA    je          0047F4A1
 0047F3C0    mov         edx,dword ptr [ebp-0DC]
 0047F3C6    mov         ecx,dword ptr ds:[6ECB7C];0x0 gvar_006ECB7C
 0047F3CC    cmp         edx,ecx
>0047F3CE    jne         0047F4A1
 0047F3D4    mov         eax,dword ptr [ebp-0E0]
 0047F3DA    cmp         eax,10000
>0047F3DF    jae         0047F4A1
 0047F3E5    push        400
 0047F3EA    lea         edx,[ebp-4F4]
 0047F3F0    push        edx
 0047F3F1    push        dword ptr [ebp-0E0]
 0047F3F7    push        dword ptr [ebp-0F0]
 0047F3FD    call        USER32.LoadStringA
 0047F402    mov         dword ptr [ebp-0C8],eax
 0047F408    inc         dword ptr [ebp-0D4]
 0047F40E    xor         ecx,ecx
 0047F410    mov         dword ptr [ebp-0D8],ecx
>0047F416    jmp         0047F490
 0047F418    lea         ecx,[ebp-4F4]
 0047F41E    mov         eax,6ECAB4
 0047F423    mov         edx,dword ptr [ebp-0D8]
 0047F429    call        00470708
 0047F42E    mov         dword ptr [ebp-0CC],eax
 0047F434    mov         eax,dword ptr [ebp-0CC]
 0047F43A    inc         eax
>0047F43B    je          0047F4A1
 0047F43D    mov         edx,dword ptr [ebp-0CC]
 0047F443    inc         edx
 0047F444    mov         dword ptr [ebp-0D8],edx
 0047F44A    mov         ecx,dword ptr [ebp-0CC]
 0047F450    shl         ecx,4
 0047F453    mov         eax,[006ECAD4];0x0 gvar_006ECAD4
 0047F458    mov         edx,dword ptr [eax+ecx+0C]
 0047F45C    mov         dword ptr [ebp-0CC],edx
 0047F462    push        dword ptr [ebp-0EC]
 0047F468    mov         eax,6ECAB4
 0047F46D    xor         ecx,ecx
 0047F46F    mov         edx,dword ptr [ebp-0CC]
 0047F475    call        00472584
 0047F47A    test        eax,eax
>0047F47C    je          0047F490
 0047F47E    mov         eax,dword ptr [ebp-0EC]
 0047F484    movzx       edx,word ptr [eax]
 0047F487    mov         ecx,dword ptr [ebp-0F4]
 0047F48D    inc         dword ptr [ecx+edx*4]
 0047F490    mov         eax,dword ptr [ebp-0B4]
 0047F496    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047F499    test        dl,dl
>0047F49B    je          0047F418
 0047F4A1    add         dword ptr [ebp-0BC],4
 0047F4A8    mov         ecx,dword ptr [ebp-0E4]
 0047F4AE    mov         eax,dword ptr [ecx+8]
 0047F4B1    call        005312C8
 0047F4B6    mov         edx,dword ptr [ebp-0BC]
 0047F4BC    cmp         eax,edx
>0047F4BE    jle         0047F4D1
 0047F4C0    mov         ecx,dword ptr [ebp-0B4]
 0047F4C6    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047F4C9    test        al,al
>0047F4CB    je          0047F382
 0047F4D1    mov         edx,dword ptr [ebp-0D4]
 0047F4D7    test        edx,edx
>0047F4D9    je          0047FC93
 0047F4DF    xor         ecx,ecx
 0047F4E1    mov         dword ptr [ebp-0BC],ecx
>0047F4E7    jmp         0047F521
 0047F4E9    fild        dword ptr [ebp-0D4]
 0047F4EF    fmul        qword ptr ds:[47FD18]
 0047F4F5    mov         eax,dword ptr [ebp-0F4]
 0047F4FB    mov         edx,dword ptr [ebp-0BC]
 0047F501    fild        dword ptr [eax+edx*4]
 0047F504    fcompp
 0047F506    fnstsw      al
 0047F508    sahf
>0047F509    jb          0047F51B
 0047F50B    mov         dx,word ptr [ebp-0BC]
 0047F512    mov         word ptr [ebp-0B6],dx
>0047F519    jmp         0047F53D
 0047F51B    inc         dword ptr [ebp-0BC]
 0047F521    mov         ecx,dword ptr [ebp-0BC]
 0047F527    mov         eax,[006ECAB8];0x0 gvar_006ECAB8
 0047F52C    cmp         ecx,eax
>0047F52E    jge         0047F53D
 0047F530    mov         edx,dword ptr [ebp-0B4]
 0047F536    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047F539    test        cl,cl
>0047F53B    je          0047F4E9
 0047F53D    cmp         word ptr [ebp-0B6],0FFFF
>0047F546    je          0047F96B
 0047F54C    mov         word ptr [ebp-0A0],11C
 0047F555    lea         eax,[ebp-54]
 0047F558    call        00401EA8
 0047F55D    mov         ecx,eax
 0047F55F    inc         dword ptr [ebp-94]
 0047F565    mov         eax,6ECAB4
 0047F56A    mov         dx,word ptr [ebp-0B6]
 0047F571    call        0046EF0C
 0047F576    lea         edx,[ebp-54]
 0047F579    lea         eax,[ebp-10]
 0047F57C    call        0067DCD0
 0047F581    dec         dword ptr [ebp-94]
 0047F587    lea         eax,[ebp-54]
 0047F58A    mov         edx,2
 0047F58F    call        0067DCA0
 0047F594    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 0047F59A    mov         eax,dword ptr [ecx]
 0047F59C    mov         ecx,dword ptr [ebp-10]
 0047F59F    mov         edx,dword ptr [ebp-0E4]
 0047F5A5    call        0040ADFC
 0047F5AA    mov         eax,dword ptr [ebp-0E4]
 0047F5B0    mov         byte ptr [eax+3],1
 0047F5B4    mov         edx,dword ptr [ebp-0E4]
 0047F5BA    mov         eax,dword ptr [edx+4]
 0047F5BD    call        005312C8
 0047F5C2    mov         dword ptr [ebp-0BC],eax
>0047F5C8    jmp         0047F939
 0047F5CD    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047F5D3    mov         ecx,dword ptr [ebp-0BC]
 0047F5D9    mov         eax,dword ptr [edx+ecx]
 0047F5DC    mov         dword ptr [ebp-0DC],eax
 0047F5E2    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047F5E8    mov         ecx,dword ptr [ebp-0BC]
 0047F5EE    mov         eax,dword ptr [edx+ecx+4]
 0047F5F2    mov         dword ptr [ebp-0E0],eax
 0047F5F8    mov         eax,dword ptr [ebp-0DC]
 0047F5FE    call        00531EE8
 0047F603    test        al,al
>0047F605    je          0047F932
 0047F60B    mov         edx,dword ptr [ebp-0DC]
 0047F611    mov         ecx,dword ptr ds:[6ECB7C];0x0 gvar_006ECB7C
 0047F617    cmp         edx,ecx
>0047F619    jne         0047F932
 0047F61F    mov         eax,dword ptr [ebp-0E0]
 0047F625    cmp         eax,10000
>0047F62A    jae         0047F932
 0047F630    mov         eax,dword ptr [ebp-0BC]
 0047F636    call        00531360
 0047F63B    call        0053A308
 0047F640    mov         dword ptr [ebp-0E8],eax
 0047F646    mov         edx,dword ptr [ebp-0BC]
 0047F64C    mov         eax,200000
 0047F651    call        00532B74
 0047F656    test        al,al
>0047F658    je          0047F6A1
 0047F65A    mov         edx,dword ptr [ebp-0BC]
 0047F660    mov         eax,10
 0047F665    call        00532CE4
 0047F66A    mov         edx,dword ptr [ebp-0E8]
 0047F670    mov         dword ptr [ebp-58],edx
 0047F673    mov         ecx,dword ptr [ebp-58]
 0047F676    test        ecx,ecx
>0047F678    je          0047F699
 0047F67A    mov         word ptr [ebp-0A0],134
 0047F683    mov         edx,3
 0047F688    mov         eax,dword ptr [ebp-58]
 0047F68B    call        00485744
 0047F690    mov         word ptr [ebp-0A0],128
 0047F699    xor         ecx,ecx
 0047F69B    mov         dword ptr [ebp-0E8],ecx
 0047F6A1    mov         eax,dword ptr [ebp-0E8]
 0047F6A7    test        eax,eax
>0047F6A9    jne         0047F6EC
 0047F6AB    push        26
 0047F6AD    call        0066EAE4
 0047F6B2    pop         ecx
 0047F6B3    mov         dword ptr [ebp-5C],eax
 0047F6B6    test        eax,eax
>0047F6B8    je          0047F6E1
 0047F6BA    mov         word ptr [ebp-0A0],14C
 0047F6C3    mov         cl,22
 0047F6C5    mov         edx,dword ptr [ebp-0BC]
 0047F6CB    mov         eax,dword ptr [ebp-5C]
 0047F6CE    call        00485550
 0047F6D3    mov         word ptr [ebp-0A0],140
 0047F6DC    mov         edx,dword ptr [ebp-5C]
>0047F6DF    jmp         0047F6E4
 0047F6E1    mov         edx,dword ptr [ebp-5C]
 0047F6E4    mov         dword ptr [ebp-0E8],edx
>0047F6EA    jmp         0047F751
 0047F6EC    mov         eax,dword ptr [ebp-0E8]
 0047F6F2    mov         cl,byte ptr [eax+5]
 0047F6F5    cmp         cl,22
>0047F6F8    je          0047F932
 0047F6FE    mov         eax,dword ptr [ebp-0E8]
 0047F704    mov         edx,dword ptr [eax+16]
 0047F707    test        edx,edx
>0047F709    jne         0047F751
 0047F70B    push        4
 0047F70D    call        0066EAE4
 0047F712    pop         ecx
 0047F713    mov         dword ptr [ebp-60],eax
 0047F716    test        eax,eax
>0047F718    je          0047F745
 0047F71A    mov         word ptr [ebp-0A0],164
 0047F723    mov         eax,dword ptr [ebp-60]
 0047F726    call        00401EA8
 0047F72B    inc         dword ptr [ebp-94]
 0047F731    dec         dword ptr [ebp-94]
 0047F737    mov         word ptr [ebp-0A0],158
 0047F740    mov         edx,dword ptr [ebp-60]
>0047F743    jmp         0047F748
 0047F745    mov         edx,dword ptr [ebp-60]
 0047F748    mov         eax,dword ptr [ebp-0E8]
 0047F74E    mov         dword ptr [eax+16],edx
 0047F751    mov         word ptr [ebp-0A0],170
 0047F75A    mov         edx,6B2BFF
 0047F75F    lea         eax,[ebp-64]
 0047F762    call        0067DAB4
 0047F767    inc         dword ptr [ebp-94]
 0047F76D    lea         edx,[ebp-64]
 0047F770    mov         eax,dword ptr [ebp-0E8]
 0047F776    add         eax,0A
 0047F779    call        0067DCD0
 0047F77E    dec         dword ptr [ebp-94]
 0047F784    lea         eax,[ebp-64]
 0047F787    mov         edx,2
 0047F78C    call        0067DCA0
 0047F791    mov         ecx,8
 0047F796    mov         edx,dword ptr [ebp-0BC]
 0047F79C    mov         eax,2
 0047F7A1    call        00532C54
 0047F7A6    push        400
 0047F7AB    lea         ecx,[ebp-4F4]
 0047F7B1    push        ecx
 0047F7B2    push        dword ptr [ebp-0E0]
 0047F7B8    push        dword ptr [ebp-0F0]
 0047F7BE    call        USER32.LoadStringA
 0047F7C3    mov         dword ptr [ebp-0C8],eax
 0047F7C9    mov         word ptr [ebp-0A0],17C
 0047F7D2    lea         edx,[ebp-4F4]
 0047F7D8    lea         eax,[ebp-68]
 0047F7DB    mov         ecx,dword ptr [ebp-0C8]
 0047F7E1    call        0067DB28
 0047F7E6    mov         edx,eax
 0047F7E8    inc         dword ptr [ebp-94]
 0047F7EE    mov         eax,dword ptr [ebp-0E8]
 0047F7F4    mov         eax,dword ptr [eax+16]
 0047F7F7    call        0067DCD0
 0047F7FC    dec         dword ptr [ebp-94]
 0047F802    lea         eax,[ebp-68]
 0047F805    mov         edx,2
 0047F80A    call        0067DCA0
 0047F80F    lea         ecx,[ebp-4F4]
 0047F815    mov         eax,6ECAB4
 0047F81A    mov         dx,word ptr [ebp-0B6]
 0047F821    call        004707F4
 0047F826    mov         dword ptr [ebp-0CC],eax
 0047F82C    mov         ecx,dword ptr [ebp-0CC]
 0047F832    inc         ecx
>0047F833    je          0047F8AE
 0047F835    mov         eax,dword ptr [ebp-0CC]
 0047F83B    shl         eax,4
 0047F83E    mov         edx,dword ptr ds:[6ECAD4];0x0 gvar_006ECAD4
 0047F844    mov         ecx,dword ptr [edx+eax+0C]
 0047F848    mov         dword ptr [ebp-0CC],ecx
 0047F84E    push        dword ptr [ebp-0EC]
 0047F854    mov         eax,6ECAB4
 0047F859    xor         ecx,ecx
 0047F85B    mov         edx,dword ptr [ebp-0CC]
 0047F861    call        00472584
 0047F866    test        eax,eax
>0047F868    je          0047F932
 0047F86E    mov         eax,dword ptr [ebp-0E8]
 0047F874    call        004858C4
 0047F879    test        al,al
>0047F87B    jne         0047F932
 0047F881    mov         edx,dword ptr [ebp-0EC]
 0047F887    add         edx,2
 0047F88A    mov         eax,dword ptr [ebp-0B4]
 0047F890    call        00476980
 0047F895    mov         edx,dword ptr [ebp-0EC]
 0047F89B    mov         edx,dword ptr [edx+2]
 0047F89E    mov         eax,dword ptr [ebp-0E8]
 0047F8A4    call        00485974
>0047F8A9    jmp         0047F932
 0047F8AE    mov         eax,dword ptr [ebp-0E8]
 0047F8B4    call        004858C4
 0047F8B9    test        al,al
>0047F8BB    jne         0047F932
 0047F8BD    mov         word ptr [ebp-0A0],188
 0047F8C6    lea         eax,[ebp-70]
 0047F8C9    call        00401EA8
 0047F8CE    push        eax
 0047F8CF    inc         dword ptr [ebp-94]
 0047F8D5    lea         eax,[ebp-6C]
 0047F8D8    mov         edx,dword ptr ds:[6941F8];0x0 gvar_006941F8
 0047F8DE    call        0067DC18
 0047F8E3    mov         edx,eax
 0047F8E5    inc         dword ptr [ebp-94]
 0047F8EB    mov         eax,6B2C0D
 0047F8F0    pop         ecx
 0047F8F1    call        0067E37C
 0047F8F6    lea         edx,[ebp-70]
 0047F8F9    mov         edx,dword ptr [edx]
 0047F8FB    mov         eax,dword ptr [ebp-0E8]
 0047F901    call        00485A80
 0047F906    dec         dword ptr [ebp-94]
 0047F90C    lea         eax,[ebp-70]
 0047F90F    mov         edx,2
 0047F914    call        0067DCA0
 0047F919    dec         dword ptr [ebp-94]
 0047F91F    lea         eax,[ebp-6C]
 0047F922    mov         edx,2
 0047F927    call        0067DCA0
 0047F92C    inc         dword ptr ds:[6941F8];gvar_006941F8
 0047F932    add         dword ptr [ebp-0BC],4
 0047F939    mov         ecx,dword ptr [ebp-0E4]
 0047F93F    mov         eax,dword ptr [ecx+8]
 0047F942    call        005312C8
 0047F947    mov         edx,dword ptr [ebp-0BC]
 0047F94D    cmp         eax,edx
>0047F94F    jle         0047FC93
 0047F955    mov         ecx,dword ptr [ebp-0B4]
 0047F95B    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047F95E    test        al,al
>0047F960    je          0047F5CD
>0047F966    jmp         0047FC93
 0047F96B    mov         edx,dword ptr [ebp-0E4]
 0047F971    mov         eax,dword ptr [edx+4]
 0047F974    call        005312C8
 0047F979    mov         dword ptr [ebp-0BC],eax
>0047F97F    jmp         0047FC6A
 0047F984    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047F98A    mov         ecx,dword ptr [ebp-0BC]
 0047F990    mov         eax,dword ptr [edx+ecx]
 0047F993    mov         dword ptr [ebp-0DC],eax
 0047F999    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047F99F    mov         ecx,dword ptr [ebp-0BC]
 0047F9A5    mov         eax,dword ptr [edx+ecx+4]
 0047F9A9    mov         dword ptr [ebp-0E0],eax
 0047F9AF    mov         eax,dword ptr [ebp-0DC]
 0047F9B5    call        00531EE8
 0047F9BA    test        al,al
>0047F9BC    je          0047FC63
 0047F9C2    mov         edx,dword ptr [ebp-0DC]
 0047F9C8    mov         ecx,dword ptr ds:[6ECB7C];0x0 gvar_006ECB7C
 0047F9CE    cmp         edx,ecx
>0047F9D0    jne         0047FC63
 0047F9D6    mov         eax,dword ptr [ebp-0E0]
 0047F9DC    cmp         eax,10000
>0047F9E1    jae         0047FC63
 0047F9E7    mov         eax,dword ptr [ebp-0BC]
 0047F9ED    call        00531360
 0047F9F2    call        0053A308
 0047F9F7    mov         dword ptr [ebp-0E8],eax
 0047F9FD    mov         edx,dword ptr [ebp-0BC]
 0047FA03    mov         eax,200000
 0047FA08    call        00532B74
 0047FA0D    test        al,al
>0047FA0F    je          0047FA58
 0047FA11    mov         edx,dword ptr [ebp-0BC]
 0047FA17    mov         eax,10
 0047FA1C    call        00532CE4
 0047FA21    mov         edx,dword ptr [ebp-0E8]
 0047FA27    mov         dword ptr [ebp-74],edx
 0047FA2A    mov         ecx,dword ptr [ebp-74]
 0047FA2D    test        ecx,ecx
>0047FA2F    je          0047FA50
 0047FA31    mov         word ptr [ebp-0A0],1A0
 0047FA3A    mov         edx,3
 0047FA3F    mov         eax,dword ptr [ebp-74]
 0047FA42    call        00485744
 0047FA47    mov         word ptr [ebp-0A0],194
 0047FA50    xor         ecx,ecx
 0047FA52    mov         dword ptr [ebp-0E8],ecx
 0047FA58    mov         eax,dword ptr [ebp-0E8]
 0047FA5E    test        eax,eax
>0047FA60    jne         0047FAA3
 0047FA62    push        26
 0047FA64    call        0066EAE4
 0047FA69    pop         ecx
 0047FA6A    mov         dword ptr [ebp-78],eax
 0047FA6D    test        eax,eax
>0047FA6F    je          0047FA98
 0047FA71    mov         word ptr [ebp-0A0],1B8
 0047FA7A    mov         cl,22
 0047FA7C    mov         edx,dword ptr [ebp-0BC]
 0047FA82    mov         eax,dword ptr [ebp-78]
 0047FA85    call        00485550
 0047FA8A    mov         word ptr [ebp-0A0],1AC
 0047FA93    mov         edx,dword ptr [ebp-78]
>0047FA96    jmp         0047FA9B
 0047FA98    mov         edx,dword ptr [ebp-78]
 0047FA9B    mov         dword ptr [ebp-0E8],edx
>0047FAA1    jmp         0047FB08
 0047FAA3    mov         eax,dword ptr [ebp-0E8]
 0047FAA9    mov         cl,byte ptr [eax+5]
 0047FAAC    cmp         cl,22
>0047FAAF    je          0047FC63
 0047FAB5    mov         eax,dword ptr [ebp-0E8]
 0047FABB    mov         edx,dword ptr [eax+16]
 0047FABE    test        edx,edx
>0047FAC0    jne         0047FB08
 0047FAC2    push        4
 0047FAC4    call        0066EAE4
 0047FAC9    pop         ecx
 0047FACA    mov         dword ptr [ebp-7C],eax
 0047FACD    test        eax,eax
>0047FACF    je          0047FAFC
 0047FAD1    mov         word ptr [ebp-0A0],1D0
 0047FADA    mov         eax,dword ptr [ebp-7C]
 0047FADD    call        00401EA8
 0047FAE2    inc         dword ptr [ebp-94]
 0047FAE8    dec         dword ptr [ebp-94]
 0047FAEE    mov         word ptr [ebp-0A0],1C4
 0047FAF7    mov         edx,dword ptr [ebp-7C]
>0047FAFA    jmp         0047FAFF
 0047FAFC    mov         edx,dword ptr [ebp-7C]
 0047FAFF    mov         eax,dword ptr [ebp-0E8]
 0047FB05    mov         dword ptr [eax+16],edx
 0047FB08    mov         word ptr [ebp-0A0],1DC
 0047FB11    mov         edx,6B2C18
 0047FB16    lea         eax,[ebp-80]
 0047FB19    call        0067DAB4
 0047FB1E    inc         dword ptr [ebp-94]
 0047FB24    lea         edx,[ebp-80]
 0047FB27    mov         eax,dword ptr [ebp-0E8]
 0047FB2D    add         eax,0A
 0047FB30    call        0067DCD0
 0047FB35    dec         dword ptr [ebp-94]
 0047FB3B    lea         eax,[ebp-80]
 0047FB3E    mov         edx,2
 0047FB43    call        0067DCA0
 0047FB48    mov         ecx,8
 0047FB4D    mov         edx,dword ptr [ebp-0BC]
 0047FB53    mov         eax,2
 0047FB58    call        00532C54
 0047FB5D    push        400
 0047FB62    lea         ecx,[ebp-4F4]
 0047FB68    push        ecx
 0047FB69    push        dword ptr [ebp-0E0]
 0047FB6F    push        dword ptr [ebp-0F0]
 0047FB75    call        USER32.LoadStringA
 0047FB7A    mov         dword ptr [ebp-0C8],eax
 0047FB80    mov         word ptr [ebp-0A0],1E8
 0047FB89    lea         edx,[ebp-4F4]
 0047FB8F    lea         eax,[ebp-84]
 0047FB95    mov         ecx,dword ptr [ebp-0C8]
 0047FB9B    call        0067DB28
 0047FBA0    mov         edx,eax
 0047FBA2    inc         dword ptr [ebp-94]
 0047FBA8    mov         eax,dword ptr [ebp-0E8]
 0047FBAE    mov         eax,dword ptr [eax+16]
 0047FBB1    call        0067DCD0
 0047FBB6    dec         dword ptr [ebp-94]
 0047FBBC    lea         eax,[ebp-84]
 0047FBC2    mov         edx,2
 0047FBC7    call        0067DCA0
 0047FBCC    mov         eax,dword ptr [ebp-0E8]
 0047FBD2    call        004858C4
 0047FBD7    test        al,al
>0047FBD9    jne         0047FC63
 0047FBDF    mov         word ptr [ebp-0A0],1F4
 0047FBE8    lea         eax,[ebp-8C]
 0047FBEE    call        00401EA8
 0047FBF3    push        eax
 0047FBF4    inc         dword ptr [ebp-94]
 0047FBFA    lea         eax,[ebp-88]
 0047FC00    mov         edx,dword ptr ds:[6941F8];0x0 gvar_006941F8
 0047FC06    call        0067DC18
 0047FC0B    mov         edx,eax
 0047FC0D    inc         dword ptr [ebp-94]
 0047FC13    mov         eax,6B2C26
 0047FC18    pop         ecx
 0047FC19    call        0067E37C
 0047FC1E    lea         edx,[ebp-8C]
 0047FC24    mov         edx,dword ptr [edx]
 0047FC26    mov         eax,dword ptr [ebp-0E8]
 0047FC2C    call        00485A80
 0047FC31    dec         dword ptr [ebp-94]
 0047FC37    lea         eax,[ebp-8C]
 0047FC3D    mov         edx,2
 0047FC42    call        0067DCA0
 0047FC47    dec         dword ptr [ebp-94]
 0047FC4D    lea         eax,[ebp-88]
 0047FC53    mov         edx,2
 0047FC58    call        0067DCA0
 0047FC5D    inc         dword ptr ds:[6941F8];gvar_006941F8
 0047FC63    add         dword ptr [ebp-0BC],4
 0047FC6A    mov         ecx,dword ptr [ebp-0E4]
 0047FC70    mov         eax,dword ptr [ecx+8]
 0047FC73    call        005312C8
 0047FC78    mov         edx,dword ptr [ebp-0BC]
 0047FC7E    cmp         eax,edx
>0047FC80    jle         0047FC93
 0047FC82    mov         ecx,dword ptr [ebp-0B4]
 0047FC88    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0047FC8B    test        al,al
>0047FC8D    je          0047F984
 0047FC93    inc         dword ptr [ebp-0C0]
 0047FC99    mov         edx,dword ptr [ebp-0C0]
 0047FC9F    mov         ecx,dword ptr ds:[6941DC];0x0 gvar_006941DC
 0047FCA5    cmp         edx,ecx
>0047FCA7    jge         0047FCBA
 0047FCA9    mov         eax,dword ptr [ebp-0B4]
 0047FCAF    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047FCB2    test        dl,dl
>0047FCB4    je          0047EB68
 0047FCBA    push        dword ptr [ebp-0F0]
 0047FCC0    call        KERNEL32.FreeLibrary
 0047FCC5    mov         eax,dword ptr [ebp-0B4]
 0047FCCB    call        004768BC
 0047FCD0    push        dword ptr [ebp-0F4]
 0047FCD6    call        0066EAC0
 0047FCDB    pop         ecx
 0047FCDC    dec         dword ptr [ebp-94]
 0047FCE2    lea         eax,[ebp-10]
 0047FCE5    mov         edx,2
 0047FCEA    call        0067DCA0
 0047FCEF    sub         dword ptr [ebp-94],3
 0047FCF6    lea         eax,[ebp-0C]
 0047FCF9    mov         edx,2
 0047FCFE    call        0046E400
 0047FD03    mov         ecx,dword ptr [ebp-0B0]
 0047FD09    mov         dword ptr fs:[0],ecx
 0047FD10    pop         ebx
 0047FD11    mov         esp,ebp
 0047FD13    pop         ebp
 0047FD14    ret
*}
end;

//0047FD40
procedure sub_0047FD40(?:TAnalyzeThread);
begin
{*
 0047FD40    push        ebp
 0047FD41    mov         ebp,esp
 0047FD43    add         esp,0FFFFFF98
 0047FD46    mov         dword ptr [ebp-30],eax
 0047FD49    mov         eax,6B43D0
 0047FD4E    call        0066FECC
 0047FD53    xor         edx,edx
 0047FD55    mov         dword ptr [ebp-34],edx
>0047FD58    jmp         0047FFE8
 0047FD5D    mov         edx,dword ptr [ebp-34]
 0047FD60    mov         eax,[006941E8];0x0 gvar_006941E8
 0047FD65    call        TList.Get
 0047FD6A    mov         dword ptr [ebp-38],eax
 0047FD6D    mov         ecx,dword ptr [ebp-38]
 0047FD70    mov         al,byte ptr [ecx]
 0047FD72    cmp         al,7
>0047FD74    jne         0047FFE5
 0047FD7A    mov         edx,dword ptr [ebp-38]
 0047FD7D    mov         eax,dword ptr [edx+1]
 0047FD80    call        005312C8
 0047FD85    mov         dword ptr [ebp-3C],eax
 0047FD88    add         dword ptr [ebp-3C],4
 0047FD8C    inc         dword ptr [ebp-3C]
 0047FD8F    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FD95    mov         ecx,dword ptr [ebp-3C]
 0047FD98    mov         al,byte ptr [edx+ecx]
 0047FD9B    mov         byte ptr [ebp-3D],al
 0047FD9E    inc         dword ptr [ebp-3C]
 0047FDA1    xor         edx,edx
 0047FDA3    mov         dl,byte ptr [ebp-3D]
 0047FDA6    add         dword ptr [ebp-3C],edx
 0047FDA9    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FDAF    mov         eax,dword ptr [ebp-3C]
 0047FDB2    mov         edx,dword ptr [ecx+eax]
 0047FDB5    mov         dword ptr [ebp-44],edx
 0047FDB8    add         dword ptr [ebp-3C],4
 0047FDBC    mov         eax,dword ptr [ebp-44]
 0047FDBF    mov         edx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 0047FDC5    add         eax,edx
 0047FDC7    call        0053A308
 0047FDCC    mov         dword ptr [ebp-48],eax
 0047FDCF    add         dword ptr [ebp-3C],4
 0047FDD3    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FDD9    mov         eax,dword ptr [ebp-3C]
 0047FDDC    mov         dx,word ptr [ecx+eax]
 0047FDE0    mov         word ptr [ebp-4A],dx
 0047FDE4    add         dword ptr [ebp-3C],2
 0047FDE8    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FDEE    mov         eax,dword ptr [ebp-3C]
 0047FDF1    mov         dl,byte ptr [ecx+eax]
 0047FDF4    mov         byte ptr [ebp-3D],dl
 0047FDF7    inc         dword ptr [ebp-3C]
 0047FDFA    xor         ecx,ecx
 0047FDFC    mov         cl,byte ptr [ebp-3D]
 0047FDFF    add         dword ptr [ebp-3C],ecx
 0047FE02    mov         eax,[006941D4];0x0 gvar_006941D4
 0047FE07    mov         edx,dword ptr [ebp-3C]
 0047FE0A    mov         cx,word ptr [eax+edx]
 0047FE0E    mov         word ptr [ebp-4A],cx
 0047FE12    add         dword ptr [ebp-3C],2
 0047FE16    xor         eax,eax
 0047FE18    mov         dword ptr [ebp-50],eax
>0047FE1B    jmp         0047FFCC
 0047FE20    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FE26    mov         ecx,dword ptr [ebp-3C]
 0047FE29    mov         eax,dword ptr [edx+ecx]
 0047FE2C    mov         dword ptr [ebp-54],eax
 0047FE2F    add         dword ptr [ebp-3C],4
 0047FE33    mov         eax,dword ptr [ebp-54]
 0047FE36    call        005312C8
 0047FE3B    mov         dword ptr [ebp-58],eax
 0047FE3E    add         dword ptr [ebp-58],4
 0047FE42    inc         dword ptr [ebp-58]
 0047FE45    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FE4B    mov         ecx,dword ptr [ebp-58]
 0047FE4E    mov         al,byte ptr [edx+ecx]
 0047FE51    mov         byte ptr [ebp-3D],al
 0047FE54    inc         dword ptr [ebp-58]
 0047FE57    mov         word ptr [ebp-1C],14
 0047FE5D    xor         ecx,ecx
 0047FE5F    mov         cl,byte ptr [ebp-3D]
 0047FE62    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FE68    mov         eax,dword ptr [ebp-58]
 0047FE6B    add         edx,eax
 0047FE6D    lea         eax,[ebp-4]
 0047FE70    call        0067DB28
 0047FE75    inc         dword ptr [ebp-10]
 0047FE78    mov         word ptr [ebp-1C],8
 0047FE7E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FE84    mov         ecx,dword ptr [ebp-3C]
 0047FE87    mov         eax,dword ptr [edx+ecx]
 0047FE8A    mov         dword ptr [ebp-5C],eax
 0047FE8D    add         dword ptr [ebp-3C],4
 0047FE91    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FE97    mov         ecx,dword ptr [ebp-3C]
 0047FE9A    mov         eax,dword ptr [edx+ecx]
 0047FE9D    mov         dword ptr [ebp-60],eax
 0047FEA0    add         dword ptr [ebp-3C],4
 0047FEA4    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FEAA    mov         ecx,dword ptr [ebp-3C]
 0047FEAD    mov         eax,dword ptr [edx+ecx]
 0047FEB0    mov         dword ptr [ebp-64],eax
 0047FEB3    add         dword ptr [ebp-3C],4
 0047FEB7    add         dword ptr [ebp-3C],4
 0047FEBB    add         dword ptr [ebp-3C],4
 0047FEBF    add         dword ptr [ebp-3C],2
 0047FEC3    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FEC9    mov         ecx,dword ptr [ebp-3C]
 0047FECC    mov         al,byte ptr [edx+ecx]
 0047FECF    mov         byte ptr [ebp-3D],al
 0047FED2    inc         dword ptr [ebp-3C]
 0047FED5    mov         word ptr [ebp-1C],20
 0047FEDB    xor         ecx,ecx
 0047FEDD    mov         cl,byte ptr [ebp-3D]
 0047FEE0    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0047FEE6    mov         eax,dword ptr [ebp-3C]
 0047FEE9    add         edx,eax
 0047FEEB    lea         eax,[ebp-8]
 0047FEEE    call        0067DB28
 0047FEF3    inc         dword ptr [ebp-10]
 0047FEF6    mov         word ptr [ebp-1C],8
 0047FEFC    xor         edx,edx
 0047FEFE    mov         dl,byte ptr [ebp-3D]
 0047FF01    add         dword ptr [ebp-3C],edx
 0047FF04    mov         dword ptr [ebp-68],0FFFFFFFF
 0047FF0B    test        dword ptr [ebp-5C],0FFFFFF00
>0047FF12    je          0047FF30
 0047FF14    mov         ecx,dword ptr [ebp-5C]
 0047FF17    and         ecx,0FF000000
 0047FF1D    cmp         ecx,0FF000000
>0047FF23    jne         0047FF30
 0047FF25    mov         eax,dword ptr [ebp-5C]
 0047FF28    and         eax,0FFFFFF
 0047FF2D    mov         dword ptr [ebp-68],eax
 0047FF30    test        dword ptr [ebp-60],0FFFFFF00
>0047FF37    je          0047FF56
 0047FF39    mov         edx,dword ptr [ebp-60]
 0047FF3C    and         edx,0FF000000
 0047FF42    cmp         edx,0FF000000
>0047FF48    jne         0047FF56
 0047FF4A    mov         ecx,dword ptr [ebp-60]
 0047FF4D    and         ecx,0FFFFFF
 0047FF53    mov         dword ptr [ebp-68],ecx
 0047FF56    test        dword ptr [ebp-64],0FFFFFF00
>0047FF5D    je          0047FF7A
 0047FF5F    mov         eax,dword ptr [ebp-64]
 0047FF62    and         eax,0FF000000
 0047FF67    cmp         eax,0FF000000
>0047FF6C    jne         0047FF7A
 0047FF6E    mov         edx,dword ptr [ebp-64]
 0047FF71    and         edx,0FFFFFF
 0047FF77    mov         dword ptr [ebp-68],edx
 0047FF7A    mov         ecx,dword ptr [ebp-48]
 0047FF7D    test        ecx,ecx
>0047FF7F    je          0047FFA3
 0047FF81    mov         eax,dword ptr [ebp-68]
 0047FF84    inc         eax
>0047FF85    je          0047FFA3
 0047FF87    push        0B
 0047FF89    push        dword ptr [ebp-68]
 0047FF8C    push        0FF
 0047FF8E    push        dword ptr [ebp-8]
 0047FF91    push        dword ptr [ebp-4]
 0047FF94    mov         edx,dword ptr [ebp-48]
 0047FF97    mov         eax,dword ptr [edx+1A]
 0047FF9A    xor         ecx,ecx
 0047FF9C    xor         edx,edx
 0047FF9E    call        004830E8
 0047FFA3    dec         dword ptr [ebp-10]
 0047FFA6    lea         eax,[ebp-8]
 0047FFA9    mov         edx,2
 0047FFAE    call        0067DCA0
 0047FFB3    dec         dword ptr [ebp-10]
 0047FFB6    lea         eax,[ebp-4]
 0047FFB9    mov         edx,2
 0047FFBE    call        0067DCA0
 0047FFC3    mov         word ptr [ebp-1C],0
 0047FFC9    inc         dword ptr [ebp-50]
 0047FFCC    movzx       ecx,word ptr [ebp-4A]
 0047FFD0    mov         eax,dword ptr [ebp-50]
 0047FFD3    cmp         ecx,eax
>0047FFD5    jle         0047FFE5
 0047FFD7    mov         edx,dword ptr [ebp-30]
 0047FFDA    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0047FFDD    test        cl,cl
>0047FFDF    je          0047FE20
 0047FFE5    inc         dword ptr [ebp-34]
 0047FFE8    mov         eax,[006941E8];0x0 gvar_006941E8
 0047FFED    mov         edx,dword ptr [eax+8]
 0047FFF0    mov         ecx,dword ptr [ebp-34]
 0047FFF3    cmp         edx,ecx
>0047FFF5    jle         00480005
 0047FFF7    mov         eax,dword ptr [ebp-30]
 0047FFFA    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0047FFFD    test        dl,dl
>0047FFFF    je          0047FD5D
 00480005    mov         ecx,dword ptr [ebp-2C]
 00480008    mov         dword ptr fs:[0],ecx
 0048000F    mov         esp,ebp
 00480011    pop         ebp
 00480012    ret
*}
end;

//00480014
procedure sub_00480014(?:TAnalyzeThread);
begin
{*
 00480014    push        ebp
 00480015    mov         ebp,esp
 00480017    add         esp,0FFFFFFA0
 0048001A    mov         dword ptr [ebp-44],eax
 0048001D    mov         eax,6B446C
 00480022    call        0066FECC
 00480027    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 0048002D    cmp         edx,7D9
>00480033    jl          0048028E
 00480039    mov         word ptr [ebp-30],14
 0048003F    mov         edx,6B2C31
 00480044    lea         eax,[ebp-4]
 00480047    call        0067DAB4
 0048004C    inc         dword ptr [ebp-24]
 0048004F    lea         ecx,[ebp-4]
 00480052    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 00480058    mov         eax,dword ptr [ebp-44]
 0048005B    call        0047673C
 00480060    mov         dword ptr [ebp-5C],eax
 00480063    dec         dword ptr [ebp-24]
 00480066    lea         eax,[ebp-4]
 00480069    mov         edx,2
 0048006E    call        0067DCA0
 00480073    mov         word ptr [ebp-30],8
 00480079    xor         ecx,ecx
 0048007B    mov         dword ptr [ebp-48],ecx
>0048007E    jmp         00480265
 00480083    mov         eax,dword ptr [ebp-48]
 00480086    mov         edx,dword ptr [ebp-5C]
 00480089    and         eax,edx
>0048008B    jne         00480095
 0048008D    mov         eax,dword ptr [ebp-44]
 00480090    call        0047688C
 00480095    mov         edx,dword ptr [ebp-48]
 00480098    mov         eax,2
 0048009D    call        00532B74
 004800A2    test        al,al
>004800A4    jne         00480261
 004800AA    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004800B0    mov         ecx,dword ptr [ebp-48]
 004800B3    mov         ax,word ptr [edx+ecx]
 004800B7    mov         word ptr [ebp-4E],ax
 004800BB    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004800C1    mov         ecx,dword ptr [ebp-48]
 004800C4    mov         ax,word ptr [edx+ecx+2]
 004800C9    mov         word ptr [ebp-50],ax
 004800CD    cmp         word ptr [ebp-50],0
>004800D2    je          00480261
 004800D8    cmp         word ptr [ebp-50],4
>004800DD    ja          00480261
 004800E3    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004800E9    mov         ecx,dword ptr [ebp-48]
 004800EC    mov         eax,dword ptr [edx+ecx+4]
 004800F0    mov         dword ptr [ebp-54],eax
 004800F3    mov         edx,dword ptr [ebp-54]
 004800F6    cmp         edx,0FFFFFFFF
>004800F9    jne         00480261
 004800FF    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480105    mov         eax,dword ptr [ebp-48]
 00480108    mov         edx,dword ptr [ecx+eax+8]
 0048010C    mov         dword ptr [ebp-4C],edx
 0048010F    mov         ecx,dword ptr [ebp-4C]
 00480112    test        ecx,ecx
>00480114    jle         00480261
 0048011A    mov         eax,dword ptr [ebp-4C]
 0048011D    cmp         eax,2710
>00480122    jg          00480261
 00480128    mov         edx,dword ptr [ebp-4C]
 0048012B    inc         edx
 0048012C    movzx       ecx,word ptr [ebp-50]
 00480130    imul        edx,ecx
 00480133    mov         eax,dword ptr [ebp-48]
 00480136    add         edx,eax
 00480138    add         edx,0C
 0048013B    mov         ecx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 00480141    cmp         edx,ecx
>00480143    jae         00480261
 00480149    mov         edx,dword ptr ds:[6941CC];0x0 gvar_006941CC
 0048014F    mov         eax,dword ptr [ebp-48]
 00480152    mov         edx,dword ptr [edx+eax*4+30]
 00480156    test        edx,edx
>00480158    jne         0048023D
 0048015E    mov         eax,dword ptr [ebp-48]
 00480161    call        00531360
 00480166    mov         edx,eax
 00480168    mov         eax,dword ptr [ebp-44]
 0048016B    call        00476A00
 00480170    push        26
 00480172    call        0066EAE4
 00480177    pop         ecx
 00480178    mov         dword ptr [ebp-8],eax
 0048017B    test        eax,eax
>0048017D    je          004801A0
 0048017F    mov         word ptr [ebp-30],2C
 00480185    mov         edx,dword ptr [ebp-48]
 00480188    add         edx,0C
 0048018B    mov         cl,12
 0048018D    mov         eax,dword ptr [ebp-8]
 00480190    call        00485550
 00480195    mov         word ptr [ebp-30],20
 0048019B    mov         edx,dword ptr [ebp-8]
>0048019E    jmp         004801A3
 004801A0    mov         edx,dword ptr [ebp-8]
 004801A3    mov         dword ptr [ebp-58],edx
 004801A6    cmp         word ptr [ebp-50],1
>004801AB    jne         004801F4
 004801AD    mov         word ptr [ebp-30],38
 004801B3    lea         eax,[ebp-0C]
 004801B6    call        00401EA8
 004801BB    mov         ecx,eax
 004801BD    inc         dword ptr [ebp-24]
 004801C0    mov         eax,[006941D4];0x0 gvar_006941D4
 004801C5    mov         edx,dword ptr [ebp-48]
 004801C8    add         eax,edx
 004801CA    add         eax,0C
 004801CD    mov         edx,dword ptr [ebp-4C]
 004801D0    call        005363EC
 004801D5    lea         edx,[ebp-0C]
 004801D8    mov         edx,dword ptr [edx]
 004801DA    mov         eax,dword ptr [ebp-58]
 004801DD    call        00485974
 004801E2    dec         dword ptr [ebp-24]
 004801E5    lea         eax,[ebp-0C]
 004801E8    mov         edx,2
 004801ED    call        0067DCA0
>004801F2    jmp         0048023D
 004801F4    mov         word ptr [ebp-30],44
 004801FA    lea         eax,[ebp-10]
 004801FD    call        00401EA8
 00480202    push        eax
 00480203    inc         dword ptr [ebp-24]
 00480206    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0048020C    mov         ecx,dword ptr [ebp-48]
 0048020F    add         edx,ecx
 00480211    add         edx,0C
 00480214    mov         ecx,dword ptr [ebp-4C]
 00480217    mov         ax,word ptr [ebp-4E]
 0048021B    call        00536720
 00480220    lea         edx,[ebp-10]
 00480223    mov         edx,dword ptr [edx]
 00480225    mov         eax,dword ptr [ebp-58]
 00480228    call        00485974
 0048022D    dec         dword ptr [ebp-24]
 00480230    lea         eax,[ebp-10]
 00480233    mov         edx,2
 00480238    call        0067DCA0
 0048023D    mov         ecx,dword ptr [ebp-4C]
 00480240    inc         ecx
 00480241    movzx       eax,word ptr [ebp-50]
 00480245    imul        ecx,eax
 00480248    add         ecx,0F
 0048024B    and         ecx,0FFFFFFFC
 0048024E    mov         dword ptr [ebp-4C],ecx
 00480251    mov         ecx,dword ptr [ebp-4C]
 00480254    mov         edx,dword ptr [ebp-48]
 00480257    mov         eax,2
 0048025C    call        00532C54
 00480261    add         dword ptr [ebp-48],4
 00480265    mov         edx,dword ptr [ebp-48]
 00480268    mov         ecx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 0048026E    cmp         edx,ecx
>00480270    jae         00480280
 00480272    mov         eax,dword ptr [ebp-44]
 00480275    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00480278    test        dl,dl
>0048027A    je          00480083
 00480280    mov         eax,dword ptr [ebp-44]
 00480283    call        004768BC
 00480288    mov         word ptr [ebp-30],0
 0048028E    mov         word ptr [ebp-30],5C
 00480294    mov         edx,6B2C3F
 00480299    lea         eax,[ebp-14]
 0048029C    call        0067DAB4
 004802A1    inc         dword ptr [ebp-24]
 004802A4    lea         ecx,[ebp-14]
 004802A7    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 004802AD    mov         eax,dword ptr [ebp-44]
 004802B0    call        0047673C
 004802B5    mov         dword ptr [ebp-60],eax
 004802B8    dec         dword ptr [ebp-24]
 004802BB    lea         eax,[ebp-14]
 004802BE    mov         edx,2
 004802C3    call        0067DCA0
 004802C8    mov         word ptr [ebp-30],50
 004802CE    xor         ecx,ecx
 004802D0    mov         dword ptr [ebp-48],ecx
>004802D3    jmp         00480437
 004802D8    mov         eax,dword ptr [ebp-48]
 004802DB    mov         edx,dword ptr [ebp-60]
 004802DE    and         eax,edx
>004802E0    jne         004802EA
 004802E2    mov         eax,dword ptr [ebp-44]
 004802E5    call        0047688C
 004802EA    mov         edx,dword ptr [ebp-48]
 004802ED    mov         eax,2
 004802F2    call        00532B74
 004802F7    test        al,al
>004802F9    jne         00480433
 004802FF    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480305    mov         ecx,dword ptr [ebp-48]
 00480308    mov         eax,dword ptr [edx+ecx]
 0048030B    mov         dword ptr [ebp-54],eax
 0048030E    mov         edx,dword ptr [ebp-54]
 00480311    cmp         edx,0FFFFFFFF
>00480314    jne         00480433
 0048031A    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480320    mov         eax,dword ptr [ebp-48]
 00480323    mov         edx,dword ptr [ecx+eax+4]
 00480327    mov         dword ptr [ebp-4C],edx
 0048032A    mov         ecx,dword ptr [ebp-4C]
 0048032D    test        ecx,ecx
>0048032F    jle         00480433
 00480335    mov         eax,dword ptr [ebp-4C]
 00480338    cmp         eax,2710
>0048033D    jg          00480433
 00480343    mov         edx,dword ptr [ebp-48]
 00480346    mov         ecx,dword ptr [ebp-4C]
 00480349    add         edx,ecx
 0048034B    add         edx,9
 0048034E    mov         eax,[006ECB54];0x0 gvar_006ECB54
 00480353    cmp         edx,eax
>00480355    jae         00480433
 0048035B    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480361    mov         ecx,dword ptr [ebp-48]
 00480364    lea         eax,[edx+ecx]
 00480367    mov         edx,dword ptr [ebp-4C]
 0048036A    mov         cl,byte ptr [eax+edx+8]
 0048036E    test        cl,cl
>00480370    jne         00480433
 00480376    mov         eax,[006941CC];0x0 gvar_006941CC
 0048037B    mov         edx,dword ptr [ebp-48]
 0048037E    mov         ecx,dword ptr [eax+edx*4+20]
 00480382    test        ecx,ecx
>00480384    jne         00480417
 0048038A    mov         eax,dword ptr [ebp-48]
 0048038D    call        00531360
 00480392    mov         edx,eax
 00480394    mov         eax,dword ptr [ebp-44]
 00480397    call        00476A00
 0048039C    push        26
 0048039E    call        0066EAE4
 004803A3    pop         ecx
 004803A4    mov         dword ptr [ebp-18],eax
 004803A7    test        eax,eax
>004803A9    je          004803CC
 004803AB    mov         word ptr [ebp-30],74
 004803B1    mov         edx,dword ptr [ebp-48]
 004803B4    add         edx,8
 004803B7    mov         cl,0A
 004803B9    mov         eax,dword ptr [ebp-18]
 004803BC    call        00485550
 004803C1    mov         word ptr [ebp-30],68
 004803C7    mov         edx,dword ptr [ebp-18]
>004803CA    jmp         004803CF
 004803CC    mov         edx,dword ptr [ebp-18]
 004803CF    mov         dword ptr [ebp-58],edx
 004803D2    mov         word ptr [ebp-30],80
 004803D8    lea         eax,[ebp-1C]
 004803DB    call        00401EA8
 004803E0    mov         ecx,eax
 004803E2    inc         dword ptr [ebp-24]
 004803E5    mov         eax,[006941D4];0x0 gvar_006941D4
 004803EA    mov         edx,dword ptr [ebp-48]
 004803ED    add         eax,edx
 004803EF    add         eax,8
 004803F2    mov         edx,dword ptr [ebp-4C]
 004803F5    call        005363EC
 004803FA    lea         edx,[ebp-1C]
 004803FD    mov         edx,dword ptr [edx]
 004803FF    mov         eax,dword ptr [ebp-58]
 00480402    call        00485974
 00480407    dec         dword ptr [ebp-24]
 0048040A    lea         eax,[ebp-1C]
 0048040D    mov         edx,2
 00480412    call        0067DCA0
 00480417    mov         ecx,dword ptr [ebp-4C]
 0048041A    add         ecx,0C
 0048041D    and         ecx,0FFFFFFFC
 00480420    mov         dword ptr [ebp-4C],ecx
 00480423    mov         ecx,dword ptr [ebp-4C]
 00480426    mov         edx,dword ptr [ebp-48]
 00480429    mov         eax,2
 0048042E    call        00532C54
 00480433    add         dword ptr [ebp-48],4
 00480437    mov         eax,dword ptr [ebp-48]
 0048043A    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 00480440    cmp         eax,edx
>00480442    jae         00480452
 00480444    mov         ecx,dword ptr [ebp-44]
 00480447    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 0048044A    test        al,al
>0048044C    je          004802D8
 00480452    mov         eax,dword ptr [ebp-44]
 00480455    call        004768BC
 0048045A    mov         edx,dword ptr [ebp-40]
 0048045D    mov         dword ptr fs:[0],edx
 00480464    mov         esp,ebp
 00480466    pop         ebp
 00480467    ret
*}
end;

//00480468
procedure sub_00480468(?:TAnalyzeThread);
begin
{*
 00480468    push        ebp
 00480469    mov         ebp,esp
 0048046B    add         esp,0FFFFFFAC
 0048046E    mov         dword ptr [ebp-2C],eax
 00480471    mov         eax,6B4518
 00480476    call        0066FECC
 0048047B    mov         word ptr [ebp-18],14
 00480481    mov         edx,6B2C4D
 00480486    lea         eax,[ebp-4]
 00480489    call        0067DAB4
 0048048E    inc         dword ptr [ebp-0C]
 00480491    mov         word ptr [ebp-18],8
 00480497    lea         ecx,[ebp-4]
 0048049A    mov         edx,dword ptr ds:[6941DC];0x0 gvar_006941DC
 004804A0    mov         eax,dword ptr [ebp-2C]
 004804A3    call        0047673C
 004804A8    xor         edx,edx
 004804AA    mov         dword ptr [ebp-34],edx
>004804AD    jmp         00480536
 004804B2    mov         eax,dword ptr [ebp-2C]
 004804B5    call        0047688C
 004804BA    mov         edx,dword ptr [ebp-34]
 004804BD    mov         eax,[006941E0];0x0 gvar_006941E0
 004804C2    call        TList.Get
 004804C7    mov         dword ptr [ebp-30],eax
 004804CA    mov         edx,dword ptr [ebp-30]
 004804CD    test        edx,edx
>004804CF    je          00480533
 004804D1    mov         ecx,dword ptr [ebp-30]
 004804D4    mov         eax,dword ptr [ecx+14]
 004804D7    mov         dword ptr [ebp-38],eax
 004804DA    mov         word ptr [ebp-18],8
 004804E0    mov         edx,dword ptr [ebp-38]
 004804E3    test        edx,edx
>004804E5    je          00480505
 004804E7    mov         edx,dword ptr [ebp-38]
 004804EA    mov         eax,dword ptr [ebp-2C]
 004804ED    call        004768C8
 004804F2    mov         ecx,dword ptr [ebp-38]
 004804F5    mov         edx,1
 004804FA    mov         eax,dword ptr [ebp-2C]
 004804FD    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 00480500    call        00418328
 00480505    mov         edx,dword ptr [ebp-30]
 00480508    mov         ecx,dword ptr [edx+0C]
 0048050B    mov         dword ptr [ebp-3C],ecx
 0048050E    mov         eax,dword ptr [ebp-3C]
 00480511    test        eax,eax
>00480513    je          00480533
 00480515    mov         edx,dword ptr [ebp-3C]
 00480518    mov         eax,dword ptr [ebp-2C]
 0048051B    call        004768C8
 00480520    mov         ecx,dword ptr [ebp-3C]
 00480523    mov         edx,1
 00480528    mov         eax,dword ptr [ebp-2C]
 0048052B    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0048052E    call        00418328
 00480533    inc         dword ptr [ebp-34]
 00480536    mov         edx,dword ptr [ebp-34]
 00480539    mov         ecx,dword ptr ds:[6941DC];0x0 gvar_006941DC
 0048053F    cmp         edx,ecx
>00480541    jge         00480551
 00480543    mov         eax,dword ptr [ebp-2C]
 00480546    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00480549    test        dl,dl
>0048054B    je          004804B2
 00480551    mov         eax,dword ptr [ebp-2C]
 00480554    call        004768BC
 00480559    lea         ecx,[ebp-4]
 0048055C    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 00480562    mov         eax,dword ptr [ebp-2C]
 00480565    call        0047673C
 0048056A    mov         dword ptr [ebp-40],eax
 0048056D    mov         word ptr [ebp-18],8
 00480573    mov         ecx,dword ptr ds:[6ECB40];0x0 gvar_006ECB40
 00480579    mov         edx,1
 0048057E    mov         eax,dword ptr [ebp-2C]
 00480581    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 00480584    call        00418328
 00480589    xor         edx,edx
 0048058B    mov         dword ptr [ebp-48],edx
>0048058E    jmp         0048064B
 00480593    mov         ecx,dword ptr [ebp-48]
 00480596    mov         eax,dword ptr [ebp-40]
 00480599    and         ecx,eax
>0048059B    jne         004805A5
 0048059D    mov         eax,dword ptr [ebp-2C]
 004805A0    call        0047688C
 004805A5    mov         eax,dword ptr [ebp-48]
 004805A8    call        00531360
 004805AD    call        0053A308
 004805B2    mov         dword ptr [ebp-4C],eax
 004805B5    mov         word ptr [ebp-18],8
 004805BB    mov         edx,dword ptr [ebp-4C]
 004805BE    test        edx,edx
>004805C0    je          00480648
 004805C6    mov         ecx,dword ptr [ebp-4C]
 004805C9    mov         al,byte ptr [ecx+5]
 004805CC    cmp         al,23
>004805CE    jne         00480648
 004805D0    mov         eax,dword ptr [ebp-48]
 004805D3    call        00531360
 004805D8    mov         dword ptr [ebp-44],eax
 004805DB    mov         edx,dword ptr [ebp-44]
 004805DE    mov         eax,dword ptr [ebp-2C]
 004805E1    call        00476A00
 004805E6    mov         edx,dword ptr [ebp-2C]
 004805E9    add         edx,0D;TAnalyzeThread.FTerminated:Boolean
 004805EC    push        edx
 004805ED    mov         ecx,dword ptr [ebp-44]
 004805F0    mov         edx,1
 004805F5    mov         eax,dword ptr [ebp-2C]
 004805F8    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 004805FB    call        00417380
 00480600    mov         edx,dword ptr [ebp-2C]
 00480603    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 00480606    test        cl,cl
>00480608    jne         00480666
 0048060A    mov         eax,dword ptr [ebp-2C]
 0048060D    add         eax,0D;TAnalyzeThread.FTerminated:Boolean
 00480610    push        eax
 00480611    mov         ecx,dword ptr [ebp-44]
 00480614    mov         edx,1
 00480619    mov         eax,dword ptr [ebp-2C]
 0048061C    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 0048061F    call        00417D3C
 00480624    mov         edx,dword ptr [ebp-2C]
 00480627    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 0048062A    test        cl,cl
>0048062C    jne         00480666
 0048062E    mov         eax,dword ptr [ebp-2C]
 00480631    add         eax,0D;TAnalyzeThread.FTerminated:Boolean
 00480634    push        eax
 00480635    mov         ecx,dword ptr [ebp-44]
 00480638    mov         edx,1
 0048063D    mov         eax,dword ptr [ebp-2C]
 00480640    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 00480643    call        00417F1C
 00480648    inc         dword ptr [ebp-48]
 0048064B    mov         edx,dword ptr [ebp-48]
 0048064E    mov         ecx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 00480654    cmp         edx,ecx
>00480656    jae         00480666
 00480658    mov         eax,dword ptr [ebp-2C]
 0048065B    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 0048065E    test        dl,dl
>00480660    je          00480593
 00480666    mov         eax,dword ptr [ebp-2C]
 00480669    call        004768BC
 0048066E    lea         ecx,[ebp-4]
 00480671    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 00480677    mov         eax,dword ptr [ebp-2C]
 0048067A    call        0047673C
 0048067F    mov         dword ptr [ebp-40],eax
 00480682    xor         edx,edx
 00480684    mov         dword ptr [ebp-50],edx
>00480687    jmp         004806DE
 00480689    mov         ecx,dword ptr [ebp-50]
 0048068C    mov         eax,dword ptr [ebp-40]
 0048068F    and         ecx,eax
>00480691    jne         0048069B
 00480693    mov         eax,dword ptr [ebp-2C]
 00480696    call        0047688C
 0048069B    mov         edx,dword ptr [ebp-50]
 0048069E    mov         eax,10
 004806A3    call        00532B74
 004806A8    test        al,al
>004806AA    je          004806DB
 004806AC    mov         eax,dword ptr [ebp-50]
 004806AF    call        00531360
 004806B4    mov         dword ptr [ebp-54],eax
 004806B7    mov         word ptr [ebp-18],8
 004806BD    mov         edx,dword ptr [ebp-54]
 004806C0    mov         eax,dword ptr [ebp-2C]
 004806C3    call        00476A00
 004806C8    mov         ecx,dword ptr [ebp-54]
 004806CB    mov         edx,1
 004806D0    mov         eax,dword ptr [ebp-2C]
 004806D3    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 004806D6    call        00418328
 004806DB    inc         dword ptr [ebp-50]
 004806DE    mov         edx,dword ptr [ebp-50]
 004806E1    mov         ecx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 004806E7    cmp         edx,ecx
>004806E9    jae         004806F5
 004806EB    mov         eax,dword ptr [ebp-2C]
 004806EE    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 004806F1    test        dl,dl
>004806F3    je          00480689
 004806F5    mov         eax,dword ptr [ebp-2C]
 004806F8    call        004768BC
 004806FD    dec         dword ptr [ebp-0C]
 00480700    lea         eax,[ebp-4]
 00480703    mov         edx,2
 00480708    call        0067DCA0
 0048070D    mov         ecx,dword ptr [ebp-28]
 00480710    mov         dword ptr fs:[0],ecx
 00480717    mov         esp,ebp
 00480719    pop         ebp
 0048071A    ret
*}
end;

//0048071C
{*procedure sub_0048071C(?:TAnalyzeThread; ?:?);
begin
 0048071C    push        ebp
 0048071D    mov         ebp,esp
 0048071F    add         esp,0FFFFFFBC
 00480722    mov         byte ptr [ebp-31],dl
 00480725    mov         dword ptr [ebp-30],eax
 00480728    mov         eax,6B4558
 0048072D    call        0066FECC
 00480732    mov         word ptr [ebp-1C],14
 00480738    mov         edx,6B2C61
 0048073D    lea         eax,[ebp-4]
 00480740    call        0067DAB4
 00480745    inc         dword ptr [ebp-10]
 00480748    lea         ecx,[ebp-4]
 0048074B    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 00480751    mov         eax,dword ptr [ebp-30]
 00480754    call        0047673C
 00480759    mov         dword ptr [ebp-3C],eax
 0048075C    dec         dword ptr [ebp-10]
 0048075F    lea         eax,[ebp-4]
 00480762    mov         edx,2
 00480767    call        0067DCA0
 0048076C    mov         word ptr [ebp-1C],8
 00480772    mov         ecx,dword ptr ds:[6ECB40];0x0 gvar_006ECB40
 00480778    mov         edx,2
 0048077D    mov         eax,dword ptr [ebp-30]
 00480780    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 00480783    call        00418328
 00480788    xor         edx,edx
 0048078A    mov         dword ptr [ebp-40],edx
>0048078D    jmp         0048081F
 00480792    mov         ecx,dword ptr [ebp-40]
 00480795    mov         eax,dword ptr [ebp-3C]
 00480798    and         ecx,eax
>0048079A    jne         004807A4
 0048079C    mov         eax,dword ptr [ebp-30]
 0048079F    call        0047688C
 004807A4    mov         edx,dword ptr [ebp-40]
 004807A7    mov         eax,10
 004807AC    call        00532B74
 004807B1    test        al,al
>004807B3    je          0048081C
 004807B5    mov         eax,dword ptr [ebp-40]
 004807B8    call        00531360
 004807BD    mov         dword ptr [ebp-44],eax
 004807C0    mov         word ptr [ebp-1C],8
 004807C6    mov         edx,dword ptr [ebp-44]
 004807C9    mov         eax,dword ptr [ebp-30]
 004807CC    call        00476A00
 004807D1    mov         dl,byte ptr [ebp-31]
 004807D4    test        dl,dl
>004807D6    je          00480809
 004807D8    mov         word ptr [ebp-1C],20
 004807DE    lea         eax,[ebp-8]
 004807E1    call        00401EA8
 004807E6    mov         ecx,eax
 004807E8    inc         dword ptr [ebp-10]
 004807EB    mov         edx,dword ptr [ebp-44]
 004807EE    mov         eax,dword ptr [ebp-30]
 004807F1    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 004807F4    call        0044E74C
 004807F9    dec         dword ptr [ebp-10]
 004807FC    lea         eax,[ebp-8]
 004807FF    mov         edx,2
 00480804    call        0067DCA0
 00480809    mov         ecx,dword ptr [ebp-44]
 0048080C    mov         edx,2
 00480811    mov         eax,dword ptr [ebp-30]
 00480814    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 00480817    call        00418328
 0048081C    inc         dword ptr [ebp-40]
 0048081F    mov         edx,dword ptr [ebp-40]
 00480822    mov         ecx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 00480828    cmp         edx,ecx
>0048082A    jae         0048083A
 0048082C    mov         eax,dword ptr [ebp-30]
 0048082F    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00480832    test        dl,dl
>00480834    je          00480792
 0048083A    mov         eax,dword ptr [ebp-30]
 0048083D    call        004768BC
 00480842    mov         edx,dword ptr [ebp-2C]
 00480845    mov         dword ptr fs:[0],edx
 0048084C    mov         esp,ebp
 0048084E    pop         ebp
 0048084F    ret
end;*}

//00480850
procedure sub_00480850(?:TAnalyzeThread);
begin
{*
 00480850    push        ebp
 00480851    mov         ebp,esp
 00480853    add         esp,0FFFFFED8
 00480859    mov         dword ptr [ebp-0E0],eax
 0048085F    mov         eax,6B4860
 00480864    call        0066FECC
 00480869    mov         word ptr [ebp-0CC],14
 00480872    mov         edx,6B2C75
 00480877    lea         eax,[ebp-4]
 0048087A    call        0067DAB4
 0048087F    inc         dword ptr [ebp-0C0]
 00480885    lea         ecx,[ebp-4]
 00480888    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 0048088E    mov         eax,dword ptr [ebp-0E0]
 00480894    call        0047673C
 00480899    mov         dword ptr [ebp-0EC],eax
 0048089F    dec         dword ptr [ebp-0C0]
 004808A5    lea         eax,[ebp-4]
 004808A8    mov         edx,2
 004808AD    call        0067DCA0
 004808B2    mov         word ptr [ebp-0CC],8
 004808BB    xor         ecx,ecx
 004808BD    mov         dword ptr [ebp-0F0],ecx
>004808C3    jmp         00481C83
 004808C8    mov         eax,dword ptr [ebp-0F0]
 004808CE    mov         edx,dword ptr [ebp-0EC]
 004808D4    and         eax,edx
>004808D6    jne         004808E3
 004808D8    mov         eax,dword ptr [ebp-0E0]
 004808DE    call        0047688C
 004808E3    mov         eax,dword ptr [ebp-0F0]
 004808E9    call        00531360
 004808EE    call        0053A308
 004808F3    mov         dword ptr [ebp-0E4],eax
 004808F9    mov         edx,dword ptr [ebp-0E4]
 004808FF    test        edx,edx
>00480901    je          00481C7C
 00480907    mov         eax,dword ptr [ebp-0E4]
 0048090D    call        004858C4
 00480912    test        al,al
>00480914    je          00481C7C
 0048091A    mov         edx,dword ptr [ebp-0E4]
 00480920    mov         cl,byte ptr [edx+5]
 00480923    mov         byte ptr [ebp-0F1],cl
 00480929    mov         word ptr [ebp-0CC],8
 00480932    mov         al,byte ptr [ebp-0F1]
 00480938    cmp         al,15
>0048093A    ja          00481C7C
 00480940    mov         dl,byte ptr [ebp-0F1]
 00480946    cmp         dl,7
>00480949    jne         00481C7C
 0048094F    mov         ecx,dword ptr [ebp-0F0]
 00480955    mov         dword ptr [ebp-0F8],ecx
 0048095B    add         dword ptr [ebp-0F8],4
 00480962    inc         dword ptr [ebp-0F8]
 00480968    mov         eax,[006941D4];0x0 gvar_006941D4
 0048096D    mov         edx,dword ptr [ebp-0F8]
 00480973    mov         cl,byte ptr [eax+edx]
 00480976    mov         byte ptr [ebp-0F9],cl
 0048097C    inc         dword ptr [ebp-0F8]
 00480982    mov         word ptr [ebp-0CC],2C
 0048098B    xor         ecx,ecx
 0048098D    mov         cl,byte ptr [ebp-0F9]
 00480993    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480999    mov         eax,dword ptr [ebp-0F8]
 0048099F    add         edx,eax
 004809A1    lea         eax,[ebp-8]
 004809A4    call        0067DB28
 004809A9    inc         dword ptr [ebp-0C0]
 004809AF    mov         word ptr [ebp-0CC],20
 004809B8    xor         edx,edx
 004809BA    mov         dl,byte ptr [ebp-0F9]
 004809C0    add         dword ptr [ebp-0F8],edx
 004809C6    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004809CC    mov         eax,dword ptr [ebp-0F8]
 004809D2    mov         edx,dword ptr [ecx+eax]
 004809D5    mov         dword ptr [ebp-100],edx
 004809DB    add         dword ptr [ebp-0F8],4
 004809E2    add         dword ptr [ebp-0F8],4
 004809E9    add         dword ptr [ebp-0F8],2
 004809F0    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004809F6    mov         eax,dword ptr [ebp-0F8]
 004809FC    mov         dl,byte ptr [ecx+eax]
 004809FF    mov         byte ptr [ebp-0F9],dl
 00480A05    inc         dword ptr [ebp-0F8]
 00480A0B    xor         ecx,ecx
 00480A0D    mov         cl,byte ptr [ebp-0F9]
 00480A13    add         dword ptr [ebp-0F8],ecx
 00480A19    mov         eax,[006941D4];0x0 gvar_006941D4
 00480A1E    mov         edx,dword ptr [ebp-0F8]
 00480A24    mov         cx,word ptr [eax+edx]
 00480A28    mov         word ptr [ebp-102],cx
 00480A2F    add         dword ptr [ebp-0F8],2
 00480A36    xor         eax,eax
 00480A38    mov         dword ptr [ebp-108],eax
>00480A3E    jmp         00481C3E
 00480A43    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480A49    mov         ecx,dword ptr [ebp-0F8]
 00480A4F    mov         eax,dword ptr [edx+ecx]
 00480A52    mov         dword ptr [ebp-10C],eax
 00480A58    mov         word ptr [ebp-0CC],20
 00480A61    add         dword ptr [ebp-0F8],4
 00480A68    mov         eax,dword ptr [ebp-10C]
 00480A6E    call        005312C8
 00480A73    mov         dword ptr [ebp-110],eax
 00480A79    add         dword ptr [ebp-110],4
 00480A80    inc         dword ptr [ebp-110]
 00480A86    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480A8C    mov         ecx,dword ptr [ebp-110]
 00480A92    mov         al,byte ptr [edx+ecx]
 00480A95    mov         byte ptr [ebp-0F9],al
 00480A9B    inc         dword ptr [ebp-110]
 00480AA1    mov         word ptr [ebp-0CC],44
 00480AAA    xor         ecx,ecx
 00480AAC    mov         cl,byte ptr [ebp-0F9]
 00480AB2    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480AB8    mov         eax,dword ptr [ebp-110]
 00480ABE    add         edx,eax
 00480AC0    lea         eax,[ebp-0C]
 00480AC3    call        0067DB28
 00480AC8    inc         dword ptr [ebp-0C0]
 00480ACE    mov         word ptr [ebp-0CC],38
 00480AD7    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480ADD    mov         ecx,dword ptr [ebp-0F8]
 00480AE3    mov         eax,dword ptr [edx+ecx]
 00480AE6    mov         dword ptr [ebp-114],eax
 00480AEC    add         dword ptr [ebp-0F8],4
 00480AF3    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480AF9    mov         ecx,dword ptr [ebp-0F8]
 00480AFF    mov         eax,dword ptr [edx+ecx]
 00480B02    mov         dword ptr [ebp-118],eax
 00480B08    add         dword ptr [ebp-0F8],4
 00480B0F    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480B15    mov         ecx,dword ptr [ebp-0F8]
 00480B1B    mov         eax,dword ptr [edx+ecx]
 00480B1E    mov         dword ptr [ebp-11C],eax
 00480B24    add         dword ptr [ebp-0F8],4
 00480B2B    add         dword ptr [ebp-0F8],4
 00480B32    add         dword ptr [ebp-0F8],4
 00480B39    add         dword ptr [ebp-0F8],2
 00480B40    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480B46    mov         ecx,dword ptr [ebp-0F8]
 00480B4C    mov         al,byte ptr [edx+ecx]
 00480B4F    mov         byte ptr [ebp-0F9],al
 00480B55    inc         dword ptr [ebp-0F8]
 00480B5B    mov         word ptr [ebp-0CC],50
 00480B64    xor         ecx,ecx
 00480B66    mov         cl,byte ptr [ebp-0F9]
 00480B6C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480B72    mov         eax,dword ptr [ebp-0F8]
 00480B78    add         edx,eax
 00480B7A    lea         eax,[ebp-10]
 00480B7D    call        0067DB28
 00480B82    inc         dword ptr [ebp-0C0]
 00480B88    mov         word ptr [ebp-0CC],38
 00480B91    xor         edx,edx
 00480B93    mov         dl,byte ptr [ebp-0F9]
 00480B99    add         dword ptr [ebp-0F8],edx
 00480B9F    test        dword ptr [ebp-114],0FFFFFF00
>00480BA9    je          0048106D
 00480BAF    mov         ecx,dword ptr [ebp-114]
 00480BB5    and         ecx,0FF000000
 00480BBB    cmp         ecx,0FF000000
>00480BC1    jne         00480C33
 00480BC3    mov         eax,dword ptr [ebp-114]
 00480BC9    and         eax,0FFFFFF
 00480BCE    mov         dword ptr [ebp-124],eax
 00480BD4    mov         eax,dword ptr [ebp-100]
 00480BDA    mov         edx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 00480BE0    add         eax,edx
 00480BE2    call        0053A308
 00480BE7    mov         dword ptr [ebp-0E8],eax
 00480BED    mov         ecx,dword ptr [ebp-0E8]
 00480BF3    test        ecx,ecx
>00480BF5    je          0048106D
 00480BFB    mov         eax,dword ptr [ebp-0E8]
 00480C01    mov         edx,dword ptr [eax+1A]
 00480C04    test        edx,edx
>00480C06    je          0048106D
 00480C0C    push        0B
 00480C0E    push        dword ptr [ebp-124]
 00480C14    push        0FF
 00480C16    push        dword ptr [ebp-10]
 00480C19    push        dword ptr [ebp-0C]
 00480C1C    xor         ecx,ecx
 00480C1E    xor         edx,edx
 00480C20    mov         eax,dword ptr [ebp-0E8]
 00480C26    mov         eax,dword ptr [eax+1A]
 00480C29    call        004830E8
>00480C2E    jmp         0048106D
 00480C33    mov         edx,dword ptr [ebp-114]
 00480C39    and         edx,0FF000000
 00480C3F    cmp         edx,0FE000000
>00480C45    jne         00480E96
 00480C4B    test        byte ptr [ebp-113],80
>00480C52    je          00480C6A
 00480C54    mov         ecx,dword ptr [ebp-114]
 00480C5A    and         ecx,0FFFF
 00480C60    neg         ecx
 00480C62    mov         dword ptr [ebp-120],ecx
>00480C68    jmp         00480C7B
 00480C6A    mov         eax,dword ptr [ebp-114]
 00480C70    and         eax,0FFFF
 00480C75    mov         dword ptr [ebp-120],eax
 00480C7B    mov         eax,dword ptr [ebp-100]
 00480C81    call        005312C8
 00480C86    mov         edx,dword ptr [ebp-120]
 00480C8C    add         eax,edx
 00480C8E    mov         dword ptr [ebp-110],eax
 00480C94    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00480C9A    mov         eax,dword ptr [ebp-110]
 00480CA0    mov         edx,dword ptr [ecx+eax]
 00480CA3    mov         dword ptr [ebp-114],edx
 00480CA9    mov         eax,dword ptr [ebp-114]
 00480CAF    call        0053A308
 00480CB4    mov         dword ptr [ebp-0E8],eax
 00480CBA    mov         edx,dword ptr [ebp-0E8]
 00480CC0    test        edx,edx
>00480CC2    jne         00480D0C
 00480CC4    push        26
 00480CC6    call        0066EAE4
 00480CCB    pop         ecx
 00480CCC    mov         dword ptr [ebp-14],eax
 00480CCF    test        eax,eax
>00480CD1    je          00480D01
 00480CD3    mov         word ptr [ebp-0CC],68
 00480CDC    mov         eax,dword ptr [ebp-114]
 00480CE2    call        005312C8
 00480CE7    mov         edx,eax
 00480CE9    mov         cl,29
 00480CEB    mov         eax,dword ptr [ebp-14]
 00480CEE    call        00485550
 00480CF3    mov         word ptr [ebp-0CC],5C
 00480CFC    mov         edx,dword ptr [ebp-14]
>00480CFF    jmp         00480D04
 00480D01    mov         edx,dword ptr [ebp-14]
 00480D04    mov         dword ptr [ebp-0E8],edx
>00480D0A    jmp         00480D53
 00480D0C    mov         eax,dword ptr [ebp-0E8]
 00480D12    mov         ecx,dword ptr [eax+1E]
 00480D15    test        ecx,ecx
>00480D17    jne         00480D53
 00480D19    push        18
 00480D1B    call        0066EAE4
 00480D20    pop         ecx
 00480D21    mov         dword ptr [ebp-18],eax
 00480D24    test        eax,eax
>00480D26    je          00480D47
 00480D28    mov         word ptr [ebp-0CC],80
 00480D31    mov         eax,dword ptr [ebp-18]
 00480D34    call        0048378C
 00480D39    mov         word ptr [ebp-0CC],74
 00480D42    mov         edx,dword ptr [ebp-18]
>00480D45    jmp         00480D4A
 00480D47    mov         edx,dword ptr [ebp-18]
 00480D4A    mov         eax,dword ptr [ebp-0E8]
 00480D50    mov         dword ptr [eax+1E],edx
 00480D53    mov         ecx,dword ptr [ebp-0E8]
 00480D59    mov         byte ptr [ecx+5],29
 00480D5D    lea         edx,[ebp-0C]
 00480D60    mov         eax,dword ptr [ebp-0E8]
 00480D66    add         eax,0A
 00480D69    call        0067DCD0
 00480D6E    mov         eax,dword ptr [ebp-0E8]
 00480D74    call        004858C4
 00480D79    test        al,al
>00480D7B    jne         00480E1E
 00480D81    mov         word ptr [ebp-0CC],8C
 00480D8A    lea         eax,[ebp-20]
 00480D8D    call        00401EA8
 00480D92    push        eax
 00480D93    inc         dword ptr [ebp-0C0]
 00480D99    mov         edx,6B2C95
 00480D9E    lea         eax,[ebp-1C]
 00480DA1    call        0067DAB4
 00480DA6    inc         dword ptr [ebp-0C0]
 00480DAC    lea         edx,[ebp-1C]
 00480DAF    lea         eax,[ebp-8]
 00480DB2    pop         ecx
 00480DB3    call        0067DCF8
 00480DB8    lea         edx,[ebp-20]
 00480DBB    push        edx
 00480DBC    lea         eax,[ebp-24]
 00480DBF    call        00401EA8
 00480DC4    mov         ecx,eax
 00480DC6    inc         dword ptr [ebp-0C0]
 00480DCC    lea         edx,[ebp-10]
 00480DCF    pop         eax
 00480DD0    call        0067DCF8
 00480DD5    lea         edx,[ebp-24]
 00480DD8    mov         edx,dword ptr [edx]
 00480DDA    mov         eax,dword ptr [ebp-0E8]
 00480DE0    call        00485974
 00480DE5    dec         dword ptr [ebp-0C0]
 00480DEB    lea         eax,[ebp-24]
 00480DEE    mov         edx,2
 00480DF3    call        0067DCA0
 00480DF8    dec         dword ptr [ebp-0C0]
 00480DFE    lea         eax,[ebp-20]
 00480E01    mov         edx,2
 00480E06    call        0067DCA0
 00480E0B    dec         dword ptr [ebp-0C0]
 00480E11    lea         eax,[ebp-1C]
 00480E14    mov         edx,2
 00480E19    call        0067DCA0
 00480E1E    mov         ecx,dword ptr [ebp-0E8]
 00480E24    mov         eax,dword ptr [ecx+1E]
 00480E27    or          dword ptr [eax],200000
 00480E2D    push        4
 00480E2F    mov         word ptr [ebp-0CC],98
 00480E38    mov         edx,6B2C9A
 00480E3D    lea         eax,[ebp-28]
 00480E40    call        0067DAB4
 00480E45    inc         dword ptr [ebp-0C0]
 00480E4B    push        dword ptr [eax]
 00480E4D    push        dword ptr [ebp-8]
 00480E50    xor         ecx,ecx
 00480E52    mov         dl,21
 00480E54    mov         eax,dword ptr [ebp-0E8]
 00480E5A    mov         eax,dword ptr [eax+1E]
 00480E5D    call        00483A34
 00480E62    dec         dword ptr [ebp-0C0]
 00480E68    lea         eax,[ebp-28]
 00480E6B    mov         edx,2
 00480E70    call        0067DCA0
 00480E75    push        0
 00480E77    push        0
 00480E79    push        0
 00480E7B    mov         ecx,dword ptr [ebp-0E0]
 00480E81    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 00480E84    xor         ecx,ecx
 00480E86    mov         edx,dword ptr [ebp-114]
 00480E8C    call        0043BCB8
>00480E91    jmp         0048106D
 00480E96    mov         eax,dword ptr [ebp-114]
 00480E9C    call        0053A308
 00480EA1    mov         dword ptr [ebp-0E8],eax
 00480EA7    mov         edx,dword ptr [ebp-0E8]
 00480EAD    test        edx,edx
>00480EAF    jne         00480EF9
 00480EB1    push        26
 00480EB3    call        0066EAE4
 00480EB8    pop         ecx
 00480EB9    mov         dword ptr [ebp-2C],eax
 00480EBC    test        eax,eax
>00480EBE    je          00480EEE
 00480EC0    mov         word ptr [ebp-0CC],0B0
 00480EC9    mov         eax,dword ptr [ebp-114]
 00480ECF    call        005312C8
 00480ED4    mov         edx,eax
 00480ED6    mov         cl,29
 00480ED8    mov         eax,dword ptr [ebp-2C]
 00480EDB    call        00485550
 00480EE0    mov         word ptr [ebp-0CC],0A4
 00480EE9    mov         edx,dword ptr [ebp-2C]
>00480EEC    jmp         00480EF1
 00480EEE    mov         edx,dword ptr [ebp-2C]
 00480EF1    mov         dword ptr [ebp-0E8],edx
>00480EF7    jmp         00480F40
 00480EF9    mov         eax,dword ptr [ebp-0E8]
 00480EFF    mov         ecx,dword ptr [eax+1E]
 00480F02    test        ecx,ecx
>00480F04    jne         00480F40
 00480F06    push        18
 00480F08    call        0066EAE4
 00480F0D    pop         ecx
 00480F0E    mov         dword ptr [ebp-30],eax
 00480F11    test        eax,eax
>00480F13    je          00480F34
 00480F15    mov         word ptr [ebp-0CC],0C8
 00480F1E    mov         eax,dword ptr [ebp-30]
 00480F21    call        0048378C
 00480F26    mov         word ptr [ebp-0CC],0BC
 00480F2F    mov         edx,dword ptr [ebp-30]
>00480F32    jmp         00480F37
 00480F34    mov         edx,dword ptr [ebp-30]
 00480F37    mov         eax,dword ptr [ebp-0E8]
 00480F3D    mov         dword ptr [eax+1E],edx
 00480F40    mov         ecx,dword ptr [ebp-0E8]
 00480F46    mov         byte ptr [ecx+5],29
 00480F4A    mov         eax,dword ptr [ebp-0E8]
 00480F50    call        004858C4
 00480F55    test        al,al
>00480F57    jne         00480FFA
 00480F5D    mov         word ptr [ebp-0CC],0D4
 00480F66    lea         eax,[ebp-38]
 00480F69    call        00401EA8
 00480F6E    push        eax
 00480F6F    inc         dword ptr [ebp-0C0]
 00480F75    mov         edx,6B2C9F
 00480F7A    lea         eax,[ebp-34]
 00480F7D    call        0067DAB4
 00480F82    inc         dword ptr [ebp-0C0]
 00480F88    lea         edx,[ebp-34]
 00480F8B    lea         eax,[ebp-8]
 00480F8E    pop         ecx
 00480F8F    call        0067DCF8
 00480F94    lea         edx,[ebp-38]
 00480F97    push        edx
 00480F98    lea         eax,[ebp-3C]
 00480F9B    call        00401EA8
 00480FA0    mov         ecx,eax
 00480FA2    inc         dword ptr [ebp-0C0]
 00480FA8    lea         edx,[ebp-10]
 00480FAB    pop         eax
 00480FAC    call        0067DCF8
 00480FB1    lea         edx,[ebp-3C]
 00480FB4    mov         edx,dword ptr [edx]
 00480FB6    mov         eax,dword ptr [ebp-0E8]
 00480FBC    call        00485974
 00480FC1    dec         dword ptr [ebp-0C0]
 00480FC7    lea         eax,[ebp-3C]
 00480FCA    mov         edx,2
 00480FCF    call        0067DCA0
 00480FD4    dec         dword ptr [ebp-0C0]
 00480FDA    lea         eax,[ebp-38]
 00480FDD    mov         edx,2
 00480FE2    call        0067DCA0
 00480FE7    dec         dword ptr [ebp-0C0]
 00480FED    lea         eax,[ebp-34]
 00480FF0    mov         edx,2
 00480FF5    call        0067DCA0
 00480FFA    mov         ecx,dword ptr [ebp-0E8]
 00481000    mov         eax,dword ptr [ecx+1E]
 00481003    or          dword ptr [eax],200000
 00481009    push        4
 0048100B    mov         word ptr [ebp-0CC],0E0
 00481014    mov         edx,6B2CA4
 00481019    lea         eax,[ebp-40]
 0048101C    call        0067DAB4
 00481021    inc         dword ptr [ebp-0C0]
 00481027    push        dword ptr [eax]
 00481029    push        dword ptr [ebp-8]
 0048102C    xor         ecx,ecx
 0048102E    mov         dl,21
 00481030    mov         eax,dword ptr [ebp-0E8]
 00481036    mov         eax,dword ptr [eax+1E]
 00481039    call        00483A34
 0048103E    dec         dword ptr [ebp-0C0]
 00481044    lea         eax,[ebp-40]
 00481047    mov         edx,2
 0048104C    call        0067DCA0
 00481051    push        0
 00481053    push        0
 00481055    push        0
 00481057    mov         ecx,dword ptr [ebp-0E0]
 0048105D    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 00481060    xor         ecx,ecx
 00481062    mov         edx,dword ptr [ebp-114]
 00481068    call        0043BCB8
 0048106D    test        dword ptr [ebp-118],0FFFFFF00
>00481077    je          004815BF
 0048107D    mov         eax,dword ptr [ebp-118]
 00481083    and         eax,0FF000000
 00481088    cmp         eax,0FF000000
>0048108D    jne         00481100
 0048108F    mov         edx,dword ptr [ebp-118]
 00481095    and         edx,0FFFFFF
 0048109B    mov         dword ptr [ebp-124],edx
 004810A1    mov         eax,dword ptr [ebp-100]
 004810A7    mov         edx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 004810AD    add         eax,edx
 004810AF    call        0053A308
 004810B4    mov         dword ptr [ebp-0E8],eax
 004810BA    mov         ecx,dword ptr [ebp-0E8]
 004810C0    test        ecx,ecx
>004810C2    je          004815BF
 004810C8    mov         eax,dword ptr [ebp-0E8]
 004810CE    mov         edx,dword ptr [eax+1A]
 004810D1    test        edx,edx
>004810D3    je          004815BF
 004810D9    push        0B
 004810DB    push        dword ptr [ebp-124]
 004810E1    push        0FF
 004810E3    push        dword ptr [ebp-10]
 004810E6    push        dword ptr [ebp-0C]
 004810E9    xor         ecx,ecx
 004810EB    xor         edx,edx
 004810ED    mov         eax,dword ptr [ebp-0E8]
 004810F3    mov         eax,dword ptr [eax+1A]
 004810F6    call        004830E8
>004810FB    jmp         004815BF
 00481100    mov         edx,dword ptr [ebp-118]
 00481106    and         edx,0FF000000
 0048110C    cmp         edx,0FE000000
>00481112    jne         0048139D
 00481118    test        byte ptr [ebp-117],80
>0048111F    je          00481137
 00481121    mov         ecx,dword ptr [ebp-118]
 00481127    and         ecx,0FFFF
 0048112D    neg         ecx
 0048112F    mov         dword ptr [ebp-120],ecx
>00481135    jmp         00481148
 00481137    mov         eax,dword ptr [ebp-118]
 0048113D    and         eax,0FFFF
 00481142    mov         dword ptr [ebp-120],eax
 00481148    mov         eax,dword ptr [ebp-100]
 0048114E    call        005312C8
 00481153    mov         edx,dword ptr [ebp-120]
 00481159    add         eax,edx
 0048115B    mov         dword ptr [ebp-110],eax
 00481161    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00481167    mov         eax,dword ptr [ebp-110]
 0048116D    mov         edx,dword ptr [ecx+eax]
 00481170    mov         dword ptr [ebp-118],edx
 00481176    mov         eax,dword ptr [ebp-118]
 0048117C    call        0053A308
 00481181    mov         dword ptr [ebp-0E8],eax
 00481187    mov         edx,dword ptr [ebp-0E8]
 0048118D    test        edx,edx
>0048118F    jne         004811D9
 00481191    push        26
 00481193    call        0066EAE4
 00481198    pop         ecx
 00481199    mov         dword ptr [ebp-44],eax
 0048119C    test        eax,eax
>0048119E    je          004811CE
 004811A0    mov         word ptr [ebp-0CC],0F8
 004811A9    mov         eax,dword ptr [ebp-118]
 004811AF    call        005312C8
 004811B4    mov         edx,eax
 004811B6    mov         cl,28
 004811B8    mov         eax,dword ptr [ebp-44]
 004811BB    call        00485550
 004811C0    mov         word ptr [ebp-0CC],0EC
 004811C9    mov         edx,dword ptr [ebp-44]
>004811CC    jmp         004811D1
 004811CE    mov         edx,dword ptr [ebp-44]
 004811D1    mov         dword ptr [ebp-0E8],edx
>004811D7    jmp         00481220
 004811D9    mov         eax,dword ptr [ebp-0E8]
 004811DF    mov         ecx,dword ptr [eax+1E]
 004811E2    test        ecx,ecx
>004811E4    jne         00481220
 004811E6    push        18
 004811E8    call        0066EAE4
 004811ED    pop         ecx
 004811EE    mov         dword ptr [ebp-48],eax
 004811F1    test        eax,eax
>004811F3    je          00481214
 004811F5    mov         word ptr [ebp-0CC],110
 004811FE    mov         eax,dword ptr [ebp-48]
 00481201    call        0048378C
 00481206    mov         word ptr [ebp-0CC],104
 0048120F    mov         edx,dword ptr [ebp-48]
>00481212    jmp         00481217
 00481214    mov         edx,dword ptr [ebp-48]
 00481217    mov         eax,dword ptr [ebp-0E8]
 0048121D    mov         dword ptr [eax+1E],edx
 00481220    mov         ecx,dword ptr [ebp-0E8]
 00481226    mov         byte ptr [ecx+5],28
 0048122A    mov         eax,dword ptr [ebp-0E8]
 00481230    call        004858C4
 00481235    test        al,al
>00481237    jne         004812DA
 0048123D    mov         word ptr [ebp-0CC],11C
 00481246    lea         eax,[ebp-50]
 00481249    call        00401EA8
 0048124E    push        eax
 0048124F    inc         dword ptr [ebp-0C0]
 00481255    mov         edx,6B2CA9
 0048125A    lea         eax,[ebp-4C]
 0048125D    call        0067DAB4
 00481262    inc         dword ptr [ebp-0C0]
 00481268    lea         edx,[ebp-4C]
 0048126B    lea         eax,[ebp-8]
 0048126E    pop         ecx
 0048126F    call        0067DCF8
 00481274    lea         edx,[ebp-50]
 00481277    push        edx
 00481278    lea         eax,[ebp-54]
 0048127B    call        00401EA8
 00481280    mov         ecx,eax
 00481282    inc         dword ptr [ebp-0C0]
 00481288    lea         edx,[ebp-10]
 0048128B    pop         eax
 0048128C    call        0067DCF8
 00481291    lea         edx,[ebp-54]
 00481294    mov         edx,dword ptr [edx]
 00481296    mov         eax,dword ptr [ebp-0E8]
 0048129C    call        00485974
 004812A1    dec         dword ptr [ebp-0C0]
 004812A7    lea         eax,[ebp-54]
 004812AA    mov         edx,2
 004812AF    call        0067DCA0
 004812B4    dec         dword ptr [ebp-0C0]
 004812BA    lea         eax,[ebp-50]
 004812BD    mov         edx,2
 004812C2    call        0067DCA0
 004812C7    dec         dword ptr [ebp-0C0]
 004812CD    lea         eax,[ebp-4C]
 004812D0    mov         edx,2
 004812D5    call        0067DCA0
 004812DA    mov         ecx,dword ptr [ebp-0E8]
 004812E0    mov         eax,dword ptr [ecx+1E]
 004812E3    or          dword ptr [eax],200000
 004812E9    push        4
 004812EB    mov         word ptr [ebp-0CC],128
 004812F4    mov         edx,6B2CAE
 004812F9    lea         eax,[ebp-58]
 004812FC    call        0067DAB4
 00481301    inc         dword ptr [ebp-0C0]
 00481307    push        dword ptr [eax]
 00481309    push        dword ptr [ebp-8]
 0048130C    xor         ecx,ecx
 0048130E    mov         dl,21
 00481310    mov         eax,dword ptr [ebp-0E8]
 00481316    mov         eax,dword ptr [eax+1E]
 00481319    call        00483A34
 0048131E    dec         dword ptr [ebp-0C0]
 00481324    lea         eax,[ebp-58]
 00481327    mov         edx,2
 0048132C    call        0067DCA0
 00481331    push        4
 00481333    mov         word ptr [ebp-0CC],134
 0048133C    mov         edx,6B2CB3
 00481341    lea         eax,[ebp-5C]
 00481344    call        0067DAB4
 00481349    inc         dword ptr [ebp-0C0]
 0048134F    push        dword ptr [eax]
 00481351    push        dword ptr [ebp-0C]
 00481354    mov         ecx,1
 00481359    mov         dl,21
 0048135B    mov         eax,dword ptr [ebp-0E8]
 00481361    mov         eax,dword ptr [eax+1E]
 00481364    call        00483A34
 00481369    dec         dword ptr [ebp-0C0]
 0048136F    lea         eax,[ebp-5C]
 00481372    mov         edx,2
 00481377    call        0067DCA0
 0048137C    push        0
 0048137E    push        0
 00481380    push        0
 00481382    mov         ecx,dword ptr [ebp-0E0]
 00481388    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 0048138B    xor         ecx,ecx
 0048138D    mov         edx,dword ptr [ebp-118]
 00481393    call        0043BCB8
>00481398    jmp         004815BF
 0048139D    mov         eax,dword ptr [ebp-118]
 004813A3    call        0053A308
 004813A8    mov         dword ptr [ebp-0E8],eax
 004813AE    mov         edx,dword ptr [ebp-0E8]
 004813B4    test        edx,edx
>004813B6    jne         00481400
 004813B8    push        26
 004813BA    call        0066EAE4
 004813BF    pop         ecx
 004813C0    mov         dword ptr [ebp-60],eax
 004813C3    test        eax,eax
>004813C5    je          004813F5
 004813C7    mov         word ptr [ebp-0CC],14C
 004813D0    mov         eax,dword ptr [ebp-118]
 004813D6    call        005312C8
 004813DB    mov         edx,eax
 004813DD    mov         cl,28
 004813DF    mov         eax,dword ptr [ebp-60]
 004813E2    call        00485550
 004813E7    mov         word ptr [ebp-0CC],140
 004813F0    mov         edx,dword ptr [ebp-60]
>004813F3    jmp         004813F8
 004813F5    mov         edx,dword ptr [ebp-60]
 004813F8    mov         dword ptr [ebp-0E8],edx
>004813FE    jmp         00481447
 00481400    mov         eax,dword ptr [ebp-0E8]
 00481406    mov         ecx,dword ptr [eax+1E]
 00481409    test        ecx,ecx
>0048140B    jne         00481447
 0048140D    push        18
 0048140F    call        0066EAE4
 00481414    pop         ecx
 00481415    mov         dword ptr [ebp-64],eax
 00481418    test        eax,eax
>0048141A    je          0048143B
 0048141C    mov         word ptr [ebp-0CC],164
 00481425    mov         eax,dword ptr [ebp-64]
 00481428    call        0048378C
 0048142D    mov         word ptr [ebp-0CC],158
 00481436    mov         edx,dword ptr [ebp-64]
>00481439    jmp         0048143E
 0048143B    mov         edx,dword ptr [ebp-64]
 0048143E    mov         eax,dword ptr [ebp-0E8]
 00481444    mov         dword ptr [eax+1E],edx
 00481447    mov         ecx,dword ptr [ebp-0E8]
 0048144D    mov         byte ptr [ecx+5],28
 00481451    mov         eax,dword ptr [ebp-0E8]
 00481457    call        004858C4
 0048145C    test        al,al
>0048145E    jne         00481501
 00481464    mov         word ptr [ebp-0CC],170
 0048146D    lea         eax,[ebp-6C]
 00481470    call        00401EA8
 00481475    push        eax
 00481476    inc         dword ptr [ebp-0C0]
 0048147C    mov         edx,6B2CB9
 00481481    lea         eax,[ebp-68]
 00481484    call        0067DAB4
 00481489    inc         dword ptr [ebp-0C0]
 0048148F    lea         edx,[ebp-68]
 00481492    lea         eax,[ebp-8]
 00481495    pop         ecx
 00481496    call        0067DCF8
 0048149B    lea         edx,[ebp-6C]
 0048149E    push        edx
 0048149F    lea         eax,[ebp-70]
 004814A2    call        00401EA8
 004814A7    mov         ecx,eax
 004814A9    inc         dword ptr [ebp-0C0]
 004814AF    lea         edx,[ebp-10]
 004814B2    pop         eax
 004814B3    call        0067DCF8
 004814B8    lea         edx,[ebp-70]
 004814BB    mov         edx,dword ptr [edx]
 004814BD    mov         eax,dword ptr [ebp-0E8]
 004814C3    call        00485974
 004814C8    dec         dword ptr [ebp-0C0]
 004814CE    lea         eax,[ebp-70]
 004814D1    mov         edx,2
 004814D6    call        0067DCA0
 004814DB    dec         dword ptr [ebp-0C0]
 004814E1    lea         eax,[ebp-6C]
 004814E4    mov         edx,2
 004814E9    call        0067DCA0
 004814EE    dec         dword ptr [ebp-0C0]
 004814F4    lea         eax,[ebp-68]
 004814F7    mov         edx,2
 004814FC    call        0067DCA0
 00481501    mov         ecx,dword ptr [ebp-0E8]
 00481507    mov         eax,dword ptr [ecx+1E]
 0048150A    or          dword ptr [eax],200000
 00481510    push        4
 00481512    mov         word ptr [ebp-0CC],17C
 0048151B    mov         edx,6B2CBE
 00481520    lea         eax,[ebp-74]
 00481523    call        0067DAB4
 00481528    inc         dword ptr [ebp-0C0]
 0048152E    push        dword ptr [eax]
 00481530    push        dword ptr [ebp-8]
 00481533    xor         ecx,ecx
 00481535    mov         dl,21
 00481537    mov         eax,dword ptr [ebp-0E8]
 0048153D    mov         eax,dword ptr [eax+1E]
 00481540    call        00483A34
 00481545    dec         dword ptr [ebp-0C0]
 0048154B    lea         eax,[ebp-74]
 0048154E    mov         edx,2
 00481553    call        0067DCA0
 00481558    push        4
 0048155A    mov         word ptr [ebp-0CC],188
 00481563    mov         edx,6B2CC3
 00481568    lea         eax,[ebp-78]
 0048156B    call        0067DAB4
 00481570    inc         dword ptr [ebp-0C0]
 00481576    push        dword ptr [eax]
 00481578    push        dword ptr [ebp-0C]
 0048157B    mov         ecx,1
 00481580    mov         dl,21
 00481582    mov         eax,dword ptr [ebp-0E8]
 00481588    mov         eax,dword ptr [eax+1E]
 0048158B    call        00483A34
 00481590    dec         dword ptr [ebp-0C0]
 00481596    lea         eax,[ebp-78]
 00481599    mov         edx,2
 0048159E    call        0067DCA0
 004815A3    push        0
 004815A5    push        0
 004815A7    push        0
 004815A9    mov         ecx,dword ptr [ebp-0E0]
 004815AF    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 004815B2    xor         ecx,ecx
 004815B4    mov         edx,dword ptr [ebp-118]
 004815BA    call        0043BCB8
 004815BF    test        dword ptr [ebp-11C],0FFFFFF00
>004815C9    je          00481C09
 004815CF    mov         eax,dword ptr [ebp-11C]
 004815D5    and         eax,0FF000000
 004815DA    cmp         eax,0FF000000
>004815DF    jne         00481652
 004815E1    mov         edx,dword ptr [ebp-11C]
 004815E7    and         edx,0FFFFFF
 004815ED    mov         dword ptr [ebp-124],edx
 004815F3    mov         eax,dword ptr [ebp-100]
 004815F9    mov         edx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 004815FF    add         eax,edx
 00481601    call        0053A308
 00481606    mov         dword ptr [ebp-0E8],eax
 0048160C    mov         ecx,dword ptr [ebp-0E8]
 00481612    test        ecx,ecx
>00481614    je          00481C09
 0048161A    mov         eax,dword ptr [ebp-0E8]
 00481620    mov         edx,dword ptr [eax+1A]
 00481623    test        edx,edx
>00481625    je          00481C09
 0048162B    push        0B
 0048162D    push        dword ptr [ebp-124]
 00481633    push        0FF
 00481635    push        dword ptr [ebp-10]
 00481638    push        dword ptr [ebp-0C]
 0048163B    xor         ecx,ecx
 0048163D    xor         edx,edx
 0048163F    mov         eax,dword ptr [ebp-0E8]
 00481645    mov         eax,dword ptr [eax+1A]
 00481648    call        004830E8
>0048164D    jmp         00481C09
 00481652    mov         edx,dword ptr [ebp-11C]
 00481658    and         edx,0FF000000
 0048165E    cmp         edx,0FE000000
>00481664    jne         0048195F
 0048166A    test        byte ptr [ebp-11B],80
>00481671    je          00481689
 00481673    mov         ecx,dword ptr [ebp-11C]
 00481679    and         ecx,0FFFF
 0048167F    neg         ecx
 00481681    mov         dword ptr [ebp-120],ecx
>00481687    jmp         0048169A
 00481689    mov         eax,dword ptr [ebp-11C]
 0048168F    and         eax,0FFFF
 00481694    mov         dword ptr [ebp-120],eax
 0048169A    mov         eax,dword ptr [ebp-100]
 004816A0    call        005312C8
 004816A5    mov         edx,dword ptr [ebp-120]
 004816AB    add         eax,edx
 004816AD    mov         dword ptr [ebp-110],eax
 004816B3    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004816B9    mov         eax,dword ptr [ebp-110]
 004816BF    mov         edx,dword ptr [ecx+eax]
 004816C2    mov         dword ptr [ebp-11C],edx
 004816C8    mov         eax,dword ptr [ebp-11C]
 004816CE    call        0053A308
 004816D3    mov         dword ptr [ebp-0E8],eax
 004816D9    mov         edx,dword ptr [ebp-0E8]
 004816DF    test        edx,edx
>004816E1    jne         0048172B
 004816E3    push        26
 004816E5    call        0066EAE4
 004816EA    pop         ecx
 004816EB    mov         dword ptr [ebp-7C],eax
 004816EE    test        eax,eax
>004816F0    je          00481720
 004816F2    mov         word ptr [ebp-0CC],1A0
 004816FB    mov         eax,dword ptr [ebp-11C]
 00481701    call        005312C8
 00481706    mov         edx,eax
 00481708    mov         cl,29
 0048170A    mov         eax,dword ptr [ebp-7C]
 0048170D    call        00485550
 00481712    mov         word ptr [ebp-0CC],194
 0048171B    mov         edx,dword ptr [ebp-7C]
>0048171E    jmp         00481723
 00481720    mov         edx,dword ptr [ebp-7C]
 00481723    mov         dword ptr [ebp-0E8],edx
>00481729    jmp         00481772
 0048172B    mov         eax,dword ptr [ebp-0E8]
 00481731    mov         ecx,dword ptr [eax+1E]
 00481734    test        ecx,ecx
>00481736    jne         00481772
 00481738    push        18
 0048173A    call        0066EAE4
 0048173F    pop         ecx
 00481740    mov         dword ptr [ebp-80],eax
 00481743    test        eax,eax
>00481745    je          00481766
 00481747    mov         word ptr [ebp-0CC],1B8
 00481750    mov         eax,dword ptr [ebp-80]
 00481753    call        0048378C
 00481758    mov         word ptr [ebp-0CC],1AC
 00481761    mov         edx,dword ptr [ebp-80]
>00481764    jmp         00481769
 00481766    mov         edx,dword ptr [ebp-80]
 00481769    mov         eax,dword ptr [ebp-0E8]
 0048176F    mov         dword ptr [eax+1E],edx
 00481772    mov         ecx,dword ptr [ebp-0E8]
 00481778    mov         byte ptr [ecx+5],29
 0048177C    mov         word ptr [ebp-0CC],1C4
 00481785    mov         edx,6B2CC9
 0048178A    lea         eax,[ebp-84]
 00481790    call        0067DAB4
 00481795    inc         dword ptr [ebp-0C0]
 0048179B    lea         edx,[ebp-84]
 004817A1    mov         eax,dword ptr [ebp-0E8]
 004817A7    add         eax,0A
 004817AA    call        0067DCD0
 004817AF    dec         dword ptr [ebp-0C0]
 004817B5    lea         eax,[ebp-84]
 004817BB    mov         edx,2
 004817C0    call        0067DCA0
 004817C5    mov         eax,dword ptr [ebp-0E8]
 004817CB    call        004858C4
 004817D0    test        al,al
>004817D2    jne         00481890
 004817D8    mov         word ptr [ebp-0CC],1D0
 004817E1    lea         eax,[ebp-8C]
 004817E7    call        00401EA8
 004817EC    push        eax
 004817ED    inc         dword ptr [ebp-0C0]
 004817F3    mov         edx,6B2CD1
 004817F8    lea         eax,[ebp-88]
 004817FE    call        0067DAB4
 00481803    inc         dword ptr [ebp-0C0]
 00481809    lea         edx,[ebp-88]
 0048180F    lea         eax,[ebp-8]
 00481812    pop         ecx
 00481813    call        0067DCF8
 00481818    lea         edx,[ebp-8C]
 0048181E    push        edx
 0048181F    lea         eax,[ebp-90]
 00481825    call        00401EA8
 0048182A    mov         ecx,eax
 0048182C    inc         dword ptr [ebp-0C0]
 00481832    lea         edx,[ebp-10]
 00481835    pop         eax
 00481836    call        0067DCF8
 0048183B    lea         edx,[ebp-90]
 00481841    mov         edx,dword ptr [edx]
 00481843    mov         eax,dword ptr [ebp-0E8]
 00481849    call        00485974
 0048184E    dec         dword ptr [ebp-0C0]
 00481854    lea         eax,[ebp-90]
 0048185A    mov         edx,2
 0048185F    call        0067DCA0
 00481864    dec         dword ptr [ebp-0C0]
 0048186A    lea         eax,[ebp-8C]
 00481870    mov         edx,2
 00481875    call        0067DCA0
 0048187A    dec         dword ptr [ebp-0C0]
 00481880    lea         eax,[ebp-88]
 00481886    mov         edx,2
 0048188B    call        0067DCA0
 00481890    mov         ecx,dword ptr [ebp-0E8]
 00481896    mov         eax,dword ptr [ecx+1E]
 00481899    or          dword ptr [eax],200000
 0048189F    push        4
 004818A1    mov         word ptr [ebp-0CC],1DC
 004818AA    mov         edx,6B2CDB
 004818AF    lea         eax,[ebp-94]
 004818B5    call        0067DAB4
 004818BA    inc         dword ptr [ebp-0C0]
 004818C0    push        dword ptr [eax]
 004818C2    push        dword ptr [ebp-8]
 004818C5    xor         ecx,ecx
 004818C7    mov         dl,21
 004818C9    mov         eax,dword ptr [ebp-0E8]
 004818CF    mov         eax,dword ptr [eax+1E]
 004818D2    call        00483A34
 004818D7    dec         dword ptr [ebp-0C0]
 004818DD    lea         eax,[ebp-94]
 004818E3    mov         edx,2
 004818E8    call        0067DCA0
 004818ED    push        4
 004818EF    mov         word ptr [ebp-0CC],1E8
 004818F8    mov         edx,6B2CE0
 004818FD    lea         eax,[ebp-98]
 00481903    call        0067DAB4
 00481908    inc         dword ptr [ebp-0C0]
 0048190E    push        dword ptr [eax]
 00481910    push        dword ptr [ebp-0C]
 00481913    mov         ecx,1
 00481918    mov         dl,21
 0048191A    mov         eax,dword ptr [ebp-0E8]
 00481920    mov         eax,dword ptr [eax+1E]
 00481923    call        00483A34
 00481928    dec         dword ptr [ebp-0C0]
 0048192E    lea         eax,[ebp-98]
 00481934    mov         edx,2
 00481939    call        0067DCA0
 0048193E    push        0
 00481940    push        0
 00481942    push        0
 00481944    mov         ecx,dword ptr [ebp-0E0]
 0048194A    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 0048194D    xor         ecx,ecx
 0048194F    mov         edx,dword ptr [ebp-11C]
 00481955    call        0043BCB8
>0048195A    jmp         00481C09
 0048195F    mov         eax,dword ptr [ebp-11C]
 00481965    call        0053A308
 0048196A    mov         dword ptr [ebp-0E8],eax
 00481970    mov         edx,dword ptr [ebp-0E8]
 00481976    test        edx,edx
>00481978    jne         004819CE
 0048197A    push        26
 0048197C    call        0066EAE4
 00481981    pop         ecx
 00481982    mov         dword ptr [ebp-9C],eax
 00481988    test        eax,eax
>0048198A    je          004819C0
 0048198C    mov         word ptr [ebp-0CC],200
 00481995    mov         eax,dword ptr [ebp-11C]
 0048199B    call        005312C8
 004819A0    mov         edx,eax
 004819A2    mov         cl,29
 004819A4    mov         eax,dword ptr [ebp-9C]
 004819AA    call        00485550
 004819AF    mov         word ptr [ebp-0CC],1F4
 004819B8    mov         edx,dword ptr [ebp-9C]
>004819BE    jmp         004819C6
 004819C0    mov         edx,dword ptr [ebp-9C]
 004819C6    mov         dword ptr [ebp-0E8],edx
>004819CC    jmp         00481A21
 004819CE    mov         eax,dword ptr [ebp-0E8]
 004819D4    mov         ecx,dword ptr [eax+1E]
 004819D7    test        ecx,ecx
>004819D9    jne         00481A21
 004819DB    push        18
 004819DD    call        0066EAE4
 004819E2    pop         ecx
 004819E3    mov         dword ptr [ebp-0A0],eax
 004819E9    test        eax,eax
>004819EB    je          00481A12
 004819ED    mov         word ptr [ebp-0CC],218
 004819F6    mov         eax,dword ptr [ebp-0A0]
 004819FC    call        0048378C
 00481A01    mov         word ptr [ebp-0CC],20C
 00481A0A    mov         edx,dword ptr [ebp-0A0]
>00481A10    jmp         00481A18
 00481A12    mov         edx,dword ptr [ebp-0A0]
 00481A18    mov         eax,dword ptr [ebp-0E8]
 00481A1E    mov         dword ptr [eax+1E],edx
 00481A21    mov         ecx,dword ptr [ebp-0E8]
 00481A27    mov         byte ptr [ecx+5],29
 00481A2B    mov         word ptr [ebp-0CC],224
 00481A34    mov         edx,6B2CE6
 00481A39    lea         eax,[ebp-0A4]
 00481A3F    call        0067DAB4
 00481A44    inc         dword ptr [ebp-0C0]
 00481A4A    lea         edx,[ebp-0A4]
 00481A50    mov         eax,dword ptr [ebp-0E8]
 00481A56    add         eax,0A
 00481A59    call        0067DCD0
 00481A5E    dec         dword ptr [ebp-0C0]
 00481A64    lea         eax,[ebp-0A4]
 00481A6A    mov         edx,2
 00481A6F    call        0067DCA0
 00481A74    mov         eax,dword ptr [ebp-0E8]
 00481A7A    call        004858C4
 00481A7F    test        al,al
>00481A81    jne         00481B3F
 00481A87    mov         word ptr [ebp-0CC],230
 00481A90    lea         eax,[ebp-0AC]
 00481A96    call        00401EA8
 00481A9B    push        eax
 00481A9C    inc         dword ptr [ebp-0C0]
 00481AA2    mov         edx,6B2CEE
 00481AA7    lea         eax,[ebp-0A8]
 00481AAD    call        0067DAB4
 00481AB2    inc         dword ptr [ebp-0C0]
 00481AB8    lea         edx,[ebp-0A8]
 00481ABE    lea         eax,[ebp-8]
 00481AC1    pop         ecx
 00481AC2    call        0067DCF8
 00481AC7    lea         edx,[ebp-0AC]
 00481ACD    push        edx
 00481ACE    lea         eax,[ebp-0B0]
 00481AD4    call        00401EA8
 00481AD9    mov         ecx,eax
 00481ADB    inc         dword ptr [ebp-0C0]
 00481AE1    lea         edx,[ebp-10]
 00481AE4    pop         eax
 00481AE5    call        0067DCF8
 00481AEA    lea         edx,[ebp-0B0]
 00481AF0    mov         edx,dword ptr [edx]
 00481AF2    mov         eax,dword ptr [ebp-0E8]
 00481AF8    call        00485974
 00481AFD    dec         dword ptr [ebp-0C0]
 00481B03    lea         eax,[ebp-0B0]
 00481B09    mov         edx,2
 00481B0E    call        0067DCA0
 00481B13    dec         dword ptr [ebp-0C0]
 00481B19    lea         eax,[ebp-0AC]
 00481B1F    mov         edx,2
 00481B24    call        0067DCA0
 00481B29    dec         dword ptr [ebp-0C0]
 00481B2F    lea         eax,[ebp-0A8]
 00481B35    mov         edx,2
 00481B3A    call        0067DCA0
 00481B3F    mov         ecx,dword ptr [ebp-0E8]
 00481B45    mov         eax,dword ptr [ecx+1E]
 00481B48    or          dword ptr [eax],200000
 00481B4E    push        4
 00481B50    mov         word ptr [ebp-0CC],23C
 00481B59    mov         edx,6B2CF8
 00481B5E    lea         eax,[ebp-0B4]
 00481B64    call        0067DAB4
 00481B69    inc         dword ptr [ebp-0C0]
 00481B6F    push        dword ptr [eax]
 00481B71    push        dword ptr [ebp-8]
 00481B74    xor         ecx,ecx
 00481B76    mov         dl,21
 00481B78    mov         eax,dword ptr [ebp-0E8]
 00481B7E    mov         eax,dword ptr [eax+1E]
 00481B81    call        00483A34
 00481B86    dec         dword ptr [ebp-0C0]
 00481B8C    lea         eax,[ebp-0B4]
 00481B92    mov         edx,2
 00481B97    call        0067DCA0
 00481B9C    push        4
 00481B9E    mov         word ptr [ebp-0CC],248
 00481BA7    mov         edx,6B2CFD
 00481BAC    lea         eax,[ebp-0B8]
 00481BB2    call        0067DAB4
 00481BB7    inc         dword ptr [ebp-0C0]
 00481BBD    push        dword ptr [eax]
 00481BBF    push        dword ptr [ebp-0C]
 00481BC2    mov         ecx,1
 00481BC7    mov         dl,21
 00481BC9    mov         eax,dword ptr [ebp-0E8]
 00481BCF    mov         eax,dword ptr [eax+1E]
 00481BD2    call        00483A34
 00481BD7    dec         dword ptr [ebp-0C0]
 00481BDD    lea         eax,[ebp-0B8]
 00481BE3    mov         edx,2
 00481BE8    call        0067DCA0
 00481BED    push        0
 00481BEF    push        0
 00481BF1    push        0
 00481BF3    mov         ecx,dword ptr [ebp-0E0]
 00481BF9    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 00481BFC    xor         ecx,ecx
 00481BFE    mov         edx,dword ptr [ebp-11C]
 00481C04    call        0043BCB8
 00481C09    dec         dword ptr [ebp-0C0]
 00481C0F    lea         eax,[ebp-10]
 00481C12    mov         edx,2
 00481C17    call        0067DCA0
 00481C1C    dec         dword ptr [ebp-0C0]
 00481C22    lea         eax,[ebp-0C]
 00481C25    mov         edx,2
 00481C2A    call        0067DCA0
 00481C2F    mov         word ptr [ebp-0CC],20
 00481C38    inc         dword ptr [ebp-108]
 00481C3E    movzx       ecx,word ptr [ebp-102]
 00481C45    mov         eax,dword ptr [ebp-108]
 00481C4B    cmp         ecx,eax
>00481C4D    jle         00481C60
 00481C4F    mov         edx,dword ptr [ebp-0E0]
 00481C55    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 00481C58    test        cl,cl
>00481C5A    je          00480A43
 00481C60    dec         dword ptr [ebp-0C0]
 00481C66    lea         eax,[ebp-8]
 00481C69    mov         edx,2
 00481C6E    call        0067DCA0
 00481C73    mov         word ptr [ebp-0CC],8
 00481C7C    add         dword ptr [ebp-0F0],4
 00481C83    mov         ecx,dword ptr [ebp-0F0]
 00481C89    mov         eax,[006ECB54];0x0 gvar_006ECB54
 00481C8E    cmp         ecx,eax
>00481C90    jae         00481CA3
 00481C92    mov         edx,dword ptr [ebp-0E0]
 00481C98    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 00481C9B    test        cl,cl
>00481C9D    je          004808C8
 00481CA3    mov         eax,dword ptr [ebp-0E0]
 00481CA9    call        004768BC
 00481CAE    mov         edx,dword ptr [ebp-0DC]
 00481CB4    mov         dword ptr fs:[0],edx
 00481CBB    mov         esp,ebp
 00481CBD    pop         ebp
 00481CBE    ret
*}
end;

//00481CC0
procedure sub_00481CC0(?:TAnalyzeThread);
begin
{*
 00481CC0    push        ebp
 00481CC1    mov         ebp,esp
 00481CC3    add         esp,0FFFFFFB4
 00481CC6    mov         dword ptr [ebp-38],eax
 00481CC9    mov         eax,6B4AE4
 00481CCE    call        0066FECC
 00481CD3    mov         edx,dword ptr [ebp-38]
 00481CD6    mov         ecx,dword ptr [edx+30];TAnalyzeThread.?f30:dword
 00481CD9    mov         eax,dword ptr [ecx+35C]
 00481CDF    mov         eax,dword ptr [eax+26C]
 00481CE5    call        TTreeNodes.Clear
 00481CEA    mov         edx,dword ptr ds:[6ECB6C];0x0 gvar_006ECB6C
 00481CF0    mov         ecx,dword ptr [edx+8]
 00481CF3    mov         dword ptr [ebp-40],ecx
 00481CF6    mov         eax,dword ptr [ebp-40]
 00481CF9    test        eax,eax
>00481CFB    jne         00481D0E
 00481CFD    mov         edx,dword ptr [ebp-34]
 00481D00    mov         dword ptr fs:[0],edx
 00481D07    mov         eax,edx
>00481D09    jmp         00481E75
 00481D0E    mov         word ptr [ebp-24],14
 00481D14    mov         edx,6B2D03
 00481D19    lea         eax,[ebp-4]
 00481D1C    call        0067DAB4
 00481D21    inc         dword ptr [ebp-18]
 00481D24    lea         ecx,[ebp-4]
 00481D27    mov         edx,dword ptr [ebp-40]
 00481D2A    mov         eax,dword ptr [ebp-38]
 00481D2D    call        0047673C
 00481D32    mov         dword ptr [ebp-44],eax
 00481D35    dec         dword ptr [ebp-18]
 00481D38    lea         eax,[ebp-4]
 00481D3B    mov         edx,2
 00481D40    call        0067DCA0
 00481D45    mov         word ptr [ebp-24],8
 00481D4B    mov         dl,1
 00481D4D    mov         eax,[006428B0];TStringList
 00481D52    call        0040BB0C
 00481D57    mov         dword ptr [ebp-48],eax
 00481D5A    xor         edx,edx
 00481D5C    mov         eax,dword ptr [ebp-48]
 00481D5F    call        0064859C
 00481D64    mov         ecx,dword ptr [ebp-38]
 00481D67    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 00481D6A    mov         edx,dword ptr [eax+35C]
 00481D70    mov         eax,dword ptr [edx+26C]
 00481D76    call        TTreeNodes.BeginUpdate
 00481D7B    xor         edx,edx
 00481D7D    mov         dword ptr [ebp-4C],edx
>00481D80    jmp         00481DF8
 00481D82    mov         ecx,dword ptr [ebp-4C]
 00481D85    mov         eax,dword ptr [ebp-44]
 00481D88    and         ecx,eax
>00481D8A    jne         00481D94
 00481D8C    mov         eax,dword ptr [ebp-38]
 00481D8F    call        0047688C
 00481D94    mov         edx,dword ptr [ebp-4C]
 00481D97    mov         eax,[006ECB6C];0x0 gvar_006ECB6C
 00481D9C    call        TList.Get
 00481DA1    mov         dword ptr [ebp-3C],eax
 00481DA4    mov         word ptr [ebp-24],20
 00481DAA    lea         eax,[ebp-8]
 00481DAD    call        00401EA8
 00481DB2    mov         edx,eax
 00481DB4    inc         dword ptr [ebp-18]
 00481DB7    mov         ecx,dword ptr [ebp-3C]
 00481DBA    mov         eax,dword ptr [ecx+4]
 00481DBD    call        00535C94
 00481DC2    lea         edx,[ebp-8]
 00481DC5    mov         eax,dword ptr [ebp-38]
 00481DC8    call        00476980
 00481DCD    dec         dword ptr [ebp-18]
 00481DD0    lea         eax,[ebp-8]
 00481DD3    mov         edx,2
 00481DD8    call        0067DCA0
 00481DDD    mov         ecx,dword ptr [ebp-38]
 00481DE0    add         ecx,0D;TAnalyzeThread.FTerminated:Boolean
 00481DE3    push        ecx
 00481DE4    mov         ecx,dword ptr [ebp-48]
 00481DE7    mov         edx,dword ptr [ebp-4C]
 00481DEA    mov         eax,dword ptr [ebp-38]
 00481DED    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 00481DF0    call        00454CE4
 00481DF5    inc         dword ptr [ebp-4C]
 00481DF8    mov         edx,dword ptr [ebp-4C]
 00481DFB    mov         ecx,dword ptr [ebp-40]
 00481DFE    cmp         edx,ecx
>00481E00    jge         00481E10
 00481E02    mov         eax,dword ptr [ebp-38]
 00481E05    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 00481E08    test        dl,dl
>00481E0A    je          00481D82
 00481E10    mov         ecx,dword ptr [ebp-38]
 00481E13    mov         eax,dword ptr [ecx+30];TAnalyzeThread.?f30:dword
 00481E16    mov         edx,dword ptr [eax+35C]
 00481E1C    mov         eax,dword ptr [edx+26C]
 00481E22    call        TTreeNodes.EndUpdate
 00481E27    mov         byte ptr ds:[6941AD],1;gvar_006941AD
 00481E2E    mov         byte ptr ds:[6ECB30],1;gvar_006ECB30
 00481E35    mov         edx,dword ptr [ebp-48]
 00481E38    mov         dword ptr [ebp-10],edx
 00481E3B    mov         ecx,dword ptr [ebp-10]
 00481E3E    test        ecx,ecx
>00481E40    je          00481E63
 00481E42    mov         eax,dword ptr [ebp-10]
 00481E45    mov         edx,dword ptr [eax]
 00481E47    mov         dword ptr [ebp-0C],edx
 00481E4A    mov         word ptr [ebp-24],38
 00481E50    mov         edx,3
 00481E55    mov         eax,dword ptr [ebp-10]
 00481E58    mov         ecx,dword ptr [eax]
 00481E5A    call        dword ptr [ecx-4]
 00481E5D    mov         word ptr [ebp-24],2C
 00481E63    mov         eax,dword ptr [ebp-38]
 00481E66    call        004768BC
 00481E6B    mov         edx,dword ptr [ebp-34]
 00481E6E    mov         dword ptr fs:[0],edx
 00481E75    mov         esp,ebp
 00481E77    pop         ebp
 00481E78    ret
*}
end;

//00481E7C
procedure sub_00481E7C(?:TAnalyzeThread);
begin
{*
 00481E7C    push        ebp
 00481E7D    mov         ebp,esp
 00481E7F    add         esp,0FFFFFE8C
 00481E85    mov         dword ptr [ebp-6C],eax
 00481E88    mov         eax,6B4C48
 00481E8D    call        0066FECC
 00481E92    mov         word ptr [ebp-58],8
 00481E98    lea         eax,[ebp-4]
 00481E9B    call        00401EA8
 00481EA0    inc         dword ptr [ebp-4C]
 00481EA3    mov         word ptr [ebp-58],14
 00481EA9    mov         word ptr [ebp-58],20
 00481EAF    lea         eax,[ebp-8]
 00481EB2    call        00401EA8
 00481EB7    inc         dword ptr [ebp-4C]
 00481EBA    mov         word ptr [ebp-58],14
 00481EC0    mov         edx,dword ptr ds:[6ECB6C];0x0 gvar_006ECB6C
 00481EC6    mov         ecx,dword ptr [edx+8]
 00481EC9    mov         dword ptr [ebp-0BC],ecx
 00481ECF    mov         eax,dword ptr [ebp-0BC]
 00481ED5    test        eax,eax
>00481ED7    jne         00481F08
 00481ED9    dec         dword ptr [ebp-4C]
 00481EDC    lea         eax,[ebp-8]
 00481EDF    mov         edx,2
 00481EE4    call        0067DCA0
 00481EE9    dec         dword ptr [ebp-4C]
 00481EEC    lea         eax,[ebp-4]
 00481EEF    mov         edx,2
 00481EF4    call        0067DCA0
 00481EF9    mov         ecx,dword ptr [ebp-68]
 00481EFC    mov         dword ptr fs:[0],ecx
>00481F03    jmp         0048282E
 00481F08    mov         word ptr [ebp-58],2C
 00481F0E    mov         edx,6B2D20
 00481F13    lea         eax,[ebp-0C]
 00481F16    call        0067DAB4
 00481F1B    inc         dword ptr [ebp-4C]
 00481F1E    lea         ecx,[ebp-0C]
 00481F21    mov         edx,dword ptr [ebp-0BC]
 00481F27    mov         eax,dword ptr [ebp-6C]
 00481F2A    call        0047673C
 00481F2F    mov         dword ptr [ebp-84],eax
 00481F35    dec         dword ptr [ebp-4C]
 00481F38    lea         eax,[ebp-0C]
 00481F3B    mov         edx,2
 00481F40    call        0067DCA0
 00481F45    xor         ecx,ecx
 00481F47    mov         dword ptr [ebp-70],ecx
>00481F4A    jmp         004821E1
 00481F4F    mov         eax,dword ptr [ebp-70]
 00481F52    mov         edx,dword ptr [ebp-84]
 00481F58    and         eax,edx
>00481F5A    jne         00481F64
 00481F5C    mov         eax,dword ptr [ebp-6C]
 00481F5F    call        0047688C
 00481F64    mov         edx,dword ptr [ebp-70]
 00481F67    mov         eax,[006ECB6C];0x0 gvar_006ECB6C
 00481F6C    call        TList.Get
 00481F71    mov         dword ptr [ebp-0A0],eax
 00481F77    mov         edx,dword ptr [ebp-0A0]
 00481F7D    mov         ecx,dword ptr [edx+4]
 00481F80    mov         dword ptr [ebp-8C],ecx
 00481F86    mov         word ptr [ebp-58],38
 00481F8C    lea         eax,[ebp-10]
 00481F8F    call        00401EA8
 00481F94    mov         edx,eax
 00481F96    inc         dword ptr [ebp-4C]
 00481F99    mov         eax,dword ptr [ebp-8C]
 00481F9F    call        00535C94
 00481FA4    lea         edx,[ebp-10]
 00481FA7    lea         eax,[ebp-4]
 00481FAA    call        0067DCD0
 00481FAF    dec         dword ptr [ebp-4C]
 00481FB2    lea         eax,[ebp-10]
 00481FB5    mov         edx,2
 00481FBA    call        0067DCA0
 00481FBF    lea         edx,[ebp-4]
 00481FC2    mov         eax,dword ptr [ebp-6C]
 00481FC5    call        00476980
 00481FCA    mov         eax,dword ptr [ebp-8C]
 00481FD0    call        005312C8
 00481FD5    mov         edx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 00481FDB    sub         eax,edx
 00481FDD    mov         ecx,dword ptr ds:[694250];0x0 gvar_00694250
 00481FE3    add         eax,ecx
 00481FE5    mov         dword ptr [ebp-80],eax
 00481FE8    mov         eax,[006941D4];0x0 gvar_006941D4
 00481FED    mov         edx,dword ptr [ebp-80]
 00481FF0    mov         ecx,dword ptr [eax+edx]
 00481FF3    mov         dword ptr [ebp-90],ecx
 00481FF9    mov         eax,dword ptr [ebp-90]
 00481FFF    call        00531EE8
 00482004    test        al,al
>00482006    je          0048209E
 0048200C    mov         eax,dword ptr [ebp-90]
 00482012    call        0053A308
 00482017    mov         dword ptr [ebp-0A4],eax
 0048201D    mov         edx,dword ptr [ebp-0A4]
 00482023    test        edx,edx
>00482025    je          0048209E
 00482027    mov         eax,dword ptr [ebp-0A4]
 0048202D    call        004858C4
 00482032    test        al,al
>00482034    jne         0048209E
 00482036    mov         edx,dword ptr [ebp-0A4]
 0048203C    mov         byte ptr [edx+5],27
 00482040    mov         word ptr [ebp-58],44
 00482046    lea         eax,[ebp-18]
 00482049    call        00401EA8
 0048204E    push        eax
 0048204F    inc         dword ptr [ebp-4C]
 00482052    mov         edx,6B2D52
 00482057    lea         eax,[ebp-14]
 0048205A    call        0067DAB4
 0048205F    inc         dword ptr [ebp-4C]
 00482062    lea         edx,[ebp-14]
 00482065    lea         eax,[ebp-4]
 00482068    pop         ecx
 00482069    call        0067DCF8
 0048206E    lea         edx,[ebp-18]
 00482071    mov         edx,dword ptr [edx]
 00482073    mov         eax,dword ptr [ebp-0A4]
 00482079    call        00485974
 0048207E    dec         dword ptr [ebp-4C]
 00482081    lea         eax,[ebp-18]
 00482084    mov         edx,2
 00482089    call        0067DCA0
 0048208E    dec         dword ptr [ebp-4C]
 00482091    lea         eax,[ebp-14]
 00482094    mov         edx,2
 00482099    call        0067DCA0
 0048209E    mov         eax,dword ptr [ebp-8C]
 004820A4    call        0053A308
 004820A9    mov         dword ptr [ebp-0A4],eax
 004820AF    mov         edx,dword ptr [ebp-0A4]
 004820B5    test        edx,edx
>004820B7    je          004821DE
 004820BD    mov         ecx,dword ptr [ebp-0A4]
 004820C3    mov         eax,dword ptr [ecx+12]
 004820C6    test        eax,eax
>004820C8    je          004821DE
 004820CE    xor         edx,edx
 004820D0    mov         dword ptr [ebp-74],edx
>004820D3    jmp         004821C7
 004820D8    mov         ecx,dword ptr [ebp-0A4]
 004820DE    mov         eax,dword ptr [ecx+12]
 004820E1    mov         edx,dword ptr [ebp-74]
 004820E4    call        TList.Get
 004820E9    mov         dword ptr [ebp-0C0],eax
 004820EF    mov         word ptr [ebp-58],14
 004820F5    mov         ecx,dword ptr [ebp-0C0]
 004820FB    mov         eax,dword ptr [ecx+1]
 004820FE    mov         edx,dword ptr [ebp-0C0]
 00482104    mov         ecx,dword ptr [edx+5]
 00482107    add         eax,ecx
 00482109    mov         dword ptr [ebp-90],eax
 0048210F    mov         eax,dword ptr [ebp-90]
 00482115    call        0053A308
 0048211A    mov         dword ptr [ebp-0A8],eax
 00482120    mov         edx,dword ptr [ebp-0A8]
 00482126    test        edx,edx
>00482128    je          004821C4
 0048212E    mov         eax,dword ptr [ebp-0A8]
 00482134    call        004858C4
 00482139    test        al,al
>0048213B    jne         004821C4
 00482141    mov         eax,dword ptr [ebp-90]
 00482147    call        005312C8
 0048214C    mov         edx,eax
 0048214E    mov         eax,10
 00482153    call        00532B74
 00482158    test        al,al
>0048215A    je          004821C4
 0048215C    mov         edx,dword ptr [ebp-0A8]
 00482162    mov         byte ptr [edx+5],26
 00482166    mov         word ptr [ebp-58],50
 0048216C    lea         eax,[ebp-20]
 0048216F    call        00401EA8
 00482174    push        eax
 00482175    inc         dword ptr [ebp-4C]
 00482178    mov         edx,6B2D5B
 0048217D    lea         eax,[ebp-1C]
 00482180    call        0067DAB4
 00482185    inc         dword ptr [ebp-4C]
 00482188    lea         edx,[ebp-1C]
 0048218B    lea         eax,[ebp-4]
 0048218E    pop         ecx
 0048218F    call        0067DCF8
 00482194    lea         edx,[ebp-20]
 00482197    mov         edx,dword ptr [edx]
 00482199    mov         eax,dword ptr [ebp-0A8]
 0048219F    call        00485974
 004821A4    dec         dword ptr [ebp-4C]
 004821A7    lea         eax,[ebp-20]
 004821AA    mov         edx,2
 004821AF    call        0067DCA0
 004821B4    dec         dword ptr [ebp-4C]
 004821B7    lea         eax,[ebp-1C]
 004821BA    mov         edx,2
 004821BF    call        0067DCA0
 004821C4    inc         dword ptr [ebp-74]
 004821C7    mov         ecx,dword ptr [ebp-0A4]
 004821CD    mov         eax,dword ptr [ecx+12]
 004821D0    mov         edx,dword ptr [eax+8]
 004821D3    mov         ecx,dword ptr [ebp-74]
 004821D6    cmp         edx,ecx
>004821D8    jg          004820D8
 004821DE    inc         dword ptr [ebp-70]
 004821E1    mov         eax,dword ptr [ebp-70]
 004821E4    mov         edx,dword ptr [ebp-0BC]
 004821EA    cmp         eax,edx
>004821EC    jge         004821FC
 004821EE    mov         ecx,dword ptr [ebp-6C]
 004821F1    mov         al,byte ptr [ecx+0D];TAnalyzeThread.FTerminated:Boolean
 004821F4    test        al,al
>004821F6    je          00481F4F
 004821FC    mov         eax,dword ptr [ebp-6C]
 004821FF    call        004768BC
 00482204    mov         word ptr [ebp-58],5C
 0048220A    mov         edx,6B2D63
 0048220F    lea         eax,[ebp-24]
 00482212    call        0067DAB4
 00482217    inc         dword ptr [ebp-4C]
 0048221A    lea         ecx,[ebp-24]
 0048221D    mov         edx,dword ptr [ebp-0BC]
 00482223    mov         eax,dword ptr [ebp-6C]
 00482226    call        0047673C
 0048222B    mov         dword ptr [ebp-84],eax
 00482231    dec         dword ptr [ebp-4C]
 00482234    lea         eax,[ebp-24]
 00482237    mov         edx,2
 0048223C    call        0067DCA0
 00482241    xor         ecx,ecx
 00482243    mov         dword ptr [ebp-70],ecx
>00482246    jmp         00482512
 0048224B    mov         eax,dword ptr [ebp-70]
 0048224E    mov         edx,dword ptr [ebp-84]
 00482254    and         eax,edx
>00482256    jne         00482260
 00482258    mov         eax,dword ptr [ebp-6C]
 0048225B    call        0047688C
 00482260    mov         edx,dword ptr [ebp-70]
 00482263    mov         eax,[006ECB6C];0x0 gvar_006ECB6C
 00482268    call        TList.Get
 0048226D    mov         dword ptr [ebp-0A0],eax
 00482273    mov         edx,dword ptr [ebp-0A0]
 00482279    mov         ecx,dword ptr [edx+4]
 0048227C    mov         dword ptr [ebp-8C],ecx
 00482282    mov         eax,dword ptr [ebp-8C]
 00482288    mov         edx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 0048228E    sub         eax,edx
 00482290    call        00536884
 00482295    mov         dword ptr [ebp-98],eax
 0048229B    mov         ecx,dword ptr [ebp-8C]
 004822A1    mov         eax,dword ptr [ebp-98]
 004822A7    cmp         ecx,eax
>004822A9    je          0048250F
 004822AF    mov         word ptr [ebp-58],68
 004822B5    lea         eax,[ebp-28]
 004822B8    call        00401EA8
 004822BD    mov         edx,eax
 004822BF    inc         dword ptr [ebp-4C]
 004822C2    mov         eax,dword ptr [ebp-8C]
 004822C8    call        00535C94
 004822CD    lea         edx,[ebp-28]
 004822D0    lea         eax,[ebp-4]
 004822D3    call        0067DCD0
 004822D8    dec         dword ptr [ebp-4C]
 004822DB    lea         eax,[ebp-28]
 004822DE    mov         edx,2
 004822E3    call        0067DCA0
 004822E8    lea         edx,[ebp-4]
 004822EB    mov         eax,dword ptr [ebp-6C]
 004822EE    call        00476980
 004822F3    mov         eax,dword ptr [ebp-8C]
 004822F9    call        005312C8
 004822FE    mov         edx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 00482304    sub         eax,edx
 00482306    mov         ecx,dword ptr ds:[694224];0x0 gvar_00694224
 0048230C    add         eax,ecx
 0048230E    add         eax,4
 00482311    mov         dword ptr [ebp-80],eax
 00482314    mov         eax,[00694224];0x0 gvar_00694224
 00482319    add         eax,4
 0048231C    mov         dword ptr [ebp-74],eax
 0048231F    mov         eax,dword ptr [ebp-80]
 00482322    call        00531360
 00482327    mov         edx,dword ptr [ebp-98]
 0048232D    cmp         eax,edx
>0048232F    je          0048250F
 00482335    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0048233B    mov         eax,dword ptr [ebp-80]
 0048233E    mov         edx,dword ptr [ecx+eax]
 00482341    mov         dword ptr [ebp-94],edx
 00482347    mov         ecx,dword ptr [ebp-74]
 0048234A    test        ecx,ecx
>0048234C    jl          00482502
 00482352    mov         eax,dword ptr [ebp-94]
 00482358    call        0053A308
 0048235D    mov         dword ptr [ebp-0A4],eax
 00482363    mov         edx,dword ptr [ebp-0A4]
 00482369    test        edx,edx
>0048236B    je          00482502
 00482371    mov         ecx,dword ptr [ebp-0A4]
 00482377    mov         al,byte ptr [ecx+5]
 0048237A    cmp         al,26
>0048237C    jne         00482502
 00482382    mov         eax,dword ptr [ebp-0A4]
 00482388    call        004858C4
 0048238D    test        al,al
>0048238F    jne         00482502
 00482395    mov         edx,dword ptr [ebp-8C]
 0048239B    mov         dword ptr [ebp-9C],edx
 004823A1    mov         ecx,dword ptr [ebp-9C]
 004823A7    test        ecx,ecx
>004823A9    je          00482502
 004823AF    push        dword ptr [ebp-74]
 004823B2    mov         eax,dword ptr [ebp-6C]
 004823B5    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 004823B8    mov         cl,56
 004823BA    mov         edx,dword ptr [ebp-9C]
 004823C0    call        00411AB0
 004823C5    mov         dword ptr [ebp-0B4],eax
 004823CB    mov         eax,dword ptr [ebp-0B4]
 004823D1    test        eax,eax
>004823D3    je          004824E3
 004823D9    mov         edx,dword ptr [ebp-0B4]
 004823DF    add         edx,0A
 004823E2    lea         eax,[ebp-8]
 004823E5    call        0067DCD0
 004823EA    mov         word ptr [ebp-58],74
 004823F0    mov         edx,6B2D85
 004823F5    lea         eax,[ebp-2C]
 004823F8    call        0067DAB4
 004823FD    inc         dword ptr [ebp-4C]
 00482400    lea         edx,[ebp-2C]
 00482403    lea         eax,[ebp-8]
 00482406    call        0067DD9C
 0048240B    push        eax
 0048240C    dec         dword ptr [ebp-4C]
 0048240F    lea         eax,[ebp-2C]
 00482412    mov         edx,2
 00482417    call        0067DCA0
 0048241C    pop         ecx
 0048241D    test        cl,cl
>0048241F    je          004824E3
 00482425    mov         word ptr [ebp-58],80
 0048242B    mov         edx,6B2D86
 00482430    lea         eax,[ebp-30]
 00482433    call        0067DAB4
 00482438    inc         dword ptr [ebp-4C]
 0048243B    lea         edx,[ebp-30]
 0048243E    lea         eax,[ebp-8]
 00482441    call        0067DEF4
 00482446    mov         dword ptr [ebp-7C],eax
 00482449    dec         dword ptr [ebp-4C]
 0048244C    lea         eax,[ebp-30]
 0048244F    mov         edx,2
 00482454    call        0067DCA0
 00482459    mov         ecx,dword ptr [ebp-7C]
 0048245C    test        ecx,ecx
>0048245E    je          004824D3
 00482460    mov         word ptr [ebp-58],8C
 00482466    lea         eax,[ebp-34]
 00482469    call        00401EA8
 0048246E    push        eax
 0048246F    inc         dword ptr [ebp-4C]
 00482472    lea         eax,[ebp-8]
 00482475    call        00405290
 0048247A    mov         ecx,eax
 0048247C    lea         eax,[ebp-8]
 0048247F    mov         edx,dword ptr [ebp-7C]
 00482482    call        0067E0BC
 00482487    lea         ecx,[ebp-34]
 0048248A    push        ecx
 0048248B    lea         eax,[ebp-38]
 0048248E    call        00401EA8
 00482493    mov         ecx,eax
 00482495    inc         dword ptr [ebp-4C]
 00482498    lea         eax,[ebp-4]
 0048249B    pop         edx
 0048249C    call        0067DCF8
 004824A1    lea         edx,[ebp-38]
 004824A4    mov         edx,dword ptr [edx]
 004824A6    mov         eax,dword ptr [ebp-0A4]
 004824AC    call        00485974
 004824B1    dec         dword ptr [ebp-4C]
 004824B4    lea         eax,[ebp-38]
 004824B7    mov         edx,2
 004824BC    call        0067DCA0
 004824C1    dec         dword ptr [ebp-4C]
 004824C4    lea         eax,[ebp-34]
 004824C7    mov         edx,2
 004824CC    call        0067DCA0
>004824D1    jmp         00482502
 004824D3    mov         edx,dword ptr [ebp-8]
 004824D6    mov         eax,dword ptr [ebp-0A4]
 004824DC    call        00485974
>004824E1    jmp         00482502
 004824E3    mov         eax,dword ptr [ebp-9C]
 004824E9    call        00535B28
 004824EE    mov         dword ptr [ebp-9C],eax
 004824F4    mov         edx,dword ptr [ebp-9C]
 004824FA    test        edx,edx
>004824FC    jne         004823AF
 00482502    add         dword ptr [ebp-74],4
 00482506    add         dword ptr [ebp-80],4
>0048250A    jmp         0048231F
 0048250F    inc         dword ptr [ebp-70]
 00482512    mov         ecx,dword ptr [ebp-70]
 00482515    mov         eax,dword ptr [ebp-0BC]
 0048251B    cmp         ecx,eax
>0048251D    jge         0048252D
 0048251F    mov         edx,dword ptr [ebp-6C]
 00482522    mov         cl,byte ptr [edx+0D];TAnalyzeThread.FTerminated:Boolean
 00482525    test        cl,cl
>00482527    je          0048224B
 0048252D    mov         eax,dword ptr [ebp-6C]
 00482530    call        004768BC
 00482535    mov         word ptr [ebp-58],98
 0048253B    mov         edx,6B2D88
 00482540    lea         eax,[ebp-3C]
 00482543    call        0067DAB4
 00482548    inc         dword ptr [ebp-4C]
 0048254B    lea         ecx,[ebp-3C]
 0048254E    mov         edx,dword ptr [ebp-0BC]
 00482554    mov         eax,dword ptr [ebp-6C]
 00482557    call        0047673C
 0048255C    mov         dword ptr [ebp-84],eax
 00482562    dec         dword ptr [ebp-4C]
 00482565    lea         eax,[ebp-3C]
 00482568    mov         edx,2
 0048256D    call        0067DCA0
 00482572    xor         ecx,ecx
 00482574    mov         dword ptr [ebp-70],ecx
>00482577    jmp         004827E1
 0048257C    mov         eax,dword ptr [ebp-70]
 0048257F    mov         edx,dword ptr [ebp-84]
 00482585    and         eax,edx
>00482587    jne         00482591
 00482589    mov         eax,dword ptr [ebp-6C]
 0048258C    call        0047688C
 00482591    mov         edx,dword ptr [ebp-70]
 00482594    mov         eax,[006ECB6C];0x0 gvar_006ECB6C
 00482599    call        TList.Get
 0048259E    mov         dword ptr [ebp-0A0],eax
 004825A4    mov         edx,dword ptr [ebp-0A0]
 004825AA    mov         ecx,dword ptr [edx+4]
 004825AD    mov         dword ptr [ebp-8C],ecx
 004825B3    mov         word ptr [ebp-58],0A4
 004825B9    lea         eax,[ebp-40]
 004825BC    call        00401EA8
 004825C1    mov         edx,eax
 004825C3    inc         dword ptr [ebp-4C]
 004825C6    mov         eax,dword ptr [ebp-8C]
 004825CC    call        00535C94
 004825D1    lea         edx,[ebp-40]
 004825D4    lea         eax,[ebp-4]
 004825D7    call        0067DCD0
 004825DC    dec         dword ptr [ebp-4C]
 004825DF    lea         eax,[ebp-40]
 004825E2    mov         edx,2
 004825E7    call        0067DCA0
 004825EC    lea         edx,[ebp-4]
 004825EF    mov         eax,dword ptr [ebp-6C]
 004825F2    call        00476980
 004825F7    mov         eax,dword ptr [ebp-8C]
 004825FD    call        0053A308
 00482602    mov         dword ptr [ebp-0A4],eax
 00482608    mov         edx,dword ptr [ebp-0A4]
 0048260E    test        edx,edx
>00482610    je          004827DE
 00482616    mov         ecx,dword ptr [ebp-0A4]
 0048261C    mov         eax,dword ptr [ecx+1A]
 0048261F    mov         edx,dword ptr [eax+8]
 00482622    test        edx,edx
>00482624    je          004827DE
 0048262A    xor         ecx,ecx
 0048262C    mov         dword ptr [ebp-74],ecx
>0048262F    jmp         004827C4
 00482634    mov         eax,dword ptr [ebp-0A4]
 0048263A    mov         edx,dword ptr [eax+1A]
 0048263D    mov         eax,dword ptr [edx+8]
 00482640    mov         edx,dword ptr [ebp-74]
 00482643    call        TList.Get
 00482648    mov         dword ptr [ebp-0B4],eax
 0048264E    mov         ecx,dword ptr [ebp-0B4]
 00482654    movsx       eax,byte ptr [ecx+1]
 00482658    cmp         eax,44
>0048265B    jne         004827C1
 00482661    mov         edx,dword ptr [ebp-0B4]
 00482667    mov         eax,dword ptr [edx+6]
 0048266A    call        0053A308
 0048266F    mov         dword ptr [ebp-0A8],eax
 00482675    mov         edx,dword ptr [ebp-0A8]
 0048267B    test        edx,edx
>0048267D    je          004827C1
 00482683    mov         eax,dword ptr [ebp-8C]
 00482689    call        00535B28
 0048268E    mov         dword ptr [ebp-9C],eax
 00482694    mov         edx,dword ptr [ebp-9C]
 0048269A    test        edx,edx
>0048269C    je          004827C1
 004826A2    mov         ecx,dword ptr [ebp-0B4]
 004826A8    push        dword ptr [ecx+2]
 004826AB    mov         eax,dword ptr [ebp-6C]
 004826AE    mov         eax,dword ptr [eax+30];TAnalyzeThread.?f30:dword
 004826B1    mov         cl,44
 004826B3    mov         edx,dword ptr [ebp-9C]
 004826B9    call        00411AB0
 004826BE    mov         dword ptr [ebp-0B8],eax
 004826C4    mov         eax,dword ptr [ebp-0B8]
 004826CA    test        eax,eax
>004826CC    je          004827A2
 004826D2    mov         edx,dword ptr [ebp-0B8]
 004826D8    mov         eax,dword ptr [edx+6]
 004826DB    call        0053A308
 004826E0    mov         dword ptr [ebp-0AC],eax
 004826E6    mov         edx,dword ptr [ebp-0AC]
 004826EC    test        edx,edx
>004826EE    je          004827A2
 004826F4    mov         ecx,dword ptr [ebp-0AC]
 004826FA    mov         eax,dword ptr [ecx+1E]
 004826FD    mov         edx,dword ptr [eax+10]
 00482700    test        edx,edx
>00482702    je          004827A2
 00482708    xor         ecx,ecx
 0048270A    mov         dword ptr [ebp-78],ecx
>0048270D    jmp         00482788
 0048270F    mov         eax,dword ptr [ebp-78]
 00482712    test        eax,eax
>00482714    jne         00482757
 00482716    push        4
 00482718    mov         word ptr [ebp-58],0B0
 0048271E    mov         edx,6B2DA5
 00482723    lea         eax,[ebp-44]
 00482726    call        0067DAB4
 0048272B    inc         dword ptr [ebp-4C]
 0048272E    push        dword ptr [eax]
 00482730    push        dword ptr [ebp-4]
 00482733    mov         edx,dword ptr [ebp-0A8]
 00482739    mov         eax,dword ptr [edx+1E]
 0048273C    xor         ecx,ecx
 0048273E    mov         dl,21
 00482740    call        00483A34
 00482745    dec         dword ptr [ebp-4C]
 00482748    lea         eax,[ebp-44]
 0048274B    mov         edx,2
 00482750    call        0067DCA0
>00482755    jmp         00482785
 00482757    mov         ecx,dword ptr [ebp-0AC]
 0048275D    mov         eax,dword ptr [ecx+1E]
 00482760    mov         eax,dword ptr [eax+10]
 00482763    mov         edx,dword ptr [ebp-78]
 00482766    call        TList.Get
 0048276B    mov         dword ptr [ebp-0B0],eax
 00482771    mov         ecx,dword ptr [ebp-0A8]
 00482777    mov         eax,dword ptr [ecx+1E]
 0048277A    mov         edx,dword ptr [ebp-0B0]
 00482780    call        004839E8
 00482785    inc         dword ptr [ebp-78]
 00482788    mov         ecx,dword ptr [ebp-0AC]
 0048278E    mov         eax,dword ptr [ecx+1E]
 00482791    mov         edx,dword ptr [eax+10]
 00482794    mov         ecx,dword ptr [edx+8]
 00482797    mov         eax,dword ptr [ebp-78]
 0048279A    cmp         ecx,eax
>0048279C    jg          0048270F
 004827A2    mov         eax,dword ptr [ebp-9C]
 004827A8    call        00535B28
 004827AD    mov         dword ptr [ebp-9C],eax
 004827B3    mov         edx,dword ptr [ebp-9C]
 004827B9    test        edx,edx
>004827BB    jne         004826A2
 004827C1    inc         dword ptr [ebp-74]
 004827C4    mov         ecx,dword ptr [ebp-0A4]
 004827CA    mov         eax,dword ptr [ecx+1A]
 004827CD    mov         edx,dword ptr [eax+8]
 004827D0    mov         ecx,dword ptr [edx+8]
 004827D3    mov         eax,dword ptr [ebp-74]
 004827D6    cmp         ecx,eax
>004827D8    jg          00482634
 004827DE    inc         dword ptr [ebp-70]
 004827E1    mov         edx,dword ptr [ebp-70]
 004827E4    mov         ecx,dword ptr [ebp-0BC]
 004827EA    cmp         edx,ecx
>004827EC    jge         004827FC
 004827EE    mov         eax,dword ptr [ebp-6C]
 004827F1    mov         dl,byte ptr [eax+0D];TAnalyzeThread.FTerminated:Boolean
 004827F4    test        dl,dl
>004827F6    je          0048257C
 004827FC    mov         eax,dword ptr [ebp-6C]
 004827FF    call        004768BC
 00482804    dec         dword ptr [ebp-4C]
 00482807    lea         eax,[ebp-8]
 0048280A    mov         edx,2
 0048280F    call        0067DCA0
 00482814    dec         dword ptr [ebp-4C]
 00482817    lea         eax,[ebp-4]
 0048281A    mov         edx,2
 0048281F    call        0067DCA0
 00482824    mov         ecx,dword ptr [ebp-68]
 00482827    mov         dword ptr fs:[0],ecx
 0048282E    mov         esp,ebp
 00482830    pop         ebp
 00482831    ret
*}
end;

end.