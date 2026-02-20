//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit109;

interface

uses
  SysUtils, Classes;

    procedure sub_00674E0C;//00674E0C
    //function sub_00674EAC(?:?; ?:?):?;//00674EAC
    //function sub_00675104(?:?; ?:?):?;//00675104
    //procedure sub_006752C0(?:?);//006752C0
    //function sub_0067566C(?:?; ?:?):?;//0067566C
    //function sub_006758A0(?:?; ?:?):?;//006758A0
    //function sub_00675A40(?:?; ?:?; ?:?):?;//00675A40
    //function sub_00675A9C(?:?; ?:?; ?:?; ?:?):?;//00675A9C
    //function sub_00675AF8(?:?; ?:?; ?:?):?;//00675AF8
    //function sub_00675BE0(?:?; ?:?):?;//00675BE0
    //function sub_00675D60(?:?; ?:?):?;//00675D60
    //function sub_006761BC(?:?; ?:?):?;//006761BC
    //function sub_00676244:?;//00676244
    //function sub_00676250:?;//00676250
    //function sub_006762F4(?:?):?;//006762F4
    //function sub_00676318(?:?):?;//00676318
    //function sub_0067636C(?:?):?;//0067636C
    //function sub_0067643C(?:?; ?:?; ?:?):?;//0067643C
    //function sub_00676510(?:?; ?:?):?;//00676510
    //procedure sub_00676584(?:?; ?:?; ?:?);//00676584
    //procedure sub_006766EC(?:?; ?:?; ?:?);//006766EC
    procedure sub_00676890;//00676890
    //function sub_0067692B(?:?; ?:Extended):?;//0067692B
    //function sub_006769EE(?:?; ?:Extended):?;//006769EE
    procedure sub_00676A90;//00676A90
    //procedure sub_00676A98(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00676A98
    //procedure sub_00676B48(?:?);//00676B48
    //function sub_00676CD0(?:?):?;//00676CD0
    //procedure sub_00676D48(?:?; ?:?);//00676D48
    //function sub_00676D64:?;//00676D64
    //procedure sub_00676D78(?:?; ?:?; ?:?);//00676D78
    //function sub_00676DB8(?:?; ?:?):?;//00676DB8
    procedure sub_00676DE8;//00676DE8
    //function sub_00676DEE:?;//00676DEE
    procedure sub_00676DF4;//00676DF4
    procedure sub_00676DFA;//00676DFA
    //procedure sub_00676E30(?:?; ?:?);//00676E30
    procedure sub_00676E4C;//00676E4C
    procedure sub_00676E64;//00676E64
    //procedure sub_00676E90(?:?);//00676E90
    procedure sub_00676EC0;//00676EC0
    procedure sub_00676EE4;//00676EE4
    //function sub_00676EF8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00676EF8
    //procedure sub_00676FAC(?:?; ?:Extended; ?:?; ?:?);//00676FAC
    //function sub_006770C4(?:?; ?:?; ?:?; ?:?; ?:?):?;//006770C4
    //procedure sub_00677138(?:?; ?:?);//00677138
    //procedure sub_00677184(?:?; ?:?; ?:?);//00677184
    //procedure sub_00677228(?:?; ?:?);//00677228
    //function sub_00677240(?:?):?;//00677240
    //function sub_00677268(?:?; ?:?):?;//00677268
    //function sub_00677298(?:?; ?:?; ?:?):?;//00677298

implementation

//00674E0C
procedure sub_00674E0C;
begin
{*
 00674E0C    push        ebx
 00674E0D    push        18
 00674E0F    call        0066F2C8
 00674E14    pop         ecx
 00674E15    mov         ebx,eax
 00674E17    mov         dword ptr ds:[6E69D0],ebx;gvar_006E69D0
 00674E1D    push        ebx
 00674E1E    call        KERNEL32.InitializeCriticalSection
 00674E23    pop         ebx
 00674E24    ret
*}
end;

//00674EAC
{*function sub_00674EAC(?:?; ?:?):?;
begin
 00674EAC    push        ebp
 00674EAD    mov         ebp,esp
 00674EAF    add         esp,0FFFFFF9C
 00674EB2    mov         ecx,10
 00674EB7    push        ebx
 00674EB8    push        esi
 00674EB9    push        edi
 00674EBA    xor         edi,edi
 00674EBC    mov         esi,dword ptr [ebp+0C]
 00674EBF    xor         eax,eax
 00674EC1    mov         dword ptr [ebp-0C],1
 00674EC8    mov         dword ptr [ebp-10],eax
 00674ECB    push        esi
 00674ECC    push        edi
 00674ECD    lea         edi,[ebp-64]
 00674ED0    mov         esi,6E69D4
 00674ED5    mov         ebx,1
 00674EDA    rep movs    dword ptr [edi],dword ptr [esi]
 00674EDC    pop         edi
 00674EDD    pop         esi
 00674EDE    mov         eax,[006E6A14];0x303030 gvar_006E6A14
 00674EE3    mov         dword ptr [ebp-14],eax
 00674EE6    push        esi
 00674EE7    call        006762F4
 00674EEC    pop         ecx
>00674EED    jmp         00674F69
 00674EEF    mov         edx,ebx
 00674EF1    lea         eax,[ebp-64]
 00674EF4    or          dx,400
 00674EF9    movzx       ecx,dx
 00674EFC    or          ecx,0
 00674EFF    mov         dword ptr [ebp-4],ecx
 00674F02    push        40
 00674F04    push        eax
 00674F05    push        1001
 00674F0A    mov         edx,dword ptr [ebp-4]
 00674F0D    push        edx
 00674F0E    call        KERNEL32.GetLocaleInfoA
 00674F13    push        4
 00674F15    lea         ecx,[ebp-14]
 00674F18    push        ecx
 00674F19    push        3
 00674F1B    mov         eax,dword ptr [ebp-4]
 00674F1E    push        eax
 00674F1F    call        KERNEL32.GetLocaleInfoA
 00674F24    lea         edx,[ebp-64]
 00674F27    push        edx
 00674F28    call        006762F4
 00674F2D    pop         ecx
 00674F2E    lea         ecx,[ebp-14]
 00674F31    push        ecx
 00674F32    call        006762F4
 00674F37    pop         ecx
 00674F38    lea         eax,[ebp-64]
 00674F3B    push        eax
 00674F3C    push        esi
 00674F3D    call        0066FD78
 00674F42    add         esp,8
 00674F45    test        eax,eax
>00674F47    je          00674F50
 00674F49    mov         edi,1
>00674F4E    jmp         00674F69
 00674F50    lea         eax,[ebp-14]
 00674F53    push        eax
 00674F54    push        esi
 00674F55    call        0066FD78
 00674F5A    add         esp,8
 00674F5D    cmp         esi,eax
>00674F5F    jne         00674F68
 00674F61    mov         edi,1
>00674F66    jmp         00674F69
 00674F68    inc         ebx
 00674F69    test        edi,edi
>00674F6B    jne         00674F76
 00674F6D    cmp         ebx,38
>00674F70    jle         00674EEF
 00674F76    test        edi,edi
>00674F78    jne         00674FA9
 00674F7A    push        5F
 00674F7C    push        esi
 00674F7D    call        0066F9E4
 00674F82    add         esp,8
 00674F85    test        eax,eax
>00674F87    jne         00674FA9
 00674F89    push        2E
 00674F8B    push        esi
 00674F8C    call        0066F9E4
 00674F91    add         esp,8
 00674F94    test        eax,eax
>00674F96    jne         00674FA9
 00674F98    push        20000101
 00674F9D    call        KERNEL32.SetLastError
 00674FA2    xor         eax,eax
>00674FA4    jmp         006750FB
 00674FA9    test        edi,edi
>00674FAB    jne         00674FCC
 00674FAD    mov         edx,dword ptr [ebp+8]
 00674FB0    cmp         dword ptr [edx+4],0
>00674FB4    jne         00674FC0
 00674FB6    call        KERNEL32.GetSystemDefaultLangID
 00674FBB    movzx       ebx,ax
>00674FBE    jmp         00674FCC
 00674FC0    mov         eax,dword ptr [ebp+8]
 00674FC3    mov         ebx,dword ptr [eax+4]
 00674FC6    and         ebx,3FF
 00674FCC    push        5F
 00674FCE    push        esi
 00674FCF    call        0066F9E4
 00674FD4    add         esp,8
 00674FD7    mov         dword ptr [ebp-18],eax
 00674FDA    test        eax,eax
>00674FDC    je          006750A4
 00674FE2    inc         dword ptr [ebp-18]
 00674FE5    push        2E
 00674FE7    mov         edx,dword ptr [ebp-18]
 00674FEA    push        edx
 00674FEB    call        0066F9E4
 00674FF0    add         esp,8
 00674FF3    mov         dword ptr [ebp-1C],eax
 00674FF6    test        eax,eax
>00674FF8    je          00675000
 00674FFA    mov         edx,dword ptr [ebp-1C]
 00674FFD    mov         byte ptr [edx],0
 00675000    mov         dword ptr [ebp-8],1
 00675007    xor         edi,edi
>00675009    jmp         0067507A
 0067500B    push        40
 0067500D    lea         eax,[ebp-64]
 00675010    push        eax
 00675011    push        1002
 00675016    mov         dx,word ptr [ebp-0C]
 0067501A    shl         edx,0A
 0067501D    or          dx,bx
 00675020    movzx       ecx,dx
 00675023    or          ecx,0
 00675026    push        ecx
 00675027    call        KERNEL32.GetLocaleInfoA
 0067502C    mov         dword ptr [ebp-8],eax
 0067502F    lea         eax,[ebp-64]
 00675032    push        eax
 00675033    call        006762F4
 00675038    pop         ecx
 00675039    lea         eax,[ebp-64]
 0067503C    mov         edx,dword ptr [ebp-18]
 0067503F    mov         cl,byte ptr [eax]
 00675041    cmp         cl,byte ptr [edx]
>00675043    jne         00675077
 00675045    test        cl,cl
>00675047    je          0067505B
 00675049    mov         cl,byte ptr [eax+1]
 0067504C    cmp         cl,byte ptr [edx+1]
>0067504F    jne         00675077
 00675051    add         eax,2
 00675054    add         edx,2
 00675057    test        cl,cl
>00675059    jne         0067503F
>0067505B    jne         00675077
 0067505D    mov         ax,word ptr [ebp-0C]
 00675061    mov         edi,1
 00675066    shl         eax,0A
 00675069    or          ax,bx
 0067506C    movzx       edx,ax
 0067506F    or          edx,0
 00675072    mov         dword ptr [ebp-10],edx
>00675075    jmp         0067507A
 00675077    inc         dword ptr [ebp-0C]
 0067507A    test        edi,edi
>0067507C    jne         00675084
 0067507E    cmp         dword ptr [ebp-8],0
>00675082    jne         0067500B
 00675084    test        edi,edi
>00675086    jne         00675096
 00675088    push        20000101
 0067508D    call        KERNEL32.SetLastError
 00675092    xor         eax,eax
>00675094    jmp         006750FB
 00675096    cmp         dword ptr [ebp-1C],0
>0067509A    je          006750B2
 0067509C    mov         edx,dword ptr [ebp-1C]
 0067509F    mov         byte ptr [edx],2E
>006750A2    jmp         006750B2
 006750A4    or          bx,400
 006750A9    movzx       ecx,bx
 006750AC    or          ecx,0
 006750AF    mov         dword ptr [ebp-10],ecx
 006750B2    push        2E
 006750B4    push        esi
 006750B5    call        0066F9E4
 006750BA    add         esp,8
 006750BD    mov         dword ptr [ebp-18],eax
 006750C0    test        eax,eax
>006750C2    jne         006750E6
 006750C4    push        7
 006750C6    lea         edx,[ebp-24]
 006750C9    push        edx
 006750CA    push        0B
 006750CC    mov         ecx,dword ptr [ebp-10]
 006750CF    push        ecx
 006750D0    call        KERNEL32.GetLocaleInfoA
 006750D5    lea         eax,[ebp-24]
 006750D8    push        eax
 006750D9    call        00676CD0
 006750DE    pop         ecx
 006750DF    mov         edx,dword ptr [ebp+8]
 006750E2    mov         dword ptr [edx],eax
>006750E4    jmp         006750F8
 006750E6    inc         dword ptr [ebp-18]
 006750E9    mov         ecx,dword ptr [ebp-18]
 006750EC    push        ecx
 006750ED    call        00676CD0
 006750F2    pop         ecx
 006750F3    mov         edx,dword ptr [ebp+8]
 006750F6    mov         dword ptr [edx],eax
 006750F8    mov         eax,dword ptr [ebp-10]
 006750FB    pop         edi
 006750FC    pop         esi
 006750FD    pop         ebx
 006750FE    mov         esp,ebp
 00675100    pop         ebp
 00675101    ret
end;*}

//00675104
{*function sub_00675104(?:?; ?:?):?;
begin
 00675104    push        ebp
 00675105    mov         ebp,esp
 00675107    push        ebx
 00675108    push        esi
 00675109    push        edi
 0067510A    mov         edi,dword ptr [ebp+0C]
 0067510D    mov         ebx,dword ptr [ebp+8]
 00675110    mov         esi,1
 00675115    mov         eax,dword ptr [ebx+24]
 00675118    test        eax,eax
>0067511A    je          00675123
 0067511C    push        eax
 0067511D    call        0066F2D8
 00675122    pop         ecx
 00675123    movsx       ecx,di
 00675126    xor         edx,edx
 00675128    and         ecx,4
 0067512B    cmp         ecx,4
 0067512E    mov         dword ptr [ebx+24],edx
>00675131    jne         00675178
 00675133    push        34
 00675135    call        0066F2C8
 0067513A    pop         ecx
 0067513B    mov         dword ptr [ebx+14],eax
 0067513E    test        eax,eax
>00675140    jne         00675150
 00675142    push        0E
 00675144    call        KERNEL32.SetLastError
 00675149    xor         eax,eax
>0067514B    jmp         006752BB
 00675150    mov         edx,dword ptr [ebx+14]
 00675153    push        edx
 00675154    mov         ecx,dword ptr [ebx+4]
 00675157    push        ecx
 00675158    call        00675BE0
 0067515D    add         esp,8
 00675160    imul        esi,eax
 00675163    test        esi,esi
>00675165    je          00675178
 00675167    push        6E6A75
 0067516C    push        ebx
 0067516D    call        006758A0
 00675172    add         esp,8
 00675175    imul        esi,eax
 00675178    movsx       eax,di
 0067517B    and         eax,20
 0067517E    cmp         eax,20
>00675181    jne         006751CB
 00675183    push        0C4
 00675188    call        0066F2C8
 0067518D    pop         ecx
 0067518E    mov         dword ptr [ebx+20],eax
 00675191    test        eax,eax
>00675193    jne         006751A3
 00675195    push        0E
 00675197    call        KERNEL32.SetLastError
 0067519C    xor         eax,eax
>0067519E    jmp         006752BB
 006751A3    mov         edx,dword ptr [ebx+20]
 006751A6    push        edx
 006751A7    mov         ecx,dword ptr [ebx+4]
 006751AA    push        ecx
 006751AB    call        00675D60
 006751B0    add         esp,8
 006751B3    imul        esi,eax
 006751B6    test        esi,esi
>006751B8    je          006751CB
 006751BA    push        6E6A81
 006751BF    push        ebx
 006751C0    call        006758A0
 006751C5    add         esp,8
 006751C8    imul        esi,eax
 006751CB    movsx       eax,di
 006751CE    and         eax,10
 006751D1    cmp         eax,10
>006751D4    jne         0067521B
 006751D6    push        18
 006751D8    call        0066F2C8
 006751DD    pop         ecx
 006751DE    mov         dword ptr [ebx+18],eax
 006751E1    test        eax,eax
>006751E3    jne         006751F3
 006751E5    push        0E
 006751E7    call        KERNEL32.SetLastError
 006751EC    xor         eax,eax
>006751EE    jmp         006752BB
 006751F3    mov         edx,dword ptr [ebx+18]
 006751F6    push        edx
 006751F7    mov         ecx,dword ptr [ebx+4]
 006751FA    push        ecx
 006751FB    call        006761BC
 00675200    add         esp,8
 00675203    imul        esi,eax
 00675206    test        esi,esi
>00675208    je          0067521B
 0067520A    push        6E6A89
 0067520F    push        ebx
 00675210    call        006758A0
 00675215    add         esp,8
 00675218    imul        esi,eax
 0067521B    movsx       eax,di
 0067521E    and         eax,1
 00675221    dec         eax
>00675222    jne         00675266
 00675224    push        2
 00675226    call        0066F2C8
 0067522B    pop         ecx
 0067522C    mov         dword ptr [ebx+1C],eax
 0067522F    test        eax,eax
>00675231    jne         0067523E
 00675233    push        0E
 00675235    call        KERNEL32.SetLastError
 0067523A    xor         eax,eax
>0067523C    jmp         006752BB
 0067523E    mov         edx,dword ptr [ebx+1C]
 00675241    push        edx
 00675242    mov         ecx,dword ptr [ebx+4]
 00675245    push        ecx
 00675246    call        00676244
 0067524B    add         esp,8
 0067524E    imul        esi,eax
 00675251    test        esi,esi
>00675253    je          00675266
 00675255    push        6E6A94
 0067525A    push        ebx
 0067525B    call        006758A0
 00675260    add         esp,8
 00675263    imul        esi,eax
 00675266    movsx       eax,di
 00675269    and         eax,2
 0067526C    cmp         eax,2
>0067526F    jne         006752B9
 00675271    push        202
 00675276    call        0066F2C8
 0067527B    pop         ecx
 0067527C    mov         dword ptr [ebx+10],eax
 0067527F    test        eax,eax
>00675281    jne         0067528E
 00675283    push        0E
 00675285    call        KERNEL32.SetLastError
 0067528A    xor         eax,eax
>0067528C    jmp         006752BB
 0067528E    mov         edx,dword ptr [ebx+10]
 00675291    push        edx
 00675292    mov         ecx,dword ptr [ebx]
 00675294    push        ecx
 00675295    mov         eax,dword ptr [ebx+4]
 00675298    push        eax
 00675299    call        00675AF8
 0067529E    add         esp,0C
 006752A1    imul        esi,eax
 006752A4    test        esi,esi
>006752A6    je          006752B9
 006752A8    push        6E6A9F
 006752AD    push        ebx
 006752AE    call        006758A0
 006752B3    add         esp,8
 006752B6    imul        esi,eax
 006752B9    mov         eax,esi
 006752BB    pop         edi
 006752BC    pop         esi
 006752BD    pop         ebx
 006752BE    pop         ebp
 006752BF    ret
end;*}

//006752C0
{*procedure sub_006752C0(?:?);
begin
 006752C0    push        ebp
 006752C1    mov         ebp,esp
 006752C3    push        ebx
 006752C4    mov         ebx,dword ptr [ebp+8]
 006752C7    mov         eax,dword ptr [ebx+14]
 006752CA    test        eax,eax
>006752CC    je          00675349
 006752CE    cmp         eax,6E6AE4
>006752D3    je          00675349
 006752D5    mov         edx,dword ptr [eax+18]
 006752D8    push        edx
 006752D9    call        0066F2D8
 006752DE    pop         ecx
 006752DF    mov         ecx,dword ptr [ebx+14]
 006752E2    mov         eax,dword ptr [ecx+14]
 006752E5    push        eax
 006752E6    call        0066F2D8
 006752EB    pop         ecx
 006752EC    mov         edx,dword ptr [ebx+14]
 006752EF    mov         ecx,dword ptr [edx+1C]
 006752F2    push        ecx
 006752F3    call        0066F2D8
 006752F8    pop         ecx
 006752F9    mov         eax,dword ptr [ebx+14]
 006752FC    mov         edx,dword ptr [eax+20]
 006752FF    push        edx
 00675300    call        0066F2D8
 00675305    pop         ecx
 00675306    mov         ecx,dword ptr [ebx+14]
 00675309    mov         eax,dword ptr [ecx+24]
 0067530C    push        eax
 0067530D    call        0066F2D8
 00675312    pop         ecx
 00675313    mov         edx,dword ptr [ebx+14]
 00675316    mov         ecx,dword ptr [edx+28]
 00675319    push        ecx
 0067531A    call        0066F2D8
 0067531F    pop         ecx
 00675320    mov         eax,dword ptr [ebx+14]
 00675323    mov         edx,dword ptr [eax+2C]
 00675326    push        edx
 00675327    call        0066F2D8
 0067532C    pop         ecx
 0067532D    mov         ecx,dword ptr [ebx+14]
 00675330    mov         eax,dword ptr [ecx+30]
 00675333    push        eax
 00675334    call        0066F2D8
 00675339    pop         ecx
 0067533A    mov         edx,dword ptr [ebx+14]
 0067533D    push        edx
 0067533E    call        0066F2D8
 00675343    pop         ecx
 00675344    xor         ecx,ecx
 00675346    mov         dword ptr [ebx+14],ecx
 00675349    mov         eax,dword ptr [ebx+20]
 0067534C    test        eax,eax
>0067534E    je          006755E6
 00675354    cmp         eax,6E6B30
>00675359    je          006755E6
 0067535F    mov         edx,dword ptr [eax]
 00675361    push        edx
 00675362    call        0066F2D8
 00675367    pop         ecx
 00675368    mov         ecx,dword ptr [ebx+20]
 0067536B    mov         eax,dword ptr [ecx+4]
 0067536E    push        eax
 0067536F    call        0066F2D8
 00675374    pop         ecx
 00675375    mov         edx,dword ptr [ebx+20]
 00675378    mov         ecx,dword ptr [edx+8]
 0067537B    push        ecx
 0067537C    call        0066F2D8
 00675381    pop         ecx
 00675382    mov         eax,dword ptr [ebx+20]
 00675385    mov         edx,dword ptr [eax+0C]
 00675388    push        edx
 00675389    call        0066F2D8
 0067538E    pop         ecx
 0067538F    mov         ecx,dword ptr [ebx+20]
 00675392    mov         eax,dword ptr [ecx+10]
 00675395    push        eax
 00675396    call        0066F2D8
 0067539B    pop         ecx
 0067539C    mov         edx,dword ptr [ebx+20]
 0067539F    mov         ecx,dword ptr [edx+14]
 006753A2    push        ecx
 006753A3    call        0066F2D8
 006753A8    pop         ecx
 006753A9    mov         eax,dword ptr [ebx+20]
 006753AC    mov         edx,dword ptr [eax+18]
 006753AF    push        edx
 006753B0    call        0066F2D8
 006753B5    pop         ecx
 006753B6    mov         ecx,dword ptr [ebx+20]
 006753B9    mov         eax,dword ptr [ecx+2C]
 006753BC    push        eax
 006753BD    call        0066F2D8
 006753C2    pop         ecx
 006753C3    mov         edx,dword ptr [ebx+20]
 006753C6    mov         ecx,dword ptr [edx+30]
 006753C9    push        ecx
 006753CA    call        0066F2D8
 006753CF    pop         ecx
 006753D0    mov         eax,dword ptr [ebx+20]
 006753D3    mov         edx,dword ptr [eax+34]
 006753D6    push        edx
 006753D7    call        0066F2D8
 006753DC    pop         ecx
 006753DD    mov         ecx,dword ptr [ebx+20]
 006753E0    mov         eax,dword ptr [ecx+38]
 006753E3    push        eax
 006753E4    call        0066F2D8
 006753E9    pop         ecx
 006753EA    mov         edx,dword ptr [ebx+20]
 006753ED    mov         ecx,dword ptr [edx+3C]
 006753F0    push        ecx
 006753F1    call        0066F2D8
 006753F6    pop         ecx
 006753F7    mov         eax,dword ptr [ebx+20]
 006753FA    mov         edx,dword ptr [eax+40]
 006753FD    push        edx
 006753FE    call        0066F2D8
 00675403    pop         ecx
 00675404    mov         ecx,dword ptr [ebx+20]
 00675407    mov         eax,dword ptr [ecx+44]
 0067540A    push        eax
 0067540B    call        0066F2D8
 00675410    pop         ecx
 00675411    mov         edx,dword ptr [ebx+20]
 00675414    mov         ecx,dword ptr [edx+48]
 00675417    push        ecx
 00675418    call        0066F2D8
 0067541D    pop         ecx
 0067541E    mov         eax,dword ptr [ebx+20]
 00675421    mov         edx,dword ptr [eax+4C]
 00675424    push        edx
 00675425    call        0066F2D8
 0067542A    pop         ecx
 0067542B    mov         ecx,dword ptr [ebx+20]
 0067542E    mov         eax,dword ptr [ecx+50]
 00675431    push        eax
 00675432    call        0066F2D8
 00675437    pop         ecx
 00675438    mov         edx,dword ptr [ebx+20]
 0067543B    mov         ecx,dword ptr [edx+54]
 0067543E    push        ecx
 0067543F    call        0066F2D8
 00675444    pop         ecx
 00675445    mov         eax,dword ptr [ebx+20]
 00675448    mov         edx,dword ptr [eax+58]
 0067544B    push        edx
 0067544C    call        0066F2D8
 00675451    pop         ecx
 00675452    mov         ecx,dword ptr [ebx+20]
 00675455    mov         eax,dword ptr [ecx+5C]
 00675458    push        eax
 00675459    call        0066F2D8
 0067545E    pop         ecx
 0067545F    mov         edx,dword ptr [ebx+20]
 00675462    mov         ecx,dword ptr [edx+60]
 00675465    push        ecx
 00675466    call        0066F2D8
 0067546B    pop         ecx
 0067546C    mov         eax,dword ptr [ebx+20]
 0067546F    mov         edx,dword ptr [eax+64]
 00675472    push        edx
 00675473    call        0066F2D8
 00675478    pop         ecx
 00675479    mov         ecx,dword ptr [ebx+20]
 0067547C    mov         eax,dword ptr [ecx+68]
 0067547F    push        eax
 00675480    call        0066F2D8
 00675485    pop         ecx
 00675486    mov         edx,dword ptr [ebx+20]
 00675489    mov         ecx,dword ptr [edx+6C]
 0067548C    push        ecx
 0067548D    call        0066F2D8
 00675492    pop         ecx
 00675493    mov         eax,dword ptr [ebx+20]
 00675496    mov         edx,dword ptr [eax+70]
 00675499    push        edx
 0067549A    call        0066F2D8
 0067549F    pop         ecx
 006754A0    mov         ecx,dword ptr [ebx+20]
 006754A3    mov         eax,dword ptr [ecx+74]
 006754A6    push        eax
 006754A7    call        0066F2D8
 006754AC    pop         ecx
 006754AD    mov         edx,dword ptr [ebx+20]
 006754B0    mov         ecx,dword ptr [edx+78]
 006754B3    push        ecx
 006754B4    call        0066F2D8
 006754B9    pop         ecx
 006754BA    mov         eax,dword ptr [ebx+20]
 006754BD    mov         edx,dword ptr [eax+7C]
 006754C0    push        edx
 006754C1    call        0066F2D8
 006754C6    pop         ecx
 006754C7    mov         ecx,dword ptr [ebx+20]
 006754CA    mov         eax,dword ptr [ecx+80]
 006754D0    push        eax
 006754D1    call        0066F2D8
 006754D6    pop         ecx
 006754D7    mov         edx,dword ptr [ebx+20]
 006754DA    mov         ecx,dword ptr [edx+84]
 006754E0    push        ecx
 006754E1    call        0066F2D8
 006754E6    pop         ecx
 006754E7    mov         eax,dword ptr [ebx+20]
 006754EA    mov         edx,dword ptr [eax+88]
 006754F0    push        edx
 006754F1    call        0066F2D8
 006754F6    pop         ecx
 006754F7    mov         ecx,dword ptr [ebx+20]
 006754FA    mov         eax,dword ptr [ecx+8C]
 00675500    push        eax
 00675501    call        0066F2D8
 00675506    pop         ecx
 00675507    mov         edx,dword ptr [ebx+20]
 0067550A    mov         ecx,dword ptr [edx+90]
 00675510    push        ecx
 00675511    call        0066F2D8
 00675516    pop         ecx
 00675517    mov         eax,dword ptr [ebx+20]
 0067551A    mov         edx,dword ptr [eax+94]
 00675520    push        edx
 00675521    call        0066F2D8
 00675526    pop         ecx
 00675527    mov         ecx,dword ptr [ebx+20]
 0067552A    mov         eax,dword ptr [ecx+98]
 00675530    push        eax
 00675531    call        0066F2D8
 00675536    pop         ecx
 00675537    mov         edx,dword ptr [ebx+20]
 0067553A    mov         ecx,dword ptr [edx+9C]
 00675540    push        ecx
 00675541    call        0066F2D8
 00675546    pop         ecx
 00675547    mov         eax,dword ptr [ebx+20]
 0067554A    mov         edx,dword ptr [eax+0A0]
 00675550    push        edx
 00675551    call        0066F2D8
 00675556    pop         ecx
 00675557    mov         ecx,dword ptr [ebx+20]
 0067555A    mov         eax,dword ptr [ecx+0A4]
 00675560    push        eax
 00675561    call        0066F2D8
 00675566    pop         ecx
 00675567    mov         edx,dword ptr [ebx+20]
 0067556A    mov         ecx,dword ptr [edx+0A8]
 00675570    push        ecx
 00675571    call        0066F2D8
 00675576    pop         ecx
 00675577    mov         eax,dword ptr [ebx+20]
 0067557A    mov         edx,dword ptr [eax+0AC]
 00675580    push        edx
 00675581    call        0066F2D8
 00675586    pop         ecx
 00675587    mov         ecx,dword ptr [ebx+20]
 0067558A    mov         eax,dword ptr [ecx+0B0]
 00675590    push        eax
 00675591    call        0066F2D8
 00675596    pop         ecx
 00675597    mov         edx,dword ptr [ebx+20]
 0067559A    mov         ecx,dword ptr [edx+0B4]
 006755A0    push        ecx
 006755A1    call        0066F2D8
 006755A6    pop         ecx
 006755A7    mov         eax,dword ptr [ebx+20]
 006755AA    mov         edx,dword ptr [eax+0B8]
 006755B0    push        edx
 006755B1    call        0066F2D8
 006755B6    pop         ecx
 006755B7    mov         ecx,dword ptr [ebx+20]
 006755BA    mov         eax,dword ptr [ecx+0BC]
 006755C0    push        eax
 006755C1    call        0066F2D8
 006755C6    pop         ecx
 006755C7    mov         edx,dword ptr [ebx+20]
 006755CA    mov         ecx,dword ptr [edx+0C0]
 006755D0    push        ecx
 006755D1    call        0066F2D8
 006755D6    pop         ecx
 006755D7    mov         eax,dword ptr [ebx+20]
 006755DA    push        eax
 006755DB    call        0066F2D8
 006755E0    pop         ecx
 006755E1    xor         edx,edx
 006755E3    mov         dword ptr [ebx+20],edx
 006755E6    mov         eax,dword ptr [ebx+18]
 006755E9    test        eax,eax
>006755EB    je          00675640
 006755ED    cmp         eax,6E6B18
>006755F2    je          00675640
 006755F4    mov         edx,dword ptr [eax+4]
 006755F7    push        edx
 006755F8    call        0066F2D8
 006755FD    pop         ecx
 006755FE    mov         ecx,dword ptr [ebx+18]
 00675601    mov         eax,dword ptr [ecx]
 00675603    push        eax
 00675604    call        0066F2D8
 00675609    pop         ecx
 0067560A    mov         edx,dword ptr [ebx+18]
 0067560D    mov         ecx,dword ptr [edx+8]
 00675610    push        ecx
 00675611    call        0066F2D8
 00675616    pop         ecx
 00675617    mov         eax,dword ptr [ebx+18]
 0067561A    mov         edx,dword ptr [eax+0C]
 0067561D    push        edx
 0067561E    call        0066F2D8
 00675623    pop         ecx
 00675624    mov         ecx,dword ptr [ebx+18]
 00675627    mov         eax,dword ptr [ecx+10]
 0067562A    push        eax
 0067562B    call        0066F2D8
 00675630    pop         ecx
 00675631    mov         edx,dword ptr [ebx+18]
 00675634    push        edx
 00675635    call        0066F2D8
 0067563A    pop         ecx
 0067563B    xor         ecx,ecx
 0067563D    mov         dword ptr [ebx+18],ecx
 00675640    mov         eax,dword ptr [ebx+1C]
 00675643    test        eax,eax
>00675645    je          00675653
 00675647    push        eax
 00675648    call        0066F2D8
 0067564D    pop         ecx
 0067564E    xor         edx,edx
 00675650    mov         dword ptr [ebx+1C],edx
 00675653    mov         eax,dword ptr [ebx+10]
 00675656    test        eax,eax
>00675658    je          00675666
 0067565A    push        eax
 0067565B    call        0066F2D8
 00675660    pop         ecx
 00675661    xor         edx,edx
 00675663    mov         dword ptr [ebx+10],edx
 00675666    pop         ebx
 00675667    pop         ebp
 00675668    ret
end;*}

//0067566C
{*function sub_0067566C(?:?; ?:?):?;
begin
 0067566C    push        ebp
 0067566D    mov         ebp,esp
 0067566F    add         esp,0FFFFFE00
 00675675    push        ebx
 00675676    push        esi
 00675677    push        edi
 00675678    xor         esi,esi
 0067567A    mov         ebx,dword ptr [ebp+0C]
 0067567D    call        00674DF4
 00675682    push        100
 00675687    push        0
 00675689    lea         eax,[ebp-100]
 0067568F    push        eax
 00675690    call        0066F904
 00675695    add         esp,0C
 00675698    xor         eax,eax
>0067569A    jmp         006757F8
 0067569F    cmp         dl,3D
>006756A2    jne         006757A3
 006756A8    lea         eax,[ebp-100]
 006756AE    mov         edx,6E6AA8
 006756B3    mov         cl,byte ptr [eax]
 006756B5    cmp         cl,byte ptr [edx]
>006756B7    jne         006756D5
 006756B9    test        cl,cl
>006756BB    je          006756CF
 006756BD    mov         cl,byte ptr [eax+1]
 006756C0    cmp         cl,byte ptr [edx+1]
>006756C3    jne         006756D5
 006756C5    add         eax,2
 006756C8    add         edx,2
 006756CB    test        cl,cl
>006756CD    jne         006756B3
>006756CF    jne         006756D5
 006756D1    or          si,2
 006756D5    lea         eax,[ebp-100]
 006756DB    mov         edx,6E6AB1
 006756E0    mov         cl,byte ptr [eax]
 006756E2    cmp         cl,byte ptr [edx]
>006756E4    jne         00675702
 006756E6    test        cl,cl
>006756E8    je          006756FC
 006756EA    mov         cl,byte ptr [eax+1]
 006756ED    cmp         cl,byte ptr [edx+1]
>006756F0    jne         00675702
 006756F2    add         eax,2
 006756F5    add         edx,2
 006756F8    test        cl,cl
>006756FA    jne         006756E0
>006756FC    jne         00675702
 006756FE    or          si,20
 00675702    lea         eax,[ebp-100]
 00675708    mov         edx,6E6AB9
 0067570D    mov         cl,byte ptr [eax]
 0067570F    cmp         cl,byte ptr [edx]
>00675711    jne         0067572F
 00675713    test        cl,cl
>00675715    je          00675729
 00675717    mov         cl,byte ptr [eax+1]
 0067571A    cmp         cl,byte ptr [edx+1]
>0067571D    jne         0067572F
 0067571F    add         eax,2
 00675722    add         edx,2
 00675725    test        cl,cl
>00675727    jne         0067570D
>00675729    jne         0067572F
 0067572B    or          si,10
 0067572F    lea         eax,[ebp-100]
 00675735    mov         edx,6E6AC4
 0067573A    mov         cl,byte ptr [eax]
 0067573C    cmp         cl,byte ptr [edx]
>0067573E    jne         0067575C
 00675740    test        cl,cl
>00675742    je          00675756
 00675744    mov         cl,byte ptr [eax+1]
 00675747    cmp         cl,byte ptr [edx+1]
>0067574A    jne         0067575C
 0067574C    add         eax,2
 0067574F    add         edx,2
 00675752    test        cl,cl
>00675754    jne         0067573A
>00675756    jne         0067575C
 00675758    or          si,4
 0067575C    lea         eax,[ebp-100]
 00675762    mov         edx,6E6AD0
 00675767    mov         cl,byte ptr [eax]
 00675769    cmp         cl,byte ptr [edx]
>0067576B    jne         00675789
 0067576D    test        cl,cl
>0067576F    je          00675783
 00675771    mov         cl,byte ptr [eax+1]
 00675774    cmp         cl,byte ptr [edx+1]
>00675777    jne         00675789
 00675779    add         eax,2
 0067577C    add         edx,2
 0067577F    test        cl,cl
>00675781    jne         00675767
>00675783    jne         00675789
 00675785    or          si,1
 00675789    push        100
 0067578E    push        0
 00675790    lea         eax,[ebp-100]
 00675796    push        eax
 00675797    call        0066F904
 0067579C    add         esp,0C
 0067579F    xor         eax,eax
>006757A1    jmp         006757F7
 006757A3    cmp         byte ptr [ebx],0A
>006757A6    jne         006757ED
 006757A8    xor         eax,eax
 006757AA    push        esi
 006757AB    lea         edi,[ebp-100]
 006757B1    or          ecx,0FFFFFFFF
 006757B4    repne scas  byte ptr [edi]
 006757B6    not         ecx
 006757B8    sub         edi,ecx
 006757BA    lea         esi,[ebp-200]
 006757C0    xchg        esi,edi
 006757C2    mov         edx,ecx
 006757C4    mov         eax,edi
 006757C6    shr         ecx,2
 006757C9    lea         eax,[ebp-100]
 006757CF    rep movs    dword ptr [edi],dword ptr [esi]
 006757D1    mov         ecx,edx
 006757D3    and         ecx,3
 006757D6    rep movs    byte ptr [edi],byte ptr [esi]
 006757D8    pop         esi
 006757D9    push        100
 006757DE    push        0
 006757E0    push        eax
 006757E1    call        0066F904
 006757E6    add         esp,0C
 006757E9    xor         eax,eax
>006757EB    jmp         006757F7
 006757ED    mov         dl,byte ptr [ebx]
 006757EF    mov         byte ptr [ebp+eax-100],dl
 006757F6    inc         eax
 006757F7    inc         ebx
 006757F8    mov         dl,byte ptr [ebx]
 006757FA    test        dl,dl
>006757FC    jne         0067569F
 00675802    lea         eax,[ebp-200]
 00675808    push        eax
 00675809    mov         ecx,dword ptr [ebp+8]
 0067580C    push        ecx
 0067580D    call        00674EAC
 00675812    add         esp,8
 00675815    mov         edx,dword ptr [ebp+8]
 00675818    mov         dword ptr [edx+4],eax
 0067581B    push        1
 0067581D    mov         eax,dword ptr [ebp+8]
 00675820    mov         ecx,dword ptr [eax+4]
 00675823    push        ecx
 00675824    call        KERNEL32.IsValidLocale
 00675829    test        eax,eax
>0067582B    jne         00675849
 0067582D    mov         eax,dword ptr [ebp+8]
 00675830    cmp         dword ptr [eax+8],0
>00675834    jne         00675849
 00675836    push        20000103
 0067583B    call        KERNEL32.SetLastError
 00675840    call        00674E00
 00675845    xor         eax,eax
>00675847    jmp         00675899
 00675849    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 0067584F    mov         ecx,dword ptr [edx+4]
 00675852    push        ecx
 00675853    call        KERNEL32.SetThreadLocale
 00675858    mov         eax,[006E6C20];^gvar_006E6BF4
 0067585D    push        eax
 0067585E    call        006752C0
 00675863    pop         ecx
 00675864    push        esi
 00675865    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 0067586B    push        edx
 0067586C    call        00675104
 00675871    add         esp,8
 00675874    test        eax,eax
>00675876    jne         0067588B
 00675878    push        20000102
 0067587D    call        KERNEL32.SetLastError
 00675882    call        00674E00
 00675887    xor         eax,eax
>00675889    jmp         00675899
 0067588B    call        00674E00
 00675890    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 00675896    mov         eax,dword ptr [edx+24]
 00675899    pop         edi
 0067589A    pop         esi
 0067589B    pop         ebx
 0067589C    mov         esp,ebp
 0067589E    pop         ebp
 0067589F    ret
end;*}

//006758A0
{*function sub_006758A0(?:?; ?:?):?;
begin
 006758A0    push        ebp
 006758A1    mov         ebp,esp
 006758A3    add         esp,0FFFFFE00
 006758A9    push        ebx
 006758AA    push        esi
 006758AB    push        edi
 006758AC    mov         esi,dword ptr [ebp+0C]
 006758AF    mov         ebx,dword ptr [ebp+8]
 006758B2    push        200
 006758B7    lea         eax,[ebp-200]
 006758BD    push        eax
 006758BE    push        1001
 006758C3    mov         edx,dword ptr [ebx+4]
 006758C6    push        edx
 006758C7    call        KERNEL32.GetLocaleInfoA
 006758CC    push        6E6ADB
 006758D1    lea         ecx,[ebp-200]
 006758D7    push        ecx
 006758D8    call        0066F9A8
 006758DD    add         esp,8
 006758E0    lea         eax,[ebp-200]
 006758E6    push        eax
 006758E7    call        0066FAB4
 006758EC    pop         ecx
 006758ED    mov         edx,200
 006758F2    sub         edx,eax
 006758F4    push        edx
 006758F5    lea         ecx,[ebp-200]
 006758FB    push        ecx
 006758FC    call        0066FAB4
 00675901    pop         ecx
 00675902    lea         edx,[ebp-200]
 00675908    add         eax,edx
 0067590A    push        eax
 0067590B    push        1002
 00675910    mov         eax,dword ptr [ebx+4]
 00675913    push        eax
 00675914    call        KERNEL32.GetLocaleInfoA
 00675919    push        6E6ADD
 0067591E    lea         ecx,[ebp-200]
 00675924    push        ecx
 00675925    call        0066F9A8
 0067592A    add         esp,8
 0067592D    push        0A
 0067592F    lea         eax,[ebp-200]
 00675935    push        eax
 00675936    call        0066FAB4
 0067593B    pop         ecx
 0067593C    lea         edx,[ebp-200]
 00675942    add         eax,edx
 00675944    push        eax
 00675945    mov         ecx,dword ptr [ebx]
 00675947    push        ecx
 00675948    call        00676A90
 0067594D    add         esp,0C
 00675950    cmp         dword ptr [ebx+24],0
>00675954    jne         006759B1
 00675956    push        esi
 00675957    call        0066FAB4
 0067595C    pop         ecx
 0067595D    mov         edi,eax
 0067595F    lea         eax,[ebp-200]
 00675965    push        eax
 00675966    call        0066FAB4
 0067596B    pop         ecx
 0067596C    add         edi,eax
 0067596E    add         edi,3
 00675971    push        edi
 00675972    call        0066F2C8
 00675977    pop         ecx
 00675978    mov         edi,eax
 0067597A    mov         dword ptr [ebx+24],edi
 0067597D    test        edi,edi
>0067597F    jne         00675988
 00675981    xor         eax,eax
>00675983    jmp         00675A38
 00675988    push        esi
 00675989    call        0066FAB4
 0067598E    pop         ecx
 0067598F    push        eax
 00675990    lea         edx,[ebp-200]
 00675996    push        edx
 00675997    call        0066FAB4
 0067599C    pop         ecx
 0067599D    pop         ecx
 0067599E    add         ecx,eax
 006759A0    add         ecx,3
 006759A3    push        ecx
 006759A4    push        0
 006759A6    push        edi
 006759A7    call        0066F904
 006759AC    add         esp,0C
>006759AF    jmp         006759F1
 006759B1    mov         edi,dword ptr [ebx+24]
 006759B4    push        edi
 006759B5    call        0066FAB4
 006759BA    pop         ecx
 006759BB    push        eax
 006759BC    push        esi
 006759BD    call        0066FAB4
 006759C2    pop         ecx
 006759C3    pop         edx
 006759C4    add         edx,eax
 006759C6    push        edx
 006759C7    lea         eax,[ebp-200]
 006759CD    push        eax
 006759CE    call        0066FAB4
 006759D3    pop         ecx
 006759D4    pop         ecx
 006759D5    add         ecx,eax
 006759D7    add         ecx,3
 006759DA    push        ecx
 006759DB    push        edi
 006759DC    call        0066F2E8
 006759E1    add         esp,8
 006759E4    mov         dword ptr [ebx+24],eax
 006759E7    cmp         dword ptr [ebx+24],0
>006759EB    jne         006759F1
 006759ED    xor         eax,eax
>006759EF    jmp         00675A38
 006759F1    push        esi
 006759F2    mov         edx,dword ptr [ebx+24]
 006759F5    push        edx
 006759F6    call        0066F9A8
 006759FB    add         esp,8
 006759FE    push        6E6ADF
 00675A03    mov         ecx,dword ptr [ebx+24]
 00675A06    push        ecx
 00675A07    call        0066F9A8
 00675A0C    add         esp,8
 00675A0F    lea         eax,[ebp-200]
 00675A15    push        eax
 00675A16    mov         edx,dword ptr [ebx+24]
 00675A19    push        edx
 00675A1A    call        0066F9A8
 00675A1F    add         esp,8
 00675A22    push        6E6AE1
 00675A27    mov         ecx,dword ptr [ebx+24]
 00675A2A    push        ecx
 00675A2B    call        0066F9A8
 00675A30    add         esp,8
 00675A33    mov         eax,1
 00675A38    pop         edi
 00675A39    pop         esi
 00675A3A    pop         ebx
 00675A3B    mov         esp,ebp
 00675A3D    pop         ebp
 00675A3E    ret
end;*}

//00675A40
{*function sub_00675A40(?:?; ?:?; ?:?):?;
begin
 00675A40    push        ebp
 00675A41    mov         ebp,esp
 00675A43    push        ebx
 00675A44    push        esi
 00675A45    push        edi
 00675A46    mov         ebx,dword ptr [ebp+10]
 00675A49    mov         edi,dword ptr [ebp+8]
 00675A4C    push        0
 00675A4E    mov         eax,dword ptr [ebx]
 00675A50    push        eax
 00675A51    mov         edx,dword ptr [ebp+0C]
 00675A54    push        edx
 00675A55    push        edi
 00675A56    call        KERNEL32.GetLocaleInfoA
 00675A5B    mov         esi,eax
 00675A5D    lea         eax,[esi+1]
 00675A60    push        eax
 00675A61    call        0066F2C8
 00675A66    pop         ecx
 00675A67    mov         dword ptr [ebx],eax
 00675A69    test        ebx,ebx
>00675A6B    jne         00675A78
 00675A6D    push        0E
 00675A6F    call        KERNEL32.SetLastError
 00675A74    xor         eax,eax
>00675A76    jmp         00675A94
 00675A78    inc         esi
 00675A79    push        esi
 00675A7A    mov         eax,dword ptr [ebx]
 00675A7C    push        eax
 00675A7D    mov         edx,dword ptr [ebp+0C]
 00675A80    push        edx
 00675A81    push        edi
 00675A82    call        KERNEL32.GetLocaleInfoA
 00675A87    test        eax,eax
>00675A89    je          00675A92
 00675A8B    mov         eax,1
>00675A90    jmp         00675A94
 00675A92    xor         eax,eax
 00675A94    pop         edi
 00675A95    pop         esi
 00675A96    pop         ebx
 00675A97    pop         ebp
 00675A98    ret
end;*}

//00675A9C
{*function sub_00675A9C(?:?; ?:?; ?:?; ?:?):?;
begin
 00675A9C    push        ebp
 00675A9D    mov         ebp,esp
 00675A9F    push        ebx
 00675AA0    push        esi
 00675AA1    mov         esi,dword ptr [ebp+14]
 00675AA4    inc         esi
 00675AA5    push        esi
 00675AA6    call        0066F2C8
 00675AAB    pop         ecx
 00675AAC    mov         ebx,eax
 00675AAE    test        ebx,ebx
>00675AB0    jne         00675ABD
 00675AB2    push        0E
 00675AB4    call        KERNEL32.SetLastError
 00675AB9    xor         eax,eax
>00675ABB    jmp         00675AF4
 00675ABD    push        esi
 00675ABE    push        ebx
 00675ABF    mov         edx,dword ptr [ebp+0C]
 00675AC2    push        edx
 00675AC3    mov         ecx,dword ptr [ebp+8]
 00675AC6    push        ecx
 00675AC7    call        KERNEL32.GetLocaleInfoA
 00675ACC    test        eax,eax
>00675ACE    je          00675AEB
 00675AD0    push        ebx
 00675AD1    call        00676CD0
 00675AD6    pop         ecx
 00675AD7    mov         edx,dword ptr [ebp+10]
 00675ADA    mov         word ptr [edx],ax
 00675ADD    push        ebx
 00675ADE    call        0066F2D8
 00675AE3    pop         ecx
 00675AE4    mov         eax,1
>00675AE9    jmp         00675AF4
 00675AEB    push        ebx
 00675AEC    call        0066F2D8
 00675AF1    pop         ecx
 00675AF2    xor         eax,eax
 00675AF4    pop         esi
 00675AF5    pop         ebx
 00675AF6    pop         ebp
 00675AF7    ret
end;*}

//00675AF8
{*function sub_00675AF8(?:?; ?:?; ?:?):?;
begin
 00675AF8    push        ebp
 00675AF9    mov         ebp,esp
 00675AFB    add         esp,0FFFFFFEC
 00675AFE    push        ebx
 00675AFF    push        esi
 00675B00    push        edi
 00675B01    cmp         dword ptr [ebp+8],0
 00675B05    mov         edi,dword ptr [ebp+10]
>00675B08    jne         00675B27
 00675B0A    push        100
 00675B0F    push        6E653E
 00675B14    push        edi
 00675B15    call        0066F894
 00675B1A    add         esp,0C
 00675B1D    mov         eax,1
>00675B22    jmp         00675BD9
 00675B27    push        101
 00675B2C    call        0066F2C8
 00675B31    pop         ecx
 00675B32    mov         esi,eax
 00675B34    test        esi,esi
>00675B36    jne         00675B46
 00675B38    push        0E
 00675B3A    call        KERNEL32.SetLastError
 00675B3F    xor         eax,eax
>00675B41    jmp         00675BD9
 00675B46    mov         edx,esi
 00675B48    xor         eax,eax
 00675B4A    mov         byte ptr [edx],al
 00675B4C    inc         edx
 00675B4D    inc         eax
 00675B4E    cmp         eax,100
>00675B53    jl          00675B4A
 00675B55    lea         edx,[ebp-14]
 00675B58    push        edx
 00675B59    mov         ecx,dword ptr [ebp+0C]
 00675B5C    push        ecx
 00675B5D    call        KERNEL32.GetCPInfo
 00675B62    test        eax,eax
>00675B64    jne         00675B71
 00675B66    push        esi
 00675B67    call        0066F2D8
 00675B6C    pop         ecx
 00675B6D    xor         eax,eax
>00675B6F    jmp         00675BD9
 00675B71    cmp         dword ptr [ebp-14],1
>00675B75    jbe         00675BA4
 00675B77    lea         edx,[ebp-0E]
>00675B7A    jmp         00675B98
 00675B7C    xor         ecx,ecx
 00675B7E    mov         cl,al
 00675B80    mov         eax,ecx
 00675B82    lea         ecx,[esi+eax]
>00675B85    jmp         00675B8C
 00675B87    mov         byte ptr [ecx],0
 00675B8A    inc         eax
 00675B8B    inc         ecx
 00675B8C    xor         ebx,ebx
 00675B8E    mov         bl,byte ptr [edx+1]
 00675B91    cmp         eax,ebx
>00675B93    jle         00675B87
 00675B95    add         edx,2
 00675B98    mov         al,byte ptr [edx]
 00675B9A    test        al,al
>00675B9C    je          00675BA4
 00675B9E    cmp         byte ptr [edx+1],0
>00675BA2    jne         00675B7C
 00675BA4    mov         word ptr [edi],0
 00675BA9    add         edi,2
 00675BAC    push        edi
 00675BAD    push        100
 00675BB2    push        esi
 00675BB3    push        1
 00675BB5    mov         eax,dword ptr [ebp+8]
 00675BB8    push        eax
 00675BB9    call        KERNEL32.GetStringTypeA
 00675BBE    test        eax,eax
>00675BC0    jne         00675BCD
 00675BC2    push        esi
 00675BC3    call        0066F2D8
 00675BC8    pop         ecx
 00675BC9    xor         eax,eax
>00675BCB    jmp         00675BD9
 00675BCD    push        esi
 00675BCE    call        0066F2D8
 00675BD3    pop         ecx
 00675BD4    mov         eax,1
 00675BD9    pop         edi
 00675BDA    pop         esi
 00675BDB    pop         ebx
 00675BDC    mov         esp,ebp
 00675BDE    pop         ebp
 00675BDF    ret
end;*}

//00675BE0
{*function sub_00675BE0(?:?; ?:?):?;
begin
 00675BE0    push        ebp
 00675BE1    mov         ebp,esp
 00675BE3    add         esp,0FFFFFFD0
 00675BE6    mov         ecx,0C
 00675BEB    push        ebx
 00675BEC    push        esi
 00675BED    push        edi
 00675BEE    mov         esi,1
 00675BF3    mov         edi,dword ptr [ebp+8]
 00675BF6    mov         ebx,dword ptr [ebp+0C]
 00675BF9    push        esi
 00675BFA    push        edi
 00675BFB    lea         edi,[ebp-30]
 00675BFE    mov         esi,6E6D44
 00675C03    rep movs    dword ptr [edi],dword ptr [esi]
 00675C05    pop         edi
 00675C06    pop         esi
 00675C07    lea         eax,[ebx+18]
 00675C0A    push        eax
 00675C0B    push        16
 00675C0D    push        edi
 00675C0E    call        00675A40
 00675C13    add         esp,0C
 00675C16    and         esi,eax
 00675C18    lea         edx,[ebx+14]
 00675C1B    push        edx
 00675C1C    push        17
 00675C1E    push        edi
 00675C1F    call        00675A40
 00675C24    add         esp,0C
 00675C27    and         esi,eax
 00675C29    lea         ecx,[ebx+1C]
 00675C2C    push        ecx
 00675C2D    push        14
 00675C2F    push        edi
 00675C30    call        00675A40
 00675C35    add         esp,0C
 00675C38    and         esi,eax
 00675C3A    lea         eax,[ebx+20]
 00675C3D    push        eax
 00675C3E    push        15
 00675C40    push        edi
 00675C41    call        00675A40
 00675C46    add         esp,0C
 00675C49    and         esi,eax
 00675C4B    lea         edx,[ebx+24]
 00675C4E    push        edx
 00675C4F    push        18
 00675C51    push        edi
 00675C52    call        00675A40
 00675C57    add         esp,0C
 00675C5A    and         esi,eax
 00675C5C    lea         ecx,[ebx+28]
 00675C5F    push        ecx
 00675C60    push        50
 00675C62    push        edi
 00675C63    call        00675A40
 00675C68    add         esp,0C
 00675C6B    and         esi,eax
 00675C6D    lea         eax,[ebx+2C]
 00675C70    push        eax
 00675C71    push        51
 00675C73    push        edi
 00675C74    call        00675A40
 00675C79    add         esp,0C
 00675C7C    and         esi,eax
 00675C7E    push        3
 00675C80    push        ebx
 00675C81    push        19
 00675C83    push        edi
 00675C84    call        00675A9C
 00675C89    add         esp,10
 00675C8C    and         esi,eax
 00675C8E    push        3
 00675C90    lea         edx,[ebx+2]
 00675C93    push        edx
 00675C94    push        1A
 00675C96    push        edi
 00675C97    call        00675A9C
 00675C9C    add         esp,10
 00675C9F    and         esi,eax
 00675CA1    push        2
 00675CA3    lea         ecx,[ebx+4]
 00675CA6    push        ecx
 00675CA7    push        1B
 00675CA9    push        edi
 00675CAA    call        00675A9C
 00675CAF    add         esp,10
 00675CB2    and         esi,eax
 00675CB4    push        3
 00675CB6    lea         eax,[ebx+6]
 00675CB9    push        eax
 00675CBA    push        1C
 00675CBC    push        edi
 00675CBD    call        00675A9C
 00675CC2    add         esp,10
 00675CC5    and         esi,eax
 00675CC7    push        2
 00675CC9    lea         edx,[ebx+8]
 00675CCC    push        edx
 00675CCD    push        52
 00675CCF    push        edi
 00675CD0    call        00675A9C
 00675CD5    add         esp,10
 00675CD8    and         esi,eax
 00675CDA    push        3
 00675CDC    lea         ecx,[ebx+0A]
 00675CDF    push        ecx
 00675CE0    push        53
 00675CE2    push        edi
 00675CE3    call        00675A9C
 00675CE8    add         esp,10
 00675CEB    and         esi,eax
 00675CED    push        2
 00675CEF    lea         eax,[ebx+0C]
 00675CF2    push        eax
 00675CF3    push        54
 00675CF5    push        edi
 00675CF6    call        00675A9C
 00675CFB    add         esp,10
 00675CFE    and         esi,eax
 00675D00    push        2
 00675D02    lea         edx,[ebx+0E]
 00675D05    push        edx
 00675D06    push        55
 00675D08    push        edi
 00675D09    call        00675A9C
 00675D0E    add         esp,10
 00675D11    and         esi,eax
 00675D13    push        2
 00675D15    lea         ecx,[ebx+10]
 00675D18    push        ecx
 00675D19    push        56
 00675D1B    push        edi
 00675D1C    call        00675A9C
 00675D21    add         esp,10
 00675D24    and         esi,eax
 00675D26    push        2
 00675D28    lea         eax,[ebx+12]
 00675D2B    push        eax
 00675D2C    push        57
 00675D2E    push        edi
 00675D2F    call        00675A9C
 00675D34    movsx       edx,word ptr [ebx+6]
 00675D38    add         esp,10
 00675D3B    and         esi,eax
 00675D3D    mov         ecx,dword ptr [ebp+edx*4-30]
 00675D41    push        ecx
 00675D42    call        0066FC80
 00675D47    pop         ecx
 00675D48    mov         dword ptr [ebx+30],eax
 00675D4B    test        esi,esi
>00675D4D    je          00675D56
 00675D4F    mov         eax,1
>00675D54    jmp         00675D58
 00675D56    xor         eax,eax
 00675D58    pop         edi
 00675D59    pop         esi
 00675D5A    pop         ebx
 00675D5B    mov         esp,ebp
 00675D5D    pop         ebp
 00675D5E    ret
end;*}

//00675D60
{*function sub_00675D60(?:?; ?:?):?;
begin
 00675D60    push        ebp
 00675D61    mov         ebp,esp
 00675D63    add         esp,0FFFFFFC0
 00675D66    push        ebx
 00675D67    push        esi
 00675D68    push        edi
 00675D69    mov         esi,1
 00675D6E    mov         edi,dword ptr [ebp+8]
 00675D71    mov         ebx,dword ptr [ebp+0C]
 00675D74    push        ebx
 00675D75    push        1D
 00675D77    push        edi
 00675D78    call        00675A40
 00675D7D    add         esp,0C
 00675D80    and         esi,eax
 00675D82    lea         eax,[ebx+4]
 00675D85    push        eax
 00675D86    push        1E
 00675D88    push        edi
 00675D89    call        00675A40
 00675D8E    add         esp,0C
 00675D91    and         esi,eax
 00675D93    lea         edx,[ebx+8]
 00675D96    push        edx
 00675D97    push        1003
 00675D9C    push        edi
 00675D9D    call        00675A40
 00675DA2    add         esp,0C
 00675DA5    and         esi,eax
 00675DA7    lea         ecx,[ebx+0C]
 00675DAA    push        ecx
 00675DAB    push        1F
 00675DAD    push        edi
 00675DAE    call        00675A40
 00675DB3    add         esp,0C
 00675DB6    and         esi,eax
 00675DB8    lea         eax,[ebx+10]
 00675DBB    push        eax
 00675DBC    push        20
 00675DBE    push        edi
 00675DBF    call        00675A40
 00675DC4    add         esp,0C
 00675DC7    and         esi,eax
 00675DC9    lea         edx,[ebx+14]
 00675DCC    push        edx
 00675DCD    push        28
 00675DCF    push        edi
 00675DD0    call        00675A40
 00675DD5    add         esp,0C
 00675DD8    and         esi,eax
 00675DDA    lea         ecx,[ebx+18]
 00675DDD    push        ecx
 00675DDE    push        29
 00675DE0    push        edi
 00675DE1    call        00675A40
 00675DE6    add         esp,0C
 00675DE9    and         esi,eax
 00675DEB    lea         eax,[ebx+2C]
 00675DEE    push        eax
 00675DEF    push        2A
 00675DF1    push        edi
 00675DF2    call        00675A40
 00675DF7    add         esp,0C
 00675DFA    and         esi,eax
 00675DFC    lea         edx,[ebx+30]
 00675DFF    push        edx
 00675E00    push        2B
 00675E02    push        edi
 00675E03    call        00675A40
 00675E08    add         esp,0C
 00675E0B    and         esi,eax
 00675E0D    lea         ecx,[ebx+34]
 00675E10    push        ecx
 00675E11    push        2C
 00675E13    push        edi
 00675E14    call        00675A40
 00675E19    add         esp,0C
 00675E1C    and         esi,eax
 00675E1E    lea         eax,[ebx+38]
 00675E21    push        eax
 00675E22    push        2D
 00675E24    push        edi
 00675E25    call        00675A40
 00675E2A    add         esp,0C
 00675E2D    and         esi,eax
 00675E2F    lea         edx,[ebx+3C]
 00675E32    push        edx
 00675E33    push        2E
 00675E35    push        edi
 00675E36    call        00675A40
 00675E3B    add         esp,0C
 00675E3E    and         esi,eax
 00675E40    lea         ecx,[ebx+40]
 00675E43    push        ecx
 00675E44    push        2F
 00675E46    push        edi
 00675E47    call        00675A40
 00675E4C    add         esp,0C
 00675E4F    and         esi,eax
 00675E51    lea         eax,[ebx+44]
 00675E54    push        eax
 00675E55    push        30
 00675E57    push        edi
 00675E58    call        00675A40
 00675E5D    add         esp,0C
 00675E60    and         esi,eax
 00675E62    lea         edx,[ebx+48]
 00675E65    push        edx
 00675E66    push        31
 00675E68    push        edi
 00675E69    call        00675A40
 00675E6E    add         esp,0C
 00675E71    and         esi,eax
 00675E73    lea         ecx,[ebx+4C]
 00675E76    push        ecx
 00675E77    push        32
 00675E79    push        edi
 00675E7A    call        00675A40
 00675E7F    add         esp,0C
 00675E82    and         esi,eax
 00675E84    lea         eax,[ebx+50]
 00675E87    push        eax
 00675E88    push        33
 00675E8A    push        edi
 00675E8B    call        00675A40
 00675E90    add         esp,0C
 00675E93    and         esi,eax
 00675E95    lea         edx,[ebx+54]
 00675E98    push        edx
 00675E99    push        34
 00675E9B    push        edi
 00675E9C    call        00675A40
 00675EA1    add         esp,0C
 00675EA4    and         esi,eax
 00675EA6    lea         ecx,[ebx+58]
 00675EA9    push        ecx
 00675EAA    push        35
 00675EAC    push        edi
 00675EAD    call        00675A40
 00675EB2    add         esp,0C
 00675EB5    and         esi,eax
 00675EB7    lea         eax,[ebx+5C]
 00675EBA    push        eax
 00675EBB    push        36
 00675EBD    push        edi
 00675EBE    call        00675A40
 00675EC3    add         esp,0C
 00675EC6    and         esi,eax
 00675EC8    lea         edx,[ebx+60]
 00675ECB    push        edx
 00675ECC    push        37
 00675ECE    push        edi
 00675ECF    call        00675A40
 00675ED4    add         esp,0C
 00675ED7    and         esi,eax
 00675ED9    lea         ecx,[ebx+64]
 00675EDC    push        ecx
 00675EDD    push        38
 00675EDF    push        edi
 00675EE0    call        00675A40
 00675EE5    add         esp,0C
 00675EE8    and         esi,eax
 00675EEA    lea         eax,[ebx+68]
 00675EED    push        eax
 00675EEE    push        39
 00675EF0    push        edi
 00675EF1    call        00675A40
 00675EF6    add         esp,0C
 00675EF9    and         esi,eax
 00675EFB    lea         edx,[ebx+6C]
 00675EFE    push        edx
 00675EFF    push        3A
 00675F01    push        edi
 00675F02    call        00675A40
 00675F07    add         esp,0C
 00675F0A    and         esi,eax
 00675F0C    lea         ecx,[ebx+70]
 00675F0F    push        ecx
 00675F10    push        3B
 00675F12    push        edi
 00675F13    call        00675A40
 00675F18    add         esp,0C
 00675F1B    and         esi,eax
 00675F1D    lea         eax,[ebx+74]
 00675F20    push        eax
 00675F21    push        3C
 00675F23    push        edi
 00675F24    call        00675A40
 00675F29    add         esp,0C
 00675F2C    and         esi,eax
 00675F2E    lea         edx,[ebx+78]
 00675F31    push        edx
 00675F32    push        3D
 00675F34    push        edi
 00675F35    call        00675A40
 00675F3A    add         esp,0C
 00675F3D    and         esi,eax
 00675F3F    lea         ecx,[ebx+7C]
 00675F42    push        ecx
 00675F43    push        3E
 00675F45    push        edi
 00675F46    call        00675A40
 00675F4B    add         esp,0C
 00675F4E    and         esi,eax
 00675F50    lea         eax,[ebx+80]
 00675F56    push        eax
 00675F57    push        3F
 00675F59    push        edi
 00675F5A    call        00675A40
 00675F5F    add         esp,0C
 00675F62    and         esi,eax
 00675F64    lea         edx,[ebx+84]
 00675F6A    push        edx
 00675F6B    push        40
 00675F6D    push        edi
 00675F6E    call        00675A40
 00675F73    add         esp,0C
 00675F76    and         esi,eax
 00675F78    lea         ecx,[ebx+88]
 00675F7E    push        ecx
 00675F7F    push        41
 00675F81    push        edi
 00675F82    call        00675A40
 00675F87    add         esp,0C
 00675F8A    and         esi,eax
 00675F8C    lea         eax,[ebx+8C]
 00675F92    push        eax
 00675F93    push        42
 00675F95    push        edi
 00675F96    call        00675A40
 00675F9B    add         esp,0C
 00675F9E    and         esi,eax
 00675FA0    lea         edx,[ebx+90]
 00675FA6    push        edx
 00675FA7    push        43
 00675FA9    push        edi
 00675FAA    call        00675A40
 00675FAF    add         esp,0C
 00675FB2    and         esi,eax
 00675FB4    lea         ecx,[ebx+94]
 00675FBA    push        ecx
 00675FBB    push        44
 00675FBD    push        edi
 00675FBE    call        00675A40
 00675FC3    add         esp,0C
 00675FC6    and         esi,eax
 00675FC8    lea         eax,[ebx+98]
 00675FCE    push        eax
 00675FCF    push        45
 00675FD1    push        edi
 00675FD2    call        00675A40
 00675FD7    add         esp,0C
 00675FDA    and         esi,eax
 00675FDC    lea         edx,[ebx+9C]
 00675FE2    push        edx
 00675FE3    push        46
 00675FE5    push        edi
 00675FE6    call        00675A40
 00675FEB    add         esp,0C
 00675FEE    and         esi,eax
 00675FF0    lea         ecx,[ebx+0A0]
 00675FF6    push        ecx
 00675FF7    push        47
 00675FF9    push        edi
 00675FFA    call        00675A40
 00675FFF    add         esp,0C
 00676002    and         esi,eax
 00676004    lea         eax,[ebx+0A4]
 0067600A    push        eax
 0067600B    push        48
 0067600D    push        edi
 0067600E    call        00675A40
 00676013    add         esp,0C
 00676016    and         esi,eax
 00676018    lea         edx,[ebx+0A8]
 0067601E    push        edx
 0067601F    push        49
 00676021    push        edi
 00676022    call        00675A40
 00676027    add         esp,0C
 0067602A    and         esi,eax
 0067602C    lea         ecx,[ebx+0AC]
 00676032    push        ecx
 00676033    push        4A
 00676035    push        edi
 00676036    call        00675A40
 0067603B    add         esp,0C
 0067603E    and         esi,eax
 00676040    lea         eax,[ebx+0B0]
 00676046    push        eax
 00676047    push        4B
 00676049    push        edi
 0067604A    call        00675A40
 0067604F    add         esp,0C
 00676052    and         esi,eax
 00676054    lea         edx,[ebx+0B4]
 0067605A    push        edx
 0067605B    push        4C
 0067605D    push        edi
 0067605E    call        00675A40
 00676063    add         esp,0C
 00676066    and         esi,eax
 00676068    lea         ecx,[ebx+0B8]
 0067606E    push        ecx
 0067606F    push        4D
 00676071    push        edi
 00676072    call        00675A40
 00676077    add         esp,0C
 0067607A    and         esi,eax
 0067607C    lea         eax,[ebx+0BC]
 00676082    push        eax
 00676083    push        4E
 00676085    push        edi
 00676086    call        00675A40
 0067608B    add         esp,0C
 0067608E    and         esi,eax
 00676090    lea         edx,[ebx+0C0]
 00676096    push        edx
 00676097    push        4F
 00676099    push        edi
 0067609A    call        00675A40
 0067609F    add         esp,0C
 006760A2    and         esi,eax
 006760A4    push        2
 006760A6    lea         ecx,[ebx+1C]
 006760A9    push        ecx
 006760AA    push        21
 006760AC    push        edi
 006760AD    call        00675A9C
 006760B2    add         esp,10
 006760B5    and         esi,eax
 006760B7    push        2
 006760B9    lea         eax,[ebx+1E]
 006760BC    push        eax
 006760BD    push        22
 006760BF    push        edi
 006760C0    call        00675A9C
 006760C5    add         esp,10
 006760C8    and         esi,eax
 006760CA    push        2
 006760CC    lea         edx,[ebx+20]
 006760CF    push        edx
 006760D0    push        23
 006760D2    push        edi
 006760D3    call        00675A9C
 006760D8    add         esp,10
 006760DB    and         esi,eax
 006760DD    push        1
 006760DF    lea         ecx,[ebx+22]
 006760E2    push        ecx
 006760E3    push        24
 006760E5    push        edi
 006760E6    call        00675A9C
 006760EB    add         esp,10
 006760EE    and         esi,eax
 006760F0    push        2
 006760F2    lea         eax,[ebx+24]
 006760F5    push        eax
 006760F6    push        25
 006760F8    push        edi
 006760F9    call        00675A9C
 006760FE    add         esp,10
 00676101    and         esi,eax
 00676103    push        2
 00676105    lea         edx,[ebx+26]
 00676108    push        edx
 00676109    push        26
 0067610B    push        edi
 0067610C    call        00675A9C
 00676111    add         esp,10
 00676114    and         esi,eax
 00676116    push        2
 00676118    lea         ecx,[ebx+28]
 0067611B    push        ecx
 0067611C    push        27
 0067611E    push        edi
 0067611F    call        00675A9C
 00676124    add         esp,10
 00676127    and         esi,eax
 00676129    test        esi,esi
>0067612B    je          006761A8
 0067612D    push        40
 0067612F    lea         eax,[ebp-40]
 00676132    push        eax
 00676133    mov         edx,dword ptr [ebx+8]
 00676136    push        edx
 00676137    call        00674284
 0067613C    add         esp,0C
 0067613F    mov         ecx,dword ptr [ebx+8]
 00676142    push        ecx
 00676143    call        0066F2D8
 00676148    pop         ecx
 00676149    lea         eax,[ebp-40]
 0067614C    push        eax
 0067614D    call        0066FC80
 00676152    pop         ecx
 00676153    mov         dword ptr [ebx+8],eax
 00676156    push        40
 00676158    lea         edx,[ebp-40]
 0067615B    push        edx
 0067615C    mov         ecx,dword ptr [ebx+0C]
 0067615F    push        ecx
 00676160    call        00674284
 00676165    add         esp,0C
 00676168    mov         eax,dword ptr [ebx+0C]
 0067616B    push        eax
 0067616C    call        0066F2D8
 00676171    pop         ecx
 00676172    lea         edx,[ebp-40]
 00676175    push        edx
 00676176    call        0066FC80
 0067617B    pop         ecx
 0067617C    mov         dword ptr [ebx+0C],eax
 0067617F    push        40
 00676181    lea         ecx,[ebp-40]
 00676184    push        ecx
 00676185    mov         eax,dword ptr [ebx+10]
 00676188    push        eax
 00676189    call        00674284
 0067618E    add         esp,0C
 00676191    mov         edx,dword ptr [ebx+10]
 00676194    push        edx
 00676195    call        0066F2D8
 0067619A    pop         ecx
 0067619B    lea         ecx,[ebp-40]
 0067619E    push        ecx
 0067619F    call        0066FC80
 006761A4    pop         ecx
 006761A5    mov         dword ptr [ebx+10],eax
 006761A8    test        esi,esi
>006761AA    je          006761B3
 006761AC    mov         eax,1
>006761B1    jmp         006761B5
 006761B3    xor         eax,eax
 006761B5    pop         edi
 006761B6    pop         esi
 006761B7    pop         ebx
 006761B8    mov         esp,ebp
 006761BA    pop         ebp
 006761BB    ret
end;*}

//006761BC
{*function sub_006761BC(?:?; ?:?):?;
begin
 006761BC    push        ebp
 006761BD    mov         ebp,esp
 006761BF    push        ebx
 006761C0    push        esi
 006761C1    push        edi
 006761C2    mov         edi,dword ptr [ebp+0C]
 006761C5    mov         esi,dword ptr [ebp+8]
 006761C8    mov         ebx,1
 006761CD    lea         eax,[edi+4]
 006761D0    push        eax
 006761D1    push        0E
 006761D3    push        esi
 006761D4    call        00675A40
 006761D9    add         esp,0C
 006761DC    and         ebx,eax
 006761DE    push        edi
 006761DF    push        0F
 006761E1    push        esi
 006761E2    call        00675A40
 006761E7    add         esp,0C
 006761EA    and         ebx,eax
 006761EC    lea         edx,[edi+8]
 006761EF    push        edx
 006761F0    push        10
 006761F2    push        esi
 006761F3    call        00675A40
 006761F8    add         esp,0C
 006761FB    and         ebx,eax
 006761FD    lea         ecx,[edi+0C]
 00676200    push        ecx
 00676201    push        50
 00676203    push        esi
 00676204    call        00675A40
 00676209    add         esp,0C
 0067620C    and         ebx,eax
 0067620E    lea         eax,[edi+10]
 00676211    push        eax
 00676212    push        51
 00676214    push        esi
 00676215    call        00675A40
 0067621A    add         esp,0C
 0067621D    and         ebx,eax
 0067621F    push        3
 00676221    add         edi,14
 00676224    push        edi
 00676225    push        11
 00676227    push        esi
 00676228    call        00675A9C
 0067622D    add         esp,10
 00676230    and         ebx,eax
 00676232    test        ebx,ebx
>00676234    je          0067623D
 00676236    mov         eax,1
>0067623B    jmp         0067623F
 0067623D    xor         eax,eax
 0067623F    pop         edi
 00676240    pop         esi
 00676241    pop         ebx
 00676242    pop         ebp
 00676243    ret
end;*}

//00676244
{*function sub_00676244:?;
begin
 00676244    push        ebp
 00676245    mov         ebp,esp
 00676247    mov         eax,1
 0067624C    pop         ebp
 0067624D    ret
end;*}

//00676250
{*function sub_00676250:?;
begin
 00676250    push        ebx
 00676251    push        esi
 00676252    mov         ebx,6E6740;gvar_006E6740
 00676257    mov         esi,6E6C20;^gvar_006E6BF4
 0067625C    call        00674DF4
 00676261    push        30
 00676263    push        0
 00676265    push        ebx
 00676266    call        0066F904
 0067626B    add         esp,0C
 0067626E    mov         edx,dword ptr [esi]
 00676270    mov         eax,dword ptr [edx+18]
 00676273    test        eax,eax
>00676275    je          00676293
 00676277    mov         ecx,dword ptr [eax+4]
 0067627A    mov         dword ptr [ebx],ecx
 0067627C    mov         ecx,dword ptr [eax]
 0067627E    mov         dword ptr [ebx+4],ecx
 00676281    mov         ecx,dword ptr [eax+8]
 00676284    mov         dword ptr [ebx+8],ecx
 00676287    mov         ecx,dword ptr [eax+0C]
 0067628A    mov         dword ptr [ebx+20],ecx
 0067628D    mov         eax,dword ptr [eax+10]
 00676290    mov         dword ptr [ebx+24],eax
 00676293    mov         eax,dword ptr [edx+14]
 00676296    test        eax,eax
>00676298    je          006762E7
 0067629A    mov         edx,dword ptr [eax+20]
 0067629D    mov         dword ptr [ebx+0C],edx
 006762A0    mov         ecx,dword ptr [eax+1C]
 006762A3    mov         dword ptr [ebx+10],ecx
 006762A6    mov         edx,dword ptr [eax+18]
 006762A9    mov         dword ptr [ebx+14],edx
 006762AC    mov         ecx,dword ptr [eax+14]
 006762AF    mov         dword ptr [ebx+18],ecx
 006762B2    mov         edx,dword ptr [eax+24]
 006762B5    mov         dword ptr [ebx+1C],edx
 006762B8    mov         cl,byte ptr [eax+2]
 006762BB    mov         byte ptr [ebx+28],cl
 006762BE    mov         dl,byte ptr [eax]
 006762C0    mov         byte ptr [ebx+29],dl
 006762C3    mov         cl,byte ptr [eax+0C]
 006762C6    mov         byte ptr [ebx+2A],cl
 006762C9    mov         dl,byte ptr [eax+0E]
 006762CC    mov         byte ptr [ebx+2B],dl
 006762CF    mov         cl,byte ptr [eax+10]
 006762D2    mov         byte ptr [ebx+2C],cl
 006762D5    mov         dl,byte ptr [eax+12]
 006762D8    mov         byte ptr [ebx+2D],dl
 006762DB    mov         cl,byte ptr [eax+8]
 006762DE    mov         byte ptr [ebx+2E],cl
 006762E1    mov         al,byte ptr [eax+0A]
 006762E4    mov         byte ptr [ebx+2F],al
 006762E7    call        00674E00
 006762EC    mov         eax,ebx
 006762EE    pop         esi
 006762EF    pop         ebx
 006762F0    ret
end;*}

//006762F4
{*function sub_006762F4(?:?):?;
begin
 006762F4    push        ebp
 006762F5    mov         ebp,esp
 006762F7    push        ebx
 006762F8    push        esi
 006762F9    mov         esi,dword ptr [ebp+8]
 006762FC    mov         ebx,esi
>006762FE    jmp         00676301
 00676300    inc         ebx
 00676301    xor         eax,eax
 00676303    mov         al,byte ptr [ebx]
 00676305    push        eax
 00676306    call        00676318
 0067630B    pop         ecx
 0067630C    mov         byte ptr [ebx],al
 0067630E    test        al,al
>00676310    jne         00676300
 00676312    mov         eax,esi
 00676314    pop         esi
 00676315    pop         ebx
 00676316    pop         ebp
 00676317    ret
end;*}

//00676318
{*function sub_00676318(?:?):?;
begin
 00676318    push        ebp
 00676319    mov         ebp,esp
 0067631B    xor         edx,edx
 0067631D    push        ecx
 0067631E    mov         dword ptr [ebp-4],edx
 00676321    mov         eax,[006E6C20];^gvar_006E6BF4
 00676326    cmp         dword ptr [ebp+8],0FFFFFFFF
>0067632A    jne         00676332
 0067632C    or          eax,0FFFFFFFF
 0067632F    pop         ecx
 00676330    pop         ebp
 00676331    ret
 00676332    cmp         dword ptr [eax+8],0
>00676336    je          0067634C
 00676338    mov         edx,dword ptr [ebp+8]
 0067633B    and         edx,0FF
 00676341    xor         eax,eax
 00676343    mov         al,byte ptr [edx+6E67CC]
 00676349    pop         ecx
 0067634A    pop         ebp
 0067634B    ret
 0067634C    push        4
 0067634E    lea         edx,[ebp-4]
 00676351    push        edx
 00676352    push        1
 00676354    lea         ecx,[ebp+8]
 00676357    push        ecx
 00676358    push        100
 0067635D    mov         eax,dword ptr [eax+4]
 00676360    push        eax
 00676361    call        KERNEL32.LCMapStringA
 00676366    mov         eax,dword ptr [ebp-4]
 00676369    pop         ecx
 0067636A    pop         ebp
 0067636B    ret
end;*}

//0067636C
{*function sub_0067636C(?:?):?;
begin
 0067636C    push        ebp
 0067636D    mov         ebp,esp
 0067636F    xor         edx,edx
 00676371    push        ecx
 00676372    mov         dword ptr [ebp-4],edx
 00676375    mov         eax,[006E6C20];^gvar_006E6BF4
 0067637A    cmp         dword ptr [ebp+8],0FFFFFFFF
>0067637E    jne         00676386
 00676380    or          eax,0FFFFFFFF
 00676383    pop         ecx
 00676384    pop         ebp
 00676385    ret
 00676386    cmp         dword ptr [eax+8],0
>0067638A    je          006763A0
 0067638C    mov         edx,dword ptr [ebp+8]
 0067638F    and         edx,0FF
 00676395    xor         eax,eax
 00676397    mov         al,byte ptr [edx+6E68CC]
 0067639D    pop         ecx
 0067639E    pop         ebp
 0067639F    ret
 006763A0    push        4
 006763A2    lea         edx,[ebp-4]
 006763A5    push        edx
 006763A6    push        1
 006763A8    lea         ecx,[ebp+8]
 006763AB    push        ecx
 006763AC    push        200
 006763B1    mov         eax,dword ptr [eax+4]
 006763B4    push        eax
 006763B5    call        KERNEL32.LCMapStringA
 006763BA    mov         eax,dword ptr [ebp-4]
 006763BD    pop         ecx
 006763BE    pop         ebp
 006763BF    ret
end;*}

//0067643C
{*function sub_0067643C(?:?; ?:?; ?:?):?;
begin
 0067643C    push        ebp
 0067643D    mov         ebp,esp
 0067643F    push        ebx
 00676440    push        esi
 00676441    mov         esi,dword ptr [ebp+10]
 00676444    mov         ebx,dword ptr [ebp+0C]
 00676447    mov         eax,dword ptr [ebp+8]
 0067644A    test        ebx,ebx
>0067644C    je          00676452
 0067644E    test        esi,esi
>00676450    jne         00676459
 00676452    xor         eax,eax
>00676454    jmp         00676509
 00676459    cmp         byte ptr [ebx],0
>0067645C    jne         0067646E
 0067645E    test        eax,eax
>00676460    je          00676467
 00676462    mov         word ptr [eax],0
 00676467    xor         eax,eax
>00676469    jmp         00676509
 0067646E    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 00676474    cmp         dword ptr [edx+8],0
>00676478    je          0067648C
 0067647A    test        eax,eax
>0067647C    je          00676485
 0067647E    xor         ecx,ecx
 00676480    mov         cl,byte ptr [ebx]
 00676482    mov         word ptr [eax],cx
 00676485    mov         eax,1
>0067648A    jmp         00676509
 0067648C    xor         edx,edx
 0067648E    mov         dl,byte ptr [ebx]
 00676490    test        byte ptr [edx+6EDFF1],4
>00676497    je          006764DA
 00676499    cmp         esi,2
>0067649C    jl          006764C3
 0067649E    test        eax,eax
>006764A0    je          006764A9
 006764A2    mov         ecx,1
>006764A7    jmp         006764AB
 006764A9    xor         ecx,ecx
 006764AB    push        ecx
 006764AC    push        eax
 006764AD    mov         eax,[006E6C20];^gvar_006E6BF4
 006764B2    push        2
 006764B4    push        ebx
 006764B5    push        9
 006764B7    mov         edx,dword ptr [eax]
 006764B9    push        edx
 006764BA    call        KERNEL32.MultiByteToWideChar
 006764BF    test        eax,eax
>006764C1    jne         006764D3
 006764C3    cmp         esi,2
>006764C6    jl          006764CE
 006764C8    cmp         byte ptr [ebx+1],0
>006764CC    jne         006764D3
 006764CE    or          eax,0FFFFFFFF
>006764D1    jmp         00676509
 006764D3    mov         eax,2
>006764D8    jmp         00676509
 006764DA    test        eax,eax
>006764DC    je          006764E5
 006764DE    mov         edx,1
>006764E3    jmp         006764E7
 006764E5    xor         edx,edx
 006764E7    push        edx
 006764E8    push        eax
 006764E9    mov         eax,[006E6C20];^gvar_006E6BF4
 006764EE    push        1
 006764F0    push        ebx
 006764F1    push        9
 006764F3    mov         ecx,dword ptr [eax]
 006764F5    push        ecx
 006764F6    call        KERNEL32.MultiByteToWideChar
 006764FB    test        eax,eax
>006764FD    jne         00676504
 006764FF    or          eax,0FFFFFFFF
>00676502    jmp         00676509
 00676504    mov         eax,1
 00676509    pop         esi
 0067650A    pop         ebx
 0067650B    pop         ebp
 0067650C    ret
end;*}

//00676510
{*function sub_00676510(?:?; ?:?):?;
begin
 00676510    push        ebp
 00676511    mov         ebp,esp
 00676513    push        ecx
 00676514    mov         eax,dword ptr [ebp+8]
 00676517    test        eax,eax
>00676519    jne         00676520
 0067651B    xor         eax,eax
 0067651D    pop         ecx
 0067651E    pop         ebp
 0067651F    ret
 00676520    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 00676526    cmp         dword ptr [edx+8],0
>0067652A    je          00676547
 0067652C    cmp         word ptr [ebp+0C],0FF
>00676532    jbe         0067653A
 00676534    or          eax,0FFFFFFFF
 00676537    pop         ecx
 00676538    pop         ebp
 00676539    ret
 0067653A    mov         dl,byte ptr [ebp+0C]
 0067653D    mov         byte ptr [eax],dl
 0067653F    mov         eax,1
 00676544    pop         ecx
 00676545    pop         ebp
 00676546    ret
 00676547    xor         edx,edx
 00676549    lea         ecx,[ebp-4]
 0067654C    mov         dword ptr [ebp-4],edx
 0067654F    push        ecx
 00676550    push        0
 00676552    push        2
 00676554    push        eax
 00676555    lea         eax,[ebp+0C]
 00676558    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 0067655E    push        1
 00676560    push        eax
 00676561    push        220
 00676566    mov         ecx,dword ptr [edx]
 00676568    push        ecx
 00676569    call        KERNEL32.WideCharToMultiByte
 0067656E    test        eax,eax
>00676570    je          00676578
 00676572    cmp         dword ptr [ebp-4],0
>00676576    je          0067657E
 00676578    or          eax,0FFFFFFFF
 0067657B    pop         ecx
 0067657C    pop         ebp
 0067657D    ret
 0067657E    pop         ecx
 0067657F    pop         ebp
 00676580    ret
end;*}

//00676584
{*procedure sub_00676584(?:?; ?:?; ?:?);
begin
 00676584    push        ebp
 00676585    mov         ebp,esp
 00676587    push        ecx
 00676588    push        ebx
 00676589    push        esi
 0067658A    push        edi
 0067658B    mov         esi,dword ptr [ebp+0C]
 0067658E    mov         edi,dword ptr [ebp+8]
 00676591    xor         ebx,ebx
 00676593    test        edi,edi
>00676595    je          006765A4
 00676597    cmp         dword ptr [ebp+10],0
>0067659B    jne         006765A4
 0067659D    xor         eax,eax
>0067659F    jmp         006766A7
 006765A4    test        edi,edi
>006765A6    je          0067666D
 006765AC    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 006765B2    cmp         dword ptr [edx+8],0
>006765B6    je          006765E2
 006765B8    cmp         ebx,dword ptr [ebp+10]
>006765BB    jae         006765DB
 006765BD    xor         ecx,ecx
 006765BF    mov         cl,byte ptr [esi+ebx]
 006765C2    mov         word ptr [edi],cx
 006765C5    cmp         byte ptr [esi+ebx],0
>006765C9    jne         006765D2
 006765CB    mov         eax,ebx
>006765CD    jmp         006766A7
 006765D2    inc         ebx
 006765D3    add         edi,2
 006765D6    cmp         ebx,dword ptr [ebp+10]
>006765D9    jb          006765BD
 006765DB    mov         eax,ebx
>006765DD    jmp         006766A7
 006765E2    mov         edx,dword ptr [ebp+10]
 006765E5    mov         ecx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 006765EB    push        edx
 006765EC    push        edi
 006765ED    push        0FF
 006765EF    push        esi
 006765F0    push        9
 006765F2    mov         eax,dword ptr [ecx]
 006765F4    push        eax
 006765F5    call        KERNEL32.MultiByteToWideChar
 006765FA    mov         ebx,eax
 006765FC    test        eax,eax
>006765FE    je          00676608
 00676600    mov         eax,ebx
 00676602    dec         eax
>00676603    jmp         006766A7
 00676608    call        KERNEL32.GetLastError
 0067660D    cmp         eax,7A
>00676610    je          0067661A
 00676612    or          eax,0FFFFFFFF
>00676615    jmp         006766A7
 0067661A    mov         edx,dword ptr [ebp+10]
 0067661D    mov         eax,esi
>0067661F    jmp         00676630
 00676621    xor         ecx,ecx
 00676623    mov         cl,byte ptr [eax]
 00676625    test        byte ptr [ecx+6EDFF1],4
>0067662C    je          0067662F
 0067662E    inc         eax
 0067662F    inc         eax
 00676630    mov         ecx,edx
 00676632    add         edx,0FFFFFFFF
 00676635    test        ecx,ecx
>00676637    je          0067663E
 00676639    cmp         byte ptr [eax],0
>0067663C    jne         00676621
 0067663E    sub         eax,esi
 00676640    mov         dword ptr [ebp-4],eax
 00676643    mov         eax,dword ptr [ebp+10]
 00676646    push        eax
 00676647    push        edi
 00676648    mov         edx,dword ptr [ebp-4]
 0067664B    mov         eax,[006E6C20];^gvar_006E6BF4
 00676650    push        edx
 00676651    push        esi
 00676652    push        1
 00676654    mov         edx,dword ptr [eax]
 00676656    push        edx
 00676657    call        KERNEL32.MultiByteToWideChar
 0067665C    mov         ebx,eax
 0067665E    test        eax,eax
>00676660    jne         00676667
 00676662    or          eax,0FFFFFFFF
>00676665    jmp         006766A7
 00676667    mov         eax,ebx
>00676669    jmp         006766A7
>0067666B    jmp         006766A7
 0067666D    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 00676673    cmp         dword ptr [edx+8],0
>00676677    je          00676682
 00676679    push        esi
 0067667A    call        0066FAB4
 0067667F    pop         ecx
>00676680    jmp         006766A7
 00676682    push        0
 00676684    push        0
 00676686    mov         ecx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 0067668C    push        0FF
 0067668E    push        esi
 0067668F    push        9
 00676691    mov         eax,dword ptr [ecx]
 00676693    push        eax
 00676694    call        KERNEL32.MultiByteToWideChar
 00676699    mov         ebx,eax
 0067669B    test        eax,eax
>0067669D    jne         006766A4
 0067669F    or          eax,0FFFFFFFF
>006766A2    jmp         006766A7
 006766A4    mov         eax,ebx
 006766A6    dec         eax
 006766A7    pop         edi
 006766A8    pop         esi
 006766A9    pop         ebx
 006766AA    pop         ecx
 006766AB    pop         ebp
 006766AC    ret
end;*}

//006766EC
{*procedure sub_006766EC(?:?; ?:?; ?:?);
begin
 006766EC    push        ebp
 006766ED    mov         ebp,esp
 006766EF    add         esp,0FFFFFFF4
 006766F2    xor         eax,eax
 006766F4    push        ebx
 006766F5    push        esi
 006766F6    mov         dword ptr [ebp-0C],eax
 006766F9    xor         ebx,ebx
 006766FB    cmp         dword ptr [ebp+8],0
>006766FF    je          0067670E
 00676701    cmp         dword ptr [ebp+10],0
>00676705    jne         0067670E
 00676707    xor         eax,eax
>00676709    jmp         0067688A
 0067670E    cmp         dword ptr [ebp+8],0
>00676712    je          0067683B
 00676718    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 0067671E    cmp         dword ptr [edx+8],0
>00676722    je          00676767
 00676724    cmp         ebx,dword ptr [ebp+10]
>00676727    jae         00676760
 00676729    mov         ecx,dword ptr [ebp+0C]
 0067672C    cmp         word ptr [ecx],0FF
>00676731    jbe         0067673B
 00676733    or          eax,0FFFFFFFF
>00676736    jmp         0067688A
 0067673B    mov         edx,dword ptr [ebp+0C]
 0067673E    mov         eax,dword ptr [ebp+8]
 00676741    mov         cl,byte ptr [edx]
 00676743    mov         byte ptr [eax+ebx],cl
 00676746    mov         edx,dword ptr [ebp+0C]
 00676749    add         dword ptr [ebp+0C],2
 0067674D    cmp         word ptr [edx],0
>00676751    jne         0067675A
 00676753    mov         eax,ebx
>00676755    jmp         0067688A
 0067675A    inc         ebx
 0067675B    cmp         ebx,dword ptr [ebp+10]
>0067675E    jb          00676729
 00676760    mov         eax,ebx
>00676762    jmp         0067688A
 00676767    lea         edx,[ebp-0C]
 0067676A    push        edx
 0067676B    push        0
 0067676D    mov         ecx,dword ptr [ebp+10]
 00676770    push        ecx
 00676771    mov         ecx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 00676777    mov         eax,dword ptr [ebp+8]
 0067677A    push        eax
 0067677B    push        0FF
 0067677D    mov         edx,dword ptr [ebp+0C]
 00676780    push        edx
 00676781    push        220
 00676786    mov         eax,dword ptr [ecx]
 00676788    push        eax
 00676789    call        KERNEL32.WideCharToMultiByte
 0067678E    mov         ebx,eax
 00676790    test        ebx,ebx
>00676792    je          006767A2
 00676794    cmp         dword ptr [ebp-0C],0
>00676798    jne         006767A2
 0067679A    mov         eax,ebx
 0067679C    dec         eax
>0067679D    jmp         0067688A
 006767A2    cmp         dword ptr [ebp-0C],0
>006767A6    jne         006767B2
 006767A8    call        KERNEL32.GetLastError
 006767AD    cmp         eax,7A
>006767B0    je          006767BA
 006767B2    or          eax,0FFFFFFFF
>006767B5    jmp         0067688A
 006767BA    cmp         ebx,dword ptr [ebp+10]
>006767BD    jae         00676837
 006767BF    lea         edx,[ebp-0C]
 006767C2    lea         ecx,[ebp-6]
 006767C5    push        edx
 006767C6    push        0
 006767C8    push        2
 006767CA    push        ecx
 006767CB    push        1
 006767CD    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 006767D3    mov         eax,dword ptr [ebp+0C]
 006767D6    push        eax
 006767D7    push        0
 006767D9    mov         ecx,dword ptr [edx]
 006767DB    push        ecx
 006767DC    call        KERNEL32.WideCharToMultiByte
 006767E1    mov         dword ptr [ebp-4],eax
 006767E4    cmp         dword ptr [ebp-4],0
>006767E8    je          006767F0
 006767EA    cmp         dword ptr [ebp-0C],0
>006767EE    je          006767F8
 006767F0    or          eax,0FFFFFFFF
>006767F3    jmp         0067688A
 006767F8    mov         edx,dword ptr [ebp-4]
 006767FB    add         edx,ebx
 006767FD    cmp         edx,dword ptr [ebp+10]
>00676800    jbe         00676809
 00676802    mov         eax,ebx
>00676804    jmp         0067688A
 00676809    xor         esi,esi
 0067680B    mov         eax,dword ptr [ebp+8]
 0067680E    lea         edx,[eax+ebx]
 00676811    lea         eax,[ebp-6]
 00676814    cmp         esi,dword ptr [ebp-4]
>00676817    jge         0067682E
 00676819    mov         cl,byte ptr [eax]
 0067681B    mov         byte ptr [edx],cl
 0067681D    test        cl,cl
>0067681F    jne         00676825
 00676821    mov         eax,ebx
>00676823    jmp         0067688A
 00676825    inc         eax
 00676826    inc         esi
 00676827    inc         edx
 00676828    inc         ebx
 00676829    cmp         esi,dword ptr [ebp-4]
>0067682C    jl          00676819
 0067682E    add         dword ptr [ebp+0C],2
 00676832    cmp         ebx,dword ptr [ebp+10]
>00676835    jb          006767BF
 00676837    mov         eax,ebx
>00676839    jmp         0067688A
 0067683B    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 00676841    cmp         dword ptr [edx+8],0
>00676845    je          00676853
 00676847    mov         ecx,dword ptr [ebp+0C]
 0067684A    push        ecx
 0067684B    call        0066FE74
 00676850    pop         ecx
>00676851    jmp         0067688A
 00676853    lea         eax,[ebp-0C]
 00676856    mov         ecx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 0067685C    push        eax
 0067685D    push        0
 0067685F    push        0
 00676861    push        0
 00676863    push        0FF
 00676865    mov         edx,dword ptr [ebp+0C]
 00676868    push        edx
 00676869    push        220
 0067686E    mov         eax,dword ptr [ecx]
 00676870    push        eax
 00676871    call        KERNEL32.WideCharToMultiByte
 00676876    mov         ebx,eax
 00676878    test        ebx,ebx
>0067687A    je          00676882
 0067687C    cmp         dword ptr [ebp-0C],0
>00676880    je          00676887
 00676882    or          eax,0FFFFFFFF
>00676885    jmp         0067688A
 00676887    mov         eax,ebx
 00676889    dec         eax
 0067688A    pop         esi
 0067688B    pop         ebx
 0067688C    mov         esp,ebp
 0067688E    pop         ebp
 0067688F    ret
end;*}

//00676890
procedure sub_00676890;
begin
{*
 00676890    push        edx
 00676891    push        eax
 00676892    mov         eax,dword ptr [esp+10]
 00676896    mul         eax,dword ptr [esp]
 00676899    mov         ecx,eax
 0067689B    mov         eax,dword ptr [esp+4]
 0067689F    mul         eax,dword ptr [esp+0C]
 006768A3    add         ecx,eax
 006768A5    mov         eax,dword ptr [esp]
 006768A8    mul         eax,dword ptr [esp+0C]
 006768AC    add         edx,ecx
 006768AE    pop         ecx
 006768AF    pop         ecx
 006768B0    ret         8
*}
end;

//0067692B
{*function sub_0067692B(?:?; ?:Extended):?;
begin
 0067692B    push        ebp
 0067692C    push        ebx
 0067692D    push        esi
 0067692E    push        edi
 0067692F    mov         ebx,dword ptr [esp+14]
 00676933    mov         ecx,dword ptr [esp+18]
 00676937    or          ecx,ecx
>00676939    jne         00676943
 0067693B    or          edx,edx
>0067693D    je          0067696E
 0067693F    or          ebx,ebx
>00676941    je          0067696E
 00676943    mov         ebp,ecx
 00676945    mov         ecx,40
 0067694A    xor         edi,edi
 0067694C    xor         esi,esi
 0067694E    shl         eax,1
 00676950    rcl         edx,1
 00676952    rcl         esi,1
 00676954    rcl         edi,1
 00676956    cmp         edi,ebp
>00676958    jb          00676965
>0067695A    ja          00676960
 0067695C    cmp         esi,ebx
>0067695E    jb          00676965
 00676960    sub         esi,ebx
 00676962    sbb         edi,ebp
 00676964    inc         eax
 00676965    loop        0067694E
 00676967    pop         edi
 00676968    pop         esi
 00676969    pop         ebx
 0067696A    pop         ebp
 0067696B    ret         8
 0067696E    div         eax,ebx
 00676970    xor         edx,edx
>00676972    jmp         00676967
 00676974    push        ebp
 00676975    push        ebx
 00676976    push        esi
 00676977    push        edi
 00676978    xor         edi,edi
 0067697A    mov         ebx,dword ptr [esp+14]
 0067697E    mov         ecx,dword ptr [esp+18]
 00676982    or          ecx,ecx
>00676984    jne         0067698E
 00676986    or          edx,edx
>00676988    je          006769E7
 0067698A    or          ebx,ebx
>0067698C    je          006769E7
 0067698E    or          edx,edx
>00676990    jns         0067699C
 00676992    neg         edx
 00676994    neg         eax
 00676996    sbb         edx,0
 00676999    or          edi,1
 0067699C    or          ecx,ecx
>0067699E    jns         006769A7
 006769A0    neg         ecx
 006769A2    neg         ebx
 006769A4    sbb         ecx,0
 006769A7    mov         ebp,ecx
 006769A9    mov         ecx,40
 006769AE    push        edi
 006769AF    xor         edi,edi
 006769B1    xor         esi,esi
 006769B3    shl         eax,1
 006769B5    rcl         edx,1
 006769B7    rcl         esi,1
 006769B9    rcl         edi,1
 006769BB    cmp         edi,ebp
>006769BD    jb          006769CA
>006769BF    ja          006769C5
 006769C1    cmp         esi,ebx
>006769C3    jb          006769CA
 006769C5    sub         esi,ebx
 006769C7    sbb         edi,ebp
 006769C9    inc         eax
 006769CA    loop        006769B3
 006769CC    mov         eax,esi
 006769CE    mov         edx,edi
 006769D0    pop         ebx
 006769D1    test        ebx,1
>006769D7    je          006769E0
 006769D9    neg         edx
 006769DB    neg         eax
 006769DD    sbb         edx,0
 006769E0    pop         edi
 006769E1    pop         esi
 006769E2    pop         ebx
 006769E3    pop         ebp
 006769E4    ret         8
 006769E7    div         eax,ebx
 006769E9    xchg        eax,edx
 006769EA    xor         edx,edx
>006769EC    jmp         006769E0
 006769EE    push        ebp
 006769EF    push        ebx
 006769F0    push        esi
 006769F1    push        edi
 006769F2    mov         ebx,dword ptr [esp+14]
 006769F6    mov         ecx,dword ptr [esp+18]
 006769FA    or          ecx,ecx
>006769FC    jne         00676A06
 006769FE    or          edx,edx
>00676A00    je          00676A35
 00676A02    or          ebx,ebx
>00676A04    je          00676A35
 00676A06    mov         ebp,ecx
 00676A08    mov         ecx,40
 00676A0D    xor         edi,edi
 00676A0F    xor         esi,esi
 00676A11    shl         eax,1
 00676A13    rcl         edx,1
 00676A15    rcl         esi,1
 00676A17    rcl         edi,1
 00676A19    cmp         edi,ebp
>00676A1B    jb          00676A28
>00676A1D    ja          00676A23
 00676A1F    cmp         esi,ebx
>00676A21    jb          00676A28
 00676A23    sub         esi,ebx
 00676A25    sbb         edi,ebp
 00676A27    inc         eax
 00676A28    loop        00676A11
 00676A2A    mov         eax,esi
 00676A2C    mov         edx,edi
 00676A2E    pop         edi
 00676A2F    pop         esi
 00676A30    pop         ebx
 00676A31    pop         ebp
 00676A32    ret         8
 00676A35    div         eax,ebx
 00676A37    xchg        eax,edx
 00676A38    xor         edx,edx
>00676A3A    jmp         00676A2E
 00676A3C    cmp         cl,20
>00676A3F    jl          00676A52
 00676A41    cmp         cl,40
>00676A44    jl          00676A4B
 00676A46    xor         edx,edx
 00676A48    xor         eax,eax
 00676A4A    ret
 00676A4B    mov         edx,eax
 00676A4D    shl         edx,cl
 00676A4F    xor         eax,eax
 00676A51    ret
 00676A52    shld        edx,eax,cl
 00676A55    shl         eax,cl
 00676A57    ret
end;*}

//006769EE
{*function sub_006769EE(?:?; ?:Extended):?;
begin
 006769EE    push        ebp
 006769EF    push        ebx
 006769F0    push        esi
 006769F1    push        edi
 006769F2    mov         ebx,dword ptr [esp+14]
 006769F6    mov         ecx,dword ptr [esp+18]
 006769FA    or          ecx,ecx
>006769FC    jne         00676A06
 006769FE    or          edx,edx
>00676A00    je          00676A35
 00676A02    or          ebx,ebx
>00676A04    je          00676A35
 00676A06    mov         ebp,ecx
 00676A08    mov         ecx,40
 00676A0D    xor         edi,edi
 00676A0F    xor         esi,esi
 00676A11    shl         eax,1
 00676A13    rcl         edx,1
 00676A15    rcl         esi,1
 00676A17    rcl         edi,1
 00676A19    cmp         edi,ebp
>00676A1B    jb          00676A28
>00676A1D    ja          00676A23
 00676A1F    cmp         esi,ebx
>00676A21    jb          00676A28
 00676A23    sub         esi,ebx
 00676A25    sbb         edi,ebp
 00676A27    inc         eax
 00676A28    loop        00676A11
 00676A2A    mov         eax,esi
 00676A2C    mov         edx,edi
 00676A2E    pop         edi
 00676A2F    pop         esi
 00676A30    pop         ebx
 00676A31    pop         ebp
 00676A32    ret         8
 00676A35    div         eax,ebx
 00676A37    xchg        eax,edx
 00676A38    xor         edx,edx
>00676A3A    jmp         00676A2E
 00676A3C    cmp         cl,20
>00676A3F    jl          00676A52
 00676A41    cmp         cl,40
>00676A44    jl          00676A4B
 00676A46    xor         edx,edx
 00676A48    xor         eax,eax
 00676A4A    ret
 00676A4B    mov         edx,eax
 00676A4D    shl         edx,cl
 00676A4F    xor         eax,eax
 00676A51    ret
 00676A52    shld        edx,eax,cl
 00676A55    shl         eax,cl
 00676A57    ret
end;*}

//00676A90
procedure sub_00676A90;
begin
{*
>00676A90    jmp         006771A4
*}
end;

//00676A98
{*procedure sub_00676A98(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00676A98    push        ebp
 00676A99    mov         ebp,esp
 00676A9B    add         esp,0FFFFFF90
 00676A9E    push        ebx
 00676A9F    push        esi
 00676AA0    mov         edx,dword ptr [ebp+14]
 00676AA3    mov         eax,dword ptr [ebp+10]
 00676AA6    mov         esi,dword ptr [ebp+0C]
 00676AA9    mov         ebx,dword ptr [ebp+8]
 00676AAC    mov         dword ptr [ebp-20],ebx
 00676AAF    mov         dword ptr [ebp-1C],esi
 00676AB2    test        eax,eax
>00676AB4    jne         00676ABE
 00676AB6    fld         qword ptr ds:[676B40]
>00676ABC    jmp         00676AC0
 00676ABE    fld         qword ptr [eax]
 00676AC0    fstp        qword ptr [ebp-18]
 00676AC3    wait
 00676AC4    test        edx,edx
>00676AC6    jne         00676AD0
 00676AC8    fld         qword ptr ds:[676B40]
>00676ACE    jmp         00676AD2
 00676AD0    fld         qword ptr [edx]
 00676AD2    fstp        qword ptr [ebp-10]
 00676AD5    wait
 00676AD6    mov         eax,dword ptr [ebp+18]
 00676AD9    lea         edx,[ebp-20]
 00676ADC    mov         dword ptr [ebp-8],eax
 00676ADF    mov         eax,dword ptr [ebp+1C]
 00676AE2    mov         dword ptr [ebp-4],eax
 00676AE5    push        edx
 00676AE6    call        dword ptr ds:[6E6FE0]
 00676AEC    pop         ecx
 00676AED    test        eax,eax
>00676AEF    jne         00676B37
 00676AF1    mov         ecx,dword ptr [ebx*4+6E6FE4];gvar_006E6FE4:Extended
 00676AF8    push        ecx
 00676AF9    push        esi
 00676AFA    push        6E6DAC;'%s: %s error'
 00676AFF    lea         eax,[ebp-70]
 00676B02    push        eax
 00676B03    call        USER32.wsprintfA
 00676B08    add         esp,10
 00676B0B    add         ebx,0FFFFFFFE
 00676B0E    sub         ebx,3
>00676B11    jb          00676B15
>00676B13    jmp         00676B22
 00676B15    call        00678BF0
 00676B1A    mov         dword ptr [eax],22
>00676B20    jmp         00676B2D
 00676B22    call        00678BF0
 00676B27    mov         dword ptr [eax],21
 00676B2D    lea         edx,[ebp-70]
 00676B30    push        edx
 00676B31    call        00678C68
 00676B36    pop         ecx
 00676B37    fld         qword ptr [ebp-8]
 00676B3A    pop         esi
 00676B3B    pop         ebx
 00676B3C    mov         esp,ebp
 00676B3E    pop         ebp
 00676B3F    ret
end;*}

//00676B48
{*procedure sub_00676B48(?:?);
begin
 00676B48    push        ebp
 00676B49    mov         ebp,esp
 00676B4B    add         esp,0FFFFFFF4
 00676B4E    push        ebx
 00676B4F    mov         edx,dword ptr [ebp+8]
 00676B52    cmp         edx,0FFFFECBC
>00676B58    jge         00676B65
 00676B5A    fld         tbyte ptr ds:[676CB4];0:Extended
>00676B60    jmp         00676CAF
 00676B65    cmp         edx,1344
>00676B6B    jle         00676B79
 00676B6D    mov         eax,6E6E72;gvar_006E6E72:Extended
 00676B72    fld         tbyte ptr [eax]
>00676B74    jmp         00676CAF
 00676B79    test        edx,edx
>00676B7B    jne         00676B88
 00676B7D    fld         tbyte ptr ds:[676CC0];1:Extended
>00676B83    jmp         00676CAF
 00676B88    mov         eax,edx
 00676B8A    test        edx,edx
>00676B8C    jge         00676B92
 00676B8E    mov         eax,edx
 00676B90    neg         eax
 00676B92    mov         ecx,eax
 00676B94    and         ecx,7
 00676B97    sar         eax,3
 00676B9A    test        al,1
 00676B9C    lea         ecx,[ecx+ecx*4]
 00676B9F    mov         ebx,dword ptr [ecx*2+6E6DBC]
 00676BA6    mov         dword ptr [ebp-0C],ebx
 00676BA9    mov         ebx,dword ptr [ecx*2+6E6DC0]
 00676BB0    mov         dword ptr [ebp-8],ebx
 00676BB3    mov         bx,word ptr [ecx*2+6E6DC4]
 00676BBB    mov         word ptr [ebp-4],bx
>00676BBF    je          00676BD0
 00676BC1    fld         tbyte ptr ds:[6E6E0C];100000000:Extended
 00676BC7    fld         tbyte ptr [ebp-0C]
 00676BCA    fmulp       st(1),st
 00676BCC    fstp        tbyte ptr [ebp-0C]
 00676BCF    wait
 00676BD0    sar         eax,1
 00676BD2    test        eax,eax
>00676BD4    je          00676C9D
 00676BDA    test        al,1
>00676BDC    je          00676BED
 00676BDE    fld         tbyte ptr ds:[6E6E18];1E16:Extended
 00676BE4    fld         tbyte ptr [ebp-0C]
 00676BE7    fmulp       st(1),st
 00676BE9    fstp        tbyte ptr [ebp-0C]
 00676BEC    wait
 00676BED    sar         eax,1
 00676BEF    test        al,1
>00676BF1    je          00676C03
 00676BF3    mov         ecx,6E6E22;gvar_006E6E22:Extended
 00676BF8    fld         tbyte ptr [ecx]
 00676BFA    fld         tbyte ptr [ebp-0C]
 00676BFD    fmulp       st(1),st
 00676BFF    fstp        tbyte ptr [ebp-0C]
 00676C02    wait
 00676C03    sar         eax,1
 00676C05    test        al,1
>00676C07    je          00676C19
 00676C09    mov         ecx,6E6E2C;gvar_006E6E2C:Extended
 00676C0E    fld         tbyte ptr [ecx]
 00676C10    fld         tbyte ptr [ebp-0C]
 00676C13    fmulp       st(1),st
 00676C15    fstp        tbyte ptr [ebp-0C]
 00676C18    wait
 00676C19    sar         eax,1
 00676C1B    test        al,1
>00676C1D    je          00676C2F
 00676C1F    mov         ecx,6E6E36;gvar_006E6E36:Extended
 00676C24    fld         tbyte ptr [ecx]
 00676C26    fld         tbyte ptr [ebp-0C]
 00676C29    fmulp       st(1),st
 00676C2B    fstp        tbyte ptr [ebp-0C]
 00676C2E    wait
 00676C2F    sar         eax,1
 00676C31    test        al,1
>00676C33    je          00676C45
 00676C35    mov         ecx,6E6E40;gvar_006E6E40:Extended
 00676C3A    fld         tbyte ptr [ecx]
 00676C3C    fld         tbyte ptr [ebp-0C]
 00676C3F    fmulp       st(1),st
 00676C41    fstp        tbyte ptr [ebp-0C]
 00676C44    wait
 00676C45    sar         eax,1
 00676C47    test        al,1
>00676C49    je          00676C5B
 00676C4B    mov         ecx,6E6E4A;gvar_006E6E4A:Extended
 00676C50    fld         tbyte ptr [ecx]
 00676C52    fld         tbyte ptr [ebp-0C]
 00676C55    fmulp       st(1),st
 00676C57    fstp        tbyte ptr [ebp-0C]
 00676C5A    wait
 00676C5B    sar         eax,1
 00676C5D    test        al,1
>00676C5F    je          00676C71
 00676C61    mov         ecx,6E6E54;gvar_006E6E54:Extended
 00676C66    fld         tbyte ptr [ecx]
 00676C68    fld         tbyte ptr [ebp-0C]
 00676C6B    fmulp       st(1),st
 00676C6D    fstp        tbyte ptr [ebp-0C]
 00676C70    wait
 00676C71    sar         eax,1
 00676C73    test        al,1
>00676C75    je          00676C87
 00676C77    mov         ecx,6E6E5E;gvar_006E6E5E:Extended
 00676C7C    fld         tbyte ptr [ecx]
 00676C7E    fld         tbyte ptr [ebp-0C]
 00676C81    fmulp       st(1),st
 00676C83    fstp        tbyte ptr [ebp-0C]
 00676C86    wait
 00676C87    sar         eax,1
 00676C89    test        al,1
>00676C8B    je          00676C9D
 00676C8D    mov         eax,6E6E68;gvar_006E6E68:Extended
 00676C92    fld         tbyte ptr [eax]
 00676C94    fld         tbyte ptr [ebp-0C]
 00676C97    fmulp       st(1),st
 00676C99    fstp        tbyte ptr [ebp-0C]
 00676C9C    wait
 00676C9D    test        edx,edx
>00676C9F    jge         00676CAC
 00676CA1    fld         tbyte ptr [ebp-0C]
 00676CA4    fdivr       dword ptr ds:[676CCC];1:Single
>00676CAA    jmp         00676CAF
 00676CAC    fld         tbyte ptr [ebp-0C]
 00676CAF    pop         ebx
 00676CB0    mov         esp,ebp
 00676CB2    pop         ebp
 00676CB3    ret
end;*}

//00676CD0
{*function sub_00676CD0(?:?):?;
begin
 00676CD0    push        ebp
 00676CD1    mov         ebp,esp
 00676CD3    push        ebx
 00676CD4    push        esi
 00676CD5    push        edi
 00676CD6    xor         edi,edi
 00676CD8    mov         esi,dword ptr [ebp+8]
 00676CDB    mov         bl,byte ptr [esi]
 00676CDD    inc         esi
 00676CDE    movsx       eax,bl
 00676CE1    push        eax
 00676CE2    call        006789FC
 00676CE7    pop         ecx
 00676CE8    test        eax,eax
>00676CEA    jne         00676CDB
 00676CEC    cmp         bl,2B
>00676CEF    je          00676CF6
 00676CF1    cmp         bl,2D
>00676CF4    jne         00676D04
 00676CF6    cmp         bl,2D
 00676CF9    sete        al
 00676CFC    and         eax,1
 00676CFF    mov         bl,byte ptr [esi]
 00676D01    inc         esi
>00676D02    jmp         00676D1C
 00676D04    xor         eax,eax
>00676D06    jmp         00676D1C
 00676D08    movsx       ecx,bl
 00676D0B    mov         edx,edi
 00676D0D    mov         bl,byte ptr [esi]
 00676D0F    add         edx,edx
 00676D11    lea         edx,[edx+edx*4]
 00676D14    add         edx,ecx
 00676D16    add         edx,0FFFFFFD0
 00676D19    inc         esi
 00676D1A    mov         edi,edx
 00676D1C    cmp         bl,30
>00676D1F    jl          00676D26
 00676D21    cmp         bl,39
>00676D24    jle         00676D08
 00676D26    test        eax,eax
>00676D28    je          00676D30
 00676D2A    mov         eax,edi
 00676D2C    neg         eax
>00676D2E    jmp         00676D32
 00676D30    mov         eax,edi
 00676D32    pop         edi
 00676D33    pop         esi
 00676D34    pop         ebx
 00676D35    pop         ebp
 00676D36    ret
end;*}

//00676D48
{*procedure sub_00676D48(?:?; ?:?);
begin
 00676D48    push        ebp
 00676D49    mov         ebp,esp
 00676D4B    fld         qword ptr [ebp+8]
 00676D4E    mov         ax,word ptr [ebp+0E]
 00676D52    shl         ax,1
 00676D55    cmp         ax,8680
>00676D59    ja          00676D62
 00676D5B    mov         ch,8
 00676D5D    call        006778C8
 00676D62    pop         ebp
 00676D63    ret
end;*}

//00676D64
{*function sub_00676D64:?;
begin
 00676D64    push        ebp
 00676D65    mov         ebp,esp
 00676D67    lea         esp,[ebp-2]
 00676D6A    fnstsw      word ptr [ebp-2]
 00676D6D    fnclex
 00676D6F    movzx       eax,word ptr [ebp-2]
 00676D73    mov         esp,ebp
 00676D75    pop         ebp
 00676D76    ret
end;*}

//00676D78
{*procedure sub_00676D78(?:?; ?:?; ?:?);
begin
 00676D78    push        ebp
 00676D79    mov         ebp,esp
 00676D7B    push        ebx
 00676D7C    fld         qword ptr [ebp+8]
 00676D7F    mov         ax,7FF0
 00676D83    and         ax,word ptr [ebp+0E]
 00676D87    cmp         ax,4340
>00676D8B    jae         00676D92
 00676D8D    fcos
 00676D8F    pop         ebx
 00676D90    pop         ebp
 00676D91    ret
 00676D92    fstp        st(0)
 00676D94    push        dword ptr ds:[6E6E80]
 00676D9A    push        dword ptr ds:[6E6E7C]
 00676DA0    push        0
 00676DA2    lea         eax,[ebp+8]
 00676DA5    push        eax
 00676DA6    push        6E6E84
 00676DAB    push        5
 00676DAD    call        00676A98
 00676DB2    add         esp,18
>00676DB5    jmp         00676D8F
 00676DB7    nop
 00676DB8    push        ebp
 00676DB9    mov         ebp,esp
 00676DBB    lea         esp,[ebp-4]
 00676DBE    wait
 00676DBF    fnstcw      word ptr [ebp-4]
 00676DC2    mov         eax,dword ptr [ebp+8]
 00676DC5    mov         ecx,dword ptr [ebp+0C]
 00676DC8    jecxz       00676DCF
 00676DCA    mov         [006E6F58],eax;gvar_006E6F58
 00676DCF    and         eax,ecx
 00676DD1    not         ecx
 00676DD3    wait
 00676DD4    movzx       edx,word ptr [ebp-4]
 00676DD8    and         edx,ecx
 00676DDA    or          eax,edx
 00676DDC    mov         word ptr [ebp-4],ax
 00676DE0    fldcw       word ptr [ebp-4]
 00676DE3    mov         esp,ebp
 00676DE5    pop         ebp
 00676DE6    ret
end;*}

//00676DB8
{*function sub_00676DB8(?:?; ?:?):?;
begin
 00676DB8    push        ebp
 00676DB9    mov         ebp,esp
 00676DBB    lea         esp,[ebp-4]
 00676DBE    wait
 00676DBF    fnstcw      word ptr [ebp-4]
 00676DC2    mov         eax,dword ptr [ebp+8]
 00676DC5    mov         ecx,dword ptr [ebp+0C]
 00676DC8    jecxz       00676DCF
 00676DCA    mov         [006E6F58],eax;gvar_006E6F58
 00676DCF    and         eax,ecx
 00676DD1    not         ecx
 00676DD3    wait
 00676DD4    movzx       edx,word ptr [ebp-4]
 00676DD8    and         edx,ecx
 00676DDA    or          eax,edx
 00676DDC    mov         word ptr [ebp-4],ax
 00676DE0    fldcw       word ptr [ebp-4]
 00676DE3    mov         esp,ebp
 00676DE5    pop         ebp
 00676DE6    ret
end;*}

//00676DE8
procedure sub_00676DE8;
begin
{*
 00676DE8    jmp         dword ptr ds:[6E6E88]
*}
end;

//00676DEE
{*function sub_00676DEE:?;
begin
 00676DEE    jmp         dword ptr ds:[6E6E8C]
end;*}

//00676DF4
procedure sub_00676DF4;
begin
{*
 00676DF4    jmp         dword ptr ds:[6E6E90]
*}
end;

//00676DFA
procedure sub_00676DFA;
begin
{*
 00676DFA    jmp         dword ptr ds:[6E6E94]
*}
end;

//00676E30
{*procedure sub_00676E30(?:?; ?:?);
begin
 00676E30    push        ebp
 00676E31    mov         ebp,esp
 00676E33    fld         qword ptr [ebp+8]
 00676E36    mov         ax,word ptr [ebp+0E]
 00676E3A    shl         ax,1
 00676E3D    cmp         ax,8680
>00676E41    ja          00676E4A
 00676E43    mov         ch,4
 00676E45    call        006778C8
 00676E4A    pop         ebp
 00676E4B    ret
end;*}

//00676E4C
procedure sub_00676E4C;
begin
{*
 00676E4C    fninit
 00676E4E    push        1FFF
 00676E53    push        dword ptr ds:[6E6F58];gvar_006E6F58
 00676E59    call        00676DB8
 00676E5E    add         esp,8
 00676E61    ret
*}
end;

//00676E64
procedure sub_00676E64;
begin
{*
 00676E64    push        ebp
 00676E65    mov         ebp,esp
 00676E67    lea         esp,[ebp-0C]
 00676E6A    wait
 00676E6B    fnstcw      word ptr [ebp-4]
 00676E6E    wait
 00676E6F    mov         al,byte ptr [ebp-3]
 00676E72    or          dword ptr [ebp-4],0C01
 00676E79    fldcw       word ptr [ebp-4]
 00676E7C    fistp       qword ptr [ebp-0C]
 00676E7F    mov         byte ptr [ebp-3],al
 00676E82    fldcw       word ptr [ebp-4]
 00676E85    mov         eax,dword ptr [ebp-0C]
 00676E88    mov         edx,dword ptr [ebp-8]
 00676E8B    mov         esp,ebp
 00676E8D    pop         ebp
 00676E8E    ret
*}
end;

//00676E90
{*procedure sub_00676E90(?:?);
begin
 00676E90    push        ebp
 00676E91    mov         ebp,esp
 00676E93    lea         esp,[ebp-0A]
 00676E96    mov         eax,dword ptr [ebp+8]
 00676E99    test        byte ptr [eax+7],80
>00676E9D    jne         00676EA5
 00676E9F    fild        qword ptr [eax]
 00676EA1    mov         esp,ebp
 00676EA3    pop         ebp
 00676EA4    ret
 00676EA5    mov         ecx,dword ptr [eax]
 00676EA7    mov         dword ptr [ebp-0A],ecx
 00676EAA    mov         ecx,dword ptr [eax+4]
 00676EAD    mov         dword ptr [ebp-6],ecx
 00676EB0    mov         word ptr [ebp-2],403E
 00676EB6    fld         tbyte ptr [ebp-0A]
 00676EB9    mov         esp,ebp
 00676EBB    pop         ebp
 00676EBC    ret
end;*}

//00676EC0
procedure sub_00676EC0;
begin
{*
 00676EC0    mov         eax,dword ptr [esp+4]
 00676EC4    mov         edx,dword ptr [esp+8]
 00676EC8    cmp         word ptr [edx+8],403E
>00676ECE    je          00676ED6
 00676ED0    fld         tbyte ptr [edx]
 00676ED2    fistp       qword ptr [eax]
 00676ED4    wait
 00676ED5    ret
 00676ED6    mov         ecx,dword ptr [edx]
 00676ED8    mov         dword ptr [eax],ecx
 00676EDA    mov         ecx,dword ptr [edx+4]
 00676EDD    mov         dword ptr [eax+4],ecx
 00676EE0    ret
*}
end;

//00676EE4
procedure sub_00676EE4;
begin
{*
 00676EE4    mov         eax,dword ptr [esp+4]
 00676EE8    fld         tbyte ptr [eax]
 00676EEA    fxam
 00676EEC    xor         eax,eax
 00676EEE    wait
 00676EEF    fnstsw      al
 00676EF1    fstp        st(0)
 00676EF3    wait
 00676EF4    ret
*}
end;

//00676EF8
{*function sub_00676EF8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00676EF8    push        ebp
 00676EF9    mov         ebp,esp
 00676EFB    add         esp,0FFFFFFBC
 00676EFE    push        ebx
 00676EFF    push        esi
 00676F00    push        edi
 00676F01    mov         edi,dword ptr [ebp+14]
 00676F04    mov         esi,dword ptr [ebp+10]
 00676F07    cmp         edi,2
>00676F0A    jl          00676F9C
 00676F10    cmp         edi,24
>00676F13    jg          00676F9C
 00676F19    cmp         dword ptr [ebp+0C],0
>00676F1D    jne         00676F27
 00676F1F    cmp         dword ptr [ebp+8],0
>00676F23    jae         00676F46
>00676F25    jmp         00676F29
>00676F27    jge         00676F46
 00676F29    cmp         byte ptr [ebp+18],0
>00676F2D    je          00676F46
 00676F2F    mov         byte ptr [esi],2D
 00676F32    inc         esi
 00676F33    mov         eax,dword ptr [ebp+8]
 00676F36    mov         edx,dword ptr [ebp+0C]
 00676F39    neg         eax
 00676F3B    adc         edx,0
 00676F3E    mov         dword ptr [ebp+8],eax
 00676F41    neg         edx
 00676F43    mov         dword ptr [ebp+0C],edx
 00676F46    lea         ebx,[ebp-44]
 00676F49    mov         eax,edi
 00676F4B    cdq
 00676F4C    push        edx
 00676F4D    push        eax
 00676F4E    mov         eax,dword ptr [ebp+8]
 00676F51    mov         edx,dword ptr [ebp+0C]
 00676F54    call        006769EE
 00676F59    mov         byte ptr [ebx],al
 00676F5B    mov         eax,edi
 00676F5D    cdq
 00676F5E    push        edx
 00676F5F    push        eax
 00676F60    mov         eax,dword ptr [ebp+8]
 00676F63    mov         edx,dword ptr [ebp+0C]
 00676F66    inc         ebx
 00676F67    call        0067692B
 00676F6C    mov         dword ptr [ebp+8],eax
 00676F6F    mov         dword ptr [ebp+0C],edx
 00676F72    cmp         edx,0
>00676F75    jne         00676F49
 00676F77    cmp         eax,0
>00676F7A    jne         00676F49
>00676F7C    jmp         00676F95
 00676F7E    dec         ebx
 00676F7F    mov         al,byte ptr [ebx]
 00676F81    cmp         al,0A
>00676F83    jge         00676F8D
 00676F85    add         eax,30
 00676F88    mov         byte ptr [esi],al
 00676F8A    inc         esi
>00676F8B    jmp         00676F95
 00676F8D    add         al,byte ptr [ebp+1C]
 00676F90    add         al,0F6
 00676F92    mov         byte ptr [esi],al
 00676F94    inc         esi
 00676F95    lea         edx,[ebp-44]
 00676F98    cmp         ebx,edx
>00676F9A    jne         00676F7E
 00676F9C    mov         byte ptr [esi],0
 00676F9F    mov         eax,dword ptr [ebp+10]
 00676FA2    pop         edi
 00676FA3    pop         esi
 00676FA4    pop         ebx
 00676FA5    mov         esp,ebp
 00676FA7    pop         ebp
 00676FA8    ret
end;*}

//00676FAC
{*procedure sub_00676FAC(?:?; ?:Extended; ?:?; ?:?);
begin
 00676FAC    push        ebp
 00676FAD    mov         ebp,esp
 00676FAF    add         esp,0FFFFFFE4
 00676FB2    push        ebx
 00676FB3    push        esi
 00676FB4    push        edi
 00676FB5    mov         esi,dword ptr [ebp+8]
 00676FB8    test        esi,esi
>00676FBA    jne         00676FC6
 00676FBC    mov         cx,407E
 00676FC0    mov         bx,3F6A
>00676FC4    jmp         00676FCE
 00676FC6    mov         cx,43FE
 00676FCA    mov         bx,3BCD
 00676FCE    lea         eax,[ebp+0C]
 00676FD1    mov         dx,word ptr [eax+8]
 00676FD5    mov         edi,edx
 00676FD7    and         di,8000
 00676FDC    mov         word ptr [ebp-6],di
 00676FE0    and         dx,7FFF
 00676FE5    cmp         dx,7FFF
>00676FEA    jne         00676FFB
 00676FEC    fld         tbyte ptr [ebp+0C]
 00676FEF    fstp        qword ptr [ebp-1C]
 00676FF2    wait
 00676FF3    fld         qword ptr [ebp-1C]
>00676FF6    jmp         006770BD
 00676FFB    cmp         cx,dx
>00676FFE    jae         00677011
 00677000    mov         eax,dword ptr [ebp+18]
 00677003    mov         dword ptr [ebp-10],eax
 00677006    mov         eax,dword ptr [ebp+1C]
 00677009    mov         dword ptr [ebp-0C],eax
>0067700C    jmp         00677095
 00677011    cmp         cx,dx
>00677014    jne         00677068
 00677016    push        0
 00677018    push        0
 0067701A    call        00676DB8
 0067701F    add         esp,8
 00677022    mov         dword ptr [ebp-4],eax
 00677025    push        0C00
 0067702A    push        0C00
 0067702F    call        00676DB8
 00677034    add         esp,8
 00677037    test        esi,esi
>00677039    jne         0067704B
 0067703B    fld         tbyte ptr [ebp+0C]
 0067703E    fstp        dword ptr [ebp-14]
 00677041    wait
 00677042    fld         dword ptr [ebp-14]
 00677045    fstp        qword ptr [ebp-10]
 00677048    wait
>00677049    jmp         00677052
 0067704B    fld         tbyte ptr [ebp+0C]
 0067704E    fstp        qword ptr [ebp-10]
 00677051    wait
 00677052    push        0C00
 00677057    mov         edx,dword ptr [ebp-4]
 0067705A    push        edx
 0067705B    call        00676DB8
 00677060    fld         qword ptr [ebp-10]
 00677063    add         esp,8
>00677066    jmp         006770BD
 00677068    mov         cx,word ptr [eax]
 0067706B    or          cx,dx
 0067706E    or          cx,word ptr [eax+2]
 00677072    or          cx,word ptr [eax+4]
 00677076    or          cx,word ptr [eax+6]
>0067707A    jne         00677088
 0067707C    fld         tbyte ptr [ebp+0C]
 0067707F    fstp        qword ptr [ebp-1C]
 00677082    wait
 00677083    fld         qword ptr [ebp-1C]
>00677086    jmp         006770BD
 00677088    cmp         bx,dx
>0067708B    jbe         006770B3
 0067708D    xor         eax,eax
 0067708F    mov         dword ptr [ebp-10],eax
 00677092    mov         dword ptr [ebp-0C],eax
 00677095    call        00678BF0
 0067709A    mov         dword ptr [eax],22
 006770A0    cmp         word ptr [ebp-6],0
>006770A5    je          006770AE
 006770A7    fld         qword ptr [ebp-10]
 006770AA    fchs
>006770AC    jmp         006770BD
 006770AE    fld         qword ptr [ebp-10]
>006770B1    jmp         006770BD
 006770B3    fld         tbyte ptr [ebp+0C]
 006770B6    fstp        qword ptr [ebp-1C]
 006770B9    wait
 006770BA    fld         qword ptr [ebp-1C]
 006770BD    pop         edi
 006770BE    pop         esi
 006770BF    pop         ebx
 006770C0    mov         esp,ebp
 006770C2    pop         ebp
 006770C3    ret
end;*}

//006770C4
{*function sub_006770C4(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 006770C4    push        ebp
 006770C5    mov         ebp,esp
 006770C7    add         esp,0FFFFFFDC
 006770CA    push        ebx
 006770CB    push        esi
 006770CC    push        edi
 006770CD    mov         edi,dword ptr [ebp+10]
 006770D0    mov         esi,dword ptr [ebp+8]
 006770D3    mov         ebx,dword ptr [ebp+0C]
 006770D6    cmp         edi,2
>006770D9    jl          00677128
 006770DB    cmp         edi,24
>006770DE    jg          00677128
 006770E0    test        esi,esi
>006770E2    jge         006770F0
 006770E4    cmp         byte ptr [ebp+14],0
>006770E8    je          006770F0
 006770EA    mov         byte ptr [ebx],2D
 006770ED    inc         ebx
 006770EE    neg         esi
 006770F0    lea         ecx,[ebp-24]
 006770F3    mov         eax,esi
 006770F5    xor         edx,edx
 006770F7    div         eax,edi
 006770F9    mov         byte ptr [ecx],dl
 006770FB    inc         ecx
 006770FC    mov         eax,esi
 006770FE    xor         edx,edx
 00677100    div         eax,edi
 00677102    mov         esi,eax
 00677104    test        eax,eax
>00677106    jne         006770F3
>00677108    jmp         00677121
 0067710A    dec         ecx
 0067710B    mov         al,byte ptr [ecx]
 0067710D    cmp         al,0A
>0067710F    jge         00677119
 00677111    add         eax,30
 00677114    mov         byte ptr [ebx],al
 00677116    inc         ebx
>00677117    jmp         00677121
 00677119    add         al,byte ptr [ebp+18]
 0067711C    add         al,0F6
 0067711E    mov         byte ptr [ebx],al
 00677120    inc         ebx
 00677121    lea         edx,[ebp-24]
 00677124    cmp         ecx,edx
>00677126    jne         0067710A
 00677128    mov         byte ptr [ebx],0
 0067712B    mov         eax,dword ptr [ebp+0C]
 0067712E    pop         edi
 0067712F    pop         esi
 00677130    pop         ebx
 00677131    mov         esp,ebp
 00677133    pop         ebp
 00677134    ret
end;*}

//00677138
{*procedure sub_00677138(?:?; ?:?);
begin
 00677138    push        ebp
 00677139    mov         ebp,esp
 0067713B    push        61
 0067713D    push        0
 0067713F    push        0A
 00677141    mov         eax,dword ptr [ebp+0C]
 00677144    push        eax
 00677145    mov         edx,dword ptr [ebp+8]
 00677148    push        edx
 00677149    call        006770C4
 0067714E    add         esp,14
 00677151    pop         ebp
 00677152    ret
end;*}

//00677184
{*procedure sub_00677184(?:?; ?:?; ?:?);
begin
 00677184    push        ebp
 00677185    mov         ebp,esp
 00677187    push        61
 00677189    push        0
 0067718B    mov         eax,dword ptr [ebp+10]
 0067718E    push        eax
 0067718F    mov         edx,dword ptr [ebp+0C]
 00677192    push        edx
 00677193    mov         ecx,dword ptr [ebp+8]
 00677196    push        ecx
 00677197    call        006770C4
 0067719C    add         esp,14
 0067719F    pop         ebp
 006771A0    ret
end;*}

//00677228
{*procedure sub_00677228(?:?; ?:?);
begin
 00677228    push        ebp
 00677229    mov         ebp,esp
 0067722B    mov         eax,dword ptr [ebp+8]
 0067722E    mov         edx,dword ptr [ebp+0C]
 00677231    mov         [006E6FE0],eax;gvar_006E6FE0
 00677236    mov         dword ptr ds:[6E6FE4],edx;gvar_006E6FE4:Extended
 0067723C    pop         ebp
 0067723D    ret
end;*}

//00677240
{*function sub_00677240(?:?):?;
begin
 00677240    push        ebp
 00677241    mov         ebp,esp
 00677243    push        esi
 00677244    mov         esi,dword ptr [ebp+8]
 00677247    mov         ecx,0A
 0067724C    mov         eax,dword ptr [esi+4]
 0067724F    xor         edx,edx
 00677251    or          eax,eax
>00677253    je          0067725A
 00677255    div         eax,ecx
 00677257    mov         dword ptr [esi+4],eax
 0067725A    mov         eax,dword ptr [esi]
 0067725C    div         eax,ecx
 0067725E    mov         dword ptr [esi],eax
 00677260    mov         eax,edx
 00677262    pop         esi
 00677263    pop         ebp
 00677264    ret
end;*}

//00677268
{*function sub_00677268(?:?; ?:?):?;
begin
 00677268    push        ebp
 00677269    mov         ebp,esp
 0067726B    push        esi
 0067726C    push        edi
 0067726D    mov         esi,dword ptr [ebp+8]
 00677270    mov         ecx,0A
 00677275    mov         eax,dword ptr [esi]
 00677277    mul         eax,ecx
 00677279    add         eax,dword ptr [ebp+0C]
 0067727C    adc         edx,0
 0067727F    mov         dword ptr [esi],eax
 00677281    mov         edi,edx
 00677283    mov         eax,dword ptr [esi+4]
 00677286    mul         eax,ecx
 00677288    add         eax,edi
 0067728A    adc         edx,0
 0067728D    mov         dword ptr [esi+4],eax
 00677290    mov         eax,edx
 00677292    pop         edi
 00677293    pop         esi
 00677294    pop         ebp
 00677295    ret
end;*}

//00677298
{*function sub_00677298(?:?; ?:?; ?:?):?;
begin
 00677298    push        ebp
 00677299    mov         ebp,esp
 0067729B    push        ebx
 0067729C    push        esi
 0067729D    push        edi
 0067729E    mov         edi,dword ptr [ebp+10]
 006772A1    mov         esi,dword ptr [ebp+0C]
 006772A4    mov         ebx,dword ptr [ebp+8]
 006772A7    push        0E
 006772A9    call        00674548
 006772AE    pop         ecx
 006772AF    cmp         bl,47
>006772B2    je          006772C4
 006772B4    cmp         bl,67
>006772B7    jne         006772CA
>006772B9    jmp         006772C4
 006772BB    dec         edi
 006772BC    cmp         esi,edi
>006772BE    jb          006772C4
 006772C0    mov         eax,esi
>006772C2    jmp         006772D4
 006772C4    cmp         byte ptr [edi-1],30
>006772C8    je          006772BB
 006772CA    mov         dl,byte ptr [eax]
 006772CC    cmp         dl,byte ptr [edi-1]
>006772CF    jne         006772D2
 006772D1    dec         edi
 006772D2    mov         eax,edi
 006772D4    pop         edi
 006772D5    pop         esi
 006772D6    pop         ebx
 006772D7    pop         ebp
 006772D8    ret
end;*}

end.