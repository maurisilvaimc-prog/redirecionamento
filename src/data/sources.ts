import { SourceFile, RTTIType, MapEntry, NameEntry } from '../lib/index';

export const mockSourceFiles: SourceFile[] = [
  {
    id: 'src-system-pas',
    unitId: 'unit-system',
    name: 'system.pas',
    language: 'pascal',
    content: `unit system;

interface

uses
  SysUtils, Classes;

type
  TBoundArray = array of ?;
  Boolean = (False, True);
  TObject = class()
    function ClassType:TClass;
    function ClassName:ShortString;
    function ClassNameIs(const Name:AnsiString):Boolean;
    function ClassParent:TClass;
    function InstanceSize:Integer;
    constructor Create;
    procedure Free;
    function InitInstance(Instance:Pointer):TObject;
    procedure CleanupInstance;
    function InheritsFrom(AClass:TClass):Boolean;
    function MethodAddress(const Name:ShortString):Pointer;
    function FieldAddress(const Name:ShortString):Pointer;
    destructor Destroy;
  end;
  TInterfacedObject = class(TObject)
  public
    FRefCount:Integer;
    function _AddRef:Integer; stdcall;
    function _Release:Integer; stdcall;
  end;

implementation

//0066B890
constructor TObject.Create;
begin
{*
 0066B890    ret
*}
end;

//0066B8C0
procedure TObject.Free;
begin
{*
 0066B8C0    test        eax,eax
 0066B8C2    je          0066B8C9
 0066B8C4    mov         dl,1
 0066B8C6    call        0066B8B0
 0066B8C9    ret
*}
end;

//0066B8B0
destructor TObject.Destroy;
begin
{*
 0066B8B0    test        dl,dl
 0066B8B2    jle         0066B8BC
 0066B8B4    push        dword ptr [eax]
 0066B8B6    call        0066BC74
 0066B8BB    ret
 0066B8BC    pop         ecx
 0066B8BD    jmp         0066B874
*}
end;

end.`
  },
  {
    id: 'src-system-asm',
    unitId: 'unit-system',
    name: 'system.asm',
    language: 'asm',
    content: `; system unit - Core runtime routines
; TObject virtual method table

TObject.ClassType:
0066B808   8B00                   mov     eax, [eax]
0066B80A   C3                     ret

TObject.ClassName:
0066B810   33C9                   xor     ecx, ecx
0066B812   8B00                   mov     eax, [eax]
0066B814   8B40 F4                mov     eax, [eax-0Ch]
0066B817   C3                     ret

TObject.Create:
0066B890   C3                     ret

TObject.Free:
0066B8C0   85C0                   test    eax, eax
0066B8C2   74 05                  je      0066B8C9
0066B8C4   B2 01                  mov     dl, 1
0066B8C6   E8 E5FFFFFF            call    Destroy
0066B8C9   C3                     ret

TObject.Destroy:
0066B8B0   84D2                   test    dl, dl
0066B8B2   7E 08                  jle     0066B8BC
0066B8B4   FF30                   push    dword ptr [eax]
0066B8B6   E8 B9030000            call    @ClassDestroy
0066B8BB   C3                     ret

@GetMem:
0066A640   53                     push    ebx
0066A641   8BD8                   mov     ebx, eax
0066A643   E8 08000000            call    SysGetMem
0066A648   85C0                   test    eax, eax
0066A64A   75 14                  jne     0066A660
0066A64C   8BC3                   mov     eax, ebx
0066A64E   E8 0D000000            call    Error
0066A653   EB EB                  jmp     @GetMem
0066A660   5B                     pop     ebx
0066A661   C3                     ret

@FreeMem:
0066A660   50                     push    eax
0066A661   E8 0A000000            call    SysFreeMem
0066A666   09C0                   or      eax, eax
0066A668   75 06                  jne     0066A670
0066A66A   59                     pop     ecx
0066A66B   C3                     ret`
  },
  {
    id: 'src-idr-pas',
    unitId: 'unit-idr',
    name: 'Idr.pas',
    language: 'pascal',
    content: `unit Idr;

interface

uses
  SysUtils, Classes;

    procedure sub_00691DC0;
    procedure sub_00692010;

implementation

//00691DC0
procedure sub_00691DC0;
begin
{*
 00691DC0    push        ebp
 00691DC1    mov         ebp,esp
 00691DC3    push        0
 00691DC5    push        0
 00691DC7    xor         eax,eax
 00691DC9    push        ebp
 00691DCA    push        691E48
 00691DCF    push        dword ptr fs:[eax]
 00691DD2    mov         dword ptr fs:[eax],esp
 00691DD5    sub         dword ptr ds:[6F12BC],1
 00691DDC    jae         00691E2D
 00691DDE    call        InitDefaults
 00691DE3    mov         eax,[0068F93C];TJPEGImage
 00691DE8    push        eax
 00691DE9    lea         edx,[ebp-4]
 00691DEC    mov         eax,[006EA304];^gvar_00692438
 00691DF1    call        LoadResString
 00691DF6    mov         ecx,dword ptr [ebp-4]
 00691DF9    mov         edx,691E5C;'jpeg'
 00691DFE    mov         eax,[005BEB28];TPicture
 00691E03    call        005C46B8
 00691E08    mov         eax,[0068F93C];TJPEGImage
 00691E0D    push        eax
 00691E0E    lea         edx,[ebp-8]
 00691E11    mov         eax,[006EA304];^gvar_00692438
 00691E16    call        LoadResString
 00691E1B    mov         ecx,dword ptr [ebp-8]
 00691E1E    mov         edx,691E6C;'jpg'
 00691E23    mov         eax,[005BEB28];TPicture
 00691E28    call        005C46B8
 00691E2D    xor         eax,eax
 00691E2F    pop         edx
 00691E30    pop         ecx
 00691E31    pop         ecx
 00691E32    mov         dword ptr fs:[eax],edx
 00691E47    ret
*}
end;

//00692010
procedure sub_00692010;
begin
{*
 00692010    push        ebp
 00692011    mov         ebp,esp
 00692013    pop         ebp
 00692014    ret
*}
end;

end.`
  },
  {
    id: 'src-unit2-pas',
    unitId: 'unit-2',
    name: '_Unit2.pas (FMain)',
    language: 'pascal',
    content: `unit _Unit2;

interface

uses
  SysUtils, Classes;

    procedure WinMain;
    constructor Create(AOwner:TComponent);
    destructor Destroy;
    procedure FormClose(Sender:TObject; var Action:TCloseAction);
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
    procedure Units1Click(Sender:TObject);
    procedure RTTI1Click(Sender:TObject);
    procedure Forms1Click(Sender:TObject);
    procedure CodeViewer1Click(Sender:TObject);
    procedure ClassViewer1Click(Sender:TObject);
    procedure Strings1Click(Sender:TObject);
    procedure Names1Click(Sender:TObject);
    procedure SourceCode1Click(Sender:TObject);
    procedure miExitClick(Sender:TObject);
    procedure FormCreate(Sender:TObject);
    procedure FormDestroy(Sender:TObject);
    procedure FormShow(Sender:TObject);
    procedure lbCodeDblClick(Sender:TObject);
    procedure bEPClick(Sender:TObject);
    procedure GoToAddress;
    procedure NamePosition;
    procedure tvClassesDblClick(Sender:TObject);
    procedure miAboutClick(Sender:TObject);
    procedure miHelpClick(Sender:TObject);
    procedure miSortUnitsByAdrClick(Sender:TObject);
    procedure miSortUnitsByOrdClick(Sender:TObject);
    procedure miSortUnitsByNamClick(Sender:TObject);
    procedure lbUnitsClick(Sender:TObject);
    procedure lbUnitsDblClick(Sender:TObject);
    procedure miOpenProjectClick(Sender:TObject);
    procedure miSaveProjectClick(Sender:TObject);
    procedure miMapGeneratorClick(Sender:TObject);
    procedure miIDCGeneratorClick(Sender:TObject);
    procedure FormResize(Sender:TObject);
    procedure FormCloseQuery(Sender:TObject; var CanClose:Boolean);

implementation

//00401828
procedure sub_00401828;
begin
{*
 00401828    push        ebp
 00401829    mov         ebp,esp
 0040182B    push        0
 0040182D    push        0
 0040182F    pop         ecx
 00401830    pop         ecx
 00401831    pop         ebp
 00401832    ret
*}
end;

//00401830
procedure WinMain;
begin
{*
 00401830    push        ebp
 00401831    mov         ebp,esp
 00401833    add         esp,0FFFFFFF0
 00401836    mov         eax,[006A80D0];TFMain_11011981
 0040183B    call        00403C0C
 00401840    push        0
 00401842    push        0
 00401844    push        0
 00401846    mov         ecx,dword ptr ds:[006A80CC]
 0040184C    mov         edx,[006A80D0];TFMain_11011981
 00401852    mov         eax,[006A80D4];TApplication
 00401857    call        TApplication.CreateForm
 0040185C    mov         eax,[006A80D4];TApplication
 00401861    call        TApplication.Run
 00401866    ret
*}
end;

end.`
  },
  {
    id: 'src-unit3-pas',
    unitId: 'unit-3',
    name: '_Unit3.pas (FTypeInfo)',
    language: 'pascal',
    content: `unit _Unit3;
// TFTypeInfo_11011981 - Type Information Dialog
// Decompiled by IDR v.01.04.2017

interface

uses
  SysUtils, Classes;

    @@Main@Initialize; stdcall;//004627EC
    @@Main@Finalize; stdcall;//00462804
    constructor Create(AOwner:TComponent);//0046281C
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//0046BE9C
    procedure bSaveClick(Sender:TObject);//0046BEC8
    procedure FormCreate(Sender:TObject);//0046C168
    destructor Destroy;//0046C2F0

implementation

//0046281C
constructor TFTypeInfo_11011981.Create(AOwner:TComponent);
begin
{*
 0046281C    push        ebp
 0046281D    mov         ebp,esp
 0046281F    add         esp,0FFFFFFD0
 00462822    mov         byte ptr [ebp-8],dl
 00462825    test        dl,dl
 00462827    jle         0046282E
 00462829    call        0067EF6C
 0046282E    mov         dword ptr [ebp-30],ecx
 00462831    mov         byte ptr [ebp-29],dl
 00462834    mov         dword ptr [ebp-4],eax
 00462837    mov         eax,6AE140
 0046283C    call        0066FECC
 00462841    mov         word ptr [ebp-18],8
 00462847    mov         ecx,dword ptr [ebp-30]
 0046284A    xor         edx,edx
 0046284C    mov         eax,dword ptr [ebp-4]
 0046284F    call        0040207C
 00462854    add         dword ptr [ebp-0C],10
 00462858    mov         eax,dword ptr [ebp-4]
 0046285B    add         eax,304;TFTypeInfo_11011981.?f304:?
 00462860    call        00401EA8
 00462881    mov         esp,ebp
 00462883    pop         ebp
 00462884    ret
*}
end;

//0046C2F0
destructor TFTypeInfo_11011981.Destroy;
begin
{*
 0046C2F0    push        ebp
 0046C2F1    mov         ebp,esp
 0046C2F3    add         esp,0FFFFFFD4
 0046C2F6    call        0067EF81
 0046C2FB    mov         byte ptr [ebp-29],dl
 0046C2FE    mov         dword ptr [ebp-28],eax
 0046C301    mov         eax,6B0A6C
 0046C306    call        0066FECC
 0046C30B    mov         dl,byte ptr [ebp-29]
 0046C30E    test        dl,dl
 0046C310    jl          0046C320
 0046C312    sub         dword ptr [ebp-8],10
 0046C316    xor         edx,edx
 0046C318    mov         eax,dword ptr [ebp-28]
 0046C31B    call        0040235C
 0046C320    mov         esp,ebp
 0046C322    pop         ebp
 0046C323    ret
*}
end;

end.`
  },
  {
    id: 'src-unit4-pas',
    unitId: 'unit-4',
    name: '_Unit4.pas (FStringInfo)',
    language: 'pascal',
    content: `unit _Unit4;
// TFStringInfo_11011981 - String Information Dialog
// Decompiled by IDR v.01.04.2017

interface

uses
  SysUtils, Classes;

    constructor Create(AOwner:TComponent);//0046C374
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//0046C3F4
    procedure FormCreate(Sender:TObject);//0046C420
    destructor Destroy;//0046C4CC

implementation

//0046C374
constructor TFStringInfo_11011981.Create(AOwner:TComponent);
begin
{*
 0046C374    push        ebp
 0046C375    mov         ebp,esp
 0046C377    add         esp,0FFFFFFD0
 0046C37A    mov         byte ptr [ebp-8],dl
 0046C37D    test        dl,dl
 0046C37F    jle         0046C386
 0046C381    call        0067EF6C
 0046C386    mov         dword ptr [ebp-30],ecx
 0046C389    mov         byte ptr [ebp-29],dl
 0046C38C    mov         dword ptr [ebp-4],eax
 0046C38F    mov         eax,6B0B08
 0046C394    call        0066FECC
 0046C399    mov         word ptr [ebp-18],8
 0046C39F    mov         ecx,dword ptr [ebp-30]
 0046C3A2    xor         edx,edx
 0046C3C9    mov         esp,ebp
 0046C3CB    pop         ebp
 0046C3CC    ret
*}
end;

//0046C3F4
procedure TFStringInfo_11011981.FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin
{*
 0046C3F4    push        ebp
 0046C3F5    mov         ebp,esp
 0046C3F7    add         esp,0FFFFFFF4
 0046C3FA    mov         dword ptr [ebp-0C],ecx
 0046C3FD    mov         dword ptr [ebp-8],edx
 0046C400    mov         dword ptr [ebp-4],eax
 0046C403    mov         eax,dword ptr [ebp-0C]
 0046C406    cmp         word ptr [eax],1B
 0046C40A    jne         0046C419
 0046C40C    mov         edx,dword ptr [ebp-4]
 0046C40F    mov         dword ptr [edx+24C],2;TFStringInfo_11011981.FModalResult:TModalResult
 0046C419    mov         esp,ebp
 0046C41B    pop         ebp
 0046C41C    ret         4
*}
end;

//0046C4CC
destructor TFStringInfo_11011981.Destroy;
begin
{*
 0046C4CC    push        ebp
 0046C4CD    mov         ebp,esp
 0046C4CF    add         esp,0FFFFFFD4
 0046C4D2    call        0067EF81
 0046C4D7    mov         byte ptr [ebp-29],dl
 0046C4DA    mov         dword ptr [ebp-28],eax
 0046C4DD    mov         eax,6B0CB4
 0046C4E2    call        0066FECC
 0046C515    mov         esp,ebp
 0046C517    pop         ebp
 0046C518    ret
*}
end;

end.`
  },
  {
    id: 'src-unit5-pas',
    unitId: 'unit-5',
    name: '_Unit5.pas (FExplorer)',
    language: 'pascal',
    content: `unit _Unit5;
// TFExplorer_11011981 - Explorer/Data Viewer
// Decompiled by IDR v.01.04.2017

interface

uses
  SysUtils, Classes;

    constructor Create(AOwner:TComponent);//0046C53C
    procedure btnDefCodeClick(Sender:TObject);//0046DA1C
    procedure btnUndefCodeClick(Sender:TObject);//0046DA48
    procedure btnDefStringClick(Sender:TObject);//0046DA74
    procedure rgStringViewStyleClick(Sender:TObject);//0046DAA0
    procedure miCopy2ClipboardClick(Sender:TObject);//0046DAC8
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//0046DBA8
    procedure FormShow(Sender:TObject);//0046DBD4
    procedure rgDataViewStyleClick(Sender:TObject);//0046DBF0
    procedure FormCreate(Sender:TObject);//0046DC18
    destructor Destroy;//0046DCD8

implementation

//0046C53C
constructor TFExplorer_11011981.Create(AOwner:TComponent);
begin
{*
 0046C53C    push        ebp
 0046C53D    mov         ebp,esp
 0046C53F    add         esp,0FFFFFFD0
 0046C542    mov         byte ptr [ebp-8],dl
 0046C545    test        dl,dl
 0046C547    jle         0046C54E
 0046C549    call        0067EF6C
 0046C54E    mov         dword ptr [ebp-30],ecx
 0046C551    mov         byte ptr [ebp-29],dl
 0046C554    mov         dword ptr [ebp-4],eax
 0046C557    mov         eax,6B0D00
 0046C55C    call        0066FECC
 0046C5E5    mov         esp,ebp
 0046C5E7    pop         ebp
 0046C5E8    ret
*}
end;

//0046DA1C
procedure TFExplorer_11011981.btnDefCodeClick(Sender:TObject);
begin
{*
 0046DA1C    push        ebp
 0046DA1D    mov         ebp,esp
 0046DA1F    add         esp,0FFFFFFF8
 0046DA22    mov         dword ptr [ebp-8],edx
 0046DA25    mov         dword ptr [ebp-4],eax
 0046DA28    mov         eax,dword ptr [ebp-4]
 0046DA2B    mov         edx,dword ptr [eax+344]
 0046DA31    push        edx
 0046DA32    mov         eax,dword ptr [ebp-4]
 0046DA35    mov         ecx,dword ptr [eax+348]
 0046DA3B    push        ecx
 0046DA3C    call        DefineCode
 0046DA41    pop         ecx
 0046DA42    pop         ecx
 0046DA43    pop         ebp
 0046DA44    ret
*}
end;

end.`
  },
  {
    id: 'src-unit6-pas',
    unitId: 'unit-6',
    name: '_Unit6.pas (AnalyzeThread)',
    language: 'pascal',
    content: `unit _Unit6;
// TAnalyzeThread - Main analysis engine thread
// Decompiled by IDR v.01.04.2017
// 23146 lines in original - core decompilation logic

interface

uses
  SysUtils, Classes;

    @@Explorer@Initialize; stdcall;//0046DD28
    @@Explorer@Finalize; stdcall;//0046DD38
    destructor Destroy;//004763E4
    procedure Execute;//00476450
    procedure sub_0047673C(TAnalyzeThread; ?:?; ?:?);
    procedure sub_00476828(?:?; ?:?; ?:?);
    procedure sub_004768BC(?:TAnalyzeThread);
    procedure sub_00476980(?:TAnalyzeThread; ?:AnsiString);
    procedure sub_00476A40(?:TAnalyzeThread);
    procedure sub_00476A84(?:TAnalyzeThread);
    procedure sub_00478874(?:TAnalyzeThread);
    procedure sub_00479218(?:TAnalyzeThread);
    procedure sub_0047A110(?:TAnalyzeThread);
    procedure sub_0047AA68(?:TAnalyzeThread);
    procedure sub_0047C2C8(?:TAnalyzeThread);
    procedure sub_0047DCA4(?:TAnalyzeThread);
    procedure sub_0047E788(?:TAnalyzeThread);
    procedure sub_0047FD40(?:TAnalyzeThread);
    procedure sub_00480468(?:TAnalyzeThread);
    procedure sub_00481CC0(?:TAnalyzeThread);

implementation

//004763E4
destructor TAnalyzeThread.Destroy;
begin
{*
 004763E4    push        ebp
 004763E5    mov         ebp,esp
 004763E7    add         esp,0FFFFFFD4
 004763EA    call        0067EF81
 004763EF    mov         byte ptr [ebp-29],dl
 004763F2    mov         dword ptr [ebp-28],eax
 004763F5    mov         eax,6B1620
 004763FA    call        0066FECC
 004763FF    mov         dl,byte ptr [ebp-29]
 00476402    test        dl,dl
 00476404    jl          00476414
 00476406    sub         dword ptr [ebp-8],10
 0047640A    xor         edx,edx
 0047640C    mov         eax,dword ptr [ebp-28]
 0047640F    call        0040235C
 00476414    mov         esp,ebp
 00476416    pop         ebp
 00476417    ret
*}
end;

//00476450
procedure TAnalyzeThread.Execute;
begin
{*
 00476450    push        ebp
 00476451    mov         ebp,esp
 00476453    add         esp,0FFFFFEF8
 00476459    push        ebx
 0047645A    push        esi
 0047645B    push        edi
 0047645C    mov         dword ptr [ebp-108],eax
 00476462    mov         eax,6B65F4
 00476467    call        0066FECC
 0047646C    mov         eax,dword ptr [ebp-108]
 00476472    mov         eax,dword ptr [eax+1C];TAnalyzeThread.FFileName
 00476475    call        005312C8
 0047647A    mov         dword ptr [ebp-10C],eax
 00476480    mov         edx,dword ptr [ebp-10C]
 00476486    inc         edx
 00476487    jne         00476497
 00476489    mov         eax,dword ptr [ebp-108]
 0047648F    call        00476A40;SyncShowError
 00476494    pop         edi
 00476495    pop         esi
 00476496    pop         ebx
 00476497    mov         eax,dword ptr [ebp-108]
 0047649D    call        00476A84;SyncShowProgress
*}
end;

end.`
  },
  {
    id: 'src-unit7-pas',
    unitId: 'unit-7',
    name: '_Unit7.pas (Dialogs/Find)',
    language: 'pascal',
    content: `unit _Unit7;
// TFInputDlg_11011981, TFindDlg_11011981 - Input and Find dialogs
// Decompiled by IDR v.01.04.2017

interface

uses
  SysUtils, Classes;

    constructor TFInputDlg_11011981.Create(AOwner:TComponent);//004829B8
    procedure TFInputDlg_11011981.FormShow(Sender:TObject);//00482A38
    procedure TFInputDlg_11011981.edtNameEnter(Sender:TObject);//00482A80
    procedure TFInputDlg_11011981.FormCreate(Sender:TObject);//00482AA0
    destructor TFInputDlg_11011981.Destroy;//00482B44
    constructor TFindDlg_11011981.Create(AOwner:TComponent);//00482B94
    procedure TFindDlg_11011981.FormShow(Sender:TObject);//00482C10
    procedure TFindDlg_11011981.cbTextEnter(Sender:TObject);//00482CBC
    procedure TFindDlg_11011981.FormCreate(Sender:TObject);//00482CE0
    destructor TFindDlg_11011981.Destroy;//00482D80

implementation

//004829B8
constructor TFInputDlg_11011981.Create(AOwner:TComponent);
begin
{*
 004829B8    push        ebp
 004829B9    mov         ebp,esp
 004829BB    add         esp,0FFFFFFD0
 004829BE    mov         byte ptr [ebp-8],dl
 004829C1    test        dl,dl
 004829C3    jle         004829CA
 004829C5    call        0067EF6C
 004829CA    mov         dword ptr [ebp-30],ecx
 004829CD    mov         byte ptr [ebp-29],dl
 004829D0    mov         dword ptr [ebp-4],eax
 004829D3    mov         eax,6B4DB8
 004829D8    call        0066FECC
 00482A0D    mov         esp,ebp
 00482A0F    pop         ebp
 00482A10    ret
*}
end;

//00482A38
procedure TFInputDlg_11011981.FormShow(Sender:TObject);
begin
{*
 00482A38    push        ebp
 00482A39    mov         ebp,esp
 00482A3B    add         esp,0FFFFFFF8
 00482A3E    push        ebx
 00482A3F    mov         dword ptr [ebp-8],edx
 00482A42    mov         dword ptr [ebp-4],eax
 00482A45    mov         edx,0FFFFFFB8
 00482A4A    mov         eax,dword ptr [ebp-4]
 00482A4D    mov         eax,dword ptr [eax+2F8];TFInputDlg_11011981.edtName:TLabeledEdit
 00482A53    call        0067E488
 00482A75    call        TForm.SetActiveControl
 00482A7A    pop         ebx
 00482A7B    pop         ecx
 00482A7C    pop         ecx
 00482A7D    pop         ebp
 00482A7E    ret
*}
end;

//00482B44
destructor TFInputDlg_11011981.Destroy;
begin
{*
 00482B44    push        ebp
 00482B45    mov         ebp,esp
 00482B47    add         esp,0FFFFFFD4
 00482B4A    call        0067EF81
 00482B4F    mov         byte ptr [ebp-29],dl
 00482B52    mov         dword ptr [ebp-28],eax
 00482B55    mov         eax,6B4F8C
 00482B5A    call        0066FECC
 00482B8D    mov         esp,ebp
 00482B8F    pop         ebp
 00482B90    ret
*}
end;

//00482B94
constructor TFindDlg_11011981.Create(AOwner:TComponent);
begin
{*
 00482B94    push        ebp
 00482B95    mov         ebp,esp
 00482B97    add         esp,0FFFFFFD0
 00482B9A    mov         byte ptr [ebp-8],dl
 00482B9D    test        dl,dl
 00482B9F    jle         00482BA6
 00482BA1    call        0067EF6C
 00482BE9    mov         esp,ebp
 00482BEB    pop         ebp
 00482BEC    ret
*}
end;

end.`
  },
  {
    id: 'src-unit89-pas',
    unitId: 'unit-89',
    name: '_Unit89.pas',
    language: 'pascal',
    content: `unit _Unit89;

interface

uses
  SysUtils, Classes;

    procedure sub_00654F74;

implementation

//00654F74
procedure sub_00654F74;
begin
{*
 00654F74    sub         dword ptr ds:[6ECFE8],1
 00654F7B    ret
*}
end;

end.`
  },
  {
    id: 'src-unit91-pas',
    unitId: 'unit-91',
    name: '_Unit91.pas',
    language: 'pascal',
    content: `unit _Unit91;

interface

uses
  SysUtils, Classes;

    procedure sub_00656070;

implementation

//00656070
procedure sub_00656070;
begin
{*
 00656070    push        ebp
 00656071    mov         ebp,esp
 00656073    sub         dword ptr ds:[6ECFF0],1
 0065607A    jae         006560C7
 0065607C    call        006554A0
 00656081    mov         eax,655BD0
 00656086    mov         edx,dword ptr ds:[6EA2F4];^gvar_006ED14C
 0065608C    mov         dword ptr [edx],eax
 006560C7    pop         ebp
 006560C8    ret
*}
end;

end.`
  },
  {
    id: 'src-unit110-pas',
    unitId: 'unit-110',
    name: '_Unit110.pas',
    language: 'pascal',
    content: `unit _Unit110;

interface

uses
  SysUtils, Classes;

    procedure sub_0067757C;

implementation

//0067757C
procedure sub_0067757C;
begin
{*
 0067757C    mov         dword ptr ds:[6E6E88],6772DC
 00677586    mov         dword ptr ds:[6E6E8C],677564
 00677590    ret
*}
end;

end.`
  },
  {
    id: 'src-unit125-pas',
    unitId: 'unit-125',
    name: '_Unit125.pas',
    language: 'pascal',
    content: `unit _Unit125;

interface

uses
  SysUtils, Classes;

    procedure sub_0067ED38;

implementation

//0067ED38
procedure sub_0067ED38;
begin
{*
 0067ED38    push        ebp
 0067ED39    mov         ebp,esp
 0067ED3B    cmp         byte ptr ds:[694044],0;gvar_00694044
 0067ED42    setne       al
 0067ED45    and         eax,1
 0067ED48    push        eax
 0067ED49    push        dword ptr ds:[694093]
 0067ED4F    cmp         byte ptr ds:[69407C],0;gvar_0069407C
 0067ED56    setne       dl
 0067ED59    and         edx,1
 0067ED5C    push        edx
 0067ED5D    cmp         byte ptr ds:[69407D],0;gvar_0069407D
 0067ED64    setne       cl
 0067ED67    and         ecx,1
 0067ED6A    push        ecx
 0067ED6B    call        0040172C
 0067ED70    add         esp,10
 0067ED73    pop         ebp
 0067ED74    ret
*}
end;

end.`
  },
];

export const mockTypes: RTTIType[] = [
  { id: 'type-1', address: '0066B808', name: 'TObject', kind: 'tkClass', definition: 'TObject = class' },
  { id: 'type-2', address: '0066E4E0', name: 'TInterfacedObject', kind: 'tkClass', definition: 'TInterfacedObject = class(TObject)' },
  { id: 'type-3', address: '0040A100', name: 'TModalResult', kind: 'tkEnumeration', definition: 'TModalResult = (mrNone, mrOk, mrCancel, mrAbort, mrRetry, mrIgnore, mrYes, mrNo, mrAll, mrNoToAll, mrYesToAll);' },
  { id: 'type-4', address: '0040A200', name: 'TAlignment', kind: 'tkEnumeration', definition: 'TAlignment = (taLeftJustify, taRightJustify, taCenter);' },
  { id: 'type-5', address: '0040A300', name: 'Boolean', kind: 'tkEnumeration', definition: 'Boolean = (False, True);' },
  { id: 'type-6', address: '0040A400', name: 'TBoundArray', kind: 'tkDynArray', definition: 'TBoundArray = array of Integer;' },
  { id: 'type-7', address: '005B1000', name: 'TForm', kind: 'tkClass', definition: 'TForm = class(TScrollingWinControl)' },
  { id: 'type-8', address: '005C1000', name: 'TListBox', kind: 'tkClass', definition: 'TListBox = class(TWinControl)' },
  { id: 'type-9', address: '00591000', name: 'TPageControl', kind: 'tkClass', definition: 'TPageControl = class(TWinControl)' },
  { id: 'type-10', address: '005A1000', name: 'TControl', kind: 'tkClass', definition: 'TControl = class(TComponent)' },
  { id: 'type-11', address: '005A2000', name: 'TWinControl', kind: 'tkClass', definition: 'TWinControl = class(TControl)' },
  { id: 'type-12', address: '0040A500', name: 'TCloseAction', kind: 'tkEnumeration', definition: 'TCloseAction = (caNone, caHide, caFree, caMinimize);' },
  { id: 'type-13', address: '0040A600', name: 'TShiftState', kind: 'tkSet', definition: 'TShiftState = set of (ssShift, ssAlt, ssCtrl, ssLeft, ssRight, ssMiddle, ssDouble);' },
  { id: 'type-14', address: '0068F93C', name: 'TJPEGImage', kind: 'tkClass', definition: 'TJPEGImage = class(TGraphic)' },
  // Additional types from _Unit10
  { id: 'type-15', address: '0049B42C', name: 'TAlign', kind: 'tkEnumeration', definition: 'TAlign = (alNone, alTop, alBottom, alLeft, alRight, alClient, alCustom);' },
  { id: 'type-16', address: '0049B430', name: 'TDragMode', kind: 'tkEnumeration', definition: 'TDragMode = (dmManual, dmAutomatic);' },
  { id: 'type-17', address: '0049B434', name: 'TTextCase', kind: 'tkEnumeration', definition: 'TTextCase = (tcLowerCase, tcUpperCase, tcAsIs);' },
  { id: 'type-18', address: '0049B438', name: 'TFormBorderStyle', kind: 'tkEnumeration', definition: 'TFormBorderStyle = (bsNone, bsSingle, bsSizeable, bsDialog, bsToolWindow, bsSizeToolWin);' },
  { id: 'type-19', address: '0049B43C', name: 'TScrollStyle', kind: 'tkEnumeration', definition: 'TScrollStyle = (ssNone, ssHorizontal, ssVertical, ssBoth);' },
  { id: 'type-20', address: '0049B440', name: 'TOutlineType', kind: 'tkEnumeration', definition: 'TOutlineType = (otStandard, otOwnerDraw);' },
  { id: 'type-21', address: '0049B444', name: 'TDragKind', kind: 'tkEnumeration', definition: 'TDragKind = (dkDrag, dkDock);' },
  { id: 'type-22', address: '005A1100', name: 'TGraphicControl', kind: 'tkClass', definition: 'TGraphicControl = class(TControl)' },
  { id: 'type-23', address: '005A2100', name: 'TCustomControl', kind: 'tkClass', definition: 'TCustomControl = class(TWinControl)' },
  { id: 'type-24', address: '005A2200', name: 'TScrollingWinControl', kind: 'tkClass', definition: 'TScrollingWinControl = class(TWinControl)' },
  { id: 'type-25', address: '00690000', name: 'TPersistent', kind: 'tkClass', definition: 'TPersistent = class(TObject)' },
  { id: 'type-26', address: '00691000', name: 'TComponent', kind: 'tkClass', definition: 'TComponent = class(TPersistent)' },
  { id: 'type-27', address: '00680100', name: 'TThread', kind: 'tkClass', definition: 'TThread = class(TObject)' },
  { id: 'type-28', address: '00680200', name: 'TList', kind: 'tkClass', definition: 'TList = class(TObject)' },
  { id: 'type-29', address: '00680300', name: 'TStream', kind: 'tkClass', definition: 'TStream = class(TObject)' },
];

export const mockMapEntries: MapEntry[] = [
  { id: 'map-1', address: '00400000', segment: 'CODE', name: 'PE Header' },
  { id: 'map-2', address: '00401000', segment: 'CODE', name: '_Unit1 / _Unit2 (FMain)' },
  { id: 'map-3', address: '00460000', segment: 'CODE', name: '_Unit3 (FTypeInfo)' },
  { id: 'map-4', address: '0046C000', segment: 'CODE', name: '_Unit4-5 (StringInfo/Explorer)' },
  { id: 'map-5', address: '0046DD00', segment: 'CODE', name: '_Unit6 (AnalyzeThread)' },
  { id: 'map-6', address: '00482000', segment: 'CODE', name: '_Unit7 (Dialogs/Find)' },
  { id: 'map-7', address: '00490000', segment: 'CODE', name: '_Unit8-9' },
  { id: 'map-8', address: '0049B000', segment: 'CODE', name: '_Unit10 (VCL Registry)' },
  { id: 'map-9', address: '004B1000', segment: 'CODE', name: '_Unit14 (Core Engine)' },
  { id: 'map-10', address: '00531000', segment: 'CODE', name: '_Unit15 (Utilities)' },
  { id: 'map-11', address: '00540000', segment: 'CODE', name: '_Unit16-23 (Plugins/Misc)' },
  { id: 'map-12', address: '00547000', segment: 'CODE', name: 'TeeChart (TeCanvas/TeEngine/TeeProcs)' },
  { id: 'map-13', address: '00556000', segment: 'CODE', name: 'Chart / Series' },
  { id: 'map-14', address: '00570000', segment: 'CODE', name: 'Grids' },
  { id: 'map-15', address: '00580000', segment: 'CODE', name: 'ExtCtrls / MPlayer' },
  { id: 'map-16', address: '00590000', segment: 'CODE', name: 'ComCtrls / StdCtrls' },
  { id: 'map-17', address: '005A0000', segment: 'CODE', name: 'Controls / Mask' },
  { id: 'map-18', address: '005B0000', segment: 'CODE', name: 'Forms / Graphics / Grids' },
  { id: 'map-19', address: '005E0000', segment: 'CODE', name: 'Menus / ImgList / ExtDlgs' },
  { id: 'map-20', address: '00600000', segment: 'CODE', name: 'ComCtrls (PageControl/ToolBar/StatusBar)' },
  { id: 'map-21', address: '00630000', segment: 'CODE', name: 'TypInfo / BitBtn / SpeedButton' },
  { id: 'map-22', address: '00640000', segment: 'CODE', name: 'variants' },
  { id: 'map-23', address: '00650000', segment: 'CODE', name: 'CommCtrl / _Unit89-96' },
  { id: 'map-24', address: '00660000', segment: 'CODE', name: 'Windows / _Unit99-109' },
  { id: 'map-25', address: '0066A000', segment: 'CODE', name: 'system (Runtime)' },
  { id: 'map-26', address: '00670000', segment: 'CODE', name: 'SysUtils / _Unit110-124' },
  { id: 'map-27', address: '00680000', segment: 'CODE', name: 'Classes' },
  { id: 'map-28', address: '0068F000', segment: 'CODE', name: 'jpeg' },
  { id: 'map-29', address: '00690000', segment: 'CODE', name: 'Idr / _Unit125' },
  { id: 'map-30', address: '006A0000', segment: 'DATA', name: 'VMT Tables' },
  { id: 'map-31', address: '006E0000', segment: 'DATA', name: 'Global Variables' },
  { id: 'map-32', address: '006F0000', segment: 'BSS', name: 'Uninitialized Data' },
];

export const mockNames: NameEntry[] = [
  { id: 'name-1', address: '00401830', name: 'WinMain', xrefs: [] },
  { id: 'name-2', address: '00401F40', name: 'TFMain_11011981.Create', xrefs: ['00401830'] },
  { id: 'name-3', address: '00402160', name: 'TFMain_11011981.Destroy', xrefs: [] },
  { id: 'name-4', address: '0041258C', name: 'TFMain_11011981.FormCreate', xrefs: ['00401F40'] },
  { id: 'name-5', address: '00413494', name: 'TFMain_11011981.FormDestroy', xrefs: ['00402160'] },
  { id: 'name-6', address: '00413A44', name: 'TFMain_11011981.FormShow', xrefs: ['0041258C'] },
  { id: 'name-7', address: '00419C30', name: 'TFMain_11011981.bEPClick', xrefs: ['00401000'] },
  { id: 'name-8', address: '00418FD8', name: 'TFMain_11011981.lbCodeDblClick', xrefs: ['00401000'] },
  { id: 'name-9', address: '0042C588', name: 'TFMain_11011981.FormResize', xrefs: [] },
  { id: 'name-10', address: '00433B98', name: 'TFMain_11011981.miAboutClick', xrefs: [] },
  { id: 'name-11', address: '0046281C', name: 'TFTypeInfo_11011981.Create', xrefs: [] },
  { id: 'name-12', address: '0046BEC8', name: 'TFTypeInfo_11011981.bSaveClick', xrefs: [] },
  { id: 'name-13', address: '0046BE9C', name: 'TFTypeInfo_11011981.FormKeyDown', xrefs: [] },
  { id: 'name-14', address: '0046C168', name: 'TFTypeInfo_11011981.FormCreate', xrefs: [] },
  { id: 'name-15', address: '0046C2F0', name: 'TFTypeInfo_11011981.Destroy', xrefs: [] },
  { id: 'name-16', address: '0046C374', name: 'TFStringInfo_11011981.Create', xrefs: [] },
  { id: 'name-17', address: '0046C3F4', name: 'TFStringInfo_11011981.FormKeyDown', xrefs: [] },
  { id: 'name-18', address: '0046C4CC', name: 'TFStringInfo_11011981.Destroy', xrefs: [] },
  { id: 'name-19', address: '0046C53C', name: 'TFExplorer_11011981.Create', xrefs: [] },
  { id: 'name-20', address: '0046DA1C', name: 'TFExplorer_11011981.btnDefCodeClick', xrefs: [] },
  { id: 'name-21', address: '0046DCD8', name: 'TFExplorer_11011981.Destroy', xrefs: [] },
  { id: 'name-22', address: '004763E4', name: 'TAnalyzeThread.Destroy', xrefs: [] },
  { id: 'name-23', address: '00476450', name: 'TAnalyzeThread.Execute', xrefs: [] },
  { id: 'name-24', address: '004829B8', name: 'TFInputDlg_11011981.Create', xrefs: [] },
  { id: 'name-25', address: '00482A38', name: 'TFInputDlg_11011981.FormShow', xrefs: [] },
  { id: 'name-26', address: '00482B44', name: 'TFInputDlg_11011981.Destroy', xrefs: [] },
  { id: 'name-27', address: '00482B94', name: 'TFindDlg_11011981.Create', xrefs: [] },
  { id: 'name-28', address: '00482D80', name: 'TFindDlg_11011981.Destroy', xrefs: [] },
  { id: 'name-29', address: '0049B42C', name: '_Unit10.VCLComponentRegistry', xrefs: [] },
  { id: 'name-30', address: '004A787C', name: 'TFEditFieldsDlg_11011981.Create', xrefs: [] },
  { id: 'name-31', address: '004A8DD4', name: 'TFKBViewer_11011981.Create', xrefs: [] },
  { id: 'name-32', address: '004B1240', name: '_Unit14.Initialize', xrefs: [] },
  { id: 'name-33', address: '005300A4', name: 'TFHex2DoubleDlg_11011981.Create', xrefs: [] },
  { id: 'name-34', address: '00531098', name: '_Unit15.Initialize', xrefs: [] },
  { id: 'name-35', address: '00531284', name: '_Unit15.ScaleForm', xrefs: ['0046C420', '00482AA0', '00482CE0'] },
  { id: 'name-36', address: '005312C8', name: '_Unit15.AddressToOffset', xrefs: ['0046C640', '00476475'] },
  { id: 'name-37', address: '00540B80', name: 'TFPlugins.Create', xrefs: [] },
  { id: 'name-38', address: '0066B808', name: 'TObject.ClassType', xrefs: ['0066B824'] },
  { id: 'name-39', address: '0066B810', name: 'TObject.ClassName', xrefs: ['0066B824'] },
  { id: 'name-40', address: '0066B890', name: 'TObject.Create', xrefs: ['00401F40', '0046281C'] },
  { id: 'name-41', address: '0066B8B0', name: 'TObject.Destroy', xrefs: ['0066B8C0'] },
  { id: 'name-42', address: '0066B8C0', name: 'TObject.Free', xrefs: ['00413494', '0046C2F0'] },
  { id: 'name-43', address: '00691DC0', name: 'Idr.sub_00691DC0', xrefs: [] },
  { id: 'name-44', address: '00654F74', name: '_Unit89.sub_00654F74', xrefs: [] },
  { id: 'name-45', address: '00656070', name: '_Unit91.sub_00656070', xrefs: [] },
  { id: 'name-46', address: '0067757C', name: '_Unit110.sub_0067757C', xrefs: [] },
  { id: 'name-47', address: '0067ED38', name: '_Unit125.sub_0067ED38', xrefs: ['0040172C'] },
];
