//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit20;

interface

uses
  SysUtils, Classes;

type
  TCGaugeKind = (gkText, gkHorizontalBar, gkVerticalBar, gkPie, gkNeedle);
    @@Cdiroutl@Initialize; stdcall;//00546140
    @@Cdiroutl@Finalize; stdcall;//00546150
    constructor Create;//00546160
    //procedure sub_005461D0(?:?; ?:?);//005461D0
    //procedure sub_00546260(?:?; ?:?);//00546260
    //procedure sub_00546290(?:?; ?:?);//00546290
    @TCGauge@$bctr$qqrp18Classes@TComponent; stdcall;//005462C4
    //function sub_005463A4(?:?; ?:?):?;//005463A4
    @TCGauge@GetPercentDone$qqrv; stdcall;//00546404
    @TCGauge@Paint$qqrv; stdcall;//0054643C
    //function sub_005466A0(?:?; ?:?):?;//005466A0
    //procedure sub_005466D8(?:?; ?:?);//005466D8
    //function sub_00546740(?:?; ?:?):?;//00546740
    //procedure sub_00546778(?:?; ?:?);//00546778
    //procedure sub_005467E0(?:?);//005467E0
    //function sub_005467F0(?:?):?;//005467F0
    //procedure sub_005467FC(?:?);//005467FC
    //function sub_0054680C(?:?):?;//0054680C
    @TCGauge@PaintBackground$qqrp16Graphics@TBitmap; stdcall;//005468E8
    @TCGauge@PaintAsText$qqrp16Graphics@TBitmaprx11Types@TRect; stdcall;//00546968
    @TCGauge@PaintAsNothing$qqrp16Graphics@TBitmaprx11Types@TRect; stdcall;//00546B74
    @TCGauge@PaintAsBar$qqrp16Graphics@TBitmaprx11Types@TRect; stdcall;//00546BB0
    @TCGauge@PaintAsPie$qqrp16Graphics@TBitmaprx11Types@TRect; stdcall;//00546D18
    @TCGauge@PaintAsNeedle$qqrp16Graphics@TBitmaprx11Types@TRect; stdcall;//00546EE8
    procedure @TCGauge@SeTCGaugeKind$qqr11TCGaugeKind(Value:TCGaugeKind); stdcall;//00547108
    procedure @TCGauge@SetShowText$qqro(Value:bool); stdcall;//0054713C
    procedure @TCGauge@SetBorderStyle$qqr22Forms@TFormBorderStyle(Value:TFormBorderStyle); stdcall;//00547170
    procedure @TCGauge@SetForeColor$qqr15Graphics@TColor(Value:TColor); stdcall;//005471A4
    procedure @TCGauge@SetBackColor$qqr15Graphics@TColor(Value:TColor); stdcall;//005471D8
    procedure @TCGauge@SetMinValue$qqrl(Value:long); stdcall;//0054720C
    procedure @TCGauge@SetMaxValue$qqrl(Value:long); stdcall;//00547310
    procedure @TCGauge@SetProgress$qqrl(Value:long); stdcall;//0054740C
    @TCGauge@AddProgress$qqrl; stdcall;//0054748C
    @$xp$7TCGauge; stdcall;//005475FC
    destructor Destroy;//005478D8
    destructor Destroy;//00547948

implementation

//00546160
constructor TBltBitmap.Create;
begin
{*
 00546160    push        ebp
 00546161    mov         ebp,esp
 00546163    add         esp,0FFFFFFD4
 00546166    mov         byte ptr [ebp-8],dl
 00546169    test        dl,dl
>0054616B    jle         00546172
 0054616D    call        0067EF6C
 00546172    mov         byte ptr [ebp-29],dl
 00546175    mov         dword ptr [ebp-4],eax
 00546178    mov         eax,6E2710
 0054617D    call        0066FECC
 00546182    mov         word ptr [ebp-18],8
 00546188    xor         edx,edx
 0054618A    mov         eax,dword ptr [ebp-4]
 0054618D    call        TBitmap.Create
 00546192    add         dword ptr [ebp-0C],6
 00546196    mov         edx,dword ptr [ebp-28]
 00546199    mov         dword ptr fs:[0],edx
 005461A0    mov         eax,dword ptr [ebp-4]
 005461A3    cmp         byte ptr [ebp-29],0
>005461A7    je          005461AE
 005461A9    call        0067EF79
 005461AE    mov         esp,ebp
 005461B0    pop         ebp
 005461B1    ret
*}
end;

//005461D0
{*procedure sub_005461D0(?:?; ?:?);
begin
 005461D0    push        ebp
 005461D1    mov         ebp,esp
 005461D3    add         esp,0FFFFFFE8
 005461D6    mov         dword ptr [ebp-8],edx
 005461D9    mov         dword ptr [ebp-4],eax
 005461DC    mov         eax,dword ptr [ebp-8]
 005461DF    mov         edx,dword ptr [eax]
 005461E1    call        dword ptr [edx+2C]
 005461E4    mov         edx,eax
 005461E6    mov         eax,dword ptr [ebp-4]
 005461E9    mov         ecx,dword ptr [eax]
 005461EB    call        dword ptr [ecx+40]
 005461EE    mov         eax,dword ptr [ebp-8]
 005461F1    mov         edx,dword ptr [eax]
 005461F3    call        dword ptr [edx+20]
 005461F6    mov         edx,eax
 005461F8    mov         eax,dword ptr [ebp-4]
 005461FB    mov         ecx,dword ptr [eax]
 005461FD    call        dword ptr [ecx+34]
 00546200    mov         eax,dword ptr [ebp-4]
 00546203    call        TBitmap.GetCanvas
 00546208    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0054620B    mov         edx,80000006
 00546210    call        TBrush.SetColor
 00546215    mov         eax,dword ptr [ebp-4]
 00546218    call        TBitmap.GetCanvas
 0054621D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00546220    xor         edx,edx
 00546222    call        TBrush.SetStyle
 00546227    mov         eax,dword ptr [ebp-4]
 0054622A    mov         edx,dword ptr [eax]
 0054622C    call        dword ptr [edx+20]
 0054622F    push        eax
 00546230    lea         ecx,[ebp-18]
 00546233    push        ecx
 00546234    mov         eax,dword ptr [ebp-4]
 00546237    mov         edx,dword ptr [eax]
 00546239    call        dword ptr [edx+2C]
 0054623C    mov         ecx,eax
 0054623E    xor         edx,edx
 00546240    xor         eax,eax
 00546242    call        Rect
 00546247    lea         ecx,[ebp-18]
 0054624A    push        ecx
 0054624B    mov         eax,dword ptr [ebp-4]
 0054624E    call        TBitmap.GetCanvas
 00546253    pop         edx
 00546254    call        TCanvas.FillRect
 00546259    mov         esp,ebp
 0054625B    pop         ebp
 0054625C    ret
end;*}

//00546260
{*procedure sub_00546260(?:?; ?:?);
begin
 00546260    push        ebp
 00546261    mov         ebp,esp
 00546263    fild        dword ptr [ebp+8]
 00546266    fmul        qword ptr ds:[546288]
 0054626C    fild        dword ptr [ebp+0C]
 0054626F    fmulp       st(1),st
 00546271    add         esp,0FFFFFFF8
 00546274    fstp        qword ptr [esp]
 00546277    call        00676E30
 0054627C    add         esp,8
 0054627F    call        00676E64
 00546284    pop         ebp
 00546285    ret
end;*}

//00546290
{*procedure sub_00546290(?:?; ?:?);
begin
 00546290    push        ebp
 00546291    mov         ebp,esp
 00546293    cmp         dword ptr [ebp+0C],0
>00546297    jne         0054629D
 00546299    xor         eax,eax
 0054629B    pop         ebp
 0054629C    ret
 0054629D    fild        dword ptr [ebp+8]
 005462A0    fmul        dword ptr ds:[5462C0];100:Single
 005462A6    fild        dword ptr [ebp+0C]
 005462A9    fdivp       st(1),st
 005462AB    add         esp,0FFFFFFF8
 005462AE    fstp        qword ptr [esp]
 005462B1    call        00676E30
 005462B6    add         esp,8
 005462B9    call        00676E64
 005462BE    pop         ebp
 005462BF    ret
end;*}

//005463A4
{*function sub_005463A4(?:?; ?:?):?;
begin
 005463A4    push        ebp
 005463A5    mov         ebp,esp
 005463A7    add         esp,0FFFFFFF8
 005463AA    mov         byte ptr [ebp-5],dl
 005463AD    mov         dword ptr [ebp-4],eax
 005463B0    cmp         byte ptr [ebp-5],0
>005463B4    jl          005463E5
 005463B6    cmp         byte ptr [ebp-5],10
>005463BA    jg          005463E5
 005463BC    movsx       ecx,byte ptr [ebp-5]
 005463C0    and         ecx,80000007
>005463C6    jns         005463CD
 005463C8    dec         ecx
 005463C9    or          ecx,0FFFFFFF8
 005463CC    inc         ecx
 005463CD    mov         al,1
 005463CF    shl         al,cl
 005463D1    movsx       edx,byte ptr [ebp-5]
 005463D5    test        edx,edx
>005463D7    jns         005463DC
 005463D9    add         edx,7
 005463DC    sar         edx,3
 005463DF    mov         ecx,dword ptr [ebp-4]
 005463E2    or          byte ptr [ecx+edx],al
 005463E5    mov         eax,dword ptr [ebp-4]
 005463E8    pop         ecx
 005463E9    pop         ecx
 005463EA    pop         ebp
 005463EB    ret
end;*}

//005466A0
{*function sub_005466A0(?:?; ?:?):?;
begin
 005466A0    push        ebp
 005466A1    mov         ebp,esp
 005466A3    add         esp,0FFFFFFDC
 005466A6    mov         eax,6E2918
 005466AB    call        0066FECC
 005466B0    mov         word ptr [ebp-14],8
 005466B6    push        dword ptr [ebp+0C]
 005466B9    push        dword ptr [ebp+8]
 005466BC    call        004ACBB4
 005466C1    add         esp,8
 005466C4    mov         edx,dword ptr [ebp-24]
 005466C7    mov         dword ptr fs:[0],edx
 005466CE    mov         eax,dword ptr [ebp+8]
 005466D1    mov         esp,ebp
 005466D3    pop         ebp
 005466D4    ret
end;*}

//005466D8
{*procedure sub_005466D8(?:?; ?:?);
begin
 005466D8    push        ebp
 005466D9    mov         ebp,esp
 005466DB    add         esp,0FFFFFFD4
 005466DE    mov         eax,6E293C
 005466E3    call        0066FECC
 005466E8    cmp         dword ptr [ebp+8],0
>005466EC    je          00546730
 005466EE    push        dword ptr [ebp+8]
 005466F1    call        005467F0
 005466F6    pop         ecx
 005466F7    mov         dword ptr [ebp-8],eax
 005466FA    cmp         dword ptr [ebp-8],0
>005466FE    je          00546721
 00546700    mov         edx,dword ptr [ebp-8]
 00546703    mov         ecx,dword ptr [edx]
 00546705    mov         dword ptr [ebp-4],ecx
 00546708    mov         word ptr [ebp-1C],14
 0054670E    mov         edx,3
 00546713    mov         eax,dword ptr [ebp-8]
 00546716    mov         ecx,dword ptr [eax]
 00546718    call        dword ptr [ecx-4]
 0054671B    mov         word ptr [ebp-1C],8
 00546721    test        byte ptr [ebp+0C],1
>00546725    je          00546730
 00546727    push        dword ptr [ebp+8]
 0054672A    call        0066EAB0
 0054672F    pop         ecx
 00546730    mov         eax,dword ptr [ebp-2C]
 00546733    mov         fs:[00000000],eax
 00546739    mov         esp,ebp
 0054673B    pop         ebp
 0054673C    ret
end;*}

//00546740
{*function sub_00546740(?:?; ?:?):?;
begin
 00546740    push        ebp
 00546741    mov         ebp,esp
 00546743    add         esp,0FFFFFFDC
 00546746    mov         eax,6E296C
 0054674B    call        0066FECC
 00546750    mov         word ptr [ebp-14],8
 00546756    push        dword ptr [ebp+0C]
 00546759    push        dword ptr [ebp+8]
 0054675C    call        004ACBB4
 00546761    add         esp,8
 00546764    mov         edx,dword ptr [ebp-24]
 00546767    mov         dword ptr fs:[0],edx
 0054676E    mov         eax,dword ptr [ebp+8]
 00546771    mov         esp,ebp
 00546773    pop         ebp
 00546774    ret
end;*}

//00546778
{*procedure sub_00546778(?:?; ?:?);
begin
 00546778    push        ebp
 00546779    mov         ebp,esp
 0054677B    add         esp,0FFFFFFD4
 0054677E    mov         eax,6E2990
 00546783    call        0066FECC
 00546788    cmp         dword ptr [ebp+8],0
>0054678C    je          005467D0
 0054678E    push        dword ptr [ebp+8]
 00546791    call        0054680C
 00546796    pop         ecx
 00546797    mov         dword ptr [ebp-8],eax
 0054679A    cmp         dword ptr [ebp-8],0
>0054679E    je          005467C1
 005467A0    mov         edx,dword ptr [ebp-8]
 005467A3    mov         ecx,dword ptr [edx]
 005467A5    mov         dword ptr [ebp-4],ecx
 005467A8    mov         word ptr [ebp-1C],14
 005467AE    mov         edx,3
 005467B3    mov         eax,dword ptr [ebp-8]
 005467B6    mov         ecx,dword ptr [eax]
 005467B8    call        dword ptr [ecx-4]
 005467BB    mov         word ptr [ebp-1C],8
 005467C1    test        byte ptr [ebp+0C],1
>005467C5    je          005467D0
 005467C7    push        dword ptr [ebp+8]
 005467CA    call        0066EAB0
 005467CF    pop         ecx
 005467D0    mov         eax,dword ptr [ebp-2C]
 005467D3    mov         fs:[00000000],eax
 005467D9    mov         esp,ebp
 005467DB    pop         ebp
 005467DC    ret
end;*}

//005467E0
{*procedure sub_005467E0(?:?);
begin
 005467E0    push        ebp
 005467E1    mov         ebp,esp
 005467E3    push        dword ptr [ebp+8]
 005467E6    call        005467F0
 005467EB    pop         ecx
 005467EC    pop         ebp
 005467ED    ret
end;*}

//005467F0
{*function sub_005467F0(?:?):?;
begin
 005467F0    push        ebp
 005467F1    mov         ebp,esp
 005467F3    mov         eax,dword ptr [ebp+8]
 005467F6    mov         eax,dword ptr [eax]
 005467F8    pop         ebp
 005467F9    ret
end;*}

//005467FC
{*procedure sub_005467FC(?:?);
begin
 005467FC    push        ebp
 005467FD    mov         ebp,esp
 005467FF    push        dword ptr [ebp+8]
 00546802    call        0054680C
 00546807    pop         ecx
 00546808    pop         ebp
 00546809    ret
end;*}

//0054680C
{*function sub_0054680C(?:?):?;
begin
 0054680C    push        ebp
 0054680D    mov         ebp,esp
 0054680F    mov         eax,dword ptr [ebp+8]
 00546812    mov         eax,dword ptr [eax]
 00546814    pop         ebp
 00546815    ret
end;*}

//00547108
procedure @TCGauge@SeTCGaugeKind$qqr11TCGaugeKind(Value:TCGaugeKind); stdcall;
begin
{*
 00547108    push        ebp
 00547109    mov         ebp,esp
 0054710B    add         esp,0FFFFFFF8
 0054710E    mov         byte ptr [ebp-5],dl
 00547111    mov         dword ptr [ebp-4],eax
 00547114    mov         al,byte ptr [ebp-5]
 00547117    mov         edx,dword ptr [ebp-4]
 0054711A    cmp         al,byte ptr [edx+174]
>00547120    je          00547136
 00547122    mov         cl,byte ptr [ebp-5]
 00547125    mov         eax,dword ptr [ebp-4]
 00547128    mov         byte ptr [eax+174],cl
 0054712E    mov         eax,dword ptr [ebp-4]
 00547131    call        TControl.Refresh
 00547136    pop         ecx
 00547137    pop         ecx
 00547138    pop         ebp
 00547139    ret
*}
end;

//0054713C
procedure @TCGauge@SetShowText$qqro(Value:bool); stdcall;
begin
{*
 0054713C    push        ebp
 0054713D    mov         ebp,esp
 0054713F    add         esp,0FFFFFFF8
 00547142    mov         byte ptr [ebp-5],dl
 00547145    mov         dword ptr [ebp-4],eax
 00547148    mov         al,byte ptr [ebp-5]
 0054714B    mov         edx,dword ptr [ebp-4]
 0054714E    cmp         al,byte ptr [edx+175]
>00547154    je          0054716A
 00547156    mov         cl,byte ptr [ebp-5]
 00547159    mov         eax,dword ptr [ebp-4]
 0054715C    mov         byte ptr [eax+175],cl
 00547162    mov         eax,dword ptr [ebp-4]
 00547165    call        TControl.Refresh
 0054716A    pop         ecx
 0054716B    pop         ecx
 0054716C    pop         ebp
 0054716D    ret
*}
end;

//00547170
procedure @TCGauge@SetBorderStyle$qqr22Forms@TFormBorderStyle(Value:TFormBorderStyle); stdcall;
begin
{*
 00547170    push        ebp
 00547171    mov         ebp,esp
 00547173    add         esp,0FFFFFFF8
 00547176    mov         byte ptr [ebp-5],dl
 00547179    mov         dword ptr [ebp-4],eax
 0054717C    mov         al,byte ptr [ebp-5]
 0054717F    mov         edx,dword ptr [ebp-4]
 00547182    cmp         al,byte ptr [edx+176]
>00547188    je          0054719E
 0054718A    mov         cl,byte ptr [ebp-5]
 0054718D    mov         eax,dword ptr [ebp-4]
 00547190    mov         byte ptr [eax+176],cl
 00547196    mov         eax,dword ptr [ebp-4]
 00547199    call        TControl.Refresh
 0054719E    pop         ecx
 0054719F    pop         ecx
 005471A0    pop         ebp
 005471A1    ret
*}
end;

//005471A4
procedure @TCGauge@SetForeColor$qqr15Graphics@TColor(Value:TColor); stdcall;
begin
{*
 005471A4    push        ebp
 005471A5    mov         ebp,esp
 005471A7    add         esp,0FFFFFFF8
 005471AA    mov         dword ptr [ebp-8],edx
 005471AD    mov         dword ptr [ebp-4],eax
 005471B0    mov         eax,dword ptr [ebp-8]
 005471B3    mov         edx,dword ptr [ebp-4]
 005471B6    cmp         eax,dword ptr [edx+178]
>005471BC    je          005471D2
 005471BE    mov         ecx,dword ptr [ebp-8]
 005471C1    mov         eax,dword ptr [ebp-4]
 005471C4    mov         dword ptr [eax+178],ecx
 005471CA    mov         eax,dword ptr [ebp-4]
 005471CD    call        TControl.Refresh
 005471D2    pop         ecx
 005471D3    pop         ecx
 005471D4    pop         ebp
 005471D5    ret
*}
end;

//005471D8
procedure @TCGauge@SetBackColor$qqr15Graphics@TColor(Value:TColor); stdcall;
begin
{*
 005471D8    push        ebp
 005471D9    mov         ebp,esp
 005471DB    add         esp,0FFFFFFF8
 005471DE    mov         dword ptr [ebp-8],edx
 005471E1    mov         dword ptr [ebp-4],eax
 005471E4    mov         eax,dword ptr [ebp-8]
 005471E7    mov         edx,dword ptr [ebp-4]
 005471EA    cmp         eax,dword ptr [edx+17C]
>005471F0    je          00547206
 005471F2    mov         ecx,dword ptr [ebp-8]
 005471F5    mov         eax,dword ptr [ebp-4]
 005471F8    mov         dword ptr [eax+17C],ecx
 005471FE    mov         eax,dword ptr [ebp-4]
 00547201    call        TControl.Refresh
 00547206    pop         ecx
 00547207    pop         ecx
 00547208    pop         ebp
 00547209    ret
*}
end;

//0054720C
procedure @TCGauge@SetMinValue$qqrl(Value:long); stdcall;
begin
{*
 0054720C    push        ebp
 0054720D    mov         ebp,esp
 0054720F    add         esp,0FFFFFFCC
 00547212    mov         dword ptr [ebp-34],edx
 00547215    mov         dword ptr [ebp-30],eax
 00547218    mov         eax,6E2880
 0054721D    call        0066FECC
 00547222    mov         edx,dword ptr [ebp-34]
 00547225    mov         ecx,dword ptr [ebp-30]
 00547228    cmp         edx,dword ptr [ecx+168]
>0054722E    je          00547302
 00547234    mov         eax,dword ptr [ebp-34]
 00547237    mov         edx,dword ptr [ebp-30]
 0054723A    cmp         eax,dword ptr [edx+16C]
>00547240    jle         005472D4
 00547246    mov         word ptr [ebp-1C],8
 0054724C    lea         eax,[ebp-4]
 0054724F    call        00401EA8
 00547254    inc         dword ptr [ebp-10]
 00547257    mov         word ptr [ebp-1C],14
 0054725D    lea         edx,[ebp-2C]
 00547260    push        edx
 00547261    push        0
 00547263    push        0
 00547265    push        0
 00547267    push        1
 00547269    push        4B33C8;sub_004B33C8
 0054726E    push        0
 00547270    mov         ecx,dword ptr [ebp-30]
 00547273    mov         eax,dword ptr [ecx+16C]
 00547279    dec         eax
 0054727A    push        eax
 0054727B    push        80000001
 00547280    mov         word ptr [ebp-1C],20
 00547286    lea         eax,[ebp-8]
 00547289    call        00401EA8
 0054728E    mov         edx,eax
 00547290    inc         dword ptr [ebp-10]
 00547293    mov         eax,[006E9F78];^gvar_0063CD00
 00547298    call        0067E404
 0054729D    lea         eax,[ebp-8]
 005472A0    call        00403C0C
 005472A5    push        eax
 005472A6    lea         edx,[ebp-4]
 005472A9    push        edx
 005472AA    call        0067DE7C
 005472AF    add         esp,10
 005472B2    mov         ecx,dword ptr [eax]
 005472B4    mov         dl,1
 005472B6    mov         eax,[00656774];Exception
 005472BB    call        Exception.Create
 005472C0    push        eax
 005472C1    push        401AC0
 005472C6    call        0067AD11
 005472CB    add         esp,24
 005472CE    mov         word ptr [ebp-1C],0
 005472D4    mov         ecx,dword ptr [ebp-34]
 005472D7    mov         eax,dword ptr [ebp-30]
 005472DA    mov         dword ptr [eax+168],ecx
 005472E0    mov         edx,dword ptr [ebp-30]
 005472E3    mov         ecx,dword ptr [edx+170]
 005472E9    cmp         ecx,dword ptr [ebp-34]
>005472EC    jge         005472FA
 005472EE    mov         eax,dword ptr [ebp-34]
 005472F1    mov         edx,dword ptr [ebp-30]
 005472F4    mov         dword ptr [edx+170],eax
 005472FA    mov         eax,dword ptr [ebp-30]
 005472FD    call        TControl.Refresh
 00547302    mov         edx,dword ptr [ebp-2C]
 00547305    mov         dword ptr fs:[0],edx
 0054730C    mov         esp,ebp
 0054730E    pop         ebp
 0054730F    ret
*}
end;

//00547310
procedure @TCGauge@SetMaxValue$qqrl(Value:long); stdcall;
begin
{*
 00547310    push        ebp
 00547311    mov         ebp,esp
 00547313    add         esp,0FFFFFFCC
 00547316    mov         dword ptr [ebp-34],edx
 00547319    mov         dword ptr [ebp-30],eax
 0054731C    mov         eax,6E28DC
 00547321    call        0066FECC
 00547326    cmp         dword ptr [ebp-34],0
>0054732A    je          005473FE
 00547330    mov         edx,dword ptr [ebp-34]
 00547333    mov         ecx,dword ptr [ebp-30]
 00547336    cmp         edx,dword ptr [ecx+168]
>0054733C    jge         005473D0
 00547342    mov         word ptr [ebp-1C],8
 00547348    lea         eax,[ebp-4]
 0054734B    call        00401EA8
 00547350    inc         dword ptr [ebp-10]
 00547353    mov         word ptr [ebp-1C],14
 00547359    lea         edx,[ebp-2C]
 0054735C    push        edx
 0054735D    push        0
 0054735F    push        0
 00547361    push        0
 00547363    push        1
 00547365    push        4B33C8;sub_004B33C8
 0054736A    push        0
 0054736C    push        7FFFFFFF
 00547371    mov         ecx,dword ptr [ebp-30]
 00547374    mov         eax,dword ptr [ecx+168]
 0054737A    inc         eax
 0054737B    push        eax
 0054737C    mov         word ptr [ebp-1C],20
 00547382    lea         eax,[ebp-8]
 00547385    call        00401EA8
 0054738A    mov         edx,eax
 0054738C    inc         dword ptr [ebp-10]
 0054738F    mov         eax,[006E9F78];^gvar_0063CD00
 00547394    call        0067E404
 00547399    lea         eax,[ebp-8]
 0054739C    call        00403C0C
 005473A1    push        eax
 005473A2    lea         edx,[ebp-4]
 005473A5    push        edx
 005473A6    call        0067DE7C
 005473AB    add         esp,10
 005473AE    mov         ecx,dword ptr [eax]
 005473B0    mov         dl,1
 005473B2    mov         eax,[00656774];Exception
 005473B7    call        Exception.Create
 005473BC    push        eax
 005473BD    push        401AC0
 005473C2    call        0067AD11
 005473C7    add         esp,24
 005473CA    mov         word ptr [ebp-1C],0
 005473D0    mov         ecx,dword ptr [ebp-34]
 005473D3    mov         eax,dword ptr [ebp-30]
 005473D6    mov         dword ptr [eax+16C],ecx
 005473DC    mov         edx,dword ptr [ebp-30]
 005473DF    mov         ecx,dword ptr [edx+170]
 005473E5    cmp         ecx,dword ptr [ebp-34]
>005473E8    jle         005473F6
 005473EA    mov         eax,dword ptr [ebp-34]
 005473ED    mov         edx,dword ptr [ebp-30]
 005473F0    mov         dword ptr [edx+170],eax
 005473F6    mov         eax,dword ptr [ebp-30]
 005473F9    call        TControl.Refresh
 005473FE    mov         edx,dword ptr [ebp-2C]
 00547401    mov         dword ptr fs:[0],edx
 00547408    mov         esp,ebp
 0054740A    pop         ebp
 0054740B    ret
*}
end;

//0054740C
procedure @TCGauge@SetProgress$qqrl(Value:long); stdcall;
begin
{*
 0054740C    push        ebp
 0054740D    mov         ebp,esp
 0054740F    add         esp,0FFFFFFF4
 00547412    mov         dword ptr [ebp-8],edx
 00547415    mov         dword ptr [ebp-4],eax
 00547418    mov         eax,dword ptr [ebp-4]
 0054741B    call        @TCGauge@GetPercentDone$qqrv
 00547420    mov         dword ptr [ebp-0C],eax
 00547423    mov         edx,dword ptr [ebp-8]
 00547426    mov         ecx,dword ptr [ebp-4]
 00547429    cmp         edx,dword ptr [ecx+168]
>0054742F    jge         0054743F
 00547431    mov         eax,dword ptr [ebp-4]
 00547434    mov         edx,dword ptr [eax+168]
 0054743A    mov         dword ptr [ebp-8],edx
>0054743D    jmp         00547459
 0054743F    mov         ecx,dword ptr [ebp-8]
 00547442    mov         eax,dword ptr [ebp-4]
 00547445    cmp         ecx,dword ptr [eax+16C]
>0054744B    jle         00547459
 0054744D    mov         edx,dword ptr [ebp-4]
 00547450    mov         ecx,dword ptr [edx+16C]
 00547456    mov         dword ptr [ebp-8],ecx
 00547459    mov         eax,dword ptr [ebp-4]
 0054745C    mov         edx,dword ptr [eax+170]
 00547462    cmp         edx,dword ptr [ebp-8]
>00547465    je          00547488
 00547467    mov         ecx,dword ptr [ebp-8]
 0054746A    mov         eax,dword ptr [ebp-4]
 0054746D    mov         dword ptr [eax+170],ecx
 00547473    mov         eax,dword ptr [ebp-4]
 00547476    call        @TCGauge@GetPercentDone$qqrv
 0054747B    cmp         eax,dword ptr [ebp-0C]
>0054747E    je          00547488
 00547480    mov         eax,dword ptr [ebp-4]
 00547483    call        TControl.Refresh
 00547488    mov         esp,ebp
 0054748A    pop         ebp
 0054748B    ret
*}
end;

//005478D8
destructor TCGauge.Destroy;
begin
{*
 005478D8    push        ebp
 005478D9    mov         ebp,esp
 005478DB    add         esp,0FFFFFFD4
 005478DE    call        0067EF81
 005478E3    mov         byte ptr [ebp-29],dl
 005478E6    mov         dword ptr [ebp-28],eax
 005478E9    mov         eax,6E2B5C
 005478EE    call        0066FECC
 005478F3    cmp         byte ptr [ebp-29],0
>005478F7    jl          00547907
 005478F9    sub         dword ptr [ebp-8],8
 005478FD    xor         edx,edx
 005478FF    mov         eax,dword ptr [ebp-28]
 00547902    call        TGraphicControl.Destroy
 00547907    mov         edx,dword ptr [ebp-24]
 0054790A    mov         dword ptr fs:[0],edx
 00547911    cmp         byte ptr [ebp-29],0
>00547915    jle         0054791F
 00547917    mov         eax,dword ptr [ebp-28]
 0054791A    call        0067EF74
 0054791F    mov         esp,ebp
 00547921    pop         ebp
 00547922    ret
*}
end;

//00547948
destructor TBltBitmap.Destroy;
begin
{*
 00547948    push        ebp
 00547949    mov         ebp,esp
 0054794B    add         esp,0FFFFFFD4
 0054794E    call        0067EF81
 00547953    mov         byte ptr [ebp-29],dl
 00547956    mov         dword ptr [ebp-28],eax
 00547959    mov         eax,6E2B64
 0054795E    call        0066FECC
 00547963    cmp         byte ptr [ebp-29],0
>00547967    jl          00547977
 00547969    sub         dword ptr [ebp-8],6
 0054796D    xor         edx,edx
 0054796F    mov         eax,dword ptr [ebp-28]
 00547972    call        TBitmap.Destroy
 00547977    mov         edx,dword ptr [ebp-24]
 0054797A    mov         dword ptr fs:[0],edx
 00547981    cmp         byte ptr [ebp-29],0
>00547985    jle         0054798F
 00547987    mov         eax,dword ptr [ebp-28]
 0054798A    call        0067EF74
 0054798F    mov         esp,ebp
 00547991    pop         ebp
 00547992    ret
*}
end;

end.