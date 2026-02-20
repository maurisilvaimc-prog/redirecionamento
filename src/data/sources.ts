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
0066A640   push    ebx
0066A641   mov     ebx, eax
0066A643   call    SysGetMem
0066A648   test    eax, eax
0066A64A   jne     0066A660
0066A64C   mov     eax, ebx
0066A64E   call    Error
0066A653   jmp     @GetMem
0066A660   pop     ebx
0066A661   ret

@FreeMem:
0066A660   push    eax
0066A661   call    SysFreeMem
0066A666   or      eax, eax
0066A668   jne     0066A670
0066A66A   pop     ecx
0066A66B   ret`
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
 0065608E    mov         eax,[006EA36C];^gvar_006ED2C0
 00656093    mov         dword ptr [eax],655E98
 00656099    mov         eax,6555BC
 0065609E    mov         edx,dword ptr ds:[6EA368];^gvar_006ED2E0
 006560A4    mov         dword ptr [edx],eax
 006560A6    mov         eax,[006EA2D4];^gvar_006ED2FC
 006560AB    cmp         byte ptr [eax],0
 006560AE    jne         006560C7
 006560B0    mov         eax,[006EA2E0];^gvar_006ED308
 006560B5    mov         eax,dword ptr [eax]
 006560B7    mov         [006ECFFC],eax;gvar_006ECFFC
 006560BC    mov         eax,[006EA2E0];^gvar_006ED308
 006560C1    mov         dword ptr [eax],655F74
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
  { id: 'type-7', address: '005B1000', name: 'TForm', kind: 'tkClass', definition: 'TForm = class(TWinControl)' },
  { id: 'type-8', address: '005C1000', name: 'TListBox', kind: 'tkClass', definition: 'TListBox = class(TWinControl)' },
  { id: 'type-9', address: '00591000', name: 'TPageControl', kind: 'tkClass', definition: 'TPageControl = class(TWinControl)' },
  { id: 'type-10', address: '005A1000', name: 'TControl', kind: 'tkClass', definition: 'TControl = class(TComponent)' },
  { id: 'type-11', address: '005A2000', name: 'TWinControl', kind: 'tkClass', definition: 'TWinControl = class(TControl)' },
  { id: 'type-12', address: '0040A500', name: 'TCloseAction', kind: 'tkEnumeration', definition: 'TCloseAction = (caNone, caHide, caFree, caMinimize);' },
  { id: 'type-13', address: '0040A600', name: 'TShiftState', kind: 'tkSet', definition: 'TShiftState = set of (ssShift, ssAlt, ssCtrl, ssLeft, ssRight, ssMiddle, ssDouble);' },
  { id: 'type-14', address: '0068F93C', name: 'TJPEGImage', kind: 'tkClass', definition: 'TJPEGImage = class(TGraphic)' },
];

export const mockMapEntries: MapEntry[] = [
  { id: 'map-1', address: '00401000', segment: 'CODE', name: '_Unit2 (FMain)' },
  { id: 'map-2', address: '00460000', segment: 'CODE', name: '_Unit3 (FTypeInfo)' },
  { id: 'map-3', address: '00480000', segment: 'CODE', name: '_Unit7 (Threads)' },
  { id: 'map-4', address: '00590000', segment: 'CODE', name: 'ComCtrls' },
  { id: 'map-5', address: '005A0000', segment: 'CODE', name: 'Controls' },
  { id: 'map-6', address: '005B0000', segment: 'CODE', name: 'Forms' },
  { id: 'map-7', address: '005C0000', segment: 'CODE', name: 'StdCtrls' },
  { id: 'map-8', address: '00650000', segment: 'CODE', name: 'CommCtrl / _Unit89-91' },
  { id: 'map-9', address: '00660000', segment: 'CODE', name: 'Windows' },
  { id: 'map-10', address: '0066A000', segment: 'CODE', name: 'system (Runtime)' },
  { id: 'map-11', address: '00670000', segment: 'CODE', name: 'SysUtils / _Unit110' },
  { id: 'map-12', address: '00690000', segment: 'CODE', name: 'Idr / _Unit125' },
  { id: 'map-13', address: '006A0000', segment: 'DATA', name: 'VMT Tables' },
  { id: 'map-14', address: '006E0000', segment: 'DATA', name: 'Global Variables' },
  { id: 'map-15', address: '006F0000', segment: 'BSS', name: 'Uninitialized Data' },
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
  { id: 'name-13', address: '0066B808', name: 'TObject.ClassType', xrefs: ['0066B824'] },
  { id: 'name-14', address: '0066B810', name: 'TObject.ClassName', xrefs: ['0066B824'] },
  { id: 'name-15', address: '0066B890', name: 'TObject.Create', xrefs: ['00401F40', '0046281C'] },
  { id: 'name-16', address: '0066B8B0', name: 'TObject.Destroy', xrefs: ['0066B8C0'] },
  { id: 'name-17', address: '0066B8C0', name: 'TObject.Free', xrefs: ['00413494', '0046C2F0'] },
  { id: 'name-18', address: '00691DC0', name: 'Idr.sub_00691DC0', xrefs: [] },
  { id: 'name-19', address: '00654F74', name: '_Unit89.sub_00654F74', xrefs: [] },
  { id: 'name-20', address: '00656070', name: '_Unit91.sub_00656070', xrefs: [] },
  { id: 'name-21', address: '0067757C', name: '_Unit110.sub_0067757C', xrefs: [] },
  { id: 'name-22', address: '0067ED38', name: '_Unit125.sub_0067ED38', xrefs: ['0040172C'] },
];
