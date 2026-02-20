//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ToolWin;

interface

uses
  SysUtils, Classes;

type
  TEdgeBorder = (ebLeft, ebTop, ebRight, ebBottom);
  TEdgeBorders = set of TEdgeBorder;
  TEdgeStyle = (esNone, esRaised, esLowered);
  TToolWindow = class(TWinControl)
  public
    FEdgeBorders:TEdgeBorders;//f208
    FEdgeInner:TEdgeStyle;//f209
    FEdgeOuter:TEdgeStyle;//f20A
    constructor Create(AOwner:TComponent); virtual;//v2C//005904E8
    //procedure vC4(?:?); virtual;//vC4//005905F4
    //procedure WMNCCalcSize(?:?); message WM_NCCALCSIZE;//00590708
    //procedure WMNCPaint(?:?); message WM_NCPAINT;//005907CC
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//00590854
    //procedure CMBorderChanged(?:?); message CM_BORDERCHANGED;//00590830
  end;
  TToolDockForm = class(TCustomDockForm)
  public
    FPrevWidth:Integer;//f2F0
    FPrevHeight:Integer;//f2F4
    FSizingAdjustH:Integer;//f2F8
    FSizingAdjustW:Integer;//f2FC
    FSizingOrientation:TSizingOrientation;//f300
    FUpdatingSize:Boolean;//f301
    constructor Create(AOwner:TComponent); virtual;//v2C//0059088C
    //function v30(?:?; ?:?):?; virtual;//v30//00590908
    //procedure v98(?:?); virtual;//v98//005908E0
    //procedure WMSize(?:?); message WM_SIZE;//00590D1C
    //procedure WMNCCreate(?:?); message WM_NCCREATE;//00590B68
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//00590B94
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//00590CC8
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//00590D7C
    //procedure sub_00590AA4(?:?; ?:?); dynamic;//00590AA4
  end;
    procedure ToolWin;//00590148
    constructor Create(AOwner:TComponent);//005904E8
    procedure SetEdgeBorders(Value:TEdgeBorders);//00590558
    procedure SetEdgeInner(Value:TEdgeStyle);//0059058C
    procedure SetEdgeOuter(Value:TEdgeStyle);//005905C0
    //procedure sub_005905F4(?:?);//005905F4
    //procedure WMNCCalcSize(?:?);//00590708
    //procedure WMNCPaint(?:?);//005907CC
    //procedure CMBorderChanged(?:?);//00590830
    //procedure CMCtl3DChanged(?:?);//00590854
    constructor Create(AOwner:TComponent);//0059088C
    //procedure sub_005908E0(?:?);//005908E0
    //function sub_00590908(?:?; ?:?):?;//00590908
    //procedure sub_00590AA4(?:?; ?:?);//00590AA4
    //procedure sub_00590ADC(?:?);//00590ADC
    //procedure WMNCCreate(?:?);//00590B68
    //procedure WMNCHitTest(?:?);//00590B94
    //procedure WMNCLButtonDown(?:?);//00590CC8
    //procedure WMSize(?:?);//00590D1C
    //procedure WMSysCommand(?:?);//00590D7C
    procedure Finalization;//00590DCC

implementation

//00590148
procedure ToolWin;
begin
{*
 00590148    sub         dword ptr ds:[6ECCEC],1
 0059014F    ret
*}
end;

//005904E8
constructor TToolWindow.Create(AOwner:TComponent);
begin
{*
 005904E8    push        ebp
 005904E9    mov         ebp,esp
 005904EB    add         esp,0FFFFFFF4
 005904EE    test        dl,dl
>005904F0    je          005904FA
 005904F2    add         esp,0FFFFFFF0
 005904F5    call        @ClassCreate
 005904FA    mov         dword ptr [ebp-0C],ecx
 005904FD    mov         byte ptr [ebp-5],dl
 00590500    mov         dword ptr [ebp-4],eax
 00590503    mov         ecx,dword ptr [ebp-0C]
 00590506    xor         edx,edx
 00590508    mov         eax,dword ptr [ebp-4]
 0059050B    call        TWinControl.Create
 00590510    mov         eax,dword ptr [ebp-4]
 00590513    mov         dl,byte ptr ds:[590554];0xF gvar_00590554
 00590519    mov         byte ptr [eax+208],dl;TToolWindow.FEdgeBorders:TEdgeBorders
 0059051F    mov         eax,dword ptr [ebp-4]
 00590522    mov         byte ptr [eax+209],1;TToolWindow.FEdgeInner:TEdgeStyle
 00590529    mov         eax,dword ptr [ebp-4]
 0059052C    mov         byte ptr [eax+20A],2;TToolWindow.FEdgeOuter:TEdgeStyle
 00590533    mov         eax,dword ptr [ebp-4]
 00590536    cmp         byte ptr [ebp-5],0
>0059053A    je          0059054B
 0059053C    call        @AfterConstruction
 00590541    pop         dword ptr fs:[0]
 00590548    add         esp,0C
 0059054B    mov         eax,dword ptr [ebp-4]
 0059054E    mov         esp,ebp
 00590550    pop         ebp
 00590551    ret
*}
end;

//00590558
procedure TToolBar.SetEdgeBorders(Value:TEdgeBorders);
begin
{*
 00590558    push        ebp
 00590559    mov         ebp,esp
 0059055B    add         esp,0FFFFFFF8
 0059055E    mov         byte ptr [ebp-5],dl
 00590561    mov         dword ptr [ebp-4],eax
 00590564    mov         al,byte ptr [ebp-5]
 00590567    mov         edx,dword ptr [ebp-4]
 0059056A    cmp         al,byte ptr [edx+208];TToolBar.FEdgeBorders:TEdgeBorders
>00590570    je          00590586
 00590572    mov         al,byte ptr [ebp-5]
 00590575    mov         edx,dword ptr [ebp-4]
 00590578    mov         byte ptr [edx+208],al;TToolBar.FEdgeBorders:TEdgeBorders
 0059057E    mov         eax,dword ptr [ebp-4]
 00590581    call        TWinControl.RecreateWnd
 00590586    pop         ecx
 00590587    pop         ecx
 00590588    pop         ebp
 00590589    ret
*}
end;

//0059058C
procedure TToolBar.SetEdgeInner(Value:TEdgeStyle);
begin
{*
 0059058C    push        ebp
 0059058D    mov         ebp,esp
 0059058F    add         esp,0FFFFFFF8
 00590592    mov         byte ptr [ebp-5],dl
 00590595    mov         dword ptr [ebp-4],eax
 00590598    mov         eax,dword ptr [ebp-4]
 0059059B    mov         al,byte ptr [eax+209];TToolBar.FEdgeInner:TEdgeStyle
 005905A1    cmp         al,byte ptr [ebp-5]
>005905A4    je          005905BA
 005905A6    mov         al,byte ptr [ebp-5]
 005905A9    mov         edx,dword ptr [ebp-4]
 005905AC    mov         byte ptr [edx+209],al;TToolBar.FEdgeInner:TEdgeStyle
 005905B2    mov         eax,dword ptr [ebp-4]
 005905B5    call        TWinControl.RecreateWnd
 005905BA    pop         ecx
 005905BB    pop         ecx
 005905BC    pop         ebp
 005905BD    ret
*}
end;

//005905C0
procedure TToolBar.SetEdgeOuter(Value:TEdgeStyle);
begin
{*
 005905C0    push        ebp
 005905C1    mov         ebp,esp
 005905C3    add         esp,0FFFFFFF8
 005905C6    mov         byte ptr [ebp-5],dl
 005905C9    mov         dword ptr [ebp-4],eax
 005905CC    mov         eax,dword ptr [ebp-4]
 005905CF    mov         al,byte ptr [eax+20A];TToolBar.FEdgeOuter:TEdgeStyle
 005905D5    cmp         al,byte ptr [ebp-5]
>005905D8    je          005905EE
 005905DA    mov         al,byte ptr [ebp-5]
 005905DD    mov         edx,dword ptr [ebp-4]
 005905E0    mov         byte ptr [edx+20A],al;TToolBar.FEdgeOuter:TEdgeStyle
 005905E6    mov         eax,dword ptr [ebp-4]
 005905E9    call        TWinControl.RecreateWnd
 005905EE    pop         ecx
 005905EF    pop         ecx
 005905F0    pop         ebp
 005905F1    ret
*}
end;

//005905F4
{*procedure sub_005905F4(?:?);
begin
 005905F4    push        ebp
 005905F5    mov         ebp,esp
 005905F7    add         esp,0FFFFFFD8
 005905FA    mov         dword ptr [ebp-8],edx
 005905FD    mov         dword ptr [ebp-4],eax
 00590600    lea         eax,[ebp-18]
 00590603    push        eax
 00590604    mov         eax,dword ptr [ebp-4]
 00590607    call        TWinControl.GetHandle
 0059060C    push        eax
 0059060D    call        USER32.GetClientRect
 00590612    lea         eax,[ebp-28]
 00590615    push        eax
 00590616    mov         eax,dword ptr [ebp-4]
 00590619    call        TWinControl.GetHandle
 0059061E    push        eax
 0059061F    call        USER32.GetWindowRect
 00590624    push        2
 00590626    lea         eax,[ebp-28]
 00590629    push        eax
 0059062A    mov         eax,dword ptr [ebp-4]
 0059062D    call        TWinControl.GetHandle
 00590632    push        eax
 00590633    push        0
 00590635    call        USER32.MapWindowPoints
 0059063A    mov         eax,dword ptr [ebp-24]
 0059063D    neg         eax
 0059063F    push        eax
 00590640    mov         eax,dword ptr [ebp-28]
 00590643    neg         eax
 00590645    push        eax
 00590646    lea         eax,[ebp-18]
 00590649    push        eax
 0059064A    call        USER32.OffsetRect
 0059064F    mov         eax,dword ptr [ebp-0C]
 00590652    push        eax
 00590653    mov         eax,dword ptr [ebp-10]
 00590656    push        eax
 00590657    mov         eax,dword ptr [ebp-14]
 0059065A    push        eax
 0059065B    mov         eax,dword ptr [ebp-18]
 0059065E    push        eax
 0059065F    mov         eax,dword ptr [ebp-8]
 00590662    push        eax
 00590663    call        GDI32.ExcludeClipRect
 00590668    mov         eax,dword ptr [ebp-24]
 0059066B    neg         eax
 0059066D    push        eax
 0059066E    mov         eax,dword ptr [ebp-28]
 00590671    neg         eax
 00590673    push        eax
 00590674    lea         eax,[ebp-28]
 00590677    push        eax
 00590678    call        USER32.OffsetRect
 0059067D    mov         eax,dword ptr [ebp-4]
 00590680    movzx       eax,byte ptr [eax+208];TToolWindow.FEdgeBorders:TEdgeBorders
 00590687    mov         edx,dword ptr [ebp-4]
 0059068A    movzx       edx,byte ptr [edx+1A5];TToolWindow.FCtl3D:Boolean
 00590691    or          eax,dword ptr [edx*4+6E3A3C]
 00590698    or          eax,2000
 0059069D    push        eax
 0059069E    mov         eax,dword ptr [ebp-4]
 005906A1    movzx       eax,byte ptr [eax+209];TToolWindow.FEdgeInner:TEdgeStyle
 005906A8    mov         eax,dword ptr [eax*4+6E3A24]
 005906AF    mov         edx,dword ptr [ebp-4]
 005906B2    movzx       edx,byte ptr [edx+20A];TToolWindow.FEdgeOuter:TEdgeStyle
 005906B9    or          eax,dword ptr [edx*4+6E3A30]
 005906C0    push        eax
 005906C1    lea         eax,[ebp-28]
 005906C4    push        eax
 005906C5    mov         eax,dword ptr [ebp-8]
 005906C8    push        eax
 005906C9    call        USER32.DrawEdge
 005906CE    mov         eax,dword ptr [ebp-1C]
 005906D1    push        eax
 005906D2    mov         eax,dword ptr [ebp-20]
 005906D5    push        eax
 005906D6    mov         eax,dword ptr [ebp-24]
 005906D9    push        eax
 005906DA    mov         eax,dword ptr [ebp-28]
 005906DD    push        eax
 005906DE    mov         eax,dword ptr [ebp-8]
 005906E1    push        eax
 005906E2    call        GDI32.IntersectClipRect
 005906E7    mov         eax,dword ptr [ebp-4]
 005906EA    mov         eax,dword ptr [eax+170];TToolWindow.FBrush:TBrush
 005906F0    call        TBrush.GetHandle
 005906F5    push        eax
 005906F6    lea         eax,[ebp-28]
 005906F9    push        eax
 005906FA    mov         eax,dword ptr [ebp-8]
 005906FD    push        eax
 005906FE    call        USER32.FillRect
 00590703    mov         esp,ebp
 00590705    pop         ebp
 00590706    ret
end;*}

//00590708
{*procedure TToolWindow.WMNCCalcSize(?:?);
begin
 00590708    push        ebp
 00590709    mov         ebp,esp
 0059070B    add         esp,0FFFFFFEC
 0059070E    mov         dword ptr [ebp-8],edx
 00590711    mov         dword ptr [ebp-4],eax
 00590714    mov         eax,dword ptr [ebp-8]
 00590717    mov         eax,dword ptr [eax+8]
 0059071A    mov         dword ptr [ebp-10],eax
 0059071D    mov         eax,dword ptr [ebp-4]
 00590720    mov         eax,dword ptr [eax+16C];TToolWindow.FBorderWidth:TBorderWidth
 00590726    neg         eax
 00590728    push        eax
 00590729    mov         eax,dword ptr [ebp-4]
 0059072C    mov         eax,dword ptr [eax+16C];TToolWindow.FBorderWidth:TBorderWidth
 00590732    neg         eax
 00590734    push        eax
 00590735    mov         eax,dword ptr [ebp-10]
 00590738    push        eax
 00590739    call        USER32.InflateRect
 0059073E    xor         eax,eax
 00590740    mov         dword ptr [ebp-0C],eax
 00590743    mov         eax,dword ptr [ebp-4]
 00590746    cmp         byte ptr [eax+209],0;TToolWindow.FEdgeInner:TEdgeStyle
>0059074D    je          00590752
 0059074F    inc         dword ptr [ebp-0C]
 00590752    mov         eax,dword ptr [ebp-4]
 00590755    cmp         byte ptr [eax+20A],0;TToolWindow.FEdgeOuter:TEdgeStyle
>0059075C    je          00590761
 0059075E    inc         dword ptr [ebp-0C]
 00590761    mov         eax,dword ptr [ebp-10]
 00590764    mov         dword ptr [ebp-14],eax
 00590767    mov         eax,dword ptr [ebp-4]
 0059076A    test        byte ptr [eax+208],1;TToolWindow.FEdgeBorders:TEdgeBorders
>00590771    je          0059077B
 00590773    mov         eax,dword ptr [ebp-14]
 00590776    mov         edx,dword ptr [ebp-0C]
 00590779    add         dword ptr [eax],edx
 0059077B    mov         eax,dword ptr [ebp-4]
 0059077E    test        byte ptr [eax+208],2;TToolWindow.FEdgeBorders:TEdgeBorders
>00590785    je          00590790
 00590787    mov         eax,dword ptr [ebp-14]
 0059078A    mov         edx,dword ptr [ebp-0C]
 0059078D    add         dword ptr [eax+4],edx
 00590790    mov         eax,dword ptr [ebp-4]
 00590793    test        byte ptr [eax+208],4;TToolWindow.FEdgeBorders:TEdgeBorders
>0059079A    je          005907A5
 0059079C    mov         eax,dword ptr [ebp-14]
 0059079F    mov         edx,dword ptr [ebp-0C]
 005907A2    sub         dword ptr [eax+8],edx
 005907A5    mov         eax,dword ptr [ebp-4]
 005907A8    test        byte ptr [eax+208],8;TToolWindow.FEdgeBorders:TEdgeBorders
>005907AF    je          005907BA
 005907B1    mov         eax,dword ptr [ebp-14]
 005907B4    mov         edx,dword ptr [ebp-0C]
 005907B7    sub         dword ptr [eax+0C],edx
 005907BA    mov         edx,dword ptr [ebp-8]
 005907BD    mov         eax,dword ptr [ebp-4]
 005907C0    call        TWinControl.WMNCCalcSize
 005907C5    mov         esp,ebp
 005907C7    pop         ebp
 005907C8    ret
end;*}

//005907CC
{*procedure TToolWindow.WMNCPaint(?:?);
begin
 005907CC    push        ebp
 005907CD    mov         ebp,esp
 005907CF    add         esp,0FFFFFFF4
 005907D2    mov         dword ptr [ebp-0C],edx
 005907D5    mov         dword ptr [ebp-4],eax
 005907D8    mov         eax,dword ptr [ebp-4]
 005907DB    call        TWinControl.GetHandle
 005907E0    push        eax
 005907E1    call        USER32.GetWindowDC
 005907E6    mov         dword ptr [ebp-8],eax
 005907E9    xor         eax,eax
 005907EB    push        ebp
 005907EC    push        590825
 005907F1    push        dword ptr fs:[eax]
 005907F4    mov         dword ptr fs:[eax],esp
 005907F7    mov         edx,dword ptr [ebp-8]
 005907FA    mov         eax,dword ptr [ebp-4]
 005907FD    mov         ecx,dword ptr [eax]
 005907FF    call        dword ptr [ecx+0C4];TToolWindow.sub_005905F4
 00590805    xor         eax,eax
 00590807    pop         edx
 00590808    pop         ecx
 00590809    pop         ecx
 0059080A    mov         dword ptr fs:[eax],edx
 0059080D    push        59082C
 00590812    mov         eax,dword ptr [ebp-8]
 00590815    push        eax
 00590816    mov         eax,dword ptr [ebp-4]
 00590819    call        TWinControl.GetHandle
 0059081E    push        eax
 0059081F    call        USER32.ReleaseDC
 00590824    ret
>00590825    jmp         @HandleFinally
>0059082A    jmp         00590812
 0059082C    mov         esp,ebp
 0059082E    pop         ebp
 0059082F    ret
end;*}

//00590830
{*procedure TToolWindow.CMBorderChanged(?:?);
begin
 00590830    push        ebp
 00590831    mov         ebp,esp
 00590833    add         esp,0FFFFFFF8
 00590836    mov         dword ptr [ebp-8],edx
 00590839    mov         dword ptr [ebp-4],eax
 0059083C    mov         eax,dword ptr [ebp-4]
 0059083F    call        TWinControl.RecreateWnd
 00590844    mov         edx,dword ptr [ebp-8]
 00590847    mov         eax,dword ptr [ebp-4]
 0059084A    call        TWinControl.CMBorderChanged
 0059084F    pop         ecx
 00590850    pop         ecx
 00590851    pop         ebp
 00590852    ret
end;*}

//00590854
{*procedure TToolWindow.CMCtl3DChanged(?:?);
begin
 00590854    push        ebp
 00590855    mov         ebp,esp
 00590857    add         esp,0FFFFFFF8
 0059085A    mov         dword ptr [ebp-8],edx
 0059085D    mov         dword ptr [ebp-4],eax
 00590860    mov         edx,dword ptr [ebp-8]
 00590863    mov         eax,dword ptr [ebp-4]
 00590866    call        TWinControl.CMCtl3DChanged
 0059086B    mov         al,[00590888];0x0 gvar_00590888
 00590870    mov         edx,dword ptr [ebp-4]
 00590873    cmp         al,byte ptr [edx+208];TToolWindow.FEdgeBorders:TEdgeBorders
>00590879    je          00590883
 0059087B    mov         eax,dword ptr [ebp-4]
 0059087E    call        TWinControl.RecreateWnd
 00590883    pop         ecx
 00590884    pop         ecx
 00590885    pop         ebp
 00590886    ret
end;*}

//0059088C
constructor TToolDockForm.Create(AOwner:TComponent);
begin
{*
 0059088C    push        ebp
 0059088D    mov         ebp,esp
 0059088F    add         esp,0FFFFFFF4
 00590892    test        dl,dl
>00590894    je          0059089E
 00590896    add         esp,0FFFFFFF0
 00590899    call        @ClassCreate
 0059089E    mov         dword ptr [ebp-0C],ecx
 005908A1    mov         byte ptr [ebp-5],dl
 005908A4    mov         dword ptr [ebp-4],eax
 005908A7    mov         ecx,dword ptr [ebp-0C]
 005908AA    xor         edx,edx
 005908AC    mov         eax,dword ptr [ebp-4]
 005908AF    call        TCustomDockForm.Create
 005908B4    mov         edx,1
 005908B9    mov         eax,dword ptr [ebp-4]
 005908BC    call        TForm.SetBorderWidth
 005908C1    mov         eax,dword ptr [ebp-4]
 005908C4    cmp         byte ptr [ebp-5],0
>005908C8    je          005908D9
 005908CA    call        @AfterConstruction
 005908CF    pop         dword ptr fs:[0]
 005908D6    add         esp,0C
 005908D9    mov         eax,dword ptr [ebp-4]
 005908DC    mov         esp,ebp
 005908DE    pop         ebp
 005908DF    ret
*}
end;

//005908E0
{*procedure sub_005908E0(?:?);
begin
 005908E0    push        ebp
 005908E1    mov         ebp,esp
 005908E3    add         esp,0FFFFFFF8
 005908E6    mov         dword ptr [ebp-8],edx
 005908E9    mov         dword ptr [ebp-4],eax
 005908EC    mov         edx,dword ptr [ebp-8]
 005908EF    mov         eax,dword ptr [ebp-4]
 005908F2    call        005D1944
 005908F7    mov         eax,dword ptr [ebp-8]
 005908FA    or          dword ptr [eax+4],80000000
 00590901    pop         ecx
 00590902    pop         ecx
 00590903    pop         ebp
 00590904    ret
end;*}

//00590908
{*function sub_00590908(?:?; ?:?):?;
begin
 00590908    push        ebp
 00590909    mov         ebp,esp
 0059090B    add         esp,0FFFFFFDC
 0059090E    push        ebx
 0059090F    mov         dword ptr [ebp-0C],ecx
 00590912    mov         dword ptr [ebp-8],edx
 00590915    mov         dword ptr [ebp-4],eax
 00590918    mov         byte ptr [ebp-0D],1
 0059091C    mov         eax,dword ptr [ebp-4]
 0059091F    cmp         byte ptr [eax+301],0;TToolDockForm.FUpdatingSize:Boolean
>00590926    jne         00590A9C
 0059092C    mov         eax,dword ptr [ebp-4]
 0059092F    cmp         byte ptr [eax+300],0;TToolDockForm.FSizingOrientation:TSizingOrientation
>00590936    je          00590A9C
 0059093C    mov         eax,dword ptr [ebp-4]
 0059093F    call        005FA394
 00590944    test        eax,eax
>00590946    je          00590A9C
 0059094C    mov         eax,dword ptr [ebp-8]
 0059094F    mov         eax,dword ptr [eax]
 00590951    mov         edx,dword ptr [ebp-4]
 00590954    cmp         eax,dword ptr [edx+48];TToolDockForm.Width:Integer
>00590957    jne         0059096A
 00590959    mov         eax,dword ptr [ebp-0C]
 0059095C    mov         eax,dword ptr [eax]
 0059095E    mov         edx,dword ptr [ebp-4]
 00590961    cmp         eax,dword ptr [edx+4C];TToolDockForm.Height:Integer
>00590964    je          00590A9C
 0059096A    mov         eax,dword ptr [ebp-8]
 0059096D    mov         eax,dword ptr [eax]
 0059096F    mov         dword ptr [ebp-14],eax
 00590972    mov         eax,dword ptr [ebp-0C]
 00590975    mov         eax,dword ptr [eax]
 00590977    mov         dword ptr [ebp-18],eax
 0059097A    mov         eax,dword ptr [ebp-4]
 0059097D    mov         al,byte ptr [eax+300];TToolDockForm.FSizingOrientation:TSizingOrientation
 00590983    sub         al,1
>00590985    jb          00590A9C
>0059098B    je          00590993
 0059098D    dec         al
>0059098F    je          005909A1
>00590991    jmp         005909AF
 00590993    mov         eax,dword ptr [ebp-4]
 00590996    mov         eax,dword ptr [eax+2F8];TToolDockForm.FSizingAdjustH:Integer
 0059099C    add         dword ptr [ebp-18],eax
>0059099F    jmp         005909B8
 005909A1    mov         eax,dword ptr [ebp-4]
 005909A4    mov         eax,dword ptr [eax+2FC];TToolDockForm.FSizingAdjustW:Integer
 005909AA    add         dword ptr [ebp-14],eax
>005909AD    jmp         005909B8
 005909AF    mov         byte ptr [ebp-0D],0
>005909B3    jmp         00590A9C
 005909B8    mov         eax,dword ptr [ebp-4]
 005909BB    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 005909BE    mov         edx,dword ptr [ebp-4]
 005909C1    mov         dword ptr [edx+2F0],eax;TToolDockForm.FPrevWidth:Integer
 005909C7    mov         eax,dword ptr [ebp-4]
 005909CA    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 005909CD    mov         edx,dword ptr [ebp-4]
 005909D0    mov         dword ptr [edx+2F4],eax;TToolDockForm.FPrevHeight:Integer
 005909D6    xor         edx,edx
 005909D8    mov         eax,dword ptr [ebp-4]
 005909DB    call        005FA3C8
 005909E0    mov         dword ptr [ebp-24],eax
 005909E3    mov         eax,dword ptr [ebp-4]
 005909E6    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 005909E9    mov         edx,dword ptr [ebp-24]
 005909EC    sub         eax,dword ptr [edx+48]
 005909EF    mov         dword ptr [ebp-1C],eax
 005909F2    mov         eax,dword ptr [ebp-4]
 005909F5    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 005909F8    mov         edx,dword ptr [ebp-24]
 005909FB    sub         eax,dword ptr [edx+4C]
 005909FE    mov         dword ptr [ebp-20],eax
 00590A01    mov         eax,dword ptr [ebp-4]
 00590A04    mov         byte ptr [eax+301],1;TToolDockForm.FUpdatingSize:Boolean
 00590A0B    xor         eax,eax
 00590A0D    push        ebp
 00590A0E    push        590A56
 00590A13    push        dword ptr fs:[eax]
 00590A16    mov         dword ptr fs:[eax],esp
 00590A19    mov         eax,dword ptr [ebp-14]
 00590A1C    sub         eax,dword ptr [ebp-1C]
 00590A1F    push        eax
 00590A20    mov         eax,dword ptr [ebp-18]
 00590A23    sub         eax,dword ptr [ebp-20]
 00590A26    push        eax
 00590A27    mov         eax,dword ptr [ebp-24]
 00590A2A    mov         ecx,dword ptr [eax+44]
 00590A2D    mov         eax,dword ptr [ebp-24]
 00590A30    mov         edx,dword ptr [eax+40]
 00590A33    mov         eax,dword ptr [ebp-24]
 00590A36    mov         ebx,dword ptr [eax]
 00590A38    call        dword ptr [ebx+84]
 00590A3E    xor         eax,eax
 00590A40    pop         edx
 00590A41    pop         ecx
 00590A42    pop         ecx
 00590A43    mov         dword ptr fs:[eax],edx
 00590A46    push        590A5D
 00590A4B    mov         eax,dword ptr [ebp-4]
 00590A4E    mov         byte ptr [eax+301],0;TToolDockForm.FUpdatingSize:Boolean
 00590A55    ret
>00590A56    jmp         @HandleFinally
>00590A5B    jmp         00590A4B
 00590A5D    mov         eax,dword ptr [ebp-24]
 00590A60    mov         eax,dword ptr [eax+48]
 00590A63    add         eax,dword ptr [ebp-1C]
 00590A66    mov         edx,dword ptr [ebp-8]
 00590A69    mov         dword ptr [edx],eax
 00590A6B    mov         eax,dword ptr [ebp-24]
 00590A6E    mov         eax,dword ptr [eax+4C]
 00590A71    add         eax,dword ptr [ebp-20]
 00590A74    mov         edx,dword ptr [ebp-0C]
 00590A77    mov         dword ptr [edx],eax
 00590A79    mov         eax,dword ptr [ebp-4]
 00590A7C    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 00590A7F    mov         edx,dword ptr [ebp-8]
 00590A82    cmp         eax,dword ptr [edx]
>00590A84    jne         00590A97
 00590A86    mov         eax,dword ptr [ebp-4]
 00590A89    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 00590A8C    mov         edx,dword ptr [ebp-0C]
 00590A8F    cmp         eax,dword ptr [edx]
>00590A91    jne         00590A97
 00590A93    xor         eax,eax
>00590A95    jmp         00590A99
 00590A97    mov         al,1
 00590A99    mov         byte ptr [ebp-0D],al
 00590A9C    mov         al,byte ptr [ebp-0D]
 00590A9F    pop         ebx
 00590AA0    mov         esp,ebp
 00590AA2    pop         ebp
 00590AA3    ret
end;*}

//00590AA4
{*procedure TToolDockForm.sub_00590AA4(?:?; ?:?);
begin
 00590AA4    push        ebp
 00590AA5    mov         ebp,esp
 00590AA7    add         esp,0FFFFFFF4
 00590AAA    mov         dword ptr [ebp-0C],ecx
 00590AAD    mov         dword ptr [ebp-8],edx
 00590AB0    mov         dword ptr [ebp-4],eax
 00590AB3    mov         ecx,dword ptr [ebp-0C]
 00590AB6    mov         edx,dword ptr [ebp-8]
 00590AB9    mov         eax,dword ptr [ebp-4]
 00590ABC    call        TCustomDockForm.sub_005D4D38
 00590AC1    xor         edx,edx
 00590AC3    mov         eax,dword ptr [ebp-8]
 00590AC6    call        TCCalendar.SetAlign
 00590ACB    mov         dl,1
 00590ACD    mov         eax,dword ptr [ebp-4]
 00590AD0    mov         ecx,dword ptr [eax]
 00590AD2    call        dword ptr [ecx+5C];TChart.SetAutoSize
 00590AD5    mov         esp,ebp
 00590AD7    pop         ebp
 00590AD8    ret
end;*}

//00590ADC
{*procedure sub_00590ADC(?:?);
begin
 00590ADC    push        ebp
 00590ADD    mov         ebp,esp
 00590ADF    push        ecx
 00590AE0    mov         eax,dword ptr [ebp+8]
 00590AE3    mov         eax,dword ptr [eax-4]
 00590AE6    cmp         byte ptr [eax+229],0
>00590AED    je          00590B63
 00590AEF    mov         eax,dword ptr [ebp+8]
 00590AF2    mov         eax,dword ptr [eax-4]
 00590AF5    test        byte ptr [eax+228],1
>00590AFC    je          00590B63
 00590AFE    mov         eax,dword ptr [ebp+8]
 00590B01    mov         eax,dword ptr [eax-4]
 00590B04    cmp         byte ptr [eax+22F],1
>00590B0B    je          00590B63
 00590B0D    push        0
 00590B0F    mov         eax,dword ptr [ebp+8]
 00590B12    mov         eax,dword ptr [eax-4]
 00590B15    call        TWinControl.GetHandle
 00590B1A    push        eax
 00590B1B    call        USER32.GetSystemMenu
 00590B20    mov         dword ptr [ebp-4],eax
 00590B23    push        0
 00590B25    push        0F130
 00590B2A    mov         eax,dword ptr [ebp-4]
 00590B2D    push        eax
 00590B2E    call        USER32.DeleteMenu
 00590B33    push        0
 00590B35    push        0F030
 00590B3A    mov         eax,dword ptr [ebp-4]
 00590B3D    push        eax
 00590B3E    call        USER32.DeleteMenu
 00590B43    push        0
 00590B45    push        0F020
 00590B4A    mov         eax,dword ptr [ebp-4]
 00590B4D    push        eax
 00590B4E    call        USER32.DeleteMenu
 00590B53    push        0
 00590B55    push        0F120
 00590B5A    mov         eax,dword ptr [ebp-4]
 00590B5D    push        eax
 00590B5E    call        USER32.DeleteMenu
 00590B63    pop         ecx
 00590B64    pop         ebp
 00590B65    ret
end;*}

//00590B68
{*procedure TToolDockForm.WMNCCreate(?:?);
begin
 00590B68    push        ebp
 00590B69    mov         ebp,esp
 00590B6B    add         esp,0FFFFFFF8
 00590B6E    mov         dword ptr [ebp-8],edx
 00590B71    mov         dword ptr [ebp-4],eax
 00590B74    mov         edx,dword ptr [ebp-8]
 00590B77    mov         eax,dword ptr [ebp-4]
 00590B7A    call        TCustomForm.WMNCCreate
 00590B7F    mov         eax,dword ptr [ebp-4]
 00590B82    test        byte ptr [eax+1C],10;TToolDockForm.FComponentState:TComponentState
>00590B86    jne         00590B8F
 00590B88    push        ebp
 00590B89    call        00590ADC
 00590B8E    pop         ecx
 00590B8F    pop         ecx
 00590B90    pop         ecx
 00590B91    pop         ebp
 00590B92    ret
end;*}

//00590B94
{*procedure TToolDockForm.WMNCHitTest(?:?);
begin
 00590B94    push        ebp
 00590B95    mov         ebp,esp
 00590B97    add         esp,0FFFFFFE0
 00590B9A    mov         dword ptr [ebp-8],edx
 00590B9D    mov         dword ptr [ebp-4],eax
 00590BA0    mov         edx,dword ptr [ebp-8]
 00590BA3    mov         eax,dword ptr [ebp-4]
 00590BA6    call        TCustomDockForm.WMNCHitTest
 00590BAB    lea         edx,[ebp-20]
 00590BAE    mov         eax,dword ptr [ebp-4]
 00590BB1    call        005F2E0C
 00590BB6    push        20
 00590BB8    call        USER32.GetSystemMetrics
 00590BBD    mov         dword ptr [ebp-0C],eax
 00590BC0    push        21
 00590BC2    call        USER32.GetSystemMetrics
 00590BC7    mov         dword ptr [ebp-10],eax
 00590BCA    mov         eax,dword ptr [ebp-10]
 00590BCD    neg         eax
 00590BCF    push        eax
 00590BD0    mov         eax,dword ptr [ebp-0C]
 00590BD3    neg         eax
 00590BD5    push        eax
 00590BD6    lea         eax,[ebp-20]
 00590BD9    push        eax
 00590BDA    call        USER32.InflateRect
 00590BDF    mov         eax,dword ptr [ebp-8]
 00590BE2    mov         eax,dword ptr [eax+0C]
 00590BE5    cmp         eax,11
>00590BE8    ja          00590CC2
 00590BEE    mov         al,byte ptr [eax+590BFB]
 00590BF4    jmp         dword ptr [eax*4+590C0D]
 00590BF4    db          0
 00590BF4    db          3
 00590BF4    db          0
 00590BF4    db          0
 00590BF4    db          5
 00590BF4    db          0
 00590BF4    db          0
 00590BF4    db          0
 00590BF4    db          0
 00590BF4    db          0
 00590BF4    db          0
 00590BF4    db          0
 00590BF4    db          0
 00590BF4    db          1
 00590BF4    db          2
 00590BF4    db          0
 00590BF4    db          4
 00590BF4    db          5
 00590BF4    dd          00590CC2
 00590BF4    dd          00590C25
 00590BF4    dd          00590C4C
 00590BF4    dd          00590C70
 00590BF4    dd          00590C7C
 00590BF4    dd          00590CA0
 00590C25    mov         eax,dword ptr [ebp-8]
 00590C28    movsx       eax,word ptr [eax+0A]
 00590C2C    cmp         eax,dword ptr [ebp-1C]
>00590C2F    jge         00590C40
 00590C31    mov         eax,dword ptr [ebp-8]
 00590C34    mov         dword ptr [eax+0C],0C
>00590C3B    jmp         00590CC2
 00590C40    mov         eax,dword ptr [ebp-8]
 00590C43    mov         dword ptr [eax+0C],0A
>00590C4A    jmp         00590CC2
 00590C4C    mov         eax,dword ptr [ebp-8]
 00590C4F    movsx       eax,word ptr [eax+0A]
 00590C53    cmp         eax,dword ptr [ebp-1C]
>00590C56    jge         00590C64
 00590C58    mov         eax,dword ptr [ebp-8]
 00590C5B    mov         dword ptr [eax+0C],0C
>00590C62    jmp         00590CC2
 00590C64    mov         eax,dword ptr [ebp-8]
 00590C67    mov         dword ptr [eax+0C],0B
>00590C6E    jmp         00590CC2
 00590C70    mov         eax,dword ptr [ebp-8]
 00590C73    mov         dword ptr [eax+0C],2
>00590C7A    jmp         00590CC2
 00590C7C    mov         eax,dword ptr [ebp-8]
 00590C7F    movsx       eax,word ptr [eax+0A]
 00590C83    cmp         eax,dword ptr [ebp-14]
>00590C86    jle         00590C94
 00590C88    mov         eax,dword ptr [ebp-8]
 00590C8B    mov         dword ptr [eax+0C],0F
>00590C92    jmp         00590CC2
 00590C94    mov         eax,dword ptr [ebp-8]
 00590C97    mov         dword ptr [eax+0C],0A
>00590C9E    jmp         00590CC2
 00590CA0    mov         eax,dword ptr [ebp-8]
 00590CA3    movsx       eax,word ptr [eax+0A]
 00590CA7    cmp         eax,dword ptr [ebp-14]
>00590CAA    jle         00590CB8
 00590CAC    mov         eax,dword ptr [ebp-8]
 00590CAF    mov         dword ptr [eax+0C],0F
>00590CB6    jmp         00590CC2
 00590CB8    mov         eax,dword ptr [ebp-8]
 00590CBB    mov         dword ptr [eax+0C],0B
 00590CC2    mov         esp,ebp
 00590CC4    pop         ebp
 00590CC5    ret
end;*}

//00590CC8
{*procedure TToolDockForm.WMNCLButtonDown(?:?);
begin
 00590CC8    push        ebp
 00590CC9    mov         ebp,esp
 00590CCB    add         esp,0FFFFFFF8
 00590CCE    mov         dword ptr [ebp-8],edx
 00590CD1    mov         dword ptr [ebp-4],eax
 00590CD4    mov         eax,dword ptr [ebp-4]
 00590CD7    mov         byte ptr [eax+300],0;TToolDockForm.FSizingOrientation:TSizingOrientation
 00590CDE    mov         eax,dword ptr [ebp-8]
 00590CE1    mov         eax,dword ptr [eax+4]
 00590CE4    add         eax,0FFFFFFF6
 00590CE7    sub         eax,2
>00590CEA    jb          00590CF5
>00590CEC    je          00590D01
 00590CEE    sub         eax,3
>00590CF1    je          00590D01
>00590CF3    jmp         00590D0B
 00590CF5    mov         eax,dword ptr [ebp-4]
 00590CF8    mov         byte ptr [eax+300],1;TToolDockForm.FSizingOrientation:TSizingOrientation
>00590CFF    jmp         00590D0B
 00590D01    mov         eax,dword ptr [ebp-4]
 00590D04    mov         byte ptr [eax+300],2;TToolDockForm.FSizingOrientation:TSizingOrientation
 00590D0B    mov         edx,dword ptr [ebp-8]
 00590D0E    mov         eax,dword ptr [ebp-4]
 00590D11    call        TCustomDockForm.WMNCLButtonDown
 00590D16    pop         ecx
 00590D17    pop         ecx
 00590D18    pop         ebp
 00590D19    ret
end;*}

//00590D1C
{*procedure TToolDockForm.WMSize(?:?);
begin
 00590D1C    push        ebp
 00590D1D    mov         ebp,esp
 00590D1F    add         esp,0FFFFFFF8
 00590D22    mov         dword ptr [ebp-8],edx
 00590D25    mov         dword ptr [ebp-4],eax
 00590D28    mov         edx,dword ptr [ebp-8]
 00590D2B    mov         eax,dword ptr [ebp-4]
 00590D2E    call        TScrollingWinControl.WMSize
 00590D33    mov         eax,dword ptr [ebp-4]
 00590D36    mov         al,byte ptr [eax+300];TToolDockForm.FSizingOrientation:TSizingOrientation
 00590D3C    dec         al
>00590D3E    je          00590D46
 00590D40    dec         al
>00590D42    je          00590D60
>00590D44    jmp         00590D78
 00590D46    mov         eax,dword ptr [ebp-4]
 00590D49    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 00590D4C    mov         edx,dword ptr [ebp-4]
 00590D4F    sub         eax,dword ptr [edx+2F4]
 00590D55    mov         edx,dword ptr [ebp-4]
 00590D58    add         dword ptr [edx+2F8],eax;TToolDockForm.FSizingAdjustH:Integer
>00590D5E    jmp         00590D78
 00590D60    mov         eax,dword ptr [ebp-4]
 00590D63    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 00590D66    mov         edx,dword ptr [ebp-4]
 00590D69    sub         eax,dword ptr [edx+2F0]
 00590D6F    mov         edx,dword ptr [ebp-4]
 00590D72    add         dword ptr [edx+2FC],eax;TToolDockForm.FSizingAdjustW:Integer
 00590D78    pop         ecx
 00590D79    pop         ecx
 00590D7A    pop         ebp
 00590D7B    ret
end;*}

//00590D7C
{*procedure TToolDockForm.WMSysCommand(?:?);
begin
 00590D7C    push        ebp
 00590D7D    mov         ebp,esp
 00590D7F    add         esp,0FFFFFFF8
 00590D82    mov         dword ptr [ebp-8],edx
 00590D85    mov         dword ptr [ebp-4],eax
 00590D88    mov         eax,dword ptr [ebp-8]
 00590D8B    mov         eax,dword ptr [eax+4]
 00590D8E    and         eax,0FFF0
 00590D93    cmp         eax,0F000
>00590D98    jne         00590DB0
 00590D9A    mov         eax,dword ptr [ebp-4]
 00590D9D    xor         edx,edx
 00590D9F    mov         dword ptr [eax+2FC],edx;TToolDockForm.FSizingAdjustW:Integer
 00590DA5    mov         eax,dword ptr [ebp-4]
 00590DA8    xor         edx,edx
 00590DAA    mov         dword ptr [eax+2F8],edx;TToolDockForm.FSizingAdjustH:Integer
 00590DB0    mov         edx,dword ptr [ebp-8]
 00590DB3    mov         eax,dword ptr [ebp-4]
 00590DB6    call        TCustomForm.WMSysCommand
 00590DBB    mov         eax,dword ptr [ebp-4]
 00590DBE    mov         byte ptr [eax+300],0;TToolDockForm.FSizingOrientation:TSizingOrientation
 00590DC5    pop         ecx
 00590DC6    pop         ecx
 00590DC7    pop         ebp
 00590DC8    ret
end;*}

//00590DCC
procedure Finalization;
begin
{*
 00590DCC    push        ebp
 00590DCD    mov         ebp,esp
 00590DCF    xor         eax,eax
 00590DD1    push        ebp
 00590DD2    push        590DF1
 00590DD7    push        dword ptr fs:[eax]
 00590DDA    mov         dword ptr fs:[eax],esp
 00590DDD    inc         dword ptr ds:[6ECCF0]
 00590DE3    xor         eax,eax
 00590DE5    pop         edx
 00590DE6    pop         ecx
 00590DE7    pop         ecx
 00590DE8    mov         dword ptr fs:[eax],edx
 00590DEB    push        590DF8
 00590DF0    ret
>00590DF1    jmp         @HandleFinally
>00590DF6    jmp         00590DF0
 00590DF8    pop         ebp
 00590DF9    ret
*}
end;

end.