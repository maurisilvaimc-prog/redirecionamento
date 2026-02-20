//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ExtActns;

interface

uses
  SysUtils, Classes;

type
  TOpenPicture = class(TCommonDialogAction)
  public
    //function v54:?; virtual;//v54//00586B5C
    //function GetDialog:?;//00586B40
  end;
  TSavePicture = class(TCommonDialogAction)
  public
    //function v54:?; virtual;//v54//00586B90
    //function GetDialog:?;//00586B74
  end;
    procedure sub_00586584;//00586584
    //function sub_00586B5C:?;//00586B5C
    //function sub_00586B90:?;//00586B90
    procedure Finalization;//00586BA8

implementation

//00586584
procedure sub_00586584;
begin
{*
 00586584    push        ebp
 00586585    mov         ebp,esp
 00586587    xor         eax,eax
 00586589    push        ebp
 0058658A    push        5865E7
 0058658F    push        dword ptr fs:[eax]
 00586592    mov         dword ptr fs:[eax],esp
 00586595    sub         dword ptr ds:[6ECCC8],1
>0058659C    jae         005865D9
 0058659E    mov         dl,1
 005865A0    mov         eax,[005858D4];TWinHelpViewer
 005865A5    call        TWinHelpViewer.Create;TWinHelpViewer.Create
 005865AA    mov         [006ECCCC],eax;gvar_006ECCCC:TWinHelpViewer
 005865AF    mov         eax,[006ECCCC];0x0 gvar_006ECCCC:TWinHelpViewer
 005865B4    add         eax,1C;TWinHelpViewer.?f1C:IHelpManager
 005865B7    call        @IntfClear
 005865BC    mov         edx,eax
 005865BE    mov         eax,[006ECCCC];0x0 gvar_006ECCCC:TWinHelpViewer
 005865C3    test        eax,eax
>005865C5    je          005865CA
 005865C7    sub         eax,0FFFFFFE0
 005865CA    call        0063FFB8
 005865CF    mov         eax,6ECCC0;gvar_006ECCC0:IInterface
 005865D4    call        @IntfClear
 005865D9    xor         eax,eax
 005865DB    pop         edx
 005865DC    pop         ecx
 005865DD    pop         ecx
 005865DE    mov         dword ptr fs:[eax],edx
 005865E1    push        5865EE
 005865E6    ret
>005865E7    jmp         @HandleFinally
>005865EC    jmp         005865E6
 005865EE    pop         ebp
 005865EF    ret
*}
end;

//00586B40
{*function TOpenPicture.GetDialog:?;
begin
 00586B40    push        ebp
 00586B41    mov         ebp,esp
 00586B43    add         esp,0FFFFFFF8
 00586B46    mov         dword ptr [ebp-4],eax
 00586B49    mov         eax,dword ptr [ebp-4]
 00586B4C    mov         eax,dword ptr [eax+0C0];TOpenPicture.FDialog:TCommonDialog
 00586B52    mov         dword ptr [ebp-8],eax
 00586B55    mov         eax,dword ptr [ebp-8]
 00586B58    pop         ecx
 00586B59    pop         ecx
 00586B5A    pop         ebp
 00586B5B    ret
end;*}

//00586B5C
{*function sub_00586B5C:?;
begin
 00586B5C    push        ebp
 00586B5D    mov         ebp,esp
 00586B5F    add         esp,0FFFFFFF8
 00586B62    mov         dword ptr [ebp-4],eax
 00586B65    mov         eax,[0058F1FC];TOpenPictureDialog
 00586B6A    mov         dword ptr [ebp-8],eax
 00586B6D    mov         eax,dword ptr [ebp-8]
 00586B70    pop         ecx
 00586B71    pop         ecx
 00586B72    pop         ebp
 00586B73    ret
end;*}

//00586B74
{*function TSavePicture.GetDialog:?;
begin
 00586B74    push        ebp
 00586B75    mov         ebp,esp
 00586B77    add         esp,0FFFFFFF8
 00586B7A    mov         dword ptr [ebp-4],eax
 00586B7D    mov         eax,dword ptr [ebp-4]
 00586B80    mov         eax,dword ptr [eax+0C0];TSavePicture.FDialog:TCommonDialog
 00586B86    mov         dword ptr [ebp-8],eax
 00586B89    mov         eax,dword ptr [ebp-8]
 00586B8C    pop         ecx
 00586B8D    pop         ecx
 00586B8E    pop         ebp
 00586B8F    ret
end;*}

//00586B90
{*function sub_00586B90:?;
begin
 00586B90    push        ebp
 00586B91    mov         ebp,esp
 00586B93    add         esp,0FFFFFFF8
 00586B96    mov         dword ptr [ebp-4],eax
 00586B99    mov         eax,[0058F31C];TSavePictureDialog
 00586B9E    mov         dword ptr [ebp-8],eax
 00586BA1    mov         eax,dword ptr [ebp-8]
 00586BA4    pop         ecx
 00586BA5    pop         ecx
 00586BA6    pop         ebp
 00586BA7    ret
end;*}

//00586BA8
procedure Finalization;
begin
{*
 00586BA8    push        ebp
 00586BA9    mov         ebp,esp
 00586BAB    xor         eax,eax
 00586BAD    push        ebp
 00586BAE    push        586BEC
 00586BB3    push        dword ptr fs:[eax]
 00586BB6    mov         dword ptr fs:[eax],esp
 00586BB9    inc         dword ptr ds:[6ECCD0]
>00586BBF    jne         00586BDE
 00586BC1    cmp         byte ptr ds:[6ECCDC],0;UrlMonInitialized:Boolean
>00586BC8    je          00586BDE
 00586BCA    cmp         dword ptr ds:[6ECCD4],0;UrlMonHandle:HMODULE
>00586BD1    je          00586BDE
 00586BD3    mov         eax,[006ECCD4];UrlMonHandle:HMODULE
 00586BD8    push        eax
 00586BD9    call        KERNEL32.FreeLibrary
 00586BDE    xor         eax,eax
 00586BE0    pop         edx
 00586BE1    pop         ecx
 00586BE2    pop         ecx
 00586BE3    mov         dword ptr fs:[eax],edx
 00586BE6    push        586BF3
 00586BEB    ret
>00586BEC    jmp         @HandleFinally
>00586BF1    jmp         00586BEB
 00586BF3    pop         ebp
 00586BF4    ret
*}
end;

end.