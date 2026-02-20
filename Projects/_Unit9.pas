//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit9;

interface

uses
  SysUtils, Classes;

    @@Ufiledropper@Initialize; stdcall;//0049B1AC
    @@Ufiledropper@Finalize; stdcall;//0049B1BC
    constructor Create(AOwner:TComponent);//0049B1CC
    procedure FormCreate(Sender:TObject);//0049B24C
    procedure lEmailClick(Sender:TObject);//0049B2C0
    procedure lWWWClick(Sender:TObject);//0049B2F0
    procedure bDonateClick(Sender:TObject);//0049B320
    destructor Destroy;//0049B3DC

implementation

//0049B1CC
constructor TFAboutDlg_11011981.Create(AOwner:TComponent);
begin
{*
 0049B1CC    push        ebp
 0049B1CD    mov         ebp,esp
 0049B1CF    add         esp,0FFFFFFD0
 0049B1D2    mov         byte ptr [ebp-8],dl
 0049B1D5    test        dl,dl
>0049B1D7    jle         0049B1DE
 0049B1D9    call        0067EF6C
 0049B1DE    mov         dword ptr [ebp-30],ecx
 0049B1E1    mov         byte ptr [ebp-29],dl
 0049B1E4    mov         dword ptr [ebp-4],eax
 0049B1E7    mov         eax,6BD8C0
 0049B1EC    call        0066FECC
 0049B1F1    mov         word ptr [ebp-18],8
 0049B1F7    mov         ecx,dword ptr [ebp-30]
 0049B1FA    xor         edx,edx
 0049B1FC    mov         eax,dword ptr [ebp-4]
 0049B1FF    call        0040207C
 0049B204    add         dword ptr [ebp-0C],10
 0049B208    mov         edx,dword ptr [ebp-28]
 0049B20B    mov         dword ptr fs:[0],edx
 0049B212    mov         eax,dword ptr [ebp-4]
 0049B215    mov         dl,byte ptr [ebp-29]
 0049B218    test        dl,dl
>0049B21A    je          0049B221
 0049B21C    call        0067EF79
 0049B221    mov         esp,ebp
 0049B223    pop         ebp
 0049B224    ret
*}
end;

//0049B24C
procedure TFAboutDlg_11011981.FormCreate(Sender:TObject);
begin
{*
 0049B24C    push        ebp
 0049B24D    mov         ebp,esp
 0049B24F    add         esp,0FFFFFFD0
 0049B252    mov         dword ptr [ebp-30],edx
 0049B255    mov         dword ptr [ebp-2C],eax
 0049B258    mov         eax,6BD8E4
 0049B25D    call        0066FECC
 0049B262    mov         word ptr [ebp-18],8
 0049B268    lea         eax,[ebp-4]
 0049B26B    call        00401EA8
 0049B270    mov         ecx,eax
 0049B272    inc         dword ptr [ebp-0C]
 0049B275    mov         edx,69413C
 0049B27A    mov         eax,6BD838
 0049B27F    call        0067E37C
 0049B284    lea         edx,[ebp-4]
 0049B287    mov         edx,dword ptr [edx]
 0049B289    mov         eax,dword ptr [ebp-2C]
 0049B28C    mov         eax,dword ptr [eax+314];TFAboutDlg_11011981.lVer:TLabel
 0049B292    call        TTabPage.SetCaption
 0049B297    dec         dword ptr [ebp-0C]
 0049B29A    lea         eax,[ebp-4]
 0049B29D    mov         edx,2
 0049B2A2    call        0067DCA0
 0049B2A7    mov         eax,dword ptr [ebp-2C]
 0049B2AA    call        00531284
 0049B2AF    mov         edx,dword ptr [ebp-28]
 0049B2B2    mov         dword ptr fs:[0],edx
 0049B2B9    mov         esp,ebp
 0049B2BB    pop         ebp
 0049B2BC    ret
*}
end;

//0049B2C0
procedure TFAboutDlg_11011981.lEmailClick(Sender:TObject);
begin
{*
 0049B2C0    push        ebp
 0049B2C1    mov         ebp,esp
 0049B2C3    add         esp,0FFFFFFF8
 0049B2C6    mov         dword ptr [ebp-8],edx
 0049B2C9    mov         dword ptr [ebp-4],eax
 0049B2CC    push        1
 0049B2CE    push        0
 0049B2D0    push        0
 0049B2D2    push        6BD847
 0049B2D7    push        6BD842
 0049B2DC    mov         eax,dword ptr [ebp-4]
 0049B2DF    call        TWinControl.GetHandle
 0049B2E4    push        eax
 0049B2E5    call        SHELL32.ShellExecuteA
 0049B2EA    pop         ecx
 0049B2EB    pop         ecx
 0049B2EC    pop         ebp
 0049B2ED    ret
*}
end;

//0049B2F0
procedure TFAboutDlg_11011981.lWWWClick(Sender:TObject);
begin
{*
 0049B2F0    push        ebp
 0049B2F1    mov         ebp,esp
 0049B2F3    add         esp,0FFFFFFF8
 0049B2F6    mov         dword ptr [ebp-8],edx
 0049B2F9    mov         dword ptr [ebp-4],eax
 0049B2FC    push        1
 0049B2FE    push        0
 0049B300    push        0
 0049B302    push        6BD868
 0049B307    push        6BD863
 0049B30C    mov         eax,dword ptr [ebp-4]
 0049B30F    call        TWinControl.GetHandle
 0049B314    push        eax
 0049B315    call        SHELL32.ShellExecuteA
 0049B31A    pop         ecx
 0049B31B    pop         ecx
 0049B31C    pop         ebp
 0049B31D    ret
*}
end;

//0049B320
procedure TFAboutDlg_11011981.bDonateClick(Sender:TObject);
begin
{*
 0049B320    push        ebp
 0049B321    mov         ebp,esp
 0049B323    add         esp,0FFFFFFF8
 0049B326    mov         dword ptr [ebp-8],edx
 0049B329    mov         dword ptr [ebp-4],eax
 0049B32C    push        1
 0049B32E    push        0
 0049B330    push        0
 0049B332    push        6BD887
 0049B337    push        6BD882
 0049B33C    mov         eax,dword ptr [ebp-4]
 0049B33F    call        TWinControl.GetHandle
 0049B344    push        eax
 0049B345    call        SHELL32.ShellExecuteA
 0049B34A    pop         ecx
 0049B34B    pop         ecx
 0049B34C    pop         ebp
 0049B34D    ret
*}
end;

//0049B3DC
destructor TFAboutDlg_11011981.Destroy;
begin
{*
 0049B3DC    push        ebp
 0049B3DD    mov         ebp,esp
 0049B3DF    add         esp,0FFFFFFD4
 0049B3E2    call        0067EF81
 0049B3E7    mov         byte ptr [ebp-29],dl
 0049B3EA    mov         dword ptr [ebp-28],eax
 0049B3ED    mov         eax,6BDBEC
 0049B3F2    call        0066FECC
 0049B3F7    mov         dl,byte ptr [ebp-29]
 0049B3FA    test        dl,dl
>0049B3FC    jl          0049B40C
 0049B3FE    sub         dword ptr [ebp-8],10
 0049B402    xor         edx,edx
 0049B404    mov         eax,dword ptr [ebp-28]
 0049B407    call        0040235C
 0049B40C    mov         ecx,dword ptr [ebp-24]
 0049B40F    mov         dword ptr fs:[0],ecx
 0049B416    mov         al,byte ptr [ebp-29]
 0049B419    test        al,al
>0049B41B    jle         0049B425
 0049B41D    mov         eax,dword ptr [ebp-28]
 0049B420    call        0067EF74
 0049B425    mov         esp,ebp
 0049B427    pop         ebp
 0049B428    ret
*}
end;

end.