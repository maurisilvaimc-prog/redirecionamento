//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit19;

interface

uses
  SysUtils, Classes;

    @@Ccalendr@Initialize; stdcall;//0054451C
    @@Ccalendr@Finalize; stdcall;//0054452C
    @Cdiroutl@TCDirectoryOutline@$bctr$qqrp18Classes@TComponent; stdcall;//0054453C
    //function sub_005445FC(?:?):?;//005445FC
    //function sub_00544630(?:?; ?:?):?;//00544630
    @Cdiroutl@TCDirectoryOutline@AssignCaseProc$qqrv; stdcall;//0054469C
    @Cdiroutl@TCDirectoryOutline@BuildOneLevel$qqrl; stdcall;//005446E4
    //function sub_005449F4(?:?; ?:?; ?:?):?;//005449F4
    //procedure sub_00544A68(?:?; ?:?);//00544A68
    //procedure sub_00544AC8(?:?);//00544AC8
    //procedure sub_00544AE0(?:?);//00544AE0
    //function sub_00544B00(?:?):?;//00544B00
    @Cdiroutl@TCDirectoryOutline@BuildTree$qqrv; stdcall;//00544B64
    @Cdiroutl@TCDirectoryOutline@BuildSubTree$qqrl; stdcall;//00544C54
    @Cdiroutl@TCDirectoryOutline@Change$qqrv; stdcall;//00544CB4
    procedure @Cdiroutl@TCDirectoryOutline@Click$qqrv; stdcall;//00544CE4
    @Cdiroutl@TCDirectoryOutline@CreateWnd$qqrv; stdcall;//00544D54
    //procedure @Cdiroutl@TCDirectoryOutline@Expand$qqri(?:?); stdcall;//00544E44
    @Cdiroutl@TCDirectoryOutline@Loaded$qqrv; stdcall;//00544E80
    @Cdiroutl@TCDirectoryOutline@ForceCase$qqrrx17System@AnsiString; stdcall;//00544EBC
    @Cdiroutl@TCDirectoryOutline@SetDirectory$qqr17System@AnsiString; stdcall;//00544F80
    //procedure sub_005450FC(?:?; ?:?);//005450FC
    @Cdiroutl@TCDirectoryOutline@SetDrive$qqrc; stdcall;//00545134
    @Cdiroutl@TCDirectoryOutline@DriveToInt$qqrc; stdcall;//00545240
    //procedure sub_00545260(?:?; ?:?);//00545260
    procedure @Cdiroutl@TCDirectoryOutline@SetTextCase$qqr18Cdiroutl@TTextCase(Value:TTextCase); stdcall;//005452B4
    @Cdiroutl@TCDirectoryOutline@CurDir$qv; stdcall;//0054537C
    @Cdiroutl@TCDirectoryOutline@GetChildNamed$qqrrx17System@AnsiStringl; stdcall;//00545498
    @Cdiroutl@TCDirectoryOutline@WalkTree$qqrrx17System@AnsiString; stdcall;//00545678
    //procedure sub_0054597C(?:?; ?:?);//0054597C
    @$xp$27Cdiroutl@TCDirectoryOutline; stdcall;//00545A18

implementation

//005445FC
{*function sub_005445FC(?:?):?;
begin
 005445FC    push        ebp
 005445FD    mov         ebp,esp
 005445FF    add         esp,0FFFFFFD8
 00544602    mov         dword ptr [ebp-28],eax
 00544605    mov         eax,6E252C
 0054460A    call        0066FECC
 0054460F    push        1
 00544611    push        0
 00544613    push        dword ptr [ebp-28]
 00544616    call        0066F904
 0054461B    add         esp,0C
 0054461E    mov         edx,dword ptr [ebp-24]
 00544621    mov         dword ptr fs:[0],edx
 00544628    mov         eax,dword ptr [ebp-28]
 0054462B    mov         esp,ebp
 0054462D    pop         ebp
 0054462E    ret
end;*}

//00544630
{*function sub_00544630(?:?; ?:?):?;
begin
 00544630    push        ebp
 00544631    mov         ebp,esp
 00544633    add         esp,0FFFFFFF8
 00544636    mov         byte ptr [ebp-5],dl
 00544639    mov         dword ptr [ebp-4],eax
 0054463C    cmp         byte ptr [ebp-5],0
>00544640    jl          00544671
 00544642    cmp         byte ptr [ebp-5],2
>00544646    jg          00544671
 00544648    movsx       ecx,byte ptr [ebp-5]
 0054464C    and         ecx,80000007
>00544652    jns         00544659
 00544654    dec         ecx
 00544655    or          ecx,0FFFFFFF8
 00544658    inc         ecx
 00544659    mov         al,1
 0054465B    shl         al,cl
 0054465D    movsx       edx,byte ptr [ebp-5]
 00544661    test        edx,edx
>00544663    jns         00544668
 00544665    add         edx,7
 00544668    sar         edx,3
 0054466B    mov         ecx,dword ptr [ebp-4]
 0054466E    or          byte ptr [ecx+edx],al
 00544671    mov         eax,dword ptr [ebp-4]
 00544674    pop         ecx
 00544675    pop         ecx
 00544676    pop         ebp
 00544677    ret
end;*}

//005449F4
{*function sub_005449F4(?:?; ?:?; ?:?):?;
begin
 005449F4    push        ebp
 005449F5    mov         ebp,esp
 005449F7    add         esp,0FFFFFFD8
 005449FA    mov         eax,6E2554
 005449FF    call        0066FECC
 00544A04    mov         word ptr [ebp-18],8
 00544A0A    mov         eax,dword ptr [ebp+8]
 00544A0D    add         eax,0C
 00544A10    call        00401EA8
 00544A15    inc         dword ptr [ebp-0C]
 00544A18    inc         dword ptr [ebp-0C]
 00544A1B    mov         word ptr [ebp-18],14
 00544A21    lea         eax,[ebp-4]
 00544A24    mov         edx,dword ptr [ebp+0C]
 00544A27    call        0067DAEC
 00544A2C    inc         dword ptr [ebp-0C]
 00544A2F    mov         eax,dword ptr [eax]
 00544A31    mov         ecx,dword ptr [ebp+8]
 00544A34    mov         edx,dword ptr [ebp+10]
 00544A37    call        00658184
 00544A3C    mov         edx,dword ptr [ebp+8]
 00544A3F    mov         dword ptr [edx+158],eax
 00544A45    dec         dword ptr [ebp-0C]
 00544A48    lea         eax,[ebp-4]
 00544A4B    mov         edx,2
 00544A50    call        0067DCA0
 00544A55    mov         eax,dword ptr [ebp-28]
 00544A58    mov         fs:[00000000],eax
 00544A5E    mov         eax,dword ptr [ebp+8]
 00544A61    mov         esp,ebp
 00544A63    pop         ebp
 00544A64    ret
end;*}

//00544A68
{*procedure sub_00544A68(?:?; ?:?);
begin
 00544A68    push        ebp
 00544A69    mov         ebp,esp
 00544A6B    add         esp,0FFFFFFDC
 00544A6E    mov         eax,6E2584
 00544A73    call        0066FECC
 00544A78    mov         dword ptr [ebp-8],2
 00544A7F    cmp         dword ptr [ebp+8],0
>00544A83    je          00544AB8
 00544A85    mov         word ptr [ebp-14],8
 00544A8B    mov         eax,dword ptr [ebp+8]
 00544A8E    call        0065822C
 00544A93    dec         dword ptr [ebp-8]
 00544A96    dec         dword ptr [ebp-8]
 00544A99    mov         eax,dword ptr [ebp+8]
 00544A9C    add         eax,0C
 00544A9F    mov         edx,2
 00544AA4    call        0067DCA0
 00544AA9    test        byte ptr [ebp+0C],1
>00544AAD    je          00544AB8
 00544AAF    push        dword ptr [ebp+8]
 00544AB2    call        0066EAB0
 00544AB7    pop         ecx
 00544AB8    mov         ecx,dword ptr [ebp-24]
 00544ABB    mov         dword ptr fs:[0],ecx
 00544AC2    mov         esp,ebp
 00544AC4    pop         ebp
 00544AC5    ret
end;*}

//00544AC8
{*procedure sub_00544AC8(?:?);
begin
 00544AC8    push        ebp
 00544AC9    mov         ebp,esp
 00544ACB    mov         eax,dword ptr [ebp+8]
 00544ACE    cmp         dword ptr [eax+158],0
 00544AD5    sete        al
 00544AD8    and         eax,1
 00544ADB    pop         ebp
 00544ADC    ret
end;*}

//00544AE0
{*procedure sub_00544AE0(?:?);
begin
 00544AE0    push        ebp
 00544AE1    mov         ebp,esp
 00544AE3    mov         eax,dword ptr [ebp+8]
 00544AE6    call        006581F0
 00544AEB    mov         edx,dword ptr [ebp+8]
 00544AEE    mov         dword ptr [edx+158],eax
 00544AF4    push        dword ptr [ebp+8]
 00544AF7    call        00544AC8
 00544AFC    pop         ecx
 00544AFD    pop         ebp
 00544AFE    ret
end;*}

//00544B00
{*function sub_00544B00(?:?):?;
begin
 00544B00    push        ebp
 00544B01    mov         ebp,esp
 00544B03    mov         eax,dword ptr [ebp+8]
 00544B06    pop         ebp
 00544B07    ret
end;*}

//00544CE4
procedure @Cdiroutl@TCDirectoryOutline@Click$qqrv; stdcall;
begin
{*
 00544CE4    push        ebp
 00544CE5    mov         ebp,esp
 00544CE7    add         esp,0FFFFFFD4
 00544CEA    mov         dword ptr [ebp-2C],eax
 00544CED    mov         eax,6E2088
 00544CF2    call        0066FECC
 00544CF7    mov         eax,dword ptr [ebp-2C]
 00544CFA    call        TCustomOutline.sub_00573D4C
 00544CFF    mov         word ptr [ebp-18],8
 00544D05    lea         eax,[ebp-4]
 00544D08    call        00401EA8
 00544D0D    push        eax
 00544D0E    inc         dword ptr [ebp-0C]
 00544D11    mov         eax,dword ptr [ebp-2C]
 00544D14    call        005736D0
 00544D19    mov         edx,eax
 00544D1B    mov         eax,dword ptr [ebp-2C]
 00544D1E    call        005735E4
 00544D23    pop         edx
 00544D24    call        00571CC0
 00544D29    lea         edx,[ebp-4]
 00544D2C    mov         edx,dword ptr [edx]
 00544D2E    mov         eax,dword ptr [ebp-2C]
 00544D31    call        @Cdiroutl@TCDirectoryOutline@SetDirectory$qqr17System@AnsiString
 00544D36    dec         dword ptr [ebp-0C]
 00544D39    lea         eax,[ebp-4]
 00544D3C    mov         edx,2
 00544D41    call        0067DCA0
 00544D46    mov         ecx,dword ptr [ebp-28]
 00544D49    mov         dword ptr fs:[0],ecx
 00544D50    mov         esp,ebp
 00544D52    pop         ebp
 00544D53    ret
*}
end;

//00544E44
{*procedure @Cdiroutl@TCDirectoryOutline@Expand$qqri(?:?); stdcall;
begin
 00544E44    push        ebp
 00544E45    mov         ebp,esp
 00544E47    add         esp,0FFFFFFF8
 00544E4A    mov         dword ptr [ebp-8],edx
 00544E4D    mov         dword ptr [ebp-4],eax
 00544E50    mov         edx,dword ptr [ebp-8]
 00544E53    mov         eax,dword ptr [ebp-4]
 00544E56    call        005735E4
 00544E5B    cmp         dword ptr [eax+0C],0
>00544E5F    jne         00544E6F
 00544E61    mov         edx,dword ptr [ebp-8]
 00544E64    mov         eax,dword ptr [ebp-4]
 00544E67    mov         ecx,dword ptr [eax]
 00544E69    call        dword ptr [ecx+0E4]
 00544E6F    mov         edx,dword ptr [ebp-8]
 00544E72    mov         eax,dword ptr [ebp-4]
 00544E75    call        TCustomOutline.sub_00575CC8
 00544E7A    pop         ecx
 00544E7B    pop         ecx
 00544E7C    pop         ebp
 00544E7D    ret
end;*}

//005450FC
{*procedure sub_005450FC(?:?; ?:?);
begin
 005450FC    push        ebp
 005450FD    mov         ebp,esp
 005450FF    add         esp,0FFFFFFF8
 00545102    push        ebx
 00545103    movsx       eax,byte ptr [ebp+8]
 00545107    mov         dword ptr [ebp-4],eax
 0054510A    push        dword ptr [ebp-4]
 0054510D    call        0067636C
 00545112    pop         ecx
 00545113    mov         ebx,eax
 00545115    movsx       eax,byte ptr [ebp+0C]
 00545119    mov         dword ptr [ebp-8],eax
 0054511C    push        dword ptr [ebp-8]
 0054511F    call        0067636C
 00545124    pop         ecx
 00545125    cmp         ebx,eax
 00545127    sete        al
 0054512A    and         eax,1
 0054512D    pop         ebx
 0054512E    pop         ecx
 0054512F    pop         ecx
 00545130    pop         ebp
 00545131    ret
end;*}

//00545260
{*procedure sub_00545260(?:?; ?:?);
begin
 00545260    push        ebp
 00545261    mov         ebp,esp
 00545263    add         esp,0FFFFFFF8
 00545266    mov         byte ptr [ebp-5],dl
 00545269    mov         dword ptr [ebp-4],eax
 0054526C    cmp         byte ptr [ebp-5],0
>00545270    jl          005452A3
 00545272    cmp         byte ptr [ebp-5],0A
>00545276    jg          005452A3
 00545278    movsx       ecx,byte ptr [ebp-5]
 0054527C    and         ecx,80000007
>00545282    jns         00545289
 00545284    dec         ecx
 00545285    or          ecx,0FFFFFFF8
 00545288    inc         ecx
 00545289    mov         al,1
 0054528B    shl         al,cl
 0054528D    movsx       edx,byte ptr [ebp-5]
 00545291    test        edx,edx
>00545293    jns         00545298
 00545295    add         edx,7
 00545298    sar         edx,3
 0054529B    mov         ecx,dword ptr [ebp-4]
 0054529E    and         al,byte ptr [ecx+edx]
>005452A1    jmp         005452A5
 005452A3    xor         eax,eax
 005452A5    test        al,al
 005452A7    setne       al
 005452AA    and         eax,1
 005452AD    pop         ecx
 005452AE    pop         ecx
 005452AF    pop         ebp
 005452B0    ret
end;*}

//005452B4
procedure @Cdiroutl@TCDirectoryOutline@SetTextCase$qqr18Cdiroutl@TTextCase(Value:TTextCase); stdcall;
begin
{*
 005452B4    push        ebp
 005452B5    mov         ebp,esp
 005452B7    add         esp,0FFFFFFD0
 005452BA    mov         byte ptr [ebp-2D],dl
 005452BD    mov         dword ptr [ebp-2C],eax
 005452C0    mov         eax,6E2230
 005452C5    call        0066FECC
 005452CA    mov         dl,byte ptr [ebp-2D]
 005452CD    mov         ecx,dword ptr [ebp-2C]
 005452D0    cmp         dl,byte ptr [ecx+310]
>005452D6    je          0054536E
 005452DC    mov         al,byte ptr [ebp-2D]
 005452DF    mov         edx,dword ptr [ebp-2C]
 005452E2    mov         byte ptr [edx+310],al
 005452E8    mov         eax,dword ptr [ebp-2C]
 005452EB    call        @Cdiroutl@TCDirectoryOutline@AssignCaseProc$qqrv
 005452F0    cmp         byte ptr [ebp-2D],2
>005452F4    jne         00545352
 005452F6    mov         word ptr [ebp-18],14
 005452FC    lea         eax,[ebp-4]
 005452FF    call        00401EA8
 00545304    push        eax
 00545305    inc         dword ptr [ebp-0C]
 00545308    call        @Cdiroutl@TCDirectoryOutline@CurDir$qv
 0054530D    pop         ecx
 0054530E    mov         word ptr [ebp-18],8
 00545314    lea         eax,[ebp-4]
 00545317    mov         edx,1
 0054531C    call        00403C2C
 00545321    mov         cl,byte ptr [eax]
 00545323    mov         eax,dword ptr [ebp-2C]
 00545326    mov         byte ptr [eax+301],cl
 0054532C    lea         edx,[ebp-4]
 0054532F    mov         eax,dword ptr [ebp-2C]
 00545332    add         eax,304
 00545337    call        0067DCD0
 0054533C    dec         dword ptr [ebp-0C]
 0054533F    lea         eax,[ebp-4]
 00545342    mov         edx,2
 00545347    call        0067DCA0
 0054534C    mov         word ptr [ebp-18],0
 00545352    mov         eax,dword ptr [ebp-2C]
 00545355    add         eax,1C
 00545358    xor         edx,edx
 0054535A    call        00545260
 0054535F    test        al,al
>00545361    jne         0054536E
 00545363    mov         eax,dword ptr [ebp-2C]
 00545366    mov         edx,dword ptr [eax]
 00545368    call        dword ptr [edx+0E8]
 0054536E    mov         ecx,dword ptr [ebp-28]
 00545371    mov         dword ptr fs:[0],ecx
 00545378    mov         esp,ebp
 0054537A    pop         ebp
 0054537B    ret
*}
end;

//0054597C
{*procedure sub_0054597C(?:?; ?:?);
begin
 0054597C    push        ebp
 0054597D    mov         ebp,esp
 0054597F    mov         edx,dword ptr [ebp+0C]
 00545982    mov         eax,dword ptr [ebp+8]
 00545985    call        0067E1F0
 0054598A    pop         ebp
 0054598B    ret
end;*}

end.