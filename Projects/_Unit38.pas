//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit38;

interface

uses
  SysUtils, Classes;

type
  TWinHelpViewer = class(TInterfacedObject)
  public
    f14:String;//f14
    f1C:IHelpManager;//f1C
    constructor Create;//0058594C
  end;
    procedure sub_005857A0;//005857A0
    //procedure sub_00585990(?:?; ?:?; ?:?);//00585990
    //procedure sub_00585A70(?:?; ?:?);//00585A70
    //function sub_00585A90(?:?; ?:?):?;//00585A90
    //function sub_00585B1C(?:?; ?:?):?;//00585B1C
    //function sub_00585BCC(?:?):?;//00585BCC
    //procedure sub_00585BE0(?:?);//00585BE0
    //procedure sub_00585C74(?:?; ?:?);//00585C74
    //procedure sub_00585DB0(?:?; ?:?);//00585DB0
    //procedure sub_00585DCC(?:?);//00585DCC
    //procedure sub_00585DF4(?:?);//00585DF4
    //function sub_00585E30(?:?; ?:?):?;//00585E30
    //procedure sub_00585EA4(?:?; ?:?);//00585EA4
    //function sub_00585FC4(?:?; ?:?; ?:?):?;//00585FC4
    //procedure sub_0058603C(?:?; ?:?; ?:?);//0058603C
    //function sub_005860E8(?:?; ?:?; ?:?; ?:?; ?:?):?;//005860E8
    //procedure sub_005862D8(?:?);//005862D8
    //function sub_00586308(?:?; ?:?; ?:AnsiString; ?:?):?;//00586308
    //function sub_005863A0(?:?; ?:?):?;//005863A0
    //function sub_005863C4(?:?; ?:?):?;//005863C4
    //function sub_005863F0(?:?):?;//005863F0
    //procedure sub_00586450(?:?);//00586450

implementation

//005857A0
procedure sub_005857A0;
begin
{*
 005857A0    sub         dword ptr ds:[6ECCBC],1
 005857A7    ret
*}
end;

//0058594C
constructor TWinHelpViewer.Create;
begin
{*
 0058594C    push        ebp
 0058594D    mov         ebp,esp
 0058594F    add         esp,0FFFFFFF8
 00585952    test        dl,dl
>00585954    je          0058595E
 00585956    add         esp,0FFFFFFF0
 00585959    call        @ClassCreate
 0058595E    mov         byte ptr [ebp-5],dl
 00585961    mov         dword ptr [ebp-4],eax
 00585964    xor         edx,edx
 00585966    mov         eax,dword ptr [ebp-4]
 00585969    call        TObject.Create
 0058596E    mov         eax,dword ptr [ebp-4]
 00585971    cmp         byte ptr [ebp-5],0
>00585975    je          00585986
 00585977    call        @AfterConstruction
 0058597C    pop         dword ptr fs:[0]
 00585983    add         esp,0C
 00585986    mov         eax,dword ptr [ebp-4]
 00585989    pop         ecx
 0058598A    pop         ecx
 0058598B    pop         ebp
 0058598C    ret
*}
end;

//00585990
{*procedure sub_00585990(?:?; ?:?; ?:?);
begin
 00585990    push        ebp
 00585991    mov         ebp,esp
 00585993    add         esp,0FFFFFFF0
 00585996    push        ebx
 00585997    xor         ebx,ebx
 00585999    mov         dword ptr [ebp-10],ebx
 0058599C    mov         dword ptr [ebp-0C],ecx
 0058599F    mov         dword ptr [ebp-8],edx
 005859A2    mov         dword ptr [ebp-4],eax
 005859A5    xor         eax,eax
 005859A7    push        ebp
 005859A8    push        585A22
 005859AD    push        dword ptr fs:[eax]
 005859B0    mov         dword ptr fs:[eax],esp
 005859B3    mov         eax,dword ptr [ebp-0C]
 005859B6    call        @LStrClr
 005859BB    cmp         dword ptr [ebp-8],0
>005859BF    jne         005859DA
 005859C1    mov         eax,dword ptr [ebp-4]
 005859C4    cmp         dword ptr [eax+1C],0
>005859C8    je          005859DA
 005859CA    lea         edx,[ebp-10]
 005859CD    mov         eax,dword ptr [ebp-4]
 005859D0    mov         eax,dword ptr [eax+1C]
 005859D3    mov         ecx,dword ptr [eax]
 005859D5    call        dword ptr [ecx+10]
>005859D8    jmp         005859E5
 005859DA    lea         eax,[ebp-10]
 005859DD    mov         edx,dword ptr [ebp-8]
 005859E0    call        @LStrLAsg
 005859E5    cmp         dword ptr [ebp-10],0
>005859E9    jne         00585A01
 005859EB    cmp         dword ptr ds:[6ECCC0],0;gvar_006ECCC0:IInterface
>005859F2    je          00585A01
 005859F4    lea         edx,[ebp-10]
 005859F7    mov         eax,[006ECCC0];0x0 gvar_006ECCC0:IInterface
 005859FC    mov         ecx,dword ptr [eax]
 005859FE    call        dword ptr [ecx+20]
 00585A01    mov         eax,dword ptr [ebp-0C]
 00585A04    mov         edx,dword ptr [ebp-10]
 00585A07    call        @LStrAsg
 00585A0C    xor         eax,eax
 00585A0E    pop         edx
 00585A0F    pop         ecx
 00585A10    pop         ecx
 00585A11    mov         dword ptr fs:[eax],edx
 00585A14    push        585A29
 00585A19    lea         eax,[ebp-10]
 00585A1C    call        @LStrClr
 00585A21    ret
>00585A22    jmp         @HandleFinally
>00585A27    jmp         00585A19
 00585A29    pop         ebx
 00585A2A    mov         esp,ebp
 00585A2C    pop         ebp
 00585A2D    ret
end;*}

//00585A70
{*procedure sub_00585A70(?:?; ?:?);
begin
 00585A70    push        ebp
 00585A71    mov         ebp,esp
 00585A73    add         esp,0FFFFFFF8
 00585A76    mov         dword ptr [ebp-8],edx
 00585A79    mov         dword ptr [ebp-4],eax
 00585A7C    mov         eax,dword ptr [ebp-8]
 00585A7F    mov         edx,dword ptr ds:[6ECCC4];0x0 gvar_006ECCC4
 00585A85    call        @LStrAsg
 00585A8A    pop         ecx
 00585A8B    pop         ecx
 00585A8C    pop         ebp
 00585A8D    ret
end;*}

//00585A90
{*function sub_00585A90(?:?; ?:?):?;
begin
 00585A90    push        ebp
 00585A91    mov         ebp,esp
 00585A93    add         esp,0FFFFFFEC
 00585A96    push        ebx
 00585A97    xor         ecx,ecx
 00585A99    mov         dword ptr [ebp-14],ecx
 00585A9C    mov         dword ptr [ebp-8],edx
 00585A9F    mov         dword ptr [ebp-4],eax
 00585AA2    xor         eax,eax
 00585AA4    push        ebp
 00585AA5    push        585B0C
 00585AAA    push        dword ptr fs:[eax]
 00585AAD    mov         dword ptr fs:[eax],esp
 00585AB0    cmp         dword ptr ds:[6ECCC0],0;gvar_006ECCC0:IInterface
>00585AB7    je          00585AEF
 00585AB9    lea         ecx,[ebp-14]
 00585ABC    xor         edx,edx
 00585ABE    mov         eax,dword ptr [ebp-4]
 00585AC1    call        00585990
 00585AC6    mov         ecx,dword ptr [ebp-14]
 00585AC9    mov         edx,dword ptr [ebp-8]
 00585ACC    mov         eax,[006ECCC0];0x0 gvar_006ECCC0:IInterface
 00585AD1    mov         ebx,dword ptr [eax]
 00585AD3    call        dword ptr [ebx+0C]
 00585AD6    mov         byte ptr [ebp-0D],al
 00585AD9    cmp         byte ptr [ebp-0D],0
>00585ADD    je          00585AE8
 00585ADF    mov         dword ptr [ebp-0C],1
>00585AE6    jmp         00585AF6
 00585AE8    xor         eax,eax
 00585AEA    mov         dword ptr [ebp-0C],eax
>00585AED    jmp         00585AF6
 00585AEF    mov         dword ptr [ebp-0C],1
 00585AF6    xor         eax,eax
 00585AF8    pop         edx
 00585AF9    pop         ecx
 00585AFA    pop         ecx
 00585AFB    mov         dword ptr fs:[eax],edx
 00585AFE    push        585B13
 00585B03    lea         eax,[ebp-14]
 00585B06    call        @LStrClr
 00585B0B    ret
>00585B0C    jmp         @HandleFinally
>00585B11    jmp         00585B03
 00585B13    mov         eax,dword ptr [ebp-0C]
 00585B16    pop         ebx
 00585B17    mov         esp,ebp
 00585B19    pop         ebp
 00585B1A    ret
end;*}

//00585B1C
{*function sub_00585B1C(?:?; ?:?):?;
begin
 00585B1C    push        ebp
 00585B1D    mov         ebp,esp
 00585B1F    add         esp,0FFFFFFEC
 00585B22    xor         ecx,ecx
 00585B24    mov         dword ptr [ebp-10],ecx
 00585B27    mov         dword ptr [ebp-14],ecx
 00585B2A    mov         dword ptr [ebp-8],edx
 00585B2D    mov         dword ptr [ebp-4],eax
 00585B30    xor         eax,eax
 00585B32    push        ebp
 00585B33    push        585BB1
 00585B38    push        dword ptr fs:[eax]
 00585B3B    mov         dword ptr fs:[eax],esp
 00585B3E    cmp         dword ptr ds:[6ECCC0],0;gvar_006ECCC0:IInterface
>00585B45    je          00585B59
 00585B47    mov         edx,dword ptr [ebp-8]
 00585B4A    mov         eax,[006ECCC0];0x0 gvar_006ECCC0:IInterface
 00585B4F    mov         ecx,dword ptr [eax]
 00585B51    call        dword ptr [ecx+18]
 00585B54    mov         dword ptr [ebp-0C],eax
>00585B57    jmp         00585B96
 00585B59    mov         dl,1
 00585B5B    mov         eax,[006428B0];TStringList
 00585B60    call        TObject.Create;TStringList.Create
 00585B65    mov         dword ptr [ebp-0C],eax
 00585B68    lea         edx,[ebp-14]
 00585B6B    mov         eax,dword ptr [ebp-4]
 00585B6E    call        00585A70
 00585B73    push        dword ptr [ebp-14]
 00585B76    push        585BC8;': '
 00585B7B    push        dword ptr [ebp-8]
 00585B7E    lea         eax,[ebp-10]
 00585B81    mov         edx,3
 00585B86    call        @LStrCatN
 00585B8B    mov         edx,dword ptr [ebp-10]
 00585B8E    mov         eax,dword ptr [ebp-0C]
 00585B91    mov         ecx,dword ptr [eax]
 00585B93    call        dword ptr [ecx+38];TStringList.sub_00647DC4
 00585B96    xor         eax,eax
 00585B98    pop         edx
 00585B99    pop         ecx
 00585B9A    pop         ecx
 00585B9B    mov         dword ptr fs:[eax],edx
 00585B9E    push        585BB8
 00585BA3    lea         eax,[ebp-14]
 00585BA6    mov         edx,2
 00585BAB    call        @LStrArrayClr
 00585BB0    ret
>00585BB1    jmp         @HandleFinally
>00585BB6    jmp         00585BA3
 00585BB8    mov         eax,dword ptr [ebp-0C]
 00585BBB    mov         esp,ebp
 00585BBD    pop         ebp
 00585BBE    ret
end;*}

//00585BCC
{*function sub_00585BCC(?:?):?;
begin
 00585BCC    push        ebp
 00585BCD    mov         ebp,esp
 00585BCF    add         esp,0FFFFFFF8
 00585BD2    mov         dword ptr [ebp-4],eax
 00585BD5    mov         byte ptr [ebp-5],1
 00585BD9    mov         al,byte ptr [ebp-5]
 00585BDC    pop         ecx
 00585BDD    pop         ecx
 00585BDE    pop         ebp
 00585BDF    ret
end;*}

//00585BE0
{*procedure sub_00585BE0(?:?);
begin
 00585BE0    push        ebp
 00585BE1    mov         ebp,esp
 00585BE3    push        0
 00585BE5    push        0
 00585BE7    push        0
 00585BE9    mov         dword ptr [ebp-4],eax
 00585BEC    xor         eax,eax
 00585BEE    push        ebp
 00585BEF    push        585C68
 00585BF4    push        dword ptr fs:[eax]
 00585BF7    mov         dword ptr fs:[eax],esp
 00585BFA    mov         eax,dword ptr [ebp-4]
 00585BFD    call        005863F0
 00585C02    test        al,al
>00585C04    je          00585C4D
 00585C06    mov         eax,dword ptr [ebp-4]
 00585C09    mov         byte ptr [eax+10],2
 00585C0D    lea         edx,[ebp-0C]
 00585C10    mov         eax,dword ptr [ebp-4]
 00585C13    mov         eax,dword ptr [eax+1C]
 00585C16    mov         ecx,dword ptr [eax]
 00585C18    call        dword ptr [ecx+10]
 00585C1B    mov         edx,dword ptr [ebp-0C]
 00585C1E    lea         ecx,[ebp-8]
 00585C21    mov         eax,dword ptr [ebp-4]
 00585C24    call        00585990
 00585C29    cmp         dword ptr [ebp-8],0
>00585C2D    je          00585C4D
 00585C2F    push        0
 00585C31    push        3
 00585C33    mov         eax,dword ptr [ebp-8]
 00585C36    call        @LStrToPChar
 00585C3B    push        eax
 00585C3C    mov         eax,dword ptr [ebp-4]
 00585C3F    mov         eax,dword ptr [eax+1C]
 00585C42    mov         edx,dword ptr [eax]
 00585C44    call        dword ptr [edx+0C]
 00585C47    push        eax
 00585C48    call        USER32.WinHelpA
 00585C4D    xor         eax,eax
 00585C4F    pop         edx
 00585C50    pop         ecx
 00585C51    pop         ecx
 00585C52    mov         dword ptr fs:[eax],edx
 00585C55    push        585C6F
 00585C5A    lea         eax,[ebp-0C]
 00585C5D    mov         edx,2
 00585C62    call        @LStrArrayClr
 00585C67    ret
>00585C68    jmp         @HandleFinally
>00585C6D    jmp         00585C5A
 00585C6F    mov         esp,ebp
 00585C71    pop         ebp
 00585C72    ret
end;*}

//00585C74
{*procedure sub_00585C74(?:?; ?:?);
begin
 00585C74    push        ebp
 00585C75    mov         ebp,esp
 00585C77    add         esp,0FFFFFFDC
 00585C7A    xor         ecx,ecx
 00585C7C    mov         dword ptr [ebp-24],ecx
 00585C7F    mov         dword ptr [ebp-0C],ecx
 00585C82    mov         dword ptr [ebp-10],ecx
 00585C85    mov         dword ptr [ebp-8],edx
 00585C88    mov         dword ptr [ebp-4],eax
 00585C8B    xor         eax,eax
 00585C8D    push        ebp
 00585C8E    push        585D62
 00585C93    push        dword ptr fs:[eax]
 00585C96    mov         dword ptr fs:[eax],esp
 00585C99    lea         eax,[ebp-0C]
 00585C9C    push        eax
 00585C9D    mov         eax,dword ptr [ebp-8]
 00585CA0    mov         dword ptr [ebp-20],eax
 00585CA3    mov         byte ptr [ebp-1C],0B
 00585CA7    lea         ecx,[ebp-24]
 00585CAA    xor         edx,edx
 00585CAC    mov         eax,dword ptr [ebp-4]
 00585CAF    call        00585990
 00585CB4    mov         eax,dword ptr [ebp-24]
 00585CB7    mov         dword ptr [ebp-18],eax
 00585CBA    mov         byte ptr [ebp-14],0B
 00585CBE    lea         edx,[ebp-20]
 00585CC1    mov         ecx,1
 00585CC6    mov         eax,585D78;'IE(AL("%s",4),"AL(\"%0:s\",3)","JK(\"%1:s\",\"%0:s\")")'
 00585CCB    call        00658FBC
 00585CD0    mov         eax,dword ptr [ebp-4]
 00585CD3    call        005863F0
 00585CD8    test        al,al
>00585CDA    je          00585D3F
 00585CDC    lea         ecx,[ebp-10]
 00585CDF    xor         edx,edx
 00585CE1    mov         eax,dword ptr [ebp-4]
 00585CE4    call        00585990
 00585CE9    push        0
 00585CEB    mov         ecx,dword ptr [ebp-0C]
 00585CEE    mov         dl,1
 00585CF0    mov         eax,dword ptr [ebp-4]
 00585CF3    call        00586308
 00585CF8    test        al,al
>00585CFA    je          00585D3F
 00585CFC    cmp         dword ptr [ebp-10],0
>00585D00    je          00585D3F
 00585D02    mov         eax,dword ptr [ebp-4]
 00585D05    mov         byte ptr [eax+10],1
 00585D09    mov         eax,dword ptr [ebp-4]
 00585D0C    add         eax,14
 00585D0F    mov         edx,dword ptr [ebp-0C]
 00585D12    call        @LStrAsg
 00585D17    mov         eax,dword ptr [ebp-0C]
 00585D1A    call        @LStrToPChar
 00585D1F    push        eax
 00585D20    push        102
 00585D25    mov         eax,dword ptr [ebp-10]
 00585D28    call        @LStrToPChar
 00585D2D    push        eax
 00585D2E    mov         eax,dword ptr [ebp-4]
 00585D31    mov         eax,dword ptr [eax+1C]
 00585D34    mov         edx,dword ptr [eax]
 00585D36    call        dword ptr [edx+0C]
 00585D39    push        eax
 00585D3A    call        USER32.WinHelpA
 00585D3F    xor         eax,eax
 00585D41    pop         edx
 00585D42    pop         ecx
 00585D43    pop         ecx
 00585D44    mov         dword ptr fs:[eax],edx
 00585D47    push        585D69
 00585D4C    lea         eax,[ebp-24]
 00585D4F    call        @LStrClr
 00585D54    lea         eax,[ebp-10]
 00585D57    mov         edx,2
 00585D5C    call        @LStrArrayClr
 00585D61    ret
>00585D62    jmp         @HandleFinally
>00585D67    jmp         00585D4C
 00585D69    mov         esp,ebp
 00585D6B    pop         ebp
 00585D6C    ret
end;*}

//00585DB0
{*procedure sub_00585DB0(?:?; ?:?);
begin
 00585DB0    push        ebp
 00585DB1    mov         ebp,esp
 00585DB3    add         esp,0FFFFFFF8
 00585DB6    mov         dword ptr [ebp-8],edx
 00585DB9    mov         dword ptr [ebp-4],eax
 00585DBC    mov         eax,dword ptr [ebp-8]
 00585DBF    mov         edx,dword ptr [ebp-4]
 00585DC2    mov         dword ptr [edx+0C],eax
 00585DC5    pop         ecx
 00585DC6    pop         ecx
 00585DC7    pop         ebp
 00585DC8    ret
end;*}

//00585DCC
{*procedure sub_00585DCC(?:?);
begin
 00585DCC    push        ebp
 00585DCD    mov         ebp,esp
 00585DCF    push        ecx
 00585DD0    mov         dword ptr [ebp-4],eax
 00585DD3    mov         eax,dword ptr [ebp-4]
 00585DD6    mov         byte ptr [eax+10],3
 00585DDA    push        0
 00585DDC    push        2
 00585DDE    push        585DF0;'
 00585DE3    push        0
 00585DE5    call        USER32.WinHelpA
 00585DEA    pop         ecx
 00585DEB    pop         ebp
 00585DEC    ret
end;*}

//00585DF4
{*procedure sub_00585DF4(?:?);
begin
 00585DF4    push        ebp
 00585DF5    mov         ebp,esp
 00585DF7    push        ecx
 00585DF8    mov         dword ptr [ebp-4],eax
 00585DFB    mov         eax,dword ptr [ebp-4]
 00585DFE    call        00585DCC
 00585E03    mov         eax,dword ptr [ebp-4]
 00585E06    cmp         dword ptr [eax+1C],0
>00585E0A    je          00585E17
 00585E0C    mov         eax,dword ptr [ebp-4]
 00585E0F    add         eax,1C
 00585E12    call        @IntfClear
 00585E17    cmp         dword ptr ds:[6ECCC0],0;gvar_006ECCC0:IInterface
>00585E1E    je          00585E2A
 00585E20    mov         eax,6ECCC0;gvar_006ECCC0:IInterface
 00585E25    call        @IntfClear
 00585E2A    pop         ecx
 00585E2B    pop         ebp
 00585E2C    ret
end;*}

//00585E30
{*function sub_00585E30(?:?; ?:?):?;
begin
 00585E30    push        ebp
 00585E31    mov         ebp,esp
 00585E33    add         esp,0FFFFFFF0
 00585E36    push        ebx
 00585E37    xor         ecx,ecx
 00585E39    mov         dword ptr [ebp-10],ecx
 00585E3C    mov         dword ptr [ebp-8],edx
 00585E3F    mov         dword ptr [ebp-4],eax
 00585E42    xor         eax,eax
 00585E44    push        ebp
 00585E45    push        585E93
 00585E4A    push        dword ptr fs:[eax]
 00585E4D    mov         dword ptr fs:[eax],esp
 00585E50    mov         byte ptr [ebp-9],1
 00585E54    cmp         dword ptr ds:[6ECCC0],0;gvar_006ECCC0:IInterface
>00585E5B    je          00585E7D
 00585E5D    lea         ecx,[ebp-10]
 00585E60    xor         edx,edx
 00585E62    mov         eax,dword ptr [ebp-4]
 00585E65    call        00585990
 00585E6A    mov         ecx,dword ptr [ebp-10]
 00585E6D    mov         edx,dword ptr [ebp-8]
 00585E70    mov         eax,[006ECCC0];0x0 gvar_006ECCC0:IInterface
 00585E75    mov         ebx,dword ptr [eax]
 00585E77    call        dword ptr [ebx+10]
 00585E7A    mov         byte ptr [ebp-9],al
 00585E7D    xor         eax,eax
 00585E7F    pop         edx
 00585E80    pop         ecx
 00585E81    pop         ecx
 00585E82    mov         dword ptr fs:[eax],edx
 00585E85    push        585E9A
 00585E8A    lea         eax,[ebp-10]
 00585E8D    call        @LStrClr
 00585E92    ret
>00585E93    jmp         @HandleFinally
>00585E98    jmp         00585E8A
 00585E9A    mov         al,byte ptr [ebp-9]
 00585E9D    pop         ebx
 00585E9E    mov         esp,ebp
 00585EA0    pop         ebp
 00585EA1    ret
end;*}

//00585EA4
{*procedure sub_00585EA4(?:?; ?:?);
begin
 00585EA4    push        ebp
 00585EA5    mov         ebp,esp
 00585EA7    add         esp,0FFFFFEE8
 00585EAD    xor         ecx,ecx
 00585EAF    mov         dword ptr [ebp-118],ecx
 00585EB5    mov         dword ptr [ebp-0C],ecx
 00585EB8    mov         dword ptr [ebp-8],edx
 00585EBB    mov         dword ptr [ebp-4],eax
 00585EBE    xor         eax,eax
 00585EC0    push        ebp
 00585EC1    push        585FA9
 00585EC6    push        dword ptr fs:[eax]
 00585EC9    mov         dword ptr fs:[eax],esp
 00585ECC    mov         eax,dword ptr [ebp-8]
 00585ECF    mov         dword ptr [ebp-114],eax
 00585ED5    mov         byte ptr [ebp-110],0B
 00585EDC    lea         eax,[ebp-114]
 00585EE2    push        eax
 00585EE3    push        0
 00585EE5    mov         ecx,585FB4
 00585EEA    lea         eax,[ebp-10C]
 00585EF0    mov         edx,0FF
 00585EF5    call        00658F64
 00585EFA    lea         ecx,[ebp-0C]
 00585EFD    xor         edx,edx
 00585EFF    mov         eax,dword ptr [ebp-4]
 00585F02    call        00585990
 00585F07    mov         eax,dword ptr [ebp-4]
 00585F0A    call        005863F0
 00585F0F    test        al,al
>00585F11    je          00585F88
 00585F13    push        0
 00585F15    lea         eax,[ebp-118]
 00585F1B    lea         edx,[ebp-10C]
 00585F21    mov         ecx,100
 00585F26    call        @LStrFromArray
 00585F2B    mov         ecx,dword ptr [ebp-118]
 00585F31    mov         dl,1
 00585F33    mov         eax,dword ptr [ebp-4]
 00585F36    call        00586308
 00585F3B    test        al,al
>00585F3D    je          00585F88
 00585F3F    cmp         dword ptr [ebp-0C],0
>00585F43    je          00585F88
 00585F45    mov         eax,dword ptr [ebp-4]
 00585F48    mov         byte ptr [eax+10],1
 00585F4C    mov         eax,dword ptr [ebp-4]
 00585F4F    add         eax,14
 00585F52    lea         edx,[ebp-10C]
 00585F58    mov         ecx,100
 00585F5D    call        @LStrFromArray
 00585F62    lea         eax,[ebp-10C]
 00585F68    push        eax
 00585F69    push        102
 00585F6E    mov         eax,dword ptr [ebp-0C]
 00585F71    call        @LStrToPChar
 00585F76    push        eax
 00585F77    mov         eax,dword ptr [ebp-4]
 00585F7A    mov         eax,dword ptr [eax+1C]
 00585F7D    mov         edx,dword ptr [eax]
 00585F7F    call        dword ptr [edx+0C]
 00585F82    push        eax
 00585F83    call        USER32.WinHelpA
 00585F88    xor         eax,eax
 00585F8A    pop         edx
 00585F8B    pop         ecx
 00585F8C    pop         ecx
 00585F8D    mov         dword ptr fs:[eax],edx
 00585F90    push        585FB0
 00585F95    lea         eax,[ebp-118]
 00585F9B    call        @LStrClr
 00585FA0    lea         eax,[ebp-0C]
 00585FA3    call        @LStrClr
 00585FA8    ret
>00585FA9    jmp         @HandleFinally
>00585FAE    jmp         00585F95
 00585FB0    mov         esp,ebp
 00585FB2    pop         ebp
 00585FB3    ret
end;*}

//00585FC4
{*function sub_00585FC4(?:?; ?:?; ?:?):?;
begin
 00585FC4    push        ebp
 00585FC5    mov         ebp,esp
 00585FC7    add         esp,0FFFFFFEC
 00585FCA    push        ebx
 00585FCB    xor         ebx,ebx
 00585FCD    mov         dword ptr [ebp-14],ebx
 00585FD0    mov         dword ptr [ebp-0C],ecx
 00585FD3    mov         dword ptr [ebp-8],edx
 00585FD6    mov         dword ptr [ebp-4],eax
 00585FD9    xor         eax,eax
 00585FDB    push        ebp
 00585FDC    push        58602B
 00585FE1    push        dword ptr fs:[eax]
 00585FE4    mov         dword ptr fs:[eax],esp
 00585FE7    mov         byte ptr [ebp-0D],1
 00585FEB    cmp         dword ptr ds:[6ECCC0],0;gvar_006ECCC0:IInterface
>00585FF2    je          00586015
 00585FF4    lea         ecx,[ebp-14]
 00585FF7    mov         edx,dword ptr [ebp-0C]
 00585FFA    mov         eax,dword ptr [ebp-4]
 00585FFD    call        00585990
 00586002    mov         ecx,dword ptr [ebp-14]
 00586005    mov         edx,dword ptr [ebp-8]
 00586008    mov         eax,[006ECCC0];0x0 gvar_006ECCC0:IInterface
 0058600D    mov         ebx,dword ptr [eax]
 0058600F    call        dword ptr [ebx+14]
 00586012    mov         byte ptr [ebp-0D],al
 00586015    xor         eax,eax
 00586017    pop         edx
 00586018    pop         ecx
 00586019    pop         ecx
 0058601A    mov         dword ptr fs:[eax],edx
 0058601D    push        586032
 00586022    lea         eax,[ebp-14]
 00586025    call        @LStrClr
 0058602A    ret
>0058602B    jmp         @HandleFinally
>00586030    jmp         00586022
 00586032    mov         al,byte ptr [ebp-0D]
 00586035    pop         ebx
 00586036    mov         esp,ebp
 00586038    pop         ebp
 00586039    ret
end;*}

//0058603C
{*procedure sub_0058603C(?:?; ?:?; ?:?);
begin
 0058603C    push        ebp
 0058603D    mov         ebp,esp
 0058603F    add         esp,0FFFFFFF0
 00586042    push        ebx
 00586043    xor         ebx,ebx
 00586045    mov         dword ptr [ebp-10],ebx
 00586048    mov         dword ptr [ebp-0C],ecx
 0058604B    mov         dword ptr [ebp-8],edx
 0058604E    mov         dword ptr [ebp-4],eax
 00586051    xor         eax,eax
 00586053    push        ebp
 00586054    push        5860D9
 00586059    push        dword ptr fs:[eax]
 0058605C    mov         dword ptr fs:[eax],esp
 0058605F    lea         ecx,[ebp-10]
 00586062    mov         edx,dword ptr [ebp-0C]
 00586065    mov         eax,dword ptr [ebp-4]
 00586068    call        00585990
 0058606D    mov         eax,dword ptr [ebp-4]
 00586070    call        005863F0
 00586075    test        al,al
>00586077    je          005860C3
 00586079    mov         eax,dword ptr [ebp-8]
 0058607C    push        eax
 0058607D    xor         ecx,ecx
 0058607F    xor         edx,edx
 00586081    mov         eax,dword ptr [ebp-4]
 00586084    call        00586308
 00586089    test        al,al
>0058608B    je          005860C3
 0058608D    cmp         dword ptr [ebp-10],0
>00586091    je          005860C3
 00586093    mov         eax,dword ptr [ebp-4]
 00586096    mov         byte ptr [eax+10],0
 0058609A    mov         eax,dword ptr [ebp-8]
 0058609D    mov         edx,dword ptr [ebp-4]
 005860A0    mov         dword ptr [edx+18],eax
 005860A3    mov         eax,dword ptr [ebp-8]
 005860A6    push        eax
 005860A7    push        1
 005860A9    mov         eax,dword ptr [ebp-10]
 005860AC    call        @LStrToPChar
 005860B1    push        eax
 005860B2    mov         eax,dword ptr [ebp-4]
 005860B5    mov         eax,dword ptr [eax+1C]
 005860B8    mov         edx,dword ptr [eax]
 005860BA    call        dword ptr [edx+0C]
 005860BD    push        eax
 005860BE    call        USER32.WinHelpA
 005860C3    xor         eax,eax
 005860C5    pop         edx
 005860C6    pop         ecx
 005860C7    pop         ecx
 005860C8    mov         dword ptr fs:[eax],edx
 005860CB    push        5860E0
 005860D0    lea         eax,[ebp-10]
 005860D3    call        @LStrClr
 005860D8    ret
>005860D9    jmp         @HandleFinally
>005860DE    jmp         005860D0
 005860E0    pop         ebx
 005860E1    mov         esp,ebp
 005860E3    pop         ebp
 005860E4    ret
end;*}

//005860E8
{*function sub_005860E8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005860E8    push        ebp
 005860E9    mov         ebp,esp
 005860EB    add         esp,0FFFFFFE4
 005860EE    push        ebx
 005860EF    xor         ebx,ebx
 005860F1    mov         dword ptr [ebp-1C],ebx
 005860F4    mov         dword ptr [ebp-18],ebx
 005860F7    mov         dword ptr [ebp-14],ebx
 005860FA    mov         dword ptr [ebp-0C],ecx
 005860FD    mov         dword ptr [ebp-8],edx
 00586100    mov         dword ptr [ebp-4],eax
 00586103    xor         eax,eax
 00586105    push        ebp
 00586106    push        5861FB
 0058610B    push        dword ptr fs:[eax]
 0058610E    mov         dword ptr fs:[eax],esp
 00586111    mov         byte ptr [ebp-0D],0
 00586115    mov         byte ptr [ebp-0E],0
 00586119    mov         eax,dword ptr [ebp-4]
 0058611C    call        005863F0
 00586121    test        al,al
>00586123    je          005861E0
 00586129    cmp         word ptr [ebp+0C],102
>0058612F    je          0058615E
 00586131    cmp         word ptr [ebp+0C],105
>00586137    je          0058615E
 00586139    cmp         word ptr [ebp+0C],201
>0058613F    je          0058615E
 00586141    cmp         word ptr [ebp+0C],0A
>00586146    je          0058615E
 00586148    cmp         word ptr [ebp+0C],8
>0058614D    je          0058615E
 0058614F    cmp         word ptr [ebp+0C],1
>00586154    je          0058615E
 00586156    cmp         word ptr [ebp+0C],101
>0058615C    jne         00586183
 0058615E    push        0
 00586160    lea         edx,[ebp-14]
 00586163    movzx       eax,word ptr [ebp+0C]
 00586167    call        IntToStr
 0058616C    mov         ecx,dword ptr [ebp-14]
 0058616F    mov         dl,1
 00586171    mov         eax,dword ptr [ebp-4]
 00586174    call        00586308
 00586179    test        al,al
>0058617B    je          00586187
 0058617D    mov         byte ptr [ebp-0E],1
>00586181    jmp         00586187
 00586183    mov         byte ptr [ebp-0E],1
 00586187    cmp         byte ptr [ebp-0E],0
>0058618B    je          005861E0
 0058618D    mov         eax,dword ptr [ebp-4]
 00586190    mov         byte ptr [eax+10],1
 00586194    lea         edx,[ebp-18]
 00586197    movzx       eax,word ptr [ebp+0C]
 0058619B    call        IntToStr
 005861A0    mov         edx,dword ptr [ebp-18]
 005861A3    mov         eax,dword ptr [ebp-4]
 005861A6    add         eax,14
 005861A9    call        @LStrAsg
 005861AE    mov         eax,dword ptr [ebp+8]
 005861B1    push        eax
 005861B2    movzx       eax,word ptr [ebp+0C]
 005861B6    push        eax
 005861B7    lea         ecx,[ebp-1C]
 005861BA    mov         edx,dword ptr [ebp-0C]
 005861BD    mov         eax,dword ptr [ebp-4]
 005861C0    call        00585990
 005861C5    mov         eax,dword ptr [ebp-1C]
 005861C8    call        @LStrToPChar
 005861CD    push        eax
 005861CE    mov         eax,dword ptr [ebp-8]
 005861D1    push        eax
 005861D2    call        USER32.WinHelpA
 005861D7    cmp         eax,1
 005861DA    sbb         eax,eax
 005861DC    inc         eax
 005861DD    mov         byte ptr [ebp-0D],al
 005861E0    xor         eax,eax
 005861E2    pop         edx
 005861E3    pop         ecx
 005861E4    pop         ecx
 005861E5    mov         dword ptr fs:[eax],edx
 005861E8    push        586202
 005861ED    lea         eax,[ebp-1C]
 005861F0    mov         edx,3
 005861F5    call        @LStrArrayClr
 005861FA    ret
>005861FB    jmp         @HandleFinally
>00586200    jmp         005861ED
 00586202    mov         al,byte ptr [ebp-0D]
 00586205    pop         ebx
 00586206    mov         esp,ebp
 00586208    pop         ebp
 00586209    ret         8
end;*}

//005862D8
{*procedure sub_005862D8(?:?);
begin
 005862D8    push        ebp
 005862D9    mov         ebp,esp
 005862DB    push        ecx
 005862DC    mov         dword ptr [ebp-4],eax
 005862DF    mov         eax,dword ptr [ebp-4]
 005862E2    mov         byte ptr [eax+0C],0
 005862E6    mov         eax,dword ptr [ebp-4]
 005862E9    mov         byte ptr [eax+0D],0
 005862ED    mov         eax,dword ptr [ebp-4]
 005862F0    xor         edx,edx
 005862F2    mov         dword ptr [eax+4],edx
 005862F5    mov         eax,dword ptr [ebp-4]
 005862F8    push        eax
 005862F9    push        58620C
 005862FE    call        USER32.EnumWindows
 00586303    pop         ecx
 00586304    pop         ebp
 00586305    ret
end;*}

//00586308
{*function sub_00586308(?:?; ?:?; ?:AnsiString; ?:?):?;
begin
 00586308    push        ebp
 00586309    mov         ebp,esp
 0058630B    add         esp,0FFFFFFE0
 0058630E    mov         dword ptr [ebp-0C],ecx
 00586311    mov         byte ptr [ebp-5],dl
 00586314    mov         dword ptr [ebp-4],eax
 00586317    mov         eax,dword ptr [ebp-0C]
 0058631A    call        @LStrAddRef
 0058631F    xor         eax,eax
 00586321    push        ebp
 00586322    push        586390
 00586327    push        dword ptr fs:[eax]
 0058632A    mov         dword ptr fs:[eax],esp
 0058632D    mov         byte ptr [ebp-0D],1
 00586331    lea         eax,[ebp-20]
 00586334    call        005862D8
 00586339    cmp         byte ptr [ebp-14],0
>0058633D    je          0058637A
 0058633F    mov         al,byte ptr [ebp-5]
 00586342    mov         edx,dword ptr [ebp-4]
 00586345    cmp         al,byte ptr [edx+10]
>00586348    jne         0058637A
 0058634A    mov         al,byte ptr [ebp-5]
 0058634D    sub         al,1
>0058634F    jb          0058636B
>00586351    jne         0058637A
 00586353    mov         eax,dword ptr [ebp-4]
 00586356    mov         edx,dword ptr [eax+14]
 00586359    mov         eax,dword ptr [ebp-0C]
 0058635C    call        CompareStr
 00586361    test        eax,eax
>00586363    jne         0058637A
 00586365    mov         byte ptr [ebp-0D],0
>00586369    jmp         0058637A
 0058636B    mov         eax,dword ptr [ebp+8]
 0058636E    mov         edx,dword ptr [ebp-4]
 00586371    cmp         eax,dword ptr [edx+18]
>00586374    jne         0058637A
 00586376    mov         byte ptr [ebp-0D],0
 0058637A    xor         eax,eax
 0058637C    pop         edx
 0058637D    pop         ecx
 0058637E    pop         ecx
 0058637F    mov         dword ptr fs:[eax],edx
 00586382    push        586397
 00586387    lea         eax,[ebp-0C]
 0058638A    call        @LStrClr
 0058638F    ret
>00586390    jmp         @HandleFinally
>00586395    jmp         00586387
 00586397    mov         al,byte ptr [ebp-0D]
 0058639A    mov         esp,ebp
 0058639C    pop         ebp
 0058639D    ret         4
end;*}

//005863A0
{*function sub_005863A0(?:?; ?:?):?;
begin
 005863A0    push        ebp
 005863A1    mov         ebp,esp
 005863A3    add         esp,0FFFFFFE8
 005863A6    push        esi
 005863A7    push        edi
 005863A8    mov         esi,edx
 005863AA    lea         edi,[ebp-18]
 005863AD    movs        dword ptr [edi],dword ptr [esi]
 005863AE    movs        dword ptr [edi],dword ptr [esi]
 005863AF    movs        dword ptr [edi],dword ptr [esi]
 005863B0    movs        dword ptr [edi],dword ptr [esi]
 005863B1    mov         dword ptr [ebp-4],eax
 005863B4    mov         byte ptr [ebp-5],0
 005863B8    mov         al,byte ptr [ebp-5]
 005863BB    pop         edi
 005863BC    pop         esi
 005863BD    mov         esp,ebp
 005863BF    pop         ebp
 005863C0    ret
end;*}

//005863C4
{*function sub_005863C4(?:?; ?:?):?;
begin
 005863C4    push        ebp
 005863C5    mov         ebp,esp
 005863C7    add         esp,0FFFFFFE8
 005863CA    push        esi
 005863CB    push        edi
 005863CC    mov         esi,edx
 005863CE    lea         edi,[ebp-18]
 005863D1    movs        dword ptr [edi],dword ptr [esi]
 005863D2    movs        dword ptr [edi],dword ptr [esi]
 005863D3    movs        dword ptr [edi],dword ptr [esi]
 005863D4    movs        dword ptr [edi],dword ptr [esi]
 005863D5    mov         dword ptr [ebp-4],eax
 005863D8    mov         byte ptr [ebp-5],0
 005863DC    cmp         byte ptr [ebp-0B],0
>005863E0    jne         005863E6
 005863E2    mov         byte ptr [ebp-5],1
 005863E6    mov         al,byte ptr [ebp-5]
 005863E9    pop         edi
 005863EA    pop         esi
 005863EB    mov         esp,ebp
 005863ED    pop         ebp
 005863EE    ret
end;*}

//005863F0
{*function sub_005863F0(?:?):?;
begin
 005863F0    push        ebp
 005863F1    mov         ebp,esp
 005863F3    add         esp,0FFFFFFE8
 005863F6    mov         dword ptr [ebp-4],eax
 005863F9    mov         byte ptr [ebp-5],0
 005863FD    cmp         byte ptr [ebp-0C],0
>00586401    je          0058641D
 00586403    lea         eax,[ebp-18]
 00586406    push        eax
 00586407    push        586274
 0058640C    push        0
 0058640E    mov         eax,dword ptr [ebp-14]
 00586411    push        eax
 00586412    call        USER32.GetWindowThreadProcessId
 00586417    push        eax
 00586418    call        USER32.EnumThreadWindows
 0058641D    lea         edx,[ebp-18]
 00586420    mov         eax,dword ptr [ebp-4]
 00586423    call        005863A0
 00586428    test        al,al
>0058642A    jne         00586447
 0058642C    lea         edx,[ebp-18]
 0058642F    mov         eax,dword ptr [ebp-4]
 00586432    call        005863C4
 00586437    test        al,al
>00586439    je          00586443
 0058643B    mov         eax,dword ptr [ebp-4]
 0058643E    call        00586450
 00586443    mov         byte ptr [ebp-5],1
 00586447    mov         al,byte ptr [ebp-5]
 0058644A    mov         esp,ebp
 0058644C    pop         ebp
 0058644D    ret
end;*}

//00586450
{*procedure sub_00586450(?:?);
begin
 00586450    push        ebp
 00586451    mov         ebp,esp
 00586453    add         esp,0FFFFFFF4
 00586456    xor         edx,edx
 00586458    mov         dword ptr [ebp-0C],edx
 0058645B    mov         dword ptr [ebp-4],eax
 0058645E    xor         eax,eax
 00586460    push        ebp
 00586461    push        5864D9
 00586466    push        dword ptr fs:[eax]
 00586469    mov         dword ptr fs:[eax],esp
 0058646C    mov         eax,dword ptr [ebp-4]
 0058646F    call        00585DCC
 00586474    call        KERNEL32.GetTickCount
 00586479    mov         dword ptr [ebp-8],eax
 0058647C    push        0
 0058647E    call        KERNEL32.Sleep
 00586483    call        KERNEL32.GetTickCount
 00586488    sub         eax,dword ptr [ebp-8]
 0058648B    cmp         eax,3E8
>00586490    jbe         0058647C
 00586492    lea         ecx,[ebp-0C]
 00586495    xor         edx,edx
 00586497    mov         eax,dword ptr [ebp-4]
 0058649A    call        00585990
 0058649F    cmp         dword ptr [ebp-0C],0
>005864A3    je          005864C3
 005864A5    push        0
 005864A7    push        9
 005864A9    mov         eax,dword ptr [ebp-0C]
 005864AC    call        @LStrToPChar
 005864B1    push        eax
 005864B2    mov         eax,dword ptr [ebp-4]
 005864B5    mov         eax,dword ptr [eax+1C]
 005864B8    mov         edx,dword ptr [eax]
 005864BA    call        dword ptr [edx+0C]
 005864BD    push        eax
 005864BE    call        USER32.WinHelpA
 005864C3    xor         eax,eax
 005864C5    pop         edx
 005864C6    pop         ecx
 005864C7    pop         ecx
 005864C8    mov         dword ptr fs:[eax],edx
 005864CB    push        5864E0
 005864D0    lea         eax,[ebp-0C]
 005864D3    call        @LStrClr
 005864D8    ret
>005864D9    jmp         @HandleFinally
>005864DE    jmp         005864D0
 005864E0    mov         esp,ebp
 005864E2    pop         ebp
 005864E3    ret
end;*}

end.