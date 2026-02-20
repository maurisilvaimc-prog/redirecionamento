//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit93;

interface

uses
  SysUtils, Classes;

type
  TSynchroObject = class(TObject)
  public
    procedure v0; virtual;//v0//00656440
    procedure v4; virtual;//v4//0065644C
  end;
  TCriticalSection = class(TSynchroObject)
  public
    //...:?;//f4
    destructor Destroy; virtual;//006564A8
    procedure v0; virtual;//v0//006564E8
    procedure v4; virtual;//v4//00656500
    constructor Create;//00656458
  end;
    procedure sub_0065636C;//0065636C
    procedure sub_00656440;//00656440
    procedure sub_0065644C;//0065644C
    destructor Destroy;//006564A8
    procedure sub_006564E8;//006564E8
    procedure sub_00656500;//00656500
    procedure sub_00656518(?:TCriticalSection);//00656518
    procedure sub_0065652C(?:TCriticalSection);//0065652C

implementation

//0065636C
procedure sub_0065636C;
begin
{*
 0065636C    sub         dword ptr ds:[6ED008],1
 00656373    ret
*}
end;

//00656440
procedure sub_00656440;
begin
{*
 00656440    push        ebp
 00656441    mov         ebp,esp
 00656443    push        ecx
 00656444    mov         dword ptr [ebp-4],eax
 00656447    pop         ecx
 00656448    pop         ebp
 00656449    ret
*}
end;

//0065644C
procedure sub_0065644C;
begin
{*
 0065644C    push        ebp
 0065644D    mov         ebp,esp
 0065644F    push        ecx
 00656450    mov         dword ptr [ebp-4],eax
 00656453    pop         ecx
 00656454    pop         ebp
 00656455    ret
*}
end;

//00656458
constructor TCriticalSection.Create;
begin
{*
 00656458    push        ebp
 00656459    mov         ebp,esp
 0065645B    add         esp,0FFFFFFF8
 0065645E    test        dl,dl
>00656460    je          0065646A
 00656462    add         esp,0FFFFFFF0
 00656465    call        @ClassCreate
 0065646A    mov         byte ptr [ebp-5],dl
 0065646D    mov         dword ptr [ebp-4],eax
 00656470    xor         edx,edx
 00656472    mov         eax,dword ptr [ebp-4]
 00656475    call        TObject.Create
 0065647A    mov         eax,dword ptr [ebp-4]
 0065647D    add         eax,4;TCriticalSection.....:?
 00656480    push        eax
 00656481    call        KERNEL32.InitializeCriticalSection
 00656486    mov         eax,dword ptr [ebp-4]
 00656489    cmp         byte ptr [ebp-5],0
>0065648D    je          0065649E
 0065648F    call        @AfterConstruction
 00656494    pop         dword ptr fs:[0]
 0065649B    add         esp,0C
 0065649E    mov         eax,dword ptr [ebp-4]
 006564A1    pop         ecx
 006564A2    pop         ecx
 006564A3    pop         ebp
 006564A4    ret
*}
end;

//006564A8
destructor TCriticalSection.Destroy;
begin
{*
 006564A8    push        ebp
 006564A9    mov         ebp,esp
 006564AB    add         esp,0FFFFFFF8
 006564AE    call        @BeforeDestruction
 006564B3    mov         byte ptr [ebp-5],dl
 006564B6    mov         dword ptr [ebp-4],eax
 006564B9    mov         eax,dword ptr [ebp-4]
 006564BC    add         eax,4;TCriticalSection......:?
 006564BF    push        eax
 006564C0    call        KERNEL32.DeleteCriticalSection
 006564C5    mov         dl,byte ptr [ebp-5]
 006564C8    and         dl,0FC
 006564CB    mov         eax,dword ptr [ebp-4]
 006564CE    call        TObject.Destroy
 006564D3    cmp         byte ptr [ebp-5],0
>006564D7    jle         006564E1
 006564D9    mov         eax,dword ptr [ebp-4]
 006564DC    call        @ClassDestroy
 006564E1    pop         ecx
 006564E2    pop         ecx
 006564E3    pop         ebp
 006564E4    ret
*}
end;

//006564E8
procedure sub_006564E8;
begin
{*
 006564E8    push        ebp
 006564E9    mov         ebp,esp
 006564EB    push        ecx
 006564EC    mov         dword ptr [ebp-4],eax
 006564EF    mov         eax,dword ptr [ebp-4]
 006564F2    add         eax,4;TCriticalSection.......:?
 006564F5    push        eax
 006564F6    call        KERNEL32.EnterCriticalSection
 006564FB    pop         ecx
 006564FC    pop         ebp
 006564FD    ret
*}
end;

//00656500
procedure sub_00656500;
begin
{*
 00656500    push        ebp
 00656501    mov         ebp,esp
 00656503    push        ecx
 00656504    mov         dword ptr [ebp-4],eax
 00656507    mov         eax,dword ptr [ebp-4]
 0065650A    add         eax,4;TCriticalSection........:?
 0065650D    push        eax
 0065650E    call        KERNEL32.LeaveCriticalSection
 00656513    pop         ecx
 00656514    pop         ebp
 00656515    ret
*}
end;

//00656518
procedure sub_00656518(?:TCriticalSection);
begin
{*
 00656518    push        ebp
 00656519    mov         ebp,esp
 0065651B    push        ecx
 0065651C    mov         dword ptr [ebp-4],eax
 0065651F    mov         eax,dword ptr [ebp-4]
 00656522    mov         edx,dword ptr [eax]
 00656524    call        dword ptr [edx];TCriticalSection.sub_006564E8
 00656526    pop         ecx
 00656527    pop         ebp
 00656528    ret
*}
end;

//0065652C
procedure sub_0065652C(?:TCriticalSection);
begin
{*
 0065652C    push        ebp
 0065652D    mov         ebp,esp
 0065652F    push        ecx
 00656530    mov         dword ptr [ebp-4],eax
 00656533    mov         eax,dword ptr [ebp-4]
 00656536    mov         edx,dword ptr [eax]
 00656538    call        dword ptr [edx+4];TCriticalSection.sub_00656500
 0065653B    pop         ecx
 0065653C    pop         ebp
 0065653D    ret
*}
end;

end.