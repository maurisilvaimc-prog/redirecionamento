//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit MPlayer;

interface

uses
  SysUtils, Classes, Controls;

type
  TMPBtnType = (btPlay, btPause, btStop, btNext, btPrev, btStep, btBack, btRecord, btEject);
  TButtonSet = set of TMPBtnType;
  TMPDeviceTypes = (dtAutoSelect, dtAVIVideo, dtCDAudio, dtDAT, dtDigitalVideo, dtMMMovie, dtOther, dtOverlay, dtScanner, dtSequencer, dtVCR, dtVideodisc, dtWaveAudio);
  EMPNotify = procedure(Sender:TObject; Button:TMPBtnType; var DoDefault:Boolean) of object;;
  EMPPostNotify = procedure(Sender:TObject; Button:TMPBtnType) of object;;
  EMCIDeviceError = class(Exception)
  end;
  TMediaPlayer = class(TCustomControl)
  public
    Buttons:array[TMPBtnType] of TMPButton;//f210
    VisibleButtons:TButtonSet;//f2A0
    EnabledButtons:TButtonSet;//f2A2
    ColoredButtons:TButtonSet;//f2A4
    FAutoButtons:TButtonSet;//f2A6
    Pressed:Boolean;//f2A8
    Down:Boolean;//f2A9
    CurrentButton:TMPBtnType;//f2AA
    CurrentRect:TRect;//f2AB
    ButtonWidth:Integer;//f2BC
    MinBtnSize:TPoint;//f2C0
    OnClick:EMPNotify;//f2C8
    f2CA:word;//f2CA
    f2CC:dword;//f2CC
    OnPostClick:EMPPostNotify;//f2D0
    f2D2:word;//f2D2
    f2D4:dword;//f2D4
    OnNotify:TNotifyEvent;//f2D8
    f2DA:word;//f2DA
    f2DC:dword;//f2DC
    FocusedButton:TMPBtnType;//f2E0
    MCIOpened:Boolean;//f2E1
    FCapabilities:TMPDevCapsSet;//f2E2
    FCanPlay:Boolean;//f2E3
    FCanStep:Boolean;//f2E4
    FCanEject:Boolean;//f2E5
    FCanRecord:Boolean;//f2E6
    FHasVideo:Boolean;//f2E7
    FFlags:Longint;//f2E8
    FWait:Boolean;//f2EC
    FNotify:Boolean;//f2ED
    FUseWait:Boolean;//f2EE
    FUseNotify:Boolean;//f2EF
    FUseFrom:Boolean;//f2F0
    FUseTo:Boolean;//f2F1
    FDeviceID:word;//f2F2
    DeviceType:TMPDeviceTypes;//f2F4
    FTo:Longint;//f2F8
    FFrom:Longint;//f2FC
    FFrames:Longint;//f300
    FError:Longint;//f304
    FNotifyValue:TMPNotifyValues;//f308
    Display:TWinControl;//f30C
    FDWidth:Integer;//f310
    FDHeight:Integer;//f314
    FileName:String;//f318
    AutoEnable:Boolean;//f31C
    AutoOpen:Boolean;//f31D
    AutoRewind:Boolean;//f31E
    Shareable:Boolean;//f31F
    destructor Destroy; virtual;//00582B48
    procedure Loaded; virtual;//vC//00582BAC
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005851F0
    constructor Create(AOwner:TComponent); virtual;//v2C//00582A00
    procedure vC4; virtual;//vC4//00583494
    //procedure WMSize(?:?); message WM_SIZE;//00583020
    //procedure WMSetFocus(?:?); message WM_SETFOCUS;//00583BE8
    //procedure WMKillFocus(?:?); message WM_KILLFOCUS;//00583C04
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//00583C20
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//005839A0
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//00583950
    //procedure WMLButtonUp(?:?); message WM_LBUTTONUP;//00583B30
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//00583978
    //procedure sub_00583D84(?:?); dynamic;//00583D84
    procedure sub_00583EF8; dynamic;//00583EF8
    //procedure sub_00583EC4(?:?); dynamic;//00583EC4
    //procedure sub_00583E88(?:?; ?:?); dynamic;//00583E88
    //procedure sub_00583538(?:?); dynamic;//00583538
    //procedure sub_00583C3C(?:?; ?:?); dynamic;//00583C3C
    procedure sub_00583F24; dynamic;//00583F24
    procedure SetAutoEnable(Value:Boolean);//00582DBC
    procedure SetEnabledButtons(Value:TButtonSet);//00582E10
    procedure SetColoredButtons(Value:TButtonSet);//00582EB8
    procedure SetVisibleButtons(Value:TButtonSet);//00582F14
    procedure SetDeviceType(Value:TMPDeviceTypes);//005850B8
    procedure SetDisplay(Value:TWinControl);//00585138
  end;
    procedure MPlayer;//00582250
    procedure _NF__16A;//005829A8
    procedure _NF__16C;//005829B4
    constructor Create(AOwner:TComponent);//00582A00
    destructor Destroy;//00582B48
    procedure Loaded;//00582BAC
    procedure sub_00582BDC(?:TMediaPlayer);//00582BDC
    procedure sub_00582D74(?:TMediaPlayer);//00582D74
    procedure sub_00582E6C(?:TMediaPlayer);//00582E6C
    //function sub_00582FA4(?:TMediaPlayer):?;//00582FA4
    procedure sub_00582FE8(?:TMediaPlayer);//00582FE8
    //procedure WMSize(?:?);//00583020
    //procedure sub_00583100(?:TMediaPlayer; ?:?; ?:TRect);//00583100
    procedure sub_00583494;//00583494
    //procedure sub_00583538(?:?);//00583538
    //procedure sub_00583810(?:TMediaPlayer; ?:?; ?:?);//00583810
    //procedure WMLButtonDown(?:?);//00583950
    //procedure WMLButtonDblClk(?:?);//00583978
    //procedure WMMouseMove(?:?);//005839A0
    //procedure sub_00583A28(?:TMediaPlayer; ?:?);//00583A28
    //procedure sub_00583B08(?:?; ?:?);//00583B08
    //procedure WMLButtonUp(?:?);//00583B30
    //procedure WMSetFocus(?:?);//00583BE8
    //procedure WMKillFocus(?:?);//00583C04
    //procedure WMGetDlgCode(?:?);//00583C20
    //procedure sub_00583C3C(?:?; ?:?);//00583C3C
    //procedure sub_00583D84(?:?);//00583D84
    procedure sub_00583E58(?:TMediaPlayer);//00583E58
    //procedure sub_00583E88(?:?; ?:?);//00583E88
    //procedure sub_00583EC4(?:?);//00583EC4
    procedure sub_00583EF8;//00583EF8
    procedure sub_00583F24;//00583F24
    procedure sub_00583FB4(?:TMediaPlayer);//00583FB4
    procedure sub_005842B8(?:TMediaPlayer);//005842B8
    //procedure sub_005843C4(?:?);//005843C4
    //procedure sub_00584524(?:?);//00584524
    //procedure sub_00584640(?:?);//00584640
    //procedure sub_00584704(?:?);//00584704
    //procedure sub_0058475C(?:?);//0058475C
    //procedure sub_00584820(?:?);//00584820
    //procedure sub_00584910(?:?);//00584910
    //procedure sub_00584AE4(?:?);//00584AE4
    //procedure sub_00584CFC(?:?);//00584CFC
    //procedure sub_00584E14(?:?);//00584E14
    //procedure sub_00584F10(?:?);//00584F10
    //procedure sub_00584FF0(?:?);//00584FF0
    //function sub_0058502C(?:?; ?:?):?;//0058502C
    //procedure sub_00585084(?:?; ?:?);//00585084
    //procedure sub_005850E4(?:TMediaPlayer; ?:?);//005850E4
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005851F0
    procedure sub_00585244(?:TMediaPlayer);//00585244
    //procedure sub_005852A8(?:TMediaPlayer; ?:?);//005852A8
    procedure sub_0058531C(?:TMediaPlayer);//0058531C
    //function sub_00585540(?:TMediaPlayer):?;//00585540
    //function sub_005855A0(?:?):?;//005855A0
    //function sub_00585600(?:TMediaPlayer):?;//00585600
    //function sub_00585658(?:?):?;//00585658
    //function sub_005856B0(?:?):?;//005856B0
    //procedure sub_00585710(?:TMediaPlayer; ?:?);//00585710
    procedure Finalization;//00585770

implementation

//00582250
procedure MPlayer;
begin
{*
 00582250    sub         dword ptr ds:[6ECCB8],1
 00582257    ret
*}
end;

//005829A8
procedure _NF__16A;
begin
{*
 005829A8    inc         ebp
 005829A9    dec         esi
 005829AA    add         byte ptr [eax],al
 005829AC    inc         esp
 005829AD    dec         ecx
 005829AE    add         byte ptr [eax],al
 005829B0    inc         ebx
 005829B1    dec         esp
 005829B2    add         byte ptr [eax],al
*}
end;

//005829B4
procedure _NF__16C;
begin
{*
 005829B4    dec         ebp
 005829B5    push        eax
 005829B6    push        eax
 005829B7    dec         esp
 005829B8    inc         ecx
 005829B9    pop         ecx
 005829BA    add         byte ptr [eax],al
 005829BC    dec         ebp
 005829BD    push        eax
 005829BE    push        eax
 005829BF    inc         ecx
 005829C0    push        ebp
 005829C1    push        ebx
 005829C2    inc         ebp
 005829C3    add         byte ptr [ebp+50],cl
 005829C6    push        ebx
 005829C7    push        esp
 005829C8    dec         edi
 005829C9    push        eax
 005829CA    add         byte ptr [eax],al
 005829CC    dec         ebp
 005829CD    push        eax
 005829CE    dec         esi
 005829CF    inc         ebp
 005829D0    pop         eax
 005829D1    push        esp
 005829D2    add         byte ptr [eax],al
 005829D4    dec         ebp
 005829D5    push        eax
 005829D6    push        eax
 005829D7    push        edx
 005829D8    inc         ebp
 005829D9    push        esi
 005829DA    add         byte ptr [eax],al
 005829DC    dec         ebp
 005829DD    push        eax
 005829DE    push        ebx
 005829DF    push        esp
 005829E0    inc         ebp
 005829E1    push        eax
 005829E2    add         byte ptr [eax],al
 005829E4    dec         ebp
 005829E5    push        eax
 005829E6    inc         edx
 005829E7    inc         ecx
 005829E8    inc         ebx
 005829E9    dec         ebx
 005829EA    add         byte ptr [eax],al
 005829EC    dec         ebp
 005829ED    push        eax
 005829EE    push        edx
 005829EF    inc         ebp
 005829F0    inc         ebx
 005829F1    dec         edi
 005829F2    push        edx
 005829F3    inc         esp
 005829F4    add         byte ptr [eax],al
 005829F6    add         byte ptr [eax],al
 005829F8    dec         ebp
 005829F9    push        eax
 005829FA    inc         ebp
 005829FB    dec         edx
 005829FC    inc         ebp
 005829FD    inc         ebx
 005829FE    push        esp
 005829FF    add         byte ptr [ebp-75],dl;{TMediaPlayer.Create}
*}
end;

//00582A00
constructor TMediaPlayer.Create(AOwner:TComponent);
begin
{*
 00582A00    push        ebp
 00582A01    mov         ebp,esp
 00582A03    add         esp,0FFFFFFF0
 00582A06    test        dl,dl
>00582A08    je          00582A12
 00582A0A    add         esp,0FFFFFFF0
 00582A0D    call        @ClassCreate
 00582A12    mov         dword ptr [ebp-0C],ecx
 00582A15    mov         byte ptr [ebp-5],dl
 00582A18    mov         dword ptr [ebp-4],eax
 00582A1B    mov         ecx,dword ptr [ebp-0C]
 00582A1E    xor         edx,edx
 00582A20    mov         eax,dword ptr [ebp-4]
 00582A23    call        TCustomControl.Create
 00582A28    mov         eax,dword ptr [ebp-4]
 00582A2B    mov         eax,dword ptr [eax+50];TMediaPlayer.FControlStyle:TControlStyle
 00582A2E    or          eax,dword ptr ds:[582B40];0x40 gvar_00582B40
 00582A34    mov         edx,dword ptr [ebp-4]
 00582A37    mov         dword ptr [edx+50],eax;TMediaPlayer.FControlStyle:TControlStyle
 00582A3A    mov         eax,dword ptr [ebp-4]
 00582A3D    call        00582BDC
 00582A42    mov         eax,dword ptr [ebp-4]
 00582A45    mov         dx,word ptr ds:[582B44];0x1FF gvar_00582B44
 00582A4C    mov         word ptr [eax+2A0],dx;TMediaPlayer.VisibleButtons:TButtonSet
 00582A53    mov         eax,dword ptr [ebp-4]
 00582A56    mov         dx,word ptr ds:[582B44];0x1FF gvar_00582B44
 00582A5D    mov         word ptr [eax+2A2],dx;TMediaPlayer.EnabledButtons:TButtonSet
 00582A64    mov         eax,dword ptr [ebp-4]
 00582A67    mov         dx,word ptr ds:[582B44];0x1FF gvar_00582B44
 00582A6E    mov         word ptr [eax+2A4],dx;TMediaPlayer.ColoredButtons:TButtonSet
 00582A75    mov         byte ptr [ebp-0D],0
 00582A79    xor         eax,eax
 00582A7B    mov         al,byte ptr [ebp-0D]
 00582A7E    add         eax,eax
 00582A80    mov         edx,dword ptr [ebp-4]
 00582A83    mov         byte ptr [edx+eax*8+210],1
 00582A8B    xor         eax,eax
 00582A8D    mov         al,byte ptr [ebp-0D]
 00582A90    add         eax,eax
 00582A92    mov         edx,dword ptr [ebp-4]
 00582A95    mov         byte ptr [edx+eax*8+211],1
 00582A9D    xor         eax,eax
 00582A9F    mov         al,byte ptr [ebp-0D]
 00582AA2    add         eax,eax
 00582AA4    mov         edx,dword ptr [ebp-4]
 00582AA7    mov         byte ptr [edx+eax*8+212],1
 00582AAF    xor         eax,eax
 00582AB1    mov         al,byte ptr [ebp-0D]
 00582AB4    add         eax,eax
 00582AB6    mov         edx,dword ptr [ebp-4]
 00582AB9    mov         byte ptr [edx+eax*8+213],0
 00582AC1    inc         byte ptr [ebp-0D]
 00582AC4    cmp         byte ptr [ebp-0D],9
>00582AC8    jne         00582A79
 00582ACA    mov         edx,0F0
 00582ACF    mov         eax,dword ptr [ebp-4]
 00582AD2    call        TControl.SetWidth
 00582AD7    mov         edx,1E
 00582ADC    mov         eax,dword ptr [ebp-4]
 00582ADF    call        TControl.SetHeight
 00582AE4    mov         eax,dword ptr [ebp-4]
 00582AE7    mov         byte ptr [eax+2E0],0;TMediaPlayer.FocusedButton:TMPBtnType
 00582AEE    mov         eax,dword ptr [ebp-4]
 00582AF1    mov         byte ptr [eax+31C],1;TMediaPlayer.AutoEnable:Boolean
 00582AF8    mov         eax,dword ptr [ebp-4]
 00582AFB    mov         byte ptr [eax+31D],0;TMediaPlayer.AutoOpen:Boolean
 00582B02    mov         eax,dword ptr [ebp-4]
 00582B05    mov         byte ptr [eax+31E],1;TMediaPlayer.AutoRewind:Boolean
 00582B0C    mov         eax,dword ptr [ebp-4]
 00582B0F    mov         byte ptr [eax+2F4],0;TMediaPlayer.DeviceType:TMPDeviceTypes
 00582B16    mov         dl,1
 00582B18    mov         eax,dword ptr [ebp-4]
 00582B1B    call        TCCalendar.SetTabStop
 00582B20    mov         eax,dword ptr [ebp-4]
 00582B23    cmp         byte ptr [ebp-5],0
>00582B27    je          00582B38
 00582B29    call        @AfterConstruction
 00582B2E    pop         dword ptr fs:[0]
 00582B35    add         esp,0C
 00582B38    mov         eax,dword ptr [ebp-4]
 00582B3B    mov         esp,ebp
 00582B3D    pop         ebp
 00582B3E    ret
*}
end;

//00582B48
destructor TMediaPlayer.Destroy;
begin
{*
 00582B48    push        ebp
 00582B49    mov         ebp,esp
 00582B4B    add         esp,0FFFFFFF4
 00582B4E    call        @BeforeDestruction
 00582B53    mov         byte ptr [ebp-5],dl
 00582B56    mov         dword ptr [ebp-4],eax
 00582B59    mov         eax,dword ptr [ebp-4]
 00582B5C    cmp         word ptr [eax+2F2],0;TMediaPlayer.FDeviceID:word
>00582B64    je          00582B81
 00582B66    lea         eax,[ebp-0C]
 00582B69    push        eax
 00582B6A    push        2
 00582B6C    push        804
 00582B71    mov         eax,dword ptr [ebp-4]
 00582B74    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 00582B7B    push        eax
 00582B7C    call        WINMM.mciSendCommandA
 00582B81    mov         eax,dword ptr [ebp-4]
 00582B84    call        00582D74
 00582B89    mov         dl,byte ptr [ebp-5]
 00582B8C    and         dl,0FC
 00582B8F    mov         eax,dword ptr [ebp-4]
 00582B92    call        TCustomControl.Destroy
 00582B97    cmp         byte ptr [ebp-5],0
>00582B9B    jle         00582BA5
 00582B9D    mov         eax,dword ptr [ebp-4]
 00582BA0    call        @ClassDestroy
 00582BA5    mov         esp,ebp
 00582BA7    pop         ebp
 00582BA8    ret
*}
end;

//00582BAC
procedure TMediaPlayer.Loaded;
begin
{*
 00582BAC    push        ebp
 00582BAD    mov         ebp,esp
 00582BAF    push        ecx
 00582BB0    mov         dword ptr [ebp-4],eax
 00582BB3    mov         eax,dword ptr [ebp-4]
 00582BB6    call        TControl.Loaded
 00582BBB    mov         eax,dword ptr [ebp-4]
 00582BBE    test        byte ptr [eax+1C],10;TMediaPlayer.FComponentState:TComponentState
>00582BC2    jne         00582BD8
 00582BC4    mov         eax,dword ptr [ebp-4]
 00582BC7    cmp         byte ptr [eax+31D],0;TMediaPlayer.AutoOpen:Boolean
>00582BCE    je          00582BD8
 00582BD0    mov         eax,dword ptr [ebp-4]
 00582BD3    call        00583FB4
 00582BD8    pop         ecx
 00582BD9    pop         ebp
 00582BDA    ret
*}
end;

//00582BDC
procedure sub_00582BDC(?:TMediaPlayer);
begin
{*
 00582BDC    push        ebp
 00582BDD    mov         ebp,esp
 00582BDF    add         esp,0FFFFFFB8
 00582BE2    push        ebx
 00582BE3    mov         dword ptr [ebp-4],eax
 00582BE6    lea         ecx,[ebp-38]
 00582BE9    xor         edx,edx
 00582BEB    xor         eax,eax
 00582BED    call        Point
 00582BF2    mov         eax,dword ptr [ebp-4]
 00582BF5    mov         edx,dword ptr [ebp-38]
 00582BF8    mov         dword ptr [eax+2C0],edx;TMediaPlayer.MinBtnSize:TPoint
 00582BFE    mov         edx,dword ptr [ebp-34]
 00582C01    mov         dword ptr [eax+2C4],edx
 00582C07    mov         byte ptr [ebp-5],0
 00582C0B    mov         byte ptr [ebp-6],0
 00582C0F    mov         dl,1
 00582C11    mov         eax,[005BEDD4];TBitmap
 00582C16    call        TBitmap.Create;TBitmap.Create
 00582C1B    xor         edx,edx
 00582C1D    mov         dl,byte ptr [ebp-6]
 00582C20    xor         ecx,ecx
 00582C22    mov         cl,byte ptr [ebp-5]
 00582C25    add         ecx,ecx
 00582C27    mov         ebx,dword ptr [ebp-4]
 00582C2A    lea         ecx,[ebx+ecx*8]
 00582C2D    mov         dword ptr [ecx+edx*4+214],eax
 00582C34    push        1
 00582C36    xor         eax,eax
 00582C38    mov         al,byte ptr [ebp-6]
 00582C3B    mov         eax,dword ptr [eax*4+6E399C];^_NF__16A
 00582C42    mov         dword ptr [ebp-48],eax
 00582C45    mov         byte ptr [ebp-44],6
 00582C49    xor         eax,eax
 00582C4B    mov         al,byte ptr [ebp-5]
 00582C4E    mov         eax,dword ptr [eax*4+6E39A8];^_NF__16C
 00582C55    mov         dword ptr [ebp-40],eax
 00582C58    mov         byte ptr [ebp-3C],6
 00582C5C    lea         ecx,[ebp-48]
 00582C5F    mov         edx,582D6C
 00582C64    lea         eax,[ebp-2F]
 00582C67    call        00658F08
 00582C6C    push        eax
 00582C6D    mov         eax,[006EA390];0x0 gvar_006EA390
 00582C72    push        eax
 00582C73    call        USER32.LoadBitmapA
 00582C78    mov         edx,eax
 00582C7A    xor         eax,eax
 00582C7C    mov         al,byte ptr [ebp-6]
 00582C7F    xor         ecx,ecx
 00582C81    mov         cl,byte ptr [ebp-5]
 00582C84    add         ecx,ecx
 00582C86    mov         ebx,dword ptr [ebp-4]
 00582C89    lea         ecx,[ebx+ecx*8]
 00582C8C    mov         eax,dword ptr [ecx+eax*4+214]
 00582C93    call        TBitmap.SetHandle
 00582C98    xor         eax,eax
 00582C9A    mov         al,byte ptr [ebp-6]
 00582C9D    xor         edx,edx
 00582C9F    mov         dl,byte ptr [ebp-5]
 00582CA2    add         edx,edx
 00582CA4    mov         ecx,dword ptr [ebp-4]
 00582CA7    lea         edx,[ecx+edx*8]
 00582CAA    mov         eax,dword ptr [edx+eax*4+214]
 00582CB1    mov         edx,dword ptr [eax]
 00582CB3    call        dword ptr [edx+2C]
 00582CB6    mov         edx,dword ptr [ebp-4]
 00582CB9    cmp         eax,dword ptr [edx+2C0];TMediaPlayer.MinBtnSize:TPoint
>00582CBF    jle         00582CE8
 00582CC1    xor         eax,eax
 00582CC3    mov         al,byte ptr [ebp-6]
 00582CC6    xor         edx,edx
 00582CC8    mov         dl,byte ptr [ebp-5]
 00582CCB    add         edx,edx
 00582CCD    mov         ecx,dword ptr [ebp-4]
 00582CD0    lea         edx,[ecx+edx*8]
 00582CD3    mov         eax,dword ptr [edx+eax*4+214]
 00582CDA    mov         edx,dword ptr [eax]
 00582CDC    call        dword ptr [edx+2C]
 00582CDF    mov         edx,dword ptr [ebp-4]
 00582CE2    mov         dword ptr [edx+2C0],eax;TMediaPlayer.MinBtnSize:TPoint
 00582CE8    xor         eax,eax
 00582CEA    mov         al,byte ptr [ebp-6]
 00582CED    xor         edx,edx
 00582CEF    mov         dl,byte ptr [ebp-5]
 00582CF2    add         edx,edx
 00582CF4    mov         ecx,dword ptr [ebp-4]
 00582CF7    lea         edx,[ecx+edx*8]
 00582CFA    mov         eax,dword ptr [edx+eax*4+214]
 00582D01    mov         edx,dword ptr [eax]
 00582D03    call        dword ptr [edx+20]
 00582D06    mov         edx,dword ptr [ebp-4]
 00582D09    cmp         eax,dword ptr [edx+2C4]
>00582D0F    jle         00582D38
 00582D11    xor         eax,eax
 00582D13    mov         al,byte ptr [ebp-6]
 00582D16    xor         edx,edx
 00582D18    mov         dl,byte ptr [ebp-5]
 00582D1B    add         edx,edx
 00582D1D    mov         ecx,dword ptr [ebp-4]
 00582D20    lea         edx,[ecx+edx*8]
 00582D23    mov         eax,dword ptr [edx+eax*4+214]
 00582D2A    mov         edx,dword ptr [eax]
 00582D2C    call        dword ptr [edx+20]
 00582D2F    mov         edx,dword ptr [ebp-4]
 00582D32    mov         dword ptr [edx+2C4],eax
 00582D38    inc         byte ptr [ebp-6]
 00582D3B    cmp         byte ptr [ebp-6],3
>00582D3F    jne         00582C0F
 00582D45    inc         byte ptr [ebp-5]
 00582D48    cmp         byte ptr [ebp-5],9
>00582D4C    jne         00582C0B
 00582D52    mov         eax,dword ptr [ebp-4]
 00582D55    add         dword ptr [eax+2C0],8;TMediaPlayer.MinBtnSize:TPoint
 00582D5C    mov         eax,dword ptr [ebp-4]
 00582D5F    add         dword ptr [eax+2C4],4
 00582D66    pop         ebx
 00582D67    mov         esp,ebp
 00582D69    pop         ebp
 00582D6A    ret
*}
end;

//00582D74
procedure sub_00582D74(?:TMediaPlayer);
begin
{*
 00582D74    push        ebp
 00582D75    mov         ebp,esp
 00582D77    add         esp,0FFFFFFF8
 00582D7A    mov         dword ptr [ebp-4],eax
 00582D7D    mov         byte ptr [ebp-5],0
 00582D81    mov         byte ptr [ebp-6],0
 00582D85    xor         eax,eax
 00582D87    mov         al,byte ptr [ebp-5]
 00582D8A    add         eax,eax
 00582D8C    mov         edx,dword ptr [ebp-4]
 00582D8F    lea         eax,[edx+eax*8]
 00582D92    xor         edx,edx
 00582D94    mov         dl,byte ptr [ebp-6]
 00582D97    mov         eax,dword ptr [eax+edx*4+214]
 00582D9E    call        TObject.Free
 00582DA3    inc         byte ptr [ebp-6]
 00582DA6    cmp         byte ptr [ebp-6],3
>00582DAA    jne         00582D85
 00582DAC    inc         byte ptr [ebp-5]
 00582DAF    cmp         byte ptr [ebp-5],9
>00582DB3    jne         00582D81
 00582DB5    pop         ecx
 00582DB6    pop         ecx
 00582DB7    pop         ebp
 00582DB8    ret
*}
end;

//00582DBC
procedure TMediaPlayer.SetAutoEnable(Value:Boolean);
begin
{*
 00582DBC    push        ebp
 00582DBD    mov         ebp,esp
 00582DBF    add         esp,0FFFFFFF8
 00582DC2    mov         byte ptr [ebp-5],dl
 00582DC5    mov         dword ptr [ebp-4],eax
 00582DC8    mov         al,byte ptr [ebp-5]
 00582DCB    mov         edx,dword ptr [ebp-4]
 00582DCE    cmp         al,byte ptr [edx+31C];TMediaPlayer.AutoEnable:Boolean
>00582DD4    je          00582E0A
 00582DD6    mov         al,byte ptr [ebp-5]
 00582DD9    mov         edx,dword ptr [ebp-4]
 00582DDC    mov         byte ptr [edx+31C],al;TMediaPlayer.AutoEnable:Boolean
 00582DE2    mov         eax,dword ptr [ebp-4]
 00582DE5    cmp         byte ptr [eax+31C],0;TMediaPlayer.AutoEnable:Boolean
>00582DEC    je          00582DF8
 00582DEE    mov         eax,dword ptr [ebp-4]
 00582DF1    call        00582E6C
>00582DF6    jmp         00582E0A
 00582DF8    mov         eax,dword ptr [ebp-4]
 00582DFB    mov         dx,word ptr [eax+2A2];TMediaPlayer.EnabledButtons:TButtonSet
 00582E02    mov         eax,dword ptr [ebp-4]
 00582E05    call        TMediaPlayer.SetEnabledButtons
 00582E0A    pop         ecx
 00582E0B    pop         ecx
 00582E0C    pop         ebp
 00582E0D    ret
*}
end;

//00582E10
procedure TMediaPlayer.SetEnabledButtons(Value:TButtonSet);
begin
{*
 00582E10    push        ebp
 00582E11    mov         ebp,esp
 00582E13    add         esp,0FFFFFFF8
 00582E16    mov         word ptr [ebp-6],dx
 00582E1A    mov         dword ptr [ebp-4],eax
 00582E1D    mov         ax,word ptr [ebp-6]
 00582E21    mov         edx,dword ptr [ebp-4]
 00582E24    mov         word ptr [edx+2A2],ax;TMediaPlayer.EnabledButtons:TButtonSet
 00582E2B    mov         byte ptr [ebp-7],0
 00582E2F    mov         al,byte ptr [ebp-7]
 00582E32    mov         edx,dword ptr [ebp-4]
 00582E35    cmp         al,0F
>00582E37    ja          00582E43
 00582E39    and         eax,7F
 00582E3C    bt          dword ptr [edx+2A2],eax;TMediaPlayer.EnabledButtons:TButtonSet
 00582E43    setb        al
 00582E46    xor         edx,edx
 00582E48    mov         dl,byte ptr [ebp-7]
 00582E4B    add         edx,edx
 00582E4D    mov         ecx,dword ptr [ebp-4]
 00582E50    mov         byte ptr [ecx+edx*8+211],al
 00582E57    inc         byte ptr [ebp-7]
 00582E5A    cmp         byte ptr [ebp-7],9
>00582E5E    jne         00582E2F
 00582E60    mov         eax,dword ptr [ebp-4]
 00582E63    mov         edx,dword ptr [eax]
 00582E65    call        dword ptr [edx+7C];TWinControl.Invalidate
 00582E68    pop         ecx
 00582E69    pop         ecx
 00582E6A    pop         ebp
 00582E6B    ret
*}
end;

//00582E6C
procedure sub_00582E6C(?:TMediaPlayer);
begin
{*
 00582E6C    push        ebp
 00582E6D    mov         ebp,esp
 00582E6F    add         esp,0FFFFFFF8
 00582E72    mov         dword ptr [ebp-4],eax
 00582E75    mov         byte ptr [ebp-5],0
 00582E79    mov         al,byte ptr [ebp-5]
 00582E7C    mov         edx,dword ptr [ebp-4]
 00582E7F    cmp         al,0F
>00582E81    ja          00582E8D
 00582E83    and         eax,7F
 00582E86    bt          dword ptr [edx+2A6],eax;TMediaPlayer.FAutoButtons:TButtonSet
 00582E8D    setb        al
 00582E90    xor         edx,edx
 00582E92    mov         dl,byte ptr [ebp-5]
 00582E95    add         edx,edx
 00582E97    mov         ecx,dword ptr [ebp-4]
 00582E9A    mov         byte ptr [ecx+edx*8+213],al
 00582EA1    inc         byte ptr [ebp-5]
 00582EA4    cmp         byte ptr [ebp-5],9
>00582EA8    jne         00582E79
 00582EAA    mov         eax,dword ptr [ebp-4]
 00582EAD    mov         edx,dword ptr [eax]
 00582EAF    call        dword ptr [edx+7C];TWinControl.Invalidate
 00582EB2    pop         ecx
 00582EB3    pop         ecx
 00582EB4    pop         ebp
 00582EB5    ret
*}
end;

//00582EB8
procedure TMediaPlayer.SetColoredButtons(Value:TButtonSet);
begin
{*
 00582EB8    push        ebp
 00582EB9    mov         ebp,esp
 00582EBB    add         esp,0FFFFFFF8
 00582EBE    mov         word ptr [ebp-6],dx
 00582EC2    mov         dword ptr [ebp-4],eax
 00582EC5    mov         ax,word ptr [ebp-6]
 00582EC9    mov         edx,dword ptr [ebp-4]
 00582ECC    mov         word ptr [edx+2A4],ax;TMediaPlayer.ColoredButtons:TButtonSet
 00582ED3    mov         byte ptr [ebp-7],0
 00582ED7    mov         al,byte ptr [ebp-7]
 00582EDA    mov         edx,dword ptr [ebp-4]
 00582EDD    cmp         al,0F
>00582EDF    ja          00582EEB
 00582EE1    and         eax,7F
 00582EE4    bt          dword ptr [edx+2A4],eax;TMediaPlayer.ColoredButtons:TButtonSet
 00582EEB    setb        al
 00582EEE    xor         edx,edx
 00582EF0    mov         dl,byte ptr [ebp-7]
 00582EF3    add         edx,edx
 00582EF5    mov         ecx,dword ptr [ebp-4]
 00582EF8    mov         byte ptr [ecx+edx*8+212],al
 00582EFF    inc         byte ptr [ebp-7]
 00582F02    cmp         byte ptr [ebp-7],9
>00582F06    jne         00582ED7
 00582F08    mov         eax,dword ptr [ebp-4]
 00582F0B    mov         edx,dword ptr [eax]
 00582F0D    call        dword ptr [edx+7C];TWinControl.Invalidate
 00582F10    pop         ecx
 00582F11    pop         ecx
 00582F12    pop         ebp
 00582F13    ret
*}
end;

//00582F14
procedure TMediaPlayer.SetVisibleButtons(Value:TButtonSet);
begin
{*
 00582F14    push        ebp
 00582F15    mov         ebp,esp
 00582F17    add         esp,0FFFFFFF8
 00582F1A    mov         word ptr [ebp-6],dx
 00582F1E    mov         dword ptr [ebp-4],eax
 00582F21    mov         ax,word ptr [ebp-6]
 00582F25    mov         edx,dword ptr [ebp-4]
 00582F28    mov         word ptr [edx+2A0],ax;TMediaPlayer.VisibleButtons:TButtonSet
 00582F2F    mov         byte ptr [ebp-7],0
 00582F33    mov         al,byte ptr [ebp-7]
 00582F36    mov         edx,dword ptr [ebp-4]
 00582F39    cmp         al,0F
>00582F3B    ja          00582F47
 00582F3D    and         eax,7F
 00582F40    bt          dword ptr [edx+2A0],eax;TMediaPlayer.VisibleButtons:TButtonSet
 00582F47    setb        al
 00582F4A    xor         edx,edx
 00582F4C    mov         dl,byte ptr [ebp-7]
 00582F4F    add         edx,edx
 00582F51    mov         ecx,dword ptr [ebp-4]
 00582F54    mov         byte ptr [ecx+edx*8+210],al
 00582F5B    inc         byte ptr [ebp-7]
 00582F5E    cmp         byte ptr [ebp-7],9
>00582F62    jne         00582F33
 00582F64    mov         eax,dword ptr [ebp-4]
 00582F67    test        byte ptr [eax+1C],40;TMediaPlayer.FComponentState:TComponentState
>00582F6B    je          00582F97
 00582F6D    mov         eax,dword ptr [ebp-4]
 00582F70    call        00582FA4
 00582F75    push        eax
 00582F76    mov         eax,dword ptr [ebp-4]
 00582F79    mov         eax,dword ptr [eax+48];TMediaPlayer.Width:Integer
 00582F7C    dec         eax
 00582F7D    pop         edx
 00582F7E    mov         ecx,edx
 00582F80    cdq
 00582F81    idiv        eax,ecx
 00582F83    inc         eax
 00582F84    mov         edx,dword ptr [ebp-4]
 00582F87    mov         dword ptr [edx+2BC],eax;TMediaPlayer.ButtonWidth:Integer
 00582F8D    mov         eax,dword ptr [ebp-4]
 00582F90    mov         edx,dword ptr [eax]
 00582F92    call        dword ptr [edx+7C];TWinControl.Invalidate
>00582F95    jmp         00582F9F
 00582F97    mov         eax,dword ptr [ebp-4]
 00582F9A    call        00582FE8
 00582F9F    pop         ecx
 00582FA0    pop         ecx
 00582FA1    pop         ebp
 00582FA2    ret
*}
end;

//00582FA4
{*function sub_00582FA4(?:TMediaPlayer):?;
begin
 00582FA4    push        ebp
 00582FA5    mov         ebp,esp
 00582FA7    add         esp,0FFFFFFF4
 00582FAA    mov         dword ptr [ebp-4],eax
 00582FAD    xor         eax,eax
 00582FAF    mov         dword ptr [ebp-8],eax
 00582FB2    mov         byte ptr [ebp-9],0
 00582FB6    xor         eax,eax
 00582FB8    mov         al,byte ptr [ebp-9]
 00582FBB    add         eax,eax
 00582FBD    mov         edx,dword ptr [ebp-4]
 00582FC0    cmp         byte ptr [edx+eax*8+210],0
>00582FC8    je          00582FCD
 00582FCA    inc         dword ptr [ebp-8]
 00582FCD    inc         byte ptr [ebp-9]
 00582FD0    cmp         byte ptr [ebp-9],9
>00582FD4    jne         00582FB6
 00582FD6    cmp         dword ptr [ebp-8],0
>00582FDA    jne         00582FDF
 00582FDC    inc         dword ptr [ebp-8]
 00582FDF    mov         eax,dword ptr [ebp-8]
 00582FE2    mov         esp,ebp
 00582FE4    pop         ebp
 00582FE5    ret
end;*}

//00582FE8
procedure sub_00582FE8(?:TMediaPlayer);
begin
{*
 00582FE8    push        ebp
 00582FE9    mov         ebp,esp
 00582FEB    add         esp,0FFFFFFF8
 00582FEE    mov         dword ptr [ebp-4],eax
 00582FF1    mov         eax,dword ptr [ebp-4]
 00582FF4    call        00582FA4
 00582FF9    mov         dword ptr [ebp-8],eax
 00582FFC    mov         eax,dword ptr [ebp-4]
 00582FFF    mov         edx,dword ptr [eax+2BC];TMediaPlayer.ButtonWidth:Integer
 00583005    dec         edx
 00583006    imul        edx,dword ptr [ebp-8]
 0058300A    inc         edx
 0058300B    mov         eax,dword ptr [ebp-4]
 0058300E    call        TControl.SetWidth
 00583013    mov         eax,dword ptr [ebp-4]
 00583016    mov         edx,dword ptr [eax]
 00583018    call        dword ptr [edx+7C];TWinControl.Invalidate
 0058301B    pop         ecx
 0058301C    pop         ecx
 0058301D    pop         ebp
 0058301E    ret
*}
end;

//00583020
{*procedure TMediaPlayer.WMSize(?:?);
begin
 00583020    push        ebp
 00583021    mov         ebp,esp
 00583023    add         esp,0FFFFFFE4
 00583026    push        ebx
 00583027    mov         dword ptr [ebp-8],edx
 0058302A    mov         dword ptr [ebp-4],eax
 0058302D    mov         edx,dword ptr [ebp-8]
 00583030    mov         eax,dword ptr [ebp-4]
 00583033    call        TWinControl.WMSize
 00583038    mov         eax,dword ptr [ebp-4]
 0058303B    test        byte ptr [eax+1C],40;TMediaPlayer.FComponentState:TComponentState
>0058303F    jne         005830FA
 00583045    mov         eax,dword ptr [ebp-4]
 00583048    call        00582FA4
 0058304D    mov         dword ptr [ebp-0C],eax
 00583050    mov         eax,dword ptr [ebp-4]
 00583053    mov         eax,dword ptr [eax+2C0];TMediaPlayer.MinBtnSize:TPoint
 00583059    dec         eax
 0058305A    imul        dword ptr [ebp-0C]
 0058305D    inc         eax
 0058305E    mov         dword ptr [ebp-14],eax
 00583061    mov         eax,dword ptr [ebp-4]
 00583064    mov         eax,dword ptr [eax+2C4]
 0058306A    mov         dword ptr [ebp-10],eax
 0058306D    mov         eax,dword ptr [ebp-4]
 00583070    mov         eax,dword ptr [eax+48];TMediaPlayer.Width:Integer
 00583073    dec         eax
 00583074    cdq
 00583075    idiv        eax,dword ptr [ebp-0C]
 00583078    inc         eax
 00583079    mov         edx,dword ptr [ebp-4]
 0058307C    mov         dword ptr [edx+2BC],eax;TMediaPlayer.ButtonWidth:Integer
 00583082    mov         eax,dword ptr [ebp-4]
 00583085    mov         eax,dword ptr [eax+2BC];TMediaPlayer.ButtonWidth:Integer
 0058308B    dec         eax
 0058308C    imul        dword ptr [ebp-0C]
 0058308F    inc         eax
 00583090    mov         dword ptr [ebp-18],eax
 00583093    mov         eax,dword ptr [ebp-18]
 00583096    cmp         eax,dword ptr [ebp-14]
>00583099    jge         005830A1
 0058309B    mov         eax,dword ptr [ebp-14]
 0058309E    mov         dword ptr [ebp-18],eax
 005830A1    mov         eax,dword ptr [ebp-4]
 005830A4    mov         eax,dword ptr [eax+4C];TMediaPlayer.Height:Integer
 005830A7    cmp         eax,dword ptr [ebp-10]
>005830AA    jge         005830B4
 005830AC    mov         eax,dword ptr [ebp-10]
 005830AF    mov         dword ptr [ebp-1C],eax
>005830B2    jmp         005830BD
 005830B4    mov         eax,dword ptr [ebp-4]
 005830B7    mov         eax,dword ptr [eax+4C];TMediaPlayer.Height:Integer
 005830BA    mov         dword ptr [ebp-1C],eax
 005830BD    mov         eax,dword ptr [ebp-18]
 005830C0    mov         edx,dword ptr [ebp-4]
 005830C3    cmp         eax,dword ptr [edx+48];TMediaPlayer.Width:Integer
>005830C6    jne         005830D3
 005830C8    mov         eax,dword ptr [ebp-1C]
 005830CB    mov         edx,dword ptr [ebp-4]
 005830CE    cmp         eax,dword ptr [edx+4C];TMediaPlayer.Height:Integer
>005830D1    je          005830F2
 005830D3    mov         eax,dword ptr [ebp-18]
 005830D6    push        eax
 005830D7    mov         eax,dword ptr [ebp-1C]
 005830DA    push        eax
 005830DB    mov         eax,dword ptr [ebp-4]
 005830DE    mov         ecx,dword ptr [eax+44];TMediaPlayer.Top:Integer
 005830E1    mov         eax,dword ptr [ebp-4]
 005830E4    mov         edx,dword ptr [eax+40];TMediaPlayer.Left:Integer
 005830E7    mov         eax,dword ptr [ebp-4]
 005830EA    mov         ebx,dword ptr [eax]
 005830EC    call        dword ptr [ebx+84];TMediaPlayer.sub_005FB7F8
 005830F2    mov         eax,dword ptr [ebp-8]
 005830F5    xor         edx,edx
 005830F7    mov         dword ptr [eax+0C],edx
 005830FA    pop         ebx
 005830FB    mov         esp,ebp
 005830FD    pop         ebp
 005830FE    ret
end;*}

//00583100
{*procedure sub_00583100(?:TMediaPlayer; ?:?; ?:TRect);
begin
 00583100    push        ebp
 00583101    mov         ebp,esp
 00583103    add         esp,0FFFFFFAC
 00583106    push        ebx
 00583107    mov         dword ptr [ebp-0C],ecx
 0058310A    mov         byte ptr [ebp-5],dl
 0058310D    mov         dword ptr [ebp-4],eax
 00583110    mov         eax,dword ptr [ebp-4]
 00583113    cmp         byte ptr [eax+2A9],0
>0058311A    je          0058312A
 0058311C    mov         al,byte ptr [ebp-5]
 0058311F    mov         edx,dword ptr [ebp-4]
 00583122    cmp         al,byte ptr [edx+2AA]
>00583128    je          0058312E
 0058312A    xor         eax,eax
>0058312C    jmp         00583130
 0058312E    mov         al,1
 00583130    mov         byte ptr [ebp-0D],al
 00583133    mov         eax,dword ptr [ebp-4]
 00583136    mov         eax,dword ptr [eax+208]
 0058313C    mov         dword ptr [ebp-24],eax
 0058313F    xor         edx,edx
 00583141    mov         eax,dword ptr [ebp-24]
 00583144    mov         eax,dword ptr [eax+14]
 00583147    call        TBrush.SetStyle
 0058314C    mov         edx,8000000F
 00583151    mov         eax,dword ptr [ebp-24]
 00583154    mov         eax,dword ptr [eax+14]
 00583157    call        TBrush.SetColor
 0058315C    mov         edx,80000006
 00583161    mov         eax,dword ptr [ebp-24]
 00583164    mov         eax,dword ptr [eax+10]
 00583167    call        TPen.SetColor
 0058316C    mov         edx,1
 00583171    mov         eax,dword ptr [ebp-24]
 00583174    mov         eax,dword ptr [eax+10]
 00583177    call        TPen.SetWidth
 0058317C    mov         eax,dword ptr [ebp-0C]
 0058317F    mov         edx,dword ptr [ebp-4]
 00583182    add         eax,dword ptr [edx+2BC]
 00583188    push        eax
 00583189    mov         eax,dword ptr [ebp-4]
 0058318C    mov         eax,dword ptr [eax+4C]
 0058318F    push        eax
 00583190    xor         ecx,ecx
 00583192    mov         edx,dword ptr [ebp-0C]
 00583195    mov         eax,dword ptr [ebp-24]
 00583198    call        005C1428
 0058319D    cmp         byte ptr [ebp-0D],0
>005831A1    je          005831F8
 005831A3    mov         edx,80000010
 005831A8    mov         eax,dword ptr [ebp-24]
 005831AB    mov         eax,dword ptr [eax+10]
 005831AE    call        TPen.SetColor
 005831B3    mov         eax,dword ptr [ebp-4]
 005831B6    mov         ecx,dword ptr [eax+4C]
 005831B9    sub         ecx,2
 005831BC    mov         edx,dword ptr [ebp-0C]
 005831BF    inc         edx
 005831C0    mov         eax,dword ptr [ebp-24]
 005831C3    call        005C12F0
 005831C8    mov         edx,dword ptr [ebp-0C]
 005831CB    inc         edx
 005831CC    mov         ecx,1
 005831D1    mov         eax,dword ptr [ebp-24]
 005831D4    call        005C1274
 005831D9    mov         edx,dword ptr [ebp-0C]
 005831DC    mov         eax,dword ptr [ebp-4]
 005831DF    add         edx,dword ptr [eax+2BC]
 005831E5    dec         edx
 005831E6    mov         ecx,1
 005831EB    mov         eax,dword ptr [ebp-24]
 005831EE    call        005C1274
>005831F3    jmp         005832AB
 005831F8    mov         edx,80000014
 005831FD    mov         eax,dword ptr [ebp-24]
 00583200    mov         eax,dword ptr [eax+10]
 00583203    call        TPen.SetColor
 00583208    mov         eax,dword ptr [ebp-4]
 0058320B    mov         ecx,dword ptr [eax+4C]
 0058320E    sub         ecx,2
 00583211    mov         edx,dword ptr [ebp-0C]
 00583214    inc         edx
 00583215    mov         eax,dword ptr [ebp-24]
 00583218    call        005C12F0
 0058321D    mov         edx,dword ptr [ebp-0C]
 00583220    inc         edx
 00583221    mov         ecx,1
 00583226    mov         eax,dword ptr [ebp-24]
 00583229    call        005C1274
 0058322E    mov         edx,dword ptr [ebp-0C]
 00583231    mov         eax,dword ptr [ebp-4]
 00583234    add         edx,dword ptr [eax+2BC]
 0058323A    dec         edx
 0058323B    mov         ecx,1
 00583240    mov         eax,dword ptr [ebp-24]
 00583243    call        005C1274
 00583248    mov         edx,80000010
 0058324D    mov         eax,dword ptr [ebp-24]
 00583250    mov         eax,dword ptr [eax+10]
 00583253    call        TPen.SetColor
 00583258    mov         eax,dword ptr [ebp-4]
 0058325B    mov         ecx,dword ptr [eax+4C]
 0058325E    sub         ecx,2
 00583261    mov         edx,dword ptr [ebp-0C]
 00583264    add         edx,2
 00583267    mov         eax,dword ptr [ebp-24]
 0058326A    call        005C12F0
 0058326F    mov         eax,dword ptr [ebp-4]
 00583272    mov         ecx,dword ptr [eax+4C]
 00583275    sub         ecx,2
 00583278    mov         edx,dword ptr [ebp-0C]
 0058327B    mov         eax,dword ptr [ebp-4]
 0058327E    add         edx,dword ptr [eax+2BC]
 00583284    sub         edx,2
 00583287    mov         eax,dword ptr [ebp-24]
 0058328A    call        005C1274
 0058328F    mov         edx,dword ptr [ebp-0C]
 00583292    mov         eax,dword ptr [ebp-4]
 00583295    add         edx,dword ptr [eax+2BC]
 0058329B    sub         edx,2
 0058329E    mov         ecx,1
 005832A3    mov         eax,dword ptr [ebp-24]
 005832A6    call        005C1274
 005832AB    mov         eax,dword ptr [ebp-4]
 005832AE    mov         edx,dword ptr [eax]
 005832B0    call        dword ptr [edx+50]
 005832B3    test        al,al
>005832B5    jne         005832C4
 005832B7    mov         eax,dword ptr [ebp-4]
 005832BA    test        byte ptr [eax+1C],10
>005832BE    je          00583349
 005832C4    mov         eax,dword ptr [ebp-4]
 005832C7    cmp         byte ptr [eax+31C],0
>005832CE    je          00583311
 005832D0    mov         eax,dword ptr [ebp-4]
 005832D3    test        byte ptr [eax+1C],10
>005832D7    jne         00583311
 005832D9    xor         eax,eax
 005832DB    mov         al,byte ptr [ebp-5]
 005832DE    add         eax,eax
 005832E0    mov         edx,dword ptr [ebp-4]
 005832E3    cmp         byte ptr [edx+eax*8+213],0
>005832EB    je          0058330B
 005832ED    mov         byte ptr [ebp-19],0
 005832F1    xor         eax,eax
 005832F3    mov         al,byte ptr [ebp-5]
 005832F6    add         eax,eax
 005832F8    mov         edx,dword ptr [ebp-4]
 005832FB    cmp         byte ptr [edx+eax*8+212],0
>00583303    je          0058334D
 00583305    mov         byte ptr [ebp-19],2
>00583309    jmp         0058334D
 0058330B    mov         byte ptr [ebp-19],1
>0058330F    jmp         0058334D
 00583311    xor         eax,eax
 00583313    mov         al,byte ptr [ebp-5]
 00583316    add         eax,eax
 00583318    mov         edx,dword ptr [ebp-4]
 0058331B    cmp         byte ptr [edx+eax*8+211],0
>00583323    je          00583343
 00583325    mov         byte ptr [ebp-19],0
 00583329    xor         eax,eax
 0058332B    mov         al,byte ptr [ebp-5]
 0058332E    add         eax,eax
 00583330    mov         edx,dword ptr [ebp-4]
 00583333    cmp         byte ptr [edx+eax*8+212],0
>0058333B    je          0058334D
 0058333D    mov         byte ptr [ebp-19],2
>00583341    jmp         0058334D
 00583343    mov         byte ptr [ebp-19],1
>00583347    jmp         0058334D
 00583349    mov         byte ptr [ebp-19],1
 0058334D    xor         eax,eax
 0058334F    mov         al,byte ptr [ebp-19]
 00583352    xor         edx,edx
 00583354    mov         dl,byte ptr [ebp-5]
 00583357    add         edx,edx
 00583359    mov         ecx,dword ptr [ebp-4]
 0058335C    lea         edx,[ecx+edx*8]
 0058335F    mov         eax,dword ptr [edx+eax*4+214]
 00583366    mov         dword ptr [ebp-20],eax
 00583369    mov         eax,dword ptr [ebp-20]
 0058336C    mov         edx,dword ptr [eax]
 0058336E    call        dword ptr [edx+2C]
 00583371    sar         eax,1
>00583373    jns         00583378
 00583375    adc         eax,0
 00583378    mov         edx,dword ptr [ebp-4]
 0058337B    mov         edx,dword ptr [edx+2BC]
 00583381    sar         edx,1
>00583383    jns         00583388
 00583385    adc         edx,0
 00583388    sub         edx,eax
 0058338A    mov         dword ptr [ebp-14],edx
 0058338D    mov         eax,dword ptr [ebp-20]
 00583390    mov         edx,dword ptr [eax]
 00583392    call        dword ptr [edx+20]
 00583395    sar         eax,1
>00583397    jns         0058339C
 00583399    adc         eax,0
 0058339C    mov         edx,dword ptr [ebp-4]
 0058339F    mov         edx,dword ptr [edx+4C]
 005833A2    sar         edx,1
>005833A4    jns         005833A9
 005833A6    adc         edx,0
 005833A9    sub         edx,eax
 005833AB    mov         dword ptr [ebp-18],edx
 005833AE    cmp         byte ptr [ebp-0D],0
>005833B2    je          005833BA
 005833B4    inc         dword ptr [ebp-14]
 005833B7    inc         dword ptr [ebp-18]
 005833BA    mov         eax,dword ptr [ebp-20]
 005833BD    mov         edx,dword ptr [eax]
 005833BF    call        dword ptr [edx+20]
 005833C2    push        eax
 005833C3    lea         eax,[ebp-44]
 005833C6    push        eax
 005833C7    mov         eax,dword ptr [ebp-20]
 005833CA    mov         edx,dword ptr [eax]
 005833CC    call        dword ptr [edx+2C]
 005833CF    mov         ecx,eax
 005833D1    xor         edx,edx
 005833D3    xor         eax,eax
 005833D5    call        Rect
 005833DA    lea         eax,[ebp-44]
 005833DD    push        eax
 005833DE    push        8080
 005833E3    mov         eax,dword ptr [ebp-20]
 005833E6    mov         edx,dword ptr [eax]
 005833E8    call        dword ptr [edx+20]
 005833EB    push        eax
 005833EC    lea         eax,[ebp-54]
 005833EF    push        eax
 005833F0    mov         eax,dword ptr [ebp-20]
 005833F3    mov         edx,dword ptr [eax]
 005833F5    call        dword ptr [edx+2C]
 005833F8    mov         ecx,eax
 005833FA    mov         eax,dword ptr [ebp-0C]
 005833FD    add         eax,dword ptr [ebp-14]
 00583400    mov         edx,dword ptr [ebp-18]
 00583403    call        Bounds
 00583408    lea         edx,[ebp-54]
 0058340B    mov         ecx,dword ptr [ebp-20]
 0058340E    mov         eax,dword ptr [ebp-24]
 00583411    call        005C0CC4
 00583416    mov         eax,dword ptr [ebp-4]
 00583419    call        TWinControl.GetHandle
 0058341E    mov         ebx,eax
 00583420    call        USER32.GetFocus
 00583425    cmp         ebx,eax
>00583427    jne         0058348D
 00583429    mov         al,byte ptr [ebp-5]
 0058342C    mov         edx,dword ptr [ebp-4]
 0058342F    cmp         al,byte ptr [edx+2E0]
>00583435    jne         0058348D
 00583437    mov         eax,dword ptr [ebp-4]
 0058343A    mov         eax,dword ptr [eax+4C]
 0058343D    push        eax
 0058343E    lea         eax,[ebp-34]
 00583441    push        eax
 00583442    mov         eax,dword ptr [ebp-4]
 00583445    mov         ecx,dword ptr [eax+2BC]
 0058344B    xor         edx,edx
 0058344D    mov         eax,dword ptr [ebp-0C]
 00583450    call        Bounds
 00583455    push        0FD
 00583457    push        0FD
 00583459    lea         eax,[ebp-34]
 0058345C    push        eax
 0058345D    call        USER32.InflateRect
 00583462    cmp         byte ptr [ebp-0D],0
>00583466    je          00583475
 00583468    push        1
 0058346A    push        1
 0058346C    lea         eax,[ebp-34]
 0058346F    push        eax
 00583470    call        USER32.OffsetRect
 00583475    lea         eax,[ebp-34]
 00583478    push        eax
 00583479    mov         eax,dword ptr [ebp-4]
 0058347C    mov         eax,dword ptr [eax+208]
 00583482    call        TCanvas.GetHandle
 00583487    push        eax
 00583488    call        USER32.DrawFocusRect
 0058348D    pop         ebx
 0058348E    mov         esp,ebp
 00583490    pop         ebp
 00583491    ret
end;*}

//00583494
procedure sub_00583494;
begin
{*
 00583494    push        ebp
 00583495    mov         ebp,esp
 00583497    add         esp,0FFFFFFF0
 0058349A    mov         dword ptr [ebp-4],eax
 0058349D    mov         eax,dword ptr [ebp-4]
 005834A0    mov         eax,dword ptr [eax+208];TMediaPlayer.......................................................
 005834A6    mov         dword ptr [ebp-10],eax
 005834A9    mov         eax,dword ptr [ebp-10]
 005834AC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005834AF    mov         dl,1
 005834B1    call        TBrush.SetStyle
 005834B6    mov         eax,dword ptr [ebp-10]
 005834B9    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005834BC    mov         edx,80000006
 005834C1    call        TPen.SetColor
 005834C6    mov         eax,dword ptr [ebp-10]
 005834C9    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005834CC    mov         edx,1
 005834D1    call        TPen.SetWidth
 005834D6    mov         eax,dword ptr [ebp-4]
 005834D9    mov         eax,dword ptr [eax+48];TMediaPlayer.Width:Integer
 005834DC    push        eax
 005834DD    mov         eax,dword ptr [ebp-4]
 005834E0    mov         eax,dword ptr [eax+4C];TMediaPlayer.Height:Integer
 005834E3    push        eax
 005834E4    xor         ecx,ecx
 005834E6    xor         edx,edx
 005834E8    mov         eax,dword ptr [ebp-10]
 005834EB    call        005C1428
 005834F0    xor         eax,eax
 005834F2    mov         dword ptr [ebp-8],eax
 005834F5    mov         byte ptr [ebp-9],0
 005834F9    xor         eax,eax
 005834FB    mov         al,byte ptr [ebp-9]
 005834FE    add         eax,eax
 00583500    mov         edx,dword ptr [ebp-4]
 00583503    cmp         byte ptr [edx+eax*8+210],0
>0058350B    je          00583528
 0058350D    mov         ecx,dword ptr [ebp-8]
 00583510    mov         dl,byte ptr [ebp-9]
 00583513    mov         eax,dword ptr [ebp-4]
 00583516    call        00583100
 0058351B    mov         eax,dword ptr [ebp-4]
 0058351E    mov         eax,dword ptr [eax+2BC];TMediaPlayer.ButtonWidth:Integer
 00583524    dec         eax
 00583525    add         dword ptr [ebp-8],eax
 00583528    inc         byte ptr [ebp-9]
 0058352B    cmp         byte ptr [ebp-9],9
>0058352F    jne         005834F9
 00583531    mov         esp,ebp
 00583533    pop         ebp
 00583534    ret
*}
end;

//00583538
{*procedure TMediaPlayer.sub_00583538(?:?);
begin
 00583538    push        ebp
 00583539    mov         ebp,esp
 0058353B    add         esp,0FFFFFFF8
 0058353E    mov         byte ptr [ebp-5],dl
 00583541    mov         dword ptr [ebp-4],eax
 00583544    xor         eax,eax
 00583546    mov         al,byte ptr [ebp-5]
 00583549    cmp         eax,8
>0058354C    ja          00583803
 00583552    jmp         dword ptr [eax*4+583559]
 00583552    dd          0058357D
 00583552    dd          005835B8
 00583552    dd          005835F0
 00583552    dd          00583640
 00583552    dd          00583690
 00583552    dd          005836E0
 00583552    dd          00583730
 00583552    dd          00583780
 00583552    dd          005837B8
 0058357D    mov         ax,[00583808];0x81 gvar_00583808
 00583583    mov         edx,dword ptr [ebp-4]
 00583586    not         eax
 00583588    and         ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 0058358F    mov         edx,dword ptr [ebp-4]
 00583592    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
 00583599    mov         ax,[0058380C];0x6 gvar_0058380C
 0058359F    mov         edx,dword ptr [ebp-4]
 005835A2    or          ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 005835A9    mov         edx,dword ptr [ebp-4]
 005835AC    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
>005835B3    jmp         00583803
 005835B8    mov         eax,dword ptr [ebp-4]
 005835BB    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>005835C2    je          005835CF
 005835C4    mov         eax,dword ptr [ebp-4]
 005835C7    or          word ptr [eax+2A6],1;TMediaPlayer.FAutoButtons:TButtonSet
 005835CF    mov         eax,dword ptr [ebp-4]
 005835D2    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>005835D9    je          00583803
 005835DF    mov         eax,dword ptr [ebp-4]
 005835E2    or          word ptr [eax+2A6],80;TMediaPlayer.FAutoButtons:TButtonSet
>005835EB    jmp         00583803
 005835F0    mov         eax,dword ptr [ebp-4]
 005835F3    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>005835FA    je          00583607
 005835FC    mov         eax,dword ptr [ebp-4]
 005835FF    or          word ptr [eax+2A6],1;TMediaPlayer.FAutoButtons:TButtonSet
 00583607    mov         eax,dword ptr [ebp-4]
 0058360A    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>00583611    je          0058361F
 00583613    mov         eax,dword ptr [ebp-4]
 00583616    or          word ptr [eax+2A6],80;TMediaPlayer.FAutoButtons:TButtonSet
 0058361F    mov         ax,[0058380C];0x6 gvar_0058380C
 00583625    mov         edx,dword ptr [ebp-4]
 00583628    not         eax
 0058362A    and         ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 00583631    mov         edx,dword ptr [ebp-4]
 00583634    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
>0058363B    jmp         00583803
 00583640    mov         eax,dword ptr [ebp-4]
 00583643    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>0058364A    je          00583657
 0058364C    mov         eax,dword ptr [ebp-4]
 0058364F    or          word ptr [eax+2A6],1;TMediaPlayer.FAutoButtons:TButtonSet
 00583657    mov         eax,dword ptr [ebp-4]
 0058365A    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>00583661    je          0058366F
 00583663    mov         eax,dword ptr [ebp-4]
 00583666    or          word ptr [eax+2A6],80;TMediaPlayer.FAutoButtons:TButtonSet
 0058366F    mov         ax,[0058380C];0x6 gvar_0058380C
 00583675    mov         edx,dword ptr [ebp-4]
 00583678    not         eax
 0058367A    and         ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 00583681    mov         edx,dword ptr [ebp-4]
 00583684    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
>0058368B    jmp         00583803
 00583690    mov         eax,dword ptr [ebp-4]
 00583693    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>0058369A    je          005836A7
 0058369C    mov         eax,dword ptr [ebp-4]
 0058369F    or          word ptr [eax+2A6],1;TMediaPlayer.FAutoButtons:TButtonSet
 005836A7    mov         eax,dword ptr [ebp-4]
 005836AA    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>005836B1    je          005836BF
 005836B3    mov         eax,dword ptr [ebp-4]
 005836B6    or          word ptr [eax+2A6],80;TMediaPlayer.FAutoButtons:TButtonSet
 005836BF    mov         ax,[0058380C];0x6 gvar_0058380C
 005836C5    mov         edx,dword ptr [ebp-4]
 005836C8    not         eax
 005836CA    and         ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 005836D1    mov         edx,dword ptr [ebp-4]
 005836D4    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
>005836DB    jmp         00583803
 005836E0    mov         eax,dword ptr [ebp-4]
 005836E3    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>005836EA    je          005836F7
 005836EC    mov         eax,dword ptr [ebp-4]
 005836EF    or          word ptr [eax+2A6],1;TMediaPlayer.FAutoButtons:TButtonSet
 005836F7    mov         eax,dword ptr [ebp-4]
 005836FA    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>00583701    je          0058370F
 00583703    mov         eax,dword ptr [ebp-4]
 00583706    or          word ptr [eax+2A6],80;TMediaPlayer.FAutoButtons:TButtonSet
 0058370F    mov         ax,[0058380C];0x6 gvar_0058380C
 00583715    mov         edx,dword ptr [ebp-4]
 00583718    not         eax
 0058371A    and         ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 00583721    mov         edx,dword ptr [ebp-4]
 00583724    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
>0058372B    jmp         00583803
 00583730    mov         eax,dword ptr [ebp-4]
 00583733    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>0058373A    je          00583747
 0058373C    mov         eax,dword ptr [ebp-4]
 0058373F    or          word ptr [eax+2A6],1;TMediaPlayer.FAutoButtons:TButtonSet
 00583747    mov         eax,dword ptr [ebp-4]
 0058374A    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>00583751    je          0058375F
 00583753    mov         eax,dword ptr [ebp-4]
 00583756    or          word ptr [eax+2A6],80;TMediaPlayer.FAutoButtons:TButtonSet
 0058375F    mov         ax,[0058380C];0x6 gvar_0058380C
 00583765    mov         edx,dword ptr [ebp-4]
 00583768    not         eax
 0058376A    and         ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 00583771    mov         edx,dword ptr [ebp-4]
 00583774    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
>0058377B    jmp         00583803
 00583780    mov         ax,[00583808];0x81 gvar_00583808
 00583786    mov         edx,dword ptr [ebp-4]
 00583789    not         eax
 0058378B    and         ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 00583792    mov         edx,dword ptr [ebp-4]
 00583795    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
 0058379C    mov         ax,[0058380C];0x6 gvar_0058380C
 005837A2    mov         edx,dword ptr [ebp-4]
 005837A5    or          ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 005837AC    mov         edx,dword ptr [ebp-4]
 005837AF    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
>005837B6    jmp         00583803
 005837B8    mov         eax,dword ptr [ebp-4]
 005837BB    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>005837C2    je          005837CF
 005837C4    mov         eax,dword ptr [ebp-4]
 005837C7    or          word ptr [eax+2A6],1;TMediaPlayer.FAutoButtons:TButtonSet
 005837CF    mov         eax,dword ptr [ebp-4]
 005837D2    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>005837D9    je          005837E7
 005837DB    mov         eax,dword ptr [ebp-4]
 005837DE    or          word ptr [eax+2A6],80;TMediaPlayer.FAutoButtons:TButtonSet
 005837E7    mov         ax,[0058380C];0x6 gvar_0058380C
 005837ED    mov         edx,dword ptr [ebp-4]
 005837F0    not         eax
 005837F2    and         ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 005837F9    mov         edx,dword ptr [ebp-4]
 005837FC    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
 00583803    pop         ecx
 00583804    pop         ecx
 00583805    pop         ebp
 00583806    ret
end;*}

//00583810
{*procedure sub_00583810(?:TMediaPlayer; ?:?; ?:?);
begin
 00583810    push        ebp
 00583811    mov         ebp,esp
 00583813    add         esp,0FFFFFFDC
 00583816    push        esi
 00583817    push        edi
 00583818    mov         dword ptr [ebp-14],ecx
 0058381B    mov         dword ptr [ebp-8],edx
 0058381E    mov         dword ptr [ebp-4],eax
 00583821    xor         eax,eax
 00583823    mov         dword ptr [ebp-10],eax
 00583826    mov         byte ptr [ebp-9],0
 0058382A    xor         eax,eax
 0058382C    mov         al,byte ptr [ebp-9]
 0058382F    add         eax,eax
 00583831    mov         edx,dword ptr [ebp-4]
 00583834    cmp         byte ptr [edx+eax*8+210],0
>0058383C    je          005838A2
 0058383E    mov         eax,dword ptr [ebp-8]
 00583841    cmp         eax,dword ptr [ebp-10]
>00583844    jl          00583895
 00583846    mov         eax,dword ptr [ebp-10]
 00583849    mov         edx,dword ptr [ebp-4]
 0058384C    add         eax,dword ptr [edx+2BC]
 00583852    cmp         eax,dword ptr [ebp-8]
>00583855    jl          00583895
 00583857    mov         eax,dword ptr [ebp-4]
 0058385A    cmp         byte ptr [eax+31C],0
>00583861    je          0058387C
 00583863    xor         eax,eax
 00583865    mov         al,byte ptr [ebp-9]
 00583868    add         eax,eax
 0058386A    mov         edx,dword ptr [ebp-4]
 0058386D    cmp         byte ptr [edx+eax*8+213],0
>00583875    jne         005838AF
>00583877    jmp         00583949
 0058387C    xor         eax,eax
 0058387E    mov         al,byte ptr [ebp-9]
 00583881    add         eax,eax
 00583883    mov         edx,dword ptr [ebp-4]
 00583886    cmp         byte ptr [edx+eax*8+211],0
>0058388E    jne         005838AF
>00583890    jmp         00583949
 00583895    mov         eax,dword ptr [ebp-4]
 00583898    mov         eax,dword ptr [eax+2BC]
 0058389E    dec         eax
 0058389F    add         dword ptr [ebp-10],eax
 005838A2    inc         byte ptr [ebp-9]
 005838A5    cmp         byte ptr [ebp-9],9
>005838A9    jne         0058382A
 005838AF    mov         al,byte ptr [ebp-9]
 005838B2    mov         edx,dword ptr [ebp-4]
 005838B5    mov         byte ptr [edx+2AA],al
 005838BB    mov         eax,dword ptr [ebp-4]
 005838BE    mov         al,byte ptr [eax+2AA]
 005838C4    mov         edx,dword ptr [ebp-4]
 005838C7    cmp         al,byte ptr [edx+2E0]
>005838CD    je          005838EC
 005838CF    mov         eax,dword ptr [ebp-4]
 005838D2    mov         al,byte ptr [eax+2AA]
 005838D8    mov         edx,dword ptr [ebp-4]
 005838DB    mov         byte ptr [edx+2E0],al
 005838E1    mov         eax,dword ptr [ebp-4]
 005838E4    mov         edx,dword ptr [eax]
 005838E6    call        dword ptr [edx+0C4]
 005838EC    mov         eax,dword ptr [ebp-4]
 005838EF    mov         eax,dword ptr [eax+4C]
 005838F2    push        eax
 005838F3    lea         eax,[ebp-24]
 005838F6    push        eax
 005838F7    mov         ecx,dword ptr [ebp-10]
 005838FA    mov         eax,dword ptr [ebp-4]
 005838FD    add         ecx,dword ptr [eax+2BC]
 00583903    xor         edx,edx
 00583905    mov         eax,dword ptr [ebp-10]
 00583908    call        Rect
 0058390D    mov         eax,dword ptr [ebp-4]
 00583910    lea         esi,[ebp-24]
 00583913    lea         edi,[eax+2AB]
 00583919    movs        dword ptr [edi],dword ptr [esi]
 0058391A    movs        dword ptr [edi],dword ptr [esi]
 0058391B    movs        dword ptr [edi],dword ptr [esi]
 0058391C    movs        dword ptr [edi],dword ptr [esi]
 0058391D    mov         eax,dword ptr [ebp-4]
 00583920    mov         byte ptr [eax+2A8],1
 00583927    mov         eax,dword ptr [ebp-4]
 0058392A    mov         byte ptr [eax+2A9],1
 00583931    mov         ecx,dword ptr [ebp-10]
 00583934    mov         dl,byte ptr [ebp-9]
 00583937    mov         eax,dword ptr [ebp-4]
 0058393A    call        00583100
 0058393F    mov         dl,1
 00583941    mov         eax,dword ptr [ebp-4]
 00583944    call        005F3AF0
 00583949    pop         edi
 0058394A    pop         esi
 0058394B    mov         esp,ebp
 0058394D    pop         ebp
 0058394E    ret
end;*}

//00583950
{*procedure TMediaPlayer.WMLButtonDown(?:?);
begin
 00583950    push        ebp
 00583951    mov         ebp,esp
 00583953    add         esp,0FFFFFFF8
 00583956    mov         dword ptr [ebp-8],edx
 00583959    mov         dword ptr [ebp-4],eax
 0058395C    mov         ecx,dword ptr [ebp-8]
 0058395F    movsx       ecx,word ptr [ecx+0A]
 00583963    mov         edx,dword ptr [ebp-8]
 00583966    movsx       edx,word ptr [edx+8]
 0058396A    mov         eax,dword ptr [ebp-4]
 0058396D    call        00583810
 00583972    pop         ecx
 00583973    pop         ecx
 00583974    pop         ebp
 00583975    ret
end;*}

//00583978
{*procedure TMediaPlayer.WMLButtonDblClk(?:?);
begin
 00583978    push        ebp
 00583979    mov         ebp,esp
 0058397B    add         esp,0FFFFFFF8
 0058397E    mov         dword ptr [ebp-8],edx
 00583981    mov         dword ptr [ebp-4],eax
 00583984    mov         ecx,dword ptr [ebp-8]
 00583987    movsx       ecx,word ptr [ecx+0A]
 0058398B    mov         edx,dword ptr [ebp-8]
 0058398E    movsx       edx,word ptr [edx+8]
 00583992    mov         eax,dword ptr [ebp-4]
 00583995    call        00583810
 0058399A    pop         ecx
 0058399B    pop         ecx
 0058399C    pop         ebp
 0058399D    ret
end;*}

//005839A0
{*procedure TMediaPlayer.WMMouseMove(?:?);
begin
 005839A0    push        ebp
 005839A1    mov         ebp,esp
 005839A3    add         esp,0FFFFFFF0
 005839A6    mov         dword ptr [ebp-8],edx
 005839A9    mov         dword ptr [ebp-4],eax
 005839AC    mov         eax,dword ptr [ebp-4]
 005839AF    cmp         byte ptr [eax+2A8],0;TMediaPlayer.Pressed:Boolean
>005839B6    je          00583A21
 005839B8    lea         ecx,[ebp-10]
 005839BB    mov         edx,dword ptr [ebp-8]
 005839BE    movsx       edx,word ptr [edx+0A]
 005839C2    mov         eax,dword ptr [ebp-8]
 005839C5    movsx       eax,word ptr [eax+8]
 005839C9    call        Point
 005839CE    push        dword ptr [ebp-0C]
 005839D1    push        dword ptr [ebp-10]
 005839D4    mov         eax,dword ptr [ebp-4]
 005839D7    add         eax,2AB;TMediaPlayer.CurrentRect:TRect
 005839DC    push        eax
 005839DD    call        USER32.PtInRect
 005839E2    cmp         eax,1
 005839E5    sbb         eax,eax
 005839E7    inc         eax
 005839E8    mov         edx,dword ptr [ebp-4]
 005839EB    cmp         al,byte ptr [edx+2A9];TMediaPlayer.Down:Boolean
>005839F1    je          00583A21
 005839F3    mov         eax,dword ptr [ebp-4]
 005839F6    mov         al,byte ptr [eax+2A9];TMediaPlayer.Down:Boolean
 005839FC    xor         al,1
 005839FE    mov         edx,dword ptr [ebp-4]
 00583A01    mov         byte ptr [edx+2A9],al;TMediaPlayer.Down:Boolean
 00583A07    mov         eax,dword ptr [ebp-4]
 00583A0A    mov         ecx,dword ptr [eax+2AB];TMediaPlayer.CurrentRect:TRect
 00583A10    mov         eax,dword ptr [ebp-4]
 00583A13    mov         dl,byte ptr [eax+2AA];TMediaPlayer.CurrentButton:TMPBtnType
 00583A19    mov         eax,dword ptr [ebp-4]
 00583A1C    call        00583100
 00583A21    mov         esp,ebp
 00583A23    pop         ebp
 00583A24    ret
end;*}

//00583A28
{*procedure sub_00583A28(?:TMediaPlayer; ?:?);
begin
 00583A28    push        ebp
 00583A29    mov         ebp,esp
 00583A2B    add         esp,0FFFFFFF8
 00583A2E    push        esi
 00583A2F    mov         byte ptr [ebp-6],dl
 00583A32    mov         dword ptr [ebp-4],eax
 00583A35    mov         byte ptr [ebp-5],1
 00583A39    lea         ecx,[ebp-5]
 00583A3C    mov         eax,dword ptr [ebp-4]
 00583A3F    mov         dl,byte ptr [eax+2AA]
 00583A45    mov         eax,dword ptr [ebp-4]
 00583A48    mov         si,0FFB2
 00583A4C    call        @CallDynaInst
 00583A51    cmp         byte ptr [ebp-5],0
>00583A55    je          00583B02
 00583A5B    mov         eax,dword ptr [ebp-4]
 00583A5E    movzx       eax,byte ptr [eax+2AA]
 00583A65    cmp         eax,8
>00583A68    ja          00583AF1
 00583A6E    jmp         dword ptr [eax*4+583A75]
 00583A6E    dd          00583A99
 00583A6E    dd          00583AA3
 00583A6E    dd          00583AAD
 00583A6E    dd          00583AB7
 00583A6E    dd          00583AC1
 00583A6E    dd          00583ACB
 00583A6E    dd          00583AD5
 00583A6E    dd          00583ADF
 00583A6E    dd          00583AE9
 00583A99    mov         eax,dword ptr [ebp-4]
 00583A9C    call        005843C4
>00583AA1    jmp         00583AF1
 00583AA3    mov         eax,dword ptr [ebp-4]
 00583AA6    call        00584704
>00583AAB    jmp         00583AF1
 00583AAD    mov         eax,dword ptr [ebp-4]
 00583AB0    call        00584640
>00583AB5    jmp         00583AF1
 00583AB7    mov         eax,dword ptr [ebp-4]
 00583ABA    call        00584910
>00583ABF    jmp         00583AF1
 00583AC1    mov         eax,dword ptr [ebp-4]
 00583AC4    call        00584AE4
>00583AC9    jmp         00583AF1
 00583ACB    mov         eax,dword ptr [ebp-4]
 00583ACE    call        00584CFC
>00583AD3    jmp         00583AF1
 00583AD5    mov         eax,dword ptr [ebp-4]
 00583AD8    call        00584E14
>00583ADD    jmp         00583AF1
 00583ADF    mov         eax,dword ptr [ebp-4]
 00583AE2    call        00584524
>00583AE7    jmp         00583AF1
 00583AE9    mov         eax,dword ptr [ebp-4]
 00583AEC    call        00584F10
 00583AF1    mov         eax,dword ptr [ebp-4]
 00583AF4    mov         dl,byte ptr [eax+2AA]
 00583AFA    mov         eax,dword ptr [ebp-4]
 00583AFD    call        00583B08
 00583B02    pop         esi
 00583B03    pop         ecx
 00583B04    pop         ecx
 00583B05    pop         ebp
 00583B06    ret
end;*}

//00583B08
{*procedure sub_00583B08(?:?; ?:?);
begin
 00583B08    push        ebp
 00583B09    mov         ebp,esp
 00583B0B    add         esp,0FFFFFFF8
 00583B0E    push        esi
 00583B0F    mov         byte ptr [ebp-5],dl
 00583B12    mov         dword ptr [ebp-4],eax
 00583B15    mov         eax,dword ptr [ebp-4]
 00583B18    mov         dl,byte ptr [eax+2AA]
 00583B1E    mov         eax,dword ptr [ebp-4]
 00583B21    mov         si,0FFB1
 00583B25    call        @CallDynaInst
 00583B2A    pop         esi
 00583B2B    pop         ecx
 00583B2C    pop         ecx
 00583B2D    pop         ebp
 00583B2E    ret
end;*}

//00583B30
{*procedure TMediaPlayer.WMLButtonUp(?:?);
begin
 00583B30    push        ebp
 00583B31    mov         ebp,esp
 00583B33    add         esp,0FFFFFFF8
 00583B36    push        esi
 00583B37    mov         dword ptr [ebp-8],edx
 00583B3A    mov         dword ptr [ebp-4],eax
 00583B3D    xor         edx,edx
 00583B3F    mov         eax,dword ptr [ebp-4]
 00583B42    call        005F3AF0
 00583B47    mov         eax,dword ptr [ebp-4]
 00583B4A    cmp         byte ptr [eax+2A8],0;TMediaPlayer.Pressed:Boolean
>00583B51    je          00583BD9
 00583B57    mov         eax,dword ptr [ebp-4]
 00583B5A    cmp         byte ptr [eax+2A9],0;TMediaPlayer.Down:Boolean
>00583B61    je          00583BD9
 00583B63    mov         eax,dword ptr [ebp-4]
 00583B66    mov         byte ptr [eax+2A9],0;TMediaPlayer.Down:Boolean
 00583B6D    mov         eax,dword ptr [ebp-4]
 00583B70    mov         ecx,dword ptr [eax+2AB];TMediaPlayer.CurrentRect:TRect
 00583B76    mov         eax,dword ptr [ebp-4]
 00583B79    mov         dl,byte ptr [eax+2AA];TMediaPlayer.CurrentButton:TMPBtnType
 00583B7F    mov         eax,dword ptr [ebp-4]
 00583B82    call        00583100
 00583B87    mov         eax,dword ptr [ebp-4]
 00583B8A    mov         dl,byte ptr [eax+2AA];TMediaPlayer.CurrentButton:TMPBtnType
 00583B90    mov         eax,dword ptr [ebp-4]
 00583B93    call        00583A28
 00583B98    mov         eax,dword ptr [ebp-4]
 00583B9B    cmp         byte ptr [eax+31C],0;TMediaPlayer.AutoEnable:Boolean
>00583BA2    je          00583BD9
 00583BA4    mov         eax,dword ptr [ebp-4]
 00583BA7    cmp         dword ptr [eax+304],0;TMediaPlayer.FError:Longint
>00583BAE    jne         00583BD9
 00583BB0    mov         eax,dword ptr [ebp-4]
 00583BB3    cmp         byte ptr [eax+2E1],0;TMediaPlayer.MCIOpened:Boolean
>00583BBA    je          00583BD9
 00583BBC    mov         eax,dword ptr [ebp-4]
 00583BBF    mov         dl,byte ptr [eax+2AA];TMediaPlayer.CurrentButton:TMPBtnType
 00583BC5    mov         eax,dword ptr [ebp-4]
 00583BC8    mov         si,0FFB3
 00583BCC    call        @CallDynaInst;TMediaPlayer.sub_00583538
 00583BD1    mov         eax,dword ptr [ebp-4]
 00583BD4    call        00582E6C
 00583BD9    mov         eax,dword ptr [ebp-4]
 00583BDC    mov         byte ptr [eax+2A8],0;TMediaPlayer.Pressed:Boolean
 00583BE3    pop         esi
 00583BE4    pop         ecx
 00583BE5    pop         ecx
 00583BE6    pop         ebp
 00583BE7    ret
end;*}

//00583BE8
{*procedure TMediaPlayer.WMSetFocus(?:?);
begin
 00583BE8    push        ebp
 00583BE9    mov         ebp,esp
 00583BEB    add         esp,0FFFFFFF8
 00583BEE    mov         dword ptr [ebp-8],edx
 00583BF1    mov         dword ptr [ebp-4],eax
 00583BF4    mov         eax,dword ptr [ebp-4]
 00583BF7    mov         edx,dword ptr [eax]
 00583BF9    call        dword ptr [edx+0C4];TMediaPlayer.sub_00583494
 00583BFF    pop         ecx
 00583C00    pop         ecx
 00583C01    pop         ebp
 00583C02    ret
end;*}

//00583C04
{*procedure TMediaPlayer.WMKillFocus(?:?);
begin
 00583C04    push        ebp
 00583C05    mov         ebp,esp
 00583C07    add         esp,0FFFFFFF8
 00583C0A    mov         dword ptr [ebp-8],edx
 00583C0D    mov         dword ptr [ebp-4],eax
 00583C10    mov         eax,dword ptr [ebp-4]
 00583C13    mov         edx,dword ptr [eax]
 00583C15    call        dword ptr [edx+0C4];TMediaPlayer.sub_00583494
 00583C1B    pop         ecx
 00583C1C    pop         ecx
 00583C1D    pop         ebp
 00583C1E    ret
end;*}

//00583C20
{*procedure TMediaPlayer.WMGetDlgCode(?:?);
begin
 00583C20    push        ebp
 00583C21    mov         ebp,esp
 00583C23    add         esp,0FFFFFFF8
 00583C26    mov         dword ptr [ebp-8],edx
 00583C29    mov         dword ptr [ebp-4],eax
 00583C2C    mov         eax,dword ptr [ebp-8]
 00583C2F    mov         dword ptr [eax+0C],1
 00583C36    pop         ecx
 00583C37    pop         ecx
 00583C38    pop         ebp
 00583C39    ret
end;*}

//00583C3C
{*procedure TMediaPlayer.sub_00583C3C(?:?; ?:?);
begin
 00583C3C    push        ebp
 00583C3D    mov         ebp,esp
 00583C3F    add         esp,0FFFFFFF4
 00583C42    push        esi
 00583C43    mov         byte ptr [ebp-0A],cl
 00583C46    mov         dword ptr [ebp-8],edx
 00583C49    mov         dword ptr [ebp-4],eax
 00583C4C    mov         eax,dword ptr [ebp-8]
 00583C4F    mov         ax,word ptr [eax]
 00583C52    sub         ax,20
>00583C56    je          00583D19
 00583C5C    sub         ax,5
>00583C60    je          00583CC6
 00583C62    sub         ax,2
>00583C66    jne         00583D7E
 00583C6C    mov         eax,dword ptr [ebp-4]
 00583C6F    mov         al,byte ptr [eax+2E0];TMediaPlayer.FocusedButton:TMPBtnType
 00583C75    mov         byte ptr [ebp-9],al
 00583C78    cmp         byte ptr [ebp-9],8
>00583C7C    jae         00583C81
 00583C7E    inc         byte ptr [ebp-9]
 00583C81    cmp         byte ptr [ebp-9],8
>00583C85    je          00583C9B
 00583C87    xor         eax,eax
 00583C89    mov         al,byte ptr [ebp-9]
 00583C8C    add         eax,eax
 00583C8E    mov         edx,dword ptr [ebp-4]
 00583C91    cmp         byte ptr [edx+eax*8+210],0
>00583C99    je          00583C78
 00583C9B    mov         al,byte ptr [ebp-9]
 00583C9E    mov         edx,dword ptr [ebp-4]
 00583CA1    cmp         al,byte ptr [edx+2E0];TMediaPlayer.FocusedButton:TMPBtnType
>00583CA7    je          00583D7E
 00583CAD    mov         al,byte ptr [ebp-9]
 00583CB0    mov         edx,dword ptr [ebp-4]
 00583CB3    mov         byte ptr [edx+2E0],al;TMediaPlayer.FocusedButton:TMPBtnType
 00583CB9    mov         eax,dword ptr [ebp-4]
 00583CBC    mov         edx,dword ptr [eax]
 00583CBE    call        dword ptr [edx+7C];TWinControl.Invalidate
>00583CC1    jmp         00583D7E
 00583CC6    mov         eax,dword ptr [ebp-4]
 00583CC9    mov         al,byte ptr [eax+2E0];TMediaPlayer.FocusedButton:TMPBtnType
 00583CCF    mov         byte ptr [ebp-9],al
 00583CD2    cmp         byte ptr [ebp-9],0
>00583CD6    jbe         00583CDB
 00583CD8    dec         byte ptr [ebp-9]
 00583CDB    cmp         byte ptr [ebp-9],0
>00583CDF    je          00583CF5
 00583CE1    xor         eax,eax
 00583CE3    mov         al,byte ptr [ebp-9]
 00583CE6    add         eax,eax
 00583CE8    mov         edx,dword ptr [ebp-4]
 00583CEB    cmp         byte ptr [edx+eax*8+210],0
>00583CF3    je          00583CD2
 00583CF5    mov         al,byte ptr [ebp-9]
 00583CF8    mov         edx,dword ptr [ebp-4]
 00583CFB    cmp         al,byte ptr [edx+2E0];TMediaPlayer.FocusedButton:TMPBtnType
>00583D01    je          00583D7E
 00583D03    mov         al,byte ptr [ebp-9]
 00583D06    mov         edx,dword ptr [ebp-4]
 00583D09    mov         byte ptr [edx+2E0],al;TMediaPlayer.FocusedButton:TMPBtnType
 00583D0F    mov         eax,dword ptr [ebp-4]
 00583D12    mov         edx,dword ptr [eax]
 00583D14    call        dword ptr [edx+7C];TWinControl.Invalidate
>00583D17    jmp         00583D7E
 00583D19    mov         eax,dword ptr [ebp-4]
 00583D1C    movzx       eax,byte ptr [eax+2E0];TMediaPlayer.FocusedButton:TMPBtnType
 00583D23    add         eax,eax
 00583D25    mov         edx,dword ptr [ebp-4]
 00583D28    cmp         byte ptr [edx+eax*8+211],0
>00583D30    je          00583D7E
 00583D32    mov         eax,dword ptr [ebp-4]
 00583D35    mov         al,byte ptr [eax+2E0];TMediaPlayer.FocusedButton:TMPBtnType
 00583D3B    mov         edx,dword ptr [ebp-4]
 00583D3E    mov         byte ptr [edx+2AA],al;TMediaPlayer.CurrentButton:TMPBtnType
 00583D44    mov         eax,dword ptr [ebp-4]
 00583D47    mov         dl,byte ptr [eax+2AA];TMediaPlayer.CurrentButton:TMPBtnType
 00583D4D    mov         eax,dword ptr [ebp-4]
 00583D50    call        00583A28
 00583D55    mov         eax,dword ptr [ebp-4]
 00583D58    cmp         byte ptr [eax+31C],0;TMediaPlayer.AutoEnable:Boolean
>00583D5F    je          00583D7E
 00583D61    mov         eax,dword ptr [ebp-4]
 00583D64    mov         dl,byte ptr [eax+2AA];TMediaPlayer.CurrentButton:TMPBtnType
 00583D6A    mov         eax,dword ptr [ebp-4]
 00583D6D    mov         si,0FFB3
 00583D71    call        @CallDynaInst;TMediaPlayer.sub_00583538
 00583D76    mov         eax,dword ptr [ebp-4]
 00583D79    call        00582E6C
 00583D7E    pop         esi
 00583D7F    mov         esp,ebp
 00583D81    pop         ebp
 00583D82    ret
end;*}

//00583D84
{*procedure TMediaPlayer.sub_00583D84(?:?);
begin
 00583D84    push        ebp
 00583D85    mov         ebp,esp
 00583D87    add         esp,0FFFFFFF8
 00583D8A    push        esi
 00583D8B    mov         dword ptr [ebp-8],edx
 00583D8E    mov         dword ptr [ebp-4],eax
 00583D91    mov         eax,dword ptr [ebp-4]
 00583D94    cmp         byte ptr [eax+31C],0;TMediaPlayer.AutoEnable:Boolean
>00583D9B    je          00583DFC
 00583D9D    mov         eax,dword ptr [ebp-4]
 00583DA0    call        00585600
 00583DA5    cmp         al,1
>00583DA7    jne         00583DFC
 00583DA9    mov         eax,dword ptr [ebp-4]
 00583DAC    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>00583DB3    je          00583DC0
 00583DB5    mov         eax,dword ptr [ebp-4]
 00583DB8    or          word ptr [eax+2A6],1;TMediaPlayer.FAutoButtons:TButtonSet
 00583DC0    mov         eax,dword ptr [ebp-4]
 00583DC3    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>00583DCA    je          00583DD8
 00583DCC    mov         eax,dword ptr [ebp-4]
 00583DCF    or          word ptr [eax+2A6],80;TMediaPlayer.FAutoButtons:TButtonSet
 00583DD8    mov         ax,[00583E54];0x6 gvar_00583E54
 00583DDE    mov         edx,dword ptr [ebp-4]
 00583DE1    not         eax
 00583DE3    and         ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 00583DEA    mov         edx,dword ptr [ebp-4]
 00583DED    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
 00583DF4    mov         eax,dword ptr [ebp-4]
 00583DF7    call        00582E6C
 00583DFC    mov         eax,dword ptr [ebp-8]
 00583DFF    mov         eax,dword ptr [eax+4]
 00583E02    dec         eax
>00583E03    je          00583E14
 00583E05    dec         eax
>00583E06    je          00583E20
 00583E08    sub         eax,2
>00583E0B    je          00583E2C
 00583E0D    sub         eax,4
>00583E10    je          00583E38
>00583E12    jmp         00583E42
 00583E14    mov         eax,dword ptr [ebp-4]
 00583E17    mov         byte ptr [eax+308],0;TMediaPlayer.FNotifyValue:TMPNotifyValues
>00583E1E    jmp         00583E42
 00583E20    mov         eax,dword ptr [ebp-4]
 00583E23    mov         byte ptr [eax+308],1;TMediaPlayer.FNotifyValue:TMPNotifyValues
>00583E2A    jmp         00583E42
 00583E2C    mov         eax,dword ptr [ebp-4]
 00583E2F    mov         byte ptr [eax+308],2;TMediaPlayer.FNotifyValue:TMPNotifyValues
>00583E36    jmp         00583E42
 00583E38    mov         eax,dword ptr [ebp-4]
 00583E3B    mov         byte ptr [eax+308],3;TMediaPlayer.FNotifyValue:TMPNotifyValues
 00583E42    mov         eax,dword ptr [ebp-4]
 00583E45    mov         si,0FFB0
 00583E49    call        @CallDynaInst;TMediaPlayer.sub_00583EF8
 00583E4E    pop         esi
 00583E4F    pop         ecx
 00583E50    pop         ecx
 00583E51    pop         ebp
 00583E52    ret
end;*}

//00583E58
procedure sub_00583E58(?:TMediaPlayer);
begin
{*
 00583E58    push        ebp
 00583E59    mov         ebp,esp
 00583E5B    push        ecx
 00583E5C    mov         dword ptr [ebp-4],eax
 00583E5F    mov         eax,dword ptr [ebp-4]
 00583E62    cmp         byte ptr [eax+2E1],0
>00583E69    jne         00583E82
 00583E6B    mov         ecx,dword ptr ds:[6E9FB8];^gvar_0063CD80
 00583E71    mov         dl,1
 00583E73    mov         eax,[00582408];EMCIDeviceError
 00583E78    call        Exception.Create;EMCIDeviceError.Create
 00583E7D    call        @RaiseExcept
 00583E82    pop         ecx
 00583E83    pop         ebp
 00583E84    ret
*}
end;

//00583E88
{*procedure TMediaPlayer.sub_00583E88(?:?; ?:?);
begin
 00583E88    push        ebp
 00583E89    mov         ebp,esp
 00583E8B    add         esp,0FFFFFFF4
 00583E8E    push        ebx
 00583E8F    mov         dword ptr [ebp-0C],ecx
 00583E92    mov         byte ptr [ebp-5],dl
 00583E95    mov         dword ptr [ebp-4],eax
 00583E98    mov         eax,dword ptr [ebp-4]
 00583E9B    cmp         word ptr [eax+2CA],0;TMediaPlayer.?f2CA:word
>00583EA3    je          00583EBE
 00583EA5    mov         eax,dword ptr [ebp-0C]
 00583EA8    push        eax
 00583EA9    mov         ebx,dword ptr [ebp-4]
 00583EAC    mov         cl,byte ptr [ebp-5]
 00583EAF    mov         edx,dword ptr [ebp-4]
 00583EB2    mov         eax,dword ptr [ebx+2CC];TMediaPlayer.?f2CC:dword
 00583EB8    call        dword ptr [ebx+2C8];TMediaPlayer.OnClick
 00583EBE    pop         ebx
 00583EBF    mov         esp,ebp
 00583EC1    pop         ebp
 00583EC2    ret
end;*}

//00583EC4
{*procedure TMediaPlayer.sub_00583EC4(?:?);
begin
 00583EC4    push        ebp
 00583EC5    mov         ebp,esp
 00583EC7    add         esp,0FFFFFFF8
 00583ECA    push        ebx
 00583ECB    mov         byte ptr [ebp-5],dl
 00583ECE    mov         dword ptr [ebp-4],eax
 00583ED1    mov         eax,dword ptr [ebp-4]
 00583ED4    cmp         word ptr [eax+2D2],0;TMediaPlayer.?f2D2:word
>00583EDC    je          00583EF3
 00583EDE    mov         ebx,dword ptr [ebp-4]
 00583EE1    mov         cl,byte ptr [ebp-5]
 00583EE4    mov         edx,dword ptr [ebp-4]
 00583EE7    mov         eax,dword ptr [ebx+2D4];TMediaPlayer.?f2D4:dword
 00583EED    call        dword ptr [ebx+2D0];TMediaPlayer.OnPostClick
 00583EF3    pop         ebx
 00583EF4    pop         ecx
 00583EF5    pop         ecx
 00583EF6    pop         ebp
 00583EF7    ret
end;*}

//00583EF8
procedure TMediaPlayer.sub_00583EF8;
begin
{*
 00583EF8    push        ebp
 00583EF9    mov         ebp,esp
 00583EFB    push        ecx
 00583EFC    push        ebx
 00583EFD    mov         dword ptr [ebp-4],eax
 00583F00    mov         eax,dword ptr [ebp-4]
 00583F03    cmp         word ptr [eax+2DA],0;TMediaPlayer.?f2DA:word
>00583F0B    je          00583F1F
 00583F0D    mov         ebx,dword ptr [ebp-4]
 00583F10    mov         edx,dword ptr [ebp-4]
 00583F13    mov         eax,dword ptr [ebx+2DC];TMediaPlayer.?f2DC:dword
 00583F19    call        dword ptr [ebx+2D8];TMediaPlayer.OnNotify
 00583F1F    pop         ebx
 00583F20    pop         ecx
 00583F21    pop         ebp
 00583F22    ret
*}
end;

//00583F24
procedure TMediaPlayer.sub_00583F24;
begin
{*
 00583F24    push        ebp
 00583F25    mov         ebp,esp
 00583F27    push        ecx
 00583F28    mov         dword ptr [ebp-4],eax
 00583F2B    mov         eax,dword ptr [ebp-4]
 00583F2E    call        TComponent.sub_00650894
 00583F33    mov         eax,dword ptr [ebp-4]
 00583F36    call        00582FE8
 00583F3B    pop         ecx
 00583F3C    pop         ebp
 00583F3D    ret
*}
end;

//00583FB4
procedure sub_00583FB4(?:TMediaPlayer);
begin
{*
 00583FB4    push        ebp
 00583FB5    mov         ebp,esp
 00583FB7    add         esp,0FFFFFFD4
 00583FBA    push        esi
 00583FBB    xor         edx,edx
 00583FBD    mov         dword ptr [ebp-2C],edx
 00583FC0    mov         dword ptr [ebp-4],eax
 00583FC3    xor         eax,eax
 00583FC5    push        ebp
 00583FC6    push        5842A2
 00583FCB    push        dword ptr fs:[eax]
 00583FCE    mov         dword ptr fs:[eax],esp
 00583FD1    lea         eax,[ebp-18]
 00583FD4    xor         ecx,ecx
 00583FD6    mov         edx,14
 00583FDB    call        @FillChar
 00583FE0    mov         eax,dword ptr [ebp-4]
 00583FE3    cmp         byte ptr [eax+2E1],0;TMediaPlayer.MCIOpened:Boolean
>00583FEA    je          00583FF4
 00583FEC    mov         eax,dword ptr [ebp-4]
 00583FEF    call        005842B8
 00583FF4    xor         eax,eax
 00583FF6    mov         dword ptr [ebp-18],eax
 00583FF9    mov         eax,dword ptr [ebp-4]
 00583FFC    movzx       eax,byte ptr [eax+2F4];TMediaPlayer.DeviceType:TMPDeviceTypes
 00584003    mov         eax,dword ptr [eax*4+6E39CC]
 0058400A    mov         dword ptr [ebp-10],eax
 0058400D    mov         eax,dword ptr [ebp-4]
 00584010    mov         eax,dword ptr [eax+318];TMediaPlayer.FileName:String
 00584016    call        @LStrToPChar
 0058401B    mov         dword ptr [ebp-0C],eax
 0058401E    mov         eax,dword ptr [ebp-4]
 00584021    xor         edx,edx
 00584023    mov         dword ptr [eax+2E8],edx;TMediaPlayer.FFlags:Longint
 00584029    mov         eax,dword ptr [ebp-4]
 0058402C    cmp         byte ptr [eax+2EE],0;TMediaPlayer.FUseWait:Boolean
>00584033    je          0058405A
 00584035    mov         eax,dword ptr [ebp-4]
 00584038    cmp         byte ptr [eax+2EC],0;TMediaPlayer.FWait:Boolean
>0058403F    je          0058404E
 00584041    mov         eax,dword ptr [ebp-4]
 00584044    mov         dword ptr [eax+2E8],2;TMediaPlayer.FFlags:Longint
 0058404E    mov         eax,dword ptr [ebp-4]
 00584051    mov         byte ptr [eax+2EE],0;TMediaPlayer.FUseWait:Boolean
>00584058    jmp         00584067
 0058405A    mov         eax,dword ptr [ebp-4]
 0058405D    mov         dword ptr [eax+2E8],2;TMediaPlayer.FFlags:Longint
 00584067    mov         eax,dword ptr [ebp-4]
 0058406A    cmp         byte ptr [eax+2EF],0;TMediaPlayer.FUseNotify:Boolean
>00584071    je          00584093
 00584073    mov         eax,dword ptr [ebp-4]
 00584076    cmp         byte ptr [eax+2ED],0;TMediaPlayer.FNotify:Boolean
>0058407D    je          00584089
 0058407F    mov         eax,dword ptr [ebp-4]
 00584082    or          dword ptr [eax+2E8],1;TMediaPlayer.FFlags:Longint
 00584089    mov         eax,dword ptr [ebp-4]
 0058408C    mov         byte ptr [eax+2EF],0;TMediaPlayer.FUseNotify:Boolean
 00584093    mov         eax,dword ptr [ebp-4]
 00584096    cmp         byte ptr [eax+2F4],0;TMediaPlayer.DeviceType:TMPDeviceTypes
>0058409D    je          005840AC
 0058409F    mov         eax,dword ptr [ebp-4]
 005840A2    or          dword ptr [eax+2E8],2000;TMediaPlayer.FFlags:Longint
 005840AC    mov         eax,dword ptr [ebp-4]
 005840AF    cmp         byte ptr [eax+2F4],0;TMediaPlayer.DeviceType:TMPDeviceTypes
>005840B6    je          005840C7
 005840B8    mov         eax,dword ptr [ebp-4]
 005840BB    or          dword ptr [eax+2E8],2000;TMediaPlayer.FFlags:Longint
>005840C5    jmp         005840D4
 005840C7    mov         eax,dword ptr [ebp-4]
 005840CA    or          dword ptr [eax+2E8],200;TMediaPlayer.FFlags:Longint
 005840D4    mov         eax,dword ptr [ebp-4]
 005840D7    cmp         byte ptr [eax+31F],0;TMediaPlayer.Shareable:Boolean
>005840DE    je          005840ED
 005840E0    mov         eax,dword ptr [ebp-4]
 005840E3    or          dword ptr [eax+2E8],100;TMediaPlayer.FFlags:Longint
 005840ED    mov         eax,dword ptr [ebp-4]
 005840F0    call        TWinControl.GetHandle
 005840F5    mov         dword ptr [ebp-18],eax
 005840F8    lea         eax,[ebp-18]
 005840FB    push        eax
 005840FC    mov         eax,dword ptr [ebp-4]
 005840FF    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 00584105    push        eax
 00584106    push        803
 0058410B    push        0
 0058410D    call        WINMM.mciSendCommandA
 00584112    mov         edx,dword ptr [ebp-4]
 00584115    mov         dword ptr [edx+304],eax;TMediaPlayer.FError:Longint
 0058411B    mov         eax,dword ptr [ebp-4]
 0058411E    cmp         dword ptr [eax+304],0;TMediaPlayer.FError:Longint
>00584125    je          0058414B
 00584127    lea         edx,[ebp-2C]
 0058412A    mov         eax,dword ptr [ebp-4]
 0058412D    call        00585710
 00584132    mov         ecx,dword ptr [ebp-2C]
 00584135    mov         dl,1
 00584137    mov         eax,[00582408];EMCIDeviceError
 0058413C    call        Exception.Create;EMCIDeviceError.Create
 00584141    call        @RaiseExcept
>00584146    jmp         0058428C
 0058414B    mov         eax,dword ptr [ebp-4]
 0058414E    mov         byte ptr [eax+2E1],1;TMediaPlayer.MCIOpened:Boolean
 00584155    mov         ax,word ptr [ebp-14]
 00584159    mov         edx,dword ptr [ebp-4]
 0058415C    mov         word ptr [edx+2F2],ax;TMediaPlayer.FDeviceID:word
 00584163    mov         eax,dword ptr [ebp-4]
 00584166    call        00585540
 0058416B    mov         ecx,0A
 00584170    cdq
 00584171    idiv        eax,ecx
 00584173    mov         edx,dword ptr [ebp-4]
 00584176    mov         dword ptr [edx+300],eax;TMediaPlayer.FFrames:Longint
 0058417C    mov         eax,dword ptr [ebp-4]
 0058417F    call        0058531C
 00584184    mov         eax,dword ptr [ebp-4]
 00584187    cmp         byte ptr [eax+2E7],0;TMediaPlayer.FHasVideo:Boolean
>0058418E    je          005841CA
 00584190    mov         eax,dword ptr [ebp-4]
 00584193    mov         edx,dword ptr [eax+30C];TMediaPlayer.Display:TWinControl
 00584199    mov         eax,dword ptr [ebp-4]
 0058419C    call        TMediaPlayer.SetDisplay
 005841A1    lea         edx,[ebp-28]
 005841A4    mov         eax,dword ptr [ebp-4]
 005841A7    call        005852A8
 005841AC    mov         eax,dword ptr [ebp-20]
 005841AF    sub         eax,dword ptr [ebp-28]
 005841B2    mov         edx,dword ptr [ebp-4]
 005841B5    mov         dword ptr [edx+310],eax;TMediaPlayer.FDWidth:Integer
 005841BB    mov         eax,dword ptr [ebp-1C]
 005841BE    sub         eax,dword ptr [ebp-24]
 005841C1    mov         edx,dword ptr [ebp-4]
 005841C4    mov         dword ptr [edx+314],eax;TMediaPlayer.FDHeight:Integer
 005841CA    mov         eax,dword ptr [ebp-4]
 005841CD    cmp         byte ptr [eax+2F4],2;TMediaPlayer.DeviceType:TMPDeviceTypes
>005841D4    je          005841E2
 005841D6    mov         eax,dword ptr [ebp-4]
 005841D9    cmp         byte ptr [eax+2F4],0B;TMediaPlayer.DeviceType:TMPDeviceTypes
>005841E0    jne         005841EC
 005841E2    mov         dl,0A
 005841E4    mov         eax,dword ptr [ebp-4]
 005841E7    call        005850E4
 005841EC    mov         eax,dword ptr [ebp-4]
 005841EF    mov         dx,word ptr ds:[5842B0];0x18 gvar_005842B0
 005841F6    mov         word ptr [eax+2A6],dx;TMediaPlayer.FAutoButtons:TButtonSet
 005841FD    mov         eax,dword ptr [ebp-4]
 00584200    cmp         byte ptr [eax+2E4],0;TMediaPlayer.FCanStep:Boolean
>00584207    je          00584223
 00584209    mov         ax,[005842B4];0x60 gvar_005842B4
 0058420F    mov         edx,dword ptr [ebp-4]
 00584212    or          ax,word ptr [edx+2A6];TMediaPlayer.FAutoButtons:TButtonSet
 00584219    mov         edx,dword ptr [ebp-4]
 0058421C    mov         word ptr [edx+2A6],ax;TMediaPlayer.FAutoButtons:TButtonSet
 00584223    mov         eax,dword ptr [ebp-4]
 00584226    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>0058422D    je          0058423A
 0058422F    mov         eax,dword ptr [ebp-4]
 00584232    or          word ptr [eax+2A6],1;TMediaPlayer.FAutoButtons:TButtonSet
 0058423A    mov         eax,dword ptr [ebp-4]
 0058423D    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>00584244    je          00584252
 00584246    mov         eax,dword ptr [ebp-4]
 00584249    or          word ptr [eax+2A6],80;TMediaPlayer.FAutoButtons:TButtonSet
 00584252    mov         eax,dword ptr [ebp-4]
 00584255    cmp         byte ptr [eax+2E5],0;TMediaPlayer.FCanEject:Boolean
>0058425C    je          0058426A
 0058425E    mov         eax,dword ptr [ebp-4]
 00584261    or          word ptr [eax+2A6],100;TMediaPlayer.FAutoButtons:TButtonSet
 0058426A    mov         eax,dword ptr [ebp-4]
 0058426D    call        00585600
 00584272    cmp         al,2
>00584274    jne         00584284
 00584276    xor         edx,edx
 00584278    mov         eax,dword ptr [ebp-4]
 0058427B    mov         si,0FFB3
 0058427F    call        @CallDynaInst;TMediaPlayer.sub_00583538
 00584284    mov         eax,dword ptr [ebp-4]
 00584287    call        00582E6C
 0058428C    xor         eax,eax
 0058428E    pop         edx
 0058428F    pop         ecx
 00584290    pop         ecx
 00584291    mov         dword ptr fs:[eax],edx
 00584294    push        5842A9
 00584299    lea         eax,[ebp-2C]
 0058429C    call        @LStrClr
 005842A1    ret
>005842A2    jmp         @HandleFinally
>005842A7    jmp         00584299
 005842A9    pop         esi
 005842AA    mov         esp,ebp
 005842AC    pop         ebp
 005842AD    ret
*}
end;

//005842B8
procedure sub_005842B8(?:TMediaPlayer);
begin
{*
 005842B8    push        ebp
 005842B9    mov         ebp,esp
 005842BB    add         esp,0FFFFFFF8
 005842BE    mov         dword ptr [ebp-4],eax
 005842C1    mov         eax,dword ptr [ebp-4]
 005842C4    cmp         word ptr [eax+2F2],0;TMediaPlayer.FDeviceID:word
>005842CC    je          005843B9
 005842D2    mov         eax,dword ptr [ebp-4]
 005842D5    xor         edx,edx
 005842D7    mov         dword ptr [eax+2E8],edx;TMediaPlayer.FFlags:Longint
 005842DD    mov         eax,dword ptr [ebp-4]
 005842E0    cmp         byte ptr [eax+2EE],0;TMediaPlayer.FUseWait:Boolean
>005842E7    je          0058430E
 005842E9    mov         eax,dword ptr [ebp-4]
 005842EC    cmp         byte ptr [eax+2EC],0;TMediaPlayer.FWait:Boolean
>005842F3    je          00584302
 005842F5    mov         eax,dword ptr [ebp-4]
 005842F8    mov         dword ptr [eax+2E8],2;TMediaPlayer.FFlags:Longint
 00584302    mov         eax,dword ptr [ebp-4]
 00584305    mov         byte ptr [eax+2EE],0;TMediaPlayer.FUseWait:Boolean
>0058430C    jmp         0058431B
 0058430E    mov         eax,dword ptr [ebp-4]
 00584311    mov         dword ptr [eax+2E8],2;TMediaPlayer.FFlags:Longint
 0058431B    mov         eax,dword ptr [ebp-4]
 0058431E    cmp         byte ptr [eax+2EF],0;TMediaPlayer.FUseNotify:Boolean
>00584325    je          00584347
 00584327    mov         eax,dword ptr [ebp-4]
 0058432A    cmp         byte ptr [eax+2ED],0;TMediaPlayer.FNotify:Boolean
>00584331    je          0058433D
 00584333    mov         eax,dword ptr [ebp-4]
 00584336    or          dword ptr [eax+2E8],1;TMediaPlayer.FFlags:Longint
 0058433D    mov         eax,dword ptr [ebp-4]
 00584340    mov         byte ptr [eax+2EF],0;TMediaPlayer.FUseNotify:Boolean
 00584347    mov         eax,dword ptr [ebp-4]
 0058434A    call        TWinControl.GetHandle
 0058434F    mov         dword ptr [ebp-8],eax
 00584352    lea         eax,[ebp-8]
 00584355    push        eax
 00584356    mov         eax,dword ptr [ebp-4]
 00584359    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 0058435F    push        eax
 00584360    push        804
 00584365    mov         eax,dword ptr [ebp-4]
 00584368    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 0058436F    push        eax
 00584370    call        WINMM.mciSendCommandA
 00584375    mov         edx,dword ptr [ebp-4]
 00584378    mov         dword ptr [edx+304],eax;TMediaPlayer.FError:Longint
 0058437E    mov         eax,dword ptr [ebp-4]
 00584381    cmp         dword ptr [eax+304],0;TMediaPlayer.FError:Longint
>00584388    jne         005843B9
 0058438A    mov         eax,dword ptr [ebp-4]
 0058438D    mov         byte ptr [eax+2E1],0;TMediaPlayer.MCIOpened:Boolean
 00584394    mov         eax,dword ptr [ebp-4]
 00584397    mov         word ptr [eax+2F2],0;TMediaPlayer.FDeviceID:word
 005843A0    mov         eax,dword ptr [ebp-4]
 005843A3    mov         dx,word ptr ds:[5843C0];0x0 gvar_005843C0
 005843AA    mov         word ptr [eax+2A6],dx;TMediaPlayer.FAutoButtons:TButtonSet
 005843B1    mov         eax,dword ptr [ebp-4]
 005843B4    call        00582E6C
 005843B9    pop         ecx
 005843BA    pop         ecx
 005843BB    pop         ebp
 005843BC    ret
*}
end;

//005843C4
{*procedure sub_005843C4(?:?);
begin
 005843C4    push        ebp
 005843C5    mov         ebp,esp
 005843C7    add         esp,0FFFFFFF0
 005843CA    push        ebx
 005843CB    mov         dword ptr [ebp-4],eax
 005843CE    mov         eax,dword ptr [ebp-4]
 005843D1    call        00583E58
 005843D6    mov         eax,dword ptr [ebp-4]
 005843D9    cmp         byte ptr [eax+31E],0
>005843E0    je          00584418
 005843E2    mov         eax,dword ptr [ebp-4]
 005843E5    call        00585658
 005843EA    mov         ebx,eax
 005843EC    mov         eax,dword ptr [ebp-4]
 005843EF    call        00585540
 005843F4    cmp         ebx,eax
>005843F6    jne         00584418
 005843F8    mov         eax,dword ptr [ebp-4]
 005843FB    cmp         byte ptr [eax+2F0],0
>00584402    jne         00584418
 00584404    mov         eax,dword ptr [ebp-4]
 00584407    cmp         byte ptr [eax+2F1],0
>0058440E    jne         00584418
 00584410    mov         eax,dword ptr [ebp-4]
 00584413    call        00584FF0
 00584418    mov         eax,dword ptr [ebp-4]
 0058441B    xor         edx,edx
 0058441D    mov         dword ptr [eax+2E8],edx
 00584423    mov         eax,dword ptr [ebp-4]
 00584426    cmp         byte ptr [eax+2EF],0
>0058442D    je          00584454
 0058442F    mov         eax,dword ptr [ebp-4]
 00584432    cmp         byte ptr [eax+2ED],0
>00584439    je          00584448
 0058443B    mov         eax,dword ptr [ebp-4]
 0058443E    mov         dword ptr [eax+2E8],1
 00584448    mov         eax,dword ptr [ebp-4]
 0058444B    mov         byte ptr [eax+2EF],0
>00584452    jmp         00584461
 00584454    mov         eax,dword ptr [ebp-4]
 00584457    mov         dword ptr [eax+2E8],1
 00584461    mov         eax,dword ptr [ebp-4]
 00584464    cmp         byte ptr [eax+2EE],0
>0058446B    je          0058448D
 0058446D    mov         eax,dword ptr [ebp-4]
 00584470    cmp         byte ptr [eax+2EC],0
>00584477    je          00584483
 00584479    mov         eax,dword ptr [ebp-4]
 0058447C    or          dword ptr [eax+2E8],2
 00584483    mov         eax,dword ptr [ebp-4]
 00584486    mov         byte ptr [eax+2EE],0
 0058448D    mov         eax,dword ptr [ebp-4]
 00584490    cmp         byte ptr [eax+2F0],0
>00584497    je          005844B9
 00584499    mov         eax,dword ptr [ebp-4]
 0058449C    or          dword ptr [eax+2E8],4
 005844A3    mov         eax,dword ptr [ebp-4]
 005844A6    mov         eax,dword ptr [eax+2FC]
 005844AC    mov         dword ptr [ebp-0C],eax
 005844AF    mov         eax,dword ptr [ebp-4]
 005844B2    mov         byte ptr [eax+2F0],0
 005844B9    mov         eax,dword ptr [ebp-4]
 005844BC    cmp         byte ptr [eax+2F1],0
>005844C3    je          005844E5
 005844C5    mov         eax,dword ptr [ebp-4]
 005844C8    or          dword ptr [eax+2E8],8
 005844CF    mov         eax,dword ptr [ebp-4]
 005844D2    mov         eax,dword ptr [eax+2F8]
 005844D8    mov         dword ptr [ebp-8],eax
 005844DB    mov         eax,dword ptr [ebp-4]
 005844DE    mov         byte ptr [eax+2F1],0
 005844E5    mov         eax,dword ptr [ebp-4]
 005844E8    call        TWinControl.GetHandle
 005844ED    mov         dword ptr [ebp-10],eax
 005844F0    lea         eax,[ebp-10]
 005844F3    push        eax
 005844F4    mov         eax,dword ptr [ebp-4]
 005844F7    mov         eax,dword ptr [eax+2E8]
 005844FD    push        eax
 005844FE    push        806
 00584503    mov         eax,dword ptr [ebp-4]
 00584506    movzx       eax,word ptr [eax+2F2]
 0058450D    push        eax
 0058450E    call        WINMM.mciSendCommandA
 00584513    mov         edx,dword ptr [ebp-4]
 00584516    mov         dword ptr [edx+304],eax
 0058451C    pop         ebx
 0058451D    mov         esp,ebp
 0058451F    pop         ebp
 00584520    ret
end;*}

//00584524
{*procedure sub_00584524(?:?);
begin
 00584524    push        ebp
 00584525    mov         ebp,esp
 00584527    add         esp,0FFFFFFF0
 0058452A    mov         dword ptr [ebp-4],eax
 0058452D    mov         eax,dword ptr [ebp-4]
 00584530    call        00583E58
 00584535    mov         eax,dword ptr [ebp-4]
 00584538    xor         edx,edx
 0058453A    mov         dword ptr [eax+2E8],edx
 00584540    mov         eax,dword ptr [ebp-4]
 00584543    cmp         byte ptr [eax+2EF],0
>0058454A    je          00584571
 0058454C    mov         eax,dword ptr [ebp-4]
 0058454F    cmp         byte ptr [eax+2ED],0
>00584556    je          00584565
 00584558    mov         eax,dword ptr [ebp-4]
 0058455B    mov         dword ptr [eax+2E8],1
 00584565    mov         eax,dword ptr [ebp-4]
 00584568    mov         byte ptr [eax+2EF],0
>0058456F    jmp         0058457E
 00584571    mov         eax,dword ptr [ebp-4]
 00584574    mov         dword ptr [eax+2E8],1
 0058457E    mov         eax,dword ptr [ebp-4]
 00584581    cmp         byte ptr [eax+2EE],0
>00584588    je          005845AA
 0058458A    mov         eax,dword ptr [ebp-4]
 0058458D    cmp         byte ptr [eax+2EC],0
>00584594    je          005845A0
 00584596    mov         eax,dword ptr [ebp-4]
 00584599    or          dword ptr [eax+2E8],2
 005845A0    mov         eax,dword ptr [ebp-4]
 005845A3    mov         byte ptr [eax+2EE],0
 005845AA    mov         eax,dword ptr [ebp-4]
 005845AD    cmp         byte ptr [eax+2F0],0
>005845B4    je          005845D6
 005845B6    mov         eax,dword ptr [ebp-4]
 005845B9    or          dword ptr [eax+2E8],4
 005845C0    mov         eax,dword ptr [ebp-4]
 005845C3    mov         eax,dword ptr [eax+2FC]
 005845C9    mov         dword ptr [ebp-0C],eax
 005845CC    mov         eax,dword ptr [ebp-4]
 005845CF    mov         byte ptr [eax+2F0],0
 005845D6    mov         eax,dword ptr [ebp-4]
 005845D9    cmp         byte ptr [eax+2F1],0
>005845E0    je          00584602
 005845E2    mov         eax,dword ptr [ebp-4]
 005845E5    or          dword ptr [eax+2E8],8
 005845EC    mov         eax,dword ptr [ebp-4]
 005845EF    mov         eax,dword ptr [eax+2F8]
 005845F5    mov         dword ptr [ebp-8],eax
 005845F8    mov         eax,dword ptr [ebp-4]
 005845FB    mov         byte ptr [eax+2F1],0
 00584602    mov         eax,dword ptr [ebp-4]
 00584605    call        TWinControl.GetHandle
 0058460A    mov         dword ptr [ebp-10],eax
 0058460D    lea         eax,[ebp-10]
 00584610    push        eax
 00584611    mov         eax,dword ptr [ebp-4]
 00584614    mov         eax,dword ptr [eax+2E8]
 0058461A    push        eax
 0058461B    push        80F
 00584620    mov         eax,dword ptr [ebp-4]
 00584623    movzx       eax,word ptr [eax+2F2]
 0058462A    push        eax
 0058462B    call        WINMM.mciSendCommandA
 00584630    mov         edx,dword ptr [ebp-4]
 00584633    mov         dword ptr [edx+304],eax
 00584639    mov         esp,ebp
 0058463B    pop         ebp
 0058463C    ret
end;*}

//00584640
{*procedure sub_00584640(?:?);
begin
 00584640    push        ebp
 00584641    mov         ebp,esp
 00584643    add         esp,0FFFFFFF8
 00584646    mov         dword ptr [ebp-4],eax
 00584649    mov         eax,dword ptr [ebp-4]
 0058464C    call        00583E58
 00584651    mov         eax,dword ptr [ebp-4]
 00584654    xor         edx,edx
 00584656    mov         dword ptr [eax+2E8],edx
 0058465C    mov         eax,dword ptr [ebp-4]
 0058465F    cmp         byte ptr [eax+2EE],0
>00584666    je          0058468D
 00584668    mov         eax,dword ptr [ebp-4]
 0058466B    cmp         byte ptr [eax+2EC],0
>00584672    je          00584681
 00584674    mov         eax,dword ptr [ebp-4]
 00584677    mov         dword ptr [eax+2E8],2
 00584681    mov         eax,dword ptr [ebp-4]
 00584684    mov         byte ptr [eax+2EE],0
>0058468B    jmp         0058469A
 0058468D    mov         eax,dword ptr [ebp-4]
 00584690    mov         dword ptr [eax+2E8],2
 0058469A    mov         eax,dword ptr [ebp-4]
 0058469D    cmp         byte ptr [eax+2EF],0
>005846A4    je          005846C6
 005846A6    mov         eax,dword ptr [ebp-4]
 005846A9    cmp         byte ptr [eax+2ED],0
>005846B0    je          005846BC
 005846B2    mov         eax,dword ptr [ebp-4]
 005846B5    or          dword ptr [eax+2E8],1
 005846BC    mov         eax,dword ptr [ebp-4]
 005846BF    mov         byte ptr [eax+2EF],0
 005846C6    mov         eax,dword ptr [ebp-4]
 005846C9    call        TWinControl.GetHandle
 005846CE    mov         dword ptr [ebp-8],eax
 005846D1    lea         eax,[ebp-8]
 005846D4    push        eax
 005846D5    mov         eax,dword ptr [ebp-4]
 005846D8    mov         eax,dword ptr [eax+2E8]
 005846DE    push        eax
 005846DF    push        808
 005846E4    mov         eax,dword ptr [ebp-4]
 005846E7    movzx       eax,word ptr [eax+2F2]
 005846EE    push        eax
 005846EF    call        WINMM.mciSendCommandA
 005846F4    mov         edx,dword ptr [ebp-4]
 005846F7    mov         dword ptr [edx+304],eax
 005846FD    pop         ecx
 005846FE    pop         ecx
 005846FF    pop         ebp
 00584700    ret
end;*}

//00584704
{*procedure sub_00584704(?:?);
begin
 00584704    push        ebp
 00584705    mov         ebp,esp
 00584707    push        ecx
 00584708    mov         dword ptr [ebp-4],eax
 0058470B    mov         eax,dword ptr [ebp-4]
 0058470E    cmp         byte ptr [eax+2E1],0
>00584715    jne         0058472E
 00584717    mov         ecx,dword ptr ds:[6E9FB8];^gvar_0063CD80
 0058471D    mov         dl,1
 0058471F    mov         eax,[00582408];EMCIDeviceError
 00584724    call        Exception.Create;EMCIDeviceError.Create
 00584729    call        @RaiseExcept
 0058472E    mov         eax,dword ptr [ebp-4]
 00584731    call        00585600
 00584736    cmp         al,2
>00584738    jne         00584745
 0058473A    mov         eax,dword ptr [ebp-4]
 0058473D    call        0058475C
 00584742    pop         ecx
 00584743    pop         ebp
 00584744    ret
 00584745    mov         eax,dword ptr [ebp-4]
 00584748    call        00585600
 0058474D    cmp         al,5
>0058474F    jne         00584759
 00584751    mov         eax,dword ptr [ebp-4]
 00584754    call        00584820
 00584759    pop         ecx
 0058475A    pop         ebp
 0058475B    ret
end;*}

//0058475C
{*procedure sub_0058475C(?:?);
begin
 0058475C    push        ebp
 0058475D    mov         ebp,esp
 0058475F    add         esp,0FFFFFFF8
 00584762    mov         dword ptr [ebp-4],eax
 00584765    mov         eax,dword ptr [ebp-4]
 00584768    call        00583E58
 0058476D    mov         eax,dword ptr [ebp-4]
 00584770    xor         edx,edx
 00584772    mov         dword ptr [eax+2E8],edx
 00584778    mov         eax,dword ptr [ebp-4]
 0058477B    cmp         byte ptr [eax+2EE],0
>00584782    je          005847A9
 00584784    mov         eax,dword ptr [ebp-4]
 00584787    cmp         byte ptr [eax+2EC],0
>0058478E    je          0058479D
 00584790    mov         eax,dword ptr [ebp-4]
 00584793    mov         dword ptr [eax+2E8],2
 0058479D    mov         eax,dword ptr [ebp-4]
 005847A0    mov         byte ptr [eax+2EE],0
>005847A7    jmp         005847B6
 005847A9    mov         eax,dword ptr [ebp-4]
 005847AC    mov         dword ptr [eax+2E8],2
 005847B6    mov         eax,dword ptr [ebp-4]
 005847B9    cmp         byte ptr [eax+2EF],0
>005847C0    je          005847E2
 005847C2    mov         eax,dword ptr [ebp-4]
 005847C5    cmp         byte ptr [eax+2ED],0
>005847CC    je          005847D8
 005847CE    mov         eax,dword ptr [ebp-4]
 005847D1    or          dword ptr [eax+2E8],1
 005847D8    mov         eax,dword ptr [ebp-4]
 005847DB    mov         byte ptr [eax+2EF],0
 005847E2    mov         eax,dword ptr [ebp-4]
 005847E5    call        TWinControl.GetHandle
 005847EA    mov         dword ptr [ebp-8],eax
 005847ED    lea         eax,[ebp-8]
 005847F0    push        eax
 005847F1    mov         eax,dword ptr [ebp-4]
 005847F4    mov         eax,dword ptr [eax+2E8]
 005847FA    push        eax
 005847FB    push        809
 00584800    mov         eax,dword ptr [ebp-4]
 00584803    movzx       eax,word ptr [eax+2F2]
 0058480A    push        eax
 0058480B    call        WINMM.mciSendCommandA
 00584810    mov         edx,dword ptr [ebp-4]
 00584813    mov         dword ptr [edx+304],eax
 00584819    pop         ecx
 0058481A    pop         ecx
 0058481B    pop         ebp
 0058481C    ret
end;*}

//00584820
{*procedure sub_00584820(?:?);
begin
 00584820    push        ebp
 00584821    mov         ebp,esp
 00584823    add         esp,0FFFFFFF8
 00584826    mov         dword ptr [ebp-4],eax
 00584829    mov         eax,dword ptr [ebp-4]
 0058482C    call        00583E58
 00584831    mov         eax,dword ptr [ebp-4]
 00584834    xor         edx,edx
 00584836    mov         dword ptr [eax+2E8],edx
 0058483C    mov         eax,dword ptr [ebp-4]
 0058483F    cmp         byte ptr [eax+2EF],0
>00584846    je          00584863
 00584848    mov         eax,dword ptr [ebp-4]
 0058484B    cmp         byte ptr [eax+2ED],0
>00584852    je          00584870
 00584854    mov         eax,dword ptr [ebp-4]
 00584857    mov         dword ptr [eax+2E8],1
>00584861    jmp         00584870
 00584863    mov         eax,dword ptr [ebp-4]
 00584866    mov         dword ptr [eax+2E8],1
 00584870    mov         eax,dword ptr [ebp-4]
 00584873    cmp         byte ptr [eax+2EE],0
>0058487A    je          00584892
 0058487C    mov         eax,dword ptr [ebp-4]
 0058487F    cmp         byte ptr [eax+2EC],0
>00584886    je          00584892
 00584888    mov         eax,dword ptr [ebp-4]
 0058488B    or          dword ptr [eax+2E8],2
 00584892    mov         eax,dword ptr [ebp-4]
 00584895    call        TWinControl.GetHandle
 0058489A    mov         dword ptr [ebp-8],eax
 0058489D    lea         eax,[ebp-8]
 005848A0    push        eax
 005848A1    mov         eax,dword ptr [ebp-4]
 005848A4    mov         eax,dword ptr [eax+2E8]
 005848AA    push        eax
 005848AB    push        855
 005848B0    mov         eax,dword ptr [ebp-4]
 005848B3    movzx       eax,word ptr [eax+2F2]
 005848BA    push        eax
 005848BB    call        WINMM.mciSendCommandA
 005848C0    mov         edx,dword ptr [ebp-4]
 005848C3    mov         dword ptr [edx+304],eax
 005848C9    mov         eax,dword ptr [ebp-4]
 005848CC    cmp         dword ptr [eax+304],0
>005848D3    je          005848DF
 005848D5    mov         eax,dword ptr [ebp-4]
 005848D8    call        005843C4
>005848DD    jmp         0058490B
 005848DF    mov         eax,dword ptr [ebp-4]
 005848E2    cmp         byte ptr [eax+2EF],0
>005848E9    je          005848F5
 005848EB    mov         eax,dword ptr [ebp-4]
 005848EE    mov         byte ptr [eax+2EF],0
 005848F5    mov         eax,dword ptr [ebp-4]
 005848F8    cmp         byte ptr [eax+2EE],0
>005848FF    je          0058490B
 00584901    mov         eax,dword ptr [ebp-4]
 00584904    mov         byte ptr [eax+2EE],0
 0058490B    pop         ecx
 0058490C    pop         ecx
 0058490D    pop         ebp
 0058490E    ret
end;*}

//00584910
{*procedure sub_00584910(?:?);
begin
 00584910    push        ebp
 00584911    mov         ebp,esp
 00584913    add         esp,0FFFFFFF0
 00584916    push        ebx
 00584917    mov         dword ptr [ebp-4],eax
 0058491A    mov         eax,dword ptr [ebp-4]
 0058491D    call        00583E58
 00584922    mov         eax,dword ptr [ebp-4]
 00584925    xor         edx,edx
 00584927    mov         dword ptr [eax+2E8],edx
 0058492D    mov         eax,dword ptr [ebp-4]
 00584930    cmp         byte ptr [eax+2EE],0
>00584937    je          0058495E
 00584939    mov         eax,dword ptr [ebp-4]
 0058493C    cmp         byte ptr [eax+2EC],0
>00584943    je          00584952
 00584945    mov         eax,dword ptr [ebp-4]
 00584948    mov         dword ptr [eax+2E8],2
 00584952    mov         eax,dword ptr [ebp-4]
 00584955    mov         byte ptr [eax+2EE],0
>0058495C    jmp         0058496B
 0058495E    mov         eax,dword ptr [ebp-4]
 00584961    mov         dword ptr [eax+2E8],2
 0058496B    mov         eax,dword ptr [ebp-4]
 0058496E    cmp         byte ptr [eax+2EF],0
>00584975    je          00584997
 00584977    mov         eax,dword ptr [ebp-4]
 0058497A    cmp         byte ptr [eax+2ED],0
>00584981    je          0058498D
 00584983    mov         eax,dword ptr [ebp-4]
 00584986    or          dword ptr [eax+2E8],1
 0058498D    mov         eax,dword ptr [ebp-4]
 00584990    mov         byte ptr [eax+2EF],0
 00584997    mov         eax,dword ptr [ebp-4]
 0058499A    mov         eax,dword ptr [eax+2E8]
 005849A0    mov         dword ptr [ebp-10],eax
 005849A3    mov         eax,dword ptr [ebp-4]
 005849A6    call        005856B0
 005849AB    cmp         al,0A
>005849AD    jne         00584A97
 005849B3    mov         eax,dword ptr [ebp-4]
 005849B6    call        00585600
 005849BB    cmp         al,2
>005849BD    jne         00584A35
 005849BF    mov         eax,dword ptr [ebp-4]
 005849C2    call        00585658
 005849C7    call        0063DC50
 005849CC    xor         ebx,ebx
 005849CE    mov         bl,al
 005849D0    mov         eax,dword ptr [ebp-4]
 005849D3    call        005855A0
 005849D8    cmp         ebx,eax
>005849DA    jne         005849FA
 005849DC    mov         eax,dword ptr [ebp-4]
 005849DF    call        005855A0
 005849E4    mov         edx,eax
 005849E6    mov         eax,dword ptr [ebp-4]
 005849E9    call        0058502C
 005849EE    mov         edx,eax
 005849F0    mov         eax,dword ptr [ebp-4]
 005849F3    call        00585084
>005849F8    jmp         00584A1E
 005849FA    mov         eax,dword ptr [ebp-4]
 005849FD    call        00585658
 00584A02    call        0063DC50
 00584A07    xor         edx,edx
 00584A09    mov         dl,al
 00584A0B    inc         edx
 00584A0C    mov         eax,dword ptr [ebp-4]
 00584A0F    call        0058502C
 00584A14    mov         edx,eax
 00584A16    mov         eax,dword ptr [ebp-4]
 00584A19    call        00585084
 00584A1E    mov         eax,dword ptr [ebp-4]
 00584A21    call        005843C4
 00584A26    mov         eax,dword ptr [ebp-4]
 00584A29    mov         byte ptr [eax+2AA],0
>00584A30    jmp         00584ADF
 00584A35    mov         eax,dword ptr [ebp-4]
 00584A38    call        00585658
 00584A3D    call        0063DC50
 00584A42    xor         ebx,ebx
 00584A44    mov         bl,al
 00584A46    mov         eax,dword ptr [ebp-4]
 00584A49    call        005855A0
 00584A4E    cmp         ebx,eax
>00584A50    jne         00584A69
 00584A52    mov         eax,dword ptr [ebp-4]
 00584A55    call        005855A0
 00584A5A    mov         edx,eax
 00584A5C    mov         eax,dword ptr [ebp-4]
 00584A5F    call        0058502C
 00584A64    mov         dword ptr [ebp-8],eax
>00584A67    jmp         00584A86
 00584A69    mov         eax,dword ptr [ebp-4]
 00584A6C    call        00585658
 00584A71    call        0063DC50
 00584A76    xor         edx,edx
 00584A78    mov         dl,al
 00584A7A    inc         edx
 00584A7B    mov         eax,dword ptr [ebp-4]
 00584A7E    call        0058502C
 00584A83    mov         dword ptr [ebp-8],eax
 00584A86    mov         eax,dword ptr [ebp-10]
 00584A89    or          eax,8
 00584A8C    mov         edx,dword ptr [ebp-4]
 00584A8F    mov         dword ptr [edx+2E8],eax
>00584A95    jmp         00584AA8
 00584A97    mov         eax,dword ptr [ebp-10]
 00584A9A    or          eax,200
 00584A9F    mov         edx,dword ptr [ebp-4]
 00584AA2    mov         dword ptr [edx+2E8],eax
 00584AA8    mov         eax,dword ptr [ebp-4]
 00584AAB    call        TWinControl.GetHandle
 00584AB0    mov         dword ptr [ebp-0C],eax
 00584AB3    lea         eax,[ebp-0C]
 00584AB6    push        eax
 00584AB7    mov         eax,dword ptr [ebp-4]
 00584ABA    mov         eax,dword ptr [eax+2E8]
 00584AC0    push        eax
 00584AC1    push        807
 00584AC6    mov         eax,dword ptr [ebp-4]
 00584AC9    movzx       eax,word ptr [eax+2F2]
 00584AD0    push        eax
 00584AD1    call        WINMM.mciSendCommandA
 00584AD6    mov         edx,dword ptr [ebp-4]
 00584AD9    mov         dword ptr [edx+304],eax
 00584ADF    pop         ebx
 00584AE0    mov         esp,ebp
 00584AE2    pop         ebp
 00584AE3    ret
end;*}

//00584AE4
{*procedure sub_00584AE4(?:?);
begin
 00584AE4    push        ebp
 00584AE5    mov         ebp,esp
 00584AE7    add         esp,0FFFFFFE8
 00584AEA    push        ebx
 00584AEB    mov         dword ptr [ebp-4],eax
 00584AEE    mov         eax,dword ptr [ebp-4]
 00584AF1    call        00583E58
 00584AF6    mov         eax,dword ptr [ebp-4]
 00584AF9    xor         edx,edx
 00584AFB    mov         dword ptr [eax+2E8],edx
 00584B01    mov         eax,dword ptr [ebp-4]
 00584B04    cmp         byte ptr [eax+2EE],0
>00584B0B    je          00584B32
 00584B0D    mov         eax,dword ptr [ebp-4]
 00584B10    cmp         byte ptr [eax+2EC],0
>00584B17    je          00584B26
 00584B19    mov         eax,dword ptr [ebp-4]
 00584B1C    mov         dword ptr [eax+2E8],2
 00584B26    mov         eax,dword ptr [ebp-4]
 00584B29    mov         byte ptr [eax+2EE],0
>00584B30    jmp         00584B3F
 00584B32    mov         eax,dword ptr [ebp-4]
 00584B35    mov         dword ptr [eax+2E8],2
 00584B3F    mov         eax,dword ptr [ebp-4]
 00584B42    cmp         byte ptr [eax+2EF],0
>00584B49    je          00584B6B
 00584B4B    mov         eax,dword ptr [ebp-4]
 00584B4E    cmp         byte ptr [eax+2ED],0
>00584B55    je          00584B61
 00584B57    mov         eax,dword ptr [ebp-4]
 00584B5A    or          dword ptr [eax+2E8],1
 00584B61    mov         eax,dword ptr [ebp-4]
 00584B64    mov         byte ptr [eax+2EF],0
 00584B6B    mov         eax,dword ptr [ebp-4]
 00584B6E    mov         eax,dword ptr [eax+2E8]
 00584B74    mov         dword ptr [ebp-18],eax
 00584B77    mov         eax,dword ptr [ebp-4]
 00584B7A    call        005856B0
 00584B7F    cmp         al,0A
>00584B81    jne         00584CAC
 00584B87    mov         eax,dword ptr [ebp-4]
 00584B8A    call        00585658
 00584B8F    mov         dword ptr [ebp-14],eax
 00584B92    mov         eax,dword ptr [ebp-4]
 00584B95    call        00585658
 00584B9A    call        0063DC50
 00584B9F    xor         edx,edx
 00584BA1    mov         dl,al
 00584BA3    mov         eax,dword ptr [ebp-4]
 00584BA6    call        0058502C
 00584BAB    mov         dword ptr [ebp-10],eax
 00584BAE    mov         eax,dword ptr [ebp-4]
 00584BB1    call        00585600
 00584BB6    cmp         al,2
>00584BB8    jne         00584C3E
 00584BBE    mov         eax,dword ptr [ebp-14]
 00584BC1    call        0063DC50
 00584BC6    cmp         al,1
>00584BC8    je          00584C1C
 00584BCA    mov         eax,dword ptr [ebp-14]
 00584BCD    call        0063DC68
 00584BD2    mov         ebx,eax
 00584BD4    mov         eax,dword ptr [ebp-10]
 00584BD7    call        0063DC68
 00584BDC    cmp         bl,al
>00584BDE    jne         00584C1C
 00584BE0    mov         eax,dword ptr [ebp-14]
 00584BE3    call        0063DC84
 00584BE8    mov         ebx,eax
 00584BEA    mov         eax,dword ptr [ebp-10]
 00584BED    call        0063DC84
 00584BF2    cmp         bl,al
>00584BF4    jne         00584C1C
 00584BF6    mov         eax,dword ptr [ebp-4]
 00584BF9    call        00585658
 00584BFE    call        0063DC50
 00584C03    xor         edx,edx
 00584C05    mov         dl,al
 00584C07    dec         edx
 00584C08    mov         eax,dword ptr [ebp-4]
 00584C0B    call        0058502C
 00584C10    mov         edx,eax
 00584C12    mov         eax,dword ptr [ebp-4]
 00584C15    call        00585084
>00584C1A    jmp         00584C27
 00584C1C    mov         edx,dword ptr [ebp-10]
 00584C1F    mov         eax,dword ptr [ebp-4]
 00584C22    call        00585084
 00584C27    mov         eax,dword ptr [ebp-4]
 00584C2A    call        005843C4
 00584C2F    mov         eax,dword ptr [ebp-4]
 00584C32    mov         byte ptr [eax+2AA],0
>00584C39    jmp         00584CF4
 00584C3E    mov         eax,dword ptr [ebp-14]
 00584C41    call        0063DC50
 00584C46    cmp         al,1
>00584C48    je          00584C95
 00584C4A    mov         eax,dword ptr [ebp-14]
 00584C4D    call        0063DC68
 00584C52    mov         ebx,eax
 00584C54    mov         eax,dword ptr [ebp-10]
 00584C57    call        0063DC68
 00584C5C    cmp         bl,al
>00584C5E    jne         00584C95
 00584C60    mov         eax,dword ptr [ebp-14]
 00584C63    call        0063DC84
 00584C68    mov         ebx,eax
 00584C6A    mov         eax,dword ptr [ebp-10]
 00584C6D    call        0063DC84
 00584C72    cmp         bl,al
>00584C74    jne         00584C95
 00584C76    mov         eax,dword ptr [ebp-4]
 00584C79    call        00585658
 00584C7E    call        0063DC50
 00584C83    xor         edx,edx
 00584C85    mov         dl,al
 00584C87    dec         edx
 00584C88    mov         eax,dword ptr [ebp-4]
 00584C8B    call        0058502C
 00584C90    mov         dword ptr [ebp-8],eax
>00584C93    jmp         00584C9B
 00584C95    mov         eax,dword ptr [ebp-10]
 00584C98    mov         dword ptr [ebp-8],eax
 00584C9B    mov         eax,dword ptr [ebp-18]
 00584C9E    or          eax,8
 00584CA1    mov         edx,dword ptr [ebp-4]
 00584CA4    mov         dword ptr [edx+2E8],eax
>00584CAA    jmp         00584CBD
 00584CAC    mov         eax,dword ptr [ebp-18]
 00584CAF    or          eax,100
 00584CB4    mov         edx,dword ptr [ebp-4]
 00584CB7    mov         dword ptr [edx+2E8],eax
 00584CBD    mov         eax,dword ptr [ebp-4]
 00584CC0    call        TWinControl.GetHandle
 00584CC5    mov         dword ptr [ebp-0C],eax
 00584CC8    lea         eax,[ebp-0C]
 00584CCB    push        eax
 00584CCC    mov         eax,dword ptr [ebp-4]
 00584CCF    mov         eax,dword ptr [eax+2E8]
 00584CD5    push        eax
 00584CD6    push        807
 00584CDB    mov         eax,dword ptr [ebp-4]
 00584CDE    movzx       eax,word ptr [eax+2F2]
 00584CE5    push        eax
 00584CE6    call        WINMM.mciSendCommandA
 00584CEB    mov         edx,dword ptr [ebp-4]
 00584CEE    mov         dword ptr [edx+304],eax
 00584CF4    pop         ebx
 00584CF5    mov         esp,ebp
 00584CF7    pop         ebp
 00584CF8    ret
end;*}

//00584CFC
{*procedure sub_00584CFC(?:?);
begin
 00584CFC    push        ebp
 00584CFD    mov         ebp,esp
 00584CFF    add         esp,0FFFFFFF4
 00584D02    push        ebx
 00584D03    mov         dword ptr [ebp-4],eax
 00584D06    mov         eax,dword ptr [ebp-4]
 00584D09    call        00583E58
 00584D0E    mov         eax,dword ptr [ebp-4]
 00584D11    cmp         byte ptr [eax+2E7],0
>00584D18    je          00584E0D
 00584D1E    mov         eax,dword ptr [ebp-4]
 00584D21    cmp         byte ptr [eax+31E],0
>00584D28    je          00584D48
 00584D2A    mov         eax,dword ptr [ebp-4]
 00584D2D    call        00585658
 00584D32    mov         ebx,eax
 00584D34    mov         eax,dword ptr [ebp-4]
 00584D37    call        00585540
 00584D3C    cmp         ebx,eax
>00584D3E    jne         00584D48
 00584D40    mov         eax,dword ptr [ebp-4]
 00584D43    call        00584FF0
 00584D48    mov         eax,dword ptr [ebp-4]
 00584D4B    xor         edx,edx
 00584D4D    mov         dword ptr [eax+2E8],edx
 00584D53    mov         eax,dword ptr [ebp-4]
 00584D56    cmp         byte ptr [eax+2EE],0
>00584D5D    je          00584D84
 00584D5F    mov         eax,dword ptr [ebp-4]
 00584D62    cmp         byte ptr [eax+2EC],0
>00584D69    je          00584D78
 00584D6B    mov         eax,dword ptr [ebp-4]
 00584D6E    mov         dword ptr [eax+2E8],2
 00584D78    mov         eax,dword ptr [ebp-4]
 00584D7B    mov         byte ptr [eax+2EE],0
>00584D82    jmp         00584D91
 00584D84    mov         eax,dword ptr [ebp-4]
 00584D87    mov         dword ptr [eax+2E8],2
 00584D91    mov         eax,dword ptr [ebp-4]
 00584D94    cmp         byte ptr [eax+2EF],0
>00584D9B    je          00584DBD
 00584D9D    mov         eax,dword ptr [ebp-4]
 00584DA0    cmp         byte ptr [eax+2ED],0
>00584DA7    je          00584DB3
 00584DA9    mov         eax,dword ptr [ebp-4]
 00584DAC    or          dword ptr [eax+2E8],1
 00584DB3    mov         eax,dword ptr [ebp-4]
 00584DB6    mov         byte ptr [eax+2EF],0
 00584DBD    mov         eax,dword ptr [ebp-4]
 00584DC0    or          dword ptr [eax+2E8],20000
 00584DCA    mov         eax,dword ptr [ebp-4]
 00584DCD    mov         eax,dword ptr [eax+300]
 00584DD3    mov         dword ptr [ebp-8],eax
 00584DD6    mov         eax,dword ptr [ebp-4]
 00584DD9    call        TWinControl.GetHandle
 00584DDE    mov         dword ptr [ebp-0C],eax
 00584DE1    lea         eax,[ebp-0C]
 00584DE4    push        eax
 00584DE5    mov         eax,dword ptr [ebp-4]
 00584DE8    mov         eax,dword ptr [eax+2E8]
 00584DEE    push        eax
 00584DEF    push        80E
 00584DF4    mov         eax,dword ptr [ebp-4]
 00584DF7    movzx       eax,word ptr [eax+2F2]
 00584DFE    push        eax
 00584DFF    call        WINMM.mciSendCommandA
 00584E04    mov         edx,dword ptr [ebp-4]
 00584E07    mov         dword ptr [edx+304],eax
 00584E0D    pop         ebx
 00584E0E    mov         esp,ebp
 00584E10    pop         ebp
 00584E11    ret
end;*}

//00584E14
{*procedure sub_00584E14(?:?);
begin
 00584E14    push        ebp
 00584E15    mov         ebp,esp
 00584E17    add         esp,0FFFFFFF4
 00584E1A    mov         dword ptr [ebp-4],eax
 00584E1D    mov         eax,dword ptr [ebp-4]
 00584E20    call        00583E58
 00584E25    mov         eax,dword ptr [ebp-4]
 00584E28    cmp         byte ptr [eax+2E7],0
>00584E2F    je          00584F09
 00584E35    mov         eax,dword ptr [ebp-4]
 00584E38    xor         edx,edx
 00584E3A    mov         dword ptr [eax+2E8],edx
 00584E40    mov         eax,dword ptr [ebp-4]
 00584E43    cmp         byte ptr [eax+2EE],0
>00584E4A    je          00584E71
 00584E4C    mov         eax,dword ptr [ebp-4]
 00584E4F    cmp         byte ptr [eax+2EC],0
>00584E56    je          00584E65
 00584E58    mov         eax,dword ptr [ebp-4]
 00584E5B    mov         dword ptr [eax+2E8],2
 00584E65    mov         eax,dword ptr [ebp-4]
 00584E68    mov         byte ptr [eax+2EE],0
>00584E6F    jmp         00584E7E
 00584E71    mov         eax,dword ptr [ebp-4]
 00584E74    mov         dword ptr [eax+2E8],2
 00584E7E    mov         eax,dword ptr [ebp-4]
 00584E81    cmp         byte ptr [eax+2EF],0
>00584E88    je          00584EAA
 00584E8A    mov         eax,dword ptr [ebp-4]
 00584E8D    cmp         byte ptr [eax+2ED],0
>00584E94    je          00584EA0
 00584E96    mov         eax,dword ptr [ebp-4]
 00584E99    or          dword ptr [eax+2E8],1
 00584EA0    mov         eax,dword ptr [ebp-4]
 00584EA3    mov         byte ptr [eax+2EF],0
 00584EAA    mov         eax,dword ptr [ebp-4]
 00584EAD    mov         eax,dword ptr [eax+2E8]
 00584EB3    or          eax,20000
 00584EB8    or          eax,10000
 00584EBD    mov         edx,dword ptr [ebp-4]
 00584EC0    mov         dword ptr [edx+2E8],eax
 00584EC6    mov         eax,dword ptr [ebp-4]
 00584EC9    mov         eax,dword ptr [eax+300]
 00584ECF    mov         dword ptr [ebp-8],eax
 00584ED2    mov         eax,dword ptr [ebp-4]
 00584ED5    call        TWinControl.GetHandle
 00584EDA    mov         dword ptr [ebp-0C],eax
 00584EDD    lea         eax,[ebp-0C]
 00584EE0    push        eax
 00584EE1    mov         eax,dword ptr [ebp-4]
 00584EE4    mov         eax,dword ptr [eax+2E8]
 00584EEA    push        eax
 00584EEB    push        80E
 00584EF0    mov         eax,dword ptr [ebp-4]
 00584EF3    movzx       eax,word ptr [eax+2F2]
 00584EFA    push        eax
 00584EFB    call        WINMM.mciSendCommandA
 00584F00    mov         edx,dword ptr [ebp-4]
 00584F03    mov         dword ptr [edx+304],eax
 00584F09    mov         esp,ebp
 00584F0B    pop         ebp
 00584F0C    ret
end;*}

//00584F10
{*procedure sub_00584F10(?:?);
begin
 00584F10    push        ebp
 00584F11    mov         ebp,esp
 00584F13    add         esp,0FFFFFFF0
 00584F16    mov         dword ptr [ebp-4],eax
 00584F19    mov         eax,dword ptr [ebp-4]
 00584F1C    call        00583E58
 00584F21    mov         eax,dword ptr [ebp-4]
 00584F24    cmp         byte ptr [eax+2E5],0
>00584F2B    je          00584FEA
 00584F31    mov         eax,dword ptr [ebp-4]
 00584F34    xor         edx,edx
 00584F36    mov         dword ptr [eax+2E8],edx
 00584F3C    mov         eax,dword ptr [ebp-4]
 00584F3F    cmp         byte ptr [eax+2EE],0
>00584F46    je          00584F6D
 00584F48    mov         eax,dword ptr [ebp-4]
 00584F4B    cmp         byte ptr [eax+2EC],0
>00584F52    je          00584F61
 00584F54    mov         eax,dword ptr [ebp-4]
 00584F57    mov         dword ptr [eax+2E8],2
 00584F61    mov         eax,dword ptr [ebp-4]
 00584F64    mov         byte ptr [eax+2EE],0
>00584F6B    jmp         00584F7A
 00584F6D    mov         eax,dword ptr [ebp-4]
 00584F70    mov         dword ptr [eax+2E8],2
 00584F7A    mov         eax,dword ptr [ebp-4]
 00584F7D    cmp         byte ptr [eax+2EF],0
>00584F84    je          00584FA6
 00584F86    mov         eax,dword ptr [ebp-4]
 00584F89    cmp         byte ptr [eax+2ED],0
>00584F90    je          00584F9C
 00584F92    mov         eax,dword ptr [ebp-4]
 00584F95    or          dword ptr [eax+2E8],1
 00584F9C    mov         eax,dword ptr [ebp-4]
 00584F9F    mov         byte ptr [eax+2EF],0
 00584FA6    mov         eax,dword ptr [ebp-4]
 00584FA9    or          dword ptr [eax+2E8],100
 00584FB3    mov         eax,dword ptr [ebp-4]
 00584FB6    call        TWinControl.GetHandle
 00584FBB    mov         dword ptr [ebp-10],eax
 00584FBE    lea         eax,[ebp-10]
 00584FC1    push        eax
 00584FC2    mov         eax,dword ptr [ebp-4]
 00584FC5    mov         eax,dword ptr [eax+2E8]
 00584FCB    push        eax
 00584FCC    push        80D
 00584FD1    mov         eax,dword ptr [ebp-4]
 00584FD4    movzx       eax,word ptr [eax+2F2]
 00584FDB    push        eax
 00584FDC    call        WINMM.mciSendCommandA
 00584FE1    mov         edx,dword ptr [ebp-4]
 00584FE4    mov         dword ptr [edx+304],eax
 00584FEA    mov         esp,ebp
 00584FEC    pop         ebp
 00584FED    ret
end;*}

//00584FF0
{*procedure sub_00584FF0(?:?);
begin
 00584FF0    push        ebp
 00584FF1    mov         ebp,esp
 00584FF3    add         esp,0FFFFFFF0
 00584FF6    mov         dword ptr [ebp-4],eax
 00584FF9    mov         eax,dword ptr [ebp-4]
 00584FFC    call        00583E58
 00585001    mov         dword ptr [ebp-10],102
 00585008    lea         eax,[ebp-0C]
 0058500B    push        eax
 0058500C    mov         eax,dword ptr [ebp-10]
 0058500F    push        eax
 00585010    push        807
 00585015    mov         eax,dword ptr [ebp-4]
 00585018    movzx       eax,word ptr [eax+2F2]
 0058501F    push        eax
 00585020    call        WINMM.mciSendCommandA
 00585025    mov         esp,ebp
 00585027    pop         ebp
 00585028    ret
end;*}

//0058502C
{*function sub_0058502C(?:?; ?:?):?;
begin
 0058502C    push        ebp
 0058502D    mov         ebp,esp
 0058502F    add         esp,0FFFFFFE4
 00585032    mov         dword ptr [ebp-8],edx
 00585035    mov         dword ptr [ebp-4],eax
 00585038    mov         eax,dword ptr [ebp-4]
 0058503B    mov         dword ptr [eax+2E8],112
 00585045    mov         dword ptr [ebp-14],2
 0058504C    mov         eax,dword ptr [ebp-8]
 0058504F    mov         dword ptr [ebp-10],eax
 00585052    lea         eax,[ebp-1C]
 00585055    push        eax
 00585056    mov         eax,dword ptr [ebp-4]
 00585059    mov         eax,dword ptr [eax+2E8]
 0058505F    push        eax
 00585060    push        814
 00585065    mov         eax,dword ptr [ebp-4]
 00585068    movzx       eax,word ptr [eax+2F2]
 0058506F    push        eax
 00585070    call        WINMM.mciSendCommandA
 00585075    mov         eax,dword ptr [ebp-18]
 00585078    mov         dword ptr [ebp-0C],eax
 0058507B    mov         eax,dword ptr [ebp-0C]
 0058507E    mov         esp,ebp
 00585080    pop         ebp
 00585081    ret
end;*}

//00585084
{*procedure sub_00585084(?:?; ?:?);
begin
 00585084    push        ebp
 00585085    mov         ebp,esp
 00585087    add         esp,0FFFFFFF8
 0058508A    mov         dword ptr [ebp-8],edx
 0058508D    mov         dword ptr [ebp-4],eax
 00585090    mov         eax,dword ptr [ebp-8]
 00585093    mov         edx,dword ptr [ebp-4]
 00585096    cmp         eax,dword ptr [edx+2FC]
>0058509C    je          005850AA
 0058509E    mov         eax,dword ptr [ebp-8]
 005850A1    mov         edx,dword ptr [ebp-4]
 005850A4    mov         dword ptr [edx+2FC],eax
 005850AA    mov         eax,dword ptr [ebp-4]
 005850AD    mov         byte ptr [eax+2F0],1
 005850B4    pop         ecx
 005850B5    pop         ecx
 005850B6    pop         ebp
 005850B7    ret
end;*}

//005850B8
procedure TMediaPlayer.SetDeviceType(Value:TMPDeviceTypes);
begin
{*
 005850B8    push        ebp
 005850B9    mov         ebp,esp
 005850BB    add         esp,0FFFFFFF8
 005850BE    mov         byte ptr [ebp-5],dl
 005850C1    mov         dword ptr [ebp-4],eax
 005850C4    mov         al,byte ptr [ebp-5]
 005850C7    mov         edx,dword ptr [ebp-4]
 005850CA    cmp         al,byte ptr [edx+2F4];TMediaPlayer.DeviceType:TMPDeviceTypes
>005850D0    je          005850DE
 005850D2    mov         al,byte ptr [ebp-5]
 005850D5    mov         edx,dword ptr [ebp-4]
 005850D8    mov         byte ptr [edx+2F4],al;TMediaPlayer.DeviceType:TMPDeviceTypes
 005850DE    pop         ecx
 005850DF    pop         ecx
 005850E0    pop         ebp
 005850E1    ret
*}
end;

//005850E4
{*procedure sub_005850E4(?:TMediaPlayer; ?:?);
begin
 005850E4    push        ebp
 005850E5    mov         ebp,esp
 005850E7    add         esp,0FFFFFFEC
 005850EA    mov         byte ptr [ebp-5],dl
 005850ED    mov         dword ptr [ebp-4],eax
 005850F0    mov         eax,dword ptr [ebp-4]
 005850F3    mov         dword ptr [eax+2E8],401;TMediaPlayer.FFlags:Longint
 005850FD    xor         eax,eax
 005850FF    mov         al,byte ptr [ebp-5]
 00585102    mov         dword ptr [ebp-10],eax
 00585105    lea         eax,[ebp-14]
 00585108    push        eax
 00585109    mov         eax,dword ptr [ebp-4]
 0058510C    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 00585112    push        eax
 00585113    push        80D
 00585118    mov         eax,dword ptr [ebp-4]
 0058511B    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 00585122    push        eax
 00585123    call        WINMM.mciSendCommandA
 00585128    mov         edx,dword ptr [ebp-4]
 0058512B    mov         dword ptr [edx+304],eax;TMediaPlayer.FError:Longint
 00585131    mov         esp,ebp
 00585133    pop         ebp
 00585134    ret
end;*}

//00585138
procedure TMediaPlayer.SetDisplay(Value:TWinControl);
begin
{*
 00585138    push        ebp
 00585139    mov         ebp,esp
 0058513B    add         esp,0FFFFFFE8
 0058513E    mov         dword ptr [ebp-8],edx
 00585141    mov         dword ptr [ebp-4],eax
 00585144    cmp         dword ptr [ebp-8],0
>00585148    je          005851E0
 0058514E    mov         eax,dword ptr [ebp-4]
 00585151    cmp         byte ptr [eax+2E1],0;TMediaPlayer.MCIOpened:Boolean
>00585158    je          005851E0
 0058515E    mov         eax,dword ptr [ebp-4]
 00585161    cmp         byte ptr [eax+2E7],0;TMediaPlayer.FHasVideo:Boolean
>00585168    je          005851E0
 0058516A    mov         eax,dword ptr [ebp-4]
 0058516D    mov         dword ptr [eax+2E8],10002;TMediaPlayer.FFlags:Longint
 00585177    mov         eax,dword ptr [ebp-8]
 0058517A    call        TWinControl.GetHandle
 0058517F    mov         dword ptr [ebp-14],eax
 00585182    lea         eax,[ebp-18]
 00585185    push        eax
 00585186    mov         eax,dword ptr [ebp-4]
 00585189    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 0058518F    push        eax
 00585190    push        841
 00585195    mov         eax,dword ptr [ebp-4]
 00585198    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 0058519F    push        eax
 005851A0    call        WINMM.mciSendCommandA
 005851A5    mov         edx,dword ptr [ebp-4]
 005851A8    mov         dword ptr [edx+304],eax;TMediaPlayer.FError:Longint
 005851AE    mov         eax,dword ptr [ebp-4]
 005851B1    cmp         dword ptr [eax+304],0;TMediaPlayer.FError:Longint
>005851B8    je          005851C7
 005851BA    mov         eax,dword ptr [ebp-4]
 005851BD    xor         edx,edx
 005851BF    mov         dword ptr [eax+30C],edx;TMediaPlayer.Display:TWinControl
>005851C5    jmp         005851EC
 005851C7    mov         eax,dword ptr [ebp-8]
 005851CA    mov         edx,dword ptr [ebp-4]
 005851CD    mov         dword ptr [edx+30C],eax;TMediaPlayer.Display:TWinControl
 005851D3    mov         edx,dword ptr [ebp-4]
 005851D6    mov         eax,dword ptr [ebp-8]
 005851D9    call        TComponent.FreeNotification
>005851DE    jmp         005851EC
 005851E0    mov         eax,dword ptr [ebp-8]
 005851E3    mov         edx,dword ptr [ebp-4]
 005851E6    mov         dword ptr [edx+30C],eax;TMediaPlayer.Display:TWinControl
 005851EC    mov         esp,ebp
 005851EE    pop         ebp
 005851EF    ret
*}
end;

//005851F0
procedure TMediaPlayer.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005851F0    push        ebp
 005851F1    mov         ebp,esp
 005851F3    add         esp,0FFFFFFF4
 005851F6    mov         byte ptr [ebp-9],cl
 005851F9    mov         dword ptr [ebp-8],edx
 005851FC    mov         dword ptr [ebp-4],eax
 005851FF    mov         cl,byte ptr [ebp-9]
 00585202    mov         edx,dword ptr [ebp-8]
 00585205    mov         eax,dword ptr [ebp-4]
 00585208    call        TControl.Notification
 0058520D    cmp         byte ptr [ebp-9],1
>00585211    jne         00585240
 00585213    mov         eax,dword ptr [ebp-8]
 00585216    mov         edx,dword ptr [ebp-4]
 00585219    cmp         eax,dword ptr [edx+30C];TMediaPlayer.Display:TWinControl
>0058521F    jne         00585240
 00585221    mov         eax,dword ptr [ebp-4]
 00585224    cmp         byte ptr [eax+2E1],0;TMediaPlayer.MCIOpened:Boolean
>0058522B    je          00585235
 0058522D    mov         eax,dword ptr [ebp-4]
 00585230    call        00585244
 00585235    mov         eax,dword ptr [ebp-4]
 00585238    xor         edx,edx
 0058523A    mov         dword ptr [eax+30C],edx;TMediaPlayer.Display:TWinControl
 00585240    mov         esp,ebp
 00585242    pop         ebp
 00585243    ret
*}
end;

//00585244
procedure sub_00585244(?:TMediaPlayer);
begin
{*
 00585244    push        ebp
 00585245    mov         ebp,esp
 00585247    add         esp,0FFFFFFEC
 0058524A    mov         dword ptr [ebp-4],eax
 0058524D    mov         eax,dword ptr [ebp-4]
 00585250    cmp         byte ptr [eax+2E1],0;TMediaPlayer.MCIOpened:Boolean
>00585257    je          005852A3
 00585259    mov         eax,dword ptr [ebp-4]
 0058525C    cmp         byte ptr [eax+2E7],0;TMediaPlayer.FHasVideo:Boolean
>00585263    je          005852A3
 00585265    mov         eax,dword ptr [ebp-4]
 00585268    mov         dword ptr [eax+2E8],10002;TMediaPlayer.FFlags:Longint
 00585272    xor         eax,eax
 00585274    mov         dword ptr [ebp-10],eax
 00585277    lea         eax,[ebp-14]
 0058527A    push        eax
 0058527B    mov         eax,dword ptr [ebp-4]
 0058527E    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 00585284    push        eax
 00585285    push        841
 0058528A    mov         eax,dword ptr [ebp-4]
 0058528D    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 00585294    push        eax
 00585295    call        WINMM.mciSendCommandA
 0058529A    mov         edx,dword ptr [ebp-4]
 0058529D    mov         dword ptr [edx+304],eax;TMediaPlayer.FError:Longint
 005852A3    mov         esp,ebp
 005852A5    pop         ebp
 005852A6    ret
*}
end;

//005852A8
{*procedure sub_005852A8(?:TMediaPlayer; ?:?);
begin
 005852A8    push        ebp
 005852A9    mov         ebp,esp
 005852AB    add         esp,0FFFFFFE4
 005852AE    push        esi
 005852AF    push        edi
 005852B0    mov         dword ptr [ebp-8],edx
 005852B3    mov         dword ptr [ebp-4],eax
 005852B6    mov         eax,dword ptr [ebp-4]
 005852B9    cmp         byte ptr [eax+2E1],0;TMediaPlayer.MCIOpened:Boolean
>005852C0    je          00585313
 005852C2    mov         eax,dword ptr [ebp-4]
 005852C5    cmp         byte ptr [eax+2E7],0;TMediaPlayer.FHasVideo:Boolean
>005852CC    je          00585313
 005852CE    mov         eax,dword ptr [ebp-4]
 005852D1    mov         dword ptr [eax+2E8],40000;TMediaPlayer.FFlags:Longint
 005852DB    lea         eax,[ebp-1C]
 005852DE    push        eax
 005852DF    mov         eax,dword ptr [ebp-4]
 005852E2    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 005852E8    push        eax
 005852E9    push        843
 005852EE    mov         eax,dword ptr [ebp-4]
 005852F1    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 005852F8    push        eax
 005852F9    call        WINMM.mciSendCommandA
 005852FE    mov         edx,dword ptr [ebp-4]
 00585301    mov         dword ptr [edx+304],eax;TMediaPlayer.FError:Longint
 00585307    mov         eax,dword ptr [ebp-8]
 0058530A    mov         edi,eax
 0058530C    lea         esi,[ebp-18]
 0058530F    movs        dword ptr [edi],dword ptr [esi]
 00585310    movs        dword ptr [edi],dword ptr [esi]
 00585311    movs        dword ptr [edi],dword ptr [esi]
 00585312    movs        dword ptr [edi],dword ptr [esi]
 00585313    pop         edi
 00585314    pop         esi
 00585315    mov         esp,ebp
 00585317    pop         ebp
 00585318    ret
end;*}

//0058531C
procedure sub_0058531C(?:TMediaPlayer);
begin
{*
 0058531C    push        ebp
 0058531D    mov         ebp,esp
 0058531F    add         esp,0FFFFFFC8
 00585322    push        esi
 00585323    push        edi
 00585324    mov         dword ptr [ebp-4],eax
 00585327    mov         eax,dword ptr [ebp-4]
 0058532A    mov         dword ptr [eax+2E8],102;TMediaPlayer.FFlags:Longint
 00585334    mov         dword ptr [ebp-0C],8
 0058533B    lea         eax,[ebp-14]
 0058533E    push        eax
 0058533F    mov         eax,dword ptr [ebp-4]
 00585342    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 00585348    push        eax
 00585349    push        80B
 0058534E    mov         eax,dword ptr [ebp-4]
 00585351    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 00585358    push        eax
 00585359    call        WINMM.mciSendCommandA
 0058535E    mov         eax,dword ptr [ebp-10]
 00585361    mov         edx,dword ptr [ebp-4]
 00585364    mov         byte ptr [edx+2E3],al;TMediaPlayer.FCanPlay:Boolean
 0058536A    mov         eax,dword ptr [ebp-4]
 0058536D    cmp         byte ptr [eax+2E3],0;TMediaPlayer.FCanPlay:Boolean
>00585374    je          00585380
 00585376    mov         eax,dword ptr [ebp-4]
 00585379    or          byte ptr [eax+2E2],4;TMediaPlayer.FCapabilities:TMPDevCapsSet
 00585380    mov         dword ptr [ebp-0C],1
 00585387    lea         eax,[ebp-14]
 0058538A    push        eax
 0058538B    mov         eax,dword ptr [ebp-4]
 0058538E    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 00585394    push        eax
 00585395    push        80B
 0058539A    mov         eax,dword ptr [ebp-4]
 0058539D    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 005853A4    push        eax
 005853A5    call        WINMM.mciSendCommandA
 005853AA    mov         eax,dword ptr [ebp-10]
 005853AD    mov         edx,dword ptr [ebp-4]
 005853B0    mov         byte ptr [edx+2E6],al;TMediaPlayer.FCanRecord:Boolean
 005853B6    mov         eax,dword ptr [ebp-4]
 005853B9    cmp         byte ptr [eax+2E6],0;TMediaPlayer.FCanRecord:Boolean
>005853C0    je          005853CC
 005853C2    mov         eax,dword ptr [ebp-4]
 005853C5    or          byte ptr [eax+2E2],8;TMediaPlayer.FCapabilities:TMPDevCapsSet
 005853CC    mov         dword ptr [ebp-0C],7
 005853D3    lea         eax,[ebp-14]
 005853D6    push        eax
 005853D7    mov         eax,dword ptr [ebp-4]
 005853DA    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 005853E0    push        eax
 005853E1    push        80B
 005853E6    mov         eax,dword ptr [ebp-4]
 005853E9    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 005853F0    push        eax
 005853F1    call        WINMM.mciSendCommandA
 005853F6    mov         eax,dword ptr [ebp-10]
 005853F9    mov         edx,dword ptr [ebp-4]
 005853FC    mov         byte ptr [edx+2E5],al;TMediaPlayer.FCanEject:Boolean
 00585402    mov         eax,dword ptr [ebp-4]
 00585405    cmp         byte ptr [eax+2E5],0;TMediaPlayer.FCanEject:Boolean
>0058540C    je          00585418
 0058540E    mov         eax,dword ptr [ebp-4]
 00585411    or          byte ptr [eax+2E2],2;TMediaPlayer.FCapabilities:TMPDevCapsSet
 00585418    mov         dword ptr [ebp-0C],3
 0058541F    lea         eax,[ebp-14]
 00585422    push        eax
 00585423    mov         eax,dword ptr [ebp-4]
 00585426    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 0058542C    push        eax
 0058542D    push        80B
 00585432    mov         eax,dword ptr [ebp-4]
 00585435    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 0058543C    push        eax
 0058543D    call        WINMM.mciSendCommandA
 00585442    mov         eax,dword ptr [ebp-10]
 00585445    mov         edx,dword ptr [ebp-4]
 00585448    mov         byte ptr [edx+2E7],al;TMediaPlayer.FHasVideo:Boolean
 0058544E    mov         eax,dword ptr [ebp-4]
 00585451    cmp         byte ptr [eax+2E7],0;TMediaPlayer.FHasVideo:Boolean
>00585458    je          00585464
 0058545A    mov         eax,dword ptr [ebp-4]
 0058545D    or          byte ptr [eax+2E2],10;TMediaPlayer.FCapabilities:TMPDevCapsSet
 00585464    mov         dword ptr [ebp-0C],4
 0058546B    lea         eax,[ebp-14]
 0058546E    push        eax
 0058546F    mov         eax,dword ptr [ebp-4]
 00585472    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 00585478    push        eax
 00585479    push        80B
 0058547E    mov         eax,dword ptr [ebp-4]
 00585481    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 00585488    push        eax
 00585489    call        WINMM.mciSendCommandA
 0058548E    mov         eax,dword ptr [ebp-10]
 00585491    mov         dword ptr [ebp-8],eax
 00585494    cmp         dword ptr [ebp-8],207
>0058549B    je          005854B8
 0058549D    cmp         dword ptr [ebp-8],208
>005854A4    je          005854B8
 005854A6    cmp         dword ptr [ebp-8],203
>005854AD    je          005854B8
 005854AF    cmp         dword ptr [ebp-8],201
>005854B6    jne         005854C2
 005854B8    mov         eax,dword ptr [ebp-4]
 005854BB    mov         byte ptr [eax+2E4],1;TMediaPlayer.FCanStep:Boolean
 005854C2    mov         eax,dword ptr [ebp-4]
 005854C5    cmp         byte ptr [eax+2E4],0;TMediaPlayer.FCanStep:Boolean
>005854CC    je          005854D8
 005854CE    mov         eax,dword ptr [ebp-4]
 005854D1    or          byte ptr [eax+2E2],1;TMediaPlayer.FCapabilities:TMPDevCapsSet
 005854D8    mov         eax,dword ptr [ebp-4]
 005854DB    mov         dword ptr [eax+2E8],20000;TMediaPlayer.FFlags:Longint
 005854E5    lea         eax,[ebp-28]
 005854E8    push        eax
 005854E9    mov         eax,dword ptr [ebp-4]
 005854EC    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 005854F2    push        eax
 005854F3    push        843
 005854F8    mov         eax,dword ptr [ebp-4]
 005854FB    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 00585502    push        eax
 00585503    call        WINMM.mciSendCommandA
 00585508    mov         edx,dword ptr [ebp-4]
 0058550B    mov         dword ptr [edx+304],eax;TMediaPlayer.FError:Longint
 00585511    lea         esi,[ebp-24]
 00585514    lea         edi,[ebp-38]
 00585517    movs        dword ptr [edi],dword ptr [esi]
 00585518    movs        dword ptr [edi],dword ptr [esi]
 00585519    movs        dword ptr [edi],dword ptr [esi]
 0058551A    movs        dword ptr [edi],dword ptr [esi]
 0058551B    mov         eax,dword ptr [ebp-30]
 0058551E    sub         eax,dword ptr [ebp-38]
 00585521    mov         edx,dword ptr [ebp-4]
 00585524    mov         dword ptr [edx+310],eax;TMediaPlayer.FDWidth:Integer
 0058552A    mov         eax,dword ptr [ebp-2C]
 0058552D    sub         eax,dword ptr [ebp-34]
 00585530    mov         edx,dword ptr [ebp-4]
 00585533    mov         dword ptr [edx+314],eax;TMediaPlayer.FDHeight:Integer
 00585539    pop         edi
 0058553A    pop         esi
 0058553B    mov         esp,ebp
 0058553D    pop         ebp
 0058553E    ret
*}
end;

//00585540
{*function sub_00585540(?:TMediaPlayer):?;
begin
 00585540    push        ebp
 00585541    mov         ebp,esp
 00585543    add         esp,0FFFFFFE8
 00585546    mov         dword ptr [ebp-4],eax
 00585549    mov         eax,dword ptr [ebp-4]
 0058554C    call        00583E58
 00585551    mov         eax,dword ptr [ebp-4]
 00585554    mov         dword ptr [eax+2E8],102;TMediaPlayer.FFlags:Longint
 0058555E    mov         dword ptr [ebp-10],1
 00585565    lea         eax,[ebp-18]
 00585568    push        eax
 00585569    mov         eax,dword ptr [ebp-4]
 0058556C    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 00585572    push        eax
 00585573    push        814
 00585578    mov         eax,dword ptr [ebp-4]
 0058557B    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 00585582    push        eax
 00585583    call        WINMM.mciSendCommandA
 00585588    mov         edx,dword ptr [ebp-4]
 0058558B    mov         dword ptr [edx+304],eax;TMediaPlayer.FError:Longint
 00585591    mov         eax,dword ptr [ebp-14]
 00585594    mov         dword ptr [ebp-8],eax
 00585597    mov         eax,dword ptr [ebp-8]
 0058559A    mov         esp,ebp
 0058559C    pop         ebp
 0058559D    ret
end;*}

//005855A0
{*function sub_005855A0(?:?):?;
begin
 005855A0    push        ebp
 005855A1    mov         ebp,esp
 005855A3    add         esp,0FFFFFFE8
 005855A6    mov         dword ptr [ebp-4],eax
 005855A9    mov         eax,dword ptr [ebp-4]
 005855AC    call        00583E58
 005855B1    mov         eax,dword ptr [ebp-4]
 005855B4    mov         dword ptr [eax+2E8],102
 005855BE    mov         dword ptr [ebp-10],3
 005855C5    lea         eax,[ebp-18]
 005855C8    push        eax
 005855C9    mov         eax,dword ptr [ebp-4]
 005855CC    mov         eax,dword ptr [eax+2E8]
 005855D2    push        eax
 005855D3    push        814
 005855D8    mov         eax,dword ptr [ebp-4]
 005855DB    movzx       eax,word ptr [eax+2F2]
 005855E2    push        eax
 005855E3    call        WINMM.mciSendCommandA
 005855E8    mov         edx,dword ptr [ebp-4]
 005855EB    mov         dword ptr [edx+304],eax
 005855F1    mov         eax,dword ptr [ebp-14]
 005855F4    mov         dword ptr [ebp-8],eax
 005855F7    mov         eax,dword ptr [ebp-8]
 005855FA    mov         esp,ebp
 005855FC    pop         ebp
 005855FD    ret
end;*}

//00585600
{*function sub_00585600(?:TMediaPlayer):?;
begin
 00585600    push        ebp
 00585601    mov         ebp,esp
 00585603    add         esp,0FFFFFFE8
 00585606    mov         dword ptr [ebp-4],eax
 00585609    mov         eax,dword ptr [ebp-4]
 0058560C    mov         dword ptr [eax+2E8],102;TMediaPlayer.FFlags:Longint
 00585616    mov         dword ptr [ebp-10],4
 0058561D    lea         eax,[ebp-18]
 00585620    push        eax
 00585621    mov         eax,dword ptr [ebp-4]
 00585624    mov         eax,dword ptr [eax+2E8];TMediaPlayer.FFlags:Longint
 0058562A    push        eax
 0058562B    push        814
 00585630    mov         eax,dword ptr [ebp-4]
 00585633    movzx       eax,word ptr [eax+2F2];TMediaPlayer.FDeviceID:word
 0058563A    push        eax
 0058563B    call        WINMM.mciSendCommandA
 00585640    mov         edx,dword ptr [ebp-4]
 00585643    mov         dword ptr [edx+304],eax;TMediaPlayer.FError:Longint
 00585649    mov         al,byte ptr [ebp-14]
 0058564C    sub         al,0C
 0058564E    mov         byte ptr [ebp-5],al
 00585651    mov         al,byte ptr [ebp-5]
 00585654    mov         esp,ebp
 00585656    pop         ebp
 00585657    ret
end;*}

//00585658
{*function sub_00585658(?:?):?;
begin
 00585658    push        ebp
 00585659    mov         ebp,esp
 0058565B    add         esp,0FFFFFFE8
 0058565E    mov         dword ptr [ebp-4],eax
 00585661    mov         eax,dword ptr [ebp-4]
 00585664    mov         dword ptr [eax+2E8],102
 0058566E    mov         dword ptr [ebp-10],2
 00585675    lea         eax,[ebp-18]
 00585678    push        eax
 00585679    mov         eax,dword ptr [ebp-4]
 0058567C    mov         eax,dword ptr [eax+2E8]
 00585682    push        eax
 00585683    push        814
 00585688    mov         eax,dword ptr [ebp-4]
 0058568B    movzx       eax,word ptr [eax+2F2]
 00585692    push        eax
 00585693    call        WINMM.mciSendCommandA
 00585698    mov         edx,dword ptr [ebp-4]
 0058569B    mov         dword ptr [edx+304],eax
 005856A1    mov         eax,dword ptr [ebp-14]
 005856A4    mov         dword ptr [ebp-8],eax
 005856A7    mov         eax,dword ptr [ebp-8]
 005856AA    mov         esp,ebp
 005856AC    pop         ebp
 005856AD    ret
end;*}

//005856B0
{*function sub_005856B0(?:?):?;
begin
 005856B0    push        ebp
 005856B1    mov         ebp,esp
 005856B3    add         esp,0FFFFFFE8
 005856B6    mov         dword ptr [ebp-4],eax
 005856B9    mov         eax,dword ptr [ebp-4]
 005856BC    call        00583E58
 005856C1    mov         eax,dword ptr [ebp-4]
 005856C4    mov         dword ptr [eax+2E8],102
 005856CE    mov         dword ptr [ebp-10],6
 005856D5    lea         eax,[ebp-18]
 005856D8    push        eax
 005856D9    mov         eax,dword ptr [ebp-4]
 005856DC    mov         eax,dword ptr [eax+2E8]
 005856E2    push        eax
 005856E3    push        814
 005856E8    mov         eax,dword ptr [ebp-4]
 005856EB    movzx       eax,word ptr [eax+2F2]
 005856F2    push        eax
 005856F3    call        WINMM.mciSendCommandA
 005856F8    mov         edx,dword ptr [ebp-4]
 005856FB    mov         dword ptr [edx+304],eax
 00585701    mov         al,byte ptr [ebp-14]
 00585704    mov         byte ptr [ebp-5],al
 00585707    mov         al,byte ptr [ebp-5]
 0058570A    mov         esp,ebp
 0058570C    pop         ebp
 0058570D    ret
end;*}

//00585710
{*procedure sub_00585710(?:TMediaPlayer; ?:?);
begin
 00585710    push        ebp
 00585711    mov         ebp,esp
 00585713    add         esp,0FFFFF004
 00585719    push        eax
 0058571A    add         esp,0FFFFFFF8
 0058571D    mov         dword ptr [ebp-8],edx
 00585720    mov         dword ptr [ebp-4],eax
 00585723    push        1000
 00585728    lea         eax,[ebp-1008]
 0058572E    push        eax
 0058572F    mov         eax,dword ptr [ebp-4]
 00585732    mov         eax,dword ptr [eax+304];TMediaPlayer.FError:Longint
 00585738    push        eax
 00585739    call        WINMM.mciGetErrorStringA
 0058573E    test        eax,eax
>00585740    jne         00585751
 00585742    mov         edx,dword ptr [ebp-8]
 00585745    mov         eax,[006E9FBC];^gvar_0063CD88
 0058574A    call        LoadResString
>0058574F    jmp         0058576C
 00585751    lea         eax,[ebp-1008]
 00585757    call        StrLen
 0058575C    mov         ecx,eax
 0058575E    lea         edx,[ebp-1008]
 00585764    mov         eax,dword ptr [ebp-8]
 00585767    call        @LStrFromPCharLen
 0058576C    mov         esp,ebp
 0058576E    pop         ebp
 0058576F    ret
end;*}

//00585770
procedure Finalization;
begin
{*
 00585770    push        ebp
 00585771    mov         ebp,esp
 00585773    xor         eax,eax
 00585775    push        ebp
 00585776    push        585795
 0058577B    push        dword ptr fs:[eax]
 0058577E    mov         dword ptr fs:[eax],esp
 00585781    inc         dword ptr ds:[6ECCBC]
 00585787    xor         eax,eax
 00585789    pop         edx
 0058578A    pop         ecx
 0058578B    pop         ecx
 0058578C    mov         dword ptr fs:[eax],edx
 0058578F    push        58579C
 00585794    ret
>00585795    jmp         @HandleFinally
>0058579A    jmp         00585794
 0058579C    pop         ebp
 0058579D    ret
*}
end;

end.