//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit15;

interface

uses
  SysUtils, Classes;

    procedure sub_00531098;//00531098
    procedure sub_00531284(?:TForm);//00531284
    //function sub_005312C8(?:Integer):?;//005312C8
    //function sub_00531360(?:?):?;//00531360
    //function sub_005313E4(?:?; ?:AnsiString):?;//005313E4
    //procedure sub_005315B0(?:dword; ?:?);//005315B0
    //procedure sub_0053164C(?:dword; ?:?);//0053164C
    //procedure sub_005316BC(?:?; ?:?);//005316BC
    //procedure sub_00531730(?:?; ?:?);//00531730
    //procedure sub_005317A4(?:?; ?:?);//005317A4
    //procedure sub_00531818(?:?; ?:?);//00531818
    //procedure sub_0053188C(?:dword; ?:?);//0053188C
    //function sub_00531900(?:?; ?:AnsiString; ?:AnsiString):?;//00531900
    //procedure sub_00531A74(?:?; ?:?);//00531A74
    //procedure sub_00531B10(?:?; ?:?; ?:?);//00531B10
    //procedure sub_00531B90(?:?; ?:?; ?:?; ?:?; ?:?);//00531B90
    //procedure sub_00531D20(?:AnsiString; ?:?);//00531D20
    //function sub_00531EBC(?:AnsiString; ?:?):?;//00531EBC
    //function sub_00531EE8(?:dword):?;//00531EE8
    //function sub_00531F1C(?:Integer):?;//00531F1C
    //procedure sub_00531F50(?:AnsiString; ?:?);//00531F50
    //procedure sub_005320E4(?:AnsiString; ?:?);//005320E4
    //procedure sub_00532250(?:AnsiString; ?:?);//00532250
    //procedure sub_005323B8(?:AnsiString; ?:?);//005323B8
    //function sub_00532550(?:?):?;//00532550
    //function sub_005325E4(?:?):?;//005325E4
    //function sub_00532654(?:?; ?:?):?;//00532654
    //function sub_005326DC(?:?; ?:?):?;//005326DC
    //function sub_00532754(?:?; ?:?; ?:?):?;//00532754
    //function sub_005327C8(?:?; ?:?; ?:?):?;//005327C8
    //function sub_0053288C(?:?; ?:?; ?:?; ?:?):?;//0053288C
    //function sub_00532988(?:?; ?:?):?;//00532988
    //function sub_00532A30(?:?; ?:?; ?:?):?;//00532A30
    //function sub_00532B74(?:?; ?:?):?;//00532B74
    //procedure sub_00532BE8(?:?; ?:?);//00532BE8
    //procedure sub_00532C54(?:?; ?:?; ?:?);//00532C54
    //procedure sub_00532CE4(?:?; ?:?);//00532CE4
    //function sub_00532D50(?:?):?;//00532D50
    //function sub_00532DCC(?:?):?;//00532DCC
    //function sub_00532E24(?:AnsiString):?;//00532E24
    //function sub_00532F88(?:AnsiString):?;//00532F88
    //procedure sub_005330F0(?:AnsiString; ?:?);//005330F0
    //procedure sub_00533210(?:AnsiString; ?:?);//00533210
    //function sub_00533374(?:AnsiString):?;//00533374
    //function sub_005337C4(?:dword; ?:?):?;//005337C4
    //function sub_0053394C(?:dword; ?:?; ?:AnsiString; ?:?):?;//0053394C
    //function sub_00534F2C(?:AnsiString; ?:?; ?:AnsiString; ?:?):?;//00534F2C
    //procedure sub_00535384(?:?; ?:AnsiString; ?:?);//00535384
    //procedure sub_005355A0(?:?; ?:?);//005355A0
    //procedure sub_00535880(?:?; ?:?);//00535880
    //function sub_00535A40(?:?; ?:?):?;//00535A40
    //function sub_00535AA0(?:?; ?:?):?;//00535AA0
    //function sub_00535B28(?:?):?;//00535B28
    //function sub_00535BBC(?:?):?;//00535BBC
    //function sub_00535C2C(?:?):?;//00535C2C
    //procedure sub_00535C94(?:dword; ?:?);//00535C94
    //function sub_00535E90(?:AnsiString):?;//00535E90
    //function sub_005360A0(?:?):?;//005360A0
    //procedure sub_005360B8(?:?; ?:?);//005360B8
    //procedure sub_0053618C(?:AnsiString; ?:?);//0053618C
    //function sub_00536200(?:?; ?:?):?;//00536200
    //function sub_00536240(?:AnsiString; ?:AnsiString):?;//00536240
    //procedure sub_005362F4(?:?; ?:?);//005362F4
    //procedure sub_005363EC(?:?; ?:?; ?:?);//005363EC
    //procedure sub_00536720(?:?; ?:?; ?:?; ?:?);//00536720
    //function sub_00536884(?:?):?;//00536884
    //procedure sub_00536978(?:?; ?:?);//00536978
    //procedure sub_00536D6C(?:?; ?:?; ?:?; ?:?);//00536D6C
    //procedure sub_00536FB8(?:?; ?:?);//00536FB8
    procedure sub_00537060(?:AnsiString);//00537060
    //procedure sub_00537190(?:Pointer; ?:?);//00537190
    //function sub_00537230(?:AnsiString):?;//00537230
    //function sub_00537314(?:AnsiString):?;//00537314
    //procedure sub_00537428(?:AnsiString; ?:?);//00537428
    //function sub_005376EC(?:?):?;//005376EC
    //function sub_00537754(?:AnsiString; ?:?):?;//00537754
    //procedure sub_00539AD4(?:?; ?:?);//00539AD4
    //procedure sub_00539CE4(?:AnsiString; ?:?; ?:?);//00539CE4
    //function sub_0053A17C(?:?; ?:?):?;//0053A17C
    //function sub_0053A1B4(?:?; ?:?; ?:?):?;//0053A1B4
    //procedure sub_0053A224(?:?; ?:?);//0053A224
    //function sub_0053A258(?:?):?;//0053A258
    //procedure sub_0053A288(?:?);//0053A288
    //function sub_0053A298(?:?):?;//0053A298
    //function sub_0053A308(?:dword):?;//0053A308
    //procedure sub_0053A3B8(?:AnsiString; ?:?; ?:?);//0053A3B8
    //procedure sub_0053AE54(?:AnsiString; ?:?; ?:?);//0053AE54
    //procedure sub_0053B410(?:?);//0053B410
    //procedure sub_0053B50C(?:?; ?:?; ?:?; ?:?);//0053B50C
    //procedure sub_0053B860(?:?; ?:?; ?:AnsiString; ?:?);//0053B860
    //procedure sub_0053BD00(?:AnsiString; ?:?);//0053BD00
    //function sub_0053BF14(?:AnsiString):?;//0053BF14
    //function sub_0053C09C(?:AnsiString; ?:?; ?:?; ?:?):?;//0053C09C
    //function sub_0053C3FC(?:AnsiString):?;//0053C3FC
    //procedure sub_0053C7C8(?:TStrings; ?:?; ?:?);//0053C7C8
    //procedure sub_0053C9A8(?:String; ?:?);//0053C9A8
    //function sub_0053CB3C(?:?):?;//0053CB3C
    //function sub_0053CDB8(?:?; ?:?):?;//0053CDB8
    //function sub_0053CECC(?:?):?;//0053CECC
    //function sub_0053CEE0(?:?; ?:?):?;//0053CEE0
    //function sub_0053CF0C(?:?):?;//0053CF0C
    //function sub_0053CFFC(?:?):?;//0053CFFC
    //function sub_0053D150(?:?; ?:?):?;//0053D150
    //function sub_0053D74C(?:?):?;//0053D74C
    //function sub_0053D828(?:?):?;//0053D828
    //function sub_0053D928(?:?):?;//0053D928
    //function sub_0053DA54(?:?):?;//0053DA54
    //function sub_0053DC88(?:?):?;//0053DC88
    //function sub_0053DF98(?:?; ?:?):?;//0053DF98
    //function sub_0053E190(?:?; ?:?):?;//0053E190
    //function sub_0053E3FC(?:?):?;//0053E3FC
    //procedure sub_0053E704(?:?);//0053E704
    //function sub_0053E738(?:AnsiString):?;//0053E738
    //procedure sub_0053E908(?:?);//0053E908
    //procedure sub_0053EB7C(?:?; ?:?; ?:AnsiString; ?:?);//0053EB7C
    //procedure sub_0053ED68(?:?; ?:?; ?:?; ?:?; ?:?);//0053ED68
    //function sub_0053EF88(?:?; ?:?):?;//0053EF88
    //procedure sub_0053F068(?:?);//0053F068
    //procedure sub_0053F0B0(?:?);//0053F0B0
    //procedure sub_0053F100(?:AnsiString; ?:?; ?:?; ?:?);//0053F100
    //function sub_0053F22C(?:?; ?:?):?;//0053F22C
    //function sub_0053F37C(?:?; ?:?):?;//0053F37C
    //function sub_0053F4AC(?:?; ?:?):?;//0053F4AC
    //function sub_0053F5C4(?:?; ?:?):?;//0053F5C4
    //function sub_0053F6D4(?:?; ?:?):?;//0053F6D4
    //function sub_0053F910(?:?; ?:?):?;//0053F910
    //function sub_0053FC28(?:?; ?:?):?;//0053FC28
    //function sub_005400DC(?:?; ?:?; ?:?; ?:?; ?:?):?;//005400DC
    //function sub_005402BC(?:?; ?:?; ?:?):?;//005402BC
    //function sub_00540580(?:?; ?:?; ?:?; ?:?):?;//00540580
    //function sub_00540908(?:?):?;//00540908
    //function sub_00540A08(?:?):?;//00540A08
    constructor Create(AOwner:TComponent);//00540B80
    procedure FormShow(Sender:TObject);//00540C80
    //procedure cklbPluginsListClickCheck(?:?);//00541024
    procedure cklbPluginsListDblClick(Sender:TObject);//005410B4
    procedure bOkClick(Sender:TObject);//00541308
    procedure bCancelClick(Sender:TObject);//005414B8
    procedure FormCreate(Sender:TObject);//00541520
    destructor Destroy;//005415C0

implementation

//00531098
procedure sub_00531098;
begin
{*
 00531098    push        ebp
 00531099    mov         ebp,esp
 0053109B    add         esp,0FFFFFFDC
 0053109E    mov         eax,6DC444
 005310A3    call        0066FECC
 005310A8    mov         word ptr [ebp-14],8
 005310AE    mov         edx,6DC7BA
 005310B3    mov         eax,6DC274
 005310B8    call        0067DAB4
 005310BD    inc         dword ptr [ebp-8]
 005310C0    mov         edx,6DC7C2
 005310C5    mov         eax,6DC278
 005310CA    call        0067DAB4
 005310CF    inc         dword ptr [ebp-8]
 005310D2    mov         edx,6DC7CA
 005310D7    mov         eax,6DC27C
 005310DC    call        0067DAB4
 005310E1    inc         dword ptr [ebp-8]
 005310E4    mov         edx,6DC7CF
 005310E9    mov         eax,6DC280
 005310EE    call        0067DAB4
 005310F3    inc         dword ptr [ebp-8]
 005310F6    mov         edx,6DC7DB
 005310FB    mov         eax,6DC284
 00531100    call        0067DAB4
 00531105    inc         dword ptr [ebp-8]
 00531108    mov         edx,6DC7E1
 0053110D    mov         eax,6DC288
 00531112    call        0067DAB4
 00531117    inc         dword ptr [ebp-8]
 0053111A    mov         edx,6DC7ED
 0053111F    mov         eax,6DC28C
 00531124    call        0067DAB4
 00531129    inc         dword ptr [ebp-8]
 0053112C    mov         edx,6DC7F1
 00531131    mov         eax,6DC290
 00531136    call        0067DAB4
 0053113B    inc         dword ptr [ebp-8]
 0053113E    mov         edx,6DC7F7
 00531143    mov         eax,6DC294
 00531148    call        0067DAB4
 0053114D    inc         dword ptr [ebp-8]
 00531150    mov         edx,6DC7FE
 00531155    mov         eax,6DC298
 0053115A    call        0067DAB4
 0053115F    inc         dword ptr [ebp-8]
 00531162    mov         edx,6DC804
 00531167    mov         eax,6DC29C
 0053116C    call        0067DAB4
 00531171    inc         dword ptr [ebp-8]
 00531174    mov         edx,6DC80F
 00531179    mov         eax,6DC2A0
 0053117E    call        0067DAB4
 00531183    inc         dword ptr [ebp-8]
 00531186    mov         edx,6DC81A
 0053118B    mov         eax,6DC2A4
 00531190    call        0067DAB4
 00531195    inc         dword ptr [ebp-8]
 00531198    mov         edx,6DC822
 0053119D    mov         eax,6DC2A8
 005311A2    call        0067DAB4
 005311A7    inc         dword ptr [ebp-8]
 005311AA    mov         edx,6DC828
 005311AF    mov         eax,6DC2AC
 005311B4    call        0067DAB4
 005311B9    inc         dword ptr [ebp-8]
 005311BC    mov         edx,6DC82F
 005311C1    mov         eax,6DC2B0
 005311C6    call        0067DAB4
 005311CB    inc         dword ptr [ebp-8]
 005311CE    mov         edx,6DC839
 005311D3    mov         eax,6DC2B4
 005311D8    call        0067DAB4
 005311DD    inc         dword ptr [ebp-8]
 005311E0    mov         edx,6DC83F
 005311E5    mov         eax,6DC2B8
 005311EA    call        0067DAB4
 005311EF    inc         dword ptr [ebp-8]
 005311F2    mov         edx,6DC848
 005311F7    mov         eax,6DC2BC
 005311FC    call        0067DAB4
 00531201    inc         dword ptr [ebp-8]
 00531204    mov         edx,6DC850
 00531209    mov         eax,6DC2C0
 0053120E    call        0067DAB4
 00531213    inc         dword ptr [ebp-8]
 00531216    mov         edx,6DC859
 0053121B    mov         eax,6DC2C4
 00531220    call        0067DAB4
 00531225    inc         dword ptr [ebp-8]
 00531228    mov         edx,6DC861
 0053122D    mov         eax,6DC2C8
 00531232    call        0067DAB4
 00531237    inc         dword ptr [ebp-8]
 0053123A    mov         edx,dword ptr [ebp-24]
 0053123D    mov         dword ptr fs:[0],edx
 00531244    mov         esp,ebp
 00531246    pop         ebp
 00531247    ret
*}
end;

//00531284
procedure sub_00531284(?:TForm);
begin
{*
 00531284    push        ebp
 00531285    mov         ebp,esp
 00531287    add         esp,0FFFFFFF8
 0053128A    mov         dword ptr [ebp-4],eax
 0053128D    push        0
 0053128F    call        USER32.GetDC
 00531294    mov         dword ptr [ebp-8],eax
 00531297    mov         eax,dword ptr [ebp-8]
 0053129A    test        eax,eax
>0053129C    je          005312C1
 0053129E    push        58
 005312A0    push        dword ptr [ebp-8]
 005312A3    call        GDI32.GetDeviceCaps
 005312A8    mov         edx,eax
 005312AA    mov         ecx,64
 005312AF    mov         eax,dword ptr [ebp-4]
 005312B2    call        005FBA1C
 005312B7    push        dword ptr [ebp-8]
 005312BA    push        0
 005312BC    call        USER32.ReleaseDC
 005312C1    pop         ecx
 005312C2    pop         ecx
 005312C3    pop         ebp
 005312C4    ret
*}
end;

//005312C8
{*function sub_005312C8(?:Integer):?;
begin
 005312C8    push        ebp
 005312C9    mov         ebp,esp
 005312CB    add         esp,0FFFFFFF0
 005312CE    mov         dword ptr [ebp-4],eax
 005312D1    xor         eax,eax
 005312D3    mov         dword ptr [ebp-8],eax
 005312D6    xor         edx,edx
 005312D8    mov         dword ptr [ebp-0C],edx
>005312DB    jmp         00531346
 005312DD    mov         edx,dword ptr [ebp-0C]
 005312E0    mov         eax,[006ECB68];0x0 gvar_006ECB68
 005312E5    call        TList.Get
 005312EA    mov         dword ptr [ebp-10],eax
 005312ED    mov         ecx,dword ptr [ebp-10]
 005312F0    mov         eax,dword ptr [ecx]
 005312F2    mov         edx,dword ptr [ebp-4]
 005312F5    cmp         eax,edx
>005312F7    ja          0053132C
 005312F9    mov         ecx,dword ptr [ebp-10]
 005312FC    mov         eax,dword ptr [ecx]
 005312FE    mov         edx,dword ptr [ebp-10]
 00531301    mov         ecx,dword ptr [edx+4]
 00531304    add         eax,ecx
 00531306    mov         edx,dword ptr [ebp-4]
 00531309    cmp         eax,edx
>0053130B    jbe         0053132C
 0053130D    mov         eax,dword ptr [ebp-10]
 00531310    test        byte ptr [eax+0A],8
>00531314    je          0053131B
 00531316    or          eax,0FFFFFFFF
>00531319    jmp         0053135B
 0053131B    mov         eax,dword ptr [ebp-4]
 0053131E    mov         edx,dword ptr [ebp-10]
 00531321    mov         ecx,dword ptr [edx]
 00531323    sub         eax,ecx
 00531325    mov         edx,dword ptr [ebp-8]
 00531328    add         eax,edx
>0053132A    jmp         0053135B
 0053132C    mov         eax,dword ptr [ebp-10]
 0053132F    test        byte ptr [eax+0A],8
>00531333    jne         00531343
 00531335    mov         ecx,dword ptr [ebp-8]
 00531338    mov         eax,dword ptr [ebp-10]
 0053133B    mov         edx,dword ptr [eax+4]
 0053133E    add         ecx,edx
 00531340    mov         dword ptr [ebp-8],ecx
 00531343    inc         dword ptr [ebp-0C]
 00531346    mov         ecx,dword ptr ds:[6ECB68];0x0 gvar_006ECB68
 0053134C    mov         eax,dword ptr [ecx+8]
 0053134F    mov         edx,dword ptr [ebp-0C]
 00531352    cmp         eax,edx
>00531354    jg          005312DD
 00531356    mov         eax,0FFFFFFFE
 0053135B    mov         esp,ebp
 0053135D    pop         ebp
 0053135E    ret
end;*}

//00531360
{*function sub_00531360(?:?):?;
begin
 00531360    push        ebp
 00531361    mov         ebp,esp
 00531363    add         esp,0FFFFFFEC
 00531366    mov         dword ptr [ebp-4],eax
 00531369    xor         eax,eax
 0053136B    mov         dword ptr [ebp-8],eax
 0053136E    xor         edx,edx
 00531370    mov         dword ptr [ebp-0C],edx
 00531373    xor         ecx,ecx
 00531375    mov         dword ptr [ebp-10],ecx
>00531378    jmp         005313CF
 0053137A    mov         edx,dword ptr [ebp-10]
 0053137D    mov         eax,[006ECB68];0x0 gvar_006ECB68
 00531382    call        TList.Get
 00531387    mov         dword ptr [ebp-14],eax
 0053138A    mov         ecx,dword ptr [ebp-14]
 0053138D    test        byte ptr [ecx+0A],8
>00531391    jne         005313CC
 00531393    mov         eax,dword ptr [ebp-0C]
 00531396    mov         dword ptr [ebp-8],eax
 00531399    mov         edx,dword ptr [ebp-0C]
 0053139C    mov         ecx,dword ptr [ebp-14]
 0053139F    mov         eax,dword ptr [ecx+4]
 005313A2    add         edx,eax
 005313A4    mov         dword ptr [ebp-0C],edx
 005313A7    mov         edx,dword ptr [ebp-8]
 005313AA    mov         ecx,dword ptr [ebp-4]
 005313AD    cmp         edx,ecx
>005313AF    jg          005313CC
 005313B1    mov         eax,dword ptr [ebp-4]
 005313B4    mov         edx,dword ptr [ebp-0C]
 005313B7    cmp         eax,edx
>005313B9    jge         005313CC
 005313BB    mov         eax,dword ptr [ebp-4]
 005313BE    mov         edx,dword ptr [ebp-8]
 005313C1    sub         eax,edx
 005313C3    mov         ecx,dword ptr [ebp-14]
 005313C6    mov         edx,dword ptr [ecx]
 005313C8    add         eax,edx
>005313CA    jmp         005313E0
 005313CC    inc         dword ptr [ebp-10]
 005313CF    mov         eax,[006ECB68];0x0 gvar_006ECB68
 005313D4    mov         ecx,dword ptr [eax+8]
 005313D7    mov         eax,dword ptr [ebp-10]
 005313DA    cmp         ecx,eax
>005313DC    jg          0053137A
 005313DE    xor         eax,eax
 005313E0    mov         esp,ebp
 005313E2    pop         ebp
 005313E3    ret
end;*}

//005313E4
{*function sub_005313E4(?:?; ?:AnsiString):?;
begin
 005313E4    push        ebp
 005313E5    mov         ebp,esp
 005313E7    add         esp,0FFFFFFB4
 005313EA    mov         dword ptr [ebp-4C],edx
 005313ED    mov         dword ptr [ebp-48],eax
 005313F0    mov         eax,6DCC60
 005313F5    call        0066FECC
 005313FA    mov         word ptr [ebp-34],8
 00531400    mov         edx,6DC464
 00531405    lea         eax,[ebp-4]
 00531408    call        0067DAB4
 0053140D    inc         dword ptr [ebp-28]
 00531410    lea         edx,[ebp-4]
 00531413    mov         eax,dword ptr [ebp-4C]
 00531416    call        0067DD84
 0053141B    push        eax
 0053141C    dec         dword ptr [ebp-28]
 0053141F    lea         eax,[ebp-4]
 00531422    mov         edx,2
 00531427    call        0067DCA0
 0053142C    pop         ecx
 0053142D    test        cl,cl
>0053142F    je          00531442
 00531431    xor         eax,eax
 00531433    mov         edx,dword ptr [ebp-44]
 00531436    mov         dword ptr fs:[0],edx
>0053143D    jmp         005315AA
 00531442    mov         word ptr [ebp-34],14
 00531448    mov         edx,6DC465
 0053144D    lea         eax,[ebp-8]
 00531450    call        0067DAB4
 00531455    inc         dword ptr [ebp-28]
 00531458    lea         edx,[ebp-8]
 0053145B    mov         eax,dword ptr [ebp-48]
 0053145E    call        0067DD84
 00531463    test        al,al
>00531465    jne         00531575
 0053146B    mov         edx,6DC466
 00531470    lea         eax,[ebp-10]
 00531473    call        0067DAB4
 00531478    inc         dword ptr [ebp-28]
 0053147B    push        dword ptr [eax]
 0053147D    lea         eax,[ebp-0C]
 00531480    mov         edx,dword ptr [ebp-48]
 00531483    call        0067DAEC
 00531488    inc         dword ptr [ebp-28]
 0053148B    mov         eax,dword ptr [eax]
 0053148D    pop         edx
 0053148E    call        SameText
 00531493    test        al,al
 00531495    setne       cl
 00531498    and         ecx,1
 0053149B    push        ecx
 0053149C    dec         dword ptr [ebp-28]
 0053149F    lea         eax,[ebp-10]
 005314A2    mov         edx,2
 005314A7    call        0067DCA0
 005314AC    dec         dword ptr [ebp-28]
 005314AF    lea         eax,[ebp-0C]
 005314B2    mov         edx,2
 005314B7    call        0067DCA0
 005314BC    pop         ecx
 005314BD    test        ecx,ecx
>005314BF    jne         00531575
 005314C5    mov         edx,6DC46B
 005314CA    lea         eax,[ebp-18]
 005314CD    call        0067DAB4
 005314D2    inc         dword ptr [ebp-28]
 005314D5    push        dword ptr [eax]
 005314D7    lea         eax,[ebp-14]
 005314DA    mov         edx,dword ptr [ebp-48]
 005314DD    call        0067DAEC
 005314E2    inc         dword ptr [ebp-28]
 005314E5    mov         eax,dword ptr [eax]
 005314E7    pop         edx
 005314E8    call        SameText
 005314ED    test        al,al
 005314EF    setne       cl
 005314F2    and         ecx,1
 005314F5    push        ecx
 005314F6    dec         dword ptr [ebp-28]
 005314F9    lea         eax,[ebp-18]
 005314FC    mov         edx,2
 00531501    call        0067DCA0
 00531506    dec         dword ptr [ebp-28]
 00531509    lea         eax,[ebp-14]
 0053150C    mov         edx,2
 00531511    call        0067DCA0
 00531516    pop         ecx
 00531517    test        ecx,ecx
>00531519    jne         00531575
 0053151B    mov         edx,6DC470
 00531520    lea         eax,[ebp-20]
 00531523    call        0067DAB4
 00531528    inc         dword ptr [ebp-28]
 0053152B    push        dword ptr [eax]
 0053152D    lea         eax,[ebp-1C]
 00531530    mov         edx,dword ptr [ebp-48]
 00531533    call        0067DAEC
 00531538    inc         dword ptr [ebp-28]
 0053153B    mov         eax,dword ptr [eax]
 0053153D    pop         edx
 0053153E    call        SameText
 00531543    test        al,al
 00531545    setne       cl
 00531548    and         ecx,1
 0053154B    push        ecx
 0053154C    dec         dword ptr [ebp-28]
 0053154F    lea         eax,[ebp-20]
 00531552    mov         edx,2
 00531557    call        0067DCA0
 0053155C    dec         dword ptr [ebp-28]
 0053155F    lea         eax,[ebp-1C]
 00531562    mov         edx,2
 00531567    call        0067DCA0
 0053156C    pop         ecx
 0053156D    test        ecx,ecx
>0053156F    jne         00531575
 00531571    xor         eax,eax
>00531573    jmp         0053157A
 00531575    mov         eax,1
 0053157A    push        eax
 0053157B    dec         dword ptr [ebp-28]
 0053157E    lea         eax,[ebp-8]
 00531581    mov         edx,2
 00531586    call        0067DCA0
 0053158B    pop         ecx
 0053158C    test        cl,cl
>0053158E    je          0053159E
 00531590    mov         al,1
 00531592    mov         edx,dword ptr [ebp-44]
 00531595    mov         dword ptr fs:[0],edx
>0053159C    jmp         005315AA
 0053159E    xor         eax,eax
 005315A0    mov         edx,dword ptr [ebp-44]
 005315A3    mov         dword ptr fs:[0],edx
 005315AA    mov         esp,ebp
 005315AC    pop         ebp
 005315AD    ret
end;*}

//005315B0
{*procedure sub_005315B0(?:dword; ?:?);
begin
 005315B0    push        ebp
 005315B1    mov         ebp,esp
 005315B3    add         esp,0FFFFFFCC
 005315B6    mov         dword ptr [ebp-0C],edx
 005315B9    mov         dword ptr [ebp-34],eax
 005315BC    mov         eax,6DCCB8
 005315C1    call        0066FECC
 005315C6    mov         word ptr [ebp-20],8
 005315CC    lea         eax,[ebp-4]
 005315CF    call        00401EA8
 005315D4    mov         edx,eax
 005315D6    inc         dword ptr [ebp-14]
 005315D9    mov         eax,dword ptr [ebp-34]
 005315DC    call        0053188C
 005315E1    lea         edx,[ebp-4]
 005315E4    push        edx
 005315E5    lea         eax,[ebp-8]
 005315E8    call        00401EA8
 005315ED    mov         ecx,eax
 005315EF    inc         dword ptr [ebp-14]
 005315F2    mov         eax,6DC476
 005315F7    pop         edx
 005315F8    call        0067E37C
 005315FD    lea         edx,[ebp-8]
 00531600    mov         eax,dword ptr [ebp-0C]
 00531603    call        0067DCD0
 00531608    mov         eax,dword ptr [ebp-0C]
 0053160B    mov         word ptr [ebp-20],14
 00531611    push        eax
 00531612    dec         dword ptr [ebp-14]
 00531615    lea         eax,[ebp-8]
 00531618    mov         edx,2
 0053161D    call        0067DCA0
 00531622    dec         dword ptr [ebp-14]
 00531625    lea         eax,[ebp-4]
 00531628    mov         edx,2
 0053162D    call        0067DCA0
 00531632    pop         eax
 00531633    mov         word ptr [ebp-20],8
 00531639    inc         dword ptr [ebp-14]
 0053163C    mov         edx,dword ptr [ebp-30]
 0053163F    mov         dword ptr fs:[0],edx
 00531646    mov         esp,ebp
 00531648    pop         ebp
 00531649    ret
end;*}

//0053164C
{*procedure sub_0053164C(?:dword; ?:?);
begin
 0053164C    push        ebp
 0053164D    mov         ebp,esp
 0053164F    add         esp,0FFFFFFD0
 00531652    mov         dword ptr [ebp-8],edx
 00531655    mov         dword ptr [ebp-30],eax
 00531658    mov         eax,6DCD04
 0053165D    call        0066FECC
 00531662    mov         word ptr [ebp-1C],8
 00531668    lea         eax,[ebp-4]
 0053166B    call        00401EA8
 00531670    mov         ecx,eax
 00531672    inc         dword ptr [ebp-10]
 00531675    xor         edx,edx
 00531677    mov         eax,dword ptr [ebp-30]
 0053167A    call        00657C04
 0053167F    lea         edx,[ebp-4]
 00531682    mov         eax,dword ptr [ebp-8]
 00531685    call        0067DCD0
 0053168A    mov         eax,dword ptr [ebp-8]
 0053168D    mov         word ptr [ebp-1C],14
 00531693    push        eax
 00531694    dec         dword ptr [ebp-10]
 00531697    lea         eax,[ebp-4]
 0053169A    mov         edx,2
 0053169F    call        0067DCA0
 005316A4    pop         eax
 005316A5    mov         word ptr [ebp-1C],8
 005316AB    inc         dword ptr [ebp-10]
 005316AE    mov         edx,dword ptr [ebp-2C]
 005316B1    mov         dword ptr fs:[0],edx
 005316B8    mov         esp,ebp
 005316BA    pop         ebp
 005316BB    ret
end;*}

//005316BC
{*procedure sub_005316BC(?:?; ?:?);
begin
 005316BC    push        ebp
 005316BD    mov         ebp,esp
 005316BF    add         esp,0FFFFFFD0
 005316C2    mov         dword ptr [ebp-8],edx
 005316C5    mov         dword ptr [ebp-30],eax
 005316C8    mov         eax,6DCD50
 005316CD    call        0066FECC
 005316D2    mov         word ptr [ebp-1C],8
 005316D8    lea         eax,[ebp-4]
 005316DB    call        00401EA8
 005316E0    mov         ecx,eax
 005316E2    inc         dword ptr [ebp-10]
 005316E5    mov         edx,1
 005316EA    mov         eax,dword ptr [ebp-30]
 005316ED    call        00657C04
 005316F2    lea         edx,[ebp-4]
 005316F5    mov         eax,dword ptr [ebp-8]
 005316F8    call        0067DCD0
 005316FD    mov         eax,dword ptr [ebp-8]
 00531700    mov         word ptr [ebp-1C],14
 00531706    push        eax
 00531707    dec         dword ptr [ebp-10]
 0053170A    lea         eax,[ebp-4]
 0053170D    mov         edx,2
 00531712    call        0067DCA0
 00531717    pop         eax
 00531718    mov         word ptr [ebp-1C],8
 0053171E    inc         dword ptr [ebp-10]
 00531721    mov         edx,dword ptr [ebp-2C]
 00531724    mov         dword ptr fs:[0],edx
 0053172B    mov         esp,ebp
 0053172D    pop         ebp
 0053172E    ret
end;*}

//00531730
{*procedure sub_00531730(?:?; ?:?);
begin
 00531730    push        ebp
 00531731    mov         ebp,esp
 00531733    add         esp,0FFFFFFD0
 00531736    mov         dword ptr [ebp-8],edx
 00531739    mov         dword ptr [ebp-30],eax
 0053173C    mov         eax,6DCD9C
 00531741    call        0066FECC
 00531746    mov         word ptr [ebp-1C],8
 0053174C    lea         eax,[ebp-4]
 0053174F    call        00401EA8
 00531754    mov         ecx,eax
 00531756    inc         dword ptr [ebp-10]
 00531759    mov         edx,2
 0053175E    mov         eax,dword ptr [ebp-30]
 00531761    call        00657C04
 00531766    lea         edx,[ebp-4]
 00531769    mov         eax,dword ptr [ebp-8]
 0053176C    call        0067DCD0
 00531771    mov         eax,dword ptr [ebp-8]
 00531774    mov         word ptr [ebp-1C],14
 0053177A    push        eax
 0053177B    dec         dword ptr [ebp-10]
 0053177E    lea         eax,[ebp-4]
 00531781    mov         edx,2
 00531786    call        0067DCA0
 0053178B    pop         eax
 0053178C    mov         word ptr [ebp-1C],8
 00531792    inc         dword ptr [ebp-10]
 00531795    mov         edx,dword ptr [ebp-2C]
 00531798    mov         dword ptr fs:[0],edx
 0053179F    mov         esp,ebp
 005317A1    pop         ebp
 005317A2    ret
end;*}

//005317A4
{*procedure sub_005317A4(?:?; ?:?);
begin
 005317A4    push        ebp
 005317A5    mov         ebp,esp
 005317A7    add         esp,0FFFFFFD0
 005317AA    mov         dword ptr [ebp-8],edx
 005317AD    mov         dword ptr [ebp-30],eax
 005317B0    mov         eax,6DCDE8
 005317B5    call        0066FECC
 005317BA    mov         word ptr [ebp-1C],8
 005317C0    lea         eax,[ebp-4]
 005317C3    call        00401EA8
 005317C8    mov         ecx,eax
 005317CA    inc         dword ptr [ebp-10]
 005317CD    mov         edx,4
 005317D2    mov         eax,dword ptr [ebp-30]
 005317D5    call        00657C04
 005317DA    lea         edx,[ebp-4]
 005317DD    mov         eax,dword ptr [ebp-8]
 005317E0    call        0067DCD0
 005317E5    mov         eax,dword ptr [ebp-8]
 005317E8    mov         word ptr [ebp-1C],14
 005317EE    push        eax
 005317EF    dec         dword ptr [ebp-10]
 005317F2    lea         eax,[ebp-4]
 005317F5    mov         edx,2
 005317FA    call        0067DCA0
 005317FF    pop         eax
 00531800    mov         word ptr [ebp-1C],8
 00531806    inc         dword ptr [ebp-10]
 00531809    mov         edx,dword ptr [ebp-2C]
 0053180C    mov         dword ptr fs:[0],edx
 00531813    mov         esp,ebp
 00531815    pop         ebp
 00531816    ret
end;*}

//00531818
{*procedure sub_00531818(?:?; ?:?);
begin
 00531818    push        ebp
 00531819    mov         ebp,esp
 0053181B    add         esp,0FFFFFFD0
 0053181E    mov         dword ptr [ebp-8],edx
 00531821    mov         dword ptr [ebp-30],eax
 00531824    mov         eax,6DCE34
 00531829    call        0066FECC
 0053182E    mov         word ptr [ebp-1C],8
 00531834    lea         eax,[ebp-4]
 00531837    call        00401EA8
 0053183C    mov         ecx,eax
 0053183E    inc         dword ptr [ebp-10]
 00531841    mov         edx,5
 00531846    mov         eax,dword ptr [ebp-30]
 00531849    call        00657C04
 0053184E    lea         edx,[ebp-4]
 00531851    mov         eax,dword ptr [ebp-8]
 00531854    call        0067DCD0
 00531859    mov         eax,dword ptr [ebp-8]
 0053185C    mov         word ptr [ebp-1C],14
 00531862    push        eax
 00531863    dec         dword ptr [ebp-10]
 00531866    lea         eax,[ebp-4]
 00531869    mov         edx,2
 0053186E    call        0067DCA0
 00531873    pop         eax
 00531874    mov         word ptr [ebp-1C],8
 0053187A    inc         dword ptr [ebp-10]
 0053187D    mov         edx,dword ptr [ebp-2C]
 00531880    mov         dword ptr fs:[0],edx
 00531887    mov         esp,ebp
 00531889    pop         ebp
 0053188A    ret
end;*}

//0053188C
{*procedure sub_0053188C(?:dword; ?:?);
begin
 0053188C    push        ebp
 0053188D    mov         ebp,esp
 0053188F    add         esp,0FFFFFFD0
 00531892    mov         dword ptr [ebp-8],edx
 00531895    mov         dword ptr [ebp-30],eax
 00531898    mov         eax,6DCE80
 0053189D    call        0066FECC
 005318A2    mov         word ptr [ebp-1C],8
 005318A8    lea         eax,[ebp-4]
 005318AB    call        00401EA8
 005318B0    mov         ecx,eax
 005318B2    inc         dword ptr [ebp-10]
 005318B5    mov         edx,8
 005318BA    mov         eax,dword ptr [ebp-30]
 005318BD    call        00657C04
 005318C2    lea         edx,[ebp-4]
 005318C5    mov         eax,dword ptr [ebp-8]
 005318C8    call        0067DCD0
 005318CD    mov         eax,dword ptr [ebp-8]
 005318D0    mov         word ptr [ebp-1C],14
 005318D6    push        eax
 005318D7    dec         dword ptr [ebp-10]
 005318DA    lea         eax,[ebp-4]
 005318DD    mov         edx,2
 005318E2    call        0067DCA0
 005318E7    pop         eax
 005318E8    mov         word ptr [ebp-1C],8
 005318EE    inc         dword ptr [ebp-10]
 005318F1    mov         edx,dword ptr [ebp-2C]
 005318F4    mov         dword ptr fs:[0],edx
 005318FB    mov         esp,ebp
 005318FD    pop         ebp
 005318FE    ret
end;*}

//00531900
{*function sub_00531900(?:?; ?:AnsiString; ?:AnsiString):?;
begin
 00531900    push        ebp
 00531901    mov         ebp,esp
 00531903    add         esp,0FFFFFFBC
 00531906    push        ebx
 00531907    mov         dword ptr [ebp-8],ecx
 0053190A    mov         dword ptr [ebp-4],edx
 0053190D    mov         dword ptr [ebp-3C],eax
 00531910    mov         eax,6DCEF8
 00531915    call        0066FECC
 0053191A    mov         dword ptr [ebp-1C],2
 00531921    lea         edx,[ebp-4]
 00531924    lea         eax,[ebp-4]
 00531927    call        0067DAEC
 0053192C    inc         dword ptr [ebp-1C]
 0053192F    mov         word ptr [ebp-28],8
 00531935    lea         edx,[ebp-8]
 00531938    lea         eax,[ebp-8]
 0053193B    call        0067DAEC
 00531940    inc         dword ptr [ebp-1C]
 00531943    mov         word ptr [ebp-28],14
 00531949    lea         eax,[ebp-0C]
 0053194C    call        00401EA8
 00531951    mov         edx,eax
 00531953    inc         dword ptr [ebp-1C]
 00531956    mov         eax,dword ptr [ebp-3C]
 00531959    call        0053188C
 0053195E    mov         word ptr [ebp-28],8
 00531964    mov         edx,dword ptr [ebp-0C]
 00531967    mov         eax,[006941D0];0x0 gvar_006941D0
 0053196C    mov         ecx,dword ptr [eax]
 0053196E    call        dword ptr [ecx+54]
 00531971    mov         dword ptr [ebp-44],eax
 00531974    mov         edx,dword ptr [ebp-44]
 00531977    inc         edx
>00531978    jne         005319D8
 0053197A    push        26
 0053197C    call        0066EAE4
 00531981    pop         ecx
 00531982    mov         dword ptr [ebp-10],eax
 00531985    test        eax,eax
>00531987    je          005319A7
 00531989    mov         word ptr [ebp-28],2C
 0053198F    mov         cl,2B
 00531991    or          edx,0FFFFFFFF
 00531994    mov         eax,dword ptr [ebp-10]
 00531997    call        00485550
 0053199C    mov         word ptr [ebp-28],20
 005319A2    mov         edx,dword ptr [ebp-10]
>005319A5    jmp         005319AA
 005319A7    mov         edx,dword ptr [ebp-10]
 005319AA    mov         dword ptr [ebp-40],edx
 005319AD    mov         edx,dword ptr [ebp-4]
 005319B0    mov         eax,dword ptr [ebp-40]
 005319B3    call        00485974
 005319B8    lea         edx,[ebp-8]
 005319BB    mov         eax,dword ptr [ebp-40]
 005319BE    add         eax,0A
 005319C1    call        0067DCD0
 005319C6    mov         ecx,dword ptr [ebp-40]
 005319C9    mov         edx,dword ptr [ebp-0C]
 005319CC    mov         eax,[006941D0];0x0 gvar_006941D0
 005319D1    mov         ebx,dword ptr [eax]
 005319D3    call        dword ptr [ebx+3C]
>005319D6    jmp         00531A30
 005319D8    mov         edx,dword ptr [ebp-44]
 005319DB    mov         eax,[006941D0];0x0 gvar_006941D0
 005319E0    mov         ecx,dword ptr [eax]
 005319E2    call        dword ptr [ecx+18]
 005319E5    mov         dword ptr [ebp-40],eax
 005319E8    mov         word ptr [ebp-28],38
 005319EE    mov         edx,6DC47B
 005319F3    lea         eax,[ebp-14]
 005319F6    call        0067DAB4
 005319FB    inc         dword ptr [ebp-1C]
 005319FE    lea         edx,[ebp-14]
 00531A01    mov         eax,dword ptr [ebp-40]
 00531A04    add         eax,0A
 00531A07    call        0067DD84
 00531A0C    push        eax
 00531A0D    dec         dword ptr [ebp-1C]
 00531A10    lea         eax,[ebp-14]
 00531A13    mov         edx,2
 00531A18    call        0067DCA0
 00531A1D    pop         ecx
 00531A1E    test        cl,cl
>00531A20    je          00531A30
 00531A22    lea         edx,[ebp-8]
 00531A25    mov         eax,dword ptr [ebp-40]
 00531A28    add         eax,0A
 00531A2B    call        0067DCD0
 00531A30    mov         eax,dword ptr [ebp-40]
 00531A33    push        eax
 00531A34    dec         dword ptr [ebp-1C]
 00531A37    lea         eax,[ebp-0C]
 00531A3A    mov         edx,2
 00531A3F    call        0067DCA0
 00531A44    dec         dword ptr [ebp-1C]
 00531A47    lea         eax,[ebp-8]
 00531A4A    mov         edx,2
 00531A4F    call        0067DCA0
 00531A54    dec         dword ptr [ebp-1C]
 00531A57    lea         eax,[ebp-4]
 00531A5A    mov         edx,2
 00531A5F    call        0067DCA0
 00531A64    pop         eax
 00531A65    mov         edx,dword ptr [ebp-38]
 00531A68    mov         dword ptr fs:[0],edx
 00531A6F    pop         ebx
 00531A70    mov         esp,ebp
 00531A72    pop         ebp
 00531A73    ret
end;*}

//00531A74
{*procedure sub_00531A74(?:?; ?:?);
begin
 00531A74    push        ebp
 00531A75    mov         ebp,esp
 00531A77    add         esp,0FFFFFFCC
 00531A7A    mov         dword ptr [ebp-0C],edx
 00531A7D    mov         dword ptr [ebp-34],eax
 00531A80    mov         eax,6DCF74
 00531A85    call        0066FECC
 00531A8A    mov         word ptr [ebp-20],8
 00531A90    lea         eax,[ebp-4]
 00531A93    call        00401EA8
 00531A98    mov         edx,eax
 00531A9A    inc         dword ptr [ebp-14]
 00531A9D    mov         eax,dword ptr [ebp-34]
 00531AA0    call        0053188C
 00531AA5    lea         edx,[ebp-4]
 00531AA8    push        edx
 00531AA9    lea         eax,[ebp-8]
 00531AAC    call        00401EA8
 00531AB1    mov         ecx,eax
 00531AB3    inc         dword ptr [ebp-14]
 00531AB6    mov         eax,6DC47C
 00531ABB    pop         edx
 00531ABC    call        0067E37C
 00531AC1    lea         edx,[ebp-8]
 00531AC4    mov         eax,dword ptr [ebp-0C]
 00531AC7    call        0067DCD0
 00531ACC    mov         eax,dword ptr [ebp-0C]
 00531ACF    mov         word ptr [ebp-20],14
 00531AD5    push        eax
 00531AD6    dec         dword ptr [ebp-14]
 00531AD9    lea         eax,[ebp-8]
 00531ADC    mov         edx,2
 00531AE1    call        0067DCA0
 00531AE6    dec         dword ptr [ebp-14]
 00531AE9    lea         eax,[ebp-4]
 00531AEC    mov         edx,2
 00531AF1    call        0067DCA0
 00531AF6    pop         eax
 00531AF7    mov         word ptr [ebp-20],8
 00531AFD    inc         dword ptr [ebp-14]
 00531B00    mov         edx,dword ptr [ebp-30]
 00531B03    mov         dword ptr fs:[0],edx
 00531B0A    mov         esp,ebp
 00531B0C    pop         ebp
 00531B0D    ret
end;*}

//00531B10
{*procedure sub_00531B10(?:?; ?:?; ?:?);
begin
 00531B10    push        ebp
 00531B11    mov         ebp,esp
 00531B13    add         esp,0FFFFFFCC
 00531B16    mov         dword ptr [ebp-34],ecx
 00531B19    mov         dword ptr [ebp-30],edx
 00531B1C    mov         dword ptr [ebp-2C],eax
 00531B1F    mov         eax,6DCFA4
 00531B24    call        0066FECC
 00531B29    mov         eax,dword ptr [ebp-2C]
 00531B2C    call        004858C4
 00531B31    test        al,al
>00531B33    jne         00531B6D
 00531B35    mov         word ptr [ebp-18],8
 00531B3B    lea         eax,[ebp-4]
 00531B3E    call        00401EA8
 00531B43    mov         edx,eax
 00531B45    inc         dword ptr [ebp-0C]
 00531B48    mov         eax,dword ptr [ebp-30]
 00531B4B    call        00531A74
 00531B50    lea         edx,[ebp-4]
 00531B53    mov         edx,dword ptr [edx]
 00531B55    mov         eax,dword ptr [ebp-2C]
 00531B58    call        00485974
 00531B5D    dec         dword ptr [ebp-0C]
 00531B60    lea         eax,[ebp-4]
 00531B63    mov         edx,2
 00531B68    call        0067DCA0
 00531B6D    mov         ecx,dword ptr [ebp-34]
 00531B70    test        ecx,ecx
>00531B72    je          00531B83
 00531B74    push        0
 00531B76    mov         ecx,dword ptr [ebp-34]
 00531B79    mov         dl,43
 00531B7B    mov         eax,dword ptr [ebp-2C]
 00531B7E    call        00485B40
 00531B83    mov         eax,dword ptr [ebp-28]
 00531B86    mov         fs:[00000000],eax
 00531B8C    mov         esp,ebp
 00531B8E    pop         ebp
 00531B8F    ret
end;*}

//00531B90
{*procedure sub_00531B90(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00531B90    push        ebp
 00531B91    mov         ebp,esp
 00531B93    add         esp,0FFFFFFB0
 00531B96    mov         dword ptr [ebp-3C],ecx
 00531B99    mov         byte ptr [ebp-35],dl
 00531B9C    mov         dword ptr [ebp-34],eax
 00531B9F    mov         eax,6DCFE4
 00531BA4    call        0066FECC
 00531BA9    mov         edx,dword ptr [ebp+0C]
 00531BAC    mov         ecx,dword ptr [edx]
 00531BAE    mov         dword ptr [ebp-40],ecx
 00531BB1    mov         eax,dword ptr [ebp+8]
 00531BB4    mov         edx,dword ptr [eax]
 00531BB6    mov         dword ptr [ebp-44],edx
 00531BB9    mov         ecx,dword ptr [ebp-40]
 00531BBC    mov         al,byte ptr [ecx]
 00531BBE    mov         edx,dword ptr [ebp-3C]
 00531BC1    mov         byte ptr [edx],al
 00531BC3    inc         dword ptr [ebp-40]
 00531BC6    mov         ecx,dword ptr [ebp-40]
 00531BC9    mov         eax,dword ptr [ecx]
 00531BCB    mov         dword ptr [ebp-48],eax
 00531BCE    add         dword ptr [ebp-40],4
 00531BD2    mov         edx,dword ptr [ebp-48]
 00531BD5    and         edx,7
 00531BD8    dec         edx
>00531BD9    jne         00531BE1
 00531BDB    mov         ecx,dword ptr [ebp-3C]
 00531BDE    mov         byte ptr [ecx],23
 00531BE1    test        byte ptr [ebp-48],8
 00531BE5    setne       al
 00531BE8    and         eax,1
 00531BEB    mov         edx,dword ptr [ebp-3C]
 00531BEE    mov         byte ptr [edx+1],al
 00531BF1    mov         ecx,dword ptr [ebp-40]
 00531BF4    mov         eax,dword ptr [ecx]
 00531BF6    mov         dword ptr [ebp-4C],eax
 00531BF9    add         dword ptr [ebp-40],4
 00531BFD    mov         dl,byte ptr [ebp-35]
 00531C00    test        dl,dl
>00531C02    jne         00531C2C
 00531C04    mov         ecx,dword ptr [ebp-3C]
 00531C07    mov         al,byte ptr [ecx+1]
 00531C0A    test        al,al
>00531C0C    je          00531C21
 00531C0E    mov         edx,dword ptr [ebp-34]
 00531C11    cmp         edx,3
>00531C14    jge         00531C21
 00531C16    mov         ecx,dword ptr [ebp-34]
 00531C19    mov         eax,dword ptr [ebp-3C]
 00531C1C    mov         dword ptr [eax+2],ecx
>00531C1F    jmp         00531C39
 00531C21    mov         edx,dword ptr [ebp-4C]
 00531C24    mov         ecx,dword ptr [ebp-3C]
 00531C27    mov         dword ptr [ecx+2],edx
>00531C2A    jmp         00531C39
 00531C2C    mov         eax,dword ptr [ebp-44]
 00531C2F    mov         edx,dword ptr [ebp-3C]
 00531C32    mov         dword ptr [edx+2],eax
 00531C35    add         dword ptr [ebp-44],4
 00531C39    mov         ecx,dword ptr [ebp-3C]
 00531C3C    mov         dword ptr [ecx+6],4
 00531C43    mov         eax,dword ptr [ebp-40]
 00531C46    mov         dx,word ptr [eax]
 00531C49    mov         word ptr [ebp-4E],dx
 00531C4D    add         dword ptr [ebp-40],2
 00531C51    mov         word ptr [ebp-20],8
 00531C57    movzx       ecx,word ptr [ebp-4E]
 00531C5B    lea         eax,[ebp-4]
 00531C5E    mov         edx,dword ptr [ebp-40]
 00531C61    call        0067DB28
 00531C66    mov         edx,eax
 00531C68    inc         dword ptr [ebp-14]
 00531C6B    mov         eax,dword ptr [ebp-3C]
 00531C6E    add         eax,0A
 00531C71    call        0067DCD0
 00531C76    dec         dword ptr [ebp-14]
 00531C79    lea         eax,[ebp-4]
 00531C7C    mov         edx,2
 00531C81    call        0067DCA0
 00531C86    movzx       ecx,word ptr [ebp-4E]
 00531C8A    inc         ecx
 00531C8B    add         dword ptr [ebp-40],ecx
 00531C8E    mov         eax,dword ptr [ebp-40]
 00531C91    mov         dx,word ptr [eax]
 00531C94    mov         word ptr [ebp-4E],dx
 00531C98    add         dword ptr [ebp-40],2
 00531C9C    mov         word ptr [ebp-20],14
 00531CA2    movzx       ecx,word ptr [ebp-4E]
 00531CA6    lea         eax,[ebp-8]
 00531CA9    mov         edx,dword ptr [ebp-40]
 00531CAC    call        0067DB28
 00531CB1    push        eax
 00531CB2    inc         dword ptr [ebp-14]
 00531CB5    lea         eax,[ebp-0C]
 00531CB8    call        00401EA8
 00531CBD    mov         edx,eax
 00531CBF    inc         dword ptr [ebp-14]
 00531CC2    pop         eax
 00531CC3    call        00531D20
 00531CC8    lea         edx,[ebp-0C]
 00531CCB    mov         eax,dword ptr [ebp-3C]
 00531CCE    add         eax,0E
 00531CD1    call        0067DCD0
 00531CD6    dec         dword ptr [ebp-14]
 00531CD9    lea         eax,[ebp-0C]
 00531CDC    mov         edx,2
 00531CE1    call        0067DCA0
 00531CE6    dec         dword ptr [ebp-14]
 00531CE9    lea         eax,[ebp-8]
 00531CEC    mov         edx,2
 00531CF1    call        0067DCA0
 00531CF6    movzx       ecx,word ptr [ebp-4E]
 00531CFA    inc         ecx
 00531CFB    add         dword ptr [ebp-40],ecx
 00531CFE    mov         eax,dword ptr [ebp+0C]
 00531D01    mov         edx,dword ptr [ebp-40]
 00531D04    mov         dword ptr [eax],edx
 00531D06    mov         ecx,dword ptr [ebp+8]
 00531D09    mov         eax,dword ptr [ebp-44]
 00531D0C    mov         dword ptr [ecx],eax
 00531D0E    mov         edx,dword ptr [ebp-30]
 00531D11    mov         dword ptr fs:[0],edx
 00531D18    mov         esp,ebp
 00531D1A    pop         ebp
 00531D1B    ret         8
end;*}

//00531D20
{*procedure sub_00531D20(?:AnsiString; ?:?);
begin
 00531D20    push        ebp
 00531D21    mov         ebp,esp
 00531D23    add         esp,0FFFFFFC0
 00531D26    mov         dword ptr [ebp-4],edx
 00531D29    mov         dword ptr [ebp-34],eax
 00531D2C    mov         eax,6DD080
 00531D31    call        0066FECC
 00531D36    mov         eax,dword ptr [ebp-34]
 00531D39    call        0040A248
 00531D3E    test        al,al
>00531D40    je          00531D68
 00531D42    mov         word ptr [ebp-20],8
 00531D48    mov         edx,dword ptr [ebp-34]
 00531D4B    mov         eax,dword ptr [ebp-4]
 00531D4E    call        0067DCD0
 00531D53    mov         eax,dword ptr [ebp-4]
 00531D56    inc         dword ptr [ebp-14]
 00531D59    mov         edx,dword ptr [ebp-30]
 00531D5C    mov         dword ptr fs:[0],edx
>00531D63    jmp         00531EB7
 00531D68    mov         word ptr [ebp-20],20
 00531D6E    mov         edx,6DC482
 00531D73    lea         eax,[ebp-8]
 00531D76    call        0067DAB4
 00531D7B    inc         dword ptr [ebp-14]
 00531D7E    lea         edx,[ebp-8]
 00531D81    mov         eax,dword ptr [ebp-34]
 00531D84    call        0067DEF4
 00531D89    mov         dword ptr [ebp-38],eax
 00531D8C    dec         dword ptr [ebp-14]
 00531D8F    lea         eax,[ebp-8]
 00531D92    mov         edx,2
 00531D97    call        0067DCA0
 00531D9C    mov         word ptr [ebp-20],14
 00531DA2    mov         ecx,dword ptr [ebp-38]
 00531DA5    test        ecx,ecx
>00531DA7    je          00531DAF
 00531DA9    mov         eax,dword ptr [ebp-38]
 00531DAC    dec         eax
>00531DAD    jne         00531DD5
 00531DAF    mov         word ptr [ebp-20],2C
 00531DB5    mov         edx,dword ptr [ebp-34]
 00531DB8    mov         eax,dword ptr [ebp-4]
 00531DBB    call        0067DCD0
 00531DC0    mov         eax,dword ptr [ebp-4]
 00531DC3    inc         dword ptr [ebp-14]
 00531DC6    mov         edx,dword ptr [ebp-30]
 00531DC9    mov         dword ptr fs:[0],edx
>00531DD0    jmp         00531EB7
 00531DD5    mov         edx,dword ptr [ebp-38]
 00531DD8    inc         edx
 00531DD9    mov         eax,dword ptr [ebp-34]
 00531DDC    call        00531EBC
 00531DE1    movsx       ecx,al
 00531DE4    cmp         ecx,2E
>00531DE7    jne         00531E0F
 00531DE9    mov         word ptr [ebp-20],38
 00531DEF    mov         edx,dword ptr [ebp-34]
 00531DF2    mov         eax,dword ptr [ebp-4]
 00531DF5    call        0067DCD0
 00531DFA    mov         eax,dword ptr [ebp-4]
 00531DFD    inc         dword ptr [ebp-14]
 00531E00    mov         edx,dword ptr [ebp-30]
 00531E03    mov         dword ptr fs:[0],edx
>00531E0A    jmp         00531EB7
 00531E0F    mov         eax,dword ptr [ebp-34]
 00531E12    call        00403C0C
 00531E17    mov         dword ptr [ebp-40],eax
 00531E1A    mov         edx,dword ptr [ebp-40]
 00531E1D    mov         cl,byte ptr [edx]
 00531E1F    mov         byte ptr [ebp-39],cl
 00531E22    inc         dword ptr [ebp-40]
 00531E25    movsx       eax,byte ptr [ebp-39]
 00531E29    cmp         eax,2E
>00531E2C    je          00531E63
 00531E2E    movsx       edx,byte ptr [ebp-39]
 00531E32    cmp         edx,30
>00531E35    jl          00531E40
 00531E37    movsx       ecx,byte ptr [ebp-39]
 00531E3B    cmp         ecx,3C
>00531E3E    jne         00531E1A
 00531E40    mov         word ptr [ebp-20],44
 00531E46    mov         edx,dword ptr [ebp-34]
 00531E49    mov         eax,dword ptr [ebp-4]
 00531E4C    call        0067DCD0
 00531E51    mov         eax,dword ptr [ebp-4]
 00531E54    inc         dword ptr [ebp-14]
 00531E57    mov         edx,dword ptr [ebp-30]
 00531E5A    mov         dword ptr fs:[0],edx
>00531E61    jmp         00531EB7
 00531E63    mov         word ptr [ebp-20],50
 00531E69    lea         eax,[ebp-0C]
 00531E6C    call        00401EA8
 00531E71    mov         edx,eax
 00531E73    inc         dword ptr [ebp-14]
 00531E76    mov         eax,dword ptr [ebp-34]
 00531E79    call        005320E4
 00531E7E    lea         edx,[ebp-0C]
 00531E81    mov         eax,dword ptr [ebp-4]
 00531E84    call        0067DCD0
 00531E89    mov         eax,dword ptr [ebp-4]
 00531E8C    mov         word ptr [ebp-20],5C
 00531E92    push        eax
 00531E93    dec         dword ptr [ebp-14]
 00531E96    lea         eax,[ebp-0C]
 00531E99    mov         edx,2
 00531E9E    call        0067DCA0
 00531EA3    pop         eax
 00531EA4    mov         word ptr [ebp-20],50
 00531EAA    inc         dword ptr [ebp-14]
 00531EAD    mov         edx,dword ptr [ebp-30]
 00531EB0    mov         dword ptr fs:[0],edx
 00531EB7    mov         esp,ebp
 00531EB9    pop         ebp
 00531EBA    ret
end;*}

//00531EBC
{*function sub_00531EBC(?:AnsiString; ?:?):?;
begin
 00531EBC    push        ebp
 00531EBD    mov         ebp,esp
 00531EBF    add         esp,0FFFFFFF8
 00531EC2    mov         dword ptr [ebp-8],edx
 00531EC5    mov         dword ptr [ebp-4],eax
 00531EC8    push        dword ptr [ebp-8]
 00531ECB    push        dword ptr [ebp-4]
 00531ECE    call        0067DA2C
 00531ED3    add         esp,8
 00531ED6    mov         eax,dword ptr [ebp-4]
 00531ED9    mov         edx,dword ptr [eax]
 00531EDB    mov         ecx,dword ptr [ebp-8]
 00531EDE    mov         al,byte ptr [edx+ecx-1]
 00531EE2    pop         ecx
 00531EE3    pop         ecx
 00531EE4    pop         ebp
 00531EE5    ret
end;*}

//00531EE8
{*function sub_00531EE8(?:dword):?;
begin
 00531EE8    push        ebp
 00531EE9    mov         ebp,esp
 00531EEB    push        ecx
 00531EEC    mov         dword ptr [ebp-4],eax
 00531EEF    mov         eax,dword ptr [ebp-4]
 00531EF2    mov         edx,dword ptr ds:[6ECB50];0x0 gvar_006ECB50
 00531EF8    cmp         eax,edx
>00531EFA    jb          00531F15
 00531EFC    mov         ecx,dword ptr ds:[6ECB50];0x0 gvar_006ECB50
 00531F02    mov         eax,[006ECB48];0x0 gvar_006ECB48
 00531F07    add         ecx,eax
 00531F09    mov         edx,dword ptr [ebp-4]
 00531F0C    cmp         ecx,edx
>00531F0E    jbe         00531F15
 00531F10    mov         al,1
 00531F12    pop         ecx
 00531F13    pop         ebp
 00531F14    ret
 00531F15    xor         eax,eax
 00531F17    pop         ecx
 00531F18    pop         ebp
 00531F19    ret
end;*}

//00531F1C
{*function sub_00531F1C(?:Integer):?;
begin
 00531F1C    push        ebp
 00531F1D    mov         ebp,esp
 00531F1F    push        ecx
 00531F20    mov         dword ptr [ebp-4],eax
 00531F23    mov         eax,dword ptr [ebp-4]
 00531F26    mov         edx,dword ptr ds:[6ECB50];0x0 gvar_006ECB50
 00531F2C    cmp         eax,edx
>00531F2E    jb          00531F49
 00531F30    mov         ecx,dword ptr ds:[6ECB50];0x0 gvar_006ECB50
 00531F36    mov         eax,[006ECB54];0x0 gvar_006ECB54
 00531F3B    add         ecx,eax
 00531F3D    mov         edx,dword ptr [ebp-4]
 00531F40    cmp         ecx,edx
>00531F42    jbe         00531F49
 00531F44    mov         al,1
 00531F46    pop         ecx
 00531F47    pop         ebp
 00531F48    ret
 00531F49    xor         eax,eax
 00531F4B    pop         ecx
 00531F4C    pop         ebp
 00531F4D    ret
end;*}

//00531F50
{*procedure sub_00531F50(?:AnsiString; ?:?);
begin
 00531F50    push        ebp
 00531F51    mov         ebp,esp
 00531F53    add         esp,0FFFFFFBC
 00531F56    mov         dword ptr [ebp-0C],edx
 00531F59    mov         dword ptr [ebp-40],eax
 00531F5C    mov         eax,6DD18C
 00531F61    call        0066FECC
 00531F66    mov         word ptr [ebp-2C],8
 00531F6C    mov         edx,6DC484
 00531F71    lea         eax,[ebp-4]
 00531F74    call        0067DAB4
 00531F79    inc         dword ptr [ebp-20]
 00531F7C    lea         edx,[ebp-4]
 00531F7F    mov         eax,dword ptr [ebp-40]
 00531F82    call        0067DD84
 00531F87    push        eax
 00531F88    dec         dword ptr [ebp-20]
 00531F8B    lea         eax,[ebp-4]
 00531F8E    mov         edx,2
 00531F93    call        0067DCA0
 00531F98    pop         ecx
 00531F99    test        cl,cl
>00531F9B    je          00531FF1
 00531F9D    mov         word ptr [ebp-2C],14
 00531FA3    mov         edx,6DC485
 00531FA8    lea         eax,[ebp-8]
 00531FAB    call        0067DAB4
 00531FB0    inc         dword ptr [ebp-20]
 00531FB3    lea         edx,[ebp-8]
 00531FB6    mov         eax,dword ptr [ebp-0C]
 00531FB9    call        0067DCD0
 00531FBE    mov         eax,dword ptr [ebp-0C]
 00531FC1    mov         word ptr [ebp-2C],20
 00531FC7    push        eax
 00531FC8    dec         dword ptr [ebp-20]
 00531FCB    lea         eax,[ebp-8]
 00531FCE    mov         edx,2
 00531FD3    call        0067DCA0
 00531FD8    pop         eax
 00531FD9    mov         word ptr [ebp-2C],14
 00531FDF    inc         dword ptr [ebp-20]
 00531FE2    mov         edx,dword ptr [ebp-3C]
 00531FE5    mov         dword ptr fs:[0],edx
>00531FEC    jmp         005320DF
 00531FF1    mov         word ptr [ebp-2C],38
 00531FF7    mov         edx,6DC486
 00531FFC    lea         eax,[ebp-10]
 00531FFF    call        0067DAB4
 00532004    inc         dword ptr [ebp-20]
 00532007    lea         edx,[ebp-10]
 0053200A    mov         eax,dword ptr [ebp-40]
 0053200D    call        0067DEF4
 00532012    mov         dword ptr [ebp-44],eax
 00532015    dec         dword ptr [ebp-20]
 00532018    lea         eax,[ebp-10]
 0053201B    mov         edx,2
 00532020    call        0067DCA0
 00532025    mov         word ptr [ebp-2C],2C
 0053202B    mov         ecx,dword ptr [ebp-44]
 0053202E    test        ecx,ecx
>00532030    je          00532090
 00532032    mov         word ptr [ebp-2C],44
 00532038    lea         eax,[ebp-14]
 0053203B    call        00401EA8
 00532040    push        eax
 00532041    inc         dword ptr [ebp-20]
 00532044    mov         ecx,dword ptr [ebp-44]
 00532047    dec         ecx
 00532048    mov         edx,1
 0053204D    mov         eax,dword ptr [ebp-40]
 00532050    call        0067E0BC
 00532055    lea         edx,[ebp-14]
 00532058    mov         eax,dword ptr [ebp-0C]
 0053205B    call        0067DCD0
 00532060    mov         eax,dword ptr [ebp-0C]
 00532063    mov         word ptr [ebp-2C],50
 00532069    push        eax
 0053206A    dec         dword ptr [ebp-20]
 0053206D    lea         eax,[ebp-14]
 00532070    mov         edx,2
 00532075    call        0067DCA0
 0053207A    pop         eax
 0053207B    mov         word ptr [ebp-2C],44
 00532081    inc         dword ptr [ebp-20]
 00532084    mov         edx,dword ptr [ebp-3C]
 00532087    mov         dword ptr fs:[0],edx
>0053208E    jmp         005320DF
 00532090    mov         word ptr [ebp-2C],5C
 00532096    mov         edx,6DC488
 0053209B    lea         eax,[ebp-18]
 0053209E    call        0067DAB4
 005320A3    inc         dword ptr [ebp-20]
 005320A6    lea         edx,[ebp-18]
 005320A9    mov         eax,dword ptr [ebp-0C]
 005320AC    call        0067DCD0
 005320B1    mov         eax,dword ptr [ebp-0C]
 005320B4    mov         word ptr [ebp-2C],68
 005320BA    push        eax
 005320BB    dec         dword ptr [ebp-20]
 005320BE    lea         eax,[ebp-18]
 005320C1    mov         edx,2
 005320C6    call        0067DCA0
 005320CB    pop         eax
 005320CC    mov         word ptr [ebp-2C],5C
 005320D2    inc         dword ptr [ebp-20]
 005320D5    mov         edx,dword ptr [ebp-3C]
 005320D8    mov         dword ptr fs:[0],edx
 005320DF    mov         esp,ebp
 005320E1    pop         ebp
 005320E2    ret
end;*}

//005320E4
{*procedure sub_005320E4(?:AnsiString; ?:?);
begin
 005320E4    push        ebp
 005320E5    mov         ebp,esp
 005320E7    add         esp,0FFFFFFC0
 005320EA    mov         dword ptr [ebp-0C],edx
 005320ED    mov         dword ptr [ebp-3C],eax
 005320F0    mov         eax,6DD288
 005320F5    call        0066FECC
 005320FA    mov         word ptr [ebp-28],8
 00532100    mov         edx,6DC489
 00532105    lea         eax,[ebp-4]
 00532108    call        0067DAB4
 0053210D    inc         dword ptr [ebp-1C]
 00532110    lea         edx,[ebp-4]
 00532113    mov         eax,dword ptr [ebp-3C]
 00532116    call        0067DD84
 0053211B    push        eax
 0053211C    dec         dword ptr [ebp-1C]
 0053211F    lea         eax,[ebp-4]
 00532122    mov         edx,2
 00532127    call        0067DCA0
 0053212C    pop         ecx
 0053212D    test        cl,cl
>0053212F    je          00532185
 00532131    mov         word ptr [ebp-28],14
 00532137    mov         edx,6DC48A
 0053213C    lea         eax,[ebp-8]
 0053213F    call        0067DAB4
 00532144    inc         dword ptr [ebp-1C]
 00532147    lea         edx,[ebp-8]
 0053214A    mov         eax,dword ptr [ebp-0C]
 0053214D    call        0067DCD0
 00532152    mov         eax,dword ptr [ebp-0C]
 00532155    mov         word ptr [ebp-28],20
 0053215B    push        eax
 0053215C    dec         dword ptr [ebp-1C]
 0053215F    lea         eax,[ebp-8]
 00532162    mov         edx,2
 00532167    call        0067DCA0
 0053216C    pop         eax
 0053216D    mov         word ptr [ebp-28],14
 00532173    inc         dword ptr [ebp-1C]
 00532176    mov         edx,dword ptr [ebp-38]
 00532179    mov         dword ptr fs:[0],edx
>00532180    jmp         0053224A
 00532185    mov         word ptr [ebp-28],38
 0053218B    mov         edx,6DC48B
 00532190    lea         eax,[ebp-10]
 00532193    call        0067DAB4
 00532198    inc         dword ptr [ebp-1C]
 0053219B    lea         edx,[ebp-10]
 0053219E    mov         eax,dword ptr [ebp-3C]
 005321A1    call        0067DEF4
 005321A6    mov         dword ptr [ebp-40],eax
 005321A9    dec         dword ptr [ebp-1C]
 005321AC    lea         eax,[ebp-10]
 005321AF    mov         edx,2
 005321B4    call        0067DCA0
 005321B9    mov         word ptr [ebp-28],2C
 005321BF    mov         ecx,dword ptr [ebp-40]
 005321C2    test        ecx,ecx
>005321C4    je          00532229
 005321C6    mov         word ptr [ebp-28],44
 005321CC    lea         eax,[ebp-14]
 005321CF    call        00401EA8
 005321D4    push        eax
 005321D5    inc         dword ptr [ebp-1C]
 005321D8    mov         eax,dword ptr [ebp-3C]
 005321DB    call        00405290
 005321E0    mov         ecx,eax
 005321E2    mov         edx,dword ptr [ebp-40]
 005321E5    inc         edx
 005321E6    mov         eax,dword ptr [ebp-3C]
 005321E9    call        0067E0BC
 005321EE    lea         edx,[ebp-14]
 005321F1    mov         eax,dword ptr [ebp-0C]
 005321F4    call        0067DCD0
 005321F9    mov         eax,dword ptr [ebp-0C]
 005321FC    mov         word ptr [ebp-28],50
 00532202    push        eax
 00532203    dec         dword ptr [ebp-1C]
 00532206    lea         eax,[ebp-14]
 00532209    mov         edx,2
 0053220E    call        0067DCA0
 00532213    pop         eax
 00532214    mov         word ptr [ebp-28],44
 0053221A    inc         dword ptr [ebp-1C]
 0053221D    mov         edx,dword ptr [ebp-38]
 00532220    mov         dword ptr fs:[0],edx
>00532227    jmp         0053224A
 00532229    mov         word ptr [ebp-28],5C
 0053222F    mov         edx,dword ptr [ebp-3C]
 00532232    mov         eax,dword ptr [ebp-0C]
 00532235    call        0067DCD0
 0053223A    mov         eax,dword ptr [ebp-0C]
 0053223D    inc         dword ptr [ebp-1C]
 00532240    mov         edx,dword ptr [ebp-38]
 00532243    mov         dword ptr fs:[0],edx
 0053224A    mov         esp,ebp
 0053224C    pop         ebp
 0053224D    ret
end;*}

//00532250
{*procedure sub_00532250(?:AnsiString; ?:?);
begin
 00532250    push        ebp
 00532251    mov         ebp,esp
 00532253    add         esp,0FFFFFFC0
 00532256    mov         dword ptr [ebp-0C],edx
 00532259    mov         dword ptr [ebp-3C],eax
 0053225C    mov         eax,6DD378
 00532261    call        0066FECC
 00532266    mov         word ptr [ebp-28],8
 0053226C    mov         edx,6DC48D
 00532271    lea         eax,[ebp-4]
 00532274    call        0067DAB4
 00532279    inc         dword ptr [ebp-1C]
 0053227C    lea         edx,[ebp-4]
 0053227F    mov         eax,dword ptr [ebp-3C]
 00532282    call        0067DD84
 00532287    push        eax
 00532288    dec         dword ptr [ebp-1C]
 0053228B    lea         eax,[ebp-4]
 0053228E    mov         edx,2
 00532293    call        0067DCA0
 00532298    pop         ecx
 00532299    test        cl,cl
>0053229B    je          005322F1
 0053229D    mov         word ptr [ebp-28],14
 005322A3    mov         edx,6DC48E
 005322A8    lea         eax,[ebp-8]
 005322AB    call        0067DAB4
 005322B0    inc         dword ptr [ebp-1C]
 005322B3    lea         edx,[ebp-8]
 005322B6    mov         eax,dword ptr [ebp-0C]
 005322B9    call        0067DCD0
 005322BE    mov         eax,dword ptr [ebp-0C]
 005322C1    mov         word ptr [ebp-28],20
 005322C7    push        eax
 005322C8    dec         dword ptr [ebp-1C]
 005322CB    lea         eax,[ebp-8]
 005322CE    mov         edx,2
 005322D3    call        0067DCA0
 005322D8    pop         eax
 005322D9    mov         word ptr [ebp-28],14
 005322DF    inc         dword ptr [ebp-1C]
 005322E2    mov         edx,dword ptr [ebp-38]
 005322E5    mov         dword ptr fs:[0],edx
>005322EC    jmp         005323B1
 005322F1    mov         word ptr [ebp-28],38
 005322F7    mov         edx,6DC48F
 005322FC    lea         eax,[ebp-10]
 005322FF    call        0067DAB4
 00532304    inc         dword ptr [ebp-1C]
 00532307    lea         edx,[ebp-10]
 0053230A    mov         eax,dword ptr [ebp-3C]
 0053230D    call        0067DEF4
 00532312    mov         dword ptr [ebp-40],eax
 00532315    dec         dword ptr [ebp-1C]
 00532318    lea         eax,[ebp-10]
 0053231B    mov         edx,2
 00532320    call        0067DCA0
 00532325    mov         word ptr [ebp-28],2C
 0053232B    mov         ecx,dword ptr [ebp-40]
 0053232E    test        ecx,ecx
>00532330    je          00532390
 00532332    mov         word ptr [ebp-28],44
 00532338    lea         eax,[ebp-14]
 0053233B    call        00401EA8
 00532340    push        eax
 00532341    inc         dword ptr [ebp-1C]
 00532344    mov         ecx,dword ptr [ebp-40]
 00532347    dec         ecx
 00532348    mov         edx,1
 0053234D    mov         eax,dword ptr [ebp-3C]
 00532350    call        0067E0BC
 00532355    lea         edx,[ebp-14]
 00532358    mov         eax,dword ptr [ebp-0C]
 0053235B    call        0067DCD0
 00532360    mov         eax,dword ptr [ebp-0C]
 00532363    mov         word ptr [ebp-28],50
 00532369    push        eax
 0053236A    dec         dword ptr [ebp-1C]
 0053236D    lea         eax,[ebp-14]
 00532370    mov         edx,2
 00532375    call        0067DCA0
 0053237A    pop         eax
 0053237B    mov         word ptr [ebp-28],44
 00532381    inc         dword ptr [ebp-1C]
 00532384    mov         edx,dword ptr [ebp-38]
 00532387    mov         dword ptr fs:[0],edx
>0053238E    jmp         005323B1
 00532390    mov         word ptr [ebp-28],5C
 00532396    mov         edx,dword ptr [ebp-3C]
 00532399    mov         eax,dword ptr [ebp-0C]
 0053239C    call        0067DCD0
 005323A1    mov         eax,dword ptr [ebp-0C]
 005323A4    inc         dword ptr [ebp-1C]
 005323A7    mov         edx,dword ptr [ebp-38]
 005323AA    mov         dword ptr fs:[0],edx
 005323B1    mov         esp,ebp
 005323B3    pop         ebp
 005323B4    ret
end;*}

//005323B8
{*procedure sub_005323B8(?:AnsiString; ?:?);
begin
 005323B8    push        ebp
 005323B9    mov         ebp,esp
 005323BB    add         esp,0FFFFFFBC
 005323BE    mov         dword ptr [ebp-0C],edx
 005323C1    mov         dword ptr [ebp-40],eax
 005323C4    mov         eax,6DD484
 005323C9    call        0066FECC
 005323CE    mov         word ptr [ebp-2C],8
 005323D4    mov         edx,6DC491
 005323D9    lea         eax,[ebp-4]
 005323DC    call        0067DAB4
 005323E1    inc         dword ptr [ebp-20]
 005323E4    lea         edx,[ebp-4]
 005323E7    mov         eax,dword ptr [ebp-40]
 005323EA    call        0067DD84
 005323EF    push        eax
 005323F0    dec         dword ptr [ebp-20]
 005323F3    lea         eax,[ebp-4]
 005323F6    mov         edx,2
 005323FB    call        0067DCA0
 00532400    pop         ecx
 00532401    test        cl,cl
>00532403    je          00532459
 00532405    mov         word ptr [ebp-2C],14
 0053240B    mov         edx,6DC492
 00532410    lea         eax,[ebp-8]
 00532413    call        0067DAB4
 00532418    inc         dword ptr [ebp-20]
 0053241B    lea         edx,[ebp-8]
 0053241E    mov         eax,dword ptr [ebp-0C]
 00532421    call        0067DCD0
 00532426    mov         eax,dword ptr [ebp-0C]
 00532429    mov         word ptr [ebp-2C],20
 0053242F    push        eax
 00532430    dec         dword ptr [ebp-20]
 00532433    lea         eax,[ebp-8]
 00532436    mov         edx,2
 0053243B    call        0067DCA0
 00532440    pop         eax
 00532441    mov         word ptr [ebp-2C],14
 00532447    inc         dword ptr [ebp-20]
 0053244A    mov         edx,dword ptr [ebp-3C]
 0053244D    mov         dword ptr fs:[0],edx
>00532454    jmp         0053254C
 00532459    mov         word ptr [ebp-2C],38
 0053245F    mov         edx,6DC493
 00532464    lea         eax,[ebp-10]
 00532467    call        0067DAB4
 0053246C    inc         dword ptr [ebp-20]
 0053246F    lea         edx,[ebp-10]
 00532472    mov         eax,dword ptr [ebp-40]
 00532475    call        0067DEF4
 0053247A    mov         dword ptr [ebp-44],eax
 0053247D    dec         dword ptr [ebp-20]
 00532480    lea         eax,[ebp-10]
 00532483    mov         edx,2
 00532488    call        0067DCA0
 0053248D    mov         word ptr [ebp-2C],2C
 00532493    mov         ecx,dword ptr [ebp-44]
 00532496    test        ecx,ecx
>00532498    je          005324FD
 0053249A    mov         word ptr [ebp-2C],44
 005324A0    lea         eax,[ebp-14]
 005324A3    call        00401EA8
 005324A8    push        eax
 005324A9    inc         dword ptr [ebp-20]
 005324AC    mov         eax,dword ptr [ebp-40]
 005324AF    call        00405290
 005324B4    mov         ecx,eax
 005324B6    mov         edx,dword ptr [ebp-44]
 005324B9    inc         edx
 005324BA    mov         eax,dword ptr [ebp-40]
 005324BD    call        0067E0BC
 005324C2    lea         edx,[ebp-14]
 005324C5    mov         eax,dword ptr [ebp-0C]
 005324C8    call        0067DCD0
 005324CD    mov         eax,dword ptr [ebp-0C]
 005324D0    mov         word ptr [ebp-2C],50
 005324D6    push        eax
 005324D7    dec         dword ptr [ebp-20]
 005324DA    lea         eax,[ebp-14]
 005324DD    mov         edx,2
 005324E2    call        0067DCA0
 005324E7    pop         eax
 005324E8    mov         word ptr [ebp-2C],44
 005324EE    inc         dword ptr [ebp-20]
 005324F1    mov         edx,dword ptr [ebp-3C]
 005324F4    mov         dword ptr fs:[0],edx
>005324FB    jmp         0053254C
 005324FD    mov         word ptr [ebp-2C],5C
 00532503    mov         edx,6DC495
 00532508    lea         eax,[ebp-18]
 0053250B    call        0067DAB4
 00532510    inc         dword ptr [ebp-20]
 00532513    lea         edx,[ebp-18]
 00532516    mov         eax,dword ptr [ebp-0C]
 00532519    call        0067DCD0
 0053251E    mov         eax,dword ptr [ebp-0C]
 00532521    mov         word ptr [ebp-2C],68
 00532527    push        eax
 00532528    dec         dword ptr [ebp-20]
 0053252B    lea         eax,[ebp-18]
 0053252E    mov         edx,2
 00532533    call        0067DCA0
 00532538    pop         eax
 00532539    mov         word ptr [ebp-2C],5C
 0053253F    inc         dword ptr [ebp-20]
 00532542    mov         edx,dword ptr [ebp-3C]
 00532545    mov         dword ptr fs:[0],edx
 0053254C    mov         esp,ebp
 0053254E    pop         ebp
 0053254F    ret
end;*}

//00532550
{*function sub_00532550(?:?):?;
begin
 00532550    push        ebp
 00532551    mov         ebp,esp
 00532553    add         esp,0FFFFFF44
 00532559    mov         dword ptr [ebp-4],eax
 0053255C    mov         eax,dword ptr [ebp-4]
 0053255F    test        eax,eax
>00532561    jge         0053257A
 00532563    push        135
 00532568    push        6DC4A3
 0053256D    push        6DC496
 00532572    call        00678AD8
 00532577    add         esp,0C
 0053257A    mov         edx,dword ptr [ebp-4]
 0053257D    dec         edx
 0053257E    mov         dword ptr [ebp-8],edx
 00532581    mov         ecx,dword ptr [ebp-8]
 00532584    test        ecx,ecx
>00532586    jl          005325DD
 00532588    mov         edx,dword ptr [ebp-8]
 0053258B    mov         eax,80000000
 00532590    call        00532B74
 00532595    test        al,al
>00532597    je          005325C2
 00532599    push        0
 0053259B    mov         eax,dword ptr [ebp-8]
 0053259E    call        00531360
 005325A3    mov         edx,eax
 005325A5    lea         ecx,[ebp-0BC]
 005325AB    mov         eax,6ECAB0
 005325B0    call        00474954
 005325B5    mov         edx,dword ptr [ebp-12]
 005325B8    cmp         edx,4
>005325BB    jne         005325C2
 005325BD    mov         eax,dword ptr [ebp-8]
>005325C0    jmp         005325E0
 005325C2    mov         edx,dword ptr [ebp-8]
 005325C5    mov         eax,10
 005325CA    call        00532B74
 005325CF    test        al,al
>005325D1    jne         005325DD
 005325D3    dec         dword ptr [ebp-8]
 005325D6    mov         edx,dword ptr [ebp-8]
 005325D9    test        edx,edx
>005325DB    jge         00532588
 005325DD    or          eax,0FFFFFFFF
 005325E0    mov         esp,ebp
 005325E2    pop         ebp
 005325E3    ret
end;*}

//005325E4
{*function sub_005325E4(?:?):?;
begin
 005325E4    push        ebp
 005325E5    mov         ebp,esp
 005325E7    add         esp,0FFFFFFF8
 005325EA    mov         dword ptr [ebp-4],eax
 005325ED    mov         eax,dword ptr [ebp-4]
 005325F0    test        eax,eax
>005325F2    jge         0053260B
 005325F4    push        145
 005325F9    push        6DC4C5
 005325FE    push        6DC4B8
 00532603    call        00678AD8
 00532608    add         esp,0C
 0053260B    mov         edx,dword ptr [ebp-4]
 0053260E    dec         edx
 0053260F    mov         dword ptr [ebp-8],edx
 00532612    mov         ecx,dword ptr [ebp-8]
 00532615    test        ecx,ecx
>00532617    jl          0053264A
 00532619    mov         edx,dword ptr [ebp-8]
 0053261C    mov         eax,80000000
 00532621    call        00532B74
 00532626    test        al,al
>00532628    je          0053262F
 0053262A    mov         eax,dword ptr [ebp-8]
>0053262D    jmp         0053264D
 0053262F    mov         edx,dword ptr [ebp-8]
 00532632    mov         eax,10
 00532637    call        00532B74
 0053263C    test        al,al
>0053263E    jne         0053264A
 00532640    dec         dword ptr [ebp-8]
 00532643    mov         edx,dword ptr [ebp-8]
 00532646    test        edx,edx
>00532648    jge         00532619
 0053264A    or          eax,0FFFFFFFF
 0053264D    pop         ecx
 0053264E    pop         ecx
 0053264F    pop         ebp
 00532650    ret
end;*}

//00532654
{*function sub_00532654(?:?; ?:?):?;
begin
 00532654    push        ebp
 00532655    mov         ebp,esp
 00532657    add         esp,0FFFFFFF4
 0053265A    mov         dword ptr [ebp-8],edx
 0053265D    mov         dword ptr [ebp-4],eax
 00532660    mov         eax,dword ptr [ebp-4]
 00532663    test        eax,eax
>00532665    jge         0053266C
 00532667    or          eax,0FFFFFFFF
>0053266A    jmp         005326D6
 0053266C    mov         edx,dword ptr [ebp-4]
 0053266F    test        edx,edx
>00532671    jge         0053268A
 00532673    push        153
 00532678    push        6DC4E7
 0053267D    push        6DC4DA
 00532682    call        00678AD8
 00532687    add         esp,0C
 0053268A    mov         ecx,dword ptr [ebp-4]
 0053268D    dec         ecx
 0053268E    mov         dword ptr [ebp-0C],ecx
 00532691    mov         eax,dword ptr [ebp-0C]
 00532694    test        eax,eax
>00532696    jl          005326D3
 00532698    mov         edx,dword ptr [ebp-0C]
 0053269B    mov         eax,80000000
 005326A0    call        00532B74
 005326A5    test        al,al
>005326A7    je          005326B8
 005326A9    dec         dword ptr [ebp-8]
 005326AC    mov         edx,dword ptr [ebp-8]
 005326AF    test        edx,edx
>005326B1    jne         005326B8
 005326B3    mov         eax,dword ptr [ebp-0C]
>005326B6    jmp         005326D6
 005326B8    mov         edx,dword ptr [ebp-0C]
 005326BB    mov         eax,10
 005326C0    call        00532B74
 005326C5    test        al,al
>005326C7    jne         005326D3
 005326C9    dec         dword ptr [ebp-0C]
 005326CC    mov         edx,dword ptr [ebp-0C]
 005326CF    test        edx,edx
>005326D1    jge         00532698
 005326D3    or          eax,0FFFFFFFF
 005326D6    mov         esp,ebp
 005326D8    pop         ebp
 005326D9    ret
end;*}

//005326DC
{*function sub_005326DC(?:?; ?:?):?;
begin
 005326DC    push        ebp
 005326DD    mov         ebp,esp
 005326DF    add         esp,0FFFFFFF4
 005326E2    mov         dword ptr [ebp-8],edx
 005326E5    mov         dword ptr [ebp-4],eax
 005326E8    mov         eax,dword ptr [ebp-4]
 005326EB    test        eax,eax
>005326ED    jge         00532706
 005326EF    push        163
 005326F4    push        6DC509
 005326F9    push        6DC4FC
 005326FE    call        00678AD8
 00532703    add         esp,0C
 00532706    mov         edx,dword ptr [ebp-4]
 00532709    dec         edx
 0053270A    mov         dword ptr [ebp-0C],edx
 0053270D    mov         ecx,dword ptr [ebp-0C]
 00532710    mov         eax,dword ptr [ebp-8]
 00532713    cmp         ecx,eax
>00532715    jl          0053274B
 00532717    mov         edx,dword ptr [ebp-0C]
 0053271A    mov         eax,80000000
 0053271F    call        00532B74
 00532724    test        al,al
>00532726    je          0053272D
 00532728    mov         eax,dword ptr [ebp-0C]
>0053272B    jmp         0053274E
 0053272D    mov         edx,dword ptr [ebp-0C]
 00532730    mov         eax,10
 00532735    call        00532B74
 0053273A    test        al,al
>0053273C    jne         0053274B
 0053273E    dec         dword ptr [ebp-0C]
 00532741    mov         edx,dword ptr [ebp-0C]
 00532744    mov         ecx,dword ptr [ebp-8]
 00532747    cmp         edx,ecx
>00532749    jge         00532717
 0053274B    or          eax,0FFFFFFFF
 0053274E    mov         esp,ebp
 00532750    pop         ebp
 00532751    ret
end;*}

//00532754
{*function sub_00532754(?:?; ?:?; ?:?):?;
begin
 00532754    push        ebp
 00532755    mov         ebp,esp
 00532757    add         esp,0FFFFFFF0
 0053275A    mov         dword ptr [ebp-0C],ecx
 0053275D    mov         dword ptr [ebp-8],edx
 00532760    mov         dword ptr [ebp-4],eax
 00532763    mov         eax,dword ptr [ebp-4]
 00532766    test        eax,eax
>00532768    jge         00532781
 0053276A    push        16E
 0053276F    push        6DC52B
 00532774    push        6DC51E
 00532779    call        00678AD8
 0053277E    add         esp,0C
 00532781    mov         edx,dword ptr [ebp-4]
 00532784    dec         edx
 00532785    mov         dword ptr [ebp-10],edx
 00532788    mov         ecx,dword ptr [ebp-10]
 0053278B    mov         eax,dword ptr [ebp-8]
 0053278E    cmp         ecx,eax
>00532790    jl          005327BF
 00532792    mov         edx,dword ptr [ebp-10]
 00532795    mov         eax,80000000
 0053279A    call        00532B74
 0053279F    test        al,al
>005327A1    je          005327B2
 005327A3    dec         dword ptr [ebp-0C]
 005327A6    mov         edx,dword ptr [ebp-0C]
 005327A9    test        edx,edx
>005327AB    jne         005327B2
 005327AD    mov         eax,dword ptr [ebp-10]
>005327B0    jmp         005327C2
 005327B2    dec         dword ptr [ebp-10]
 005327B5    mov         edx,dword ptr [ebp-10]
 005327B8    mov         ecx,dword ptr [ebp-8]
 005327BB    cmp         edx,ecx
>005327BD    jge         00532792
 005327BF    or          eax,0FFFFFFFF
 005327C2    mov         esp,ebp
 005327C4    pop         ebp
 005327C5    ret
end;*}

//005327C8
{*function sub_005327C8(?:?; ?:?; ?:?):?;
begin
 005327C8    push        ebp
 005327C9    mov         ebp,esp
 005327CB    add         esp,0FFFFFF38
 005327D1    mov         dword ptr [ebp-0C],ecx
 005327D4    mov         dword ptr [ebp-8],edx
 005327D7    mov         dword ptr [ebp-4],eax
 005327DA    push        dword ptr [ebp-0C]
 005327DD    call        0066FAB4
 005327E2    pop         ecx
 005327E3    mov         dword ptr [ebp-10],eax
 005327E6    mov         eax,dword ptr [ebp-4]
 005327E9    test        eax,eax
>005327EB    jge         00532804
 005327ED    push        181
 005327F2    push        6DC54D
 005327F7    push        6DC540
 005327FC    call        00678AD8
 00532801    add         esp,0C
 00532804    mov         edx,dword ptr [ebp-4]
 00532807    dec         edx
 00532808    mov         dword ptr [ebp-14],edx
 0053280B    mov         ecx,dword ptr [ebp-14]
 0053280E    mov         eax,dword ptr [ebp-8]
 00532811    cmp         ecx,eax
>00532813    jl          00532885
 00532815    mov         edx,dword ptr [ebp-14]
 00532818    mov         eax,80000000
 0053281D    call        00532B74
 00532822    test        al,al
>00532824    je          00532867
 00532826    push        0
 00532828    mov         eax,dword ptr [ebp-14]
 0053282B    call        00531360
 00532830    mov         edx,eax
 00532832    lea         ecx,[ebp-0C8]
 00532838    mov         eax,6ECAB0
 0053283D    call        00474954
 00532842    mov         edx,dword ptr [ebp-10]
 00532845    test        edx,edx
>00532847    je          00532867
 00532849    push        dword ptr [ebp-10]
 0053284C    push        dword ptr [ebp-0C]
 0053284F    lea         ecx,[ebp-0C8]
 00532855    push        ecx
 00532856    call        0066FC38
 0053285B    add         esp,0C
 0053285E    test        eax,eax
>00532860    jne         00532867
 00532862    mov         eax,dword ptr [ebp-14]
>00532865    jmp         00532888
 00532867    mov         edx,dword ptr [ebp-14]
 0053286A    mov         eax,10
 0053286F    call        00532B74
 00532874    test        al,al
>00532876    jne         00532885
 00532878    dec         dword ptr [ebp-14]
 0053287B    mov         edx,dword ptr [ebp-14]
 0053287E    mov         ecx,dword ptr [ebp-8]
 00532881    cmp         edx,ecx
>00532883    jge         00532815
 00532885    or          eax,0FFFFFFFF
 00532888    mov         esp,ebp
 0053288A    pop         ebp
 0053288B    ret
end;*}

//0053288C
{*function sub_0053288C(?:?; ?:?; ?:?; ?:?):?;
begin
 0053288C    push        ebp
 0053288D    mov         ebp,esp
 0053288F    add         esp,0FFFFFF34
 00532895    mov         dword ptr [ebp-0C],ecx
 00532898    mov         dword ptr [ebp-8],edx
 0053289B    mov         dword ptr [ebp-4],eax
 0053289E    push        dword ptr [ebp-0C]
 005328A1    call        0066FAB4
 005328A6    pop         ecx
 005328A7    mov         dword ptr [ebp-10],eax
 005328AA    push        dword ptr [ebp+8]
 005328AD    call        0066FAB4
 005328B2    pop         ecx
 005328B3    mov         dword ptr [ebp-14],eax
 005328B6    mov         eax,dword ptr [ebp-4]
 005328B9    test        eax,eax
>005328BB    jge         005328D4
 005328BD    push        195
 005328C2    push        6DC56F
 005328C7    push        6DC562
 005328CC    call        00678AD8
 005328D1    add         esp,0C
 005328D4    mov         edx,dword ptr [ebp-4]
 005328D7    dec         edx
 005328D8    mov         dword ptr [ebp-18],edx
 005328DB    mov         ecx,dword ptr [ebp-18]
 005328DE    mov         eax,dword ptr [ebp-8]
 005328E1    cmp         ecx,eax
>005328E3    jl          0053297D
 005328E9    mov         edx,dword ptr [ebp-18]
 005328EC    mov         eax,80000000
 005328F1    call        00532B74
 005328F6    test        al,al
>005328F8    je          0053295B
 005328FA    push        0
 005328FC    mov         eax,dword ptr [ebp-18]
 005328FF    call        00531360
 00532904    mov         edx,eax
 00532906    lea         ecx,[ebp-0CC]
 0053290C    mov         eax,6ECAB0
 00532911    call        00474954
 00532916    mov         edx,dword ptr [ebp-10]
 00532919    test        edx,edx
>0053291B    je          00532936
 0053291D    push        dword ptr [ebp-10]
 00532920    push        dword ptr [ebp-0C]
 00532923    lea         ecx,[ebp-0CC]
 00532929    push        ecx
 0053292A    call        0066FC38
 0053292F    add         esp,0C
 00532932    test        eax,eax
>00532934    je          00532956
 00532936    mov         eax,dword ptr [ebp-14]
 00532939    test        eax,eax
>0053293B    je          0053295B
 0053293D    push        dword ptr [ebp-14]
 00532940    push        dword ptr [ebp+8]
 00532943    lea         edx,[ebp-0CC]
 00532949    push        edx
 0053294A    call        0066FC38
 0053294F    add         esp,0C
 00532952    test        eax,eax
>00532954    jne         0053295B
 00532956    mov         eax,dword ptr [ebp-18]
>00532959    jmp         00532980
 0053295B    mov         edx,dword ptr [ebp-18]
 0053295E    mov         eax,10
 00532963    call        00532B74
 00532968    test        al,al
>0053296A    jne         0053297D
 0053296C    dec         dword ptr [ebp-18]
 0053296F    mov         edx,dword ptr [ebp-18]
 00532972    mov         ecx,dword ptr [ebp-8]
 00532975    cmp         edx,ecx
>00532977    jge         005328E9
 0053297D    or          eax,0FFFFFFFF
 00532980    mov         esp,ebp
 00532982    pop         ebp
 00532983    ret         4
end;*}

//00532988
{*function sub_00532988(?:?; ?:?):?;
begin
 00532988    push        ebp
 00532989    mov         ebp,esp
 0053298B    add         esp,0FFFFFF38
 00532991    mov         dword ptr [ebp-8],edx
 00532994    mov         dword ptr [ebp-4],eax
 00532997    push        dword ptr [ebp-8]
 0053299A    call        0066FAB4
 0053299F    pop         ecx
 005329A0    mov         dword ptr [ebp-10],eax
 005329A3    mov         eax,dword ptr [ebp-4]
 005329A6    mov         dword ptr [ebp-14],eax
 005329A9    mov         edx,dword ptr [ebp-4]
 005329AC    test        edx,edx
>005329AE    jge         005329C7
 005329B0    push        1B6
 005329B5    push        6DC5B3
 005329BA    push        6DC5A6
 005329BF    call        00678AD8
 005329C4    add         esp,0C
 005329C7    push        0
 005329C9    mov         eax,dword ptr [ebp-14]
 005329CC    call        00531360
 005329D1    mov         edx,eax
 005329D3    lea         ecx,[ebp-0C8]
 005329D9    mov         eax,6ECAB0
 005329DE    call        00474954
 005329E3    mov         dword ptr [ebp-0C],eax
 005329E6    mov         edx,dword ptr [ebp-0C]
 005329E9    test        edx,edx
>005329EB    jne         005329F2
 005329ED    inc         dword ptr [ebp-14]
>005329F0    jmp         005329C7
 005329F2    mov         ecx,dword ptr [ebp-10]
 005329F5    test        ecx,ecx
>005329F7    je          00532A17
 005329F9    push        dword ptr [ebp-10]
 005329FC    push        dword ptr [ebp-8]
 005329FF    lea         eax,[ebp-0C8]
 00532A05    push        eax
 00532A06    call        0066FBCC
 00532A0B    add         esp,0C
 00532A0E    test        eax,eax
>00532A10    jne         00532A17
 00532A12    mov         eax,dword ptr [ebp-14]
>00532A15    jmp         00532A29
 00532A17    mov         dl,byte ptr [ebp-64]
 00532A1A    test        dl,dl
>00532A1C    jne         00532A26
 00532A1E    mov         ecx,dword ptr [ebp-0C]
 00532A21    add         dword ptr [ebp-14],ecx
>00532A24    jmp         005329C7
 00532A26    or          eax,0FFFFFFFF
 00532A29    mov         esp,ebp
 00532A2B    pop         ebp
 00532A2C    ret
end;*}

//00532A30
{*function sub_00532A30(?:?; ?:?; ?:?):?;
begin
 00532A30    push        ebp
 00532A31    mov         ebp,esp
 00532A33    add         esp,0FFFFFF3C
 00532A39    mov         dword ptr [ebp-0C],ecx
 00532A3C    mov         dword ptr [ebp-8],edx
 00532A3F    mov         dword ptr [ebp-4],eax
 00532A42    mov         eax,dword ptr [ebp-8]
 00532A45    xor         edx,edx
 00532A47    mov         dword ptr [eax],edx
 00532A49    mov         eax,dword ptr [ebp-4]
 00532A4C    call        005312C8
 00532A51    call        005325E4
 00532A56    mov         dword ptr [ebp-10],eax
 00532A59    mov         edx,dword ptr [ebp-10]
 00532A5C    inc         edx
>00532A5D    jne         00532A67
 00532A5F    or          eax,0FFFFFFFF
>00532A62    jmp         00532B6D
 00532A67    push        0
 00532A69    mov         eax,dword ptr [ebp-10]
 00532A6C    call        00531360
 00532A71    mov         edx,eax
 00532A73    lea         ecx,[ebp-0C4]
 00532A79    mov         eax,6ECAB0
 00532A7E    call        00474954
 00532A83    mov         dl,byte ptr [ebp-62]
 00532A86    test        dl,dl
>00532A88    je          00532B6B
 00532A8E    mov         eax,dword ptr [ebp-43]
 00532A91    call        0053CFFC
 00532A96    test        al,al
>00532A98    je          00532AA1
 00532A9A    xor         eax,eax
>00532A9C    jmp         00532B6D
 00532AA1    mov         dl,byte ptr [ebp-61]
 00532AA4    test        dl,dl
>00532AA6    je          00532AE9
 00532AA8    mov         ecx,dword ptr ds:[6ECB50];0x0 gvar_006ECB50
 00532AAE    mov         eax,dword ptr [ebp-10]
 00532AB1    add         ecx,eax
 00532AB3    mov         edx,dword ptr [ebp-43]
 00532AB6    cmp         ecx,edx
>00532AB8    jae         00532ADF
 00532ABA    mov         ecx,dword ptr [ebp-0C]
 00532ABD    test        ecx,ecx
>00532ABF    je          00532AD5
 00532AC1    mov         eax,dword ptr [ebp-0C]
 00532AC4    mov         edx,dword ptr [eax+5]
 00532AC7    mov         ecx,dword ptr [ebp-43]
 00532ACA    cmp         edx,ecx
>00532ACC    jne         00532AD5
 00532ACE    xor         eax,eax
>00532AD0    jmp         00532B6D
 00532AD5    mov         eax,1
>00532ADA    jmp         00532B6D
 00532ADF    mov         eax,2
>00532AE4    jmp         00532B6D
 00532AE9    mov         edx,dword ptr ds:[6ECB50];0x0 gvar_006ECB50
 00532AEF    mov         ecx,dword ptr [ebp-10]
 00532AF2    add         edx,ecx
 00532AF4    mov         eax,dword ptr [ebp-43]
 00532AF7    cmp         edx,eax
>00532AF9    jae         00532B0A
 00532AFB    mov         edx,dword ptr [ebp-43]
 00532AFE    mov         ecx,dword ptr [ebp-8]
 00532B01    mov         dword ptr [ecx],edx
 00532B03    mov         eax,3
>00532B08    jmp         00532B6D
 00532B0A    mov         edx,dword ptr [ebp-10]
 00532B0D    mov         eax,2000000
 00532B12    call        00532B74
 00532B17    test        al,al
>00532B19    je          00532B64
 00532B1B    mov         eax,dword ptr [ebp-43]
 00532B1E    call        005312C8
 00532B23    call        005325E4
 00532B28    mov         dword ptr [ebp-10],eax
 00532B2B    push        0
 00532B2D    mov         eax,dword ptr [ebp-10]
 00532B30    call        00531360
 00532B35    mov         edx,eax
 00532B37    lea         ecx,[ebp-0C4]
 00532B3D    mov         eax,6ECAB0
 00532B42    call        00474954
 00532B47    mov         edx,dword ptr [ebp-43]
 00532B4A    mov         ecx,dword ptr [ebp-4]
 00532B4D    cmp         edx,ecx
>00532B4F    jne         00532B55
 00532B51    xor         eax,eax
>00532B53    jmp         00532B6D
 00532B55    mov         edx,dword ptr [ebp-43]
 00532B58    mov         ecx,dword ptr [ebp-8]
 00532B5B    mov         dword ptr [ecx],edx
 00532B5D    mov         eax,3
>00532B62    jmp         00532B6D
 00532B64    mov         eax,4
>00532B69    jmp         00532B6D
 00532B6B    xor         eax,eax
 00532B6D    mov         esp,ebp
 00532B6F    pop         ebp
 00532B70    ret
end;*}

//00532B74
{*function sub_00532B74(?:?; ?:?):?;
begin
 00532B74    push        ebp
 00532B75    mov         ebp,esp
 00532B77    add         esp,0FFFFFFF8
 00532B7A    mov         dword ptr [ebp-8],edx
 00532B7D    mov         dword ptr [ebp-4],eax
 00532B80    mov         eax,dword ptr [ebp-8]
 00532B83    test        eax,eax
>00532B85    jl          00532B94
 00532B87    mov         edx,dword ptr [ebp-8]
 00532B8A    mov         ecx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 00532B90    cmp         edx,ecx
>00532B92    jb          00532BA2
 00532B94    mov         dword ptr ds:[69419C],1;gvar_0069419C
 00532B9E    xor         eax,eax
>00532BA0    jmp         00532BE3
 00532BA2    mov         edx,dword ptr [ebp-8]
 00532BA5    test        edx,edx
>00532BA7    jl          00532BB5
 00532BA9    mov         ecx,dword ptr [ebp-8]
 00532BAC    mov         eax,[006ECB4C];0x0 gvar_006ECB4C
 00532BB1    cmp         ecx,eax
>00532BB3    jb          00532BCC
 00532BB5    push        1FD
 00532BBA    push        6DC5E4
 00532BBF    push        6DC5C8
 00532BC4    call        00678AD8
 00532BC9    add         esp,0C
 00532BCC    mov         edx,dword ptr ds:[6941C8];0x0 gvar_006941C8
 00532BD2    mov         ecx,dword ptr [ebp-8]
 00532BD5    mov         eax,dword ptr [edx+ecx*4]
 00532BD8    mov         edx,dword ptr [ebp-4]
 00532BDB    and         eax,edx
 00532BDD    setne       al
 00532BE0    and         eax,1
 00532BE3    pop         ecx
 00532BE4    pop         ecx
 00532BE5    pop         ebp
 00532BE6    ret
end;*}

//00532BE8
{*procedure sub_00532BE8(?:?; ?:?);
begin
 00532BE8    push        ebp
 00532BE9    mov         ebp,esp
 00532BEB    add         esp,0FFFFFFF8
 00532BEE    mov         dword ptr [ebp-8],edx
 00532BF1    mov         dword ptr [ebp-4],eax
 00532BF4    mov         eax,dword ptr [ebp-8]
 00532BF7    test        eax,eax
>00532BF9    jl          00532C08
 00532BFB    mov         edx,dword ptr [ebp-8]
 00532BFE    mov         ecx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 00532C04    cmp         edx,ecx
>00532C06    jb          00532C14
 00532C08    mov         dword ptr ds:[69419C],1;gvar_0069419C
>00532C12    jmp         00532C4D
 00532C14    mov         eax,dword ptr [ebp-8]
 00532C17    test        eax,eax
>00532C19    jl          00532C28
 00532C1B    mov         edx,dword ptr [ebp-8]
 00532C1E    mov         ecx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 00532C24    cmp         edx,ecx
>00532C26    jb          00532C3F
 00532C28    push        209
 00532C2D    push        6DC615
 00532C32    push        6DC5F9
 00532C37    call        00678AD8
 00532C3C    add         esp,0C
 00532C3F    mov         eax,[006941C8];0x0 gvar_006941C8
 00532C44    mov         edx,dword ptr [ebp-8]
 00532C47    mov         ecx,dword ptr [ebp-4]
 00532C4A    or          dword ptr [eax+edx*4],ecx
 00532C4D    pop         ecx
 00532C4E    pop         ecx
 00532C4F    pop         ebp
 00532C50    ret
end;*}

//00532C54
{*procedure sub_00532C54(?:?; ?:?; ?:?);
begin
 00532C54    push        ebp
 00532C55    mov         ebp,esp
 00532C57    add         esp,0FFFFFFF0
 00532C5A    mov         dword ptr [ebp-0C],ecx
 00532C5D    mov         dword ptr [ebp-8],edx
 00532C60    mov         dword ptr [ebp-4],eax
 00532C63    mov         eax,dword ptr [ebp-8]
 00532C66    test        eax,eax
>00532C68    jl          00532C7B
 00532C6A    mov         edx,dword ptr [ebp-8]
 00532C6D    mov         ecx,dword ptr [ebp-0C]
 00532C70    add         edx,ecx
 00532C72    mov         eax,[006ECB4C];0x0 gvar_006ECB4C
 00532C77    cmp         edx,eax
>00532C79    jb          00532C87
 00532C7B    mov         dword ptr ds:[69419C],1;gvar_0069419C
>00532C85    jmp         00532CDF
 00532C87    mov         edx,dword ptr [ebp-8]
 00532C8A    test        edx,edx
>00532C8C    jl          00532CA0
 00532C8E    mov         ecx,dword ptr [ebp-8]
 00532C91    mov         eax,dword ptr [ebp-0C]
 00532C94    add         ecx,eax
 00532C96    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 00532C9C    cmp         ecx,edx
>00532C9E    jb          00532CB7
 00532CA0    push        215
 00532CA5    push        6DC64C
 00532CAA    push        6DC62A
 00532CAF    call        00678AD8
 00532CB4    add         esp,0C
 00532CB7    mov         ecx,dword ptr [ebp-8]
 00532CBA    mov         dword ptr [ebp-10],ecx
>00532CBD    jmp         00532CD0
 00532CBF    mov         eax,[006941C8];0x0 gvar_006941C8
 00532CC4    mov         edx,dword ptr [ebp-10]
 00532CC7    mov         ecx,dword ptr [ebp-4]
 00532CCA    or          dword ptr [eax+edx*4],ecx
 00532CCD    inc         dword ptr [ebp-10]
 00532CD0    mov         eax,dword ptr [ebp-8]
 00532CD3    mov         edx,dword ptr [ebp-0C]
 00532CD6    add         eax,edx
 00532CD8    mov         ecx,dword ptr [ebp-10]
 00532CDB    cmp         eax,ecx
>00532CDD    jg          00532CBF
 00532CDF    mov         esp,ebp
 00532CE1    pop         ebp
 00532CE2    ret
end;*}

//00532CE4
{*procedure sub_00532CE4(?:?; ?:?);
begin
 00532CE4    push        ebp
 00532CE5    mov         ebp,esp
 00532CE7    add         esp,0FFFFFFF8
 00532CEA    mov         dword ptr [ebp-8],edx
 00532CED    mov         dword ptr [ebp-4],eax
 00532CF0    mov         eax,dword ptr [ebp-8]
 00532CF3    test        eax,eax
>00532CF5    jl          00532D04
 00532CF7    mov         edx,dword ptr [ebp-8]
 00532CFA    mov         ecx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 00532D00    cmp         edx,ecx
>00532D02    jb          00532D10
 00532D04    mov         dword ptr ds:[69419C],1;gvar_0069419C
>00532D0E    jmp         00532D4C
 00532D10    mov         eax,dword ptr [ebp-8]
 00532D13    test        eax,eax
>00532D15    jl          00532D24
 00532D17    mov         edx,dword ptr [ebp-8]
 00532D1A    mov         ecx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 00532D20    cmp         edx,ecx
>00532D22    jb          00532D3B
 00532D24    push        224
 00532D29    push        6DC67D
 00532D2E    push        6DC661
 00532D33    call        00678AD8
 00532D38    add         esp,0C
 00532D3B    mov         eax,dword ptr [ebp-4]
 00532D3E    not         eax
 00532D40    mov         edx,dword ptr ds:[6941C8];0x0 gvar_006941C8
 00532D46    mov         ecx,dword ptr [ebp-8]
 00532D49    and         dword ptr [edx+ecx*4],eax
 00532D4C    pop         ecx
 00532D4D    pop         ecx
 00532D4E    pop         ebp
 00532D4F    ret
end;*}

//00532D50
{*function sub_00532D50(?:?):?;
begin
 00532D50    push        ebp
 00532D51    mov         ebp,esp
 00532D53    add         esp,0FFFFFF40
 00532D59    mov         dword ptr [ebp-4],eax
 00532D5C    mov         eax,dword ptr [ebp-4]
 00532D5F    mov         edx,dword ptr [eax+12]
 00532D62    dec         edx
 00532D63    mov         dword ptr [ebp-8],edx
 00532D66    mov         ecx,dword ptr ds:[6ECB50];0x0 gvar_006ECB50
 00532D6C    mov         eax,dword ptr [ebp-8]
 00532D6F    add         ecx,eax
 00532D71    mov         dword ptr [ebp-0C],ecx
 00532D74    mov         edx,dword ptr [ebp-8]
 00532D77    test        edx,edx
>00532D79    jl          00532DC4
 00532D7B    mov         eax,dword ptr [ebp-0C]
 00532D7E    xor         edx,edx
 00532D80    push        edx
 00532D81    push        eax
 00532D82    push        0
 00532D84    lea         ecx,[ebp-0C0]
 00532D8A    mov         eax,dword ptr [ebp-4]
 00532D8D    mov         edx,dword ptr [eax+1A]
 00532D90    mov         eax,dword ptr [ebp-8]
 00532D93    add         edx,eax
 00532D95    mov         eax,6ECAB0
 00532D9A    call        004749C0
 00532D9F    mov         dl,byte ptr [ebp-5C]
 00532DA2    test        dl,dl
>00532DA4    je          00532DB7
 00532DA6    mov         cl,byte ptr [ebp-11]
 00532DA9    cmp         cl,1
>00532DAC    jne         00532DB3
 00532DAE    mov         eax,dword ptr [ebp-3F]
>00532DB1    jmp         00532DC6
 00532DB3    xor         eax,eax
>00532DB5    jmp         00532DC6
 00532DB7    dec         dword ptr [ebp-8]
 00532DBA    dec         dword ptr [ebp-0C]
 00532DBD    mov         edx,dword ptr [ebp-8]
 00532DC0    test        edx,edx
>00532DC2    jge         00532D7B
 00532DC4    xor         eax,eax
 00532DC6    mov         esp,ebp
 00532DC8    pop         ebp
 00532DC9    ret
end;*}

//00532DCC
{*function sub_00532DCC(?:?):?;
begin
 00532DCC    push        ebp
 00532DCD    mov         ebp,esp
 00532DCF    add         esp,0FFFFFFF4
 00532DD2    mov         dword ptr [ebp-4],eax
 00532DD5    xor         eax,eax
 00532DD7    mov         dword ptr [ebp-8],eax
 00532DDA    mov         eax,dword ptr [ebp-4]
 00532DDD    call        0053A308
 00532DE2    mov         dword ptr [ebp-0C],eax
 00532DE5    mov         edx,dword ptr [ebp-0C]
 00532DE8    test        edx,edx
>00532DEA    je          00532E02
 00532DEC    mov         ecx,dword ptr [ebp-0C]
 00532DEF    mov         eax,dword ptr [ecx+1E]
 00532DF2    test        eax,eax
>00532DF4    je          00532E02
 00532DF6    mov         edx,dword ptr [ebp-0C]
 00532DF9    mov         ecx,dword ptr [edx+1E]
 00532DFC    mov         eax,dword ptr [ecx+8]
 00532DFF    mov         dword ptr [ebp-8],eax
 00532E02    mov         edx,dword ptr [ebp-8]
 00532E05    test        edx,edx
>00532E07    jne         00532E1C
 00532E09    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 00532E0F    mov         eax,dword ptr [ecx]
 00532E11    mov         edx,dword ptr [ebp-4]
 00532E14    call        0040AED8
 00532E19    mov         dword ptr [ebp-8],eax
 00532E1C    mov         eax,dword ptr [ebp-8]
 00532E1F    mov         esp,ebp
 00532E21    pop         ebp
 00532E22    ret
end;*}

//00532E24
{*function sub_00532E24(?:AnsiString):?;
begin
 00532E24    push        ebp
 00532E25    mov         ebp,esp
 00532E27    add         esp,0FFFFFFBC
 00532E2A    mov         dword ptr [ebp-4],eax
 00532E2D    mov         eax,6DD558
 00532E32    call        0066FECC
 00532E37    mov         dword ptr [ebp-1C],1
 00532E3E    lea         edx,[ebp-4]
 00532E41    lea         eax,[ebp-4]
 00532E44    call        0067DAEC
 00532E49    inc         dword ptr [ebp-1C]
 00532E4C    mov         word ptr [ebp-28],8
 00532E52    xor         edx,edx
 00532E54    mov         dword ptr [ebp-3C],edx
 00532E57    mov         word ptr [ebp-28],14
 00532E5D    mov         edx,6DC6CA
 00532E62    lea         eax,[ebp-8]
 00532E65    call        0067DAB4
 00532E6A    inc         dword ptr [ebp-1C]
 00532E6D    lea         edx,[ebp-8]
 00532E70    lea         eax,[ebp-4]
 00532E73    call        0067DEF4
 00532E78    mov         dword ptr [ebp-40],eax
 00532E7B    dec         dword ptr [ebp-1C]
 00532E7E    lea         eax,[ebp-8]
 00532E81    mov         edx,2
 00532E86    call        0067DCA0
 00532E8B    mov         word ptr [ebp-28],8
 00532E91    mov         word ptr [ebp-28],20
 00532E97    mov         edx,6DC6D0
 00532E9C    lea         eax,[ebp-0C]
 00532E9F    call        0067DAB4
 00532EA4    inc         dword ptr [ebp-1C]
 00532EA7    lea         edx,[ebp-0C]
 00532EAA    lea         eax,[ebp-4]
 00532EAD    call        0067E2B8
 00532EB2    mov         dword ptr [ebp-44],eax
 00532EB5    dec         dword ptr [ebp-1C]
 00532EB8    lea         eax,[ebp-0C]
 00532EBB    mov         edx,2
 00532EC0    call        0067DCA0
 00532EC5    mov         word ptr [ebp-28],8
 00532ECB    mov         ecx,dword ptr [ebp-40]
 00532ECE    test        ecx,ecx
>00532ED0    je          00532F65
 00532ED6    mov         eax,dword ptr [ebp-44]
 00532ED9    test        eax,eax
>00532EDB    je          00532F65
 00532EE1    mov         word ptr [ebp-28],38
 00532EE7    lea         eax,[ebp-10]
 00532EEA    call        00401EA8
 00532EEF    push        eax
 00532EF0    inc         dword ptr [ebp-1C]
 00532EF3    mov         ecx,dword ptr [ebp-44]
 00532EF6    mov         edx,dword ptr [ebp-40]
 00532EF9    sub         ecx,edx
 00532EFB    add         ecx,0FFFFFFFB
 00532EFE    mov         edx,dword ptr [ebp-40]
 00532F01    add         edx,5
 00532F04    lea         eax,[ebp-4]
 00532F07    call        0067E0BC
 00532F0C    mov         word ptr [ebp-28],2C
 00532F12    mov         word ptr [ebp-28],44
 00532F18    lea         eax,[ebp-14]
 00532F1B    call        00401EA8
 00532F20    mov         ecx,eax
 00532F22    inc         dword ptr [ebp-1C]
 00532F25    lea         edx,[ebp-10]
 00532F28    mov         eax,6DC6D2
 00532F2D    call        0067E37C
 00532F32    lea         eax,[ebp-14]
 00532F35    mov         eax,dword ptr [eax]
 00532F37    call        StrToInt
 00532F3C    mov         dword ptr [ebp-3C],eax
 00532F3F    dec         dword ptr [ebp-1C]
 00532F42    lea         eax,[ebp-14]
 00532F45    mov         edx,2
 00532F4A    call        0067DCA0
 00532F4F    dec         dword ptr [ebp-1C]
 00532F52    lea         eax,[ebp-10]
 00532F55    mov         edx,2
 00532F5A    call        0067DCA0
 00532F5F    mov         word ptr [ebp-28],8
 00532F65    mov         eax,dword ptr [ebp-3C]
 00532F68    push        eax
 00532F69    dec         dword ptr [ebp-1C]
 00532F6C    lea         eax,[ebp-4]
 00532F6F    mov         edx,2
 00532F74    call        0067DCA0
 00532F79    pop         eax
 00532F7A    mov         edx,dword ptr [ebp-38]
 00532F7D    mov         dword ptr fs:[0],edx
 00532F84    mov         esp,ebp
 00532F86    pop         ebp
 00532F87    ret
end;*}

//00532F88
{*function sub_00532F88(?:AnsiString):?;
begin
 00532F88    push        ebp
 00532F89    mov         ebp,esp
 00532F8B    add         esp,0FFFFFFBC
 00532F8E    mov         dword ptr [ebp-4],eax
 00532F91    mov         eax,6DD608
 00532F96    call        0066FECC
 00532F9B    mov         dword ptr [ebp-1C],1
 00532FA2    lea         edx,[ebp-4]
 00532FA5    lea         eax,[ebp-4]
 00532FA8    call        0067DAEC
 00532FAD    inc         dword ptr [ebp-1C]
 00532FB0    mov         word ptr [ebp-28],8
 00532FB6    mov         dword ptr [ebp-3C],0FFFFFFFF
 00532FBD    mov         word ptr [ebp-28],14
 00532FC3    mov         edx,6DC6D4
 00532FC8    lea         eax,[ebp-8]
 00532FCB    call        0067DAB4
 00532FD0    inc         dword ptr [ebp-1C]
 00532FD3    lea         edx,[ebp-8]
 00532FD6    lea         eax,[ebp-4]
 00532FD9    call        0067DEF4
 00532FDE    mov         dword ptr [ebp-40],eax
 00532FE1    dec         dword ptr [ebp-1C]
 00532FE4    lea         eax,[ebp-8]
 00532FE7    mov         edx,2
 00532FEC    call        0067DCA0
 00532FF1    mov         word ptr [ebp-28],8
 00532FF7    mov         word ptr [ebp-28],20
 00532FFD    mov         edx,6DC6D7
 00533002    lea         eax,[ebp-0C]
 00533005    call        0067DAB4
 0053300A    inc         dword ptr [ebp-1C]
 0053300D    lea         edx,[ebp-0C]
 00533010    lea         eax,[ebp-4]
 00533013    call        0067E2B8
 00533018    mov         dword ptr [ebp-44],eax
 0053301B    dec         dword ptr [ebp-1C]
 0053301E    lea         eax,[ebp-0C]
 00533021    mov         edx,2
 00533026    call        0067DCA0
 0053302B    mov         word ptr [ebp-28],8
 00533031    mov         ecx,dword ptr [ebp-40]
 00533034    test        ecx,ecx
>00533036    je          005330CB
 0053303C    mov         eax,dword ptr [ebp-44]
 0053303F    test        eax,eax
>00533041    je          005330CB
 00533047    mov         word ptr [ebp-28],38
 0053304D    lea         eax,[ebp-10]
 00533050    call        00401EA8
 00533055    push        eax
 00533056    inc         dword ptr [ebp-1C]
 00533059    mov         ecx,dword ptr [ebp-44]
 0053305C    mov         edx,dword ptr [ebp-40]
 0053305F    sub         ecx,edx
 00533061    add         ecx,0FFFFFFFE
 00533064    mov         edx,dword ptr [ebp-40]
 00533067    add         edx,2
 0053306A    lea         eax,[ebp-4]
 0053306D    call        0067E0BC
 00533072    mov         word ptr [ebp-28],2C
 00533078    mov         word ptr [ebp-28],44
 0053307E    lea         eax,[ebp-14]
 00533081    call        00401EA8
 00533086    mov         ecx,eax
 00533088    inc         dword ptr [ebp-1C]
 0053308B    lea         edx,[ebp-10]
 0053308E    mov         eax,6DC6D9
 00533093    call        0067E37C
 00533098    lea         eax,[ebp-14]
 0053309B    mov         eax,dword ptr [eax]
 0053309D    call        StrToInt
 005330A2    mov         dword ptr [ebp-3C],eax
 005330A5    dec         dword ptr [ebp-1C]
 005330A8    lea         eax,[ebp-14]
 005330AB    mov         edx,2
 005330B0    call        0067DCA0
 005330B5    dec         dword ptr [ebp-1C]
 005330B8    lea         eax,[ebp-10]
 005330BB    mov         edx,2
 005330C0    call        0067DCA0
 005330C5    mov         word ptr [ebp-28],8
 005330CB    mov         eax,dword ptr [ebp-3C]
 005330CE    push        eax
 005330CF    dec         dword ptr [ebp-1C]
 005330D2    lea         eax,[ebp-4]
 005330D5    mov         edx,2
 005330DA    call        0067DCA0
 005330DF    pop         eax
 005330E0    mov         edx,dword ptr [ebp-38]
 005330E3    mov         dword ptr fs:[0],edx
 005330EA    mov         esp,ebp
 005330EC    pop         ebp
 005330ED    ret
end;*}

//005330F0
{*procedure sub_005330F0(?:AnsiString; ?:?);
begin
 005330F0    push        ebp
 005330F1    mov         ebp,esp
 005330F3    add         esp,0FFFFFFC4
 005330F6    mov         dword ptr [ebp-14],edx
 005330F9    mov         dword ptr [ebp-4],eax
 005330FC    mov         eax,6DD6C4
 00533101    call        0066FECC
 00533106    mov         dword ptr [ebp-1C],1
 0053310D    lea         edx,[ebp-4]
 00533110    lea         eax,[ebp-4]
 00533113    call        0067DAEC
 00533118    inc         dword ptr [ebp-1C]
 0053311B    mov         word ptr [ebp-28],8
 00533121    mov         word ptr [ebp-28],14
 00533127    mov         edx,6DC6DB
 0053312C    lea         eax,[ebp-8]
 0053312F    call        0067DAB4
 00533134    inc         dword ptr [ebp-1C]
 00533137    mov         word ptr [ebp-28],8
 0053313D    mov         word ptr [ebp-28],20
 00533143    mov         edx,6DC6DC
 00533148    lea         eax,[ebp-0C]
 0053314B    call        0067DAB4
 00533150    inc         dword ptr [ebp-1C]
 00533153    lea         edx,[ebp-0C]
 00533156    lea         eax,[ebp-4]
 00533159    call        0067DEF4
 0053315E    mov         dword ptr [ebp-3C],eax
 00533161    dec         dword ptr [ebp-1C]
 00533164    lea         eax,[ebp-0C]
 00533167    mov         edx,2
 0053316C    call        0067DCA0
 00533171    mov         word ptr [ebp-28],8
 00533177    mov         ecx,dword ptr [ebp-3C]
 0053317A    test        ecx,ecx
>0053317C    je          005331BC
 0053317E    mov         word ptr [ebp-28],2C
 00533184    lea         eax,[ebp-10]
 00533187    call        00401EA8
 0053318C    push        eax
 0053318D    inc         dword ptr [ebp-1C]
 00533190    mov         ecx,dword ptr [ebp-3C]
 00533193    dec         ecx
 00533194    lea         eax,[ebp-4]
 00533197    mov         edx,1
 0053319C    call        0067E0BC
 005331A1    lea         edx,[ebp-10]
 005331A4    lea         eax,[ebp-8]
 005331A7    call        0067DCD0
 005331AC    dec         dword ptr [ebp-1C]
 005331AF    lea         eax,[ebp-10]
 005331B2    mov         edx,2
 005331B7    call        0067DCA0
 005331BC    mov         word ptr [ebp-28],38
 005331C2    lea         edx,[ebp-8]
 005331C5    mov         eax,dword ptr [ebp-14]
 005331C8    call        0067DCD0
 005331CD    mov         eax,dword ptr [ebp-14]
 005331D0    mov         word ptr [ebp-28],44
 005331D6    push        eax
 005331D7    dec         dword ptr [ebp-1C]
 005331DA    lea         eax,[ebp-8]
 005331DD    mov         edx,2
 005331E2    call        0067DCA0
 005331E7    dec         dword ptr [ebp-1C]
 005331EA    lea         eax,[ebp-4]
 005331ED    mov         edx,2
 005331F2    call        0067DCA0
 005331F7    pop         eax
 005331F8    mov         word ptr [ebp-28],38
 005331FE    inc         dword ptr [ebp-1C]
 00533201    mov         edx,dword ptr [ebp-38]
 00533204    mov         dword ptr fs:[0],edx
 0053320B    mov         esp,ebp
 0053320D    pop         ebp
 0053320E    ret
end;*}

//00533210
{*procedure sub_00533210(?:AnsiString; ?:?);
begin
 00533210    push        ebp
 00533211    mov         ebp,esp
 00533213    add         esp,0FFFFFFBC
 00533216    mov         dword ptr [ebp-18],edx
 00533219    mov         dword ptr [ebp-4],eax
 0053321C    mov         eax,6DD790
 00533221    call        0066FECC
 00533226    mov         dword ptr [ebp-20],1
 0053322D    lea         edx,[ebp-4]
 00533230    lea         eax,[ebp-4]
 00533233    call        0067DAEC
 00533238    inc         dword ptr [ebp-20]
 0053323B    mov         word ptr [ebp-2C],8
 00533241    mov         word ptr [ebp-2C],14
 00533247    mov         edx,6DC6DE
 0053324C    lea         eax,[ebp-8]
 0053324F    call        0067DAB4
 00533254    inc         dword ptr [ebp-20]
 00533257    mov         word ptr [ebp-2C],8
 0053325D    mov         word ptr [ebp-2C],20
 00533263    mov         edx,6DC6DF
 00533268    lea         eax,[ebp-0C]
 0053326B    call        0067DAB4
 00533270    inc         dword ptr [ebp-20]
 00533273    lea         edx,[ebp-0C]
 00533276    lea         eax,[ebp-4]
 00533279    call        0067E2B8
 0053327E    mov         dword ptr [ebp-40],eax
 00533281    dec         dword ptr [ebp-20]
 00533284    lea         eax,[ebp-0C]
 00533287    mov         edx,2
 0053328C    call        0067DCA0
 00533291    mov         word ptr [ebp-2C],8
 00533297    mov         word ptr [ebp-2C],2C
 0053329D    mov         edx,6DC6E1
 005332A2    lea         eax,[ebp-10]
 005332A5    call        0067DAB4
 005332AA    inc         dword ptr [ebp-20]
 005332AD    lea         edx,[ebp-10]
 005332B0    lea         eax,[ebp-4]
 005332B3    call        0067DEF4
 005332B8    mov         dword ptr [ebp-44],eax
 005332BB    dec         dword ptr [ebp-20]
 005332BE    lea         eax,[ebp-10]
 005332C1    mov         edx,2
 005332C6    call        0067DCA0
 005332CB    mov         word ptr [ebp-2C],8
 005332D1    mov         ecx,dword ptr [ebp-44]
 005332D4    test        ecx,ecx
>005332D6    je          00533321
 005332D8    mov         eax,dword ptr [ebp-40]
 005332DB    test        eax,eax
>005332DD    je          00533321
 005332DF    mov         word ptr [ebp-2C],38
 005332E5    lea         eax,[ebp-14]
 005332E8    call        00401EA8
 005332ED    push        eax
 005332EE    inc         dword ptr [ebp-20]
 005332F1    mov         ecx,dword ptr [ebp-40]
 005332F4    mov         edx,dword ptr [ebp-44]
 005332F7    sub         ecx,edx
 005332F9    dec         ecx
 005332FA    mov         edx,dword ptr [ebp-44]
 005332FD    inc         edx
 005332FE    lea         eax,[ebp-4]
 00533301    call        0067E0BC
 00533306    lea         edx,[ebp-14]
 00533309    lea         eax,[ebp-8]
 0053330C    call        0067DCD0
 00533311    dec         dword ptr [ebp-20]
 00533314    lea         eax,[ebp-14]
 00533317    mov         edx,2
 0053331C    call        0067DCA0
 00533321    mov         word ptr [ebp-2C],44
 00533327    lea         edx,[ebp-8]
 0053332A    mov         eax,dword ptr [ebp-18]
 0053332D    call        0067DCD0
 00533332    mov         eax,dword ptr [ebp-18]
 00533335    mov         word ptr [ebp-2C],50
 0053333B    push        eax
 0053333C    dec         dword ptr [ebp-20]
 0053333F    lea         eax,[ebp-8]
 00533342    mov         edx,2
 00533347    call        0067DCA0
 0053334C    dec         dword ptr [ebp-20]
 0053334F    lea         eax,[ebp-4]
 00533352    mov         edx,2
 00533357    call        0067DCA0
 0053335C    pop         eax
 0053335D    mov         word ptr [ebp-2C],44
 00533363    inc         dword ptr [ebp-20]
 00533366    mov         edx,dword ptr [ebp-3C]
 00533369    mov         dword ptr fs:[0],edx
 00533370    mov         esp,ebp
 00533372    pop         ebp
 00533373    ret
end;*}

//00533374
{*function sub_00533374(?:AnsiString):?;
begin
 00533374    push        ebp
 00533375    mov         ebp,esp
 00533377    add         esp,0FFFFFF70
 0053337D    mov         dword ptr [ebp-4],eax
 00533380    mov         eax,6DD8A4
 00533385    call        0066FECC
 0053338A    mov         dword ptr [ebp-58],1
 00533391    lea         edx,[ebp-4]
 00533394    lea         eax,[ebp-4]
 00533397    call        0067DAEC
 0053339C    inc         dword ptr [ebp-58]
 0053339F    mov         word ptr [ebp-64],8
 005333A5    mov         word ptr [ebp-64],14
 005333AB    lea         eax,[ebp-34]
 005333AE    call        0046DFF0
 005333B3    add         dword ptr [ebp-58],3
 005333B7    mov         word ptr [ebp-64],8
 005333BD    mov         word ptr [ebp-64],20
 005333C3    lea         eax,[ebp-38]
 005333C6    call        00401EA8
 005333CB    inc         dword ptr [ebp-58]
 005333CE    mov         word ptr [ebp-64],8
 005333D4    mov         word ptr [ebp-64],2C
 005333DA    lea         eax,[ebp-3C]
 005333DD    call        00401EA8
 005333E2    inc         dword ptr [ebp-58]
 005333E5    mov         word ptr [ebp-64],8
 005333EB    mov         word ptr [ebp-64],38
 005333F1    lea         eax,[ebp-40]
 005333F4    call        00401EA8
 005333F9    push        eax
 005333FA    inc         dword ptr [ebp-58]
 005333FD    mov         edx,6DC6E3
 00533402    lea         eax,[ebp-44]
 00533405    call        0067DAB4
 0053340A    inc         dword ptr [ebp-58]
 0053340D    lea         edx,[ebp-44]
 00533410    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 00533416    mov         eax,dword ptr [ecx]
 00533418    add         eax,62D
 0053341D    pop         ecx
 0053341E    call        0067DCF8
 00533423    dec         dword ptr [ebp-58]
 00533426    lea         eax,[ebp-44]
 00533429    mov         edx,2
 0053342E    call        0067DCA0
 00533433    mov         word ptr [ebp-64],8
 00533439    push        6DC6EE
 0053343E    lea         eax,[ebp-40]
 00533441    call        00403C0C
 00533446    push        eax
 00533447    call        00671CC0
 0053344C    add         esp,8
 0053344F    mov         dword ptr [ebp-90],eax
 00533455    mov         edx,dword ptr [ebp-90]
 0053345B    test        edx,edx
>0053345D    je          005335AB
 00533463    push        dword ptr [ebp-90]
 00533469    push        400
 0053346E    push        6EA3A0;gvar_006EA3A0
 00533473    call        00671948
 00533478    add         esp,0C
 0053347B    test        eax,eax
>0053347D    je          0053359F
 00533483    mov         word ptr [ebp-64],44
 00533489    mov         edx,6EA3A0;gvar_006EA3A0
 0053348E    lea         eax,[ebp-48]
 00533491    call        0067DAB4
 00533496    mov         edx,eax
 00533498    inc         dword ptr [ebp-58]
 0053349B    lea         eax,[ebp-38]
 0053349E    call        0067DCD0
 005334A3    dec         dword ptr [ebp-58]
 005334A6    lea         eax,[ebp-48]
 005334A9    mov         edx,2
 005334AE    call        0067DCA0
 005334B3    mov         word ptr [ebp-64],50
 005334B9    lea         eax,[ebp-50]
 005334BC    call        00401EA8
 005334C1    push        eax
 005334C2    inc         dword ptr [ebp-58]
 005334C5    mov         edx,6DC6F1
 005334CA    lea         eax,[ebp-4C]
 005334CD    call        0067DAB4
 005334D2    inc         dword ptr [ebp-58]
 005334D5    lea         edx,[ebp-4C]
 005334D8    lea         eax,[ebp-4]
 005334DB    pop         ecx
 005334DC    call        0067DCF8
 005334E1    lea         edx,[ebp-50]
 005334E4    lea         eax,[ebp-38]
 005334E7    call        0067DEF4
 005334EC    dec         eax
 005334ED    sete        dl
 005334F0    and         edx,1
 005334F3    push        edx
 005334F4    dec         dword ptr [ebp-58]
 005334F7    lea         eax,[ebp-50]
 005334FA    mov         edx,2
 005334FF    call        0067DCA0
 00533504    dec         dword ptr [ebp-58]
 00533507    lea         eax,[ebp-4C]
 0053350A    mov         edx,2
 0053350F    call        0067DCA0
 00533514    pop         ecx
 00533515    test        cl,cl
>00533517    je          00533463
 0053351D    mov         eax,dword ptr [ebp-38]
 00533520    call        00532E24
 00533525    mov         dword ptr [ebp-88],eax
 0053352B    push        dword ptr [ebp-90]
 00533531    call        00671818
 00533536    pop         ecx
 00533537    mov         eax,dword ptr [ebp-88]
 0053353D    push        eax
 0053353E    dec         dword ptr [ebp-58]
 00533541    lea         eax,[ebp-40]
 00533544    mov         edx,2
 00533549    call        0067DCA0
 0053354E    dec         dword ptr [ebp-58]
 00533551    lea         eax,[ebp-3C]
 00533554    mov         edx,2
 00533559    call        0067DCA0
 0053355E    dec         dword ptr [ebp-58]
 00533561    lea         eax,[ebp-38]
 00533564    mov         edx,2
 00533569    call        0067DCA0
 0053356E    sub         dword ptr [ebp-58],3
 00533572    lea         eax,[ebp-34]
 00533575    mov         edx,2
 0053357A    call        0046E124
 0053357F    dec         dword ptr [ebp-58]
 00533582    lea         eax,[ebp-4]
 00533585    mov         edx,2
 0053358A    call        0067DCA0
 0053358F    pop         eax
 00533590    mov         edx,dword ptr [ebp-74]
 00533593    mov         dword ptr fs:[0],edx
>0053359A    jmp         005337C0
 0053359F    push        dword ptr [ebp-90]
 005335A5    call        00671818
 005335AA    pop         ecx
 005335AB    lea         eax,[ebp-4]
 005335AE    call        00403C0C
 005335B3    mov         edx,eax
 005335B5    mov         eax,6ECAB4
 005335BA    call        00472C40
 005335BF    mov         dword ptr [ebp-7C],eax
 005335C2    lea         eax,[ebp-4]
 005335C5    call        00403C0C
 005335CA    mov         ecx,eax
 005335CC    mov         eax,6ECAB4
 005335D1    mov         edx,dword ptr [ebp-7C]
 005335D4    call        004701C8
 005335D9    mov         dword ptr [ebp-80],eax
 005335DC    mov         ecx,dword ptr [ebp-7C]
 005335DF    test        ecx,ecx
>005335E1    je          005335EC
 005335E3    push        dword ptr [ebp-7C]
 005335E6    call        0066EAC0
 005335EB    pop         ecx
 005335EC    mov         eax,dword ptr [ebp-80]
 005335EF    inc         eax
>005335F0    je          00533688
 005335F6    mov         edx,dword ptr [ebp-80]
 005335F9    shl         edx,4
 005335FC    mov         ecx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 00533602    mov         eax,dword ptr [ecx+edx+0C]
 00533606    mov         dword ptr [ebp-80],eax
 00533609    lea         edx,[ebp-34]
 0053360C    push        edx
 0053360D    mov         eax,6ECAB4
 00533612    mov         ecx,1
 00533617    mov         edx,dword ptr [ebp-80]
 0053361A    call        00472158
 0053361F    test        eax,eax
>00533621    je          00533688
 00533623    mov         eax,dword ptr [ebp-34]
 00533626    push        eax
 00533627    dec         dword ptr [ebp-58]
 0053362A    lea         eax,[ebp-40]
 0053362D    mov         edx,2
 00533632    call        0067DCA0
 00533637    dec         dword ptr [ebp-58]
 0053363A    lea         eax,[ebp-3C]
 0053363D    mov         edx,2
 00533642    call        0067DCA0
 00533647    dec         dword ptr [ebp-58]
 0053364A    lea         eax,[ebp-38]
 0053364D    mov         edx,2
 00533652    call        0067DCA0
 00533657    sub         dword ptr [ebp-58],3
 0053365B    lea         eax,[ebp-34]
 0053365E    mov         edx,2
 00533663    call        0046E124
 00533668    dec         dword ptr [ebp-58]
 0053366B    lea         eax,[ebp-4]
 0053366E    mov         edx,2
 00533673    call        0067DCA0
 00533678    pop         eax
 00533679    mov         edx,dword ptr [ebp-74]
 0053367C    mov         dword ptr fs:[0],edx
>00533683    jmp         005337C0
 00533688    mov         eax,dword ptr [ebp-4]
 0053368B    call        00537314
 00533690    mov         dword ptr [ebp-8C],eax
 00533696    mov         edx,dword ptr [ebp-8C]
 0053369C    test        edx,edx
>0053369E    je          00533761
 005336A4    mov         ecx,dword ptr [ebp-8C]
 005336AA    mov         al,byte ptr [ecx]
 005336AC    cmp         al,0E
>005336AE    jne         00533761
 005336B4    mov         edx,dword ptr [ebp-8C]
 005336BA    mov         eax,dword ptr [edx+1]
 005336BD    call        005312C8
 005336C2    mov         dword ptr [ebp-84],eax
 005336C8    add         dword ptr [ebp-84],4
 005336CF    inc         dword ptr [ebp-84]
 005336D5    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 005336DB    mov         ecx,dword ptr [ebp-84]
 005336E1    mov         al,byte ptr [edx+ecx]
 005336E4    mov         byte ptr [ebp-75],al
 005336E7    xor         edx,edx
 005336E9    mov         dl,byte ptr [ebp-75]
 005336EC    inc         edx
 005336ED    add         dword ptr [ebp-84],edx
 005336F3    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 005336F9    mov         eax,dword ptr [ebp-84]
 005336FF    mov         eax,dword ptr [ecx+eax]
 00533702    push        eax
 00533703    dec         dword ptr [ebp-58]
 00533706    lea         eax,[ebp-40]
 00533709    mov         edx,2
 0053370E    call        0067DCA0
 00533713    dec         dword ptr [ebp-58]
 00533716    lea         eax,[ebp-3C]
 00533719    mov         edx,2
 0053371E    call        0067DCA0
 00533723    dec         dword ptr [ebp-58]
 00533726    lea         eax,[ebp-38]
 00533729    mov         edx,2
 0053372E    call        0067DCA0
 00533733    sub         dword ptr [ebp-58],3
 00533737    lea         eax,[ebp-34]
 0053373A    mov         edx,2
 0053373F    call        0046E124
 00533744    dec         dword ptr [ebp-58]
 00533747    lea         eax,[ebp-4]
 0053374A    mov         edx,2
 0053374F    call        0067DCA0
 00533754    pop         eax
 00533755    mov         edx,dword ptr [ebp-74]
 00533758    mov         dword ptr fs:[0],edx
>0053375F    jmp         005337C0
 00533761    xor         eax,eax
 00533763    push        eax
 00533764    dec         dword ptr [ebp-58]
 00533767    lea         eax,[ebp-40]
 0053376A    mov         edx,2
 0053376F    call        0067DCA0
 00533774    dec         dword ptr [ebp-58]
 00533777    lea         eax,[ebp-3C]
 0053377A    mov         edx,2
 0053377F    call        0067DCA0
 00533784    dec         dword ptr [ebp-58]
 00533787    lea         eax,[ebp-38]
 0053378A    mov         edx,2
 0053378F    call        0067DCA0
 00533794    sub         dword ptr [ebp-58],3
 00533798    lea         eax,[ebp-34]
 0053379B    mov         edx,2
 005337A0    call        0046E124
 005337A5    dec         dword ptr [ebp-58]
 005337A8    lea         eax,[ebp-4]
 005337AB    mov         edx,2
 005337B0    call        0067DCA0
 005337B5    pop         eax
 005337B6    mov         edx,dword ptr [ebp-74]
 005337B9    mov         dword ptr fs:[0],edx
 005337C0    mov         esp,ebp
 005337C2    pop         ebp
 005337C3    ret
end;*}

//005337C4
{*function sub_005337C4(?:dword; ?:?):?;
begin
 005337C4    push        ebp
 005337C5    mov         ebp,esp
 005337C7    add         esp,0FFFFFFB4
 005337CA    mov         dword ptr [ebp-2C],edx
 005337CD    mov         dword ptr [ebp-4],eax
 005337D0    mov         eax,6DD910
 005337D5    call        0066FECC
 005337DA    mov         dword ptr [ebp-0C],1
 005337E1    lea         edx,[ebp-4]
 005337E4    lea         eax,[ebp-4]
 005337E7    call        0067DAEC
 005337EC    inc         dword ptr [ebp-0C]
 005337EF    mov         word ptr [ebp-18],8
 005337F5    xor         edx,edx
 005337F7    mov         dword ptr [ebp-40],edx
 005337FA    lea         eax,[ebp-4]
 005337FD    call        00535E90
 00533802    mov         dword ptr [ebp-3C],eax
>00533805    jmp         00533818
 00533807    mov         edx,dword ptr [ebp-3C]
 0053380A    mov         dword ptr [ebp-40],edx
 0053380D    mov         eax,dword ptr [ebp-3C]
 00533810    call        00535B28
 00533815    mov         dword ptr [ebp-3C],eax
 00533818    mov         edx,dword ptr [ebp-3C]
 0053381B    test        edx,edx
>0053381D    je          0053382E
 0053381F    mov         eax,dword ptr [ebp-3C]
 00533822    call        00535C2C
 00533827    mov         edx,dword ptr [ebp-2C]
 0053382A    cmp         eax,edx
>0053382C    jg          00533807
 0053382E    mov         ecx,dword ptr [ebp-40]
 00533831    mov         dword ptr [ebp-3C],ecx
 00533834    mov         eax,dword ptr [ebp-3C]
 00533837    test        eax,eax
>00533839    je          00533929
 0053383F    mov         eax,dword ptr [ebp-3C]
 00533842    call        0053A308
 00533847    mov         dword ptr [ebp-44],eax
 0053384A    mov         edx,dword ptr [ebp-44]
 0053384D    test        edx,edx
>0053384F    je          00533929
 00533855    mov         ecx,dword ptr [ebp-44]
 00533858    mov         eax,dword ptr [ecx+1A]
 0053385B    test        eax,eax
>0053385D    je          00533929
 00533863    mov         edx,dword ptr [ebp-44]
 00533866    mov         ecx,dword ptr [edx+1A]
 00533869    mov         eax,dword ptr [ecx+4]
 0053386C    test        eax,eax
>0053386E    je          00533929
 00533874    xor         edx,edx
 00533876    mov         dword ptr [ebp-30],edx
>00533879    jmp         00533912
 0053387E    mov         ecx,dword ptr [ebp-44]
 00533881    mov         eax,dword ptr [ecx+1A]
 00533884    mov         eax,dword ptr [eax+4]
 00533887    mov         edx,dword ptr [ebp-30]
 0053388A    call        TList.Get
 0053388F    mov         dword ptr [ebp-48],eax
 00533892    mov         ecx,dword ptr [ebp-48]
 00533895    mov         eax,dword ptr [ecx+1]
 00533898    mov         dword ptr [ebp-34],eax
 0053389B    mov         edx,dword ptr [ebp-44]
 0053389E    mov         ecx,dword ptr [edx+1A]
 005338A1    mov         eax,dword ptr [ecx+4]
 005338A4    mov         edx,dword ptr [eax+8]
 005338A7    dec         edx
 005338A8    mov         ecx,dword ptr [ebp-30]
 005338AB    cmp         edx,ecx
>005338AD    jne         005338BC
 005338AF    mov         eax,dword ptr [ebp-3C]
 005338B2    call        00535C2C
 005338B7    mov         dword ptr [ebp-38],eax
>005338BA    jmp         005338DA
 005338BC    mov         edx,dword ptr [ebp-30]
 005338BF    inc         edx
 005338C0    mov         ecx,dword ptr [ebp-44]
 005338C3    mov         eax,dword ptr [ecx+1A]
 005338C6    mov         eax,dword ptr [eax+4]
 005338C9    call        TList.Get
 005338CE    mov         dword ptr [ebp-4C],eax
 005338D1    mov         edx,dword ptr [ebp-4C]
 005338D4    mov         ecx,dword ptr [edx+1]
 005338D7    mov         dword ptr [ebp-38],ecx
 005338DA    mov         eax,dword ptr [ebp-2C]
 005338DD    mov         edx,dword ptr [ebp-34]
 005338E0    cmp         eax,edx
>005338E2    jl          0053390F
 005338E4    mov         ecx,dword ptr [ebp-2C]
 005338E7    mov         eax,dword ptr [ebp-38]
 005338EA    cmp         ecx,eax
>005338EC    jge         0053390F
 005338EE    mov         eax,dword ptr [ebp-48]
 005338F1    push        eax
 005338F2    dec         dword ptr [ebp-0C]
 005338F5    lea         eax,[ebp-4]
 005338F8    mov         edx,2
 005338FD    call        0067DCA0
 00533902    pop         eax
 00533903    mov         edx,dword ptr [ebp-28]
 00533906    mov         dword ptr fs:[0],edx
>0053390D    jmp         00533947
 0053390F    inc         dword ptr [ebp-30]
 00533912    mov         ecx,dword ptr [ebp-44]
 00533915    mov         eax,dword ptr [ecx+1A]
 00533918    mov         edx,dword ptr [eax+4]
 0053391B    mov         ecx,dword ptr [edx+8]
 0053391E    mov         eax,dword ptr [ebp-30]
 00533921    cmp         ecx,eax
>00533923    jg          0053387E
 00533929    xor         eax,eax
 0053392B    push        eax
 0053392C    dec         dword ptr [ebp-0C]
 0053392F    lea         eax,[ebp-4]
 00533932    mov         edx,2
 00533937    call        0067DCA0
 0053393C    pop         eax
 0053393D    mov         edx,dword ptr [ebp-28]
 00533940    mov         dword ptr fs:[0],edx
 00533947    mov         esp,ebp
 00533949    pop         ebp
 0053394A    ret
end;*}

//0053394C
{*function sub_0053394C(?:dword; ?:?; ?:AnsiString; ?:?):?;
begin
 0053394C    push        ebp
 0053394D    mov         ebp,esp
 0053394F    add         esp,0FFFFF004
 00533955    push        eax
 00533956    add         esp,0FFFFF6BC
 0053395C    mov         dword ptr [ebp-0F0],ecx
 00533962    mov         dword ptr [ebp-0EC],edx
 00533968    mov         dword ptr [ebp-4],eax
 0053396B    mov         eax,6DDBD8
 00533970    call        0066FECC
 00533975    mov         dword ptr [ebp-0CC],1
 0053397F    lea         edx,[ebp-4]
 00533982    lea         eax,[ebp-4]
 00533985    call        0067DAEC
 0053398A    inc         dword ptr [ebp-0CC]
 00533990    mov         word ptr [ebp-0D8],8
 00533999    mov         word ptr [ebp-0D8],14
 005339A2    lea         eax,[ebp-34]
 005339A5    call        0046DFF0
 005339AA    add         dword ptr [ebp-0CC],3
 005339B1    mov         word ptr [ebp-0D8],8
 005339BA    mov         word ptr [ebp-0D8],20
 005339C3    lea         eax,[ebp-38]
 005339C6    call        00401EA8
 005339CB    inc         dword ptr [ebp-0CC]
 005339D1    mov         word ptr [ebp-0D8],8
 005339DA    mov         word ptr [ebp-0D8],2C
 005339E3    lea         eax,[ebp-3C]
 005339E6    call        00401EA8
 005339EB    inc         dword ptr [ebp-0CC]
 005339F1    mov         word ptr [ebp-0D8],8
 005339FA    mov         word ptr [ebp-0D8],38
 00533A03    lea         eax,[ebp-40]
 00533A06    call        00401EA8
 00533A0B    inc         dword ptr [ebp-0CC]
 00533A11    mov         word ptr [ebp-0D8],8
 00533A1A    mov         word ptr [ebp-0D8],44
 00533A23    lea         eax,[ebp-44]
 00533A26    call        00401EA8
 00533A2B    inc         dword ptr [ebp-0CC]
 00533A31    mov         word ptr [ebp-0D8],8
 00533A3A    mov         word ptr [ebp-0D8],50
 00533A43    lea         eax,[ebp-48]
 00533A46    call        00401EA8
 00533A4B    inc         dword ptr [ebp-0CC]
 00533A51    mov         word ptr [ebp-0D8],8
 00533A5A    mov         word ptr [ebp-0D8],5C
 00533A63    lea         eax,[ebp-4C]
 00533A66    call        00401EA8
 00533A6B    inc         dword ptr [ebp-0CC]
 00533A71    mov         word ptr [ebp-0D8],8
 00533A7A    mov         word ptr [ebp-0D8],68
 00533A83    mov         edx,6DC6F3
 00533A88    lea         eax,[ebp-50]
 00533A8B    call        0067DAB4
 00533A90    inc         dword ptr [ebp-0CC]
 00533A96    mov         word ptr [ebp-0D8],8
 00533A9F    mov         word ptr [ebp-0D8],74
 00533AA8    mov         edx,6DC6F4
 00533AAD    lea         eax,[ebp-58]
 00533AB0    call        0067DAB4
 00533AB5    inc         dword ptr [ebp-0CC]
 00533ABB    lea         edx,[ebp-58]
 00533ABE    lea         eax,[ebp-4]
 00533AC1    call        0067DD84
 00533AC6    push        eax
 00533AC7    dec         dword ptr [ebp-0CC]
 00533ACD    lea         eax,[ebp-58]
 00533AD0    mov         edx,2
 00533AD5    call        0067DCA0
 00533ADA    pop         ecx
 00533ADB    test        cl,cl
>00533ADD    je          00533BA6
 00533AE3    or          eax,0FFFFFFFF
 00533AE6    push        eax
 00533AE7    dec         dword ptr [ebp-0CC]
 00533AED    lea         eax,[ebp-50]
 00533AF0    mov         edx,2
 00533AF5    call        0067DCA0
 00533AFA    dec         dword ptr [ebp-0CC]
 00533B00    lea         eax,[ebp-4C]
 00533B03    mov         edx,2
 00533B08    call        0067DCA0
 00533B0D    dec         dword ptr [ebp-0CC]
 00533B13    lea         eax,[ebp-48]
 00533B16    mov         edx,2
 00533B1B    call        0067DCA0
 00533B20    dec         dword ptr [ebp-0CC]
 00533B26    lea         eax,[ebp-44]
 00533B29    mov         edx,2
 00533B2E    call        0067DCA0
 00533B33    dec         dword ptr [ebp-0CC]
 00533B39    lea         eax,[ebp-40]
 00533B3C    mov         edx,2
 00533B41    call        0067DCA0
 00533B46    dec         dword ptr [ebp-0CC]
 00533B4C    lea         eax,[ebp-3C]
 00533B4F    mov         edx,2
 00533B54    call        0067DCA0
 00533B59    dec         dword ptr [ebp-0CC]
 00533B5F    lea         eax,[ebp-38]
 00533B62    mov         edx,2
 00533B67    call        0067DCA0
 00533B6C    sub         dword ptr [ebp-0CC],3
 00533B73    lea         eax,[ebp-34]
 00533B76    mov         edx,2
 00533B7B    call        0046E124
 00533B80    dec         dword ptr [ebp-0CC]
 00533B86    lea         eax,[ebp-4]
 00533B89    mov         edx,2
 00533B8E    call        0067DCA0
 00533B93    pop         eax
 00533B94    mov         edx,dword ptr [ebp-0E8]
 00533B9A    mov         dword ptr fs:[0],edx
>00533BA1    jmp         00534F23
 00533BA6    mov         word ptr [ebp-0D8],80
 00533BAF    mov         edx,6DC6F5
 00533BB4    lea         eax,[ebp-5C]
 00533BB7    call        0067DAB4
 00533BBC    inc         dword ptr [ebp-0CC]
 00533BC2    lea         edx,[ebp-5C]
 00533BC5    mov         eax,dword ptr [ebp-0F0]
 00533BCB    call        0067DCD0
 00533BD0    dec         dword ptr [ebp-0CC]
 00533BD6    lea         eax,[ebp-5C]
 00533BD9    mov         edx,2
 00533BDE    call        0067DCA0
 00533BE3    mov         word ptr [ebp-0D8],8C
 00533BEC    mov         edx,6DC6F6
 00533BF1    lea         eax,[ebp-60]
 00533BF4    call        0067DAB4
 00533BF9    inc         dword ptr [ebp-0CC]
 00533BFF    lea         edx,[ebp-60]
 00533C02    mov         eax,dword ptr [ebp+8]
 00533C05    call        0067DCD0
 00533C0A    dec         dword ptr [ebp-0CC]
 00533C10    lea         eax,[ebp-60]
 00533C13    mov         edx,2
 00533C18    call        0067DCA0
 00533C1D    mov         word ptr [ebp-0D8],98
 00533C26    mov         edx,6DC6F7
 00533C2B    lea         eax,[ebp-64]
 00533C2E    call        0067DAB4
 00533C33    inc         dword ptr [ebp-0CC]
 00533C39    lea         edx,[ebp-64]
 00533C3C    lea         eax,[ebp-4]
 00533C3F    call        0067E2B8
 00533C44    mov         dword ptr [ebp-118],eax
 00533C4A    dec         dword ptr [ebp-0CC]
 00533C50    lea         eax,[ebp-64]
 00533C53    mov         edx,2
 00533C58    call        0067DCA0
 00533C5D    mov         ecx,dword ptr [ebp-118]
 00533C63    dec         ecx
>00533C64    jle         00533CCC
 00533C66    mov         edx,dword ptr [ebp-118]
 00533C6C    inc         edx
 00533C6D    lea         eax,[ebp-4]
 00533C70    call        00403C2C
 00533C75    movsx       ecx,byte ptr [eax]
 00533C78    cmp         ecx,3A
>00533C7B    je          00533CCC
 00533C7D    mov         word ptr [ebp-0D8],0A4
 00533C86    lea         eax,[ebp-68]
 00533C89    call        00401EA8
 00533C8E    push        eax
 00533C8F    inc         dword ptr [ebp-0CC]
 00533C95    lea         eax,[ebp-4]
 00533C98    call        00405290
 00533C9D    mov         ecx,eax
 00533C9F    mov         edx,dword ptr [ebp-118]
 00533CA5    inc         edx
 00533CA6    lea         eax,[ebp-4]
 00533CA9    call        0067E0BC
 00533CAE    lea         edx,[ebp-68]
 00533CB1    lea         eax,[ebp-4]
 00533CB4    call        0067DCD0
 00533CB9    dec         dword ptr [ebp-0CC]
 00533CBF    lea         eax,[ebp-68]
 00533CC2    mov         edx,2
 00533CC7    call        0067DCA0
 00533CCC    mov         word ptr [ebp-0D8],0B0
 00533CD5    lea         eax,[ebp-54]
 00533CD8    call        00401EA8
 00533CDD    push        eax
 00533CDE    inc         dword ptr [ebp-0CC]
 00533CE4    mov         edx,6DC6F9
 00533CE9    lea         eax,[ebp-6C]
 00533CEC    call        0067DAB4
 00533CF1    inc         dword ptr [ebp-0CC]
 00533CF7    lea         edx,[ebp-6C]
 00533CFA    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 00533D00    mov         eax,dword ptr [ecx]
 00533D02    add         eax,62D
 00533D07    pop         ecx
 00533D08    call        0067DCF8
 00533D0D    dec         dword ptr [ebp-0CC]
 00533D13    lea         eax,[ebp-6C]
 00533D16    mov         edx,2
 00533D1B    call        0067DCA0
 00533D20    mov         word ptr [ebp-0D8],8
 00533D29    push        6DC704
 00533D2E    lea         eax,[ebp-54]
 00533D31    call        00403C0C
 00533D36    push        eax
 00533D37    call        00671CC0
 00533D3C    add         esp,8
 00533D3F    mov         dword ptr [ebp-140],eax
 00533D45    mov         edx,dword ptr [ebp-140]
 00533D4B    test        edx,edx
>00533D4D    je          0053412C
 00533D53    push        dword ptr [ebp-140]
 00533D59    push        400
 00533D5E    push        6EA3A0;gvar_006EA3A0
 00533D63    call        00671948
 00533D68    add         esp,0C
 00533D6B    test        eax,eax
>00533D6D    je          00534120
 00533D73    mov         word ptr [ebp-0D8],0BC
 00533D7C    mov         edx,6EA3A0;gvar_006EA3A0
 00533D81    lea         eax,[ebp-70]
 00533D84    call        0067DAB4
 00533D89    mov         edx,eax
 00533D8B    inc         dword ptr [ebp-0CC]
 00533D91    lea         eax,[ebp-38]
 00533D94    call        0067DCD0
 00533D99    dec         dword ptr [ebp-0CC]
 00533D9F    lea         eax,[ebp-70]
 00533DA2    mov         edx,2
 00533DA7    call        0067DCA0
 00533DAC    mov         word ptr [ebp-0D8],0C8
 00533DB5    lea         eax,[ebp-78]
 00533DB8    call        00401EA8
 00533DBD    push        eax
 00533DBE    inc         dword ptr [ebp-0CC]
 00533DC4    mov         edx,6DC707
 00533DC9    lea         eax,[ebp-74]
 00533DCC    call        0067DAB4
 00533DD1    inc         dword ptr [ebp-0CC]
 00533DD7    lea         edx,[ebp-74]
 00533DDA    lea         eax,[ebp-4]
 00533DDD    pop         ecx
 00533DDE    call        0067DCF8
 00533DE3    lea         edx,[ebp-78]
 00533DE6    lea         eax,[ebp-38]
 00533DE9    call        0067DEF4
 00533DEE    dec         eax
 00533DEF    sete        dl
 00533DF2    and         edx,1
 00533DF5    push        edx
 00533DF6    dec         dword ptr [ebp-0CC]
 00533DFC    lea         eax,[ebp-78]
 00533DFF    mov         edx,2
 00533E04    call        0067DCA0
 00533E09    dec         dword ptr [ebp-0CC]
 00533E0F    lea         eax,[ebp-74]
 00533E12    mov         edx,2
 00533E17    call        0067DCA0
 00533E1C    pop         ecx
 00533E1D    test        cl,cl
>00533E1F    je          00533D53
 00533E25    mov         eax,dword ptr [ebp-38]
 00533E28    call        00532E24
 00533E2D    mov         dword ptr [ebp-134],eax
 00533E33    mov         word ptr [ebp-0D8],0D4
 00533E3C    mov         edx,6DC709
 00533E41    lea         eax,[ebp-7C]
 00533E44    call        0067DAB4
 00533E49    inc         dword ptr [ebp-0CC]
 00533E4F    lea         edx,[ebp-7C]
 00533E52    lea         eax,[ebp-3C]
 00533E55    call        0067DCD0
 00533E5A    dec         dword ptr [ebp-0CC]
 00533E60    lea         eax,[ebp-7C]
 00533E63    mov         edx,2
 00533E68    call        0067DCA0
 00533E6D    mov         byte ptr [ebp-0F1],0
 00533E74    push        dword ptr [ebp-140]
 00533E7A    push        400
 00533E7F    push        6EA3A0;gvar_006EA3A0
 00533E84    call        00671948
 00533E89    add         esp,0C
 00533E8C    test        eax,eax
>00533E8E    je          0053410F
 00533E94    mov         word ptr [ebp-0D8],0E0
 00533E9D    mov         edx,6EA3A0;gvar_006EA3A0
 00533EA2    lea         eax,[ebp-80]
 00533EA5    call        0067DAB4
 00533EAA    mov         edx,eax
 00533EAC    inc         dword ptr [ebp-0CC]
 00533EB2    lea         eax,[ebp-38]
 00533EB5    call        0067DCD0
 00533EBA    dec         dword ptr [ebp-0CC]
 00533EC0    lea         eax,[ebp-80]
 00533EC3    mov         edx,2
 00533EC8    call        0067DCA0
 00533ECD    mov         eax,dword ptr [ebp-3C]
 00533ED0    call        00532F88
 00533ED5    mov         dword ptr [ebp-124],eax
 00533EDB    mov         word ptr [ebp-0D8],0EC
 00533EE4    mov         edx,6DC70A
 00533EE9    lea         eax,[ebp-84]
 00533EEF    call        0067DAB4
 00533EF4    inc         dword ptr [ebp-0CC]
 00533EFA    lea         edx,[ebp-84]
 00533F00    lea         eax,[ebp-38]
 00533F03    call        0067DEF4
 00533F08    push        eax
 00533F09    dec         dword ptr [ebp-0CC]
 00533F0F    lea         eax,[ebp-84]
 00533F15    mov         edx,2
 00533F1A    call        0067DCA0
 00533F1F    pop         ecx
 00533F20    test        ecx,ecx
>00533F22    je          00533F39
 00533F24    mov         eax,dword ptr [ebp-134]
 00533F2A    mov         dword ptr [ebp-128],eax
 00533F30    mov         byte ptr [ebp-0F1],1
>00533F37    jmp         00533F47
 00533F39    mov         eax,dword ptr [ebp-38]
 00533F3C    call        00532F88
 00533F41    mov         dword ptr [ebp-128],eax
 00533F47    mov         edx,dword ptr [ebp-124]
 00533F4D    test        edx,edx
>00533F4F    jl          005340F5
 00533F55    mov         ecx,dword ptr [ebp-0EC]
 00533F5B    mov         eax,dword ptr [ebp-124]
 00533F61    cmp         ecx,eax
>00533F63    jl          005340F5
 00533F69    mov         edx,dword ptr [ebp-0EC]
 00533F6F    mov         ecx,dword ptr [ebp-128]
 00533F75    cmp         edx,ecx
>00533F77    jge         005340F5
 00533F7D    mov         word ptr [ebp-0D8],0F8
 00533F86    lea         eax,[ebp-88]
 00533F8C    call        00401EA8
 00533F91    mov         edx,eax
 00533F93    inc         dword ptr [ebp-0CC]
 00533F99    mov         eax,dword ptr [ebp-3C]
 00533F9C    call        005330F0
 00533FA1    lea         edx,[ebp-88]
 00533FA7    mov         eax,dword ptr [ebp-0F0]
 00533FAD    call        0067DCD0
 00533FB2    dec         dword ptr [ebp-0CC]
 00533FB8    lea         eax,[ebp-88]
 00533FBE    mov         edx,2
 00533FC3    call        0067DCA0
 00533FC8    mov         word ptr [ebp-0D8],104
 00533FD1    lea         eax,[ebp-8C]
 00533FD7    call        00401EA8
 00533FDC    mov         edx,eax
 00533FDE    inc         dword ptr [ebp-0CC]
 00533FE4    mov         eax,dword ptr [ebp-3C]
 00533FE7    call        00533210
 00533FEC    lea         edx,[ebp-8C]
 00533FF2    mov         eax,dword ptr [ebp+8]
 00533FF5    call        0067DCD0
 00533FFA    dec         dword ptr [ebp-0CC]
 00534000    lea         eax,[ebp-8C]
 00534006    mov         edx,2
 0053400B    call        0067DCA0
 00534010    push        dword ptr [ebp-140]
 00534016    call        00671818
 0053401B    pop         ecx
 0053401C    mov         eax,dword ptr [ebp-124]
 00534022    push        eax
 00534023    dec         dword ptr [ebp-0CC]
 00534029    lea         eax,[ebp-54]
 0053402C    mov         edx,2
 00534031    call        0067DCA0
 00534036    dec         dword ptr [ebp-0CC]
 0053403C    lea         eax,[ebp-50]
 0053403F    mov         edx,2
 00534044    call        0067DCA0
 00534049    dec         dword ptr [ebp-0CC]
 0053404F    lea         eax,[ebp-4C]
 00534052    mov         edx,2
 00534057    call        0067DCA0
 0053405C    dec         dword ptr [ebp-0CC]
 00534062    lea         eax,[ebp-48]
 00534065    mov         edx,2
 0053406A    call        0067DCA0
 0053406F    dec         dword ptr [ebp-0CC]
 00534075    lea         eax,[ebp-44]
 00534078    mov         edx,2
 0053407D    call        0067DCA0
 00534082    dec         dword ptr [ebp-0CC]
 00534088    lea         eax,[ebp-40]
 0053408B    mov         edx,2
 00534090    call        0067DCA0
 00534095    dec         dword ptr [ebp-0CC]
 0053409B    lea         eax,[ebp-3C]
 0053409E    mov         edx,2
 005340A3    call        0067DCA0
 005340A8    dec         dword ptr [ebp-0CC]
 005340AE    lea         eax,[ebp-38]
 005340B1    mov         edx,2
 005340B6    call        0067DCA0
 005340BB    sub         dword ptr [ebp-0CC],3
 005340C2    lea         eax,[ebp-34]
 005340C5    mov         edx,2
 005340CA    call        0046E124
 005340CF    dec         dword ptr [ebp-0CC]
 005340D5    lea         eax,[ebp-4]
 005340D8    mov         edx,2
 005340DD    call        0067DCA0
 005340E2    pop         eax
 005340E3    mov         edx,dword ptr [ebp-0E8]
 005340E9    mov         dword ptr fs:[0],edx
>005340F0    jmp         00534F23
 005340F5    mov         cl,byte ptr [ebp-0F1]
 005340FB    test        cl,cl
>005340FD    jne         0053410F
 005340FF    lea         edx,[ebp-38]
 00534102    lea         eax,[ebp-3C]
 00534105    call        0067DCD0
>0053410A    jmp         00533E74
 0053410F    push        dword ptr [ebp-140]
 00534115    call        00671818
 0053411A    pop         ecx
>0053411B    jmp         00533D53
 00534120    push        dword ptr [ebp-140]
 00534126    call        00671818
 0053412B    pop         ecx
 0053412C    mov         dword ptr [ebp-144],5
 00534136    mov         word ptr [ebp-0D8],8
 0053413F    mov         ecx,dword ptr [ebp-144]
 00534145    test        ecx,ecx
>00534147    jl          005346AF
 0053414D    dec         dword ptr [ebp-144]
 00534153    lea         eax,[ebp-4]
 00534156    call        00403C0C
 0053415B    mov         edx,eax
 0053415D    mov         eax,6ECAB4
 00534162    call        00472C40
 00534167    mov         dword ptr [ebp-104],eax
 0053416D    lea         eax,[ebp-4]
 00534170    call        00403C0C
 00534175    mov         ecx,eax
 00534177    mov         eax,6ECAB4
 0053417C    mov         edx,dword ptr [ebp-104]
 00534182    call        004701C8
 00534187    mov         dword ptr [ebp-114],eax
 0053418D    mov         ecx,dword ptr [ebp-104]
 00534193    test        ecx,ecx
>00534195    je          005341A3
 00534197    push        dword ptr [ebp-104]
 0053419D    call        0066EAC0
 005341A2    pop         ecx
 005341A3    mov         eax,dword ptr [ebp-114]
 005341A9    inc         eax
>005341AA    je          005346A1
 005341B0    mov         edx,dword ptr [ebp-114]
 005341B6    shl         edx,4
 005341B9    mov         ecx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 005341BF    mov         eax,dword ptr [ecx+edx+0C]
 005341C3    mov         dword ptr [ebp-114],eax
 005341C9    lea         edx,[ebp-34]
 005341CC    push        edx
 005341CD    mov         eax,6ECAB4
 005341D2    mov         ecx,8
 005341D7    mov         edx,dword ptr [ebp-114]
 005341DD    call        00472158
 005341E2    test        eax,eax
>005341E4    je          005346A1
 005341EA    cmp         word ptr [ebp-17],0
>005341EF    je          0053464D
 005341F5    push        800
 005341FA    push        0
 005341FC    lea         eax,[ebp-1944]
 00534202    push        eax
 00534203    call        0066F904
 00534208    add         esp,0C
 0053420B    mov         edx,dword ptr [ebp-15]
 0053420E    mov         dword ptr [ebp-0F8],edx
 00534214    xor         ecx,ecx
 00534216    mov         dword ptr [ebp-10C],ecx
 0053421C    xor         eax,eax
 0053421E    mov         dword ptr [ebp-108],eax
>00534224    jmp         005342F2
 00534229    inc         dword ptr [ebp-0F8]
 0053422F    add         dword ptr [ebp-0F8],4
 00534236    mov         edx,dword ptr [ebp-0F8]
 0053423C    mov         ecx,dword ptr [edx]
 0053423E    mov         dword ptr [ebp-12C],ecx
 00534244    add         dword ptr [ebp-0F8],4
 0053424B    mov         eax,dword ptr [ebp-10C]
 00534251    mov         edx,dword ptr [ebp+eax*8-1940]
 00534258    test        edx,edx
>0053425A    jne         00534271
 0053425C    mov         ecx,dword ptr [ebp-10C]
 00534262    mov         eax,dword ptr [ebp-12C]
 00534268    mov         dword ptr [ebp+ecx*8-1944],eax
>0053426F    jmp         005342A1
 00534271    mov         edx,dword ptr [ebp-10C]
 00534277    mov         ecx,dword ptr [ebp+edx*8-1944]
 0053427E    mov         eax,dword ptr [ebp-12C]
 00534284    cmp         ecx,eax
>00534286    je          005342A1
 00534288    inc         dword ptr [ebp-10C]
 0053428E    mov         edx,dword ptr [ebp-10C]
 00534294    mov         ecx,dword ptr [ebp-12C]
 0053429A    mov         dword ptr [ebp+edx*8-1944],ecx
 005342A1    mov         eax,dword ptr [ebp-10C]
 005342A7    inc         dword ptr [ebp+eax*8-1940]
 005342AE    mov         edx,dword ptr [ebp-0F8]
 005342B4    mov         cl,byte ptr [edx]
 005342B6    mov         byte ptr [ebp-0F2],cl
 005342BC    xor         eax,eax
 005342BE    mov         al,byte ptr [ebp-0F2]
 005342C4    add         eax,3
 005342C7    add         dword ptr [ebp-0F8],eax
 005342CD    mov         edx,dword ptr [ebp-0F8]
 005342D3    mov         cl,byte ptr [edx]
 005342D5    mov         byte ptr [ebp-0F2],cl
 005342DB    xor         eax,eax
 005342DD    mov         al,byte ptr [ebp-0F2]
 005342E3    add         eax,3
 005342E6    add         dword ptr [ebp-0F8],eax
 005342EC    inc         dword ptr [ebp-108]
 005342F2    movzx       edx,word ptr [ebp-17]
 005342F6    mov         ecx,dword ptr [ebp-108]
 005342FC    cmp         edx,ecx
>005342FE    jg          00534229
 00534304    xor         eax,eax
 00534306    mov         dword ptr [ebp-10C],eax
 0053430C    mov         edx,dword ptr [ebp-10C]
 00534312    mov         ecx,dword ptr [ebp+edx*8-1940]
 00534319    test        ecx,ecx
>0053431B    je          00534633
 00534321    mov         eax,dword ptr [ebp-15]
 00534324    mov         dword ptr [ebp-0F8],eax
 0053432A    xor         edx,edx
 0053432C    mov         dword ptr [ebp-108],edx
 00534332    xor         ecx,ecx
 00534334    mov         dword ptr [ebp-110],ecx
>0053433A    jmp         00534621
 0053433F    mov         eax,dword ptr [ebp-0F8]
 00534345    mov         dword ptr [ebp-0FC],eax
 0053434B    inc         dword ptr [ebp-0F8]
 00534351    mov         edx,dword ptr [ebp-0F8]
 00534357    mov         ecx,dword ptr [edx]
 00534359    mov         dword ptr [ebp-124],ecx
 0053435F    add         dword ptr [ebp-0F8],4
 00534366    mov         eax,dword ptr [ebp-0F8]
 0053436C    mov         edx,dword ptr [eax]
 0053436E    mov         dword ptr [ebp-12C],edx
 00534374    add         dword ptr [ebp-0F8],4
 0053437B    mov         ecx,dword ptr [ebp-0F8]
 00534381    mov         al,byte ptr [ecx]
 00534383    mov         byte ptr [ebp-0F2],al
 00534389    xor         edx,edx
 0053438B    mov         dl,byte ptr [ebp-0F2]
 00534391    add         edx,3
 00534394    add         dword ptr [ebp-0F8],edx
 0053439A    mov         ecx,dword ptr [ebp-0F8]
 005343A0    mov         al,byte ptr [ecx]
 005343A2    mov         byte ptr [ebp-0F2],al
 005343A8    xor         edx,edx
 005343AA    mov         dl,byte ptr [ebp-0F2]
 005343B0    add         edx,3
 005343B3    add         dword ptr [ebp-0F8],edx
 005343B9    mov         ecx,dword ptr [ebp-10C]
 005343BF    mov         eax,dword ptr [ebp+ecx*8-1944]
 005343C6    mov         edx,dword ptr [ebp-12C]
 005343CC    cmp         eax,edx
>005343CE    jne         0053461B
 005343D4    mov         ecx,dword ptr [ebp-10C]
 005343DA    mov         eax,dword ptr [ebp+ecx*8-1940]
 005343E1    dec         eax
 005343E2    mov         edx,dword ptr [ebp-110]
 005343E8    cmp         eax,edx
>005343EA    jne         005343FC
 005343EC    mov         eax,dword ptr [ebp-4]
 005343EF    call        00533374
 005343F4    mov         dword ptr [ebp-128],eax
>005343FA    jmp         0053440B
 005343FC    mov         edx,dword ptr [ebp-0F8]
 00534402    mov         ecx,dword ptr [edx+1]
 00534405    mov         dword ptr [ebp-128],ecx
 0053440B    mov         eax,dword ptr [ebp-0EC]
 00534411    mov         edx,dword ptr [ebp-124]
 00534417    cmp         eax,edx
>00534419    jl          00534615
 0053441F    mov         ecx,dword ptr [ebp-0EC]
 00534425    mov         eax,dword ptr [ebp-128]
 0053442B    cmp         ecx,eax
>0053442D    jge         00534615
 00534433    mov         edx,dword ptr [ebp-0FC]
 00534439    mov         dword ptr [ebp-0F8],edx
 0053443F    inc         dword ptr [ebp-0F8]
 00534445    mov         ecx,dword ptr [ebp-0F8]
 0053444B    mov         eax,dword ptr [ecx]
 0053444D    mov         dword ptr [ebp-124],eax
 00534453    add         dword ptr [ebp-0F8],4
 0053445A    add         dword ptr [ebp-0F8],4
 00534461    mov         edx,dword ptr [ebp-0F8]
 00534467    mov         cl,byte ptr [edx]
 00534469    mov         byte ptr [ebp-0F2],cl
 0053446F    add         dword ptr [ebp-0F8],2
 00534476    mov         word ptr [ebp-0D8],110
 0053447F    xor         ecx,ecx
 00534481    mov         cl,byte ptr [ebp-0F2]
 00534487    lea         eax,[ebp-90]
 0053448D    mov         edx,dword ptr [ebp-0F8]
 00534493    call        0067DB28
 00534498    mov         edx,eax
 0053449A    inc         dword ptr [ebp-0CC]
 005344A0    mov         eax,dword ptr [ebp-0F0]
 005344A6    call        0067DCD0
 005344AB    dec         dword ptr [ebp-0CC]
 005344B1    lea         eax,[ebp-90]
 005344B7    mov         edx,2
 005344BC    call        0067DCA0
 005344C1    xor         ecx,ecx
 005344C3    mov         cl,byte ptr [ebp-0F2]
 005344C9    inc         ecx
 005344CA    add         dword ptr [ebp-0F8],ecx
 005344D0    mov         eax,dword ptr [ebp-0F8]
 005344D6    mov         dl,byte ptr [eax]
 005344D8    mov         byte ptr [ebp-0F2],dl
 005344DE    add         dword ptr [ebp-0F8],2
 005344E5    mov         word ptr [ebp-0D8],11C
 005344EE    xor         ecx,ecx
 005344F0    mov         cl,byte ptr [ebp-0F2]
 005344F6    lea         eax,[ebp-94]
 005344FC    mov         edx,dword ptr [ebp-0F8]
 00534502    call        0067DB28
 00534507    mov         edx,eax
 00534509    inc         dword ptr [ebp-0CC]
 0053450F    mov         eax,dword ptr [ebp+8]
 00534512    call        0067DCD0
 00534517    dec         dword ptr [ebp-0CC]
 0053451D    lea         eax,[ebp-94]
 00534523    mov         edx,2
 00534528    call        0067DCA0
 0053452D    xor         ecx,ecx
 0053452F    mov         cl,byte ptr [ebp-0F2]
 00534535    inc         ecx
 00534536    add         dword ptr [ebp-0F8],ecx
 0053453C    mov         eax,dword ptr [ebp-124]
 00534542    push        eax
 00534543    dec         dword ptr [ebp-0CC]
 00534549    lea         eax,[ebp-54]
 0053454C    mov         edx,2
 00534551    call        0067DCA0
 00534556    dec         dword ptr [ebp-0CC]
 0053455C    lea         eax,[ebp-50]
 0053455F    mov         edx,2
 00534564    call        0067DCA0
 00534569    dec         dword ptr [ebp-0CC]
 0053456F    lea         eax,[ebp-4C]
 00534572    mov         edx,2
 00534577    call        0067DCA0
 0053457C    dec         dword ptr [ebp-0CC]
 00534582    lea         eax,[ebp-48]
 00534585    mov         edx,2
 0053458A    call        0067DCA0
 0053458F    dec         dword ptr [ebp-0CC]
 00534595    lea         eax,[ebp-44]
 00534598    mov         edx,2
 0053459D    call        0067DCA0
 005345A2    dec         dword ptr [ebp-0CC]
 005345A8    lea         eax,[ebp-40]
 005345AB    mov         edx,2
 005345B0    call        0067DCA0
 005345B5    dec         dword ptr [ebp-0CC]
 005345BB    lea         eax,[ebp-3C]
 005345BE    mov         edx,2
 005345C3    call        0067DCA0
 005345C8    dec         dword ptr [ebp-0CC]
 005345CE    lea         eax,[ebp-38]
 005345D1    mov         edx,2
 005345D6    call        0067DCA0
 005345DB    sub         dword ptr [ebp-0CC],3
 005345E2    lea         eax,[ebp-34]
 005345E5    mov         edx,2
 005345EA    call        0046E124
 005345EF    dec         dword ptr [ebp-0CC]
 005345F5    lea         eax,[ebp-4]
 005345F8    mov         edx,2
 005345FD    call        0067DCA0
 00534602    pop         eax
 00534603    mov         edx,dword ptr [ebp-0E8]
 00534609    mov         dword ptr fs:[0],edx
>00534610    jmp         00534F23
 00534615    inc         dword ptr [ebp-110]
 0053461B    inc         dword ptr [ebp-108]
 00534621    movzx       ecx,word ptr [ebp-17]
 00534625    mov         eax,dword ptr [ebp-108]
 0053462B    cmp         ecx,eax
>0053462D    jg          0053433F
 00534633    inc         dword ptr [ebp-10C]
 00534639    mov         edx,dword ptr [ebp-10C]
 0053463F    cmp         edx,100
>00534645    jl          0053430C
>0053464B    jmp         005346A1
 0053464D    mov         word ptr [ebp-0D8],128
 00534656    mov         edx,6DC70F
 0053465B    lea         eax,[ebp-98]
 00534661    call        0067DAB4
 00534666    inc         dword ptr [ebp-0CC]
 0053466C    lea         edx,[ebp-98]
 00534672    lea         eax,[ebp-27]
 00534675    call        0067DD9C
 0053467A    push        eax
 0053467B    dec         dword ptr [ebp-0CC]
 00534681    lea         eax,[ebp-98]
 00534687    mov         edx,2
 0053468C    call        0067DCA0
 00534691    pop         ecx
 00534692    test        cl,cl
>00534694    je          005346A1
 00534696    lea         edx,[ebp-27]
 00534699    lea         eax,[ebp-4]
 0053469C    call        0067DCD0
 005346A1    mov         ecx,dword ptr [ebp-144]
 005346A7    test        ecx,ecx
>005346A9    jge         0053414D
 005346AF    mov         eax,dword ptr [ebp-4]
 005346B2    call        00537314
 005346B7    mov         dword ptr [ebp-13C],eax
 005346BD    mov         edx,dword ptr [ebp-13C]
 005346C3    test        edx,edx
>005346C5    je          00534E52
 005346CB    mov         ecx,dword ptr [ebp-13C]
 005346D1    mov         al,byte ptr [ecx]
 005346D3    cmp         al,0E
>005346D5    jne         00534E52
 005346DB    mov         edx,dword ptr [ebp-13C]
 005346E1    mov         eax,dword ptr [edx+1]
 005346E4    call        005312C8
 005346E9    mov         dword ptr [ebp-118],eax
 005346EF    add         dword ptr [ebp-118],4
 005346F6    inc         dword ptr [ebp-118]
 005346FC    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00534702    mov         ecx,dword ptr [ebp-118]
 00534708    mov         al,byte ptr [edx+ecx]
 0053470B    mov         byte ptr [ebp-0F2],al
 00534711    inc         dword ptr [ebp-118]
 00534717    mov         word ptr [ebp-0D8],134
 00534720    xor         ecx,ecx
 00534722    mov         cl,byte ptr [ebp-0F2]
 00534728    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053472E    mov         eax,dword ptr [ebp-118]
 00534734    add         edx,eax
 00534736    lea         eax,[ebp-9C]
 0053473C    call        0067DB28
 00534741    mov         edx,eax
 00534743    inc         dword ptr [ebp-0CC]
 00534749    lea         eax,[ebp-40]
 0053474C    call        0067DCD0
 00534751    dec         dword ptr [ebp-0CC]
 00534757    lea         eax,[ebp-9C]
 0053475D    mov         edx,2
 00534762    call        0067DCA0
 00534767    xor         ecx,ecx
 00534769    mov         cl,byte ptr [ebp-0F2]
 0053476F    add         dword ptr [ebp-118],ecx
 00534775    add         dword ptr [ebp-118],4
 0053477C    mov         eax,[006941D4];0x0 gvar_006941D4
 00534781    mov         edx,dword ptr [ebp-118]
 00534787    mov         ecx,dword ptr [eax+edx]
 0053478A    mov         dword ptr [ebp-11C],ecx
 00534790    add         dword ptr [ebp-118],4
 00534797    xor         eax,eax
 00534799    mov         dword ptr [ebp-108],eax
 0053479F    mov         edx,dword ptr [ebp-108]
 005347A5    mov         ecx,dword ptr [ebp-11C]
 005347AB    cmp         edx,ecx
>005347AD    jge         00534A6E
 005347B3    mov         eax,[006941D4];0x0 gvar_006941D4
 005347B8    mov         edx,dword ptr [ebp-118]
 005347BE    mov         ecx,dword ptr [eax+edx]
 005347C1    mov         dword ptr [ebp-138],ecx
 005347C7    add         dword ptr [ebp-118],4
 005347CE    mov         eax,[006941D4];0x0 gvar_006941D4
 005347D3    mov         edx,dword ptr [ebp-118]
 005347D9    mov         ecx,dword ptr [eax+edx]
 005347DC    mov         dword ptr [ebp-124],ecx
 005347E2    add         dword ptr [ebp-118],4
 005347E9    mov         eax,dword ptr [ebp-11C]
 005347EF    dec         eax
 005347F0    mov         edx,dword ptr [ebp-108]
 005347F6    cmp         eax,edx
>005347F8    jne         00534804
 005347FA    xor         ecx,ecx
 005347FC    mov         dword ptr [ebp-128],ecx
>00534802    jmp         00534819
 00534804    mov         eax,[006941D4];0x0 gvar_006941D4
 00534809    mov         edx,dword ptr [ebp-118]
 0053480F    mov         ecx,dword ptr [eax+edx+4]
 00534813    mov         dword ptr [ebp-128],ecx
 00534819    mov         eax,dword ptr [ebp-0EC]
 0053481F    mov         edx,dword ptr [ebp-124]
 00534825    cmp         eax,edx
>00534827    jl          00534A54
 0053482D    mov         ecx,dword ptr [ebp-0EC]
 00534833    mov         eax,dword ptr [ebp-128]
 00534839    cmp         ecx,eax
>0053483B    jge         00534A54
 00534841    mov         word ptr [ebp-0D8],140
 0053484A    lea         eax,[ebp-0A8]
 00534850    call        00401EA8
 00534855    mov         edx,eax
 00534857    inc         dword ptr [ebp-0CC]
 0053485D    mov         eax,dword ptr [ebp-124]
 00534863    call        0053164C
 00534868    lea         edx,[ebp-0A8]
 0053486E    push        edx
 0053486F    lea         eax,[ebp-0A4]
 00534875    call        00401EA8
 0053487A    push        eax
 0053487B    inc         dword ptr [ebp-0CC]
 00534881    mov         edx,6DC710
 00534886    lea         eax,[ebp-0A0]
 0053488C    call        0067DAB4
 00534891    inc         dword ptr [ebp-0CC]
 00534897    lea         edx,[ebp-0A0]
 0053489D    lea         eax,[ebp-40]
 005348A0    pop         ecx
 005348A1    call        0067DCF8
 005348A6    lea         edx,[ebp-0A4]
 005348AC    push        edx
 005348AD    lea         eax,[ebp-0AC]
 005348B3    call        00401EA8
 005348B8    mov         ecx,eax
 005348BA    inc         dword ptr [ebp-0CC]
 005348C0    pop         eax
 005348C1    pop         edx
 005348C2    call        0067DCF8
 005348C7    lea         edx,[ebp-0AC]
 005348CD    mov         eax,dword ptr [ebp-0F0]
 005348D3    call        0067DCD0
 005348D8    dec         dword ptr [ebp-0CC]
 005348DE    lea         eax,[ebp-0AC]
 005348E4    mov         edx,2
 005348E9    call        0067DCA0
 005348EE    dec         dword ptr [ebp-0CC]
 005348F4    lea         eax,[ebp-0A8]
 005348FA    mov         edx,2
 005348FF    call        0067DCA0
 00534904    dec         dword ptr [ebp-0CC]
 0053490A    lea         eax,[ebp-0A4]
 00534910    mov         edx,2
 00534915    call        0067DCA0
 0053491A    dec         dword ptr [ebp-0CC]
 00534920    lea         eax,[ebp-0A0]
 00534926    mov         edx,2
 0053492B    call        0067DCA0
 00534930    mov         word ptr [ebp-0D8],14C
 00534939    lea         eax,[ebp-0B0]
 0053493F    call        00401EA8
 00534944    mov         edx,eax
 00534946    inc         dword ptr [ebp-0CC]
 0053494C    mov         eax,dword ptr [ebp-138]
 00534952    call        00536978
 00534957    lea         edx,[ebp-0B0]
 0053495D    mov         eax,dword ptr [ebp+8]
 00534960    call        0067DCD0
 00534965    dec         dword ptr [ebp-0CC]
 0053496B    lea         eax,[ebp-0B0]
 00534971    mov         edx,2
 00534976    call        0067DCA0
 0053497B    mov         eax,dword ptr [ebp-124]
 00534981    push        eax
 00534982    dec         dword ptr [ebp-0CC]
 00534988    lea         eax,[ebp-54]
 0053498B    mov         edx,2
 00534990    call        0067DCA0
 00534995    dec         dword ptr [ebp-0CC]
 0053499B    lea         eax,[ebp-50]
 0053499E    mov         edx,2
 005349A3    call        0067DCA0
 005349A8    dec         dword ptr [ebp-0CC]
 005349AE    lea         eax,[ebp-4C]
 005349B1    mov         edx,2
 005349B6    call        0067DCA0
 005349BB    dec         dword ptr [ebp-0CC]
 005349C1    lea         eax,[ebp-48]
 005349C4    mov         edx,2
 005349C9    call        0067DCA0
 005349CE    dec         dword ptr [ebp-0CC]
 005349D4    lea         eax,[ebp-44]
 005349D7    mov         edx,2
 005349DC    call        0067DCA0
 005349E1    dec         dword ptr [ebp-0CC]
 005349E7    lea         eax,[ebp-40]
 005349EA    mov         edx,2
 005349EF    call        0067DCA0
 005349F4    dec         dword ptr [ebp-0CC]
 005349FA    lea         eax,[ebp-3C]
 005349FD    mov         edx,2
 00534A02    call        0067DCA0
 00534A07    dec         dword ptr [ebp-0CC]
 00534A0D    lea         eax,[ebp-38]
 00534A10    mov         edx,2
 00534A15    call        0067DCA0
 00534A1A    sub         dword ptr [ebp-0CC],3
 00534A21    lea         eax,[ebp-34]
 00534A24    mov         edx,2
 00534A29    call        0046E124
 00534A2E    dec         dword ptr [ebp-0CC]
 00534A34    lea         eax,[ebp-4]
 00534A37    mov         edx,2
 00534A3C    call        0067DCA0
 00534A41    pop         eax
 00534A42    mov         edx,dword ptr [ebp-0E8]
 00534A48    mov         dword ptr fs:[0],edx
>00534A4F    jmp         00534F23
 00534A54    inc         dword ptr [ebp-108]
 00534A5A    mov         ecx,dword ptr [ebp-108]
 00534A60    mov         eax,dword ptr [ebp-11C]
 00534A66    cmp         ecx,eax
>00534A68    jl          005347B3
 00534A6E    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00534A74    cmp         edx,7DA
>00534A7A    jl          00534E52
 00534A80    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00534A86    mov         eax,dword ptr [ebp-118]
 00534A8C    mov         dl,byte ptr [ecx+eax]
 00534A8F    mov         byte ptr [ebp-0F3],dl
 00534A95    inc         dword ptr [ebp-118]
 00534A9B    xor         ecx,ecx
 00534A9D    mov         dword ptr [ebp-108],ecx
>00534AA3    jmp         00534AB2
 00534AA5    add         dword ptr [ebp-118],4
 00534AAC    inc         dword ptr [ebp-108]
 00534AB2    xor         eax,eax
 00534AB4    mov         al,byte ptr [ebp-0F3]
 00534ABA    mov         edx,dword ptr [ebp-108]
 00534AC0    cmp         eax,edx
>00534AC2    jg          00534AA5
 00534AC4    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00534ACA    mov         eax,dword ptr [ebp-118]
 00534AD0    mov         edx,dword ptr [ecx+eax]
 00534AD3    mov         dword ptr [ebp-11C],edx
 00534AD9    add         dword ptr [ebp-118],4
 00534AE0    xor         ecx,ecx
 00534AE2    mov         dword ptr [ebp-108],ecx
 00534AE8    mov         eax,dword ptr [ebp-108]
 00534AEE    mov         edx,dword ptr [ebp-11C]
 00534AF4    cmp         eax,edx
>00534AF6    jge         00534E52
 00534AFC    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00534B02    mov         eax,dword ptr [ebp-118]
 00534B08    mov         edx,dword ptr [ecx+eax]
 00534B0B    mov         dword ptr [ebp-138],edx
 00534B11    add         dword ptr [ebp-118],4
 00534B18    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00534B1E    mov         eax,dword ptr [ebp-118]
 00534B24    mov         edx,dword ptr [ecx+eax]
 00534B27    mov         dword ptr [ebp-124],edx
 00534B2D    add         dword ptr [ebp-118],4
 00534B34    inc         dword ptr [ebp-118]
 00534B3A    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00534B40    mov         eax,dword ptr [ebp-118]
 00534B46    mov         dl,byte ptr [ecx+eax]
 00534B49    mov         byte ptr [ebp-0F2],dl
 00534B4F    inc         dword ptr [ebp-118]
 00534B55    mov         word ptr [ebp-0D8],158
 00534B5E    xor         ecx,ecx
 00534B60    mov         cl,byte ptr [ebp-0F2]
 00534B66    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00534B6C    mov         eax,dword ptr [ebp-118]
 00534B72    add         edx,eax
 00534B74    lea         eax,[ebp-0B4]
 00534B7A    call        0067DB28
 00534B7F    mov         edx,eax
 00534B81    inc         dword ptr [ebp-0CC]
 00534B87    lea         eax,[ebp-40]
 00534B8A    call        0067DCD0
 00534B8F    dec         dword ptr [ebp-0CC]
 00534B95    lea         eax,[ebp-0B4]
 00534B9B    mov         edx,2
 00534BA0    call        0067DCA0
 00534BA5    xor         ecx,ecx
 00534BA7    mov         cl,byte ptr [ebp-0F2]
 00534BAD    add         dword ptr [ebp-118],ecx
 00534BB3    mov         eax,[006941D4];0x0 gvar_006941D4
 00534BB8    mov         edx,dword ptr [ebp-118]
 00534BBE    mov         cx,word ptr [eax+edx]
 00534BC2    mov         word ptr [ebp-0FE],cx
 00534BC9    movzx       eax,word ptr [ebp-0FE]
 00534BD0    add         dword ptr [ebp-118],eax
 00534BD6    mov         edx,dword ptr [ebp-11C]
 00534BDC    dec         edx
 00534BDD    mov         ecx,dword ptr [ebp-108]
 00534BE3    cmp         edx,ecx
>00534BE5    jne         00534BF1
 00534BE7    xor         eax,eax
 00534BE9    mov         dword ptr [ebp-128],eax
>00534BEF    jmp         00534C07
 00534BF1    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00534BF7    mov         ecx,dword ptr [ebp-118]
 00534BFD    mov         eax,dword ptr [edx+ecx+4]
 00534C01    mov         dword ptr [ebp-128],eax
 00534C07    mov         edx,dword ptr [ebp-0EC]
 00534C0D    mov         ecx,dword ptr [ebp-124]
 00534C13    cmp         edx,ecx
>00534C15    jl          00534E38
 00534C1B    mov         eax,dword ptr [ebp-0EC]
 00534C21    mov         edx,dword ptr [ebp-128]
 00534C27    cmp         eax,edx
>00534C29    jge         00534E38
 00534C2F    mov         word ptr [ebp-0D8],164
 00534C38    mov         edx,6DC713
 00534C3D    lea         eax,[ebp-0B8]
 00534C43    call        0067DAB4
 00534C48    inc         dword ptr [ebp-0CC]
 00534C4E    lea         edx,[ebp-0B8]
 00534C54    lea         eax,[ebp-40]
 00534C57    call        0067DD9C
 00534C5C    push        eax
 00534C5D    dec         dword ptr [ebp-0CC]
 00534C63    lea         eax,[ebp-0B8]
 00534C69    mov         edx,2
 00534C6E    call        0067DCA0
 00534C73    pop         ecx
 00534C74    test        cl,cl
>00534C76    je          00534C8B
 00534C78    lea         edx,[ebp-40]
 00534C7B    mov         eax,dword ptr [ebp-0F0]
 00534C81    call        0067DCD0
>00534C86    jmp         00534D14
 00534C8B    mov         word ptr [ebp-0D8],170
 00534C94    lea         eax,[ebp-0BC]
 00534C9A    call        00401EA8
 00534C9F    mov         edx,eax
 00534CA1    inc         dword ptr [ebp-0CC]
 00534CA7    mov         eax,dword ptr [ebp-124]
 00534CAD    call        0053164C
 00534CB2    lea         edx,[ebp-0BC]
 00534CB8    push        edx
 00534CB9    lea         eax,[ebp-0C0]
 00534CBF    call        00401EA8
 00534CC4    mov         ecx,eax
 00534CC6    inc         dword ptr [ebp-0CC]
 00534CCC    mov         eax,6DC714
 00534CD1    pop         edx
 00534CD2    call        0067E37C
 00534CD7    lea         edx,[ebp-0C0]
 00534CDD    mov         eax,dword ptr [ebp-0F0]
 00534CE3    call        0067DCD0
 00534CE8    dec         dword ptr [ebp-0CC]
 00534CEE    lea         eax,[ebp-0C0]
 00534CF4    mov         edx,2
 00534CF9    call        0067DCA0
 00534CFE    dec         dword ptr [ebp-0CC]
 00534D04    lea         eax,[ebp-0BC]
 00534D0A    mov         edx,2
 00534D0F    call        0067DCA0
 00534D14    mov         word ptr [ebp-0D8],17C
 00534D1D    lea         eax,[ebp-0C4]
 00534D23    call        00401EA8
 00534D28    mov         edx,eax
 00534D2A    inc         dword ptr [ebp-0CC]
 00534D30    mov         eax,dword ptr [ebp-138]
 00534D36    call        00536978
 00534D3B    lea         edx,[ebp-0C4]
 00534D41    mov         eax,dword ptr [ebp+8]
 00534D44    call        0067DCD0
 00534D49    dec         dword ptr [ebp-0CC]
 00534D4F    lea         eax,[ebp-0C4]
 00534D55    mov         edx,2
 00534D5A    call        0067DCA0
 00534D5F    mov         eax,dword ptr [ebp-124]
 00534D65    push        eax
 00534D66    dec         dword ptr [ebp-0CC]
 00534D6C    lea         eax,[ebp-54]
 00534D6F    mov         edx,2
 00534D74    call        0067DCA0
 00534D79    dec         dword ptr [ebp-0CC]
 00534D7F    lea         eax,[ebp-50]
 00534D82    mov         edx,2
 00534D87    call        0067DCA0
 00534D8C    dec         dword ptr [ebp-0CC]
 00534D92    lea         eax,[ebp-4C]
 00534D95    mov         edx,2
 00534D9A    call        0067DCA0
 00534D9F    dec         dword ptr [ebp-0CC]
 00534DA5    lea         eax,[ebp-48]
 00534DA8    mov         edx,2
 00534DAD    call        0067DCA0
 00534DB2    dec         dword ptr [ebp-0CC]
 00534DB8    lea         eax,[ebp-44]
 00534DBB    mov         edx,2
 00534DC0    call        0067DCA0
 00534DC5    dec         dword ptr [ebp-0CC]
 00534DCB    lea         eax,[ebp-40]
 00534DCE    mov         edx,2
 00534DD3    call        0067DCA0
 00534DD8    dec         dword ptr [ebp-0CC]
 00534DDE    lea         eax,[ebp-3C]
 00534DE1    mov         edx,2
 00534DE6    call        0067DCA0
 00534DEB    dec         dword ptr [ebp-0CC]
 00534DF1    lea         eax,[ebp-38]
 00534DF4    mov         edx,2
 00534DF9    call        0067DCA0
 00534DFE    sub         dword ptr [ebp-0CC],3
 00534E05    lea         eax,[ebp-34]
 00534E08    mov         edx,2
 00534E0D    call        0046E124
 00534E12    dec         dword ptr [ebp-0CC]
 00534E18    lea         eax,[ebp-4]
 00534E1B    mov         edx,2
 00534E20    call        0067DCA0
 00534E25    pop         eax
 00534E26    mov         edx,dword ptr [ebp-0E8]
 00534E2C    mov         dword ptr fs:[0],edx
>00534E33    jmp         00534F23
 00534E38    inc         dword ptr [ebp-108]
 00534E3E    mov         ecx,dword ptr [ebp-108]
 00534E44    mov         eax,dword ptr [ebp-11C]
 00534E4A    cmp         ecx,eax
>00534E4C    jl          00534AFC
 00534E52    or          eax,0FFFFFFFF
 00534E55    push        eax
 00534E56    dec         dword ptr [ebp-0CC]
 00534E5C    lea         eax,[ebp-54]
 00534E5F    mov         edx,2
 00534E64    call        0067DCA0
 00534E69    dec         dword ptr [ebp-0CC]
 00534E6F    lea         eax,[ebp-50]
 00534E72    mov         edx,2
 00534E77    call        0067DCA0
 00534E7C    dec         dword ptr [ebp-0CC]
 00534E82    lea         eax,[ebp-4C]
 00534E85    mov         edx,2
 00534E8A    call        0067DCA0
 00534E8F    dec         dword ptr [ebp-0CC]
 00534E95    lea         eax,[ebp-48]
 00534E98    mov         edx,2
 00534E9D    call        0067DCA0
 00534EA2    dec         dword ptr [ebp-0CC]
 00534EA8    lea         eax,[ebp-44]
 00534EAB    mov         edx,2
 00534EB0    call        0067DCA0
 00534EB5    dec         dword ptr [ebp-0CC]
 00534EBB    lea         eax,[ebp-40]
 00534EBE    mov         edx,2
 00534EC3    call        0067DCA0
 00534EC8    dec         dword ptr [ebp-0CC]
 00534ECE    lea         eax,[ebp-3C]
 00534ED1    mov         edx,2
 00534ED6    call        0067DCA0
 00534EDB    dec         dword ptr [ebp-0CC]
 00534EE1    lea         eax,[ebp-38]
 00534EE4    mov         edx,2
 00534EE9    call        0067DCA0
 00534EEE    sub         dword ptr [ebp-0CC],3
 00534EF5    lea         eax,[ebp-34]
 00534EF8    mov         edx,2
 00534EFD    call        0046E124
 00534F02    dec         dword ptr [ebp-0CC]
 00534F08    lea         eax,[ebp-4]
 00534F0B    mov         edx,2
 00534F10    call        0067DCA0
 00534F15    pop         eax
 00534F16    mov         edx,dword ptr [ebp-0E8]
 00534F1C    mov         dword ptr fs:[0],edx
 00534F23    mov         esp,ebp
 00534F25    pop         ebp
 00534F26    ret         4
end;*}

//00534F2C
{*function sub_00534F2C(?:AnsiString; ?:?; ?:AnsiString; ?:?):?;
begin
 00534F2C    push        ebp
 00534F2D    mov         ebp,esp
 00534F2F    add         esp,0FFFFFF90
 00534F32    mov         dword ptr [ebp-60],ecx
 00534F35    mov         dword ptr [ebp-5C],edx
 00534F38    mov         dword ptr [ebp-4],eax
 00534F3B    mov         eax,6DDE50
 00534F40    call        0066FECC
 00534F45    mov         dword ptr [ebp-3C],1
 00534F4C    lea         edx,[ebp-4]
 00534F4F    lea         eax,[ebp-4]
 00534F52    call        0067DAEC
 00534F57    inc         dword ptr [ebp-3C]
 00534F5A    mov         word ptr [ebp-48],8
 00534F60    mov         word ptr [ebp-48],14
 00534F66    lea         eax,[ebp-8]
 00534F69    call        00401EA8
 00534F6E    inc         dword ptr [ebp-3C]
 00534F71    mov         word ptr [ebp-48],8
 00534F77    mov         word ptr [ebp-48],20
 00534F7D    lea         eax,[ebp-0C]
 00534F80    call        00401EA8
 00534F85    inc         dword ptr [ebp-3C]
 00534F88    mov         word ptr [ebp-48],8
 00534F8E    mov         word ptr [ebp-48],2C
 00534F94    lea         edx,[ebp-4]
 00534F97    lea         eax,[ebp-10]
 00534F9A    call        0067DAEC
 00534F9F    inc         dword ptr [ebp-3C]
 00534FA2    mov         word ptr [ebp-48],8
 00534FA8    mov         word ptr [ebp-48],38
 00534FAE    mov         edx,6DC716
 00534FB3    lea         eax,[ebp-14]
 00534FB6    call        0067DAB4
 00534FBB    inc         dword ptr [ebp-3C]
 00534FBE    lea         edx,[ebp-14]
 00534FC1    lea         eax,[ebp-8]
 00534FC4    call        0067DCD0
 00534FC9    dec         dword ptr [ebp-3C]
 00534FCC    lea         eax,[ebp-14]
 00534FCF    mov         edx,2
 00534FD4    call        0067DCA0
 00534FD9    mov         word ptr [ebp-48],44
 00534FDF    mov         edx,6DC717
 00534FE4    lea         eax,[ebp-18]
 00534FE7    call        0067DAB4
 00534FEC    inc         dword ptr [ebp-3C]
 00534FEF    lea         edx,[ebp-18]
 00534FF2    lea         eax,[ebp-0C]
 00534FF5    call        0067DCD0
 00534FFA    dec         dword ptr [ebp-3C]
 00534FFD    lea         eax,[ebp-18]
 00535000    mov         edx,2
 00535005    call        0067DCA0
 0053500A    mov         ecx,dword ptr [ebp-5C]
 0053500D    test        ecx,ecx
>0053500F    jl          0053532C
 00535015    lea         edx,[ebp-64]
 00535018    mov         eax,dword ptr [ebp-10]
 0053501B    call        00537754
 00535020    xor         ecx,ecx
 00535022    mov         cl,al
 00535024    mov         dword ptr [ebp-68],ecx
 00535027    mov         eax,dword ptr [ebp-68]
 0053502A    cmp         eax,23
>0053502D    je          0053504B
 0053502F    mov         edx,dword ptr [ebp-68]
 00535032    cmp         edx,0D
>00535035    je          0053504B
 00535037    mov         ecx,dword ptr [ebp-68]
 0053503A    cmp         ecx,0E
>0053503D    je          0053504B
 0053503F    mov         eax,dword ptr [ebp-68]
 00535042    cmp         eax,11
>00535045    jne         0053532C
 0053504B    mov         edx,dword ptr [ebp-68]
 0053504E    cmp         edx,23
>00535051    jne         00535202
 00535057    mov         ecx,dword ptr [ebp-5C]
 0053505A    test        ecx,ecx
>0053505C    jne         005350B1
 0053505E    xor         eax,eax
 00535060    push        eax
 00535061    dec         dword ptr [ebp-3C]
 00535064    lea         eax,[ebp-10]
 00535067    mov         edx,2
 0053506C    call        0067DCA0
 00535071    dec         dword ptr [ebp-3C]
 00535074    lea         eax,[ebp-0C]
 00535077    mov         edx,2
 0053507C    call        0067DCA0
 00535081    dec         dword ptr [ebp-3C]
 00535084    lea         eax,[ebp-8]
 00535087    mov         edx,2
 0053508C    call        0067DCA0
 00535091    dec         dword ptr [ebp-3C]
 00535094    lea         eax,[ebp-4]
 00535097    mov         edx,2
 0053509C    call        0067DCA0
 005350A1    pop         eax
 005350A2    mov         edx,dword ptr [ebp-58]
 005350A5    mov         dword ptr fs:[0],edx
>005350AC    jmp         0053537B
 005350B1    mov         edx,dword ptr [ebp-5C]
 005350B4    mov         eax,dword ptr [ebp-10]
 005350B7    call        005337C4
 005350BC    mov         dword ptr [ebp-70],eax
 005350BF    mov         word ptr [ebp-48],50
 005350C5    mov         edx,6DC718
 005350CA    lea         eax,[ebp-1C]
 005350CD    call        0067DAB4
 005350D2    inc         dword ptr [ebp-3C]
 005350D5    lea         edx,[ebp-1C]
 005350D8    mov         eax,dword ptr [ebp-60]
 005350DB    call        0067DD9C
 005350E0    push        eax
 005350E1    dec         dword ptr [ebp-3C]
 005350E4    lea         eax,[ebp-1C]
 005350E7    mov         edx,2
 005350EC    call        0067DCA0
 005350F1    pop         ecx
 005350F2    test        cl,cl
>005350F4    je          00535127
 005350F6    mov         word ptr [ebp-48],5C
 005350FC    mov         edx,6DC719
 00535101    lea         eax,[ebp-20]
 00535104    call        0067DAB4
 00535109    inc         dword ptr [ebp-3C]
 0053510C    lea         edx,[ebp-20]
 0053510F    mov         eax,dword ptr [ebp-60]
 00535112    call        0067DCE4
 00535117    dec         dword ptr [ebp-3C]
 0053511A    lea         eax,[ebp-20]
 0053511D    mov         edx,2
 00535122    call        0067DCA0
 00535127    mov         word ptr [ebp-48],68
 0053512D    mov         edx,6DC71B
 00535132    lea         eax,[ebp-24]
 00535135    call        0067DAB4
 0053513A    inc         dword ptr [ebp-3C]
 0053513D    lea         edx,[ebp-24]
 00535140    mov         eax,dword ptr [ebp-70]
 00535143    add         eax,9
 00535146    call        0067DD9C
 0053514B    push        eax
 0053514C    dec         dword ptr [ebp-3C]
 0053514F    lea         eax,[ebp-24]
 00535152    mov         edx,2
 00535157    call        0067DCA0
 0053515C    pop         ecx
 0053515D    test        cl,cl
>0053515F    je          00535171
 00535161    mov         edx,dword ptr [ebp-70]
 00535164    add         edx,9
 00535167    mov         eax,dword ptr [ebp-60]
 0053516A    call        0067DCE4
>0053516F    jmp         005351D8
 00535171    mov         word ptr [ebp-48],74
 00535177    lea         eax,[ebp-28]
 0053517A    call        00401EA8
 0053517F    mov         ecx,eax
 00535181    inc         dword ptr [ebp-3C]
 00535184    xor         edx,edx
 00535186    mov         eax,dword ptr [ebp-70]
 00535189    mov         eax,dword ptr [eax+1]
 0053518C    call        00657C04
 00535191    lea         edx,[ebp-28]
 00535194    push        edx
 00535195    lea         eax,[ebp-2C]
 00535198    call        00401EA8
 0053519D    mov         ecx,eax
 0053519F    inc         dword ptr [ebp-3C]
 005351A2    mov         eax,6DC71C
 005351A7    pop         edx
 005351A8    call        0067E37C
 005351AD    lea         edx,[ebp-2C]
 005351B0    mov         eax,dword ptr [ebp-60]
 005351B3    call        0067DCE4
 005351B8    dec         dword ptr [ebp-3C]
 005351BB    lea         eax,[ebp-2C]
 005351BE    mov         edx,2
 005351C3    call        0067DCA0
 005351C8    dec         dword ptr [ebp-3C]
 005351CB    lea         eax,[ebp-28]
 005351CE    mov         edx,2
 005351D3    call        0067DCA0
 005351D8    mov         edx,dword ptr [ebp-70]
 005351DB    add         edx,0D
 005351DE    mov         eax,dword ptr [ebp+8]
 005351E1    call        0067DCD0
 005351E6    mov         edx,dword ptr [ebp-70]
 005351E9    add         edx,0D
 005351EC    lea         eax,[ebp-10]
 005351EF    call        0067DCD0
 005351F4    mov         ecx,dword ptr [ebp-70]
 005351F7    mov         eax,dword ptr [ecx+1]
 005351FA    sub         dword ptr [ebp-5C],eax
>005351FD    jmp         0053500A
 00535202    mov         edx,dword ptr [ebp-68]
 00535205    cmp         edx,0E
>00535208    jne         00535311
 0053520E    lea         ecx,[ebp-0C]
 00535211    push        ecx
 00535212    lea         ecx,[ebp-8]
 00535215    mov         edx,dword ptr [ebp-5C]
 00535218    mov         eax,dword ptr [ebp-10]
 0053521B    call        0053394C
 00535220    mov         dword ptr [ebp-6C],eax
 00535223    mov         eax,dword ptr [ebp-6C]
 00535226    inc         eax
>00535227    jne         0053527D
 00535229    or          eax,0FFFFFFFF
 0053522C    push        eax
 0053522D    dec         dword ptr [ebp-3C]
 00535230    lea         eax,[ebp-10]
 00535233    mov         edx,2
 00535238    call        0067DCA0
 0053523D    dec         dword ptr [ebp-3C]
 00535240    lea         eax,[ebp-0C]
 00535243    mov         edx,2
 00535248    call        0067DCA0
 0053524D    dec         dword ptr [ebp-3C]
 00535250    lea         eax,[ebp-8]
 00535253    mov         edx,2
 00535258    call        0067DCA0
 0053525D    dec         dword ptr [ebp-3C]
 00535260    lea         eax,[ebp-4]
 00535263    mov         edx,2
 00535268    call        0067DCA0
 0053526D    pop         eax
 0053526E    mov         edx,dword ptr [ebp-58]
 00535271    mov         dword ptr fs:[0],edx
>00535278    jmp         0053537B
 0053527D    mov         word ptr [ebp-48],80
 00535283    mov         edx,6DC71E
 00535288    lea         eax,[ebp-30]
 0053528B    call        0067DAB4
 00535290    inc         dword ptr [ebp-3C]
 00535293    lea         edx,[ebp-30]
 00535296    mov         eax,dword ptr [ebp-60]
 00535299    call        0067DD9C
 0053529E    push        eax
 0053529F    dec         dword ptr [ebp-3C]
 005352A2    lea         eax,[ebp-30]
 005352A5    mov         edx,2
 005352AA    call        0067DCA0
 005352AF    pop         ecx
 005352B0    test        cl,cl
>005352B2    je          005352E5
 005352B4    mov         word ptr [ebp-48],8C
 005352BA    mov         edx,6DC71F
 005352BF    lea         eax,[ebp-34]
 005352C2    call        0067DAB4
 005352C7    inc         dword ptr [ebp-3C]
 005352CA    lea         edx,[ebp-34]
 005352CD    mov         eax,dword ptr [ebp-60]
 005352D0    call        0067DCE4
 005352D5    dec         dword ptr [ebp-3C]
 005352D8    lea         eax,[ebp-34]
 005352DB    mov         edx,2
 005352E0    call        0067DCA0
 005352E5    lea         edx,[ebp-8]
 005352E8    mov         eax,dword ptr [ebp-60]
 005352EB    call        0067DCE4
 005352F0    lea         edx,[ebp-0C]
 005352F3    mov         eax,dword ptr [ebp+8]
 005352F6    call        0067DCD0
 005352FB    lea         edx,[ebp-0C]
 005352FE    lea         eax,[ebp-10]
 00535301    call        0067DCD0
 00535306    mov         ecx,dword ptr [ebp-6C]
 00535309    sub         dword ptr [ebp-5C],ecx
>0053530C    jmp         0053500A
 00535311    mov         eax,dword ptr [ebp-68]
 00535314    cmp         eax,0D
>00535317    je          0053532C
 00535319    mov         edx,dword ptr [ebp-68]
 0053531C    cmp         edx,11
>0053531F    je          0053532C
 00535321    mov         ecx,dword ptr [ebp-5C]
 00535324    test        ecx,ecx
>00535326    jge         00535015
 0053532C    mov         eax,dword ptr [ebp-5C]
 0053532F    push        eax
 00535330    dec         dword ptr [ebp-3C]
 00535333    lea         eax,[ebp-10]
 00535336    mov         edx,2
 0053533B    call        0067DCA0
 00535340    dec         dword ptr [ebp-3C]
 00535343    lea         eax,[ebp-0C]
 00535346    mov         edx,2
 0053534B    call        0067DCA0
 00535350    dec         dword ptr [ebp-3C]
 00535353    lea         eax,[ebp-8]
 00535356    mov         edx,2
 0053535B    call        0067DCA0
 00535360    dec         dword ptr [ebp-3C]
 00535363    lea         eax,[ebp-4]
 00535366    mov         edx,2
 0053536B    call        0067DCA0
 00535370    pop         eax
 00535371    mov         edx,dword ptr [ebp-58]
 00535374    mov         dword ptr fs:[0],edx
 0053537B    mov         esp,ebp
 0053537D    pop         ebp
 0053537E    ret         4
end;*}

//00535384
{*procedure sub_00535384(?:?; ?:AnsiString; ?:?);
begin
 00535384    push        ebp
 00535385    mov         ebp,esp
 00535387    add         esp,0FFFFFFB4
 0053538A    mov         dword ptr [ebp-18],ecx
 0053538D    mov         dword ptr [ebp-4],edx
 00535390    mov         dword ptr [ebp-4C],eax
 00535393    mov         eax,6DDFB0
 00535398    call        0066FECC
 0053539D    mov         dword ptr [ebp-2C],1
 005353A4    lea         edx,[ebp-4]
 005353A7    lea         eax,[ebp-4]
 005353AA    call        0067DAEC
 005353AF    inc         dword ptr [ebp-2C]
 005353B2    mov         word ptr [ebp-38],8
 005353B8    mov         word ptr [ebp-38],14
 005353BE    lea         eax,[ebp-8]
 005353C1    call        00401EA8
 005353C6    inc         dword ptr [ebp-2C]
 005353C9    mov         word ptr [ebp-38],8
 005353CF    mov         word ptr [ebp-38],20
 005353D5    lea         eax,[ebp-0C]
 005353D8    call        00401EA8
 005353DD    inc         dword ptr [ebp-2C]
 005353E0    mov         word ptr [ebp-38],8
 005353E6    mov         word ptr [ebp-38],2C
 005353EC    mov         edx,6DC721
 005353F1    lea         eax,[ebp-10]
 005353F4    call        0067DAB4
 005353F9    inc         dword ptr [ebp-2C]
 005353FC    lea         edx,[ebp-10]
 005353FF    lea         eax,[ebp-4]
 00535402    call        0067DD84
 00535407    test        al,al
>00535409    jne         00535425
 0053540B    lea         edx,[ebp-0C]
 0053540E    push        edx
 0053540F    lea         ecx,[ebp-8]
 00535412    mov         edx,dword ptr [ebp-4C]
 00535415    mov         eax,dword ptr [ebp-4]
 00535418    call        00534F2C
 0053541D    test        eax,eax
>0053541F    jl          00535425
 00535421    xor         ecx,ecx
>00535423    jmp         0053542A
 00535425    mov         ecx,1
 0053542A    push        ecx
 0053542B    dec         dword ptr [ebp-2C]
 0053542E    lea         eax,[ebp-10]
 00535431    mov         edx,2
 00535436    call        0067DCA0
 0053543B    pop         ecx
 0053543C    test        cl,cl
>0053543E    je          005354C8
 00535444    mov         word ptr [ebp-38],38
 0053544A    mov         edx,6DC722
 0053544F    lea         eax,[ebp-14]
 00535452    call        0067DAB4
 00535457    inc         dword ptr [ebp-2C]
 0053545A    lea         edx,[ebp-14]
 0053545D    mov         eax,dword ptr [ebp-18]
 00535460    call        0067DCD0
 00535465    mov         eax,dword ptr [ebp-18]
 00535468    mov         word ptr [ebp-38],44
 0053546E    push        eax
 0053546F    dec         dword ptr [ebp-2C]
 00535472    lea         eax,[ebp-14]
 00535475    mov         edx,2
 0053547A    call        0067DCA0
 0053547F    dec         dword ptr [ebp-2C]
 00535482    lea         eax,[ebp-0C]
 00535485    mov         edx,2
 0053548A    call        0067DCA0
 0053548F    dec         dword ptr [ebp-2C]
 00535492    lea         eax,[ebp-8]
 00535495    mov         edx,2
 0053549A    call        0067DCA0
 0053549F    dec         dword ptr [ebp-2C]
 005354A2    lea         eax,[ebp-4]
 005354A5    mov         edx,2
 005354AA    call        0067DCA0
 005354AF    pop         eax
 005354B0    mov         word ptr [ebp-38],38
 005354B6    inc         dword ptr [ebp-2C]
 005354B9    mov         edx,dword ptr [ebp-48]
 005354BC    mov         dword ptr fs:[0],edx
>005354C3    jmp         00535599
 005354C8    mov         word ptr [ebp-38],50
 005354CE    lea         eax,[ebp-20]
 005354D1    call        00401EA8
 005354D6    push        eax
 005354D7    inc         dword ptr [ebp-2C]
 005354DA    mov         edx,6DC723
 005354DF    lea         eax,[ebp-1C]
 005354E2    call        0067DAB4
 005354E7    inc         dword ptr [ebp-2C]
 005354EA    lea         edx,[ebp-1C]
 005354ED    lea         eax,[ebp-8]
 005354F0    pop         ecx
 005354F1    call        0067DCF8
 005354F6    lea         edx,[ebp-20]
 005354F9    push        edx
 005354FA    lea         eax,[ebp-24]
 005354FD    call        00401EA8
 00535502    mov         ecx,eax
 00535504    inc         dword ptr [ebp-2C]
 00535507    lea         edx,[ebp-0C]
 0053550A    pop         eax
 0053550B    call        0067DCF8
 00535510    lea         edx,[ebp-24]
 00535513    mov         eax,dword ptr [ebp-18]
 00535516    call        0067DCD0
 0053551B    mov         eax,dword ptr [ebp-18]
 0053551E    mov         word ptr [ebp-38],5C
 00535524    push        eax
 00535525    dec         dword ptr [ebp-2C]
 00535528    lea         eax,[ebp-24]
 0053552B    mov         edx,2
 00535530    call        0067DCA0
 00535535    dec         dword ptr [ebp-2C]
 00535538    lea         eax,[ebp-20]
 0053553B    mov         edx,2
 00535540    call        0067DCA0
 00535545    dec         dword ptr [ebp-2C]
 00535548    lea         eax,[ebp-1C]
 0053554B    mov         edx,2
 00535550    call        0067DCA0
 00535555    dec         dword ptr [ebp-2C]
 00535558    lea         eax,[ebp-0C]
 0053555B    mov         edx,2
 00535560    call        0067DCA0
 00535565    dec         dword ptr [ebp-2C]
 00535568    lea         eax,[ebp-8]
 0053556B    mov         edx,2
 00535570    call        0067DCA0
 00535575    dec         dword ptr [ebp-2C]
 00535578    lea         eax,[ebp-4]
 0053557B    mov         edx,2
 00535580    call        0067DCA0
 00535585    pop         eax
 00535586    mov         word ptr [ebp-38],50
 0053558C    inc         dword ptr [ebp-2C]
 0053558F    mov         edx,dword ptr [ebp-48]
 00535592    mov         dword ptr fs:[0],edx
 00535599    mov         esp,ebp
 0053559B    pop         ebp
 0053559C    ret
end;*}

//005355A0
{*procedure sub_005355A0(?:?; ?:?);
begin
 005355A0    push        ebp
 005355A1    mov         ebp,esp
 005355A3    add         esp,0FFFFFFB0
 005355A6    mov         dword ptr [ebp-14],edx
 005355A9    mov         dword ptr [ebp-50],eax
 005355AC    mov         eax,6DE144
 005355B1    call        0066FECC
 005355B6    mov         edx,dword ptr [ebp-50]
 005355B9    test        edx,edx
>005355BB    jl          005355C5
 005355BD    mov         ecx,dword ptr [ebp-50]
 005355C0    cmp         ecx,20
>005355C3    jl          005355DC
 005355C5    push        404
 005355CA    push        6DC73A
 005355CF    push        6DC725
 005355D4    call        00678AD8
 005355D9    add         esp,0C
 005355DC    mov         eax,dword ptr [ebp-50]
 005355DF    cmp         eax,1F
>005355E2    jl          005356B0
 005355E8    mov         word ptr [ebp-3C],8
 005355EE    lea         eax,[ebp-8]
 005355F1    call        00401EA8
 005355F6    push        eax
 005355F7    inc         dword ptr [ebp-30]
 005355FA    mov         edx,dword ptr [ebp-50]
 005355FD    add         edx,0FFFFFFE1
 00535600    lea         eax,[ebp-4]
 00535603    call        0067DC18
 00535608    mov         edx,eax
 0053560A    inc         dword ptr [ebp-30]
 0053560D    mov         eax,6DC74F
 00535612    pop         ecx
 00535613    call        0067E37C
 00535618    lea         edx,[ebp-8]
 0053561B    push        edx
 0053561C    lea         eax,[ebp-10]
 0053561F    call        00401EA8
 00535624    push        eax
 00535625    inc         dword ptr [ebp-30]
 00535628    mov         edx,6DC753
 0053562D    lea         eax,[ebp-0C]
 00535630    call        0067DAB4
 00535635    inc         dword ptr [ebp-30]
 00535638    lea         edx,[ebp-0C]
 0053563B    pop         ecx
 0053563C    pop         eax
 0053563D    call        0067DCF8
 00535642    lea         edx,[ebp-10]
 00535645    mov         eax,dword ptr [ebp-14]
 00535648    call        0067DCD0
 0053564D    mov         eax,dword ptr [ebp-14]
 00535650    mov         word ptr [ebp-3C],14
 00535656    push        eax
 00535657    dec         dword ptr [ebp-30]
 0053565A    lea         eax,[ebp-10]
 0053565D    mov         edx,2
 00535662    call        0067DCA0
 00535667    dec         dword ptr [ebp-30]
 0053566A    lea         eax,[ebp-0C]
 0053566D    mov         edx,2
 00535672    call        0067DCA0
 00535677    dec         dword ptr [ebp-30]
 0053567A    lea         eax,[ebp-8]
 0053567D    mov         edx,2
 00535682    call        0067DCA0
 00535687    dec         dword ptr [ebp-30]
 0053568A    lea         eax,[ebp-4]
 0053568D    mov         edx,2
 00535692    call        0067DCA0
 00535697    pop         eax
 00535698    mov         word ptr [ebp-3C],8
 0053569E    inc         dword ptr [ebp-30]
 005356A1    mov         edx,dword ptr [ebp-4C]
 005356A4    mov         dword ptr fs:[0],edx
>005356AB    jmp         0053587C
 005356B0    mov         ecx,dword ptr [ebp-50]
 005356B3    cmp         ecx,1E
>005356B6    jne         0053570C
 005356B8    mov         word ptr [ebp-3C],20
 005356BE    mov         edx,6DC755
 005356C3    lea         eax,[ebp-18]
 005356C6    call        0067DAB4
 005356CB    inc         dword ptr [ebp-30]
 005356CE    lea         edx,[ebp-18]
 005356D1    mov         eax,dword ptr [ebp-14]
 005356D4    call        0067DCD0
 005356D9    mov         eax,dword ptr [ebp-14]
 005356DC    mov         word ptr [ebp-3C],2C
 005356E2    push        eax
 005356E3    dec         dword ptr [ebp-30]
 005356E6    lea         eax,[ebp-18]
 005356E9    mov         edx,2
 005356EE    call        0067DCA0
 005356F3    pop         eax
 005356F4    mov         word ptr [ebp-3C],20
 005356FA    inc         dword ptr [ebp-30]
 005356FD    mov         edx,dword ptr [ebp-4C]
 00535700    mov         dword ptr fs:[0],edx
>00535707    jmp         0053587C
 0053570C    mov         ecx,dword ptr [ebp-50]
 0053570F    cmp         ecx,18
>00535712    jl          0053576C
 00535714    mov         word ptr [ebp-3C],38
 0053571A    mov         eax,dword ptr [ebp-50]
 0053571D    mov         edx,dword ptr [eax*4+6B2580]
 00535724    lea         eax,[ebp-1C]
 00535727    call        0067DAB4
 0053572C    mov         edx,eax
 0053572E    inc         dword ptr [ebp-30]
 00535731    mov         eax,dword ptr [ebp-14]
 00535734    call        0067DCD0
 00535739    mov         eax,dword ptr [ebp-14]
 0053573C    mov         word ptr [ebp-3C],44
 00535742    push        eax
 00535743    dec         dword ptr [ebp-30]
 00535746    lea         eax,[ebp-1C]
 00535749    mov         edx,2
 0053574E    call        0067DCA0
 00535753    pop         eax
 00535754    mov         word ptr [ebp-3C],38
 0053575A    inc         dword ptr [ebp-30]
 0053575D    mov         edx,dword ptr [ebp-4C]
 00535760    mov         dword ptr fs:[0],edx
>00535767    jmp         0053587C
 0053576C    mov         ecx,dword ptr [ebp-50]
 0053576F    cmp         ecx,10
>00535772    jl          005357CC
 00535774    mov         word ptr [ebp-3C],50
 0053577A    mov         eax,dword ptr [ebp-50]
 0053577D    mov         edx,dword ptr [eax*4+6B2580]
 00535784    lea         eax,[ebp-20]
 00535787    call        0067DAB4
 0053578C    mov         edx,eax
 0053578E    inc         dword ptr [ebp-30]
 00535791    mov         eax,dword ptr [ebp-14]
 00535794    call        0067DCD0
 00535799    mov         eax,dword ptr [ebp-14]
 0053579C    mov         word ptr [ebp-3C],5C
 005357A2    push        eax
 005357A3    dec         dword ptr [ebp-30]
 005357A6    lea         eax,[ebp-20]
 005357A9    mov         edx,2
 005357AE    call        0067DCA0
 005357B3    pop         eax
 005357B4    mov         word ptr [ebp-3C],50
 005357BA    inc         dword ptr [ebp-30]
 005357BD    mov         edx,dword ptr [ebp-4C]
 005357C0    mov         dword ptr fs:[0],edx
>005357C7    jmp         0053587C
 005357CC    mov         ecx,dword ptr [ebp-50]
 005357CF    cmp         ecx,8
>005357D2    jl          00535829
 005357D4    mov         word ptr [ebp-3C],68
 005357DA    mov         eax,dword ptr [ebp-50]
 005357DD    mov         edx,dword ptr [eax*4+6B2580]
 005357E4    lea         eax,[ebp-24]
 005357E7    call        0067DAB4
 005357EC    mov         edx,eax
 005357EE    inc         dword ptr [ebp-30]
 005357F1    mov         eax,dword ptr [ebp-14]
 005357F4    call        0067DCD0
 005357F9    mov         eax,dword ptr [ebp-14]
 005357FC    mov         word ptr [ebp-3C],74
 00535802    push        eax
 00535803    dec         dword ptr [ebp-30]
 00535806    lea         eax,[ebp-24]
 00535809    mov         edx,2
 0053580E    call        0067DCA0
 00535813    pop         eax
 00535814    mov         word ptr [ebp-3C],68
 0053581A    inc         dword ptr [ebp-30]
 0053581D    mov         edx,dword ptr [ebp-4C]
 00535820    mov         dword ptr fs:[0],edx
>00535827    jmp         0053587C
 00535829    mov         word ptr [ebp-3C],80
 0053582F    mov         ecx,dword ptr [ebp-50]
 00535832    mov         edx,dword ptr [ecx*4+6B2580]
 00535839    lea         eax,[ebp-28]
 0053583C    call        0067DAB4
 00535841    mov         edx,eax
 00535843    inc         dword ptr [ebp-30]
 00535846    mov         eax,dword ptr [ebp-14]
 00535849    call        0067DCD0
 0053584E    mov         eax,dword ptr [ebp-14]
 00535851    mov         word ptr [ebp-3C],8C
 00535857    push        eax
 00535858    dec         dword ptr [ebp-30]
 0053585B    lea         eax,[ebp-28]
 0053585E    mov         edx,2
 00535863    call        0067DCA0
 00535868    pop         eax
 00535869    mov         word ptr [ebp-3C],80
 0053586F    inc         dword ptr [ebp-30]
 00535872    mov         edx,dword ptr [ebp-4C]
 00535875    mov         dword ptr fs:[0],edx
 0053587C    mov         esp,ebp
 0053587E    pop         ebp
 0053587F    ret
end;*}

//00535880
{*procedure sub_00535880(?:?; ?:?);
begin
 00535880    push        ebp
 00535881    mov         ebp,esp
 00535883    add         esp,0FFFFFFBC
 00535886    mov         dword ptr [ebp-0C],edx
 00535889    mov         dword ptr [ebp-44],eax
 0053588C    mov         eax,6DE284
 00535891    call        0066FECC
 00535896    mov         edx,dword ptr [ebp-44]
 00535899    test        edx,edx
>0053589B    jl          005358A5
 0053589D    mov         ecx,dword ptr [ebp-44]
 005358A0    cmp         ecx,20
>005358A3    jl          005358BC
 005358A5    push        40F
 005358AA    push        6DC76D
 005358AF    push        6DC758
 005358B4    call        00678AD8
 005358B9    add         esp,0C
 005358BC    mov         eax,dword ptr [ebp-44]
 005358BF    cmp         eax,10
>005358C2    jl          00535941
 005358C4    mov         word ptr [ebp-30],8
 005358CA    lea         eax,[ebp-8]
 005358CD    call        00401EA8
 005358D2    push        eax
 005358D3    inc         dword ptr [ebp-24]
 005358D6    mov         edx,dword ptr [ebp-44]
 005358D9    mov         edx,dword ptr [edx*4+6B2580]
 005358E0    lea         eax,[ebp-4]
 005358E3    call        0067DAB4
 005358E8    inc         dword ptr [ebp-24]
 005358EB    mov         eax,dword ptr [eax]
 005358ED    pop         edx
 005358EE    call        00657508
 005358F3    lea         edx,[ebp-8]
 005358F6    mov         eax,dword ptr [ebp-0C]
 005358F9    call        0067DCD0
 005358FE    mov         eax,dword ptr [ebp-0C]
 00535901    mov         word ptr [ebp-30],14
 00535907    push        eax
 00535908    dec         dword ptr [ebp-24]
 0053590B    lea         eax,[ebp-8]
 0053590E    mov         edx,2
 00535913    call        0067DCA0
 00535918    dec         dword ptr [ebp-24]
 0053591B    lea         eax,[ebp-4]
 0053591E    mov         edx,2
 00535923    call        0067DCA0
 00535928    pop         eax
 00535929    mov         word ptr [ebp-30],8
 0053592F    inc         dword ptr [ebp-24]
 00535932    mov         edx,dword ptr [ebp-40]
 00535935    mov         dword ptr fs:[0],edx
>0053593C    jmp         00535A3B
 00535941    mov         ecx,dword ptr [ebp-44]
 00535944    cmp         ecx,8
>00535947    jl          005359C3
 00535949    mov         word ptr [ebp-30],20
 0053594F    lea         eax,[ebp-14]
 00535952    call        00401EA8
 00535957    push        eax
 00535958    inc         dword ptr [ebp-24]
 0053595B    mov         edx,dword ptr [ebp-44]
 0053595E    mov         edx,dword ptr [edx*4+6B25A0]
 00535965    lea         eax,[ebp-10]
 00535968    call        0067DAB4
 0053596D    inc         dword ptr [ebp-24]
 00535970    mov         eax,dword ptr [eax]
 00535972    pop         edx
 00535973    call        00657508
 00535978    lea         edx,[ebp-14]
 0053597B    mov         eax,dword ptr [ebp-0C]
 0053597E    call        0067DCD0
 00535983    mov         eax,dword ptr [ebp-0C]
 00535986    mov         word ptr [ebp-30],2C
 0053598C    push        eax
 0053598D    dec         dword ptr [ebp-24]
 00535990    lea         eax,[ebp-14]
 00535993    mov         edx,2
 00535998    call        0067DCA0
 0053599D    dec         dword ptr [ebp-24]
 005359A0    lea         eax,[ebp-10]
 005359A3    mov         edx,2
 005359A8    call        0067DCA0
 005359AD    pop         eax
 005359AE    mov         word ptr [ebp-30],20
 005359B4    inc         dword ptr [ebp-24]
 005359B7    mov         edx,dword ptr [ebp-40]
 005359BA    mov         dword ptr fs:[0],edx
>005359C1    jmp         00535A3B
 005359C3    mov         word ptr [ebp-30],38
 005359C9    lea         eax,[ebp-1C]
 005359CC    call        00401EA8
 005359D1    push        eax
 005359D2    inc         dword ptr [ebp-24]
 005359D5    mov         edx,dword ptr [ebp-44]
 005359D8    mov         edx,dword ptr [edx*4+6B25C0]
 005359DF    lea         eax,[ebp-18]
 005359E2    call        0067DAB4
 005359E7    inc         dword ptr [ebp-24]
 005359EA    mov         eax,dword ptr [eax]
 005359EC    pop         edx
 005359ED    call        00657508
 005359F2    lea         edx,[ebp-1C]
 005359F5    mov         eax,dword ptr [ebp-0C]
 005359F8    call        0067DCD0
 005359FD    mov         eax,dword ptr [ebp-0C]
 00535A00    mov         word ptr [ebp-30],44
 00535A06    push        eax
 00535A07    dec         dword ptr [ebp-24]
 00535A0A    lea         eax,[ebp-1C]
 00535A0D    mov         edx,2
 00535A12    call        0067DCA0
 00535A17    dec         dword ptr [ebp-24]
 00535A1A    lea         eax,[ebp-18]
 00535A1D    mov         edx,2
 00535A22    call        0067DCA0
 00535A27    pop         eax
 00535A28    mov         word ptr [ebp-30],38
 00535A2E    inc         dword ptr [ebp-24]
 00535A31    mov         edx,dword ptr [ebp-40]
 00535A34    mov         dword ptr fs:[0],edx
 00535A3B    mov         esp,ebp
 00535A3D    pop         ebp
 00535A3E    ret
end;*}

//00535A40
{*function sub_00535A40(?:?; ?:?):?;
begin
 00535A40    push        ebp
 00535A41    mov         ebp,esp
 00535A43    add         esp,0FFFFFFF0
 00535A46    mov         dword ptr [ebp-8],edx
 00535A49    mov         dword ptr [ebp-4],eax
 00535A4C    mov         eax,dword ptr [ebp-4]
 00535A4F    test        eax,eax
>00535A51    jne         00535A57
 00535A53    xor         eax,eax
>00535A55    jmp         00535A9B
 00535A57    mov         edx,dword ptr [ebp-8]
 00535A5A    mov         dword ptr [ebp-0C],edx
>00535A5D    jmp         00535A8A
 00535A5F    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00535A65    mov         eax,dword ptr [ebp-0C]
 00535A68    mov         dl,byte ptr [ecx+eax]
 00535A6B    mov         byte ptr [ebp-0D],dl
 00535A6E    mov         cl,byte ptr [ebp-0D]
 00535A71    cmp         cl,20
>00535A74    jb          00535A83
 00535A76    mov         al,byte ptr [ebp-0D]
 00535A79    cmp         al,3A
>00535A7B    je          00535A83
 00535A7D    test        byte ptr [ebp-0D],80
>00535A81    je          00535A87
 00535A83    xor         eax,eax
>00535A85    jmp         00535A9B
 00535A87    inc         dword ptr [ebp-0C]
 00535A8A    mov         edx,dword ptr [ebp-8]
 00535A8D    mov         ecx,dword ptr [ebp-4]
 00535A90    add         edx,ecx
 00535A92    mov         eax,dword ptr [ebp-0C]
 00535A95    cmp         edx,eax
>00535A97    jg          00535A5F
 00535A99    mov         al,1
 00535A9B    mov         esp,ebp
 00535A9D    pop         ebp
 00535A9E    ret
end;*}

//00535AA0
{*function sub_00535AA0(?:?; ?:?):?;
begin
 00535AA0    push        ebp
 00535AA1    mov         ebp,esp
 00535AA3    add         esp,0FFFFFFF0
 00535AA6    mov         dword ptr [ebp-8],edx
 00535AA9    mov         dword ptr [ebp-4],eax
 00535AAC    mov         eax,dword ptr [ebp-4]
 00535AAF    test        eax,eax
>00535AB1    jne         00535AB7
 00535AB3    xor         eax,eax
>00535AB5    jmp         00535B21
 00535AB7    mov         edx,dword ptr [ebp-8]
 00535ABA    mov         dword ptr [ebp-0C],edx
>00535ABD    jmp         00535B10
 00535ABF    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00535AC5    mov         eax,dword ptr [ebp-0C]
 00535AC8    mov         dl,byte ptr [ecx+eax]
 00535ACB    mov         byte ptr [ebp-0D],dl
 00535ACE    mov         ecx,dword ptr [ebp-0C]
 00535AD1    mov         eax,dword ptr [ebp-8]
 00535AD4    cmp         ecx,eax
>00535AD6    jne         00535B03
 00535AD8    mov         dl,byte ptr [ebp-0D]
 00535ADB    cmp         dl,41
>00535ADE    jb          00535AE8
 00535AE0    mov         cl,byte ptr [ebp-0D]
 00535AE3    cmp         cl,7A
>00535AE6    jbe         00535B0D
 00535AE8    mov         al,byte ptr [ebp-0D]
 00535AEB    cmp         al,2E
>00535AED    je          00535B0D
 00535AEF    mov         dl,byte ptr [ebp-0D]
 00535AF2    cmp         dl,5F
>00535AF5    je          00535B0D
 00535AF7    mov         cl,byte ptr [ebp-0D]
 00535AFA    cmp         cl,3A
>00535AFD    je          00535B0D
 00535AFF    xor         eax,eax
>00535B01    jmp         00535B21
 00535B03    test        byte ptr [ebp-0D],80
>00535B07    je          00535B0D
 00535B09    xor         eax,eax
>00535B0B    jmp         00535B21
 00535B0D    inc         dword ptr [ebp-0C]
 00535B10    mov         edx,dword ptr [ebp-8]
 00535B13    mov         ecx,dword ptr [ebp-4]
 00535B16    add         edx,ecx
 00535B18    mov         eax,dword ptr [ebp-0C]
 00535B1B    cmp         edx,eax
>00535B1D    jg          00535ABF
 00535B1F    mov         al,1
 00535B21    mov         esp,ebp
 00535B23    pop         ebp
 00535B24    ret
end;*}

//00535B28
{*function sub_00535B28(?:?):?;
begin
 00535B28    push        ebp
 00535B29    mov         ebp,esp
 00535B2B    add         esp,0FFFFFFF0
 00535B2E    mov         dword ptr [ebp-4],eax
 00535B31    mov         eax,dword ptr [ebp-4]
 00535B34    call        00531EE8
 00535B39    test        al,al
>00535B3B    jne         00535B41
 00535B3D    xor         eax,eax
>00535B3F    jmp         00535BB6
 00535B41    mov         edx,dword ptr [ebp-4]
 00535B44    mov         ecx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 00535B4A    sub         edx,ecx
 00535B4C    mov         dword ptr [ebp-8],edx
 00535B4F    mov         eax,dword ptr [ebp-8]
 00535B52    call        005312C8
 00535B57    mov         edx,dword ptr ds:[694224];0x0 gvar_00694224
 00535B5D    add         eax,edx
 00535B5F    mov         dword ptr [ebp-0C],eax
 00535B62    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00535B68    mov         eax,dword ptr [ebp-0C]
 00535B6B    mov         edx,dword ptr [ecx+eax]
 00535B6E    mov         dword ptr [ebp-10],edx
 00535B71    mov         eax,dword ptr [ebp-10]
 00535B74    call        00531EE8
 00535B79    test        al,al
>00535B7B    je          00535B99
 00535B7D    mov         eax,dword ptr [ebp-10]
 00535B80    call        005312C8
 00535B85    mov         edx,eax
 00535B87    mov         eax,4
 00535B8C    call        00532B74
 00535B91    test        al,al
>00535B93    je          00535B99
 00535B95    xor         eax,eax
>00535B97    jmp         00535BB6
 00535B99    mov         edx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00535B9F    cmp         edx,2
>00535BA2    jne         00535BB3
 00535BA4    mov         ecx,dword ptr [ebp-10]
 00535BA7    test        ecx,ecx
>00535BA9    je          00535BB3
 00535BAB    mov         eax,[006941FC];0x0 gvar_006941FC
 00535BB0    add         dword ptr [ebp-10],eax
 00535BB3    mov         eax,dword ptr [ebp-10]
 00535BB6    mov         esp,ebp
 00535BB8    pop         ebp
 00535BB9    ret
end;*}

//00535BBC
{*function sub_00535BBC(?:?):?;
begin
 00535BBC    push        ebp
 00535BBD    mov         ebp,esp
 00535BBF    add         esp,0FFFFFFF4
 00535BC2    mov         dword ptr [ebp-4],eax
 00535BC5    mov         eax,dword ptr [ebp-4]
 00535BC8    call        00531EE8
 00535BCD    test        al,al
>00535BCF    jne         00535BD5
 00535BD1    xor         eax,eax
>00535BD3    jmp         00535C28
 00535BD5    xor         edx,edx
 00535BD7    mov         dword ptr [ebp-8],edx
>00535BDA    jmp         00535C16
 00535BDC    mov         edx,dword ptr [ebp-8]
 00535BDF    mov         eax,[006ECB6C];0x0 gvar_006ECB6C
 00535BE4    call        TList.Get
 00535BE9    mov         dword ptr [ebp-0C],eax
 00535BEC    mov         ecx,dword ptr [ebp-0C]
 00535BEF    mov         eax,dword ptr [ecx+4]
 00535BF2    mov         edx,dword ptr [ebp-4]
 00535BF5    cmp         eax,edx
>00535BF7    je          00535C13
 00535BF9    mov         edx,dword ptr [ebp-4]
 00535BFC    mov         eax,dword ptr [ebp-0C]
 00535BFF    mov         eax,dword ptr [eax+4]
 00535C02    call        00536200
 00535C07    test        al,al
>00535C09    je          00535C13
 00535C0B    mov         edx,dword ptr [ebp-0C]
 00535C0E    mov         eax,dword ptr [edx+4]
>00535C11    jmp         00535C28
 00535C13    inc         dword ptr [ebp-8]
 00535C16    mov         edx,dword ptr ds:[6ECB6C];0x0 gvar_006ECB6C
 00535C1C    mov         ecx,dword ptr [edx+8]
 00535C1F    mov         eax,dword ptr [ebp-8]
 00535C22    cmp         ecx,eax
>00535C24    jg          00535BDC
 00535C26    xor         eax,eax
 00535C28    mov         esp,ebp
 00535C2A    pop         ebp
 00535C2B    ret
end;*}

//00535C2C
{*function sub_00535C2C(?:?):?;
begin
 00535C2C    push        ebp
 00535C2D    mov         ebp,esp
 00535C2F    add         esp,0FFFFFFF0
 00535C32    mov         dword ptr [ebp-4],eax
 00535C35    mov         eax,dword ptr [ebp-4]
 00535C38    call        00531EE8
 00535C3D    test        al,al
>00535C3F    jne         00535C45
 00535C41    xor         eax,eax
>00535C43    jmp         00535C8E
 00535C45    mov         edx,dword ptr [ebp-4]
 00535C48    mov         ecx,dword ptr ds:[6941FC];0x0 gvar_006941FC
 00535C4E    sub         edx,ecx
 00535C50    mov         dword ptr [ebp-8],edx
 00535C53    mov         eax,dword ptr [ebp-8]
 00535C56    call        005312C8
 00535C5B    mov         edx,dword ptr ds:[694220];0x0 gvar_00694220
 00535C61    add         eax,edx
 00535C63    mov         dword ptr [ebp-0C],eax
 00535C66    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00535C6C    mov         eax,dword ptr [ebp-0C]
 00535C6F    mov         edx,dword ptr [ecx+eax]
 00535C72    mov         dword ptr [ebp-10],edx
 00535C75    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 00535C7B    cmp         ecx,7D9
>00535C81    jl          00535C8B
 00535C83    mov         eax,dword ptr [ebp-10]
 00535C86    add         eax,0FFFFFFFC
>00535C89    jmp         00535C8E
 00535C8B    mov         eax,dword ptr [ebp-10]
 00535C8E    mov         esp,ebp
 00535C90    pop         ebp
 00535C91    ret
end;*}

//00535C94
{*procedure sub_00535C94(?:dword; ?:?);
begin
 00535C94    push        ebp
 00535C95    mov         ebp,esp
 00535C97    add         esp,0FFFFFFB0
 00535C9A    mov         dword ptr [ebp-8],edx
 00535C9D    mov         dword ptr [ebp-3C],eax
 00535CA0    mov         eax,6DE384
 00535CA5    call        0066FECC
 00535CAA    mov         eax,dword ptr [ebp-3C]
 00535CAD    call        00531EE8
 00535CB2    test        al,al
>00535CB4    jne         00535D0A
 00535CB6    mov         word ptr [ebp-28],8
 00535CBC    mov         edx,6DC782
 00535CC1    lea         eax,[ebp-4]
 00535CC4    call        0067DAB4
 00535CC9    inc         dword ptr [ebp-1C]
 00535CCC    lea         edx,[ebp-4]
 00535CCF    mov         eax,dword ptr [ebp-8]
 00535CD2    call        0067DCD0
 00535CD7    mov         eax,dword ptr [ebp-8]
 00535CDA    mov         word ptr [ebp-28],14
 00535CE0    push        eax
 00535CE1    dec         dword ptr [ebp-1C]
 00535CE4    lea         eax,[ebp-4]
 00535CE7    mov         edx,2
 00535CEC    call        0067DCA0
 00535CF1    pop         eax
 00535CF2    mov         word ptr [ebp-28],8
 00535CF8    inc         dword ptr [ebp-1C]
 00535CFB    mov         edx,dword ptr [ebp-38]
 00535CFE    mov         dword ptr fs:[0],edx
>00535D05    jmp         00535E89
 00535D0A    mov         ecx,dword ptr [ebp-3C]
 00535D0D    mov         eax,[006941FC];0x0 gvar_006941FC
 00535D12    sub         ecx,eax
 00535D14    mov         dword ptr [ebp-40],ecx
 00535D17    mov         eax,dword ptr [ebp-40]
 00535D1A    call        005312C8
 00535D1F    mov         edx,dword ptr ds:[69421C];0x0 gvar_0069421C
 00535D25    add         eax,edx
 00535D27    mov         dword ptr [ebp-44],eax
 00535D2A    mov         edx,dword ptr [ebp-44]
 00535D2D    mov         eax,4
 00535D32    call        00532B74
 00535D37    test        al,al
>00535D39    je          00535DA7
 00535D3B    mov         eax,dword ptr [ebp-40]
 00535D3E    mov         edx,dword ptr ds:[69421C];0x0 gvar_0069421C
 00535D44    add         eax,edx
 00535D46    call        0053A308
 00535D4B    mov         dword ptr [ebp-48],eax
 00535D4E    mov         word ptr [ebp-28],20
 00535D54    lea         eax,[ebp-0C]
 00535D57    call        00401EA8
 00535D5C    mov         edx,eax
 00535D5E    inc         dword ptr [ebp-1C]
 00535D61    mov         eax,dword ptr [ebp-48]
 00535D64    call        0048591C
 00535D69    lea         edx,[ebp-0C]
 00535D6C    mov         eax,dword ptr [ebp-8]
 00535D6F    call        0067DCD0
 00535D74    mov         eax,dword ptr [ebp-8]
 00535D77    mov         word ptr [ebp-28],2C
 00535D7D    push        eax
 00535D7E    dec         dword ptr [ebp-1C]
 00535D81    lea         eax,[ebp-0C]
 00535D84    mov         edx,2
 00535D89    call        0067DCA0
 00535D8E    pop         eax
 00535D8F    mov         word ptr [ebp-28],20
 00535D95    inc         dword ptr [ebp-1C]
 00535D98    mov         edx,dword ptr [ebp-38]
 00535D9B    mov         dword ptr fs:[0],edx
>00535DA2    jmp         00535E89
 00535DA7    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00535DAD    mov         eax,dword ptr [ebp-44]
 00535DB0    mov         edx,dword ptr [ecx+eax]
 00535DB3    mov         dword ptr [ebp-4C],edx
 00535DB6    mov         eax,dword ptr [ebp-4C]
 00535DB9    call        00531EE8
 00535DBE    test        al,al
>00535DC0    jne         00535E13
 00535DC2    mov         word ptr [ebp-28],38
 00535DC8    mov         edx,6DC783
 00535DCD    lea         eax,[ebp-10]
 00535DD0    call        0067DAB4
 00535DD5    inc         dword ptr [ebp-1C]
 00535DD8    lea         edx,[ebp-10]
 00535DDB    mov         eax,dword ptr [ebp-8]
 00535DDE    call        0067DCD0
 00535DE3    mov         eax,dword ptr [ebp-8]
 00535DE6    mov         word ptr [ebp-28],44
 00535DEC    push        eax
 00535DED    dec         dword ptr [ebp-1C]
 00535DF0    lea         eax,[ebp-10]
 00535DF3    mov         edx,2
 00535DF8    call        0067DCA0
 00535DFD    pop         eax
 00535DFE    mov         word ptr [ebp-28],38
 00535E04    inc         dword ptr [ebp-1C]
 00535E07    mov         edx,dword ptr [ebp-38]
 00535E0A    mov         dword ptr fs:[0],edx
>00535E11    jmp         00535E89
 00535E13    mov         eax,dword ptr [ebp-4C]
 00535E16    call        005312C8
 00535E1B    mov         dword ptr [ebp-44],eax
 00535E1E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00535E24    mov         ecx,dword ptr [ebp-44]
 00535E27    mov         al,byte ptr [edx+ecx]
 00535E2A    mov         byte ptr [ebp-4D],al
 00535E2D    inc         dword ptr [ebp-44]
 00535E30    mov         word ptr [ebp-28],50
 00535E36    xor         ecx,ecx
 00535E38    mov         cl,byte ptr [ebp-4D]
 00535E3B    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00535E41    mov         eax,dword ptr [ebp-44]
 00535E44    add         edx,eax
 00535E46    lea         eax,[ebp-14]
 00535E49    call        0067DB28
 00535E4E    mov         edx,eax
 00535E50    inc         dword ptr [ebp-1C]
 00535E53    mov         eax,dword ptr [ebp-8]
 00535E56    call        0067DCD0
 00535E5B    mov         eax,dword ptr [ebp-8]
 00535E5E    mov         word ptr [ebp-28],5C
 00535E64    push        eax
 00535E65    dec         dword ptr [ebp-1C]
 00535E68    lea         eax,[ebp-14]
 00535E6B    mov         edx,2
 00535E70    call        0067DCA0
 00535E75    pop         eax
 00535E76    mov         word ptr [ebp-28],50
 00535E7C    inc         dword ptr [ebp-1C]
 00535E7F    mov         edx,dword ptr [ebp-38]
 00535E82    mov         dword ptr fs:[0],edx
 00535E89    mov         esp,ebp
 00535E8B    pop         ebp
 00535E8C    ret
end;*}

//00535E90
{*function sub_00535E90(?:AnsiString):?;
begin
 00535E90    push        ebp
 00535E91    mov         ebp,esp
 00535E93    add         esp,0FFFFFFB8
 00535E96    mov         dword ptr [ebp-34],eax
 00535E99    mov         eax,6DE42C
 00535E9E    call        0066FECC
 00535EA3    mov         word ptr [ebp-20],8
 00535EA9    lea         eax,[ebp-4]
 00535EAC    call        00401EA8
 00535EB1    inc         dword ptr [ebp-14]
 00535EB4    mov         word ptr [ebp-20],14
 00535EBA    mov         eax,dword ptr [ebp-34]
 00535EBD    call        0040A248
 00535EC2    test        al,al
>00535EC4    je          00535EE9
 00535EC6    xor         eax,eax
 00535EC8    push        eax
 00535EC9    dec         dword ptr [ebp-14]
 00535ECC    lea         eax,[ebp-4]
 00535ECF    mov         edx,2
 00535ED4    call        0067DCA0
 00535ED9    pop         eax
 00535EDA    mov         edx,dword ptr [ebp-30]
 00535EDD    mov         dword ptr fs:[0],edx
>00535EE4    jmp         0053609A
 00535EE9    mov         eax,dword ptr [ebp-34]
 00535EEC    call        00411B70
 00535EF1    mov         dword ptr [ebp-38],eax
 00535EF4    mov         edx,dword ptr [ebp-38]
 00535EF7    test        edx,edx
>00535EF9    je          00535F1F
 00535EFB    mov         eax,dword ptr [ebp-38]
 00535EFE    push        eax
 00535EFF    dec         dword ptr [ebp-14]
 00535F02    lea         eax,[ebp-4]
 00535F05    mov         edx,2
 00535F0A    call        0067DCA0
 00535F0F    pop         eax
 00535F10    mov         edx,dword ptr [ebp-30]
 00535F13    mov         dword ptr fs:[0],edx
>00535F1A    jmp         0053609A
 00535F1F    mov         word ptr [ebp-20],20
 00535F25    mov         edx,6DC784
 00535F2A    lea         eax,[ebp-8]
 00535F2D    call        0067DAB4
 00535F32    inc         dword ptr [ebp-14]
 00535F35    lea         edx,[ebp-8]
 00535F38    mov         eax,dword ptr [ebp-34]
 00535F3B    call        0067DEF4
 00535F40    mov         dword ptr [ebp-3C],eax
 00535F43    dec         dword ptr [ebp-14]
 00535F46    lea         eax,[ebp-8]
 00535F49    mov         edx,2
 00535F4E    call        0067DCA0
 00535F53    mov         word ptr [ebp-20],14
 00535F59    mov         ecx,dword ptr [ebp-3C]
 00535F5C    test        ecx,ecx
>00535F5E    je          00535FE6
 00535F64    mov         eax,dword ptr [ebp-3C]
 00535F67    dec         eax
>00535F68    je          00535F7E
 00535F6A    mov         edx,dword ptr [ebp-3C]
 00535F6D    inc         edx
 00535F6E    mov         eax,dword ptr [ebp-34]
 00535F71    call        00531EBC
 00535F76    movsx       edx,al
 00535F79    cmp         edx,2E
>00535F7C    jne         00535FA1
 00535F7E    xor         eax,eax
 00535F80    push        eax
 00535F81    dec         dword ptr [ebp-14]
 00535F84    lea         eax,[ebp-4]
 00535F87    mov         edx,2
 00535F8C    call        0067DCA0
 00535F91    pop         eax
 00535F92    mov         edx,dword ptr [ebp-30]
 00535F95    mov         dword ptr fs:[0],edx
>00535F9C    jmp         0053609A
 00535FA1    mov         word ptr [ebp-20],2C
 00535FA7    lea         eax,[ebp-0C]
 00535FAA    call        00401EA8
 00535FAF    push        eax
 00535FB0    inc         dword ptr [ebp-14]
 00535FB3    mov         eax,dword ptr [ebp-34]
 00535FB6    call        00405290
 00535FBB    mov         ecx,eax
 00535FBD    mov         edx,dword ptr [ebp-3C]
 00535FC0    inc         edx
 00535FC1    mov         eax,dword ptr [ebp-34]
 00535FC4    call        0067E0BC
 00535FC9    lea         edx,[ebp-0C]
 00535FCC    lea         eax,[ebp-4]
 00535FCF    call        0067DCD0
 00535FD4    dec         dword ptr [ebp-14]
 00535FD7    lea         eax,[ebp-0C]
 00535FDA    mov         edx,2
 00535FDF    call        0067DCA0
>00535FE4    jmp         00535FF1
 00535FE6    lea         eax,[ebp-4]
 00535FE9    mov         edx,dword ptr [ebp-34]
 00535FEC    call        0067DCD0
 00535FF1    mov         ecx,dword ptr ds:[6ECB6C];0x0 gvar_006ECB6C
 00535FF7    mov         eax,dword ptr [ecx+8]
 00535FFA    mov         dword ptr [ebp-40],eax
 00535FFD    mov         word ptr [ebp-20],14
 00536003    xor         edx,edx
 00536005    mov         dword ptr [ebp-44],edx
 00536008    mov         ecx,dword ptr [ebp-44]
 0053600B    mov         eax,dword ptr [ebp-40]
 0053600E    cmp         ecx,eax
>00536010    jge         0053607C
 00536012    mov         edx,dword ptr [ebp-44]
 00536015    mov         eax,[006ECB6C];0x0 gvar_006ECB6C
 0053601A    call        TList.Get
 0053601F    mov         dword ptr [ebp-48],eax
 00536022    mov         word ptr [ebp-20],14
 00536028    mov         edx,dword ptr [ebp-4]
 0053602B    mov         ecx,dword ptr [ebp-48]
 0053602E    mov         eax,dword ptr [ecx+8]
 00536031    call        SameText
 00536036    test        al,al
>00536038    je          0053606F
 0053603A    mov         edx,dword ptr [ebp-48]
 0053603D    mov         ecx,dword ptr [edx+4]
 00536040    mov         dword ptr [ebp-38],ecx
 00536043    lea         edx,[ebp-4]
 00536046    mov         eax,dword ptr [ebp-38]
 00536049    call        00411C60
 0053604E    mov         eax,dword ptr [ebp-38]
 00536051    push        eax
 00536052    dec         dword ptr [ebp-14]
 00536055    lea         eax,[ebp-4]
 00536058    mov         edx,2
 0053605D    call        0067DCA0
 00536062    pop         eax
 00536063    mov         edx,dword ptr [ebp-30]
 00536066    mov         dword ptr fs:[0],edx
>0053606D    jmp         0053609A
 0053606F    inc         dword ptr [ebp-44]
 00536072    mov         ecx,dword ptr [ebp-44]
 00536075    mov         eax,dword ptr [ebp-40]
 00536078    cmp         ecx,eax
>0053607A    jl          00536012
 0053607C    xor         eax,eax
 0053607E    push        eax
 0053607F    dec         dword ptr [ebp-14]
 00536082    lea         eax,[ebp-4]
 00536085    mov         edx,2
 0053608A    call        0067DCA0
 0053608F    pop         eax
 00536090    mov         edx,dword ptr [ebp-30]
 00536093    mov         dword ptr fs:[0],edx
 0053609A    mov         esp,ebp
 0053609C    pop         ebp
 0053609D    ret
end;*}

//005360A0
{*function sub_005360A0(?:?):?;
begin
 005360A0    push        ebp
 005360A1    mov         ebp,esp
 005360A3    push        ecx
 005360A4    mov         dword ptr [ebp-4],eax
 005360A7    mov         eax,dword ptr [ebp-4]
 005360AA    call        00535B28
 005360AF    call        00535C2C
 005360B4    pop         ecx
 005360B5    pop         ebp
 005360B6    ret
end;*}

//005360B8
{*procedure sub_005360B8(?:?; ?:?);
begin
 005360B8    push        ebp
 005360B9    mov         ebp,esp
 005360BB    add         esp,0FFFFFFC8
 005360BE    mov         dword ptr [ebp-8],edx
 005360C1    mov         dword ptr [ebp-34],eax
 005360C4    mov         eax,6DE4BC
 005360C9    call        0066FECC
 005360CE    mov         eax,dword ptr [ebp-34]
 005360D1    call        00535B28
 005360D6    mov         dword ptr [ebp-38],eax
 005360D9    mov         edx,dword ptr [ebp-38]
 005360DC    test        edx,edx
>005360DE    jne         00536131
 005360E0    mov         word ptr [ebp-20],8
 005360E6    mov         edx,6DC786
 005360EB    lea         eax,[ebp-4]
 005360EE    call        0067DAB4
 005360F3    inc         dword ptr [ebp-14]
 005360F6    lea         edx,[ebp-4]
 005360F9    mov         eax,dword ptr [ebp-8]
 005360FC    call        0067DCD0
 00536101    mov         eax,dword ptr [ebp-8]
 00536104    mov         word ptr [ebp-20],14
 0053610A    push        eax
 0053610B    dec         dword ptr [ebp-14]
 0053610E    lea         eax,[ebp-4]
 00536111    mov         edx,2
 00536116    call        0067DCA0
 0053611B    pop         eax
 0053611C    mov         word ptr [ebp-20],8
 00536122    inc         dword ptr [ebp-14]
 00536125    mov         edx,dword ptr [ebp-30]
 00536128    mov         dword ptr fs:[0],edx
>0053612F    jmp         00536185
 00536131    mov         word ptr [ebp-20],20
 00536137    lea         eax,[ebp-0C]
 0053613A    call        00401EA8
 0053613F    mov         edx,eax
 00536141    inc         dword ptr [ebp-14]
 00536144    mov         eax,dword ptr [ebp-38]
 00536147    call        00535C94
 0053614C    lea         edx,[ebp-0C]
 0053614F    mov         eax,dword ptr [ebp-8]
 00536152    call        0067DCD0
 00536157    mov         eax,dword ptr [ebp-8]
 0053615A    mov         word ptr [ebp-20],2C
 00536160    push        eax
 00536161    dec         dword ptr [ebp-14]
 00536164    lea         eax,[ebp-0C]
 00536167    mov         edx,2
 0053616C    call        0067DCA0
 00536171    pop         eax
 00536172    mov         word ptr [ebp-20],20
 00536178    inc         dword ptr [ebp-14]
 0053617B    mov         edx,dword ptr [ebp-30]
 0053617E    mov         dword ptr fs:[0],edx
 00536185    mov         esp,ebp
 00536187    pop         ebp
 00536188    ret
end;*}

//0053618C
{*procedure sub_0053618C(?:AnsiString; ?:?);
begin
 0053618C    push        ebp
 0053618D    mov         ebp,esp
 0053618F    add         esp,0FFFFFFD0
 00536192    mov         dword ptr [ebp-8],edx
 00536195    mov         dword ptr [ebp-30],eax
 00536198    mov         eax,6DE520
 0053619D    call        0066FECC
 005361A2    mov         word ptr [ebp-1C],8
 005361A8    lea         eax,[ebp-4]
 005361AB    call        00401EA8
 005361B0    push        eax
 005361B1    inc         dword ptr [ebp-10]
 005361B4    mov         eax,dword ptr [ebp-30]
 005361B7    call        00535E90
 005361BC    pop         edx
 005361BD    call        005360B8
 005361C2    lea         edx,[ebp-4]
 005361C5    mov         eax,dword ptr [ebp-8]
 005361C8    call        0067DCD0
 005361CD    mov         eax,dword ptr [ebp-8]
 005361D0    mov         word ptr [ebp-1C],14
 005361D6    push        eax
 005361D7    dec         dword ptr [ebp-10]
 005361DA    lea         eax,[ebp-4]
 005361DD    mov         edx,2
 005361E2    call        0067DCA0
 005361E7    pop         eax
 005361E8    mov         word ptr [ebp-1C],8
 005361EE    inc         dword ptr [ebp-10]
 005361F1    mov         edx,dword ptr [ebp-2C]
 005361F4    mov         dword ptr fs:[0],edx
 005361FB    mov         esp,ebp
 005361FD    pop         ebp
 005361FE    ret
end;*}

//00536200
{*function sub_00536200(?:?; ?:?):?;
begin
 00536200    push        ebp
 00536201    mov         ebp,esp
 00536203    add         esp,0FFFFFFF4
 00536206    mov         dword ptr [ebp-8],edx
 00536209    mov         dword ptr [ebp-4],eax
 0053620C    mov         eax,dword ptr [ebp-4]
 0053620F    mov         dword ptr [ebp-0C],eax
 00536212    mov         edx,dword ptr [ebp-0C]
 00536215    test        edx,edx
>00536217    je          00536239
 00536219    mov         ecx,dword ptr [ebp-0C]
 0053621C    mov         eax,dword ptr [ebp-8]
 0053621F    cmp         ecx,eax
>00536221    jne         00536227
 00536223    mov         al,1
>00536225    jmp         0053623B
 00536227    mov         eax,dword ptr [ebp-0C]
 0053622A    call        00535B28
 0053622F    mov         dword ptr [ebp-0C],eax
 00536232    mov         edx,dword ptr [ebp-0C]
 00536235    test        edx,edx
>00536237    jne         00536219
 00536239    xor         eax,eax
 0053623B    mov         esp,ebp
 0053623D    pop         ebp
 0053623E    ret
end;*}

//00536240
{*function sub_00536240(?:AnsiString; ?:AnsiString):?;
begin
 00536240    push        ebp
 00536241    mov         ebp,esp
 00536243    add         esp,0FFFFFFC8
 00536246    mov         dword ptr [ebp-34],edx
 00536249    mov         dword ptr [ebp-30],eax
 0053624C    mov         eax,6DE55C
 00536251    call        0066FECC
 00536256    mov         eax,dword ptr [ebp-30]
 00536259    call        00535E90
 0053625E    mov         dword ptr [ebp-38],eax
 00536261    mov         edx,dword ptr [ebp-38]
 00536264    test        edx,edx
>00536266    je          005362E4
 00536268    mov         word ptr [ebp-1C],8
 0053626E    lea         eax,[ebp-4]
 00536271    call        00401EA8
 00536276    mov         edx,eax
 00536278    inc         dword ptr [ebp-10]
 0053627B    mov         eax,dword ptr [ebp-38]
 0053627E    call        00535C94
 00536283    lea         edx,[ebp-4]
 00536286    push        dword ptr [edx]
 00536288    lea         eax,[ebp-8]
 0053628B    mov         edx,dword ptr [ebp-34]
 0053628E    call        0067DAEC
 00536293    inc         dword ptr [ebp-10]
 00536296    mov         edx,dword ptr [eax]
 00536298    pop         eax
 00536299    call        SameText
 0053629E    push        eax
 0053629F    dec         dword ptr [ebp-10]
 005362A2    lea         eax,[ebp-8]
 005362A5    mov         edx,2
 005362AA    call        0067DCA0
 005362AF    dec         dword ptr [ebp-10]
 005362B2    lea         eax,[ebp-4]
 005362B5    mov         edx,2
 005362BA    call        0067DCA0
 005362BF    pop         ecx
 005362C0    test        cl,cl
>005362C2    je          005362D2
 005362C4    mov         al,1
 005362C6    mov         edx,dword ptr [ebp-2C]
 005362C9    mov         dword ptr fs:[0],edx
>005362D0    jmp         005362F0
 005362D2    mov         eax,dword ptr [ebp-38]
 005362D5    call        00535B28
 005362DA    mov         dword ptr [ebp-38],eax
 005362DD    mov         edx,dword ptr [ebp-38]
 005362E0    test        edx,edx
>005362E2    jne         00536268
 005362E4    xor         eax,eax
 005362E6    mov         edx,dword ptr [ebp-2C]
 005362E9    mov         dword ptr fs:[0],edx
 005362F0    mov         esp,ebp
 005362F2    pop         ebp
 005362F3    ret
end;*}

//005362F4
{*procedure sub_005362F4(?:?; ?:?);
begin
 005362F4    push        ebp
 005362F5    mov         ebp,esp
 005362F7    add         esp,0FFFFFFC4
 005362FA    mov         dword ptr [ebp-3C],edx
 005362FD    mov         dword ptr [ebp-38],eax
 00536300    mov         eax,6DE5A4
 00536305    call        0066FECC
 0053630A    lea         eax,[ebp-8]
 0053630D    call        00401EA8
 00536312    mov         edx,eax
 00536314    inc         dword ptr [ebp-18]
 00536317    mov         eax,dword ptr [ebp-3C]
 0053631A    call        00531F50
 0053631F    lea         edx,[ebp-8]
 00536322    push        edx
 00536323    mov         word ptr [ebp-24],8
 00536329    lea         eax,[ebp-4]
 0053632C    call        00401EA8
 00536331    mov         edx,eax
 00536333    inc         dword ptr [ebp-18]
 00536336    mov         eax,dword ptr [ebp-38]
 00536339    call        00531F50
 0053633E    lea         eax,[ebp-4]
 00536341    pop         edx
 00536342    call        00536240
 00536347    test        al,al
>00536349    je          005363B3
 0053634B    lea         eax,[ebp-10]
 0053634E    call        00401EA8
 00536353    mov         edx,eax
 00536355    inc         dword ptr [ebp-18]
 00536358    mov         eax,dword ptr [ebp-3C]
 0053635B    call        005320E4
 00536360    lea         edx,[ebp-10]
 00536363    push        dword ptr [edx]
 00536365    lea         eax,[ebp-0C]
 00536368    call        00401EA8
 0053636D    mov         edx,eax
 0053636F    inc         dword ptr [ebp-18]
 00536372    mov         eax,dword ptr [ebp-38]
 00536375    call        005320E4
 0053637A    lea         eax,[ebp-0C]
 0053637D    mov         eax,dword ptr [eax]
 0053637F    pop         edx
 00536380    call        SameText
 00536385    test        al,al
 00536387    setne       cl
 0053638A    and         ecx,1
 0053638D    push        ecx
 0053638E    dec         dword ptr [ebp-18]
 00536391    lea         eax,[ebp-10]
 00536394    mov         edx,2
 00536399    call        0067DCA0
 0053639E    dec         dword ptr [ebp-18]
 005363A1    lea         eax,[ebp-0C]
 005363A4    mov         edx,2
 005363A9    call        0067DCA0
 005363AE    pop         ecx
 005363AF    test        ecx,ecx
>005363B1    jne         005363B7
 005363B3    xor         eax,eax
>005363B5    jmp         005363BC
 005363B7    mov         eax,1
 005363BC    push        eax
 005363BD    dec         dword ptr [ebp-18]
 005363C0    lea         eax,[ebp-8]
 005363C3    mov         edx,2
 005363C8    call        0067DCA0
 005363CD    dec         dword ptr [ebp-18]
 005363D0    lea         eax,[ebp-4]
 005363D3    mov         edx,2
 005363D8    call        0067DCA0
 005363DD    pop         eax
 005363DE    mov         edx,dword ptr [ebp-34]
 005363E1    mov         dword ptr fs:[0],edx
 005363E8    mov         esp,ebp
 005363EA    pop         ebp
 005363EB    ret
end;*}

//005363EC
{*procedure sub_005363EC(?:?; ?:?; ?:?);
begin
 005363EC    push        ebp
 005363ED    mov         ebp,esp
 005363EF    add         esp,0FFFFFF94
 005363F2    mov         dword ptr [ebp-34],ecx
 005363F5    mov         dword ptr [ebp-60],edx
 005363F8    mov         dword ptr [ebp-5C],eax
 005363FB    mov         eax,6DE6A4
 00536400    call        0066FECC
 00536405    mov         byte ptr [ebp-61],1
 00536409    mov         edx,dword ptr [ebp-5C]
 0053640C    mov         dword ptr [ebp-68],edx
 0053640F    mov         word ptr [ebp-48],14
 00536415    mov         edx,6DC787
 0053641A    lea         eax,[ebp-4]
 0053641D    call        0067DAB4
 00536422    inc         dword ptr [ebp-3C]
 00536425    mov         word ptr [ebp-48],8
 0053642B    xor         ecx,ecx
 0053642D    mov         dword ptr [ebp-6C],ecx
 00536430    mov         eax,dword ptr [ebp-6C]
 00536433    mov         edx,dword ptr [ebp-60]
 00536436    cmp         eax,edx
>00536438    jge         005366A3
 0053643E    mov         ecx,dword ptr [ebp-68]
 00536441    mov         al,byte ptr [ecx]
 00536443    mov         byte ptr [ebp-62],al
 00536446    inc         dword ptr [ebp-68]
 00536449    test        byte ptr [ebp-62],80
>0053644D    jne         00536531
 00536453    mov         dl,byte ptr [ebp-62]
 00536456    cmp         dl,0D
>00536459    ja          00536531
 0053645F    mov         cl,byte ptr [ebp-61]
 00536462    test        cl,cl
>00536464    je          005364A0
 00536466    mov         eax,dword ptr [ebp-6C]
 00536469    test        eax,eax
>0053646B    je          005364D1
 0053646D    mov         word ptr [ebp-48],20
 00536473    mov         edx,6DC788
 00536478    lea         eax,[ebp-8]
 0053647B    call        0067DAB4
 00536480    inc         dword ptr [ebp-3C]
 00536483    lea         edx,[ebp-8]
 00536486    lea         eax,[ebp-4]
 00536489    call        0067DCE4
 0053648E    dec         dword ptr [ebp-3C]
 00536491    lea         eax,[ebp-8]
 00536494    mov         edx,2
 00536499    call        0067DCA0
>0053649E    jmp         005364D1
 005364A0    mov         word ptr [ebp-48],2C
 005364A6    mov         edx,6DC78B
 005364AB    lea         eax,[ebp-0C]
 005364AE    call        0067DAB4
 005364B3    inc         dword ptr [ebp-3C]
 005364B6    lea         edx,[ebp-0C]
 005364B9    lea         eax,[ebp-4]
 005364BC    call        0067DCE4
 005364C1    dec         dword ptr [ebp-3C]
 005364C4    lea         eax,[ebp-0C]
 005364C7    mov         edx,2
 005364CC    call        0067DCA0
 005364D1    mov         word ptr [ebp-48],38
 005364D7    lea         eax,[ebp-14]
 005364DA    call        00401EA8
 005364DF    push        eax
 005364E0    inc         dword ptr [ebp-3C]
 005364E3    xor         edx,edx
 005364E5    mov         dl,byte ptr [ebp-62]
 005364E8    lea         eax,[ebp-10]
 005364EB    call        0067DC18
 005364F0    mov         edx,eax
 005364F2    inc         dword ptr [ebp-3C]
 005364F5    mov         eax,6DC78D
 005364FA    pop         ecx
 005364FB    call        0067E37C
 00536500    lea         edx,[ebp-14]
 00536503    lea         eax,[ebp-4]
 00536506    call        0067DCE4
 0053650B    dec         dword ptr [ebp-3C]
 0053650E    lea         eax,[ebp-14]
 00536511    mov         edx,2
 00536516    call        0067DCA0
 0053651B    dec         dword ptr [ebp-3C]
 0053651E    lea         eax,[ebp-10]
 00536521    mov         edx,2
 00536526    call        0067DCA0
 0053652B    mov         byte ptr [ebp-61],0
>0053652F    jmp         005365A7
 00536531    mov         cl,byte ptr [ebp-61]
 00536534    test        cl,cl
>00536536    je          00536572
 00536538    mov         eax,dword ptr [ebp-6C]
 0053653B    test        eax,eax
>0053653D    jne         005365A3
 0053653F    mov         word ptr [ebp-48],44
 00536545    mov         edx,6DC78F
 0053654A    lea         eax,[ebp-18]
 0053654D    call        0067DAB4
 00536552    inc         dword ptr [ebp-3C]
 00536555    lea         edx,[ebp-18]
 00536558    lea         eax,[ebp-4]
 0053655B    call        0067DCE4
 00536560    dec         dword ptr [ebp-3C]
 00536563    lea         eax,[ebp-18]
 00536566    mov         edx,2
 0053656B    call        0067DCA0
>00536570    jmp         005365A3
 00536572    mov         word ptr [ebp-48],50
 00536578    mov         edx,6DC791
 0053657D    lea         eax,[ebp-1C]
 00536580    call        0067DAB4
 00536585    inc         dword ptr [ebp-3C]
 00536588    lea         edx,[ebp-1C]
 0053658B    lea         eax,[ebp-4]
 0053658E    call        0067DCE4
 00536593    dec         dword ptr [ebp-3C]
 00536596    lea         eax,[ebp-1C]
 00536599    mov         edx,2
 0053659E    call        0067DCA0
 005365A3    mov         byte ptr [ebp-61],1
 005365A7    mov         cl,byte ptr [ebp-62]
 005365AA    cmp         cl,22
>005365AD    jne         005365E5
 005365AF    mov         word ptr [ebp-48],5C
 005365B5    mov         edx,6DC793
 005365BA    lea         eax,[ebp-20]
 005365BD    call        0067DAB4
 005365C2    inc         dword ptr [ebp-3C]
 005365C5    lea         edx,[ebp-20]
 005365C8    lea         eax,[ebp-4]
 005365CB    call        0067DCE4
 005365D0    dec         dword ptr [ebp-3C]
 005365D3    lea         eax,[ebp-20]
 005365D6    mov         edx,2
 005365DB    call        0067DCA0
>005365E0    jmp         00536692
 005365E5    mov         cl,byte ptr [ebp-62]
 005365E8    cmp         cl,27
>005365EB    jne         00536620
 005365ED    mov         word ptr [ebp-48],68
 005365F3    mov         edx,6DC795
 005365F8    lea         eax,[ebp-24]
 005365FB    call        0067DAB4
 00536600    inc         dword ptr [ebp-3C]
 00536603    lea         edx,[ebp-24]
 00536606    lea         eax,[ebp-4]
 00536609    call        0067DCE4
 0053660E    dec         dword ptr [ebp-3C]
 00536611    lea         eax,[ebp-24]
 00536614    mov         edx,2
 00536619    call        0067DCA0
>0053661E    jmp         00536692
 00536620    mov         cl,byte ptr [ebp-62]
 00536623    cmp         cl,5C
>00536626    jne         0053665B
 00536628    mov         word ptr [ebp-48],74
 0053662E    mov         edx,6DC797
 00536633    lea         eax,[ebp-28]
 00536636    call        0067DAB4
 0053663B    inc         dword ptr [ebp-3C]
 0053663E    lea         edx,[ebp-28]
 00536641    lea         eax,[ebp-4]
 00536644    call        0067DCE4
 00536649    dec         dword ptr [ebp-3C]
 0053664C    lea         eax,[ebp-28]
 0053664F    mov         edx,2
 00536654    call        0067DCA0
>00536659    jmp         00536692
 0053665B    mov         cl,byte ptr [ebp-62]
 0053665E    cmp         cl,0D
>00536661    jbe         00536692
 00536663    mov         word ptr [ebp-48],80
 00536669    lea         eax,[ebp-2C]
 0053666C    mov         dl,byte ptr [ebp-62]
 0053666F    call        0067DB84
 00536674    inc         dword ptr [ebp-3C]
 00536677    lea         edx,[ebp-2C]
 0053667A    lea         eax,[ebp-4]
 0053667D    call        0067DCE4
 00536682    dec         dword ptr [ebp-3C]
 00536685    lea         eax,[ebp-2C]
 00536688    mov         edx,2
 0053668D    call        0067DCA0
 00536692    inc         dword ptr [ebp-6C]
 00536695    mov         ecx,dword ptr [ebp-6C]
 00536698    mov         eax,dword ptr [ebp-60]
 0053669B    cmp         ecx,eax
>0053669D    jl          0053643E
 005366A3    mov         dl,byte ptr [ebp-61]
 005366A6    test        dl,dl
>005366A8    je          005366DB
 005366AA    mov         word ptr [ebp-48],8C
 005366B0    mov         edx,6DC799
 005366B5    lea         eax,[ebp-30]
 005366B8    call        0067DAB4
 005366BD    inc         dword ptr [ebp-3C]
 005366C0    lea         edx,[ebp-30]
 005366C3    lea         eax,[ebp-4]
 005366C6    call        0067DCE4
 005366CB    dec         dword ptr [ebp-3C]
 005366CE    lea         eax,[ebp-30]
 005366D1    mov         edx,2
 005366D6    call        0067DCA0
 005366DB    mov         word ptr [ebp-48],98
 005366E1    lea         edx,[ebp-4]
 005366E4    mov         eax,dword ptr [ebp-34]
 005366E7    call        0067DCD0
 005366EC    mov         eax,dword ptr [ebp-34]
 005366EF    mov         word ptr [ebp-48],0A4
 005366F5    push        eax
 005366F6    dec         dword ptr [ebp-3C]
 005366F9    lea         eax,[ebp-4]
 005366FC    mov         edx,2
 00536701    call        0067DCA0
 00536706    pop         eax
 00536707    mov         word ptr [ebp-48],98
 0053670D    inc         dword ptr [ebp-3C]
 00536710    mov         edx,dword ptr [ebp-58]
 00536713    mov         dword ptr fs:[0],edx
 0053671A    mov         esp,ebp
 0053671C    pop         ebp
 0053671D    ret
end;*}

//00536720
{*procedure sub_00536720(?:?; ?:?; ?:?; ?:?);
begin
 00536720    push        ebp
 00536721    mov         ebp,esp
 00536723    add         esp,0FFFFFFBC
 00536726    mov         dword ptr [ebp-3C],ecx
 00536729    mov         dword ptr [ebp-38],edx
 0053672C    mov         word ptr [ebp-32],ax
 00536730    mov         eax,6DE7CC
 00536735    call        0066FECC
 0053673A    movzx       edx,word ptr [ebp-32]
 0053673E    push        edx
 0053673F    call        KERNEL32.IsValidCodePage
 00536744    test        eax,eax
>00536746    jne         0053674E
 00536748    mov         word ptr [ebp-32],0
 0053674E    push        0
 00536750    push        0
 00536752    push        0
 00536754    push        0
 00536756    push        0FF
 00536758    push        dword ptr [ebp-38]
 0053675B    push        0
 0053675D    movzx       ecx,word ptr [ebp-32]
 00536761    push        ecx
 00536762    call        KERNEL32.WideCharToMultiByte
 00536767    mov         dword ptr [ebp-40],eax
 0053676A    mov         eax,dword ptr [ebp-40]
 0053676D    test        eax,eax
>0053676F    jne         005367C5
 00536771    mov         word ptr [ebp-20],8
 00536777    mov         edx,6DC79B
 0053677C    lea         eax,[ebp-8]
 0053677F    call        0067DAB4
 00536784    inc         dword ptr [ebp-14]
 00536787    lea         edx,[ebp-8]
 0053678A    mov         eax,dword ptr [ebp+8]
 0053678D    call        0067DCD0
 00536792    mov         eax,dword ptr [ebp+8]
 00536795    mov         word ptr [ebp-20],14
 0053679B    push        eax
 0053679C    dec         dword ptr [ebp-14]
 0053679F    lea         eax,[ebp-8]
 005367A2    mov         edx,2
 005367A7    call        0067DCA0
 005367AC    pop         eax
 005367AD    mov         word ptr [ebp-20],8
 005367B3    inc         dword ptr [ebp-14]
 005367B6    mov         edx,dword ptr [ebp-30]
 005367B9    mov         dword ptr fs:[0],edx
>005367C0    jmp         0053687E
 005367C5    mov         ecx,dword ptr [ebp-40]
 005367C8    inc         ecx
 005367C9    push        ecx
 005367CA    call        0066EC88
 005367CF    pop         ecx
 005367D0    mov         dword ptr [ebp-44],eax
 005367D3    push        0
 005367D5    push        0
 005367D7    push        dword ptr [ebp-40]
 005367DA    push        dword ptr [ebp-44]
 005367DD    push        0FF
 005367DF    push        dword ptr [ebp-38]
 005367E2    push        0
 005367E4    movzx       eax,word ptr [ebp-32]
 005367E8    push        eax
 005367E9    call        KERNEL32.WideCharToMultiByte
 005367EE    mov         edx,dword ptr [ebp-40]
 005367F1    mov         ecx,dword ptr [ebp-44]
 005367F4    mov         byte ptr [ecx+edx],0
 005367F8    mov         word ptr [ebp-20],2C
 005367FE    lea         eax,[ebp-4]
 00536801    call        00401EA8
 00536806    push        eax
 00536807    inc         dword ptr [ebp-14]
 0053680A    lea         eax,[ebp-0C]
 0053680D    mov         edx,dword ptr [ebp-44]
 00536810    call        0067DAB4
 00536815    inc         dword ptr [ebp-14]
 00536818    mov         eax,dword ptr [eax]
 0053681A    pop         edx
 0053681B    call        006578C4
 00536820    dec         dword ptr [ebp-14]
 00536823    lea         eax,[ebp-0C]
 00536826    mov         edx,2
 0053682B    call        0067DCA0
 00536830    mov         word ptr [ebp-20],20
 00536836    push        dword ptr [ebp-44]
 00536839    call        0066EAC0
 0053683E    pop         ecx
 0053683F    mov         word ptr [ebp-20],38
 00536845    lea         edx,[ebp-4]
 00536848    mov         eax,dword ptr [ebp+8]
 0053684B    call        0067DCD0
 00536850    mov         eax,dword ptr [ebp+8]
 00536853    mov         word ptr [ebp-20],44
 00536859    push        eax
 0053685A    dec         dword ptr [ebp-14]
 0053685D    lea         eax,[ebp-4]
 00536860    mov         edx,2
 00536865    call        0067DCA0
 0053686A    pop         eax
 0053686B    mov         word ptr [ebp-20],38
 00536871    inc         dword ptr [ebp-14]
 00536874    mov         edx,dword ptr [ebp-30]
 00536877    mov         dword ptr fs:[0],edx
 0053687E    mov         esp,ebp
 00536880    pop         ebp
 00536881    ret         4
end;*}

//00536884
{*function sub_00536884(?:?):?;
begin
 00536884    push        ebp
 00536885    mov         ebp,esp
 00536887    add         esp,0FFFFFFEC
 0053688A    mov         dword ptr [ebp-4],eax
 0053688D    mov         eax,[006ECB50];0x0 gvar_006ECB50
 00536892    mov         edx,dword ptr ds:[6ECB4C];0x0 gvar_006ECB4C
 00536898    add         eax,edx
 0053689A    mov         dword ptr [ebp-14],eax
 0053689D    mov         ecx,dword ptr ds:[6ECB3C];0x0 gvar_006ECB3C
 005368A3    cmp         ecx,2
>005368A6    je          00536904
 005368A8    mov         eax,dword ptr [ebp-4]
 005368AB    call        005312C8
 005368B0    mov         edx,dword ptr ds:[694200];0x0 gvar_00694200
 005368B6    add         eax,edx
 005368B8    mov         dword ptr [ebp-0C],eax
 005368BB    mov         ecx,dword ptr ds:[694200];0x0 gvar_00694200
 005368C1    mov         dword ptr [ebp-8],ecx
>005368C4    jmp         005368F6
 005368C6    mov         eax,[006941D4];0x0 gvar_006941D4
 005368CB    mov         edx,dword ptr [ebp-0C]
 005368CE    mov         ecx,dword ptr [eax+edx]
 005368D1    mov         dword ptr [ebp-10],ecx
 005368D4    mov         eax,dword ptr [ebp-10]
 005368D7    mov         edx,dword ptr [ebp-4]
 005368DA    cmp         eax,edx
>005368DC    jb          005368EE
 005368DE    mov         ecx,dword ptr [ebp-10]
 005368E1    mov         eax,dword ptr [ebp-14]
 005368E4    cmp         ecx,eax
>005368E6    jae         005368EE
 005368E8    mov         edx,dword ptr [ebp-10]
 005368EB    mov         dword ptr [ebp-14],edx
 005368EE    add         dword ptr [ebp-8],4
 005368F2    add         dword ptr [ebp-0C],4
 005368F6    mov         ecx,dword ptr [ebp-8]
 005368F9    mov         eax,[00694220];0x0 gvar_00694220
 005368FE    cmp         ecx,eax
>00536900    jne         005368C6
>00536902    jmp         00536970
 00536904    mov         eax,dword ptr [ebp-4]
 00536907    call        005312C8
 0053690C    mov         edx,dword ptr ds:[694208];0x0 gvar_00694208
 00536912    add         eax,edx
 00536914    mov         dword ptr [ebp-0C],eax
 00536917    mov         ecx,dword ptr ds:[694208];0x0 gvar_00694208
 0053691D    mov         dword ptr [ebp-8],ecx
>00536920    jmp         00536963
 00536922    mov         eax,dword ptr [ebp-4]
 00536925    call        005312C8
 0053692A    test        eax,eax
>0053692C    jge         00536932
 0053692E    xor         eax,eax
>00536930    jmp         00536973
 00536932    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00536938    mov         ecx,dword ptr [ebp-0C]
 0053693B    mov         eax,dword ptr [edx+ecx]
 0053693E    mov         dword ptr [ebp-10],eax
 00536941    mov         edx,dword ptr [ebp-10]
 00536944    mov         ecx,dword ptr [ebp-4]
 00536947    cmp         edx,ecx
>00536949    jb          0053695B
 0053694B    mov         eax,dword ptr [ebp-10]
 0053694E    mov         edx,dword ptr [ebp-14]
 00536951    cmp         eax,edx
>00536953    jae         0053695B
 00536955    mov         ecx,dword ptr [ebp-10]
 00536958    mov         dword ptr [ebp-14],ecx
 0053695B    add         dword ptr [ebp-8],4
 0053695F    add         dword ptr [ebp-0C],4
 00536963    mov         eax,dword ptr [ebp-8]
 00536966    mov         edx,dword ptr ds:[694220];0x0 gvar_00694220
 0053696C    cmp         eax,edx
>0053696E    jne         00536922
 00536970    mov         eax,dword ptr [ebp-14]
 00536973    mov         esp,ebp
 00536975    pop         ebp
 00536976    ret
end;*}

//00536978
{*procedure sub_00536978(?:?; ?:?);
begin
 00536978    push        ebp
 00536979    mov         ebp,esp
 0053697B    add         esp,0FFFFFF8C
 0053697E    mov         dword ptr [ebp-0C],edx
 00536981    mov         dword ptr [ebp-64],eax
 00536984    mov         eax,6DE960
 00536989    call        0066FECC
 0053698E    mov         eax,dword ptr [ebp-64]
 00536991    call        00531EE8
 00536996    test        al,al
>00536998    jne         005369EE
 0053699A    mov         word ptr [ebp-50],8
 005369A0    mov         edx,6DC79C
 005369A5    lea         eax,[ebp-8]
 005369A8    call        0067DAB4
 005369AD    inc         dword ptr [ebp-44]
 005369B0    lea         edx,[ebp-8]
 005369B3    mov         eax,dword ptr [ebp-0C]
 005369B6    call        0067DCD0
 005369BB    mov         eax,dword ptr [ebp-0C]
 005369BE    mov         word ptr [ebp-50],14
 005369C4    push        eax
 005369C5    dec         dword ptr [ebp-44]
 005369C8    lea         eax,[ebp-8]
 005369CB    mov         edx,2
 005369D0    call        0067DCA0
 005369D5    pop         eax
 005369D6    mov         word ptr [ebp-50],8
 005369DC    inc         dword ptr [ebp-44]
 005369DF    mov         edx,dword ptr [ebp-60]
 005369E2    mov         dword ptr fs:[0],edx
>005369E9    jmp         00536D65
 005369EE    mov         eax,dword ptr [ebp-64]
 005369F1    call        005312C8
 005369F6    mov         edx,eax
 005369F8    mov         eax,4
 005369FD    call        00532B74
 00536A02    test        al,al
>00536A04    je          00536A6A
 00536A06    mov         eax,dword ptr [ebp-64]
 00536A09    call        0053A308
 00536A0E    mov         dword ptr [ebp-68],eax
 00536A11    mov         word ptr [ebp-50],20
 00536A17    lea         eax,[ebp-10]
 00536A1A    call        00401EA8
 00536A1F    mov         edx,eax
 00536A21    inc         dword ptr [ebp-44]
 00536A24    mov         eax,dword ptr [ebp-68]
 00536A27    call        0048591C
 00536A2C    lea         edx,[ebp-10]
 00536A2F    mov         eax,dword ptr [ebp-0C]
 00536A32    call        0067DCD0
 00536A37    mov         eax,dword ptr [ebp-0C]
 00536A3A    mov         word ptr [ebp-50],2C
 00536A40    push        eax
 00536A41    dec         dword ptr [ebp-44]
 00536A44    lea         eax,[ebp-10]
 00536A47    mov         edx,2
 00536A4C    call        0067DCA0
 00536A51    pop         eax
 00536A52    mov         word ptr [ebp-50],20
 00536A58    inc         dword ptr [ebp-44]
 00536A5B    mov         edx,dword ptr [ebp-60]
 00536A5E    mov         dword ptr fs:[0],edx
>00536A65    jmp         00536D65
 00536A6A    mov         eax,dword ptr [ebp-64]
 00536A6D    call        005312C8
 00536A72    mov         dword ptr [ebp-6C],eax
 00536A75    mov         edx,dword ptr [ebp-6C]
 00536A78    mov         eax,40
 00536A7D    call        00532B74
 00536A82    test        al,al
>00536A84    je          00536A8A
 00536A86    add         dword ptr [ebp-6C],4
 00536A8A    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00536A90    mov         ecx,dword ptr [ebp-6C]
 00536A93    mov         al,byte ptr [edx+ecx]
 00536A96    mov         byte ptr [ebp-6D],al
 00536A99    inc         dword ptr [ebp-6C]
 00536A9C    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00536AA2    mov         ecx,dword ptr [ebp-6C]
 00536AA5    mov         al,byte ptr [edx+ecx]
 00536AA8    mov         byte ptr [ebp-6E],al
 00536AAB    inc         dword ptr [ebp-6C]
 00536AAE    mov         word ptr [ebp-50],44
 00536AB4    xor         ecx,ecx
 00536AB6    mov         cl,byte ptr [ebp-6E]
 00536AB9    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00536ABF    mov         eax,dword ptr [ebp-6C]
 00536AC2    add         edx,eax
 00536AC4    lea         eax,[ebp-4]
 00536AC7    call        0067DB28
 00536ACC    inc         dword ptr [ebp-44]
 00536ACF    mov         word ptr [ebp-50],38
 00536AD5    lea         eax,[ebp-4]
 00536AD8    mov         edx,1
 00536ADD    call        00403C2C
 00536AE2    movsx       ecx,byte ptr [eax]
 00536AE5    cmp         ecx,2E
>00536AE8    jne         00536D26
 00536AEE    mov         eax,[006E9C8C];^_FMain_11011981
 00536AF3    mov         eax,dword ptr [eax]
 00536AF5    mov         edx,dword ptr [ebp-64]
 00536AF8    call        0040AAE4
 00536AFD    mov         dword ptr [ebp-74],eax
 00536B00    mov         ecx,dword ptr [ebp-74]
 00536B03    test        ecx,ecx
>00536B05    je          00536D26
 00536B0B    mov         word ptr [ebp-50],50
 00536B11    lea         eax,[ebp-14]
 00536B14    call        00401EA8
 00536B19    inc         dword ptr [ebp-44]
 00536B1C    mov         word ptr [ebp-50],5C
 00536B22    mov         dl,byte ptr [ebp-6D]
 00536B25    sub         dl,3
>00536B28    je          00536B39
 00536B2A    sub         dl,0A
>00536B2D    je          00536B6F
 00536B2F    sub         dl,4
>00536B32    je          00536BA2
>00536B34    jmp         00536BD5
 00536B39    mov         word ptr [ebp-50],68
 00536B3F    mov         edx,6DC79E
 00536B44    lea         eax,[ebp-18]
 00536B47    call        0067DAB4
 00536B4C    inc         dword ptr [ebp-44]
 00536B4F    lea         edx,[ebp-18]
 00536B52    lea         eax,[ebp-14]
 00536B55    call        0067DCD0
 00536B5A    dec         dword ptr [ebp-44]
 00536B5D    lea         eax,[ebp-18]
 00536B60    mov         edx,2
 00536B65    call        0067DCA0
>00536B6A    jmp         00536C13
 00536B6F    mov         word ptr [ebp-50],74
 00536B75    mov         edx,6DC7A5
 00536B7A    lea         eax,[ebp-1C]
 00536B7D    call        0067DAB4
 00536B82    inc         dword ptr [ebp-44]
 00536B85    lea         edx,[ebp-1C]
 00536B88    lea         eax,[ebp-14]
 00536B8B    call        0067DCD0
 00536B90    dec         dword ptr [ebp-44]
 00536B93    lea         eax,[ebp-1C]
 00536B96    mov         edx,2
 00536B9B    call        0067DCA0
>00536BA0    jmp         00536C13
 00536BA2    mov         word ptr [ebp-50],80
 00536BA8    mov         edx,6DC7AB
 00536BAD    lea         eax,[ebp-20]
 00536BB0    call        0067DAB4
 00536BB5    inc         dword ptr [ebp-44]
 00536BB8    lea         edx,[ebp-20]
 00536BBB    lea         eax,[ebp-14]
 00536BBE    call        0067DCD0
 00536BC3    dec         dword ptr [ebp-44]
 00536BC6    lea         eax,[ebp-20]
 00536BC9    mov         edx,2
 00536BCE    call        0067DCA0
>00536BD3    jmp         00536C13
 00536BD5    mov         word ptr [ebp-50],8C
 00536BDB    lea         eax,[ebp-24]
 00536BDE    call        00401EA8
 00536BE3    mov         ecx,eax
 00536BE5    inc         dword ptr [ebp-44]
 00536BE8    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 00536BEE    mov         eax,dword ptr [edx]
 00536BF0    mov         edx,dword ptr [ebp-74]
 00536BF3    call        0040AB58
 00536BF8    lea         edx,[ebp-24]
 00536BFB    lea         eax,[ebp-14]
 00536BFE    call        0067DCD0
 00536C03    dec         dword ptr [ebp-44]
 00536C06    lea         eax,[ebp-24]
 00536C09    mov         edx,2
 00536C0E    call        0067DCA0
 00536C13    mov         word ptr [ebp-50],98
 00536C19    lea         eax,[ebp-38]
 00536C1C    call        00401EA8
 00536C21    push        eax
 00536C22    inc         dword ptr [ebp-44]
 00536C25    xor         ecx,ecx
 00536C27    mov         cl,byte ptr [ebp-6E]
 00536C2A    lea         eax,[ebp-4]
 00536C2D    mov         edx,2
 00536C32    call        0067E0BC
 00536C37    lea         ecx,[ebp-38]
 00536C3A    push        ecx
 00536C3B    lea         eax,[ebp-2C]
 00536C3E    call        00401EA8
 00536C43    push        eax
 00536C44    inc         dword ptr [ebp-44]
 00536C47    mov         edx,dword ptr [ebp-74]
 00536C4A    mov         edx,dword ptr [edx+20]
 00536C4D    lea         eax,[ebp-28]
 00536C50    call        0067DC18
 00536C55    mov         edx,eax
 00536C57    inc         dword ptr [ebp-44]
 00536C5A    lea         eax,[ebp-14]
 00536C5D    pop         ecx
 00536C5E    call        0067DCF8
 00536C63    lea         eax,[ebp-2C]
 00536C66    push        eax
 00536C67    lea         eax,[ebp-34]
 00536C6A    call        00401EA8
 00536C6F    push        eax
 00536C70    inc         dword ptr [ebp-44]
 00536C73    mov         edx,6DC7B4
 00536C78    lea         eax,[ebp-30]
 00536C7B    call        0067DAB4
 00536C80    inc         dword ptr [ebp-44]
 00536C83    lea         edx,[ebp-30]
 00536C86    pop         ecx
 00536C87    pop         eax
 00536C88    call        0067DCF8
 00536C8D    lea         edx,[ebp-34]
 00536C90    push        edx
 00536C91    lea         eax,[ebp-3C]
 00536C94    call        00401EA8
 00536C99    mov         ecx,eax
 00536C9B    inc         dword ptr [ebp-44]
 00536C9E    pop         eax
 00536C9F    pop         edx
 00536CA0    call        0067DCF8
 00536CA5    lea         edx,[ebp-3C]
 00536CA8    lea         eax,[ebp-4]
 00536CAB    call        0067DCD0
 00536CB0    dec         dword ptr [ebp-44]
 00536CB3    lea         eax,[ebp-3C]
 00536CB6    mov         edx,2
 00536CBB    call        0067DCA0
 00536CC0    dec         dword ptr [ebp-44]
 00536CC3    lea         eax,[ebp-38]
 00536CC6    mov         edx,2
 00536CCB    call        0067DCA0
 00536CD0    dec         dword ptr [ebp-44]
 00536CD3    lea         eax,[ebp-34]
 00536CD6    mov         edx,2
 00536CDB    call        0067DCA0
 00536CE0    dec         dword ptr [ebp-44]
 00536CE3    lea         eax,[ebp-30]
 00536CE6    mov         edx,2
 00536CEB    call        0067DCA0
 00536CF0    dec         dword ptr [ebp-44]
 00536CF3    lea         eax,[ebp-2C]
 00536CF6    mov         edx,2
 00536CFB    call        0067DCA0
 00536D00    dec         dword ptr [ebp-44]
 00536D03    lea         eax,[ebp-28]
 00536D06    mov         edx,2
 00536D0B    call        0067DCA0
 00536D10    dec         dword ptr [ebp-44]
 00536D13    lea         eax,[ebp-14]
 00536D16    mov         edx,2
 00536D1B    call        0067DCA0
 00536D20    mov         word ptr [ebp-50],38
 00536D26    mov         word ptr [ebp-50],0A4
 00536D2C    lea         edx,[ebp-4]
 00536D2F    mov         eax,dword ptr [ebp-0C]
 00536D32    call        0067DCD0
 00536D37    mov         eax,dword ptr [ebp-0C]
 00536D3A    mov         word ptr [ebp-50],0B0
 00536D40    push        eax
 00536D41    dec         dword ptr [ebp-44]
 00536D44    lea         eax,[ebp-4]
 00536D47    mov         edx,2
 00536D4C    call        0067DCA0
 00536D51    pop         eax
 00536D52    mov         word ptr [ebp-50],0A4
 00536D58    inc         dword ptr [ebp-44]
 00536D5B    mov         edx,dword ptr [ebp-60]
 00536D5E    mov         dword ptr fs:[0],edx
 00536D65    mov         esp,ebp
 00536D67    pop         ebp
 00536D68    ret
end;*}

//00536D6C
{*procedure sub_00536D6C(?:?; ?:?; ?:?; ?:?);
begin
 00536D6C    push        ebp
 00536D6D    mov         ebp,esp
 00536D6F    add         esp,0FFFFFFAC
 00536D72    mov         dword ptr [ebp-40],ecx
 00536D75    mov         word ptr [ebp-3A],dx
 00536D79    mov         dword ptr [ebp-38],eax
 00536D7C    mov         eax,6DEAC0
 00536D81    call        0066FECC
 00536D86    mov         edx,dword ptr [ebp-38]
 00536D89    mov         dword ptr [ebp-48],edx
 00536D8C    mov         ecx,dword ptr [ebp-40]
 00536D8F    xor         eax,eax
 00536D91    mov         dword ptr [ecx],eax
 00536D93    mov         eax,dword ptr [ebp-38]
 00536D96    call        00531F1C
 00536D9B    test        al,al
>00536D9D    jne         00536DF3
 00536D9F    mov         word ptr [ebp-24],8
 00536DA5    mov         edx,6DC7B6
 00536DAA    lea         eax,[ebp-4]
 00536DAD    call        0067DAB4
 00536DB2    inc         dword ptr [ebp-18]
 00536DB5    lea         edx,[ebp-4]
 00536DB8    mov         eax,dword ptr [ebp+8]
 00536DBB    call        0067DCD0
 00536DC0    mov         eax,dword ptr [ebp+8]
 00536DC3    mov         word ptr [ebp-24],14
 00536DC9    push        eax
 00536DCA    dec         dword ptr [ebp-18]
 00536DCD    lea         eax,[ebp-4]
 00536DD0    mov         edx,2
 00536DD5    call        0067DCA0
 00536DDA    pop         eax
 00536DDB    mov         word ptr [ebp-24],8
 00536DE1    inc         dword ptr [ebp-18]
 00536DE4    mov         edx,dword ptr [ebp-34]
 00536DE7    mov         dword ptr fs:[0],edx
>00536DEE    jmp         00536FB1
 00536DF3    mov         ecx,dword ptr [ebp-48]
 00536DF6    test        ecx,ecx
>00536DF8    je          00536F62
 00536DFE    mov         eax,dword ptr [ebp-48]
 00536E01    call        0053A308
 00536E06    mov         dword ptr [ebp-4C],eax
 00536E09    mov         edx,dword ptr [ebp-4C]
 00536E0C    test        edx,edx
>00536E0E    je          00536F4C
 00536E14    mov         ecx,dword ptr [ebp-4C]
 00536E17    mov         eax,dword ptr [ecx+1A]
 00536E1A    test        eax,eax
>00536E1C    je          00536F4C
 00536E22    mov         edx,dword ptr [ebp-4C]
 00536E25    mov         ecx,dword ptr [edx+1A]
 00536E28    mov         eax,dword ptr [ecx+8]
 00536E2B    test        eax,eax
>00536E2D    je          00536F4C
 00536E33    xor         edx,edx
 00536E35    mov         dword ptr [ebp-44],edx
>00536E38    jmp         00536F35
 00536E3D    mov         ecx,dword ptr [ebp-4C]
 00536E40    mov         eax,dword ptr [ecx+1A]
 00536E43    mov         eax,dword ptr [eax+8]
 00536E46    mov         edx,dword ptr [ebp-44]
 00536E49    call        TList.Get
 00536E4E    mov         dword ptr [ebp-54],eax
 00536E51    mov         ecx,dword ptr [ebp-54]
 00536E54    movsx       eax,byte ptr [ecx+1]
 00536E58    cmp         eax,44
>00536E5B    jne         00536F32
 00536E61    movzx       edx,word ptr [ebp-3A]
 00536E65    mov         ecx,dword ptr [ebp-54]
 00536E68    mov         eax,dword ptr [ecx+2]
 00536E6B    cmp         edx,eax
>00536E6D    jne         00536F32
 00536E73    mov         edx,dword ptr [ebp-40]
 00536E76    mov         ecx,dword ptr [ebp-54]
 00536E79    mov         eax,dword ptr [ecx+6]
 00536E7C    mov         dword ptr [edx],eax
 00536E7E    mov         word ptr [ebp-24],20
 00536E84    mov         edx,6DC7B7
 00536E89    lea         eax,[ebp-8]
 00536E8C    call        0067DAB4
 00536E91    inc         dword ptr [ebp-18]
 00536E94    lea         edx,[ebp-8]
 00536E97    mov         eax,dword ptr [ebp-54]
 00536E9A    add         eax,0A
 00536E9D    call        0067DD9C
 00536EA2    push        eax
 00536EA3    dec         dword ptr [ebp-18]
 00536EA6    lea         eax,[ebp-8]
 00536EA9    mov         edx,2
 00536EAE    call        0067DCA0
 00536EB3    pop         ecx
 00536EB4    test        cl,cl
>00536EB6    je          00536EE1
 00536EB8    mov         word ptr [ebp-24],2C
 00536EBE    mov         edx,dword ptr [ebp-54]
 00536EC1    add         edx,0A
 00536EC4    mov         eax,dword ptr [ebp+8]
 00536EC7    call        0067DCD0
 00536ECC    mov         eax,dword ptr [ebp+8]
 00536ECF    inc         dword ptr [ebp-18]
 00536ED2    mov         edx,dword ptr [ebp-34]
 00536ED5    mov         dword ptr fs:[0],edx
>00536EDC    jmp         00536FB1
 00536EE1    mov         word ptr [ebp-24],38
 00536EE7    mov         edx,6DC7B8
 00536EEC    lea         eax,[ebp-0C]
 00536EEF    call        0067DAB4
 00536EF4    inc         dword ptr [ebp-18]
 00536EF7    lea         edx,[ebp-0C]
 00536EFA    mov         eax,dword ptr [ebp+8]
 00536EFD    call        0067DCD0
 00536F02    mov         eax,dword ptr [ebp+8]
 00536F05    mov         word ptr [ebp-24],44
 00536F0B    push        eax
 00536F0C    dec         dword ptr [ebp-18]
 00536F0F    lea         eax,[ebp-0C]
 00536F12    mov         edx,2
 00536F17    call        0067DCA0
 00536F1C    pop         eax
 00536F1D    mov         word ptr [ebp-24],38
 00536F23    inc         dword ptr [ebp-18]
 00536F26    mov         edx,dword ptr [ebp-34]
 00536F29    mov         dword ptr fs:[0],edx
>00536F30    jmp         00536FB1
 00536F32    inc         dword ptr [ebp-44]
 00536F35    mov         ecx,dword ptr [ebp-4C]
 00536F38    mov         eax,dword ptr [ecx+1A]
 00536F3B    mov         edx,dword ptr [eax+8]
 00536F3E    mov         ecx,dword ptr [edx+8]
 00536F41    mov         eax,dword ptr [ebp-44]
 00536F44    cmp         ecx,eax
>00536F46    jg          00536E3D
 00536F4C    mov         eax,dword ptr [ebp-48]
 00536F4F    call        00535B28
 00536F54    mov         dword ptr [ebp-48],eax
 00536F57    mov         edx,dword ptr [ebp-48]
 00536F5A    test        edx,edx
>00536F5C    jne         00536DFE
 00536F62    mov         word ptr [ebp-24],50
 00536F68    mov         edx,6DC7B9
 00536F6D    lea         eax,[ebp-10]
 00536F70    call        0067DAB4
 00536F75    inc         dword ptr [ebp-18]
 00536F78    lea         edx,[ebp-10]
 00536F7B    mov         eax,dword ptr [ebp+8]
 00536F7E    call        0067DCD0
 00536F83    mov         eax,dword ptr [ebp+8]
 00536F86    mov         word ptr [ebp-24],5C
 00536F8C    push        eax
 00536F8D    dec         dword ptr [ebp-18]
 00536F90    lea         eax,[ebp-10]
 00536F93    mov         edx,2
 00536F98    call        0067DCA0
 00536F9D    pop         eax
 00536F9E    mov         word ptr [ebp-24],50
 00536FA4    inc         dword ptr [ebp-18]
 00536FA7    mov         edx,dword ptr [ebp-34]
 00536FAA    mov         dword ptr fs:[0],edx
 00536FB1    mov         esp,ebp
 00536FB3    pop         ebp
 00536FB4    ret         4
end;*}

//00536FB8
{*procedure sub_00536FB8(?:?; ?:?);
begin
 00536FB8    push        ebp
 00536FB9    mov         ebp,esp
 00536FBB    add         esp,0FFFFFFC8
 00536FBE    mov         dword ptr [ebp-8],edx
 00536FC1    mov         dword ptr [ebp-30],eax
 00536FC4    mov         eax,6DEB54
 00536FC9    call        0066FECC
 00536FCE    mov         eax,dword ptr [ebp-30]
 00536FD1    call        005312C8
 00536FD6    mov         dword ptr [ebp-38],eax
 00536FD9    add         dword ptr [ebp-38],4
 00536FDD    inc         dword ptr [ebp-38]
 00536FE0    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00536FE6    mov         ecx,dword ptr [ebp-38]
 00536FE9    mov         al,byte ptr [edx+ecx]
 00536FEC    mov         byte ptr [ebp-31],al
 00536FEF    inc         dword ptr [ebp-38]
 00536FF2    xor         edx,edx
 00536FF4    mov         dl,byte ptr [ebp-31]
 00536FF7    add         dword ptr [ebp-38],edx
 00536FFA    add         dword ptr [ebp-38],4
 00536FFE    mov         word ptr [ebp-1C],8
 00537004    lea         eax,[ebp-4]
 00537007    call        00401EA8
 0053700C    mov         edx,eax
 0053700E    inc         dword ptr [ebp-10]
 00537011    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00537017    mov         eax,dword ptr [ebp-38]
 0053701A    mov         eax,dword ptr [ecx+eax]
 0053701D    call        00536978
 00537022    lea         edx,[ebp-4]
 00537025    mov         eax,dword ptr [ebp-8]
 00537028    call        0067DCD0
 0053702D    mov         eax,dword ptr [ebp-8]
 00537030    mov         word ptr [ebp-1C],14
 00537036    push        eax
 00537037    dec         dword ptr [ebp-10]
 0053703A    lea         eax,[ebp-4]
 0053703D    mov         edx,2
 00537042    call        0067DCA0
 00537047    pop         eax
 00537048    mov         word ptr [ebp-1C],8
 0053704E    inc         dword ptr [ebp-10]
 00537051    mov         edx,dword ptr [ebp-2C]
 00537054    mov         dword ptr fs:[0],edx
 0053705B    mov         esp,ebp
 0053705D    pop         ebp
 0053705E    ret
end;*}

//00537060
procedure sub_00537060(?:AnsiString);
begin
{*
 00537060    push        ebp
 00537061    mov         ebp,esp
 00537063    add         esp,0FFFFFFA0
 00537066    mov         dword ptr [ebp-4],eax
 00537069    mov         eax,6DEBA0
 0053706E    call        0066FECC
 00537073    mov         dword ptr [ebp-3C],1
 0053707A    lea         edx,[ebp-4]
 0053707D    lea         eax,[ebp-4]
 00537080    call        0067DAEC
 00537085    inc         dword ptr [ebp-3C]
 00537088    mov         word ptr [ebp-48],8
 0053708E    mov         dword ptr [ebp-5C],0FFFFFFFF
 00537095    mov         word ptr [ebp-48],14
 0053709B    lea         eax,[ebp-34]
 0053709E    call        0046DFF0
 005370A3    add         dword ptr [ebp-3C],3
 005370A7    mov         word ptr [ebp-48],8
 005370AD    lea         eax,[ebp-4]
 005370B0    call        00403C0C
 005370B5    mov         edx,eax
 005370B7    mov         eax,6ECAB4
 005370BC    call        00472C40
 005370C1    mov         dword ptr [ebp-60],eax
 005370C4    lea         eax,[ebp-4]
 005370C7    call        00403C0C
 005370CC    mov         ecx,eax
 005370CE    mov         eax,6ECAB4
 005370D3    mov         edx,dword ptr [ebp-60]
 005370D6    call        004701C8
 005370DB    mov         dword ptr [ebp-5C],eax
 005370DE    mov         ecx,dword ptr [ebp-60]
 005370E1    test        ecx,ecx
>005370E3    je          005370EE
 005370E5    push        dword ptr [ebp-60]
 005370E8    call        0066EAC0
 005370ED    pop         ecx
 005370EE    mov         eax,dword ptr [ebp-5C]
 005370F1    inc         eax
>005370F2    je          0053715A
 005370F4    mov         edx,dword ptr [ebp-5C]
 005370F7    shl         edx,4
 005370FA    mov         ecx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 00537100    mov         eax,dword ptr [ecx+edx+0C]
 00537104    mov         dword ptr [ebp-5C],eax
 00537107    lea         edx,[ebp-34]
 0053710A    push        edx
 0053710B    mov         eax,6ECAB4
 00537110    mov         ecx,1
 00537115    mov         edx,dword ptr [ebp-5C]
 00537118    call        00472158
 0053711D    test        eax,eax
>0053711F    je          0053715A
 00537121    mov         eax,dword ptr [ebp-34]
 00537124    test        eax,eax
>00537126    je          0053715A
 00537128    mov         eax,dword ptr [ebp-34]
 0053712B    push        eax
 0053712C    sub         dword ptr [ebp-3C],3
 00537130    lea         eax,[ebp-34]
 00537133    mov         edx,2
 00537138    call        0046E124
 0053713D    dec         dword ptr [ebp-3C]
 00537140    lea         eax,[ebp-4]
 00537143    mov         edx,2
 00537148    call        0067DCA0
 0053714D    pop         eax
 0053714E    mov         edx,dword ptr [ebp-58]
 00537151    mov         dword ptr fs:[0],edx
>00537158    jmp         0053718C
 0053715A    mov         eax,4
 0053715F    push        eax
 00537160    sub         dword ptr [ebp-3C],3
 00537164    lea         eax,[ebp-34]
 00537167    mov         edx,2
 0053716C    call        0046E124
 00537171    dec         dword ptr [ebp-3C]
 00537174    lea         eax,[ebp-4]
 00537177    mov         edx,2
 0053717C    call        0067DCA0
 00537181    pop         eax
 00537182    mov         edx,dword ptr [ebp-58]
 00537185    mov         dword ptr fs:[0],edx
 0053718C    mov         esp,ebp
 0053718E    pop         ebp
 0053718F    ret
*}
end;

//00537190
{*procedure sub_00537190(?:Pointer; ?:?);
begin
 00537190    push        ebp
 00537191    mov         ebp,esp
 00537193    add         esp,0FFFFFFD0
 00537196    mov         dword ptr [ebp-4],edx
 00537199    mov         byte ptr [ebp-2D],al
 0053719C    mov         eax,6DEBFC
 005371A1    call        0066FECC
 005371A6    mov         dl,byte ptr [ebp-2D]
 005371A9    cmp         dl,16
>005371AC    jae         005371DC
 005371AE    mov         word ptr [ebp-1C],8
 005371B4    xor         edx,edx
 005371B6    mov         dl,byte ptr [ebp-2D]
 005371B9    shl         edx,2
 005371BC    add         edx,6DC274
 005371C2    mov         eax,dword ptr [ebp-4]
 005371C5    call        0067DCD0
 005371CA    mov         eax,dword ptr [ebp-4]
 005371CD    inc         dword ptr [ebp-10]
 005371D0    mov         edx,dword ptr [ebp-2C]
 005371D3    mov         dword ptr fs:[0],edx
>005371DA    jmp         0053722B
 005371DC    mov         word ptr [ebp-1C],14
 005371E2    mov         edx,6DC86B
 005371E7    lea         eax,[ebp-8]
 005371EA    call        0067DAB4
 005371EF    inc         dword ptr [ebp-10]
 005371F2    lea         edx,[ebp-8]
 005371F5    mov         eax,dword ptr [ebp-4]
 005371F8    call        0067DCD0
 005371FD    mov         eax,dword ptr [ebp-4]
 00537200    mov         word ptr [ebp-1C],20
 00537206    push        eax
 00537207    dec         dword ptr [ebp-10]
 0053720A    lea         eax,[ebp-8]
 0053720D    mov         edx,2
 00537212    call        0067DCA0
 00537217    pop         eax
 00537218    mov         word ptr [ebp-1C],14
 0053721E    inc         dword ptr [ebp-10]
 00537221    mov         edx,dword ptr [ebp-2C]
 00537224    mov         dword ptr fs:[0],edx
 0053722B    mov         esp,ebp
 0053722D    pop         ebp
 0053722E    ret
end;*}

//00537230
{*function sub_00537230(?:AnsiString):?;
begin
 00537230    push        ebp
 00537231    mov         ebp,esp
 00537233    add         esp,0FFFFFFD0
 00537236    mov         dword ptr [ebp-4],eax
 00537239    mov         eax,6DEC48
 0053723E    call        0066FECC
 00537243    mov         dword ptr [ebp-10],1
 0053724A    lea         edx,[ebp-4]
 0053724D    lea         eax,[ebp-4]
 00537250    call        0067DAEC
 00537255    inc         dword ptr [ebp-10]
 00537258    mov         word ptr [ebp-1C],8
 0053725E    mov         word ptr [ebp-1C],14
 00537264    mov         edx,6DC86C
 00537269    lea         eax,[ebp-8]
 0053726C    call        0067DAB4
 00537271    inc         dword ptr [ebp-10]
 00537274    lea         edx,[ebp-8]
 00537277    lea         eax,[ebp-4]
 0053727A    call        0067DD84
 0053727F    push        eax
 00537280    dec         dword ptr [ebp-10]
 00537283    lea         eax,[ebp-8]
 00537286    mov         edx,2
 0053728B    call        0067DCA0
 00537290    pop         ecx
 00537291    test        cl,cl
>00537293    je          005372B5
 00537295    xor         eax,eax
 00537297    push        eax
 00537298    dec         dword ptr [ebp-10]
 0053729B    lea         eax,[ebp-4]
 0053729E    mov         edx,2
 005372A3    call        0067DCA0
 005372A8    pop         eax
 005372A9    mov         edx,dword ptr [ebp-2C]
 005372AC    mov         dword ptr fs:[0],edx
>005372B3    jmp         0053730F
 005372B5    mov         eax,dword ptr [ebp-4]
 005372B8    call        00537314
 005372BD    mov         dword ptr [ebp-30],eax
 005372C0    mov         word ptr [ebp-1C],8
 005372C6    mov         edx,dword ptr [ebp-30]
 005372C9    test        edx,edx
>005372CB    je          005372F1
 005372CD    mov         ecx,dword ptr [ebp-30]
 005372D0    mov         eax,dword ptr [ecx+1]
 005372D3    push        eax
 005372D4    dec         dword ptr [ebp-10]
 005372D7    lea         eax,[ebp-4]
 005372DA    mov         edx,2
 005372DF    call        0067DCA0
 005372E4    pop         eax
 005372E5    mov         edx,dword ptr [ebp-2C]
 005372E8    mov         dword ptr fs:[0],edx
>005372EF    jmp         0053730F
 005372F1    xor         eax,eax
 005372F3    push        eax
 005372F4    dec         dword ptr [ebp-10]
 005372F7    lea         eax,[ebp-4]
 005372FA    mov         edx,2
 005372FF    call        0067DCA0
 00537304    pop         eax
 00537305    mov         edx,dword ptr [ebp-2C]
 00537308    mov         dword ptr fs:[0],edx
 0053730F    mov         esp,ebp
 00537311    pop         ebp
 00537312    ret
end;*}

//00537314
{*function sub_00537314(?:AnsiString):?;
begin
 00537314    push        ebp
 00537315    mov         ebp,esp
 00537317    add         esp,0FFFFFFCC
 0053731A    mov         dword ptr [ebp-4],eax
 0053731D    mov         eax,6DEC88
 00537322    call        0066FECC
 00537327    mov         dword ptr [ebp-10],1
 0053732E    lea         edx,[ebp-4]
 00537331    lea         eax,[ebp-4]
 00537334    call        0067DAEC
 00537339    inc         dword ptr [ebp-10]
 0053733C    mov         word ptr [ebp-1C],8
 00537342    mov         word ptr [ebp-1C],14
 00537348    mov         edx,6DC86D
 0053734D    lea         eax,[ebp-8]
 00537350    call        0067DAB4
 00537355    inc         dword ptr [ebp-10]
 00537358    lea         edx,[ebp-8]
 0053735B    lea         eax,[ebp-4]
 0053735E    call        0067DD84
 00537363    push        eax
 00537364    dec         dword ptr [ebp-10]
 00537367    lea         eax,[ebp-8]
 0053736A    mov         edx,2
 0053736F    call        0067DCA0
 00537374    pop         ecx
 00537375    test        cl,cl
>00537377    je          0053739C
 00537379    xor         eax,eax
 0053737B    push        eax
 0053737C    dec         dword ptr [ebp-10]
 0053737F    lea         eax,[ebp-4]
 00537382    mov         edx,2
 00537387    call        0067DCA0
 0053738C    pop         eax
 0053738D    mov         edx,dword ptr [ebp-2C]
 00537390    mov         dword ptr fs:[0],edx
>00537397    jmp         00537423
 0053739C    xor         ecx,ecx
 0053739E    mov         dword ptr [ebp-30],ecx
 005373A1    mov         word ptr [ebp-1C],8
>005373A7    jmp         005373F5
 005373A9    mov         edx,dword ptr [ebp-30]
 005373AC    mov         eax,[006941E8];0x0 gvar_006941E8
 005373B1    call        TList.Get
 005373B6    mov         dword ptr [ebp-34],eax
 005373B9    mov         word ptr [ebp-1C],8
 005373BF    mov         edx,dword ptr [ebp-4]
 005373C2    mov         eax,dword ptr [ebp-34]
 005373C5    mov         eax,dword ptr [eax+5]
 005373C8    call        SameText
 005373CD    test        al,al
>005373CF    je          005373F2
 005373D1    mov         eax,dword ptr [ebp-34]
 005373D4    push        eax
 005373D5    dec         dword ptr [ebp-10]
 005373D8    lea         eax,[ebp-4]
 005373DB    mov         edx,2
 005373E0    call        0067DCA0
 005373E5    pop         eax
 005373E6    mov         edx,dword ptr [ebp-2C]
 005373E9    mov         dword ptr fs:[0],edx
>005373F0    jmp         00537423
 005373F2    inc         dword ptr [ebp-30]
 005373F5    mov         ecx,dword ptr ds:[6941E8];0x0 gvar_006941E8
 005373FB    mov         eax,dword ptr [ecx+8]
 005373FE    mov         edx,dword ptr [ebp-30]
 00537401    cmp         eax,edx
>00537403    jg          005373A9
 00537405    xor         eax,eax
 00537407    push        eax
 00537408    dec         dword ptr [ebp-10]
 0053740B    lea         eax,[ebp-4]
 0053740E    mov         edx,2
 00537413    call        0067DCA0
 00537418    pop         eax
 00537419    mov         edx,dword ptr [ebp-2C]
 0053741C    mov         dword ptr fs:[0],edx
 00537423    mov         esp,ebp
 00537425    pop         ebp
 00537426    ret
end;*}

//00537428
{*procedure sub_00537428(?:AnsiString; ?:?);
begin
 00537428    push        ebp
 00537429    mov         ebp,esp
 0053742B    add         esp,0FFFFFF8C
 0053742E    mov         dword ptr [ebp-3C],edx
 00537431    mov         dword ptr [ebp-4],eax
 00537434    mov         eax,6DED68
 00537439    call        0066FECC
 0053743E    mov         dword ptr [ebp-50],1
 00537445    lea         edx,[ebp-4]
 00537448    lea         eax,[ebp-4]
 0053744B    call        0067DAEC
 00537450    inc         dword ptr [ebp-50]
 00537453    mov         word ptr [ebp-5C],8
 00537459    mov         dword ptr [ebp-70],0FFFFFFFF
 00537460    mov         word ptr [ebp-5C],14
 00537466    lea         eax,[ebp-34]
 00537469    call        0046DFF0
 0053746E    add         dword ptr [ebp-50],3
 00537472    mov         word ptr [ebp-5C],8
 00537478    lea         eax,[ebp-4]
 0053747B    mov         edx,1
 00537480    call        00403C2C
 00537485    movsx       ecx,byte ptr [eax]
 00537488    cmp         ecx,5E
>0053748B    jne         00537519
 00537491    mov         word ptr [ebp-5C],20
 00537497    lea         eax,[ebp-38]
 0053749A    call        00401EA8
 0053749F    push        eax
 005374A0    inc         dword ptr [ebp-50]
 005374A3    lea         eax,[ebp-4]
 005374A6    call        00405290
 005374AB    mov         ecx,eax
 005374AD    lea         eax,[ebp-4]
 005374B0    mov         edx,2
 005374B5    call        0067E0BC
 005374BA    lea         edx,[ebp-38]
 005374BD    mov         eax,dword ptr [ebp-3C]
 005374C0    call        0067DCD0
 005374C5    mov         eax,dword ptr [ebp-3C]
 005374C8    mov         word ptr [ebp-5C],2C
 005374CE    push        eax
 005374CF    dec         dword ptr [ebp-50]
 005374D2    lea         eax,[ebp-38]
 005374D5    mov         edx,2
 005374DA    call        0067DCA0
 005374DF    sub         dword ptr [ebp-50],3
 005374E3    lea         eax,[ebp-34]
 005374E6    mov         edx,2
 005374EB    call        0046E124
 005374F0    dec         dword ptr [ebp-50]
 005374F3    lea         eax,[ebp-4]
 005374F6    mov         edx,2
 005374FB    call        0067DCA0
 00537500    pop         eax
 00537501    mov         word ptr [ebp-5C],20
 00537507    inc         dword ptr [ebp-50]
 0053750A    mov         edx,dword ptr [ebp-6C]
 0053750D    mov         dword ptr fs:[0],edx
>00537514    jmp         005376E7
 00537519    lea         eax,[ebp-4]
 0053751C    call        00403C0C
 00537521    mov         edx,eax
 00537523    mov         eax,6ECAB4
 00537528    call        00472C40
 0053752D    mov         dword ptr [ebp-74],eax
 00537530    lea         eax,[ebp-4]
 00537533    call        00403C0C
 00537538    mov         ecx,eax
 0053753A    mov         eax,6ECAB4
 0053753F    mov         edx,dword ptr [ebp-74]
 00537542    call        004701C8
 00537547    mov         dword ptr [ebp-70],eax
 0053754A    mov         ecx,dword ptr [ebp-74]
 0053754D    test        ecx,ecx
>0053754F    je          0053755A
 00537551    push        dword ptr [ebp-74]
 00537554    call        0066EAC0
 00537559    pop         ecx
 0053755A    mov         eax,dword ptr [ebp-70]
 0053755D    inc         eax
>0053755E    je          00537677
 00537564    mov         edx,dword ptr [ebp-70]
 00537567    shl         edx,4
 0053756A    mov         ecx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 00537570    mov         eax,dword ptr [ecx+edx+0C]
 00537574    mov         dword ptr [ebp-70],eax
 00537577    lea         edx,[ebp-34]
 0053757A    push        edx
 0053757B    mov         eax,6ECAB4
 00537580    mov         ecx,1
 00537585    mov         edx,dword ptr [ebp-70]
 00537588    call        00472158
 0053758D    test        eax,eax
>0053758F    je          00537677
 00537595    mov         word ptr [ebp-5C],38
 0053759B    mov         edx,6DC86E
 005375A0    lea         eax,[ebp-40]
 005375A3    call        0067DAB4
 005375A8    inc         dword ptr [ebp-50]
 005375AB    lea         edx,[ebp-40]
 005375AE    lea         eax,[ebp-27]
 005375B1    call        0067DD9C
 005375B6    test        al,al
>005375B8    je          005375CF
 005375BA    lea         eax,[ebp-27]
 005375BD    mov         edx,1
 005375C2    call        00403C2C
 005375C7    movsx       ecx,byte ptr [eax]
 005375CA    cmp         ecx,5E
>005375CD    je          005375D3
 005375CF    xor         eax,eax
>005375D1    jmp         005375D8
 005375D3    mov         eax,1
 005375D8    push        eax
 005375D9    dec         dword ptr [ebp-50]
 005375DC    lea         eax,[ebp-40]
 005375DF    mov         edx,2
 005375E4    call        0067DCA0
 005375E9    pop         ecx
 005375EA    test        cl,cl
>005375EC    je          00537677
 005375F2    mov         word ptr [ebp-5C],44
 005375F8    lea         eax,[ebp-44]
 005375FB    call        00401EA8
 00537600    push        eax
 00537601    inc         dword ptr [ebp-50]
 00537604    lea         eax,[ebp-27]
 00537607    call        00405290
 0053760C    mov         ecx,eax
 0053760E    lea         eax,[ebp-27]
 00537611    mov         edx,2
 00537616    call        0067E0BC
 0053761B    lea         edx,[ebp-44]
 0053761E    mov         eax,dword ptr [ebp-3C]
 00537621    call        0067DCD0
 00537626    mov         eax,dword ptr [ebp-3C]
 00537629    mov         word ptr [ebp-5C],50
 0053762F    push        eax
 00537630    dec         dword ptr [ebp-50]
 00537633    lea         eax,[ebp-44]
 00537636    mov         edx,2
 0053763B    call        0067DCA0
 00537640    sub         dword ptr [ebp-50],3
 00537644    lea         eax,[ebp-34]
 00537647    mov         edx,2
 0053764C    call        0046E124
 00537651    dec         dword ptr [ebp-50]
 00537654    lea         eax,[ebp-4]
 00537657    mov         edx,2
 0053765C    call        0067DCA0
 00537661    pop         eax
 00537662    mov         word ptr [ebp-5C],44
 00537668    inc         dword ptr [ebp-50]
 0053766B    mov         edx,dword ptr [ebp-6C]
 0053766E    mov         dword ptr fs:[0],edx
>00537675    jmp         005376E7
 00537677    mov         word ptr [ebp-5C],5C
 0053767D    mov         edx,6DC86F
 00537682    lea         eax,[ebp-48]
 00537685    call        0067DAB4
 0053768A    inc         dword ptr [ebp-50]
 0053768D    lea         edx,[ebp-48]
 00537690    mov         eax,dword ptr [ebp-3C]
 00537693    call        0067DCD0
 00537698    mov         eax,dword ptr [ebp-3C]
 0053769B    mov         word ptr [ebp-5C],68
 005376A1    push        eax
 005376A2    dec         dword ptr [ebp-50]
 005376A5    lea         eax,[ebp-48]
 005376A8    mov         edx,2
 005376AD    call        0067DCA0
 005376B2    sub         dword ptr [ebp-50],3
 005376B6    lea         eax,[ebp-34]
 005376B9    mov         edx,2
 005376BE    call        0046E124
 005376C3    dec         dword ptr [ebp-50]
 005376C6    lea         eax,[ebp-4]
 005376C9    mov         edx,2
 005376CE    call        0067DCA0
 005376D3    pop         eax
 005376D4    mov         word ptr [ebp-5C],5C
 005376DA    inc         dword ptr [ebp-50]
 005376DD    mov         edx,dword ptr [ebp-6C]
 005376E0    mov         dword ptr fs:[0],edx
 005376E7    mov         esp,ebp
 005376E9    pop         ebp
 005376EA    ret
end;*}

//005376EC
{*function sub_005376EC(?:?):?;
begin
 005376EC    push        ebp
 005376ED    mov         ebp,esp
 005376EF    add         esp,0FFFFFFEC
 005376F2    mov         dword ptr [ebp-4],eax
 005376F5    mov         eax,dword ptr [ebp-4]
 005376F8    call        005312C8
 005376FD    mov         dword ptr [ebp-14],eax
 00537700    mov         edx,dword ptr [ebp-14]
 00537703    mov         dword ptr [ebp-0C],edx
 00537706    add         dword ptr [ebp-0C],4
 0053770A    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00537710    mov         eax,dword ptr [ebp-0C]
 00537713    xor         edx,edx
 00537715    mov         dl,byte ptr [ecx+eax]
 00537718    mov         dword ptr [ebp-10],edx
 0053771B    inc         dword ptr [ebp-0C]
 0053771E    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00537724    mov         eax,dword ptr [ebp-0C]
 00537727    mov         dl,byte ptr [ecx+eax]
 0053772A    mov         byte ptr [ebp-5],dl
 0053772D    xor         ecx,ecx
 0053772F    mov         cl,byte ptr [ebp-5]
 00537732    inc         ecx
 00537733    add         dword ptr [ebp-0C],ecx
 00537736    mov         eax,dword ptr [ebp-10]
 00537739    cmp         eax,0E
>0053773C    jne         0053774C
 0053773E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00537744    mov         ecx,dword ptr [ebp-0C]
 00537747    mov         eax,dword ptr [edx+ecx]
>0053774A    jmp         0053774E
 0053774C    xor         eax,eax
 0053774E    mov         esp,ebp
 00537750    pop         ebp
 00537751    ret
end;*}

//00537754
{*function sub_00537754(?:AnsiString; ?:?):?;
begin
 00537754    push        ebp
 00537755    mov         ebp,esp
 00537757    add         esp,0FFFFFEAC
 0053775D    mov         dword ptr [ebp-138],edx
 00537763    mov         dword ptr [ebp-4],eax
 00537766    mov         eax,6DF158
 0053776B    call        0066FECC
 00537770    mov         dword ptr [ebp-118],1
 0053777A    lea         edx,[ebp-4]
 0053777D    lea         eax,[ebp-4]
 00537780    call        0067DAEC
 00537785    inc         dword ptr [ebp-118]
 0053778B    mov         word ptr [ebp-124],8
 00537794    mov         dword ptr [ebp-144],0FFFFFFFF
 0053779E    mov         word ptr [ebp-124],14
 005377A7    lea         eax,[ebp-34]
 005377AA    call        0046DFF0
 005377AF    add         dword ptr [ebp-118],3
 005377B6    mov         word ptr [ebp-124],8
 005377BF    mov         word ptr [ebp-124],20
 005377C8    lea         eax,[ebp-38]
 005377CB    call        00401EA8
 005377D0    inc         dword ptr [ebp-118]
 005377D6    mov         word ptr [ebp-124],8
 005377DF    mov         word ptr [ebp-124],2C
 005377E8    lea         eax,[ebp-3C]
 005377EB    call        00401EA8
 005377F0    inc         dword ptr [ebp-118]
 005377F6    mov         word ptr [ebp-124],8
 005377FF    mov         word ptr [ebp-124],38
 00537808    lea         eax,[ebp-40]
 0053780B    call        00401EA8
 00537810    inc         dword ptr [ebp-118]
 00537816    mov         word ptr [ebp-124],8
 0053781F    mov         word ptr [ebp-124],44
 00537828    lea         eax,[ebp-44]
 0053782B    call        00401EA8
 00537830    inc         dword ptr [ebp-118]
 00537836    mov         word ptr [ebp-124],8
 0053783F    mov         edx,dword ptr [ebp-138]
 00537845    mov         dword ptr [edx],4
 0053784B    mov         word ptr [ebp-124],50
 00537854    mov         edx,6DC870
 00537859    lea         eax,[ebp-48]
 0053785C    call        0067DAB4
 00537861    inc         dword ptr [ebp-118]
 00537867    lea         edx,[ebp-48]
 0053786A    lea         eax,[ebp-4]
 0053786D    call        0067DD9C
 00537872    push        eax
 00537873    dec         dword ptr [ebp-118]
 00537879    lea         eax,[ebp-48]
 0053787C    mov         edx,2
 00537881    call        0067DCA0
 00537886    pop         ecx
 00537887    test        cl,cl
>00537889    je          00539A4C
 0053788F    mov         word ptr [ebp-124],5C
 00537898    mov         edx,6DC871
 0053789D    lea         eax,[ebp-50]
 005378A0    call        0067DAB4
 005378A5    inc         dword ptr [ebp-118]
 005378AB    lea         edx,[ebp-50]
 005378AE    lea         eax,[ebp-4]
 005378B1    call        0067DEF4
 005378B6    push        eax
 005378B7    dec         dword ptr [ebp-118]
 005378BD    lea         eax,[ebp-50]
 005378C0    mov         edx,2
 005378C5    call        0067DCA0
 005378CA    pop         ecx
 005378CB    test        ecx,ecx
>005378CD    je          00537A29
 005378D3    mov         word ptr [ebp-124],68
 005378DC    mov         edx,6DC877
 005378E1    lea         eax,[ebp-54]
 005378E4    call        0067DAB4
 005378E9    inc         dword ptr [ebp-118]
 005378EF    lea         edx,[ebp-54]
 005378F2    lea         eax,[ebp-4]
 005378F5    call        0067DEF4
 005378FA    push        eax
 005378FB    dec         dword ptr [ebp-118]
 00537901    lea         eax,[ebp-54]
 00537904    mov         edx,2
 00537909    call        0067DCA0
 0053790E    pop         ecx
 0053790F    test        ecx,ecx
>00537911    je          005379A0
 00537917    mov         al,11
 00537919    push        eax
 0053791A    dec         dword ptr [ebp-118]
 00537920    lea         eax,[ebp-44]
 00537923    mov         edx,2
 00537928    call        0067DCA0
 0053792D    dec         dword ptr [ebp-118]
 00537933    lea         eax,[ebp-40]
 00537936    mov         edx,2
 0053793B    call        0067DCA0
 00537940    dec         dword ptr [ebp-118]
 00537946    lea         eax,[ebp-3C]
 00537949    mov         edx,2
 0053794E    call        0067DCA0
 00537953    dec         dword ptr [ebp-118]
 00537959    lea         eax,[ebp-38]
 0053795C    mov         edx,2
 00537961    call        0067DCA0
 00537966    sub         dword ptr [ebp-118],3
 0053796D    lea         eax,[ebp-34]
 00537970    mov         edx,2
 00537975    call        0046E124
 0053797A    dec         dword ptr [ebp-118]
 00537980    lea         eax,[ebp-4]
 00537983    mov         edx,2
 00537988    call        0067DCA0
 0053798D    pop         eax
 0053798E    mov         edx,dword ptr [ebp-134]
 00537994    mov         dword ptr fs:[0],edx
>0053799B    jmp         00539AD0
 005379A0    mov         al,0D
 005379A2    push        eax
 005379A3    dec         dword ptr [ebp-118]
 005379A9    lea         eax,[ebp-44]
 005379AC    mov         edx,2
 005379B1    call        0067DCA0
 005379B6    dec         dword ptr [ebp-118]
 005379BC    lea         eax,[ebp-40]
 005379BF    mov         edx,2
 005379C4    call        0067DCA0
 005379C9    dec         dword ptr [ebp-118]
 005379CF    lea         eax,[ebp-3C]
 005379D2    mov         edx,2
 005379D7    call        0067DCA0
 005379DC    dec         dword ptr [ebp-118]
 005379E2    lea         eax,[ebp-38]
 005379E5    mov         edx,2
 005379EA    call        0067DCA0
 005379EF    sub         dword ptr [ebp-118],3
 005379F6    lea         eax,[ebp-34]
 005379F9    mov         edx,2
 005379FE    call        0046E124
 00537A03    dec         dword ptr [ebp-118]
 00537A09    lea         eax,[ebp-4]
 00537A0C    mov         edx,2
 00537A11    call        0067DCA0
 00537A16    pop         eax
 00537A17    mov         edx,dword ptr [ebp-134]
 00537A1D    mov         dword ptr fs:[0],edx
>00537A24    jmp         00539AD0
 00537A29    mov         word ptr [ebp-124],74
 00537A32    mov         edx,6DC880
 00537A37    lea         eax,[ebp-58]
 00537A3A    call        0067DAB4
 00537A3F    inc         dword ptr [ebp-118]
 00537A45    lea         edx,[ebp-58]
 00537A48    lea         eax,[ebp-4]
 00537A4B    call        0067E2B8
 00537A50    mov         dword ptr [ebp-140],eax
 00537A56    dec         dword ptr [ebp-118]
 00537A5C    lea         eax,[ebp-58]
 00537A5F    mov         edx,2
 00537A64    call        0067DCA0
 00537A69    mov         ecx,dword ptr [ebp-140]
 00537A6F    dec         ecx
>00537A70    jle         00537ADA
 00537A72    mov         edx,dword ptr [ebp-140]
 00537A78    inc         edx
 00537A79    lea         eax,[ebp-4]
 00537A7C    call        00403C2C
 00537A81    movsx       ecx,byte ptr [eax]
 00537A84    cmp         ecx,3A
>00537A87    je          00537ADA
 00537A89    mov         word ptr [ebp-124],80
 00537A92    lea         eax,[ebp-5C]
 00537A95    call        00401EA8
 00537A9A    push        eax
 00537A9B    inc         dword ptr [ebp-118]
 00537AA1    lea         eax,[ebp-4]
 00537AA4    call        00405290
 00537AA9    mov         ecx,eax
 00537AAB    mov         edx,dword ptr [ebp-140]
 00537AB1    inc         edx
 00537AB2    lea         eax,[ebp-4]
 00537AB5    call        0067E0BC
 00537ABA    lea         edx,[ebp-5C]
 00537ABD    lea         eax,[ebp-38]
 00537AC0    call        0067DCD0
 00537AC5    dec         dword ptr [ebp-118]
 00537ACB    lea         eax,[ebp-5C]
 00537ACE    mov         edx,2
 00537AD3    call        0067DCA0
>00537AD8    jmp         00537AE5
 00537ADA    lea         edx,[ebp-4]
 00537ADD    lea         eax,[ebp-38]
 00537AE0    call        0067DCD0
 00537AE5    lea         eax,[ebp-38]
 00537AE8    mov         edx,1
 00537AED    call        00403C2C
 00537AF2    movsx       ecx,byte ptr [eax]
 00537AF5    cmp         ecx,5E
>00537AF8    je          00537B45
 00537AFA    mov         word ptr [ebp-124],8C
 00537B03    mov         edx,6DC882
 00537B08    lea         eax,[ebp-60]
 00537B0B    call        0067DAB4
 00537B10    inc         dword ptr [ebp-118]
 00537B16    mov         edx,dword ptr [eax]
 00537B18    mov         eax,dword ptr [ebp-38]
 00537B1B    call        SameText
 00537B20    test        al,al
 00537B22    setne       cl
 00537B25    and         ecx,1
 00537B28    push        ecx
 00537B29    dec         dword ptr [ebp-118]
 00537B2F    lea         eax,[ebp-60]
 00537B32    mov         edx,2
 00537B37    call        0067DCA0
 00537B3C    pop         ecx
 00537B3D    test        ecx,ecx
>00537B3F    je          00537BCE
 00537B45    mov         al,14
 00537B47    push        eax
 00537B48    dec         dword ptr [ebp-118]
 00537B4E    lea         eax,[ebp-44]
 00537B51    mov         edx,2
 00537B56    call        0067DCA0
 00537B5B    dec         dword ptr [ebp-118]
 00537B61    lea         eax,[ebp-40]
 00537B64    mov         edx,2
 00537B69    call        0067DCA0
 00537B6E    dec         dword ptr [ebp-118]
 00537B74    lea         eax,[ebp-3C]
 00537B77    mov         edx,2
 00537B7C    call        0067DCA0
 00537B81    dec         dword ptr [ebp-118]
 00537B87    lea         eax,[ebp-38]
 00537B8A    mov         edx,2
 00537B8F    call        0067DCA0
 00537B94    sub         dword ptr [ebp-118],3
 00537B9B    lea         eax,[ebp-34]
 00537B9E    mov         edx,2
 00537BA3    call        0046E124
 00537BA8    dec         dword ptr [ebp-118]
 00537BAE    lea         eax,[ebp-4]
 00537BB1    mov         edx,2
 00537BB6    call        0067DCA0
 00537BBB    pop         eax
 00537BBC    mov         edx,dword ptr [ebp-134]
 00537BC2    mov         dword ptr fs:[0],edx
>00537BC9    jmp         00539AD0
 00537BCE    mov         word ptr [ebp-124],98
 00537BD7    mov         edx,6DC88A
 00537BDC    lea         eax,[ebp-64]
 00537BDF    call        0067DAB4
 00537BE4    inc         dword ptr [ebp-118]
 00537BEA    mov         edx,dword ptr [eax]
 00537BEC    mov         eax,dword ptr [ebp-38]
 00537BEF    call        SameText
 00537BF4    test        al,al
>00537BF6    jne         00537CBE
 00537BFC    mov         edx,6DC892
 00537C01    lea         eax,[ebp-68]
 00537C04    call        0067DAB4
 00537C09    inc         dword ptr [ebp-118]
 00537C0F    mov         edx,dword ptr [eax]
 00537C11    mov         eax,dword ptr [ebp-38]
 00537C14    call        SameText
 00537C19    test        al,al
 00537C1B    setne       cl
 00537C1E    and         ecx,1
 00537C21    push        ecx
 00537C22    dec         dword ptr [ebp-118]
 00537C28    lea         eax,[ebp-68]
 00537C2B    mov         edx,2
 00537C30    call        0067DCA0
 00537C35    pop         ecx
 00537C36    test        ecx,ecx
>00537C38    jne         00537CBE
 00537C3E    mov         edx,6DC89B
 00537C43    lea         eax,[ebp-6C]
 00537C46    call        0067DAB4
 00537C4B    inc         dword ptr [ebp-118]
 00537C51    mov         edx,dword ptr [eax]
 00537C53    mov         eax,dword ptr [ebp-38]
 00537C56    call        SameText
 00537C5B    test        al,al
 00537C5D    setne       cl
 00537C60    and         ecx,1
 00537C63    push        ecx
 00537C64    dec         dword ptr [ebp-118]
 00537C6A    lea         eax,[ebp-6C]
 00537C6D    mov         edx,2
 00537C72    call        0067DCA0
 00537C77    pop         ecx
 00537C78    test        ecx,ecx
>00537C7A    jne         00537CBE
 00537C7C    mov         edx,6DC8A4
 00537C81    lea         eax,[ebp-70]
 00537C84    call        0067DAB4
 00537C89    inc         dword ptr [ebp-118]
 00537C8F    mov         edx,dword ptr [eax]
 00537C91    mov         eax,dword ptr [ebp-38]
 00537C94    call        SameText
 00537C99    test        al,al
 00537C9B    setne       cl
 00537C9E    and         ecx,1
 00537CA1    push        ecx
 00537CA2    dec         dword ptr [ebp-118]
 00537CA8    lea         eax,[ebp-70]
 00537CAB    mov         edx,2
 00537CB0    call        0067DCA0
 00537CB5    pop         ecx
 00537CB6    test        ecx,ecx
>00537CB8    jne         00537CBE
 00537CBA    xor         eax,eax
>00537CBC    jmp         00537CC3
 00537CBE    mov         eax,1
 00537CC3    push        eax
 00537CC4    dec         dword ptr [ebp-118]
 00537CCA    lea         eax,[ebp-64]
 00537CCD    mov         edx,2
 00537CD2    call        0067DCA0
 00537CD7    pop         ecx
 00537CD8    test        cl,cl
>00537CDA    je          00537D69
 00537CE0    mov         al,3
 00537CE2    push        eax
 00537CE3    dec         dword ptr [ebp-118]
 00537CE9    lea         eax,[ebp-44]
 00537CEC    mov         edx,2
 00537CF1    call        0067DCA0
 00537CF6    dec         dword ptr [ebp-118]
 00537CFC    lea         eax,[ebp-40]
 00537CFF    mov         edx,2
 00537D04    call        0067DCA0
 00537D09    dec         dword ptr [ebp-118]
 00537D0F    lea         eax,[ebp-3C]
 00537D12    mov         edx,2
 00537D17    call        0067DCA0
 00537D1C    dec         dword ptr [ebp-118]
 00537D22    lea         eax,[ebp-38]
 00537D25    mov         edx,2
 00537D2A    call        0067DCA0
 00537D2F    sub         dword ptr [ebp-118],3
 00537D36    lea         eax,[ebp-34]
 00537D39    mov         edx,2
 00537D3E    call        0046E124
 00537D43    dec         dword ptr [ebp-118]
 00537D49    lea         eax,[ebp-4]
 00537D4C    mov         edx,2
 00537D51    call        0067DCA0
 00537D56    pop         eax
 00537D57    mov         edx,dword ptr [ebp-134]
 00537D5D    mov         dword ptr fs:[0],edx
>00537D64    jmp         00539AD0
 00537D69    mov         word ptr [ebp-124],0A4
 00537D72    mov         edx,6DC8AD
 00537D77    lea         eax,[ebp-74]
 00537D7A    call        0067DAB4
 00537D7F    inc         dword ptr [ebp-118]
 00537D85    mov         edx,dword ptr [eax]
 00537D87    mov         eax,dword ptr [ebp-38]
 00537D8A    call        SameText
 00537D8F    test        al,al
>00537D91    jne         00537FC1
 00537D97    mov         edx,6DC8B6
 00537D9C    lea         eax,[ebp-78]
 00537D9F    call        0067DAB4
 00537DA4    inc         dword ptr [ebp-118]
 00537DAA    mov         edx,dword ptr [eax]
 00537DAC    mov         eax,dword ptr [ebp-38]
 00537DAF    call        SameText
 00537DB4    test        al,al
 00537DB6    setne       cl
 00537DB9    and         ecx,1
 00537DBC    push        ecx
 00537DBD    dec         dword ptr [ebp-118]
 00537DC3    lea         eax,[ebp-78]
 00537DC6    mov         edx,2
 00537DCB    call        0067DCA0
 00537DD0    pop         ecx
 00537DD1    test        ecx,ecx
>00537DD3    jne         00537FC1
 00537DD9    mov         edx,6DC8BB
 00537DDE    lea         eax,[ebp-7C]
 00537DE1    call        0067DAB4
 00537DE6    inc         dword ptr [ebp-118]
 00537DEC    mov         edx,dword ptr [eax]
 00537DEE    mov         eax,dword ptr [ebp-38]
 00537DF1    call        SameText
 00537DF6    test        al,al
 00537DF8    setne       cl
 00537DFB    and         ecx,1
 00537DFE    push        ecx
 00537DFF    dec         dword ptr [ebp-118]
 00537E05    lea         eax,[ebp-7C]
 00537E08    mov         edx,2
 00537E0D    call        0067DCA0
 00537E12    pop         ecx
 00537E13    test        ecx,ecx
>00537E15    jne         00537FC1
 00537E1B    mov         edx,6DC8C4
 00537E20    lea         eax,[ebp-80]
 00537E23    call        0067DAB4
 00537E28    inc         dword ptr [ebp-118]
 00537E2E    mov         edx,dword ptr [eax]
 00537E30    mov         eax,dword ptr [ebp-38]
 00537E33    call        SameText
 00537E38    test        al,al
 00537E3A    setne       cl
 00537E3D    and         ecx,1
 00537E40    push        ecx
 00537E41    dec         dword ptr [ebp-118]
 00537E47    lea         eax,[ebp-80]
 00537E4A    mov         edx,2
 00537E4F    call        0067DCA0
 00537E54    pop         ecx
 00537E55    test        ecx,ecx
>00537E57    jne         00537FC1
 00537E5D    mov         edx,6DC8C9
 00537E62    lea         eax,[ebp-84]
 00537E68    call        0067DAB4
 00537E6D    inc         dword ptr [ebp-118]
 00537E73    mov         edx,dword ptr [eax]
 00537E75    mov         eax,dword ptr [ebp-38]
 00537E78    call        SameText
 00537E7D    test        al,al
 00537E7F    setne       cl
 00537E82    and         ecx,1
 00537E85    push        ecx
 00537E86    dec         dword ptr [ebp-118]
 00537E8C    lea         eax,[ebp-84]
 00537E92    mov         edx,2
 00537E97    call        0067DCA0
 00537E9C    pop         ecx
 00537E9D    test        ecx,ecx
>00537E9F    jne         00537FC1
 00537EA5    mov         edx,6DC8CF
 00537EAA    lea         eax,[ebp-88]
 00537EB0    call        0067DAB4
 00537EB5    inc         dword ptr [ebp-118]
 00537EBB    mov         edx,dword ptr [eax]
 00537EBD    mov         eax,dword ptr [ebp-38]
 00537EC0    call        SameText
 00537EC5    test        al,al
 00537EC7    setne       cl
 00537ECA    and         ecx,1
 00537ECD    push        ecx
 00537ECE    dec         dword ptr [ebp-118]
 00537ED4    lea         eax,[ebp-88]
 00537EDA    mov         edx,2
 00537EDF    call        0067DCA0
 00537EE4    pop         ecx
 00537EE5    test        ecx,ecx
>00537EE7    jne         00537FC1
 00537EED    mov         edx,6DC8D7
 00537EF2    lea         eax,[ebp-8C]
 00537EF8    call        0067DAB4
 00537EFD    inc         dword ptr [ebp-118]
 00537F03    mov         edx,dword ptr [eax]
 00537F05    mov         eax,dword ptr [ebp-38]
 00537F08    call        SameText
 00537F0D    test        al,al
 00537F0F    setne       cl
 00537F12    and         ecx,1
 00537F15    push        ecx
 00537F16    dec         dword ptr [ebp-118]
 00537F1C    lea         eax,[ebp-8C]
 00537F22    mov         edx,2
 00537F27    call        0067DCA0
 00537F2C    pop         ecx
 00537F2D    test        ecx,ecx
>00537F2F    jne         00537FC1
 00537F35    mov         edx,6DC8DF
 00537F3A    lea         eax,[ebp-90]
 00537F40    call        0067DAB4
 00537F45    inc         dword ptr [ebp-118]
 00537F4B    mov         edx,dword ptr [eax]
 00537F4D    mov         eax,dword ptr [ebp-38]
 00537F50    call        SameText
 00537F55    test        al,al
 00537F57    setne       cl
 00537F5A    and         ecx,1
 00537F5D    push        ecx
 00537F5E    dec         dword ptr [ebp-118]
 00537F64    lea         eax,[ebp-90]
 00537F6A    mov         edx,2
 00537F6F    call        0067DCA0
 00537F74    pop         ecx
 00537F75    test        ecx,ecx
>00537F77    jne         00537FC1
 00537F79    mov         edx,6DC8E8
 00537F7E    lea         eax,[ebp-94]
 00537F84    call        0067DAB4
 00537F89    inc         dword ptr [ebp-118]
 00537F8F    mov         edx,dword ptr [eax]
 00537F91    mov         eax,dword ptr [ebp-38]
 00537F94    call        SameText
 00537F99    test        al,al
 00537F9B    setne       cl
 00537F9E    and         ecx,1
 00537FA1    push        ecx
 00537FA2    dec         dword ptr [ebp-118]
 00537FA8    lea         eax,[ebp-94]
 00537FAE    mov         edx,2
 00537FB3    call        0067DCA0
 00537FB8    pop         ecx
 00537FB9    test        ecx,ecx
>00537FBB    jne         00537FC1
 00537FBD    xor         eax,eax
>00537FBF    jmp         00537FC6
 00537FC1    mov         eax,1
 00537FC6    push        eax
 00537FC7    dec         dword ptr [ebp-118]
 00537FCD    lea         eax,[ebp-74]
 00537FD0    mov         edx,2
 00537FD5    call        0067DCA0
 00537FDA    pop         ecx
 00537FDB    test        cl,cl
>00537FDD    je          0053806C
 00537FE3    mov         al,1
 00537FE5    push        eax
 00537FE6    dec         dword ptr [ebp-118]
 00537FEC    lea         eax,[ebp-44]
 00537FEF    mov         edx,2
 00537FF4    call        0067DCA0
 00537FF9    dec         dword ptr [ebp-118]
 00537FFF    lea         eax,[ebp-40]
 00538002    mov         edx,2
 00538007    call        0067DCA0
 0053800C    dec         dword ptr [ebp-118]
 00538012    lea         eax,[ebp-3C]
 00538015    mov         edx,2
 0053801A    call        0067DCA0
 0053801F    dec         dword ptr [ebp-118]
 00538025    lea         eax,[ebp-38]
 00538028    mov         edx,2
 0053802D    call        0067DCA0
 00538032    sub         dword ptr [ebp-118],3
 00538039    lea         eax,[ebp-34]
 0053803C    mov         edx,2
 00538041    call        0046E124
 00538046    dec         dword ptr [ebp-118]
 0053804C    lea         eax,[ebp-4]
 0053804F    mov         edx,2
 00538054    call        0067DCA0
 00538059    pop         eax
 0053805A    mov         edx,dword ptr [ebp-134]
 00538060    mov         dword ptr fs:[0],edx
>00538067    jmp         00539AD0
 0053806C    mov         word ptr [ebp-124],0B0
 00538075    mov         edx,6DC8F1
 0053807A    lea         eax,[ebp-98]
 00538080    call        0067DAB4
 00538085    inc         dword ptr [ebp-118]
 0053808B    mov         edx,dword ptr [eax]
 0053808D    mov         eax,dword ptr [ebp-38]
 00538090    call        SameText
 00538095    push        eax
 00538096    dec         dword ptr [ebp-118]
 0053809C    lea         eax,[ebp-98]
 005380A2    mov         edx,2
 005380A7    call        0067DCA0
 005380AC    pop         ecx
 005380AD    test        cl,cl
>005380AF    je          0053813E
 005380B5    mov         al,2
 005380B7    push        eax
 005380B8    dec         dword ptr [ebp-118]
 005380BE    lea         eax,[ebp-44]
 005380C1    mov         edx,2
 005380C6    call        0067DCA0
 005380CB    dec         dword ptr [ebp-118]
 005380D1    lea         eax,[ebp-40]
 005380D4    mov         edx,2
 005380D9    call        0067DCA0
 005380DE    dec         dword ptr [ebp-118]
 005380E4    lea         eax,[ebp-3C]
 005380E7    mov         edx,2
 005380EC    call        0067DCA0
 005380F1    dec         dword ptr [ebp-118]
 005380F7    lea         eax,[ebp-38]
 005380FA    mov         edx,2
 005380FF    call        0067DCA0
 00538104    sub         dword ptr [ebp-118],3
 0053810B    lea         eax,[ebp-34]
 0053810E    mov         edx,2
 00538113    call        0046E124
 00538118    dec         dword ptr [ebp-118]
 0053811E    lea         eax,[ebp-4]
 00538121    mov         edx,2
 00538126    call        0067DCA0
 0053812B    pop         eax
 0053812C    mov         edx,dword ptr [ebp-134]
 00538132    mov         dword ptr fs:[0],edx
>00538139    jmp         00539AD0
 0053813E    mov         word ptr [ebp-124],0BC
 00538147    mov         edx,6DC8F6
 0053814C    lea         eax,[ebp-9C]
 00538152    call        0067DAB4
 00538157    inc         dword ptr [ebp-118]
 0053815D    mov         edx,dword ptr [eax]
 0053815F    mov         eax,dword ptr [ebp-38]
 00538162    call        SameText
 00538167    test        al,al
>00538169    jne         005381B3
 0053816B    mov         edx,6DC8FB
 00538170    lea         eax,[ebp-0A0]
 00538176    call        0067DAB4
 0053817B    inc         dword ptr [ebp-118]
 00538181    mov         edx,dword ptr [eax]
 00538183    mov         eax,dword ptr [ebp-38]
 00538186    call        SameText
 0053818B    test        al,al
 0053818D    setne       cl
 00538190    and         ecx,1
 00538193    push        ecx
 00538194    dec         dword ptr [ebp-118]
 0053819A    lea         eax,[ebp-0A0]
 005381A0    mov         edx,2
 005381A5    call        0067DCA0
 005381AA    pop         ecx
 005381AB    test        ecx,ecx
>005381AD    jne         005381B3
 005381AF    xor         eax,eax
>005381B1    jmp         005381B8
 005381B3    mov         eax,1
 005381B8    push        eax
 005381B9    dec         dword ptr [ebp-118]
 005381BF    lea         eax,[ebp-9C]
 005381C5    mov         edx,2
 005381CA    call        0067DCA0
 005381CF    pop         ecx
 005381D0    test        cl,cl
>005381D2    je          00538261
 005381D8    mov         al,0E
 005381DA    push        eax
 005381DB    dec         dword ptr [ebp-118]
 005381E1    lea         eax,[ebp-44]
 005381E4    mov         edx,2
 005381E9    call        0067DCA0
 005381EE    dec         dword ptr [ebp-118]
 005381F4    lea         eax,[ebp-40]
 005381F7    mov         edx,2
 005381FC    call        0067DCA0
 00538201    dec         dword ptr [ebp-118]
 00538207    lea         eax,[ebp-3C]
 0053820A    mov         edx,2
 0053820F    call        0067DCA0
 00538214    dec         dword ptr [ebp-118]
 0053821A    lea         eax,[ebp-38]
 0053821D    mov         edx,2
 00538222    call        0067DCA0
 00538227    sub         dword ptr [ebp-118],3
 0053822E    lea         eax,[ebp-34]
 00538231    mov         edx,2
 00538236    call        0046E124
 0053823B    dec         dword ptr [ebp-118]
 00538241    lea         eax,[ebp-4]
 00538244    mov         edx,2
 00538249    call        0067DCA0
 0053824E    pop         eax
 0053824F    mov         edx,dword ptr [ebp-134]
 00538255    mov         dword ptr fs:[0],edx
>0053825C    jmp         00539AD0
 00538261    mov         word ptr [ebp-124],0C8
 0053826A    mov         edx,6DC900
 0053826F    lea         eax,[ebp-0A4]
 00538275    call        0067DAB4
 0053827A    inc         dword ptr [ebp-118]
 00538280    mov         edx,dword ptr [eax]
 00538282    mov         eax,dword ptr [ebp-38]
 00538285    call        SameText
 0053828A    push        eax
 0053828B    dec         dword ptr [ebp-118]
 00538291    lea         eax,[ebp-0A4]
 00538297    mov         edx,2
 0053829C    call        0067DCA0
 005382A1    pop         ecx
 005382A2    test        cl,cl
>005382A4    je          0053833F
 005382AA    mov         eax,dword ptr [ebp-138]
 005382B0    mov         dword ptr [eax],8
 005382B6    mov         al,10
 005382B8    push        eax
 005382B9    dec         dword ptr [ebp-118]
 005382BF    lea         eax,[ebp-44]
 005382C2    mov         edx,2
 005382C7    call        0067DCA0
 005382CC    dec         dword ptr [ebp-118]
 005382D2    lea         eax,[ebp-40]
 005382D5    mov         edx,2
 005382DA    call        0067DCA0
 005382DF    dec         dword ptr [ebp-118]
 005382E5    lea         eax,[ebp-3C]
 005382E8    mov         edx,2
 005382ED    call        0067DCA0
 005382F2    dec         dword ptr [ebp-118]
 005382F8    lea         eax,[ebp-38]
 005382FB    mov         edx,2
 00538300    call        0067DCA0
 00538305    sub         dword ptr [ebp-118],3
 0053830C    lea         eax,[ebp-34]
 0053830F    mov         edx,2
 00538314    call        0046E124
 00538319    dec         dword ptr [ebp-118]
 0053831F    lea         eax,[ebp-4]
 00538322    mov         edx,2
 00538327    call        0067DCA0
 0053832C    pop         eax
 0053832D    mov         edx,dword ptr [ebp-134]
 00538333    mov         dword ptr fs:[0],edx
>0053833A    jmp         00539AD0
 0053833F    mov         word ptr [ebp-124],0D4
 00538348    mov         edx,6DC906
 0053834D    lea         eax,[ebp-0A8]
 00538353    call        0067DAB4
 00538358    inc         dword ptr [ebp-118]
 0053835E    mov         edx,dword ptr [eax]
 00538360    mov         eax,dword ptr [ebp-38]
 00538363    call        SameText
 00538368    push        eax
 00538369    dec         dword ptr [ebp-118]
 0053836F    lea         eax,[ebp-0A8]
 00538375    mov         edx,2
 0053837A    call        0067DCA0
 0053837F    pop         ecx
 00538380    test        cl,cl
>00538382    je          00538411
 00538388    mov         al,4
 0053838A    push        eax
 0053838B    dec         dword ptr [ebp-118]
 00538391    lea         eax,[ebp-44]
 00538394    mov         edx,2
 00538399    call        0067DCA0
 0053839E    dec         dword ptr [ebp-118]
 005383A4    lea         eax,[ebp-40]
 005383A7    mov         edx,2
 005383AC    call        0067DCA0
 005383B1    dec         dword ptr [ebp-118]
 005383B7    lea         eax,[ebp-3C]
 005383BA    mov         edx,2
 005383BF    call        0067DCA0
 005383C4    dec         dword ptr [ebp-118]
 005383CA    lea         eax,[ebp-38]
 005383CD    mov         edx,2
 005383D2    call        0067DCA0
 005383D7    sub         dword ptr [ebp-118],3
 005383DE    lea         eax,[ebp-34]
 005383E1    mov         edx,2
 005383E6    call        0046E124
 005383EB    dec         dword ptr [ebp-118]
 005383F1    lea         eax,[ebp-4]
 005383F4    mov         edx,2
 005383F9    call        0067DCA0
 005383FE    pop         eax
 005383FF    mov         edx,dword ptr [ebp-134]
 00538405    mov         dword ptr fs:[0],edx
>0053840C    jmp         00539AD0
 00538411    mov         word ptr [ebp-124],0E0
 0053841A    mov         edx,6DC90D
 0053841F    lea         eax,[ebp-0AC]
 00538425    call        0067DAB4
 0053842A    inc         dword ptr [ebp-118]
 00538430    mov         edx,dword ptr [eax]
 00538432    mov         eax,dword ptr [ebp-38]
 00538435    call        SameText
 0053843A    test        al,al
>0053843C    jne         00538636
 00538442    mov         edx,6DC914
 00538447    lea         eax,[ebp-0B0]
 0053844D    call        0067DAB4
 00538452    inc         dword ptr [ebp-118]
 00538458    mov         edx,dword ptr [eax]
 0053845A    mov         eax,dword ptr [ebp-38]
 0053845D    call        SameText
 00538462    test        al,al
 00538464    setne       cl
 00538467    and         ecx,1
 0053846A    push        ecx
 0053846B    dec         dword ptr [ebp-118]
 00538471    lea         eax,[ebp-0B0]
 00538477    mov         edx,2
 0053847C    call        0067DCA0
 00538481    pop         ecx
 00538482    test        ecx,ecx
>00538484    jne         00538636
 0053848A    mov         edx,6DC919
 0053848F    lea         eax,[ebp-0B4]
 00538495    call        0067DAB4
 0053849A    inc         dword ptr [ebp-118]
 005384A0    mov         edx,dword ptr [eax]
 005384A2    mov         eax,dword ptr [ebp-38]
 005384A5    call        SameText
 005384AA    test        al,al
 005384AC    setne       cl
 005384AF    and         ecx,1
 005384B2    push        ecx
 005384B3    dec         dword ptr [ebp-118]
 005384B9    lea         eax,[ebp-0B4]
 005384BF    mov         edx,2
 005384C4    call        0067DCA0
 005384C9    pop         ecx
 005384CA    test        ecx,ecx
>005384CC    jne         00538636
 005384D2    mov         edx,6DC920
 005384D7    lea         eax,[ebp-0B8]
 005384DD    call        0067DAB4
 005384E2    inc         dword ptr [ebp-118]
 005384E8    mov         edx,dword ptr [eax]
 005384EA    mov         eax,dword ptr [ebp-38]
 005384ED    call        SameText
 005384F2    test        al,al
 005384F4    setne       cl
 005384F7    and         ecx,1
 005384FA    push        ecx
 005384FB    dec         dword ptr [ebp-118]
 00538501    lea         eax,[ebp-0B8]
 00538507    mov         edx,2
 0053850C    call        0067DCA0
 00538511    pop         ecx
 00538512    test        ecx,ecx
>00538514    jne         00538636
 0053851A    mov         edx,6DC926
 0053851F    lea         eax,[ebp-0BC]
 00538525    call        0067DAB4
 0053852A    inc         dword ptr [ebp-118]
 00538530    mov         edx,dword ptr [eax]
 00538532    mov         eax,dword ptr [ebp-38]
 00538535    call        SameText
 0053853A    test        al,al
 0053853C    setne       cl
 0053853F    and         ecx,1
 00538542    push        ecx
 00538543    dec         dword ptr [ebp-118]
 00538549    lea         eax,[ebp-0BC]
 0053854F    mov         edx,2
 00538554    call        0067DCA0
 00538559    pop         ecx
 0053855A    test        ecx,ecx
>0053855C    jne         00538636
 00538562    mov         edx,6DC92C
 00538567    lea         eax,[ebp-0C0]
 0053856D    call        0067DAB4
 00538572    inc         dword ptr [ebp-118]
 00538578    mov         edx,dword ptr [eax]
 0053857A    mov         eax,dword ptr [ebp-38]
 0053857D    call        SameText
 00538582    test        al,al
 00538584    setne       cl
 00538587    and         ecx,1
 0053858A    push        ecx
 0053858B    dec         dword ptr [ebp-118]
 00538591    lea         eax,[ebp-0C0]
 00538597    mov         edx,2
 0053859C    call        0067DCA0
 005385A1    pop         ecx
 005385A2    test        ecx,ecx
>005385A4    jne         00538636
 005385AA    mov         edx,6DC936
 005385AF    lea         eax,[ebp-0C4]
 005385B5    call        0067DAB4
 005385BA    inc         dword ptr [ebp-118]
 005385C0    mov         edx,dword ptr [eax]
 005385C2    mov         eax,dword ptr [ebp-38]
 005385C5    call        SameText
 005385CA    test        al,al
 005385CC    setne       cl
 005385CF    and         ecx,1
 005385D2    push        ecx
 005385D3    dec         dword ptr [ebp-118]
 005385D9    lea         eax,[ebp-0C4]
 005385DF    mov         edx,2
 005385E4    call        0067DCA0
 005385E9    pop         ecx
 005385EA    test        ecx,ecx
>005385EC    jne         00538636
 005385EE    mov         edx,6DC93B
 005385F3    lea         eax,[ebp-0C8]
 005385F9    call        0067DAB4
 005385FE    inc         dword ptr [ebp-118]
 00538604    mov         edx,dword ptr [eax]
 00538606    mov         eax,dword ptr [ebp-38]
 00538609    call        SameText
 0053860E    test        al,al
 00538610    setne       cl
 00538613    and         ecx,1
 00538616    push        ecx
 00538617    dec         dword ptr [ebp-118]
 0053861D    lea         eax,[ebp-0C8]
 00538623    mov         edx,2
 00538628    call        0067DCA0
 0053862D    pop         ecx
 0053862E    test        ecx,ecx
>00538630    jne         00538636
 00538632    xor         eax,eax
>00538634    jmp         0053863B
 00538636    mov         eax,1
 0053863B    push        eax
 0053863C    dec         dword ptr [ebp-118]
 00538642    lea         eax,[ebp-0AC]
 00538648    mov         edx,2
 0053864D    call        0067DCA0
 00538652    pop         ecx
 00538653    test        cl,cl
>00538655    je          005386F0
 0053865B    mov         eax,dword ptr [ebp-138]
 00538661    mov         dword ptr [eax],8
 00538667    mov         al,4
 00538669    push        eax
 0053866A    dec         dword ptr [ebp-118]
 00538670    lea         eax,[ebp-44]
 00538673    mov         edx,2
 00538678    call        0067DCA0
 0053867D    dec         dword ptr [ebp-118]
 00538683    lea         eax,[ebp-40]
 00538686    mov         edx,2
 0053868B    call        0067DCA0
 00538690    dec         dword ptr [ebp-118]
 00538696    lea         eax,[ebp-3C]
 00538699    mov         edx,2
 0053869E    call        0067DCA0
 005386A3    dec         dword ptr [ebp-118]
 005386A9    lea         eax,[ebp-38]
 005386AC    mov         edx,2
 005386B1    call        0067DCA0
 005386B6    sub         dword ptr [ebp-118],3
 005386BD    lea         eax,[ebp-34]
 005386C0    mov         edx,2
 005386C5    call        0046E124
 005386CA    dec         dword ptr [ebp-118]
 005386D0    lea         eax,[ebp-4]
 005386D3    mov         edx,2
 005386D8    call        0067DCA0
 005386DD    pop         eax
 005386DE    mov         edx,dword ptr [ebp-134]
 005386E4    mov         dword ptr fs:[0],edx
>005386EB    jmp         00539AD0
 005386F0    mov         word ptr [ebp-124],0EC
 005386F9    mov         edx,6DC944
 005386FE    lea         eax,[ebp-0CC]
 00538704    call        0067DAB4
 00538709    inc         dword ptr [ebp-118]
 0053870F    mov         edx,dword ptr [eax]
 00538711    mov         eax,dword ptr [ebp-38]
 00538714    call        SameText
 00538719    push        eax
 0053871A    dec         dword ptr [ebp-118]
 00538720    lea         eax,[ebp-0CC]
 00538726    mov         edx,2
 0053872B    call        0067DCA0
 00538730    pop         ecx
 00538731    test        cl,cl
>00538733    je          005387CE
 00538739    mov         eax,dword ptr [ebp-138]
 0053873F    mov         dword ptr [eax],0C
 00538745    mov         al,4
 00538747    push        eax
 00538748    dec         dword ptr [ebp-118]
 0053874E    lea         eax,[ebp-44]
 00538751    mov         edx,2
 00538756    call        0067DCA0
 0053875B    dec         dword ptr [ebp-118]
 00538761    lea         eax,[ebp-40]
 00538764    mov         edx,2
 00538769    call        0067DCA0
 0053876E    dec         dword ptr [ebp-118]
 00538774    lea         eax,[ebp-3C]
 00538777    mov         edx,2
 0053877C    call        0067DCA0
 00538781    dec         dword ptr [ebp-118]
 00538787    lea         eax,[ebp-38]
 0053878A    mov         edx,2
 0053878F    call        0067DCA0
 00538794    sub         dword ptr [ebp-118],3
 0053879B    lea         eax,[ebp-34]
 0053879E    mov         edx,2
 005387A3    call        0046E124
 005387A8    dec         dword ptr [ebp-118]
 005387AE    lea         eax,[ebp-4]
 005387B1    mov         edx,2
 005387B6    call        0067DCA0
 005387BB    pop         eax
 005387BC    mov         edx,dword ptr [ebp-134]
 005387C2    mov         dword ptr fs:[0],edx
>005387C9    jmp         00539AD0
 005387CE    mov         word ptr [ebp-124],0F8
 005387D7    mov         edx,6DC94D
 005387DC    lea         eax,[ebp-0D0]
 005387E2    call        0067DAB4
 005387E7    inc         dword ptr [ebp-118]
 005387ED    mov         edx,dword ptr [eax]
 005387EF    mov         eax,dword ptr [ebp-38]
 005387F2    call        SameText
 005387F7    push        eax
 005387F8    dec         dword ptr [ebp-118]
 005387FE    lea         eax,[ebp-0D0]
 00538804    mov         edx,2
 00538809    call        0067DCA0
 0053880E    pop         ecx
 0053880F    test        cl,cl
>00538811    je          005388A0
 00538817    mov         al,5
 00538819    push        eax
 0053881A    dec         dword ptr [ebp-118]
 00538820    lea         eax,[ebp-44]
 00538823    mov         edx,2
 00538828    call        0067DCA0
 0053882D    dec         dword ptr [ebp-118]
 00538833    lea         eax,[ebp-40]
 00538836    mov         edx,2
 0053883B    call        0067DCA0
 00538840    dec         dword ptr [ebp-118]
 00538846    lea         eax,[ebp-3C]
 00538849    mov         edx,2
 0053884E    call        0067DCA0
 00538853    dec         dword ptr [ebp-118]
 00538859    lea         eax,[ebp-38]
 0053885C    mov         edx,2
 00538861    call        0067DCA0
 00538866    sub         dword ptr [ebp-118],3
 0053886D    lea         eax,[ebp-34]
 00538870    mov         edx,2
 00538875    call        0046E124
 0053887A    dec         dword ptr [ebp-118]
 00538880    lea         eax,[ebp-4]
 00538883    mov         edx,2
 00538888    call        0067DCA0
 0053888D    pop         eax
 0053888E    mov         edx,dword ptr [ebp-134]
 00538894    mov         dword ptr fs:[0],edx
>0053889B    jmp         00539AD0
 005388A0    mov         word ptr [ebp-124],104
 005388A9    mov         edx,6DC959
 005388AE    lea         eax,[ebp-0D4]
 005388B4    call        0067DAB4
 005388B9    inc         dword ptr [ebp-118]
 005388BF    mov         edx,dword ptr [eax]
 005388C1    mov         eax,dword ptr [ebp-38]
 005388C4    call        SameText
 005388C9    test        al,al
>005388CB    jne         00538915
 005388CD    mov         edx,6DC960
 005388D2    lea         eax,[ebp-0D8]
 005388D8    call        0067DAB4
 005388DD    inc         dword ptr [ebp-118]
 005388E3    mov         edx,dword ptr [eax]
 005388E5    mov         eax,dword ptr [ebp-38]
 005388E8    call        SameText
 005388ED    test        al,al
 005388EF    setne       cl
 005388F2    and         ecx,1
 005388F5    push        ecx
 005388F6    dec         dword ptr [ebp-118]
 005388FC    lea         eax,[ebp-0D8]
 00538902    mov         edx,2
 00538907    call        0067DCA0
 0053890C    pop         ecx
 0053890D    test        ecx,ecx
>0053890F    jne         00538915
 00538911    xor         eax,eax
>00538913    jmp         0053891A
 00538915    mov         eax,1
 0053891A    push        eax
 0053891B    dec         dword ptr [ebp-118]
 00538921    lea         eax,[ebp-0D4]
 00538927    mov         edx,2
 0053892C    call        0067DCA0
 00538931    pop         ecx
 00538932    test        cl,cl
>00538934    je          005389C3
 0053893A    mov         al,0A
 0053893C    push        eax
 0053893D    dec         dword ptr [ebp-118]
 00538943    lea         eax,[ebp-44]
 00538946    mov         edx,2
 0053894B    call        0067DCA0
 00538950    dec         dword ptr [ebp-118]
 00538956    lea         eax,[ebp-40]
 00538959    mov         edx,2
 0053895E    call        0067DCA0
 00538963    dec         dword ptr [ebp-118]
 00538969    lea         eax,[ebp-3C]
 0053896C    mov         edx,2
 00538971    call        0067DCA0
 00538976    dec         dword ptr [ebp-118]
 0053897C    lea         eax,[ebp-38]
 0053897F    mov         edx,2
 00538984    call        0067DCA0
 00538989    sub         dword ptr [ebp-118],3
 00538990    lea         eax,[ebp-34]
 00538993    mov         edx,2
 00538998    call        0046E124
 0053899D    dec         dword ptr [ebp-118]
 005389A3    lea         eax,[ebp-4]
 005389A6    mov         edx,2
 005389AB    call        0067DCA0
 005389B0    pop         eax
 005389B1    mov         edx,dword ptr [ebp-134]
 005389B7    mov         dword ptr fs:[0],edx
>005389BE    jmp         00539AD0
 005389C3    mov         word ptr [ebp-124],110
 005389CC    mov         edx,6DC96B
 005389D1    lea         eax,[ebp-0DC]
 005389D7    call        0067DAB4
 005389DC    inc         dword ptr [ebp-118]
 005389E2    mov         edx,dword ptr [eax]
 005389E4    mov         eax,dword ptr [ebp-38]
 005389E7    call        SameText
 005389EC    push        eax
 005389ED    dec         dword ptr [ebp-118]
 005389F3    lea         eax,[ebp-0DC]
 005389F9    mov         edx,2
 005389FE    call        0067DCA0
 00538A03    pop         ecx
 00538A04    test        cl,cl
>00538A06    je          00538A95
 00538A0C    mov         al,0B
 00538A0E    push        eax
 00538A0F    dec         dword ptr [ebp-118]
 00538A15    lea         eax,[ebp-44]
 00538A18    mov         edx,2
 00538A1D    call        0067DCA0
 00538A22    dec         dword ptr [ebp-118]
 00538A28    lea         eax,[ebp-40]
 00538A2B    mov         edx,2
 00538A30    call        0067DCA0
 00538A35    dec         dword ptr [ebp-118]
 00538A3B    lea         eax,[ebp-3C]
 00538A3E    mov         edx,2
 00538A43    call        0067DCA0
 00538A48    dec         dword ptr [ebp-118]
 00538A4E    lea         eax,[ebp-38]
 00538A51    mov         edx,2
 00538A56    call        0067DCA0
 00538A5B    sub         dword ptr [ebp-118],3
 00538A62    lea         eax,[ebp-34]
 00538A65    mov         edx,2
 00538A6A    call        0046E124
 00538A6F    dec         dword ptr [ebp-118]
 00538A75    lea         eax,[ebp-4]
 00538A78    mov         edx,2
 00538A7D    call        0067DCA0
 00538A82    pop         eax
 00538A83    mov         edx,dword ptr [ebp-134]
 00538A89    mov         dword ptr fs:[0],edx
>00538A90    jmp         00539AD0
 00538A95    mov         word ptr [ebp-124],11C
 00538A9E    mov         edx,6DC976
 00538AA3    lea         eax,[ebp-0E0]
 00538AA9    call        0067DAB4
 00538AAE    inc         dword ptr [ebp-118]
 00538AB4    mov         edx,dword ptr [eax]
 00538AB6    mov         eax,dword ptr [ebp-38]
 00538AB9    call        SameText
 00538ABE    test        al,al
>00538AC0    jne         00538B0A
 00538AC2    mov         edx,6DC984
 00538AC7    lea         eax,[ebp-0E4]
 00538ACD    call        0067DAB4
 00538AD2    inc         dword ptr [ebp-118]
 00538AD8    mov         edx,dword ptr [eax]
 00538ADA    mov         eax,dword ptr [ebp-38]
 00538ADD    call        SameText
 00538AE2    test        al,al
 00538AE4    setne       cl
 00538AE7    and         ecx,1
 00538AEA    push        ecx
 00538AEB    dec         dword ptr [ebp-118]
 00538AF1    lea         eax,[ebp-0E4]
 00538AF7    mov         edx,2
 00538AFC    call        0067DCA0
 00538B01    pop         ecx
 00538B02    test        ecx,ecx
>00538B04    jne         00538B0A
 00538B06    xor         eax,eax
>00538B08    jmp         00538B0F
 00538B0A    mov         eax,1
 00538B0F    push        eax
 00538B10    dec         dword ptr [ebp-118]
 00538B16    lea         eax,[ebp-0E0]
 00538B1C    mov         edx,2
 00538B21    call        0067DCA0
 00538B26    pop         ecx
 00538B27    test        cl,cl
>00538B29    je          00538BB8
 00538B2F    mov         al,12
 00538B31    push        eax
 00538B32    dec         dword ptr [ebp-118]
 00538B38    lea         eax,[ebp-44]
 00538B3B    mov         edx,2
 00538B40    call        0067DCA0
 00538B45    dec         dword ptr [ebp-118]
 00538B4B    lea         eax,[ebp-40]
 00538B4E    mov         edx,2
 00538B53    call        0067DCA0
 00538B58    dec         dword ptr [ebp-118]
 00538B5E    lea         eax,[ebp-3C]
 00538B61    mov         edx,2
 00538B66    call        0067DCA0
 00538B6B    dec         dword ptr [ebp-118]
 00538B71    lea         eax,[ebp-38]
 00538B74    mov         edx,2
 00538B79    call        0067DCA0
 00538B7E    sub         dword ptr [ebp-118],3
 00538B85    lea         eax,[ebp-34]
 00538B88    mov         edx,2
 00538B8D    call        0046E124
 00538B92    dec         dword ptr [ebp-118]
 00538B98    lea         eax,[ebp-4]
 00538B9B    mov         edx,2
 00538BA0    call        0067DCA0
 00538BA5    pop         eax
 00538BA6    mov         edx,dword ptr [ebp-134]
 00538BAC    mov         dword ptr fs:[0],edx
>00538BB3    jmp         00539AD0
 00538BB8    mov         word ptr [ebp-124],128
 00538BC1    mov         edx,6DC98C
 00538BC6    lea         eax,[ebp-0E8]
 00538BCC    call        0067DAB4
 00538BD1    inc         dword ptr [ebp-118]
 00538BD7    mov         edx,dword ptr [eax]
 00538BD9    mov         eax,dword ptr [ebp-38]
 00538BDC    call        SameText
 00538BE1    test        al,al
>00538BE3    jne         00538C2D
 00538BE5    mov         edx,6DC992
 00538BEA    lea         eax,[ebp-0EC]
 00538BF0    call        0067DAB4
 00538BF5    inc         dword ptr [ebp-118]
 00538BFB    mov         edx,dword ptr [eax]
 00538BFD    mov         eax,dword ptr [ebp-38]
 00538C00    call        SameText
 00538C05    test        al,al
 00538C07    setne       cl
 00538C0A    and         ecx,1
 00538C0D    push        ecx
 00538C0E    dec         dword ptr [ebp-118]
 00538C14    lea         eax,[ebp-0EC]
 00538C1A    mov         edx,2
 00538C1F    call        0067DCA0
 00538C24    pop         ecx
 00538C25    test        ecx,ecx
>00538C27    jne         00538C2D
 00538C29    xor         eax,eax
>00538C2B    jmp         00538C32
 00538C2D    mov         eax,1
 00538C32    push        eax
 00538C33    dec         dword ptr [ebp-118]
 00538C39    lea         eax,[ebp-0E8]
 00538C3F    mov         edx,2
 00538C44    call        0067DCA0
 00538C49    pop         ecx
 00538C4A    test        cl,cl
>00538C4C    je          00538CDB
 00538C52    mov         al,20
 00538C54    push        eax
 00538C55    dec         dword ptr [ebp-118]
 00538C5B    lea         eax,[ebp-44]
 00538C5E    mov         edx,2
 00538C63    call        0067DCA0
 00538C68    dec         dword ptr [ebp-118]
 00538C6E    lea         eax,[ebp-40]
 00538C71    mov         edx,2
 00538C76    call        0067DCA0
 00538C7B    dec         dword ptr [ebp-118]
 00538C81    lea         eax,[ebp-3C]
 00538C84    mov         edx,2
 00538C89    call        0067DCA0
 00538C8E    dec         dword ptr [ebp-118]
 00538C94    lea         eax,[ebp-38]
 00538C97    mov         edx,2
 00538C9C    call        0067DCA0
 00538CA1    sub         dword ptr [ebp-118],3
 00538CA8    lea         eax,[ebp-34]
 00538CAB    mov         edx,2
 00538CB0    call        0046E124
 00538CB5    dec         dword ptr [ebp-118]
 00538CBB    lea         eax,[ebp-4]
 00538CBE    mov         edx,2
 00538CC3    call        0067DCA0
 00538CC8    pop         eax
 00538CC9    mov         edx,dword ptr [ebp-134]
 00538CCF    mov         dword ptr fs:[0],edx
>00538CD6    jmp         00539AD0
 00538CDB    mov         word ptr [ebp-124],134
 00538CE4    mov         edx,6DC99C
 00538CE9    lea         eax,[ebp-0F0]
 00538CEF    call        0067DAB4
 00538CF4    inc         dword ptr [ebp-118]
 00538CFA    mov         edx,dword ptr [eax]
 00538CFC    mov         eax,dword ptr [ebp-38]
 00538CFF    call        SameText
 00538D04    push        eax
 00538D05    dec         dword ptr [ebp-118]
 00538D0B    lea         eax,[ebp-0F0]
 00538D11    mov         edx,2
 00538D16    call        0067DCA0
 00538D1B    pop         ecx
 00538D1C    test        cl,cl
>00538D1E    je          00538DAD
 00538D24    mov         al,21
 00538D26    push        eax
 00538D27    dec         dword ptr [ebp-118]
 00538D2D    lea         eax,[ebp-44]
 00538D30    mov         edx,2
 00538D35    call        0067DCA0
 00538D3A    dec         dword ptr [ebp-118]
 00538D40    lea         eax,[ebp-40]
 00538D43    mov         edx,2
 00538D48    call        0067DCA0
 00538D4D    dec         dword ptr [ebp-118]
 00538D53    lea         eax,[ebp-3C]
 00538D56    mov         edx,2
 00538D5B    call        0067DCA0
 00538D60    dec         dword ptr [ebp-118]
 00538D66    lea         eax,[ebp-38]
 00538D69    mov         edx,2
 00538D6E    call        0067DCA0
 00538D73    sub         dword ptr [ebp-118],3
 00538D7A    lea         eax,[ebp-34]
 00538D7D    mov         edx,2
 00538D82    call        0046E124
 00538D87    dec         dword ptr [ebp-118]
 00538D8D    lea         eax,[ebp-4]
 00538D90    mov         edx,2
 00538D95    call        0067DCA0
 00538D9A    pop         eax
 00538D9B    mov         edx,dword ptr [ebp-134]
 00538DA1    mov         dword ptr fs:[0],edx
>00538DA8    jmp         00539AD0
 00538DAD    mov         word ptr [ebp-124],140
 00538DB6    mov         edx,6DC9A6
 00538DBB    lea         eax,[ebp-0F4]
 00538DC1    call        0067DAB4
 00538DC6    inc         dword ptr [ebp-118]
 00538DCC    mov         edx,dword ptr [eax]
 00538DCE    mov         eax,dword ptr [ebp-38]
 00538DD1    call        SameText
 00538DD6    push        eax
 00538DD7    dec         dword ptr [ebp-118]
 00538DDD    lea         eax,[ebp-0F4]
 00538DE3    mov         edx,2
 00538DE8    call        0067DCA0
 00538DED    pop         ecx
 00538DEE    test        cl,cl
>00538DF0    je          00538E7F
 00538DF6    mov         al,0C
 00538DF8    push        eax
 00538DF9    dec         dword ptr [ebp-118]
 00538DFF    lea         eax,[ebp-44]
 00538E02    mov         edx,2
 00538E07    call        0067DCA0
 00538E0C    dec         dword ptr [ebp-118]
 00538E12    lea         eax,[ebp-40]
 00538E15    mov         edx,2
 00538E1A    call        0067DCA0
 00538E1F    dec         dword ptr [ebp-118]
 00538E25    lea         eax,[ebp-3C]
 00538E28    mov         edx,2
 00538E2D    call        0067DCA0
 00538E32    dec         dword ptr [ebp-118]
 00538E38    lea         eax,[ebp-38]
 00538E3B    mov         edx,2
 00538E40    call        0067DCA0
 00538E45    sub         dword ptr [ebp-118],3
 00538E4C    lea         eax,[ebp-34]
 00538E4F    mov         edx,2
 00538E54    call        0046E124
 00538E59    dec         dword ptr [ebp-118]
 00538E5F    lea         eax,[ebp-4]
 00538E62    mov         edx,2
 00538E67    call        0067DCA0
 00538E6C    pop         eax
 00538E6D    mov         edx,dword ptr [ebp-134]
 00538E73    mov         dword ptr fs:[0],edx
>00538E7A    jmp         00539AD0
 00538E7F    mov         word ptr [ebp-124],158
 00538E88    lea         eax,[ebp-4C]
 00538E8B    call        00401EA8
 00538E90    push        eax
 00538E91    inc         dword ptr [ebp-118]
 00538E97    mov         edx,6DC9AE
 00538E9C    lea         eax,[ebp-0F8]
 00538EA2    call        0067DAB4
 00538EA7    inc         dword ptr [ebp-118]
 00538EAD    lea         edx,[ebp-0F8]
 00538EB3    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 00538EB9    mov         eax,dword ptr [ecx]
 00538EBB    add         eax,62D
 00538EC0    pop         ecx
 00538EC1    call        0067DCF8
 00538EC6    dec         dword ptr [ebp-118]
 00538ECC    lea         eax,[ebp-0F8]
 00538ED2    mov         edx,2
 00538ED7    call        0067DCA0
 00538EDC    mov         word ptr [ebp-124],14C
 00538EE5    push        6DC9B9
 00538EEA    lea         eax,[ebp-4C]
 00538EED    call        00403C0C
 00538EF2    push        eax
 00538EF3    call        00671CC0
 00538EF8    add         esp,8
 00538EFB    mov         dword ptr [ebp-150],eax
 00538F01    mov         edx,dword ptr [ebp-150]
 00538F07    test        edx,edx
>00538F09    je          0053910A
 00538F0F    push        dword ptr [ebp-150]
 00538F15    push        400
 00538F1A    push        6EA3A0;gvar_006EA3A0
 00538F1F    call        00671948
 00538F24    add         esp,0C
 00538F27    test        eax,eax
>00538F29    je          005390FE
 00538F2F    mov         word ptr [ebp-124],164
 00538F38    mov         edx,6EA3A0;gvar_006EA3A0
 00538F3D    lea         eax,[ebp-0FC]
 00538F43    call        0067DAB4
 00538F48    mov         edx,eax
 00538F4A    inc         dword ptr [ebp-118]
 00538F50    lea         eax,[ebp-40]
 00538F53    call        0067DCD0
 00538F58    dec         dword ptr [ebp-118]
 00538F5E    lea         eax,[ebp-0FC]
 00538F64    mov         edx,2
 00538F69    call        0067DCA0
 00538F6E    mov         word ptr [ebp-124],170
 00538F77    lea         eax,[ebp-104]
 00538F7D    call        00401EA8
 00538F82    push        eax
 00538F83    inc         dword ptr [ebp-118]
 00538F89    mov         edx,6DC9BC
 00538F8E    lea         eax,[ebp-100]
 00538F94    call        0067DAB4
 00538F99    inc         dword ptr [ebp-118]
 00538F9F    lea         edx,[ebp-100]
 00538FA5    lea         eax,[ebp-4]
 00538FA8    pop         ecx
 00538FA9    call        0067DCF8
 00538FAE    lea         edx,[ebp-104]
 00538FB4    lea         eax,[ebp-40]
 00538FB7    call        0067DEF4
 00538FBC    dec         eax
 00538FBD    sete        dl
 00538FC0    and         edx,1
 00538FC3    push        edx
 00538FC4    dec         dword ptr [ebp-118]
 00538FCA    lea         eax,[ebp-104]
 00538FD0    mov         edx,2
 00538FD5    call        0067DCA0
 00538FDA    dec         dword ptr [ebp-118]
 00538FE0    lea         eax,[ebp-100]
 00538FE6    mov         edx,2
 00538FEB    call        0067DCA0
 00538FF0    pop         ecx
 00538FF1    test        cl,cl
>00538FF3    je          00538F0F
 00538FF9    mov         word ptr [ebp-124],17C
 00539002    mov         edx,6DC9BE
 00539007    lea         eax,[ebp-108]
 0053900D    call        0067DAB4
 00539012    inc         dword ptr [ebp-118]
 00539018    lea         edx,[ebp-108]
 0053901E    lea         eax,[ebp-40]
 00539021    call        0067DEF4
 00539026    push        eax
 00539027    dec         dword ptr [ebp-118]
 0053902D    lea         eax,[ebp-108]
 00539033    mov         edx,2
 00539038    call        0067DCA0
 0053903D    pop         ecx
 0053903E    test        ecx,ecx
>00539040    je          00538F0F
 00539046    mov         eax,dword ptr [ebp-40]
 00539049    call        00532E24
 0053904E    mov         edx,dword ptr [ebp-138]
 00539054    mov         dword ptr [edx],eax
 00539056    push        dword ptr [ebp-150]
 0053905C    call        00671818
 00539061    pop         ecx
 00539062    mov         al,0E
 00539064    push        eax
 00539065    dec         dword ptr [ebp-118]
 0053906B    lea         eax,[ebp-4C]
 0053906E    mov         edx,2
 00539073    call        0067DCA0
 00539078    dec         dword ptr [ebp-118]
 0053907E    lea         eax,[ebp-44]
 00539081    mov         edx,2
 00539086    call        0067DCA0
 0053908B    dec         dword ptr [ebp-118]
 00539091    lea         eax,[ebp-40]
 00539094    mov         edx,2
 00539099    call        0067DCA0
 0053909E    dec         dword ptr [ebp-118]
 005390A4    lea         eax,[ebp-3C]
 005390A7    mov         edx,2
 005390AC    call        0067DCA0
 005390B1    dec         dword ptr [ebp-118]
 005390B7    lea         eax,[ebp-38]
 005390BA    mov         edx,2
 005390BF    call        0067DCA0
 005390C4    sub         dword ptr [ebp-118],3
 005390CB    lea         eax,[ebp-34]
 005390CE    mov         edx,2
 005390D3    call        0046E124
 005390D8    dec         dword ptr [ebp-118]
 005390DE    lea         eax,[ebp-4]
 005390E1    mov         edx,2
 005390E6    call        0067DCA0
 005390EB    pop         eax
 005390EC    mov         edx,dword ptr [ebp-134]
 005390F2    mov         dword ptr fs:[0],edx
>005390F9    jmp         00539AD0
 005390FE    push        dword ptr [ebp-150]
 00539104    call        00671818
 00539109    pop         ecx
 0053910A    mov         eax,dword ptr [ebp-38]
 0053910D    call        00537314
 00539112    mov         dword ptr [ebp-154],eax
 00539118    mov         word ptr [ebp-124],14C
 00539121    mov         edx,dword ptr [ebp-154]
 00539127    test        edx,edx
>00539129    je          005391FF
 0053912F    mov         ecx,dword ptr [ebp-154]
 00539135    mov         eax,dword ptr [ecx+1]
 00539138    call        005376EC
 0053913D    mov         edx,dword ptr [ebp-138]
 00539143    mov         dword ptr [edx],eax
 00539145    mov         ecx,dword ptr [ebp-138]
 0053914B    mov         eax,dword ptr [ecx]
 0053914D    test        eax,eax
>0053914F    jne         0053915D
 00539151    mov         edx,dword ptr [ebp-138]
 00539157    mov         dword ptr [edx],4
 0053915D    mov         ecx,dword ptr [ebp-154]
 00539163    mov         al,byte ptr [ecx]
 00539165    push        eax
 00539166    dec         dword ptr [ebp-118]
 0053916C    lea         eax,[ebp-4C]
 0053916F    mov         edx,2
 00539174    call        0067DCA0
 00539179    dec         dword ptr [ebp-118]
 0053917F    lea         eax,[ebp-44]
 00539182    mov         edx,2
 00539187    call        0067DCA0
 0053918C    dec         dword ptr [ebp-118]
 00539192    lea         eax,[ebp-40]
 00539195    mov         edx,2
 0053919A    call        0067DCA0
 0053919F    dec         dword ptr [ebp-118]
 005391A5    lea         eax,[ebp-3C]
 005391A8    mov         edx,2
 005391AD    call        0067DCA0
 005391B2    dec         dword ptr [ebp-118]
 005391B8    lea         eax,[ebp-38]
 005391BB    mov         edx,2
 005391C0    call        0067DCA0
 005391C5    sub         dword ptr [ebp-118],3
 005391CC    lea         eax,[ebp-34]
 005391CF    mov         edx,2
 005391D4    call        0046E124
 005391D9    dec         dword ptr [ebp-118]
 005391DF    lea         eax,[ebp-4]
 005391E2    mov         edx,2
 005391E7    call        0067DCA0
 005391EC    pop         eax
 005391ED    mov         edx,dword ptr [ebp-134]
 005391F3    mov         dword ptr fs:[0],edx
>005391FA    jmp         00539AD0
 005391FF    lea         eax,[ebp-38]
 00539202    call        00403C0C
 00539207    mov         edx,eax
 00539209    mov         eax,6ECAB4
 0053920E    call        00472C40
 00539213    mov         dword ptr [ebp-14C],eax
 00539219    lea         eax,[ebp-38]
 0053921C    call        00403C0C
 00539221    mov         ecx,eax
 00539223    mov         eax,6ECAB4
 00539228    mov         edx,dword ptr [ebp-14C]
 0053922E    call        004701C8
 00539233    mov         dword ptr [ebp-144],eax
 00539239    mov         ecx,dword ptr [ebp-14C]
 0053923F    test        ecx,ecx
>00539241    je          0053924F
 00539243    push        dword ptr [ebp-14C]
 00539249    call        0066EAC0
 0053924E    pop         ecx
 0053924F    mov         eax,dword ptr [ebp-144]
 00539255    inc         eax
>00539256    je          00539955
 0053925C    mov         edx,dword ptr [ebp-144]
 00539262    shl         edx,4
 00539265    mov         ecx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 0053926B    mov         eax,dword ptr [ecx+edx+0C]
 0053926F    mov         dword ptr [ebp-144],eax
 00539275    lea         edx,[ebp-34]
 00539278    push        edx
 00539279    mov         eax,6ECAB4
 0053927E    mov         ecx,1
 00539283    mov         edx,dword ptr [ebp-144]
 00539289    call        00472158
 0053928E    test        eax,eax
>00539290    je          00539955
 00539296    mov         al,byte ptr [ebp-2A]
 00539299    cmp         al,5A
>0053929B    jne         0053933D
 005392A1    xor         eax,eax
 005392A3    push        eax
 005392A4    dec         dword ptr [ebp-118]
 005392AA    lea         eax,[ebp-4C]
 005392AD    mov         edx,2
 005392B2    call        0067DCA0
 005392B7    dec         dword ptr [ebp-118]
 005392BD    lea         eax,[ebp-44]
 005392C0    mov         edx,2
 005392C5    call        0067DCA0
 005392CA    dec         dword ptr [ebp-118]
 005392D0    lea         eax,[ebp-40]
 005392D3    mov         edx,2
 005392D8    call        0067DCA0
 005392DD    dec         dword ptr [ebp-118]
 005392E3    lea         eax,[ebp-3C]
 005392E6    mov         edx,2
 005392EB    call        0067DCA0
 005392F0    dec         dword ptr [ebp-118]
 005392F6    lea         eax,[ebp-38]
 005392F9    mov         edx,2
 005392FE    call        0067DCA0
 00539303    sub         dword ptr [ebp-118],3
 0053930A    lea         eax,[ebp-34]
 0053930D    mov         edx,2
 00539312    call        0046E124
 00539317    dec         dword ptr [ebp-118]
 0053931D    lea         eax,[ebp-4]
 00539320    mov         edx,2
 00539325    call        0067DCA0
 0053932A    pop         eax
 0053932B    mov         edx,dword ptr [ebp-134]
 00539331    mov         dword ptr fs:[0],edx
>00539338    jmp         00539AD0
 0053933D    mov         word ptr [ebp-124],188
 00539346    mov         edx,6DC9C6
 0053934B    lea         eax,[ebp-10C]
 00539351    call        0067DAB4
 00539356    inc         dword ptr [ebp-118]
 0053935C    lea         edx,[ebp-10C]
 00539362    lea         eax,[ebp-27]
 00539365    call        0067DD9C
 0053936A    test        al,al
>0053936C    je          00539383
 0053936E    lea         eax,[ebp-27]
 00539371    mov         edx,1
 00539376    call        00403C2C
 0053937B    movsx       ecx,byte ptr [eax]
 0053937E    cmp         ecx,5E
>00539381    je          00539387
 00539383    xor         eax,eax
>00539385    jmp         0053938C
 00539387    mov         eax,1
 0053938C    push        eax
 0053938D    dec         dword ptr [ebp-118]
 00539393    lea         eax,[ebp-10C]
 00539399    mov         edx,2
 0053939E    call        0067DCA0
 005393A3    pop         ecx
 005393A4    test        cl,cl
>005393A6    je          00539448
 005393AC    xor         eax,eax
 005393AE    push        eax
 005393AF    dec         dword ptr [ebp-118]
 005393B5    lea         eax,[ebp-4C]
 005393B8    mov         edx,2
 005393BD    call        0067DCA0
 005393C2    dec         dword ptr [ebp-118]
 005393C8    lea         eax,[ebp-44]
 005393CB    mov         edx,2
 005393D0    call        0067DCA0
 005393D5    dec         dword ptr [ebp-118]
 005393DB    lea         eax,[ebp-40]
 005393DE    mov         edx,2
 005393E3    call        0067DCA0
 005393E8    dec         dword ptr [ebp-118]
 005393EE    lea         eax,[ebp-3C]
 005393F1    mov         edx,2
 005393F6    call        0067DCA0
 005393FB    dec         dword ptr [ebp-118]
 00539401    lea         eax,[ebp-38]
 00539404    mov         edx,2
 00539409    call        0067DCA0
 0053940E    sub         dword ptr [ebp-118],3
 00539415    lea         eax,[ebp-34]
 00539418    mov         edx,2
 0053941D    call        0046E124
 00539422    dec         dword ptr [ebp-118]
 00539428    lea         eax,[ebp-4]
 0053942B    mov         edx,2
 00539430    call        0067DCA0
 00539435    pop         eax
 00539436    mov         edx,dword ptr [ebp-134]
 0053943C    mov         dword ptr fs:[0],edx
>00539443    jmp         00539AD0
 00539448    mov         ecx,dword ptr [ebp-138]
 0053944E    mov         eax,dword ptr [ebp-34]
 00539451    mov         dword ptr [ecx],eax
 00539453    xor         edx,edx
 00539455    mov         dl,byte ptr [ebp-2A]
 00539458    add         edx,0FFFFFFBC
 0053945B    cmp         edx,10
>0053945E    ja          00539846
 00539464    mov         dl,byte ptr [edx+539471]
 0053946A    jmp         dword ptr [edx*4+539482]
 0053946A    db          6
 0053946A    db          5
 0053946A    db          0
 0053946A    db          0
 0053946A    db          4
 0053946A    db          0
 0053946A    db          3
 0053946A    db          0
 0053946A    db          0
 0053946A    db          2
 0053946A    db          0
 0053946A    db          0
 0053946A    db          0
 0053946A    db          0
 0053946A    db          0
 0053946A    db          0
 0053946A    db          1
 0053946A    dd          00539846
 0053946A    dd          005397AA
 0053946A    dd          0053970E
 0053946A    dd          00539672
 0053946A    dd          005395D6
 0053946A    dd          0053953A
 0053946A    dd          0053949E
 0053949E    mov         al,3
 005394A0    push        eax
 005394A1    dec         dword ptr [ebp-118]
 005394A7    lea         eax,[ebp-4C]
 005394AA    mov         edx,2
 005394AF    call        0067DCA0
 005394B4    dec         dword ptr [ebp-118]
 005394BA    lea         eax,[ebp-44]
 005394BD    mov         edx,2
 005394C2    call        0067DCA0
 005394C7    dec         dword ptr [ebp-118]
 005394CD    lea         eax,[ebp-40]
 005394D0    mov         edx,2
 005394D5    call        0067DCA0
 005394DA    dec         dword ptr [ebp-118]
 005394E0    lea         eax,[ebp-3C]
 005394E3    mov         edx,2
 005394E8    call        0067DCA0
 005394ED    dec         dword ptr [ebp-118]
 005394F3    lea         eax,[ebp-38]
 005394F6    mov         edx,2
 005394FB    call        0067DCA0
 00539500    sub         dword ptr [ebp-118],3
 00539507    lea         eax,[ebp-34]
 0053950A    mov         edx,2
 0053950F    call        0046E124
 00539514    dec         dword ptr [ebp-118]
 0053951A    lea         eax,[ebp-4]
 0053951D    mov         edx,2
 00539522    call        0067DCA0
 00539527    pop         eax
 00539528    mov         edx,dword ptr [ebp-134]
 0053952E    mov         dword ptr fs:[0],edx
>00539535    jmp         00539AD0
 0053953A    mov         al,8
 0053953C    push        eax
 0053953D    dec         dword ptr [ebp-118]
 00539543    lea         eax,[ebp-4C]
 00539546    mov         edx,2
 0053954B    call        0067DCA0
 00539550    dec         dword ptr [ebp-118]
 00539556    lea         eax,[ebp-44]
 00539559    mov         edx,2
 0053955E    call        0067DCA0
 00539563    dec         dword ptr [ebp-118]
 00539569    lea         eax,[ebp-40]
 0053956C    mov         edx,2
 00539571    call        0067DCA0
 00539576    dec         dword ptr [ebp-118]
 0053957C    lea         eax,[ebp-3C]
 0053957F    mov         edx,2
 00539584    call        0067DCA0
 00539589    dec         dword ptr [ebp-118]
 0053958F    lea         eax,[ebp-38]
 00539592    mov         edx,2
 00539597    call        0067DCA0
 0053959C    sub         dword ptr [ebp-118],3
 005395A3    lea         eax,[ebp-34]
 005395A6    mov         edx,2
 005395AB    call        0046E124
 005395B0    dec         dword ptr [ebp-118]
 005395B6    lea         eax,[ebp-4]
 005395B9    mov         edx,2
 005395BE    call        0067DCA0
 005395C3    pop         eax
 005395C4    mov         edx,dword ptr [ebp-134]
 005395CA    mov         dword ptr fs:[0],edx
>005395D1    jmp         00539AD0
 005395D6    mov         al,8
 005395D8    push        eax
 005395D9    dec         dword ptr [ebp-118]
 005395DF    lea         eax,[ebp-4C]
 005395E2    mov         edx,2
 005395E7    call        0067DCA0
 005395EC    dec         dword ptr [ebp-118]
 005395F2    lea         eax,[ebp-44]
 005395F5    mov         edx,2
 005395FA    call        0067DCA0
 005395FF    dec         dword ptr [ebp-118]
 00539605    lea         eax,[ebp-40]
 00539608    mov         edx,2
 0053960D    call        0067DCA0
 00539612    dec         dword ptr [ebp-118]
 00539618    lea         eax,[ebp-3C]
 0053961B    mov         edx,2
 00539620    call        0067DCA0
 00539625    dec         dword ptr [ebp-118]
 0053962B    lea         eax,[ebp-38]
 0053962E    mov         edx,2
 00539633    call        0067DCA0
 00539638    sub         dword ptr [ebp-118],3
 0053963F    lea         eax,[ebp-34]
 00539642    mov         edx,2
 00539647    call        0046E124
 0053964C    dec         dword ptr [ebp-118]
 00539652    lea         eax,[ebp-4]
 00539655    mov         edx,2
 0053965A    call        0067DCA0
 0053965F    pop         eax
 00539660    mov         edx,dword ptr [ebp-134]
 00539666    mov         dword ptr fs:[0],edx
>0053966D    jmp         00539AD0
 00539672    mov         al,6
 00539674    push        eax
 00539675    dec         dword ptr [ebp-118]
 0053967B    lea         eax,[ebp-4C]
 0053967E    mov         edx,2
 00539683    call        0067DCA0
 00539688    dec         dword ptr [ebp-118]
 0053968E    lea         eax,[ebp-44]
 00539691    mov         edx,2
 00539696    call        0067DCA0
 0053969B    dec         dword ptr [ebp-118]
 005396A1    lea         eax,[ebp-40]
 005396A4    mov         edx,2
 005396A9    call        0067DCA0
 005396AE    dec         dword ptr [ebp-118]
 005396B4    lea         eax,[ebp-3C]
 005396B7    mov         edx,2
 005396BC    call        0067DCA0
 005396C1    dec         dword ptr [ebp-118]
 005396C7    lea         eax,[ebp-38]
 005396CA    mov         edx,2
 005396CF    call        0067DCA0
 005396D4    sub         dword ptr [ebp-118],3
 005396DB    lea         eax,[ebp-34]
 005396DE    mov         edx,2
 005396E3    call        0046E124
 005396E8    dec         dword ptr [ebp-118]
 005396EE    lea         eax,[ebp-4]
 005396F1    mov         edx,2
 005396F6    call        0067DCA0
 005396FB    pop         eax
 005396FC    mov         edx,dword ptr [ebp-134]
 00539702    mov         dword ptr fs:[0],edx
>00539709    jmp         00539AD0
 0053970E    mov         al,0E
 00539710    push        eax
 00539711    dec         dword ptr [ebp-118]
 00539717    lea         eax,[ebp-4C]
 0053971A    mov         edx,2
 0053971F    call        0067DCA0
 00539724    dec         dword ptr [ebp-118]
 0053972A    lea         eax,[ebp-44]
 0053972D    mov         edx,2
 00539732    call        0067DCA0
 00539737    dec         dword ptr [ebp-118]
 0053973D    lea         eax,[ebp-40]
 00539740    mov         edx,2
 00539745    call        0067DCA0
 0053974A    dec         dword ptr [ebp-118]
 00539750    lea         eax,[ebp-3C]
 00539753    mov         edx,2
 00539758    call        0067DCA0
 0053975D    dec         dword ptr [ebp-118]
 00539763    lea         eax,[ebp-38]
 00539766    mov         edx,2
 0053976B    call        0067DCA0
 00539770    sub         dword ptr [ebp-118],3
 00539777    lea         eax,[ebp-34]
 0053977A    mov         edx,2
 0053977F    call        0046E124
 00539784    dec         dword ptr [ebp-118]
 0053978A    lea         eax,[ebp-4]
 0053978D    mov         edx,2
 00539792    call        0067DCA0
 00539797    pop         eax
 00539798    mov         edx,dword ptr [ebp-134]
 0053979E    mov         dword ptr fs:[0],edx
>005397A5    jmp         00539AD0
 005397AA    mov         al,0F
 005397AC    push        eax
 005397AD    dec         dword ptr [ebp-118]
 005397B3    lea         eax,[ebp-4C]
 005397B6    mov         edx,2
 005397BB    call        0067DCA0
 005397C0    dec         dword ptr [ebp-118]
 005397C6    lea         eax,[ebp-44]
 005397C9    mov         edx,2
 005397CE    call        0067DCA0
 005397D3    dec         dword ptr [ebp-118]
 005397D9    lea         eax,[ebp-40]
 005397DC    mov         edx,2
 005397E1    call        0067DCA0
 005397E6    dec         dword ptr [ebp-118]
 005397EC    lea         eax,[ebp-3C]
 005397EF    mov         edx,2
 005397F4    call        0067DCA0
 005397F9    dec         dword ptr [ebp-118]
 005397FF    lea         eax,[ebp-38]
 00539802    mov         edx,2
 00539807    call        0067DCA0
 0053980C    sub         dword ptr [ebp-118],3
 00539813    lea         eax,[ebp-34]
 00539816    mov         edx,2
 0053981B    call        0046E124
 00539820    dec         dword ptr [ebp-118]
 00539826    lea         eax,[ebp-4]
 00539829    mov         edx,2
 0053982E    call        0067DCA0
 00539833    pop         eax
 00539834    mov         edx,dword ptr [ebp-134]
 0053983A    mov         dword ptr fs:[0],edx
>00539841    jmp         00539AD0
 00539846    mov         word ptr [ebp-124],194
 0053984F    mov         edx,6DC9C7
 00539854    lea         eax,[ebp-110]
 0053985A    call        0067DAB4
 0053985F    inc         dword ptr [ebp-118]
 00539865    lea         edx,[ebp-110]
 0053986B    lea         eax,[ebp-27]
 0053986E    call        0067DD9C
 00539873    push        eax
 00539874    dec         dword ptr [ebp-118]
 0053987A    lea         eax,[ebp-110]
 00539880    mov         edx,2
 00539885    call        0067DCA0
 0053988A    pop         ecx
 0053988B    test        cl,cl
>0053988D    je          00539955
 00539893    mov         edx,dword ptr [ebp-138]
 00539899    mov         eax,dword ptr [ebp-27]
 0053989C    call        00537754
 005398A1    mov         byte ptr [ebp-139],al
 005398A7    mov         cl,byte ptr [ebp-139]
 005398AD    test        cl,cl
>005398AF    je          00539955
 005398B5    mov         al,byte ptr [ebp-139]
 005398BB    push        eax
 005398BC    dec         dword ptr [ebp-118]
 005398C2    lea         eax,[ebp-4C]
 005398C5    mov         edx,2
 005398CA    call        0067DCA0
 005398CF    dec         dword ptr [ebp-118]
 005398D5    lea         eax,[ebp-44]
 005398D8    mov         edx,2
 005398DD    call        0067DCA0
 005398E2    dec         dword ptr [ebp-118]
 005398E8    lea         eax,[ebp-40]
 005398EB    mov         edx,2
 005398F0    call        0067DCA0
 005398F5    dec         dword ptr [ebp-118]
 005398FB    lea         eax,[ebp-3C]
 005398FE    mov         edx,2
 00539903    call        0067DCA0
 00539908    dec         dword ptr [ebp-118]
 0053990E    lea         eax,[ebp-38]
 00539911    mov         edx,2
 00539916    call        0067DCA0
 0053991B    sub         dword ptr [ebp-118],3
 00539922    lea         eax,[ebp-34]
 00539925    mov         edx,2
 0053992A    call        0046E124
 0053992F    dec         dword ptr [ebp-118]
 00539935    lea         eax,[ebp-4]
 00539938    mov         edx,2
 0053993D    call        0067DCA0
 00539942    pop         eax
 00539943    mov         edx,dword ptr [ebp-134]
 00539949    mov         dword ptr fs:[0],edx
>00539950    jmp         00539AD0
 00539955    lea         eax,[ebp-4]
 00539958    mov         edx,1
 0053995D    call        00403C2C
 00539962    movsx       ecx,byte ptr [eax]
 00539965    cmp         ecx,49
>00539968    jne         00539A30
 0053996E    lea         eax,[ebp-4]
 00539971    mov         edx,1
 00539976    call        00403C2C
 0053997B    mov         byte ptr [eax],54
 0053997E    mov         edx,dword ptr [ebp-138]
 00539984    mov         eax,dword ptr [ebp-4]
 00539987    call        00537754
 0053998C    cmp         al,23
>0053998E    jne         00539A30
 00539994    mov         al,0F
 00539996    push        eax
 00539997    dec         dword ptr [ebp-118]
 0053999D    lea         eax,[ebp-4C]
 005399A0    mov         edx,2
 005399A5    call        0067DCA0
 005399AA    dec         dword ptr [ebp-118]
 005399B0    lea         eax,[ebp-44]
 005399B3    mov         edx,2
 005399B8    call        0067DCA0
 005399BD    dec         dword ptr [ebp-118]
 005399C3    lea         eax,[ebp-40]
 005399C6    mov         edx,2
 005399CB    call        0067DCA0
 005399D0    dec         dword ptr [ebp-118]
 005399D6    lea         eax,[ebp-3C]
 005399D9    mov         edx,2
 005399DE    call        0067DCA0
 005399E3    dec         dword ptr [ebp-118]
 005399E9    lea         eax,[ebp-38]
 005399EC    mov         edx,2
 005399F1    call        0067DCA0
 005399F6    sub         dword ptr [ebp-118],3
 005399FD    lea         eax,[ebp-34]
 00539A00    mov         edx,2
 00539A05    call        0046E124
 00539A0A    dec         dword ptr [ebp-118]
 00539A10    lea         eax,[ebp-4]
 00539A13    mov         edx,2
 00539A18    call        0067DCA0
 00539A1D    pop         eax
 00539A1E    mov         edx,dword ptr [ebp-134]
 00539A24    mov         dword ptr fs:[0],edx
>00539A2B    jmp         00539AD0
 00539A30    dec         dword ptr [ebp-118]
 00539A36    lea         eax,[ebp-4C]
 00539A39    mov         edx,2
 00539A3E    call        0067DCA0
 00539A43    mov         word ptr [ebp-124],8
 00539A4C    xor         eax,eax
 00539A4E    push        eax
 00539A4F    dec         dword ptr [ebp-118]
 00539A55    lea         eax,[ebp-44]
 00539A58    mov         edx,2
 00539A5D    call        0067DCA0
 00539A62    dec         dword ptr [ebp-118]
 00539A68    lea         eax,[ebp-40]
 00539A6B    mov         edx,2
 00539A70    call        0067DCA0
 00539A75    dec         dword ptr [ebp-118]
 00539A7B    lea         eax,[ebp-3C]
 00539A7E    mov         edx,2
 00539A83    call        0067DCA0
 00539A88    dec         dword ptr [ebp-118]
 00539A8E    lea         eax,[ebp-38]
 00539A91    mov         edx,2
 00539A96    call        0067DCA0
 00539A9B    sub         dword ptr [ebp-118],3
 00539AA2    lea         eax,[ebp-34]
 00539AA5    mov         edx,2
 00539AAA    call        0046E124
 00539AAF    dec         dword ptr [ebp-118]
 00539AB5    lea         eax,[ebp-4]
 00539AB8    mov         edx,2
 00539ABD    call        0067DCA0
 00539AC2    pop         eax
 00539AC3    mov         edx,dword ptr [ebp-134]
 00539AC9    mov         dword ptr fs:[0],edx
 00539AD0    mov         esp,ebp
 00539AD2    pop         ebp
 00539AD3    ret
end;*}

//00539AD4
{*procedure sub_00539AD4(?:?; ?:?);
begin
 00539AD4    push        ebp
 00539AD5    mov         ebp,esp
 00539AD7    add         esp,0FFFFFFB4
 00539ADA    mov         dword ptr [ebp-0C],edx
 00539ADD    mov         dword ptr [ebp-4C],eax
 00539AE0    mov         eax,6DF3C4
 00539AE5    call        0066FECC
 00539AEA    mov         word ptr [ebp-38],8
 00539AF0    lea         eax,[ebp-4]
 00539AF3    call        00401EA8
 00539AF8    inc         dword ptr [ebp-2C]
 00539AFB    mov         word ptr [ebp-38],14
 00539B01    mov         word ptr [ebp-38],20
 00539B07    lea         eax,[ebp-8]
 00539B0A    mov         edx,dword ptr [ebp-4C]
 00539B0D    call        0067DC18
 00539B12    inc         dword ptr [ebp-2C]
 00539B15    mov         word ptr [ebp-38],14
 00539B1B    mov         ecx,dword ptr [ebp-4C]
 00539B1E    cmp         ecx,0FFFFFFF0
>00539B21    jle         00539B7F
 00539B23    mov         eax,dword ptr [ebp-4C]
 00539B26    cmp         eax,10
>00539B29    jge         00539B7F
 00539B2B    mov         word ptr [ebp-38],2C
 00539B31    lea         edx,[ebp-8]
 00539B34    mov         eax,dword ptr [ebp-0C]
 00539B37    call        0067DCD0
 00539B3C    mov         eax,dword ptr [ebp-0C]
 00539B3F    mov         word ptr [ebp-38],38
 00539B45    push        eax
 00539B46    dec         dword ptr [ebp-2C]
 00539B49    lea         eax,[ebp-8]
 00539B4C    mov         edx,2
 00539B51    call        0067DCA0
 00539B56    dec         dword ptr [ebp-2C]
 00539B59    lea         eax,[ebp-4]
 00539B5C    mov         edx,2
 00539B61    call        0067DCA0
 00539B66    pop         eax
 00539B67    mov         word ptr [ebp-38],2C
 00539B6D    inc         dword ptr [ebp-2C]
 00539B70    mov         edx,dword ptr [ebp-48]
 00539B73    mov         dword ptr fs:[0],edx
>00539B7A    jmp         00539CE0
 00539B7F    mov         word ptr [ebp-38],44
 00539B85    lea         eax,[ebp-14]
 00539B88    call        00401EA8
 00539B8D    mov         edx,eax
 00539B8F    inc         dword ptr [ebp-2C]
 00539B92    mov         eax,dword ptr [ebp-4C]
 00539B95    call        0053164C
 00539B9A    lea         edx,[ebp-14]
 00539B9D    push        edx
 00539B9E    lea         eax,[ebp-18]
 00539BA1    call        00401EA8
 00539BA6    push        eax
 00539BA7    inc         dword ptr [ebp-2C]
 00539BAA    mov         edx,6DCA50
 00539BAF    lea         eax,[ebp-10]
 00539BB2    call        0067DAB4
 00539BB7    inc         dword ptr [ebp-2C]
 00539BBA    pop         ecx
 00539BBB    pop         edx
 00539BBC    call        0067DCF8
 00539BC1    lea         edx,[ebp-18]
 00539BC4    lea         eax,[ebp-4]
 00539BC7    call        0067DCD0
 00539BCC    dec         dword ptr [ebp-2C]
 00539BCF    lea         eax,[ebp-18]
 00539BD2    mov         edx,2
 00539BD7    call        0067DCA0
 00539BDC    dec         dword ptr [ebp-2C]
 00539BDF    lea         eax,[ebp-14]
 00539BE2    mov         edx,2
 00539BE7    call        0067DCA0
 00539BEC    dec         dword ptr [ebp-2C]
 00539BEF    lea         eax,[ebp-10]
 00539BF2    mov         edx,2
 00539BF7    call        0067DCA0
 00539BFC    mov         eax,dword ptr [ebp-4C]
 00539BFF    call        00531EE8
 00539C04    test        al,al
>00539C06    jne         00539C91
 00539C0C    mov         word ptr [ebp-38],50
 00539C12    lea         eax,[ebp-1C]
 00539C15    call        00401EA8
 00539C1A    mov         ecx,eax
 00539C1C    inc         dword ptr [ebp-2C]
 00539C1F    lea         edx,[ebp-8]
 00539C22    mov         eax,6DCA52
 00539C27    call        0067E37C
 00539C2C    lea         edx,[ebp-1C]
 00539C2F    push        edx
 00539C30    lea         eax,[ebp-24]
 00539C33    call        00401EA8
 00539C38    push        eax
 00539C39    inc         dword ptr [ebp-2C]
 00539C3C    mov         edx,6DCA54
 00539C41    lea         eax,[ebp-20]
 00539C44    call        0067DAB4
 00539C49    inc         dword ptr [ebp-2C]
 00539C4C    lea         edx,[ebp-20]
 00539C4F    pop         ecx
 00539C50    pop         eax
 00539C51    call        0067DCF8
 00539C56    lea         edx,[ebp-24]
 00539C59    lea         eax,[ebp-4]
 00539C5C    call        0067DCE4
 00539C61    dec         dword ptr [ebp-2C]
 00539C64    lea         eax,[ebp-24]
 00539C67    mov         edx,2
 00539C6C    call        0067DCA0
 00539C71    dec         dword ptr [ebp-2C]
 00539C74    lea         eax,[ebp-20]
 00539C77    mov         edx,2
 00539C7C    call        0067DCA0
 00539C81    dec         dword ptr [ebp-2C]
 00539C84    lea         eax,[ebp-1C]
 00539C87    mov         edx,2
 00539C8C    call        0067DCA0
 00539C91    mov         word ptr [ebp-38],5C
 00539C97    lea         edx,[ebp-4]
 00539C9A    mov         eax,dword ptr [ebp-0C]
 00539C9D    call        0067DCD0
 00539CA2    mov         eax,dword ptr [ebp-0C]
 00539CA5    mov         word ptr [ebp-38],68
 00539CAB    push        eax
 00539CAC    dec         dword ptr [ebp-2C]
 00539CAF    lea         eax,[ebp-8]
 00539CB2    mov         edx,2
 00539CB7    call        0067DCA0
 00539CBC    dec         dword ptr [ebp-2C]
 00539CBF    lea         eax,[ebp-4]
 00539CC2    mov         edx,2
 00539CC7    call        0067DCA0
 00539CCC    pop         eax
 00539CCD    mov         word ptr [ebp-38],5C
 00539CD3    inc         dword ptr [ebp-2C]
 00539CD6    mov         edx,dword ptr [ebp-48]
 00539CD9    mov         dword ptr fs:[0],edx
 00539CE0    mov         esp,ebp
 00539CE2    pop         ebp
 00539CE3    ret
end;*}

//00539CE4
{*procedure sub_00539CE4(?:AnsiString; ?:?; ?:?);
begin
 00539CE4    push        ebp
 00539CE5    mov         ebp,esp
 00539CE7    add         esp,0FFFFFF8C
 00539CEA    mov         dword ptr [ebp-14],ecx
 00539CED    mov         dword ptr [ebp-68],edx
 00539CF0    mov         dword ptr [ebp-4],eax
 00539CF3    mov         eax,6DF5A8
 00539CF8    call        0066FECC
 00539CFD    mov         dword ptr [ebp-48],1
 00539D04    lea         edx,[ebp-4]
 00539D07    lea         eax,[ebp-4]
 00539D0A    call        0067DAEC
 00539D0F    inc         dword ptr [ebp-48]
 00539D12    mov         word ptr [ebp-54],8
 00539D18    mov         word ptr [ebp-54],14
 00539D1E    lea         eax,[ebp-8]
 00539D21    call        00401EA8
 00539D26    inc         dword ptr [ebp-48]
 00539D29    mov         word ptr [ebp-54],8
 00539D2F    mov         word ptr [ebp-54],20
 00539D35    lea         eax,[ebp-0C]
 00539D38    call        00401EA8
 00539D3D    mov         edx,eax
 00539D3F    inc         dword ptr [ebp-48]
 00539D42    mov         eax,dword ptr [ebp-68]
 00539D45    call        00539AD4
 00539D4A    mov         word ptr [ebp-54],8
 00539D50    lea         edx,[ebp-6C]
 00539D53    mov         eax,dword ptr [ebp-4]
 00539D56    call        00537754
 00539D5B    mov         byte ptr [ebp-6D],al
 00539D5E    mov         edx,dword ptr [ebp-68]
 00539D61    test        edx,edx
>00539D63    jne         00539E10
 00539D69    mov         cl,byte ptr [ebp-6D]
 00539D6C    cmp         cl,5
>00539D6F    je          00539D8C
 00539D71    mov         al,byte ptr [ebp-6D]
 00539D74    cmp         al,0A
>00539D76    je          00539D8C
 00539D78    mov         dl,byte ptr [ebp-6D]
 00539D7B    cmp         dl,0B
>00539D7E    je          00539D8C
 00539D80    mov         cl,byte ptr [ebp-6D]
 00539D83    cmp         cl,12
>00539D86    jne         00539E10
 00539D8C    mov         word ptr [ebp-54],2C
 00539D92    mov         edx,6DCA56
 00539D97    lea         eax,[ebp-10]
 00539D9A    call        0067DAB4
 00539D9F    inc         dword ptr [ebp-48]
 00539DA2    lea         edx,[ebp-10]
 00539DA5    mov         eax,dword ptr [ebp-14]
 00539DA8    call        0067DCD0
 00539DAD    mov         eax,dword ptr [ebp-14]
 00539DB0    mov         word ptr [ebp-54],38
 00539DB6    push        eax
 00539DB7    dec         dword ptr [ebp-48]
 00539DBA    lea         eax,[ebp-10]
 00539DBD    mov         edx,2
 00539DC2    call        0067DCA0
 00539DC7    dec         dword ptr [ebp-48]
 00539DCA    lea         eax,[ebp-0C]
 00539DCD    mov         edx,2
 00539DD2    call        0067DCA0
 00539DD7    dec         dword ptr [ebp-48]
 00539DDA    lea         eax,[ebp-8]
 00539DDD    mov         edx,2
 00539DE2    call        0067DCA0
 00539DE7    dec         dword ptr [ebp-48]
 00539DEA    lea         eax,[ebp-4]
 00539DED    mov         edx,2
 00539DF2    call        0067DCA0
 00539DF7    pop         eax
 00539DF8    mov         word ptr [ebp-54],2C
 00539DFE    inc         dword ptr [ebp-48]
 00539E01    mov         edx,dword ptr [ebp-64]
 00539E04    mov         dword ptr fs:[0],edx
>00539E0B    jmp         0053A176
 00539E10    mov         ecx,dword ptr [ebp-68]
 00539E13    test        ecx,ecx
>00539E15    jne         00539EB2
 00539E1B    mov         al,byte ptr [ebp-6D]
 00539E1E    cmp         al,7
>00539E20    je          00539E2E
 00539E22    mov         dl,byte ptr [ebp-6D]
 00539E25    cmp         dl,23
>00539E28    jne         00539EB2
 00539E2E    mov         word ptr [ebp-54],44
 00539E34    mov         edx,6DCA59
 00539E39    lea         eax,[ebp-18]
 00539E3C    call        0067DAB4
 00539E41    inc         dword ptr [ebp-48]
 00539E44    lea         edx,[ebp-18]
 00539E47    mov         eax,dword ptr [ebp-14]
 00539E4A    call        0067DCD0
 00539E4F    mov         eax,dword ptr [ebp-14]
 00539E52    mov         word ptr [ebp-54],50
 00539E58    push        eax
 00539E59    dec         dword ptr [ebp-48]
 00539E5C    lea         eax,[ebp-18]
 00539E5F    mov         edx,2
 00539E64    call        0067DCA0
 00539E69    dec         dword ptr [ebp-48]
 00539E6C    lea         eax,[ebp-0C]
 00539E6F    mov         edx,2
 00539E74    call        0067DCA0
 00539E79    dec         dword ptr [ebp-48]
 00539E7C    lea         eax,[ebp-8]
 00539E7F    mov         edx,2
 00539E84    call        0067DCA0
 00539E89    dec         dword ptr [ebp-48]
 00539E8C    lea         eax,[ebp-4]
 00539E8F    mov         edx,2
 00539E94    call        0067DCA0
 00539E99    pop         eax
 00539E9A    mov         word ptr [ebp-54],44
 00539EA0    inc         dword ptr [ebp-48]
 00539EA3    mov         edx,dword ptr [ebp-64]
 00539EA6    mov         dword ptr fs:[0],edx
>00539EAD    jmp         0053A176
 00539EB2    mov         cl,byte ptr [ebp-6D]
 00539EB5    cmp         cl,3
>00539EB8    jne         0053A01C
 00539EBE    mov         word ptr [ebp-54],5C
 00539EC4    lea         eax,[ebp-28]
 00539EC7    mov         edx,dword ptr [ebp-68]
 00539ECA    call        0067E7D8
 00539ECF    inc         dword ptr [ebp-48]
 00539ED2    push        dword ptr [eax+0C]
 00539ED5    push        dword ptr [eax+8]
 00539ED8    push        dword ptr [eax+4]
 00539EDB    push        dword ptr [eax]
 00539EDD    lea         eax,[ebp-2C]
 00539EE0    call        00401EA8
 00539EE5    mov         edx,eax
 00539EE7    inc         dword ptr [ebp-48]
 00539EEA    mov         eax,dword ptr [ebp-4]
 00539EED    call        0053A3B8
 00539EF2    lea         edx,[ebp-2C]
 00539EF5    lea         eax,[ebp-8]
 00539EF8    call        0067DCD0
 00539EFD    dec         dword ptr [ebp-48]
 00539F00    lea         eax,[ebp-2C]
 00539F03    mov         edx,2
 00539F08    call        0067DCA0
 00539F0D    dec         dword ptr [ebp-48]
 00539F10    lea         eax,[ebp-28]
 00539F13    mov         edx,2
 00539F18    call        0067E8B4
 00539F1D    mov         word ptr [ebp-54],68
 00539F23    mov         edx,6DCA5D
 00539F28    lea         eax,[ebp-30]
 00539F2B    call        0067DAB4
 00539F30    inc         dword ptr [ebp-48]
 00539F33    lea         edx,[ebp-30]
 00539F36    lea         eax,[ebp-8]
 00539F39    call        0067DD9C
 00539F3E    push        eax
 00539F3F    dec         dword ptr [ebp-48]
 00539F42    lea         eax,[ebp-30]
 00539F45    mov         edx,2
 00539F4A    call        0067DCA0
 00539F4F    pop         ecx
 00539F50    test        cl,cl
>00539F52    je          00539FB8
 00539F54    mov         word ptr [ebp-54],74
 00539F5A    lea         edx,[ebp-8]
 00539F5D    mov         eax,dword ptr [ebp-14]
 00539F60    call        0067DCD0
 00539F65    mov         eax,dword ptr [ebp-14]
 00539F68    mov         word ptr [ebp-54],80
 00539F6E    push        eax
 00539F6F    dec         dword ptr [ebp-48]
 00539F72    lea         eax,[ebp-0C]
 00539F75    mov         edx,2
 00539F7A    call        0067DCA0
 00539F7F    dec         dword ptr [ebp-48]
 00539F82    lea         eax,[ebp-8]
 00539F85    mov         edx,2
 00539F8A    call        0067DCA0
 00539F8F    dec         dword ptr [ebp-48]
 00539F92    lea         eax,[ebp-4]
 00539F95    mov         edx,2
 00539F9A    call        0067DCA0
 00539F9F    pop         eax
 00539FA0    mov         word ptr [ebp-54],74
 00539FA6    inc         dword ptr [ebp-48]
 00539FA9    mov         edx,dword ptr [ebp-64]
 00539FAC    mov         dword ptr fs:[0],edx
>00539FB3    jmp         0053A176
 00539FB8    mov         word ptr [ebp-54],8C
 00539FBE    lea         edx,[ebp-0C]
 00539FC1    mov         eax,dword ptr [ebp-14]
 00539FC4    call        0067DCD0
 00539FC9    mov         eax,dword ptr [ebp-14]
 00539FCC    mov         word ptr [ebp-54],98
 00539FD2    push        eax
 00539FD3    dec         dword ptr [ebp-48]
 00539FD6    lea         eax,[ebp-0C]
 00539FD9    mov         edx,2
 00539FDE    call        0067DCA0
 00539FE3    dec         dword ptr [ebp-48]
 00539FE6    lea         eax,[ebp-8]
 00539FE9    mov         edx,2
 00539FEE    call        0067DCA0
 00539FF3    dec         dword ptr [ebp-48]
 00539FF6    lea         eax,[ebp-4]
 00539FF9    mov         edx,2
 00539FFE    call        0067DCA0
 0053A003    pop         eax
 0053A004    mov         word ptr [ebp-54],8C
 0053A00A    inc         dword ptr [ebp-48]
 0053A00D    mov         edx,dword ptr [ebp-64]
 0053A010    mov         dword ptr fs:[0],edx
>0053A017    jmp         0053A176
 0053A01C    mov         cl,byte ptr [ebp-6D]
 0053A01F    cmp         cl,2
>0053A022    jne         0053A117
 0053A028    mov         word ptr [ebp-54],0A4
 0053A02E    lea         eax,[ebp-40]
 0053A031    call        00401EA8
 0053A036    push        eax
 0053A037    inc         dword ptr [ebp-48]
 0053A03A    add         esp,0FFFFFFF8
 0053A03D    mov         dl,byte ptr [ebp-68]
 0053A040    mov         eax,esp
 0053A042    call        0053A17C
 0053A047    lea         eax,[ebp-74]
 0053A04A    call        0053A258
 0053A04F    call        0053A288
 0053A054    push        eax
 0053A055    add         esp,0FFFFFFF8
 0053A058    mov         dl,byte ptr [ebp-68]
 0053A05B    mov         eax,esp
 0053A05D    call        0053A17C
 0053A062    lea         eax,[ebp-3C]
 0053A065    call        0053A1B4
 0053A06A    inc         dword ptr [ebp-48]
 0053A06D    call        0053A298
 0053A072    push        eax
 0053A073    mov         edx,6DCA5E
 0053A078    lea         eax,[ebp-34]
 0053A07B    call        0067DAB4
 0053A080    inc         dword ptr [ebp-48]
 0053A083    mov         eax,dword ptr [eax]
 0053A085    pop         edx
 0053A086    pop         ecx
 0053A087    call        00658FBC
 0053A08C    lea         edx,[ebp-40]
 0053A08F    mov         eax,dword ptr [ebp-14]
 0053A092    call        0067DCD0
 0053A097    mov         eax,dword ptr [ebp-14]
 0053A09A    mov         word ptr [ebp-54],0B0
 0053A0A0    push        eax
 0053A0A1    dec         dword ptr [ebp-48]
 0053A0A4    lea         eax,[ebp-40]
 0053A0A7    mov         edx,2
 0053A0AC    call        0067DCA0
 0053A0B1    dec         dword ptr [ebp-48]
 0053A0B4    lea         eax,[ebp-3C]
 0053A0B7    mov         edx,2
 0053A0BC    call        0053A224
 0053A0C1    dec         dword ptr [ebp-48]
 0053A0C4    lea         eax,[ebp-34]
 0053A0C7    mov         edx,2
 0053A0CC    call        0067DCA0
 0053A0D1    dec         dword ptr [ebp-48]
 0053A0D4    lea         eax,[ebp-0C]
 0053A0D7    mov         edx,2
 0053A0DC    call        0067DCA0
 0053A0E1    dec         dword ptr [ebp-48]
 0053A0E4    lea         eax,[ebp-8]
 0053A0E7    mov         edx,2
 0053A0EC    call        0067DCA0
 0053A0F1    dec         dword ptr [ebp-48]
 0053A0F4    lea         eax,[ebp-4]
 0053A0F7    mov         edx,2
 0053A0FC    call        0067DCA0
 0053A101    pop         eax
 0053A102    mov         word ptr [ebp-54],0A4
 0053A108    inc         dword ptr [ebp-48]
 0053A10B    mov         edx,dword ptr [ebp-64]
 0053A10E    mov         dword ptr fs:[0],edx
>0053A115    jmp         0053A176
 0053A117    mov         word ptr [ebp-54],0BC
 0053A11D    lea         edx,[ebp-0C]
 0053A120    mov         eax,dword ptr [ebp-14]
 0053A123    call        0067DCD0
 0053A128    mov         eax,dword ptr [ebp-14]
 0053A12B    mov         word ptr [ebp-54],0C8
 0053A131    push        eax
 0053A132    dec         dword ptr [ebp-48]
 0053A135    lea         eax,[ebp-0C]
 0053A138    mov         edx,2
 0053A13D    call        0067DCA0
 0053A142    dec         dword ptr [ebp-48]
 0053A145    lea         eax,[ebp-8]
 0053A148    mov         edx,2
 0053A14D    call        0067DCA0
 0053A152    dec         dword ptr [ebp-48]
 0053A155    lea         eax,[ebp-4]
 0053A158    mov         edx,2
 0053A15D    call        0067DCA0
 0053A162    pop         eax
 0053A163    mov         word ptr [ebp-54],0BC
 0053A169    inc         dword ptr [ebp-48]
 0053A16C    mov         edx,dword ptr [ebp-64]
 0053A16F    mov         dword ptr fs:[0],edx
 0053A176    mov         esp,ebp
 0053A178    pop         ebp
 0053A179    ret
end;*}

//0053A17C
{*function sub_0053A17C(?:?; ?:?):?;
begin
 0053A17C    push        ebp
 0053A17D    mov         ebp,esp
 0053A17F    add         esp,0FFFFFFD4
 0053A182    mov         byte ptr [ebp-29],dl
 0053A185    mov         dword ptr [ebp-28],eax
 0053A188    mov         eax,6E0660
 0053A18D    call        0066FECC
 0053A192    mov         dl,byte ptr [ebp-29]
 0053A195    mov         ecx,dword ptr [ebp-28]
 0053A198    mov         byte ptr [ecx],dl
 0053A19A    mov         eax,dword ptr [ebp-28]
 0053A19D    mov         byte ptr [eax+4],2
 0053A1A1    mov         edx,dword ptr [ebp-24]
 0053A1A4    mov         dword ptr fs:[0],edx
 0053A1AB    mov         eax,dword ptr [ebp-28]
 0053A1AE    mov         esp,ebp
 0053A1B0    pop         ebp
 0053A1B1    ret
end;*}

//0053A1B4
{*function sub_0053A1B4(?:?; ?:?; ?:?):?;
begin
 0053A1B4    push        ebp
 0053A1B5    mov         ebp,esp
 0053A1B7    add         esp,0FFFFFFD4
 0053A1BA    mov         dword ptr [ebp-4],eax
 0053A1BD    mov         eax,6E0678
 0053A1C2    call        0066FECC
 0053A1C7    mov         word ptr [ebp-18],8
 0053A1CD    push        0
 0053A1CF    push        0
 0053A1D1    push        540B08
 0053A1D6    push        3
 0053A1D8    mov         edx,dword ptr [ebp-4]
 0053A1DB    mov         ecx,1
 0053A1E0    mov         dword ptr [edx+4],ecx
 0053A1E3    push        ecx
 0053A1E4    push        8
 0053A1E6    push        0
 0053A1E8    call        0066EECC
 0053A1ED    add         esp,1C
 0053A1F0    mov         edx,dword ptr [ebp-4]
 0053A1F3    mov         dword ptr [edx],eax
 0053A1F5    mov         eax,dword ptr [ebp-4]
 0053A1F8    mov         eax,dword ptr [eax]
 0053A1FA    mov         dword ptr [ebp-2C],eax
 0053A1FD    mov         edx,dword ptr [ebp+8]
 0053A200    mov         ecx,dword ptr [ebp-2C]
 0053A203    mov         dword ptr [ecx],edx
 0053A205    mov         al,byte ptr [ebp+0C]
 0053A208    mov         edx,dword ptr [ebp-2C]
 0053A20B    mov         byte ptr [edx+4],al
 0053A20E    mov         ecx,dword ptr [ebp-28]
 0053A211    mov         dword ptr fs:[0],ecx
 0053A218    mov         eax,dword ptr [ebp-4]
 0053A21B    mov         esp,ebp
 0053A21D    pop         ebp
 0053A21E    ret         8
end;*}

//0053A224
{*procedure sub_0053A224(?:?; ?:?);
begin
 0053A224    push        ebp
 0053A225    mov         ebp,esp
 0053A227    add         esp,0FFFFFFF8
 0053A22A    mov         dword ptr [ebp-8],edx
 0053A22D    mov         dword ptr [ebp-4],eax
 0053A230    mov         eax,dword ptr [ebp-4]
 0053A233    test        eax,eax
>0053A235    je          0053A251
 0053A237    mov         edx,dword ptr [ebp-4]
 0053A23A    push        dword ptr [edx]
 0053A23C    call        0066EAC0
 0053A241    pop         ecx
 0053A242    test        byte ptr [ebp-8],1
>0053A246    je          0053A251
 0053A248    push        dword ptr [ebp-4]
 0053A24B    call        0066EAB0
 0053A250    pop         ecx
 0053A251    pop         ecx
 0053A252    pop         ecx
 0053A253    pop         ebp
 0053A254    ret
end;*}

//0053A258
{*function sub_0053A258(?:?):?;
begin
 0053A258    push        ebp
 0053A259    mov         ebp,esp
 0053A25B    add         esp,0FFFFFFD8
 0053A25E    mov         dword ptr [ebp-28],eax
 0053A261    mov         eax,6E068C
 0053A266    call        0066FECC
 0053A26B    mov         edx,dword ptr [ebp-28]
 0053A26E    mov         dword ptr [edx],1
 0053A274    mov         ecx,dword ptr [ebp-24]
 0053A277    mov         dword ptr fs:[0],ecx
 0053A27E    mov         eax,dword ptr [ebp-28]
 0053A281    mov         esp,ebp
 0053A283    pop         ebp
 0053A284    ret         8
end;*}

//0053A288
{*procedure sub_0053A288(?:?);
begin
 0053A288    push        ebp
 0053A289    mov         ebp,esp
 0053A28B    push        ecx
 0053A28C    mov         dword ptr [ebp-4],eax
 0053A28F    mov         eax,dword ptr [ebp-4]
 0053A292    mov         eax,dword ptr [eax]
 0053A294    dec         eax
 0053A295    pop         ecx
 0053A296    pop         ebp
 0053A297    ret
end;*}

//0053A298
{*function sub_0053A298(?:?):?;
begin
 0053A298    push        ebp
 0053A299    mov         ebp,esp
 0053A29B    push        ecx
 0053A29C    mov         dword ptr [ebp-4],eax
 0053A29F    mov         eax,dword ptr [ebp-4]
 0053A2A2    mov         eax,dword ptr [eax]
 0053A2A4    pop         ecx
 0053A2A5    pop         ebp
 0053A2A6    ret
end;*}

//0053A308
{*function sub_0053A308(?:dword):?;
begin
 0053A308    push        ebp
 0053A309    mov         ebp,esp
 0053A30B    add         esp,0FFFFFFCC
 0053A30E    mov         dword ptr [ebp-2C],eax
 0053A311    mov         eax,6DF68C
 0053A316    call        0066FECC
 0053A31B    mov         eax,dword ptr [ebp-2C]
 0053A31E    call        005312C8
 0053A323    mov         dword ptr [ebp-30],eax
 0053A326    mov         edx,dword ptr [ebp-30]
 0053A329    test        edx,edx
>0053A32B    jl          0053A345
 0053A32D    mov         ecx,dword ptr ds:[6941CC];0x0 gvar_006941CC
 0053A333    mov         eax,dword ptr [ebp-30]
 0053A336    mov         eax,dword ptr [ecx+eax*4]
 0053A339    mov         edx,dword ptr [ebp-28]
 0053A33C    mov         dword ptr fs:[0],edx
>0053A343    jmp         0053A3B3
 0053A345    mov         word ptr [ebp-18],14
 0053A34B    lea         eax,[ebp-4]
 0053A34E    call        00401EA8
 0053A353    mov         edx,eax
 0053A355    inc         dword ptr [ebp-0C]
 0053A358    mov         eax,dword ptr [ebp-2C]
 0053A35B    call        0053188C
 0053A360    lea         edx,[ebp-4]
 0053A363    mov         edx,dword ptr [edx]
 0053A365    mov         eax,[006941D0];0x0 gvar_006941D0
 0053A36A    mov         ecx,dword ptr [eax]
 0053A36C    call        dword ptr [ecx+54]
 0053A36F    mov         dword ptr [ebp-34],eax
 0053A372    dec         dword ptr [ebp-0C]
 0053A375    lea         eax,[ebp-4]
 0053A378    mov         edx,2
 0053A37D    call        0067DCA0
 0053A382    mov         word ptr [ebp-18],8
 0053A388    mov         ecx,dword ptr [ebp-34]
 0053A38B    inc         ecx
>0053A38C    je          0053A3A7
 0053A38E    mov         edx,dword ptr [ebp-34]
 0053A391    mov         eax,[006941D0];0x0 gvar_006941D0
 0053A396    mov         ecx,dword ptr [eax]
 0053A398    call        dword ptr [ecx+18]
 0053A39B    mov         edx,dword ptr [ebp-28]
 0053A39E    mov         dword ptr fs:[0],edx
>0053A3A5    jmp         0053A3B3
 0053A3A7    xor         eax,eax
 0053A3A9    mov         ecx,dword ptr [ebp-28]
 0053A3AC    mov         dword ptr fs:[0],ecx
 0053A3B3    mov         esp,ebp
 0053A3B5    pop         ebp
 0053A3B6    ret
end;*}

//0053A3B8
{*procedure sub_0053A3B8(?:AnsiString; ?:?; ?:?);
begin
 0053A3B8    push        ebp
 0053A3B9    mov         ebp,esp
 0053A3BB    add         esp,0FFFFFF2C
 0053A3C1    mov         dword ptr [ebp-40],edx
 0053A3C4    mov         dword ptr [ebp-4],eax
 0053A3C7    mov         eax,6DF8B4
 0053A3CC    call        0066FECC
 0053A3D1    mov         dword ptr [ebp-7C],2
 0053A3D8    lea         edx,[ebp-4]
 0053A3DB    lea         eax,[ebp-4]
 0053A3DE    call        0067DAEC
 0053A3E3    inc         dword ptr [ebp-7C]
 0053A3E6    mov         word ptr [ebp-88],8
 0053A3EF    lea         edx,[ebp+8]
 0053A3F2    lea         eax,[ebp+8]
 0053A3F5    call        0067E788
 0053A3FA    inc         dword ptr [ebp-7C]
 0053A3FD    mov         word ptr [ebp-88],14
 0053A406    lea         eax,[ebp-34]
 0053A409    call        0046DFF0
 0053A40E    add         dword ptr [ebp-7C],3
 0053A412    mov         word ptr [ebp-88],8
 0053A41B    mov         word ptr [ebp-88],20
 0053A424    lea         eax,[ebp-38]
 0053A427    call        00401EA8
 0053A42C    inc         dword ptr [ebp-7C]
 0053A42F    mov         word ptr [ebp-88],8
 0053A438    lea         eax,[ebp+8]
 0053A43B    call        0067EA30
 0053A440    cmp         eax,100
>0053A445    jne         0053A4F1
 0053A44B    mov         word ptr [ebp-88],2C
 0053A454    lea         eax,[ebp-3C]
 0053A457    call        00401EA8
 0053A45C    mov         edx,eax
 0053A45E    inc         dword ptr [ebp-7C]
 0053A461    lea         eax,[ebp+8]
 0053A464    call        0067E984
 0053A469    lea         edx,[ebp-3C]
 0053A46C    mov         eax,dword ptr [ebp-40]
 0053A46F    call        0067DCD0
 0053A474    mov         eax,dword ptr [ebp-40]
 0053A477    mov         word ptr [ebp-88],38
 0053A480    push        eax
 0053A481    dec         dword ptr [ebp-7C]
 0053A484    lea         eax,[ebp-3C]
 0053A487    mov         edx,2
 0053A48C    call        0067DCA0
 0053A491    dec         dword ptr [ebp-7C]
 0053A494    lea         eax,[ebp-38]
 0053A497    mov         edx,2
 0053A49C    call        0067DCA0
 0053A4A1    sub         dword ptr [ebp-7C],3
 0053A4A5    lea         eax,[ebp-34]
 0053A4A8    mov         edx,2
 0053A4AD    call        0046E124
 0053A4B2    dec         dword ptr [ebp-7C]
 0053A4B5    lea         eax,[ebp+8]
 0053A4B8    mov         edx,2
 0053A4BD    call        0067E8B4
 0053A4C2    dec         dword ptr [ebp-7C]
 0053A4C5    lea         eax,[ebp-4]
 0053A4C8    mov         edx,2
 0053A4CD    call        0067DCA0
 0053A4D2    pop         eax
 0053A4D3    mov         word ptr [ebp-88],2C
 0053A4DC    inc         dword ptr [ebp-7C]
 0053A4DF    mov         edx,dword ptr [ebp-98]
 0053A4E5    mov         dword ptr fs:[0],edx
>0053A4EC    jmp         0053AE4E
 0053A4F1    lea         eax,[ebp+8]
 0053A4F4    call        0067E924
 0053A4F9    mov         dword ptr [ebp-0A8],eax
 0053A4FF    mov         word ptr [ebp-88],44
 0053A508    mov         edx,6DCA63
 0053A50D    lea         eax,[ebp-44]
 0053A510    call        0067DAB4
 0053A515    inc         dword ptr [ebp-7C]
 0053A518    mov         edx,dword ptr [eax]
 0053A51A    mov         eax,dword ptr [ebp-4]
 0053A51D    call        SameText
 0053A522    test        al,al
>0053A524    jne         0053A5D6
 0053A52A    mov         edx,6DCA6B
 0053A52F    lea         eax,[ebp-48]
 0053A532    call        0067DAB4
 0053A537    inc         dword ptr [ebp-7C]
 0053A53A    mov         edx,dword ptr [eax]
 0053A53C    mov         eax,dword ptr [ebp-4]
 0053A53F    call        SameText
 0053A544    test        al,al
 0053A546    setne       dl
 0053A549    and         edx,1
 0053A54C    push        edx
 0053A54D    dec         dword ptr [ebp-7C]
 0053A550    lea         eax,[ebp-48]
 0053A553    mov         edx,2
 0053A558    call        0067DCA0
 0053A55D    pop         ecx
 0053A55E    test        ecx,ecx
>0053A560    jne         0053A5D6
 0053A562    mov         edx,6DCA74
 0053A567    lea         eax,[ebp-4C]
 0053A56A    call        0067DAB4
 0053A56F    inc         dword ptr [ebp-7C]
 0053A572    mov         edx,dword ptr [eax]
 0053A574    mov         eax,dword ptr [ebp-4]
 0053A577    call        SameText
 0053A57C    test        al,al
 0053A57E    setne       cl
 0053A581    and         ecx,1
 0053A584    push        ecx
 0053A585    dec         dword ptr [ebp-7C]
 0053A588    lea         eax,[ebp-4C]
 0053A58B    mov         edx,2
 0053A590    call        0067DCA0
 0053A595    pop         ecx
 0053A596    test        ecx,ecx
>0053A598    jne         0053A5D6
 0053A59A    mov         edx,6DCA7D
 0053A59F    lea         eax,[ebp-50]
 0053A5A2    call        0067DAB4
 0053A5A7    inc         dword ptr [ebp-7C]
 0053A5AA    mov         edx,dword ptr [eax]
 0053A5AC    mov         eax,dword ptr [ebp-4]
 0053A5AF    call        SameText
 0053A5B4    test        al,al
 0053A5B6    setne       cl
 0053A5B9    and         ecx,1
 0053A5BC    push        ecx
 0053A5BD    dec         dword ptr [ebp-7C]
 0053A5C0    lea         eax,[ebp-50]
 0053A5C3    mov         edx,2
 0053A5C8    call        0067DCA0
 0053A5CD    pop         ecx
 0053A5CE    test        ecx,ecx
>0053A5D0    jne         0053A5D6
 0053A5D2    xor         eax,eax
>0053A5D4    jmp         0053A5DB
 0053A5D6    mov         eax,1
 0053A5DB    push        eax
 0053A5DC    dec         dword ptr [ebp-7C]
 0053A5DF    lea         eax,[ebp-44]
 0053A5E2    mov         edx,2
 0053A5E7    call        0067DCA0
 0053A5EC    pop         ecx
 0053A5ED    test        cl,cl
>0053A5EF    je          0053A745
 0053A5F5    mov         eax,dword ptr [ebp-0A8]
 0053A5FB    test        eax,eax
>0053A5FD    je          0053A6A4
 0053A603    mov         word ptr [ebp-88],50
 0053A60C    mov         edx,6DCA86
 0053A611    lea         eax,[ebp-54]
 0053A614    call        0067DAB4
 0053A619    inc         dword ptr [ebp-7C]
 0053A61C    lea         edx,[ebp-54]
 0053A61F    mov         eax,dword ptr [ebp-40]
 0053A622    call        0067DCD0
 0053A627    mov         eax,dword ptr [ebp-40]
 0053A62A    mov         word ptr [ebp-88],5C
 0053A633    push        eax
 0053A634    dec         dword ptr [ebp-7C]
 0053A637    lea         eax,[ebp-54]
 0053A63A    mov         edx,2
 0053A63F    call        0067DCA0
 0053A644    dec         dword ptr [ebp-7C]
 0053A647    lea         eax,[ebp-38]
 0053A64A    mov         edx,2
 0053A64F    call        0067DCA0
 0053A654    sub         dword ptr [ebp-7C],3
 0053A658    lea         eax,[ebp-34]
 0053A65B    mov         edx,2
 0053A660    call        0046E124
 0053A665    dec         dword ptr [ebp-7C]
 0053A668    lea         eax,[ebp+8]
 0053A66B    mov         edx,2
 0053A670    call        0067E8B4
 0053A675    dec         dword ptr [ebp-7C]
 0053A678    lea         eax,[ebp-4]
 0053A67B    mov         edx,2
 0053A680    call        0067DCA0
 0053A685    pop         eax
 0053A686    mov         word ptr [ebp-88],50
 0053A68F    inc         dword ptr [ebp-7C]
 0053A692    mov         edx,dword ptr [ebp-98]
 0053A698    mov         dword ptr fs:[0],edx
>0053A69F    jmp         0053AE4E
 0053A6A4    mov         word ptr [ebp-88],68
 0053A6AD    mov         edx,6DCA8B
 0053A6B2    lea         eax,[ebp-58]
 0053A6B5    call        0067DAB4
 0053A6BA    inc         dword ptr [ebp-7C]
 0053A6BD    lea         edx,[ebp-58]
 0053A6C0    mov         eax,dword ptr [ebp-40]
 0053A6C3    call        0067DCD0
 0053A6C8    mov         eax,dword ptr [ebp-40]
 0053A6CB    mov         word ptr [ebp-88],74
 0053A6D4    push        eax
 0053A6D5    dec         dword ptr [ebp-7C]
 0053A6D8    lea         eax,[ebp-58]
 0053A6DB    mov         edx,2
 0053A6E0    call        0067DCA0
 0053A6E5    dec         dword ptr [ebp-7C]
 0053A6E8    lea         eax,[ebp-38]
 0053A6EB    mov         edx,2
 0053A6F0    call        0067DCA0
 0053A6F5    sub         dword ptr [ebp-7C],3
 0053A6F9    lea         eax,[ebp-34]
 0053A6FC    mov         edx,2
 0053A701    call        0046E124
 0053A706    dec         dword ptr [ebp-7C]
 0053A709    lea         eax,[ebp+8]
 0053A70C    mov         edx,2
 0053A711    call        0067E8B4
 0053A716    dec         dword ptr [ebp-7C]
 0053A719    lea         eax,[ebp-4]
 0053A71C    mov         edx,2
 0053A721    call        0067DCA0
 0053A726    pop         eax
 0053A727    mov         word ptr [ebp-88],68
 0053A730    inc         dword ptr [ebp-7C]
 0053A733    mov         edx,dword ptr [ebp-98]
 0053A739    mov         dword ptr fs:[0],edx
>0053A740    jmp         0053AE4E
 0053A745    mov         eax,dword ptr [ebp-4]
 0053A748    call        00537230
 0053A74D    mov         dword ptr [ebp-0B0],eax
 0053A753    mov         eax,dword ptr [ebp-0B0]
 0053A759    call        00531EE8
 0053A75E    test        al,al
>0053A760    je          0053AA48
 0053A766    mov         eax,dword ptr [ebp-0B0]
 0053A76C    call        005312C8
 0053A771    mov         dword ptr [ebp-0A4],eax
 0053A777    add         dword ptr [ebp-0A4],4
 0053A77E    inc         dword ptr [ebp-0A4]
 0053A784    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053A78A    mov         ecx,dword ptr [ebp-0A4]
 0053A790    mov         al,byte ptr [edx+ecx]
 0053A793    mov         byte ptr [ebp-99],al
 0053A799    inc         dword ptr [ebp-0A4]
 0053A79F    mov         word ptr [ebp-88],80
 0053A7A8    xor         ecx,ecx
 0053A7AA    mov         cl,byte ptr [ebp-99]
 0053A7B0    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053A7B6    mov         eax,dword ptr [ebp-0A4]
 0053A7BC    add         edx,eax
 0053A7BE    lea         eax,[ebp-5C]
 0053A7C1    call        0067DB28
 0053A7C6    mov         edx,eax
 0053A7C8    inc         dword ptr [ebp-7C]
 0053A7CB    lea         eax,[ebp-38]
 0053A7CE    call        0067DCD0
 0053A7D3    dec         dword ptr [ebp-7C]
 0053A7D6    lea         eax,[ebp-5C]
 0053A7D9    mov         edx,2
 0053A7DE    call        0067DCA0
 0053A7E3    xor         ecx,ecx
 0053A7E5    mov         cl,byte ptr [ebp-99]
 0053A7EB    add         dword ptr [ebp-0A4],ecx
 0053A7F1    inc         dword ptr [ebp-0A4]
 0053A7F7    mov         eax,[006941D4];0x0 gvar_006941D4
 0053A7FC    mov         edx,dword ptr [ebp-0A4]
 0053A802    mov         ecx,dword ptr [eax+edx]
 0053A805    mov         dword ptr [ebp-0B8],ecx
 0053A80B    add         dword ptr [ebp-0A4],4
 0053A812    mov         eax,[006941D4];0x0 gvar_006941D4
 0053A817    mov         edx,dword ptr [ebp-0A4]
 0053A81D    mov         ecx,dword ptr [eax+edx]
 0053A820    mov         dword ptr [ebp-0BC],ecx
 0053A826    add         dword ptr [ebp-0A4],4
 0053A82D    mov         eax,[006941D4];0x0 gvar_006941D4
 0053A832    mov         edx,dword ptr [ebp-0A4]
 0053A838    mov         ecx,dword ptr [eax+edx]
 0053A83B    mov         dword ptr [ebp-0B4],ecx
 0053A841    add         dword ptr [ebp-0A4],4
 0053A848    mov         eax,dword ptr [ebp-0B4]
 0053A84E    mov         edx,dword ptr [ebp-0B0]
 0053A854    cmp         eax,edx
>0053A856    je          0053A8EA
 0053A85C    mov         eax,dword ptr [ebp-0B4]
 0053A862    call        005312C8
 0053A867    mov         dword ptr [ebp-0A4],eax
 0053A86D    add         dword ptr [ebp-0A4],4
 0053A874    inc         dword ptr [ebp-0A4]
 0053A87A    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053A880    mov         ecx,dword ptr [ebp-0A4]
 0053A886    mov         al,byte ptr [edx+ecx]
 0053A889    mov         byte ptr [ebp-99],al
 0053A88F    inc         dword ptr [ebp-0A4]
 0053A895    xor         edx,edx
 0053A897    mov         dl,byte ptr [ebp-99]
 0053A89D    add         dword ptr [ebp-0A4],edx
 0053A8A3    inc         dword ptr [ebp-0A4]
 0053A8A9    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053A8AF    mov         eax,dword ptr [ebp-0A4]
 0053A8B5    mov         edx,dword ptr [ecx+eax]
 0053A8B8    mov         dword ptr [ebp-0C0],edx
 0053A8BE    add         dword ptr [ebp-0A4],4
 0053A8C5    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053A8CB    mov         eax,dword ptr [ebp-0A4]
 0053A8D1    mov         edx,dword ptr [ecx+eax]
 0053A8D4    mov         dword ptr [ebp-0C4],edx
 0053A8DA    add         dword ptr [ebp-0A4],4
 0053A8E1    add         dword ptr [ebp-0A4],4
>0053A8E8    jmp         0053A902
 0053A8EA    mov         ecx,dword ptr [ebp-0B8]
 0053A8F0    mov         dword ptr [ebp-0C0],ecx
 0053A8F6    mov         eax,dword ptr [ebp-0BC]
 0053A8FC    mov         dword ptr [ebp-0C4],eax
 0053A902    mov         edx,dword ptr [ebp-0C0]
 0053A908    mov         dword ptr [ebp-0A0],edx
>0053A90E    jmp         0053AA2F
 0053A913    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053A919    mov         eax,dword ptr [ebp-0A4]
 0053A91F    mov         dl,byte ptr [ecx+eax]
 0053A922    mov         byte ptr [ebp-99],dl
 0053A928    inc         dword ptr [ebp-0A4]
 0053A92E    mov         ecx,dword ptr [ebp-0A0]
 0053A934    mov         eax,dword ptr [ebp-0B8]
 0053A93A    cmp         ecx,eax
>0053A93C    jb          0053AA1B
 0053A942    mov         edx,dword ptr [ebp-0A0]
 0053A948    mov         ecx,dword ptr [ebp-0BC]
 0053A94E    cmp         edx,ecx
>0053A950    ja          0053AA1B
 0053A956    mov         eax,dword ptr [ebp-0A0]
 0053A95C    mov         edx,dword ptr [ebp-0A8]
 0053A962    cmp         eax,edx
>0053A964    jne         0053AA1B
 0053A96A    mov         word ptr [ebp-88],8C
 0053A973    xor         ecx,ecx
 0053A975    mov         cl,byte ptr [ebp-99]
 0053A97B    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053A981    mov         eax,dword ptr [ebp-0A4]
 0053A987    add         edx,eax
 0053A989    lea         eax,[ebp-60]
 0053A98C    call        0067DB28
 0053A991    mov         edx,eax
 0053A993    inc         dword ptr [ebp-7C]
 0053A996    mov         eax,dword ptr [ebp-40]
 0053A999    call        0067DCD0
 0053A99E    mov         eax,dword ptr [ebp-40]
 0053A9A1    mov         word ptr [ebp-88],98
 0053A9AA    push        eax
 0053A9AB    dec         dword ptr [ebp-7C]
 0053A9AE    lea         eax,[ebp-60]
 0053A9B1    mov         edx,2
 0053A9B6    call        0067DCA0
 0053A9BB    dec         dword ptr [ebp-7C]
 0053A9BE    lea         eax,[ebp-38]
 0053A9C1    mov         edx,2
 0053A9C6    call        0067DCA0
 0053A9CB    sub         dword ptr [ebp-7C],3
 0053A9CF    lea         eax,[ebp-34]
 0053A9D2    mov         edx,2
 0053A9D7    call        0046E124
 0053A9DC    dec         dword ptr [ebp-7C]
 0053A9DF    lea         eax,[ebp+8]
 0053A9E2    mov         edx,2
 0053A9E7    call        0067E8B4
 0053A9EC    dec         dword ptr [ebp-7C]
 0053A9EF    lea         eax,[ebp-4]
 0053A9F2    mov         edx,2
 0053A9F7    call        0067DCA0
 0053A9FC    pop         eax
 0053A9FD    mov         word ptr [ebp-88],8C
 0053AA06    inc         dword ptr [ebp-7C]
 0053AA09    mov         edx,dword ptr [ebp-98]
 0053AA0F    mov         dword ptr fs:[0],edx
>0053AA16    jmp         0053AE4E
 0053AA1B    xor         ecx,ecx
 0053AA1D    mov         cl,byte ptr [ebp-99]
 0053AA23    add         dword ptr [ebp-0A4],ecx
 0053AA29    inc         dword ptr [ebp-0A0]
 0053AA2F    mov         eax,dword ptr [ebp-0A0]
 0053AA35    mov         edx,dword ptr [ebp-0C4]
 0053AA3B    cmp         eax,edx
>0053AA3D    jbe         0053A913
>0053AA43    jmp         0053ADB2
 0053AA48    lea         eax,[ebp-4]
 0053AA4B    call        00403C0C
 0053AA50    mov         edx,eax
 0053AA52    mov         eax,6ECAB4
 0053AA57    call        00472C40
 0053AA5C    mov         dword ptr [ebp-0D4],eax
 0053AA62    lea         eax,[ebp-4]
 0053AA65    call        00403C0C
 0053AA6A    mov         ecx,eax
 0053AA6C    mov         eax,6ECAB4
 0053AA71    mov         edx,dword ptr [ebp-0D4]
 0053AA77    call        004701C8
 0053AA7C    mov         dword ptr [ebp-0AC],eax
 0053AA82    mov         ecx,dword ptr [ebp-0D4]
 0053AA88    test        ecx,ecx
>0053AA8A    je          0053AA98
 0053AA8C    push        dword ptr [ebp-0D4]
 0053AA92    call        0066EAC0
 0053AA97    pop         ecx
 0053AA98    mov         eax,dword ptr [ebp-0AC]
 0053AA9E    inc         eax
>0053AA9F    je          0053ADB2
 0053AAA5    mov         edx,dword ptr [ebp-0AC]
 0053AAAB    shl         edx,4
 0053AAAE    mov         ecx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 0053AAB4    mov         eax,dword ptr [ecx+edx+0C]
 0053AAB8    mov         dword ptr [ebp-0AC],eax
 0053AABE    lea         edx,[ebp-34]
 0053AAC1    push        edx
 0053AAC2    mov         eax,6ECAB4
 0053AAC7    mov         ecx,39
 0053AACC    mov         edx,dword ptr [ebp-0AC]
 0053AAD2    call        00472158
 0053AAD7    test        eax,eax
>0053AAD9    je          0053ADB2
 0053AADF    mov         al,byte ptr [ebp-2A]
 0053AAE2    cmp         al,44
>0053AAE4    jne         0053AB90
 0053AAEA    mov         word ptr [ebp-88],0A4
 0053AAF3    lea         eax,[ebp-64]
 0053AAF6    call        00401EA8
 0053AAFB    mov         edx,eax
 0053AAFD    inc         dword ptr [ebp-7C]
 0053AB00    lea         eax,[ebp+8]
 0053AB03    call        0067E984
 0053AB08    lea         edx,[ebp-64]
 0053AB0B    mov         eax,dword ptr [ebp-40]
 0053AB0E    call        0067DCD0
 0053AB13    mov         eax,dword ptr [ebp-40]
 0053AB16    mov         word ptr [ebp-88],0B0
 0053AB1F    push        eax
 0053AB20    dec         dword ptr [ebp-7C]
 0053AB23    lea         eax,[ebp-64]
 0053AB26    mov         edx,2
 0053AB2B    call        0067DCA0
 0053AB30    dec         dword ptr [ebp-7C]
 0053AB33    lea         eax,[ebp-38]
 0053AB36    mov         edx,2
 0053AB3B    call        0067DCA0
 0053AB40    sub         dword ptr [ebp-7C],3
 0053AB44    lea         eax,[ebp-34]
 0053AB47    mov         edx,2
 0053AB4C    call        0046E124
 0053AB51    dec         dword ptr [ebp-7C]
 0053AB54    lea         eax,[ebp+8]
 0053AB57    mov         edx,2
 0053AB5C    call        0067E8B4
 0053AB61    dec         dword ptr [ebp-7C]
 0053AB64    lea         eax,[ebp-4]
 0053AB67    mov         edx,2
 0053AB6C    call        0067DCA0
 0053AB71    pop         eax
 0053AB72    mov         word ptr [ebp-88],0A4
 0053AB7B    inc         dword ptr [ebp-7C]
 0053AB7E    mov         edx,dword ptr [ebp-98]
 0053AB84    mov         dword ptr fs:[0],edx
>0053AB8B    jmp         0053AE4E
 0053AB90    mov         word ptr [ebp-88],0BC
 0053AB99    mov         edx,6DCA91
 0053AB9E    lea         eax,[ebp-68]
 0053ABA1    call        0067DAB4
 0053ABA6    inc         dword ptr [ebp-7C]
 0053ABA9    lea         edx,[ebp-68]
 0053ABAC    lea         eax,[ebp-27]
 0053ABAF    call        0067DD9C
 0053ABB4    push        eax
 0053ABB5    dec         dword ptr [ebp-7C]
 0053ABB8    lea         eax,[ebp-68]
 0053ABBB    mov         edx,2
 0053ABC0    call        0067DCA0
 0053ABC5    pop         ecx
 0053ABC6    test        cl,cl
>0053ABC8    je          0053ADB2
 0053ABCE    lea         eax,[ebp-27]
 0053ABD1    call        00403C0C
 0053ABD6    mov         dword ptr [ebp-0C8],eax
 0053ABDC    mov         edx,dword ptr [ebp-0C8]
 0053ABE2    mov         dword ptr [ebp-0D0],edx
 0053ABE8    xor         ecx,ecx
 0053ABEA    mov         dword ptr [ebp-0A0],ecx
 0053ABF0    mov         eax,dword ptr [ebp-0A0]
 0053ABF6    mov         edx,dword ptr [ebp-0A8]
 0053ABFC    cmp         eax,edx
>0053ABFE    jg          0053ACF0
 0053AC04    mov         ecx,dword ptr [ebp-0D0]
 0053AC0A    inc         ecx
 0053AC0B    mov         dword ptr [ebp-0CC],ecx
 0053AC11    push        2C
 0053AC13    push        dword ptr [ebp-0CC]
 0053AC19    call        0066FBAD
 0053AC1E    add         esp,8
 0053AC21    mov         dword ptr [ebp-0D0],eax
 0053AC27    mov         eax,dword ptr [ebp-0D0]
 0053AC2D    test        eax,eax
>0053AC2F    jne         0053ACD6
 0053AC35    mov         word ptr [ebp-88],0C8
 0053AC3E    mov         edx,6DCA92
 0053AC43    lea         eax,[ebp-6C]
 0053AC46    call        0067DAB4
 0053AC4B    inc         dword ptr [ebp-7C]
 0053AC4E    lea         edx,[ebp-6C]
 0053AC51    mov         eax,dword ptr [ebp-40]
 0053AC54    call        0067DCD0
 0053AC59    mov         eax,dword ptr [ebp-40]
 0053AC5C    mov         word ptr [ebp-88],0D4
 0053AC65    push        eax
 0053AC66    dec         dword ptr [ebp-7C]
 0053AC69    lea         eax,[ebp-6C]
 0053AC6C    mov         edx,2
 0053AC71    call        0067DCA0
 0053AC76    dec         dword ptr [ebp-7C]
 0053AC79    lea         eax,[ebp-38]
 0053AC7C    mov         edx,2
 0053AC81    call        0067DCA0
 0053AC86    sub         dword ptr [ebp-7C],3
 0053AC8A    lea         eax,[ebp-34]
 0053AC8D    mov         edx,2
 0053AC92    call        0046E124
 0053AC97    dec         dword ptr [ebp-7C]
 0053AC9A    lea         eax,[ebp+8]
 0053AC9D    mov         edx,2
 0053ACA2    call        0067E8B4
 0053ACA7    dec         dword ptr [ebp-7C]
 0053ACAA    lea         eax,[ebp-4]
 0053ACAD    mov         edx,2
 0053ACB2    call        0067DCA0
 0053ACB7    pop         eax
 0053ACB8    mov         word ptr [ebp-88],0C8
 0053ACC1    inc         dword ptr [ebp-7C]
 0053ACC4    mov         edx,dword ptr [ebp-98]
 0053ACCA    mov         dword ptr fs:[0],edx
>0053ACD1    jmp         0053AE4E
 0053ACD6    inc         dword ptr [ebp-0A0]
 0053ACDC    mov         ecx,dword ptr [ebp-0A0]
 0053ACE2    mov         eax,dword ptr [ebp-0A8]
 0053ACE8    cmp         ecx,eax
>0053ACEA    jle         0053AC04
 0053ACF0    mov         word ptr [ebp-88],0E0
 0053ACF9    lea         eax,[ebp-70]
 0053ACFC    call        00401EA8
 0053AD01    push        eax
 0053AD02    inc         dword ptr [ebp-7C]
 0053AD05    mov         ecx,dword ptr [ebp-0D0]
 0053AD0B    mov         edx,dword ptr [ebp-0CC]
 0053AD11    sub         ecx,edx
 0053AD13    mov         edx,dword ptr [ebp-0CC]
 0053AD19    mov         eax,dword ptr [ebp-0C8]
 0053AD1F    sub         edx,eax
 0053AD21    inc         edx
 0053AD22    lea         eax,[ebp-27]
 0053AD25    call        0067E0BC
 0053AD2A    lea         edx,[ebp-70]
 0053AD2D    mov         eax,dword ptr [ebp-40]
 0053AD30    call        0067DCD0
 0053AD35    mov         eax,dword ptr [ebp-40]
 0053AD38    mov         word ptr [ebp-88],0EC
 0053AD41    push        eax
 0053AD42    dec         dword ptr [ebp-7C]
 0053AD45    lea         eax,[ebp-70]
 0053AD48    mov         edx,2
 0053AD4D    call        0067DCA0
 0053AD52    dec         dword ptr [ebp-7C]
 0053AD55    lea         eax,[ebp-38]
 0053AD58    mov         edx,2
 0053AD5D    call        0067DCA0
 0053AD62    sub         dword ptr [ebp-7C],3
 0053AD66    lea         eax,[ebp-34]
 0053AD69    mov         edx,2
 0053AD6E    call        0046E124
 0053AD73    dec         dword ptr [ebp-7C]
 0053AD76    lea         eax,[ebp+8]
 0053AD79    mov         edx,2
 0053AD7E    call        0067E8B4
 0053AD83    dec         dword ptr [ebp-7C]
 0053AD86    lea         eax,[ebp-4]
 0053AD89    mov         edx,2
 0053AD8E    call        0067DCA0
 0053AD93    pop         eax
 0053AD94    mov         word ptr [ebp-88],0E0
 0053AD9D    inc         dword ptr [ebp-7C]
 0053ADA0    mov         edx,dword ptr [ebp-98]
 0053ADA6    mov         dword ptr fs:[0],edx
>0053ADAD    jmp         0053AE4E
 0053ADB2    mov         word ptr [ebp-88],0F8
 0053ADBB    mov         edx,6DCA93
 0053ADC0    lea         eax,[ebp-74]
 0053ADC3    call        0067DAB4
 0053ADC8    inc         dword ptr [ebp-7C]
 0053ADCB    lea         edx,[ebp-74]
 0053ADCE    mov         eax,dword ptr [ebp-40]
 0053ADD1    call        0067DCD0
 0053ADD6    mov         eax,dword ptr [ebp-40]
 0053ADD9    mov         word ptr [ebp-88],104
 0053ADE2    push        eax
 0053ADE3    dec         dword ptr [ebp-7C]
 0053ADE6    lea         eax,[ebp-74]
 0053ADE9    mov         edx,2
 0053ADEE    call        0067DCA0
 0053ADF3    dec         dword ptr [ebp-7C]
 0053ADF6    lea         eax,[ebp-38]
 0053ADF9    mov         edx,2
 0053ADFE    call        0067DCA0
 0053AE03    sub         dword ptr [ebp-7C],3
 0053AE07    lea         eax,[ebp-34]
 0053AE0A    mov         edx,2
 0053AE0F    call        0046E124
 0053AE14    dec         dword ptr [ebp-7C]
 0053AE17    lea         eax,[ebp+8]
 0053AE1A    mov         edx,2
 0053AE1F    call        0067E8B4
 0053AE24    dec         dword ptr [ebp-7C]
 0053AE27    lea         eax,[ebp-4]
 0053AE2A    mov         edx,2
 0053AE2F    call        0067DCA0
 0053AE34    pop         eax
 0053AE35    mov         word ptr [ebp-88],0F8
 0053AE3E    inc         dword ptr [ebp-7C]
 0053AE41    mov         edx,dword ptr [ebp-98]
 0053AE47    mov         dword ptr fs:[0],edx
 0053AE4E    mov         esp,ebp
 0053AE50    pop         ebp
 0053AE51    ret         10
end;*}

//0053AE54
{*procedure sub_0053AE54(?:AnsiString; ?:?; ?:?);
begin
 0053AE54    push        ebp
 0053AE55    mov         ebp,esp
 0053AE57    add         esp,0FFFFFF44
 0053AE5D    mov         dword ptr [ebp-70],ecx
 0053AE60    mov         dword ptr [ebp-98],edx
 0053AE66    mov         dword ptr [ebp-4],eax
 0053AE69    mov         eax,6DFAF8
 0053AE6E    call        0066FECC
 0053AE73    mov         dword ptr [ebp-78],1
 0053AE7A    lea         edx,[ebp-4]
 0053AE7D    lea         eax,[ebp-4]
 0053AE80    call        0067DAEC
 0053AE85    inc         dword ptr [ebp-78]
 0053AE88    mov         word ptr [ebp-84],8
 0053AE91    mov         word ptr [ebp-84],14
 0053AE9A    lea         eax,[ebp-34]
 0053AE9D    call        0046DFF0
 0053AEA2    add         dword ptr [ebp-78],3
 0053AEA6    mov         word ptr [ebp-84],8
 0053AEAF    mov         word ptr [ebp-84],20
 0053AEB8    lea         eax,[ebp-38]
 0053AEBB    call        00401EA8
 0053AEC0    inc         dword ptr [ebp-78]
 0053AEC3    mov         word ptr [ebp-84],8
 0053AECC    mov         word ptr [ebp-84],2C
 0053AED5    mov         edx,6DCA94
 0053AEDA    lea         eax,[ebp-3C]
 0053AEDD    call        0067DAB4
 0053AEE2    inc         dword ptr [ebp-78]
 0053AEE5    mov         word ptr [ebp-84],8
 0053AEEE    lea         eax,[ebp-4]
 0053AEF1    call        00403C0C
 0053AEF6    mov         edx,eax
 0053AEF8    mov         eax,6ECAB4
 0053AEFD    call        00472C40
 0053AF02    mov         dword ptr [ebp-0BC],eax
 0053AF08    lea         eax,[ebp-4]
 0053AF0B    call        00403C0C
 0053AF10    mov         ecx,eax
 0053AF12    mov         eax,6ECAB4
 0053AF17    mov         edx,dword ptr [ebp-0BC]
 0053AF1D    call        004701C8
 0053AF22    mov         dword ptr [ebp-0A4],eax
 0053AF28    mov         ecx,dword ptr [ebp-0BC]
 0053AF2E    test        ecx,ecx
>0053AF30    je          0053AF3E
 0053AF32    push        dword ptr [ebp-0BC]
 0053AF38    call        0066EAC0
 0053AF3D    pop         ecx
 0053AF3E    mov         eax,dword ptr [ebp-0A4]
 0053AF44    inc         eax
>0053AF45    je          0053B2C8
 0053AF4B    mov         edx,dword ptr [ebp-0A4]
 0053AF51    shl         edx,4
 0053AF54    mov         ecx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 0053AF5A    mov         eax,dword ptr [ecx+edx+0C]
 0053AF5E    mov         dword ptr [ebp-0A4],eax
 0053AF64    lea         edx,[ebp-34]
 0053AF67    push        edx
 0053AF68    mov         eax,6ECAB4
 0053AF6D    mov         ecx,1
 0053AF72    mov         edx,dword ptr [ebp-0A4]
 0053AF78    call        00472158
 0053AF7D    test        eax,eax
>0053AF7F    je          0053B2C8
 0053AF85    mov         word ptr [ebp-84],38
 0053AF8E    mov         edx,6DCA95
 0053AF93    lea         eax,[ebp-40]
 0053AF96    call        0067DAB4
 0053AF9B    inc         dword ptr [ebp-78]
 0053AF9E    lea         edx,[ebp-40]
 0053AFA1    lea         eax,[ebp-27]
 0053AFA4    call        0067DEF4
 0053AFA9    push        eax
 0053AFAA    dec         dword ptr [ebp-78]
 0053AFAD    lea         eax,[ebp-40]
 0053AFB0    mov         edx,2
 0053AFB5    call        0067DCA0
 0053AFBA    pop         ecx
 0053AFBB    test        ecx,ecx
>0053AFBD    je          0053B2C8
 0053AFC3    mov         eax,dword ptr [ebp-34]
 0053AFC6    mov         dword ptr [ebp-0A8],eax
 0053AFCC    mov         word ptr [ebp-84],44
 0053AFD5    lea         eax,[ebp-44]
 0053AFD8    call        00401EA8
 0053AFDD    push        eax
 0053AFDE    inc         dword ptr [ebp-78]
 0053AFE1    lea         eax,[ebp-4]
 0053AFE4    call        00405290
 0053AFE9    mov         ecx,eax
 0053AFEB    lea         eax,[ebp-27]
 0053AFEE    mov         edx,8
 0053AFF3    call        0067E0BC
 0053AFF8    lea         ecx,[ebp-44]
 0053AFFB    push        ecx
 0053AFFC    lea         eax,[ebp-48]
 0053AFFF    call        00401EA8
 0053B004    mov         edx,eax
 0053B006    inc         dword ptr [ebp-78]
 0053B009    pop         eax
 0053B00A    call        00531D20
 0053B00F    lea         edx,[ebp-48]
 0053B012    lea         eax,[ebp-38]
 0053B015    call        0067DCD0
 0053B01A    dec         dword ptr [ebp-78]
 0053B01D    lea         eax,[ebp-48]
 0053B020    mov         edx,2
 0053B025    call        0067DCA0
 0053B02A    dec         dword ptr [ebp-78]
 0053B02D    lea         eax,[ebp-44]
 0053B030    mov         edx,2
 0053B035    call        0067DCA0
 0053B03A    lea         eax,[ebp-38]
 0053B03D    call        00403C0C
 0053B042    mov         edx,eax
 0053B044    mov         eax,6ECAB4
 0053B049    call        00472C40
 0053B04E    mov         dword ptr [ebp-0BC],eax
 0053B054    lea         eax,[ebp-38]
 0053B057    call        00403C0C
 0053B05C    mov         ecx,eax
 0053B05E    mov         eax,6ECAB4
 0053B063    mov         edx,dword ptr [ebp-0BC]
 0053B069    call        004701C8
 0053B06E    mov         dword ptr [ebp-0A4],eax
 0053B074    mov         ecx,dword ptr [ebp-0BC]
 0053B07A    test        ecx,ecx
>0053B07C    je          0053B08A
 0053B07E    push        dword ptr [ebp-0BC]
 0053B084    call        0066EAC0
 0053B089    pop         ecx
 0053B08A    mov         eax,dword ptr [ebp-0A4]
 0053B090    inc         eax
>0053B091    je          0053B2C8
 0053B097    mov         edx,dword ptr [ebp-0A4]
 0053B09D    shl         edx,4
 0053B0A0    mov         ecx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 0053B0A6    mov         eax,dword ptr [ecx+edx+0C]
 0053B0AA    mov         dword ptr [ebp-0A4],eax
 0053B0B0    lea         edx,[ebp-34]
 0053B0B3    push        edx
 0053B0B4    mov         eax,6ECAB4
 0053B0B9    mov         ecx,1
 0053B0BE    mov         edx,dword ptr [ebp-0A4]
 0053B0C4    call        00472158
 0053B0C9    test        eax,eax
>0053B0CB    je          0053B2C8
 0053B0D1    mov         eax,dword ptr [ebp-98]
 0053B0D7    mov         dword ptr [ebp-0B0],eax
 0053B0DD    lea         eax,[ebp-27]
 0053B0E0    call        00403C0C
 0053B0E5    mov         dword ptr [ebp-0B4],eax
 0053B0EB    push        6DCA9D
 0053B0F0    push        dword ptr [ebp-0B4]
 0053B0F6    call        0066FDCC
 0053B0FB    add         esp,8
 0053B0FE    mov         dword ptr [ebp-0B8],eax
 0053B104    xor         edx,edx
 0053B106    mov         dword ptr [ebp-9C],edx
 0053B10C    mov         ecx,dword ptr [ebp-9C]
 0053B112    mov         eax,dword ptr [ebp-0A8]
 0053B118    cmp         ecx,eax
>0053B11A    jge         0053B2C8
 0053B120    mov         edx,dword ptr [ebp-0B0]
 0053B126    mov         cl,byte ptr [edx]
 0053B128    mov         byte ptr [ebp-0A9],cl
 0053B12E    xor         eax,eax
 0053B130    mov         dword ptr [ebp-0A0],eax
 0053B136    mov         ecx,dword ptr [ebp-0A0]
 0053B13C    mov         edx,1
 0053B141    shl         edx,cl
 0053B143    xor         eax,eax
 0053B145    mov         al,byte ptr [ebp-0A9]
 0053B14B    and         edx,eax
>0053B14D    je          0053B274
 0053B153    mov         word ptr [ebp-84],50
 0053B15C    mov         edx,6DCAA1
 0053B161    lea         eax,[ebp-4C]
 0053B164    call        0067DAB4
 0053B169    inc         dword ptr [ebp-78]
 0053B16C    lea         edx,[ebp-4C]
 0053B16F    lea         eax,[ebp-3C]
 0053B172    call        0067DD9C
 0053B177    push        eax
 0053B178    dec         dword ptr [ebp-78]
 0053B17B    lea         eax,[ebp-4C]
 0053B17E    mov         edx,2
 0053B183    call        0067DCA0
 0053B188    pop         ecx
 0053B189    test        cl,cl
>0053B18B    je          0053B1C1
 0053B18D    mov         word ptr [ebp-84],5C
 0053B196    mov         edx,6DCAA2
 0053B19B    lea         eax,[ebp-50]
 0053B19E    call        0067DAB4
 0053B1A3    inc         dword ptr [ebp-78]
 0053B1A6    lea         edx,[ebp-50]
 0053B1A9    lea         eax,[ebp-3C]
 0053B1AC    call        0067DCE4
 0053B1B1    dec         dword ptr [ebp-78]
 0053B1B4    lea         eax,[ebp-50]
 0053B1B7    mov         edx,2
 0053B1BC    call        0067DCA0
 0053B1C1    mov         ecx,dword ptr [ebp-0B8]
 0053B1C7    test        ecx,ecx
>0053B1C9    je          0053B201
 0053B1CB    mov         word ptr [ebp-84],68
 0053B1D4    lea         eax,[ebp-54]
 0053B1D7    mov         edx,dword ptr [ebp-0B8]
 0053B1DD    call        0067DAB4
 0053B1E2    mov         edx,eax
 0053B1E4    inc         dword ptr [ebp-78]
 0053B1E7    lea         eax,[ebp-3C]
 0053B1EA    call        0067DCE4
 0053B1EF    dec         dword ptr [ebp-78]
 0053B1F2    lea         eax,[ebp-54]
 0053B1F5    mov         edx,2
 0053B1FA    call        0067DCA0
>0053B1FF    jmp         0053B274
 0053B201    mov         word ptr [ebp-84],74
 0053B20A    lea         eax,[ebp-58]
 0053B20D    call        00401EA8
 0053B212    mov         edx,eax
 0053B214    inc         dword ptr [ebp-78]
 0053B217    mov         eax,dword ptr [ebp-9C]
 0053B21D    shl         eax,3
 0053B220    mov         ecx,dword ptr [ebp-0A0]
 0053B226    add         eax,ecx
 0053B228    call        00531730
 0053B22D    lea         edx,[ebp-58]
 0053B230    push        edx
 0053B231    lea         eax,[ebp-5C]
 0053B234    call        00401EA8
 0053B239    mov         ecx,eax
 0053B23B    inc         dword ptr [ebp-78]
 0053B23E    mov         eax,6DCAA4
 0053B243    pop         edx
 0053B244    call        0067E37C
 0053B249    lea         edx,[ebp-5C]
 0053B24C    lea         eax,[ebp-3C]
 0053B24F    call        0067DCE4
 0053B254    dec         dword ptr [ebp-78]
 0053B257    lea         eax,[ebp-5C]
 0053B25A    mov         edx,2
 0053B25F    call        0067DCA0
 0053B264    dec         dword ptr [ebp-78]
 0053B267    lea         eax,[ebp-58]
 0053B26A    mov         edx,2
 0053B26F    call        0067DCA0
 0053B274    mov         ecx,dword ptr [ebp-0B8]
 0053B27A    test        ecx,ecx
>0053B27C    je          0053B293
 0053B27E    push        6DCAA6
 0053B283    push        0
 0053B285    call        0066FDCC
 0053B28A    add         esp,8
 0053B28D    mov         dword ptr [ebp-0B8],eax
 0053B293    inc         dword ptr [ebp-0A0]
 0053B299    mov         eax,dword ptr [ebp-0A0]
 0053B29F    cmp         eax,8
>0053B2A2    jl          0053B136
 0053B2A8    inc         dword ptr [ebp-0B0]
 0053B2AE    inc         dword ptr [ebp-9C]
 0053B2B4    mov         edx,dword ptr [ebp-9C]
 0053B2BA    mov         ecx,dword ptr [ebp-0A8]
 0053B2C0    cmp         edx,ecx
>0053B2C2    jl          0053B120
 0053B2C8    mov         word ptr [ebp-84],80
 0053B2D1    mov         edx,6DCAA9
 0053B2D6    lea         eax,[ebp-60]
 0053B2D9    call        0067DAB4
 0053B2DE    inc         dword ptr [ebp-78]
 0053B2E1    lea         edx,[ebp-60]
 0053B2E4    lea         eax,[ebp-3C]
 0053B2E7    call        0067DD9C
 0053B2EC    push        eax
 0053B2ED    dec         dword ptr [ebp-78]
 0053B2F0    lea         eax,[ebp-60]
 0053B2F3    mov         edx,2
 0053B2F8    call        0067DCA0
 0053B2FD    pop         ecx
 0053B2FE    test        cl,cl
>0053B300    je          0053B38E
 0053B306    mov         word ptr [ebp-84],8C
 0053B30F    lea         eax,[ebp-64]
 0053B312    call        00401EA8
 0053B317    mov         ecx,eax
 0053B319    inc         dword ptr [ebp-78]
 0053B31C    lea         edx,[ebp-3C]
 0053B31F    mov         eax,6DCAAA
 0053B324    call        0067E37C
 0053B329    lea         edx,[ebp-64]
 0053B32C    push        edx
 0053B32D    lea         eax,[ebp-6C]
 0053B330    call        00401EA8
 0053B335    push        eax
 0053B336    inc         dword ptr [ebp-78]
 0053B339    mov         edx,6DCAAC
 0053B33E    lea         eax,[ebp-68]
 0053B341    call        0067DAB4
 0053B346    inc         dword ptr [ebp-78]
 0053B349    lea         edx,[ebp-68]
 0053B34C    pop         ecx
 0053B34D    pop         eax
 0053B34E    call        0067DCF8
 0053B353    lea         edx,[ebp-6C]
 0053B356    lea         eax,[ebp-3C]
 0053B359    call        0067DCD0
 0053B35E    dec         dword ptr [ebp-78]
 0053B361    lea         eax,[ebp-6C]
 0053B364    mov         edx,2
 0053B369    call        0067DCA0
 0053B36E    dec         dword ptr [ebp-78]
 0053B371    lea         eax,[ebp-68]
 0053B374    mov         edx,2
 0053B379    call        0067DCA0
 0053B37E    dec         dword ptr [ebp-78]
 0053B381    lea         eax,[ebp-64]
 0053B384    mov         edx,2
 0053B389    call        0067DCA0
 0053B38E    mov         word ptr [ebp-84],98
 0053B397    lea         edx,[ebp-3C]
 0053B39A    mov         eax,dword ptr [ebp-70]
 0053B39D    call        0067DCD0
 0053B3A2    mov         eax,dword ptr [ebp-70]
 0053B3A5    mov         word ptr [ebp-84],0A4
 0053B3AE    push        eax
 0053B3AF    dec         dword ptr [ebp-78]
 0053B3B2    lea         eax,[ebp-3C]
 0053B3B5    mov         edx,2
 0053B3BA    call        0067DCA0
 0053B3BF    dec         dword ptr [ebp-78]
 0053B3C2    lea         eax,[ebp-38]
 0053B3C5    mov         edx,2
 0053B3CA    call        0067DCA0
 0053B3CF    sub         dword ptr [ebp-78],3
 0053B3D3    lea         eax,[ebp-34]
 0053B3D6    mov         edx,2
 0053B3DB    call        0046E124
 0053B3E0    dec         dword ptr [ebp-78]
 0053B3E3    lea         eax,[ebp-4]
 0053B3E6    mov         edx,2
 0053B3EB    call        0067DCA0
 0053B3F0    pop         eax
 0053B3F1    mov         word ptr [ebp-84],98
 0053B3FA    inc         dword ptr [ebp-78]
 0053B3FD    mov         edx,dword ptr [ebp-94]
 0053B403    mov         dword ptr fs:[0],edx
 0053B40A    mov         esp,ebp
 0053B40C    pop         ebp
 0053B40D    ret
end;*}

//0053B410
{*procedure sub_0053B410(?:?);
begin
 0053B410    push        ebp
 0053B411    mov         ebp,esp
 0053B413    add         esp,0FFFFFFF4
 0053B416    mov         dword ptr [ebp-4],eax
 0053B419    push        6DCAAE
 0053B41E    push        6EA3A0;gvar_006EA3A0
 0053B423    call        006734B4
 0053B428    add         esp,8
 0053B42B    mov         dword ptr [ebp-8],eax
 0053B42E    mov         eax,69413C
 0053B433    call        00403C0C
 0053B438    push        eax
 0053B439    push        6DCAD6
 0053B43E    push        6EA3A0;gvar_006EA3A0
 0053B443    call        006734B4
 0053B448    add         esp,0C
 0053B44B    mov         dword ptr [ebp-0C],eax
 0053B44E    mov         edx,dword ptr [ebp-8]
 0053B451    mov         ecx,dword ptr [ebp-0C]
 0053B454    cmp         edx,ecx
>0053B456    jge         0053B45E
 0053B458    mov         eax,dword ptr [ebp-0C]
 0053B45B    mov         dword ptr [ebp-8],eax
 0053B45E    push        dword ptr [ebp-8]
 0053B461    push        2A
 0053B463    push        6EA3A0;gvar_006EA3A0
 0053B468    call        0066F904
 0053B46D    add         esp,0C
 0053B470    mov         edx,dword ptr [ebp-8]
 0053B473    mov         byte ptr [edx+6EA3A0],0;gvar_006EA3A0
 0053B47A    push        6EA3A0;gvar_006EA3A0
 0053B47F    push        6DCAED
 0053B484    push        dword ptr [ebp-4]
 0053B487    call        00671CF4
 0053B48C    add         esp,0C
 0053B48F    push        6EA3A0;gvar_006EA3A0
 0053B494    push        6DCAF3
 0053B499    push        dword ptr [ebp-4]
 0053B49C    call        00671CF4
 0053B4A1    add         esp,0C
 0053B4A4    mov         eax,69413C
 0053B4A9    call        00403C0C
 0053B4AE    push        eax
 0053B4AF    push        6DCB1E
 0053B4B4    push        6EA3A0;gvar_006EA3A0
 0053B4B9    call        006734B4
 0053B4BE    add         esp,0C
 0053B4C1    push        6EA3A0;gvar_006EA3A0
 0053B4C6    push        6DCB35
 0053B4CB    push        dword ptr [ebp-4]
 0053B4CE    call        00671CF4
 0053B4D3    add         esp,0C
 0053B4D6    push        dword ptr [ebp-8]
 0053B4D9    push        2A
 0053B4DB    push        6EA3A0;gvar_006EA3A0
 0053B4E0    call        0066F904
 0053B4E5    add         esp,0C
 0053B4E8    mov         edx,dword ptr [ebp-8]
 0053B4EB    mov         byte ptr [edx+6EA3A0],0;gvar_006EA3A0
 0053B4F2    push        6EA3A0;gvar_006EA3A0
 0053B4F7    push        6DCB3B
 0053B4FC    push        dword ptr [ebp-4]
 0053B4FF    call        00671CF4
 0053B504    add         esp,0C
 0053B507    mov         esp,ebp
 0053B509    pop         ebp
 0053B50A    ret
end;*}

//0053B50C
{*procedure sub_0053B50C(?:?; ?:?; ?:?; ?:?);
begin
 0053B50C    push        ebp
 0053B50D    mov         ebp,esp
 0053B50F    add         esp,0FFFFFFC0
 0053B512    mov         dword ptr [ebp-30],ecx
 0053B515    mov         dword ptr [ebp-2C],edx
 0053B518    mov         dword ptr [ebp-28],eax
 0053B51B    mov         eax,6DFBA8
 0053B520    call        0066FECC
 0053B525    mov         edx,dword ptr [ebp-28]
 0053B528    mov         ecx,dword ptr [edx+11]
 0053B52B    test        ecx,ecx
>0053B52D    jne         0053B541
 0053B52F    mov         dl,1
 0053B531    mov         eax,[006422A4];TList
 0053B536    call        00413424
 0053B53B    mov         ecx,dword ptr [ebp-28]
 0053B53E    mov         dword ptr [ecx+11],eax
 0053B541    mov         eax,dword ptr [ebp-28]
 0053B544    mov         edx,dword ptr [eax+11]
 0053B547    mov         ecx,dword ptr [edx+8]
 0053B54A    test        ecx,ecx
>0053B54C    jne         0053B590
 0053B54E    push        9
 0053B550    call        0066EAE4
 0053B555    pop         ecx
 0053B556    mov         dword ptr [ebp-34],eax
 0053B559    mov         al,byte ptr [ebp+8]
 0053B55C    mov         edx,dword ptr [ebp-34]
 0053B55F    mov         byte ptr [edx],al
 0053B561    mov         ecx,dword ptr [ebp-2C]
 0053B564    mov         eax,dword ptr [ebp-34]
 0053B567    mov         dword ptr [eax+1],ecx
 0053B56A    mov         edx,dword ptr [ebp-30]
 0053B56D    mov         ecx,dword ptr [ebp-34]
 0053B570    mov         dword ptr [ecx+5],edx
 0053B573    mov         eax,dword ptr [ebp-28]
 0053B576    mov         eax,dword ptr [eax+11]
 0053B579    mov         edx,dword ptr [ebp-34]
 0053B57C    call        TList.Add
 0053B581    mov         ecx,dword ptr [ebp-24]
 0053B584    mov         dword ptr fs:[0],ecx
>0053B58B    jmp         0053B748
 0053B590    xor         eax,eax
 0053B592    mov         dword ptr [ebp-38],eax
 0053B595    mov         edx,dword ptr [ebp-28]
 0053B598    mov         eax,dword ptr [edx+11]
 0053B59B    mov         edx,dword ptr [ebp-38]
 0053B59E    call        TList.Get
 0053B5A3    mov         dword ptr [ebp-34],eax
 0053B5A6    mov         ecx,dword ptr [ebp-2C]
 0053B5A9    mov         eax,dword ptr [ebp-30]
 0053B5AC    add         ecx,eax
 0053B5AE    mov         edx,dword ptr [ebp-34]
 0053B5B1    mov         eax,dword ptr [edx+1]
 0053B5B4    mov         edx,dword ptr [ebp-34]
 0053B5B7    mov         edx,dword ptr [edx+5]
 0053B5BA    add         eax,edx
 0053B5BC    cmp         ecx,eax
>0053B5BE    jae         0053B604
 0053B5C0    push        9
 0053B5C2    call        0066EAE4
 0053B5C7    pop         ecx
 0053B5C8    mov         dword ptr [ebp-34],eax
 0053B5CB    mov         al,byte ptr [ebp+8]
 0053B5CE    mov         ecx,dword ptr [ebp-34]
 0053B5D1    mov         byte ptr [ecx],al
 0053B5D3    mov         eax,dword ptr [ebp-2C]
 0053B5D6    mov         edx,dword ptr [ebp-34]
 0053B5D9    mov         dword ptr [edx+1],eax
 0053B5DC    mov         ecx,dword ptr [ebp-30]
 0053B5DF    mov         eax,dword ptr [ebp-34]
 0053B5E2    mov         dword ptr [eax+5],ecx
 0053B5E5    mov         edx,dword ptr [ebp-28]
 0053B5E8    mov         eax,dword ptr [edx+11]
 0053B5EB    mov         ecx,dword ptr [ebp-34]
 0053B5EE    mov         edx,dword ptr [ebp-38]
 0053B5F1    call        TList.Insert
 0053B5F6    mov         eax,dword ptr [ebp-24]
 0053B5F9    mov         fs:[00000000],eax
>0053B5FF    jmp         0053B748
 0053B604    mov         edx,dword ptr [ebp-28]
 0053B607    mov         ecx,dword ptr [edx+11]
 0053B60A    mov         eax,dword ptr [ecx+8]
 0053B60D    dec         eax
 0053B60E    mov         dword ptr [ebp-3C],eax
 0053B611    mov         edx,dword ptr [ebp-28]
 0053B614    mov         eax,dword ptr [edx+11]
 0053B617    mov         edx,dword ptr [ebp-3C]
 0053B61A    call        TList.Get
 0053B61F    mov         dword ptr [ebp-34],eax
 0053B622    mov         ecx,dword ptr [ebp-2C]
 0053B625    mov         eax,dword ptr [ebp-30]
 0053B628    add         ecx,eax
 0053B62A    mov         edx,dword ptr [ebp-34]
 0053B62D    mov         eax,dword ptr [edx+1]
 0053B630    mov         edx,dword ptr [ebp-34]
 0053B633    mov         edx,dword ptr [edx+5]
 0053B636    add         eax,edx
 0053B638    cmp         ecx,eax
>0053B63A    jbe         0053B67E
 0053B63C    push        9
 0053B63E    call        0066EAE4
 0053B643    pop         ecx
 0053B644    mov         dword ptr [ebp-34],eax
 0053B647    mov         al,byte ptr [ebp+8]
 0053B64A    mov         ecx,dword ptr [ebp-34]
 0053B64D    mov         byte ptr [ecx],al
 0053B64F    mov         eax,dword ptr [ebp-2C]
 0053B652    mov         edx,dword ptr [ebp-34]
 0053B655    mov         dword ptr [edx+1],eax
 0053B658    mov         ecx,dword ptr [ebp-30]
 0053B65B    mov         eax,dword ptr [ebp-34]
 0053B65E    mov         dword ptr [eax+5],ecx
 0053B661    mov         edx,dword ptr [ebp-28]
 0053B664    mov         eax,dword ptr [edx+11]
 0053B667    mov         edx,dword ptr [ebp-34]
 0053B66A    call        TList.Add
 0053B66F    mov         ecx,dword ptr [ebp-24]
 0053B672    mov         dword ptr fs:[0],ecx
>0053B679    jmp         0053B748
 0053B67E    mov         eax,dword ptr [ebp-38]
 0053B681    mov         edx,dword ptr [ebp-3C]
 0053B684    cmp         eax,edx
>0053B686    jge         0053B6DE
 0053B688    mov         ecx,dword ptr [ebp-38]
 0053B68B    mov         eax,dword ptr [ebp-3C]
 0053B68E    add         ecx,eax
 0053B690    sar         ecx,1
>0053B692    jns         0053B697
 0053B694    adc         ecx,0
 0053B697    mov         dword ptr [ebp-40],ecx
 0053B69A    mov         edx,dword ptr [ebp-28]
 0053B69D    mov         eax,dword ptr [edx+11]
 0053B6A0    mov         edx,dword ptr [ebp-40]
 0053B6A3    call        TList.Get
 0053B6A8    mov         dword ptr [ebp-34],eax
 0053B6AB    mov         ecx,dword ptr [ebp-2C]
 0053B6AE    mov         eax,dword ptr [ebp-30]
 0053B6B1    add         ecx,eax
 0053B6B3    mov         edx,dword ptr [ebp-34]
 0053B6B6    mov         eax,dword ptr [edx+1]
 0053B6B9    mov         edx,dword ptr [ebp-34]
 0053B6BC    mov         edx,dword ptr [edx+5]
 0053B6BF    add         eax,edx
 0053B6C1    cmp         ecx,eax
>0053B6C3    ja          0053B6CD
 0053B6C5    mov         eax,dword ptr [ebp-40]
 0053B6C8    mov         dword ptr [ebp-3C],eax
>0053B6CB    jmp         0053B6D4
 0053B6CD    mov         ecx,dword ptr [ebp-40]
 0053B6D0    inc         ecx
 0053B6D1    mov         dword ptr [ebp-38],ecx
 0053B6D4    mov         eax,dword ptr [ebp-38]
 0053B6D7    mov         edx,dword ptr [ebp-3C]
 0053B6DA    cmp         eax,edx
>0053B6DC    jl          0053B688
 0053B6DE    mov         ecx,dword ptr [ebp-28]
 0053B6E1    mov         eax,dword ptr [ecx+11]
 0053B6E4    mov         edx,dword ptr [ebp-3C]
 0053B6E7    call        TList.Get
 0053B6EC    mov         dword ptr [ebp-34],eax
 0053B6EF    mov         ecx,dword ptr [ebp-2C]
 0053B6F2    mov         eax,dword ptr [ebp-30]
 0053B6F5    add         ecx,eax
 0053B6F7    mov         edx,dword ptr [ebp-34]
 0053B6FA    mov         eax,dword ptr [edx+1]
 0053B6FD    mov         edx,dword ptr [ebp-34]
 0053B700    mov         edx,dword ptr [edx+5]
 0053B703    add         eax,edx
 0053B705    cmp         ecx,eax
>0053B707    je          0053B73F
 0053B709    push        9
 0053B70B    call        0066EAE4
 0053B710    pop         ecx
 0053B711    mov         dword ptr [ebp-34],eax
 0053B714    mov         al,byte ptr [ebp+8]
 0053B717    mov         ecx,dword ptr [ebp-34]
 0053B71A    mov         byte ptr [ecx],al
 0053B71C    mov         eax,dword ptr [ebp-2C]
 0053B71F    mov         edx,dword ptr [ebp-34]
 0053B722    mov         dword ptr [edx+1],eax
 0053B725    mov         ecx,dword ptr [ebp-30]
 0053B728    mov         eax,dword ptr [ebp-34]
 0053B72B    mov         dword ptr [eax+5],ecx
 0053B72E    mov         edx,dword ptr [ebp-28]
 0053B731    mov         eax,dword ptr [edx+11]
 0053B734    mov         ecx,dword ptr [ebp-34]
 0053B737    mov         edx,dword ptr [ebp-3C]
 0053B73A    call        TList.Insert
 0053B73F    mov         eax,dword ptr [ebp-24]
 0053B742    mov         fs:[00000000],eax
 0053B748    mov         esp,ebp
 0053B74A    pop         ebp
 0053B74B    ret         4
end;*}

//0053B860
{*procedure sub_0053B860(?:?; ?:?; ?:AnsiString; ?:?);
begin
 0053B860    push        ebp
 0053B861    mov         ebp,esp
 0053B863    add         esp,0FFFFFFC0
 0053B866    mov         dword ptr [ebp-4],ecx
 0053B869    mov         byte ptr [ebp-39],dl
 0053B86C    mov         dword ptr [ebp-38],eax
 0053B86F    mov         eax,6DFBF0
 0053B874    call        0066FECC
 0053B879    mov         dword ptr [ebp-18],1
 0053B880    lea         edx,[ebp-4]
 0053B883    lea         eax,[ebp-4]
 0053B886    call        0067DAEC
 0053B88B    inc         dword ptr [ebp-18]
 0053B88E    mov         word ptr [ebp-24],8
 0053B894    mov         word ptr [ebp-24],14
 0053B89A    mov         edx,6DCB41
 0053B89F    lea         eax,[ebp-8]
 0053B8A2    call        0067DAB4
 0053B8A7    inc         dword ptr [ebp-18]
 0053B8AA    lea         edx,[ebp-8]
 0053B8AD    lea         eax,[ebp-4]
 0053B8B0    call        0067DD84
 0053B8B5    push        eax
 0053B8B6    dec         dword ptr [ebp-18]
 0053B8B9    lea         eax,[ebp-8]
 0053B8BC    mov         edx,2
 0053B8C1    call        0067DCA0
 0053B8C6    pop         ecx
 0053B8C7    test        cl,cl
>0053B8C9    je          0053B8EA
 0053B8CB    dec         dword ptr [ebp-18]
 0053B8CE    lea         eax,[ebp-4]
 0053B8D1    mov         edx,2
 0053B8D6    call        0067DCA0
 0053B8DB    mov         ecx,dword ptr [ebp-34]
 0053B8DE    mov         dword ptr fs:[0],ecx
>0053B8E5    jmp         0053B9D6
 0053B8EA    mov         eax,dword ptr [ebp-38]
 0053B8ED    call        00531360
 0053B8F2    call        0053A308
 0053B8F7    mov         dword ptr [ebp-40],eax
 0053B8FA    mov         word ptr [ebp-24],8
 0053B900    mov         edx,dword ptr [ebp-40]
 0053B903    test        edx,edx
>0053B905    jne         0053B93A
 0053B907    push        26
 0053B909    call        0066EAE4
 0053B90E    pop         ecx
 0053B90F    mov         dword ptr [ebp-0C],eax
 0053B912    test        eax,eax
>0053B914    je          0053B934
 0053B916    mov         word ptr [ebp-24],2C
 0053B91C    xor         ecx,ecx
 0053B91E    mov         edx,dword ptr [ebp-38]
 0053B921    mov         eax,dword ptr [ebp-0C]
 0053B924    call        00485550
 0053B929    mov         word ptr [ebp-24],20
 0053B92F    mov         edx,dword ptr [ebp-0C]
>0053B932    jmp         0053B937
 0053B934    mov         edx,dword ptr [ebp-0C]
 0053B937    mov         dword ptr [ebp-40],edx
 0053B93A    mov         eax,dword ptr [ebp-40]
 0053B93D    mov         ecx,dword ptr [eax+0E]
 0053B940    test        ecx,ecx
>0053B942    jne         0053B97E
 0053B944    push        9
 0053B946    call        0066EAE4
 0053B94B    pop         ecx
 0053B94C    mov         dword ptr [ebp-10],eax
 0053B94F    test        eax,eax
>0053B951    je          0053B975
 0053B953    mov         word ptr [ebp-24],44
 0053B959    mov         eax,dword ptr [ebp-10]
 0053B95C    add         eax,5
 0053B95F    call        00401EA8
 0053B964    inc         dword ptr [ebp-18]
 0053B967    dec         dword ptr [ebp-18]
 0053B96A    mov         word ptr [ebp-24],38
 0053B970    mov         edx,dword ptr [ebp-10]
>0053B973    jmp         0053B978
 0053B975    mov         edx,dword ptr [ebp-10]
 0053B978    mov         eax,dword ptr [ebp-40]
 0053B97B    mov         dword ptr [eax+0E],edx
 0053B97E    mov         ecx,dword ptr [ebp-40]
 0053B981    mov         eax,dword ptr [ecx+0E]
 0053B984    mov         dl,byte ptr [ebp-39]
 0053B987    mov         byte ptr [eax],dl
 0053B989    lea         edx,[ebp-4]
 0053B98C    mov         eax,dword ptr [ebp-40]
 0053B98F    mov         eax,dword ptr [eax+0E]
 0053B992    add         eax,5
 0053B995    call        0067DCD0
 0053B99A    mov         dl,byte ptr [ebp-39]
 0053B99D    cmp         dl,11
>0053B9A0    jne         0053B9B0
 0053B9A2    mov         ecx,dword ptr [ebp-40]
 0053B9A5    mov         eax,dword ptr [ecx+0E]
 0053B9A8    mov         edx,dword ptr [ebp+8]
 0053B9AB    mov         dword ptr [eax+1],edx
>0053B9AE    jmp         0053B9BC
 0053B9B0    mov         ecx,dword ptr [ebp-40]
 0053B9B3    mov         eax,dword ptr [ecx+0E]
 0053B9B6    mov         edx,dword ptr [ebp+8]
 0053B9B9    mov         dword ptr [eax+1],edx
 0053B9BC    dec         dword ptr [ebp-18]
 0053B9BF    lea         eax,[ebp-4]
 0053B9C2    mov         edx,2
 0053B9C7    call        0067DCA0
 0053B9CC    mov         ecx,dword ptr [ebp-34]
 0053B9CF    mov         dword ptr fs:[0],ecx
 0053B9D6    mov         esp,ebp
 0053B9D8    pop         ebp
 0053B9D9    ret         4
end;*}

//0053BD00
{*procedure sub_0053BD00(?:AnsiString; ?:?);
begin
 0053BD00    push        ebp
 0053BD01    mov         ebp,esp
 0053BD03    add         esp,0FFFFFFB8
 0053BD06    mov         dword ptr [ebp-0C],edx
 0053BD09    mov         dword ptr [ebp-4],eax
 0053BD0C    mov         eax,6DFDC8
 0053BD11    call        0066FECC
 0053BD16    mov         dword ptr [ebp-24],1
 0053BD1D    lea         edx,[ebp-4]
 0053BD20    lea         eax,[ebp-4]
 0053BD23    call        0067DAEC
 0053BD28    inc         dword ptr [ebp-24]
 0053BD2B    mov         word ptr [ebp-30],8
 0053BD31    mov         eax,dword ptr [ebp-4]
 0053BD34    call        00537230
 0053BD39    mov         dword ptr [ebp-44],eax
 0053BD3C    mov         eax,dword ptr [ebp-44]
 0053BD3F    call        00531EE8
 0053BD44    test        al,al
>0053BD46    je          0053BDCD
 0053BD4C    mov         eax,dword ptr [ebp-44]
 0053BD4F    call        005312C8
 0053BD54    mov         edx,eax
 0053BD56    mov         eax,40
 0053BD5B    call        00532B74
 0053BD60    test        al,al
>0053BD62    je          0053BDCD
 0053BD64    mov         word ptr [ebp-30],14
 0053BD6A    lea         eax,[ebp-8]
 0053BD6D    call        00401EA8
 0053BD72    mov         edx,eax
 0053BD74    inc         dword ptr [ebp-24]
 0053BD77    mov         eax,dword ptr [ebp-44]
 0053BD7A    call        00536FB8
 0053BD7F    lea         edx,[ebp-8]
 0053BD82    mov         eax,dword ptr [ebp-0C]
 0053BD85    call        0067DCD0
 0053BD8A    mov         eax,dword ptr [ebp-0C]
 0053BD8D    mov         word ptr [ebp-30],20
 0053BD93    push        eax
 0053BD94    dec         dword ptr [ebp-24]
 0053BD97    lea         eax,[ebp-8]
 0053BD9A    mov         edx,2
 0053BD9F    call        0067DCA0
 0053BDA4    dec         dword ptr [ebp-24]
 0053BDA7    lea         eax,[ebp-4]
 0053BDAA    mov         edx,2
 0053BDAF    call        0067DCA0
 0053BDB4    pop         eax
 0053BDB5    mov         word ptr [ebp-30],14
 0053BDBB    inc         dword ptr [ebp-24]
 0053BDBE    mov         edx,dword ptr [ebp-40]
 0053BDC1    mov         dword ptr fs:[0],edx
>0053BDC8    jmp         0053BF0D
 0053BDCD    mov         word ptr [ebp-30],2C
 0053BDD3    mov         edx,6DCB48
 0053BDD8    lea         eax,[ebp-10]
 0053BDDB    call        0067DAB4
 0053BDE0    inc         dword ptr [ebp-24]
 0053BDE3    lea         edx,[ebp-10]
 0053BDE6    lea         eax,[ebp-4]
 0053BDE9    call        0067DEF4
 0053BDEE    mov         dword ptr [ebp-48],eax
 0053BDF1    dec         dword ptr [ebp-24]
 0053BDF4    lea         eax,[ebp-10]
 0053BDF7    mov         edx,2
 0053BDFC    call        0067DCA0
 0053BE01    mov         word ptr [ebp-30],8
 0053BE07    mov         ecx,dword ptr [ebp-48]
 0053BE0A    test        ecx,ecx
>0053BE0C    jne         0053BE72
 0053BE0E    mov         word ptr [ebp-30],38
 0053BE14    mov         edx,6DCB4D
 0053BE19    lea         eax,[ebp-14]
 0053BE1C    call        0067DAB4
 0053BE21    inc         dword ptr [ebp-24]
 0053BE24    lea         edx,[ebp-14]
 0053BE27    mov         eax,dword ptr [ebp-0C]
 0053BE2A    call        0067DCD0
 0053BE2F    mov         eax,dword ptr [ebp-0C]
 0053BE32    mov         word ptr [ebp-30],44
 0053BE38    push        eax
 0053BE39    dec         dword ptr [ebp-24]
 0053BE3C    lea         eax,[ebp-14]
 0053BE3F    mov         edx,2
 0053BE44    call        0067DCA0
 0053BE49    dec         dword ptr [ebp-24]
 0053BE4C    lea         eax,[ebp-4]
 0053BE4F    mov         edx,2
 0053BE54    call        0067DCA0
 0053BE59    pop         eax
 0053BE5A    mov         word ptr [ebp-30],38
 0053BE60    inc         dword ptr [ebp-24]
 0053BE63    mov         edx,dword ptr [ebp-40]
 0053BE66    mov         dword ptr fs:[0],edx
>0053BE6D    jmp         0053BF0D
 0053BE72    mov         word ptr [ebp-30],50
 0053BE78    lea         eax,[ebp-18]
 0053BE7B    call        00401EA8
 0053BE80    push        eax
 0053BE81    inc         dword ptr [ebp-24]
 0053BE84    lea         eax,[ebp-4]
 0053BE87    call        00405290
 0053BE8C    mov         ecx,eax
 0053BE8E    mov         edx,dword ptr [ebp-48]
 0053BE91    add         edx,4
 0053BE94    lea         eax,[ebp-4]
 0053BE97    call        0067E0BC
 0053BE9C    lea         edx,[ebp-18]
 0053BE9F    push        dword ptr [edx]
 0053BEA1    lea         eax,[ebp-1C]
 0053BEA4    call        00401EA8
 0053BEA9    mov         edx,eax
 0053BEAB    inc         dword ptr [ebp-24]
 0053BEAE    pop         eax
 0053BEAF    call        00657850
 0053BEB4    lea         edx,[ebp-1C]
 0053BEB7    mov         eax,dword ptr [ebp-0C]
 0053BEBA    call        0067DCD0
 0053BEBF    mov         eax,dword ptr [ebp-0C]
 0053BEC2    mov         word ptr [ebp-30],5C
 0053BEC8    push        eax
 0053BEC9    dec         dword ptr [ebp-24]
 0053BECC    lea         eax,[ebp-1C]
 0053BECF    mov         edx,2
 0053BED4    call        0067DCA0
 0053BED9    dec         dword ptr [ebp-24]
 0053BEDC    lea         eax,[ebp-18]
 0053BEDF    mov         edx,2
 0053BEE4    call        0067DCA0
 0053BEE9    dec         dword ptr [ebp-24]
 0053BEEC    lea         eax,[ebp-4]
 0053BEEF    mov         edx,2
 0053BEF4    call        0067DCA0
 0053BEF9    pop         eax
 0053BEFA    mov         word ptr [ebp-30],50
 0053BF00    inc         dword ptr [ebp-24]
 0053BF03    mov         edx,dword ptr [ebp-40]
 0053BF06    mov         dword ptr fs:[0],edx
 0053BF0D    mov         esp,ebp
 0053BF0F    pop         ebp
 0053BF10    ret
end;*}

//0053BF14
{*function sub_0053BF14(?:AnsiString):?;
begin
 0053BF14    push        ebp
 0053BF15    mov         ebp,esp
 0053BF17    add         esp,0FFFFFFC8
 0053BF1A    mov         dword ptr [ebp-4],eax
 0053BF1D    mov         eax,6DFE8C
 0053BF22    call        0066FECC
 0053BF27    mov         dword ptr [ebp-1C],1
 0053BF2E    lea         edx,[ebp-4]
 0053BF31    lea         eax,[ebp-4]
 0053BF34    call        0067DAEC
 0053BF39    inc         dword ptr [ebp-1C]
 0053BF3C    mov         word ptr [ebp-28],8
 0053BF42    mov         word ptr [ebp-28],14
 0053BF48    lea         eax,[ebp-8]
 0053BF4B    call        00401EA8
 0053BF50    inc         dword ptr [ebp-1C]
 0053BF53    mov         word ptr [ebp-28],8
 0053BF59    mov         word ptr [ebp-28],20
 0053BF5F    lea         eax,[ebp-0C]
 0053BF62    call        00401EA8
 0053BF67    mov         edx,eax
 0053BF69    inc         dword ptr [ebp-1C]
 0053BF6C    mov         eax,dword ptr [ebp-4]
 0053BF6F    call        0053BD00
 0053BF74    lea         edx,[ebp-0C]
 0053BF77    lea         eax,[ebp-8]
 0053BF7A    call        0067DCD0
 0053BF7F    dec         dword ptr [ebp-1C]
 0053BF82    lea         eax,[ebp-0C]
 0053BF85    mov         edx,2
 0053BF8A    call        0067DCA0
 0053BF8F    mov         word ptr [ebp-28],2C
 0053BF95    mov         edx,6DCB4E
 0053BF9A    lea         eax,[ebp-10]
 0053BF9D    call        0067DAB4
 0053BFA2    inc         dword ptr [ebp-1C]
 0053BFA5    lea         edx,[ebp-10]
 0053BFA8    lea         eax,[ebp-8]
 0053BFAB    call        0067DD84
 0053BFB0    push        eax
 0053BFB1    dec         dword ptr [ebp-1C]
 0053BFB4    lea         eax,[ebp-10]
 0053BFB7    mov         edx,2
 0053BFBC    call        0067DCA0
 0053BFC1    pop         ecx
 0053BFC2    test        cl,cl
>0053BFC4    je          0053BFF9
 0053BFC6    xor         eax,eax
 0053BFC8    push        eax
 0053BFC9    dec         dword ptr [ebp-1C]
 0053BFCC    lea         eax,[ebp-8]
 0053BFCF    mov         edx,2
 0053BFD4    call        0067DCA0
 0053BFD9    dec         dword ptr [ebp-1C]
 0053BFDC    lea         eax,[ebp-4]
 0053BFDF    mov         edx,2
 0053BFE4    call        0067DCA0
 0053BFE9    pop         eax
 0053BFEA    mov         edx,dword ptr [ebp-38]
 0053BFED    mov         dword ptr fs:[0],edx
>0053BFF4    jmp         0053C096
 0053BFF9    mov         word ptr [ebp-28],38
 0053BFFF    mov         edx,6DCB4F
 0053C004    lea         eax,[ebp-14]
 0053C007    call        0067DAB4
 0053C00C    inc         dword ptr [ebp-1C]
 0053C00F    mov         edx,dword ptr [eax]
 0053C011    mov         eax,dword ptr [ebp-8]
 0053C014    call        SameText
 0053C019    push        eax
 0053C01A    dec         dword ptr [ebp-1C]
 0053C01D    lea         eax,[ebp-14]
 0053C020    mov         edx,2
 0053C025    call        0067DCA0
 0053C02A    pop         ecx
 0053C02B    test        cl,cl
>0053C02D    je          0053C062
 0053C02F    mov         eax,8
 0053C034    push        eax
 0053C035    dec         dword ptr [ebp-1C]
 0053C038    lea         eax,[ebp-8]
 0053C03B    mov         edx,2
 0053C040    call        0067DCA0
 0053C045    dec         dword ptr [ebp-1C]
 0053C048    lea         eax,[ebp-4]
 0053C04B    mov         edx,2
 0053C050    call        0067DCA0
 0053C055    pop         eax
 0053C056    mov         edx,dword ptr [ebp-38]
 0053C059    mov         dword ptr fs:[0],edx
>0053C060    jmp         0053C096
 0053C062    mov         eax,dword ptr [ebp-8]
 0053C065    call        00537060
 0053C06A    push        eax
 0053C06B    dec         dword ptr [ebp-1C]
 0053C06E    lea         eax,[ebp-8]
 0053C071    mov         edx,2
 0053C076    call        0067DCA0
 0053C07B    dec         dword ptr [ebp-1C]
 0053C07E    lea         eax,[ebp-4]
 0053C081    mov         edx,2
 0053C086    call        0067DCA0
 0053C08B    pop         eax
 0053C08C    mov         edx,dword ptr [ebp-38]
 0053C08F    mov         dword ptr fs:[0],edx
 0053C096    mov         esp,ebp
 0053C098    pop         ebp
 0053C099    ret
end;*}

//0053C09C
{*function sub_0053C09C(?:AnsiString; ?:?; ?:?; ?:?):?;
begin
 0053C09C    push        ebp
 0053C09D    mov         ebp,esp
 0053C09F    add         esp,0FFFFFF98
 0053C0A2    mov         dword ptr [ebp-50],ecx
 0053C0A5    mov         dword ptr [ebp-4C],edx
 0053C0A8    mov         dword ptr [ebp-4],eax
 0053C0AB    mov         eax,6DFF80
 0053C0B0    call        0066FECC
 0053C0B5    mov         dword ptr [ebp-2C],1
 0053C0BC    lea         edx,[ebp-4]
 0053C0BF    lea         eax,[ebp-4]
 0053C0C2    call        0067DAEC
 0053C0C7    inc         dword ptr [ebp-2C]
 0053C0CA    mov         word ptr [ebp-38],8
 0053C0D0    mov         word ptr [ebp-38],14
 0053C0D6    lea         eax,[ebp-8]
 0053C0D9    call        00401EA8
 0053C0DE    inc         dword ptr [ebp-2C]
 0053C0E1    mov         word ptr [ebp-38],8
 0053C0E7    mov         word ptr [ebp-38],20
 0053C0ED    lea         eax,[ebp-0C]
 0053C0F0    call        00401EA8
 0053C0F5    inc         dword ptr [ebp-2C]
 0053C0F8    mov         word ptr [ebp-38],8
 0053C0FE    mov         word ptr [ebp-38],2C
 0053C104    lea         eax,[ebp-10]
 0053C107    call        00401EA8
 0053C10C    inc         dword ptr [ebp-2C]
 0053C10F    mov         word ptr [ebp-38],8
 0053C115    mov         edx,dword ptr [ebp-50]
 0053C118    mov         dword ptr [edx],1
 0053C11E    mov         ecx,dword ptr [ebp+8]
 0053C121    mov         dword ptr [ecx],1
 0053C127    lea         eax,[ebp-4]
 0053C12A    call        00403C0C
 0053C12F    push        eax
 0053C130    push        6EA3A0;gvar_006EA3A0
 0053C135    call        0066FA84
 0053C13A    add         esp,8
 0053C13D    push        5B
 0053C13F    push        6EA3A0;gvar_006EA3A0
 0053C144    call        0066FBAD
 0053C149    add         esp,8
 0053C14C    mov         dword ptr [ebp-58],eax
 0053C14F    mov         edx,dword ptr [ebp-58]
 0053C152    test        edx,edx
>0053C154    jne         0053C1A9
 0053C156    xor         eax,eax
 0053C158    push        eax
 0053C159    dec         dword ptr [ebp-2C]
 0053C15C    lea         eax,[ebp-10]
 0053C15F    mov         edx,2
 0053C164    call        0067DCA0
 0053C169    dec         dword ptr [ebp-2C]
 0053C16C    lea         eax,[ebp-0C]
 0053C16F    mov         edx,2
 0053C174    call        0067DCA0
 0053C179    dec         dword ptr [ebp-2C]
 0053C17C    lea         eax,[ebp-8]
 0053C17F    mov         edx,2
 0053C184    call        0067DCA0
 0053C189    dec         dword ptr [ebp-2C]
 0053C18C    lea         eax,[ebp-4]
 0053C18F    mov         edx,2
 0053C194    call        0067DCA0
 0053C199    pop         eax
 0053C19A    mov         edx,dword ptr [ebp-48]
 0053C19D    mov         dword ptr fs:[0],edx
>0053C1A4    jmp         0053C3F6
 0053C1A9    inc         dword ptr [ebp-58]
 0053C1AC    mov         ecx,dword ptr [ebp-58]
 0053C1AF    mov         dword ptr [ebp-5C],ecx
 0053C1B2    xor         eax,eax
 0053C1B4    mov         dword ptr [ebp-60],eax
 0053C1B7    mov         edx,dword ptr [ebp-58]
 0053C1BA    mov         cl,byte ptr [edx]
 0053C1BC    mov         byte ptr [ebp-51],cl
 0053C1BF    movsx       eax,byte ptr [ebp-51]
 0053C1C3    cmp         eax,2C
>0053C1C6    je          0053C1D5
 0053C1C8    movsx       edx,byte ptr [ebp-51]
 0053C1CC    cmp         edx,5D
>0053C1CF    jne         0053C3A0
 0053C1D5    inc         dword ptr [ebp-60]
 0053C1D8    mov         ecx,dword ptr [ebp-60]
 0053C1DB    mov         eax,dword ptr [ebp-4C]
 0053C1DE    cmp         ecx,eax
>0053C1E0    jne         0053C397
 0053C1E6    mov         edx,dword ptr [ebp-58]
 0053C1E9    mov         byte ptr [edx],0
 0053C1EC    mov         word ptr [ebp-38],38
 0053C1F2    lea         eax,[ebp-18]
 0053C1F5    call        00401EA8
 0053C1FA    push        eax
 0053C1FB    inc         dword ptr [ebp-2C]
 0053C1FE    lea         eax,[ebp-14]
 0053C201    mov         edx,dword ptr [ebp-5C]
 0053C204    call        0067DAB4
 0053C209    inc         dword ptr [ebp-2C]
 0053C20C    pop         edx
 0053C20D    call        0067E030
 0053C212    lea         edx,[ebp-18]
 0053C215    lea         eax,[ebp-8]
 0053C218    call        0067DCD0
 0053C21D    dec         dword ptr [ebp-2C]
 0053C220    lea         eax,[ebp-18]
 0053C223    mov         edx,2
 0053C228    call        0067DCA0
 0053C22D    dec         dword ptr [ebp-2C]
 0053C230    lea         eax,[ebp-14]
 0053C233    mov         edx,2
 0053C238    call        0067DCA0
 0053C23D    mov         word ptr [ebp-38],44
 0053C243    mov         edx,6DCB59
 0053C248    lea         eax,[ebp-1C]
 0053C24B    call        0067DAB4
 0053C250    inc         dword ptr [ebp-2C]
 0053C253    lea         edx,[ebp-1C]
 0053C256    lea         eax,[ebp-8]
 0053C259    call        0067DEF4
 0053C25E    mov         dword ptr [ebp-68],eax
 0053C261    dec         dword ptr [ebp-2C]
 0053C264    lea         eax,[ebp-1C]
 0053C267    mov         edx,2
 0053C26C    call        0067DCA0
 0053C271    mov         ecx,dword ptr [ebp-68]
 0053C274    test        ecx,ecx
>0053C276    jne         0053C284
 0053C278    mov         eax,dword ptr [ebp-50]
 0053C27B    xor         edx,edx
 0053C27D    mov         dword ptr [eax],edx
>0053C27F    jmp         0053C347
 0053C284    mov         word ptr [ebp-38],50
 0053C28A    lea         eax,[ebp-20]
 0053C28D    call        00401EA8
 0053C292    push        eax
 0053C293    inc         dword ptr [ebp-2C]
 0053C296    mov         ecx,dword ptr [ebp-68]
 0053C299    dec         ecx
 0053C29A    lea         eax,[ebp-8]
 0053C29D    mov         edx,1
 0053C2A2    call        0067E0BC
 0053C2A7    lea         edx,[ebp-20]
 0053C2AA    lea         eax,[ebp-0C]
 0053C2AD    call        0067DCD0
 0053C2B2    dec         dword ptr [ebp-2C]
 0053C2B5    lea         eax,[ebp-20]
 0053C2B8    mov         edx,2
 0053C2BD    call        0067DCA0
 0053C2C2    lea         edx,[ebp-64]
 0053C2C5    mov         eax,dword ptr [ebp-0C]
 0053C2C8    call        00657D08
 0053C2CD    test        al,al
>0053C2CF    je          0053C2DB
 0053C2D1    mov         ecx,dword ptr [ebp-50]
 0053C2D4    mov         eax,dword ptr [ebp-64]
 0053C2D7    mov         dword ptr [ecx],eax
>0053C2D9    jmp         0053C2E2
 0053C2DB    mov         edx,dword ptr [ebp-50]
 0053C2DE    xor         ecx,ecx
 0053C2E0    mov         dword ptr [edx],ecx
 0053C2E2    mov         word ptr [ebp-38],5C
 0053C2E8    lea         eax,[ebp-24]
 0053C2EB    call        00401EA8
 0053C2F0    push        eax
 0053C2F1    inc         dword ptr [ebp-2C]
 0053C2F4    lea         eax,[ebp-8]
 0053C2F7    call        00405290
 0053C2FC    mov         ecx,eax
 0053C2FE    mov         edx,dword ptr [ebp-68]
 0053C301    add         edx,2
 0053C304    lea         eax,[ebp-8]
 0053C307    call        0067E0BC
 0053C30C    lea         edx,[ebp-24]
 0053C30F    lea         eax,[ebp-10]
 0053C312    call        0067DCD0
 0053C317    dec         dword ptr [ebp-2C]
 0053C31A    lea         eax,[ebp-24]
 0053C31D    mov         edx,2
 0053C322    call        0067DCA0
 0053C327    lea         edx,[ebp-64]
 0053C32A    mov         eax,dword ptr [ebp-10]
 0053C32D    call        00657D08
 0053C332    test        al,al
>0053C334    je          0053C340
 0053C336    mov         ecx,dword ptr [ebp+8]
 0053C339    mov         eax,dword ptr [ebp-64]
 0053C33C    mov         dword ptr [ecx],eax
>0053C33E    jmp         0053C347
 0053C340    mov         edx,dword ptr [ebp+8]
 0053C343    xor         ecx,ecx
 0053C345    mov         dword ptr [edx],ecx
 0053C347    mov         al,1
 0053C349    push        eax
 0053C34A    dec         dword ptr [ebp-2C]
 0053C34D    lea         eax,[ebp-10]
 0053C350    mov         edx,2
 0053C355    call        0067DCA0
 0053C35A    dec         dword ptr [ebp-2C]
 0053C35D    lea         eax,[ebp-0C]
 0053C360    mov         edx,2
 0053C365    call        0067DCA0
 0053C36A    dec         dword ptr [ebp-2C]
 0053C36D    lea         eax,[ebp-8]
 0053C370    mov         edx,2
 0053C375    call        0067DCA0
 0053C37A    dec         dword ptr [ebp-2C]
 0053C37D    lea         eax,[ebp-4]
 0053C380    mov         edx,2
 0053C385    call        0067DCA0
 0053C38A    pop         eax
 0053C38B    mov         edx,dword ptr [ebp-48]
 0053C38E    mov         dword ptr fs:[0],edx
>0053C395    jmp         0053C3F6
 0053C397    movsx       ecx,byte ptr [ebp-51]
 0053C39B    cmp         ecx,5D
>0053C39E    je          0053C3A8
 0053C3A0    inc         dword ptr [ebp-58]
>0053C3A3    jmp         0053C1B7
 0053C3A8    xor         eax,eax
 0053C3AA    push        eax
 0053C3AB    dec         dword ptr [ebp-2C]
 0053C3AE    lea         eax,[ebp-10]
 0053C3B1    mov         edx,2
 0053C3B6    call        0067DCA0
 0053C3BB    dec         dword ptr [ebp-2C]
 0053C3BE    lea         eax,[ebp-0C]
 0053C3C1    mov         edx,2
 0053C3C6    call        0067DCA0
 0053C3CB    dec         dword ptr [ebp-2C]
 0053C3CE    lea         eax,[ebp-8]
 0053C3D1    mov         edx,2
 0053C3D6    call        0067DCA0
 0053C3DB    dec         dword ptr [ebp-2C]
 0053C3DE    lea         eax,[ebp-4]
 0053C3E1    mov         edx,2
 0053C3E6    call        0067DCA0
 0053C3EB    pop         eax
 0053C3EC    mov         edx,dword ptr [ebp-48]
 0053C3EF    mov         dword ptr fs:[0],edx
 0053C3F6    mov         esp,ebp
 0053C3F8    pop         ebp
 0053C3F9    ret         4
end;*}

//0053C3FC
{*function sub_0053C3FC(?:AnsiString):?;
begin
 0053C3FC    push        ebp
 0053C3FD    mov         ebp,esp
 0053C3FF    add         esp,0FFFFFF90
 0053C402    mov         dword ptr [ebp-4],eax
 0053C405    mov         eax,6E0098
 0053C40A    call        0066FECC
 0053C40F    mov         dword ptr [ebp-2C],1
 0053C416    lea         edx,[ebp-4]
 0053C419    lea         eax,[ebp-4]
 0053C41C    call        0067DAEC
 0053C421    inc         dword ptr [ebp-2C]
 0053C424    mov         word ptr [ebp-38],8
 0053C42A    mov         dword ptr [ebp-64],1
 0053C431    mov         word ptr [ebp-38],14
 0053C437    lea         eax,[ebp-8]
 0053C43A    call        00401EA8
 0053C43F    inc         dword ptr [ebp-2C]
 0053C442    mov         word ptr [ebp-38],8
 0053C448    mov         word ptr [ebp-38],20
 0053C44E    lea         eax,[ebp-0C]
 0053C451    call        00401EA8
 0053C456    inc         dword ptr [ebp-2C]
 0053C459    mov         word ptr [ebp-38],8
 0053C45F    mov         word ptr [ebp-38],2C
 0053C465    lea         eax,[ebp-10]
 0053C468    call        00401EA8
 0053C46D    inc         dword ptr [ebp-2C]
 0053C470    mov         word ptr [ebp-38],8
 0053C476    mov         eax,dword ptr [ebp-4]
 0053C479    call        0053BF14
 0053C47E    mov         dword ptr [ebp-70],eax
 0053C481    mov         edx,dword ptr [ebp-70]
 0053C484    test        edx,edx
>0053C486    jne         0053C4DB
 0053C488    xor         eax,eax
 0053C48A    push        eax
 0053C48B    dec         dword ptr [ebp-2C]
 0053C48E    lea         eax,[ebp-10]
 0053C491    mov         edx,2
 0053C496    call        0067DCA0
 0053C49B    dec         dword ptr [ebp-2C]
 0053C49E    lea         eax,[ebp-0C]
 0053C4A1    mov         edx,2
 0053C4A6    call        0067DCA0
 0053C4AB    dec         dword ptr [ebp-2C]
 0053C4AE    lea         eax,[ebp-8]
 0053C4B1    mov         edx,2
 0053C4B6    call        0067DCA0
 0053C4BB    dec         dword ptr [ebp-2C]
 0053C4BE    lea         eax,[ebp-4]
 0053C4C1    mov         edx,2
 0053C4C6    call        0067DCA0
 0053C4CB    pop         eax
 0053C4CC    mov         edx,dword ptr [ebp-48]
 0053C4CF    mov         dword ptr fs:[0],edx
>0053C4D6    jmp         0053C7C3
 0053C4DB    lea         eax,[ebp-4]
 0053C4DE    call        00403C0C
 0053C4E3    push        eax
 0053C4E4    push        6EA3A0;gvar_006EA3A0
 0053C4E9    call        0066FA84
 0053C4EE    add         esp,8
 0053C4F1    push        5B
 0053C4F3    push        6EA3A0;gvar_006EA3A0
 0053C4F8    call        0066FBAD
 0053C4FD    add         esp,8
 0053C500    mov         dword ptr [ebp-50],eax
 0053C503    mov         edx,dword ptr [ebp-50]
 0053C506    test        edx,edx
>0053C508    jne         0053C55D
 0053C50A    xor         eax,eax
 0053C50C    push        eax
 0053C50D    dec         dword ptr [ebp-2C]
 0053C510    lea         eax,[ebp-10]
 0053C513    mov         edx,2
 0053C518    call        0067DCA0
 0053C51D    dec         dword ptr [ebp-2C]
 0053C520    lea         eax,[ebp-0C]
 0053C523    mov         edx,2
 0053C528    call        0067DCA0
 0053C52D    dec         dword ptr [ebp-2C]
 0053C530    lea         eax,[ebp-8]
 0053C533    mov         edx,2
 0053C538    call        0067DCA0
 0053C53D    dec         dword ptr [ebp-2C]
 0053C540    lea         eax,[ebp-4]
 0053C543    mov         edx,2
 0053C548    call        0067DCA0
 0053C54D    pop         eax
 0053C54E    mov         edx,dword ptr [ebp-48]
 0053C551    mov         dword ptr fs:[0],edx
>0053C558    jmp         0053C7C3
 0053C55D    inc         dword ptr [ebp-50]
 0053C560    mov         ecx,dword ptr [ebp-50]
 0053C563    mov         dword ptr [ebp-54],ecx
 0053C566    xor         eax,eax
 0053C568    mov         dword ptr [ebp-58],eax
 0053C56B    mov         edx,dword ptr [ebp-50]
 0053C56E    mov         cl,byte ptr [edx]
 0053C570    mov         byte ptr [ebp-49],cl
 0053C573    movsx       eax,byte ptr [ebp-49]
 0053C577    cmp         eax,2C
>0053C57A    je          0053C589
 0053C57C    movsx       edx,byte ptr [ebp-49]
 0053C580    cmp         edx,5D
>0053C583    jne         0053C76C
 0053C589    inc         dword ptr [ebp-58]
 0053C58C    mov         ecx,dword ptr [ebp-50]
 0053C58F    mov         byte ptr [ecx],0
 0053C592    mov         word ptr [ebp-38],38
 0053C598    lea         eax,[ebp-18]
 0053C59B    call        00401EA8
 0053C5A0    push        eax
 0053C5A1    inc         dword ptr [ebp-2C]
 0053C5A4    lea         eax,[ebp-14]
 0053C5A7    mov         edx,dword ptr [ebp-54]
 0053C5AA    call        0067DAB4
 0053C5AF    inc         dword ptr [ebp-2C]
 0053C5B2    pop         edx
 0053C5B3    call        0067E030
 0053C5B8    lea         edx,[ebp-18]
 0053C5BB    lea         eax,[ebp-8]
 0053C5BE    call        0067DCD0
 0053C5C3    dec         dword ptr [ebp-2C]
 0053C5C6    lea         eax,[ebp-18]
 0053C5C9    mov         edx,2
 0053C5CE    call        0067DCA0
 0053C5D3    dec         dword ptr [ebp-2C]
 0053C5D6    lea         eax,[ebp-14]
 0053C5D9    mov         edx,2
 0053C5DE    call        0067DCA0
 0053C5E3    mov         word ptr [ebp-38],44
 0053C5E9    mov         edx,6DCB5C
 0053C5EE    lea         eax,[ebp-1C]
 0053C5F1    call        0067DAB4
 0053C5F6    inc         dword ptr [ebp-2C]
 0053C5F9    lea         edx,[ebp-1C]
 0053C5FC    lea         eax,[ebp-8]
 0053C5FF    call        0067DEF4
 0053C604    mov         dword ptr [ebp-60],eax
 0053C607    dec         dword ptr [ebp-2C]
 0053C60A    lea         eax,[ebp-1C]
 0053C60D    mov         edx,2
 0053C612    call        0067DCA0
 0053C617    mov         ecx,dword ptr [ebp-60]
 0053C61A    test        ecx,ecx
>0053C61C    jne         0053C628
 0053C61E    xor         eax,eax
 0053C620    mov         dword ptr [ebp-68],eax
>0053C623    jmp         0053C6E3
 0053C628    mov         word ptr [ebp-38],50
 0053C62E    lea         eax,[ebp-20]
 0053C631    call        00401EA8
 0053C636    push        eax
 0053C637    inc         dword ptr [ebp-2C]
 0053C63A    mov         ecx,dword ptr [ebp-60]
 0053C63D    dec         ecx
 0053C63E    lea         eax,[ebp-8]
 0053C641    mov         edx,1
 0053C646    call        0067E0BC
 0053C64B    lea         edx,[ebp-20]
 0053C64E    lea         eax,[ebp-0C]
 0053C651    call        0067DCD0
 0053C656    dec         dword ptr [ebp-2C]
 0053C659    lea         eax,[ebp-20]
 0053C65C    mov         edx,2
 0053C661    call        0067DCA0
 0053C666    lea         edx,[ebp-5C]
 0053C669    mov         eax,dword ptr [ebp-0C]
 0053C66C    call        00657D08
 0053C671    test        al,al
>0053C673    je          0053C67D
 0053C675    mov         ecx,dword ptr [ebp-5C]
 0053C678    mov         dword ptr [ebp-68],ecx
>0053C67B    jmp         0053C682
 0053C67D    xor         eax,eax
 0053C67F    mov         dword ptr [ebp-68],eax
 0053C682    mov         word ptr [ebp-38],5C
 0053C688    lea         eax,[ebp-24]
 0053C68B    call        00401EA8
 0053C690    push        eax
 0053C691    inc         dword ptr [ebp-2C]
 0053C694    lea         eax,[ebp-8]
 0053C697    call        00405290
 0053C69C    mov         ecx,eax
 0053C69E    mov         edx,dword ptr [ebp-60]
 0053C6A1    add         edx,2
 0053C6A4    lea         eax,[ebp-8]
 0053C6A7    call        0067E0BC
 0053C6AC    lea         edx,[ebp-24]
 0053C6AF    lea         eax,[ebp-10]
 0053C6B2    call        0067DCD0
 0053C6B7    dec         dword ptr [ebp-2C]
 0053C6BA    lea         eax,[ebp-24]
 0053C6BD    mov         edx,2
 0053C6C2    call        0067DCA0
 0053C6C7    lea         edx,[ebp-5C]
 0053C6CA    mov         eax,dword ptr [ebp-10]
 0053C6CD    call        00657D08
 0053C6D2    test        al,al
>0053C6D4    je          0053C6DE
 0053C6D6    mov         ecx,dword ptr [ebp-5C]
 0053C6D9    mov         dword ptr [ebp-6C],ecx
>0053C6DC    jmp         0053C6E3
 0053C6DE    xor         eax,eax
 0053C6E0    mov         dword ptr [ebp-6C],eax
 0053C6E3    mov         edx,dword ptr [ebp-6C]
 0053C6E6    mov         ecx,dword ptr [ebp-68]
 0053C6E9    cmp         edx,ecx
>0053C6EB    jge         0053C740
 0053C6ED    xor         eax,eax
 0053C6EF    push        eax
 0053C6F0    dec         dword ptr [ebp-2C]
 0053C6F3    lea         eax,[ebp-10]
 0053C6F6    mov         edx,2
 0053C6FB    call        0067DCA0
 0053C700    dec         dword ptr [ebp-2C]
 0053C703    lea         eax,[ebp-0C]
 0053C706    mov         edx,2
 0053C70B    call        0067DCA0
 0053C710    dec         dword ptr [ebp-2C]
 0053C713    lea         eax,[ebp-8]
 0053C716    mov         edx,2
 0053C71B    call        0067DCA0
 0053C720    dec         dword ptr [ebp-2C]
 0053C723    lea         eax,[ebp-4]
 0053C726    mov         edx,2
 0053C72B    call        0067DCA0
 0053C730    pop         eax
 0053C731    mov         edx,dword ptr [ebp-48]
 0053C734    mov         dword ptr fs:[0],edx
>0053C73B    jmp         0053C7C3
 0053C740    mov         ecx,dword ptr [ebp-6C]
 0053C743    mov         eax,dword ptr [ebp-68]
 0053C746    sub         ecx,eax
 0053C748    inc         ecx
 0053C749    imul        ecx,dword ptr [ebp-64]
 0053C74D    mov         dword ptr [ebp-64],ecx
 0053C750    movsx       edx,byte ptr [ebp-49]
 0053C754    cmp         edx,5D
>0053C757    jne         0053C765
 0053C759    mov         ecx,dword ptr [ebp-70]
 0053C75C    imul        ecx,dword ptr [ebp-64]
 0053C760    mov         dword ptr [ebp-64],ecx
>0053C763    jmp         0053C774
 0053C765    mov         eax,dword ptr [ebp-50]
 0053C768    inc         eax
 0053C769    mov         dword ptr [ebp-54],eax
 0053C76C    inc         dword ptr [ebp-50]
>0053C76F    jmp         0053C56B
 0053C774    mov         eax,dword ptr [ebp-64]
 0053C777    push        eax
 0053C778    dec         dword ptr [ebp-2C]
 0053C77B    lea         eax,[ebp-10]
 0053C77E    mov         edx,2
 0053C783    call        0067DCA0
 0053C788    dec         dword ptr [ebp-2C]
 0053C78B    lea         eax,[ebp-0C]
 0053C78E    mov         edx,2
 0053C793    call        0067DCA0
 0053C798    dec         dword ptr [ebp-2C]
 0053C79B    lea         eax,[ebp-8]
 0053C79E    mov         edx,2
 0053C7A3    call        0067DCA0
 0053C7A8    dec         dword ptr [ebp-2C]
 0053C7AB    lea         eax,[ebp-4]
 0053C7AE    mov         edx,2
 0053C7B3    call        0067DCA0
 0053C7B8    pop         eax
 0053C7B9    mov         edx,dword ptr [ebp-48]
 0053C7BC    mov         dword ptr fs:[0],edx
 0053C7C3    mov         esp,ebp
 0053C7C5    pop         ebp
 0053C7C6    ret
end;*}

//0053C7C8
{*procedure sub_0053C7C8(?:TStrings; ?:?; ?:?);
begin
 0053C7C8    push        ebp
 0053C7C9    mov         ebp,esp
 0053C7CB    add         esp,0FFFFFFAC
 0053C7CE    push        ebx
 0053C7CF    mov         byte ptr [ebp-39],cl
 0053C7D2    mov         dword ptr [ebp-38],edx
 0053C7D5    mov         dword ptr [ebp-34],eax
 0053C7D8    mov         eax,6E0140
 0053C7DD    call        0066FECC
 0053C7E2    xor         edx,edx
 0053C7E4    mov         dword ptr [ebp-44],edx
 0053C7E7    mov         word ptr [ebp-20],8
 0053C7ED    lea         eax,[ebp-4]
 0053C7F0    call        00401EA8
 0053C7F5    inc         dword ptr [ebp-14]
 0053C7F8    mov         word ptr [ebp-20],14
 0053C7FE    mov         edx,dword ptr ds:[6E9DD0];^Screen:TScreen
 0053C804    mov         eax,dword ptr [edx]
 0053C806    mov         dx,0FFF5
 0053C80A    call        005D5E2C
 0053C80F    xor         ecx,ecx
 0053C811    mov         dword ptr [ebp-40],ecx
>0053C814    jmp         0053C860
 0053C816    mov         word ptr [ebp-20],20
 0053C81C    lea         eax,[ebp-8]
 0053C81F    call        00401EA8
 0053C824    mov         ecx,eax
 0053C826    inc         dword ptr [ebp-14]
 0053C829    mov         edx,dword ptr [ebp-40]
 0053C82C    mov         eax,dword ptr [ebp-34]
 0053C82F    mov         ebx,dword ptr [eax]
 0053C831    call        dword ptr [ebx+0C];@AbstractError
 0053C834    lea         edx,[ebp-8]
 0053C837    lea         eax,[ebp-4]
 0053C83A    call        0067DCD0
 0053C83F    dec         dword ptr [ebp-14]
 0053C842    lea         eax,[ebp-8]
 0053C845    mov         edx,2
 0053C84A    call        0067DCA0
 0053C84F    lea         eax,[ebp-4]
 0053C852    call        00405290
 0053C857    add         eax,2
 0053C85A    add         dword ptr [ebp-44],eax
 0053C85D    inc         dword ptr [ebp-40]
 0053C860    mov         eax,dword ptr [ebp-34]
 0053C863    mov         edx,dword ptr [eax]
 0053C865    call        dword ptr [edx+14];@AbstractError
 0053C868    mov         ecx,dword ptr [ebp-40]
 0053C86B    cmp         eax,ecx
>0053C86D    jg          0053C816
 0053C86F    inc         dword ptr [ebp-44]
 0053C872    mov         eax,dword ptr [ebp-44]
 0053C875    test        eax,eax
>0053C877    je          0053C979
 0053C87D    push        dword ptr [ebp-44]
 0053C880    call        0066EC88
 0053C885    pop         ecx
 0053C886    mov         dword ptr [ebp-48],eax
 0053C889    mov         word ptr [ebp-20],14
 0053C88F    mov         edx,dword ptr [ebp-48]
 0053C892    test        edx,edx
>0053C894    je          0053C979
 0053C89A    call        00638BD8
 0053C89F    mov         dword ptr [ebp-4C],eax
 0053C8A2    mov         eax,dword ptr [ebp-4C]
 0053C8A5    mov         edx,dword ptr [eax]
 0053C8A7    call        dword ptr [edx+18]
 0053C8AA    mov         ecx,dword ptr [ebp-48]
 0053C8AD    mov         dword ptr [ebp-50],ecx
 0053C8B0    xor         eax,eax
 0053C8B2    mov         dword ptr [ebp-40],eax
>0053C8B5    jmp         0053C93A
 0053C8BA    mov         word ptr [ebp-20],2C
 0053C8C0    lea         eax,[ebp-0C]
 0053C8C3    call        00401EA8
 0053C8C8    mov         ecx,eax
 0053C8CA    inc         dword ptr [ebp-14]
 0053C8CD    mov         edx,dword ptr [ebp-40]
 0053C8D0    mov         eax,dword ptr [ebp-34]
 0053C8D3    mov         ebx,dword ptr [eax]
 0053C8D5    call        dword ptr [ebx+0C];@AbstractError
 0053C8D8    lea         edx,[ebp-0C]
 0053C8DB    lea         eax,[ebp-4]
 0053C8DE    call        0067DCD0
 0053C8E3    dec         dword ptr [ebp-14]
 0053C8E6    lea         eax,[ebp-0C]
 0053C8E9    mov         edx,2
 0053C8EE    call        0067DCA0
 0053C8F3    lea         eax,[ebp-4]
 0053C8F6    call        00403C0C
 0053C8FB    mov         edx,dword ptr [ebp-38]
 0053C8FE    add         eax,edx
 0053C900    push        eax
 0053C901    push        6DCB5F
 0053C906    push        dword ptr [ebp-50]
 0053C909    call        006734B4
 0053C90E    add         esp,0C
 0053C911    add         dword ptr [ebp-50],eax
 0053C914    mov         cl,byte ptr [ebp-39]
 0053C917    test        cl,cl
>0053C919    je          0053C925
 0053C91B    mov         eax,dword ptr [ebp-40]
 0053C91E    test        eax,eax
>0053C920    je          0053C925
 0053C922    dec         dword ptr [ebp-50]
 0053C925    mov         edx,dword ptr [ebp-50]
 0053C928    mov         byte ptr [edx],0D
 0053C92B    inc         dword ptr [ebp-50]
 0053C92E    mov         ecx,dword ptr [ebp-50]
 0053C931    mov         byte ptr [ecx],0A
 0053C934    inc         dword ptr [ebp-50]
 0053C937    inc         dword ptr [ebp-40]
 0053C93A    mov         eax,dword ptr [ebp-34]
 0053C93D    mov         edx,dword ptr [eax]
 0053C93F    call        dword ptr [edx+14];@AbstractError
 0053C942    mov         ecx,dword ptr [ebp-40]
 0053C945    cmp         eax,ecx
>0053C947    jg          0053C8BA
 0053C94D    mov         eax,dword ptr [ebp-50]
 0053C950    mov         byte ptr [eax],0
 0053C953    call        00638BD8
 0053C958    mov         edx,dword ptr [ebp-48]
 0053C95B    call        006386B8
 0053C960    call        00638BD8
 0053C965    mov         dword ptr [ebp-54],eax
 0053C968    mov         eax,dword ptr [ebp-54]
 0053C96B    mov         edx,dword ptr [eax]
 0053C96D    call        dword ptr [edx+14]
 0053C970    push        dword ptr [ebp-48]
 0053C973    call        0066EAC0
 0053C978    pop         ecx
 0053C979    mov         ecx,dword ptr ds:[6E9DD0];^Screen:TScreen
 0053C97F    mov         eax,dword ptr [ecx]
 0053C981    xor         edx,edx
 0053C983    call        005D5E2C
 0053C988    dec         dword ptr [ebp-14]
 0053C98B    lea         eax,[ebp-4]
 0053C98E    mov         edx,2
 0053C993    call        0067DCA0
 0053C998    mov         ecx,dword ptr [ebp-30]
 0053C99B    mov         dword ptr fs:[0],ecx
 0053C9A2    pop         ebx
 0053C9A3    mov         esp,ebp
 0053C9A5    pop         ebp
 0053C9A6    ret
end;*}

//0053C9A8
{*procedure sub_0053C9A8(?:String; ?:?);
begin
 0053C9A8    push        ebp
 0053C9A9    mov         ebp,esp
 0053C9AB    add         esp,0FFFFFFA0
 0053C9AE    mov         dword ptr [ebp-0C],edx
 0053C9B1    mov         dword ptr [ebp-34],eax
 0053C9B4    mov         eax,6E01E4
 0053C9B9    call        0066FECC
 0053C9BE    lea         edx,[ebp-38]
 0053C9C1    push        edx
 0053C9C2    mov         eax,dword ptr [ebp-34]
 0053C9C5    call        00403C0C
 0053C9CA    push        eax
 0053C9CB    call        VERSION.GetFileVersionInfoSizeA
 0053C9D0    mov         dword ptr [ebp-3C],eax
 0053C9D3    mov         edx,dword ptr [ebp-3C]
 0053C9D6    test        edx,edx
>0053C9D8    jne         0053CA2E
 0053C9DA    mov         word ptr [ebp-20],8
 0053C9E0    mov         edx,6DCB62
 0053C9E5    lea         eax,[ebp-8]
 0053C9E8    call        0067DAB4
 0053C9ED    inc         dword ptr [ebp-14]
 0053C9F0    lea         edx,[ebp-8]
 0053C9F3    mov         eax,dword ptr [ebp-0C]
 0053C9F6    call        0067DCD0
 0053C9FB    mov         eax,dword ptr [ebp-0C]
 0053C9FE    mov         word ptr [ebp-20],14
 0053CA04    push        eax
 0053CA05    dec         dword ptr [ebp-14]
 0053CA08    lea         eax,[ebp-8]
 0053CA0B    mov         edx,2
 0053CA10    call        0067DCA0
 0053CA15    pop         eax
 0053CA16    mov         word ptr [ebp-20],8
 0053CA1C    inc         dword ptr [ebp-14]
 0053CA1F    mov         edx,dword ptr [ebp-30]
 0053CA22    mov         dword ptr fs:[0],edx
>0053CA29    jmp         0053CB35
 0053CA2E    mov         word ptr [ebp-20],2C
 0053CA34    mov         edx,6DCB63
 0053CA39    lea         eax,[ebp-4]
 0053CA3C    call        0067DAB4
 0053CA41    inc         dword ptr [ebp-14]
 0053CA44    mov         word ptr [ebp-20],20
 0053CA4A    push        dword ptr [ebp-3C]
 0053CA4D    call        0066EC88
 0053CA52    pop         ecx
 0053CA53    mov         dword ptr [ebp-40],eax
 0053CA56    push        dword ptr [ebp-40]
 0053CA59    push        dword ptr [ebp-3C]
 0053CA5C    push        0
 0053CA5E    mov         eax,dword ptr [ebp-34]
 0053CA61    call        00403C0C
 0053CA66    push        eax
 0053CA67    call        VERSION.GetFileVersionInfoA
 0053CA6C    test        eax,eax
>0053CA6E    je          0053CAED
 0053CA70    lea         edx,[ebp-44]
 0053CA73    push        edx
 0053CA74    lea         ecx,[ebp-48]
 0053CA77    push        ecx
 0053CA78    push        6DCB64;'\'
 0053CA7D    push        dword ptr [ebp-40]
 0053CA80    call        VERSION.VerQueryValueA
 0053CA85    test        eax,eax
>0053CA87    je          0053CAED
 0053CA89    mov         eax,dword ptr [ebp-48]
 0053CA8C    mov         edx,dword ptr [eax+8]
 0053CA8F    mov         dword ptr [ebp-4C],edx
 0053CA92    mov         ecx,dword ptr [ebp-48]
 0053CA95    mov         eax,dword ptr [ecx+0C]
 0053CA98    mov         dword ptr [ebp-50],eax
 0053CA9B    mov         edx,dword ptr [ebp-4C]
 0053CA9E    shr         edx,10
 0053CAA1    movzx       ecx,dx
 0053CAA4    mov         dword ptr [ebp-54],ecx
 0053CAA7    mov         ax,word ptr [ebp-4C]
 0053CAAB    and         ax,0FFFF
 0053CAAF    movzx       edx,ax
 0053CAB2    mov         dword ptr [ebp-58],edx
 0053CAB5    mov         ecx,dword ptr [ebp-50]
 0053CAB8    shr         ecx,10
 0053CABB    movzx       eax,cx
 0053CABE    mov         dword ptr [ebp-5C],eax
 0053CAC1    mov         dx,word ptr [ebp-50]
 0053CAC5    and         dx,0FFFF
 0053CACA    movzx       ecx,dx
 0053CACD    mov         dword ptr [ebp-60],ecx
 0053CAD0    push        dword ptr [ebp-60]
 0053CAD3    push        dword ptr [ebp-5C]
 0053CAD6    push        dword ptr [ebp-58]
 0053CAD9    push        dword ptr [ebp-54]
 0053CADC    push        6DCB66
 0053CAE1    lea         eax,[ebp-4]
 0053CAE4    push        eax
 0053CAE5    call        0067DE7C
 0053CAEA    add         esp,18
 0053CAED    push        dword ptr [ebp-40]
 0053CAF0    call        0066EAC0
 0053CAF5    pop         ecx
 0053CAF6    mov         word ptr [ebp-20],38
 0053CAFC    lea         edx,[ebp-4]
 0053CAFF    mov         eax,dword ptr [ebp-0C]
 0053CB02    call        0067DCD0
 0053CB07    mov         eax,dword ptr [ebp-0C]
 0053CB0A    mov         word ptr [ebp-20],44
 0053CB10    push        eax
 0053CB11    dec         dword ptr [ebp-14]
 0053CB14    lea         eax,[ebp-4]
 0053CB17    mov         edx,2
 0053CB1C    call        0067DCA0
 0053CB21    pop         eax
 0053CB22    mov         word ptr [ebp-20],38
 0053CB28    inc         dword ptr [ebp-14]
 0053CB2B    mov         edx,dword ptr [ebp-30]
 0053CB2E    mov         dword ptr fs:[0],edx
 0053CB35    mov         esp,ebp
 0053CB37    pop         ebp
 0053CB38    ret
end;*}

//0053CB3C
{*function sub_0053CB3C(?:?):?;
begin
 0053CB3C    push        ebp
 0053CB3D    mov         ebp,esp
 0053CB3F    add         esp,0FFFFFF94
 0053CB42    mov         dword ptr [ebp-38],eax
 0053CB45    mov         eax,6E0284
 0053CB4A    call        0066FECC
 0053CB4F    xor         edx,edx
 0053CB51    mov         dword ptr [ebp-3C],edx
 0053CB54    xor         ecx,ecx
 0053CB56    mov         dword ptr [ebp-40],ecx
 0053CB59    xor         eax,eax
 0053CB5B    mov         dword ptr [ebp-44],eax
 0053CB5E    xor         edx,edx
 0053CB60    mov         dword ptr [ebp-48],edx
 0053CB63    xor         ecx,ecx
 0053CB65    mov         dword ptr [ebp-4C],ecx
 0053CB68    xor         eax,eax
 0053CB6A    mov         dword ptr [ebp-50],eax
 0053CB6D    xor         edx,edx
 0053CB6F    mov         dword ptr [ebp-54],edx
 0053CB72    xor         ecx,ecx
 0053CB74    mov         dword ptr [ebp-58],ecx
 0053CB77    mov         byte ptr [ebp-59],0
 0053CB7B    mov         byte ptr [ebp-5A],0
 0053CB7F    mov         byte ptr [ebp-5B],0
 0053CB83    mov         byte ptr [ebp-5C],0
 0053CB87    push        2
 0053CB89    push        0
 0053CB8B    push        dword ptr [ebp-38]
 0053CB8E    call        KERNEL32.LoadLibraryExA
 0053CB93    mov         dword ptr [ebp-60],eax
 0053CB96    mov         eax,dword ptr [ebp-60]
 0053CB99    mov         dword ptr [ebp-54],eax
 0053CB9C    mov         edx,dword ptr [ebp-60]
 0053CB9F    test        edx,edx
>0053CBA1    je          0053CDA7
 0053CBA7    push        dword ptr [ebp-60]
 0053CBAA    call        IMAGEHLP.ImageNtHeader
 0053CBAF    mov         dword ptr [ebp-3C],eax
 0053CBB2    mov         ecx,dword ptr [ebp-3C]
 0053CBB5    test        ecx,ecx
>0053CBB7    je          0053CD9F
 0053CBBD    mov         eax,dword ptr [ebp-3C]
 0053CBC0    mov         edx,dword ptr [eax+78]
 0053CBC3    test        edx,edx
>0053CBC5    je          0053CD9F
 0053CBCB    mov         ecx,dword ptr [ebp-3C]
 0053CBCE    mov         eax,dword ptr [ecx+7C]
 0053CBD1    test        eax,eax
>0053CBD3    je          0053CD9F
 0053CBD9    mov         edx,dword ptr [ebp-3C]
 0053CBDC    mov         ecx,dword ptr [edx+78]
 0053CBDF    mov         eax,dword ptr [ebp-54]
 0053CBE2    add         ecx,eax
 0053CBE4    mov         dword ptr [ebp-40],ecx
 0053CBE7    mov         edx,dword ptr [ebp-54]
 0053CBEA    mov         ecx,dword ptr [ebp-40]
 0053CBED    mov         eax,dword ptr [ecx+0C]
 0053CBF0    add         edx,eax
 0053CBF2    mov         dword ptr [ebp-58],edx
 0053CBF5    mov         edx,dword ptr [ebp-54]
 0053CBF8    mov         ecx,dword ptr [ebp-40]
 0053CBFB    mov         eax,dword ptr [ecx+24]
 0053CBFE    add         edx,eax
 0053CC00    mov         dword ptr [ebp-48],edx
 0053CC03    mov         edx,dword ptr [ebp-54]
 0053CC06    mov         ecx,dword ptr [ebp-40]
 0053CC09    mov         eax,dword ptr [ecx+20]
 0053CC0C    add         edx,eax
 0053CC0E    mov         dword ptr [ebp-44],edx
 0053CC11    mov         edx,dword ptr [ebp-54]
 0053CC14    mov         ecx,dword ptr [ebp-40]
 0053CC17    mov         eax,dword ptr [ecx+1C]
 0053CC1A    add         edx,eax
 0053CC1C    mov         dword ptr [ebp-4C],edx
 0053CC1F    xor         edx,edx
 0053CC21    mov         dword ptr [ebp-64],edx
>0053CC24    jmp         0053CD74
 0053CC29    mov         dword ptr [ebp-68],0FFFFFFFF
 0053CC30    xor         ecx,ecx
 0053CC32    mov         dword ptr [ebp-6C],ecx
>0053CC35    jmp         0053CC53
 0053CC37    mov         eax,dword ptr [ebp-48]
 0053CC3A    mov         edx,dword ptr [ebp-6C]
 0053CC3D    movzx       ecx,word ptr [eax+edx*2]
 0053CC41    mov         eax,dword ptr [ebp-64]
 0053CC44    cmp         ecx,eax
>0053CC46    jne         0053CC50
 0053CC48    mov         edx,dword ptr [ebp-6C]
 0053CC4B    mov         dword ptr [ebp-68],edx
>0053CC4E    jmp         0053CC60
 0053CC50    inc         dword ptr [ebp-6C]
 0053CC53    mov         ecx,dword ptr [ebp-6C]
 0053CC56    mov         eax,dword ptr [ebp-40]
 0053CC59    mov         edx,dword ptr [eax+18]
 0053CC5C    cmp         ecx,edx
>0053CC5E    jb          0053CC37
 0053CC60    mov         ecx,dword ptr [ebp-68]
 0053CC63    inc         ecx
>0053CC64    je          0053CD5C
 0053CC6A    mov         eax,dword ptr [ebp-44]
 0053CC6D    mov         edx,dword ptr [ebp-68]
 0053CC70    mov         ecx,dword ptr [eax+edx*4]
 0053CC73    mov         dword ptr [ebp-50],ecx
 0053CC76    mov         word ptr [ebp-24],14
 0053CC7C    mov         edx,dword ptr [ebp-54]
 0053CC7F    mov         eax,dword ptr [ebp-50]
 0053CC82    add         edx,eax
 0053CC84    lea         eax,[ebp-4]
 0053CC87    call        0067DAB4
 0053CC8C    inc         dword ptr [ebp-18]
 0053CC8F    mov         word ptr [ebp-24],8
 0053CC95    mov         dl,byte ptr [ebp-5A]
 0053CC98    test        dl,dl
>0053CC9A    jne         0053CCD0
 0053CC9C    mov         word ptr [ebp-24],20
 0053CCA2    mov         edx,6DCB72
 0053CCA7    lea         eax,[ebp-8]
 0053CCAA    call        0067DAB4
 0053CCAF    inc         dword ptr [ebp-18]
 0053CCB2    lea         edx,[ebp-8]
 0053CCB5    lea         eax,[ebp-4]
 0053CCB8    call        0067DD84
 0053CCBD    mov         byte ptr [ebp-5A],al
 0053CCC0    dec         dword ptr [ebp-18]
 0053CCC3    lea         eax,[ebp-8]
 0053CCC6    mov         edx,2
 0053CCCB    call        0067DCA0
 0053CCD0    mov         cl,byte ptr [ebp-5B]
 0053CCD3    test        cl,cl
>0053CCD5    jne         0053CD0B
 0053CCD7    mov         word ptr [ebp-24],2C
 0053CCDD    mov         edx,6DCB7D
 0053CCE2    lea         eax,[ebp-0C]
 0053CCE5    call        0067DAB4
 0053CCEA    inc         dword ptr [ebp-18]
 0053CCED    lea         edx,[ebp-0C]
 0053CCF0    lea         eax,[ebp-4]
 0053CCF3    call        0067DD84
 0053CCF8    mov         byte ptr [ebp-5B],al
 0053CCFB    dec         dword ptr [ebp-18]
 0053CCFE    lea         eax,[ebp-0C]
 0053CD01    mov         edx,2
 0053CD06    call        0067DCA0
 0053CD0B    mov         cl,byte ptr [ebp-5C]
 0053CD0E    test        cl,cl
>0053CD10    jne         0053CD46
 0053CD12    mov         word ptr [ebp-24],38
 0053CD18    mov         edx,6DCB86
 0053CD1D    lea         eax,[ebp-10]
 0053CD20    call        0067DAB4
 0053CD25    inc         dword ptr [ebp-18]
 0053CD28    lea         edx,[ebp-10]
 0053CD2B    lea         eax,[ebp-4]
 0053CD2E    call        0067DD84
 0053CD33    mov         byte ptr [ebp-5C],al
 0053CD36    dec         dword ptr [ebp-18]
 0053CD39    lea         eax,[ebp-10]
 0053CD3C    mov         edx,2
 0053CD41    call        0067DCA0
 0053CD46    dec         dword ptr [ebp-18]
 0053CD49    lea         eax,[ebp-4]
 0053CD4C    mov         edx,2
 0053CD51    call        0067DCA0
 0053CD56    mov         word ptr [ebp-24],0
 0053CD5C    mov         cl,byte ptr [ebp-5A]
 0053CD5F    test        cl,cl
>0053CD61    je          0053CD71
 0053CD63    mov         al,byte ptr [ebp-5B]
 0053CD66    test        al,al
>0053CD68    je          0053CD71
 0053CD6A    mov         dl,byte ptr [ebp-5C]
 0053CD6D    test        dl,dl
>0053CD6F    jne         0053CD85
 0053CD71    inc         dword ptr [ebp-64]
 0053CD74    mov         ecx,dword ptr [ebp-64]
 0053CD77    mov         eax,dword ptr [ebp-40]
 0053CD7A    mov         edx,dword ptr [eax+14]
 0053CD7D    cmp         ecx,edx
>0053CD7F    jb          0053CC29
 0053CD85    mov         cl,byte ptr [ebp-5A]
 0053CD88    test        cl,cl
>0053CD8A    je          0053CD93
 0053CD8C    mov         al,byte ptr [ebp-5B]
 0053CD8F    test        al,al
>0053CD91    jne         0053CD97
 0053CD93    xor         edx,edx
>0053CD95    jmp         0053CD9C
 0053CD97    mov         edx,1
 0053CD9C    mov         byte ptr [ebp-59],dl
 0053CD9F    push        dword ptr [ebp-60]
 0053CDA2    call        KERNEL32.FreeLibrary
 0053CDA7    mov         al,byte ptr [ebp-59]
 0053CDAA    mov         edx,dword ptr [ebp-34]
 0053CDAD    mov         dword ptr fs:[0],edx
 0053CDB4    mov         esp,ebp
 0053CDB6    pop         ebp
 0053CDB7    ret
end;*}

//0053CDB8
{*function sub_0053CDB8(?:?; ?:?):?;
begin
 0053CDB8    push        ebp
 0053CDB9    mov         ebp,esp
 0053CDBB    add         esp,0FFFFFF34
 0053CDC1    mov         dword ptr [ebp-8],edx
 0053CDC4    mov         dword ptr [ebp-4],eax
 0053CDC7    xor         eax,eax
 0053CDC9    mov         dword ptr [ebp-0C],eax
 0053CDCC    mov         edx,dword ptr [ebp-4]
 0053CDCF    mov         dword ptr [ebp-14],edx
 0053CDD2    mov         ecx,dword ptr [ebp-14]
 0053CDD5    mov         eax,dword ptr [ebp-8]
 0053CDD8    cmp         ecx,eax
>0053CDDA    ja          0053CEC6
 0053CDE0    push        0
 0053CDE2    lea         ecx,[ebp-0CC]
 0053CDE8    mov         eax,6ECAB0
 0053CDED    mov         edx,dword ptr [ebp-14]
 0053CDF0    call        00474954
 0053CDF5    mov         dword ptr [ebp-18],eax
 0053CDF8    mov         ecx,dword ptr [ebp-18]
 0053CDFB    test        ecx,ecx
>0053CDFD    jne         0053CE04
 0053CDFF    inc         dword ptr [ebp-14]
>0053CE02    jmp         0053CDD2
 0053CE04    mov         eax,dword ptr [ebp-0CC]
 0053CE0A    mov         dword ptr [ebp-10],eax
 0053CE0D    mov         edx,dword ptr [ebp-10]
 0053CE10    cmp         edx,68737570
>0053CE16    jne         0053CE24
 0053CE18    add         dword ptr [ebp-0C],4
 0053CE1C    mov         ecx,dword ptr [ebp-18]
 0053CE1F    add         dword ptr [ebp-14],ecx
>0053CE22    jmp         0053CDD2
 0053CE24    mov         eax,dword ptr [ebp-10]
 0053CE27    cmp         eax,646461
>0053CE2C    jne         0053CE5D
 0053CE2E    mov         dl,byte ptr [ebp-1D]
 0053CE31    cmp         dl,2
>0053CE34    jne         0053CE5D
 0053CE36    mov         ecx,dword ptr [ebp-67]
 0053CE39    cmp         ecx,14
>0053CE3C    jne         0053CE5D
 0053CE3E    mov         al,byte ptr [ebp-1C]
 0053CE41    cmp         al,1
>0053CE43    jne         0053CE5D
 0053CE45    mov         edx,dword ptr [ebp-4B]
 0053CE48    test        edx,edx
>0053CE4A    jge         0053CE52
 0053CE4C    mov         ecx,dword ptr [ebp-4B]
 0053CE4F    sub         dword ptr [ebp-0C],ecx
 0053CE52    mov         eax,dword ptr [ebp-18]
 0053CE55    add         dword ptr [ebp-14],eax
>0053CE58    jmp         0053CDD2
 0053CE5D    mov         edx,dword ptr [ebp-10]
 0053CE60    cmp         edx,627573
>0053CE66    jne         0053CE98
 0053CE68    mov         cl,byte ptr [ebp-1D]
 0053CE6B    cmp         cl,2
>0053CE6E    jne         0053CE98
 0053CE70    mov         eax,dword ptr [ebp-67]
 0053CE73    cmp         eax,14
>0053CE76    jne         0053CE98
 0053CE78    mov         dl,byte ptr [ebp-1C]
 0053CE7B    cmp         dl,1
>0053CE7E    jne         0053CE98
 0053CE80    mov         ecx,dword ptr [ebp-4B]
 0053CE83    test        ecx,ecx
>0053CE85    jle         0053CE8D
 0053CE87    mov         eax,dword ptr [ebp-4B]
 0053CE8A    add         dword ptr [ebp-0C],eax
 0053CE8D    mov         edx,dword ptr [ebp-18]
 0053CE90    add         dword ptr [ebp-14],edx
>0053CE93    jmp         0053CDD2
 0053CE98    mov         ecx,dword ptr [ebp-10]
 0053CE9B    cmp         ecx,636564
>0053CEA1    jne         0053CEC6
 0053CEA3    mov         eax,dword ptr [ebp-18]
 0053CEA6    add         dword ptr [ebp-14],eax
 0053CEA9    mov         edx,dword ptr [ebp-14]
 0053CEAC    mov         ecx,dword ptr [ebp-8]
 0053CEAF    cmp         edx,ecx
>0053CEB1    jne         0053CEC6
 0053CEB3    mov         eax,dword ptr [ebp-0C]
>0053CEB6    jmp         0053CEC8
 0053CEB8    mov         edx,dword ptr [ebp-14]
 0053CEBB    mov         ecx,dword ptr [ebp-8]
 0053CEBE    cmp         edx,ecx
>0053CEC0    jbe         0053CDE0
 0053CEC6    xor         eax,eax
 0053CEC8    mov         esp,ebp
 0053CECA    pop         ebp
 0053CECB    ret
end;*}

//0053CECC
{*function sub_0053CECC(?:?):?;
begin
 0053CECC    push        ebp
 0053CECD    mov         ebp,esp
 0053CECF    push        ecx
 0053CED0    mov         dword ptr [ebp-4],eax
 0053CED3    mov         eax,dword ptr [ebp-4]
 0053CED6    mov         eax,dword ptr [eax*4+6DC2CC]
 0053CEDD    pop         ecx
 0053CEDE    pop         ebp
 0053CEDF    ret
end;*}

//0053CEE0
{*function sub_0053CEE0(?:?; ?:?):?;
begin
 0053CEE0    push        ebp
 0053CEE1    mov         ebp,esp
 0053CEE3    add         esp,0FFFFFFF8
 0053CEE6    push        ebx
 0053CEE7    mov         dword ptr [ebp-8],edx
 0053CEEA    mov         dword ptr [ebp-4],eax
 0053CEED    mov         eax,dword ptr [ebp-4]
 0053CEF0    call        0053CECC
 0053CEF5    mov         ebx,eax
 0053CEF7    mov         eax,dword ptr [ebp-8]
 0053CEFA    call        0053CECC
 0053CEFF    cmp         ebx,eax
 0053CF01    sete        al
 0053CF04    and         eax,1
 0053CF07    pop         ebx
 0053CF08    pop         ecx
 0053CF09    pop         ecx
 0053CF0A    pop         ebp
 0053CF0B    ret
end;*}

//0053CF0C
{*function sub_0053CF0C(?:?):?;
begin
 0053CF0C    push        ebp
 0053CF0D    mov         ebp,esp
 0053CF0F    add         esp,0FFFFFF10
 0053CF15    mov         dword ptr [ebp-2C],eax
 0053CF18    mov         eax,6E02D8
 0053CF1D    call        0066FECC
 0053CF22    mov         eax,dword ptr [ebp-2C]
 0053CF25    call        005312C8
 0053CF2A    mov         dword ptr [ebp-30],eax
 0053CF2D    mov         edx,dword ptr [ebp-2C]
 0053CF30    mov         dword ptr [ebp-38],edx
>0053CF33    jmp         0053CFD6
 0053CF38    mov         eax,dword ptr [ebp-38]
 0053CF3B    xor         edx,edx
 0053CF3D    push        edx
 0053CF3E    push        eax
 0053CF3F    push        0
 0053CF41    lea         ecx,[ebp-0F0]
 0053CF47    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053CF4D    mov         eax,dword ptr [ebp-30]
 0053CF50    add         edx,eax
 0053CF52    mov         eax,6ECAB0
 0053CF57    call        004749C0
 0053CF5C    mov         dword ptr [ebp-34],eax
 0053CF5F    mov         edx,dword ptr [ebp-34]
 0053CF62    add         dword ptr [ebp-38],edx
 0053CF65    mov         cl,byte ptr [ebp-8F]
 0053CF6B    test        cl,cl
>0053CF6D    je          0053CFD0
 0053CF6F    mov         eax,dword ptr [ebp-6F]
 0053CF72    call        00531EE8
 0053CF77    test        al,al
>0053CF79    je          0053CFD0
 0053CF7B    mov         eax,dword ptr [ebp-6F]
 0053CF7E    call        0053A308
 0053CF83    mov         dword ptr [ebp-3C],eax
 0053CF86    mov         word ptr [ebp-18],8
 0053CF8C    mov         edx,6DCB9B
 0053CF91    lea         eax,[ebp-4]
 0053CF94    call        0067DAB4
 0053CF99    inc         dword ptr [ebp-0C]
 0053CF9C    mov         edx,dword ptr [eax]
 0053CF9E    mov         eax,dword ptr [ebp-3C]
 0053CFA1    call        00485AE0
 0053CFA6    push        eax
 0053CFA7    dec         dword ptr [ebp-0C]
 0053CFAA    lea         eax,[ebp-4]
 0053CFAD    mov         edx,2
 0053CFB2    call        0067DCA0
 0053CFB7    pop         ecx
 0053CFB8    test        cl,cl
>0053CFBA    je          0053CFD0
 0053CFBC    mov         eax,dword ptr [ebp-38]
 0053CFBF    mov         edx,dword ptr [ebp-2C]
 0053CFC2    sub         eax,edx
 0053CFC4    mov         ecx,dword ptr [ebp-28]
 0053CFC7    mov         dword ptr fs:[0],ecx
>0053CFCE    jmp         0053CFF7
 0053CFD0    mov         eax,dword ptr [ebp-34]
 0053CFD3    add         dword ptr [ebp-30],eax
 0053CFD6    mov         edx,dword ptr [ebp-30]
 0053CFD9    mov         eax,40000000
 0053CFDE    call        00532B74
 0053CFE3    test        al,al
>0053CFE5    jne         0053CF38
 0053CFEB    xor         eax,eax
 0053CFED    mov         edx,dword ptr [ebp-28]
 0053CFF0    mov         dword ptr fs:[0],edx
 0053CFF7    mov         esp,ebp
 0053CFF9    pop         ebp
 0053CFFA    ret
end;*}

//0053CFFC
{*function sub_0053CFFC(?:?):?;
begin
 0053CFFC    push        ebp
 0053CFFD    mov         ebp,esp
 0053CFFF    add         esp,0FFFFFF38
 0053D005    mov         dword ptr [ebp-4],eax
 0053D008    mov         eax,dword ptr [ebp-4]
 0053D00B    call        00531F1C
 0053D010    test        al,al
>0053D012    jne         0053D01B
 0053D014    xor         eax,eax
>0053D016    jmp         0053D149
 0053D01B    mov         eax,dword ptr [ebp-4]
 0053D01E    call        005312C8
 0053D023    mov         dword ptr [ebp-0C],eax
 0053D026    mov         edx,dword ptr [ebp-4]
 0053D029    mov         dword ptr [ebp-14],edx
 0053D02C    mov         edx,dword ptr [ebp-0C]
 0053D02F    mov         eax,6000000
 0053D034    call        00532B74
 0053D039    test        al,al
>0053D03B    je          0053D0A9
 0053D03D    add         dword ptr [ebp-0C],8
 0053D041    add         dword ptr [ebp-14],8
 0053D045    mov         eax,dword ptr [ebp-14]
 0053D048    xor         edx,edx
 0053D04A    push        edx
 0053D04B    push        eax
 0053D04C    push        0
 0053D04E    lea         ecx,[ebp-0C8]
 0053D054    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D05A    mov         eax,dword ptr [ebp-0C]
 0053D05D    add         edx,eax
 0053D05F    mov         eax,6ECAB0
 0053D064    call        004749C0
 0053D069    mov         dword ptr [ebp-10],eax
 0053D06C    lea         edx,[ebp-0C8]
 0053D072    mov         eax,6ECAB0
 0053D077    call        00474648
 0053D07C    mov         byte ptr [ebp-5],al
 0053D07F    mov         dl,byte ptr [ebp-5]
 0053D082    cmp         dl,97
>0053D085    je          0053D08F
 0053D087    mov         cl,byte ptr [ebp-5]
 0053D08A    cmp         cl,8F
>0053D08D    jne         0053D0A2
 0053D08F    mov         eax,dword ptr [ebp-47]
 0053D092    mov         dword ptr [ebp-14],eax
 0053D095    mov         eax,dword ptr [ebp-14]
 0053D098    call        005312C8
 0053D09D    mov         dword ptr [ebp-0C],eax
>0053D0A0    jmp         0053D02C
 0053D0A2    xor         eax,eax
>0053D0A4    jmp         0053D149
 0053D0A9    mov         eax,dword ptr [ebp-14]
 0053D0AC    xor         edx,edx
 0053D0AE    push        edx
 0053D0AF    push        eax
 0053D0B0    push        0
 0053D0B2    lea         ecx,[ebp-0C8]
 0053D0B8    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D0BE    mov         eax,dword ptr [ebp-0C]
 0053D0C1    add         edx,eax
 0053D0C3    mov         eax,6ECAB0
 0053D0C8    call        004749C0
 0053D0CD    mov         dword ptr [ebp-10],eax
 0053D0D0    mov         dl,byte ptr [ebp-64]
 0053D0D3    test        dl,dl
>0053D0D5    je          0053D0DB
 0053D0D7    mov         al,1
>0053D0D9    jmp         0053D149
 0053D0DB    lea         edx,[ebp-0C8]
 0053D0E1    mov         eax,6ECAB0
 0053D0E6    call        00474648
 0053D0EB    mov         byte ptr [ebp-5],al
 0053D0EE    mov         dl,byte ptr [ebp-5]
 0053D0F1    cmp         dl,96
>0053D0F4    jne         0053D104
 0053D0F6    mov         ecx,dword ptr [ebp-10]
 0053D0F9    add         dword ptr [ebp-0C],ecx
 0053D0FC    mov         eax,dword ptr [ebp-10]
 0053D0FF    add         dword ptr [ebp-14],eax
>0053D102    jmp         0053D0A9
 0053D104    mov         dl,byte ptr [ebp-5]
 0053D107    cmp         dl,0D1
>0053D10A    jne         0053D147
 0053D10C    mov         cl,byte ptr [ebp-19]
 0053D10F    cmp         cl,2
>0053D112    jne         0053D147
 0053D114    mov         edx,10
 0053D119    mov         eax,dword ptr [ebp-63]
 0053D11C    call        0053CEE0
 0053D121    test        al,al
>0053D123    jne         0053D136
 0053D125    mov         edx,14
 0053D12A    mov         eax,dword ptr [ebp-63]
 0053D12D    call        0053CEE0
 0053D132    test        al,al
>0053D134    je          0053D147
 0053D136    mov         ecx,dword ptr [ebp-10]
 0053D139    add         dword ptr [ebp-0C],ecx
 0053D13C    mov         eax,dword ptr [ebp-10]
 0053D13F    add         dword ptr [ebp-14],eax
>0053D142    jmp         0053D0A9
 0053D147    xor         eax,eax
 0053D149    mov         esp,ebp
 0053D14B    pop         ebp
 0053D14C    ret
end;*}

//0053D150
{*function sub_0053D150(?:?; ?:?):?;
begin
 0053D150    push        ebp
 0053D151    mov         ebp,esp
 0053D153    add         esp,0FFFFFF24
 0053D159    mov         dword ptr [ebp-8],edx
 0053D15C    mov         dword ptr [ebp-4],eax
 0053D15F    mov         dword ptr [ebp-0C],0FFFFFFFF
 0053D166    mov         eax,dword ptr [ebp-4]
 0053D169    mov         dword ptr [ebp-18],eax
 0053D16C    xor         edx,edx
 0053D16E    mov         dword ptr [ebp-1C],edx
 0053D171    mov         eax,dword ptr [ebp-4]
 0053D174    call        005312C8
 0053D179    mov         dword ptr [ebp-20],eax
 0053D17C    xor         edx,edx
 0053D17E    mov         dword ptr [ebp-28],edx
 0053D181    mov         eax,dword ptr [ebp-4]
 0053D184    call        00531F1C
 0053D189    test        al,al
>0053D18B    jne         0053D194
 0053D18D    xor         eax,eax
>0053D18F    jmp         0053D746
 0053D194    mov         eax,dword ptr [ebp-18]
 0053D197    xor         edx,edx
 0053D199    push        edx
 0053D19A    push        eax
 0053D19B    push        0
 0053D19D    lea         ecx,[ebp-0DC]
 0053D1A3    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D1A9    mov         eax,dword ptr [ebp-20]
 0053D1AC    add         edx,eax
 0053D1AE    mov         eax,6ECAB0
 0053D1B3    call        004749C0
 0053D1B8    mov         dword ptr [ebp-24],eax
 0053D1BB    mov         edx,dword ptr [ebp-0DC]
 0053D1C1    mov         dword ptr [ebp-14],edx
 0053D1C4    mov         edx,dword ptr [ebp-20]
 0053D1C7    mov         eax,400
 0053D1CC    call        00532B74
 0053D1D1    test        al,al
>0053D1D3    je          0053D232
 0053D1D5    mov         eax,dword ptr [ebp-18]
 0053D1D8    mov         edx,dword ptr [ebp-24]
 0053D1DB    add         eax,edx
 0053D1DD    xor         edx,edx
 0053D1DF    push        edx
 0053D1E0    push        eax
 0053D1E1    push        0
 0053D1E3    lea         ecx,[ebp-0DC]
 0053D1E9    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D1EF    mov         eax,dword ptr [ebp-20]
 0053D1F2    add         edx,eax
 0053D1F4    mov         eax,dword ptr [ebp-24]
 0053D1F7    add         edx,eax
 0053D1F9    mov         eax,6ECAB0
 0053D1FE    call        004749C0
 0053D203    mov         edx,dword ptr [ebp-0DC]
 0053D209    mov         dword ptr [ebp-14],edx
 0053D20C    mov         ecx,dword ptr [ebp-14]
 0053D20F    cmp         ecx,616A
>0053D215    jne         0053D232
 0053D217    mov         eax,dword ptr [ebp-5B]
 0053D21A    call        00531F1C
 0053D21F    test        al,al
>0053D221    je          0053D22B
 0053D223    mov         eax,dword ptr [ebp-5B]
>0053D226    jmp         0053D746
 0053D22B    xor         eax,eax
>0053D22D    jmp         0053D746
 0053D232    mov         edx,dword ptr [ebp-20]
 0053D235    mov         ecx,dword ptr [ebp-24]
 0053D238    add         edx,ecx
 0053D23A    mov         eax,400
 0053D23F    call        00532B74
 0053D244    test        al,al
>0053D246    je          0053D2DA
 0053D24C    mov         eax,dword ptr [ebp-18]
 0053D24F    mov         edx,dword ptr [ebp-24]
 0053D252    add         eax,edx
 0053D254    xor         edx,edx
 0053D256    push        edx
 0053D257    push        eax
 0053D258    push        0
 0053D25A    lea         ecx,[ebp-0DC]
 0053D260    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D266    mov         eax,dword ptr [ebp-20]
 0053D269    add         edx,eax
 0053D26B    mov         eax,dword ptr [ebp-24]
 0053D26E    add         edx,eax
 0053D270    mov         eax,6ECAB0
 0053D275    call        004749C0
 0053D27A    add         dword ptr [ebp-24],eax
 0053D27D    mov         eax,dword ptr [ebp-18]
 0053D280    mov         edx,dword ptr [ebp-24]
 0053D283    add         eax,edx
 0053D285    xor         edx,edx
 0053D287    push        edx
 0053D288    push        eax
 0053D289    push        0
 0053D28B    lea         ecx,[ebp-0DC]
 0053D291    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D297    mov         eax,dword ptr [ebp-20]
 0053D29A    add         edx,eax
 0053D29C    mov         eax,dword ptr [ebp-24]
 0053D29F    add         edx,eax
 0053D2A1    mov         eax,6ECAB0
 0053D2A6    call        004749C0
 0053D2AB    mov         edx,dword ptr [ebp-0DC]
 0053D2B1    mov         dword ptr [ebp-14],edx
 0053D2B4    mov         ecx,dword ptr [ebp-14]
 0053D2B7    cmp         ecx,616A
>0053D2BD    jne         0053D2DA
 0053D2BF    mov         eax,dword ptr [ebp-5B]
 0053D2C2    call        00531F1C
 0053D2C7    test        al,al
>0053D2C9    je          0053D2D3
 0053D2CB    mov         eax,dword ptr [ebp-5B]
>0053D2CE    jmp         0053D746
 0053D2D3    xor         eax,eax
>0053D2D5    jmp         0053D746
 0053D2DA    mov         edx,dword ptr [ebp-14]
 0053D2DD    cmp         edx,706D63
>0053D2E3    jne         0053D3D9
 0053D2E9    mov         cl,byte ptr [ebp-2D]
 0053D2EC    cmp         cl,2
>0053D2EF    jne         0053D3D9
 0053D2F5    mov         al,byte ptr [ebp-2C]
 0053D2F8    cmp         al,1
>0053D2FA    jne         0053D3D9
 0053D300    mov         edx,dword ptr [ebp-77]
 0053D303    mov         dword ptr [ebp-0C],edx
 0053D306    mov         eax,dword ptr [ebp-18]
 0053D309    mov         edx,dword ptr [ebp-24]
 0053D30C    add         eax,edx
 0053D30E    xor         edx,edx
 0053D310    push        edx
 0053D311    push        eax
 0053D312    push        0
 0053D314    lea         ecx,[ebp-0DC]
 0053D31A    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D320    mov         eax,dword ptr [ebp-20]
 0053D323    add         edx,eax
 0053D325    mov         eax,dword ptr [ebp-24]
 0053D328    add         edx,eax
 0053D32A    mov         eax,6ECAB0
 0053D32F    call        004749C0
 0053D334    add         dword ptr [ebp-24],eax
 0053D337    mov         edx,dword ptr [ebp-0DC]
 0053D33D    mov         dword ptr [ebp-14],edx
 0053D340    mov         ecx,dword ptr [ebp-14]
 0053D343    cmp         ecx,626A
>0053D349    je          0053D360
 0053D34B    mov         eax,dword ptr [ebp-14]
 0053D34E    cmp         eax,676A
>0053D353    je          0053D360
 0053D355    mov         edx,dword ptr [ebp-14]
 0053D358    cmp         edx,65676A
>0053D35E    jne         0053D3D9
 0053D360    mov         edx,dword ptr [ebp-8]
 0053D363    mov         eax,dword ptr [ebp-5B]
 0053D366    call        0053D150
 0053D36B    test        eax,eax
>0053D36D    je          0053D744
 0053D373    mov         ecx,dword ptr [ebp-24]
 0053D376    add         dword ptr [ebp-18],ecx
 0053D379    mov         eax,dword ptr [ebp-24]
 0053D37C    add         dword ptr [ebp-20],eax
 0053D37F    mov         eax,dword ptr [ebp-18]
 0053D382    xor         edx,edx
 0053D384    push        edx
 0053D385    push        eax
 0053D386    push        0
 0053D388    lea         ecx,[ebp-0DC]
 0053D38E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D394    mov         eax,dword ptr [ebp-20]
 0053D397    add         edx,eax
 0053D399    mov         eax,6ECAB0
 0053D39E    call        004749C0
 0053D3A3    mov         dword ptr [ebp-24],eax
 0053D3A6    mov         edx,dword ptr [ebp-0DC]
 0053D3AC    mov         dword ptr [ebp-14],edx
 0053D3AF    mov         ecx,dword ptr [ebp-14]
 0053D3B2    cmp         ecx,7A6A
>0053D3B8    je          0053D3C8
 0053D3BA    mov         eax,dword ptr [ebp-14]
 0053D3BD    cmp         eax,656A
>0053D3C2    jne         0053D194
 0053D3C8    mov         edx,dword ptr [ebp-24]
 0053D3CB    add         dword ptr [ebp-18],edx
 0053D3CE    mov         ecx,dword ptr [ebp-24]
 0053D3D1    add         dword ptr [ebp-20],ecx
>0053D3D4    jmp         0053D194
 0053D3D9    mov         eax,dword ptr [ebp-14]
 0053D3DC    cmp         eax,627573
>0053D3E1    jne         0053D3F3
 0053D3E3    mov         dl,byte ptr [ebp-2D]
 0053D3E6    cmp         dl,2
>0053D3E9    jne         0053D3F3
 0053D3EB    mov         cl,byte ptr [ebp-2C]
 0053D3EE    cmp         cl,1
>0053D3F1    je          0053D40D
 0053D3F3    mov         eax,dword ptr [ebp-14]
 0053D3F6    cmp         eax,636564
>0053D3FB    jne         0053D60B
 0053D401    mov         dl,byte ptr [ebp-2D]
 0053D404    cmp         dl,2
>0053D407    jne         0053D60B
 0053D40D    inc         dword ptr [ebp-28]
 0053D410    mov         ecx,dword ptr [ebp-0C]
 0053D413    inc         ecx
>0053D414    jne         0053D41E
 0053D416    mov         eax,dword ptr [ebp-77]
 0053D419    mov         dword ptr [ebp-0C],eax
>0053D41C    jmp         0053D431
 0053D41E    mov         edx,dword ptr [ebp-77]
 0053D421    mov         eax,dword ptr [ebp-0C]
 0053D424    call        0053CEE0
 0053D429    test        al,al
>0053D42B    je          0053D744
 0053D431    mov         eax,dword ptr [ebp-18]
 0053D434    mov         edx,dword ptr [ebp-24]
 0053D437    add         eax,edx
 0053D439    xor         edx,edx
 0053D43B    push        edx
 0053D43C    push        eax
 0053D43D    push        0
 0053D43F    lea         ecx,[ebp-0DC]
 0053D445    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D44B    mov         eax,dword ptr [ebp-20]
 0053D44E    add         edx,eax
 0053D450    mov         eax,dword ptr [ebp-24]
 0053D453    add         edx,eax
 0053D455    mov         eax,6ECAB0
 0053D45A    call        004749C0
 0053D45F    add         dword ptr [ebp-24],eax
 0053D462    mov         edx,dword ptr [ebp-0DC]
 0053D468    mov         dword ptr [ebp-14],edx
 0053D46B    mov         ecx,dword ptr [ebp-14]
 0053D46E    cmp         ecx,627573
>0053D474    jne         0053D4BF
 0053D476    mov         edx,dword ptr [ebp-77]
 0053D479    mov         eax,dword ptr [ebp-0C]
 0053D47C    call        0053CEE0
 0053D481    test        al,al
>0053D483    je          0053D4BF
 0053D485    mov         eax,dword ptr [ebp-18]
 0053D488    mov         edx,dword ptr [ebp-24]
 0053D48B    add         eax,edx
 0053D48D    xor         edx,edx
 0053D48F    push        edx
 0053D490    push        eax
 0053D491    push        0
 0053D493    lea         ecx,[ebp-0DC]
 0053D499    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D49F    mov         eax,dword ptr [ebp-20]
 0053D4A2    add         edx,eax
 0053D4A4    mov         eax,dword ptr [ebp-24]
 0053D4A7    add         edx,eax
 0053D4A9    mov         eax,6ECAB0
 0053D4AE    call        004749C0
 0053D4B3    add         dword ptr [ebp-24],eax
 0053D4B6    mov         edx,dword ptr [ebp-0DC]
 0053D4BC    mov         dword ptr [ebp-14],edx
 0053D4BF    mov         ecx,dword ptr [ebp-14]
 0053D4C2    cmp         ecx,626A
>0053D4C8    jne         0053D530
 0053D4CA    mov         eax,dword ptr [ebp-24]
 0053D4CD    add         dword ptr [ebp-18],eax
 0053D4D0    mov         edx,dword ptr [ebp-24]
 0053D4D3    add         dword ptr [ebp-20],edx
 0053D4D6    mov         eax,dword ptr [ebp-18]
 0053D4D9    xor         edx,edx
 0053D4DB    push        edx
 0053D4DC    push        eax
 0053D4DD    push        0
 0053D4DF    lea         ecx,[ebp-0DC]
 0053D4E5    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D4EB    mov         eax,dword ptr [ebp-20]
 0053D4EE    add         edx,eax
 0053D4F0    mov         eax,6ECAB0
 0053D4F5    call        004749C0
 0053D4FA    mov         dword ptr [ebp-24],eax
 0053D4FD    mov         edx,dword ptr [ebp-0DC]
 0053D503    mov         dword ptr [ebp-14],edx
 0053D506    mov         ecx,dword ptr [ebp-14]
 0053D509    cmp         ecx,7A6A
>0053D50F    je          0053D51F
 0053D511    mov         eax,dword ptr [ebp-14]
 0053D514    cmp         eax,656A
>0053D519    jne         0053D194
 0053D51F    mov         edx,dword ptr [ebp-24]
 0053D522    add         dword ptr [ebp-18],edx
 0053D525    mov         ecx,dword ptr [ebp-24]
 0053D528    add         dword ptr [ebp-20],ecx
>0053D52B    jmp         0053D194
 0053D530    mov         eax,dword ptr [ebp-14]
 0053D533    cmp         eax,7A6A
>0053D538    je          0053D545
 0053D53A    mov         edx,dword ptr [ebp-14]
 0053D53D    cmp         edx,656A
>0053D543    jne         0053D5C0
 0053D545    mov         eax,dword ptr [ebp-5B]
 0053D548    call        005312C8
 0053D54D    call        005325E4
 0053D552    mov         dword ptr [ebp-10],eax
 0053D555    mov         eax,dword ptr [ebp-10]
 0053D558    call        00531360
 0053D55D    xor         edx,edx
 0053D55F    push        edx
 0053D560    push        eax
 0053D561    push        0
 0053D563    lea         ecx,[ebp-0DC]
 0053D569    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D56F    mov         eax,dword ptr [ebp-10]
 0053D572    add         edx,eax
 0053D574    mov         eax,6ECAB0
 0053D579    call        004749C0
 0053D57E    mov         edx,dword ptr [ebp-0DC]
 0053D584    mov         dword ptr [ebp-14],edx
 0053D587    mov         ecx,dword ptr [ebp-14]
 0053D58A    cmp         ecx,706D6A
>0053D590    jne         0053D598
 0053D592    mov         eax,dword ptr [ebp-5B]
 0053D595    mov         dword ptr [ebp-1C],eax
 0053D598    mov         dl,byte ptr [ebp-78]
 0053D59B    test        dl,dl
>0053D59D    je          0053D5AF
 0053D59F    mov         eax,dword ptr [ebp-8]
 0053D5A2    call        0053E704
 0053D5A7    call        00531360
 0053D5AC    mov         dword ptr [ebp-1C],eax
 0053D5AF    mov         edx,dword ptr [ebp-24]
 0053D5B2    add         dword ptr [ebp-18],edx
 0053D5B5    mov         ecx,dword ptr [ebp-24]
 0053D5B8    add         dword ptr [ebp-20],ecx
>0053D5BB    jmp         0053D194
 0053D5C0    mov         eax,dword ptr [ebp-14]
 0053D5C3    cmp         eax,7A6E6A
>0053D5C8    je          0053D5D9
 0053D5CA    mov         edx,dword ptr [ebp-14]
 0053D5CD    cmp         edx,656E6A
>0053D5D3    jne         0053D744
 0053D5D9    mov         ecx,dword ptr [ebp-1C]
 0053D5DC    test        ecx,ecx
>0053D5DE    jne         0053D5F5
 0053D5E0    mov         eax,dword ptr [ebp-28]
 0053D5E3    dec         eax
>0053D5E4    jne         0053D5ED
 0053D5E6    xor         eax,eax
>0053D5E8    jmp         0053D746
 0053D5ED    mov         eax,dword ptr [ebp-5B]
>0053D5F0    jmp         0053D746
 0053D5F5    mov         edx,dword ptr [ebp-5B]
 0053D5F8    mov         ecx,dword ptr [ebp-1C]
 0053D5FB    cmp         edx,ecx
>0053D5FD    jne         0053D744
 0053D603    mov         eax,dword ptr [ebp-1C]
>0053D606    jmp         0053D746
 0053D60B    mov         edx,dword ptr [ebp-14]
 0053D60E    cmp         edx,646461
>0053D614    jne         0053D625
 0053D616    mov         cl,byte ptr [ebp-2D]
 0053D619    cmp         cl,2
>0053D61C    jne         0053D625
 0053D61E    mov         al,byte ptr [ebp-2C]
 0053D621    cmp         al,1
>0053D623    je          0053D640
 0053D625    mov         edx,dword ptr [ebp-14]
 0053D628    cmp         edx,636E69
>0053D62E    jne         0053D725
 0053D634    mov         cl,byte ptr [ebp-2D]
 0053D637    cmp         cl,2
>0053D63A    jne         0053D725
 0053D640    inc         dword ptr [ebp-28]
 0053D643    mov         eax,dword ptr [ebp-0C]
 0053D646    inc         eax
>0053D647    jne         0053D651
 0053D649    mov         edx,dword ptr [ebp-77]
 0053D64C    mov         dword ptr [ebp-0C],edx
>0053D64F    jmp         0053D664
 0053D651    mov         edx,dword ptr [ebp-77]
 0053D654    mov         eax,dword ptr [ebp-0C]
 0053D657    call        0053CEE0
 0053D65C    test        al,al
>0053D65E    je          0053D744
 0053D664    mov         eax,dword ptr [ebp-18]
 0053D667    mov         edx,dword ptr [ebp-24]
 0053D66A    add         eax,edx
 0053D66C    xor         edx,edx
 0053D66E    push        edx
 0053D66F    push        eax
 0053D670    push        0
 0053D672    lea         ecx,[ebp-0DC]
 0053D678    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D67E    mov         eax,dword ptr [ebp-20]
 0053D681    add         edx,eax
 0053D683    mov         eax,dword ptr [ebp-24]
 0053D686    add         edx,eax
 0053D688    mov         eax,6ECAB0
 0053D68D    call        004749C0
 0053D692    add         dword ptr [ebp-24],eax
 0053D695    mov         edx,dword ptr [ebp-0DC]
 0053D69B    mov         dword ptr [ebp-14],edx
 0053D69E    mov         ecx,dword ptr [ebp-14]
 0053D6A1    cmp         ecx,627573
>0053D6A7    jne         0053D6FF
 0053D6A9    mov         eax,dword ptr [ebp-18]
 0053D6AC    mov         edx,dword ptr [ebp-24]
 0053D6AF    add         eax,edx
 0053D6B1    xor         edx,edx
 0053D6B3    push        edx
 0053D6B4    push        eax
 0053D6B5    push        0
 0053D6B7    lea         ecx,[ebp-0DC]
 0053D6BD    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D6C3    mov         eax,dword ptr [ebp-20]
 0053D6C6    add         edx,eax
 0053D6C8    mov         eax,dword ptr [ebp-24]
 0053D6CB    add         edx,eax
 0053D6CD    mov         eax,6ECAB0
 0053D6D2    call        004749C0
 0053D6D7    add         dword ptr [ebp-24],eax
 0053D6DA    mov         edx,dword ptr [ebp-0DC]
 0053D6E0    mov         dword ptr [ebp-14],edx
 0053D6E3    mov         ecx,dword ptr [ebp-14]
 0053D6E6    cmp         ecx,626A
>0053D6EC    jne         0053D6FF
 0053D6EE    mov         eax,dword ptr [ebp-24]
 0053D6F1    add         dword ptr [ebp-18],eax
 0053D6F4    mov         edx,dword ptr [ebp-24]
 0053D6F7    add         dword ptr [ebp-20],edx
>0053D6FA    jmp         0053D194
 0053D6FF    mov         ecx,dword ptr [ebp-14]
 0053D702    cmp         ecx,7A6A
>0053D708    je          0053D714
 0053D70A    mov         eax,dword ptr [ebp-14]
 0053D70D    cmp         eax,656A
>0053D712    jne         0053D744
 0053D714    mov         edx,dword ptr [ebp-24]
 0053D717    add         dword ptr [ebp-18],edx
 0053D71A    mov         ecx,dword ptr [ebp-24]
 0053D71D    add         dword ptr [ebp-20],ecx
>0053D720    jmp         0053D194
 0053D725    mov         eax,dword ptr [ebp-14]
 0053D728    cmp         eax,706D6A
>0053D72D    jne         0053D744
 0053D72F    mov         eax,dword ptr [ebp-5B]
 0053D732    call        00531F1C
 0053D737    test        al,al
>0053D739    je          0053D740
 0053D73B    mov         eax,dword ptr [ebp-5B]
>0053D73E    jmp         0053D746
 0053D740    xor         eax,eax
>0053D742    jmp         0053D746
 0053D744    xor         eax,eax
 0053D746    mov         esp,ebp
 0053D748    pop         ebp
 0053D749    ret
end;*}

//0053D74C
{*function sub_0053D74C(?:?):?;
begin
 0053D74C    push        ebp
 0053D74D    mov         ebp,esp
 0053D74F    add         esp,0FFFFFF34
 0053D755    mov         dword ptr [ebp-4],eax
 0053D758    mov         eax,dword ptr [ebp-4]
 0053D75B    mov         dword ptr [ebp-8],eax
 0053D75E    mov         eax,dword ptr [ebp-4]
 0053D761    call        005312C8
 0053D766    mov         dword ptr [ebp-18],eax
 0053D769    mov         eax,dword ptr [ebp-8]
 0053D76C    xor         edx,edx
 0053D76E    push        edx
 0053D76F    push        eax
 0053D770    push        0
 0053D772    lea         ecx,[ebp-0CC]
 0053D778    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D77E    mov         eax,dword ptr [ebp-18]
 0053D781    add         edx,eax
 0053D783    mov         eax,6ECAB0
 0053D788    call        004749C0
 0053D78D    mov         dword ptr [ebp-10],eax
 0053D790    mov         edx,dword ptr [ebp-0CC]
 0053D796    mov         dword ptr [ebp-0C],edx
 0053D799    mov         ecx,dword ptr [ebp-0C]
 0053D79C    cmp         ecx,726F78
>0053D7A2    jne         0053D821
 0053D7A4    mov         al,byte ptr [ebp-1D]
 0053D7A7    cmp         al,2
>0053D7A9    jne         0053D821
 0053D7AB    mov         dl,byte ptr [ebp-1C]
 0053D7AE    cmp         dl,2
>0053D7B1    jne         0053D821
 0053D7B3    mov         ecx,dword ptr [ebp-67]
 0053D7B6    mov         eax,dword ptr [ebp-63]
 0053D7B9    cmp         ecx,eax
>0053D7BB    jne         0053D821
 0053D7BD    mov         edx,dword ptr [ebp-67]
 0053D7C0    mov         dword ptr [ebp-14],edx
 0053D7C3    mov         ecx,dword ptr [ebp-10]
 0053D7C6    add         dword ptr [ebp-18],ecx
 0053D7C9    mov         eax,dword ptr [ebp-10]
 0053D7CC    add         dword ptr [ebp-8],eax
 0053D7CF    mov         eax,dword ptr [ebp-8]
 0053D7D2    xor         edx,edx
 0053D7D4    push        edx
 0053D7D5    push        eax
 0053D7D6    push        0
 0053D7D8    lea         ecx,[ebp-0CC]
 0053D7DE    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D7E4    mov         eax,dword ptr [ebp-18]
 0053D7E7    add         edx,eax
 0053D7E9    mov         eax,6ECAB0
 0053D7EE    call        004749C0
 0053D7F3    mov         edx,dword ptr [ebp-0CC]
 0053D7F9    mov         dword ptr [ebp-0C],edx
 0053D7FC    mov         ecx,dword ptr [ebp-0C]
 0053D7FF    cmp         ecx,766F6D
>0053D805    jne         0053D821
 0053D807    mov         al,byte ptr [ebp-1D]
 0053D80A    cmp         al,2
>0053D80C    jne         0053D821
 0053D80E    mov         edx,dword ptr [ebp-14]
 0053D811    mov         eax,dword ptr [ebp-67]
 0053D814    call        0053CEE0
 0053D819    test        al,al
>0053D81B    je          0053D821
 0053D81D    mov         al,1
>0053D81F    jmp         0053D823
 0053D821    xor         eax,eax
 0053D823    mov         esp,ebp
 0053D825    pop         ebp
 0053D826    ret
end;*}

//0053D828
{*function sub_0053D828(?:?):?;
begin
 0053D828    push        ebp
 0053D829    mov         ebp,esp
 0053D82B    add         esp,0FFFFFF38
 0053D831    mov         dword ptr [ebp-4],eax
 0053D834    mov         eax,dword ptr [ebp-4]
 0053D837    call        005312C8
 0053D83C    mov         dword ptr [ebp-8],eax
 0053D83F    mov         edx,dword ptr [ebp-4]
 0053D842    mov         dword ptr [ebp-14],edx
 0053D845    mov         eax,dword ptr [ebp-14]
 0053D848    xor         edx,edx
 0053D84A    push        edx
 0053D84B    push        eax
 0053D84C    push        0
 0053D84E    lea         ecx,[ebp-0C8]
 0053D854    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D85A    mov         eax,dword ptr [ebp-8]
 0053D85D    add         edx,eax
 0053D85F    mov         eax,6ECAB0
 0053D864    call        004749C0
 0053D869    mov         dword ptr [ebp-0C],eax
 0053D86C    mov         edx,dword ptr [ebp-0C8]
 0053D872    mov         dword ptr [ebp-10],edx
 0053D875    mov         ecx,dword ptr [ebp-10]
 0053D878    cmp         ecx,726F78
>0053D87E    jne         0053D920
 0053D884    mov         al,byte ptr [ebp-19]
 0053D887    cmp         al,2
>0053D889    jne         0053D920
 0053D88F    mov         dl,byte ptr [ebp-18]
 0053D892    cmp         dl,2
>0053D895    jne         0053D920
 0053D89B    mov         ecx,dword ptr [ebp-63]
 0053D89E    cmp         ecx,10
>0053D8A1    jne         0053D920
 0053D8A3    mov         eax,dword ptr [ebp-5F]
 0053D8A6    cmp         eax,12
>0053D8A9    jne         0053D920
 0053D8AB    mov         edx,dword ptr [ebp-0C]
 0053D8AE    add         dword ptr [ebp-8],edx
 0053D8B1    mov         ecx,dword ptr [ebp-0C]
 0053D8B4    add         dword ptr [ebp-14],ecx
 0053D8B7    mov         eax,dword ptr [ebp-14]
 0053D8BA    xor         edx,edx
 0053D8BC    push        edx
 0053D8BD    push        eax
 0053D8BE    push        0
 0053D8C0    lea         ecx,[ebp-0C8]
 0053D8C6    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D8CC    mov         eax,dword ptr [ebp-8]
 0053D8CF    add         edx,eax
 0053D8D1    mov         eax,6ECAB0
 0053D8D6    call        004749C0
 0053D8DB    mov         dword ptr [ebp-0C],eax
 0053D8DE    mov         edx,dword ptr [ebp-0C8]
 0053D8E4    mov         dword ptr [ebp-10],edx
 0053D8E7    mov         ecx,dword ptr [ebp-10]
 0053D8EA    cmp         ecx,627573
>0053D8F0    jne         0053D920
 0053D8F2    mov         al,byte ptr [ebp-19]
 0053D8F5    cmp         al,2
>0053D8F7    jne         0053D920
 0053D8F9    mov         dl,byte ptr [ebp-18]
 0053D8FC    cmp         dl,2
>0053D8FF    jne         0053D920
 0053D901    mov         ecx,dword ptr [ebp-63]
 0053D904    cmp         ecx,10
>0053D907    jne         0053D920
 0053D909    mov         eax,dword ptr [ebp-5F]
 0053D90C    cmp         eax,12
>0053D90F    jne         0053D920
 0053D911    mov         eax,dword ptr [ebp-14]
 0053D914    mov         edx,dword ptr [ebp-0C]
 0053D917    add         eax,edx
 0053D919    mov         ecx,dword ptr [ebp-4]
 0053D91C    sub         eax,ecx
>0053D91E    jmp         0053D922
 0053D920    xor         eax,eax
 0053D922    mov         esp,ebp
 0053D924    pop         ebp
 0053D925    ret
end;*}

//0053D928
{*function sub_0053D928(?:?):?;
begin
 0053D928    push        ebp
 0053D929    mov         ebp,esp
 0053D92B    add         esp,0FFFFFF10
 0053D931    mov         dword ptr [ebp-2C],eax
 0053D934    mov         eax,6E02FC
 0053D939    call        0066FECC
 0053D93E    mov         eax,dword ptr [ebp-2C]
 0053D941    call        005312C8
 0053D946    mov         dword ptr [ebp-34],eax
 0053D949    mov         edx,dword ptr [ebp-2C]
 0053D94C    mov         dword ptr [ebp-38],edx
 0053D94F    mov         eax,dword ptr [ebp-38]
 0053D952    xor         edx,edx
 0053D954    push        edx
 0053D955    push        eax
 0053D956    push        0
 0053D958    lea         ecx,[ebp-0F0]
 0053D95E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D964    mov         eax,dword ptr [ebp-34]
 0053D967    add         edx,eax
 0053D969    mov         eax,6ECAB0
 0053D96E    call        004749C0
 0053D973    mov         dword ptr [ebp-30],eax
 0053D976    mov         dl,byte ptr [ebp-8E]
 0053D97C    test        dl,dl
>0053D97E    je          0053DA44
 0053D984    mov         cl,byte ptr [ebp-8D]
 0053D98A    test        cl,cl
>0053D98C    je          0053DA44
 0053D992    mov         eax,dword ptr [ebp-30]
 0053D995    add         dword ptr [ebp-34],eax
 0053D998    mov         edx,dword ptr [ebp-30]
 0053D99B    add         dword ptr [ebp-38],edx
 0053D99E    mov         eax,dword ptr [ebp-38]
 0053D9A1    xor         edx,edx
 0053D9A3    push        edx
 0053D9A4    push        eax
 0053D9A5    push        0
 0053D9A7    lea         ecx,[ebp-0F0]
 0053D9AD    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053D9B3    mov         eax,dword ptr [ebp-34]
 0053D9B6    add         edx,eax
 0053D9B8    mov         eax,6ECAB0
 0053D9BD    call        004749C0
 0053D9C2    mov         dword ptr [ebp-30],eax
 0053D9C5    mov         dl,byte ptr [ebp-8F]
 0053D9CB    test        dl,dl
>0053D9CD    je          0053DA44
 0053D9CF    mov         eax,dword ptr [ebp-6F]
 0053D9D2    call        00531F1C
 0053D9D7    test        al,al
>0053D9D9    je          0053DA44
 0053D9DB    mov         eax,dword ptr [ebp-6F]
 0053D9DE    call        0053A308
 0053D9E3    mov         dword ptr [ebp-3C],eax
 0053D9E6    mov         edx,dword ptr [ebp-3C]
 0053D9E9    test        edx,edx
>0053D9EB    je          0053DA44
 0053D9ED    mov         word ptr [ebp-18],8
 0053D9F3    mov         edx,6DCBB0
 0053D9F8    lea         eax,[ebp-4]
 0053D9FB    call        0067DAB4
 0053DA00    inc         dword ptr [ebp-0C]
 0053DA03    mov         edx,dword ptr [eax]
 0053DA05    mov         eax,dword ptr [ebp-3C]
 0053DA08    call        00485AE0
 0053DA0D    test        al,al
 0053DA0F    setne       cl
 0053DA12    and         ecx,1
 0053DA15    push        ecx
 0053DA16    dec         dword ptr [ebp-0C]
 0053DA19    lea         eax,[ebp-4]
 0053DA1C    mov         edx,2
 0053DA21    call        0067DCA0
 0053DA26    pop         ecx
 0053DA27    test        ecx,ecx
>0053DA29    je          0053DA44
 0053DA2B    mov         eax,dword ptr [ebp-38]
 0053DA2E    mov         edx,dword ptr [ebp-30]
 0053DA31    add         eax,edx
 0053DA33    mov         ecx,dword ptr [ebp-2C]
 0053DA36    sub         eax,ecx
 0053DA38    mov         edx,dword ptr [ebp-28]
 0053DA3B    mov         dword ptr fs:[0],edx
>0053DA42    jmp         0053DA50
 0053DA44    xor         eax,eax
 0053DA46    mov         ecx,dword ptr [ebp-28]
 0053DA49    mov         dword ptr fs:[0],ecx
 0053DA50    mov         esp,ebp
 0053DA52    pop         ebp
 0053DA53    ret
end;*}

//0053DA54
{*function sub_0053DA54(?:?):?;
begin
 0053DA54    push        ebp
 0053DA55    mov         ebp,esp
 0053DA57    add         esp,0FFFFFF30
 0053DA5D    mov         dword ptr [ebp-4],eax
 0053DA60    mov         eax,dword ptr [ebp-4]
 0053DA63    call        005312C8
 0053DA68    mov         dword ptr [ebp-8],eax
 0053DA6B    mov         edx,dword ptr [ebp-4]
 0053DA6E    mov         dword ptr [ebp-1C],edx
 0053DA71    mov         eax,dword ptr [ebp-1C]
 0053DA74    xor         edx,edx
 0053DA76    push        edx
 0053DA77    push        eax
 0053DA78    push        0
 0053DA7A    lea         ecx,[ebp-0D0]
 0053DA80    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DA86    mov         eax,dword ptr [ebp-8]
 0053DA89    add         edx,eax
 0053DA8B    mov         eax,6ECAB0
 0053DA90    call        004749C0
 0053DA95    mov         dword ptr [ebp-0C],eax
 0053DA98    mov         edx,dword ptr [ebp-0D0]
 0053DA9E    mov         dword ptr [ebp-14],edx
 0053DAA1    mov         ecx,dword ptr [ebp-14]
 0053DAA4    cmp         ecx,74736574
>0053DAAA    jne         0053DC82
 0053DAB0    mov         al,byte ptr [ebp-21]
 0053DAB3    cmp         al,2
>0053DAB5    jne         0053DC82
 0053DABB    mov         dl,byte ptr [ebp-20]
 0053DABE    cmp         dl,2
>0053DAC1    jne         0053DC82
 0053DAC7    mov         ecx,dword ptr [ebp-6B]
 0053DACA    mov         eax,dword ptr [ebp-67]
 0053DACD    cmp         ecx,eax
>0053DACF    jne         0053DC82
 0053DAD5    mov         edx,dword ptr [ebp-6B]
 0053DAD8    mov         dword ptr [ebp-10],edx
 0053DADB    mov         ecx,dword ptr [ebp-0C]
 0053DADE    add         dword ptr [ebp-8],ecx
 0053DAE1    mov         eax,dword ptr [ebp-0C]
 0053DAE4    add         dword ptr [ebp-1C],eax
 0053DAE7    mov         eax,dword ptr [ebp-1C]
 0053DAEA    xor         edx,edx
 0053DAEC    push        edx
 0053DAED    push        eax
 0053DAEE    push        0
 0053DAF0    lea         ecx,[ebp-0D0]
 0053DAF6    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DAFC    mov         eax,dword ptr [ebp-8]
 0053DAFF    add         edx,eax
 0053DB01    mov         eax,6ECAB0
 0053DB06    call        004749C0
 0053DB0B    mov         dword ptr [ebp-0C],eax
 0053DB0E    mov         edx,dword ptr [ebp-0D0]
 0053DB14    mov         dword ptr [ebp-14],edx
 0053DB17    mov         ecx,dword ptr [ebp-14]
 0053DB1A    cmp         ecx,7A6A
>0053DB20    je          0053DB30
 0053DB22    mov         eax,dword ptr [ebp-14]
 0053DB25    cmp         eax,656A
>0053DB2A    jne         0053DC82
 0053DB30    mov         edx,dword ptr [ebp-4F]
 0053DB33    mov         dword ptr [ebp-18],edx
 0053DB36    mov         ecx,dword ptr [ebp-0C]
 0053DB39    add         dword ptr [ebp-8],ecx
 0053DB3C    mov         eax,dword ptr [ebp-0C]
 0053DB3F    add         dword ptr [ebp-1C],eax
 0053DB42    mov         eax,dword ptr [ebp-1C]
 0053DB45    xor         edx,edx
 0053DB47    push        edx
 0053DB48    push        eax
 0053DB49    push        0
 0053DB4B    lea         ecx,[ebp-0D0]
 0053DB51    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DB57    mov         eax,dword ptr [ebp-8]
 0053DB5A    add         edx,eax
 0053DB5C    mov         eax,6ECAB0
 0053DB61    call        004749C0
 0053DB66    mov         dword ptr [ebp-0C],eax
 0053DB69    mov         edx,dword ptr [ebp-0D0]
 0053DB6F    mov         dword ptr [ebp-14],edx
 0053DB72    mov         ecx,dword ptr [ebp-14]
 0053DB75    cmp         ecx,766F6D
>0053DB7B    jne         0053DBC5
 0053DB7D    mov         al,byte ptr [ebp-21]
 0053DB80    cmp         al,2
>0053DB82    jne         0053DBC5
 0053DB84    mov         dl,byte ptr [ebp-20]
 0053DB87    cmp         dl,3
>0053DB8A    jne         0053DBC5
 0053DB8C    mov         ecx,dword ptr [ebp-5F]
 0053DB8F    mov         eax,dword ptr [ebp-10]
 0053DB92    cmp         ecx,eax
>0053DB94    jne         0053DBC5
 0053DB96    mov         edx,dword ptr [ebp-5B]
 0053DB99    inc         edx
>0053DB9A    jne         0053DBC5
 0053DB9C    mov         ecx,dword ptr [ebp-53]
 0053DB9F    cmp         ecx,0FFFFFFFC
>0053DBA2    jne         0053DBC5
 0053DBA4    mov         eax,dword ptr [ebp-1C]
 0053DBA7    mov         edx,dword ptr [ebp-0C]
 0053DBAA    add         eax,edx
 0053DBAC    mov         ecx,dword ptr [ebp-18]
 0053DBAF    cmp         eax,ecx
>0053DBB1    jne         0053DBC5
 0053DBB3    mov         eax,dword ptr [ebp-1C]
 0053DBB6    mov         edx,dword ptr [ebp-0C]
 0053DBB9    add         eax,edx
 0053DBBB    mov         ecx,dword ptr [ebp-4]
 0053DBBE    sub         eax,ecx
>0053DBC0    jmp         0053DC84
 0053DBC5    mov         eax,dword ptr [ebp-14]
 0053DBC8    cmp         eax,627573
>0053DBCD    jne         0053DC82
 0053DBD3    mov         dl,byte ptr [ebp-21]
 0053DBD6    cmp         dl,2
>0053DBD9    jne         0053DC82
 0053DBDF    mov         cl,byte ptr [ebp-20]
 0053DBE2    cmp         cl,1
>0053DBE5    jne         0053DC82
 0053DBEB    mov         eax,dword ptr [ebp-4F]
 0053DBEE    cmp         eax,4
>0053DBF1    jne         0053DC82
 0053DBF7    mov         edx,dword ptr [ebp-0C]
 0053DBFA    add         dword ptr [ebp-8],edx
 0053DBFD    mov         ecx,dword ptr [ebp-0C]
 0053DC00    add         dword ptr [ebp-1C],ecx
 0053DC03    mov         eax,dword ptr [ebp-1C]
 0053DC06    xor         edx,edx
 0053DC08    push        edx
 0053DC09    push        eax
 0053DC0A    push        0
 0053DC0C    lea         ecx,[ebp-0D0]
 0053DC12    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DC18    mov         eax,dword ptr [ebp-8]
 0053DC1B    add         edx,eax
 0053DC1D    mov         eax,6ECAB0
 0053DC22    call        004749C0
 0053DC27    mov         dword ptr [ebp-0C],eax
 0053DC2A    mov         edx,dword ptr [ebp-0D0]
 0053DC30    mov         dword ptr [ebp-14],edx
 0053DC33    mov         ecx,dword ptr [ebp-14]
 0053DC36    cmp         ecx,766F6D
>0053DC3C    jne         0053DC82
 0053DC3E    mov         al,byte ptr [ebp-21]
 0053DC41    cmp         al,2
>0053DC43    jne         0053DC82
 0053DC45    mov         dl,byte ptr [ebp-20]
 0053DC48    cmp         dl,3
>0053DC4B    jne         0053DC82
 0053DC4D    mov         ecx,dword ptr [ebp-5F]
 0053DC50    mov         eax,dword ptr [ebp-10]
 0053DC53    cmp         ecx,eax
>0053DC55    jne         0053DC82
 0053DC57    mov         edx,dword ptr [ebp-5B]
 0053DC5A    inc         edx
>0053DC5B    jne         0053DC82
 0053DC5D    mov         ecx,dword ptr [ebp-53]
 0053DC60    test        ecx,ecx
>0053DC62    jne         0053DC82
 0053DC64    mov         eax,dword ptr [ebp-1C]
 0053DC67    mov         edx,dword ptr [ebp-0C]
 0053DC6A    add         eax,edx
 0053DC6C    mov         ecx,dword ptr [ebp-18]
 0053DC6F    cmp         eax,ecx
>0053DC71    jne         0053DC82
 0053DC73    mov         eax,dword ptr [ebp-1C]
 0053DC76    mov         edx,dword ptr [ebp-0C]
 0053DC79    add         eax,edx
 0053DC7B    mov         ecx,dword ptr [ebp-4]
 0053DC7E    sub         eax,ecx
>0053DC80    jmp         0053DC84
 0053DC82    xor         eax,eax
 0053DC84    mov         esp,ebp
 0053DC86    pop         ebp
 0053DC87    ret
end;*}

//0053DC88
{*function sub_0053DC88(?:?):?;
begin
 0053DC88    push        ebp
 0053DC89    mov         ebp,esp
 0053DC8B    add         esp,0FFFFFF24
 0053DC91    mov         dword ptr [ebp-4],eax
 0053DC94    mov         eax,dword ptr [ebp-4]
 0053DC97    call        005312C8
 0053DC9C    mov         dword ptr [ebp-0C],eax
 0053DC9F    mov         edx,dword ptr [ebp-4]
 0053DCA2    mov         dword ptr [ebp-28],edx
 0053DCA5    mov         eax,dword ptr [ebp-28]
 0053DCA8    xor         edx,edx
 0053DCAA    push        edx
 0053DCAB    push        eax
 0053DCAC    push        0
 0053DCAE    lea         ecx,[ebp-0DC]
 0053DCB4    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DCBA    mov         eax,dword ptr [ebp-0C]
 0053DCBD    add         edx,eax
 0053DCBF    mov         eax,6ECAB0
 0053DCC4    call        004749C0
 0053DCC9    mov         dword ptr [ebp-10],eax
 0053DCCC    lea         edx,[ebp-0DC]
 0053DCD2    mov         eax,6ECAB0
 0053DCD7    call        00474648
 0053DCDC    mov         byte ptr [ebp-5],al
 0053DCDF    mov         dl,byte ptr [ebp-5]
 0053DCE2    cmp         dl,49
>0053DCE5    jne         0053DF8F
 0053DCEB    mov         cl,byte ptr [ebp-2D]
 0053DCEE    cmp         cl,3
>0053DCF1    jne         0053DF8F
 0053DCF7    mov         al,byte ptr [ebp-2C]
 0053DCFA    cmp         al,1
>0053DCFC    jne         0053DF8F
 0053DD02    mov         edx,dword ptr [ebp-5B]
 0053DD05    test        edx,edx
>0053DD07    jne         0053DF8F
 0053DD0D    mov         ecx,dword ptr [ebp-6B]
 0053DD10    mov         dword ptr [ebp-18],ecx
 0053DD13    mov         eax,dword ptr [ebp-5F]
 0053DD16    mov         dword ptr [ebp-1C],eax
 0053DD19    mov         edx,dword ptr [ebp-10]
 0053DD1C    add         dword ptr [ebp-0C],edx
 0053DD1F    mov         ecx,dword ptr [ebp-10]
 0053DD22    add         dword ptr [ebp-28],ecx
 0053DD25    mov         eax,dword ptr [ebp-28]
 0053DD28    xor         edx,edx
 0053DD2A    push        edx
 0053DD2B    push        eax
 0053DD2C    push        0
 0053DD2E    lea         ecx,[ebp-0DC]
 0053DD34    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DD3A    mov         eax,dword ptr [ebp-0C]
 0053DD3D    add         edx,eax
 0053DD3F    mov         eax,6ECAB0
 0053DD44    call        004749C0
 0053DD49    mov         dword ptr [ebp-10],eax
 0053DD4C    mov         edx,dword ptr [ebp-0DC]
 0053DD52    mov         dword ptr [ebp-20],edx
 0053DD55    mov         ecx,dword ptr [ebp-20]
 0053DD58    cmp         ecx,7A6A
>0053DD5E    je          0053DD6E
 0053DD60    mov         eax,dword ptr [ebp-20]
 0053DD63    cmp         eax,656A
>0053DD68    jne         0053DF8F
 0053DD6E    mov         edx,dword ptr [ebp-5B]
 0053DD71    mov         dword ptr [ebp-24],edx
 0053DD74    mov         ecx,dword ptr [ebp-10]
 0053DD77    add         dword ptr [ebp-0C],ecx
 0053DD7A    mov         eax,dword ptr [ebp-10]
 0053DD7D    add         dword ptr [ebp-28],eax
 0053DD80    mov         eax,dword ptr [ebp-28]
 0053DD83    xor         edx,edx
 0053DD85    push        edx
 0053DD86    push        eax
 0053DD87    push        0
 0053DD89    lea         ecx,[ebp-0DC]
 0053DD8F    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DD95    mov         eax,dword ptr [ebp-0C]
 0053DD98    add         edx,eax
 0053DD9A    mov         eax,6ECAB0
 0053DD9F    call        004749C0
 0053DDA4    mov         dword ptr [ebp-10],eax
 0053DDA7    lea         edx,[ebp-0DC]
 0053DDAD    mov         eax,6ECAB0
 0053DDB2    call        00474648
 0053DDB7    mov         byte ptr [ebp-5],al
 0053DDBA    mov         dl,byte ptr [ebp-5]
 0053DDBD    cmp         dl,0D1
>0053DDC0    jne         0053DF8F
 0053DDC6    mov         cl,byte ptr [ebp-2D]
 0053DDC9    cmp         cl,2
>0053DDCC    jne         0053DF8F
 0053DDD2    mov         al,byte ptr [ebp-2C]
 0053DDD5    cmp         al,3
>0053DDD7    jne         0053DF8F
 0053DDDD    mov         edx,dword ptr [ebp-6B]
 0053DDE0    mov         ecx,dword ptr [ebp-18]
 0053DDE3    cmp         edx,ecx
>0053DDE5    jne         0053DF8F
 0053DDEB    mov         eax,dword ptr [ebp-5F]
 0053DDEE    mov         edx,dword ptr [ebp-1C]
 0053DDF1    cmp         eax,edx
>0053DDF3    jne         0053DF8F
 0053DDF9    mov         ecx,dword ptr [ebp-77]
 0053DDFC    mov         dword ptr [ebp-14],ecx
 0053DDFF    mov         eax,dword ptr [ebp-10]
 0053DE02    add         dword ptr [ebp-0C],eax
 0053DE05    mov         edx,dword ptr [ebp-10]
 0053DE08    add         dword ptr [ebp-28],edx
 0053DE0B    mov         eax,dword ptr [ebp-28]
 0053DE0E    xor         edx,edx
 0053DE10    push        edx
 0053DE11    push        eax
 0053DE12    push        0
 0053DE14    lea         ecx,[ebp-0DC]
 0053DE1A    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DE20    mov         eax,dword ptr [ebp-0C]
 0053DE23    add         edx,eax
 0053DE25    mov         eax,6ECAB0
 0053DE2A    call        004749C0
 0053DE2F    mov         dword ptr [ebp-10],eax
 0053DE32    lea         edx,[ebp-0DC]
 0053DE38    mov         eax,6ECAB0
 0053DE3D    call        00474648
 0053DE42    mov         byte ptr [ebp-5],al
 0053DE45    mov         dl,byte ptr [ebp-5]
 0053DE48    cmp         dl,9B
>0053DE4B    jne         0053DF8F
 0053DE51    mov         cl,byte ptr [ebp-2D]
 0053DE54    cmp         cl,2
>0053DE57    jne         0053DF8F
 0053DE5D    mov         al,byte ptr [ebp-2C]
 0053DE60    cmp         al,1
>0053DE62    jne         0053DF8F
 0053DE68    mov         edx,dword ptr [ebp-5B]
 0053DE6B    cmp         edx,4
>0053DE6E    jne         0053DF8F
 0053DE74    mov         ecx,dword ptr [ebp-10]
 0053DE77    add         dword ptr [ebp-0C],ecx
 0053DE7A    mov         eax,dword ptr [ebp-10]
 0053DE7D    add         dword ptr [ebp-28],eax
 0053DE80    mov         eax,dword ptr [ebp-28]
 0053DE83    xor         edx,edx
 0053DE85    push        edx
 0053DE86    push        eax
 0053DE87    push        0
 0053DE89    lea         ecx,[ebp-0DC]
 0053DE8F    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DE95    mov         eax,dword ptr [ebp-0C]
 0053DE98    add         edx,eax
 0053DE9A    mov         eax,6ECAB0
 0053DE9F    call        004749C0
 0053DEA4    mov         dword ptr [ebp-10],eax
 0053DEA7    lea         edx,[ebp-0DC]
 0053DEAD    mov         eax,6ECAB0
 0053DEB2    call        00474648
 0053DEB7    mov         byte ptr [ebp-5],al
 0053DEBA    mov         dl,byte ptr [ebp-5]
 0053DEBD    cmp         dl,0D1
>0053DEC0    jne         0053DF8F
 0053DEC6    mov         cl,byte ptr [ebp-2D]
 0053DEC9    cmp         cl,2
>0053DECC    jne         0053DF8F
 0053DED2    mov         al,byte ptr [ebp-2C]
 0053DED5    cmp         al,3
>0053DED7    jne         0053DF8F
 0053DEDD    mov         edx,dword ptr [ebp-6B]
 0053DEE0    mov         ecx,dword ptr [ebp-14]
 0053DEE3    cmp         edx,ecx
>0053DEE5    jne         0053DF8F
 0053DEEB    mov         eax,dword ptr [ebp-67]
 0053DEEE    inc         eax
>0053DEEF    jne         0053DF8F
 0053DEF5    mov         edx,dword ptr [ebp-5F]
 0053DEF8    test        edx,edx
>0053DEFA    jne         0053DF8F
 0053DF00    mov         ecx,dword ptr [ebp-10]
 0053DF03    add         dword ptr [ebp-0C],ecx
 0053DF06    mov         eax,dword ptr [ebp-10]
 0053DF09    add         dword ptr [ebp-28],eax
 0053DF0C    mov         eax,dword ptr [ebp-28]
 0053DF0F    xor         edx,edx
 0053DF11    push        edx
 0053DF12    push        eax
 0053DF13    push        0
 0053DF15    lea         ecx,[ebp-0DC]
 0053DF1B    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DF21    mov         eax,dword ptr [ebp-0C]
 0053DF24    add         edx,eax
 0053DF26    mov         eax,6ECAB0
 0053DF2B    call        004749C0
 0053DF30    mov         dword ptr [ebp-10],eax
 0053DF33    lea         edx,[ebp-0DC]
 0053DF39    mov         eax,6ECAB0
 0053DF3E    call        00474648
 0053DF43    mov         byte ptr [ebp-5],al
 0053DF46    mov         dl,byte ptr [ebp-5]
 0053DF49    cmp         dl,0D1
>0053DF4C    jne         0053DF8F
 0053DF4E    mov         cl,byte ptr [ebp-2D]
 0053DF51    cmp         cl,3
>0053DF54    jne         0053DF8F
 0053DF56    mov         al,byte ptr [ebp-2C]
 0053DF59    cmp         al,2
>0053DF5B    jne         0053DF8F
 0053DF5D    mov         edx,dword ptr [ebp-6B]
 0053DF60    mov         ecx,dword ptr [ebp-18]
 0053DF63    cmp         edx,ecx
>0053DF65    jne         0053DF8F
 0053DF67    mov         eax,dword ptr [ebp-5F]
 0053DF6A    mov         edx,dword ptr [ebp-1C]
 0053DF6D    cmp         eax,edx
>0053DF6F    jne         0053DF8F
 0053DF71    mov         ecx,dword ptr [ebp-28]
 0053DF74    mov         eax,dword ptr [ebp-10]
 0053DF77    add         ecx,eax
 0053DF79    mov         edx,dword ptr [ebp-24]
 0053DF7C    cmp         ecx,edx
>0053DF7E    jne         0053DF8F
 0053DF80    mov         eax,dword ptr [ebp-28]
 0053DF83    mov         edx,dword ptr [ebp-10]
 0053DF86    add         eax,edx
 0053DF88    mov         ecx,dword ptr [ebp-4]
 0053DF8B    sub         eax,ecx
>0053DF8D    jmp         0053DF91
 0053DF8F    xor         eax,eax
 0053DF91    mov         esp,ebp
 0053DF93    pop         ebp
 0053DF94    ret
end;*}

//0053DF98
{*function sub_0053DF98(?:?; ?:?):?;
begin
 0053DF98    push        ebp
 0053DF99    mov         ebp,esp
 0053DF9B    add         esp,0FFFFFF24
 0053DFA1    mov         dword ptr [ebp-8],edx
 0053DFA4    mov         dword ptr [ebp-4],eax
 0053DFA7    mov         eax,dword ptr [ebp-4]
 0053DFAA    call        005312C8
 0053DFAF    mov         dword ptr [ebp-10],eax
 0053DFB2    mov         edx,dword ptr [ebp-4]
 0053DFB5    mov         dword ptr [ebp-24],edx
 0053DFB8    mov         eax,dword ptr [ebp-24]
 0053DFBB    xor         edx,edx
 0053DFBD    push        edx
 0053DFBE    push        eax
 0053DFBF    push        0
 0053DFC1    lea         ecx,[ebp-0DC]
 0053DFC7    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053DFCD    mov         eax,dword ptr [ebp-10]
 0053DFD0    add         edx,eax
 0053DFD2    mov         eax,6ECAB0
 0053DFD7    call        004749C0
 0053DFDC    mov         dword ptr [ebp-14],eax
 0053DFDF    lea         edx,[ebp-0DC]
 0053DFE5    mov         eax,6ECAB0
 0053DFEA    call        00474648
 0053DFEF    mov         byte ptr [ebp-9],al
 0053DFF2    mov         dl,byte ptr [ebp-9]
 0053DFF5    cmp         dl,5C
>0053DFF8    jne         0053E189
 0053DFFE    mov         cl,byte ptr [ebp-2D]
 0053E001    cmp         cl,2
>0053E004    jne         0053E189
 0053E00A    mov         al,byte ptr [ebp-2C]
 0053E00D    cmp         al,2
>0053E00F    jne         0053E189
 0053E015    mov         edx,dword ptr [ebp-77]
 0053E018    mov         ecx,dword ptr [ebp-73]
 0053E01B    cmp         edx,ecx
>0053E01D    jne         0053E189
 0053E023    mov         eax,dword ptr [ebp-77]
 0053E026    mov         dword ptr [ebp-18],eax
 0053E029    mov         edx,dword ptr [ebp-14]
 0053E02C    add         dword ptr [ebp-10],edx
 0053E02F    mov         ecx,dword ptr [ebp-14]
 0053E032    add         dword ptr [ebp-24],ecx
 0053E035    mov         eax,dword ptr [ebp-24]
 0053E038    xor         edx,edx
 0053E03A    push        edx
 0053E03B    push        eax
 0053E03C    push        0
 0053E03E    lea         ecx,[ebp-0DC]
 0053E044    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E04A    mov         eax,dword ptr [ebp-10]
 0053E04D    add         edx,eax
 0053E04F    mov         eax,6ECAB0
 0053E054    call        004749C0
 0053E059    mov         dword ptr [ebp-14],eax
 0053E05C    mov         edx,dword ptr [ebp-0DC]
 0053E062    mov         dword ptr [ebp-1C],edx
 0053E065    mov         ecx,dword ptr [ebp-1C]
 0053E068    cmp         ecx,736E6A
>0053E06E    jne         0053E189
 0053E074    mov         eax,dword ptr [ebp-5B]
 0053E077    mov         dword ptr [ebp-20],eax
 0053E07A    mov         edx,dword ptr [ebp-14]
 0053E07D    add         dword ptr [ebp-10],edx
 0053E080    mov         ecx,dword ptr [ebp-14]
 0053E083    add         dword ptr [ebp-24],ecx
 0053E086    mov         eax,dword ptr [ebp-24]
 0053E089    xor         edx,edx
 0053E08B    push        edx
 0053E08C    push        eax
 0053E08D    push        0
 0053E08F    lea         ecx,[ebp-0DC]
 0053E095    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E09B    mov         eax,dword ptr [ebp-10]
 0053E09E    add         edx,eax
 0053E0A0    mov         eax,6ECAB0
 0053E0A5    call        004749C0
 0053E0AA    mov         dword ptr [ebp-14],eax
 0053E0AD    lea         edx,[ebp-0DC]
 0053E0B3    mov         eax,6ECAB0
 0053E0B8    call        00474648
 0053E0BD    mov         byte ptr [ebp-9],al
 0053E0C0    mov         dl,byte ptr [ebp-9]
 0053E0C3    cmp         dl,0C2
>0053E0C6    jne         0053E189
 0053E0CC    mov         cl,byte ptr [ebp-2D]
 0053E0CF    cmp         cl,2
>0053E0D2    jne         0053E189
 0053E0D8    mov         eax,dword ptr [ebp-77]
 0053E0DB    mov         edx,dword ptr [ebp-18]
 0053E0DE    cmp         eax,edx
>0053E0E0    jne         0053E189
 0053E0E6    mov         cl,byte ptr [ebp-2C]
 0053E0E9    cmp         cl,1
>0053E0EC    jne         0053E189
 0053E0F2    mov         eax,dword ptr [ebp-5B]
 0053E0F5    inc         eax
 0053E0F6    mov         dword ptr [ebp-28],eax
 0053E0F9    mov         edx,dword ptr [ebp-14]
 0053E0FC    add         dword ptr [ebp-10],edx
 0053E0FF    mov         ecx,dword ptr [ebp-14]
 0053E102    add         dword ptr [ebp-24],ecx
 0053E105    mov         eax,dword ptr [ebp-24]
 0053E108    xor         edx,edx
 0053E10A    push        edx
 0053E10B    push        eax
 0053E10C    push        0
 0053E10E    lea         ecx,[ebp-0DC]
 0053E114    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E11A    mov         eax,dword ptr [ebp-10]
 0053E11D    add         edx,eax
 0053E11F    mov         eax,6ECAB0
 0053E124    call        004749C0
 0053E129    mov         dword ptr [ebp-14],eax
 0053E12C    lea         edx,[ebp-0DC]
 0053E132    mov         eax,6ECAB0
 0053E137    call        00474648
 0053E13C    mov         byte ptr [ebp-9],al
 0053E13F    mov         dl,byte ptr [ebp-9]
 0053E142    cmp         dl,98
>0053E145    jne         0053E189
 0053E147    mov         cl,byte ptr [ebp-2D]
 0053E14A    cmp         cl,2
>0053E14D    jne         0053E189
 0053E14F    mov         eax,dword ptr [ebp-77]
 0053E152    mov         edx,dword ptr [ebp-18]
 0053E155    cmp         eax,edx
>0053E157    jne         0053E189
 0053E159    mov         cl,byte ptr [ebp-2C]
 0053E15C    cmp         cl,1
>0053E15F    jne         0053E189
 0053E161    mov         ecx,dword ptr [ebp-5B]
 0053E164    mov         eax,1
 0053E169    shl         eax,cl
 0053E16B    mov         edx,dword ptr [ebp-28]
 0053E16E    cmp         eax,edx
>0053E170    jne         0053E189
 0053E172    mov         eax,dword ptr [ebp-8]
 0053E175    mov         edx,dword ptr [ebp-28]
 0053E178    mov         dword ptr [eax],edx
 0053E17A    mov         eax,dword ptr [ebp-24]
 0053E17D    mov         edx,dword ptr [ebp-14]
 0053E180    add         eax,edx
 0053E182    mov         ecx,dword ptr [ebp-4]
 0053E185    sub         eax,ecx
>0053E187    jmp         0053E18B
 0053E189    xor         eax,eax
 0053E18B    mov         esp,ebp
 0053E18D    pop         ebp
 0053E18E    ret
end;*}

//0053E190
{*function sub_0053E190(?:?; ?:?):?;
begin
 0053E190    push        ebp
 0053E191    mov         ebp,esp
 0053E193    add         esp,0FFFFFF24
 0053E199    mov         dword ptr [ebp-8],edx
 0053E19C    mov         dword ptr [ebp-4],eax
 0053E19F    mov         eax,dword ptr [ebp-4]
 0053E1A2    call        005312C8
 0053E1A7    mov         dword ptr [ebp-10],eax
 0053E1AA    mov         edx,dword ptr [ebp-4]
 0053E1AD    mov         dword ptr [ebp-24],edx
 0053E1B0    mov         eax,dword ptr [ebp-24]
 0053E1B3    xor         edx,edx
 0053E1B5    push        edx
 0053E1B6    push        eax
 0053E1B7    push        0
 0053E1B9    lea         ecx,[ebp-0DC]
 0053E1BF    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E1C5    mov         eax,dword ptr [ebp-10]
 0053E1C8    add         edx,eax
 0053E1CA    mov         eax,6ECAB0
 0053E1CF    call        004749C0
 0053E1D4    mov         dword ptr [ebp-14],eax
 0053E1D7    lea         edx,[ebp-0DC]
 0053E1DD    mov         eax,6ECAB0
 0053E1E2    call        00474648
 0053E1E7    mov         byte ptr [ebp-9],al
 0053E1EA    mov         dl,byte ptr [ebp-9]
 0053E1ED    cmp         dl,0C3
>0053E1F0    jne         0053E3F5
 0053E1F6    mov         cl,byte ptr [ebp-2D]
 0053E1F9    cmp         cl,2
>0053E1FC    jne         0053E3F5
 0053E202    mov         al,byte ptr [ebp-2C]
 0053E205    cmp         al,1
>0053E207    jne         0053E3F5
 0053E20D    test        byte ptr [ebp-58],80
>0053E211    je          0053E3F5
 0053E217    mov         edx,dword ptr [ebp-77]
 0053E21A    mov         dword ptr [ebp-18],edx
 0053E21D    mov         ecx,dword ptr [ebp-5B]
 0053E220    and         ecx,7FFFFFFF
 0053E226    mov         dword ptr [ebp-28],ecx
 0053E229    mov         eax,dword ptr [ebp-14]
 0053E22C    add         dword ptr [ebp-10],eax
 0053E22F    mov         edx,dword ptr [ebp-14]
 0053E232    add         dword ptr [ebp-24],edx
 0053E235    mov         eax,dword ptr [ebp-24]
 0053E238    xor         edx,edx
 0053E23A    push        edx
 0053E23B    push        eax
 0053E23C    push        0
 0053E23E    lea         ecx,[ebp-0DC]
 0053E244    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E24A    mov         eax,dword ptr [ebp-10]
 0053E24D    add         edx,eax
 0053E24F    mov         eax,6ECAB0
 0053E254    call        004749C0
 0053E259    mov         dword ptr [ebp-14],eax
 0053E25C    mov         edx,dword ptr [ebp-0DC]
 0053E262    mov         dword ptr [ebp-1C],edx
 0053E265    mov         ecx,dword ptr [ebp-1C]
 0053E268    cmp         ecx,736E6A
>0053E26E    jne         0053E3F5
 0053E274    mov         eax,dword ptr [ebp-5B]
 0053E277    mov         dword ptr [ebp-20],eax
 0053E27A    mov         edx,dword ptr [ebp-14]
 0053E27D    add         dword ptr [ebp-10],edx
 0053E280    mov         ecx,dword ptr [ebp-14]
 0053E283    add         dword ptr [ebp-24],ecx
 0053E286    mov         eax,dword ptr [ebp-24]
 0053E289    xor         edx,edx
 0053E28B    push        edx
 0053E28C    push        eax
 0053E28D    push        0
 0053E28F    lea         ecx,[ebp-0DC]
 0053E295    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E29B    mov         eax,dword ptr [ebp-10]
 0053E29E    add         edx,eax
 0053E2A0    mov         eax,6ECAB0
 0053E2A5    call        004749C0
 0053E2AA    mov         dword ptr [ebp-14],eax
 0053E2AD    lea         edx,[ebp-0DC]
 0053E2B3    mov         eax,6ECAB0
 0053E2B8    call        00474648
 0053E2BD    mov         byte ptr [ebp-9],al
 0053E2C0    mov         dl,byte ptr [ebp-9]
 0053E2C3    cmp         dl,8A
>0053E2C6    jne         0053E3F5
 0053E2CC    mov         cl,byte ptr [ebp-2D]
 0053E2CF    cmp         cl,2
>0053E2D2    jne         0053E3F5
 0053E2D8    mov         eax,dword ptr [ebp-77]
 0053E2DB    mov         edx,dword ptr [ebp-18]
 0053E2DE    cmp         eax,edx
>0053E2E0    jne         0053E3F5
 0053E2E6    mov         ecx,dword ptr [ebp-14]
 0053E2E9    add         dword ptr [ebp-10],ecx
 0053E2EC    mov         eax,dword ptr [ebp-14]
 0053E2EF    add         dword ptr [ebp-24],eax
 0053E2F2    mov         eax,dword ptr [ebp-24]
 0053E2F5    xor         edx,edx
 0053E2F7    push        edx
 0053E2F8    push        eax
 0053E2F9    push        0
 0053E2FB    lea         ecx,[ebp-0DC]
 0053E301    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E307    mov         eax,dword ptr [ebp-10]
 0053E30A    add         edx,eax
 0053E30C    mov         eax,6ECAB0
 0053E311    call        004749C0
 0053E316    mov         dword ptr [ebp-14],eax
 0053E319    lea         edx,[ebp-0DC]
 0053E31F    mov         eax,6ECAB0
 0053E324    call        00474648
 0053E329    mov         byte ptr [ebp-9],al
 0053E32C    mov         dl,byte ptr [ebp-9]
 0053E32F    cmp         dl,0D5
>0053E332    jne         0053E3F5
 0053E338    mov         cl,byte ptr [ebp-2D]
 0053E33B    cmp         cl,2
>0053E33E    jne         0053E3F5
 0053E344    mov         al,byte ptr [ebp-2C]
 0053E347    cmp         al,1
>0053E349    jne         0053E3F5
 0053E34F    mov         edx,dword ptr [ebp-77]
 0053E352    mov         ecx,dword ptr [ebp-18]
 0053E355    cmp         edx,ecx
>0053E357    jne         0053E3F5
 0053E35D    mov         eax,dword ptr [ebp-5B]
 0053E360    mov         edx,dword ptr [ebp-28]
 0053E363    add         eax,edx
 0053E365    cmp         eax,0FFFFFFFF
>0053E368    jne         0053E3F5
 0053E36E    mov         ecx,dword ptr [ebp-14]
 0053E371    add         dword ptr [ebp-10],ecx
 0053E374    mov         eax,dword ptr [ebp-14]
 0053E377    add         dword ptr [ebp-24],eax
 0053E37A    mov         eax,dword ptr [ebp-24]
 0053E37D    xor         edx,edx
 0053E37F    push        edx
 0053E380    push        eax
 0053E381    push        0
 0053E383    lea         ecx,[ebp-0DC]
 0053E389    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E38F    mov         eax,dword ptr [ebp-10]
 0053E392    add         edx,eax
 0053E394    mov         eax,6ECAB0
 0053E399    call        004749C0
 0053E39E    mov         dword ptr [ebp-14],eax
 0053E3A1    lea         edx,[ebp-0DC]
 0053E3A7    mov         eax,6ECAB0
 0053E3AC    call        00474648
 0053E3B1    mov         byte ptr [ebp-9],al
 0053E3B4    mov         dl,byte ptr [ebp-9]
 0053E3B7    cmp         dl,8E
>0053E3BA    jne         0053E3F5
 0053E3BC    mov         cl,byte ptr [ebp-2D]
 0053E3BF    cmp         cl,2
>0053E3C2    jne         0053E3F5
 0053E3C4    mov         eax,dword ptr [ebp-77]
 0053E3C7    mov         edx,dword ptr [ebp-18]
 0053E3CA    cmp         eax,edx
>0053E3CC    jne         0053E3F5
 0053E3CE    mov         ecx,dword ptr [ebp-24]
 0053E3D1    mov         eax,dword ptr [ebp-14]
 0053E3D4    add         ecx,eax
 0053E3D6    mov         edx,dword ptr [ebp-20]
 0053E3D9    cmp         ecx,edx
>0053E3DB    jne         0053E3F5
 0053E3DD    mov         ecx,dword ptr [ebp-28]
 0053E3E0    inc         ecx
 0053E3E1    mov         eax,dword ptr [ebp-8]
 0053E3E4    mov         dword ptr [eax],ecx
 0053E3E6    mov         eax,dword ptr [ebp-24]
 0053E3E9    mov         edx,dword ptr [ebp-14]
 0053E3EC    add         eax,edx
 0053E3EE    mov         ecx,dword ptr [ebp-4]
 0053E3F1    sub         eax,ecx
>0053E3F3    jmp         0053E3F7
 0053E3F5    xor         eax,eax
 0053E3F7    mov         esp,ebp
 0053E3F9    pop         ebp
 0053E3FA    ret
end;*}

//0053E3FC
{*function sub_0053E3FC(?:?):?;
begin
 0053E3FC    push        ebp
 0053E3FD    mov         ebp,esp
 0053E3FF    add         esp,0FFFFFF20
 0053E405    mov         dword ptr [ebp-4],eax
 0053E408    mov         eax,dword ptr [ebp-4]
 0053E40B    call        005312C8
 0053E410    mov         dword ptr [ebp-0C],eax
 0053E413    mov         edx,dword ptr [ebp-4]
 0053E416    mov         dword ptr [ebp-28],edx
 0053E419    mov         eax,dword ptr [ebp-28]
 0053E41C    xor         edx,edx
 0053E41E    push        edx
 0053E41F    push        eax
 0053E420    push        0
 0053E422    lea         ecx,[ebp-0E0]
 0053E428    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E42E    mov         eax,dword ptr [ebp-0C]
 0053E431    add         edx,eax
 0053E433    mov         eax,6ECAB0
 0053E438    call        004749C0
 0053E43D    mov         dword ptr [ebp-10],eax
 0053E440    lea         edx,[ebp-0E0]
 0053E446    mov         eax,6ECAB0
 0053E44B    call        00474648
 0053E450    mov         byte ptr [ebp-5],al
 0053E453    mov         dl,byte ptr [ebp-5]
 0053E456    cmp         dl,5C
>0053E459    jne         0053E6FB
 0053E45F    mov         cl,byte ptr [ebp-31]
 0053E462    cmp         cl,2
>0053E465    jne         0053E6FB
 0053E46B    mov         al,byte ptr [ebp-30]
 0053E46E    cmp         al,2
>0053E470    jne         0053E6FB
 0053E476    mov         edx,dword ptr [ebp-7B]
 0053E479    mov         ecx,dword ptr [ebp-77]
 0053E47C    cmp         edx,ecx
>0053E47E    jne         0053E6FB
 0053E484    mov         eax,dword ptr [ebp-7B]
 0053E487    mov         dword ptr [ebp-14],eax
 0053E48A    mov         edx,dword ptr [ebp-10]
 0053E48D    add         dword ptr [ebp-0C],edx
 0053E490    mov         ecx,dword ptr [ebp-10]
 0053E493    add         dword ptr [ebp-28],ecx
 0053E496    mov         eax,dword ptr [ebp-28]
 0053E499    xor         edx,edx
 0053E49B    push        edx
 0053E49C    push        eax
 0053E49D    push        0
 0053E49F    lea         ecx,[ebp-0E0]
 0053E4A5    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E4AB    mov         eax,dword ptr [ebp-0C]
 0053E4AE    add         edx,eax
 0053E4B0    mov         eax,6ECAB0
 0053E4B5    call        004749C0
 0053E4BA    mov         dword ptr [ebp-10],eax
 0053E4BD    mov         edx,dword ptr [ebp-0E0]
 0053E4C3    mov         dword ptr [ebp-1C],edx
 0053E4C6    mov         ecx,dword ptr [ebp-1C]
 0053E4C9    cmp         ecx,736A
>0053E4CF    jne         0053E6FB
 0053E4D5    mov         eax,dword ptr [ebp-5F]
 0053E4D8    mov         dword ptr [ebp-20],eax
 0053E4DB    mov         edx,dword ptr [ebp-10]
 0053E4DE    add         dword ptr [ebp-0C],edx
 0053E4E1    mov         ecx,dword ptr [ebp-10]
 0053E4E4    add         dword ptr [ebp-28],ecx
 0053E4E7    mov         eax,dword ptr [ebp-28]
 0053E4EA    mov         dword ptr [ebp-24],eax
 0053E4ED    mov         eax,dword ptr [ebp-28]
 0053E4F0    xor         edx,edx
 0053E4F2    push        edx
 0053E4F3    push        eax
 0053E4F4    push        0
 0053E4F6    lea         ecx,[ebp-0E0]
 0053E4FC    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E502    mov         eax,dword ptr [ebp-0C]
 0053E505    add         edx,eax
 0053E507    mov         eax,6ECAB0
 0053E50C    call        004749C0
 0053E511    mov         dword ptr [ebp-10],eax
 0053E514    lea         edx,[ebp-0E0]
 0053E51A    mov         eax,6ECAB0
 0053E51F    call        00474648
 0053E524    mov         byte ptr [ebp-5],al
 0053E527    mov         dl,byte ptr [ebp-5]
 0053E52A    cmp         dl,0D1
>0053E52D    jne         0053E6FB
 0053E533    mov         cl,byte ptr [ebp-31]
 0053E536    cmp         cl,2
>0053E539    jne         0053E6FB
 0053E53F    mov         al,byte ptr [ebp-30]
 0053E542    cmp         al,3
>0053E544    jne         0053E6FB
 0053E54A    mov         edx,dword ptr [ebp-7B]
 0053E54D    mov         dword ptr [ebp-18],edx
 0053E550    mov         ecx,dword ptr [ebp-10]
 0053E553    add         dword ptr [ebp-0C],ecx
 0053E556    mov         eax,dword ptr [ebp-10]
 0053E559    add         dword ptr [ebp-28],eax
 0053E55C    mov         eax,dword ptr [ebp-28]
 0053E55F    xor         edx,edx
 0053E561    push        edx
 0053E562    push        eax
 0053E563    push        0
 0053E565    lea         ecx,[ebp-0E0]
 0053E56B    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E571    mov         eax,dword ptr [ebp-0C]
 0053E574    add         edx,eax
 0053E576    mov         eax,6ECAB0
 0053E57B    call        004749C0
 0053E580    mov         dword ptr [ebp-10],eax
 0053E583    lea         edx,[ebp-0E0]
 0053E589    mov         eax,6ECAB0
 0053E58E    call        00474648
 0053E593    mov         byte ptr [ebp-5],al
 0053E596    mov         dl,byte ptr [ebp-5]
 0053E599    cmp         dl,8A
>0053E59C    jne         0053E6FB
 0053E5A2    mov         cl,byte ptr [ebp-31]
 0053E5A5    cmp         cl,2
>0053E5A8    jne         0053E6FB
 0053E5AE    mov         eax,dword ptr [ebp-7B]
 0053E5B1    mov         edx,dword ptr [ebp-14]
 0053E5B4    cmp         eax,edx
>0053E5B6    jne         0053E6FB
 0053E5BC    mov         ecx,dword ptr [ebp-10]
 0053E5BF    add         dword ptr [ebp-0C],ecx
 0053E5C2    mov         eax,dword ptr [ebp-10]
 0053E5C5    add         dword ptr [ebp-28],eax
 0053E5C8    mov         eax,dword ptr [ebp-28]
 0053E5CB    xor         edx,edx
 0053E5CD    push        edx
 0053E5CE    push        eax
 0053E5CF    push        0
 0053E5D1    lea         ecx,[ebp-0E0]
 0053E5D7    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E5DD    mov         eax,dword ptr [ebp-0C]
 0053E5E0    add         edx,eax
 0053E5E2    mov         eax,6ECAB0
 0053E5E7    call        004749C0
 0053E5EC    mov         dword ptr [ebp-10],eax
 0053E5EF    lea         edx,[ebp-0E0]
 0053E5F5    mov         eax,6ECAB0
 0053E5FA    call        00474648
 0053E5FF    mov         byte ptr [ebp-5],al
 0053E602    mov         dl,byte ptr [ebp-5]
 0053E605    cmp         dl,97
>0053E608    jne         0053E6FB
 0053E60E    mov         cl,byte ptr [ebp-31]
 0053E611    cmp         cl,2
>0053E614    jne         0053E6FB
 0053E61A    mov         eax,dword ptr [ebp-7B]
 0053E61D    mov         edx,dword ptr [ebp-18]
 0053E620    cmp         eax,edx
>0053E622    jne         0053E6FB
 0053E628    mov         ecx,dword ptr [ebp-10]
 0053E62B    add         dword ptr [ebp-0C],ecx
 0053E62E    mov         eax,dword ptr [ebp-10]
 0053E631    add         dword ptr [ebp-28],eax
 0053E634    mov         eax,dword ptr [ebp-28]
 0053E637    xor         edx,edx
 0053E639    push        edx
 0053E63A    push        eax
 0053E63B    push        0
 0053E63D    lea         ecx,[ebp-0E0]
 0053E643    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E649    mov         eax,dword ptr [ebp-0C]
 0053E64C    add         edx,eax
 0053E64E    mov         eax,6ECAB0
 0053E653    call        004749C0
 0053E658    mov         dword ptr [ebp-10],eax
 0053E65B    mov         edx,dword ptr [ebp-0E0]
 0053E661    mov         dword ptr [ebp-1C],edx
 0053E664    mov         ecx,dword ptr [ebp-1C]
 0053E667    cmp         ecx,736E6A
>0053E66D    jne         0053E6FB
 0053E673    mov         eax,dword ptr [ebp-5F]
 0053E676    mov         edx,dword ptr [ebp-24]
 0053E679    cmp         eax,edx
>0053E67B    jne         0053E6FB
 0053E67D    mov         ecx,dword ptr [ebp-10]
 0053E680    add         dword ptr [ebp-0C],ecx
 0053E683    mov         eax,dword ptr [ebp-10]
 0053E686    add         dword ptr [ebp-28],eax
 0053E689    mov         eax,dword ptr [ebp-28]
 0053E68C    xor         edx,edx
 0053E68E    push        edx
 0053E68F    push        eax
 0053E690    push        0
 0053E692    lea         ecx,[ebp-0E0]
 0053E698    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0053E69E    mov         eax,dword ptr [ebp-0C]
 0053E6A1    add         edx,eax
 0053E6A3    mov         eax,6ECAB0
 0053E6A8    call        004749C0
 0053E6AD    mov         dword ptr [ebp-10],eax
 0053E6B0    lea         edx,[ebp-0E0]
 0053E6B6    mov         eax,6ECAB0
 0053E6BB    call        00474648
 0053E6C0    mov         byte ptr [ebp-5],al
 0053E6C3    mov         edx,dword ptr [ebp-20]
 0053E6C6    mov         ecx,dword ptr [ebp-28]
 0053E6C9    cmp         edx,ecx
>0053E6CB    jne         0053E6FB
 0053E6CD    mov         al,byte ptr [ebp-5]
 0053E6D0    cmp         al,0D1
>0053E6D2    jne         0053E6FB
 0053E6D4    mov         dl,byte ptr [ebp-31]
 0053E6D7    cmp         dl,2
>0053E6DA    jne         0053E6FB
 0053E6DC    mov         cl,byte ptr [ebp-30]
 0053E6DF    cmp         cl,2
>0053E6E2    jne         0053E6FB
 0053E6E4    mov         eax,dword ptr [ebp-77]
 0053E6E7    cmp         eax,14
>0053E6EA    jne         0053E6FB
 0053E6EC    mov         eax,dword ptr [ebp-28]
 0053E6EF    mov         edx,dword ptr [ebp-10]
 0053E6F2    add         eax,edx
 0053E6F4    mov         ecx,dword ptr [ebp-4]
 0053E6F7    sub         eax,ecx
>0053E6F9    jmp         0053E6FD
 0053E6FB    xor         eax,eax
 0053E6FD    mov         esp,ebp
 0053E6FF    pop         ebp
 0053E700    ret
end;*}

//0053E704
{*procedure sub_0053E704(?:?);
begin
 0053E704    push        ebp
 0053E705    mov         ebp,esp
 0053E707    add         esp,0FFFFFFF8
 0053E70A    mov         dword ptr [ebp-4],eax
 0053E70D    mov         eax,dword ptr [ebp-4]
 0053E710    call        005312C8
 0053E715    mov         dword ptr [ebp-8],eax
 0053E718    mov         edx,dword ptr [ebp-8]
 0053E71B    mov         eax,800000
 0053E720    call        00532B74
 0053E725    test        al,al
>0053E727    je          0053E72E
 0053E729    mov         eax,dword ptr [ebp-8]
>0053E72C    jmp         0053E733
 0053E72E    dec         dword ptr [ebp-8]
>0053E731    jmp         0053E718
 0053E733    pop         ecx
 0053E734    pop         ecx
 0053E735    pop         ebp
 0053E736    ret
end;*}

//0053E738
{*function sub_0053E738(?:AnsiString):?;
begin
 0053E738    push        ebp
 0053E739    mov         ebp,esp
 0053E73B    add         esp,0FFFFFFC0
 0053E73E    mov         dword ptr [ebp-4],eax
 0053E741    mov         eax,6E0368
 0053E746    call        0066FECC
 0053E74B    mov         dword ptr [ebp-20],1
 0053E752    lea         edx,[ebp-4]
 0053E755    lea         eax,[ebp-4]
 0053E758    call        0067DAEC
 0053E75D    inc         dword ptr [ebp-20]
 0053E760    mov         word ptr [ebp-2C],8
 0053E766    xor         edx,edx
 0053E768    mov         dword ptr [ebp-40],edx
 0053E76B    mov         word ptr [ebp-2C],14
 0053E771    mov         ecx,dword ptr [ebp-40]
 0053E774    mov         edx,dword ptr [ecx*4+6B25C0]
 0053E77B    lea         eax,[ebp-8]
 0053E77E    call        0067DAB4
 0053E783    inc         dword ptr [ebp-20]
 0053E786    mov         edx,dword ptr [eax]
 0053E788    mov         eax,dword ptr [ebp-4]
 0053E78B    call        SameText
 0053E790    push        eax
 0053E791    dec         dword ptr [ebp-20]
 0053E794    lea         eax,[ebp-8]
 0053E797    mov         edx,2
 0053E79C    call        0067DCA0
 0053E7A1    pop         ecx
 0053E7A2    test        cl,cl
>0053E7A4    je          0053E7C9
 0053E7A6    mov         al,1
 0053E7A8    push        eax
 0053E7A9    dec         dword ptr [ebp-20]
 0053E7AC    lea         eax,[ebp-4]
 0053E7AF    mov         edx,2
 0053E7B4    call        0067DCA0
 0053E7B9    pop         eax
 0053E7BA    mov         edx,dword ptr [ebp-3C]
 0053E7BD    mov         dword ptr fs:[0],edx
>0053E7C4    jmp         0053E903
 0053E7C9    inc         dword ptr [ebp-40]
 0053E7CC    mov         ecx,dword ptr [ebp-40]
 0053E7CF    cmp         ecx,8
>0053E7D2    jl          0053E76B
 0053E7D4    mov         word ptr [ebp-2C],20
 0053E7DA    lea         eax,[ebp-0C]
 0053E7DD    call        00401EA8
 0053E7E2    push        eax
 0053E7E3    inc         dword ptr [ebp-20]
 0053E7E6    lea         eax,[ebp-4]
 0053E7E9    mov         ecx,5
 0053E7EE    mov         edx,1
 0053E7F3    call        0067E0BC
 0053E7F8    lea         eax,[ebp-0C]
 0053E7FB    push        dword ptr [eax]
 0053E7FD    mov         edx,6DCBB9
 0053E802    lea         eax,[ebp-10]
 0053E805    call        0067DAB4
 0053E80A    inc         dword ptr [ebp-20]
 0053E80D    mov         edx,dword ptr [eax]
 0053E80F    pop         eax
 0053E810    call        SameText
 0053E815    push        eax
 0053E816    dec         dword ptr [ebp-20]
 0053E819    lea         eax,[ebp-10]
 0053E81C    mov         edx,2
 0053E821    call        0067DCA0
 0053E826    dec         dword ptr [ebp-20]
 0053E829    lea         eax,[ebp-0C]
 0053E82C    mov         edx,2
 0053E831    call        0067DCA0
 0053E836    pop         ecx
 0053E837    test        cl,cl
>0053E839    je          0053E85E
 0053E83B    mov         al,1
 0053E83D    push        eax
 0053E83E    dec         dword ptr [ebp-20]
 0053E841    lea         eax,[ebp-4]
 0053E844    mov         edx,2
 0053E849    call        0067DCA0
 0053E84E    pop         eax
 0053E84F    mov         edx,dword ptr [ebp-3C]
 0053E852    mov         dword ptr fs:[0],edx
>0053E859    jmp         0053E903
 0053E85E    mov         word ptr [ebp-2C],2C
 0053E864    lea         eax,[ebp-14]
 0053E867    call        00401EA8
 0053E86C    push        eax
 0053E86D    inc         dword ptr [ebp-20]
 0053E870    lea         eax,[ebp-4]
 0053E873    mov         ecx,5
 0053E878    mov         edx,1
 0053E87D    call        0067E0BC
 0053E882    lea         eax,[ebp-14]
 0053E885    push        dword ptr [eax]
 0053E887    mov         edx,6DCBBF
 0053E88C    lea         eax,[ebp-18]
 0053E88F    call        0067DAB4
 0053E894    inc         dword ptr [ebp-20]
 0053E897    mov         edx,dword ptr [eax]
 0053E899    pop         eax
 0053E89A    call        SameText
 0053E89F    push        eax
 0053E8A0    dec         dword ptr [ebp-20]
 0053E8A3    lea         eax,[ebp-18]
 0053E8A6    mov         edx,2
 0053E8AB    call        0067DCA0
 0053E8B0    dec         dword ptr [ebp-20]
 0053E8B3    lea         eax,[ebp-14]
 0053E8B6    mov         edx,2
 0053E8BB    call        0067DCA0
 0053E8C0    pop         ecx
 0053E8C1    test        cl,cl
>0053E8C3    je          0053E8E5
 0053E8C5    mov         al,1
 0053E8C7    push        eax
 0053E8C8    dec         dword ptr [ebp-20]
 0053E8CB    lea         eax,[ebp-4]
 0053E8CE    mov         edx,2
 0053E8D3    call        0067DCA0
 0053E8D8    pop         eax
 0053E8D9    mov         edx,dword ptr [ebp-3C]
 0053E8DC    mov         dword ptr fs:[0],edx
>0053E8E3    jmp         0053E903
 0053E8E5    xor         eax,eax
 0053E8E7    push        eax
 0053E8E8    dec         dword ptr [ebp-20]
 0053E8EB    lea         eax,[ebp-4]
 0053E8EE    mov         edx,2
 0053E8F3    call        0067DCA0
 0053E8F8    pop         eax
 0053E8F9    mov         edx,dword ptr [ebp-3C]
 0053E8FC    mov         dword ptr fs:[0],edx
 0053E903    mov         esp,ebp
 0053E905    pop         ebp
 0053E906    ret
end;*}

//0053E908
{*procedure sub_0053E908(?:?);
begin
 0053E908    push        ebp
 0053E909    mov         ebp,esp
 0053E90B    add         esp,0FFFFFFC0
 0053E90E    mov         dword ptr [ebp-4],eax
 0053E911    mov         eax,6E0410
 0053E916    call        0066FECC
 0053E91B    mov         dword ptr [ebp-24],1
 0053E922    lea         edx,[ebp-4]
 0053E925    lea         eax,[ebp-4]
 0053E928    call        0067DAEC
 0053E92D    inc         dword ptr [ebp-24]
 0053E930    mov         word ptr [ebp-30],8
 0053E936    mov         word ptr [ebp-30],14
 0053E93C    mov         edx,6DCBC5
 0053E941    lea         eax,[ebp-8]
 0053E944    call        0067DAB4
 0053E949    inc         dword ptr [ebp-24]
 0053E94C    mov         edx,dword ptr [eax]
 0053E94E    mov         eax,dword ptr [ebp-4]
 0053E951    call        SameText
 0053E956    push        eax
 0053E957    dec         dword ptr [ebp-24]
 0053E95A    lea         eax,[ebp-8]
 0053E95D    mov         edx,2
 0053E962    call        0067DCA0
 0053E967    pop         ecx
 0053E968    test        cl,cl
>0053E96A    je          0053E992
 0053E96C    mov         eax,1
 0053E971    push        eax
 0053E972    dec         dword ptr [ebp-24]
 0053E975    lea         eax,[ebp-4]
 0053E978    mov         edx,2
 0053E97D    call        0067DCA0
 0053E982    pop         eax
 0053E983    mov         edx,dword ptr [ebp-40]
 0053E986    mov         dword ptr fs:[0],edx
>0053E98D    jmp         0053EB77
 0053E992    mov         word ptr [ebp-30],20
 0053E998    mov         edx,6DCBCC
 0053E99D    lea         eax,[ebp-0C]
 0053E9A0    call        0067DAB4
 0053E9A5    inc         dword ptr [ebp-24]
 0053E9A8    mov         edx,dword ptr [eax]
 0053E9AA    mov         eax,dword ptr [ebp-4]
 0053E9AD    call        SameText
 0053E9B2    push        eax
 0053E9B3    dec         dword ptr [ebp-24]
 0053E9B6    lea         eax,[ebp-0C]
 0053E9B9    mov         edx,2
 0053E9BE    call        0067DCA0
 0053E9C3    pop         ecx
 0053E9C4    test        cl,cl
>0053E9C6    je          0053E9EE
 0053E9C8    mov         eax,2
 0053E9CD    push        eax
 0053E9CE    dec         dword ptr [ebp-24]
 0053E9D1    lea         eax,[ebp-4]
 0053E9D4    mov         edx,2
 0053E9D9    call        0067DCA0
 0053E9DE    pop         eax
 0053E9DF    mov         edx,dword ptr [ebp-40]
 0053E9E2    mov         dword ptr fs:[0],edx
>0053E9E9    jmp         0053EB77
 0053E9EE    mov         word ptr [ebp-30],2C
 0053E9F4    mov         edx,6DCBD3
 0053E9F9    lea         eax,[ebp-10]
 0053E9FC    call        0067DAB4
 0053EA01    inc         dword ptr [ebp-24]
 0053EA04    mov         edx,dword ptr [eax]
 0053EA06    mov         eax,dword ptr [ebp-4]
 0053EA09    call        SameText
 0053EA0E    push        eax
 0053EA0F    dec         dword ptr [ebp-24]
 0053EA12    lea         eax,[ebp-10]
 0053EA15    mov         edx,2
 0053EA1A    call        0067DCA0
 0053EA1F    pop         ecx
 0053EA20    test        cl,cl
>0053EA22    je          0053EA4A
 0053EA24    mov         eax,3
 0053EA29    push        eax
 0053EA2A    dec         dword ptr [ebp-24]
 0053EA2D    lea         eax,[ebp-4]
 0053EA30    mov         edx,2
 0053EA35    call        0067DCA0
 0053EA3A    pop         eax
 0053EA3B    mov         edx,dword ptr [ebp-40]
 0053EA3E    mov         dword ptr fs:[0],edx
>0053EA45    jmp         0053EB77
 0053EA4A    mov         word ptr [ebp-30],38
 0053EA50    mov         edx,6DCBDC
 0053EA55    lea         eax,[ebp-14]
 0053EA58    call        0067DAB4
 0053EA5D    inc         dword ptr [ebp-24]
 0053EA60    mov         edx,dword ptr [eax]
 0053EA62    mov         eax,dword ptr [ebp-4]
 0053EA65    call        SameText
 0053EA6A    push        eax
 0053EA6B    dec         dword ptr [ebp-24]
 0053EA6E    lea         eax,[ebp-14]
 0053EA71    mov         edx,2
 0053EA76    call        0067DCA0
 0053EA7B    pop         ecx
 0053EA7C    test        cl,cl
>0053EA7E    je          0053EAA6
 0053EA80    mov         eax,4
 0053EA85    push        eax
 0053EA86    dec         dword ptr [ebp-24]
 0053EA89    lea         eax,[ebp-4]
 0053EA8C    mov         edx,2
 0053EA91    call        0067DCA0
 0053EA96    pop         eax
 0053EA97    mov         edx,dword ptr [ebp-40]
 0053EA9A    mov         dword ptr fs:[0],edx
>0053EAA1    jmp         0053EB77
 0053EAA6    mov         word ptr [ebp-30],44
 0053EAAC    mov         edx,6DCBE1
 0053EAB1    lea         eax,[ebp-18]
 0053EAB4    call        0067DAB4
 0053EAB9    inc         dword ptr [ebp-24]
 0053EABC    mov         edx,dword ptr [eax]
 0053EABE    mov         eax,dword ptr [ebp-4]
 0053EAC1    call        SameText
 0053EAC6    push        eax
 0053EAC7    dec         dword ptr [ebp-24]
 0053EACA    lea         eax,[ebp-18]
 0053EACD    mov         edx,2
 0053EAD2    call        0067DCA0
 0053EAD7    pop         ecx
 0053EAD8    test        cl,cl
>0053EADA    je          0053EAFF
 0053EADC    mov         eax,5
 0053EAE1    push        eax
 0053EAE2    dec         dword ptr [ebp-24]
 0053EAE5    lea         eax,[ebp-4]
 0053EAE8    mov         edx,2
 0053EAED    call        0067DCA0
 0053EAF2    pop         eax
 0053EAF3    mov         edx,dword ptr [ebp-40]
 0053EAF6    mov         dword ptr fs:[0],edx
>0053EAFD    jmp         0053EB77
 0053EAFF    mov         word ptr [ebp-30],50
 0053EB05    mov         edx,6DCBE6
 0053EB0A    lea         eax,[ebp-1C]
 0053EB0D    call        0067DAB4
 0053EB12    inc         dword ptr [ebp-24]
 0053EB15    mov         edx,dword ptr [eax]
 0053EB17    mov         eax,dword ptr [ebp-4]
 0053EB1A    call        SameText
 0053EB1F    push        eax
 0053EB20    dec         dword ptr [ebp-24]
 0053EB23    lea         eax,[ebp-1C]
 0053EB26    mov         edx,2
 0053EB2B    call        0067DCA0
 0053EB30    pop         ecx
 0053EB31    test        cl,cl
>0053EB33    je          0053EB58
 0053EB35    mov         eax,6
 0053EB3A    push        eax
 0053EB3B    dec         dword ptr [ebp-24]
 0053EB3E    lea         eax,[ebp-4]
 0053EB41    mov         edx,2
 0053EB46    call        0067DCA0
 0053EB4B    pop         eax
 0053EB4C    mov         edx,dword ptr [ebp-40]
 0053EB4F    mov         dword ptr fs:[0],edx
>0053EB56    jmp         0053EB77
 0053EB58    or          eax,0FFFFFFFF
 0053EB5B    push        eax
 0053EB5C    dec         dword ptr [ebp-24]
 0053EB5F    lea         eax,[ebp-4]
 0053EB62    mov         edx,2
 0053EB67    call        0067DCA0
 0053EB6C    pop         eax
 0053EB6D    mov         edx,dword ptr [ebp-40]
 0053EB70    mov         dword ptr fs:[0],edx
 0053EB77    mov         esp,ebp
 0053EB79    pop         ebp
 0053EB7A    ret
end;*}

//0053EB7C
{*procedure sub_0053EB7C(?:?; ?:?; ?:AnsiString; ?:?);
begin
 0053EB7C    push        ebp
 0053EB7D    mov         ebp,esp
 0053EB7F    add         esp,0FFFFFFC0
 0053EB82    mov         dword ptr [ebp-0C],ecx
 0053EB85    mov         dword ptr [ebp-8],edx
 0053EB88    mov         dword ptr [ebp-4],eax
 0053EB8B    mov         eax,6E04FC
 0053EB90    call        0066FECC
 0053EB95    mov         dword ptr [ebp-24],3
 0053EB9C    lea         edx,[ebp-4]
 0053EB9F    lea         eax,[ebp-4]
 0053EBA2    call        0067DAEC
 0053EBA7    inc         dword ptr [ebp-24]
 0053EBAA    mov         word ptr [ebp-30],8
 0053EBB0    lea         edx,[ebp-8]
 0053EBB3    lea         eax,[ebp-8]
 0053EBB6    call        0067DAEC
 0053EBBB    inc         dword ptr [ebp-24]
 0053EBBE    lea         edx,[ebp-0C]
 0053EBC1    lea         eax,[ebp-0C]
 0053EBC4    call        0067DAEC
 0053EBC9    inc         dword ptr [ebp-24]
 0053EBCC    mov         word ptr [ebp-30],14
 0053EBD2    mov         edx,6DCBEF
 0053EBD7    lea         eax,[ebp-10]
 0053EBDA    call        0067DAB4
 0053EBDF    inc         dword ptr [ebp-24]
 0053EBE2    mov         word ptr [ebp-30],8
 0053EBE8    mov         edx,dword ptr ds:[6E9C9C];^_FInputDlg_11011981
 0053EBEE    mov         eax,dword ptr [edx]
 0053EBF0    mov         edx,dword ptr [ebp-4]
 0053EBF3    call        TTabPage.SetCaption
 0053EBF8    mov         ecx,dword ptr ds:[6E9C9C];^_FInputDlg_11011981
 0053EBFE    mov         eax,dword ptr [ecx]
 0053EC00    mov         edx,dword ptr [eax+2F8]
 0053EC06    mov         eax,dword ptr [edx+220]
 0053EC0C    mov         edx,dword ptr [ebp-8]
 0053EC0F    call        TTabPage.SetCaption
 0053EC14    mov         ecx,dword ptr ds:[6E9C9C];^_FInputDlg_11011981
 0053EC1A    mov         eax,dword ptr [ecx]
 0053EC1C    mov         eax,dword ptr [eax+2F8]
 0053EC22    mov         edx,dword ptr [ebp-0C]
 0053EC25    call        TTabPage.SetCaption
>0053EC2A    jmp         0053ECB0
 0053EC2F    mov         ecx,dword ptr ds:[6E9C9C];^_FInputDlg_11011981
 0053EC35    mov         eax,dword ptr [ecx]
 0053EC37    mov         edx,dword ptr [eax]
 0053EC39    call        dword ptr [edx+0E8]
 0053EC3F    cmp         eax,2
>0053EC42    je          0053ECF3
 0053EC48    mov         word ptr [ebp-30],2C
 0053EC4E    lea         eax,[ebp-18]
 0053EC51    call        00401EA8
 0053EC56    mov         edx,eax
 0053EC58    inc         dword ptr [ebp-24]
 0053EC5B    mov         ecx,dword ptr ds:[6E9C9C];^_FInputDlg_11011981
 0053EC61    mov         eax,dword ptr [ecx]
 0053EC63    mov         eax,dword ptr [eax+2F8]
 0053EC69    call        TTabPage.GetCaption
 0053EC6E    lea         edx,[ebp-18]
 0053EC71    push        edx
 0053EC72    lea         eax,[ebp-1C]
 0053EC75    call        00401EA8
 0053EC7A    mov         edx,eax
 0053EC7C    inc         dword ptr [ebp-24]
 0053EC7F    pop         eax
 0053EC80    call        0067E030
 0053EC85    lea         edx,[ebp-1C]
 0053EC88    lea         eax,[ebp-10]
 0053EC8B    call        0067DCD0
 0053EC90    dec         dword ptr [ebp-24]
 0053EC93    lea         eax,[ebp-1C]
 0053EC96    mov         edx,2
 0053EC9B    call        0067DCA0
 0053ECA0    dec         dword ptr [ebp-24]
 0053ECA3    lea         eax,[ebp-18]
 0053ECA6    mov         edx,2
 0053ECAB    call        0067DCA0
 0053ECB0    mov         word ptr [ebp-30],20
 0053ECB6    mov         edx,6DCBF0
 0053ECBB    lea         eax,[ebp-14]
 0053ECBE    call        0067DAB4
 0053ECC3    inc         dword ptr [ebp-24]
 0053ECC6    lea         edx,[ebp-14]
 0053ECC9    lea         eax,[ebp-10]
 0053ECCC    call        0067DD84
 0053ECD1    test        al,al
 0053ECD3    setne       cl
 0053ECD6    and         ecx,1
 0053ECD9    push        ecx
 0053ECDA    dec         dword ptr [ebp-24]
 0053ECDD    lea         eax,[ebp-14]
 0053ECE0    mov         edx,2
 0053ECE5    call        0067DCA0
 0053ECEA    pop         ecx
 0053ECEB    test        ecx,ecx
>0053ECED    jne         0053EC2F
 0053ECF3    mov         word ptr [ebp-30],38
 0053ECF9    lea         edx,[ebp-10]
 0053ECFC    mov         eax,dword ptr [ebp+8]
 0053ECFF    call        0067DCD0
 0053ED04    mov         eax,dword ptr [ebp+8]
 0053ED07    mov         word ptr [ebp-30],44
 0053ED0D    push        eax
 0053ED0E    dec         dword ptr [ebp-24]
 0053ED11    lea         eax,[ebp-10]
 0053ED14    mov         edx,2
 0053ED19    call        0067DCA0
 0053ED1E    dec         dword ptr [ebp-24]
 0053ED21    lea         eax,[ebp-0C]
 0053ED24    mov         edx,2
 0053ED29    call        0067DCA0
 0053ED2E    dec         dword ptr [ebp-24]
 0053ED31    lea         eax,[ebp-8]
 0053ED34    mov         edx,2
 0053ED39    call        0067DCA0
 0053ED3E    dec         dword ptr [ebp-24]
 0053ED41    lea         eax,[ebp-4]
 0053ED44    mov         edx,2
 0053ED49    call        0067DCA0
 0053ED4E    pop         eax
 0053ED4F    mov         word ptr [ebp-30],38
 0053ED55    inc         dword ptr [ebp-24]
 0053ED58    mov         edx,dword ptr [ebp-40]
 0053ED5B    mov         dword ptr fs:[0],edx
 0053ED62    mov         esp,ebp
 0053ED64    pop         ebp
 0053ED65    ret         4
end;*}

//0053ED68
{*procedure sub_0053ED68(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0053ED68    push        ebp
 0053ED69    mov         ebp,esp
 0053ED6B    add         esp,0FFFFFFBC
 0053ED6E    mov         dword ptr [ebp-4],ecx
 0053ED71    mov         dword ptr [ebp-44],edx
 0053ED74    mov         dword ptr [ebp-40],eax
 0053ED77    mov         eax,6E05E0
 0053ED7C    call        0066FECC
 0053ED81    mov         dword ptr [ebp-20],2
 0053ED88    lea         edx,[ebp-4]
 0053ED8B    lea         eax,[ebp-4]
 0053ED8E    call        0067DAEC
 0053ED93    inc         dword ptr [ebp-20]
 0053ED96    mov         word ptr [ebp-2C],8
 0053ED9C    lea         edx,[ebp+0C]
 0053ED9F    lea         eax,[ebp+0C]
 0053EDA2    call        0067DAEC
 0053EDA7    inc         dword ptr [ebp-20]
 0053EDAA    mov         word ptr [ebp-2C],14
 0053EDB0    mov         edx,6DCBF1
 0053EDB5    lea         eax,[ebp-8]
 0053EDB8    call        0067DAB4
 0053EDBD    inc         dword ptr [ebp-20]
 0053EDC0    mov         word ptr [ebp-2C],8
 0053EDC6    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 0053EDCC    mov         ecx,dword ptr [edx]
 0053EDCE    mov         eax,dword ptr [ecx+3C4]
 0053EDD4    mov         edx,dword ptr [eax]
 0053EDD6    call        dword ptr [edx+0C8]
 0053EDDC    push        eax
 0053EDDD    push        0FF
 0053EDDF    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 0053EDE5    mov         eax,dword ptr [ecx]
 0053EDE7    mov         ecx,dword ptr [ebp-44]
 0053EDEA    mov         edx,dword ptr [ebp-40]
 0053EDED    call        00414454
 0053EDF2    mov         eax,[006E9C9C];^_FInputDlg_11011981
 0053EDF7    mov         eax,dword ptr [eax]
 0053EDF9    mov         edx,dword ptr [ebp-4]
 0053EDFC    call        TTabPage.SetCaption
 0053EE01    mov         ecx,dword ptr ds:[6E9C9C];^_FInputDlg_11011981
 0053EE07    mov         eax,dword ptr [ecx]
 0053EE09    mov         edx,dword ptr [eax+2F8]
 0053EE0F    mov         eax,dword ptr [edx+220]
 0053EE15    mov         edx,dword ptr [ebp+0C]
 0053EE18    call        TTabPage.SetCaption
 0053EE1D    mov         word ptr [ebp-2C],20
 0053EE23    mov         edx,6DCBF2
 0053EE28    lea         eax,[ebp-0C]
 0053EE2B    call        0067DAB4
 0053EE30    inc         dword ptr [ebp-20]
 0053EE33    mov         edx,dword ptr [eax]
 0053EE35    mov         eax,[006E9C9C];^_FInputDlg_11011981
 0053EE3A    mov         ecx,dword ptr [eax]
 0053EE3C    mov         eax,dword ptr [ecx+2F8]
 0053EE42    call        TTabPage.SetCaption
 0053EE47    dec         dword ptr [ebp-20]
 0053EE4A    lea         eax,[ebp-0C]
 0053EE4D    mov         edx,2
 0053EE52    call        0067DCA0
>0053EE57    jmp         0053EEDD
 0053EE5C    mov         ecx,dword ptr ds:[6E9C9C];^_FInputDlg_11011981
 0053EE62    mov         eax,dword ptr [ecx]
 0053EE64    mov         edx,dword ptr [eax]
 0053EE66    call        dword ptr [edx+0E8]
 0053EE6C    cmp         eax,2
>0053EE6F    je          0053EF20
 0053EE75    mov         word ptr [ebp-2C],38
 0053EE7B    lea         eax,[ebp-14]
 0053EE7E    call        00401EA8
 0053EE83    mov         edx,eax
 0053EE85    inc         dword ptr [ebp-20]
 0053EE88    mov         ecx,dword ptr ds:[6E9C9C];^_FInputDlg_11011981
 0053EE8E    mov         eax,dword ptr [ecx]
 0053EE90    mov         eax,dword ptr [eax+2F8]
 0053EE96    call        TTabPage.GetCaption
 0053EE9B    lea         edx,[ebp-14]
 0053EE9E    push        edx
 0053EE9F    lea         eax,[ebp-18]
 0053EEA2    call        00401EA8
 0053EEA7    mov         edx,eax
 0053EEA9    inc         dword ptr [ebp-20]
 0053EEAC    pop         eax
 0053EEAD    call        0067E030
 0053EEB2    lea         edx,[ebp-18]
 0053EEB5    lea         eax,[ebp-8]
 0053EEB8    call        0067DCD0
 0053EEBD    dec         dword ptr [ebp-20]
 0053EEC0    lea         eax,[ebp-18]
 0053EEC3    mov         edx,2
 0053EEC8    call        0067DCA0
 0053EECD    dec         dword ptr [ebp-20]
 0053EED0    lea         eax,[ebp-14]
 0053EED3    mov         edx,2
 0053EED8    call        0067DCA0
 0053EEDD    mov         word ptr [ebp-2C],2C
 0053EEE3    mov         edx,6DCBF3
 0053EEE8    lea         eax,[ebp-10]
 0053EEEB    call        0067DAB4
 0053EEF0    inc         dword ptr [ebp-20]
 0053EEF3    lea         edx,[ebp-10]
 0053EEF6    lea         eax,[ebp-8]
 0053EEF9    call        0067DD84
 0053EEFE    test        al,al
 0053EF00    setne       cl
 0053EF03    and         ecx,1
 0053EF06    push        ecx
 0053EF07    dec         dword ptr [ebp-20]
 0053EF0A    lea         eax,[ebp-10]
 0053EF0D    mov         edx,2
 0053EF12    call        0067DCA0
 0053EF17    pop         ecx
 0053EF18    test        ecx,ecx
>0053EF1A    jne         0053EE5C
 0053EF20    mov         word ptr [ebp-2C],44
 0053EF26    lea         edx,[ebp-8]
 0053EF29    mov         eax,dword ptr [ebp+8]
 0053EF2C    call        0067DCD0
 0053EF31    mov         eax,dword ptr [ebp+8]
 0053EF34    mov         word ptr [ebp-2C],50
 0053EF3A    push        eax
 0053EF3B    dec         dword ptr [ebp-20]
 0053EF3E    lea         eax,[ebp-8]
 0053EF41    mov         edx,2
 0053EF46    call        0067DCA0
 0053EF4B    dec         dword ptr [ebp-20]
 0053EF4E    lea         eax,[ebp+0C]
 0053EF51    mov         edx,2
 0053EF56    call        0067DCA0
 0053EF5B    dec         dword ptr [ebp-20]
 0053EF5E    lea         eax,[ebp-4]
 0053EF61    mov         edx,2
 0053EF66    call        0067DCA0
 0053EF6B    pop         eax
 0053EF6C    mov         word ptr [ebp-2C],44
 0053EF72    inc         dword ptr [ebp-20]
 0053EF75    mov         edx,dword ptr [ebp-3C]
 0053EF78    mov         dword ptr fs:[0],edx
 0053EF7F    mov         esp,ebp
 0053EF81    pop         ebp
 0053EF82    ret         8
end;*}

//0053EF88
{*function sub_0053EF88(?:?; ?:?):?;
begin
 0053EF88    push        ebp
 0053EF89    mov         ebp,esp
 0053EF8B    add         esp,0FFFFFFE8
 0053EF8E    mov         dword ptr [ebp-8],edx
 0053EF91    mov         dword ptr [ebp-4],eax
 0053EF94    mov         eax,dword ptr [ebp-4]
 0053EF97    test        eax,eax
>0053EF99    je          0053EFA2
 0053EF9B    mov         edx,dword ptr [ebp-8]
 0053EF9E    test        edx,edx
>0053EFA0    jne         0053EFA9
 0053EFA2    xor         eax,eax
>0053EFA4    jmp         0053F064
 0053EFA9    mov         edx,dword ptr [ebp-8]
 0053EFAC    mov         ecx,dword ptr [edx+12]
 0053EFAF    mov         dword ptr [ebp-0C],ecx
 0053EFB2    mov         eax,dword ptr [ebp-0C]
 0053EFB5    cmp         eax,2
>0053EFB8    jae         0053EFC1
 0053EFBA    xor         eax,eax
>0053EFBC    jmp         0053F064
 0053EFC1    mov         edx,dword ptr [ebp-8]
 0053EFC4    mov         ecx,dword ptr [edx+1A]
 0053EFC7    mov         dword ptr [ebp-10],ecx
 0053EFCA    mov         eax,dword ptr [ebp-10]
 0053EFCD    mov         edx,dword ptr [ebp-0C]
 0053EFD0    add         eax,edx
 0053EFD2    mov         dword ptr [ebp-14],eax
 0053EFD5    mov         ecx,dword ptr [ebp-0C]
 0053EFD8    cmp         ecx,5
>0053EFDB    jne         0053EFF5
 0053EFDD    mov         eax,dword ptr [ebp-10]
 0053EFE0    mov         dl,byte ptr [eax]
 0053EFE2    cmp         dl,0E9
>0053EFE5    jne         0053EFF5
 0053EFE7    mov         ecx,dword ptr [ebp-14]
 0053EFEA    mov         al,byte ptr [ecx+1]
 0053EFED    cmp         al,0FF
>0053EFEF    jne         0053EFF5
 0053EFF1    xor         eax,eax
>0053EFF3    jmp         0053F064
 0053EFF5    mov         edx,dword ptr [ebp-0C]
 0053EFF8    cmp         edx,6
>0053EFFB    jne         0053F020
 0053EFFD    mov         ecx,dword ptr [ebp-10]
 0053F000    mov         al,byte ptr [ecx]
 0053F002    cmp         al,0E8
>0053F004    jne         0053F020
 0053F006    mov         edx,dword ptr [ebp-14]
 0053F009    mov         cl,byte ptr [edx+1]
 0053F00C    cmp         cl,0FF
>0053F00F    jne         0053F020
 0053F011    mov         eax,dword ptr [ebp-10]
 0053F014    mov         dl,byte ptr [eax+5]
 0053F017    cmp         dl,0C3
>0053F01A    jne         0053F020
 0053F01C    xor         eax,eax
>0053F01E    jmp         0053F064
 0053F020    xor         edx,edx
 0053F022    mov         dword ptr [ebp-18],edx
>0053F025    jmp         0053F058
 0053F027    mov         ecx,dword ptr [ebp-14]
 0053F02A    mov         eax,dword ptr [ebp-18]
 0053F02D    mov         dl,byte ptr [ecx+eax]
 0053F030    cmp         dl,0FF
>0053F033    jne         0053F03B
 0053F035    add         dword ptr [ebp-18],4
>0053F039    jmp         0053F058
 0053F03B    mov         ecx,dword ptr [ebp-4]
 0053F03E    mov         eax,dword ptr [ebp-18]
 0053F041    mov         dl,byte ptr [ecx+eax]
 0053F044    mov         ecx,dword ptr [ebp-10]
 0053F047    mov         eax,dword ptr [ebp-18]
 0053F04A    mov         cl,byte ptr [ecx+eax]
 0053F04D    cmp         dl,cl
>0053F04F    je          0053F055
 0053F051    xor         eax,eax
>0053F053    jmp         0053F064
 0053F055    inc         dword ptr [ebp-18]
 0053F058    mov         edx,dword ptr [ebp-18]
 0053F05B    mov         ecx,dword ptr [ebp-0C]
 0053F05E    cmp         edx,ecx
>0053F060    jb          0053F027
 0053F062    mov         al,1
 0053F064    mov         esp,ebp
 0053F066    pop         ebp
 0053F067    ret
end;*}

//0053F068
{*procedure sub_0053F068(?:?);
begin
 0053F068    push        ebp
 0053F069    mov         ebp,esp
 0053F06B    push        ecx
 0053F06C    mov         dword ptr [ebp-4],eax
 0053F06F    mov         eax,dword ptr [ebp-4]
 0053F072    mov         eax,dword ptr [eax+10]
 0053F075    call        TPen.GetColor
 0053F07A    mov         [006ECC1C],eax;gvar_006ECC1C:TColor
 0053F07F    mov         edx,dword ptr [ebp-4]
 0053F082    mov         eax,dword ptr [edx+14]
 0053F085    call        TBrush.GetColor
 0053F08A    mov         [006ECC20],eax;gvar_006ECC20:TColor
 0053F08F    mov         edx,dword ptr [ebp-4]
 0053F092    mov         ecx,dword ptr [edx+0C]
 0053F095    mov         eax,dword ptr [ecx+18]
 0053F098    mov         [006ECC24],eax;gvar_006ECC24
 0053F09D    mov         edx,dword ptr [ebp-4]
 0053F0A0    mov         eax,dword ptr [edx+14]
 0053F0A3    call        TBrush.GetStyle
 0053F0A8    mov         [006ECC28],al;gvar_006ECC28:TBrushStyle
 0053F0AD    pop         ecx
 0053F0AE    pop         ebp
 0053F0AF    ret
end;*}

//0053F0B0
{*procedure sub_0053F0B0(?:?);
begin
 0053F0B0    push        ebp
 0053F0B1    mov         ebp,esp
 0053F0B3    push        ecx
 0053F0B4    mov         dword ptr [ebp-4],eax
 0053F0B7    mov         edx,dword ptr ds:[6ECC1C];0x0 gvar_006ECC1C:TColor
 0053F0BD    mov         eax,dword ptr [ebp-4]
 0053F0C0    mov         eax,dword ptr [eax+10]
 0053F0C3    call        TPen.SetColor
 0053F0C8    mov         edx,dword ptr ds:[6ECC20];0x0 gvar_006ECC20:TColor
 0053F0CE    mov         ecx,dword ptr [ebp-4]
 0053F0D1    mov         eax,dword ptr [ecx+14]
 0053F0D4    call        TBrush.SetColor
 0053F0D9    mov         edx,dword ptr ds:[6ECC24];0x0 gvar_006ECC24
 0053F0DF    mov         ecx,dword ptr [ebp-4]
 0053F0E2    mov         eax,dword ptr [ecx+0C]
 0053F0E5    call        TFont.SetColor
 0053F0EA    mov         dl,byte ptr ds:[6ECC28];0x0 gvar_006ECC28:TBrushStyle
 0053F0F0    mov         ecx,dword ptr [ebp-4]
 0053F0F3    mov         eax,dword ptr [ecx+14]
 0053F0F6    call        TBrush.SetStyle
 0053F0FB    pop         ecx
 0053F0FC    pop         ebp
 0053F0FD    ret
end;*}

//0053F100
{*procedure sub_0053F100(?:AnsiString; ?:?; ?:?; ?:?);
begin
 0053F100    push        ebp
 0053F101    mov         ebp,esp
 0053F103    add         esp,0FFFFFFC0
 0053F106    mov         dword ptr [ebp-30],ecx
 0053F109    mov         dword ptr [ebp-2C],edx
 0053F10C    mov         dword ptr [ebp-4],eax
 0053F10F    mov         eax,6E064C
 0053F114    call        0066FECC
 0053F119    mov         dword ptr [ebp-0C],1
 0053F120    lea         edx,[ebp-4]
 0053F123    lea         eax,[ebp-4]
 0053F126    call        0067DAEC
 0053F12B    inc         dword ptr [ebp-0C]
 0053F12E    mov         word ptr [ebp-18],8
 0053F134    mov         eax,dword ptr [ebp-2C]
 0053F137    call        0053F068
 0053F13C    mov         edx,dword ptr [ebp-30]
 0053F13F    mov         ecx,dword ptr [edx+8]
 0053F142    mov         eax,dword ptr [ebp-30]
 0053F145    mov         dword ptr [eax],ecx
 0053F147    mov         edx,dword ptr [ebp-4]
 0053F14A    mov         eax,dword ptr [ebp-2C]
 0053F14D    call        005C1754
 0053F152    mov         edx,dword ptr [ebp-30]
 0053F155    add         dword ptr [edx+8],eax
 0053F158    mov         ecx,dword ptr [ebp-30]
 0053F15B    mov         eax,dword ptr [ecx+0C]
 0053F15E    dec         eax
 0053F15F    push        eax
 0053F160    lea         edx,[ebp-40]
 0053F163    push        edx
 0053F164    mov         ecx,dword ptr [ebp-30]
 0053F167    mov         eax,dword ptr [ecx]
 0053F169    dec         eax
 0053F16A    mov         edx,dword ptr [ebp-30]
 0053F16D    mov         ecx,dword ptr [edx+8]
 0053F170    mov         edx,dword ptr [ebp-30]
 0053F173    mov         edx,dword ptr [edx+4]
 0053F176    call        Rect
 0053F17B    mov         edx,dword ptr ds:[6941F0];0x0 gvar_006941F0
 0053F181    mov         eax,dword ptr [ebp-4]
 0053F184    call        SameText
 0053F189    test        al,al
>0053F18B    je          0053F1DD
 0053F18D    mov         edx,80DDFF
 0053F192    mov         eax,dword ptr [ebp-2C]
 0053F195    mov         eax,dword ptr [eax+14]
 0053F198    call        TBrush.SetColor
 0053F19D    xor         edx,edx
 0053F19F    mov         ecx,dword ptr [ebp-2C]
 0053F1A2    mov         eax,dword ptr [ecx+14]
 0053F1A5    call        TBrush.SetStyle
 0053F1AA    lea         edx,[ebp-40]
 0053F1AD    mov         eax,dword ptr [ebp-2C]
 0053F1B0    call        TCanvas.FillRect
 0053F1B5    mov         dl,1
 0053F1B7    mov         ecx,dword ptr [ebp-2C]
 0053F1BA    mov         eax,dword ptr [ecx+14]
 0053F1BD    call        TBrush.SetStyle
 0053F1C2    mov         edx,226DA8
 0053F1C7    mov         ecx,dword ptr [ebp-2C]
 0053F1CA    mov         eax,dword ptr [ecx+10]
 0053F1CD    call        TPen.SetColor
 0053F1D2    lea         edx,[ebp-40]
 0053F1D5    mov         eax,dword ptr [ebp-2C]
 0053F1D8    call        005C147C
 0053F1DD    mov         edx,dword ptr [ebp+0C]
 0053F1E0    mov         ecx,dword ptr [ebp-2C]
 0053F1E3    mov         eax,dword ptr [ecx+0C]
 0053F1E6    call        TFont.SetColor
 0053F1EB    push        dword ptr [ebp-4]
 0053F1EE    mov         edx,dword ptr [ebp-30]
 0053F1F1    mov         ecx,dword ptr [edx+4]
 0053F1F4    mov         eax,dword ptr [ebp-30]
 0053F1F7    mov         edx,dword ptr [eax]
 0053F1F9    mov         eax,dword ptr [ebp-2C]
 0053F1FC    call        0067D9EC
 0053F201    mov         eax,dword ptr [ebp-2C]
 0053F204    call        0053F0B0
 0053F209    dec         dword ptr [ebp-0C]
 0053F20C    lea         eax,[ebp-4]
 0053F20F    mov         edx,2
 0053F214    call        0067DCA0
 0053F219    mov         ecx,dword ptr [ebp-28]
 0053F21C    mov         dword ptr fs:[0],ecx
 0053F223    mov         esp,ebp
 0053F225    pop         ebp
 0053F226    ret         8
end;*}

//0053F22C
{*function sub_0053F22C(?:?; ?:?):?;
begin
 0053F22C    push        ebp
 0053F22D    mov         ebp,esp
 0053F22F    add         esp,0FFFFFF30
 0053F235    mov         dword ptr [ebp-8],edx
 0053F238    mov         dword ptr [ebp-4],eax
 0053F23B    mov         eax,dword ptr [ebp-4]
 0053F23E    mov         dword ptr [ebp-18],eax
 0053F241    mov         dword ptr [ebp-14],1
 0053F248    push        0
 0053F24A    lea         ecx,[ebp-0D0]
 0053F250    mov         eax,6ECAB0
 0053F255    mov         edx,dword ptr [ebp-18]
 0053F258    call        00474954
 0053F25D    mov         dword ptr [ebp-10],eax
 0053F260    lea         edx,[ebp-0D0]
 0053F266    mov         eax,6ECAB0
 0053F26B    call        00474648
 0053F270    mov         byte ptr [ebp-9],al
 0053F273    mov         ecx,dword ptr [ebp-14]
 0053F276    dec         ecx
>0053F277    jne         0053F2A5
 0053F279    mov         al,byte ptr [ebp-9]
 0053F27C    cmp         al,0DE
>0053F27E    jne         0053F374
 0053F284    mov         dl,byte ptr [ebp-21]
 0053F287    mov         cl,byte ptr [ebp-20]
 0053F28A    cmp         dl,cl
>0053F28C    jne         0053F374
 0053F292    mov         eax,dword ptr [ebp-6B]
 0053F295    mov         edx,dword ptr [ebp-67]
 0053F298    cmp         eax,edx
>0053F29A    jne         0053F374
>0053F2A0    jmp         0053F354
 0053F2A5    mov         ecx,dword ptr [ebp-14]
 0053F2A8    cmp         ecx,2
>0053F2AB    jne         0053F2C9
 0053F2AD    mov         al,byte ptr [ebp-9]
 0053F2B0    cmp         al,97
>0053F2B2    jne         0053F374
 0053F2B8    mov         edx,dword ptr [ebp-6B]
 0053F2BB    cmp         edx,15
>0053F2BE    jne         0053F374
>0053F2C4    jmp         0053F354
 0053F2C9    mov         ecx,dword ptr [ebp-14]
 0053F2CC    cmp         ecx,3
>0053F2CF    jne         0053F2F0
 0053F2D1    mov         al,byte ptr [ebp-9]
 0053F2D4    cmp         al,97
>0053F2D6    jne         0053F374
 0053F2DC    mov         dl,byte ptr [ebp-21]
 0053F2DF    cmp         dl,1
>0053F2E2    jne         0053F374
 0053F2E8    mov         ecx,dword ptr [ebp-4F]
 0053F2EB    mov         dword ptr [ebp-1C],ecx
>0053F2EE    jmp         0053F354
 0053F2F0    mov         eax,dword ptr [ebp-14]
 0053F2F3    cmp         eax,4
>0053F2F6    jne         0053F318
 0053F2F8    mov         dl,byte ptr [ebp-9]
 0053F2FB    cmp         dl,97
>0053F2FE    jne         0053F374
 0053F300    mov         cl,byte ptr [ebp-21]
 0053F303    cmp         cl,3
>0053F306    jne         0053F374
 0053F308    mov         eax,dword ptr [ebp-26]
 0053F30B    cmp         eax,4
>0053F30E    jne         0053F374
 0053F310    mov         edx,dword ptr [ebp-5F]
 0053F313    inc         edx
>0053F314    je          0053F374
>0053F316    jmp         0053F354
 0053F318    mov         ecx,dword ptr [ebp-14]
 0053F31B    cmp         ecx,5
>0053F31E    jne         0053F354
 0053F320    mov         al,byte ptr [ebp-9]
 0053F323    cmp         al,0D1
>0053F325    jne         0053F374
 0053F327    mov         dl,byte ptr [ebp-21]
 0053F32A    cmp         dl,3
>0053F32D    jne         0053F374
 0053F32F    mov         ecx,dword ptr [ebp-26]
 0053F332    cmp         ecx,4
>0053F335    jne         0053F374
 0053F337    mov         eax,dword ptr [ebp-5F]
 0053F33A    inc         eax
>0053F33B    je          0053F374
 0053F33D    mov         edx,dword ptr [ebp-8]
 0053F340    mov         ecx,dword ptr [ebp-1C]
 0053F343    mov         dword ptr [edx],ecx
 0053F345    mov         eax,dword ptr [ebp-18]
 0053F348    mov         edx,dword ptr [ebp-10]
 0053F34B    add         eax,edx
 0053F34D    mov         ecx,dword ptr [ebp-4]
 0053F350    sub         eax,ecx
>0053F352    jmp         0053F376
 0053F354    mov         al,byte ptr [ebp-6C]
 0053F357    test        al,al
>0053F359    je          0053F35F
 0053F35B    xor         eax,eax
>0053F35D    jmp         0053F376
 0053F35F    mov         edx,dword ptr [ebp-10]
 0053F362    add         dword ptr [ebp-18],edx
 0053F365    inc         dword ptr [ebp-14]
 0053F368    mov         ecx,dword ptr [ebp-14]
 0053F36B    cmp         ecx,5
>0053F36E    jle         0053F248
 0053F374    xor         eax,eax
 0053F376    mov         esp,ebp
 0053F378    pop         ebp
 0053F379    ret
end;*}

//0053F37C
{*function sub_0053F37C(?:?; ?:?):?;
begin
 0053F37C    push        ebp
 0053F37D    mov         ebp,esp
 0053F37F    add         esp,0FFFFFF30
 0053F385    mov         dword ptr [ebp-8],edx
 0053F388    mov         dword ptr [ebp-4],eax
 0053F38B    mov         eax,dword ptr [ebp-4]
 0053F38E    mov         dword ptr [ebp-18],eax
 0053F391    mov         dword ptr [ebp-14],1
 0053F398    push        0
 0053F39A    lea         ecx,[ebp-0D0]
 0053F3A0    mov         eax,6ECAB0
 0053F3A5    mov         edx,dword ptr [ebp-18]
 0053F3A8    call        00474954
 0053F3AD    mov         dword ptr [ebp-10],eax
 0053F3B0    lea         edx,[ebp-0D0]
 0053F3B6    mov         eax,6ECAB0
 0053F3BB    call        00474648
 0053F3C0    mov         byte ptr [ebp-9],al
 0053F3C3    mov         ecx,dword ptr [ebp-14]
 0053F3C6    dec         ecx
>0053F3C7    jne         0053F3E5
 0053F3C9    mov         al,byte ptr [ebp-9]
 0053F3CC    cmp         al,97
>0053F3CE    jne         0053F4A3
 0053F3D4    mov         edx,dword ptr [ebp-6B]
 0053F3D7    cmp         edx,15
>0053F3DA    jne         0053F4A3
>0053F3E0    jmp         0053F483
 0053F3E5    mov         ecx,dword ptr [ebp-14]
 0053F3E8    cmp         ecx,2
>0053F3EB    jne         0053F40C
 0053F3ED    mov         al,byte ptr [ebp-9]
 0053F3F0    cmp         al,97
>0053F3F2    jne         0053F4A3
 0053F3F8    mov         dl,byte ptr [ebp-21]
 0053F3FB    cmp         dl,1
>0053F3FE    jne         0053F4A3
 0053F404    mov         ecx,dword ptr [ebp-4F]
 0053F407    mov         dword ptr [ebp-1C],ecx
>0053F40A    jmp         0053F483
 0053F40C    mov         eax,dword ptr [ebp-14]
 0053F40F    cmp         eax,3
>0053F412    jne         0053F43F
 0053F414    mov         dl,byte ptr [ebp-9]
 0053F417    cmp         dl,97
>0053F41A    jne         0053F4A3
 0053F420    mov         cl,byte ptr [ebp-21]
 0053F423    cmp         cl,3
>0053F426    jne         0053F4A3
 0053F428    mov         eax,dword ptr [ebp-26]
 0053F42B    cmp         eax,4
>0053F42E    jne         0053F4A3
 0053F430    mov         edx,dword ptr [ebp-5F]
 0053F433    inc         edx
>0053F434    jne         0053F4A3
 0053F436    mov         ecx,dword ptr [ebp-53]
 0053F439    test        ecx,ecx
>0053F43B    jne         0053F4A3
>0053F43D    jmp         0053F483
 0053F43F    mov         eax,dword ptr [ebp-14]
 0053F442    cmp         eax,4
>0053F445    jne         0053F483
 0053F447    mov         dl,byte ptr [ebp-9]
 0053F44A    cmp         dl,0D1
>0053F44D    jne         0053F4A3
 0053F44F    mov         cl,byte ptr [ebp-21]
 0053F452    cmp         cl,3
>0053F455    jne         0053F4A3
 0053F457    mov         eax,dword ptr [ebp-26]
 0053F45A    cmp         eax,4
>0053F45D    jne         0053F4A3
 0053F45F    mov         edx,dword ptr [ebp-5F]
 0053F462    inc         edx
>0053F463    jne         0053F4A3
 0053F465    mov         ecx,dword ptr [ebp-53]
 0053F468    test        ecx,ecx
>0053F46A    jne         0053F4A3
 0053F46C    mov         eax,dword ptr [ebp-8]
 0053F46F    mov         edx,dword ptr [ebp-1C]
 0053F472    mov         dword ptr [eax],edx
 0053F474    mov         eax,dword ptr [ebp-18]
 0053F477    mov         edx,dword ptr [ebp-10]
 0053F47A    add         eax,edx
 0053F47C    mov         ecx,dword ptr [ebp-4]
 0053F47F    sub         eax,ecx
>0053F481    jmp         0053F4A5
 0053F483    mov         al,byte ptr [ebp-6C]
 0053F486    test        al,al
>0053F488    je          0053F48E
 0053F48A    xor         eax,eax
>0053F48C    jmp         0053F4A5
 0053F48E    mov         edx,dword ptr [ebp-10]
 0053F491    add         dword ptr [ebp-18],edx
 0053F494    inc         dword ptr [ebp-14]
 0053F497    mov         ecx,dword ptr [ebp-14]
 0053F49A    cmp         ecx,4
>0053F49D    jle         0053F398
 0053F4A3    xor         eax,eax
 0053F4A5    mov         esp,ebp
 0053F4A7    pop         ebp
 0053F4A8    ret
end;*}

//0053F4AC
{*function sub_0053F4AC(?:?; ?:?):?;
begin
 0053F4AC    push        ebp
 0053F4AD    mov         ebp,esp
 0053F4AF    add         esp,0FFFFFF34
 0053F4B5    mov         dword ptr [ebp-8],edx
 0053F4B8    mov         dword ptr [ebp-4],eax
 0053F4BB    mov         eax,dword ptr [ebp-4]
 0053F4BE    mov         dword ptr [ebp-18],eax
 0053F4C1    mov         dword ptr [ebp-14],1
 0053F4C8    push        0
 0053F4CA    lea         ecx,[ebp-0CC]
 0053F4D0    mov         eax,6ECAB0
 0053F4D5    mov         edx,dword ptr [ebp-18]
 0053F4D8    call        00474954
 0053F4DD    mov         dword ptr [ebp-10],eax
 0053F4E0    lea         edx,[ebp-0CC]
 0053F4E6    mov         eax,6ECAB0
 0053F4EB    call        00474648
 0053F4F0    mov         byte ptr [ebp-9],al
 0053F4F3    mov         ecx,dword ptr [ebp-14]
 0053F4F6    dec         ecx
>0053F4F7    jne         0053F522
 0053F4F9    mov         al,byte ptr [ebp-9]
 0053F4FC    cmp         al,0DE
>0053F4FE    jne         0053F5BE
 0053F504    mov         dl,byte ptr [ebp-1D]
 0053F507    mov         cl,byte ptr [ebp-1C]
 0053F50A    cmp         dl,cl
>0053F50C    jne         0053F5BE
 0053F512    mov         eax,dword ptr [ebp-67]
 0053F515    mov         edx,dword ptr [ebp-63]
 0053F518    cmp         eax,edx
>0053F51A    jne         0053F5BE
>0053F520    jmp         0053F59E
 0053F522    mov         ecx,dword ptr [ebp-14]
 0053F525    cmp         ecx,2
>0053F528    jl          0053F548
 0053F52A    mov         eax,dword ptr [ebp-14]
 0053F52D    cmp         eax,4
>0053F530    jg          0053F548
 0053F532    mov         dl,byte ptr [ebp-9]
 0053F535    cmp         dl,96
>0053F538    jne         0053F5BE
 0053F53E    mov         cl,byte ptr [ebp-1D]
 0053F541    cmp         cl,2
>0053F544    jne         0053F5BE
>0053F546    jmp         0053F59E
 0053F548    mov         eax,dword ptr [ebp-14]
 0053F54B    cmp         eax,5
>0053F54E    jne         0053F570
 0053F550    mov         dl,byte ptr [ebp-9]
 0053F553    cmp         dl,0D1
>0053F556    jne         0053F5BE
 0053F558    mov         cl,byte ptr [ebp-1D]
 0053F55B    cmp         cl,3
>0053F55E    jne         0053F5BE
 0053F560    mov         eax,dword ptr [ebp-22]
 0053F563    cmp         eax,4
>0053F566    jne         0053F5BE
 0053F568    mov         edx,dword ptr [ebp-5B]
 0053F56B    inc         edx
>0053F56C    je          0053F5BE
>0053F56E    jmp         0053F59E
 0053F570    mov         ecx,dword ptr [ebp-14]
 0053F573    cmp         ecx,6
>0053F576    jne         0053F59E
 0053F578    mov         al,byte ptr [ebp-9]
 0053F57B    cmp         al,97
>0053F57D    jne         0053F5BE
 0053F57F    mov         dl,byte ptr [ebp-1D]
 0053F582    cmp         dl,1
>0053F585    jne         0053F5BE
 0053F587    mov         ecx,dword ptr [ebp-8]
 0053F58A    mov         eax,dword ptr [ebp-4B]
 0053F58D    mov         dword ptr [ecx],eax
 0053F58F    mov         eax,dword ptr [ebp-18]
 0053F592    mov         edx,dword ptr [ebp-10]
 0053F595    add         eax,edx
 0053F597    mov         ecx,dword ptr [ebp-4]
 0053F59A    sub         eax,ecx
>0053F59C    jmp         0053F5C0
 0053F59E    mov         al,byte ptr [ebp-68]
 0053F5A1    test        al,al
>0053F5A3    je          0053F5A9
 0053F5A5    xor         eax,eax
>0053F5A7    jmp         0053F5C0
 0053F5A9    mov         edx,dword ptr [ebp-10]
 0053F5AC    add         dword ptr [ebp-18],edx
 0053F5AF    inc         dword ptr [ebp-14]
 0053F5B2    mov         ecx,dword ptr [ebp-14]
 0053F5B5    cmp         ecx,6
>0053F5B8    jle         0053F4C8
 0053F5BE    xor         eax,eax
 0053F5C0    mov         esp,ebp
 0053F5C2    pop         ebp
 0053F5C3    ret
end;*}

//0053F5C4
{*function sub_0053F5C4(?:?; ?:?):?;
begin
 0053F5C4    push        ebp
 0053F5C5    mov         ebp,esp
 0053F5C7    add         esp,0FFFFFF34
 0053F5CD    mov         dword ptr [ebp-8],edx
 0053F5D0    mov         dword ptr [ebp-4],eax
 0053F5D3    mov         eax,dword ptr [ebp-4]
 0053F5D6    mov         dword ptr [ebp-18],eax
 0053F5D9    mov         dword ptr [ebp-14],1
 0053F5E0    push        0
 0053F5E2    lea         ecx,[ebp-0CC]
 0053F5E8    mov         eax,6ECAB0
 0053F5ED    mov         edx,dword ptr [ebp-18]
 0053F5F0    call        00474954
 0053F5F5    mov         dword ptr [ebp-10],eax
 0053F5F8    lea         edx,[ebp-0CC]
 0053F5FE    mov         eax,6ECAB0
 0053F603    call        00474648
 0053F608    mov         byte ptr [ebp-9],al
 0053F60B    mov         ecx,dword ptr [ebp-14]
 0053F60E    dec         ecx
>0053F60F    jne         0053F63A
 0053F611    mov         al,byte ptr [ebp-9]
 0053F614    cmp         al,0DE
>0053F616    jne         0053F6CD
 0053F61C    mov         dl,byte ptr [ebp-1D]
 0053F61F    mov         cl,byte ptr [ebp-1C]
 0053F622    cmp         dl,cl
>0053F624    jne         0053F6CD
 0053F62A    mov         eax,dword ptr [ebp-67]
 0053F62D    mov         edx,dword ptr [ebp-63]
 0053F630    cmp         eax,edx
>0053F632    jne         0053F6CD
>0053F638    jmp         0053F6AD
 0053F63A    mov         ecx,dword ptr [ebp-14]
 0053F63D    cmp         ecx,2
>0053F640    jl          0053F65C
 0053F642    mov         eax,dword ptr [ebp-14]
 0053F645    cmp         eax,4
>0053F648    jg          0053F65C
 0053F64A    mov         dl,byte ptr [ebp-9]
 0053F64D    cmp         dl,96
>0053F650    jne         0053F6CD
 0053F652    mov         cl,byte ptr [ebp-1D]
 0053F655    cmp         cl,2
>0053F658    jne         0053F6CD
>0053F65A    jmp         0053F6AD
 0053F65C    mov         eax,dword ptr [ebp-14]
 0053F65F    cmp         eax,5
>0053F662    jne         0053F684
 0053F664    mov         dl,byte ptr [ebp-9]
 0053F667    cmp         dl,0D1
>0053F66A    jne         0053F6CD
 0053F66C    mov         cl,byte ptr [ebp-1D]
 0053F66F    cmp         cl,3
>0053F672    jne         0053F6CD
 0053F674    mov         eax,dword ptr [ebp-22]
 0053F677    cmp         eax,4
>0053F67A    jne         0053F6CD
 0053F67C    mov         edx,dword ptr [ebp-5B]
 0053F67F    inc         edx
>0053F680    je          0053F6CD
>0053F682    jmp         0053F6AD
 0053F684    mov         ecx,dword ptr [ebp-14]
 0053F687    cmp         ecx,6
>0053F68A    jne         0053F6AD
 0053F68C    mov         al,byte ptr [ebp-9]
 0053F68F    cmp         al,8F
>0053F691    jne         0053F6CD
 0053F693    mov         dl,byte ptr [ebp-1D]
 0053F696    cmp         dl,1
>0053F699    jne         0053F6CD
 0053F69B    mov         ecx,dword ptr [ebp-8]
 0053F69E    mov         eax,dword ptr [ebp-4B]
 0053F6A1    mov         dword ptr [ecx],eax
 0053F6A3    mov         eax,dword ptr [ebp-18]
 0053F6A6    mov         edx,dword ptr [ebp-4]
 0053F6A9    sub         eax,edx
>0053F6AB    jmp         0053F6CF
 0053F6AD    mov         cl,byte ptr [ebp-68]
 0053F6B0    test        cl,cl
>0053F6B2    je          0053F6B8
 0053F6B4    xor         eax,eax
>0053F6B6    jmp         0053F6CF
 0053F6B8    mov         edx,dword ptr [ebp-10]
 0053F6BB    add         dword ptr [ebp-18],edx
 0053F6BE    inc         dword ptr [ebp-14]
 0053F6C1    mov         ecx,dword ptr [ebp-14]
 0053F6C4    cmp         ecx,6
>0053F6C7    jle         0053F5E0
 0053F6CD    xor         eax,eax
 0053F6CF    mov         esp,ebp
 0053F6D1    pop         ebp
 0053F6D2    ret
end;*}

//0053F6D4
{*function sub_0053F6D4(?:?; ?:?):?;
begin
 0053F6D4    push        ebp
 0053F6D5    mov         ebp,esp
 0053F6D7    add         esp,0FFFFFF18
 0053F6DD    mov         dword ptr [ebp-8],edx
 0053F6E0    mov         dword ptr [ebp-4],eax
 0053F6E3    mov         eax,dword ptr [ebp-4]
 0053F6E6    mov         dword ptr [ebp-18],eax
 0053F6E9    xor         edx,edx
 0053F6EB    mov         dword ptr [ebp-24],edx
 0053F6EE    mov         dword ptr [ebp-14],1
 0053F6F5    push        0
 0053F6F7    lea         ecx,[ebp-0E8]
 0053F6FD    mov         eax,6ECAB0
 0053F702    mov         edx,dword ptr [ebp-18]
 0053F705    call        00474954
 0053F70A    mov         dword ptr [ebp-10],eax
 0053F70D    lea         edx,[ebp-0E8]
 0053F713    mov         eax,6ECAB0
 0053F718    call        00474648
 0053F71D    mov         byte ptr [ebp-9],al
 0053F720    mov         ecx,dword ptr [ebp-14]
 0053F723    dec         ecx
>0053F724    jne         0053F73C
 0053F726    mov         al,byte ptr [ebp-9]
 0053F729    cmp         al,49
>0053F72B    jne         0053F909
 0053F731    mov         edx,dword ptr [ebp-18]
 0053F734    mov         dword ptr [ebp-28],edx
>0053F737    jmp         0053F8E3
 0053F73C    mov         ecx,dword ptr [ebp-14]
 0053F73F    cmp         ecx,2
>0053F742    jne         0053F785
 0053F744    mov         al,byte ptr [ebp-86]
 0053F74A    test        al,al
>0053F74C    je          0053F909
 0053F752    mov         dl,byte ptr [ebp-85]
 0053F758    test        dl,dl
>0053F75A    je          0053F909
 0053F760    mov         ecx,dword ptr [ebp-18]
 0053F763    mov         dword ptr [ebp-2C],ecx
 0053F766    mov         eax,dword ptr [ebp-67]
 0053F769    mov         dword ptr [ebp-20],eax
 0053F76C    mov         edx,dword ptr [ebp-20]
 0053F76F    mov         ecx,dword ptr [ebp-24]
 0053F772    cmp         edx,ecx
>0053F774    jbe         0053F8E3
 0053F77A    mov         eax,dword ptr [ebp-20]
 0053F77D    mov         dword ptr [ebp-24],eax
>0053F780    jmp         0053F8E3
 0053F785    mov         edx,dword ptr [ebp-14]
 0053F788    cmp         edx,3
>0053F78B    jne         0053F79E
 0053F78D    mov         cl,byte ptr [ebp-9]
 0053F790    cmp         cl,49
>0053F793    jne         0053F909
>0053F799    jmp         0053F8E3
 0053F79E    mov         eax,dword ptr [ebp-14]
 0053F7A1    cmp         eax,4
>0053F7A4    jne         0053F7E7
 0053F7A6    mov         dl,byte ptr [ebp-86]
 0053F7AC    test        dl,dl
>0053F7AE    je          0053F909
 0053F7B4    mov         cl,byte ptr [ebp-85]
 0053F7BA    test        cl,cl
>0053F7BC    je          0053F909
 0053F7C2    mov         eax,dword ptr [ebp-18]
 0053F7C5    mov         dword ptr [ebp-30],eax
 0053F7C8    mov         edx,dword ptr [ebp-67]
 0053F7CB    mov         dword ptr [ebp-1C],edx
 0053F7CE    mov         ecx,dword ptr [ebp-1C]
 0053F7D1    mov         eax,dword ptr [ebp-24]
 0053F7D4    cmp         ecx,eax
>0053F7D6    jbe         0053F8E3
 0053F7DC    mov         edx,dword ptr [ebp-1C]
 0053F7DF    mov         dword ptr [ebp-24],edx
>0053F7E2    jmp         0053F8E3
 0053F7E7    mov         ecx,dword ptr [ebp-14]
 0053F7EA    cmp         ecx,5
>0053F7ED    jne         0053F830
 0053F7EF    mov         al,byte ptr [ebp-86]
 0053F7F5    test        al,al
>0053F7F7    je          0053F909
 0053F7FD    mov         dl,byte ptr [ebp-85]
 0053F803    test        dl,dl
>0053F805    jne         0053F909
 0053F80B    mov         ecx,dword ptr [ebp-18]
 0053F80E    mov         dword ptr [ebp-34],ecx
 0053F811    mov         eax,dword ptr [ebp-67]
 0053F814    mov         dword ptr [ebp-1C],eax
 0053F817    mov         edx,dword ptr [ebp-1C]
 0053F81A    mov         ecx,dword ptr [ebp-24]
 0053F81D    cmp         edx,ecx
>0053F81F    jbe         0053F8E3
 0053F825    mov         eax,dword ptr [ebp-1C]
 0053F828    mov         dword ptr [ebp-24],eax
>0053F82B    jmp         0053F8E3
 0053F830    mov         edx,dword ptr [ebp-14]
 0053F833    cmp         edx,6
>0053F836    jne         0053F8E3
 0053F83C    mov         cl,byte ptr [ebp-86]
 0053F842    test        cl,cl
>0053F844    je          0053F909
 0053F84A    mov         al,byte ptr [ebp-85]
 0053F850    test        al,al
>0053F852    je          0053F909
 0053F858    mov         edx,dword ptr [ebp-18]
 0053F85B    mov         ecx,dword ptr [ebp-20]
 0053F85E    cmp         edx,ecx
>0053F860    jne         0053F909
 0053F866    mov         eax,dword ptr [ebp-67]
 0053F869    mov         dword ptr [ebp-1C],eax
 0053F86C    mov         edx,dword ptr [ebp-1C]
 0053F86F    mov         ecx,dword ptr [ebp-24]
 0053F872    cmp         edx,ecx
>0053F874    jbe         0053F87C
 0053F876    mov         eax,dword ptr [ebp-1C]
 0053F879    mov         dword ptr [ebp-24],eax
 0053F87C    mov         edx,dword ptr [ebp-8]
 0053F87F    mov         ecx,dword ptr [ebp-24]
 0053F882    mov         dword ptr [edx],ecx
 0053F884    mov         eax,dword ptr [ebp-28]
 0053F887    call        005312C8
 0053F88C    mov         edx,eax
 0053F88E    mov         eax,40000000
 0053F893    call        00532BE8
 0053F898    mov         eax,dword ptr [ebp-2C]
 0053F89B    call        005312C8
 0053F8A0    mov         edx,eax
 0053F8A2    mov         eax,40000000
 0053F8A7    call        00532BE8
 0053F8AC    mov         eax,dword ptr [ebp-30]
 0053F8AF    call        005312C8
 0053F8B4    mov         edx,eax
 0053F8B6    mov         eax,40000000
 0053F8BB    call        00532BE8
 0053F8C0    mov         eax,dword ptr [ebp-34]
 0053F8C3    call        005312C8
 0053F8C8    mov         edx,eax
 0053F8CA    mov         eax,40000000
 0053F8CF    call        00532BE8
 0053F8D4    mov         eax,dword ptr [ebp-18]
 0053F8D7    mov         edx,dword ptr [ebp-10]
 0053F8DA    add         eax,edx
 0053F8DC    mov         ecx,dword ptr [ebp-4]
 0053F8DF    sub         eax,ecx
>0053F8E1    jmp         0053F90B
 0053F8E3    mov         al,byte ptr [ebp-84]
 0053F8E9    test        al,al
>0053F8EB    je          0053F8F1
 0053F8ED    xor         eax,eax
>0053F8EF    jmp         0053F90B
 0053F8F1    mov         edx,dword ptr [ebp-10]
 0053F8F4    add         dword ptr [ebp-18],edx
 0053F8F7    inc         dword ptr [ebp-14]
 0053F8FA    mov         ecx,dword ptr [ebp-14]
 0053F8FD    cmp         ecx,400
>0053F903    jle         0053F6F5
 0053F909    xor         eax,eax
 0053F90B    mov         esp,ebp
 0053F90D    pop         ebp
 0053F90E    ret
end;*}

//0053F910
{*function sub_0053F910(?:?; ?:?):?;
begin
 0053F910    push        ebp
 0053F911    mov         ebp,esp
 0053F913    add         esp,0FFFFFF0C
 0053F919    mov         dword ptr [ebp-8],edx
 0053F91C    mov         dword ptr [ebp-4],eax
 0053F91F    mov         eax,dword ptr [ebp-4]
 0053F922    mov         dword ptr [ebp-24],eax
 0053F925    mov         dword ptr [ebp-18],0FFFFFFFF
 0053F92C    xor         edx,edx
 0053F92E    mov         dword ptr [ebp-34],edx
 0053F931    mov         dword ptr [ebp-14],1
 0053F938    push        0
 0053F93A    lea         ecx,[ebp-0F4]
 0053F940    mov         eax,6ECAB0
 0053F945    mov         edx,dword ptr [ebp-24]
 0053F948    call        00474954
 0053F94D    mov         dword ptr [ebp-10],eax
 0053F950    lea         edx,[ebp-0F4]
 0053F956    mov         eax,6ECAB0
 0053F95B    call        00474648
 0053F960    mov         byte ptr [ebp-9],al
 0053F963    mov         ecx,dword ptr [ebp-14]
 0053F966    dec         ecx
>0053F967    jne         0053F985
 0053F969    mov         al,byte ptr [ebp-9]
 0053F96C    cmp         al,97
>0053F96E    jne         0053FC1F
 0053F974    mov         dl,byte ptr [ebp-45]
 0053F977    cmp         dl,2
>0053F97A    jne         0053FC1F
>0053F980    jmp         0053FBE9
 0053F985    mov         ecx,dword ptr [ebp-14]
 0053F988    cmp         ecx,2
>0053F98B    jne         0053F9AF
 0053F98D    mov         al,byte ptr [ebp-9]
 0053F990    cmp         al,97
>0053F992    jne         0053FC1F
 0053F998    mov         dl,byte ptr [ebp-45]
 0053F99B    cmp         dl,2
>0053F99E    jne         0053FC1F
 0053F9A4    mov         ecx,dword ptr [ebp-24]
 0053F9A7    mov         dword ptr [ebp-38],ecx
>0053F9AA    jmp         0053FBE9
 0053F9AF    mov         eax,dword ptr [ebp-14]
 0053F9B2    cmp         eax,3
>0053F9B5    jl          0053FA7E
 0053F9BB    mov         edx,dword ptr [ebp-18]
 0053F9BE    inc         edx
>0053F9BF    jne         0053FA7E
 0053F9C5    mov         cl,byte ptr [ebp-9]
 0053F9C8    cmp         cl,49
>0053F9CB    jne         0053FA7E
 0053F9D1    mov         al,byte ptr [ebp-44]
 0053F9D4    cmp         al,3
>0053F9D6    jne         0053FA7E
 0053F9DC    mov         edx,dword ptr [ebp-83]
 0053F9E2    cmp         edx,14
>0053F9E5    jne         0053FA7E
 0053F9EB    mov         ecx,dword ptr [ebp-77]
 0053F9EE    cmp         ecx,4
>0053F9F1    jne         0053FA7E
 0053F9F7    mov         eax,dword ptr [ebp-24]
 0053F9FA    call        005312C8
 0053F9FF    mov         dword ptr [ebp-20],eax
 0053FA02    dec         dword ptr [ebp-20]
 0053FA05    mov         edx,dword ptr [ebp-20]
 0053FA08    mov         ecx,dword ptr [ebp-4]
 0053FA0B    cmp         edx,ecx
>0053FA0D    je          0053FA57
 0053FA0F    mov         edx,dword ptr [ebp-20]
 0053FA12    mov         eax,80000000
 0053FA17    call        00532B74
 0053FA1C    test        al,al
>0053FA1E    je          0053FA02
 0053FA20    push        0
 0053FA22    mov         eax,dword ptr [ebp-20]
 0053FA25    call        00531360
 0053FA2A    mov         edx,eax
 0053FA2C    lea         ecx,[ebp-0F4]
 0053FA32    mov         eax,6ECAB0
 0053FA37    call        00474954
 0053FA3C    lea         edx,[ebp-0F4]
 0053FA42    mov         eax,6ECAB0
 0053FA47    call        00474648
 0053FA4C    mov         byte ptr [ebp-9],al
 0053FA4F    mov         dl,byte ptr [ebp-9]
 0053FA52    cmp         dl,97
>0053FA55    jne         0053FA02
 0053FA57    mov         eax,dword ptr [ebp-20]
 0053FA5A    call        00531360
 0053FA5F    mov         edx,dword ptr [ebp-38]
 0053FA62    cmp         eax,edx
>0053FA64    je          0053FA6D
 0053FA66    xor         eax,eax
>0053FA68    jmp         0053FC21
 0053FA6D    mov         edx,dword ptr [ebp-14]
 0053FA70    mov         dword ptr [ebp-18],edx
 0053FA73    mov         ecx,dword ptr [ebp-24]
 0053FA76    mov         dword ptr [ebp-3C],ecx
>0053FA79    jmp         0053FBE9
 0053FA7E    mov         eax,dword ptr [ebp-18]
 0053FA81    inc         eax
>0053FA82    je          0053FAD0
 0053FA84    mov         edx,dword ptr [ebp-18]
 0053FA87    inc         edx
 0053FA88    mov         ecx,dword ptr [ebp-14]
 0053FA8B    cmp         edx,ecx
>0053FA8D    jne         0053FAD0
 0053FA8F    mov         al,byte ptr [ebp-92]
 0053FA95    test        al,al
>0053FA97    je          0053FC1F
 0053FA9D    mov         dl,byte ptr [ebp-91]
 0053FAA3    test        dl,dl
>0053FAA5    je          0053FC1F
 0053FAAB    mov         ecx,dword ptr [ebp-24]
 0053FAAE    mov         dword ptr [ebp-40],ecx
 0053FAB1    mov         eax,dword ptr [ebp-73]
 0053FAB4    mov         dword ptr [ebp-28],eax
 0053FAB7    mov         edx,dword ptr [ebp-28]
 0053FABA    mov         ecx,dword ptr [ebp-34]
 0053FABD    cmp         edx,ecx
>0053FABF    jbe         0053FBE9
 0053FAC5    mov         eax,dword ptr [ebp-28]
 0053FAC8    mov         dword ptr [ebp-34],eax
>0053FACB    jmp         0053FBE9
 0053FAD0    mov         edx,dword ptr [ebp-18]
 0053FAD3    inc         edx
>0053FAD4    je          0053FB1A
 0053FAD6    mov         ecx,dword ptr [ebp-18]
 0053FAD9    add         ecx,2
 0053FADC    mov         eax,dword ptr [ebp-14]
 0053FADF    cmp         ecx,eax
>0053FAE1    jne         0053FB1A
 0053FAE3    mov         dl,byte ptr [ebp-9]
 0053FAE6    cmp         dl,49
>0053FAE9    jne         0053FC1F
 0053FAEF    mov         cl,byte ptr [ebp-44]
 0053FAF2    cmp         cl,3
>0053FAF5    jne         0053FC1F
 0053FAFB    mov         eax,dword ptr [ebp-83]
 0053FB01    cmp         eax,14
>0053FB04    jne         0053FC1F
 0053FB0A    mov         edx,dword ptr [ebp-77]
 0053FB0D    test        edx,edx
>0053FB0F    jne         0053FC1F
>0053FB15    jmp         0053FBE9
 0053FB1A    mov         ecx,dword ptr [ebp-18]
 0053FB1D    inc         ecx
>0053FB1E    je          0053FB57
 0053FB20    mov         eax,dword ptr [ebp-18]
 0053FB23    add         eax,3
 0053FB26    mov         edx,dword ptr [ebp-14]
 0053FB29    cmp         eax,edx
>0053FB2B    jne         0053FB57
 0053FB2D    mov         cl,byte ptr [ebp-9]
 0053FB30    cmp         cl,96
>0053FB33    jne         0053FC1F
 0053FB39    mov         al,byte ptr [ebp-45]
 0053FB3C    cmp         al,2
>0053FB3E    jne         0053FC1F
 0053FB44    mov         edx,dword ptr [ebp-24]
 0053FB47    mov         ecx,dword ptr [ebp-28]
 0053FB4A    cmp         edx,ecx
>0053FB4C    jne         0053FC1F
>0053FB52    jmp         0053FBE9
 0053FB57    mov         eax,dword ptr [ebp-18]
 0053FB5A    inc         eax
>0053FB5B    je          0053FB83
 0053FB5D    mov         edx,dword ptr [ebp-18]
 0053FB60    add         edx,4
 0053FB63    mov         ecx,dword ptr [ebp-14]
 0053FB66    cmp         edx,ecx
>0053FB68    jne         0053FB83
 0053FB6A    mov         al,byte ptr [ebp-9]
 0053FB6D    cmp         al,96
>0053FB6F    jne         0053FC1F
 0053FB75    mov         dl,byte ptr [ebp-45]
 0053FB78    cmp         dl,2
>0053FB7B    jne         0053FC1F
>0053FB81    jmp         0053FBE9
 0053FB83    mov         ecx,dword ptr [ebp-18]
 0053FB86    inc         ecx
>0053FB87    je          0053FBE9
 0053FB89    mov         eax,dword ptr [ebp-18]
 0053FB8C    add         eax,5
 0053FB8F    mov         edx,dword ptr [ebp-14]
 0053FB92    cmp         eax,edx
>0053FB94    jne         0053FBE9
 0053FB96    mov         cl,byte ptr [ebp-92]
 0053FB9C    test        cl,cl
>0053FB9E    je          0053FC1F
 0053FBA0    mov         al,byte ptr [ebp-91]
 0053FBA6    test        al,al
>0053FBA8    je          0053FC1F
 0053FBAA    mov         edx,dword ptr [ebp-8]
 0053FBAD    mov         ecx,dword ptr [ebp-34]
 0053FBB0    mov         dword ptr [edx],ecx
 0053FBB2    mov         eax,dword ptr [ebp-3C]
 0053FBB5    call        005312C8
 0053FBBA    mov         edx,eax
 0053FBBC    mov         eax,40000000
 0053FBC1    call        00532BE8
 0053FBC6    mov         eax,dword ptr [ebp-40]
 0053FBC9    call        005312C8
 0053FBCE    mov         edx,eax
 0053FBD0    mov         eax,40000000
 0053FBD5    call        00532BE8
 0053FBDA    mov         eax,dword ptr [ebp-24]
 0053FBDD    mov         edx,dword ptr [ebp-10]
 0053FBE0    add         eax,edx
 0053FBE2    mov         ecx,dword ptr [ebp-4]
 0053FBE5    sub         eax,ecx
>0053FBE7    jmp         0053FC21
 0053FBE9    mov         eax,dword ptr [ebp-18]
 0053FBEC    inc         eax
>0053FBED    jne         0053FC07
 0053FBEF    mov         dl,byte ptr [ebp-90]
 0053FBF5    test        dl,dl
>0053FBF7    jne         0053FC03
 0053FBF9    mov         cl,byte ptr [ebp-92]
 0053FBFF    test        cl,cl
>0053FC01    je          0053FC07
 0053FC03    xor         eax,eax
>0053FC05    jmp         0053FC21
 0053FC07    mov         edx,dword ptr [ebp-10]
 0053FC0A    add         dword ptr [ebp-24],edx
 0053FC0D    inc         dword ptr [ebp-14]
 0053FC10    mov         ecx,dword ptr [ebp-14]
 0053FC13    cmp         ecx,400
>0053FC19    jle         0053F938
 0053FC1F    xor         eax,eax
 0053FC21    mov         esp,ebp
 0053FC23    pop         ebp
 0053FC24    ret
end;*}

//0053FC28
{*function sub_0053FC28(?:?; ?:?):?;
begin
 0053FC28    push        ebp
 0053FC29    mov         ebp,esp
 0053FC2B    add         esp,0FFFFFEFC
 0053FC31    mov         dword ptr [ebp-8],edx
 0053FC34    mov         dword ptr [ebp-4],eax
 0053FC37    mov         eax,dword ptr [ebp-4]
 0053FC3A    mov         dword ptr [ebp-24],eax
 0053FC3D    mov         dword ptr [ebp-18],0FFFFFFFF
 0053FC44    xor         edx,edx
 0053FC46    mov         dword ptr [ebp-34],edx
 0053FC49    mov         dword ptr [ebp-14],1
 0053FC50    push        0
 0053FC52    lea         ecx,[ebp-104]
 0053FC58    mov         eax,6ECAB0
 0053FC5D    mov         edx,dword ptr [ebp-24]
 0053FC60    call        00474954
 0053FC65    mov         dword ptr [ebp-10],eax
 0053FC68    lea         edx,[ebp-104]
 0053FC6E    mov         eax,6ECAB0
 0053FC73    call        00474648
 0053FC78    mov         byte ptr [ebp-9],al
 0053FC7B    mov         ecx,dword ptr [ebp-14]
 0053FC7E    dec         ecx
>0053FC7F    jne         0053FC9D
 0053FC81    mov         al,byte ptr [ebp-9]
 0053FC84    cmp         al,97
>0053FC86    jne         005400D5
 0053FC8C    mov         dl,byte ptr [ebp-55]
 0053FC8F    cmp         dl,2
>0053FC92    jne         005400D5
>0053FC98    jmp         0054009F
 0053FC9D    mov         ecx,dword ptr [ebp-14]
 0053FCA0    cmp         ecx,2
>0053FCA3    jne         0053FCC7
 0053FCA5    mov         al,byte ptr [ebp-9]
 0053FCA8    cmp         al,97
>0053FCAA    jne         005400D5
 0053FCB0    mov         dl,byte ptr [ebp-55]
 0053FCB3    cmp         dl,2
>0053FCB6    jne         005400D5
 0053FCBC    mov         ecx,dword ptr [ebp-24]
 0053FCBF    mov         dword ptr [ebp-38],ecx
>0053FCC2    jmp         0054009F
 0053FCC7    mov         eax,dword ptr [ebp-14]
 0053FCCA    cmp         eax,3
>0053FCCD    jl          0053FD99
 0053FCD3    mov         edx,dword ptr [ebp-18]
 0053FCD6    inc         edx
>0053FCD7    jne         0053FD99
 0053FCDD    mov         cl,byte ptr [ebp-9]
 0053FCE0    cmp         cl,49
>0053FCE3    jne         0053FD99
 0053FCE9    mov         al,byte ptr [ebp-54]
 0053FCEC    cmp         al,3
>0053FCEE    jne         0053FD99
 0053FCF4    mov         edx,dword ptr [ebp-93]
 0053FCFA    cmp         edx,14
>0053FCFD    jne         0053FD99
 0053FD03    mov         ecx,dword ptr [ebp-87]
 0053FD09    cmp         ecx,4
>0053FD0C    jne         0053FD99
 0053FD12    mov         eax,dword ptr [ebp-24]
 0053FD15    call        005312C8
 0053FD1A    mov         dword ptr [ebp-20],eax
 0053FD1D    dec         dword ptr [ebp-20]
 0053FD20    mov         edx,dword ptr [ebp-20]
 0053FD23    mov         ecx,dword ptr [ebp-4]
 0053FD26    cmp         edx,ecx
>0053FD28    je          0053FD72
 0053FD2A    mov         edx,dword ptr [ebp-20]
 0053FD2D    mov         eax,80000000
 0053FD32    call        00532B74
 0053FD37    test        al,al
>0053FD39    je          0053FD1D
 0053FD3B    push        0
 0053FD3D    mov         eax,dword ptr [ebp-20]
 0053FD40    call        00531360
 0053FD45    mov         edx,eax
 0053FD47    lea         ecx,[ebp-104]
 0053FD4D    mov         eax,6ECAB0
 0053FD52    call        00474954
 0053FD57    lea         edx,[ebp-104]
 0053FD5D    mov         eax,6ECAB0
 0053FD62    call        00474648
 0053FD67    mov         byte ptr [ebp-9],al
 0053FD6A    mov         dl,byte ptr [ebp-9]
 0053FD6D    cmp         dl,97
>0053FD70    jne         0053FD1D
 0053FD72    mov         eax,dword ptr [ebp-20]
 0053FD75    call        00531360
 0053FD7A    mov         edx,dword ptr [ebp-38]
 0053FD7D    cmp         eax,edx
>0053FD7F    je          0053FD88
 0053FD81    xor         eax,eax
>0053FD83    jmp         005400D7
 0053FD88    mov         edx,dword ptr [ebp-14]
 0053FD8B    mov         dword ptr [ebp-18],edx
 0053FD8E    mov         ecx,dword ptr [ebp-24]
 0053FD91    mov         dword ptr [ebp-3C],ecx
>0053FD94    jmp         0054009F
 0053FD99    mov         eax,dword ptr [ebp-18]
 0053FD9C    inc         eax
>0053FD9D    je          0053FDEE
 0053FD9F    mov         edx,dword ptr [ebp-18]
 0053FDA2    inc         edx
 0053FDA3    mov         ecx,dword ptr [ebp-14]
 0053FDA6    cmp         edx,ecx
>0053FDA8    jne         0053FDEE
 0053FDAA    mov         al,byte ptr [ebp-0A2]
 0053FDB0    test        al,al
>0053FDB2    je          005400D5
 0053FDB8    mov         dl,byte ptr [ebp-0A1]
 0053FDBE    test        dl,dl
>0053FDC0    je          005400D5
 0053FDC6    mov         ecx,dword ptr [ebp-24]
 0053FDC9    mov         dword ptr [ebp-40],ecx
 0053FDCC    mov         eax,dword ptr [ebp-83]
 0053FDD2    mov         dword ptr [ebp-2C],eax
 0053FDD5    mov         edx,dword ptr [ebp-2C]
 0053FDD8    mov         ecx,dword ptr [ebp-34]
 0053FDDB    cmp         edx,ecx
>0053FDDD    jbe         0054009F
 0053FDE3    mov         eax,dword ptr [ebp-2C]
 0053FDE6    mov         dword ptr [ebp-34],eax
>0053FDE9    jmp         0054009F
 0053FDEE    mov         edx,dword ptr [ebp-18]
 0053FDF1    inc         edx
>0053FDF2    je          0053FE3B
 0053FDF4    mov         ecx,dword ptr [ebp-18]
 0053FDF7    add         ecx,2
 0053FDFA    mov         eax,dword ptr [ebp-14]
 0053FDFD    cmp         ecx,eax
>0053FDFF    jne         0053FE3B
 0053FE01    mov         dl,byte ptr [ebp-9]
 0053FE04    cmp         dl,49
>0053FE07    jne         005400D5
 0053FE0D    mov         cl,byte ptr [ebp-54]
 0053FE10    cmp         cl,3
>0053FE13    jne         005400D5
 0053FE19    mov         eax,dword ptr [ebp-93]
 0053FE1F    cmp         eax,14
>0053FE22    jne         005400D5
 0053FE28    mov         edx,dword ptr [ebp-87]
 0053FE2E    test        edx,edx
>0053FE30    jne         005400D5
>0053FE36    jmp         0054009F
 0053FE3B    mov         ecx,dword ptr [ebp-18]
 0053FE3E    inc         ecx
>0053FE3F    je          0053FE70
 0053FE41    mov         eax,dword ptr [ebp-18]
 0053FE44    add         eax,3
 0053FE47    mov         edx,dword ptr [ebp-14]
 0053FE4A    cmp         eax,edx
>0053FE4C    jne         0053FE70
 0053FE4E    mov         cl,byte ptr [ebp-9]
 0053FE51    cmp         cl,96
>0053FE54    jne         005400D5
 0053FE5A    mov         al,byte ptr [ebp-55]
 0053FE5D    cmp         al,2
>0053FE5F    jne         005400D5
 0053FE65    mov         edx,dword ptr [ebp-24]
 0053FE68    mov         dword ptr [ebp-44],edx
>0053FE6B    jmp         0054009F
 0053FE70    mov         ecx,dword ptr [ebp-18]
 0053FE73    inc         ecx
>0053FE74    je          0053FEA5
 0053FE76    mov         eax,dword ptr [ebp-18]
 0053FE79    add         eax,4
 0053FE7C    mov         edx,dword ptr [ebp-14]
 0053FE7F    cmp         eax,edx
>0053FE81    jne         0053FEA5
 0053FE83    mov         cl,byte ptr [ebp-9]
 0053FE86    cmp         cl,96
>0053FE89    jne         005400D5
 0053FE8F    mov         al,byte ptr [ebp-55]
 0053FE92    cmp         al,2
>0053FE94    jne         005400D5
 0053FE9A    mov         edx,dword ptr [ebp-24]
 0053FE9D    mov         dword ptr [ebp-48],edx
>0053FEA0    jmp         0054009F
 0053FEA5    mov         ecx,dword ptr [ebp-18]
 0053FEA8    inc         ecx
>0053FEA9    je          0053FEFC
 0053FEAB    mov         eax,dword ptr [ebp-18]
 0053FEAE    add         eax,5
 0053FEB1    mov         edx,dword ptr [ebp-14]
 0053FEB4    cmp         eax,edx
>0053FEB6    jne         0053FEFC
 0053FEB8    mov         cl,byte ptr [ebp-0A2]
 0053FEBE    test        cl,cl
>0053FEC0    je          005400D5
 0053FEC6    mov         al,byte ptr [ebp-0A1]
 0053FECC    test        al,al
>0053FECE    je          005400D5
 0053FED4    mov         edx,dword ptr [ebp-24]
 0053FED7    mov         dword ptr [ebp-4C],edx
 0053FEDA    mov         ecx,dword ptr [ebp-83]
 0053FEE0    mov         dword ptr [ebp-28],ecx
 0053FEE3    mov         eax,dword ptr [ebp-28]
 0053FEE6    mov         edx,dword ptr [ebp-34]
 0053FEE9    cmp         eax,edx
>0053FEEB    jbe         0054009F
 0053FEF1    mov         ecx,dword ptr [ebp-28]
 0053FEF4    mov         dword ptr [ebp-34],ecx
>0053FEF7    jmp         0054009F
 0053FEFC    mov         eax,dword ptr [ebp-18]
 0053FEFF    inc         eax
>0053FF00    je          0053FF53
 0053FF02    mov         edx,dword ptr [ebp-18]
 0053FF05    add         edx,6
 0053FF08    mov         ecx,dword ptr [ebp-14]
 0053FF0B    cmp         edx,ecx
>0053FF0D    jne         0053FF53
 0053FF0F    mov         al,byte ptr [ebp-0A2]
 0053FF15    test        al,al
>0053FF17    je          005400D5
 0053FF1D    mov         dl,byte ptr [ebp-0A1]
 0053FF23    test        dl,dl
>0053FF25    jne         005400D5
 0053FF2B    mov         ecx,dword ptr [ebp-24]
 0053FF2E    mov         dword ptr [ebp-50],ecx
 0053FF31    mov         eax,dword ptr [ebp-83]
 0053FF37    mov         dword ptr [ebp-28],eax
 0053FF3A    mov         edx,dword ptr [ebp-28]
 0053FF3D    mov         ecx,dword ptr [ebp-34]
 0053FF40    cmp         edx,ecx
>0053FF42    jbe         0054009F
 0053FF48    mov         eax,dword ptr [ebp-28]
 0053FF4B    mov         dword ptr [ebp-34],eax
>0053FF4E    jmp         0054009F
 0053FF53    mov         edx,dword ptr [ebp-18]
 0053FF56    inc         edx
>0053FF57    je          0053FF91
 0053FF59    mov         ecx,dword ptr [ebp-18]
 0053FF5C    add         ecx,7
 0053FF5F    mov         eax,dword ptr [ebp-14]
 0053FF62    cmp         ecx,eax
>0053FF64    jne         0053FF91
 0053FF66    mov         dl,byte ptr [ebp-9]
 0053FF69    cmp         dl,96
>0053FF6C    jne         005400D5
 0053FF72    mov         cl,byte ptr [ebp-55]
 0053FF75    cmp         cl,2
>0053FF78    jne         005400D5
 0053FF7E    mov         eax,dword ptr [ebp-24]
 0053FF81    mov         edx,dword ptr [ebp-2C]
 0053FF84    cmp         eax,edx
>0053FF86    jne         005400D5
>0053FF8C    jmp         0054009F
 0053FF91    mov         ecx,dword ptr [ebp-18]
 0053FF94    inc         ecx
>0053FF95    je          0053FFC0
 0053FF97    mov         eax,dword ptr [ebp-18]
 0053FF9A    add         eax,8
 0053FF9D    mov         edx,dword ptr [ebp-14]
 0053FFA0    cmp         eax,edx
>0053FFA2    jne         0053FFC0
 0053FFA4    mov         cl,byte ptr [ebp-9]
 0053FFA7    cmp         cl,96
>0053FFAA    jne         005400D5
 0053FFB0    mov         al,byte ptr [ebp-55]
 0053FFB3    cmp         al,2
>0053FFB5    jne         005400D5
>0053FFBB    jmp         0054009F
 0053FFC0    mov         edx,dword ptr [ebp-18]
 0053FFC3    inc         edx
>0053FFC4    je          0054009F
 0053FFCA    mov         ecx,dword ptr [ebp-18]
 0053FFCD    add         ecx,9
 0053FFD0    mov         eax,dword ptr [ebp-14]
 0053FFD3    cmp         ecx,eax
>0053FFD5    jne         0054009F
 0053FFDB    mov         dl,byte ptr [ebp-0A2]
 0053FFE1    test        dl,dl
>0053FFE3    je          005400D5
 0053FFE9    mov         cl,byte ptr [ebp-0A1]
 0053FFEF    test        cl,cl
>0053FFF1    je          005400D5
 0053FFF7    mov         eax,dword ptr [ebp-83]
 0053FFFD    mov         dword ptr [ebp-30],eax
 00540000    mov         edx,dword ptr [ebp-30]
 00540003    mov         ecx,dword ptr [ebp-34]
 00540006    cmp         edx,ecx
>00540008    jbe         00540010
 0054000A    mov         eax,dword ptr [ebp-30]
 0054000D    mov         dword ptr [ebp-34],eax
 00540010    mov         edx,dword ptr [ebp-8]
 00540013    mov         ecx,dword ptr [ebp-34]
 00540016    mov         dword ptr [edx],ecx
 00540018    mov         eax,dword ptr [ebp-3C]
 0054001B    call        005312C8
 00540020    mov         edx,eax
 00540022    mov         eax,40000000
 00540027    call        00532BE8
 0054002C    mov         eax,dword ptr [ebp-40]
 0054002F    call        005312C8
 00540034    mov         edx,eax
 00540036    mov         eax,40000000
 0054003B    call        00532BE8
 00540040    mov         eax,dword ptr [ebp-44]
 00540043    call        005312C8
 00540048    mov         edx,eax
 0054004A    mov         eax,40000000
 0054004F    call        00532BE8
 00540054    mov         eax,dword ptr [ebp-48]
 00540057    call        005312C8
 0054005C    mov         edx,eax
 0054005E    mov         eax,40000000
 00540063    call        00532BE8
 00540068    mov         eax,dword ptr [ebp-4C]
 0054006B    call        005312C8
 00540070    mov         edx,eax
 00540072    mov         eax,40000000
 00540077    call        00532BE8
 0054007C    mov         eax,dword ptr [ebp-50]
 0054007F    call        005312C8
 00540084    mov         edx,eax
 00540086    mov         eax,40000000
 0054008B    call        00532BE8
 00540090    mov         eax,dword ptr [ebp-24]
 00540093    mov         edx,dword ptr [ebp-10]
 00540096    add         eax,edx
 00540098    mov         ecx,dword ptr [ebp-4]
 0054009B    sub         eax,ecx
>0054009D    jmp         005400D7
 0054009F    mov         eax,dword ptr [ebp-18]
 005400A2    inc         eax
>005400A3    jne         005400BD
 005400A5    mov         dl,byte ptr [ebp-0A0]
 005400AB    test        dl,dl
>005400AD    jne         005400B9
 005400AF    mov         cl,byte ptr [ebp-0A2]
 005400B5    test        cl,cl
>005400B7    je          005400BD
 005400B9    xor         eax,eax
>005400BB    jmp         005400D7
 005400BD    mov         edx,dword ptr [ebp-10]
 005400C0    add         dword ptr [ebp-24],edx
 005400C3    inc         dword ptr [ebp-14]
 005400C6    mov         ecx,dword ptr [ebp-14]
 005400C9    cmp         ecx,400
>005400CF    jle         0053FC50
 005400D5    xor         eax,eax
 005400D7    mov         esp,ebp
 005400D9    pop         ebp
 005400DA    ret
end;*}

//005400DC
{*function sub_005400DC(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005400DC    push        ebp
 005400DD    mov         ebp,esp
 005400DF    add         esp,0FFFFFF08
 005400E5    mov         dword ptr [ebp-0C],ecx
 005400E8    mov         dword ptr [ebp-8],edx
 005400EB    mov         dword ptr [ebp-4],eax
 005400EE    mov         eax,dword ptr [ebp-4]
 005400F1    mov         dword ptr [ebp-34],eax
 005400F4    mov         byte ptr [ebp-0D],0
 005400F8    mov         dword ptr [ebp-18],1
 005400FF    push        0
 00540101    lea         ecx,[ebp-0F8]
 00540107    mov         eax,6ECAB0
 0054010C    mov         edx,dword ptr [ebp-34]
 0054010F    call        00474954
 00540114    mov         dword ptr [ebp-14],eax
 00540117    lea         edx,[ebp-0F8]
 0054011D    mov         eax,6ECAB0
 00540122    call        00474648
 00540127    mov         byte ptr [ebp-0E],al
 0054012A    mov         ecx,dword ptr [ebp-18]
 0054012D    dec         ecx
>0054012E    jne         0054015B
 00540130    mov         al,byte ptr [ebp-0E]
 00540133    cmp         al,49
>00540135    jne         005402B1
 0054013B    mov         dl,byte ptr [ebp-48]
 0054013E    cmp         dl,1
>00540141    jne         0054028B
 00540147    mov         byte ptr [ebp-0D],1
 0054014B    mov         eax,dword ptr [ebp-77]
 0054014E    xor         edx,edx
 00540150    mov         dword ptr [ebp-28],eax
 00540153    mov         dword ptr [ebp-24],edx
>00540156    jmp         0054028B
 0054015B    mov         ecx,dword ptr [ebp-18]
 0054015E    cmp         ecx,2
>00540161    jne         00540190
 00540163    mov         al,byte ptr [ebp-96]
 00540169    test        al,al
>0054016B    je          005402B1
 00540171    mov         dl,byte ptr [ebp-95]
 00540177    test        dl,dl
>00540179    je          005402B1
 0054017F    mov         ecx,dword ptr [ebp-34]
 00540182    mov         dword ptr [ebp-3C],ecx
 00540185    mov         eax,dword ptr [ebp-77]
 00540188    mov         dword ptr [ebp-38],eax
>0054018B    jmp         0054028B
 00540190    mov         edx,dword ptr [ebp-18]
 00540193    cmp         edx,3
>00540196    jne         005401D0
 00540198    mov         cl,byte ptr [ebp-0E]
 0054019B    cmp         cl,49
>0054019E    jne         005402B1
 005401A4    mov         eax,dword ptr [ebp-34]
 005401A7    mov         edx,dword ptr [ebp-4]
 005401AA    sub         eax,edx
 005401AC    mov         ecx,dword ptr [ebp-8]
 005401AF    mov         dword ptr [ecx],eax
 005401B1    mov         al,byte ptr [ebp-48]
 005401B4    cmp         al,1
>005401B6    jne         0054028B
 005401BC    mov         byte ptr [ebp-0D],1
 005401C0    mov         eax,dword ptr [ebp-77]
 005401C3    xor         edx,edx
 005401C5    mov         dword ptr [ebp-30],eax
 005401C8    mov         dword ptr [ebp-2C],edx
>005401CB    jmp         0054028B
 005401D0    mov         ecx,dword ptr [ebp-18]
 005401D3    cmp         ecx,4
>005401D6    jne         005401FF
 005401D8    mov         al,byte ptr [ebp-96]
 005401DE    test        al,al
>005401E0    je          005402B1
 005401E6    mov         dl,byte ptr [ebp-95]
 005401EC    test        dl,dl
>005401EE    je          005402B1
 005401F4    mov         ecx,dword ptr [ebp-34]
 005401F7    mov         dword ptr [ebp-44],ecx
>005401FA    jmp         0054028B
 005401FF    mov         eax,dword ptr [ebp-18]
 00540202    cmp         eax,5
>00540205    jne         0054022B
 00540207    mov         dl,byte ptr [ebp-96]
 0054020D    test        dl,dl
>0054020F    je          005402B1
 00540215    mov         cl,byte ptr [ebp-95]
 0054021B    test        cl,cl
>0054021D    jne         005402B1
 00540223    mov         eax,dword ptr [ebp-34]
 00540226    mov         dword ptr [ebp-40],eax
>00540229    jmp         0054028B
 0054022B    mov         edx,dword ptr [ebp-18]
 0054022E    cmp         edx,6
>00540231    jne         0054028B
 00540233    mov         cl,byte ptr [ebp-96]
 00540239    test        cl,cl
>0054023B    je          005402B1
 0054023D    mov         al,byte ptr [ebp-95]
 00540243    test        al,al
>00540245    je          005402B1
 00540247    mov         edx,dword ptr [ebp-34]
 0054024A    mov         ecx,dword ptr [ebp-38]
 0054024D    cmp         edx,ecx
>0054024F    jne         005402B1
 00540251    mov         eax,dword ptr [ebp-34]
 00540254    mov         edx,dword ptr [ebp-4]
 00540257    sub         eax,edx
 00540259    mov         dword ptr [ebp-20],eax
 0054025C    mov         ecx,dword ptr [ebp-0C]
 0054025F    mov         eax,dword ptr [ebp-20]
 00540262    mov         dword ptr [ecx],eax
 00540264    mov         edx,dword ptr [ebp+0C]
 00540267    mov         cl,byte ptr [ebp-0D]
 0054026A    mov         byte ptr [edx],cl
 0054026C    mov         al,byte ptr [ebp-0D]
 0054026F    test        al,al
>00540271    je          00540286
 00540273    mov         edx,dword ptr [ebp-28]
 00540276    xor         eax,eax
 00540278    or          eax,dword ptr [ebp-30]
 0054027B    or          edx,dword ptr [ebp-2C]
 0054027E    mov         ecx,dword ptr [ebp+8]
 00540281    mov         dword ptr [ecx],eax
 00540283    mov         dword ptr [ecx+4],edx
 00540286    mov         eax,dword ptr [ebp-20]
>00540289    jmp         005402B3
 0054028B    mov         dl,byte ptr [ebp-94]
 00540291    test        dl,dl
>00540293    je          00540299
 00540295    xor         eax,eax
>00540297    jmp         005402B3
 00540299    mov         edx,dword ptr [ebp-14]
 0054029C    add         dword ptr [ebp-34],edx
 0054029F    inc         dword ptr [ebp-18]
 005402A2    mov         ecx,dword ptr [ebp-18]
 005402A5    cmp         ecx,400
>005402AB    jle         005400FF
 005402B1    xor         eax,eax
 005402B3    mov         esp,ebp
 005402B5    pop         ebp
 005402B6    ret         8
end;*}

//005402BC
{*function sub_005402BC(?:?; ?:?; ?:?):?;
begin
 005402BC    push        ebp
 005402BD    mov         ebp,esp
 005402BF    add         esp,0FFFFFF20
 005402C5    mov         dword ptr [ebp-0C],ecx
 005402C8    mov         dword ptr [ebp-8],edx
 005402CB    mov         dword ptr [ebp-4],eax
 005402CE    mov         eax,dword ptr [ebp-4]
 005402D1    mov         dword ptr [ebp-24],eax
 005402D4    mov         edx,dword ptr [ebp-4]
 005402D7    mov         dword ptr [ebp-24],edx
 005402DA    mov         ecx,dword ptr [ebp-8]
 005402DD    xor         eax,eax
 005402DF    mov         dword ptr [ecx],eax
 005402E1    mov         edx,dword ptr [ebp-0C]
 005402E4    xor         ecx,ecx
 005402E6    mov         dword ptr [edx],ecx
 005402E8    mov         dword ptr [ebp-1C],0FFFFFFFF
 005402EF    mov         dword ptr [ebp-18],1
 005402F6    push        0
 005402F8    lea         ecx,[ebp-0E0]
 005402FE    mov         eax,6ECAB0
 00540303    mov         edx,dword ptr [ebp-24]
 00540306    call        00474954
 0054030B    mov         dword ptr [ebp-14],eax
 0054030E    lea         edx,[ebp-0E0]
 00540314    mov         eax,6ECAB0
 00540319    call        00474648
 0054031E    mov         byte ptr [ebp-0D],al
 00540321    mov         ecx,dword ptr [ebp-18]
 00540324    dec         ecx
>00540325    jne         00540343
 00540327    mov         al,byte ptr [ebp-0D]
 0054032A    cmp         al,97
>0054032C    jne         0054057A
 00540332    mov         dl,byte ptr [ebp-31]
 00540335    cmp         dl,2
>00540338    jne         0054057A
>0054033E    jmp         0054054A
 00540343    mov         ecx,dword ptr [ebp-18]
 00540346    cmp         ecx,2
>00540349    jne         0054036D
 0054034B    mov         al,byte ptr [ebp-0D]
 0054034E    cmp         al,97
>00540350    jne         0054057A
 00540356    mov         dl,byte ptr [ebp-31]
 00540359    cmp         dl,2
>0054035C    jne         0054057A
 00540362    mov         ecx,dword ptr [ebp-24]
 00540365    mov         dword ptr [ebp-2C],ecx
>00540368    jmp         0054054A
 0054036D    mov         eax,dword ptr [ebp-18]
 00540370    cmp         eax,3
>00540373    jl          0054043B
 00540379    mov         edx,dword ptr [ebp-1C]
 0054037C    inc         edx
>0054037D    jne         0054043B
 00540383    mov         cl,byte ptr [ebp-0D]
 00540386    cmp         cl,49
>00540389    jne         0054043B
 0054038F    mov         al,byte ptr [ebp-30]
 00540392    cmp         al,3
>00540394    jne         0054043B
 0054039A    mov         edx,dword ptr [ebp-6F]
 0054039D    cmp         edx,14
>005403A0    jne         0054043B
 005403A6    mov         ecx,dword ptr [ebp-63]
 005403A9    cmp         ecx,4
>005403AC    jne         0054043B
 005403B2    mov         eax,dword ptr [ebp-24]
 005403B5    call        005312C8
 005403BA    mov         dword ptr [ebp-20],eax
 005403BD    dec         dword ptr [ebp-20]
 005403C0    mov         edx,dword ptr [ebp-20]
 005403C3    mov         ecx,dword ptr [ebp-4]
 005403C6    cmp         edx,ecx
>005403C8    je          00540412
 005403CA    mov         edx,dword ptr [ebp-20]
 005403CD    mov         eax,80000000
 005403D2    call        00532B74
 005403D7    test        al,al
>005403D9    je          005403BD
 005403DB    push        0
 005403DD    mov         eax,dword ptr [ebp-20]
 005403E0    call        00531360
 005403E5    mov         edx,eax
 005403E7    lea         ecx,[ebp-0E0]
 005403ED    mov         eax,6ECAB0
 005403F2    call        00474954
 005403F7    lea         edx,[ebp-0E0]
 005403FD    mov         eax,6ECAB0
 00540402    call        00474648
 00540407    mov         byte ptr [ebp-0D],al
 0054040A    mov         dl,byte ptr [ebp-0D]
 0054040D    cmp         dl,97
>00540410    jne         005403BD
 00540412    mov         eax,dword ptr [ebp-20]
 00540415    call        00531360
 0054041A    mov         edx,dword ptr [ebp-2C]
 0054041D    cmp         eax,edx
>0054041F    je          00540428
 00540421    xor         eax,eax
>00540423    jmp         0054057C
 00540428    mov         edx,dword ptr [ebp-18]
 0054042B    mov         dword ptr [ebp-1C],edx
 0054042E    mov         ecx,dword ptr [ebp-0C]
 00540431    mov         eax,dword ptr [ebp-24]
 00540434    mov         dword ptr [ecx],eax
>00540436    jmp         0054054A
 0054043B    mov         edx,dword ptr [ebp-1C]
 0054043E    inc         edx
>0054043F    je          0054046D
 00540441    mov         ecx,dword ptr [ebp-1C]
 00540444    inc         ecx
 00540445    mov         eax,dword ptr [ebp-18]
 00540448    cmp         ecx,eax
>0054044A    jne         0054046D
 0054044C    mov         dl,byte ptr [ebp-7E]
 0054044F    test        dl,dl
>00540451    je          0054057A
 00540457    mov         cl,byte ptr [ebp-7D]
 0054045A    test        cl,cl
>0054045C    je          0054057A
 00540462    mov         eax,dword ptr [ebp-5F]
 00540465    mov         dword ptr [ebp-28],eax
>00540468    jmp         0054054A
 0054046D    mov         edx,dword ptr [ebp-1C]
 00540470    inc         edx
>00540471    je          005404C1
 00540473    mov         ecx,dword ptr [ebp-1C]
 00540476    add         ecx,2
 00540479    mov         eax,dword ptr [ebp-18]
 0054047C    cmp         ecx,eax
>0054047E    jne         005404C1
 00540480    mov         dl,byte ptr [ebp-0D]
 00540483    cmp         dl,49
>00540486    jne         0054057A
 0054048C    mov         cl,byte ptr [ebp-30]
 0054048F    cmp         cl,3
>00540492    jne         0054057A
 00540498    mov         eax,dword ptr [ebp-6F]
 0054049B    cmp         eax,14
>0054049E    jne         0054057A
 005404A4    mov         edx,dword ptr [ebp-63]
 005404A7    test        edx,edx
>005404A9    jne         0054057A
 005404AF    mov         ecx,dword ptr [ebp-24]
 005404B2    mov         eax,dword ptr [ebp-4]
 005404B5    sub         ecx,eax
 005404B7    mov         edx,dword ptr [ebp-8]
 005404BA    mov         dword ptr [edx],ecx
>005404BC    jmp         0054054A
 005404C1    mov         ecx,dword ptr [ebp-1C]
 005404C4    inc         ecx
>005404C5    je          005404FB
 005404C7    mov         eax,dword ptr [ebp-1C]
 005404CA    add         eax,3
 005404CD    mov         edx,dword ptr [ebp-18]
 005404D0    cmp         eax,edx
>005404D2    jne         005404FB
 005404D4    mov         cl,byte ptr [ebp-0D]
 005404D7    cmp         cl,96
>005404DA    jne         0054057A
 005404E0    mov         al,byte ptr [ebp-31]
 005404E3    cmp         al,2
>005404E5    jne         0054057A
 005404EB    mov         edx,dword ptr [ebp-24]
 005404EE    mov         ecx,dword ptr [ebp-28]
 005404F1    cmp         edx,ecx
>005404F3    jne         0054057A
>005404F9    jmp         0054054A
 005404FB    mov         eax,dword ptr [ebp-1C]
 005404FE    inc         eax
>005404FF    je          0054051F
 00540501    mov         edx,dword ptr [ebp-1C]
 00540504    add         edx,4
 00540507    mov         ecx,dword ptr [ebp-18]
 0054050A    cmp         edx,ecx
>0054050C    jne         0054051F
 0054050E    mov         al,byte ptr [ebp-0D]
 00540511    cmp         al,96
>00540513    jne         0054057A
 00540515    mov         dl,byte ptr [ebp-31]
 00540518    cmp         dl,2
>0054051B    jne         0054057A
>0054051D    jmp         0054054A
 0054051F    mov         ecx,dword ptr [ebp-1C]
 00540522    inc         ecx
>00540523    je          0054054A
 00540525    mov         eax,dword ptr [ebp-1C]
 00540528    add         eax,5
 0054052B    mov         edx,dword ptr [ebp-18]
 0054052E    cmp         eax,edx
>00540530    jne         0054054A
 00540532    mov         cl,byte ptr [ebp-7E]
 00540535    test        cl,cl
>00540537    je          0054057A
 00540539    mov         al,byte ptr [ebp-7D]
 0054053C    test        al,al
>0054053E    je          0054057A
 00540540    mov         eax,dword ptr [ebp-24]
 00540543    mov         edx,dword ptr [ebp-4]
 00540546    sub         eax,edx
>00540548    jmp         0054057C
 0054054A    mov         ecx,dword ptr [ebp-1C]
 0054054D    inc         ecx
>0054054E    jne         00540562
 00540550    mov         al,byte ptr [ebp-7C]
 00540553    test        al,al
>00540555    jne         0054055E
 00540557    mov         dl,byte ptr [ebp-7E]
 0054055A    test        dl,dl
>0054055C    je          00540562
 0054055E    xor         eax,eax
>00540560    jmp         0054057C
 00540562    mov         edx,dword ptr [ebp-14]
 00540565    add         dword ptr [ebp-24],edx
 00540568    inc         dword ptr [ebp-18]
 0054056B    mov         ecx,dword ptr [ebp-18]
 0054056E    cmp         ecx,400
>00540574    jle         005402F6
 0054057A    xor         eax,eax
 0054057C    mov         esp,ebp
 0054057E    pop         ebp
 0054057F    ret
end;*}

//00540580
{*function sub_00540580(?:?; ?:?; ?:?; ?:?):?;
begin
 00540580    push        ebp
 00540581    mov         ebp,esp
 00540583    add         esp,0FFFFFF20
 00540589    mov         dword ptr [ebp-0C],ecx
 0054058C    mov         dword ptr [ebp-8],edx
 0054058F    mov         dword ptr [ebp-4],eax
 00540592    mov         eax,dword ptr [ebp-4]
 00540595    mov         dword ptr [ebp-24],eax
 00540598    mov         edx,dword ptr [ebp-4]
 0054059B    mov         dword ptr [ebp-24],edx
 0054059E    mov         ecx,dword ptr [ebp+8]
 005405A1    xor         eax,eax
 005405A3    mov         dword ptr [ecx],eax
 005405A5    mov         dword ptr [ebp-1C],0FFFFFFFF
 005405AC    mov         dword ptr [ebp-18],1
 005405B3    push        0
 005405B5    lea         ecx,[ebp-0E0]
 005405BB    mov         eax,6ECAB0
 005405C0    mov         edx,dword ptr [ebp-24]
 005405C3    call        00474954
 005405C8    mov         dword ptr [ebp-14],eax
 005405CB    lea         edx,[ebp-0E0]
 005405D1    mov         eax,6ECAB0
 005405D6    call        00474648
 005405DB    mov         byte ptr [ebp-0D],al
 005405DE    mov         ecx,dword ptr [ebp-18]
 005405E1    dec         ecx
>005405E2    jne         00540600
 005405E4    mov         al,byte ptr [ebp-0D]
 005405E7    cmp         al,97
>005405E9    jne         00540900
 005405EF    mov         dl,byte ptr [ebp-31]
 005405F2    cmp         dl,2
>005405F5    jne         00540900
>005405FB    jmp         005408D0
 00540600    mov         ecx,dword ptr [ebp-18]
 00540603    cmp         ecx,2
>00540606    jne         0054062A
 00540608    mov         al,byte ptr [ebp-0D]
 0054060B    cmp         al,97
>0054060D    jne         00540900
 00540613    mov         dl,byte ptr [ebp-31]
 00540616    cmp         dl,2
>00540619    jne         00540900
 0054061F    mov         ecx,dword ptr [ebp-24]
 00540622    mov         dword ptr [ebp-2C],ecx
>00540625    jmp         005408D0
 0054062A    mov         eax,dword ptr [ebp-18]
 0054062D    cmp         eax,3
>00540630    jl          005406F8
 00540636    mov         edx,dword ptr [ebp-1C]
 00540639    inc         edx
>0054063A    jne         005406F8
 00540640    mov         cl,byte ptr [ebp-0D]
 00540643    cmp         cl,49
>00540646    jne         005406F8
 0054064C    mov         al,byte ptr [ebp-30]
 0054064F    cmp         al,3
>00540651    jne         005406F8
 00540657    mov         edx,dword ptr [ebp-6F]
 0054065A    cmp         edx,14
>0054065D    jne         005406F8
 00540663    mov         ecx,dword ptr [ebp-63]
 00540666    cmp         ecx,4
>00540669    jne         005406F8
 0054066F    mov         eax,dword ptr [ebp-24]
 00540672    call        005312C8
 00540677    mov         dword ptr [ebp-20],eax
 0054067A    dec         dword ptr [ebp-20]
 0054067D    mov         edx,dword ptr [ebp-20]
 00540680    mov         ecx,dword ptr [ebp-4]
 00540683    cmp         edx,ecx
>00540685    je          005406CF
 00540687    mov         edx,dword ptr [ebp-20]
 0054068A    mov         eax,80000000
 0054068F    call        00532B74
 00540694    test        al,al
>00540696    je          0054067A
 00540698    push        0
 0054069A    mov         eax,dword ptr [ebp-20]
 0054069D    call        00531360
 005406A2    mov         edx,eax
 005406A4    lea         ecx,[ebp-0E0]
 005406AA    mov         eax,6ECAB0
 005406AF    call        00474954
 005406B4    lea         edx,[ebp-0E0]
 005406BA    mov         eax,6ECAB0
 005406BF    call        00474648
 005406C4    mov         byte ptr [ebp-0D],al
 005406C7    mov         dl,byte ptr [ebp-0D]
 005406CA    cmp         dl,97
>005406CD    jne         0054067A
 005406CF    mov         eax,dword ptr [ebp-20]
 005406D2    call        00531360
 005406D7    mov         edx,dword ptr [ebp-2C]
 005406DA    cmp         eax,edx
>005406DC    je          005406E5
 005406DE    xor         eax,eax
>005406E0    jmp         00540902
 005406E5    mov         edx,dword ptr [ebp-18]
 005406E8    mov         dword ptr [ebp-1C],edx
 005406EB    mov         ecx,dword ptr [ebp+8]
 005406EE    mov         eax,dword ptr [ebp-24]
 005406F1    mov         dword ptr [ecx],eax
>005406F3    jmp         005408D0
 005406F8    mov         edx,dword ptr [ebp-1C]
 005406FB    inc         edx
>005406FC    je          0054072A
 005406FE    mov         ecx,dword ptr [ebp-1C]
 00540701    inc         ecx
 00540702    mov         eax,dword ptr [ebp-18]
 00540705    cmp         ecx,eax
>00540707    jne         0054072A
 00540709    mov         dl,byte ptr [ebp-7E]
 0054070C    test        dl,dl
>0054070E    je          00540900
 00540714    mov         cl,byte ptr [ebp-7D]
 00540717    test        cl,cl
>00540719    je          00540900
 0054071F    mov         eax,dword ptr [ebp-5F]
 00540722    mov         dword ptr [ebp-28],eax
>00540725    jmp         005408D0
 0054072A    mov         edx,dword ptr [ebp-1C]
 0054072D    inc         edx
>0054072E    je          0054077E
 00540730    mov         ecx,dword ptr [ebp-1C]
 00540733    add         ecx,2
 00540736    mov         eax,dword ptr [ebp-18]
 00540739    cmp         ecx,eax
>0054073B    jne         0054077E
 0054073D    mov         dl,byte ptr [ebp-0D]
 00540740    cmp         dl,49
>00540743    jne         00540900
 00540749    mov         cl,byte ptr [ebp-30]
 0054074C    cmp         cl,3
>0054074F    jne         00540900
 00540755    mov         eax,dword ptr [ebp-6F]
 00540758    cmp         eax,14
>0054075B    jne         00540900
 00540761    mov         edx,dword ptr [ebp-63]
 00540764    test        edx,edx
>00540766    jne         00540900
 0054076C    mov         ecx,dword ptr [ebp-24]
 0054076F    mov         eax,dword ptr [ebp-4]
 00540772    sub         ecx,eax
 00540774    mov         edx,dword ptr [ebp-8]
 00540777    mov         dword ptr [edx],ecx
>00540779    jmp         005408D0
 0054077E    mov         ecx,dword ptr [ebp-1C]
 00540781    inc         ecx
>00540782    je          005407AD
 00540784    mov         eax,dword ptr [ebp-1C]
 00540787    add         eax,3
 0054078A    mov         edx,dword ptr [ebp-18]
 0054078D    cmp         eax,edx
>0054078F    jne         005407AD
 00540791    mov         cl,byte ptr [ebp-0D]
 00540794    cmp         cl,96
>00540797    jne         00540900
 0054079D    mov         al,byte ptr [ebp-31]
 005407A0    cmp         al,2
>005407A2    jne         00540900
>005407A8    jmp         005408D0
 005407AD    mov         edx,dword ptr [ebp-1C]
 005407B0    inc         edx
>005407B1    je          005407DD
 005407B3    mov         ecx,dword ptr [ebp-1C]
 005407B6    add         ecx,4
 005407B9    mov         eax,dword ptr [ebp-18]
 005407BC    cmp         ecx,eax
>005407BE    jne         005407DD
 005407C0    mov         dl,byte ptr [ebp-0D]
 005407C3    cmp         dl,96
>005407C6    jne         00540900
 005407CC    mov         cl,byte ptr [ebp-31]
 005407CF    cmp         cl,2
>005407D2    jne         00540900
>005407D8    jmp         005408D0
 005407DD    mov         eax,dword ptr [ebp-1C]
 005407E0    inc         eax
>005407E1    je          00540818
 005407E3    mov         edx,dword ptr [ebp-1C]
 005407E6    add         edx,5
 005407E9    mov         ecx,dword ptr [ebp-18]
 005407EC    cmp         edx,ecx
>005407EE    jne         00540818
 005407F0    mov         al,byte ptr [ebp-7E]
 005407F3    test        al,al
>005407F5    je          00540900
 005407FB    mov         dl,byte ptr [ebp-7D]
 005407FE    test        dl,dl
>00540800    je          00540900
 00540806    mov         ecx,dword ptr [ebp-24]
 00540809    mov         eax,dword ptr [ebp-4]
 0054080C    sub         ecx,eax
 0054080E    mov         edx,dword ptr [ebp-0C]
 00540811    mov         dword ptr [edx],ecx
>00540813    jmp         005408D0
 00540818    mov         ecx,dword ptr [ebp-1C]
 0054081B    inc         ecx
>0054081C    je          00540846
 0054081E    mov         eax,dword ptr [ebp-1C]
 00540821    add         eax,6
 00540824    mov         edx,dword ptr [ebp-18]
 00540827    cmp         eax,edx
>00540829    jne         00540846
 0054082B    mov         cl,byte ptr [ebp-7E]
 0054082E    test        cl,cl
>00540830    je          00540900
 00540836    mov         al,byte ptr [ebp-7D]
 00540839    test        al,al
>0054083B    jne         00540900
>00540841    jmp         005408D0
 00540846    mov         edx,dword ptr [ebp-1C]
 00540849    inc         edx
>0054084A    je          00540881
 0054084C    mov         ecx,dword ptr [ebp-1C]
 0054084F    add         ecx,7
 00540852    mov         eax,dword ptr [ebp-18]
 00540855    cmp         ecx,eax
>00540857    jne         00540881
 00540859    mov         dl,byte ptr [ebp-0D]
 0054085C    cmp         dl,96
>0054085F    jne         00540900
 00540865    mov         cl,byte ptr [ebp-31]
 00540868    cmp         cl,2
>0054086B    jne         00540900
 00540871    mov         eax,dword ptr [ebp-24]
 00540874    mov         edx,dword ptr [ebp-28]
 00540877    cmp         eax,edx
>00540879    jne         00540900
>0054087F    jmp         005408D0
 00540881    mov         ecx,dword ptr [ebp-1C]
 00540884    inc         ecx
>00540885    je          005408A5
 00540887    mov         eax,dword ptr [ebp-1C]
 0054088A    add         eax,8
 0054088D    mov         edx,dword ptr [ebp-18]
 00540890    cmp         eax,edx
>00540892    jne         005408A5
 00540894    mov         cl,byte ptr [ebp-0D]
 00540897    cmp         cl,96
>0054089A    jne         00540900
 0054089C    mov         al,byte ptr [ebp-31]
 0054089F    cmp         al,2
>005408A1    jne         00540900
>005408A3    jmp         005408D0
 005408A5    mov         edx,dword ptr [ebp-1C]
 005408A8    inc         edx
>005408A9    je          005408D0
 005408AB    mov         ecx,dword ptr [ebp-1C]
 005408AE    add         ecx,9
 005408B1    mov         eax,dword ptr [ebp-18]
 005408B4    cmp         ecx,eax
>005408B6    jne         005408D0
 005408B8    mov         dl,byte ptr [ebp-7E]
 005408BB    test        dl,dl
>005408BD    je          00540900
 005408BF    mov         cl,byte ptr [ebp-7D]
 005408C2    test        cl,cl
>005408C4    je          00540900
 005408C6    mov         eax,dword ptr [ebp-24]
 005408C9    mov         edx,dword ptr [ebp-4]
 005408CC    sub         eax,edx
>005408CE    jmp         00540902
 005408D0    mov         ecx,dword ptr [ebp-1C]
 005408D3    inc         ecx
>005408D4    jne         005408E8
 005408D6    mov         al,byte ptr [ebp-7C]
 005408D9    test        al,al
>005408DB    jne         005408E4
 005408DD    mov         dl,byte ptr [ebp-7E]
 005408E0    test        dl,dl
>005408E2    je          005408E8
 005408E4    xor         eax,eax
>005408E6    jmp         00540902
 005408E8    mov         edx,dword ptr [ebp-14]
 005408EB    add         dword ptr [ebp-24],edx
 005408EE    inc         dword ptr [ebp-18]
 005408F1    mov         ecx,dword ptr [ebp-18]
 005408F4    cmp         ecx,400
>005408FA    jle         005405B3
 00540900    xor         eax,eax
 00540902    mov         esp,ebp
 00540904    pop         ebp
 00540905    ret         4
end;*}

//00540908
{*function sub_00540908(?:?):?;
begin
 00540908    push        ebp
 00540909    mov         ebp,esp
 0054090B    add         esp,0FFFFFF30
 00540911    mov         dword ptr [ebp-4],eax
 00540914    mov         eax,dword ptr [ebp-4]
 00540917    mov         dword ptr [ebp-1C],eax
 0054091A    mov         dword ptr [ebp-10],1
 00540921    push        0
 00540923    lea         ecx,[ebp-0D0]
 00540929    mov         eax,6ECAB0
 0054092E    mov         edx,dword ptr [ebp-1C]
 00540931    call        00474954
 00540936    mov         dword ptr [ebp-0C],eax
 00540939    lea         edx,[ebp-0D0]
 0054093F    mov         eax,6ECAB0
 00540944    call        00474648
 00540949    mov         byte ptr [ebp-5],al
 0054094C    mov         ecx,dword ptr [ebp-10]
 0054094F    dec         ecx
>00540950    jne         00540996
 00540952    mov         al,byte ptr [ebp-5]
 00540955    cmp         al,9F
>00540957    jne         00540A00
 0054095D    mov         dl,byte ptr [ebp-22]
 00540960    cmp         dl,3
>00540963    jne         00540A00
 00540969    mov         cl,byte ptr [ebp-21]
 0054096C    cmp         cl,2
>0054096F    jne         00540A00
 00540975    mov         al,byte ptr [ebp-20]
 00540978    cmp         al,2
>0054097A    jne         00540A00
 00540980    mov         dl,byte ptr [ebp-1F]
 00540983    cmp         dl,1
>00540986    jne         00540A00
 00540988    mov         ecx,dword ptr [ebp-67]
 0054098B    mov         dword ptr [ebp-14],ecx
 0054098E    mov         eax,dword ptr [ebp-4F]
 00540991    mov         dword ptr [ebp-18],eax
>00540994    jmp         005409E0
 00540996    mov         edx,dword ptr [ebp-10]
 00540999    cmp         edx,2
>0054099C    jne         005409E0
 0054099E    mov         cl,byte ptr [ebp-5]
 005409A1    cmp         cl,9F
>005409A4    jne         00540A00
 005409A6    mov         al,byte ptr [ebp-22]
 005409A9    cmp         al,2
>005409AB    jne         00540A00
 005409AD    mov         dl,byte ptr [ebp-21]
 005409B0    cmp         dl,2
>005409B3    jne         00540A00
 005409B5    mov         cl,byte ptr [ebp-20]
 005409B8    cmp         cl,1
>005409BB    jne         00540A00
 005409BD    mov         eax,dword ptr [ebp-6B]
 005409C0    mov         edx,dword ptr [ebp-14]
 005409C3    cmp         eax,edx
>005409C5    jne         00540A00
 005409C7    mov         ecx,dword ptr [ebp-4F]
 005409CA    mov         eax,dword ptr [ebp-18]
 005409CD    cmp         ecx,eax
>005409CF    jne         00540A00
 005409D1    mov         eax,dword ptr [ebp-1C]
 005409D4    mov         edx,dword ptr [ebp-0C]
 005409D7    add         eax,edx
 005409D9    mov         ecx,dword ptr [ebp-4]
 005409DC    sub         eax,ecx
>005409DE    jmp         00540A02
 005409E0    mov         al,byte ptr [ebp-6C]
 005409E3    test        al,al
>005409E5    je          005409EB
 005409E7    xor         eax,eax
>005409E9    jmp         00540A02
 005409EB    mov         edx,dword ptr [ebp-0C]
 005409EE    add         dword ptr [ebp-1C],edx
 005409F1    inc         dword ptr [ebp-10]
 005409F4    mov         ecx,dword ptr [ebp-10]
 005409F7    cmp         ecx,2
>005409FA    jle         00540921
 00540A00    xor         eax,eax
 00540A02    mov         esp,ebp
 00540A04    pop         ebp
 00540A05    ret
end;*}

//00540A08
{*function sub_00540A08(?:?):?;
begin
 00540A08    push        ebp
 00540A09    mov         ebp,esp
 00540A0B    add         esp,0FFFFFF30
 00540A11    mov         dword ptr [ebp-4],eax
 00540A14    mov         eax,dword ptr [ebp-4]
 00540A17    mov         dword ptr [ebp-1C],eax
 00540A1A    mov         dword ptr [ebp-10],1
 00540A21    push        0
 00540A23    lea         ecx,[ebp-0D0]
 00540A29    mov         eax,6ECAB0
 00540A2E    mov         edx,dword ptr [ebp-1C]
 00540A31    call        00474954
 00540A36    mov         dword ptr [ebp-0C],eax
 00540A39    lea         edx,[ebp-0D0]
 00540A3F    mov         eax,6ECAB0
 00540A44    call        00474648
 00540A49    mov         byte ptr [ebp-5],al
 00540A4C    mov         ecx,dword ptr [ebp-10]
 00540A4F    dec         ecx
>00540A50    jne         00540A96
 00540A52    mov         al,byte ptr [ebp-5]
 00540A55    cmp         al,0A1
>00540A57    jne         00540B00
 00540A5D    mov         dl,byte ptr [ebp-22]
 00540A60    cmp         dl,3
>00540A63    jne         00540B00
 00540A69    mov         cl,byte ptr [ebp-21]
 00540A6C    cmp         cl,2
>00540A6F    jne         00540B00
 00540A75    mov         al,byte ptr [ebp-20]
 00540A78    cmp         al,2
>00540A7A    jne         00540B00
 00540A80    mov         dl,byte ptr [ebp-1F]
 00540A83    cmp         dl,1
>00540A86    jne         00540B00
 00540A88    mov         ecx,dword ptr [ebp-67]
 00540A8B    mov         dword ptr [ebp-14],ecx
 00540A8E    mov         eax,dword ptr [ebp-4F]
 00540A91    mov         dword ptr [ebp-18],eax
>00540A94    jmp         00540AE0
 00540A96    mov         edx,dword ptr [ebp-10]
 00540A99    cmp         edx,2
>00540A9C    jne         00540AE0
 00540A9E    mov         cl,byte ptr [ebp-5]
 00540AA1    cmp         cl,0A1
>00540AA4    jne         00540B00
 00540AA6    mov         al,byte ptr [ebp-22]
 00540AA9    cmp         al,2
>00540AAB    jne         00540B00
 00540AAD    mov         dl,byte ptr [ebp-21]
 00540AB0    cmp         dl,2
>00540AB3    jne         00540B00
 00540AB5    mov         cl,byte ptr [ebp-1F]
 00540AB8    cmp         cl,1
>00540ABB    jne         00540B00
 00540ABD    mov         eax,dword ptr [ebp-6B]
 00540AC0    mov         edx,dword ptr [ebp-14]
 00540AC3    cmp         eax,edx
>00540AC5    jne         00540B00
 00540AC7    mov         ecx,dword ptr [ebp-4F]
 00540ACA    mov         eax,dword ptr [ebp-18]
 00540ACD    cmp         ecx,eax
>00540ACF    jne         00540B00
 00540AD1    mov         eax,dword ptr [ebp-1C]
 00540AD4    mov         edx,dword ptr [ebp-0C]
 00540AD7    add         eax,edx
 00540AD9    mov         ecx,dword ptr [ebp-4]
 00540ADC    sub         eax,ecx
>00540ADE    jmp         00540B02
 00540AE0    mov         al,byte ptr [ebp-6C]
 00540AE3    test        al,al
>00540AE5    je          00540AEB
 00540AE7    xor         eax,eax
>00540AE9    jmp         00540B02
 00540AEB    mov         edx,dword ptr [ebp-0C]
 00540AEE    add         dword ptr [ebp-1C],edx
 00540AF1    inc         dword ptr [ebp-10]
 00540AF4    mov         ecx,dword ptr [ebp-10]
 00540AF7    cmp         ecx,2
>00540AFA    jle         00540A21
 00540B00    xor         eax,eax
 00540B02    mov         esp,ebp
 00540B04    pop         ebp
 00540B05    ret
end;*}

//00540B80
constructor TFPlugins.Create(AOwner:TComponent);
begin
{*
 00540B80    push        ebp
 00540B81    mov         ebp,esp
 00540B83    add         esp,0FFFFFFC8
 00540B86    mov         byte ptr [ebp-10],dl
 00540B89    test        dl,dl
>00540B8B    jle         00540B92
 00540B8D    call        0067EF6C
 00540B92    mov         dword ptr [ebp-38],ecx
 00540B95    mov         byte ptr [ebp-31],dl
 00540B98    mov         dword ptr [ebp-4],eax
 00540B9B    mov         eax,6E0700
 00540BA0    call        0066FECC
 00540BA5    mov         word ptr [ebp-20],8
 00540BAB    mov         ecx,dword ptr [ebp-38]
 00540BAE    xor         edx,edx
 00540BB0    mov         eax,dword ptr [ebp-4]
 00540BB3    call        0040207C
 00540BB8    add         dword ptr [ebp-14],10
 00540BBC    mov         eax,dword ptr [ebp-4]
 00540BBF    add         eax,2FC;TFPlugins.?f2FC:dword
 00540BC4    call        00401EA8
 00540BC9    inc         dword ptr [ebp-14]
 00540BCC    mov         eax,dword ptr [ebp-4]
 00540BCF    add         eax,300;TFPlugins.?f300:?
 00540BD4    call        00401EA8
 00540BD9    inc         dword ptr [ebp-14]
 00540BDC    mov         word ptr [ebp-20],14
 00540BE2    mov         edx,6E06A0
 00540BE7    lea         eax,[ebp-8]
 00540BEA    call        0067DAB4
 00540BEF    inc         dword ptr [ebp-14]
 00540BF2    lea         edx,[ebp-8]
 00540BF5    mov         eax,dword ptr [ebp-4]
 00540BF8    add         eax,2FC;TFPlugins.?f2FC:dword
 00540BFD    call        0067DCD0
 00540C02    dec         dword ptr [ebp-14]
 00540C05    lea         eax,[ebp-8]
 00540C08    mov         edx,2
 00540C0D    call        0067DCA0
 00540C12    mov         word ptr [ebp-20],20
 00540C18    mov         edx,6E06A1
 00540C1D    lea         eax,[ebp-0C]
 00540C20    call        0067DAB4
 00540C25    inc         dword ptr [ebp-14]
 00540C28    lea         edx,[ebp-0C]
 00540C2B    mov         eax,dword ptr [ebp-4]
 00540C2E    add         eax,300;TFPlugins.?f300:?
 00540C33    call        0067DCD0
 00540C38    dec         dword ptr [ebp-14]
 00540C3B    lea         eax,[ebp-0C]
 00540C3E    mov         edx,2
 00540C43    call        0067DCA0
 00540C48    mov         ecx,dword ptr [ebp-30]
 00540C4B    mov         dword ptr fs:[0],ecx
 00540C52    mov         eax,dword ptr [ebp-4]
 00540C55    mov         dl,byte ptr [ebp-31]
 00540C58    test        dl,dl
>00540C5A    je          00540C61
 00540C5C    call        0067EF79
 00540C61    mov         esp,ebp
 00540C63    pop         ebp
 00540C64    ret
*}
end;

//00540C80
procedure TFPlugins.FormShow(Sender:TObject);
begin
{*
 00540C80    push        ebp
 00540C81    mov         ebp,esp
 00540C83    add         esp,0FFFFFE50
 00540C89    mov         dword ptr [ebp-1A4],edx
 00540C8F    mov         dword ptr [ebp-1A0],eax
 00540C95    mov         eax,6E07E4
 00540C9A    call        0066FECC
 00540C9F    mov         word ptr [ebp-18C],8
 00540CA8    lea         eax,[ebp-14C]
 00540CAE    call        00401EA8
 00540CB3    inc         dword ptr [ebp-180]
 00540CB9    inc         dword ptr [ebp-180]
 00540CBF    mov         word ptr [ebp-18C],14
 00540CC8    mov         edx,dword ptr [ebp-1A0]
 00540CCE    mov         eax,dword ptr [edx+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 00540CD4    mov         edx,dword ptr [eax]
 00540CD6    call        dword ptr [edx+0D4];TCustomListBox.Clear
 00540CDC    mov         word ptr [ebp-18C],20
 00540CE5    mov         edx,6E06A2
 00540CEA    lea         eax,[ebp-15C]
 00540CF0    call        0067DAB4
 00540CF5    inc         dword ptr [ebp-180]
 00540CFB    lea         edx,[ebp-15C]
 00540D01    mov         eax,dword ptr [ebp-1A0]
 00540D07    add         eax,2FC;TFPlugins.?f2FC:dword
 00540D0C    call        0067DD9C
 00540D11    push        eax
 00540D12    dec         dword ptr [ebp-180]
 00540D18    lea         eax,[ebp-15C]
 00540D1E    mov         edx,2
 00540D23    call        0067DCA0
 00540D28    pop         ecx
 00540D29    test        cl,cl
>00540D2B    je          00540FF4
 00540D31    mov         eax,[006E9DD0];^Screen:TScreen
 00540D36    mov         eax,dword ptr [eax]
 00540D38    mov         dx,0FFF5
 00540D3C    call        005D5E2C
 00540D41    mov         word ptr [ebp-18C],38
 00540D4A    lea         eax,[ebp-160]
 00540D50    call        00401EA8
 00540D55    inc         dword ptr [ebp-180]
 00540D5B    call        006586E8
 00540D60    mov         word ptr [ebp-18C],2C
 00540D69    mov         edx,dword ptr [ebp-1A0]
 00540D6F    mov         eax,dword ptr [edx+2FC];TFPlugins.?f2FC:dword
 00540D75    call        ChDir
 00540D7A    mov         word ptr [ebp-18C],44
 00540D83    mov         edx,6E06A3
 00540D88    lea         eax,[ebp-164]
 00540D8E    call        0067DAB4
 00540D93    inc         dword ptr [ebp-180]
 00540D99    mov         eax,dword ptr [eax]
 00540D9B    lea         ecx,[ebp-158]
 00540DA1    mov         edx,20
 00540DA6    call        00658184
 00540DAB    test        eax,eax
 00540DAD    sete        al
 00540DB0    and         eax,1
 00540DB3    push        eax
 00540DB4    dec         dword ptr [ebp-180]
 00540DBA    lea         eax,[ebp-164]
 00540DC0    mov         edx,2
 00540DC5    call        0067DCA0
 00540DCA    pop         ecx
 00540DCB    test        cl,cl
>00540DCD    je          00540FBB
 00540DD3    lea         eax,[ebp-14C]
 00540DD9    call        00403C0C
 00540DDE    push        eax
 00540DDF    call        KERNEL32.LoadLibraryA
 00540DE4    mov         dword ptr [ebp-1A8],eax
 00540DEA    mov         word ptr [ebp-18C],2C
 00540DF3    mov         edx,dword ptr [ebp-1A8]
 00540DF9    test        edx,edx
>00540DFB    je          00540F9D
 00540E01    mov         word ptr [ebp-18C],5C
 00540E0A    mov         edx,6E06A9
 00540E0F    lea         eax,[ebp-168]
 00540E15    call        0067DAB4
 00540E1A    inc         dword ptr [ebp-180]
 00540E20    mov         word ptr [ebp-18C],50
 00540E29    push        6E06AA
 00540E2E    push        dword ptr [ebp-1A8]
 00540E34    call        KERNEL32.GetProcAddress
 00540E39    mov         [006ECC2C],eax;gvar_006ECC2C
 00540E3E    mov         ecx,dword ptr ds:[6ECC2C];0x0 gvar_006ECC2C
 00540E44    test        ecx,ecx
>00540E46    je          00540E9C
 00540E48    lea         eax,[ebp-1AC]
 00540E4E    push        eax
 00540E4F    call        dword ptr ds:[6ECC2C]
 00540E55    mov         word ptr [ebp-18C],68
 00540E5E    lea         eax,[ebp-16C]
 00540E64    mov         edx,dword ptr [ebp-1AC]
 00540E6A    call        0067DAB4
 00540E6F    inc         dword ptr [ebp-180]
 00540E75    lea         edx,[ebp-16C]
 00540E7B    lea         eax,[ebp-168]
 00540E81    call        0067DCD0
 00540E86    dec         dword ptr [ebp-180]
 00540E8C    lea         eax,[ebp-16C]
 00540E92    mov         edx,2
 00540E97    call        0067DCA0
 00540E9C    mov         ecx,dword ptr [ebp-1A0]
 00540EA2    mov         eax,dword ptr [ecx+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 00540EA8    add         eax,218;TCheckListBox.FItems:TStrings
 00540EAD    mov         dword ptr [ebp-1B0],eax
 00540EB3    mov         word ptr [ebp-18C],74
 00540EBC    lea         eax,[ebp-174]
 00540EC2    call        00401EA8
 00540EC7    push        eax
 00540EC8    inc         dword ptr [ebp-180]
 00540ECE    mov         edx,6E06B9
 00540ED3    lea         eax,[ebp-170]
 00540ED9    call        0067DAB4
 00540EDE    inc         dword ptr [ebp-180]
 00540EE4    lea         edx,[ebp-170]
 00540EEA    lea         eax,[ebp-14C]
 00540EF0    pop         ecx
 00540EF1    call        0067DCF8
 00540EF6    lea         edx,[ebp-174]
 00540EFC    push        edx
 00540EFD    lea         eax,[ebp-178]
 00540F03    call        00401EA8
 00540F08    mov         ecx,eax
 00540F0A    inc         dword ptr [ebp-180]
 00540F10    lea         edx,[ebp-168]
 00540F16    pop         eax
 00540F17    call        0067DCF8
 00540F1C    lea         edx,[ebp-178]
 00540F22    mov         edx,dword ptr [edx]
 00540F24    mov         eax,dword ptr [ebp-1B0]
 00540F2A    mov         eax,dword ptr [eax]
 00540F2C    mov         ecx,dword ptr [eax]
 00540F2E    call        dword ptr [ecx+38]
 00540F31    dec         dword ptr [ebp-180]
 00540F37    lea         eax,[ebp-178]
 00540F3D    mov         edx,2
 00540F42    call        0067DCA0
 00540F47    dec         dword ptr [ebp-180]
 00540F4D    lea         eax,[ebp-174]
 00540F53    mov         edx,2
 00540F58    call        0067DCA0
 00540F5D    dec         dword ptr [ebp-180]
 00540F63    lea         eax,[ebp-170]
 00540F69    mov         edx,2
 00540F6E    call        0067DCA0
 00540F73    push        dword ptr [ebp-1A8]
 00540F79    call        KERNEL32.FreeLibrary
 00540F7E    dec         dword ptr [ebp-180]
 00540F84    lea         eax,[ebp-168]
 00540F8A    mov         edx,2
 00540F8F    call        0067DCA0
 00540F94    mov         word ptr [ebp-18C],2C
 00540F9D    lea         eax,[ebp-158]
 00540FA3    call        006581F0
 00540FA8    test        eax,eax
>00540FAA    je          00540DD3
 00540FB0    lea         eax,[ebp-158]
 00540FB6    call        0065822C
 00540FBB    mov         eax,dword ptr [ebp-160]
 00540FC1    call        ChDir
 00540FC6    mov         edx,dword ptr ds:[6E9DD0];^Screen:TScreen
 00540FCC    mov         eax,dword ptr [edx]
 00540FCE    xor         edx,edx
 00540FD0    call        005D5E2C
 00540FD5    dec         dword ptr [ebp-180]
 00540FDB    lea         eax,[ebp-160]
 00540FE1    mov         edx,2
 00540FE6    call        0067DCA0
 00540FEB    mov         word ptr [ebp-18C],14
 00540FF4    dec         dword ptr [ebp-180]
 00540FFA    dec         dword ptr [ebp-180]
 00541000    lea         eax,[ebp-14C]
 00541006    mov         edx,2
 0054100B    call        0067DCA0
 00541010    mov         ecx,dword ptr [ebp-19C]
 00541016    mov         dword ptr fs:[0],ecx
 0054101D    mov         esp,ebp
 0054101F    pop         ebp
 00541020    ret
*}
end;

//00541024
{*procedure TFPlugins.cklbPluginsListClickCheck(?:?);
begin
 00541024    push        ebp
 00541025    mov         ebp,esp
 00541027    add         esp,0FFFFFFF0
 0054102A    mov         dword ptr [ebp-8],edx
 0054102D    mov         dword ptr [ebp-4],eax
 00541030    mov         eax,dword ptr [ebp-4]
 00541033    mov         eax,dword ptr [eax+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 00541039    mov         edx,dword ptr [eax]
 0054103B    call        dword ptr [edx+0C8];TCheckListBox.sub_0059E338
 00541041    mov         edx,eax
 00541043    mov         eax,dword ptr [ebp-4]
 00541046    mov         eax,dword ptr [eax+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 0054104C    call        00570428
 00541051    test        al,al
>00541053    je          005410AF
 00541055    xor         edx,edx
 00541057    mov         dword ptr [ebp-0C],edx
>0054105A    jmp         0054108C
 0054105C    mov         ecx,dword ptr [ebp-4]
 0054105F    mov         eax,dword ptr [ecx+2F0]
 00541065    mov         edx,dword ptr [eax]
 00541067    call        dword ptr [edx+0C8]
 0054106D    mov         ecx,dword ptr [ebp-0C]
 00541070    cmp         eax,ecx
 00541072    sete        cl
 00541075    and         ecx,1
 00541078    mov         edx,dword ptr [ebp-0C]
 0054107B    mov         eax,dword ptr [ebp-4]
 0054107E    mov         eax,dword ptr [eax+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 00541084    call        0057031C
 00541089    inc         dword ptr [ebp-0C]
 0054108C    mov         edx,dword ptr [ebp-4]
 0054108F    mov         ecx,dword ptr [edx+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 00541095    add         ecx,218;TCheckListBox.FItems:TStrings
 0054109B    mov         dword ptr [ebp-10],ecx
 0054109E    mov         eax,dword ptr [ebp-10]
 005410A1    mov         eax,dword ptr [eax]
 005410A3    mov         edx,dword ptr [eax]
 005410A5    call        dword ptr [edx+14]
 005410A8    mov         ecx,dword ptr [ebp-0C]
 005410AB    cmp         eax,ecx
>005410AD    jg          0054105C
 005410AF    mov         esp,ebp
 005410B1    pop         ebp
 005410B2    ret
end;*}

//005410B4
procedure TFPlugins.cklbPluginsListDblClick(Sender:TObject);
begin
{*
 005410B4    push        ebp
 005410B5    mov         ebp,esp
 005410B7    add         esp,0FFFFFFA4
 005410BA    push        ebx
 005410BB    mov         dword ptr [ebp-50],edx
 005410BE    mov         dword ptr [ebp-4C],eax
 005410C1    mov         eax,6E0904
 005410C6    call        0066FECC
 005410CB    mov         word ptr [ebp-38],14
 005410D1    mov         edx,6E06BD
 005410D6    lea         eax,[ebp-4]
 005410D9    call        0067DAB4
 005410DE    inc         dword ptr [ebp-2C]
 005410E1    mov         word ptr [ebp-38],8
 005410E7    mov         word ptr [ebp-38],20
 005410ED    mov         edx,dword ptr [ebp-4C]
 005410F0    mov         ecx,dword ptr [edx+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 005410F6    add         ecx,218;TCheckListBox.FItems:TStrings
 005410FC    mov         dword ptr [ebp-54],ecx
 005410FF    lea         eax,[ebp-8]
 00541102    call        00401EA8
 00541107    push        eax
 00541108    inc         dword ptr [ebp-2C]
 0054110B    mov         edx,dword ptr [ebp-4C]
 0054110E    mov         eax,dword ptr [edx+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 00541114    mov         edx,dword ptr [eax]
 00541116    call        dword ptr [edx+0C8];TCheckListBox.sub_0059E338
 0054111C    mov         edx,eax
 0054111E    mov         eax,dword ptr [ebp-54]
 00541121    mov         eax,dword ptr [eax]
 00541123    pop         ecx
 00541124    mov         ebx,dword ptr [eax]
 00541126    call        dword ptr [ebx+0C]
 00541129    mov         word ptr [ebp-38],8
 0054112F    mov         word ptr [ebp-38],2C
 00541135    lea         eax,[ebp-0C]
 00541138    mov         dl,2D
 0054113A    call        0067DB84
 0054113F    inc         dword ptr [ebp-2C]
 00541142    lea         edx,[ebp-0C]
 00541145    lea         eax,[ebp-8]
 00541148    call        0067DEF4
 0054114D    mov         dword ptr [ebp-58],eax
 00541150    dec         dword ptr [ebp-2C]
 00541153    lea         eax,[ebp-0C]
 00541156    mov         edx,2
 0054115B    call        0067DCA0
 00541160    mov         word ptr [ebp-38],8
 00541166    mov         ecx,dword ptr [ebp-58]
 00541169    test        ecx,ecx
>0054116B    jle         005411D2
 0054116D    mov         word ptr [ebp-38],38
 00541173    lea         eax,[ebp-10]
 00541176    call        00401EA8
 0054117B    push        eax
 0054117C    inc         dword ptr [ebp-2C]
 0054117F    mov         ecx,dword ptr [ebp-58]
 00541182    dec         ecx
 00541183    lea         eax,[ebp-8]
 00541186    mov         edx,1
 0054118B    call        0067E0BC
 00541190    lea         ecx,[ebp-10]
 00541193    push        ecx
 00541194    lea         eax,[ebp-14]
 00541197    call        00401EA8
 0054119C    mov         edx,eax
 0054119E    inc         dword ptr [ebp-2C]
 005411A1    pop         eax
 005411A2    call        0067E030
 005411A7    lea         edx,[ebp-14]
 005411AA    lea         eax,[ebp-4]
 005411AD    call        0067DCD0
 005411B2    dec         dword ptr [ebp-2C]
 005411B5    lea         eax,[ebp-14]
 005411B8    mov         edx,2
 005411BD    call        0067DCA0
 005411C2    dec         dword ptr [ebp-2C]
 005411C5    lea         eax,[ebp-10]
 005411C8    mov         edx,2
 005411CD    call        0067DCA0
 005411D2    mov         word ptr [ebp-38],44
 005411D8    mov         edx,6E06BE
 005411DD    lea         eax,[ebp-18]
 005411E0    call        0067DAB4
 005411E5    inc         dword ptr [ebp-2C]
 005411E8    lea         edx,[ebp-18]
 005411EB    lea         eax,[ebp-4]
 005411EE    call        0067DD9C
 005411F3    push        eax
 005411F4    dec         dword ptr [ebp-2C]
 005411F7    lea         eax,[ebp-18]
 005411FA    mov         edx,2
 005411FF    call        0067DCA0
 00541204    pop         ecx
 00541205    test        cl,cl
>00541207    je          005412D7
 0054120D    mov         word ptr [ebp-38],5C
 00541213    lea         eax,[ebp-20]
 00541216    call        00401EA8
 0054121B    push        eax
 0054121C    inc         dword ptr [ebp-2C]
 0054121F    mov         edx,6E06BF
 00541224    lea         eax,[ebp-1C]
 00541227    call        0067DAB4
 0054122C    inc         dword ptr [ebp-2C]
 0054122F    lea         edx,[ebp-1C]
 00541232    mov         eax,dword ptr [ebp-4C]
 00541235    add         eax,2FC;TFPlugins.?f2FC:dword
 0054123A    pop         ecx
 0054123B    call        0067DCF8
 00541240    lea         edx,[ebp-20]
 00541243    push        edx
 00541244    lea         eax,[ebp-24]
 00541247    call        00401EA8
 0054124C    mov         ecx,eax
 0054124E    inc         dword ptr [ebp-2C]
 00541251    lea         edx,[ebp-4]
 00541254    pop         eax
 00541255    call        0067DCF8
 0054125A    lea         eax,[ebp-24]
 0054125D    call        00403C0C
 00541262    push        eax
 00541263    call        KERNEL32.LoadLibraryA
 00541268    mov         dword ptr [ebp-5C],eax
 0054126B    dec         dword ptr [ebp-2C]
 0054126E    lea         eax,[ebp-24]
 00541271    mov         edx,2
 00541276    call        0067DCA0
 0054127B    dec         dword ptr [ebp-2C]
 0054127E    lea         eax,[ebp-20]
 00541281    mov         edx,2
 00541286    call        0067DCA0
 0054128B    dec         dword ptr [ebp-2C]
 0054128E    lea         eax,[ebp-1C]
 00541291    mov         edx,2
 00541296    call        0067DCA0
 0054129B    mov         word ptr [ebp-38],50
 005412A1    mov         ecx,dword ptr [ebp-5C]
 005412A4    test        ecx,ecx
>005412A6    je          005412D1
 005412A8    push        6E06C1
 005412AD    push        dword ptr [ebp-5C]
 005412B0    call        KERNEL32.GetProcAddress
 005412B5    mov         [006ECC30],eax;gvar_006ECC30
 005412BA    mov         eax,[006ECC30];0x0 gvar_006ECC30
 005412BF    test        eax,eax
>005412C1    je          005412C9
 005412C3    call        dword ptr ds:[6ECC30]
 005412C9    push        dword ptr [ebp-5C]
 005412CC    call        KERNEL32.FreeLibrary
 005412D1    mov         word ptr [ebp-38],8
 005412D7    dec         dword ptr [ebp-2C]
 005412DA    lea         eax,[ebp-8]
 005412DD    mov         edx,2
 005412E2    call        0067DCA0
 005412E7    dec         dword ptr [ebp-2C]
 005412EA    lea         eax,[ebp-4]
 005412ED    mov         edx,2
 005412F2    call        0067DCA0
 005412F7    mov         ecx,dword ptr [ebp-48]
 005412FA    mov         dword ptr fs:[0],ecx
 00541301    pop         ebx
 00541302    mov         esp,ebp
 00541304    pop         ebp
 00541305    ret
*}
end;

//00541308
procedure TFPlugins.bOkClick(Sender:TObject);
begin
{*
 00541308    push        ebp
 00541309    mov         ebp,esp
 0054130B    add         esp,0FFFFFFB0
 0054130E    push        ebx
 0054130F    mov         dword ptr [ebp-40],edx
 00541312    mov         dword ptr [ebp-3C],eax
 00541315    mov         eax,6E09C8
 0054131A    call        0066FECC
 0054131F    mov         word ptr [ebp-28],8
 00541325    mov         edx,6E06CD
 0054132A    lea         eax,[ebp-4]
 0054132D    call        0067DAB4
 00541332    inc         dword ptr [ebp-1C]
 00541335    lea         edx,[ebp-4]
 00541338    mov         eax,dword ptr [ebp-3C]
 0054133B    add         eax,300;TFPlugins.?f300:?
 00541340    call        0067DCD0
 00541345    dec         dword ptr [ebp-1C]
 00541348    lea         eax,[ebp-4]
 0054134B    mov         edx,2
 00541350    call        0067DCA0
 00541355    xor         ecx,ecx
 00541357    mov         dword ptr [ebp-44],ecx
>0054135A    jmp         00541473
 0054135F    mov         edx,dword ptr [ebp-44]
 00541362    mov         eax,dword ptr [ebp-3C]
 00541365    mov         eax,dword ptr [eax+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 0054136B    call        00570428
 00541370    test        al,al
>00541372    je          00541470
 00541378    mov         word ptr [ebp-28],20
 0054137E    mov         edx,dword ptr [ebp-3C]
 00541381    mov         ecx,dword ptr [edx+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 00541387    add         ecx,218;TCheckListBox.FItems:TStrings
 0054138D    mov         dword ptr [ebp-4C],ecx
 00541390    lea         eax,[ebp-8]
 00541393    call        00401EA8
 00541398    mov         ecx,eax
 0054139A    inc         dword ptr [ebp-1C]
 0054139D    mov         edx,dword ptr [ebp-4C]
 005413A0    mov         eax,dword ptr [edx]
 005413A2    mov         edx,dword ptr [ebp-44]
 005413A5    mov         ebx,dword ptr [eax]
 005413A7    call        dword ptr [ebx+0C]
 005413AA    mov         word ptr [ebp-28],14
 005413B0    mov         word ptr [ebp-28],2C
 005413B6    lea         eax,[ebp-0C]
 005413B9    mov         dl,2D
 005413BB    call        0067DB84
 005413C0    inc         dword ptr [ebp-1C]
 005413C3    lea         edx,[ebp-0C]
 005413C6    lea         eax,[ebp-8]
 005413C9    call        0067DEF4
 005413CE    mov         dword ptr [ebp-50],eax
 005413D1    dec         dword ptr [ebp-1C]
 005413D4    lea         eax,[ebp-0C]
 005413D7    mov         edx,2
 005413DC    call        0067DCA0
 005413E1    mov         word ptr [ebp-28],14
 005413E7    mov         ecx,dword ptr [ebp-50]
 005413EA    test        ecx,ecx
>005413EC    jle         00541458
 005413EE    mov         word ptr [ebp-28],38
 005413F4    lea         eax,[ebp-10]
 005413F7    call        00401EA8
 005413FC    push        eax
 005413FD    inc         dword ptr [ebp-1C]
 00541400    mov         ecx,dword ptr [ebp-50]
 00541403    dec         ecx
 00541404    lea         eax,[ebp-8]
 00541407    mov         edx,1
 0054140C    call        0067E0BC
 00541411    lea         ecx,[ebp-10]
 00541414    push        ecx
 00541415    lea         eax,[ebp-14]
 00541418    call        00401EA8
 0054141D    mov         edx,eax
 0054141F    inc         dword ptr [ebp-1C]
 00541422    pop         eax
 00541423    call        0067E030
 00541428    lea         edx,[ebp-14]
 0054142B    mov         eax,dword ptr [ebp-3C]
 0054142E    add         eax,300;TFPlugins.?f300:?
 00541433    call        0067DCD0
 00541438    dec         dword ptr [ebp-1C]
 0054143B    lea         eax,[ebp-14]
 0054143E    mov         edx,2
 00541443    call        0067DCA0
 00541448    dec         dword ptr [ebp-1C]
 0054144B    lea         eax,[ebp-10]
 0054144E    mov         edx,2
 00541453    call        0067DCA0
 00541458    dec         dword ptr [ebp-1C]
 0054145B    lea         eax,[ebp-8]
 0054145E    mov         edx,2
 00541463    call        0067DCA0
>00541468    jmp         00541499
 0054146A    mov         word ptr [ebp-28],0
 00541470    inc         dword ptr [ebp-44]
 00541473    mov         ecx,dword ptr [ebp-3C]
 00541476    mov         eax,dword ptr [ecx+2F0];TFPlugins.cklbPluginsList:TCheckListBox
 0054147C    add         eax,218;TCheckListBox.FItems:TStrings
 00541481    mov         dword ptr [ebp-48],eax
 00541484    mov         edx,dword ptr [ebp-48]
 00541487    mov         eax,dword ptr [edx]
 00541489    mov         edx,dword ptr [eax]
 0054148B    call        dword ptr [edx+14]
 0054148E    mov         ecx,dword ptr [ebp-44]
 00541491    cmp         eax,ecx
>00541493    jg          0054135F
 00541499    mov         eax,dword ptr [ebp-3C]
 0054149C    mov         dword ptr [eax+24C],1;TFPlugins.FModalResult:TModalResult
 005414A6    mov         edx,dword ptr [ebp-38]
 005414A9    mov         dword ptr fs:[0],edx
 005414B0    pop         ebx
 005414B1    mov         esp,ebp
 005414B3    pop         ebp
 005414B4    ret
*}
end;

//005414B8
procedure TFPlugins.bCancelClick(Sender:TObject);
begin
{*
 005414B8    push        ebp
 005414B9    mov         ebp,esp
 005414BB    add         esp,0FFFFFFD0
 005414BE    mov         dword ptr [ebp-30],edx
 005414C1    mov         dword ptr [ebp-2C],eax
 005414C4    mov         eax,6E0A1C
 005414C9    call        0066FECC
 005414CE    mov         word ptr [ebp-18],8
 005414D4    mov         edx,6E06CE
 005414D9    lea         eax,[ebp-4]
 005414DC    call        0067DAB4
 005414E1    inc         dword ptr [ebp-0C]
 005414E4    lea         edx,[ebp-4]
 005414E7    mov         eax,dword ptr [ebp-2C]
 005414EA    add         eax,300;TFPlugins.?f300:?
 005414EF    call        0067DCD0
 005414F4    dec         dword ptr [ebp-0C]
 005414F7    lea         eax,[ebp-4]
 005414FA    mov         edx,2
 005414FF    call        0067DCA0
 00541504    mov         ecx,dword ptr [ebp-2C]
 00541507    mov         dword ptr [ecx+24C],2;TFPlugins.FModalResult:TModalResult
 00541511    mov         eax,dword ptr [ebp-28]
 00541514    mov         fs:[00000000],eax
 0054151A    mov         esp,ebp
 0054151C    pop         ebp
 0054151D    ret
*}
end;

//00541520
procedure TFPlugins.FormCreate(Sender:TObject);
begin
{*
 00541520    push        ebp
 00541521    mov         ebp,esp
 00541523    add         esp,0FFFFFFF8
 00541526    mov         dword ptr [ebp-8],edx
 00541529    mov         dword ptr [ebp-4],eax
 0054152C    mov         eax,dword ptr [ebp-4]
 0054152F    call        00531284
 00541534    pop         ecx
 00541535    pop         ecx
 00541536    pop         ebp
 00541537    ret
*}
end;

//005415C0
destructor TFPlugins.Destroy;
begin
{*
 005415C0    push        ebp
 005415C1    mov         ebp,esp
 005415C3    add         esp,0FFFFFFD4
 005415C6    call        0067EF81
 005415CB    mov         byte ptr [ebp-29],dl
 005415CE    mov         dword ptr [ebp-28],eax
 005415D1    mov         eax,6E0C38
 005415D6    call        0066FECC
 005415DB    mov         dl,byte ptr [ebp-29]
 005415DE    test        dl,dl
>005415E0    jl          0054161A
 005415E2    dec         dword ptr [ebp-8]
 005415E5    mov         eax,dword ptr [ebp-28]
 005415E8    add         eax,300
 005415ED    mov         edx,2
 005415F2    call        0067DCA0
 005415F7    dec         dword ptr [ebp-8]
 005415FA    mov         eax,dword ptr [ebp-28]
 005415FD    add         eax,2FC
 00541602    mov         edx,2
 00541607    call        0067DCA0
 0054160C    sub         dword ptr [ebp-8],10
 00541610    xor         edx,edx
 00541612    mov         eax,dword ptr [ebp-28]
 00541615    call        0040235C
 0054161A    mov         ecx,dword ptr [ebp-24]
 0054161D    mov         dword ptr fs:[0],ecx
 00541624    mov         al,byte ptr [ebp-29]
 00541627    test        al,al
>00541629    jle         00541633
 0054162B    mov         eax,dword ptr [ebp-28]
 0054162E    call        0067EF74
 00541633    mov         esp,ebp
 00541635    pop         ebp
 00541636    ret
*}
end;

end.