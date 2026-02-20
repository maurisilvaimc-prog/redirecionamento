//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit21;

interface

uses
  SysUtils, Classes;

    @@Cgauges@Initialize; stdcall;//00547CC0
    @@Cgauges@Finalize; stdcall;//00547CD0
    @Cspin@TCSpinButton@$bctr$qqrp18Classes@TComponent; stdcall;//00547CE0
    //function sub_00547DBC(?:?; ?:?):?;//00547DBC
    @Cspin@TCSpinButton@CreateButton$qqrv; stdcall;//00547E08
    //function sub_00547EA8(?:?; ?:?):?;//00547EA8
    @Cspin@TCSpinButton@AdjustSize$qqrrit1; stdcall;//00547EF0
    @Cspin@TCSpinButton@SetBounds$qqriiii; stdcall;//00547F84
    @Cspin@TCSpinButton@WMSize$qqrr16Messages@TWMSize; stdcall;//00547FC8
    @Cspin@TCSpinButton@WMSetFocus$qqrr20Messages@TWMSetFocus; stdcall;//0054803C
    @Cspin@TCSpinButton@WMKillFocus$qqrr21Messages@TWMKillFocus; stdcall;//00548070
    //function sub_005480A4(?:?; ?:?):?;//005480A4
    //procedure @Cspin@TCSpinButton@KeyDown$qqrrus46System@%Set$t18Classes@Classes__1$iuc$0$iuc$6%(?:?; ?:?); stdcall;//005480F0
    @Cspin@TCSpinButton@BtnMouseDown$qqrp14System@TObject21Controls@TMouseButton46System@%Set$t18Classes@Classes__1$iuc$0$iuc$6%ii; stdcall;//005481A8
    @Cspin@TCSpinButton@BtnClick$qqrp14System@TObject; stdcall;//00548284
    @Cspin@TCSpinButton@SetFocusBtn$qqrp23Cspin@TTimerSpeedButton; stdcall;//005482EC
    @Cspin@TCSpinButton@WMGetDlgCode$qqrr20Messages@TWMNoParams; stdcall;//00548384
    @Cspin@TCSpinButton@Loaded$qqrv; stdcall;//005483A0
    //function @Cspin@TCSpinButton@GetUpGlyph$qqrv:?; stdcall;//00548400
    procedure @Cspin@TCSpinButton@SetUpGlyph$qqrp16Graphics@TBitmap(Value:TBitmap); stdcall;//00548424
    //function @Cspin@TCSpinButton@GetDownGlyph$qqrv:?; stdcall;//00548494
    procedure @Cspin@TCSpinButton@SetDownGlyph$qqrp16Graphics@TBitmap(Value:TBitmap); stdcall;//005484B8
    @Cspin@TCSpinEdit@$bctr$qqrp18Classes@TComponent; stdcall;//00548528
    @Cspin@TCSpinEdit@$bdtr$qqrv; stdcall;//005486C0
    procedure sub_00548724;//00548724
    procedure @Cspin@TCSpinEdit@GetChildren$qqrynpqqrp18Classes@TComponent$vp18Classes@TComponent(Proc:TGetChildProc; Root:TComponent); stdcall;//0054877C
    //procedure @Cspin@TCSpinEdit@KeyDown$qqrrus46System@%Set$t18Classes@Classes__1$iuc$0$iuc$6%(?:?; ?:?); stdcall;//00548790
    //procedure @Cspin@TCSpinEdit@KeyPress$qqrrc(?:?); stdcall;//005487E4
    @Cspin@TCSpinEdit@IsValidChar$qqrc; stdcall;//00548828
    @Cspin@TCSpinEdit@CreateParams$qqrr22Controls@TCreateParams; stdcall;//005488B4
    @Cspin@TCSpinEdit@CreateWnd$qqrv; stdcall;//005488DC
    @Cspin@TCSpinEdit@SetEditRect$qqrv; stdcall;//005488F8
    @Cspin@TCSpinEdit@WMSize$qqrr16Messages@TWMSize; stdcall;//0054898C
    @Cspin@TCSpinEdit@GetMinHeight$qqrv; stdcall;//00548A60
    @Cspin@TCSpinEdit@UpClick$qqrp14System@TObject; stdcall;//00548B04
    @Cspin@TCSpinEdit@DownClick$qqrp14System@TObject; stdcall;//00548B44
    @Cspin@TCSpinEdit@WMPaste$qqrr20Messages@TWMNoParams; stdcall;//00548B84
    @Cspin@TCSpinEdit@WMCut$qqrr20Messages@TWMNoParams; stdcall;//00548BAC
    @Cspin@TCSpinEdit@CMExit$qqrr20Messages@TWMNoParams; stdcall;//00548BD4
    //function @Cspin@TCSpinEdit@GetValue$qqrv:?; stdcall;//00548C18
    procedure @Cspin@TCSpinEdit@SetValue$qqrl(Value:long); stdcall;//00548CE4
    @Cspin@TCSpinEdit@CheckValue$qqrl; stdcall;//00548D40
    @Cspin@TCSpinEdit@CMEnter$qqrr20Messages@TWMNoParams; stdcall;//00548DA4
    //procedure sub_00548DDC(?:?; ?:?);//00548DDC
    @Cspin@TTimerSpeedButton@$bctr$qqrp18Classes@TComponent; stdcall;//00548E30
    //function sub_00548E98(?:?):?;//00548E98
    @Cspin@TTimerSpeedButton@$bdtr$qqrv; stdcall;//00548EEC
    procedure @Cspin@TTimerSpeedButton@MouseDown$qqr21Controls@TMouseButton46System@%Set$t18Classes@Classes__1$iuc$0$iuc$6%ii(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); stdcall;//00548FA0
    //procedure sub_0054905C(?:?; ?:?);//0054905C
    procedure @Cspin@TTimerSpeedButton@MouseUp$qqr21Controls@TMouseButton46System@%Set$t18Classes@Classes__1$iuc$0$iuc$6%ii(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); stdcall;//005490B0
    @Cspin@TTimerSpeedButton@TimerExpired$qqrp14System@TObject; stdcall;//005490F8
    @Cspin@TTimerSpeedButton@Paint$qqrv; stdcall;//00549198
    @$xp$23Cspin@TTimerSpeedButton; stdcall;//0054937C
    @$xp$16Cspin@TCSpinEdit; stdcall;//005493A8
    @Cspin@TCSpinEdit@Dispatch$qqrpv; stdcall;//00549958
    @$xp$18Cspin@TCSpinButton; stdcall;//005499E4
    @Cspin@TCSpinButton@Dispatch$qqrpv; stdcall;//00549DCC
    @Cspin@TCSpinButton@$bdtr$qqrv; stdcall;//00549E34

implementation

//00547DBC
{*function sub_00547DBC(?:?; ?:?):?;
begin
 00547DBC    push        ebp
 00547DBD    mov         ebp,esp
 00547DBF    add         esp,0FFFFFFF8
 00547DC2    mov         byte ptr [ebp-5],dl
 00547DC5    mov         dword ptr [ebp-4],eax
 00547DC8    cmp         byte ptr [ebp-5],0
>00547DCC    jl          00547DFF
 00547DCE    cmp         byte ptr [ebp-5],10
>00547DD2    jg          00547DFF
 00547DD4    movsx       ecx,byte ptr [ebp-5]
 00547DD8    and         ecx,80000007
>00547DDE    jns         00547DE5
 00547DE0    dec         ecx
 00547DE1    or          ecx,0FFFFFFF8
 00547DE4    inc         ecx
 00547DE5    mov         al,1
 00547DE7    shl         al,cl
 00547DE9    not         al
 00547DEB    movsx       edx,byte ptr [ebp-5]
 00547DEF    test        edx,edx
>00547DF1    jns         00547DF6
 00547DF3    add         edx,7
 00547DF6    sar         edx,3
 00547DF9    mov         ecx,dword ptr [ebp-4]
 00547DFC    and         byte ptr [ecx+edx],al
 00547DFF    mov         eax,dword ptr [ebp-4]
 00547E02    pop         ecx
 00547E03    pop         ecx
 00547E04    pop         ebp
 00547E05    ret
end;*}

//00547EA8
{*function sub_00547EA8(?:?; ?:?):?;
begin
 00547EA8    push        ebp
 00547EA9    mov         ebp,esp
 00547EAB    add         esp,0FFFFFFF8
 00547EAE    mov         byte ptr [ebp-5],dl
 00547EB1    mov         dword ptr [ebp-4],eax
 00547EB4    cmp         byte ptr [ebp-5],0
>00547EB8    jl          00547EE9
 00547EBA    cmp         byte ptr [ebp-5],1
>00547EBE    jg          00547EE9
 00547EC0    movsx       ecx,byte ptr [ebp-5]
 00547EC4    and         ecx,80000007
>00547ECA    jns         00547ED1
 00547ECC    dec         ecx
 00547ECD    or          ecx,0FFFFFFF8
 00547ED0    inc         ecx
 00547ED1    mov         al,1
 00547ED3    shl         al,cl
 00547ED5    movsx       edx,byte ptr [ebp-5]
 00547ED9    test        edx,edx
>00547EDB    jns         00547EE0
 00547EDD    add         edx,7
 00547EE0    sar         edx,3
 00547EE3    mov         ecx,dword ptr [ebp-4]
 00547EE6    or          byte ptr [ecx+edx],al
 00547EE9    mov         eax,dword ptr [ebp-4]
 00547EEC    pop         ecx
 00547EED    pop         ecx
 00547EEE    pop         ebp
 00547EEF    ret
end;*}

//005480A4
{*function sub_005480A4(?:?; ?:?):?;
begin
 005480A4    push        ebp
 005480A5    mov         ebp,esp
 005480A7    add         esp,0FFFFFFF8
 005480AA    mov         byte ptr [ebp-5],dl
 005480AD    mov         dword ptr [ebp-4],eax
 005480B0    cmp         byte ptr [ebp-5],0
>005480B4    jl          005480E7
 005480B6    cmp         byte ptr [ebp-5],1
>005480BA    jg          005480E7
 005480BC    movsx       ecx,byte ptr [ebp-5]
 005480C0    and         ecx,80000007
>005480C6    jns         005480CD
 005480C8    dec         ecx
 005480C9    or          ecx,0FFFFFFF8
 005480CC    inc         ecx
 005480CD    mov         al,1
 005480CF    shl         al,cl
 005480D1    not         al
 005480D3    movsx       edx,byte ptr [ebp-5]
 005480D7    test        edx,edx
>005480D9    jns         005480DE
 005480DB    add         edx,7
 005480DE    sar         edx,3
 005480E1    mov         ecx,dword ptr [ebp-4]
 005480E4    and         byte ptr [ecx+edx],al
 005480E7    mov         eax,dword ptr [ebp-4]
 005480EA    pop         ecx
 005480EB    pop         ecx
 005480EC    pop         ebp
 005480ED    ret
end;*}

//005480F0
{*procedure @Cspin@TCSpinButton@KeyDown$qqrrus46System@%Set$t18Classes@Classes__1$iuc$0$iuc$6%(?:?; ?:?); stdcall;
begin
 005480F0    push        ebp
 005480F1    mov         ebp,esp
 005480F3    add         esp,0FFFFFFF4
 005480F6    push        ebx
 005480F7    mov         byte ptr [ebp-9],cl
 005480FA    mov         dword ptr [ebp-8],edx
 005480FD    mov         dword ptr [ebp-4],eax
 00548100    mov         eax,dword ptr [ebp-8]
 00548103    mov         dx,word ptr [eax]
 00548106    sub         dx,20
>0054810A    je          00548183
 0054810C    sub         dx,6
>00548110    je          0054811D
 00548112    sub         dx,2
>00548116    je          00548150
>00548118    jmp         005481A3
 0054811D    mov         ecx,dword ptr [ebp-4]
 00548120    mov         edx,dword ptr [ecx+208]
 00548126    mov         eax,dword ptr [ebp-4]
 00548129    call        @Cspin@TCSpinButton@SetFocusBtn$qqrp23Cspin@TTimerSpeedButton
 0054812E    mov         edx,0FFFFFFEB
 00548133    mov         eax,dword ptr [ebp-4]
 00548136    mov         eax,dword ptr [eax+208]
 0054813C    call        0067E488
 00548141    mov         ebx,eax
 00548143    mov         eax,dword ptr [ebp-4]
 00548146    mov         eax,dword ptr [eax+208]
 0054814C    call        ebx
>0054814E    jmp         005481A3
 00548150    mov         edx,dword ptr [ebp-4]
 00548153    mov         edx,dword ptr [edx+20C]
 00548159    mov         eax,dword ptr [ebp-4]
 0054815C    call        @Cspin@TCSpinButton@SetFocusBtn$qqrp23Cspin@TTimerSpeedButton
 00548161    mov         edx,0FFFFFFEB
 00548166    mov         eax,dword ptr [ebp-4]
 00548169    mov         eax,dword ptr [eax+20C]
 0054816F    call        0067E488
 00548174    mov         ebx,eax
 00548176    mov         eax,dword ptr [ebp-4]
 00548179    mov         eax,dword ptr [eax+20C]
 0054817F    call        ebx
>00548181    jmp         005481A3
 00548183    mov         edx,0FFFFFFEB
 00548188    mov         ecx,dword ptr [ebp-4]
 0054818B    mov         eax,dword ptr [ecx+210]
 00548191    call        0067E488
 00548196    mov         ebx,eax
 00548198    mov         eax,dword ptr [ebp-4]
 0054819B    mov         eax,dword ptr [eax+210]
 005481A1    call        ebx
 005481A3    pop         ebx
 005481A4    mov         esp,ebp
 005481A6    pop         ebp
 005481A7    ret
end;*}

//00548400
{*function @Cspin@TCSpinButton@GetUpGlyph$qqrv:?; stdcall;
begin
 00548400    push        ebp
 00548401    mov         ebp,esp
 00548403    add         esp,0FFFFFFF8
 00548406    mov         dword ptr [ebp-4],eax
 00548409    mov         eax,dword ptr [ebp-4]
 0054840C    mov         eax,dword ptr [eax+208]
 00548412    call        TSpeedButton.GetGlyph
 00548417    mov         dword ptr [ebp-8],eax
 0054841A    mov         eax,dword ptr [ebp-8]
 0054841D    pop         ecx
 0054841E    pop         ecx
 0054841F    pop         ebp
 00548420    ret
end;*}

//00548424
procedure @Cspin@TCSpinButton@SetUpGlyph$qqrp16Graphics@TBitmap(Value:TBitmap); stdcall;
begin
{*
 00548424    push        ebp
 00548425    mov         ebp,esp
 00548427    add         esp,0FFFFFFF8
 0054842A    mov         dword ptr [ebp-8],edx
 0054842D    mov         dword ptr [ebp-4],eax
 00548430    cmp         dword ptr [ebp-8],0
>00548434    je          00548449
 00548436    mov         edx,dword ptr [ebp-8]
 00548439    mov         eax,dword ptr [ebp-4]
 0054843C    mov         eax,dword ptr [eax+208]
 00548442    call        TSpeedButton.SetGlyph
>00548447    jmp         0054848E
 00548449    push        6E2BB4
 0054844E    mov         edx,dword ptr ds:[6E9CCC];^gvar_006EA390
 00548454    push        dword ptr [edx]
 00548456    call        USER32.LoadBitmapA
 0054845B    push        eax
 0054845C    mov         ecx,dword ptr [ebp-4]
 0054845F    mov         eax,dword ptr [ecx+208]
 00548465    call        TSpeedButton.GetGlyph
 0054846A    pop         edx
 0054846B    call        0067D9FC
 00548470    mov         dl,1
 00548472    mov         eax,dword ptr [ebp-4]
 00548475    mov         eax,dword ptr [eax+208]
 0054847B    call        TSpeedButton.SetNumGlyphs
 00548480    mov         edx,dword ptr [ebp-4]
 00548483    mov         eax,dword ptr [edx+208]
 00548489    mov         edx,dword ptr [eax]
 0054848B    call        dword ptr [edx+7C]
 0054848E    pop         ecx
 0054848F    pop         ecx
 00548490    pop         ebp
 00548491    ret
*}
end;

//00548494
{*function @Cspin@TCSpinButton@GetDownGlyph$qqrv:?; stdcall;
begin
 00548494    push        ebp
 00548495    mov         ebp,esp
 00548497    add         esp,0FFFFFFF8
 0054849A    mov         dword ptr [ebp-4],eax
 0054849D    mov         eax,dword ptr [ebp-4]
 005484A0    mov         eax,dword ptr [eax+20C]
 005484A6    call        TSpeedButton.GetGlyph
 005484AB    mov         dword ptr [ebp-8],eax
 005484AE    mov         eax,dword ptr [ebp-8]
 005484B1    pop         ecx
 005484B2    pop         ecx
 005484B3    pop         ebp
 005484B4    ret
end;*}

//005484B8
procedure @Cspin@TCSpinButton@SetDownGlyph$qqrp16Graphics@TBitmap(Value:TBitmap); stdcall;
begin
{*
 005484B8    push        ebp
 005484B9    mov         ebp,esp
 005484BB    add         esp,0FFFFFFF8
 005484BE    mov         dword ptr [ebp-8],edx
 005484C1    mov         dword ptr [ebp-4],eax
 005484C4    cmp         dword ptr [ebp-8],0
>005484C8    je          005484DD
 005484CA    mov         edx,dword ptr [ebp-8]
 005484CD    mov         eax,dword ptr [ebp-4]
 005484D0    mov         eax,dword ptr [eax+20C]
 005484D6    call        TSpeedButton.SetGlyph
>005484DB    jmp         00548522
 005484DD    push        6E2BBB
 005484E2    mov         edx,dword ptr ds:[6E9CCC];^gvar_006EA390
 005484E8    push        dword ptr [edx]
 005484EA    call        USER32.LoadBitmapA
 005484EF    push        eax
 005484F0    mov         ecx,dword ptr [ebp-4]
 005484F3    mov         eax,dword ptr [ecx+20C]
 005484F9    call        TSpeedButton.GetGlyph
 005484FE    pop         edx
 005484FF    call        0067D9FC
 00548504    mov         dl,1
 00548506    mov         eax,dword ptr [ebp-4]
 00548509    mov         eax,dword ptr [eax+20C]
 0054850F    call        TSpeedButton.SetNumGlyphs
 00548514    mov         edx,dword ptr [ebp-4]
 00548517    mov         eax,dword ptr [edx+20C]
 0054851D    mov         edx,dword ptr [eax]
 0054851F    call        dword ptr [edx+7C]
 00548522    pop         ecx
 00548523    pop         ecx
 00548524    pop         ebp
 00548525    ret
*}
end;

//00548724
procedure sub_00548724;
begin
{*
 00548724    push        ebp
 00548725    mov         ebp,esp
 00548727    add         esp,0FFFFFFD4
 0054872A    call        0067EF81
 0054872F    mov         byte ptr [ebp-29],dl
 00548732    mov         dword ptr [ebp-4],eax
 00548735    mov         eax,6E2DA4
 0054873A    call        0066FECC
 0054873F    mov         dword ptr [ebp-0C],0A
 00548746    cmp         byte ptr [ebp-29],0
>0054874A    jl          00548760
 0054874C    mov         word ptr [ebp-18],8
 00548752    sub         dword ptr [ebp-0C],0A
 00548756    xor         edx,edx
 00548758    mov         eax,dword ptr [ebp-4]
 0054875B    call        TWinControl.Destroy
 00548760    mov         edx,dword ptr [ebp-28]
 00548763    mov         dword ptr fs:[0],edx
 0054876A    cmp         byte ptr [ebp-29],0
>0054876E    jle         00548778
 00548770    mov         eax,dword ptr [ebp-4]
 00548773    call        0067EF74
 00548778    mov         esp,ebp
 0054877A    pop         ebp
 0054877B    ret
*}
end;

//0054877C
procedure @Cspin@TCSpinEdit@GetChildren$qqrynpqqrp18Classes@TComponent$vp18Classes@TComponent(Proc:TGetChildProc; Root:TComponent); stdcall;
begin
{*
 0054877C    push        ebp
 0054877D    mov         ebp,esp
 0054877F    add         esp,0FFFFFFF8
 00548782    mov         dword ptr [ebp-8],edx
 00548785    mov         dword ptr [ebp-4],eax
 00548788    pop         ecx
 00548789    pop         ecx
 0054878A    pop         ebp
 0054878B    ret         8
*}
end;

//00548790
{*procedure @Cspin@TCSpinEdit@KeyDown$qqrrus46System@%Set$t18Classes@Classes__1$iuc$0$iuc$6%(?:?; ?:?); stdcall;
begin
 00548790    push        ebp
 00548791    mov         ebp,esp
 00548793    add         esp,0FFFFFFF4
 00548796    mov         byte ptr [ebp-9],cl
 00548799    mov         dword ptr [ebp-8],edx
 0054879C    mov         dword ptr [ebp-4],eax
 0054879F    mov         eax,dword ptr [ebp-8]
 005487A2    cmp         word ptr [eax],26
>005487A6    jne         005487B8
 005487A8    mov         edx,dword ptr [ebp-4]
 005487AB    mov         eax,dword ptr [ebp-4]
 005487AE    mov         ecx,dword ptr [eax]
 005487B0    call        dword ptr [ecx+0E8]
>005487B6    jmp         005487CF
 005487B8    mov         edx,dword ptr [ebp-8]
 005487BB    cmp         word ptr [edx],28
>005487BF    jne         005487CF
 005487C1    mov         edx,dword ptr [ebp-4]
 005487C4    mov         eax,dword ptr [ebp-4]
 005487C7    mov         ecx,dword ptr [eax]
 005487C9    call        dword ptr [ecx+0EC]
 005487CF    mov         cl,byte ptr [ebp-9]
 005487D2    mov         edx,dword ptr [ebp-8]
 005487D5    mov         eax,dword ptr [ebp-4]
 005487D8    call        TWinControl.sub_005FA804
 005487DD    mov         esp,ebp
 005487DF    pop         ebp
 005487E0    ret
end;*}

//005487E4
{*procedure @Cspin@TCSpinEdit@KeyPress$qqrrc(?:?); stdcall;
begin
 005487E4    push        ebp
 005487E5    mov         ebp,esp
 005487E7    add         esp,0FFFFFFF8
 005487EA    mov         dword ptr [ebp-8],edx
 005487ED    mov         dword ptr [ebp-4],eax
 005487F0    mov         eax,dword ptr [ebp-8]
 005487F3    mov         dl,byte ptr [eax]
 005487F5    mov         eax,dword ptr [ebp-4]
 005487F8    mov         ecx,dword ptr [eax]
 005487FA    call        dword ptr [ecx+0E4]
 00548800    test        al,al
>00548802    jne         00548811
 00548804    mov         edx,dword ptr [ebp-8]
 00548807    mov         byte ptr [edx],0
 0054880A    push        0
 0054880C    call        USER32.MessageBeep
 00548811    mov         eax,dword ptr [ebp-8]
 00548814    cmp         byte ptr [eax],0
>00548817    je          00548824
 00548819    mov         edx,dword ptr [ebp-8]
 0054881C    mov         eax,dword ptr [ebp-4]
 0054881F    call        TWinControl.sub_005FAA3C
 00548824    pop         ecx
 00548825    pop         ecx
 00548826    pop         ebp
 00548827    ret
end;*}

//00548C18
{*function @Cspin@TCSpinEdit@GetValue$qqrv:?; stdcall;
begin
 00548C18    push        ebp
 00548C19    mov         ebp,esp
 00548C1B    add         esp,0FFFFFFCC
 00548C1E    push        ebx
 00548C1F    push        esi
 00548C20    push        edi
 00548C21    mov         dword ptr [ebp-30],eax
 00548C24    mov         eax,6E2C98
 00548C29    call        0066FECC
 00548C2E    mov         word ptr [ebp-1C],8
 00548C34    mov         word ptr [ebp-1C],14
 00548C3A    lea         eax,[ebp-4]
 00548C3D    call        00401EA8
 00548C42    mov         edx,eax
 00548C44    inc         dword ptr [ebp-10]
 00548C47    mov         eax,dword ptr [ebp-30]
 00548C4A    call        TTabPage.GetCaption
 00548C4F    lea         eax,[ebp-4]
 00548C52    call        0067E1A0
 00548C57    mov         dword ptr [ebp-34],eax
 00548C5A    dec         dword ptr [ebp-10]
 00548C5D    lea         eax,[ebp-4]
 00548C60    mov         edx,2
 00548C65    call        0067DCA0
 00548C6A    mov         word ptr [ebp-1C],0
>00548C70    jmp         00548CCD
 00548C72    mov         word ptr [ebp-1C],20
 00548C78    mov         ecx,dword ptr [ebp-30]
 00548C7B    mov         edx,dword ptr [ecx+220]
 00548C81    lea         eax,[ebp-8]
 00548C84    call        0067DC18
 00548C89    inc         dword ptr [ebp-10]
 00548C8C    mov         edx,dword ptr [eax]
 00548C8E    mov         eax,dword ptr [ebp-30]
 00548C91    call        TTabPage.SetCaption
 00548C96    dec         dword ptr [ebp-10]
 00548C99    lea         eax,[ebp-8]
 00548C9C    mov         edx,2
 00548CA1    call        0067DCA0
 00548CA6    mov         ecx,dword ptr [ebp-30]
 00548CA9    mov         eax,dword ptr [ecx+220]
 00548CAF    push        eax
 00548CB0    xor         edx,edx
 00548CB2    mov         dword ptr [ebp-10],edx
 00548CB5    lea         ecx,[ebp-2C]
 00548CB8    push        ecx
 00548CB9    call        0067B5E7
 00548CBE    pop         ecx
 00548CBF    pop         eax
>00548CC0    jmp         00548CDA
 00548CC2    mov         word ptr [ebp-1C],10
 00548CC8    call        0067AF32
 00548CCD    mov         eax,dword ptr [ebp-34]
 00548CD0    mov         edx,dword ptr [ebp-2C]
 00548CD3    mov         dword ptr fs:[0],edx
 00548CDA    pop         edi
 00548CDB    pop         esi
 00548CDC    pop         ebx
 00548CDD    mov         esp,ebp
 00548CDF    pop         ebp
 00548CE0    ret
end;*}

//00548CE4
procedure @Cspin@TCSpinEdit@SetValue$qqrl(Value:long); stdcall;
begin
{*
 00548CE4    push        ebp
 00548CE5    mov         ebp,esp
 00548CE7    add         esp,0FFFFFFD0
 00548CEA    mov         dword ptr [ebp-30],edx
 00548CED    mov         dword ptr [ebp-2C],eax
 00548CF0    mov         eax,6E2CD4
 00548CF5    call        0066FECC
 00548CFA    mov         word ptr [ebp-18],8
 00548D00    mov         edx,dword ptr [ebp-30]
 00548D03    mov         eax,dword ptr [ebp-2C]
 00548D06    call        @Cspin@TCSpinEdit@CheckValue$qqrl
 00548D0B    mov         edx,eax
 00548D0D    lea         eax,[ebp-4]
 00548D10    call        0067DC18
 00548D15    inc         dword ptr [ebp-0C]
 00548D18    mov         edx,dword ptr [eax]
 00548D1A    mov         eax,dword ptr [ebp-2C]
 00548D1D    call        TTabPage.SetCaption
 00548D22    dec         dword ptr [ebp-0C]
 00548D25    lea         eax,[ebp-4]
 00548D28    mov         edx,2
 00548D2D    call        0067DCA0
 00548D32    mov         ecx,dword ptr [ebp-28]
 00548D35    mov         dword ptr fs:[0],ecx
 00548D3C    mov         esp,ebp
 00548D3E    pop         ebp
 00548D3F    ret
*}
end;

//00548DDC
{*procedure sub_00548DDC(?:?; ?:?);
begin
 00548DDC    push        ebp
 00548DDD    mov         ebp,esp
 00548DDF    add         esp,0FFFFFFF8
 00548DE2    mov         byte ptr [ebp-5],dl
 00548DE5    mov         dword ptr [ebp-4],eax
 00548DE8    cmp         byte ptr [ebp-5],0
>00548DEC    jl          00548E1F
 00548DEE    cmp         byte ptr [ebp-5],0A
>00548DF2    jg          00548E1F
 00548DF4    movsx       ecx,byte ptr [ebp-5]
 00548DF8    and         ecx,80000007
>00548DFE    jns         00548E05
 00548E00    dec         ecx
 00548E01    or          ecx,0FFFFFFF8
 00548E04    inc         ecx
 00548E05    mov         al,1
 00548E07    shl         al,cl
 00548E09    movsx       edx,byte ptr [ebp-5]
 00548E0D    test        edx,edx
>00548E0F    jns         00548E14
 00548E11    add         edx,7
 00548E14    sar         edx,3
 00548E17    mov         ecx,dword ptr [ebp-4]
 00548E1A    and         al,byte ptr [ecx+edx]
>00548E1D    jmp         00548E21
 00548E1F    xor         eax,eax
 00548E21    test        al,al
 00548E23    setne       al
 00548E26    and         eax,1
 00548E29    pop         ecx
 00548E2A    pop         ecx
 00548E2B    pop         ebp
 00548E2C    ret
end;*}

//00548E98
{*function sub_00548E98(?:?):?;
begin
 00548E98    push        ebp
 00548E99    mov         ebp,esp
 00548E9B    add         esp,0FFFFFFD8
 00548E9E    mov         dword ptr [ebp-28],eax
 00548EA1    mov         eax,6E2DB8
 00548EA6    call        0066FECC
 00548EAB    push        1
 00548EAD    push        0
 00548EAF    push        dword ptr [ebp-28]
 00548EB2    call        0066F904
 00548EB7    add         esp,0C
 00548EBA    mov         edx,dword ptr [ebp-24]
 00548EBD    mov         dword ptr fs:[0],edx
 00548EC4    mov         eax,dword ptr [ebp-28]
 00548EC7    mov         esp,ebp
 00548EC9    pop         ebp
 00548ECA    ret
end;*}

//00548FA0
procedure @Cspin@TTimerSpeedButton@MouseDown$qqr21Controls@TMouseButton46System@%Set$t18Classes@Classes__1$iuc$0$iuc$6%ii(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); stdcall;
begin
{*
 00548FA0    push        ebp
 00548FA1    mov         ebp,esp
 00548FA3    add         esp,0FFFFFFCC
 00548FA6    mov         byte ptr [ebp-2A],cl
 00548FA9    mov         byte ptr [ebp-29],dl
 00548FAC    mov         dword ptr [ebp-28],eax
 00548FAF    mov         eax,6E2D58
 00548FB4    call        0066FECC
 00548FB9    push        dword ptr [ebp+0C]
 00548FBC    push        dword ptr [ebp+8]
 00548FBF    mov         cl,byte ptr [ebp-2A]
 00548FC2    mov         dl,byte ptr [ebp-29]
 00548FC5    mov         eax,dword ptr [ebp-28]
 00548FC8    call        TSpeedButton.MouseDown
 00548FCD    mov         eax,dword ptr [ebp-28]
 00548FD0    add         eax,18C
 00548FD5    mov         dl,1
 00548FD7    call        0054905C
 00548FDC    test        al,al
>00548FDE    je          0054904A
 00548FE0    mov         ecx,dword ptr [ebp-28]
 00548FE3    cmp         dword ptr [ecx+188],0
>00548FEA    jne         00549004
 00548FEC    mov         ecx,dword ptr [ebp-28]
 00548FEF    mov         dl,1
 00548FF1    mov         eax,[005DAA7C];TTimer
 00548FF6    call        TTimer.Create
 00548FFB    mov         edx,dword ptr [ebp-28]
 00548FFE    mov         dword ptr [edx+188],eax
 00549004    mov         dword ptr [ebp-34],5490F8;@Cspin@TTimerSpeedButton@TimerExpired$qqrp14System@TObject
 0054900B    mov         eax,dword ptr [ebp-28]
 0054900E    mov         dword ptr [ebp-30],eax
 00549011    lea         ecx,[ebp-34]
 00549014    push        dword ptr [ecx+4]
 00549017    push        dword ptr [ecx]
 00549019    mov         edx,dword ptr [ebp-28]
 0054901C    mov         eax,dword ptr [edx+188]
 00549022    call        TTimer.SetOnTimer
 00549027    mov         edx,190
 0054902C    mov         ecx,dword ptr [ebp-28]
 0054902F    mov         eax,dword ptr [ecx+188]
 00549035    call        TTimer.SetInterval
 0054903A    mov         dl,1
 0054903C    mov         ecx,dword ptr [ebp-28]
 0054903F    mov         eax,dword ptr [ecx+188]
 00549045    call        TTimer.SetEnabled
 0054904A    mov         edx,dword ptr [ebp-24]
 0054904D    mov         dword ptr fs:[0],edx
 00549054    mov         esp,ebp
 00549056    pop         ebp
 00549057    ret         8
*}
end;

//0054905C
{*procedure sub_0054905C(?:?; ?:?);
begin
 0054905C    push        ebp
 0054905D    mov         ebp,esp
 0054905F    add         esp,0FFFFFFF8
 00549062    mov         byte ptr [ebp-5],dl
 00549065    mov         dword ptr [ebp-4],eax
 00549068    cmp         byte ptr [ebp-5],0
>0054906C    jl          0054909F
 0054906E    cmp         byte ptr [ebp-5],1
>00549072    jg          0054909F
 00549074    movsx       ecx,byte ptr [ebp-5]
 00549078    and         ecx,80000007
>0054907E    jns         00549085
 00549080    dec         ecx
 00549081    or          ecx,0FFFFFFF8
 00549084    inc         ecx
 00549085    mov         al,1
 00549087    shl         al,cl
 00549089    movsx       edx,byte ptr [ebp-5]
 0054908D    test        edx,edx
>0054908F    jns         00549094
 00549091    add         edx,7
 00549094    sar         edx,3
 00549097    mov         ecx,dword ptr [ebp-4]
 0054909A    and         al,byte ptr [ecx+edx]
>0054909D    jmp         005490A1
 0054909F    xor         eax,eax
 005490A1    test        al,al
 005490A3    setne       al
 005490A6    and         eax,1
 005490A9    pop         ecx
 005490AA    pop         ecx
 005490AB    pop         ebp
 005490AC    ret
end;*}

//005490B0
procedure @Cspin@TTimerSpeedButton@MouseUp$qqr21Controls@TMouseButton46System@%Set$t18Classes@Classes__1$iuc$0$iuc$6%ii(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); stdcall;
begin
{*
 005490B0    push        ebp
 005490B1    mov         ebp,esp
 005490B3    add         esp,0FFFFFFF8
 005490B6    mov         byte ptr [ebp-6],cl
 005490B9    mov         byte ptr [ebp-5],dl
 005490BC    mov         dword ptr [ebp-4],eax
 005490BF    push        dword ptr [ebp+0C]
 005490C2    push        dword ptr [ebp+8]
 005490C5    mov         cl,byte ptr [ebp-6]
 005490C8    mov         dl,byte ptr [ebp-5]
 005490CB    mov         eax,dword ptr [ebp-4]
 005490CE    call        TSpeedButton.MouseUp
 005490D3    mov         eax,dword ptr [ebp-4]
 005490D6    cmp         dword ptr [eax+188],0
>005490DD    je          005490EF
 005490DF    xor         edx,edx
 005490E1    mov         ecx,dword ptr [ebp-4]
 005490E4    mov         eax,dword ptr [ecx+188]
 005490EA    call        TTimer.SetEnabled
 005490EF    pop         ecx
 005490F0    pop         ecx
 005490F1    pop         ebp
 005490F2    ret         8
*}
end;

end.