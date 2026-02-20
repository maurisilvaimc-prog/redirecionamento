//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit11;

interface

uses
  SysUtils, Classes;

    @@Kbviewer@Initialize; stdcall;//004AAFB8
    @@Kbviewer@Finalize; stdcall;//004AAFC8
    //procedure sub_004AAFD8(?:TIdrDfmFormTree_11011981; ?:?; ?:?; ?:?);//004AAFD8
    constructor Create(AOwner:TComponent);//004AB0D0
    //function sub_004AB8D0(?:?):?;//004AB8D0
    //function sub_004AB938(?:?):?;//004AB938
    //procedure sub_004AB990(?:?; ?:?);//004AB990
    //function sub_004AB9C0(?:?; ?:?):?;//004AB9C0
    //procedure sub_004AB9F8(?:?; ?:?);//004AB9F8
    //function sub_004ABA60(?:?):?;//004ABA60
    //procedure sub_004ABB1C(?:?; ?:?);//004ABB1C
    @System@TObject@ClassName$qqrv; stdcall;//004ABC94
    //procedure sub_004ABCB8(?:?; ?:?);//004ABCB8
    //procedure sub_004ABCF4(?:?; ?:?);//004ABCF4
    //function sub_004ABE30(?:TIdrDfmFormTree_11011981; ?:?):?;//004ABE30
    //function sub_004ABEA8(?:?; ?:?; ?:?):?;//004ABEA8
    //function sub_004ABEC4(?:?; ?:?):?;//004ABEC4
    //function sub_004ABEF0(?:?; ?:?):?;//004ABEF0
    //function sub_004ABF08(?:?):?;//004ABF08
    //function sub_004ABF18(?:TIdrDfmFormTree_11011981; ?:?; ?:?; ?:?):?;//004ABF18
    //procedure sub_004AC0E8(?:TIdrDfmFormTree_11011981; ?:?; ?:TComponent);//004AC0E8
    //function sub_004AC118(?:?; ?:?):?;//004AC118
    //function sub_004AC1D8(?:TIdrDfmFormTree_11011981; ?:?):?;//004AC1D8
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//004AC260
    procedure tvFormKeyPress(Sender:TObject; var Key:Char);//004AC2E0
    //procedure sub_004AC310(?:?);//004AC310
    //procedure sub_004AC4F0(?:TControlCanvas; ?:?);//004AC4F0
    //function sub_004AC544(?:?; ?:?):?;//004AC544
    //procedure sub_004AC57C(?:?; ?:?);//004AC57C
    //function sub_004AC5E4(?:?):?;//004AC5E4
    //function sub_004AC608(?:?):?;//004AC608
    procedure tvFormDblClick(Sender:TObject);//004AC68C
    procedure dlgFindFind(?:TObject);//004AC7F8
    //function sub_004AC934(?:TFindOptions; ?:?):?;//004AC934
    procedure Expand1Click(Sender:TObject);//004AC98C
    procedure Collapse1Click(Sender:TObject);//004AC9C4
    procedure Find1Click(Sender:TObject);//004AC9FC
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//004ACA1C
    procedure FormCreate(Sender:TObject);//004ACA40
    //function sub_004ACA58(?:?):?;//004ACA58
    //procedure sub_004ACA80(?:?; ?:?);//004ACA80
    //function sub_004ACA9C(?:?; ?:?; ?:?):?;//004ACA9C
    //procedure sub_004ACBB4(?:?; ?:?);//004ACBB4
    //function sub_004ACBE8(?:?; ?:?; ?:?):?;//004ACBE8
    //function sub_004ACC0C(?:?; ?:?):?;//004ACC0C
    //procedure sub_004ACC28(?:?);//004ACC28
    //function sub_004ACC38(?:?; ?:?; ?:?):?;//004ACC38
    //function sub_004ACC54(?:?; ?:?):?;//004ACC54
    //procedure sub_004ACC6C(?:?);//004ACC6C
    //function sub_004ACC7C(?:?; ?:?):?;//004ACC7C
    //function sub_004ACC94(?:?; ?:?; ?:?):?;//004ACC94
    //function sub_004ACCCC(?:?; ?:?):?;//004ACCCC
    //function sub_004ACCF8(?:?; ?:?; ?:?; ?:?):?;//004ACCF8
    //function sub_004ACD78(?:?):?;//004ACD78
    //function sub_004ACDF4(?:?; ?:?):?;//004ACDF4
    //procedure sub_004ACE74(?:?);//004ACE74
    //function sub_004ACEB8(?:?; ?:?):?;//004ACEB8
    //function sub_004ACF64(?:?; ?:?):?;//004ACF64
    //function sub_004ACF8C(?:?; ?:?; ?:?):?;//004ACF8C
    //function sub_004ACFB0(?:?; ?:?):?;//004ACFB0
    //function sub_004ACFCC(?:?):?;//004ACFCC
    //function sub_004ACFF4(?:?; ?:?; ?:?):?;//004ACFF4
    //function sub_004AD034(?:?):?;//004AD034
    //function sub_004AD054(?:?):?;//004AD054
    //procedure sub_004AD05C(?:?);//004AD05C
    //function sub_004AD07C(?:?; ?:?):?;//004AD07C
    //function sub_004AD158(?:?):?;//004AD158
    //procedure sub_004AD280(?:?);//004AD280
    //function sub_004AD28C(?:?):?;//004AD28C
    //function sub_004AD294(?:?; ?:?; ?:?; ?:?):?;//004AD294
    //function sub_004AD710(?:?):?;//004AD710
    //procedure sub_004AD71C(?:?);//004AD71C
    //function sub_004AD73C(?:?):?;//004AD73C
    //function sub_004AD754(?:?):?;//004AD754
    //function sub_004AD760(?:?):?;//004AD760
    //function sub_004AD778(?:?; ?:?; ?:?):?;//004AD778
    //function sub_004AD8F8(?:?; ?:?):?;//004AD8F8
    //function sub_004AD918(?:?; ?:?; ?:?):?;//004AD918
    //function sub_004AD954(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004AD954
    //function sub_004ADABC(?:?; ?:?):?;//004ADABC
    //procedure sub_004ADB3C(?:?);//004ADB3C
    //procedure sub_004ADBD0(?:?; ?:?);//004ADBD0
    //function sub_004ADC1C(?:?; ?:?):?;//004ADC1C

implementation

//004AAFD8
{*procedure sub_004AAFD8(?:TIdrDfmFormTree_11011981; ?:?; ?:?; ?:?);
begin
 004AAFD8    push        ebp
 004AAFD9    mov         ebp,esp
 004AAFDB    add         esp,0FFFFFFC0
 004AAFDE    mov         dword ptr [ebp-34],ecx
 004AAFE1    mov         dword ptr [ebp-4],edx
 004AAFE4    mov         dword ptr [ebp-30],eax
 004AAFE7    mov         eax,6C31E4
 004AAFEC    call        0066FECC
 004AAFF1    mov         dword ptr [ebp-10],1
 004AAFF8    lea         edx,[ebp-4]
 004AAFFB    lea         eax,[ebp-4]
 004AAFFE    call        0067DAEC
 004AB003    inc         dword ptr [ebp-10]
 004AB006    mov         word ptr [ebp-1C],8
 004AB00C    mov         edx,dword ptr [ebp+8]
 004AB00F    mov         ecx,dword ptr [edx+8]
 004AB012    mov         dword ptr [ebp-38],ecx
 004AB015    xor         eax,eax
 004AB017    mov         dword ptr [ebp-3C],eax
 004AB01A    mov         edx,dword ptr [ebp-3C]
 004AB01D    mov         ecx,dword ptr [ebp-38]
 004AB020    cmp         edx,ecx
>004AB022    jge         004AB0B0
 004AB028    mov         edx,dword ptr [ebp-3C]
 004AB02B    mov         eax,dword ptr [ebp+8]
 004AB02E    call        TList.Get
 004AB033    mov         dword ptr [ebp-40],eax
 004AB036    mov         word ptr [ebp-1C],8
 004AB03C    mov         edx,dword ptr [ebp-4]
 004AB03F    mov         eax,dword ptr [ebp-40]
 004AB042    mov         eax,dword ptr [eax]
 004AB044    call        SameText
 004AB049    test        al,al
>004AB04B    je          004AB09F
 004AB04D    mov         edx,dword ptr [ebp-40]
 004AB050    push        dword ptr [edx+8]
 004AB053    mov         word ptr [ebp-1C],14
 004AB059    push        dword ptr [ebp-40]
 004AB05C    push        dword ptr [ebp-30]
 004AB05F    lea         eax,[ebp-8]
 004AB062    call        00401EA8
 004AB067    push        eax
 004AB068    inc         dword ptr [ebp-10]
 004AB06B    call        004ABCF4
 004AB070    add         esp,0C
 004AB073    lea         ecx,[ebp-8]
 004AB076    mov         ecx,dword ptr [ecx]
 004AB078    mov         eax,dword ptr [ebp-30]
 004AB07B    mov         edx,dword ptr [eax+2F0]
 004AB081    mov         eax,dword ptr [edx+26C]
 004AB087    mov         edx,dword ptr [ebp-34]
 004AB08A    call        00619A14
 004AB08F    dec         dword ptr [ebp-10]
 004AB092    lea         eax,[ebp-8]
 004AB095    mov         edx,2
 004AB09A    call        0067DCA0
 004AB09F    inc         dword ptr [ebp-3C]
 004AB0A2    mov         ecx,dword ptr [ebp-3C]
 004AB0A5    mov         eax,dword ptr [ebp-38]
 004AB0A8    cmp         ecx,eax
>004AB0AA    jl          004AB028
 004AB0B0    dec         dword ptr [ebp-10]
 004AB0B3    lea         eax,[ebp-4]
 004AB0B6    mov         edx,2
 004AB0BB    call        0067DCA0
 004AB0C0    mov         ecx,dword ptr [ebp-2C]
 004AB0C3    mov         dword ptr fs:[0],ecx
 004AB0CA    mov         esp,ebp
 004AB0CC    pop         ebp
 004AB0CD    ret         4
end;*}

//004AB0D0
constructor TIdrDfmFormTree_11011981.Create(AOwner:TComponent);
begin
{*
 004AB0D0    push        ebp
 004AB0D1    mov         ebp,esp
 004AB0D3    add         esp,0FFFFFF38
 004AB0D9    push        ebx
 004AB0DA    mov         byte ptr [ebp-6C],dl
 004AB0DD    test        dl,dl
>004AB0DF    jle         004AB0E6
 004AB0E1    call        0067EF6C
 004AB0E6    mov         dword ptr [ebp-94],ecx
 004AB0EC    mov         byte ptr [ebp-8D],dl
 004AB0F2    mov         dword ptr [ebp-4],eax
 004AB0F5    mov         eax,6C33E4
 004AB0FA    call        0066FECC
 004AB0FF    mov         word ptr [ebp-7C],8
 004AB105    mov         ecx,dword ptr [ebp-94]
 004AB10B    xor         edx,edx
 004AB10D    mov         eax,dword ptr [ebp-4]
 004AB110    call        0040207C
 004AB115    add         dword ptr [ebp-70],10
 004AB119    mov         edx,dword ptr [ebp-4]
 004AB11C    add         edx,308;TIdrDfmFormTree_11011981.?f308:?
 004AB122    push        edx
 004AB123    call        004AB8D0
 004AB128    pop         ecx
 004AB129    add         dword ptr [ebp-70],5
 004AB12D    mov         word ptr [ebp-7C],14
 004AB133    lea         ecx,[ebp-6]
 004AB136    push        ecx
 004AB137    call        004AB938
 004AB13C    pop         ecx
 004AB13D    inc         dword ptr [ebp-70]
 004AB140    mov         word ptr [ebp-7C],20
 004AB146    mov         eax,dword ptr [ebp-94]
 004AB14C    mov         dword ptr [ebp-98],eax
 004AB152    mov         eax,dword ptr [ebp-98]
 004AB158    call        00650B4C
 004AB15D    mov         dword ptr [ebp-9C],eax
 004AB163    mov         edx,dword ptr [ebp-9C]
 004AB169    dec         edx
>004AB16A    jle         004AB267
 004AB170    mov         word ptr [ebp-7C],2C
 004AB176    lea         eax,[ebp-18]
 004AB179    call        00401EA8
 004AB17E    push        eax
 004AB17F    inc         dword ptr [ebp-70]
 004AB182    mov         edx,6C310D
 004AB187    lea         eax,[ebp-14]
 004AB18A    call        0067DAB4
 004AB18F    inc         dword ptr [ebp-70]
 004AB192    lea         edx,[ebp-14]
 004AB195    mov         eax,dword ptr [ebp-98]
 004AB19B    add         eax,8;TComponent.Name:TComponentName
 004AB19E    pop         ecx
 004AB19F    call        0067DCF8
 004AB1A4    lea         edx,[ebp-18]
 004AB1A7    push        edx
 004AB1A8    lea         eax,[ebp-20]
 004AB1AB    call        00401EA8
 004AB1B0    push        eax
 004AB1B1    inc         dword ptr [ebp-70]
 004AB1B4    lea         eax,[ebp-1C]
 004AB1B7    mov         edx,dword ptr [ebp-9C]
 004AB1BD    call        0067DC18
 004AB1C2    mov         edx,eax
 004AB1C4    inc         dword ptr [ebp-70]
 004AB1C7    pop         ecx
 004AB1C8    pop         eax
 004AB1C9    call        0067DCF8
 004AB1CE    lea         eax,[ebp-20]
 004AB1D1    push        eax
 004AB1D2    lea         eax,[ebp-28]
 004AB1D5    call        00401EA8
 004AB1DA    push        eax
 004AB1DB    inc         dword ptr [ebp-70]
 004AB1DE    mov         edx,6C3110
 004AB1E3    lea         eax,[ebp-24]
 004AB1E6    call        0067DAB4
 004AB1EB    inc         dword ptr [ebp-70]
 004AB1EE    lea         edx,[ebp-24]
 004AB1F1    pop         ecx
 004AB1F2    pop         eax
 004AB1F3    call        0067DCF8
 004AB1F8    lea         edx,[ebp-28]
 004AB1FB    mov         edx,dword ptr [edx]
 004AB1FD    mov         eax,dword ptr [ebp-4]
 004AB200    call        TTabPage.SetCaption
 004AB205    dec         dword ptr [ebp-70]
 004AB208    lea         eax,[ebp-28]
 004AB20B    mov         edx,2
 004AB210    call        0067DCA0
 004AB215    dec         dword ptr [ebp-70]
 004AB218    lea         eax,[ebp-24]
 004AB21B    mov         edx,2
 004AB220    call        0067DCA0
 004AB225    dec         dword ptr [ebp-70]
 004AB228    lea         eax,[ebp-20]
 004AB22B    mov         edx,2
 004AB230    call        0067DCA0
 004AB235    dec         dword ptr [ebp-70]
 004AB238    lea         eax,[ebp-1C]
 004AB23B    mov         edx,2
 004AB240    call        0067DCA0
 004AB245    dec         dword ptr [ebp-70]
 004AB248    lea         eax,[ebp-18]
 004AB24B    mov         edx,2
 004AB250    call        0067DCA0
 004AB255    dec         dword ptr [ebp-70]
 004AB258    lea         eax,[ebp-14]
 004AB25B    mov         edx,2
 004AB260    call        0067DCA0
>004AB265    jmp         004AB2C8
 004AB267    mov         word ptr [ebp-7C],38
 004AB26D    lea         eax,[ebp-30]
 004AB270    call        00401EA8
 004AB275    push        eax
 004AB276    inc         dword ptr [ebp-70]
 004AB279    mov         edx,6C311D
 004AB27E    lea         eax,[ebp-2C]
 004AB281    call        0067DAB4
 004AB286    inc         dword ptr [ebp-70]
 004AB289    lea         edx,[ebp-2C]
 004AB28C    mov         eax,dword ptr [ebp-98]
 004AB292    add         eax,8;TComponent.Name:TComponentName
 004AB295    pop         ecx
 004AB296    call        0067DCF8
 004AB29B    lea         edx,[ebp-30]
 004AB29E    mov         edx,dword ptr [edx]
 004AB2A0    mov         eax,dword ptr [ebp-4]
 004AB2A3    call        TTabPage.SetCaption
 004AB2A8    dec         dword ptr [ebp-70]
 004AB2AB    lea         eax,[ebp-30]
 004AB2AE    mov         edx,2
 004AB2B3    call        0067DCA0
 004AB2B8    dec         dword ptr [ebp-70]
 004AB2BB    lea         eax,[ebp-2C]
 004AB2BE    mov         edx,2
 004AB2C3    call        0067DCA0
 004AB2C8    mov         word ptr [ebp-7C],44
 004AB2CE    mov         dl,1
 004AB2D0    mov         eax,[006422A4];TList
 004AB2D5    call        00413424
 004AB2DA    push        eax
 004AB2DB    lea         ecx,[ebp-0C]
 004AB2DE    push        ecx
 004AB2DF    call        004AB9C0
 004AB2E4    add         esp,8
 004AB2E7    inc         dword ptr [ebp-70]
 004AB2EA    mov         word ptr [ebp-7C],20
 004AB2F0    mov         word ptr [ebp-7C],50
 004AB2F6    mov         edx,dword ptr [ebp-98]
 004AB2FC    add         edx,8;TComponent.Name:TComponentName
 004AB2FF    lea         eax,[ebp-34]
 004AB302    call        0067DAEC
 004AB307    inc         dword ptr [ebp-70]
 004AB30A    push        dword ptr [eax]
 004AB30C    lea         ecx,[ebp-0C]
 004AB30F    push        ecx
 004AB310    call        004ABA60
 004AB315    pop         ecx
 004AB316    mov         ecx,eax
 004AB318    mov         eax,[006941A0];0x0 gvar_006941A0
 004AB31D    pop         edx
 004AB31E    call        0049FB58
 004AB323    dec         dword ptr [ebp-70]
 004AB326    lea         eax,[ebp-34]
 004AB329    mov         edx,2
 004AB32E    call        0067DCA0
 004AB333    mov         ecx,dword ptr [ebp-4]
 004AB336    mov         eax,dword ptr [ecx+2F0]
 004AB33C    mov         eax,dword ptr [eax+26C]
 004AB342    call        TTreeNodes.BeginUpdate
 004AB347    push        dword ptr [ebp-98]
 004AB34D    mov         word ptr [ebp-7C],5C
 004AB353    mov         edx,dword ptr [ebp-98]
 004AB359    add         edx,8;TComponent.Name:TComponentName
 004AB35C    lea         eax,[ebp-38]
 004AB35F    call        0067DAEC
 004AB364    inc         dword ptr [ebp-70]
 004AB367    mov         ecx,dword ptr [eax]
 004AB369    mov         edx,dword ptr [ebp-4]
 004AB36C    mov         eax,dword ptr [edx+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AB372    mov         eax,dword ptr [eax+26C];TTreeView.FTreeNodes:TTreeNodes
 004AB378    xor         edx,edx
 004AB37A    call        00619A78
 004AB37F    mov         dword ptr [ebp-0A0],eax
 004AB385    dec         dword ptr [ebp-70]
 004AB388    lea         eax,[ebp-38]
 004AB38B    mov         edx,2
 004AB390    call        0067DCA0
 004AB395    mov         word ptr [ebp-7C],20
 004AB39B    mov         ecx,dword ptr [ebp-98]
 004AB3A1    mov         edx,dword ptr [ebp-0A0]
 004AB3A7    mov         eax,dword ptr [ebp-4]
 004AB3AA    call        004AC0E8
 004AB3AF    lea         ecx,[ebp-0C]
 004AB3B2    push        ecx
 004AB3B3    call        004ABA60
 004AB3B8    pop         ecx
 004AB3B9    push        eax
 004AB3BA    mov         word ptr [ebp-7C],68
 004AB3C0    mov         edx,dword ptr [ebp-98]
 004AB3C6    add         edx,8;TComponent.Name:TComponentName
 004AB3C9    lea         eax,[ebp-3C]
 004AB3CC    call        0067DAEC
 004AB3D1    inc         dword ptr [ebp-70]
 004AB3D4    mov         edx,dword ptr [eax]
 004AB3D6    mov         ecx,dword ptr [ebp-0A0]
 004AB3DC    mov         eax,dword ptr [ebp-4]
 004AB3DF    call        004AAFD8
 004AB3E4    dec         dword ptr [ebp-70]
 004AB3E7    lea         eax,[ebp-3C]
 004AB3EA    mov         edx,2
 004AB3EF    call        0067DCA0
 004AB3F4    mov         byte ptr [ebp-0B1],0
 004AB3FB    mov         word ptr [ebp-7C],20
 004AB401    mov         word ptr [ebp-7C],74
 004AB407    lea         eax,[ebp-10]
 004AB40A    call        00401EA8
 004AB40F    inc         dword ptr [ebp-70]
 004AB412    mov         word ptr [ebp-7C],20
 004AB418    xor         edx,edx
 004AB41A    mov         dword ptr [ebp-0B8],edx
 004AB420    mov         ecx,dword ptr [ebp-0B8]
 004AB426    mov         eax,dword ptr [ebp-9C]
 004AB42C    cmp         ecx,eax
>004AB42E    jge         004AB7AD
 004AB434    mov         edx,dword ptr [ebp-0B8]
 004AB43A    mov         eax,dword ptr [ebp-98]
 004AB440    call        00650B0C
 004AB445    mov         dword ptr [ebp-0A4],eax
 004AB44B    mov         edx,dword ptr [ebp-0A4]
 004AB451    mov         ecx,dword ptr [ebp-4]
 004AB454    cmp         edx,ecx
>004AB456    je          004AB793
 004AB45C    mov         word ptr [ebp-7C],8C
 004AB462    push        dword ptr [ebp-0A4]
 004AB468    push        dword ptr [ebp-4]
 004AB46B    lea         eax,[ebp-40]
 004AB46E    call        00401EA8
 004AB473    push        eax
 004AB474    inc         dword ptr [ebp-70]
 004AB477    call        004ABB1C
 004AB47C    add         esp,0C
 004AB47F    mov         word ptr [ebp-7C],80
 004AB485    mov         edx,0FFFFFFF2
 004AB48A    mov         eax,dword ptr [ebp-0A4]
 004AB490    call        0067E488
 004AB495    mov         ebx,eax
 004AB497    mov         eax,dword ptr [ebp-0A4]
 004AB49D    call        ebx
 004AB49F    mov         dword ptr [ebp-0BC],eax
 004AB4A5    mov         edx,0FFFFFFF1
 004AB4AA    mov         eax,dword ptr [ebp-0A4]
 004AB4B0    call        0067E488
 004AB4B5    mov         ebx,eax
 004AB4B7    mov         eax,dword ptr [ebp-0A4]
 004AB4BD    call        ebx
 004AB4BF    test        al,al
>004AB4C1    je          004AB6E4
 004AB4C7    mov         edx,dword ptr [ebp-0BC]
 004AB4CD    test        edx,edx
>004AB4CF    jne         004AB520
 004AB4D1    mov         byte ptr [ebp-0B1],1
 004AB4D8    lea         eax,[ebp-10]
 004AB4DB    call        0040A248
 004AB4E0    test        al,al
>004AB4E2    jne         004AB515
 004AB4E4    mov         word ptr [ebp-7C],98
 004AB4EA    mov         edx,6C312C
 004AB4EF    lea         eax,[ebp-4C]
 004AB4F2    call        0067DAB4
 004AB4F7    inc         dword ptr [ebp-70]
 004AB4FA    lea         edx,[ebp-4C]
 004AB4FD    lea         eax,[ebp-10]
 004AB500    call        0067DCE4
 004AB505    dec         dword ptr [ebp-70]
 004AB508    lea         eax,[ebp-4C]
 004AB50B    mov         edx,2
 004AB510    call        0067DCA0
 004AB515    lea         edx,[ebp-40]
 004AB518    lea         eax,[ebp-10]
 004AB51B    call        0067DCE4
 004AB520    mov         word ptr [ebp-7C],0B0
 004AB526    mov         byte ptr [ebp-0BD],0
 004AB52D    mov         ecx,dword ptr [ebp-0BC]
 004AB533    test        ecx,ecx
>004AB535    je          004AB542
 004AB537    mov         edx,dword ptr [ebp-0BC]
 004AB53D    add         edx,8
>004AB540    jmp         004AB55B
 004AB542    mov         byte ptr [ebp-0BD],1
 004AB549    mov         edx,6C312F
 004AB54E    lea         eax,[ebp-50]
 004AB551    call        0067DAB4
 004AB556    mov         edx,eax
 004AB558    inc         dword ptr [ebp-70]
 004AB55B    lea         eax,[ebp-44]
 004AB55E    call        0067DAEC
 004AB563    inc         dword ptr [ebp-70]
 004AB566    mov         cl,byte ptr [ebp-0BD]
 004AB56C    test        cl,cl
>004AB56E    je          004AB587
 004AB570    dec         dword ptr [ebp-70]
 004AB573    lea         eax,[ebp-50]
 004AB576    mov         edx,2
 004AB57B    call        0067DCA0
 004AB580    mov         byte ptr [ebp-0BD],0
 004AB587    mov         word ptr [ebp-7C],0A4
 004AB58D    mov         word ptr [ebp-7C],0BC
 004AB593    mov         ecx,dword ptr [ebp-0A4]
 004AB599    mov         edx,dword ptr [ecx+4]
 004AB59C    add         edx,8
 004AB59F    lea         eax,[ebp-48]
 004AB5A2    call        0067DAEC
 004AB5A7    inc         dword ptr [ebp-70]
 004AB5AA    mov         word ptr [ebp-7C],0A4
 004AB5B0    mov         edx,dword ptr [ebp-0BC]
 004AB5B6    mov         eax,dword ptr [ebp-4]
 004AB5B9    call        004ABE30
 004AB5BE    mov         dword ptr [ebp-0AC],eax
 004AB5C4    mov         ecx,dword ptr [ebp-0AC]
 004AB5CA    test        ecx,ecx
>004AB5CC    jne         004AB6BC
 004AB5D2    mov         eax,dword ptr [ebp-0BC]
 004AB5D8    test        eax,eax
>004AB5DA    je          004AB6BC
 004AB5E0    mov         edx,0FFFFFFF2
 004AB5E5    mov         eax,dword ptr [ebp-0BC]
 004AB5EB    call        0067E488
 004AB5F0    mov         ebx,eax
 004AB5F2    mov         eax,dword ptr [ebp-0BC]
 004AB5F8    call        ebx
 004AB5FA    mov         dword ptr [ebp-0C4],eax
 004AB600    mov         word ptr [ebp-7C],0D4
 004AB606    mov         edx,dword ptr [ebp-0C4]
 004AB60C    add         edx,8
 004AB60F    lea         eax,[ebp-54]
 004AB612    call        0067DAEC
 004AB617    inc         dword ptr [ebp-70]
 004AB61A    mov         word ptr [ebp-7C],0C8
 004AB620    mov         edx,dword ptr [ebp-0C4]
 004AB626    mov         eax,dword ptr [ebp-4]
 004AB629    call        004ABE30
 004AB62E    mov         dword ptr [ebp-0C8],eax
 004AB634    push        dword ptr [ebp-0BC]
 004AB63A    mov         word ptr [ebp-7C],0E0
 004AB640    push        dword ptr [ebp-0BC]
 004AB646    push        dword ptr [ebp-4]
 004AB649    lea         eax,[ebp-58]
 004AB64C    call        00401EA8
 004AB651    push        eax
 004AB652    inc         dword ptr [ebp-70]
 004AB655    call        004ABB1C
 004AB65A    add         esp,0C
 004AB65D    lea         ecx,[ebp-58]
 004AB660    mov         ecx,dword ptr [ecx]
 004AB662    mov         eax,dword ptr [ebp-4]
 004AB665    mov         edx,dword ptr [eax+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AB66B    mov         eax,dword ptr [edx+26C];TTreeView.FTreeNodes:TTreeNodes
 004AB671    mov         edx,dword ptr [ebp-0C8]
 004AB677    call        00619A14
 004AB67C    mov         dword ptr [ebp-0AC],eax
 004AB682    dec         dword ptr [ebp-70]
 004AB685    lea         eax,[ebp-58]
 004AB688    mov         edx,2
 004AB68D    call        0067DCA0
 004AB692    mov         ecx,dword ptr [ebp-0BC]
 004AB698    mov         edx,dword ptr [ebp-0AC]
 004AB69E    mov         eax,dword ptr [ebp-4]
 004AB6A1    call        004AC0E8
 004AB6A6    dec         dword ptr [ebp-70]
 004AB6A9    lea         eax,[ebp-54]
 004AB6AC    mov         edx,2
 004AB6B1    call        0067DCA0
 004AB6B6    mov         word ptr [ebp-7C],0A4
 004AB6BC    dec         dword ptr [ebp-70]
 004AB6BF    lea         eax,[ebp-48]
 004AB6C2    mov         edx,2
 004AB6C7    call        0067DCA0
 004AB6CC    dec         dword ptr [ebp-70]
 004AB6CF    lea         eax,[ebp-44]
 004AB6D2    mov         edx,2
 004AB6D7    call        0067DCA0
 004AB6DC    mov         word ptr [ebp-7C],80
>004AB6E2    jmp         004AB6FB
 004AB6E4    mov         ecx,dword ptr [ebp-0A4]
 004AB6EA    mov         edx,dword ptr [ecx+4]
 004AB6ED    mov         eax,dword ptr [ebp-4]
 004AB6F0    call        004ABE30
 004AB6F5    mov         dword ptr [ebp-0AC],eax
 004AB6FB    push        dword ptr [ebp-0A4]
 004AB701    mov         ecx,dword ptr [ebp-4]
 004AB704    mov         eax,dword ptr [ecx+2F0]
 004AB70A    mov         eax,dword ptr [eax+26C]
 004AB710    mov         ecx,dword ptr [ebp-40]
 004AB713    mov         edx,dword ptr [ebp-0AC]
 004AB719    call        00619A14
 004AB71E    mov         dword ptr [ebp-0B0],eax
 004AB724    mov         ecx,dword ptr [ebp-0A4]
 004AB72A    mov         edx,dword ptr [ebp-0B0]
 004AB730    mov         eax,dword ptr [ebp-4]
 004AB733    call        004AC0E8
 004AB738    lea         eax,[ebp-0C]
 004AB73B    push        eax
 004AB73C    call        004ABA60
 004AB741    pop         ecx
 004AB742    push        eax
 004AB743    mov         word ptr [ebp-7C],0EC
 004AB749    mov         edx,dword ptr [ebp-0A4]
 004AB74F    add         edx,8
 004AB752    lea         eax,[ebp-5C]
 004AB755    call        0067DAEC
 004AB75A    inc         dword ptr [ebp-70]
 004AB75D    mov         edx,dword ptr [eax]
 004AB75F    mov         ecx,dword ptr [ebp-0B0]
 004AB765    mov         eax,dword ptr [ebp-4]
 004AB768    call        004AAFD8
 004AB76D    dec         dword ptr [ebp-70]
 004AB770    lea         eax,[ebp-5C]
 004AB773    mov         edx,2
 004AB778    call        0067DCA0
 004AB77D    dec         dword ptr [ebp-70]
 004AB780    lea         eax,[ebp-40]
 004AB783    mov         edx,2
 004AB788    call        0067DCA0
 004AB78D    mov         word ptr [ebp-7C],20
 004AB793    inc         dword ptr [ebp-0B8]
 004AB799    mov         ecx,dword ptr [ebp-0B8]
 004AB79F    mov         eax,dword ptr [ebp-9C]
 004AB7A5    cmp         ecx,eax
>004AB7A7    jl          004AB434
 004AB7AD    xor         edx,edx
 004AB7AF    mov         eax,dword ptr [ebp-0A0]
 004AB7B5    call        00618774
 004AB7BA    mov         edx,dword ptr [ebp-4]
 004AB7BD    mov         ecx,dword ptr [edx+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AB7C3    mov         eax,dword ptr [ecx+26C];TTreeView.FTreeNodes:TTreeNodes
 004AB7C9    call        TTreeNodes.EndUpdate
 004AB7CE    mov         dl,byte ptr [ebp-0B1]
 004AB7D4    test        dl,dl
>004AB7D6    je          004AB873
 004AB7DC    push        30
 004AB7DE    mov         word ptr [ebp-7C],0F8
 004AB7E4    lea         eax,[ebp-60]
 004AB7E7    call        00401EA8
 004AB7EC    mov         ecx,eax
 004AB7EE    inc         dword ptr [ebp-70]
 004AB7F1    lea         edx,[ebp-10]
 004AB7F4    mov         eax,6C3133
 004AB7F9    call        0067E37C
 004AB7FE    lea         edx,[ebp-60]
 004AB801    push        edx
 004AB802    lea         eax,[ebp-68]
 004AB805    call        00401EA8
 004AB80A    push        eax
 004AB80B    inc         dword ptr [ebp-70]
 004AB80E    mov         edx,6C3172
 004AB813    lea         eax,[ebp-64]
 004AB816    call        0067DAB4
 004AB81B    inc         dword ptr [ebp-70]
 004AB81E    lea         edx,[ebp-64]
 004AB821    pop         ecx
 004AB822    pop         eax
 004AB823    call        0067DCF8
 004AB828    lea         eax,[ebp-68]
 004AB82B    call        00403C0C
 004AB830    mov         edx,eax
 004AB832    mov         ecx,6C31B0
 004AB837    mov         eax,[006E9DCC];^Application:TApplication
 004AB83C    mov         eax,dword ptr [eax]
 004AB83E    call        0067D9DC
 004AB843    dec         dword ptr [ebp-70]
 004AB846    lea         eax,[ebp-68]
 004AB849    mov         edx,2
 004AB84E    call        0067DCA0
 004AB853    dec         dword ptr [ebp-70]
 004AB856    lea         eax,[ebp-64]
 004AB859    mov         edx,2
 004AB85E    call        0067DCA0
 004AB863    dec         dword ptr [ebp-70]
 004AB866    lea         eax,[ebp-60]
 004AB869    mov         edx,2
 004AB86E    call        0067DCA0
 004AB873    dec         dword ptr [ebp-70]
 004AB876    lea         eax,[ebp-10]
 004AB879    mov         edx,2
 004AB87E    call        0067DCA0
 004AB883    dec         dword ptr [ebp-70]
 004AB886    push        2
 004AB888    lea         ecx,[ebp-0C]
 004AB88B    push        ecx
 004AB88C    call        004AB9F8
 004AB891    add         esp,8
 004AB894    dec         dword ptr [ebp-70]
 004AB897    push        2
 004AB899    lea         eax,[ebp-6]
 004AB89C    push        eax
 004AB89D    call        004AB990
 004AB8A2    add         esp,8
 004AB8A5    mov         word ptr [ebp-7C],8
 004AB8AB    mov         edx,dword ptr [ebp-8C]
 004AB8B1    mov         dword ptr fs:[0],edx
 004AB8B8    mov         eax,dword ptr [ebp-4]
 004AB8BB    mov         dl,byte ptr [ebp-8D]
 004AB8C1    test        dl,dl
>004AB8C3    je          004AB8CA
 004AB8C5    call        0067EF79
 004AB8CA    pop         ebx
 004AB8CB    mov         esp,ebp
 004AB8CD    pop         ebp
 004AB8CE    ret
*}
end;

//004AB8D0
{*function sub_004AB8D0(?:?):?;
begin
 004AB8D0    push        ebp
 004AB8D1    mov         ebp,esp
 004AB8D3    add         esp,0FFFFFFCC
 004AB8D6    mov         eax,6C3794
 004AB8DB    call        0066FECC
 004AB8E0    mov         word ptr [ebp-1C],8
 004AB8E6    mov         word ptr [ebp-1C],20
 004AB8EC    lea         edx,[ebp-8]
 004AB8EF    push        edx
 004AB8F0    call        004ACA58
 004AB8F5    pop         ecx
 004AB8F6    inc         dword ptr [ebp-10]
 004AB8F9    push        eax
 004AB8FA    lea         ecx,[ebp-34]
 004AB8FD    push        ecx
 004AB8FE    push        dword ptr [ebp+8]
 004AB901    call        004ACA9C
 004AB906    add         esp,0C
 004AB909    add         dword ptr [ebp-10],4
 004AB90D    dec         dword ptr [ebp-10]
 004AB910    push        2
 004AB912    lea         eax,[ebp-8]
 004AB915    push        eax
 004AB916    call        004ACA80
 004AB91B    add         esp,8
 004AB91E    mov         word ptr [ebp-1C],14
 004AB924    mov         edx,dword ptr [ebp-2C]
 004AB927    mov         dword ptr fs:[0],edx
 004AB92E    mov         eax,dword ptr [ebp+8]
 004AB931    mov         esp,ebp
 004AB933    pop         ebp
 004AB934    ret
end;*}

//004AB938
{*function sub_004AB938(?:?):?;
begin
 004AB938    push        ebp
 004AB939    mov         ebp,esp
 004AB93B    add         esp,0FFFFFFDC
 004AB93E    mov         eax,6C37D0
 004AB943    call        0066FECC
 004AB948    mov         word ptr [ebp-14],8
 004AB94E    mov         edx,dword ptr ds:[6E9DD0];^Screen:TScreen
 004AB954    mov         ecx,dword ptr [edx]
 004AB956    mov         ax,word ptr [ecx+44];TScreen.FCursor:TCursor
 004AB95A    mov         edx,dword ptr [ebp+8]
 004AB95D    mov         word ptr [edx],ax
 004AB960    mov         ecx,dword ptr ds:[6E9DD0];^Screen:TScreen
 004AB966    mov         eax,dword ptr [ecx]
 004AB968    mov         dx,0FFF5
 004AB96C    call        005D5E2C
 004AB971    mov         ecx,dword ptr ds:[6E9DCC];^Application:TApplication
 004AB977    mov         eax,dword ptr [ecx]
 004AB979    call        005D820C
 004AB97E    mov         edx,dword ptr [ebp-24]
 004AB981    mov         dword ptr fs:[0],edx
 004AB988    mov         eax,dword ptr [ebp+8]
 004AB98B    mov         esp,ebp
 004AB98D    pop         ebp
 004AB98E    ret
end;*}

//004AB990
{*procedure sub_004AB990(?:?; ?:?);
begin
 004AB990    push        ebp
 004AB991    mov         ebp,esp
 004AB993    mov         eax,dword ptr [ebp+8]
 004AB996    test        eax,eax
>004AB998    je          004AB9BC
 004AB99A    mov         edx,dword ptr ds:[6E9DD0];^Screen:TScreen
 004AB9A0    mov         eax,dword ptr [edx]
 004AB9A2    mov         edx,dword ptr [ebp+8]
 004AB9A5    mov         dx,word ptr [edx]
 004AB9A8    call        005D5E2C
 004AB9AD    test        byte ptr [ebp+0C],1
>004AB9B1    je          004AB9BC
 004AB9B3    push        dword ptr [ebp+8]
 004AB9B6    call        0066EAB0
 004AB9BB    pop         ecx
 004AB9BC    pop         ebp
 004AB9BD    ret
end;*}

//004AB9C0
{*function sub_004AB9C0(?:?; ?:?):?;
begin
 004AB9C0    push        ebp
 004AB9C1    mov         ebp,esp
 004AB9C3    add         esp,0FFFFFFDC
 004AB9C6    mov         eax,6C37F4
 004AB9CB    call        0066FECC
 004AB9D0    mov         word ptr [ebp-14],8
 004AB9D6    push        dword ptr [ebp+0C]
 004AB9D9    push        dword ptr [ebp+8]
 004AB9DC    call        004ACBB4
 004AB9E1    add         esp,8
 004AB9E4    mov         edx,dword ptr [ebp-24]
 004AB9E7    mov         dword ptr fs:[0],edx
 004AB9EE    mov         eax,dword ptr [ebp+8]
 004AB9F1    mov         esp,ebp
 004AB9F3    pop         ebp
 004AB9F4    ret
end;*}

//004AB9F8
{*procedure sub_004AB9F8(?:?; ?:?);
begin
 004AB9F8    push        ebp
 004AB9F9    mov         ebp,esp
 004AB9FB    add         esp,0FFFFFFD4
 004AB9FE    mov         eax,6C3818
 004ABA03    call        0066FECC
 004ABA08    mov         edx,dword ptr [ebp+8]
 004ABA0B    test        edx,edx
>004ABA0D    je          004ABA52
 004ABA0F    push        dword ptr [ebp+8]
 004ABA12    call        004ABA60
 004ABA17    pop         ecx
 004ABA18    mov         dword ptr [ebp-8],eax
 004ABA1B    mov         ecx,dword ptr [ebp-8]
 004ABA1E    test        ecx,ecx
>004ABA20    je          004ABA43
 004ABA22    mov         eax,dword ptr [ebp-8]
 004ABA25    mov         edx,dword ptr [eax]
 004ABA27    mov         dword ptr [ebp-4],edx
 004ABA2A    mov         word ptr [ebp-1C],14
 004ABA30    mov         edx,3
 004ABA35    mov         eax,dword ptr [ebp-8]
 004ABA38    mov         ecx,dword ptr [eax]
 004ABA3A    call        dword ptr [ecx-4]
 004ABA3D    mov         word ptr [ebp-1C],8
 004ABA43    test        byte ptr [ebp+0C],1
>004ABA47    je          004ABA52
 004ABA49    push        dword ptr [ebp+8]
 004ABA4C    call        0066EAB0
 004ABA51    pop         ecx
 004ABA52    mov         eax,dword ptr [ebp-2C]
 004ABA55    mov         fs:[00000000],eax
 004ABA5B    mov         esp,ebp
 004ABA5D    pop         ebp
 004ABA5E    ret
end;*}

//004ABA60
{*function sub_004ABA60(?:?):?;
begin
 004ABA60    push        ebp
 004ABA61    mov         ebp,esp
 004ABA63    mov         eax,dword ptr [ebp+8]
 004ABA66    mov         eax,dword ptr [eax]
 004ABA68    pop         ebp
 004ABA69    ret
end;*}

//004ABB1C
{*procedure sub_004ABB1C(?:?; ?:?);
begin
 004ABB1C    push        ebp
 004ABB1D    mov         ebp,esp
 004ABB1F    add         esp,0FFFFFEC0
 004ABB25    mov         eax,6C3568
 004ABB2A    call        0066FECC
 004ABB2F    mov         word ptr [ebp-2C],14
 004ABB35    lea         edx,[ebp-140]
 004ABB3B    mov         eax,dword ptr [ebp+10]
 004ABB3E    call        @System@TObject@ClassName$qqrv
 004ABB43    lea         edx,[ebp-140]
 004ABB49    push        edx
 004ABB4A    lea         eax,[ebp-4]
 004ABB4D    call        00401EA8
 004ABB52    mov         edx,eax
 004ABB54    inc         dword ptr [ebp-20]
 004ABB57    pop         eax
 004ABB58    call        004A3978
 004ABB5D    mov         word ptr [ebp-2C],8
 004ABB63    mov         edx,dword ptr ds:[6C16F0];IdrDfmDefaultControl
 004ABB69    mov         eax,dword ptr [ebp+10]
 004ABB6C    call        006708AC
 004ABB71    mov         dword ptr [ebp-40],eax
 004ABB74    test        eax,eax
>004ABB76    je          004ABBDA
 004ABB78    mov         word ptr [ebp-2C],20
 004ABB7E    lea         eax,[ebp-0C]
 004ABB81    call        00401EA8
 004ABB86    push        eax
 004ABB87    inc         dword ptr [ebp-20]
 004ABB8A    push        dword ptr [ebp-40]
 004ABB8D    lea         eax,[ebp-8]
 004ABB90    call        00401EA8
 004ABB95    push        eax
 004ABB96    inc         dword ptr [ebp-20]
 004ABB99    call        004ABCB8
 004ABB9E    add         esp,8
 004ABBA1    lea         edx,[ebp-8]
 004ABBA4    mov         eax,6C31B8
 004ABBA9    pop         ecx
 004ABBAA    call        0067E37C
 004ABBAF    lea         edx,[ebp-0C]
 004ABBB2    lea         eax,[ebp-4]
 004ABBB5    call        0067DCD0
 004ABBBA    dec         dword ptr [ebp-20]
 004ABBBD    lea         eax,[ebp-0C]
 004ABBC0    mov         edx,2
 004ABBC5    call        0067DCA0
 004ABBCA    dec         dword ptr [ebp-20]
 004ABBCD    lea         eax,[ebp-8]
 004ABBD0    mov         edx,2
 004ABBD5    call        0067DCA0
 004ABBDA    mov         word ptr [ebp-2C],2C
 004ABBE0    lea         eax,[ebp-14]
 004ABBE3    call        00401EA8
 004ABBE8    push        eax
 004ABBE9    inc         dword ptr [ebp-20]
 004ABBEC    mov         edx,6C31BA
 004ABBF1    lea         eax,[ebp-10]
 004ABBF4    call        0067DAB4
 004ABBF9    inc         dword ptr [ebp-20]
 004ABBFC    lea         edx,[ebp-10]
 004ABBFF    mov         eax,dword ptr [ebp+10]
 004ABC02    add         eax,8
 004ABC05    pop         ecx
 004ABC06    call        0067DCF8
 004ABC0B    lea         edx,[ebp-14]
 004ABC0E    push        edx
 004ABC0F    lea         eax,[ebp-18]
 004ABC12    call        00401EA8
 004ABC17    mov         ecx,eax
 004ABC19    inc         dword ptr [ebp-20]
 004ABC1C    lea         edx,[ebp-4]
 004ABC1F    pop         eax
 004ABC20    call        0067DCF8
 004ABC25    lea         edx,[ebp-18]
 004ABC28    mov         eax,dword ptr [ebp+8]
 004ABC2B    call        0067DCD0
 004ABC30    mov         eax,dword ptr [ebp+8]
 004ABC33    mov         word ptr [ebp-2C],38
 004ABC39    push        eax
 004ABC3A    dec         dword ptr [ebp-20]
 004ABC3D    lea         eax,[ebp-18]
 004ABC40    mov         edx,2
 004ABC45    call        0067DCA0
 004ABC4A    dec         dword ptr [ebp-20]
 004ABC4D    lea         eax,[ebp-14]
 004ABC50    mov         edx,2
 004ABC55    call        0067DCA0
 004ABC5A    dec         dword ptr [ebp-20]
 004ABC5D    lea         eax,[ebp-10]
 004ABC60    mov         edx,2
 004ABC65    call        0067DCA0
 004ABC6A    dec         dword ptr [ebp-20]
 004ABC6D    lea         eax,[ebp-4]
 004ABC70    mov         edx,2
 004ABC75    call        0067DCA0
 004ABC7A    pop         eax
 004ABC7B    mov         word ptr [ebp-2C],2C
 004ABC81    inc         dword ptr [ebp-20]
 004ABC84    mov         edx,dword ptr [ebp-3C]
 004ABC87    mov         dword ptr fs:[0],edx
 004ABC8E    mov         esp,ebp
 004ABC90    pop         ebp
 004ABC91    ret
end;*}

//004ABCB8
{*procedure sub_004ABCB8(?:?; ?:?);
begin
 004ABCB8    push        ebp
 004ABCB9    mov         ebp,esp
 004ABCBB    add         esp,0FFFFFFDC
 004ABCBE    mov         eax,6C3848
 004ABCC3    call        0066FECC
 004ABCC8    mov         word ptr [ebp-14],8
 004ABCCE    mov         edx,dword ptr [ebp+0C]
 004ABCD1    add         edx,220
 004ABCD7    mov         eax,dword ptr [ebp+8]
 004ABCDA    call        0067DCD0
 004ABCDF    mov         eax,dword ptr [ebp+8]
 004ABCE2    inc         dword ptr [ebp-8]
 004ABCE5    mov         edx,dword ptr [ebp-24]
 004ABCE8    mov         dword ptr fs:[0],edx
 004ABCEF    mov         esp,ebp
 004ABCF1    pop         ebp
 004ABCF2    ret
end;*}

//004ABCF4
{*procedure sub_004ABCF4(?:?; ?:?);
begin
 004ABCF4    push        ebp
 004ABCF5    mov         ebp,esp
 004ABCF7    add         esp,0FFFFFFC8
 004ABCFA    mov         eax,6C360C
 004ABCFF    call        0066FECC
 004ABD04    mov         edx,dword ptr [ebp+10]
 004ABD07    mov         ecx,dword ptr [edx+8]
 004ABD0A    test        ecx,ecx
>004ABD0C    je          004ABE08
 004ABD12    mov         eax,dword ptr [ebp+10]
 004ABD15    mov         eax,dword ptr [eax+8]
 004ABD18    call        0053A308
 004ABD1D    mov         dword ptr [ebp-38],eax
 004ABD20    mov         edx,dword ptr [ebp-38]
 004ABD23    test        edx,edx
>004ABD25    je          004ABE08
 004ABD2B    mov         eax,dword ptr [ebp-38]
 004ABD2E    call        004858C4
 004ABD33    test        al,al
>004ABD35    je          004ABE08
 004ABD3B    mov         word ptr [ebp-24],8
 004ABD41    lea         eax,[ebp-0C]
 004ABD44    call        00401EA8
 004ABD49    mov         edx,eax
 004ABD4B    inc         dword ptr [ebp-18]
 004ABD4E    mov         eax,dword ptr [ebp-38]
 004ABD51    call        0048591C
 004ABD56    lea         edx,[ebp-0C]
 004ABD59    push        edx
 004ABD5A    lea         eax,[ebp-8]
 004ABD5D    call        00401EA8
 004ABD62    push        eax
 004ABD63    inc         dword ptr [ebp-18]
 004ABD66    mov         edx,6C31BC
 004ABD6B    lea         eax,[ebp-4]
 004ABD6E    call        0067DAB4
 004ABD73    inc         dword ptr [ebp-18]
 004ABD76    lea         edx,[ebp-4]
 004ABD79    mov         eax,dword ptr [ebp+10]
 004ABD7C    add         eax,4
 004ABD7F    pop         ecx
 004ABD80    call        0067DCF8
 004ABD85    lea         edx,[ebp-8]
 004ABD88    push        edx
 004ABD89    lea         eax,[ebp-10]
 004ABD8C    call        00401EA8
 004ABD91    mov         ecx,eax
 004ABD93    inc         dword ptr [ebp-18]
 004ABD96    pop         eax
 004ABD97    pop         edx
 004ABD98    call        0067DCF8
 004ABD9D    lea         edx,[ebp-10]
 004ABDA0    mov         eax,dword ptr [ebp+8]
 004ABDA3    call        0067DCD0
 004ABDA8    mov         eax,dword ptr [ebp+8]
 004ABDAB    mov         word ptr [ebp-24],14
 004ABDB1    push        eax
 004ABDB2    dec         dword ptr [ebp-18]
 004ABDB5    lea         eax,[ebp-10]
 004ABDB8    mov         edx,2
 004ABDBD    call        0067DCA0
 004ABDC2    dec         dword ptr [ebp-18]
 004ABDC5    lea         eax,[ebp-0C]
 004ABDC8    mov         edx,2
 004ABDCD    call        0067DCA0
 004ABDD2    dec         dword ptr [ebp-18]
 004ABDD5    lea         eax,[ebp-8]
 004ABDD8    mov         edx,2
 004ABDDD    call        0067DCA0
 004ABDE2    dec         dword ptr [ebp-18]
 004ABDE5    lea         eax,[ebp-4]
 004ABDE8    mov         edx,2
 004ABDED    call        0067DCA0
 004ABDF2    pop         eax
 004ABDF3    mov         word ptr [ebp-24],8
 004ABDF9    inc         dword ptr [ebp-18]
 004ABDFC    mov         edx,dword ptr [ebp-34]
 004ABDFF    mov         dword ptr fs:[0],edx
>004ABE06    jmp         004ABE2C
 004ABE08    mov         word ptr [ebp-24],20
 004ABE0E    mov         edx,dword ptr [ebp+10]
 004ABE11    add         edx,4
 004ABE14    mov         eax,dword ptr [ebp+8]
 004ABE17    call        0067DCD0
 004ABE1C    mov         eax,dword ptr [ebp+8]
 004ABE1F    inc         dword ptr [ebp-18]
 004ABE22    mov         edx,dword ptr [ebp-34]
 004ABE25    mov         dword ptr fs:[0],edx
 004ABE2C    mov         esp,ebp
 004ABE2E    pop         ebp
 004ABE2F    ret
end;*}

//004ABE30
{*function sub_004ABE30(?:TIdrDfmFormTree_11011981; ?:?):?;
begin
 004ABE30    push        ebp
 004ABE31    mov         ebp,esp
 004ABE33    add         esp,0FFFFFFEC
 004ABE36    mov         dword ptr [ebp-8],edx
 004ABE39    mov         dword ptr [ebp-4],eax
 004ABE3C    lea         eax,[ebp-8]
 004ABE3F    push        eax
 004ABE40    mov         edx,dword ptr [ebp-4]
 004ABE43    add         edx,308;TIdrDfmFormTree_11011981.?f308:?
 004ABE49    push        edx
 004ABE4A    lea         ecx,[ebp-10]
 004ABE4D    push        ecx
 004ABE4E    call        004ABEA8
 004ABE53    add         esp,0C
 004ABE56    lea         eax,[ebp-10]
 004ABE59    push        eax
 004ABE5A    lea         edx,[ebp-0C]
 004ABE5D    push        edx
 004ABE5E    call        004ABEC4
 004ABE63    add         esp,8
 004ABE66    mov         ecx,dword ptr [ebp-4]
 004ABE69    add         ecx,308
 004ABE6F    push        ecx
 004ABE70    lea         eax,[ebp-14]
 004ABE73    push        eax
 004ABE74    call        004ABEF0
 004ABE79    add         esp,8
 004ABE7C    lea         edx,[ebp-14]
 004ABE7F    push        edx
 004ABE80    lea         ecx,[ebp-0C]
 004ABE83    push        ecx
 004ABE84    call        00411C38
 004ABE89    add         esp,8
 004ABE8C    test        al,al
>004ABE8E    je          004ABE9F
 004ABE90    lea         eax,[ebp-0C]
 004ABE93    push        eax
 004ABE94    call        004ABF08
 004ABE99    pop         ecx
 004ABE9A    mov         eax,dword ptr [eax+4]
>004ABE9D    jmp         004ABEA1
 004ABE9F    xor         eax,eax
 004ABEA1    mov         esp,ebp
 004ABEA3    pop         ebp
 004ABEA4    ret
end;*}

//004ABEA8
{*function sub_004ABEA8(?:?; ?:?; ?:?):?;
begin
 004ABEA8    push        ebp
 004ABEA9    mov         ebp,esp
 004ABEAB    push        dword ptr [ebp+10]
 004ABEAE    push        dword ptr [ebp+0C]
 004ABEB1    push        dword ptr [ebp+8]
 004ABEB4    call        004ACBE8
 004ABEB9    add         esp,0C
 004ABEBC    mov         eax,dword ptr [ebp+8]
 004ABEBF    pop         ebp
 004ABEC0    ret
end;*}

//004ABEC4
{*function sub_004ABEC4(?:?; ?:?):?;
begin
 004ABEC4    push        ebp
 004ABEC5    mov         ebp,esp
 004ABEC7    add         esp,0FFFFFFDC
 004ABECA    mov         eax,6C385C
 004ABECF    call        0066FECC
 004ABED4    mov         edx,dword ptr [ebp+0C]
 004ABED7    mov         ecx,dword ptr [edx]
 004ABED9    mov         eax,dword ptr [ebp+8]
 004ABEDC    mov         dword ptr [eax],ecx
 004ABEDE    mov         edx,dword ptr [ebp-24]
 004ABEE1    mov         dword ptr fs:[0],edx
 004ABEE8    mov         eax,dword ptr [ebp+8]
 004ABEEB    mov         esp,ebp
 004ABEED    pop         ebp
 004ABEEE    ret
end;*}

//004ABEF0
{*function sub_004ABEF0(?:?; ?:?):?;
begin
 004ABEF0    push        ebp
 004ABEF1    mov         ebp,esp
 004ABEF3    push        dword ptr [ebp+0C]
 004ABEF6    push        dword ptr [ebp+8]
 004ABEF9    call        004ACC0C
 004ABEFE    add         esp,8
 004ABF01    mov         eax,dword ptr [ebp+8]
 004ABF04    pop         ebp
 004ABF05    ret
end;*}

//004ABF08
{*function sub_004ABF08(?:?):?;
begin
 004ABF08    push        ebp
 004ABF09    mov         ebp,esp
 004ABF0B    push        dword ptr [ebp+8]
 004ABF0E    call        004ACC28
 004ABF13    pop         ecx
 004ABF14    pop         ebp
 004ABF15    ret
end;*}

//004ABF18
{*function sub_004ABF18(?:TIdrDfmFormTree_11011981; ?:?; ?:?; ?:?):?;
begin
 004ABF18    push        ebp
 004ABF19    mov         ebp,esp
 004ABF1B    add         esp,0FFFFFFAC
 004ABF1E    mov         dword ptr [ebp-44],ecx
 004ABF21    mov         dword ptr [ebp-40],edx
 004ABF24    mov         dword ptr [ebp-3C],eax
 004ABF27    mov         eax,6C368C
 004ABF2C    call        0066FECC
 004ABF31    xor         edx,edx
 004ABF33    mov         dword ptr [ebp-48],edx
 004ABF36    mov         ecx,dword ptr [ebp-40]
 004ABF39    test        ecx,ecx
>004ABF3B    je          004ABF41
 004ABF3D    xor         eax,eax
>004ABF3F    jmp         004ABF43
 004ABF41    mov         al,1
 004ABF43    mov         byte ptr [ebp-49],al
 004ABF46    mov         edx,dword ptr [ebp-3C]
 004ABF49    mov         ecx,dword ptr [edx+2F0]
 004ABF4F    mov         eax,dword ptr [ecx+26C]
 004ABF55    mov         dword ptr [ebp-50],eax
 004ABF58    xor         edx,edx
 004ABF5A    mov         dword ptr [ebp-54],edx
>004ABF5D    jmp         004AC0C2
 004ABF62    mov         cl,byte ptr [ebp-49]
 004ABF65    test        cl,cl
>004ABF67    jne         004ABF88
 004ABF69    mov         edx,dword ptr [ebp-54]
 004ABF6C    mov         eax,dword ptr [ebp-50]
 004ABF6F    call        00619E30
 004ABF74    mov         ecx,dword ptr [ebp-40]
 004ABF77    cmp         eax,ecx
>004ABF79    jne         004AC0BF
 004ABF7F    mov         byte ptr [ebp-49],1
>004ABF83    jmp         004AC0BF
 004ABF88    mov         word ptr [ebp-28],14
 004ABF8E    mov         edx,dword ptr [ebp-54]
 004ABF91    mov         eax,dword ptr [ebp-50]
 004ABF94    call        00619E30
 004ABF99    mov         edx,eax
 004ABF9B    add         edx,8
 004ABF9E    lea         eax,[ebp-4]
 004ABFA1    call        0067DAEC
 004ABFA6    inc         dword ptr [ebp-1C]
 004ABFA9    mov         word ptr [ebp-28],8
 004ABFAF    mov         cl,byte ptr [ebp+8]
 004ABFB2    test        cl,cl
>004ABFB4    je          004AC01D
 004ABFB6    lea         eax,[ebp-0C]
 004ABFB9    mov         edx,dword ptr [ebp-44]
 004ABFBC    call        0067DAEC
 004ABFC1    inc         dword ptr [ebp-1C]
 004ABFC4    push        dword ptr [eax]
 004ABFC6    mov         word ptr [ebp-28],20
 004ABFCC    mov         edx,dword ptr [ebp-54]
 004ABFCF    mov         eax,dword ptr [ebp-50]
 004ABFD2    call        00619E30
 004ABFD7    mov         edx,eax
 004ABFD9    add         edx,8
 004ABFDC    lea         eax,[ebp-8]
 004ABFDF    call        0067DAEC
 004ABFE4    inc         dword ptr [ebp-1C]
 004ABFE7    mov         eax,dword ptr [eax]
 004ABFE9    pop         edx
 004ABFEA    call        00652D70
 004ABFEF    test        al,al
 004ABFF1    setne       cl
 004ABFF4    and         ecx,1
 004ABFF7    push        ecx
 004ABFF8    dec         dword ptr [ebp-1C]
 004ABFFB    lea         eax,[ebp-0C]
 004ABFFE    mov         edx,2
 004AC003    call        0067DCA0
 004AC008    dec         dword ptr [ebp-1C]
 004AC00B    lea         eax,[ebp-8]
 004AC00E    mov         edx,2
 004AC013    call        0067DCA0
 004AC018    pop         ecx
 004AC019    test        ecx,ecx
>004AC01B    jne         004AC089
 004AC01D    mov         al,byte ptr [ebp+8]
 004AC020    test        al,al
>004AC022    jne         004AC0A9
 004AC028    lea         eax,[ebp-14]
 004AC02B    mov         edx,dword ptr [ebp-44]
 004AC02E    call        0067DAEC
 004AC033    inc         dword ptr [ebp-1C]
 004AC036    push        dword ptr [eax]
 004AC038    mov         edx,dword ptr [ebp-54]
 004AC03B    mov         eax,dword ptr [ebp-50]
 004AC03E    call        00619E30
 004AC043    mov         edx,eax
 004AC045    add         edx,8
 004AC048    lea         eax,[ebp-10]
 004AC04B    call        0067DAEC
 004AC050    inc         dword ptr [ebp-1C]
 004AC053    mov         eax,dword ptr [eax]
 004AC055    pop         edx
 004AC056    call        00652CC8
 004AC05B    test        al,al
 004AC05D    setne       cl
 004AC060    and         ecx,1
 004AC063    push        ecx
 004AC064    dec         dword ptr [ebp-1C]
 004AC067    lea         eax,[ebp-14]
 004AC06A    mov         edx,2
 004AC06F    call        0067DCA0
 004AC074    dec         dword ptr [ebp-1C]
 004AC077    lea         eax,[ebp-10]
 004AC07A    mov         edx,2
 004AC07F    call        0067DCA0
 004AC084    pop         ecx
 004AC085    test        ecx,ecx
>004AC087    je          004AC0A9
 004AC089    mov         edx,dword ptr [ebp-54]
 004AC08C    mov         eax,dword ptr [ebp-50]
 004AC08F    call        00619E30
 004AC094    mov         dword ptr [ebp-48],eax
 004AC097    dec         dword ptr [ebp-1C]
 004AC09A    lea         eax,[ebp-4]
 004AC09D    mov         edx,2
 004AC0A2    call        0067DCA0
>004AC0A7    jmp         004AC0D5
 004AC0A9    dec         dword ptr [ebp-1C]
 004AC0AC    lea         eax,[ebp-4]
 004AC0AF    mov         edx,2
 004AC0B4    call        0067DCA0
 004AC0B9    mov         word ptr [ebp-28],0
 004AC0BF    inc         dword ptr [ebp-54]
 004AC0C2    mov         eax,dword ptr [ebp-50]
 004AC0C5    call        006198F0
 004AC0CA    mov         edx,dword ptr [ebp-54]
 004AC0CD    cmp         eax,edx
>004AC0CF    jg          004ABF62
 004AC0D5    mov         eax,dword ptr [ebp-48]
 004AC0D8    mov         edx,dword ptr [ebp-38]
 004AC0DB    mov         dword ptr fs:[0],edx
 004AC0E2    mov         esp,ebp
 004AC0E4    pop         ebp
 004AC0E5    ret         4
end;*}

//004AC0E8
{*procedure sub_004AC0E8(?:TIdrDfmFormTree_11011981; ?:?; ?:TComponent);
begin
 004AC0E8    push        ebp
 004AC0E9    mov         ebp,esp
 004AC0EB    add         esp,0FFFFFFF4
 004AC0EE    mov         dword ptr [ebp-0C],ecx
 004AC0F1    mov         dword ptr [ebp-8],edx
 004AC0F4    mov         dword ptr [ebp-4],eax
 004AC0F7    lea         eax,[ebp-0C]
 004AC0FA    push        eax
 004AC0FB    mov         edx,dword ptr [ebp-4]
 004AC0FE    add         edx,308;TIdrDfmFormTree_11011981.?f308:?
 004AC104    push        edx
 004AC105    call        004AC118
 004AC10A    add         esp,8
 004AC10D    mov         ecx,dword ptr [ebp-8]
 004AC110    mov         dword ptr [eax],ecx
 004AC112    mov         esp,ebp
 004AC114    pop         ebp
 004AC115    ret
end;*}

//004AC118
{*function sub_004AC118(?:?; ?:?):?;
begin
 004AC118    push        ebp
 004AC119    mov         ebp,esp
 004AC11B    add         esp,0FFFFFFE0
 004AC11E    push        dword ptr [ebp+0C]
 004AC121    push        dword ptr [ebp+8]
 004AC124    lea         eax,[ebp-4]
 004AC127    push        eax
 004AC128    call        004ACC38
 004AC12D    add         esp,0C
 004AC130    push        dword ptr [ebp+8]
 004AC133    lea         edx,[ebp-8]
 004AC136    push        edx
 004AC137    call        004ABEF0
 004AC13C    add         esp,8
 004AC13F    lea         ecx,[ebp-8]
 004AC142    push        ecx
 004AC143    lea         eax,[ebp-4]
 004AC146    push        eax
 004AC147    call        0045D530
 004AC14C    add         esp,8
 004AC14F    test        al,al
>004AC151    jne         004AC180
 004AC153    lea         edx,[ebp-4]
 004AC156    push        edx
 004AC157    call        004ACC6C
 004AC15C    pop         ecx
 004AC15D    push        eax
 004AC15E    push        dword ptr [ebp+0C]
 004AC161    push        dword ptr [ebp+8]
 004AC164    lea         ecx,[ebp-10]
 004AC167    push        ecx
 004AC168    call        004ACC54
 004AC16D    add         esp,8
 004AC170    lea         eax,[ebp-10]
 004AC173    push        eax
 004AC174    call        004ACC7C
 004AC179    add         esp,0C
 004AC17C    test        al,al
>004AC17E    je          004AC1C4
 004AC180    xor         edx,edx
 004AC182    mov         dword ptr [ebp-20],edx
 004AC185    lea         ecx,[ebp-20]
 004AC188    push        ecx
 004AC189    push        dword ptr [ebp+0C]
 004AC18C    lea         eax,[ebp-1C]
 004AC18F    push        eax
 004AC190    call        004ACC94
 004AC195    add         esp,0C
 004AC198    push        eax
 004AC199    add         esp,0FFFFFFFC
 004AC19C    lea         edx,[ebp-4]
 004AC19F    push        edx
 004AC1A0    lea         ecx,[esp+4]
 004AC1A4    push        ecx
 004AC1A5    call        004ACCCC
 004AC1AA    add         esp,8
 004AC1AD    push        dword ptr [ebp+8]
 004AC1B0    lea         eax,[ebp-14]
 004AC1B3    push        eax
 004AC1B4    call        004ACCF8
 004AC1B9    add         esp,10
 004AC1BC    lea         edx,[ebp-14]
 004AC1BF    mov         ecx,dword ptr [edx]
 004AC1C1    mov         dword ptr [ebp-4],ecx
 004AC1C4    lea         eax,[ebp-4]
 004AC1C7    push        eax
 004AC1C8    call        004ACC6C
 004AC1CD    pop         ecx
 004AC1CE    add         eax,4
 004AC1D1    mov         esp,ebp
 004AC1D3    pop         ebp
 004AC1D4    ret
end;*}

//004AC1D8
{*function sub_004AC1D8(?:TIdrDfmFormTree_11011981; ?:?):?;
begin
 004AC1D8    push        ebp
 004AC1D9    mov         ebp,esp
 004AC1DB    add         esp,0FFFFFFD0
 004AC1DE    mov         dword ptr [ebp-30],edx
 004AC1E1    mov         dword ptr [ebp-2C],eax
 004AC1E4    mov         eax,6C36C8
 004AC1E9    call        0066FECC
 004AC1EE    mov         edx,dword ptr [ebp-30]
 004AC1F1    test        edx,edx
>004AC1F3    je          004AC246
 004AC1F5    mov         eax,dword ptr [ebp-30]
 004AC1F8    add         eax,8
 004AC1FB    call        0040A248
 004AC200    test        al,al
>004AC202    jne         004AC246
 004AC204    mov         word ptr [ebp-18],8
 004AC20A    mov         edx,6C31BE
 004AC20F    lea         eax,[ebp-4]
 004AC212    call        0067DAB4
 004AC217    inc         dword ptr [ebp-0C]
 004AC21A    lea         edx,[ebp-4]
 004AC21D    mov         eax,dword ptr [ebp-30]
 004AC220    add         eax,8
 004AC223    call        0067DEF4
 004AC228    test        eax,eax
 004AC22A    setne       dl
 004AC22D    and         edx,1
 004AC230    push        edx
 004AC231    dec         dword ptr [ebp-0C]
 004AC234    lea         eax,[ebp-4]
 004AC237    mov         edx,2
 004AC23C    call        0067DCA0
 004AC241    pop         ecx
 004AC242    test        ecx,ecx
>004AC244    jne         004AC24A
 004AC246    xor         eax,eax
>004AC248    jmp         004AC24F
 004AC24A    mov         eax,1
 004AC24F    mov         edx,dword ptr [ebp-28]
 004AC252    mov         dword ptr fs:[0],edx
 004AC259    mov         esp,ebp
 004AC25B    pop         ebp
 004AC25C    ret
end;*}

//004AC260
procedure TIdrDfmFormTree_11011981.FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin
{*
 004AC260    push        ebp
 004AC261    mov         ebp,esp
 004AC263    add         esp,0FFFFFFF0
 004AC266    mov         dword ptr [ebp-0C],ecx
 004AC269    mov         dword ptr [ebp-8],edx
 004AC26C    mov         dword ptr [ebp-4],eax
 004AC26F    mov         eax,dword ptr [ebp-0C]
 004AC272    cmp         word ptr [eax],1B
>004AC276    jne         004AC29E
 004AC278    mov         edx,dword ptr [ebp-0C]
 004AC27B    mov         word ptr [edx],0
 004AC280    mov         eax,dword ptr [ebp-4]
 004AC283    call        005D3F3C
 004AC288    mov         edx,dword ptr [ebp-4]
 004AC28B    mov         ecx,dword ptr [edx+4];TIdrDfmFormTree_11011981.FOwner:TComponent
 004AC28E    mov         dword ptr [ebp-10],ecx
 004AC291    mov         eax,dword ptr [ebp-10]
 004AC294    mov         edx,dword ptr [eax]
 004AC296    call        dword ptr [edx+0C0]
>004AC29C    jmp         004AC2D9
 004AC29E    mov         ecx,dword ptr [ebp-0C]
 004AC2A1    cmp         word ptr [ecx],72
>004AC2A5    jne         004AC2B4
 004AC2A7    mov         edx,dword ptr [ebp-8]
 004AC2AA    mov         eax,dword ptr [ebp-4]
 004AC2AD    call        TIdrDfmFormTree_11011981.dlgFindFind
>004AC2B2    jmp         004AC2D9
 004AC2B4    lea         eax,[ebp+8]
 004AC2B7    mov         dl,2
 004AC2B9    call        004025CC
 004AC2BE    test        al,al
>004AC2C0    je          004AC2D9
 004AC2C2    mov         ecx,dword ptr [ebp-0C]
 004AC2C5    cmp         word ptr [ecx],46
>004AC2C9    jne         004AC2D9
 004AC2CB    mov         eax,dword ptr [ebp-4]
 004AC2CE    mov         eax,dword ptr [eax+2F4];TIdrDfmFormTree_11011981.dlgFind:TFindDialog
 004AC2D4    mov         edx,dword ptr [eax]
 004AC2D6    call        dword ptr [edx+3C];TFindDialog.Execute
 004AC2D9    mov         esp,ebp
 004AC2DB    pop         ebp
 004AC2DC    ret         4
*}
end;

//004AC2E0
procedure TIdrDfmFormTree_11011981.tvFormKeyPress(Sender:TObject; var Key:Char);
begin
{*
 004AC2E0    push        ebp
 004AC2E1    mov         ebp,esp
 004AC2E3    add         esp,0FFFFFFF4
 004AC2E6    mov         dword ptr [ebp-0C],ecx
 004AC2E9    mov         dword ptr [ebp-8],edx
 004AC2EC    mov         dword ptr [ebp-4],eax
 004AC2EF    mov         eax,dword ptr [ebp-0C]
 004AC2F2    movsx       edx,byte ptr [eax]
 004AC2F5    cmp         edx,0D
>004AC2F8    jne         004AC30B
 004AC2FA    mov         ecx,dword ptr [ebp-0C]
 004AC2FD    mov         byte ptr [ecx],0
 004AC300    mov         edx,dword ptr [ebp-8]
 004AC303    mov         eax,dword ptr [ebp-4]
 004AC306    call        TIdrDfmFormTree_11011981.tvFormDblClick
 004AC30B    mov         esp,ebp
 004AC30D    pop         ebp
 004AC30E    ret
*}
end;

//004AC310
{*procedure sub_004AC310(?:?);
begin
 004AC310    push        ebp
 004AC311    mov         ebp,esp
 004AC313    add         esp,0FFFFFF84
 004AC316    push        esi
 004AC317    push        edi
 004AC318    mov         eax,6C36FC
 004AC31D    call        0066FECC
 004AC322    mov         word ptr [ebp-18],8
 004AC328    mov         dl,1
 004AC32A    mov         eax,[005ED808];TControlCanvas
 004AC32F    call        004AC4F0
 004AC334    push        eax
 004AC335    lea         edx,[ebp-4]
 004AC338    push        edx
 004AC339    call        004AC544
 004AC33E    add         esp,8
 004AC341    inc         dword ptr [ebp-0C]
 004AC344    mov         word ptr [ebp-18],14
 004AC34A    mov         ecx,dword ptr [ebp+0C]
 004AC34D    mov         eax,dword ptr [ecx+30]
 004AC350    mov         dword ptr [ebp-2C],eax
 004AC353    mov         edx,dword ptr [ebp-2C]
 004AC356    test        edx,edx
>004AC358    jne         004AC360
 004AC35A    mov         ecx,dword ptr [ebp+0C]
 004AC35D    mov         dword ptr [ebp-2C],ecx
 004AC360    lea         eax,[ebp-4C]
 004AC363    push        eax
 004AC364    call        004AC5E4
 004AC369    pop         ecx
 004AC36A    lea         edx,[ebp-4]
 004AC36D    push        edx
 004AC36E    call        004AC608
 004AC373    pop         ecx
 004AC374    mov         edx,dword ptr [ebp-2C]
 004AC377    call        005F1A7C
 004AC37C    mov         eax,dword ptr [ebp-2C]
 004AC37F    call        TWinControl.GetHandle
 004AC384    mov         dword ptr [ebp-34],eax
 004AC387    push        dword ptr [ebp-34]
 004AC38A    call        USER32.GetWindowDC
 004AC38F    mov         dword ptr [ebp-30],eax
 004AC392    lea         ecx,[ebp-4]
 004AC395    push        ecx
 004AC396    call        004AC608
 004AC39B    pop         ecx
 004AC39C    mov         edx,dword ptr [ebp-30]
 004AC39F    call        0067DA04
 004AC3A4    lea         eax,[ebp-4]
 004AC3A7    push        eax
 004AC3A8    call        004AC608
 004AC3AD    pop         ecx
 004AC3AE    mov         eax,dword ptr [eax+14]
 004AC3B1    xor         edx,edx
 004AC3B3    call        TBrush.SetStyle
 004AC3B8    lea         ecx,[ebp-4]
 004AC3BB    push        ecx
 004AC3BC    call        004AC608
 004AC3C1    pop         ecx
 004AC3C2    mov         eax,dword ptr [eax+10]
 004AC3C5    mov         edx,1
 004AC3CA    call        TPen.SetWidth
 004AC3CF    lea         ecx,[ebp-4]
 004AC3D2    push        ecx
 004AC3D3    call        004AC608
 004AC3D8    pop         ecx
 004AC3D9    mov         eax,dword ptr [eax+10]
 004AC3DC    mov         edx,0FF
 004AC3E1    call        TPen.SetColor
 004AC3E6    lea         edx,[ebp-5C]
 004AC3E9    mov         eax,dword ptr [ebp+0C]
 004AC3EC    mov         ecx,dword ptr [eax]
 004AC3EE    call        dword ptr [ecx+44]
 004AC3F1    lea         esi,[ebp-5C]
 004AC3F4    lea         edi,[ebp-4C]
 004AC3F7    mov         ecx,4
 004AC3FC    rep movs    dword ptr [edi],dword ptr [esi]
 004AC3FE    mov         edx,dword ptr ds:[5CC540];TForm
 004AC404    mov         eax,dword ptr [ebp-2C]
 004AC407    call        006708AC
 004AC40C    mov         dword ptr [ebp-3C],eax
 004AC40F    mov         ecx,dword ptr [ebp-3C]
 004AC412    test        ecx,ecx
>004AC414    je          004AC423
 004AC416    mov         eax,dword ptr [ebp-3C]
 004AC419    mov         edx,dword ptr [eax+248]
 004AC41F    test        edx,edx
>004AC421    jne         004AC427
 004AC423    xor         ecx,ecx
>004AC425    jmp         004AC42C
 004AC427    mov         ecx,1
 004AC42C    mov         byte ptr [ebp-35],cl
 004AC42F    push        0EC
 004AC431    push        dword ptr [ebp-34]
 004AC434    call        USER32.GetWindowLongA
 004AC439    push        eax
 004AC43A    xor         eax,eax
 004AC43C    mov         al,byte ptr [ebp-35]
 004AC43F    push        eax
 004AC440    push        0F0
 004AC442    push        dword ptr [ebp-34]
 004AC445    call        USER32.GetWindowLongA
 004AC44A    push        eax
 004AC44B    lea         edx,[ebp-4C]
 004AC44E    push        edx
 004AC44F    call        USER32.AdjustWindowRectEx
 004AC454    mov         ecx,dword ptr [ebp-48]
 004AC457    neg         ecx
 004AC459    mov         edx,dword ptr [ebp-4C]
 004AC45C    neg         edx
 004AC45E    mov         eax,dword ptr [ebp-30]
 004AC461    call        0067D9B4
 004AC466    mov         ecx,dword ptr [ebp-2C]
 004AC469    mov         eax,dword ptr [ebp+0C]
 004AC46C    cmp         ecx,eax
>004AC46E    jne         004AC48A
 004AC470    lea         edx,[ebp-6C]
 004AC473    mov         eax,dword ptr [ebp+0C]
 004AC476    mov         ecx,dword ptr [eax]
 004AC478    call        dword ptr [ecx+44]
 004AC47B    lea         esi,[ebp-6C]
 004AC47E    lea         edi,[ebp-4C]
 004AC481    mov         ecx,4
 004AC486    rep movs    dword ptr [edi],dword ptr [esi]
>004AC488    jmp         004AC4AF
 004AC48A    lea         edx,[ebp-7C]
 004AC48D    mov         eax,dword ptr [ebp+0C]
 004AC490    call        005F2E0C
 004AC495    lea         esi,[ebp-7C]
 004AC498    lea         edi,[ebp-4C]
 004AC49B    mov         ecx,4
 004AC4A0    rep movs    dword ptr [edi],dword ptr [esi]
 004AC4A2    push        2
 004AC4A4    push        2
 004AC4A6    lea         eax,[ebp-4C]
 004AC4A9    push        eax
 004AC4AA    call        USER32.InflateRect
 004AC4AF    lea         edx,[ebp-4]
 004AC4B2    push        edx
 004AC4B3    call        004AC608
 004AC4B8    pop         ecx
 004AC4B9    lea         edx,[ebp-4C]
 004AC4BC    call        005C113C
 004AC4C1    push        dword ptr [ebp-30]
 004AC4C4    push        dword ptr [ebp-34]
 004AC4C7    call        USER32.ReleaseDC
 004AC4CC    dec         dword ptr [ebp-0C]
 004AC4CF    push        2
 004AC4D1    lea         eax,[ebp-4]
 004AC4D4    push        eax
 004AC4D5    call        004AC57C
 004AC4DA    add         esp,8
 004AC4DD    mov         ecx,dword ptr [ebp-28]
 004AC4E0    mov         dword ptr fs:[0],ecx
 004AC4E7    pop         edi
 004AC4E8    pop         esi
 004AC4E9    mov         esp,ebp
 004AC4EB    pop         ebp
 004AC4EC    ret
end;*}

//004AC4F0
{*procedure sub_004AC4F0(?:TControlCanvas; ?:?);
begin
 004AC4F0    push        ebp
 004AC4F1    mov         ebp,esp
 004AC4F3    add         esp,0FFFFFFD4
 004AC4F6    mov         byte ptr [ebp-8],dl
 004AC4F9    test        dl,dl
>004AC4FB    jle         004AC502
 004AC4FD    call        0067EF6C
 004AC502    mov         byte ptr [ebp-29],dl
 004AC505    mov         dword ptr [ebp-4],eax
 004AC508    mov         eax,6C3874
 004AC50D    call        0066FECC
 004AC512    mov         word ptr [ebp-18],8
 004AC518    xor         edx,edx
 004AC51A    mov         eax,dword ptr [ebp-4]
 004AC51D    call        TCanvas.Create
 004AC522    add         dword ptr [ebp-0C],3
 004AC526    mov         edx,dword ptr [ebp-28]
 004AC529    mov         dword ptr fs:[0],edx
 004AC530    mov         eax,dword ptr [ebp-4]
 004AC533    mov         dl,byte ptr [ebp-29]
 004AC536    test        dl,dl
>004AC538    je          004AC53F
 004AC53A    call        0067EF79
 004AC53F    mov         esp,ebp
 004AC541    pop         ebp
 004AC542    ret
end;*}

//004AC544
{*function sub_004AC544(?:?; ?:?):?;
begin
 004AC544    push        ebp
 004AC545    mov         ebp,esp
 004AC547    add         esp,0FFFFFFDC
 004AC54A    mov         eax,6C3898
 004AC54F    call        0066FECC
 004AC554    mov         word ptr [ebp-14],8
 004AC55A    push        dword ptr [ebp+0C]
 004AC55D    push        dword ptr [ebp+8]
 004AC560    call        004ACBB4
 004AC565    add         esp,8
 004AC568    mov         edx,dword ptr [ebp-24]
 004AC56B    mov         dword ptr fs:[0],edx
 004AC572    mov         eax,dword ptr [ebp+8]
 004AC575    mov         esp,ebp
 004AC577    pop         ebp
 004AC578    ret
end;*}

//004AC57C
{*procedure sub_004AC57C(?:?; ?:?);
begin
 004AC57C    push        ebp
 004AC57D    mov         ebp,esp
 004AC57F    add         esp,0FFFFFFD4
 004AC582    mov         eax,6C38BC
 004AC587    call        0066FECC
 004AC58C    mov         edx,dword ptr [ebp+8]
 004AC58F    test        edx,edx
>004AC591    je          004AC5D6
 004AC593    push        dword ptr [ebp+8]
 004AC596    call        004ACD78
 004AC59B    pop         ecx
 004AC59C    mov         dword ptr [ebp-8],eax
 004AC59F    mov         ecx,dword ptr [ebp-8]
 004AC5A2    test        ecx,ecx
>004AC5A4    je          004AC5C7
 004AC5A6    mov         eax,dword ptr [ebp-8]
 004AC5A9    mov         edx,dword ptr [eax]
 004AC5AB    mov         dword ptr [ebp-4],edx
 004AC5AE    mov         word ptr [ebp-1C],14
 004AC5B4    mov         edx,3
 004AC5B9    mov         eax,dword ptr [ebp-8]
 004AC5BC    mov         ecx,dword ptr [eax]
 004AC5BE    call        dword ptr [ecx-4]
 004AC5C1    mov         word ptr [ebp-1C],8
 004AC5C7    test        byte ptr [ebp+0C],1
>004AC5CB    je          004AC5D6
 004AC5CD    push        dword ptr [ebp+8]
 004AC5D0    call        0066EAB0
 004AC5D5    pop         ecx
 004AC5D6    mov         eax,dword ptr [ebp-2C]
 004AC5D9    mov         fs:[00000000],eax
 004AC5DF    mov         esp,ebp
 004AC5E1    pop         ebp
 004AC5E2    ret
end;*}

//004AC5E4
{*function sub_004AC5E4(?:?):?;
begin
 004AC5E4    push        ebp
 004AC5E5    mov         ebp,esp
 004AC5E7    add         esp,0FFFFFFDC
 004AC5EA    mov         eax,6C38DC
 004AC5EF    call        0066FECC
 004AC5F4    mov         edx,dword ptr [ebp-24]
 004AC5F7    mov         dword ptr fs:[0],edx
 004AC5FE    mov         eax,dword ptr [ebp+8]
 004AC601    mov         esp,ebp
 004AC603    pop         ebp
 004AC604    ret
end;*}

//004AC608
{*function sub_004AC608(?:?):?;
begin
 004AC608    push        ebp
 004AC609    mov         ebp,esp
 004AC60B    push        dword ptr [ebp+8]
 004AC60E    call        004ACD78
 004AC613    pop         ecx
 004AC614    pop         ebp
 004AC615    ret
end;*}

//004AC68C
procedure TIdrDfmFormTree_11011981.tvFormDblClick(Sender:TObject);
begin
{*
 004AC68C    push        ebp
 004AC68D    mov         ebp,esp
 004AC68F    add         esp,0FFFFFFDC
 004AC692    mov         dword ptr [ebp-8],edx
 004AC695    mov         dword ptr [ebp-4],eax
 004AC698    mov         eax,dword ptr [ebp-4]
 004AC69B    mov         eax,dword ptr [eax+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AC6A1    call        0061B568
 004AC6A6    mov         dword ptr [ebp-0C],eax
 004AC6A9    mov         edx,dword ptr [ebp-0C]
 004AC6AC    test        edx,edx
>004AC6AE    je          004AC7F1
 004AC6B4    mov         edx,dword ptr [ebp-0C]
 004AC6B7    mov         eax,dword ptr [ebp-4]
 004AC6BA    call        004AC1D8
 004AC6BF    test        al,al
>004AC6C1    je          004AC737
 004AC6C3    mov         ecx,dword ptr [ebp-0C]
 004AC6C6    mov         eax,dword ptr [ecx+0C]
 004AC6C9    mov         dword ptr [ebp-10],eax
 004AC6CC    mov         edx,dword ptr [ebp-10]
 004AC6CF    test        edx,edx
>004AC6D1    je          004AC7F1
 004AC6D7    mov         eax,dword ptr [ebp-10]
 004AC6DA    call        00531F1C
 004AC6DF    test        al,al
>004AC6E1    je          004AC7F1
 004AC6E7    mov         eax,dword ptr [ebp-10]
 004AC6EA    call        0053A308
 004AC6EF    mov         dword ptr [ebp-14],eax
 004AC6F2    mov         edx,dword ptr [ebp-14]
 004AC6F5    test        edx,edx
>004AC6F7    je          004AC7F1
 004AC6FD    mov         ecx,dword ptr [ebp-14]
 004AC700    mov         al,byte ptr [ecx+5]
 004AC703    cmp         al,23
>004AC705    jne         004AC71C
 004AC707    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AC70D    mov         eax,dword ptr [edx]
 004AC70F    mov         edx,dword ptr [ebp-10]
 004AC712    call        0041B340
>004AC717    jmp         004AC7F1
 004AC71C    push        0FF
 004AC71E    push        0FF
 004AC720    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AC726    mov         eax,dword ptr [ecx]
 004AC728    xor         ecx,ecx
 004AC72A    mov         edx,dword ptr [ebp-10]
 004AC72D    call        00414454
>004AC732    jmp         004AC7F1
 004AC737    mov         eax,dword ptr [ebp-0C]
 004AC73A    mov         eax,dword ptr [eax+0C]
 004AC73D    mov         edx,dword ptr ds:[5EE128];TControl
 004AC743    call        006708AC
 004AC748    mov         dword ptr [ebp-18],eax
 004AC74B    mov         ecx,dword ptr [ebp-18]
 004AC74E    test        ecx,ecx
>004AC750    je          004AC7F1
 004AC756    mov         eax,dword ptr [ebp-18]
 004AC759    mov         edx,dword ptr [eax+30]
 004AC75C    mov         dword ptr [ebp-1C],edx
 004AC75F    mov         ecx,dword ptr [ebp-1C]
 004AC762    test        ecx,ecx
>004AC764    je          004AC7F1
 004AC76A    mov         eax,dword ptr [ebp-4]
 004AC76D    mov         edx,dword ptr [eax+4];TIdrDfmFormTree_11011981.FOwner:TComponent
 004AC770    mov         dword ptr [ebp-20],edx
 004AC773    mov         eax,dword ptr [ebp-20]
 004AC776    call        005F3B24
 004AC77B    mov         eax,dword ptr [ebp-18]
 004AC77E    call        005F3B24
 004AC783    xor         edx,edx
 004AC785    mov         dword ptr [ebp-24],edx
 004AC788    push        dword ptr [ebp-18]
 004AC78B    push        dword ptr [ebp-4]
 004AC78E    call        004AC310
 004AC793    add         esp,8
 004AC796    mov         eax,dword ptr [ebp-18]
 004AC799    call        005F3EC8
 004AC79E    mov         eax,dword ptr [ebp-18]
 004AC7A1    mov         edx,dword ptr [eax]
 004AC7A3    call        dword ptr [edx+88]
 004AC7A9    push        96
 004AC7AE    call        KERNEL32.Sleep
 004AC7B3    push        dword ptr [ebp-18]
 004AC7B6    push        dword ptr [ebp-4]
 004AC7B9    call        004AC310
 004AC7BE    add         esp,8
 004AC7C1    mov         eax,dword ptr [ebp-18]
 004AC7C4    call        005F3EDC
 004AC7C9    mov         eax,dword ptr [ebp-18]
 004AC7CC    mov         edx,dword ptr [eax]
 004AC7CE    call        dword ptr [edx+88]
 004AC7D4    push        96
 004AC7D9    call        KERNEL32.Sleep
 004AC7DE    inc         dword ptr [ebp-24]
 004AC7E1    mov         ecx,dword ptr [ebp-24]
 004AC7E4    cmp         ecx,2
>004AC7E7    jl          004AC788
 004AC7E9    mov         eax,dword ptr [ebp-4]
 004AC7EC    call        005F3B24
 004AC7F1    mov         esp,ebp
 004AC7F3    pop         ebp
 004AC7F4    ret
*}
end;

//004AC7F8
procedure TIdrDfmFormTree_11011981.dlgFindFind(?:TObject);
begin
{*
 004AC7F8    push        ebp
 004AC7F9    mov         ebp,esp
 004AC7FB    add         esp,0FFFFFFC0
 004AC7FE    mov         dword ptr [ebp-38],edx
 004AC801    mov         dword ptr [ebp-34],eax
 004AC804    mov         eax,6C3748
 004AC809    call        0066FECC
 004AC80E    mov         edx,dword ptr [ebp-34]
 004AC811    mov         eax,dword ptr [edx+2F4];TIdrDfmFormTree_11011981.dlgFind:TFindDialog
 004AC817    add         eax,58;TFindDialog.Options:TFindOptions
 004AC81A    mov         dl,5
 004AC81C    call        004AC934
 004AC821    mov         byte ptr [ebp-39],al
 004AC824    mov         cl,byte ptr [ebp-39]
 004AC827    push        ecx
 004AC828    mov         word ptr [ebp-20],14
 004AC82E    lea         eax,[ebp-4]
 004AC831    call        00401EA8
 004AC836    mov         edx,eax
 004AC838    inc         dword ptr [ebp-14]
 004AC83B    mov         ecx,dword ptr [ebp-34]
 004AC83E    mov         eax,dword ptr [ecx+2F4];TIdrDfmFormTree_11011981.dlgFind:TFindDialog
 004AC844    call        TFindDialog.GetFindText
 004AC849    lea         edx,[ebp-4]
 004AC84C    push        edx
 004AC84D    mov         ecx,dword ptr [ebp-34]
 004AC850    mov         eax,dword ptr [ecx+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AC856    call        0061B568
 004AC85B    mov         edx,eax
 004AC85D    mov         eax,dword ptr [ebp-34]
 004AC860    pop         ecx
 004AC861    call        004ABF18
 004AC866    mov         dword ptr [ebp-40],eax
 004AC869    dec         dword ptr [ebp-14]
 004AC86C    lea         eax,[ebp-4]
 004AC86F    mov         edx,2
 004AC874    call        0067DCA0
 004AC879    mov         word ptr [ebp-20],8
 004AC87F    mov         ecx,dword ptr [ebp-40]
 004AC882    test        ecx,ecx
>004AC884    jne         004AC8F2
 004AC886    mov         al,byte ptr [ebp-39]
 004AC889    push        eax
 004AC88A    mov         word ptr [ebp-20],20
 004AC890    lea         eax,[ebp-8]
 004AC893    call        00401EA8
 004AC898    mov         edx,eax
 004AC89A    inc         dword ptr [ebp-14]
 004AC89D    mov         ecx,dword ptr [ebp-34]
 004AC8A0    mov         eax,dword ptr [ecx+2F4];TIdrDfmFormTree_11011981.dlgFind:TFindDialog
 004AC8A6    call        TFindDialog.GetFindText
 004AC8AB    lea         edx,[ebp-8]
 004AC8AE    push        edx
 004AC8AF    lea         eax,[ebp-0C]
 004AC8B2    call        00401EA8
 004AC8B7    mov         edx,eax
 004AC8B9    inc         dword ptr [ebp-14]
 004AC8BC    pop         eax
 004AC8BD    call        0067E030
 004AC8C2    lea         ecx,[ebp-0C]
 004AC8C5    xor         edx,edx
 004AC8C7    mov         eax,dword ptr [ebp-34]
 004AC8CA    call        004ABF18
 004AC8CF    mov         dword ptr [ebp-40],eax
 004AC8D2    dec         dword ptr [ebp-14]
 004AC8D5    lea         eax,[ebp-0C]
 004AC8D8    mov         edx,2
 004AC8DD    call        0067DCA0
 004AC8E2    dec         dword ptr [ebp-14]
 004AC8E5    lea         eax,[ebp-8]
 004AC8E8    mov         edx,2
 004AC8ED    call        0067DCA0
 004AC8F2    mov         ecx,dword ptr [ebp-40]
 004AC8F5    test        ecx,ecx
>004AC8F7    je          004AC925
 004AC8F9    mov         edx,dword ptr [ebp-40]
 004AC8FC    mov         eax,dword ptr [ebp-34]
 004AC8FF    mov         eax,dword ptr [eax+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AC905    call        0061B5D4
 004AC90A    xor         edx,edx
 004AC90C    mov         eax,dword ptr [ebp-40]
 004AC90F    call        00618774
 004AC914    mov         edx,dword ptr [ebp-34]
 004AC917    mov         eax,dword ptr [edx+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AC91D    mov         edx,dword ptr [eax]
 004AC91F    call        dword ptr [edx+0C0];TTreeView.sub_005FBFF0
 004AC925    mov         ecx,dword ptr [ebp-30]
 004AC928    mov         dword ptr fs:[0],ecx
 004AC92F    mov         esp,ebp
 004AC931    pop         ebp
 004AC932    ret
*}
end;

//004AC934
{*function sub_004AC934(?:TFindOptions; ?:?):?;
begin
 004AC934    push        ebp
 004AC935    mov         ebp,esp
 004AC937    add         esp,0FFFFFFF8
 004AC93A    mov         byte ptr [ebp-5],dl
 004AC93D    mov         dword ptr [ebp-4],eax
 004AC940    mov         al,byte ptr [ebp-5]
 004AC943    test        al,al
>004AC945    jl          004AC97C
 004AC947    mov         dl,byte ptr [ebp-5]
 004AC94A    cmp         dl,0C
>004AC94D    jg          004AC97C
 004AC94F    movsx       ecx,byte ptr [ebp-5]
 004AC953    and         ecx,80000007
>004AC959    jns         004AC960
 004AC95B    dec         ecx
 004AC95C    or          ecx,0FFFFFFF8
 004AC95F    inc         ecx
 004AC960    mov         al,1
 004AC962    shl         al,cl
 004AC964    movsx       edx,byte ptr [ebp-5]
 004AC968    test        edx,edx
>004AC96A    jns         004AC96F
 004AC96C    add         edx,7
 004AC96F    sar         edx,3
 004AC972    mov         ecx,dword ptr [ebp-4]
 004AC975    mov         dl,byte ptr [ecx+edx]
 004AC978    and         al,dl
>004AC97A    jmp         004AC97E
 004AC97C    xor         eax,eax
 004AC97E    test        al,al
 004AC980    setne       al
 004AC983    and         eax,1
 004AC986    pop         ecx
 004AC987    pop         ecx
 004AC988    pop         ebp
 004AC989    ret
end;*}

//004AC98C
procedure TIdrDfmFormTree_11011981.Expand1Click(Sender:TObject);
begin
{*
 004AC98C    push        ebp
 004AC98D    mov         ebp,esp
 004AC98F    add         esp,0FFFFFFF8
 004AC992    mov         dword ptr [ebp-8],edx
 004AC995    mov         dword ptr [ebp-4],eax
 004AC998    mov         eax,dword ptr [ebp-4]
 004AC99B    mov         eax,dword ptr [eax+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AC9A1    call        0061B568
 004AC9A6    test        eax,eax
>004AC9A8    je          004AC9BF
 004AC9AA    mov         edx,dword ptr [ebp-4]
 004AC9AD    mov         eax,dword ptr [edx+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AC9B3    call        0061B568
 004AC9B8    mov         dl,1
 004AC9BA    call        00618774
 004AC9BF    pop         ecx
 004AC9C0    pop         ecx
 004AC9C1    pop         ebp
 004AC9C2    ret
*}
end;

//004AC9C4
procedure TIdrDfmFormTree_11011981.Collapse1Click(Sender:TObject);
begin
{*
 004AC9C4    push        ebp
 004AC9C5    mov         ebp,esp
 004AC9C7    add         esp,0FFFFFFF8
 004AC9CA    mov         dword ptr [ebp-8],edx
 004AC9CD    mov         dword ptr [ebp-4],eax
 004AC9D0    mov         eax,dword ptr [ebp-4]
 004AC9D3    mov         eax,dword ptr [eax+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AC9D9    call        0061B568
 004AC9DE    test        eax,eax
>004AC9E0    je          004AC9F7
 004AC9E2    mov         edx,dword ptr [ebp-4]
 004AC9E5    mov         eax,dword ptr [edx+2F0];TIdrDfmFormTree_11011981.tvForm:TTreeView
 004AC9EB    call        0061B568
 004AC9F0    xor         edx,edx
 004AC9F2    call        00618794
 004AC9F7    pop         ecx
 004AC9F8    pop         ecx
 004AC9F9    pop         ebp
 004AC9FA    ret
*}
end;

//004AC9FC
procedure TIdrDfmFormTree_11011981.Find1Click(Sender:TObject);
begin
{*
 004AC9FC    push        ebp
 004AC9FD    mov         ebp,esp
 004AC9FF    add         esp,0FFFFFFF8
 004ACA02    mov         dword ptr [ebp-8],edx
 004ACA05    mov         dword ptr [ebp-4],eax
 004ACA08    mov         eax,dword ptr [ebp-4]
 004ACA0B    mov         eax,dword ptr [eax+2F4];TIdrDfmFormTree_11011981.dlgFind:TFindDialog
 004ACA11    mov         edx,dword ptr [eax]
 004ACA13    call        dword ptr [edx+3C];TFindDialog.Execute
 004ACA16    pop         ecx
 004ACA17    pop         ecx
 004ACA18    pop         ebp
 004ACA19    ret
*}
end;

//004ACA1C
procedure TIdrDfmFormTree_11011981.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 004ACA1C    push        ebp
 004ACA1D    mov         ebp,esp
 004ACA1F    add         esp,0FFFFFFF4
 004ACA22    mov         dword ptr [ebp-0C],ecx
 004ACA25    mov         dword ptr [ebp-8],edx
 004ACA28    mov         dword ptr [ebp-4],eax
 004ACA2B    mov         eax,dword ptr [ebp-4]
 004ACA2E    mov         eax,dword ptr [eax+2F4];TIdrDfmFormTree_11011981.dlgFind:TFindDialog
 004ACA34    call        005EBBB8
 004ACA39    mov         esp,ebp
 004ACA3B    pop         ebp
 004ACA3C    ret
*}
end;

//004ACA40
procedure TIdrDfmFormTree_11011981.FormCreate(Sender:TObject);
begin
{*
 004ACA40    push        ebp
 004ACA41    mov         ebp,esp
 004ACA43    add         esp,0FFFFFFF8
 004ACA46    mov         dword ptr [ebp-8],edx
 004ACA49    mov         dword ptr [ebp-4],eax
 004ACA4C    mov         eax,dword ptr [ebp-4]
 004ACA4F    call        00531284
 004ACA54    pop         ecx
 004ACA55    pop         ecx
 004ACA56    pop         ebp
 004ACA57    ret
*}
end;

//004ACA58
{*function sub_004ACA58(?:?):?;
begin
 004ACA58    push        ebp
 004ACA59    mov         ebp,esp
 004ACA5B    add         esp,0FFFFFFDC
 004ACA5E    mov         eax,6C38F4
 004ACA63    call        0066FECC
 004ACA68    mov         word ptr [ebp-14],8
 004ACA6E    mov         edx,dword ptr [ebp-24]
 004ACA71    mov         dword ptr fs:[0],edx
 004ACA78    mov         eax,dword ptr [ebp+8]
 004ACA7B    mov         esp,ebp
 004ACA7D    pop         ebp
 004ACA7E    ret
end;*}

//004ACA80
{*procedure sub_004ACA80(?:?; ?:?);
begin
 004ACA80    push        ebp
 004ACA81    mov         ebp,esp
 004ACA83    mov         eax,dword ptr [ebp+8]
 004ACA86    test        eax,eax
>004ACA88    je          004ACA99
 004ACA8A    test        byte ptr [ebp+0C],1
>004ACA8E    je          004ACA99
 004ACA90    push        dword ptr [ebp+8]
 004ACA93    call        0066EAB0
 004ACA98    pop         ecx
 004ACA99    pop         ebp
 004ACA9A    ret
end;*}

//004ACA9C
{*function sub_004ACA9C(?:?; ?:?; ?:?):?;
begin
 004ACA9C    push        ebp
 004ACA9D    mov         ebp,esp
 004ACA9F    add         esp,0FFFFFFDC
 004ACAA2    mov         eax,6C3918
 004ACAA7    call        0066FECC
 004ACAAC    mov         word ptr [ebp-14],8
 004ACAB2    push        dword ptr [ebp+10]
 004ACAB5    push        dword ptr [ebp+8]
 004ACAB8    call        004ACDF4
 004ACABD    add         esp,8
 004ACAC0    add         dword ptr [ebp-8],3
 004ACAC4    mov         edx,dword ptr [ebp+8]
 004ACAC7    xor         ecx,ecx
 004ACAC9    mov         dword ptr [edx+10],ecx
 004ACACC    mov         eax,dword ptr [ebp+8]
 004ACACF    mov         edx,dword ptr [ebp+0C]
 004ACAD2    mov         ecx,dword ptr [edx]
 004ACAD4    mov         dword ptr [eax+18],ecx
 004ACAD7    mov         ecx,dword ptr [edx+4]
 004ACADA    mov         dword ptr [eax+1C],ecx
 004ACADD    push        dword ptr [ebp+8]
 004ACAE0    call        004ACE74
 004ACAE5    pop         ecx
 004ACAE6    mov         eax,dword ptr [ebp-24]
 004ACAE9    mov         fs:[00000000],eax
 004ACAEF    mov         eax,dword ptr [ebp+8]
 004ACAF2    mov         esp,ebp
 004ACAF4    pop         ebp
 004ACAF5    ret
end;*}

//004ACBB4
{*procedure sub_004ACBB4(?:?; ?:?);
begin
 004ACBB4    push        ebp
 004ACBB5    mov         ebp,esp
 004ACBB7    mov         eax,dword ptr [ebp+0C]
 004ACBBA    mov         edx,dword ptr [ebp+8]
 004ACBBD    mov         dword ptr [edx],eax
 004ACBBF    pop         ebp
 004ACBC0    ret
end;*}

//004ACBE8
{*function sub_004ACBE8(?:?; ?:?; ?:?):?;
begin
 004ACBE8    push        ebp
 004ACBE9    mov         ebp,esp
 004ACBEB    push        dword ptr [ebp+10]
 004ACBEE    push        dword ptr [ebp+0C]
 004ACBF1    call        004ACEB8
 004ACBF6    add         esp,8
 004ACBF9    push        eax
 004ACBFA    push        dword ptr [ebp+8]
 004ACBFD    call        004ACF64
 004ACC02    add         esp,8
 004ACC05    mov         eax,dword ptr [ebp+8]
 004ACC08    pop         ebp
 004ACC09    ret
end;*}

//004ACC0C
{*function sub_004ACC0C(?:?; ?:?):?;
begin
 004ACC0C    push        ebp
 004ACC0D    mov         ebp,esp
 004ACC0F    mov         eax,dword ptr [ebp+0C]
 004ACC12    push        dword ptr [eax+8]
 004ACC15    push        dword ptr [ebp+8]
 004ACC18    call        004ACF64
 004ACC1D    add         esp,8
 004ACC20    mov         eax,dword ptr [ebp+8]
 004ACC23    pop         ebp
 004ACC24    ret
end;*}

//004ACC28
{*procedure sub_004ACC28(?:?);
begin
 004ACC28    push        ebp
 004ACC29    mov         ebp,esp
 004ACC2B    mov         eax,dword ptr [ebp+8]
 004ACC2E    mov         eax,dword ptr [eax]
 004ACC30    add         eax,10
 004ACC33    pop         ebp
 004ACC34    ret
end;*}

//004ACC38
{*function sub_004ACC38(?:?; ?:?; ?:?):?;
begin
 004ACC38    push        ebp
 004ACC39    mov         ebp,esp
 004ACC3B    push        dword ptr [ebp+10]
 004ACC3E    push        dword ptr [ebp+0C]
 004ACC41    push        dword ptr [ebp+8]
 004ACC44    call        004ACF8C
 004ACC49    add         esp,0C
 004ACC4C    mov         eax,dword ptr [ebp+8]
 004ACC4F    pop         ebp
 004ACC50    ret
end;*}

//004ACC54
{*function sub_004ACC54(?:?; ?:?):?;
begin
 004ACC54    push        ebp
 004ACC55    mov         ebp,esp
 004ACC57    push        dword ptr [ebp+0C]
 004ACC5A    push        dword ptr [ebp+8]
 004ACC5D    call        004ACFB0
 004ACC62    add         esp,8
 004ACC65    mov         eax,dword ptr [ebp+8]
 004ACC68    pop         ebp
 004ACC69    ret
end;*}

//004ACC6C
{*procedure sub_004ACC6C(?:?);
begin
 004ACC6C    push        ebp
 004ACC6D    mov         ebp,esp
 004ACC6F    mov         eax,dword ptr [ebp+8]
 004ACC72    mov         eax,dword ptr [eax]
 004ACC74    add         eax,10
 004ACC77    pop         ebp
 004ACC78    ret
end;*}

//004ACC7C
{*function sub_004ACC7C(?:?; ?:?):?;
begin
 004ACC7C    push        ebp
 004ACC7D    mov         ebp,esp
 004ACC7F    mov         eax,dword ptr [ebp+10]
 004ACC82    mov         edx,dword ptr [eax]
 004ACC84    mov         ecx,dword ptr [ebp+0C]
 004ACC87    mov         eax,dword ptr [ecx]
 004ACC89    cmp         edx,eax
 004ACC8B    seta        al
 004ACC8E    and         eax,1
 004ACC91    pop         ebp
 004ACC92    ret
end;*}

//004ACC94
{*function sub_004ACC94(?:?; ?:?; ?:?):?;
begin
 004ACC94    push        ebp
 004ACC95    mov         ebp,esp
 004ACC97    add         esp,0FFFFFFDC
 004ACC9A    mov         eax,6C392C
 004ACC9F    call        0066FECC
 004ACCA4    mov         edx,dword ptr [ebp+0C]
 004ACCA7    mov         ecx,dword ptr [edx]
 004ACCA9    mov         eax,dword ptr [ebp+8]
 004ACCAC    mov         dword ptr [eax],ecx
 004ACCAE    mov         edx,dword ptr [ebp+10]
 004ACCB1    mov         ecx,dword ptr [edx]
 004ACCB3    mov         eax,dword ptr [ebp+8]
 004ACCB6    mov         dword ptr [eax+4],ecx
 004ACCB9    mov         edx,dword ptr [ebp-24]
 004ACCBC    mov         dword ptr fs:[0],edx
 004ACCC3    mov         eax,dword ptr [ebp+8]
 004ACCC6    mov         esp,ebp
 004ACCC8    pop         ebp
 004ACCC9    ret
end;*}

//004ACCCC
{*function sub_004ACCCC(?:?; ?:?):?;
begin
 004ACCCC    push        ebp
 004ACCCD    mov         ebp,esp
 004ACCCF    add         esp,0FFFFFFDC
 004ACCD2    mov         eax,6C3934
 004ACCD7    call        0066FECC
 004ACCDC    mov         edx,dword ptr [ebp+0C]
 004ACCDF    mov         ecx,dword ptr [edx]
 004ACCE1    mov         eax,dword ptr [ebp+8]
 004ACCE4    mov         dword ptr [eax],ecx
 004ACCE6    mov         edx,dword ptr [ebp-24]
 004ACCE9    mov         dword ptr fs:[0],edx
 004ACCF0    mov         eax,dword ptr [ebp+8]
 004ACCF3    mov         esp,ebp
 004ACCF5    pop         ebp
 004ACCF6    ret
end;*}

//004ACCF8
{*function sub_004ACCF8(?:?; ?:?; ?:?; ?:?):?;
begin
 004ACCF8    push        ebp
 004ACCF9    mov         ebp,esp
 004ACCFB    push        dword ptr [ebp+14]
 004ACCFE    add         esp,0FFFFFFFC
 004ACD01    lea         eax,[ebp+10]
 004ACD04    push        eax
 004ACD05    lea         edx,[esp+4]
 004ACD09    push        edx
 004ACD0A    call        004ACCCC
 004ACD0F    add         esp,8
 004ACD12    push        dword ptr [ebp+0C]
 004ACD15    push        dword ptr [ebp+8]
 004ACD18    call        004AD294
 004ACD1D    add         esp,10
 004ACD20    mov         eax,dword ptr [ebp+8]
 004ACD23    pop         ebp
 004ACD24    ret
end;*}

//004ACD78
{*function sub_004ACD78(?:?):?;
begin
 004ACD78    push        ebp
 004ACD79    mov         ebp,esp
 004ACD7B    mov         eax,dword ptr [ebp+8]
 004ACD7E    mov         eax,dword ptr [eax]
 004ACD80    pop         ebp
 004ACD81    ret
end;*}

//004ACDF4
{*function sub_004ACDF4(?:?; ?:?):?;
begin
 004ACDF4    push        ebp
 004ACDF5    mov         ebp,esp
 004ACDF7    add         esp,0FFFFFFD4
 004ACDFA    mov         eax,6C395C
 004ACDFF    call        0066FECC
 004ACE04    mov         word ptr [ebp-1C],8
 004ACE0A    push        0
 004ACE0C    mov         word ptr [ebp-1C],20
 004ACE12    push        dword ptr [ebp+0C]
 004ACE15    lea         edx,[ebp-8]
 004ACE18    push        edx
 004ACE19    call        004ACFCC
 004ACE1E    add         esp,8
 004ACE21    inc         dword ptr [ebp-10]
 004ACE24    lea         ecx,[ebp-8]
 004ACE27    push        ecx
 004ACE28    push        dword ptr [ebp+8]
 004ACE2B    call        004ACFF4
 004ACE30    add         esp,0C
 004ACE33    add         dword ptr [ebp-10],2
 004ACE37    dec         dword ptr [ebp-10]
 004ACE3A    push        2
 004ACE3C    lea         eax,[ebp-8]
 004ACE3F    push        eax
 004ACE40    call        004A72BC
 004ACE45    add         esp,8
 004ACE48    mov         word ptr [ebp-1C],14
 004ACE4E    push        0
 004ACE50    push        1
 004ACE52    push        dword ptr [ebp+8]
 004ACE55    call        004AD034
 004ACE5A    add         esp,0C
 004ACE5D    mov         edx,dword ptr [ebp+8]
 004ACE60    mov         dword ptr [edx+8],eax
 004ACE63    mov         ecx,dword ptr [ebp-2C]
 004ACE66    mov         dword ptr fs:[0],ecx
 004ACE6D    mov         eax,dword ptr [ebp+8]
 004ACE70    mov         esp,ebp
 004ACE72    pop         ebp
 004ACE73    ret
end;*}

//004ACE74
{*procedure sub_004ACE74(?:?);
begin
 004ACE74    push        ebp
 004ACE75    mov         ebp,esp
 004ACE77    mov         eax,dword ptr [ebp+8]
 004ACE7A    push        dword ptr [eax+8]
 004ACE7D    call        004AD054
 004ACE82    pop         ecx
 004ACE83    mov         byte ptr [eax],0
 004ACE86    push        dword ptr [ebp+8]
 004ACE89    call        004A7268
 004ACE8E    pop         ecx
 004ACE8F    xor         edx,edx
 004ACE91    mov         dword ptr [eax],edx
 004ACE93    push        dword ptr [ebp+8]
 004ACE96    call        004A7278
 004ACE9B    pop         ecx
 004ACE9C    mov         ecx,dword ptr [ebp+8]
 004ACE9F    mov         edx,dword ptr [ecx+8]
 004ACEA2    mov         dword ptr [eax],edx
 004ACEA4    push        dword ptr [ebp+8]
 004ACEA7    call        004A7288
 004ACEAC    pop         ecx
 004ACEAD    mov         ecx,dword ptr [ebp+8]
 004ACEB0    mov         edx,dword ptr [ecx+8]
 004ACEB3    mov         dword ptr [eax],edx
 004ACEB5    pop         ebp
 004ACEB6    ret
end;*}

//004ACEB8
{*function sub_004ACEB8(?:?; ?:?):?;
begin
 004ACEB8    push        ebp
 004ACEB9    mov         ebp,esp
 004ACEBB    add         esp,0FFFFFFF8
 004ACEBE    mov         eax,dword ptr [ebp+8]
 004ACEC1    mov         edx,dword ptr [eax+8]
 004ACEC4    mov         dword ptr [ebp-4],edx
 004ACEC7    push        dword ptr [ebp+8]
 004ACECA    call        004A7268
 004ACECF    pop         ecx
 004ACED0    mov         ecx,dword ptr [eax]
 004ACED2    mov         dword ptr [ebp-8],ecx
 004ACED5    mov         eax,dword ptr [ebp-8]
 004ACED8    test        eax,eax
>004ACEDA    je          004ACF27
 004ACEDC    push        dword ptr [ebp+0C]
 004ACEDF    push        dword ptr [ebp-8]
 004ACEE2    call        004AD05C
 004ACEE7    pop         ecx
 004ACEE8    push        eax
 004ACEE9    mov         edx,dword ptr [ebp+8]
 004ACEEC    add         edx,18
 004ACEEF    push        edx
 004ACEF0    call        004ACC7C
 004ACEF5    add         esp,0C
 004ACEF8    test        al,al
>004ACEFA    jne         004ACF12
 004ACEFC    mov         ecx,dword ptr [ebp-8]
 004ACEFF    mov         dword ptr [ebp-4],ecx
 004ACF02    push        dword ptr [ebp-8]
 004ACF05    call        004A73CC
 004ACF0A    pop         ecx
 004ACF0B    mov         eax,dword ptr [eax]
 004ACF0D    mov         dword ptr [ebp-8],eax
>004ACF10    jmp         004ACF20
 004ACF12    push        dword ptr [ebp-8]
 004ACF15    call        004A73C0
 004ACF1A    pop         ecx
 004ACF1B    mov         edx,dword ptr [eax]
 004ACF1D    mov         dword ptr [ebp-8],edx
 004ACF20    mov         ecx,dword ptr [ebp-8]
 004ACF23    test        ecx,ecx
>004ACF25    jne         004ACEDC
 004ACF27    mov         eax,dword ptr [ebp-4]
 004ACF2A    mov         edx,dword ptr [ebp+8]
 004ACF2D    mov         ecx,dword ptr [edx+8]
 004ACF30    cmp         eax,ecx
>004ACF32    je          004ACF54
 004ACF34    push        dword ptr [ebp-4]
 004ACF37    call        004AD05C
 004ACF3C    pop         ecx
 004ACF3D    push        eax
 004ACF3E    push        dword ptr [ebp+0C]
 004ACF41    mov         eax,dword ptr [ebp+8]
 004ACF44    add         eax,18
 004ACF47    push        eax
 004ACF48    call        004ACC7C
 004ACF4D    add         esp,0C
 004ACF50    test        al,al
>004ACF52    je          004ACF5D
 004ACF54    mov         edx,dword ptr [ebp+8]
 004ACF57    mov         ecx,dword ptr [edx+8]
 004ACF5A    mov         dword ptr [ebp-4],ecx
 004ACF5D    mov         eax,dword ptr [ebp-4]
 004ACF60    pop         ecx
 004ACF61    pop         ecx
 004ACF62    pop         ebp
 004ACF63    ret
end;*}

//004ACF64
{*function sub_004ACF64(?:?; ?:?):?;
begin
 004ACF64    push        ebp
 004ACF65    mov         ebp,esp
 004ACF67    add         esp,0FFFFFFDC
 004ACF6A    mov         eax,6C3988
 004ACF6F    call        0066FECC
 004ACF74    mov         edx,dword ptr [ebp+0C]
 004ACF77    mov         ecx,dword ptr [ebp+8]
 004ACF7A    mov         dword ptr [ecx],edx
 004ACF7C    mov         eax,dword ptr [ebp-24]
 004ACF7F    mov         fs:[00000000],eax
 004ACF85    mov         eax,dword ptr [ebp+8]
 004ACF88    mov         esp,ebp
 004ACF8A    pop         ebp
 004ACF8B    ret
end;*}

//004ACF8C
{*function sub_004ACF8C(?:?; ?:?; ?:?):?;
begin
 004ACF8C    push        ebp
 004ACF8D    mov         ebp,esp
 004ACF8F    push        dword ptr [ebp+10]
 004ACF92    push        dword ptr [ebp+0C]
 004ACF95    call        004AD07C
 004ACF9A    add         esp,8
 004ACF9D    push        eax
 004ACF9E    push        dword ptr [ebp+8]
 004ACFA1    call        004ACF64
 004ACFA6    add         esp,8
 004ACFA9    mov         eax,dword ptr [ebp+8]
 004ACFAC    pop         ebp
 004ACFAD    ret
end;*}

//004ACFB0
{*function sub_004ACFB0(?:?; ?:?):?;
begin
 004ACFB0    push        ebp
 004ACFB1    mov         ebp,esp
 004ACFB3    mov         eax,dword ptr [ebp+8]
 004ACFB6    mov         edx,dword ptr [ebp+0C]
 004ACFB9    mov         ecx,dword ptr [edx+18]
 004ACFBC    mov         dword ptr [eax],ecx
 004ACFBE    mov         ecx,dword ptr [edx+1C]
 004ACFC1    mov         dword ptr [eax+4],ecx
 004ACFC4    mov         eax,dword ptr [ebp+8]
 004ACFC7    pop         ebp
 004ACFC8    ret
end;*}

//004ACFCC
{*function sub_004ACFCC(?:?):?;
begin
 004ACFCC    push        ebp
 004ACFCD    mov         ebp,esp
 004ACFCF    add         esp,0FFFFFFDC
 004ACFD2    mov         eax,6C39A0
 004ACFD7    call        0066FECC
 004ACFDC    mov         word ptr [ebp-14],8
 004ACFE2    mov         edx,dword ptr [ebp-24]
 004ACFE5    mov         dword ptr fs:[0],edx
 004ACFEC    mov         eax,dword ptr [ebp+8]
 004ACFEF    mov         esp,ebp
 004ACFF1    pop         ebp
 004ACFF2    ret
end;*}

//004ACFF4
{*function sub_004ACFF4(?:?; ?:?; ?:?):?;
begin
 004ACFF4    push        ebp
 004ACFF5    mov         ebp,esp
 004ACFF7    add         esp,0FFFFFFDC
 004ACFFA    mov         eax,6C39C4
 004ACFFF    call        0066FECC
 004AD004    mov         word ptr [ebp-14],8
 004AD00A    push        dword ptr [ebp+0C]
 004AD00D    push        dword ptr [ebp+8]
 004AD010    call        004AD158
 004AD015    add         esp,8
 004AD018    inc         dword ptr [ebp-8]
 004AD01B    mov         edx,dword ptr [ebp+8]
 004AD01E    mov         ecx,dword ptr [ebp+10]
 004AD021    mov         dword ptr [edx+8],ecx
 004AD024    mov         eax,dword ptr [ebp-24]
 004AD027    mov         fs:[00000000],eax
 004AD02D    mov         eax,dword ptr [ebp+8]
 004AD030    mov         esp,ebp
 004AD032    pop         ebp
 004AD033    ret
end;*}

//004AD034
{*function sub_004AD034(?:?):?;
begin
 004AD034    push        ebp
 004AD035    mov         ebp,esp
 004AD037    mov         eax,dword ptr [ebp+0C]
 004AD03A    test        eax,eax
>004AD03C    je          004AD050
 004AD03E    mov         edx,dword ptr [ebp+0C]
 004AD041    shl         edx,3
 004AD044    lea         edx,[edx+edx*2]
 004AD047    push        edx
 004AD048    call        0045E76C
 004AD04D    pop         ecx
>004AD04E    jmp         004AD052
 004AD050    xor         eax,eax
 004AD052    pop         ebp
 004AD053    ret
end;*}

//004AD054
{*function sub_004AD054(?:?):?;
begin
 004AD054    push        ebp
 004AD055    mov         ebp,esp
 004AD057    mov         eax,dword ptr [ebp+8]
 004AD05A    pop         ebp
 004AD05B    ret
end;*}

//004AD05C
{*procedure sub_004AD05C(?:?);
begin
 004AD05C    push        ebp
 004AD05D    mov         ebp,esp
 004AD05F    add         esp,0FFFFFFF8
 004AD062    push        dword ptr [ebp+8]
 004AD065    call        004AD280
 004AD06A    pop         ecx
 004AD06B    push        eax
 004AD06C    lea         eax,[ebp-8]
 004AD06F    push        eax
 004AD070    call        004AD28C
 004AD075    add         esp,8
 004AD078    pop         ecx
 004AD079    pop         ecx
 004AD07A    pop         ebp
 004AD07B    ret
end;*}

//004AD07C
{*function sub_004AD07C(?:?; ?:?):?;
begin
 004AD07C    push        ebp
 004AD07D    mov         ebp,esp
 004AD07F    add         esp,0FFFFFFF8
 004AD082    mov         eax,dword ptr [ebp+8]
 004AD085    mov         edx,dword ptr [eax+8]
 004AD088    mov         dword ptr [ebp-4],edx
 004AD08B    push        dword ptr [ebp+8]
 004AD08E    call        004A7268
 004AD093    pop         ecx
 004AD094    mov         ecx,dword ptr [eax]
 004AD096    mov         dword ptr [ebp-8],ecx
 004AD099    mov         eax,dword ptr [ebp-8]
 004AD09C    test        eax,eax
>004AD09E    je          004AD0EB
 004AD0A0    push        dword ptr [ebp+0C]
 004AD0A3    push        dword ptr [ebp-8]
 004AD0A6    call        004AD05C
 004AD0AB    pop         ecx
 004AD0AC    push        eax
 004AD0AD    mov         edx,dword ptr [ebp+8]
 004AD0B0    add         edx,18
 004AD0B3    push        edx
 004AD0B4    call        004ACC7C
 004AD0B9    add         esp,0C
 004AD0BC    test        al,al
>004AD0BE    jne         004AD0D6
 004AD0C0    mov         ecx,dword ptr [ebp-8]
 004AD0C3    mov         dword ptr [ebp-4],ecx
 004AD0C6    push        dword ptr [ebp-8]
 004AD0C9    call        004A73CC
 004AD0CE    pop         ecx
 004AD0CF    mov         eax,dword ptr [eax]
 004AD0D1    mov         dword ptr [ebp-8],eax
>004AD0D4    jmp         004AD0E4
 004AD0D6    push        dword ptr [ebp-8]
 004AD0D9    call        004A73C0
 004AD0DE    pop         ecx
 004AD0DF    mov         edx,dword ptr [eax]
 004AD0E1    mov         dword ptr [ebp-8],edx
 004AD0E4    mov         ecx,dword ptr [ebp-8]
 004AD0E7    test        ecx,ecx
>004AD0E9    jne         004AD0A0
 004AD0EB    mov         eax,dword ptr [ebp-4]
 004AD0EE    pop         ecx
 004AD0EF    pop         ecx
 004AD0F0    pop         ebp
 004AD0F1    ret
end;*}

//004AD158
{*function sub_004AD158(?:?):?;
begin
 004AD158    push        ebp
 004AD159    mov         ebp,esp
 004AD15B    add         esp,0FFFFFFDC
 004AD15E    mov         eax,6C39E8
 004AD163    call        0066FECC
 004AD168    mov         word ptr [ebp-14],8
 004AD16E    mov         edx,dword ptr [ebp-24]
 004AD171    mov         dword ptr fs:[0],edx
 004AD178    mov         eax,dword ptr [ebp+8]
 004AD17B    mov         esp,ebp
 004AD17D    pop         ebp
 004AD17E    ret
end;*}

//004AD280
{*procedure sub_004AD280(?:?);
begin
 004AD280    push        ebp
 004AD281    mov         ebp,esp
 004AD283    mov         eax,dword ptr [ebp+8]
 004AD286    add         eax,10
 004AD289    pop         ebp
 004AD28A    ret
end;*}

//004AD28C
{*function sub_004AD28C(?:?):?;
begin
 004AD28C    push        ebp
 004AD28D    mov         ebp,esp
 004AD28F    mov         eax,dword ptr [ebp+0C]
 004AD292    pop         ebp
 004AD293    ret
end;*}

//004AD294
{*function sub_004AD294(?:?; ?:?; ?:?; ?:?):?;
begin
 004AD294    push        ebp
 004AD295    mov         ebp,esp
 004AD297    add         esp,0FFFFFF88
 004AD29A    mov         eax,dword ptr [ebp+0C]
 004AD29D    mov         edx,dword ptr [eax+8]
 004AD2A0    mov         ecx,dword ptr [edx+8]
 004AD2A3    mov         eax,dword ptr [ebp+10]
 004AD2A6    cmp         ecx,eax
>004AD2A8    jne         004AD470
 004AD2AE    push        dword ptr [ebp+0C]
 004AD2B1    call        004AD710
 004AD2B6    pop         ecx
 004AD2B7    test        eax,eax
>004AD2B9    ja          004AD2E4
 004AD2BB    push        dword ptr [ebp+14]
 004AD2BE    push        dword ptr [ebp+0C]
 004AD2C1    lea         edx,[ebp-78]
 004AD2C4    push        edx
 004AD2C5    call        004AD778
 004AD2CA    add         esp,0C
 004AD2CD    lea         ecx,[ebp-78]
 004AD2D0    push        ecx
 004AD2D1    push        dword ptr [ebp+8]
 004AD2D4    call        004ACCCC
 004AD2D9    add         esp,8
 004AD2DC    mov         eax,dword ptr [ebp+8]
>004AD2DF    jmp         004AD70C
 004AD2E4    push        dword ptr [ebp+10]
 004AD2E7    call        004AD71C
 004AD2EC    pop         ecx
 004AD2ED    push        eax
 004AD2EE    push        dword ptr [ebp+14]
 004AD2F1    lea         edx,[ebp-8]
 004AD2F4    push        edx
 004AD2F5    call        004AD28C
 004AD2FA    add         esp,8
 004AD2FD    push        eax
 004AD2FE    mov         ecx,dword ptr [ebp+0C]
 004AD301    add         ecx,18
 004AD304    push        ecx
 004AD305    call        004ACC7C
 004AD30A    add         esp,0C
 004AD30D    test        al,al
>004AD30F    je          004AD332
 004AD311    push        0
 004AD313    push        dword ptr [ebp+14]
 004AD316    push        dword ptr [ebp+10]
 004AD319    push        dword ptr [ebp+10]
 004AD31C    push        dword ptr [ebp+0C]
 004AD31F    push        dword ptr [ebp+8]
 004AD322    call        004AD954
 004AD327    add         esp,18
 004AD32A    mov         eax,dword ptr [ebp+8]
>004AD32D    jmp         004AD70C
 004AD332    push        dword ptr [ebp+14]
 004AD335    lea         edx,[ebp-14]
 004AD338    push        edx
 004AD339    call        004AD28C
 004AD33E    add         esp,8
 004AD341    push        eax
 004AD342    push        dword ptr [ebp+10]
 004AD345    call        004AD71C
 004AD34A    pop         ecx
 004AD34B    push        eax
 004AD34C    mov         ecx,dword ptr [ebp+0C]
 004AD34F    add         ecx,18
 004AD352    push        ecx
 004AD353    call        004ACC7C
 004AD358    add         esp,0C
 004AD35B    mov         byte ptr [ebp-9],al
 004AD35E    mov         al,byte ptr [ebp-9]
 004AD361    test        al,al
>004AD363    jne         004AD37C
 004AD365    lea         edx,[ebp+10]
 004AD368    push        edx
 004AD369    push        dword ptr [ebp+8]
 004AD36C    call        004ACCCC
 004AD371    add         esp,8
 004AD374    mov         eax,dword ptr [ebp+8]
>004AD377    jmp         004AD70C
 004AD37C    lea         edx,[ebp+10]
 004AD37F    push        edx
 004AD380    lea         ecx,[ebp-18]
 004AD383    push        ecx
 004AD384    call        004ACCCC
 004AD389    add         esp,8
 004AD38C    lea         eax,[ebp-18]
 004AD38F    push        eax
 004AD390    call        004AD73C
 004AD395    pop         ecx
 004AD396    mov         edx,dword ptr [ebp-18]
 004AD399    mov         ecx,dword ptr [ebp+0C]
 004AD39C    mov         eax,dword ptr [ecx+8]
 004AD39F    cmp         edx,eax
>004AD3A1    jne         004AD3C4
 004AD3A3    push        dword ptr [ebp+10]
 004AD3A6    push        dword ptr [ebp+14]
 004AD3A9    push        dword ptr [ebp+10]
 004AD3AC    push        0
 004AD3AE    push        dword ptr [ebp+0C]
 004AD3B1    push        dword ptr [ebp+8]
 004AD3B4    call        004AD954
 004AD3B9    add         esp,18
 004AD3BC    mov         eax,dword ptr [ebp+8]
>004AD3BF    jmp         004AD70C
 004AD3C4    push        dword ptr [ebp-18]
 004AD3C7    call        004AD71C
 004AD3CC    pop         ecx
 004AD3CD    push        eax
 004AD3CE    push        dword ptr [ebp+14]
 004AD3D1    lea         edx,[ebp-20]
 004AD3D4    push        edx
 004AD3D5    call        004AD28C
 004AD3DA    add         esp,8
 004AD3DD    push        eax
 004AD3DE    mov         ecx,dword ptr [ebp+0C]
 004AD3E1    add         ecx,18
 004AD3E4    push        ecx
 004AD3E5    call        004ACC7C
 004AD3EA    add         esp,0C
 004AD3ED    test        al,al
>004AD3EF    je          004AD442
 004AD3F1    push        dword ptr [ebp+10]
 004AD3F4    call        004AD754
 004AD3F9    pop         ecx
 004AD3FA    mov         eax,dword ptr [eax]
 004AD3FC    test        eax,eax
>004AD3FE    jne         004AD421
 004AD400    push        dword ptr [ebp+10]
 004AD403    push        dword ptr [ebp+14]
 004AD406    push        dword ptr [ebp+10]
 004AD409    push        0
 004AD40B    push        dword ptr [ebp+0C]
 004AD40E    push        dword ptr [ebp+8]
 004AD411    call        004AD954
 004AD416    add         esp,18
 004AD419    mov         eax,dword ptr [ebp+8]
>004AD41C    jmp         004AD70C
 004AD421    push        0
 004AD423    push        dword ptr [ebp+14]
 004AD426    push        dword ptr [ebp-18]
 004AD429    push        dword ptr [ebp-18]
 004AD42C    push        dword ptr [ebp+0C]
 004AD42F    push        dword ptr [ebp+8]
 004AD432    call        004AD954
 004AD437    add         esp,18
 004AD43A    mov         eax,dword ptr [ebp+8]
>004AD43D    jmp         004AD70C
 004AD442    push        dword ptr [ebp+14]
 004AD445    push        dword ptr [ebp+0C]
 004AD448    lea         edx,[ebp-70]
 004AD44B    push        edx
 004AD44C    call        004AD778
 004AD451    add         esp,0C
 004AD454    lea         ecx,[ebp-70]
 004AD457    push        ecx
 004AD458    push        dword ptr [ebp+8]
 004AD45B    call        004ACCCC
 004AD460    add         esp,8
 004AD463    mov         eax,dword ptr [ebp+8]
>004AD466    jmp         004AD70C
>004AD46B    jmp         004AD70C
 004AD470    mov         edx,dword ptr [ebp+10]
 004AD473    mov         ecx,dword ptr [ebp+0C]
 004AD476    mov         eax,dword ptr [ecx+8]
 004AD479    cmp         edx,eax
>004AD47B    jne         004AD508
 004AD481    push        dword ptr [ebp+14]
 004AD484    lea         edx,[ebp-28]
 004AD487    push        edx
 004AD488    call        004AD28C
 004AD48D    add         esp,8
 004AD490    push        eax
 004AD491    push        dword ptr [ebp+0C]
 004AD494    call        004A7288
 004AD499    pop         ecx
 004AD49A    push        dword ptr [eax]
 004AD49C    call        004AD05C
 004AD4A1    pop         ecx
 004AD4A2    push        eax
 004AD4A3    mov         ecx,dword ptr [ebp+0C]
 004AD4A6    add         ecx,18
 004AD4A9    push        ecx
 004AD4AA    call        004ACC7C
 004AD4AF    add         esp,0C
 004AD4B2    test        al,al
>004AD4B4    je          004AD4DF
 004AD4B6    push        dword ptr [ebp+10]
 004AD4B9    push        dword ptr [ebp+14]
 004AD4BC    push        dword ptr [ebp+0C]
 004AD4BF    call        004A7288
 004AD4C4    pop         ecx
 004AD4C5    push        dword ptr [eax]
 004AD4C7    push        0
 004AD4C9    push        dword ptr [ebp+0C]
 004AD4CC    push        dword ptr [ebp+8]
 004AD4CF    call        004AD954
 004AD4D4    add         esp,18
 004AD4D7    mov         eax,dword ptr [ebp+8]
>004AD4DA    jmp         004AD70C
 004AD4DF    push        dword ptr [ebp+14]
 004AD4E2    push        dword ptr [ebp+0C]
 004AD4E5    lea         edx,[ebp-68]
 004AD4E8    push        edx
 004AD4E9    call        004AD778
 004AD4EE    add         esp,0C
 004AD4F1    lea         ecx,[ebp-68]
 004AD4F4    push        ecx
 004AD4F5    push        dword ptr [ebp+8]
 004AD4F8    call        004ACCCC
 004AD4FD    add         esp,8
 004AD500    mov         eax,dword ptr [ebp+8]
>004AD503    jmp         004AD70C
 004AD508    lea         edx,[ebp+10]
 004AD50B    push        edx
 004AD50C    lea         ecx,[ebp-2C]
 004AD50F    push        ecx
 004AD510    call        004ACCCC
 004AD515    add         esp,8
 004AD518    lea         eax,[ebp-2C]
 004AD51B    push        eax
 004AD51C    call        004AD760
 004AD521    pop         ecx
 004AD522    push        dword ptr [ebp+10]
 004AD525    call        004AD71C
 004AD52A    pop         ecx
 004AD52B    push        eax
 004AD52C    push        dword ptr [ebp+14]
 004AD52F    lea         edx,[ebp-38]
 004AD532    push        edx
 004AD533    call        004AD28C
 004AD538    add         esp,8
 004AD53B    push        eax
 004AD53C    mov         ecx,dword ptr [ebp+0C]
 004AD53F    add         ecx,18
 004AD542    push        ecx
 004AD543    call        004ACC7C
 004AD548    add         esp,0C
 004AD54B    mov         byte ptr [ebp-2D],al
 004AD54E    mov         al,byte ptr [ebp-2D]
 004AD551    test        al,al
>004AD553    je          004AD5D3
 004AD555    push        dword ptr [ebp+14]
 004AD558    lea         edx,[ebp-40]
 004AD55B    push        edx
 004AD55C    call        004AD28C
 004AD561    add         esp,8
 004AD564    push        eax
 004AD565    push        dword ptr [ebp-2C]
 004AD568    call        004AD71C
 004AD56D    pop         ecx
 004AD56E    push        eax
 004AD56F    mov         ecx,dword ptr [ebp+0C]
 004AD572    add         ecx,18
 004AD575    push        ecx
 004AD576    call        004ACC7C
 004AD57B    add         esp,0C
 004AD57E    test        al,al
>004AD580    je          004AD5D3
 004AD582    push        dword ptr [ebp-2C]
 004AD585    call        004AD754
 004AD58A    pop         ecx
 004AD58B    mov         eax,dword ptr [eax]
 004AD58D    test        eax,eax
>004AD58F    jne         004AD5B2
 004AD591    push        dword ptr [ebp-2C]
 004AD594    push        dword ptr [ebp+14]
 004AD597    push        dword ptr [ebp-2C]
 004AD59A    push        0
 004AD59C    push        dword ptr [ebp+0C]
 004AD59F    push        dword ptr [ebp+8]
 004AD5A2    call        004AD954
 004AD5A7    add         esp,18
 004AD5AA    mov         eax,dword ptr [ebp+8]
>004AD5AD    jmp         004AD70C
 004AD5B2    push        0
 004AD5B4    push        dword ptr [ebp+14]
 004AD5B7    push        dword ptr [ebp+10]
 004AD5BA    push        dword ptr [ebp+10]
 004AD5BD    push        dword ptr [ebp+0C]
 004AD5C0    push        dword ptr [ebp+8]
 004AD5C3    call        004AD954
 004AD5C8    add         esp,18
 004AD5CB    mov         eax,dword ptr [ebp+8]
>004AD5CE    jmp         004AD70C
 004AD5D3    lea         edx,[ebp+10]
 004AD5D6    push        edx
 004AD5D7    lea         ecx,[ebp-44]
 004AD5DA    push        ecx
 004AD5DB    call        004ACCCC
 004AD5E0    add         esp,8
 004AD5E3    lea         eax,[ebp-44]
 004AD5E6    push        eax
 004AD5E7    call        004AD73C
 004AD5EC    pop         ecx
 004AD5ED    xor         edx,edx
 004AD5EF    mov         dl,byte ptr [ebp-2D]
 004AD5F2    cmp         edx,1
 004AD5F5    sbb         ecx,ecx
 004AD5F7    neg         ecx
 004AD5F9    mov         byte ptr [ebp-45],cl
 004AD5FC    mov         al,byte ptr [ebp-2D]
 004AD5FF    test        al,al
>004AD601    jne         004AD62F
 004AD603    push        dword ptr [ebp+14]
 004AD606    lea         edx,[ebp-50]
 004AD609    push        edx
 004AD60A    call        004AD28C
 004AD60F    add         esp,8
 004AD612    push        eax
 004AD613    push        dword ptr [ebp+10]
 004AD616    call        004AD71C
 004AD61B    pop         ecx
 004AD61C    push        eax
 004AD61D    mov         ecx,dword ptr [ebp+0C]
 004AD620    add         ecx,18
 004AD623    push        ecx
 004AD624    call        004ACC7C
 004AD629    add         esp,0C
 004AD62C    mov         byte ptr [ebp-45],al
 004AD62F    mov         al,byte ptr [ebp-2D]
 004AD632    test        al,al
>004AD634    jne         004AD6CA
 004AD63A    mov         dl,byte ptr [ebp-45]
 004AD63D    test        dl,dl
>004AD63F    je          004AD6CA
 004AD645    mov         ecx,dword ptr [ebp-44]
 004AD648    mov         eax,dword ptr [ebp+0C]
 004AD64B    mov         edx,dword ptr [eax+8]
 004AD64E    cmp         ecx,edx
>004AD650    je          004AD67F
 004AD652    push        dword ptr [ebp-44]
 004AD655    call        004AD71C
 004AD65A    pop         ecx
 004AD65B    push        eax
 004AD65C    push        dword ptr [ebp+14]
 004AD65F    lea         ecx,[ebp-58]
 004AD662    push        ecx
 004AD663    call        004AD28C
 004AD668    add         esp,8
 004AD66B    push        eax
 004AD66C    mov         eax,dword ptr [ebp+0C]
 004AD66F    add         eax,18
 004AD672    push        eax
 004AD673    call        004ACC7C
 004AD678    add         esp,0C
 004AD67B    test        al,al
>004AD67D    je          004AD6CA
 004AD67F    push        dword ptr [ebp+10]
 004AD682    call        004AD754
 004AD687    pop         ecx
 004AD688    mov         edx,dword ptr [eax]
 004AD68A    test        edx,edx
>004AD68C    jne         004AD6AC
 004AD68E    push        dword ptr [ebp+10]
 004AD691    push        dword ptr [ebp+14]
 004AD694    push        dword ptr [ebp+10]
 004AD697    push        0
 004AD699    push        dword ptr [ebp+0C]
 004AD69C    push        dword ptr [ebp+8]
 004AD69F    call        004AD954
 004AD6A4    add         esp,18
 004AD6A7    mov         eax,dword ptr [ebp+8]
>004AD6AA    jmp         004AD70C
 004AD6AC    push        0
 004AD6AE    push        dword ptr [ebp+14]
 004AD6B1    push        dword ptr [ebp-44]
 004AD6B4    push        dword ptr [ebp-44]
 004AD6B7    push        dword ptr [ebp+0C]
 004AD6BA    push        dword ptr [ebp+8]
 004AD6BD    call        004AD954
 004AD6C2    add         esp,18
 004AD6C5    mov         eax,dword ptr [ebp+8]
>004AD6C8    jmp         004AD70C
 004AD6CA    mov         dl,byte ptr [ebp-2D]
 004AD6CD    mov         cl,byte ptr [ebp-45]
 004AD6D0    cmp         dl,cl
>004AD6D2    jne         004AD6E8
 004AD6D4    lea         eax,[ebp+10]
 004AD6D7    push        eax
 004AD6D8    push        dword ptr [ebp+8]
 004AD6DB    call        004ACCCC
 004AD6E0    add         esp,8
 004AD6E3    mov         eax,dword ptr [ebp+8]
>004AD6E6    jmp         004AD70C
 004AD6E8    push        dword ptr [ebp+14]
 004AD6EB    push        dword ptr [ebp+0C]
 004AD6EE    lea         edx,[ebp-60]
 004AD6F1    push        edx
 004AD6F2    call        004AD778
 004AD6F7    add         esp,0C
 004AD6FA    lea         ecx,[ebp-60]
 004AD6FD    push        ecx
 004AD6FE    push        dword ptr [ebp+8]
 004AD701    call        004ACCCC
 004AD706    add         esp,8
 004AD709    mov         eax,dword ptr [ebp+8]
 004AD70C    mov         esp,ebp
 004AD70E    pop         ebp
 004AD70F    ret
end;*}

//004AD710
{*function sub_004AD710(?:?):?;
begin
 004AD710    push        ebp
 004AD711    mov         ebp,esp
 004AD713    mov         eax,dword ptr [ebp+8]
 004AD716    mov         eax,dword ptr [eax+10]
 004AD719    pop         ebp
 004AD71A    ret
end;*}

//004AD71C
{*procedure sub_004AD71C(?:?);
begin
 004AD71C    push        ebp
 004AD71D    mov         ebp,esp
 004AD71F    add         esp,0FFFFFFF8
 004AD722    push        dword ptr [ebp+8]
 004AD725    call        004AD280
 004AD72A    pop         ecx
 004AD72B    push        eax
 004AD72C    lea         eax,[ebp-8]
 004AD72F    push        eax
 004AD730    call        004AD28C
 004AD735    add         esp,8
 004AD738    pop         ecx
 004AD739    pop         ecx
 004AD73A    pop         ebp
 004AD73B    ret
end;*}

//004AD73C
{*function sub_004AD73C(?:?):?;
begin
 004AD73C    push        ebp
 004AD73D    mov         ebp,esp
 004AD73F    mov         eax,dword ptr [ebp+8]
 004AD742    push        dword ptr [eax]
 004AD744    call        006922FC
 004AD749    pop         ecx
 004AD74A    mov         edx,dword ptr [ebp+8]
 004AD74D    mov         dword ptr [edx],eax
 004AD74F    mov         eax,dword ptr [ebp+8]
 004AD752    pop         ebp
 004AD753    ret
end;*}

//004AD754
{*function sub_004AD754(?:?):?;
begin
 004AD754    push        ebp
 004AD755    mov         ebp,esp
 004AD757    mov         eax,dword ptr [ebp+8]
 004AD75A    add         eax,0C
 004AD75D    pop         ebp
 004AD75E    ret
end;*}

//004AD760
{*function sub_004AD760(?:?):?;
begin
 004AD760    push        ebp
 004AD761    mov         ebp,esp
 004AD763    mov         eax,dword ptr [ebp+8]
 004AD766    push        dword ptr [eax]
 004AD768    call        00692330
 004AD76D    pop         ecx
 004AD76E    mov         edx,dword ptr [ebp+8]
 004AD771    mov         dword ptr [edx],eax
 004AD773    mov         eax,dword ptr [ebp+8]
 004AD776    pop         ebp
 004AD777    ret
end;*}

//004AD778
{*function sub_004AD778(?:?; ?:?; ?:?):?;
begin
 004AD778    push        ebp
 004AD779    mov         ebp,esp
 004AD77B    add         esp,0FFFFFFC8
 004AD77E    mov         eax,dword ptr [ebp+0C]
 004AD781    mov         edx,dword ptr [eax+8]
 004AD784    mov         dword ptr [ebp-4],edx
 004AD787    push        dword ptr [ebp+0C]
 004AD78A    call        004A7268
 004AD78F    pop         ecx
 004AD790    mov         ecx,dword ptr [eax]
 004AD792    mov         dword ptr [ebp-8],ecx
 004AD795    mov         byte ptr [ebp-9],1
 004AD799    mov         eax,dword ptr [ebp-8]
 004AD79C    test        eax,eax
>004AD79E    je          004AD7FB
 004AD7A0    mov         edx,dword ptr [ebp-8]
 004AD7A3    mov         dword ptr [ebp-4],edx
 004AD7A6    push        dword ptr [ebp-8]
 004AD7A9    call        004AD05C
 004AD7AE    pop         ecx
 004AD7AF    push        eax
 004AD7B0    push        dword ptr [ebp+10]
 004AD7B3    lea         ecx,[ebp-14]
 004AD7B6    push        ecx
 004AD7B7    call        004AD28C
 004AD7BC    add         esp,8
 004AD7BF    push        eax
 004AD7C0    mov         eax,dword ptr [ebp+0C]
 004AD7C3    add         eax,18
 004AD7C6    push        eax
 004AD7C7    call        004ACC7C
 004AD7CC    add         esp,0C
 004AD7CF    mov         byte ptr [ebp-9],al
 004AD7D2    mov         dl,byte ptr [ebp-9]
 004AD7D5    test        dl,dl
>004AD7D7    je          004AD7E6
 004AD7D9    push        dword ptr [ebp-8]
 004AD7DC    call        004A73CC
 004AD7E1    pop         ecx
 004AD7E2    mov         ecx,dword ptr [eax]
>004AD7E4    jmp         004AD7F1
 004AD7E6    push        dword ptr [ebp-8]
 004AD7E9    call        004A73C0
 004AD7EE    pop         ecx
 004AD7EF    mov         ecx,dword ptr [eax]
 004AD7F1    mov         dword ptr [ebp-8],ecx
 004AD7F4    mov         eax,dword ptr [ebp-8]
 004AD7F7    test        eax,eax
>004AD7F9    jne         004AD7A0
 004AD7FB    push        dword ptr [ebp-4]
 004AD7FE    lea         edx,[ebp-18]
 004AD801    push        edx
 004AD802    call        004ACF64
 004AD807    add         esp,8
 004AD80A    mov         al,byte ptr [ebp-9]
 004AD80D    test        al,al
>004AD80F    je          004AD877
 004AD811    push        dword ptr [ebp+0C]
 004AD814    lea         edx,[ebp-1C]
 004AD817    push        edx
 004AD818    call        004AD8F8
 004AD81D    add         esp,8
 004AD820    lea         ecx,[ebp-1C]
 004AD823    push        ecx
 004AD824    lea         eax,[ebp-18]
 004AD827    push        eax
 004AD828    call        0045D530
 004AD82D    add         esp,8
 004AD830    test        al,al
>004AD832    je          004AD86D
 004AD834    mov         byte ptr [ebp-35],1
 004AD838    lea         edx,[ebp-35]
 004AD83B    push        edx
 004AD83C    push        0
 004AD83E    push        dword ptr [ebp+10]
 004AD841    push        dword ptr [ebp-4]
 004AD844    push        dword ptr [ebp-8]
 004AD847    push        dword ptr [ebp+0C]
 004AD84A    lea         ecx,[ebp-34]
 004AD84D    push        ecx
 004AD84E    call        004AD954
 004AD853    add         esp,18
 004AD856    lea         eax,[ebp-34]
 004AD859    push        eax
 004AD85A    push        dword ptr [ebp+8]
 004AD85D    call        004AD918
 004AD862    add         esp,0C
 004AD865    mov         eax,dword ptr [ebp+8]
>004AD868    jmp         004AD8F4
 004AD86D    lea         edx,[ebp-18]
 004AD870    push        edx
 004AD871    call        004AD760
 004AD876    pop         ecx
 004AD877    push        dword ptr [ebp+10]
 004AD87A    lea         ecx,[ebp-24]
 004AD87D    push        ecx
 004AD87E    call        004AD28C
 004AD883    add         esp,8
 004AD886    push        eax
 004AD887    push        dword ptr [ebp-18]
 004AD88A    call        004AD71C
 004AD88F    pop         ecx
 004AD890    push        eax
 004AD891    mov         eax,dword ptr [ebp+0C]
 004AD894    add         eax,18
 004AD897    push        eax
 004AD898    call        004ACC7C
 004AD89D    add         esp,0C
 004AD8A0    test        al,al
>004AD8A2    je          004AD8DA
 004AD8A4    mov         byte ptr [ebp-2D],1
 004AD8A8    lea         edx,[ebp-2D]
 004AD8AB    push        edx
 004AD8AC    push        0
 004AD8AE    push        dword ptr [ebp+10]
 004AD8B1    push        dword ptr [ebp-4]
 004AD8B4    push        dword ptr [ebp-8]
 004AD8B7    push        dword ptr [ebp+0C]
 004AD8BA    lea         ecx,[ebp-2C]
 004AD8BD    push        ecx
 004AD8BE    call        004AD954
 004AD8C3    add         esp,18
 004AD8C6    lea         eax,[ebp-2C]
 004AD8C9    push        eax
 004AD8CA    push        dword ptr [ebp+8]
 004AD8CD    call        004AD918
 004AD8D2    add         esp,0C
 004AD8D5    mov         eax,dword ptr [ebp+8]
>004AD8D8    jmp         004AD8F4
 004AD8DA    mov         byte ptr [ebp-25],0
 004AD8DE    lea         edx,[ebp-25]
 004AD8E1    push        edx
 004AD8E2    lea         ecx,[ebp-18]
 004AD8E5    push        ecx
 004AD8E6    push        dword ptr [ebp+8]
 004AD8E9    call        004AD918
 004AD8EE    add         esp,0C
 004AD8F1    mov         eax,dword ptr [ebp+8]
 004AD8F4    mov         esp,ebp
 004AD8F6    pop         ebp
 004AD8F7    ret
end;*}

//004AD8F8
{*function sub_004AD8F8(?:?; ?:?):?;
begin
 004AD8F8    push        ebp
 004AD8F9    mov         ebp,esp
 004AD8FB    push        dword ptr [ebp+0C]
 004AD8FE    call        004A7278
 004AD903    pop         ecx
 004AD904    push        dword ptr [eax]
 004AD906    push        dword ptr [ebp+8]
 004AD909    call        004ACF64
 004AD90E    add         esp,8
 004AD911    mov         eax,dword ptr [ebp+8]
 004AD914    pop         ebp
 004AD915    ret
end;*}

//004AD918
{*function sub_004AD918(?:?; ?:?; ?:?):?;
begin
 004AD918    push        ebp
 004AD919    mov         ebp,esp
 004AD91B    add         esp,0FFFFFFDC
 004AD91E    mov         eax,6C39FC
 004AD923    call        0066FECC
 004AD928    push        dword ptr [ebp+0C]
 004AD92B    push        dword ptr [ebp+8]
 004AD92E    call        004ACCCC
 004AD933    add         esp,8
 004AD936    mov         edx,dword ptr [ebp+10]
 004AD939    mov         cl,byte ptr [edx]
 004AD93B    mov         eax,dword ptr [ebp+8]
 004AD93E    mov         byte ptr [eax+4],cl
 004AD941    mov         edx,dword ptr [ebp-24]
 004AD944    mov         dword ptr fs:[0],edx
 004AD94B    mov         eax,dword ptr [ebp+8]
 004AD94E    mov         esp,ebp
 004AD950    pop         ebp
 004AD951    ret
end;*}

//004AD954
{*function sub_004AD954(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004AD954    push        ebp
 004AD955    mov         ebp,esp
 004AD957    add         esp,0FFFFFFE8
 004AD95A    mov         eax,dword ptr [ebp+1C]
 004AD95D    mov         dword ptr [ebp-4],eax
 004AD960    mov         edx,dword ptr [ebp+10]
 004AD963    mov         dword ptr [ebp-8],edx
 004AD966    mov         ecx,dword ptr [ebp+14]
 004AD969    mov         dword ptr [ebp-0C],ecx
 004AD96C    mov         eax,dword ptr [ebp-0C]
 004AD96F    mov         edx,dword ptr [ebp+0C]
 004AD972    mov         ecx,dword ptr [edx+8]
 004AD975    cmp         eax,ecx
>004AD977    je          004AD9B8
 004AD979    mov         eax,dword ptr [ebp-4]
 004AD97C    test        eax,eax
>004AD97E    jne         004ADA24
 004AD984    mov         edx,dword ptr [ebp-8]
 004AD987    test        edx,edx
>004AD989    jne         004AD9B8
 004AD98B    push        dword ptr [ebp-0C]
 004AD98E    call        004AD05C
 004AD993    pop         ecx
 004AD994    push        eax
 004AD995    push        dword ptr [ebp+18]
 004AD998    lea         ecx,[ebp-18]
 004AD99B    push        ecx
 004AD99C    call        004AD28C
 004AD9A1    add         esp,8
 004AD9A4    push        eax
 004AD9A5    mov         eax,dword ptr [ebp+0C]
 004AD9A8    add         eax,18
 004AD9AB    push        eax
 004AD9AC    call        004ACC7C
 004AD9B1    add         esp,0C
 004AD9B4    test        al,al
>004AD9B6    je          004ADA24
 004AD9B8    push        dword ptr [ebp+18]
 004AD9BB    push        dword ptr [ebp+0C]
 004AD9BE    call        004ADABC
 004AD9C3    add         esp,8
 004AD9C6    mov         dword ptr [ebp-10],eax
 004AD9C9    push        dword ptr [ebp-0C]
 004AD9CC    call        004A73CC
 004AD9D1    pop         ecx
 004AD9D2    mov         edx,dword ptr [ebp-10]
 004AD9D5    mov         dword ptr [eax],edx
 004AD9D7    mov         ecx,dword ptr [ebp-0C]
 004AD9DA    mov         eax,dword ptr [ebp+0C]
 004AD9DD    mov         edx,dword ptr [eax+8]
 004AD9E0    cmp         ecx,edx
>004AD9E2    jne         004ADA02
 004AD9E4    push        dword ptr [ebp+0C]
 004AD9E7    call        004A7268
 004AD9EC    pop         ecx
 004AD9ED    mov         ecx,dword ptr [ebp-10]
 004AD9F0    mov         dword ptr [eax],ecx
 004AD9F2    push        dword ptr [ebp+0C]
 004AD9F5    call        004A7288
 004AD9FA    pop         ecx
 004AD9FB    mov         edx,dword ptr [ebp-10]
 004AD9FE    mov         dword ptr [eax],edx
>004ADA00    jmp         004ADA63
 004ADA02    push        dword ptr [ebp+0C]
 004ADA05    call        004A7278
 004ADA0A    pop         ecx
 004ADA0B    mov         eax,dword ptr [eax]
 004ADA0D    mov         ecx,dword ptr [ebp-0C]
 004ADA10    cmp         eax,ecx
>004ADA12    jne         004ADA63
 004ADA14    push        dword ptr [ebp+0C]
 004ADA17    call        004A7278
 004ADA1C    pop         ecx
 004ADA1D    mov         edx,dword ptr [ebp-10]
 004ADA20    mov         dword ptr [eax],edx
>004ADA22    jmp         004ADA63
 004ADA24    push        dword ptr [ebp+18]
 004ADA27    push        dword ptr [ebp+0C]
 004ADA2A    call        004ADABC
 004ADA2F    add         esp,8
 004ADA32    mov         dword ptr [ebp-10],eax
 004ADA35    push        dword ptr [ebp-0C]
 004ADA38    call        004A73C0
 004ADA3D    pop         ecx
 004ADA3E    mov         ecx,dword ptr [ebp-10]
 004ADA41    mov         dword ptr [eax],ecx
 004ADA43    push        dword ptr [ebp+0C]
 004ADA46    call        004A7288
 004ADA4B    pop         ecx
 004ADA4C    mov         eax,dword ptr [eax]
 004ADA4E    mov         edx,dword ptr [ebp-0C]
 004ADA51    cmp         eax,edx
>004ADA53    jne         004ADA63
 004ADA55    push        dword ptr [ebp+0C]
 004ADA58    call        004A7288
 004ADA5D    pop         ecx
 004ADA5E    mov         ecx,dword ptr [ebp-10]
 004ADA61    mov         dword ptr [eax],ecx
 004ADA63    push        dword ptr [ebp-10]
 004ADA66    call        004ADB3C
 004ADA6B    pop         ecx
 004ADA6C    mov         edx,dword ptr [ebp-0C]
 004ADA6F    mov         dword ptr [eax],edx
 004ADA71    push        dword ptr [ebp-10]
 004ADA74    call        004A73CC
 004ADA79    pop         ecx
 004ADA7A    xor         ecx,ecx
 004ADA7C    mov         dword ptr [eax],ecx
 004ADA7E    push        dword ptr [ebp-10]
 004ADA81    call        004A73C0
 004ADA86    pop         ecx
 004ADA87    xor         edx,edx
 004ADA89    mov         dword ptr [eax],edx
 004ADA8B    mov         eax,dword ptr [ebp+0C]
 004ADA8E    mov         ecx,dword ptr [eax+8]
 004ADA91    add         ecx,4
 004ADA94    push        ecx
 004ADA95    push        dword ptr [ebp-10]
 004ADA98    call        00692220
 004ADA9D    add         esp,8
 004ADAA0    mov         eax,dword ptr [ebp+0C]
 004ADAA3    inc         dword ptr [eax+10]
 004ADAA6    push        dword ptr [ebp-10]
 004ADAA9    push        dword ptr [ebp+8]
 004ADAAC    call        004ACF64
 004ADAB1    add         esp,8
 004ADAB4    mov         eax,dword ptr [ebp+8]
 004ADAB7    mov         esp,ebp
 004ADAB9    pop         ebp
 004ADABA    ret
end;*}

//004ADABC
{*function sub_004ADABC(?:?; ?:?):?;
begin
 004ADABC    push        ebp
 004ADABD    mov         ebp,esp
 004ADABF    add         esp,0FFFFFFD8
 004ADAC2    push        ebx
 004ADAC3    push        esi
 004ADAC4    push        edi
 004ADAC5    mov         eax,6C3A24
 004ADACA    call        0066FECC
 004ADACF    push        0
 004ADAD1    push        1
 004ADAD3    push        dword ptr [ebp+8]
 004ADAD6    call        004AD034
 004ADADB    add         esp,0C
 004ADADE    mov         dword ptr [ebp-28],eax
 004ADAE1    mov         word ptr [ebp-14],8
 004ADAE7    push        dword ptr [ebp+0C]
 004ADAEA    mov         edx,dword ptr [ebp-28]
 004ADAED    add         edx,10
 004ADAF0    push        edx
 004ADAF1    call        004ADBD0
 004ADAF6    add         esp,8
 004ADAF9    mov         word ptr [ebp-14],0
>004ADAFF    jmp         004ADB28
 004ADB01    push        1
 004ADB03    push        dword ptr [ebp-28]
 004ADB06    push        dword ptr [ebp+8]
 004ADB09    call        004A7298
 004ADB0E    add         esp,0C
 004ADB11    push        0
 004ADB13    push        0
 004ADB15    call        0067AD46
 004ADB1A    add         esp,8
 004ADB1D    mov         word ptr [ebp-14],10
 004ADB23    call        0067AF32
 004ADB28    mov         eax,dword ptr [ebp-28]
 004ADB2B    mov         edx,dword ptr [ebp-24]
 004ADB2E    mov         dword ptr fs:[0],edx
 004ADB35    pop         edi
 004ADB36    pop         esi
 004ADB37    pop         ebx
 004ADB38    mov         esp,ebp
 004ADB3A    pop         ebp
 004ADB3B    ret
end;*}

//004ADB3C
{*procedure sub_004ADB3C(?:?);
begin
 004ADB3C    push        ebp
 004ADB3D    mov         ebp,esp
 004ADB3F    mov         eax,dword ptr [ebp+8]
 004ADB42    add         eax,4
 004ADB45    pop         ebp
 004ADB46    ret
end;*}

//004ADBD0
{*procedure sub_004ADBD0(?:?; ?:?);
begin
 004ADBD0    push        ebp
 004ADBD1    mov         ebp,esp
 004ADBD3    add         esp,0FFFFFFD8
 004ADBD6    mov         eax,6C3A48
 004ADBDB    call        0066FECC
 004ADBE0    push        dword ptr [ebp+8]
 004ADBE3    push        8
 004ADBE5    call        004613E4
 004ADBEA    add         esp,8
 004ADBED    mov         dword ptr [ebp-4],eax
 004ADBF0    test        eax,eax
>004ADBF2    je          004ADC0E
 004ADBF4    mov         word ptr [ebp-18],14
 004ADBFA    push        dword ptr [ebp+0C]
 004ADBFD    push        dword ptr [ebp-4]
 004ADC00    call        004ADC1C
 004ADC05    add         esp,8
 004ADC08    mov         word ptr [ebp-18],8
 004ADC0E    mov         edx,dword ptr [ebp-28]
 004ADC11    mov         dword ptr fs:[0],edx
 004ADC18    mov         esp,ebp
 004ADC1A    pop         ebp
 004ADC1B    ret
end;*}

//004ADC1C
{*function sub_004ADC1C(?:?; ?:?):?;
begin
 004ADC1C    push        ebp
 004ADC1D    mov         ebp,esp
 004ADC1F    add         esp,0FFFFFFDC
 004ADC22    mov         eax,6C3A68
 004ADC27    call        0066FECC
 004ADC2C    mov         edx,dword ptr [ebp+0C]
 004ADC2F    mov         ecx,dword ptr [edx]
 004ADC31    mov         eax,dword ptr [ebp+8]
 004ADC34    mov         dword ptr [eax],ecx
 004ADC36    mov         edx,dword ptr [ebp+0C]
 004ADC39    mov         ecx,dword ptr [edx+4]
 004ADC3C    mov         eax,dword ptr [ebp+8]
 004ADC3F    mov         dword ptr [eax+4],ecx
 004ADC42    mov         edx,dword ptr [ebp-24]
 004ADC45    mov         dword ptr fs:[0],edx
 004ADC4C    mov         eax,dword ptr [ebp+8]
 004ADC4F    mov         esp,ebp
 004ADC51    pop         ebp
 004ADC52    ret
end;*}

end.