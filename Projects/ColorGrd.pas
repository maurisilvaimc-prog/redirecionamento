//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ColorGrd;

interface

uses
  SysUtils, Classes;

type
  TGridOrdering = (go16x1, go8x2, go4x4, go2x8, go1x16);
  TColorGrid = class(TCustomControl)
  public
    FPaletteEntries:array[$0..$13] of Windows.TPaletteEntry;//f210
    ClickEnablesColor:Boolean;//f260
    ForegroundIndex:Integer;//f264
    BackgroundIndex:Integer;//f268
    ForegroundEnabled:Boolean;//f26C
    BackgroundEnabled:Boolean;//f26D
    Selection:Integer;//f270
    FCellXSize:Integer;//f274
    FCellYSize:Integer;//f278
    FNumXSquares:Integer;//f27C
    FNumYSquares:Integer;//f280
    GridOrdering:TGridOrdering;//f284
    FHasFocus:Boolean;//f285
    OnChange:TNotifyEvent;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    FButton:TMouseButton;//f290
    FButtonDown:Boolean;//f291
    constructor Create(AOwner:TComponent); virtual;//v2C//0057B844
    procedure CreateWnd; virtual;//vA0//0057B93C
    procedure vC4; virtual;//vC4//0057C6C4
    //procedure WMSize(?:?); message WM_SIZE;//0057C3F8
    //procedure WMSetFocus(?:?); message WM_SETFOCUS;//0057C038
    //procedure WMKillFocus(?:?); message WM_KILLFOCUS;//0057C078
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//0057C3DC
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0057C450
    procedure sub_0057CB28; dynamic;//0057CB28
    //procedure sub_0057C0B8(?:?; ?:?); dynamic;//0057C0B8
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0057C668
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0057C5E8
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0057C474
    procedure SetForegroundEnabled(Value:Boolean);//0057BF60
    procedure SetBackgroundEnabled(Value:Boolean);//0057BFCC
    procedure SetBackgroundIndex(Value:Integer);//0057C768
    procedure SetForegroundIndex(Value:Integer);//0057C840
    procedure SetGridOrdering(Value:TGridOrdering);//0057C918
    procedure SetSelection(Value:Integer);//0057C980
  end;
    procedure ColorGrd;//0057B13C
    constructor Create(AOwner:TComponent);//0057B844
    procedure CreateWnd;//0057B93C
    //procedure sub_0057B974(?:TColorGrid; ?:Integer; ?:?);//0057B974
    //function sub_0057BBD8(?:?; ?:?; ?:?):?;//0057BBD8
    procedure sub_0057BC04(?:TColorGrid);//0057BC04
    //procedure WMSetFocus(?:?);//0057C038
    //procedure WMKillFocus(?:?);//0057C078
    //procedure sub_0057C0B8(?:?; ?:?);//0057C0B8
    //procedure WMGetDlgCode(?:?);//0057C3DC
    //procedure WMSize(?:?);//0057C3F8
    //procedure CMCtl3DChanged(?:?);//0057C450
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0057C474
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer);//0057C5E8
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0057C668
    procedure sub_0057C6C4;//0057C6C4
    //function sub_0057C9E0(?:TColorGrid; ?:?; ?:?):?;//0057C9E0
    //procedure sub_0057CA70(?:TColorGrid; ?:?);//0057CA70
    procedure sub_0057CB28;//0057CB28
    procedure Finalization;//0057CB5C

implementation

//0057B13C
procedure ColorGrd;
begin
{*
 0057B13C    sub         dword ptr ds:[6ECCB0],1
 0057B143    ret
*}
end;

//0057B844
constructor TColorGrid.Create(AOwner:TComponent);
begin
{*
 0057B844    push        ebp
 0057B845    mov         ebp,esp
 0057B847    add         esp,0FFFFFFF4
 0057B84A    push        ebx
 0057B84B    test        dl,dl
>0057B84D    je          0057B857
 0057B84F    add         esp,0FFFFFFF0
 0057B852    call        @ClassCreate
 0057B857    mov         dword ptr [ebp-0C],ecx
 0057B85A    mov         byte ptr [ebp-5],dl
 0057B85D    mov         dword ptr [ebp-4],eax
 0057B860    mov         ecx,dword ptr [ebp-0C]
 0057B863    xor         edx,edx
 0057B865    mov         eax,dword ptr [ebp-4]
 0057B868    call        TCustomControl.Create
 0057B86D    mov         eax,dword ptr [ebp-4]
 0057B870    mov         eax,dword ptr [eax+50];TColorGrid.FControlStyle:TControlStyle
 0057B873    or          eax,dword ptr ds:[57B938];0x40 gvar_0057B938
 0057B879    mov         edx,dword ptr [ebp-4]
 0057B87C    mov         dword ptr [edx+50],eax;TColorGrid.FControlStyle:TControlStyle
 0057B87F    mov         eax,dword ptr [ebp-4]
 0057B882    mov         byte ptr [eax+284],2;TColorGrid.GridOrdering:TGridOrdering
 0057B889    mov         eax,dword ptr [ebp-4]
 0057B88C    mov         dword ptr [eax+27C],4;TColorGrid.FNumXSquares:Integer
 0057B896    mov         eax,dword ptr [ebp-4]
 0057B899    mov         dword ptr [eax+280],4;TColorGrid.FNumYSquares:Integer
 0057B8A3    mov         eax,dword ptr [ebp-4]
 0057B8A6    mov         byte ptr [eax+26C],1;TColorGrid.ForegroundEnabled:Boolean
 0057B8AD    mov         eax,dword ptr [ebp-4]
 0057B8B0    mov         byte ptr [eax+26D],1;TColorGrid.BackgroundEnabled:Boolean
 0057B8B7    mov         edx,8000000F
 0057B8BC    mov         eax,dword ptr [ebp-4]
 0057B8BF    call        TControl.SetColor
 0057B8C4    mov         eax,dword ptr [ebp-4]
 0057B8C7    mov         eax,dword ptr [eax+208];TColorGrid.........................................................
 0057B8CD    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057B8D0    xor         edx,edx
 0057B8D2    call        TBrush.SetStyle
 0057B8D7    mov         eax,dword ptr [ebp-4]
 0057B8DA    mov         eax,dword ptr [eax+208];TColorGrid.........................................................
 0057B8E0    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0057B8E3    xor         edx,edx
 0057B8E5    call        TPen.SetColor
 0057B8EA    push        64
 0057B8EC    push        64
 0057B8EE    xor         ecx,ecx
 0057B8F0    xor         edx,edx
 0057B8F2    mov         eax,dword ptr [ebp-4]
 0057B8F5    mov         ebx,dword ptr [eax]
 0057B8F7    call        dword ptr [ebx+84];TColorGrid.sub_005FB7F8
 0057B8FD    mov         eax,dword ptr [ebp-4]
 0057B900    add         eax,210;TColorGrid.FPaletteEntries:array[$0..$13] of Windows.TPaletteEntry
 0057B905    push        eax
 0057B906    push        14
 0057B908    push        0
 0057B90A    push        0F
 0057B90C    call        GDI32.GetStockObject
 0057B911    push        eax
 0057B912    call        GDI32.GetPaletteEntries
 0057B917    mov         eax,dword ptr [ebp-4]
 0057B91A    cmp         byte ptr [ebp-5],0
>0057B91E    je          0057B92F
 0057B920    call        @AfterConstruction
 0057B925    pop         dword ptr fs:[0]
 0057B92C    add         esp,0C
 0057B92F    mov         eax,dword ptr [ebp-4]
 0057B932    pop         ebx
 0057B933    mov         esp,ebp
 0057B935    pop         ebp
 0057B936    ret
*}
end;

//0057B93C
procedure TColorGrid.CreateWnd;
begin
{*
 0057B93C    push        ebp
 0057B93D    mov         ebp,esp
 0057B93F    push        ecx
 0057B940    mov         dword ptr [ebp-4],eax
 0057B943    mov         eax,dword ptr [ebp-4]
 0057B946    call        TWinControl.CreateWnd
 0057B94B    push        0F0
 0057B94D    mov         eax,dword ptr [ebp-4]
 0057B950    call        TWinControl.GetHandle
 0057B955    push        eax
 0057B956    call        USER32.GetWindowLongA
 0057B95B    or          eax,4000000
 0057B960    push        eax
 0057B961    push        0F0
 0057B963    mov         eax,dword ptr [ebp-4]
 0057B966    call        TWinControl.GetHandle
 0057B96B    push        eax
 0057B96C    call        USER32.SetWindowLongA
 0057B971    pop         ecx
 0057B972    pop         ebp
 0057B973    ret
*}
end;

//0057B974
{*procedure sub_0057B974(?:TColorGrid; ?:Integer; ?:?);
begin
 0057B974    push        ebp
 0057B975    mov         ebp,esp
 0057B977    add         esp,0FFFFFFD0
 0057B97A    mov         byte ptr [ebp-9],cl
 0057B97D    mov         dword ptr [ebp-8],edx
 0057B980    mov         dword ptr [ebp-4],eax
 0057B983    cmp         dword ptr [ebp-8],0
>0057B987    jl          0057BBD3
 0057B98D    cmp         dword ptr [ebp-8],0F
>0057B991    jg          0057BBD3
 0057B997    cmp         dword ptr [ebp-8],8
>0057B99B    jge         0057B9A5
 0057B99D    mov         eax,dword ptr [ebp-8]
 0057B9A0    mov         dword ptr [ebp-18],eax
>0057B9A3    jmp         0057B9AE
 0057B9A5    mov         eax,dword ptr [ebp-8]
 0057B9A8    add         eax,4
 0057B9AB    mov         dword ptr [ebp-18],eax
 0057B9AE    mov         eax,dword ptr [ebp-8]
 0057B9B1    mov         edx,dword ptr [ebp-4]
 0057B9B4    mov         ecx,dword ptr [edx+27C]
 0057B9BA    cdq
 0057B9BB    idiv        eax,ecx
 0057B9BD    mov         edx,dword ptr [ebp-4]
 0057B9C0    imul        dword ptr [edx+278]
 0057B9C6    mov         dword ptr [ebp-10],eax
 0057B9C9    mov         eax,dword ptr [ebp-8]
 0057B9CC    mov         edx,dword ptr [ebp-4]
 0057B9CF    mov         ecx,dword ptr [edx+27C]
 0057B9D5    cdq
 0057B9D6    idiv        eax,ecx
 0057B9D8    mov         eax,dword ptr [ebp-4]
 0057B9DB    imul        edx,dword ptr [eax+274]
 0057B9E2    mov         dword ptr [ebp-14],edx
 0057B9E5    mov         eax,dword ptr [ebp-4]
 0057B9E8    mov         eax,dword ptr [eax+278]
 0057B9EE    push        eax
 0057B9EF    lea         eax,[ebp-30]
 0057B9F2    push        eax
 0057B9F3    mov         eax,dword ptr [ebp-4]
 0057B9F6    mov         ecx,dword ptr [eax+274]
 0057B9FC    mov         edx,dword ptr [ebp-10]
 0057B9FF    mov         eax,dword ptr [ebp-14]
 0057BA02    call        Bounds
 0057BA07    mov         eax,dword ptr [ebp-4]
 0057BA0A    cmp         byte ptr [eax+1A5],0
>0057BA11    je          0057BA71
 0057BA13    mov         eax,dword ptr [ebp-4]
 0057BA16    mov         eax,dword ptr [eax+208]
 0057BA1C    mov         eax,dword ptr [eax+10]
 0057BA1F    mov         edx,8000000F
 0057BA24    call        TPen.SetColor
 0057BA29    mov         eax,dword ptr [ebp-28]
 0057BA2C    push        eax
 0057BA2D    mov         eax,dword ptr [ebp-24]
 0057BA30    push        eax
 0057BA31    mov         ecx,dword ptr [ebp-2C]
 0057BA34    mov         edx,dword ptr [ebp-30]
 0057BA37    mov         eax,dword ptr [ebp-4]
 0057BA3A    mov         eax,dword ptr [eax+208]
 0057BA40    call        005C1428
 0057BA45    push        0FF
 0057BA47    push        0FF
 0057BA49    lea         eax,[ebp-30]
 0057BA4C    push        eax
 0057BA4D    call        USER32.InflateRect
 0057BA52    push        80000014
 0057BA57    push        2
 0057BA59    lea         edx,[ebp-30]
 0057BA5C    mov         ecx,80000010
 0057BA61    mov         eax,dword ptr [ebp-4]
 0057BA64    mov         eax,dword ptr [eax+208]
 0057BA6A    call        Frame3D
>0057BA6F    jmp         0057BA84
 0057BA71    mov         eax,dword ptr [ebp-4]
 0057BA74    mov         eax,dword ptr [eax+208]
 0057BA7A    mov         eax,dword ptr [eax+10]
 0057BA7D    xor         edx,edx
 0057BA7F    call        TPen.SetColor
 0057BA84    mov         eax,dword ptr [ebp-18]
 0057BA87    mov         edx,dword ptr [ebp-4]
 0057BA8A    lea         eax,[edx+eax*4+210]
 0057BA91    mov         dword ptr [ebp-1C],eax
 0057BA94    mov         eax,dword ptr [ebp-1C]
 0057BA97    mov         cl,byte ptr [eax+2]
 0057BA9A    mov         eax,dword ptr [ebp-1C]
 0057BA9D    mov         dl,byte ptr [eax+1]
 0057BAA0    mov         eax,dword ptr [ebp-1C]
 0057BAA3    mov         al,byte ptr [eax]
 0057BAA5    call        RGB
 0057BAAA    mov         edx,eax
 0057BAAC    mov         eax,dword ptr [ebp-4]
 0057BAAF    mov         eax,dword ptr [eax+208]
 0057BAB5    mov         eax,dword ptr [eax+14]
 0057BAB8    call        TBrush.SetColor
 0057BABD    mov         eax,dword ptr [ebp-4]
 0057BAC0    cmp         byte ptr [eax+1A5],0
>0057BAC7    je          0057BAF2
 0057BAC9    mov         eax,dword ptr [ebp-1C]
 0057BACC    mov         cl,byte ptr [eax+2]
 0057BACF    mov         eax,dword ptr [ebp-1C]
 0057BAD2    mov         dl,byte ptr [eax+1]
 0057BAD5    mov         eax,dword ptr [ebp-1C]
 0057BAD8    mov         al,byte ptr [eax]
 0057BADA    call        RGB
 0057BADF    mov         edx,eax
 0057BAE1    mov         eax,dword ptr [ebp-4]
 0057BAE4    mov         eax,dword ptr [eax+208]
 0057BAEA    mov         eax,dword ptr [eax+10]
 0057BAED    call        TPen.SetColor
 0057BAF2    cmp         byte ptr [ebp-9],0
>0057BAF6    jne         0057BB19
 0057BAF8    mov         eax,dword ptr [ebp-28]
 0057BAFB    push        eax
 0057BAFC    mov         eax,dword ptr [ebp-24]
 0057BAFF    push        eax
 0057BB00    mov         ecx,dword ptr [ebp-2C]
 0057BB03    mov         edx,dword ptr [ebp-30]
 0057BB06    mov         eax,dword ptr [ebp-4]
 0057BB09    mov         eax,dword ptr [eax+208]
 0057BB0F    call        005C1428
>0057BB14    jmp         0057BBD3
 0057BB19    mov         eax,dword ptr [ebp-4]
 0057BB1C    cmp         byte ptr [eax+1A5],0
>0057BB23    je          0057BB68
 0057BB25    mov         eax,dword ptr [ebp-28]
 0057BB28    push        eax
 0057BB29    mov         eax,dword ptr [ebp-24]
 0057BB2C    push        eax
 0057BB2D    mov         ecx,dword ptr [ebp-2C]
 0057BB30    mov         edx,dword ptr [ebp-30]
 0057BB33    mov         eax,dword ptr [ebp-4]
 0057BB36    mov         eax,dword ptr [eax+208]
 0057BB3C    call        005C1428
 0057BB41    push        0FF
 0057BB43    push        0FF
 0057BB45    lea         eax,[ebp-30]
 0057BB48    push        eax
 0057BB49    call        USER32.InflateRect
 0057BB4E    lea         eax,[ebp-30]
 0057BB51    push        eax
 0057BB52    mov         eax,dword ptr [ebp-4]
 0057BB55    mov         eax,dword ptr [eax+208]
 0057BB5B    call        TCanvas.GetHandle
 0057BB60    push        eax
 0057BB61    call        USER32.DrawFocusRect
>0057BB66    jmp         0057BBD3
 0057BB68    mov         eax,dword ptr [ebp-4]
 0057BB6B    mov         eax,dword ptr [eax+208]
 0057BB71    mov         dword ptr [ebp-20],eax
 0057BB74    mov         eax,dword ptr [ebp-20]
 0057BB77    mov         eax,dword ptr [eax+10]
 0057BB7A    xor         edx,edx
 0057BB7C    call        TPen.SetColor
 0057BB81    mov         eax,dword ptr [ebp-20]
 0057BB84    mov         eax,dword ptr [eax+10]
 0057BB87    mov         dl,3
 0057BB89    call        TPen.SetMode
 0057BB8E    mov         eax,dword ptr [ebp-28]
 0057BB91    push        eax
 0057BB92    mov         eax,dword ptr [ebp-24]
 0057BB95    push        eax
 0057BB96    mov         ecx,dword ptr [ebp-2C]
 0057BB99    mov         edx,dword ptr [ebp-30]
 0057BB9C    mov         eax,dword ptr [ebp-20]
 0057BB9F    call        005C1428
 0057BBA4    mov         eax,dword ptr [ebp-20]
 0057BBA7    mov         eax,dword ptr [eax+10]
 0057BBAA    mov         dl,4
 0057BBAC    call        TPen.SetMode
 0057BBB1    mov         eax,dword ptr [ebp-28]
 0057BBB4    sub         eax,2
 0057BBB7    push        eax
 0057BBB8    mov         eax,dword ptr [ebp-24]
 0057BBBB    sub         eax,2
 0057BBBE    push        eax
 0057BBBF    mov         ecx,dword ptr [ebp-2C]
 0057BBC2    add         ecx,2
 0057BBC5    mov         edx,dword ptr [ebp-30]
 0057BBC8    add         edx,2;TRect.Left:Longint
 0057BBCB    mov         eax,dword ptr [ebp-20]
 0057BBCE    call        005C1428
 0057BBD3    mov         esp,ebp
 0057BBD5    pop         ebp
 0057BBD6    ret
end;*}

//0057BBD8
{*function sub_0057BBD8(?:?; ?:?; ?:?):?;
begin
 0057BBD8    push        ebp
 0057BBD9    mov         ebp,esp
 0057BBDB    add         esp,0FFFFFFF0
 0057BBDE    mov         dword ptr [ebp-0C],ecx
 0057BBE1    mov         dword ptr [ebp-8],edx
 0057BBE4    mov         byte ptr [ebp-1],al
 0057BBE7    cmp         byte ptr [ebp-1],0
>0057BBEB    je          0057BBF5
 0057BBED    mov         eax,dword ptr [ebp-8]
 0057BBF0    mov         dword ptr [ebp-10],eax
>0057BBF3    jmp         0057BBFB
 0057BBF5    mov         eax,dword ptr [ebp-0C]
 0057BBF8    mov         dword ptr [ebp-10],eax
 0057BBFB    mov         eax,dword ptr [ebp-10]
 0057BBFE    mov         esp,ebp
 0057BC00    pop         ebp
 0057BC01    ret
end;*}

//0057BC04
procedure sub_0057BC04(?:TColorGrid);
begin
{*
 0057BC04    push        ebp
 0057BC05    mov         ebp,esp
 0057BC07    add         esp,0FFFFFFDC
 0057BC0A    xor         edx,edx
 0057BC0C    mov         dword ptr [ebp-10],edx
 0057BC0F    mov         dword ptr [ebp-4],eax
 0057BC12    xor         eax,eax
 0057BC14    push        ebp
 0057BC15    push        57BF55
 0057BC1A    push        dword ptr fs:[eax]
 0057BC1D    mov         dword ptr fs:[eax],esp
 0057BC20    push        1
 0057BC22    mov         eax,dword ptr [ebp-4]
 0057BC25    mov         eax,dword ptr [eax+208]
 0057BC2B    call        TCanvas.GetHandle
 0057BC30    push        eax
 0057BC31    call        GDI32.SetBkMode
 0057BC36    mov         dword ptr [ebp-14],eax
 0057BC39    mov         eax,dword ptr [ebp-4]
 0057BC3C    cmp         byte ptr [eax+26C],0
>0057BC43    je          0057BDB0
 0057BC49    mov         eax,dword ptr [ebp-4]
 0057BC4C    mov         eax,dword ptr [eax+264]
 0057BC52    mov         edx,dword ptr [ebp-4]
 0057BC55    cmp         eax,dword ptr [edx+268]
>0057BC5B    jne         0057BC78
 0057BC5D    mov         eax,dword ptr [ebp-4]
 0057BC60    cmp         byte ptr [eax+26D],0
>0057BC67    je          0057BC78
 0057BC69    lea         edx,[ebp-10]
 0057BC6C    mov         eax,[006E9EAC];^gvar_0063CB68
 0057BC71    call        LoadResString
>0057BC76    jmp         0057BC85
 0057BC78    lea         edx,[ebp-10]
 0057BC7B    mov         eax,[006E9EB0];^gvar_0063CB70
 0057BC80    call        LoadResString
 0057BC85    mov         eax,dword ptr [ebp-4]
 0057BC88    cmp         dword ptr [eax+264],8
>0057BC8F    jge         0057BC9F
 0057BC91    mov         eax,dword ptr [ebp-4]
 0057BC94    mov         eax,dword ptr [eax+264]
 0057BC9A    mov         dword ptr [ebp-0C],eax
>0057BC9D    jmp         0057BCAE
 0057BC9F    mov         eax,dword ptr [ebp-4]
 0057BCA2    mov         eax,dword ptr [eax+264]
 0057BCA8    add         eax,4
 0057BCAB    mov         dword ptr [ebp-0C],eax
 0057BCAE    mov         eax,dword ptr [ebp-0C]
 0057BCB1    mov         edx,dword ptr [ebp-4]
 0057BCB4    mov         eax,dword ptr [edx+eax*4+210]
 0057BCBB    mov         dword ptr [ebp-8],eax
 0057BCBE    push        ebp
 0057BCBF    cmp         byte ptr [ebp-8],80
 0057BCC3    setae       al
 0057BCC6    mov         ecx,0FF
 0057BCCB    xor         edx,edx
 0057BCCD    call        0057BBD8
 0057BCD2    pop         ecx
 0057BCD3    mov         byte ptr [ebp-8],al
 0057BCD6    push        ebp
 0057BCD7    cmp         byte ptr [ebp-7],80
 0057BCDB    setae       al
 0057BCDE    mov         ecx,0FF
 0057BCE3    xor         edx,edx
 0057BCE5    call        0057BBD8
 0057BCEA    pop         ecx
 0057BCEB    mov         byte ptr [ebp-7],al
 0057BCEE    push        ebp
 0057BCEF    cmp         byte ptr [ebp-6],80
 0057BCF3    setae       al
 0057BCF6    mov         ecx,0FF
 0057BCFB    xor         edx,edx
 0057BCFD    call        0057BBD8
 0057BD02    pop         ecx
 0057BD03    mov         byte ptr [ebp-6],al
 0057BD06    mov         cl,byte ptr [ebp-6]
 0057BD09    mov         dl,byte ptr [ebp-7]
 0057BD0C    mov         al,byte ptr [ebp-8]
 0057BD0F    call        RGB
 0057BD14    mov         edx,eax
 0057BD16    mov         eax,dword ptr [ebp-4]
 0057BD19    mov         eax,dword ptr [eax+208]
 0057BD1F    mov         eax,dword ptr [eax+0C]
 0057BD22    call        TFont.SetColor
 0057BD27    mov         eax,dword ptr [ebp-4]
 0057BD2A    mov         eax,dword ptr [eax+264]
 0057BD30    mov         edx,dword ptr [ebp-4]
 0057BD33    mov         ecx,dword ptr [edx+27C]
 0057BD39    cdq
 0057BD3A    idiv        eax,ecx
 0057BD3C    mov         eax,dword ptr [ebp-4]
 0057BD3F    imul        edx,dword ptr [eax+274]
 0057BD46    mov         dword ptr [ebp-24],edx
 0057BD49    mov         eax,dword ptr [ebp-24]
 0057BD4C    mov         edx,dword ptr [ebp-4]
 0057BD4F    add         eax,dword ptr [edx+274]
 0057BD55    mov         dword ptr [ebp-1C],eax
 0057BD58    mov         eax,dword ptr [ebp-4]
 0057BD5B    mov         eax,dword ptr [eax+264]
 0057BD61    mov         edx,dword ptr [ebp-4]
 0057BD64    mov         ecx,dword ptr [edx+27C]
 0057BD6A    cdq
 0057BD6B    idiv        eax,ecx
 0057BD6D    mov         edx,dword ptr [ebp-4]
 0057BD70    imul        dword ptr [edx+278]
 0057BD76    mov         dword ptr [ebp-20],eax
 0057BD79    mov         eax,dword ptr [ebp-20]
 0057BD7C    mov         edx,dword ptr [ebp-4]
 0057BD7F    add         eax,dword ptr [edx+278]
 0057BD85    mov         dword ptr [ebp-18],eax
 0057BD88    push        125
 0057BD8D    lea         eax,[ebp-24]
 0057BD90    push        eax
 0057BD91    push        0FF
 0057BD93    mov         eax,dword ptr [ebp-10]
 0057BD96    call        @LStrToPChar
 0057BD9B    push        eax
 0057BD9C    mov         eax,dword ptr [ebp-4]
 0057BD9F    mov         eax,dword ptr [eax+208]
 0057BDA5    call        TCanvas.GetHandle
 0057BDAA    push        eax
 0057BDAB    call        USER32.DrawTextA
 0057BDB0    mov         eax,dword ptr [ebp-4]
 0057BDB3    cmp         byte ptr [eax+26D],0
>0057BDBA    je          0057BF27
 0057BDC0    mov         eax,dword ptr [ebp-4]
 0057BDC3    mov         eax,dword ptr [eax+264]
 0057BDC9    mov         edx,dword ptr [ebp-4]
 0057BDCC    cmp         eax,dword ptr [edx+268]
>0057BDD2    jne         0057BDEF
 0057BDD4    mov         eax,dword ptr [ebp-4]
 0057BDD7    cmp         byte ptr [eax+26C],0
>0057BDDE    je          0057BDEF
 0057BDE0    lea         edx,[ebp-10]
 0057BDE3    mov         eax,[006E9EAC];^gvar_0063CB68
 0057BDE8    call        LoadResString
>0057BDED    jmp         0057BDFC
 0057BDEF    lea         edx,[ebp-10]
 0057BDF2    mov         eax,[006E9EB4];^gvar_0063CB78
 0057BDF7    call        LoadResString
 0057BDFC    mov         eax,dword ptr [ebp-4]
 0057BDFF    cmp         dword ptr [eax+268],8
>0057BE06    jge         0057BE16
 0057BE08    mov         eax,dword ptr [ebp-4]
 0057BE0B    mov         eax,dword ptr [eax+268]
 0057BE11    mov         dword ptr [ebp-0C],eax
>0057BE14    jmp         0057BE25
 0057BE16    mov         eax,dword ptr [ebp-4]
 0057BE19    mov         eax,dword ptr [eax+268]
 0057BE1F    add         eax,4
 0057BE22    mov         dword ptr [ebp-0C],eax
 0057BE25    mov         eax,dword ptr [ebp-0C]
 0057BE28    mov         edx,dword ptr [ebp-4]
 0057BE2B    mov         eax,dword ptr [edx+eax*4+210]
 0057BE32    mov         dword ptr [ebp-8],eax
 0057BE35    push        ebp
 0057BE36    cmp         byte ptr [ebp-8],80
 0057BE3A    setae       al
 0057BE3D    mov         ecx,0FF
 0057BE42    xor         edx,edx
 0057BE44    call        0057BBD8
 0057BE49    pop         ecx
 0057BE4A    mov         byte ptr [ebp-8],al
 0057BE4D    push        ebp
 0057BE4E    cmp         byte ptr [ebp-7],80
 0057BE52    setae       al
 0057BE55    mov         ecx,0FF
 0057BE5A    xor         edx,edx
 0057BE5C    call        0057BBD8
 0057BE61    pop         ecx
 0057BE62    mov         byte ptr [ebp-7],al
 0057BE65    push        ebp
 0057BE66    cmp         byte ptr [ebp-6],80
 0057BE6A    setae       al
 0057BE6D    mov         ecx,0FF
 0057BE72    xor         edx,edx
 0057BE74    call        0057BBD8
 0057BE79    pop         ecx
 0057BE7A    mov         byte ptr [ebp-6],al
 0057BE7D    mov         cl,byte ptr [ebp-6]
 0057BE80    mov         dl,byte ptr [ebp-7]
 0057BE83    mov         al,byte ptr [ebp-8]
 0057BE86    call        RGB
 0057BE8B    mov         edx,eax
 0057BE8D    mov         eax,dword ptr [ebp-4]
 0057BE90    mov         eax,dword ptr [eax+208]
 0057BE96    mov         eax,dword ptr [eax+0C]
 0057BE99    call        TFont.SetColor
 0057BE9E    mov         eax,dword ptr [ebp-4]
 0057BEA1    mov         eax,dword ptr [eax+268]
 0057BEA7    mov         edx,dword ptr [ebp-4]
 0057BEAA    mov         ecx,dword ptr [edx+27C]
 0057BEB0    cdq
 0057BEB1    idiv        eax,ecx
 0057BEB3    mov         eax,dword ptr [ebp-4]
 0057BEB6    imul        edx,dword ptr [eax+274]
 0057BEBD    mov         dword ptr [ebp-24],edx
 0057BEC0    mov         eax,dword ptr [ebp-24]
 0057BEC3    mov         edx,dword ptr [ebp-4]
 0057BEC6    add         eax,dword ptr [edx+274]
 0057BECC    mov         dword ptr [ebp-1C],eax
 0057BECF    mov         eax,dword ptr [ebp-4]
 0057BED2    mov         eax,dword ptr [eax+268]
 0057BED8    mov         edx,dword ptr [ebp-4]
 0057BEDB    mov         ecx,dword ptr [edx+27C]
 0057BEE1    cdq
 0057BEE2    idiv        eax,ecx
 0057BEE4    mov         edx,dword ptr [ebp-4]
 0057BEE7    imul        dword ptr [edx+278]
 0057BEED    mov         dword ptr [ebp-20],eax
 0057BEF0    mov         eax,dword ptr [ebp-20]
 0057BEF3    mov         edx,dword ptr [ebp-4]
 0057BEF6    add         eax,dword ptr [edx+278]
 0057BEFC    mov         dword ptr [ebp-18],eax
 0057BEFF    push        125
 0057BF04    lea         eax,[ebp-24]
 0057BF07    push        eax
 0057BF08    push        0FF
 0057BF0A    mov         eax,dword ptr [ebp-10]
 0057BF0D    call        @LStrToPChar
 0057BF12    push        eax
 0057BF13    mov         eax,dword ptr [ebp-4]
 0057BF16    mov         eax,dword ptr [eax+208]
 0057BF1C    call        TCanvas.GetHandle
 0057BF21    push        eax
 0057BF22    call        USER32.DrawTextA
 0057BF27    mov         eax,dword ptr [ebp-14]
 0057BF2A    push        eax
 0057BF2B    mov         eax,dword ptr [ebp-4]
 0057BF2E    mov         eax,dword ptr [eax+208]
 0057BF34    call        TCanvas.GetHandle
 0057BF39    push        eax
 0057BF3A    call        GDI32.SetBkMode
 0057BF3F    xor         eax,eax
 0057BF41    pop         edx
 0057BF42    pop         ecx
 0057BF43    pop         ecx
 0057BF44    mov         dword ptr fs:[eax],edx
 0057BF47    push        57BF5C
 0057BF4C    lea         eax,[ebp-10]
 0057BF4F    call        @LStrClr
 0057BF54    ret
>0057BF55    jmp         @HandleFinally
>0057BF5A    jmp         0057BF4C
 0057BF5C    mov         esp,ebp
 0057BF5E    pop         ebp
 0057BF5F    ret
*}
end;

//0057BF60
procedure TColorGrid.SetForegroundEnabled(Value:Boolean);
begin
{*
 0057BF60    push        ebp
 0057BF61    mov         ebp,esp
 0057BF63    add         esp,0FFFFFFF8
 0057BF66    mov         byte ptr [ebp-5],dl
 0057BF69    mov         dword ptr [ebp-4],eax
 0057BF6C    mov         eax,dword ptr [ebp-4]
 0057BF6F    mov         al,byte ptr [eax+26C];TColorGrid.ForegroundEnabled:Boolean
 0057BF75    cmp         al,byte ptr [ebp-5]
>0057BF78    je          0057BFC5
 0057BF7A    mov         al,byte ptr [ebp-5]
 0057BF7D    mov         edx,dword ptr [ebp-4]
 0057BF80    mov         byte ptr [edx+26C],al;TColorGrid.ForegroundEnabled:Boolean
 0057BF86    mov         eax,dword ptr [ebp-4]
 0057BF89    mov         eax,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057BF8F    mov         edx,dword ptr [ebp-4]
 0057BF92    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057BF98    jne         0057BFA6
 0057BF9A    mov         eax,dword ptr [ebp-4]
 0057BF9D    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057BFA4    jne         0057BFAA
 0057BFA6    xor         ecx,ecx
>0057BFA8    jmp         0057BFAC
 0057BFAA    mov         cl,1
 0057BFAC    mov         eax,dword ptr [ebp-4]
 0057BFAF    mov         edx,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057BFB5    mov         eax,dword ptr [ebp-4]
 0057BFB8    call        0057B974
 0057BFBD    mov         eax,dword ptr [ebp-4]
 0057BFC0    call        0057BC04
 0057BFC5    pop         ecx
 0057BFC6    pop         ecx
 0057BFC7    pop         ebp
 0057BFC8    ret
*}
end;

//0057BFCC
procedure TColorGrid.SetBackgroundEnabled(Value:Boolean);
begin
{*
 0057BFCC    push        ebp
 0057BFCD    mov         ebp,esp
 0057BFCF    add         esp,0FFFFFFF8
 0057BFD2    mov         byte ptr [ebp-5],dl
 0057BFD5    mov         dword ptr [ebp-4],eax
 0057BFD8    mov         eax,dword ptr [ebp-4]
 0057BFDB    mov         al,byte ptr [eax+26D];TColorGrid.BackgroundEnabled:Boolean
 0057BFE1    cmp         al,byte ptr [ebp-5]
>0057BFE4    je          0057C031
 0057BFE6    mov         al,byte ptr [ebp-5]
 0057BFE9    mov         edx,dword ptr [ebp-4]
 0057BFEC    mov         byte ptr [edx+26D],al;TColorGrid.BackgroundEnabled:Boolean
 0057BFF2    mov         eax,dword ptr [ebp-4]
 0057BFF5    mov         eax,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057BFFB    mov         edx,dword ptr [ebp-4]
 0057BFFE    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C004    jne         0057C012
 0057C006    mov         eax,dword ptr [ebp-4]
 0057C009    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057C010    jne         0057C016
 0057C012    xor         ecx,ecx
>0057C014    jmp         0057C018
 0057C016    mov         cl,1
 0057C018    mov         eax,dword ptr [ebp-4]
 0057C01B    mov         edx,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C021    mov         eax,dword ptr [ebp-4]
 0057C024    call        0057B974
 0057C029    mov         eax,dword ptr [ebp-4]
 0057C02C    call        0057BC04
 0057C031    pop         ecx
 0057C032    pop         ecx
 0057C033    pop         ebp
 0057C034    ret
*}
end;

//0057C038
{*procedure TColorGrid.WMSetFocus(?:?);
begin
 0057C038    push        ebp
 0057C039    mov         ebp,esp
 0057C03B    add         esp,0FFFFFFF8
 0057C03E    mov         dword ptr [ebp-8],edx
 0057C041    mov         dword ptr [ebp-4],eax
 0057C044    mov         eax,dword ptr [ebp-4]
 0057C047    mov         byte ptr [eax+285],1;TColorGrid.FHasFocus:Boolean
 0057C04E    mov         cl,1
 0057C050    mov         eax,dword ptr [ebp-4]
 0057C053    mov         edx,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C059    mov         eax,dword ptr [ebp-4]
 0057C05C    call        0057B974
 0057C061    mov         eax,dword ptr [ebp-4]
 0057C064    call        0057BC04
 0057C069    mov         edx,dword ptr [ebp-8]
 0057C06C    mov         eax,dword ptr [ebp-4]
 0057C06F    call        TWinControl.WMSetFocus
 0057C074    pop         ecx
 0057C075    pop         ecx
 0057C076    pop         ebp
 0057C077    ret
end;*}

//0057C078
{*procedure TColorGrid.WMKillFocus(?:?);
begin
 0057C078    push        ebp
 0057C079    mov         ebp,esp
 0057C07B    add         esp,0FFFFFFF8
 0057C07E    mov         dword ptr [ebp-8],edx
 0057C081    mov         dword ptr [ebp-4],eax
 0057C084    mov         eax,dword ptr [ebp-4]
 0057C087    mov         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
 0057C08E    xor         ecx,ecx
 0057C090    mov         eax,dword ptr [ebp-4]
 0057C093    mov         edx,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C099    mov         eax,dword ptr [ebp-4]
 0057C09C    call        0057B974
 0057C0A1    mov         eax,dword ptr [ebp-4]
 0057C0A4    call        0057BC04
 0057C0A9    mov         edx,dword ptr [ebp-8]
 0057C0AC    mov         eax,dword ptr [ebp-4]
 0057C0AF    call        TWinControl.WMKillFocus
 0057C0B4    pop         ecx
 0057C0B5    pop         ecx
 0057C0B6    pop         ebp
 0057C0B7    ret
end;*}

//0057C0B8
{*procedure TColorGrid.sub_0057C0B8(?:?; ?:?);
begin
 0057C0B8    push        ebp
 0057C0B9    mov         ebp,esp
 0057C0BB    add         esp,0FFFFFFEC
 0057C0BE    push        esi
 0057C0BF    mov         byte ptr [ebp-9],cl
 0057C0C2    mov         dword ptr [ebp-8],edx
 0057C0C5    mov         dword ptr [ebp-4],eax
 0057C0C8    mov         edx,dword ptr [ebp-8]
 0057C0CB    mov         cl,byte ptr [ebp-9]
 0057C0CE    mov         eax,dword ptr [ebp-4]
 0057C0D1    call        TWinControl.sub_005FA804
 0057C0D6    mov         eax,dword ptr [ebp-4]
 0057C0D9    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C0DF    mov         dword ptr [ebp-10],eax
 0057C0E2    mov         eax,dword ptr [ebp-4]
 0057C0E5    mov         eax,dword ptr [eax+27C];TColorGrid.FNumXSquares:Integer
 0057C0EB    mov         edx,dword ptr [ebp-4]
 0057C0EE    imul        dword ptr [edx+280];TColorGrid.FNumYSquares:Integer
 0057C0F4    mov         dword ptr [ebp-14],eax
 0057C0F7    mov         eax,dword ptr [ebp-8]
 0057C0FA    movzx       eax,word ptr [eax]
 0057C0FD    cmp         eax,27
>0057C100    jg          0057C137
>0057C102    je          0057C378
 0057C108    add         eax,0FFFFFFE0
 0057C10B    cmp         eax,6
>0057C10E    ja          0057C3A6
 0057C114    jmp         dword ptr [eax*4+57C11B]
 0057C114    dd          0057C378
 0057C114    dd          0057C3A6
 0057C114    dd          0057C3A6
 0057C114    dd          0057C39D
 0057C114    dd          0057C281
 0057C114    dd          0057C2EF
 0057C114    dd          0057C28B
 0057C137    cmp         eax,46
>0057C13A    jg          0057C155
>0057C13C    je          0057C167
 0057C13E    sub         eax,28
>0057C141    je          0057C319
 0057C147    sub         eax,1A
>0057C14A    je          0057C1F4
>0057C150    jmp         0057C3A6
 0057C155    sub         eax,62
>0057C158    je          0057C1F4
 0057C15E    sub         eax,4
>0057C161    jne         0057C3A6
 0057C167    mov         eax,dword ptr [ebp-4]
 0057C16A    cmp         byte ptr [eax+26C],0;TColorGrid.ForegroundEnabled:Boolean
>0057C171    jne         0057C1CD
 0057C173    mov         eax,dword ptr [ebp-4]
 0057C176    cmp         byte ptr [eax+260],0;TColorGrid.ClickEnablesColor:Boolean
>0057C17D    je          0057C1CD
 0057C17F    mov         eax,dword ptr [ebp-4]
 0057C182    mov         byte ptr [eax+26C],1;TColorGrid.ForegroundEnabled:Boolean
 0057C189    mov         eax,dword ptr [ebp-4]
 0057C18C    mov         eax,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C192    mov         edx,dword ptr [ebp-4]
 0057C195    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C19B    jne         0057C1A9
 0057C19D    mov         eax,dword ptr [ebp-4]
 0057C1A0    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057C1A7    jne         0057C1AD
 0057C1A9    xor         ecx,ecx
>0057C1AB    jmp         0057C1AF
 0057C1AD    mov         cl,1
 0057C1AF    mov         eax,dword ptr [ebp-4]
 0057C1B2    mov         edx,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C1B8    mov         eax,dword ptr [ebp-4]
 0057C1BB    call        0057B974
 0057C1C0    mov         eax,dword ptr [ebp-4]
 0057C1C3    mov         dword ptr [eax+264],0FFFFFFFF;TColorGrid.ForegroundIndex:Integer
 0057C1CD    mov         edx,dword ptr [ebp-10]
 0057C1D0    mov         eax,dword ptr [ebp-4]
 0057C1D3    call        TColorGrid.SetForegroundIndex
 0057C1D8    mov         edx,dword ptr [ebp-10]
 0057C1DB    mov         eax,dword ptr [ebp-4]
 0057C1DE    call        TColorGrid.SetSelection
 0057C1E3    mov         eax,dword ptr [ebp-4]
 0057C1E6    mov         si,0FFEB
 0057C1EA    call        @CallDynaInst;TControl.sub_005F5478
>0057C1EF    jmp         0057C3B6
 0057C1F4    mov         eax,dword ptr [ebp-4]
 0057C1F7    cmp         byte ptr [eax+26D],0;TColorGrid.BackgroundEnabled:Boolean
>0057C1FE    jne         0057C25A
 0057C200    mov         eax,dword ptr [ebp-4]
 0057C203    cmp         byte ptr [eax+260],0;TColorGrid.ClickEnablesColor:Boolean
>0057C20A    je          0057C25A
 0057C20C    mov         eax,dword ptr [ebp-4]
 0057C20F    mov         byte ptr [eax+26D],1;TColorGrid.BackgroundEnabled:Boolean
 0057C216    mov         eax,dword ptr [ebp-4]
 0057C219    mov         eax,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C21F    mov         edx,dword ptr [ebp-4]
 0057C222    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C228    jne         0057C236
 0057C22A    mov         eax,dword ptr [ebp-4]
 0057C22D    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057C234    jne         0057C23A
 0057C236    xor         ecx,ecx
>0057C238    jmp         0057C23C
 0057C23A    mov         cl,1
 0057C23C    mov         eax,dword ptr [ebp-4]
 0057C23F    mov         edx,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C245    mov         eax,dword ptr [ebp-4]
 0057C248    call        0057B974
 0057C24D    mov         eax,dword ptr [ebp-4]
 0057C250    mov         dword ptr [eax+268],0FFFFFFFF;TColorGrid.BackgroundIndex:Integer
 0057C25A    mov         edx,dword ptr [ebp-10]
 0057C25D    mov         eax,dword ptr [ebp-4]
 0057C260    call        TColorGrid.SetBackgroundIndex
 0057C265    mov         edx,dword ptr [ebp-10]
 0057C268    mov         eax,dword ptr [ebp-4]
 0057C26B    call        TColorGrid.SetSelection
 0057C270    mov         eax,dword ptr [ebp-4]
 0057C273    mov         si,0FFEB
 0057C277    call        @CallDynaInst;TControl.sub_005F5478
>0057C27C    jmp         0057C3B6
 0057C281    xor         eax,eax
 0057C283    mov         dword ptr [ebp-10],eax
>0057C286    jmp         0057C3B6
 0057C28B    mov         eax,dword ptr [ebp-4]
 0057C28E    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C294    mov         edx,dword ptr [ebp-4]
 0057C297    cmp         eax,dword ptr [edx+27C];TColorGrid.FNumXSquares:Integer
>0057C29D    jl          0057C2B9
 0057C29F    mov         eax,dword ptr [ebp-4]
 0057C2A2    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C2A8    mov         edx,dword ptr [ebp-4]
 0057C2AB    sub         eax,dword ptr [edx+27C]
 0057C2B1    mov         dword ptr [ebp-10],eax
>0057C2B4    jmp         0057C3B6
 0057C2B9    mov         eax,dword ptr [ebp-4]
 0057C2BC    cmp         dword ptr [eax+270],0;TColorGrid.Selection:Integer
>0057C2C3    je          0057C2E3
 0057C2C5    mov         eax,dword ptr [ebp-14]
 0057C2C8    mov         edx,dword ptr [ebp-4]
 0057C2CB    sub         eax,dword ptr [edx+27C]
 0057C2D1    mov         edx,dword ptr [ebp-4]
 0057C2D4    add         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
 0057C2DA    dec         eax
 0057C2DB    mov         dword ptr [ebp-10],eax
>0057C2DE    jmp         0057C3B6
 0057C2E3    mov         eax,dword ptr [ebp-14]
 0057C2E6    dec         eax
 0057C2E7    mov         dword ptr [ebp-10],eax
>0057C2EA    jmp         0057C3B6
 0057C2EF    mov         eax,dword ptr [ebp-4]
 0057C2F2    cmp         dword ptr [eax+270],0;TColorGrid.Selection:Integer
>0057C2F9    je          0057C30D
 0057C2FB    mov         eax,dword ptr [ebp-4]
 0057C2FE    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C304    dec         eax
 0057C305    mov         dword ptr [ebp-10],eax
>0057C308    jmp         0057C3B6
 0057C30D    mov         eax,dword ptr [ebp-14]
 0057C310    dec         eax
 0057C311    mov         dword ptr [ebp-10],eax
>0057C314    jmp         0057C3B6
 0057C319    mov         eax,dword ptr [ebp-4]
 0057C31C    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C322    mov         edx,dword ptr [ebp-4]
 0057C325    add         eax,dword ptr [edx+27C];TColorGrid.FNumXSquares:Integer
 0057C32B    cmp         eax,dword ptr [ebp-14]
>0057C32E    jge         0057C347
 0057C330    mov         eax,dword ptr [ebp-4]
 0057C333    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C339    mov         edx,dword ptr [ebp-4]
 0057C33C    add         eax,dword ptr [edx+27C];TColorGrid.FNumXSquares:Integer
 0057C342    mov         dword ptr [ebp-10],eax
>0057C345    jmp         0057C3B6
 0057C347    mov         eax,dword ptr [ebp-14]
 0057C34A    dec         eax
 0057C34B    mov         edx,dword ptr [ebp-4]
 0057C34E    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C354    je          0057C371
 0057C356    mov         eax,dword ptr [ebp-4]
 0057C359    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C35F    mov         edx,dword ptr [ebp-4]
 0057C362    mov         ecx,dword ptr [edx+27C];TColorGrid.FNumXSquares:Integer
 0057C368    cdq
 0057C369    idiv        eax,ecx
 0057C36B    inc         edx
 0057C36C    mov         dword ptr [ebp-10],edx
>0057C36F    jmp         0057C3B6
 0057C371    xor         eax,eax
 0057C373    mov         dword ptr [ebp-10],eax
>0057C376    jmp         0057C3B6
 0057C378    mov         eax,dword ptr [ebp-14]
 0057C37B    dec         eax
 0057C37C    mov         edx,dword ptr [ebp-4]
 0057C37F    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C385    je          0057C396
 0057C387    mov         eax,dword ptr [ebp-4]
 0057C38A    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C390    inc         eax
 0057C391    mov         dword ptr [ebp-10],eax
>0057C394    jmp         0057C3B6
 0057C396    xor         eax,eax
 0057C398    mov         dword ptr [ebp-10],eax
>0057C39B    jmp         0057C3B6
 0057C39D    mov         eax,dword ptr [ebp-14]
 0057C3A0    dec         eax
 0057C3A1    mov         dword ptr [ebp-10],eax
>0057C3A4    jmp         0057C3B6
 0057C3A6    mov         edx,dword ptr [ebp-8]
 0057C3A9    mov         cl,byte ptr [ebp-9]
 0057C3AC    mov         eax,dword ptr [ebp-4]
 0057C3AF    call        TWinControl.sub_005FA804
>0057C3B4    jmp         0057C3D7
 0057C3B6    mov         eax,dword ptr [ebp-8]
 0057C3B9    mov         word ptr [eax],0
 0057C3BE    mov         eax,dword ptr [ebp-4]
 0057C3C1    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C3C7    cmp         eax,dword ptr [ebp-10]
>0057C3CA    je          0057C3D7
 0057C3CC    mov         edx,dword ptr [ebp-10]
 0057C3CF    mov         eax,dword ptr [ebp-4]
 0057C3D2    call        TColorGrid.SetSelection
 0057C3D7    pop         esi
 0057C3D8    mov         esp,ebp
 0057C3DA    pop         ebp
 0057C3DB    ret
end;*}

//0057C3DC
{*procedure TColorGrid.WMGetDlgCode(?:?);
begin
 0057C3DC    push        ebp
 0057C3DD    mov         ebp,esp
 0057C3DF    add         esp,0FFFFFFF8
 0057C3E2    mov         dword ptr [ebp-8],edx
 0057C3E5    mov         dword ptr [ebp-4],eax
 0057C3E8    mov         eax,dword ptr [ebp-8]
 0057C3EB    mov         dword ptr [eax+0C],81
 0057C3F2    pop         ecx
 0057C3F3    pop         ecx
 0057C3F4    pop         ebp
 0057C3F5    ret
end;*}

//0057C3F8
{*procedure TColorGrid.WMSize(?:?);
begin
 0057C3F8    push        ebp
 0057C3F9    mov         ebp,esp
 0057C3FB    add         esp,0FFFFFFF8
 0057C3FE    mov         dword ptr [ebp-8],edx
 0057C401    mov         dword ptr [ebp-4],eax
 0057C404    mov         eax,dword ptr [ebp-4]
 0057C407    call        005F7800
 0057C40C    xor         eax,eax
 0057C40E    push        ebp
 0057C40F    push        57C445
 0057C414    push        dword ptr fs:[eax]
 0057C417    mov         dword ptr fs:[eax],esp
 0057C41A    mov         edx,dword ptr [ebp-8]
 0057C41D    mov         eax,dword ptr [ebp-4]
 0057C420    call        TWinControl.WMSize
 0057C425    xor         edx,edx
 0057C427    mov         eax,dword ptr [ebp-4]
 0057C42A    call        0057CA70
 0057C42F    xor         eax,eax
 0057C431    pop         edx
 0057C432    pop         ecx
 0057C433    pop         ecx
 0057C434    mov         dword ptr fs:[eax],edx
 0057C437    push        57C44C
 0057C43C    mov         eax,dword ptr [ebp-4]
 0057C43F    call        005F7814
 0057C444    ret
>0057C445    jmp         @HandleFinally
>0057C44A    jmp         0057C43C
 0057C44C    pop         ecx
 0057C44D    pop         ecx
 0057C44E    pop         ebp
 0057C44F    ret
end;*}

//0057C450
{*procedure TColorGrid.CMCtl3DChanged(?:?);
begin
 0057C450    push        ebp
 0057C451    mov         ebp,esp
 0057C453    add         esp,0FFFFFFF8
 0057C456    mov         dword ptr [ebp-8],edx
 0057C459    mov         dword ptr [ebp-4],eax
 0057C45C    mov         edx,dword ptr [ebp-8]
 0057C45F    mov         eax,dword ptr [ebp-4]
 0057C462    call        TWinControl.CMCtl3DChanged
 0057C467    mov         eax,dword ptr [ebp-4]
 0057C46A    mov         edx,dword ptr [eax]
 0057C46C    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057C46F    pop         ecx
 0057C470    pop         ecx
 0057C471    pop         ebp
 0057C472    ret
end;*}

//0057C474
procedure TColorGrid.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0057C474    push        ebp
 0057C475    mov         ebp,esp
 0057C477    add         esp,0FFFFFFF4
 0057C47A    mov         byte ptr [ebp-6],cl
 0057C47D    mov         byte ptr [ebp-5],dl
 0057C480    mov         dword ptr [ebp-4],eax
 0057C483    mov         eax,dword ptr [ebp+0C]
 0057C486    push        eax
 0057C487    mov         eax,dword ptr [ebp+8]
 0057C48A    push        eax
 0057C48B    mov         cl,byte ptr [ebp-6]
 0057C48E    mov         dl,byte ptr [ebp-5]
 0057C491    mov         eax,dword ptr [ebp-4]
 0057C494    call        TControl.MouseDown
 0057C499    mov         al,byte ptr [ebp-5]
 0057C49C    mov         edx,dword ptr [ebp-4]
 0057C49F    mov         byte ptr [edx+290],al;TColorGrid.FButton:TMouseButton
 0057C4A5    mov         eax,dword ptr [ebp-4]
 0057C4A8    mov         byte ptr [eax+291],1;TColorGrid.FButtonDown:Boolean
 0057C4AF    mov         ecx,dword ptr [ebp+8]
 0057C4B2    mov         edx,dword ptr [ebp+0C]
 0057C4B5    mov         eax,dword ptr [ebp-4]
 0057C4B8    call        0057C9E0
 0057C4BD    mov         dword ptr [ebp-0C],eax
 0057C4C0    cmp         byte ptr [ebp-5],0
>0057C4C4    jne         0057C53C
 0057C4C6    mov         eax,dword ptr [ebp-4]
 0057C4C9    cmp         byte ptr [eax+26C],0;TColorGrid.ForegroundEnabled:Boolean
>0057C4D0    jne         0057C52C
 0057C4D2    mov         eax,dword ptr [ebp-4]
 0057C4D5    cmp         byte ptr [eax+260],0;TColorGrid.ClickEnablesColor:Boolean
>0057C4DC    je          0057C52C
 0057C4DE    mov         eax,dword ptr [ebp-4]
 0057C4E1    mov         byte ptr [eax+26C],1;TColorGrid.ForegroundEnabled:Boolean
 0057C4E8    mov         eax,dword ptr [ebp-4]
 0057C4EB    mov         eax,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C4F1    mov         edx,dword ptr [ebp-4]
 0057C4F4    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C4FA    jne         0057C508
 0057C4FC    mov         eax,dword ptr [ebp-4]
 0057C4FF    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057C506    jne         0057C50C
 0057C508    xor         ecx,ecx
>0057C50A    jmp         0057C50E
 0057C50C    mov         cl,1
 0057C50E    mov         eax,dword ptr [ebp-4]
 0057C511    mov         edx,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C517    mov         eax,dword ptr [ebp-4]
 0057C51A    call        0057B974
 0057C51F    mov         eax,dword ptr [ebp-4]
 0057C522    mov         dword ptr [eax+264],0FFFFFFFF;TColorGrid.ForegroundIndex:Integer
 0057C52C    mov         edx,dword ptr [ebp-0C]
 0057C52F    mov         eax,dword ptr [ebp-4]
 0057C532    call        TColorGrid.SetForegroundIndex
>0057C537    jmp         0057C5BD
 0057C53C    cmp         byte ptr [ebp-5],1
>0057C540    jne         0057C5BD
 0057C542    mov         dl,1
 0057C544    mov         eax,dword ptr [ebp-4]
 0057C547    call        005F3AF0
 0057C54C    mov         eax,dword ptr [ebp-4]
 0057C54F    cmp         byte ptr [eax+26D],0;TColorGrid.BackgroundEnabled:Boolean
>0057C556    jne         0057C5B2
 0057C558    mov         eax,dword ptr [ebp-4]
 0057C55B    cmp         byte ptr [eax+260],0;TColorGrid.ClickEnablesColor:Boolean
>0057C562    je          0057C5B2
 0057C564    mov         eax,dword ptr [ebp-4]
 0057C567    mov         byte ptr [eax+26D],1;TColorGrid.BackgroundEnabled:Boolean
 0057C56E    mov         eax,dword ptr [ebp-4]
 0057C571    mov         eax,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C577    mov         edx,dword ptr [ebp-4]
 0057C57A    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C580    jne         0057C58E
 0057C582    mov         eax,dword ptr [ebp-4]
 0057C585    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057C58C    jne         0057C592
 0057C58E    xor         ecx,ecx
>0057C590    jmp         0057C594
 0057C592    mov         cl,1
 0057C594    mov         eax,dword ptr [ebp-4]
 0057C597    mov         edx,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C59D    mov         eax,dword ptr [ebp-4]
 0057C5A0    call        0057B974
 0057C5A5    mov         eax,dword ptr [ebp-4]
 0057C5A8    mov         dword ptr [eax+268],0FFFFFFFF;TColorGrid.BackgroundIndex:Integer
 0057C5B2    mov         edx,dword ptr [ebp-0C]
 0057C5B5    mov         eax,dword ptr [ebp-4]
 0057C5B8    call        TColorGrid.SetBackgroundIndex
 0057C5BD    mov         edx,dword ptr [ebp-0C]
 0057C5C0    mov         eax,dword ptr [ebp-4]
 0057C5C3    call        TColorGrid.SetSelection
 0057C5C8    mov         eax,dword ptr [ebp-4]
 0057C5CB    cmp         byte ptr [eax+1A4],0;TColorGrid.FTabStop:Boolean
>0057C5D2    je          0057C5DF
 0057C5D4    mov         eax,dword ptr [ebp-4]
 0057C5D7    mov         edx,dword ptr [eax]
 0057C5D9    call        dword ptr [edx+0C0];TColorGrid.sub_005FBFF0
 0057C5DF    mov         esp,ebp
 0057C5E1    pop         ebp
 0057C5E2    ret         8
*}
end;

//0057C5E8
procedure TColorGrid.MouseMove(Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0057C5E8    push        ebp
 0057C5E9    mov         ebp,esp
 0057C5EB    add         esp,0FFFFFFF0
 0057C5EE    mov         dword ptr [ebp-0C],ecx
 0057C5F1    mov         byte ptr [ebp-5],dl
 0057C5F4    mov         dword ptr [ebp-4],eax
 0057C5F7    mov         eax,dword ptr [ebp+8]
 0057C5FA    push        eax
 0057C5FB    mov         ecx,dword ptr [ebp-0C]
 0057C5FE    mov         dl,byte ptr [ebp-5]
 0057C601    mov         eax,dword ptr [ebp-4]
 0057C604    call        TControl.MouseMove
 0057C609    mov         eax,dword ptr [ebp-4]
 0057C60C    cmp         byte ptr [eax+291],0;TColorGrid.FButtonDown:Boolean
>0057C613    je          0057C661
 0057C615    mov         ecx,dword ptr [ebp+8]
 0057C618    mov         edx,dword ptr [ebp-0C]
 0057C61B    mov         eax,dword ptr [ebp-4]
 0057C61E    call        0057C9E0
 0057C623    mov         dword ptr [ebp-10],eax
 0057C626    mov         eax,dword ptr [ebp-4]
 0057C629    cmp         byte ptr [eax+290],0;TColorGrid.FButton:TMouseButton
>0057C630    jne         0057C63F
 0057C632    mov         edx,dword ptr [ebp-10]
 0057C635    mov         eax,dword ptr [ebp-4]
 0057C638    call        TColorGrid.SetForegroundIndex
>0057C63D    jmp         0057C656
 0057C63F    mov         eax,dword ptr [ebp-4]
 0057C642    cmp         byte ptr [eax+290],1;TColorGrid.FButton:TMouseButton
>0057C649    jne         0057C656
 0057C64B    mov         edx,dword ptr [ebp-10]
 0057C64E    mov         eax,dword ptr [ebp-4]
 0057C651    call        TColorGrid.SetBackgroundIndex
 0057C656    mov         edx,dword ptr [ebp-10]
 0057C659    mov         eax,dword ptr [ebp-4]
 0057C65C    call        TColorGrid.SetSelection
 0057C661    mov         esp,ebp
 0057C663    pop         ebp
 0057C664    ret         4
*}
end;

//0057C668
procedure TColorGrid.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0057C668    push        ebp
 0057C669    mov         ebp,esp
 0057C66B    add         esp,0FFFFFFF8
 0057C66E    push        esi
 0057C66F    mov         byte ptr [ebp-6],cl
 0057C672    mov         byte ptr [ebp-5],dl
 0057C675    mov         dword ptr [ebp-4],eax
 0057C678    mov         eax,dword ptr [ebp+0C]
 0057C67B    push        eax
 0057C67C    mov         eax,dword ptr [ebp+8]
 0057C67F    push        eax
 0057C680    mov         cl,byte ptr [ebp-6]
 0057C683    mov         dl,byte ptr [ebp-5]
 0057C686    mov         eax,dword ptr [ebp-4]
 0057C689    call        TControl.MouseUp
 0057C68E    mov         eax,dword ptr [ebp-4]
 0057C691    mov         byte ptr [eax+291],0;TColorGrid.FButtonDown:Boolean
 0057C698    mov         eax,dword ptr [ebp-4]
 0057C69B    cmp         byte ptr [eax+290],1;TColorGrid.FButton:TMouseButton
>0057C6A2    jne         0057C6BA
 0057C6A4    xor         edx,edx
 0057C6A6    mov         eax,dword ptr [ebp-4]
 0057C6A9    call        005F3AF0
 0057C6AE    mov         eax,dword ptr [ebp-4]
 0057C6B1    mov         si,0FFEB
 0057C6B5    call        @CallDynaInst;TControl.sub_005F5478
 0057C6BA    pop         esi
 0057C6BB    pop         ecx
 0057C6BC    pop         ecx
 0057C6BD    pop         ebp
 0057C6BE    ret         8
*}
end;

//0057C6C4
procedure sub_0057C6C4;
begin
{*
 0057C6C4    push        ebp
 0057C6C5    mov         ebp,esp
 0057C6C7    add         esp,0FFFFFFE8
 0057C6CA    mov         dword ptr [ebp-4],eax
 0057C6CD    mov         eax,dword ptr [ebp-4]
 0057C6D0    mov         edx,dword ptr [eax+68];TColorGrid.FFont:TFont
 0057C6D3    mov         eax,dword ptr [ebp-4]
 0057C6D6    mov         eax,dword ptr [eax+208];TColorGrid.........................................................
 0057C6DC    call        TCanvas.SetFont
 0057C6E1    mov         eax,dword ptr [ebp-4]
 0057C6E4    mov         eax,dword ptr [eax+280];TColorGrid.FNumYSquares:Integer
 0057C6EA    test        eax,eax
>0057C6EC    jl          0057C740
 0057C6EE    inc         eax
 0057C6EF    mov         dword ptr [ebp-14],eax
 0057C6F2    mov         dword ptr [ebp-8],0
 0057C6F9    mov         eax,dword ptr [ebp-4]
 0057C6FC    mov         eax,dword ptr [eax+27C];TColorGrid.FNumXSquares:Integer
 0057C702    test        eax,eax
>0057C704    jl          0057C738
 0057C706    inc         eax
 0057C707    mov         dword ptr [ebp-18],eax
 0057C70A    mov         dword ptr [ebp-0C],0
 0057C711    mov         eax,dword ptr [ebp-8]
 0057C714    mov         edx,dword ptr [ebp-4]
 0057C717    imul        dword ptr [edx+27C];TColorGrid.FNumXSquares:Integer
 0057C71D    add         eax,dword ptr [ebp-0C]
 0057C720    mov         dword ptr [ebp-10],eax
 0057C723    xor         ecx,ecx
 0057C725    mov         edx,dword ptr [ebp-10]
 0057C728    mov         eax,dword ptr [ebp-4]
 0057C72B    call        0057B974
 0057C730    inc         dword ptr [ebp-0C]
 0057C733    dec         dword ptr [ebp-18]
>0057C736    jne         0057C711
 0057C738    inc         dword ptr [ebp-8]
 0057C73B    dec         dword ptr [ebp-14]
>0057C73E    jne         0057C6F9
 0057C740    mov         eax,dword ptr [ebp-4]
 0057C743    mov         cl,byte ptr [eax+285];TColorGrid.FHasFocus:Boolean
 0057C749    mov         eax,dword ptr [ebp-4]
 0057C74C    mov         edx,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C752    mov         eax,dword ptr [ebp-4]
 0057C755    call        0057B974
 0057C75A    mov         eax,dword ptr [ebp-4]
 0057C75D    call        0057BC04
 0057C762    mov         esp,ebp
 0057C764    pop         ebp
 0057C765    ret
*}
end;

//0057C768
procedure TColorGrid.SetBackgroundIndex(Value:Integer);
begin
{*
 0057C768    push        ebp
 0057C769    mov         ebp,esp
 0057C76B    add         esp,0FFFFFFF8
 0057C76E    push        esi
 0057C76F    mov         dword ptr [ebp-8],edx
 0057C772    mov         dword ptr [ebp-4],eax
 0057C775    mov         eax,dword ptr [ebp-4]
 0057C778    mov         eax,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C77E    cmp         eax,dword ptr [ebp-8]
>0057C781    je          0057C839
 0057C787    mov         eax,dword ptr [ebp-4]
 0057C78A    cmp         byte ptr [eax+26D],0;TColorGrid.BackgroundEnabled:Boolean
>0057C791    je          0057C839
 0057C797    mov         eax,dword ptr [ebp-4]
 0057C79A    mov         eax,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C7A0    mov         edx,dword ptr [ebp-4]
 0057C7A3    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C7A9    jne         0057C7B7
 0057C7AB    mov         eax,dword ptr [ebp-4]
 0057C7AE    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057C7B5    jne         0057C7BB
 0057C7B7    xor         ecx,ecx
>0057C7B9    jmp         0057C7BD
 0057C7BB    mov         cl,1
 0057C7BD    mov         eax,dword ptr [ebp-4]
 0057C7C0    mov         edx,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C7C6    mov         eax,dword ptr [ebp-4]
 0057C7C9    call        0057B974
 0057C7CE    mov         eax,dword ptr [ebp-8]
 0057C7D1    mov         edx,dword ptr [ebp-4]
 0057C7D4    mov         dword ptr [edx+268],eax;TColorGrid.BackgroundIndex:Integer
 0057C7DA    mov         eax,dword ptr [ebp-4]
 0057C7DD    mov         eax,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C7E3    mov         edx,dword ptr [ebp-4]
 0057C7E6    cmp         eax,dword ptr [edx+264];TColorGrid.ForegroundIndex:Integer
>0057C7EC    jne         0057C825
 0057C7EE    mov         eax,dword ptr [ebp-4]
 0057C7F1    mov         eax,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C7F7    mov         edx,dword ptr [ebp-4]
 0057C7FA    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C800    jne         0057C80E
 0057C802    mov         eax,dword ptr [ebp-4]
 0057C805    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057C80C    jne         0057C812
 0057C80E    xor         ecx,ecx
>0057C810    jmp         0057C814
 0057C812    mov         cl,1
 0057C814    mov         eax,dword ptr [ebp-4]
 0057C817    mov         edx,dword ptr [eax+268];TColorGrid.BackgroundIndex:Integer
 0057C81D    mov         eax,dword ptr [ebp-4]
 0057C820    call        0057B974
 0057C825    mov         eax,dword ptr [ebp-4]
 0057C828    call        0057BC04
 0057C82D    mov         eax,dword ptr [ebp-4]
 0057C830    mov         si,0FFB3
 0057C834    call        @CallDynaInst;TColorGrid.sub_0057CB28
 0057C839    pop         esi
 0057C83A    pop         ecx
 0057C83B    pop         ecx
 0057C83C    pop         ebp
 0057C83D    ret
*}
end;

//0057C840
procedure TColorGrid.SetForegroundIndex(Value:Integer);
begin
{*
 0057C840    push        ebp
 0057C841    mov         ebp,esp
 0057C843    add         esp,0FFFFFFF8
 0057C846    push        esi
 0057C847    mov         dword ptr [ebp-8],edx
 0057C84A    mov         dword ptr [ebp-4],eax
 0057C84D    mov         eax,dword ptr [ebp-4]
 0057C850    mov         eax,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C856    cmp         eax,dword ptr [ebp-8]
>0057C859    je          0057C911
 0057C85F    mov         eax,dword ptr [ebp-4]
 0057C862    cmp         byte ptr [eax+26C],0;TColorGrid.ForegroundEnabled:Boolean
>0057C869    je          0057C911
 0057C86F    mov         eax,dword ptr [ebp-4]
 0057C872    mov         eax,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C878    mov         edx,dword ptr [ebp-4]
 0057C87B    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C881    jne         0057C88F
 0057C883    mov         eax,dword ptr [ebp-4]
 0057C886    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057C88D    jne         0057C893
 0057C88F    xor         ecx,ecx
>0057C891    jmp         0057C895
 0057C893    mov         cl,1
 0057C895    mov         eax,dword ptr [ebp-4]
 0057C898    mov         edx,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C89E    mov         eax,dword ptr [ebp-4]
 0057C8A1    call        0057B974
 0057C8A6    mov         eax,dword ptr [ebp-8]
 0057C8A9    mov         edx,dword ptr [ebp-4]
 0057C8AC    mov         dword ptr [edx+264],eax;TColorGrid.ForegroundIndex:Integer
 0057C8B2    mov         eax,dword ptr [ebp-4]
 0057C8B5    mov         eax,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C8BB    mov         edx,dword ptr [ebp-4]
 0057C8BE    cmp         eax,dword ptr [edx+268];TColorGrid.BackgroundIndex:Integer
>0057C8C4    jne         0057C8FD
 0057C8C6    mov         eax,dword ptr [ebp-4]
 0057C8C9    mov         eax,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C8CF    mov         edx,dword ptr [ebp-4]
 0057C8D2    cmp         eax,dword ptr [edx+270];TColorGrid.Selection:Integer
>0057C8D8    jne         0057C8E6
 0057C8DA    mov         eax,dword ptr [ebp-4]
 0057C8DD    cmp         byte ptr [eax+285],0;TColorGrid.FHasFocus:Boolean
>0057C8E4    jne         0057C8EA
 0057C8E6    xor         ecx,ecx
>0057C8E8    jmp         0057C8EC
 0057C8EA    mov         cl,1
 0057C8EC    mov         eax,dword ptr [ebp-4]
 0057C8EF    mov         edx,dword ptr [eax+264];TColorGrid.ForegroundIndex:Integer
 0057C8F5    mov         eax,dword ptr [ebp-4]
 0057C8F8    call        0057B974
 0057C8FD    mov         eax,dword ptr [ebp-4]
 0057C900    call        0057BC04
 0057C905    mov         eax,dword ptr [ebp-4]
 0057C908    mov         si,0FFB3
 0057C90C    call        @CallDynaInst;TColorGrid.sub_0057CB28
 0057C911    pop         esi
 0057C912    pop         ecx
 0057C913    pop         ecx
 0057C914    pop         ebp
 0057C915    ret
*}
end;

//0057C918
procedure TColorGrid.SetGridOrdering(Value:TGridOrdering);
begin
{*
 0057C918    push        ebp
 0057C919    mov         ebp,esp
 0057C91B    add         esp,0FFFFFFF8
 0057C91E    mov         byte ptr [ebp-5],dl
 0057C921    mov         dword ptr [ebp-4],eax
 0057C924    mov         eax,dword ptr [ebp-4]
 0057C927    mov         al,byte ptr [eax+284];TColorGrid.GridOrdering:TGridOrdering
 0057C92D    cmp         al,byte ptr [ebp-5]
>0057C930    je          0057C97A
 0057C932    mov         al,byte ptr [ebp-5]
 0057C935    mov         edx,dword ptr [ebp-4]
 0057C938    mov         byte ptr [edx+284],al;TColorGrid.GridOrdering:TGridOrdering
 0057C93E    mov         eax,dword ptr [ebp-4]
 0057C941    mov         cl,byte ptr [eax+284];TColorGrid.GridOrdering:TGridOrdering
 0057C947    mov         eax,10
 0057C94C    shr         eax,cl
 0057C94E    mov         edx,dword ptr [ebp-4]
 0057C951    mov         dword ptr [edx+27C],eax;TColorGrid.FNumXSquares:Integer
 0057C957    mov         eax,dword ptr [ebp-4]
 0057C95A    mov         cl,byte ptr [eax+284];TColorGrid.GridOrdering:TGridOrdering
 0057C960    mov         eax,1
 0057C965    shl         eax,cl
 0057C967    mov         edx,dword ptr [ebp-4]
 0057C96A    mov         dword ptr [edx+280],eax;TColorGrid.FNumYSquares:Integer
 0057C970    mov         dl,1
 0057C972    mov         eax,dword ptr [ebp-4]
 0057C975    call        0057CA70
 0057C97A    pop         ecx
 0057C97B    pop         ecx
 0057C97C    pop         ebp
 0057C97D    ret
*}
end;

//0057C980
procedure TColorGrid.SetSelection(Value:Integer);
begin
{*
 0057C980    push        ebp
 0057C981    mov         ebp,esp
 0057C983    add         esp,0FFFFFFF8
 0057C986    mov         dword ptr [ebp-8],edx
 0057C989    mov         dword ptr [ebp-4],eax
 0057C98C    mov         eax,dword ptr [ebp-4]
 0057C98F    mov         eax,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C995    cmp         eax,dword ptr [ebp-8]
>0057C998    je          0057C9DB
 0057C99A    xor         ecx,ecx
 0057C99C    mov         eax,dword ptr [ebp-4]
 0057C99F    mov         edx,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C9A5    mov         eax,dword ptr [ebp-4]
 0057C9A8    call        0057B974
 0057C9AD    mov         eax,dword ptr [ebp-8]
 0057C9B0    mov         edx,dword ptr [ebp-4]
 0057C9B3    mov         dword ptr [edx+270],eax;TColorGrid.Selection:Integer
 0057C9B9    mov         eax,dword ptr [ebp-4]
 0057C9BC    mov         cl,byte ptr [eax+285];TColorGrid.FHasFocus:Boolean
 0057C9C2    mov         eax,dword ptr [ebp-4]
 0057C9C5    mov         edx,dword ptr [eax+270];TColorGrid.Selection:Integer
 0057C9CB    mov         eax,dword ptr [ebp-4]
 0057C9CE    call        0057B974
 0057C9D3    mov         eax,dword ptr [ebp-4]
 0057C9D6    call        0057BC04
 0057C9DB    pop         ecx
 0057C9DC    pop         ecx
 0057C9DD    pop         ebp
 0057C9DE    ret
*}
end;

//0057C9E0
{*function sub_0057C9E0(?:TColorGrid; ?:?; ?:?):?;
begin
 0057C9E0    push        ebp
 0057C9E1    mov         ebp,esp
 0057C9E3    add         esp,0FFFFFFF0
 0057C9E6    push        ebx
 0057C9E7    mov         dword ptr [ebp-0C],ecx
 0057C9EA    mov         dword ptr [ebp-8],edx
 0057C9ED    mov         dword ptr [ebp-4],eax
 0057C9F0    mov         eax,dword ptr [ebp-4]
 0057C9F3    mov         eax,dword ptr [eax+48];TColorGrid.Width:Integer
 0057C9F6    dec         eax
 0057C9F7    cmp         eax,dword ptr [ebp-8]
>0057C9FA    jge         0057CA08
 0057C9FC    mov         eax,dword ptr [ebp-4]
 0057C9FF    mov         eax,dword ptr [eax+48];TColorGrid.Width:Integer
 0057CA02    dec         eax
 0057CA03    mov         dword ptr [ebp-8],eax
>0057CA06    jmp         0057CA13
 0057CA08    cmp         dword ptr [ebp-8],0
>0057CA0C    jge         0057CA13
 0057CA0E    xor         eax,eax
 0057CA10    mov         dword ptr [ebp-8],eax
 0057CA13    mov         eax,dword ptr [ebp-4]
 0057CA16    mov         eax,dword ptr [eax+4C];TColorGrid.Height:Integer
 0057CA19    dec         eax
 0057CA1A    cmp         eax,dword ptr [ebp-0C]
>0057CA1D    jge         0057CA2B
 0057CA1F    mov         eax,dword ptr [ebp-4]
 0057CA22    mov         eax,dword ptr [eax+4C];TColorGrid.Height:Integer
 0057CA25    dec         eax
 0057CA26    mov         dword ptr [ebp-0C],eax
>0057CA29    jmp         0057CA36
 0057CA2B    cmp         dword ptr [ebp-0C],0
>0057CA2F    jge         0057CA36
 0057CA31    xor         eax,eax
 0057CA33    mov         dword ptr [ebp-0C],eax
 0057CA36    mov         eax,dword ptr [ebp-0C]
 0057CA39    mov         edx,dword ptr [ebp-4]
 0057CA3C    mov         ecx,dword ptr [edx+278];TColorGrid.FCellYSize:Integer
 0057CA42    cdq
 0057CA43    idiv        eax,ecx
 0057CA45    mov         ecx,eax
 0057CA47    mov         eax,dword ptr [ebp-4]
 0057CA4A    imul        ecx,dword ptr [eax+27C];TColorGrid.FNumXSquares:Integer
 0057CA51    mov         eax,dword ptr [ebp-8]
 0057CA54    mov         edx,dword ptr [ebp-4]
 0057CA57    mov         ebx,dword ptr [edx+274];TColorGrid.FCellXSize:Integer
 0057CA5D    cdq
 0057CA5E    idiv        eax,ebx
 0057CA60    add         ecx,eax
 0057CA62    mov         dword ptr [ebp-10],ecx
 0057CA65    mov         eax,dword ptr [ebp-10]
 0057CA68    pop         ebx
 0057CA69    mov         esp,ebp
 0057CA6B    pop         ebp
 0057CA6C    ret
end;*}

//0057CA70
{*procedure sub_0057CA70(?:TColorGrid; ?:?);
begin
 0057CA70    push        ebp
 0057CA71    mov         ebp,esp
 0057CA73    add         esp,0FFFFFFE0
 0057CA76    mov         byte ptr [ebp-5],dl
 0057CA79    mov         dword ptr [ebp-4],eax
 0057CA7C    mov         eax,dword ptr [ebp-4]
 0057CA7F    mov         eax,dword ptr [eax+48];TColorGrid.Width:Integer
 0057CA82    mov         edx,dword ptr [ebp-4]
 0057CA85    mov         ecx,dword ptr [edx+27C];TColorGrid.FNumXSquares:Integer
 0057CA8B    cdq
 0057CA8C    idiv        eax,ecx
 0057CA8E    mov         edx,dword ptr [ebp-4]
 0057CA91    imul        dword ptr [edx+27C];TColorGrid.FNumXSquares:Integer
 0057CA97    mov         dword ptr [ebp-0C],eax
 0057CA9A    mov         eax,dword ptr [ebp-4]
 0057CA9D    mov         eax,dword ptr [eax+4C];TColorGrid.Height:Integer
 0057CAA0    mov         edx,dword ptr [ebp-4]
 0057CAA3    mov         ecx,dword ptr [edx+280];TColorGrid.FNumYSquares:Integer
 0057CAA9    cdq
 0057CAAA    idiv        eax,ecx
 0057CAAC    mov         edx,dword ptr [ebp-4]
 0057CAAF    imul        dword ptr [edx+280];TColorGrid.FNumYSquares:Integer
 0057CAB5    mov         dword ptr [ebp-10],eax
 0057CAB8    mov         eax,dword ptr [ebp-10]
 0057CABB    push        eax
 0057CABC    lea         eax,[ebp-20]
 0057CABF    push        eax
 0057CAC0    mov         ecx,dword ptr [ebp-0C]
 0057CAC3    mov         eax,dword ptr [ebp-4]
 0057CAC6    mov         edx,dword ptr [eax+44];TColorGrid.Top:Integer
 0057CAC9    mov         eax,dword ptr [ebp-4]
 0057CACC    mov         eax,dword ptr [eax+40];TColorGrid.Left:Integer
 0057CACF    call        Bounds
 0057CAD4    lea         edx,[ebp-20]
 0057CAD7    mov         eax,dword ptr [ebp-4]
 0057CADA    call        005F2E58
 0057CADF    mov         eax,dword ptr [ebp-4]
 0057CAE2    mov         eax,dword ptr [eax+48];TColorGrid.Width:Integer
 0057CAE5    mov         edx,dword ptr [ebp-4]
 0057CAE8    mov         ecx,dword ptr [edx+27C];TColorGrid.FNumXSquares:Integer
 0057CAEE    cdq
 0057CAEF    idiv        eax,ecx
 0057CAF1    mov         edx,dword ptr [ebp-4]
 0057CAF4    mov         dword ptr [edx+274],eax;TColorGrid.FCellXSize:Integer
 0057CAFA    mov         eax,dword ptr [ebp-4]
 0057CAFD    mov         eax,dword ptr [eax+4C];TColorGrid.Height:Integer
 0057CB00    mov         edx,dword ptr [ebp-4]
 0057CB03    mov         ecx,dword ptr [edx+280];TColorGrid.FNumYSquares:Integer
 0057CB09    cdq
 0057CB0A    idiv        eax,ecx
 0057CB0C    mov         edx,dword ptr [ebp-4]
 0057CB0F    mov         dword ptr [edx+278],eax;TColorGrid.FCellYSize:Integer
 0057CB15    cmp         byte ptr [ebp-5],0
>0057CB19    je          0057CB23
 0057CB1B    mov         eax,dword ptr [ebp-4]
 0057CB1E    mov         edx,dword ptr [eax]
 0057CB20    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057CB23    mov         esp,ebp
 0057CB25    pop         ebp
 0057CB26    ret
end;*}

//0057CB28
procedure TColorGrid.sub_0057CB28;
begin
{*
 0057CB28    push        ebp
 0057CB29    mov         ebp,esp
 0057CB2B    push        ecx
 0057CB2C    push        ebx
 0057CB2D    mov         dword ptr [ebp-4],eax
 0057CB30    mov         eax,dword ptr [ebp-4]
 0057CB33    call        005F3158
 0057CB38    mov         eax,dword ptr [ebp-4]
 0057CB3B    cmp         word ptr [eax+28A],0;TColorGrid.?f28A:word
>0057CB43    je          0057CB57
 0057CB45    mov         ebx,dword ptr [ebp-4]
 0057CB48    mov         edx,dword ptr [ebp-4]
 0057CB4B    mov         eax,dword ptr [ebx+28C];TColorGrid.?f28C:dword
 0057CB51    call        dword ptr [ebx+288];TColorGrid.OnChange
 0057CB57    pop         ebx
 0057CB58    pop         ecx
 0057CB59    pop         ebp
 0057CB5A    ret
*}
end;

//0057CB5C
procedure Finalization;
begin
{*
 0057CB5C    push        ebp
 0057CB5D    mov         ebp,esp
 0057CB5F    xor         eax,eax
 0057CB61    push        ebp
 0057CB62    push        57CB81
 0057CB67    push        dword ptr fs:[eax]
 0057CB6A    mov         dword ptr fs:[eax],esp
 0057CB6D    inc         dword ptr ds:[6ECCB4]
 0057CB73    xor         eax,eax
 0057CB75    pop         edx
 0057CB76    pop         ecx
 0057CB77    pop         ecx
 0057CB78    mov         dword ptr fs:[eax],edx
 0057CB7B    push        57CB88
 0057CB80    ret
>0057CB81    jmp         @HandleFinally
>0057CB86    jmp         0057CB80
 0057CB88    pop         ebp
 0057CB89    ret
*}
end;

end.