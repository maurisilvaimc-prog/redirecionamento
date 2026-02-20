//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ExtDlgs;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls, Buttons;

type
  TOpenPictureDialog = class(TOpenDialog)
  public
    FPicturePanel:TPanel;//fB8
    FPictureLabel:TLabel;//fBC
    FPreviewButton:TSpeedButton;//fC0
    FPaintPanel:TPanel;//fC4
    FImageCtrl:TImage;//fC8
    FSavedFilename:String;//fCC
    constructor Create(AOwner:TComponent); virtual;//v2C//0058F5D8
    //function Execute:?; virtual;//v3C//0058FD10
    //procedure v44(?:?); virtual;//v44//0058FD60
    procedure sub_0058F9F0; dynamic;//0058F9F0
    procedure sub_0058FC0C; dynamic;//0058FC0C
    procedure sub_0058FBEC; dynamic;//0058FBEC
    function IsStoredFilter(Value:String):Boolean;//005900B4
  end;
  TSavePictureDialog = class(TOpenPictureDialog)
  public
    //function Execute:?; virtual;//v3C//00590058
  end;
  TSilentPaintPanel = class(TPanel)
  public
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//0058F54C
  end;
    procedure sub_0058F1CC;//0058F1CC
    procedure WMPaint(Message:TWMPaint);//0058F54C
    constructor Create(AOwner:TComponent);//0058F5D8
    //function sub_0058F9C8(?:?):?;//0058F9C8
    procedure sub_0058F9F0;//0058F9F0
    procedure sub_0058FBEC;//0058FBEC
    procedure sub_0058FC0C;//0058FC0C
    //function Execute:?;//0058FD10
    //procedure sub_0058FD60(?:?);//0058FD60
    //function Execute:?;//00590058
    procedure Finalization;//00590118

implementation

//0058F1CC
procedure sub_0058F1CC;
begin
{*
 0058F1CC    push        ebp
 0058F1CD    mov         ebp,esp
 0058F1CF    sub         dword ptr ds:[6ECCE8],1
>0058F1D6    jae         0058F1F8
 0058F1D8    mov         edx,dword ptr ds:[5EE128];TControl
 0058F1DE    mov         eax,[0058D274];TCustomActionList
 0058F1E3    call        00644494
 0058F1E8    mov         edx,dword ptr ds:[5EE128];TControl
 0058F1EE    mov         eax,[0058D110];TContainedAction
 0058F1F3    call        00644494
 0058F1F8    pop         ebp
 0058F1F9    ret
*}
end;

//0058F54C
procedure TSilentPaintPanel.WMPaint(Message:TWMPaint);
begin
{*
 0058F54C    push        ebp
 0058F54D    mov         ebp,esp
 0058F54F    add         esp,0FFFFFFF4
 0058F552    push        ebx
 0058F553    push        esi
 0058F554    push        edi
 0058F555    xor         ecx,ecx
 0058F557    mov         dword ptr [ebp-0C],ecx
 0058F55A    mov         dword ptr [ebp-8],edx
 0058F55D    mov         dword ptr [ebp-4],eax
 0058F560    xor         eax,eax
 0058F562    push        ebp
 0058F563    push        58F5C9
 0058F568    push        dword ptr fs:[eax]
 0058F56B    mov         dword ptr fs:[eax],esp
 0058F56E    xor         eax,eax
 0058F570    push        ebp
 0058F571    push        58F591
 0058F576    push        dword ptr fs:[eax]
 0058F579    mov         dword ptr fs:[eax],esp
 0058F57C    mov         edx,dword ptr [ebp-8]
 0058F57F    mov         eax,dword ptr [ebp-4]
 0058F582    call        TCustomControl.WMPaint
 0058F587    xor         eax,eax
 0058F589    pop         edx
 0058F58A    pop         ecx
 0058F58B    pop         ecx
 0058F58C    mov         dword ptr fs:[eax],edx
>0058F58F    jmp         0058F5B3
>0058F591    jmp         @HandleAnyException
 0058F596    lea         edx,[ebp-0C]
 0058F599    mov         eax,[006E9DF8];^gvar_0063CA00
 0058F59E    call        LoadResString
 0058F5A3    mov         edx,dword ptr [ebp-0C]
 0058F5A6    mov         eax,dword ptr [ebp-4]
 0058F5A9    call        TTabPage.SetCaption
 0058F5AE    call        @DoneExcept
 0058F5B3    xor         eax,eax
 0058F5B5    pop         edx
 0058F5B6    pop         ecx
 0058F5B7    pop         ecx
 0058F5B8    mov         dword ptr fs:[eax],edx
 0058F5BB    push        58F5D0
 0058F5C0    lea         eax,[ebp-0C]
 0058F5C3    call        @LStrClr
 0058F5C8    ret
>0058F5C9    jmp         @HandleFinally
>0058F5CE    jmp         0058F5C0
 0058F5D0    pop         edi
 0058F5D1    pop         esi
 0058F5D2    pop         ebx
 0058F5D3    mov         esp,ebp
 0058F5D5    pop         ebp
 0058F5D6    ret
*}
end;

//0058F5D8
constructor TOpenPictureDialog.Create(AOwner:TComponent);
begin
{*
 0058F5D8    push        ebp
 0058F5D9    mov         ebp,esp
 0058F5DB    add         esp,0FFFFFFDC
 0058F5DE    push        ebx
 0058F5DF    xor         ebx,ebx
 0058F5E1    mov         dword ptr [ebp-24],ebx
 0058F5E4    test        dl,dl
>0058F5E6    je          0058F5F0
 0058F5E8    add         esp,0FFFFFFF0
 0058F5EB    call        @ClassCreate
 0058F5F0    mov         dword ptr [ebp-0C],ecx
 0058F5F3    mov         byte ptr [ebp-5],dl
 0058F5F6    mov         dword ptr [ebp-4],eax
 0058F5F9    xor         eax,eax
 0058F5FB    push        ebp
 0058F5FC    push        58F917
 0058F601    push        dword ptr fs:[eax]
 0058F604    mov         dword ptr fs:[eax],esp
 0058F607    mov         ecx,dword ptr [ebp-0C]
 0058F60A    xor         edx,edx
 0058F60C    mov         eax,dword ptr [ebp-4]
 0058F60F    call        TOpenDialog.Create
 0058F614    lea         edx,[ebp-24]
 0058F617    mov         eax,[005BE9D4];TGraphic
 0058F61C    call        005C93C4
 0058F621    mov         edx,dword ptr [ebp-24]
 0058F624    mov         eax,dword ptr [ebp-4]
 0058F627    add         eax,60;TOpenPictureDialog.Filter:String
 0058F62A    call        @LStrAsg
 0058F62F    mov         ecx,dword ptr [ebp-4]
 0058F632    mov         dl,1
 0058F634    mov         eax,[005DAC80];TPanel
 0058F639    call        TCustomPanel.Create;TPanel.Create
 0058F63E    mov         edx,dword ptr [ebp-4]
 0058F641    mov         dword ptr [edx+0B8],eax;TOpenPictureDialog.FPicturePanel:TPanel
 0058F647    mov         eax,dword ptr [ebp-4]
 0058F64A    mov         eax,dword ptr [eax+0B8];TOpenPictureDialog.FPicturePanel:TPanel
 0058F650    mov         dword ptr [ebp-10],eax
 0058F653    mov         edx,58F948;'PicturePanel'
 0058F658    mov         eax,dword ptr [ebp-10]
 0058F65B    mov         ecx,dword ptr [eax]
 0058F65D    call        dword ptr [ecx+18];TPanel.sub_005F33C8
 0058F660    xor         edx,edx
 0058F662    mov         eax,dword ptr [ebp-10]
 0058F665    call        TTabPage.SetCaption
 0058F66A    push        0A9
 0058F66F    push        0C8
 0058F674    mov         ecx,5
 0058F679    mov         edx,0CC
 0058F67E    mov         eax,dword ptr [ebp-10]
 0058F681    mov         ebx,dword ptr [eax]
 0058F683    call        dword ptr [ebx+84];TPanel.sub_005FB7F8
 0058F689    xor         edx,edx
 0058F68B    mov         eax,dword ptr [ebp-10]
 0058F68E    call        TChart.SetBevelOuter
 0058F693    mov         edx,6
 0058F698    mov         eax,dword ptr [ebp-10]
 0058F69B    call        TChart.SetBorderWidth
 0058F6A0    mov         dx,1
 0058F6A4    mov         eax,dword ptr [ebp-10]
 0058F6A7    call        TCCalendar.SetTabOrder
 0058F6AC    mov         ecx,dword ptr [ebp-4]
 0058F6AF    mov         dl,1
 0058F6B1    mov         eax,[0059205C];TLabel
 0058F6B6    call        TCustomLabel.Create;TLabel.Create
 0058F6BB    mov         edx,dword ptr [ebp-4]
 0058F6BE    mov         dword ptr [edx+0BC],eax;TOpenPictureDialog.FPictureLabel:TLabel
 0058F6C4    mov         eax,dword ptr [ebp-4]
 0058F6C7    mov         eax,dword ptr [eax+0BC];TOpenPictureDialog.FPictureLabel:TLabel
 0058F6CD    mov         dword ptr [ebp-14],eax
 0058F6D0    mov         edx,58F960;'PictureLabel'
 0058F6D5    mov         eax,dword ptr [ebp-14]
 0058F6D8    mov         ecx,dword ptr [eax]
 0058F6DA    call        dword ptr [ecx+18];TLabel.sub_005F33C8
 0058F6DD    xor         edx,edx
 0058F6DF    mov         eax,dword ptr [ebp-14]
 0058F6E2    call        TTabPage.SetCaption
 0058F6E7    push        9D
 0058F6EC    push        17
 0058F6EE    mov         ecx,6
 0058F6F3    mov         edx,6
 0058F6F8    mov         eax,dword ptr [ebp-14]
 0058F6FB    mov         ebx,dword ptr [eax]
 0058F6FD    call        dword ptr [ebx+84];TLabel.sub_005F2870
 0058F703    mov         dl,1
 0058F705    mov         eax,dword ptr [ebp-14]
 0058F708    call        TCCalendar.SetAlign
 0058F70D    xor         edx,edx
 0058F70F    mov         eax,dword ptr [ebp-14]
 0058F712    mov         ecx,dword ptr [eax]
 0058F714    call        dword ptr [ecx+5C];TLabel.SetAutoSize
 0058F717    mov         eax,dword ptr [ebp-4]
 0058F71A    mov         edx,dword ptr [eax+0B8];TOpenPictureDialog.FPicturePanel:TPanel
 0058F720    mov         eax,dword ptr [ebp-14]
 0058F723    mov         ecx,dword ptr [eax]
 0058F725    call        dword ptr [ecx+68];TLabel.sub_005F34DC
 0058F728    mov         ecx,dword ptr [ebp-4]
 0058F72B    mov         dl,1
 0058F72D    mov         eax,[00638E9C];TSpeedButton
 0058F732    call        TSpeedButton.Create;TSpeedButton.Create
 0058F737    mov         edx,dword ptr [ebp-4]
 0058F73A    mov         dword ptr [edx+0C0],eax;TOpenPictureDialog.FPreviewButton:TSpeedButton
 0058F740    mov         eax,dword ptr [ebp-4]
 0058F743    mov         eax,dword ptr [eax+0C0];TOpenPictureDialog.FPreviewButton:TSpeedButton
 0058F749    mov         dword ptr [ebp-18],eax
 0058F74C    mov         edx,58F978;'PreviewButton'
 0058F751    mov         eax,dword ptr [ebp-18]
 0058F754    mov         ecx,dword ptr [eax]
 0058F756    call        dword ptr [ecx+18];TSpeedButton.sub_005F33C8
 0058F759    push        17
 0058F75B    push        16
 0058F75D    mov         ecx,1
 0058F762    mov         edx,4D
 0058F767    mov         eax,dword ptr [ebp-18]
 0058F76A    mov         ebx,dword ptr [eax]
 0058F76C    call        dword ptr [ebx+84];TSpeedButton.sub_005F2870
 0058F772    xor         edx,edx
 0058F774    mov         eax,dword ptr [ebp-18]
 0058F777    mov         ecx,dword ptr [eax]
 0058F779    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0058F77C    mov         eax,dword ptr [ebp-18]
 0058F77F    call        TSpeedButton.GetGlyph
 0058F784    mov         ecx,58F990;'PREVIEWGLYPH'
 0058F789    mov         edx,dword ptr ds:[6EA390];0x0 gvar_006EA390
 0058F78F    call        TBitmap.LoadFromResourceName
 0058F794    mov         eax,dword ptr [ebp-18]
 0058F797    lea         edx,[eax+80];TSpeedButton.Hint:String
 0058F79D    mov         eax,[006E9FB0];^gvar_0063CD70
 0058F7A2    call        LoadResString
 0058F7A7    xor         edx,edx
 0058F7A9    mov         eax,dword ptr [ebp-18]
 0058F7AC    call        TCCalendar.SetParentShowHint
 0058F7B1    mov         dl,1
 0058F7B3    mov         eax,dword ptr [ebp-18]
 0058F7B6    call        TCCalendar.SetShowHint
 0058F7BB    mov         eax,dword ptr [ebp-4]
 0058F7BE    mov         edx,dword ptr [ebp-18]
 0058F7C1    mov         dword ptr [edx+124],eax;TSpeedButton.?f124:TOpenPictureDialog
 0058F7C7    mov         eax,dword ptr [eax]
 0058F7C9    mov         eax,dword ptr [eax+44];TOpenPictureDialog.FTemplate:PChar
 0058F7CC    mov         dword ptr [edx+120],eax;TSpeedButton.FOnClick:TNotifyEvent
 0058F7D2    mov         eax,dword ptr [ebp-4]
 0058F7D5    mov         edx,dword ptr [eax+0B8];TOpenPictureDialog.FPicturePanel:TPanel
 0058F7DB    mov         eax,dword ptr [ebp-18]
 0058F7DE    mov         ecx,dword ptr [eax]
 0058F7E0    call        dword ptr [ecx+68];TSpeedButton.sub_005F34DC
 0058F7E3    mov         ecx,dword ptr [ebp-4]
 0058F7E6    mov         dl,1
 0058F7E8    mov         eax,[0058F3F0];TSilentPaintPanel
 0058F7ED    call        TCustomPanel.Create;TSilentPaintPanel.Create
 0058F7F2    mov         edx,dword ptr [ebp-4]
 0058F7F5    mov         dword ptr [edx+0C4],eax;TOpenPictureDialog.FPaintPanel:TPanel
 0058F7FB    mov         eax,dword ptr [ebp-4]
 0058F7FE    mov         eax,dword ptr [eax+0C4];TOpenPictureDialog.FPaintPanel:TPanel
 0058F804    mov         dword ptr [ebp-1C],eax
 0058F807    mov         edx,58F9A8;'PaintPanel'
 0058F80C    mov         eax,dword ptr [ebp-1C]
 0058F80F    mov         ecx,dword ptr [eax]
 0058F811    call        dword ptr [ecx+18];TPanel.sub_005F33C8
 0058F814    xor         edx,edx
 0058F816    mov         eax,dword ptr [ebp-1C]
 0058F819    call        TTabPage.SetCaption
 0058F81E    push        9D
 0058F823    push        91
 0058F828    mov         ecx,1D
 0058F82D    mov         edx,6
 0058F832    mov         eax,dword ptr [ebp-1C]
 0058F835    mov         ebx,dword ptr [eax]
 0058F837    call        dword ptr [ebx+84];TPanel.sub_005FB7F8
 0058F83D    mov         dl,5
 0058F83F    mov         eax,dword ptr [ebp-1C]
 0058F842    call        TCCalendar.SetAlign
 0058F847    mov         dl,2
 0058F849    mov         eax,dword ptr [ebp-1C]
 0058F84C    call        TChart.SetBevelInner
 0058F851    mov         dl,1
 0058F853    mov         eax,dword ptr [ebp-1C]
 0058F856    call        TChart.SetBevelOuter
 0058F85B    xor         edx,edx
 0058F85D    mov         eax,dword ptr [ebp-1C]
 0058F860    call        TCCalendar.SetTabOrder
 0058F865    mov         ecx,dword ptr [ebp-4]
 0058F868    mov         dl,1
 0058F86A    mov         eax,[005DA234];TImage
 0058F86F    call        TImage.Create;TImage.Create
 0058F874    mov         edx,dword ptr [ebp-4]
 0058F877    mov         dword ptr [edx+0C8],eax;TOpenPictureDialog.FImageCtrl:TImage
 0058F87D    mov         eax,dword ptr [ebp-4]
 0058F880    mov         edx,dword ptr [eax+0B8];TOpenPictureDialog.FPicturePanel:TPanel
 0058F886    mov         eax,dword ptr [ebp-1C]
 0058F889    mov         ecx,dword ptr [eax]
 0058F88B    call        dword ptr [ecx+68];TPanel.sub_005F34DC
 0058F88E    mov         eax,dword ptr [ebp-4]
 0058F891    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058F897    mov         dword ptr [ebp-20],eax
 0058F89A    mov         edx,58F9BC;'PaintBox'
 0058F89F    mov         eax,dword ptr [ebp-20]
 0058F8A2    mov         ecx,dword ptr [eax]
 0058F8A4    call        dword ptr [ecx+18];TImage.sub_005F33C8
 0058F8A7    mov         dl,5
 0058F8A9    mov         eax,dword ptr [ebp-20]
 0058F8AC    call        TCCalendar.SetAlign
 0058F8B1    mov         eax,dword ptr [ebp-20]
 0058F8B4    mov         edx,dword ptr [ebp-4]
 0058F8B7    mov         dword ptr [eax+12C],edx;TImage.?f12C:TOpenPictureDialog
 0058F8BD    mov         edx,dword ptr [edx]
 0058F8BF    mov         edx,dword ptr [edx+44];TOpenPictureDialog.FTemplate:PChar
 0058F8C2    mov         dword ptr [eax+128],edx;TImage.FOnDblClick:TNotifyEvent
 0058F8C8    mov         eax,dword ptr [ebp-4]
 0058F8CB    mov         edx,dword ptr [eax+0C4];TOpenPictureDialog.FPaintPanel:TPanel
 0058F8D1    mov         eax,dword ptr [ebp-20]
 0058F8D4    mov         ecx,dword ptr [eax]
 0058F8D6    call        dword ptr [ecx+68];TImage.sub_005F34DC
 0058F8D9    mov         dl,1
 0058F8DB    mov         eax,dword ptr [ebp-20]
 0058F8DE    call        TImage.SetProportional
 0058F8E3    mov         dl,1
 0058F8E5    mov         eax,dword ptr [ebp-20]
 0058F8E8    call        TImage.SetStretch
 0058F8ED    mov         dl,1
 0058F8EF    mov         eax,dword ptr [ebp-20]
 0058F8F2    call        TImage.SetCenter
 0058F8F7    mov         eax,dword ptr [ebp-20]
 0058F8FA    mov         byte ptr [eax+17A],1;TImage.IncrementalDisplay:Boolean
 0058F901    xor         eax,eax
 0058F903    pop         edx
 0058F904    pop         ecx
 0058F905    pop         ecx
 0058F906    mov         dword ptr fs:[eax],edx
 0058F909    push        58F91E
 0058F90E    lea         eax,[ebp-24]
 0058F911    call        @LStrClr
 0058F916    ret
>0058F917    jmp         @HandleFinally
>0058F91C    jmp         0058F90E
 0058F91E    mov         eax,dword ptr [ebp-4]
 0058F921    cmp         byte ptr [ebp-5],0
>0058F925    je          0058F936
 0058F927    call        @AfterConstruction
 0058F92C    pop         dword ptr fs:[0]
 0058F933    add         esp,0C
 0058F936    mov         eax,dword ptr [ebp-4]
 0058F939    pop         ebx
 0058F93A    mov         esp,ebp
 0058F93C    pop         ebp
 0058F93D    ret
*}
end;

//0058F9C8
{*function sub_0058F9C8(?:?):?;
begin
 0058F9C8    push        ebp
 0058F9C9    mov         ebp,esp
 0058F9CB    add         esp,0FFFFFFF8
 0058F9CE    mov         dword ptr [ebp-4],eax
 0058F9D1    mov         eax,dword ptr [ebp-4]
 0058F9D4    call        @LStrToPChar
 0058F9D9    push        eax
 0058F9DA    call        KERNEL32.GetFileAttributesA
 0058F9DF    cmp         eax,0FFFFFFFF
 0058F9E2    setne       byte ptr [ebp-5]
 0058F9E6    mov         al,byte ptr [ebp-5]
 0058F9E9    pop         ecx
 0058F9EA    pop         ecx
 0058F9EB    pop         ebp
 0058F9EC    ret
end;*}

//0058F9F0
procedure TOpenPictureDialog.sub_0058F9F0;
begin
{*
 0058F9F0    push        ebp
 0058F9F1    mov         ebp,esp
 0058F9F3    add         esp,0FFFFFFD4
 0058F9F6    push        ebx
 0058F9F7    push        esi
 0058F9F8    push        edi
 0058F9F9    xor         edx,edx
 0058F9FB    mov         dword ptr [ebp-2C],edx
 0058F9FE    mov         dword ptr [ebp-28],edx
 0058FA01    mov         dword ptr [ebp-10],edx
 0058FA04    mov         dword ptr [ebp-14],edx
 0058FA07    mov         dword ptr [ebp-8],edx
 0058FA0A    mov         dword ptr [ebp-4],eax
 0058FA0D    xor         eax,eax
 0058FA0F    push        ebp
 0058FA10    push        58FBDB
 0058FA15    push        dword ptr fs:[eax]
 0058FA18    mov         dword ptr fs:[eax],esp
 0058FA1B    lea         edx,[ebp-8]
 0058FA1E    mov         eax,dword ptr [ebp-4]
 0058FA21    call        TOpenDialog.GetFileName
 0058FA26    mov         eax,dword ptr [ebp-8]
 0058FA29    mov         edx,dword ptr [ebp-4]
 0058FA2C    mov         edx,dword ptr [edx+0CC];TOpenPictureDialog.FSavedFilename:String
 0058FA32    call        @LStrCmp
>0058FA37    je          0058FBA3
 0058FA3D    mov         eax,dword ptr [ebp-4]
 0058FA40    add         eax,0CC;TOpenPictureDialog.FSavedFilename:String
 0058FA45    mov         edx,dword ptr [ebp-8]
 0058FA48    call        @LStrAsg
 0058FA4D    mov         eax,dword ptr [ebp-8]
 0058FA50    call        00658094
 0058FA55    test        al,al
>0058FA57    je          0058FA67
 0058FA59    push        ebp
 0058FA5A    mov         eax,dword ptr [ebp-8]
 0058FA5D    call        0058F9C8
 0058FA62    pop         ecx
 0058FA63    test        al,al
>0058FA65    jne         0058FA6B
 0058FA67    xor         eax,eax
>0058FA69    jmp         0058FA6D
 0058FA6B    mov         al,1
 0058FA6D    mov         byte ptr [ebp-9],al
 0058FA70    cmp         byte ptr [ebp-9],0
>0058FA74    je          0058FB41
 0058FA7A    xor         eax,eax
 0058FA7C    push        ebp
 0058FA7D    push        58FB33
 0058FA82    push        dword ptr fs:[eax]
 0058FA85    mov         dword ptr fs:[eax],esp
 0058FA88    mov         eax,dword ptr [ebp-4]
 0058FA8B    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058FA91    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0058FA97    mov         edx,dword ptr [ebp-8]
 0058FA9A    call        005C4368
 0058FA9F    lea         eax,[ebp-10]
 0058FAA2    push        eax
 0058FAA3    lea         edx,[ebp-14]
 0058FAA6    mov         eax,[006E9FAC];^gvar_0063CD68
 0058FAAB    call        LoadResString
 0058FAB0    mov         eax,dword ptr [ebp-14]
 0058FAB3    push        eax
 0058FAB4    mov         eax,dword ptr [ebp-4]
 0058FAB7    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058FABD    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0058FAC3    call        TPicture.GetWidth
 0058FAC8    mov         dword ptr [ebp-24],eax
 0058FACB    mov         byte ptr [ebp-20],0
 0058FACF    mov         eax,dword ptr [ebp-4]
 0058FAD2    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058FAD8    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0058FADE    call        TPicture.GetHeight
 0058FAE3    mov         dword ptr [ebp-1C],eax
 0058FAE6    mov         byte ptr [ebp-18],0
 0058FAEA    lea         edx,[ebp-24]
 0058FAED    mov         ecx,1
 0058FAF2    pop         eax
 0058FAF3    call        00658FBC
 0058FAF8    mov         edx,dword ptr [ebp-10]
 0058FAFB    mov         eax,dword ptr [ebp-4]
 0058FAFE    mov         eax,dword ptr [eax+0BC];TOpenPictureDialog.FPictureLabel:TLabel
 0058FB04    call        TTabPage.SetCaption
 0058FB09    mov         eax,dword ptr [ebp-4]
 0058FB0C    mov         eax,dword ptr [eax+0C0];TOpenPictureDialog.FPreviewButton:TSpeedButton
 0058FB12    mov         dl,1
 0058FB14    mov         ecx,dword ptr [eax]
 0058FB16    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0058FB19    mov         eax,dword ptr [ebp-4]
 0058FB1C    mov         eax,dword ptr [eax+0C4];TOpenPictureDialog.FPaintPanel:TPanel
 0058FB22    xor         edx,edx
 0058FB24    call        TTabPage.SetCaption
 0058FB29    xor         eax,eax
 0058FB2B    pop         edx
 0058FB2C    pop         ecx
 0058FB2D    pop         ecx
 0058FB2E    mov         dword ptr fs:[eax],edx
>0058FB31    jmp         0058FB41
>0058FB33    jmp         @HandleAnyException
 0058FB38    mov         byte ptr [ebp-9],0
 0058FB3C    call        @DoneExcept
 0058FB41    cmp         byte ptr [ebp-9],0
>0058FB45    jne         0058FBA3
 0058FB47    lea         edx,[ebp-28]
 0058FB4A    mov         eax,[006E9FA8];^gvar_0063CD60
 0058FB4F    call        LoadResString
 0058FB54    mov         edx,dword ptr [ebp-28]
 0058FB57    mov         eax,dword ptr [ebp-4]
 0058FB5A    mov         eax,dword ptr [eax+0BC];TOpenPictureDialog.FPictureLabel:TLabel
 0058FB60    call        TTabPage.SetCaption
 0058FB65    mov         eax,dword ptr [ebp-4]
 0058FB68    mov         eax,dword ptr [eax+0C0];TOpenPictureDialog.FPreviewButton:TSpeedButton
 0058FB6E    xor         edx,edx
 0058FB70    mov         ecx,dword ptr [eax]
 0058FB72    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 0058FB75    mov         eax,dword ptr [ebp-4]
 0058FB78    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058FB7E    xor         edx,edx
 0058FB80    call        TImage.SetPicture
 0058FB85    lea         edx,[ebp-2C]
 0058FB88    mov         eax,[006E9F74];^gvar_0063CCF8
 0058FB8D    call        LoadResString
 0058FB92    mov         edx,dword ptr [ebp-2C]
 0058FB95    mov         eax,dword ptr [ebp-4]
 0058FB98    mov         eax,dword ptr [eax+0C4];TOpenPictureDialog.FPaintPanel:TPanel
 0058FB9E    call        TTabPage.SetCaption
 0058FBA3    mov         eax,dword ptr [ebp-4]
 0058FBA6    call        TOpenDialog.sub_005EA064
 0058FBAB    xor         eax,eax
 0058FBAD    pop         edx
 0058FBAE    pop         ecx
 0058FBAF    pop         ecx
 0058FBB0    mov         dword ptr fs:[eax],edx
 0058FBB3    push        58FBE2
 0058FBB8    lea         eax,[ebp-2C]
 0058FBBB    mov         edx,2
 0058FBC0    call        @LStrArrayClr
 0058FBC5    lea         eax,[ebp-14]
 0058FBC8    mov         edx,2
 0058FBCD    call        @LStrArrayClr
 0058FBD2    lea         eax,[ebp-8]
 0058FBD5    call        @LStrClr
 0058FBDA    ret
>0058FBDB    jmp         @HandleFinally
>0058FBE0    jmp         0058FBB8
 0058FBE2    pop         edi
 0058FBE3    pop         esi
 0058FBE4    pop         ebx
 0058FBE5    mov         esp,ebp
 0058FBE7    pop         ebp
 0058FBE8    ret
*}
end;

//0058FBEC
procedure TOpenPictureDialog.sub_0058FBEC;
begin
{*
 0058FBEC    push        ebp
 0058FBED    mov         ebp,esp
 0058FBEF    push        ecx
 0058FBF0    mov         dword ptr [ebp-4],eax
 0058FBF3    mov         eax,dword ptr [ebp-4]
 0058FBF6    call        TCommonDialog.sub_005E9CE0
 0058FBFB    mov         eax,[006E9DCC];^Application:TApplication
 0058FC00    mov         eax,dword ptr [eax]
 0058FC02    call        005D9268
 0058FC07    pop         ecx
 0058FC08    pop         ebp
 0058FC09    ret
*}
end;

//0058FC0C
procedure TOpenPictureDialog.sub_0058FC0C;
begin
{*
 0058FC0C    push        ebp
 0058FC0D    mov         ebp,esp
 0058FC0F    add         esp,0FFFFFFC8
 0058FC12    xor         edx,edx
 0058FC14    mov         dword ptr [ebp-38],edx
 0058FC17    mov         dword ptr [ebp-4],eax
 0058FC1A    xor         eax,eax
 0058FC1C    push        ebp
 0058FC1D    push        58FD02
 0058FC22    push        dword ptr fs:[eax]
 0058FC25    mov         dword ptr fs:[eax],esp
 0058FC28    lea         eax,[ebp-14]
 0058FC2B    push        eax
 0058FC2C    mov         eax,dword ptr [ebp-4]
 0058FC2F    mov         eax,dword ptr [eax+3C];TOpenPictureDialog.FHandle:HWND
 0058FC32    push        eax
 0058FC33    call        USER32.GetClientRect
 0058FC38    lea         edx,[ebp-24]
 0058FC3B    mov         eax,dword ptr [ebp-4]
 0058FC3E    mov         ecx,dword ptr [eax]
 0058FC40    call        dword ptr [ecx+40];TOpenPictureDialog.sub_005EA74C
 0058FC43    mov         eax,dword ptr [ebp-1C]
 0058FC46    sub         eax,dword ptr [ebp-24]
 0058FC49    add         eax,dword ptr [ebp-24]
 0058FC4C    mov         dword ptr [ebp-14],eax
 0058FC4F    add         dword ptr [ebp-10],4
 0058FC53    lea         edx,[ebp-14]
 0058FC56    mov         eax,dword ptr [ebp-4]
 0058FC59    mov         eax,dword ptr [eax+0B8];TOpenPictureDialog.FPicturePanel:TPanel
 0058FC5F    call        005F2E58
 0058FC64    lea         edx,[ebp-34]
 0058FC67    mov         eax,dword ptr [ebp-4]
 0058FC6A    mov         eax,dword ptr [eax+0C4];TOpenPictureDialog.FPaintPanel:TPanel
 0058FC70    call        005F2E0C
 0058FC75    mov         edx,dword ptr [ebp-2C]
 0058FC78    mov         eax,dword ptr [ebp-4]
 0058FC7B    mov         eax,dword ptr [eax+0C0];TOpenPictureDialog.FPreviewButton:TSpeedButton
 0058FC81    sub         edx,dword ptr [eax+48]
 0058FC84    sub         edx,2
 0058FC87    mov         eax,dword ptr [ebp-4]
 0058FC8A    mov         eax,dword ptr [eax+0C0];TOpenPictureDialog.FPreviewButton:TSpeedButton
 0058FC90    call        TControl.SetLeft
 0058FC95    xor         edx,edx
 0058FC97    mov         eax,dword ptr [ebp-4]
 0058FC9A    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058FCA0    call        TImage.SetPicture
 0058FCA5    mov         eax,dword ptr [ebp-4]
 0058FCA8    add         eax,0CC;TOpenPictureDialog.FSavedFilename:String
 0058FCAD    call        @LStrClr
 0058FCB2    lea         edx,[ebp-38]
 0058FCB5    mov         eax,[006E9F74];^gvar_0063CCF8
 0058FCBA    call        LoadResString
 0058FCBF    mov         edx,dword ptr [ebp-38]
 0058FCC2    mov         eax,dword ptr [ebp-4]
 0058FCC5    mov         eax,dword ptr [eax+0C4];TOpenPictureDialog.FPaintPanel:TPanel
 0058FCCB    call        TTabPage.SetCaption
 0058FCD0    mov         eax,dword ptr [ebp-4]
 0058FCD3    mov         edx,dword ptr [eax+3C];TOpenPictureDialog.FHandle:HWND
 0058FCD6    mov         eax,dword ptr [ebp-4]
 0058FCD9    mov         eax,dword ptr [eax+0B8];TOpenPictureDialog.FPicturePanel:TPanel
 0058FCDF    call        005F8A7C
 0058FCE4    mov         eax,dword ptr [ebp-4]
 0058FCE7    call        TCommonDialog.sub_005E9D04
 0058FCEC    xor         eax,eax
 0058FCEE    pop         edx
 0058FCEF    pop         ecx
 0058FCF0    pop         ecx
 0058FCF1    mov         dword ptr fs:[eax],edx
 0058FCF4    push        58FD09
 0058FCF9    lea         eax,[ebp-38]
 0058FCFC    call        @LStrClr
 0058FD01    ret
>0058FD02    jmp         @HandleFinally
>0058FD07    jmp         0058FCF9
 0058FD09    mov         esp,ebp
 0058FD0B    pop         ebp
 0058FD0C    ret
*}
end;

//0058FD10
{*function TOpenPictureDialog.Execute:?;
begin
 0058FD10    push        ebp
 0058FD11    mov         ebp,esp
 0058FD13    add         esp,0FFFFFFF8
 0058FD16    mov         dword ptr [ebp-4],eax
 0058FD19    mov         eax,[006E9DD8];^gvar_006ECDE0
 0058FD1E    cmp         byte ptr [eax],0
>0058FD21    je          0058FD39
 0058FD23    mov         eax,dword ptr [ebp-4]
 0058FD26    test        byte ptr [eax+5E],1;TOpenPictureDialog.?f5E:byte
>0058FD2A    jne         0058FD39
 0058FD2C    mov         eax,58FD54
 0058FD31    mov         edx,dword ptr [ebp-4]
 0058FD34    mov         dword ptr [edx+44],eax;TOpenPictureDialog.FTemplate:PChar
>0058FD37    jmp         0058FD41
 0058FD39    mov         eax,dword ptr [ebp-4]
 0058FD3C    xor         edx,edx
 0058FD3E    mov         dword ptr [eax+44],edx;TOpenPictureDialog.FTemplate:PChar
 0058FD41    mov         eax,dword ptr [ebp-4]
 0058FD44    call        TOpenDialog.Execute
 0058FD49    mov         byte ptr [ebp-5],al
 0058FD4C    mov         al,byte ptr [ebp-5]
 0058FD4F    pop         ecx
 0058FD50    pop         ecx
 0058FD51    pop         ebp
 0058FD52    ret
end;*}

//0058FD60
{*procedure sub_0058FD60(?:?);
begin
 0058FD60    push        ebp
 0058FD61    mov         ebp,esp
 0058FD63    add         esp,0FFFFFFE8
 0058FD66    push        ebx
 0058FD67    xor         ecx,ecx
 0058FD69    mov         dword ptr [ebp-18],ecx
 0058FD6C    mov         dword ptr [ebp-14],edx
 0058FD6F    mov         dword ptr [ebp-4],eax
 0058FD72    xor         eax,eax
 0058FD74    push        ebp
 0058FD75    push        58FFF2
 0058FD7A    push        dword ptr fs:[eax]
 0058FD7D    mov         dword ptr fs:[eax],esp
 0058FD80    mov         ecx,dword ptr [ebp-4]
 0058FD83    mov         dl,1
 0058FD85    mov         eax,[005CC540];TForm
 0058FD8A    call        TCustomForm.Create;TForm.Create
 0058FD8F    mov         dword ptr [ebp-8],eax
 0058FD92    xor         eax,eax
 0058FD94    push        ebp
 0058FD95    push        58FFD5
 0058FD9A    push        dword ptr fs:[eax]
 0058FD9D    mov         dword ptr fs:[eax],esp
 0058FDA0    mov         edx,590008;'PreviewForm'
 0058FDA5    mov         eax,dword ptr [ebp-8]
 0058FDA8    mov         ecx,dword ptr [eax]
 0058FDAA    call        dword ptr [ecx+18];TForm.sub_005F33C8
 0058FDAD    xor         edx,edx
 0058FDAF    mov         eax,dword ptr [ebp-8]
 0058FDB2    call        TCustomForm.SetVisible
 0058FDB7    lea         edx,[ebp-18]
 0058FDBA    mov         eax,[006E9FB0];^gvar_0063CD70
 0058FDBF    call        LoadResString
 0058FDC4    mov         edx,dword ptr [ebp-18]
 0058FDC7    mov         eax,dword ptr [ebp-8]
 0058FDCA    call        TTabPage.SetCaption
 0058FDCF    mov         dl,5
 0058FDD1    mov         eax,dword ptr [ebp-8]
 0058FDD4    call        TForm.SetBorderStyle
 0058FDD9    mov         eax,dword ptr [ebp-8]
 0058FDDC    mov         byte ptr [eax+22D],1;TForm.FKeyPreview:Boolean
 0058FDE3    mov         dl,4
 0058FDE5    mov         eax,dword ptr [ebp-8]
 0058FDE8    call        TForm.SetPosition
 0058FDED    mov         eax,dword ptr [ebp-8]
 0058FDF0    mov         edx,dword ptr [ebp-4]
 0058FDF3    mov         dword ptr [eax+1E4],edx;TForm.?f1E4:TOpenPictureDialog
 0058FDF9    mov         dword ptr [eax+1E0],590034;TForm.FOnKeyPress:TKeyPressEvent
 0058FE03    mov         ecx,dword ptr [ebp-8]
 0058FE06    mov         dl,1
 0058FE08    mov         eax,[005DAC80];TPanel
 0058FE0D    call        TCustomPanel.Create;TPanel.Create
 0058FE12    mov         dword ptr [ebp-0C],eax
 0058FE15    mov         edx,59001C;'Panel'
 0058FE1A    mov         eax,dword ptr [ebp-0C]
 0058FE1D    mov         ecx,dword ptr [eax]
 0058FE1F    call        dword ptr [ecx+18];TPanel.sub_005F33C8
 0058FE22    xor         edx,edx
 0058FE24    mov         eax,dword ptr [ebp-0C]
 0058FE27    call        TTabPage.SetCaption
 0058FE2C    mov         dl,5
 0058FE2E    mov         eax,dword ptr [ebp-0C]
 0058FE31    call        TCCalendar.SetAlign
 0058FE36    xor         edx,edx
 0058FE38    mov         eax,dword ptr [ebp-0C]
 0058FE3B    call        TChart.SetBevelOuter
 0058FE40    mov         dl,1
 0058FE42    mov         eax,dword ptr [ebp-0C]
 0058FE45    call        TChart.SetBorderStyle
 0058FE4A    mov         edx,5
 0058FE4F    mov         eax,dword ptr [ebp-0C]
 0058FE52    call        TChart.SetBorderWidth
 0058FE57    mov         edx,80000005
 0058FE5C    mov         eax,dword ptr [ebp-0C]
 0058FE5F    call        TControl.SetColor
 0058FE64    mov         edx,dword ptr [ebp-8]
 0058FE67    mov         eax,dword ptr [ebp-0C]
 0058FE6A    mov         ecx,dword ptr [eax]
 0058FE6C    call        dword ptr [ecx+68];TPanel.sub_005F34DC
 0058FE6F    mov         eax,dword ptr [ebp-0C]
 0058FE72    mov         byte ptr [eax+1F8],1;TPanel.FDoubleBuffered:Boolean
 0058FE79    mov         ecx,dword ptr [ebp-8]
 0058FE7C    mov         dl,1
 0058FE7E    mov         eax,[005DA234];TImage
 0058FE83    call        TImage.Create;TImage.Create
 0058FE88    mov         dword ptr [ebp-10],eax
 0058FE8B    mov         edx,59002C;'Image'
 0058FE90    mov         eax,dword ptr [ebp-10]
 0058FE93    mov         ecx,dword ptr [eax]
 0058FE95    call        dword ptr [ecx+18];TImage.sub_005F33C8
 0058FE98    mov         dl,5
 0058FE9A    mov         eax,dword ptr [ebp-10]
 0058FE9D    call        TCCalendar.SetAlign
 0058FEA2    mov         dl,1
 0058FEA4    mov         eax,dword ptr [ebp-10]
 0058FEA7    call        TImage.SetStretch
 0058FEAC    mov         dl,1
 0058FEAE    mov         eax,dword ptr [ebp-10]
 0058FEB1    call        TImage.SetProportional
 0058FEB6    mov         dl,1
 0058FEB8    mov         eax,dword ptr [ebp-10]
 0058FEBB    call        TImage.SetCenter
 0058FEC0    mov         eax,dword ptr [ebp-4]
 0058FEC3    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058FEC9    mov         edx,dword ptr [eax+168];TImage.Picture:TPicture
 0058FECF    mov         eax,dword ptr [ebp-10]
 0058FED2    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0058FED8    mov         ecx,dword ptr [eax]
 0058FEDA    call        dword ptr [ecx+8];TPicture.Assign
 0058FEDD    mov         edx,dword ptr [ebp-0C]
 0058FEE0    mov         eax,dword ptr [ebp-10]
 0058FEE3    mov         ecx,dword ptr [eax]
 0058FEE5    call        dword ptr [ecx+68];TImage.sub_005F34DC
 0058FEE8    mov         eax,dword ptr [ebp-4]
 0058FEEB    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058FEF1    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0058FEF7    call        TPicture.GetWidth
 0058FEFC    test        eax,eax
>0058FEFE    jle         0058FFB4
 0058FF04    mov         eax,dword ptr [ebp-8]
 0058FF07    call        TControl.GetClientWidth
 0058FF0C    mov         ebx,eax
 0058FF0E    mov         eax,dword ptr [ebp-0C]
 0058FF11    call        TControl.GetClientWidth
 0058FF16    sub         ebx,eax
 0058FF18    mov         eax,dword ptr [ebp-4]
 0058FF1B    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058FF21    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0058FF27    call        TPicture.GetWidth
 0058FF2C    add         ebx,eax
 0058FF2E    add         ebx,0A
 0058FF31    push        ebx
 0058FF32    mov         eax,dword ptr [ebp-8]
 0058FF35    call        005D0D04
 0058FF3A    call        005D5244
 0058FF3F    lea         eax,[eax+eax*2]
 0058FF42    test        eax,eax
>0058FF44    jns         0058FF49
 0058FF46    add         eax,3
 0058FF49    sar         eax,2
 0058FF4C    pop         edx
 0058FF4D    call        00653A9C
 0058FF52    mov         edx,eax
 0058FF54    mov         eax,dword ptr [ebp-8]
 0058FF57    call        TForm.SetClientWidth
 0058FF5C    mov         eax,dword ptr [ebp-8]
 0058FF5F    call        TControl.GetClientHeight
 0058FF64    mov         ebx,eax
 0058FF66    mov         eax,dword ptr [ebp-0C]
 0058FF69    call        TControl.GetClientHeight
 0058FF6E    sub         ebx,eax
 0058FF70    mov         eax,dword ptr [ebp-4]
 0058FF73    mov         eax,dword ptr [eax+0C8];TOpenPictureDialog.FImageCtrl:TImage
 0058FF79    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0058FF7F    call        TPicture.GetHeight
 0058FF84    add         ebx,eax
 0058FF86    add         ebx,0A
 0058FF89    push        ebx
 0058FF8A    mov         eax,dword ptr [ebp-8]
 0058FF8D    call        005D0D04
 0058FF92    call        005D51FC
 0058FF97    lea         eax,[eax+eax*2]
 0058FF9A    test        eax,eax
>0058FF9C    jns         0058FFA1
 0058FF9E    add         eax,3
 0058FFA1    sar         eax,2
 0058FFA4    pop         edx
 0058FFA5    call        00653A9C
 0058FFAA    mov         edx,eax
 0058FFAC    mov         eax,dword ptr [ebp-8]
 0058FFAF    call        TForm.SetClientHeight
 0058FFB4    mov         eax,dword ptr [ebp-8]
 0058FFB7    mov         edx,dword ptr [eax]
 0058FFB9    call        dword ptr [edx+0E8];TForm.sub_005D41F0
 0058FFBF    xor         eax,eax
 0058FFC1    pop         edx
 0058FFC2    pop         ecx
 0058FFC3    pop         ecx
 0058FFC4    mov         dword ptr fs:[eax],edx
 0058FFC7    push        58FFDC
 0058FFCC    mov         eax,dword ptr [ebp-8]
 0058FFCF    call        TObject.Free
 0058FFD4    ret
>0058FFD5    jmp         @HandleFinally
>0058FFDA    jmp         0058FFCC
 0058FFDC    xor         eax,eax
 0058FFDE    pop         edx
 0058FFDF    pop         ecx
 0058FFE0    pop         ecx
 0058FFE1    mov         dword ptr fs:[eax],edx
 0058FFE4    push        58FFF9
 0058FFE9    lea         eax,[ebp-18]
 0058FFEC    call        @LStrClr
 0058FFF1    ret
>0058FFF2    jmp         @HandleFinally
>0058FFF7    jmp         0058FFE9
 0058FFF9    pop         ebx
 0058FFFA    mov         esp,ebp
 0058FFFC    pop         ebp
 0058FFFD    ret
end;*}

//00590058
{*function TSavePictureDialog.Execute:?;
begin
 00590058    push        ebp
 00590059    mov         ebp,esp
 0059005B    add         esp,0FFFFFFF8
 0059005E    mov         dword ptr [ebp-4],eax
 00590061    mov         eax,[006E9DD8];^gvar_006ECDE0
 00590066    cmp         byte ptr [eax],0
>00590069    je          00590081
 0059006B    mov         eax,dword ptr [ebp-4]
 0059006E    test        byte ptr [eax+5E],1;TSavePictureDialog.?f5E:byte
>00590072    jne         00590081
 00590074    mov         eax,5900A8
 00590079    mov         edx,dword ptr [ebp-4]
 0059007C    mov         dword ptr [edx+44],eax;TSavePictureDialog.FTemplate:PChar
>0059007F    jmp         00590089
 00590081    mov         eax,dword ptr [ebp-4]
 00590084    xor         edx,edx
 00590086    mov         dword ptr [eax+44],edx;TSavePictureDialog.FTemplate:PChar
 00590089    mov         edx,69289C;COMDLG32.GetSaveFileNameA:BOOL
 0059008E    mov         eax,dword ptr [ebp-4]
 00590091    call        005EA1F8
 00590096    cmp         eax,1
 00590099    sbb         eax,eax
 0059009B    inc         eax
 0059009C    mov         byte ptr [ebp-5],al
 0059009F    mov         al,byte ptr [ebp-5]
 005900A2    pop         ecx
 005900A3    pop         ecx
 005900A4    pop         ebp
 005900A5    ret
end;*}

//005900B4
function TOpenPictureDialog.IsStoredFilter(Value:String):Boolean;
begin
{*
 005900B4    push        ebp
 005900B5    mov         ebp,esp
 005900B7    add         esp,0FFFFFFF4
 005900BA    xor         edx,edx
 005900BC    mov         dword ptr [ebp-0C],edx
 005900BF    mov         dword ptr [ebp-4],eax
 005900C2    xor         eax,eax
 005900C4    push        ebp
 005900C5    push        590109
 005900CA    push        dword ptr fs:[eax]
 005900CD    mov         dword ptr fs:[eax],esp
 005900D0    lea         edx,[ebp-0C]
 005900D3    mov         eax,[005BE9D4];TGraphic
 005900D8    call        005C93C4
 005900DD    mov         edx,dword ptr [ebp-0C]
 005900E0    mov         eax,dword ptr [ebp-4]
 005900E3    mov         eax,dword ptr [eax+60];TOpenPictureDialog.Filter:String
 005900E6    call        @LStrCmp
 005900EB    sete        al
 005900EE    xor         al,1
 005900F0    mov         byte ptr [ebp-5],al
 005900F3    xor         eax,eax
 005900F5    pop         edx
 005900F6    pop         ecx
 005900F7    pop         ecx
 005900F8    mov         dword ptr fs:[eax],edx
 005900FB    push        590110
 00590100    lea         eax,[ebp-0C]
 00590103    call        @LStrClr
 00590108    ret
>00590109    jmp         @HandleFinally
>0059010E    jmp         00590100
 00590110    mov         al,byte ptr [ebp-5]
 00590113    mov         esp,ebp
 00590115    pop         ebp
 00590116    ret
*}
end;

//00590118
procedure Finalization;
begin
{*
 00590118    push        ebp
 00590119    mov         ebp,esp
 0059011B    xor         eax,eax
 0059011D    push        ebp
 0059011E    push        59013D
 00590123    push        dword ptr fs:[eax]
 00590126    mov         dword ptr fs:[eax],esp
 00590129    inc         dword ptr ds:[6ECCEC]
 0059012F    xor         eax,eax
 00590131    pop         edx
 00590132    pop         ecx
 00590133    pop         ecx
 00590134    mov         dword ptr fs:[eax],edx
 00590137    push        590144
 0059013C    ret
>0059013D    jmp         @HandleFinally
>00590142    jmp         0059013C
 00590144    pop         ebp
 00590145    ret
*}
end;

end.