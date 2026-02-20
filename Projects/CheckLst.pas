//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit CheckLst;

interface

uses
  SysUtils, Classes;

type
  TCheckListBox = class(TCustomListBox)
  public
    AllowGrayed:Boolean;//f280
    Flat:Boolean;//f281
    FStandardItemHeight:Integer;//f284
    OnClickCheck:TNotifyEvent;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    FSaveStates:TList;//f290
    HeaderColor:TColor;//f294
    HeaderBackgroundColor:TColor;//f298
    destructor Destroy; virtual;//0056FD0C
    constructor Create(AOwner:TComponent); virtual;//v2C//0056FCA0
    //procedure v98(?:?); virtual;//v98//0056FE20
    procedure CreateWnd; virtual;//vA0//0056FD4C
    procedure DestroyWnd; virtual;//vB0//0056FD8C
    //procedure vF4(?:?; ?:?; ?:?); virtual;//vF4//0056FF04
    //procedure WMDestroy(?:?); message WM_DESTROY;//00570918
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//0056FE68
    //procedure sub_005700C0(?:?); dynamic;//005700C0
    procedure sub_00570624; dynamic;//00570624
    //procedure sub_005708A8(?:?); dynamic;//005708A8
    procedure sub_0057084C; dynamic;//0057084C
    //procedure sub_005707C8(?:?; ?:TCheckListBoxDataWrapper); dynamic;//005707C8
    //procedure sub_00570650(?:?); dynamic;//00570650
    //procedure sub_00570750(?:?; ?:?); dynamic;//00570750
    //procedure sub_0057072C(?:?); dynamic;//0057072C
    //procedure sub_0057046C(?:?); dynamic;//0057046C
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005704A4
    procedure SetFlat(Value:Boolean);//005708E4
    procedure SetHeaderBackgroundColor(Value:TColor);//005709A8
    procedure SetHeaderColor(Value:TColor);//005709DC
  end;
  TCheckListBoxDataWrapper = class(TObject)
  public
    FData:Longint;//f4
    FState:TCheckBoxState;//f8
    FDisabled:Boolean;//f9
    FHeader:Boolean;//fA
  end;
    procedure sub_0056F060;//0056F060
    procedure GetCheckSize;//0056FBA8
    //function sub_0056FC2C(?:?; ?:?):?;//0056FC2C
    //function sub_0056FC54(?:Pointer):?;//0056FC54
    //function sub_0056FC70(?:Pointer):?;//0056FC70
    //function sub_0056FC8C(?:TCheckListBoxDataWrapper):?;//0056FC8C
    constructor Create(AOwner:TComponent);//0056FCA0
    destructor Destroy;//0056FD0C
    procedure CreateWnd;//0056FD4C
    procedure DestroyWnd;//0056FD8C
    //procedure sub_0056FE20(?:?);//0056FE20
    //function sub_0056FE4C(?:TCheckListBox):?;//0056FE4C
    //procedure CMFontChanged(?:?);//0056FE68
    procedure sub_0056FE8C(?:TCheckListBox);//0056FE8C
    //procedure sub_0056FF04(?:?; ?:?; ?:?);//0056FF04
    //procedure sub_005700C0(?:?);//005700C0
    //procedure sub_00570138(?:TCheckListBox; ?:?; ?:?; ?:?);//00570138
    //procedure sub_0057031C(?:TCheckListBox; ?:?; ?:?);//0057031C
    //procedure sub_0057035C(?:TCheckListBox; ?:?);//0057035C
    //function sub_005703EC(?:TCheckListBox; ?:?):?;//005703EC
    //function sub_00570428(?:TCheckListBox; ?:?):?;//00570428
    //procedure sub_0057046C(?:?);//0057046C
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005704A4
    //procedure sub_00570590(?:TCheckListBox; ?:?);//00570590
    procedure sub_00570624;//00570624
    //procedure sub_00570650(?:?);//00570650
    //function sub_00570688(?:TCheckListBox; ?:?):?;//00570688
    //function sub_005706C0(?:TCheckListBox; ?:?):?;//005706C0
    //procedure sub_0057072C(?:?);//0057072C
    //procedure sub_00570750(?:?; ?:?);//00570750
    //function sub_00570774(?:TCheckListBox; ?:?):?;//00570774
    //function sub_005707A4(?:TCheckListBox; ?:?):?;//005707A4
    //procedure sub_005707C8(?:?; ?:TCheckListBoxDataWrapper);//005707C8
    procedure sub_0057084C;//0057084C
    //procedure sub_005708A8(?:?);//005708A8
    //procedure WMDestroy(?:?);//00570918
    //function sub_0057096C(?:TCheckListBox; ?:?):?;//0057096C
    procedure Finalization;//00570A10

implementation

//0056F060
procedure sub_0056F060;
begin
{*
 0056F060    sub         dword ptr ds:[6ECC98],1
 0056F067    ret
*}
end;

//0056FBA8
procedure GetCheckSize;
begin
{*
 0056FBA8    push        ebp
 0056FBA9    mov         ebp,esp
 0056FBAB    push        ecx
 0056FBAC    mov         dl,1
 0056FBAE    mov         eax,[005BEDD4];TBitmap
 0056FBB3    call        TBitmap.Create
 0056FBB8    mov         dword ptr [ebp-4],eax
 0056FBBB    xor         eax,eax
 0056FBBD    push        ebp
 0056FBBE    push        56FC21
 0056FBC3    push        dword ptr fs:[eax]
 0056FBC6    mov         dword ptr fs:[eax],esp
 0056FBC9    push        7FF7
 0056FBCE    push        0
 0056FBD0    call        USER32.LoadBitmapA
 0056FBD5    mov         edx,eax
 0056FBD7    mov         eax,dword ptr [ebp-4]
 0056FBDA    call        TBitmap.SetHandle
 0056FBDF    mov         eax,dword ptr [ebp-4]
 0056FBE2    mov         edx,dword ptr [eax]
 0056FBE4    call        dword ptr [edx+2C]
 0056FBE7    test        eax,eax
>0056FBE9    jns         0056FBEE
 0056FBEB    add         eax,3
 0056FBEE    sar         eax,2
 0056FBF1    mov         [006ECCA0],eax;FCheckWidth:Integer
 0056FBF6    mov         eax,dword ptr [ebp-4]
 0056FBF9    mov         edx,dword ptr [eax]
 0056FBFB    call        dword ptr [edx+20]
 0056FBFE    mov         ecx,3
 0056FC03    cdq
 0056FC04    idiv        eax,ecx
 0056FC06    mov         [006ECCA4],eax;FCheckHeight:Integer
 0056FC0B    xor         eax,eax
 0056FC0D    pop         edx
 0056FC0E    pop         ecx
 0056FC0F    pop         ecx
 0056FC10    mov         dword ptr fs:[eax],edx
 0056FC13    push        56FC28
 0056FC18    mov         eax,dword ptr [ebp-4]
 0056FC1B    call        TObject.Free
 0056FC20    ret
>0056FC21    jmp         @HandleFinally
>0056FC26    jmp         0056FC18
 0056FC28    pop         ecx
 0056FC29    pop         ebp
 0056FC2A    ret
*}
end;

//0056FC2C
{*function sub_0056FC2C(?:?; ?:?):?;
begin
 0056FC2C    push        ebp
 0056FC2D    mov         ebp,esp
 0056FC2F    add         esp,0FFFFFFF8
 0056FC32    mov         byte ptr [ebp-2],dl
 0056FC35    mov         byte ptr [ebp-1],al
 0056FC38    xor         eax,eax
 0056FC3A    mov         al,byte ptr [ebp-1]
 0056FC3D    shl         eax,10
 0056FC40    xor         edx,edx
 0056FC42    mov         dl,byte ptr [ebp-2]
 0056FC45    or          eax,edx
 0056FC47    mov         dword ptr [ebp-8],eax
 0056FC4A    mov         eax,dword ptr [ebp-8]
 0056FC4D    pop         ecx
 0056FC4E    pop         ecx
 0056FC4F    pop         ebp
 0056FC50    ret
end;*}

//0056FC54
{*function sub_0056FC54(?:Pointer):?;
begin
 0056FC54    push        ebp
 0056FC55    mov         ebp,esp
 0056FC57    add         esp,0FFFFFFF8
 0056FC5A    mov         dword ptr [ebp-4],eax
 0056FC5D    mov         eax,dword ptr [ebp-4]
 0056FC60    shr         eax,10
 0056FC63    mov         byte ptr [ebp-5],al
 0056FC66    mov         al,byte ptr [ebp-5]
 0056FC69    pop         ecx
 0056FC6A    pop         ecx
 0056FC6B    pop         ebp
 0056FC6C    ret
end;*}

//0056FC70
{*function sub_0056FC70(?:Pointer):?;
begin
 0056FC70    push        ebp
 0056FC71    mov         ebp,esp
 0056FC73    add         esp,0FFFFFFF8
 0056FC76    mov         dword ptr [ebp-4],eax
 0056FC79    mov         eax,dword ptr [ebp-4]
 0056FC7C    and         eax,0FF
 0056FC81    mov         byte ptr [ebp-5],al
 0056FC84    mov         al,byte ptr [ebp-5]
 0056FC87    pop         ecx
 0056FC88    pop         ecx
 0056FC89    pop         ebp
 0056FC8A    ret
end;*}

//0056FC8C
{*function sub_0056FC8C(?:TCheckListBoxDataWrapper):?;
begin
 0056FC8C    push        ebp
 0056FC8D    mov         ebp,esp
 0056FC8F    add         esp,0FFFFFFF8
 0056FC92    mov         dword ptr [ebp-4],eax
 0056FC95    mov         byte ptr [ebp-5],0
 0056FC99    mov         al,byte ptr [ebp-5]
 0056FC9C    pop         ecx
 0056FC9D    pop         ecx
 0056FC9E    pop         ebp
 0056FC9F    ret
end;*}

//0056FCA0
constructor TCheckListBox.Create(AOwner:TComponent);
begin
{*
 0056FCA0    push        ebp
 0056FCA1    mov         ebp,esp
 0056FCA3    add         esp,0FFFFFFF4
 0056FCA6    test        dl,dl
>0056FCA8    je          0056FCB2
 0056FCAA    add         esp,0FFFFFFF0
 0056FCAD    call        @ClassCreate
 0056FCB2    mov         dword ptr [ebp-0C],ecx
 0056FCB5    mov         byte ptr [ebp-5],dl
 0056FCB8    mov         dword ptr [ebp-4],eax
 0056FCBB    mov         ecx,dword ptr [ebp-0C]
 0056FCBE    xor         edx,edx
 0056FCC0    mov         eax,dword ptr [ebp-4]
 0056FCC3    call        TCustomListBox.Create
 0056FCC8    mov         eax,dword ptr [ebp-4]
 0056FCCB    mov         byte ptr [eax+281],1;TCheckListBox.Flat:Boolean
 0056FCD2    mov         eax,dword ptr [ebp-4]
 0056FCD5    mov         dword ptr [eax+294],80000017;TCheckListBox.HeaderColor:TColor
 0056FCDF    mov         eax,dword ptr [ebp-4]
 0056FCE2    mov         dword ptr [eax+298],80000018;TCheckListBox.HeaderBackgroundColor:TColor
 0056FCEC    mov         eax,dword ptr [ebp-4]
 0056FCEF    cmp         byte ptr [ebp-5],0
>0056FCF3    je          0056FD04
 0056FCF5    call        @AfterConstruction
 0056FCFA    pop         dword ptr fs:[0]
 0056FD01    add         esp,0C
 0056FD04    mov         eax,dword ptr [ebp-4]
 0056FD07    mov         esp,ebp
 0056FD09    pop         ebp
 0056FD0A    ret
*}
end;

//0056FD0C
destructor TCheckListBox.Destroy;
begin
{*
 0056FD0C    push        ebp
 0056FD0D    mov         ebp,esp
 0056FD0F    add         esp,0FFFFFFF8
 0056FD12    call        @BeforeDestruction
 0056FD17    mov         byte ptr [ebp-5],dl
 0056FD1A    mov         dword ptr [ebp-4],eax
 0056FD1D    mov         eax,dword ptr [ebp-4]
 0056FD20    mov         eax,dword ptr [eax+290];TCheckListBox.FSaveStates:TList
 0056FD26    call        TObject.Free
 0056FD2B    mov         dl,byte ptr [ebp-5]
 0056FD2E    and         dl,0FC
 0056FD31    mov         eax,dword ptr [ebp-4]
 0056FD34    call        TCustomListBox.Destroy
 0056FD39    cmp         byte ptr [ebp-5],0
>0056FD3D    jle         0056FD47
 0056FD3F    mov         eax,dword ptr [ebp-4]
 0056FD42    call        @ClassDestroy
 0056FD47    pop         ecx
 0056FD48    pop         ecx
 0056FD49    pop         ebp
 0056FD4A    ret
*}
end;

//0056FD4C
procedure TCheckListBox.CreateWnd;
begin
{*
 0056FD4C    push        ebp
 0056FD4D    mov         ebp,esp
 0056FD4F    push        ecx
 0056FD50    mov         dword ptr [ebp-4],eax
 0056FD53    mov         eax,dword ptr [ebp-4]
 0056FD56    call        TCustomListBox.CreateWnd
 0056FD5B    mov         eax,dword ptr [ebp-4]
 0056FD5E    cmp         dword ptr [eax+290],0;TCheckListBox.FSaveStates:TList
>0056FD65    je          0056FD80
 0056FD67    mov         eax,dword ptr [ebp-4]
 0056FD6A    mov         eax,dword ptr [eax+290];TCheckListBox.FSaveStates:TList
 0056FD70    call        TObject.Free
 0056FD75    mov         eax,dword ptr [ebp-4]
 0056FD78    xor         edx,edx
 0056FD7A    mov         dword ptr [eax+290],edx;TCheckListBox.FSaveStates:TList
 0056FD80    mov         eax,dword ptr [ebp-4]
 0056FD83    call        0056FE8C
 0056FD88    pop         ecx
 0056FD89    pop         ebp
 0056FD8A    ret
*}
end;

//0056FD8C
procedure TCheckListBox.DestroyWnd;
begin
{*
 0056FD8C    push        ebp
 0056FD8D    mov         ebp,esp
 0056FD8F    add         esp,0FFFFFFF4
 0056FD92    mov         dword ptr [ebp-4],eax
 0056FD95    mov         eax,dword ptr [ebp-4]
 0056FD98    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0056FD9E    mov         edx,dword ptr [eax]
 0056FDA0    call        dword ptr [edx+14];@AbstractError
 0056FDA3    test        eax,eax
>0056FDA5    jle         0056FE11
 0056FDA7    mov         dl,1
 0056FDA9    mov         eax,[006422A4];TList
 0056FDAE    call        TObject.Create;TList.Create
 0056FDB3    mov         edx,dword ptr [ebp-4]
 0056FDB6    mov         dword ptr [edx+290],eax;TCheckListBox.FSaveStates:TList
 0056FDBC    mov         eax,dword ptr [ebp-4]
 0056FDBF    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0056FDC5    mov         edx,dword ptr [eax]
 0056FDC7    call        dword ptr [edx+14];@AbstractError
 0056FDCA    dec         eax
 0056FDCB    test        eax,eax
>0056FDCD    jl          0056FE11
 0056FDCF    inc         eax
 0056FDD0    mov         dword ptr [ebp-0C],eax
 0056FDD3    mov         dword ptr [ebp-8],0
 0056FDDA    mov         edx,dword ptr [ebp-8]
 0056FDDD    mov         eax,dword ptr [ebp-4]
 0056FDE0    call        005703EC
 0056FDE5    xor         al,1
 0056FDE7    push        eax
 0056FDE8    mov         edx,dword ptr [ebp-8]
 0056FDEB    mov         eax,dword ptr [ebp-4]
 0056FDEE    call        00570428
 0056FDF3    pop         edx
 0056FDF4    call        0056FC2C
 0056FDF9    mov         edx,eax
 0056FDFB    mov         eax,dword ptr [ebp-4]
 0056FDFE    mov         eax,dword ptr [eax+290];TCheckListBox.FSaveStates:TList
 0056FE04    call        TList.Add
 0056FE09    inc         dword ptr [ebp-8]
 0056FE0C    dec         dword ptr [ebp-0C]
>0056FE0F    jne         0056FDDA
 0056FE11    mov         eax,dword ptr [ebp-4]
 0056FE14    call        TCustomListBox.DestroyWnd
 0056FE19    mov         esp,ebp
 0056FE1B    pop         ebp
 0056FE1C    ret
*}
end;

//0056FE20
{*procedure sub_0056FE20(?:?);
begin
 0056FE20    push        ebp
 0056FE21    mov         ebp,esp
 0056FE23    add         esp,0FFFFFFF8
 0056FE26    mov         dword ptr [ebp-8],edx
 0056FE29    mov         dword ptr [ebp-4],eax
 0056FE2C    mov         edx,dword ptr [ebp-8]
 0056FE2F    mov         eax,dword ptr [ebp-4]
 0056FE32    call        0059EB60
 0056FE37    mov         eax,dword ptr [ebp-8]
 0056FE3A    test        byte ptr [eax+4],30
>0056FE3E    jne         0056FE47
 0056FE40    mov         eax,dword ptr [ebp-8]
 0056FE43    or          dword ptr [eax+4],10
 0056FE47    pop         ecx
 0056FE48    pop         ecx
 0056FE49    pop         ebp
 0056FE4A    ret
end;*}

//0056FE4C
{*function sub_0056FE4C(?:TCheckListBox):?;
begin
 0056FE4C    push        ebp
 0056FE4D    mov         ebp,esp
 0056FE4F    add         esp,0FFFFFFF8
 0056FE52    mov         dword ptr [ebp-4],eax
 0056FE55    mov         eax,[006ECCA0];0x0 FCheckWidth:Integer
 0056FE5A    add         eax,2
 0056FE5D    mov         dword ptr [ebp-8],eax
 0056FE60    mov         eax,dword ptr [ebp-8]
 0056FE63    pop         ecx
 0056FE64    pop         ecx
 0056FE65    pop         ebp
 0056FE66    ret
end;*}

//0056FE68
{*procedure TCheckListBox.CMFontChanged(?:?);
begin
 0056FE68    push        ebp
 0056FE69    mov         ebp,esp
 0056FE6B    add         esp,0FFFFFFF8
 0056FE6E    mov         dword ptr [ebp-8],edx
 0056FE71    mov         dword ptr [ebp-4],eax
 0056FE74    mov         edx,dword ptr [ebp-8]
 0056FE77    mov         eax,dword ptr [ebp-4]
 0056FE7A    call        TWinControl.CMFontChanged
 0056FE7F    mov         eax,dword ptr [ebp-4]
 0056FE82    call        0056FE8C
 0056FE87    pop         ecx
 0056FE88    pop         ecx
 0056FE89    pop         ebp
 0056FE8A    ret
end;*}

//0056FE8C
procedure sub_0056FE8C(?:TCheckListBox);
begin
{*
 0056FE8C    push        ebp
 0056FE8D    mov         ebp,esp
 0056FE8F    push        ecx
 0056FE90    mov         dword ptr [ebp-4],eax
 0056FE93    mov         eax,dword ptr [ebp-4]
 0056FE96    call        TWinControl.HandleAllocated
 0056FE9B    test        al,al
>0056FE9D    je          0056FEF4
 0056FE9F    mov         eax,dword ptr [ebp-4]
 0056FEA2    cmp         byte ptr [eax+238],0;TCheckListBox.FStyle:TListBoxStyle
>0056FEA9    jne         0056FEF4
 0056FEAB    mov         eax,dword ptr [ebp-4]
 0056FEAE    mov         edx,dword ptr [eax+68];TCheckListBox.FFont:TFont
 0056FEB1    mov         eax,dword ptr [ebp-4]
 0056FEB4    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 0056FEBA    call        TCanvas.SetFont
 0056FEBF    mov         edx,56FF00;'Wg'
 0056FEC4    mov         eax,dword ptr [ebp-4]
 0056FEC7    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 0056FECD    call        005C177C
 0056FED2    mov         edx,dword ptr [ebp-4]
 0056FED5    mov         dword ptr [edx+284],eax;TCheckListBox.FStandardItemHeight:Integer
 0056FEDB    mov         eax,dword ptr [ebp-4]
 0056FEDE    mov         eax,dword ptr [eax+284];TCheckListBox.FStandardItemHeight:Integer
 0056FEE4    push        eax
 0056FEE5    xor         ecx,ecx
 0056FEE7    mov         edx,1A0
 0056FEEC    mov         eax,dword ptr [ebp-4]
 0056FEEF    call        005F4FA8
 0056FEF4    pop         ecx
 0056FEF5    pop         ebp
 0056FEF6    ret
*}
end;

//0056FF04
{*procedure sub_0056FF04(?:?; ?:?; ?:?);
begin
 0056FF04    push        ebp
 0056FF05    mov         ebp,esp
 0056FF07    add         esp,0FFFFFFC8
 0056FF0A    push        esi
 0056FF0B    push        edi
 0056FF0C    mov         esi,ecx
 0056FF0E    lea         edi,[ebp-25]
 0056FF11    movs        dword ptr [edi],dword ptr [esi]
 0056FF12    movs        dword ptr [edi],dword ptr [esi]
 0056FF13    movs        dword ptr [edi],dword ptr [esi]
 0056FF14    movs        dword ptr [edi],dword ptr [esi]
 0056FF15    mov         dword ptr [ebp-8],edx
 0056FF18    mov         dword ptr [ebp-4],eax
 0056FF1B    mov         eax,dword ptr [ebp-4]
 0056FF1E    call        0056FE4C
 0056FF23    mov         dword ptr [ebp-14],eax
 0056FF26    mov         eax,dword ptr [ebp-4]
 0056FF29    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0056FF2F    mov         edx,dword ptr [eax]
 0056FF31    call        dword ptr [edx+14];@AbstractError
 0056FF34    cmp         eax,dword ptr [ebp-8]
>0056FF37    jle         00570018
 0056FF3D    lea         esi,[ebp-25]
 0056FF40    lea         edi,[ebp-35]
 0056FF43    movs        dword ptr [edi],dword ptr [esi]
 0056FF44    movs        dword ptr [edi],dword ptr [esi]
 0056FF45    movs        dword ptr [edi],dword ptr [esi]
 0056FF46    movs        dword ptr [edi],dword ptr [esi]
 0056FF47    mov         eax,dword ptr [ebp-4]
 0056FF4A    mov         edx,dword ptr [eax]
 0056FF4C    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0056FF4F    test        al,al
>0056FF51    je          0056FF62
 0056FF53    mov         edx,dword ptr [ebp-8]
 0056FF56    mov         eax,dword ptr [ebp-4]
 0056FF59    call        005703EC
 0056FF5E    test        al,al
>0056FF60    jne         0056FF66
 0056FF62    xor         eax,eax
>0056FF64    jmp         0056FF68
 0056FF66    mov         al,1
 0056FF68    mov         byte ptr [ebp-15],al
 0056FF6B    mov         edx,dword ptr [ebp-8]
 0056FF6E    mov         eax,dword ptr [ebp-4]
 0056FF71    call        0057096C
 0056FF76    test        al,al
>0056FF78    jne         0056FFC8
 0056FF7A    mov         eax,dword ptr [ebp-4]
 0056FF7D    mov         si,0FFC8
 0056FF81    call        @CallDynaInst;TControl.sub_005F40CC
 0056FF86    test        al,al
>0056FF88    jne         0056FF9B
 0056FF8A    mov         eax,dword ptr [ebp-25]
 0056FF8D    mov         dword ptr [ebp-2D],eax
 0056FF90    mov         eax,dword ptr [ebp-2D]
 0056FF93    sub         eax,dword ptr [ebp-14]
 0056FF96    mov         dword ptr [ebp-35],eax
>0056FF99    jmp         0056FFAA
 0056FF9B    mov         eax,dword ptr [ebp-1D]
 0056FF9E    mov         dword ptr [ebp-35],eax
 0056FFA1    mov         eax,dword ptr [ebp-35]
 0056FFA4    add         eax,dword ptr [ebp-14]
 0056FFA7    mov         dword ptr [ebp-2D],eax
 0056FFAA    mov         al,byte ptr [ebp-15]
 0056FFAD    push        eax
 0056FFAE    mov         edx,dword ptr [ebp-8]
 0056FFB1    mov         eax,dword ptr [ebp-4]
 0056FFB4    call        00570428
 0056FFB9    mov         ecx,eax
 0056FFBB    lea         edx,[ebp-35]
 0056FFBE    mov         eax,dword ptr [ebp-4]
 0056FFC1    call        00570138
>0056FFC6    jmp         0056FFFC
 0056FFC8    mov         eax,dword ptr [ebp-4]
 0056FFCB    mov         edx,dword ptr [eax+294];TCheckListBox.HeaderColor:TColor
 0056FFD1    mov         eax,dword ptr [ebp-4]
 0056FFD4    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 0056FFDA    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0056FFDD    call        TFont.SetColor
 0056FFE2    mov         eax,dword ptr [ebp-4]
 0056FFE5    mov         edx,dword ptr [eax+298];TCheckListBox.HeaderBackgroundColor:TColor
 0056FFEB    mov         eax,dword ptr [ebp-4]
 0056FFEE    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 0056FFF4    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0056FFF7    call        TBrush.SetColor
 0056FFFC    cmp         byte ptr [ebp-15],0
>00570000    jne         00570018
 00570002    mov         eax,dword ptr [ebp-4]
 00570005    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 0057000B    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0057000E    mov         edx,80000011
 00570013    call        TFont.SetColor
 00570018    mov         eax,dword ptr [ebp-4]
 0057001B    cmp         byte ptr [eax+238],0;TCheckListBox.FStyle:TListBoxStyle
>00570022    jne         005700A2
 00570024    mov         eax,dword ptr [ebp-4]
 00570027    cmp         word ptr [eax+252],0;TCheckListBox.?f252:word
>0057002F    je          005700A2
 00570031    mov         eax,dword ptr [ebp-4]
 00570034    mov         edx,dword ptr [eax+250];TCheckListBox.FOnDrawItem:TDrawItemEvent
 0057003A    mov         dword ptr [ebp-10],edx
 0057003D    mov         edx,dword ptr [eax+254];TCheckListBox.?f254:dword
 00570043    mov         dword ptr [ebp-0C],edx
 00570046    mov         eax,dword ptr [ebp-4]
 00570049    xor         edx,edx
 0057004B    mov         dword ptr [eax+250],edx;TCheckListBox.FOnDrawItem:TDrawItemEvent
 00570051    mov         dword ptr [eax+254],edx;TCheckListBox.?f254:dword
 00570057    xor         eax,eax
 00570059    push        ebp
 0057005A    push        57009B
 0057005F    push        dword ptr fs:[eax]
 00570062    mov         dword ptr fs:[eax],esp
 00570065    mov         ax,word ptr [ebp+8]
 00570069    push        eax
 0057006A    lea         ecx,[ebp-25]
 0057006D    mov         edx,dword ptr [ebp-8]
 00570070    mov         eax,dword ptr [ebp-4]
 00570073    call        0059F25C
 00570078    xor         eax,eax
 0057007A    pop         edx
 0057007B    pop         ecx
 0057007C    pop         ecx
 0057007D    mov         dword ptr fs:[eax],edx
 00570080    push        5700B5
 00570085    mov         eax,dword ptr [ebp-4]
 00570088    mov         edx,dword ptr [ebp-10]
 0057008B    mov         dword ptr [eax+250],edx;TCheckListBox.FOnDrawItem:TDrawItemEvent
 00570091    mov         edx,dword ptr [ebp-0C]
 00570094    mov         dword ptr [eax+254],edx;TCheckListBox.?f254:dword
 0057009A    ret
>0057009B    jmp         @HandleFinally
>005700A0    jmp         00570085
 005700A2    mov         ax,word ptr [ebp+8]
 005700A6    push        eax
 005700A7    lea         ecx,[ebp-25]
 005700AA    mov         edx,dword ptr [ebp-8]
 005700AD    mov         eax,dword ptr [ebp-4]
 005700B0    call        0059F25C
 005700B5    pop         edi
 005700B6    pop         esi
 005700B7    mov         esp,ebp
 005700B9    pop         ebp
 005700BA    ret         4
end;*}

//005700C0
{*procedure TCheckListBox.sub_005700C0(?:?);
begin
 005700C0    push        ebp
 005700C1    mov         ebp,esp
 005700C3    add         esp,0FFFFFFF4
 005700C6    push        esi
 005700C7    mov         dword ptr [ebp-8],edx
 005700CA    mov         dword ptr [ebp-4],eax
 005700CD    mov         eax,dword ptr [ebp-4]
 005700D0    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 005700D6    mov         edx,dword ptr [eax]
 005700D8    call        dword ptr [edx+14];@AbstractError
 005700DB    test        eax,eax
>005700DD    je          00570133
 005700DF    mov         eax,dword ptr [ebp-8]
 005700E2    mov         eax,dword ptr [eax+8]
 005700E5    mov         dword ptr [ebp-0C],eax
 005700E8    mov         eax,dword ptr [ebp-0C]
 005700EB    mov         edx,dword ptr [eax+8]
 005700EE    mov         eax,dword ptr [ebp-4]
 005700F1    call        0057096C
 005700F6    test        al,al
>005700F8    jne         00570128
 005700FA    mov         eax,dword ptr [ebp-4]
 005700FD    mov         si,0FFC8
 00570101    call        @CallDynaInst;TControl.sub_005F40CC
 00570106    test        al,al
>00570108    jne         0057011A
 0057010A    mov         eax,dword ptr [ebp-4]
 0057010D    call        0056FE4C
 00570112    mov         edx,dword ptr [ebp-0C]
 00570115    add         dword ptr [edx+1C],eax
>00570118    jmp         00570128
 0057011A    mov         eax,dword ptr [ebp-4]
 0057011D    call        0056FE4C
 00570122    mov         edx,dword ptr [ebp-0C]
 00570125    sub         dword ptr [edx+24],eax
 00570128    mov         edx,dword ptr [ebp-8]
 0057012B    mov         eax,dword ptr [ebp-4]
 0057012E    call        TCustomListBox.sub_0059F3D4
 00570133    pop         esi
 00570134    mov         esp,ebp
 00570136    pop         ebp
 00570137    ret
end;*}

//00570138
{*procedure sub_00570138(?:TCheckListBox; ?:?; ?:?; ?:?);
begin
 00570138    push        ebp
 00570139    mov         ebp,esp
 0057013B    add         esp,0FFFFFFBC
 0057013E    push        esi
 0057013F    push        edi
 00570140    mov         esi,edx
 00570142    lea         edi,[ebp-34]
 00570145    movs        dword ptr [edi],dword ptr [esi]
 00570146    movs        dword ptr [edi],dword ptr [esi]
 00570147    movs        dword ptr [edi],dword ptr [esi]
 00570148    movs        dword ptr [edi],dword ptr [esi]
 00570149    mov         byte ptr [ebp-5],cl
 0057014C    mov         dword ptr [ebp-4],eax
 0057014F    xor         eax,eax
 00570151    mov         dword ptr [ebp-20],eax
 00570154    mov         eax,dword ptr [ebp-2C]
 00570157    sub         eax,dword ptr [ebp-34]
 0057015A    sub         eax,dword ptr ds:[6ECCA0];FCheckWidth:Integer
 00570160    sar         eax,1
>00570162    jns         00570167
 00570164    adc         eax,0
 00570167    add         eax,dword ptr [ebp-34]
 0057016A    mov         dword ptr [ebp-44],eax
 0057016D    mov         eax,dword ptr [ebp-28]
 00570170    sub         eax,dword ptr [ebp-30]
 00570173    sub         eax,dword ptr ds:[6ECCA0];FCheckWidth:Integer
 00570179    sar         eax,1
>0057017B    jns         00570180
 0057017D    adc         eax,0
 00570180    add         eax,dword ptr [ebp-30]
 00570183    mov         dword ptr [ebp-40],eax
 00570186    mov         eax,dword ptr [ebp-44]
 00570189    add         eax,dword ptr ds:[6ECCA0];0x0 FCheckWidth:Integer
 0057018F    mov         dword ptr [ebp-3C],eax
 00570192    mov         eax,dword ptr [ebp-40]
 00570195    add         eax,dword ptr ds:[6ECCA4];0x0 FCheckHeight:Integer
 0057019B    mov         dword ptr [ebp-38],eax
 0057019E    mov         al,byte ptr [ebp-5]
 005701A1    sub         al,1
>005701A3    jb          005701B0
>005701A5    jne         005701B7
 005701A7    mov         dword ptr [ebp-0C],400
>005701AE    jmp         005701BE
 005701B0    xor         eax,eax
 005701B2    mov         dword ptr [ebp-0C],eax
>005701B5    jmp         005701BE
 005701B7    mov         dword ptr [ebp-0C],408
 005701BE    cmp         byte ptr [ebp+8],0
>005701C2    jne         005701CB
 005701C4    or          dword ptr [ebp-0C],100
 005701CB    mov         eax,dword ptr [ebp-4]
 005701CE    mov         eax,dword ptr [eax+228];TCheckListBox.FCanvas:TCanvas
 005701D4    mov         dword ptr [ebp-24],eax
 005701D7    mov         eax,dword ptr [ebp-4]
 005701DA    cmp         byte ptr [eax+281],0;TCheckListBox.Flat:Boolean
>005701E1    je          00570244
 005701E3    push        0
 005701E5    push        0
 005701E7    push        0
 005701E9    push        0
 005701EB    call        GDI32.CreateRectRgn
 005701F0    mov         dword ptr [ebp-20],eax
 005701F3    mov         eax,dword ptr [ebp-20]
 005701F6    push        eax
 005701F7    mov         eax,dword ptr [ebp-24]
 005701FA    call        TCanvas.GetHandle
 005701FF    push        eax
 00570200    call        GDI32.GetClipRgn
 00570205    mov         eax,dword ptr [ebp-38]
 00570208    sub         eax,2
 0057020B    push        eax
 0057020C    mov         eax,dword ptr [ebp-3C]
 0057020F    sub         eax,2
 00570212    push        eax
 00570213    mov         eax,dword ptr [ebp-40]
 00570216    add         eax,2
 00570219    push        eax
 0057021A    mov         eax,dword ptr [ebp-44]
 0057021D    add         eax,2
 00570220    push        eax
 00570221    call        GDI32.CreateRectRgn
 00570226    mov         dword ptr [ebp-1C],eax
 00570229    mov         eax,dword ptr [ebp-1C]
 0057022C    push        eax
 0057022D    mov         eax,dword ptr [ebp-24]
 00570230    call        TCanvas.GetHandle
 00570235    push        eax
 00570236    call        GDI32.SelectClipRgn
 0057023B    mov         eax,dword ptr [ebp-1C]
 0057023E    push        eax
 0057023F    call        GDI32.DeleteObject
 00570244    mov         eax,dword ptr [ebp-0C]
 00570247    push        eax
 00570248    push        4
 0057024A    lea         eax,[ebp-44]
 0057024D    push        eax
 0057024E    mov         eax,dword ptr [ebp-24]
 00570251    call        TCanvas.GetHandle
 00570256    push        eax
 00570257    call        USER32.DrawFrameControl
 0057025C    mov         eax,dword ptr [ebp-4]
 0057025F    cmp         byte ptr [eax+281],0;TCheckListBox.Flat:Boolean
>00570266    je          00570312
 0057026C    mov         eax,dword ptr [ebp-20]
 0057026F    push        eax
 00570270    mov         eax,dword ptr [ebp-24]
 00570273    call        TCanvas.GetHandle
 00570278    push        eax
 00570279    call        GDI32.SelectClipRgn
 0057027E    mov         eax,dword ptr [ebp-20]
 00570281    push        eax
 00570282    call        GDI32.DeleteObject
 00570287    mov         eax,dword ptr [ebp-24]
 0057028A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057028D    call        TBrush.GetStyle
 00570292    mov         byte ptr [ebp-11],al
 00570295    mov         eax,dword ptr [ebp-24]
 00570298    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057029B    call        TBrush.GetColor
 005702A0    mov         dword ptr [ebp-10],eax
 005702A3    mov         eax,dword ptr [ebp-24]
 005702A6    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005702A9    call        TPen.GetColor
 005702AE    mov         dword ptr [ebp-18],eax
 005702B1    mov         dl,1
 005702B3    mov         eax,dword ptr [ebp-24]
 005702B6    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005702B9    call        TBrush.SetStyle
 005702BE    mov         edx,80000010
 005702C3    mov         eax,dword ptr [ebp-24]
 005702C6    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005702C9    call        TPen.SetColor
 005702CE    mov         eax,dword ptr [ebp-3C]
 005702D1    dec         eax
 005702D2    push        eax
 005702D3    mov         eax,dword ptr [ebp-38]
 005702D6    dec         eax
 005702D7    push        eax
 005702D8    mov         ecx,dword ptr [ebp-40]
 005702DB    inc         ecx
 005702DC    mov         edx,dword ptr [ebp-44]
 005702DF    inc         edx
 005702E0    mov         eax,dword ptr [ebp-24]
 005702E3    call        005C1428
 005702E8    mov         dl,byte ptr [ebp-11]
 005702EB    mov         eax,dword ptr [ebp-24]
 005702EE    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005702F1    call        TBrush.SetStyle
 005702F6    mov         edx,dword ptr [ebp-10]
 005702F9    mov         eax,dword ptr [ebp-24]
 005702FC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005702FF    call        TBrush.SetColor
 00570304    mov         edx,dword ptr [ebp-18]
 00570307    mov         eax,dword ptr [ebp-24]
 0057030A    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0057030D    call        TPen.SetColor
 00570312    pop         edi
 00570313    pop         esi
 00570314    mov         esp,ebp
 00570316    pop         ebp
 00570317    ret         4
end;*}

//0057031C
{*procedure sub_0057031C(?:TCheckListBox; ?:?; ?:?);
begin
 0057031C    push        ebp
 0057031D    mov         ebp,esp
 0057031F    add         esp,0FFFFFFF4
 00570322    mov         byte ptr [ebp-9],cl
 00570325    mov         dword ptr [ebp-8],edx
 00570328    mov         dword ptr [ebp-4],eax
 0057032B    mov         edx,dword ptr [ebp-8]
 0057032E    mov         eax,dword ptr [ebp-4]
 00570331    call        00570428
 00570336    cmp         al,byte ptr [ebp-9]
>00570339    je          00570357
 0057033B    mov         edx,dword ptr [ebp-8]
 0057033E    mov         eax,dword ptr [ebp-4]
 00570341    call        00570688
 00570346    mov         dl,byte ptr [ebp-9]
 00570349    mov         byte ptr [eax+8],dl
 0057034C    mov         edx,dword ptr [ebp-8]
 0057034F    mov         eax,dword ptr [ebp-4]
 00570352    call        0057035C
 00570357    mov         esp,ebp
 00570359    pop         ebp
 0057035A    ret
end;*}

//0057035C
{*procedure sub_0057035C(?:TCheckListBox; ?:?);
begin
 0057035C    push        ebp
 0057035D    mov         ebp,esp
 0057035F    add         esp,0FFFFFFE8
 00570362    push        esi
 00570363    mov         dword ptr [ebp-8],edx
 00570366    mov         dword ptr [ebp-4],eax
 00570369    mov         edx,dword ptr [ebp-8]
 0057036C    mov         eax,dword ptr [ebp-4]
 0057036F    call        0057096C
 00570374    test        al,al
>00570376    jne         005703E7
 00570378    lea         ecx,[ebp-18]
 0057037B    mov         edx,dword ptr [ebp-8]
 0057037E    mov         eax,dword ptr [ebp-4]
 00570381    call        0059EAD0
 00570386    mov         eax,dword ptr [ebp-4]
 00570389    mov         si,0FFC8
 0057038D    call        @CallDynaInst;TControl.sub_005F40CC
 00570392    test        al,al
>00570394    jne         005703A6
 00570396    mov         eax,dword ptr [ebp-4]
 00570399    call        0056FE4C
 0057039E    add         eax,dword ptr [ebp-18]
 005703A1    mov         dword ptr [ebp-10],eax
>005703A4    jmp         005703B6
 005703A6    mov         eax,dword ptr [ebp-4]
 005703A9    call        0056FE4C
 005703AE    mov         edx,dword ptr [ebp-10]
 005703B1    sub         edx,eax
 005703B3    mov         dword ptr [ebp-18],edx
 005703B6    mov         eax,dword ptr [ebp-4]
 005703B9    test        byte ptr [eax+50],40;TCheckListBox.FControlStyle:TControlStyle
 005703BD    setne       al
 005703C0    xor         al,1
 005703C2    neg         al
 005703C4    sbb         eax,eax
 005703C6    push        eax
 005703C7    lea         eax,[ebp-18]
 005703CA    push        eax
 005703CB    mov         eax,dword ptr [ebp-4]
 005703CE    call        TWinControl.GetHandle
 005703D3    push        eax
 005703D4    call        USER32.InvalidateRect
 005703D9    mov         eax,dword ptr [ebp-4]
 005703DC    call        TWinControl.GetHandle
 005703E1    push        eax
 005703E2    call        USER32.UpdateWindow
 005703E7    pop         esi
 005703E8    mov         esp,ebp
 005703EA    pop         ebp
 005703EB    ret
end;*}

//005703EC
{*function sub_005703EC(?:TCheckListBox; ?:?):?;
begin
 005703EC    push        ebp
 005703ED    mov         ebp,esp
 005703EF    add         esp,0FFFFFFF4
 005703F2    mov         dword ptr [ebp-8],edx
 005703F5    mov         dword ptr [ebp-4],eax
 005703F8    mov         edx,dword ptr [ebp-8]
 005703FB    mov         eax,dword ptr [ebp-4]
 005703FE    call        005707A4
 00570403    test        al,al
>00570405    je          0057041C
 00570407    mov         edx,dword ptr [ebp-8]
 0057040A    mov         eax,dword ptr [ebp-4]
 0057040D    call        00570688
 00570412    mov         al,byte ptr [eax+9]
 00570415    xor         al,1
 00570417    mov         byte ptr [ebp-9],al
>0057041A    jmp         00570420
 0057041C    mov         byte ptr [ebp-9],1
 00570420    mov         al,byte ptr [ebp-9]
 00570423    mov         esp,ebp
 00570425    pop         ebp
 00570426    ret
end;*}

//00570428
{*function sub_00570428(?:TCheckListBox; ?:?):?;
begin
 00570428    push        ebp
 00570429    mov         ebp,esp
 0057042B    add         esp,0FFFFFFF4
 0057042E    mov         dword ptr [ebp-8],edx
 00570431    mov         dword ptr [ebp-4],eax
 00570434    mov         edx,dword ptr [ebp-8]
 00570437    mov         eax,dword ptr [ebp-4]
 0057043A    call        005707A4
 0057043F    test        al,al
>00570441    je          00570456
 00570443    mov         edx,dword ptr [ebp-8]
 00570446    mov         eax,dword ptr [ebp-4]
 00570449    call        00570688
 0057044E    mov         al,byte ptr [eax+8]
 00570451    mov         byte ptr [ebp-9],al
>00570454    jmp         00570463
 00570456    mov         eax,[0056FB40];TCheckListBoxDataWrapper
 0057045B    call        0056FC8C
 00570460    mov         byte ptr [ebp-9],al
 00570463    mov         al,byte ptr [ebp-9]
 00570466    mov         esp,ebp
 00570468    pop         ebp
 00570469    ret
end;*}

//0057046C
{*procedure TCheckListBox.sub_0057046C(?:?);
begin
 0057046C    push        ebp
 0057046D    mov         ebp,esp
 0057046F    add         esp,0FFFFFFF8
 00570472    mov         dword ptr [ebp-8],edx
 00570475    mov         dword ptr [ebp-4],eax
 00570478    mov         eax,dword ptr [ebp-8]
 0057047B    cmp         byte ptr [eax],20
>0057047E    jne         00570495
 00570480    mov         eax,dword ptr [ebp-4]
 00570483    mov         edx,dword ptr [eax]
 00570485    call        dword ptr [edx+0C8];TCheckListBox.sub_0059E338
 0057048B    mov         edx,eax
 0057048D    mov         eax,dword ptr [ebp-4]
 00570490    call        00570590
 00570495    mov         edx,dword ptr [ebp-8]
 00570498    mov         eax,dword ptr [ebp-4]
 0057049B    call        TCustomListBox.sub_0059F69C
 005704A0    pop         ecx
 005704A1    pop         ecx
 005704A2    pop         ebp
 005704A3    ret
end;*}

//005704A4
procedure TCheckListBox.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005704A4    push        ebp
 005704A5    mov         ebp,esp
 005704A7    add         esp,0FFFFFFDC
 005704AA    push        ebx
 005704AB    push        esi
 005704AC    mov         byte ptr [ebp-6],cl
 005704AF    mov         byte ptr [ebp-5],dl
 005704B2    mov         dword ptr [ebp-4],eax
 005704B5    mov         eax,dword ptr [ebp+0C]
 005704B8    push        eax
 005704B9    mov         eax,dword ptr [ebp+8]
 005704BC    push        eax
 005704BD    mov         cl,byte ptr [ebp-6]
 005704C0    mov         dl,byte ptr [ebp-5]
 005704C3    mov         eax,dword ptr [ebp-4]
 005704C6    call        TControl.MouseDown
 005704CB    cmp         byte ptr [ebp-5],0
>005704CF    jne         00570585
 005704D5    lea         ecx,[ebp-14]
 005704D8    mov         edx,dword ptr [ebp+8]
 005704DB    mov         eax,dword ptr [ebp+0C]
 005704DE    call        Point
 005704E3    lea         edx,[ebp-14]
 005704E6    mov         cl,1
 005704E8    mov         eax,dword ptr [ebp-4]
 005704EB    call        0059EA30
 005704F0    mov         dword ptr [ebp-0C],eax
 005704F3    cmp         dword ptr [ebp-0C],0FFFFFFFF
>005704F7    je          00570585
 005704FD    mov         edx,dword ptr [ebp-0C]
 00570500    mov         eax,dword ptr [ebp-4]
 00570503    call        005703EC
 00570508    test        al,al
>0057050A    je          00570585
 0057050C    mov         eax,dword ptr [ebp-4]
 0057050F    mov         si,0FFC8
 00570513    call        @CallDynaInst;TControl.sub_005F40CC
 00570518    test        al,al
>0057051A    jne         00570549
 0057051C    lea         ecx,[ebp-24]
 0057051F    mov         edx,dword ptr [ebp-0C]
 00570522    mov         eax,dword ptr [ebp-4]
 00570525    call        0059EAD0
 0057052A    mov         ebx,dword ptr [ebp+0C]
 0057052D    sub         ebx,dword ptr [ebp-24]
 00570530    mov         eax,dword ptr [ebp-4]
 00570533    call        0056FE4C
 00570538    cmp         ebx,eax
>0057053A    jge         00570585
 0057053C    mov         edx,dword ptr [ebp-0C]
 0057053F    mov         eax,dword ptr [ebp-4]
 00570542    call        00570590
>00570547    jmp         00570585
 00570549    lea         ecx,[ebp-24]
 0057054C    mov         edx,dword ptr [ebp-0C]
 0057054F    mov         eax,dword ptr [ebp-4]
 00570552    call        0059EAD0
 00570557    mov         ebx,dword ptr [ebp-1C]
 0057055A    mov         eax,dword ptr [ebp-4]
 0057055D    call        0056FE4C
 00570562    sub         ebx,eax
 00570564    sub         dword ptr [ebp+0C],ebx
 00570567    cmp         dword ptr [ebp+0C],0
>0057056B    jle         00570585
 0057056D    mov         eax,dword ptr [ebp-4]
 00570570    call        0056FE4C
 00570575    cmp         eax,dword ptr [ebp+0C]
>00570578    jle         00570585
 0057057A    mov         edx,dword ptr [ebp-0C]
 0057057D    mov         eax,dword ptr [ebp-4]
 00570580    call        00570590
 00570585    pop         esi
 00570586    pop         ebx
 00570587    mov         esp,ebp
 00570589    pop         ebp
 0057058A    ret         8
*}
end;

//00570590
{*procedure sub_00570590(?:TCheckListBox; ?:?);
begin
 00570590    push        ebp
 00570591    mov         ebp,esp
 00570593    add         esp,0FFFFFFF4
 00570596    push        esi
 00570597    mov         dword ptr [ebp-8],edx
 0057059A    mov         dword ptr [ebp-4],eax
 0057059D    cmp         dword ptr [ebp-8],0
>005705A1    jl          0057061E
 005705A3    mov         eax,dword ptr [ebp-4]
 005705A6    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 005705AC    mov         edx,dword ptr [eax]
 005705AE    call        dword ptr [edx+14];@AbstractError
 005705B1    cmp         eax,dword ptr [ebp-8]
>005705B4    jle         0057061E
 005705B6    mov         edx,dword ptr [ebp-8]
 005705B9    mov         eax,dword ptr [ebp-4]
 005705BC    call        005703EC
 005705C1    test        al,al
>005705C3    je          0057061E
 005705C5    mov         edx,dword ptr [ebp-8]
 005705C8    mov         eax,dword ptr [ebp-4]
 005705CB    call        00570428
 005705D0    mov         byte ptr [ebp-9],al
 005705D3    mov         al,byte ptr [ebp-9]
 005705D6    sub         al,1
>005705D8    jb          005705E2
>005705DA    je          005705FA
 005705DC    dec         al
>005705DE    je          00570600
>005705E0    jmp         00570604
 005705E2    mov         eax,dword ptr [ebp-4]
 005705E5    cmp         byte ptr [eax+280],0;TCheckListBox.AllowGrayed:Boolean
>005705EC    je          005705F4
 005705EE    mov         byte ptr [ebp-9],2
>005705F2    jmp         00570604
 005705F4    mov         byte ptr [ebp-9],1
>005705F8    jmp         00570604
 005705FA    mov         byte ptr [ebp-9],0
>005705FE    jmp         00570604
 00570600    mov         byte ptr [ebp-9],1
 00570604    mov         cl,byte ptr [ebp-9]
 00570607    mov         edx,dword ptr [ebp-8]
 0057060A    mov         eax,dword ptr [ebp-4]
 0057060D    call        0057031C
 00570612    mov         eax,dword ptr [ebp-4]
 00570615    mov         si,0FFAD
 00570619    call        @CallDynaInst;TCheckListBox.sub_00570624
 0057061E    pop         esi
 0057061F    mov         esp,ebp
 00570621    pop         ebp
 00570622    ret
end;*}

//00570624
procedure TCheckListBox.sub_00570624;
begin
{*
 00570624    push        ebp
 00570625    mov         ebp,esp
 00570627    push        ecx
 00570628    push        ebx
 00570629    mov         dword ptr [ebp-4],eax
 0057062C    mov         eax,dword ptr [ebp-4]
 0057062F    cmp         word ptr [eax+28A],0;TCheckListBox.?f28A:word
>00570637    je          0057064B
 00570639    mov         ebx,dword ptr [ebp-4]
 0057063C    mov         edx,dword ptr [ebp-4]
 0057063F    mov         eax,dword ptr [ebx+28C];TCheckListBox.?f28C:dword
 00570645    call        dword ptr [ebx+288];TCheckListBox.OnClickCheck
 0057064B    pop         ebx
 0057064C    pop         ecx
 0057064D    pop         ebp
 0057064E    ret
*}
end;

//00570650
{*procedure TCheckListBox.sub_00570650(?:?);
begin
 00570650    push        ebp
 00570651    mov         ebp,esp
 00570653    add         esp,0FFFFFFF4
 00570656    mov         dword ptr [ebp-8],edx
 00570659    mov         dword ptr [ebp-4],eax
 0057065C    xor         eax,eax
 0057065E    mov         dword ptr [ebp-0C],eax
 00570661    mov         edx,dword ptr [ebp-8]
 00570664    mov         eax,dword ptr [ebp-4]
 00570667    call        005707A4
 0057066C    test        al,al
>0057066E    je          00570681
 00570670    mov         edx,dword ptr [ebp-8]
 00570673    mov         eax,dword ptr [ebp-4]
 00570676    call        00570688
 0057067B    mov         eax,dword ptr [eax+4]
 0057067E    mov         dword ptr [ebp-0C],eax
 00570681    mov         eax,dword ptr [ebp-0C]
 00570684    mov         esp,ebp
 00570686    pop         ebp
 00570687    ret
end;*}

//00570688
{*function sub_00570688(?:TCheckListBox; ?:?):?;
begin
 00570688    push        ebp
 00570689    mov         ebp,esp
 0057068B    add         esp,0FFFFFFF4
 0057068E    mov         dword ptr [ebp-8],edx
 00570691    mov         dword ptr [ebp-4],eax
 00570694    mov         edx,dword ptr [ebp-8]
 00570697    mov         eax,dword ptr [ebp-4]
 0057069A    call        005706C0
 0057069F    mov         dword ptr [ebp-0C],eax
 005706A2    cmp         dword ptr [ebp-0C],0
>005706A6    jne         005706B6
 005706A8    mov         edx,dword ptr [ebp-8]
 005706AB    mov         eax,dword ptr [ebp-4]
 005706AE    call        00570774
 005706B3    mov         dword ptr [ebp-0C],eax
 005706B6    mov         eax,dword ptr [ebp-0C]
 005706B9    mov         esp,ebp
 005706BB    pop         ebp
 005706BC    ret
end;*}

//005706C0
{*function sub_005706C0(?:TCheckListBox; ?:?):?;
begin
 005706C0    push        ebp
 005706C1    mov         ebp,esp
 005706C3    add         esp,0FFFFFFEC
 005706C6    mov         dword ptr [ebp-8],edx
 005706C9    mov         dword ptr [ebp-4],eax
 005706CC    mov         edx,dword ptr [ebp-8]
 005706CF    mov         eax,dword ptr [ebp-4]
 005706D2    call        TCustomListBox.sub_0059DF10
 005706D7    mov         dword ptr [ebp-0C],eax
 005706DA    cmp         dword ptr [ebp-0C],0FFFFFFFF
>005706DE    jne         00570707
 005706E0    mov         eax,dword ptr [ebp-8]
 005706E3    mov         dword ptr [ebp-14],eax
 005706E6    mov         byte ptr [ebp-10],0
 005706EA    lea         eax,[ebp-14]
 005706ED    push        eax
 005706EE    push        0
 005706F0    mov         ecx,dword ptr ds:[6EA0AC];^gvar_0065504C
 005706F6    mov         dl,1
 005706F8    mov         eax,[0064207C];EListError
 005706FD    call        Exception.CreateResFmt;EListError.Create
 00570702    call        @RaiseExcept
 00570707    cmp         dword ptr [ebp-0C],0
>0057070B    je          00570724
 0057070D    mov         eax,dword ptr [ebp-0C]
 00570710    mov         edx,dword ptr ds:[56FB40];TCheckListBoxDataWrapper
 00570716    call        @IsClass
 0057071B    test        al,al
>0057071D    jne         00570724
 0057071F    xor         eax,eax
 00570721    mov         dword ptr [ebp-0C],eax
 00570724    mov         eax,dword ptr [ebp-0C]
 00570727    mov         esp,ebp
 00570729    pop         ebp
 0057072A    ret
end;*}

//0057072C
{*procedure TCheckListBox.sub_0057072C(?:?);
begin
 0057072C    push        ebp
 0057072D    mov         ebp,esp
 0057072F    add         esp,0FFFFFFF4
 00570732    mov         dword ptr [ebp-8],edx
 00570735    mov         dword ptr [ebp-4],eax
 00570738    mov         edx,dword ptr [ebp-8]
 0057073B    mov         eax,dword ptr [ebp-4]
 0057073E    call        TCustomListBox.sub_0059DF10
 00570743    mov         dword ptr [ebp-0C],eax
 00570746    mov         eax,dword ptr [ebp-0C]
 00570749    mov         esp,ebp
 0057074B    pop         ebp
 0057074C    ret
end;*}

//00570750
{*procedure TCheckListBox.sub_00570750(?:?; ?:?);
begin
 00570750    push        ebp
 00570751    mov         ebp,esp
 00570753    add         esp,0FFFFFFF4
 00570756    mov         dword ptr [ebp-0C],ecx
 00570759    mov         dword ptr [ebp-8],edx
 0057075C    mov         dword ptr [ebp-4],eax
 0057075F    mov         ecx,dword ptr [ebp-0C]
 00570762    mov         edx,dword ptr [ebp-8]
 00570765    mov         eax,dword ptr [ebp-4]
 00570768    call        TCustomListBox.sub_0059DF40
 0057076D    mov         esp,ebp
 0057076F    pop         ebp
 00570770    ret
end;*}

//00570774
{*function sub_00570774(?:TCheckListBox; ?:?):?;
begin
 00570774    push        ebp
 00570775    mov         ebp,esp
 00570777    add         esp,0FFFFFFF4
 0057077A    mov         dword ptr [ebp-8],edx
 0057077D    mov         dword ptr [ebp-4],eax
 00570780    mov         dl,1
 00570782    mov         eax,[0056FB40];TCheckListBoxDataWrapper
 00570787    call        TObject.Create;TCheckListBoxDataWrapper.Create
 0057078C    mov         dword ptr [ebp-0C],eax
 0057078F    mov         ecx,dword ptr [ebp-0C]
 00570792    mov         edx,dword ptr [ebp-8]
 00570795    mov         eax,dword ptr [ebp-4]
 00570798    call        TCustomListBox.sub_0059DF40
 0057079D    mov         eax,dword ptr [ebp-0C]
 005707A0    mov         esp,ebp
 005707A2    pop         ebp
 005707A3    ret
end;*}

//005707A4
{*function sub_005707A4(?:TCheckListBox; ?:?):?;
begin
 005707A4    push        ebp
 005707A5    mov         ebp,esp
 005707A7    add         esp,0FFFFFFF4
 005707AA    mov         dword ptr [ebp-8],edx
 005707AD    mov         dword ptr [ebp-4],eax
 005707B0    mov         edx,dword ptr [ebp-8]
 005707B3    mov         eax,dword ptr [ebp-4]
 005707B6    call        005706C0
 005707BB    test        eax,eax
 005707BD    setne       byte ptr [ebp-9]
 005707C1    mov         al,byte ptr [ebp-9]
 005707C4    mov         esp,ebp
 005707C6    pop         ebp
 005707C7    ret
end;*}

//005707C8
{*procedure TCheckListBox.sub_005707C8(?:?; ?:TCheckListBoxDataWrapper);
begin
 005707C8    push        ebp
 005707C9    mov         ebp,esp
 005707CB    add         esp,0FFFFFFEC
 005707CE    mov         dword ptr [ebp-0C],ecx
 005707D1    mov         dword ptr [ebp-8],edx
 005707D4    mov         dword ptr [ebp-4],eax
 005707D7    mov         edx,dword ptr [ebp-8]
 005707DA    mov         eax,dword ptr [ebp-4]
 005707DD    call        00570688
 005707E2    mov         dword ptr [ebp-10],eax
 005707E5    mov         eax,dword ptr [ebp-0C]
 005707E8    mov         edx,dword ptr [ebp-10]
 005707EB    mov         dword ptr [edx+4],eax
 005707EE    mov         eax,dword ptr [ebp-4]
 005707F1    cmp         dword ptr [eax+290],0;TCheckListBox.FSaveStates:TList
>005707F8    je          00570848
 005707FA    mov         eax,dword ptr [ebp-4]
 005707FD    mov         eax,dword ptr [eax+290];TCheckListBox.FSaveStates:TList
 00570803    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>00570807    jle         00570848
 00570809    xor         edx,edx
 0057080B    mov         eax,dword ptr [ebp-4]
 0057080E    mov         eax,dword ptr [eax+290];TCheckListBox.FSaveStates:TList
 00570814    call        TList.Get
 00570819    mov         dword ptr [ebp-14],eax
 0057081C    mov         eax,dword ptr [ebp-14]
 0057081F    call        0056FC54
 00570824    mov         edx,dword ptr [ebp-10]
 00570827    mov         byte ptr [edx+8],al
 0057082A    mov         eax,dword ptr [ebp-14]
 0057082D    call        0056FC70
 00570832    mov         edx,dword ptr [ebp-10]
 00570835    mov         byte ptr [edx+9],al
 00570838    xor         edx,edx
 0057083A    mov         eax,dword ptr [ebp-4]
 0057083D    mov         eax,dword ptr [eax+290];TCheckListBox.FSaveStates:TList
 00570843    call        TList.Delete
 00570848    mov         esp,ebp
 0057084A    pop         ebp
 0057084B    ret
end;*}

//0057084C
procedure TCheckListBox.sub_0057084C;
begin
{*
 0057084C    push        ebp
 0057084D    mov         ebp,esp
 0057084F    add         esp,0FFFFFFF4
 00570852    mov         dword ptr [ebp-4],eax
 00570855    mov         eax,dword ptr [ebp-4]
 00570858    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0057085E    mov         edx,dword ptr [eax]
 00570860    call        dword ptr [edx+14];@AbstractError
 00570863    dec         eax
 00570864    test        eax,eax
>00570866    jl          0057089A
 00570868    inc         eax
 00570869    mov         dword ptr [ebp-0C],eax
 0057086C    mov         dword ptr [ebp-8],0
 00570873    mov         edx,dword ptr [ebp-8]
 00570876    mov         eax,dword ptr [ebp-4]
 00570879    call        005707A4
 0057087E    test        al,al
>00570880    je          00570892
 00570882    mov         edx,dword ptr [ebp-8]
 00570885    mov         eax,dword ptr [ebp-4]
 00570888    call        00570688
 0057088D    call        TObject.Free
 00570892    inc         dword ptr [ebp-8]
 00570895    dec         dword ptr [ebp-0C]
>00570898    jne         00570873
 0057089A    mov         eax,dword ptr [ebp-4]
 0057089D    call        TCustomListBox.sub_0059DFEC
 005708A2    mov         esp,ebp
 005708A4    pop         ebp
 005708A5    ret
*}
end;

//005708A8
{*procedure TCheckListBox.sub_005708A8(?:?);
begin
 005708A8    push        ebp
 005708A9    mov         ebp,esp
 005708AB    add         esp,0FFFFFFF8
 005708AE    mov         dword ptr [ebp-8],edx
 005708B1    mov         dword ptr [ebp-4],eax
 005708B4    mov         edx,dword ptr [ebp-8]
 005708B7    mov         eax,dword ptr [ebp-4]
 005708BA    call        005707A4
 005708BF    test        al,al
>005708C1    je          005708D3
 005708C3    mov         edx,dword ptr [ebp-8]
 005708C6    mov         eax,dword ptr [ebp-4]
 005708C9    call        00570688
 005708CE    call        TObject.Free
 005708D3    mov         edx,dword ptr [ebp-8]
 005708D6    mov         eax,dword ptr [ebp-4]
 005708D9    call        TCustomListBox.sub_0059DFC0
 005708DE    pop         ecx
 005708DF    pop         ecx
 005708E0    pop         ebp
 005708E1    ret
end;*}

//005708E4
procedure TCheckListBox.SetFlat(Value:Boolean);
begin
{*
 005708E4    push        ebp
 005708E5    mov         ebp,esp
 005708E7    add         esp,0FFFFFFF8
 005708EA    mov         byte ptr [ebp-5],dl
 005708ED    mov         dword ptr [ebp-4],eax
 005708F0    mov         al,byte ptr [ebp-5]
 005708F3    mov         edx,dword ptr [ebp-4]
 005708F6    cmp         al,byte ptr [edx+281];TCheckListBox.Flat:Boolean
>005708FC    je          00570912
 005708FE    mov         al,byte ptr [ebp-5]
 00570901    mov         edx,dword ptr [ebp-4]
 00570904    mov         byte ptr [edx+281],al;TCheckListBox.Flat:Boolean
 0057090A    mov         eax,dword ptr [ebp-4]
 0057090D    mov         edx,dword ptr [eax]
 0057090F    call        dword ptr [edx+7C];TWinControl.Invalidate
 00570912    pop         ecx
 00570913    pop         ecx
 00570914    pop         ebp
 00570915    ret
*}
end;

//00570918
{*procedure TCheckListBox.WMDestroy(?:?);
begin
 00570918    push        ebp
 00570919    mov         ebp,esp
 0057091B    add         esp,0FFFFFFF0
 0057091E    mov         dword ptr [ebp-8],edx
 00570921    mov         dword ptr [ebp-4],eax
 00570924    mov         eax,dword ptr [ebp-4]
 00570927    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0057092D    mov         edx,dword ptr [eax]
 0057092F    call        dword ptr [edx+14];@AbstractError
 00570932    dec         eax
 00570933    test        eax,eax
>00570935    jl          0057095A
 00570937    inc         eax
 00570938    mov         dword ptr [ebp-10],eax
 0057093B    mov         dword ptr [ebp-0C],0
 00570942    mov         edx,dword ptr [ebp-0C]
 00570945    mov         eax,dword ptr [ebp-4]
 00570948    call        005706C0
 0057094D    call        TObject.Free
 00570952    inc         dword ptr [ebp-0C]
 00570955    dec         dword ptr [ebp-10]
>00570958    jne         00570942
 0057095A    mov         edx,dword ptr [ebp-8]
 0057095D    mov         eax,dword ptr [ebp-4]
 00570960    call        TWinControl.WMDestroy
 00570965    mov         esp,ebp
 00570967    pop         ebp
 00570968    ret
end;*}

//0057096C
{*function sub_0057096C(?:TCheckListBox; ?:?):?;
begin
 0057096C    push        ebp
 0057096D    mov         ebp,esp
 0057096F    add         esp,0FFFFFFF4
 00570972    mov         dword ptr [ebp-8],edx
 00570975    mov         dword ptr [ebp-4],eax
 00570978    mov         edx,dword ptr [ebp-8]
 0057097B    mov         eax,dword ptr [ebp-4]
 0057097E    call        005707A4
 00570983    test        al,al
>00570985    je          0057099A
 00570987    mov         edx,dword ptr [ebp-8]
 0057098A    mov         eax,dword ptr [ebp-4]
 0057098D    call        00570688
 00570992    mov         al,byte ptr [eax+0A]
 00570995    mov         byte ptr [ebp-9],al
>00570998    jmp         0057099E
 0057099A    mov         byte ptr [ebp-9],0
 0057099E    mov         al,byte ptr [ebp-9]
 005709A1    mov         esp,ebp
 005709A3    pop         ebp
 005709A4    ret
end;*}

//005709A8
procedure TCheckListBox.SetHeaderBackgroundColor(Value:TColor);
begin
{*
 005709A8    push        ebp
 005709A9    mov         ebp,esp
 005709AB    add         esp,0FFFFFFF8
 005709AE    mov         dword ptr [ebp-8],edx
 005709B1    mov         dword ptr [ebp-4],eax
 005709B4    mov         eax,dword ptr [ebp-8]
 005709B7    mov         edx,dword ptr [ebp-4]
 005709BA    cmp         eax,dword ptr [edx+298];TCheckListBox.HeaderBackgroundColor:TColor
>005709C0    je          005709D6
 005709C2    mov         eax,dword ptr [ebp-8]
 005709C5    mov         edx,dword ptr [ebp-4]
 005709C8    mov         dword ptr [edx+298],eax;TCheckListBox.HeaderBackgroundColor:TColor
 005709CE    mov         eax,dword ptr [ebp-4]
 005709D1    mov         edx,dword ptr [eax]
 005709D3    call        dword ptr [edx+7C];TWinControl.Invalidate
 005709D6    pop         ecx
 005709D7    pop         ecx
 005709D8    pop         ebp
 005709D9    ret
*}
end;

//005709DC
procedure TCheckListBox.SetHeaderColor(Value:TColor);
begin
{*
 005709DC    push        ebp
 005709DD    mov         ebp,esp
 005709DF    add         esp,0FFFFFFF8
 005709E2    mov         dword ptr [ebp-8],edx
 005709E5    mov         dword ptr [ebp-4],eax
 005709E8    mov         eax,dword ptr [ebp-8]
 005709EB    mov         edx,dword ptr [ebp-4]
 005709EE    cmp         eax,dword ptr [edx+294];TCheckListBox.HeaderColor:TColor
>005709F4    je          00570A0A
 005709F6    mov         eax,dword ptr [ebp-8]
 005709F9    mov         edx,dword ptr [ebp-4]
 005709FC    mov         dword ptr [edx+294],eax;TCheckListBox.HeaderColor:TColor
 00570A02    mov         eax,dword ptr [ebp-4]
 00570A05    mov         edx,dword ptr [eax]
 00570A07    call        dword ptr [edx+7C];TWinControl.Invalidate
 00570A0A    pop         ecx
 00570A0B    pop         ecx
 00570A0C    pop         ebp
 00570A0D    ret
*}
end;

//00570A10
procedure Finalization;
begin
{*
 00570A10    push        ebp
 00570A11    mov         ebp,esp
 00570A13    xor         eax,eax
 00570A15    push        ebp
 00570A16    push        570A35
 00570A1B    push        dword ptr fs:[eax]
 00570A1E    mov         dword ptr fs:[eax],esp
 00570A21    inc         dword ptr ds:[6ECC9C]
 00570A27    xor         eax,eax
 00570A29    pop         edx
 00570A2A    pop         ecx
 00570A2B    pop         ecx
 00570A2C    mov         dword ptr fs:[eax],edx
 00570A2F    push        570A3C
 00570A34    ret
>00570A35    jmp         @HandleFinally
>00570A3A    jmp         00570A34
 00570A3C    pop         ebp
 00570A3D    ret
*}
end;

end.