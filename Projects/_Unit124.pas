//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit124;

interface

uses
  SysUtils, Classes;

    procedure sub_0067C6FD;//0067C6FD
    //function sub_0067C804(?:EDivByZero; ?:?):?;//0067C804
    //function sub_0067C8B0(?:EIntOverflow; ?:?):?;//0067C8B0
    //function sub_0067C95C(?:EInvalidOp; ?:?):?;//0067C95C
    //function sub_0067CA08(?:EZeroDivide; ?:?):?;//0067CA08
    //function sub_0067CAB4(?:EOverflow; ?:?):?;//0067CAB4
    //function sub_0067CB60(?:EUnderflow; ?:?):?;//0067CB60
    //function sub_0067CC0C(?:EAccessViolation; ?:?):?;//0067CC0C
    //function sub_0067CCB8(?:EPrivilege; ?:?):?;//0067CCB8
    //function sub_0067CD64(?:EControlC; ?:?):?;//0067CD64
    //function sub_0067CE10(?:EStackOverflow; ?:?):?;//0067CE10
    //procedure sub_0067CEBC(?:Double; ?:?);//0067CEBC
    procedure sub_0067D958;//0067D958
    procedure sub_0067D9AC;//0067D9AC
    procedure sub_0067D9B4;//0067D9B4
    procedure sub_0067D9BC;//0067D9BC
    procedure sub_0067D9C4;//0067D9C4
    procedure sub_0067D9CC;//0067D9CC
    procedure sub_0067D9D4;//0067D9D4
    //function sub_0067D9DC:?;//0067D9DC
    procedure sub_0067D9E4;//0067D9E4
    procedure sub_0067D9EC;//0067D9EC
    procedure sub_0067D9F4;//0067D9F4
    procedure sub_0067D9FC;//0067D9FC
    procedure sub_0067DA04;//0067DA04
    procedure SaveToClipboardFormat;//0067DA0C
    procedure LoadFromClipboardFormat;//0067DA14
    procedure sub_0067DA1C;//0067DA1C
    procedure sub_0067DA24;//0067DA24
    //procedure sub_0067DA2C(?:?; ?:?);//0067DA2C
    //function sub_0067DAB4(?:Float):?;//0067DAB4
    //function sub_0067DAEC(?:dword):?;//0067DAEC
    //function sub_0067DB28(?:UINT; ?:?; ?:?):?;//0067DB28
    //function sub_0067DB84(?:?; ?:Pointer):?;//0067DB84
    //function sub_0067DBD0(?:?; ?:?):?;//0067DBD0
    //function sub_0067DC18(?:?; ?:Integer):?;//0067DC18
    //function sub_0067DC5C(?:?; ?:?):?;//0067DC5C
    //function sub_0067DCA0(?:AnsiString; ?:?):?;//0067DCA0
    //function sub_0067DCD0(?:AnsiString; ?:AnsiString):?;//0067DCD0
    //function sub_0067DCE4(?:AnsiString; ?:AnsiString):?;//0067DCE4
    //procedure sub_0067DCF8(?:AnsiString; ?:AnsiString; ?:?);//0067DCF8
    //function sub_0067DD84(?:AnsiString; ?:String):?;//0067DD84
    //function sub_0067DD9C(?:AnsiString; ?:String):?;//0067DD9C
    //procedure sub_0067DDB4(?:?; ?:?);//0067DDB4
    //procedure sub_0067DDCC(?:?; ?:?);//0067DDCC
    //procedure sub_0067DE40(?:?; ?:?; ?:?);//0067DE40
    //function sub_0067DE7C(?:?; ?:?; ?:?):?;//0067DE7C
    //function sub_0067DE98(?:?):?;//0067DE98
    //function sub_0067DEAC(?:?; ?:?; ?:?):?;//0067DEAC
    //function sub_0067DED4(?:AnsiString; ?:UINT):?;//0067DED4
    //function sub_0067DEF4(?:AnsiString; ?:AnsiString):?;//0067DEF4
    //procedure sub_0067DF18(?:?; ?:?);//0067DF18
    //procedure sub_0067E030(?:AnsiString; ?:?);//0067E030
    //procedure sub_0067E0BC(?:AnsiString; ?:?; ?:?; ?:?);//0067E0BC
    //function sub_0067E1A0(?:?):?;//0067E1A0
    //procedure sub_0067E1F0(?:?; ?:?);//0067E1F0
    //procedure sub_0067E264(?:?; ?:?);//0067E264
    //function sub_0067E2B8(?:AnsiString; ?:?):?;//0067E2B8
    //function sub_0067E32C(?:AnsiString):?;//0067E32C
    //procedure sub_0067E37C(?:?; ?:AnsiString; ?:?);//0067E37C
    //procedure sub_0067E404(?:?; ?:?);//0067E404
    //function sub_0067E488:?;//0067E488
    //function sub_0067E510(?:?; ?:?; ?:?):?;//0067E510
    //function sub_0067E5AC(?:?; ?:?):?;//0067E5AC
    //procedure sub_0067E5E8(?:?; ?:?; ?:?);//0067E5E8
    //function sub_0067E754(?:Double):?;//0067E754
    //function sub_0067E788(?:?; ?:?):?;//0067E788
    //function sub_0067E7D8(?:?; ?:?):?;//0067E7D8
    //function sub_0067E81C(?:?; ?:?):?;//0067E81C
    //function sub_0067E860(?:?; ?:AnsiString):?;//0067E860
    //function sub_0067E8B4(?:Double; ?:?):?;//0067E8B4
    //function sub_0067E8DC(?:Extended; ?:Single):?;//0067E8DC
    //function sub_0067E924(?:?):?;//0067E924
    //procedure sub_0067E984(?:?; ?:?);//0067E984
    procedure sub_0067EA24;//0067EA24
    //function sub_0067EA30(?:?):?;//0067EA30
    //procedure sub_0067EA44(?:?; ?:?; ?:?);//0067EA44
    //procedure sub_0067EAA4(?:?; ?:?; ?:?);//0067EAA4
    procedure sub_0067EBDC;//0067EBDC
    procedure sub_0067EC50;//0067EC50

implementation

//0067C6FD
procedure sub_0067C6FD;
begin
{*
 0067C6FD    push        ebx
 0067C6FE    mov         ebx,6E73B4
 0067C703    push        67D1D4
 0067C708    push        0
 0067C70A    push        1
 0067C70C    call        006706F4
 0067C711    add         esp,0C
 0067C714    mov         eax,dword ptr [eax+4]
 0067C717    mov         dword ptr [ebx+18],eax
 0067C71A    push        67D1B8
 0067C71F    push        0
 0067C721    push        1
 0067C723    call        006706F4
 0067C728    add         esp,0C
 0067C72B    mov         edx,dword ptr [eax+4]
 0067C72E    mov         dword ptr [ebx+20],edx
 0067C731    push        67D19C
 0067C736    push        0
 0067C738    push        1
 0067C73A    call        006706F4
 0067C73F    add         esp,0C
 0067C742    mov         ecx,dword ptr [eax+4]
 0067C745    mov         dword ptr [ebx+28],ecx
 0067C748    push        67D180
 0067C74D    push        0
 0067C74F    push        1
 0067C751    call        006706F4
 0067C756    add         esp,0C
 0067C759    mov         eax,dword ptr [eax+4]
 0067C75C    mov         dword ptr [ebx+30],eax
 0067C75F    push        67D164
 0067C764    push        0
 0067C766    push        1
 0067C768    call        006706F4
 0067C76D    add         esp,0C
 0067C770    mov         edx,dword ptr [eax+4]
 0067C773    mov         dword ptr [ebx+38],edx
 0067C776    push        67D14C
 0067C77B    push        0
 0067C77D    push        1
 0067C77F    call        006706F4
 0067C784    add         esp,0C
 0067C787    mov         ecx,dword ptr [eax+4]
 0067C78A    mov         dword ptr [ebx+40],ecx
 0067C78D    push        67D130
 0067C792    push        0
 0067C794    push        1
 0067C796    call        006706F4
 0067C79B    add         esp,0C
 0067C79E    mov         eax,dword ptr [eax+4]
 0067C7A1    mov         dword ptr [ebx+48],eax
 0067C7A4    push        67D110
 0067C7A9    push        0
 0067C7AB    push        1
 0067C7AD    call        006706F4
 0067C7B2    add         esp,0C
 0067C7B5    mov         edx,dword ptr [eax+4]
 0067C7B8    mov         dword ptr [ebx+58],edx
 0067C7BB    push        67D0F4
 0067C7C0    push        0
 0067C7C2    push        1
 0067C7C4    call        006706F4
 0067C7C9    add         esp,0C
 0067C7CC    mov         ecx,dword ptr [eax+4]
 0067C7CF    mov         dword ptr [ebx+60],ecx
 0067C7D2    push        67D0DC
 0067C7D7    push        0
 0067C7D9    push        1
 0067C7DB    call        006706F4
 0067C7E0    add         esp,0C
 0067C7E3    mov         eax,dword ptr [eax+4]
 0067C7E6    mov         dword ptr [ebx+68],eax
 0067C7E9    push        67D0BC
 0067C7EE    push        0
 0067C7F0    push        1
 0067C7F2    call        006706F4
 0067C7F7    add         esp,0C
 0067C7FA    mov         edx,dword ptr [eax+4]
 0067C7FD    mov         dword ptr [ebx+70],edx
 0067C800    pop         ebx
 0067C801    ret
*}
end;

//0067C804
{*function sub_0067C804(?:EDivByZero; ?:?):?;
begin
 0067C804    push        ebp
 0067C805    mov         ebp,esp
 0067C807    add         esp,0FFFFFFD0
 0067C80A    push        ebx
 0067C80B    mov         byte ptr [ebp-10],dl
 0067C80E    test        dl,dl
>0067C810    jle         0067C817
 0067C812    call        0067EF6C
 0067C817    mov         dword ptr [ebp-4],ecx
 0067C81A    mov         ebx,edx
 0067C81C    mov         dword ptr [ebp-8],eax
 0067C81F    mov         eax,6E7690
 0067C824    call        0066FECC
 0067C829    mov         dword ptr [ebp-14],1
 0067C830    lea         edx,[ebp-4]
 0067C833    lea         eax,[ebp-4]
 0067C836    call        0067DAEC
 0067C83B    inc         dword ptr [ebp-14]
 0067C83E    lea         edx,[ebp-4]
 0067C841    mov         word ptr [ebp-20],8
 0067C847    mov         word ptr [ebp-20],14
 0067C84D    mov         word ptr [ebp-20],20
 0067C853    lea         eax,[ebp-0C]
 0067C856    call        0067DAEC
 0067C85B    inc         dword ptr [ebp-14]
 0067C85E    mov         ecx,dword ptr [eax]
 0067C860    xor         edx,edx
 0067C862    mov         eax,dword ptr [ebp-8]
 0067C865    call        0054B368
 0067C86A    add         dword ptr [ebp-14],5
 0067C86E    dec         dword ptr [ebp-14]
 0067C871    lea         eax,[ebp-0C]
 0067C874    mov         edx,2
 0067C879    call        0067DCA0
 0067C87E    mov         word ptr [ebp-20],14
 0067C884    dec         dword ptr [ebp-14]
 0067C887    lea         eax,[ebp-4]
 0067C88A    mov         edx,2
 0067C88F    call        0067DCA0
 0067C894    mov         ecx,dword ptr [ebp-30]
 0067C897    mov         dword ptr fs:[0000],ecx
 0067C89D    mov         eax,dword ptr [ebp-8]
 0067C8A0    test        bl,bl
>0067C8A2    je          0067C8A9
 0067C8A4    call        0067EF79
 0067C8A9    pop         ebx
 0067C8AA    mov         esp,ebp
 0067C8AC    pop         ebp
 0067C8AD    ret
end;*}

//0067C8B0
{*function sub_0067C8B0(?:EIntOverflow; ?:?):?;
begin
 0067C8B0    push        ebp
 0067C8B1    mov         ebp,esp
 0067C8B3    add         esp,0FFFFFFD0
 0067C8B6    push        ebx
 0067C8B7    mov         byte ptr [ebp-10],dl
 0067C8BA    test        dl,dl
>0067C8BC    jle         0067C8C3
 0067C8BE    call        0067EF6C
 0067C8C3    mov         dword ptr [ebp-4],ecx
 0067C8C6    mov         ebx,edx
 0067C8C8    mov         dword ptr [ebp-8],eax
 0067C8CB    mov         eax,6E7760
 0067C8D0    call        0066FECC
 0067C8D5    mov         dword ptr [ebp-14],1
 0067C8DC    lea         edx,[ebp-4]
 0067C8DF    lea         eax,[ebp-4]
 0067C8E2    call        0067DAEC
 0067C8E7    inc         dword ptr [ebp-14]
 0067C8EA    lea         edx,[ebp-4]
 0067C8ED    mov         word ptr [ebp-20],8
 0067C8F3    mov         word ptr [ebp-20],14
 0067C8F9    mov         word ptr [ebp-20],20
 0067C8FF    lea         eax,[ebp-0C]
 0067C902    call        0067DAEC
 0067C907    inc         dword ptr [ebp-14]
 0067C90A    mov         ecx,dword ptr [eax]
 0067C90C    xor         edx,edx
 0067C90E    mov         eax,dword ptr [ebp-8]
 0067C911    call        0054B368
 0067C916    add         dword ptr [ebp-14],5
 0067C91A    dec         dword ptr [ebp-14]
 0067C91D    lea         eax,[ebp-0C]
 0067C920    mov         edx,2
 0067C925    call        0067DCA0
 0067C92A    mov         word ptr [ebp-20],14
 0067C930    dec         dword ptr [ebp-14]
 0067C933    lea         eax,[ebp-4]
 0067C936    mov         edx,2
 0067C93B    call        0067DCA0
 0067C940    mov         ecx,dword ptr [ebp-30]
 0067C943    mov         dword ptr fs:[0000],ecx
 0067C949    mov         eax,dword ptr [ebp-8]
 0067C94C    test        bl,bl
>0067C94E    je          0067C955
 0067C950    call        0067EF79
 0067C955    pop         ebx
 0067C956    mov         esp,ebp
 0067C958    pop         ebp
 0067C959    ret
end;*}

//0067C95C
{*function sub_0067C95C(?:EInvalidOp; ?:?):?;
begin
 0067C95C    push        ebp
 0067C95D    mov         ebp,esp
 0067C95F    add         esp,0FFFFFFD0
 0067C962    push        ebx
 0067C963    mov         byte ptr [ebp-10],dl
 0067C966    test        dl,dl
>0067C968    jle         0067C96F
 0067C96A    call        0067EF6C
 0067C96F    mov         dword ptr [ebp-4],ecx
 0067C972    mov         ebx,edx
 0067C974    mov         dword ptr [ebp-8],eax
 0067C977    mov         eax,6E77C8
 0067C97C    call        0066FECC
 0067C981    mov         dword ptr [ebp-14],1
 0067C988    lea         edx,[ebp-4]
 0067C98B    lea         eax,[ebp-4]
 0067C98E    call        0067DAEC
 0067C993    inc         dword ptr [ebp-14]
 0067C996    lea         edx,[ebp-4]
 0067C999    mov         word ptr [ebp-20],8
 0067C99F    mov         word ptr [ebp-20],14
 0067C9A5    mov         word ptr [ebp-20],20
 0067C9AB    lea         eax,[ebp-0C]
 0067C9AE    call        0067DAEC
 0067C9B3    inc         dword ptr [ebp-14]
 0067C9B6    mov         ecx,dword ptr [eax]
 0067C9B8    xor         edx,edx
 0067C9BA    mov         eax,dword ptr [ebp-8]
 0067C9BD    call        0067CEBC
 0067C9C2    add         dword ptr [ebp-14],5
 0067C9C6    dec         dword ptr [ebp-14]
 0067C9C9    lea         eax,[ebp-0C]
 0067C9CC    mov         edx,2
 0067C9D1    call        0067DCA0
 0067C9D6    mov         word ptr [ebp-20],14
 0067C9DC    dec         dword ptr [ebp-14]
 0067C9DF    lea         eax,[ebp-4]
 0067C9E2    mov         edx,2
 0067C9E7    call        0067DCA0
 0067C9EC    mov         ecx,dword ptr [ebp-30]
 0067C9EF    mov         dword ptr fs:[0000],ecx
 0067C9F5    mov         eax,dword ptr [ebp-8]
 0067C9F8    test        bl,bl
>0067C9FA    je          0067CA01
 0067C9FC    call        0067EF79
 0067CA01    pop         ebx
 0067CA02    mov         esp,ebp
 0067CA04    pop         ebp
 0067CA05    ret
end;*}

//0067CA08
{*function sub_0067CA08(?:EZeroDivide; ?:?):?;
begin
 0067CA08    push        ebp
 0067CA09    mov         ebp,esp
 0067CA0B    add         esp,0FFFFFFD0
 0067CA0E    push        ebx
 0067CA0F    mov         byte ptr [ebp-10],dl
 0067CA12    test        dl,dl
>0067CA14    jle         0067CA1B
 0067CA16    call        0067EF6C
 0067CA1B    mov         dword ptr [ebp-4],ecx
 0067CA1E    mov         ebx,edx
 0067CA20    mov         dword ptr [ebp-8],eax
 0067CA23    mov         eax,6E7830
 0067CA28    call        0066FECC
 0067CA2D    mov         dword ptr [ebp-14],1
 0067CA34    lea         edx,[ebp-4]
 0067CA37    lea         eax,[ebp-4]
 0067CA3A    call        0067DAEC
 0067CA3F    inc         dword ptr [ebp-14]
 0067CA42    lea         edx,[ebp-4]
 0067CA45    mov         word ptr [ebp-20],8
 0067CA4B    mov         word ptr [ebp-20],14
 0067CA51    mov         word ptr [ebp-20],20
 0067CA57    lea         eax,[ebp-0C]
 0067CA5A    call        0067DAEC
 0067CA5F    inc         dword ptr [ebp-14]
 0067CA62    mov         ecx,dword ptr [eax]
 0067CA64    xor         edx,edx
 0067CA66    mov         eax,dword ptr [ebp-8]
 0067CA69    call        0067CEBC
 0067CA6E    add         dword ptr [ebp-14],5
 0067CA72    dec         dword ptr [ebp-14]
 0067CA75    lea         eax,[ebp-0C]
 0067CA78    mov         edx,2
 0067CA7D    call        0067DCA0
 0067CA82    mov         word ptr [ebp-20],14
 0067CA88    dec         dword ptr [ebp-14]
 0067CA8B    lea         eax,[ebp-4]
 0067CA8E    mov         edx,2
 0067CA93    call        0067DCA0
 0067CA98    mov         ecx,dword ptr [ebp-30]
 0067CA9B    mov         dword ptr fs:[0000],ecx
 0067CAA1    mov         eax,dword ptr [ebp-8]
 0067CAA4    test        bl,bl
>0067CAA6    je          0067CAAD
 0067CAA8    call        0067EF79
 0067CAAD    pop         ebx
 0067CAAE    mov         esp,ebp
 0067CAB0    pop         ebp
 0067CAB1    ret
end;*}

//0067CAB4
{*function sub_0067CAB4(?:EOverflow; ?:?):?;
begin
 0067CAB4    push        ebp
 0067CAB5    mov         ebp,esp
 0067CAB7    add         esp,0FFFFFFD0
 0067CABA    push        ebx
 0067CABB    mov         byte ptr [ebp-10],dl
 0067CABE    test        dl,dl
>0067CAC0    jle         0067CAC7
 0067CAC2    call        0067EF6C
 0067CAC7    mov         dword ptr [ebp-4],ecx
 0067CACA    mov         ebx,edx
 0067CACC    mov         dword ptr [ebp-8],eax
 0067CACF    mov         eax,6E7898
 0067CAD4    call        0066FECC
 0067CAD9    mov         dword ptr [ebp-14],1
 0067CAE0    lea         edx,[ebp-4]
 0067CAE3    lea         eax,[ebp-4]
 0067CAE6    call        0067DAEC
 0067CAEB    inc         dword ptr [ebp-14]
 0067CAEE    lea         edx,[ebp-4]
 0067CAF1    mov         word ptr [ebp-20],8
 0067CAF7    mov         word ptr [ebp-20],14
 0067CAFD    mov         word ptr [ebp-20],20
 0067CB03    lea         eax,[ebp-0C]
 0067CB06    call        0067DAEC
 0067CB0B    inc         dword ptr [ebp-14]
 0067CB0E    mov         ecx,dword ptr [eax]
 0067CB10    xor         edx,edx
 0067CB12    mov         eax,dword ptr [ebp-8]
 0067CB15    call        0067CEBC
 0067CB1A    add         dword ptr [ebp-14],5
 0067CB1E    dec         dword ptr [ebp-14]
 0067CB21    lea         eax,[ebp-0C]
 0067CB24    mov         edx,2
 0067CB29    call        0067DCA0
 0067CB2E    mov         word ptr [ebp-20],14
 0067CB34    dec         dword ptr [ebp-14]
 0067CB37    lea         eax,[ebp-4]
 0067CB3A    mov         edx,2
 0067CB3F    call        0067DCA0
 0067CB44    mov         ecx,dword ptr [ebp-30]
 0067CB47    mov         dword ptr fs:[0000],ecx
 0067CB4D    mov         eax,dword ptr [ebp-8]
 0067CB50    test        bl,bl
>0067CB52    je          0067CB59
 0067CB54    call        0067EF79
 0067CB59    pop         ebx
 0067CB5A    mov         esp,ebp
 0067CB5C    pop         ebp
 0067CB5D    ret
end;*}

//0067CB60
{*function sub_0067CB60(?:EUnderflow; ?:?):?;
begin
 0067CB60    push        ebp
 0067CB61    mov         ebp,esp
 0067CB63    add         esp,0FFFFFFD0
 0067CB66    push        ebx
 0067CB67    mov         byte ptr [ebp-10],dl
 0067CB6A    test        dl,dl
>0067CB6C    jle         0067CB73
 0067CB6E    call        0067EF6C
 0067CB73    mov         dword ptr [ebp-4],ecx
 0067CB76    mov         ebx,edx
 0067CB78    mov         dword ptr [ebp-8],eax
 0067CB7B    mov         eax,6E7900
 0067CB80    call        0066FECC
 0067CB85    mov         dword ptr [ebp-14],1
 0067CB8C    lea         edx,[ebp-4]
 0067CB8F    lea         eax,[ebp-4]
 0067CB92    call        0067DAEC
 0067CB97    inc         dword ptr [ebp-14]
 0067CB9A    lea         edx,[ebp-4]
 0067CB9D    mov         word ptr [ebp-20],8
 0067CBA3    mov         word ptr [ebp-20],14
 0067CBA9    mov         word ptr [ebp-20],20
 0067CBAF    lea         eax,[ebp-0C]
 0067CBB2    call        0067DAEC
 0067CBB7    inc         dword ptr [ebp-14]
 0067CBBA    mov         ecx,dword ptr [eax]
 0067CBBC    xor         edx,edx
 0067CBBE    mov         eax,dword ptr [ebp-8]
 0067CBC1    call        0067CEBC
 0067CBC6    add         dword ptr [ebp-14],5
 0067CBCA    dec         dword ptr [ebp-14]
 0067CBCD    lea         eax,[ebp-0C]
 0067CBD0    mov         edx,2
 0067CBD5    call        0067DCA0
 0067CBDA    mov         word ptr [ebp-20],14
 0067CBE0    dec         dword ptr [ebp-14]
 0067CBE3    lea         eax,[ebp-4]
 0067CBE6    mov         edx,2
 0067CBEB    call        0067DCA0
 0067CBF0    mov         ecx,dword ptr [ebp-30]
 0067CBF3    mov         dword ptr fs:[0000],ecx
 0067CBF9    mov         eax,dword ptr [ebp-8]
 0067CBFC    test        bl,bl
>0067CBFE    je          0067CC05
 0067CC00    call        0067EF79
 0067CC05    pop         ebx
 0067CC06    mov         esp,ebp
 0067CC08    pop         ebp
 0067CC09    ret
end;*}

//0067CC0C
{*function sub_0067CC0C(?:EAccessViolation; ?:?):?;
begin
 0067CC0C    push        ebp
 0067CC0D    mov         ebp,esp
 0067CC0F    add         esp,0FFFFFFD0
 0067CC12    push        ebx
 0067CC13    mov         byte ptr [ebp-10],dl
 0067CC16    test        dl,dl
>0067CC18    jle         0067CC1F
 0067CC1A    call        0067EF6C
 0067CC1F    mov         dword ptr [ebp-4],ecx
 0067CC22    mov         ebx,edx
 0067CC24    mov         dword ptr [ebp-8],eax
 0067CC27    mov         eax,6E7968
 0067CC2C    call        0066FECC
 0067CC31    mov         dword ptr [ebp-14],1
 0067CC38    lea         edx,[ebp-4]
 0067CC3B    lea         eax,[ebp-4]
 0067CC3E    call        0067DAEC
 0067CC43    inc         dword ptr [ebp-14]
 0067CC46    lea         edx,[ebp-4]
 0067CC49    mov         word ptr [ebp-20],8
 0067CC4F    mov         word ptr [ebp-20],14
 0067CC55    mov         word ptr [ebp-20],20
 0067CC5B    lea         eax,[ebp-0C]
 0067CC5E    call        0067DAEC
 0067CC63    inc         dword ptr [ebp-14]
 0067CC66    mov         ecx,dword ptr [eax]
 0067CC68    xor         edx,edx
 0067CC6A    mov         eax,dword ptr [ebp-8]
 0067CC6D    call        0054B488
 0067CC72    add         dword ptr [ebp-14],4
 0067CC76    dec         dword ptr [ebp-14]
 0067CC79    lea         eax,[ebp-0C]
 0067CC7C    mov         edx,2
 0067CC81    call        0067DCA0
 0067CC86    mov         word ptr [ebp-20],14
 0067CC8C    dec         dword ptr [ebp-14]
 0067CC8F    lea         eax,[ebp-4]
 0067CC92    mov         edx,2
 0067CC97    call        0067DCA0
 0067CC9C    mov         ecx,dword ptr [ebp-30]
 0067CC9F    mov         dword ptr fs:[0000],ecx
 0067CCA5    mov         eax,dword ptr [ebp-8]
 0067CCA8    test        bl,bl
>0067CCAA    je          0067CCB1
 0067CCAC    call        0067EF79
 0067CCB1    pop         ebx
 0067CCB2    mov         esp,ebp
 0067CCB4    pop         ebp
 0067CCB5    ret
end;*}

//0067CCB8
{*function sub_0067CCB8(?:EPrivilege; ?:?):?;
begin
 0067CCB8    push        ebp
 0067CCB9    mov         ebp,esp
 0067CCBB    add         esp,0FFFFFFD0
 0067CCBE    push        ebx
 0067CCBF    mov         byte ptr [ebp-10],dl
 0067CCC2    test        dl,dl
>0067CCC4    jle         0067CCCB
 0067CCC6    call        0067EF6C
 0067CCCB    mov         dword ptr [ebp-4],ecx
 0067CCCE    mov         ebx,edx
 0067CCD0    mov         dword ptr [ebp-8],eax
 0067CCD3    mov         eax,6E79D0
 0067CCD8    call        0066FECC
 0067CCDD    mov         dword ptr [ebp-14],1
 0067CCE4    lea         edx,[ebp-4]
 0067CCE7    lea         eax,[ebp-4]
 0067CCEA    call        0067DAEC
 0067CCEF    inc         dword ptr [ebp-14]
 0067CCF2    lea         edx,[ebp-4]
 0067CCF5    mov         word ptr [ebp-20],8
 0067CCFB    mov         word ptr [ebp-20],14
 0067CD01    mov         word ptr [ebp-20],20
 0067CD07    lea         eax,[ebp-0C]
 0067CD0A    call        0067DAEC
 0067CD0F    inc         dword ptr [ebp-14]
 0067CD12    mov         ecx,dword ptr [eax]
 0067CD14    xor         edx,edx
 0067CD16    mov         eax,dword ptr [ebp-8]
 0067CD19    call        0054B488
 0067CD1E    add         dword ptr [ebp-14],4
 0067CD22    dec         dword ptr [ebp-14]
 0067CD25    lea         eax,[ebp-0C]
 0067CD28    mov         edx,2
 0067CD2D    call        0067DCA0
 0067CD32    mov         word ptr [ebp-20],14
 0067CD38    dec         dword ptr [ebp-14]
 0067CD3B    lea         eax,[ebp-4]
 0067CD3E    mov         edx,2
 0067CD43    call        0067DCA0
 0067CD48    mov         ecx,dword ptr [ebp-30]
 0067CD4B    mov         dword ptr fs:[0000],ecx
 0067CD51    mov         eax,dword ptr [ebp-8]
 0067CD54    test        bl,bl
>0067CD56    je          0067CD5D
 0067CD58    call        0067EF79
 0067CD5D    pop         ebx
 0067CD5E    mov         esp,ebp
 0067CD60    pop         ebp
 0067CD61    ret
end;*}

//0067CD64
{*function sub_0067CD64(?:EControlC; ?:?):?;
begin
 0067CD64    push        ebp
 0067CD65    mov         ebp,esp
 0067CD67    add         esp,0FFFFFFD0
 0067CD6A    push        ebx
 0067CD6B    mov         byte ptr [ebp-10],dl
 0067CD6E    test        dl,dl
>0067CD70    jle         0067CD77
 0067CD72    call        0067EF6C
 0067CD77    mov         dword ptr [ebp-4],ecx
 0067CD7A    mov         ebx,edx
 0067CD7C    mov         dword ptr [ebp-8],eax
 0067CD7F    mov         eax,6E7A38
 0067CD84    call        0066FECC
 0067CD89    mov         dword ptr [ebp-14],1
 0067CD90    lea         edx,[ebp-4]
 0067CD93    lea         eax,[ebp-4]
 0067CD96    call        0067DAEC
 0067CD9B    inc         dword ptr [ebp-14]
 0067CD9E    lea         edx,[ebp-4]
 0067CDA1    mov         word ptr [ebp-20],8
 0067CDA7    mov         word ptr [ebp-20],14
 0067CDAD    mov         word ptr [ebp-20],20
 0067CDB3    lea         eax,[ebp-0C]
 0067CDB6    call        0067DAEC
 0067CDBB    inc         dword ptr [ebp-14]
 0067CDBE    mov         ecx,dword ptr [eax]
 0067CDC0    xor         edx,edx
 0067CDC2    mov         eax,dword ptr [ebp-8]
 0067CDC5    call        0054B488
 0067CDCA    add         dword ptr [ebp-14],4
 0067CDCE    dec         dword ptr [ebp-14]
 0067CDD1    lea         eax,[ebp-0C]
 0067CDD4    mov         edx,2
 0067CDD9    call        0067DCA0
 0067CDDE    mov         word ptr [ebp-20],14
 0067CDE4    dec         dword ptr [ebp-14]
 0067CDE7    lea         eax,[ebp-4]
 0067CDEA    mov         edx,2
 0067CDEF    call        0067DCA0
 0067CDF4    mov         ecx,dword ptr [ebp-30]
 0067CDF7    mov         dword ptr fs:[0000],ecx
 0067CDFD    mov         eax,dword ptr [ebp-8]
 0067CE00    test        bl,bl
>0067CE02    je          0067CE09
 0067CE04    call        0067EF79
 0067CE09    pop         ebx
 0067CE0A    mov         esp,ebp
 0067CE0C    pop         ebp
 0067CE0D    ret
end;*}

//0067CE10
{*function sub_0067CE10(?:EStackOverflow; ?:?):?;
begin
 0067CE10    push        ebp
 0067CE11    mov         ebp,esp
 0067CE13    add         esp,0FFFFFFD0
 0067CE16    push        ebx
 0067CE17    mov         byte ptr [ebp-10],dl
 0067CE1A    test        dl,dl
>0067CE1C    jle         0067CE23
 0067CE1E    call        0067EF6C
 0067CE23    mov         dword ptr [ebp-4],ecx
 0067CE26    mov         ebx,edx
 0067CE28    mov         dword ptr [ebp-8],eax
 0067CE2B    mov         eax,6E7AA0
 0067CE30    call        0066FECC
 0067CE35    mov         dword ptr [ebp-14],1
 0067CE3C    lea         edx,[ebp-4]
 0067CE3F    lea         eax,[ebp-4]
 0067CE42    call        0067DAEC
 0067CE47    inc         dword ptr [ebp-14]
 0067CE4A    lea         edx,[ebp-4]
 0067CE4D    mov         word ptr [ebp-20],8
 0067CE53    mov         word ptr [ebp-20],14
 0067CE59    mov         word ptr [ebp-20],20
 0067CE5F    lea         eax,[ebp-0C]
 0067CE62    call        0067DAEC
 0067CE67    inc         dword ptr [ebp-14]
 0067CE6A    mov         ecx,dword ptr [eax]
 0067CE6C    xor         edx,edx
 0067CE6E    mov         eax,dword ptr [ebp-8]
 0067CE71    call        0054B488
 0067CE76    add         dword ptr [ebp-14],4
 0067CE7A    dec         dword ptr [ebp-14]
 0067CE7D    lea         eax,[ebp-0C]
 0067CE80    mov         edx,2
 0067CE85    call        0067DCA0
 0067CE8A    mov         word ptr [ebp-20],14
 0067CE90    dec         dword ptr [ebp-14]
 0067CE93    lea         eax,[ebp-4]
 0067CE96    mov         edx,2
 0067CE9B    call        0067DCA0
 0067CEA0    mov         ecx,dword ptr [ebp-30]
 0067CEA3    mov         dword ptr fs:[0000],ecx
 0067CEA9    mov         eax,dword ptr [ebp-8]
 0067CEAC    test        bl,bl
>0067CEAE    je          0067CEB5
 0067CEB0    call        0067EF79
 0067CEB5    pop         ebx
 0067CEB6    mov         esp,ebp
 0067CEB8    pop         ebp
 0067CEB9    ret
end;*}

//0067CEBC
{*procedure sub_0067CEBC(?:Double; ?:?);
begin
 0067CEBC    push        ebp
 0067CEBD    mov         ebp,esp
 0067CEBF    add         esp,0FFFFFFD0
 0067CEC2    push        ebx
 0067CEC3    mov         byte ptr [ebp-10],dl
 0067CEC6    test        dl,dl
>0067CEC8    jle         0067CECF
 0067CECA    call        0067EF6C
 0067CECF    mov         dword ptr [ebp-4],ecx
 0067CED2    mov         ebx,edx
 0067CED4    mov         dword ptr [ebp-8],eax
 0067CED7    mov         eax,6E7B70
 0067CEDC    call        0066FECC
 0067CEE1    mov         dword ptr [ebp-14],1
 0067CEE8    lea         edx,[ebp-4]
 0067CEEB    lea         eax,[ebp-4]
 0067CEEE    call        0067DAEC
 0067CEF3    inc         dword ptr [ebp-14]
 0067CEF6    lea         edx,[ebp-4]
 0067CEF9    mov         word ptr [ebp-20],8
 0067CEFF    mov         word ptr [ebp-20],14
 0067CF05    mov         word ptr [ebp-20],20
 0067CF0B    lea         eax,[ebp-0C]
 0067CF0E    call        0067DAEC
 0067CF13    inc         dword ptr [ebp-14]
 0067CF16    mov         ecx,dword ptr [eax]
 0067CF18    xor         edx,edx
 0067CF1A    mov         eax,dword ptr [ebp-8]
 0067CF1D    call        0054B488
 0067CF22    add         dword ptr [ebp-14],4
 0067CF26    dec         dword ptr [ebp-14]
 0067CF29    lea         eax,[ebp-0C]
 0067CF2C    mov         edx,2
 0067CF31    call        0067DCA0
 0067CF36    mov         word ptr [ebp-20],14
 0067CF3C    dec         dword ptr [ebp-14]
 0067CF3F    lea         eax,[ebp-4]
 0067CF42    mov         edx,2
 0067CF47    call        0067DCA0
 0067CF4C    mov         ecx,dword ptr [ebp-30]
 0067CF4F    mov         dword ptr fs:[0000],ecx
 0067CF55    mov         eax,dword ptr [ebp-8]
 0067CF58    test        bl,bl
>0067CF5A    je          0067CF61
 0067CF5C    call        0067EF79
 0067CF61    pop         ebx
 0067CF62    mov         esp,ebp
 0067CF64    pop         ebp
 0067CF65    ret
end;*}

//0067D958
procedure sub_0067D958;
begin
{*
 0067D958    push        ebp
 0067D959    mov         ebp,esp
 0067D95B    add         esp,0FFFFFFD8
 0067D95E    push        ebx
 0067D95F    call        0067EF81
 0067D964    mov         ebx,edx
 0067D966    mov         dword ptr [ebp-4],eax
 0067D969    mov         eax,6E7DD0
 0067D96E    call        0066FECC
 0067D973    mov         dword ptr [ebp-0C],4
 0067D97A    test        bl,bl
>0067D97C    jl          0067D992
 0067D97E    mov         word ptr [ebp-18],8
 0067D984    sub         dword ptr [ebp-0C],4
 0067D988    xor         edx,edx
 0067D98A    mov         eax,dword ptr [ebp-4]
 0067D98D    call        0054B78C
 0067D992    mov         edx,dword ptr [ebp-28]
 0067D995    mov         dword ptr fs:[0000],edx
 0067D99B    test        bl,bl
>0067D99D    jle         0067D9A7
 0067D99F    mov         eax,dword ptr [ebp-4]
 0067D9A2    call        0067EF74
 0067D9A7    pop         ebx
 0067D9A8    mov         esp,ebp
 0067D9AA    pop         ebp
 0067D9AB    ret
*}
end;

//0067D9AC
procedure sub_0067D9AC;
begin
{*
>0067D9AC    jmp         RegisterClass
*}
end;

//0067D9B4
procedure sub_0067D9B4;
begin
{*
>0067D9B4    jmp         005F17A8
*}
end;

//0067D9BC
procedure sub_0067D9BC;
begin
{*
>0067D9BC    jmp         005F92E0
*}
end;

//0067D9C4
procedure sub_0067D9C4;
begin
{*
>0067D9C4    jmp         005FBE14
*}
end;

//0067D9CC
procedure sub_0067D9CC;
begin
{*
>0067D9CC    jmp         005FE3B0
*}
end;

//0067D9D4
procedure sub_0067D9D4;
begin
{*
>0067D9D4    jmp         005F3C58
*}
end;

//0067D9DC
{*function sub_0067D9DC:?;
begin
>0067D9DC    jmp         005D85E4
end;*}

//0067D9E4
procedure sub_0067D9E4;
begin
{*
>0067D9E4    jmp         005D27FC
*}
end;

//0067D9EC
procedure sub_0067D9EC;
begin
{*
>0067D9EC    jmp         005C15A8
*}
end;

//0067D9F4
procedure sub_0067D9F4;
begin
{*
>0067D9F4    jmp         005C8578
*}
end;

//0067D9FC
procedure sub_0067D9FC;
begin
{*
>0067D9FC    jmp         TBitmap.SetHandle
*}
end;

//0067DA04
procedure sub_0067DA04;
begin
{*
>0067DA04    jmp         TCanvas.SetHandle
*}
end;

//0067DA0C
procedure TBltBitmap.SaveToClipboardFormat;
begin
{*
>0067DA0C    jmp         TBitmap.SaveToClipboardFormat
*}
end;

//0067DA14
procedure TBltBitmap.LoadFromClipboardFormat;
begin
{*
>0067DA14    jmp         TBitmap.LoadFromClipboardFormat
*}
end;

//0067DA1C
procedure sub_0067DA1C;
begin
{*
>0067DA1C    jmp         00653450
*}
end;

//0067DA24
procedure sub_0067DA24;
begin
{*
>0067DA24    jmp         00658258
*}
end;

//0067DA2C
{*procedure sub_0067DA2C(?:?; ?:?);
begin
 0067DA2C    push        ebp
 0067DA2D    mov         ebp,esp
 0067DA2F    add         esp,0FFFFFFD8
 0067DA32    push        ebx
 0067DA33    push        esi
 0067DA34    mov         esi,dword ptr [ebp+0C]
 0067DA37    mov         ebx,dword ptr [ebp+8]
 0067DA3A    mov         eax,6E87CC
 0067DA3F    call        0066FECC
 0067DA44    cmp         esi,1
>0067DA47    jl          0067DA54
 0067DA49    mov         eax,ebx
 0067DA4B    call        00405290
 0067DA50    cmp         esi,eax
>0067DA52    jle         0067DAA3
 0067DA54    lea         edx,[ebp-28]
 0067DA57    push        edx
 0067DA58    push        0
 0067DA5A    push        0
 0067DA5C    push        0
 0067DA5E    push        1
 0067DA60    push        54ABC0
 0067DA65    push        0
 0067DA67    mov         word ptr [ebp-18],8
 0067DA6D    lea         eax,[ebp-4]
 0067DA70    call        00401EA8
 0067DA75    mov         edx,eax
 0067DA77    inc         dword ptr [ebp-0C]
 0067DA7A    mov         eax,[0065EFBC];^gvar_006EA390
 0067DA7F    call        0067E404
 0067DA84    lea         ecx,[ebp-4]
 0067DA87    mov         ecx,dword ptr [ecx]
 0067DA89    mov         dl,1
 0067DA8B    mov         eax,[00656AA8];ERangeError
 0067DA90    call        0054AAB4
 0067DA95    push        eax
 0067DA96    push        54AB60
 0067DA9B    call        0067AD11
 0067DAA0    add         esp,24
 0067DAA3    mov         eax,dword ptr [ebp-28]
 0067DAA6    mov         fs:[00000000],eax
 0067DAAB    pop         esi
 0067DAAC    pop         ebx
 0067DAAD    mov         esp,ebp
 0067DAAF    pop         ebp
 0067DAB0    ret
end;*}

//0067DAB4
{*function sub_0067DAB4(?:Float):?;
begin
 0067DAB4    push        ebp
 0067DAB5    mov         ebp,esp
 0067DAB7    add         esp,0FFFFFFD8
 0067DABA    push        ebx
 0067DABB    mov         dword ptr [ebp-4],eax
 0067DABE    mov         eax,6E87F0
 0067DAC3    call        0066FECC
 0067DAC8    mov         word ptr [ebp-18],8
 0067DACE    xor         ecx,ecx
 0067DAD0    mov         eax,dword ptr [ebp-4]
 0067DAD3    mov         dword ptr [eax],ecx
 0067DAD5    call        @LStrFromPChar
 0067DADA    mov         edx,dword ptr [ebp-28]
 0067DADD    mov         dword ptr fs:[0000],edx
 0067DAE3    mov         eax,dword ptr [ebp-4]
 0067DAE6    pop         ebx
 0067DAE7    mov         esp,ebp
 0067DAE9    pop         ebp
 0067DAEA    ret
end;*}

//0067DAEC
{*function sub_0067DAEC(?:dword):?;
begin
 0067DAEC    push        ebp
 0067DAED    mov         ebp,esp
 0067DAEF    add         esp,0FFFFFFD8
 0067DAF2    push        ebx
 0067DAF3    mov         dword ptr [ebp-4],eax
 0067DAF6    mov         eax,6E8814
 0067DAFB    call        0066FECC
 0067DB00    mov         word ptr [ebp-18],8
 0067DB06    mov         edx,dword ptr [edx]
 0067DB08    xor         ecx,ecx
 0067DB0A    mov         eax,dword ptr [ebp-4]
 0067DB0D    mov         dword ptr [eax],ecx
 0067DB0F    call        @LStrAsg
 0067DB14    mov         edx,dword ptr [ebp-28]
 0067DB17    mov         dword ptr fs:[0000],edx
 0067DB1D    mov         eax,dword ptr [ebp-4]
 0067DB20    pop         ebx
 0067DB21    mov         esp,ebp
 0067DB23    pop         ebp
 0067DB24    ret
end;*}

//0067DB28
{*function sub_0067DB28(?:UINT; ?:?; ?:?):?;
begin
 0067DB28    push        ebp
 0067DB29    mov         ebp,esp
 0067DB2B    add         esp,0FFFFFFD8
 0067DB2E    push        ebx
 0067DB2F    push        esi
 0067DB30    mov         ebx,ecx
 0067DB32    mov         esi,edx
 0067DB34    mov         dword ptr [ebp-4],eax
 0067DB37    mov         eax,6E8838
 0067DB3C    call        0066FECC
 0067DB41    mov         word ptr [ebp-18],8
 0067DB47    mov         edx,dword ptr [ebp-4]
 0067DB4A    xor         ecx,ecx
 0067DB4C    mov         dword ptr [edx],ecx
 0067DB4E    mov         edx,ebx
 0067DB50    and         edx,7FFFFFFF
 0067DB56    mov         eax,dword ptr [ebp-4]
 0067DB59    call        0067DED4
 0067DB5E    and         ebx,7FFFFFFF
 0067DB64    push        ebx
 0067DB65    push        esi
 0067DB66    mov         ecx,dword ptr [ebp-4]
 0067DB69    push        dword ptr [ecx]
 0067DB6B    call        0066F894
 0067DB70    add         esp,0C
 0067DB73    mov         eax,dword ptr [ebp-28]
 0067DB76    mov         fs:[00000000],eax
 0067DB7B    mov         eax,dword ptr [ebp-4]
 0067DB7E    pop         esi
 0067DB7F    pop         ebx
 0067DB80    mov         esp,ebp
 0067DB82    pop         ebp
 0067DB83    ret
end;*}

//0067DB84
{*function sub_0067DB84(?:?; ?:Pointer):?;
begin
 0067DB84    push        ebp
 0067DB85    mov         ebp,esp
 0067DB87    add         esp,0FFFFFFD8
 0067DB8A    push        ebx
 0067DB8B    mov         ebx,edx
 0067DB8D    mov         dword ptr [ebp-4],eax
 0067DB90    mov         eax,6E885C
 0067DB95    call        0066FECC
 0067DB9A    mov         word ptr [ebp-18],8
 0067DBA0    mov         edx,dword ptr [ebp-4]
 0067DBA3    xor         ecx,ecx
 0067DBA5    mov         dword ptr [edx],ecx
 0067DBA7    xor         eax,eax
 0067DBA9    mov         al,bl
 0067DBAB    push        eax
 0067DBAC    push        6E8798
 0067DBB1    push        dword ptr [ebp-4]
 0067DBB4    call        0067DE7C
 0067DBB9    add         esp,0C
 0067DBBC    mov         edx,dword ptr [ebp-28]
 0067DBBF    mov         dword ptr fs:[0000],edx
 0067DBC5    mov         eax,dword ptr [ebp-4]
 0067DBC8    pop         ebx
 0067DBC9    mov         esp,ebp
 0067DBCB    pop         ebp
 0067DBCC    ret
end;*}

//0067DBD0
{*function sub_0067DBD0(?:?; ?:?):?;
begin
 0067DBD0    push        ebp
 0067DBD1    mov         ebp,esp
 0067DBD3    add         esp,0FFFFFFD8
 0067DBD6    push        ebx
 0067DBD7    mov         ebx,edx
 0067DBD9    mov         dword ptr [ebp-4],eax
 0067DBDC    mov         eax,6E8880
 0067DBE1    call        0066FECC
 0067DBE6    mov         word ptr [ebp-18],8
 0067DBEC    mov         edx,dword ptr [ebp-4]
 0067DBEF    xor         ecx,ecx
 0067DBF1    mov         dword ptr [edx],ecx
 0067DBF3    movzx       eax,bx
 0067DBF6    push        eax
 0067DBF7    push        6E879F
 0067DBFC    push        dword ptr [ebp-4]
 0067DBFF    call        0067DE7C
 0067DC04    add         esp,0C
 0067DC07    mov         edx,dword ptr [ebp-28]
 0067DC0A    mov         dword ptr fs:[0000],edx
 0067DC10    mov         eax,dword ptr [ebp-4]
 0067DC13    pop         ebx
 0067DC14    mov         esp,ebp
 0067DC16    pop         ebp
 0067DC17    ret
end;*}

//0067DC18
{*function sub_0067DC18(?:?; ?:Integer):?;
begin
 0067DC18    push        ebp
 0067DC19    mov         ebp,esp
 0067DC1B    add         esp,0FFFFFFD8
 0067DC1E    push        ebx
 0067DC1F    mov         ebx,edx
 0067DC21    mov         dword ptr [ebp-4],eax
 0067DC24    mov         eax,6E88A4
 0067DC29    call        0066FECC
 0067DC2E    mov         word ptr [ebp-18],8
 0067DC34    mov         edx,dword ptr [ebp-4]
 0067DC37    xor         ecx,ecx
 0067DC39    mov         dword ptr [edx],ecx
 0067DC3B    push        ebx
 0067DC3C    push        6E87A3
 0067DC41    push        dword ptr [ebp-4]
 0067DC44    call        0067DE7C
 0067DC49    add         esp,0C
 0067DC4C    mov         eax,dword ptr [ebp-28]
 0067DC4F    mov         fs:[00000000],eax
 0067DC54    mov         eax,dword ptr [ebp-4]
 0067DC57    pop         ebx
 0067DC58    mov         esp,ebp
 0067DC5A    pop         ebp
 0067DC5B    ret
end;*}

//0067DC5C
{*function sub_0067DC5C(?:?; ?:?):?;
begin
 0067DC5C    push        ebp
 0067DC5D    mov         ebp,esp
 0067DC5F    add         esp,0FFFFFFD8
 0067DC62    push        ebx
 0067DC63    mov         ebx,edx
 0067DC65    mov         dword ptr [ebp-4],eax
 0067DC68    mov         eax,6E88C8
 0067DC6D    call        0066FECC
 0067DC72    mov         word ptr [ebp-18],8
 0067DC78    mov         edx,dword ptr [ebp-4]
 0067DC7B    xor         ecx,ecx
 0067DC7D    mov         dword ptr [edx],ecx
 0067DC7F    push        ebx
 0067DC80    push        6E87AD
 0067DC85    push        dword ptr [ebp-4]
 0067DC88    call        0067DE7C
 0067DC8D    add         esp,0C
 0067DC90    mov         eax,dword ptr [ebp-28]
 0067DC93    mov         fs:[00000000],eax
 0067DC98    mov         eax,dword ptr [ebp-4]
 0067DC9B    pop         ebx
 0067DC9C    mov         esp,ebp
 0067DC9E    pop         ebp
 0067DC9F    ret
end;*}

//0067DCA0
{*function sub_0067DCA0(?:AnsiString; ?:?):?;
begin
 0067DCA0    push        ebp
 0067DCA1    mov         ebp,esp
 0067DCA3    push        ecx
 0067DCA4    push        ebx
 0067DCA5    push        esi
 0067DCA6    mov         esi,edx
 0067DCA8    mov         dword ptr [ebp-4],eax
 0067DCAB    cmp         dword ptr [ebp-4],0
>0067DCAF    je          0067DCCA
 0067DCB1    mov         eax,dword ptr [ebp-4]
 0067DCB4    call        @LStrClr
 0067DCB9    test        esi,1
>0067DCBF    je          0067DCCA
 0067DCC1    push        dword ptr [ebp-4]
 0067DCC4    call        0066EAB0
 0067DCC9    pop         ecx
 0067DCCA    pop         esi
 0067DCCB    pop         ebx
 0067DCCC    pop         ecx
 0067DCCD    pop         ebp
 0067DCCE    ret
end;*}

//0067DCD0
{*function sub_0067DCD0(?:AnsiString; ?:AnsiString):?;
begin
 0067DCD0    push        ebp
 0067DCD1    mov         ebp,esp
 0067DCD3    push        ebx
 0067DCD4    push        esi
 0067DCD5    mov         esi,eax
 0067DCD7    mov         edx,dword ptr [edx]
 0067DCD9    call        @LStrAsg
 0067DCDE    mov         eax,esi
 0067DCE0    pop         esi
 0067DCE1    pop         ebx
 0067DCE2    pop         ebp
 0067DCE3    ret
end;*}

//0067DCE4
{*function sub_0067DCE4(?:AnsiString; ?:AnsiString):?;
begin
 0067DCE4    push        ebp
 0067DCE5    mov         ebp,esp
 0067DCE7    push        ebx
 0067DCE8    push        esi
 0067DCE9    mov         esi,eax
 0067DCEB    mov         edx,dword ptr [edx]
 0067DCED    call        @LStrCat
 0067DCF2    mov         eax,esi
 0067DCF4    pop         esi
 0067DCF5    pop         ebx
 0067DCF6    pop         ebp
 0067DCF7    ret
end;*}

//0067DCF8
{*procedure sub_0067DCF8(?:AnsiString; ?:AnsiString; ?:?);
begin
 0067DCF8    push        ebp
 0067DCF9    mov         ebp,esp
 0067DCFB    add         esp,0FFFFFFC8
 0067DCFE    push        ebx
 0067DCFF    mov         dword ptr [ebp-8],ecx
 0067DD02    mov         dword ptr [ebp-34],edx
 0067DD05    mov         dword ptr [ebp-30],eax
 0067DD08    mov         eax,6E891C
 0067DD0D    call        0066FECC
 0067DD12    mov         word ptr [ebp-1C],8
 0067DD18    lea         eax,[ebp-4]
 0067DD1B    call        00401EA8
 0067DD20    inc         dword ptr [ebp-10]
 0067DD23    mov         word ptr [ebp-1C],14
 0067DD29    lea         edx,[ebp-4]
 0067DD2C    mov         dword ptr [ebp-38],edx
 0067DD2F    mov         edx,dword ptr [ebp-30]
 0067DD32    mov         edx,dword ptr [edx]
 0067DD34    mov         eax,dword ptr [ebp-38]
 0067DD37    mov         ecx,dword ptr [ebp-34]
 0067DD3A    mov         ecx,dword ptr [ecx]
 0067DD3C    call        @LStrCat3
 0067DD41    mov         word ptr [ebp-1C],20
 0067DD47    lea         edx,[ebp-4]
 0067DD4A    mov         eax,dword ptr [ebp-8]
 0067DD4D    call        0067DCD0
 0067DD52    mov         eax,dword ptr [ebp-8]
 0067DD55    mov         word ptr [ebp-1C],2C
 0067DD5B    push        eax
 0067DD5C    dec         dword ptr [ebp-10]
 0067DD5F    lea         eax,[ebp-4]
 0067DD62    mov         edx,2
 0067DD67    call        0067DCA0
 0067DD6C    pop         eax
 0067DD6D    mov         word ptr [ebp-1C],20
 0067DD73    inc         dword ptr [ebp-10]
 0067DD76    mov         edx,dword ptr [ebp-2C]
 0067DD79    mov         dword ptr fs:[0000],edx
 0067DD7F    pop         ebx
 0067DD80    mov         esp,ebp
 0067DD82    pop         ebp
 0067DD83    ret
end;*}

//0067DD84
{*function sub_0067DD84(?:AnsiString; ?:String):?;
begin
 0067DD84    push        ebp
 0067DD85    mov         ebp,esp
 0067DD87    push        ebx
 0067DD88    mov         eax,dword ptr [eax]
 0067DD8A    mov         edx,dword ptr [edx]
 0067DD8C    call        @LStrCmp
 0067DD91    sete        al
 0067DD94    and         eax,1
 0067DD97    pop         ebx
 0067DD98    pop         ebp
 0067DD99    ret
end;*}

//0067DD9C
{*function sub_0067DD9C(?:AnsiString; ?:String):?;
begin
 0067DD9C    push        ebp
 0067DD9D    mov         ebp,esp
 0067DD9F    push        ebx
 0067DDA0    mov         eax,dword ptr [eax]
 0067DDA2    mov         edx,dword ptr [edx]
 0067DDA4    call        @LStrCmp
 0067DDA9    setne       al
 0067DDAC    and         eax,1
 0067DDAF    pop         ebx
 0067DDB0    pop         ebp
 0067DDB1    ret
end;*}

//0067DDB4
{*procedure sub_0067DDB4(?:?; ?:?);
begin
 0067DDB4    push        ebp
 0067DDB5    mov         ebp,esp
 0067DDB7    push        ebx
 0067DDB8    mov         eax,dword ptr [eax]
 0067DDBA    mov         edx,dword ptr [edx]
 0067DDBC    call        @LStrCmp
 0067DDC1    setb        al
 0067DDC4    and         eax,1
 0067DDC7    pop         ebx
 0067DDC8    pop         ebp
 0067DDC9    ret
end;*}

//0067DDCC
{*procedure sub_0067DDCC(?:?; ?:?);
begin
 0067DDCC    push        ebp
 0067DDCD    mov         ebp,esp
 0067DDCF    add         esp,0FFFFFFD4
 0067DDD2    push        ebx
 0067DDD3    push        esi
 0067DDD4    mov         esi,edx
 0067DDD6    mov         ebx,eax
 0067DDD8    mov         eax,6E8970
 0067DDDD    call        0066FECC
 0067DDE2    lea         eax,[ebp-8]
 0067DDE5    mov         edx,esi
 0067DDE7    call        0067DAEC
 0067DDEC    inc         dword ptr [ebp-10]
 0067DDEF    push        dword ptr [eax]
 0067DDF1    mov         word ptr [ebp-1C],8
 0067DDF7    lea         eax,[ebp-4]
 0067DDFA    mov         edx,ebx
 0067DDFC    call        0067DAEC
 0067DE01    inc         dword ptr [ebp-10]
 0067DE04    mov         eax,dword ptr [eax]
 0067DE06    pop         edx
 0067DE07    call        AnsiCompareText
 0067DE0C    push        eax
 0067DE0D    dec         dword ptr [ebp-10]
 0067DE10    lea         eax,[ebp-8]
 0067DE13    mov         edx,2
 0067DE18    call        0067DCA0
 0067DE1D    dec         dword ptr [ebp-10]
 0067DE20    lea         eax,[ebp-4]
 0067DE23    mov         edx,2
 0067DE28    call        0067DCA0
 0067DE2D    pop         eax
 0067DE2E    mov         edx,dword ptr [ebp-2C]
 0067DE31    mov         dword ptr fs:[0000],edx
 0067DE37    pop         esi
 0067DE38    pop         ebx
 0067DE39    mov         esp,ebp
 0067DE3B    pop         ebp
 0067DE3C    ret
end;*}

//0067DE40
{*procedure sub_0067DE40(?:?; ?:?; ?:?);
begin
 0067DE40    push        ebp
 0067DE41    mov         ebp,esp
 0067DE43    push        ebx
 0067DE44    push        esi
 0067DE45    push        edi
 0067DE46    mov         edi,dword ptr [ebp+0C]
 0067DE49    mov         ebx,dword ptr [ebp+8]
 0067DE4C    push        dword ptr [ebp+10]
 0067DE4F    push        edi
 0067DE50    push        0
 0067DE52    push        0
 0067DE54    call        006733EC
 0067DE59    add         esp,10
 0067DE5C    mov         esi,eax
 0067DE5E    mov         edx,esi
 0067DE60    mov         eax,ebx
 0067DE62    call        0067DED4
 0067DE67    push        dword ptr [ebp+10]
 0067DE6A    push        edi
 0067DE6B    inc         esi
 0067DE6C    push        esi
 0067DE6D    push        dword ptr [ebx]
 0067DE6F    call        006733EC
 0067DE74    add         esp,10
 0067DE77    pop         edi
 0067DE78    pop         esi
 0067DE79    pop         ebx
 0067DE7A    pop         ebp
 0067DE7B    ret
end;*}

//0067DE7C
{*function sub_0067DE7C(?:?; ?:?; ?:?):?;
begin
 0067DE7C    push        ebp
 0067DE7D    mov         ebp,esp
 0067DE7F    push        ebx
 0067DE80    mov         ebx,dword ptr [ebp+8]
 0067DE83    lea         eax,[ebp+10]
 0067DE86    push        eax
 0067DE87    push        dword ptr [ebp+0C]
 0067DE8A    push        ebx
 0067DE8B    call        0067DE40
 0067DE90    add         esp,0C
 0067DE93    mov         eax,ebx
 0067DE95    pop         ebx
 0067DE96    pop         ebp
 0067DE97    ret
end;*}

//0067DE98
{*function sub_0067DE98(?:?):?;
begin
 0067DE98    push        ebp
 0067DE99    mov         ebp,esp
 0067DE9B    push        ebx
 0067DE9C    mov         ebx,eax
 0067DE9E    mov         eax,ebx
 0067DEA0    call        UniqueString
 0067DEA5    mov         eax,ebx
 0067DEA7    pop         ebx
 0067DEA8    pop         ebp
 0067DEA9    ret
end;*}

//0067DEAC
{*function sub_0067DEAC(?:?; ?:?; ?:?):?;
begin
 0067DEAC    push        ebp
 0067DEAD    mov         ebp,esp
 0067DEAF    add         esp,0FFFFFFF4
 0067DEB2    push        ebx
 0067DEB3    mov         dword ptr [ebp-0C],ecx
 0067DEB6    mov         dword ptr [ebp-8],edx
 0067DEB9    mov         dword ptr [ebp-4],eax
 0067DEBC    mov         eax,dword ptr [ebp-4]
 0067DEBF    mov         edx,dword ptr [ebp-8]
 0067DEC2    mov         ecx,dword ptr [ebp-0C]
 0067DEC5    call        @LStrDelete
 0067DECA    mov         eax,dword ptr [ebp-4]
 0067DECD    pop         ebx
 0067DECE    mov         esp,ebp
 0067DED0    pop         ebp
 0067DED1    ret
end;*}

//0067DED4
{*function sub_0067DED4(?:AnsiString; ?:UINT):?;
begin
 0067DED4    push        ebp
 0067DED5    mov         ebp,esp
 0067DED7    add         esp,0FFFFFFF8
 0067DEDA    push        ebx
 0067DEDB    mov         dword ptr [ebp-8],edx
 0067DEDE    mov         dword ptr [ebp-4],eax
 0067DEE1    mov         eax,dword ptr [ebp-4]
 0067DEE4    mov         edx,dword ptr [ebp-8]
 0067DEE7    call        @LStrSetLength
 0067DEEC    mov         eax,dword ptr [ebp-4]
 0067DEEF    pop         ebx
 0067DEF0    pop         ecx
 0067DEF1    pop         ecx
 0067DEF2    pop         ebp
 0067DEF3    ret
end;*}

//0067DEF4
{*function sub_0067DEF4(?:AnsiString; ?:AnsiString):?;
begin
 0067DEF4    push        ebp
 0067DEF5    mov         ebp,esp
 0067DEF7    add         esp,0FFFFFFF8
 0067DEFA    push        ebx
 0067DEFB    mov         dword ptr [ebp-8],edx
 0067DEFE    mov         dword ptr [ebp-4],eax
 0067DF01    mov         edx,dword ptr [ebp-4]
 0067DF04    mov         edx,dword ptr [edx]
 0067DF06    mov         eax,dword ptr [ebp-8]
 0067DF09    mov         eax,dword ptr [eax]
 0067DF0B    call        @LStrPos
 0067DF10    pop         ebx
 0067DF11    pop         ecx
 0067DF12    pop         ecx
 0067DF13    pop         ebp
 0067DF14    ret
end;*}

//0067DF18
{*procedure sub_0067DF18(?:?; ?:?);
begin
 0067DF18    push        ebp
 0067DF19    mov         ebp,esp
 0067DF1B    add         esp,0FFFFFFD0
 0067DF1E    push        ebx
 0067DF1F    mov         dword ptr [ebp-0C],edx
 0067DF22    mov         ebx,eax
 0067DF24    mov         eax,6E89BC
 0067DF29    call        0066FECC
 0067DF2E    mov         word ptr [ebp-20],8
 0067DF34    lea         eax,[ebp-8]
 0067DF37    call        00401EA8
 0067DF3C    push        eax
 0067DF3D    inc         dword ptr [ebp-14]
 0067DF40    lea         eax,[ebp-4]
 0067DF43    mov         edx,ebx
 0067DF45    call        0067DAEC
 0067DF4A    inc         dword ptr [ebp-14]
 0067DF4D    mov         eax,dword ptr [eax]
 0067DF4F    pop         edx
 0067DF50    call        006576F0
 0067DF55    lea         edx,[ebp-8]
 0067DF58    mov         eax,dword ptr [ebp-0C]
 0067DF5B    call        0067DCD0
 0067DF60    mov         eax,dword ptr [ebp-0C]
 0067DF63    mov         word ptr [ebp-20],14
 0067DF69    push        eax
 0067DF6A    dec         dword ptr [ebp-14]
 0067DF6D    lea         eax,[ebp-8]
 0067DF70    mov         edx,2
 0067DF75    call        0067DCA0
 0067DF7A    dec         dword ptr [ebp-14]
 0067DF7D    lea         eax,[ebp-4]
 0067DF80    mov         edx,2
 0067DF85    call        0067DCA0
 0067DF8A    pop         eax
 0067DF8B    mov         word ptr [ebp-20],8
 0067DF91    inc         dword ptr [ebp-14]
 0067DF94    mov         edx,dword ptr [ebp-30]
 0067DF97    mov         dword ptr fs:[0000],edx
 0067DF9D    pop         ebx
 0067DF9E    mov         esp,ebp
 0067DFA0    pop         ebp
 0067DFA1    ret
end;*}

//0067E030
{*procedure sub_0067E030(?:AnsiString; ?:?);
begin
 0067E030    push        ebp
 0067E031    mov         ebp,esp
 0067E033    add         esp,0FFFFFFD0
 0067E036    push        ebx
 0067E037    mov         dword ptr [ebp-0C],edx
 0067E03A    mov         ebx,eax
 0067E03C    mov         eax,6E8A6C
 0067E041    call        0066FECC
 0067E046    mov         word ptr [ebp-20],8
 0067E04C    lea         eax,[ebp-8]
 0067E04F    call        00401EA8
 0067E054    push        eax
 0067E055    inc         dword ptr [ebp-14]
 0067E058    lea         eax,[ebp-4]
 0067E05B    mov         edx,ebx
 0067E05D    call        0067DAEC
 0067E062    inc         dword ptr [ebp-14]
 0067E065    mov         eax,dword ptr [eax]
 0067E067    pop         edx
 0067E068    call        00657850
 0067E06D    lea         edx,[ebp-8]
 0067E070    mov         eax,dword ptr [ebp-0C]
 0067E073    call        0067DCD0
 0067E078    mov         eax,dword ptr [ebp-0C]
 0067E07B    mov         word ptr [ebp-20],14
 0067E081    push        eax
 0067E082    dec         dword ptr [ebp-14]
 0067E085    lea         eax,[ebp-8]
 0067E088    mov         edx,2
 0067E08D    call        0067DCA0
 0067E092    dec         dword ptr [ebp-14]
 0067E095    lea         eax,[ebp-4]
 0067E098    mov         edx,2
 0067E09D    call        0067DCA0
 0067E0A2    pop         eax
 0067E0A3    mov         word ptr [ebp-20],8
 0067E0A9    inc         dword ptr [ebp-14]
 0067E0AC    mov         edx,dword ptr [ebp-30]
 0067E0AF    mov         dword ptr fs:[0000],edx
 0067E0B5    pop         ebx
 0067E0B6    mov         esp,ebp
 0067E0B8    pop         ebp
 0067E0B9    ret
end;*}

//0067E0BC
{*procedure sub_0067E0BC(?:AnsiString; ?:?; ?:?; ?:?);
begin
 0067E0BC    push        ebp
 0067E0BD    mov         ebp,esp
 0067E0BF    add         esp,0FFFFFFD0
 0067E0C2    push        ebx
 0067E0C3    push        esi
 0067E0C4    push        edi
 0067E0C5    mov         dword ptr [ebp-30],ecx
 0067E0C8    mov         ebx,edx
 0067E0CA    mov         edi,eax
 0067E0CC    mov         eax,6E8AE4
 0067E0D1    call        0066FECC
 0067E0D6    mov         eax,edi
 0067E0D8    call        00405290
 0067E0DD    cmp         eax,ebx
>0067E0DF    jl          0067E0E7
 0067E0E1    cmp         dword ptr [ebp-30],1
>0067E0E5    jge         0067E131
 0067E0E7    mov         word ptr [ebp-1C],8
 0067E0ED    lea         eax,[ebp-4]
 0067E0F0    call        00401EA8
 0067E0F5    mov         edx,eax
 0067E0F7    inc         dword ptr [ebp-10]
 0067E0FA    mov         eax,dword ptr [ebp+8]
 0067E0FD    call        0067DCD0
 0067E102    mov         eax,dword ptr [ebp+8]
 0067E105    mov         word ptr [ebp-1C],14
 0067E10B    push        eax
 0067E10C    dec         dword ptr [ebp-10]
 0067E10F    lea         eax,[ebp-4]
 0067E112    mov         edx,2
 0067E117    call        0067DCA0
 0067E11C    pop         eax
 0067E11D    mov         word ptr [ebp-1C],8
 0067E123    inc         dword ptr [ebp-10]
 0067E126    mov         edx,dword ptr [ebp-2C]
 0067E129    mov         dword ptr fs:[0000],edx
>0067E12F    jmp         0067E197
 0067E131    cmp         ebx,1
>0067E134    jge         0067E13B
 0067E136    mov         ebx,1
 0067E13B    mov         esi,eax
 0067E13D    sub         esi,ebx
 0067E13F    inc         esi
 0067E140    cmp         esi,dword ptr [ebp-30]
>0067E143    jle         0067E148
 0067E145    mov         esi,dword ptr [ebp-30]
 0067E148    mov         word ptr [ebp-1C],20
 0067E14E    mov         edx,dword ptr [edi]
 0067E150    add         edx,ebx
 0067E152    dec         edx
 0067E153    lea         eax,[ebp-8]
 0067E156    mov         ecx,esi
 0067E158    call        0067DB28
 0067E15D    mov         edx,eax
 0067E15F    inc         dword ptr [ebp-10]
 0067E162    mov         eax,dword ptr [ebp+8]
 0067E165    call        0067DCD0
 0067E16A    mov         eax,dword ptr [ebp+8]
 0067E16D    mov         word ptr [ebp-1C],2C
 0067E173    push        eax
 0067E174    dec         dword ptr [ebp-10]
 0067E177    lea         eax,[ebp-8]
 0067E17A    mov         edx,2
 0067E17F    call        0067DCA0
 0067E184    pop         eax
 0067E185    mov         word ptr [ebp-1C],20
 0067E18B    inc         dword ptr [ebp-10]
 0067E18E    mov         edx,dword ptr [ebp-2C]
 0067E191    mov         dword ptr fs:[0000],edx
 0067E197    pop         edi
 0067E198    pop         esi
 0067E199    pop         ebx
 0067E19A    mov         esp,ebp
 0067E19C    pop         ebp
 0067E19D    ret         4
end;*}

//0067E1A0
{*function sub_0067E1A0(?:?):?;
begin
 0067E1A0    push        ebp
 0067E1A1    mov         ebp,esp
 0067E1A3    add         esp,0FFFFFFD8
 0067E1A6    push        ebx
 0067E1A7    mov         ebx,eax
 0067E1A9    mov         eax,6E8B2C
 0067E1AE    call        0066FECC
 0067E1B3    mov         word ptr [ebp-18],8
 0067E1B9    lea         eax,[ebp-4]
 0067E1BC    mov         edx,ebx
 0067E1BE    call        0067DAEC
 0067E1C3    inc         dword ptr [ebp-0C]
 0067E1C6    mov         eax,dword ptr [eax]
 0067E1C8    call        StrToInt
 0067E1CD    push        eax
 0067E1CE    dec         dword ptr [ebp-0C]
 0067E1D1    lea         eax,[ebp-4]
 0067E1D4    mov         edx,2
 0067E1D9    call        0067DCA0
 0067E1DE    pop         eax
 0067E1DF    mov         edx,dword ptr [ebp-28]
 0067E1E2    mov         dword ptr fs:[0000],edx
 0067E1E8    pop         ebx
 0067E1E9    mov         esp,ebp
 0067E1EB    pop         ebp
 0067E1EC    ret
end;*}

//0067E1F0
{*procedure sub_0067E1F0(?:?; ?:?);
begin
 0067E1F0    push        ebp
 0067E1F1    mov         ebp,esp
 0067E1F3    add         esp,0FFFFFFD4
 0067E1F6    push        ebx
 0067E1F7    push        esi
 0067E1F8    mov         esi,edx
 0067E1FA    mov         ebx,eax
 0067E1FC    mov         eax,6E8B5C
 0067E201    call        0066FECC
 0067E206    lea         eax,[ebp-8]
 0067E209    mov         edx,ebx
 0067E20B    call        0067DAEC
 0067E210    inc         dword ptr [ebp-10]
 0067E213    push        dword ptr [eax]
 0067E215    mov         word ptr [ebp-1C],8
 0067E21B    lea         eax,[ebp-4]
 0067E21E    mov         edx,esi
 0067E220    call        0067DAEC
 0067E225    inc         dword ptr [ebp-10]
 0067E228    mov         eax,dword ptr [eax]
 0067E22A    pop         edx
 0067E22B    call        AnsiPos
 0067E230    push        eax
 0067E231    dec         dword ptr [ebp-10]
 0067E234    lea         eax,[ebp-8]
 0067E237    mov         edx,2
 0067E23C    call        0067DCA0
 0067E241    dec         dword ptr [ebp-10]
 0067E244    lea         eax,[ebp-4]
 0067E247    mov         edx,2
 0067E24C    call        0067DCA0
 0067E251    pop         eax
 0067E252    mov         edx,dword ptr [ebp-2C]
 0067E255    mov         dword ptr fs:[0000],edx
 0067E25B    pop         esi
 0067E25C    pop         ebx
 0067E25D    mov         esp,ebp
 0067E25F    pop         ebp
 0067E260    ret
end;*}

//0067E264
{*procedure sub_0067E264(?:?; ?:?);
begin
 0067E264    push        ebp
 0067E265    mov         ebp,esp
 0067E267    add         esp,0FFFFFFD8
 0067E26A    push        ebx
 0067E26B    push        esi
 0067E26C    mov         esi,edx
 0067E26E    mov         ebx,eax
 0067E270    mov         eax,6E8B80
 0067E275    call        0066FECC
 0067E27A    mov         word ptr [ebp-18],8
 0067E280    lea         eax,[ebp-4]
 0067E283    mov         edx,ebx
 0067E285    call        0067DAEC
 0067E28A    inc         dword ptr [ebp-0C]
 0067E28D    mov         eax,dword ptr [eax]
 0067E28F    mov         edx,esi
 0067E291    call        0065D354
 0067E296    push        eax
 0067E297    dec         dword ptr [ebp-0C]
 0067E29A    lea         eax,[ebp-4]
 0067E29D    mov         edx,2
 0067E2A2    call        0067DCA0
 0067E2A7    pop         eax
 0067E2A8    mov         edx,dword ptr [ebp-28]
 0067E2AB    mov         dword ptr fs:[0000],edx
 0067E2B1    pop         esi
 0067E2B2    pop         ebx
 0067E2B3    mov         esp,ebp
 0067E2B5    pop         ebp
 0067E2B6    ret
end;*}

//0067E2B8
{*function sub_0067E2B8(?:AnsiString; ?:?):?;
begin
 0067E2B8    push        ebp
 0067E2B9    mov         ebp,esp
 0067E2BB    add         esp,0FFFFFFD4
 0067E2BE    push        ebx
 0067E2BF    push        esi
 0067E2C0    mov         esi,edx
 0067E2C2    mov         ebx,eax
 0067E2C4    mov         eax,6E8BB0
 0067E2C9    call        0066FECC
 0067E2CE    lea         eax,[ebp-8]
 0067E2D1    mov         edx,ebx
 0067E2D3    call        0067DAEC
 0067E2D8    inc         dword ptr [ebp-10]
 0067E2DB    push        dword ptr [eax]
 0067E2DD    mov         word ptr [ebp-1C],8
 0067E2E3    lea         eax,[ebp-4]
 0067E2E6    mov         edx,esi
 0067E2E8    call        0067DAEC
 0067E2ED    inc         dword ptr [ebp-10]
 0067E2F0    mov         eax,dword ptr [eax]
 0067E2F2    pop         edx
 0067E2F3    call        006582CC
 0067E2F8    push        eax
 0067E2F9    dec         dword ptr [ebp-10]
 0067E2FC    lea         eax,[ebp-8]
 0067E2FF    mov         edx,2
 0067E304    call        0067DCA0
 0067E309    dec         dword ptr [ebp-10]
 0067E30C    lea         eax,[ebp-4]
 0067E30F    mov         edx,2
 0067E314    call        0067DCA0
 0067E319    pop         eax
 0067E31A    mov         edx,dword ptr [ebp-2C]
 0067E31D    mov         dword ptr fs:[0000],edx
 0067E323    pop         esi
 0067E324    pop         ebx
 0067E325    mov         esp,ebp
 0067E327    pop         ebp
 0067E328    ret
end;*}

//0067E32C
{*function sub_0067E32C(?:AnsiString):?;
begin
 0067E32C    push        ebp
 0067E32D    mov         ebp,esp
 0067E32F    add         esp,0FFFFFFD8
 0067E332    push        ebx
 0067E333    mov         ebx,eax
 0067E335    mov         eax,6E8BD4
 0067E33A    call        0066FECC
 0067E33F    mov         word ptr [ebp-18],8
 0067E345    lea         eax,[ebp-4]
 0067E348    mov         edx,ebx
 0067E34A    call        0067DAEC
 0067E34F    inc         dword ptr [ebp-0C]
 0067E352    mov         eax,dword ptr [eax]
 0067E354    call        00658280
 0067E359    push        eax
 0067E35A    dec         dword ptr [ebp-0C]
 0067E35D    lea         eax,[ebp-4]
 0067E360    mov         edx,2
 0067E365    call        0067DCA0
 0067E36A    pop         eax
 0067E36B    mov         edx,dword ptr [ebp-28]
 0067E36E    mov         dword ptr fs:[0000],edx
 0067E374    pop         ebx
 0067E375    mov         esp,ebp
 0067E377    pop         ebp
 0067E378    ret
end;*}

//0067E37C
{*procedure sub_0067E37C(?:?; ?:AnsiString; ?:?);
begin
 0067E37C    push        ebp
 0067E37D    mov         ebp,esp
 0067E37F    add         esp,0FFFFFFCC
 0067E382    push        ebx
 0067E383    mov         dword ptr [ebp-8],ecx
 0067E386    mov         dword ptr [ebp-30],edx
 0067E389    mov         ebx,eax
 0067E38B    mov         eax,6E8C28
 0067E390    call        0066FECC
 0067E395    mov         word ptr [ebp-1C],8
 0067E39B    lea         eax,[ebp-4]
 0067E39E    mov         edx,ebx
 0067E3A0    call        0067DAB4
 0067E3A5    inc         dword ptr [ebp-10]
 0067E3A8    mov         word ptr [ebp-1C],14
 0067E3AE    lea         ecx,[ebp-4]
 0067E3B1    mov         dword ptr [ebp-34],ecx
 0067E3B4    mov         eax,dword ptr [ebp-34]
 0067E3B7    mov         edx,dword ptr [ebp-30]
 0067E3BA    mov         edx,dword ptr [edx]
 0067E3BC    call        @LStrCat
 0067E3C1    mov         word ptr [ebp-1C],20
 0067E3C7    lea         edx,[ebp-4]
 0067E3CA    mov         eax,dword ptr [ebp-8]
 0067E3CD    call        0067DCD0
 0067E3D2    mov         eax,dword ptr [ebp-8]
 0067E3D5    mov         word ptr [ebp-1C],2C
 0067E3DB    push        eax
 0067E3DC    dec         dword ptr [ebp-10]
 0067E3DF    lea         eax,[ebp-4]
 0067E3E2    mov         edx,2
 0067E3E7    call        0067DCA0
 0067E3EC    pop         eax
 0067E3ED    mov         word ptr [ebp-1C],20
 0067E3F3    inc         dword ptr [ebp-10]
 0067E3F6    mov         edx,dword ptr [ebp-2C]
 0067E3F9    mov         dword ptr fs:[0000],edx
 0067E3FF    pop         ebx
 0067E400    mov         esp,ebp
 0067E402    pop         ebp
 0067E403    ret
end;*}

//0067E404
{*procedure sub_0067E404(?:?; ?:?);
begin
 0067E404    push        ebp
 0067E405    mov         ebp,esp
 0067E407    add         esp,0FFFFFFCC
 0067E40A    push        ebx
 0067E40B    mov         dword ptr [ebp-8],edx
 0067E40E    mov         dword ptr [ebp-30],eax
 0067E411    mov         eax,6E8CA0
 0067E416    call        0066FECC
 0067E41B    mov         word ptr [ebp-1C],8
 0067E421    lea         eax,[ebp-4]
 0067E424    call        00401EA8
 0067E429    inc         dword ptr [ebp-10]
 0067E42C    mov         word ptr [ebp-1C],14
 0067E432    lea         edx,[ebp-4]
 0067E435    mov         dword ptr [ebp-34],edx
 0067E438    mov         edx,dword ptr [ebp-34]
 0067E43B    mov         eax,dword ptr [ebp-30]
 0067E43E    call        LoadResString;'Cars'
 0067E443    mov         word ptr [ebp-1C],20
 0067E449    lea         edx,[ebp-4]
 0067E44C    mov         eax,dword ptr [ebp-8]
 0067E44F    call        0067DCD0
 0067E454    mov         eax,dword ptr [ebp-8]
 0067E457    mov         word ptr [ebp-1C],2C
 0067E45D    push        eax
 0067E45E    dec         dword ptr [ebp-10]
 0067E461    lea         eax,[ebp-4]
 0067E464    mov         edx,2
 0067E469    call        0067DCA0
 0067E46E    pop         eax
 0067E46F    mov         word ptr [ebp-1C],20
 0067E475    inc         dword ptr [ebp-10]
 0067E478    mov         edx,dword ptr [ebp-2C]
 0067E47B    mov         dword ptr fs:[0000],edx
 0067E481    pop         ebx
 0067E482    mov         esp,ebp
 0067E484    pop         ebp
 0067E485    ret
end;*}

//0067E488
{*function sub_0067E488:?;
begin
 0067E488    push        ebp
 0067E489    mov         ebp,esp
 0067E48B    push        ebx
 0067E48C    call        @FindDynaInst
 0067E491    pop         ebx
 0067E492    pop         ebp
 0067E493    ret
end;*}

//0067E510
{*function sub_0067E510(?:?; ?:?; ?:?):?;
begin
 0067E510    push        ebp
 0067E511    mov         ebp,esp
 0067E513    add         esp,0FFFFFBF0
 0067E519    push        ebx
 0067E51A    push        esi
 0067E51B    push        edi
 0067E51C    mov         esi,dword ptr [ebp+0C]
 0067E51F    mov         edi,dword ptr [ebp+8]
 0067E522    push        dword ptr [ebp+10]
 0067E525    push        esi
 0067E526    push        edi
 0067E527    push        6E8D43;'%s @ %s/%d'
 0067E52C    lea         eax,[ebp-208]
 0067E532    push        eax
 0067E533    call        USER32.wsprintfA
 0067E538    add         esp,14
 0067E53B    lea         edx,[ebp-208]
 0067E541    push        edx
 0067E542    push        6E8D4E
 0067E547    call        0067E5AC
 0067E54C    add         esp,8
 0067E54F    mov         ebx,eax
 0067E551    cmp         ebx,6
>0067E554    jne         0067E5A1
 0067E556    push        dword ptr [ebp+10]
 0067E559    push        esi
 0067E55A    push        edi
 0067E55B    push        6E8D59;'%s failed - %s/%d'
 0067E560    lea         eax,[ebp-208]
 0067E566    push        eax
 0067E567    call        USER32.wsprintfA
 0067E56C    add         esp,14
 0067E56F    push        esi
 0067E570    push        6E8D6B;'%s'
 0067E575    lea         edx,[ebp-410]
 0067E57B    push        edx
 0067E57C    call        USER32.wsprintfA
 0067E581    add         esp,0C
 0067E584    push        1
 0067E586    lea         ecx,[ebp-410]
 0067E58C    push        ecx
 0067E58D    push        80004005
 0067E592    lea         eax,[ebp-208]
 0067E598    push        eax
 0067E599    call        0067E5E8
 0067E59E    add         esp,10
 0067E5A1    mov         eax,ebx
 0067E5A3    pop         edi
 0067E5A4    pop         esi
 0067E5A5    pop         ebx
 0067E5A6    mov         esp,ebp
 0067E5A8    pop         ebp
 0067E5A9    ret
end;*}

//0067E5AC
{*function sub_0067E5AC(?:?; ?:?):?;
begin
 0067E5AC    push        ebp
 0067E5AD    mov         ebp,esp
 0067E5AF    add         esp,0FFFFFDF8
 0067E5B5    push        dword ptr [ebp+0C]
 0067E5B8    push        6E8D6E;'%s'+#10+Press [Y]es to terminate, [N]o to continue and [C]ancel to Debug'
 0067E5BD    lea         eax,[ebp-208]
 0067E5C3    push        eax
 0067E5C4    call        USER32.wsprintfA
 0067E5C9    add         esp,0C
 0067E5CC    push        2023
 0067E5D1    push        dword ptr [ebp+8]
 0067E5D4    lea         edx,[ebp-208]
 0067E5DA    push        edx
 0067E5DB    push        0
 0067E5DD    call        USER32.MessageBoxA
 0067E5E2    mov         esp,ebp
 0067E5E4    pop         ebp
 0067E5E5    ret
end;*}

//0067E5E8
{*procedure sub_0067E5E8(?:?; ?:?; ?:?);
begin
 0067E5E8    push        ebp
 0067E5E9    mov         ebp,esp
 0067E5EB    add         esp,0FFFFFFD0
 0067E5EE    mov         eax,6E8FB0
 0067E5F3    call        0066FECC
 0067E5F8    lea         edx,[ebp-30]
 0067E5FB    push        edx
 0067E5FC    push        0
 0067E5FE    push        0
 0067E600    push        0
 0067E602    push        1
 0067E604    push        67E6D8
 0067E609    push        0
 0067E60B    push        dword ptr [ebp+0C]
 0067E60E    lea         eax,[ebp-8]
 0067E611    mov         edx,dword ptr [ebp+10]
 0067E614    call        0067DAB4
 0067E619    inc         dword ptr [ebp-14]
 0067E61C    push        dword ptr [eax]
 0067E61E    mov         edx,6E8DB2
 0067E623    lea         eax,[ebp-0C]
 0067E626    call        0067DAB4
 0067E62B    inc         dword ptr [ebp-14]
 0067E62E    push        dword ptr [eax]
 0067E630    push        0
 0067E632    mov         word ptr [ebp-20],8
 0067E638    lea         eax,[ebp-4]
 0067E63B    mov         edx,dword ptr [ebp+8]
 0067E63E    call        0067DAB4
 0067E643    inc         dword ptr [ebp-14]
 0067E646    mov         ecx,dword ptr [eax]
 0067E648    mov         dl,1
 0067E64A    mov         eax,[006551B0];EOleException
 0067E64F    call        EOleException.Create;EOleException.Create
 0067E654    push        eax
 0067E655    push        67E668
 0067E65A    call        0067AD11
 0067E65F    add         esp,24
 0067E662    mov         esp,ebp
 0067E664    pop         ebp
 0067E665    ret
end;*}

//0067E754
{*function sub_0067E754(?:Double):?;
begin
 0067E754    push        ebp
 0067E755    mov         ebp,esp
 0067E757    add         esp,0FFFFFFD8
 0067E75A    mov         dword ptr [ebp-4],eax
 0067E75D    mov         eax,6E8FD4
 0067E762    call        0066FECC
 0067E767    mov         word ptr [ebp-18],8
 0067E76D    push        dword ptr [ebp-4]
 0067E770    call        OLEAUT32.8
 0067E775    mov         edx,dword ptr [ebp-28]
 0067E778    mov         dword ptr fs:[0],edx
 0067E77F    mov         eax,dword ptr [ebp-4]
 0067E782    mov         esp,ebp
 0067E784    pop         ebp
 0067E785    ret
end;*}

//0067E788
{*function sub_0067E788(?:?; ?:?):?;
begin
 0067E788    push        ebp
 0067E789    mov         ebp,esp
 0067E78B    add         esp,0FFFFFFC8
 0067E78E    push        ebx
 0067E78F    mov         ebx,edx
 0067E791    mov         dword ptr [ebp-4],eax
 0067E794    mov         eax,6E8FF8
 0067E799    call        0066FECC
 0067E79E    mov         word ptr [ebp-18],8
 0067E7A4    push        10
 0067E7A6    push        ebx
 0067E7A7    lea         edx,[ebp-38]
 0067E7AA    push        edx
 0067E7AB    call        0066F894
 0067E7B0    add         esp,0C
 0067E7B3    push        dword ptr [ebp-4]
 0067E7B6    call        OLEAUT32.8
 0067E7BB    lea         edx,[ebp-38]
 0067E7BE    mov         eax,dword ptr [ebp-4]
 0067E7C1    call        0067E8DC
 0067E7C6    mov         ecx,dword ptr [ebp-28]
 0067E7C9    mov         dword ptr fs:[0],ecx
 0067E7D0    mov         eax,dword ptr [ebp-4]
 0067E7D3    pop         ebx
 0067E7D4    mov         esp,ebp
 0067E7D6    pop         ebp
 0067E7D7    ret
end;*}

//0067E7D8
{*function sub_0067E7D8(?:?; ?:?):?;
begin
 0067E7D8    push        ebp
 0067E7D9    mov         ebp,esp
 0067E7DB    add         esp,0FFFFFFD8
 0067E7DE    push        ebx
 0067E7DF    mov         ebx,edx
 0067E7E1    mov         dword ptr [ebp-4],eax
 0067E7E4    mov         eax,6E901C
 0067E7E9    call        0066FECC
 0067E7EE    mov         word ptr [ebp-18],8
 0067E7F4    push        dword ptr [ebp-4]
 0067E7F7    call        OLEAUT32.8
 0067E7FC    mov         edx,dword ptr [ebp-4]
 0067E7FF    mov         word ptr [edx],3
 0067E804    mov         ecx,dword ptr [ebp-4]
 0067E807    mov         dword ptr [ecx+8],ebx
 0067E80A    mov         eax,dword ptr [ebp-28]
 0067E80D    mov         fs:[00000000],eax
 0067E813    mov         eax,dword ptr [ebp-4]
 0067E816    pop         ebx
 0067E817    mov         esp,ebp
 0067E819    pop         ebp
 0067E81A    ret
end;*}

//0067E81C
{*function sub_0067E81C(?:?; ?:?):?;
begin
 0067E81C    push        ebp
 0067E81D    mov         ebp,esp
 0067E81F    add         esp,0FFFFFFD8
 0067E822    push        ebx
 0067E823    mov         ebx,edx
 0067E825    mov         dword ptr [ebp-4],eax
 0067E828    mov         eax,6E9040
 0067E82D    call        0066FECC
 0067E832    mov         word ptr [ebp-18],8
 0067E838    push        dword ptr [ebp-4]
 0067E83B    call        OLEAUT32.8
 0067E840    mov         edx,dword ptr [ebp-4]
 0067E843    mov         word ptr [edx],13
 0067E848    mov         ecx,dword ptr [ebp-4]
 0067E84B    mov         dword ptr [ecx+8],ebx
 0067E84E    mov         eax,dword ptr [ebp-28]
 0067E851    mov         fs:[00000000],eax
 0067E857    mov         eax,dword ptr [ebp-4]
 0067E85A    pop         ebx
 0067E85B    mov         esp,ebp
 0067E85D    pop         ebp
 0067E85E    ret
end;*}

//0067E860
{*function sub_0067E860(?:?; ?:AnsiString):?;
begin
 0067E860    push        ebp
 0067E861    mov         ebp,esp
 0067E863    add         esp,0FFFFFFD8
 0067E866    push        ebx
 0067E867    mov         ebx,edx
 0067E869    mov         dword ptr [ebp-4],eax
 0067E86C    mov         eax,6E9064
 0067E871    call        0066FECC
 0067E876    mov         word ptr [ebp-18],8
 0067E87C    push        dword ptr [ebp-4]
 0067E87F    call        OLEAUT32.8
 0067E884    mov         edx,dword ptr [ebp-4]
 0067E887    mov         word ptr [edx],100
 0067E88C    mov         ecx,dword ptr [ebp-4]
 0067E88F    xor         eax,eax
 0067E891    mov         dword ptr [ecx+8],eax
 0067E894    mov         eax,dword ptr [ebp-4]
 0067E897    add         eax,8
 0067E89A    mov         edx,ebx
 0067E89C    call        0067DCD0
 0067E8A1    mov         ecx,dword ptr [ebp-28]
 0067E8A4    mov         dword ptr fs:[0],ecx
 0067E8AB    mov         eax,dword ptr [ebp-4]
 0067E8AE    pop         ebx
 0067E8AF    mov         esp,ebp
 0067E8B1    pop         ebp
 0067E8B2    ret
end;*}

//0067E8B4
{*function sub_0067E8B4(?:Double; ?:?):?;
begin
 0067E8B4    push        ebp
 0067E8B5    mov         ebp,esp
 0067E8B7    push        ebx
 0067E8B8    push        esi
 0067E8B9    mov         esi,edx
 0067E8BB    mov         ebx,eax
 0067E8BD    test        ebx,ebx
>0067E8BF    je          0067E8D7
 0067E8C1    mov         eax,ebx
 0067E8C3    call        0067EA24
 0067E8C8    test        esi,1
>0067E8CE    je          0067E8D7
 0067E8D0    push        ebx
 0067E8D1    call        0066EAB0
 0067E8D6    pop         ecx
 0067E8D7    pop         esi
 0067E8D8    pop         ebx
 0067E8D9    pop         ebp
 0067E8DA    ret
end;*}

//0067E8DC
{*function sub_0067E8DC(?:Extended; ?:Single):?;
begin
 0067E8DC    push        ebp
 0067E8DD    mov         ebp,esp
 0067E8DF    push        ebx
 0067E8E0    push        esi
 0067E8E1    mov         esi,edx
 0067E8E3    mov         ebx,eax
 0067E8E5    mov         eax,ebx
 0067E8E7    call        0067EA24
 0067E8EC    mov         edx,esi
 0067E8EE    mov         eax,ebx
 0067E8F0    call        @VarCopy
 0067E8F5    mov         dx,word ptr [ebx]
 0067E8F8    cmp         dx,word ptr [esi]
>0067E8FB    je          0067E91E
 0067E8FD    push        1C9
 0067E902    push        6E8DE2
 0067E907    push        6E8DD5
 0067E90C    call        0067E510
 0067E911    add         esp,0C
 0067E914    cmp         eax,2
>0067E917    jne         0067E91E
 0067E919    call        KERNEL32.DebugBreak
 0067E91E    mov         eax,ebx
 0067E920    pop         esi
 0067E921    pop         ebx
 0067E922    pop         ebp
 0067E923    ret
end;*}

//0067E924
{*function sub_0067E924(?:?):?;
begin
 0067E924    push        ebp
 0067E925    mov         ebp,esp
 0067E927    add         esp,0FFFFFFCC
 0067E92A    push        ebx
 0067E92B    mov         ebx,eax
 0067E92D    mov         eax,6E9098
 0067E932    call        0066FECC
 0067E937    mov         word ptr [ebp-24],8
 0067E93D    lea         eax,[ebp-10]
 0067E940    call        0067E754
 0067E945    inc         dword ptr [ebp-18]
 0067E948    mov         word ptr [ebp-24],14
 0067E94E    lea         eax,[ebp-10]
 0067E951    mov         ecx,3
 0067E956    mov         edx,ebx
 0067E958    call        0066D524
 0067E95D    mov         eax,dword ptr [ebp-8]
 0067E960    push        eax
 0067E961    dec         dword ptr [ebp-18]
 0067E964    lea         eax,[ebp-10]
 0067E967    mov         edx,2
 0067E96C    call        0067E8B4
 0067E971    pop         eax
 0067E972    mov         edx,dword ptr [ebp-34]
 0067E975    mov         dword ptr fs:[0],edx
 0067E97C    pop         ebx
 0067E97D    mov         esp,ebp
 0067E97F    pop         ebp
 0067E980    ret
end;*}

//0067E984
{*procedure sub_0067E984(?:?; ?:?);
begin
 0067E984    push        ebp
 0067E985    mov         ebp,esp
 0067E987    add         esp,0FFFFFFC4
 0067E98A    push        ebx
 0067E98B    mov         dword ptr [ebp-18],edx
 0067E98E    mov         ebx,eax
 0067E990    mov         eax,6E9104
 0067E995    call        0066FECC
 0067E99A    mov         word ptr [ebp-2C],8
 0067E9A0    lea         eax,[ebp-10]
 0067E9A3    call        0067E754
 0067E9A8    inc         dword ptr [ebp-20]
 0067E9AB    mov         word ptr [ebp-2C],14
 0067E9B1    lea         eax,[ebp-10]
 0067E9B4    mov         ecx,100
 0067E9B9    mov         edx,ebx
 0067E9BB    call        0066D524
 0067E9C0    mov         word ptr [ebp-2C],20
 0067E9C6    lea         edx,[ebp-8]
 0067E9C9    lea         eax,[ebp-14]
 0067E9CC    call        0067DAEC
 0067E9D1    mov         edx,eax
 0067E9D3    inc         dword ptr [ebp-20]
 0067E9D6    mov         eax,dword ptr [ebp-18]
 0067E9D9    call        0067DCD0
 0067E9DE    mov         eax,dword ptr [ebp-18]
 0067E9E1    mov         word ptr [ebp-2C],2C
 0067E9E7    push        eax
 0067E9E8    dec         dword ptr [ebp-20]
 0067E9EB    lea         eax,[ebp-14]
 0067E9EE    mov         edx,2
 0067E9F3    call        0067DCA0
 0067E9F8    dec         dword ptr [ebp-20]
 0067E9FB    lea         eax,[ebp-10]
 0067E9FE    mov         edx,2
 0067EA03    call        0067E8B4
 0067EA08    pop         eax
 0067EA09    mov         word ptr [ebp-2C],20
 0067EA0F    inc         dword ptr [ebp-20]
 0067EA12    mov         edx,dword ptr [ebp-3C]
 0067EA15    mov         dword ptr fs:[0],edx
 0067EA1C    pop         ebx
 0067EA1D    mov         esp,ebp
 0067EA1F    pop         ebp
 0067EA20    ret
end;*}

//0067EA24
procedure sub_0067EA24;
begin
{*
 0067EA24    push        ebp
 0067EA25    mov         ebp,esp
 0067EA27    call        @VarClear
 0067EA2C    pop         ebp
 0067EA2D    ret
*}
end;

//0067EA30
{*function sub_0067EA30(?:?):?;
begin
 0067EA30    push        ebp
 0067EA31    mov         ebp,esp
 0067EA33    push        ebx
 0067EA34    mov         ebx,eax
 0067EA36    mov         eax,ebx
 0067EA38    call        00667324
 0067EA3D    movzx       eax,ax
 0067EA40    pop         ebx
 0067EA41    pop         ebp
 0067EA42    ret
end;*}

//0067EA44
{*procedure sub_0067EA44(?:?; ?:?; ?:?);
begin
 0067EA44    push        ebp
 0067EA45    mov         ebp,esp
 0067EA47    add         esp,0FFFFFFDC
 0067EA4A    push        ebx
 0067EA4B    push        esi
 0067EA4C    mov         dl,byte ptr [ebp+0C]
 0067EA4F    mov         byte ptr [ebp-4],dl
 0067EA52    test        dl,dl
>0067EA54    jle         0067EA61
 0067EA56    mov         eax,dword ptr [ebp+8]
 0067EA59    call        0067EF6C
 0067EA5E    mov         dword ptr [ebp+8],eax
 0067EA61    mov         esi,dword ptr [ebp+10]
 0067EA64    mov         ebx,dword ptr [ebp+8]
 0067EA67    mov         eax,6E9144
 0067EA6C    call        0066FECC
 0067EA71    push        esi
 0067EA72    push        0
 0067EA74    push        ebx
 0067EA75    call        0067EAA4
 0067EA7A    add         esp,0C
 0067EA7D    add         dword ptr [ebp-8],4
 0067EA81    mov         edx,dword ptr [esi+0C]
 0067EA84    mov         dword ptr [ebx+0C],edx
 0067EA87    mov         eax,ebx
 0067EA89    mov         edx,dword ptr [ebp-24]
 0067EA8C    mov         dword ptr fs:[0],edx
 0067EA93    cmp         byte ptr [ebp+0C],0
>0067EA97    je          0067EA9E
 0067EA99    call        0067EF79
 0067EA9E    pop         esi
 0067EA9F    pop         ebx
 0067EAA0    mov         esp,ebp
 0067EAA2    pop         ebp
 0067EAA3    ret
end;*}

//0067EAA4
{*procedure sub_0067EAA4(?:?; ?:?; ?:?);
begin
 0067EAA4    push        ebp
 0067EAA5    mov         ebp,esp
 0067EAA7    add         esp,0FFFFFFDC
 0067EAAA    push        ebx
 0067EAAB    push        esi
 0067EAAC    mov         dl,byte ptr [ebp+0C]
 0067EAAF    mov         byte ptr [ebp-4],dl
 0067EAB2    test        dl,dl
>0067EAB4    jle         0067EAC1
 0067EAB6    mov         eax,dword ptr [ebp+8]
 0067EAB9    call        0067EF6C
 0067EABE    mov         dword ptr [ebp+8],eax
 0067EAC1    mov         esi,dword ptr [ebp+10]
 0067EAC4    mov         ebx,dword ptr [ebp+8]
 0067EAC7    mov         eax,6E914C
 0067EACC    call        0066FECC
 0067EAD1    push        esi
 0067EAD2    push        0
 0067EAD4    push        ebx
 0067EAD5    call        004B33C8
 0067EADA    add         esp,0C
 0067EADD    add         dword ptr [ebp-8],3
 0067EAE1    mov         eax,ebx
 0067EAE3    mov         edx,dword ptr [ebp-24]
 0067EAE6    mov         dword ptr fs:[0],edx
 0067EAED    cmp         byte ptr [ebp+0C],0
>0067EAF1    je          0067EAF8
 0067EAF3    call        0067EF79
 0067EAF8    pop         esi
 0067EAF9    pop         ebx
 0067EAFA    mov         esp,ebp
 0067EAFC    pop         ebp
 0067EAFD    ret
end;*}

//0067EBDC
procedure sub_0067EBDC;
begin
{*
 0067EBDC    push        ebp
 0067EBDD    mov         ebp,esp
 0067EBDF    add         esp,0FFFFFFD8
 0067EBE2    push        ebx
 0067EBE3    call        0067EF81
 0067EBE8    mov         ebx,edx
 0067EBEA    mov         dword ptr [ebp-4],eax
 0067EBED    mov         eax,6E9188
 0067EBF2    call        0066FECC
 0067EBF7    mov         dword ptr [ebp-0C],4
 0067EBFE    test        bl,bl
>0067EC00    jl          0067EC16
 0067EC02    mov         word ptr [ebp-18],8
 0067EC08    sub         dword ptr [ebp-0C],4
 0067EC0C    xor         edx,edx
 0067EC0E    mov         eax,dword ptr [ebp-4]
 0067EC11    call        0067EC50
 0067EC16    mov         edx,dword ptr [ebp-28]
 0067EC19    mov         dword ptr fs:[0],edx
 0067EC20    test        bl,bl
>0067EC22    jle         0067EC2C
 0067EC24    mov         eax,dword ptr [ebp-4]
 0067EC27    call        0067EF74
 0067EC2C    pop         ebx
 0067EC2D    mov         esp,ebp
 0067EC2F    pop         ebp
 0067EC30    ret
*}
end;

//0067EC50
procedure sub_0067EC50;
begin
{*
 0067EC50    push        ebp
 0067EC51    mov         ebp,esp
 0067EC53    add         esp,0FFFFFFD8
 0067EC56    push        ebx
 0067EC57    call        0067EF81
 0067EC5C    mov         ebx,edx
 0067EC5E    mov         dword ptr [ebp-4],eax
 0067EC61    mov         eax,6E91AC
 0067EC66    call        0066FECC
 0067EC6B    mov         dword ptr [ebp-0C],3
 0067EC72    test        bl,bl
>0067EC74    jl          0067EC8A
 0067EC76    mov         word ptr [ebp-18],8
 0067EC7C    sub         dword ptr [ebp-0C],3
 0067EC80    xor         edx,edx
 0067EC82    mov         eax,dword ptr [ebp-4]
 0067EC85    call        00401B24
 0067EC8A    mov         edx,dword ptr [ebp-28]
 0067EC8D    mov         dword ptr fs:[0],edx
 0067EC94    test        bl,bl
>0067EC96    jle         0067ECA0
 0067EC98    mov         eax,dword ptr [ebp-4]
 0067EC9B    call        0067EF74
 0067ECA0    pop         ebx
 0067ECA1    mov         esp,ebp
 0067ECA3    pop         ebp
 0067ECA4    ret
*}
end;

end.