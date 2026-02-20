//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit17;

interface

uses
  SysUtils, Classes;

    @@Activeprocesses@Initialize; stdcall;//00542944
    @@Activeprocesses@Finalize; stdcall;//00542954
    constructor Create(AOwner:TComponent);//00542964
    procedure OKBtnClick(Sender:TObject);//00542A10
    procedure CancelBtnClick(Sender:TObject);//00542A4C
    //procedure tbSplitSizeChange(?:?);//00542A70
    destructor Destroy;//00542BCC
    constructor Create(AOwner:TComponent);//00542C1C
    procedure FormShow(Sender:TObject);//00542C94
    //procedure sub_00542D54(?:?; ?:?; ?:?; ?:?);//00542D54
    //procedure sub_00542E6C(?:TFProgressBar; ?:?);//00542E6C
    //procedure Dispatch(?:?);//00543138
    destructor Destroy;//00543170

implementation

//00542964
constructor TFIdcSplitSize.Create(AOwner:TComponent);
begin
{*
 00542964    push        ebp
 00542965    mov         ebp,esp
 00542967    add         esp,0FFFFFFCC
 0054296A    mov         byte ptr [ebp-0C],dl
 0054296D    test        dl,dl
>0054296F    jle         00542976
 00542971    call        0067EF6C
 00542976    mov         dword ptr [ebp-34],ecx
 00542979    mov         byte ptr [ebp-2D],dl
 0054297C    mov         dword ptr [ebp-4],eax
 0054297F    mov         eax,6E1698
 00542984    call        0066FECC
 00542989    mov         word ptr [ebp-1C],8
 0054298F    mov         ecx,dword ptr [ebp-34]
 00542992    xor         edx,edx
 00542994    mov         eax,dword ptr [ebp-4]
 00542997    call        0040207C
 0054299C    add         dword ptr [ebp-10],10
 005429A0    mov         word ptr [ebp-1C],14
 005429A6    mov         edx,6E1650
 005429AB    lea         eax,[ebp-8]
 005429AE    call        0067DAB4
 005429B3    inc         dword ptr [ebp-10]
 005429B6    mov         edx,dword ptr [eax]
 005429B8    mov         eax,dword ptr [ebp-4]
 005429BB    call        TTabPage.SetCaption
 005429C0    dec         dword ptr [ebp-10]
 005429C3    lea         eax,[ebp-8]
 005429C6    mov         edx,2
 005429CB    call        0067DCA0
 005429D0    mov         ecx,dword ptr [ebp-2C]
 005429D3    mov         dword ptr fs:[0],ecx
 005429DA    mov         eax,dword ptr [ebp-4]
 005429DD    mov         dl,byte ptr [ebp-2D]
 005429E0    test        dl,dl
>005429E2    je          005429E9
 005429E4    call        0067EF79
 005429E9    mov         esp,ebp
 005429EB    pop         ebp
 005429EC    ret
*}
end;

//00542A10
procedure TFIdcSplitSize.OKBtnClick(Sender:TObject);
begin
{*
 00542A10    push        ebp
 00542A11    mov         ebp,esp
 00542A13    add         esp,0FFFFFFF8
 00542A16    mov         dword ptr [ebp-8],edx
 00542A19    mov         dword ptr [ebp-4],eax
 00542A1C    mov         eax,dword ptr [ebp-4]
 00542A1F    mov         edx,dword ptr [eax+2FC];TFIdcSplitSize.tbSplitSize:TTrackBar
 00542A25    mov         ecx,dword ptr [edx+228];TTrackBar.Position:Integer
 00542A2B    add         ecx,13
 00542A2E    mov         eax,1
 00542A33    shl         eax,cl
 00542A35    mov         [006941B4],eax;gvar_006941B4
 00542A3A    mov         edx,dword ptr [ebp-4]
 00542A3D    mov         dword ptr [edx+24C],1;TFIdcSplitSize.FModalResult:TModalResult
 00542A47    pop         ecx
 00542A48    pop         ecx
 00542A49    pop         ebp
 00542A4A    ret
*}
end;

//00542A4C
procedure TFIdcSplitSize.CancelBtnClick(Sender:TObject);
begin
{*
 00542A4C    push        ebp
 00542A4D    mov         ebp,esp
 00542A4F    add         esp,0FFFFFFF8
 00542A52    mov         dword ptr [ebp-8],edx
 00542A55    mov         dword ptr [ebp-4],eax
 00542A58    xor         eax,eax
 00542A5A    mov         [006941B4],eax;gvar_006941B4
 00542A5F    mov         edx,dword ptr [ebp-4]
 00542A62    mov         dword ptr [edx+24C],2;TFIdcSplitSize.FModalResult:TModalResult
 00542A6C    pop         ecx
 00542A6D    pop         ecx
 00542A6E    pop         ebp
 00542A6F    ret
*}
end;

//00542A70
{*procedure TFIdcSplitSize.tbSplitSizeChange(?:?);
begin
 00542A70    push        ebp
 00542A71    mov         ebp,esp
 00542A73    add         esp,0FFFFFFC4
 00542A76    mov         dword ptr [ebp-3C],edx
 00542A79    mov         dword ptr [ebp-38],eax
 00542A7C    mov         eax,6E16EC
 00542A81    call        0066FECC
 00542A86    mov         word ptr [ebp-24],8
 00542A8C    lea         eax,[ebp-8]
 00542A8F    call        00401EA8
 00542A94    push        eax
 00542A95    inc         dword ptr [ebp-18]
 00542A98    mov         edx,dword ptr [ebp-38]
 00542A9B    mov         ecx,dword ptr [edx+2FC];TFIdcSplitSize.tbSplitSize:TTrackBar
 00542AA1    mov         edx,dword ptr [ecx+228];TTrackBar.Position:Integer
 00542AA7    lea         eax,[ebp-4]
 00542AAA    call        0067DC18
 00542AAF    mov         edx,eax
 00542AB1    inc         dword ptr [ebp-18]
 00542AB4    mov         eax,6E1664
 00542AB9    pop         ecx
 00542ABA    call        0067E37C
 00542ABF    lea         eax,[ebp-8]
 00542AC2    push        eax
 00542AC3    lea         eax,[ebp-10]
 00542AC6    call        00401EA8
 00542ACB    push        eax
 00542ACC    inc         dword ptr [ebp-18]
 00542ACF    mov         edx,6E1671
 00542AD4    lea         eax,[ebp-0C]
 00542AD7    call        0067DAB4
 00542ADC    inc         dword ptr [ebp-18]
 00542ADF    lea         edx,[ebp-0C]
 00542AE2    pop         ecx
 00542AE3    pop         eax
 00542AE4    call        0067DCF8
 00542AE9    lea         edx,[ebp-10]
 00542AEC    mov         edx,dword ptr [edx]
 00542AEE    mov         eax,dword ptr [ebp-38]
 00542AF1    call        TTabPage.SetCaption
 00542AF6    dec         dword ptr [ebp-18]
 00542AF9    lea         eax,[ebp-10]
 00542AFC    mov         edx,2
 00542B01    call        0067DCA0
 00542B06    dec         dword ptr [ebp-18]
 00542B09    lea         eax,[ebp-0C]
 00542B0C    mov         edx,2
 00542B11    call        0067DCA0
 00542B16    dec         dword ptr [ebp-18]
 00542B19    lea         eax,[ebp-8]
 00542B1C    mov         edx,2
 00542B21    call        0067DCA0
 00542B26    dec         dword ptr [ebp-18]
 00542B29    lea         eax,[ebp-4]
 00542B2C    mov         edx,2
 00542B31    call        0067DCA0
 00542B36    mov         ecx,dword ptr [ebp-34]
 00542B39    mov         dword ptr fs:[0],ecx
 00542B40    mov         esp,ebp
 00542B42    pop         ebp
 00542B43    ret
end;*}

//00542BCC
destructor TFIdcSplitSize.Destroy;
begin
{*
 00542BCC    push        ebp
 00542BCD    mov         ebp,esp
 00542BCF    add         esp,0FFFFFFD4
 00542BD2    call        0067EF81
 00542BD7    mov         byte ptr [ebp-29],dl
 00542BDA    mov         dword ptr [ebp-28],eax
 00542BDD    mov         eax,6E18DC
 00542BE2    call        0066FECC
 00542BE7    mov         dl,byte ptr [ebp-29]
 00542BEA    test        dl,dl
>00542BEC    jl          00542BFC
 00542BEE    sub         dword ptr [ebp-8],10
 00542BF2    xor         edx,edx
 00542BF4    mov         eax,dword ptr [ebp-28]
 00542BF7    call        0040235C
 00542BFC    mov         ecx,dword ptr [ebp-24]
 00542BFF    mov         dword ptr fs:[0],ecx
 00542C06    mov         al,byte ptr [ebp-29]
 00542C09    test        al,al
>00542C0B    jle         00542C15
 00542C0D    mov         eax,dword ptr [ebp-28]
 00542C10    call        0067EF74
 00542C15    mov         esp,ebp
 00542C17    pop         ebp
 00542C18    ret
*}
end;

//00542C1C
constructor TFProgressBar.Create(AOwner:TComponent);
begin
{*
 00542C1C    push        ebp
 00542C1D    mov         ebp,esp
 00542C1F    add         esp,0FFFFFFD0
 00542C22    mov         byte ptr [ebp-8],dl
 00542C25    test        dl,dl
>00542C27    jle         00542C2E
 00542C29    call        0067EF6C
 00542C2E    mov         dword ptr [ebp-30],ecx
 00542C31    mov         byte ptr [ebp-29],dl
 00542C34    mov         dword ptr [ebp-4],eax
 00542C37    mov         eax,6E1900
 00542C3C    call        0066FECC
 00542C41    mov         word ptr [ebp-18],8
 00542C47    mov         ecx,dword ptr [ebp-30]
 00542C4A    xor         edx,edx
 00542C4C    mov         eax,dword ptr [ebp-4]
 00542C4F    call        0040207C
 00542C54    add         dword ptr [ebp-0C],10
 00542C58    mov         edx,dword ptr [ebp-28]
 00542C5B    mov         dword ptr fs:[0],edx
 00542C62    mov         eax,dword ptr [ebp-4]
 00542C65    mov         dl,byte ptr [ebp-29]
 00542C68    test        dl,dl
>00542C6A    je          00542C71
 00542C6C    call        0067EF79
 00542C71    mov         esp,ebp
 00542C73    pop         ebp
 00542C74    ret
*}
end;

//00542C94
procedure TFProgressBar.FormShow(Sender:TObject);
begin
{*
 00542C94    push        ebp
 00542C95    mov         ebp,esp
 00542C97    add         esp,0FFFFFFCC
 00542C9A    mov         dword ptr [ebp-34],edx
 00542C9D    mov         dword ptr [ebp-30],eax
 00542CA0    mov         eax,6E1934
 00542CA5    call        0066FECC
 00542CAA    xor         edx,edx
 00542CAC    mov         ecx,dword ptr [ebp-30]
 00542CAF    mov         eax,dword ptr [ecx+2F0];TFProgressBar.pb:TProgressBar
 00542CB5    call        TProgressBar.SetPosition
 00542CBA    mov         word ptr [ebp-1C],8
 00542CC0    mov         edx,6E18E8
 00542CC5    lea         eax,[ebp-4]
 00542CC8    call        0067DAB4
 00542CCD    inc         dword ptr [ebp-10]
 00542CD0    push        dword ptr [eax]
 00542CD2    mov         edx,dword ptr [ebp-30]
 00542CD5    mov         ecx,dword ptr [edx+2F4];TFProgressBar.sb:TStatusBar
 00542CDB    mov         eax,dword ptr [ecx+208];TStatusBar.FPanels:TStatusPanels
 00542CE1    xor         edx,edx
 00542CE3    call        TStatusPanels.GetItem
 00542CE8    pop         edx
 00542CE9    call        TStatusPanel.SetText
 00542CEE    dec         dword ptr [ebp-10]
 00542CF1    lea         eax,[ebp-4]
 00542CF4    mov         edx,2
 00542CF9    call        0067DCA0
 00542CFE    mov         word ptr [ebp-1C],14
 00542D04    mov         edx,6E18E9
 00542D09    lea         eax,[ebp-8]
 00542D0C    call        0067DAB4
 00542D11    inc         dword ptr [ebp-10]
 00542D14    push        dword ptr [eax]
 00542D16    mov         ecx,dword ptr [ebp-30]
 00542D19    mov         eax,dword ptr [ecx+2F4];TFProgressBar.sb:TStatusBar
 00542D1F    mov         eax,dword ptr [eax+208];TStatusBar.FPanels:TStatusPanels
 00542D25    mov         edx,1
 00542D2A    call        TStatusPanels.GetItem
 00542D2F    pop         edx
 00542D30    call        TStatusPanel.SetText
 00542D35    dec         dword ptr [ebp-10]
 00542D38    lea         eax,[ebp-8]
 00542D3B    mov         edx,2
 00542D40    call        0067DCA0
 00542D45    mov         eax,dword ptr [ebp-2C]
 00542D48    mov         fs:[00000000],eax
 00542D4E    mov         esp,ebp
 00542D50    pop         ebp
 00542D51    ret
*}
end;

//00542D54
{*procedure sub_00542D54(?:?; ?:?; ?:?; ?:?);
begin
 00542D54    push        ebp
 00542D55    mov         ebp,esp
 00542D57    add         esp,0FFFFFFD0
 00542D5A    mov         dword ptr [ebp-8],ecx
 00542D5D    mov         dword ptr [ebp-4],edx
 00542D60    mov         dword ptr [ebp-30],eax
 00542D63    mov         eax,6E1970
 00542D68    call        0066FECC
 00542D6D    mov         dword ptr [ebp-10],2
 00542D74    lea         edx,[ebp-4]
 00542D77    lea         eax,[ebp-4]
 00542D7A    call        0067DAEC
 00542D7F    inc         dword ptr [ebp-10]
 00542D82    mov         word ptr [ebp-1C],8
 00542D88    lea         edx,[ebp-8]
 00542D8B    lea         eax,[ebp-8]
 00542D8E    call        0067DAEC
 00542D93    inc         dword ptr [ebp-10]
 00542D96    xor         edx,edx
 00542D98    mov         ecx,dword ptr [ebp-30]
 00542D9B    mov         eax,dword ptr [ecx+2F0]
 00542DA1    call        TProgressBar.SetMin
 00542DA6    mov         edx,dword ptr [ebp+8]
 00542DA9    mov         ecx,dword ptr [ebp-30]
 00542DAC    mov         eax,dword ptr [ecx+2F0]
 00542DB2    call        TProgressBar.SetMax
 00542DB7    mov         edx,1
 00542DBC    mov         ecx,dword ptr [ebp-30]
 00542DBF    mov         eax,dword ptr [ecx+2F0]
 00542DC5    call        TProgressBar.SetStep
 00542DCA    xor         edx,edx
 00542DCC    mov         ecx,dword ptr [ebp-30]
 00542DCF    mov         eax,dword ptr [ecx+2F0]
 00542DD5    call        TProgressBar.SetPosition
 00542DDA    mov         edx,dword ptr [ebp-30]
 00542DDD    mov         eax,dword ptr [edx+2F0]
 00542DE3    mov         edx,dword ptr [eax]
 00542DE5    call        dword ptr [edx+88]
 00542DEB    mov         ecx,dword ptr [ebp-30]
 00542DEE    mov         eax,dword ptr [ecx+2F4]
 00542DF4    mov         eax,dword ptr [eax+208]
 00542DFA    xor         edx,edx
 00542DFC    call        TStatusPanels.GetItem
 00542E01    mov         edx,dword ptr [ebp-4]
 00542E04    call        TStatusPanel.SetText
 00542E09    mov         eax,dword ptr [ebp-30]
 00542E0C    mov         ecx,dword ptr [eax+2F4]
 00542E12    mov         eax,dword ptr [ecx+208]
 00542E18    mov         edx,1
 00542E1D    call        TStatusPanels.GetItem
 00542E22    mov         edx,dword ptr [ebp-8]
 00542E25    call        TStatusPanel.SetText
 00542E2A    mov         eax,dword ptr [ebp-30]
 00542E2D    mov         eax,dword ptr [eax+2F4]
 00542E33    mov         edx,dword ptr [eax]
 00542E35    call        dword ptr [edx+88]
 00542E3B    dec         dword ptr [ebp-10]
 00542E3E    lea         eax,[ebp-8]
 00542E41    mov         edx,2
 00542E46    call        0067DCA0
 00542E4B    dec         dword ptr [ebp-10]
 00542E4E    lea         eax,[ebp-4]
 00542E51    mov         edx,2
 00542E56    call        0067DCA0
 00542E5B    mov         ecx,dword ptr [ebp-2C]
 00542E5E    mov         dword ptr fs:[0],ecx
 00542E65    mov         esp,ebp
 00542E67    pop         ebp
 00542E68    ret         4
end;*}

//00542E6C
{*procedure sub_00542E6C(?:TFProgressBar; ?:?);
begin
 00542E6C    push        ebp
 00542E6D    mov         ebp,esp
 00542E6F    add         esp,0FFFFFFB0
 00542E72    mov         dword ptr [ebp-40],edx
 00542E75    mov         dword ptr [ebp-3C],eax
 00542E78    mov         eax,6E19D0
 00542E7D    call        0066FECC
 00542E82    mov         edx,dword ptr [ebp-40]
 00542E85    mov         ecx,dword ptr [edx+4]
 00542E88    test        ecx,ecx
>00542E8A    jne         00542F6C
 00542E90    mov         eax,dword ptr [ebp-40]
 00542E93    mov         edx,dword ptr [eax+8]
 00542E96    mov         dword ptr [ebp-44],edx
 00542E99    mov         ecx,dword ptr [ebp-44]
 00542E9C    test        ecx,ecx
>00542E9E    je          00542EA7
 00542EA0    mov         eax,dword ptr [ebp-44]
 00542EA3    mov         edx,dword ptr [eax]
>00542EA5    jmp         00542EA9
 00542EA7    xor         edx,edx
 00542EA9    push        edx
 00542EAA    mov         edx,6E18EB
 00542EAF    lea         eax,[ebp-8]
 00542EB2    call        0067DAB4
 00542EB7    inc         dword ptr [ebp-1C]
 00542EBA    push        dword ptr [eax]
 00542EBC    mov         byte ptr [ebp-45],0
 00542EC0    mov         ecx,dword ptr [ebp-44]
 00542EC3    test        ecx,ecx
>00542EC5    je          00542ECF
 00542EC7    mov         eax,dword ptr [ebp-44]
 00542ECA    lea         edx,[eax+4]
>00542ECD    jmp         00542EEB
 00542ECF    mov         byte ptr [ebp-45],1
 00542ED3    mov         word ptr [ebp-28],8
 00542ED9    mov         edx,6E18EA
 00542EDE    lea         eax,[ebp-4]
 00542EE1    call        0067DAB4
 00542EE6    inc         dword ptr [ebp-1C]
 00542EE9    mov         edx,eax
 00542EEB    mov         edx,dword ptr [edx]
 00542EED    mov         eax,[006ECC48];0x0 _FProgressBar
 00542EF2    pop         ecx
 00542EF3    call        00542D54
 00542EF8    dec         dword ptr [ebp-1C]
 00542EFB    lea         eax,[ebp-8]
 00542EFE    mov         edx,2
 00542F03    call        0067DCA0
 00542F08    mov         cl,byte ptr [ebp-45]
 00542F0B    test        cl,cl
>00542F0D    je          00542F23
 00542F0F    dec         dword ptr [ebp-1C]
 00542F12    lea         eax,[ebp-4]
 00542F15    mov         edx,2
 00542F1A    call        0067DCA0
 00542F1F    mov         byte ptr [ebp-45],0
 00542F23    mov         ecx,dword ptr [ebp-44]
 00542F26    test        ecx,ecx
>00542F28    je          0054307E
 00542F2E    mov         eax,dword ptr [ebp-44]
 00542F31    mov         dword ptr [ebp-0C],eax
 00542F34    mov         edx,dword ptr [ebp-0C]
 00542F37    test        edx,edx
>00542F39    je          0054307E
 00542F3F    mov         word ptr [ebp-28],20
 00542F45    dec         dword ptr [ebp-1C]
 00542F48    mov         eax,dword ptr [ebp-0C]
 00542F4B    add         eax,4
 00542F4E    mov         edx,2
 00542F53    call        0067DCA0
 00542F58    push        dword ptr [ebp-0C]
 00542F5B    call        0066EAB0
 00542F60    pop         ecx
 00542F61    mov         word ptr [ebp-28],14
>00542F67    jmp         0054307E
 00542F6C    mov         ecx,dword ptr [ebp-40]
 00542F6F    mov         eax,dword ptr [ecx+4]
 00542F72    dec         eax
>00542F73    jne         00542F9C
 00542F75    mov         edx,dword ptr ds:[6ECC48];0x0 _FProgressBar
 00542F7B    mov         eax,dword ptr [edx+2F0]
 00542F81    call        0061EDE4
 00542F86    mov         edx,dword ptr ds:[6ECC48];0x0 _FProgressBar
 00542F8C    mov         eax,dword ptr [edx+2F0]
 00542F92    mov         edx,dword ptr [eax]
 00542F94    call        dword ptr [edx+7C]
>00542F97    jmp         0054307E
 00542F9C    mov         ecx,dword ptr [ebp-40]
 00542F9F    mov         eax,dword ptr [ecx+4]
 00542FA2    cmp         eax,2
>00542FA5    jne         0054307E
 00542FAB    mov         edx,dword ptr [ebp-40]
 00542FAE    mov         ecx,dword ptr [edx+8]
 00542FB1    mov         dword ptr [ebp-4C],ecx
 00542FB4    mov         byte ptr [ebp-4D],0
 00542FB8    mov         eax,dword ptr [ebp-4C]
 00542FBB    test        eax,eax
>00542FBD    je          00542FC7
 00542FBF    mov         edx,dword ptr [ebp-4C]
 00542FC2    lea         ecx,[edx+4]
>00542FC5    jmp         00542FE3
 00542FC7    mov         byte ptr [ebp-4D],1
 00542FCB    mov         word ptr [ebp-28],2C
 00542FD1    mov         edx,6E18EC
 00542FD6    lea         eax,[ebp-10]
 00542FD9    call        0067DAB4
 00542FDE    inc         dword ptr [ebp-1C]
 00542FE1    mov         ecx,eax
 00542FE3    mov         eax,ecx
 00542FE5    push        dword ptr [eax]
 00542FE7    mov         edx,dword ptr ds:[6ECC48];0x0 _FProgressBar
 00542FED    mov         eax,dword ptr [edx+2F4]
 00542FF3    mov         eax,dword ptr [eax+208]
 00542FF9    mov         edx,1
 00542FFE    call        TStatusPanels.GetItem
 00543003    pop         edx
 00543004    call        TStatusPanel.SetText
 00543009    mov         al,byte ptr [ebp-4D]
 0054300C    test        al,al
>0054300E    je          00543024
 00543010    dec         dword ptr [ebp-1C]
 00543013    lea         eax,[ebp-10]
 00543016    mov         edx,2
 0054301B    call        0067DCA0
 00543020    mov         byte ptr [ebp-4D],0
 00543024    mov         ecx,dword ptr ds:[6ECC48];0x0 _FProgressBar
 0054302A    mov         eax,dword ptr [ecx+2F4]
 00543030    mov         edx,dword ptr [eax]
 00543032    call        dword ptr [edx+7C]
 00543035    mov         ecx,dword ptr [ebp-4C]
 00543038    test        ecx,ecx
>0054303A    je          00543071
 0054303C    mov         eax,dword ptr [ebp-4C]
 0054303F    mov         dword ptr [ebp-14],eax
 00543042    mov         edx,dword ptr [ebp-14]
 00543045    test        edx,edx
>00543047    je          00543071
 00543049    mov         word ptr [ebp-28],44
 0054304F    dec         dword ptr [ebp-1C]
 00543052    mov         eax,dword ptr [ebp-14]
 00543055    add         eax,4
 00543058    mov         edx,2
 0054305D    call        0067DCA0
 00543062    push        dword ptr [ebp-14]
 00543065    call        0066EAB0
 0054306A    pop         ecx
 0054306B    mov         word ptr [ebp-28],38
 00543071    mov         ecx,dword ptr ds:[6E9DCC];^Application:TApplication
 00543077    mov         eax,dword ptr [ecx]
 00543079    call        005D820C
 0054307E    mov         edx,dword ptr [ebp-38]
 00543081    mov         dword ptr fs:[0],edx
 00543088    mov         esp,ebp
 0054308A    pop         ebp
 0054308B    ret
end;*}

//00543138
{*procedure TFProgressBar.Dispatch(?:?);
begin
 00543138    push        ebp
 00543139    mov         ebp,esp
 0054313B    add         esp,0FFFFFFF8
 0054313E    mov         dword ptr [ebp-8],edx
 00543141    mov         dword ptr [ebp-4],eax
 00543144    mov         eax,dword ptr [ebp-8]
 00543147    mov         edx,dword ptr [eax]
 00543149    sub         edx,464
>0054314F    jne         0054315E
 00543151    mov         edx,dword ptr [ebp-8]
 00543154    mov         eax,dword ptr [ebp-4]
 00543157    call        00542E6C
>0054315C    jmp         00543169
 0054315E    mov         edx,dword ptr [ebp-8]
 00543161    mov         eax,dword ptr [ebp-4]
 00543164    call        TObject.Dispatch
 00543169    pop         ecx
 0054316A    pop         ecx
 0054316B    pop         ebp
 0054316C    ret
end;*}

//00543170
destructor TFProgressBar.Destroy;
begin
{*
 00543170    push        ebp
 00543171    mov         ebp,esp
 00543173    add         esp,0FFFFFFD4
 00543176    call        0067EF81
 0054317B    mov         byte ptr [ebp-29],dl
 0054317E    mov         dword ptr [ebp-28],eax
 00543181    mov         eax,6E1BA0
 00543186    call        0066FECC
 0054318B    mov         dl,byte ptr [ebp-29]
 0054318E    test        dl,dl
>00543190    jl          005431A0
 00543192    sub         dword ptr [ebp-8],10
 00543196    xor         edx,edx
 00543198    mov         eax,dword ptr [ebp-28]
 0054319B    call        0040235C
 005431A0    mov         ecx,dword ptr [ebp-24]
 005431A3    mov         dword ptr fs:[0],ecx
 005431AA    mov         al,byte ptr [ebp-29]
 005431AD    test        al,al
>005431AF    jle         005431B9
 005431B1    mov         eax,dword ptr [ebp-28]
 005431B4    call        0067EF74
 005431B9    mov         esp,ebp
 005431BB    pop         ebp
 005431BC    ret
*}
end;

end.