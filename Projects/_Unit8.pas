//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit8;

interface

uses
  SysUtils, Classes;

    @@Infos@Initialize; stdcall;//00496F0C
    @@Infos@Finalize; stdcall;//00496F1C
    constructor Create(AOwner:TComponent);//00496F2C
    procedure bOkClick(Sender:TObject);//00496FCC
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//00496FEC
    procedure FormShow(Sender:TObject);//00497018
    procedure bEditClick(Sender:TObject);//00497394
    procedure lbVarsClick(Sender:TObject);//00497700
    //procedure pcChange(?:?);//00497784
    procedure bApplyTypeClick(Sender:TObject);//004978F0
    procedure bCancelTypeClick(Sender:TObject);//00498B80
    procedure bApplyVarClick(Sender:TObject);//00498CD4
    procedure bCancelVarClick(Sender:TObject);//004991F0
    procedure bRemoveSelectedClick(Sender:TObject);//0049924C
    procedure bAddClick(Sender:TObject);//0049933C
    procedure sub_004993C8(?:TFEditFunctionDlg_11011981);//004993C8
    procedure sub_00499478(?:TFEditFunctionDlg_11011981);//00499478
    procedure sub_004998C0(?:TFEditFunctionDlg_11011981);//004998C0
    procedure sub_0049A908(?:TFEditFunctionDlg_11011981);//0049A908
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0049AC98
    procedure cbMethodClick(Sender:TObject);//0049ACF4
    procedure FormCreate(Sender:TObject);//0049ADE0
    procedure bRemoveAllClick(Sender:TObject);//0049ADF8
    destructor Destroy;//0049AF14
    //function sub_0049AF78(?:?; ?:?):?;//0049AF78
    //procedure sub_0049AFD4(?:?; ?:?);//0049AFD4
    //function sub_0049AFFC(?:TFileDropper; ?:?):?;//0049AFFC
    //procedure sub_0049B0C0(?:?; ?:?; ?:?);//0049B0C0
    //procedure sub_0049B168(?:?);//0049B168

implementation

//00496F2C
constructor TFEditFunctionDlg_11011981.Create(AOwner:TComponent);
begin
{*
 00496F2C    push        ebp
 00496F2D    mov         ebp,esp
 00496F2F    add         esp,0FFFFFFD0
 00496F32    mov         byte ptr [ebp-8],dl
 00496F35    test        dl,dl
>00496F37    jle         00496F3E
 00496F39    call        0067EF6C
 00496F3E    mov         dword ptr [ebp-30],ecx
 00496F41    mov         byte ptr [ebp-29],dl
 00496F44    mov         dword ptr [ebp-4],eax
 00496F47    mov         eax,6BC2BC
 00496F4C    call        0066FECC
 00496F51    mov         word ptr [ebp-18],8
 00496F57    mov         ecx,dword ptr [ebp-30]
 00496F5A    xor         edx,edx
 00496F5C    mov         eax,dword ptr [ebp-4]
 00496F5F    call        0040207C
 00496F64    add         dword ptr [ebp-0C],10
 00496F68    mov         eax,dword ptr [ebp-4]
 00496F6B    add         eax,38A;TFEditFunctionDlg_11011981.?f38A:dword
 00496F70    call        00401EA8
 00496F75    inc         dword ptr [ebp-0C]
 00496F78    mov         edx,dword ptr [ebp-4]
 00496F7B    xor         ecx,ecx
 00496F7D    mov         dword ptr [edx+37E],ecx;TFEditFunctionDlg_11011981.?f37E:dword
 00496F83    mov         eax,dword ptr [ebp-28]
 00496F86    mov         fs:[00000000],eax
 00496F8C    mov         eax,dword ptr [ebp-4]
 00496F8F    mov         dl,byte ptr [ebp-29]
 00496F92    test        dl,dl
>00496F94    je          00496F9B
 00496F96    call        0067EF79
 00496F9B    mov         esp,ebp
 00496F9D    pop         ebp
 00496F9E    ret
*}
end;

//00496FCC
procedure TFEditFunctionDlg_11011981.bOkClick(Sender:TObject);
begin
{*
 00496FCC    push        ebp
 00496FCD    mov         ebp,esp
 00496FCF    add         esp,0FFFFFFF8
 00496FD2    mov         dword ptr [ebp-8],edx
 00496FD5    mov         dword ptr [ebp-4],eax
 00496FD8    mov         eax,dword ptr [ebp-4]
 00496FDB    mov         dword ptr [eax+24C],1;TFEditFunctionDlg_11011981.FModalResult:TModalResult
 00496FE5    pop         ecx
 00496FE6    pop         ecx
 00496FE7    pop         ebp
 00496FE8    ret
*}
end;

//00496FEC
procedure TFEditFunctionDlg_11011981.FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin
{*
 00496FEC    push        ebp
 00496FED    mov         ebp,esp
 00496FEF    add         esp,0FFFFFFF4
 00496FF2    mov         dword ptr [ebp-0C],ecx
 00496FF5    mov         dword ptr [ebp-8],edx
 00496FF8    mov         dword ptr [ebp-4],eax
 00496FFB    mov         eax,dword ptr [ebp-0C]
 00496FFE    cmp         word ptr [eax],1B
>00497002    jne         00497011
 00497004    mov         edx,dword ptr [ebp-4]
 00497007    mov         dword ptr [edx+24C],2;TFEditFunctionDlg_11011981.FModalResult:TModalResult
 00497011    mov         esp,ebp
 00497013    pop         ebp
 00497014    ret         4
*}
end;

//00497018
procedure TFEditFunctionDlg_11011981.FormShow(Sender:TObject);
begin
{*
 00497018    push        ebp
 00497019    mov         ebp,esp
 0049701B    add         esp,0FFFFFFB4
 0049701E    mov         dword ptr [ebp-48],edx
 00497021    mov         dword ptr [ebp-44],eax
 00497024    mov         eax,6BC340
 00497029    call        0066FECC
 0049702E    mov         edx,dword ptr [ebp-44]
 00497031    mov         eax,dword ptr [edx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 00497037    call        0053A308
 0049703C    mov         dword ptr [ebp-4C],eax
 0049703F    mov         edx,dword ptr [ebp-4C]
 00497042    mov         ecx,dword ptr [edx+1E]
 00497045    mov         eax,dword ptr [ecx]
 00497047    mov         edx,dword ptr [ebp-44]
 0049704A    mov         dword ptr [edx+386],eax;TFEditFunctionDlg_11011981.?f386:dword
 00497050    mov         word ptr [ebp-30],8
 00497056    lea         eax,[ebp-4]
 00497059    call        00401EA8
 0049705E    mov         edx,eax
 00497060    inc         dword ptr [ebp-24]
 00497063    mov         eax,dword ptr [ebp-4C]
 00497066    call        0048591C
 0049706B    lea         edx,[ebp-4]
 0049706E    mov         eax,dword ptr [ebp-44]
 00497071    add         eax,38A;TFEditFunctionDlg_11011981.?f38A:dword
 00497076    call        0067DCD0
 0049707B    dec         dword ptr [ebp-24]
 0049707E    lea         eax,[ebp-4]
 00497081    mov         edx,2
 00497086    call        0067DCA0
 0049708B    mov         ecx,dword ptr [ebp-4C]
 0049708E    mov         eax,dword ptr [ecx+1E]
 00497091    mov         edx,dword ptr [eax+8]
 00497094    mov         ecx,dword ptr [ebp-44]
 00497097    mov         eax,dword ptr [ecx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 0049709D    add         edx,eax
 0049709F    dec         edx
 004970A0    mov         ecx,dword ptr [ebp-44]
 004970A3    mov         dword ptr [ecx+392],edx;TFEditFunctionDlg_11011981.?f392:dword
 004970A9    mov         word ptr [ebp-30],14
 004970AF    lea         eax,[ebp-8]
 004970B2    call        00401EA8
 004970B7    mov         edx,eax
 004970B9    inc         dword ptr [ebp-24]
 004970BC    mov         ecx,dword ptr [ebp-44]
 004970BF    mov         eax,dword ptr [ecx+392];TFEditFunctionDlg_11011981.?f392:dword
 004970C5    call        0053164C
 004970CA    lea         edx,[ebp-8]
 004970CD    mov         edx,dword ptr [edx]
 004970CF    mov         eax,dword ptr [ebp-44]
 004970D2    mov         eax,dword ptr [eax+36C];TFEditFunctionDlg_11011981.lEndAdr:TLabeledEdit
 004970D8    call        TTabPage.SetCaption
 004970DD    dec         dword ptr [ebp-24]
 004970E0    lea         eax,[ebp-8]
 004970E3    mov         edx,2
 004970E8    call        0067DCA0
 004970ED    mov         ecx,dword ptr [ebp-4C]
 004970F0    mov         eax,dword ptr [ecx+1E]
 004970F3    mov         edx,dword ptr [eax+0C]
 004970F6    mov         ecx,dword ptr [ebp-44]
 004970F9    mov         dword ptr [ecx+382],edx;TFEditFunctionDlg_11011981.?f382:Integer
 004970FF    mov         word ptr [ebp-30],20
 00497105    lea         eax,[ebp-0C]
 00497108    call        00401EA8
 0049710D    mov         edx,eax
 0049710F    inc         dword ptr [ebp-24]
 00497112    mov         ecx,dword ptr [ebp-44]
 00497115    mov         eax,dword ptr [ecx+382];TFEditFunctionDlg_11011981.?f382:Integer
 0049711B    call        0053164C
 00497120    lea         edx,[ebp-0C]
 00497123    mov         edx,dword ptr [edx]
 00497125    mov         eax,dword ptr [ebp-44]
 00497128    mov         eax,dword ptr [eax+370];TFEditFunctionDlg_11011981.lStackSize:TLabeledEdit
 0049712E    call        TTabPage.SetCaption
 00497133    dec         dword ptr [ebp-24]
 00497136    lea         eax,[ebp-0C]
 00497139    mov         edx,2
 0049713E    call        0067DCA0
 00497143    mov         eax,dword ptr [ebp-44]
 00497146    call        004993C8
 0049714B    mov         edx,dword ptr [ebp-44]
 0049714E    mov         edx,dword ptr [edx+334];TFEditFunctionDlg_11011981.tsType:TTabSheet
 00497154    mov         eax,dword ptr [ebp-44]
 00497157    mov         eax,dword ptr [eax+300];TFEditFunctionDlg_11011981.pc:TPageControl
 0049715D    call        TPageControl.SetActivePage
 00497162    xor         edx,edx
 00497164    mov         ecx,dword ptr [ebp-44]
 00497167    mov         eax,dword ptr [ecx+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 0049716D    mov         ecx,dword ptr [eax]
 0049716F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497172    xor         edx,edx
 00497174    mov         eax,dword ptr [ebp-44]
 00497177    mov         eax,dword ptr [eax+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 0049717D    mov         ecx,dword ptr [eax]
 0049717F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497182    xor         edx,edx
 00497184    mov         eax,dword ptr [ebp-44]
 00497187    mov         eax,dword ptr [eax+33C];TFEditFunctionDlg_11011981.mType:TMemo
 0049718D    mov         ecx,dword ptr [eax]
 0049718F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497192    xor         edx,edx
 00497194    mov         eax,dword ptr [ebp-44]
 00497197    mov         eax,dword ptr [eax+338];TFEditFunctionDlg_11011981.cbEmbedded:TCheckBox
 0049719D    mov         ecx,dword ptr [eax]
 0049719F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004971A2    xor         edx,edx
 004971A4    mov         eax,dword ptr [ebp-44]
 004971A7    mov         eax,dword ptr [eax+36C];TFEditFunctionDlg_11011981.lEndAdr:TLabeledEdit
 004971AD    mov         ecx,dword ptr [eax]
 004971AF    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004971B2    xor         edx,edx
 004971B4    mov         eax,dword ptr [ebp-44]
 004971B7    mov         eax,dword ptr [eax+370];TFEditFunctionDlg_11011981.lStackSize:TLabeledEdit
 004971BD    mov         ecx,dword ptr [eax]
 004971BF    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004971C2    xor         edx,edx
 004971C4    mov         eax,dword ptr [ebp-44]
 004971C7    mov         eax,dword ptr [eax+34C];TFEditFunctionDlg_11011981.rgFunctionKind:TRadioGroup
 004971CD    mov         ecx,dword ptr [eax]
 004971CF    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004971D2    xor         edx,edx
 004971D4    mov         eax,dword ptr [ebp-44]
 004971D7    mov         eax,dword ptr [eax+340];TFEditFunctionDlg_11011981.rgCallKind:TRadioGroup
 004971DD    mov         ecx,dword ptr [eax]
 004971DF    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004971E2    xor         edx,edx
 004971E4    mov         eax,dword ptr [ebp-44]
 004971E7    mov         eax,dword ptr [eax+344];TFEditFunctionDlg_11011981.bApplyType:TButton
 004971ED    mov         ecx,dword ptr [eax]
 004971EF    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004971F2    xor         edx,edx
 004971F4    mov         eax,dword ptr [ebp-44]
 004971F7    mov         eax,dword ptr [eax+348];TFEditFunctionDlg_11011981.bCancelType:TButton
 004971FD    mov         ecx,dword ptr [eax]
 004971FF    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497202    mov         eax,dword ptr [ebp-44]
 00497205    call        00499478
 0049720A    mov         dl,1
 0049720C    mov         ecx,dword ptr [ebp-44]
 0049720F    mov         eax,dword ptr [ecx+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 00497215    mov         ecx,dword ptr [eax]
 00497217    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049721A    mov         eax,dword ptr [ebp-44]
 0049721D    call        004998C0
 00497222    mov         dl,1
 00497224    mov         ecx,dword ptr [ebp-44]
 00497227    mov         eax,dword ptr [ecx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049722D    mov         ecx,dword ptr [eax]
 0049722F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497232    xor         edx,edx
 00497234    mov         eax,dword ptr [ebp-44]
 00497237    mov         eax,dword ptr [eax+314];TFEditFunctionDlg_11011981.pnlVars:TPanel
 0049723D    call        TCCalendar.SetVisible
 00497242    mov         word ptr [ebp-30],2C
 00497248    mov         edx,6BC194
 0049724D    lea         eax,[ebp-10]
 00497250    call        0067DAB4
 00497255    inc         dword ptr [ebp-24]
 00497258    mov         edx,dword ptr [eax]
 0049725A    mov         ecx,dword ptr [ebp-44]
 0049725D    mov         eax,dword ptr [ecx+31C];TFEditFunctionDlg_11011981.edtVarOfs:TLabeledEdit
 00497263    call        TTabPage.SetCaption
 00497268    dec         dword ptr [ebp-24]
 0049726B    lea         eax,[ebp-10]
 0049726E    mov         edx,2
 00497273    call        0067DCA0
 00497278    mov         word ptr [ebp-30],38
 0049727E    mov         edx,6BC195
 00497283    lea         eax,[ebp-14]
 00497286    call        0067DAB4
 0049728B    inc         dword ptr [ebp-24]
 0049728E    mov         edx,dword ptr [eax]
 00497290    mov         eax,dword ptr [ebp-44]
 00497293    mov         eax,dword ptr [eax+320];TFEditFunctionDlg_11011981.edtVarSize:TLabeledEdit
 00497299    call        TTabPage.SetCaption
 0049729E    dec         dword ptr [ebp-24]
 004972A1    lea         eax,[ebp-14]
 004972A4    mov         edx,2
 004972A9    call        0067DCA0
 004972AE    mov         word ptr [ebp-30],44
 004972B4    mov         edx,6BC196
 004972B9    lea         eax,[ebp-18]
 004972BC    call        0067DAB4
 004972C1    inc         dword ptr [ebp-24]
 004972C4    mov         edx,dword ptr [eax]
 004972C6    mov         eax,dword ptr [ebp-44]
 004972C9    mov         eax,dword ptr [eax+324];TFEditFunctionDlg_11011981.edtVarName:TLabeledEdit
 004972CF    call        TTabPage.SetCaption
 004972D4    dec         dword ptr [ebp-24]
 004972D7    lea         eax,[ebp-18]
 004972DA    mov         edx,2
 004972DF    call        0067DCA0
 004972E4    mov         word ptr [ebp-30],50
 004972EA    mov         edx,6BC197
 004972EF    lea         eax,[ebp-1C]
 004972F2    call        0067DAB4
 004972F7    inc         dword ptr [ebp-24]
 004972FA    mov         edx,dword ptr [eax]
 004972FC    mov         eax,dword ptr [ebp-44]
 004972FF    mov         eax,dword ptr [eax+328];TFEditFunctionDlg_11011981.edtVarType:TLabeledEdit
 00497305    call        TTabPage.SetCaption
 0049730A    dec         dword ptr [ebp-24]
 0049730D    lea         eax,[ebp-1C]
 00497310    mov         edx,2
 00497315    call        0067DCA0
 0049731A    mov         eax,dword ptr [ebp-44]
 0049731D    call        0049A908
 00497322    mov         dl,1
 00497324    mov         ecx,dword ptr [ebp-44]
 00497327    mov         eax,dword ptr [ecx+2F4];TFEditFunctionDlg_11011981.bEdit:TButton
 0049732D    mov         ecx,dword ptr [eax]
 0049732F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497332    xor         edx,edx
 00497334    mov         eax,dword ptr [ebp-44]
 00497337    mov         eax,dword ptr [eax+2F8];TFEditFunctionDlg_11011981.bAdd:TButton
 0049733D    mov         ecx,dword ptr [eax]
 0049733F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497342    xor         edx,edx
 00497344    mov         eax,dword ptr [ebp-44]
 00497347    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 0049734D    mov         ecx,dword ptr [eax]
 0049734F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497352    xor         edx,edx
 00497354    mov         eax,dword ptr [ebp-44]
 00497357    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 0049735D    mov         ecx,dword ptr [eax]
 0049735F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497362    xor         edx,edx
 00497364    mov         eax,dword ptr [ebp-44]
 00497367    mov         eax,dword ptr [eax+350];TFEditFunctionDlg_11011981.bOk:TButton
 0049736D    mov         ecx,dword ptr [eax]
 0049736F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497372    mov         edx,dword ptr [ebp-44]
 00497375    mov         byte ptr [edx+378],0;TFEditFunctionDlg_11011981.?f378:byte
 0049737C    mov         eax,dword ptr [ebp-44]
 0049737F    mov         byte ptr [eax+379],0;TFEditFunctionDlg_11011981.?f379:byte
 00497386    mov         edx,dword ptr [ebp-40]
 00497389    mov         dword ptr fs:[0],edx
 00497390    mov         esp,ebp
 00497392    pop         ebp
 00497393    ret
*}
end;

//00497394
procedure TFEditFunctionDlg_11011981.bEditClick(Sender:TObject);
begin
{*
 00497394    push        ebp
 00497395    mov         ebp,esp
 00497397    add         esp,0FFFFFFB0
 0049739A    mov         dword ptr [ebp-48],edx
 0049739D    mov         dword ptr [ebp-44],eax
 004973A0    mov         eax,6BC40C
 004973A5    call        0066FECC
 004973AA    mov         edx,dword ptr [ebp-44]
 004973AD    mov         ecx,dword ptr [edx+300];TFEditFunctionDlg_11011981.pc:TPageControl
 004973B3    mov         eax,dword ptr [ecx+26C];TPageControl.ActivePage:TTabSheet
 004973B9    mov         edx,dword ptr [ebp-44]
 004973BC    mov         ecx,dword ptr [edx+334];TFEditFunctionDlg_11011981.tsType:TTabSheet
 004973C2    cmp         eax,ecx
>004973C4    jne         0049746F
 004973CA    mov         dl,1
 004973CC    mov         eax,dword ptr [ebp-44]
 004973CF    mov         eax,dword ptr [eax+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 004973D5    mov         ecx,dword ptr [eax]
 004973D7    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004973DA    mov         dl,1
 004973DC    mov         eax,dword ptr [ebp-44]
 004973DF    mov         eax,dword ptr [eax+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 004973E5    mov         ecx,dword ptr [eax]
 004973E7    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004973EA    mov         dl,1
 004973EC    mov         eax,dword ptr [ebp-44]
 004973EF    mov         eax,dword ptr [eax+33C];TFEditFunctionDlg_11011981.mType:TMemo
 004973F5    mov         ecx,dword ptr [eax]
 004973F7    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004973FA    mov         dl,1
 004973FC    mov         eax,dword ptr [ebp-44]
 004973FF    mov         eax,dword ptr [eax+338];TFEditFunctionDlg_11011981.cbEmbedded:TCheckBox
 00497405    mov         ecx,dword ptr [eax]
 00497407    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049740A    mov         dl,1
 0049740C    mov         eax,dword ptr [ebp-44]
 0049740F    mov         eax,dword ptr [eax+36C];TFEditFunctionDlg_11011981.lEndAdr:TLabeledEdit
 00497415    mov         ecx,dword ptr [eax]
 00497417    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049741A    mov         dl,1
 0049741C    mov         eax,dword ptr [ebp-44]
 0049741F    mov         eax,dword ptr [eax+370];TFEditFunctionDlg_11011981.lStackSize:TLabeledEdit
 00497425    mov         ecx,dword ptr [eax]
 00497427    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049742A    mov         dl,1
 0049742C    mov         eax,dword ptr [ebp-44]
 0049742F    mov         eax,dword ptr [eax+34C];TFEditFunctionDlg_11011981.rgFunctionKind:TRadioGroup
 00497435    mov         ecx,dword ptr [eax]
 00497437    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049743A    mov         dl,1
 0049743C    mov         eax,dword ptr [ebp-44]
 0049743F    mov         eax,dword ptr [eax+340];TFEditFunctionDlg_11011981.rgCallKind:TRadioGroup
 00497445    mov         ecx,dword ptr [eax]
 00497447    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049744A    mov         dl,1
 0049744C    mov         eax,dword ptr [ebp-44]
 0049744F    mov         eax,dword ptr [eax+344];TFEditFunctionDlg_11011981.bApplyType:TButton
 00497455    mov         ecx,dword ptr [eax]
 00497457    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049745A    mov         dl,1
 0049745C    mov         eax,dword ptr [ebp-44]
 0049745F    mov         eax,dword ptr [eax+348];TFEditFunctionDlg_11011981.bCancelType:TButton
 00497465    mov         ecx,dword ptr [eax]
 00497467    call        dword ptr [ecx+64];TCCalendar.SetEnabled
>0049746A    jmp         00497690
 0049746F    mov         edx,dword ptr [ebp-44]
 00497472    mov         eax,dword ptr [edx+300];TFEditFunctionDlg_11011981.pc:TPageControl
 00497478    mov         edx,dword ptr [eax+26C];TPageControl.ActivePage:TTabSheet
 0049747E    mov         ecx,dword ptr [ebp-44]
 00497481    mov         eax,dword ptr [ecx+30C];TFEditFunctionDlg_11011981.tsVars:TTabSheet
 00497487    cmp         edx,eax
>00497489    jne         00497690
 0049748F    mov         word ptr [ebp-30],8
 00497495    mov         edx,6BC198
 0049749A    lea         eax,[ebp-4]
 0049749D    call        0067DAB4
 004974A2    inc         dword ptr [ebp-24]
 004974A5    mov         edx,dword ptr [eax]
 004974A7    mov         ecx,dword ptr [ebp-44]
 004974AA    mov         eax,dword ptr [ecx+31C];TFEditFunctionDlg_11011981.edtVarOfs:TLabeledEdit
 004974B0    call        TTabPage.SetCaption
 004974B5    dec         dword ptr [ebp-24]
 004974B8    lea         eax,[ebp-4]
 004974BB    mov         edx,2
 004974C0    call        0067DCA0
 004974C5    mov         word ptr [ebp-30],14
 004974CB    mov         edx,6BC199
 004974D0    lea         eax,[ebp-8]
 004974D3    call        0067DAB4
 004974D8    inc         dword ptr [ebp-24]
 004974DB    mov         edx,dword ptr [eax]
 004974DD    mov         eax,dword ptr [ebp-44]
 004974E0    mov         eax,dword ptr [eax+324];TFEditFunctionDlg_11011981.edtVarName:TLabeledEdit
 004974E6    call        TTabPage.SetCaption
 004974EB    dec         dword ptr [ebp-24]
 004974EE    lea         eax,[ebp-8]
 004974F1    mov         edx,2
 004974F6    call        0067DCA0
 004974FB    mov         word ptr [ebp-30],20
 00497501    mov         edx,6BC19A
 00497506    lea         eax,[ebp-0C]
 00497509    call        0067DAB4
 0049750E    inc         dword ptr [ebp-24]
 00497511    mov         edx,dword ptr [eax]
 00497513    mov         eax,dword ptr [ebp-44]
 00497516    mov         eax,dword ptr [eax+328];TFEditFunctionDlg_11011981.edtVarType:TLabeledEdit
 0049751C    call        TTabPage.SetCaption
 00497521    dec         dword ptr [ebp-24]
 00497524    lea         eax,[ebp-0C]
 00497527    mov         edx,2
 0049752C    call        0067DCA0
 00497531    mov         ecx,dword ptr [ebp-44]
 00497534    mov         eax,dword ptr [ecx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 0049753A    call        0053A308
 0049753F    mov         dword ptr [ebp-4C],eax
 00497542    mov         edx,dword ptr [ebp-44]
 00497545    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049754B    mov         edx,dword ptr [eax]
 0049754D    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 00497553    mov         edx,eax
 00497555    mov         eax,dword ptr [ebp-4C]
 00497558    mov         ecx,dword ptr [eax+1E]
 0049755B    mov         eax,dword ptr [ecx+14]
 0049755E    call        TList.Get
 00497563    mov         dword ptr [ebp-50],eax
 00497566    mov         edx,dword ptr [ebp-50]
 00497569    test        edx,edx
>0049756B    je          00497658
 00497571    mov         word ptr [ebp-30],2C
 00497577    lea         eax,[ebp-10]
 0049757A    call        00401EA8
 0049757F    mov         ecx,eax
 00497581    inc         dword ptr [ebp-24]
 00497584    xor         edx,edx
 00497586    mov         eax,dword ptr [ebp-50]
 00497589    mov         eax,dword ptr [eax]
 0049758B    call        00657C04
 00497590    lea         edx,[ebp-10]
 00497593    mov         edx,dword ptr [edx]
 00497595    mov         eax,dword ptr [ebp-44]
 00497598    mov         eax,dword ptr [eax+31C];TFEditFunctionDlg_11011981.edtVarOfs:TLabeledEdit
 0049759E    call        TTabPage.SetCaption
 004975A3    dec         dword ptr [ebp-24]
 004975A6    lea         eax,[ebp-10]
 004975A9    mov         edx,2
 004975AE    call        0067DCA0
 004975B3    mov         word ptr [ebp-30],38
 004975B9    lea         eax,[ebp-14]
 004975BC    mov         edx,dword ptr [ebp-50]
 004975BF    mov         edx,dword ptr [edx+4]
 004975C2    call        0067DC18
 004975C7    inc         dword ptr [ebp-24]
 004975CA    mov         edx,dword ptr [eax]
 004975CC    mov         eax,dword ptr [ebp-44]
 004975CF    mov         eax,dword ptr [eax+320];TFEditFunctionDlg_11011981.edtVarSize:TLabeledEdit
 004975D5    call        TTabPage.SetCaption
 004975DA    dec         dword ptr [ebp-24]
 004975DD    lea         eax,[ebp-14]
 004975E0    mov         edx,2
 004975E5    call        0067DCA0
 004975EA    mov         word ptr [ebp-30],44
 004975F0    mov         edx,dword ptr [ebp-50]
 004975F3    add         edx,8
 004975F6    lea         eax,[ebp-18]
 004975F9    call        0067DAEC
 004975FE    inc         dword ptr [ebp-24]
 00497601    mov         edx,dword ptr [eax]
 00497603    mov         eax,dword ptr [ebp-44]
 00497606    mov         eax,dword ptr [eax+324];TFEditFunctionDlg_11011981.edtVarName:TLabeledEdit
 0049760C    call        TTabPage.SetCaption
 00497611    dec         dword ptr [ebp-24]
 00497614    lea         eax,[ebp-18]
 00497617    mov         edx,2
 0049761C    call        0067DCA0
 00497621    mov         word ptr [ebp-30],50
 00497627    mov         edx,dword ptr [ebp-50]
 0049762A    add         edx,0C
 0049762D    lea         eax,[ebp-1C]
 00497630    call        0067DAEC
 00497635    inc         dword ptr [ebp-24]
 00497638    mov         edx,dword ptr [eax]
 0049763A    mov         eax,dword ptr [ebp-44]
 0049763D    mov         eax,dword ptr [eax+328];TFEditFunctionDlg_11011981.edtVarType:TLabeledEdit
 00497643    call        TTabPage.SetCaption
 00497648    dec         dword ptr [ebp-24]
 0049764B    lea         eax,[ebp-1C]
 0049764E    mov         edx,2
 00497653    call        0067DCA0
 00497658    mov         ecx,dword ptr [ebp-44]
 0049765B    mov         eax,dword ptr [ecx+300];TFEditFunctionDlg_11011981.pc:TPageControl
 00497661    mov         edx,dword ptr [eax+4C];TPageControl.Height:Integer
 00497664    mov         ecx,dword ptr [ebp-44]
 00497667    mov         eax,dword ptr [ecx+314];TFEditFunctionDlg_11011981.pnlVars:TPanel
 0049766D    mov         ecx,dword ptr [eax+4C];TPanel.Height:Integer
 00497670    sub         edx,ecx
 00497672    mov         eax,dword ptr [ebp-44]
 00497675    mov         eax,dword ptr [eax+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049767B    call        TControl.SetHeight
 00497680    mov         dl,1
 00497682    mov         ecx,dword ptr [ebp-44]
 00497685    mov         eax,dword ptr [ecx+314];TFEditFunctionDlg_11011981.pnlVars:TPanel
 0049768B    call        TCCalendar.SetVisible
 00497690    xor         edx,edx
 00497692    mov         ecx,dword ptr [ebp-44]
 00497695    mov         eax,dword ptr [ecx+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 0049769B    mov         ecx,dword ptr [eax]
 0049769D    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004976A0    xor         edx,edx
 004976A2    mov         eax,dword ptr [ebp-44]
 004976A5    mov         eax,dword ptr [eax+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 004976AB    mov         ecx,dword ptr [eax]
 004976AD    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004976B0    xor         edx,edx
 004976B2    mov         eax,dword ptr [ebp-44]
 004976B5    mov         eax,dword ptr [eax+2F4];TFEditFunctionDlg_11011981.bEdit:TButton
 004976BB    mov         ecx,dword ptr [eax]
 004976BD    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004976C0    xor         edx,edx
 004976C2    mov         eax,dword ptr [ebp-44]
 004976C5    mov         eax,dword ptr [eax+2F8];TFEditFunctionDlg_11011981.bAdd:TButton
 004976CB    mov         ecx,dword ptr [eax]
 004976CD    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004976D0    xor         edx,edx
 004976D2    mov         eax,dword ptr [ebp-44]
 004976D5    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 004976DB    mov         ecx,dword ptr [eax]
 004976DD    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004976E0    xor         edx,edx
 004976E2    mov         eax,dword ptr [ebp-44]
 004976E5    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 004976EB    mov         ecx,dword ptr [eax]
 004976ED    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004976F0    mov         edx,dword ptr [ebp-40]
 004976F3    mov         dword ptr fs:[0],edx
 004976FA    mov         esp,ebp
 004976FC    pop         ebp
 004976FD    ret
*}
end;

//00497700
procedure TFEditFunctionDlg_11011981.lbVarsClick(Sender:TObject);
begin
{*
 00497700    push        ebp
 00497701    mov         ebp,esp
 00497703    add         esp,0FFFFFFF8
 00497706    mov         dword ptr [ebp-8],edx
 00497709    mov         dword ptr [ebp-4],eax
 0049770C    mov         eax,dword ptr [ebp-4]
 0049770F    mov         eax,dword ptr [eax+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 00497715    mov         edx,dword ptr [eax]
 00497717    call        dword ptr [edx+0EC];TListBox.sub_0059E3CC
 0049771D    dec         eax
 0049771E    sete        dl
 00497721    and         edx,1
 00497724    mov         eax,dword ptr [ebp-4]
 00497727    mov         eax,dword ptr [eax+2F4];TFEditFunctionDlg_11011981.bEdit:TButton
 0049772D    mov         ecx,dword ptr [eax]
 0049772F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497732    mov         edx,dword ptr [ebp-4]
 00497735    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049773B    mov         edx,dword ptr [eax]
 0049773D    call        dword ptr [edx+0EC];TListBox.sub_0059E3CC
 00497743    test        eax,eax
 00497745    setg        dl
 00497748    and         edx,1
 0049774B    mov         eax,dword ptr [ebp-4]
 0049774E    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 00497754    mov         ecx,dword ptr [eax]
 00497756    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497759    mov         edx,dword ptr [ebp-4]
 0049775C    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 00497762    mov         edx,dword ptr [eax]
 00497764    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 0049776A    test        eax,eax
 0049776C    setg        dl
 0049776F    and         edx,1
 00497772    mov         eax,dword ptr [ebp-4]
 00497775    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 0049777B    mov         ecx,dword ptr [eax]
 0049777D    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497780    pop         ecx
 00497781    pop         ecx
 00497782    pop         ebp
 00497783    ret
*}
end;

//00497784
{*procedure TFEditFunctionDlg_11011981.pcChange(?:?);
begin
 00497784    push        ebp
 00497785    mov         ebp,esp
 00497787    add         esp,0FFFFFFF8
 0049778A    mov         dword ptr [ebp-8],edx
 0049778D    mov         dword ptr [ebp-4],eax
 00497790    mov         eax,dword ptr [ebp-4]
 00497793    mov         edx,dword ptr [eax+300];TFEditFunctionDlg_11011981.pc:TPageControl
 00497799    mov         ecx,dword ptr [edx+26C];TPageControl.ActivePage:TTabSheet
 0049779F    mov         eax,dword ptr [ebp-4]
 004977A2    mov         edx,dword ptr [eax+334];TFEditFunctionDlg_11011981.tsType:TTabSheet
 004977A8    cmp         ecx,edx
>004977AA    jne         004977F1
 004977AC    mov         dl,1
 004977AE    mov         eax,dword ptr [ebp-4]
 004977B1    mov         eax,dword ptr [eax+2F4];TFEditFunctionDlg_11011981.bEdit:TButton
 004977B7    mov         ecx,dword ptr [eax]
 004977B9    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004977BC    xor         edx,edx
 004977BE    mov         eax,dword ptr [ebp-4]
 004977C1    mov         eax,dword ptr [eax+2F8];TFEditFunctionDlg_11011981.bAdd:TButton
 004977C7    mov         ecx,dword ptr [eax]
 004977C9    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004977CC    xor         edx,edx
 004977CE    mov         eax,dword ptr [ebp-4]
 004977D1    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 004977D7    mov         ecx,dword ptr [eax]
 004977D9    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004977DC    xor         edx,edx
 004977DE    mov         eax,dword ptr [ebp-4]
 004977E1    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 004977E7    mov         ecx,dword ptr [eax]
 004977E9    call        dword ptr [ecx+64];TCCalendar.SetEnabled
>004977EC    jmp         004978EB
 004977F1    mov         edx,dword ptr [ebp-4]
 004977F4    mov         eax,dword ptr [edx+300];TFEditFunctionDlg_11011981.pc:TPageControl
 004977FA    mov         edx,dword ptr [eax+26C];TPageControl.ActivePage:TTabSheet
 00497800    mov         ecx,dword ptr [ebp-4]
 00497803    mov         eax,dword ptr [ecx+304]
 00497809    cmp         edx,eax
>0049780B    jne         00497852
 0049780D    xor         edx,edx
 0049780F    mov         ecx,dword ptr [ebp-4]
 00497812    mov         eax,dword ptr [ecx+2F4]
 00497818    mov         ecx,dword ptr [eax]
 0049781A    call        dword ptr [ecx+64]
 0049781D    xor         edx,edx
 0049781F    mov         eax,dword ptr [ebp-4]
 00497822    mov         eax,dword ptr [eax+2F8];TFEditFunctionDlg_11011981.bAdd:TButton
 00497828    mov         ecx,dword ptr [eax]
 0049782A    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049782D    xor         edx,edx
 0049782F    mov         eax,dword ptr [ebp-4]
 00497832    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 00497838    mov         ecx,dword ptr [eax]
 0049783A    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049783D    xor         edx,edx
 0049783F    mov         eax,dword ptr [ebp-4]
 00497842    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 00497848    mov         ecx,dword ptr [eax]
 0049784A    call        dword ptr [ecx+64];TCCalendar.SetEnabled
>0049784D    jmp         004978EB
 00497852    xor         edx,edx
 00497854    mov         eax,dword ptr [ebp-4]
 00497857    mov         eax,dword ptr [eax+2F8];TFEditFunctionDlg_11011981.bAdd:TButton
 0049785D    mov         ecx,dword ptr [eax]
 0049785F    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00497862    mov         edx,dword ptr [ebp-4]
 00497865    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049786B    mov         edx,dword ptr [eax]
 0049786D    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 00497873    test        eax,eax
>00497875    jle         004978EB
 00497877    mov         ecx,dword ptr [ebp-4]
 0049787A    mov         eax,dword ptr [ecx+310]
 00497880    mov         edx,dword ptr [eax]
 00497882    call        dword ptr [edx+0EC]
 00497888    dec         eax
 00497889    sete        dl
 0049788C    and         edx,1
 0049788F    mov         eax,dword ptr [ebp-4]
 00497892    mov         eax,dword ptr [eax+2F4];TFEditFunctionDlg_11011981.bEdit:TButton
 00497898    mov         ecx,dword ptr [eax]
 0049789A    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049789D    mov         edx,dword ptr [ebp-4]
 004978A0    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 004978A6    mov         edx,dword ptr [eax]
 004978A8    call        dword ptr [edx+0EC];TListBox.sub_0059E3CC
 004978AE    test        eax,eax
 004978B0    setg        dl
 004978B3    and         edx,1
 004978B6    mov         eax,dword ptr [ebp-4]
 004978B9    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 004978BF    mov         ecx,dword ptr [eax]
 004978C1    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004978C4    mov         edx,dword ptr [ebp-4]
 004978C7    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 004978CD    mov         edx,dword ptr [eax]
 004978CF    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 004978D5    test        eax,eax
 004978D7    setg        dl
 004978DA    and         edx,1
 004978DD    mov         eax,dword ptr [ebp-4]
 004978E0    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 004978E6    mov         ecx,dword ptr [eax]
 004978E8    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004978EB    pop         ecx
 004978EC    pop         ecx
 004978ED    pop         ebp
 004978EE    ret
end;*}

//004978F0
procedure TFEditFunctionDlg_11011981.bApplyTypeClick(Sender:TObject);
begin
{*
 004978F0    push        ebp
 004978F1    mov         ebp,esp
 004978F3    add         esp,0FFFFFED0
 004978F9    push        ebx
 004978FA    mov         dword ptr [ebp-108],edx
 00497900    mov         dword ptr [ebp-104],eax
 00497906    mov         eax,6BC79C
 0049790B    call        0066FECC
 00497910    mov         edx,dword ptr [ebp-104]
 00497916    mov         eax,dword ptr [edx+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 0049791C    mov         edx,dword ptr [eax]
 0049791E    call        dword ptr [edx+0C4];TCheckBox.GetChecked
 00497924    test        al,al
>00497926    je          004979F2
 0049792C    mov         word ptr [ebp-0F0],8
 00497935    lea         eax,[ebp-14]
 00497938    call        00401EA8
 0049793D    mov         edx,eax
 0049793F    inc         dword ptr [ebp-0E4]
 00497945    mov         ecx,dword ptr [ebp-104]
 0049794B    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 00497951    call        TTabPage.GetCaption
 00497956    lea         edx,[ebp-14]
 00497959    push        edx
 0049795A    mov         edx,6BC19B
 0049795F    lea         eax,[ebp-18]
 00497962    call        0067DAB4
 00497967    inc         dword ptr [ebp-0E4]
 0049796D    lea         edx,[ebp-18]
 00497970    pop         eax
 00497971    call        0067DD84
 00497976    test        al,al
 00497978    setne       cl
 0049797B    and         ecx,1
 0049797E    push        ecx
 0049797F    dec         dword ptr [ebp-0E4]
 00497985    lea         eax,[ebp-18]
 00497988    mov         edx,2
 0049798D    call        0067DCA0
 00497992    dec         dword ptr [ebp-0E4]
 00497998    lea         eax,[ebp-14]
 0049799B    mov         edx,2
 004979A0    call        0067DCA0
 004979A5    pop         ecx
 004979A6    test        ecx,ecx
>004979A8    je          004979F2
 004979AA    mov         word ptr [ebp-0F0],14
 004979B3    mov         edx,6BC19C
 004979B8    lea         eax,[ebp-1C]
 004979BB    call        0067DAB4
 004979C0    inc         dword ptr [ebp-0E4]
 004979C6    mov         eax,dword ptr [eax]
 004979C8    call        005ECEB0
 004979CD    dec         dword ptr [ebp-0E4]
 004979D3    lea         eax,[ebp-1C]
 004979D6    mov         edx,2
 004979DB    call        0067DCA0
 004979E0    mov         ecx,dword ptr [ebp-100]
 004979E6    mov         dword ptr fs:[0],ecx
>004979ED    jmp         00498B7B
 004979F2    mov         word ptr [ebp-0F0],20
 004979FB    lea         eax,[ebp-20]
 004979FE    call        00401EA8
 00497A03    mov         edx,eax
 00497A05    inc         dword ptr [ebp-0E4]
 00497A0B    mov         ecx,dword ptr [ebp-104]
 00497A11    mov         eax,dword ptr [ecx+36C];TFEditFunctionDlg_11011981.lEndAdr:TLabeledEdit
 00497A17    call        TTabPage.GetCaption
 00497A1C    lea         edx,[ebp-20]
 00497A1F    push        edx
 00497A20    mov         edx,6BC1B0
 00497A25    lea         eax,[ebp-24]
 00497A28    call        0067DAB4
 00497A2D    inc         dword ptr [ebp-0E4]
 00497A33    lea         edx,[ebp-24]
 00497A36    pop         eax
 00497A37    call        0067DD84
 00497A3C    test        al,al
>00497A3E    jne         00497AFD
 00497A44    lea         eax,[ebp-2C]
 00497A47    call        00401EA8
 00497A4C    mov         edx,eax
 00497A4E    inc         dword ptr [ebp-0E4]
 00497A54    mov         ecx,dword ptr [ebp-104]
 00497A5A    mov         eax,dword ptr [ecx+36C];TFEditFunctionDlg_11011981.lEndAdr:TLabeledEdit
 00497A60    call        TTabPage.GetCaption
 00497A65    lea         edx,[ebp-2C]
 00497A68    push        edx
 00497A69    lea         eax,[ebp-30]
 00497A6C    call        00401EA8
 00497A71    push        eax
 00497A72    inc         dword ptr [ebp-0E4]
 00497A78    mov         edx,6BC1B1
 00497A7D    lea         eax,[ebp-28]
 00497A80    call        0067DAB4
 00497A85    inc         dword ptr [ebp-0E4]
 00497A8B    pop         ecx
 00497A8C    pop         edx
 00497A8D    call        0067DCF8
 00497A92    lea         eax,[ebp-30]
 00497A95    mov         eax,dword ptr [eax]
 00497A97    mov         edx,dword ptr [ebp-10C]
 00497A9D    mov         dword ptr [ebp-110],edx
 00497AA3    lea         edx,[ebp-110]
 00497AA9    call        00657D08
 00497AAE    and         eax,0FF
 00497AB3    cmp         eax,1
 00497AB6    sbb         ecx,ecx
 00497AB8    neg         ecx
 00497ABA    push        ecx
 00497ABB    dec         dword ptr [ebp-0E4]
 00497AC1    lea         eax,[ebp-30]
 00497AC4    mov         edx,2
 00497AC9    call        0067DCA0
 00497ACE    dec         dword ptr [ebp-0E4]
 00497AD4    lea         eax,[ebp-2C]
 00497AD7    mov         edx,2
 00497ADC    call        0067DCA0
 00497AE1    dec         dword ptr [ebp-0E4]
 00497AE7    lea         eax,[ebp-28]
 00497AEA    mov         edx,2
 00497AEF    call        0067DCA0
 00497AF4    pop         ecx
 00497AF5    test        ecx,ecx
>00497AF7    jne         00497AFD
 00497AF9    xor         eax,eax
>00497AFB    jmp         00497B02
 00497AFD    mov         eax,1
 00497B02    push        eax
 00497B03    dec         dword ptr [ebp-0E4]
 00497B09    lea         eax,[ebp-24]
 00497B0C    mov         edx,2
 00497B11    call        0067DCA0
 00497B16    dec         dword ptr [ebp-0E4]
 00497B1C    lea         eax,[ebp-20]
 00497B1F    mov         edx,2
 00497B24    call        0067DCA0
 00497B29    pop         ecx
 00497B2A    test        cl,cl
>00497B2C    je          00497B76
 00497B2E    mov         word ptr [ebp-0F0],2C
 00497B37    mov         edx,6BC1B3
 00497B3C    lea         eax,[ebp-34]
 00497B3F    call        0067DAB4
 00497B44    inc         dword ptr [ebp-0E4]
 00497B4A    mov         eax,dword ptr [eax]
 00497B4C    call        005ECEB0
 00497B51    dec         dword ptr [ebp-0E4]
 00497B57    lea         eax,[ebp-34]
 00497B5A    mov         edx,2
 00497B5F    call        0067DCA0
 00497B64    mov         ecx,dword ptr [ebp-100]
 00497B6A    mov         dword ptr fs:[0],ecx
>00497B71    jmp         00498B7B
 00497B76    mov         word ptr [ebp-0F0],38
 00497B7F    lea         eax,[ebp-3C]
 00497B82    call        00401EA8
 00497B87    mov         edx,eax
 00497B89    inc         dword ptr [ebp-0E4]
 00497B8F    mov         ecx,dword ptr [ebp-104]
 00497B95    mov         eax,dword ptr [ecx+36C];TFEditFunctionDlg_11011981.lEndAdr:TLabeledEdit
 00497B9B    call        TTabPage.GetCaption
 00497BA0    lea         edx,[ebp-3C]
 00497BA3    push        edx
 00497BA4    lea         eax,[ebp-40]
 00497BA7    call        00401EA8
 00497BAC    push        eax
 00497BAD    inc         dword ptr [ebp-0E4]
 00497BB3    mov         edx,6BC1CC
 00497BB8    lea         eax,[ebp-38]
 00497BBB    call        0067DAB4
 00497BC0    inc         dword ptr [ebp-0E4]
 00497BC6    pop         ecx
 00497BC7    pop         edx
 00497BC8    call        0067DCF8
 00497BCD    lea         eax,[ebp-40]
 00497BD0    mov         eax,dword ptr [eax]
 00497BD2    call        StrToInt
 00497BD7    mov         dword ptr [ebp-10C],eax
 00497BDD    dec         dword ptr [ebp-0E4]
 00497BE3    lea         eax,[ebp-40]
 00497BE6    mov         edx,2
 00497BEB    call        0067DCA0
 00497BF0    dec         dword ptr [ebp-0E4]
 00497BF6    lea         eax,[ebp-3C]
 00497BF9    mov         edx,2
 00497BFE    call        0067DCA0
 00497C03    dec         dword ptr [ebp-0E4]
 00497C09    lea         eax,[ebp-38]
 00497C0C    mov         edx,2
 00497C11    call        0067DCA0
 00497C16    mov         eax,dword ptr [ebp-10C]
 00497C1C    call        00531F1C
 00497C21    test        al,al
>00497C23    jne         00497C6D
 00497C25    mov         word ptr [ebp-0F0],44
 00497C2E    mov         edx,6BC1CE
 00497C33    lea         eax,[ebp-44]
 00497C36    call        0067DAB4
 00497C3B    inc         dword ptr [ebp-0E4]
 00497C41    mov         eax,dword ptr [eax]
 00497C43    call        005ECEB0
 00497C48    dec         dword ptr [ebp-0E4]
 00497C4E    lea         eax,[ebp-44]
 00497C51    mov         edx,2
 00497C56    call        0067DCA0
 00497C5B    mov         ecx,dword ptr [ebp-100]
 00497C61    mov         dword ptr fs:[0],ecx
>00497C68    jmp         00498B7B
 00497C6D    mov         word ptr [ebp-0F0],50
 00497C76    lea         eax,[ebp-48]
 00497C79    call        00401EA8
 00497C7E    mov         edx,eax
 00497C80    inc         dword ptr [ebp-0E4]
 00497C86    mov         ecx,dword ptr [ebp-104]
 00497C8C    mov         eax,dword ptr [ecx+370];TFEditFunctionDlg_11011981.lStackSize:TLabeledEdit
 00497C92    call        TTabPage.GetCaption
 00497C97    lea         edx,[ebp-48]
 00497C9A    push        edx
 00497C9B    mov         edx,6BC1E7
 00497CA0    lea         eax,[ebp-4C]
 00497CA3    call        0067DAB4
 00497CA8    inc         dword ptr [ebp-0E4]
 00497CAE    lea         edx,[ebp-4C]
 00497CB1    pop         eax
 00497CB2    call        0067DD84
 00497CB7    test        al,al
>00497CB9    jne         00497D71
 00497CBF    lea         eax,[ebp-54]
 00497CC2    call        00401EA8
 00497CC7    mov         edx,eax
 00497CC9    inc         dword ptr [ebp-0E4]
 00497CCF    mov         ecx,dword ptr [ebp-104]
 00497CD5    mov         eax,dword ptr [ecx+370];TFEditFunctionDlg_11011981.lStackSize:TLabeledEdit
 00497CDB    call        TTabPage.GetCaption
 00497CE0    lea         edx,[ebp-54]
 00497CE3    push        edx
 00497CE4    lea         eax,[ebp-58]
 00497CE7    call        00401EA8
 00497CEC    push        eax
 00497CED    inc         dword ptr [ebp-0E4]
 00497CF3    mov         edx,6BC1E8
 00497CF8    lea         eax,[ebp-50]
 00497CFB    call        0067DAB4
 00497D00    inc         dword ptr [ebp-0E4]
 00497D06    pop         ecx
 00497D07    pop         edx
 00497D08    call        0067DCF8
 00497D0D    lea         eax,[ebp-58]
 00497D10    mov         eax,dword ptr [eax]
 00497D12    mov         edx,dword ptr [ebp-104]
 00497D18    add         edx,382;TFEditFunctionDlg_11011981.?f382:Integer
 00497D1E    call        00657D08
 00497D23    xor         ecx,ecx
 00497D25    mov         cl,al
 00497D27    cmp         ecx,1
 00497D2A    sbb         eax,eax
 00497D2C    neg         eax
 00497D2E    push        eax
 00497D2F    dec         dword ptr [ebp-0E4]
 00497D35    lea         eax,[ebp-58]
 00497D38    mov         edx,2
 00497D3D    call        0067DCA0
 00497D42    dec         dword ptr [ebp-0E4]
 00497D48    lea         eax,[ebp-54]
 00497D4B    mov         edx,2
 00497D50    call        0067DCA0
 00497D55    dec         dword ptr [ebp-0E4]
 00497D5B    lea         eax,[ebp-50]
 00497D5E    mov         edx,2
 00497D63    call        0067DCA0
 00497D68    pop         ecx
 00497D69    test        ecx,ecx
>00497D6B    jne         00497D71
 00497D6D    xor         eax,eax
>00497D6F    jmp         00497D76
 00497D71    mov         eax,1
 00497D76    push        eax
 00497D77    dec         dword ptr [ebp-0E4]
 00497D7D    lea         eax,[ebp-4C]
 00497D80    mov         edx,2
 00497D85    call        0067DCA0
 00497D8A    dec         dword ptr [ebp-0E4]
 00497D90    lea         eax,[ebp-48]
 00497D93    mov         edx,2
 00497D98    call        0067DCA0
 00497D9D    pop         ecx
 00497D9E    test        cl,cl
>00497DA0    je          00497DEA
 00497DA2    mov         word ptr [ebp-0F0],5C
 00497DAB    mov         edx,6BC1EA
 00497DB0    lea         eax,[ebp-5C]
 00497DB3    call        0067DAB4
 00497DB8    inc         dword ptr [ebp-0E4]
 00497DBE    mov         eax,dword ptr [eax]
 00497DC0    call        005ECEB0
 00497DC5    dec         dword ptr [ebp-0E4]
 00497DCB    lea         eax,[ebp-5C]
 00497DCE    mov         edx,2
 00497DD3    call        0067DCA0
 00497DD8    mov         ecx,dword ptr [ebp-100]
 00497DDE    mov         dword ptr fs:[0],ecx
>00497DE5    jmp         00498B7B
 00497DEA    mov         word ptr [ebp-0F0],68
 00497DF3    lea         eax,[ebp-64]
 00497DF6    call        00401EA8
 00497DFB    mov         edx,eax
 00497DFD    inc         dword ptr [ebp-0E4]
 00497E03    mov         ecx,dword ptr [ebp-104]
 00497E09    mov         eax,dword ptr [ecx+370];TFEditFunctionDlg_11011981.lStackSize:TLabeledEdit
 00497E0F    call        TTabPage.GetCaption
 00497E14    lea         edx,[ebp-64]
 00497E17    push        edx
 00497E18    lea         eax,[ebp-68]
 00497E1B    call        00401EA8
 00497E20    push        eax
 00497E21    inc         dword ptr [ebp-0E4]
 00497E27    mov         edx,6BC1FE
 00497E2C    lea         eax,[ebp-60]
 00497E2F    call        0067DAB4
 00497E34    inc         dword ptr [ebp-0E4]
 00497E3A    pop         ecx
 00497E3B    pop         edx
 00497E3C    call        0067DCF8
 00497E41    lea         eax,[ebp-68]
 00497E44    mov         eax,dword ptr [eax]
 00497E46    call        StrToInt
 00497E4B    mov         edx,dword ptr [ebp-104]
 00497E51    mov         dword ptr [edx+382],eax;TFEditFunctionDlg_11011981.?f382:Integer
 00497E57    dec         dword ptr [ebp-0E4]
 00497E5D    lea         eax,[ebp-68]
 00497E60    mov         edx,2
 00497E65    call        0067DCA0
 00497E6A    dec         dword ptr [ebp-0E4]
 00497E70    lea         eax,[ebp-64]
 00497E73    mov         edx,2
 00497E78    call        0067DCA0
 00497E7D    dec         dword ptr [ebp-0E4]
 00497E83    lea         eax,[ebp-60]
 00497E86    mov         edx,2
 00497E8B    call        0067DCA0
 00497E90    mov         ecx,dword ptr [ebp-104]
 00497E96    mov         eax,dword ptr [ecx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 00497E9C    call        0053A308
 00497EA1    mov         dword ptr [ebp-114],eax
 00497EA7    mov         edx,dword ptr [ebp-10C]
 00497EAD    mov         ecx,dword ptr [ebp-104]
 00497EB3    mov         eax,dword ptr [ecx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 00497EB9    sub         edx,eax
 00497EBB    inc         edx
 00497EBC    mov         ecx,dword ptr [ebp-114]
 00497EC2    mov         eax,dword ptr [ecx+1E]
 00497EC5    mov         dword ptr [eax+8],edx
 00497EC8    mov         edx,dword ptr [ebp-104]
 00497ECE    mov         ecx,dword ptr [edx+34C];TFEditFunctionDlg_11011981.rgFunctionKind:TRadioGroup
 00497ED4    mov         eax,dword ptr [ecx+218];TRadioGroup.FItemIndex:Integer
 00497EDA    sub         eax,1
>00497EDD    jb          00497EE9
>00497EDF    je          00497EF5
 00497EE1    dec         eax
>00497EE2    je          00497F01
 00497EE4    dec         eax
>00497EE5    je          00497F4D
>00497EE7    jmp         00497F57
 00497EE9    mov         edx,dword ptr [ebp-114]
 00497EEF    mov         byte ptr [edx+5],26
>00497EF3    jmp         00497F57
 00497EF5    mov         ecx,dword ptr [ebp-114]
 00497EFB    mov         byte ptr [ecx+5],27
>00497EFF    jmp         00497F57
 00497F01    mov         eax,dword ptr [ebp-114]
 00497F07    mov         byte ptr [eax+5],28
 00497F0B    mov         word ptr [ebp-0F0],74
 00497F14    mov         edx,6BC200
 00497F19    lea         eax,[ebp-6C]
 00497F1C    call        0067DAB4
 00497F21    inc         dword ptr [ebp-0E4]
 00497F27    lea         edx,[ebp-6C]
 00497F2A    mov         eax,dword ptr [ebp-114]
 00497F30    add         eax,0A
 00497F33    call        0067DCD0
 00497F38    dec         dword ptr [ebp-0E4]
 00497F3E    lea         eax,[ebp-6C]
 00497F41    mov         edx,2
 00497F46    call        0067DCA0
>00497F4B    jmp         00497F57
 00497F4D    mov         ecx,dword ptr [ebp-114]
 00497F53    mov         byte ptr [ecx+5],29
 00497F57    mov         eax,dword ptr [ebp-114]
 00497F5D    mov         edx,dword ptr [eax+1E]
 00497F60    and         dword ptr [edx],0FFFFFFF8
 00497F63    mov         ecx,dword ptr [ebp-104]
 00497F69    mov         eax,dword ptr [ecx+340];TFEditFunctionDlg_11011981.rgCallKind:TRadioGroup
 00497F6F    mov         edx,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 00497F75    mov         ecx,dword ptr [ebp-114]
 00497F7B    mov         eax,dword ptr [ecx+1E]
 00497F7E    or          dword ptr [eax],edx
 00497F80    mov         edx,dword ptr [ebp-104]
 00497F86    mov         eax,dword ptr [edx+338];TFEditFunctionDlg_11011981.cbEmbedded:TCheckBox
 00497F8C    mov         edx,dword ptr [eax]
 00497F8E    call        dword ptr [edx+0C4];TCheckBox.GetChecked
 00497F94    test        al,al
>00497F96    je          00497FA9
 00497F98    mov         ecx,dword ptr [ebp-114]
 00497F9E    mov         eax,dword ptr [ecx+1E]
 00497FA1    or          dword ptr [eax],40000000
>00497FA7    jmp         00497FB8
 00497FA9    mov         edx,dword ptr [ebp-114]
 00497FAF    mov         ecx,dword ptr [edx+1E]
 00497FB2    and         dword ptr [ecx],0BFFFFFFF
 00497FB8    mov         word ptr [ebp-0F0],80
 00497FC1    lea         eax,[ebp-4]
 00497FC4    call        00401EA8
 00497FC9    inc         dword ptr [ebp-0E4]
 00497FCF    mov         word ptr [ebp-0F0],8C
 00497FD8    mov         word ptr [ebp-0F0],98
 00497FE1    mov         edx,6BC201
 00497FE6    lea         eax,[ebp-8]
 00497FE9    call        0067DAB4
 00497FEE    inc         dword ptr [ebp-0E4]
 00497FF4    mov         word ptr [ebp-0F0],8C
 00497FFD    xor         edx,edx
 00497FFF    mov         dword ptr [ebp-118],edx
>00498005    jmp         004980E9
 0049800A    mov         word ptr [ebp-0F0],0A4
 00498013    mov         ecx,dword ptr [ebp-104]
 00498019    mov         eax,dword ptr [ecx+33C];TFEditFunctionDlg_11011981.mType:TMemo
 0049801F    add         eax,220;TMemo.FLines:TStrings
 00498024    mov         dword ptr [ebp-120],eax
 0049802A    lea         eax,[ebp-70]
 0049802D    call        00401EA8
 00498032    mov         ecx,eax
 00498034    inc         dword ptr [ebp-0E4]
 0049803A    mov         edx,dword ptr [ebp-120]
 00498040    mov         eax,dword ptr [edx]
 00498042    mov         edx,dword ptr [ebp-118]
 00498048    mov         ebx,dword ptr [eax]
 0049804A    call        dword ptr [ebx+0C]
 0049804D    lea         eax,[ebp-70]
 00498050    push        eax
 00498051    lea         eax,[ebp-74]
 00498054    call        00401EA8
 00498059    mov         edx,eax
 0049805B    inc         dword ptr [ebp-0E4]
 00498061    pop         eax
 00498062    call        0067E030
 00498067    lea         edx,[ebp-74]
 0049806A    lea         eax,[ebp-4]
 0049806D    call        0067DCD0
 00498072    dec         dword ptr [ebp-0E4]
 00498078    lea         eax,[ebp-74]
 0049807B    mov         edx,2
 00498080    call        0067DCA0
 00498085    dec         dword ptr [ebp-0E4]
 0049808B    lea         eax,[ebp-70]
 0049808E    mov         edx,2
 00498093    call        0067DCA0
 00498098    mov         word ptr [ebp-0F0],0B0
 004980A1    mov         edx,6BC202
 004980A6    lea         eax,[ebp-78]
 004980A9    call        0067DAB4
 004980AE    inc         dword ptr [ebp-0E4]
 004980B4    lea         edx,[ebp-78]
 004980B7    lea         eax,[ebp-4]
 004980BA    call        0067DD84
 004980BF    push        eax
 004980C0    dec         dword ptr [ebp-0E4]
 004980C6    lea         eax,[ebp-78]
 004980C9    mov         edx,2
 004980CE    call        0067DCA0
 004980D3    pop         ecx
 004980D4    test        cl,cl
>004980D6    jne         004980E3
 004980D8    lea         edx,[ebp-4]
 004980DB    lea         eax,[ebp-8]
 004980DE    call        0067DCE4
 004980E3    inc         dword ptr [ebp-118]
 004980E9    mov         ecx,dword ptr [ebp-104]
 004980EF    mov         eax,dword ptr [ecx+33C];TFEditFunctionDlg_11011981.mType:TMemo
 004980F5    add         eax,220;TMemo.FLines:TStrings
 004980FA    mov         dword ptr [ebp-11C],eax
 00498100    mov         edx,dword ptr [ebp-11C]
 00498106    mov         eax,dword ptr [edx]
 00498108    mov         edx,dword ptr [eax]
 0049810A    call        dword ptr [edx+14]
 0049810D    mov         ecx,dword ptr [ebp-118]
 00498113    cmp         eax,ecx
>00498115    jg          0049800A
 0049811B    mov         word ptr [ebp-0F0],0BC
 00498124    lea         eax,[ebp-7C]
 00498127    call        00401EA8
 0049812C    mov         edx,eax
 0049812E    inc         dword ptr [ebp-0E4]
 00498134    lea         eax,[ebp-8]
 00498137    call        0067E030
 0049813C    lea         edx,[ebp-7C]
 0049813F    lea         eax,[ebp-8]
 00498142    call        0067DCD0
 00498147    dec         dword ptr [ebp-0E4]
 0049814D    lea         eax,[ebp-7C]
 00498150    mov         edx,2
 00498155    call        0067DCA0
 0049815A    lea         eax,[ebp-8]
 0049815D    call        0067E32C
 00498162    mov         dword ptr [ebp-124],eax
 00498168    mov         word ptr [ebp-0F0],8C
 00498171    mov         edx,dword ptr [ebp-124]
 00498177    movsx       ecx,byte ptr [edx]
 0049817A    cmp         ecx,3B
>0049817D    jne         00498188
 0049817F    mov         eax,dword ptr [ebp-124]
 00498185    mov         byte ptr [eax],20
 00498188    lea         eax,[ebp-8]
 0049818B    call        00403C0C
 00498190    mov         dword ptr [ebp-124],eax
 00498196    mov         word ptr [ebp-0F0],0C8
 0049819F    mov         edx,6BC203
 004981A4    lea         eax,[ebp-0C]
 004981A7    call        0067DAB4
 004981AC    inc         dword ptr [ebp-0E4]
 004981B2    mov         word ptr [ebp-0F0],8C
 004981BB    xor         edx,edx
 004981BD    mov         dword ptr [ebp-128],edx
 004981C3    mov         ecx,dword ptr [ebp-124]
 004981C9    mov         al,byte ptr [ecx]
 004981CB    mov         byte ptr [ebp-129],al
 004981D1    mov         word ptr [ebp-0F0],8C
 004981DA    mov         dl,byte ptr [ebp-129]
 004981E0    test        dl,dl
>004981E2    je          00498214
 004981E4    movsx       ecx,byte ptr [ebp-129]
 004981EB    cmp         ecx,20
>004981EE    je          00498214
 004981F0    movsx       eax,byte ptr [ebp-129]
 004981F7    cmp         eax,28
>004981FA    je          00498214
 004981FC    movsx       edx,byte ptr [ebp-129]
 00498203    cmp         edx,3B
>00498206    je          00498214
 00498208    movsx       ecx,byte ptr [ebp-129]
 0049820F    cmp         ecx,3A
>00498212    jne         00498276
 00498214    mov         eax,dword ptr [ebp-124]
 0049821A    mov         byte ptr [eax],0
 0049821D    mov         word ptr [ebp-0F0],0D4
 00498226    lea         eax,[ebp-80]
 00498229    call        00401EA8
 0049822E    push        eax
 0049822F    inc         dword ptr [ebp-0E4]
 00498235    lea         eax,[ebp-8]
 00498238    mov         ecx,dword ptr [ebp-128]
 0049823E    mov         edx,1
 00498243    call        0067E0BC
 00498248    lea         edx,[ebp-80]
 0049824B    lea         eax,[ebp-0C]
 0049824E    call        0067DCD0
 00498253    dec         dword ptr [ebp-0E4]
 00498259    lea         eax,[ebp-80]
 0049825C    mov         edx,2
 00498261    call        0067DCA0
 00498266    mov         ecx,dword ptr [ebp-124]
 0049826C    mov         al,byte ptr [ebp-129]
 00498272    mov         byte ptr [ecx],al
>00498274    jmp         00498287
 00498276    inc         dword ptr [ebp-124]
 0049827C    inc         dword ptr [ebp-128]
>00498282    jmp         004981C3
 00498287    mov         edx,dword ptr [ebp-114]
 0049828D    mov         cl,byte ptr [edx+5]
 00498290    cmp         cl,26
>00498293    jne         0049835C
 00498299    mov         word ptr [ebp-0F0],0E0
 004982A2    lea         eax,[ebp-84]
 004982A8    call        00401EA8
 004982AD    mov         edx,eax
 004982AF    inc         dword ptr [ebp-0E4]
 004982B5    mov         ecx,dword ptr [ebp-104]
 004982BB    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 004982C1    call        TTabPage.GetCaption
 004982C6    lea         edx,[ebp-84]
 004982CC    push        edx
 004982CD    lea         eax,[ebp-8C]
 004982D3    call        00401EA8
 004982D8    push        eax
 004982D9    inc         dword ptr [ebp-0E4]
 004982DF    mov         edx,6BC204
 004982E4    lea         eax,[ebp-88]
 004982EA    call        0067DAB4
 004982EF    inc         dword ptr [ebp-0E4]
 004982F5    lea         edx,[ebp-88]
 004982FB    pop         ecx
 004982FC    pop         eax
 004982FD    call        0067DCF8
 00498302    lea         edx,[ebp-8C]
 00498308    mov         edx,dword ptr [edx]
 0049830A    mov         eax,dword ptr [ebp-114]
 00498310    call        00485974
 00498315    dec         dword ptr [ebp-0E4]
 0049831B    lea         eax,[ebp-8C]
 00498321    mov         edx,2
 00498326    call        0067DCA0
 0049832B    dec         dword ptr [ebp-0E4]
 00498331    lea         eax,[ebp-88]
 00498337    mov         edx,2
 0049833C    call        0067DCA0
 00498341    dec         dword ptr [ebp-0E4]
 00498347    lea         eax,[ebp-84]
 0049834D    mov         edx,2
 00498352    call        0067DCA0
>00498357    jmp         0049876F
 0049835C    mov         ecx,dword ptr [ebp-114]
 00498362    mov         al,byte ptr [ecx+5]
 00498365    cmp         al,27
>00498367    jne         00498430
 0049836D    mov         word ptr [ebp-0F0],0EC
 00498376    lea         eax,[ebp-90]
 0049837C    call        00401EA8
 00498381    mov         edx,eax
 00498383    inc         dword ptr [ebp-0E4]
 00498389    mov         ecx,dword ptr [ebp-104]
 0049838F    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 00498395    call        TTabPage.GetCaption
 0049839A    lea         edx,[ebp-90]
 004983A0    push        edx
 004983A1    lea         eax,[ebp-98]
 004983A7    call        00401EA8
 004983AC    push        eax
 004983AD    inc         dword ptr [ebp-0E4]
 004983B3    mov         edx,6BC20C
 004983B8    lea         eax,[ebp-94]
 004983BE    call        0067DAB4
 004983C3    inc         dword ptr [ebp-0E4]
 004983C9    lea         edx,[ebp-94]
 004983CF    pop         ecx
 004983D0    pop         eax
 004983D1    call        0067DCF8
 004983D6    lea         edx,[ebp-98]
 004983DC    mov         edx,dword ptr [edx]
 004983DE    mov         eax,dword ptr [ebp-114]
 004983E4    call        00485974
 004983E9    dec         dword ptr [ebp-0E4]
 004983EF    lea         eax,[ebp-98]
 004983F5    mov         edx,2
 004983FA    call        0067DCA0
 004983FF    dec         dword ptr [ebp-0E4]
 00498405    lea         eax,[ebp-94]
 0049840B    mov         edx,2
 00498410    call        0067DCA0
 00498415    dec         dword ptr [ebp-0E4]
 0049841B    lea         eax,[ebp-90]
 00498421    mov         edx,2
 00498426    call        0067DCA0
>0049842B    jmp         0049876F
 00498430    mov         word ptr [ebp-0F0],0F8
 00498439    lea         eax,[ebp-9C]
 0049843F    call        00401EA8
 00498444    mov         edx,eax
 00498446    inc         dword ptr [ebp-0E4]
 0049844C    mov         ecx,dword ptr [ebp-104]
 00498452    mov         eax,dword ptr [ecx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 00498458    call        005315B0
 0049845D    lea         edx,[ebp-9C]
 00498463    mov         edx,dword ptr [edx]
 00498465    mov         eax,dword ptr [ebp-0C]
 00498468    call        SameText
 0049846D    push        eax
 0049846E    dec         dword ptr [ebp-0E4]
 00498474    lea         eax,[ebp-9C]
 0049847A    mov         edx,2
 0049847F    call        0067DCA0
 00498484    pop         ecx
 00498485    test        cl,cl
>00498487    je          00498601
 0049848D    mov         eax,dword ptr [ebp-104]
 00498493    mov         eax,dword ptr [eax+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 00498499    mov         edx,dword ptr [eax]
 0049849B    call        dword ptr [edx+0C4];TCheckBox.GetChecked
 004984A1    test        al,al
>004984A3    je          004985BA
 004984A9    mov         ecx,dword ptr [ebp-114]
 004984AF    mov         eax,dword ptr [ecx+1E]
 004984B2    test        dword ptr [eax],38200000
>004984B8    je          004985BA
 004984BE    mov         word ptr [ebp-0F0],104
 004984C7    lea         eax,[ebp-0A0]
 004984CD    call        00401EA8
 004984D2    mov         edx,eax
 004984D4    inc         dword ptr [ebp-0E4]
 004984DA    mov         ecx,dword ptr [ebp-104]
 004984E0    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 004984E6    call        TTabPage.GetCaption
 004984EB    lea         edx,[ebp-0A0]
 004984F1    push        edx
 004984F2    lea         eax,[ebp-0A8]
 004984F8    call        00401EA8
 004984FD    push        eax
 004984FE    inc         dword ptr [ebp-0E4]
 00498504    mov         edx,6BC215
 00498509    lea         eax,[ebp-0A4]
 0049850F    call        0067DAB4
 00498514    inc         dword ptr [ebp-0E4]
 0049851A    lea         edx,[ebp-0A4]
 00498520    pop         ecx
 00498521    pop         eax
 00498522    call        0067DCF8
 00498527    lea         edx,[ebp-0A8]
 0049852D    push        edx
 0049852E    lea         eax,[ebp-0AC]
 00498534    call        00401EA8
 00498539    mov         ecx,eax
 0049853B    inc         dword ptr [ebp-0E4]
 00498541    lea         edx,[ebp-0C]
 00498544    pop         eax
 00498545    call        0067DCF8
 0049854A    lea         edx,[ebp-0AC]
 00498550    mov         edx,dword ptr [edx]
 00498552    mov         eax,dword ptr [ebp-114]
 00498558    call        00485974
 0049855D    dec         dword ptr [ebp-0E4]
 00498563    lea         eax,[ebp-0AC]
 00498569    mov         edx,2
 0049856E    call        0067DCA0
 00498573    dec         dword ptr [ebp-0E4]
 00498579    lea         eax,[ebp-0A8]
 0049857F    mov         edx,2
 00498584    call        0067DCA0
 00498589    dec         dword ptr [ebp-0E4]
 0049858F    lea         eax,[ebp-0A4]
 00498595    mov         edx,2
 0049859A    call        0067DCA0
 0049859F    dec         dword ptr [ebp-0E4]
 004985A5    lea         eax,[ebp-0A0]
 004985AB    mov         edx,2
 004985B0    call        0067DCA0
>004985B5    jmp         0049876F
 004985BA    mov         word ptr [ebp-0F0],110
 004985C3    mov         edx,6BC217
 004985C8    lea         eax,[ebp-0B0]
 004985CE    call        0067DAB4
 004985D3    inc         dword ptr [ebp-0E4]
 004985D9    mov         edx,dword ptr [eax]
 004985DB    mov         eax,dword ptr [ebp-114]
 004985E1    call        00485974
 004985E6    dec         dword ptr [ebp-0E4]
 004985EC    lea         eax,[ebp-0B0]
 004985F2    mov         edx,2
 004985F7    call        0067DCA0
>004985FC    jmp         0049876F
 00498601    mov         ecx,dword ptr [ebp-104]
 00498607    mov         eax,dword ptr [ecx+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 0049860D    mov         edx,dword ptr [eax]
 0049860F    call        dword ptr [edx+0C4];TCheckBox.GetChecked
 00498615    test        al,al
>00498617    je          00498761
 0049861D    mov         ecx,dword ptr [ebp-114]
 00498623    mov         eax,dword ptr [ecx+1E]
 00498626    test        dword ptr [eax],38200000
>0049862C    je          00498761
 00498632    mov         word ptr [ebp-0F0],11C
 0049863B    lea         eax,[ebp-0C0]
 00498641    call        00401EA8
 00498646    mov         edx,eax
 00498648    inc         dword ptr [ebp-0E4]
 0049864E    lea         eax,[ebp-0C]
 00498651    call        005320E4
 00498656    lea         edx,[ebp-0C0]
 0049865C    push        edx
 0049865D    lea         eax,[ebp-0B4]
 00498663    call        00401EA8
 00498668    mov         edx,eax
 0049866A    inc         dword ptr [ebp-0E4]
 00498670    mov         ecx,dword ptr [ebp-104]
 00498676    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 0049867C    call        TTabPage.GetCaption
 00498681    lea         edx,[ebp-0B4]
 00498687    push        edx
 00498688    lea         eax,[ebp-0BC]
 0049868E    call        00401EA8
 00498693    push        eax
 00498694    inc         dword ptr [ebp-0E4]
 0049869A    mov         edx,6BC218
 0049869F    lea         eax,[ebp-0B8]
 004986A5    call        0067DAB4
 004986AA    inc         dword ptr [ebp-0E4]
 004986B0    lea         edx,[ebp-0B8]
 004986B6    pop         ecx
 004986B7    pop         eax
 004986B8    call        0067DCF8
 004986BD    lea         edx,[ebp-0BC]
 004986C3    push        edx
 004986C4    lea         eax,[ebp-0C4]
 004986CA    call        00401EA8
 004986CF    mov         ecx,eax
 004986D1    inc         dword ptr [ebp-0E4]
 004986D7    pop         eax
 004986D8    pop         edx
 004986D9    call        0067DCF8
 004986DE    lea         edx,[ebp-0C4]
 004986E4    mov         edx,dword ptr [edx]
 004986E6    mov         eax,dword ptr [ebp-114]
 004986EC    call        00485974
 004986F1    dec         dword ptr [ebp-0E4]
 004986F7    lea         eax,[ebp-0C4]
 004986FD    mov         edx,2
 00498702    call        0067DCA0
 00498707    dec         dword ptr [ebp-0E4]
 0049870D    lea         eax,[ebp-0C0]
 00498713    mov         edx,2
 00498718    call        0067DCA0
 0049871D    dec         dword ptr [ebp-0E4]
 00498723    lea         eax,[ebp-0BC]
 00498729    mov         edx,2
 0049872E    call        0067DCA0
 00498733    dec         dword ptr [ebp-0E4]
 00498739    lea         eax,[ebp-0B8]
 0049873F    mov         edx,2
 00498744    call        0067DCA0
 00498749    dec         dword ptr [ebp-0E4]
 0049874F    lea         eax,[ebp-0B4]
 00498755    mov         edx,2
 0049875A    call        0067DCA0
>0049875F    jmp         0049876F
 00498761    mov         edx,dword ptr [ebp-0C]
 00498764    mov         eax,dword ptr [ebp-114]
 0049876A    call        00485974
 0049876F    mov         ecx,dword ptr [ebp-114]
 00498775    mov         eax,dword ptr [ecx+1E]
 00498778    call        0048456C
 0049877D    xor         edx,edx
 0049877F    mov         dword ptr [ebp-130],edx
 00498785    mov         word ptr [ebp-0F0],8C
 0049878E    mov         ecx,dword ptr [ebp-114]
 00498794    mov         al,byte ptr [ecx+5]
 00498797    cmp         al,26
>00498799    je          004987AD
 0049879B    mov         edx,dword ptr [ebp-114]
 004987A1    mov         cl,byte ptr [edx+5]
 004987A4    cmp         cl,27
>004987A7    jne         004988C5
 004987AD    push        4
 004987AF    mov         word ptr [ebp-0F0],128
 004987B8    mov         edx,6BC21A
 004987BD    lea         eax,[ebp-0C8]
 004987C3    call        0067DAB4
 004987C8    inc         dword ptr [ebp-0E4]
 004987CE    push        dword ptr [eax]
 004987D0    lea         eax,[ebp-0CC]
 004987D6    call        00401EA8
 004987DB    mov         edx,eax
 004987DD    inc         dword ptr [ebp-0E4]
 004987E3    mov         ecx,dword ptr [ebp-104]
 004987E9    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 004987EF    call        TTabPage.GetCaption
 004987F4    lea         edx,[ebp-0CC]
 004987FA    push        dword ptr [edx]
 004987FC    mov         ecx,dword ptr [ebp-114]
 00498802    mov         eax,dword ptr [ecx+1E]
 00498805    xor         ecx,ecx
 00498807    mov         dl,21
 00498809    call        00483A34
 0049880E    dec         dword ptr [ebp-0E4]
 00498814    lea         eax,[ebp-0CC]
 0049881A    mov         edx,2
 0049881F    call        0067DCA0
 00498824    dec         dword ptr [ebp-0E4]
 0049882A    lea         eax,[ebp-0C8]
 00498830    mov         edx,2
 00498835    call        0067DCA0
 0049883A    push        4
 0049883C    mov         word ptr [ebp-0F0],134
 00498845    mov         edx,6BC21F
 0049884A    lea         eax,[ebp-0D0]
 00498850    call        0067DAB4
 00498855    inc         dword ptr [ebp-0E4]
 0049885B    push        dword ptr [eax]
 0049885D    mov         edx,6BC225
 00498862    lea         eax,[ebp-0D4]
 00498868    call        0067DAB4
 0049886D    inc         dword ptr [ebp-0E4]
 00498873    push        dword ptr [eax]
 00498875    mov         ecx,dword ptr [ebp-114]
 0049887B    mov         eax,dword ptr [ecx+1E]
 0049887E    mov         ecx,1
 00498883    mov         dl,21
 00498885    call        00483A34
 0049888A    dec         dword ptr [ebp-0E4]
 00498890    lea         eax,[ebp-0D4]
 00498896    mov         edx,2
 0049889B    call        0067DCA0
 004988A0    dec         dword ptr [ebp-0E4]
 004988A6    lea         eax,[ebp-0D0]
 004988AC    mov         edx,2
 004988B1    call        0067DCA0
 004988B6    mov         dword ptr [ebp-130],2
>004988C0    jmp         00498971
 004988C5    mov         ecx,dword ptr [ebp-114]
 004988CB    mov         eax,dword ptr [ecx+1E]
 004988CE    test        dword ptr [eax],38200000
>004988D4    je          00498971
 004988DA    push        4
 004988DC    mov         word ptr [ebp-0F0],140
 004988E5    mov         edx,6BC22D
 004988EA    lea         eax,[ebp-0D8]
 004988F0    call        0067DAB4
 004988F5    inc         dword ptr [ebp-0E4]
 004988FB    push        dword ptr [eax]
 004988FD    lea         eax,[ebp-0DC]
 00498903    call        00401EA8
 00498908    mov         edx,eax
 0049890A    inc         dword ptr [ebp-0E4]
 00498910    mov         ecx,dword ptr [ebp-104]
 00498916    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 0049891C    call        TTabPage.GetCaption
 00498921    lea         edx,[ebp-0DC]
 00498927    push        dword ptr [edx]
 00498929    mov         ecx,dword ptr [ebp-114]
 0049892F    mov         eax,dword ptr [ecx+1E]
 00498932    xor         ecx,ecx
 00498934    mov         dl,21
 00498936    call        00483A34
 0049893B    dec         dword ptr [ebp-0E4]
 00498941    lea         eax,[ebp-0DC]
 00498947    mov         edx,2
 0049894C    call        0067DCA0
 00498951    dec         dword ptr [ebp-0E4]
 00498957    lea         eax,[ebp-0D8]
 0049895D    mov         edx,2
 00498962    call        0067DCA0
 00498967    mov         dword ptr [ebp-130],1
 00498971    mov         word ptr [ebp-0F0],14C
 0049897A    mov         ecx,dword ptr [ebp-104]
 00498980    mov         eax,dword ptr [ecx+340];TFEditFunctionDlg_11011981.rgCallKind:TRadioGroup
 00498986    push        dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0049898C    lea         eax,[ebp-10]
 0049898F    call        00401EA8
 00498994    push        eax
 00498995    inc         dword ptr [ebp-0E4]
 0049899B    mov         edx,dword ptr [ebp-114]
 004989A1    mov         eax,dword ptr [edx+1E]
 004989A4    mov         ecx,dword ptr [ebp-130]
 004989AA    mov         edx,dword ptr [ebp-124]
 004989B0    call        00483F70
 004989B5    mov         word ptr [ebp-0F0],8C
 004989BE    mov         eax,dword ptr [ebp-114]
 004989C4    mov         dl,byte ptr [eax+5]
 004989C7    cmp         dl,29
>004989CA    jne         004989DD
 004989CC    lea         edx,[ebp-10]
 004989CF    mov         eax,dword ptr [ebp-114]
 004989D5    add         eax,0A
 004989D8    call        0067DCD0
 004989DD    mov         ecx,dword ptr [ebp-114]
 004989E3    mov         eax,dword ptr [ecx+1E]
 004989E6    mov         edx,dword ptr [ebp-104]
 004989EC    mov         ecx,dword ptr [edx+382];TFEditFunctionDlg_11011981.?f382:Integer
 004989F2    mov         dword ptr [eax+0C],ecx
 004989F5    mov         eax,dword ptr [ebp-104]
 004989FB    call        00499478
 00498A00    mov         eax,dword ptr [ebp-104]
 00498A06    call        004998C0
 00498A0B    xor         edx,edx
 00498A0D    mov         ecx,dword ptr [ebp-104]
 00498A13    mov         eax,dword ptr [ecx+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 00498A19    mov         ecx,dword ptr [eax]
 00498A1B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498A1E    xor         edx,edx
 00498A20    mov         eax,dword ptr [ebp-104]
 00498A26    mov         eax,dword ptr [eax+33C];TFEditFunctionDlg_11011981.mType:TMemo
 00498A2C    mov         ecx,dword ptr [eax]
 00498A2E    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498A31    xor         edx,edx
 00498A33    mov         eax,dword ptr [ebp-104]
 00498A39    mov         eax,dword ptr [eax+338];TFEditFunctionDlg_11011981.cbEmbedded:TCheckBox
 00498A3F    mov         ecx,dword ptr [eax]
 00498A41    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498A44    xor         edx,edx
 00498A46    mov         eax,dword ptr [ebp-104]
 00498A4C    mov         eax,dword ptr [eax+36C];TFEditFunctionDlg_11011981.lEndAdr:TLabeledEdit
 00498A52    mov         ecx,dword ptr [eax]
 00498A54    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498A57    xor         edx,edx
 00498A59    mov         eax,dword ptr [ebp-104]
 00498A5F    mov         eax,dword ptr [eax+370];TFEditFunctionDlg_11011981.lStackSize:TLabeledEdit
 00498A65    mov         ecx,dword ptr [eax]
 00498A67    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498A6A    xor         edx,edx
 00498A6C    mov         eax,dword ptr [ebp-104]
 00498A72    mov         eax,dword ptr [eax+34C];TFEditFunctionDlg_11011981.rgFunctionKind:TRadioGroup
 00498A78    mov         ecx,dword ptr [eax]
 00498A7A    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498A7D    xor         edx,edx
 00498A7F    mov         eax,dword ptr [ebp-104]
 00498A85    mov         eax,dword ptr [eax+340];TFEditFunctionDlg_11011981.rgCallKind:TRadioGroup
 00498A8B    mov         ecx,dword ptr [eax]
 00498A8D    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498A90    xor         edx,edx
 00498A92    mov         eax,dword ptr [ebp-104]
 00498A98    mov         eax,dword ptr [eax+344];TFEditFunctionDlg_11011981.bApplyType:TButton
 00498A9E    mov         ecx,dword ptr [eax]
 00498AA0    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498AA3    xor         edx,edx
 00498AA5    mov         eax,dword ptr [ebp-104]
 00498AAB    mov         eax,dword ptr [eax+348];TFEditFunctionDlg_11011981.bCancelType:TButton
 00498AB1    mov         ecx,dword ptr [eax]
 00498AB3    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498AB6    mov         dl,1
 00498AB8    mov         eax,dword ptr [ebp-104]
 00498ABE    mov         eax,dword ptr [eax+2F4];TFEditFunctionDlg_11011981.bEdit:TButton
 00498AC4    mov         ecx,dword ptr [eax]
 00498AC6    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498AC9    xor         edx,edx
 00498ACB    mov         eax,dword ptr [ebp-104]
 00498AD1    mov         eax,dword ptr [eax+2F8];TFEditFunctionDlg_11011981.bAdd:TButton
 00498AD7    mov         ecx,dword ptr [eax]
 00498AD9    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498ADC    xor         edx,edx
 00498ADE    mov         eax,dword ptr [ebp-104]
 00498AE4    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 00498AEA    mov         ecx,dword ptr [eax]
 00498AEC    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498AEF    xor         edx,edx
 00498AF1    mov         eax,dword ptr [ebp-104]
 00498AF7    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 00498AFD    mov         ecx,dword ptr [eax]
 00498AFF    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498B02    mov         dl,1
 00498B04    mov         eax,dword ptr [ebp-104]
 00498B0A    mov         eax,dword ptr [eax+350];TFEditFunctionDlg_11011981.bOk:TButton
 00498B10    mov         ecx,dword ptr [eax]
 00498B12    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498B15    mov         edx,dword ptr [ebp-104]
 00498B1B    mov         byte ptr [edx+378],1;TFEditFunctionDlg_11011981.?f378:byte
 00498B22    dec         dword ptr [ebp-0E4]
 00498B28    lea         eax,[ebp-10]
 00498B2B    mov         edx,2
 00498B30    call        0067DCA0
 00498B35    dec         dword ptr [ebp-0E4]
 00498B3B    lea         eax,[ebp-0C]
 00498B3E    mov         edx,2
 00498B43    call        0067DCA0
 00498B48    dec         dword ptr [ebp-0E4]
 00498B4E    lea         eax,[ebp-8]
 00498B51    mov         edx,2
 00498B56    call        0067DCA0
 00498B5B    dec         dword ptr [ebp-0E4]
 00498B61    lea         eax,[ebp-4]
 00498B64    mov         edx,2
 00498B69    call        0067DCA0
 00498B6E    mov         ecx,dword ptr [ebp-100]
 00498B74    mov         dword ptr fs:[0],ecx
 00498B7B    pop         ebx
 00498B7C    mov         esp,ebp
 00498B7E    pop         ebp
 00498B7F    ret
*}
end;

//00498B80
procedure TFEditFunctionDlg_11011981.bCancelTypeClick(Sender:TObject);
begin
{*
 00498B80    push        ebp
 00498B81    mov         ebp,esp
 00498B83    add         esp,0FFFFFFF4
 00498B86    mov         dword ptr [ebp-8],edx
 00498B89    mov         dword ptr [ebp-4],eax
 00498B8C    mov         eax,dword ptr [ebp-4]
 00498B8F    mov         dl,byte ptr [eax+378];TFEditFunctionDlg_11011981.?f378:byte
 00498B95    test        dl,dl
>00498B97    jne         00498BCC
 00498B99    mov         ecx,dword ptr [ebp-4]
 00498B9C    mov         eax,dword ptr [ecx+38E]
 00498BA2    call        0053A308
 00498BA7    mov         dword ptr [ebp-0C],eax
 00498BAA    mov         edx,dword ptr [ebp-4]
 00498BAD    mov         edx,dword ptr [edx+38A];TFEditFunctionDlg_11011981.?f38A:dword
 00498BB3    mov         eax,dword ptr [ebp-0C]
 00498BB6    call        00485974
 00498BBB    mov         ecx,dword ptr [ebp-0C]
 00498BBE    mov         eax,dword ptr [ecx+1E]
 00498BC1    mov         edx,dword ptr [ebp-4]
 00498BC4    mov         ecx,dword ptr [edx+386];TFEditFunctionDlg_11011981.?f386:dword
 00498BCA    mov         dword ptr [eax],ecx
 00498BCC    mov         eax,dword ptr [ebp-4]
 00498BCF    call        00499478
 00498BD4    xor         edx,edx
 00498BD6    mov         ecx,dword ptr [ebp-4]
 00498BD9    mov         eax,dword ptr [ecx+358]
 00498BDF    mov         ecx,dword ptr [eax]
 00498BE1    call        dword ptr [ecx+64]
 00498BE4    xor         edx,edx
 00498BE6    mov         eax,dword ptr [ebp-4]
 00498BE9    mov         eax,dword ptr [eax+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 00498BEF    mov         ecx,dword ptr [eax]
 00498BF1    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498BF4    xor         edx,edx
 00498BF6    mov         eax,dword ptr [ebp-4]
 00498BF9    mov         eax,dword ptr [eax+33C];TFEditFunctionDlg_11011981.mType:TMemo
 00498BFF    mov         ecx,dword ptr [eax]
 00498C01    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C04    xor         edx,edx
 00498C06    mov         eax,dword ptr [ebp-4]
 00498C09    mov         eax,dword ptr [eax+338];TFEditFunctionDlg_11011981.cbEmbedded:TCheckBox
 00498C0F    mov         ecx,dword ptr [eax]
 00498C11    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C14    xor         edx,edx
 00498C16    mov         eax,dword ptr [ebp-4]
 00498C19    mov         eax,dword ptr [eax+36C];TFEditFunctionDlg_11011981.lEndAdr:TLabeledEdit
 00498C1F    mov         ecx,dword ptr [eax]
 00498C21    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C24    xor         edx,edx
 00498C26    mov         eax,dword ptr [ebp-4]
 00498C29    mov         eax,dword ptr [eax+370];TFEditFunctionDlg_11011981.lStackSize:TLabeledEdit
 00498C2F    mov         ecx,dword ptr [eax]
 00498C31    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C34    xor         edx,edx
 00498C36    mov         eax,dword ptr [ebp-4]
 00498C39    mov         eax,dword ptr [eax+34C];TFEditFunctionDlg_11011981.rgFunctionKind:TRadioGroup
 00498C3F    mov         ecx,dword ptr [eax]
 00498C41    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C44    xor         edx,edx
 00498C46    mov         eax,dword ptr [ebp-4]
 00498C49    mov         eax,dword ptr [eax+340];TFEditFunctionDlg_11011981.rgCallKind:TRadioGroup
 00498C4F    mov         ecx,dword ptr [eax]
 00498C51    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C54    xor         edx,edx
 00498C56    mov         eax,dword ptr [ebp-4]
 00498C59    mov         eax,dword ptr [eax+344];TFEditFunctionDlg_11011981.bApplyType:TButton
 00498C5F    mov         ecx,dword ptr [eax]
 00498C61    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C64    xor         edx,edx
 00498C66    mov         eax,dword ptr [ebp-4]
 00498C69    mov         eax,dword ptr [eax+348];TFEditFunctionDlg_11011981.bCancelType:TButton
 00498C6F    mov         ecx,dword ptr [eax]
 00498C71    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C74    mov         dl,1
 00498C76    mov         eax,dword ptr [ebp-4]
 00498C79    mov         eax,dword ptr [eax+2F4];TFEditFunctionDlg_11011981.bEdit:TButton
 00498C7F    mov         ecx,dword ptr [eax]
 00498C81    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C84    xor         edx,edx
 00498C86    mov         eax,dword ptr [ebp-4]
 00498C89    mov         eax,dword ptr [eax+2F8];TFEditFunctionDlg_11011981.bAdd:TButton
 00498C8F    mov         ecx,dword ptr [eax]
 00498C91    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498C94    xor         edx,edx
 00498C96    mov         eax,dword ptr [ebp-4]
 00498C99    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 00498C9F    mov         ecx,dword ptr [eax]
 00498CA1    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498CA4    xor         edx,edx
 00498CA6    mov         eax,dword ptr [ebp-4]
 00498CA9    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 00498CAF    mov         ecx,dword ptr [eax]
 00498CB1    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498CB4    xor         edx,edx
 00498CB6    mov         eax,dword ptr [ebp-4]
 00498CB9    mov         eax,dword ptr [eax+350];TFEditFunctionDlg_11011981.bOk:TButton
 00498CBF    mov         ecx,dword ptr [eax]
 00498CC1    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00498CC4    mov         edx,dword ptr [ebp-4]
 00498CC7    mov         byte ptr [edx+378],0;TFEditFunctionDlg_11011981.?f378:byte
 00498CCE    mov         esp,ebp
 00498CD0    pop         ebp
 00498CD1    ret
*}
end;

//00498CD4
procedure TFEditFunctionDlg_11011981.bApplyVarClick(Sender:TObject);
begin
{*
 00498CD4    push        ebp
 00498CD5    mov         ebp,esp
 00498CD7    add         esp,0FFFFFF7C
 00498CDD    push        ebx
 00498CDE    push        esi
 00498CDF    push        edi
 00498CE0    mov         dword ptr [ebp-74],edx
 00498CE3    mov         dword ptr [ebp-70],eax
 00498CE6    mov         eax,6BCA50
 00498CEB    call        0066FECC
 00498CF0    mov         word ptr [ebp-5C],8
 00498CF6    lea         eax,[ebp-0C]
 00498CF9    call        00401EA8
 00498CFE    inc         dword ptr [ebp-50]
 00498D01    mov         word ptr [ebp-5C],14
 00498D07    mov         word ptr [ebp-5C],20
 00498D0D    lea         eax,[ebp-10]
 00498D10    call        00401EA8
 00498D15    inc         dword ptr [ebp-50]
 00498D18    mov         word ptr [ebp-5C],14
 00498D1E    mov         word ptr [ebp-5C],2C
 00498D24    lea         eax,[ebp-14]
 00498D27    call        00401EA8
 00498D2C    inc         dword ptr [ebp-50]
 00498D2F    mov         word ptr [ebp-5C],14
 00498D35    mov         word ptr [ebp-5C],38
 00498D3B    lea         eax,[ebp-18]
 00498D3E    call        00401EA8
 00498D43    inc         dword ptr [ebp-50]
 00498D46    mov         word ptr [ebp-5C],14
 00498D4C    mov         word ptr [ebp-5C],44
 00498D52    mov         word ptr [ebp-5C],50
 00498D58    lea         eax,[ebp-1C]
 00498D5B    call        00401EA8
 00498D60    mov         edx,eax
 00498D62    inc         dword ptr [ebp-50]
 00498D65    mov         ecx,dword ptr [ebp-70]
 00498D68    mov         eax,dword ptr [ecx+31C];TFEditFunctionDlg_11011981.edtVarOfs:TLabeledEdit
 00498D6E    call        TTabPage.GetCaption
 00498D73    lea         edx,[ebp-1C]
 00498D76    push        edx
 00498D77    lea         eax,[ebp-20]
 00498D7A    call        00401EA8
 00498D7F    mov         edx,eax
 00498D81    inc         dword ptr [ebp-50]
 00498D84    pop         eax
 00498D85    call        0067E030
 00498D8A    lea         edx,[ebp-20]
 00498D8D    push        edx
 00498D8E    lea         eax,[ebp-24]
 00498D91    call        00401EA8
 00498D96    mov         ecx,eax
 00498D98    inc         dword ptr [ebp-50]
 00498D9B    mov         eax,6BC232
 00498DA0    pop         edx
 00498DA1    call        0067E37C
 00498DA6    lea         eax,[ebp-24]
 00498DA9    mov         eax,dword ptr [eax]
 00498DAB    call        StrToInt
 00498DB0    mov         dword ptr [ebp-78],eax
 00498DB3    dec         dword ptr [ebp-50]
 00498DB6    lea         eax,[ebp-24]
 00498DB9    mov         edx,2
 00498DBE    call        0067DCA0
 00498DC3    dec         dword ptr [ebp-50]
 00498DC6    lea         eax,[ebp-20]
 00498DC9    mov         edx,2
 00498DCE    call        0067DCA0
 00498DD3    dec         dword ptr [ebp-50]
 00498DD6    lea         eax,[ebp-1C]
 00498DD9    mov         edx,2
 00498DDE    call        0067DCA0
 00498DE3    mov         word ptr [ebp-5C],14
>00498DE9    jmp         00498E8B
 00498DEE    mov         word ptr [ebp-5C],5C
 00498DF4    mov         edx,6BC234
 00498DF9    lea         eax,[ebp-28]
 00498DFC    call        0067DAB4
 00498E01    inc         dword ptr [ebp-50]
 00498E04    mov         eax,dword ptr [eax]
 00498E06    call        005ECEB0
 00498E0B    dec         dword ptr [ebp-50]
 00498E0E    lea         eax,[ebp-28]
 00498E11    mov         edx,2
 00498E16    call        0067DCA0
 00498E1B    mov         ecx,dword ptr [ebp-70]
 00498E1E    mov         eax,dword ptr [ecx+31C];TFEditFunctionDlg_11011981.edtVarOfs:TLabeledEdit
 00498E24    mov         edx,dword ptr [eax]
 00498E26    call        dword ptr [edx+0C0];TLabeledEdit.sub_005FBFF0
 00498E2C    dec         dword ptr [ebp-50]
 00498E2F    lea         eax,[ebp-18]
 00498E32    mov         edx,2
 00498E37    call        0067DCA0
 00498E3C    dec         dword ptr [ebp-50]
 00498E3F    lea         eax,[ebp-14]
 00498E42    mov         edx,2
 00498E47    call        0067DCA0
 00498E4C    dec         dword ptr [ebp-50]
 00498E4F    lea         eax,[ebp-10]
 00498E52    mov         edx,2
 00498E57    call        0067DCA0
 00498E5C    dec         dword ptr [ebp-50]
 00498E5F    lea         eax,[ebp-0C]
 00498E62    mov         edx,2
 00498E67    call        0067DCA0
 00498E6C    xor         ecx,ecx
 00498E6E    mov         dword ptr [ebp-50],ecx
 00498E71    lea         eax,[ebp-6C]
 00498E74    push        eax
 00498E75    call        0067B5E7
 00498E7A    pop         ecx
>00498E7B    jmp         004991E8
 00498E80    mov         word ptr [ebp-5C],4C
 00498E86    call        0067AF32
 00498E8B    mov         word ptr [ebp-5C],68
 00498E91    mov         word ptr [ebp-5C],74
 00498E97    lea         eax,[ebp-2C]
 00498E9A    call        00401EA8
 00498E9F    mov         edx,eax
 00498EA1    inc         dword ptr [ebp-50]
 00498EA4    mov         ecx,dword ptr [ebp-70]
 00498EA7    mov         eax,dword ptr [ecx+320];TFEditFunctionDlg_11011981.edtVarSize:TLabeledEdit
 00498EAD    call        TTabPage.GetCaption
 00498EB2    lea         edx,[ebp-2C]
 00498EB5    push        edx
 00498EB6    lea         eax,[ebp-30]
 00498EB9    call        00401EA8
 00498EBE    mov         edx,eax
 00498EC0    inc         dword ptr [ebp-50]
 00498EC3    pop         eax
 00498EC4    call        0067E030
 00498EC9    lea         edx,[ebp-30]
 00498ECC    push        edx
 00498ECD    lea         eax,[ebp-34]
 00498ED0    call        00401EA8
 00498ED5    mov         ecx,eax
 00498ED7    inc         dword ptr [ebp-50]
 00498EDA    mov         eax,6BC243
 00498EDF    pop         edx
 00498EE0    call        0067E37C
 00498EE5    lea         eax,[ebp-34]
 00498EE8    mov         eax,dword ptr [eax]
 00498EEA    call        StrToInt
 00498EEF    mov         dword ptr [ebp-7C],eax
 00498EF2    dec         dword ptr [ebp-50]
 00498EF5    lea         eax,[ebp-34]
 00498EF8    mov         edx,2
 00498EFD    call        0067DCA0
 00498F02    dec         dword ptr [ebp-50]
 00498F05    lea         eax,[ebp-30]
 00498F08    mov         edx,2
 00498F0D    call        0067DCA0
 00498F12    dec         dword ptr [ebp-50]
 00498F15    lea         eax,[ebp-2C]
 00498F18    mov         edx,2
 00498F1D    call        0067DCA0
 00498F22    mov         word ptr [ebp-5C],14
>00498F28    jmp         00498FCA
 00498F2D    mov         word ptr [ebp-5C],80
 00498F33    mov         edx,6BC245
 00498F38    lea         eax,[ebp-38]
 00498F3B    call        0067DAB4
 00498F40    inc         dword ptr [ebp-50]
 00498F43    mov         eax,dword ptr [eax]
 00498F45    call        005ECEB0
 00498F4A    dec         dword ptr [ebp-50]
 00498F4D    lea         eax,[ebp-38]
 00498F50    mov         edx,2
 00498F55    call        0067DCA0
 00498F5A    mov         ecx,dword ptr [ebp-70]
 00498F5D    mov         eax,dword ptr [ecx+320];TFEditFunctionDlg_11011981.edtVarSize:TLabeledEdit
 00498F63    mov         edx,dword ptr [eax]
 00498F65    call        dword ptr [edx+0C0];TLabeledEdit.sub_005FBFF0
 00498F6B    dec         dword ptr [ebp-50]
 00498F6E    lea         eax,[ebp-18]
 00498F71    mov         edx,2
 00498F76    call        0067DCA0
 00498F7B    dec         dword ptr [ebp-50]
 00498F7E    lea         eax,[ebp-14]
 00498F81    mov         edx,2
 00498F86    call        0067DCA0
 00498F8B    dec         dword ptr [ebp-50]
 00498F8E    lea         eax,[ebp-10]
 00498F91    mov         edx,2
 00498F96    call        0067DCA0
 00498F9B    dec         dword ptr [ebp-50]
 00498F9E    lea         eax,[ebp-0C]
 00498FA1    mov         edx,2
 00498FA6    call        0067DCA0
 00498FAB    xor         ecx,ecx
 00498FAD    mov         dword ptr [ebp-50],ecx
 00498FB0    lea         eax,[ebp-6C]
 00498FB3    push        eax
 00498FB4    call        0067B5E7
 00498FB9    pop         ecx
>00498FBA    jmp         004991E8
 00498FBF    mov         word ptr [ebp-5C],70
 00498FC5    call        0067AF32
 00498FCA    mov         edx,dword ptr [ebp-70]
 00498FCD    mov         eax,dword ptr [edx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 00498FD3    call        0053A308
 00498FD8    mov         dword ptr [ebp-80],eax
 00498FDB    mov         word ptr [ebp-5C],14
 00498FE1    mov         edx,dword ptr [ebp-70]
 00498FE4    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 00498FEA    mov         edx,dword ptr [eax]
 00498FEC    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 00498FF2    mov         edx,eax
 00498FF4    mov         eax,dword ptr [ebp-80]
 00498FF7    mov         ecx,dword ptr [eax+1E]
 00498FFA    mov         eax,dword ptr [ecx+14]
 00498FFD    call        TList.Get
 00499002    mov         dword ptr [ebp-84],eax
 00499008    mov         edx,dword ptr [ebp-84]
 0049900E    mov         ecx,dword ptr [edx]
 00499010    mov         dword ptr [ebp-78],ecx
 00499013    mov         word ptr [ebp-5C],8C
 00499019    lea         eax,[ebp-3C]
 0049901C    call        00401EA8
 00499021    mov         edx,eax
 00499023    inc         dword ptr [ebp-50]
 00499026    mov         ecx,dword ptr [ebp-70]
 00499029    mov         eax,dword ptr [ecx+324];TFEditFunctionDlg_11011981.edtVarName:TLabeledEdit
 0049902F    call        TTabPage.GetCaption
 00499034    lea         edx,[ebp-3C]
 00499037    push        edx
 00499038    lea         eax,[ebp-40]
 0049903B    call        00401EA8
 00499040    mov         edx,eax
 00499042    inc         dword ptr [ebp-50]
 00499045    pop         eax
 00499046    call        0067E030
 0049904B    lea         edx,[ebp-40]
 0049904E    lea         eax,[ebp-0C]
 00499051    call        0067DCD0
 00499056    dec         dword ptr [ebp-50]
 00499059    lea         eax,[ebp-40]
 0049905C    mov         edx,2
 00499061    call        0067DCA0
 00499066    dec         dword ptr [ebp-50]
 00499069    lea         eax,[ebp-3C]
 0049906C    mov         edx,2
 00499071    call        0067DCA0
 00499076    lea         edx,[ebp-0C]
 00499079    mov         eax,dword ptr [ebp-84]
 0049907F    add         eax,8
 00499082    call        0067DCD0
 00499087    mov         word ptr [ebp-5C],98
 0049908D    lea         eax,[ebp-44]
 00499090    call        00401EA8
 00499095    mov         edx,eax
 00499097    inc         dword ptr [ebp-50]
 0049909A    mov         ecx,dword ptr [ebp-70]
 0049909D    mov         eax,dword ptr [ecx+328];TFEditFunctionDlg_11011981.edtVarType:TLabeledEdit
 004990A3    call        TTabPage.GetCaption
 004990A8    lea         edx,[ebp-44]
 004990AB    push        edx
 004990AC    lea         eax,[ebp-48]
 004990AF    call        00401EA8
 004990B4    mov         edx,eax
 004990B6    inc         dword ptr [ebp-50]
 004990B9    pop         eax
 004990BA    call        0067E030
 004990BF    lea         edx,[ebp-48]
 004990C2    lea         eax,[ebp-10]
 004990C5    call        0067DCD0
 004990CA    dec         dword ptr [ebp-50]
 004990CD    lea         eax,[ebp-48]
 004990D0    mov         edx,2
 004990D5    call        0067DCA0
 004990DA    dec         dword ptr [ebp-50]
 004990DD    lea         eax,[ebp-44]
 004990E0    mov         edx,2
 004990E5    call        0067DCA0
 004990EA    lea         edx,[ebp-10]
 004990ED    mov         eax,dword ptr [ebp-84]
 004990F3    add         eax,0C
 004990F6    call        0067DCD0
 004990FB    mov         ecx,dword ptr [ebp-80]
 004990FE    mov         eax,dword ptr [ecx+1E]
 00499101    mov         ecx,dword ptr [ebp-10]
 00499104    mov         edx,dword ptr [ebp-78]
 00499107    call        00484C20
 0049910C    mov         eax,dword ptr [ebp-70]
 0049910F    call        0049A908
 00499114    mov         edx,dword ptr [ebp-70]
 00499117    mov         eax,dword ptr [edx+314];TFEditFunctionDlg_11011981.pnlVars:TPanel
 0049911D    xor         edx,edx
 0049911F    call        TCCalendar.SetVisible
 00499124    mov         ecx,dword ptr [ebp-70]
 00499127    mov         eax,dword ptr [ecx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049912D    mov         dl,1
 0049912F    mov         ecx,dword ptr [eax]
 00499131    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00499134    mov         eax,dword ptr [ebp-70]
 00499137    mov         eax,dword ptr [eax+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 0049913D    mov         dl,1
 0049913F    mov         ecx,dword ptr [eax]
 00499141    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00499144    mov         eax,dword ptr [ebp-70]
 00499147    mov         eax,dword ptr [eax+2F4];TFEditFunctionDlg_11011981.bEdit:TButton
 0049914D    mov         dl,1
 0049914F    mov         ecx,dword ptr [eax]
 00499151    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00499154    mov         eax,dword ptr [ebp-70]
 00499157    mov         eax,dword ptr [eax+2F8];TFEditFunctionDlg_11011981.bAdd:TButton
 0049915D    xor         edx,edx
 0049915F    mov         ecx,dword ptr [eax]
 00499161    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00499164    mov         eax,dword ptr [ebp-70]
 00499167    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 0049916D    xor         edx,edx
 0049916F    mov         ecx,dword ptr [eax]
 00499171    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00499174    mov         eax,dword ptr [ebp-70]
 00499177    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 0049917D    xor         edx,edx
 0049917F    mov         ecx,dword ptr [eax]
 00499181    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00499184    mov         eax,dword ptr [ebp-70]
 00499187    mov         eax,dword ptr [eax+350];TFEditFunctionDlg_11011981.bOk:TButton
 0049918D    mov         dl,1
 0049918F    mov         ecx,dword ptr [eax]
 00499191    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00499194    mov         eax,dword ptr [ebp-70]
 00499197    mov         byte ptr [eax+379],1;TFEditFunctionDlg_11011981.?f379:byte
 0049919E    dec         dword ptr [ebp-50]
 004991A1    lea         eax,[ebp-18]
 004991A4    mov         edx,2
 004991A9    call        0067DCA0
 004991AE    dec         dword ptr [ebp-50]
 004991B1    lea         eax,[ebp-14]
 004991B4    mov         edx,2
 004991B9    call        0067DCA0
 004991BE    dec         dword ptr [ebp-50]
 004991C1    lea         eax,[ebp-10]
 004991C4    mov         edx,2
 004991C9    call        0067DCA0
 004991CE    dec         dword ptr [ebp-50]
 004991D1    lea         eax,[ebp-0C]
 004991D4    mov         edx,2
 004991D9    call        0067DCA0
 004991DE    mov         ecx,dword ptr [ebp-6C]
 004991E1    mov         dword ptr fs:[0],ecx
 004991E8    pop         edi
 004991E9    pop         esi
 004991EA    pop         ebx
 004991EB    mov         esp,ebp
 004991ED    pop         ebp
 004991EE    ret
*}
end;

//004991F0
procedure TFEditFunctionDlg_11011981.bCancelVarClick(Sender:TObject);
begin
{*
 004991F0    push        ebp
 004991F1    mov         ebp,esp
 004991F3    add         esp,0FFFFFFF8
 004991F6    mov         dword ptr [ebp-8],edx
 004991F9    mov         dword ptr [ebp-4],eax
 004991FC    xor         edx,edx
 004991FE    mov         eax,dword ptr [ebp-4]
 00499201    mov         eax,dword ptr [eax+314];TFEditFunctionDlg_11011981.pnlVars:TPanel
 00499207    call        TCCalendar.SetVisible
 0049920C    mov         dl,1
 0049920E    mov         ecx,dword ptr [ebp-4]
 00499211    mov         eax,dword ptr [ecx+310]
 00499217    mov         ecx,dword ptr [eax]
 00499219    call        dword ptr [ecx+64]
 0049921C    mov         dl,1
 0049921E    mov         eax,dword ptr [ebp-4]
 00499221    mov         eax,dword ptr [eax+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 00499227    mov         ecx,dword ptr [eax]
 00499229    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049922C    xor         edx,edx
 0049922E    mov         eax,dword ptr [ebp-4]
 00499231    mov         eax,dword ptr [eax+350];TFEditFunctionDlg_11011981.bOk:TButton
 00499237    mov         ecx,dword ptr [eax]
 00499239    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049923C    mov         edx,dword ptr [ebp-4]
 0049923F    mov         byte ptr [edx+379],0;TFEditFunctionDlg_11011981.?f379:byte
 00499246    pop         ecx
 00499247    pop         ecx
 00499248    pop         ebp
 00499249    ret
*}
end;

//0049924C
procedure TFEditFunctionDlg_11011981.bRemoveSelectedClick(Sender:TObject);
begin
{*
 0049924C    push        ebp
 0049924D    mov         ebp,esp
 0049924F    add         esp,0FFFFFFEC
 00499252    mov         dword ptr [ebp-8],edx
 00499255    mov         dword ptr [ebp-4],eax
 00499258    mov         eax,dword ptr [ebp-4]
 0049925B    mov         edx,dword ptr [eax+300];TFEditFunctionDlg_11011981.pc:TPageControl
 00499261    mov         ecx,dword ptr [edx+26C];TPageControl.ActivePage:TTabSheet
 00499267    mov         eax,dword ptr [ebp-4]
 0049926A    mov         edx,dword ptr [eax+30C];TFEditFunctionDlg_11011981.tsVars:TTabSheet
 00499270    cmp         ecx,edx
>00499272    jne         00499335
 00499278    mov         ecx,dword ptr [ebp-4]
 0049927B    mov         eax,dword ptr [ecx+38E]
 00499281    call        0053A308
 00499286    mov         dword ptr [ebp-0C],eax
 00499289    mov         edx,dword ptr [ebp-4]
 0049928C    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 00499292    mov         edx,dword ptr [eax]
 00499294    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 0049929A    dec         eax
 0049929B    mov         dword ptr [ebp-10],eax
 0049929E    mov         ecx,dword ptr [ebp-10]
 004992A1    test        ecx,ecx
>004992A3    jl          004992E6
 004992A5    mov         edx,dword ptr [ebp-10]
 004992A8    mov         eax,dword ptr [ebp-4]
 004992AB    mov         eax,dword ptr [eax+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 004992B1    call        0059E5C8
 004992B6    test        al,al
>004992B8    je          004992DC
 004992BA    mov         edx,dword ptr [ebp-0C]
 004992BD    mov         ecx,dword ptr [edx+1E]
 004992C0    mov         eax,dword ptr [ecx+14]
 004992C3    mov         edx,dword ptr [ebp-10]
 004992C6    call        TList.Get
 004992CB    mov         dword ptr [ebp-14],eax
 004992CE    mov         ecx,dword ptr [ebp-0C]
 004992D1    mov         eax,dword ptr [ecx+1E]
 004992D4    mov         edx,dword ptr [ebp-10]
 004992D7    call        00484B94
 004992DC    dec         dword ptr [ebp-10]
 004992DF    mov         ecx,dword ptr [ebp-10]
 004992E2    test        ecx,ecx
>004992E4    jge         004992A5
 004992E6    mov         eax,dword ptr [ebp-4]
 004992E9    call        0049A908
 004992EE    xor         edx,edx
 004992F0    mov         ecx,dword ptr [ebp-4]
 004992F3    mov         eax,dword ptr [ecx+2F4]
 004992F9    mov         ecx,dword ptr [eax]
 004992FB    call        dword ptr [ecx+64]
 004992FE    xor         edx,edx
 00499300    mov         eax,dword ptr [ebp-4]
 00499303    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 00499309    mov         ecx,dword ptr [eax]
 0049930B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049930E    mov         edx,dword ptr [ebp-4]
 00499311    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 00499317    mov         edx,dword ptr [eax]
 00499319    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 0049931F    test        eax,eax
 00499321    setg        dl
 00499324    and         edx,1
 00499327    mov         eax,dword ptr [ebp-4]
 0049932A    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 00499330    mov         ecx,dword ptr [eax]
 00499332    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00499335    mov         esp,ebp
 00499337    pop         ebp
 00499338    ret
*}
end;

//0049933C
procedure TFEditFunctionDlg_11011981.bAddClick(Sender:TObject);
begin
{*
 0049933C    push        ebp
 0049933D    mov         ebp,esp
 0049933F    add         esp,0FFFFFFCC
 00499342    mov         dword ptr [ebp-34],edx
 00499345    mov         dword ptr [ebp-30],eax
 00499348    mov         eax,6BCB30
 0049934D    call        0066FECC
 00499352    mov         word ptr [ebp-1C],8
 00499358    lea         eax,[ebp-4]
 0049935B    call        00401EA8
 00499360    inc         dword ptr [ebp-10]
 00499363    mov         word ptr [ebp-1C],14
 00499369    mov         word ptr [ebp-1C],20
 0049936F    lea         eax,[ebp-8]
 00499372    call        00401EA8
 00499377    inc         dword ptr [ebp-10]
 0049937A    mov         word ptr [ebp-1C],14
 00499380    mov         edx,dword ptr [ebp-30]
 00499383    mov         ecx,dword ptr [edx+300];TFEditFunctionDlg_11011981.pc:TPageControl
 00499389    mov         eax,dword ptr [ecx+26C];TPageControl.ActivePage:TTabSheet
 0049938F    mov         edx,dword ptr [ebp-30]
 00499392    mov         ecx,dword ptr [edx+30C];TFEditFunctionDlg_11011981.tsVars:TTabSheet
 00499398    cmp         eax,ecx
 0049939A    dec         dword ptr [ebp-10]
 0049939D    lea         eax,[ebp-8]
 004993A0    mov         edx,2
 004993A5    call        0067DCA0
 004993AA    dec         dword ptr [ebp-10]
 004993AD    lea         eax,[ebp-4]
 004993B0    mov         edx,2
 004993B5    call        0067DCA0
 004993BA    mov         ecx,dword ptr [ebp-2C]
 004993BD    mov         dword ptr fs:[0],ecx
 004993C4    mov         esp,ebp
 004993C6    pop         ebp
 004993C7    ret
*}
end;

//004993C8
procedure sub_004993C8(?:TFEditFunctionDlg_11011981);
begin
{*
 004993C8    push        ebp
 004993C9    mov         ebp,esp
 004993CB    add         esp,0FFFFFFF0
 004993CE    mov         dword ptr [ebp-4],eax
 004993D1    mov         eax,dword ptr [ebp-4]
 004993D4    mov         edx,dword ptr [eax+37E];TFEditFunctionDlg_11011981.?f37E:dword
 004993DA    test        edx,edx
>004993DC    jne         00499473
 004993E2    xor         ecx,ecx
 004993E4    mov         dword ptr [ebp-8],ecx
>004993E7    jmp         00499426
 004993E9    mov         edx,dword ptr [ebp-8]
 004993EC    mov         eax,[006ECB6C];0x0 gvar_006ECB6C
 004993F1    call        TList.Get
 004993F6    mov         dword ptr [ebp-0C],eax
 004993F9    mov         ecx,dword ptr [ebp-4]
 004993FC    mov         eax,dword ptr [ecx+354]
 00499402    add         eax,23C
 00499407    mov         dword ptr [ebp-10],eax
 0049940A    mov         edx,dword ptr [ebp-0C]
 0049940D    mov         edx,dword ptr [edx+8]
 00499410    mov         eax,dword ptr [ebp-10]
 00499413    mov         eax,dword ptr [eax]
 00499415    mov         ecx,dword ptr [eax]
 00499417    call        dword ptr [ecx+38]
 0049941A    mov         edx,dword ptr [ebp-4]
 0049941D    inc         dword ptr [edx+37E];TFEditFunctionDlg_11011981.?f37E:dword
 00499423    inc         dword ptr [ebp-8]
 00499426    mov         eax,[006ECB6C];0x0 gvar_006ECB6C
 0049942B    mov         edx,dword ptr [eax+8]
 0049942E    mov         ecx,dword ptr [ebp-8]
 00499431    cmp         edx,ecx
>00499433    jg          004993E9
 00499435    mov         eax,dword ptr [ebp-4]
 00499438    mov         edx,dword ptr [eax+37E];TFEditFunctionDlg_11011981.?f37E:dword
 0049943E    test        edx,edx
 00499440    setne       dl
 00499443    and         edx,1
 00499446    mov         eax,dword ptr [ebp-4]
 00499449    mov         eax,dword ptr [eax+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 0049944F    call        TCCalendar.SetVisible
 00499454    mov         edx,dword ptr [ebp-4]
 00499457    mov         ecx,dword ptr [edx+37E];TFEditFunctionDlg_11011981.?f37E:dword
 0049945D    test        ecx,ecx
 0049945F    setne       dl
 00499462    and         edx,1
 00499465    mov         eax,dword ptr [ebp-4]
 00499468    mov         eax,dword ptr [eax+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 0049946E    call        TCCalendar.SetVisible
 00499473    mov         esp,ebp
 00499475    pop         ebp
 00499476    ret
*}
end;

//00499478
procedure sub_00499478(?:TFEditFunctionDlg_11011981);
begin
{*
 00499478    push        ebp
 00499479    mov         ebp,esp
 0049947B    add         esp,0FFFFFF98
 0049947E    push        ebx
 0049947F    mov         dword ptr [ebp-4C],eax
 00499482    mov         eax,6BCBF0
 00499487    call        0066FECC
 0049948C    mov         word ptr [ebp-38],8
 00499492    lea         eax,[ebp-4]
 00499495    call        00401EA8
 0049949A    inc         dword ptr [ebp-2C]
 0049949D    mov         word ptr [ebp-38],14
 004994A3    mov         edx,dword ptr [ebp-4C]
 004994A6    mov         eax,dword ptr [edx+33C];TFEditFunctionDlg_11011981.mType:TMemo
 004994AC    mov         edx,dword ptr [eax]
 004994AE    call        dword ptr [edx+0DC];TMemo.sub_00598F44
 004994B4    mov         ecx,dword ptr [ebp-4C]
 004994B7    mov         eax,dword ptr [ecx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 004994BD    call        0053A308
 004994C2    mov         dword ptr [ebp-5C],eax
 004994C5    mov         edx,dword ptr [ebp-5C]
 004994C8    mov         cl,byte ptr [edx+5]
 004994CB    sub         cl,26
>004994CE    je          004994DE
 004994D0    dec         cl
>004994D2    je          004994F0
 004994D4    dec         cl
>004994D6    je          00499505
 004994D8    dec         cl
>004994DA    je          0049951A
>004994DC    jmp         0049952D
 004994DE    xor         edx,edx
 004994E0    mov         eax,dword ptr [ebp-4C]
 004994E3    mov         eax,dword ptr [eax+34C];TFEditFunctionDlg_11011981.rgFunctionKind:TRadioGroup
 004994E9    call        TRadioGroup.SetItemIndex
>004994EE    jmp         0049952D
 004994F0    mov         edx,1
 004994F5    mov         ecx,dword ptr [ebp-4C]
 004994F8    mov         eax,dword ptr [ecx+34C];TFEditFunctionDlg_11011981.rgFunctionKind:TRadioGroup
 004994FE    call        TRadioGroup.SetItemIndex
>00499503    jmp         0049952D
 00499505    mov         edx,2
 0049950A    mov         ecx,dword ptr [ebp-4C]
 0049950D    mov         eax,dword ptr [ecx+34C];TFEditFunctionDlg_11011981.rgFunctionKind:TRadioGroup
 00499513    call        TRadioGroup.SetItemIndex
>00499518    jmp         0049952D
 0049951A    mov         edx,3
 0049951F    mov         ecx,dword ptr [ebp-4C]
 00499522    mov         eax,dword ptr [ecx+34C];TFEditFunctionDlg_11011981.rgFunctionKind:TRadioGroup
 00499528    call        TRadioGroup.SetItemIndex
 0049952D    mov         edx,dword ptr [ebp-5C]
 00499530    mov         ecx,dword ptr [edx+1E]
 00499533    mov         eax,dword ptr [ecx]
 00499535    mov         dword ptr [ebp-58],eax
 00499538    mov         dl,byte ptr [ebp-58]
 0049953B    and         dl,7
 0049953E    mov         byte ptr [ebp-4D],dl
 00499541    xor         edx,edx
 00499543    mov         dl,byte ptr [ebp-4D]
 00499546    mov         eax,dword ptr [ebp-4C]
 00499549    mov         eax,dword ptr [eax+340];TFEditFunctionDlg_11011981.rgCallKind:TRadioGroup
 0049954F    call        TRadioGroup.SetItemIndex
 00499554    test        byte ptr [ebp-55],40
 00499558    setne       dl
 0049955B    and         edx,1
 0049955E    mov         ecx,dword ptr [ebp-4C]
 00499561    mov         eax,dword ptr [ecx+338];TFEditFunctionDlg_11011981.cbEmbedded:TCheckBox
 00499567    mov         ecx,dword ptr [eax]
 00499569    call        dword ptr [ecx+0C8];TCheckBox.SetChecked
 0049956F    mov         word ptr [ebp-38],20
 00499575    mov         byte ptr [ebp-5D],0
 00499579    mov         byte ptr [ebp-5E],0
 0049957D    mov         edx,dword ptr [ebp-4C]
 00499580    mov         eax,dword ptr [edx+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 00499586    mov         edx,dword ptr [eax]
 00499588    call        dword ptr [edx+0C4];TCheckBox.GetChecked
 0049958E    test        al,al
>00499590    je          004995BA
 00499592    mov         byte ptr [ebp-5D],1
 00499596    lea         eax,[ebp-8]
 00499599    call        00401EA8
 0049959E    mov         edx,eax
 004995A0    inc         dword ptr [ebp-2C]
 004995A3    mov         ecx,dword ptr [ebp-4C]
 004995A6    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 004995AC    call        TTabPage.GetCaption
 004995B1    lea         edx,[ebp-8]
 004995B4    mov         ecx,edx
 004995B6    mov         eax,ecx
>004995B8    jmp         004995CE
 004995BA    mov         byte ptr [ebp-5E],1
 004995BE    mov         edx,6BC252
 004995C3    lea         eax,[ebp-0C]
 004995C6    call        0067DAB4
 004995CB    inc         dword ptr [ebp-2C]
 004995CE    mov         edx,eax
 004995D0    mov         ecx,edx
 004995D2    push        dword ptr [ecx]
 004995D4    lea         eax,[ebp-10]
 004995D7    call        00401EA8
 004995DC    push        eax
 004995DD    inc         dword ptr [ebp-2C]
 004995E0    lea         ecx,[ebp-54]
 004995E3    mov         edx,dword ptr [ebp-4C]
 004995E6    mov         edx,dword ptr [edx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 004995EC    mov         eax,dword ptr [ebp-5C]
 004995EF    call        004888E0
 004995F4    lea         edx,[ebp-10]
 004995F7    lea         eax,[ebp-4]
 004995FA    call        0067DCD0
 004995FF    dec         dword ptr [ebp-2C]
 00499602    lea         eax,[ebp-10]
 00499605    mov         edx,2
 0049960A    call        0067DCA0
 0049960F    mov         cl,byte ptr [ebp-5E]
 00499612    test        cl,cl
>00499614    je          0049962A
 00499616    dec         dword ptr [ebp-2C]
 00499619    lea         eax,[ebp-0C]
 0049961C    mov         edx,2
 00499621    call        0067DCA0
 00499626    mov         byte ptr [ebp-5E],0
 0049962A    mov         cl,byte ptr [ebp-5D]
 0049962D    test        cl,cl
>0049962F    je          00499645
 00499631    dec         dword ptr [ebp-2C]
 00499634    lea         eax,[ebp-8]
 00499637    mov         edx,2
 0049963C    call        0067DCA0
 00499641    mov         byte ptr [ebp-5D],0
 00499645    mov         ecx,dword ptr [ebp-4C]
 00499648    mov         eax,dword ptr [ecx+33C];TFEditFunctionDlg_11011981.mType:TMemo
 0049964E    add         eax,220;TMemo.FLines:TStrings
 00499653    mov         dword ptr [ebp-64],eax
 00499656    mov         edx,dword ptr [ebp-64]
 00499659    mov         eax,dword ptr [edx]
 0049965B    mov         edx,dword ptr [ebp-4]
 0049965E    mov         ecx,dword ptr [eax]
 00499660    call        dword ptr [ecx+38]
 00499663    mov         eax,dword ptr [ebp-4C]
 00499666    mov         edx,dword ptr [eax+37E];TFEditFunctionDlg_11011981.?f37E:dword
 0049966C    test        edx,edx
>0049966E    jne         004996A8
 00499670    xor         edx,edx
 00499672    mov         eax,dword ptr [ebp-4C]
 00499675    mov         eax,dword ptr [eax+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 0049967B    mov         ecx,dword ptr [eax]
 0049967D    call        dword ptr [ecx+0C8];TCheckBox.SetChecked
 00499683    xor         edx,edx
 00499685    mov         eax,dword ptr [ebp-4C]
 00499688    mov         eax,dword ptr [eax+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 0049968E    call        TCCalendar.SetVisible
 00499693    xor         edx,edx
 00499695    mov         ecx,dword ptr [ebp-4C]
 00499698    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 0049969E    call        TCCalendar.SetVisible
>004996A3    jmp         004997E0
 004996A8    mov         edx,dword ptr [ebp-4C]
 004996AB    mov         ecx,dword ptr [edx+37E];TFEditFunctionDlg_11011981.?f37E:dword
 004996B1    dec         ecx
>004996B2    jne         00499708
 004996B4    mov         word ptr [ebp-38],2C
 004996BA    mov         eax,dword ptr [ebp-4C]
 004996BD    mov         edx,dword ptr [eax+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 004996C3    add         edx,23C;TComboBox.FItems:TStrings
 004996C9    mov         dword ptr [ebp-68],edx
 004996CC    lea         eax,[ebp-14]
 004996CF    call        00401EA8
 004996D4    mov         ecx,eax
 004996D6    inc         dword ptr [ebp-2C]
 004996D9    mov         edx,dword ptr [ebp-68]
 004996DC    mov         eax,dword ptr [edx]
 004996DE    xor         edx,edx
 004996E0    mov         ebx,dword ptr [eax]
 004996E2    call        dword ptr [ebx+0C]
 004996E5    lea         edx,[ebp-14]
 004996E8    mov         edx,dword ptr [edx]
 004996EA    mov         eax,dword ptr [ebp-4C]
 004996ED    mov         eax,dword ptr [eax+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 004996F3    call        TTabPage.SetCaption
 004996F8    dec         dword ptr [ebp-2C]
 004996FB    lea         eax,[ebp-14]
 004996FE    mov         edx,2
 00499703    call        0067DCA0
 00499708    mov         ecx,dword ptr [ebp-5C]
 0049970B    mov         al,byte ptr [ecx+5]
 0049970E    cmp         al,26
>00499710    je          00499727
 00499712    mov         edx,dword ptr [ebp-5C]
 00499715    mov         cl,byte ptr [edx+5]
 00499718    cmp         cl,27
>0049971B    je          00499727
 0049971D    test        byte ptr [ebp-56],20
>00499721    je          004997AD
 00499727    mov         dl,1
 00499729    mov         eax,dword ptr [ebp-4C]
 0049972C    mov         eax,dword ptr [eax+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 00499732    mov         ecx,dword ptr [eax]
 00499734    call        dword ptr [ecx+0C8];TCheckBox.SetChecked
 0049973A    mov         eax,dword ptr [ebp-5C]
 0049973D    call        004858C4
 00499742    test        al,al
>00499744    je          004997C0
 00499746    mov         word ptr [ebp-38],38
 0049974C    lea         eax,[ebp-18]
 0049974F    call        00401EA8
 00499754    mov         edx,eax
 00499756    inc         dword ptr [ebp-2C]
 00499759    mov         eax,dword ptr [ebp-5C]
 0049975C    call        0048591C
 00499761    lea         edx,[ebp-18]
 00499764    push        edx
 00499765    lea         eax,[ebp-1C]
 00499768    call        00401EA8
 0049976D    mov         edx,eax
 0049976F    inc         dword ptr [ebp-2C]
 00499772    pop         eax
 00499773    call        00531F50
 00499778    lea         edx,[ebp-1C]
 0049977B    mov         edx,dword ptr [edx]
 0049977D    mov         eax,dword ptr [ebp-4C]
 00499780    mov         eax,dword ptr [eax+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 00499786    call        TTabPage.SetCaption
 0049978B    dec         dword ptr [ebp-2C]
 0049978E    lea         eax,[ebp-1C]
 00499791    mov         edx,2
 00499796    call        0067DCA0
 0049979B    dec         dword ptr [ebp-2C]
 0049979E    lea         eax,[ebp-18]
 004997A1    mov         edx,2
 004997A6    call        0067DCA0
>004997AB    jmp         004997C0
 004997AD    xor         edx,edx
 004997AF    mov         eax,dword ptr [ebp-4C]
 004997B2    mov         eax,dword ptr [eax+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 004997B8    mov         ecx,dword ptr [eax]
 004997BA    call        dword ptr [ecx+0C8];TCheckBox.SetChecked
 004997C0    mov         dl,1
 004997C2    mov         eax,dword ptr [ebp-4C]
 004997C5    mov         eax,dword ptr [eax+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 004997CB    call        TCCalendar.SetVisible
 004997D0    mov         dl,1
 004997D2    mov         ecx,dword ptr [ebp-4C]
 004997D5    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 004997DB    call        TCCalendar.SetVisible
 004997E0    mov         edx,dword ptr [ebp-5C]
 004997E3    mov         ecx,dword ptr [edx+1E]
 004997E6    and         dword ptr [ecx],0FFBFFFFF
 004997EC    mov         eax,dword ptr [ebp-5C]
 004997EF    mov         edx,dword ptr [eax+1E]
 004997F2    and         dword ptr [edx],0FF7FFFFF
 004997F8    mov         ecx,dword ptr [ebp-5C]
 004997FB    mov         eax,dword ptr [ecx+1E]
 004997FE    movzx       edx,word ptr [eax+6]
 00499802    mov         ecx,dword ptr [ebp-54]
 00499805    cmp         edx,ecx
>00499807    jge         00499815
 00499809    mov         eax,dword ptr [ebp-5C]
 0049980C    mov         edx,dword ptr [eax+1E]
 0049980F    or          dword ptr [edx],800000
 00499815    mov         ecx,dword ptr [ebp-5C]
 00499818    mov         eax,dword ptr [ecx+1E]
 0049981B    movzx       edx,word ptr [eax+6]
 0049981F    mov         ecx,dword ptr [ebp-54]
 00499822    cmp         edx,ecx
>00499824    jle         00499832
 00499826    mov         eax,dword ptr [ebp-5C]
 00499829    mov         edx,dword ptr [eax+1E]
 0049982C    or          dword ptr [edx],400000
 00499832    mov         word ptr [ebp-38],44
 00499838    mov         ecx,dword ptr [ebp-5C]
 0049983B    mov         eax,dword ptr [ecx+1E]
 0049983E    mov         dx,word ptr [eax+6]
 00499842    lea         eax,[ebp-20]
 00499845    call        0067DBD0
 0049984A    inc         dword ptr [ebp-2C]
 0049984D    mov         edx,dword ptr [eax]
 0049984F    mov         ecx,dword ptr [ebp-4C]
 00499852    mov         eax,dword ptr [ecx+360];TFEditFunctionDlg_11011981.lRetBytes:TLabel
 00499858    call        TTabPage.SetCaption
 0049985D    dec         dword ptr [ebp-2C]
 00499860    lea         eax,[ebp-20]
 00499863    mov         edx,2
 00499868    call        0067DCA0
 0049986D    mov         word ptr [ebp-38],50
 00499873    lea         eax,[ebp-24]
 00499876    mov         edx,dword ptr [ebp-54]
 00499879    call        0067DC18
 0049987E    inc         dword ptr [ebp-2C]
 00499881    mov         edx,dword ptr [eax]
 00499883    mov         eax,dword ptr [ebp-4C]
 00499886    mov         eax,dword ptr [eax+368];TFEditFunctionDlg_11011981.lArgsBytes:TLabel
 0049988C    call        TTabPage.SetCaption
 00499891    dec         dword ptr [ebp-2C]
 00499894    lea         eax,[ebp-24]
 00499897    mov         edx,2
 0049989C    call        0067DCA0
 004998A1    dec         dword ptr [ebp-2C]
 004998A4    lea         eax,[ebp-4]
 004998A7    mov         edx,2
 004998AC    call        0067DCA0
 004998B1    mov         ecx,dword ptr [ebp-48]
 004998B4    mov         dword ptr fs:[0],ecx
 004998BB    pop         ebx
 004998BC    mov         esp,ebp
 004998BE    pop         ebp
 004998BF    ret
*}
end;

//004998C0
procedure sub_004998C0(?:TFEditFunctionDlg_11011981);
begin
{*
 004998C0    push        ebp
 004998C1    mov         ebp,esp
 004998C3    add         esp,0FFFFFEDC
 004998C9    mov         dword ptr [ebp-0F0],eax
 004998CF    mov         eax,6BCF2C
 004998D4    call        0066FECC
 004998D9    mov         word ptr [ebp-0DC],8
 004998E2    lea         eax,[ebp-4]
 004998E5    call        00401EA8
 004998EA    inc         dword ptr [ebp-0D0]
 004998F0    mov         word ptr [ebp-0DC],14
 004998F9    mov         edx,dword ptr [ebp-0F0]
 004998FF    mov         eax,dword ptr [edx+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 00499905    mov         edx,dword ptr [eax]
 00499907    call        dword ptr [edx+0D4];TCustomListBox.Clear
 0049990D    mov         ecx,dword ptr [ebp-0F0]
 00499913    mov         eax,dword ptr [ecx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 00499919    call        0053A308
 0049991E    mov         dword ptr [ebp-110],eax
 00499924    mov         edx,dword ptr [ebp-110]
 0049992A    mov         ecx,dword ptr [edx+1E]
 0049992D    mov         eax,dword ptr [ecx+10]
 00499930    test        eax,eax
>00499932    je          0049A8E2
 00499938    mov         edx,dword ptr [ebp-0F0]
 0049993E    mov         ecx,dword ptr [edx+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 00499944    mov         eax,dword ptr [ecx+228];TListBox.FCanvas:TCanvas
 0049994A    mov         dword ptr [ebp-10C],eax
 00499950    xor         edx,edx
 00499952    mov         dword ptr [ebp-104],edx
 00499958    mov         ecx,dword ptr [ebp-110]
 0049995E    mov         eax,dword ptr [ecx+1E]
 00499961    mov         edx,dword ptr [eax+10]
 00499964    mov         ecx,dword ptr [edx+8]
 00499967    mov         dword ptr [ebp-0FC],ecx
 0049996D    mov         eax,dword ptr [ebp-110]
 00499973    mov         edx,dword ptr [eax+1E]
 00499976    mov         cl,byte ptr [edx]
 00499978    and         cl,7
 0049997B    mov         byte ptr [ebp-0F1],cl
 00499981    mov         al,byte ptr [ebp-0F1]
 00499987    cmp         al,1
>00499989    je          0049999A
 0049998B    mov         dl,byte ptr [ebp-0F1]
 00499991    cmp         dl,3
>00499994    jne         00499CFD
 0049999A    xor         ecx,ecx
 0049999C    mov         dword ptr [ebp-0F8],ecx
 004999A2    mov         eax,dword ptr [ebp-0F8]
 004999A8    mov         edx,dword ptr [ebp-0FC]
 004999AE    cmp         eax,edx
>004999B0    jge         0049A8C8
 004999B6    mov         ecx,dword ptr [ebp-110]
 004999BC    mov         eax,dword ptr [ecx+1E]
 004999BF    mov         eax,dword ptr [eax+10]
 004999C2    mov         edx,dword ptr [ebp-0F8]
 004999C8    call        TList.Get
 004999CD    mov         dword ptr [ebp-114],eax
 004999D3    mov         word ptr [ebp-0DC],20
 004999DC    lea         eax,[ebp-14]
 004999DF    call        00401EA8
 004999E4    mov         edx,eax
 004999E6    inc         dword ptr [ebp-0D0]
 004999EC    mov         ecx,dword ptr [ebp-114]
 004999F2    mov         eax,dword ptr [ecx+6]
 004999F5    call        00531730
 004999FA    lea         edx,[ebp-14]
 004999FD    push        edx
 004999FE    lea         eax,[ebp-8]
 00499A01    call        00401EA8
 00499A06    mov         edx,eax
 00499A08    inc         dword ptr [ebp-0D0]
 00499A0E    mov         ecx,dword ptr [ebp-114]
 00499A14    mov         eax,dword ptr [ecx+2]
 00499A17    call        005317A4
 00499A1C    lea         edx,[ebp-8]
 00499A1F    push        edx
 00499A20    lea         eax,[ebp-10]
 00499A23    call        00401EA8
 00499A28    push        eax
 00499A29    inc         dword ptr [ebp-0D0]
 00499A2F    mov         edx,6BC253
 00499A34    lea         eax,[ebp-0C]
 00499A37    call        0067DAB4
 00499A3C    inc         dword ptr [ebp-0D0]
 00499A42    lea         edx,[ebp-0C]
 00499A45    pop         ecx
 00499A46    pop         eax
 00499A47    call        0067DCF8
 00499A4C    lea         edx,[ebp-10]
 00499A4F    push        edx
 00499A50    lea         eax,[ebp-18]
 00499A53    call        00401EA8
 00499A58    mov         ecx,eax
 00499A5A    inc         dword ptr [ebp-0D0]
 00499A60    pop         eax
 00499A61    pop         edx
 00499A62    call        0067DCF8
 00499A67    lea         ecx,[ebp-18]
 00499A6A    push        ecx
 00499A6B    lea         eax,[ebp-20]
 00499A6E    call        00401EA8
 00499A73    push        eax
 00499A74    inc         dword ptr [ebp-0D0]
 00499A7A    mov         edx,6BC255
 00499A7F    lea         eax,[ebp-1C]
 00499A82    call        0067DAB4
 00499A87    inc         dword ptr [ebp-0D0]
 00499A8D    lea         edx,[ebp-1C]
 00499A90    pop         ecx
 00499A91    pop         eax
 00499A92    call        0067DCF8
 00499A97    lea         edx,[ebp-20]
 00499A9A    lea         eax,[ebp-4]
 00499A9D    call        0067DCD0
 00499AA2    dec         dword ptr [ebp-0D0]
 00499AA8    lea         eax,[ebp-20]
 00499AAB    mov         edx,2
 00499AB0    call        0067DCA0
 00499AB5    dec         dword ptr [ebp-0D0]
 00499ABB    lea         eax,[ebp-1C]
 00499ABE    mov         edx,2
 00499AC3    call        0067DCA0
 00499AC8    dec         dword ptr [ebp-0D0]
 00499ACE    lea         eax,[ebp-18]
 00499AD1    mov         edx,2
 00499AD6    call        0067DCA0
 00499ADB    dec         dword ptr [ebp-0D0]
 00499AE1    lea         eax,[ebp-14]
 00499AE4    mov         edx,2
 00499AE9    call        0067DCA0
 00499AEE    dec         dword ptr [ebp-0D0]
 00499AF4    lea         eax,[ebp-10]
 00499AF7    mov         edx,2
 00499AFC    call        0067DCA0
 00499B01    dec         dword ptr [ebp-0D0]
 00499B07    lea         eax,[ebp-0C]
 00499B0A    mov         edx,2
 00499B0F    call        0067DCA0
 00499B14    dec         dword ptr [ebp-0D0]
 00499B1A    lea         eax,[ebp-8]
 00499B1D    mov         edx,2
 00499B22    call        0067DCA0
 00499B27    mov         word ptr [ebp-0DC],2C
 00499B30    mov         edx,6BC257
 00499B35    lea         eax,[ebp-24]
 00499B38    call        0067DAB4
 00499B3D    inc         dword ptr [ebp-0D0]
 00499B43    lea         edx,[ebp-24]
 00499B46    mov         eax,dword ptr [ebp-114]
 00499B4C    add         eax,0A
 00499B4F    call        0067DD9C
 00499B54    push        eax
 00499B55    dec         dword ptr [ebp-0D0]
 00499B5B    lea         eax,[ebp-24]
 00499B5E    mov         edx,2
 00499B63    call        0067DCA0
 00499B68    pop         ecx
 00499B69    test        cl,cl
>00499B6B    je          00499B80
 00499B6D    mov         edx,dword ptr [ebp-114]
 00499B73    add         edx,0A
 00499B76    lea         eax,[ebp-4]
 00499B79    call        0067DCE4
>00499B7E    jmp         00499BBA
 00499B80    mov         word ptr [ebp-0DC],38
 00499B89    mov         edx,6BC258
 00499B8E    lea         eax,[ebp-28]
 00499B91    call        0067DAB4
 00499B96    inc         dword ptr [ebp-0D0]
 00499B9C    lea         edx,[ebp-28]
 00499B9F    lea         eax,[ebp-4]
 00499BA2    call        0067DCE4
 00499BA7    dec         dword ptr [ebp-0D0]
 00499BAD    lea         eax,[ebp-28]
 00499BB0    mov         edx,2
 00499BB5    call        0067DCA0
 00499BBA    mov         word ptr [ebp-0DC],44
 00499BC3    mov         edx,6BC25A
 00499BC8    lea         eax,[ebp-2C]
 00499BCB    call        0067DAB4
 00499BD0    inc         dword ptr [ebp-0D0]
 00499BD6    lea         edx,[ebp-2C]
 00499BD9    lea         eax,[ebp-4]
 00499BDC    call        0067DCE4
 00499BE1    dec         dword ptr [ebp-0D0]
 00499BE7    lea         eax,[ebp-2C]
 00499BEA    mov         edx,2
 00499BEF    call        0067DCA0
 00499BF4    mov         word ptr [ebp-0DC],50
 00499BFD    mov         edx,6BC25C
 00499C02    lea         eax,[ebp-30]
 00499C05    call        0067DAB4
 00499C0A    inc         dword ptr [ebp-0D0]
 00499C10    lea         edx,[ebp-30]
 00499C13    mov         eax,dword ptr [ebp-114]
 00499C19    add         eax,0E
 00499C1C    call        0067DD9C
 00499C21    push        eax
 00499C22    dec         dword ptr [ebp-0D0]
 00499C28    lea         eax,[ebp-30]
 00499C2B    mov         edx,2
 00499C30    call        0067DCA0
 00499C35    pop         ecx
 00499C36    test        cl,cl
>00499C38    je          00499C4D
 00499C3A    mov         edx,dword ptr [ebp-114]
 00499C40    add         edx,0E
 00499C43    lea         eax,[ebp-4]
 00499C46    call        0067DCE4
>00499C4B    jmp         00499C87
 00499C4D    mov         word ptr [ebp-0DC],5C
 00499C56    mov         edx,6BC25D
 00499C5B    lea         eax,[ebp-34]
 00499C5E    call        0067DAB4
 00499C63    inc         dword ptr [ebp-0D0]
 00499C69    lea         edx,[ebp-34]
 00499C6C    lea         eax,[ebp-4]
 00499C6F    call        0067DCE4
 00499C74    dec         dword ptr [ebp-0D0]
 00499C7A    lea         eax,[ebp-34]
 00499C7D    mov         edx,2
 00499C82    call        0067DCA0
 00499C87    mov         edx,dword ptr [ebp-4]
 00499C8A    mov         eax,dword ptr [ebp-10C]
 00499C90    call        005C1754
 00499C95    mov         dword ptr [ebp-100],eax
 00499C9B    mov         ecx,dword ptr [ebp-100]
 00499CA1    mov         eax,dword ptr [ebp-104]
 00499CA7    cmp         ecx,eax
>00499CA9    jle         00499CB7
 00499CAB    mov         edx,dword ptr [ebp-100]
 00499CB1    mov         dword ptr [ebp-104],edx
 00499CB7    mov         ecx,dword ptr [ebp-0F0]
 00499CBD    mov         eax,dword ptr [ecx+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 00499CC3    add         eax,218;TListBox.FItems:TStrings
 00499CC8    mov         dword ptr [ebp-118],eax
 00499CCE    mov         edx,dword ptr [ebp-118]
 00499CD4    mov         eax,dword ptr [edx]
 00499CD6    mov         edx,dword ptr [ebp-4]
 00499CD9    mov         ecx,dword ptr [eax]
 00499CDB    call        dword ptr [ecx+38]
 00499CDE    inc         dword ptr [ebp-0F8]
 00499CE4    mov         eax,dword ptr [ebp-0F8]
 00499CEA    mov         edx,dword ptr [ebp-0FC]
 00499CF0    cmp         eax,edx
>00499CF2    jl          004999B6
>00499CF8    jmp         0049A8C8
 00499CFD    mov         cl,byte ptr [ebp-0F1]
 00499D03    cmp         cl,2
>00499D06    jne         0049A068
 00499D0C    mov         eax,dword ptr [ebp-0FC]
 00499D12    dec         eax
 00499D13    mov         dword ptr [ebp-0F8],eax
 00499D19    mov         edx,dword ptr [ebp-0F8]
 00499D1F    test        edx,edx
>00499D21    jl          0049A8C8
 00499D27    mov         ecx,dword ptr [ebp-110]
 00499D2D    mov         eax,dword ptr [ecx+1E]
 00499D30    mov         eax,dword ptr [eax+10]
 00499D33    mov         edx,dword ptr [ebp-0F8]
 00499D39    call        TList.Get
 00499D3E    mov         dword ptr [ebp-114],eax
 00499D44    mov         word ptr [ebp-0DC],68
 00499D4D    lea         eax,[ebp-44]
 00499D50    call        00401EA8
 00499D55    mov         edx,eax
 00499D57    inc         dword ptr [ebp-0D0]
 00499D5D    mov         ecx,dword ptr [ebp-114]
 00499D63    mov         eax,dword ptr [ecx+6]
 00499D66    call        00531730
 00499D6B    lea         edx,[ebp-44]
 00499D6E    push        edx
 00499D6F    lea         eax,[ebp-38]
 00499D72    call        00401EA8
 00499D77    mov         edx,eax
 00499D79    inc         dword ptr [ebp-0D0]
 00499D7F    mov         ecx,dword ptr [ebp-114]
 00499D85    mov         eax,dword ptr [ecx+2]
 00499D88    call        005317A4
 00499D8D    lea         edx,[ebp-38]
 00499D90    push        edx
 00499D91    lea         eax,[ebp-40]
 00499D94    call        00401EA8
 00499D99    push        eax
 00499D9A    inc         dword ptr [ebp-0D0]
 00499DA0    mov         edx,6BC25F
 00499DA5    lea         eax,[ebp-3C]
 00499DA8    call        0067DAB4
 00499DAD    inc         dword ptr [ebp-0D0]
 00499DB3    lea         edx,[ebp-3C]
 00499DB6    pop         ecx
 00499DB7    pop         eax
 00499DB8    call        0067DCF8
 00499DBD    lea         edx,[ebp-40]
 00499DC0    push        edx
 00499DC1    lea         eax,[ebp-48]
 00499DC4    call        00401EA8
 00499DC9    mov         ecx,eax
 00499DCB    inc         dword ptr [ebp-0D0]
 00499DD1    pop         eax
 00499DD2    pop         edx
 00499DD3    call        0067DCF8
 00499DD8    lea         ecx,[ebp-48]
 00499DDB    push        ecx
 00499DDC    lea         eax,[ebp-50]
 00499DDF    call        00401EA8
 00499DE4    push        eax
 00499DE5    inc         dword ptr [ebp-0D0]
 00499DEB    mov         edx,6BC261
 00499DF0    lea         eax,[ebp-4C]
 00499DF3    call        0067DAB4
 00499DF8    inc         dword ptr [ebp-0D0]
 00499DFE    lea         edx,[ebp-4C]
 00499E01    pop         ecx
 00499E02    pop         eax
 00499E03    call        0067DCF8
 00499E08    lea         edx,[ebp-50]
 00499E0B    lea         eax,[ebp-4]
 00499E0E    call        0067DCD0
 00499E13    dec         dword ptr [ebp-0D0]
 00499E19    lea         eax,[ebp-50]
 00499E1C    mov         edx,2
 00499E21    call        0067DCA0
 00499E26    dec         dword ptr [ebp-0D0]
 00499E2C    lea         eax,[ebp-4C]
 00499E2F    mov         edx,2
 00499E34    call        0067DCA0
 00499E39    dec         dword ptr [ebp-0D0]
 00499E3F    lea         eax,[ebp-48]
 00499E42    mov         edx,2
 00499E47    call        0067DCA0
 00499E4C    dec         dword ptr [ebp-0D0]
 00499E52    lea         eax,[ebp-44]
 00499E55    mov         edx,2
 00499E5A    call        0067DCA0
 00499E5F    dec         dword ptr [ebp-0D0]
 00499E65    lea         eax,[ebp-40]
 00499E68    mov         edx,2
 00499E6D    call        0067DCA0
 00499E72    dec         dword ptr [ebp-0D0]
 00499E78    lea         eax,[ebp-3C]
 00499E7B    mov         edx,2
 00499E80    call        0067DCA0
 00499E85    dec         dword ptr [ebp-0D0]
 00499E8B    lea         eax,[ebp-38]
 00499E8E    mov         edx,2
 00499E93    call        0067DCA0
 00499E98    mov         word ptr [ebp-0DC],74
 00499EA1    mov         edx,6BC263
 00499EA6    lea         eax,[ebp-54]
 00499EA9    call        0067DAB4
 00499EAE    inc         dword ptr [ebp-0D0]
 00499EB4    lea         edx,[ebp-54]
 00499EB7    mov         eax,dword ptr [ebp-114]
 00499EBD    add         eax,0A
 00499EC0    call        0067DD9C
 00499EC5    push        eax
 00499EC6    dec         dword ptr [ebp-0D0]
 00499ECC    lea         eax,[ebp-54]
 00499ECF    mov         edx,2
 00499ED4    call        0067DCA0
 00499ED9    pop         ecx
 00499EDA    test        cl,cl
>00499EDC    je          00499EF1
 00499EDE    mov         edx,dword ptr [ebp-114]
 00499EE4    add         edx,0A
 00499EE7    lea         eax,[ebp-4]
 00499EEA    call        0067DCE4
>00499EEF    jmp         00499F2B
 00499EF1    mov         word ptr [ebp-0DC],80
 00499EFA    mov         edx,6BC264
 00499EFF    lea         eax,[ebp-58]
 00499F02    call        0067DAB4
 00499F07    inc         dword ptr [ebp-0D0]
 00499F0D    lea         edx,[ebp-58]
 00499F10    lea         eax,[ebp-4]
 00499F13    call        0067DCE4
 00499F18    dec         dword ptr [ebp-0D0]
 00499F1E    lea         eax,[ebp-58]
 00499F21    mov         edx,2
 00499F26    call        0067DCA0
 00499F2B    mov         word ptr [ebp-0DC],8C
 00499F34    mov         edx,6BC266
 00499F39    lea         eax,[ebp-5C]
 00499F3C    call        0067DAB4
 00499F41    inc         dword ptr [ebp-0D0]
 00499F47    lea         edx,[ebp-5C]
 00499F4A    lea         eax,[ebp-4]
 00499F4D    call        0067DCE4
 00499F52    dec         dword ptr [ebp-0D0]
 00499F58    lea         eax,[ebp-5C]
 00499F5B    mov         edx,2
 00499F60    call        0067DCA0
 00499F65    mov         word ptr [ebp-0DC],98
 00499F6E    mov         edx,6BC268
 00499F73    lea         eax,[ebp-60]
 00499F76    call        0067DAB4
 00499F7B    inc         dword ptr [ebp-0D0]
 00499F81    lea         edx,[ebp-60]
 00499F84    mov         eax,dword ptr [ebp-114]
 00499F8A    add         eax,0E
 00499F8D    call        0067DD9C
 00499F92    push        eax
 00499F93    dec         dword ptr [ebp-0D0]
 00499F99    lea         eax,[ebp-60]
 00499F9C    mov         edx,2
 00499FA1    call        0067DCA0
 00499FA6    pop         ecx
 00499FA7    test        cl,cl
>00499FA9    je          00499FBE
 00499FAB    mov         edx,dword ptr [ebp-114]
 00499FB1    add         edx,0E
 00499FB4    lea         eax,[ebp-4]
 00499FB7    call        0067DCE4
>00499FBC    jmp         00499FF8
 00499FBE    mov         word ptr [ebp-0DC],0A4
 00499FC7    mov         edx,6BC269
 00499FCC    lea         eax,[ebp-64]
 00499FCF    call        0067DAB4
 00499FD4    inc         dword ptr [ebp-0D0]
 00499FDA    lea         edx,[ebp-64]
 00499FDD    lea         eax,[ebp-4]
 00499FE0    call        0067DCE4
 00499FE5    dec         dword ptr [ebp-0D0]
 00499FEB    lea         eax,[ebp-64]
 00499FEE    mov         edx,2
 00499FF3    call        0067DCA0
 00499FF8    mov         edx,dword ptr [ebp-4]
 00499FFB    mov         eax,dword ptr [ebp-10C]
 0049A001    call        005C1754
 0049A006    mov         dword ptr [ebp-100],eax
 0049A00C    mov         ecx,dword ptr [ebp-100]
 0049A012    mov         eax,dword ptr [ebp-104]
 0049A018    cmp         ecx,eax
>0049A01A    jle         0049A028
 0049A01C    mov         edx,dword ptr [ebp-100]
 0049A022    mov         dword ptr [ebp-104],edx
 0049A028    mov         ecx,dword ptr [ebp-0F0]
 0049A02E    mov         eax,dword ptr [ecx+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 0049A034    add         eax,218;TListBox.FItems:TStrings
 0049A039    mov         dword ptr [ebp-11C],eax
 0049A03F    mov         edx,dword ptr [ebp-11C]
 0049A045    mov         eax,dword ptr [edx]
 0049A047    mov         edx,dword ptr [ebp-4]
 0049A04A    mov         ecx,dword ptr [eax]
 0049A04C    call        dword ptr [ecx+38]
 0049A04F    dec         dword ptr [ebp-0F8]
 0049A055    mov         eax,dword ptr [ebp-0F8]
 0049A05B    test        eax,eax
>0049A05D    jge         00499D27
>0049A063    jmp         0049A8C8
 0049A068    mov         edx,dword ptr [ebp-110]
 0049A06E    mov         ecx,dword ptr [edx+1E]
 0049A071    movzx       eax,word ptr [ecx+4]
 0049A075    mov         dword ptr [ebp-108],eax
 0049A07B    xor         edx,edx
 0049A07D    mov         dword ptr [ebp-0F8],edx
 0049A083    mov         ecx,dword ptr [ebp-0F8]
 0049A089    mov         eax,dword ptr [ebp-0FC]
 0049A08F    cmp         ecx,eax
>0049A091    jge         0049A491
 0049A097    mov         edx,dword ptr [ebp-110]
 0049A09D    mov         ecx,dword ptr [edx+1E]
 0049A0A0    mov         eax,dword ptr [ecx+10]
 0049A0A3    mov         edx,dword ptr [ebp-0F8]
 0049A0A9    call        TList.Get
 0049A0AE    mov         dword ptr [ebp-114],eax
 0049A0B4    mov         ecx,dword ptr [ebp-114]
 0049A0BA    mov         eax,dword ptr [ecx+2]
 0049A0BD    cmp         eax,2
>0049A0C0    jle         0049A0D6
 0049A0C2    mov         edx,dword ptr [ebp-114]
 0049A0C8    mov         ecx,dword ptr [edx+6]
 0049A0CB    add         dword ptr [ebp-108],ecx
>0049A0D1    jmp         0049A477
 0049A0D6    mov         eax,dword ptr [ebp-114]
 0049A0DC    mov         edx,dword ptr [eax+2]
 0049A0DF    test        edx,edx
>0049A0E1    jne         0049A122
 0049A0E3    mov         word ptr [ebp-0DC],0B0
 0049A0EC    mov         edx,6BC26B
 0049A0F1    lea         eax,[ebp-68]
 0049A0F4    call        0067DAB4
 0049A0F9    inc         dword ptr [ebp-0D0]
 0049A0FF    lea         edx,[ebp-68]
 0049A102    lea         eax,[ebp-4]
 0049A105    call        0067DCD0
 0049A10A    dec         dword ptr [ebp-0D0]
 0049A110    lea         eax,[ebp-68]
 0049A113    mov         edx,2
 0049A118    call        0067DCA0
>0049A11D    jmp         0049A1B2
 0049A122    mov         ecx,dword ptr [ebp-114]
 0049A128    mov         eax,dword ptr [ecx+2]
 0049A12B    dec         eax
>0049A12C    jne         0049A16A
 0049A12E    mov         word ptr [ebp-0DC],0BC
 0049A137    mov         edx,6BC271
 0049A13C    lea         eax,[ebp-6C]
 0049A13F    call        0067DAB4
 0049A144    inc         dword ptr [ebp-0D0]
 0049A14A    lea         edx,[ebp-6C]
 0049A14D    lea         eax,[ebp-4]
 0049A150    call        0067DCD0
 0049A155    dec         dword ptr [ebp-0D0]
 0049A15B    lea         eax,[ebp-6C]
 0049A15E    mov         edx,2
 0049A163    call        0067DCA0
>0049A168    jmp         0049A1B2
 0049A16A    mov         ecx,dword ptr [ebp-114]
 0049A170    mov         eax,dword ptr [ecx+2]
 0049A173    cmp         eax,2
>0049A176    jne         0049A1B2
 0049A178    mov         word ptr [ebp-0DC],0C8
 0049A181    mov         edx,6BC277
 0049A186    lea         eax,[ebp-70]
 0049A189    call        0067DAB4
 0049A18E    inc         dword ptr [ebp-0D0]
 0049A194    lea         edx,[ebp-70]
 0049A197    lea         eax,[ebp-4]
 0049A19A    call        0067DCD0
 0049A19F    dec         dword ptr [ebp-0D0]
 0049A1A5    lea         eax,[ebp-70]
 0049A1A8    mov         edx,2
 0049A1AD    call        0067DCA0
 0049A1B2    mov         word ptr [ebp-0DC],0D4
 0049A1BB    lea         eax,[ebp-74]
 0049A1BE    call        00401EA8
 0049A1C3    mov         edx,eax
 0049A1C5    inc         dword ptr [ebp-0D0]
 0049A1CB    mov         ecx,dword ptr [ebp-114]
 0049A1D1    mov         eax,dword ptr [ecx+6]
 0049A1D4    call        00531730
 0049A1D9    lea         edx,[ebp-74]
 0049A1DC    push        edx
 0049A1DD    lea         eax,[ebp-7C]
 0049A1E0    call        00401EA8
 0049A1E5    push        eax
 0049A1E6    inc         dword ptr [ebp-0D0]
 0049A1EC    mov         edx,6BC27D
 0049A1F1    lea         eax,[ebp-78]
 0049A1F4    call        0067DAB4
 0049A1F9    inc         dword ptr [ebp-0D0]
 0049A1FF    lea         edx,[ebp-78]
 0049A202    pop         ecx
 0049A203    pop         eax
 0049A204    call        0067DCF8
 0049A209    lea         edx,[ebp-7C]
 0049A20C    lea         eax,[ebp-4]
 0049A20F    call        0067DCE4
 0049A214    dec         dword ptr [ebp-0D0]
 0049A21A    lea         eax,[ebp-7C]
 0049A21D    mov         edx,2
 0049A222    call        0067DCA0
 0049A227    dec         dword ptr [ebp-0D0]
 0049A22D    lea         eax,[ebp-78]
 0049A230    mov         edx,2
 0049A235    call        0067DCA0
 0049A23A    dec         dword ptr [ebp-0D0]
 0049A240    lea         eax,[ebp-74]
 0049A243    mov         edx,2
 0049A248    call        0067DCA0
 0049A24D    mov         ecx,dword ptr [ebp-114]
 0049A253    mov         al,byte ptr [ecx]
 0049A255    cmp         al,22
>0049A257    jne         0049A293
 0049A259    mov         word ptr [ebp-0DC],0E0
 0049A262    mov         edx,6BC27F
 0049A267    lea         eax,[ebp-80]
 0049A26A    call        0067DAB4
 0049A26F    inc         dword ptr [ebp-0D0]
 0049A275    lea         edx,[ebp-80]
 0049A278    lea         eax,[ebp-4]
 0049A27B    call        0067DCE4
 0049A280    dec         dword ptr [ebp-0D0]
 0049A286    lea         eax,[ebp-80]
 0049A289    mov         edx,2
 0049A28E    call        0067DCA0
 0049A293    mov         word ptr [ebp-0DC],0EC
 0049A29C    mov         edx,6BC284
 0049A2A1    lea         eax,[ebp-84]
 0049A2A7    call        0067DAB4
 0049A2AC    inc         dword ptr [ebp-0D0]
 0049A2B2    lea         edx,[ebp-84]
 0049A2B8    mov         eax,dword ptr [ebp-114]
 0049A2BE    add         eax,0A
 0049A2C1    call        0067DD9C
 0049A2C6    push        eax
 0049A2C7    dec         dword ptr [ebp-0D0]
 0049A2CD    lea         eax,[ebp-84]
 0049A2D3    mov         edx,2
 0049A2D8    call        0067DCA0
 0049A2DD    pop         ecx
 0049A2DE    test        cl,cl
>0049A2E0    je          0049A2F5
 0049A2E2    mov         edx,dword ptr [ebp-114]
 0049A2E8    add         edx,0A
 0049A2EB    lea         eax,[ebp-4]
 0049A2EE    call        0067DCE4
>0049A2F3    jmp         0049A338
 0049A2F5    mov         word ptr [ebp-0DC],0F8
 0049A2FE    mov         edx,6BC285
 0049A303    lea         eax,[ebp-88]
 0049A309    call        0067DAB4
 0049A30E    inc         dword ptr [ebp-0D0]
 0049A314    lea         edx,[ebp-88]
 0049A31A    lea         eax,[ebp-4]
 0049A31D    call        0067DCE4
 0049A322    dec         dword ptr [ebp-0D0]
 0049A328    lea         eax,[ebp-88]
 0049A32E    mov         edx,2
 0049A333    call        0067DCA0
 0049A338    mov         word ptr [ebp-0DC],104
 0049A341    mov         edx,6BC287
 0049A346    lea         eax,[ebp-8C]
 0049A34C    call        0067DAB4
 0049A351    inc         dword ptr [ebp-0D0]
 0049A357    lea         edx,[ebp-8C]
 0049A35D    lea         eax,[ebp-4]
 0049A360    call        0067DCE4
 0049A365    dec         dword ptr [ebp-0D0]
 0049A36B    lea         eax,[ebp-8C]
 0049A371    mov         edx,2
 0049A376    call        0067DCA0
 0049A37B    mov         word ptr [ebp-0DC],110
 0049A384    mov         edx,6BC289
 0049A389    lea         eax,[ebp-90]
 0049A38F    call        0067DAB4
 0049A394    inc         dword ptr [ebp-0D0]
 0049A39A    lea         edx,[ebp-90]
 0049A3A0    mov         eax,dword ptr [ebp-114]
 0049A3A6    add         eax,0E
 0049A3A9    call        0067DD9C
 0049A3AE    push        eax
 0049A3AF    dec         dword ptr [ebp-0D0]
 0049A3B5    lea         eax,[ebp-90]
 0049A3BB    mov         edx,2
 0049A3C0    call        0067DCA0
 0049A3C5    pop         ecx
 0049A3C6    test        cl,cl
>0049A3C8    je          0049A3DD
 0049A3CA    mov         edx,dword ptr [ebp-114]
 0049A3D0    add         edx,0E
 0049A3D3    lea         eax,[ebp-4]
 0049A3D6    call        0067DCE4
>0049A3DB    jmp         0049A420
 0049A3DD    mov         word ptr [ebp-0DC],11C
 0049A3E6    mov         edx,6BC28A
 0049A3EB    lea         eax,[ebp-94]
 0049A3F1    call        0067DAB4
 0049A3F6    inc         dword ptr [ebp-0D0]
 0049A3FC    lea         edx,[ebp-94]
 0049A402    lea         eax,[ebp-4]
 0049A405    call        0067DCE4
 0049A40A    dec         dword ptr [ebp-0D0]
 0049A410    lea         eax,[ebp-94]
 0049A416    mov         edx,2
 0049A41B    call        0067DCA0
 0049A420    mov         edx,dword ptr [ebp-4]
 0049A423    mov         eax,dword ptr [ebp-10C]
 0049A429    call        005C1754
 0049A42E    mov         dword ptr [ebp-100],eax
 0049A434    mov         ecx,dword ptr [ebp-100]
 0049A43A    mov         eax,dword ptr [ebp-104]
 0049A440    cmp         ecx,eax
>0049A442    jle         0049A450
 0049A444    mov         edx,dword ptr [ebp-100]
 0049A44A    mov         dword ptr [ebp-104],edx
 0049A450    mov         ecx,dword ptr [ebp-0F0]
 0049A456    mov         eax,dword ptr [ecx+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 0049A45C    add         eax,218;TListBox.FItems:TStrings
 0049A461    mov         dword ptr [ebp-120],eax
 0049A467    mov         edx,dword ptr [ebp-120]
 0049A46D    mov         eax,dword ptr [edx]
 0049A46F    mov         edx,dword ptr [ebp-4]
 0049A472    mov         ecx,dword ptr [eax]
 0049A474    call        dword ptr [ecx+38]
 0049A477    inc         dword ptr [ebp-0F8]
 0049A47D    mov         eax,dword ptr [ebp-0F8]
 0049A483    mov         edx,dword ptr [ebp-0FC]
 0049A489    cmp         eax,edx
>0049A48B    jl          0049A097
 0049A491    xor         ecx,ecx
 0049A493    mov         dword ptr [ebp-0F8],ecx
 0049A499    mov         eax,dword ptr [ebp-0F8]
 0049A49F    mov         edx,dword ptr [ebp-0FC]
 0049A4A5    cmp         eax,edx
>0049A4A7    jge         0049A8C8
 0049A4AD    mov         ecx,dword ptr [ebp-110]
 0049A4B3    mov         eax,dword ptr [ecx+1E]
 0049A4B6    mov         eax,dword ptr [eax+10]
 0049A4B9    mov         edx,dword ptr [ebp-0F8]
 0049A4BF    call        TList.Get
 0049A4C4    mov         dword ptr [ebp-114],eax
 0049A4CA    mov         ecx,dword ptr [ebp-114]
 0049A4D0    mov         eax,dword ptr [ecx+2]
 0049A4D3    cmp         eax,2
>0049A4D6    jle         0049A8AE
 0049A4DC    mov         edx,dword ptr [ebp-114]
 0049A4E2    mov         ecx,dword ptr [edx+6]
 0049A4E5    sub         dword ptr [ebp-108],ecx
 0049A4EB    mov         word ptr [ebp-0DC],128
 0049A4F4    lea         eax,[ebp-0A4]
 0049A4FA    call        00401EA8
 0049A4FF    mov         edx,eax
 0049A501    inc         dword ptr [ebp-0D0]
 0049A507    mov         ecx,dword ptr [ebp-114]
 0049A50D    mov         eax,dword ptr [ecx+6]
 0049A510    call        00531730
 0049A515    lea         edx,[ebp-0A4]
 0049A51B    push        edx
 0049A51C    lea         eax,[ebp-98]
 0049A522    call        00401EA8
 0049A527    mov         edx,eax
 0049A529    inc         dword ptr [ebp-0D0]
 0049A52F    mov         eax,dword ptr [ebp-108]
 0049A535    call        005317A4
 0049A53A    lea         edx,[ebp-98]
 0049A540    push        edx
 0049A541    lea         eax,[ebp-0A0]
 0049A547    call        00401EA8
 0049A54C    push        eax
 0049A54D    inc         dword ptr [ebp-0D0]
 0049A553    mov         edx,6BC28C
 0049A558    lea         eax,[ebp-9C]
 0049A55E    call        0067DAB4
 0049A563    inc         dword ptr [ebp-0D0]
 0049A569    lea         edx,[ebp-9C]
 0049A56F    pop         ecx
 0049A570    pop         eax
 0049A571    call        0067DCF8
 0049A576    lea         edx,[ebp-0A0]
 0049A57C    push        edx
 0049A57D    lea         eax,[ebp-0A8]
 0049A583    call        00401EA8
 0049A588    mov         ecx,eax
 0049A58A    inc         dword ptr [ebp-0D0]
 0049A590    pop         eax
 0049A591    pop         edx
 0049A592    call        0067DCF8
 0049A597    lea         ecx,[ebp-0A8]
 0049A59D    push        ecx
 0049A59E    lea         eax,[ebp-0B0]
 0049A5A4    call        00401EA8
 0049A5A9    push        eax
 0049A5AA    inc         dword ptr [ebp-0D0]
 0049A5B0    mov         edx,6BC28E
 0049A5B5    lea         eax,[ebp-0AC]
 0049A5BB    call        0067DAB4
 0049A5C0    inc         dword ptr [ebp-0D0]
 0049A5C6    lea         edx,[ebp-0AC]
 0049A5CC    pop         ecx
 0049A5CD    pop         eax
 0049A5CE    call        0067DCF8
 0049A5D3    lea         edx,[ebp-0B0]
 0049A5D9    lea         eax,[ebp-4]
 0049A5DC    call        0067DCD0
 0049A5E1    dec         dword ptr [ebp-0D0]
 0049A5E7    lea         eax,[ebp-0B0]
 0049A5ED    mov         edx,2
 0049A5F2    call        0067DCA0
 0049A5F7    dec         dword ptr [ebp-0D0]
 0049A5FD    lea         eax,[ebp-0AC]
 0049A603    mov         edx,2
 0049A608    call        0067DCA0
 0049A60D    dec         dword ptr [ebp-0D0]
 0049A613    lea         eax,[ebp-0A8]
 0049A619    mov         edx,2
 0049A61E    call        0067DCA0
 0049A623    dec         dword ptr [ebp-0D0]
 0049A629    lea         eax,[ebp-0A4]
 0049A62F    mov         edx,2
 0049A634    call        0067DCA0
 0049A639    dec         dword ptr [ebp-0D0]
 0049A63F    lea         eax,[ebp-0A0]
 0049A645    mov         edx,2
 0049A64A    call        0067DCA0
 0049A64F    dec         dword ptr [ebp-0D0]
 0049A655    lea         eax,[ebp-9C]
 0049A65B    mov         edx,2
 0049A660    call        0067DCA0
 0049A665    dec         dword ptr [ebp-0D0]
 0049A66B    lea         eax,[ebp-98]
 0049A671    mov         edx,2
 0049A676    call        0067DCA0
 0049A67B    mov         ecx,dword ptr [ebp-114]
 0049A681    mov         al,byte ptr [ecx]
 0049A683    cmp         al,22
>0049A685    jne         0049A6CA
 0049A687    mov         word ptr [ebp-0DC],134
 0049A690    mov         edx,6BC290
 0049A695    lea         eax,[ebp-0B4]
 0049A69B    call        0067DAB4
 0049A6A0    inc         dword ptr [ebp-0D0]
 0049A6A6    lea         edx,[ebp-0B4]
 0049A6AC    lea         eax,[ebp-4]
 0049A6AF    call        0067DCE4
 0049A6B4    dec         dword ptr [ebp-0D0]
 0049A6BA    lea         eax,[ebp-0B4]
 0049A6C0    mov         edx,2
 0049A6C5    call        0067DCA0
 0049A6CA    mov         word ptr [ebp-0DC],140
 0049A6D3    mov         edx,6BC295
 0049A6D8    lea         eax,[ebp-0B8]
 0049A6DE    call        0067DAB4
 0049A6E3    inc         dword ptr [ebp-0D0]
 0049A6E9    lea         edx,[ebp-0B8]
 0049A6EF    mov         eax,dword ptr [ebp-114]
 0049A6F5    add         eax,0A
 0049A6F8    call        0067DD9C
 0049A6FD    push        eax
 0049A6FE    dec         dword ptr [ebp-0D0]
 0049A704    lea         eax,[ebp-0B8]
 0049A70A    mov         edx,2
 0049A70F    call        0067DCA0
 0049A714    pop         ecx
 0049A715    test        cl,cl
>0049A717    je          0049A72C
 0049A719    mov         edx,dword ptr [ebp-114]
 0049A71F    add         edx,0A
 0049A722    lea         eax,[ebp-4]
 0049A725    call        0067DCE4
>0049A72A    jmp         0049A76F
 0049A72C    mov         word ptr [ebp-0DC],14C
 0049A735    mov         edx,6BC296
 0049A73A    lea         eax,[ebp-0BC]
 0049A740    call        0067DAB4
 0049A745    inc         dword ptr [ebp-0D0]
 0049A74B    lea         edx,[ebp-0BC]
 0049A751    lea         eax,[ebp-4]
 0049A754    call        0067DCE4
 0049A759    dec         dword ptr [ebp-0D0]
 0049A75F    lea         eax,[ebp-0BC]
 0049A765    mov         edx,2
 0049A76A    call        0067DCA0
 0049A76F    mov         word ptr [ebp-0DC],158
 0049A778    mov         edx,6BC298
 0049A77D    lea         eax,[ebp-0C0]
 0049A783    call        0067DAB4
 0049A788    inc         dword ptr [ebp-0D0]
 0049A78E    lea         edx,[ebp-0C0]
 0049A794    lea         eax,[ebp-4]
 0049A797    call        0067DCE4
 0049A79C    dec         dword ptr [ebp-0D0]
 0049A7A2    lea         eax,[ebp-0C0]
 0049A7A8    mov         edx,2
 0049A7AD    call        0067DCA0
 0049A7B2    mov         word ptr [ebp-0DC],164
 0049A7BB    mov         edx,6BC29A
 0049A7C0    lea         eax,[ebp-0C4]
 0049A7C6    call        0067DAB4
 0049A7CB    inc         dword ptr [ebp-0D0]
 0049A7D1    lea         edx,[ebp-0C4]
 0049A7D7    mov         eax,dword ptr [ebp-114]
 0049A7DD    add         eax,0E
 0049A7E0    call        0067DD9C
 0049A7E5    push        eax
 0049A7E6    dec         dword ptr [ebp-0D0]
 0049A7EC    lea         eax,[ebp-0C4]
 0049A7F2    mov         edx,2
 0049A7F7    call        0067DCA0
 0049A7FC    pop         ecx
 0049A7FD    test        cl,cl
>0049A7FF    je          0049A814
 0049A801    mov         edx,dword ptr [ebp-114]
 0049A807    add         edx,0E
 0049A80A    lea         eax,[ebp-4]
 0049A80D    call        0067DCE4
>0049A812    jmp         0049A857
 0049A814    mov         word ptr [ebp-0DC],170
 0049A81D    mov         edx,6BC29B
 0049A822    lea         eax,[ebp-0C8]
 0049A828    call        0067DAB4
 0049A82D    inc         dword ptr [ebp-0D0]
 0049A833    lea         edx,[ebp-0C8]
 0049A839    lea         eax,[ebp-4]
 0049A83C    call        0067DCE4
 0049A841    dec         dword ptr [ebp-0D0]
 0049A847    lea         eax,[ebp-0C8]
 0049A84D    mov         edx,2
 0049A852    call        0067DCA0
 0049A857    mov         edx,dword ptr [ebp-4]
 0049A85A    mov         eax,dword ptr [ebp-10C]
 0049A860    call        005C1754
 0049A865    mov         dword ptr [ebp-100],eax
 0049A86B    mov         ecx,dword ptr [ebp-100]
 0049A871    mov         eax,dword ptr [ebp-104]
 0049A877    cmp         ecx,eax
>0049A879    jle         0049A887
 0049A87B    mov         edx,dword ptr [ebp-100]
 0049A881    mov         dword ptr [ebp-104],edx
 0049A887    mov         ecx,dword ptr [ebp-0F0]
 0049A88D    mov         eax,dword ptr [ecx+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 0049A893    add         eax,218;TListBox.FItems:TStrings
 0049A898    mov         dword ptr [ebp-124],eax
 0049A89E    mov         edx,dword ptr [ebp-124]
 0049A8A4    mov         eax,dword ptr [edx]
 0049A8A6    mov         edx,dword ptr [ebp-4]
 0049A8A9    mov         ecx,dword ptr [eax]
 0049A8AB    call        dword ptr [ecx+38]
 0049A8AE    inc         dword ptr [ebp-0F8]
 0049A8B4    mov         eax,dword ptr [ebp-0F8]
 0049A8BA    mov         edx,dword ptr [ebp-0FC]
 0049A8C0    cmp         eax,edx
>0049A8C2    jl          0049A4AD
 0049A8C8    mov         edx,dword ptr [ebp-104]
 0049A8CE    add         edx,2
 0049A8D1    mov         eax,dword ptr [ebp-0F0]
 0049A8D7    mov         eax,dword ptr [eax+308];TFEditFunctionDlg_11011981.lbArgs:TListBox
 0049A8DD    call        TListBox.SetScrollWidth
 0049A8E2    dec         dword ptr [ebp-0D0]
 0049A8E8    lea         eax,[ebp-4]
 0049A8EB    mov         edx,2
 0049A8F0    call        0067DCA0
 0049A8F5    mov         ecx,dword ptr [ebp-0EC]
 0049A8FB    mov         dword ptr fs:[0],ecx
 0049A902    mov         esp,ebp
 0049A904    pop         ebp
 0049A905    ret
*}
end;

//0049A908
procedure sub_0049A908(?:TFEditFunctionDlg_11011981);
begin
{*
 0049A908    push        ebp
 0049A909    mov         ebp,esp
 0049A90B    add         esp,0FFFFFF88
 0049A90E    mov         dword ptr [ebp-5C],eax
 0049A911    mov         eax,6BD170
 0049A916    call        0066FECC
 0049A91B    mov         word ptr [ebp-48],8
 0049A921    lea         eax,[ebp-4]
 0049A924    call        00401EA8
 0049A929    inc         dword ptr [ebp-3C]
 0049A92C    mov         word ptr [ebp-48],14
 0049A932    mov         edx,dword ptr [ebp-5C]
 0049A935    mov         eax,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049A93B    mov         edx,dword ptr [eax]
 0049A93D    call        dword ptr [edx+0D4];TCustomListBox.Clear
 0049A943    mov         ecx,dword ptr [ebp-5C]
 0049A946    mov         eax,dword ptr [ecx+318];TFEditFunctionDlg_11011981.rgLocBase:TRadioGroup
 0049A94C    or          edx,0FFFFFFFF
 0049A94F    call        TRadioGroup.SetItemIndex
 0049A954    mov         ecx,dword ptr [ebp-5C]
 0049A957    mov         eax,dword ptr [ecx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 0049A95D    call        0053A308
 0049A962    mov         dword ptr [ebp-70],eax
 0049A965    mov         edx,dword ptr [ebp-70]
 0049A968    mov         ecx,dword ptr [edx+1E]
 0049A96B    mov         eax,dword ptr [ecx+14]
 0049A96E    test        eax,eax
>0049A970    je          0049AC7A
 0049A976    mov         edx,dword ptr [ebp-70]
 0049A979    mov         ecx,dword ptr [edx+1E]
 0049A97C    mov         edx,dword ptr [ecx]
 0049A97E    and         edx,1000000
 0049A984    mov         eax,dword ptr [ebp-5C]
 0049A987    mov         eax,dword ptr [eax+318];TFEditFunctionDlg_11011981.rgLocBase:TRadioGroup
 0049A98D    call        TRadioGroup.SetItemIndex
 0049A992    mov         edx,dword ptr [ebp-5C]
 0049A995    mov         ecx,dword ptr [edx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049A99B    mov         eax,dword ptr [ecx+228];TListBox.FCanvas:TCanvas
 0049A9A1    mov         dword ptr [ebp-6C],eax
 0049A9A4    xor         edx,edx
 0049A9A6    mov         dword ptr [ebp-68],edx
 0049A9A9    xor         ecx,ecx
 0049A9AB    mov         dword ptr [ebp-60],ecx
>0049A9AE    jmp         0049AC4F
 0049A9B3    mov         eax,dword ptr [ebp-70]
 0049A9B6    mov         edx,dword ptr [eax+1E]
 0049A9B9    mov         eax,dword ptr [edx+14]
 0049A9BC    mov         edx,dword ptr [ebp-60]
 0049A9BF    call        TList.Get
 0049A9C4    mov         dword ptr [ebp-74],eax
 0049A9C7    mov         word ptr [ebp-48],20
 0049A9CD    lea         eax,[ebp-14]
 0049A9D0    call        00401EA8
 0049A9D5    mov         edx,eax
 0049A9D7    inc         dword ptr [ebp-3C]
 0049A9DA    mov         ecx,dword ptr [ebp-74]
 0049A9DD    mov         eax,dword ptr [ecx+4]
 0049A9E0    call        00531730
 0049A9E5    lea         edx,[ebp-14]
 0049A9E8    push        edx
 0049A9E9    lea         eax,[ebp-8]
 0049A9EC    call        00401EA8
 0049A9F1    mov         edx,eax
 0049A9F3    inc         dword ptr [ebp-3C]
 0049A9F6    mov         ecx,dword ptr [ebp-74]
 0049A9F9    mov         eax,dword ptr [ecx]
 0049A9FB    neg         eax
 0049A9FD    call        0053188C
 0049AA02    lea         edx,[ebp-8]
 0049AA05    push        edx
 0049AA06    lea         eax,[ebp-10]
 0049AA09    call        00401EA8
 0049AA0E    push        eax
 0049AA0F    inc         dword ptr [ebp-3C]
 0049AA12    mov         edx,6BC29D
 0049AA17    lea         eax,[ebp-0C]
 0049AA1A    call        0067DAB4
 0049AA1F    inc         dword ptr [ebp-3C]
 0049AA22    lea         edx,[ebp-0C]
 0049AA25    pop         ecx
 0049AA26    pop         eax
 0049AA27    call        0067DCF8
 0049AA2C    lea         edx,[ebp-10]
 0049AA2F    push        edx
 0049AA30    lea         eax,[ebp-18]
 0049AA33    call        00401EA8
 0049AA38    mov         ecx,eax
 0049AA3A    inc         dword ptr [ebp-3C]
 0049AA3D    pop         eax
 0049AA3E    pop         edx
 0049AA3F    call        0067DCF8
 0049AA44    lea         ecx,[ebp-18]
 0049AA47    push        ecx
 0049AA48    lea         eax,[ebp-20]
 0049AA4B    call        00401EA8
 0049AA50    push        eax
 0049AA51    inc         dword ptr [ebp-3C]
 0049AA54    mov         edx,6BC29F
 0049AA59    lea         eax,[ebp-1C]
 0049AA5C    call        0067DAB4
 0049AA61    inc         dword ptr [ebp-3C]
 0049AA64    lea         edx,[ebp-1C]
 0049AA67    pop         ecx
 0049AA68    pop         eax
 0049AA69    call        0067DCF8
 0049AA6E    lea         edx,[ebp-20]
 0049AA71    lea         eax,[ebp-4]
 0049AA74    call        0067DCD0
 0049AA79    dec         dword ptr [ebp-3C]
 0049AA7C    lea         eax,[ebp-20]
 0049AA7F    mov         edx,2
 0049AA84    call        0067DCA0
 0049AA89    dec         dword ptr [ebp-3C]
 0049AA8C    lea         eax,[ebp-1C]
 0049AA8F    mov         edx,2
 0049AA94    call        0067DCA0
 0049AA99    dec         dword ptr [ebp-3C]
 0049AA9C    lea         eax,[ebp-18]
 0049AA9F    mov         edx,2
 0049AAA4    call        0067DCA0
 0049AAA9    dec         dword ptr [ebp-3C]
 0049AAAC    lea         eax,[ebp-14]
 0049AAAF    mov         edx,2
 0049AAB4    call        0067DCA0
 0049AAB9    dec         dword ptr [ebp-3C]
 0049AABC    lea         eax,[ebp-10]
 0049AABF    mov         edx,2
 0049AAC4    call        0067DCA0
 0049AAC9    dec         dword ptr [ebp-3C]
 0049AACC    lea         eax,[ebp-0C]
 0049AACF    mov         edx,2
 0049AAD4    call        0067DCA0
 0049AAD9    dec         dword ptr [ebp-3C]
 0049AADC    lea         eax,[ebp-8]
 0049AADF    mov         edx,2
 0049AAE4    call        0067DCA0
 0049AAE9    mov         word ptr [ebp-48],2C
 0049AAEF    mov         edx,6BC2A1
 0049AAF4    lea         eax,[ebp-24]
 0049AAF7    call        0067DAB4
 0049AAFC    inc         dword ptr [ebp-3C]
 0049AAFF    lea         edx,[ebp-24]
 0049AB02    mov         eax,dword ptr [ebp-74]
 0049AB05    add         eax,8
 0049AB08    call        0067DD9C
 0049AB0D    push        eax
 0049AB0E    dec         dword ptr [ebp-3C]
 0049AB11    lea         eax,[ebp-24]
 0049AB14    mov         edx,2
 0049AB19    call        0067DCA0
 0049AB1E    pop         ecx
 0049AB1F    test        cl,cl
>0049AB21    je          0049AB33
 0049AB23    mov         edx,dword ptr [ebp-74]
 0049AB26    add         edx,8
 0049AB29    lea         eax,[ebp-4]
 0049AB2C    call        0067DCE4
>0049AB31    jmp         0049AB64
 0049AB33    mov         word ptr [ebp-48],38
 0049AB39    mov         edx,6BC2A2
 0049AB3E    lea         eax,[ebp-28]
 0049AB41    call        0067DAB4
 0049AB46    inc         dword ptr [ebp-3C]
 0049AB49    lea         edx,[ebp-28]
 0049AB4C    lea         eax,[ebp-4]
 0049AB4F    call        0067DCE4
 0049AB54    dec         dword ptr [ebp-3C]
 0049AB57    lea         eax,[ebp-28]
 0049AB5A    mov         edx,2
 0049AB5F    call        0067DCA0
 0049AB64    mov         word ptr [ebp-48],44
 0049AB6A    mov         edx,6BC2A4
 0049AB6F    lea         eax,[ebp-2C]
 0049AB72    call        0067DAB4
 0049AB77    inc         dword ptr [ebp-3C]
 0049AB7A    lea         edx,[ebp-2C]
 0049AB7D    lea         eax,[ebp-4]
 0049AB80    call        0067DCE4
 0049AB85    dec         dword ptr [ebp-3C]
 0049AB88    lea         eax,[ebp-2C]
 0049AB8B    mov         edx,2
 0049AB90    call        0067DCA0
 0049AB95    mov         word ptr [ebp-48],50
 0049AB9B    mov         edx,6BC2A6
 0049ABA0    lea         eax,[ebp-30]
 0049ABA3    call        0067DAB4
 0049ABA8    inc         dword ptr [ebp-3C]
 0049ABAB    lea         edx,[ebp-30]
 0049ABAE    mov         eax,dword ptr [ebp-74]
 0049ABB1    add         eax,0C
 0049ABB4    call        0067DD9C
 0049ABB9    push        eax
 0049ABBA    dec         dword ptr [ebp-3C]
 0049ABBD    lea         eax,[ebp-30]
 0049ABC0    mov         edx,2
 0049ABC5    call        0067DCA0
 0049ABCA    pop         ecx
 0049ABCB    test        cl,cl
>0049ABCD    je          0049ABDF
 0049ABCF    mov         edx,dword ptr [ebp-74]
 0049ABD2    add         edx,0C
 0049ABD5    lea         eax,[ebp-4]
 0049ABD8    call        0067DCE4
>0049ABDD    jmp         0049AC10
 0049ABDF    mov         word ptr [ebp-48],5C
 0049ABE5    mov         edx,6BC2A7
 0049ABEA    lea         eax,[ebp-34]
 0049ABED    call        0067DAB4
 0049ABF2    inc         dword ptr [ebp-3C]
 0049ABF5    lea         edx,[ebp-34]
 0049ABF8    lea         eax,[ebp-4]
 0049ABFB    call        0067DCE4
 0049AC00    dec         dword ptr [ebp-3C]
 0049AC03    lea         eax,[ebp-34]
 0049AC06    mov         edx,2
 0049AC0B    call        0067DCA0
 0049AC10    mov         edx,dword ptr [ebp-4]
 0049AC13    mov         eax,dword ptr [ebp-6C]
 0049AC16    call        005C1754
 0049AC1B    mov         dword ptr [ebp-64],eax
 0049AC1E    mov         ecx,dword ptr [ebp-64]
 0049AC21    mov         eax,dword ptr [ebp-68]
 0049AC24    cmp         ecx,eax
>0049AC26    jle         0049AC2E
 0049AC28    mov         edx,dword ptr [ebp-64]
 0049AC2B    mov         dword ptr [ebp-68],edx
 0049AC2E    mov         ecx,dword ptr [ebp-5C]
 0049AC31    mov         eax,dword ptr [ecx+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049AC37    add         eax,218;TListBox.FItems:TStrings
 0049AC3C    mov         dword ptr [ebp-78],eax
 0049AC3F    mov         edx,dword ptr [ebp-78]
 0049AC42    mov         eax,dword ptr [edx]
 0049AC44    mov         edx,dword ptr [ebp-4]
 0049AC47    mov         ecx,dword ptr [eax]
 0049AC49    call        dword ptr [ecx+38]
 0049AC4C    inc         dword ptr [ebp-60]
 0049AC4F    mov         eax,dword ptr [ebp-70]
 0049AC52    mov         edx,dword ptr [eax+1E]
 0049AC55    mov         ecx,dword ptr [edx+14]
 0049AC58    mov         eax,dword ptr [ecx+8]
 0049AC5B    mov         edx,dword ptr [ebp-60]
 0049AC5E    cmp         eax,edx
>0049AC60    jg          0049A9B3
 0049AC66    mov         edx,dword ptr [ebp-68]
 0049AC69    add         edx,2
 0049AC6C    mov         eax,dword ptr [ebp-5C]
 0049AC6F    mov         eax,dword ptr [eax+310];TFEditFunctionDlg_11011981.lbVars:TListBox
 0049AC75    call        TListBox.SetScrollWidth
 0049AC7A    dec         dword ptr [ebp-3C]
 0049AC7D    lea         eax,[ebp-4]
 0049AC80    mov         edx,2
 0049AC85    call        0067DCA0
 0049AC8A    mov         ecx,dword ptr [ebp-58]
 0049AC8D    mov         dword ptr fs:[0],ecx
 0049AC94    mov         esp,ebp
 0049AC96    pop         ebp
 0049AC97    ret
*}
end;

//0049AC98
procedure TFEditFunctionDlg_11011981.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0049AC98    push        ebp
 0049AC99    mov         ebp,esp
 0049AC9B    add         esp,0FFFFFFF0
 0049AC9E    mov         dword ptr [ebp-0C],ecx
 0049ACA1    mov         dword ptr [ebp-8],edx
 0049ACA4    mov         dword ptr [ebp-4],eax
 0049ACA7    mov         eax,dword ptr [ebp-4]
 0049ACAA    mov         dl,byte ptr [eax+378];TFEditFunctionDlg_11011981.?f378:byte
 0049ACB0    test        dl,dl
>0049ACB2    jne         0049ACE9
 0049ACB4    mov         ecx,dword ptr [ebp-4]
 0049ACB7    mov         eax,dword ptr [ecx+38E]
 0049ACBD    call        0053A308
 0049ACC2    mov         dword ptr [ebp-10],eax
 0049ACC5    mov         edx,dword ptr [ebp-4]
 0049ACC8    mov         edx,dword ptr [edx+38A];TFEditFunctionDlg_11011981.?f38A:dword
 0049ACCE    mov         eax,dword ptr [ebp-10]
 0049ACD1    call        00485974
 0049ACD6    mov         ecx,dword ptr [ebp-10]
 0049ACD9    mov         eax,dword ptr [ecx+1E]
 0049ACDC    mov         edx,dword ptr [ebp-4]
 0049ACDF    mov         ecx,dword ptr [edx+386];TFEditFunctionDlg_11011981.?f386:dword
 0049ACE5    mov         dword ptr [eax],ecx
>0049ACE7    jmp         0049ACF0
 0049ACE9    mov         byte ptr ds:[6941AD],1;gvar_006941AD
 0049ACF0    mov         esp,ebp
 0049ACF2    pop         ebp
 0049ACF3    ret
*}
end;

//0049ACF4
procedure TFEditFunctionDlg_11011981.cbMethodClick(Sender:TObject);
begin
{*
 0049ACF4    push        ebp
 0049ACF5    mov         ebp,esp
 0049ACF7    add         esp,0FFFFFFCC
 0049ACFA    mov         dword ptr [ebp-30],edx
 0049ACFD    mov         dword ptr [ebp-2C],eax
 0049AD00    mov         eax,6BD1E8
 0049AD05    call        0066FECC
 0049AD0A    mov         edx,dword ptr [ebp-2C]
 0049AD0D    mov         eax,dword ptr [edx+38E];TFEditFunctionDlg_11011981.?f38E:dword
 0049AD13    call        0053A308
 0049AD18    mov         dword ptr [ebp-34],eax
 0049AD1B    mov         edx,dword ptr [ebp-2C]
 0049AD1E    mov         eax,dword ptr [edx+358];TFEditFunctionDlg_11011981.cbMethod:TCheckBox
 0049AD24    mov         edx,dword ptr [eax]
 0049AD26    call        dword ptr [edx+0C4];TCheckBox.GetChecked
 0049AD2C    test        al,al
>0049AD2E    je          0049AD77
 0049AD30    mov         dl,1
 0049AD32    mov         eax,dword ptr [ebp-2C]
 0049AD35    mov         eax,dword ptr [eax+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 0049AD3B    mov         ecx,dword ptr [eax]
 0049AD3D    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049AD40    mov         edx,dword ptr [ebp-34]
 0049AD43    mov         eax,dword ptr [edx+1E]
 0049AD46    or          dword ptr [eax],200000
 0049AD4C    mov         eax,dword ptr [ebp-2C]
 0049AD4F    call        00499478
 0049AD54    mov         edx,dword ptr [ebp-34]
 0049AD57    mov         ecx,dword ptr [edx+1E]
 0049AD5A    mov         eax,dword ptr [ecx+10]
 0049AD5D    xor         edx,edx
 0049AD5F    call        TList.Get
 0049AD64    mov         edx,dword ptr [eax+0E]
 0049AD67    mov         eax,dword ptr [ebp-2C]
 0049AD6A    mov         eax,dword ptr [eax+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 0049AD70    call        TTabPage.SetCaption
>0049AD75    jmp         0049ADD1
 0049AD77    xor         edx,edx
 0049AD79    mov         ecx,dword ptr [ebp-2C]
 0049AD7C    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 0049AD82    mov         ecx,dword ptr [eax]
 0049AD84    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049AD87    mov         edx,dword ptr [ebp-34]
 0049AD8A    mov         eax,dword ptr [edx+1E]
 0049AD8D    and         dword ptr [eax],0FFDFFFFF
 0049AD93    mov         eax,dword ptr [ebp-2C]
 0049AD96    call        00499478
 0049AD9B    mov         word ptr [ebp-18],8
 0049ADA1    mov         edx,6BC2A9
 0049ADA6    lea         eax,[ebp-4]
 0049ADA9    call        0067DAB4
 0049ADAE    inc         dword ptr [ebp-0C]
 0049ADB1    mov         edx,dword ptr [eax]
 0049ADB3    mov         ecx,dword ptr [ebp-2C]
 0049ADB6    mov         eax,dword ptr [ecx+354];TFEditFunctionDlg_11011981.cbVmtCandidates:TComboBox
 0049ADBC    call        TTabPage.SetCaption
 0049ADC1    dec         dword ptr [ebp-0C]
 0049ADC4    lea         eax,[ebp-4]
 0049ADC7    mov         edx,2
 0049ADCC    call        0067DCA0
 0049ADD1    mov         ecx,dword ptr [ebp-28]
 0049ADD4    mov         dword ptr fs:[0],ecx
 0049ADDB    mov         esp,ebp
 0049ADDD    pop         ebp
 0049ADDE    ret
*}
end;

//0049ADE0
procedure TFEditFunctionDlg_11011981.FormCreate(Sender:TObject);
begin
{*
 0049ADE0    push        ebp
 0049ADE1    mov         ebp,esp
 0049ADE3    add         esp,0FFFFFFF8
 0049ADE6    mov         dword ptr [ebp-8],edx
 0049ADE9    mov         dword ptr [ebp-4],eax
 0049ADEC    mov         eax,dword ptr [ebp-4]
 0049ADEF    call        00531284
 0049ADF4    pop         ecx
 0049ADF5    pop         ecx
 0049ADF6    pop         ebp
 0049ADF7    ret
*}
end;

//0049ADF8
procedure TFEditFunctionDlg_11011981.bRemoveAllClick(Sender:TObject);
begin
{*
 0049ADF8    push        ebp
 0049ADF9    mov         ebp,esp
 0049ADFB    add         esp,0FFFFFFF4
 0049ADFE    mov         dword ptr [ebp-8],edx
 0049AE01    mov         dword ptr [ebp-4],eax
 0049AE04    mov         eax,dword ptr [ebp-4]
 0049AE07    mov         eax,dword ptr [eax+38E];TFEditFunctionDlg_11011981.?f38E:dword
 0049AE0D    call        0053A308
 0049AE12    mov         dword ptr [ebp-0C],eax
 0049AE15    mov         edx,dword ptr [ebp-0C]
 0049AE18    mov         ecx,dword ptr [edx+1E]
 0049AE1B    mov         eax,dword ptr [ecx+14]
 0049AE1E    test        eax,eax
>0049AE20    je          0049AE65
 0049AE22    mov         edx,dword ptr [ebp-0C]
 0049AE25    mov         eax,dword ptr [edx+1E]
 0049AE28    call        00484BD4
 0049AE2D    mov         eax,dword ptr [ebp-4]
 0049AE30    call        0049A908
 0049AE35    xor         edx,edx
 0049AE37    mov         ecx,dword ptr [ebp-4]
 0049AE3A    mov         eax,dword ptr [ecx+2F4]
 0049AE40    mov         ecx,dword ptr [eax]
 0049AE42    call        dword ptr [ecx+64]
 0049AE45    xor         edx,edx
 0049AE47    mov         eax,dword ptr [ebp-4]
 0049AE4A    mov         eax,dword ptr [eax+2FC];TFEditFunctionDlg_11011981.bRemoveSelected:TButton
 0049AE50    mov         ecx,dword ptr [eax]
 0049AE52    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049AE55    xor         edx,edx
 0049AE57    mov         eax,dword ptr [ebp-4]
 0049AE5A    mov         eax,dword ptr [eax+374];TFEditFunctionDlg_11011981.bRemoveAll:TButton
 0049AE60    mov         ecx,dword ptr [eax]
 0049AE62    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0049AE65    mov         esp,ebp
 0049AE67    pop         ebp
 0049AE68    ret
*}
end;

//0049AF14
destructor TFEditFunctionDlg_11011981.Destroy;
begin
{*
 0049AF14    push        ebp
 0049AF15    mov         ebp,esp
 0049AF17    add         esp,0FFFFFFD4
 0049AF1A    call        0067EF81
 0049AF1F    mov         byte ptr [ebp-29],dl
 0049AF22    mov         dword ptr [ebp-28],eax
 0049AF25    mov         eax,6BD6C0
 0049AF2A    call        0066FECC
 0049AF2F    mov         dl,byte ptr [ebp-29]
 0049AF32    test        dl,dl
>0049AF34    jl          0049AF59
 0049AF36    dec         dword ptr [ebp-8]
 0049AF39    mov         eax,dword ptr [ebp-28]
 0049AF3C    add         eax,38A
 0049AF41    mov         edx,2
 0049AF46    call        0067DCA0
 0049AF4B    sub         dword ptr [ebp-8],10
 0049AF4F    xor         edx,edx
 0049AF51    mov         eax,dword ptr [ebp-28]
 0049AF54    call        0040235C
 0049AF59    mov         ecx,dword ptr [ebp-24]
 0049AF5C    mov         dword ptr fs:[0],ecx
 0049AF63    mov         al,byte ptr [ebp-29]
 0049AF66    test        al,al
>0049AF68    jle         0049AF72
 0049AF6A    mov         eax,dword ptr [ebp-28]
 0049AF6D    call        0067EF74
 0049AF72    mov         esp,ebp
 0049AF74    pop         ebp
 0049AF75    ret
*}
end;

//0049AF78
{*function sub_0049AF78(?:?; ?:?):?;
begin
 0049AF78    push        ebp
 0049AF79    mov         ebp,esp
 0049AF7B    add         esp,0FFFFFFDC
 0049AF7E    mov         eax,6BD704
 0049AF83    call        0066FECC
 0049AF88    mov         word ptr [ebp-14],8
 0049AF8E    mov         edx,dword ptr [ebp+8]
 0049AF91    mov         ecx,dword ptr [ebp+0C]
 0049AF94    mov         dword ptr [edx],ecx
 0049AF96    push        1
 0049AF98    mov         eax,dword ptr [ebp+8]
 0049AF9B    push        dword ptr [eax]
 0049AF9D    call        SHELL32.DragAcceptFiles
 0049AFA2    mov         edx,dword ptr [ebp-24]
 0049AFA5    mov         dword ptr fs:[0],edx
 0049AFAC    mov         eax,dword ptr [ebp+8]
 0049AFAF    mov         esp,ebp
 0049AFB1    pop         ebp
 0049AFB2    ret
end;*}

//0049AFD4
{*procedure sub_0049AFD4(?:?; ?:?);
begin
 0049AFD4    push        ebp
 0049AFD5    mov         ebp,esp
 0049AFD7    mov         eax,dword ptr [ebp+8]
 0049AFDA    test        eax,eax
>0049AFDC    je          0049AFF9
 0049AFDE    push        0
 0049AFE0    mov         edx,dword ptr [ebp+8]
 0049AFE3    push        dword ptr [edx]
 0049AFE5    call        SHELL32.DragAcceptFiles
 0049AFEA    test        byte ptr [ebp+0C],1
>0049AFEE    je          0049AFF9
 0049AFF0    push        dword ptr [ebp+8]
 0049AFF3    call        0066EAB0
 0049AFF8    pop         ecx
 0049AFF9    pop         ebp
 0049AFFA    ret
end;*}

//0049AFFC
{*function sub_0049AFFC(?:TFileDropper; ?:?):?;
begin
 0049AFFC    push        ebp
 0049AFFD    mov         ebp,esp
 0049AFFF    add         esp,0FFFFFFD0
 0049B002    mov         byte ptr [ebp-8],dl
 0049B005    test        dl,dl
>0049B007    jle         0049B00E
 0049B009    call        0067EF6C
 0049B00E    mov         dword ptr [ebp-30],ecx
 0049B011    mov         byte ptr [ebp-29],dl
 0049B014    mov         dword ptr [ebp-4],eax
 0049B017    mov         eax,6BD728
 0049B01C    call        0066FECC
 0049B021    mov         word ptr [ebp-18],8
 0049B027    xor         edx,edx
 0049B029    mov         eax,dword ptr [ebp-4]
 0049B02C    call        TObject.Create
 0049B031    inc         dword ptr [ebp-0C]
 0049B034    mov         edx,dword ptr [ebp-4]
 0049B037    mov         ecx,dword ptr [ebp-30]
 0049B03A    mov         dword ptr [edx+4],ecx;TFileDropper..:dword
 0049B03D    mov         eax,dword ptr [ebp-28]
 0049B040    mov         fs:[00000000],eax
 0049B046    mov         eax,dword ptr [ebp-4]
 0049B049    mov         dl,byte ptr [ebp-29]
 0049B04C    test        dl,dl
>0049B04E    je          0049B055
 0049B050    call        0067EF79
 0049B055    mov         esp,ebp
 0049B057    pop         ebp
 0049B058    ret
end;*}

//0049B0C0
{*procedure sub_0049B0C0(?:?; ?:?; ?:?);
begin
 0049B0C0    push        ebp
 0049B0C1    mov         ebp,esp
 0049B0C3    add         esp,0FFFFFFD4
 0049B0C6    mov         eax,6BD7A0
 0049B0CB    call        0066FECC
 0049B0D0    push        0
 0049B0D2    push        0
 0049B0D4    push        dword ptr [ebp+10]
 0049B0D7    mov         edx,dword ptr [ebp+0C]
 0049B0DA    push        dword ptr [edx+4]
 0049B0DD    call        SHELL32.DragQueryFileA
 0049B0E2    mov         dword ptr [ebp-2C],eax
 0049B0E5    mov         word ptr [ebp-18],8
 0049B0EB    lea         eax,[ebp-4]
 0049B0EE    call        00401EA8
 0049B0F3    inc         dword ptr [ebp-0C]
 0049B0F6    mov         word ptr [ebp-18],14
 0049B0FC    lea         eax,[ebp-4]
 0049B0FF    mov         edx,dword ptr [ebp-2C]
 0049B102    call        0067DED4
 0049B107    mov         ecx,dword ptr [ebp-2C]
 0049B10A    inc         ecx
 0049B10B    push        ecx
 0049B10C    lea         eax,[ebp-4]
 0049B10F    call        00403C0C
 0049B114    push        eax
 0049B115    push        dword ptr [ebp+10]
 0049B118    mov         edx,dword ptr [ebp+0C]
 0049B11B    push        dword ptr [edx+4]
 0049B11E    call        SHELL32.DragQueryFileA
 0049B123    mov         word ptr [ebp-18],20
 0049B129    lea         edx,[ebp-4]
 0049B12C    mov         eax,dword ptr [ebp+8]
 0049B12F    call        0067DCD0
 0049B134    mov         eax,dword ptr [ebp+8]
 0049B137    mov         word ptr [ebp-18],2C
 0049B13D    push        eax
 0049B13E    dec         dword ptr [ebp-0C]
 0049B141    lea         eax,[ebp-4]
 0049B144    mov         edx,2
 0049B149    call        0067DCA0
 0049B14E    pop         eax
 0049B14F    mov         word ptr [ebp-18],20
 0049B155    inc         dword ptr [ebp-0C]
 0049B158    mov         edx,dword ptr [ebp-28]
 0049B15B    mov         dword ptr fs:[0],edx
 0049B162    mov         esp,ebp
 0049B164    pop         ebp
 0049B165    ret
end;*}

//0049B168
{*procedure sub_0049B168(?:?);
begin
 0049B168    push        ebp
 0049B169    mov         ebp,esp
 0049B16B    push        0
 0049B16D    push        0
 0049B16F    push        0FF
 0049B171    mov         eax,dword ptr [ebp+8]
 0049B174    push        dword ptr [eax+4]
 0049B177    call        SHELL32.DragQueryFileA
 0049B17C    pop         ebp
 0049B17D    ret
end;*}

end.