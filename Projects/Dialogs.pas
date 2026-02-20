//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Dialogs;

interface

uses
  SysUtils, Classes, Graphics, Controls, Dialogs, StdCtrls;

type
  TColorDialogOptions = set of TColorDialogOption;
  TFindOptions = set of TFindOption;
  TCommonDialog = class(TComponent)
  public
    Ctl3D:Boolean;//f30
    FDefWndProc:Pointer;//f34
    HelpContext:THelpContext;//f38
    FHandle:HWND;//f3C
    FObjectInstance:Pointer;//f40
    FTemplate:PChar;//f44
    OnClose:TNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    OnShow:TNotifyEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    procedure DefaultHandler(var Message:void ); virtual;//005E9ACC
    destructor Destroy; virtual;//005E9A40
    constructor Create(AOwner:TComponent); virtual;//v2C//005E99DC
    //procedure v30(?:?); virtual;//v30//005E9B74
    //function v34(?:?):?; virtual;//v34//005E9A88
    //function v38(?:?; ?:?):?; virtual;//v38//005E9C08
    procedure Execute; virtual; abstract;//v3C//0066AC84
    //procedure WMDestroy(?:?); message WM_DESTROY;//005E9B90
    //procedure WMNCDestroy(?:?); message WM_NCDESTROY;//005E9BE4
    //procedure WMInitDialog(?:?); message WM_INITDIALOG;//005E9BBC
    procedure sub_005E9D04; dynamic;//005E9D04
    procedure sub_005E9CE0; dynamic;//005E9CE0
  end;
  TOpenOption = (ofReadOnly, ofOverwritePrompt, ofHideReadOnly, ofNoChangeDir, ofShowHelp, ofNoValidate, ofAllowMultiSelect, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofCreatePrompt, ofShareAware, ofNoReadOnlyReturn, ofNoTestFileCreate, ofNoNetworkButton, ofNoLongNames, ofOldStyleDialog, ofNoDereferenceLinks, ofEnableIncludeNotify, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden);
  TOpenOptions = set of TOpenOption;
  TOpenOptionEx = (ofExNoPlacesBar);
  TOpenOptionsEx = set of TOpenOptionEx;
  TIncludeItemEvent = procedure(const OFN:TOFNotifyEx; var Include:Boolean) of object;;
  TOpenDialog = class(TCommonDialog)
  public
    FHistoryList:TStrings;//f58
    Options:TOpenOptions;//f5C
    f5E:byte;//f5E
    Filter:String;//f60
    FilterIndex:Integer;//f64
    FCurrentFilterIndex:Integer;//f68
    InitialDir:String;//f6C
    Title:String;//f70
    DefaultExt:String;//f74
    FileName:TFileName;//f78
    FFiles:TStrings;//f7C
    FFileEditStyle:TFileEditStyle;//f80
    OnSelectionChange:TNotifyEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    OnFolderChange:TNotifyEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    OnTypeChange:TNotifyEvent;//f98
    f9A:word;//f9A
    f9C:dword;//f9C
    OnCanClose:TCloseQueryEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    OnIncludeItem:TIncludeItemEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    OptionsEx:TOpenOptionsEx;//fB0
    destructor Destroy; virtual;//005E9E58
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005EA134
    constructor Create(AOwner:TComponent); virtual;//v2C//005E9DB4
    //procedure v30(?:?); virtual;//v30//005E9EDC
    //function Execute:?; virtual;//v3C//005EA8C8
    //procedure v40(?:?); virtual;//v40//005EA74C
    //procedure sub_005EA8F0(?:?; ?:?); dynamic;//005EA8F0
    procedure sub_005EA0BC; dynamic;//005EA0BC
    procedure sub_005EA090; dynamic;//005EA090
    procedure sub_005EA064; dynamic;//005EA064
    procedure sub_005EA02C; dynamic;//005EA02C
    //procedure GetFileName(?:?);//005EA7C4
    //function GetFilterIndex:?;//005EA82C
    procedure SetInitialDir(Value:String);//005EA85C
  end;
  TSaveDialog = class(TOpenDialog)
  published
    //function Execute:?;//005EA928
  public
    //function Execute:?; virtual;//v3C//005EA928
  end;
  TColorDialogOption = (cdFullOpen, cdPreventFullOpen, cdShowHelp, cdSolidColor, cdAnyColor);
  TColorDialog = class(TCommonDialog)
  public
    Color:TColor;//f58
    Options:TColorDialogOptions;//f5C
    CustomColors:TStrings;//f60
    destructor Destroy; virtual;//005EA9AC
    constructor Create(AOwner:TComponent); virtual;//v2C//005EA950
    //function Execute:?; virtual;//v3C//005EAB98
    procedure SetCustomColors(Value:TStrings);//005EAC64
  end;
  TFontDialogOption = (fdAnsiOnly, fdTrueTypeOnly, fdEffects, fdFixedPitchOnly, fdForceFontExist, fdNoFaceSel, fdNoOEMFonts, fdNoSimulations, fdNoSizeSel, fdNoStyleSel, fdNoVectorFonts, fdShowHelp, fdWysiwyg, fdLimitSize, fdScalableOnly, fdApplyButton);
  TFontDialogOptions = set of TFontDialogOption;
  TFontDialogDevice = (fdScreen, fdPrinter, fdBoth);
  TFDApplyEvent = procedure(Sender:TObject; Wnd:HWND) of object;;
  TFontDialog = class(TCommonDialog)
  public
    Font:TFont;//f58
    Device:TFontDialogDevice;//f5C
    Options:TFontDialogOptions;//f5D
    OnApply:TFDApplyEvent;//f60
    f62:word;//f62
    f64:dword;//f64
    MinFontSize:Integer;//f68
    MaxFontSize:Integer;//f6C
    FFontCharsetModified:Boolean;//f70
    FFontColorModified:Boolean;//f71
    destructor Destroy; virtual;//005EAD44
    constructor Create(AOwner:TComponent); virtual;//v2C//005EACD8
    //procedure v30(?:?); virtual;//v30//005EAD80
    //function Execute:?; virtual;//v3C//005EAEC0
    //procedure sub_005EADD8(?:?); dynamic;//005EADD8
    procedure SetFont(Value:TFont);//005EB0B4
  end;
  TPrinterSetupDialog = class(TCommonDialog)
  public
    //function Execute:?; virtual;//v3C//005EB404
  end;
  TPrintRange = (prAllPages, prSelection, prPageNums);
  TPrintDialogOption = (poPrintToFile, poPageNums, poSelection, poWarning, poHelp, poDisablePrintToFile);
  TPrintDialogOptions = set of TPrintDialogOption;
  TPrintDialog = class(TCommonDialog)
  public
    FromPage:Integer;//f58
    ToPage:Integer;//f5C
    Collate:Boolean;//f60
    Options:TPrintDialogOptions;//f61
    PrintToFile:Boolean;//f62
    PrintRange:TPrintRange;//f63
    MinPage:Integer;//f64
    MaxPage:Integer;//f68
    Copies:Integer;//f6C
    //function Execute:?; virtual;//v3C//005EB4D8
    procedure SetCopies(Value:Integer);//005EB4B0
  end;
  TFindOption = (frDown, frFindNext, frHideMatchCase, frHideWholeWord, frHideUpDown, frMatchCase, frDisableMatchCase, frDisableUpDown, frDisableWholeWord, frReplace, frReplaceAll, frWholeWord, frShowHelp);
  TFindDialog = class(TCommonDialog)
  public
    Options:TFindOptions;//f58
    FPosition:TPoint;//f5A
    FFindReplaceFunc:TFindReplaceFunc;//f64
    FRedirector:TWinControl;//f68
    OnFind:TNotifyEvent;//f70
    f72:word;//f72
    f74:dword;//f74
    FOnReplace:TNotifyEvent;//f78
    f7A:word;//f7A
    f7C:dword;//f7C
    FFindHandle:HWND;//f80
    FFindReplace:TFindReplace;//f84
    FFindText:array[$0..$FF] of System.Char;//fAC
    FReplaceText:array[$0..$FF] of System.Char;//f1AC
    destructor Destroy; virtual;//005EBB44
    constructor Create(AOwner:TComponent); virtual;//v2C//005EBA5C
    //function v34(?:?):?; virtual;//v34//005EBE64
    //function Execute:?; virtual;//v3C//005EBC2C
    procedure sub_005EBF94; dynamic;//005EBF94
    procedure sub_005EBD58; dynamic;//005EBD58
    //procedure GetFindText(?:?);//005EBD7C
    procedure SetFindText(Value:String);//005EBFB8
  end;
  TReplaceDialog = class(TFindDialog)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//005EC010
    //procedure GetReplaceText(?:?);//005EBE18
    procedure SetReplaceText(Value:String);//005EBFE4
  end;
  TRedirectorWindow = class(TWinControl)
  public
    FFindReplaceDialog:TFindDialog;//f208
    FFormHandle:THandle;//f20C
    //procedure v74(?:?); virtual;//v74//005EB848
    //procedure v98(?:?); virtual;//v98//005EB814
    //procedure CMRelease(?:?); message CM_RELEASE;//005EB8A0
  end;
  TMessageForm = class(TForm)
  public
    ..Message:TLabel;//f2F0
    constructor Create;//005EC248
  end;
    procedure sub_005E851C;//005E851C
    constructor Create(AOwner:TComponent);//005E99DC
    destructor Destroy;//005E9A40
    //function sub_005E9A88(?:?):?;//005E9A88
    procedure DefaultHandler(var Message:void );//005E9ACC
    //procedure sub_005E9B74(?:?);//005E9B74
    //procedure WMDestroy(?:?);//005E9B90
    //procedure WMInitDialog(?:?);//005E9BBC
    //procedure WMNCDestroy(?:?);//005E9BE4
    //function sub_005E9C08(?:?; ?:?):?;//005E9C08
    procedure sub_005E9CE0;//005E9CE0
    procedure sub_005E9D04;//005E9D04
    constructor Create(AOwner:TComponent);//005E9DB4
    destructor Destroy;//005E9E58
    //function sub_005E9EA0(?:TOpenDialog; ?:?):?;//005E9EA0
    //procedure sub_005E9EDC(?:?);//005E9EDC
    procedure sub_005EA02C;//005EA02C
    procedure sub_005EA064;//005EA064
    procedure sub_005EA090;//005EA090
    procedure sub_005EA0BC;//005EA0BC
    procedure DefineProperties(Filer:TFiler);//005EA134
    //procedure sub_005EA188(?:String; ?:?);//005EA188
    //function sub_005EA1F8(?:TOpenDialog; ?:BOOL):?;//005EA1F8
    //function sub_005EA530(?:?; ?:AnsiString; ?:?):?;//005EA530
    //procedure sub_005EA588(?:?; ?:?);//005EA588
    procedure sub_005EA68C(?:TSavePictureDialog; ?:Byte);//005EA68C
    //procedure sub_005EA74C(?:?);//005EA74C
    //function Execute:?;//005EA8C8
    //procedure sub_005EA8F0(?:?; ?:?);//005EA8F0
    constructor Create(AOwner:TComponent);//005EA950
    destructor Destroy;//005EA9AC
    //procedure sub_005EA9E8(?:?);//005EA9E8
    //procedure sub_005EAABC(?:?);//005EAABC
    //function Execute:?;//005EAB98
    constructor Create(AOwner:TComponent);//005EACD8
    destructor Destroy;//005EAD44
    //procedure sub_005EAD80(?:?);//005EAD80
    //procedure sub_005EADD8(?:?);//005EADD8
    //function Execute:?;//005EAEC0
    //procedure sub_005EB0D4(?:TFontDialog; ?:?);//005EB0D4
    //procedure sub_005EB1B0(?:?; ?:?);//005EB1B0
    //procedure sub_005EB2D8(?:?; ?:?);//005EB2D8
    //function sub_005EB35C(?:?):?;//005EB35C
    //function Execute:?;//005EB404
    //function Execute:?;//005EB4D8
    //procedure sub_005EB814(?:?);//005EB814
    //procedure sub_005EB848(?:?);//005EB848
    //procedure CMRelease(?:?);//005EB8A0
    constructor Create(AOwner:TComponent);//005EBA5C
    destructor Destroy;//005EBB44
    procedure sub_005EBBB8(?:TFindDialog);//005EBBB8
    //function Execute:?;//005EBC2C
    procedure sub_005EBD58;//005EBD58
    //function sub_005EBE64(?:?):?;//005EBE64
    procedure sub_005EBF94;//005EBF94
    constructor Create(AOwner:TComponent);//005EC010
    //procedure sub_005EC064(?:?; ?:?);//005EC064
    //function sub_005EC76C(?:?; ?:?; ?:?):?;//005EC76C
    //function sub_005ECD84(?:?; ?:?; ?:?; ?:?):?;//005ECD84
    //function sub_005ECDBC(?:String; ?:?; ?:?; ?:?; ?:?; ?:?):?;//005ECDBC
    //function sub_005ECDF8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//005ECDF8
    procedure sub_005ECEB0(?:String; ?:AnsiString; ?:Integer);//005ECEB0
    //procedure sub_005ECEC8(?:String; ?:?; ?:?);//005ECEC8
    procedure sub_005ECEFC;//005ECEFC
    procedure _NF__4C2;//005ECF94
    procedure Finalization;//005ED04C

implementation

//005E851C
procedure sub_005E851C;
begin
{*
 005E851C    sub         dword ptr ds:[6ECD9C],1
>005E8523    jae         005E853F
 005E8525    mov         eax,[005EE128];TControl
 005E852A    call        00644444
 005E852F    mov         edx,dword ptr ds:[5EE128];TControl
 005E8535    mov         eax,[005DAA7C];TTimer
 005E853A    call        00644494
 005E853F    ret
*}
end;

//005E99DC
constructor TCommonDialog.Create(AOwner:TComponent);
begin
{*
 005E99DC    push        ebp
 005E99DD    mov         ebp,esp
 005E99DF    add         esp,0FFFFFFF4
 005E99E2    test        dl,dl
>005E99E4    je          005E99EE
 005E99E6    add         esp,0FFFFFFF0
 005E99E9    call        @ClassCreate
 005E99EE    mov         dword ptr [ebp-0C],ecx
 005E99F1    mov         byte ptr [ebp-5],dl
 005E99F4    mov         dword ptr [ebp-4],eax
 005E99F7    mov         ecx,dword ptr [ebp-0C]
 005E99FA    xor         edx,edx
 005E99FC    mov         eax,dword ptr [ebp-4]
 005E99FF    call        TComponent.Create
 005E9A04    mov         eax,dword ptr [ebp-4]
 005E9A07    mov         byte ptr [eax+30],1;TCommonDialog.Ctl3D:Boolean
 005E9A0B    mov         eax,dword ptr [ebp-4]
 005E9A0E    push        eax
 005E9A0F    push        5E9B20
 005E9A14    call        006519D4
 005E9A19    mov         edx,dword ptr [ebp-4]
 005E9A1C    mov         dword ptr [edx+40],eax;TCommonDialog.FObjectInstance:Pointer
 005E9A1F    mov         eax,dword ptr [ebp-4]
 005E9A22    cmp         byte ptr [ebp-5],0
>005E9A26    je          005E9A37
 005E9A28    call        @AfterConstruction
 005E9A2D    pop         dword ptr fs:[0]
 005E9A34    add         esp,0C
 005E9A37    mov         eax,dword ptr [ebp-4]
 005E9A3A    mov         esp,ebp
 005E9A3C    pop         ebp
 005E9A3D    ret
*}
end;

//005E9A40
destructor TCommonDialog.Destroy;
begin
{*
 005E9A40    push        ebp
 005E9A41    mov         ebp,esp
 005E9A43    add         esp,0FFFFFFF8
 005E9A46    call        @BeforeDestruction
 005E9A4B    mov         byte ptr [ebp-5],dl
 005E9A4E    mov         dword ptr [ebp-4],eax
 005E9A51    mov         eax,dword ptr [ebp-4]
 005E9A54    cmp         dword ptr [eax+40],0;TCommonDialog.FObjectInstance:Pointer
>005E9A58    je          005E9A65
 005E9A5A    mov         eax,dword ptr [ebp-4]
 005E9A5D    mov         eax,dword ptr [eax+40];TCommonDialog.FObjectInstance:Pointer
 005E9A60    call        00651AB4
 005E9A65    mov         dl,byte ptr [ebp-5]
 005E9A68    and         dl,0FC
 005E9A6B    mov         eax,dword ptr [ebp-4]
 005E9A6E    call        TComponent.Destroy
 005E9A73    cmp         byte ptr [ebp-5],0
>005E9A77    jle         005E9A81
 005E9A79    mov         eax,dword ptr [ebp-4]
 005E9A7C    call        @ClassDestroy
 005E9A81    pop         ecx
 005E9A82    pop         ecx
 005E9A83    pop         ebp
 005E9A84    ret
*}
end;

//005E9A88
{*function sub_005E9A88(?:?):?;
begin
 005E9A88    push        ebp
 005E9A89    mov         ebp,esp
 005E9A8B    add         esp,0FFFFFFF4
 005E9A8E    mov         dword ptr [ebp-8],edx
 005E9A91    mov         dword ptr [ebp-4],eax
 005E9A94    mov         byte ptr [ebp-9],0
 005E9A98    mov         eax,dword ptr [ebp-8]
 005E9A9B    mov         eax,dword ptr [eax]
 005E9A9D    cmp         eax,dword ptr ds:[6ECDA4];0x0 gvar_006ECDA4:Longword
>005E9AA3    jne         005E9AC4
 005E9AA5    mov         eax,dword ptr [ebp-4]
 005E9AA8    cmp         dword ptr [eax+38],0;TCommonDialog.HelpContext:THelpContext
>005E9AAC    je          005E9AC4
 005E9AAE    mov         eax,[006E9DCC];^Application:TApplication
 005E9AB3    mov         eax,dword ptr [eax]
 005E9AB5    mov         edx,dword ptr [ebp-4]
 005E9AB8    mov         edx,dword ptr [edx+38];TCommonDialog.HelpContext:THelpContext
 005E9ABB    call        005D8A10
 005E9AC0    mov         byte ptr [ebp-9],1
 005E9AC4    mov         al,byte ptr [ebp-9]
 005E9AC7    mov         esp,ebp
 005E9AC9    pop         ebp
 005E9ACA    ret
end;*}

//005E9ACC
procedure TCommonDialog.DefaultHandler(var Message:void );
begin
{*
 005E9ACC    push        ebp
 005E9ACD    mov         ebp,esp
 005E9ACF    add         esp,0FFFFFFF8
 005E9AD2    mov         dword ptr [ebp-8],edx
 005E9AD5    mov         dword ptr [ebp-4],eax
 005E9AD8    mov         eax,dword ptr [ebp-4]
 005E9ADB    cmp         dword ptr [eax+3C],0
>005E9ADF    je          005E9B10
 005E9AE1    mov         eax,dword ptr [ebp-8]
 005E9AE4    mov         eax,dword ptr [eax+8]
 005E9AE7    push        eax
 005E9AE8    mov         eax,dword ptr [ebp-8]
 005E9AEB    mov         eax,dword ptr [eax+4]
 005E9AEE    push        eax
 005E9AEF    mov         eax,dword ptr [ebp-8]
 005E9AF2    mov         eax,dword ptr [eax]
 005E9AF4    push        eax
 005E9AF5    mov         eax,dword ptr [ebp-4]
 005E9AF8    mov         eax,dword ptr [eax+3C];{TObject.DefaultHandler}
 005E9AFB    push        eax
 005E9AFC    mov         eax,dword ptr [ebp-4]
 005E9AFF    mov         eax,dword ptr [eax+34]
 005E9B02    push        eax
 005E9B03    call        USER32.CallWindowProcA
 005E9B08    mov         edx,dword ptr [ebp-8]
 005E9B0B    mov         dword ptr [edx+0C],eax
>005E9B0E    jmp         005E9B1B
 005E9B10    mov         edx,dword ptr [ebp-8]
 005E9B13    mov         eax,dword ptr [ebp-4]
 005E9B16    call        TTeeCanvas.DefaultHandler
 005E9B1B    pop         ecx
 005E9B1C    pop         ecx
 005E9B1D    pop         ebp
 005E9B1E    ret
*}
end;

//005E9B74
{*procedure sub_005E9B74(?:?);
begin
 005E9B74    push        ebp
 005E9B75    mov         ebp,esp
 005E9B77    add         esp,0FFFFFFF8
 005E9B7A    mov         dword ptr [ebp-8],edx
 005E9B7D    mov         dword ptr [ebp-4],eax
 005E9B80    mov         edx,dword ptr [ebp-8]
 005E9B83    mov         eax,dword ptr [ebp-4]
 005E9B86    mov         ecx,dword ptr [eax]
 005E9B88    call        dword ptr [ecx-14];TObject.Dispatch
 005E9B8B    pop         ecx
 005E9B8C    pop         ecx
 005E9B8D    pop         ebp
 005E9B8E    ret
end;*}

//005E9B90
{*procedure TCommonDialog.WMDestroy(?:?);
begin
 005E9B90    push        ebp
 005E9B91    mov         ebp,esp
 005E9B93    add         esp,0FFFFFFF8
 005E9B96    push        esi
 005E9B97    mov         dword ptr [ebp-8],edx
 005E9B9A    mov         dword ptr [ebp-4],eax
 005E9B9D    mov         edx,dword ptr [ebp-8]
 005E9BA0    mov         eax,dword ptr [ebp-4]
 005E9BA3    mov         ecx,dword ptr [eax]
 005E9BA5    call        dword ptr [ecx-10];TCommonDialog.DefaultHandler
 005E9BA8    mov         eax,dword ptr [ebp-4]
 005E9BAB    mov         si,0FFEF
 005E9BAF    call        @CallDynaInst;TCommonDialog.sub_005E9CE0
 005E9BB4    pop         esi
 005E9BB5    pop         ecx
 005E9BB6    pop         ecx
 005E9BB7    pop         ebp
 005E9BB8    ret
end;*}

//005E9BBC
{*procedure TCommonDialog.WMInitDialog(?:?);
begin
 005E9BBC    push        ebp
 005E9BBD    mov         ebp,esp
 005E9BBF    add         esp,0FFFFFFF8
 005E9BC2    push        esi
 005E9BC3    mov         dword ptr [ebp-8],edx
 005E9BC6    mov         dword ptr [ebp-4],eax
 005E9BC9    mov         eax,dword ptr [ebp-4]
 005E9BCC    mov         si,0FFEE
 005E9BD0    call        @CallDynaInst;TCommonDialog.sub_005E9D04
 005E9BD5    mov         eax,dword ptr [ebp-8]
 005E9BD8    xor         edx,edx
 005E9BDA    mov         dword ptr [eax+0C],edx
 005E9BDD    pop         esi
 005E9BDE    pop         ecx
 005E9BDF    pop         ecx
 005E9BE0    pop         ebp
 005E9BE1    ret
end;*}

//005E9BE4
{*procedure TCommonDialog.WMNCDestroy(?:?);
begin
 005E9BE4    push        ebp
 005E9BE5    mov         ebp,esp
 005E9BE7    add         esp,0FFFFFFF8
 005E9BEA    mov         dword ptr [ebp-8],edx
 005E9BED    mov         dword ptr [ebp-4],eax
 005E9BF0    mov         edx,dword ptr [ebp-8]
 005E9BF3    mov         eax,dword ptr [ebp-4]
 005E9BF6    mov         ecx,dword ptr [eax]
 005E9BF8    call        dword ptr [ecx-10];TCommonDialog.DefaultHandler
 005E9BFB    mov         eax,dword ptr [ebp-4]
 005E9BFE    xor         edx,edx
 005E9C00    mov         dword ptr [eax+3C],edx;TCommonDialog.FHandle:HWND
 005E9C03    pop         ecx
 005E9C04    pop         ecx
 005E9C05    pop         ebp
 005E9C06    ret
end;*}

//005E9C08
{*function sub_005E9C08(?:?; ?:?):?;
begin
 005E9C08    push        ebp
 005E9C09    mov         ebp,esp
 005E9C0B    add         esp,0FFFFFFE0
 005E9C0E    mov         dword ptr [ebp-10],ecx
 005E9C11    mov         dword ptr [ebp-0C],edx
 005E9C14    mov         dword ptr [ebp-8],eax
 005E9C17    call        USER32.GetActiveWindow
 005E9C1C    mov         dword ptr [ebp-18],eax
 005E9C1F    xor         eax,eax
 005E9C21    call        005CCB90
 005E9C26    mov         dword ptr [ebp-1C],eax
 005E9C29    call        005CCA50
 005E9C2E    mov         dword ptr [ebp-20],eax
 005E9C31    xor         eax,eax
 005E9C33    push        ebp
 005E9C34    push        5E9CCF
 005E9C39    push        dword ptr fs:[eax]
 005E9C3C    mov         dword ptr fs:[eax],esp
 005E9C3F    mov         eax,dword ptr [ebp-8]
 005E9C42    push        eax
 005E9C43    mov         eax,dword ptr [eax]
 005E9C45    mov         eax,dword ptr [eax+34];TCommonDialog.FDefWndProc:Pointer
 005E9C48    push        eax
 005E9C49    mov         eax,[006E9DCC];^Application:TApplication
 005E9C4E    mov         eax,dword ptr [eax]
 005E9C50    call        005D8250
 005E9C55    fnstcw      word ptr [ebp-2]
 005E9C58    xor         eax,eax
 005E9C5A    push        ebp
 005E9C5B    push        5E9CA1
 005E9C60    push        dword ptr fs:[eax]
 005E9C63    mov         dword ptr fs:[eax],esp
 005E9C66    mov         eax,dword ptr [ebp-8]
 005E9C69    mov         [006E4138],eax;gvar_006E4138:TFindDialog
 005E9C6E    mov         eax,dword ptr [ebp-10]
 005E9C71    push        eax
 005E9C72    call        dword ptr [ebp-0C]
 005E9C75    mov         dword ptr [ebp-14],eax
 005E9C78    xor         eax,eax
 005E9C7A    pop         edx
 005E9C7B    pop         ecx
 005E9C7C    pop         ecx
 005E9C7D    mov         dword ptr fs:[eax],edx
 005E9C80    push        5E9CA8
 005E9C85    fnclex
 005E9C87    fldcw       word ptr [ebp-2]
 005E9C8A    mov         eax,dword ptr [ebp-8]
 005E9C8D    push        eax
 005E9C8E    mov         eax,dword ptr [eax]
 005E9C90    mov         eax,dword ptr [eax+34];TCommonDialog.FDefWndProc:Pointer
 005E9C93    push        eax
 005E9C94    mov         eax,[006E9DCC];^Application:TApplication
 005E9C99    mov         eax,dword ptr [eax]
 005E9C9B    call        005D82C8
 005E9CA0    ret
>005E9CA1    jmp         @HandleFinally
>005E9CA6    jmp         005E9C85
 005E9CA8    xor         eax,eax
 005E9CAA    pop         edx
 005E9CAB    pop         ecx
 005E9CAC    pop         ecx
 005E9CAD    mov         dword ptr fs:[eax],edx
 005E9CB0    push        5E9CD6
 005E9CB5    mov         eax,dword ptr [ebp-1C]
 005E9CB8    call        005CCC48
 005E9CBD    mov         eax,dword ptr [ebp-18]
 005E9CC0    push        eax
 005E9CC1    call        USER32.SetActiveWindow
 005E9CC6    mov         eax,dword ptr [ebp-20]
 005E9CC9    call        005CCA64
 005E9CCE    ret
>005E9CCF    jmp         @HandleFinally
>005E9CD4    jmp         005E9CB5
 005E9CD6    mov         eax,dword ptr [ebp-14]
 005E9CD9    mov         esp,ebp
 005E9CDB    pop         ebp
 005E9CDC    ret
end;*}

//005E9CE0
procedure TCommonDialog.sub_005E9CE0;
begin
{*
 005E9CE0    push        ebp
 005E9CE1    mov         ebp,esp
 005E9CE3    push        ecx
 005E9CE4    push        ebx
 005E9CE5    mov         dword ptr [ebp-4],eax
 005E9CE8    mov         eax,dword ptr [ebp-4]
 005E9CEB    cmp         word ptr [eax+4A],0;TCommonDialog.?f4A:word
>005E9CF0    je          005E9CFE
 005E9CF2    mov         ebx,dword ptr [ebp-4]
 005E9CF5    mov         edx,dword ptr [ebp-4]
 005E9CF8    mov         eax,dword ptr [ebx+4C];TCommonDialog.?f4C:dword
 005E9CFB    call        dword ptr [ebx+48];TCommonDialog.OnClose
 005E9CFE    pop         ebx
 005E9CFF    pop         ecx
 005E9D00    pop         ebp
 005E9D01    ret
*}
end;

//005E9D04
procedure TCommonDialog.sub_005E9D04;
begin
{*
 005E9D04    push        ebp
 005E9D05    mov         ebp,esp
 005E9D07    push        ecx
 005E9D08    push        ebx
 005E9D09    mov         dword ptr [ebp-4],eax
 005E9D0C    mov         eax,dword ptr [ebp-4]
 005E9D0F    cmp         word ptr [eax+52],0;TCommonDialog.?f52:word
>005E9D14    je          005E9D22
 005E9D16    mov         ebx,dword ptr [ebp-4]
 005E9D19    mov         edx,dword ptr [ebp-4]
 005E9D1C    mov         eax,dword ptr [ebx+54];TCommonDialog.?f54:dword
 005E9D1F    call        dword ptr [ebx+50];TCommonDialog.OnShow
 005E9D22    pop         ebx
 005E9D23    pop         ecx
 005E9D24    pop         ebp
 005E9D25    ret
*}
end;

//005E9DB4
constructor TOpenDialog.Create(AOwner:TComponent);
begin
{*
 005E9DB4    push        ebp
 005E9DB5    mov         ebp,esp
 005E9DB7    add         esp,0FFFFFFF4
 005E9DBA    test        dl,dl
>005E9DBC    je          005E9DC6
 005E9DBE    add         esp,0FFFFFFF0
 005E9DC1    call        @ClassCreate
 005E9DC6    mov         dword ptr [ebp-0C],ecx
 005E9DC9    mov         byte ptr [ebp-5],dl
 005E9DCC    mov         dword ptr [ebp-4],eax
 005E9DCF    mov         ecx,dword ptr [ebp-0C]
 005E9DD2    xor         edx,edx
 005E9DD4    mov         eax,dword ptr [ebp-4]
 005E9DD7    call        TCommonDialog.Create
 005E9DDC    mov         dl,1
 005E9DDE    mov         eax,[006428B0];TStringList
 005E9DE3    call        TObject.Create;TStringList.Create
 005E9DE8    mov         edx,dword ptr [ebp-4]
 005E9DEB    mov         dword ptr [edx+58],eax;TOpenDialog.FHistoryList:TStrings
 005E9DEE    mov         eax,dword ptr [ebp-4]
 005E9DF1    mov         edx,dword ptr ds:[5E9E50];0x80004 gvar_005E9E50
 005E9DF7    mov         dword ptr [eax+5C],edx;TOpenDialog.Options:TOpenOptions
 005E9DFA    mov         eax,dword ptr [ebp-4]
 005E9DFD    mov         dl,byte ptr ds:[5E9E54];0x0 gvar_005E9E54
 005E9E03    mov         byte ptr [eax+0B0],dl;TOpenDialog.OptionsEx:TOpenOptionsEx
 005E9E09    mov         dl,1
 005E9E0B    mov         eax,[006428B0];TStringList
 005E9E10    call        TObject.Create;TStringList.Create
 005E9E15    mov         edx,dword ptr [ebp-4]
 005E9E18    mov         dword ptr [edx+7C],eax;TOpenDialog.FFiles:TStrings
 005E9E1B    mov         eax,dword ptr [ebp-4]
 005E9E1E    mov         dword ptr [eax+64],1;TOpenDialog.FilterIndex:Integer
 005E9E25    mov         eax,dword ptr [ebp-4]
 005E9E28    mov         byte ptr [eax+80],0;TOpenDialog.FFileEditStyle:TFileEditStyle
 005E9E2F    mov         eax,dword ptr [ebp-4]
 005E9E32    cmp         byte ptr [ebp-5],0
>005E9E36    je          005E9E47
 005E9E38    call        @AfterConstruction
 005E9E3D    pop         dword ptr fs:[0]
 005E9E44    add         esp,0C
 005E9E47    mov         eax,dword ptr [ebp-4]
 005E9E4A    mov         esp,ebp
 005E9E4C    pop         ebp
 005E9E4D    ret
*}
end;

//005E9E58
destructor TOpenDialog.Destroy;
begin
{*
 005E9E58    push        ebp
 005E9E59    mov         ebp,esp
 005E9E5B    add         esp,0FFFFFFF8
 005E9E5E    call        @BeforeDestruction
 005E9E63    mov         byte ptr [ebp-5],dl
 005E9E66    mov         dword ptr [ebp-4],eax
 005E9E69    mov         eax,dword ptr [ebp-4]
 005E9E6C    mov         eax,dword ptr [eax+7C];TOpenDialog.FFiles:TStrings
 005E9E6F    call        TObject.Free
 005E9E74    mov         eax,dword ptr [ebp-4]
 005E9E77    mov         eax,dword ptr [eax+58];TOpenDialog.FHistoryList:TStrings
 005E9E7A    call        TObject.Free
 005E9E7F    mov         dl,byte ptr [ebp-5]
 005E9E82    and         dl,0FC
 005E9E85    mov         eax,dword ptr [ebp-4]
 005E9E88    call        TCommonDialog.Destroy
 005E9E8D    cmp         byte ptr [ebp-5],0
>005E9E91    jle         005E9E9B
 005E9E93    mov         eax,dword ptr [ebp-4]
 005E9E96    call        @ClassDestroy
 005E9E9B    pop         ecx
 005E9E9C    pop         ecx
 005E9E9D    pop         ebp
 005E9E9E    ret
*}
end;

//005E9EA0
{*function sub_005E9EA0(?:TOpenDialog; ?:?):?;
begin
 005E9EA0    push        ebp
 005E9EA1    mov         ebp,esp
 005E9EA3    add         esp,0FFFFFFF4
 005E9EA6    push        esi
 005E9EA7    mov         dword ptr [ebp-8],edx
 005E9EAA    mov         dword ptr [ebp-4],eax
 005E9EAD    mov         edx,dword ptr [ebp-8]
 005E9EB0    mov         eax,dword ptr [ebp-4]
 005E9EB3    call        005EA68C
 005E9EB8    mov         eax,dword ptr [ebp-4]
 005E9EBB    mov         si,0FFED
 005E9EBF    call        @CallDynaInst
 005E9EC4    mov         byte ptr [ebp-9],al
 005E9EC7    mov         eax,dword ptr [ebp-4]
 005E9ECA    mov         eax,dword ptr [eax+7C]
 005E9ECD    mov         edx,dword ptr [eax]
 005E9ECF    call        dword ptr [edx+44]
 005E9ED2    mov         al,byte ptr [ebp-9]
 005E9ED5    pop         esi
 005E9ED6    mov         esp,ebp
 005E9ED8    pop         ebp
 005E9ED9    ret
end;*}

//005E9EDC
{*procedure sub_005E9EDC(?:?);
begin
 005E9EDC    push        ebp
 005E9EDD    mov         ebp,esp
 005E9EDF    add         esp,0FFFFFFF0
 005E9EE2    push        esi
 005E9EE3    mov         dword ptr [ebp-8],edx
 005E9EE6    mov         dword ptr [ebp-4],eax
 005E9EE9    mov         eax,dword ptr [ebp-8]
 005E9EEC    xor         edx,edx
 005E9EEE    mov         dword ptr [eax+0C],edx
 005E9EF1    mov         eax,dword ptr [ebp-8]
 005E9EF4    cmp         dword ptr [eax],110
>005E9EFA    jne         005E9F09
 005E9EFC    mov         eax,dword ptr [ebp-4]
 005E9EFF    test        byte ptr [eax+5E],1;TOpenDialog.?f5E:byte
>005E9F03    je          005EA025
 005E9F09    mov         eax,dword ptr [ebp-8]
 005E9F0C    cmp         dword ptr [eax],4E
>005E9F0F    jne         005EA01A
 005E9F15    mov         eax,dword ptr [ebp-8]
 005E9F18    mov         eax,dword ptr [eax+8]
 005E9F1B    mov         eax,dword ptr [eax+8]
 005E9F1E    add         eax,260
 005E9F23    cmp         eax,7
>005E9F26    ja          005EA01A
 005E9F2C    jmp         dword ptr [eax*4+5E9F33]
 005E9F2C    dd          005E9FEB
 005E9F2C    dd          005E9FBA
 005E9F2C    dd          005E9F53
 005E9F2C    dd          005EA01A
 005E9F2C    dd          005EA01A
 005E9F2C    dd          005E9FAC
 005E9F2C    dd          005E9F9E
 005E9F2C    dd          005E9F90
 005E9F53    mov         eax,dword ptr [ebp-8]
 005E9F56    mov         eax,dword ptr [eax+8]
 005E9F59    mov         edx,dword ptr [eax+0C]
 005E9F5C    mov         eax,dword ptr [ebp-4]
 005E9F5F    call        005E9EA0
 005E9F64    test        al,al
>005E9F66    jne         005EA01A
 005E9F6C    mov         eax,dword ptr [ebp-8]
 005E9F6F    mov         dword ptr [eax+0C],1
 005E9F76    mov         eax,dword ptr [ebp-8]
 005E9F79    mov         eax,dword ptr [eax+0C]
 005E9F7C    push        eax
 005E9F7D    push        0
 005E9F7F    mov         eax,dword ptr [ebp-4]
 005E9F82    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 005E9F85    push        eax
 005E9F86    call        USER32.SetWindowLongA
>005E9F8B    jmp         005EA025
 005E9F90    mov         eax,dword ptr [ebp-4]
 005E9F93    mov         si,0FFEE
 005E9F97    call        @CallDynaInst;TCommonDialog.sub_005E9D04
>005E9F9C    jmp         005EA01A
 005E9F9E    mov         eax,dword ptr [ebp-4]
 005E9FA1    mov         si,0FFEC
 005E9FA5    call        @CallDynaInst;TOpenDialog.sub_005EA064
>005E9FAA    jmp         005EA01A
 005E9FAC    mov         eax,dword ptr [ebp-4]
 005E9FAF    mov         si,0FFEB
 005E9FB3    call        @CallDynaInst;TOpenDialog.sub_005EA090
>005E9FB8    jmp         005EA01A
 005E9FBA    mov         eax,dword ptr [ebp-8]
 005E9FBD    mov         eax,dword ptr [eax+8]
 005E9FC0    mov         eax,dword ptr [eax+0C]
 005E9FC3    mov         eax,dword ptr [eax+18]
 005E9FC6    mov         dword ptr [ebp-0C],eax
 005E9FC9    mov         eax,dword ptr [ebp-0C]
 005E9FCC    mov         edx,dword ptr [ebp-4]
 005E9FCF    cmp         eax,dword ptr [edx+68];TOpenDialog.FCurrentFilterIndex:Integer
>005E9FD2    je          005EA01A
 005E9FD4    mov         eax,dword ptr [ebp-0C]
 005E9FD7    mov         edx,dword ptr [ebp-4]
 005E9FDA    mov         dword ptr [edx+68],eax;TOpenDialog.FCurrentFilterIndex:Integer
 005E9FDD    mov         eax,dword ptr [ebp-4]
 005E9FE0    mov         si,0FFEA
 005E9FE4    call        @CallDynaInst;TOpenDialog.sub_005EA0BC
>005E9FE9    jmp         005EA01A
 005E9FEB    mov         eax,dword ptr [ebp-8]
 005E9FEE    cmp         dword ptr [eax+8],0
>005E9FF2    je          005EA01A
 005E9FF4    mov         byte ptr [ebp-0D],1
 005E9FF8    lea         ecx,[ebp-0D]
 005E9FFB    mov         eax,dword ptr [ebp-8]
 005E9FFE    mov         eax,dword ptr [eax+8]
 005EA001    mov         edx,eax
 005EA003    mov         eax,dword ptr [ebp-4]
 005EA006    mov         si,0FFE9
 005EA00A    call        @CallDynaInst;TOpenDialog.sub_005EA8F0
 005EA00F    xor         eax,eax
 005EA011    mov         al,byte ptr [ebp-0D]
 005EA014    mov         edx,dword ptr [ebp-8]
 005EA017    mov         dword ptr [edx+0C],eax
 005EA01A    mov         edx,dword ptr [ebp-8]
 005EA01D    mov         eax,dword ptr [ebp-4]
 005EA020    call        005E9B74
 005EA025    pop         esi
 005EA026    mov         esp,ebp
 005EA028    pop         ebp
 005EA029    ret
end;*}

//005EA02C
procedure TOpenDialog.sub_005EA02C;
begin
{*
 005EA02C    push        ebp
 005EA02D    mov         ebp,esp
 005EA02F    add         esp,0FFFFFFF8
 005EA032    push        ebx
 005EA033    mov         dword ptr [ebp-4],eax
 005EA036    mov         byte ptr [ebp-5],1
 005EA03A    mov         eax,dword ptr [ebp-4]
 005EA03D    cmp         word ptr [eax+0A2],0;TOpenDialog.?fA2:word
>005EA045    je          005EA05C
 005EA047    lea         ecx,[ebp-5]
 005EA04A    mov         ebx,dword ptr [ebp-4]
 005EA04D    mov         edx,dword ptr [ebp-4]
 005EA050    mov         eax,dword ptr [ebx+0A4];TOpenDialog.?fA4:dword
 005EA056    call        dword ptr [ebx+0A0];TOpenDialog.OnCanClose
 005EA05C    mov         al,byte ptr [ebp-5]
 005EA05F    pop         ebx
 005EA060    pop         ecx
 005EA061    pop         ecx
 005EA062    pop         ebp
 005EA063    ret
*}
end;

//005EA064
procedure TOpenDialog.sub_005EA064;
begin
{*
 005EA064    push        ebp
 005EA065    mov         ebp,esp
 005EA067    push        ecx
 005EA068    push        ebx
 005EA069    mov         dword ptr [ebp-4],eax
 005EA06C    mov         eax,dword ptr [ebp-4]
 005EA06F    cmp         word ptr [eax+8A],0;TOpenDialog.?f8A:word
>005EA077    je          005EA08B
 005EA079    mov         ebx,dword ptr [ebp-4]
 005EA07C    mov         edx,dword ptr [ebp-4]
 005EA07F    mov         eax,dword ptr [ebx+8C];TOpenDialog.?f8C:dword
 005EA085    call        dword ptr [ebx+88];TOpenDialog.OnSelectionChange
 005EA08B    pop         ebx
 005EA08C    pop         ecx
 005EA08D    pop         ebp
 005EA08E    ret
*}
end;

//005EA090
procedure TOpenDialog.sub_005EA090;
begin
{*
 005EA090    push        ebp
 005EA091    mov         ebp,esp
 005EA093    push        ecx
 005EA094    push        ebx
 005EA095    mov         dword ptr [ebp-4],eax
 005EA098    mov         eax,dword ptr [ebp-4]
 005EA09B    cmp         word ptr [eax+92],0;TOpenDialog.?f92:word
>005EA0A3    je          005EA0B7
 005EA0A5    mov         ebx,dword ptr [ebp-4]
 005EA0A8    mov         edx,dword ptr [ebp-4]
 005EA0AB    mov         eax,dword ptr [ebx+94];TOpenDialog.?f94:dword
 005EA0B1    call        dword ptr [ebx+90];TOpenDialog.OnFolderChange
 005EA0B7    pop         ebx
 005EA0B8    pop         ecx
 005EA0B9    pop         ebp
 005EA0BA    ret
*}
end;

//005EA0BC
procedure TOpenDialog.sub_005EA0BC;
begin
{*
 005EA0BC    push        ebp
 005EA0BD    mov         ebp,esp
 005EA0BF    push        ecx
 005EA0C0    push        ebx
 005EA0C1    mov         dword ptr [ebp-4],eax
 005EA0C4    mov         eax,dword ptr [ebp-4]
 005EA0C7    cmp         word ptr [eax+9A],0;TOpenDialog.?f9A:word
>005EA0CF    je          005EA0E3
 005EA0D1    mov         ebx,dword ptr [ebp-4]
 005EA0D4    mov         edx,dword ptr [ebp-4]
 005EA0D7    mov         eax,dword ptr [ebx+9C];TOpenDialog.?f9C:dword
 005EA0DD    call        dword ptr [ebx+98];TOpenDialog.OnTypeChange
 005EA0E3    pop         ebx
 005EA0E4    pop         ecx
 005EA0E5    pop         ebp
 005EA0E6    ret
*}
end;

//005EA134
procedure TOpenDialog.DefineProperties(Filer:TFiler);
begin
{*
 005EA134    push        ebp
 005EA135    mov         ebp,esp
 005EA137    add         esp,0FFFFFFF8
 005EA13A    push        ebx
 005EA13B    mov         dword ptr [ebp-8],edx
 005EA13E    mov         dword ptr [ebp-4],eax
 005EA141    mov         edx,dword ptr [ebp-8]
 005EA144    mov         eax,dword ptr [ebp-4]
 005EA147    call        TComponent.DefineProperties
 005EA14C    mov         eax,dword ptr [ebp-4]
 005EA14F    push        eax
 005EA150    push        5EA0E8
 005EA155    push        0
 005EA157    push        0
 005EA159    xor         ecx,ecx
 005EA15B    mov         edx,5EA178;'FileEditStyle'
 005EA160    mov         eax,dword ptr [ebp-8]
 005EA163    mov         ebx,dword ptr [eax]
 005EA165    call        dword ptr [ebx+4];@AbstractError
 005EA168    pop         ebx
 005EA169    pop         ecx
 005EA16A    pop         ecx
 005EA16B    pop         ebp
 005EA16C    ret
*}
end;

//005EA188
{*procedure sub_005EA188(?:String; ?:?);
begin
 005EA188    push        ebp
 005EA189    mov         ebp,esp
 005EA18B    add         esp,0FFFFFFF4
 005EA18E    mov         dword ptr [ebp-8],edx
 005EA191    mov         dword ptr [ebp-4],eax
 005EA194    mov         eax,dword ptr [ebp-8]
 005EA197    call        @LStrClr
 005EA19C    cmp         dword ptr [ebp-4],0
>005EA1A0    je          005EA1E8
 005EA1A2    mov         eax,dword ptr [ebp-8]
 005EA1A5    mov         ecx,5EA1F4;#0
 005EA1AA    mov         edx,dword ptr [ebp-4]
 005EA1AD    call        @LStrCat3
 005EA1B2    mov         eax,dword ptr [ebp-8]
 005EA1B5    mov         eax,dword ptr [eax]
 005EA1B7    call        @LStrToPChar
 005EA1BC    mov         dl,7C
 005EA1BE    call        0065D78C
 005EA1C3    mov         dword ptr [ebp-0C],eax
 005EA1C6    cmp         dword ptr [ebp-0C],0
>005EA1CA    je          005EA1E8
 005EA1CC    mov         eax,dword ptr [ebp-0C]
 005EA1CF    mov         byte ptr [eax],0
 005EA1D2    inc         dword ptr [ebp-0C]
 005EA1D5    mov         dl,7C
 005EA1D7    mov         eax,dword ptr [ebp-0C]
 005EA1DA    call        0065D78C
 005EA1DF    mov         dword ptr [ebp-0C],eax
 005EA1E2    cmp         dword ptr [ebp-0C],0
>005EA1E6    jne         005EA1CC
 005EA1E8    mov         esp,ebp
 005EA1EA    pop         ebp
 005EA1EB    ret
end;*}

//005EA1F8
{*function sub_005EA1F8(?:TOpenDialog; ?:BOOL):?;
begin
 005EA1F8    push        ebp
 005EA1F9    mov         ebp,esp
 005EA1FB    add         esp,0FFFFFF88
 005EA1FE    push        ebx
 005EA1FF    xor         ecx,ecx
 005EA201    mov         dword ptr [ebp-78],ecx
 005EA204    mov         dword ptr [ebp-14],ecx
 005EA207    mov         dword ptr [ebp-18],ecx
 005EA20A    mov         dword ptr [ebp-1C],ecx
 005EA20D    mov         dword ptr [ebp-8],edx
 005EA210    mov         dword ptr [ebp-4],eax
 005EA213    xor         eax,eax
 005EA215    push        ebp
 005EA216    push        5EA51C
 005EA21B    push        dword ptr fs:[eax]
 005EA21E    mov         dword ptr fs:[eax],esp
 005EA221    mov         eax,dword ptr [ebp-4]
 005EA224    mov         eax,dword ptr [eax+7C];TSavePictureDialog.FFiles:TStrings
 005EA227    mov         edx,dword ptr [eax]
 005EA229    call        dword ptr [edx+44];TStrings.Clear
 005EA22C    lea         eax,[ebp-74]
 005EA22F    xor         ecx,ecx
 005EA231    mov         edx,58
 005EA236    call        @FillChar
 005EA23B    mov         eax,[006EA0F0];^gvar_006E4990
 005EA240    cmp         dword ptr [eax],5
>005EA243    jl          005EA24F
 005EA245    mov         eax,[006EA0EC];^gvar_006E498C
 005EA24A    cmp         dword ptr [eax],2
>005EA24D    je          005EA26D
 005EA24F    mov         eax,[006EA0EC];^gvar_006E498C
 005EA254    cmp         dword ptr [eax],1
>005EA257    jne         005EA276
 005EA259    mov         eax,[006EA0F0];^gvar_006E4990
 005EA25E    cmp         dword ptr [eax],4
>005EA261    jl          005EA276
 005EA263    mov         eax,[006EA0F4];^gvar_006E4994
 005EA268    cmp         dword ptr [eax],5A
>005EA26B    jl          005EA276
 005EA26D    mov         dword ptr [ebp-74],58
>005EA274    jmp         005EA27D
 005EA276    mov         dword ptr [ebp-74],4C
 005EA27D    mov         eax,[006EA390];0x0 gvar_006EA390
 005EA282    mov         dword ptr [ebp-6C],eax
 005EA285    push        ebp
 005EA286    lea         edx,[ebp-78]
 005EA289    mov         eax,dword ptr [ebp-4]
 005EA28C    mov         eax,dword ptr [eax+60];TSavePictureDialog.Filter:String
 005EA28F    call        005EA188
 005EA294    pop         ecx
 005EA295    mov         edx,dword ptr [ebp-78]
 005EA298    lea         eax,[ebp-14]
 005EA29B    call        @LStrLAsg
 005EA2A0    mov         eax,dword ptr [ebp-14]
 005EA2A3    call        @LStrToPChar
 005EA2A8    mov         dword ptr [ebp-68],eax
 005EA2AB    mov         eax,dword ptr [ebp-4]
 005EA2AE    mov         eax,dword ptr [eax+64];TSavePictureDialog.FilterIndex:Integer
 005EA2B1    mov         dword ptr [ebp-5C],eax
 005EA2B4    mov         eax,dword ptr [ebp-4]
 005EA2B7    mov         eax,dword ptr [eax+64];TSavePictureDialog.FilterIndex:Integer
 005EA2BA    mov         edx,dword ptr [ebp-4]
 005EA2BD    mov         dword ptr [edx+68],eax;TSavePictureDialog.FCurrentFilterIndex:Integer
 005EA2C0    mov         eax,dword ptr [ebp-4]
 005EA2C3    test        byte ptr [eax+5C],40;TSavePictureDialog.Options:TOpenOptions
>005EA2C7    je          005EA2D2
 005EA2C9    mov         dword ptr [ebp-54],0FFEF
>005EA2D0    jmp         005EA2D9
 005EA2D2    mov         dword ptr [ebp-54],104
 005EA2D9    mov         edx,dword ptr [ebp-54]
 005EA2DC    add         edx,2
 005EA2DF    lea         eax,[ebp-18]
 005EA2E2    call        @LStrSetLength
 005EA2E7    mov         eax,dword ptr [ebp-18]
 005EA2EA    call        @LStrToPChar
 005EA2EF    mov         dword ptr [ebp-58],eax
 005EA2F2    mov         edx,dword ptr [ebp-54]
 005EA2F5    add         edx,2
 005EA2F8    mov         eax,dword ptr [ebp-58]
 005EA2FB    xor         ecx,ecx
 005EA2FD    call        @FillChar
 005EA302    mov         eax,dword ptr [ebp-4]
 005EA305    mov         eax,dword ptr [eax+78];TSavePictureDialog.FileName:TFileName
 005EA308    call        @LStrToPChar
 005EA30D    mov         edx,eax
 005EA30F    mov         ecx,dword ptr [ebp-54]
 005EA312    mov         eax,dword ptr [ebp-58]
 005EA315    call        StrLCopy
 005EA31A    mov         eax,dword ptr [ebp-4]
 005EA31D    cmp         dword ptr [eax+6C],0;TSavePictureDialog.InitialDir:String
>005EA321    jne         005EA336
 005EA323    cmp         byte ptr ds:[6E4134],0;gvar_006E4134
>005EA32A    je          005EA336
 005EA32C    mov         eax,5EA52C
 005EA331    mov         dword ptr [ebp-48],eax
>005EA334    jmp         005EA344
 005EA336    mov         eax,dword ptr [ebp-4]
 005EA339    mov         eax,dword ptr [eax+6C];TSavePictureDialog.InitialDir:String
 005EA33C    call        @LStrToPChar
 005EA341    mov         dword ptr [ebp-48],eax
 005EA344    mov         eax,dword ptr [ebp-4]
 005EA347    mov         eax,dword ptr [eax+70];TSavePictureDialog.Title:String
 005EA34A    call        @LStrToPChar
 005EA34F    mov         dword ptr [ebp-44],eax
 005EA352    mov         dword ptr [ebp-40],20
 005EA359    xor         eax,eax
 005EA35B    mov         dword ptr [ebp-20],eax
 005EA35E    mov         byte ptr [ebp-0D],0
 005EA362    mov         al,byte ptr [ebp-0D]
 005EA365    mov         edx,dword ptr [ebp-4]
 005EA368    cmp         al,1F
>005EA36A    ja          005EA373
 005EA36C    and         eax,7F
 005EA36F    bt          dword ptr [edx+5C],eax;TSavePictureDialog.Options:TOpenOptions
>005EA373    jae         005EA384
 005EA375    xor         eax,eax
 005EA377    mov         al,byte ptr [ebp-0D]
 005EA37A    mov         eax,dword ptr [eax*4+6E4140]
 005EA381    or          dword ptr [ebp-40],eax
 005EA384    inc         byte ptr [ebp-0D]
 005EA387    cmp         byte ptr [ebp-0D],16
>005EA38B    jne         005EA362
 005EA38D    mov         eax,[006E9DD8];^gvar_006ECDE0
 005EA392    cmp         byte ptr [eax],0
>005EA395    je          005EA404
 005EA397    xor         dword ptr [ebp-40],80000
 005EA39E    mov         eax,[006EA0F0];^gvar_006E4990
 005EA3A3    cmp         dword ptr [eax],5
>005EA3A6    jl          005EA3B2
 005EA3A8    mov         eax,[006EA0EC];^gvar_006E498C
 005EA3AD    cmp         dword ptr [eax],2
>005EA3B0    je          005EA3D0
 005EA3B2    mov         eax,[006EA0EC];^gvar_006E498C
 005EA3B7    cmp         dword ptr [eax],1
>005EA3BA    jne         005EA40B
 005EA3BC    mov         eax,[006EA0F0];^gvar_006E4990
 005EA3C1    cmp         dword ptr [eax],4
>005EA3C4    jl          005EA40B
 005EA3C6    mov         eax,[006EA0F4];^gvar_006E4994
 005EA3CB    cmp         dword ptr [eax],5A
>005EA3CE    jl          005EA40B
 005EA3D0    mov         byte ptr [ebp-0E],0
 005EA3D4    mov         al,byte ptr [ebp-0E]
 005EA3D7    mov         edx,dword ptr [ebp-4]
 005EA3DA    cmp         al,7
>005EA3DC    ja          005EA3E8
 005EA3DE    and         eax,7F
 005EA3E1    bt          dword ptr [edx+0B0],eax;TSavePictureDialog.OptionsEx:TOpenOptionsEx
>005EA3E8    jae         005EA3F9
 005EA3EA    xor         eax,eax
 005EA3EC    mov         al,byte ptr [ebp-0E]
 005EA3EF    mov         eax,dword ptr [eax*4+6E4198]
 005EA3F6    or          dword ptr [ebp-20],eax
 005EA3F9    inc         byte ptr [ebp-0E]
 005EA3FC    cmp         byte ptr [ebp-0E],1
>005EA400    jne         005EA3D4
>005EA402    jmp         005EA40B
 005EA404    and         dword ptr [ebp-40],0FFF7FFFF
 005EA40B    lea         eax,[ebp-1C]
 005EA40E    mov         edx,dword ptr [ebp-4]
 005EA411    mov         edx,dword ptr [edx+74];TSavePictureDialog.DefaultExt:String
 005EA414    call        @LStrLAsg
 005EA419    cmp         dword ptr [ebp-1C],0
>005EA41D    jne         005EA445
 005EA41F    test        byte ptr [ebp-3E],8
>005EA423    jne         005EA445
 005EA425    lea         edx,[ebp-1C]
 005EA428    mov         eax,dword ptr [ebp-4]
 005EA42B    mov         eax,dword ptr [eax+78];TSavePictureDialog.FileName:TFileName
 005EA42E    call        006585C4
 005EA433    lea         eax,[ebp-1C]
 005EA436    mov         ecx,1
 005EA43B    mov         edx,1
 005EA440    call        @LStrDelete
 005EA445    cmp         dword ptr [ebp-1C],0
>005EA449    je          005EA456
 005EA44B    mov         eax,dword ptr [ebp-1C]
 005EA44E    call        @LStrToPChar
 005EA453    mov         dword ptr [ebp-38],eax
 005EA456    mov         eax,dword ptr [ebp-4]
 005EA459    test        byte ptr [eax+5E],1;TSavePictureDialog.?f5E:byte
>005EA45D    jne         005EA469
 005EA45F    mov         eax,[006E9DD8];^gvar_006ECDE0
 005EA464    cmp         byte ptr [eax],0
>005EA467    jne         005EA472
 005EA469    mov         dword ptr [ebp-30],5E996C
>005EA470    jmp         005EA479
 005EA472    mov         dword ptr [ebp-30],5E9D28
 005EA479    mov         eax,dword ptr [ebp-4]
 005EA47C    cmp         dword ptr [eax+44],0;TSavePictureDialog.FTemplate:PChar
>005EA480    je          005EA48F
 005EA482    or          dword ptr [ebp-40],40
 005EA486    mov         eax,dword ptr [ebp-4]
 005EA489    mov         eax,dword ptr [eax+44];TSavePictureDialog.FTemplate:PChar
 005EA48C    mov         dword ptr [ebp-2C],eax
 005EA48F    mov         eax,[006E9DCC];^Application:TApplication
 005EA494    mov         eax,dword ptr [eax]
 005EA496    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005EA499    mov         dword ptr [ebp-70],eax
 005EA49C    lea         ecx,[ebp-74]
 005EA49F    mov         edx,dword ptr [ebp-8]
 005EA4A2    mov         eax,dword ptr [ebp-4]
 005EA4A5    mov         ebx,dword ptr [eax]
 005EA4A7    call        dword ptr [ebx+38];TSavePictureDialog.sub_005E9C08
 005EA4AA    mov         dword ptr [ebp-0C],eax
 005EA4AD    cmp         dword ptr [ebp-0C],0
>005EA4B1    je          005EA4F9
 005EA4B3    lea         edx,[ebp-74]
 005EA4B6    mov         eax,dword ptr [ebp-4]
 005EA4B9    call        005EA68C
 005EA4BE    test        byte ptr [ebp-3F],4
>005EA4C2    je          005EA4D0
 005EA4C4    mov         eax,dword ptr [ebp-4]
 005EA4C7    or          dword ptr [eax+5C],80;TSavePictureDialog.Options:TOpenOptions
>005EA4CE    jmp         005EA4DA
 005EA4D0    mov         eax,dword ptr [ebp-4]
 005EA4D3    and         dword ptr [eax+5C],0FFFFFF7F;TSavePictureDialog.Options:TOpenOptions
 005EA4DA    test        byte ptr [ebp-40],1
>005EA4DE    je          005EA4E9
 005EA4E0    mov         eax,dword ptr [ebp-4]
 005EA4E3    or          dword ptr [eax+5C],1;TSavePictureDialog.Options:TOpenOptions
>005EA4E7    jmp         005EA4F0
 005EA4E9    mov         eax,dword ptr [ebp-4]
 005EA4EC    and         dword ptr [eax+5C],0FFFFFFFE;TSavePictureDialog.Options:TOpenOptions
 005EA4F0    mov         eax,dword ptr [ebp-5C]
 005EA4F3    mov         edx,dword ptr [ebp-4]
 005EA4F6    mov         dword ptr [edx+64],eax;TSavePictureDialog.FilterIndex:Integer
 005EA4F9    xor         eax,eax
 005EA4FB    pop         edx
 005EA4FC    pop         ecx
 005EA4FD    pop         ecx
 005EA4FE    mov         dword ptr fs:[eax],edx
 005EA501    push        5EA523
 005EA506    lea         eax,[ebp-78]
 005EA509    call        @LStrClr
 005EA50E    lea         eax,[ebp-1C]
 005EA511    mov         edx,3
 005EA516    call        @LStrArrayClr
 005EA51B    ret
>005EA51C    jmp         @HandleFinally
>005EA521    jmp         005EA506
 005EA523    mov         eax,dword ptr [ebp-0C]
 005EA526    pop         ebx
 005EA527    mov         esp,ebp
 005EA529    pop         ebp
 005EA52A    ret
end;*}

//005EA530
{*function sub_005EA530(?:?; ?:AnsiString; ?:?):?;
begin
 005EA530    push        ebp
 005EA531    mov         ebp,esp
 005EA533    add         esp,0FFFFFFF4
 005EA536    mov         dword ptr [ebp-8],edx
 005EA539    mov         dword ptr [ebp-4],eax
 005EA53C    mov         eax,dword ptr [ebp+8]
 005EA53F    mov         dl,byte ptr [eax-1]
 005EA542    mov         eax,dword ptr [ebp-4]
 005EA545    call        0065D78C
 005EA54A    mov         dword ptr [ebp-0C],eax
 005EA54D    cmp         dword ptr [ebp-0C],0
>005EA551    jne         005EA56B
 005EA553    mov         eax,dword ptr [ebp-8]
 005EA556    mov         edx,dword ptr [ebp-4]
 005EA559    call        @LStrFromPChar
 005EA55E    mov         eax,dword ptr [ebp-4]
 005EA561    call        StrEnd
 005EA566    mov         dword ptr [ebp-0C],eax
>005EA569    jmp         005EA57F
 005EA56B    mov         ecx,dword ptr [ebp-0C]
 005EA56E    sub         ecx,dword ptr [ebp-4]
 005EA571    mov         eax,dword ptr [ebp-8]
 005EA574    mov         edx,dword ptr [ebp-4]
 005EA577    call        @LStrFromPCharLen
 005EA57C    inc         dword ptr [ebp-0C]
 005EA57F    mov         eax,dword ptr [ebp-0C]
 005EA582    mov         esp,ebp
 005EA584    pop         ebp
 005EA585    ret
end;*}

//005EA588
{*procedure sub_005EA588(?:?; ?:?);
begin
 005EA588    push        ebp
 005EA589    mov         ebp,esp
 005EA58B    push        0
 005EA58D    push        0
 005EA58F    push        0
 005EA591    mov         dword ptr [ebp-4],eax
 005EA594    xor         eax,eax
 005EA596    push        ebp
 005EA597    push        5EA675
 005EA59C    push        dword ptr fs:[eax]
 005EA59F    mov         dword ptr fs:[eax],esp
 005EA5A2    mov         eax,dword ptr [ebp+8]
 005EA5A5    push        eax
 005EA5A6    lea         edx,[ebp-8]
 005EA5A9    mov         eax,dword ptr [ebp-4]
 005EA5AC    call        005EA530
 005EA5B1    pop         ecx
 005EA5B2    mov         dword ptr [ebp-4],eax
 005EA5B5    mov         eax,dword ptr [ebp+8]
 005EA5B8    push        eax
 005EA5B9    lea         edx,[ebp-0C]
 005EA5BC    mov         eax,dword ptr [ebp-4]
 005EA5BF    call        005EA530
 005EA5C4    pop         ecx
 005EA5C5    mov         dword ptr [ebp-4],eax
 005EA5C8    cmp         dword ptr [ebp-0C],0
>005EA5CC    jne         005EA5E1
 005EA5CE    mov         eax,dword ptr [ebp+8]
 005EA5D1    mov         eax,dword ptr [eax-8]
 005EA5D4    mov         eax,dword ptr [eax+7C]
 005EA5D7    mov         edx,dword ptr [ebp-8]
 005EA5DA    mov         ecx,dword ptr [eax]
 005EA5DC    call        dword ptr [ecx+38]
>005EA5DF    jmp         005EA65A
 005EA5E1    mov         eax,dword ptr [ebp-8]
 005EA5E4    call        00658280
 005EA5E9    cmp         byte ptr [eax],5C
>005EA5EC    je          005EA5FB
 005EA5EE    lea         eax,[ebp-8]
 005EA5F1    mov         edx,5EA688;'\'
 005EA5F6    call        @LStrCat
 005EA5FB    mov         eax,dword ptr [ebp-0C]
 005EA5FE    cmp         byte ptr [eax],5C
>005EA601    je          005EA630
 005EA603    mov         eax,dword ptr [ebp-0C]
 005EA606    call        @LStrLen
 005EA60B    cmp         eax,3
>005EA60E    jle         005EA622
 005EA610    mov         eax,dword ptr [ebp-0C]
 005EA613    cmp         byte ptr [eax+1],3A
>005EA617    jne         005EA622
 005EA619    mov         eax,dword ptr [ebp-0C]
 005EA61C    cmp         byte ptr [eax+2],5C
>005EA620    je          005EA630
 005EA622    lea         eax,[ebp-0C]
 005EA625    mov         ecx,dword ptr [ebp-0C]
 005EA628    mov         edx,dword ptr [ebp-8]
 005EA62B    call        @LStrCat3
 005EA630    mov         eax,dword ptr [ebp+8]
 005EA633    mov         eax,dword ptr [eax-8]
 005EA636    mov         eax,dword ptr [eax+7C]
 005EA639    mov         edx,dword ptr [ebp-0C]
 005EA63C    mov         ecx,dword ptr [eax]
 005EA63E    call        dword ptr [ecx+38]
 005EA641    mov         eax,dword ptr [ebp+8]
 005EA644    push        eax
 005EA645    lea         edx,[ebp-0C]
 005EA648    mov         eax,dword ptr [ebp-4]
 005EA64B    call        005EA530
 005EA650    pop         ecx
 005EA651    mov         dword ptr [ebp-4],eax
 005EA654    cmp         dword ptr [ebp-0C],0
>005EA658    jne         005EA5FB
 005EA65A    xor         eax,eax
 005EA65C    pop         edx
 005EA65D    pop         ecx
 005EA65E    pop         ecx
 005EA65F    mov         dword ptr fs:[eax],edx
 005EA662    push        5EA67C
 005EA667    lea         eax,[ebp-0C]
 005EA66A    mov         edx,2
 005EA66F    call        @LStrArrayClr
 005EA674    ret
>005EA675    jmp         @HandleFinally
>005EA67A    jmp         005EA667
 005EA67C    mov         esp,ebp
 005EA67E    pop         ebp
 005EA67F    ret
end;*}

//005EA68C
procedure sub_005EA68C(?:TSavePictureDialog; ?:Byte);
begin
{*
 005EA68C    push        ebp
 005EA68D    mov         ebp,esp
 005EA68F    add         esp,0FFFFFFF0
 005EA692    push        ebx
 005EA693    xor         ecx,ecx
 005EA695    mov         dword ptr [ebp-10],ecx
 005EA698    mov         dword ptr [ebp-0C],edx
 005EA69B    mov         dword ptr [ebp-8],eax
 005EA69E    xor         eax,eax
 005EA6A0    push        ebp
 005EA6A1    push        5EA740
 005EA6A6    push        dword ptr fs:[eax]
 005EA6A9    mov         dword ptr fs:[eax],esp
 005EA6AC    mov         byte ptr [ebp-1],0
 005EA6B0    mov         eax,dword ptr [ebp-8]
 005EA6B3    test        byte ptr [eax+5C],40;TSavePictureDialog.Options:TOpenOptions
>005EA6B7    je          005EA6D0
 005EA6B9    mov         eax,dword ptr [ebp-8]
 005EA6BC    test        byte ptr [eax+5E],1;TSavePictureDialog.?f5E:byte
>005EA6C0    jne         005EA6CC
 005EA6C2    mov         eax,[006E9DD8];^gvar_006ECDE0
 005EA6C7    cmp         byte ptr [eax],0
>005EA6CA    jne         005EA6D0
 005EA6CC    mov         byte ptr [ebp-1],20
 005EA6D0    mov         eax,dword ptr [ebp-8]
 005EA6D3    test        byte ptr [eax+5C],40;TSavePictureDialog.Options:TOpenOptions
>005EA6D7    je          005EA706
 005EA6D9    push        ebp
 005EA6DA    mov         eax,dword ptr [ebp-0C]
 005EA6DD    mov         eax,dword ptr [eax+1C]
 005EA6E0    call        005EA588
 005EA6E5    pop         ecx
 005EA6E6    lea         ecx,[ebp-10]
 005EA6E9    mov         eax,dword ptr [ebp-8]
 005EA6EC    mov         eax,dword ptr [eax+7C];TSavePictureDialog.FFiles:TStrings
 005EA6EF    xor         edx,edx
 005EA6F1    mov         ebx,dword ptr [eax]
 005EA6F3    call        dword ptr [ebx+0C];@AbstractError
 005EA6F6    mov         edx,dword ptr [ebp-10]
 005EA6F9    mov         eax,dword ptr [ebp-8]
 005EA6FC    add         eax,78;TSavePictureDialog.FileName:TFileName
 005EA6FF    call        @LStrAsg
>005EA704    jmp         005EA72A
 005EA706    push        ebp
 005EA707    mov         eax,dword ptr [ebp-8]
 005EA70A    lea         edx,[eax+78];TSavePictureDialog.FileName:TFileName
 005EA70D    mov         eax,dword ptr [ebp-0C]
 005EA710    mov         eax,dword ptr [eax+1C]
 005EA713    call        005EA530
 005EA718    pop         ecx
 005EA719    mov         eax,dword ptr [ebp-8]
 005EA71C    mov         edx,dword ptr [eax+78];TSavePictureDialog.FileName:TFileName
 005EA71F    mov         eax,dword ptr [ebp-8]
 005EA722    mov         eax,dword ptr [eax+7C];TSavePictureDialog.FFiles:TStrings
 005EA725    mov         ecx,dword ptr [eax]
 005EA727    call        dword ptr [ecx+38];TStrings.sub_00646C94
 005EA72A    xor         eax,eax
 005EA72C    pop         edx
 005EA72D    pop         ecx
 005EA72E    pop         ecx
 005EA72F    mov         dword ptr fs:[eax],edx
 005EA732    push        5EA747
 005EA737    lea         eax,[ebp-10]
 005EA73A    call        @LStrClr
 005EA73F    ret
>005EA740    jmp         @HandleFinally
>005EA745    jmp         005EA737
 005EA747    pop         ebx
 005EA748    mov         esp,ebp
 005EA74A    pop         ebp
 005EA74B    ret
*}
end;

//005EA74C
{*procedure sub_005EA74C(?:?);
begin
 005EA74C    push        ebp
 005EA74D    mov         ebp,esp
 005EA74F    add         esp,0FFFFFFF8
 005EA752    mov         dword ptr [ebp-8],edx
 005EA755    mov         dword ptr [ebp-4],eax
 005EA758    mov         eax,dword ptr [ebp-4]
 005EA75B    cmp         dword ptr [eax+3C],0;TOpenDialog.FHandle:HWND
>005EA75F    je          005EA7AD
 005EA761    mov         eax,dword ptr [ebp-4]
 005EA764    test        byte ptr [eax+5E],1;TOpenDialog.?f5E:byte
>005EA768    jne         005EA79B
 005EA76A    mov         eax,dword ptr [ebp-8]
 005EA76D    push        eax
 005EA76E    push        45F
 005EA773    mov         eax,dword ptr [ebp-4]
 005EA776    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 005EA779    push        eax
 005EA77A    call        USER32.GetDlgItem
 005EA77F    push        eax
 005EA780    call        USER32.GetWindowRect
 005EA785    push        2
 005EA787    mov         eax,dword ptr [ebp-8]
 005EA78A    push        eax
 005EA78B    mov         eax,dword ptr [ebp-4]
 005EA78E    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 005EA791    push        eax
 005EA792    push        0
 005EA794    call        USER32.MapWindowPoints
>005EA799    jmp         005EA7BE
 005EA79B    mov         eax,dword ptr [ebp-8]
 005EA79E    push        eax
 005EA79F    mov         eax,dword ptr [ebp-4]
 005EA7A2    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 005EA7A5    push        eax
 005EA7A6    call        USER32.GetClientRect
>005EA7AB    jmp         005EA7BE
 005EA7AD    push        0
 005EA7AF    mov         eax,dword ptr [ebp-8]
 005EA7B2    push        eax
 005EA7B3    xor         ecx,ecx
 005EA7B5    xor         edx,edx
 005EA7B7    xor         eax,eax
 005EA7B9    call        Rect
 005EA7BE    pop         ecx
 005EA7BF    pop         ecx
 005EA7C0    pop         ebp
 005EA7C1    ret
end;*}

//005EA7C4
{*procedure TOpenDialog.GetFileName(?:?);
begin
 005EA7C4    push        ebp
 005EA7C5    mov         ebp,esp
 005EA7C7    add         esp,0FFFFFEF0
 005EA7CD    mov         dword ptr [ebp-8],edx
 005EA7D0    mov         dword ptr [ebp-4],eax
 005EA7D3    mov         eax,[006E9DD8];^gvar_006ECDE0
 005EA7D8    cmp         byte ptr [eax],0
>005EA7DB    je          005EA819
 005EA7DD    mov         eax,dword ptr [ebp-4]
 005EA7E0    cmp         dword ptr [eax+3C],0;TOpenDialog.FHandle:HWND
>005EA7E4    je          005EA819
 005EA7E6    lea         eax,[ebp-10D]
 005EA7EC    push        eax
 005EA7ED    push        105
 005EA7F2    push        465
 005EA7F7    mov         eax,dword ptr [ebp-4]
 005EA7FA    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 005EA7FD    push        eax
 005EA7FE    call        USER32.GetParent
 005EA803    push        eax
 005EA804    call        USER32.SendMessageA
 005EA809    mov         edx,dword ptr [ebp-8]
 005EA80C    lea         eax,[ebp-10D]
 005EA812    call        StrPas
>005EA817    jmp         005EA827
 005EA819    mov         eax,dword ptr [ebp-8]
 005EA81C    mov         edx,dword ptr [ebp-4]
 005EA81F    mov         edx,dword ptr [edx+78];TOpenDialog.FileName:TFileName
 005EA822    call        @LStrAsg
 005EA827    mov         esp,ebp
 005EA829    pop         ebp
 005EA82A    ret
end;*}

//005EA82C
{*function TOpenDialog.GetFilterIndex:?;
begin
 005EA82C    push        ebp
 005EA82D    mov         ebp,esp
 005EA82F    add         esp,0FFFFFFF8
 005EA832    mov         dword ptr [ebp-4],eax
 005EA835    mov         eax,dword ptr [ebp-4]
 005EA838    cmp         dword ptr [eax+3C],0;TOpenDialog.FHandle:HWND
>005EA83C    je          005EA849
 005EA83E    mov         eax,dword ptr [ebp-4]
 005EA841    mov         eax,dword ptr [eax+68];TOpenDialog.FCurrentFilterIndex:Integer
 005EA844    mov         dword ptr [ebp-8],eax
>005EA847    jmp         005EA852
 005EA849    mov         eax,dword ptr [ebp-4]
 005EA84C    mov         eax,dword ptr [eax+64];TOpenDialog.FilterIndex:Integer
 005EA84F    mov         dword ptr [ebp-8],eax
 005EA852    mov         eax,dword ptr [ebp-8]
 005EA855    pop         ecx
 005EA856    pop         ecx
 005EA857    pop         ebp
 005EA858    ret
end;*}

//005EA85C
procedure TOpenDialog.SetInitialDir(Value:String);
begin
{*
 005EA85C    push        ebp
 005EA85D    mov         ebp,esp
 005EA85F    add         esp,0FFFFFFF4
 005EA862    mov         dword ptr [ebp-8],edx
 005EA865    mov         dword ptr [ebp-4],eax
 005EA868    mov         eax,dword ptr [ebp-8]
 005EA86B    call        @LStrLen
 005EA870    mov         dword ptr [ebp-0C],eax
 005EA873    cmp         dword ptr [ebp-0C],1
>005EA877    jle         005EA8A0
 005EA879    mov         edx,dword ptr [ebp-0C]
 005EA87C    mov         eax,dword ptr [ebp-8]
 005EA87F    call        0065D354
 005EA884    test        al,al
>005EA886    je          005EA8A0
 005EA888    mov         ecx,dword ptr [ebp-0C]
 005EA88B    dec         ecx
 005EA88C    mov         edx,dword ptr [ebp-8]
 005EA88F    mov         eax,5EA8C4;':'
 005EA894    call        0065D3A0
 005EA899    test        al,al
>005EA89B    jne         005EA8A0
 005EA89D    dec         dword ptr [ebp-0C]
 005EA8A0    mov         eax,dword ptr [ebp-4]
 005EA8A3    add         eax,6C;TOpenDialog.InitialDir:String
 005EA8A6    push        eax
 005EA8A7    mov         ecx,dword ptr [ebp-0C]
 005EA8AA    mov         edx,1
 005EA8AF    mov         eax,dword ptr [ebp-8]
 005EA8B2    call        @LStrCopy
 005EA8B7    mov         esp,ebp
 005EA8B9    pop         ebp
 005EA8BA    ret
*}
end;

//005EA8C8
{*function TOpenDialog.Execute:?;
begin
 005EA8C8    push        ebp
 005EA8C9    mov         ebp,esp
 005EA8CB    add         esp,0FFFFFFF8
 005EA8CE    mov         dword ptr [ebp-4],eax
 005EA8D1    mov         edx,692896;COMDLG32.GetOpenFileNameA
 005EA8D6    mov         eax,dword ptr [ebp-4]
 005EA8D9    call        005EA1F8
 005EA8DE    cmp         eax,1
 005EA8E1    sbb         eax,eax
 005EA8E3    inc         eax
 005EA8E4    mov         byte ptr [ebp-5],al
 005EA8E7    mov         al,byte ptr [ebp-5]
 005EA8EA    pop         ecx
 005EA8EB    pop         ecx
 005EA8EC    pop         ebp
 005EA8ED    ret
end;*}

//005EA8F0
{*procedure TOpenDialog.sub_005EA8F0(?:?; ?:?);
begin
 005EA8F0    push        ebp
 005EA8F1    mov         ebp,esp
 005EA8F3    add         esp,0FFFFFFF4
 005EA8F6    push        ebx
 005EA8F7    mov         dword ptr [ebp-0C],ecx
 005EA8FA    mov         dword ptr [ebp-8],edx
 005EA8FD    mov         dword ptr [ebp-4],eax
 005EA900    mov         eax,dword ptr [ebp-4]
 005EA903    cmp         word ptr [eax+0AA],0;TOpenDialog.?fAA:word
>005EA90B    je          005EA922
 005EA90D    mov         ecx,dword ptr [ebp-0C]
 005EA910    mov         edx,dword ptr [ebp-8]
 005EA913    mov         ebx,dword ptr [ebp-4]
 005EA916    mov         eax,dword ptr [ebx+0AC];TOpenDialog.?fAC:dword
 005EA91C    call        dword ptr [ebx+0A8];TOpenDialog.OnIncludeItem
 005EA922    pop         ebx
 005EA923    mov         esp,ebp
 005EA925    pop         ebp
 005EA926    ret
end;*}

//005EA928
{*function TSaveDialog.Execute:?;
begin
 005EA928    push        ebp
 005EA929    mov         ebp,esp
 005EA92B    add         esp,0FFFFFFF8
 005EA92E    mov         dword ptr [ebp-4],eax
 005EA931    mov         edx,69289C;COMDLG32.GetSaveFileNameA:BOOL
 005EA936    mov         eax,dword ptr [ebp-4]
 005EA939    call        005EA1F8
 005EA93E    cmp         eax,1
 005EA941    sbb         eax,eax
 005EA943    inc         eax
 005EA944    mov         byte ptr [ebp-5],al
 005EA947    mov         al,byte ptr [ebp-5]
 005EA94A    pop         ecx
 005EA94B    pop         ecx
 005EA94C    pop         ebp
 005EA94D    ret
end;*}

//005EA950
constructor TColorDialog.Create(AOwner:TComponent);
begin
{*
 005EA950    push        ebp
 005EA951    mov         ebp,esp
 005EA953    add         esp,0FFFFFFF4
 005EA956    test        dl,dl
>005EA958    je          005EA962
 005EA95A    add         esp,0FFFFFFF0
 005EA95D    call        @ClassCreate
 005EA962    mov         dword ptr [ebp-0C],ecx
 005EA965    mov         byte ptr [ebp-5],dl
 005EA968    mov         dword ptr [ebp-4],eax
 005EA96B    mov         ecx,dword ptr [ebp-0C]
 005EA96E    xor         edx,edx
 005EA970    mov         eax,dword ptr [ebp-4]
 005EA973    call        TCommonDialog.Create
 005EA978    mov         dl,1
 005EA97A    mov         eax,[006428B0];TStringList
 005EA97F    call        TObject.Create;TStringList.Create
 005EA984    mov         edx,dword ptr [ebp-4]
 005EA987    mov         dword ptr [edx+60],eax;TColorDialog.CustomColors:TStrings
 005EA98A    mov         eax,dword ptr [ebp-4]
 005EA98D    cmp         byte ptr [ebp-5],0
>005EA991    je          005EA9A2
 005EA993    call        @AfterConstruction
 005EA998    pop         dword ptr fs:[0]
 005EA99F    add         esp,0C
 005EA9A2    mov         eax,dword ptr [ebp-4]
 005EA9A5    mov         esp,ebp
 005EA9A7    pop         ebp
 005EA9A8    ret
*}
end;

//005EA9AC
destructor TColorDialog.Destroy;
begin
{*
 005EA9AC    push        ebp
 005EA9AD    mov         ebp,esp
 005EA9AF    add         esp,0FFFFFFF8
 005EA9B2    call        @BeforeDestruction
 005EA9B7    mov         byte ptr [ebp-5],dl
 005EA9BA    mov         dword ptr [ebp-4],eax
 005EA9BD    mov         eax,dword ptr [ebp-4]
 005EA9C0    mov         eax,dword ptr [eax+60];TColorDialog.CustomColors:TStrings
 005EA9C3    call        TObject.Free
 005EA9C8    mov         dl,byte ptr [ebp-5]
 005EA9CB    and         dl,0FC
 005EA9CE    mov         eax,dword ptr [ebp-4]
 005EA9D1    call        TCommonDialog.Destroy
 005EA9D6    cmp         byte ptr [ebp-5],0
>005EA9DA    jle         005EA9E4
 005EA9DC    mov         eax,dword ptr [ebp-4]
 005EA9DF    call        @ClassDestroy
 005EA9E4    pop         ecx
 005EA9E5    pop         ecx
 005EA9E6    pop         ebp
 005EA9E7    ret
*}
end;

//005EA9E8
{*procedure sub_005EA9E8(?:?);
begin
 005EA9E8    push        ebp
 005EA9E9    mov         ebp,esp
 005EA9EB    add         esp,0FFFFFFE8
 005EA9EE    xor         eax,eax
 005EA9F0    mov         dword ptr [ebp-8],eax
 005EA9F3    mov         dword ptr [ebp-14],eax
 005EA9F6    mov         dword ptr [ebp-18],eax
 005EA9F9    xor         eax,eax
 005EA9FB    push        ebp
 005EA9FC    push        5EAA90
 005EAA01    push        dword ptr fs:[eax]
 005EAA04    mov         dword ptr fs:[eax],esp
 005EAA07    xor         eax,eax
 005EAA09    mov         dword ptr [ebp-4],eax
 005EAA0C    lea         eax,[ebp-8]
 005EAA0F    push        eax
 005EAA10    mov         eax,dword ptr [ebp+8]
 005EAA13    mov         edx,dword ptr [ebp-4]
 005EAA16    mov         eax,dword ptr [eax+edx*4-44]
 005EAA1A    mov         dword ptr [ebp-10],eax
 005EAA1D    mov         byte ptr [ebp-0C],0
 005EAA21    lea         edx,[ebp-10]
 005EAA24    xor         ecx,ecx
 005EAA26    mov         eax,5EAAA4;'%.6x'
 005EAA2B    call        00658FBC
 005EAA30    mov         eax,dword ptr [ebp-8]
 005EAA33    push        eax
 005EAA34    lea         eax,[ebp-18]
 005EAA37    mov         dl,byte ptr [ebp-4]
 005EAA3A    add         dl,41
 005EAA3D    call        @LStrFromChar
 005EAA42    mov         ecx,dword ptr [ebp-18]
 005EAA45    lea         eax,[ebp-14]
 005EAA48    mov         edx,5EAAB4;'Color'
 005EAA4D    call        @LStrCat3
 005EAA52    mov         edx,dword ptr [ebp-14]
 005EAA55    mov         eax,dword ptr [ebp+8]
 005EAA58    mov         eax,dword ptr [eax-4]
 005EAA5B    mov         eax,dword ptr [eax+60]
 005EAA5E    pop         ecx
 005EAA5F    call        00647BE4
 005EAA64    inc         dword ptr [ebp-4]
 005EAA67    cmp         dword ptr [ebp-4],10
>005EAA6B    jne         005EAA0C
 005EAA6D    xor         eax,eax
 005EAA6F    pop         edx
 005EAA70    pop         ecx
 005EAA71    pop         ecx
 005EAA72    mov         dword ptr fs:[eax],edx
 005EAA75    push        5EAA97
 005EAA7A    lea         eax,[ebp-18]
 005EAA7D    mov         edx,2
 005EAA82    call        @LStrArrayClr
 005EAA87    lea         eax,[ebp-8]
 005EAA8A    call        @LStrClr
 005EAA8F    ret
>005EAA90    jmp         @HandleFinally
>005EAA95    jmp         005EAA7A
 005EAA97    mov         esp,ebp
 005EAA99    pop         ebp
 005EAA9A    ret
end;*}

//005EAABC
{*procedure sub_005EAABC(?:?);
begin
 005EAABC    push        ebp
 005EAABD    mov         ebp,esp
 005EAABF    xor         ecx,ecx
 005EAAC1    push        ecx
 005EAAC2    push        ecx
 005EAAC3    push        ecx
 005EAAC4    push        ecx
 005EAAC5    push        ecx
 005EAAC6    xor         eax,eax
 005EAAC8    push        ebp
 005EAAC9    push        5EAB6F
 005EAACE    push        dword ptr fs:[eax]
 005EAAD1    mov         dword ptr fs:[eax],esp
 005EAAD4    xor         eax,eax
 005EAAD6    mov         dword ptr [ebp-8],eax
 005EAAD9    lea         eax,[ebp-10]
 005EAADC    mov         dl,byte ptr [ebp-8]
 005EAADF    add         dl,41
 005EAAE2    call        @LStrFromChar
 005EAAE7    mov         ecx,dword ptr [ebp-10]
 005EAAEA    lea         eax,[ebp-0C]
 005EAAED    mov         edx,5EAB84;'Color'
 005EAAF2    call        @LStrCat3
 005EAAF7    mov         edx,dword ptr [ebp-0C]
 005EAAFA    lea         ecx,[ebp-4]
 005EAAFD    mov         eax,dword ptr [ebp+8]
 005EAB00    mov         eax,dword ptr [eax-4]
 005EAB03    mov         eax,dword ptr [eax+60]
 005EAB06    call        00647440
 005EAB0B    cmp         dword ptr [ebp-4],0
>005EAB0F    je          005EAB35
 005EAB11    lea         eax,[ebp-14]
 005EAB14    mov         ecx,dword ptr [ebp-4]
 005EAB17    mov         edx,5EAB94;'$'
 005EAB1C    call        @LStrCat3
 005EAB21    mov         eax,dword ptr [ebp-14]
 005EAB24    call        StrToInt
 005EAB29    mov         edx,dword ptr [ebp+8]
 005EAB2C    mov         ecx,dword ptr [ebp-8]
 005EAB2F    mov         dword ptr [edx+ecx*4-44],eax
>005EAB33    jmp         005EAB43
 005EAB35    mov         eax,dword ptr [ebp+8]
 005EAB38    mov         edx,dword ptr [ebp-8]
 005EAB3B    mov         dword ptr [eax+edx*4-44],0FFFFFFFF
 005EAB43    inc         dword ptr [ebp-8]
 005EAB46    cmp         dword ptr [ebp-8],10
>005EAB4A    jne         005EAAD9
 005EAB4C    xor         eax,eax
 005EAB4E    pop         edx
 005EAB4F    pop         ecx
 005EAB50    pop         ecx
 005EAB51    mov         dword ptr fs:[eax],edx
 005EAB54    push        5EAB76
 005EAB59    lea         eax,[ebp-14]
 005EAB5C    mov         edx,3
 005EAB61    call        @LStrArrayClr
 005EAB66    lea         eax,[ebp-4]
 005EAB69    call        @LStrClr
 005EAB6E    ret
>005EAB6F    jmp         @HandleFinally
>005EAB74    jmp         005EAB59
 005EAB76    mov         esp,ebp
 005EAB78    pop         ebp
 005EAB79    ret
end;*}

//005EAB98
{*function TColorDialog.Execute:?;
begin
 005EAB98    push        ebp
 005EAB99    mov         ebp,esp
 005EAB9B    add         esp,0FFFFFF94
 005EAB9E    push        ebx
 005EAB9F    mov         dword ptr [ebp-4],eax
 005EABA2    push        ebp
 005EABA3    call        005EAABC
 005EABA8    pop         ecx
 005EABA9    mov         dword ptr [ebp-6A],24
 005EABB0    mov         eax,[006EA390];0x0 gvar_006EA390
 005EABB5    mov         dword ptr [ebp-62],eax
 005EABB8    mov         eax,dword ptr [ebp-4]
 005EABBB    mov         eax,dword ptr [eax+58];TColorDialog.Color:TColor
 005EABBE    call        ColorToRGB
 005EABC3    mov         dword ptr [ebp-5E],eax
 005EABC6    lea         eax,[ebp-44]
 005EABC9    mov         dword ptr [ebp-5A],eax
 005EABCC    mov         dword ptr [ebp-56],11
 005EABD3    mov         byte ptr [ebp-46],0
 005EABD7    mov         eax,dword ptr [ebp-4]
 005EABDA    mov         dl,byte ptr [ebp-46]
 005EABDD    cmp         dl,7
>005EABE0    ja          005EABE9
 005EABE2    and         edx,7F
 005EABE5    bt          dword ptr [eax+5C],edx;TColorDialog.Options:TColorDialogOptions
>005EABE9    jae         005EABFA
 005EABEB    xor         eax,eax
 005EABED    mov         al,byte ptr [ebp-46]
 005EABF0    mov         eax,dword ptr [eax*4+6E419C]
 005EABF7    or          dword ptr [ebp-56],eax
 005EABFA    inc         byte ptr [ebp-46]
 005EABFD    cmp         byte ptr [ebp-46],5
>005EAC01    jne         005EABD7
 005EAC03    mov         eax,dword ptr [ebp-4]
 005EAC06    cmp         dword ptr [eax+44],0;TColorDialog.FTemplate:PChar
>005EAC0A    je          005EAC19
 005EAC0C    or          dword ptr [ebp-56],20
 005EAC10    mov         eax,dword ptr [ebp-4]
 005EAC13    mov         eax,dword ptr [eax+44];TColorDialog.FTemplate:PChar
 005EAC16    mov         dword ptr [ebp-4A],eax
 005EAC19    mov         dword ptr [ebp-4E],5E996C
 005EAC20    mov         eax,[006E9DCC];^Application:TApplication
 005EAC25    mov         eax,dword ptr [eax]
 005EAC27    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005EAC2A    mov         dword ptr [ebp-66],eax
 005EAC2D    lea         ecx,[ebp-6A]
 005EAC30    mov         edx,692884;COMDLG32.ChooseColorA:BOOL
 005EAC35    mov         eax,dword ptr [ebp-4]
 005EAC38    mov         ebx,dword ptr [eax]
 005EAC3A    call        dword ptr [ebx+38];TColorDialog.sub_005E9C08
 005EAC3D    cmp         eax,1
 005EAC40    sbb         eax,eax
 005EAC42    inc         eax
 005EAC43    mov         byte ptr [ebp-45],al
 005EAC46    cmp         byte ptr [ebp-45],0
>005EAC4A    je          005EAC5C
 005EAC4C    mov         eax,dword ptr [ebp-4]
 005EAC4F    mov         edx,dword ptr [ebp-5E]
 005EAC52    mov         dword ptr [eax+58],edx;TColorDialog.Color:TColor
 005EAC55    push        ebp
 005EAC56    call        005EA9E8
 005EAC5B    pop         ecx
 005EAC5C    mov         al,byte ptr [ebp-45]
 005EAC5F    pop         ebx
 005EAC60    mov         esp,ebp
 005EAC62    pop         ebp
 005EAC63    ret
end;*}

//005EAC64
procedure TColorDialog.SetCustomColors(Value:TStrings);
begin
{*
 005EAC64    push        ebp
 005EAC65    mov         ebp,esp
 005EAC67    add         esp,0FFFFFFF8
 005EAC6A    mov         dword ptr [ebp-8],edx
 005EAC6D    mov         dword ptr [ebp-4],eax
 005EAC70    mov         edx,dword ptr [ebp-8]
 005EAC73    mov         eax,dword ptr [ebp-4]
 005EAC76    mov         eax,dword ptr [eax+60];TColorDialog.CustomColors:TStrings
 005EAC79    mov         ecx,dword ptr [eax]
 005EAC7B    call        dword ptr [ecx+8];TStrings.Assign
 005EAC7E    pop         ecx
 005EAC7F    pop         ecx
 005EAC80    pop         ebp
 005EAC81    ret
*}
end;

//005EACD8
constructor TFontDialog.Create(AOwner:TComponent);
begin
{*
 005EACD8    push        ebp
 005EACD9    mov         ebp,esp
 005EACDB    add         esp,0FFFFFFF4
 005EACDE    test        dl,dl
>005EACE0    je          005EACEA
 005EACE2    add         esp,0FFFFFFF0
 005EACE5    call        @ClassCreate
 005EACEA    mov         dword ptr [ebp-0C],ecx
 005EACED    mov         byte ptr [ebp-5],dl
 005EACF0    mov         dword ptr [ebp-4],eax
 005EACF3    mov         ecx,dword ptr [ebp-0C]
 005EACF6    xor         edx,edx
 005EACF8    mov         eax,dword ptr [ebp-4]
 005EACFB    call        TCommonDialog.Create
 005EAD00    mov         dl,1
 005EAD02    mov         eax,[005BE498];TFont
 005EAD07    call        TFont.Create;TFont.Create
 005EAD0C    mov         edx,dword ptr [ebp-4]
 005EAD0F    mov         dword ptr [edx+58],eax;TFontDialog.Font:TFont
 005EAD12    mov         eax,dword ptr [ebp-4]
 005EAD15    mov         dx,word ptr ds:[5EAD40];0x4 gvar_005EAD40
 005EAD1C    mov         word ptr [eax+5D],dx;TFontDialog.Options:TFontDialogOptions
 005EAD20    mov         eax,dword ptr [ebp-4]
 005EAD23    cmp         byte ptr [ebp-5],0
>005EAD27    je          005EAD38
 005EAD29    call        @AfterConstruction
 005EAD2E    pop         dword ptr fs:[0]
 005EAD35    add         esp,0C
 005EAD38    mov         eax,dword ptr [ebp-4]
 005EAD3B    mov         esp,ebp
 005EAD3D    pop         ebp
 005EAD3E    ret
*}
end;

//005EAD44
destructor TFontDialog.Destroy;
begin
{*
 005EAD44    push        ebp
 005EAD45    mov         ebp,esp
 005EAD47    add         esp,0FFFFFFF8
 005EAD4A    call        @BeforeDestruction
 005EAD4F    mov         byte ptr [ebp-5],dl
 005EAD52    mov         dword ptr [ebp-4],eax
 005EAD55    mov         eax,dword ptr [ebp-4]
 005EAD58    mov         eax,dword ptr [eax+58];TFontDialog.Font:TFont
 005EAD5B    call        TObject.Free
 005EAD60    mov         dl,byte ptr [ebp-5]
 005EAD63    and         dl,0FC
 005EAD66    mov         eax,dword ptr [ebp-4]
 005EAD69    call        TCommonDialog.Destroy
 005EAD6E    cmp         byte ptr [ebp-5],0
>005EAD72    jle         005EAD7C
 005EAD74    mov         eax,dword ptr [ebp-4]
 005EAD77    call        @ClassDestroy
 005EAD7C    pop         ecx
 005EAD7D    pop         ecx
 005EAD7E    pop         ebp
 005EAD7F    ret
*}
end;

//005EAD80
{*procedure sub_005EAD80(?:?);
begin
 005EAD80    push        ebp
 005EAD81    mov         ebp,esp
 005EAD83    add         esp,0FFFFFFF8
 005EAD86    mov         dword ptr [ebp-8],edx
 005EAD89    mov         dword ptr [ebp-4],eax
 005EAD8C    mov         eax,dword ptr [ebp-8]
 005EAD8F    cmp         dword ptr [eax],111
>005EAD95    jne         005EADC7
 005EAD97    mov         eax,dword ptr [ebp-8]
 005EAD9A    cmp         word ptr [eax+6],9
>005EAD9F    jne         005EADC7
 005EADA1    mov         eax,dword ptr [ebp-8]
 005EADA4    cmp         word ptr [eax+4],473
>005EADAA    jne         005EADB5
 005EADAC    mov         eax,dword ptr [ebp-4]
 005EADAF    mov         byte ptr [eax+71],1;TFontDialog.FFontColorModified:Boolean
>005EADB3    jmp         005EADC7
 005EADB5    mov         eax,dword ptr [ebp-8]
 005EADB8    cmp         word ptr [eax+4],474
>005EADBE    jne         005EADC7
 005EADC0    mov         eax,dword ptr [ebp-4]
 005EADC3    mov         byte ptr [eax+70],1;TFontDialog.FFontCharsetModified:Boolean
 005EADC7    mov         edx,dword ptr [ebp-8]
 005EADCA    mov         eax,dword ptr [ebp-4]
 005EADCD    call        005E9B74
 005EADD2    pop         ecx
 005EADD3    pop         ecx
 005EADD4    pop         ebp
 005EADD5    ret
end;*}

//005EADD8
{*procedure TFontDialog.sub_005EADD8(?:?);
begin
 005EADD8    push        ebp
 005EADD9    mov         ebp,esp
 005EADDB    add         esp,0FFFFFFF8
 005EADDE    push        ebx
 005EADDF    mov         dword ptr [ebp-8],edx
 005EADE2    mov         dword ptr [ebp-4],eax
 005EADE5    mov         eax,dword ptr [ebp-4]
 005EADE8    cmp         word ptr [eax+62],0;TFontDialog.?f62:word
>005EADED    je          005EADFE
 005EADEF    mov         ebx,dword ptr [ebp-4]
 005EADF2    mov         ecx,dword ptr [ebp-8]
 005EADF5    mov         edx,dword ptr [ebp-4]
 005EADF8    mov         eax,dword ptr [ebx+64];TFontDialog.?f64:dword
 005EADFB    call        dword ptr [ebx+60];TFontDialog.OnApply
 005EADFE    pop         ebx
 005EADFF    pop         ecx
 005EAE00    pop         ecx
 005EAE01    pop         ebp
 005EAE02    ret
end;*}

//005EAEC0
{*function TFontDialog.Execute:?;
begin
 005EAEC0    push        ebp
 005EAEC1    mov         ebp,esp
 005EAEC3    add         esp,0FFFFFF74
 005EAEC9    push        ebx
 005EAECA    xor         edx,edx
 005EAECC    mov         dword ptr [ebp-8C],edx
 005EAED2    mov         dword ptr [ebp-10],edx
 005EAED5    mov         dword ptr [ebp-4],eax
 005EAED8    xor         eax,eax
 005EAEDA    push        ebp
 005EAEDB    push        5EB0A2
 005EAEE0    push        dword ptr fs:[eax]
 005EAEE3    mov         dword ptr fs:[eax],esp
 005EAEE6    mov         dword ptr [ebp-4C],3C
 005EAEED    xor         eax,eax
 005EAEEF    mov         dword ptr [ebp-44],eax
 005EAEF2    mov         eax,dword ptr [ebp-4]
 005EAEF5    cmp         byte ptr [eax+5C],0;TFontDialog.Device:TFontDialogDevice
>005EAEF9    je          005EAF08
 005EAEFB    call        005A1B0C
 005EAF00    call        005A1458
 005EAF05    mov         dword ptr [ebp-44],eax
 005EAF08    lea         eax,[ebp-88]
 005EAF0E    mov         dword ptr [ebp-40],eax
 005EAF11    lea         eax,[ebp-88]
 005EAF17    push        eax
 005EAF18    push        3C
 005EAF1A    mov         eax,dword ptr [ebp-4]
 005EAF1D    mov         eax,dword ptr [eax+58];TFontDialog.Font:TFont
 005EAF20    call        TFont.GetHandle
 005EAF25    push        eax
 005EAF26    call        GDI32.GetObjectA
 005EAF2B    lea         eax,[ebp-10]
 005EAF2E    lea         edx,[ebp-6C]
 005EAF31    mov         ecx,20
 005EAF36    call        @LStrFromArray
 005EAF3B    mov         eax,dword ptr [ebp-4]
 005EAF3E    movzx       eax,byte ptr [eax+5C];TFontDialog.Device:TFontDialogDevice
 005EAF42    mov         eax,dword ptr [eax*4+6E41F0]
 005EAF49    or          eax,48
 005EAF4C    mov         dword ptr [ebp-38],eax
 005EAF4F    mov         byte ptr [ebp-6],0
 005EAF53    mov         al,byte ptr [ebp-6]
 005EAF56    mov         edx,dword ptr [ebp-4]
 005EAF59    cmp         al,0F
>005EAF5B    ja          005EAF64
 005EAF5D    and         eax,7F
 005EAF60    bt          dword ptr [edx+5D],eax;TFontDialog.Options:TFontDialogOptions
>005EAF64    jae         005EAF75
 005EAF66    xor         eax,eax
 005EAF68    mov         al,byte ptr [ebp-6]
 005EAF6B    mov         eax,dword ptr [eax*4+6E41B0]
 005EAF72    or          dword ptr [ebp-38],eax
 005EAF75    inc         byte ptr [ebp-6]
 005EAF78    cmp         byte ptr [ebp-6],10
>005EAF7C    jne         005EAF53
 005EAF7E    mov         eax,dword ptr [ebp-4]
 005EAF81    cmp         word ptr [eax+62],0;TFontDialog.?f62:word
>005EAF86    je          005EAF8F
 005EAF88    or          dword ptr [ebp-38],200
 005EAF8F    mov         eax,dword ptr [ebp-4]
 005EAF92    cmp         dword ptr [eax+44],0;TFontDialog.FTemplate:PChar
>005EAF96    je          005EAFA5
 005EAF98    or          dword ptr [ebp-38],10
 005EAF9C    mov         eax,dword ptr [ebp-4]
 005EAF9F    mov         eax,dword ptr [eax+44];TFontDialog.FTemplate:PChar
 005EAFA2    mov         dword ptr [ebp-28],eax
 005EAFA5    mov         eax,dword ptr [ebp-4]
 005EAFA8    mov         eax,dword ptr [eax+58];TFontDialog.Font:TFont
 005EAFAB    mov         eax,dword ptr [eax+18];TFont.Color:TColor
 005EAFAE    mov         dword ptr [ebp-34],eax
 005EAFB1    xor         eax,eax
 005EAFB3    mov         dword ptr [ebp-30],eax
 005EAFB6    mov         dword ptr [ebp-2C],5EAC84
 005EAFBD    mov         eax,dword ptr [ebp-4]
 005EAFC0    mov         eax,dword ptr [eax+68];TFontDialog.MinFontSize:Integer
 005EAFC3    mov         dword ptr [ebp-18],eax
 005EAFC6    mov         eax,dword ptr [ebp-4]
 005EAFC9    mov         eax,dword ptr [eax+6C];TFontDialog.MaxFontSize:Integer
 005EAFCC    mov         dword ptr [ebp-14],eax
 005EAFCF    mov         eax,dword ptr [ebp-18]
 005EAFD2    cmp         eax,dword ptr [ebp-14]
>005EAFD5    jle         005EAFDE
 005EAFD7    and         dword ptr [ebp-38],0FFFFDFFF
 005EAFDE    mov         eax,[006E9DCC];^Application:TApplication
 005EAFE3    mov         eax,dword ptr [eax]
 005EAFE5    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005EAFE8    mov         dword ptr [ebp-48],eax
 005EAFEB    mov         eax,[006ECDAC];0x0 gvar_006ECDAC:TFontDialog
 005EAFF0    mov         dword ptr [ebp-0C],eax
 005EAFF3    mov         eax,dword ptr [ebp-4]
 005EAFF6    mov         [006ECDAC],eax;gvar_006ECDAC:TFontDialog
 005EAFFB    mov         eax,dword ptr [ebp-4]
 005EAFFE    mov         byte ptr [eax+71],0;TFontDialog.FFontColorModified:Boolean
 005EB002    mov         eax,dword ptr [ebp-4]
 005EB005    mov         byte ptr [eax+70],0;TFontDialog.FFontCharsetModified:Boolean
 005EB009    lea         ecx,[ebp-4C]
 005EB00C    mov         edx,69288A;COMDLG32.ChooseFontA
 005EB011    mov         eax,dword ptr [ebp-4]
 005EB014    mov         ebx,dword ptr [eax]
 005EB016    call        dword ptr [ebx+38];TFontDialog.sub_005E9C08
 005EB019    cmp         eax,1
 005EB01C    sbb         eax,eax
 005EB01E    inc         eax
 005EB01F    mov         byte ptr [ebp-5],al
 005EB022    mov         eax,dword ptr [ebp-0C]
 005EB025    mov         [006ECDAC],eax;gvar_006ECDAC:TFontDialog
 005EB02A    cmp         byte ptr [ebp-5],0
>005EB02E    je          005EB081
 005EB030    lea         eax,[ebp-8C]
 005EB036    lea         edx,[ebp-6C]
 005EB039    mov         ecx,20
 005EB03E    call        @LStrFromArray
 005EB043    mov         edx,dword ptr [ebp-8C]
 005EB049    mov         eax,dword ptr [ebp-10]
 005EB04C    call        AnsiCompareText
 005EB051    test        eax,eax
>005EB053    je          005EB05C
 005EB055    mov         eax,dword ptr [ebp-4]
 005EB058    mov         byte ptr [eax+70],1;TFontDialog.FFontCharsetModified:Boolean
 005EB05C    lea         edx,[ebp-88]
 005EB062    mov         eax,dword ptr [ebp-4]
 005EB065    call        005EB0D4
 005EB06A    mov         eax,dword ptr [ebp-4]
 005EB06D    cmp         byte ptr [eax+71],0;TFontDialog.FFontColorModified:Boolean
>005EB071    je          005EB081
 005EB073    mov         edx,dword ptr [ebp-34]
 005EB076    mov         eax,dword ptr [ebp-4]
 005EB079    mov         eax,dword ptr [eax+58];TFontDialog.Font:TFont
 005EB07C    call        TFont.SetColor
 005EB081    xor         eax,eax
 005EB083    pop         edx
 005EB084    pop         ecx
 005EB085    pop         ecx
 005EB086    mov         dword ptr fs:[eax],edx
 005EB089    push        5EB0A9
 005EB08E    lea         eax,[ebp-8C]
 005EB094    call        @LStrClr
 005EB099    lea         eax,[ebp-10]
 005EB09C    call        @LStrClr
 005EB0A1    ret
>005EB0A2    jmp         @HandleFinally
>005EB0A7    jmp         005EB08E
 005EB0A9    mov         al,byte ptr [ebp-5]
 005EB0AC    pop         ebx
 005EB0AD    mov         esp,ebp
 005EB0AF    pop         ebp
 005EB0B0    ret
end;*}

//005EB0B4
procedure TFontDialog.SetFont(Value:TFont);
begin
{*
 005EB0B4    push        ebp
 005EB0B5    mov         ebp,esp
 005EB0B7    add         esp,0FFFFFFF8
 005EB0BA    mov         dword ptr [ebp-8],edx
 005EB0BD    mov         dword ptr [ebp-4],eax
 005EB0C0    mov         edx,dword ptr [ebp-8]
 005EB0C3    mov         eax,dword ptr [ebp-4]
 005EB0C6    mov         eax,dword ptr [eax+58];TFontDialog.Font:TFont
 005EB0C9    mov         ecx,dword ptr [eax]
 005EB0CB    call        dword ptr [ecx+8];TFont.Assign
 005EB0CE    pop         ecx
 005EB0CF    pop         ecx
 005EB0D0    pop         ebp
 005EB0D1    ret
*}
end;

//005EB0D4
{*procedure sub_005EB0D4(?:TFontDialog; ?:?);
begin
 005EB0D4    push        ebp
 005EB0D5    mov         ebp,esp
 005EB0D7    add         esp,0FFFFFFF0
 005EB0DA    xor         ecx,ecx
 005EB0DC    mov         dword ptr [ebp-10],ecx
 005EB0DF    mov         dword ptr [ebp-8],edx
 005EB0E2    mov         dword ptr [ebp-4],eax
 005EB0E5    xor         eax,eax
 005EB0E7    push        ebp
 005EB0E8    push        5EB1A1
 005EB0ED    push        dword ptr fs:[eax]
 005EB0F0    mov         dword ptr fs:[eax],esp
 005EB0F3    lea         eax,[ebp-10]
 005EB0F6    mov         edx,dword ptr [ebp-8]
 005EB0F9    add         edx,1C
 005EB0FC    mov         ecx,20
 005EB101    call        @LStrFromArray
 005EB106    mov         edx,dword ptr [ebp-10]
 005EB109    mov         eax,dword ptr [ebp-4]
 005EB10C    mov         eax,dword ptr [eax+58];TFontDialog.Font:TFont
 005EB10F    call        TFont.SetName
 005EB114    mov         edx,dword ptr [ebp-8]
 005EB117    mov         edx,dword ptr [edx]
 005EB119    mov         eax,dword ptr [ebp-4]
 005EB11C    mov         eax,dword ptr [eax+58];TFontDialog.Font:TFont
 005EB11F    call        TFont.SetHeight
 005EB124    mov         eax,dword ptr [ebp-4]
 005EB127    cmp         byte ptr [eax+70],0;TFontDialog.FFontCharsetModified:Boolean
>005EB12B    je          005EB13E
 005EB12D    mov         edx,dword ptr [ebp-8]
 005EB130    mov         dl,byte ptr [edx+17]
 005EB133    mov         eax,dword ptr [ebp-4]
 005EB136    mov         eax,dword ptr [eax+58];TFontDialog.Font:TFont
 005EB139    call        TFont.SetCharset
 005EB13E    mov         al,[005EB1AC];0x0 gvar_005EB1AC
 005EB143    mov         byte ptr [ebp-9],al
 005EB146    mov         eax,dword ptr [ebp-8]
 005EB149    cmp         dword ptr [eax+10],190
>005EB150    jle         005EB156
 005EB152    or          byte ptr [ebp-9],1
 005EB156    mov         eax,dword ptr [ebp-8]
 005EB159    cmp         byte ptr [eax+14],0
>005EB15D    je          005EB163
 005EB15F    or          byte ptr [ebp-9],2
 005EB163    mov         eax,dword ptr [ebp-8]
 005EB166    cmp         byte ptr [eax+15],0
>005EB16A    je          005EB170
 005EB16C    or          byte ptr [ebp-9],4
 005EB170    mov         eax,dword ptr [ebp-8]
 005EB173    cmp         byte ptr [eax+16],0
>005EB177    je          005EB17D
 005EB179    or          byte ptr [ebp-9],8
 005EB17D    mov         dl,byte ptr [ebp-9]
 005EB180    mov         eax,dword ptr [ebp-4]
 005EB183    mov         eax,dword ptr [eax+58];TFontDialog.Font:TFont
 005EB186    call        TFont.SetStyle
 005EB18B    xor         eax,eax
 005EB18D    pop         edx
 005EB18E    pop         ecx
 005EB18F    pop         ecx
 005EB190    mov         dword ptr fs:[eax],edx
 005EB193    push        5EB1A8
 005EB198    lea         eax,[ebp-10]
 005EB19B    call        @LStrClr
 005EB1A0    ret
>005EB1A1    jmp         @HandleFinally
>005EB1A6    jmp         005EB198
 005EB1A8    mov         esp,ebp
 005EB1AA    pop         ebp
 005EB1AB    ret
end;*}

//005EB1B0
{*procedure sub_005EB1B0(?:?; ?:?);
begin
 005EB1B0    push        ebp
 005EB1B1    mov         ebp,esp
 005EB1B3    add         esp,0FFFFF3EC
 005EB1B9    push        ebx
 005EB1BA    mov         dword ptr [ebp-8],edx
 005EB1BD    mov         dword ptr [ebp-4],eax
 005EB1C0    lea         eax,[ebp-0C14]
 005EB1C6    push        eax
 005EB1C7    mov         eax,dword ptr [ebp-4]
 005EB1CA    push        eax
 005EB1CB    call        005A1B0C
 005EB1D0    lea         ecx,[ebp-814]
 005EB1D6    lea         edx,[ebp-414]
 005EB1DC    call        005A108C
 005EB1E1    mov         eax,dword ptr [ebp-4]
 005EB1E4    cmp         dword ptr [eax],0
>005EB1E7    je          005EB2D0
 005EB1ED    lea         eax,[ebp-414]
 005EB1F3    call        StrLen
 005EB1F8    mov         ebx,eax
 005EB1FA    add         ebx,8
 005EB1FD    lea         eax,[ebp-814]
 005EB203    call        StrLen
 005EB208    add         ebx,eax
 005EB20A    lea         eax,[ebp-0C14]
 005EB210    call        StrLen
 005EB215    add         ebx,eax
 005EB217    add         ebx,3
 005EB21A    push        ebx
 005EB21B    push        42
 005EB21D    call        KERNEL32.GlobalAlloc
 005EB222    mov         edx,dword ptr [ebp-8]
 005EB225    mov         dword ptr [edx],eax
 005EB227    mov         eax,dword ptr [ebp-8]
 005EB22A    mov         eax,dword ptr [eax]
 005EB22C    push        eax
 005EB22D    call        KERNEL32.GlobalLock
 005EB232    mov         dword ptr [ebp-0C],eax
 005EB235    xor         eax,eax
 005EB237    push        ebp
 005EB238    push        5EB2C9
 005EB23D    push        dword ptr fs:[eax]
 005EB240    mov         dword ptr fs:[eax],esp
 005EB243    mov         eax,dword ptr [ebp-0C]
 005EB246    add         eax,8
 005EB249    mov         dword ptr [ebp-10],eax
 005EB24C    mov         eax,dword ptr [ebp-0C]
 005EB24F    mov         dword ptr [ebp-14],eax
 005EB252    mov         ax,word ptr [ebp-10]
 005EB256    sub         ax,word ptr [ebp-0C]
 005EB25A    mov         edx,dword ptr [ebp-14]
 005EB25D    mov         word ptr [edx],ax
 005EB260    lea         edx,[ebp-814]
 005EB266    mov         eax,dword ptr [ebp-10]
 005EB269    call        StrECopy
 005EB26E    inc         eax
 005EB26F    mov         dword ptr [ebp-10],eax
 005EB272    mov         ax,word ptr [ebp-10]
 005EB276    sub         ax,word ptr [ebp-0C]
 005EB27A    mov         edx,dword ptr [ebp-14]
 005EB27D    mov         word ptr [edx+2],ax
 005EB281    lea         edx,[ebp-414]
 005EB287    mov         eax,dword ptr [ebp-10]
 005EB28A    call        StrECopy
 005EB28F    inc         eax
 005EB290    mov         dword ptr [ebp-10],eax
 005EB293    mov         ax,word ptr [ebp-10]
 005EB297    sub         ax,word ptr [ebp-0C]
 005EB29B    mov         edx,dword ptr [ebp-14]
 005EB29E    mov         word ptr [edx+4],ax
 005EB2A2    lea         edx,[ebp-0C14]
 005EB2A8    mov         eax,dword ptr [ebp-10]
 005EB2AB    call        StrCopy
 005EB2B0    xor         eax,eax
 005EB2B2    pop         edx
 005EB2B3    pop         ecx
 005EB2B4    pop         ecx
 005EB2B5    mov         dword ptr fs:[eax],edx
 005EB2B8    push        5EB2D0
 005EB2BD    mov         eax,dword ptr [ebp-8]
 005EB2C0    mov         eax,dword ptr [eax]
 005EB2C2    push        eax
 005EB2C3    call        KERNEL32.GlobalUnlock
 005EB2C8    ret
>005EB2C9    jmp         @HandleFinally
>005EB2CE    jmp         005EB2BD
 005EB2D0    pop         ebx
 005EB2D1    mov         esp,ebp
 005EB2D3    pop         ebp
 005EB2D4    ret
end;*}

//005EB2D8
{*procedure sub_005EB2D8(?:?; ?:?);
begin
 005EB2D8    push        ebp
 005EB2D9    mov         ebp,esp
 005EB2DB    add         esp,0FFFFFFF0
 005EB2DE    mov         dword ptr [ebp-8],edx
 005EB2E1    mov         dword ptr [ebp-4],eax
 005EB2E4    mov         eax,dword ptr [ebp-8]
 005EB2E7    push        eax
 005EB2E8    call        KERNEL32.GlobalLock
 005EB2ED    mov         dword ptr [ebp-0C],eax
 005EB2F0    xor         eax,eax
 005EB2F2    push        ebp
 005EB2F3    push        5EB350
 005EB2F8    push        dword ptr fs:[eax]
 005EB2FB    mov         dword ptr fs:[eax],esp
 005EB2FE    mov         eax,dword ptr [ebp-0C]
 005EB301    mov         dword ptr [ebp-10],eax
 005EB304    mov         eax,dword ptr [ebp-10]
 005EB307    movzx       eax,word ptr [eax+4]
 005EB30B    add         eax,dword ptr [ebp-0C]
 005EB30E    push        eax
 005EB30F    mov         eax,dword ptr [ebp-4]
 005EB312    push        eax
 005EB313    call        005A1B0C
 005EB318    mov         edx,dword ptr [ebp-10]
 005EB31B    movzx       ecx,word ptr [edx]
 005EB31E    add         ecx,dword ptr [ebp-0C]
 005EB321    mov         edx,dword ptr [ebp-10]
 005EB324    movzx       edx,word ptr [edx+2]
 005EB328    add         edx,dword ptr [ebp-0C]
 005EB32B    call        005A1150
 005EB330    xor         eax,eax
 005EB332    pop         edx
 005EB333    pop         ecx
 005EB334    pop         ecx
 005EB335    mov         dword ptr fs:[eax],edx
 005EB338    push        5EB357
 005EB33D    mov         eax,dword ptr [ebp-8]
 005EB340    push        eax
 005EB341    call        KERNEL32.GlobalUnlock
 005EB346    mov         eax,dword ptr [ebp-8]
 005EB349    push        eax
 005EB34A    call        KERNEL32.GlobalFree
 005EB34F    ret
>005EB350    jmp         @HandleFinally
>005EB355    jmp         005EB33D
 005EB357    mov         esp,ebp
 005EB359    pop         ebp
 005EB35A    ret
end;*}

//005EB35C
{*function sub_005EB35C(?:?):?;
begin
 005EB35C    push        ebp
 005EB35D    mov         ebp,esp
 005EB35F    add         esp,0FFFFFFEC
 005EB362    mov         dword ptr [ebp-4],eax
 005EB365    cmp         dword ptr [ebp-4],0
>005EB369    je          005EB3F6
 005EB36F    mov         eax,dword ptr [ebp-4]
 005EB372    push        eax
 005EB373    call        KERNEL32.GlobalSize
 005EB378    mov         dword ptr [ebp-14],eax
 005EB37B    mov         eax,dword ptr [ebp-14]
 005EB37E    push        eax
 005EB37F    push        42
 005EB381    call        KERNEL32.GlobalAlloc
 005EB386    mov         dword ptr [ebp-8],eax
 005EB389    cmp         dword ptr [ebp-8],0
>005EB38D    je          005EB3FB
 005EB38F    xor         eax,eax
 005EB391    push        ebp
 005EB392    push        5EB3EF
 005EB397    push        dword ptr fs:[eax]
 005EB39A    mov         dword ptr fs:[eax],esp
 005EB39D    mov         eax,dword ptr [ebp-4]
 005EB3A0    push        eax
 005EB3A1    call        KERNEL32.GlobalLock
 005EB3A6    mov         dword ptr [ebp-0C],eax
 005EB3A9    mov         eax,dword ptr [ebp-8]
 005EB3AC    push        eax
 005EB3AD    call        KERNEL32.GlobalLock
 005EB3B2    mov         dword ptr [ebp-10],eax
 005EB3B5    cmp         dword ptr [ebp-0C],0
>005EB3B9    je          005EB3CF
 005EB3BB    cmp         dword ptr [ebp-10],0
>005EB3BF    je          005EB3CF
 005EB3C1    mov         edx,dword ptr [ebp-10]
 005EB3C4    mov         eax,dword ptr [ebp-0C]
 005EB3C7    mov         ecx,dword ptr [ebp-14]
 005EB3CA    call        Move
 005EB3CF    xor         eax,eax
 005EB3D1    pop         edx
 005EB3D2    pop         ecx
 005EB3D3    pop         ecx
 005EB3D4    mov         dword ptr fs:[eax],edx
 005EB3D7    push        5EB3FB
 005EB3DC    mov         eax,dword ptr [ebp-4]
 005EB3DF    push        eax
 005EB3E0    call        KERNEL32.GlobalUnlock
 005EB3E5    mov         eax,dword ptr [ebp-8]
 005EB3E8    push        eax
 005EB3E9    call        KERNEL32.GlobalUnlock
 005EB3EE    ret
>005EB3EF    jmp         @HandleFinally
>005EB3F4    jmp         005EB3DC
 005EB3F6    xor         eax,eax
 005EB3F8    mov         dword ptr [ebp-8],eax
 005EB3FB    mov         eax,dword ptr [ebp-8]
 005EB3FE    mov         esp,ebp
 005EB400    pop         ebp
 005EB401    ret
end;*}

//005EB404
{*function TPrinterSetupDialog.Execute:?;
begin
 005EB404    push        ebp
 005EB405    mov         ebp,esp
 005EB407    add         esp,0FFFFFFB0
 005EB40A    push        ebx
 005EB40B    mov         dword ptr [ebp-4],eax
 005EB40E    lea         eax,[ebp-4E]
 005EB411    xor         ecx,ecx
 005EB413    mov         edx,42
 005EB418    call        @FillChar
 005EB41D    mov         dword ptr [ebp-4E],42
 005EB424    mov         eax,[006EA390];0x0 gvar_006EA390
 005EB429    mov         dword ptr [ebp-2C],eax
 005EB42C    lea         edx,[ebp-42]
 005EB42F    lea         eax,[ebp-0C]
 005EB432    call        005EB1B0
 005EB437    mov         eax,dword ptr [ebp-0C]
 005EB43A    call        005EB35C
 005EB43F    mov         dword ptr [ebp-46],eax
 005EB442    mov         dword ptr [ebp-3A],2040
 005EB449    mov         dword ptr [ebp-20],5E996C
 005EB450    mov         eax,[006E9DCC];^Application:TApplication
 005EB455    mov         eax,dword ptr [eax]
 005EB457    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005EB45A    mov         dword ptr [ebp-4A],eax
 005EB45D    lea         ecx,[ebp-4E]
 005EB460    mov         edx,6928A2;COMDLG32.PrintDlgA
 005EB465    mov         eax,dword ptr [ebp-4]
 005EB468    mov         ebx,dword ptr [eax]
 005EB46A    call        dword ptr [ebx+38];TPrinterSetupDialog.sub_005E9C08
 005EB46D    cmp         eax,1
 005EB470    sbb         eax,eax
 005EB472    inc         eax
 005EB473    mov         byte ptr [ebp-5],al
 005EB476    cmp         byte ptr [ebp-5],0
>005EB47A    je          005EB489
 005EB47C    mov         edx,dword ptr [ebp-42]
 005EB47F    mov         eax,dword ptr [ebp-46]
 005EB482    call        005EB2D8
>005EB487    jmp         005EB4A7
 005EB489    cmp         dword ptr [ebp-46],0
>005EB48D    je          005EB498
 005EB48F    mov         eax,dword ptr [ebp-46]
 005EB492    push        eax
 005EB493    call        KERNEL32.GlobalFree
 005EB498    cmp         dword ptr [ebp-42],0
>005EB49C    je          005EB4A7
 005EB49E    mov         eax,dword ptr [ebp-42]
 005EB4A1    push        eax
 005EB4A2    call        KERNEL32.GlobalFree
 005EB4A7    mov         al,byte ptr [ebp-5]
 005EB4AA    pop         ebx
 005EB4AB    mov         esp,ebp
 005EB4AD    pop         ebp
 005EB4AE    ret
end;*}

//005EB4B0
procedure TPrintDialog.SetCopies(Value:Integer);
begin
{*
 005EB4B0    push        ebp
 005EB4B1    mov         ebp,esp
 005EB4B3    add         esp,0FFFFFFF8
 005EB4B6    mov         dword ptr [ebp-8],edx
 005EB4B9    mov         dword ptr [ebp-4],eax
 005EB4BC    mov         eax,dword ptr [ebp-8]
 005EB4BF    mov         edx,dword ptr [ebp-4]
 005EB4C2    mov         dword ptr [edx+6C],eax;TPrintDialog.Copies:Integer
 005EB4C5    call        005A1B0C
 005EB4CA    mov         edx,dword ptr [ebp-8]
 005EB4CD    call        005A14F0
 005EB4D2    pop         ecx
 005EB4D3    pop         ecx
 005EB4D4    pop         ebp
 005EB4D5    ret
*}
end;

//005EB4D8
{*function TPrintDialog.Execute:?;
begin
 005EB4D8    push        ebp
 005EB4D9    mov         ebp,esp
 005EB4DB    add         esp,0FFFFFFB0
 005EB4DE    push        ebx
 005EB4DF    mov         dword ptr [ebp-4],eax
 005EB4E2    lea         eax,[ebp-4E]
 005EB4E5    xor         ecx,ecx
 005EB4E7    mov         edx,42
 005EB4EC    call        @FillChar
 005EB4F1    mov         dword ptr [ebp-4E],42
 005EB4F8    mov         eax,[006EA390];0x0 gvar_006EA390
 005EB4FD    mov         dword ptr [ebp-2C],eax
 005EB500    lea         edx,[ebp-42]
 005EB503    lea         eax,[ebp-0C]
 005EB506    call        005EB1B0
 005EB50B    mov         eax,dword ptr [ebp-0C]
 005EB50E    call        005EB35C
 005EB513    mov         dword ptr [ebp-46],eax
 005EB516    mov         eax,dword ptr [ebp-4]
 005EB519    movzx       eax,byte ptr [eax+63];TPrintDialog.PrintRange:TPrintRange
 005EB51D    mov         eax,dword ptr [eax*4+6E41FC]
 005EB524    or          eax,3000
 005EB529    mov         dword ptr [ebp-3A],eax
 005EB52C    mov         eax,dword ptr [ebp-4]
 005EB52F    cmp         byte ptr [eax+60],0;TPrintDialog.Collate:Boolean
>005EB533    je          005EB539
 005EB535    add         dword ptr [ebp-3A],10
 005EB539    mov         eax,dword ptr [ebp-4]
 005EB53C    test        byte ptr [eax+61],1;TPrintDialog.Options:TPrintDialogOptions
>005EB540    jne         005EB549
 005EB542    add         dword ptr [ebp-3A],100000
 005EB549    mov         eax,dword ptr [ebp-4]
 005EB54C    test        byte ptr [eax+61],2;TPrintDialog.Options:TPrintDialogOptions
>005EB550    jne         005EB556
 005EB552    add         dword ptr [ebp-3A],8
 005EB556    mov         eax,dword ptr [ebp-4]
 005EB559    test        byte ptr [eax+61],4;TPrintDialog.Options:TPrintDialogOptions
>005EB55D    jne         005EB563
 005EB55F    add         dword ptr [ebp-3A],4
 005EB563    mov         eax,dword ptr [ebp-4]
 005EB566    test        byte ptr [eax+61],20;TPrintDialog.Options:TPrintDialogOptions
>005EB56A    je          005EB573
 005EB56C    add         dword ptr [ebp-3A],80000
 005EB573    mov         eax,dword ptr [ebp-4]
 005EB576    cmp         byte ptr [eax+62],0;TPrintDialog.PrintToFile:Boolean
>005EB57A    je          005EB580
 005EB57C    add         dword ptr [ebp-3A],20
 005EB580    mov         eax,dword ptr [ebp-4]
 005EB583    test        byte ptr [eax+61],10;TPrintDialog.Options:TPrintDialogOptions
>005EB587    je          005EB590
 005EB589    add         dword ptr [ebp-3A],800
 005EB590    mov         eax,dword ptr [ebp-4]
 005EB593    test        byte ptr [eax+61],8;TPrintDialog.Options:TPrintDialogOptions
>005EB597    jne         005EB5A0
 005EB599    add         dword ptr [ebp-3A],80
 005EB5A0    mov         eax,dword ptr [ebp-4]
 005EB5A3    mov         ax,word ptr [eax+58];TPrintDialog.FromPage:Integer
 005EB5A7    mov         word ptr [ebp-36],ax
 005EB5AB    mov         eax,dword ptr [ebp-4]
 005EB5AE    mov         ax,word ptr [eax+5C];TPrintDialog.ToPage:Integer
 005EB5B2    mov         word ptr [ebp-34],ax
 005EB5B6    mov         eax,dword ptr [ebp-4]
 005EB5B9    mov         ax,word ptr [eax+64];TPrintDialog.MinPage:Integer
 005EB5BD    mov         word ptr [ebp-32],ax
 005EB5C1    mov         eax,dword ptr [ebp-4]
 005EB5C4    mov         ax,word ptr [eax+68];TPrintDialog.MaxPage:Integer
 005EB5C8    mov         word ptr [ebp-30],ax
 005EB5CC    mov         dword ptr [ebp-24],5E996C
 005EB5D3    mov         dword ptr [ebp-20],5E996C
 005EB5DA    mov         eax,[006E9DCC];^Application:TApplication
 005EB5DF    mov         eax,dword ptr [eax]
 005EB5E1    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005EB5E4    mov         dword ptr [ebp-4A],eax
 005EB5E7    lea         ecx,[ebp-4E]
 005EB5EA    mov         edx,6928A2;COMDLG32.PrintDlgA
 005EB5EF    mov         eax,dword ptr [ebp-4]
 005EB5F2    mov         ebx,dword ptr [eax]
 005EB5F4    call        dword ptr [ebx+38];TPrintDialog.sub_005E9C08
 005EB5F7    cmp         eax,1
 005EB5FA    sbb         eax,eax
 005EB5FC    inc         eax
 005EB5FD    mov         byte ptr [ebp-5],al
 005EB600    cmp         byte ptr [ebp-5],0
>005EB604    je          005EB693
 005EB60A    mov         edx,dword ptr [ebp-42]
 005EB60D    mov         eax,dword ptr [ebp-46]
 005EB610    call        005EB2D8
 005EB615    test        byte ptr [ebp-3A],10
 005EB619    setne       al
 005EB61C    mov         edx,dword ptr [ebp-4]
 005EB61F    mov         byte ptr [edx+60],al;TPrintDialog.Collate:Boolean
 005EB622    test        byte ptr [ebp-3A],20
 005EB626    setne       al
 005EB629    mov         edx,dword ptr [ebp-4]
 005EB62C    mov         byte ptr [edx+62],al;TPrintDialog.PrintToFile:Boolean
 005EB62F    test        byte ptr [ebp-3A],1
>005EB633    je          005EB63E
 005EB635    mov         eax,dword ptr [ebp-4]
 005EB638    mov         byte ptr [eax+63],1;TPrintDialog.PrintRange:TPrintRange
>005EB63C    jmp         005EB654
 005EB63E    test        byte ptr [ebp-3A],2
>005EB642    je          005EB64D
 005EB644    mov         eax,dword ptr [ebp-4]
 005EB647    mov         byte ptr [eax+63],2;TPrintDialog.PrintRange:TPrintRange
>005EB64B    jmp         005EB654
 005EB64D    mov         eax,dword ptr [ebp-4]
 005EB650    mov         byte ptr [eax+63],0;TPrintDialog.PrintRange:TPrintRange
 005EB654    movzx       eax,word ptr [ebp-36]
 005EB658    mov         edx,dword ptr [ebp-4]
 005EB65B    mov         dword ptr [edx+58],eax;TPrintDialog.FromPage:Integer
 005EB65E    movzx       eax,word ptr [ebp-34]
 005EB662    mov         edx,dword ptr [ebp-4]
 005EB665    mov         dword ptr [edx+5C],eax;TPrintDialog.ToPage:Integer
 005EB668    cmp         word ptr [ebp-2E],1
>005EB66D    jne         005EB685
 005EB66F    call        005A1B0C
 005EB674    call        005A147C
 005EB679    mov         edx,eax
 005EB67B    mov         eax,dword ptr [ebp-4]
 005EB67E    call        TPrintDialog.SetCopies
>005EB683    jmp         005EB6B1
 005EB685    movzx       edx,word ptr [ebp-2E]
 005EB689    mov         eax,dword ptr [ebp-4]
 005EB68C    call        TPrintDialog.SetCopies
>005EB691    jmp         005EB6B1
 005EB693    cmp         dword ptr [ebp-46],0
>005EB697    je          005EB6A2
 005EB699    mov         eax,dword ptr [ebp-46]
 005EB69C    push        eax
 005EB69D    call        KERNEL32.GlobalFree
 005EB6A2    cmp         dword ptr [ebp-42],0
>005EB6A6    je          005EB6B1
 005EB6A8    mov         eax,dword ptr [ebp-42]
 005EB6AB    push        eax
 005EB6AC    call        KERNEL32.GlobalFree
 005EB6B1    mov         al,byte ptr [ebp-5]
 005EB6B4    pop         ebx
 005EB6B5    mov         esp,ebp
 005EB6B7    pop         ebp
 005EB6B8    ret
end;*}

//005EB814
{*procedure sub_005EB814(?:?);
begin
 005EB814    push        ebp
 005EB815    mov         ebp,esp
 005EB817    add         esp,0FFFFFFF8
 005EB81A    mov         dword ptr [ebp-8],edx
 005EB81D    mov         dword ptr [ebp-4],eax
 005EB820    mov         edx,dword ptr [ebp-8]
 005EB823    mov         eax,dword ptr [ebp-4]
 005EB826    call        005F7FC0
 005EB82B    mov         eax,dword ptr [ebp-8]
 005EB82E    mov         dword ptr [eax+4],90000000
 005EB835    mov         eax,dword ptr [ebp-8]
 005EB838    mov         edx,dword ptr [ebp-4]
 005EB83B    mov         edx,dword ptr [edx+20C];TRedirectorWindow.FFormHandle:THandle
 005EB841    mov         dword ptr [eax+1C],edx
 005EB844    pop         ecx
 005EB845    pop         ecx
 005EB846    pop         ebp
 005EB847    ret
end;*}

//005EB848
{*procedure sub_005EB848(?:?);
begin
 005EB848    push        ebp
 005EB849    mov         ebp,esp
 005EB84B    add         esp,0FFFFFFF8
 005EB84E    mov         dword ptr [ebp-8],edx
 005EB851    mov         dword ptr [ebp-4],eax
 005EB854    mov         edx,dword ptr [ebp-8]
 005EB857    mov         eax,dword ptr [ebp-4]
 005EB85A    call        005F8E0C
 005EB85F    mov         eax,dword ptr [ebp-8]
 005EB862    cmp         dword ptr [eax+0C],0
>005EB866    jne         005EB899
 005EB868    mov         eax,dword ptr [ebp-8]
 005EB86B    cmp         dword ptr [eax],0B021
>005EB871    je          005EB899
 005EB873    mov         eax,dword ptr [ebp-4]
 005EB876    cmp         dword ptr [eax+208],0;TRedirectorWindow.FFindReplaceDialog:TFindDialog
>005EB87D    je          005EB899
 005EB87F    mov         edx,dword ptr [ebp-8]
 005EB882    mov         eax,dword ptr [ebp-4]
 005EB885    mov         eax,dword ptr [eax+208];TRedirectorWindow.FFindReplaceDialog:TFindDialog
 005EB88B    mov         ecx,dword ptr [eax]
 005EB88D    call        dword ptr [ecx+34];TFindDialog.sub_005EBE64
 005EB890    and         eax,7F
 005EB893    mov         edx,dword ptr [ebp-8]
 005EB896    mov         dword ptr [edx+0C],eax
 005EB899    pop         ecx
 005EB89A    pop         ecx
 005EB89B    pop         ebp
 005EB89C    ret
end;*}

//005EB8A0
{*procedure TRedirectorWindow.CMRelease(?:?);
begin
 005EB8A0    push        ebp
 005EB8A1    mov         ebp,esp
 005EB8A3    add         esp,0FFFFFFF8
 005EB8A6    mov         dword ptr [ebp-8],edx
 005EB8A9    mov         dword ptr [ebp-4],eax
 005EB8AC    mov         eax,dword ptr [ebp-4]
 005EB8AF    call        TObject.Free
 005EB8B4    pop         ecx
 005EB8B5    pop         ecx
 005EB8B6    pop         ebp
 005EB8B7    ret
end;*}

//005EBA5C
constructor TFindDialog.Create(AOwner:TComponent);
begin
{*
 005EBA5C    push        ebp
 005EBA5D    mov         ebp,esp
 005EBA5F    add         esp,0FFFFFFF0
 005EBA62    test        dl,dl
>005EBA64    je          005EBA6E
 005EBA66    add         esp,0FFFFFFF0
 005EBA69    call        @ClassCreate
 005EBA6E    mov         dword ptr [ebp-0C],ecx
 005EBA71    mov         byte ptr [ebp-5],dl
 005EBA74    mov         dword ptr [ebp-4],eax
 005EBA77    mov         ecx,dword ptr [ebp-0C]
 005EBA7A    xor         edx,edx
 005EBA7C    mov         eax,dword ptr [ebp-4]
 005EBA7F    call        TCommonDialog.Create
 005EBA84    mov         eax,dword ptr [ebp-4]
 005EBA87    mov         dx,word ptr ds:[5EBB40];0x1 gvar_005EBB40
 005EBA8E    mov         word ptr [eax+58],dx;TFindDialog.Options:TFindOptions
 005EBA92    mov         eax,dword ptr [ebp-4]
 005EBA95    mov         dword ptr [eax+5A],0FFFFFFFF;TFindDialog.FPosition:TPoint
 005EBA9C    mov         eax,dword ptr [ebp-4]
 005EBA9F    mov         dword ptr [eax+5E],0FFFFFFFF
 005EBAA6    mov         eax,dword ptr [ebp-4]
 005EBAA9    add         eax,84;TFindDialog.FFindReplace:TFindReplace
 005EBAAE    mov         dword ptr [ebp-10],eax
 005EBAB1    mov         eax,dword ptr [ebp-10]
 005EBAB4    mov         dword ptr [eax],28
 005EBABA    mov         eax,[006E9DCC];^Application:TApplication
 005EBABF    mov         eax,dword ptr [eax]
 005EBAC1    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005EBAC4    mov         edx,dword ptr [ebp-10]
 005EBAC7    mov         dword ptr [edx+4],eax
 005EBACA    mov         eax,[006EA390];0x0 gvar_006EA390
 005EBACF    mov         edx,dword ptr [ebp-10]
 005EBAD2    mov         dword ptr [edx+8],eax
 005EBAD5    mov         eax,dword ptr [ebp-4]
 005EBAD8    add         eax,0AC;TFindDialog.FFindText:array[$0..$FF] of System.Char
 005EBADD    mov         edx,dword ptr [ebp-10]
 005EBAE0    mov         dword ptr [edx+10],eax
 005EBAE3    mov         eax,dword ptr [ebp-10]
 005EBAE6    mov         word ptr [eax+18],100
 005EBAEC    mov         eax,dword ptr [ebp-4]
 005EBAEF    add         eax,1AC;TFindDialog.FReplaceText:array[$0..$FF] of System.Char
 005EBAF4    mov         edx,dword ptr [ebp-10]
 005EBAF7    mov         dword ptr [edx+14],eax
 005EBAFA    mov         eax,dword ptr [ebp-10]
 005EBAFD    mov         word ptr [eax+1A],100
 005EBB03    mov         eax,dword ptr [ebp-4]
 005EBB06    mov         edx,dword ptr [ebp-10]
 005EBB09    mov         dword ptr [edx+1C],eax
 005EBB0C    mov         eax,dword ptr [ebp-10]
 005EBB0F    mov         dword ptr [eax+20],5EB9B4
 005EBB16    mov         eax,692890;COMDLG32.FindTextA:HWND
 005EBB1B    mov         edx,dword ptr [ebp-4]
 005EBB1E    mov         dword ptr [edx+64],eax;TFindDialog.FFindReplaceFunc:TFindReplaceFunc
 005EBB21    mov         eax,dword ptr [ebp-4]
 005EBB24    cmp         byte ptr [ebp-5],0
>005EBB28    je          005EBB39
 005EBB2A    call        @AfterConstruction
 005EBB2F    pop         dword ptr fs:[0]
 005EBB36    add         esp,0C
 005EBB39    mov         eax,dword ptr [ebp-4]
 005EBB3C    mov         esp,ebp
 005EBB3E    pop         ebp
 005EBB3F    ret
*}
end;

//005EBB44
destructor TFindDialog.Destroy;
begin
{*
 005EBB44    push        ebp
 005EBB45    mov         ebp,esp
 005EBB47    add         esp,0FFFFFFF8
 005EBB4A    call        @BeforeDestruction
 005EBB4F    mov         byte ptr [ebp-5],dl
 005EBB52    mov         dword ptr [ebp-4],eax
 005EBB55    mov         eax,dword ptr [ebp-4]
 005EBB58    cmp         dword ptr [eax+80],0;TFindDialog.FFindHandle:HWND
>005EBB5F    je          005EBB76
 005EBB61    push        0
 005EBB63    push        0
 005EBB65    push        10
 005EBB67    mov         eax,dword ptr [ebp-4]
 005EBB6A    mov         eax,dword ptr [eax+80];TFindDialog.FFindHandle:HWND
 005EBB70    push        eax
 005EBB71    call        USER32.SendMessageA
 005EBB76    mov         eax,dword ptr [ebp-4]
 005EBB79    cmp         dword ptr [eax+68],0;TFindDialog.FRedirector:TWinControl
>005EBB7D    je          005EBB8D
 005EBB7F    mov         eax,dword ptr [ebp-4]
 005EBB82    mov         eax,dword ptr [eax+68];TFindDialog.FRedirector:TWinControl
 005EBB85    xor         edx,edx
 005EBB87    mov         dword ptr [eax+208],edx
 005EBB8D    mov         eax,dword ptr [ebp-4]
 005EBB90    add         eax,68;TFindDialog.FRedirector:TWinControl
 005EBB93    call        FreeAndNil
 005EBB98    mov         dl,byte ptr [ebp-5]
 005EBB9B    and         dl,0FC
 005EBB9E    mov         eax,dword ptr [ebp-4]
 005EBBA1    call        TCommonDialog.Destroy
 005EBBA6    cmp         byte ptr [ebp-5],0
>005EBBAA    jle         005EBBB4
 005EBBAC    mov         eax,dword ptr [ebp-4]
 005EBBAF    call        @ClassDestroy
 005EBBB4    pop         ecx
 005EBBB5    pop         ecx
 005EBBB6    pop         ebp
 005EBBB7    ret
*}
end;

//005EBBB8
procedure sub_005EBBB8(?:TFindDialog);
begin
{*
 005EBBB8    push        ebp
 005EBBB9    mov         ebp,esp
 005EBBBB    push        ecx
 005EBBBC    mov         dword ptr [ebp-4],eax
 005EBBBF    mov         eax,dword ptr [ebp-4]
 005EBBC2    cmp         dword ptr [eax+80],0;TFindDialog.FFindHandle:HWND
>005EBBC9    je          005EBBE0
 005EBBCB    push        0
 005EBBCD    push        0
 005EBBCF    push        10
 005EBBD1    mov         eax,dword ptr [ebp-4]
 005EBBD4    mov         eax,dword ptr [eax+80];TFindDialog.FFindHandle:HWND
 005EBBDA    push        eax
 005EBBDB    call        USER32.PostMessageA
 005EBBE0    pop         ecx
 005EBBE1    pop         ebp
 005EBBE2    ret
*}
end;

//005EBC2C
{*function TFindDialog.Execute:?;
begin
 005EBC2C    push        ebp
 005EBC2D    mov         ebp,esp
 005EBC2F    add         esp,0FFFFFFF4
 005EBC32    mov         dword ptr [ebp-4],eax
 005EBC35    mov         eax,dword ptr [ebp-4]
 005EBC38    cmp         dword ptr [eax+80],0;TFindDialog.FFindHandle:HWND
>005EBC3F    je          005EBC59
 005EBC41    mov         eax,dword ptr [ebp-4]
 005EBC44    mov         eax,dword ptr [eax+80];TFindDialog.FFindHandle:HWND
 005EBC4A    push        eax
 005EBC4B    call        USER32.BringWindowToTop
 005EBC50    mov         byte ptr [ebp-5],1
>005EBC54    jmp         005EBD51
 005EBC59    mov         eax,dword ptr [ebp-4]
 005EBC5C    mov         dword ptr [eax+90],100
 005EBC66    mov         eax,dword ptr [ebp-4]
 005EBC69    mov         dword ptr [eax+0A4],5EB9B4
 005EBC73    xor         ecx,ecx
 005EBC75    mov         dl,1
 005EBC77    mov         eax,[005EB6BC];TRedirectorWindow
 005EBC7C    call        TWinControl.Create;TRedirectorWindow.Create
 005EBC81    mov         edx,dword ptr [ebp-4]
 005EBC84    mov         dword ptr [edx+68],eax;TFindDialog.FRedirector:TWinControl
 005EBC87    mov         eax,dword ptr [ebp-4]
 005EBC8A    mov         eax,dword ptr [eax+68];TFindDialog.FRedirector:TWinControl
 005EBC8D    mov         dword ptr [ebp-0C],eax
 005EBC90    mov         eax,dword ptr [ebp-0C]
 005EBC93    mov         edx,dword ptr [ebp-4]
 005EBC96    mov         dword ptr [eax+208],edx
 005EBC9C    mov         eax,dword ptr [ebp-0C]
 005EBC9F    add         eax,20C
 005EBCA4    push        eax
 005EBCA5    push        5EBBE4
 005EBCAA    call        KERNEL32.GetCurrentThreadId
 005EBCAF    push        eax
 005EBCB0    call        USER32.EnumThreadWindows
 005EBCB5    mov         eax,dword ptr [ebp-4]
 005EBCB8    mov         eax,dword ptr [eax+68];TFindDialog.FRedirector:TWinControl
 005EBCBB    call        TWinControl.GetHandle
 005EBCC0    mov         edx,dword ptr [ebp-4]
 005EBCC3    mov         dword ptr [edx+88],eax
 005EBCC9    mov         byte ptr [ebp-6],0
 005EBCCD    mov         al,byte ptr [ebp-6]
 005EBCD0    mov         edx,dword ptr [ebp-4]
 005EBCD3    cmp         al,0F
>005EBCD5    ja          005EBCDE
 005EBCD7    and         eax,7F
 005EBCDA    bt          dword ptr [edx+58],eax;TFindDialog.Options:TFindOptions
>005EBCDE    jae         005EBCF5
 005EBCE0    xor         eax,eax
 005EBCE2    mov         al,byte ptr [ebp-6]
 005EBCE5    mov         eax,dword ptr [eax*4+6E4208]
 005EBCEC    mov         edx,dword ptr [ebp-4]
 005EBCEF    or          dword ptr [edx+90],eax
 005EBCF5    inc         byte ptr [ebp-6]
 005EBCF8    cmp         byte ptr [ebp-6],0D
>005EBCFC    jne         005EBCCD
 005EBCFE    mov         eax,dword ptr [ebp-4]
 005EBD01    cmp         dword ptr [eax+44],0;TFindDialog.FTemplate:PChar
>005EBD05    je          005EBD23
 005EBD07    mov         eax,dword ptr [ebp-4]
 005EBD0A    or          dword ptr [eax+90],200
 005EBD14    mov         eax,dword ptr [ebp-4]
 005EBD17    mov         eax,dword ptr [eax+44];TFindDialog.FTemplate:PChar
 005EBD1A    mov         edx,dword ptr [ebp-4]
 005EBD1D    mov         dword ptr [edx+0A8],eax
 005EBD23    mov         eax,dword ptr [ebp-4]
 005EBD26    mov         [006E4138],eax;gvar_006E4138:TFindDialog
 005EBD2B    mov         eax,dword ptr [ebp-4]
 005EBD2E    add         eax,84;TFindDialog.FFindReplace:TFindReplace
 005EBD33    push        eax
 005EBD34    mov         eax,dword ptr [ebp-4]
 005EBD37    call        dword ptr [eax+64]
 005EBD3A    mov         edx,dword ptr [ebp-4]
 005EBD3D    mov         dword ptr [edx+80],eax;TFindDialog.FFindHandle:HWND
 005EBD43    mov         eax,dword ptr [ebp-4]
 005EBD46    cmp         dword ptr [eax+80],0;TFindDialog.FFindHandle:HWND
 005EBD4D    setne       byte ptr [ebp-5]
 005EBD51    mov         al,byte ptr [ebp-5]
 005EBD54    mov         esp,ebp
 005EBD56    pop         ebp
 005EBD57    ret
end;*}

//005EBD58
procedure TFindDialog.sub_005EBD58;
begin
{*
 005EBD58    push        ebp
 005EBD59    mov         ebp,esp
 005EBD5B    push        ecx
 005EBD5C    push        ebx
 005EBD5D    mov         dword ptr [ebp-4],eax
 005EBD60    mov         eax,dword ptr [ebp-4]
 005EBD63    cmp         word ptr [eax+72],0;TFindDialog.?f72:word
>005EBD68    je          005EBD76
 005EBD6A    mov         ebx,dword ptr [ebp-4]
 005EBD6D    mov         edx,dword ptr [ebp-4]
 005EBD70    mov         eax,dword ptr [ebx+74];TFindDialog.?f74:dword
 005EBD73    call        dword ptr [ebx+70];TFindDialog.OnFind
 005EBD76    pop         ebx
 005EBD77    pop         ecx
 005EBD78    pop         ebp
 005EBD79    ret
*}
end;

//005EBD7C
{*procedure TFindDialog.GetFindText(?:?);
begin
 005EBD7C    push        ebp
 005EBD7D    mov         ebp,esp
 005EBD7F    add         esp,0FFFFFFF8
 005EBD82    mov         dword ptr [ebp-8],edx
 005EBD85    mov         dword ptr [ebp-4],eax
 005EBD88    mov         eax,dword ptr [ebp-8]
 005EBD8B    mov         edx,dword ptr [ebp-4]
 005EBD8E    add         edx,0AC;TFindDialog.FFindText:array[$0..$FF] of System.Char
 005EBD94    mov         ecx,100
 005EBD99    call        @LStrFromArray
 005EBD9E    pop         ecx
 005EBD9F    pop         ecx
 005EBDA0    pop         ebp
 005EBDA1    ret
end;*}

//005EBE18
{*procedure TReplaceDialog.GetReplaceText(?:?);
begin
 005EBE18    push        ebp
 005EBE19    mov         ebp,esp
 005EBE1B    add         esp,0FFFFFFF8
 005EBE1E    mov         dword ptr [ebp-8],edx
 005EBE21    mov         dword ptr [ebp-4],eax
 005EBE24    mov         eax,dword ptr [ebp-8]
 005EBE27    mov         edx,dword ptr [ebp-4]
 005EBE2A    add         edx,1AC;TReplaceDialog.FReplaceText:array[$0..$FF] of System.Char
 005EBE30    mov         ecx,100
 005EBE35    call        @LStrFromArray
 005EBE3A    pop         ecx
 005EBE3B    pop         ecx
 005EBE3C    pop         ebp
 005EBE3D    ret
end;*}

//005EBE64
{*function sub_005EBE64(?:?):?;
begin
 005EBE64    push        ebp
 005EBE65    mov         ebp,esp
 005EBE67    add         esp,0FFFFFFE4
 005EBE6A    push        esi
 005EBE6B    mov         dword ptr [ebp-8],edx
 005EBE6E    mov         dword ptr [ebp-4],eax
 005EBE71    mov         edx,dword ptr [ebp-8]
 005EBE74    mov         eax,dword ptr [ebp-4]
 005EBE77    call        005E9A88
 005EBE7C    mov         byte ptr [ebp-9],al
 005EBE7F    cmp         byte ptr [ebp-9],0
>005EBE83    jne         005EBF87
 005EBE89    mov         eax,dword ptr [ebp-8]
 005EBE8C    mov         eax,dword ptr [eax]
 005EBE8E    cmp         eax,dword ptr ds:[6ECDA8];0x0 gvar_006ECDA8:Longword
>005EBE94    jne         005EBF87
 005EBE9A    mov         eax,dword ptr [ebp-8]
 005EBE9D    mov         eax,dword ptr [eax+8]
 005EBEA0    mov         edx,dword ptr [ebp-4]
 005EBEA3    add         edx,84;TFindDialog.FFindReplace:TFindReplace
 005EBEA9    cmp         eax,edx
>005EBEAB    jne         005EBF87
 005EBEB1    mov         eax,dword ptr [ebp-4]
 005EBEB4    mov         dx,word ptr ds:[5EBF90];0x0 gvar_005EBF90
 005EBEBB    mov         word ptr [eax+58],dx;TFindDialog.Options:TFindOptions
 005EBEBF    mov         byte ptr [ebp-0A],0
 005EBEC3    xor         eax,eax
 005EBEC5    mov         al,byte ptr [ebp-0A]
 005EBEC8    mov         eax,dword ptr [eax*4+6E4208]
 005EBECF    mov         edx,dword ptr [ebp-4]
 005EBED2    and         eax,dword ptr [edx+90]
>005EBED8    je          005EBEEB
 005EBEDA    mov         al,byte ptr [ebp-0A]
 005EBEDD    mov         edx,dword ptr [ebp-4]
 005EBEE0    cmp         al,0F
>005EBEE2    ja          005EBEEB
 005EBEE4    and         eax,7F
 005EBEE7    bts         dword ptr [edx+58],eax;TFindDialog.Options:TFindOptions
 005EBEEB    inc         byte ptr [ebp-0A]
 005EBEEE    cmp         byte ptr [ebp-0A],0D
>005EBEF2    jne         005EBEC3
 005EBEF4    mov         eax,dword ptr [ebp-4]
 005EBEF7    test        byte ptr [eax+90],8
>005EBEFE    je          005EBF0E
 005EBF00    mov         eax,dword ptr [ebp-4]
 005EBF03    mov         si,0FFED
 005EBF07    call        @CallDynaInst;TFindDialog.sub_005EBD58
>005EBF0C    jmp         005EBF83
 005EBF0E    mov         eax,dword ptr [ebp-4]
 005EBF11    test        byte ptr [eax+90],30
>005EBF18    je          005EBF28
 005EBF1A    mov         eax,dword ptr [ebp-4]
 005EBF1D    mov         si,0FFEC
 005EBF21    call        @CallDynaInst;TFindDialog.sub_005EBF94
>005EBF26    jmp         005EBF83
 005EBF28    mov         eax,dword ptr [ebp-4]
 005EBF2B    test        byte ptr [eax+90],40
>005EBF32    je          005EBF83
 005EBF34    lea         eax,[ebp-1A]
 005EBF37    push        eax
 005EBF38    mov         eax,dword ptr [ebp-4]
 005EBF3B    mov         eax,dword ptr [eax+80];TFindDialog.FFindHandle:HWND
 005EBF41    push        eax
 005EBF42    call        USER32.GetWindowRect
 005EBF47    mov         eax,dword ptr [ebp-4]
 005EBF4A    mov         edx,dword ptr [ebp-1A]
 005EBF4D    mov         dword ptr [eax+5A],edx;TFindDialog.FPosition:TPoint
 005EBF50    mov         edx,dword ptr [ebp-16]
 005EBF53    mov         dword ptr [eax+5E],edx
 005EBF56    mov         eax,dword ptr [ebp-4]
 005EBF59    xor         edx,edx
 005EBF5B    mov         dword ptr [eax+80],edx;TFindDialog.FFindHandle:HWND
 005EBF61    push        0
 005EBF63    push        0
 005EBF65    push        0B021
 005EBF6A    mov         eax,dword ptr [ebp-4]
 005EBF6D    mov         eax,dword ptr [eax+68];TFindDialog.FRedirector:TWinControl
 005EBF70    call        TWinControl.GetHandle
 005EBF75    push        eax
 005EBF76    call        USER32.PostMessageA
 005EBF7B    mov         eax,dword ptr [ebp-4]
 005EBF7E    xor         edx,edx
 005EBF80    mov         dword ptr [eax+68],edx;TFindDialog.FRedirector:TWinControl
 005EBF83    mov         byte ptr [ebp-9],1
 005EBF87    mov         al,byte ptr [ebp-9]
 005EBF8A    pop         esi
 005EBF8B    mov         esp,ebp
 005EBF8D    pop         ebp
 005EBF8E    ret
end;*}

//005EBF94
procedure TFindDialog.sub_005EBF94;
begin
{*
 005EBF94    push        ebp
 005EBF95    mov         ebp,esp
 005EBF97    push        ecx
 005EBF98    push        ebx
 005EBF99    mov         dword ptr [ebp-4],eax
 005EBF9C    mov         eax,dword ptr [ebp-4]
 005EBF9F    cmp         word ptr [eax+7A],0;TFindDialog.?f7A:word
>005EBFA4    je          005EBFB2
 005EBFA6    mov         ebx,dword ptr [ebp-4]
 005EBFA9    mov         edx,dword ptr [ebp-4]
 005EBFAC    mov         eax,dword ptr [ebx+7C];TFindDialog.?f7C:dword
 005EBFAF    call        dword ptr [ebx+78];TFindDialog.FOnReplace
 005EBFB2    pop         ebx
 005EBFB3    pop         ecx
 005EBFB4    pop         ebp
 005EBFB5    ret
*}
end;

//005EBFB8
procedure TFindDialog.SetFindText(Value:String);
begin
{*
 005EBFB8    push        ebp
 005EBFB9    mov         ebp,esp
 005EBFBB    add         esp,0FFFFFFF8
 005EBFBE    mov         dword ptr [ebp-8],edx
 005EBFC1    mov         dword ptr [ebp-4],eax
 005EBFC4    mov         eax,dword ptr [ebp-8]
 005EBFC7    call        @LStrToPChar
 005EBFCC    mov         edx,eax
 005EBFCE    mov         eax,dword ptr [ebp-4]
 005EBFD1    add         eax,0AC;TFindDialog.FFindText:array[$0..$FF] of System.Char
 005EBFD6    mov         ecx,0FF
 005EBFDB    call        StrLCopy
 005EBFE0    pop         ecx
 005EBFE1    pop         ecx
 005EBFE2    pop         ebp
 005EBFE3    ret
*}
end;

//005EBFE4
procedure TReplaceDialog.SetReplaceText(Value:String);
begin
{*
 005EBFE4    push        ebp
 005EBFE5    mov         ebp,esp
 005EBFE7    add         esp,0FFFFFFF8
 005EBFEA    mov         dword ptr [ebp-8],edx
 005EBFED    mov         dword ptr [ebp-4],eax
 005EBFF0    mov         eax,dword ptr [ebp-8]
 005EBFF3    call        @LStrToPChar
 005EBFF8    mov         edx,eax
 005EBFFA    mov         eax,dword ptr [ebp-4]
 005EBFFD    add         eax,1AC;TReplaceDialog.FReplaceText:array[$0..$FF] of System.Char
 005EC002    mov         ecx,0FF
 005EC007    call        StrLCopy
 005EC00C    pop         ecx
 005EC00D    pop         ecx
 005EC00E    pop         ebp
 005EC00F    ret
*}
end;

//005EC010
constructor TReplaceDialog.Create(AOwner:TComponent);
begin
{*
 005EC010    push        ebp
 005EC011    mov         ebp,esp
 005EC013    add         esp,0FFFFFFF4
 005EC016    test        dl,dl
>005EC018    je          005EC022
 005EC01A    add         esp,0FFFFFFF0
 005EC01D    call        @ClassCreate
 005EC022    mov         dword ptr [ebp-0C],ecx
 005EC025    mov         byte ptr [ebp-5],dl
 005EC028    mov         dword ptr [ebp-4],eax
 005EC02B    mov         ecx,dword ptr [ebp-0C]
 005EC02E    xor         edx,edx
 005EC030    mov         eax,dword ptr [ebp-4]
 005EC033    call        TFindDialog.Create
 005EC038    mov         eax,6928A8;COMDLG32.ReplaceTextA:HWND
 005EC03D    mov         edx,dword ptr [ebp-4]
 005EC040    mov         dword ptr [edx+64],eax;TReplaceDialog.FFindReplaceFunc:TFindReplaceFunc
 005EC043    mov         eax,dword ptr [ebp-4]
 005EC046    cmp         byte ptr [ebp-5],0
>005EC04A    je          005EC05B
 005EC04C    call        @AfterConstruction
 005EC051    pop         dword ptr fs:[0]
 005EC058    add         esp,0C
 005EC05B    mov         eax,dword ptr [ebp-4]
 005EC05E    mov         esp,ebp
 005EC060    pop         ebp
 005EC061    ret
*}
end;

//005EC064
{*procedure sub_005EC064(?:?; ?:?);
begin
 005EC064    push        ebp
 005EC065    mov         ebp,esp
 005EC067    add         esp,0FFFFFFC0
 005EC06A    mov         dword ptr [ebp-8],edx
 005EC06D    mov         dword ptr [ebp-4],eax
 005EC070    xor         eax,eax
 005EC072    mov         dword ptr [ebp-0C],eax
 005EC075    mov         eax,dword ptr [ebp-0C]
 005EC078    add         eax,41
 005EC07B    mov         edx,dword ptr [ebp-0C]
 005EC07E    mov         byte ptr [ebp+edx-40],al
 005EC082    inc         dword ptr [ebp-0C]
 005EC085    cmp         dword ptr [ebp-0C],1A
>005EC089    jne         005EC075
 005EC08B    xor         eax,eax
 005EC08D    mov         dword ptr [ebp-0C],eax
 005EC090    mov         eax,dword ptr [ebp-0C]
 005EC093    add         eax,61
 005EC096    mov         edx,dword ptr [ebp-0C]
 005EC099    mov         byte ptr [ebp+edx-26],al
 005EC09D    inc         dword ptr [ebp-0C]
 005EC0A0    cmp         dword ptr [ebp-0C],1A
>005EC0A4    jne         005EC090
 005EC0A6    mov         eax,dword ptr [ebp-8]
 005EC0A9    push        eax
 005EC0AA    push        34
 005EC0AC    lea         eax,[ebp-40]
 005EC0AF    push        eax
 005EC0B0    mov         eax,dword ptr [ebp-4]
 005EC0B3    call        TCanvas.GetHandle
 005EC0B8    push        eax
 005EC0B9    call        GDI32.GetTextExtentPointA
 005EC0BE    mov         eax,dword ptr [ebp-8]
 005EC0C1    mov         eax,dword ptr [eax]
 005EC0C3    mov         ecx,34
 005EC0C8    cdq
 005EC0C9    idiv        eax,ecx
 005EC0CB    mov         edx,dword ptr [ebp-8]
 005EC0CE    mov         dword ptr [edx],eax
 005EC0D0    mov         esp,ebp
 005EC0D2    pop         ebp
 005EC0D3    ret
end;*}

//005EC248
constructor TMessageForm.Create;
begin
{*
 005EC248    push        ebp
 005EC249    mov         ebp,esp
 005EC24B    add         esp,0FFFFFEA0
 005EC251    test        dl,dl
>005EC253    je          005EC25D
 005EC255    add         esp,0FFFFFFF0
 005EC258    call        @ClassCreate
 005EC25D    mov         dword ptr [ebp-0C],ecx
 005EC260    mov         byte ptr [ebp-5],dl
 005EC263    mov         dword ptr [ebp-4],eax
 005EC266    push        0
 005EC268    mov         ecx,dword ptr [ebp-0C]
 005EC26B    xor         edx,edx
 005EC26D    mov         eax,dword ptr [ebp-4]
 005EC270    call        005CF138
 005EC275    mov         dword ptr [ebp-160],154
 005EC27F    push        0
 005EC281    lea         eax,[ebp-160]
 005EC287    push        eax
 005EC288    push        0
 005EC28A    push        29
 005EC28C    call        USER32.SystemParametersInfoA
 005EC291    test        eax,eax
>005EC293    je          005EC2AB
 005EC295    lea         eax,[ebp-48]
 005EC298    push        eax
 005EC299    call        GDI32.CreateFontIndirectA
 005EC29E    mov         edx,eax
 005EC2A0    mov         eax,dword ptr [ebp-4]
 005EC2A3    mov         eax,dword ptr [eax+68]
 005EC2A6    call        005C01BC
 005EC2AB    mov         eax,dword ptr [ebp-4]
 005EC2AE    cmp         byte ptr [ebp-5],0
>005EC2B2    je          005EC2C3
 005EC2B4    call        @AfterConstruction
 005EC2B9    pop         dword ptr fs:[0]
 005EC2C0    add         esp,0C
 005EC2C3    mov         eax,dword ptr [ebp-4]
 005EC2C6    mov         esp,ebp
 005EC2C8    pop         ebp
 005EC2C9    ret
*}
end;

//005EC76C
{*function sub_005EC76C(?:?; ?:?; ?:?):?;
begin
 005EC76C    push        ebp
 005EC76D    mov         ebp,esp
 005EC76F    add         esp,0FFFFFF84
 005EC772    push        ebx
 005EC773    push        esi
 005EC774    xor         ebx,ebx
 005EC776    mov         dword ptr [ebp-7C],ebx
 005EC779    mov         dword ptr [ebp-78],ebx
 005EC77C    mov         dword ptr [ebp-74],ebx
 005EC77F    mov         dword ptr [ebp-70],ebx
 005EC782    mov         word ptr [ebp-7],cx
 005EC786    mov         byte ptr [ebp-5],dl
 005EC789    mov         dword ptr [ebp-4],eax
 005EC78C    xor         eax,eax
 005EC78E    push        ebp
 005EC78F    push        5ECD52
 005EC794    push        dword ptr fs:[eax]
 005EC797    mov         dword ptr fs:[eax],esp
 005EC79A    mov         ecx,dword ptr ds:[6E9DCC];^Application:TApplication
 005EC7A0    mov         ecx,dword ptr [ecx]
 005EC7A2    mov         dl,1
 005EC7A4    mov         eax,[005EC0D4];TMessageForm
 005EC7A9    call        TMessageForm.Create;TMessageForm.Create
 005EC7AE    mov         dword ptr [ebp-0C],eax
 005EC7B1    mov         eax,[006E9DCC];^Application:TApplication
 005EC7B6    mov         eax,dword ptr [eax]
 005EC7B8    mov         dl,byte ptr [eax+34];TApplication.FBiDiMode:TBiDiMode
 005EC7BB    mov         eax,dword ptr [ebp-0C]
 005EC7BE    mov         ecx,dword ptr [eax]
 005EC7C0    call        dword ptr [ecx+70];TCheckListBox.SetBiDiMode
 005EC7C3    mov         dl,3
 005EC7C5    mov         eax,dword ptr [ebp-0C]
 005EC7C8    call        TForm.SetBorderStyle
 005EC7CD    mov         eax,dword ptr [ebp-0C]
 005EC7D0    call        005D0E28
 005EC7D5    mov         edx,dword ptr [ebp-0C]
 005EC7D8    mov         edx,dword ptr [edx+68];TMessageForm.FFont:TFont
 005EC7DB    call        TCanvas.SetFont
 005EC7E0    mov         eax,dword ptr [ebp-0C]
 005EC7E3    mov         byte ptr [eax+22D],1;TMessageForm.FKeyPreview:Boolean
 005EC7EA    mov         eax,dword ptr [ebp-0C]
 005EC7ED    mov         edx,dword ptr [ebp-0C]
 005EC7F0    mov         dword ptr [eax+1DC],edx;TMessageForm.?f1DC:TSplitter
 005EC7F6    mov         dword ptr [eax+1D8],5EC2F4;TMessageForm.FOnKeyDown:TKeyEvent
 005EC800    mov         eax,dword ptr [ebp-0C]
 005EC803    call        005D0E28
 005EC808    lea         edx,[ebp-14]
 005EC80B    call        005EC064
 005EC810    push        4
 005EC812    mov         eax,dword ptr [ebp-14]
 005EC815    push        eax
 005EC816    push        8
 005EC818    call        KERNEL32.MulDiv
 005EC81D    mov         dword ptr [ebp-18],eax
 005EC820    push        8
 005EC822    mov         eax,dword ptr [ebp-10]
 005EC825    push        eax
 005EC826    push        8
 005EC828    call        KERNEL32.MulDiv
 005EC82D    mov         dword ptr [ebp-1C],eax
 005EC830    push        4
 005EC832    mov         eax,dword ptr [ebp-14]
 005EC835    push        eax
 005EC836    push        0A
 005EC838    call        KERNEL32.MulDiv
 005EC83D    mov         dword ptr [ebp-20],eax
 005EC840    push        8
 005EC842    mov         eax,dword ptr [ebp-10]
 005EC845    push        eax
 005EC846    push        0A
 005EC848    call        KERNEL32.MulDiv
 005EC84D    mov         dword ptr [ebp-24],eax
 005EC850    push        4
 005EC852    mov         eax,dword ptr [ebp-14]
 005EC855    push        eax
 005EC856    push        32
 005EC858    call        KERNEL32.MulDiv
 005EC85D    mov         dword ptr [ebp-28],eax
 005EC860    mov         byte ptr [ebp-49],0
 005EC864    mov         al,byte ptr [ebp-49]
 005EC867    cmp         al,0F
>005EC869    ja          005EC872
 005EC86B    and         eax,7F
 005EC86E    bt          dword ptr [ebp-7],eax
>005EC872    jae         005EC911
 005EC878    xor         eax,eax
 005EC87A    mov         al,byte ptr [ebp-49]
 005EC87D    cmp         dword ptr [eax*4+6ECDB0],0
>005EC885    jne         005EC8F1
 005EC887    push        0
 005EC889    lea         eax,[ebp-6C]
 005EC88C    push        eax
 005EC88D    xor         ecx,ecx
 005EC88F    xor         edx,edx
 005EC891    xor         eax,eax
 005EC893    call        Rect
 005EC898    mov         eax,dword ptr [ebp-0C]
 005EC89B    call        005F6778
 005EC8A0    or          eax,420
 005EC8A5    push        eax
 005EC8A6    lea         eax,[ebp-6C]
 005EC8A9    push        eax
 005EC8AA    push        0FF
 005EC8AC    lea         edx,[ebp-70]
 005EC8AF    xor         eax,eax
 005EC8B1    mov         al,byte ptr [ebp-49]
 005EC8B4    mov         eax,dword ptr [eax*4+6E4290]
 005EC8BB    call        LoadResString
 005EC8C0    mov         eax,dword ptr [ebp-70]
 005EC8C3    call        @LStrToPChar
 005EC8C8    push        eax
 005EC8C9    mov         eax,dword ptr [ebp-0C]
 005EC8CC    call        005D0E28
 005EC8D1    call        TCanvas.GetHandle
 005EC8D6    push        eax
 005EC8D7    call        USER32.DrawTextA
 005EC8DC    mov         eax,dword ptr [ebp-64]
 005EC8DF    sub         eax,dword ptr [ebp-6C]
 005EC8E2    add         eax,8
 005EC8E5    xor         edx,edx
 005EC8E7    mov         dl,byte ptr [ebp-49]
 005EC8EA    mov         dword ptr [edx*4+6ECDB0],eax
 005EC8F1    xor         eax,eax
 005EC8F3    mov         al,byte ptr [ebp-49]
 005EC8F6    mov         eax,dword ptr [eax*4+6ECDB0]
 005EC8FD    cmp         eax,dword ptr [ebp-28]
>005EC900    jle         005EC911
 005EC902    xor         eax,eax
 005EC904    mov         al,byte ptr [ebp-49]
 005EC907    mov         eax,dword ptr [eax*4+6ECDB0]
 005EC90E    mov         dword ptr [ebp-28],eax
 005EC911    inc         byte ptr [ebp-49]
 005EC914    cmp         byte ptr [ebp-49],0B
>005EC918    jne         005EC864
 005EC91E    push        8
 005EC920    mov         eax,dword ptr [ebp-10]
 005EC923    push        eax
 005EC924    push        0E
 005EC926    call        KERNEL32.MulDiv
 005EC92B    mov         dword ptr [ebp-2C],eax
 005EC92E    push        4
 005EC930    mov         eax,dword ptr [ebp-14]
 005EC933    push        eax
 005EC934    push        4
 005EC936    call        KERNEL32.MulDiv
 005EC93B    mov         dword ptr [ebp-30],eax
 005EC93E    push        0
 005EC940    mov         eax,[006E9DD0];^Screen:TScreen
 005EC945    mov         eax,dword ptr [eax]
 005EC947    call        005D55E0
 005EC94C    sar         eax,1
>005EC94E    jns         005EC953
 005EC950    adc         eax,0
 005EC953    push        eax
 005EC954    push        0
 005EC956    push        0
 005EC958    lea         eax,[ebp-6C]
 005EC95B    push        eax
 005EC95C    call        USER32.SetRect
 005EC961    mov         eax,dword ptr [ebp-0C]
 005EC964    call        005F6778
 005EC969    or          eax,450
 005EC96E    push        eax
 005EC96F    lea         eax,[ebp-6C]
 005EC972    push        eax
 005EC973    mov         eax,dword ptr [ebp-4]
 005EC976    call        @LStrLen
 005EC97B    inc         eax
 005EC97C    push        eax
 005EC97D    mov         eax,dword ptr [ebp-4]
 005EC980    call        @LStrToPChar
 005EC985    push        eax
 005EC986    mov         eax,dword ptr [ebp-0C]
 005EC989    call        005D0E28
 005EC98E    call        TCanvas.GetHandle
 005EC993    push        eax
 005EC994    call        USER32.DrawTextA
 005EC999    xor         eax,eax
 005EC99B    mov         al,byte ptr [ebp-5]
 005EC99E    mov         eax,dword ptr [eax*4+6E4250]
 005EC9A5    mov         dword ptr [ebp-50],eax
 005EC9A8    mov         eax,dword ptr [ebp-64]
 005EC9AB    mov         dword ptr [ebp-3C],eax
 005EC9AE    mov         eax,dword ptr [ebp-60]
 005EC9B1    mov         dword ptr [ebp-40],eax
 005EC9B4    cmp         dword ptr [ebp-50],0
>005EC9B8    je          005EC9D0
 005EC9BA    mov         eax,dword ptr [ebp-20]
 005EC9BD    add         eax,20
 005EC9C0    add         dword ptr [ebp-3C],eax
 005EC9C3    cmp         dword ptr [ebp-40],20
>005EC9C7    jge         005EC9D0
 005EC9C9    mov         dword ptr [ebp-40],20
 005EC9D0    xor         eax,eax
 005EC9D2    mov         dword ptr [ebp-34],eax
 005EC9D5    mov         byte ptr [ebp-49],0
 005EC9D9    mov         al,byte ptr [ebp-49]
 005EC9DC    cmp         al,0F
>005EC9DE    ja          005EC9E7
 005EC9E0    and         eax,7F
 005EC9E3    bt          dword ptr [ebp-7],eax
>005EC9E7    jae         005EC9EC
 005EC9E9    inc         dword ptr [ebp-34]
 005EC9EC    inc         byte ptr [ebp-49]
 005EC9EF    cmp         byte ptr [ebp-49],0B
>005EC9F3    jne         005EC9D9
 005EC9F5    xor         eax,eax
 005EC9F7    mov         dword ptr [ebp-38],eax
 005EC9FA    cmp         dword ptr [ebp-34],0
>005EC9FE    je          005ECA13
 005ECA00    mov         eax,dword ptr [ebp-28]
 005ECA03    imul        dword ptr [ebp-34]
 005ECA06    mov         edx,dword ptr [ebp-34]
 005ECA09    dec         edx
 005ECA0A    imul        edx,dword ptr [ebp-30]
 005ECA0E    add         eax,edx
 005ECA10    mov         dword ptr [ebp-38],eax
 005ECA13    mov         edx,dword ptr [ebp-38]
 005ECA16    mov         eax,dword ptr [ebp-3C]
 005ECA19    call        00653AC8
 005ECA1E    mov         edx,eax
 005ECA20    mov         eax,dword ptr [ebp-18]
 005ECA23    add         eax,eax
 005ECA25    add         edx,eax
 005ECA27    mov         eax,dword ptr [ebp-0C]
 005ECA2A    call        TForm.SetClientWidth
 005ECA2F    mov         edx,dword ptr [ebp-40]
 005ECA32    add         edx,dword ptr [ebp-2C]
 005ECA35    add         edx,dword ptr [ebp-24]
 005ECA38    mov         eax,dword ptr [ebp-1C]
 005ECA3B    add         eax,eax
 005ECA3D    add         edx,eax
 005ECA3F    mov         eax,dword ptr [ebp-0C]
 005ECA42    call        TForm.SetClientHeight
 005ECA47    mov         eax,[006E9DD0];^Screen:TScreen
 005ECA4C    mov         eax,dword ptr [eax]
 005ECA4E    call        005D55E0
 005ECA53    mov         edx,eax
 005ECA55    sar         edx,1
>005ECA57    jns         005ECA5C
 005ECA59    adc         edx,0
 005ECA5C    mov         eax,dword ptr [ebp-0C]
 005ECA5F    mov         eax,dword ptr [eax+48];TMessageForm.Width:Integer
 005ECA62    sar         eax,1
>005ECA64    jns         005ECA69
 005ECA66    adc         eax,0
 005ECA69    sub         edx,eax
 005ECA6B    mov         eax,dword ptr [ebp-0C]
 005ECA6E    call        TControl.SetLeft
 005ECA73    mov         eax,[006E9DD0];^Screen:TScreen
 005ECA78    mov         eax,dword ptr [eax]
 005ECA7A    call        005D55C0
 005ECA7F    mov         edx,eax
 005ECA81    sar         edx,1
>005ECA83    jns         005ECA88
 005ECA85    adc         edx,0
 005ECA88    mov         eax,dword ptr [ebp-0C]
 005ECA8B    mov         eax,dword ptr [eax+4C];TMessageForm.Height:Integer
 005ECA8E    sar         eax,1
>005ECA90    jns         005ECA95
 005ECA92    adc         eax,0
 005ECA95    sub         edx,eax
 005ECA97    mov         eax,dword ptr [ebp-0C]
 005ECA9A    call        TControl.SetTop
 005ECA9F    cmp         byte ptr [ebp-5],4
>005ECAA3    je          005ECAC6
 005ECAA5    lea         edx,[ebp-74]
 005ECAA8    xor         eax,eax
 005ECAAA    mov         al,byte ptr [ebp-5]
 005ECAAD    mov         eax,dword ptr [eax*4+6E423C]
 005ECAB4    call        LoadResString
 005ECAB9    mov         edx,dword ptr [ebp-74]
 005ECABC    mov         eax,dword ptr [ebp-0C]
 005ECABF    call        TTabPage.SetCaption
>005ECAC4    jmp         005ECAE0
 005ECAC6    lea         edx,[ebp-78]
 005ECAC9    mov         eax,[006E9DCC];^Application:TApplication
 005ECACE    mov         eax,dword ptr [eax]
 005ECAD0    call        005D7E74
 005ECAD5    mov         edx,dword ptr [ebp-78]
 005ECAD8    mov         eax,dword ptr [ebp-0C]
 005ECADB    call        TTabPage.SetCaption
 005ECAE0    cmp         dword ptr [ebp-50],0
>005ECAE4    je          005ECB45
 005ECAE6    mov         ecx,dword ptr [ebp-0C]
 005ECAE9    mov         dl,1
 005ECAEB    mov         eax,[005DA234];TImage
 005ECAF0    call        TImage.Create;TImage.Create
 005ECAF5    mov         dword ptr [ebp-54],eax
 005ECAF8    mov         edx,5ECD6C;'Image'
 005ECAFD    mov         eax,dword ptr [ebp-54]
 005ECB00    mov         ecx,dword ptr [eax]
 005ECB02    call        dword ptr [ecx+18];TImage.sub_005F33C8
 005ECB05    mov         edx,dword ptr [ebp-0C]
 005ECB08    mov         eax,dword ptr [ebp-54]
 005ECB0B    mov         ecx,dword ptr [eax]
 005ECB0D    call        dword ptr [ecx+68];TImage.sub_005F34DC
 005ECB10    mov         eax,dword ptr [ebp-50]
 005ECB13    push        eax
 005ECB14    push        0
 005ECB16    call        USER32.LoadIconA
 005ECB1B    push        eax
 005ECB1C    mov         eax,dword ptr [ebp-54]
 005ECB1F    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005ECB25    call        005C427C
 005ECB2A    pop         edx
 005ECB2B    call        005C92A8
 005ECB30    push        20
 005ECB32    push        20
 005ECB34    mov         ecx,dword ptr [ebp-1C]
 005ECB37    mov         edx,dword ptr [ebp-18]
 005ECB3A    mov         eax,dword ptr [ebp-54]
 005ECB3D    mov         ebx,dword ptr [eax]
 005ECB3F    call        dword ptr [ebx+84];TImage.sub_005F2870
 005ECB45    mov         ecx,dword ptr [ebp-0C]
 005ECB48    mov         dl,1
 005ECB4A    mov         eax,[0059205C];TLabel
 005ECB4F    call        TCustomLabel.Create;TLabel.Create
 005ECB54    mov         edx,dword ptr [ebp-0C]
 005ECB57    mov         dword ptr [edx+2F0],eax;TMessageForm....Message:TLabel
 005ECB5D    mov         eax,dword ptr [ebp-0C]
 005ECB60    mov         eax,dword ptr [eax+2F0];TMessageForm.....Message:TLabel
 005ECB66    mov         dword ptr [ebp-58],eax
 005ECB69    mov         edx,5ECD7C;'Message'
 005ECB6E    mov         eax,dword ptr [ebp-58]
 005ECB71    mov         ecx,dword ptr [eax]
 005ECB73    call        dword ptr [ecx+18];TLabel.sub_005F33C8
 005ECB76    mov         edx,dword ptr [ebp-0C]
 005ECB79    mov         eax,dword ptr [ebp-58]
 005ECB7C    mov         ecx,dword ptr [eax]
 005ECB7E    call        dword ptr [ecx+68];TLabel.sub_005F34DC
 005ECB81    mov         dl,1
 005ECB83    mov         eax,dword ptr [ebp-58]
 005ECB86    call        TLabel.SetWordWrap
 005ECB8B    mov         edx,dword ptr [ebp-4]
 005ECB8E    mov         eax,dword ptr [ebp-58]
 005ECB91    call        TTabPage.SetCaption
 005ECB96    lea         edx,[ebp-6C]
 005ECB99    mov         eax,dword ptr [ebp-58]
 005ECB9C    call        005F2E58
 005ECBA1    mov         eax,dword ptr [ebp-0C]
 005ECBA4    mov         dl,byte ptr [eax+5F];TMessageForm.FBiDiMode:TBiDiMode
 005ECBA7    mov         eax,dword ptr [ebp-58]
 005ECBAA    mov         ecx,dword ptr [eax]
 005ECBAC    call        dword ptr [ecx+70];TCheckListBox.SetBiDiMode
 005ECBAF    mov         eax,dword ptr [ebp-3C]
 005ECBB2    sub         eax,dword ptr [ebp-64]
 005ECBB5    add         eax,dword ptr [ebp-18]
 005ECBB8    mov         dword ptr [ebp-48],eax
 005ECBBB    mov         eax,dword ptr [ebp-58]
 005ECBBE    mov         si,0FFC8
 005ECBC2    call        @CallDynaInst;TControl.sub_005F40CC
 005ECBC7    test        al,al
>005ECBC9    je          005ECBDF
 005ECBCB    mov         eax,dword ptr [ebp-0C]
 005ECBCE    call        TControl.GetClientWidth
 005ECBD3    sub         eax,dword ptr [ebp-48]
 005ECBD6    mov         edx,dword ptr [ebp-58]
 005ECBD9    sub         eax,dword ptr [edx+48]
 005ECBDC    mov         dword ptr [ebp-48],eax
 005ECBDF    mov         eax,dword ptr [ebp-64]
 005ECBE2    push        eax
 005ECBE3    mov         eax,dword ptr [ebp-60]
 005ECBE6    push        eax
 005ECBE7    mov         ecx,dword ptr [ebp-1C]
 005ECBEA    mov         edx,dword ptr [ebp-48]
 005ECBED    mov         eax,dword ptr [ebp-58]
 005ECBF0    mov         ebx,dword ptr [eax]
 005ECBF2    call        dword ptr [ebx+84];TLabel.sub_005F2870
 005ECBF8    test        byte ptr [ebp-7],4
>005ECBFC    je          005ECC04
 005ECBFE    mov         byte ptr [ebp-4A],2
>005ECC02    jmp         005ECC14
 005ECC04    test        byte ptr [ebp-7],1
>005ECC08    je          005ECC10
 005ECC0A    mov         byte ptr [ebp-4A],0
>005ECC0E    jmp         005ECC14
 005ECC10    mov         byte ptr [ebp-4A],5
 005ECC14    test        byte ptr [ebp-7],8
>005ECC18    je          005ECC20
 005ECC1A    mov         byte ptr [ebp-4B],3
>005ECC1E    jmp         005ECC30
 005ECC20    test        byte ptr [ebp-7],2
>005ECC24    je          005ECC2C
 005ECC26    mov         byte ptr [ebp-4B],1
>005ECC2A    jmp         005ECC30
 005ECC2C    mov         byte ptr [ebp-4B],2
 005ECC30    mov         eax,dword ptr [ebp-0C]
 005ECC33    call        TControl.GetClientWidth
 005ECC38    sub         eax,dword ptr [ebp-38]
 005ECC3B    sar         eax,1
>005ECC3D    jns         005ECC42
 005ECC3F    adc         eax,0
 005ECC42    mov         dword ptr [ebp-44],eax
 005ECC45    mov         byte ptr [ebp-49],0
 005ECC49    mov         al,byte ptr [ebp-49]
 005ECC4C    cmp         al,0F
>005ECC4E    ja          005ECC57
 005ECC50    and         eax,7F
 005ECC53    bt          dword ptr [ebp-7],eax
>005ECC57    jae         005ECD2A
 005ECC5D    mov         ecx,dword ptr [ebp-0C]
 005ECC60    mov         dl,1
 005ECC62    mov         eax,[00594650];TButton
 005ECC67    call        TButton.Create;TButton.Create
 005ECC6C    mov         dword ptr [ebp-5C],eax
 005ECC6F    xor         eax,eax
 005ECC71    mov         al,byte ptr [ebp-49]
 005ECC74    mov         edx,dword ptr [eax*4+6E4264]
 005ECC7B    mov         eax,dword ptr [ebp-5C]
 005ECC7E    mov         ecx,dword ptr [eax]
 005ECC80    call        dword ptr [ecx+18];TButton.sub_005F33C8
 005ECC83    mov         edx,dword ptr [ebp-0C]
 005ECC86    mov         eax,dword ptr [ebp-5C]
 005ECC89    mov         ecx,dword ptr [eax]
 005ECC8B    call        dword ptr [ecx+68];TButton.sub_005F34DC
 005ECC8E    lea         edx,[ebp-7C]
 005ECC91    xor         eax,eax
 005ECC93    mov         al,byte ptr [ebp-49]
 005ECC96    mov         eax,dword ptr [eax*4+6E4290]
 005ECC9D    call        LoadResString
 005ECCA2    mov         edx,dword ptr [ebp-7C]
 005ECCA5    mov         eax,dword ptr [ebp-5C]
 005ECCA8    call        TTabPage.SetCaption
 005ECCAD    xor         eax,eax
 005ECCAF    mov         al,byte ptr [ebp-49]
 005ECCB2    mov         eax,dword ptr [eax*4+6E42BC]
 005ECCB9    mov         edx,dword ptr [ebp-5C]
 005ECCBC    mov         dword ptr [edx+214],eax;TButton.ModalResult:TModalResult
 005ECCC2    mov         al,byte ptr [ebp-49]
 005ECCC5    cmp         al,byte ptr [ebp-4A]
>005ECCC8    jne         005ECCD4
 005ECCCA    mov         dl,1
 005ECCCC    mov         eax,dword ptr [ebp-5C]
 005ECCCF    call        TButton.SetDefault
 005ECCD4    mov         al,byte ptr [ebp-49]
 005ECCD7    cmp         al,byte ptr [ebp-4B]
>005ECCDA    jne         005ECCE6
 005ECCDC    mov         eax,dword ptr [ebp-5C]
 005ECCDF    mov         byte ptr [eax+211],1;TButton.Cancel:Boolean
 005ECCE6    mov         eax,dword ptr [ebp-28]
 005ECCE9    push        eax
 005ECCEA    mov         eax,dword ptr [ebp-2C]
 005ECCED    push        eax
 005ECCEE    mov         ecx,dword ptr [ebp-40]
 005ECCF1    add         ecx,dword ptr [ebp-1C]
 005ECCF4    add         ecx,dword ptr [ebp-24]
 005ECCF7    mov         edx,dword ptr [ebp-44]
 005ECCFA    mov         eax,dword ptr [ebp-5C]
 005ECCFD    mov         ebx,dword ptr [eax]
 005ECCFF    call        dword ptr [ebx+84];TButton.sub_005FB7F8
 005ECD05    mov         eax,dword ptr [ebp-28]
 005ECD08    add         eax,dword ptr [ebp-30]
 005ECD0B    add         dword ptr [ebp-44],eax
 005ECD0E    cmp         byte ptr [ebp-49],0A
>005ECD12    jne         005ECD2A
 005ECD14    mov         eax,dword ptr [ebp-5C]
 005ECD17    mov         edx,dword ptr [ebp-0C]
 005ECD1A    mov         dword ptr [eax+124],edx;TButton.?f124:TOpenPictureDialog
 005ECD20    mov         dword ptr [eax+120],5EC2CC;TButton.FOnClick:TNotifyEvent
 005ECD2A    inc         byte ptr [ebp-49]
 005ECD2D    cmp         byte ptr [ebp-49],0B
>005ECD31    jne         005ECC49
 005ECD37    xor         eax,eax
 005ECD39    pop         edx
 005ECD3A    pop         ecx
 005ECD3B    pop         ecx
 005ECD3C    mov         dword ptr fs:[eax],edx
 005ECD3F    push        5ECD59
 005ECD44    lea         eax,[ebp-7C]
 005ECD47    mov         edx,4
 005ECD4C    call        @LStrArrayClr
 005ECD51    ret
>005ECD52    jmp         @HandleFinally
>005ECD57    jmp         005ECD44
 005ECD59    mov         eax,dword ptr [ebp-0C]
 005ECD5C    pop         esi
 005ECD5D    pop         ebx
 005ECD5E    mov         esp,ebp
 005ECD60    pop         ebp
 005ECD61    ret
end;*}

//005ECD84
{*function sub_005ECD84(?:?; ?:?; ?:?; ?:?):?;
begin
 005ECD84    push        ebp
 005ECD85    mov         ebp,esp
 005ECD87    add         esp,0FFFFFFF4
 005ECD8A    mov         word ptr [ebp-7],cx
 005ECD8E    mov         byte ptr [ebp-5],dl
 005ECD91    mov         dword ptr [ebp-4],eax
 005ECD94    mov         eax,dword ptr [ebp+8]
 005ECD97    push        eax
 005ECD98    push        0FF
 005ECD9A    push        0FF
 005ECD9C    push        0
 005ECD9E    mov         cx,word ptr [ebp-7]
 005ECDA2    mov         dl,byte ptr [ebp-5]
 005ECDA5    mov         eax,dword ptr [ebp-4]
 005ECDA8    call        005ECDF8
 005ECDAD    mov         dword ptr [ebp-0C],eax
 005ECDB0    mov         eax,dword ptr [ebp-0C]
 005ECDB3    mov         esp,ebp
 005ECDB5    pop         ebp
 005ECDB6    ret         4
end;*}

//005ECDBC
{*function sub_005ECDBC(?:String; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005ECDBC    push        ebp
 005ECDBD    mov         ebp,esp
 005ECDBF    add         esp,0FFFFFFF4
 005ECDC2    mov         word ptr [ebp-7],cx
 005ECDC6    mov         byte ptr [ebp-5],dl
 005ECDC9    mov         dword ptr [ebp-4],eax
 005ECDCC    mov         eax,dword ptr [ebp+10]
 005ECDCF    push        eax
 005ECDD0    mov         eax,dword ptr [ebp+0C]
 005ECDD3    push        eax
 005ECDD4    mov         eax,dword ptr [ebp+8]
 005ECDD7    push        eax
 005ECDD8    push        0
 005ECDDA    mov         cx,word ptr [ebp-7]
 005ECDDE    mov         dl,byte ptr [ebp-5]
 005ECDE1    mov         eax,dword ptr [ebp-4]
 005ECDE4    call        005ECDF8
 005ECDE9    mov         dword ptr [ebp-0C],eax
 005ECDEC    mov         eax,dword ptr [ebp-0C]
 005ECDEF    mov         esp,ebp
 005ECDF1    pop         ebp
 005ECDF2    ret         0C
end;*}

//005ECDF8
{*function sub_005ECDF8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005ECDF8    push        ebp
 005ECDF9    mov         ebp,esp
 005ECDFB    add         esp,0FFFFFFF0
 005ECDFE    mov         word ptr [ebp-7],cx
 005ECE02    mov         byte ptr [ebp-5],dl
 005ECE05    mov         dword ptr [ebp-4],eax
 005ECE08    mov         cx,word ptr [ebp-7]
 005ECE0C    mov         dl,byte ptr [ebp-5]
 005ECE0F    mov         eax,dword ptr [ebp-4]
 005ECE12    call        005EC76C
 005ECE17    mov         dword ptr [ebp-10],eax
 005ECE1A    xor         eax,eax
 005ECE1C    push        ebp
 005ECE1D    push        5ECE9F
 005ECE22    push        dword ptr fs:[eax]
 005ECE25    mov         dword ptr fs:[eax],esp
 005ECE28    mov         edx,dword ptr [ebp+14]
 005ECE2B    mov         eax,dword ptr [ebp-10]
 005ECE2E    call        TControl.SetHelpContext
 005ECE33    mov         eax,dword ptr [ebp-10]
 005ECE36    add         eax,23C
 005ECE3B    mov         edx,dword ptr [ebp+8]
 005ECE3E    call        @LStrAsg
 005ECE43    cmp         dword ptr [ebp+10],0
>005ECE47    jl          005ECE54
 005ECE49    mov         edx,dword ptr [ebp+10]
 005ECE4C    mov         eax,dword ptr [ebp-10]
 005ECE4F    call        TControl.SetLeft
 005ECE54    cmp         dword ptr [ebp+0C],0
>005ECE58    jl          005ECE65
 005ECE5A    mov         edx,dword ptr [ebp+0C]
 005ECE5D    mov         eax,dword ptr [ebp-10]
 005ECE60    call        TControl.SetTop
 005ECE65    cmp         dword ptr [ebp+0C],0
>005ECE69    jge         005ECE7B
 005ECE6B    cmp         dword ptr [ebp+10],0
>005ECE6F    jge         005ECE7B
 005ECE71    mov         dl,4
 005ECE73    mov         eax,dword ptr [ebp-10]
 005ECE76    call        TForm.SetPosition
 005ECE7B    mov         eax,dword ptr [ebp-10]
 005ECE7E    mov         edx,dword ptr [eax]
 005ECE80    call        dword ptr [edx+0E8]
 005ECE86    mov         dword ptr [ebp-0C],eax
 005ECE89    xor         eax,eax
 005ECE8B    pop         edx
 005ECE8C    pop         ecx
 005ECE8D    pop         ecx
 005ECE8E    mov         dword ptr fs:[eax],edx
 005ECE91    push        5ECEA6
 005ECE96    mov         eax,dword ptr [ebp-10]
 005ECE99    call        TObject.Free
 005ECE9E    ret
>005ECE9F    jmp         @HandleFinally
>005ECEA4    jmp         005ECE96
 005ECEA6    mov         eax,dword ptr [ebp-0C]
 005ECEA9    mov         esp,ebp
 005ECEAB    pop         ebp
 005ECEAC    ret         10
end;*}

//005ECEB0
procedure sub_005ECEB0(?:String; ?:AnsiString; ?:Integer);
begin
{*
 005ECEB0    push        ebp
 005ECEB1    mov         ebp,esp
 005ECEB3    push        ecx
 005ECEB4    mov         dword ptr [ebp-4],eax
 005ECEB7    or          ecx,0FFFFFFFF
 005ECEBA    or          edx,0FFFFFFFF
 005ECEBD    mov         eax,dword ptr [ebp-4]
 005ECEC0    call        005ECEC8
 005ECEC5    pop         ecx
 005ECEC6    pop         ebp
 005ECEC7    ret
*}
end;

//005ECEC8
{*procedure sub_005ECEC8(?:String; ?:?; ?:?);
begin
 005ECEC8    push        ebp
 005ECEC9    mov         ebp,esp
 005ECECB    add         esp,0FFFFFFF4
 005ECECE    mov         dword ptr [ebp-0C],ecx
 005ECED1    mov         dword ptr [ebp-8],edx
 005ECED4    mov         dword ptr [ebp-4],eax
 005ECED7    push        0
 005ECED9    mov         eax,dword ptr [ebp-8]
 005ECEDC    push        eax
 005ECEDD    mov         eax,dword ptr [ebp-0C]
 005ECEE0    push        eax
 005ECEE1    mov         cx,word ptr ds:[5ECEF8];0x4 gvar_005ECEF8
 005ECEE8    mov         dl,4
 005ECEEA    mov         eax,dword ptr [ebp-4]
 005ECEED    call        005ECDBC
 005ECEF2    mov         esp,ebp
 005ECEF4    pop         ebp
 005ECEF5    ret
end;*}

//005ECEFC
procedure sub_005ECEFC;
begin
{*
 005ECEFC    push        ebp
 005ECEFD    mov         ebp,esp
 005ECEFF    add         esp,0FFFFFFD0
 005ECF02    push        5ECF5C;'commdlg_help'
 005ECF07    call        USER32.RegisterWindowMessageA
 005ECF0C    mov         [006ECDA4],eax;gvar_006ECDA4:Longword
 005ECF11    push        5ECF6C;'commdlg_FindReplace'
 005ECF16    call        USER32.RegisterWindowMessageA
 005ECF1B    mov         [006ECDA8],eax;gvar_006ECDA8:Longword
 005ECF20    push        1
 005ECF22    mov         eax,[006EA390];0x0 gvar_006EA390
 005ECF27    mov         dword ptr [ebp-30],eax
 005ECF2A    mov         byte ptr [ebp-2C],0
 005ECF2E    call        KERNEL32.GetCurrentThreadId
 005ECF33    mov         dword ptr [ebp-28],eax
 005ECF36    mov         byte ptr [ebp-24],0
 005ECF3A    lea         ecx,[ebp-30]
 005ECF3D    mov         edx,5ECF80
 005ECF42    lea         eax,[ebp-20]
 005ECF45    call        00658F08
 005ECF4A    push        eax
 005ECF4B    call        KERNEL32.GlobalAddAtomA
 005ECF50    mov         [006E413C],ax;gvar_006E413C
 005ECF56    mov         esp,ebp
 005ECF58    pop         ebp
 005ECF59    ret
*}
end;

//005ECF94
procedure _NF__4C2;
begin
{*
 005ECF94    sldt        word ptr [eax]
 005ECF97    add         byte ptr [eax+10006E42],bh
 005ECF9D    lahf
 005ECF9E    outs        dl,byte ptr [esi]
 005ECF9F    add         byte ptr [eax],al
 005ECFA1    add         byte ptr [eax],al
 005ECFA3    add         byte ptr [edx+eax*2-60D7FF92],dh
 005ECFAA    outs        dl,byte ptr [esi]
 005ECFAB    add         byte ptr [eax],al
 005ECFAD    add         byte ptr [eax],al
 005ECFAF    add         byte ptr [eax+24006E42],dh
 005ECFB5    lahf
 005ECFB6    outs        dl,byte ptr [esi]
 005ECFB7    add         byte ptr [eax],al
 005ECFB9    add         byte ptr [eax],al
 005ECFBB    add         byte ptr [edx+eax*2-60DFFF92],ch
 005ECFC2    outs        dl,byte ptr [esi]
 005ECFC3    add         byte ptr [eax],al
 005ECFC5    add         byte ptr [eax],al
 005ECFC7    add         byte ptr [eax+1C006E42],ch
 005ECFCD    lahf
 005ECFCE    outs        dl,byte ptr [esi]
 005ECFCF    add         byte ptr [eax],al
 005ECFD1    add         byte ptr [eax],al
 005ECFD3    add         byte ptr [edx+eax*2-60E7FF92],ah
 005ECFDA    outs        dl,byte ptr [esi]
 005ECFDB    add         byte ptr [eax],al
 005ECFDD    add         byte ptr [eax],al
 005ECFDF    add         byte ptr [eax+14006E42],ah
 005ECFE5    lahf
 005ECFE6    outs        dl,byte ptr [esi]
 005ECFE7    add         byte ptr [eax],al
 005ECFE9    add         byte ptr [eax],al
 005ECFEB    add         byte ptr [edx+eax*2-60F3FF92],bl
 005ECFF2    outs        dl,byte ptr [esi]
 005ECFF3    add         byte ptr [eax],al
 005ECFF5    add         byte ptr [eax],al
 005ECFF7    add         byte ptr [eax+8006E42],bl
 005ECFFD    lahf
 005ECFFE    outs        dl,byte ptr [esi]
 005ECFFF    add         byte ptr [eax],al
 005ED001    add         byte ptr [eax],al
 005ED003    add         byte ptr [edx+eax*2-60FBFF92],dl
 005ED00A    outs        dl,byte ptr [esi]
 005ED00B    add         byte ptr [eax],al
 005ED00D    add         byte ptr [eax],al
 005ED00F    add         byte ptr [eax+6E42],dl
 005ED015    lahf
 005ED016    outs        dl,byte ptr [esi]
 005ED017    add         byte ptr [eax],al
 005ED019    add         byte ptr [eax],al
 005ED01B    add         byte ptr [eax+42],cl
 005ED01E    outs        dl,byte ptr [esi]
 005ED01F    add         ah,bh
 005ED021    sahf
 005ED022    outs        dl,byte ptr [esi]
 005ED023    add         byte ptr [eax],al
 005ED025    add         byte ptr [eax],al
 005ED027    add         byte ptr [edx+eax*2+6E],al
 005ED02B    add         al,bh
 005ED02D    sahf
 005ED02E    outs        dl,byte ptr [esi]
 005ED02F    add         byte ptr [eax],al
 005ED031    add         byte ptr [eax],al
 005ED033    add         byte ptr [eax+42],al
 005ED036    outs        dl,byte ptr [esi]
 005ED037    add         ah,dh
 005ED039    sahf
 005ED03A    outs        dl,byte ptr [esi]
 005ED03B    add         byte ptr [eax],al
 005ED03D    add         byte ptr [eax],al
 005ED03F    add         byte ptr [edx+eax*2],bh
 005ED042    outs        dl,byte ptr [esi]
 005ED043    add         al,dh
 005ED045    sahf
 005ED046    outs        dl,byte ptr [esi]
 005ED047    add         byte ptr [eax],al
 005ED049    add         byte ptr [eax],al
 005ED04B    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

//005ED04C
procedure Finalization;
begin
{*
 005ED04C    push        ebp
 005ED04D    mov         ebp,esp
 005ED04F    xor         eax,eax
 005ED051    push        ebp
 005ED052    push        5ED09E
 005ED057    push        dword ptr fs:[eax]
 005ED05A    mov         dword ptr fs:[eax],esp
 005ED05D    inc         dword ptr ds:[6ECDA0]
>005ED063    jne         005ED090
 005ED065    cmp         word ptr ds:[6E413C],0;gvar_006E413C
>005ED06D    je          005ED07B
 005ED06F    mov         ax,[006E413C];gvar_006E413C
 005ED075    push        eax
 005ED076    call        KERNEL32.GlobalDeleteAtom
 005ED07B    mov         eax,6E4264
 005ED080    mov         ecx,0B
 005ED085    mov         edx,dword ptr ds:[668E7C];String
 005ED08B    call        @FinalizeArray
 005ED090    xor         eax,eax
 005ED092    pop         edx
 005ED093    pop         ecx
 005ED094    pop         ecx
 005ED095    mov         dword ptr fs:[eax],edx
 005ED098    push        5ED0A5
 005ED09D    ret
>005ED09E    jmp         @HandleFinally
>005ED0A3    jmp         005ED09D
 005ED0A5    pop         ebp
 005ED0A6    ret
*}
end;

end.