//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit88;

interface

uses
  SysUtils, Classes;

type
  TObjectList = class(TList)
  public
    .:byte;//f10
    //procedure v4(?:?; ?:?); virtual;//v4//00654DC4
    constructor Create;//00654D34
  end;
  TOrderedList = class(TObject)
  public
    ...........:TList;//f4
    destructor Destroy; virtual;//00654E90
    procedure v0; virtual; abstract;//v0//0066AC84
    //function v4:?; virtual;//v4//00654EF4
    //function v8:?; virtual;//v8//00654ECC
  end;
  TStack = class(TOrderedList)
  public
    //procedure v0(?:?); virtual;//v0//00654F24
  end;
    procedure sub_00654BFC;//00654BFC
    //function sub_00654D7C(?:?; ?:?):?;//00654D7C
    procedure sub_00654DA0(?:TObjectList; ?:Integer; ?:THelpViewerNode);//00654DA0
    //procedure sub_00654DC4(?:?; ?:?);//00654DC4
    //function sub_00654DFC(?:TMenuItemStack):?;//00654DFC
    //function sub_00654E18(?:TMenuItemStack; ?:TMenuItem):?;//00654E18
    constructor Create;//00654E3C
    destructor Destroy;//00654E90
    //function sub_00654ECC:?;//00654ECC
    //function sub_00654EF4:?;//00654EF4
    //procedure sub_00654F24(?:?);//00654F24

implementation

//00654BFC
procedure sub_00654BFC;
begin
{*
 00654BFC    sub         dword ptr ds:[6ECFE4],1
 00654C03    ret
*}
end;

//00654D34
constructor TObjectList.Create;
begin
{*
 00654D34    push        ebp
 00654D35    mov         ebp,esp
 00654D37    add         esp,0FFFFFFF8
 00654D3A    test        dl,dl
>00654D3C    je          00654D46
 00654D3E    add         esp,0FFFFFFF0
 00654D41    call        @ClassCreate
 00654D46    mov         byte ptr [ebp-5],dl
 00654D49    mov         dword ptr [ebp-4],eax
 00654D4C    xor         edx,edx
 00654D4E    mov         eax,dword ptr [ebp-4]
 00654D51    call        TObject.Create
 00654D56    mov         eax,dword ptr [ebp-4]
 00654D59    mov         byte ptr [eax+10],1;TObjectList...:byte
 00654D5D    mov         eax,dword ptr [ebp-4]
 00654D60    cmp         byte ptr [ebp-5],0
>00654D64    je          00654D75
 00654D66    call        @AfterConstruction
 00654D6B    pop         dword ptr fs:[0]
 00654D72    add         esp,0C
 00654D75    mov         eax,dword ptr [ebp-4]
 00654D78    pop         ecx
 00654D79    pop         ecx
 00654D7A    pop         ebp
 00654D7B    ret
*}
end;

//00654D7C
{*function sub_00654D7C(?:?; ?:?):?;
begin
 00654D7C    push        ebp
 00654D7D    mov         ebp,esp
 00654D7F    add         esp,0FFFFFFF4
 00654D82    mov         dword ptr [ebp-8],edx
 00654D85    mov         dword ptr [ebp-4],eax
 00654D88    mov         edx,dword ptr [ebp-8]
 00654D8B    mov         eax,dword ptr [ebp-4]
 00654D8E    call        TList.Get
 00654D93    mov         dword ptr [ebp-0C],eax
 00654D96    mov         eax,dword ptr [ebp-0C]
 00654D99    mov         esp,ebp
 00654D9B    pop         ebp
 00654D9C    ret
end;*}

//00654DA0
procedure sub_00654DA0(?:TObjectList; ?:Integer; ?:THelpViewerNode);
begin
{*
 00654DA0    push        ebp
 00654DA1    mov         ebp,esp
 00654DA3    add         esp,0FFFFFFF4
 00654DA6    mov         dword ptr [ebp-0C],ecx
 00654DA9    mov         dword ptr [ebp-8],edx
 00654DAC    mov         dword ptr [ebp-4],eax
 00654DAF    mov         ecx,dword ptr [ebp-0C]
 00654DB2    mov         edx,dword ptr [ebp-8]
 00654DB5    mov         eax,dword ptr [ebp-4]
 00654DB8    call        TList.Insert
 00654DBD    mov         esp,ebp
 00654DBF    pop         ebp
 00654DC0    ret
*}
end;

//00654DC4
{*procedure sub_00654DC4(?:?; ?:?);
begin
 00654DC4    push        ebp
 00654DC5    mov         ebp,esp
 00654DC7    add         esp,0FFFFFFF4
 00654DCA    mov         byte ptr [ebp-9],cl
 00654DCD    mov         dword ptr [ebp-8],edx
 00654DD0    mov         dword ptr [ebp-4],eax
 00654DD3    mov         eax,dword ptr [ebp-4]
 00654DD6    cmp         byte ptr [eax+10],0;TObjectList....:byte
>00654DDA    je          00654DEA
 00654DDC    cmp         byte ptr [ebp-9],2
>00654DE0    jne         00654DEA
 00654DE2    mov         eax,dword ptr [ebp-8]
 00654DE5    call        TObject.Free
 00654DEA    mov         cl,byte ptr [ebp-9]
 00654DED    mov         edx,dword ptr [ebp-8]
 00654DF0    mov         eax,dword ptr [ebp-4]
 00654DF3    call        006455B8
 00654DF8    mov         esp,ebp
 00654DFA    pop         ebp
 00654DFB    ret
end;*}

//00654DFC
{*function sub_00654DFC(?:TMenuItemStack):?;
begin
 00654DFC    push        ebp
 00654DFD    mov         ebp,esp
 00654DFF    add         esp,0FFFFFFF8
 00654E02    mov         dword ptr [ebp-4],eax
 00654E05    mov         eax,dword ptr [ebp-4]
 00654E08    mov         edx,dword ptr [eax]
 00654E0A    call        dword ptr [edx+4];TMenuItemStack.sub_00654EF4
 00654E0D    mov         dword ptr [ebp-8],eax
 00654E10    mov         eax,dword ptr [ebp-8]
 00654E13    pop         ecx
 00654E14    pop         ecx
 00654E15    pop         ebp
 00654E16    ret
end;*}

//00654E18
{*function sub_00654E18(?:TMenuItemStack; ?:TMenuItem):?;
begin
 00654E18    push        ebp
 00654E19    mov         ebp,esp
 00654E1B    add         esp,0FFFFFFF4
 00654E1E    mov         dword ptr [ebp-8],edx
 00654E21    mov         dword ptr [ebp-4],eax
 00654E24    mov         edx,dword ptr [ebp-8]
 00654E27    mov         eax,dword ptr [ebp-4]
 00654E2A    mov         ecx,dword ptr [eax]
 00654E2C    call        dword ptr [ecx];TMenuItemStack.sub_00654F24
 00654E2E    mov         eax,dword ptr [ebp-8]
 00654E31    mov         dword ptr [ebp-0C],eax
 00654E34    mov         eax,dword ptr [ebp-0C]
 00654E37    mov         esp,ebp
 00654E39    pop         ebp
 00654E3A    ret
end;*}

//00654E3C
constructor TMenuItemStack.Create;
begin
{*
 00654E3C    push        ebp
 00654E3D    mov         ebp,esp
 00654E3F    add         esp,0FFFFFFF8
 00654E42    test        dl,dl
>00654E44    je          00654E4E
 00654E46    add         esp,0FFFFFFF0
 00654E49    call        @ClassCreate
 00654E4E    mov         byte ptr [ebp-5],dl
 00654E51    mov         dword ptr [ebp-4],eax
 00654E54    xor         edx,edx
 00654E56    mov         eax,dword ptr [ebp-4]
 00654E59    call        TObject.Create
 00654E5E    mov         dl,1
 00654E60    mov         eax,[006422A4];TList
 00654E65    call        TObject.Create;TList.Create
 00654E6A    mov         edx,dword ptr [ebp-4]
 00654E6D    mov         dword ptr [edx+4],eax;TMenuItemStack.............:TList
 00654E70    mov         eax,dword ptr [ebp-4]
 00654E73    cmp         byte ptr [ebp-5],0
>00654E77    je          00654E88
 00654E79    call        @AfterConstruction
 00654E7E    pop         dword ptr fs:[0]
 00654E85    add         esp,0C
 00654E88    mov         eax,dword ptr [ebp-4]
 00654E8B    pop         ecx
 00654E8C    pop         ecx
 00654E8D    pop         ebp
 00654E8E    ret
*}
end;

//00654E90
destructor TOrderedList.Destroy;
begin
{*
 00654E90    push        ebp
 00654E91    mov         ebp,esp
 00654E93    add         esp,0FFFFFFF8
 00654E96    call        @BeforeDestruction
 00654E9B    mov         byte ptr [ebp-5],dl
 00654E9E    mov         dword ptr [ebp-4],eax
 00654EA1    mov         eax,dword ptr [ebp-4]
 00654EA4    mov         eax,dword ptr [eax+4]
 00654EA7    call        TObject.Free
 00654EAC    mov         dl,byte ptr [ebp-5]
 00654EAF    and         dl,0FC
 00654EB2    mov         eax,dword ptr [ebp-4]
 00654EB5    call        TObject.Destroy
 00654EBA    cmp         byte ptr [ebp-5],0
>00654EBE    jle         00654EC8
 00654EC0    mov         eax,dword ptr [ebp-4]
 00654EC3    call        @ClassDestroy
 00654EC8    pop         ecx
 00654EC9    pop         ecx
 00654ECA    pop         ebp
 00654ECB    ret
*}
end;

//00654ECC
{*function sub_00654ECC:?;
begin
 00654ECC    push        ebp
 00654ECD    mov         ebp,esp
 00654ECF    add         esp,0FFFFFFF8
 00654ED2    mov         dword ptr [ebp-4],eax
 00654ED5    mov         eax,dword ptr [ebp-4]
 00654ED8    mov         eax,dword ptr [eax+4];TOrderedList..............:TList
 00654EDB    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 00654EDE    dec         edx
 00654EDF    mov         eax,dword ptr [ebp-4]
 00654EE2    mov         eax,dword ptr [eax+4];TOrderedList...............:TList
 00654EE5    call        TList.Get
 00654EEA    mov         dword ptr [ebp-8],eax
 00654EED    mov         eax,dword ptr [ebp-8]
 00654EF0    pop         ecx
 00654EF1    pop         ecx
 00654EF2    pop         ebp
 00654EF3    ret
end;*}

//00654EF4
{*function sub_00654EF4:?;
begin
 00654EF4    push        ebp
 00654EF5    mov         ebp,esp
 00654EF7    add         esp,0FFFFFFF8
 00654EFA    mov         dword ptr [ebp-4],eax
 00654EFD    mov         eax,dword ptr [ebp-4]
 00654F00    mov         edx,dword ptr [eax]
 00654F02    call        dword ptr [edx+8];TOrderedList.sub_00654ECC
 00654F05    mov         dword ptr [ebp-8],eax
 00654F08    mov         eax,dword ptr [ebp-4]
 00654F0B    mov         eax,dword ptr [eax+4];TOrderedList................:TList
 00654F0E    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 00654F11    dec         edx
 00654F12    mov         eax,dword ptr [ebp-4]
 00654F15    mov         eax,dword ptr [eax+4];TOrderedList.................:TList
 00654F18    call        TList.Delete
 00654F1D    mov         eax,dword ptr [ebp-8]
 00654F20    pop         ecx
 00654F21    pop         ecx
 00654F22    pop         ebp
 00654F23    ret
end;*}

//00654F24
{*procedure sub_00654F24(?:?);
begin
 00654F24    push        ebp
 00654F25    mov         ebp,esp
 00654F27    add         esp,0FFFFFFF8
 00654F2A    mov         dword ptr [ebp-8],edx
 00654F2D    mov         dword ptr [ebp-4],eax
 00654F30    mov         edx,dword ptr [ebp-8]
 00654F33    mov         eax,dword ptr [ebp-4]
 00654F36    mov         eax,dword ptr [eax+4];TStack..................:TList
 00654F39    call        TList.Add
 00654F3E    pop         ecx
 00654F3F    pop         ecx
 00654F40    pop         ebp
 00654F41    ret
end;*}

end.