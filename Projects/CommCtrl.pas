//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit CommCtrl;

interface

uses
  SysUtils, Classes;

    procedure CommCtrl;//0063E18C
    procedure sub_0063E194;//0063E194
    //function sub_0063E1F8(?:?):?;//0063E1F8
    //function sub_0063E23C(?:THandle; ?:?):?;//0063E23C
    //function sub_0063E264(?:?):?;//0063E264
    //function sub_0063E280(?:HWND; ?:?; ?:?):?;//0063E280
    //function sub_0063E2B0(?:HWND; ?:?):?;//0063E2B0
    //function sub_0063E2DC(?:?; ?:?; ?:?):?;//0063E2DC
    //function sub_0063E30C(?:HWND; ?:?):?;//0063E30C
    //function sub_0063E338(?:HWND; ?:?; ?:?):?;//0063E338
    //function sub_0063E368(?:?):?;//0063E368
    //function sub_0063E390(?:?):?;//0063E390
    //function sub_0063E3AC(?:?; ?:Byte):?;//0063E3AC
    //function sub_0063E3D8(?:?; ?:?):?;//0063E3D8
    //function sub_0063E404(?:?; ?:?):?;//0063E404
    //function sub_0063E430(?:?; ?:?):?;//0063E430
    //function sub_0063E45C(?:?):?;//0063E45C
    //function sub_0063E484(?:HWND; ?:?; ?:?):?;//0063E484
    //function sub_0063E4BC(?:HWND; ?:?; ?:?):?;//0063E4BC
    //function sub_0063E4EC(?:?; ?:?; ?:?; ?:?):?;//0063E4EC
    //function sub_0063E548(?:HWND; ?:?):?;//0063E548
    //function sub_0063E574(?:HWND; ?:?; ?:?):?;//0063E574
    //function sub_0063E5A4(?:HWND; ?:?):?;//0063E5A4
    //function sub_0063E5D0(?:HWND):?;//0063E5D0
    //function sub_0063E5F8(?:HWND; ?:?; ?:?):?;//0063E5F8
    //function sub_0063E628(?:HWND; ?:?; ?:?):?;//0063E628
    //function sub_0063E658(?:HWND; ?:?):?;//0063E658
    //function sub_0063E684(?:HWND; ?:?):?;//0063E684
    //function sub_0063E6B0(?:HWND; ?:?; ?:?):?;//0063E6B0
    //function sub_0063E6E8(?:HWND; ?:?; ?:?):?;//0063E6E8
    //function sub_0063E718(?:HWND; ?:?):?;//0063E718
    //function sub_0063E744(?:HWND; ?:?):?;//0063E744
    //function sub_0063E770(?:HWND):?;//0063E770
    //function sub_0063E798(?:HWND; ?:?):?;//0063E798
    //function sub_0063E7C4(?:?; ?:?):?;//0063E7C4
    //function sub_0063E7F8(?:?; ?:?; ?:?; ?:?):?;//0063E7F8
    //function sub_0063E838(?:?; ?:?; ?:?):?;//0063E838
    //function sub_0063E868(?:HWND; ?:?):?;//0063E868
    //procedure sub_0063E89C(?:HWND; ?:?; ?:?);//0063E89C
    //function sub_0063E8DC(?:?; ?:?; ?:?; ?:?):?;//0063E8DC
    procedure sub_0063E91C(?:HWND; ?:Integer);//0063E91C
    //procedure sub_0063E940(?:?; ?:?; ?:?);//0063E940
    //function sub_0063E96C(?:HWND; ?:?; ?:?):?;//0063E96C
    //function sub_0063E99C(?:HWND):?;//0063E99C
    //function sub_0063E9C4(?:HWND; ?:?):?;//0063E9C4
    //function sub_0063E9F0(?:HWND; ?:?; ?:?):?;//0063E9F0
    //function sub_0063EA50(?:HWND; ?:?; ?:?):?;//0063EA50
    //function sub_0063EA80(?:HWND; ?:Integer):?;//0063EA80
    //function sub_0063EAAC(?:HWND):?;//0063EAAC
    //function sub_0063EAD4(?:?; ?:?):?;//0063EAD4
    //function sub_0063EB00(?:?; ?:HTREEITEM):?;//0063EB00
    function TreeView_DeleteAllItems(hwnd:HWND):BOOL;//0063EB2C
    //function sub_0063EB54(?:?; ?:?; ?:?):?;//0063EB54
    //function sub_0063EB84(?:?; ?:?; ?:?; ?:?):?;//0063EB84
    //function sub_0063EBC0(?:?):?;//0063EBC0
    //function sub_0063EBE8(?:HWND):?;//0063EBE8
    //function sub_0063EC10(?:HWND; ?:Integer):?;//0063EC10
    //function sub_0063EC3C(?:HWND; ?:?; ?:?):?;//0063EC3C
    //function sub_0063EC6C(?:HWND; ?:HTREEITEM; ?:?):?;//0063EC6C
    //function sub_0063EC9C(?:?; ?:?):?;//0063EC9C
    //function sub_0063ECC4(?:?; ?:?):?;//0063ECC4
    //function sub_0063ECEC(?:?; ?:?):?;//0063ECEC
    //function sub_0063ED14(?:?; ?:HTREEITEM):?;//0063ED14
    //function sub_0063ED3C(?:HWND):?;//0063ED3C
    //function sub_0063ED60(?:?; ?:?):?;//0063ED60
    //function sub_0063ED88(?:?; ?:?):?;//0063ED88
    //function sub_0063EDB0(?:HWND):?;//0063EDB0
    //function sub_0063EDD4(?:HWND):?;//0063EDD4
    //function sub_0063EDF8(?:?):?;//0063EDF8
    //function sub_0063EE18(?:HWND; ?:?; ?:?):?;//0063EE18
    //function sub_0063EE48(?:HWND; ?:?):?;//0063EE48
    //function sub_0063EE70(?:HWND; ?:?):?;//0063EE70
    //function sub_0063EE98(?:HWND; ?:?):?;//0063EE98
    //function sub_0063EEC0(?:?; ?:?):?;//0063EEC0
    //function sub_0063EEEC(?:?; ?:?):?;//0063EEEC
    //function sub_0063EF18(?:HWND):?;//0063EF18
    //function sub_0063EF40(?:HWND; ?:?):?;//0063EF40
    //function sub_0063EF6C(?:HWND; ?:HTREEITEM):?;//0063EF6C
    //function sub_0063EF98(?:HWND; ?:?; ?:?):?;//0063EF98
    //function sub_0063EFC8(?:HWND; ?:?):?;//0063EFC8
    //function sub_0063EFF4(?:HWND; ?:?):?;//0063EFF4
    //function sub_0063F020(?:HWND; ?:?):?;//0063F020
    //function sub_0063F04C(?:?; ?:Integer):?;//0063F04C
    //function sub_0063F078(?:HWND; ?:?):?;//0063F078
    //function sub_0063F0A4(?:HWND; ?:?):?;//0063F0A4
    //function sub_0063F0D0(?:HWND; ?:?; ?:?):?;//0063F0D0
    //function sub_0063F100(?:?; ?:?):?;//0063F100
    //function sub_0063F12C(?:HWND; ?:?; ?:?):?;//0063F12C
    //function sub_0063F15C(?:?; ?:Integer):?;//0063F15C
    function DateTime_SetSystemTime(hdp:HWND; gd:DWORD; const pst:TSystemTime):BOOL;//0063F188
    //function sub_0063F1B8(?:HWND; ?:?; ?:?):?;//0063F1B8
    //function sub_0063F1E8(?:HWND; ?:?; ?:?):?;//0063F1E8
    //function sub_0063F218(?:HWND):?;//0063F218
    procedure Finalization;//0063F240

implementation

//0063E18C
procedure CommCtrl;
begin
{*
 0063E18C    sub         dword ptr ds:[6ECF70],1
 0063E193    ret
*}
end;

//0063E194
procedure sub_0063E194;
begin
{*
 0063E194    push        ebp
 0063E195    mov         ebp,esp
 0063E197    cmp         dword ptr ds:[6ECF78],0;gvar_006ECF78:HMODULE
>0063E19E    jne         0063E1CD
 0063E1A0    push        63E1D0;'comctl32.dll'
 0063E1A5    call        KERNEL32.GetModuleHandleA
 0063E1AA    mov         [006ECF78],eax;gvar_006ECF78:HMODULE
 0063E1AF    cmp         dword ptr ds:[6ECF78],0;gvar_006ECF78:HMODULE
>0063E1B6    je          0063E1CD
 0063E1B8    push        63E1E0
 0063E1BD    mov         eax,[006ECF78];0x0 gvar_006ECF78:HMODULE
 0063E1C2    push        eax
 0063E1C3    call        KERNEL32.GetProcAddress
 0063E1C8    mov         [006ECF7C],eax;gvar_006ECF7C
 0063E1CD    pop         ebp
 0063E1CE    ret
*}
end;

//0063E1F8
{*function sub_0063E1F8(?:?):?;
begin
 0063E1F8    push        ebp
 0063E1F9    mov         ebp,esp
 0063E1FB    add         esp,0FFFFFFF8
 0063E1FE    mov         dword ptr [ebp-4],eax
 0063E201    cmp         dword ptr ds:[6ECF78],0;gvar_006ECF78:HMODULE
>0063E208    jne         0063E20F
 0063E20A    call        0063E194
 0063E20F    cmp         dword ptr ds:[6ECF7C],0;gvar_006ECF7C
>0063E216    je          0063E226
 0063E218    mov         eax,dword ptr [ebp-4]
 0063E21B    push        eax
 0063E21C    call        dword ptr ds:[6ECF7C]
 0063E222    test        eax,eax
>0063E224    jne         0063E22A
 0063E226    xor         eax,eax
>0063E228    jmp         0063E22C
 0063E22A    mov         al,1
 0063E22C    neg         al
 0063E22E    sbb         eax,eax
 0063E230    mov         dword ptr [ebp-8],eax
 0063E233    mov         eax,dword ptr [ebp-8]
 0063E236    pop         ecx
 0063E237    pop         ecx
 0063E238    pop         ebp
 0063E239    ret
end;*}

//0063E23C
{*function sub_0063E23C(?:THandle; ?:?):?;
begin
 0063E23C    push        ebp
 0063E23D    mov         ebp,esp
 0063E23F    add         esp,0FFFFFFF4
 0063E242    mov         dword ptr [ebp-8],edx
 0063E245    mov         dword ptr [ebp-4],eax
 0063E248    mov         eax,dword ptr [ebp-8]
 0063E24B    push        eax
 0063E24C    push        0FF
 0063E24E    mov         eax,dword ptr [ebp-4]
 0063E251    push        eax
 0063E252    call        COMCTL32.ImageList_ReplaceIcon
 0063E257    mov         dword ptr [ebp-0C],eax
 0063E25A    mov         eax,dword ptr [ebp-0C]
 0063E25D    mov         esp,ebp
 0063E25F    pop         ebp
 0063E260    ret
end;*}

//0063E264
{*function sub_0063E264(?:?):?;
begin
 0063E264    push        ebp
 0063E265    mov         ebp,esp
 0063E267    add         esp,0FFFFFFF8
 0063E26A    mov         dword ptr [ebp-4],eax
 0063E26D    mov         eax,dword ptr [ebp-4]
 0063E270    shl         eax,8
 0063E273    mov         dword ptr [ebp-8],eax
 0063E276    mov         eax,dword ptr [ebp-8]
 0063E279    pop         ecx
 0063E27A    pop         ecx
 0063E27B    pop         ebp
 0063E27C    ret
end;*}

//0063E280
{*function sub_0063E280(?:HWND; ?:?; ?:?):?;
begin
 0063E280    push        ebp
 0063E281    mov         ebp,esp
 0063E283    add         esp,0FFFFFFF0
 0063E286    mov         dword ptr [ebp-0C],ecx
 0063E289    mov         dword ptr [ebp-8],edx
 0063E28C    mov         dword ptr [ebp-4],eax
 0063E28F    mov         eax,dword ptr [ebp-0C]
 0063E292    push        eax
 0063E293    mov         eax,dword ptr [ebp-8]
 0063E296    push        eax
 0063E297    push        1203
 0063E29C    mov         eax,dword ptr [ebp-4]
 0063E29F    push        eax
 0063E2A0    call        USER32.SendMessageA
 0063E2A5    mov         dword ptr [ebp-10],eax
 0063E2A8    mov         eax,dword ptr [ebp-10]
 0063E2AB    mov         esp,ebp
 0063E2AD    pop         ebp
 0063E2AE    ret
end;*}

//0063E2B0
{*function sub_0063E2B0(?:HWND; ?:?):?;
begin
 0063E2B0    push        ebp
 0063E2B1    mov         ebp,esp
 0063E2B3    add         esp,0FFFFFFF4
 0063E2B6    mov         dword ptr [ebp-8],edx
 0063E2B9    mov         dword ptr [ebp-4],eax
 0063E2BC    mov         eax,dword ptr [ebp-8]
 0063E2BF    push        eax
 0063E2C0    push        0
 0063E2C2    push        1208
 0063E2C7    mov         eax,dword ptr [ebp-4]
 0063E2CA    push        eax
 0063E2CB    call        USER32.SendMessageA
 0063E2D0    mov         dword ptr [ebp-0C],eax
 0063E2D3    mov         eax,dword ptr [ebp-0C]
 0063E2D6    mov         esp,ebp
 0063E2D8    pop         ebp
 0063E2D9    ret
end;*}

//0063E2DC
{*function sub_0063E2DC(?:?; ?:?; ?:?):?;
begin
 0063E2DC    push        ebp
 0063E2DD    mov         ebp,esp
 0063E2DF    add         esp,0FFFFFFF0
 0063E2E2    mov         dword ptr [ebp-0C],ecx
 0063E2E5    mov         dword ptr [ebp-8],edx
 0063E2E8    mov         dword ptr [ebp-4],eax
 0063E2EB    mov         eax,dword ptr [ebp-0C]
 0063E2EE    push        eax
 0063E2EF    mov         eax,dword ptr [ebp-8]
 0063E2F2    push        eax
 0063E2F3    push        1212
 0063E2F8    mov         eax,dword ptr [ebp-4]
 0063E2FB    push        eax
 0063E2FC    call        USER32.SendMessageA
 0063E301    mov         dword ptr [ebp-10],eax
 0063E304    mov         eax,dword ptr [ebp-10]
 0063E307    mov         esp,ebp
 0063E309    pop         ebp
 0063E30A    ret
end;*}

//0063E30C
{*function sub_0063E30C(?:HWND; ?:?):?;
begin
 0063E30C    push        ebp
 0063E30D    mov         ebp,esp
 0063E30F    add         esp,0FFFFFFF4
 0063E312    mov         dword ptr [ebp-8],edx
 0063E315    mov         dword ptr [ebp-4],eax
 0063E318    mov         eax,dword ptr [ebp-8]
 0063E31B    push        eax
 0063E31C    push        0
 0063E31E    push        1001
 0063E323    mov         eax,dword ptr [ebp-4]
 0063E326    push        eax
 0063E327    call        USER32.SendMessageA
 0063E32C    mov         dword ptr [ebp-0C],eax
 0063E32F    mov         eax,dword ptr [ebp-0C]
 0063E332    mov         esp,ebp
 0063E334    pop         ebp
 0063E335    ret
end;*}

//0063E338
{*function sub_0063E338(?:HWND; ?:?; ?:?):?;
begin
 0063E338    push        ebp
 0063E339    mov         ebp,esp
 0063E33B    add         esp,0FFFFFFF0
 0063E33E    mov         dword ptr [ebp-0C],ecx
 0063E341    mov         dword ptr [ebp-8],edx
 0063E344    mov         dword ptr [ebp-4],eax
 0063E347    mov         eax,dword ptr [ebp-8]
 0063E34A    push        eax
 0063E34B    mov         eax,dword ptr [ebp-0C]
 0063E34E    push        eax
 0063E34F    push        1003
 0063E354    mov         eax,dword ptr [ebp-4]
 0063E357    push        eax
 0063E358    call        USER32.SendMessageA
 0063E35D    mov         dword ptr [ebp-10],eax
 0063E360    mov         eax,dword ptr [ebp-10]
 0063E363    mov         esp,ebp
 0063E365    pop         ebp
 0063E366    ret
end;*}

//0063E368
{*function sub_0063E368(?:?):?;
begin
 0063E368    push        ebp
 0063E369    mov         ebp,esp
 0063E36B    add         esp,0FFFFFFF8
 0063E36E    mov         dword ptr [ebp-4],eax
 0063E371    push        0
 0063E373    push        0
 0063E375    push        1004
 0063E37A    mov         eax,dword ptr [ebp-4]
 0063E37D    push        eax
 0063E37E    call        USER32.SendMessageA
 0063E383    mov         dword ptr [ebp-8],eax
 0063E386    mov         eax,dword ptr [ebp-8]
 0063E389    pop         ecx
 0063E38A    pop         ecx
 0063E38B    pop         ebp
 0063E38C    ret
end;*}

//0063E390
{*function sub_0063E390(?:?):?;
begin
 0063E390    push        ebp
 0063E391    mov         ebp,esp
 0063E393    add         esp,0FFFFFFF8
 0063E396    mov         dword ptr [ebp-4],eax
 0063E399    mov         eax,dword ptr [ebp-4]
 0063E39C    shl         eax,0C
 0063E39F    mov         dword ptr [ebp-8],eax
 0063E3A2    mov         eax,dword ptr [ebp-8]
 0063E3A5    pop         ecx
 0063E3A6    pop         ecx
 0063E3A7    pop         ebp
 0063E3A8    ret
end;*}

//0063E3AC
{*function sub_0063E3AC(?:?; ?:Byte):?;
begin
 0063E3AC    push        ebp
 0063E3AD    mov         ebp,esp
 0063E3AF    add         esp,0FFFFFFF4
 0063E3B2    mov         dword ptr [ebp-8],edx
 0063E3B5    mov         dword ptr [ebp-4],eax
 0063E3B8    mov         eax,dword ptr [ebp-8]
 0063E3BB    push        eax
 0063E3BC    push        0
 0063E3BE    push        1005
 0063E3C3    mov         eax,dword ptr [ebp-4]
 0063E3C6    push        eax
 0063E3C7    call        USER32.SendMessageA
 0063E3CC    mov         dword ptr [ebp-0C],eax
 0063E3CF    mov         eax,dword ptr [ebp-0C]
 0063E3D2    mov         esp,ebp
 0063E3D4    pop         ebp
 0063E3D5    ret
end;*}

//0063E3D8
{*function sub_0063E3D8(?:?; ?:?):?;
begin
 0063E3D8    push        ebp
 0063E3D9    mov         ebp,esp
 0063E3DB    add         esp,0FFFFFFF4
 0063E3DE    mov         dword ptr [ebp-8],edx
 0063E3E1    mov         dword ptr [ebp-4],eax
 0063E3E4    mov         eax,dword ptr [ebp-8]
 0063E3E7    push        eax
 0063E3E8    push        0
 0063E3EA    push        1006
 0063E3EF    mov         eax,dword ptr [ebp-4]
 0063E3F2    push        eax
 0063E3F3    call        USER32.SendMessageA
 0063E3F8    mov         dword ptr [ebp-0C],eax
 0063E3FB    mov         eax,dword ptr [ebp-0C]
 0063E3FE    mov         esp,ebp
 0063E400    pop         ebp
 0063E401    ret
end;*}

//0063E404
{*function sub_0063E404(?:?; ?:?):?;
begin
 0063E404    push        ebp
 0063E405    mov         ebp,esp
 0063E407    add         esp,0FFFFFFF4
 0063E40A    mov         dword ptr [ebp-8],edx
 0063E40D    mov         dword ptr [ebp-4],eax
 0063E410    mov         eax,dword ptr [ebp-8]
 0063E413    push        eax
 0063E414    push        0
 0063E416    push        1007
 0063E41B    mov         eax,dword ptr [ebp-4]
 0063E41E    push        eax
 0063E41F    call        USER32.SendMessageA
 0063E424    mov         dword ptr [ebp-0C],eax
 0063E427    mov         eax,dword ptr [ebp-0C]
 0063E42A    mov         esp,ebp
 0063E42C    pop         ebp
 0063E42D    ret
end;*}

//0063E430
{*function sub_0063E430(?:?; ?:?):?;
begin
 0063E430    push        ebp
 0063E431    mov         ebp,esp
 0063E433    add         esp,0FFFFFFF4
 0063E436    mov         dword ptr [ebp-8],edx
 0063E439    mov         dword ptr [ebp-4],eax
 0063E43C    push        0
 0063E43E    mov         eax,dword ptr [ebp-8]
 0063E441    push        eax
 0063E442    push        1008
 0063E447    mov         eax,dword ptr [ebp-4]
 0063E44A    push        eax
 0063E44B    call        USER32.SendMessageA
 0063E450    mov         dword ptr [ebp-0C],eax
 0063E453    mov         eax,dword ptr [ebp-0C]
 0063E456    mov         esp,ebp
 0063E458    pop         ebp
 0063E459    ret
end;*}

//0063E45C
{*function sub_0063E45C(?:?):?;
begin
 0063E45C    push        ebp
 0063E45D    mov         ebp,esp
 0063E45F    add         esp,0FFFFFFF8
 0063E462    mov         dword ptr [ebp-4],eax
 0063E465    push        0
 0063E467    push        0
 0063E469    push        1009
 0063E46E    mov         eax,dword ptr [ebp-4]
 0063E471    push        eax
 0063E472    call        USER32.SendMessageA
 0063E477    mov         dword ptr [ebp-8],eax
 0063E47A    mov         eax,dword ptr [ebp-8]
 0063E47D    pop         ecx
 0063E47E    pop         ecx
 0063E47F    pop         ebp
 0063E480    ret
end;*}

//0063E484
{*function sub_0063E484(?:HWND; ?:?; ?:?):?;
begin
 0063E484    push        ebp
 0063E485    mov         ebp,esp
 0063E487    add         esp,0FFFFFFF0
 0063E48A    mov         dword ptr [ebp-0C],ecx
 0063E48D    mov         dword ptr [ebp-8],edx
 0063E490    mov         dword ptr [ebp-4],eax
 0063E493    xor         edx,edx
 0063E495    mov         ax,word ptr [ebp-0C]
 0063E499    call        0063CEE0
 0063E49E    push        eax
 0063E49F    mov         eax,dword ptr [ebp-8]
 0063E4A2    push        eax
 0063E4A3    push        100C
 0063E4A8    mov         eax,dword ptr [ebp-4]
 0063E4AB    push        eax
 0063E4AC    call        USER32.SendMessageA
 0063E4B1    mov         dword ptr [ebp-10],eax
 0063E4B4    mov         eax,dword ptr [ebp-10]
 0063E4B7    mov         esp,ebp
 0063E4B9    pop         ebp
 0063E4BA    ret
end;*}

//0063E4BC
{*function sub_0063E4BC(?:HWND; ?:?; ?:?):?;
begin
 0063E4BC    push        ebp
 0063E4BD    mov         ebp,esp
 0063E4BF    add         esp,0FFFFFFF0
 0063E4C2    mov         dword ptr [ebp-0C],ecx
 0063E4C5    mov         dword ptr [ebp-8],edx
 0063E4C8    mov         dword ptr [ebp-4],eax
 0063E4CB    mov         eax,dword ptr [ebp-0C]
 0063E4CE    push        eax
 0063E4CF    mov         eax,dword ptr [ebp-8]
 0063E4D2    push        eax
 0063E4D3    push        100D
 0063E4D8    mov         eax,dword ptr [ebp-4]
 0063E4DB    push        eax
 0063E4DC    call        USER32.SendMessageA
 0063E4E1    mov         dword ptr [ebp-10],eax
 0063E4E4    mov         eax,dword ptr [ebp-10]
 0063E4E7    mov         esp,ebp
 0063E4E9    pop         ebp
 0063E4EA    ret
end;*}

//0063E4EC
{*function sub_0063E4EC(?:?; ?:?; ?:?; ?:?):?;
begin
 0063E4EC    push        ebp
 0063E4ED    mov         ebp,esp
 0063E4EF    add         esp,0FFFFFFF0
 0063E4F2    mov         dword ptr [ebp-0C],ecx
 0063E4F5    mov         dword ptr [ebp-8],edx
 0063E4F8    mov         dword ptr [ebp-4],eax
 0063E4FB    mov         eax,dword ptr [ebp-0C]
 0063E4FE    test        eax,eax
>0063E500    je          0063E525
 0063E502    mov         eax,dword ptr [ebp-0C]
 0063E505    mov         edx,dword ptr [ebp+8]
 0063E508    mov         dword ptr [eax],edx
 0063E50A    mov         eax,dword ptr [ebp-0C]
 0063E50D    push        eax
 0063E50E    mov         eax,dword ptr [ebp-8]
 0063E511    push        eax
 0063E512    push        100E
 0063E517    mov         eax,dword ptr [ebp-4]
 0063E51A    push        eax
 0063E51B    call        USER32.SendMessageA
 0063E520    mov         dword ptr [ebp-10],eax
>0063E523    jmp         0063E53C
 0063E525    push        0
 0063E527    mov         eax,dword ptr [ebp-8]
 0063E52A    push        eax
 0063E52B    push        100E
 0063E530    mov         eax,dword ptr [ebp-4]
 0063E533    push        eax
 0063E534    call        USER32.SendMessageA
 0063E539    mov         dword ptr [ebp-10],eax
 0063E53C    mov         eax,dword ptr [ebp-10]
 0063E53F    mov         esp,ebp
 0063E541    pop         ebp
 0063E542    ret         4
end;*}

//0063E548
{*function sub_0063E548(?:HWND; ?:?):?;
begin
 0063E548    push        ebp
 0063E549    mov         ebp,esp
 0063E54B    add         esp,0FFFFFFF4
 0063E54E    mov         dword ptr [ebp-8],edx
 0063E551    mov         dword ptr [ebp-4],eax
 0063E554    mov         eax,dword ptr [ebp-8]
 0063E557    push        eax
 0063E558    push        0
 0063E55A    push        1012
 0063E55F    mov         eax,dword ptr [ebp-4]
 0063E562    push        eax
 0063E563    call        USER32.SendMessageA
 0063E568    mov         dword ptr [ebp-0C],eax
 0063E56B    mov         eax,dword ptr [ebp-0C]
 0063E56E    mov         esp,ebp
 0063E570    pop         ebp
 0063E571    ret
end;*}

//0063E574
{*function sub_0063E574(?:HWND; ?:?; ?:?):?;
begin
 0063E574    push        ebp
 0063E575    mov         ebp,esp
 0063E577    add         esp,0FFFFFFF0
 0063E57A    mov         dword ptr [ebp-0C],ecx
 0063E57D    mov         dword ptr [ebp-8],edx
 0063E580    mov         dword ptr [ebp-4],eax
 0063E583    mov         eax,dword ptr [ebp-0C]
 0063E586    push        eax
 0063E587    mov         eax,dword ptr [ebp-8]
 0063E58A    push        eax
 0063E58B    push        1015
 0063E590    mov         eax,dword ptr [ebp-4]
 0063E593    push        eax
 0063E594    call        USER32.SendMessageA
 0063E599    mov         dword ptr [ebp-10],eax
 0063E59C    mov         eax,dword ptr [ebp-10]
 0063E59F    mov         esp,ebp
 0063E5A1    pop         ebp
 0063E5A2    ret
end;*}

//0063E5A4
{*function sub_0063E5A4(?:HWND; ?:?):?;
begin
 0063E5A4    push        ebp
 0063E5A5    mov         ebp,esp
 0063E5A7    add         esp,0FFFFFFF4
 0063E5AA    mov         dword ptr [ebp-8],edx
 0063E5AD    mov         dword ptr [ebp-4],eax
 0063E5B0    push        0
 0063E5B2    mov         eax,dword ptr [ebp-8]
 0063E5B5    push        eax
 0063E5B6    push        1016
 0063E5BB    mov         eax,dword ptr [ebp-4]
 0063E5BE    push        eax
 0063E5BF    call        USER32.SendMessageA
 0063E5C4    mov         dword ptr [ebp-0C],eax
 0063E5C7    mov         eax,dword ptr [ebp-0C]
 0063E5CA    mov         esp,ebp
 0063E5CC    pop         ebp
 0063E5CD    ret
end;*}

//0063E5D0
{*function sub_0063E5D0(?:HWND):?;
begin
 0063E5D0    push        ebp
 0063E5D1    mov         ebp,esp
 0063E5D3    add         esp,0FFFFFFF8
 0063E5D6    mov         dword ptr [ebp-4],eax
 0063E5D9    push        0
 0063E5DB    push        0
 0063E5DD    push        1018
 0063E5E2    mov         eax,dword ptr [ebp-4]
 0063E5E5    push        eax
 0063E5E6    call        USER32.SendMessageA
 0063E5EB    mov         dword ptr [ebp-8],eax
 0063E5EE    mov         eax,dword ptr [ebp-8]
 0063E5F1    pop         ecx
 0063E5F2    pop         ecx
 0063E5F3    pop         ebp
 0063E5F4    ret
end;*}

//0063E5F8
{*function sub_0063E5F8(?:HWND; ?:?; ?:?):?;
begin
 0063E5F8    push        ebp
 0063E5F9    mov         ebp,esp
 0063E5FB    add         esp,0FFFFFFF0
 0063E5FE    mov         dword ptr [ebp-0C],ecx
 0063E601    mov         dword ptr [ebp-8],edx
 0063E604    mov         dword ptr [ebp-4],eax
 0063E607    mov         eax,dword ptr [ebp-0C]
 0063E60A    push        eax
 0063E60B    mov         eax,dword ptr [ebp-8]
 0063E60E    push        eax
 0063E60F    push        101A
 0063E614    mov         eax,dword ptr [ebp-4]
 0063E617    push        eax
 0063E618    call        USER32.SendMessageA
 0063E61D    mov         dword ptr [ebp-10],eax
 0063E620    mov         eax,dword ptr [ebp-10]
 0063E623    mov         esp,ebp
 0063E625    pop         ebp
 0063E626    ret
end;*}

//0063E628
{*function sub_0063E628(?:HWND; ?:?; ?:?):?;
begin
 0063E628    push        ebp
 0063E629    mov         ebp,esp
 0063E62B    add         esp,0FFFFFFF0
 0063E62E    mov         dword ptr [ebp-0C],ecx
 0063E631    mov         dword ptr [ebp-8],edx
 0063E634    mov         dword ptr [ebp-4],eax
 0063E637    mov         eax,dword ptr [ebp-0C]
 0063E63A    push        eax
 0063E63B    mov         eax,dword ptr [ebp-8]
 0063E63E    push        eax
 0063E63F    push        101B
 0063E644    mov         eax,dword ptr [ebp-4]
 0063E647    push        eax
 0063E648    call        USER32.SendMessageA
 0063E64D    mov         dword ptr [ebp-10],eax
 0063E650    mov         eax,dword ptr [ebp-10]
 0063E653    mov         esp,ebp
 0063E655    pop         ebp
 0063E656    ret
end;*}

//0063E658
{*function sub_0063E658(?:HWND; ?:?):?;
begin
 0063E658    push        ebp
 0063E659    mov         ebp,esp
 0063E65B    add         esp,0FFFFFFF4
 0063E65E    mov         dword ptr [ebp-8],edx
 0063E661    mov         dword ptr [ebp-4],eax
 0063E664    push        0
 0063E666    mov         eax,dword ptr [ebp-8]
 0063E669    push        eax
 0063E66A    push        101C
 0063E66F    mov         eax,dword ptr [ebp-4]
 0063E672    push        eax
 0063E673    call        USER32.SendMessageA
 0063E678    mov         dword ptr [ebp-0C],eax
 0063E67B    mov         eax,dword ptr [ebp-0C]
 0063E67E    mov         esp,ebp
 0063E680    pop         ebp
 0063E681    ret
end;*}

//0063E684
{*function sub_0063E684(?:HWND; ?:?):?;
begin
 0063E684    push        ebp
 0063E685    mov         ebp,esp
 0063E687    add         esp,0FFFFFFF4
 0063E68A    mov         dword ptr [ebp-8],edx
 0063E68D    mov         dword ptr [ebp-4],eax
 0063E690    push        0
 0063E692    mov         eax,dword ptr [ebp-8]
 0063E695    push        eax
 0063E696    push        101D
 0063E69B    mov         eax,dword ptr [ebp-4]
 0063E69E    push        eax
 0063E69F    call        USER32.SendMessageA
 0063E6A4    mov         dword ptr [ebp-0C],eax
 0063E6A7    mov         eax,dword ptr [ebp-0C]
 0063E6AA    mov         esp,ebp
 0063E6AC    pop         ebp
 0063E6AD    ret
end;*}

//0063E6B0
{*function sub_0063E6B0(?:HWND; ?:?; ?:?):?;
begin
 0063E6B0    push        ebp
 0063E6B1    mov         ebp,esp
 0063E6B3    add         esp,0FFFFFFF0
 0063E6B6    mov         dword ptr [ebp-0C],ecx
 0063E6B9    mov         dword ptr [ebp-8],edx
 0063E6BC    mov         dword ptr [ebp-4],eax
 0063E6BF    xor         edx,edx
 0063E6C1    mov         ax,word ptr [ebp-0C]
 0063E6C5    call        0063CEE0
 0063E6CA    push        eax
 0063E6CB    mov         eax,dword ptr [ebp-8]
 0063E6CE    push        eax
 0063E6CF    push        101E
 0063E6D4    mov         eax,dword ptr [ebp-4]
 0063E6D7    push        eax
 0063E6D8    call        USER32.SendMessageA
 0063E6DD    mov         dword ptr [ebp-10],eax
 0063E6E0    mov         eax,dword ptr [ebp-10]
 0063E6E3    mov         esp,ebp
 0063E6E5    pop         ebp
 0063E6E6    ret
end;*}

//0063E6E8
{*function sub_0063E6E8(?:HWND; ?:?; ?:?):?;
begin
 0063E6E8    push        ebp
 0063E6E9    mov         ebp,esp
 0063E6EB    add         esp,0FFFFFFF0
 0063E6EE    mov         dword ptr [ebp-0C],ecx
 0063E6F1    mov         dword ptr [ebp-8],edx
 0063E6F4    mov         dword ptr [ebp-4],eax
 0063E6F7    mov         eax,dword ptr [ebp-0C]
 0063E6FA    push        eax
 0063E6FB    mov         eax,dword ptr [ebp-8]
 0063E6FE    push        eax
 0063E6FF    push        1021
 0063E704    mov         eax,dword ptr [ebp-4]
 0063E707    push        eax
 0063E708    call        USER32.SendMessageA
 0063E70D    mov         dword ptr [ebp-10],eax
 0063E710    mov         eax,dword ptr [ebp-10]
 0063E713    mov         esp,ebp
 0063E715    pop         ebp
 0063E716    ret
end;*}

//0063E718
{*function sub_0063E718(?:HWND; ?:?):?;
begin
 0063E718    push        ebp
 0063E719    mov         ebp,esp
 0063E71B    add         esp,0FFFFFFF4
 0063E71E    mov         dword ptr [ebp-8],edx
 0063E721    mov         dword ptr [ebp-4],eax
 0063E724    mov         eax,dword ptr [ebp-8]
 0063E727    push        eax
 0063E728    push        0
 0063E72A    push        1024
 0063E72F    mov         eax,dword ptr [ebp-4]
 0063E732    push        eax
 0063E733    call        USER32.SendMessageA
 0063E738    mov         dword ptr [ebp-0C],eax
 0063E73B    mov         eax,dword ptr [ebp-0C]
 0063E73E    mov         esp,ebp
 0063E740    pop         ebp
 0063E741    ret
end;*}

//0063E744
{*function sub_0063E744(?:HWND; ?:?):?;
begin
 0063E744    push        ebp
 0063E745    mov         ebp,esp
 0063E747    add         esp,0FFFFFFF4
 0063E74A    mov         dword ptr [ebp-8],edx
 0063E74D    mov         dword ptr [ebp-4],eax
 0063E750    mov         eax,dword ptr [ebp-8]
 0063E753    push        eax
 0063E754    push        0
 0063E756    push        1026
 0063E75B    mov         eax,dword ptr [ebp-4]
 0063E75E    push        eax
 0063E75F    call        USER32.SendMessageA
 0063E764    mov         dword ptr [ebp-0C],eax
 0063E767    mov         eax,dword ptr [ebp-0C]
 0063E76A    mov         esp,ebp
 0063E76C    pop         ebp
 0063E76D    ret
end;*}

//0063E770
{*function sub_0063E770(?:HWND):?;
begin
 0063E770    push        ebp
 0063E771    mov         ebp,esp
 0063E773    add         esp,0FFFFFFF8
 0063E776    mov         dword ptr [ebp-4],eax
 0063E779    push        0
 0063E77B    push        0
 0063E77D    push        1027
 0063E782    mov         eax,dword ptr [ebp-4]
 0063E785    push        eax
 0063E786    call        USER32.SendMessageA
 0063E78B    mov         dword ptr [ebp-8],eax
 0063E78E    mov         eax,dword ptr [ebp-8]
 0063E791    pop         ecx
 0063E792    pop         ecx
 0063E793    pop         ebp
 0063E794    ret
end;*}

//0063E798
{*function sub_0063E798(?:HWND; ?:?):?;
begin
 0063E798    push        ebp
 0063E799    mov         ebp,esp
 0063E79B    add         esp,0FFFFFFF4
 0063E79E    mov         dword ptr [ebp-8],edx
 0063E7A1    mov         dword ptr [ebp-4],eax
 0063E7A4    mov         eax,dword ptr [ebp-8]
 0063E7A7    push        eax
 0063E7A8    push        0
 0063E7AA    push        1029
 0063E7AF    mov         eax,dword ptr [ebp-4]
 0063E7B2    push        eax
 0063E7B3    call        USER32.SendMessageA
 0063E7B8    mov         dword ptr [ebp-0C],eax
 0063E7BB    mov         eax,dword ptr [ebp-0C]
 0063E7BE    mov         esp,ebp
 0063E7C0    pop         ebp
 0063E7C1    ret
end;*}

//0063E7C4
{*function sub_0063E7C4(?:?; ?:?):?;
begin
 0063E7C4    push        ebp
 0063E7C5    mov         ebp,esp
 0063E7C7    add         esp,0FFFFFFF4
 0063E7CA    mov         dword ptr [ebp-8],edx
 0063E7CD    mov         dword ptr [ebp-4],eax
 0063E7D0    push        0
 0063E7D2    mov         eax,dword ptr [ebp-8]
 0063E7D5    push        eax
 0063E7D6    push        102A
 0063E7DB    mov         eax,dword ptr [ebp-4]
 0063E7DE    push        eax
 0063E7DF    call        USER32.SendMessageA
 0063E7E4    test        eax,eax
 0063E7E6    setne       al
 0063E7E9    neg         al
 0063E7EB    sbb         eax,eax
 0063E7ED    mov         dword ptr [ebp-0C],eax
 0063E7F0    mov         eax,dword ptr [ebp-0C]
 0063E7F3    mov         esp,ebp
 0063E7F5    pop         ebp
 0063E7F6    ret
end;*}

//0063E7F8
{*function sub_0063E7F8(?:?; ?:?; ?:?; ?:?):?;
begin
 0063E7F8    push        ebp
 0063E7F9    mov         ebp,esp
 0063E7FB    add         esp,0FFFFFFC8
 0063E7FE    mov         dword ptr [ebp-0C],ecx
 0063E801    mov         dword ptr [ebp-8],edx
 0063E804    mov         dword ptr [ebp-4],eax
 0063E807    mov         eax,dword ptr [ebp+8]
 0063E80A    mov         dword ptr [ebp-28],eax
 0063E80D    mov         eax,dword ptr [ebp-0C]
 0063E810    mov         dword ptr [ebp-2C],eax
 0063E813    lea         eax,[ebp-38]
 0063E816    push        eax
 0063E817    mov         eax,dword ptr [ebp-8]
 0063E81A    push        eax
 0063E81B    push        102B
 0063E820    mov         eax,dword ptr [ebp-4]
 0063E823    push        eax
 0063E824    call        USER32.SendMessageA
 0063E829    mov         dword ptr [ebp-10],eax
 0063E82C    mov         eax,dword ptr [ebp-10]
 0063E82F    mov         esp,ebp
 0063E831    pop         ebp
 0063E832    ret         4
end;*}

//0063E838
{*function sub_0063E838(?:?; ?:?; ?:?):?;
begin
 0063E838    push        ebp
 0063E839    mov         ebp,esp
 0063E83B    add         esp,0FFFFFFF0
 0063E83E    mov         dword ptr [ebp-0C],ecx
 0063E841    mov         dword ptr [ebp-8],edx
 0063E844    mov         dword ptr [ebp-4],eax
 0063E847    mov         eax,dword ptr [ebp-0C]
 0063E84A    push        eax
 0063E84B    mov         eax,dword ptr [ebp-8]
 0063E84E    push        eax
 0063E84F    push        102C
 0063E854    mov         eax,dword ptr [ebp-4]
 0063E857    push        eax
 0063E858    call        USER32.SendMessageA
 0063E85D    mov         dword ptr [ebp-10],eax
 0063E860    mov         eax,dword ptr [ebp-10]
 0063E863    mov         esp,ebp
 0063E865    pop         ebp
 0063E866    ret
end;*}

//0063E868
{*function sub_0063E868(?:HWND; ?:?):?;
begin
 0063E868    push        ebp
 0063E869    mov         ebp,esp
 0063E86B    add         esp,0FFFFFFF4
 0063E86E    mov         dword ptr [ebp-8],edx
 0063E871    mov         dword ptr [ebp-4],eax
 0063E874    push        0F000
 0063E879    mov         eax,dword ptr [ebp-8]
 0063E87C    push        eax
 0063E87D    push        102C
 0063E882    mov         eax,dword ptr [ebp-4]
 0063E885    push        eax
 0063E886    call        USER32.SendMessageA
 0063E88B    shr         eax,0C
 0063E88E    dec         eax
 0063E88F    mov         dword ptr [ebp-0C],eax
 0063E892    mov         eax,dword ptr [ebp-0C]
 0063E895    mov         esp,ebp
 0063E897    pop         ebp
 0063E898    ret
end;*}

//0063E89C
{*procedure sub_0063E89C(?:HWND; ?:?; ?:?);
begin
 0063E89C    push        ebp
 0063E89D    mov         ebp,esp
 0063E89F    add         esp,0FFFFFFCC
 0063E8A2    mov         byte ptr [ebp-9],cl
 0063E8A5    mov         dword ptr [ebp-8],edx
 0063E8A8    mov         dword ptr [ebp-4],eax
 0063E8AB    mov         dword ptr [ebp-21],0F000
 0063E8B2    mov         al,byte ptr [ebp-9]
 0063E8B5    and         eax,1
 0063E8B8    inc         eax
 0063E8B9    shl         eax,0C
 0063E8BC    mov         dword ptr [ebp-25],eax
 0063E8BF    lea         eax,[ebp-31]
 0063E8C2    push        eax
 0063E8C3    mov         eax,dword ptr [ebp-8]
 0063E8C6    push        eax
 0063E8C7    push        102B
 0063E8CC    mov         eax,dword ptr [ebp-4]
 0063E8CF    push        eax
 0063E8D0    call        USER32.SendMessageA
 0063E8D5    mov         esp,ebp
 0063E8D7    pop         ebp
 0063E8D8    ret
end;*}

//0063E8DC
{*function sub_0063E8DC(?:?; ?:?; ?:?; ?:?):?;
begin
 0063E8DC    push        ebp
 0063E8DD    mov         ebp,esp
 0063E8DF    add         esp,0FFFFFFC8
 0063E8E2    mov         dword ptr [ebp-0C],ecx
 0063E8E5    mov         dword ptr [ebp-8],edx
 0063E8E8    mov         dword ptr [ebp-4],eax
 0063E8EB    mov         eax,dword ptr [ebp-0C]
 0063E8EE    mov         dword ptr [ebp-30],eax
 0063E8F1    mov         eax,dword ptr [ebp+8]
 0063E8F4    mov         dword ptr [ebp-24],eax
 0063E8F7    lea         eax,[ebp-38]
 0063E8FA    push        eax
 0063E8FB    mov         eax,dword ptr [ebp-8]
 0063E8FE    push        eax
 0063E8FF    push        102E
 0063E904    mov         eax,dword ptr [ebp-4]
 0063E907    push        eax
 0063E908    call        USER32.SendMessageA
 0063E90D    mov         dword ptr [ebp-10],eax
 0063E910    mov         eax,dword ptr [ebp-10]
 0063E913    mov         esp,ebp
 0063E915    pop         ebp
 0063E916    ret         4
end;*}

//0063E91C
procedure sub_0063E91C(?:HWND; ?:Integer);
begin
{*
 0063E91C    push        ebp
 0063E91D    mov         ebp,esp
 0063E91F    add         esp,0FFFFFFF8
 0063E922    mov         dword ptr [ebp-8],edx
 0063E925    mov         dword ptr [ebp-4],eax
 0063E928    push        0
 0063E92A    mov         eax,dword ptr [ebp-8]
 0063E92D    push        eax
 0063E92E    push        102F
 0063E933    mov         eax,dword ptr [ebp-4]
 0063E936    push        eax
 0063E937    call        USER32.SendMessageA
 0063E93C    pop         ecx
 0063E93D    pop         ecx
 0063E93E    pop         ebp
 0063E93F    ret
*}
end;

//0063E940
{*procedure sub_0063E940(?:?; ?:?; ?:?);
begin
 0063E940    push        ebp
 0063E941    mov         ebp,esp
 0063E943    add         esp,0FFFFFFF4
 0063E946    mov         dword ptr [ebp-0C],ecx
 0063E949    mov         dword ptr [ebp-8],edx
 0063E94C    mov         dword ptr [ebp-4],eax
 0063E94F    mov         eax,dword ptr [ebp-0C]
 0063E952    push        eax
 0063E953    mov         eax,dword ptr [ebp-8]
 0063E956    push        eax
 0063E957    push        102F
 0063E95C    mov         eax,dword ptr [ebp-4]
 0063E95F    push        eax
 0063E960    call        USER32.SendMessageA
 0063E965    mov         esp,ebp
 0063E967    pop         ebp
 0063E968    ret
end;*}

//0063E96C
{*function sub_0063E96C(?:HWND; ?:?; ?:?):?;
begin
 0063E96C    push        ebp
 0063E96D    mov         ebp,esp
 0063E96F    add         esp,0FFFFFFF0
 0063E972    mov         dword ptr [ebp-0C],ecx
 0063E975    mov         dword ptr [ebp-8],edx
 0063E978    mov         dword ptr [ebp-4],eax
 0063E97B    mov         eax,dword ptr [ebp-8]
 0063E97E    push        eax
 0063E97F    mov         eax,dword ptr [ebp-0C]
 0063E982    push        eax
 0063E983    push        1030
 0063E988    mov         eax,dword ptr [ebp-4]
 0063E98B    push        eax
 0063E98C    call        USER32.SendMessageA
 0063E991    mov         dword ptr [ebp-10],eax
 0063E994    mov         eax,dword ptr [ebp-10]
 0063E997    mov         esp,ebp
 0063E999    pop         ebp
 0063E99A    ret
end;*}

//0063E99C
{*function sub_0063E99C(?:HWND):?;
begin
 0063E99C    push        ebp
 0063E99D    mov         ebp,esp
 0063E99F    add         esp,0FFFFFFF8
 0063E9A2    mov         dword ptr [ebp-4],eax
 0063E9A5    push        0
 0063E9A7    push        0
 0063E9A9    push        1032
 0063E9AE    mov         eax,dword ptr [ebp-4]
 0063E9B1    push        eax
 0063E9B2    call        USER32.SendMessageA
 0063E9B7    mov         dword ptr [ebp-8],eax
 0063E9BA    mov         eax,dword ptr [ebp-8]
 0063E9BD    pop         ecx
 0063E9BE    pop         ecx
 0063E9BF    pop         ebp
 0063E9C0    ret
end;*}

//0063E9C4
{*function sub_0063E9C4(?:HWND; ?:?):?;
begin
 0063E9C4    push        ebp
 0063E9C5    mov         ebp,esp
 0063E9C7    add         esp,0FFFFFFF4
 0063E9CA    mov         dword ptr [ebp-8],edx
 0063E9CD    mov         dword ptr [ebp-4],eax
 0063E9D0    mov         eax,dword ptr [ebp-8]
 0063E9D3    push        eax
 0063E9D4    push        0
 0063E9D6    push        1036
 0063E9DB    mov         eax,dword ptr [ebp-4]
 0063E9DE    push        eax
 0063E9DF    call        USER32.SendMessageA
 0063E9E4    mov         dword ptr [ebp-0C],eax
 0063E9E7    mov         eax,dword ptr [ebp-0C]
 0063E9EA    mov         esp,ebp
 0063E9EC    pop         ebp
 0063E9ED    ret
end;*}

//0063E9F0
{*function sub_0063E9F0(?:HWND; ?:?; ?:?):?;
begin
 0063E9F0    push        ebp
 0063E9F1    mov         ebp,esp
 0063E9F3    add         esp,0FFFFFFF0
 0063E9F6    mov         dword ptr [ebp-0C],ecx
 0063E9F9    mov         dword ptr [ebp-8],edx
 0063E9FC    mov         dword ptr [ebp-4],eax
 0063E9FF    mov         eax,dword ptr [ebp-0C]
 0063EA02    push        eax
 0063EA03    mov         eax,dword ptr [ebp-8]
 0063EA06    push        eax
 0063EA07    push        103A
 0063EA0C    mov         eax,dword ptr [ebp-4]
 0063EA0F    push        eax
 0063EA10    call        USER32.SendMessageA
 0063EA15    mov         dword ptr [ebp-10],eax
 0063EA18    mov         eax,dword ptr [ebp-10]
 0063EA1B    mov         esp,ebp
 0063EA1D    pop         ebp
 0063EA1E    ret
end;*}

//0063EA50
{*function sub_0063EA50(?:HWND; ?:?; ?:?):?;
begin
 0063EA50    push        ebp
 0063EA51    mov         ebp,esp
 0063EA53    add         esp,0FFFFFFF0
 0063EA56    mov         dword ptr [ebp-0C],ecx
 0063EA59    mov         dword ptr [ebp-8],edx
 0063EA5C    mov         dword ptr [ebp-4],eax
 0063EA5F    mov         eax,dword ptr [ebp-0C]
 0063EA62    push        eax
 0063EA63    mov         eax,dword ptr [ebp-8]
 0063EA66    push        eax
 0063EA67    push        1041
 0063EA6C    mov         eax,dword ptr [ebp-4]
 0063EA6F    push        eax
 0063EA70    call        USER32.SendMessageA
 0063EA75    mov         dword ptr [ebp-10],eax
 0063EA78    mov         eax,dword ptr [ebp-10]
 0063EA7B    mov         esp,ebp
 0063EA7D    pop         ebp
 0063EA7E    ret
end;*}

//0063EA80
{*function sub_0063EA80(?:HWND; ?:Integer):?;
begin
 0063EA80    push        ebp
 0063EA81    mov         ebp,esp
 0063EA83    add         esp,0FFFFFFF4
 0063EA86    mov         dword ptr [ebp-8],edx
 0063EA89    mov         dword ptr [ebp-4],eax
 0063EA8C    mov         eax,dword ptr [ebp-8]
 0063EA8F    push        eax
 0063EA90    push        0
 0063EA92    push        1047
 0063EA97    mov         eax,dword ptr [ebp-4]
 0063EA9A    push        eax
 0063EA9B    call        USER32.SendMessageA
 0063EAA0    mov         dword ptr [ebp-0C],eax
 0063EAA3    mov         eax,dword ptr [ebp-0C]
 0063EAA6    mov         esp,ebp
 0063EAA8    pop         ebp
 0063EAA9    ret
end;*}

//0063EAAC
{*function sub_0063EAAC(?:HWND):?;
begin
 0063EAAC    push        ebp
 0063EAAD    mov         ebp,esp
 0063EAAF    add         esp,0FFFFFFF8
 0063EAB2    mov         dword ptr [ebp-4],eax
 0063EAB5    push        0
 0063EAB7    push        0
 0063EAB9    push        1048
 0063EABE    mov         eax,dword ptr [ebp-4]
 0063EAC1    push        eax
 0063EAC2    call        USER32.SendMessageA
 0063EAC7    mov         dword ptr [ebp-8],eax
 0063EACA    mov         eax,dword ptr [ebp-8]
 0063EACD    pop         ecx
 0063EACE    pop         ecx
 0063EACF    pop         ebp
 0063EAD0    ret
end;*}

//0063EAD4
{*function sub_0063EAD4(?:?; ?:?):?;
begin
 0063EAD4    push        ebp
 0063EAD5    mov         ebp,esp
 0063EAD7    add         esp,0FFFFFFF4
 0063EADA    mov         dword ptr [ebp-8],edx
 0063EADD    mov         dword ptr [ebp-4],eax
 0063EAE0    mov         eax,dword ptr [ebp-8]
 0063EAE3    push        eax
 0063EAE4    push        0
 0063EAE6    push        1100
 0063EAEB    mov         eax,dword ptr [ebp-4]
 0063EAEE    push        eax
 0063EAEF    call        USER32.SendMessageA
 0063EAF4    mov         dword ptr [ebp-0C],eax
 0063EAF7    mov         eax,dword ptr [ebp-0C]
 0063EAFA    mov         esp,ebp
 0063EAFC    pop         ebp
 0063EAFD    ret
end;*}

//0063EB00
{*function sub_0063EB00(?:?; ?:HTREEITEM):?;
begin
 0063EB00    push        ebp
 0063EB01    mov         ebp,esp
 0063EB03    add         esp,0FFFFFFF4
 0063EB06    mov         dword ptr [ebp-8],edx
 0063EB09    mov         dword ptr [ebp-4],eax
 0063EB0C    mov         eax,dword ptr [ebp-8]
 0063EB0F    push        eax
 0063EB10    push        0
 0063EB12    push        1101
 0063EB17    mov         eax,dword ptr [ebp-4]
 0063EB1A    push        eax
 0063EB1B    call        USER32.SendMessageA
 0063EB20    mov         dword ptr [ebp-0C],eax
 0063EB23    mov         eax,dword ptr [ebp-0C]
 0063EB26    mov         esp,ebp
 0063EB28    pop         ebp
 0063EB29    ret
end;*}

//0063EB2C
function TreeView_DeleteAllItems(hwnd:HWND):BOOL;
begin
{*
 0063EB2C    push        ebp
 0063EB2D    mov         ebp,esp
 0063EB2F    add         esp,0FFFFFFF8
 0063EB32    mov         dword ptr [ebp-4],eax
 0063EB35    push        0FFFF0000
 0063EB3A    push        0
 0063EB3C    push        1101
 0063EB41    mov         eax,dword ptr [ebp-4]
 0063EB44    push        eax
 0063EB45    call        USER32.SendMessageA
 0063EB4A    mov         dword ptr [ebp-8],eax
 0063EB4D    mov         eax,dword ptr [ebp-8]
 0063EB50    pop         ecx
 0063EB51    pop         ecx
 0063EB52    pop         ebp
 0063EB53    ret
*}
end;

//0063EB54
{*function sub_0063EB54(?:?; ?:?; ?:?):?;
begin
 0063EB54    push        ebp
 0063EB55    mov         ebp,esp
 0063EB57    add         esp,0FFFFFFF0
 0063EB5A    mov         dword ptr [ebp-0C],ecx
 0063EB5D    mov         dword ptr [ebp-8],edx
 0063EB60    mov         dword ptr [ebp-4],eax
 0063EB63    mov         eax,dword ptr [ebp-8]
 0063EB66    push        eax
 0063EB67    mov         eax,dword ptr [ebp-0C]
 0063EB6A    push        eax
 0063EB6B    push        1102
 0063EB70    mov         eax,dword ptr [ebp-4]
 0063EB73    push        eax
 0063EB74    call        USER32.SendMessageA
 0063EB79    mov         dword ptr [ebp-10],eax
 0063EB7C    mov         eax,dword ptr [ebp-10]
 0063EB7F    mov         esp,ebp
 0063EB81    pop         ebp
 0063EB82    ret
end;*}

//0063EB84
{*function sub_0063EB84(?:?; ?:?; ?:?; ?:?):?;
begin
 0063EB84    push        ebp
 0063EB85    mov         ebp,esp
 0063EB87    add         esp,0FFFFFFF0
 0063EB8A    mov         dword ptr [ebp-0C],ecx
 0063EB8D    mov         dword ptr [ebp-8],edx
 0063EB90    mov         dword ptr [ebp-4],eax
 0063EB93    mov         eax,dword ptr [ebp-0C]
 0063EB96    mov         edx,dword ptr [ebp-8]
 0063EB99    mov         dword ptr [eax],edx
 0063EB9B    mov         eax,dword ptr [ebp-0C]
 0063EB9E    push        eax
 0063EB9F    mov         eax,dword ptr [ebp+8]
 0063EBA2    push        eax
 0063EBA3    push        1104
 0063EBA8    mov         eax,dword ptr [ebp-4]
 0063EBAB    push        eax
 0063EBAC    call        USER32.SendMessageA
 0063EBB1    mov         dword ptr [ebp-10],eax
 0063EBB4    mov         eax,dword ptr [ebp-10]
 0063EBB7    mov         esp,ebp
 0063EBB9    pop         ebp
 0063EBBA    ret         4
end;*}

//0063EBC0
{*function sub_0063EBC0(?:?):?;
begin
 0063EBC0    push        ebp
 0063EBC1    mov         ebp,esp
 0063EBC3    add         esp,0FFFFFFF8
 0063EBC6    mov         dword ptr [ebp-4],eax
 0063EBC9    push        0
 0063EBCB    push        0
 0063EBCD    push        1105
 0063EBD2    mov         eax,dword ptr [ebp-4]
 0063EBD5    push        eax
 0063EBD6    call        USER32.SendMessageA
 0063EBDB    mov         dword ptr [ebp-8],eax
 0063EBDE    mov         eax,dword ptr [ebp-8]
 0063EBE1    pop         ecx
 0063EBE2    pop         ecx
 0063EBE3    pop         ebp
 0063EBE4    ret
end;*}

//0063EBE8
{*function sub_0063EBE8(?:HWND):?;
begin
 0063EBE8    push        ebp
 0063EBE9    mov         ebp,esp
 0063EBEB    add         esp,0FFFFFFF8
 0063EBEE    mov         dword ptr [ebp-4],eax
 0063EBF1    push        0
 0063EBF3    push        0
 0063EBF5    push        1106
 0063EBFA    mov         eax,dword ptr [ebp-4]
 0063EBFD    push        eax
 0063EBFE    call        USER32.SendMessageA
 0063EC03    mov         dword ptr [ebp-8],eax
 0063EC06    mov         eax,dword ptr [ebp-8]
 0063EC09    pop         ecx
 0063EC0A    pop         ecx
 0063EC0B    pop         ebp
 0063EC0C    ret
end;*}

//0063EC10
{*function sub_0063EC10(?:HWND; ?:Integer):?;
begin
 0063EC10    push        ebp
 0063EC11    mov         ebp,esp
 0063EC13    add         esp,0FFFFFFF4
 0063EC16    mov         dword ptr [ebp-8],edx
 0063EC19    mov         dword ptr [ebp-4],eax
 0063EC1C    push        0
 0063EC1E    mov         eax,dword ptr [ebp-8]
 0063EC21    push        eax
 0063EC22    push        1107
 0063EC27    mov         eax,dword ptr [ebp-4]
 0063EC2A    push        eax
 0063EC2B    call        USER32.SendMessageA
 0063EC30    mov         dword ptr [ebp-0C],eax
 0063EC33    mov         eax,dword ptr [ebp-0C]
 0063EC36    mov         esp,ebp
 0063EC38    pop         ebp
 0063EC39    ret
end;*}

//0063EC3C
{*function sub_0063EC3C(?:HWND; ?:?; ?:?):?;
begin
 0063EC3C    push        ebp
 0063EC3D    mov         ebp,esp
 0063EC3F    add         esp,0FFFFFFF0
 0063EC42    mov         dword ptr [ebp-0C],ecx
 0063EC45    mov         dword ptr [ebp-8],edx
 0063EC48    mov         dword ptr [ebp-4],eax
 0063EC4B    mov         eax,dword ptr [ebp-8]
 0063EC4E    push        eax
 0063EC4F    mov         eax,dword ptr [ebp-0C]
 0063EC52    push        eax
 0063EC53    push        1109
 0063EC58    mov         eax,dword ptr [ebp-4]
 0063EC5B    push        eax
 0063EC5C    call        USER32.SendMessageA
 0063EC61    mov         dword ptr [ebp-10],eax
 0063EC64    mov         eax,dword ptr [ebp-10]
 0063EC67    mov         esp,ebp
 0063EC69    pop         ebp
 0063EC6A    ret
end;*}

//0063EC6C
{*function sub_0063EC6C(?:HWND; ?:HTREEITEM; ?:?):?;
begin
 0063EC6C    push        ebp
 0063EC6D    mov         ebp,esp
 0063EC6F    add         esp,0FFFFFFF0
 0063EC72    mov         dword ptr [ebp-0C],ecx
 0063EC75    mov         dword ptr [ebp-8],edx
 0063EC78    mov         dword ptr [ebp-4],eax
 0063EC7B    mov         eax,dword ptr [ebp-8]
 0063EC7E    push        eax
 0063EC7F    mov         eax,dword ptr [ebp-0C]
 0063EC82    push        eax
 0063EC83    push        110A
 0063EC88    mov         eax,dword ptr [ebp-4]
 0063EC8B    push        eax
 0063EC8C    call        USER32.SendMessageA
 0063EC91    mov         dword ptr [ebp-10],eax
 0063EC94    mov         eax,dword ptr [ebp-10]
 0063EC97    mov         esp,ebp
 0063EC99    pop         ebp
 0063EC9A    ret
end;*}

//0063EC9C
{*function sub_0063EC9C(?:?; ?:?):?;
begin
 0063EC9C    push        ebp
 0063EC9D    mov         ebp,esp
 0063EC9F    add         esp,0FFFFFFF4
 0063ECA2    mov         dword ptr [ebp-8],edx
 0063ECA5    mov         dword ptr [ebp-4],eax
 0063ECA8    mov         ecx,4
 0063ECAD    mov         edx,dword ptr [ebp-8]
 0063ECB0    mov         eax,dword ptr [ebp-4]
 0063ECB3    call        0063EC6C
 0063ECB8    mov         dword ptr [ebp-0C],eax
 0063ECBB    mov         eax,dword ptr [ebp-0C]
 0063ECBE    mov         esp,ebp
 0063ECC0    pop         ebp
 0063ECC1    ret
end;*}

//0063ECC4
{*function sub_0063ECC4(?:?; ?:?):?;
begin
 0063ECC4    push        ebp
 0063ECC5    mov         ebp,esp
 0063ECC7    add         esp,0FFFFFFF4
 0063ECCA    mov         dword ptr [ebp-8],edx
 0063ECCD    mov         dword ptr [ebp-4],eax
 0063ECD0    mov         ecx,1
 0063ECD5    mov         edx,dword ptr [ebp-8]
 0063ECD8    mov         eax,dword ptr [ebp-4]
 0063ECDB    call        0063EC6C
 0063ECE0    mov         dword ptr [ebp-0C],eax
 0063ECE3    mov         eax,dword ptr [ebp-0C]
 0063ECE6    mov         esp,ebp
 0063ECE8    pop         ebp
 0063ECE9    ret
end;*}

//0063ECEC
{*function sub_0063ECEC(?:?; ?:?):?;
begin
 0063ECEC    push        ebp
 0063ECED    mov         ebp,esp
 0063ECEF    add         esp,0FFFFFFF4
 0063ECF2    mov         dword ptr [ebp-8],edx
 0063ECF5    mov         dword ptr [ebp-4],eax
 0063ECF8    mov         ecx,2
 0063ECFD    mov         edx,dword ptr [ebp-8]
 0063ED00    mov         eax,dword ptr [ebp-4]
 0063ED03    call        0063EC6C
 0063ED08    mov         dword ptr [ebp-0C],eax
 0063ED0B    mov         eax,dword ptr [ebp-0C]
 0063ED0E    mov         esp,ebp
 0063ED10    pop         ebp
 0063ED11    ret
end;*}

//0063ED14
{*function sub_0063ED14(?:?; ?:HTREEITEM):?;
begin
 0063ED14    push        ebp
 0063ED15    mov         ebp,esp
 0063ED17    add         esp,0FFFFFFF4
 0063ED1A    mov         dword ptr [ebp-8],edx
 0063ED1D    mov         dword ptr [ebp-4],eax
 0063ED20    mov         ecx,3
 0063ED25    mov         edx,dword ptr [ebp-8]
 0063ED28    mov         eax,dword ptr [ebp-4]
 0063ED2B    call        0063EC6C
 0063ED30    mov         dword ptr [ebp-0C],eax
 0063ED33    mov         eax,dword ptr [ebp-0C]
 0063ED36    mov         esp,ebp
 0063ED38    pop         ebp
 0063ED39    ret
end;*}

//0063ED3C
{*function sub_0063ED3C(?:HWND):?;
begin
 0063ED3C    push        ebp
 0063ED3D    mov         ebp,esp
 0063ED3F    add         esp,0FFFFFFF8
 0063ED42    mov         dword ptr [ebp-4],eax
 0063ED45    mov         ecx,5
 0063ED4A    xor         edx,edx
 0063ED4C    mov         eax,dword ptr [ebp-4]
 0063ED4F    call        0063EC6C
 0063ED54    mov         dword ptr [ebp-8],eax
 0063ED57    mov         eax,dword ptr [ebp-8]
 0063ED5A    pop         ecx
 0063ED5B    pop         ecx
 0063ED5C    pop         ebp
 0063ED5D    ret
end;*}

//0063ED60
{*function sub_0063ED60(?:?; ?:?):?;
begin
 0063ED60    push        ebp
 0063ED61    mov         ebp,esp
 0063ED63    add         esp,0FFFFFFF4
 0063ED66    mov         dword ptr [ebp-8],edx
 0063ED69    mov         dword ptr [ebp-4],eax
 0063ED6C    mov         ecx,6
 0063ED71    mov         edx,dword ptr [ebp-8]
 0063ED74    mov         eax,dword ptr [ebp-4]
 0063ED77    call        0063EC6C
 0063ED7C    mov         dword ptr [ebp-0C],eax
 0063ED7F    mov         eax,dword ptr [ebp-0C]
 0063ED82    mov         esp,ebp
 0063ED84    pop         ebp
 0063ED85    ret
end;*}

//0063ED88
{*function sub_0063ED88(?:?; ?:?):?;
begin
 0063ED88    push        ebp
 0063ED89    mov         ebp,esp
 0063ED8B    add         esp,0FFFFFFF4
 0063ED8E    mov         dword ptr [ebp-8],edx
 0063ED91    mov         dword ptr [ebp-4],eax
 0063ED94    mov         ecx,7
 0063ED99    mov         edx,dword ptr [ebp-8]
 0063ED9C    mov         eax,dword ptr [ebp-4]
 0063ED9F    call        0063EC6C
 0063EDA4    mov         dword ptr [ebp-0C],eax
 0063EDA7    mov         eax,dword ptr [ebp-0C]
 0063EDAA    mov         esp,ebp
 0063EDAC    pop         ebp
 0063EDAD    ret
end;*}

//0063EDB0
{*function sub_0063EDB0(?:HWND):?;
begin
 0063EDB0    push        ebp
 0063EDB1    mov         ebp,esp
 0063EDB3    add         esp,0FFFFFFF8
 0063EDB6    mov         dword ptr [ebp-4],eax
 0063EDB9    mov         ecx,9
 0063EDBE    xor         edx,edx
 0063EDC0    mov         eax,dword ptr [ebp-4]
 0063EDC3    call        0063EC6C
 0063EDC8    mov         dword ptr [ebp-8],eax
 0063EDCB    mov         eax,dword ptr [ebp-8]
 0063EDCE    pop         ecx
 0063EDCF    pop         ecx
 0063EDD0    pop         ebp
 0063EDD1    ret
end;*}

//0063EDD4
{*function sub_0063EDD4(?:HWND):?;
begin
 0063EDD4    push        ebp
 0063EDD5    mov         ebp,esp
 0063EDD7    add         esp,0FFFFFFF8
 0063EDDA    mov         dword ptr [ebp-4],eax
 0063EDDD    mov         ecx,8
 0063EDE2    xor         edx,edx
 0063EDE4    mov         eax,dword ptr [ebp-4]
 0063EDE7    call        0063EC6C
 0063EDEC    mov         dword ptr [ebp-8],eax
 0063EDEF    mov         eax,dword ptr [ebp-8]
 0063EDF2    pop         ecx
 0063EDF3    pop         ecx
 0063EDF4    pop         ebp
 0063EDF5    ret
end;*}

//0063EDF8
{*function sub_0063EDF8(?:?):?;
begin
 0063EDF8    push        ebp
 0063EDF9    mov         ebp,esp
 0063EDFB    add         esp,0FFFFFFF8
 0063EDFE    mov         dword ptr [ebp-4],eax
 0063EE01    xor         ecx,ecx
 0063EE03    xor         edx,edx
 0063EE05    mov         eax,dword ptr [ebp-4]
 0063EE08    call        0063EC6C
 0063EE0D    mov         dword ptr [ebp-8],eax
 0063EE10    mov         eax,dword ptr [ebp-8]
 0063EE13    pop         ecx
 0063EE14    pop         ecx
 0063EE15    pop         ebp
 0063EE16    ret
end;*}

//0063EE18
{*function sub_0063EE18(?:HWND; ?:?; ?:?):?;
begin
 0063EE18    push        ebp
 0063EE19    mov         ebp,esp
 0063EE1B    add         esp,0FFFFFFF0
 0063EE1E    mov         dword ptr [ebp-0C],ecx
 0063EE21    mov         dword ptr [ebp-8],edx
 0063EE24    mov         dword ptr [ebp-4],eax
 0063EE27    mov         eax,dword ptr [ebp-8]
 0063EE2A    push        eax
 0063EE2B    mov         eax,dword ptr [ebp-0C]
 0063EE2E    push        eax
 0063EE2F    push        110B
 0063EE34    mov         eax,dword ptr [ebp-4]
 0063EE37    push        eax
 0063EE38    call        USER32.SendMessageA
 0063EE3D    mov         dword ptr [ebp-10],eax
 0063EE40    mov         eax,dword ptr [ebp-10]
 0063EE43    mov         esp,ebp
 0063EE45    pop         ebp
 0063EE46    ret
end;*}

//0063EE48
{*function sub_0063EE48(?:HWND; ?:?):?;
begin
 0063EE48    push        ebp
 0063EE49    mov         ebp,esp
 0063EE4B    add         esp,0FFFFFFF4
 0063EE4E    mov         dword ptr [ebp-8],edx
 0063EE51    mov         dword ptr [ebp-4],eax
 0063EE54    mov         ecx,9
 0063EE59    mov         edx,dword ptr [ebp-8]
 0063EE5C    mov         eax,dword ptr [ebp-4]
 0063EE5F    call        0063EE18
 0063EE64    mov         dword ptr [ebp-0C],eax
 0063EE67    mov         eax,dword ptr [ebp-0C]
 0063EE6A    mov         esp,ebp
 0063EE6C    pop         ebp
 0063EE6D    ret
end;*}

//0063EE70
{*function sub_0063EE70(?:HWND; ?:?):?;
begin
 0063EE70    push        ebp
 0063EE71    mov         ebp,esp
 0063EE73    add         esp,0FFFFFFF4
 0063EE76    mov         dword ptr [ebp-8],edx
 0063EE79    mov         dword ptr [ebp-4],eax
 0063EE7C    mov         ecx,8
 0063EE81    mov         edx,dword ptr [ebp-8]
 0063EE84    mov         eax,dword ptr [ebp-4]
 0063EE87    call        0063EE18
 0063EE8C    mov         dword ptr [ebp-0C],eax
 0063EE8F    mov         eax,dword ptr [ebp-0C]
 0063EE92    mov         esp,ebp
 0063EE94    pop         ebp
 0063EE95    ret
end;*}

//0063EE98
{*function sub_0063EE98(?:HWND; ?:?):?;
begin
 0063EE98    push        ebp
 0063EE99    mov         ebp,esp
 0063EE9B    add         esp,0FFFFFFF4
 0063EE9E    mov         dword ptr [ebp-8],edx
 0063EEA1    mov         dword ptr [ebp-4],eax
 0063EEA4    mov         ecx,5
 0063EEA9    mov         edx,dword ptr [ebp-8]
 0063EEAC    mov         eax,dword ptr [ebp-4]
 0063EEAF    call        0063EE18
 0063EEB4    mov         dword ptr [ebp-0C],eax
 0063EEB7    mov         eax,dword ptr [ebp-0C]
 0063EEBA    mov         esp,ebp
 0063EEBC    pop         ebp
 0063EEBD    ret
end;*}

//0063EEC0
{*function sub_0063EEC0(?:?; ?:?):?;
begin
 0063EEC0    push        ebp
 0063EEC1    mov         ebp,esp
 0063EEC3    add         esp,0FFFFFFF4
 0063EEC6    mov         dword ptr [ebp-8],edx
 0063EEC9    mov         dword ptr [ebp-4],eax
 0063EECC    mov         eax,dword ptr [ebp-8]
 0063EECF    push        eax
 0063EED0    push        0
 0063EED2    push        110C
 0063EED7    mov         eax,dword ptr [ebp-4]
 0063EEDA    push        eax
 0063EEDB    call        USER32.SendMessageA
 0063EEE0    mov         dword ptr [ebp-0C],eax
 0063EEE3    mov         eax,dword ptr [ebp-0C]
 0063EEE6    mov         esp,ebp
 0063EEE8    pop         ebp
 0063EEE9    ret
end;*}

//0063EEEC
{*function sub_0063EEEC(?:?; ?:?):?;
begin
 0063EEEC    push        ebp
 0063EEED    mov         ebp,esp
 0063EEEF    add         esp,0FFFFFFF4
 0063EEF2    mov         dword ptr [ebp-8],edx
 0063EEF5    mov         dword ptr [ebp-4],eax
 0063EEF8    mov         eax,dword ptr [ebp-8]
 0063EEFB    push        eax
 0063EEFC    push        0
 0063EEFE    push        110D
 0063EF03    mov         eax,dword ptr [ebp-4]
 0063EF06    push        eax
 0063EF07    call        USER32.SendMessageA
 0063EF0C    mov         dword ptr [ebp-0C],eax
 0063EF0F    mov         eax,dword ptr [ebp-0C]
 0063EF12    mov         esp,ebp
 0063EF14    pop         ebp
 0063EF15    ret
end;*}

//0063EF18
{*function sub_0063EF18(?:HWND):?;
begin
 0063EF18    push        ebp
 0063EF19    mov         ebp,esp
 0063EF1B    add         esp,0FFFFFFF8
 0063EF1E    mov         dword ptr [ebp-4],eax
 0063EF21    push        0
 0063EF23    push        0
 0063EF25    push        110F
 0063EF2A    mov         eax,dword ptr [ebp-4]
 0063EF2D    push        eax
 0063EF2E    call        USER32.SendMessageA
 0063EF33    mov         dword ptr [ebp-8],eax
 0063EF36    mov         eax,dword ptr [ebp-8]
 0063EF39    pop         ecx
 0063EF3A    pop         ecx
 0063EF3B    pop         ebp
 0063EF3C    ret
end;*}

//0063EF40
{*function sub_0063EF40(?:HWND; ?:?):?;
begin
 0063EF40    push        ebp
 0063EF41    mov         ebp,esp
 0063EF43    add         esp,0FFFFFFF4
 0063EF46    mov         dword ptr [ebp-8],edx
 0063EF49    mov         dword ptr [ebp-4],eax
 0063EF4C    mov         eax,dword ptr [ebp-8]
 0063EF4F    push        eax
 0063EF50    push        0
 0063EF52    push        1111
 0063EF57    mov         eax,dword ptr [ebp-4]
 0063EF5A    push        eax
 0063EF5B    call        USER32.SendMessageA
 0063EF60    mov         dword ptr [ebp-0C],eax
 0063EF63    mov         eax,dword ptr [ebp-0C]
 0063EF66    mov         esp,ebp
 0063EF68    pop         ebp
 0063EF69    ret
end;*}

//0063EF6C
{*function sub_0063EF6C(?:HWND; ?:HTREEITEM):?;
begin
 0063EF6C    push        ebp
 0063EF6D    mov         ebp,esp
 0063EF6F    add         esp,0FFFFFFF4
 0063EF72    mov         dword ptr [ebp-8],edx
 0063EF75    mov         dword ptr [ebp-4],eax
 0063EF78    mov         eax,dword ptr [ebp-8]
 0063EF7B    push        eax
 0063EF7C    push        0
 0063EF7E    push        1112
 0063EF83    mov         eax,dword ptr [ebp-4]
 0063EF86    push        eax
 0063EF87    call        USER32.SendMessageA
 0063EF8C    mov         dword ptr [ebp-0C],eax
 0063EF8F    mov         eax,dword ptr [ebp-0C]
 0063EF92    mov         esp,ebp
 0063EF94    pop         ebp
 0063EF95    ret
end;*}

//0063EF98
{*function sub_0063EF98(?:HWND; ?:?; ?:?):?;
begin
 0063EF98    push        ebp
 0063EF99    mov         ebp,esp
 0063EF9B    add         esp,0FFFFFFF0
 0063EF9E    mov         dword ptr [ebp-0C],ecx
 0063EFA1    mov         dword ptr [ebp-8],edx
 0063EFA4    mov         dword ptr [ebp-4],eax
 0063EFA7    mov         eax,dword ptr [ebp-8]
 0063EFAA    push        eax
 0063EFAB    mov         eax,dword ptr [ebp-0C]
 0063EFAE    push        eax
 0063EFAF    push        1115
 0063EFB4    mov         eax,dword ptr [ebp-4]
 0063EFB7    push        eax
 0063EFB8    call        USER32.SendMessageA
 0063EFBD    mov         dword ptr [ebp-10],eax
 0063EFC0    mov         eax,dword ptr [ebp-10]
 0063EFC3    mov         esp,ebp
 0063EFC5    pop         ebp
 0063EFC6    ret
end;*}

//0063EFC8
{*function sub_0063EFC8(?:HWND; ?:?):?;
begin
 0063EFC8    push        ebp
 0063EFC9    mov         ebp,esp
 0063EFCB    add         esp,0FFFFFFF4
 0063EFCE    mov         dword ptr [ebp-8],edx
 0063EFD1    mov         dword ptr [ebp-4],eax
 0063EFD4    mov         eax,dword ptr [ebp-8]
 0063EFD7    push        eax
 0063EFD8    push        0
 0063EFDA    push        111D
 0063EFDF    mov         eax,dword ptr [ebp-4]
 0063EFE2    push        eax
 0063EFE3    call        USER32.SendMessageA
 0063EFE8    mov         dword ptr [ebp-0C],eax
 0063EFEB    mov         eax,dword ptr [ebp-0C]
 0063EFEE    mov         esp,ebp
 0063EFF0    pop         ebp
 0063EFF1    ret
end;*}

//0063EFF4
{*function sub_0063EFF4(?:HWND; ?:?):?;
begin
 0063EFF4    push        ebp
 0063EFF5    mov         ebp,esp
 0063EFF7    add         esp,0FFFFFFF4
 0063EFFA    mov         dword ptr [ebp-8],edx
 0063EFFD    mov         dword ptr [ebp-4],eax
 0063F000    mov         eax,dword ptr [ebp-8]
 0063F003    push        eax
 0063F004    push        0
 0063F006    push        111E
 0063F00B    mov         eax,dword ptr [ebp-4]
 0063F00E    push        eax
 0063F00F    call        USER32.SendMessageA
 0063F014    mov         dword ptr [ebp-0C],eax
 0063F017    mov         eax,dword ptr [ebp-0C]
 0063F01A    mov         esp,ebp
 0063F01C    pop         ebp
 0063F01D    ret
end;*}

//0063F020
{*function sub_0063F020(?:HWND; ?:?):?;
begin
 0063F020    push        ebp
 0063F021    mov         ebp,esp
 0063F023    add         esp,0FFFFFFF4
 0063F026    mov         dword ptr [ebp-8],edx
 0063F029    mov         dword ptr [ebp-4],eax
 0063F02C    mov         eax,dword ptr [ebp-8]
 0063F02F    push        eax
 0063F030    push        0
 0063F032    push        1002
 0063F037    mov         eax,dword ptr [ebp-4]
 0063F03A    push        eax
 0063F03B    call        USER32.SendMessageA
 0063F040    mov         dword ptr [ebp-0C],eax
 0063F043    mov         eax,dword ptr [ebp-0C]
 0063F046    mov         esp,ebp
 0063F048    pop         ebp
 0063F049    ret
end;*}

//0063F04C
{*function sub_0063F04C(?:?; ?:Integer):?;
begin
 0063F04C    push        ebp
 0063F04D    mov         ebp,esp
 0063F04F    add         esp,0FFFFFFF4
 0063F052    mov         dword ptr [ebp-8],edx
 0063F055    mov         dword ptr [ebp-4],eax
 0063F058    push        0
 0063F05A    mov         eax,dword ptr [ebp-8]
 0063F05D    push        eax
 0063F05E    push        1004
 0063F063    mov         eax,dword ptr [ebp-4]
 0063F066    push        eax
 0063F067    call        USER32.SendMessageA
 0063F06C    mov         dword ptr [ebp-0C],eax
 0063F06F    mov         eax,dword ptr [ebp-0C]
 0063F072    mov         esp,ebp
 0063F074    pop         ebp
 0063F075    ret
end;*}

//0063F078
{*function sub_0063F078(?:HWND; ?:?):?;
begin
 0063F078    push        ebp
 0063F079    mov         ebp,esp
 0063F07B    add         esp,0FFFFFFF4
 0063F07E    mov         dword ptr [ebp-8],edx
 0063F081    mov         dword ptr [ebp-4],eax
 0063F084    mov         eax,dword ptr [ebp-8]
 0063F087    push        eax
 0063F088    push        0
 0063F08A    push        1006
 0063F08F    mov         eax,dword ptr [ebp-4]
 0063F092    push        eax
 0063F093    call        USER32.SendMessageA
 0063F098    mov         dword ptr [ebp-0C],eax
 0063F09B    mov         eax,dword ptr [ebp-0C]
 0063F09E    mov         esp,ebp
 0063F0A0    pop         ebp
 0063F0A1    ret
end;*}

//0063F0A4
{*function sub_0063F0A4(?:HWND; ?:?):?;
begin
 0063F0A4    push        ebp
 0063F0A5    mov         ebp,esp
 0063F0A7    add         esp,0FFFFFFF4
 0063F0AA    mov         dword ptr [ebp-8],edx
 0063F0AD    mov         dword ptr [ebp-4],eax
 0063F0B0    mov         eax,dword ptr [ebp-8]
 0063F0B3    push        eax
 0063F0B4    push        0
 0063F0B6    push        1009
 0063F0BB    mov         eax,dword ptr [ebp-4]
 0063F0BE    push        eax
 0063F0BF    call        USER32.SendMessageA
 0063F0C4    mov         dword ptr [ebp-0C],eax
 0063F0C7    mov         eax,dword ptr [ebp-0C]
 0063F0CA    mov         esp,ebp
 0063F0CC    pop         ebp
 0063F0CD    ret
end;*}

//0063F0D0
{*function sub_0063F0D0(?:HWND; ?:?; ?:?):?;
begin
 0063F0D0    push        ebp
 0063F0D1    mov         ebp,esp
 0063F0D3    add         esp,0FFFFFFF0
 0063F0D6    mov         dword ptr [ebp-0C],ecx
 0063F0D9    mov         dword ptr [ebp-8],edx
 0063F0DC    mov         dword ptr [ebp-4],eax
 0063F0DF    mov         eax,dword ptr [ebp-0C]
 0063F0E2    push        eax
 0063F0E3    mov         eax,dword ptr [ebp-8]
 0063F0E6    push        eax
 0063F0E7    push        100A
 0063F0EC    mov         eax,dword ptr [ebp-4]
 0063F0EF    push        eax
 0063F0F0    call        USER32.SendMessageA
 0063F0F5    mov         dword ptr [ebp-10],eax
 0063F0F8    mov         eax,dword ptr [ebp-10]
 0063F0FB    mov         esp,ebp
 0063F0FD    pop         ebp
 0063F0FE    ret
end;*}

//0063F100
{*function sub_0063F100(?:?; ?:?):?;
begin
 0063F100    push        ebp
 0063F101    mov         ebp,esp
 0063F103    add         esp,0FFFFFFF4
 0063F106    mov         dword ptr [ebp-8],edx
 0063F109    mov         dword ptr [ebp-4],eax
 0063F10C    mov         eax,dword ptr [ebp-8]
 0063F10F    push        eax
 0063F110    push        0
 0063F112    push        100F
 0063F117    mov         eax,dword ptr [ebp-4]
 0063F11A    push        eax
 0063F11B    call        USER32.SendMessageA
 0063F120    mov         dword ptr [ebp-0C],eax
 0063F123    mov         eax,dword ptr [ebp-0C]
 0063F126    mov         esp,ebp
 0063F128    pop         ebp
 0063F129    ret
end;*}

//0063F12C
{*function sub_0063F12C(?:HWND; ?:?; ?:?):?;
begin
 0063F12C    push        ebp
 0063F12D    mov         ebp,esp
 0063F12F    add         esp,0FFFFFFF0
 0063F132    mov         dword ptr [ebp-0C],ecx
 0063F135    mov         dword ptr [ebp-8],edx
 0063F138    mov         dword ptr [ebp-4],eax
 0063F13B    mov         eax,dword ptr [ebp-0C]
 0063F13E    push        eax
 0063F13F    mov         eax,dword ptr [ebp-8]
 0063F142    push        eax
 0063F143    push        1012
 0063F148    mov         eax,dword ptr [ebp-4]
 0063F14B    push        eax
 0063F14C    call        USER32.SendMessageA
 0063F151    mov         dword ptr [ebp-10],eax
 0063F154    mov         eax,dword ptr [ebp-10]
 0063F157    mov         esp,ebp
 0063F159    pop         ebp
 0063F15A    ret
end;*}

//0063F15C
{*function sub_0063F15C(?:?; ?:Integer):?;
begin
 0063F15C    push        ebp
 0063F15D    mov         ebp,esp
 0063F15F    add         esp,0FFFFFFF4
 0063F162    mov         dword ptr [ebp-8],edx
 0063F165    mov         dword ptr [ebp-4],eax
 0063F168    push        0
 0063F16A    mov         eax,dword ptr [ebp-8]
 0063F16D    push        eax
 0063F16E    push        1014
 0063F173    mov         eax,dword ptr [ebp-4]
 0063F176    push        eax
 0063F177    call        USER32.SendMessageA
 0063F17C    mov         dword ptr [ebp-0C],eax
 0063F17F    mov         eax,dword ptr [ebp-0C]
 0063F182    mov         esp,ebp
 0063F184    pop         ebp
 0063F185    ret
end;*}

//0063F188
function DateTime_SetSystemTime(hdp:HWND; gd:DWORD; const pst:TSystemTime):BOOL;
begin
{*
 0063F188    push        ebp
 0063F189    mov         ebp,esp
 0063F18B    add         esp,0FFFFFFF0
 0063F18E    mov         dword ptr [ebp-0C],ecx
 0063F191    mov         dword ptr [ebp-8],edx
 0063F194    mov         dword ptr [ebp-4],eax
 0063F197    mov         eax,dword ptr [ebp-0C]
 0063F19A    push        eax
 0063F19B    mov         eax,dword ptr [ebp-8]
 0063F19E    push        eax
 0063F19F    push        1002
 0063F1A4    mov         eax,dword ptr [ebp-4]
 0063F1A7    push        eax
 0063F1A8    call        USER32.SendMessageA
 0063F1AD    mov         dword ptr [ebp-10],eax
 0063F1B0    mov         eax,dword ptr [ebp-10]
 0063F1B3    mov         esp,ebp
 0063F1B5    pop         ebp
 0063F1B6    ret
*}
end;

//0063F1B8
{*function sub_0063F1B8(?:HWND; ?:?; ?:?):?;
begin
 0063F1B8    push        ebp
 0063F1B9    mov         ebp,esp
 0063F1BB    add         esp,0FFFFFFF0
 0063F1BE    mov         dword ptr [ebp-0C],ecx
 0063F1C1    mov         dword ptr [ebp-8],edx
 0063F1C4    mov         dword ptr [ebp-4],eax
 0063F1C7    mov         eax,dword ptr [ebp-0C]
 0063F1CA    push        eax
 0063F1CB    mov         eax,dword ptr [ebp-8]
 0063F1CE    push        eax
 0063F1CF    push        1004
 0063F1D4    mov         eax,dword ptr [ebp-4]
 0063F1D7    push        eax
 0063F1D8    call        USER32.SendMessageA
 0063F1DD    mov         dword ptr [ebp-10],eax
 0063F1E0    mov         eax,dword ptr [ebp-10]
 0063F1E3    mov         esp,ebp
 0063F1E5    pop         ebp
 0063F1E6    ret
end;*}

//0063F1E8
{*function sub_0063F1E8(?:HWND; ?:?; ?:?):?;
begin
 0063F1E8    push        ebp
 0063F1E9    mov         ebp,esp
 0063F1EB    add         esp,0FFFFFFF0
 0063F1EE    mov         dword ptr [ebp-0C],ecx
 0063F1F1    mov         dword ptr [ebp-8],edx
 0063F1F4    mov         dword ptr [ebp-4],eax
 0063F1F7    mov         eax,dword ptr [ebp-0C]
 0063F1FA    push        eax
 0063F1FB    mov         eax,dword ptr [ebp-8]
 0063F1FE    push        eax
 0063F1FF    push        1006
 0063F204    mov         eax,dword ptr [ebp-4]
 0063F207    push        eax
 0063F208    call        USER32.SendMessageA
 0063F20D    mov         dword ptr [ebp-10],eax
 0063F210    mov         eax,dword ptr [ebp-10]
 0063F213    mov         esp,ebp
 0063F215    pop         ebp
 0063F216    ret
end;*}

//0063F218
{*function sub_0063F218(?:HWND):?;
begin
 0063F218    push        ebp
 0063F219    mov         ebp,esp
 0063F21B    add         esp,0FFFFFFF8
 0063F21E    mov         dword ptr [ebp-4],eax
 0063F221    push        0
 0063F223    push        0
 0063F225    push        1008
 0063F22A    mov         eax,dword ptr [ebp-4]
 0063F22D    push        eax
 0063F22E    call        USER32.SendMessageA
 0063F233    mov         dword ptr [ebp-8],eax
 0063F236    mov         eax,dword ptr [ebp-8]
 0063F239    pop         ecx
 0063F23A    pop         ecx
 0063F23B    pop         ebp
 0063F23C    ret
end;*}

//0063F240
procedure Finalization;
begin
{*
 0063F240    push        ebp
 0063F241    mov         ebp,esp
 0063F243    xor         eax,eax
 0063F245    push        ebp
 0063F246    push        63F265
 0063F24B    push        dword ptr fs:[eax]
 0063F24E    mov         dword ptr fs:[eax],esp
 0063F251    inc         dword ptr ds:[6ECF74]
 0063F257    xor         eax,eax
 0063F259    pop         edx
 0063F25A    pop         ecx
 0063F25B    pop         ecx
 0063F25C    mov         dword ptr fs:[eax],edx
 0063F25F    push        63F26C
 0063F264    ret
>0063F265    jmp         @HandleFinally
>0063F26A    jmp         0063F264
 0063F26C    pop         ebp
 0063F26D    ret
*}
end;

end.