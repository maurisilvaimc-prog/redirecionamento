//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Buttons;

interface

uses
  SysUtils, Classes, Buttons, Graphics;

type
  TButtonLayout = (blGlyphLeft, blGlyphRight, blGlyphTop, blGlyphBottom);
  TButtonStyle = (bsAutoDetect, bsWin31, bsNew);
  TSpeedButtonActionLink = class(TControlActionLink)
  public
    ........FClient:TSpeedButton;//f20
    //procedure v0(?:?); virtual;//v0//0063AD0C
    //function v24:?; virtual;//v24//0063AD3C
    //function v2C:?; virtual;//v2C//0063ADA4
    //procedure v50(?:?); virtual;//v50//0063ADE8
    //procedure v58(?:?); virtual;//v58//0063AE14
  end;
  TSpeedButton = class(TGraphicControl)
  public
    GroupIndex:Integer;//f168
    FGlyph:Pointer;//f16C
    Down:Boolean;//f170
    FDragging:Boolean;//f171
    AllowAllUp:Boolean;//f172
    Layout:TButtonLayout;//f173
    Spacing:Integer;//f174
    Transparent:Boolean;//f178
    Margin:Integer;//f17C
    Flat:Boolean;//f180
    FMouseInControl:Boolean;//f181
    FState:TButtonState;//f182
    destructor Destroy; virtual;//0063AF24
    procedure Loaded; virtual;//vC//0063B2A4
    constructor Create(AOwner:TComponent); virtual;//v2C//0063AE40
    procedure v8C; virtual;//v8C//0063AF6C
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//0063B8D8
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0063B9F4
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//0063B910
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//0063BAA4
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//0063BABC
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//0063BB0C
    procedure CMMouseLeave(Message:TMessage); message CM_MOUSELEAVE;//0063BB74
    //procedure CMButtonPressed(?:?); message CM_BUTTONPRESSED;//0063B954
    //procedure CMSysColorChange(?:?); message CM_SYSCOLORCHANGE;//0063BAD4
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0063B408
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0063B348
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0063B2E0
    procedure sub_005F23D4; dynamic;//0063B540
    procedure sub_005F6314; dynamic;//0063B560
    procedure sub_005F5478; dynamic;//0063B52C
    //procedure sub_005F61B0(?:?; ?:?); dynamic;//0063BC74
    //function GetGlyph:?;//0063B578
    procedure SetGlyph(Value:TBitmap);//0063B598
    //function GetNumGlyphs:?;//0063B5C4
    procedure SetNumGlyphs(Value:TNumGlyphs);//0063B5E4
    procedure SetDown(Value:Boolean);//0063B69C
    procedure SetFlat(Value:Boolean);//0063B738
    procedure SetGroupIndex(Value:Integer);//0063B76C
    procedure SetLayout(Value:TButtonLayout);//0063B7A0
    procedure SetMargin(Value:Integer);//0063B7D4
    procedure SetSpacing(Value:Integer);//0063B80C
    procedure SetTransparent(Value:Boolean);//0063B840
    procedure SetAllowAllUp(Value:Boolean);//0063B8A4
  end;
  TBitBtnKind = (bkCustom, bkOK, bkCancel, bkHelp, bkYes, bkNo, bkClose, bkAbort, bkRetry, bkIgnore, bkAll);
  TBitBtn = class(TButton)
  public
    FCanvas:TCanvas;//f218
    FGlyph:Pointer;//f21C
    Style:TButtonStyle;//f220
    FKind:TBitBtnKind;//f221
    Layout:TButtonLayout;//f222
    Spacing:Integer;//f224
    Margin:Integer;//f228
    IsFocused:Boolean;//f22C
    FModifiedGlyph:Boolean;//f22D
    destructor Destroy; virtual;//0063BE08
    constructor Create(AOwner:TComponent); virtual;//v2C//0063BD30
    procedure v94; virtual;//v94//0063BE58
    //procedure v98(?:?); virtual;//v98//0063BE94
    //procedure vCC(?:?); virtual;//vCC//0063BEB8
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//0063C30C
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//0063C2E8
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//0063C2C4
    //procedure sub_0063BFB8(?:?); dynamic;//0063BFB8
    //procedure sub_0063BF84(?:?); dynamic;//0063BF84
    procedure sub_005F23D4; dynamic;//0063C338
    procedure sub_0059CA90; dynamic;//0063BEEC
    //procedure sub_0059C8B8(?:?; ?:?); dynamic;//0063C82C
    procedure SetGlyph(Value:TBitmap);//0063C358
    //function GetGlyph:?;//0063C38C
    function IsStoredCancel(Value:Boolean):Boolean;//0063C3C4
    procedure SetStyle(Value:TButtonStyle);//0063C3E4
    procedure SetKind(Value:TBitBtnKind);//0063C418
    function IsStoredCaption(Value:TCaption):Boolean;//0063C558
    //function GetKind:?;//0063C5DC
    procedure SetLayout(Value:TButtonLayout);//0063C67C
    //function GetNumGlyphs:?;//0063C6B0
    procedure SetNumGlyphs(Value:TNumGlyphs);//0063C6D0
    procedure SetSpacing(Value:Integer);//0063C720
    procedure SetMargin(Value:Integer);//0063C754
  end;
  TGlyphList = class(TImageList)
  public
    Used:TBits;//f80
    FCount:Integer;//f84
    destructor Destroy; virtual;//00639BE8
    //constructor Create(?:?);//00639B84
  end;
  TGlyphCache = class(TObject)
  public
    GlyphLists:TList;//f4
    constructor Create;//00639D10
  end;
  TButtonGlyph = class(TObject)
  public
    FOriginal:TBitmap;//f4
    FGlyphList:TGlyphList;//f8
    FIndexs:array[TButtonState] of System.Integer;//fC
    FTransparentColor:TColor;//f1C
    FNumGlyphs:TNumGlyphs;//f20
    FOnChange:TNotifyEvent;//f28
    constructor Create;//00639E74
  end;
    procedure sub_00638CA4;//00638CA4
    procedure _NF__1C7;//0063991C
    //function sub_00639974(?:?):?;//00639974
    destructor Destroy;//00639BE8
    //function sub_00639C28(?:?):?;//00639C28
    //function sub_00639C90(?:?; ?:TBitmap; ?:?):?;//00639C90
    //procedure sub_00639CCC(?:?; ?:?);//00639CCC
    //function sub_00639DA0(?:TGlyphCache; ?:Integer; ?:?):?;//00639DA0
    //procedure sub_00639E1C(?:TGlyphCache; ?:?);//00639E1C
    procedure sub_00639F90(?:Pointer);//00639F90
    //procedure sub_00639FF8(?:?; ?:?);//00639FF8
    procedure sub_0063A044(?:Pointer; ?:TBitmap);//0063A044
    procedure sub_0063A0DC(?:Pointer; ?:Integer);//0063A0DC
    //function sub_0063A11C(?:Pointer; ?:?):?;//0063A11C
    //procedure sub_0063A760(?:?; ?:?; ?:?; ?:?; ?:?);//0063A760
    //procedure sub_0063A840(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0063A840
    //procedure sub_0063A938(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0063A938
    //procedure sub_0063AC98(?:Pointer; ?:TCanvas; ?:TRect; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0063AC98
    //procedure sub_0063AD0C(?:?);//0063AD0C
    //function sub_0063AD3C:?;//0063AD3C
    //function sub_0063ADA4:?;//0063ADA4
    //procedure sub_0063ADE8(?:?);//0063ADE8
    //procedure sub_0063AE14(?:?);//0063AE14
    constructor Create(AOwner:TComponent);//0063AE40
    destructor Destroy;//0063AF24
    procedure sub_0063AF6C;//0063AF6C
    procedure sub_0063B228(?:TSpeedButton);//0063B228
    procedure Loaded;//0063B2A4
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0063B2E0
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer);//0063B348
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0063B408
    procedure sub_005F5478;//0063B52C
    procedure sub_005F23D4;//0063B540
    procedure sub_005F6314;//0063B560
    procedure sub_0063B64C(?:TSpeedButton);//0063B64C
    //procedure WMLButtonDblClk(?:?);//0063B8D8
    //procedure CMEnabledChanged(?:?);//0063B910
    //procedure CMButtonPressed(?:?);//0063B954
    //procedure CMDialogChar(?:?);//0063B9F4
    //procedure CMFontChanged(?:?);//0063BAA4
    //procedure CMTextChanged(?:?);//0063BABC
    //procedure CMSysColorChange(?:?);//0063BAD4
    //procedure CMMouseEnter(?:?);//0063BB0C
    procedure CMMouseLeave(Message:TMessage);//0063BB74
    //procedure sub_0063BBD4(?:?; ?:?; ?:?);//0063BBD4
    //procedure sub_005F61B0(?:?; ?:?);//0063BC74
    constructor Create(AOwner:TComponent);//0063BD30
    destructor Destroy;//0063BE08
    procedure sub_0063BE58;//0063BE58
    //procedure sub_0063BE94(?:?);//0063BE94
    //procedure sub_0063BEB8(?:?);//0063BEB8
    procedure sub_0059CA90;//0063BEEC
    //procedure sub_0063BF84(?:?);//0063BF84
    //procedure sub_0063BFB8(?:?);//0063BFB8
    //procedure sub_0063BFD8(?:TBitBtn; ?:?);//0063BFD8
    //procedure CMFontChanged(?:?);//0063C2C4
    //procedure CMEnabledChanged(?:?);//0063C2E8
    //procedure WMLButtonDblClk(?:?);//0063C30C
    procedure sub_005F23D4;//0063C338
    //procedure sub_0063C78C(?:?; ?:?; ?:?);//0063C78C
    //procedure sub_0059C8B8(?:?; ?:?);//0063C82C
    procedure DestroyLocals;//0063C8C4
    procedure _NF__346;//0063C8EC
    procedure Finalization;//0063C968

implementation

//00638CA4
procedure sub_00638CA4;
begin
{*
 00638CA4    push        ebp
 00638CA5    mov         ebp,esp
 00638CA7    sub         dword ptr ds:[6ECE98],1
>00638CAE    jae         00638CD7
 00638CB0    push        638CDC
 00638CB5    call        USER32.RegisterClipboardFormatA
 00638CBA    mov         [006ECE94],ax;gvar_006ECE94
 00638CC0    push        638CEC
 00638CC5    call        USER32.RegisterClipboardFormatA
 00638CCA    mov         [006ECE96],ax;gvar_006ECE96
 00638CD0    xor         eax,eax
 00638CD2    mov         [006ECE9C],eax;FClipboard:TClipboard
 00638CD7    pop         ebp
 00638CD8    ret
*}
end;

//0063991C
procedure _NF__1C7;
begin
{*
 0063991C    inc         edx
 0063991D    inc         edx
 0063991E    dec         edi
 0063991F    dec         ebx
 00639920    add         byte ptr [eax],al
 00639922    add         byte ptr [eax],al
 00639924    inc         edx
 00639925    inc         edx
 00639926    inc         ebx
 00639927    inc         ecx
 00639928    dec         esi
 00639929    inc         ebx
 0063992A    inc         ebp
 0063992B    dec         esp
 0063992C    add         byte ptr [eax],al
 0063992E    add         byte ptr [eax],al
 00639930    inc         edx
 00639931    inc         edx
 00639932    dec         eax
 00639933    inc         ebp
 00639934    dec         esp
 00639935    push        eax
 00639936    add         byte ptr [eax],al
 00639938    inc         edx
 00639939    inc         edx
 0063993A    pop         ecx
 0063993B    inc         ebp
 0063993C    push        ebx
 0063993D    add         byte ptr [eax],al
 0063993F    add         byte ptr [edx+42],al
 00639942    dec         esi
 00639943    dec         edi
 00639944    add         byte ptr [eax],al
 00639946    add         byte ptr [eax],al
 00639948    inc         edx
 00639949    inc         edx
 0063994A    inc         ebx
 0063994B    dec         esp
 0063994C    dec         edi
 0063994D    push        ebx
 0063994E    inc         ebp
 0063994F    add         byte ptr [edx+42],al
 00639952    inc         ecx
 00639953    inc         edx
 00639954    dec         edi
 00639955    push        edx
 00639956    push        esp
 00639957    add         byte ptr [edx+42],al
 0063995A    push        edx
 0063995B    inc         ebp
 0063995C    push        esp
 0063995D    push        edx
 0063995E    pop         ecx
 0063995F    add         byte ptr [edx+42],al
 00639962    dec         ecx
 00639963    inc         edi
 00639964    dec         esi
 00639965    dec         edi
 00639966    push        edx
 00639967    inc         ebp
 00639968    add         byte ptr [eax],al
 0063996A    add         byte ptr [eax],al
 0063996C    inc         edx
 0063996D    inc         edx
 0063996E    inc         ecx
 0063996F    dec         esp
 00639970    dec         esp
 00639971    add         byte ptr [eax],al
 00639973    add         byte ptr [ebp-75],dl
*}
end;

//00639974
{*function sub_00639974(?:?):?;
begin
 00639974    push        ebp
 00639975    mov         ebp,esp
 00639977    add         esp,0FFFFFFF4
 0063997A    xor         edx,edx
 0063997C    mov         dword ptr [ebp-0C],edx
 0063997F    mov         byte ptr [ebp-1],al
 00639982    xor         eax,eax
 00639984    push        ebp
 00639985    push        639A0A
 0063998A    push        dword ptr fs:[eax]
 0063998D    mov         dword ptr fs:[eax],esp
 00639990    xor         eax,eax
 00639992    mov         al,byte ptr [ebp-1]
 00639995    cmp         dword ptr [eax*4+6ECEA4],0
>0063999D    jne         006399E5
 0063999F    mov         dl,1
 006399A1    mov         eax,[005BEDD4];TBitmap
 006399A6    call        TBitmap.Create;TBitmap.Create
 006399AB    xor         edx,edx
 006399AD    mov         dl,byte ptr [ebp-1]
 006399B0    mov         dword ptr [edx*4+6ECEA4],eax
 006399B7    lea         eax,[ebp-0C]
 006399BA    xor         edx,edx
 006399BC    mov         dl,byte ptr [ebp-1]
 006399BF    mov         edx,dword ptr [edx*4+6E473C]
 006399C6    call        @LStrFromPChar
 006399CB    mov         ecx,dword ptr [ebp-0C]
 006399CE    xor         eax,eax
 006399D0    mov         al,byte ptr [ebp-1]
 006399D3    mov         eax,dword ptr [eax*4+6ECEA4]
 006399DA    mov         edx,dword ptr ds:[6EA390];0x0 gvar_006EA390
 006399E0    call        TBitmap.LoadFromResourceName
 006399E5    xor         eax,eax
 006399E7    mov         al,byte ptr [ebp-1]
 006399EA    mov         eax,dword ptr [eax*4+6ECEA4]
 006399F1    mov         dword ptr [ebp-8],eax
 006399F4    xor         eax,eax
 006399F6    pop         edx
 006399F7    pop         ecx
 006399F8    pop         ecx
 006399F9    mov         dword ptr fs:[eax],edx
 006399FC    push        639A11
 00639A01    lea         eax,[ebp-0C]
 00639A04    call        @LStrClr
 00639A09    ret
>00639A0A    jmp         @HandleFinally
>00639A0F    jmp         00639A01
 00639A11    mov         eax,dword ptr [ebp-8]
 00639A14    mov         esp,ebp
 00639A16    pop         ebp
 00639A17    ret
end;*}

//00639B84
{*constructor TGlyphList.Create(?:?);
begin
 00639B84    push        ebp
 00639B85    mov         ebp,esp
 00639B87    add         esp,0FFFFFFF4
 00639B8A    test        dl,dl
>00639B8C    je          00639B96
 00639B8E    add         esp,0FFFFFFF0
 00639B91    call        @ClassCreate
 00639B96    mov         dword ptr [ebp-0C],ecx
 00639B99    mov         byte ptr [ebp-5],dl
 00639B9C    mov         dword ptr [ebp-4],eax
 00639B9F    mov         eax,dword ptr [ebp+8]
 00639BA2    push        eax
 00639BA3    mov         ecx,dword ptr [ebp-0C]
 00639BA6    xor         edx,edx
 00639BA8    mov         eax,dword ptr [ebp-4]
 00639BAB    call        TDragImageList.Create
 00639BB0    mov         dl,1
 00639BB2    mov         eax,[00642380];TBits
 00639BB7    call        TObject.Create;TBits.Create
 00639BBC    mov         edx,dword ptr [ebp-4]
 00639BBF    mov         dword ptr [edx+80],eax
 00639BC5    mov         eax,dword ptr [ebp-4]
 00639BC8    cmp         byte ptr [ebp-5],0
>00639BCC    je          00639BDD
 00639BCE    call        @AfterConstruction
 00639BD3    pop         dword ptr fs:[0]
 00639BDA    add         esp,0C
 00639BDD    mov         eax,dword ptr [ebp-4]
 00639BE0    mov         esp,ebp
 00639BE2    pop         ebp
 00639BE3    ret         4
end;*}

//00639BE8
destructor TGlyphList.Destroy;
begin
{*
 00639BE8    push        ebp
 00639BE9    mov         ebp,esp
 00639BEB    add         esp,0FFFFFFF8
 00639BEE    call        @BeforeDestruction
 00639BF3    mov         byte ptr [ebp-5],dl
 00639BF6    mov         dword ptr [ebp-4],eax
 00639BF9    mov         eax,dword ptr [ebp-4]
 00639BFC    mov         eax,dword ptr [eax+80];TGlyphList.Used:TBits
 00639C02    call        TObject.Free
 00639C07    mov         dl,byte ptr [ebp-5]
 00639C0A    and         dl,0FC
 00639C0D    mov         eax,dword ptr [ebp-4]
 00639C10    call        TCustomImageList.Destroy
 00639C15    cmp         byte ptr [ebp-5],0
>00639C19    jle         00639C23
 00639C1B    mov         eax,dword ptr [ebp-4]
 00639C1E    call        @ClassDestroy
 00639C23    pop         ecx
 00639C24    pop         ecx
 00639C25    pop         ebp
 00639C26    ret
*}
end;

//00639C28
{*function sub_00639C28(?:?):?;
begin
 00639C28    push        ebp
 00639C29    mov         ebp,esp
 00639C2B    add         esp,0FFFFFFF8
 00639C2E    mov         dword ptr [ebp-4],eax
 00639C31    mov         eax,dword ptr [ebp-4]
 00639C34    mov         eax,dword ptr [eax+80]
 00639C3A    call        00645CE0
 00639C3F    mov         dword ptr [ebp-8],eax
 00639C42    mov         eax,dword ptr [ebp-4]
 00639C45    mov         eax,dword ptr [eax+80]
 00639C4B    mov         eax,dword ptr [eax+4]
 00639C4E    cmp         eax,dword ptr [ebp-8]
>00639C51    jg          00639C74
 00639C53    xor         ecx,ecx
 00639C55    xor         edx,edx
 00639C57    mov         eax,dword ptr [ebp-4]
 00639C5A    call        0058BA04
 00639C5F    mov         dword ptr [ebp-8],eax
 00639C62    mov         edx,dword ptr [ebp-8]
 00639C65    inc         edx
 00639C66    mov         eax,dword ptr [ebp-4]
 00639C69    mov         eax,dword ptr [eax+80]
 00639C6F    call        TBits.SetSize
 00639C74    mov         cl,1
 00639C76    mov         edx,dword ptr [ebp-8]
 00639C79    mov         eax,dword ptr [ebp-4]
 00639C7C    mov         eax,dword ptr [eax+80]
 00639C82    call        TBits.SetBit
 00639C87    mov         eax,dword ptr [ebp-8]
 00639C8A    pop         ecx
 00639C8B    pop         ecx
 00639C8C    pop         ebp
 00639C8D    ret
end;*}

//00639C90
{*function sub_00639C90(?:?; ?:TBitmap; ?:?):?;
begin
 00639C90    push        ebp
 00639C91    mov         ebp,esp
 00639C93    add         esp,0FFFFFFF0
 00639C96    mov         dword ptr [ebp-0C],ecx
 00639C99    mov         dword ptr [ebp-8],edx
 00639C9C    mov         dword ptr [ebp-4],eax
 00639C9F    mov         eax,dword ptr [ebp-4]
 00639CA2    call        00639C28
 00639CA7    mov         dword ptr [ebp-10],eax
 00639CAA    mov         eax,dword ptr [ebp-0C]
 00639CAD    push        eax
 00639CAE    mov         ecx,dword ptr [ebp-8]
 00639CB1    mov         edx,dword ptr [ebp-10]
 00639CB4    mov         eax,dword ptr [ebp-4]
 00639CB7    call        0058BC28
 00639CBC    mov         eax,dword ptr [ebp-4]
 00639CBF    inc         dword ptr [eax+84]
 00639CC5    mov         eax,dword ptr [ebp-10]
 00639CC8    mov         esp,ebp
 00639CCA    pop         ebp
 00639CCB    ret
end;*}

//00639CCC
{*procedure sub_00639CCC(?:?; ?:?);
begin
 00639CCC    push        ebp
 00639CCD    mov         ebp,esp
 00639CCF    add         esp,0FFFFFFF8
 00639CD2    mov         dword ptr [ebp-8],edx
 00639CD5    mov         dword ptr [ebp-4],eax
 00639CD8    mov         edx,dword ptr [ebp-8]
 00639CDB    mov         eax,dword ptr [ebp-4]
 00639CDE    mov         eax,dword ptr [eax+80]
 00639CE4    call        TBits.GetBit
 00639CE9    test        al,al
>00639CEB    je          00639D09
 00639CED    mov         eax,dword ptr [ebp-4]
 00639CF0    dec         dword ptr [eax+84]
 00639CF6    xor         ecx,ecx
 00639CF8    mov         edx,dword ptr [ebp-8]
 00639CFB    mov         eax,dword ptr [ebp-4]
 00639CFE    mov         eax,dword ptr [eax+80]
 00639D04    call        TBits.SetBit
 00639D09    pop         ecx
 00639D0A    pop         ecx
 00639D0B    pop         ebp
 00639D0C    ret
end;*}

//00639D10
constructor TGlyphCache.Create;
begin
{*
 00639D10    push        ebp
 00639D11    mov         ebp,esp
 00639D13    add         esp,0FFFFFFF8
 00639D16    test        dl,dl
>00639D18    je          00639D22
 00639D1A    add         esp,0FFFFFFF0
 00639D1D    call        @ClassCreate
 00639D22    mov         byte ptr [ebp-5],dl
 00639D25    mov         dword ptr [ebp-4],eax
 00639D28    xor         edx,edx
 00639D2A    mov         eax,dword ptr [ebp-4]
 00639D2D    call        TObject.Create
 00639D32    mov         dl,1
 00639D34    mov         eax,[006422A4];TList
 00639D39    call        TObject.Create;TList.Create
 00639D3E    mov         edx,dword ptr [ebp-4]
 00639D41    mov         dword ptr [edx+4],eax
 00639D44    mov         eax,dword ptr [ebp-4]
 00639D47    cmp         byte ptr [ebp-5],0
>00639D4B    je          00639D5C
 00639D4D    call        @AfterConstruction
 00639D52    pop         dword ptr fs:[0]
 00639D59    add         esp,0C
 00639D5C    mov         eax,dword ptr [ebp-4]
 00639D5F    pop         ecx
 00639D60    pop         ecx
 00639D61    pop         ebp
 00639D62    ret
*}
end;

//00639DA0
{*function sub_00639DA0(?:TGlyphCache; ?:Integer; ?:?):?;
begin
 00639DA0    push        ebp
 00639DA1    mov         ebp,esp
 00639DA3    add         esp,0FFFFFFEC
 00639DA6    mov         dword ptr [ebp-0C],ecx
 00639DA9    mov         dword ptr [ebp-8],edx
 00639DAC    mov         dword ptr [ebp-4],eax
 00639DAF    mov         eax,dword ptr [ebp-4]
 00639DB2    mov         eax,dword ptr [eax+4]
 00639DB5    mov         eax,dword ptr [eax+8]
 00639DB8    dec         eax
 00639DB9    cmp         eax,0
>00639DBC    jl          00639DF1
 00639DBE    mov         dword ptr [ebp-14],eax
 00639DC1    mov         eax,dword ptr [ebp-4]
 00639DC4    mov         eax,dword ptr [eax+4]
 00639DC7    mov         edx,dword ptr [ebp-14]
 00639DCA    call        TList.Get
 00639DCF    mov         dword ptr [ebp-10],eax
 00639DD2    mov         eax,dword ptr [ebp-10]
 00639DD5    mov         eax,dword ptr [eax+34]
 00639DD8    cmp         eax,dword ptr [ebp-8]
>00639DDB    jne         00639DE8
 00639DDD    mov         eax,dword ptr [ebp-10]
 00639DE0    mov         eax,dword ptr [eax+30]
 00639DE3    cmp         eax,dword ptr [ebp-0C]
>00639DE6    je          00639E15
 00639DE8    dec         dword ptr [ebp-14]
 00639DEB    cmp         dword ptr [ebp-14],0FFFFFFFF
>00639DEF    jne         00639DC1
 00639DF1    mov         eax,dword ptr [ebp-0C]
 00639DF4    push        eax
 00639DF5    mov         ecx,dword ptr [ebp-8]
 00639DF8    mov         dl,1
 00639DFA    mov         eax,[00639A18];TGlyphList
 00639DFF    call        TGlyphList.Create;TGlyphList.Create
 00639E04    mov         dword ptr [ebp-10],eax
 00639E07    mov         eax,dword ptr [ebp-4]
 00639E0A    mov         eax,dword ptr [eax+4]
 00639E0D    mov         edx,dword ptr [ebp-10]
 00639E10    call        TList.Add
 00639E15    mov         eax,dword ptr [ebp-10]
 00639E18    mov         esp,ebp
 00639E1A    pop         ebp
 00639E1B    ret
end;*}

//00639E1C
{*procedure sub_00639E1C(?:TGlyphCache; ?:?);
begin
 00639E1C    push        ebp
 00639E1D    mov         ebp,esp
 00639E1F    add         esp,0FFFFFFF8
 00639E22    mov         dword ptr [ebp-8],edx
 00639E25    mov         dword ptr [ebp-4],eax
 00639E28    cmp         dword ptr [ebp-8],0
>00639E2C    je          00639E50
 00639E2E    mov         eax,dword ptr [ebp-8]
 00639E31    cmp         dword ptr [eax+84],0
>00639E38    jne         00639E50
 00639E3A    mov         edx,dword ptr [ebp-8]
 00639E3D    mov         eax,dword ptr [ebp-4]
 00639E40    mov         eax,dword ptr [eax+4]
 00639E43    call        TList.Remove
 00639E48    mov         eax,dword ptr [ebp-8]
 00639E4B    call        TObject.Free
 00639E50    pop         ecx
 00639E51    pop         ecx
 00639E52    pop         ebp
 00639E53    ret
end;*}

//00639E74
constructor TButtonGlyph.Create;
begin
{*
 00639E74    push        ebp
 00639E75    mov         ebp,esp
 00639E77    add         esp,0FFFFFFF8
 00639E7A    test        dl,dl
>00639E7C    je          00639E86
 00639E7E    add         esp,0FFFFFFF0
 00639E81    call        @ClassCreate
 00639E86    mov         byte ptr [ebp-5],dl
 00639E89    mov         dword ptr [ebp-4],eax
 00639E8C    xor         edx,edx
 00639E8E    mov         eax,dword ptr [ebp-4]
 00639E91    call        TObject.Create
 00639E96    mov         dl,1
 00639E98    mov         eax,[005BEDD4];TBitmap
 00639E9D    call        TBitmap.Create;TBitmap.Create
 00639EA2    mov         edx,dword ptr [ebp-4]
 00639EA5    mov         dword ptr [edx+4],eax
 00639EA8    mov         eax,dword ptr [ebp-4]
 00639EAB    mov         eax,dword ptr [eax+4]
 00639EAE    mov         edx,dword ptr [ebp-4]
 00639EB1    mov         dword ptr [eax+14],edx
 00639EB4    mov         dword ptr [eax+10],639FF8;sub_00639FF8
 00639EBB    mov         eax,dword ptr [ebp-4]
 00639EBE    mov         dword ptr [eax+1C],8080
 00639EC5    mov         eax,dword ptr [ebp-4]
 00639EC8    mov         byte ptr [eax+20],1
 00639ECC    mov         byte ptr [ebp-6],0
 00639ED0    xor         eax,eax
 00639ED2    mov         al,byte ptr [ebp-6]
 00639ED5    mov         edx,dword ptr [ebp-4]
 00639ED8    mov         dword ptr [edx+eax*4+0C],0FFFFFFFF
 00639EE0    inc         byte ptr [ebp-6]
 00639EE3    cmp         byte ptr [ebp-6],4
>00639EE7    jne         00639ED0
 00639EE9    cmp         dword ptr ds:[6E47C0],0;gvar_006E47C0:TGlyphCache
>00639EF0    jne         00639F03
 00639EF2    mov         dl,1
 00639EF4    mov         eax,[00639AD0];TGlyphCache
 00639EF9    call        TGlyphCache.Create;TGlyphCache.Create
 00639EFE    mov         [006E47C0],eax;gvar_006E47C0:TGlyphCache
 00639F03    mov         eax,dword ptr [ebp-4]
 00639F06    cmp         byte ptr [ebp-5],0
>00639F0A    je          00639F1B
 00639F0C    call        @AfterConstruction
 00639F11    pop         dword ptr fs:[0]
 00639F18    add         esp,0C
 00639F1B    mov         eax,dword ptr [ebp-4]
 00639F1E    pop         ecx
 00639F1F    pop         ecx
 00639F20    pop         ebp
 00639F21    ret
*}
end;

//00639F90
procedure sub_00639F90(?:Pointer);
begin
{*
 00639F90    push        ebp
 00639F91    mov         ebp,esp
 00639F93    add         esp,0FFFFFFF8
 00639F96    mov         dword ptr [ebp-4],eax
 00639F99    mov         byte ptr [ebp-5],0
 00639F9D    xor         eax,eax
 00639F9F    mov         al,byte ptr [ebp-5]
 00639FA2    mov         edx,dword ptr [ebp-4]
 00639FA5    cmp         dword ptr [edx+eax*4+0C],0FFFFFFFF
>00639FAA    je          00639FC3
 00639FAC    xor         eax,eax
 00639FAE    mov         al,byte ptr [ebp-5]
 00639FB1    mov         edx,dword ptr [ebp-4]
 00639FB4    mov         edx,dword ptr [edx+eax*4+0C]
 00639FB8    mov         eax,dword ptr [ebp-4]
 00639FBB    mov         eax,dword ptr [eax+8]
 00639FBE    call        00639CCC
 00639FC3    xor         eax,eax
 00639FC5    mov         al,byte ptr [ebp-5]
 00639FC8    mov         edx,dword ptr [ebp-4]
 00639FCB    mov         dword ptr [edx+eax*4+0C],0FFFFFFFF
 00639FD3    inc         byte ptr [ebp-5]
 00639FD6    cmp         byte ptr [ebp-5],4
>00639FDA    jne         00639F9D
 00639FDC    mov         eax,dword ptr [ebp-4]
 00639FDF    mov         edx,dword ptr [eax+8]
 00639FE2    mov         eax,[006E47C0];0x0 gvar_006E47C0:TGlyphCache
 00639FE7    call        00639E1C
 00639FEC    mov         eax,dword ptr [ebp-4]
 00639FEF    xor         edx,edx
 00639FF1    mov         dword ptr [eax+8],edx
 00639FF4    pop         ecx
 00639FF5    pop         ecx
 00639FF6    pop         ebp
 00639FF7    ret
*}
end;

//00639FF8
{*procedure sub_00639FF8(?:?; ?:?);
begin
 00639FF8    push        ebp
 00639FF9    mov         ebp,esp
 00639FFB    add         esp,0FFFFFFF8
 00639FFE    push        ebx
 00639FFF    mov         dword ptr [ebp-8],edx
 0063A002    mov         dword ptr [ebp-4],eax
 0063A005    mov         eax,dword ptr [ebp-8]
 0063A008    mov         edx,dword ptr [ebp-4]
 0063A00B    cmp         eax,dword ptr [edx+4]
>0063A00E    jne         0063A03F
 0063A010    mov         eax,dword ptr [ebp-4]
 0063A013    mov         eax,dword ptr [eax+4]
 0063A016    call        005C7404
 0063A01B    mov         edx,dword ptr [ebp-4]
 0063A01E    mov         dword ptr [edx+1C],eax
 0063A021    mov         eax,dword ptr [ebp-4]
 0063A024    call        00639F90
 0063A029    mov         eax,dword ptr [ebp-4]
 0063A02C    cmp         word ptr [eax+2A],0
>0063A031    je          0063A03F
 0063A033    mov         ebx,dword ptr [ebp-4]
 0063A036    mov         edx,dword ptr [ebp-4]
 0063A039    mov         eax,dword ptr [ebx+2C]
 0063A03C    call        dword ptr [ebx+28]
 0063A03F    pop         ebx
 0063A040    pop         ecx
 0063A041    pop         ecx
 0063A042    pop         ebp
 0063A043    ret
end;*}

//0063A044
procedure sub_0063A044(?:Pointer; ?:TBitmap);
begin
{*
 0063A044    push        ebp
 0063A045    mov         ebp,esp
 0063A047    add         esp,0FFFFFFF4
 0063A04A    mov         dword ptr [ebp-8],edx
 0063A04D    mov         dword ptr [ebp-4],eax
 0063A050    mov         eax,dword ptr [ebp-4]
 0063A053    call        00639F90
 0063A058    mov         edx,dword ptr [ebp-8]
 0063A05B    mov         eax,dword ptr [ebp-4]
 0063A05E    mov         eax,dword ptr [eax+4]
 0063A061    mov         ecx,dword ptr [eax]
 0063A063    call        dword ptr [ecx+8]
 0063A066    cmp         dword ptr [ebp-8],0
>0063A06A    je          0063A0D5
 0063A06C    mov         eax,dword ptr [ebp-8]
 0063A06F    mov         edx,dword ptr [eax]
 0063A071    call        dword ptr [edx+20]
 0063A074    test        eax,eax
>0063A076    jle         0063A0D5
 0063A078    mov         eax,dword ptr [ebp-8]
 0063A07B    call        005C7404
 0063A080    mov         edx,dword ptr [ebp-4]
 0063A083    mov         dword ptr [edx+1C],eax
 0063A086    mov         eax,dword ptr [ebp-8]
 0063A089    mov         edx,dword ptr [eax]
 0063A08B    call        dword ptr [edx+2C]
 0063A08E    push        eax
 0063A08F    mov         eax,dword ptr [ebp-8]
 0063A092    mov         edx,dword ptr [eax]
 0063A094    call        dword ptr [edx+20]
 0063A097    pop         edx
 0063A098    xchg        eax,edx
 0063A099    mov         ecx,edx
 0063A09B    cdq
 0063A09C    idiv        eax,ecx
 0063A09E    test        edx,edx
>0063A0A0    jne         0063A0D5
 0063A0A2    mov         eax,dword ptr [ebp-8]
 0063A0A5    mov         edx,dword ptr [eax]
 0063A0A7    call        dword ptr [edx+2C]
 0063A0AA    push        eax
 0063A0AB    mov         eax,dword ptr [ebp-8]
 0063A0AE    mov         edx,dword ptr [eax]
 0063A0B0    call        dword ptr [edx+20]
 0063A0B3    pop         edx
 0063A0B4    xchg        eax,edx
 0063A0B5    mov         ecx,edx
 0063A0B7    cdq
 0063A0B8    idiv        eax,ecx
 0063A0BA    mov         dword ptr [ebp-0C],eax
 0063A0BD    cmp         dword ptr [ebp-0C],4
>0063A0C1    jle         0063A0CA
 0063A0C3    mov         dword ptr [ebp-0C],1
 0063A0CA    mov         dl,byte ptr [ebp-0C]
 0063A0CD    mov         eax,dword ptr [ebp-4]
 0063A0D0    call        0063A0DC
 0063A0D5    mov         esp,ebp
 0063A0D7    pop         ebp
 0063A0D8    ret
*}
end;

//0063A0DC
procedure sub_0063A0DC(?:Pointer; ?:Integer);
begin
{*
 0063A0DC    push        ebp
 0063A0DD    mov         ebp,esp
 0063A0DF    add         esp,0FFFFFFF8
 0063A0E2    mov         byte ptr [ebp-5],dl
 0063A0E5    mov         dword ptr [ebp-4],eax
 0063A0E8    mov         al,byte ptr [ebp-5]
 0063A0EB    mov         edx,dword ptr [ebp-4]
 0063A0EE    cmp         al,byte ptr [edx+20]
>0063A0F1    je          0063A118
 0063A0F3    cmp         byte ptr [ebp-5],0
>0063A0F7    jbe         0063A118
 0063A0F9    mov         eax,dword ptr [ebp-4]
 0063A0FC    call        00639F90
 0063A101    mov         al,byte ptr [ebp-5]
 0063A104    mov         edx,dword ptr [ebp-4]
 0063A107    mov         byte ptr [edx+20],al
 0063A10A    mov         eax,dword ptr [ebp-4]
 0063A10D    mov         edx,dword ptr [eax+4]
 0063A110    mov         eax,dword ptr [ebp-4]
 0063A113    call        00639FF8
 0063A118    pop         ecx
 0063A119    pop         ecx
 0063A11A    pop         ebp
 0063A11B    ret
*}
end;

//0063A11C
{*function sub_0063A11C(?:Pointer; ?:?):?;
begin
 0063A11C    push        ebp
 0063A11D    mov         ebp,esp
 0063A11F    add         esp,0FFFFFFB0
 0063A122    push        ebx
 0063A123    mov         byte ptr [ebp-5],dl
 0063A126    mov         dword ptr [ebp-4],eax
 0063A129    cmp         byte ptr [ebp-5],2
>0063A12D    jne         0063A13C
 0063A12F    mov         eax,dword ptr [ebp-4]
 0063A132    cmp         byte ptr [eax+20],3
>0063A136    jae         0063A13C
 0063A138    mov         byte ptr [ebp-5],0
 0063A13C    xor         eax,eax
 0063A13E    mov         al,byte ptr [ebp-5]
 0063A141    mov         edx,dword ptr [ebp-4]
 0063A144    mov         eax,dword ptr [edx+eax*4+0C]
 0063A148    mov         dword ptr [ebp-0C],eax
 0063A14B    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0063A14F    jne         0063A757
 0063A155    mov         eax,dword ptr [ebp-4]
 0063A158    mov         eax,dword ptr [eax+4]
 0063A15B    mov         edx,dword ptr [eax]
 0063A15D    call        dword ptr [edx+2C]
 0063A160    mov         ebx,eax
 0063A162    mov         eax,dword ptr [ebp-4]
 0063A165    mov         eax,dword ptr [eax+4]
 0063A168    mov         edx,dword ptr [eax]
 0063A16A    call        dword ptr [edx+20]
 0063A16D    or          ebx,eax
>0063A16F    je          0063A757
 0063A175    mov         eax,dword ptr [ebp-4]
 0063A178    mov         eax,dword ptr [eax+4]
 0063A17B    mov         edx,dword ptr [eax]
 0063A17D    call        dword ptr [edx+2C]
 0063A180    mov         edx,dword ptr [ebp-4]
 0063A183    movzx       edx,byte ptr [edx+20]
 0063A187    mov         ecx,edx
 0063A189    cdq
 0063A18A    idiv        eax,ecx
 0063A18C    mov         dword ptr [ebp-1C],eax
 0063A18F    mov         eax,dword ptr [ebp-4]
 0063A192    mov         eax,dword ptr [eax+4]
 0063A195    mov         edx,dword ptr [eax]
 0063A197    call        dword ptr [edx+20]
 0063A19A    mov         dword ptr [ebp-20],eax
 0063A19D    mov         eax,dword ptr [ebp-4]
 0063A1A0    cmp         dword ptr [eax+8],0
>0063A1A4    jne         0063A1D6
 0063A1A6    cmp         dword ptr ds:[6E47C0],0;gvar_006E47C0:TGlyphCache
>0063A1AD    jne         0063A1C0
 0063A1AF    mov         dl,1
 0063A1B1    mov         eax,[00639AD0];TGlyphCache
 0063A1B6    call        TGlyphCache.Create;TGlyphCache.Create
 0063A1BB    mov         [006E47C0],eax;gvar_006E47C0:TGlyphCache
 0063A1C0    mov         ecx,dword ptr [ebp-20]
 0063A1C3    mov         edx,dword ptr [ebp-1C]
 0063A1C6    mov         eax,[006E47C0];0x0 gvar_006E47C0:TGlyphCache
 0063A1CB    call        00639DA0
 0063A1D0    mov         edx,dword ptr [ebp-4]
 0063A1D3    mov         dword ptr [edx+8],eax
 0063A1D6    mov         dl,1
 0063A1D8    mov         eax,[005BEDD4];TBitmap
 0063A1DD    call        TBitmap.Create;TBitmap.Create
 0063A1E2    mov         dword ptr [ebp-10],eax
 0063A1E5    xor         eax,eax
 0063A1E7    push        ebp
 0063A1E8    push        63A736
 0063A1ED    push        dword ptr fs:[eax]
 0063A1F0    mov         dword ptr fs:[eax],esp
 0063A1F3    mov         edx,dword ptr [ebp-1C]
 0063A1F6    mov         eax,dword ptr [ebp-10]
 0063A1F9    mov         ecx,dword ptr [eax]
 0063A1FB    call        dword ptr [ecx+40];TBitmap.SetWidth
 0063A1FE    mov         edx,dword ptr [ebp-20]
 0063A201    mov         eax,dword ptr [ebp-10]
 0063A204    mov         ecx,dword ptr [eax]
 0063A206    call        dword ptr [ecx+34];TBitmap.SetHeight
 0063A209    mov         eax,dword ptr [ebp-20]
 0063A20C    push        eax
 0063A20D    lea         eax,[ebp-40]
 0063A210    push        eax
 0063A211    mov         ecx,dword ptr [ebp-1C]
 0063A214    xor         edx,edx
 0063A216    xor         eax,eax
 0063A218    call        Rect
 0063A21D    mov         eax,dword ptr [ebp-10]
 0063A220    call        TBitmap.GetCanvas
 0063A225    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A228    mov         edx,8000000F
 0063A22D    call        TBrush.SetColor
 0063A232    mov         eax,dword ptr [ebp-4]
 0063A235    mov         eax,dword ptr [eax+4]
 0063A238    mov         edx,dword ptr [eax]
 0063A23A    call        dword ptr [edx+24]
 0063A23D    call        CopyPalette
 0063A242    mov         edx,eax
 0063A244    mov         eax,dword ptr [ebp-10]
 0063A247    mov         ecx,dword ptr [eax]
 0063A249    call        dword ptr [ecx+38];TBitmap.sub_005C8578
 0063A24C    mov         al,byte ptr [ebp-5]
 0063A24F    mov         byte ptr [ebp-21],al
 0063A252    mov         al,byte ptr [ebp-21]
 0063A255    mov         edx,dword ptr [ebp-4]
 0063A258    cmp         al,byte ptr [edx+20]
>0063A25B    jl          0063A261
 0063A25D    mov         byte ptr [ebp-21],0
 0063A261    mov         eax,dword ptr [ebp-20]
 0063A264    push        eax
 0063A265    lea         eax,[ebp-50]
 0063A268    push        eax
 0063A269    xor         ecx,ecx
 0063A26B    mov         cl,byte ptr [ebp-21]
 0063A26E    inc         ecx
 0063A26F    imul        ecx,dword ptr [ebp-1C]
 0063A273    xor         eax,eax
 0063A275    mov         al,byte ptr [ebp-21]
 0063A278    imul        dword ptr [ebp-1C]
 0063A27B    xor         edx,edx
 0063A27D    call        Rect
 0063A282    mov         al,byte ptr [ebp-5]
 0063A285    sub         al,1
>0063A287    jb          0063A294
>0063A289    je          0063A30A
 0063A28B    dec         eax
 0063A28C    sub         al,2
>0063A28E    jae         0063A720
 0063A294    lea         eax,[ebp-50]
 0063A297    push        eax
 0063A298    mov         eax,dword ptr [ebp-4]
 0063A29B    mov         eax,dword ptr [eax+4]
 0063A29E    call        TBitmap.GetCanvas
 0063A2A3    push        eax
 0063A2A4    mov         eax,dword ptr [ebp-10]
 0063A2A7    call        TBitmap.GetCanvas
 0063A2AC    lea         edx,[ebp-40]
 0063A2AF    pop         ecx
 0063A2B0    call        005C0FC8
 0063A2B5    mov         eax,dword ptr [ebp-4]
 0063A2B8    mov         eax,dword ptr [eax+4]
 0063A2BB    cmp         byte ptr [eax+38],1
>0063A2BF    jne         0063A2E6
 0063A2C1    mov         eax,dword ptr [ebp-4]
 0063A2C4    mov         ecx,dword ptr [eax+1C]
 0063A2C7    mov         eax,dword ptr [ebp-4]
 0063A2CA    mov         eax,dword ptr [eax+8]
 0063A2CD    mov         edx,dword ptr [ebp-10]
 0063A2D0    call        00639C90
 0063A2D5    xor         edx,edx
 0063A2D7    mov         dl,byte ptr [ebp-5]
 0063A2DA    mov         ecx,dword ptr [ebp-4]
 0063A2DD    mov         dword ptr [ecx+edx*4+0C],eax
>0063A2E1    jmp         0063A720
 0063A2E6    mov         eax,dword ptr [ebp-4]
 0063A2E9    mov         eax,dword ptr [eax+8]
 0063A2EC    mov         ecx,20000000
 0063A2F1    mov         edx,dword ptr [ebp-10]
 0063A2F4    call        00639C90
 0063A2F9    xor         edx,edx
 0063A2FB    mov         dl,byte ptr [ebp-5]
 0063A2FE    mov         ecx,dword ptr [ebp-4]
 0063A301    mov         dword ptr [ecx+edx*4+0C],eax
>0063A305    jmp         0063A720
 0063A30A    xor         eax,eax
 0063A30C    mov         dword ptr [ebp-18],eax
 0063A30F    xor         eax,eax
 0063A311    mov         dword ptr [ebp-14],eax
 0063A314    xor         eax,eax
 0063A316    push        ebp
 0063A317    push        63A6FA
 0063A31C    push        dword ptr fs:[eax]
 0063A31F    mov         dword ptr fs:[eax],esp
 0063A322    mov         dl,1
 0063A324    mov         eax,[005BEDD4];TBitmap
 0063A329    call        TBitmap.Create;TBitmap.Create
 0063A32E    mov         dword ptr [ebp-18],eax
 0063A331    mov         dl,1
 0063A333    mov         eax,[005BEDD4];TBitmap
 0063A338    call        TBitmap.Create;TBitmap.Create
 0063A33D    mov         dword ptr [ebp-14],eax
 0063A340    mov         eax,dword ptr [ebp-4]
 0063A343    mov         edx,dword ptr [eax+4]
 0063A346    mov         eax,dword ptr [ebp-14]
 0063A349    mov         ecx,dword ptr [eax]
 0063A34B    call        dword ptr [ecx+8];TBitmap.Assign
 0063A34E    mov         dl,1
 0063A350    mov         eax,dword ptr [ebp-14]
 0063A353    mov         ecx,dword ptr [eax]
 0063A355    call        dword ptr [ecx+6C];TBitmap.sub_005C8290
 0063A358    mov         eax,dword ptr [ebp-4]
 0063A35B    cmp         byte ptr [eax+20],1
>0063A35F    jbe         0063A56F
 0063A365    mov         eax,dword ptr [ebp-10]
 0063A368    call        TBitmap.GetCanvas
 0063A36D    mov         dword ptr [ebp-2C],eax
 0063A370    lea         eax,[ebp-50]
 0063A373    push        eax
 0063A374    mov         eax,dword ptr [ebp-14]
 0063A377    call        TBitmap.GetCanvas
 0063A37C    mov         ecx,eax
 0063A37E    lea         edx,[ebp-40]
 0063A381    mov         eax,dword ptr [ebp-2C]
 0063A384    call        005C0FC8
 0063A389    mov         dl,1
 0063A38B    mov         eax,dword ptr [ebp-18]
 0063A38E    call        TBitmap.SetMonochrome
 0063A393    mov         edx,dword ptr [ebp-1C]
 0063A396    mov         eax,dword ptr [ebp-18]
 0063A399    mov         ecx,dword ptr [eax]
 0063A39B    call        dword ptr [ecx+40];TBitmap.SetWidth
 0063A39E    mov         edx,dword ptr [ebp-20]
 0063A3A1    mov         eax,dword ptr [ebp-18]
 0063A3A4    mov         ecx,dword ptr [eax]
 0063A3A6    call        dword ptr [ecx+34];TBitmap.SetHeight
 0063A3A9    mov         eax,dword ptr [ebp-14]
 0063A3AC    call        TBitmap.GetCanvas
 0063A3B1    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A3B4    mov         edx,0FFFFFF
 0063A3B9    call        TBrush.SetColor
 0063A3BE    lea         eax,[ebp-50]
 0063A3C1    push        eax
 0063A3C2    mov         eax,dword ptr [ebp-14]
 0063A3C5    call        TBitmap.GetCanvas
 0063A3CA    push        eax
 0063A3CB    mov         eax,dword ptr [ebp-18]
 0063A3CE    call        TBitmap.GetCanvas
 0063A3D3    lea         edx,[ebp-40]
 0063A3D6    pop         ecx
 0063A3D7    call        005C0FC8
 0063A3DC    mov         eax,dword ptr [ebp-2C]
 0063A3DF    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A3E2    mov         edx,80000014
 0063A3E7    call        TBrush.SetColor
 0063A3EC    mov         eax,dword ptr [ebp-2C]
 0063A3EF    call        TCanvas.GetHandle
 0063A3F4    mov         dword ptr [ebp-28],eax
 0063A3F7    push        0
 0063A3F9    mov         eax,dword ptr [ebp-28]
 0063A3FC    push        eax
 0063A3FD    call        GDI32.SetTextColor
 0063A402    push        0FFFFFF
 0063A407    mov         eax,dword ptr [ebp-28]
 0063A40A    push        eax
 0063A40B    call        GDI32.SetBkColor
 0063A410    push        0E20746
 0063A415    push        0
 0063A417    push        0
 0063A419    mov         eax,dword ptr [ebp-18]
 0063A41C    call        TBitmap.GetCanvas
 0063A421    call        TCanvas.GetHandle
 0063A426    push        eax
 0063A427    mov         eax,dword ptr [ebp-20]
 0063A42A    push        eax
 0063A42B    mov         eax,dword ptr [ebp-1C]
 0063A42E    push        eax
 0063A42F    push        0
 0063A431    push        0
 0063A433    mov         eax,dword ptr [ebp-28]
 0063A436    push        eax
 0063A437    call        GDI32.BitBlt
 0063A43C    mov         eax,dword ptr [ebp-14]
 0063A43F    call        TBitmap.GetCanvas
 0063A444    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A447    mov         edx,808080
 0063A44C    call        TBrush.SetColor
 0063A451    lea         eax,[ebp-50]
 0063A454    push        eax
 0063A455    mov         eax,dword ptr [ebp-14]
 0063A458    call        TBitmap.GetCanvas
 0063A45D    push        eax
 0063A45E    mov         eax,dword ptr [ebp-18]
 0063A461    call        TBitmap.GetCanvas
 0063A466    lea         edx,[ebp-40]
 0063A469    pop         ecx
 0063A46A    call        005C0FC8
 0063A46F    mov         eax,dword ptr [ebp-2C]
 0063A472    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A475    mov         edx,80000010
 0063A47A    call        TBrush.SetColor
 0063A47F    mov         eax,dword ptr [ebp-2C]
 0063A482    call        TCanvas.GetHandle
 0063A487    mov         dword ptr [ebp-28],eax
 0063A48A    push        0
 0063A48C    mov         eax,dword ptr [ebp-28]
 0063A48F    push        eax
 0063A490    call        GDI32.SetTextColor
 0063A495    push        0FFFFFF
 0063A49A    mov         eax,dword ptr [ebp-28]
 0063A49D    push        eax
 0063A49E    call        GDI32.SetBkColor
 0063A4A3    push        0E20746
 0063A4A8    push        0
 0063A4AA    push        0
 0063A4AC    mov         eax,dword ptr [ebp-18]
 0063A4AF    call        TBitmap.GetCanvas
 0063A4B4    call        TCanvas.GetHandle
 0063A4B9    push        eax
 0063A4BA    mov         eax,dword ptr [ebp-20]
 0063A4BD    push        eax
 0063A4BE    mov         eax,dword ptr [ebp-1C]
 0063A4C1    push        eax
 0063A4C2    push        0
 0063A4C4    push        0
 0063A4C6    mov         eax,dword ptr [ebp-28]
 0063A4C9    push        eax
 0063A4CA    call        GDI32.BitBlt
 0063A4CF    mov         eax,dword ptr [ebp-4]
 0063A4D2    mov         eax,dword ptr [eax+1C]
 0063A4D5    call        ColorToRGB
 0063A4DA    push        eax
 0063A4DB    mov         eax,dword ptr [ebp-14]
 0063A4DE    call        TBitmap.GetCanvas
 0063A4E3    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A4E6    pop         edx
 0063A4E7    call        TBrush.SetColor
 0063A4EC    lea         eax,[ebp-50]
 0063A4EF    push        eax
 0063A4F0    mov         eax,dword ptr [ebp-14]
 0063A4F3    call        TBitmap.GetCanvas
 0063A4F8    push        eax
 0063A4F9    mov         eax,dword ptr [ebp-18]
 0063A4FC    call        TBitmap.GetCanvas
 0063A501    lea         edx,[ebp-40]
 0063A504    pop         ecx
 0063A505    call        005C0FC8
 0063A50A    mov         eax,dword ptr [ebp-2C]
 0063A50D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A510    mov         edx,8000000F
 0063A515    call        TBrush.SetColor
 0063A51A    mov         eax,dword ptr [ebp-2C]
 0063A51D    call        TCanvas.GetHandle
 0063A522    mov         dword ptr [ebp-28],eax
 0063A525    push        0
 0063A527    mov         eax,dword ptr [ebp-28]
 0063A52A    push        eax
 0063A52B    call        GDI32.SetTextColor
 0063A530    push        0FFFFFF
 0063A535    mov         eax,dword ptr [ebp-28]
 0063A538    push        eax
 0063A539    call        GDI32.SetBkColor
 0063A53E    push        0E20746
 0063A543    push        0
 0063A545    push        0
 0063A547    mov         eax,dword ptr [ebp-18]
 0063A54A    call        TBitmap.GetCanvas
 0063A54F    call        TCanvas.GetHandle
 0063A554    push        eax
 0063A555    mov         eax,dword ptr [ebp-20]
 0063A558    push        eax
 0063A559    mov         eax,dword ptr [ebp-1C]
 0063A55C    push        eax
 0063A55D    push        0
 0063A55F    push        0
 0063A561    mov         eax,dword ptr [ebp-28]
 0063A564    push        eax
 0063A565    call        GDI32.BitBlt
>0063A56A    jmp         0063A6DC
 0063A56F    mov         eax,dword ptr [ebp-4]
 0063A572    mov         edx,dword ptr [eax+4]
 0063A575    mov         eax,dword ptr [ebp-18]
 0063A578    mov         ecx,dword ptr [eax]
 0063A57A    call        dword ptr [ecx+8];TBitmap.Assign
 0063A57D    mov         dl,1
 0063A57F    mov         eax,dword ptr [ebp-18]
 0063A582    mov         ecx,dword ptr [eax]
 0063A584    call        dword ptr [ecx+6C];TBitmap.sub_005C8290
 0063A587    mov         eax,dword ptr [ebp-18]
 0063A58A    call        TBitmap.GetCanvas
 0063A58F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A592    xor         edx,edx
 0063A594    call        TBrush.SetColor
 0063A599    mov         edx,dword ptr [ebp-1C]
 0063A59C    mov         eax,dword ptr [ebp-18]
 0063A59F    mov         ecx,dword ptr [eax]
 0063A5A1    call        dword ptr [ecx+40];TBitmap.SetWidth
 0063A5A4    mov         eax,dword ptr [ebp-18]
 0063A5A7    call        005C7250
 0063A5AC    test        al,al
>0063A5AE    je          0063A5E4
 0063A5B0    mov         eax,dword ptr [ebp-18]
 0063A5B3    call        TBitmap.GetCanvas
 0063A5B8    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0063A5BB    mov         edx,0FFFFFF
 0063A5C0    call        TFont.SetColor
 0063A5C5    xor         edx,edx
 0063A5C7    mov         eax,dword ptr [ebp-18]
 0063A5CA    call        TBitmap.SetMonochrome
 0063A5CF    mov         eax,dword ptr [ebp-18]
 0063A5D2    call        TBitmap.GetCanvas
 0063A5D7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A5DA    mov         edx,0FFFFFF
 0063A5DF    call        TBrush.SetColor
 0063A5E4    mov         dl,1
 0063A5E6    mov         eax,dword ptr [ebp-18]
 0063A5E9    call        TBitmap.SetMonochrome
 0063A5EE    mov         eax,dword ptr [ebp-10]
 0063A5F1    call        TBitmap.GetCanvas
 0063A5F6    mov         dword ptr [ebp-30],eax
 0063A5F9    mov         eax,dword ptr [ebp-30]
 0063A5FC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A5FF    mov         edx,8000000F
 0063A604    call        TBrush.SetColor
 0063A609    lea         edx,[ebp-40]
 0063A60C    mov         eax,dword ptr [ebp-30]
 0063A60F    call        TCanvas.FillRect
 0063A614    mov         eax,dword ptr [ebp-30]
 0063A617    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A61A    mov         edx,80000014
 0063A61F    call        TBrush.SetColor
 0063A624    push        0
 0063A626    mov         eax,dword ptr [ebp-30]
 0063A629    call        TCanvas.GetHandle
 0063A62E    push        eax
 0063A62F    call        GDI32.SetTextColor
 0063A634    push        0FFFFFF
 0063A639    mov         eax,dword ptr [ebp-30]
 0063A63C    call        TCanvas.GetHandle
 0063A641    push        eax
 0063A642    call        GDI32.SetBkColor
 0063A647    push        0E20746
 0063A64C    push        0
 0063A64E    push        0
 0063A650    mov         eax,dword ptr [ebp-18]
 0063A653    call        TBitmap.GetCanvas
 0063A658    call        TCanvas.GetHandle
 0063A65D    push        eax
 0063A65E    mov         eax,dword ptr [ebp-20]
 0063A661    push        eax
 0063A662    mov         eax,dword ptr [ebp-1C]
 0063A665    push        eax
 0063A666    push        1
 0063A668    push        1
 0063A66A    mov         eax,dword ptr [ebp-30]
 0063A66D    call        TCanvas.GetHandle
 0063A672    push        eax
 0063A673    call        GDI32.BitBlt
 0063A678    mov         eax,dword ptr [ebp-30]
 0063A67B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063A67E    mov         edx,80000010
 0063A683    call        TBrush.SetColor
 0063A688    push        0
 0063A68A    mov         eax,dword ptr [ebp-30]
 0063A68D    call        TCanvas.GetHandle
 0063A692    push        eax
 0063A693    call        GDI32.SetTextColor
 0063A698    push        0FFFFFF
 0063A69D    mov         eax,dword ptr [ebp-30]
 0063A6A0    call        TCanvas.GetHandle
 0063A6A5    push        eax
 0063A6A6    call        GDI32.SetBkColor
 0063A6AB    push        0E20746
 0063A6B0    push        0
 0063A6B2    push        0
 0063A6B4    mov         eax,dword ptr [ebp-18]
 0063A6B7    call        TBitmap.GetCanvas
 0063A6BC    call        TCanvas.GetHandle
 0063A6C1    push        eax
 0063A6C2    mov         eax,dword ptr [ebp-20]
 0063A6C5    push        eax
 0063A6C6    mov         eax,dword ptr [ebp-1C]
 0063A6C9    push        eax
 0063A6CA    push        0
 0063A6CC    push        0
 0063A6CE    mov         eax,dword ptr [ebp-30]
 0063A6D1    call        TCanvas.GetHandle
 0063A6D6    push        eax
 0063A6D7    call        GDI32.BitBlt
 0063A6DC    xor         eax,eax
 0063A6DE    pop         edx
 0063A6DF    pop         ecx
 0063A6E0    pop         ecx
 0063A6E1    mov         dword ptr fs:[eax],edx
 0063A6E4    push        63A701
 0063A6E9    mov         eax,dword ptr [ebp-14]
 0063A6EC    call        TObject.Free
 0063A6F1    mov         eax,dword ptr [ebp-18]
 0063A6F4    call        TObject.Free
 0063A6F9    ret
>0063A6FA    jmp         @HandleFinally
>0063A6FF    jmp         0063A6E9
 0063A701    mov         eax,dword ptr [ebp-4]
 0063A704    mov         eax,dword ptr [eax+8]
 0063A707    mov         ecx,20000000
 0063A70C    mov         edx,dword ptr [ebp-10]
 0063A70F    call        00639C90
 0063A714    xor         edx,edx
 0063A716    mov         dl,byte ptr [ebp-5]
 0063A719    mov         ecx,dword ptr [ebp-4]
 0063A71C    mov         dword ptr [ecx+edx*4+0C],eax
 0063A720    xor         eax,eax
 0063A722    pop         edx
 0063A723    pop         ecx
 0063A724    pop         ecx
 0063A725    mov         dword ptr fs:[eax],edx
 0063A728    push        63A73D
 0063A72D    mov         eax,dword ptr [ebp-10]
 0063A730    call        TObject.Free
 0063A735    ret
>0063A736    jmp         @HandleFinally
>0063A73B    jmp         0063A72D
 0063A73D    xor         eax,eax
 0063A73F    mov         al,byte ptr [ebp-5]
 0063A742    mov         edx,dword ptr [ebp-4]
 0063A745    mov         eax,dword ptr [edx+eax*4+0C]
 0063A749    mov         dword ptr [ebp-0C],eax
 0063A74C    mov         eax,dword ptr [ebp-4]
 0063A74F    mov         eax,dword ptr [eax+4]
 0063A752    call        005C6CFC
 0063A757    mov         eax,dword ptr [ebp-0C]
 0063A75A    pop         ebx
 0063A75B    mov         esp,ebp
 0063A75D    pop         ebp
 0063A75E    ret
end;*}

//0063A760
{*procedure sub_0063A760(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0063A760    push        ebp
 0063A761    mov         ebp,esp
 0063A763    add         esp,0FFFFFFF0
 0063A766    mov         dword ptr [ebp-0C],ecx
 0063A769    mov         dword ptr [ebp-8],edx
 0063A76C    mov         dword ptr [ebp-4],eax
 0063A76F    mov         eax,dword ptr [ebp-4]
 0063A772    cmp         dword ptr [eax+4],0
>0063A776    je          0063A83A
 0063A77C    mov         eax,dword ptr [ebp-4]
 0063A77F    mov         eax,dword ptr [eax+4]
 0063A782    mov         edx,dword ptr [eax]
 0063A784    call        dword ptr [edx+2C]
 0063A787    test        eax,eax
>0063A789    je          0063A83A
 0063A78F    mov         eax,dword ptr [ebp-4]
 0063A792    mov         eax,dword ptr [eax+4]
 0063A795    mov         edx,dword ptr [eax]
 0063A797    call        dword ptr [edx+20]
 0063A79A    test        eax,eax
>0063A79C    je          0063A83A
 0063A7A2    mov         dl,byte ptr [ebp+0C]
 0063A7A5    mov         eax,dword ptr [ebp-4]
 0063A7A8    call        0063A11C
 0063A7AD    mov         dword ptr [ebp-10],eax
 0063A7B0    cmp         byte ptr [ebp+8],0
>0063A7B4    jne         0063A7BC
 0063A7B6    cmp         byte ptr [ebp+0C],3
>0063A7BA    jne         0063A7F9
 0063A7BC    push        1
 0063A7BE    push        1FFFFFFF
 0063A7C3    push        1FFFFFFF
 0063A7C8    push        0
 0063A7CA    push        0
 0063A7CC    mov         eax,dword ptr [ebp-0C]
 0063A7CF    mov         eax,dword ptr [eax+4]
 0063A7D2    push        eax
 0063A7D3    mov         eax,dword ptr [ebp-0C]
 0063A7D6    mov         eax,dword ptr [eax]
 0063A7D8    push        eax
 0063A7D9    mov         eax,dword ptr [ebp-8]
 0063A7DC    call        TCanvas.GetHandle
 0063A7E1    push        eax
 0063A7E2    mov         eax,dword ptr [ebp-10]
 0063A7E5    push        eax
 0063A7E6    mov         eax,dword ptr [ebp-4]
 0063A7E9    mov         eax,dword ptr [eax+8]
 0063A7EC    call        0058B86C
 0063A7F1    push        eax
 0063A7F2    call        COMCTL32.ImageList_DrawEx
>0063A7F7    jmp         0063A83A
 0063A7F9    push        0
 0063A7FB    push        1FFFFFFF
 0063A800    mov         eax,8000000F
 0063A805    call        ColorToRGB
 0063A80A    push        eax
 0063A80B    push        0
 0063A80D    push        0
 0063A80F    mov         eax,dword ptr [ebp-0C]
 0063A812    mov         eax,dword ptr [eax+4]
 0063A815    push        eax
 0063A816    mov         eax,dword ptr [ebp-0C]
 0063A819    mov         eax,dword ptr [eax]
 0063A81B    push        eax
 0063A81C    mov         eax,dword ptr [ebp-8]
 0063A81F    call        TCanvas.GetHandle
 0063A824    push        eax
 0063A825    mov         eax,dword ptr [ebp-10]
 0063A828    push        eax
 0063A829    mov         eax,dword ptr [ebp-4]
 0063A82C    mov         eax,dword ptr [eax+8]
 0063A82F    call        0058B86C
 0063A834    push        eax
 0063A835    call        COMCTL32.ImageList_DrawEx
 0063A83A    mov         esp,ebp
 0063A83C    pop         ebp
 0063A83D    ret         8
end;*}

//0063A840
{*procedure sub_0063A840(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0063A840    push        ebp
 0063A841    mov         ebp,esp
 0063A843    add         esp,0FFFFFFE4
 0063A846    push        esi
 0063A847    push        edi
 0063A848    mov         esi,dword ptr [ebp+10]
 0063A84B    lea         edi,[ebp-1C]
 0063A84E    movs        dword ptr [edi],dword ptr [esi]
 0063A84F    movs        dword ptr [edi],dword ptr [esi]
 0063A850    movs        dword ptr [edi],dword ptr [esi]
 0063A851    movs        dword ptr [edi],dword ptr [esi]
 0063A852    mov         dword ptr [ebp-0C],ecx
 0063A855    mov         dword ptr [ebp-8],edx
 0063A858    mov         dword ptr [ebp-4],eax
 0063A85B    mov         dl,1
 0063A85D    mov         eax,dword ptr [ebp-8]
 0063A860    mov         eax,dword ptr [eax+14]
 0063A863    call        TBrush.SetStyle
 0063A868    cmp         byte ptr [ebp+0C],1
>0063A86C    jne         0063A904
 0063A872    push        1
 0063A874    push        1
 0063A876    lea         eax,[ebp-1C]
 0063A879    push        eax
 0063A87A    call        USER32.OffsetRect
 0063A87F    mov         edx,80000014
 0063A884    mov         eax,dword ptr [ebp-8]
 0063A887    mov         eax,dword ptr [eax+0C]
 0063A88A    call        TFont.SetColor
 0063A88F    mov         eax,dword ptr [ebp+8]
 0063A892    or          eax,5
 0063A895    push        eax
 0063A896    lea         eax,[ebp-1C]
 0063A899    push        eax
 0063A89A    mov         eax,dword ptr [ebp-0C]
 0063A89D    call        @LStrLen
 0063A8A2    push        eax
 0063A8A3    mov         eax,dword ptr [ebp-0C]
 0063A8A6    call        @LStrToPChar
 0063A8AB    push        eax
 0063A8AC    mov         eax,dword ptr [ebp-8]
 0063A8AF    call        TCanvas.GetHandle
 0063A8B4    push        eax
 0063A8B5    call        USER32.DrawTextA
 0063A8BA    push        0FF
 0063A8BC    push        0FF
 0063A8BE    lea         eax,[ebp-1C]
 0063A8C1    push        eax
 0063A8C2    call        USER32.OffsetRect
 0063A8C7    mov         edx,80000010
 0063A8CC    mov         eax,dword ptr [ebp-8]
 0063A8CF    mov         eax,dword ptr [eax+0C]
 0063A8D2    call        TFont.SetColor
 0063A8D7    mov         eax,dword ptr [ebp+8]
 0063A8DA    or          eax,5
 0063A8DD    push        eax
 0063A8DE    lea         eax,[ebp-1C]
 0063A8E1    push        eax
 0063A8E2    mov         eax,dword ptr [ebp-0C]
 0063A8E5    call        @LStrLen
 0063A8EA    push        eax
 0063A8EB    mov         eax,dword ptr [ebp-0C]
 0063A8EE    call        @LStrToPChar
 0063A8F3    push        eax
 0063A8F4    mov         eax,dword ptr [ebp-8]
 0063A8F7    call        TCanvas.GetHandle
 0063A8FC    push        eax
 0063A8FD    call        USER32.DrawTextA
>0063A902    jmp         0063A92F
 0063A904    mov         eax,dword ptr [ebp+8]
 0063A907    or          eax,5
 0063A90A    push        eax
 0063A90B    lea         eax,[ebp-1C]
 0063A90E    push        eax
 0063A90F    mov         eax,dword ptr [ebp-0C]
 0063A912    call        @LStrLen
 0063A917    push        eax
 0063A918    mov         eax,dword ptr [ebp-0C]
 0063A91B    call        @LStrToPChar
 0063A920    push        eax
 0063A921    mov         eax,dword ptr [ebp-8]
 0063A924    call        TCanvas.GetHandle
 0063A929    push        eax
 0063A92A    call        USER32.DrawTextA
 0063A92F    pop         edi
 0063A930    pop         esi
 0063A931    mov         esp,ebp
 0063A933    pop         ebp
 0063A934    ret         0C
end;*}

//0063A938
{*procedure sub_0063A938(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0063A938    push        ebp
 0063A939    mov         ebp,esp
 0063A93B    add         esp,0FFFFFFBC
 0063A93E    push        esi
 0063A93F    push        edi
 0063A940    mov         dword ptr [ebp-0C],ecx
 0063A943    mov         dword ptr [ebp-8],edx
 0063A946    mov         dword ptr [ebp-4],eax
 0063A949    mov         eax,dword ptr [ebp+8]
 0063A94C    and         eax,2
 0063A94F    cmp         eax,2
>0063A952    jne         0063A96A
 0063A954    cmp         byte ptr [ebp+1C],0
>0063A958    jne         0063A960
 0063A95A    mov         byte ptr [ebp+1C],1
>0063A95E    jmp         0063A96A
 0063A960    cmp         byte ptr [ebp+1C],1
>0063A964    jne         0063A96A
 0063A966    mov         byte ptr [ebp+1C],0
 0063A96A    mov         edx,dword ptr [ebp-0C]
 0063A96D    mov         edx,dword ptr [edx+0C]
 0063A970    mov         eax,dword ptr [ebp-0C]
 0063A973    sub         edx,dword ptr [eax+4]
 0063A976    mov         eax,dword ptr [ebp-0C]
 0063A979    mov         eax,dword ptr [eax+8]
 0063A97C    mov         ecx,dword ptr [ebp-0C]
 0063A97F    sub         eax,dword ptr [ecx]
 0063A981    lea         ecx,[ebp-1C]
 0063A984    call        Point
 0063A989    mov         eax,dword ptr [ebp-4]
 0063A98C    cmp         dword ptr [eax+4],0
>0063A990    je          0063A9C0
 0063A992    mov         eax,dword ptr [ebp-4]
 0063A995    mov         eax,dword ptr [eax+4]
 0063A998    mov         edx,dword ptr [eax]
 0063A99A    call        dword ptr [edx+20]
 0063A99D    push        eax
 0063A99E    mov         eax,dword ptr [ebp-4]
 0063A9A1    mov         eax,dword ptr [eax+4]
 0063A9A4    mov         edx,dword ptr [eax]
 0063A9A6    call        dword ptr [edx+2C]
 0063A9A9    mov         edx,dword ptr [ebp-4]
 0063A9AC    movzx       edx,byte ptr [edx+20]
 0063A9B0    mov         ecx,edx
 0063A9B2    cdq
 0063A9B3    idiv        eax,ecx
 0063A9B5    lea         ecx,[ebp-24]
 0063A9B8    pop         edx
 0063A9B9    call        Point
>0063A9BE    jmp         0063A9CC
 0063A9C0    lea         ecx,[ebp-24]
 0063A9C3    xor         edx,edx
 0063A9C5    xor         eax,eax
 0063A9C7    call        Point
 0063A9CC    mov         eax,dword ptr [ebp+20]
 0063A9CF    call        @LStrLen
 0063A9D4    test        eax,eax
>0063A9D6    jle         0063AA4C
 0063A9D8    push        0
 0063A9DA    lea         eax,[ebp-44]
 0063A9DD    push        eax
 0063A9DE    mov         ecx,dword ptr [ebp-0C]
 0063A9E1    mov         ecx,dword ptr [ecx+8]
 0063A9E4    mov         eax,dword ptr [ebp-0C]
 0063A9E7    sub         ecx,dword ptr [eax]
 0063A9E9    xor         edx,edx
 0063A9EB    xor         eax,eax
 0063A9ED    call        Rect
 0063A9F2    mov         eax,dword ptr [ebp+0C]
 0063A9F5    lea         esi,[ebp-44]
 0063A9F8    mov         edi,eax
 0063A9FA    movs        dword ptr [edi],dword ptr [esi]
 0063A9FB    movs        dword ptr [edi],dword ptr [esi]
 0063A9FC    movs        dword ptr [edi],dword ptr [esi]
 0063A9FD    movs        dword ptr [edi],dword ptr [esi]
 0063A9FE    mov         eax,dword ptr [ebp+8]
 0063AA01    or          eax,400
 0063AA06    push        eax
 0063AA07    mov         eax,dword ptr [ebp+0C]
 0063AA0A    push        eax
 0063AA0B    mov         eax,dword ptr [ebp+20]
 0063AA0E    call        @LStrLen
 0063AA13    push        eax
 0063AA14    mov         eax,dword ptr [ebp+20]
 0063AA17    call        @LStrToPChar
 0063AA1C    push        eax
 0063AA1D    mov         eax,dword ptr [ebp-8]
 0063AA20    call        TCanvas.GetHandle
 0063AA25    push        eax
 0063AA26    call        USER32.DrawTextA
 0063AA2B    mov         edx,dword ptr [ebp+0C]
 0063AA2E    mov         edx,dword ptr [edx+0C]
 0063AA31    mov         eax,dword ptr [ebp+0C]
 0063AA34    sub         edx,dword ptr [eax+4]
 0063AA37    mov         eax,dword ptr [ebp+0C]
 0063AA3A    mov         eax,dword ptr [eax+8]
 0063AA3D    mov         ecx,dword ptr [ebp+0C]
 0063AA40    sub         eax,dword ptr [ecx]
 0063AA42    lea         ecx,[ebp-2C]
 0063AA45    call        Point
>0063AA4A    jmp         0063AA75
 0063AA4C    push        0
 0063AA4E    lea         eax,[ebp-44]
 0063AA51    push        eax
 0063AA52    xor         ecx,ecx
 0063AA54    xor         edx,edx
 0063AA56    xor         eax,eax
 0063AA58    call        Rect
 0063AA5D    mov         eax,dword ptr [ebp+0C]
 0063AA60    lea         esi,[ebp-44]
 0063AA63    mov         edi,eax
 0063AA65    movs        dword ptr [edi],dword ptr [esi]
 0063AA66    movs        dword ptr [edi],dword ptr [esi]
 0063AA67    movs        dword ptr [edi],dword ptr [esi]
 0063AA68    movs        dword ptr [edi],dword ptr [esi]
 0063AA69    lea         ecx,[ebp-2C]
 0063AA6C    xor         edx,edx
 0063AA6E    xor         eax,eax
 0063AA70    call        Point
 0063AA75    mov         al,byte ptr [ebp+1C]
 0063AA78    sub         al,2
>0063AA7A    jae         0063AAA3
 0063AA7C    mov         eax,dword ptr [ebp-18]
 0063AA7F    sub         eax,dword ptr [ebp-20]
 0063AA82    inc         eax
 0063AA83    sar         eax,1
>0063AA85    jns         0063AA8A
 0063AA87    adc         eax,0
 0063AA8A    mov         edx,dword ptr [ebp+10]
 0063AA8D    mov         dword ptr [edx+4],eax
 0063AA90    mov         eax,dword ptr [ebp-18]
 0063AA93    sub         eax,dword ptr [ebp-28]
 0063AA96    inc         eax
 0063AA97    sar         eax,1
>0063AA99    jns         0063AA9E
 0063AA9B    adc         eax,0
 0063AA9E    mov         dword ptr [ebp-10],eax
>0063AAA1    jmp         0063AAC7
 0063AAA3    mov         eax,dword ptr [ebp-1C]
 0063AAA6    sub         eax,dword ptr [ebp-24]
 0063AAA9    inc         eax
 0063AAAA    sar         eax,1
>0063AAAC    jns         0063AAB1
 0063AAAE    adc         eax,0
 0063AAB1    mov         edx,dword ptr [ebp+10]
 0063AAB4    mov         dword ptr [edx],eax
 0063AAB6    mov         eax,dword ptr [ebp-1C]
 0063AAB9    sub         eax,dword ptr [ebp-2C]
 0063AABC    inc         eax
 0063AABD    sar         eax,1
>0063AABF    jns         0063AAC4
 0063AAC1    adc         eax,0
 0063AAC4    mov         dword ptr [ebp-14],eax
 0063AAC7    cmp         dword ptr [ebp-2C],0
>0063AACB    je          0063AAD3
 0063AACD    cmp         dword ptr [ebp-24],0
>0063AAD1    jne         0063AAD8
 0063AAD3    xor         eax,eax
 0063AAD5    mov         dword ptr [ebp+14],eax
 0063AAD8    cmp         dword ptr [ebp+18],0FFFFFFFF
>0063AADC    jne         0063AB79
 0063AAE2    cmp         dword ptr [ebp+14],0FFFFFFFF
>0063AAE6    jne         0063AB32
 0063AAE8    lea         ecx,[ebp-34]
 0063AAEB    mov         edx,dword ptr [ebp-20]
 0063AAEE    add         edx,dword ptr [ebp-28]
 0063AAF1    mov         eax,dword ptr [ebp-24]
 0063AAF4    add         eax,dword ptr [ebp-2C]
 0063AAF7    call        Point
 0063AAFC    mov         al,byte ptr [ebp+1C]
 0063AAFF    sub         al,2
>0063AB01    jae         0063AB16
 0063AB03    mov         eax,dword ptr [ebp-1C]
 0063AB06    sub         eax,dword ptr [ebp-34]
 0063AB09    mov         ecx,3
 0063AB0E    cdq
 0063AB0F    idiv        eax,ecx
 0063AB11    mov         dword ptr [ebp+18],eax
>0063AB14    jmp         0063AB27
 0063AB16    mov         eax,dword ptr [ebp-18]
 0063AB19    sub         eax,dword ptr [ebp-30]
 0063AB1C    mov         ecx,3
 0063AB21    cdq
 0063AB22    idiv        eax,ecx
 0063AB24    mov         dword ptr [ebp+18],eax
 0063AB27    mov         eax,dword ptr [ebp+18]
 0063AB2A    mov         dword ptr [ebp+14],eax
>0063AB2D    jmp         0063ABC8
 0063AB32    lea         ecx,[ebp-34]
 0063AB35    mov         edx,dword ptr [ebp-20]
 0063AB38    add         edx,dword ptr [ebp+14]
 0063AB3B    add         edx,dword ptr [ebp-28]
 0063AB3E    mov         eax,dword ptr [ebp-24]
 0063AB41    add         eax,dword ptr [ebp+14]
 0063AB44    add         eax,dword ptr [ebp-2C]
 0063AB47    call        Point
 0063AB4C    mov         al,byte ptr [ebp+1C]
 0063AB4F    sub         al,2
>0063AB51    jae         0063AB66
 0063AB53    mov         eax,dword ptr [ebp-1C]
 0063AB56    sub         eax,dword ptr [ebp-34]
 0063AB59    inc         eax
 0063AB5A    sar         eax,1
>0063AB5C    jns         0063AB61
 0063AB5E    adc         eax,0
 0063AB61    mov         dword ptr [ebp+18],eax
>0063AB64    jmp         0063ABC8
 0063AB66    mov         eax,dword ptr [ebp-18]
 0063AB69    sub         eax,dword ptr [ebp-30]
 0063AB6C    inc         eax
 0063AB6D    sar         eax,1
>0063AB6F    jns         0063AB74
 0063AB71    adc         eax,0
 0063AB74    mov         dword ptr [ebp+18],eax
>0063AB77    jmp         0063ABC8
 0063AB79    cmp         dword ptr [ebp+14],0FFFFFFFF
>0063AB7D    jne         0063ABC8
 0063AB7F    mov         eax,dword ptr [ebp+18]
 0063AB82    add         eax,dword ptr [ebp-20]
 0063AB85    mov         edx,dword ptr [ebp-18]
 0063AB88    sub         edx,eax
 0063AB8A    mov         eax,dword ptr [ebp+18]
 0063AB8D    add         eax,dword ptr [ebp-24]
 0063AB90    push        eax
 0063AB91    mov         eax,dword ptr [ebp-1C]
 0063AB94    pop         ecx
 0063AB95    sub         eax,ecx
 0063AB97    lea         ecx,[ebp-34]
 0063AB9A    call        Point
 0063AB9F    mov         al,byte ptr [ebp+1C]
 0063ABA2    sub         al,2
>0063ABA4    jae         0063ABB8
 0063ABA6    mov         eax,dword ptr [ebp-34]
 0063ABA9    sub         eax,dword ptr [ebp-2C]
 0063ABAC    sar         eax,1
>0063ABAE    jns         0063ABB3
 0063ABB0    adc         eax,0
 0063ABB3    mov         dword ptr [ebp+14],eax
>0063ABB6    jmp         0063ABC8
 0063ABB8    mov         eax,dword ptr [ebp-30]
 0063ABBB    sub         eax,dword ptr [ebp-28]
 0063ABBE    sar         eax,1
>0063ABC0    jns         0063ABC5
 0063ABC2    adc         eax,0
 0063ABC5    mov         dword ptr [ebp+14],eax
 0063ABC8    mov         al,byte ptr [ebp+1C]
 0063ABCB    sub         al,1
>0063ABCD    jb          0063ABDB
>0063ABCF    je          0063ABF3
 0063ABD1    dec         al
>0063ABD3    je          0063AC11
 0063ABD5    dec         al
>0063ABD7    je          0063AC2B
>0063ABD9    jmp         0063AC49
 0063ABDB    mov         eax,dword ptr [ebp+10]
 0063ABDE    mov         edx,dword ptr [ebp+18]
 0063ABE1    mov         dword ptr [eax],edx
 0063ABE3    mov         eax,dword ptr [ebp+10]
 0063ABE6    mov         eax,dword ptr [eax]
 0063ABE8    add         eax,dword ptr [ebp-24]
 0063ABEB    add         eax,dword ptr [ebp+14]
 0063ABEE    mov         dword ptr [ebp-14],eax
>0063ABF1    jmp         0063AC49
 0063ABF3    mov         eax,dword ptr [ebp-1C]
 0063ABF6    sub         eax,dword ptr [ebp+18]
 0063ABF9    sub         eax,dword ptr [ebp-24]
 0063ABFC    mov         edx,dword ptr [ebp+10]
 0063ABFF    mov         dword ptr [edx],eax
 0063AC01    mov         eax,dword ptr [ebp+10]
 0063AC04    mov         eax,dword ptr [eax]
 0063AC06    sub         eax,dword ptr [ebp+14]
 0063AC09    sub         eax,dword ptr [ebp-2C]
 0063AC0C    mov         dword ptr [ebp-14],eax
>0063AC0F    jmp         0063AC49
 0063AC11    mov         eax,dword ptr [ebp+10]
 0063AC14    mov         edx,dword ptr [ebp+18]
 0063AC17    mov         dword ptr [eax+4],edx
 0063AC1A    mov         eax,dword ptr [ebp+10]
 0063AC1D    mov         eax,dword ptr [eax+4]
 0063AC20    add         eax,dword ptr [ebp-20]
 0063AC23    add         eax,dword ptr [ebp+14]
 0063AC26    mov         dword ptr [ebp-10],eax
>0063AC29    jmp         0063AC49
 0063AC2B    mov         eax,dword ptr [ebp-18]
 0063AC2E    sub         eax,dword ptr [ebp+18]
 0063AC31    sub         eax,dword ptr [ebp-20]
 0063AC34    mov         edx,dword ptr [ebp+10]
 0063AC37    mov         dword ptr [edx+4],eax
 0063AC3A    mov         eax,dword ptr [ebp+10]
 0063AC3D    mov         eax,dword ptr [eax+4]
 0063AC40    sub         eax,dword ptr [ebp+14]
 0063AC43    sub         eax,dword ptr [ebp-28]
 0063AC46    mov         dword ptr [ebp-10],eax
 0063AC49    mov         eax,dword ptr [ebp-0C]
 0063AC4C    mov         eax,dword ptr [eax]
 0063AC4E    mov         edx,dword ptr [ebp+24]
 0063AC51    add         eax,dword ptr [edx]
 0063AC53    mov         edx,dword ptr [ebp+10]
 0063AC56    add         dword ptr [edx],eax
 0063AC58    mov         eax,dword ptr [ebp-0C]
 0063AC5B    mov         eax,dword ptr [eax+4]
 0063AC5E    mov         edx,dword ptr [ebp+24]
 0063AC61    add         eax,dword ptr [edx+4]
 0063AC64    mov         edx,dword ptr [ebp+10]
 0063AC67    add         dword ptr [edx+4],eax
 0063AC6A    mov         eax,dword ptr [ebp-0C]
 0063AC6D    mov         eax,dword ptr [eax+4]
 0063AC70    add         eax,dword ptr [ebp-10]
 0063AC73    mov         edx,dword ptr [ebp+24]
 0063AC76    add         eax,dword ptr [edx]
 0063AC78    push        eax
 0063AC79    mov         eax,dword ptr [ebp-0C]
 0063AC7C    mov         eax,dword ptr [eax]
 0063AC7E    add         eax,dword ptr [ebp-14]
 0063AC81    mov         edx,dword ptr [ebp+24]
 0063AC84    add         eax,dword ptr [edx]
 0063AC86    push        eax
 0063AC87    mov         eax,dword ptr [ebp+0C]
 0063AC8A    push        eax
 0063AC8B    call        USER32.OffsetRect
 0063AC90    pop         edi
 0063AC91    pop         esi
 0063AC92    mov         esp,ebp
 0063AC94    pop         ebp
 0063AC95    ret         20
end;*}

//0063AC98
{*procedure sub_0063AC98(?:Pointer; ?:TCanvas; ?:TRect; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0063AC98    push        ebp
 0063AC99    mov         ebp,esp
 0063AC9B    add         esp,0FFFFFFEC
 0063AC9E    mov         dword ptr [ebp-0C],ecx
 0063ACA1    mov         dword ptr [ebp-8],edx
 0063ACA4    mov         dword ptr [ebp-4],eax
 0063ACA7    mov         eax,dword ptr [ebp+28]
 0063ACAA    push        eax
 0063ACAB    mov         eax,dword ptr [ebp+24]
 0063ACAE    push        eax
 0063ACAF    mov         al,byte ptr [ebp+20]
 0063ACB2    push        eax
 0063ACB3    mov         eax,dword ptr [ebp+1C]
 0063ACB6    push        eax
 0063ACB7    mov         eax,dword ptr [ebp+18]
 0063ACBA    push        eax
 0063ACBB    lea         eax,[ebp-14]
 0063ACBE    push        eax
 0063ACBF    mov         eax,dword ptr [ebp+8]
 0063ACC2    push        eax
 0063ACC3    mov         eax,dword ptr [ebp+0C]
 0063ACC6    push        eax
 0063ACC7    mov         ecx,dword ptr [ebp-0C]
 0063ACCA    mov         edx,dword ptr [ebp-8]
 0063ACCD    mov         eax,dword ptr [ebp-4]
 0063ACD0    call        0063A938
 0063ACD5    mov         al,byte ptr [ebp+14]
 0063ACD8    push        eax
 0063ACD9    mov         al,byte ptr [ebp+10]
 0063ACDC    push        eax
 0063ACDD    lea         ecx,[ebp-14]
 0063ACE0    mov         edx,dword ptr [ebp-8]
 0063ACE3    mov         eax,dword ptr [ebp-4]
 0063ACE6    call        0063A760
 0063ACEB    mov         eax,dword ptr [ebp+8]
 0063ACEE    push        eax
 0063ACEF    mov         al,byte ptr [ebp+14]
 0063ACF2    push        eax
 0063ACF3    mov         eax,dword ptr [ebp+0C]
 0063ACF6    push        eax
 0063ACF7    mov         ecx,dword ptr [ebp+24]
 0063ACFA    mov         edx,dword ptr [ebp-8]
 0063ACFD    mov         eax,dword ptr [ebp-4]
 0063AD00    call        0063A840
 0063AD05    mov         esp,ebp
 0063AD07    pop         ebp
 0063AD08    ret         24
end;*}

//0063AD0C
{*procedure sub_0063AD0C(?:?);
begin
 0063AD0C    push        ebp
 0063AD0D    mov         ebp,esp
 0063AD0F    add         esp,0FFFFFFF8
 0063AD12    mov         dword ptr [ebp-8],edx
 0063AD15    mov         dword ptr [ebp-4],eax
 0063AD18    mov         edx,dword ptr [ebp-8]
 0063AD1B    mov         eax,dword ptr [ebp-4]
 0063AD1E    call        005F1CDC
 0063AD23    mov         eax,dword ptr [ebp-8]
 0063AD26    mov         edx,dword ptr ds:[638E9C];TSpeedButton
 0063AD2C    call        @AsClass
 0063AD31    mov         edx,dword ptr [ebp-4]
 0063AD34    mov         dword ptr [edx+20],eax;TSpeedButtonActionLink..........FClient:TSpeedButton
 0063AD37    pop         ecx
 0063AD38    pop         ecx
 0063AD39    pop         ebp
 0063AD3A    ret
end;*}

//0063AD3C
{*function sub_0063AD3C:?;
begin
 0063AD3C    push        ebp
 0063AD3D    mov         ebp,esp
 0063AD3F    add         esp,0FFFFFFF8
 0063AD42    mov         dword ptr [ebp-4],eax
 0063AD45    mov         eax,dword ptr [ebp-4]
 0063AD48    call        0058E3DC
 0063AD4D    test        al,al
>0063AD4F    je          0063AD91
 0063AD51    mov         eax,dword ptr [ebp-4]
 0063AD54    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink...........FClient:TSpeedButton
 0063AD57    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0063AD5E    je          0063AD91
 0063AD60    mov         eax,dword ptr [ebp-4]
 0063AD63    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink............FClient:TSpeedButton
 0063AD66    cmp         byte ptr [eax+172],0;TSpeedButton.AllowAllUp:Boolean
>0063AD6D    je          0063AD91
 0063AD6F    mov         eax,dword ptr [ebp-4]
 0063AD72    mov         eax,dword ptr [eax+10];TSpeedButtonActionLink.FAction:TBasicAction
 0063AD75    mov         edx,dword ptr ds:[58D604];TCustomAction
 0063AD7B    call        @AsClass
 0063AD80    mov         al,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 0063AD83    mov         edx,dword ptr [ebp-4]
 0063AD86    mov         edx,dword ptr [edx+20];TSpeedButtonActionLink.............FClient:TSpeedButton
 0063AD89    cmp         al,byte ptr [edx+170];TSpeedButton.Down:Boolean
>0063AD8F    je          0063AD95
 0063AD91    xor         eax,eax
>0063AD93    jmp         0063AD97
 0063AD95    mov         al,1
 0063AD97    mov         byte ptr [ebp-5],al
 0063AD9A    mov         al,byte ptr [ebp-5]
 0063AD9D    pop         ecx
 0063AD9E    pop         ecx
 0063AD9F    pop         ebp
 0063ADA0    ret
end;*}

//0063ADA4
{*function sub_0063ADA4:?;
begin
 0063ADA4    push        ebp
 0063ADA5    mov         ebp,esp
 0063ADA7    add         esp,0FFFFFFF8
 0063ADAA    mov         dword ptr [ebp-4],eax
 0063ADAD    mov         eax,dword ptr [ebp-4]
 0063ADB0    cmp         dword ptr [eax+20],0;TSpeedButtonActionLink..............FClient:TSpeedButton
>0063ADB4    je          0063ADD8
 0063ADB6    mov         eax,dword ptr [ebp-4]
 0063ADB9    mov         eax,dword ptr [eax+10];TSpeedButtonActionLink.FAction:TBasicAction
 0063ADBC    mov         edx,dword ptr ds:[58D604];TCustomAction
 0063ADC2    call        @AsClass
 0063ADC7    mov         eax,dword ptr [eax+6C];TCustomAction.FGroupIndex:Integer
 0063ADCA    mov         edx,dword ptr [ebp-4]
 0063ADCD    mov         edx,dword ptr [edx+20];TSpeedButtonActionLink...............FClient:TSpeedButton
 0063ADD0    cmp         eax,dword ptr [edx+168];TSpeedButton.GroupIndex:Integer
>0063ADD6    je          0063ADDC
 0063ADD8    xor         eax,eax
>0063ADDA    jmp         0063ADDE
 0063ADDC    mov         al,1
 0063ADDE    mov         byte ptr [ebp-5],al
 0063ADE1    mov         al,byte ptr [ebp-5]
 0063ADE4    pop         ecx
 0063ADE5    pop         ecx
 0063ADE6    pop         ebp
 0063ADE7    ret
end;*}

//0063ADE8
{*procedure sub_0063ADE8(?:?);
begin
 0063ADE8    push        ebp
 0063ADE9    mov         ebp,esp
 0063ADEB    add         esp,0FFFFFFF8
 0063ADEE    mov         byte ptr [ebp-5],dl
 0063ADF1    mov         dword ptr [ebp-4],eax
 0063ADF4    mov         eax,dword ptr [ebp-4]
 0063ADF7    mov         edx,dword ptr [eax]
 0063ADF9    call        dword ptr [edx+24];TSpeedButtonActionLink.sub_0063AD3C
 0063ADFC    test        al,al
>0063ADFE    je          0063AE0E
 0063AE00    mov         dl,byte ptr [ebp-5]
 0063AE03    mov         eax,dword ptr [ebp-4]
 0063AE06    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink................FClient:TSpeedButton
 0063AE09    call        TSpeedButton.SetDown
 0063AE0E    pop         ecx
 0063AE0F    pop         ecx
 0063AE10    pop         ebp
 0063AE11    ret
end;*}

//0063AE14
{*procedure sub_0063AE14(?:?);
begin
 0063AE14    push        ebp
 0063AE15    mov         ebp,esp
 0063AE17    add         esp,0FFFFFFF8
 0063AE1A    mov         dword ptr [ebp-8],edx
 0063AE1D    mov         dword ptr [ebp-4],eax
 0063AE20    mov         eax,dword ptr [ebp-4]
 0063AE23    mov         edx,dword ptr [eax]
 0063AE25    call        dword ptr [edx+2C];TSpeedButtonActionLink.sub_0063ADA4
 0063AE28    test        al,al
>0063AE2A    je          0063AE3A
 0063AE2C    mov         edx,dword ptr [ebp-8]
 0063AE2F    mov         eax,dword ptr [ebp-4]
 0063AE32    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink.................FClient:TSpeedButton
 0063AE35    call        TSpeedButton.SetGroupIndex
 0063AE3A    pop         ecx
 0063AE3B    pop         ecx
 0063AE3C    pop         ebp
 0063AE3D    ret
end;*}

//0063AE40
constructor TSpeedButton.Create(AOwner:TComponent);
begin
{*
 0063AE40    push        ebp
 0063AE41    mov         ebp,esp
 0063AE43    add         esp,0FFFFFFF4
 0063AE46    push        ebx
 0063AE47    test        dl,dl
>0063AE49    je          0063AE53
 0063AE4B    add         esp,0FFFFFFF0
 0063AE4E    call        @ClassCreate
 0063AE53    mov         dword ptr [ebp-0C],ecx
 0063AE56    mov         byte ptr [ebp-5],dl
 0063AE59    mov         dword ptr [ebp-4],eax
 0063AE5C    mov         dl,1
 0063AE5E    mov         eax,[00639B28];TButtonGlyph
 0063AE63    call        TButtonGlyph.Create;TButtonGlyph.Create
 0063AE68    mov         edx,dword ptr [ebp-4]
 0063AE6B    mov         dword ptr [edx+16C],eax;TSpeedButton.FGlyph:Pointer
 0063AE71    mov         eax,dword ptr [ebp-4]
 0063AE74    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063AE7A    mov         edx,dword ptr [ebp-4]
 0063AE7D    mov         dword ptr [eax+2C],edx
 0063AE80    mov         dword ptr [eax+28],63B634
 0063AE87    mov         ecx,dword ptr [ebp-0C]
 0063AE8A    xor         edx,edx
 0063AE8C    mov         eax,dword ptr [ebp-4]
 0063AE8F    call        TGraphicControl.Create
 0063AE94    push        17
 0063AE96    push        16
 0063AE98    xor         ecx,ecx
 0063AE9A    xor         edx,edx
 0063AE9C    mov         eax,dword ptr [ebp-4]
 0063AE9F    mov         ebx,dword ptr [eax]
 0063AEA1    call        dword ptr [ebx+84];TSpeedButton.sub_005F2870
 0063AEA7    mov         eax,dword ptr [ebp-4]
 0063AEAA    mov         edx,dword ptr ds:[63AF20];0x82 gvar_0063AF20
 0063AEB0    mov         dword ptr [eax+50],edx;TSpeedButton.FControlStyle:TControlStyle
 0063AEB3    mov         dl,1
 0063AEB5    mov         eax,dword ptr [ebp-4]
 0063AEB8    call        TCCalendar.SetParentFont
 0063AEBD    mov         edx,8000000F
 0063AEC2    mov         eax,dword ptr [ebp-4]
 0063AEC5    call        TControl.SetColor
 0063AECA    mov         eax,dword ptr [ebp-4]
 0063AECD    mov         dword ptr [eax+174],4;TSpeedButton.Spacing:Integer
 0063AED7    mov         eax,dword ptr [ebp-4]
 0063AEDA    mov         dword ptr [eax+17C],0FFFFFFFF;TSpeedButton.Margin:Integer
 0063AEE4    mov         eax,dword ptr [ebp-4]
 0063AEE7    mov         byte ptr [eax+173],0;TSpeedButton.Layout:TButtonLayout
 0063AEEE    mov         eax,dword ptr [ebp-4]
 0063AEF1    mov         byte ptr [eax+178],1;TSpeedButton.Transparent:Boolean
 0063AEF8    inc         dword ptr ds:[6E47C4]
 0063AEFE    mov         eax,dword ptr [ebp-4]
 0063AF01    cmp         byte ptr [ebp-5],0
>0063AF05    je          0063AF16
 0063AF07    call        @AfterConstruction
 0063AF0C    pop         dword ptr fs:[0]
 0063AF13    add         esp,0C
 0063AF16    mov         eax,dword ptr [ebp-4]
 0063AF19    pop         ebx
 0063AF1A    mov         esp,ebp
 0063AF1C    pop         ebp
 0063AF1D    ret
*}
end;

//0063AF24
destructor TSpeedButton.Destroy;
begin
{*
 0063AF24    push        ebp
 0063AF25    mov         ebp,esp
 0063AF27    add         esp,0FFFFFFF8
 0063AF2A    call        @BeforeDestruction
 0063AF2F    mov         byte ptr [ebp-5],dl
 0063AF32    mov         dword ptr [ebp-4],eax
 0063AF35    dec         dword ptr ds:[6E47C4]
 0063AF3B    mov         dl,byte ptr [ebp-5]
 0063AF3E    and         dl,0FC
 0063AF41    mov         eax,dword ptr [ebp-4]
 0063AF44    call        TGraphicControl.Destroy
 0063AF49    mov         eax,dword ptr [ebp-4]
 0063AF4C    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063AF52    call        TObject.Free
 0063AF57    cmp         byte ptr [ebp-5],0
>0063AF5B    jle         0063AF65
 0063AF5D    mov         eax,dword ptr [ebp-4]
 0063AF60    call        @ClassDestroy
 0063AF65    pop         ecx
 0063AF66    pop         ecx
 0063AF67    pop         ebp
 0063AF68    ret
*}
end;

//0063AF6C
procedure sub_0063AF6C;
begin
{*
 0063AF6C    push        ebp
 0063AF6D    mov         ebp,esp
 0063AF6F    add         esp,0FFFFFFCC
 0063AF72    xor         edx,edx
 0063AF74    mov         dword ptr [ebp-34],edx
 0063AF77    mov         dword ptr [ebp-4],eax
 0063AF7A    xor         eax,eax
 0063AF7C    push        ebp
 0063AF7D    push        63B21D
 0063AF82    push        dword ptr fs:[eax]
 0063AF85    mov         dword ptr fs:[eax],esp
 0063AF88    mov         eax,dword ptr [ebp-4]
 0063AF8B    mov         edx,dword ptr [eax]
 0063AF8D    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0063AF90    test        al,al
>0063AF92    jne         0063AFAA
 0063AF94    mov         eax,dword ptr [ebp-4]
 0063AF97    mov         byte ptr [eax+182],1;TSpeedButton.FState:TButtonState
 0063AF9E    mov         eax,dword ptr [ebp-4]
 0063AFA1    mov         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>0063AFA8    jmp         0063AFE4
 0063AFAA    mov         eax,dword ptr [ebp-4]
 0063AFAD    cmp         byte ptr [eax+182],1;TSpeedButton.FState:TButtonState
>0063AFB4    jne         0063AFE4
 0063AFB6    mov         eax,dword ptr [ebp-4]
 0063AFB9    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0063AFC0    je          0063AFDA
 0063AFC2    mov         eax,dword ptr [ebp-4]
 0063AFC5    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0063AFCC    je          0063AFDA
 0063AFCE    mov         eax,dword ptr [ebp-4]
 0063AFD1    mov         byte ptr [eax+182],3;TSpeedButton.FState:TButtonState
>0063AFD8    jmp         0063AFE4
 0063AFDA    mov         eax,dword ptr [ebp-4]
 0063AFDD    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 0063AFE4    mov         eax,dword ptr [ebp-4]
 0063AFE7    mov         edx,dword ptr [eax+68];TSpeedButton.FFont:TFont
 0063AFEA    mov         eax,dword ptr [ebp-4]
 0063AFED    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 0063AFF3    call        TCanvas.SetFont
 0063AFF8    mov         eax,dword ptr [ebp-4]
 0063AFFB    mov         eax,dword ptr [eax+4C];TSpeedButton.Height:Integer
 0063AFFE    push        eax
 0063AFFF    lea         eax,[ebp-20]
 0063B002    push        eax
 0063B003    mov         eax,dword ptr [ebp-4]
 0063B006    mov         ecx,dword ptr [eax+48];TSpeedButton.Width:Integer
 0063B009    xor         edx,edx
 0063B00B    xor         eax,eax
 0063B00D    call        Rect
 0063B012    mov         eax,dword ptr [ebp-4]
 0063B015    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>0063B01C    jne         0063B05E
 0063B01E    mov         dword ptr [ebp-8],2010
 0063B025    mov         eax,dword ptr [ebp-4]
 0063B028    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 0063B02E    add         al,0FE
 0063B030    sub         al,2
>0063B032    jae         0063B03B
 0063B034    or          dword ptr [ebp-8],200
 0063B03B    mov         eax,dword ptr [ebp-8]
 0063B03E    push        eax
 0063B03F    push        4
 0063B041    lea         eax,[ebp-20]
 0063B044    push        eax
 0063B045    mov         eax,dword ptr [ebp-4]
 0063B048    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 0063B04E    call        TCanvas.GetHandle
 0063B053    push        eax
 0063B054    call        USER32.DrawFrameControl
>0063B059    jmp         0063B119
 0063B05E    mov         eax,dword ptr [ebp-4]
 0063B061    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 0063B067    add         al,0FE
 0063B069    sub         al,2
>0063B06B    jb          0063B08E
 0063B06D    mov         eax,dword ptr [ebp-4]
 0063B070    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>0063B077    je          0063B085
 0063B079    mov         eax,dword ptr [ebp-4]
 0063B07C    cmp         byte ptr [eax+182],1;TSpeedButton.FState:TButtonState
>0063B083    jne         0063B08E
 0063B085    mov         eax,dword ptr [ebp-4]
 0063B088    test        byte ptr [eax+1C],10;TSpeedButton.FComponentState:TComponentState
>0063B08C    je          0063B0D8
 0063B08E    mov         eax,dword ptr [ebp-4]
 0063B091    movzx       eax,byte ptr [eax+178];TSpeedButton.Transparent:Boolean
 0063B098    mov         eax,dword ptr [eax*4+6E47D0]
 0063B09F    or          eax,0F
 0063B0A2    push        eax
 0063B0A3    mov         eax,dword ptr [ebp-4]
 0063B0A6    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 0063B0AC    add         al,0FE
 0063B0AE    sub         al,2
 0063B0B0    setb        al
 0063B0B3    and         eax,7F
 0063B0B6    mov         eax,dword ptr [eax*4+6E47C8]
 0063B0BD    push        eax
 0063B0BE    lea         eax,[ebp-20]
 0063B0C1    push        eax
 0063B0C2    mov         eax,dword ptr [ebp-4]
 0063B0C5    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 0063B0CB    call        TCanvas.GetHandle
 0063B0D0    push        eax
 0063B0D1    call        USER32.DrawEdge
>0063B0D6    jmp         0063B10C
 0063B0D8    mov         eax,dword ptr [ebp-4]
 0063B0DB    cmp         byte ptr [eax+178],0;TSpeedButton.Transparent:Boolean
>0063B0E2    jne         0063B10C
 0063B0E4    mov         eax,dword ptr [ebp-4]
 0063B0E7    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 0063B0ED    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063B0F0    mov         edx,dword ptr [ebp-4]
 0063B0F3    mov         edx,dword ptr [edx+70];TSpeedButton.FColor:TColor
 0063B0F6    call        TBrush.SetColor
 0063B0FB    lea         edx,[ebp-20]
 0063B0FE    mov         eax,dword ptr [ebp-4]
 0063B101    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 0063B107    call        TCanvas.FillRect
 0063B10C    push        0FF
 0063B10E    push        0FF
 0063B110    lea         eax,[ebp-20]
 0063B113    push        eax
 0063B114    call        USER32.InflateRect
 0063B119    mov         eax,dword ptr [ebp-4]
 0063B11C    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 0063B122    add         al,0FE
 0063B124    sub         al,2
>0063B126    jae         0063B18F
 0063B128    mov         eax,dword ptr [ebp-4]
 0063B12B    cmp         byte ptr [eax+182],3;TSpeedButton.FState:TButtonState
>0063B132    jne         0063B17F
 0063B134    mov         eax,dword ptr [ebp-4]
 0063B137    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>0063B13E    je          0063B14C
 0063B140    mov         eax,dword ptr [ebp-4]
 0063B143    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>0063B14A    jne         0063B17F
 0063B14C    mov         edx,80000014
 0063B151    mov         eax,8000000F
 0063B156    call        005C98A0
 0063B15B    mov         edx,eax
 0063B15D    mov         eax,dword ptr [ebp-4]
 0063B160    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 0063B166    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063B169    call        TBrush.SetBitmap
 0063B16E    lea         edx,[ebp-20]
 0063B171    mov         eax,dword ptr [ebp-4]
 0063B174    mov         eax,dword ptr [eax+160];TSpeedButton.......................................................
 0063B17A    call        TCanvas.FillRect
 0063B17F    mov         dword ptr [ebp-10],1
 0063B186    mov         dword ptr [ebp-0C],1
>0063B18D    jmp         0063B199
 0063B18F    xor         eax,eax
 0063B191    mov         dword ptr [ebp-10],eax
 0063B194    xor         eax,eax
 0063B196    mov         dword ptr [ebp-0C],eax
 0063B199    lea         eax,[ebp-10]
 0063B19C    push        eax
 0063B19D    lea         edx,[ebp-34]
 0063B1A0    mov         eax,dword ptr [ebp-4]
 0063B1A3    call        TTabPage.GetCaption
 0063B1A8    mov         eax,dword ptr [ebp-34]
 0063B1AB    push        eax
 0063B1AC    mov         eax,dword ptr [ebp-4]
 0063B1AF    mov         al,byte ptr [eax+173];TSpeedButton.Layout:TButtonLayout
 0063B1B5    push        eax
 0063B1B6    mov         eax,dword ptr [ebp-4]
 0063B1B9    mov         eax,dword ptr [eax+17C];TSpeedButton.Margin:Integer
 0063B1BF    push        eax
 0063B1C0    mov         eax,dword ptr [ebp-4]
 0063B1C3    mov         eax,dword ptr [eax+174];TSpeedButton.Spacing:Integer
 0063B1C9    push        eax
 0063B1CA    mov         eax,dword ptr [ebp-4]
 0063B1CD    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 0063B1D3    push        eax
 0063B1D4    mov         eax,dword ptr [ebp-4]
 0063B1D7    mov         al,byte ptr [eax+178];TSpeedButton.Transparent:Boolean
 0063B1DD    push        eax
 0063B1DE    xor         edx,edx
 0063B1E0    mov         eax,dword ptr [ebp-4]
 0063B1E3    call        005F6724
 0063B1E8    push        eax
 0063B1E9    lea         eax,[ebp-30]
 0063B1EC    push        eax
 0063B1ED    lea         ecx,[ebp-20]
 0063B1F0    mov         eax,dword ptr [ebp-4]
 0063B1F3    mov         edx,dword ptr [eax+160];TSpeedButton.......................................................
 0063B1F9    mov         eax,dword ptr [ebp-4]
 0063B1FC    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063B202    call        0063AC98
 0063B207    xor         eax,eax
 0063B209    pop         edx
 0063B20A    pop         ecx
 0063B20B    pop         ecx
 0063B20C    mov         dword ptr fs:[eax],edx
 0063B20F    push        63B224
 0063B214    lea         eax,[ebp-34]
 0063B217    call        @LStrClr
 0063B21C    ret
>0063B21D    jmp         @HandleFinally
>0063B222    jmp         0063B214
 0063B224    mov         esp,ebp
 0063B226    pop         ebp
 0063B227    ret
*}
end;

//0063B228
procedure sub_0063B228(?:TSpeedButton);
begin
{*
 0063B228    push        ebp
 0063B229    mov         ebp,esp
 0063B22B    add         esp,0FFFFFFF4
 0063B22E    mov         dword ptr [ebp-4],eax
 0063B231    mov         eax,dword ptr [ebp-4]
 0063B234    cmp         byte ptr [eax+180],0
>0063B23B    je          0063B29D
 0063B23D    mov         eax,dword ptr [ebp-4]
 0063B240    mov         edx,dword ptr [eax]
 0063B242    call        dword ptr [edx+50]
 0063B245    test        al,al
>0063B247    je          0063B29D
 0063B249    lea         eax,[ebp-0C]
 0063B24C    push        eax
 0063B24D    call        USER32.GetCursorPos
 0063B252    lea         eax,[ebp-0C]
 0063B255    mov         dl,1
 0063B257    call        005F16D8
 0063B25C    cmp         eax,dword ptr [ebp-4]
 0063B25F    sete        al
 0063B262    xor         al,1
 0063B264    mov         edx,dword ptr [ebp-4]
 0063B267    mov         byte ptr [edx+181],al
 0063B26D    mov         eax,dword ptr [ebp-4]
 0063B270    cmp         byte ptr [eax+181],0
>0063B277    je          0063B28C
 0063B279    push        0
 0063B27B    xor         ecx,ecx
 0063B27D    mov         edx,0B014
 0063B282    mov         eax,dword ptr [ebp-4]
 0063B285    call        005F4FA8
>0063B28A    jmp         0063B29D
 0063B28C    push        0
 0063B28E    xor         ecx,ecx
 0063B290    mov         edx,0B013
 0063B295    mov         eax,dword ptr [ebp-4]
 0063B298    call        005F4FA8
 0063B29D    mov         esp,ebp
 0063B29F    pop         ebp
 0063B2A0    ret
*}
end;

//0063B2A4
procedure TSpeedButton.Loaded;
begin
{*
 0063B2A4    push        ebp
 0063B2A5    mov         ebp,esp
 0063B2A7    add         esp,0FFFFFFF8
 0063B2AA    mov         dword ptr [ebp-4],eax
 0063B2AD    mov         eax,dword ptr [ebp-4]
 0063B2B0    call        TControl.Loaded
 0063B2B5    mov         eax,dword ptr [ebp-4]
 0063B2B8    mov         edx,dword ptr [eax]
 0063B2BA    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0063B2BD    test        al,al
>0063B2BF    je          0063B2C7
 0063B2C1    mov         byte ptr [ebp-5],0
>0063B2C5    jmp         0063B2CB
 0063B2C7    mov         byte ptr [ebp-5],1
 0063B2CB    mov         dl,byte ptr [ebp-5]
 0063B2CE    mov         eax,dword ptr [ebp-4]
 0063B2D1    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063B2D7    call        0063A11C
 0063B2DC    pop         ecx
 0063B2DD    pop         ecx
 0063B2DE    pop         ebp
 0063B2DF    ret
*}
end;

//0063B2E0
procedure TSpeedButton.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0063B2E0    push        ebp
 0063B2E1    mov         ebp,esp
 0063B2E3    add         esp,0FFFFFFF8
 0063B2E6    mov         byte ptr [ebp-6],cl
 0063B2E9    mov         byte ptr [ebp-5],dl
 0063B2EC    mov         dword ptr [ebp-4],eax
 0063B2EF    mov         eax,dword ptr [ebp+0C]
 0063B2F2    push        eax
 0063B2F3    mov         eax,dword ptr [ebp+8]
 0063B2F6    push        eax
 0063B2F7    mov         cl,byte ptr [ebp-6]
 0063B2FA    mov         dl,byte ptr [ebp-5]
 0063B2FD    mov         eax,dword ptr [ebp-4]
 0063B300    call        TControl.MouseDown
 0063B305    cmp         byte ptr [ebp-5],0
>0063B309    jne         0063B33F
 0063B30B    mov         eax,dword ptr [ebp-4]
 0063B30E    mov         edx,dword ptr [eax]
 0063B310    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0063B313    test        al,al
>0063B315    je          0063B33F
 0063B317    mov         eax,dword ptr [ebp-4]
 0063B31A    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0063B321    jne         0063B335
 0063B323    mov         eax,dword ptr [ebp-4]
 0063B326    mov         byte ptr [eax+182],2;TSpeedButton.FState:TButtonState
 0063B32D    mov         eax,dword ptr [ebp-4]
 0063B330    mov         edx,dword ptr [eax]
 0063B332    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B335    mov         eax,dword ptr [ebp-4]
 0063B338    mov         byte ptr [eax+171],1;TSpeedButton.FDragging:Boolean
 0063B33F    pop         ecx
 0063B340    pop         ecx
 0063B341    pop         ebp
 0063B342    ret         8
*}
end;

//0063B348
procedure TSpeedButton.MouseMove(Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0063B348    push        ebp
 0063B349    mov         ebp,esp
 0063B34B    add         esp,0FFFFFFF0
 0063B34E    mov         dword ptr [ebp-0C],ecx
 0063B351    mov         byte ptr [ebp-5],dl
 0063B354    mov         dword ptr [ebp-4],eax
 0063B357    mov         eax,dword ptr [ebp+8]
 0063B35A    push        eax
 0063B35B    mov         ecx,dword ptr [ebp-0C]
 0063B35E    mov         dl,byte ptr [ebp-5]
 0063B361    mov         eax,dword ptr [ebp-4]
 0063B364    call        TControl.MouseMove
 0063B369    mov         eax,dword ptr [ebp-4]
 0063B36C    cmp         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>0063B373    je          0063B3EB
 0063B375    mov         eax,dword ptr [ebp-4]
 0063B378    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0063B37F    jne         0063B387
 0063B381    mov         byte ptr [ebp-0D],0
>0063B385    jmp         0063B38B
 0063B387    mov         byte ptr [ebp-0D],3
 0063B38B    cmp         dword ptr [ebp-0C],0
>0063B38F    jl          0063B3C7
 0063B391    mov         eax,dword ptr [ebp-4]
 0063B394    call        TControl.GetClientWidth
 0063B399    cmp         eax,dword ptr [ebp-0C]
>0063B39C    jle         0063B3C7
 0063B39E    cmp         dword ptr [ebp+8],0
>0063B3A2    jl          0063B3C7
 0063B3A4    mov         eax,dword ptr [ebp-4]
 0063B3A7    call        TControl.GetClientHeight
 0063B3AC    cmp         eax,dword ptr [ebp+8]
>0063B3AF    jl          0063B3C7
 0063B3B1    mov         eax,dword ptr [ebp-4]
 0063B3B4    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0063B3BB    je          0063B3C3
 0063B3BD    mov         byte ptr [ebp-0D],3
>0063B3C1    jmp         0063B3C7
 0063B3C3    mov         byte ptr [ebp-0D],2
 0063B3C7    mov         al,byte ptr [ebp-0D]
 0063B3CA    mov         edx,dword ptr [ebp-4]
 0063B3CD    cmp         al,byte ptr [edx+182];TSpeedButton.FState:TButtonState
>0063B3D3    je          0063B3FF
 0063B3D5    mov         al,byte ptr [ebp-0D]
 0063B3D8    mov         edx,dword ptr [ebp-4]
 0063B3DB    mov         byte ptr [edx+182],al;TSpeedButton.FState:TButtonState
 0063B3E1    mov         eax,dword ptr [ebp-4]
 0063B3E4    mov         edx,dword ptr [eax]
 0063B3E6    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
>0063B3E9    jmp         0063B3FF
 0063B3EB    mov         eax,dword ptr [ebp-4]
 0063B3EE    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>0063B3F5    jne         0063B3FF
 0063B3F7    mov         eax,dword ptr [ebp-4]
 0063B3FA    call        0063B228
 0063B3FF    mov         esp,ebp
 0063B401    pop         ebp
 0063B402    ret         4
*}
end;

//0063B408
procedure TSpeedButton.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0063B408    push        ebp
 0063B409    mov         ebp,esp
 0063B40B    add         esp,0FFFFFFF8
 0063B40E    push        esi
 0063B40F    mov         byte ptr [ebp-6],cl
 0063B412    mov         byte ptr [ebp-5],dl
 0063B415    mov         dword ptr [ebp-4],eax
 0063B418    mov         eax,dword ptr [ebp+0C]
 0063B41B    push        eax
 0063B41C    mov         eax,dword ptr [ebp+8]
 0063B41F    push        eax
 0063B420    mov         cl,byte ptr [ebp-6]
 0063B423    mov         dl,byte ptr [ebp-5]
 0063B426    mov         eax,dword ptr [ebp-4]
 0063B429    call        TControl.MouseUp
 0063B42E    mov         eax,dword ptr [ebp-4]
 0063B431    cmp         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>0063B438    je          0063B524
 0063B43E    mov         eax,dword ptr [ebp-4]
 0063B441    mov         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
 0063B448    cmp         dword ptr [ebp+0C],0
>0063B44C    jl          0063B46E
 0063B44E    mov         eax,dword ptr [ebp-4]
 0063B451    call        TControl.GetClientWidth
 0063B456    cmp         eax,dword ptr [ebp+0C]
>0063B459    jle         0063B46E
 0063B45B    cmp         dword ptr [ebp+8],0
>0063B45F    jl          0063B46E
 0063B461    mov         eax,dword ptr [ebp-4]
 0063B464    call        TControl.GetClientHeight
 0063B469    cmp         eax,dword ptr [ebp+8]
>0063B46C    jge         0063B472
 0063B46E    xor         eax,eax
>0063B470    jmp         0063B474
 0063B472    mov         al,1
 0063B474    mov         byte ptr [ebp-7],al
 0063B477    mov         eax,dword ptr [ebp-4]
 0063B47A    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0063B481    jne         0063B4B6
 0063B483    mov         eax,dword ptr [ebp-4]
 0063B486    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 0063B48D    mov         eax,dword ptr [ebp-4]
 0063B490    mov         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
 0063B497    cmp         byte ptr [ebp-7],0
>0063B49B    je          0063B50A
 0063B49D    mov         eax,dword ptr [ebp-4]
 0063B4A0    mov         al,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 0063B4A6    add         al,0FE
 0063B4A8    sub         al,2
>0063B4AA    jb          0063B50A
 0063B4AC    mov         eax,dword ptr [ebp-4]
 0063B4AF    mov         edx,dword ptr [eax]
 0063B4B1    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
>0063B4B4    jmp         0063B50A
 0063B4B6    cmp         byte ptr [ebp-7],0
>0063B4BA    je          0063B4E9
 0063B4BC    mov         eax,dword ptr [ebp-4]
 0063B4BF    mov         dl,byte ptr [eax+170];TSpeedButton.Down:Boolean
 0063B4C5    xor         dl,1
 0063B4C8    mov         eax,dword ptr [ebp-4]
 0063B4CB    call        TSpeedButton.SetDown
 0063B4D0    mov         eax,dword ptr [ebp-4]
 0063B4D3    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0063B4DA    je          0063B50A
 0063B4DC    mov         eax,dword ptr [ebp-4]
 0063B4DF    mov         edx,dword ptr [eax]
 0063B4E1    call        dword ptr [edx+80];TSpeedButton.sub_005F3F58
>0063B4E7    jmp         0063B50A
 0063B4E9    mov         eax,dword ptr [ebp-4]
 0063B4EC    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0063B4F3    je          0063B4FF
 0063B4F5    mov         eax,dword ptr [ebp-4]
 0063B4F8    mov         byte ptr [eax+182],3;TSpeedButton.FState:TButtonState
 0063B4FF    mov         eax,dword ptr [ebp-4]
 0063B502    mov         edx,dword ptr [eax]
 0063B504    call        dword ptr [edx+80];TSpeedButton.sub_005F3F58
 0063B50A    cmp         byte ptr [ebp-7],0
>0063B50E    je          0063B51C
 0063B510    mov         eax,dword ptr [ebp-4]
 0063B513    mov         si,0FFEB
 0063B517    call        @CallDynaInst;TSpeedButton.sub_005F5478
 0063B51C    mov         eax,dword ptr [ebp-4]
 0063B51F    call        0063B228
 0063B524    pop         esi
 0063B525    pop         ecx
 0063B526    pop         ecx
 0063B527    pop         ebp
 0063B528    ret         8
*}
end;

//0063B52C
procedure TSpeedButton.sub_005F5478;
begin
{*
 0063B52C    push        ebp
 0063B52D    mov         ebp,esp
 0063B52F    push        ecx
 0063B530    mov         dword ptr [ebp-4],eax
 0063B533    mov         eax,dword ptr [ebp-4]
 0063B536    call        TControl.sub_005F5478
 0063B53B    pop         ecx
 0063B53C    pop         ebp
 0063B53D    ret
*}
end;

//0063B540
procedure TSpeedButton.sub_005F23D4;
begin
{*
 0063B540    push        ebp
 0063B541    mov         ebp,esp
 0063B543    add         esp,0FFFFFFF8
 0063B546    mov         dword ptr [ebp-4],eax
 0063B549    mov         eax,dword ptr [ebp-4]
 0063B54C    call        TSpeedButton.GetGlyph
 0063B551    mov         edx,dword ptr [eax]
 0063B553    call        dword ptr [edx+24]
 0063B556    mov         dword ptr [ebp-8],eax
 0063B559    mov         eax,dword ptr [ebp-8]
 0063B55C    pop         ecx
 0063B55D    pop         ecx
 0063B55E    pop         ebp
 0063B55F    ret
*}
end;

//0063B560
procedure TSpeedButton.sub_005F6314;
begin
{*
 0063B560    push        ebp
 0063B561    mov         ebp,esp
 0063B563    add         esp,0FFFFFFF8
 0063B566    mov         dword ptr [ebp-4],eax
 0063B569    mov         eax,[00638DBC];TSpeedButtonActionLink
 0063B56E    mov         dword ptr [ebp-8],eax
 0063B571    mov         eax,dword ptr [ebp-8]
 0063B574    pop         ecx
 0063B575    pop         ecx
 0063B576    pop         ebp
 0063B577    ret
*}
end;

//0063B578
{*function TSpeedButton.GetGlyph:?;
begin
 0063B578    push        ebp
 0063B579    mov         ebp,esp
 0063B57B    add         esp,0FFFFFFF8
 0063B57E    mov         dword ptr [ebp-4],eax
 0063B581    mov         eax,dword ptr [ebp-4]
 0063B584    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063B58A    mov         eax,dword ptr [eax+4]
 0063B58D    mov         dword ptr [ebp-8],eax
 0063B590    mov         eax,dword ptr [ebp-8]
 0063B593    pop         ecx
 0063B594    pop         ecx
 0063B595    pop         ebp
 0063B596    ret
end;*}

//0063B598
procedure TSpeedButton.SetGlyph(Value:TBitmap);
begin
{*
 0063B598    push        ebp
 0063B599    mov         ebp,esp
 0063B59B    add         esp,0FFFFFFF8
 0063B59E    mov         dword ptr [ebp-8],edx
 0063B5A1    mov         dword ptr [ebp-4],eax
 0063B5A4    mov         edx,dword ptr [ebp-8]
 0063B5A7    mov         eax,dword ptr [ebp-4]
 0063B5AA    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063B5B0    call        0063A044
 0063B5B5    mov         eax,dword ptr [ebp-4]
 0063B5B8    mov         edx,dword ptr [eax]
 0063B5BA    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B5BD    pop         ecx
 0063B5BE    pop         ecx
 0063B5BF    pop         ebp
 0063B5C0    ret
*}
end;

//0063B5C4
{*function TSpeedButton.GetNumGlyphs:?;
begin
 0063B5C4    push        ebp
 0063B5C5    mov         ebp,esp
 0063B5C7    add         esp,0FFFFFFF8
 0063B5CA    mov         dword ptr [ebp-4],eax
 0063B5CD    mov         eax,dword ptr [ebp-4]
 0063B5D0    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063B5D6    mov         al,byte ptr [eax+20]
 0063B5D9    mov         byte ptr [ebp-5],al
 0063B5DC    mov         al,byte ptr [ebp-5]
 0063B5DF    pop         ecx
 0063B5E0    pop         ecx
 0063B5E1    pop         ebp
 0063B5E2    ret
end;*}

//0063B5E4
procedure TSpeedButton.SetNumGlyphs(Value:TNumGlyphs);
begin
{*
 0063B5E4    push        ebp
 0063B5E5    mov         ebp,esp
 0063B5E7    add         esp,0FFFFFFF8
 0063B5EA    mov         byte ptr [ebp-5],dl
 0063B5ED    mov         dword ptr [ebp-4],eax
 0063B5F0    cmp         byte ptr [ebp-5],0
>0063B5F4    jae         0063B5FC
 0063B5F6    mov         byte ptr [ebp-5],1
>0063B5FA    jmp         0063B606
 0063B5FC    cmp         byte ptr [ebp-5],4
>0063B600    jbe         0063B606
 0063B602    mov         byte ptr [ebp-5],4
 0063B606    mov         eax,dword ptr [ebp-4]
 0063B609    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063B60F    mov         al,byte ptr [eax+20]
 0063B612    cmp         al,byte ptr [ebp-5]
>0063B615    je          0063B630
 0063B617    mov         dl,byte ptr [ebp-5]
 0063B61A    mov         eax,dword ptr [ebp-4]
 0063B61D    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063B623    call        0063A0DC
 0063B628    mov         eax,dword ptr [ebp-4]
 0063B62B    mov         edx,dword ptr [eax]
 0063B62D    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B630    pop         ecx
 0063B631    pop         ecx
 0063B632    pop         ebp
 0063B633    ret
*}
end;

//0063B64C
procedure sub_0063B64C(?:TSpeedButton);
begin
{*
 0063B64C    push        ebp
 0063B64D    mov         ebp,esp
 0063B64F    add         esp,0FFFFFFEC
 0063B652    mov         dword ptr [ebp-4],eax
 0063B655    mov         eax,dword ptr [ebp-4]
 0063B658    cmp         dword ptr [eax+168],0
>0063B65F    je          0063B696
 0063B661    mov         eax,dword ptr [ebp-4]
 0063B664    cmp         dword ptr [eax+30],0
>0063B668    je          0063B696
 0063B66A    mov         dword ptr [ebp-14],0B018
 0063B671    mov         eax,dword ptr [ebp-4]
 0063B674    mov         eax,dword ptr [eax+168]
 0063B67A    mov         dword ptr [ebp-10],eax
 0063B67D    mov         eax,dword ptr [ebp-4]
 0063B680    mov         dword ptr [ebp-0C],eax
 0063B683    xor         eax,eax
 0063B685    mov         dword ptr [ebp-8],eax
 0063B688    lea         edx,[ebp-14]
 0063B68B    mov         eax,dword ptr [ebp-4]
 0063B68E    mov         eax,dword ptr [eax+30]
 0063B691    call        005F7E10
 0063B696    mov         esp,ebp
 0063B698    pop         ebp
 0063B699    ret
*}
end;

//0063B69C
procedure TSpeedButton.SetDown(Value:Boolean);
begin
{*
 0063B69C    push        ebp
 0063B69D    mov         ebp,esp
 0063B69F    add         esp,0FFFFFFF8
 0063B6A2    mov         byte ptr [ebp-5],dl
 0063B6A5    mov         dword ptr [ebp-4],eax
 0063B6A8    mov         eax,dword ptr [ebp-4]
 0063B6AB    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0063B6B2    jne         0063B6B8
 0063B6B4    mov         byte ptr [ebp-5],0
 0063B6B8    mov         al,byte ptr [ebp-5]
 0063B6BB    mov         edx,dword ptr [ebp-4]
 0063B6BE    cmp         al,byte ptr [edx+170];TSpeedButton.Down:Boolean
>0063B6C4    je          0063B733
 0063B6C6    mov         eax,dword ptr [ebp-4]
 0063B6C9    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0063B6D0    je          0063B6DE
 0063B6D2    mov         eax,dword ptr [ebp-4]
 0063B6D5    cmp         byte ptr [eax+172],0;TSpeedButton.AllowAllUp:Boolean
>0063B6DC    je          0063B733
 0063B6DE    mov         al,byte ptr [ebp-5]
 0063B6E1    mov         edx,dword ptr [ebp-4]
 0063B6E4    mov         byte ptr [edx+170],al;TSpeedButton.Down:Boolean
 0063B6EA    cmp         byte ptr [ebp-5],0
>0063B6EE    je          0063B710
 0063B6F0    mov         eax,dword ptr [ebp-4]
 0063B6F3    cmp         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
>0063B6FA    jne         0063B704
 0063B6FC    mov         eax,dword ptr [ebp-4]
 0063B6FF    mov         edx,dword ptr [eax]
 0063B701    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B704    mov         eax,dword ptr [ebp-4]
 0063B707    mov         byte ptr [eax+182],3;TSpeedButton.FState:TButtonState
>0063B70E    jmp         0063B725
 0063B710    mov         eax,dword ptr [ebp-4]
 0063B713    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 0063B71A    mov         eax,dword ptr [ebp-4]
 0063B71D    mov         edx,dword ptr [eax]
 0063B71F    call        dword ptr [edx+80];TSpeedButton.sub_005F3F58
 0063B725    cmp         byte ptr [ebp-5],0
>0063B729    je          0063B733
 0063B72B    mov         eax,dword ptr [ebp-4]
 0063B72E    call        0063B64C
 0063B733    pop         ecx
 0063B734    pop         ecx
 0063B735    pop         ebp
 0063B736    ret
*}
end;

//0063B738
procedure TSpeedButton.SetFlat(Value:Boolean);
begin
{*
 0063B738    push        ebp
 0063B739    mov         ebp,esp
 0063B73B    add         esp,0FFFFFFF8
 0063B73E    mov         byte ptr [ebp-5],dl
 0063B741    mov         dword ptr [ebp-4],eax
 0063B744    mov         al,byte ptr [ebp-5]
 0063B747    mov         edx,dword ptr [ebp-4]
 0063B74A    cmp         al,byte ptr [edx+180];TSpeedButton.Flat:Boolean
>0063B750    je          0063B766
 0063B752    mov         al,byte ptr [ebp-5]
 0063B755    mov         edx,dword ptr [ebp-4]
 0063B758    mov         byte ptr [edx+180],al;TSpeedButton.Flat:Boolean
 0063B75E    mov         eax,dword ptr [ebp-4]
 0063B761    mov         edx,dword ptr [eax]
 0063B763    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B766    pop         ecx
 0063B767    pop         ecx
 0063B768    pop         ebp
 0063B769    ret
*}
end;

//0063B76C
procedure TSpeedButton.SetGroupIndex(Value:Integer);
begin
{*
 0063B76C    push        ebp
 0063B76D    mov         ebp,esp
 0063B76F    add         esp,0FFFFFFF8
 0063B772    mov         dword ptr [ebp-8],edx
 0063B775    mov         dword ptr [ebp-4],eax
 0063B778    mov         eax,dword ptr [ebp-4]
 0063B77B    mov         eax,dword ptr [eax+168];TSpeedButton.GroupIndex:Integer
 0063B781    cmp         eax,dword ptr [ebp-8]
>0063B784    je          0063B79A
 0063B786    mov         eax,dword ptr [ebp-8]
 0063B789    mov         edx,dword ptr [ebp-4]
 0063B78C    mov         dword ptr [edx+168],eax;TSpeedButton.GroupIndex:Integer
 0063B792    mov         eax,dword ptr [ebp-4]
 0063B795    call        0063B64C
 0063B79A    pop         ecx
 0063B79B    pop         ecx
 0063B79C    pop         ebp
 0063B79D    ret
*}
end;

//0063B7A0
procedure TSpeedButton.SetLayout(Value:TButtonLayout);
begin
{*
 0063B7A0    push        ebp
 0063B7A1    mov         ebp,esp
 0063B7A3    add         esp,0FFFFFFF8
 0063B7A6    mov         byte ptr [ebp-5],dl
 0063B7A9    mov         dword ptr [ebp-4],eax
 0063B7AC    mov         eax,dword ptr [ebp-4]
 0063B7AF    mov         al,byte ptr [eax+173];TSpeedButton.Layout:TButtonLayout
 0063B7B5    cmp         al,byte ptr [ebp-5]
>0063B7B8    je          0063B7CE
 0063B7BA    mov         al,byte ptr [ebp-5]
 0063B7BD    mov         edx,dword ptr [ebp-4]
 0063B7C0    mov         byte ptr [edx+173],al;TSpeedButton.Layout:TButtonLayout
 0063B7C6    mov         eax,dword ptr [ebp-4]
 0063B7C9    mov         edx,dword ptr [eax]
 0063B7CB    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B7CE    pop         ecx
 0063B7CF    pop         ecx
 0063B7D0    pop         ebp
 0063B7D1    ret
*}
end;

//0063B7D4
procedure TSpeedButton.SetMargin(Value:Integer);
begin
{*
 0063B7D4    push        ebp
 0063B7D5    mov         ebp,esp
 0063B7D7    add         esp,0FFFFFFF8
 0063B7DA    mov         dword ptr [ebp-8],edx
 0063B7DD    mov         dword ptr [ebp-4],eax
 0063B7E0    mov         eax,dword ptr [ebp-8]
 0063B7E3    mov         edx,dword ptr [ebp-4]
 0063B7E6    cmp         eax,dword ptr [edx+17C];TSpeedButton.Margin:Integer
>0063B7EC    je          0063B808
 0063B7EE    cmp         dword ptr [ebp-8],0FFFFFFFF
>0063B7F2    jl          0063B808
 0063B7F4    mov         eax,dword ptr [ebp-8]
 0063B7F7    mov         edx,dword ptr [ebp-4]
 0063B7FA    mov         dword ptr [edx+17C],eax;TSpeedButton.Margin:Integer
 0063B800    mov         eax,dword ptr [ebp-4]
 0063B803    mov         edx,dword ptr [eax]
 0063B805    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B808    pop         ecx
 0063B809    pop         ecx
 0063B80A    pop         ebp
 0063B80B    ret
*}
end;

//0063B80C
procedure TSpeedButton.SetSpacing(Value:Integer);
begin
{*
 0063B80C    push        ebp
 0063B80D    mov         ebp,esp
 0063B80F    add         esp,0FFFFFFF8
 0063B812    mov         dword ptr [ebp-8],edx
 0063B815    mov         dword ptr [ebp-4],eax
 0063B818    mov         eax,dword ptr [ebp-8]
 0063B81B    mov         edx,dword ptr [ebp-4]
 0063B81E    cmp         eax,dword ptr [edx+174];TSpeedButton.Spacing:Integer
>0063B824    je          0063B83A
 0063B826    mov         eax,dword ptr [ebp-8]
 0063B829    mov         edx,dword ptr [ebp-4]
 0063B82C    mov         dword ptr [edx+174],eax;TSpeedButton.Spacing:Integer
 0063B832    mov         eax,dword ptr [ebp-4]
 0063B835    mov         edx,dword ptr [eax]
 0063B837    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B83A    pop         ecx
 0063B83B    pop         ecx
 0063B83C    pop         ebp
 0063B83D    ret
*}
end;

//0063B840
procedure TSpeedButton.SetTransparent(Value:Boolean);
begin
{*
 0063B840    push        ebp
 0063B841    mov         ebp,esp
 0063B843    add         esp,0FFFFFFF8
 0063B846    mov         byte ptr [ebp-5],dl
 0063B849    mov         dword ptr [ebp-4],eax
 0063B84C    mov         al,byte ptr [ebp-5]
 0063B84F    mov         edx,dword ptr [ebp-4]
 0063B852    cmp         al,byte ptr [edx+178];TSpeedButton.Transparent:Boolean
>0063B858    je          0063B89A
 0063B85A    mov         al,byte ptr [ebp-5]
 0063B85D    mov         edx,dword ptr [ebp-4]
 0063B860    mov         byte ptr [edx+178],al;TSpeedButton.Transparent:Boolean
 0063B866    cmp         byte ptr [ebp-5],0
>0063B86A    je          0063B881
 0063B86C    mov         eax,[0063B8A0];0x40 gvar_0063B8A0
 0063B871    mov         edx,dword ptr [ebp-4]
 0063B874    not         eax
 0063B876    and         eax,dword ptr [edx+50];TSpeedButton.FControlStyle:TControlStyle
 0063B879    mov         edx,dword ptr [ebp-4]
 0063B87C    mov         dword ptr [edx+50],eax;TSpeedButton.FControlStyle:TControlStyle
>0063B87F    jmp         0063B892
 0063B881    mov         eax,[0063B8A0];0x40 gvar_0063B8A0
 0063B886    mov         edx,dword ptr [ebp-4]
 0063B889    or          eax,dword ptr [edx+50];TSpeedButton.FControlStyle:TControlStyle
 0063B88C    mov         edx,dword ptr [ebp-4]
 0063B88F    mov         dword ptr [edx+50],eax;TSpeedButton.FControlStyle:TControlStyle
 0063B892    mov         eax,dword ptr [ebp-4]
 0063B895    mov         edx,dword ptr [eax]
 0063B897    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B89A    pop         ecx
 0063B89B    pop         ecx
 0063B89C    pop         ebp
 0063B89D    ret
*}
end;

//0063B8A4
procedure TSpeedButton.SetAllowAllUp(Value:Boolean);
begin
{*
 0063B8A4    push        ebp
 0063B8A5    mov         ebp,esp
 0063B8A7    add         esp,0FFFFFFF8
 0063B8AA    mov         byte ptr [ebp-5],dl
 0063B8AD    mov         dword ptr [ebp-4],eax
 0063B8B0    mov         eax,dword ptr [ebp-4]
 0063B8B3    mov         al,byte ptr [eax+172];TSpeedButton.AllowAllUp:Boolean
 0063B8B9    cmp         al,byte ptr [ebp-5]
>0063B8BC    je          0063B8D2
 0063B8BE    mov         al,byte ptr [ebp-5]
 0063B8C1    mov         edx,dword ptr [ebp-4]
 0063B8C4    mov         byte ptr [edx+172],al;TSpeedButton.AllowAllUp:Boolean
 0063B8CA    mov         eax,dword ptr [ebp-4]
 0063B8CD    call        0063B64C
 0063B8D2    pop         ecx
 0063B8D3    pop         ecx
 0063B8D4    pop         ebp
 0063B8D5    ret
*}
end;

//0063B8D8
{*procedure TSpeedButton.WMLButtonDblClk(?:?);
begin
 0063B8D8    push        ebp
 0063B8D9    mov         ebp,esp
 0063B8DB    add         esp,0FFFFFFF8
 0063B8DE    push        esi
 0063B8DF    mov         dword ptr [ebp-8],edx
 0063B8E2    mov         dword ptr [ebp-4],eax
 0063B8E5    mov         edx,dword ptr [ebp-8]
 0063B8E8    mov         eax,dword ptr [ebp-4]
 0063B8EB    call        TControl.WMLButtonDblClk
 0063B8F0    mov         eax,dword ptr [ebp-4]
 0063B8F3    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0063B8FA    je          0063B908
 0063B8FC    mov         eax,dword ptr [ebp-4]
 0063B8FF    mov         si,0FFE9
 0063B903    call        @CallDynaInst;TControl.sub_005F5508
 0063B908    pop         esi
 0063B909    pop         ecx
 0063B90A    pop         ecx
 0063B90B    pop         ebp
 0063B90C    ret
end;*}

//0063B910
{*procedure TSpeedButton.CMEnabledChanged(?:?);
begin
 0063B910    push        ebp
 0063B911    mov         ebp,esp
 0063B913    add         esp,0FFFFFFF8
 0063B916    mov         dword ptr [ebp-8],edx
 0063B919    mov         dword ptr [ebp-4],eax
 0063B91C    mov         eax,dword ptr [ebp-4]
 0063B91F    mov         edx,dword ptr [eax]
 0063B921    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0063B924    and         eax,7F
 0063B927    mov         dl,byte ptr [eax+6E47D8]
 0063B92D    mov         eax,dword ptr [ebp-4]
 0063B930    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063B936    call        0063A11C
 0063B93B    mov         eax,dword ptr [ebp-4]
 0063B93E    call        0063B228
 0063B943    mov         eax,dword ptr [ebp-4]
 0063B946    mov         edx,dword ptr [eax]
 0063B948    call        dword ptr [edx+80];TSpeedButton.sub_005F3F58
 0063B94E    pop         ecx
 0063B94F    pop         ecx
 0063B950    pop         ebp
 0063B951    ret
end;*}

//0063B954
{*procedure TSpeedButton.CMButtonPressed(?:?);
begin
 0063B954    push        ebp
 0063B955    mov         ebp,esp
 0063B957    add         esp,0FFFFFFF4
 0063B95A    mov         dword ptr [ebp-8],edx
 0063B95D    mov         dword ptr [ebp-4],eax
 0063B960    mov         eax,dword ptr [ebp-8]
 0063B963    mov         eax,dword ptr [eax+4]
 0063B966    mov         edx,dword ptr [ebp-4]
 0063B969    cmp         eax,dword ptr [edx+168];TSpeedButton.GroupIndex:Integer
>0063B96F    jne         0063B9EE
 0063B971    mov         eax,dword ptr [ebp-8]
 0063B974    mov         eax,dword ptr [eax+8]
 0063B977    mov         dword ptr [ebp-0C],eax
 0063B97A    mov         eax,dword ptr [ebp-0C]
 0063B97D    cmp         eax,dword ptr [ebp-4]
>0063B980    je          0063B9EE
 0063B982    mov         eax,dword ptr [ebp-0C]
 0063B985    cmp         byte ptr [eax+170],0
>0063B98C    je          0063B9DC
 0063B98E    mov         eax,dword ptr [ebp-4]
 0063B991    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0063B998    je          0063B9DC
 0063B99A    mov         eax,dword ptr [ebp-4]
 0063B99D    mov         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
 0063B9A4    mov         eax,dword ptr [ebp-4]
 0063B9A7    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 0063B9AE    mov         eax,dword ptr [ebp-4]
 0063B9B1    mov         edx,dword ptr [eax]
 0063B9B3    call        dword ptr [edx+3C];TButton.GetAction
 0063B9B6    mov         edx,dword ptr ds:[58D604];TCustomAction
 0063B9BC    call        @IsClass
 0063B9C1    test        al,al
>0063B9C3    je          0063B9D4
 0063B9C5    mov         eax,dword ptr [ebp-4]
 0063B9C8    mov         edx,dword ptr [eax]
 0063B9CA    call        dword ptr [edx+3C];TButton.GetAction
 0063B9CD    xor         edx,edx
 0063B9CF    call        TAction.SetChecked
 0063B9D4    mov         eax,dword ptr [ebp-4]
 0063B9D7    mov         edx,dword ptr [eax]
 0063B9D9    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063B9DC    mov         eax,dword ptr [ebp-0C]
 0063B9DF    mov         al,byte ptr [eax+172]
 0063B9E5    mov         edx,dword ptr [ebp-4]
 0063B9E8    mov         byte ptr [edx+172],al;TSpeedButton.AllowAllUp:Boolean
 0063B9EE    mov         esp,ebp
 0063B9F0    pop         ebp
 0063B9F1    ret
end;*}

//0063B9F4
{*procedure TSpeedButton.CMDialogChar(?:?);
begin
 0063B9F4    push        ebp
 0063B9F5    mov         ebp,esp
 0063B9F7    add         esp,0FFFFFFF4
 0063B9FA    push        esi
 0063B9FB    xor         ecx,ecx
 0063B9FD    mov         dword ptr [ebp-0C],ecx
 0063BA00    mov         dword ptr [ebp-8],edx
 0063BA03    mov         dword ptr [ebp-4],eax
 0063BA06    xor         eax,eax
 0063BA08    push        ebp
 0063BA09    push        63BA98
 0063BA0E    push        dword ptr fs:[eax]
 0063BA11    mov         dword ptr fs:[eax],esp
 0063BA14    lea         edx,[ebp-0C]
 0063BA17    mov         eax,dword ptr [ebp-4]
 0063BA1A    call        TTabPage.GetCaption
 0063BA1F    mov         edx,dword ptr [ebp-0C]
 0063BA22    mov         eax,dword ptr [ebp-8]
 0063BA25    mov         ax,word ptr [eax+4]
 0063BA29    call        005CCFE8
 0063BA2E    test        al,al
>0063BA30    je          0063BA77
 0063BA32    mov         eax,dword ptr [ebp-4]
 0063BA35    mov         edx,dword ptr [eax]
 0063BA37    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0063BA3A    test        al,al
>0063BA3C    je          0063BA77
 0063BA3E    mov         eax,dword ptr [ebp-4]
 0063BA41    cmp         byte ptr [eax+57],0;TSpeedButton.FVisible:Boolean
>0063BA45    je          0063BA77
 0063BA47    mov         eax,dword ptr [ebp-4]
 0063BA4A    cmp         dword ptr [eax+30],0;TSpeedButton.FParent:TWinControl
>0063BA4E    je          0063BA77
 0063BA50    mov         eax,dword ptr [ebp-4]
 0063BA53    mov         eax,dword ptr [eax+30];TSpeedButton.FParent:TWinControl
 0063BA56    cmp         byte ptr [eax+1A6],0;TWinControl.FShowing:Boolean
>0063BA5D    je          0063BA77
 0063BA5F    mov         eax,dword ptr [ebp-4]
 0063BA62    mov         si,0FFEB
 0063BA66    call        @CallDynaInst;TSpeedButton.sub_005F5478
 0063BA6B    mov         eax,dword ptr [ebp-8]
 0063BA6E    mov         dword ptr [eax+0C],1
>0063BA75    jmp         0063BA82
 0063BA77    mov         edx,dword ptr [ebp-8]
 0063BA7A    mov         eax,dword ptr [ebp-4]
 0063BA7D    mov         ecx,dword ptr [eax]
 0063BA7F    call        dword ptr [ecx-10];TControl.DefaultHandler
 0063BA82    xor         eax,eax
 0063BA84    pop         edx
 0063BA85    pop         ecx
 0063BA86    pop         ecx
 0063BA87    mov         dword ptr fs:[eax],edx
 0063BA8A    push        63BA9F
 0063BA8F    lea         eax,[ebp-0C]
 0063BA92    call        @LStrClr
 0063BA97    ret
>0063BA98    jmp         @HandleFinally
>0063BA9D    jmp         0063BA8F
 0063BA9F    pop         esi
 0063BAA0    mov         esp,ebp
 0063BAA2    pop         ebp
 0063BAA3    ret
end;*}

//0063BAA4
{*procedure TSpeedButton.CMFontChanged(?:?);
begin
 0063BAA4    push        ebp
 0063BAA5    mov         ebp,esp
 0063BAA7    add         esp,0FFFFFFF8
 0063BAAA    mov         dword ptr [ebp-8],edx
 0063BAAD    mov         dword ptr [ebp-4],eax
 0063BAB0    mov         eax,dword ptr [ebp-4]
 0063BAB3    mov         edx,dword ptr [eax]
 0063BAB5    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063BAB8    pop         ecx
 0063BAB9    pop         ecx
 0063BABA    pop         ebp
 0063BABB    ret
end;*}

//0063BABC
{*procedure TSpeedButton.CMTextChanged(?:?);
begin
 0063BABC    push        ebp
 0063BABD    mov         ebp,esp
 0063BABF    add         esp,0FFFFFFF8
 0063BAC2    mov         dword ptr [ebp-8],edx
 0063BAC5    mov         dword ptr [ebp-4],eax
 0063BAC8    mov         eax,dword ptr [ebp-4]
 0063BACB    mov         edx,dword ptr [eax]
 0063BACD    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063BAD0    pop         ecx
 0063BAD1    pop         ecx
 0063BAD2    pop         ebp
 0063BAD3    ret
end;*}

//0063BAD4
{*procedure TSpeedButton.CMSysColorChange(?:?);
begin
 0063BAD4    push        ebp
 0063BAD5    mov         ebp,esp
 0063BAD7    add         esp,0FFFFFFF4
 0063BADA    mov         dword ptr [ebp-0C],edx
 0063BADD    mov         dword ptr [ebp-4],eax
 0063BAE0    mov         eax,dword ptr [ebp-4]
 0063BAE3    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0063BAE9    mov         dword ptr [ebp-8],eax
 0063BAEC    mov         eax,dword ptr [ebp-8]
 0063BAEF    call        00639F90
 0063BAF4    mov         eax,dword ptr [ebp-4]
 0063BAF7    mov         dl,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 0063BAFD    mov         eax,dword ptr [ebp-8]
 0063BB00    call        0063A11C
 0063BB05    mov         esp,ebp
 0063BB07    pop         ebp
 0063BB08    ret
end;*}

//0063BB0C
{*procedure TSpeedButton.CMMouseEnter(?:?);
begin
 0063BB0C    push        ebp
 0063BB0D    mov         ebp,esp
 0063BB0F    add         esp,0FFFFFFF8
 0063BB12    mov         dword ptr [ebp-8],edx
 0063BB15    mov         dword ptr [ebp-4],eax
 0063BB18    mov         edx,dword ptr [ebp-8]
 0063BB1B    mov         eax,dword ptr [ebp-4]
 0063BB1E    call        TControl.CMMouseEnter
 0063BB23    mov         eax,dword ptr [ebp-4]
 0063BB26    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>0063BB2D    je          0063BB6E
 0063BB2F    mov         eax,dword ptr [ebp-4]
 0063BB32    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>0063BB39    jne         0063BB6E
 0063BB3B    mov         eax,dword ptr [ebp-4]
 0063BB3E    mov         edx,dword ptr [eax]
 0063BB40    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0063BB43    test        al,al
>0063BB45    je          0063BB6E
 0063BB47    mov         eax,dword ptr [ebp-4]
 0063BB4A    cmp         byte ptr [eax+5D],1;TSpeedButton.FDragMode:TDragMode
>0063BB4E    je          0063BB6E
 0063BB50    call        USER32.GetCapture
 0063BB55    test        eax,eax
>0063BB57    jne         0063BB6E
 0063BB59    mov         eax,dword ptr [ebp-4]
 0063BB5C    mov         byte ptr [eax+181],1;TSpeedButton.FMouseInControl:Boolean
 0063BB63    mov         eax,dword ptr [ebp-4]
 0063BB66    mov         edx,dword ptr [eax]
 0063BB68    call        dword ptr [edx+80];TSpeedButton.sub_005F3F58
 0063BB6E    pop         ecx
 0063BB6F    pop         ecx
 0063BB70    pop         ebp
 0063BB71    ret
end;*}

//0063BB74
procedure TSpeedButton.CMMouseLeave(Message:TMessage);
begin
{*
 0063BB74    push        ebp
 0063BB75    mov         ebp,esp
 0063BB77    add         esp,0FFFFFFF8
 0063BB7A    mov         dword ptr [ebp-8],edx
 0063BB7D    mov         dword ptr [ebp-4],eax
 0063BB80    mov         edx,dword ptr [ebp-8]
 0063BB83    mov         eax,dword ptr [ebp-4]
 0063BB86    call        TControl.CMMouseLeave
 0063BB8B    mov         eax,dword ptr [ebp-4]
 0063BB8E    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>0063BB95    je          0063BBCD
 0063BB97    mov         eax,dword ptr [ebp-4]
 0063BB9A    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>0063BBA1    je          0063BBCD
 0063BBA3    mov         eax,dword ptr [ebp-4]
 0063BBA6    mov         edx,dword ptr [eax]
 0063BBA8    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0063BBAB    test        al,al
>0063BBAD    je          0063BBCD
 0063BBAF    mov         eax,dword ptr [ebp-4]
 0063BBB2    cmp         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>0063BBB9    jne         0063BBCD
 0063BBBB    mov         eax,dword ptr [ebp-4]
 0063BBBE    mov         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
 0063BBC5    mov         eax,dword ptr [ebp-4]
 0063BBC8    mov         edx,dword ptr [eax]
 0063BBCA    call        dword ptr [edx+7C];TSpeedButton.sub_005F3E48
 0063BBCD    pop         ecx
 0063BBCE    pop         ecx
 0063BBCF    pop         ebp
 0063BBD0    ret
*}
end;

//0063BBD4
{*procedure sub_0063BBD4(?:?; ?:?; ?:?);
begin
 0063BBD4    push        ebp
 0063BBD5    mov         ebp,esp
 0063BBD7    add         esp,0FFFFFFE4
 0063BBDA    mov         dword ptr [ebp-8],edx
 0063BBDD    mov         dword ptr [ebp-4],eax
 0063BBE0    mov         eax,dword ptr [ebp+8]
 0063BBE3    mov         eax,dword ptr [eax-4]
 0063BBE6    call        TSpeedButton.GetGlyph
 0063BBEB    mov         dword ptr [ebp-0C],eax
 0063BBEE    mov         eax,dword ptr [ebp-4]
 0063BBF1    mov         edx,dword ptr [eax+34]
 0063BBF4    mov         eax,dword ptr [ebp-0C]
 0063BBF7    mov         ecx,dword ptr [eax]
 0063BBF9    call        dword ptr [ecx+40]
 0063BBFC    mov         eax,dword ptr [ebp-4]
 0063BBFF    mov         edx,dword ptr [eax+30]
 0063BC02    mov         eax,dword ptr [ebp-0C]
 0063BC05    mov         ecx,dword ptr [eax]
 0063BC07    call        dword ptr [ecx+34]
 0063BC0A    mov         eax,dword ptr [ebp-0C]
 0063BC0D    call        TBitmap.GetCanvas
 0063BC12    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063BC15    mov         edx,0FF00FF
 0063BC1A    call        TBrush.SetColor
 0063BC1F    mov         eax,dword ptr [ebp-0C]
 0063BC22    mov         edx,dword ptr [eax]
 0063BC24    call        dword ptr [edx+20]
 0063BC27    push        eax
 0063BC28    lea         eax,[ebp-1C]
 0063BC2B    push        eax
 0063BC2C    mov         eax,dword ptr [ebp-0C]
 0063BC2F    mov         edx,dword ptr [eax]
 0063BC31    call        dword ptr [edx+2C]
 0063BC34    mov         ecx,eax
 0063BC36    xor         edx,edx
 0063BC38    xor         eax,eax
 0063BC3A    call        Rect
 0063BC3F    lea         eax,[ebp-1C]
 0063BC42    push        eax
 0063BC43    mov         eax,dword ptr [ebp-0C]
 0063BC46    call        TBitmap.GetCanvas
 0063BC4B    pop         edx
 0063BC4C    call        TCanvas.FillRect
 0063BC51    push        0
 0063BC53    mov         eax,dword ptr [ebp-8]
 0063BC56    push        eax
 0063BC57    push        1
 0063BC59    mov         eax,dword ptr [ebp-0C]
 0063BC5C    call        TBitmap.GetCanvas
 0063BC61    mov         edx,eax
 0063BC63    xor         ecx,ecx
 0063BC65    mov         eax,dword ptr [ebp-4]
 0063BC68    call        0058C1C8
 0063BC6D    mov         esp,ebp
 0063BC6F    pop         ebp
 0063BC70    ret
end;*}

//0063BC74
{*procedure TSpeedButton.sub_005F61B0(?:?; ?:?);
begin
 0063BC74    push        ebp
 0063BC75    mov         ebp,esp
 0063BC77    add         esp,0FFFFFFF4
 0063BC7A    mov         byte ptr [ebp-9],cl
 0063BC7D    mov         dword ptr [ebp-8],edx
 0063BC80    mov         dword ptr [ebp-4],eax
 0063BC83    mov         cl,byte ptr [ebp-9]
 0063BC86    mov         edx,dword ptr [ebp-8]
 0063BC89    mov         eax,dword ptr [ebp-4]
 0063BC8C    call        TControl.sub_005F61B0
 0063BC91    mov         eax,dword ptr [ebp-8]
 0063BC94    mov         edx,dword ptr ds:[58D604];TCustomAction
 0063BC9A    call        @IsClass
 0063BC9F    test        al,al
>0063BCA1    je          0063BD2B
 0063BCA7    cmp         byte ptr [ebp-9],0
>0063BCAB    jne         0063BCB9
 0063BCAD    mov         eax,dword ptr [ebp-4]
 0063BCB0    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0063BCB7    jne         0063BCC7
 0063BCB9    mov         eax,dword ptr [ebp-8]
 0063BCBC    mov         edx,dword ptr [eax+6C]
 0063BCBF    mov         eax,dword ptr [ebp-4]
 0063BCC2    call        TSpeedButton.SetGroupIndex
 0063BCC7    mov         eax,dword ptr [ebp-4]
 0063BCCA    call        TSpeedButton.GetGlyph
 0063BCCF    mov         edx,dword ptr [eax]
 0063BCD1    call        dword ptr [edx+1C]
 0063BCD4    test        al,al
>0063BCD6    je          0063BD2B
 0063BCD8    mov         eax,dword ptr [ebp-8]
 0063BCDB    cmp         dword ptr [eax+5C],0
>0063BCDF    je          0063BD2B
 0063BCE1    mov         eax,dword ptr [ebp-8]
 0063BCE4    mov         eax,dword ptr [eax+5C]
 0063BCE7    cmp         dword ptr [eax+38],0
>0063BCEB    je          0063BD2B
 0063BCED    mov         eax,dword ptr [ebp-8]
 0063BCF0    cmp         dword ptr [eax+80],0
>0063BCF7    jl          0063BD2B
 0063BCF9    mov         eax,dword ptr [ebp-8]
 0063BCFC    mov         eax,dword ptr [eax+5C]
 0063BCFF    mov         eax,dword ptr [eax+38]
 0063BD02    call        0058BBF4
 0063BD07    mov         edx,dword ptr [ebp-8]
 0063BD0A    cmp         eax,dword ptr [edx+80]
>0063BD10    jle         0063BD2B
 0063BD12    push        ebp
 0063BD13    mov         eax,dword ptr [ebp-8]
 0063BD16    mov         edx,dword ptr [eax+80]
 0063BD1C    mov         eax,dword ptr [ebp-8]
 0063BD1F    mov         eax,dword ptr [eax+5C]
 0063BD22    mov         eax,dword ptr [eax+38]
 0063BD25    call        0063BBD4
 0063BD2A    pop         ecx
 0063BD2B    mov         esp,ebp
 0063BD2D    pop         ebp
 0063BD2E    ret
end;*}

//0063BD30
constructor TBitBtn.Create(AOwner:TComponent);
begin
{*
 0063BD30    push        ebp
 0063BD31    mov         ebp,esp
 0063BD33    add         esp,0FFFFFFF4
 0063BD36    test        dl,dl
>0063BD38    je          0063BD42
 0063BD3A    add         esp,0FFFFFFF0
 0063BD3D    call        @ClassCreate
 0063BD42    mov         dword ptr [ebp-0C],ecx
 0063BD45    mov         byte ptr [ebp-5],dl
 0063BD48    mov         dword ptr [ebp-4],eax
 0063BD4B    mov         dl,1
 0063BD4D    mov         eax,[00639B28];TButtonGlyph
 0063BD52    call        TButtonGlyph.Create;TButtonGlyph.Create
 0063BD57    mov         edx,dword ptr [ebp-4]
 0063BD5A    mov         dword ptr [edx+21C],eax;TBitBtn.FGlyph:Pointer
 0063BD60    mov         eax,dword ptr [ebp-4]
 0063BD63    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063BD69    mov         edx,dword ptr [ebp-4]
 0063BD6C    mov         dword ptr [eax+2C],edx
 0063BD6F    mov         dword ptr [eax+28],63C3AC
 0063BD76    mov         ecx,dword ptr [ebp-0C]
 0063BD79    xor         edx,edx
 0063BD7B    mov         eax,dword ptr [ebp-4]
 0063BD7E    call        TButton.Create
 0063BD83    mov         dl,1
 0063BD85    mov         eax,[005BE7D8];TCanvas
 0063BD8A    call        TCanvas.Create;TCanvas.Create
 0063BD8F    mov         edx,dword ptr [ebp-4]
 0063BD92    mov         dword ptr [edx+218],eax;TBitBtn.FCanvas:TCanvas
 0063BD98    mov         eax,dword ptr [ebp-4]
 0063BD9B    mov         byte ptr [eax+220],0;TBitBtn.Style:TButtonStyle
 0063BDA2    mov         eax,dword ptr [ebp-4]
 0063BDA5    mov         byte ptr [eax+221],0;TBitBtn.FKind:TBitBtnKind
 0063BDAC    mov         eax,dword ptr [ebp-4]
 0063BDAF    mov         byte ptr [eax+222],0;TBitBtn.Layout:TButtonLayout
 0063BDB6    mov         eax,dword ptr [ebp-4]
 0063BDB9    mov         dword ptr [eax+224],4;TBitBtn.Spacing:Integer
 0063BDC3    mov         eax,dword ptr [ebp-4]
 0063BDC6    mov         dword ptr [eax+228],0FFFFFFFF;TBitBtn.Margin:Integer
 0063BDD0    mov         eax,dword ptr [ebp-4]
 0063BDD3    mov         eax,dword ptr [eax+50];TBitBtn.FControlStyle:TControlStyle
 0063BDD6    or          eax,dword ptr ds:[63BE04];0x4000 gvar_0063BE04
 0063BDDC    mov         edx,dword ptr [ebp-4]
 0063BDDF    mov         dword ptr [edx+50],eax;TBitBtn.FControlStyle:TControlStyle
 0063BDE2    mov         eax,dword ptr [ebp-4]
 0063BDE5    cmp         byte ptr [ebp-5],0
>0063BDE9    je          0063BDFA
 0063BDEB    call        @AfterConstruction
 0063BDF0    pop         dword ptr fs:[0]
 0063BDF7    add         esp,0C
 0063BDFA    mov         eax,dword ptr [ebp-4]
 0063BDFD    mov         esp,ebp
 0063BDFF    pop         ebp
 0063BE00    ret
*}
end;

//0063BE08
destructor TBitBtn.Destroy;
begin
{*
 0063BE08    push        ebp
 0063BE09    mov         ebp,esp
 0063BE0B    add         esp,0FFFFFFF8
 0063BE0E    call        @BeforeDestruction
 0063BE13    mov         byte ptr [ebp-5],dl
 0063BE16    mov         dword ptr [ebp-4],eax
 0063BE19    mov         dl,byte ptr [ebp-5]
 0063BE1C    and         dl,0FC
 0063BE1F    mov         eax,dword ptr [ebp-4]
 0063BE22    call        TWinControl.Destroy
 0063BE27    mov         eax,dword ptr [ebp-4]
 0063BE2A    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063BE30    call        TObject.Free
 0063BE35    mov         eax,dword ptr [ebp-4]
 0063BE38    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063BE3E    call        TObject.Free
 0063BE43    cmp         byte ptr [ebp-5],0
>0063BE47    jle         0063BE51
 0063BE49    mov         eax,dword ptr [ebp-4]
 0063BE4C    call        @ClassDestroy
 0063BE51    pop         ecx
 0063BE52    pop         ecx
 0063BE53    pop         ebp
 0063BE54    ret
*}
end;

//0063BE58
procedure sub_0063BE58;
begin
{*
 0063BE58    push        ebp
 0063BE59    mov         ebp,esp
 0063BE5B    add         esp,0FFFFFFF8
 0063BE5E    mov         dword ptr [ebp-4],eax
 0063BE61    mov         eax,dword ptr [ebp-4]
 0063BE64    mov         edx,dword ptr [eax]
 0063BE66    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0063BE69    test        al,al
>0063BE6B    je          0063BE73
 0063BE6D    mov         byte ptr [ebp-5],0
>0063BE71    jmp         0063BE77
 0063BE73    mov         byte ptr [ebp-5],1
 0063BE77    mov         eax,dword ptr [ebp-4]
 0063BE7A    call        005F8728
 0063BE7F    mov         dl,byte ptr [ebp-5]
 0063BE82    mov         eax,dword ptr [ebp-4]
 0063BE85    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063BE8B    call        0063A11C
 0063BE90    pop         ecx
 0063BE91    pop         ecx
 0063BE92    pop         ebp
 0063BE93    ret
*}
end;

//0063BE94
{*procedure sub_0063BE94(?:?);
begin
 0063BE94    push        ebp
 0063BE95    mov         ebp,esp
 0063BE97    add         esp,0FFFFFFF8
 0063BE9A    mov         dword ptr [ebp-8],edx
 0063BE9D    mov         dword ptr [ebp-4],eax
 0063BEA0    mov         edx,dword ptr [ebp-8]
 0063BEA3    mov         eax,dword ptr [ebp-4]
 0063BEA6    call        0059CB98
 0063BEAB    mov         eax,dword ptr [ebp-8]
 0063BEAE    or          dword ptr [eax+4],0B
 0063BEB2    pop         ecx
 0063BEB3    pop         ecx
 0063BEB4    pop         ebp
 0063BEB5    ret
end;*}

//0063BEB8
{*procedure sub_0063BEB8(?:?);
begin
 0063BEB8    push        ebp
 0063BEB9    mov         ebp,esp
 0063BEBB    add         esp,0FFFFFFF8
 0063BEBE    mov         byte ptr [ebp-5],dl
 0063BEC1    mov         dword ptr [ebp-4],eax
 0063BEC4    mov         al,byte ptr [ebp-5]
 0063BEC7    mov         edx,dword ptr [ebp-4]
 0063BECA    cmp         al,byte ptr [edx+22C];TBitBtn.IsFocused:Boolean
>0063BED0    je          0063BEE6
 0063BED2    mov         al,byte ptr [ebp-5]
 0063BED5    mov         edx,dword ptr [ebp-4]
 0063BED8    mov         byte ptr [edx+22C],al;TBitBtn.IsFocused:Boolean
 0063BEDE    mov         eax,dword ptr [ebp-4]
 0063BEE1    call        TControl.Refresh
 0063BEE6    pop         ecx
 0063BEE7    pop         ecx
 0063BEE8    pop         ebp
 0063BEE9    ret
end;*}

//0063BEEC
procedure TBitBtn.sub_0059CA90;
begin
{*
 0063BEEC    push        ebp
 0063BEED    mov         ebp,esp
 0063BEEF    add         esp,0FFFFFFF4
 0063BEF2    mov         dword ptr [ebp-4],eax
 0063BEF5    mov         eax,dword ptr [ebp-4]
 0063BEF8    mov         al,byte ptr [eax+221];TBitBtn.FKind:TBitBtnKind
 0063BEFE    sub         al,3
>0063BF00    je          0063BF2B
 0063BF02    sub         al,3
>0063BF04    jne         0063BF75
 0063BF06    mov         eax,dword ptr [ebp-4]
 0063BF09    call        005CD060
 0063BF0E    mov         dword ptr [ebp-8],eax
 0063BF11    cmp         dword ptr [ebp-8],0
>0063BF15    je          0063BF21
 0063BF17    mov         eax,dword ptr [ebp-8]
 0063BF1A    call        005D3F3C
>0063BF1F    jmp         0063BF7D
 0063BF21    mov         eax,dword ptr [ebp-4]
 0063BF24    call        TButton.sub_0059CA90
>0063BF29    jmp         0063BF7D
 0063BF2B    mov         eax,dword ptr [ebp-4]
 0063BF2E    mov         dword ptr [ebp-0C],eax
>0063BF31    jmp         0063BF3C
 0063BF33    mov         eax,dword ptr [ebp-0C]
 0063BF36    mov         eax,dword ptr [eax+30];TBitBtn.FParent:TWinControl
 0063BF39    mov         dword ptr [ebp-0C],eax
 0063BF3C    cmp         dword ptr [ebp-0C],0
>0063BF40    je          0063BF4E
 0063BF42    mov         eax,dword ptr [ebp-0C]
 0063BF45    cmp         dword ptr [eax+158],0;TWinControl.HelpContext:THelpContext
>0063BF4C    je          0063BF33
 0063BF4E    cmp         dword ptr [ebp-0C],0
>0063BF52    je          0063BF6B
 0063BF54    mov         eax,[006E9DCC];^Application:TApplication
 0063BF59    mov         eax,dword ptr [eax]
 0063BF5B    mov         edx,dword ptr [ebp-0C]
 0063BF5E    mov         edx,dword ptr [edx+158];TWinControl.HelpContext:THelpContext
 0063BF64    call        005D8A10
>0063BF69    jmp         0063BF7D
 0063BF6B    mov         eax,dword ptr [ebp-4]
 0063BF6E    call        TButton.sub_0059CA90
>0063BF73    jmp         0063BF7D
 0063BF75    mov         eax,dword ptr [ebp-4]
 0063BF78    call        TButton.sub_0059CA90
 0063BF7D    mov         esp,ebp
 0063BF7F    pop         ebp
 0063BF80    ret
*}
end;

//0063BF84
{*procedure TBitBtn.sub_0063BF84(?:?);
begin
 0063BF84    push        ebp
 0063BF85    mov         ebp,esp
 0063BF87    add         esp,0FFFFFFF4
 0063BF8A    mov         dword ptr [ebp-8],edx
 0063BF8D    mov         dword ptr [ebp-4],eax
 0063BF90    mov         eax,dword ptr [ebp-8]
 0063BF93    mov         eax,dword ptr [eax+8]
 0063BF96    mov         dword ptr [ebp-0C],eax
 0063BF99    mov         eax,dword ptr [ebp-4]
 0063BF9C    mov         eax,dword ptr [eax+48];TBitBtn.Width:Integer
 0063BF9F    mov         edx,dword ptr [ebp-0C]
 0063BFA2    mov         dword ptr [edx+0C],eax
 0063BFA5    mov         eax,dword ptr [ebp-4]
 0063BFA8    mov         eax,dword ptr [eax+4C];TBitBtn.Height:Integer
 0063BFAB    mov         edx,dword ptr [ebp-0C]
 0063BFAE    mov         dword ptr [edx+10],eax
 0063BFB1    mov         esp,ebp
 0063BFB3    pop         ebp
 0063BFB4    ret
end;*}

//0063BFB8
{*procedure TBitBtn.sub_0063BFB8(?:?);
begin
 0063BFB8    push        ebp
 0063BFB9    mov         ebp,esp
 0063BFBB    add         esp,0FFFFFFF8
 0063BFBE    mov         dword ptr [ebp-8],edx
 0063BFC1    mov         dword ptr [ebp-4],eax
 0063BFC4    mov         eax,dword ptr [ebp-8]
 0063BFC7    mov         eax,dword ptr [eax+8]
 0063BFCA    mov         edx,eax
 0063BFCC    mov         eax,dword ptr [ebp-4]
 0063BFCF    call        0063BFD8
 0063BFD4    pop         ecx
 0063BFD5    pop         ecx
 0063BFD6    pop         ebp
 0063BFD7    ret
end;*}

//0063BFD8
{*procedure sub_0063BFD8(?:TBitBtn; ?:?);
begin
 0063BFD8    push        ebp
 0063BFD9    mov         ebp,esp
 0063BFDB    add         esp,0FFFFFFC4
 0063BFDE    xor         ecx,ecx
 0063BFE0    mov         dword ptr [ebp-3C],ecx
 0063BFE3    mov         dword ptr [ebp-8],edx
 0063BFE6    mov         dword ptr [ebp-4],eax
 0063BFE9    xor         eax,eax
 0063BFEB    push        ebp
 0063BFEC    push        63C2B8
 0063BFF1    push        dword ptr fs:[eax]
 0063BFF4    mov         dword ptr fs:[eax],esp
 0063BFF7    mov         edx,dword ptr [ebp-8]
 0063BFFA    mov         edx,dword ptr [edx+18]
 0063BFFD    mov         eax,dword ptr [ebp-4]
 0063C000    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C006    call        TCanvas.SetHandle
 0063C00B    lea         edx,[ebp-20]
 0063C00E    mov         eax,dword ptr [ebp-4]
 0063C011    mov         ecx,dword ptr [eax]
 0063C013    call        dword ptr [ecx+44];TBitBtn.sub_005FC204
 0063C016    mov         eax,dword ptr [ebp-8]
 0063C019    test        byte ptr [eax+10],1
 0063C01D    setne       byte ptr [ebp-9]
 0063C021    mov         eax,dword ptr [ebp-8]
 0063C024    test        byte ptr [eax+10],10
 0063C028    setne       byte ptr [ebp-0A]
 0063C02C    mov         eax,dword ptr [ebp-4]
 0063C02F    mov         edx,dword ptr [eax]
 0063C031    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0063C034    test        al,al
>0063C036    jne         0063C03E
 0063C038    mov         byte ptr [ebp-0B],1
>0063C03C    jmp         0063C04E
 0063C03E    cmp         byte ptr [ebp-9],0
>0063C042    je          0063C04A
 0063C044    mov         byte ptr [ebp-0B],2
>0063C048    jmp         0063C04E
 0063C04A    mov         byte ptr [ebp-0B],0
 0063C04E    mov         dword ptr [ebp-10],2010
 0063C055    cmp         byte ptr [ebp-9],0
>0063C059    je          0063C062
 0063C05B    or          dword ptr [ebp-10],200
 0063C062    mov         eax,dword ptr [ebp-8]
 0063C065    test        byte ptr [eax+10],4
>0063C069    je          0063C072
 0063C06B    or          dword ptr [ebp-10],100
 0063C072    mov         eax,dword ptr [ebp-4]
 0063C075    mov         al,byte ptr [eax+22C];TBitBtn.IsFocused:Boolean
 0063C07B    or          al,byte ptr [ebp-0A]
>0063C07E    je          0063C0E8
 0063C080    mov         eax,dword ptr [ebp-4]
 0063C083    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C089    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0063C08C    mov         edx,80000006
 0063C091    call        TPen.SetColor
 0063C096    mov         eax,dword ptr [ebp-4]
 0063C099    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C09F    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0063C0A2    mov         edx,1
 0063C0A7    call        TPen.SetWidth
 0063C0AC    mov         eax,dword ptr [ebp-4]
 0063C0AF    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C0B5    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063C0B8    mov         dl,1
 0063C0BA    call        TBrush.SetStyle
 0063C0BF    mov         eax,dword ptr [ebp-18]
 0063C0C2    push        eax
 0063C0C3    mov         eax,dword ptr [ebp-14]
 0063C0C6    push        eax
 0063C0C7    mov         ecx,dword ptr [ebp-1C]
 0063C0CA    mov         edx,dword ptr [ebp-20]
 0063C0CD    mov         eax,dword ptr [ebp-4]
 0063C0D0    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C0D6    call        005C1428
 0063C0DB    push        0FF
 0063C0DD    push        0FF
 0063C0DF    lea         eax,[ebp-20]
 0063C0E2    push        eax
 0063C0E3    call        USER32.InflateRect
 0063C0E8    cmp         byte ptr [ebp-9],0
>0063C0EC    je          0063C15B
 0063C0EE    mov         eax,dword ptr [ebp-4]
 0063C0F1    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C0F7    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0063C0FA    mov         edx,80000010
 0063C0FF    call        TPen.SetColor
 0063C104    mov         eax,dword ptr [ebp-4]
 0063C107    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C10D    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0063C110    mov         edx,1
 0063C115    call        TPen.SetWidth
 0063C11A    mov         eax,dword ptr [ebp-4]
 0063C11D    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C123    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063C126    mov         edx,8000000F
 0063C12B    call        TBrush.SetColor
 0063C130    mov         eax,dword ptr [ebp-18]
 0063C133    push        eax
 0063C134    mov         eax,dword ptr [ebp-14]
 0063C137    push        eax
 0063C138    mov         ecx,dword ptr [ebp-1C]
 0063C13B    mov         edx,dword ptr [ebp-20]
 0063C13E    mov         eax,dword ptr [ebp-4]
 0063C141    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C147    call        005C1428
 0063C14C    push        0FF
 0063C14E    push        0FF
 0063C150    lea         eax,[ebp-20]
 0063C153    push        eax
 0063C154    call        USER32.InflateRect
>0063C159    jmp         0063C171
 0063C15B    mov         eax,dword ptr [ebp-10]
 0063C15E    push        eax
 0063C15F    push        4
 0063C161    lea         eax,[ebp-20]
 0063C164    push        eax
 0063C165    mov         eax,dword ptr [ebp-8]
 0063C168    mov         eax,dword ptr [eax+18]
 0063C16B    push        eax
 0063C16C    call        USER32.DrawFrameControl
 0063C171    mov         eax,dword ptr [ebp-4]
 0063C174    cmp         byte ptr [eax+22C],0;TBitBtn.IsFocused:Boolean
>0063C17B    je          0063C195
 0063C17D    lea         edx,[ebp-20]
 0063C180    mov         eax,dword ptr [ebp-4]
 0063C183    mov         ecx,dword ptr [eax]
 0063C185    call        dword ptr [ecx+44];TBitBtn.sub_005FC204
 0063C188    push        0FF
 0063C18A    push        0FF
 0063C18C    lea         eax,[ebp-20]
 0063C18F    push        eax
 0063C190    call        USER32.InflateRect
 0063C195    mov         eax,dword ptr [ebp-4]
 0063C198    mov         edx,dword ptr [eax+68];TBitBtn.FFont:TFont
 0063C19B    mov         eax,dword ptr [ebp-4]
 0063C19E    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C1A4    call        TCanvas.SetFont
 0063C1A9    cmp         byte ptr [ebp-9],0
>0063C1AD    je          0063C1BC
 0063C1AF    push        1
 0063C1B1    push        1
 0063C1B3    lea         eax,[ebp-20]
 0063C1B6    push        eax
 0063C1B7    call        USER32.OffsetRect
 0063C1BC    lea         ecx,[ebp-38]
 0063C1BF    xor         edx,edx
 0063C1C1    xor         eax,eax
 0063C1C3    call        Point
 0063C1C8    lea         eax,[ebp-38]
 0063C1CB    push        eax
 0063C1CC    lea         edx,[ebp-3C]
 0063C1CF    mov         eax,dword ptr [ebp-4]
 0063C1D2    call        TTabPage.GetCaption
 0063C1D7    mov         eax,dword ptr [ebp-3C]
 0063C1DA    push        eax
 0063C1DB    mov         eax,dword ptr [ebp-4]
 0063C1DE    mov         al,byte ptr [eax+222];TBitBtn.Layout:TButtonLayout
 0063C1E4    push        eax
 0063C1E5    mov         eax,dword ptr [ebp-4]
 0063C1E8    mov         eax,dword ptr [eax+228];TBitBtn.Margin:Integer
 0063C1EE    push        eax
 0063C1EF    mov         eax,dword ptr [ebp-4]
 0063C1F2    mov         eax,dword ptr [eax+224];TBitBtn.Spacing:Integer
 0063C1F8    push        eax
 0063C1F9    mov         al,byte ptr [ebp-0B]
 0063C1FC    push        eax
 0063C1FD    push        0
 0063C1FF    xor         edx,edx
 0063C201    mov         eax,dword ptr [ebp-4]
 0063C204    call        005F6724
 0063C209    push        eax
 0063C20A    lea         eax,[ebp-30]
 0063C20D    push        eax
 0063C20E    lea         ecx,[ebp-20]
 0063C211    mov         eax,dword ptr [ebp-4]
 0063C214    mov         edx,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C21A    mov         eax,dword ptr [ebp-4]
 0063C21D    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063C223    call        0063AC98
 0063C228    mov         eax,dword ptr [ebp-4]
 0063C22B    mov         al,byte ptr [eax+22C];TBitBtn.IsFocused:Boolean
 0063C231    and         al,byte ptr [ebp-0A]
>0063C234    je          0063C292
 0063C236    lea         edx,[ebp-20]
 0063C239    mov         eax,dword ptr [ebp-4]
 0063C23C    mov         ecx,dword ptr [eax]
 0063C23E    call        dword ptr [ecx+44];TBitBtn.sub_005FC204
 0063C241    push        0FC
 0063C243    push        0FC
 0063C245    lea         eax,[ebp-20]
 0063C248    push        eax
 0063C249    call        USER32.InflateRect
 0063C24E    mov         eax,dword ptr [ebp-4]
 0063C251    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C257    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0063C25A    mov         edx,80000006
 0063C25F    call        TPen.SetColor
 0063C264    mov         eax,dword ptr [ebp-4]
 0063C267    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C26D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063C270    mov         edx,8000000F
 0063C275    call        TBrush.SetColor
 0063C27A    lea         eax,[ebp-20]
 0063C27D    push        eax
 0063C27E    mov         eax,dword ptr [ebp-4]
 0063C281    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C287    call        TCanvas.GetHandle
 0063C28C    push        eax
 0063C28D    call        USER32.DrawFocusRect
 0063C292    xor         edx,edx
 0063C294    mov         eax,dword ptr [ebp-4]
 0063C297    mov         eax,dword ptr [eax+218];TBitBtn.FCanvas:TCanvas
 0063C29D    call        TCanvas.SetHandle
 0063C2A2    xor         eax,eax
 0063C2A4    pop         edx
 0063C2A5    pop         ecx
 0063C2A6    pop         ecx
 0063C2A7    mov         dword ptr fs:[eax],edx
 0063C2AA    push        63C2BF
 0063C2AF    lea         eax,[ebp-3C]
 0063C2B2    call        @LStrClr
 0063C2B7    ret
>0063C2B8    jmp         @HandleFinally
>0063C2BD    jmp         0063C2AF
 0063C2BF    mov         esp,ebp
 0063C2C1    pop         ebp
 0063C2C2    ret
end;*}

//0063C2C4
{*procedure TBitBtn.CMFontChanged(?:?);
begin
 0063C2C4    push        ebp
 0063C2C5    mov         ebp,esp
 0063C2C7    add         esp,0FFFFFFF8
 0063C2CA    mov         dword ptr [ebp-8],edx
 0063C2CD    mov         dword ptr [ebp-4],eax
 0063C2D0    mov         edx,dword ptr [ebp-8]
 0063C2D3    mov         eax,dword ptr [ebp-4]
 0063C2D6    call        TWinControl.CMFontChanged
 0063C2DB    mov         eax,dword ptr [ebp-4]
 0063C2DE    mov         edx,dword ptr [eax]
 0063C2E0    call        dword ptr [edx+7C];TWinControl.Invalidate
 0063C2E3    pop         ecx
 0063C2E4    pop         ecx
 0063C2E5    pop         ebp
 0063C2E6    ret
end;*}

//0063C2E8
{*procedure TBitBtn.CMEnabledChanged(?:?);
begin
 0063C2E8    push        ebp
 0063C2E9    mov         ebp,esp
 0063C2EB    add         esp,0FFFFFFF8
 0063C2EE    mov         dword ptr [ebp-8],edx
 0063C2F1    mov         dword ptr [ebp-4],eax
 0063C2F4    mov         edx,dword ptr [ebp-8]
 0063C2F7    mov         eax,dword ptr [ebp-4]
 0063C2FA    call        TWinControl.CMEnabledChanged
 0063C2FF    mov         eax,dword ptr [ebp-4]
 0063C302    mov         edx,dword ptr [eax]
 0063C304    call        dword ptr [edx+7C];TWinControl.Invalidate
 0063C307    pop         ecx
 0063C308    pop         ecx
 0063C309    pop         ebp
 0063C30A    ret
end;*}

//0063C30C
{*procedure TBitBtn.WMLButtonDblClk(?:?);
begin
 0063C30C    push        ebp
 0063C30D    mov         ebp,esp
 0063C30F    add         esp,0FFFFFFF8
 0063C312    mov         dword ptr [ebp-8],edx
 0063C315    mov         dword ptr [ebp-4],eax
 0063C318    mov         eax,dword ptr [ebp-8]
 0063C31B    mov         eax,dword ptr [eax+8]
 0063C31E    push        eax
 0063C31F    mov         ecx,dword ptr [ebp-8]
 0063C322    mov         ecx,dword ptr [ecx+4]
 0063C325    mov         edx,201
 0063C32A    mov         eax,dword ptr [ebp-4]
 0063C32D    call        005F4FA8
 0063C332    pop         ecx
 0063C333    pop         ecx
 0063C334    pop         ebp
 0063C335    ret
end;*}

//0063C338
procedure TBitBtn.sub_005F23D4;
begin
{*
 0063C338    push        ebp
 0063C339    mov         ebp,esp
 0063C33B    add         esp,0FFFFFFF8
 0063C33E    mov         dword ptr [ebp-4],eax
 0063C341    mov         eax,dword ptr [ebp-4]
 0063C344    call        TBitBtn.GetGlyph
 0063C349    mov         edx,dword ptr [eax]
 0063C34B    call        dword ptr [edx+24]
 0063C34E    mov         dword ptr [ebp-8],eax
 0063C351    mov         eax,dword ptr [ebp-8]
 0063C354    pop         ecx
 0063C355    pop         ecx
 0063C356    pop         ebp
 0063C357    ret
*}
end;

//0063C358
procedure TBitBtn.SetGlyph(Value:TBitmap);
begin
{*
 0063C358    push        ebp
 0063C359    mov         ebp,esp
 0063C35B    add         esp,0FFFFFFF8
 0063C35E    mov         dword ptr [ebp-8],edx
 0063C361    mov         dword ptr [ebp-4],eax
 0063C364    mov         edx,dword ptr [ebp-8]
 0063C367    mov         eax,dword ptr [ebp-4]
 0063C36A    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063C370    call        0063A044
 0063C375    mov         eax,dword ptr [ebp-4]
 0063C378    mov         byte ptr [eax+22D],1;TBitBtn.FModifiedGlyph:Boolean
 0063C37F    mov         eax,dword ptr [ebp-4]
 0063C382    mov         edx,dword ptr [eax]
 0063C384    call        dword ptr [edx+7C];TWinControl.Invalidate
 0063C387    pop         ecx
 0063C388    pop         ecx
 0063C389    pop         ebp
 0063C38A    ret
*}
end;

//0063C38C
{*function TBitBtn.GetGlyph:?;
begin
 0063C38C    push        ebp
 0063C38D    mov         ebp,esp
 0063C38F    add         esp,0FFFFFFF8
 0063C392    mov         dword ptr [ebp-4],eax
 0063C395    mov         eax,dword ptr [ebp-4]
 0063C398    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063C39E    mov         eax,dword ptr [eax+4]
 0063C3A1    mov         dword ptr [ebp-8],eax
 0063C3A4    mov         eax,dword ptr [ebp-8]
 0063C3A7    pop         ecx
 0063C3A8    pop         ecx
 0063C3A9    pop         ebp
 0063C3AA    ret
end;*}

//0063C3C4
function TBitBtn.IsStoredCancel(Value:Boolean):Boolean;
begin
{*
 0063C3C4    push        ebp
 0063C3C5    mov         ebp,esp
 0063C3C7    add         esp,0FFFFFFF8
 0063C3CA    mov         dword ptr [ebp-4],eax
 0063C3CD    mov         eax,dword ptr [ebp-4]
 0063C3D0    call        TBitBtn.GetKind
 0063C3D5    test        al,al
 0063C3D7    sete        byte ptr [ebp-5]
 0063C3DB    mov         al,byte ptr [ebp-5]
 0063C3DE    pop         ecx
 0063C3DF    pop         ecx
 0063C3E0    pop         ebp
 0063C3E1    ret
*}
end;

//0063C3E4
procedure TBitBtn.SetStyle(Value:TButtonStyle);
begin
{*
 0063C3E4    push        ebp
 0063C3E5    mov         ebp,esp
 0063C3E7    add         esp,0FFFFFFF8
 0063C3EA    mov         byte ptr [ebp-5],dl
 0063C3ED    mov         dword ptr [ebp-4],eax
 0063C3F0    mov         al,byte ptr [ebp-5]
 0063C3F3    mov         edx,dword ptr [ebp-4]
 0063C3F6    cmp         al,byte ptr [edx+220];TBitBtn.Style:TButtonStyle
>0063C3FC    je          0063C412
 0063C3FE    mov         al,byte ptr [ebp-5]
 0063C401    mov         edx,dword ptr [ebp-4]
 0063C404    mov         byte ptr [edx+220],al;TBitBtn.Style:TButtonStyle
 0063C40A    mov         eax,dword ptr [ebp-4]
 0063C40D    mov         edx,dword ptr [eax]
 0063C40F    call        dword ptr [edx+7C];TWinControl.Invalidate
 0063C412    pop         ecx
 0063C413    pop         ecx
 0063C414    pop         ebp
 0063C415    ret
*}
end;

//0063C418
procedure TBitBtn.SetKind(Value:TBitBtnKind);
begin
{*
 0063C418    push        ebp
 0063C419    mov         ebp,esp
 0063C41B    add         esp,0FFFFFFF0
 0063C41E    xor         ecx,ecx
 0063C420    mov         dword ptr [ebp-10],ecx
 0063C423    mov         dword ptr [ebp-0C],ecx
 0063C426    mov         byte ptr [ebp-5],dl
 0063C429    mov         dword ptr [ebp-4],eax
 0063C42C    xor         eax,eax
 0063C42E    push        ebp
 0063C42F    push        63C54D
 0063C434    push        dword ptr fs:[eax]
 0063C437    mov         dword ptr fs:[eax],esp
 0063C43A    mov         al,byte ptr [ebp-5]
 0063C43D    mov         edx,dword ptr [ebp-4]
 0063C440    cmp         al,byte ptr [edx+221];TBitBtn.FKind:TBitBtnKind
>0063C446    je          0063C52F
 0063C44C    cmp         byte ptr [ebp-5],0
>0063C450    je          0063C51B
 0063C456    mov         al,byte ptr [ebp-5]
 0063C459    sub         al,1
>0063C45B    je          0063C465
 0063C45D    sub         al,3
>0063C45F    je          0063C465
 0063C461    xor         edx,edx
>0063C463    jmp         0063C467
 0063C465    mov         dl,1
 0063C467    mov         eax,dword ptr [ebp-4]
 0063C46A    call        TButton.SetDefault
 0063C46F    mov         al,byte ptr [ebp-5]
 0063C472    sub         al,2
>0063C474    je          0063C47E
 0063C476    sub         al,3
>0063C478    je          0063C47E
 0063C47A    xor         eax,eax
>0063C47C    jmp         0063C480
 0063C47E    mov         al,1
 0063C480    mov         edx,dword ptr [ebp-4]
 0063C483    mov         byte ptr [edx+211],al;TBitBtn.Cancel:Boolean
 0063C489    mov         eax,dword ptr [ebp-4]
 0063C48C    test        byte ptr [eax+1C],1;TBitBtn.FComponentState:TComponentState
>0063C490    je          0063C4A3
 0063C492    lea         edx,[ebp-0C]
 0063C495    mov         eax,dword ptr [ebp-4]
 0063C498    call        TTabPage.GetCaption
 0063C49D    cmp         dword ptr [ebp-0C],0
>0063C4A1    je          0063C4AC
 0063C4A3    mov         eax,dword ptr [ebp-4]
 0063C4A6    test        byte ptr [eax+1C],1;TBitBtn.FComponentState:TComponentState
>0063C4AA    jne         0063C4DA
 0063C4AC    xor         eax,eax
 0063C4AE    mov         al,byte ptr [ebp-5]
 0063C4B1    cmp         dword ptr [eax*4+6E4768],0
>0063C4B9    je          0063C4DA
 0063C4BB    lea         edx,[ebp-10]
 0063C4BE    xor         eax,eax
 0063C4C0    mov         al,byte ptr [ebp-5]
 0063C4C3    mov         eax,dword ptr [eax*4+6E4768]
 0063C4CA    call        LoadResString
 0063C4CF    mov         edx,dword ptr [ebp-10]
 0063C4D2    mov         eax,dword ptr [ebp-4]
 0063C4D5    call        TTabPage.SetCaption
 0063C4DA    xor         eax,eax
 0063C4DC    mov         al,byte ptr [ebp-5]
 0063C4DF    mov         eax,dword ptr [eax*4+6E4794]
 0063C4E6    mov         edx,dword ptr [ebp-4]
 0063C4E9    mov         dword ptr [edx+214],eax;TBitBtn.ModalResult:TModalResult
 0063C4EF    mov         al,byte ptr [ebp-5]
 0063C4F2    call        00639974
 0063C4F7    mov         edx,eax
 0063C4F9    mov         eax,dword ptr [ebp-4]
 0063C4FC    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063C502    call        0063A044
 0063C507    mov         dl,2
 0063C509    mov         eax,dword ptr [ebp-4]
 0063C50C    call        TBitBtn.SetNumGlyphs
 0063C511    mov         eax,dword ptr [ebp-4]
 0063C514    mov         byte ptr [eax+22D],0;TBitBtn.FModifiedGlyph:Boolean
 0063C51B    mov         al,byte ptr [ebp-5]
 0063C51E    mov         edx,dword ptr [ebp-4]
 0063C521    mov         byte ptr [edx+221],al;TBitBtn.FKind:TBitBtnKind
 0063C527    mov         eax,dword ptr [ebp-4]
 0063C52A    mov         edx,dword ptr [eax]
 0063C52C    call        dword ptr [edx+7C];TWinControl.Invalidate
 0063C52F    xor         eax,eax
 0063C531    pop         edx
 0063C532    pop         ecx
 0063C533    pop         ecx
 0063C534    mov         dword ptr fs:[eax],edx
 0063C537    push        63C554
 0063C53C    lea         eax,[ebp-10]
 0063C53F    call        @LStrClr
 0063C544    lea         eax,[ebp-0C]
 0063C547    call        @LStrClr
 0063C54C    ret
>0063C54D    jmp         @HandleFinally
>0063C552    jmp         0063C53C
 0063C554    mov         esp,ebp
 0063C556    pop         ebp
 0063C557    ret
*}
end;

//0063C558
function TBitBtn.IsStoredCaption(Value:TCaption):Boolean;
begin
{*
 0063C558    push        ebp
 0063C559    mov         ebp,esp
 0063C55B    add         esp,0FFFFFFF0
 0063C55E    xor         edx,edx
 0063C560    mov         dword ptr [ebp-0C],edx
 0063C563    mov         dword ptr [ebp-10],edx
 0063C566    mov         dword ptr [ebp-4],eax
 0063C569    xor         eax,eax
 0063C56B    push        ebp
 0063C56C    push        63C5CC
 0063C571    push        dword ptr fs:[eax]
 0063C574    mov         dword ptr fs:[eax],esp
 0063C577    lea         edx,[ebp-0C]
 0063C57A    mov         eax,dword ptr [ebp-4]
 0063C57D    movzx       eax,byte ptr [eax+221];TBitBtn.FKind:TBitBtnKind
 0063C584    mov         eax,dword ptr [eax*4+6E4768]
 0063C58B    call        LoadResString
 0063C590    mov         eax,dword ptr [ebp-0C]
 0063C593    push        eax
 0063C594    lea         edx,[ebp-10]
 0063C597    mov         eax,dword ptr [ebp-4]
 0063C59A    call        TTabPage.GetCaption
 0063C59F    mov         eax,dword ptr [ebp-10]
 0063C5A2    pop         edx
 0063C5A3    call        00657738
 0063C5A8    test        eax,eax
 0063C5AA    setne       byte ptr [ebp-5]
 0063C5AE    xor         eax,eax
 0063C5B0    pop         edx
 0063C5B1    pop         ecx
 0063C5B2    pop         ecx
 0063C5B3    mov         dword ptr fs:[eax],edx
 0063C5B6    push        63C5D3
 0063C5BB    lea         eax,[ebp-10]
 0063C5BE    call        @LStrClr
 0063C5C3    lea         eax,[ebp-0C]
 0063C5C6    call        @LStrClr
 0063C5CB    ret
>0063C5CC    jmp         @HandleFinally
>0063C5D1    jmp         0063C5BB
 0063C5D3    mov         al,byte ptr [ebp-5]
 0063C5D6    mov         esp,ebp
 0063C5D8    pop         ebp
 0063C5D9    ret
*}
end;

//0063C5DC
{*function TBitBtn.GetKind:?;
begin
 0063C5DC    push        ebp
 0063C5DD    mov         ebp,esp
 0063C5DF    add         esp,0FFFFFFF8
 0063C5E2    mov         dword ptr [ebp-4],eax
 0063C5E5    mov         eax,dword ptr [ebp-4]
 0063C5E8    cmp         byte ptr [eax+221],0;TBitBtn.FKind:TBitBtnKind
>0063C5EF    je          0063C667
 0063C5F1    mov         eax,dword ptr [ebp-4]
 0063C5F4    mov         al,byte ptr [eax+221];TBitBtn.FKind:TBitBtnKind
 0063C5FA    sub         al,1
>0063C5FC    je          0063C606
 0063C5FE    sub         al,3
>0063C600    je          0063C606
 0063C602    xor         eax,eax
>0063C604    jmp         0063C608
 0063C606    mov         al,1
 0063C608    mov         edx,dword ptr [ebp-4]
 0063C60B    xor         al,byte ptr [edx+210];TBitBtn.Default:Boolean
>0063C611    jne         0063C65D
 0063C613    mov         eax,dword ptr [ebp-4]
 0063C616    mov         al,byte ptr [eax+221];TBitBtn.FKind:TBitBtnKind
 0063C61C    sub         al,2
>0063C61E    je          0063C628
 0063C620    sub         al,3
>0063C622    je          0063C628
 0063C624    xor         eax,eax
>0063C626    jmp         0063C62A
 0063C628    mov         al,1
 0063C62A    mov         edx,dword ptr [ebp-4]
 0063C62D    xor         al,byte ptr [edx+211];TBitBtn.Cancel:Boolean
>0063C633    jne         0063C65D
 0063C635    mov         eax,dword ptr [ebp-4]
 0063C638    movzx       eax,byte ptr [eax+221];TBitBtn.FKind:TBitBtnKind
 0063C63F    mov         eax,dword ptr [eax*4+6E4794]
 0063C646    mov         edx,dword ptr [ebp-4]
 0063C649    cmp         eax,dword ptr [edx+214];TBitBtn.ModalResult:TModalResult
>0063C64F    jne         0063C65D
 0063C651    mov         eax,dword ptr [ebp-4]
 0063C654    cmp         byte ptr [eax+22D],0;TBitBtn.FModifiedGlyph:Boolean
>0063C65B    je          0063C667
 0063C65D    mov         eax,dword ptr [ebp-4]
 0063C660    mov         byte ptr [eax+221],0;TBitBtn.FKind:TBitBtnKind
 0063C667    mov         eax,dword ptr [ebp-4]
 0063C66A    mov         al,byte ptr [eax+221];TBitBtn.FKind:TBitBtnKind
 0063C670    mov         byte ptr [ebp-5],al
 0063C673    mov         al,byte ptr [ebp-5]
 0063C676    pop         ecx
 0063C677    pop         ecx
 0063C678    pop         ebp
 0063C679    ret
end;*}

//0063C67C
procedure TBitBtn.SetLayout(Value:TButtonLayout);
begin
{*
 0063C67C    push        ebp
 0063C67D    mov         ebp,esp
 0063C67F    add         esp,0FFFFFFF8
 0063C682    mov         byte ptr [ebp-5],dl
 0063C685    mov         dword ptr [ebp-4],eax
 0063C688    mov         eax,dword ptr [ebp-4]
 0063C68B    mov         al,byte ptr [eax+222];TBitBtn.Layout:TButtonLayout
 0063C691    cmp         al,byte ptr [ebp-5]
>0063C694    je          0063C6AA
 0063C696    mov         al,byte ptr [ebp-5]
 0063C699    mov         edx,dword ptr [ebp-4]
 0063C69C    mov         byte ptr [edx+222],al;TBitBtn.Layout:TButtonLayout
 0063C6A2    mov         eax,dword ptr [ebp-4]
 0063C6A5    mov         edx,dword ptr [eax]
 0063C6A7    call        dword ptr [edx+7C];TWinControl.Invalidate
 0063C6AA    pop         ecx
 0063C6AB    pop         ecx
 0063C6AC    pop         ebp
 0063C6AD    ret
*}
end;

//0063C6B0
{*function TBitBtn.GetNumGlyphs:?;
begin
 0063C6B0    push        ebp
 0063C6B1    mov         ebp,esp
 0063C6B3    add         esp,0FFFFFFF8
 0063C6B6    mov         dword ptr [ebp-4],eax
 0063C6B9    mov         eax,dword ptr [ebp-4]
 0063C6BC    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063C6C2    mov         al,byte ptr [eax+20]
 0063C6C5    mov         byte ptr [ebp-5],al
 0063C6C8    mov         al,byte ptr [ebp-5]
 0063C6CB    pop         ecx
 0063C6CC    pop         ecx
 0063C6CD    pop         ebp
 0063C6CE    ret
end;*}

//0063C6D0
procedure TBitBtn.SetNumGlyphs(Value:TNumGlyphs);
begin
{*
 0063C6D0    push        ebp
 0063C6D1    mov         ebp,esp
 0063C6D3    add         esp,0FFFFFFF8
 0063C6D6    mov         byte ptr [ebp-5],dl
 0063C6D9    mov         dword ptr [ebp-4],eax
 0063C6DC    cmp         byte ptr [ebp-5],0
>0063C6E0    jae         0063C6E8
 0063C6E2    mov         byte ptr [ebp-5],1
>0063C6E6    jmp         0063C6F2
 0063C6E8    cmp         byte ptr [ebp-5],4
>0063C6EC    jbe         0063C6F2
 0063C6EE    mov         byte ptr [ebp-5],4
 0063C6F2    mov         eax,dword ptr [ebp-4]
 0063C6F5    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063C6FB    mov         al,byte ptr [eax+20]
 0063C6FE    cmp         al,byte ptr [ebp-5]
>0063C701    je          0063C71C
 0063C703    mov         dl,byte ptr [ebp-5]
 0063C706    mov         eax,dword ptr [ebp-4]
 0063C709    mov         eax,dword ptr [eax+21C];TBitBtn.FGlyph:Pointer
 0063C70F    call        0063A0DC
 0063C714    mov         eax,dword ptr [ebp-4]
 0063C717    mov         edx,dword ptr [eax]
 0063C719    call        dword ptr [edx+7C];TWinControl.Invalidate
 0063C71C    pop         ecx
 0063C71D    pop         ecx
 0063C71E    pop         ebp
 0063C71F    ret
*}
end;

//0063C720
procedure TBitBtn.SetSpacing(Value:Integer);
begin
{*
 0063C720    push        ebp
 0063C721    mov         ebp,esp
 0063C723    add         esp,0FFFFFFF8
 0063C726    mov         dword ptr [ebp-8],edx
 0063C729    mov         dword ptr [ebp-4],eax
 0063C72C    mov         eax,dword ptr [ebp-4]
 0063C72F    mov         eax,dword ptr [eax+224];TBitBtn.Spacing:Integer
 0063C735    cmp         eax,dword ptr [ebp-8]
>0063C738    je          0063C74E
 0063C73A    mov         eax,dword ptr [ebp-8]
 0063C73D    mov         edx,dword ptr [ebp-4]
 0063C740    mov         dword ptr [edx+224],eax;TBitBtn.Spacing:Integer
 0063C746    mov         eax,dword ptr [ebp-4]
 0063C749    mov         edx,dword ptr [eax]
 0063C74B    call        dword ptr [edx+7C];TWinControl.Invalidate
 0063C74E    pop         ecx
 0063C74F    pop         ecx
 0063C750    pop         ebp
 0063C751    ret
*}
end;

//0063C754
procedure TBitBtn.SetMargin(Value:Integer);
begin
{*
 0063C754    push        ebp
 0063C755    mov         ebp,esp
 0063C757    add         esp,0FFFFFFF8
 0063C75A    mov         dword ptr [ebp-8],edx
 0063C75D    mov         dword ptr [ebp-4],eax
 0063C760    mov         eax,dword ptr [ebp-8]
 0063C763    mov         edx,dword ptr [ebp-4]
 0063C766    cmp         eax,dword ptr [edx+228];TBitBtn.Margin:Integer
>0063C76C    je          0063C788
 0063C76E    cmp         dword ptr [ebp-8],0FFFFFFFF
>0063C772    jl          0063C788
 0063C774    mov         eax,dword ptr [ebp-8]
 0063C777    mov         edx,dword ptr [ebp-4]
 0063C77A    mov         dword ptr [edx+228],eax;TBitBtn.Margin:Integer
 0063C780    mov         eax,dword ptr [ebp-4]
 0063C783    mov         edx,dword ptr [eax]
 0063C785    call        dword ptr [edx+7C];TWinControl.Invalidate
 0063C788    pop         ecx
 0063C789    pop         ecx
 0063C78A    pop         ebp
 0063C78B    ret
*}
end;

//0063C78C
{*procedure sub_0063C78C(?:?; ?:?; ?:?);
begin
 0063C78C    push        ebp
 0063C78D    mov         ebp,esp
 0063C78F    add         esp,0FFFFFFE4
 0063C792    mov         dword ptr [ebp-8],edx
 0063C795    mov         dword ptr [ebp-4],eax
 0063C798    mov         eax,dword ptr [ebp+8]
 0063C79B    mov         eax,dword ptr [eax-4]
 0063C79E    call        TBitBtn.GetGlyph
 0063C7A3    mov         dword ptr [ebp-0C],eax
 0063C7A6    mov         eax,dword ptr [ebp-4]
 0063C7A9    mov         edx,dword ptr [eax+34]
 0063C7AC    mov         eax,dword ptr [ebp-0C]
 0063C7AF    mov         ecx,dword ptr [eax]
 0063C7B1    call        dword ptr [ecx+40]
 0063C7B4    mov         eax,dword ptr [ebp-4]
 0063C7B7    mov         edx,dword ptr [eax+30]
 0063C7BA    mov         eax,dword ptr [ebp-0C]
 0063C7BD    mov         ecx,dword ptr [eax]
 0063C7BF    call        dword ptr [ecx+34]
 0063C7C2    mov         eax,dword ptr [ebp-0C]
 0063C7C5    call        TBitmap.GetCanvas
 0063C7CA    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0063C7CD    mov         edx,0FF00FF
 0063C7D2    call        TBrush.SetColor
 0063C7D7    mov         eax,dword ptr [ebp-0C]
 0063C7DA    mov         edx,dword ptr [eax]
 0063C7DC    call        dword ptr [edx+20]
 0063C7DF    push        eax
 0063C7E0    lea         eax,[ebp-1C]
 0063C7E3    push        eax
 0063C7E4    mov         eax,dword ptr [ebp-0C]
 0063C7E7    mov         edx,dword ptr [eax]
 0063C7E9    call        dword ptr [edx+2C]
 0063C7EC    mov         ecx,eax
 0063C7EE    xor         edx,edx
 0063C7F0    xor         eax,eax
 0063C7F2    call        Rect
 0063C7F7    lea         eax,[ebp-1C]
 0063C7FA    push        eax
 0063C7FB    mov         eax,dword ptr [ebp-0C]
 0063C7FE    call        TBitmap.GetCanvas
 0063C803    pop         edx
 0063C804    call        TCanvas.FillRect
 0063C809    push        0
 0063C80B    mov         eax,dword ptr [ebp-8]
 0063C80E    push        eax
 0063C80F    push        1
 0063C811    mov         eax,dword ptr [ebp-0C]
 0063C814    call        TBitmap.GetCanvas
 0063C819    mov         edx,eax
 0063C81B    xor         ecx,ecx
 0063C81D    mov         eax,dword ptr [ebp-4]
 0063C820    call        0058C1C8
 0063C825    mov         esp,ebp
 0063C827    pop         ebp
 0063C828    ret
end;*}

//0063C82C
{*procedure TBitBtn.sub_0059C8B8(?:?; ?:?);
begin
 0063C82C    push        ebp
 0063C82D    mov         ebp,esp
 0063C82F    add         esp,0FFFFFFF4
 0063C832    mov         byte ptr [ebp-9],cl
 0063C835    mov         dword ptr [ebp-8],edx
 0063C838    mov         dword ptr [ebp-4],eax
 0063C83B    mov         cl,byte ptr [ebp-9]
 0063C83E    mov         edx,dword ptr [ebp-8]
 0063C841    mov         eax,dword ptr [ebp-4]
 0063C844    call        TButtonControl.sub_0059C8B8
 0063C849    mov         eax,dword ptr [ebp-8]
 0063C84C    mov         edx,dword ptr ds:[58D604];TCustomAction
 0063C852    call        @IsClass
 0063C857    test        al,al
>0063C859    je          0063C8BF
 0063C85B    mov         eax,dword ptr [ebp-4]
 0063C85E    call        TBitBtn.GetGlyph
 0063C863    mov         edx,dword ptr [eax]
 0063C865    call        dword ptr [edx+1C]
 0063C868    test        al,al
>0063C86A    je          0063C8BF
 0063C86C    mov         eax,dword ptr [ebp-8]
 0063C86F    cmp         dword ptr [eax+5C],0
>0063C873    je          0063C8BF
 0063C875    mov         eax,dword ptr [ebp-8]
 0063C878    mov         eax,dword ptr [eax+5C]
 0063C87B    cmp         dword ptr [eax+38],0
>0063C87F    je          0063C8BF
 0063C881    mov         eax,dword ptr [ebp-8]
 0063C884    cmp         dword ptr [eax+80],0
>0063C88B    jl          0063C8BF
 0063C88D    mov         eax,dword ptr [ebp-8]
 0063C890    mov         eax,dword ptr [eax+5C]
 0063C893    mov         eax,dword ptr [eax+38]
 0063C896    call        0058BBF4
 0063C89B    mov         edx,dword ptr [ebp-8]
 0063C89E    cmp         eax,dword ptr [edx+80]
>0063C8A4    jle         0063C8BF
 0063C8A6    push        ebp
 0063C8A7    mov         eax,dword ptr [ebp-8]
 0063C8AA    mov         edx,dword ptr [eax+80]
 0063C8B0    mov         eax,dword ptr [ebp-8]
 0063C8B3    mov         eax,dword ptr [eax+5C]
 0063C8B6    mov         eax,dword ptr [eax+38]
 0063C8B9    call        0063C78C
 0063C8BE    pop         ecx
 0063C8BF    mov         esp,ebp
 0063C8C1    pop         ebp
 0063C8C2    ret
end;*}

//0063C8C4
procedure DestroyLocals;
begin
{*
 0063C8C4    push        ebp
 0063C8C5    mov         ebp,esp
 0063C8C7    push        ecx
 0063C8C8    mov         byte ptr [ebp-1],0
 0063C8CC    xor         eax,eax
 0063C8CE    mov         al,byte ptr [ebp-1]
 0063C8D1    mov         eax,dword ptr [eax*4+6ECEA4]
 0063C8D8    call        TObject.Free
 0063C8DD    inc         byte ptr [ebp-1]
 0063C8E0    cmp         byte ptr [ebp-1],0B
>0063C8E4    jne         0063C8CC
 0063C8E6    pop         ecx
 0063C8E7    pop         ebp
 0063C8E8    ret
*}
end;

//0063C8EC
procedure _NF__346;
begin
{*
 0063C8EC    or          al,byte ptr [eax]
 0063C8EE    add         byte ptr [eax],al
 0063C8F0    nop
 0063C8F1    inc         edi
 0063C8F2    outs        dl,byte ptr [esi]
 0063C8F3    add         byte ptr [esi+ebx*4+6E],ah
 0063C8FA    add         byte ptr [eax],al
 0063C8FC    mov         word ptr [edi+6E],es
 0063C8FF    add         byte ptr [eax+6E9E],bl
 0063C905    add         byte ptr [eax],al
 0063C907    add         byte ptr [eax-63FF91B9],cl
 0063C90D    sahf
 0063C90E    outs        dl,byte ptr [esi]
 0063C90F    add         byte ptr [eax],al
 0063C911    add         byte ptr [eax],al
 0063C913    add         byte ptr [edi+eax*2-615FFF92],al
 0063C91A    outs        dl,byte ptr [esi]
 0063C91B    add         byte ptr [eax],al
 0063C91D    add         byte ptr [eax],al
 0063C91F    add         byte ptr [eax-6BFF91B9],al
 0063C925    sahf
 0063C926    outs        dl,byte ptr [esi]
 0063C927    add         byte ptr [eax],al
 0063C929    add         byte ptr [eax],al
 0063C92B    add         byte ptr [edi+eax*2+6E],bh
 0063C92F    add         byte ptr [esi+ebx*4+6E],cl
 0063C936    add         byte ptr [eax],al
>0063C938    js          0063C981
 0063C93A    outs        dl,byte ptr [esi]
 0063C93B    add         byte ptr [eax+6E9E],cl
 0063C941    add         byte ptr [eax],al
 0063C943    add         byte ptr [edi+eax*2+6E],dh
 0063C947    add         byte ptr [eax+6E9E],dl
 0063C94D    add         byte ptr [eax],al
 0063C94F    add         byte ptr [eax+47],dh
 0063C952    outs        dl,byte ptr [esi]
 0063C953    add         byte ptr [esi+ebx*4+6E],al
 0063C95A    add         byte ptr [eax],al
 0063C95C    ins         byte ptr [edi],dl
 0063C95D    inc         edi
 0063C95E    outs        dl,byte ptr [esi]
 0063C95F    add         byte ptr [eax+6E9E],al
 0063C965    add         byte ptr [eax],al
 0063C967    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

//0063C968
procedure Finalization;
begin
{*
 0063C968    push        ebp
 0063C969    mov         ebp,esp
 0063C96B    xor         eax,eax
 0063C96D    push        ebp
 0063C96E    push        63C994
 0063C973    push        dword ptr fs:[eax]
 0063C976    mov         dword ptr fs:[eax],esp
 0063C979    inc         dword ptr ds:[6ECEA0]
>0063C97F    jne         0063C986
 0063C981    call        DestroyLocals
 0063C986    xor         eax,eax
 0063C988    pop         edx
 0063C989    pop         ecx
 0063C98A    pop         ecx
 0063C98B    mov         dword ptr fs:[eax],edx
 0063C98E    push        63C99B
 0063C993    ret
>0063C994    jmp         @HandleFinally
>0063C999    jmp         0063C993
 0063C99B    pop         ebp
 0063C99C    ret
*}
end;

end.