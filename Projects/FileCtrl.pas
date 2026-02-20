//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FileCtrl;

interface

uses
  SysUtils, Classes, StdCtrls, FileCtrl, Graphics;

type
  TFileAttr = (ftReadOnly, ftHidden, ftSystem, ftVolumeID, ftDirectory, ftArchive, ftNormal);
  TFileType = set of TFileAttr;
  TFileListBox = class(TCustomListBox)
  public
    FDirectory:String;//f280
    Mask:String;//f284
    FileType:TFileType;//f288
    FileEdit:TEdit;//f28C
    FDirList:TDirectoryListBox;//f290
    FFilterCombo:TFilterComboBox;//f294
    ExeBMP:TBitmap;//f298
    DirBMP:TBitmap;//f29C
    UnknownBMP:TBitmap;//f2A0
    OnChange:TNotifyEvent;//f2A8
    f2AA:word;//f2AA
    f2AC:dword;//f2AC
    FLastSel:Integer;//f2B0
    ShowGlyphs:Boolean;//f2B4
    destructor Destroy; virtual;//00580F90
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//00581CE8
    constructor Create(AOwner:TComponent); virtual;//v2C//00580EB8
    procedure CreateWnd; virtual;//vA0//00580FEC
    //procedure vF4(?:?; ?:?); virtual;//vF4//005817B0
    procedure vFC; virtual;//vFC//00581040
    procedure v100; virtual;//v100//005814BC
    procedure v104; virtual;//v104//00581114
    //procedure v108(?:?); virtual;//v108//00581C68
    //procedure v10C(?:?); virtual;//v10C//00581A74
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//005819F8
    procedure sub_00581488; dynamic;//00581488
    function IsStoredMask(Value:String):Boolean;//0058100C
    procedure SetShowGlyphs(Value:Boolean);//00581598
    procedure SetFileEdit(Value:TEdit);//005816F8
    procedure SetFileType(Value:TFileType);//00581980
    procedure SetMask(Value:String);//005819B8
  end;
  TDirectoryListBox = class(TCustomListBox)
  public
    FileList:TFileListBox;//f280
    FDriveCombo:TDriveComboBox;//f284
    DirLabel:TLabel;//f288
    FInSetDir:Boolean;//f28C
    FPreserveCase:Boolean;//f28D
    FCaseSensitive:Boolean;//f28E
    ClosedBMP:TBitmap;//f290
    OpenedBMP:TBitmap;//f294
    CurrentBMP:TBitmap;//f298
    FDirectory:String;//f29C
    OnChange:TNotifyEvent;//f2A0
    f2A2:word;//f2A2
    f2A4:dword;//f2A4
    destructor Destroy; virtual;//0057FF4C
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//00580D98
    constructor Create(AOwner:TComponent); virtual;//v2C//0057FEC0
    procedure CreateWnd; virtual;//vA0//00580BA0
    //procedure vF4(?:?; ?:?); virtual;//vF4//00580830
    //procedure vFC(?:?); virtual;//vFC//00580C68
    procedure v100; virtual;//v100//005807D8
    procedure v104; virtual;//v104//005806E4
    procedure v108; virtual;//v108//005803C4
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//00580BD8
    //procedure sub_00580D68(?:?); dynamic;//00580D68
    procedure sub_005807BC; dynamic;//005807BC
    procedure SetFileList(Value:TFileListBox);//00580080
    procedure SetDirLabel(Value:TLabel);//005800E8
  end;
  TTextCase = (tcLowerCase, tcUpperCase);
  TDriveComboBox = class(TCustomComboBox)
  public
    DirList:TDirectoryListBox;//f290
    FDrive:Char;//f294
    TextCase:TTextCase;//f295
    FloppyBMP:TBitmap;//f298
    FixedBMP:TBitmap;//f29C
    NetworkBMP:TBitmap;//f2A0
    CDROMBMP:TBitmap;//f2A4
    RAMBMP:TBitmap;//f2A8
    destructor Destroy; virtual;//0057F554
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//0057FE38
    constructor Create(AOwner:TComponent); virtual;//v2C//0057F4B4
    procedure CreateWnd; virtual;//vA0//0057FA68
    //procedure v10C(?:?; ?:?); virtual;//v10C//0057FA98
    procedure v118; virtual;//v118//0057F664
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//0057FC84
    procedure sub_0057FC00; dynamic;//0057FC00
    procedure SetTextCase(Value:TTextCase);//0057F9C0
    procedure SetDirList(Value:TDirectoryListBox);//0057FA00
  end;
  TFilterComboBox = class(TCustomComboBox)
  public
    Filter:String;//f290
    FileList:TFileListBox;//f294
    MaskList:TStringList;//f298
    destructor Destroy; virtual;//00581DDC
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//00582154
    constructor Create(AOwner:TComponent); virtual;//v2C//00581D60
    procedure CreateWnd; virtual;//vA0//00581E1C
    procedure sub_00582194; dynamic;//00582194
    procedure sub_00581F5C; dynamic;//00581F5C
    function IsStoredFilter(Value:String):Boolean;//00581E38
    procedure SetFilter(Value:String);//00581E9C
    procedure SetFileList(Value:TFileListBox);//00581EF4
  end;
    procedure FileCtrl;//0057CB8C
    //procedure sub_0057EC10(?:AnsiString; ?:AnsiString; ?:?);//0057EC10
    procedure sub_0057EC64(?:AnsiString);//0057EC64
    //procedure sub_0057ED4C(?:String; ?:TCanvas; ?:Integer; ?:?);//0057ED4C
    //procedure sub_0057EEA0(?:Char; ?:?);//0057EEA0
    //procedure sub_0057F048(?:Char; ?:?);//0057F048
    //procedure sub_0057F130(?:?; ?:?; ?:?; ?:?);//0057F130
    //function sub_0057F458(?:TFont):?;//0057F458
    constructor Create(AOwner:TComponent);//0057F4B4
    destructor Destroy;//0057F554
    //procedure sub_0057F5CC(?:?; ?:TBitmap; ?:?);//0057F5CC
    procedure sub_0057F664;//0057F664
    procedure sub_0057F850(?:TDriveComboBox; ?:Char);//0057F850
    procedure CreateWnd;//0057FA68
    //procedure sub_0057FA98(?:?; ?:?);//0057FA98
    procedure sub_0057FC00;//0057FC00
    //procedure CMFontChanged(?:?);//0057FC84
    procedure sub_0057FCB0(?:TDriveComboBox);//0057FCB0
    procedure sub_0057FD00(?:TDriveComboBox);//0057FD00
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0057FE38
    //function sub_0057FE78(?:String):?;//0057FE78
    constructor Create(AOwner:TComponent);//0057FEC0
    destructor Destroy;//0057FF4C
    //procedure sub_0057FFA8(?:TDirectoryListBox; ?:?);//0057FFA8
    //procedure sub_00580120(?:TDirectoryListBox; ?:?);//00580120
    procedure sub_00580188(?:TDirectoryListBox);//00580188
    //procedure sub_005801EC(?:TDirectoryListBox; ?:?; ?:?);//005801EC
    //function sub_00580230(?:TDirectoryListBox; ?:?; ?:String):?;//00580230
    //function sub_00580270(?:TDirectoryListBox; ?:String; ?:TStringList):?;//00580270
    procedure sub_005803C4;//005803C4
    procedure sub_005806E4;//005806E4
    procedure sub_005807BC;//005807BC
    procedure sub_005807D8;//005807D8
    //procedure sub_00580830(?:?; ?:?);//00580830
    //procedure sub_005809C8(?:?; ?:?; ?:?);//005809C8
    procedure CreateWnd;//00580BA0
    //procedure CMFontChanged(?:?);//00580BD8
    procedure sub_00580BFC(?:TDirectoryListBox);//00580BFC
    //function sub_00580C48(?:TDirectoryListBox):?;//00580C48
    //procedure sub_00580C68(?:?);//00580C68
    //procedure sub_00580D68(?:?);//00580D68
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00580D98
    procedure sub_00580E10(?:TDirectoryListBox);//00580E10
    constructor Create(AOwner:TComponent);//00580EB8
    destructor Destroy;//00580F90
    procedure CreateWnd;//00580FEC
    procedure sub_00581040;//00581040
    procedure sub_00581114;//00581114
    procedure sub_00581488;//00581488
    procedure sub_005814BC;//005814BC
    //procedure sub_00581600(?:TFileListBox; ?:?);//00581600
    //procedure sub_00581668(?:TFileListBox; ?:?);//00581668
    //procedure sub_005817B0(?:?; ?:?);//005817B0
    procedure sub_0058190C(?:TFileListBox; ?:String);//0058190C
    //procedure CMFontChanged(?:?);//005819F8
    procedure sub_00581A1C(?:TFileListBox);//00581A1C
    //procedure sub_00581A74(?:?);//00581A74
    //procedure sub_00581C68(?:?);//00581C68
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00581CE8
    constructor Create(AOwner:TComponent);//00581D60
    destructor Destroy;//00581DDC
    procedure CreateWnd;//00581E1C
    procedure sub_00581F5C;//00581F5C
    //procedure sub_00581F7C(?:TFilterComboBox; ?:?);//00581F7C
    procedure sub_00582004(?:TFilterComboBox);//00582004
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00582154
    procedure sub_00582194;//00582194
    //function sub_00582204(?:AnsiString):?;//00582204
    procedure Finalization;//00582220

implementation

//0057CB8C
procedure FileCtrl;
begin
{*
 0057CB8C    sub         dword ptr ds:[6ECCB4],1
 0057CB93    ret
*}
end;

//0057EC10
{*procedure sub_0057EC10(?:AnsiString; ?:AnsiString; ?:?);
begin
 0057EC10    push        ebp
 0057EC11    mov         ebp,esp
 0057EC13    add         esp,0FFFFFFF4
 0057EC16    mov         dword ptr [ebp-0C],ecx
 0057EC19    mov         dword ptr [ebp-8],edx
 0057EC1C    mov         dword ptr [ebp-4],eax
 0057EC1F    mov         eax,dword ptr [ebp-4]
 0057EC22    call        00658280
 0057EC27    cmp         byte ptr [eax],5C
>0057EC2A    je          0057EC46
 0057EC2C    push        dword ptr [ebp-4]
 0057EC2F    push        57EC60;'\'
 0057EC34    push        dword ptr [ebp-8]
 0057EC37    mov         eax,dword ptr [ebp-0C]
 0057EC3A    mov         edx,3
 0057EC3F    call        @LStrCatN
>0057EC44    jmp         0057EC54
 0057EC46    mov         eax,dword ptr [ebp-0C]
 0057EC49    mov         ecx,dword ptr [ebp-8]
 0057EC4C    mov         edx,dword ptr [ebp-4]
 0057EC4F    call        @LStrCat3
 0057EC54    mov         esp,ebp
 0057EC56    pop         ebp
 0057EC57    ret
end;*}

//0057EC64
procedure sub_0057EC64(?:AnsiString);
begin
{*
 0057EC64    push        ebp
 0057EC65    mov         ebp,esp
 0057EC67    add         esp,0FFFFFFF4
 0057EC6A    mov         dword ptr [ebp-4],eax
 0057EC6D    mov         eax,dword ptr [ebp-4]
 0057EC70    mov         eax,dword ptr [eax]
 0057EC72    mov         edx,57ED38;'\'
 0057EC77    call        @LStrCmp
>0057EC7C    jne         0057EC8B
 0057EC7E    mov         eax,dword ptr [ebp-4]
 0057EC81    call        @LStrClr
>0057EC86    jmp         0057ED29
 0057EC8B    mov         eax,dword ptr [ebp-4]
 0057EC8E    mov         eax,dword ptr [eax]
 0057EC90    cmp         byte ptr [eax],5C
>0057EC93    jne         0057ECAD
 0057EC95    mov         byte ptr [ebp-5],1
 0057EC99    mov         eax,dword ptr [ebp-4]
 0057EC9C    mov         ecx,1
 0057ECA1    mov         edx,1
 0057ECA6    call        @LStrDelete
>0057ECAB    jmp         0057ECB1
 0057ECAD    mov         byte ptr [ebp-5],0
 0057ECB1    mov         eax,dword ptr [ebp-4]
 0057ECB4    mov         eax,dword ptr [eax]
 0057ECB6    cmp         byte ptr [eax],2E
>0057ECB9    jne         0057ECCD
 0057ECBB    mov         eax,dword ptr [ebp-4]
 0057ECBE    mov         ecx,4
 0057ECC3    mov         edx,1
 0057ECC8    call        @LStrDelete
 0057ECCD    mov         edx,dword ptr [ebp-4]
 0057ECD0    mov         edx,dword ptr [edx]
 0057ECD2    mov         eax,57ED38;'\'
 0057ECD7    call        AnsiPos
 0057ECDC    mov         dword ptr [ebp-0C],eax
 0057ECDF    cmp         dword ptr [ebp-0C],0
>0057ECE3    je          0057ED09
 0057ECE5    mov         eax,dword ptr [ebp-4]
 0057ECE8    mov         ecx,dword ptr [ebp-0C]
 0057ECEB    mov         edx,1
 0057ECF0    call        @LStrDelete
 0057ECF5    mov         ecx,dword ptr [ebp-4]
 0057ECF8    mov         ecx,dword ptr [ecx]
 0057ECFA    mov         eax,dword ptr [ebp-4]
 0057ECFD    mov         edx,57ED44;'...\'
 0057ED02    call        @LStrCat3
>0057ED07    jmp         0057ED11
 0057ED09    mov         eax,dword ptr [ebp-4]
 0057ED0C    call        @LStrClr
 0057ED11    cmp         byte ptr [ebp-5],0
>0057ED15    je          0057ED29
 0057ED17    mov         ecx,dword ptr [ebp-4]
 0057ED1A    mov         ecx,dword ptr [ecx]
 0057ED1C    mov         eax,dword ptr [ebp-4]
 0057ED1F    mov         edx,57ED38;'\'
 0057ED24    call        @LStrCat3
 0057ED29    mov         esp,ebp
 0057ED2B    pop         ebp
 0057ED2C    ret
*}
end;

//0057ED4C
{*procedure sub_0057ED4C(?:String; ?:TCanvas; ?:Integer; ?:?);
begin
 0057ED4C    push        ebp
 0057ED4D    mov         ebp,esp
 0057ED4F    add         esp,0FFFFFFE8
 0057ED52    push        ebx
 0057ED53    xor         ebx,ebx
 0057ED55    mov         dword ptr [ebp-10],ebx
 0057ED58    mov         dword ptr [ebp-14],ebx
 0057ED5B    mov         dword ptr [ebp-18],ebx
 0057ED5E    mov         dword ptr [ebp-0C],ecx
 0057ED61    mov         dword ptr [ebp-8],edx
 0057ED64    mov         dword ptr [ebp-4],eax
 0057ED67    xor         eax,eax
 0057ED69    push        ebp
 0057ED6A    push        57EE71
 0057ED6F    push        dword ptr fs:[eax]
 0057ED72    mov         dword ptr fs:[eax],esp
 0057ED75    mov         eax,dword ptr [ebp+8]
 0057ED78    mov         edx,dword ptr [ebp-4]
 0057ED7B    call        @LStrAsg
 0057ED80    lea         edx,[ebp-14]
 0057ED83    mov         eax,dword ptr [ebp+8]
 0057ED86    mov         eax,dword ptr [eax]
 0057ED88    call        006583DC
 0057ED8D    lea         edx,[ebp-18]
 0057ED90    mov         eax,dword ptr [ebp+8]
 0057ED93    mov         eax,dword ptr [eax]
 0057ED95    call        00658580
 0057ED9A    mov         eax,dword ptr [ebp-14]
 0057ED9D    call        @LStrLen
 0057EDA2    cmp         eax,2
>0057EDA5    jl          0057EDDA
 0057EDA7    mov         eax,dword ptr [ebp-14]
 0057EDAA    cmp         byte ptr [eax+1],3A
>0057EDAE    jne         0057EDDA
 0057EDB0    lea         eax,[ebp-10]
 0057EDB3    push        eax
 0057EDB4    mov         ecx,2
 0057EDB9    mov         edx,1
 0057EDBE    mov         eax,dword ptr [ebp-14]
 0057EDC1    call        @LStrCopy
 0057EDC6    lea         eax,[ebp-14]
 0057EDC9    mov         ecx,2
 0057EDCE    mov         edx,1
 0057EDD3    call        @LStrDelete
>0057EDD8    jmp         0057EE38
 0057EDDA    lea         eax,[ebp-10]
 0057EDDD    call        @LStrClr
>0057EDE2    jmp         0057EE38
 0057EDE4    mov         eax,dword ptr [ebp-14]
 0057EDE7    mov         edx,57EE88;'\...\'
 0057EDEC    call        @LStrCmp
>0057EDF1    jne         0057EE0A
 0057EDF3    lea         eax,[ebp-10]
 0057EDF6    call        @LStrClr
 0057EDFB    lea         eax,[ebp-14]
 0057EDFE    mov         edx,57EE98;'...\'
 0057EE03    call        @LStrLAsg
>0057EE08    jmp         0057EE22
 0057EE0A    cmp         dword ptr [ebp-14],0
>0057EE0E    jne         0057EE1A
 0057EE10    lea         eax,[ebp-10]
 0057EE13    call        @LStrClr
>0057EE18    jmp         0057EE22
 0057EE1A    lea         eax,[ebp-14]
 0057EE1D    call        0057EC64
 0057EE22    push        dword ptr [ebp-10]
 0057EE25    push        dword ptr [ebp-14]
 0057EE28    push        dword ptr [ebp-18]
 0057EE2B    mov         eax,dword ptr [ebp+8]
 0057EE2E    mov         edx,3
 0057EE33    call        @LStrCatN
 0057EE38    cmp         dword ptr [ebp-14],0
>0057EE3C    jne         0057EE44
 0057EE3E    cmp         dword ptr [ebp-10],0
>0057EE42    je          0057EE56
 0057EE44    mov         edx,dword ptr [ebp+8]
 0057EE47    mov         edx,dword ptr [edx]
 0057EE49    mov         eax,dword ptr [ebp-8]
 0057EE4C    call        005C1754
 0057EE51    cmp         eax,dword ptr [ebp-0C]
>0057EE54    jg          0057EDE4
 0057EE56    xor         eax,eax
 0057EE58    pop         edx
 0057EE59    pop         ecx
 0057EE5A    pop         ecx
 0057EE5B    mov         dword ptr fs:[eax],edx
 0057EE5E    push        57EE78
 0057EE63    lea         eax,[ebp-18]
 0057EE66    mov         edx,3
 0057EE6B    call        @LStrArrayClr
 0057EE70    ret
>0057EE71    jmp         @HandleFinally
>0057EE76    jmp         0057EE63
 0057EE78    pop         ebx
 0057EE79    mov         esp,ebp
 0057EE7B    pop         ebp
 0057EE7C    ret         4
end;*}

//0057EEA0
{*procedure sub_0057EEA0(?:Char; ?:?);
begin
 0057EEA0    push        ebp
 0057EEA1    mov         ebp,esp
 0057EEA3    add         esp,0FFFFFECC
 0057EEA9    xor         ecx,ecx
 0057EEAB    mov         dword ptr [ebp-12C],ecx
 0057EEB1    mov         dword ptr [ebp-128],ecx
 0057EEB7    mov         dword ptr [ebp-124],ecx
 0057EEBD    mov         dword ptr [ebp-120],ecx
 0057EEC3    mov         dword ptr [ebp-8],edx
 0057EEC6    mov         byte ptr [ebp-1],al
 0057EEC9    xor         eax,eax
 0057EECB    push        ebp
 0057EECC    push        57F021
 0057EED1    push        dword ptr fs:[eax]
 0057EED4    mov         dword ptr fs:[eax],esp
 0057EED7    push        1
 0057EED9    call        KERNEL32.SetErrorMode
 0057EEDE    mov         dword ptr [ebp-0C],eax
 0057EEE1    xor         eax,eax
 0057EEE3    push        ebp
 0057EEE4    push        57EFFC
 0057EEE9    push        dword ptr fs:[eax]
 0057EEEC    mov         dword ptr fs:[eax],esp
 0057EEEF    mov         byte ptr [ebp-119],0
 0057EEF6    push        0
 0057EEF8    push        0
 0057EEFA    lea         eax,[ebp-14]
 0057EEFD    push        eax
 0057EEFE    lea         eax,[ebp-10]
 0057EF01    push        eax
 0057EF02    push        0
 0057EF04    push        105
 0057EF09    lea         eax,[ebp-119]
 0057EF0F    push        eax
 0057EF10    lea         eax,[ebp-120]
 0057EF16    mov         dl,byte ptr [ebp-1]
 0057EF19    call        @LStrFromChar
 0057EF1E    lea         eax,[ebp-120]
 0057EF24    mov         edx,57F034;':\'
 0057EF29    call        @LStrCat
 0057EF2E    mov         eax,dword ptr [ebp-120]
 0057EF34    call        @LStrToPChar
 0057EF39    push        eax
 0057EF3A    call        KERNEL32.GetVolumeInformationA
 0057EF3F    test        eax,eax
>0057EF41    je          0057EF60
 0057EF43    lea         eax,[ebp-119]
 0057EF49    call        StrLen
 0057EF4E    mov         ecx,eax
 0057EF50    lea         edx,[ebp-119]
 0057EF56    mov         eax,dword ptr [ebp-8]
 0057EF59    call        @LStrFromPCharLen
>0057EF5E    jmp         0057EF68
 0057EF60    mov         eax,dword ptr [ebp-8]
 0057EF63    call        @LStrClr
 0057EF68    cmp         byte ptr [ebp-1],61
>0057EF6C    jae         0057EF8E
 0057EF6E    lea         edx,[ebp-124]
 0057EF74    mov         eax,dword ptr [ebp-8]
 0057EF77    mov         eax,dword ptr [eax]
 0057EF79    call        0065D590
 0057EF7E    mov         edx,dword ptr [ebp-124]
 0057EF84    mov         eax,dword ptr [ebp-8]
 0057EF87    call        @LStrAsg
>0057EF8C    jmp         0057EFAC
 0057EF8E    lea         edx,[ebp-128]
 0057EF94    mov         eax,dword ptr [ebp-8]
 0057EF97    mov         eax,dword ptr [eax]
 0057EF99    call        0065D4BC
 0057EF9E    mov         edx,dword ptr [ebp-128]
 0057EFA4    mov         eax,dword ptr [ebp-8]
 0057EFA7    call        @LStrAsg
 0057EFAC    lea         eax,[ebp-12C]
 0057EFB2    push        eax
 0057EFB3    mov         eax,dword ptr [ebp-8]
 0057EFB6    mov         eax,dword ptr [eax]
 0057EFB8    mov         dword ptr [ebp-134],eax
 0057EFBE    mov         byte ptr [ebp-130],0B
 0057EFC5    lea         edx,[ebp-134]
 0057EFCB    xor         ecx,ecx
 0057EFCD    mov         eax,57F040;'[%s]'
 0057EFD2    call        00658FBC
 0057EFD7    mov         edx,dword ptr [ebp-12C]
 0057EFDD    mov         eax,dword ptr [ebp-8]
 0057EFE0    call        @LStrAsg
 0057EFE5    xor         eax,eax
 0057EFE7    pop         edx
 0057EFE8    pop         ecx
 0057EFE9    pop         ecx
 0057EFEA    mov         dword ptr fs:[eax],edx
 0057EFED    push        57F003
 0057EFF2    mov         eax,dword ptr [ebp-0C]
 0057EFF5    push        eax
 0057EFF6    call        KERNEL32.SetErrorMode
 0057EFFB    ret
>0057EFFC    jmp         @HandleFinally
>0057F001    jmp         0057EFF2
 0057F003    xor         eax,eax
 0057F005    pop         edx
 0057F006    pop         ecx
 0057F007    pop         ecx
 0057F008    mov         dword ptr fs:[eax],edx
 0057F00B    push        57F028
 0057F010    lea         eax,[ebp-12C]
 0057F016    mov         edx,4
 0057F01B    call        @LStrArrayClr
 0057F020    ret
>0057F021    jmp         @HandleFinally
>0057F026    jmp         0057F010
 0057F028    mov         esp,ebp
 0057F02A    pop         ebp
 0057F02B    ret
end;*}

//0057F048
{*procedure sub_0057F048(?:Char; ?:?);
begin
 0057F048    push        ebp
 0057F049    mov         ebp,esp
 0057F04B    add         esp,0FFFFFEE0
 0057F051    xor         ecx,ecx
 0057F053    mov         dword ptr [ebp-120],ecx
 0057F059    mov         dword ptr [ebp-11C],ecx
 0057F05F    mov         dword ptr [ebp-8],edx
 0057F062    mov         byte ptr [ebp-1],al
 0057F065    xor         eax,eax
 0057F067    push        ebp
 0057F068    push        57F125
 0057F06D    push        dword ptr fs:[eax]
 0057F070    mov         dword ptr fs:[eax],esp
 0057F073    mov         dword ptr [ebp-10],105
 0057F07A    mov         al,byte ptr [ebp-1]
 0057F07D    call        UpCase
 0057F082    mov         byte ptr [ebp-0C],al
 0057F085    mov         byte ptr [ebp-0B],3A
 0057F089    mov         byte ptr [ebp-0A],0
 0057F08D    lea         eax,[ebp-10]
 0057F090    push        eax
 0057F091    lea         eax,[ebp-115]
 0057F097    push        eax
 0057F098    lea         eax,[ebp-0C]
 0057F09B    push        eax
 0057F09C    call        MPR.WNetGetConnectionA
 0057F0A1    test        eax,eax
>0057F0A3    jne         0057F0FC
 0057F0A5    lea         edx,[ebp-115]
 0057F0AB    mov         eax,dword ptr [ebp-8]
 0057F0AE    mov         ecx,dword ptr [ebp-10]
 0057F0B1    call        @LStrFromPCharLen
 0057F0B6    cmp         byte ptr [ebp-1],61
>0057F0BA    jae         0057F0DC
 0057F0BC    lea         edx,[ebp-11C]
 0057F0C2    mov         eax,dword ptr [ebp-8]
 0057F0C5    mov         eax,dword ptr [eax]
 0057F0C7    call        0065D590
 0057F0CC    mov         edx,dword ptr [ebp-11C]
 0057F0D2    mov         eax,dword ptr [ebp-8]
 0057F0D5    call        @LStrAsg
>0057F0DA    jmp         0057F107
 0057F0DC    lea         edx,[ebp-120]
 0057F0E2    mov         eax,dword ptr [ebp-8]
 0057F0E5    mov         eax,dword ptr [eax]
 0057F0E7    call        0065D4BC
 0057F0EC    mov         edx,dword ptr [ebp-120]
 0057F0F2    mov         eax,dword ptr [ebp-8]
 0057F0F5    call        @LStrAsg
>0057F0FA    jmp         0057F107
 0057F0FC    mov         edx,dword ptr [ebp-8]
 0057F0FF    mov         al,byte ptr [ebp-1]
 0057F102    call        0057EEA0
 0057F107    xor         eax,eax
 0057F109    pop         edx
 0057F10A    pop         ecx
 0057F10B    pop         ecx
 0057F10C    mov         dword ptr fs:[eax],edx
 0057F10F    push        57F12C
 0057F114    lea         eax,[ebp-120]
 0057F11A    mov         edx,2
 0057F11F    call        @LStrArrayClr
 0057F124    ret
>0057F125    jmp         @HandleFinally
>0057F12A    jmp         0057F114
 0057F12C    mov         esp,ebp
 0057F12E    pop         ebp
 0057F12F    ret
end;*}

//0057F130
{*procedure sub_0057F130(?:?; ?:?; ?:?; ?:?);
begin
 0057F130    push        ebp
 0057F131    mov         ebp,esp
 0057F133    push        0
 0057F135    push        0
 0057F137    push        0
 0057F139    push        0
 0057F13B    push        0
 0057F13D    push        0
 0057F13F    push        0
 0057F141    push        ebx
 0057F142    mov         dword ptr [ebp-0C],ecx
 0057F145    mov         dword ptr [ebp-8],edx
 0057F148    mov         dword ptr [ebp-4],eax
 0057F14B    xor         eax,eax
 0057F14D    push        ebp
 0057F14E    push        57F424
 0057F153    push        dword ptr fs:[eax]
 0057F156    mov         dword ptr fs:[eax],esp
 0057F159    lea         edx,[ebp-10]
 0057F15C    xor         eax,eax
 0057F15E    call        @LGetDir
 0057F163    mov         eax,dword ptr [ebp-10]
 0057F166    mov         al,byte ptr [eax]
 0057F168    mov         edx,dword ptr [ebp-8]
 0057F16B    mov         byte ptr [edx],al
 0057F16D    mov         eax,dword ptr [ebp-0C]
 0057F170    mov         edx,dword ptr [ebp-4]
 0057F173    call        @LStrAsg
 0057F178    mov         eax,dword ptr [ebp-0C]
 0057F17B    mov         eax,dword ptr [eax]
 0057F17D    cmp         byte ptr [eax],5B
>0057F180    jne         0057F1B5
 0057F182    mov         eax,dword ptr [ebp-0C]
 0057F185    mov         eax,dword ptr [eax]
 0057F187    call        00658280
 0057F18C    cmp         byte ptr [eax],5D
>0057F18F    jne         0057F1B5
 0057F191    mov         eax,dword ptr [ebp-0C]
 0057F194    push        eax
 0057F195    mov         eax,dword ptr [ebp-0C]
 0057F198    mov         eax,dword ptr [eax]
 0057F19A    call        @LStrLen
 0057F19F    mov         ecx,eax
 0057F1A1    sub         ecx,2
 0057F1A4    mov         eax,dword ptr [ebp-0C]
 0057F1A7    mov         eax,dword ptr [eax]
 0057F1A9    mov         edx,2
 0057F1AE    call        @LStrCopy
>0057F1B3    jmp         0057F21A
 0057F1B5    lea         edx,[ebp-14]
 0057F1B8    mov         eax,dword ptr [ebp-0C]
 0057F1BB    mov         eax,dword ptr [eax]
 0057F1BD    call        006584B8
 0057F1C2    mov         eax,dword ptr [ebp-14]
 0057F1C5    call        @LStrLen
 0057F1CA    test        eax,eax
>0057F1CC    jne         0057F1DB
 0057F1CE    lea         edx,[ebp-14]
 0057F1D1    mov         eax,dword ptr [ebp-10]
 0057F1D4    call        006584B8
>0057F1D9    jmp         0057F1F2
 0057F1DB    mov         eax,dword ptr [ebp-14]
 0057F1DE    call        @LStrLen
 0057F1E3    mov         ecx,eax
 0057F1E5    mov         eax,dword ptr [ebp-0C]
 0057F1E8    mov         edx,1
 0057F1ED    call        @LStrDelete
 0057F1F2    mov         eax,dword ptr [ebp-14]
 0057F1F5    call        @LStrLen
 0057F1FA    cmp         eax,2
>0057F1FD    jl          0057F214
 0057F1FF    mov         eax,dword ptr [ebp-14]
 0057F202    cmp         byte ptr [eax+1],3A
>0057F206    jne         0057F214
 0057F208    mov         eax,dword ptr [ebp-14]
 0057F20B    mov         al,byte ptr [eax]
 0057F20D    mov         edx,dword ptr [ebp-8]
 0057F210    mov         byte ptr [edx],al
>0057F212    jmp         0057F21A
 0057F214    mov         eax,dword ptr [ebp-8]
 0057F217    mov         byte ptr [eax],0
 0057F21A    xor         eax,eax
 0057F21C    push        ebp
 0057F21D    push        57F402
 0057F222    push        dword ptr fs:[eax]
 0057F225    mov         dword ptr fs:[eax],esp
 0057F228    mov         eax,dword ptr [ebp-14]
 0057F22B    call        00582204
 0057F230    test        al,al
>0057F232    je          0057F241
 0057F234    mov         eax,dword ptr [ebp-14]
 0057F237    call        ChDir
 0057F23C    call        @_IOTest
 0057F241    lea         edx,[ebp-18]
 0057F244    mov         eax,dword ptr [ebp-0C]
 0057F247    mov         eax,dword ptr [eax]
 0057F249    call        00658580
 0057F24E    mov         edx,dword ptr [ebp-18]
 0057F251    mov         eax,dword ptr [ebp+8]
 0057F254    call        @LStrAsg
 0057F259    mov         eax,dword ptr [ebp-0C]
 0057F25C    mov         eax,dword ptr [eax]
 0057F25E    call        @LStrLen
 0057F263    mov         ebx,eax
 0057F265    mov         eax,dword ptr [ebp+8]
 0057F268    mov         eax,dword ptr [eax]
 0057F26A    call        @LStrLen
 0057F26F    inc         eax
 0057F270    cmp         ebx,eax
>0057F272    jne         0057F286
 0057F274    mov         eax,dword ptr [ebp-0C]
 0057F277    mov         edx,57F43C;'\'
 0057F27C    call        @LStrAsg
>0057F281    jmp         0057F30C
 0057F286    mov         eax,dword ptr [ebp-0C]
 0057F289    mov         eax,dword ptr [eax]
 0057F28B    call        @LStrLen
 0057F290    mov         ebx,eax
 0057F292    mov         eax,dword ptr [ebp+8]
 0057F295    mov         eax,dword ptr [eax]
 0057F297    call        @LStrLen
 0057F29C    cmp         ebx,eax
>0057F29E    jle         0057F2C3
 0057F2A0    mov         eax,dword ptr [ebp-0C]
 0057F2A3    mov         eax,dword ptr [eax]
 0057F2A5    call        @LStrLen
 0057F2AA    push        eax
 0057F2AB    mov         eax,dword ptr [ebp+8]
 0057F2AE    mov         eax,dword ptr [eax]
 0057F2B0    call        @LStrLen
 0057F2B5    pop         edx
 0057F2B6    sub         edx,eax
 0057F2B8    dec         edx
 0057F2B9    mov         eax,dword ptr [ebp-0C]
 0057F2BC    call        @LStrSetLength
>0057F2C1    jmp         0057F30C
 0057F2C3    mov         edx,dword ptr [ebp-0C]
 0057F2C6    xor         eax,eax
 0057F2C8    call        @LGetDir
 0057F2CD    lea         edx,[ebp-1C]
 0057F2D0    mov         eax,dword ptr [ebp-0C]
 0057F2D3    mov         eax,dword ptr [eax]
 0057F2D5    call        006584B8
 0057F2DA    mov         eax,dword ptr [ebp-1C]
 0057F2DD    call        @LStrLen
 0057F2E2    mov         ecx,eax
 0057F2E4    mov         eax,dword ptr [ebp-0C]
 0057F2E7    mov         edx,1
 0057F2EC    call        @LStrDelete
 0057F2F1    mov         eax,dword ptr [ebp-0C]
 0057F2F4    mov         eax,dword ptr [eax]
 0057F2F6    call        @LStrLen
 0057F2FB    test        eax,eax
>0057F2FD    jne         0057F30C
 0057F2FF    mov         eax,dword ptr [ebp-0C]
 0057F302    mov         edx,57F43C;'\'
 0057F307    call        @LStrAsg
 0057F30C    mov         eax,dword ptr [ebp-0C]
 0057F30F    mov         eax,dword ptr [eax]
 0057F311    call        @LStrLen
 0057F316    test        eax,eax
>0057F318    jle         0057F329
 0057F31A    mov         eax,dword ptr [ebp-0C]
 0057F31D    mov         eax,dword ptr [eax]
 0057F31F    call        ChDir
 0057F324    call        @_IOTest
 0057F329    mov         eax,dword ptr [ebp+8]
 0057F32C    mov         eax,dword ptr [eax]
 0057F32E    call        @LStrLen
 0057F333    test        eax,eax
>0057F335    jle         0057F3C3
 0057F33B    mov         edx,dword ptr [ebp+8]
 0057F33E    mov         edx,dword ptr [edx]
 0057F340    mov         eax,57F448;'*'
 0057F345    call        @LStrPos
 0057F34A    test        eax,eax
>0057F34C    jg          0057F3C3
 0057F34E    mov         edx,dword ptr [ebp+8]
 0057F351    mov         edx,dword ptr [edx]
 0057F353    mov         eax,57F454;'?'
 0057F358    call        @LStrPos
 0057F35D    test        eax,eax
>0057F35F    jg          0057F3C3
 0057F361    mov         eax,dword ptr [ebp+8]
 0057F364    mov         eax,dword ptr [eax]
 0057F366    call        00658094
 0057F36B    test        al,al
>0057F36D    jne         0057F3C3
 0057F36F    mov         eax,dword ptr [ebp+8]
 0057F372    mov         eax,dword ptr [eax]
 0057F374    call        ChDir
 0057F379    call        @_IOTest
 0057F37E    mov         eax,dword ptr [ebp-0C]
 0057F381    mov         eax,dword ptr [eax]
 0057F383    call        @LStrLen
 0057F388    dec         eax
>0057F389    jne         0057F39F
 0057F38B    mov         ecx,dword ptr [ebp+8]
 0057F38E    mov         ecx,dword ptr [ecx]
 0057F390    mov         eax,dword ptr [ebp-0C]
 0057F393    mov         edx,57F43C;'\'
 0057F398    call        @LStrCat3
>0057F39D    jmp         0057F3BB
 0057F39F    mov         eax,dword ptr [ebp-0C]
 0057F3A2    push        dword ptr [eax]
 0057F3A4    push        57F43C;'\'
 0057F3A9    mov         eax,dword ptr [ebp+8]
 0057F3AC    push        dword ptr [eax]
 0057F3AE    mov         eax,dword ptr [ebp-0C]
 0057F3B1    mov         edx,3
 0057F3B6    call        @LStrCatN
 0057F3BB    mov         eax,dword ptr [ebp+8]
 0057F3BE    call        @LStrClr
 0057F3C3    mov         eax,dword ptr [ebp-8]
 0057F3C6    cmp         byte ptr [eax],0
>0057F3C9    jne         0057F3DB
 0057F3CB    mov         ecx,dword ptr [ebp-0C]
 0057F3CE    mov         ecx,dword ptr [ecx]
 0057F3D0    mov         eax,dword ptr [ebp-0C]
 0057F3D3    mov         edx,dword ptr [ebp-14]
 0057F3D6    call        @LStrCat3
 0057F3DB    xor         eax,eax
 0057F3DD    pop         edx
 0057F3DE    pop         ecx
 0057F3DF    pop         ecx
 0057F3E0    mov         dword ptr fs:[eax],edx
 0057F3E3    push        57F409
 0057F3E8    mov         eax,dword ptr [ebp-10]
 0057F3EB    call        00582204
 0057F3F0    test        al,al
>0057F3F2    je          0057F401
 0057F3F4    mov         eax,dword ptr [ebp-10]
 0057F3F7    call        ChDir
 0057F3FC    call        @_IOTest
 0057F401    ret
>0057F402    jmp         @HandleFinally
>0057F407    jmp         0057F3E8
 0057F409    xor         eax,eax
 0057F40B    pop         edx
 0057F40C    pop         ecx
 0057F40D    pop         ecx
 0057F40E    mov         dword ptr fs:[eax],edx
 0057F411    push        57F42B
 0057F416    lea         eax,[ebp-1C]
 0057F419    mov         edx,4
 0057F41E    call        @LStrArrayClr
 0057F423    ret
>0057F424    jmp         @HandleFinally
>0057F429    jmp         0057F416
 0057F42B    pop         ebx
 0057F42C    mov         esp,ebp
 0057F42E    pop         ebp
 0057F42F    ret         4
end;*}

//0057F458
{*function sub_0057F458(?:TFont):?;
begin
 0057F458    push        ebp
 0057F459    mov         ebp,esp
 0057F45B    add         esp,0FFFFFFB8
 0057F45E    mov         dword ptr [ebp-4],eax
 0057F461    push        0
 0057F463    call        USER32.GetDC
 0057F468    mov         dword ptr [ebp-0C],eax
 0057F46B    mov         eax,dword ptr [ebp-4]
 0057F46E    call        TFont.GetHandle
 0057F473    push        eax
 0057F474    mov         eax,dword ptr [ebp-0C]
 0057F477    push        eax
 0057F478    call        GDI32.SelectObject
 0057F47D    mov         dword ptr [ebp-10],eax
 0057F480    lea         eax,[ebp-48]
 0057F483    push        eax
 0057F484    mov         eax,dword ptr [ebp-0C]
 0057F487    push        eax
 0057F488    call        GDI32.GetTextMetricsA
 0057F48D    mov         eax,dword ptr [ebp-10]
 0057F490    push        eax
 0057F491    mov         eax,dword ptr [ebp-0C]
 0057F494    push        eax
 0057F495    call        GDI32.SelectObject
 0057F49A    mov         eax,dword ptr [ebp-0C]
 0057F49D    push        eax
 0057F49E    push        0
 0057F4A0    call        USER32.ReleaseDC
 0057F4A5    mov         eax,dword ptr [ebp-48]
 0057F4A8    mov         dword ptr [ebp-8],eax
 0057F4AB    mov         eax,dword ptr [ebp-8]
 0057F4AE    mov         esp,ebp
 0057F4B0    pop         ebp
 0057F4B1    ret
end;*}

//0057F4B4
constructor TDriveComboBox.Create(AOwner:TComponent);
begin
{*
 0057F4B4    push        ebp
 0057F4B5    mov         ebp,esp
 0057F4B7    add         esp,0FFFFFEF4
 0057F4BD    test        dl,dl
>0057F4BF    je          0057F4C9
 0057F4C1    add         esp,0FFFFFFF0
 0057F4C4    call        @ClassCreate
 0057F4C9    mov         dword ptr [ebp-0C],ecx
 0057F4CC    mov         byte ptr [ebp-5],dl
 0057F4CF    mov         dword ptr [ebp-4],eax
 0057F4D2    mov         ecx,dword ptr [ebp-0C]
 0057F4D5    xor         edx,edx
 0057F4D7    mov         eax,dword ptr [ebp-4]
 0057F4DA    call        TCustomComboBox.Create
 0057F4DF    mov         dl,3
 0057F4E1    mov         eax,dword ptr [ebp-4]
 0057F4E4    mov         ecx,dword ptr [eax]
 0057F4E6    call        dword ptr [ecx+114];TComboBox.SetStyle
 0057F4EC    mov         eax,dword ptr [ebp-4]
 0057F4EF    call        0057FD00
 0057F4F4    lea         edx,[ebp-10C]
 0057F4FA    mov         ecx,0FF
 0057F4FF    xor         eax,eax
 0057F501    call        @SGetDir
 0057F506    mov         eax,dword ptr [ebp-4]
 0057F509    mov         dl,byte ptr [ebp-10B]
 0057F50F    mov         byte ptr [eax+294],dl;TDriveComboBox.FDrive:Char
 0057F515    mov         eax,dword ptr [ebp-4]
 0057F518    cmp         byte ptr [eax+294],5C;TDriveComboBox.FDrive:Char
>0057F51F    jne         0057F52B
 0057F521    mov         eax,dword ptr [ebp-4]
 0057F524    mov         byte ptr [eax+294],0;TDriveComboBox.FDrive:Char
 0057F52B    mov         eax,dword ptr [ebp-4]
 0057F52E    call        0057FCB0
 0057F533    mov         eax,dword ptr [ebp-4]
 0057F536    cmp         byte ptr [ebp-5],0
>0057F53A    je          0057F54B
 0057F53C    call        @AfterConstruction
 0057F541    pop         dword ptr fs:[0]
 0057F548    add         esp,0C
 0057F54B    mov         eax,dword ptr [ebp-4]
 0057F54E    mov         esp,ebp
 0057F550    pop         ebp
 0057F551    ret
*}
end;

//0057F554
destructor TDriveComboBox.Destroy;
begin
{*
 0057F554    push        ebp
 0057F555    mov         ebp,esp
 0057F557    add         esp,0FFFFFFF8
 0057F55A    call        @BeforeDestruction
 0057F55F    mov         byte ptr [ebp-5],dl
 0057F562    mov         dword ptr [ebp-4],eax
 0057F565    mov         eax,dword ptr [ebp-4]
 0057F568    mov         eax,dword ptr [eax+298];TDriveComboBox.FloppyBMP:TBitmap
 0057F56E    call        TObject.Free
 0057F573    mov         eax,dword ptr [ebp-4]
 0057F576    mov         eax,dword ptr [eax+29C];TDriveComboBox.FixedBMP:TBitmap
 0057F57C    call        TObject.Free
 0057F581    mov         eax,dword ptr [ebp-4]
 0057F584    mov         eax,dword ptr [eax+2A0];TDriveComboBox.NetworkBMP:TBitmap
 0057F58A    call        TObject.Free
 0057F58F    mov         eax,dword ptr [ebp-4]
 0057F592    mov         eax,dword ptr [eax+2A4];TDriveComboBox.CDROMBMP:TBitmap
 0057F598    call        TObject.Free
 0057F59D    mov         eax,dword ptr [ebp-4]
 0057F5A0    mov         eax,dword ptr [eax+2A8];TDriveComboBox.RAMBMP:TBitmap
 0057F5A6    call        TObject.Free
 0057F5AB    mov         dl,byte ptr [ebp-5]
 0057F5AE    and         dl,0FC
 0057F5B1    mov         eax,dword ptr [ebp-4]
 0057F5B4    call        TCustomComboBox.Destroy
 0057F5B9    cmp         byte ptr [ebp-5],0
>0057F5BD    jle         0057F5C7
 0057F5BF    mov         eax,dword ptr [ebp-4]
 0057F5C2    call        @ClassDestroy
 0057F5C7    pop         ecx
 0057F5C8    pop         ecx
 0057F5C9    pop         ebp
 0057F5CA    ret
*}
end;

//0057F5CC
{*procedure sub_0057F5CC(?:?; ?:TBitmap; ?:?);
begin
 0057F5CC    push        ebp
 0057F5CD    mov         ebp,esp
 0057F5CF    add         esp,0FFFFFFE4
 0057F5D2    push        ebx
 0057F5D3    xor         ecx,ecx
 0057F5D5    mov         dword ptr [ebp-0C],ecx
 0057F5D8    mov         dword ptr [ebp-8],edx
 0057F5DB    mov         dword ptr [ebp-4],eax
 0057F5DE    xor         eax,eax
 0057F5E0    push        ebp
 0057F5E1    push        57F646
 0057F5E6    push        dword ptr fs:[eax]
 0057F5E9    mov         dword ptr fs:[eax],esp
 0057F5EC    lea         eax,[ebp-0C]
 0057F5EF    push        eax
 0057F5F0    mov         eax,dword ptr [ebp+8]
 0057F5F3    mov         al,byte ptr [eax-5]
 0057F5F6    mov         byte ptr [ebp-1C],al
 0057F5F9    mov         byte ptr [ebp-18],2
 0057F5FD    mov         eax,dword ptr [ebp-4]
 0057F600    mov         dword ptr [ebp-14],eax
 0057F603    mov         byte ptr [ebp-10],0B
 0057F607    lea         edx,[ebp-1C]
 0057F60A    mov         ecx,1
 0057F60F    mov         eax,57F65C;'%s: %s'
 0057F614    call        00658FBC
 0057F619    mov         edx,dword ptr [ebp-0C]
 0057F61C    mov         eax,dword ptr [ebp+8]
 0057F61F    mov         eax,dword ptr [eax-4]
 0057F622    mov         eax,dword ptr [eax+23C]
 0057F628    mov         ecx,dword ptr [ebp-8]
 0057F62B    mov         ebx,dword ptr [eax]
 0057F62D    call        dword ptr [ebx+3C]
 0057F630    xor         eax,eax
 0057F632    pop         edx
 0057F633    pop         ecx
 0057F634    pop         ecx
 0057F635    mov         dword ptr fs:[eax],edx
 0057F638    push        57F64D
 0057F63D    lea         eax,[ebp-0C]
 0057F640    call        @LStrClr
 0057F645    ret
>0057F646    jmp         @HandleFinally
>0057F64B    jmp         0057F63D
 0057F64D    pop         ebx
 0057F64E    mov         esp,ebp
 0057F650    pop         ebp
 0057F651    ret
end;*}

//0057F664
procedure sub_0057F664;
begin
{*
 0057F664    push        ebp
 0057F665    mov         ebp,esp
 0057F667    add         esp,0FFFFFFCC
 0057F66A    push        ebx
 0057F66B    xor         edx,edx
 0057F66D    mov         dword ptr [ebp-34],edx
 0057F670    mov         dword ptr [ebp-30],edx
 0057F673    mov         dword ptr [ebp-2C],edx
 0057F676    mov         dword ptr [ebp-28],edx
 0057F679    mov         dword ptr [ebp-1C],edx
 0057F67C    mov         dword ptr [ebp-18],edx
 0057F67F    mov         dword ptr [ebp-4],eax
 0057F682    xor         eax,eax
 0057F684    push        ebp
 0057F685    push        57F833
 0057F68A    push        dword ptr fs:[eax]
 0057F68D    mov         dword ptr fs:[eax],esp
 0057F690    mov         eax,dword ptr [ebp-4]
 0057F693    mov         edx,dword ptr [eax]
 0057F695    call        dword ptr [edx+0D4];TCustomCombo.Clear
 0057F69B    call        KERNEL32.GetLogicalDrives
 0057F6A0    mov         dword ptr [ebp-11],eax
 0057F6A3    xor         eax,eax
 0057F6A5    mov         dword ptr [ebp-0C],eax
 0057F6A8    mov         eax,dword ptr [ebp-0C]
 0057F6AB    cmp         eax,1F
>0057F6AE    ja          0057F6B4
 0057F6B0    bt          dword ptr [ebp-11],eax
>0057F6B4    jae         0057F7FE
 0057F6BA    mov         al,byte ptr [ebp-0C]
 0057F6BD    add         al,61
 0057F6BF    mov         byte ptr [ebp-5],al
 0057F6C2    lea         eax,[ebp-18]
 0057F6C5    mov         dl,byte ptr [ebp-5]
 0057F6C8    call        @LStrFromChar
 0057F6CD    lea         eax,[ebp-18]
 0057F6D0    mov         edx,57F848;':\'
 0057F6D5    call        @LStrCat
 0057F6DA    mov         eax,dword ptr [ebp-18]
 0057F6DD    call        @LStrToPChar
 0057F6E2    push        eax
 0057F6E3    call        KERNEL32.GetDriveTypeA
 0057F6E8    mov         byte ptr [ebp-0D],al
 0057F6EB    mov         eax,dword ptr [ebp-4]
 0057F6EE    cmp         byte ptr [eax+295],1;TDriveComboBox.TextCase:TTextCase
>0057F6F5    jne         0057F702
 0057F6F7    mov         al,byte ptr [ebp-5]
 0057F6FA    call        UpCase
 0057F6FF    mov         byte ptr [ebp-5],al
 0057F702    xor         eax,eax
 0057F704    mov         al,byte ptr [ebp-0D]
 0057F707    cmp         eax,6
>0057F70A    ja          0057F7FE
 0057F710    jmp         dword ptr [eax*4+57F717]
 0057F710    dd          0057F7FE
 0057F710    dd          0057F7FE
 0057F710    dd          0057F733
 0057F710    dd          0057F780
 0057F710    dd          0057F7A0
 0057F710    dd          0057F7C0
 0057F710    dd          0057F7E0
 0057F733    lea         eax,[ebp-20]
 0057F736    mov         dl,byte ptr [ebp-5]
 0057F739    mov         byte ptr [eax+1],dl
 0057F73C    mov         byte ptr [eax],1
 0057F73F    lea         edx,[ebp-20]
 0057F742    lea         eax,[ebp-24]
 0057F745    call        @PStrCpy
 0057F74A    mov         edx,57F84C;':'
 0057F74F    lea         eax,[ebp-24]
 0057F752    mov         cl,2
 0057F754    call        @PStrNCat
 0057F759    lea         edx,[ebp-24]
 0057F75C    lea         eax,[ebp-1C]
 0057F75F    call        @LStrFromString
 0057F764    mov         edx,dword ptr [ebp-1C]
 0057F767    mov         eax,dword ptr [ebp-4]
 0057F76A    mov         ecx,dword ptr [eax+298];TDriveComboBox.FloppyBMP:TBitmap
 0057F770    mov         eax,dword ptr [ebp-4]
 0057F773    mov         eax,dword ptr [eax+23C];TDriveComboBox.FItems:TStrings
 0057F779    mov         ebx,dword ptr [eax]
 0057F77B    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
>0057F77E    jmp         0057F7FE
 0057F780    push        ebp
 0057F781    lea         edx,[ebp-28]
 0057F784    mov         al,byte ptr [ebp-5]
 0057F787    call        0057EEA0
 0057F78C    mov         eax,dword ptr [ebp-28]
 0057F78F    mov         edx,dword ptr [ebp-4]
 0057F792    mov         edx,dword ptr [edx+29C];TDriveComboBox.FixedBMP:TBitmap
 0057F798    call        0057F5CC
 0057F79D    pop         ecx
>0057F79E    jmp         0057F7FE
 0057F7A0    push        ebp
 0057F7A1    lea         edx,[ebp-2C]
 0057F7A4    mov         al,byte ptr [ebp-5]
 0057F7A7    call        0057F048
 0057F7AC    mov         eax,dword ptr [ebp-2C]
 0057F7AF    mov         edx,dword ptr [ebp-4]
 0057F7B2    mov         edx,dword ptr [edx+2A0];TDriveComboBox.NetworkBMP:TBitmap
 0057F7B8    call        0057F5CC
 0057F7BD    pop         ecx
>0057F7BE    jmp         0057F7FE
 0057F7C0    push        ebp
 0057F7C1    lea         edx,[ebp-30]
 0057F7C4    mov         al,byte ptr [ebp-5]
 0057F7C7    call        0057EEA0
 0057F7CC    mov         eax,dword ptr [ebp-30]
 0057F7CF    mov         edx,dword ptr [ebp-4]
 0057F7D2    mov         edx,dword ptr [edx+2A4];TDriveComboBox.CDROMBMP:TBitmap
 0057F7D8    call        0057F5CC
 0057F7DD    pop         ecx
>0057F7DE    jmp         0057F7FE
 0057F7E0    push        ebp
 0057F7E1    lea         edx,[ebp-34]
 0057F7E4    mov         al,byte ptr [ebp-5]
 0057F7E7    call        0057EEA0
 0057F7EC    mov         eax,dword ptr [ebp-34]
 0057F7EF    mov         edx,dword ptr [ebp-4]
 0057F7F2    mov         edx,dword ptr [edx+2A8];TDriveComboBox.RAMBMP:TBitmap
 0057F7F8    call        0057F5CC
 0057F7FD    pop         ecx
 0057F7FE    inc         dword ptr [ebp-0C]
 0057F801    cmp         dword ptr [ebp-0C],1A
>0057F805    jne         0057F6A8
 0057F80B    xor         eax,eax
 0057F80D    pop         edx
 0057F80E    pop         ecx
 0057F80F    pop         ecx
 0057F810    mov         dword ptr fs:[eax],edx
 0057F813    push        57F83A
 0057F818    lea         eax,[ebp-34]
 0057F81B    mov         edx,4
 0057F820    call        @LStrArrayClr
 0057F825    lea         eax,[ebp-1C]
 0057F828    mov         edx,2
 0057F82D    call        @LStrArrayClr
 0057F832    ret
>0057F833    jmp         @HandleFinally
>0057F838    jmp         0057F818
 0057F83A    pop         ebx
 0057F83B    mov         esp,ebp
 0057F83D    pop         ebp
 0057F83E    ret
*}
end;

//0057F850
procedure sub_0057F850(?:TDriveComboBox; ?:Char);
begin
{*
 0057F850    push        ebp
 0057F851    mov         ebp,esp
 0057F853    add         esp,0FFFFFFEC
 0057F856    push        ebx
 0057F857    push        esi
 0057F858    xor         ecx,ecx
 0057F85A    mov         dword ptr [ebp-10],ecx
 0057F85D    mov         byte ptr [ebp-5],dl
 0057F860    mov         dword ptr [ebp-4],eax
 0057F863    xor         eax,eax
 0057F865    push        ebp
 0057F866    push        57F9B3
 0057F86B    push        dword ptr fs:[eax]
 0057F86E    mov         dword ptr fs:[eax],esp
 0057F871    mov         eax,dword ptr [ebp-4]
 0057F874    mov         edx,dword ptr [eax]
 0057F876    call        dword ptr [edx+0C8]
 0057F87C    test        eax,eax
>0057F87E    jl          0057F8A0
 0057F880    mov         al,byte ptr [ebp-5]
 0057F883    call        UpCase
 0057F888    mov         ebx,eax
 0057F88A    mov         eax,dword ptr [ebp-4]
 0057F88D    mov         al,byte ptr [eax+294]
 0057F893    call        UpCase
 0057F898    cmp         bl,al
>0057F89A    je          0057F99D
 0057F8A0    cmp         byte ptr [ebp-5],0
>0057F8A4    jne         0057F8C5
 0057F8A6    mov         al,byte ptr [ebp-5]
 0057F8A9    mov         edx,dword ptr [ebp-4]
 0057F8AC    mov         byte ptr [edx+294],al
 0057F8B2    or          edx,0FFFFFFFF
 0057F8B5    mov         eax,dword ptr [ebp-4]
 0057F8B8    mov         ecx,dword ptr [eax]
 0057F8BA    call        dword ptr [ecx+0CC]
>0057F8C0    jmp         0057F96E
 0057F8C5    mov         eax,dword ptr [ebp-4]
 0057F8C8    cmp         byte ptr [eax+295],1
>0057F8CF    jne         0057F8E4
 0057F8D1    mov         al,byte ptr [ebp-5]
 0057F8D4    call        UpCase
 0057F8D9    mov         edx,dword ptr [ebp-4]
 0057F8DC    mov         byte ptr [edx+294],al
>0057F8E2    jmp         0057F8FD
 0057F8E4    mov         al,byte ptr [ebp-5]
 0057F8E7    call        UpCase
 0057F8EC    and         eax,0FF
 0057F8F1    add         eax,20
 0057F8F4    mov         edx,dword ptr [ebp-4]
 0057F8F7    mov         byte ptr [edx+294],al
 0057F8FD    mov         eax,dword ptr [ebp-4]
 0057F900    mov         eax,dword ptr [eax+23C]
 0057F906    mov         edx,dword ptr [eax]
 0057F908    call        dword ptr [edx+14]
 0057F90B    dec         eax
 0057F90C    test        eax,eax
>0057F90E    jl          0057F96E
 0057F910    inc         eax
 0057F911    mov         dword ptr [ebp-14],eax
 0057F914    mov         dword ptr [ebp-0C],0
 0057F91B    lea         ecx,[ebp-10]
 0057F91E    mov         edx,dword ptr [ebp-0C]
 0057F921    mov         eax,dword ptr [ebp-4]
 0057F924    mov         eax,dword ptr [eax+23C]
 0057F92A    mov         ebx,dword ptr [eax]
 0057F92C    call        dword ptr [ebx+0C]
 0057F92F    mov         eax,dword ptr [ebp-10]
 0057F932    mov         al,byte ptr [eax]
 0057F934    call        UpCase
 0057F939    mov         ebx,eax
 0057F93B    mov         eax,dword ptr [ebp-4]
 0057F93E    mov         al,byte ptr [eax+294]
 0057F944    call        UpCase
 0057F949    cmp         bl,al
>0057F94B    jne         0057F966
 0057F94D    mov         eax,dword ptr [ebp-10]
 0057F950    cmp         byte ptr [eax+1],3A
>0057F954    jne         0057F966
 0057F956    mov         edx,dword ptr [ebp-0C]
 0057F959    mov         eax,dword ptr [ebp-4]
 0057F95C    mov         ecx,dword ptr [eax]
 0057F95E    call        dword ptr [ecx+0CC]
>0057F964    jmp         0057F96E
 0057F966    inc         dword ptr [ebp-0C]
 0057F969    dec         dword ptr [ebp-14]
>0057F96C    jne         0057F91B
 0057F96E    mov         eax,dword ptr [ebp-4]
 0057F971    cmp         dword ptr [eax+290],0
>0057F978    je          0057F991
 0057F97A    mov         eax,dword ptr [ebp-4]
 0057F97D    mov         dl,byte ptr [eax+294]
 0057F983    mov         eax,dword ptr [ebp-4]
 0057F986    mov         eax,dword ptr [eax+290]
 0057F98C    call        0057FFA8
 0057F991    mov         eax,dword ptr [ebp-4]
 0057F994    mov         si,0FFB3
 0057F998    call        @CallDynaInst
 0057F99D    xor         eax,eax
 0057F99F    pop         edx
 0057F9A0    pop         ecx
 0057F9A1    pop         ecx
 0057F9A2    mov         dword ptr fs:[eax],edx
 0057F9A5    push        57F9BA
 0057F9AA    lea         eax,[ebp-10]
 0057F9AD    call        @LStrClr
 0057F9B2    ret
>0057F9B3    jmp         @HandleFinally
>0057F9B8    jmp         0057F9AA
 0057F9BA    pop         esi
 0057F9BB    pop         ebx
 0057F9BC    mov         esp,ebp
 0057F9BE    pop         ebp
 0057F9BF    ret
*}
end;

//0057F9C0
procedure TDriveComboBox.SetTextCase(Value:TTextCase);
begin
{*
 0057F9C0    push        ebp
 0057F9C1    mov         ebp,esp
 0057F9C3    add         esp,0FFFFFFF8
 0057F9C6    mov         byte ptr [ebp-5],dl
 0057F9C9    mov         dword ptr [ebp-4],eax
 0057F9CC    mov         al,byte ptr [ebp-5]
 0057F9CF    mov         edx,dword ptr [ebp-4]
 0057F9D2    mov         byte ptr [edx+295],al;TDriveComboBox.TextCase:TTextCase
 0057F9D8    mov         eax,dword ptr [ebp-4]
 0057F9DB    mov         al,byte ptr [eax+294];TDriveComboBox.FDrive:Char
 0057F9E1    mov         byte ptr [ebp-6],al
 0057F9E4    mov         eax,dword ptr [ebp-4]
 0057F9E7    mov         edx,dword ptr [eax]
 0057F9E9    call        dword ptr [edx+118];TDriveComboBox.sub_0057F664
 0057F9EF    mov         dl,byte ptr [ebp-6]
 0057F9F2    mov         eax,dword ptr [ebp-4]
 0057F9F5    call        0057F850
 0057F9FA    pop         ecx
 0057F9FB    pop         ecx
 0057F9FC    pop         ebp
 0057F9FD    ret
*}
end;

//0057FA00
procedure TDriveComboBox.SetDirList(Value:TDirectoryListBox);
begin
{*
 0057FA00    push        ebp
 0057FA01    mov         ebp,esp
 0057FA03    add         esp,0FFFFFFF8
 0057FA06    mov         dword ptr [ebp-8],edx
 0057FA09    mov         dword ptr [ebp-4],eax
 0057FA0C    mov         eax,dword ptr [ebp-4]
 0057FA0F    cmp         dword ptr [eax+290],0;TDriveComboBox.DirList:TDirectoryListBox
>0057FA16    je          0057FA29
 0057FA18    mov         eax,dword ptr [ebp-4]
 0057FA1B    mov         eax,dword ptr [eax+290];TDriveComboBox.DirList:TDirectoryListBox
 0057FA21    xor         edx,edx
 0057FA23    mov         dword ptr [eax+284],edx;TDirectoryListBox.FDriveCombo:TDriveComboBox
 0057FA29    mov         eax,dword ptr [ebp-8]
 0057FA2C    mov         edx,dword ptr [ebp-4]
 0057FA2F    mov         dword ptr [edx+290],eax;TDriveComboBox.DirList:TDirectoryListBox
 0057FA35    mov         eax,dword ptr [ebp-4]
 0057FA38    cmp         dword ptr [eax+290],0;TDriveComboBox.DirList:TDirectoryListBox
>0057FA3F    je          0057FA64
 0057FA41    mov         eax,dword ptr [ebp-4]
 0057FA44    mov         eax,dword ptr [eax+290];TDriveComboBox.DirList:TDirectoryListBox
 0057FA4A    mov         edx,dword ptr [ebp-4]
 0057FA4D    mov         dword ptr [eax+284],edx;TDirectoryListBox.FDriveCombo:TDriveComboBox
 0057FA53    mov         edx,dword ptr [ebp-4]
 0057FA56    mov         eax,dword ptr [ebp-4]
 0057FA59    mov         eax,dword ptr [eax+290];TDriveComboBox.DirList:TDirectoryListBox
 0057FA5F    call        TComponent.FreeNotification
 0057FA64    pop         ecx
 0057FA65    pop         ecx
 0057FA66    pop         ebp
 0057FA67    ret
*}
end;

//0057FA68
procedure TDriveComboBox.CreateWnd;
begin
{*
 0057FA68    push        ebp
 0057FA69    mov         ebp,esp
 0057FA6B    push        ecx
 0057FA6C    mov         dword ptr [ebp-4],eax
 0057FA6F    mov         eax,dword ptr [ebp-4]
 0057FA72    call        TCustomComboBox.CreateWnd
 0057FA77    mov         eax,dword ptr [ebp-4]
 0057FA7A    mov         edx,dword ptr [eax]
 0057FA7C    call        dword ptr [edx+118];TDriveComboBox.sub_0057F664
 0057FA82    mov         eax,dword ptr [ebp-4]
 0057FA85    mov         dl,byte ptr [eax+294];TDriveComboBox.FDrive:Char
 0057FA8B    mov         eax,dword ptr [ebp-4]
 0057FA8E    call        0057F850
 0057FA93    pop         ecx
 0057FA94    pop         ebp
 0057FA95    ret
*}
end;

//0057FA98
{*procedure sub_0057FA98(?:?; ?:?);
begin
 0057FA98    push        ebp
 0057FA99    mov         ebp,esp
 0057FA9B    add         esp,0FFFFFFB8
 0057FA9E    push        ebx
 0057FA9F    push        esi
 0057FAA0    push        edi
 0057FAA1    xor         ebx,ebx
 0057FAA3    mov         dword ptr [ebp-48],ebx
 0057FAA6    mov         esi,ecx
 0057FAA8    lea         edi,[ebp-24]
 0057FAAB    movs        dword ptr [edi],dword ptr [esi]
 0057FAAC    movs        dword ptr [edi],dword ptr [esi]
 0057FAAD    movs        dword ptr [edi],dword ptr [esi]
 0057FAAE    movs        dword ptr [edi],dword ptr [esi]
 0057FAAF    mov         dword ptr [ebp-8],edx
 0057FAB2    mov         dword ptr [ebp-4],eax
 0057FAB5    xor         eax,eax
 0057FAB7    push        ebp
 0057FAB8    push        57FBEE
 0057FABD    push        dword ptr fs:[eax]
 0057FAC0    mov         dword ptr fs:[eax],esp
 0057FAC3    mov         eax,dword ptr [ebp-4]
 0057FAC6    mov         eax,dword ptr [eax+208];TDriveComboBox.FCanvas:TCanvas
 0057FACC    mov         dword ptr [ebp-14],eax
 0057FACF    lea         edx,[ebp-24]
 0057FAD2    mov         eax,dword ptr [ebp-14]
 0057FAD5    call        TCanvas.FillRect
 0057FADA    mov         dword ptr [ebp-10],10
 0057FAE1    mov         edx,dword ptr [ebp-8]
 0057FAE4    mov         eax,dword ptr [ebp-4]
 0057FAE7    mov         eax,dword ptr [eax+23C];TDriveComboBox.FItems:TStrings
 0057FAED    mov         ecx,dword ptr [eax]
 0057FAEF    call        dword ptr [ecx+18];TStrings.sub_00647284
 0057FAF2    mov         dword ptr [ebp-0C],eax
 0057FAF5    cmp         dword ptr [ebp-0C],0
>0057FAF9    je          0057FB90
 0057FAFF    mov         eax,dword ptr [ebp-0C]
 0057FB02    mov         edx,dword ptr [eax]
 0057FB04    call        dword ptr [edx+2C]
 0057FB07    mov         dword ptr [ebp-10],eax
 0057FB0A    mov         eax,dword ptr [ebp-0C]
 0057FB0D    mov         edx,dword ptr [eax]
 0057FB0F    call        dword ptr [edx+20]
 0057FB12    push        eax
 0057FB13    lea         eax,[ebp-34]
 0057FB16    push        eax
 0057FB17    mov         eax,dword ptr [ebp-0C]
 0057FB1A    mov         edx,dword ptr [eax]
 0057FB1C    call        dword ptr [edx+2C]
 0057FB1F    mov         ecx,eax
 0057FB21    xor         edx,edx
 0057FB23    xor         eax,eax
 0057FB25    call        Bounds
 0057FB2A    lea         eax,[ebp-34]
 0057FB2D    push        eax
 0057FB2E    mov         eax,dword ptr [ebp-0C]
 0057FB31    mov         edx,dword ptr [eax]
 0057FB33    call        dword ptr [edx+20]
 0057FB36    dec         eax
 0057FB37    push        eax
 0057FB38    mov         eax,dword ptr [ebp-0C]
 0057FB3B    call        TBitmap.GetCanvas
 0057FB40    xor         edx,edx
 0057FB42    pop         ecx
 0057FB43    call        005C18F0
 0057FB48    push        eax
 0057FB49    mov         eax,dword ptr [ebp-0C]
 0057FB4C    mov         edx,dword ptr [eax]
 0057FB4E    call        dword ptr [edx+20]
 0057FB51    push        eax
 0057FB52    lea         eax,[ebp-44]
 0057FB55    push        eax
 0057FB56    mov         eax,dword ptr [ebp-0C]
 0057FB59    mov         edx,dword ptr [eax]
 0057FB5B    call        dword ptr [edx+2C]
 0057FB5E    push        eax
 0057FB5F    mov         eax,dword ptr [ebp-0C]
 0057FB62    mov         edx,dword ptr [eax]
 0057FB64    call        dword ptr [edx+20]
 0057FB67    mov         edx,dword ptr [ebp-20]
 0057FB6A    add         edx,dword ptr [ebp-18]
 0057FB6D    sub         edx,eax
 0057FB6F    sar         edx,1
>0057FB71    jns         0057FB76
 0057FB73    adc         edx,0
 0057FB76    mov         eax,dword ptr [ebp-24]
 0057FB79    add         eax,2;TRect.Left:Longint
 0057FB7C    pop         ecx
 0057FB7D    call        Bounds
 0057FB82    lea         edx,[ebp-44]
 0057FB85    mov         ecx,dword ptr [ebp-0C]
 0057FB88    mov         eax,dword ptr [ebp-14]
 0057FB8B    call        005C0CC4
 0057FB90    mov         eax,dword ptr [ebp-24]
 0057FB93    add         eax,dword ptr [ebp-10]
 0057FB96    add         eax,6
 0057FB99    mov         dword ptr [ebp-24],eax
 0057FB9C    push        824
 0057FBA1    lea         eax,[ebp-24]
 0057FBA4    push        eax
 0057FBA5    push        0FF
 0057FBA7    lea         ecx,[ebp-48]
 0057FBAA    mov         edx,dword ptr [ebp-8]
 0057FBAD    mov         eax,dword ptr [ebp-4]
 0057FBB0    mov         eax,dword ptr [eax+23C];TDriveComboBox.FItems:TStrings
 0057FBB6    mov         ebx,dword ptr [eax]
 0057FBB8    call        dword ptr [ebx+0C];@AbstractError
 0057FBBB    mov         eax,dword ptr [ebp-48]
 0057FBBE    call        @LStrToPChar
 0057FBC3    push        eax
 0057FBC4    mov         eax,dword ptr [ebp-4]
 0057FBC7    mov         eax,dword ptr [eax+208];TDriveComboBox.FCanvas:TCanvas
 0057FBCD    call        TCanvas.GetHandle
 0057FBD2    push        eax
 0057FBD3    call        USER32.DrawTextA
 0057FBD8    xor         eax,eax
 0057FBDA    pop         edx
 0057FBDB    pop         ecx
 0057FBDC    pop         ecx
 0057FBDD    mov         dword ptr fs:[eax],edx
 0057FBE0    push        57FBF5
 0057FBE5    lea         eax,[ebp-48]
 0057FBE8    call        @LStrClr
 0057FBED    ret
>0057FBEE    jmp         @HandleFinally
>0057FBF3    jmp         0057FBE5
 0057FBF5    pop         edi
 0057FBF6    pop         esi
 0057FBF7    pop         ebx
 0057FBF8    mov         esp,ebp
 0057FBFA    pop         ebp
 0057FBFB    ret         4
end;*}

//0057FC00
procedure TDriveComboBox.sub_0057FC00;
begin
{*
 0057FC00    push        ebp
 0057FC01    mov         ebp,esp
 0057FC03    add         esp,0FFFFFFF8
 0057FC06    push        ebx
 0057FC07    xor         edx,edx
 0057FC09    mov         dword ptr [ebp-8],edx
 0057FC0C    mov         dword ptr [ebp-4],eax
 0057FC0F    xor         eax,eax
 0057FC11    push        ebp
 0057FC12    push        57FC75
 0057FC17    push        dword ptr fs:[eax]
 0057FC1A    mov         dword ptr fs:[eax],esp
 0057FC1D    mov         eax,dword ptr [ebp-4]
 0057FC20    call        TControl.sub_005F5478
 0057FC25    mov         eax,dword ptr [ebp-4]
 0057FC28    mov         edx,dword ptr [eax]
 0057FC2A    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0057FC30    test        eax,eax
>0057FC32    jl          0057FC5F
 0057FC34    mov         eax,dword ptr [ebp-4]
 0057FC37    mov         edx,dword ptr [eax]
 0057FC39    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0057FC3F    mov         edx,eax
 0057FC41    lea         ecx,[ebp-8]
 0057FC44    mov         eax,dword ptr [ebp-4]
 0057FC47    mov         eax,dword ptr [eax+23C];TDriveComboBox.FItems:TStrings
 0057FC4D    mov         ebx,dword ptr [eax]
 0057FC4F    call        dword ptr [ebx+0C];@AbstractError
 0057FC52    mov         eax,dword ptr [ebp-8]
 0057FC55    mov         dl,byte ptr [eax]
 0057FC57    mov         eax,dword ptr [ebp-4]
 0057FC5A    call        0057F850
 0057FC5F    xor         eax,eax
 0057FC61    pop         edx
 0057FC62    pop         ecx
 0057FC63    pop         ecx
 0057FC64    mov         dword ptr fs:[eax],edx
 0057FC67    push        57FC7C
 0057FC6C    lea         eax,[ebp-8]
 0057FC6F    call        @LStrClr
 0057FC74    ret
>0057FC75    jmp         @HandleFinally
>0057FC7A    jmp         0057FC6C
 0057FC7C    pop         ebx
 0057FC7D    pop         ecx
 0057FC7E    pop         ecx
 0057FC7F    pop         ebp
 0057FC80    ret
*}
end;

//0057FC84
{*procedure TDriveComboBox.CMFontChanged(?:?);
begin
 0057FC84    push        ebp
 0057FC85    mov         ebp,esp
 0057FC87    add         esp,0FFFFFFF8
 0057FC8A    mov         dword ptr [ebp-8],edx
 0057FC8D    mov         dword ptr [ebp-4],eax
 0057FC90    mov         edx,dword ptr [ebp-8]
 0057FC93    mov         eax,dword ptr [ebp-4]
 0057FC96    call        TWinControl.CMFontChanged
 0057FC9B    mov         eax,dword ptr [ebp-4]
 0057FC9E    call        0057FCB0
 0057FCA3    mov         eax,dword ptr [ebp-4]
 0057FCA6    call        TWinControl.RecreateWnd
 0057FCAB    pop         ecx
 0057FCAC    pop         ecx
 0057FCAD    pop         ebp
 0057FCAE    ret
end;*}

//0057FCB0
procedure sub_0057FCB0(?:TDriveComboBox);
begin
{*
 0057FCB0    push        ebp
 0057FCB1    mov         ebp,esp
 0057FCB3    add         esp,0FFFFFFF8
 0057FCB6    mov         dword ptr [ebp-4],eax
 0057FCB9    mov         eax,dword ptr [ebp-4]
 0057FCBC    mov         eax,dword ptr [eax+68];TDriveComboBox.FFont:TFont
 0057FCBF    call        0057F458
 0057FCC4    mov         dword ptr [ebp-8],eax
 0057FCC7    mov         eax,dword ptr [ebp-4]
 0057FCCA    mov         eax,dword ptr [eax+298];TDriveComboBox.FloppyBMP:TBitmap
 0057FCD0    mov         edx,dword ptr [eax]
 0057FCD2    call        dword ptr [edx+20];TBitmap.GetHeight
 0057FCD5    cmp         eax,dword ptr [ebp-8]
>0057FCD8    jle         0057FCEB
 0057FCDA    mov         eax,dword ptr [ebp-4]
 0057FCDD    mov         eax,dword ptr [eax+298];TDriveComboBox.FloppyBMP:TBitmap
 0057FCE3    mov         edx,dword ptr [eax]
 0057FCE5    call        dword ptr [edx+20];TBitmap.GetHeight
 0057FCE8    mov         dword ptr [ebp-8],eax
 0057FCEB    mov         edx,dword ptr [ebp-8]
 0057FCEE    mov         eax,dword ptr [ebp-4]
 0057FCF1    mov         ecx,dword ptr [eax]
 0057FCF3    call        dword ptr [ecx+0FC];TComboBox.SetItemHeight
 0057FCF9    pop         ecx
 0057FCFA    pop         ecx
 0057FCFB    pop         ebp
 0057FCFC    ret
*}
end;

//0057FD00
procedure sub_0057FD00(?:TDriveComboBox);
begin
{*
 0057FD00    push        ebp
 0057FD01    mov         ebp,esp
 0057FD03    push        ecx
 0057FD04    mov         dword ptr [ebp-4],eax
 0057FD07    mov         dl,1
 0057FD09    mov         eax,[005BEDD4];TBitmap
 0057FD0E    call        TBitmap.Create;TBitmap.Create
 0057FD13    mov         edx,dword ptr [ebp-4]
 0057FD16    mov         dword ptr [edx+298],eax;TDriveComboBox.FloppyBMP:TBitmap
 0057FD1C    push        57FE14
 0057FD21    mov         eax,[006EA390];0x0 gvar_006EA390
 0057FD26    push        eax
 0057FD27    call        USER32.LoadBitmapA
 0057FD2C    mov         edx,eax
 0057FD2E    mov         eax,dword ptr [ebp-4]
 0057FD31    mov         eax,dword ptr [eax+298];TDriveComboBox.FloppyBMP:TBitmap
 0057FD37    call        TBitmap.SetHandle
 0057FD3C    mov         dl,1
 0057FD3E    mov         eax,[005BEDD4];TBitmap
 0057FD43    call        TBitmap.Create;TBitmap.Create
 0057FD48    mov         edx,dword ptr [ebp-4]
 0057FD4B    mov         dword ptr [edx+29C],eax;TDriveComboBox.FixedBMP:TBitmap
 0057FD51    push        57FE1C
 0057FD56    mov         eax,[006EA390];0x0 gvar_006EA390
 0057FD5B    push        eax
 0057FD5C    call        USER32.LoadBitmapA
 0057FD61    mov         edx,eax
 0057FD63    mov         eax,dword ptr [ebp-4]
 0057FD66    mov         eax,dword ptr [eax+29C];TDriveComboBox.FixedBMP:TBitmap
 0057FD6C    call        TBitmap.SetHandle
 0057FD71    mov         dl,1
 0057FD73    mov         eax,[005BEDD4];TBitmap
 0057FD78    call        TBitmap.Create;TBitmap.Create
 0057FD7D    mov         edx,dword ptr [ebp-4]
 0057FD80    mov         dword ptr [edx+2A0],eax;TDriveComboBox.NetworkBMP:TBitmap
 0057FD86    push        57FE24
 0057FD8B    mov         eax,[006EA390];0x0 gvar_006EA390
 0057FD90    push        eax
 0057FD91    call        USER32.LoadBitmapA
 0057FD96    mov         edx,eax
 0057FD98    mov         eax,dword ptr [ebp-4]
 0057FD9B    mov         eax,dword ptr [eax+2A0];TDriveComboBox.NetworkBMP:TBitmap
 0057FDA1    call        TBitmap.SetHandle
 0057FDA6    mov         dl,1
 0057FDA8    mov         eax,[005BEDD4];TBitmap
 0057FDAD    call        TBitmap.Create;TBitmap.Create
 0057FDB2    mov         edx,dword ptr [ebp-4]
 0057FDB5    mov         dword ptr [edx+2A4],eax;TDriveComboBox.CDROMBMP:TBitmap
 0057FDBB    push        57FE2C
 0057FDC0    mov         eax,[006EA390];0x0 gvar_006EA390
 0057FDC5    push        eax
 0057FDC6    call        USER32.LoadBitmapA
 0057FDCB    mov         edx,eax
 0057FDCD    mov         eax,dword ptr [ebp-4]
 0057FDD0    mov         eax,dword ptr [eax+2A4];TDriveComboBox.CDROMBMP:TBitmap
 0057FDD6    call        TBitmap.SetHandle
 0057FDDB    mov         dl,1
 0057FDDD    mov         eax,[005BEDD4];TBitmap
 0057FDE2    call        TBitmap.Create;TBitmap.Create
 0057FDE7    mov         edx,dword ptr [ebp-4]
 0057FDEA    mov         dword ptr [edx+2A8],eax;TDriveComboBox.RAMBMP:TBitmap
 0057FDF0    push        57FE34
 0057FDF5    mov         eax,[006EA390];0x0 gvar_006EA390
 0057FDFA    push        eax
 0057FDFB    call        USER32.LoadBitmapA
 0057FE00    mov         edx,eax
 0057FE02    mov         eax,dword ptr [ebp-4]
 0057FE05    mov         eax,dword ptr [eax+2A8];TDriveComboBox.RAMBMP:TBitmap
 0057FE0B    call        TBitmap.SetHandle
 0057FE10    pop         ecx
 0057FE11    pop         ebp
 0057FE12    ret
*}
end;

//0057FE38
procedure TDriveComboBox.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0057FE38    push        ebp
 0057FE39    mov         ebp,esp
 0057FE3B    add         esp,0FFFFFFF4
 0057FE3E    mov         byte ptr [ebp-9],cl
 0057FE41    mov         dword ptr [ebp-8],edx
 0057FE44    mov         dword ptr [ebp-4],eax
 0057FE47    mov         cl,byte ptr [ebp-9]
 0057FE4A    mov         edx,dword ptr [ebp-8]
 0057FE4D    mov         eax,dword ptr [ebp-4]
 0057FE50    call        TControl.Notification
 0057FE55    cmp         byte ptr [ebp-9],1
>0057FE59    jne         0057FE74
 0057FE5B    mov         eax,dword ptr [ebp-8]
 0057FE5E    mov         edx,dword ptr [ebp-4]
 0057FE61    cmp         eax,dword ptr [edx+290];TDriveComboBox.DirList:TDirectoryListBox
>0057FE67    jne         0057FE74
 0057FE69    mov         eax,dword ptr [ebp-4]
 0057FE6C    xor         edx,edx
 0057FE6E    mov         dword ptr [eax+290],edx;TDriveComboBox.DirList:TDirectoryListBox
 0057FE74    mov         esp,ebp
 0057FE76    pop         ebp
 0057FE77    ret
*}
end;

//0057FE78
{*function sub_0057FE78(?:String):?;
begin
 0057FE78    push        ebp
 0057FE79    mov         ebp,esp
 0057FE7B    add         esp,0FFFFFFF4
 0057FE7E    mov         dword ptr [ebp-4],eax
 0057FE81    xor         eax,eax
 0057FE83    mov         dword ptr [ebp-8],eax
 0057FE86    mov         eax,dword ptr [ebp-4]
 0057FE89    call        @LStrToPChar
 0057FE8E    mov         dl,5C
 0057FE90    call        0065D78C
 0057FE95    mov         dword ptr [ebp-0C],eax
 0057FE98    cmp         dword ptr [ebp-0C],0
>0057FE9C    je          0057FEB7
 0057FE9E    inc         dword ptr [ebp-8]
 0057FEA1    inc         dword ptr [ebp-0C]
 0057FEA4    mov         dl,5C
 0057FEA6    mov         eax,dword ptr [ebp-0C]
 0057FEA9    call        0065D78C
 0057FEAE    mov         dword ptr [ebp-0C],eax
 0057FEB1    cmp         dword ptr [ebp-0C],0
>0057FEB5    jne         0057FE9E
 0057FEB7    mov         eax,dword ptr [ebp-8]
 0057FEBA    mov         esp,ebp
 0057FEBC    pop         ebp
 0057FEBD    ret
end;*}

//0057FEC0
constructor TDirectoryListBox.Create(AOwner:TComponent);
begin
{*
 0057FEC0    push        ebp
 0057FEC1    mov         ebp,esp
 0057FEC3    add         esp,0FFFFFFF4
 0057FEC6    test        dl,dl
>0057FEC8    je          0057FED2
 0057FECA    add         esp,0FFFFFFF0
 0057FECD    call        @ClassCreate
 0057FED2    mov         dword ptr [ebp-0C],ecx
 0057FED5    mov         byte ptr [ebp-5],dl
 0057FED8    mov         dword ptr [ebp-4],eax
 0057FEDB    mov         ecx,dword ptr [ebp-0C]
 0057FEDE    xor         edx,edx
 0057FEE0    mov         eax,dword ptr [ebp-4]
 0057FEE3    call        TCustomListBox.Create
 0057FEE8    mov         edx,91
 0057FEED    mov         eax,dword ptr [ebp-4]
 0057FEF0    call        TControl.SetWidth
 0057FEF5    mov         dl,1
 0057FEF7    mov         eax,dword ptr [ebp-4]
 0057FEFA    call        TCheckListBox.SetStyle
 0057FEFF    xor         edx,edx
 0057FF01    mov         eax,dword ptr [ebp-4]
 0057FF04    call        TCheckListBox.SetSorted
 0057FF09    mov         eax,dword ptr [ebp-4]
 0057FF0C    mov         edx,dword ptr [eax]
 0057FF0E    call        dword ptr [edx+104];TDirectoryListBox.sub_005806E4
 0057FF14    mov         eax,dword ptr [ebp-4]
 0057FF17    lea         edx,[eax+29C];TDirectoryListBox.FDirectory:String
 0057FF1D    xor         eax,eax
 0057FF1F    call        @LGetDir
 0057FF24    mov         eax,dword ptr [ebp-4]
 0057FF27    call        00580BFC
 0057FF2C    mov         eax,dword ptr [ebp-4]
 0057FF2F    cmp         byte ptr [ebp-5],0
>0057FF33    je          0057FF44
 0057FF35    call        @AfterConstruction
 0057FF3A    pop         dword ptr fs:[0]
 0057FF41    add         esp,0C
 0057FF44    mov         eax,dword ptr [ebp-4]
 0057FF47    mov         esp,ebp
 0057FF49    pop         ebp
 0057FF4A    ret
*}
end;

//0057FF4C
destructor TDirectoryListBox.Destroy;
begin
{*
 0057FF4C    push        ebp
 0057FF4D    mov         ebp,esp
 0057FF4F    add         esp,0FFFFFFF8
 0057FF52    call        @BeforeDestruction
 0057FF57    mov         byte ptr [ebp-5],dl
 0057FF5A    mov         dword ptr [ebp-4],eax
 0057FF5D    mov         eax,dword ptr [ebp-4]
 0057FF60    mov         eax,dword ptr [eax+290];TDirectoryListBox.ClosedBMP:TBitmap
 0057FF66    call        TObject.Free
 0057FF6B    mov         eax,dword ptr [ebp-4]
 0057FF6E    mov         eax,dword ptr [eax+294];TDirectoryListBox.OpenedBMP:TBitmap
 0057FF74    call        TObject.Free
 0057FF79    mov         eax,dword ptr [ebp-4]
 0057FF7C    mov         eax,dword ptr [eax+298];TDirectoryListBox.CurrentBMP:TBitmap
 0057FF82    call        TObject.Free
 0057FF87    mov         dl,byte ptr [ebp-5]
 0057FF8A    and         dl,0FC
 0057FF8D    mov         eax,dword ptr [ebp-4]
 0057FF90    call        TCustomListBox.Destroy
 0057FF95    cmp         byte ptr [ebp-5],0
>0057FF99    jle         0057FFA3
 0057FF9B    mov         eax,dword ptr [ebp-4]
 0057FF9E    call        @ClassDestroy
 0057FFA3    pop         ecx
 0057FFA4    pop         ecx
 0057FFA5    pop         ebp
 0057FFA6    ret
*}
end;

//0057FFA8
{*procedure sub_0057FFA8(?:TDirectoryListBox; ?:?);
begin
 0057FFA8    push        ebp
 0057FFA9    mov         ebp,esp
 0057FFAB    add         esp,0FFFFFFEC
 0057FFAE    push        ebx
 0057FFAF    xor         ecx,ecx
 0057FFB1    mov         dword ptr [ebp-0C],ecx
 0057FFB4    mov         byte ptr [ebp-5],dl
 0057FFB7    mov         dword ptr [ebp-4],eax
 0057FFBA    xor         eax,eax
 0057FFBC    push        ebp
 0057FFBD    push        58006F
 0057FFC2    push        dword ptr fs:[eax]
 0057FFC5    mov         dword ptr fs:[eax],esp
 0057FFC8    mov         al,byte ptr [ebp-5]
 0057FFCB    call        UpCase
 0057FFD0    mov         ebx,eax
 0057FFD2    mov         eax,dword ptr [ebp-4]
 0057FFD5    call        00580C48
 0057FFDA    call        UpCase
 0057FFDF    cmp         bl,al
>0057FFE1    je          00580059
 0057FFE3    cmp         byte ptr [ebp-5],0
>0057FFE7    je          00580037
 0057FFE9    lea         eax,[ebp-10]
 0057FFEC    mov         dl,byte ptr [ebp-5]
 0057FFEF    mov         byte ptr [eax+1],dl
 0057FFF2    mov         byte ptr [eax],1
 0057FFF5    lea         edx,[ebp-10]
 0057FFF8    lea         eax,[ebp-14]
 0057FFFB    call        @PStrCpy
 00580000    mov         edx,58007C;':'
 00580005    lea         eax,[ebp-14]
 00580008    mov         cl,2
 0058000A    call        @PStrNCat
 0058000F    lea         edx,[ebp-14]
 00580012    lea         eax,[ebp-0C]
 00580015    call        @LStrFromString
 0058001A    mov         eax,dword ptr [ebp-0C]
 0058001D    call        ChDir
 00580022    call        @_IOTest
 00580027    mov         eax,dword ptr [ebp-4]
 0058002A    lea         edx,[eax+29C]
 00580030    xor         eax,eax
 00580032    call        @LGetDir
 00580037    mov         eax,dword ptr [ebp-4]
 0058003A    cmp         byte ptr [eax+28C],0
>00580041    jne         00580059
 00580043    mov         eax,dword ptr [ebp-4]
 00580046    mov         edx,dword ptr [eax]
 00580048    call        dword ptr [edx+108]
 0058004E    mov         eax,dword ptr [ebp-4]
 00580051    mov         edx,dword ptr [eax]
 00580053    call        dword ptr [edx+100]
 00580059    xor         eax,eax
 0058005B    pop         edx
 0058005C    pop         ecx
 0058005D    pop         ecx
 0058005E    mov         dword ptr fs:[eax],edx
 00580061    push        580076
 00580066    lea         eax,[ebp-0C]
 00580069    call        @LStrClr
 0058006E    ret
>0058006F    jmp         @HandleFinally
>00580074    jmp         00580066
 00580076    pop         ebx
 00580077    mov         esp,ebp
 00580079    pop         ebp
 0058007A    ret
end;*}

//00580080
procedure TDirectoryListBox.SetFileList(Value:TFileListBox);
begin
{*
 00580080    push        ebp
 00580081    mov         ebp,esp
 00580083    add         esp,0FFFFFFF8
 00580086    mov         dword ptr [ebp-8],edx
 00580089    mov         dword ptr [ebp-4],eax
 0058008C    mov         eax,dword ptr [ebp-4]
 0058008F    cmp         dword ptr [eax+280],0;TDirectoryListBox.FileList:TFileListBox
>00580096    je          005800A9
 00580098    mov         eax,dword ptr [ebp-4]
 0058009B    mov         eax,dword ptr [eax+280];TDirectoryListBox.FileList:TFileListBox
 005800A1    xor         edx,edx
 005800A3    mov         dword ptr [eax+290],edx;TFileListBox.FDirList:TDirectoryListBox
 005800A9    mov         eax,dword ptr [ebp-8]
 005800AC    mov         edx,dword ptr [ebp-4]
 005800AF    mov         dword ptr [edx+280],eax;TDirectoryListBox.FileList:TFileListBox
 005800B5    mov         eax,dword ptr [ebp-4]
 005800B8    cmp         dword ptr [eax+280],0;TDirectoryListBox.FileList:TFileListBox
>005800BF    je          005800E4
 005800C1    mov         eax,dword ptr [ebp-4]
 005800C4    mov         eax,dword ptr [eax+280];TDirectoryListBox.FileList:TFileListBox
 005800CA    mov         edx,dword ptr [ebp-4]
 005800CD    mov         dword ptr [eax+290],edx;TFileListBox.FDirList:TDirectoryListBox
 005800D3    mov         edx,dword ptr [ebp-4]
 005800D6    mov         eax,dword ptr [ebp-4]
 005800D9    mov         eax,dword ptr [eax+280];TDirectoryListBox.FileList:TFileListBox
 005800DF    call        TComponent.FreeNotification
 005800E4    pop         ecx
 005800E5    pop         ecx
 005800E6    pop         ebp
 005800E7    ret
*}
end;

//005800E8
procedure TDirectoryListBox.SetDirLabel(Value:TLabel);
begin
{*
 005800E8    push        ebp
 005800E9    mov         ebp,esp
 005800EB    add         esp,0FFFFFFF8
 005800EE    mov         dword ptr [ebp-8],edx
 005800F1    mov         dword ptr [ebp-4],eax
 005800F4    mov         eax,dword ptr [ebp-8]
 005800F7    mov         edx,dword ptr [ebp-4]
 005800FA    mov         dword ptr [edx+288],eax;TDirectoryListBox.DirLabel:TLabel
 00580100    cmp         dword ptr [ebp-8],0
>00580104    je          00580111
 00580106    mov         edx,dword ptr [ebp-4]
 00580109    mov         eax,dword ptr [ebp-8]
 0058010C    call        TComponent.FreeNotification
 00580111    mov         eax,dword ptr [ebp-4]
 00580114    call        00580E10
 00580119    pop         ecx
 0058011A    pop         ecx
 0058011B    pop         ebp
 0058011C    ret
*}
end;

//00580120
{*procedure sub_00580120(?:TDirectoryListBox; ?:?);
begin
 00580120    push        ebp
 00580121    mov         ebp,esp
 00580123    add         esp,0FFFFFFF8
 00580126    mov         dword ptr [ebp-8],edx
 00580129    mov         dword ptr [ebp-4],eax
 0058012C    mov         eax,dword ptr [ebp-4]
 0058012F    mov         eax,dword ptr [eax+29C]
 00580135    call        00582204
 0058013A    test        al,al
>0058013C    je          00580151
 0058013E    mov         eax,dword ptr [ebp-4]
 00580141    mov         eax,dword ptr [eax+29C]
 00580147    call        ChDir
 0058014C    call        @_IOTest
 00580151    mov         eax,dword ptr [ebp-8]
 00580154    call        ChDir
 00580159    call        @_IOTest
 0058015E    mov         eax,dword ptr [ebp-4]
 00580161    lea         edx,[eax+29C]
 00580167    xor         eax,eax
 00580169    call        @LGetDir
 0058016E    mov         eax,dword ptr [ebp-4]
 00580171    mov         edx,dword ptr [eax]
 00580173    call        dword ptr [edx+108]
 00580179    mov         eax,dword ptr [ebp-4]
 0058017C    mov         edx,dword ptr [eax]
 0058017E    call        dword ptr [edx+100]
 00580184    pop         ecx
 00580185    pop         ecx
 00580186    pop         ebp
 00580187    ret
end;*}

//00580188
procedure sub_00580188(?:TDirectoryListBox);
begin
{*
 00580188    push        ebp
 00580189    mov         ebp,esp
 0058018B    add         esp,0FFFFFFF8
 0058018E    xor         edx,edx
 00580190    mov         dword ptr [ebp-8],edx
 00580193    mov         dword ptr [ebp-4],eax
 00580196    xor         eax,eax
 00580198    push        ebp
 00580199    push        5801E0
 0058019E    push        dword ptr fs:[eax]
 005801A1    mov         dword ptr fs:[eax],esp
 005801A4    mov         eax,dword ptr [ebp-4]
 005801A7    mov         edx,dword ptr [eax]
 005801A9    call        dword ptr [edx+0C8]
 005801AF    mov         edx,eax
 005801B1    lea         ecx,[ebp-8]
 005801B4    mov         eax,dword ptr [ebp-4]
 005801B7    call        005809C8
 005801BC    mov         edx,dword ptr [ebp-8]
 005801BF    mov         eax,dword ptr [ebp-4]
 005801C2    mov         ecx,dword ptr [eax]
 005801C4    call        dword ptr [ecx+0FC]
 005801CA    xor         eax,eax
 005801CC    pop         edx
 005801CD    pop         ecx
 005801CE    pop         ecx
 005801CF    mov         dword ptr fs:[eax],edx
 005801D2    push        5801E7
 005801D7    lea         eax,[ebp-8]
 005801DA    call        @LStrClr
 005801DF    ret
>005801E0    jmp         @HandleFinally
>005801E5    jmp         005801D7
 005801E7    pop         ecx
 005801E8    pop         ecx
 005801E9    pop         ebp
 005801EA    ret
*}
end;

//005801EC
{*procedure sub_005801EC(?:TDirectoryListBox; ?:?; ?:?);
begin
 005801EC    push        ebp
 005801ED    mov         ebp,esp
 005801EF    add         esp,0FFFFFFF4
 005801F2    mov         dword ptr [ebp-0C],ecx
 005801F5    mov         dword ptr [ebp-8],edx
 005801F8    mov         dword ptr [ebp-4],eax
 005801FB    mov         eax,dword ptr [ebp-4]
 005801FE    cmp         byte ptr [eax+28D],0
>00580205    jne         00580213
 00580207    mov         eax,dword ptr [ebp-4]
 0058020A    cmp         byte ptr [eax+28E],0
>00580211    je          00580220
 00580213    mov         eax,dword ptr [ebp-0C]
 00580216    mov         edx,dword ptr [ebp-8]
 00580219    call        @LStrAsg
>0058021E    jmp         0058022B
 00580220    mov         edx,dword ptr [ebp-0C]
 00580223    mov         eax,dword ptr [ebp-8]
 00580226    call        006576F0
 0058022B    mov         esp,ebp
 0058022D    pop         ebp
 0058022E    ret
end;*}

//00580230
{*function sub_00580230(?:TDirectoryListBox; ?:?; ?:String):?;
begin
 00580230    push        ebp
 00580231    mov         ebp,esp
 00580233    add         esp,0FFFFFFF0
 00580236    mov         dword ptr [ebp-0C],ecx
 00580239    mov         dword ptr [ebp-8],edx
 0058023C    mov         dword ptr [ebp-4],eax
 0058023F    mov         eax,dword ptr [ebp-4]
 00580242    cmp         byte ptr [eax+28E],0
>00580249    je          0058025B
 0058024B    mov         edx,dword ptr [ebp-0C]
 0058024E    mov         eax,dword ptr [ebp-8]
 00580251    call        00657738
 00580256    mov         dword ptr [ebp-10],eax
>00580259    jmp         00580269
 0058025B    mov         edx,dword ptr [ebp-0C]
 0058025E    mov         eax,dword ptr [ebp-8]
 00580261    call        0065D448
 00580266    mov         dword ptr [ebp-10],eax
 00580269    mov         eax,dword ptr [ebp-10]
 0058026C    mov         esp,ebp
 0058026E    pop         ebp
 0058026F    ret
end;*}

//00580270
{*function sub_00580270(?:TDirectoryListBox; ?:String; ?:TStringList):?;
begin
 00580270    push        ebp
 00580271    mov         ebp,esp
 00580273    add         esp,0FFFFFE90
 00580279    push        ebx
 0058027A    xor         ebx,ebx
 0058027C    mov         dword ptr [ebp-170],ebx
 00580282    mov         dword ptr [ebp-0C],ecx
 00580285    mov         dword ptr [ebp-8],edx
 00580288    mov         dword ptr [ebp-4],eax
 0058028B    lea         eax,[ebp-16C]
 00580291    mov         edx,dword ptr ds:[656754];TSearchRec
 00580297    call        @InitializeRecord
 0058029C    xor         eax,eax
 0058029E    push        ebp
 0058029F    push        580390
 005802A4    push        dword ptr fs:[eax]
 005802A7    mov         dword ptr fs:[eax],esp
 005802AA    xor         eax,eax
 005802AC    mov         dword ptr [ebp-10],eax
 005802AF    lea         ecx,[ebp-170]
 005802B5    mov         edx,5803A8;'*.*'
 005802BA    mov         eax,dword ptr [ebp-8]
 005802BD    call        0057EC10
 005802C2    mov         eax,dword ptr [ebp-170]
 005802C8    lea         ecx,[ebp-16C]
 005802CE    mov         edx,10
 005802D3    call        00658184
 005802D8    mov         dword ptr [ebp-14],eax
 005802DB    xor         eax,eax
 005802DD    push        ebp
 005802DE    push        58035F
 005802E3    push        dword ptr fs:[eax]
 005802E6    mov         dword ptr fs:[eax],esp
 005802E9    cmp         dword ptr [ebp-14],0
>005802ED    jne         00580346
 005802EF    mov         eax,dword ptr [ebp-164]
 005802F5    and         eax,10
 005802F8    cmp         eax,10
>005802FB    jne         00580332
 005802FD    mov         eax,dword ptr [ebp-160]
 00580303    mov         edx,5803B4;'.'
 00580308    call        @LStrCmp
>0058030D    je          00580332
 0058030F    mov         eax,dword ptr [ebp-160]
 00580315    mov         edx,5803C0;'..'
 0058031A    call        @LStrCmp
>0058031F    je          00580332
 00580321    mov         edx,dword ptr [ebp-160]
 00580327    mov         eax,dword ptr [ebp-0C]
 0058032A    mov         ecx,dword ptr [eax]
 0058032C    call        dword ptr [ecx+38]
 0058032F    inc         dword ptr [ebp-10]
 00580332    lea         eax,[ebp-16C]
 00580338    call        006581F0
 0058033D    mov         dword ptr [ebp-14],eax
 00580340    cmp         dword ptr [ebp-14],0
>00580344    je          005802EF
 00580346    xor         eax,eax
 00580348    pop         edx
 00580349    pop         ecx
 0058034A    pop         ecx
 0058034B    mov         dword ptr fs:[eax],edx
 0058034E    push        580366
 00580353    lea         eax,[ebp-16C]
 00580359    call        0065822C
 0058035E    ret
>0058035F    jmp         @HandleFinally
>00580364    jmp         00580353
 00580366    xor         eax,eax
 00580368    pop         edx
 00580369    pop         ecx
 0058036A    pop         ecx
 0058036B    mov         dword ptr fs:[eax],edx
 0058036E    push        580397
 00580373    lea         eax,[ebp-170]
 00580379    call        @LStrClr
 0058037E    lea         eax,[ebp-16C]
 00580384    mov         edx,dword ptr ds:[656754];TSearchRec
 0058038A    call        @FinalizeRecord
 0058038F    ret
>00580390    jmp         @HandleFinally
>00580395    jmp         00580373
 00580397    mov         eax,dword ptr [ebp-10]
 0058039A    pop         ebx
 0058039B    mov         esp,ebp
 0058039D    pop         ebp
 0058039E    ret
end;*}

//005803C4
procedure sub_005803C4;
begin
{*
 005803C4    push        ebp
 005803C5    mov         ebp,esp
 005803C7    add         esp,0FFFFFFCC
 005803CA    push        ebx
 005803CB    xor         edx,edx
 005803CD    mov         dword ptr [ebp-34],edx
 005803D0    mov         dword ptr [ebp-30],edx
 005803D3    mov         dword ptr [ebp-8],edx
 005803D6    mov         dword ptr [ebp-0C],edx
 005803D9    mov         dword ptr [ebp-28],edx
 005803DC    mov         dword ptr [ebp-4],eax
 005803DF    xor         eax,eax
 005803E1    push        ebp
 005803E2    push        5806CB
 005803E7    push        dword ptr fs:[eax]
 005803EA    mov         dword ptr fs:[eax],esp
 005803ED    xor         eax,eax
 005803EF    push        ebp
 005803F0    push        58067A
 005803F5    push        dword ptr fs:[eax]
 005803F8    mov         dword ptr fs:[eax],esp
 005803FB    mov         eax,dword ptr [ebp-4]
 005803FE    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 00580404    call        TStrings.BeginUpdate
 00580409    mov         eax,dword ptr [ebp-4]
 0058040C    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 00580412    mov         edx,dword ptr [eax]
 00580414    call        dword ptr [edx+44];TStrings.Clear
 00580417    xor         eax,eax
 00580419    mov         dword ptr [ebp-10],eax
 0058041C    lea         edx,[ebp-30]
 0058041F    mov         eax,dword ptr [ebp-4]
 00580422    mov         eax,dword ptr [eax+29C];TDirectoryListBox.FDirectory:String
 00580428    call        006584B8
 0058042D    mov         edx,dword ptr [ebp-30]
 00580430    lea         eax,[ebp-28]
 00580433    mov         ecx,5806E0;'\'
 00580438    call        @LStrCat3
 0058043D    push        0
 0058043F    push        0
 00580441    lea         eax,[ebp-18]
 00580444    push        eax
 00580445    lea         eax,[ebp-1C]
 00580448    push        eax
 00580449    push        0
 0058044B    push        0
 0058044D    push        0
 0058044F    mov         eax,dword ptr [ebp-28]
 00580452    call        @LStrToPChar
 00580457    push        eax
 00580458    call        KERNEL32.GetVolumeInformationA
 0058045D    test        byte ptr [ebp-18],3
 00580461    setne       al
 00580464    mov         edx,dword ptr [ebp-4]
 00580467    mov         byte ptr [edx+28D],al;TDirectoryListBox.FPreserveCase:Boolean
 0058046D    test        byte ptr [ebp-18],1
 00580471    setne       al
 00580474    mov         edx,dword ptr [ebp-4]
 00580477    mov         byte ptr [edx+28E],al;TDirectoryListBox.FCaseSensitive:Boolean
 0058047D    mov         eax,dword ptr [ebp-28]
 00580480    call        @LStrLen
 00580485    cmp         eax,2
>00580488    jl          005804DF
 0058048A    mov         eax,dword ptr [ebp-28]
 0058048D    cmp         byte ptr [eax+1],5C
>00580491    jne         005804DF
 00580493    mov         eax,dword ptr [ebp-4]
 00580496    mov         ecx,dword ptr [eax+294];TDirectoryListBox.OpenedBMP:TBitmap
 0058049C    mov         eax,dword ptr [ebp-4]
 0058049F    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 005804A5    mov         edx,dword ptr [ebp-28]
 005804A8    mov         ebx,dword ptr [eax]
 005804AA    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 005804AD    inc         dword ptr [ebp-10]
 005804B0    lea         eax,[ebp-8]
 005804B3    push        eax
 005804B4    mov         eax,dword ptr [ebp-4]
 005804B7    mov         eax,dword ptr [eax+29C];TDirectoryListBox.FDirectory:String
 005804BD    call        @LStrLen
 005804C2    push        eax
 005804C3    mov         eax,dword ptr [ebp-28]
 005804C6    call        @LStrLen
 005804CB    mov         edx,eax
 005804CD    inc         edx
 005804CE    mov         eax,dword ptr [ebp-4]
 005804D1    mov         eax,dword ptr [eax+29C];TDirectoryListBox.FDirectory:String
 005804D7    pop         ecx
 005804D8    call        @LStrCopy
>005804DD    jmp         005804F0
 005804DF    lea         eax,[ebp-8]
 005804E2    mov         edx,dword ptr [ebp-4]
 005804E5    mov         edx,dword ptr [edx+29C];TDirectoryListBox.FDirectory:String
 005804EB    call        @LStrLAsg
 005804F0    mov         eax,dword ptr [ebp-8]
 005804F3    call        @LStrLen
 005804F8    test        eax,eax
>005804FA    jle         005805AC
 00580500    mov         eax,dword ptr [ebp-8]
 00580503    call        00658280
 00580508    cmp         byte ptr [eax],5C
>0058050B    je          00580592
 00580511    mov         edx,dword ptr [ebp-8]
 00580514    mov         eax,5806E0;'\'
 00580519    call        AnsiPos
 0058051E    mov         dword ptr [ebp-14],eax
 00580521    cmp         dword ptr [ebp-14],0
>00580525    je          00580592
 00580527    lea         eax,[ebp-0C]
 0058052A    push        eax
 0058052B    mov         ecx,dword ptr [ebp-14]
 0058052E    dec         ecx
 0058052F    mov         edx,1
 00580534    mov         eax,dword ptr [ebp-8]
 00580537    call        @LStrCopy
 0058053C    cmp         dword ptr [ebp-10],0
>00580540    jne         0058054F
 00580542    lea         eax,[ebp-0C]
 00580545    mov         edx,5806E0;'\'
 0058054A    call        @LStrCat
 0058054F    lea         eax,[ebp-8]
 00580552    mov         ecx,dword ptr [ebp-14]
 00580555    mov         edx,1
 0058055A    call        @LStrDelete
 0058055F    mov         eax,dword ptr [ebp-4]
 00580562    mov         ecx,dword ptr [eax+294];TDirectoryListBox.OpenedBMP:TBitmap
 00580568    mov         eax,dword ptr [ebp-4]
 0058056B    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 00580571    mov         edx,dword ptr [ebp-0C]
 00580574    mov         ebx,dword ptr [eax]
 00580576    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 00580579    inc         dword ptr [ebp-10]
 0058057C    mov         edx,dword ptr [ebp-8]
 0058057F    mov         eax,5806E0;'\'
 00580584    call        AnsiPos
 00580589    mov         dword ptr [ebp-14],eax
 0058058C    cmp         dword ptr [ebp-14],0
>00580590    jne         00580527
 00580592    mov         eax,dword ptr [ebp-4]
 00580595    mov         ecx,dword ptr [eax+298];TDirectoryListBox.CurrentBMP:TBitmap
 0058059B    mov         eax,dword ptr [ebp-4]
 0058059E    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 005805A4    mov         edx,dword ptr [ebp-8]
 005805A7    mov         ebx,dword ptr [eax]
 005805A9    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 005805AC    mov         eax,dword ptr [ebp-4]
 005805AF    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 005805B5    mov         edx,dword ptr [eax]
 005805B7    call        dword ptr [edx+14];@AbstractError
 005805BA    dec         eax
 005805BB    mov         dword ptr [ebp-24],eax
 005805BE    mov         dl,1
 005805C0    mov         eax,[006428B0];TStringList
 005805C5    call        TObject.Create;TStringList.Create
 005805CA    mov         dword ptr [ebp-20],eax
 005805CD    xor         eax,eax
 005805CF    push        ebp
 005805D0    push        580657
 005805D5    push        dword ptr fs:[eax]
 005805D8    mov         dword ptr fs:[eax],esp
 005805DB    mov         dl,1
 005805DD    mov         eax,dword ptr [ebp-20]
 005805E0    call        0064859C
 005805E5    mov         eax,dword ptr [ebp-4]
 005805E8    mov         edx,dword ptr [eax+29C];TDirectoryListBox.FDirectory:String
 005805EE    mov         ecx,dword ptr [ebp-20]
 005805F1    mov         eax,dword ptr [ebp-4]
 005805F4    call        00580270
 005805F9    mov         eax,dword ptr [ebp-20]
 005805FC    mov         edx,dword ptr [eax]
 005805FE    call        dword ptr [edx+14];TStringList.sub_00648198
 00580601    dec         eax
 00580602    test        eax,eax
>00580604    jl          00580641
 00580606    inc         eax
 00580607    mov         dword ptr [ebp-2C],eax
 0058060A    mov         dword ptr [ebp-1C],0
 00580611    lea         ecx,[ebp-34]
 00580614    mov         edx,dword ptr [ebp-1C]
 00580617    mov         eax,dword ptr [ebp-20]
 0058061A    mov         ebx,dword ptr [eax]
 0058061C    call        dword ptr [ebx+0C];TStringList.sub_00648130
 0058061F    mov         edx,dword ptr [ebp-34]
 00580622    mov         eax,dword ptr [ebp-4]
 00580625    mov         ecx,dword ptr [eax+290];TDirectoryListBox.ClosedBMP:TBitmap
 0058062B    mov         eax,dword ptr [ebp-4]
 0058062E    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 00580634    mov         ebx,dword ptr [eax]
 00580636    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 00580639    inc         dword ptr [ebp-1C]
 0058063C    dec         dword ptr [ebp-2C]
>0058063F    jne         00580611
 00580641    xor         eax,eax
 00580643    pop         edx
 00580644    pop         ecx
 00580645    pop         ecx
 00580646    mov         dword ptr fs:[eax],edx
 00580649    push        58065E
 0058064E    mov         eax,dword ptr [ebp-20]
 00580651    call        TObject.Free
 00580656    ret
>00580657    jmp         @HandleFinally
>0058065C    jmp         0058064E
 0058065E    xor         eax,eax
 00580660    pop         edx
 00580661    pop         ecx
 00580662    pop         ecx
 00580663    mov         dword ptr fs:[eax],edx
 00580666    push        580681
 0058066B    mov         eax,dword ptr [ebp-4]
 0058066E    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 00580674    call        TStrings.EndUpdate
 00580679    ret
>0058067A    jmp         @HandleFinally
>0058067F    jmp         0058066B
 00580681    mov         eax,dword ptr [ebp-4]
 00580684    call        TWinControl.HandleAllocated
 00580689    test        al,al
>0058068B    je          0058069B
 0058068D    mov         edx,dword ptr [ebp-24]
 00580690    mov         eax,dword ptr [ebp-4]
 00580693    mov         ecx,dword ptr [eax]
 00580695    call        dword ptr [ecx+0CC];TDirectoryListBox.sub_0059E3F8
 0058069B    xor         eax,eax
 0058069D    pop         edx
 0058069E    pop         ecx
 0058069F    pop         ecx
 005806A0    mov         dword ptr fs:[eax],edx
 005806A3    push        5806D2
 005806A8    lea         eax,[ebp-34]
 005806AB    mov         edx,2
 005806B0    call        @LStrArrayClr
 005806B5    lea         eax,[ebp-28]
 005806B8    call        @LStrClr
 005806BD    lea         eax,[ebp-0C]
 005806C0    mov         edx,2
 005806C5    call        @LStrArrayClr
 005806CA    ret
>005806CB    jmp         @HandleFinally
>005806D0    jmp         005806A8
 005806D2    pop         ebx
 005806D3    mov         esp,ebp
 005806D5    pop         ebp
 005806D6    ret
*}
end;

//005806E4
procedure sub_005806E4;
begin
{*
 005806E4    push        ebp
 005806E5    mov         ebp,esp
 005806E7    push        ecx
 005806E8    mov         dword ptr [ebp-4],eax
 005806EB    mov         dl,1
 005806ED    mov         eax,[005BEDD4];TBitmap
 005806F2    call        TBitmap.Create;TBitmap.Create
 005806F7    mov         edx,dword ptr [ebp-4]
 005806FA    mov         dword ptr [edx+294],eax;TDirectoryListBox.OpenedBMP:TBitmap
 00580700    mov         ecx,580780;'OPENFOLDER'
 00580705    mov         edx,dword ptr ds:[6EA390];0x0 gvar_006EA390
 0058070B    mov         eax,dword ptr [ebp-4]
 0058070E    mov         eax,dword ptr [eax+294];TDirectoryListBox.OpenedBMP:TBitmap
 00580714    call        TBitmap.LoadFromResourceName
 00580719    mov         dl,1
 0058071B    mov         eax,[005BEDD4];TBitmap
 00580720    call        TBitmap.Create;TBitmap.Create
 00580725    mov         edx,dword ptr [ebp-4]
 00580728    mov         dword ptr [edx+290],eax;TDirectoryListBox.ClosedBMP:TBitmap
 0058072E    mov         ecx,580794;'CLOSEDFOLDER'
 00580733    mov         edx,dword ptr ds:[6EA390];0x0 gvar_006EA390
 00580739    mov         eax,dword ptr [ebp-4]
 0058073C    mov         eax,dword ptr [eax+290];TDirectoryListBox.ClosedBMP:TBitmap
 00580742    call        TBitmap.LoadFromResourceName
 00580747    mov         dl,1
 00580749    mov         eax,[005BEDD4];TBitmap
 0058074E    call        TBitmap.Create;TBitmap.Create
 00580753    mov         edx,dword ptr [ebp-4]
 00580756    mov         dword ptr [edx+298],eax;TDirectoryListBox.CurrentBMP:TBitmap
 0058075C    mov         ecx,5807AC;'CURRENTFOLDER'
 00580761    mov         edx,dword ptr ds:[6EA390];0x0 gvar_006EA390
 00580767    mov         eax,dword ptr [ebp-4]
 0058076A    mov         eax,dword ptr [eax+298];TDirectoryListBox.CurrentBMP:TBitmap
 00580770    call        TBitmap.LoadFromResourceName
 00580775    pop         ecx
 00580776    pop         ebp
 00580777    ret
*}
end;

//005807BC
procedure TDirectoryListBox.sub_005807BC;
begin
{*
 005807BC    push        ebp
 005807BD    mov         ebp,esp
 005807BF    push        ecx
 005807C0    mov         dword ptr [ebp-4],eax
 005807C3    mov         eax,dword ptr [ebp-4]
 005807C6    call        TControl.sub_005F5508
 005807CB    mov         eax,dword ptr [ebp-4]
 005807CE    call        00580188
 005807D3    pop         ecx
 005807D4    pop         ebp
 005807D5    ret
*}
end;

//005807D8
procedure sub_005807D8;
begin
{*
 005807D8    push        ebp
 005807D9    mov         ebp,esp
 005807DB    push        ecx
 005807DC    push        ebx
 005807DD    mov         dword ptr [ebp-4],eax
 005807E0    mov         eax,dword ptr [ebp-4]
 005807E3    cmp         dword ptr [eax+280],0;TDirectoryListBox.FileList:TFileListBox
>005807EA    je          00580803
 005807EC    mov         eax,dword ptr [ebp-4]
 005807EF    mov         edx,dword ptr [eax+29C];TDirectoryListBox.FDirectory:String
 005807F5    mov         eax,dword ptr [ebp-4]
 005807F8    mov         eax,dword ptr [eax+280];TDirectoryListBox.FileList:TFileListBox
 005807FE    call        0058190C
 00580803    mov         eax,dword ptr [ebp-4]
 00580806    call        00580E10
 0058080B    mov         eax,dword ptr [ebp-4]
 0058080E    cmp         word ptr [eax+2A2],0;TDirectoryListBox.?f2A2:word
>00580816    je          0058082A
 00580818    mov         ebx,dword ptr [ebp-4]
 0058081B    mov         edx,dword ptr [ebp-4]
 0058081E    mov         eax,dword ptr [ebx+2A4];TDirectoryListBox.?f2A4:dword
 00580824    call        dword ptr [ebx+2A0];TDirectoryListBox.OnChange
 0058082A    pop         ebx
 0058082B    pop         ecx
 0058082C    pop         ebp
 0058082D    ret
*}
end;

//00580830
{*procedure sub_00580830(?:?; ?:?);
begin
 00580830    push        ebp
 00580831    mov         ebp,esp
 00580833    add         esp,0FFFFFFB0
 00580836    push        ebx
 00580837    push        esi
 00580838    push        edi
 00580839    xor         ebx,ebx
 0058083B    mov         dword ptr [ebp-4C],ebx
 0058083E    mov         dword ptr [ebp-50],ebx
 00580841    mov         esi,ecx
 00580843    lea         edi,[ebp-28]
 00580846    movs        dword ptr [edi],dword ptr [esi]
 00580847    movs        dword ptr [edi],dword ptr [esi]
 00580848    movs        dword ptr [edi],dword ptr [esi]
 00580849    movs        dword ptr [edi],dword ptr [esi]
 0058084A    mov         dword ptr [ebp-8],edx
 0058084D    mov         dword ptr [ebp-4],eax
 00580850    xor         eax,eax
 00580852    push        ebp
 00580853    push        5809B5
 00580858    push        dword ptr fs:[eax]
 0058085B    mov         dword ptr fs:[eax],esp
 0058085E    mov         eax,dword ptr [ebp-4]
 00580861    mov         eax,dword ptr [eax+228];TDirectoryListBox.FCanvas:TCanvas
 00580867    mov         dword ptr [ebp-18],eax
 0058086A    lea         edx,[ebp-28]
 0058086D    mov         eax,dword ptr [ebp-18]
 00580870    call        TCanvas.FillRect
 00580875    mov         dword ptr [ebp-10],10
 0058087C    mov         eax,dword ptr [ebp-8]
 0058087F    shl         eax,2
 00580882    add         eax,2
 00580885    mov         dword ptr [ebp-14],eax
 00580888    mov         edx,dword ptr [ebp-8]
 0058088B    mov         eax,dword ptr [ebp-4]
 0058088E    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 00580894    mov         ecx,dword ptr [eax]
 00580896    call        dword ptr [ecx+18];TStrings.sub_00647284
 00580899    mov         dword ptr [ebp-0C],eax
 0058089C    cmp         dword ptr [ebp-0C],0
>005808A0    je          0058095D
 005808A6    mov         eax,dword ptr [ebp-0C]
 005808A9    mov         edx,dword ptr [ebp-4]
 005808AC    cmp         eax,dword ptr [edx+290];TDirectoryListBox.ClosedBMP:TBitmap
>005808B2    jne         005808CC
 005808B4    mov         eax,dword ptr [ebp-4]
 005808B7    mov         eax,dword ptr [eax+29C];TDirectoryListBox.FDirectory:String
 005808BD    call        0057FE78
 005808C2    inc         eax
 005808C3    shl         eax,2
 005808C6    add         eax,2
 005808C9    mov         dword ptr [ebp-14],eax
 005808CC    mov         eax,dword ptr [ebp-0C]
 005808CF    mov         edx,dword ptr [eax]
 005808D1    call        dword ptr [edx+2C]
 005808D4    mov         dword ptr [ebp-10],eax
 005808D7    mov         eax,dword ptr [ebp-0C]
 005808DA    mov         edx,dword ptr [eax]
 005808DC    call        dword ptr [edx+20]
 005808DF    push        eax
 005808E0    lea         eax,[ebp-38]
 005808E3    push        eax
 005808E4    mov         eax,dword ptr [ebp-0C]
 005808E7    mov         edx,dword ptr [eax]
 005808E9    call        dword ptr [edx+2C]
 005808EC    mov         ecx,eax
 005808EE    xor         edx,edx
 005808F0    xor         eax,eax
 005808F2    call        Bounds
 005808F7    lea         eax,[ebp-38]
 005808FA    push        eax
 005808FB    mov         eax,dword ptr [ebp-0C]
 005808FE    mov         edx,dword ptr [eax]
 00580900    call        dword ptr [edx+20]
 00580903    dec         eax
 00580904    push        eax
 00580905    mov         eax,dword ptr [ebp-0C]
 00580908    call        TBitmap.GetCanvas
 0058090D    xor         edx,edx
 0058090F    pop         ecx
 00580910    call        005C18F0
 00580915    push        eax
 00580916    mov         eax,dword ptr [ebp-0C]
 00580919    mov         edx,dword ptr [eax]
 0058091B    call        dword ptr [edx+20]
 0058091E    push        eax
 0058091F    lea         eax,[ebp-48]
 00580922    push        eax
 00580923    mov         eax,dword ptr [ebp-0C]
 00580926    mov         edx,dword ptr [eax]
 00580928    call        dword ptr [edx+2C]
 0058092B    push        eax
 0058092C    mov         eax,dword ptr [ebp-0C]
 0058092F    mov         edx,dword ptr [eax]
 00580931    call        dword ptr [edx+20]
 00580934    mov         edx,dword ptr [ebp-24]
 00580937    add         edx,dword ptr [ebp-1C]
 0058093A    sub         edx,eax
 0058093C    sar         edx,1
>0058093E    jns         00580943
 00580940    adc         edx,0
 00580943    mov         eax,dword ptr [ebp-28]
 00580946    add         eax,dword ptr [ebp-14]
 00580949    pop         ecx
 0058094A    call        Bounds
 0058094F    lea         edx,[ebp-48]
 00580952    mov         ecx,dword ptr [ebp-0C]
 00580955    mov         eax,dword ptr [ebp-18]
 00580958    call        005C0CC4
 0058095D    lea         ecx,[ebp-50]
 00580960    mov         edx,dword ptr [ebp-8]
 00580963    mov         eax,dword ptr [ebp-4]
 00580966    mov         eax,dword ptr [eax+218];TDirectoryListBox.FItems:TStrings
 0058096C    mov         ebx,dword ptr [eax]
 0058096E    call        dword ptr [ebx+0C];@AbstractError
 00580971    mov         edx,dword ptr [ebp-50]
 00580974    lea         ecx,[ebp-4C]
 00580977    mov         eax,dword ptr [ebp-4]
 0058097A    call        005801EC
 0058097F    mov         eax,dword ptr [ebp-4C]
 00580982    push        eax
 00580983    mov         edx,dword ptr [ebp-28]
 00580986    add         edx,dword ptr [ebp-10]
 00580989    add         edx,dword ptr [ebp-14]
 0058098C    add         edx,4
 0058098F    mov         ecx,dword ptr [ebp-24]
 00580992    mov         eax,dword ptr [ebp-18]
 00580995    call        005C15A8
 0058099A    xor         eax,eax
 0058099C    pop         edx
 0058099D    pop         ecx
 0058099E    pop         ecx
 0058099F    mov         dword ptr fs:[eax],edx
 005809A2    push        5809BC
 005809A7    lea         eax,[ebp-50]
 005809AA    mov         edx,2
 005809AF    call        @LStrArrayClr
 005809B4    ret
>005809B5    jmp         @HandleFinally
>005809BA    jmp         005809A7
 005809BC    pop         edi
 005809BD    pop         esi
 005809BE    pop         ebx
 005809BF    mov         esp,ebp
 005809C1    pop         ebp
 005809C2    ret         4
end;*}

//005809C8
{*procedure sub_005809C8(?:?; ?:?; ?:?);
begin
 005809C8    push        ebp
 005809C9    mov         ebp,esp
 005809CB    add         esp,0FFFFFFD0
 005809CE    push        ebx
 005809CF    xor         ebx,ebx
 005809D1    mov         dword ptr [ebp-2C],ebx
 005809D4    mov         dword ptr [ebp-30],ebx
 005809D7    mov         dword ptr [ebp-28],ebx
 005809DA    mov         dword ptr [ebp-24],ebx
 005809DD    mov         dword ptr [ebp-20],ebx
 005809E0    mov         dword ptr [ebp-10],ebx
 005809E3    mov         dword ptr [ebp-0C],ecx
 005809E6    mov         dword ptr [ebp-8],edx
 005809E9    mov         dword ptr [ebp-4],eax
 005809EC    xor         eax,eax
 005809EE    push        ebp
 005809EF    push        580B86
 005809F4    push        dword ptr fs:[eax]
 005809F7    mov         dword ptr fs:[eax],esp
 005809FA    mov         eax,dword ptr [ebp-0C]
 005809FD    call        @LStrClr
 00580A02    mov         eax,dword ptr [ebp-4]
 00580A05    mov         eax,dword ptr [eax+218]
 00580A0B    mov         edx,dword ptr [eax]
 00580A0D    call        dword ptr [edx+14]
 00580A10    cmp         eax,dword ptr [ebp-8]
>00580A13    jle         00580B63
 00580A19    lea         eax,[ebp-10]
 00580A1C    mov         edx,dword ptr [ebp-4]
 00580A1F    mov         edx,dword ptr [edx+29C]
 00580A25    call        @LStrLAsg
 00580A2A    mov         edx,dword ptr [ebp-8]
 00580A2D    mov         eax,dword ptr [ebp-4]
 00580A30    mov         eax,dword ptr [eax+218]
 00580A36    mov         ecx,dword ptr [eax]
 00580A38    call        dword ptr [ecx+18]
 00580A3B    mov         dword ptr [ebp-1C],eax
 00580A3E    cmp         dword ptr [ebp-8],0
>00580A42    jne         00580A64
 00580A44    lea         edx,[ebp-20]
 00580A47    mov         eax,dword ptr [ebp-10]
 00580A4A    call        006584B8
 00580A4F    mov         edx,dword ptr [ebp-20]
 00580A52    mov         eax,dword ptr [ebp-0C]
 00580A55    mov         ecx,580B9C;'\'
 00580A5A    call        @LStrCat3
>00580A5F    jmp         00580B63
 00580A64    mov         eax,dword ptr [ebp-1C]
 00580A67    mov         edx,dword ptr [ebp-4]
 00580A6A    cmp         eax,dword ptr [edx+290]
>00580A70    jne         00580A99
 00580A72    lea         ecx,[ebp-24]
 00580A75    mov         edx,dword ptr [ebp-8]
 00580A78    mov         eax,dword ptr [ebp-4]
 00580A7B    mov         eax,dword ptr [eax+218]
 00580A81    mov         ebx,dword ptr [eax]
 00580A83    call        dword ptr [ebx+0C]
 00580A86    mov         edx,dword ptr [ebp-24]
 00580A89    mov         ecx,dword ptr [ebp-0C]
 00580A8C    mov         eax,dword ptr [ebp-10]
 00580A8F    call        0057EC10
>00580A94    jmp         00580B63
 00580A99    mov         eax,dword ptr [ebp-1C]
 00580A9C    mov         edx,dword ptr [ebp-4]
 00580A9F    cmp         eax,dword ptr [edx+298]
>00580AA5    jne         00580AB7
 00580AA7    mov         eax,dword ptr [ebp-0C]
 00580AAA    mov         edx,dword ptr [ebp-10]
 00580AAD    call        @LStrAsg
>00580AB2    jmp         00580B63
 00580AB7    xor         eax,eax
 00580AB9    mov         dword ptr [ebp-14],eax
 00580ABC    xor         eax,eax
 00580ABE    mov         dword ptr [ebp-18],eax
 00580AC1    lea         edx,[ebp-28]
 00580AC4    mov         eax,dword ptr [ebp-10]
 00580AC7    call        006584B8
 00580ACC    mov         eax,dword ptr [ebp-28]
 00580ACF    call        @LStrLen
 00580AD4    mov         ecx,eax
 00580AD6    lea         eax,[ebp-10]
 00580AD9    mov         edx,1
 00580ADE    call        @LStrDelete
>00580AE3    jmp         00580B24
 00580AE5    inc         dword ptr [ebp-14]
 00580AE8    mov         eax,dword ptr [ebp-10]
 00580AEB    call        @LStrLen
 00580AF0    cmp         eax,dword ptr [ebp-14]
>00580AF3    jl          00580B2D
 00580AF5    mov         eax,dword ptr [ebp-10]
 00580AF8    mov         edx,dword ptr [ebp-14]
 00580AFB    mov         al,byte ptr [eax+edx-1]
 00580AFF    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 00580B05    and         eax,0FF
 00580B0A    bt          dword ptr [edx],eax
>00580B0D    jae         00580B14
 00580B0F    inc         dword ptr [ebp-14]
>00580B12    jmp         00580B24
 00580B14    mov         eax,dword ptr [ebp-10]
 00580B17    mov         edx,dword ptr [ebp-14]
 00580B1A    cmp         byte ptr [eax+edx-1],5C
>00580B1F    jne         00580B24
 00580B21    inc         dword ptr [ebp-18]
 00580B24    mov         eax,dword ptr [ebp-8]
 00580B27    inc         eax
 00580B28    cmp         eax,dword ptr [ebp-18]
>00580B2B    jne         00580AE5
 00580B2D    lea         eax,[ebp-2C]
 00580B30    push        eax
 00580B31    mov         ecx,dword ptr [ebp-14]
 00580B34    dec         ecx
 00580B35    mov         edx,1
 00580B3A    mov         eax,dword ptr [ebp-10]
 00580B3D    call        @LStrCopy
 00580B42    mov         eax,dword ptr [ebp-2C]
 00580B45    push        eax
 00580B46    lea         edx,[ebp-30]
 00580B49    mov         eax,dword ptr [ebp-4]
 00580B4C    mov         eax,dword ptr [eax+29C]
 00580B52    call        006584B8
 00580B57    mov         edx,dword ptr [ebp-30]
 00580B5A    mov         eax,dword ptr [ebp-0C]
 00580B5D    pop         ecx
 00580B5E    call        @LStrCat3
 00580B63    xor         eax,eax
 00580B65    pop         edx
 00580B66    pop         ecx
 00580B67    pop         ecx
 00580B68    mov         dword ptr fs:[eax],edx
 00580B6B    push        580B8D
 00580B70    lea         eax,[ebp-30]
 00580B73    mov         edx,5
 00580B78    call        @LStrArrayClr
 00580B7D    lea         eax,[ebp-10]
 00580B80    call        @LStrClr
 00580B85    ret
>00580B86    jmp         @HandleFinally
>00580B8B    jmp         00580B70
 00580B8D    pop         ebx
 00580B8E    mov         esp,ebp
 00580B90    pop         ebp
 00580B91    ret
end;*}

//00580BA0
procedure TDirectoryListBox.CreateWnd;
begin
{*
 00580BA0    push        ebp
 00580BA1    mov         ebp,esp
 00580BA3    push        ecx
 00580BA4    mov         dword ptr [ebp-4],eax
 00580BA7    mov         eax,dword ptr [ebp-4]
 00580BAA    call        TCustomListBox.CreateWnd
 00580BAF    mov         eax,dword ptr [ebp-4]
 00580BB2    mov         edx,dword ptr [eax]
 00580BB4    call        dword ptr [edx+108];TDirectoryListBox.sub_005803C4
 00580BBA    mov         eax,dword ptr [ebp-4]
 00580BBD    mov         eax,dword ptr [eax+29C];TDirectoryListBox.FDirectory:String
 00580BC3    call        0057FE78
 00580BC8    mov         edx,eax
 00580BCA    mov         eax,dword ptr [ebp-4]
 00580BCD    mov         ecx,dword ptr [eax]
 00580BCF    call        dword ptr [ecx+0CC];TDirectoryListBox.sub_0059E3F8
 00580BD5    pop         ecx
 00580BD6    pop         ebp
 00580BD7    ret
*}
end;

//00580BD8
{*procedure TDirectoryListBox.CMFontChanged(?:?);
begin
 00580BD8    push        ebp
 00580BD9    mov         ebp,esp
 00580BDB    add         esp,0FFFFFFF8
 00580BDE    mov         dword ptr [ebp-8],edx
 00580BE1    mov         dword ptr [ebp-4],eax
 00580BE4    mov         edx,dword ptr [ebp-8]
 00580BE7    mov         eax,dword ptr [ebp-4]
 00580BEA    call        TWinControl.CMFontChanged
 00580BEF    mov         eax,dword ptr [ebp-4]
 00580BF2    call        00580BFC
 00580BF7    pop         ecx
 00580BF8    pop         ecx
 00580BF9    pop         ebp
 00580BFA    ret
end;*}

//00580BFC
procedure sub_00580BFC(?:TDirectoryListBox);
begin
{*
 00580BFC    push        ebp
 00580BFD    mov         ebp,esp
 00580BFF    add         esp,0FFFFFFF8
 00580C02    mov         dword ptr [ebp-4],eax
 00580C05    mov         eax,dword ptr [ebp-4]
 00580C08    mov         eax,dword ptr [eax+68];TDirectoryListBox.FFont:TFont
 00580C0B    call        0057F458
 00580C10    mov         dword ptr [ebp-8],eax
 00580C13    mov         eax,dword ptr [ebp-4]
 00580C16    mov         eax,dword ptr [eax+294];TDirectoryListBox.OpenedBMP:TBitmap
 00580C1C    mov         edx,dword ptr [eax]
 00580C1E    call        dword ptr [edx+20];TBitmap.GetHeight
 00580C21    inc         eax
 00580C22    cmp         eax,dword ptr [ebp-8]
>00580C25    jle         00580C39
 00580C27    mov         eax,dword ptr [ebp-4]
 00580C2A    mov         eax,dword ptr [eax+294];TDirectoryListBox.OpenedBMP:TBitmap
 00580C30    mov         edx,dword ptr [eax]
 00580C32    call        dword ptr [edx+20];TBitmap.GetHeight
 00580C35    inc         eax
 00580C36    mov         dword ptr [ebp-8],eax
 00580C39    mov         edx,dword ptr [ebp-8]
 00580C3C    mov         eax,dword ptr [ebp-4]
 00580C3F    call        TCheckListBox.SetItemHeight
 00580C44    pop         ecx
 00580C45    pop         ecx
 00580C46    pop         ebp
 00580C47    ret
*}
end;

//00580C48
{*function sub_00580C48(?:TDirectoryListBox):?;
begin
 00580C48    push        ebp
 00580C49    mov         ebp,esp
 00580C4B    add         esp,0FFFFFFF8
 00580C4E    mov         dword ptr [ebp-4],eax
 00580C51    mov         eax,dword ptr [ebp-4]
 00580C54    mov         eax,dword ptr [eax+29C]
 00580C5A    mov         al,byte ptr [eax]
 00580C5C    mov         byte ptr [ebp-5],al
 00580C5F    mov         al,byte ptr [ebp-5]
 00580C62    pop         ecx
 00580C63    pop         ecx
 00580C64    pop         ebp
 00580C65    ret
end;*}

//00580C68
{*procedure sub_00580C68(?:?);
begin
 00580C68    push        ebp
 00580C69    mov         ebp,esp
 00580C6B    add         esp,0FFFFFFEC
 00580C6E    xor         ecx,ecx
 00580C70    mov         dword ptr [ebp-0C],ecx
 00580C73    mov         dword ptr [ebp-10],ecx
 00580C76    mov         dword ptr [ebp-8],edx
 00580C79    mov         dword ptr [ebp-4],eax
 00580C7C    xor         eax,eax
 00580C7E    push        ebp
 00580C7F    push        580D5C
 00580C84    push        dword ptr fs:[eax]
 00580C87    mov         dword ptr fs:[eax],esp
 00580C8A    mov         eax,dword ptr [ebp-8]
 00580C8D    call        @LStrLen
 00580C92    test        eax,eax
>00580C94    je          00580D41
 00580C9A    mov         eax,dword ptr [ebp-4]
 00580C9D    mov         ecx,dword ptr [eax+29C];TDirectoryListBox.FDirectory:String
 00580CA3    mov         edx,dword ptr [ebp-8]
 00580CA6    mov         eax,dword ptr [ebp-4]
 00580CA9    call        00580230
 00580CAE    test        eax,eax
>00580CB0    je          00580D41
 00580CB6    lea         eax,[ebp-10]
 00580CB9    push        eax
 00580CBA    lea         ecx,[ebp-0C]
 00580CBD    lea         edx,[ebp-11]
 00580CC0    mov         eax,dword ptr [ebp-8]
 00580CC3    call        0057F130
 00580CC8    xor         eax,eax
 00580CCA    push        ebp
 00580CCB    push        580D2F
 00580CD0    push        dword ptr fs:[eax]
 00580CD3    mov         dword ptr fs:[eax],esp
 00580CD6    mov         eax,dword ptr [ebp-4]
 00580CD9    call        00580C48
 00580CDE    cmp         al,byte ptr [ebp-11]
>00580CE1    je          00580D17
 00580CE3    mov         eax,dword ptr [ebp-4]
 00580CE6    mov         byte ptr [eax+28C],1;TDirectoryListBox.FInSetDir:Boolean
 00580CED    mov         eax,dword ptr [ebp-4]
 00580CF0    cmp         dword ptr [eax+284],0;TDirectoryListBox.FDriveCombo:TDriveComboBox
>00580CF7    je          00580D0C
 00580CF9    mov         eax,dword ptr [ebp-4]
 00580CFC    mov         eax,dword ptr [eax+284];TDirectoryListBox.FDriveCombo:TDriveComboBox
 00580D02    mov         dl,byte ptr [ebp-11]
 00580D05    call        0057F850
>00580D0A    jmp         00580D17
 00580D0C    mov         dl,byte ptr [ebp-11]
 00580D0F    mov         eax,dword ptr [ebp-4]
 00580D12    call        0057FFA8
 00580D17    xor         eax,eax
 00580D19    pop         edx
 00580D1A    pop         ecx
 00580D1B    pop         ecx
 00580D1C    mov         dword ptr fs:[eax],edx
 00580D1F    push        580D36
 00580D24    mov         eax,dword ptr [ebp-4]
 00580D27    mov         byte ptr [eax+28C],0;TDirectoryListBox.FInSetDir:Boolean
 00580D2E    ret
>00580D2F    jmp         @HandleFinally
>00580D34    jmp         00580D24
 00580D36    mov         edx,dword ptr [ebp-0C]
 00580D39    mov         eax,dword ptr [ebp-4]
 00580D3C    call        00580120
 00580D41    xor         eax,eax
 00580D43    pop         edx
 00580D44    pop         ecx
 00580D45    pop         ecx
 00580D46    mov         dword ptr fs:[eax],edx
 00580D49    push        580D63
 00580D4E    lea         eax,[ebp-10]
 00580D51    mov         edx,2
 00580D56    call        @LStrArrayClr
 00580D5B    ret
>00580D5C    jmp         @HandleFinally
>00580D61    jmp         00580D4E
 00580D63    mov         esp,ebp
 00580D65    pop         ebp
 00580D66    ret
end;*}

//00580D68
{*procedure TDirectoryListBox.sub_00580D68(?:?);
begin
 00580D68    push        ebp
 00580D69    mov         ebp,esp
 00580D6B    add         esp,0FFFFFFF8
 00580D6E    mov         dword ptr [ebp-8],edx
 00580D71    mov         dword ptr [ebp-4],eax
 00580D74    mov         edx,dword ptr [ebp-8]
 00580D77    mov         eax,dword ptr [ebp-4]
 00580D7A    call        TCustomListBox.sub_0059F69C
 00580D7F    mov         eax,dword ptr [ebp-8]
 00580D82    movzx       eax,byte ptr [eax]
 00580D85    cmp         ax,0D
>00580D89    jne         00580D93
 00580D8B    mov         eax,dword ptr [ebp-4]
 00580D8E    call        00580188
 00580D93    pop         ecx
 00580D94    pop         ecx
 00580D95    pop         ebp
 00580D96    ret
end;*}

//00580D98
procedure TDirectoryListBox.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00580D98    push        ebp
 00580D99    mov         ebp,esp
 00580D9B    add         esp,0FFFFFFF4
 00580D9E    mov         byte ptr [ebp-9],cl
 00580DA1    mov         dword ptr [ebp-8],edx
 00580DA4    mov         dword ptr [ebp-4],eax
 00580DA7    mov         cl,byte ptr [ebp-9]
 00580DAA    mov         edx,dword ptr [ebp-8]
 00580DAD    mov         eax,dword ptr [ebp-4]
 00580DB0    call        TControl.Notification
 00580DB5    cmp         byte ptr [ebp-9],1
>00580DB9    jne         00580E0A
 00580DBB    mov         eax,dword ptr [ebp-8]
 00580DBE    mov         edx,dword ptr [ebp-4]
 00580DC1    cmp         eax,dword ptr [edx+280];TDirectoryListBox.FileList:TFileListBox
>00580DC7    jne         00580DD6
 00580DC9    mov         eax,dword ptr [ebp-4]
 00580DCC    xor         edx,edx
 00580DCE    mov         dword ptr [eax+280],edx;TDirectoryListBox.FileList:TFileListBox
>00580DD4    jmp         00580E0A
 00580DD6    mov         eax,dword ptr [ebp-8]
 00580DD9    mov         edx,dword ptr [ebp-4]
 00580DDC    cmp         eax,dword ptr [edx+284];TDirectoryListBox.FDriveCombo:TDriveComboBox
>00580DE2    jne         00580DF1
 00580DE4    mov         eax,dword ptr [ebp-4]
 00580DE7    xor         edx,edx
 00580DE9    mov         dword ptr [eax+284],edx;TDirectoryListBox.FDriveCombo:TDriveComboBox
>00580DEF    jmp         00580E0A
 00580DF1    mov         eax,dword ptr [ebp-8]
 00580DF4    mov         edx,dword ptr [ebp-4]
 00580DF7    cmp         eax,dword ptr [edx+288];TDirectoryListBox.DirLabel:TLabel
>00580DFD    jne         00580E0A
 00580DFF    mov         eax,dword ptr [ebp-4]
 00580E02    xor         edx,edx
 00580E04    mov         dword ptr [eax+288],edx;TDirectoryListBox.DirLabel:TLabel
 00580E0A    mov         esp,ebp
 00580E0C    pop         ebp
 00580E0D    ret
*}
end;

//00580E10
procedure sub_00580E10(?:TDirectoryListBox);
begin
{*
 00580E10    push        ebp
 00580E11    mov         ebp,esp
 00580E13    add         esp,0FFFFFFF4
 00580E16    xor         edx,edx
 00580E18    mov         dword ptr [ebp-0C],edx
 00580E1B    mov         dword ptr [ebp-4],eax
 00580E1E    xor         eax,eax
 00580E20    push        ebp
 00580E21    push        580EAD
 00580E26    push        dword ptr fs:[eax]
 00580E29    mov         dword ptr fs:[eax],esp
 00580E2C    mov         eax,dword ptr [ebp-4]
 00580E2F    cmp         dword ptr [eax+288],0;TDirectoryListBox.DirLabel:TLabel
>00580E36    je          00580E97
 00580E38    mov         eax,dword ptr [ebp-4]
 00580E3B    mov         eax,dword ptr [eax+48];TDirectoryListBox.Width:Integer
 00580E3E    mov         dword ptr [ebp-8],eax
 00580E41    mov         eax,dword ptr [ebp-4]
 00580E44    mov         eax,dword ptr [eax+288];TDirectoryListBox.DirLabel:TLabel
 00580E4A    cmp         byte ptr [eax+16D],0;TLabel.FAutoSize:Boolean
>00580E51    jne         00580E62
 00580E53    mov         eax,dword ptr [ebp-4]
 00580E56    mov         eax,dword ptr [eax+288];TDirectoryListBox.DirLabel:TLabel
 00580E5C    mov         eax,dword ptr [eax+48];TLabel.Width:Integer
 00580E5F    mov         dword ptr [ebp-8],eax
 00580E62    lea         eax,[ebp-0C]
 00580E65    push        eax
 00580E66    mov         eax,dword ptr [ebp-4]
 00580E69    mov         eax,dword ptr [eax+288];TDirectoryListBox.DirLabel:TLabel
 00580E6F    mov         edx,dword ptr [eax+160];TLabel........................................FCanvas:TCanvas
 00580E75    mov         ecx,dword ptr [ebp-8]
 00580E78    mov         eax,dword ptr [ebp-4]
 00580E7B    mov         eax,dword ptr [eax+29C];TDirectoryListBox.FDirectory:String
 00580E81    call        0057ED4C
 00580E86    mov         edx,dword ptr [ebp-0C]
 00580E89    mov         eax,dword ptr [ebp-4]
 00580E8C    mov         eax,dword ptr [eax+288];TDirectoryListBox.DirLabel:TLabel
 00580E92    call        TTabPage.SetCaption
 00580E97    xor         eax,eax
 00580E99    pop         edx
 00580E9A    pop         ecx
 00580E9B    pop         ecx
 00580E9C    mov         dword ptr fs:[eax],edx
 00580E9F    push        580EB4
 00580EA4    lea         eax,[ebp-0C]
 00580EA7    call        @LStrClr
 00580EAC    ret
>00580EAD    jmp         @HandleFinally
>00580EB2    jmp         00580EA4
 00580EB4    mov         esp,ebp
 00580EB6    pop         ebp
 00580EB7    ret
*}
end;

//00580EB8
constructor TFileListBox.Create(AOwner:TComponent);
begin
{*
 00580EB8    push        ebp
 00580EB9    mov         ebp,esp
 00580EBB    add         esp,0FFFFFFF4
 00580EBE    test        dl,dl
>00580EC0    je          00580ECA
 00580EC2    add         esp,0FFFFFFF0
 00580EC5    call        @ClassCreate
 00580ECA    mov         dword ptr [ebp-0C],ecx
 00580ECD    mov         byte ptr [ebp-5],dl
 00580ED0    mov         dword ptr [ebp-4],eax
 00580ED3    mov         ecx,dword ptr [ebp-0C]
 00580ED6    xor         edx,edx
 00580ED8    mov         eax,dword ptr [ebp-4]
 00580EDB    call        TCustomListBox.Create
 00580EE0    mov         edx,91
 00580EE5    mov         eax,dword ptr [ebp-4]
 00580EE8    call        TControl.SetWidth
 00580EED    mov         eax,dword ptr [ebp-4]
 00580EF0    mov         dl,byte ptr ds:[580F80];0x40 gvar_00580F80
 00580EF6    mov         byte ptr [eax+288],dl;TFileListBox.FileType:TFileType
 00580EFC    mov         eax,dword ptr [ebp-4]
 00580EFF    lea         edx,[eax+280];TFileListBox.FDirectory:String
 00580F05    xor         eax,eax
 00580F07    call        @LGetDir
 00580F0C    mov         eax,dword ptr [ebp-4]
 00580F0F    add         eax,284;TFileListBox.Mask:String
 00580F14    mov         edx,580F8C;'*.*'
 00580F19    call        @LStrAsg
 00580F1E    xor         edx,edx
 00580F20    mov         eax,dword ptr [ebp-4]
 00580F23    mov         ecx,dword ptr [eax]
 00580F25    call        dword ptr [ecx+0F0];TFileListBox.SetMultiSelect
 00580F2B    mov         eax,dword ptr [ebp-4]
 00580F2E    mov         dword ptr [eax+2B0],0FFFFFFFF;TFileListBox.FLastSel:Integer
 00580F38    mov         eax,dword ptr [ebp-4]
 00580F3B    mov         edx,dword ptr [eax]
 00580F3D    call        dword ptr [edx+0FC];TFileListBox.sub_00581040
 00580F43    mov         dl,1
 00580F45    mov         eax,dword ptr [ebp-4]
 00580F48    call        TCheckListBox.SetSorted
 00580F4D    mov         dl,1
 00580F4F    mov         eax,dword ptr [ebp-4]
 00580F52    call        TCheckListBox.SetStyle
 00580F57    mov         eax,dword ptr [ebp-4]
 00580F5A    call        00581A1C
 00580F5F    mov         eax,dword ptr [ebp-4]
 00580F62    cmp         byte ptr [ebp-5],0
>00580F66    je          00580F77
 00580F68    call        @AfterConstruction
 00580F6D    pop         dword ptr fs:[0]
 00580F74    add         esp,0C
 00580F77    mov         eax,dword ptr [ebp-4]
 00580F7A    mov         esp,ebp
 00580F7C    pop         ebp
 00580F7D    ret
*}
end;

//00580F90
destructor TFileListBox.Destroy;
begin
{*
 00580F90    push        ebp
 00580F91    mov         ebp,esp
 00580F93    add         esp,0FFFFFFF8
 00580F96    call        @BeforeDestruction
 00580F9B    mov         byte ptr [ebp-5],dl
 00580F9E    mov         dword ptr [ebp-4],eax
 00580FA1    mov         eax,dword ptr [ebp-4]
 00580FA4    mov         eax,dword ptr [eax+298];TFileListBox.ExeBMP:TBitmap
 00580FAA    call        TObject.Free
 00580FAF    mov         eax,dword ptr [ebp-4]
 00580FB2    mov         eax,dword ptr [eax+29C];TFileListBox.DirBMP:TBitmap
 00580FB8    call        TObject.Free
 00580FBD    mov         eax,dword ptr [ebp-4]
 00580FC0    mov         eax,dword ptr [eax+2A0];TFileListBox.UnknownBMP:TBitmap
 00580FC6    call        TObject.Free
 00580FCB    mov         dl,byte ptr [ebp-5]
 00580FCE    and         dl,0FC
 00580FD1    mov         eax,dword ptr [ebp-4]
 00580FD4    call        TCustomListBox.Destroy
 00580FD9    cmp         byte ptr [ebp-5],0
>00580FDD    jle         00580FE7
 00580FDF    mov         eax,dword ptr [ebp-4]
 00580FE2    call        @ClassDestroy
 00580FE7    pop         ecx
 00580FE8    pop         ecx
 00580FE9    pop         ebp
 00580FEA    ret
*}
end;

//00580FEC
procedure TFileListBox.CreateWnd;
begin
{*
 00580FEC    push        ebp
 00580FED    mov         ebp,esp
 00580FEF    push        ecx
 00580FF0    mov         dword ptr [ebp-4],eax
 00580FF3    mov         eax,dword ptr [ebp-4]
 00580FF6    call        TCustomListBox.CreateWnd
 00580FFB    mov         eax,dword ptr [ebp-4]
 00580FFE    mov         edx,dword ptr [eax]
 00581000    call        dword ptr [edx+104];TFileListBox.sub_00581114
 00581006    pop         ecx
 00581007    pop         ebp
 00581008    ret
*}
end;

//0058100C
function TFileListBox.IsStoredMask(Value:String):Boolean;
begin
{*
 0058100C    push        ebp
 0058100D    mov         ebp,esp
 0058100F    add         esp,0FFFFFFF8
 00581012    mov         dword ptr [ebp-4],eax
 00581015    mov         eax,58103C;'*.*'
 0058101A    mov         edx,dword ptr [ebp-4]
 0058101D    mov         edx,dword ptr [edx+284];TFileListBox.Mask:String
 00581023    call        @LStrCmp
 00581028    setne       byte ptr [ebp-5]
 0058102C    mov         al,byte ptr [ebp-5]
 0058102F    pop         ecx
 00581030    pop         ecx
 00581031    pop         ebp
 00581032    ret
*}
end;

//00581040
procedure sub_00581040;
begin
{*
 00581040    push        ebp
 00581041    mov         ebp,esp
 00581043    push        ecx
 00581044    mov         dword ptr [ebp-4],eax
 00581047    mov         dl,1
 00581049    mov         eax,[005BEDD4];TBitmap
 0058104E    call        TBitmap.Create;TBitmap.Create
 00581053    mov         edx,dword ptr [ebp-4]
 00581056    mov         dword ptr [edx+298],eax;TFileListBox.ExeBMP:TBitmap
 0058105C    push        5810EC
 00581061    mov         eax,[006EA390];0x0 gvar_006EA390
 00581066    push        eax
 00581067    call        USER32.LoadBitmapA
 0058106C    mov         edx,eax
 0058106E    mov         eax,dword ptr [ebp-4]
 00581071    mov         eax,dword ptr [eax+298];TFileListBox.ExeBMP:TBitmap
 00581077    call        TBitmap.SetHandle
 0058107C    mov         dl,1
 0058107E    mov         eax,[005BEDD4];TBitmap
 00581083    call        TBitmap.Create;TBitmap.Create
 00581088    mov         edx,dword ptr [ebp-4]
 0058108B    mov         dword ptr [edx+29C],eax;TFileListBox.DirBMP:TBitmap
 00581091    push        5810F8
 00581096    mov         eax,[006EA390];0x0 gvar_006EA390
 0058109B    push        eax
 0058109C    call        USER32.LoadBitmapA
 005810A1    mov         edx,eax
 005810A3    mov         eax,dword ptr [ebp-4]
 005810A6    mov         eax,dword ptr [eax+29C];TFileListBox.DirBMP:TBitmap
 005810AC    call        TBitmap.SetHandle
 005810B1    mov         dl,1
 005810B3    mov         eax,[005BEDD4];TBitmap
 005810B8    call        TBitmap.Create;TBitmap.Create
 005810BD    mov         edx,dword ptr [ebp-4]
 005810C0    mov         dword ptr [edx+2A0],eax;TFileListBox.UnknownBMP:TBitmap
 005810C6    push        581108
 005810CB    mov         eax,[006EA390];0x0 gvar_006EA390
 005810D0    push        eax
 005810D1    call        USER32.LoadBitmapA
 005810D6    mov         edx,eax
 005810D8    mov         eax,dword ptr [ebp-4]
 005810DB    mov         eax,dword ptr [eax+2A0];TFileListBox.UnknownBMP:TBitmap
 005810E1    call        TBitmap.SetHandle
 005810E6    pop         ecx
 005810E7    pop         ebp
 005810E8    ret
*}
end;

//00581114
procedure sub_00581114;
begin
{*
 00581114    push        ebp
 00581115    mov         ebp,esp
 00581117    add         esp,0FFFFFE74
 0058111D    push        ebx
 0058111E    xor         edx,edx
 00581120    mov         dword ptr [ebp-18C],edx
 00581126    mov         dword ptr [ebp-180],edx
 0058112C    mov         dword ptr [ebp-17C],edx
 00581132    mov         dword ptr [ebp-10],edx
 00581135    mov         dword ptr [ebp-4],eax
 00581138    lea         eax,[ebp-178]
 0058113E    mov         edx,dword ptr ds:[656754];TSearchRec
 00581144    call        @InitializeRecord
 00581149    xor         eax,eax
 0058114B    push        ebp
 0058114C    push        58142A
 00581151    push        dword ptr fs:[eax]
 00581154    mov         dword ptr fs:[eax],esp
 00581157    mov         word ptr [ebp-1A],0
 0058115D    mov         eax,dword ptr [ebp-4]
 00581160    call        TWinControl.HandleAllocated
 00581165    test        al,al
>00581167    je          005813E8
 0058116D    mov         byte ptr [ebp-5],0
 00581171    mov         eax,dword ptr [ebp-4]
 00581174    mov         dl,byte ptr [ebp-5]
 00581177    cmp         dl,7
>0058117A    ja          00581186
 0058117C    and         edx,7F
 0058117F    bt          dword ptr [eax+288],edx;TFileListBox.FileType:TFileType
>00581186    jae         00581199
 00581188    xor         eax,eax
 0058118A    mov         al,byte ptr [ebp-5]
 0058118D    mov         ax,word ptr [eax*2+6E398C]
 00581195    or          word ptr [ebp-1A],ax
 00581199    inc         byte ptr [ebp-5]
 0058119C    cmp         byte ptr [ebp-5],6
>005811A0    jne         00581171
 005811A2    mov         eax,dword ptr [ebp-4]
 005811A5    mov         eax,dword ptr [eax+280];TFileListBox.FDirectory:String
 005811AB    call        ChDir
 005811B0    call        @_IOTest
 005811B5    mov         eax,dword ptr [ebp-4]
 005811B8    mov         edx,dword ptr [eax]
 005811BA    call        dword ptr [edx+0D4];TCustomListBox.Clear
 005811C0    xor         eax,eax
 005811C2    mov         dword ptr [ebp-0C],eax
 005811C5    mov         eax,[006E9DD0];^Screen:TScreen
 005811CA    mov         eax,dword ptr [eax]
 005811CC    mov         ax,word ptr [eax+44];TScreen.FCursor:TCursor
 005811D0    mov         word ptr [ebp-1C],ax
 005811D4    xor         eax,eax
 005811D6    push        ebp
 005811D7    push        5813D6
 005811DC    push        dword ptr fs:[eax]
 005811DF    mov         dword ptr fs:[eax],esp
 005811E2    mov         eax,dword ptr [ebp-4]
 005811E5    mov         eax,dword ptr [eax+284];TFileListBox.Mask:String
 005811EB    call        @LStrToPChar
 005811F0    mov         dword ptr [ebp-14],eax
 005811F3    cmp         dword ptr [ebp-14],0
>005811F7    je          005813B8
 005811FD    mov         dl,3B
 005811FF    mov         eax,dword ptr [ebp-14]
 00581202    call        StrScan
 00581207    mov         dword ptr [ebp-18],eax
 0058120A    cmp         dword ptr [ebp-18],0
>0058120E    je          00581216
 00581210    mov         eax,dword ptr [ebp-18]
 00581213    mov         byte ptr [eax],0
 00581216    lea         eax,[ebp-17C]
 0058121C    mov         edx,dword ptr [ebp-14]
 0058121F    call        @LStrFromPChar
 00581224    mov         eax,dword ptr [ebp-17C]
 0058122A    lea         ecx,[ebp-178]
 00581230    movzx       edx,word ptr [ebp-1A]
 00581234    call        00658184
 00581239    test        eax,eax
>0058123B    jne         00581399
 00581241    mov         eax,dword ptr [ebp-4]
 00581244    test        byte ptr [eax+288],40;TFileListBox.FileType:TFileType
>0058124B    jne         0058125D
 0058124D    movzx       eax,word ptr [ebp-1A]
 00581251    and         eax,dword ptr [ebp-170]
>00581257    je          00581365
 0058125D    test        byte ptr [ebp-170],10
>00581264    je          005812D8
 00581266    lea         eax,[ebp-180]
 0058126C    push        eax
 0058126D    mov         eax,dword ptr [ebp-16C]
 00581273    mov         dword ptr [ebp-188],eax
 00581279    mov         byte ptr [ebp-184],0B
 00581280    lea         edx,[ebp-188]
 00581286    xor         ecx,ecx
 00581288    mov         eax,581440;'[%s]'
 0058128D    call        00658FBC
 00581292    mov         edx,dword ptr [ebp-180]
 00581298    mov         eax,dword ptr [ebp-4]
 0058129B    mov         eax,dword ptr [eax+218];TFileListBox.FItems:TStrings
 005812A1    mov         ecx,dword ptr [eax]
 005812A3    call        dword ptr [ecx+38];TStrings.sub_00646C94
 005812A6    mov         dword ptr [ebp-0C],eax
 005812A9    mov         eax,dword ptr [ebp-4]
 005812AC    cmp         byte ptr [eax+2B4],0;TFileListBox.ShowGlyphs:Boolean
>005812B3    je          00581365
 005812B9    mov         eax,dword ptr [ebp-4]
 005812BC    mov         ecx,dword ptr [eax+29C];TFileListBox.DirBMP:TBitmap
 005812C2    mov         eax,dword ptr [ebp-4]
 005812C5    mov         eax,dword ptr [eax+218];TFileListBox.FItems:TStrings
 005812CB    mov         edx,dword ptr [ebp-0C]
 005812CE    mov         ebx,dword ptr [eax]
 005812D0    call        dword ptr [ebx+24];TStrings.sub_006478BC
>005812D3    jmp         00581365
 005812D8    lea         edx,[ebp-18C]
 005812DE    mov         eax,dword ptr [ebp-16C]
 005812E4    call        006585C4
 005812E9    mov         eax,dword ptr [ebp-18C]
 005812EF    lea         edx,[ebp-10]
 005812F2    call        006576F0
 005812F7    mov         eax,dword ptr [ebp-4]
 005812FA    mov         eax,dword ptr [eax+2A0];TFileListBox.UnknownBMP:TBitmap
 00581300    mov         dword ptr [ebp-20],eax
 00581303    mov         eax,dword ptr [ebp-10]
 00581306    mov         edx,581450;'.exe'
 0058130B    call        @LStrCmp
>00581310    je          0058133F
 00581312    mov         eax,dword ptr [ebp-10]
 00581315    mov         edx,581460;'.com'
 0058131A    call        @LStrCmp
>0058131F    je          0058133F
 00581321    mov         eax,dword ptr [ebp-10]
 00581324    mov         edx,581470;'.bat'
 00581329    call        @LStrCmp
>0058132E    je          0058133F
 00581330    mov         eax,dword ptr [ebp-10]
 00581333    mov         edx,581480;'.pif'
 00581338    call        @LStrCmp
>0058133D    jne         0058134B
 0058133F    mov         eax,dword ptr [ebp-4]
 00581342    mov         eax,dword ptr [eax+298];TFileListBox.ExeBMP:TBitmap
 00581348    mov         dword ptr [ebp-20],eax
 0058134B    mov         eax,dword ptr [ebp-4]
 0058134E    mov         eax,dword ptr [eax+218];TFileListBox.FItems:TStrings
 00581354    mov         ecx,dword ptr [ebp-20]
 00581357    mov         edx,dword ptr [ebp-16C]
 0058135D    mov         ebx,dword ptr [eax]
 0058135F    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 00581362    mov         dword ptr [ebp-0C],eax
 00581365    cmp         dword ptr [ebp-0C],64
>00581369    jne         0058137B
 0058136B    mov         eax,[006E9DD0];^Screen:TScreen
 00581370    mov         eax,dword ptr [eax]
 00581372    mov         dx,0FFF5
 00581376    call        005D5E2C
 0058137B    lea         eax,[ebp-178]
 00581381    call        006581F0
 00581386    test        eax,eax
>00581388    je          00581241
 0058138E    lea         eax,[ebp-178]
 00581394    call        0065822C
 00581399    cmp         dword ptr [ebp-18],0
>0058139D    je          005813A8
 0058139F    mov         eax,dword ptr [ebp-18]
 005813A2    mov         byte ptr [eax],3B
 005813A5    inc         dword ptr [ebp-18]
 005813A8    mov         eax,dword ptr [ebp-18]
 005813AB    mov         dword ptr [ebp-14],eax
 005813AE    cmp         dword ptr [ebp-14],0
>005813B2    jne         005811FD
 005813B8    xor         eax,eax
 005813BA    pop         edx
 005813BB    pop         ecx
 005813BC    pop         ecx
 005813BD    mov         dword ptr fs:[eax],edx
 005813C0    push        5813DD
 005813C5    mov         eax,[006E9DD0];^Screen:TScreen
 005813CA    mov         eax,dword ptr [eax]
 005813CC    mov         dx,word ptr [ebp-1C]
 005813D0    call        005D5E2C
 005813D5    ret
>005813D6    jmp         @HandleFinally
>005813DB    jmp         005813C5
 005813DD    mov         eax,dword ptr [ebp-4]
 005813E0    mov         edx,dword ptr [eax]
 005813E2    call        dword ptr [edx+100];TFileListBox.sub_005814BC
 005813E8    xor         eax,eax
 005813EA    pop         edx
 005813EB    pop         ecx
 005813EC    pop         ecx
 005813ED    mov         dword ptr fs:[eax],edx
 005813F0    push        581431
 005813F5    lea         eax,[ebp-18C]
 005813FB    call        @LStrClr
 00581400    lea         eax,[ebp-180]
 00581406    mov         edx,2
 0058140B    call        @LStrArrayClr
 00581410    lea         eax,[ebp-178]
 00581416    mov         edx,dword ptr ds:[656754];TSearchRec
 0058141C    call        @FinalizeRecord
 00581421    lea         eax,[ebp-10]
 00581424    call        @LStrClr
 00581429    ret
>0058142A    jmp         @HandleFinally
>0058142F    jmp         005813F5
 00581431    pop         ebx
 00581432    mov         esp,ebp
 00581434    pop         ebp
 00581435    ret
*}
end;

//00581488
procedure TFileListBox.sub_00581488;
begin
{*
 00581488    push        ebp
 00581489    mov         ebp,esp
 0058148B    push        ecx
 0058148C    mov         dword ptr [ebp-4],eax
 0058148F    mov         eax,dword ptr [ebp-4]
 00581492    call        TControl.sub_005F5478
 00581497    mov         eax,dword ptr [ebp-4]
 0058149A    mov         edx,dword ptr [eax]
 0058149C    call        dword ptr [edx+0C8];TFileListBox.sub_0059E338
 005814A2    mov         edx,dword ptr [ebp-4]
 005814A5    cmp         eax,dword ptr [edx+2B0];TFileListBox.FLastSel:Integer
>005814AB    je          005814B8
 005814AD    mov         eax,dword ptr [ebp-4]
 005814B0    mov         edx,dword ptr [eax]
 005814B2    call        dword ptr [edx+100];TFileListBox.sub_005814BC
 005814B8    pop         ecx
 005814B9    pop         ebp
 005814BA    ret
*}
end;

//005814BC
procedure sub_005814BC;
begin
{*
 005814BC    push        ebp
 005814BD    mov         ebp,esp
 005814BF    push        0
 005814C1    push        0
 005814C3    push        0
 005814C5    push        ebx
 005814C6    mov         dword ptr [ebp-4],eax
 005814C9    xor         eax,eax
 005814CB    push        ebp
 005814CC    push        58158B
 005814D1    push        dword ptr fs:[eax]
 005814D4    mov         dword ptr fs:[eax],esp
 005814D7    mov         eax,dword ptr [ebp-4]
 005814DA    mov         edx,dword ptr [eax]
 005814DC    call        dword ptr [edx+0C8];TFileListBox.sub_0059E338
 005814E2    mov         edx,dword ptr [ebp-4]
 005814E5    mov         dword ptr [edx+2B0],eax;TFileListBox.FLastSel:Integer
 005814EB    mov         eax,dword ptr [ebp-4]
 005814EE    cmp         dword ptr [eax+28C],0;TFileListBox.FileEdit:TEdit
>005814F5    je          00581551
 005814F7    lea         edx,[ebp-8]
 005814FA    mov         eax,dword ptr [ebp-4]
 005814FD    call        00581600
 00581502    mov         eax,dword ptr [ebp-8]
 00581505    call        @LStrLen
 0058150A    test        eax,eax
>0058150C    jne         00581527
 0058150E    mov         eax,dword ptr [ebp-4]
 00581511    mov         edx,dword ptr [eax+284];TFileListBox.Mask:String
 00581517    mov         eax,dword ptr [ebp-4]
 0058151A    mov         eax,dword ptr [eax+28C];TFileListBox.FileEdit:TEdit
 00581520    call        TTabPage.SetCaption
>00581525    jmp         00581543
 00581527    lea         edx,[ebp-0C]
 0058152A    mov         eax,dword ptr [ebp-4]
 0058152D    call        00581600
 00581532    mov         edx,dword ptr [ebp-0C]
 00581535    mov         eax,dword ptr [ebp-4]
 00581538    mov         eax,dword ptr [eax+28C];TFileListBox.FileEdit:TEdit
 0058153E    call        TTabPage.SetCaption
 00581543    mov         eax,dword ptr [ebp-4]
 00581546    mov         eax,dword ptr [eax+28C];TFileListBox.FileEdit:TEdit
 0058154C    call        0059901C
 00581551    mov         eax,dword ptr [ebp-4]
 00581554    cmp         word ptr [eax+2AA],0;TFileListBox.?f2AA:word
>0058155C    je          00581570
 0058155E    mov         ebx,dword ptr [ebp-4]
 00581561    mov         edx,dword ptr [ebp-4]
 00581564    mov         eax,dword ptr [ebx+2AC];TFileListBox.?f2AC:dword
 0058156A    call        dword ptr [ebx+2A8];TFileListBox.OnChange
 00581570    xor         eax,eax
 00581572    pop         edx
 00581573    pop         ecx
 00581574    pop         ecx
 00581575    mov         dword ptr fs:[eax],edx
 00581578    push        581592
 0058157D    lea         eax,[ebp-0C]
 00581580    mov         edx,2
 00581585    call        @LStrArrayClr
 0058158A    ret
>0058158B    jmp         @HandleFinally
>00581590    jmp         0058157D
 00581592    pop         ebx
 00581593    mov         esp,ebp
 00581595    pop         ebp
 00581596    ret
*}
end;

//00581598
procedure TFileListBox.SetShowGlyphs(Value:Boolean);
begin
{*
 00581598    push        ebp
 00581599    mov         ebp,esp
 0058159B    add         esp,0FFFFFFF8
 0058159E    push        ebx
 0058159F    mov         byte ptr [ebp-5],dl
 005815A2    mov         dword ptr [ebp-4],eax
 005815A5    mov         eax,dword ptr [ebp-4]
 005815A8    mov         al,byte ptr [eax+2B4];TFileListBox.ShowGlyphs:Boolean
 005815AE    cmp         al,byte ptr [ebp-5]
>005815B1    je          005815F8
 005815B3    mov         al,byte ptr [ebp-5]
 005815B6    mov         edx,dword ptr [ebp-4]
 005815B9    mov         byte ptr [edx+2B4],al;TFileListBox.ShowGlyphs:Boolean
 005815BF    mov         eax,dword ptr [ebp-4]
 005815C2    cmp         byte ptr [eax+2B4],1;TFileListBox.ShowGlyphs:Boolean
>005815C9    jne         005815F0
 005815CB    mov         eax,dword ptr [ebp-4]
 005815CE    mov         eax,dword ptr [eax+298];TFileListBox.ExeBMP:TBitmap
 005815D4    mov         edx,dword ptr [eax]
 005815D6    call        dword ptr [edx+20];TBitmap.GetHeight
 005815D9    mov         ebx,eax
 005815DB    inc         ebx
 005815DC    mov         eax,dword ptr [ebp-4]
 005815DF    call        TCheckListBox.GetItemHeight
 005815E4    cmp         ebx,eax
>005815E6    jle         005815F0
 005815E8    mov         eax,dword ptr [ebp-4]
 005815EB    call        00581A1C
 005815F0    mov         eax,dword ptr [ebp-4]
 005815F3    mov         edx,dword ptr [eax]
 005815F5    call        dword ptr [edx+7C];TWinControl.Invalidate
 005815F8    pop         ebx
 005815F9    pop         ecx
 005815FA    pop         ecx
 005815FB    pop         ebp
 005815FC    ret
*}
end;

//00581600
{*procedure sub_00581600(?:TFileListBox; ?:?);
begin
 00581600    push        ebp
 00581601    mov         ebp,esp
 00581603    add         esp,0FFFFFFF4
 00581606    push        ebx
 00581607    mov         dword ptr [ebp-8],edx
 0058160A    mov         dword ptr [ebp-4],eax
 0058160D    mov         eax,dword ptr [ebp-4]
 00581610    mov         edx,dword ptr [eax]
 00581612    call        dword ptr [edx+0C8];TFileListBox.sub_0059E338
 00581618    mov         dword ptr [ebp-0C],eax
 0058161B    cmp         dword ptr [ebp-0C],0
>0058161F    jl          00581642
 00581621    mov         eax,dword ptr [ebp-4]
 00581624    mov         eax,dword ptr [eax+218];TFileListBox.FItems:TStrings
 0058162A    mov         edx,dword ptr [eax]
 0058162C    call        dword ptr [edx+14];@AbstractError
 0058162F    test        eax,eax
>00581631    je          00581642
 00581633    mov         edx,dword ptr [ebp-0C]
 00581636    mov         eax,dword ptr [ebp-4]
 00581639    call        0059E5C8
 0058163E    test        al,al
>00581640    jne         0058164C
 00581642    mov         eax,dword ptr [ebp-8]
 00581645    call        @LStrClr
>0058164A    jmp         00581660
 0058164C    mov         ecx,dword ptr [ebp-8]
 0058164F    mov         edx,dword ptr [ebp-0C]
 00581652    mov         eax,dword ptr [ebp-4]
 00581655    mov         eax,dword ptr [eax+218];TFileListBox.FItems:TStrings
 0058165B    mov         ebx,dword ptr [eax]
 0058165D    call        dword ptr [ebx+0C];@AbstractError
 00581660    pop         ebx
 00581661    mov         esp,ebp
 00581663    pop         ebp
 00581664    ret
end;*}

//00581668
{*procedure sub_00581668(?:TFileListBox; ?:?);
begin
 00581668    push        ebp
 00581669    mov         ebp,esp
 0058166B    add         esp,0FFFFFFF4
 0058166E    xor         ecx,ecx
 00581670    mov         dword ptr [ebp-0C],ecx
 00581673    mov         dword ptr [ebp-8],edx
 00581676    mov         dword ptr [ebp-4],eax
 00581679    xor         eax,eax
 0058167B    push        ebp
 0058167C    push        5816ED
 00581681    push        dword ptr fs:[eax]
 00581684    mov         dword ptr fs:[eax],esp
 00581687    lea         edx,[ebp-0C]
 0058168A    mov         eax,dword ptr [ebp-4]
 0058168D    call        00581600
 00581692    mov         edx,dword ptr [ebp-0C]
 00581695    mov         eax,dword ptr [ebp-8]
 00581698    call        0065D448
 0058169D    test        eax,eax
>0058169F    je          005816D7
 005816A1    mov         eax,dword ptr [ebp-8]
 005816A4    call        @LStrToPChar
 005816A9    push        eax
 005816AA    push        0
 005816AC    push        1A2
 005816B1    mov         eax,dword ptr [ebp-4]
 005816B4    call        TWinControl.GetHandle
 005816B9    push        eax
 005816BA    call        USER32.SendMessageA
 005816BF    mov         edx,eax
 005816C1    mov         eax,dword ptr [ebp-4]
 005816C4    mov         ecx,dword ptr [eax]
 005816C6    call        dword ptr [ecx+0CC]
 005816CC    mov         eax,dword ptr [ebp-4]
 005816CF    mov         edx,dword ptr [eax]
 005816D1    call        dword ptr [edx+100]
 005816D7    xor         eax,eax
 005816D9    pop         edx
 005816DA    pop         ecx
 005816DB    pop         ecx
 005816DC    mov         dword ptr fs:[eax],edx
 005816DF    push        5816F4
 005816E4    lea         eax,[ebp-0C]
 005816E7    call        @LStrClr
 005816EC    ret
>005816ED    jmp         @HandleFinally
>005816F2    jmp         005816E4
 005816F4    mov         esp,ebp
 005816F6    pop         ebp
 005816F7    ret
end;*}

//005816F8
procedure TFileListBox.SetFileEdit(Value:TEdit);
begin
{*
 005816F8    push        ebp
 005816F9    mov         ebp,esp
 005816FB    add         esp,0FFFFFFF0
 005816FE    xor         ecx,ecx
 00581700    mov         dword ptr [ebp-10],ecx
 00581703    mov         dword ptr [ebp-0C],ecx
 00581706    mov         dword ptr [ebp-8],edx
 00581709    mov         dword ptr [ebp-4],eax
 0058170C    xor         eax,eax
 0058170E    push        ebp
 0058170F    push        5817A4
 00581714    push        dword ptr fs:[eax]
 00581717    mov         dword ptr fs:[eax],esp
 0058171A    mov         eax,dword ptr [ebp-8]
 0058171D    mov         edx,dword ptr [ebp-4]
 00581720    mov         dword ptr [edx+28C],eax;TFileListBox.FileEdit:TEdit
 00581726    mov         eax,dword ptr [ebp-4]
 00581729    cmp         dword ptr [eax+28C],0;TFileListBox.FileEdit:TEdit
>00581730    je          00581789
 00581732    mov         edx,dword ptr [ebp-4]
 00581735    mov         eax,dword ptr [ebp-4]
 00581738    mov         eax,dword ptr [eax+28C];TFileListBox.FileEdit:TEdit
 0058173E    call        TComponent.FreeNotification
 00581743    lea         edx,[ebp-0C]
 00581746    mov         eax,dword ptr [ebp-4]
 00581749    call        00581600
 0058174E    cmp         dword ptr [ebp-0C],0
>00581752    je          00581772
 00581754    lea         edx,[ebp-10]
 00581757    mov         eax,dword ptr [ebp-4]
 0058175A    call        00581600
 0058175F    mov         edx,dword ptr [ebp-10]
 00581762    mov         eax,dword ptr [ebp-4]
 00581765    mov         eax,dword ptr [eax+28C];TFileListBox.FileEdit:TEdit
 0058176B    call        TTabPage.SetCaption
>00581770    jmp         00581789
 00581772    mov         eax,dword ptr [ebp-4]
 00581775    mov         edx,dword ptr [eax+284];TFileListBox.Mask:String
 0058177B    mov         eax,dword ptr [ebp-4]
 0058177E    mov         eax,dword ptr [eax+28C];TFileListBox.FileEdit:TEdit
 00581784    call        TTabPage.SetCaption
 00581789    xor         eax,eax
 0058178B    pop         edx
 0058178C    pop         ecx
 0058178D    pop         ecx
 0058178E    mov         dword ptr fs:[eax],edx
 00581791    push        5817AB
 00581796    lea         eax,[ebp-10]
 00581799    mov         edx,2
 0058179E    call        @LStrArrayClr
 005817A3    ret
>005817A4    jmp         @HandleFinally
>005817A9    jmp         00581796
 005817AB    mov         esp,ebp
 005817AD    pop         ebp
 005817AE    ret
*}
end;

//005817B0
{*procedure sub_005817B0(?:?; ?:?);
begin
 005817B0    push        ebp
 005817B1    mov         ebp,esp
 005817B3    add         esp,0FFFFFFB8
 005817B6    push        ebx
 005817B7    push        esi
 005817B8    push        edi
 005817B9    xor         ebx,ebx
 005817BB    mov         dword ptr [ebp-48],ebx
 005817BE    mov         esi,ecx
 005817C0    lea         edi,[ebp-24]
 005817C3    movs        dword ptr [edi],dword ptr [esi]
 005817C4    movs        dword ptr [edi],dword ptr [esi]
 005817C5    movs        dword ptr [edi],dword ptr [esi]
 005817C6    movs        dword ptr [edi],dword ptr [esi]
 005817C7    mov         dword ptr [ebp-8],edx
 005817CA    mov         dword ptr [ebp-4],eax
 005817CD    xor         eax,eax
 005817CF    push        ebp
 005817D0    push        5818FA
 005817D5    push        dword ptr fs:[eax]
 005817D8    mov         dword ptr fs:[eax],esp
 005817DB    mov         eax,dword ptr [ebp-4]
 005817DE    mov         eax,dword ptr [eax+228];TFileListBox.FCanvas:TCanvas
 005817E4    mov         dword ptr [ebp-14],eax
 005817E7    lea         edx,[ebp-24]
 005817EA    mov         eax,dword ptr [ebp-14]
 005817ED    call        TCanvas.FillRect
 005817F2    mov         dword ptr [ebp-10],2
 005817F9    mov         eax,dword ptr [ebp-4]
 005817FC    cmp         byte ptr [eax+2B4],0;TFileListBox.ShowGlyphs:Boolean
>00581803    je          005818BB
 00581809    mov         edx,dword ptr [ebp-8]
 0058180C    mov         eax,dword ptr [ebp-4]
 0058180F    mov         eax,dword ptr [eax+218];TFileListBox.FItems:TStrings
 00581815    mov         ecx,dword ptr [eax]
 00581817    call        dword ptr [ecx+18];TStrings.sub_00647284
 0058181A    mov         dword ptr [ebp-0C],eax
 0058181D    cmp         dword ptr [ebp-0C],0
>00581821    je          005818BB
 00581827    mov         eax,dword ptr [ebp-0C]
 0058182A    mov         edx,dword ptr [eax]
 0058182C    call        dword ptr [edx+20]
 0058182F    push        eax
 00581830    lea         eax,[ebp-34]
 00581833    push        eax
 00581834    mov         eax,dword ptr [ebp-0C]
 00581837    mov         edx,dword ptr [eax]
 00581839    call        dword ptr [edx+2C]
 0058183C    mov         ecx,eax
 0058183E    xor         edx,edx
 00581840    xor         eax,eax
 00581842    call        Bounds
 00581847    lea         eax,[ebp-34]
 0058184A    push        eax
 0058184B    mov         eax,dword ptr [ebp-0C]
 0058184E    mov         edx,dword ptr [eax]
 00581850    call        dword ptr [edx+20]
 00581853    dec         eax
 00581854    push        eax
 00581855    mov         eax,dword ptr [ebp-0C]
 00581858    call        TBitmap.GetCanvas
 0058185D    xor         edx,edx
 0058185F    pop         ecx
 00581860    call        005C18F0
 00581865    push        eax
 00581866    mov         eax,dword ptr [ebp-0C]
 00581869    mov         edx,dword ptr [eax]
 0058186B    call        dword ptr [edx+20]
 0058186E    push        eax
 0058186F    lea         eax,[ebp-44]
 00581872    push        eax
 00581873    mov         eax,dword ptr [ebp-0C]
 00581876    mov         edx,dword ptr [eax]
 00581878    call        dword ptr [edx+2C]
 0058187B    push        eax
 0058187C    mov         eax,dword ptr [ebp-0C]
 0058187F    mov         edx,dword ptr [eax]
 00581881    call        dword ptr [edx+20]
 00581884    mov         edx,dword ptr [ebp-20]
 00581887    add         edx,dword ptr [ebp-18]
 0058188A    sub         edx,eax
 0058188C    sar         edx,1
>0058188E    jns         00581893
 00581890    adc         edx,0
 00581893    mov         eax,dword ptr [ebp-24]
 00581896    add         eax,2;TRect.Left:Longint
 00581899    pop         ecx
 0058189A    call        Bounds
 0058189F    lea         edx,[ebp-44]
 005818A2    mov         ecx,dword ptr [ebp-0C]
 005818A5    mov         eax,dword ptr [ebp-14]
 005818A8    call        005C0CC4
 005818AD    mov         eax,dword ptr [ebp-0C]
 005818B0    mov         edx,dword ptr [eax]
 005818B2    call        dword ptr [edx+2C]
 005818B5    add         eax,6
 005818B8    mov         dword ptr [ebp-10],eax
 005818BB    lea         ecx,[ebp-48]
 005818BE    mov         edx,dword ptr [ebp-8]
 005818C1    mov         eax,dword ptr [ebp-4]
 005818C4    mov         eax,dword ptr [eax+218];TFileListBox.FItems:TStrings
 005818CA    mov         ebx,dword ptr [eax]
 005818CC    call        dword ptr [ebx+0C];@AbstractError
 005818CF    mov         eax,dword ptr [ebp-48]
 005818D2    push        eax
 005818D3    mov         edx,dword ptr [ebp-24]
 005818D6    add         edx,dword ptr [ebp-10]
 005818D9    mov         ecx,dword ptr [ebp-20]
 005818DC    mov         eax,dword ptr [ebp-14]
 005818DF    call        005C15A8
 005818E4    xor         eax,eax
 005818E6    pop         edx
 005818E7    pop         ecx
 005818E8    pop         ecx
 005818E9    mov         dword ptr fs:[eax],edx
 005818EC    push        581901
 005818F1    lea         eax,[ebp-48]
 005818F4    call        @LStrClr
 005818F9    ret
>005818FA    jmp         @HandleFinally
>005818FF    jmp         005818F1
 00581901    pop         edi
 00581902    pop         esi
 00581903    pop         ebx
 00581904    mov         esp,ebp
 00581906    pop         ebp
 00581907    ret         4
end;*}

//0058190C
procedure sub_0058190C(?:TFileListBox; ?:String);
begin
{*
 0058190C    push        ebp
 0058190D    mov         ebp,esp
 0058190F    add         esp,0FFFFFFF8
 00581912    mov         dword ptr [ebp-8],edx
 00581915    mov         dword ptr [ebp-4],eax
 00581918    mov         eax,dword ptr [ebp-4]
 0058191B    mov         edx,dword ptr [eax+280];TFileListBox.FDirectory:String
 00581921    mov         eax,dword ptr [ebp-8]
 00581924    call        0065D448
 00581929    test        eax,eax
>0058192B    je          0058197A
 0058192D    mov         eax,dword ptr [ebp-4]
 00581930    mov         eax,dword ptr [eax+280];TFileListBox.FDirectory:String
 00581936    call        00582204
 0058193B    test        al,al
>0058193D    je          00581952
 0058193F    mov         eax,dword ptr [ebp-4]
 00581942    mov         eax,dword ptr [eax+280];TFileListBox.FDirectory:String
 00581948    call        ChDir
 0058194D    call        @_IOTest
 00581952    mov         eax,dword ptr [ebp-8]
 00581955    call        ChDir
 0058195A    call        @_IOTest
 0058195F    mov         eax,dword ptr [ebp-4]
 00581962    lea         edx,[eax+280];TFileListBox.FDirectory:String
 00581968    xor         eax,eax
 0058196A    call        @LGetDir
 0058196F    mov         eax,dword ptr [ebp-4]
 00581972    mov         edx,dword ptr [eax]
 00581974    call        dword ptr [edx+104];TFileListBox.sub_00581114
 0058197A    pop         ecx
 0058197B    pop         ecx
 0058197C    pop         ebp
 0058197D    ret
*}
end;

//00581980
procedure TFileListBox.SetFileType(Value:TFileType);
begin
{*
 00581980    push        ebp
 00581981    mov         ebp,esp
 00581983    add         esp,0FFFFFFF8
 00581986    mov         byte ptr [ebp-5],dl
 00581989    mov         dword ptr [ebp-4],eax
 0058198C    mov         eax,dword ptr [ebp-4]
 0058198F    mov         al,byte ptr [eax+288];TFileListBox.FileType:TFileType
 00581995    cmp         al,byte ptr [ebp-5]
>00581998    je          005819B1
 0058199A    mov         al,byte ptr [ebp-5]
 0058199D    mov         edx,dword ptr [ebp-4]
 005819A0    mov         byte ptr [edx+288],al;TFileListBox.FileType:TFileType
 005819A6    mov         eax,dword ptr [ebp-4]
 005819A9    mov         edx,dword ptr [eax]
 005819AB    call        dword ptr [edx+104];TFileListBox.sub_00581114
 005819B1    pop         ecx
 005819B2    pop         ecx
 005819B3    pop         ebp
 005819B4    ret
*}
end;

//005819B8
procedure TFileListBox.SetMask(Value:String);
begin
{*
 005819B8    push        ebp
 005819B9    mov         ebp,esp
 005819BB    add         esp,0FFFFFFF8
 005819BE    mov         dword ptr [ebp-8],edx
 005819C1    mov         dword ptr [ebp-4],eax
 005819C4    mov         eax,dword ptr [ebp-4]
 005819C7    mov         eax,dword ptr [eax+284];TFileListBox.Mask:String
 005819CD    mov         edx,dword ptr [ebp-8]
 005819D0    call        @LStrCmp
>005819D5    je          005819F2
 005819D7    mov         eax,dword ptr [ebp-4]
 005819DA    add         eax,284;TFileListBox.Mask:String
 005819DF    mov         edx,dword ptr [ebp-8]
 005819E2    call        @LStrAsg
 005819E7    mov         eax,dword ptr [ebp-4]
 005819EA    mov         edx,dword ptr [eax]
 005819EC    call        dword ptr [edx+104];TFileListBox.sub_00581114
 005819F2    pop         ecx
 005819F3    pop         ecx
 005819F4    pop         ebp
 005819F5    ret
*}
end;

//005819F8
{*procedure TFileListBox.CMFontChanged(?:?);
begin
 005819F8    push        ebp
 005819F9    mov         ebp,esp
 005819FB    add         esp,0FFFFFFF8
 005819FE    mov         dword ptr [ebp-8],edx
 00581A01    mov         dword ptr [ebp-4],eax
 00581A04    mov         edx,dword ptr [ebp-8]
 00581A07    mov         eax,dword ptr [ebp-4]
 00581A0A    call        TWinControl.CMFontChanged
 00581A0F    mov         eax,dword ptr [ebp-4]
 00581A12    call        00581A1C
 00581A17    pop         ecx
 00581A18    pop         ecx
 00581A19    pop         ebp
 00581A1A    ret
end;*}

//00581A1C
procedure sub_00581A1C(?:TFileListBox);
begin
{*
 00581A1C    push        ebp
 00581A1D    mov         ebp,esp
 00581A1F    add         esp,0FFFFFFF8
 00581A22    mov         dword ptr [ebp-4],eax
 00581A25    mov         eax,dword ptr [ebp-4]
 00581A28    mov         eax,dword ptr [eax+68];TFileListBox.FFont:TFont
 00581A2B    call        0057F458
 00581A30    mov         dword ptr [ebp-8],eax
 00581A33    mov         eax,dword ptr [ebp-4]
 00581A36    cmp         byte ptr [eax+2B4],1;TFileListBox.ShowGlyphs:Boolean
>00581A3D    jne         00581A65
 00581A3F    mov         eax,dword ptr [ebp-4]
 00581A42    mov         eax,dword ptr [eax+298];TFileListBox.ExeBMP:TBitmap
 00581A48    mov         edx,dword ptr [eax]
 00581A4A    call        dword ptr [edx+20];TBitmap.GetHeight
 00581A4D    inc         eax
 00581A4E    cmp         eax,dword ptr [ebp-8]
>00581A51    jle         00581A65
 00581A53    mov         eax,dword ptr [ebp-4]
 00581A56    mov         eax,dword ptr [eax+298];TFileListBox.ExeBMP:TBitmap
 00581A5C    mov         edx,dword ptr [eax]
 00581A5E    call        dword ptr [edx+20];TBitmap.GetHeight
 00581A61    inc         eax
 00581A62    mov         dword ptr [ebp-8],eax
 00581A65    mov         edx,dword ptr [ebp-8]
 00581A68    mov         eax,dword ptr [ebp-4]
 00581A6B    call        TCheckListBox.SetItemHeight
 00581A70    pop         ecx
 00581A71    pop         ecx
 00581A72    pop         ebp
 00581A73    ret
*}
end;

//00581A74
{*procedure sub_00581A74(?:?);
begin
 00581A74    push        ebp
 00581A75    mov         ebp,esp
 00581A77    add         esp,0FFFFFFC4
 00581A7A    xor         ecx,ecx
 00581A7C    mov         dword ptr [ebp-3C],ecx
 00581A7F    mov         dword ptr [ebp-30],ecx
 00581A82    mov         dword ptr [ebp-1C],ecx
 00581A85    mov         dword ptr [ebp-18],ecx
 00581A88    mov         dword ptr [ebp-0C],ecx
 00581A8B    mov         dword ptr [ebp-10],ecx
 00581A8E    mov         dword ptr [ebp-8],edx
 00581A91    mov         dword ptr [ebp-4],eax
 00581A94    xor         eax,eax
 00581A96    push        ebp
 00581A97    push        581C33
 00581A9C    push        dword ptr fs:[eax]
 00581A9F    mov         dword ptr fs:[eax],esp
 00581AA2    lea         edx,[ebp-18]
 00581AA5    mov         eax,dword ptr [ebp-4]
 00581AA8    mov         ecx,dword ptr [eax]
 00581AAA    call        dword ptr [ecx+108];TFileListBox.sub_00581C68
 00581AB0    mov         eax,dword ptr [ebp-18]
 00581AB3    mov         edx,dword ptr [ebp-8]
 00581AB6    call        0065D448
 00581ABB    test        eax,eax
>00581ABD    je          00581BFB
 00581AC3    mov         eax,dword ptr [ebp-8]
 00581AC6    call        @LStrLen
 00581ACB    test        eax,eax
>00581ACD    je          00581BFB
 00581AD3    lea         eax,[ebp-10]
 00581AD6    push        eax
 00581AD7    lea         ecx,[ebp-0C]
 00581ADA    lea         edx,[ebp-11]
 00581ADD    mov         eax,dword ptr [ebp-8]
 00581AE0    call        0057F130
 00581AE5    mov         eax,dword ptr [ebp-4]
 00581AE8    cmp         dword ptr [eax+290],0;TFileListBox.FDirList:TDirectoryListBox
>00581AEF    je          00581B07
 00581AF1    mov         edx,dword ptr [ebp-8]
 00581AF4    mov         eax,dword ptr [ebp-4]
 00581AF7    mov         eax,dword ptr [eax+290];TFileListBox.FDirList:TDirectoryListBox
 00581AFD    mov         ecx,dword ptr [eax]
 00581AFF    call        dword ptr [ecx+0FC];TDirectoryListBox.sub_00580C68
>00581B05    jmp         00581B4F
 00581B07    cmp         byte ptr [ebp-11],0
>00581B0B    je          00581B44
 00581B0D    lea         eax,[ebp-1C]
 00581B10    push        eax
 00581B11    mov         al,byte ptr [ebp-11]
 00581B14    mov         byte ptr [ebp-2C],al
 00581B17    mov         byte ptr [ebp-28],2
 00581B1B    mov         eax,dword ptr [ebp-0C]
 00581B1E    mov         dword ptr [ebp-24],eax
 00581B21    mov         byte ptr [ebp-20],0B
 00581B25    lea         edx,[ebp-2C]
 00581B28    mov         ecx,1
 00581B2D    mov         eax,581C48;'%s:%s'
 00581B32    call        00658FBC
 00581B37    mov         edx,dword ptr [ebp-1C]
 00581B3A    mov         eax,dword ptr [ebp-4]
 00581B3D    call        0058190C
>00581B42    jmp         00581B4F
 00581B44    mov         edx,dword ptr [ebp-0C]
 00581B47    mov         eax,dword ptr [ebp-4]
 00581B4A    call        0058190C
 00581B4F    mov         edx,dword ptr [ebp-10]
 00581B52    mov         eax,581C58;'*'
 00581B57    call        @LStrPos
 00581B5C    test        eax,eax
>00581B5E    jg          00581B71
 00581B60    mov         edx,dword ptr [ebp-10]
 00581B63    mov         eax,581C64;'?'
 00581B68    call        @LStrPos
 00581B6D    test        eax,eax
>00581B6F    jle         00581B7E
 00581B71    mov         edx,dword ptr [ebp-10]
 00581B74    mov         eax,dword ptr [ebp-4]
 00581B77    call        TFileListBox.SetMask
>00581B7C    jmp         00581BFB
 00581B7E    mov         eax,dword ptr [ebp-10]
 00581B81    call        @LStrLen
 00581B86    test        eax,eax
>00581B88    jle         00581BFB
 00581B8A    mov         edx,dword ptr [ebp-10]
 00581B8D    mov         eax,dword ptr [ebp-4]
 00581B90    call        00581668
 00581B95    mov         eax,dword ptr [ebp-10]
 00581B98    call        00658094
 00581B9D    test        al,al
>00581B9F    je          00581BCA
 00581BA1    lea         edx,[ebp-30]
 00581BA4    mov         eax,dword ptr [ebp-4]
 00581BA7    call        00581600
 00581BAC    cmp         dword ptr [ebp-30],0
>00581BB0    jne         00581BFB
 00581BB2    mov         edx,dword ptr [ebp-10]
 00581BB5    mov         eax,dword ptr [ebp-4]
 00581BB8    call        TFileListBox.SetMask
 00581BBD    mov         edx,dword ptr [ebp-10]
 00581BC0    mov         eax,dword ptr [ebp-4]
 00581BC3    call        00581668
>00581BC8    jmp         00581BFB
 00581BCA    mov         eax,dword ptr [ebp-8]
 00581BCD    mov         dword ptr [ebp-38],eax
 00581BD0    mov         byte ptr [ebp-34],0B
 00581BD4    lea         eax,[ebp-38]
 00581BD7    push        eax
 00581BD8    push        0
 00581BDA    lea         edx,[ebp-3C]
 00581BDD    mov         eax,[006EA088];^gvar_00655004
 00581BE2    call        LoadResString
 00581BE7    mov         ecx,dword ptr [ebp-3C]
 00581BEA    mov         dl,1
 00581BEC    mov         eax,[00642244];EInvalidOperation
 00581BF1    call        Exception.CreateFmt;EInvalidOperation.Create
 00581BF6    call        @RaiseExcept
 00581BFB    xor         eax,eax
 00581BFD    pop         edx
 00581BFE    pop         ecx
 00581BFF    pop         ecx
 00581C00    mov         dword ptr fs:[eax],edx
 00581C03    push        581C3A
 00581C08    lea         eax,[ebp-3C]
 00581C0B    call        @LStrClr
 00581C10    lea         eax,[ebp-30]
 00581C13    call        @LStrClr
 00581C18    lea         eax,[ebp-1C]
 00581C1B    mov         edx,2
 00581C20    call        @LStrArrayClr
 00581C25    lea         eax,[ebp-10]
 00581C28    mov         edx,2
 00581C2D    call        @LStrArrayClr
 00581C32    ret
>00581C33    jmp         @HandleFinally
>00581C38    jmp         00581C08
 00581C3A    mov         esp,ebp
 00581C3C    pop         ebp
 00581C3D    ret
end;*}

//00581C68
{*procedure sub_00581C68(?:?);
begin
 00581C68    push        ebp
 00581C69    mov         ebp,esp
 00581C6B    add         esp,0FFFFFFF0
 00581C6E    xor         ecx,ecx
 00581C70    mov         dword ptr [ebp-10],ecx
 00581C73    mov         dword ptr [ebp-0C],ecx
 00581C76    mov         dword ptr [ebp-8],edx
 00581C79    mov         dword ptr [ebp-4],eax
 00581C7C    xor         eax,eax
 00581C7E    push        ebp
 00581C7F    push        581CDD
 00581C84    push        dword ptr fs:[eax]
 00581C87    mov         dword ptr fs:[eax],esp
 00581C8A    mov         eax,dword ptr [ebp-8]
 00581C8D    call        @LStrClr
 00581C92    lea         edx,[ebp-0C]
 00581C95    mov         eax,dword ptr [ebp-4]
 00581C98    call        00581600
 00581C9D    cmp         dword ptr [ebp-0C],0
>00581CA1    je          00581CC2
 00581CA3    lea         edx,[ebp-10]
 00581CA6    mov         eax,dword ptr [ebp-4]
 00581CA9    call        00581600
 00581CAE    mov         edx,dword ptr [ebp-10]
 00581CB1    mov         ecx,dword ptr [ebp-8]
 00581CB4    mov         eax,dword ptr [ebp-4]
 00581CB7    mov         eax,dword ptr [eax+280];TFileListBox.FDirectory:String
 00581CBD    call        0057EC10
 00581CC2    xor         eax,eax
 00581CC4    pop         edx
 00581CC5    pop         ecx
 00581CC6    pop         ecx
 00581CC7    mov         dword ptr fs:[eax],edx
 00581CCA    push        581CE4
 00581CCF    lea         eax,[ebp-10]
 00581CD2    mov         edx,2
 00581CD7    call        @LStrArrayClr
 00581CDC    ret
>00581CDD    jmp         @HandleFinally
>00581CE2    jmp         00581CCF
 00581CE4    mov         esp,ebp
 00581CE6    pop         ebp
 00581CE7    ret
end;*}

//00581CE8
procedure TFileListBox.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00581CE8    push        ebp
 00581CE9    mov         ebp,esp
 00581CEB    add         esp,0FFFFFFF4
 00581CEE    mov         byte ptr [ebp-9],cl
 00581CF1    mov         dword ptr [ebp-8],edx
 00581CF4    mov         dword ptr [ebp-4],eax
 00581CF7    mov         cl,byte ptr [ebp-9]
 00581CFA    mov         edx,dword ptr [ebp-8]
 00581CFD    mov         eax,dword ptr [ebp-4]
 00581D00    call        TControl.Notification
 00581D05    cmp         byte ptr [ebp-9],1
>00581D09    jne         00581D5A
 00581D0B    mov         eax,dword ptr [ebp-8]
 00581D0E    mov         edx,dword ptr [ebp-4]
 00581D11    cmp         eax,dword ptr [edx+28C];TFileListBox.FileEdit:TEdit
>00581D17    jne         00581D26
 00581D19    mov         eax,dword ptr [ebp-4]
 00581D1C    xor         edx,edx
 00581D1E    mov         dword ptr [eax+28C],edx;TFileListBox.FileEdit:TEdit
>00581D24    jmp         00581D5A
 00581D26    mov         eax,dword ptr [ebp-8]
 00581D29    mov         edx,dword ptr [ebp-4]
 00581D2C    cmp         eax,dword ptr [edx+290];TFileListBox.FDirList:TDirectoryListBox
>00581D32    jne         00581D41
 00581D34    mov         eax,dword ptr [ebp-4]
 00581D37    xor         edx,edx
 00581D39    mov         dword ptr [eax+290],edx;TFileListBox.FDirList:TDirectoryListBox
>00581D3F    jmp         00581D5A
 00581D41    mov         eax,dword ptr [ebp-8]
 00581D44    mov         edx,dword ptr [ebp-4]
 00581D47    cmp         eax,dword ptr [edx+294];TFileListBox.FFilterCombo:TFilterComboBox
>00581D4D    jne         00581D5A
 00581D4F    mov         eax,dword ptr [ebp-4]
 00581D52    xor         edx,edx
 00581D54    mov         dword ptr [eax+294],edx;TFileListBox.FFilterCombo:TFilterComboBox
 00581D5A    mov         esp,ebp
 00581D5C    pop         ebp
 00581D5D    ret
*}
end;

//00581D60
constructor TFilterComboBox.Create(AOwner:TComponent);
begin
{*
 00581D60    push        ebp
 00581D61    mov         ebp,esp
 00581D63    add         esp,0FFFFFFF4
 00581D66    test        dl,dl
>00581D68    je          00581D72
 00581D6A    add         esp,0FFFFFFF0
 00581D6D    call        @ClassCreate
 00581D72    mov         dword ptr [ebp-0C],ecx
 00581D75    mov         byte ptr [ebp-5],dl
 00581D78    mov         dword ptr [ebp-4],eax
 00581D7B    mov         ecx,dword ptr [ebp-0C]
 00581D7E    xor         edx,edx
 00581D80    mov         eax,dword ptr [ebp-4]
 00581D83    call        TCustomComboBox.Create
 00581D88    mov         dl,2
 00581D8A    mov         eax,dword ptr [ebp-4]
 00581D8D    mov         ecx,dword ptr [eax]
 00581D8F    call        dword ptr [ecx+114];TComboBox.SetStyle
 00581D95    mov         eax,dword ptr [ebp-4]
 00581D98    lea         edx,[eax+290];TFilterComboBox.Filter:String
 00581D9E    mov         eax,[006E9F7C];^gvar_0063CD08
 00581DA3    call        LoadResString
 00581DA8    mov         dl,1
 00581DAA    mov         eax,[006428B0];TStringList
 00581DAF    call        TObject.Create;TStringList.Create
 00581DB4    mov         edx,dword ptr [ebp-4]
 00581DB7    mov         dword ptr [edx+298],eax;TFilterComboBox.MaskList:TStringList
 00581DBD    mov         eax,dword ptr [ebp-4]
 00581DC0    cmp         byte ptr [ebp-5],0
>00581DC4    je          00581DD5
 00581DC6    call        @AfterConstruction
 00581DCB    pop         dword ptr fs:[0]
 00581DD2    add         esp,0C
 00581DD5    mov         eax,dword ptr [ebp-4]
 00581DD8    mov         esp,ebp
 00581DDA    pop         ebp
 00581DDB    ret
*}
end;

//00581DDC
destructor TFilterComboBox.Destroy;
begin
{*
 00581DDC    push        ebp
 00581DDD    mov         ebp,esp
 00581DDF    add         esp,0FFFFFFF8
 00581DE2    call        @BeforeDestruction
 00581DE7    mov         byte ptr [ebp-5],dl
 00581DEA    mov         dword ptr [ebp-4],eax
 00581DED    mov         eax,dword ptr [ebp-4]
 00581DF0    mov         eax,dword ptr [eax+298];TFilterComboBox.MaskList:TStringList
 00581DF6    call        TObject.Free
 00581DFB    mov         dl,byte ptr [ebp-5]
 00581DFE    and         dl,0FC
 00581E01    mov         eax,dword ptr [ebp-4]
 00581E04    call        TCustomComboBox.Destroy
 00581E09    cmp         byte ptr [ebp-5],0
>00581E0D    jle         00581E17
 00581E0F    mov         eax,dword ptr [ebp-4]
 00581E12    call        @ClassDestroy
 00581E17    pop         ecx
 00581E18    pop         ecx
 00581E19    pop         ebp
 00581E1A    ret
*}
end;

//00581E1C
procedure TFilterComboBox.CreateWnd;
begin
{*
 00581E1C    push        ebp
 00581E1D    mov         ebp,esp
 00581E1F    push        ecx
 00581E20    mov         dword ptr [ebp-4],eax
 00581E23    mov         eax,dword ptr [ebp-4]
 00581E26    call        TCustomComboBox.CreateWnd
 00581E2B    mov         eax,dword ptr [ebp-4]
 00581E2E    call        00582004
 00581E33    pop         ecx
 00581E34    pop         ebp
 00581E35    ret
*}
end;

//00581E38
function TFilterComboBox.IsStoredFilter(Value:String):Boolean;
begin
{*
 00581E38    push        ebp
 00581E39    mov         ebp,esp
 00581E3B    add         esp,0FFFFFFF4
 00581E3E    xor         edx,edx
 00581E40    mov         dword ptr [ebp-0C],edx
 00581E43    mov         dword ptr [ebp-4],eax
 00581E46    xor         eax,eax
 00581E48    push        ebp
 00581E49    push        581E8C
 00581E4E    push        dword ptr fs:[eax]
 00581E51    mov         dword ptr fs:[eax],esp
 00581E54    lea         edx,[ebp-0C]
 00581E57    mov         eax,[006E9F7C];^gvar_0063CD08
 00581E5C    call        LoadResString
 00581E61    mov         eax,dword ptr [ebp-0C]
 00581E64    mov         edx,dword ptr [ebp-4]
 00581E67    mov         edx,dword ptr [edx+290];TFilterComboBox.Filter:String
 00581E6D    call        @LStrCmp
 00581E72    setne       byte ptr [ebp-5]
 00581E76    xor         eax,eax
 00581E78    pop         edx
 00581E79    pop         ecx
 00581E7A    pop         ecx
 00581E7B    mov         dword ptr fs:[eax],edx
 00581E7E    push        581E93
 00581E83    lea         eax,[ebp-0C]
 00581E86    call        @LStrClr
 00581E8B    ret
>00581E8C    jmp         @HandleFinally
>00581E91    jmp         00581E83
 00581E93    mov         al,byte ptr [ebp-5]
 00581E96    mov         esp,ebp
 00581E98    pop         ebp
 00581E99    ret
*}
end;

//00581E9C
procedure TFilterComboBox.SetFilter(Value:String);
begin
{*
 00581E9C    push        ebp
 00581E9D    mov         ebp,esp
 00581E9F    add         esp,0FFFFFFF8
 00581EA2    push        esi
 00581EA3    mov         dword ptr [ebp-8],edx
 00581EA6    mov         dword ptr [ebp-4],eax
 00581EA9    mov         eax,dword ptr [ebp-4]
 00581EAC    mov         edx,dword ptr [eax+290];TFilterComboBox.Filter:String
 00581EB2    mov         eax,dword ptr [ebp-8]
 00581EB5    call        0065D448
 00581EBA    test        eax,eax
>00581EBC    je          00581EEE
 00581EBE    mov         eax,dword ptr [ebp-4]
 00581EC1    add         eax,290;TFilterComboBox.Filter:String
 00581EC6    mov         edx,dword ptr [ebp-8]
 00581EC9    call        @LStrAsg
 00581ECE    mov         eax,dword ptr [ebp-4]
 00581ED1    call        TWinControl.HandleAllocated
 00581ED6    test        al,al
>00581ED8    je          00581EE2
 00581EDA    mov         eax,dword ptr [ebp-4]
 00581EDD    call        00582004
 00581EE2    mov         eax,dword ptr [ebp-4]
 00581EE5    mov         si,0FFB3
 00581EE9    call        @CallDynaInst;TFilterComboBox.sub_00582194
 00581EEE    pop         esi
 00581EEF    pop         ecx
 00581EF0    pop         ecx
 00581EF1    pop         ebp
 00581EF2    ret
*}
end;

//00581EF4
procedure TFilterComboBox.SetFileList(Value:TFileListBox);
begin
{*
 00581EF4    push        ebp
 00581EF5    mov         ebp,esp
 00581EF7    add         esp,0FFFFFFF8
 00581EFA    mov         dword ptr [ebp-8],edx
 00581EFD    mov         dword ptr [ebp-4],eax
 00581F00    mov         eax,dword ptr [ebp-4]
 00581F03    cmp         dword ptr [eax+294],0;TFilterComboBox.FileList:TFileListBox
>00581F0A    je          00581F1D
 00581F0C    mov         eax,dword ptr [ebp-4]
 00581F0F    mov         eax,dword ptr [eax+294];TFilterComboBox.FileList:TFileListBox
 00581F15    xor         edx,edx
 00581F17    mov         dword ptr [eax+294],edx;TFileListBox.FFilterCombo:TFilterComboBox
 00581F1D    mov         eax,dword ptr [ebp-8]
 00581F20    mov         edx,dword ptr [ebp-4]
 00581F23    mov         dword ptr [edx+294],eax;TFilterComboBox.FileList:TFileListBox
 00581F29    mov         eax,dword ptr [ebp-4]
 00581F2C    cmp         dword ptr [eax+294],0;TFilterComboBox.FileList:TFileListBox
>00581F33    je          00581F58
 00581F35    mov         edx,dword ptr [ebp-4]
 00581F38    mov         eax,dword ptr [ebp-4]
 00581F3B    mov         eax,dword ptr [eax+294];TFilterComboBox.FileList:TFileListBox
 00581F41    call        TComponent.FreeNotification
 00581F46    mov         eax,dword ptr [ebp-4]
 00581F49    mov         eax,dword ptr [eax+294];TFilterComboBox.FileList:TFileListBox
 00581F4F    mov         edx,dword ptr [ebp-4]
 00581F52    mov         dword ptr [eax+294],edx;TFileListBox.FFilterCombo:TFilterComboBox
 00581F58    pop         ecx
 00581F59    pop         ecx
 00581F5A    pop         ebp
 00581F5B    ret
*}
end;

//00581F5C
procedure TFilterComboBox.sub_00581F5C;
begin
{*
 00581F5C    push        ebp
 00581F5D    mov         ebp,esp
 00581F5F    push        ecx
 00581F60    push        esi
 00581F61    mov         dword ptr [ebp-4],eax
 00581F64    mov         eax,dword ptr [ebp-4]
 00581F67    call        TControl.sub_005F5478
 00581F6C    mov         eax,dword ptr [ebp-4]
 00581F6F    mov         si,0FFB3
 00581F73    call        @CallDynaInst;TFilterComboBox.sub_00582194
 00581F78    pop         esi
 00581F79    pop         ecx
 00581F7A    pop         ebp
 00581F7B    ret
*}
end;

//00581F7C
{*procedure sub_00581F7C(?:TFilterComboBox; ?:?);
begin
 00581F7C    push        ebp
 00581F7D    mov         ebp,esp
 00581F7F    add         esp,0FFFFFFF8
 00581F82    push        ebx
 00581F83    mov         dword ptr [ebp-8],edx
 00581F86    mov         dword ptr [ebp-4],eax
 00581F89    mov         eax,dword ptr [ebp-4]
 00581F8C    mov         edx,dword ptr [eax]
 00581F8E    call        dword ptr [edx+0C8]
 00581F94    test        eax,eax
>00581F96    jge         00581FB4
 00581F98    mov         eax,dword ptr [ebp-4]
 00581F9B    mov         eax,dword ptr [eax+23C]
 00581FA1    mov         edx,dword ptr [eax]
 00581FA3    call        dword ptr [edx+14]
 00581FA6    mov         edx,eax
 00581FA8    dec         edx
 00581FA9    mov         eax,dword ptr [ebp-4]
 00581FAC    mov         ecx,dword ptr [eax]
 00581FAE    call        dword ptr [ecx+0CC]
 00581FB4    mov         eax,dword ptr [ebp-4]
 00581FB7    mov         edx,dword ptr [eax]
 00581FB9    call        dword ptr [edx+0C8]
 00581FBF    test        eax,eax
>00581FC1    jl          00581FE3
 00581FC3    mov         eax,dword ptr [ebp-4]
 00581FC6    mov         edx,dword ptr [eax]
 00581FC8    call        dword ptr [edx+0C8]
 00581FCE    mov         edx,eax
 00581FD0    mov         ecx,dword ptr [ebp-8]
 00581FD3    mov         eax,dword ptr [ebp-4]
 00581FD6    mov         eax,dword ptr [eax+298]
 00581FDC    mov         ebx,dword ptr [eax]
 00581FDE    call        dword ptr [ebx+0C]
>00581FE1    jmp         00581FF0
 00581FE3    mov         eax,dword ptr [ebp-8]
 00581FE6    mov         edx,582000;'*.*'
 00581FEB    call        @LStrAsg
 00581FF0    pop         ebx
 00581FF1    pop         ecx
 00581FF2    pop         ecx
 00581FF3    pop         ebp
 00581FF4    ret
end;*}

//00582004
procedure sub_00582004(?:TFilterComboBox);
begin
{*
 00582004    push        ebp
 00582005    mov         ebp,esp
 00582007    xor         ecx,ecx
 00582009    push        ecx
 0058200A    push        ecx
 0058200B    push        ecx
 0058200C    push        ecx
 0058200D    push        ecx
 0058200E    mov         dword ptr [ebp-4],eax
 00582011    xor         eax,eax
 00582013    push        ebp
 00582014    push        58213C
 00582019    push        dword ptr fs:[eax]
 0058201C    mov         dword ptr fs:[eax],esp
 0058201F    mov         eax,dword ptr [ebp-4]
 00582022    mov         edx,dword ptr [eax]
 00582024    call        dword ptr [edx+0D4];TCustomCombo.Clear
 0058202A    mov         eax,dword ptr [ebp-4]
 0058202D    mov         eax,dword ptr [eax+298];TFilterComboBox.MaskList:TStringList
 00582033    mov         edx,dword ptr [eax]
 00582035    call        dword ptr [edx+44];TStringList.Clear
 00582038    lea         eax,[ebp-8]
 0058203B    mov         edx,dword ptr [ebp-4]
 0058203E    mov         edx,dword ptr [edx+290];TFilterComboBox.Filter:String
 00582044    call        @LStrLAsg
 00582049    mov         edx,dword ptr [ebp-8]
 0058204C    mov         eax,582150;'|'
 00582051    call        AnsiPos
 00582056    mov         dword ptr [ebp-14],eax
 00582059    cmp         dword ptr [ebp-14],0
>0058205D    je          00582114
 00582063    lea         eax,[ebp-0C]
 00582066    push        eax
 00582067    mov         ecx,dword ptr [ebp-14]
 0058206A    dec         ecx
 0058206B    mov         edx,1
 00582070    mov         eax,dword ptr [ebp-8]
 00582073    call        @LStrCopy
 00582078    lea         eax,[ebp-8]
 0058207B    mov         ecx,dword ptr [ebp-14]
 0058207E    mov         edx,1
 00582083    call        @LStrDelete
 00582088    mov         edx,dword ptr [ebp-8]
 0058208B    mov         eax,582150;'|'
 00582090    call        AnsiPos
 00582095    mov         dword ptr [ebp-14],eax
 00582098    cmp         dword ptr [ebp-14],0
>0058209C    jle         005820C5
 0058209E    lea         eax,[ebp-10]
 005820A1    push        eax
 005820A2    mov         ecx,dword ptr [ebp-14]
 005820A5    dec         ecx
 005820A6    mov         edx,1
 005820AB    mov         eax,dword ptr [ebp-8]
 005820AE    call        @LStrCopy
 005820B3    lea         eax,[ebp-8]
 005820B6    mov         ecx,dword ptr [ebp-14]
 005820B9    mov         edx,1
 005820BE    call        @LStrDelete
>005820C3    jmp         005820D8
 005820C5    lea         eax,[ebp-10]
 005820C8    mov         edx,dword ptr [ebp-8]
 005820CB    call        @LStrLAsg
 005820D0    lea         eax,[ebp-8]
 005820D3    call        @LStrClr
 005820D8    mov         edx,dword ptr [ebp-0C]
 005820DB    mov         eax,dword ptr [ebp-4]
 005820DE    mov         eax,dword ptr [eax+23C];TFilterComboBox.FItems:TStrings
 005820E4    mov         ecx,dword ptr [eax]
 005820E6    call        dword ptr [ecx+38];TStrings.sub_00646C94
 005820E9    mov         edx,dword ptr [ebp-10]
 005820EC    mov         eax,dword ptr [ebp-4]
 005820EF    mov         eax,dword ptr [eax+298];TFilterComboBox.MaskList:TStringList
 005820F5    mov         ecx,dword ptr [eax]
 005820F7    call        dword ptr [ecx+38];TStringList.sub_00647DC4
 005820FA    mov         edx,dword ptr [ebp-8]
 005820FD    mov         eax,582150;'|'
 00582102    call        AnsiPos
 00582107    mov         dword ptr [ebp-14],eax
 0058210A    cmp         dword ptr [ebp-14],0
>0058210E    jne         00582063
 00582114    xor         edx,edx
 00582116    mov         eax,dword ptr [ebp-4]
 00582119    mov         ecx,dword ptr [eax]
 0058211B    call        dword ptr [ecx+0CC];TComboBox.SetItemIndex
 00582121    xor         eax,eax
 00582123    pop         edx
 00582124    pop         ecx
 00582125    pop         ecx
 00582126    mov         dword ptr fs:[eax],edx
 00582129    push        582143
 0058212E    lea         eax,[ebp-10]
 00582131    mov         edx,3
 00582136    call        @LStrArrayClr
 0058213B    ret
>0058213C    jmp         @HandleFinally
>00582141    jmp         0058212E
 00582143    mov         esp,ebp
 00582145    pop         ebp
 00582146    ret
*}
end;

//00582154
procedure TFilterComboBox.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00582154    push        ebp
 00582155    mov         ebp,esp
 00582157    add         esp,0FFFFFFF4
 0058215A    mov         byte ptr [ebp-9],cl
 0058215D    mov         dword ptr [ebp-8],edx
 00582160    mov         dword ptr [ebp-4],eax
 00582163    mov         cl,byte ptr [ebp-9]
 00582166    mov         edx,dword ptr [ebp-8]
 00582169    mov         eax,dword ptr [ebp-4]
 0058216C    call        TControl.Notification
 00582171    cmp         byte ptr [ebp-9],1
>00582175    jne         00582190
 00582177    mov         eax,dword ptr [ebp-8]
 0058217A    mov         edx,dword ptr [ebp-4]
 0058217D    cmp         eax,dword ptr [edx+294];TFilterComboBox.FileList:TFileListBox
>00582183    jne         00582190
 00582185    mov         eax,dword ptr [ebp-4]
 00582188    xor         edx,edx
 0058218A    mov         dword ptr [eax+294],edx;TFilterComboBox.FileList:TFileListBox
 00582190    mov         esp,ebp
 00582192    pop         ebp
 00582193    ret
*}
end;

//00582194
procedure TFilterComboBox.sub_00582194;
begin
{*
 00582194    push        ebp
 00582195    mov         ebp,esp
 00582197    add         esp,0FFFFFFF8
 0058219A    xor         edx,edx
 0058219C    mov         dword ptr [ebp-8],edx
 0058219F    mov         dword ptr [ebp-4],eax
 005821A2    xor         eax,eax
 005821A4    push        ebp
 005821A5    push        5821F6
 005821AA    push        dword ptr fs:[eax]
 005821AD    mov         dword ptr fs:[eax],esp
 005821B0    mov         eax,dword ptr [ebp-4]
 005821B3    cmp         dword ptr [eax+294],0;TFilterComboBox.FileList:TFileListBox
>005821BA    je          005821D8
 005821BC    lea         edx,[ebp-8]
 005821BF    mov         eax,dword ptr [ebp-4]
 005821C2    call        00581F7C
 005821C7    mov         edx,dword ptr [ebp-8]
 005821CA    mov         eax,dword ptr [ebp-4]
 005821CD    mov         eax,dword ptr [eax+294];TFilterComboBox.FileList:TFileListBox
 005821D3    call        TFileListBox.SetMask
 005821D8    mov         eax,dword ptr [ebp-4]
 005821DB    call        TCustomCombo.sub_0059B190
 005821E0    xor         eax,eax
 005821E2    pop         edx
 005821E3    pop         ecx
 005821E4    pop         ecx
 005821E5    mov         dword ptr fs:[eax],edx
 005821E8    push        5821FD
 005821ED    lea         eax,[ebp-8]
 005821F0    call        @LStrClr
 005821F5    ret
>005821F6    jmp         @HandleFinally
>005821FB    jmp         005821ED
 005821FD    pop         ecx
 005821FE    pop         ecx
 005821FF    pop         ebp
 00582200    ret
*}
end;

//00582204
{*function sub_00582204(?:AnsiString):?;
begin
 00582204    push        ebp
 00582205    mov         ebp,esp
 00582207    add         esp,0FFFFFFF8
 0058220A    mov         dword ptr [ebp-4],eax
 0058220D    mov         eax,dword ptr [ebp-4]
 00582210    call        006580B4
 00582215    mov         byte ptr [ebp-5],al
 00582218    mov         al,byte ptr [ebp-5]
 0058221B    pop         ecx
 0058221C    pop         ecx
 0058221D    pop         ebp
 0058221E    ret
end;*}

//00582220
procedure Finalization;
begin
{*
 00582220    push        ebp
 00582221    mov         ebp,esp
 00582223    xor         eax,eax
 00582225    push        ebp
 00582226    push        582245
 0058222B    push        dword ptr fs:[eax]
 0058222E    mov         dword ptr fs:[eax],esp
 00582231    inc         dword ptr ds:[6ECCB8]
 00582237    xor         eax,eax
 00582239    pop         edx
 0058223A    pop         ecx
 0058223B    pop         ecx
 0058223C    mov         dword ptr fs:[eax],edx
 0058223F    push        58224C
 00582244    ret
>00582245    jmp         @HandleFinally
>0058224A    jmp         00582244
 0058224C    pop         ebp
 0058224D    ret
*}
end;

end.