//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit80;

interface

uses
  SysUtils, Classes, ;

type
  EHelpSystemException = class(Exception)
  end;
  THelpViewerNode = class(TObject)
  public
    f4:ICustomHelpViewer;//f4
    f8:dword;//f8
    constructor Create;//006400C0
  end;
  THelpManager = class(TInterfacedObject)
  public
    fC:IHelpSelector;//fC
    f10:TObjectList;//f10
    f14:TObjectList;//f14
    f18:TObjectList;//f18
    f1C:dword;//f1C
    f24:String;//f24
    constructor Create;//00640144
  end;
    procedure sub_0063FBEC;//0063FBEC
    //function sub_0063FFB8(?:TWinHelpViewer; ?:?):?;//0063FFB8
    //function sub_00640050(?:?):?;//00640050
    //procedure sub_006401D0(?:THelpManager; ?:TWinHelpViewer; ?:?);//006401D0
    //procedure sub_006403A8(?:?);//006403A8
    //procedure sub_006403EC(?:?);//006403EC
    //function sub_006405B4(?:?; ?:?; ?:?; ?:?; ?:?):?;//006405B4
    //procedure sub_006406E4(?:?; ?:?; ?:?);//006406E4
    //procedure sub_00640944(?:?; ?:?; ?:?);//00640944
    //procedure sub_00640A68(?:?);//00640A68
    //procedure sub_00640A7C(?:?; ?:?; ?:?);//00640A7C
    //procedure sub_00640B98(?:?; ?:?);//00640B98
    //function sub_00640C08(?:?; ?:?; ?:?; ?:?; ?:?):?;//00640C08
    //function sub_00640CD4(?:?):?;//00640CD4
    //procedure sub_00640CF0(?:?; ?:?);//00640CF0
    //procedure sub_00640D10(?:?; ?:?);//00640D10

implementation

//0063FBEC
procedure sub_0063FBEC;
begin
{*
 0063FBEC    sub         dword ptr ds:[6ECF80],1
 0063FBF3    ret
*}
end;

//0063FFB8
{*function sub_0063FFB8(?:TWinHelpViewer; ?:?):?;
begin
 0063FFB8    push        ebp
 0063FFB9    mov         ebp,esp
 0063FFBB    add         esp,0FFFFFFF0
 0063FFBE    xor         ecx,ecx
 0063FFC0    mov         dword ptr [ebp-10],ecx
 0063FFC3    mov         dword ptr [ebp-8],edx
 0063FFC6    mov         dword ptr [ebp-4],eax
 0063FFC9    mov         eax,dword ptr [ebp-4]
 0063FFCC    call        @IntfAddRef
 0063FFD1    mov         eax,dword ptr [ebp-8]
 0063FFD4    test        eax,eax
>0063FFD6    je          0063FFDC
 0063FFD8    xor         edx,edx
 0063FFDA    mov         dword ptr [eax],edx
 0063FFDC    xor         eax,eax
 0063FFDE    push        ebp
 0063FFDF    push        640042
 0063FFE4    push        dword ptr fs:[eax]
 0063FFE7    mov         dword ptr fs:[eax],esp
 0063FFEA    cmp         dword ptr ds:[6ECF88],0;gvar_006ECF88:THelpManager
>0063FFF1    jne         00640004
 0063FFF3    mov         dl,1
 0063FFF5    mov         eax,[0063FF24];THelpManager
 0063FFFA    call        THelpManager.Create;THelpManager.Create
 0063FFFF    mov         [006ECF88],eax;gvar_006ECF88:THelpManager
 00640004    lea         ecx,[ebp-10]
 00640007    mov         edx,dword ptr [ebp-4]
 0064000A    mov         eax,[006ECF88];0x0 gvar_006ECF88:THelpManager
 0064000F    call        006401D0
 00640014    mov         edx,dword ptr [ebp-10]
 00640017    mov         eax,dword ptr [ebp-8]
 0064001A    call        @IntfCopy
 0064001F    xor         eax,eax
 00640021    mov         dword ptr [ebp-0C],eax
 00640024    xor         eax,eax
 00640026    pop         edx
 00640027    pop         ecx
 00640028    pop         ecx
 00640029    mov         dword ptr fs:[eax],edx
 0064002C    push        640049
 00640031    lea         eax,[ebp-10]
 00640034    call        @IntfClear
 00640039    lea         eax,[ebp-4]
 0064003C    call        @IntfClear
 00640041    ret
>00640042    jmp         @HandleFinally
>00640047    jmp         00640031
 00640049    mov         eax,dword ptr [ebp-0C]
 0064004C    mov         esp,ebp
 0064004E    pop         ebp
 0064004F    ret
end;*}

//00640050
{*function sub_00640050(?:?):?;
begin
 00640050    push        ebp
 00640051    mov         ebp,esp
 00640053    add         esp,0FFFFFFF8
 00640056    mov         dword ptr [ebp-4],eax
 00640059    mov         eax,dword ptr [ebp-4]
 0064005C    test        eax,eax
>0064005E    je          00640064
 00640060    xor         edx,edx
 00640062    mov         dword ptr [eax],edx
 00640064    cmp         dword ptr ds:[6ECF88],0;gvar_006ECF88:THelpManager
>0064006B    jne         00640089
 0064006D    mov         dl,1
 0064006F    mov         eax,[0063FF24];THelpManager
 00640074    call        THelpManager.Create;THelpManager.Create
 00640079    mov         [006ECF88],eax;gvar_006ECF88:THelpManager
 0064007E    mov         eax,[006ECF88];0x0 gvar_006ECF88:THelpManager
 00640083    push        eax
 00640084    call        TInterfacedObject._AddRef
 00640089    mov         eax,dword ptr [ebp-4]
 0064008C    mov         edx,dword ptr ds:[6ECF88];0x0 gvar_006ECF88:THelpManager
 00640092    test        edx,edx
>00640094    je          00640099
 00640096    sub         edx,0FFFFFFF8
 00640099    mov         ecx,6400B0;['{B0FC9353-5F0E-11D3-A3B9-00C04F79AD3A}']
 0064009E    call        @IntfCast
 006400A3    xor         eax,eax
 006400A5    mov         dword ptr [ebp-8],eax
 006400A8    mov         eax,dword ptr [ebp-8]
 006400AB    pop         ecx
 006400AC    pop         ecx
 006400AD    pop         ebp
 006400AE    ret
end;*}

//006400C0
constructor THelpViewerNode.Create;
begin
{*
 006400C0    push        ebp
 006400C1    mov         ebp,esp
 006400C3    add         esp,0FFFFFFF4
 006400C6    test        dl,dl
>006400C8    je          006400D2
 006400CA    add         esp,0FFFFFFF0
 006400CD    call        @ClassCreate
 006400D2    mov         dword ptr [ebp-0C],ecx
 006400D5    mov         byte ptr [ebp-5],dl
 006400D8    mov         dword ptr [ebp-4],eax
 006400DB    mov         eax,dword ptr [ebp-0C]
 006400DE    call        @IntfAddRef
 006400E3    xor         eax,eax
 006400E5    push        ebp
 006400E6    push        64011E
 006400EB    push        dword ptr fs:[eax]
 006400EE    mov         dword ptr fs:[eax],esp
 006400F1    mov         eax,dword ptr [ebp-4]
 006400F4    add         eax,4
 006400F7    mov         edx,dword ptr [ebp-0C]
 006400FA    call        @IntfCopy
 006400FF    mov         eax,dword ptr [ebp-0C]
 00640102    push        eax
 00640103    mov         eax,dword ptr [eax]
 00640105    call        dword ptr [eax+4]
 00640108    xor         eax,eax
 0064010A    pop         edx
 0064010B    pop         ecx
 0064010C    pop         ecx
 0064010D    mov         dword ptr fs:[eax],edx
 00640110    push        640125
 00640115    lea         eax,[ebp-0C]
 00640118    call        @IntfClear
 0064011D    ret
>0064011E    jmp         @HandleFinally
>00640123    jmp         00640115
 00640125    mov         eax,dword ptr [ebp-4]
 00640128    cmp         byte ptr [ebp-5],0
>0064012C    je          0064013D
 0064012E    call        @AfterConstruction
 00640133    pop         dword ptr fs:[0]
 0064013A    add         esp,0C
 0064013D    mov         eax,dword ptr [ebp-4]
 00640140    mov         esp,ebp
 00640142    pop         ebp
 00640143    ret
*}
end;

//00640144
constructor THelpManager.Create;
begin
{*
 00640144    push        ebp
 00640145    mov         ebp,esp
 00640147    add         esp,0FFFFFFF8
 0064014A    test        dl,dl
>0064014C    je          00640156
 0064014E    add         esp,0FFFFFFF0
 00640151    call        @ClassCreate
 00640156    mov         byte ptr [ebp-5],dl
 00640159    mov         dword ptr [ebp-4],eax
 0064015C    xor         edx,edx
 0064015E    mov         eax,dword ptr [ebp-4]
 00640161    call        TObject.Create
 00640166    mov         dl,1
 00640168    mov         eax,[00654C04];TObjectList
 0064016D    call        TObjectList.Create;TObjectList.Create
 00640172    mov         edx,dword ptr [ebp-4]
 00640175    mov         dword ptr [edx+10],eax;THelpManager.?f10:TObjectList
 00640178    mov         dl,1
 0064017A    mov         eax,[00654C04];TObjectList
 0064017F    call        TObjectList.Create;TObjectList.Create
 00640184    mov         edx,dword ptr [ebp-4]
 00640187    mov         dword ptr [edx+14],eax;THelpManager.?f14:TObjectList
 0064018A    mov         dl,1
 0064018C    mov         eax,[00654C04];TObjectList
 00640191    call        TObjectList.Create;TObjectList.Create
 00640196    mov         edx,dword ptr [ebp-4]
 00640199    mov         dword ptr [edx+18],eax;THelpManager.?f18:TObjectList
 0064019C    mov         eax,dword ptr [ebp-4]
 0064019F    add         eax,24;THelpManager.?f24:String
 006401A2    call        @LStrClr
 006401A7    mov         eax,dword ptr [ebp-4]
 006401AA    mov         dword ptr [eax+1C],1;THelpManager.?f1C:dword
 006401B1    mov         eax,dword ptr [ebp-4]
 006401B4    cmp         byte ptr [ebp-5],0
>006401B8    je          006401C9
 006401BA    call        @AfterConstruction
 006401BF    pop         dword ptr fs:[0]
 006401C6    add         esp,0C
 006401C9    mov         eax,dword ptr [ebp-4]
 006401CC    pop         ecx
 006401CD    pop         ecx
 006401CE    pop         ebp
 006401CF    ret
*}
end;

//006401D0
{*procedure sub_006401D0(?:THelpManager; ?:TWinHelpViewer; ?:?);
begin
 006401D0    push        ebp
 006401D1    mov         ebp,esp
 006401D3    add         esp,0FFFFFFE8
 006401D6    push        ebx
 006401D7    xor         ebx,ebx
 006401D9    mov         dword ptr [ebp-10],ebx
 006401DC    mov         dword ptr [ebp-14],ebx
 006401DF    mov         dword ptr [ebp-0C],ecx
 006401E2    mov         dword ptr [ebp-8],edx
 006401E5    mov         dword ptr [ebp-4],eax
 006401E8    mov         eax,dword ptr [ebp-8]
 006401EB    call        @IntfAddRef
 006401F0    xor         eax,eax
 006401F2    push        ebp
 006401F3    push        640324
 006401F8    push        dword ptr fs:[eax]
 006401FB    mov         dword ptr fs:[eax],esp
 006401FE    mov         ecx,dword ptr [ebp-8]
 00640201    mov         dl,1
 00640203    mov         eax,[0063FDB4];THelpViewerNode
 00640208    call        THelpViewerNode.Create;THelpViewerNode.Create
 0064020D    mov         dword ptr [ebp-18],eax
 00640210    mov         eax,dword ptr [ebp-4]
 00640213    mov         eax,dword ptr [eax+1C];THelpManager.?f1C:dword
 00640216    mov         edx,dword ptr [ebp-18]
 00640219    mov         dword ptr [edx+8],eax;THelpViewerNode.?f8:dword
 0064021C    mov         eax,dword ptr [ebp-4]
 0064021F    mov         eax,dword ptr [eax+10];THelpManager.?f10:TObjectList
 00640222    mov         edx,dword ptr [eax+8];TObjectList.FCount:Integer
 00640225    mov         ecx,dword ptr [ebp-18]
 00640228    mov         eax,dword ptr [ebp-4]
 0064022B    mov         eax,dword ptr [eax+10];THelpManager.?f10:TObjectList
 0064022E    call        00654DA0
 00640233    mov         eax,dword ptr [ebp-18]
 00640236    mov         edx,dword ptr [eax+8];THelpViewerNode.?f8:dword
 00640239    mov         eax,dword ptr [ebp-8]
 0064023C    mov         ecx,dword ptr [eax]
 0064023E    call        dword ptr [ecx+24]
 00640241    lea         eax,[ebp-10]
 00640244    call        @IntfClear
 00640249    mov         ecx,eax
 0064024B    mov         edx,640330;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00640250    mov         eax,dword ptr [ebp-8]
 00640253    call        Supports
 00640258    test        al,al
>0064025A    je          00640291
 0064025C    mov         ecx,dword ptr [ebp-10]
 0064025F    mov         dl,1
 00640261    mov         eax,[0063FDB4];THelpViewerNode
 00640266    call        THelpViewerNode.Create;THelpViewerNode.Create
 0064026B    mov         dword ptr [ebp-18],eax
 0064026E    mov         eax,dword ptr [ebp-4]
 00640271    mov         eax,dword ptr [eax+1C];THelpManager.?f1C:dword
 00640274    mov         edx,dword ptr [ebp-18]
 00640277    mov         dword ptr [edx+8],eax;THelpViewerNode.?f8:dword
 0064027A    mov         eax,dword ptr [ebp-4]
 0064027D    mov         eax,dword ptr [eax+14];THelpManager.?f14:TObjectList
 00640280    mov         edx,dword ptr [eax+8];TObjectList.FCount:Integer
 00640283    mov         ecx,dword ptr [ebp-18]
 00640286    mov         eax,dword ptr [ebp-4]
 00640289    mov         eax,dword ptr [eax+14];THelpManager.?f14:TObjectList
 0064028C    call        00654DA0
 00640291    lea         eax,[ebp-14]
 00640294    call        @IntfClear
 00640299    mov         ecx,eax
 0064029B    mov         edx,640330;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 006402A0    mov         eax,dword ptr [ebp-8]
 006402A3    call        Supports
 006402A8    test        al,al
>006402AA    je          006402E1
 006402AC    mov         ecx,dword ptr [ebp-14]
 006402AF    mov         dl,1
 006402B1    mov         eax,[0063FDB4];THelpViewerNode
 006402B6    call        THelpViewerNode.Create;THelpViewerNode.Create
 006402BB    mov         dword ptr [ebp-18],eax
 006402BE    mov         eax,dword ptr [ebp-4]
 006402C1    mov         eax,dword ptr [eax+1C];THelpManager.?f1C:dword
 006402C4    mov         edx,dword ptr [ebp-18]
 006402C7    mov         dword ptr [edx+8],eax;THelpViewerNode.?f8:dword
 006402CA    mov         eax,dword ptr [ebp-4]
 006402CD    mov         eax,dword ptr [eax+18];THelpManager.?f18:TObjectList
 006402D0    mov         edx,dword ptr [eax+8];TObjectList.FCount:Integer
 006402D3    mov         ecx,dword ptr [ebp-18]
 006402D6    mov         eax,dword ptr [ebp-4]
 006402D9    mov         eax,dword ptr [eax+18];THelpManager.?f18:TObjectList
 006402DC    call        00654DA0
 006402E1    mov         eax,dword ptr [ebp-4]
 006402E4    inc         dword ptr [eax+1C];THelpManager.?f1C:dword
 006402E7    mov         eax,dword ptr [ebp-0C]
 006402EA    mov         edx,dword ptr [ebp-4]
 006402ED    test        edx,edx
>006402EF    je          006402F4
 006402F1    sub         edx,0FFFFFFF8
 006402F4    mov         ecx,640330;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 006402F9    call        @IntfCast
 006402FE    xor         eax,eax
 00640300    pop         edx
 00640301    pop         ecx
 00640302    pop         ecx
 00640303    mov         dword ptr fs:[eax],edx
 00640306    push        64032B
 0064030B    lea         eax,[ebp-14]
 0064030E    call        @IntfClear
 00640313    lea         eax,[ebp-10]
 00640316    call        @IntfClear
 0064031B    lea         eax,[ebp-8]
 0064031E    call        @IntfClear
 00640323    ret
>00640324    jmp         @HandleFinally
>00640329    jmp         0064030B
 0064032B    pop         ebx
 0064032C    mov         esp,ebp
 0064032E    pop         ebp
 0064032F    ret
end;*}

//006403A8
{*procedure sub_006403A8(?:?);
begin
 006403A8    push        ebp
 006403A9    mov         ebp,esp
 006403AB    add         esp,0FFFFFFF4
 006403AE    mov         dword ptr [ebp-4],eax
 006403B1    mov         eax,dword ptr [ebp-4]
 006403B4    mov         eax,dword ptr [eax+10]
 006403B7    mov         eax,dword ptr [eax+8]
 006403BA    dec         eax
 006403BB    test        eax,eax
>006403BD    jl          006403E8
 006403BF    inc         eax
 006403C0    mov         dword ptr [ebp-0C],eax
 006403C3    mov         dword ptr [ebp-8],0
 006403CA    mov         eax,dword ptr [ebp-4]
 006403CD    mov         eax,dword ptr [eax+10]
 006403D0    mov         edx,dword ptr [ebp-8]
 006403D3    call        00654D7C
 006403D8    mov         eax,dword ptr [eax+4]
 006403DB    mov         edx,dword ptr [eax]
 006403DD    call        dword ptr [edx+28]
 006403E0    inc         dword ptr [ebp-8]
 006403E3    dec         dword ptr [ebp-0C]
>006403E6    jne         006403CA
 006403E8    mov         esp,ebp
 006403EA    pop         ebp
 006403EB    ret
end;*}

//006403EC
{*procedure sub_006403EC(?:?);
begin
 006403EC    push        ebp
 006403ED    mov         ebp,esp
 006403EF    add         esp,0FFFFFFE8
 006403F2    push        ebx
 006403F3    xor         edx,edx
 006403F5    mov         dword ptr [ebp-18],edx
 006403F8    mov         dword ptr [ebp-4],eax
 006403FB    xor         eax,eax
 006403FD    push        ebp
 006403FE    push        6405A6
 00640403    push        dword ptr fs:[eax]
 00640406    mov         dword ptr fs:[eax],esp
 00640409    mov         eax,dword ptr [ebp-4]
 0064040C    mov         eax,dword ptr [eax+10]
 0064040F    cmp         dword ptr [eax+8],1
>00640413    jne         0064044C
 00640415    mov         eax,dword ptr [ebp-4]
 00640418    mov         eax,dword ptr [eax+10]
 0064041B    xor         edx,edx
 0064041D    call        00654D7C
 00640422    mov         eax,dword ptr [eax+4]
 00640425    mov         edx,dword ptr [eax]
 00640427    call        dword ptr [edx+18]
 0064042A    test        al,al
>0064042C    je          00640590
 00640432    mov         eax,dword ptr [ebp-4]
 00640435    mov         eax,dword ptr [eax+10]
 00640438    xor         edx,edx
 0064043A    call        00654D7C
 0064043F    mov         eax,dword ptr [eax+4]
 00640442    mov         edx,dword ptr [eax]
 00640444    call        dword ptr [edx+1C]
>00640447    jmp         00640590
 0064044C    mov         eax,dword ptr [ebp-4]
 0064044F    cmp         dword ptr [eax+0C],0
>00640453    je          0064053E
 00640459    mov         dl,1
 0064045B    mov         eax,[006428B0];TStringList
 00640460    call        TObject.Create;TStringList.Create
 00640465    mov         dword ptr [ebp-8],eax
 00640468    xor         eax,eax
 0064046A    push        ebp
 0064046B    push        640537
 00640470    push        dword ptr fs:[eax]
 00640473    mov         dword ptr fs:[eax],esp
 00640476    mov         eax,dword ptr [ebp-4]
 00640479    mov         eax,dword ptr [eax+10]
 0064047C    mov         eax,dword ptr [eax+8]
 0064047F    dec         eax
 00640480    test        eax,eax
>00640482    jl          006404D3
 00640484    inc         eax
 00640485    mov         dword ptr [ebp-14],eax
 00640488    mov         dword ptr [ebp-0C],0
 0064048F    mov         eax,dword ptr [ebp-4]
 00640492    mov         eax,dword ptr [eax+10]
 00640495    mov         edx,dword ptr [ebp-0C]
 00640498    call        00654D7C
 0064049D    mov         dword ptr [ebp-10],eax
 006404A0    mov         eax,dword ptr [ebp-10]
 006404A3    mov         eax,dword ptr [eax+4]
 006404A6    mov         edx,dword ptr [eax]
 006404A8    call        dword ptr [edx+18]
 006404AB    test        al,al
>006404AD    je          006404CB
 006404AF    lea         edx,[ebp-18]
 006404B2    mov         eax,dword ptr [ebp-10]
 006404B5    mov         eax,dword ptr [eax+4]
 006404B8    mov         ecx,dword ptr [eax]
 006404BA    call        dword ptr [ecx+0C]
 006404BD    mov         edx,dword ptr [ebp-18]
 006404C0    mov         ecx,dword ptr [ebp-10]
 006404C3    mov         eax,dword ptr [ebp-8]
 006404C6    mov         ebx,dword ptr [eax]
 006404C8    call        dword ptr [ebx+3C];TStringList.sub_00647DEC
 006404CB    inc         dword ptr [ebp-0C]
 006404CE    dec         dword ptr [ebp-14]
>006404D1    jne         0064048F
 006404D3    mov         eax,dword ptr [ebp-8]
 006404D6    mov         edx,dword ptr [eax]
 006404D8    call        dword ptr [edx+14];TStringList.sub_00648198
 006404DB    dec         eax
>006404DC    jle         0064050F
 006404DE    mov         eax,dword ptr [ebp-8]
 006404E1    mov         edx,dword ptr [eax]
 006404E3    call        dword ptr [edx+90];TStringList.sub_00648640
 006404E9    mov         eax,dword ptr [ebp-4]
 006404EC    mov         eax,dword ptr [eax+0C]
 006404EF    mov         edx,dword ptr [ebp-8]
 006404F2    mov         ecx,dword ptr [eax]
 006404F4    call        dword ptr [ecx+10]
 006404F7    mov         dword ptr [ebp-0C],eax
 006404FA    mov         edx,dword ptr [ebp-0C]
 006404FD    mov         eax,dword ptr [ebp-8]
 00640500    mov         ecx,dword ptr [eax]
 00640502    call        dword ptr [ecx+18];TStringList.sub_006481B4
 00640505    mov         eax,dword ptr [eax+4]
 00640508    mov         edx,dword ptr [eax]
 0064050A    call        dword ptr [edx+1C]
>0064050D    jmp         00640521
 0064050F    xor         edx,edx
 00640511    mov         eax,dword ptr [ebp-8]
 00640514    mov         ecx,dword ptr [eax]
 00640516    call        dword ptr [ecx+18];TStringList.sub_006481B4
 00640519    mov         eax,dword ptr [eax+4]
 0064051C    mov         edx,dword ptr [eax]
 0064051E    call        dword ptr [edx+1C]
 00640521    xor         eax,eax
 00640523    pop         edx
 00640524    pop         ecx
 00640525    pop         ecx
 00640526    mov         dword ptr fs:[eax],edx
 00640529    push        640590
 0064052E    mov         eax,dword ptr [ebp-8]
 00640531    call        TObject.Free
 00640536    ret
>00640537    jmp         @HandleFinally
>0064053C    jmp         0064052E
 0064053E    mov         eax,dword ptr [ebp-4]
 00640541    mov         eax,dword ptr [eax+10]
 00640544    cmp         dword ptr [eax+8],0
>00640548    jle         0064057A
 0064054A    mov         eax,dword ptr [ebp-4]
 0064054D    mov         eax,dword ptr [eax+10]
 00640550    xor         edx,edx
 00640552    call        00654D7C
 00640557    mov         eax,dword ptr [eax+4]
 0064055A    mov         edx,dword ptr [eax]
 0064055C    call        dword ptr [edx+18]
 0064055F    test        al,al
>00640561    je          0064057A
 00640563    mov         eax,dword ptr [ebp-4]
 00640566    mov         eax,dword ptr [eax+10]
 00640569    xor         edx,edx
 0064056B    call        00654D7C
 00640570    mov         eax,dword ptr [eax+4]
 00640573    mov         edx,dword ptr [eax]
 00640575    call        dword ptr [edx+1C]
>00640578    jmp         00640590
 0064057A    mov         ecx,63FF98;^gvar_006EA390
 0064057F    mov         dl,1
 00640581    mov         eax,[0063FD50];EHelpSystemException
 00640586    call        Exception.Create;EHelpSystemException.Create
 0064058B    call        @RaiseExcept
 00640590    xor         eax,eax
 00640592    pop         edx
 00640593    pop         ecx
 00640594    pop         ecx
 00640595    mov         dword ptr fs:[eax],edx
 00640598    push        6405AD
 0064059D    lea         eax,[ebp-18]
 006405A0    call        @LStrClr
 006405A5    ret
>006405A6    jmp         @HandleFinally
>006405AB    jmp         0064059D
 006405AD    pop         ebx
 006405AE    mov         esp,ebp
 006405B0    pop         ebp
 006405B1    ret
end;*}

//006405B4
{*function sub_006405B4(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 006405B4    push        ebp
 006405B5    mov         ebp,esp
 006405B7    add         esp,0FFFFFFE4
 006405BA    push        ebx
 006405BB    xor         ebx,ebx
 006405BD    mov         dword ptr [ebp-1C],ebx
 006405C0    mov         dword ptr [ebp-18],ebx
 006405C3    mov         dword ptr [ebp-14],ebx
 006405C6    mov         dword ptr [ebp-0C],ecx
 006405C9    mov         dword ptr [ebp-8],edx
 006405CC    mov         dword ptr [ebp-4],eax
 006405CF    xor         eax,eax
 006405D1    push        ebp
 006405D2    push        6406C0
 006405D7    push        dword ptr fs:[eax]
 006405DA    mov         dword ptr fs:[eax],esp
 006405DD    mov         byte ptr [ebp-0D],0
 006405E1    cmp         dword ptr [ebp-0C],0
>006405E5    je          006405F5
 006405E7    mov         eax,dword ptr [ebp-4]
 006405EA    add         eax,24
 006405ED    mov         edx,dword ptr [ebp-0C]
 006405F0    call        @LStrAsg
 006405F5    mov         eax,dword ptr [ebp-4]
 006405F8    mov         eax,dword ptr [eax+18]
 006405FB    cmp         dword ptr [eax+8],0
>006405FF    jle         00640697
 00640605    mov         eax,dword ptr [ebp-4]
 00640608    mov         eax,dword ptr [eax+18]
 0064060B    cmp         dword ptr [eax+8],1
>0064060F    jne         00640655
 00640611    xor         edx,edx
 00640613    mov         eax,dword ptr [ebp-4]
 00640616    mov         eax,dword ptr [eax+18]
 00640619    call        00654D7C
 0064061E    mov         edx,dword ptr [eax+4]
 00640621    lea         eax,[ebp-14]
 00640624    call        @IntfCopy
 00640629    mov         ax,word ptr [ebp+0C]
 0064062D    push        eax
 0064062E    mov         eax,dword ptr [ebp+8]
 00640631    push        eax
 00640632    lea         eax,[ebp-18]
 00640635    mov         edx,dword ptr [ebp-14]
 00640638    mov         ecx,6406D4;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 0064063D    call        @IntfCast
 00640642    mov         eax,dword ptr [ebp-18]
 00640645    mov         ecx,dword ptr [ebp-0C]
 00640648    mov         edx,dword ptr [ebp-8]
 0064064B    mov         ebx,dword ptr [eax]
 0064064D    call        dword ptr [ebx+40]
 00640650    mov         byte ptr [ebp-0D],al
>00640653    jmp         00640697
 00640655    xor         edx,edx
 00640657    mov         eax,dword ptr [ebp-4]
 0064065A    mov         eax,dword ptr [eax+18]
 0064065D    call        00654D7C
 00640662    mov         edx,dword ptr [eax+4]
 00640665    lea         eax,[ebp-14]
 00640668    call        @IntfCopy
 0064066D    mov         ax,word ptr [ebp+0C]
 00640671    push        eax
 00640672    mov         eax,dword ptr [ebp+8]
 00640675    push        eax
 00640676    lea         eax,[ebp-1C]
 00640679    mov         edx,dword ptr [ebp-14]
 0064067C    mov         ecx,6406D4;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00640681    call        @IntfCast
 00640686    mov         eax,dword ptr [ebp-1C]
 00640689    mov         ecx,dword ptr [ebp-0C]
 0064068C    mov         edx,dword ptr [ebp-8]
 0064068F    mov         ebx,dword ptr [eax]
 00640691    call        dword ptr [ebx+40]
 00640694    mov         byte ptr [ebp-0D],al
 00640697    xor         eax,eax
 00640699    pop         edx
 0064069A    pop         ecx
 0064069B    pop         ecx
 0064069C    mov         dword ptr fs:[eax],edx
 0064069F    push        6406C7
 006406A4    lea         eax,[ebp-1C]
 006406A7    mov         edx,dword ptr ds:[63FCD8];ISpecialWinHelpViewer
 006406AD    mov         ecx,2
 006406B2    call        @FinalizeArray
 006406B7    lea         eax,[ebp-14]
 006406BA    call        @IntfClear
 006406BF    ret
>006406C0    jmp         @HandleFinally
>006406C5    jmp         006406A4
 006406C7    mov         al,byte ptr [ebp-0D]
 006406CA    pop         ebx
 006406CB    mov         esp,ebp
 006406CD    pop         ebp
 006406CE    ret         8
end;*}

//006406E4
{*procedure sub_006406E4(?:?; ?:?; ?:?);
begin
 006406E4    push        ebp
 006406E5    mov         ebp,esp
 006406E7    add         esp,0FFFFFFB4
 006406EA    push        ebx
 006406EB    xor         ebx,ebx
 006406ED    mov         dword ptr [ebp-4C],ebx
 006406F0    mov         dword ptr [ebp-38],ebx
 006406F3    mov         dword ptr [ebp-0C],ecx
 006406F6    mov         dword ptr [ebp-8],edx
 006406F9    mov         dword ptr [ebp-4],eax
 006406FC    xor         eax,eax
 006406FE    push        ebp
 006406FF    push        640938
 00640704    push        dword ptr fs:[eax]
 00640707    mov         dword ptr fs:[eax],esp
 0064070A    xor         eax,eax
 0064070C    mov         dword ptr [ebp-20],eax
 0064070F    xor         eax,eax
 00640711    mov         dword ptr [ebp-1C],eax
 00640714    cmp         dword ptr [ebp-0C],0
>00640718    je          00640728
 0064071A    mov         eax,dword ptr [ebp-4]
 0064071D    add         eax,24
 00640720    mov         edx,dword ptr [ebp-0C]
 00640723    call        @LStrAsg
 00640728    mov         eax,dword ptr [ebp-4]
 0064072B    mov         eax,dword ptr [eax+10]
 0064072E    cmp         dword ptr [eax+8],0
>00640732    jle         0064091A
 00640738    mov         eax,dword ptr [ebp-4]
 0064073B    mov         eax,dword ptr [eax+10]
 0064073E    mov         eax,dword ptr [eax+8]
 00640741    dec         eax
 00640742    test        eax,eax
>00640744    jl          00640784
 00640746    inc         eax
 00640747    mov         dword ptr [ebp-3C],eax
 0064074A    mov         dword ptr [ebp-10],0
 00640751    mov         eax,dword ptr [ebp-4]
 00640754    mov         eax,dword ptr [eax+10]
 00640757    mov         edx,dword ptr [ebp-10]
 0064075A    call        00654D7C
 0064075F    mov         eax,dword ptr [eax+4]
 00640762    mov         edx,dword ptr [ebp-8]
 00640765    mov         ecx,dword ptr [eax]
 00640767    call        dword ptr [ecx+10]
 0064076A    mov         dword ptr [ebp-18],eax
 0064076D    cmp         dword ptr [ebp-18],0
>00640771    jle         0064077C
 00640773    mov         eax,dword ptr [ebp-10]
 00640776    mov         dword ptr [ebp-20],eax
 00640779    inc         dword ptr [ebp-1C]
 0064077C    inc         dword ptr [ebp-10]
 0064077F    dec         dword ptr [ebp-3C]
>00640782    jne         00640751
 00640784    cmp         dword ptr [ebp-1C],0
>00640788    jne         006407B5
 0064078A    mov         eax,dword ptr [ebp-8]
 0064078D    call        @LStrToPChar
 00640792    mov         dword ptr [ebp-48],eax
 00640795    mov         byte ptr [ebp-44],6
 00640799    lea         eax,[ebp-48]
 0064079C    push        eax
 0064079D    push        0
 0064079F    mov         ecx,63FFA0;^gvar_006EA390
 006407A4    mov         dl,1
 006407A6    mov         eax,[0063FD50];EHelpSystemException
 006407AB    call        Exception.CreateResFmt;EHelpSystemException.Create
 006407B0    call        @RaiseExcept
 006407B5    cmp         dword ptr [ebp-1C],1
>006407B9    jne         006407D4
 006407BB    mov         eax,dword ptr [ebp-4]
 006407BE    mov         eax,dword ptr [eax+10]
 006407C1    mov         edx,dword ptr [ebp-20]
 006407C4    call        00654D7C
 006407C9    mov         eax,dword ptr [eax+4]
 006407CC    mov         edx,dword ptr [ebp-8]
 006407CF    mov         ecx,dword ptr [eax]
 006407D1    call        dword ptr [ecx+20]
 006407D4    cmp         dword ptr [ebp-1C],1
>006407D8    jle         0064091A
 006407DE    mov         dl,1
 006407E0    mov         eax,[006428B0];TStringList
 006407E5    call        TObject.Create;TStringList.Create
 006407EA    mov         dword ptr [ebp-24],eax
 006407ED    mov         eax,dword ptr [ebp-4]
 006407F0    mov         eax,dword ptr [eax+10]
 006407F3    mov         eax,dword ptr [eax+8]
 006407F6    dec         eax
 006407F7    test        eax,eax
>006407F9    jl          00640893
 006407FF    inc         eax
 00640800    mov         dword ptr [ebp-3C],eax
 00640803    mov         dword ptr [ebp-10],0
 0064080A    mov         eax,dword ptr [ebp-4]
 0064080D    mov         eax,dword ptr [eax+10]
 00640810    mov         edx,dword ptr [ebp-10]
 00640813    call        00654D7C
 00640818    mov         dword ptr [ebp-2C],eax
 0064081B    mov         eax,dword ptr [ebp-2C]
 0064081E    mov         eax,dword ptr [eax+4]
 00640821    mov         edx,dword ptr [ebp-8]
 00640824    mov         ecx,dword ptr [eax]
 00640826    call        dword ptr [ecx+10]
 00640829    mov         dword ptr [ebp-18],eax
 0064082C    cmp         dword ptr [ebp-18],0
>00640830    jle         00640887
 00640832    mov         eax,dword ptr [ebp-2C]
 00640835    mov         eax,dword ptr [eax+4]
 00640838    mov         edx,dword ptr [ebp-8]
 0064083B    mov         ecx,dword ptr [eax]
 0064083D    call        dword ptr [ecx+14]
 00640840    mov         dword ptr [ebp-28],eax
 00640843    mov         eax,dword ptr [ebp-28]
 00640846    mov         edx,dword ptr [eax]
 00640848    call        dword ptr [edx+14]
 0064084B    dec         eax
 0064084C    test        eax,eax
>0064084E    jl          0064087F
 00640850    inc         eax
 00640851    mov         dword ptr [ebp-40],eax
 00640854    mov         dword ptr [ebp-14],0
 0064085B    lea         ecx,[ebp-4C]
 0064085E    mov         edx,dword ptr [ebp-14]
 00640861    mov         eax,dword ptr [ebp-28]
 00640864    mov         ebx,dword ptr [eax]
 00640866    call        dword ptr [ebx+0C]
 00640869    mov         edx,dword ptr [ebp-4C]
 0064086C    mov         ecx,dword ptr [ebp-2C]
 0064086F    mov         eax,dword ptr [ebp-24]
 00640872    mov         ebx,dword ptr [eax]
 00640874    call        dword ptr [ebx+3C];TStringList.sub_00647DEC
 00640877    inc         dword ptr [ebp-14]
 0064087A    dec         dword ptr [ebp-40]
>0064087D    jne         0064085B
 0064087F    mov         eax,dword ptr [ebp-28]
 00640882    call        TObject.Free
 00640887    inc         dword ptr [ebp-10]
 0064088A    dec         dword ptr [ebp-3C]
>0064088D    jne         0064080A
 00640893    mov         eax,dword ptr [ebp-4]
 00640896    cmp         dword ptr [eax+0C],0
>0064089A    je          006408EA
 0064089C    mov         eax,dword ptr [ebp-24]
 0064089F    mov         edx,dword ptr [eax]
 006408A1    call        dword ptr [edx+90];TStringList.sub_00648640
 006408A7    mov         eax,dword ptr [ebp-4]
 006408AA    mov         eax,dword ptr [eax+0C]
 006408AD    mov         edx,dword ptr [ebp-24]
 006408B0    mov         ecx,dword ptr [eax]
 006408B2    call        dword ptr [ecx+0C]
 006408B5    mov         dword ptr [ebp-30],eax
 006408B8    cmp         dword ptr [ebp-30],0
>006408BC    jl          00640912
 006408BE    mov         edx,dword ptr [ebp-30]
 006408C1    mov         eax,dword ptr [ebp-24]
 006408C4    mov         ecx,dword ptr [eax]
 006408C6    call        dword ptr [ecx+18];TStringList.sub_006481B4
 006408C9    mov         dword ptr [ebp-34],eax
 006408CC    lea         ecx,[ebp-38]
 006408CF    mov         edx,dword ptr [ebp-30]
 006408D2    mov         eax,dword ptr [ebp-24]
 006408D5    mov         ebx,dword ptr [eax]
 006408D7    call        dword ptr [ebx+0C];TStringList.sub_00648130
 006408DA    mov         eax,dword ptr [ebp-34]
 006408DD    mov         eax,dword ptr [eax+4]
 006408E0    mov         edx,dword ptr [ebp-38]
 006408E3    mov         ecx,dword ptr [eax]
 006408E5    call        dword ptr [ecx+20]
>006408E8    jmp         00640912
 006408EA    xor         edx,edx
 006408EC    mov         eax,dword ptr [ebp-24]
 006408EF    mov         ecx,dword ptr [eax]
 006408F1    call        dword ptr [ecx+18];TStringList.sub_006481B4
 006408F4    mov         dword ptr [ebp-34],eax
 006408F7    lea         ecx,[ebp-38]
 006408FA    xor         edx,edx
 006408FC    mov         eax,dword ptr [ebp-24]
 006408FF    mov         ebx,dword ptr [eax]
 00640901    call        dword ptr [ebx+0C];TStringList.sub_00648130
 00640904    mov         eax,dword ptr [ebp-34]
 00640907    mov         eax,dword ptr [eax+4]
 0064090A    mov         edx,dword ptr [ebp-38]
 0064090D    mov         ecx,dword ptr [eax]
 0064090F    call        dword ptr [ecx+20]
 00640912    mov         eax,dword ptr [ebp-24]
 00640915    call        TObject.Free
 0064091A    xor         eax,eax
 0064091C    pop         edx
 0064091D    pop         ecx
 0064091E    pop         ecx
 0064091F    mov         dword ptr fs:[eax],edx
 00640922    push        64093F
 00640927    lea         eax,[ebp-4C]
 0064092A    call        @LStrClr
 0064092F    lea         eax,[ebp-38]
 00640932    call        @LStrClr
 00640937    ret
>00640938    jmp         @HandleFinally
>0064093D    jmp         00640927
 0064093F    pop         ebx
 00640940    mov         esp,ebp
 00640942    pop         ebp
 00640943    ret
end;*}

//00640944
{*procedure sub_00640944(?:?; ?:?; ?:?);
begin
 00640944    push        ebp
 00640945    mov         ebp,esp
 00640947    add         esp,0FFFFFFE0
 0064094A    push        ebx
 0064094B    xor         ebx,ebx
 0064094D    mov         dword ptr [ebp-20],ebx
 00640950    mov         dword ptr [ebp-1C],ebx
 00640953    mov         dword ptr [ebp-14],ebx
 00640956    mov         dword ptr [ebp-0C],ecx
 00640959    mov         dword ptr [ebp-8],edx
 0064095C    mov         dword ptr [ebp-4],eax
 0064095F    xor         eax,eax
 00640961    push        ebp
 00640962    push        640A4A
 00640967    push        dword ptr fs:[eax]
 0064096A    mov         dword ptr fs:[eax],esp
 0064096D    cmp         dword ptr [ebp-0C],0
>00640971    je          00640981
 00640973    mov         eax,dword ptr [ebp-4]
 00640976    add         eax,24
 00640979    mov         edx,dword ptr [ebp-0C]
 0064097C    call        @LStrAsg
 00640981    mov         eax,dword ptr [ebp-4]
 00640984    mov         eax,dword ptr [eax+14]
 00640987    cmp         dword ptr [eax+8],0
>0064098B    jne         006409A5
 0064098D    mov         ecx,63FFA8;^gvar_006EA390
 00640992    mov         dl,1
 00640994    mov         eax,[0063FD50];EHelpSystemException
 00640999    call        Exception.Create;EHelpSystemException.Create
 0064099E    call        @RaiseExcept
>006409A3    jmp         00640A21
 006409A5    mov         eax,dword ptr [ebp-4]
 006409A8    mov         eax,dword ptr [eax+14]
 006409AB    mov         eax,dword ptr [eax+8]
 006409AE    dec         eax
 006409AF    test        eax,eax
>006409B1    jl          00640A21
 006409B3    inc         eax
 006409B4    mov         dword ptr [ebp-18],eax
 006409B7    mov         dword ptr [ebp-10],0
 006409BE    mov         edx,dword ptr [ebp-10]
 006409C1    mov         eax,dword ptr [ebp-4]
 006409C4    mov         eax,dword ptr [eax+14]
 006409C7    call        00654D7C
 006409CC    mov         edx,dword ptr [eax+4]
 006409CF    lea         eax,[ebp-14]
 006409D2    call        @IntfCopy
 006409D7    lea         eax,[ebp-1C]
 006409DA    mov         edx,dword ptr [ebp-14]
 006409DD    mov         ecx,640A58;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 006409E2    call        @IntfCast
 006409E7    mov         eax,dword ptr [ebp-1C]
 006409EA    mov         ecx,dword ptr [ebp-0C]
 006409ED    mov         edx,dword ptr [ebp-8]
 006409F0    mov         ebx,dword ptr [eax]
 006409F2    call        dword ptr [ebx+38]
 006409F5    test        al,al
>006409F7    je          00640A19
 006409F9    lea         eax,[ebp-20]
 006409FC    mov         edx,dword ptr [ebp-14]
 006409FF    mov         ecx,640A58;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00640A04    call        @IntfCast
 00640A09    mov         eax,dword ptr [ebp-20]
 00640A0C    mov         ecx,dword ptr [ebp-0C]
 00640A0F    mov         edx,dword ptr [ebp-8]
 00640A12    mov         ebx,dword ptr [eax]
 00640A14    call        dword ptr [ebx+3C]
>00640A17    jmp         00640A21
 00640A19    inc         dword ptr [ebp-10]
 00640A1C    dec         dword ptr [ebp-18]
>00640A1F    jne         006409BE
 00640A21    xor         eax,eax
 00640A23    pop         edx
 00640A24    pop         ecx
 00640A25    pop         ecx
 00640A26    mov         dword ptr fs:[eax],edx
 00640A29    push        640A51
 00640A2E    lea         eax,[ebp-20]
 00640A31    mov         edx,dword ptr ds:[63FC9C];IExtendedHelpViewer
 00640A37    mov         ecx,2
 00640A3C    call        @FinalizeArray
 00640A41    lea         eax,[ebp-14]
 00640A44    call        @IntfClear
 00640A49    ret
>00640A4A    jmp         @HandleFinally
>00640A4F    jmp         00640A2E
 00640A51    pop         ebx
 00640A52    mov         esp,ebp
 00640A54    pop         ebp
 00640A55    ret
end;*}

//00640A68
{*procedure sub_00640A68(?:?);
begin
 00640A68    push        ebp
 00640A69    mov         ebp,esp
 00640A6B    push        ecx
 00640A6C    mov         dword ptr [ebp-4],eax
 00640A6F    mov         eax,dword ptr [ebp-4]
 00640A72    call        006403EC
 00640A77    pop         ecx
 00640A78    pop         ebp
 00640A79    ret
end;*}

//00640A7C
{*procedure sub_00640A7C(?:?; ?:?; ?:?);
begin
 00640A7C    push        ebp
 00640A7D    mov         ebp,esp
 00640A7F    add         esp,0FFFFFFE0
 00640A82    push        ebx
 00640A83    xor         ebx,ebx
 00640A85    mov         dword ptr [ebp-20],ebx
 00640A88    mov         dword ptr [ebp-1C],ebx
 00640A8B    mov         dword ptr [ebp-14],ebx
 00640A8E    mov         dword ptr [ebp-0C],ecx
 00640A91    mov         dword ptr [ebp-8],edx
 00640A94    mov         dword ptr [ebp-4],eax
 00640A97    xor         eax,eax
 00640A99    push        ebp
 00640A9A    push        640B7C
 00640A9F    push        dword ptr fs:[eax]
 00640AA2    mov         dword ptr fs:[eax],esp
 00640AA5    cmp         dword ptr [ebp-0C],0
>00640AA9    je          00640AB9
 00640AAB    mov         eax,dword ptr [ebp-4]
 00640AAE    add         eax,24
 00640AB1    mov         edx,dword ptr [ebp-0C]
 00640AB4    call        @LStrAsg
 00640AB9    mov         eax,dword ptr [ebp-4]
 00640ABC    mov         eax,dword ptr [eax+14]
 00640ABF    cmp         dword ptr [eax+8],0
>00640AC3    jne         00640ADD
 00640AC5    mov         ecx,63FFB0;^gvar_006EA390
 00640ACA    mov         dl,1
 00640ACC    mov         eax,[0063FD50];EHelpSystemException
 00640AD1    call        Exception.Create;EHelpSystemException.Create
 00640AD6    call        @RaiseExcept
>00640ADB    jmp         00640B53
 00640ADD    mov         eax,dword ptr [ebp-4]
 00640AE0    mov         eax,dword ptr [eax+14]
 00640AE3    mov         eax,dword ptr [eax+8]
 00640AE6    dec         eax
 00640AE7    test        eax,eax
>00640AE9    jl          00640B53
 00640AEB    inc         eax
 00640AEC    mov         dword ptr [ebp-18],eax
 00640AEF    mov         dword ptr [ebp-10],0
 00640AF6    mov         edx,dword ptr [ebp-10]
 00640AF9    mov         eax,dword ptr [ebp-4]
 00640AFC    mov         eax,dword ptr [eax+14]
 00640AFF    call        00654D7C
 00640B04    mov         edx,dword ptr [eax+4]
 00640B07    lea         eax,[ebp-14]
 00640B0A    call        @IntfCopy
 00640B0F    lea         eax,[ebp-1C]
 00640B12    mov         edx,dword ptr [ebp-14]
 00640B15    mov         ecx,640B88;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00640B1A    call        @IntfCast
 00640B1F    mov         eax,dword ptr [ebp-1C]
 00640B22    mov         edx,dword ptr [ebp-8]
 00640B25    mov         ecx,dword ptr [eax]
 00640B27    call        dword ptr [ecx+30]
 00640B2A    test        al,al
>00640B2C    je          00640B4B
 00640B2E    lea         eax,[ebp-20]
 00640B31    mov         edx,dword ptr [ebp-14]
 00640B34    mov         ecx,640B88;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00640B39    call        @IntfCast
 00640B3E    mov         eax,dword ptr [ebp-20]
 00640B41    mov         edx,dword ptr [ebp-8]
 00640B44    mov         ecx,dword ptr [eax]
 00640B46    call        dword ptr [ecx+34]
>00640B49    jmp         00640B53
 00640B4B    inc         dword ptr [ebp-10]
 00640B4E    dec         dword ptr [ebp-18]
>00640B51    jne         00640AF6
 00640B53    xor         eax,eax
 00640B55    pop         edx
 00640B56    pop         ecx
 00640B57    pop         ecx
 00640B58    mov         dword ptr fs:[eax],edx
 00640B5B    push        640B83
 00640B60    lea         eax,[ebp-20]
 00640B63    mov         edx,dword ptr ds:[63FC9C];IExtendedHelpViewer
 00640B69    mov         ecx,2
 00640B6E    call        @FinalizeArray
 00640B73    lea         eax,[ebp-14]
 00640B76    call        @IntfClear
 00640B7B    ret
>00640B7C    jmp         @HandleFinally
>00640B81    jmp         00640B60
 00640B83    pop         ebx
 00640B84    mov         esp,ebp
 00640B86    pop         ebp
 00640B87    ret
end;*}

//00640B98
{*procedure sub_00640B98(?:?; ?:?);
begin
 00640B98    push        ebp
 00640B99    mov         ebp,esp
 00640B9B    add         esp,0FFFFFFF8
 00640B9E    mov         dword ptr [ebp-8],edx
 00640BA1    mov         dword ptr [ebp-4],eax
 00640BA4    mov         eax,dword ptr [ebp-8]
 00640BA7    call        @IntfAddRef
 00640BAC    xor         eax,eax
 00640BAE    push        ebp
 00640BAF    push        640BFB
 00640BB4    push        dword ptr fs:[eax]
 00640BB7    mov         dword ptr fs:[eax],esp
 00640BBA    mov         eax,dword ptr [ebp-4]
 00640BBD    cmp         dword ptr [eax+0C],0
>00640BC1    je          00640BCE
 00640BC3    mov         eax,dword ptr [ebp-4]
 00640BC6    add         eax,0C
 00640BC9    call        @IntfClear
 00640BCE    mov         eax,dword ptr [ebp-4]
 00640BD1    add         eax,0C
 00640BD4    mov         edx,dword ptr [ebp-8]
 00640BD7    call        @IntfCopy
 00640BDC    mov         eax,dword ptr [ebp-8]
 00640BDF    push        eax
 00640BE0    mov         eax,dword ptr [eax]
 00640BE2    call        dword ptr [eax+4]
 00640BE5    xor         eax,eax
 00640BE7    pop         edx
 00640BE8    pop         ecx
 00640BE9    pop         ecx
 00640BEA    mov         dword ptr fs:[eax],edx
 00640BED    push        640C02
 00640BF2    lea         eax,[ebp-8]
 00640BF5    call        @IntfClear
 00640BFA    ret
>00640BFB    jmp         @HandleFinally
>00640C00    jmp         00640BF2
 00640C02    pop         ecx
 00640C03    pop         ecx
 00640C04    pop         ebp
 00640C05    ret
end;*}

//00640C08
{*function sub_00640C08(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00640C08    push        ebp
 00640C09    mov         ebp,esp
 00640C0B    add         esp,0FFFFFFF0
 00640C0E    mov         dword ptr [ebp-0C],ecx
 00640C11    mov         dword ptr [ebp-8],edx
 00640C14    mov         dword ptr [ebp-4],eax
 00640C17    mov         eax,dword ptr [ebp-0C]
 00640C1A    call        @LStrAddRef
 00640C1F    xor         eax,eax
 00640C21    push        ebp
 00640C22    push        640CC1
 00640C27    push        dword ptr fs:[eax]
 00640C2A    mov         dword ptr fs:[eax],esp
 00640C2D    cmp         dword ptr [ebp-0C],0
>00640C31    je          00640C41
 00640C33    mov         eax,dword ptr [ebp-4]
 00640C36    add         eax,24
 00640C39    mov         edx,dword ptr [ebp-0C]
 00640C3C    call        @LStrAsg
 00640C41    mov         ax,word ptr [ebp+0C]
 00640C45    dec         ax
>00640C48    je          00640C5C
 00640C4A    dec         ax
>00640C4D    je          00640C7C
 00640C4F    dec         ax
>00640C52    je          00640C86
 00640C54    sub         ax,5
>00640C58    je          00640C6C
>00640C5A    jmp         00640C90
 00640C5C    mov         ecx,dword ptr [ebp-0C]
 00640C5F    mov         edx,dword ptr [ebp+8]
 00640C62    mov         eax,dword ptr [ebp-4]
 00640C65    call        00640944
>00640C6A    jmp         00640CA7
 00640C6C    mov         ecx,dword ptr [ebp-0C]
 00640C6F    mov         edx,dword ptr [ebp+8]
 00640C72    mov         eax,dword ptr [ebp-4]
 00640C75    call        00640944
>00640C7A    jmp         00640CA7
 00640C7C    mov         eax,dword ptr [ebp-4]
 00640C7F    call        006403A8
>00640C84    jmp         00640CA7
 00640C86    mov         eax,dword ptr [ebp-4]
 00640C89    call        006403EC
>00640C8E    jmp         00640CA7
 00640C90    mov         ax,word ptr [ebp+0C]
 00640C94    push        eax
 00640C95    mov         eax,dword ptr [ebp+8]
 00640C98    push        eax
 00640C99    mov         ecx,dword ptr [ebp-0C]
 00640C9C    mov         edx,dword ptr [ebp-8]
 00640C9F    mov         eax,dword ptr [ebp-4]
 00640CA2    call        006405B4
 00640CA7    mov         byte ptr [ebp-0D],1
 00640CAB    xor         eax,eax
 00640CAD    pop         edx
 00640CAE    pop         ecx
 00640CAF    pop         ecx
 00640CB0    mov         dword ptr fs:[eax],edx
 00640CB3    push        640CC8
 00640CB8    lea         eax,[ebp-0C]
 00640CBB    call        @LStrClr
 00640CC0    ret
>00640CC1    jmp         @HandleFinally
>00640CC6    jmp         00640CB8
 00640CC8    mov         al,byte ptr [ebp-0D]
 00640CCB    mov         esp,ebp
 00640CCD    pop         ebp
 00640CCE    ret         8
end;*}

//00640CD4
{*function sub_00640CD4(?:?):?;
begin
 00640CD4    push        ebp
 00640CD5    mov         ebp,esp
 00640CD7    add         esp,0FFFFFFF8
 00640CDA    mov         dword ptr [ebp-4],eax
 00640CDD    mov         eax,dword ptr [ebp-4]
 00640CE0    mov         eax,dword ptr [eax+20]
 00640CE3    mov         dword ptr [ebp-8],eax
 00640CE6    mov         eax,dword ptr [ebp-8]
 00640CE9    pop         ecx
 00640CEA    pop         ecx
 00640CEB    pop         ebp
 00640CEC    ret
end;*}

//00640CF0
{*procedure sub_00640CF0(?:?; ?:?);
begin
 00640CF0    push        ebp
 00640CF1    mov         ebp,esp
 00640CF3    add         esp,0FFFFFFF8
 00640CF6    mov         dword ptr [ebp-8],edx
 00640CF9    mov         dword ptr [ebp-4],eax
 00640CFC    mov         eax,dword ptr [ebp-8]
 00640CFF    mov         edx,dword ptr [ebp-4]
 00640D02    mov         edx,dword ptr [edx+24]
 00640D05    call        @LStrAsg
 00640D0A    pop         ecx
 00640D0B    pop         ecx
 00640D0C    pop         ebp
 00640D0D    ret
end;*}

//00640D10
{*procedure sub_00640D10(?:?; ?:?);
begin
 00640D10    push        ebp
 00640D11    mov         ebp,esp
 00640D13    add         esp,0FFFFFFF0
 00640D16    mov         dword ptr [ebp-8],edx
 00640D19    mov         dword ptr [ebp-4],eax
 00640D1C    mov         eax,dword ptr [ebp-4]
 00640D1F    mov         eax,dword ptr [eax+10]
 00640D22    mov         eax,dword ptr [eax+8]
 00640D25    dec         eax
 00640D26    test        eax,eax
>00640D28    jl          00640D61
 00640D2A    inc         eax
 00640D2B    mov         dword ptr [ebp-10],eax
 00640D2E    mov         dword ptr [ebp-0C],0
 00640D35    mov         eax,dword ptr [ebp-4]
 00640D38    mov         eax,dword ptr [eax+10]
 00640D3B    mov         edx,dword ptr [ebp-0C]
 00640D3E    call        00654D7C
 00640D43    mov         eax,dword ptr [eax+8]
 00640D46    cmp         eax,dword ptr [ebp-8]
>00640D49    jne         00640D59
 00640D4B    mov         eax,dword ptr [ebp-4]
 00640D4E    mov         eax,dword ptr [eax+10]
 00640D51    mov         edx,dword ptr [ebp-0C]
 00640D54    call        TList.Delete
 00640D59    inc         dword ptr [ebp-0C]
 00640D5C    dec         dword ptr [ebp-10]
>00640D5F    jne         00640D35
 00640D61    mov         eax,dword ptr [ebp-4]
 00640D64    mov         eax,dword ptr [eax+14]
 00640D67    mov         eax,dword ptr [eax+8]
 00640D6A    dec         eax
 00640D6B    test        eax,eax
>00640D6D    jl          00640DA6
 00640D6F    inc         eax
 00640D70    mov         dword ptr [ebp-10],eax
 00640D73    mov         dword ptr [ebp-0C],0
 00640D7A    mov         eax,dword ptr [ebp-4]
 00640D7D    mov         eax,dword ptr [eax+14]
 00640D80    mov         edx,dword ptr [ebp-0C]
 00640D83    call        00654D7C
 00640D88    mov         eax,dword ptr [eax+8]
 00640D8B    cmp         eax,dword ptr [ebp-8]
>00640D8E    jne         00640D9E
 00640D90    mov         eax,dword ptr [ebp-4]
 00640D93    mov         eax,dword ptr [eax+14]
 00640D96    mov         edx,dword ptr [ebp-0C]
 00640D99    call        TList.Delete
 00640D9E    inc         dword ptr [ebp-0C]
 00640DA1    dec         dword ptr [ebp-10]
>00640DA4    jne         00640D7A
 00640DA6    mov         eax,dword ptr [ebp-4]
 00640DA9    mov         eax,dword ptr [eax+18]
 00640DAC    mov         eax,dword ptr [eax+8]
 00640DAF    dec         eax
 00640DB0    test        eax,eax
>00640DB2    jl          00640DEB
 00640DB4    inc         eax
 00640DB5    mov         dword ptr [ebp-10],eax
 00640DB8    mov         dword ptr [ebp-0C],0
 00640DBF    mov         eax,dword ptr [ebp-4]
 00640DC2    mov         eax,dword ptr [eax+18]
 00640DC5    mov         edx,dword ptr [ebp-0C]
 00640DC8    call        00654D7C
 00640DCD    mov         eax,dword ptr [eax+8]
 00640DD0    cmp         eax,dword ptr [ebp-8]
>00640DD3    jne         00640DE3
 00640DD5    mov         eax,dword ptr [ebp-4]
 00640DD8    mov         eax,dword ptr [eax+18]
 00640DDB    mov         edx,dword ptr [ebp-0C]
 00640DDE    call        TList.Delete
 00640DE3    inc         dword ptr [ebp-0C]
 00640DE6    dec         dword ptr [ebp-10]
>00640DE9    jne         00640DBF
 00640DEB    mov         esp,ebp
 00640DED    pop         ebp
 00640DEE    ret
end;*}

end.