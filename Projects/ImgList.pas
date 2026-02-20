//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ImgList;

interface

uses
  SysUtils, Classes, ImgList, ActnList, Graphics;

type
  TChangeLink = class(TObject)
  public
    FSender:TCustomImageList;//f4
    FOnChange:TNotifyEvent;//f8
    fA:word;//fA
    fC:TCustomActionList;//fC
    procedure sub_0058D038; dynamic;//0058D038
  end;
  TDrawingStyle = (dsFocus, dsSelected, dsNormal, dsTransparent);
  TImageType = (itImage, itMask);
  TCustomImageList = class(TComponent)
  public
    FHeight:Integer;//f30
    FWidth:Integer;//f34
    FAllocBy:Integer;//f38
    FHandle:HIMAGELIST;//f3C
    FDrawingStyle:TDrawingStyle;//f40
    FMasked:Boolean;//f41
    FShareImages:Boolean;//f42
    FImageType:TImageType;//f43
    FBkColor:TColor;//f44
    FBlendColor:TColor;//f48
    FClients:TList;//f4C
    FBitmap:TBitmap;//f50
    FMonoBitmap:TBitmap;//f54
    FChanged:Boolean;//f58
    FUpdateCount:Integer;//f5C
    FOnChange:TNotifyEvent;//f60
    f62:word;//f62
    f64:dword;//f64
    destructor Destroy; virtual;//0058B464
    procedure AssignTo(Dest:TPersistent); virtual;//v0//0058C534
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0058C9C0
    procedure Assign(Source:TPersistent); virtual;//v8//0058C434
    constructor Create(AOwner:TComponent); virtual;//v2C//0058B39C
    //procedure v30(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v30//0058BF98
    procedure v34; virtual;//v34//0058B4F4
    //procedure v38(?:?); virtual;//v38//0058C6DC
    procedure sub_0058C6F8; dynamic;//0058C6F8
    procedure ReadData(Stream:TStream);//0058CE90
    procedure WriteData(Stream:TStream);//0058CF24
  end;
    procedure ImgList;//0058B148
    //function sub_0058B324(?:TColor):?;//0058B324
    //function sub_0058B360(?:?):?;//0058B360
    constructor Create(AOwner:TComponent);//0058B39C
    //constructor Create(?:?);//0058B400
    destructor Destroy;//0058B464
    procedure sub_0058B4F4;//0058B4F4
    //function sub_0058B5D4(?:TPersistent):?;//0058B5D4
    procedure sub_0058B5F0(?:TPersistent);//0058B5F0
    procedure sub_0058B60C(?:TCustomImageList);//0058B60C
    //procedure sub_0058B6DC(?:TPersistent; ?:?);//0058B6DC
    procedure SetWidth(Value:Integer);//0058B72C
    procedure SetHeight(Value:Integer);//0058B794
    //procedure sub_0058B7FC(?:TDragImageList; ?:?);//0058B7FC
    //function sub_0058B83C(?:TImageList; ?:?):?;//0058B83C
    //function sub_0058B86C(?:TPersistent):?;//0058B86C
    //function sub_0058B890(?:TImageList; ?:TBitmap; ?:TBitmap):?;//0058B890
    procedure sub_0058B900(?:TCustomImageList);//0058B900
    //procedure sub_0058B944(?:?);//0058B944
    //function sub_0058BA04(?:?; ?:TBitmap; ?:TBitmap):?;//0058BA04
    //function sub_0058BAD4(?:TImageList; ?:TBitmap; ?:?):?;//0058BAD4
    //function sub_0058BBF4(?:TDragImageList):?;//0058BBF4
    //procedure sub_0058BC28(?:?; ?:?; ?:?; ?:?);//0058BC28
    //procedure sub_0058BE58(?:TImageList; ?:?);//0058BE58
    procedure sub_0058BEF4(?:TPersistent; ?:TPersistent);//0058BEF4
    procedure SetBkColor(Value:TColor);//0058BF0C
    //function GetBkColor:?;//0058BF58
    //procedure sub_0058BF98(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0058BF98
    //procedure sub_0058C1C8(?:TImageList; ?:TCanvas; ?:?; ?:?; ?:?; ?:?);//0058C1C8
    //procedure sub_0058C208(?:TImageList; ?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0058C208
    //procedure sub_0058C260(?:?; ?:?);//0058C260
    procedure sub_0058C40C(?:TPersistent; ?:TPersistent);//0058C40C
    procedure Assign(Source:TPersistent);//0058C434
    procedure AssignTo(Dest:TPersistent);//0058C534
    //procedure sub_0058C620(?:?; ?:?);//0058C620
    procedure SetDrawingStyle(Value:TDrawingStyle);//0058C6A8
    //procedure sub_0058C6DC(?:?);//0058C6DC
    procedure sub_0058C6F8;//0058C6F8
    procedure sub_0058C770(?:TCustomImageList; ?:TChangeLink);//0058C770
    procedure sub_0058C7D8(?:TCustomImageList; ?:TChangeLink);//0058C7D8
    //function sub_0058C808(?:TMemoryStream; ?:TMemoryStream):?;//0058C808
    //function sub_0058C864(?:?; ?:?):?;//0058C864
    function DoWrite:Boolean;//0058C95C
    procedure DefineProperties(Filer:TFiler);//0058C9C0
    //procedure sub_0058CA18(?:?; ?:?);//0058CA18
    //procedure sub_0058CCC4(?:?; ?:?);//0058CCC4
    //procedure sub_0058CFA8(?:?);//0058CFA8
    //procedure sub_0058CFB8(?:?);//0058CFB8
    procedure sub_0058D038;//0058D038
    procedure Finalization;//0058D060

implementation

//0058B148
procedure ImgList;
begin
{*
 0058B148    sub         dword ptr ds:[6ECCE0],1
 0058B14F    ret
*}
end;

//0058B324
{*function sub_0058B324(?:TColor):?;
begin
 0058B324    push        ebp
 0058B325    mov         ebp,esp
 0058B327    add         esp,0FFFFFFF8
 0058B32A    mov         dword ptr [ebp-4],eax
 0058B32D    mov         eax,dword ptr [ebp-4]
 0058B330    call        ColorToRGB
 0058B335    mov         dword ptr [ebp-8],eax
 0058B338    mov         eax,dword ptr [ebp-8]
 0058B33B    sub         eax,1FFFFFFF
>0058B340    je          0058B347
 0058B342    dec         eax
>0058B343    je          0058B350
>0058B345    jmp         0058B357
 0058B347    mov         dword ptr [ebp-8],0FFFFFFFF
>0058B34E    jmp         0058B357
 0058B350    mov         dword ptr [ebp-8],0FF000000
 0058B357    mov         eax,dword ptr [ebp-8]
 0058B35A    pop         ecx
 0058B35B    pop         ecx
 0058B35C    pop         ebp
 0058B35D    ret
end;*}

//0058B360
{*function sub_0058B360(?:?):?;
begin
 0058B360    push        ebp
 0058B361    mov         ebp,esp
 0058B363    add         esp,0FFFFFFF8
 0058B366    mov         dword ptr [ebp-4],eax
 0058B369    mov         eax,dword ptr [ebp-4]
 0058B36C    sub         eax,0FF000000
>0058B371    je          0058B383
 0058B373    sub         eax,0FFFFFF
>0058B378    jne         0058B38C
 0058B37A    mov         dword ptr [ebp-8],1FFFFFFF
>0058B381    jmp         0058B392
 0058B383    mov         dword ptr [ebp-8],20000000
>0058B38A    jmp         0058B392
 0058B38C    mov         eax,dword ptr [ebp-4]
 0058B38F    mov         dword ptr [ebp-8],eax
 0058B392    mov         eax,dword ptr [ebp-8]
 0058B395    pop         ecx
 0058B396    pop         ecx
 0058B397    pop         ebp
 0058B398    ret
end;*}

//0058B39C
constructor TCustomImageList.Create(AOwner:TComponent);
begin
{*
 0058B39C    push        ebp
 0058B39D    mov         ebp,esp
 0058B39F    add         esp,0FFFFFFF4
 0058B3A2    test        dl,dl
>0058B3A4    je          0058B3AE
 0058B3A6    add         esp,0FFFFFFF0
 0058B3A9    call        @ClassCreate
 0058B3AE    mov         dword ptr [ebp-0C],ecx
 0058B3B1    mov         byte ptr [ebp-5],dl
 0058B3B4    mov         dword ptr [ebp-4],eax
 0058B3B7    mov         ecx,dword ptr [ebp-0C]
 0058B3BA    xor         edx,edx
 0058B3BC    mov         eax,dword ptr [ebp-4]
 0058B3BF    call        TComponent.Create
 0058B3C4    mov         eax,dword ptr [ebp-4]
 0058B3C7    mov         dword ptr [eax+34],10;TCustomImageList.FWidth:Integer
 0058B3CE    mov         eax,dword ptr [ebp-4]
 0058B3D1    mov         dword ptr [eax+30],10;TCustomImageList.FHeight:Integer
 0058B3D8    mov         eax,dword ptr [ebp-4]
 0058B3DB    mov         edx,dword ptr [eax]
 0058B3DD    call        dword ptr [edx+34];TCustomImageList.sub_0058B4F4
 0058B3E0    mov         eax,dword ptr [ebp-4]
 0058B3E3    cmp         byte ptr [ebp-5],0
>0058B3E7    je          0058B3F8
 0058B3E9    call        @AfterConstruction
 0058B3EE    pop         dword ptr fs:[0]
 0058B3F5    add         esp,0C
 0058B3F8    mov         eax,dword ptr [ebp-4]
 0058B3FB    mov         esp,ebp
 0058B3FD    pop         ebp
 0058B3FE    ret
*}
end;

//0058B400
{*constructor TDragImageList.Create(?:?);
begin
 0058B400    push        ebp
 0058B401    mov         ebp,esp
 0058B403    add         esp,0FFFFFFF4
 0058B406    test        dl,dl
>0058B408    je          0058B412
 0058B40A    add         esp,0FFFFFFF0
 0058B40D    call        @ClassCreate
 0058B412    mov         dword ptr [ebp-0C],ecx
 0058B415    mov         byte ptr [ebp-5],dl
 0058B418    mov         dword ptr [ebp-4],eax
 0058B41B    xor         ecx,ecx
 0058B41D    xor         edx,edx
 0058B41F    mov         eax,dword ptr [ebp-4]
 0058B422    call        TComponent.Create
 0058B427    mov         eax,dword ptr [ebp-4]
 0058B42A    mov         edx,dword ptr [ebp-0C]
 0058B42D    mov         dword ptr [eax+34],edx;TImageList.FWidth:Integer
 0058B430    mov         eax,dword ptr [ebp-4]
 0058B433    mov         edx,dword ptr [ebp+8]
 0058B436    mov         dword ptr [eax+30],edx;TImageList.FHeight:Integer
 0058B439    mov         eax,dword ptr [ebp-4]
 0058B43C    mov         edx,dword ptr [eax]
 0058B43E    call        dword ptr [edx+34];TImageList.sub_005FDEE4
 0058B441    mov         eax,dword ptr [ebp-4]
 0058B444    cmp         byte ptr [ebp-5],0
>0058B448    je          0058B459
 0058B44A    call        @AfterConstruction
 0058B44F    pop         dword ptr fs:[0]
 0058B456    add         esp,0C
 0058B459    mov         eax,dword ptr [ebp-4]
 0058B45C    mov         esp,ebp
 0058B45E    pop         ebp
 0058B45F    ret         4
end;*}

//0058B464
destructor TCustomImageList.Destroy;
begin
{*
 0058B464    push        ebp
 0058B465    mov         ebp,esp
 0058B467    add         esp,0FFFFFFF8
 0058B46A    call        @BeforeDestruction
 0058B46F    mov         byte ptr [ebp-5],dl
 0058B472    mov         dword ptr [ebp-4],eax
>0058B475    jmp         0058B48C
 0058B477    mov         eax,dword ptr [ebp-4]
 0058B47A    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 0058B47D    call        0064523C
 0058B482    mov         edx,eax
 0058B484    mov         eax,dword ptr [ebp-4]
 0058B487    call        0058C770
 0058B48C    mov         eax,dword ptr [ebp-4]
 0058B48F    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 0058B492    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0058B496    jg          0058B477
 0058B498    mov         eax,dword ptr [ebp-4]
 0058B49B    mov         eax,dword ptr [eax+50];TCustomImageList.FBitmap:TBitmap
 0058B49E    call        TObject.Free
 0058B4A3    mov         eax,dword ptr [ebp-4]
 0058B4A6    call        0058B900
 0058B4AB    mov         eax,dword ptr [ebp-4]
 0058B4AE    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 0058B4B1    call        TObject.Free
 0058B4B6    mov         eax,dword ptr [ebp-4]
 0058B4B9    xor         edx,edx
 0058B4BB    mov         dword ptr [eax+4C],edx;TCustomImageList.FClients:TList
 0058B4BE    mov         eax,dword ptr [ebp-4]
 0058B4C1    cmp         dword ptr [eax+54],0;TCustomImageList.FMonoBitmap:TBitmap
>0058B4C5    je          0058B4D2
 0058B4C7    mov         eax,dword ptr [ebp-4]
 0058B4CA    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 0058B4CD    call        TObject.Free
 0058B4D2    mov         dl,byte ptr [ebp-5]
 0058B4D5    and         dl,0FC
 0058B4D8    mov         eax,dword ptr [ebp-4]
 0058B4DB    call        TComponent.Destroy
 0058B4E0    cmp         byte ptr [ebp-5],0
>0058B4E4    jle         0058B4EE
 0058B4E6    mov         eax,dword ptr [ebp-4]
 0058B4E9    call        @ClassDestroy
 0058B4EE    pop         ecx
 0058B4EF    pop         ecx
 0058B4F0    pop         ebp
 0058B4F1    ret
*}
end;

//0058B4F4
procedure sub_0058B4F4;
begin
{*
 0058B4F4    push        ebp
 0058B4F5    mov         ebp,esp
 0058B4F7    add         esp,0FFFFFFF8
 0058B4FA    xor         edx,edx
 0058B4FC    mov         dword ptr [ebp-8],edx
 0058B4FF    mov         dword ptr [ebp-4],eax
 0058B502    xor         eax,eax
 0058B504    push        ebp
 0058B505    push        58B5C7
 0058B50A    push        dword ptr fs:[eax]
 0058B50D    mov         dword ptr fs:[eax],esp
 0058B510    mov         dl,1
 0058B512    mov         eax,[006422A4];TList
 0058B517    call        TObject.Create;TList.Create
 0058B51C    mov         edx,dword ptr [ebp-4]
 0058B51F    mov         dword ptr [edx+4C],eax;TCustomImageList.FClients:TList
 0058B522    mov         eax,dword ptr [ebp-4]
 0058B525    cmp         dword ptr [eax+30],1;TCustomImageList.FHeight:Integer
>0058B529    jl          0058B540
 0058B52B    mov         eax,dword ptr [ebp-4]
 0058B52E    cmp         dword ptr [eax+30],8000;TCustomImageList.FHeight:Integer
>0058B535    jg          0058B540
 0058B537    mov         eax,dword ptr [ebp-4]
 0058B53A    cmp         dword ptr [eax+34],1;TCustomImageList.FWidth:Integer
>0058B53E    jge         0058B561
 0058B540    lea         edx,[ebp-8]
 0058B543    mov         eax,[006E9E14];^gvar_0063CA38
 0058B548    call        LoadResString
 0058B54D    mov         ecx,dword ptr [ebp-8]
 0058B550    mov         dl,1
 0058B552    mov         eax,[00642244];EInvalidOperation
 0058B557    call        Exception.Create;EInvalidOperation.Create
 0058B55C    call        @RaiseExcept
 0058B561    mov         eax,dword ptr [ebp-4]
 0058B564    mov         dword ptr [eax+38],4;TCustomImageList.FAllocBy:Integer
 0058B56B    mov         eax,dword ptr [ebp-4]
 0058B56E    mov         byte ptr [eax+41],1;TCustomImageList.FMasked:Boolean
 0058B572    mov         dl,2
 0058B574    mov         eax,dword ptr [ebp-4]
 0058B577    call        TImageList.SetDrawingStyle
 0058B57C    mov         eax,dword ptr [ebp-4]
 0058B57F    mov         byte ptr [eax+43],0;TCustomImageList.FImageType:TImageType
 0058B583    mov         eax,dword ptr [ebp-4]
 0058B586    mov         dword ptr [eax+44],1FFFFFFF;TCustomImageList.FBkColor:TColor
 0058B58D    mov         eax,dword ptr [ebp-4]
 0058B590    mov         dword ptr [eax+48],1FFFFFFF;TCustomImageList.FBlendColor:TColor
 0058B597    mov         dl,1
 0058B599    mov         eax,[005BEDD4];TBitmap
 0058B59E    call        TBitmap.Create;TBitmap.Create
 0058B5A3    mov         edx,dword ptr [ebp-4]
 0058B5A6    mov         dword ptr [edx+50],eax;TCustomImageList.FBitmap:TBitmap
 0058B5A9    mov         eax,dword ptr [ebp-4]
 0058B5AC    call        0058B60C
 0058B5B1    xor         eax,eax
 0058B5B3    pop         edx
 0058B5B4    pop         ecx
 0058B5B5    pop         ecx
 0058B5B6    mov         dword ptr fs:[eax],edx
 0058B5B9    push        58B5CE
 0058B5BE    lea         eax,[ebp-8]
 0058B5C1    call        @LStrClr
 0058B5C6    ret
>0058B5C7    jmp         @HandleFinally
>0058B5CC    jmp         0058B5BE
 0058B5CE    pop         ecx
 0058B5CF    pop         ecx
 0058B5D0    pop         ebp
 0058B5D1    ret
*}
end;

//0058B5D4
{*function sub_0058B5D4(?:TPersistent):?;
begin
 0058B5D4    push        ebp
 0058B5D5    mov         ebp,esp
 0058B5D7    add         esp,0FFFFFFF8
 0058B5DA    mov         dword ptr [ebp-4],eax
 0058B5DD    mov         eax,dword ptr [ebp-4]
 0058B5E0    cmp         dword ptr [eax+3C],0
 0058B5E4    setne       byte ptr [ebp-5]
 0058B5E8    mov         al,byte ptr [ebp-5]
 0058B5EB    pop         ecx
 0058B5EC    pop         ecx
 0058B5ED    pop         ebp
 0058B5EE    ret
end;*}

//0058B5F0
procedure sub_0058B5F0(?:TPersistent);
begin
{*
 0058B5F0    push        ebp
 0058B5F1    mov         ebp,esp
 0058B5F3    push        ecx
 0058B5F4    mov         dword ptr [ebp-4],eax
 0058B5F7    mov         eax,dword ptr [ebp-4]
 0058B5FA    cmp         dword ptr [eax+3C],0
>0058B5FE    jne         0058B608
 0058B600    mov         eax,dword ptr [ebp-4]
 0058B603    call        0058B944
 0058B608    pop         ecx
 0058B609    pop         ebp
 0058B60A    ret
*}
end;

//0058B60C
procedure sub_0058B60C(?:TCustomImageList);
begin
{*
 0058B60C    push        ebp
 0058B60D    mov         ebp,esp
 0058B60F    add         esp,0FFFFFFE4
 0058B612    mov         dword ptr [ebp-4],eax
 0058B615    push        0
 0058B617    call        USER32.GetDC
 0058B61C    mov         dword ptr [ebp-8],eax
 0058B61F    xor         eax,eax
 0058B621    push        ebp
 0058B622    push        58B6B4
 0058B627    push        dword ptr fs:[eax]
 0058B62A    mov         dword ptr fs:[eax],esp
 0058B62D    mov         eax,dword ptr [ebp-4]
 0058B630    mov         eax,dword ptr [eax+50];TCustomImageList.FBitmap:TBitmap
 0058B633    mov         dword ptr [ebp-0C],eax
 0058B636    mov         eax,dword ptr [ebp-4]
 0058B639    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 0058B63C    push        eax
 0058B63D    mov         eax,dword ptr [ebp-4]
 0058B640    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0058B643    push        eax
 0058B644    mov         eax,dword ptr [ebp-8]
 0058B647    push        eax
 0058B648    call        GDI32.CreateCompatibleBitmap
 0058B64D    mov         edx,eax
 0058B64F    mov         eax,dword ptr [ebp-0C]
 0058B652    call        TBitmap.SetHandle
 0058B657    mov         eax,dword ptr [ebp-0C]
 0058B65A    call        TBitmap.GetCanvas
 0058B65F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0058B662    xor         edx,edx
 0058B664    call        TBrush.SetColor
 0058B669    mov         eax,dword ptr [ebp-0C]
 0058B66C    mov         edx,dword ptr [eax]
 0058B66E    call        dword ptr [edx+20];TBitmap.GetHeight
 0058B671    push        eax
 0058B672    lea         eax,[ebp-1C]
 0058B675    push        eax
 0058B676    mov         eax,dword ptr [ebp-0C]
 0058B679    mov         edx,dword ptr [eax]
 0058B67B    call        dword ptr [edx+2C];TBitmap.GetWidth
 0058B67E    mov         ecx,eax
 0058B680    xor         edx,edx
 0058B682    xor         eax,eax
 0058B684    call        Rect
 0058B689    lea         eax,[ebp-1C]
 0058B68C    push        eax
 0058B68D    mov         eax,dword ptr [ebp-0C]
 0058B690    call        TBitmap.GetCanvas
 0058B695    pop         edx
 0058B696    call        TCanvas.FillRect
 0058B69B    xor         eax,eax
 0058B69D    pop         edx
 0058B69E    pop         ecx
 0058B69F    pop         ecx
 0058B6A0    mov         dword ptr fs:[eax],edx
 0058B6A3    push        58B6BB
 0058B6A8    mov         eax,dword ptr [ebp-8]
 0058B6AB    push        eax
 0058B6AC    push        0
 0058B6AE    call        USER32.ReleaseDC
 0058B6B3    ret
>0058B6B4    jmp         @HandleFinally
>0058B6B9    jmp         0058B6A8
 0058B6BB    mov         eax,dword ptr [ebp-4]
 0058B6BE    cmp         dword ptr [eax+54],0;TCustomImageList.FMonoBitmap:TBitmap
>0058B6C2    je          0058B6D7
 0058B6C4    mov         eax,dword ptr [ebp-4]
 0058B6C7    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 0058B6CA    call        TObject.Free
 0058B6CF    mov         eax,dword ptr [ebp-4]
 0058B6D2    xor         edx,edx
 0058B6D4    mov         dword ptr [eax+54],edx;TCustomImageList.FMonoBitmap:TBitmap
 0058B6D7    mov         esp,ebp
 0058B6D9    pop         ebp
 0058B6DA    ret
*}
end;

//0058B6DC
{*procedure sub_0058B6DC(?:TPersistent; ?:?);
begin
 0058B6DC    push        ebp
 0058B6DD    mov         ebp,esp
 0058B6DF    add         esp,0FFFFFFF0
 0058B6E2    mov         dword ptr [ebp-8],edx
 0058B6E5    mov         dword ptr [ebp-4],eax
 0058B6E8    mov         eax,dword ptr [ebp-4]
 0058B6EB    mov         eax,dword ptr [eax+34]
 0058B6EE    mov         dword ptr [ebp-10],eax
 0058B6F1    mov         eax,dword ptr [ebp-4]
 0058B6F4    mov         eax,dword ptr [eax+30]
 0058B6F7    mov         dword ptr [ebp-0C],eax
 0058B6FA    lea         eax,[ebp-0C]
 0058B6FD    push        eax
 0058B6FE    lea         eax,[ebp-10]
 0058B701    push        eax
 0058B702    mov         eax,dword ptr [ebp-8]
 0058B705    push        eax
 0058B706    call        COMCTL32.ImageList_GetIconSize
 0058B70B    mov         eax,dword ptr [ebp-10]
 0058B70E    mov         edx,dword ptr [ebp-4]
 0058B711    mov         dword ptr [edx+34],eax
 0058B714    mov         eax,dword ptr [ebp-0C]
 0058B717    mov         edx,dword ptr [ebp-4]
 0058B71A    mov         dword ptr [edx+30],eax
 0058B71D    mov         eax,dword ptr [ebp-4]
 0058B720    call        0058B60C
 0058B725    mov         esp,ebp
 0058B727    pop         ebp
 0058B728    ret
end;*}

//0058B72C
procedure TImageList.SetWidth(Value:Integer);
begin
{*
 0058B72C    push        ebp
 0058B72D    mov         ebp,esp
 0058B72F    add         esp,0FFFFFFF8
 0058B732    push        esi
 0058B733    mov         dword ptr [ebp-8],edx
 0058B736    mov         dword ptr [ebp-4],eax
 0058B739    mov         eax,dword ptr [ebp-8]
 0058B73C    mov         edx,dword ptr [ebp-4]
 0058B73F    cmp         eax,dword ptr [edx+34];TImageList.FWidth:Integer
>0058B742    je          0058B78F
 0058B744    mov         eax,dword ptr [ebp-8]
 0058B747    mov         edx,dword ptr [ebp-4]
 0058B74A    mov         dword ptr [edx+34],eax;TImageList.FWidth:Integer
 0058B74D    mov         eax,dword ptr [ebp-4]
 0058B750    call        0058B5D4
 0058B755    test        al,al
>0058B757    je          0058B773
 0058B759    mov         eax,dword ptr [ebp-4]
 0058B75C    mov         eax,dword ptr [eax+30];TImageList.FHeight:Integer
 0058B75F    push        eax
 0058B760    mov         eax,dword ptr [ebp-4]
 0058B763    mov         eax,dword ptr [eax+34];TImageList.FWidth:Integer
 0058B766    push        eax
 0058B767    mov         eax,dword ptr [ebp-4]
 0058B76A    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 0058B76D    push        eax
 0058B76E    call        COMCTL32.ImageList_SetIconSize
 0058B773    mov         eax,dword ptr [ebp-4]
 0058B776    call        0058BEF4
 0058B77B    mov         eax,dword ptr [ebp-4]
 0058B77E    call        0058B60C
 0058B783    mov         eax,dword ptr [ebp-4]
 0058B786    mov         si,0FFEF
 0058B78A    call        @CallDynaInst;TCustomImageList.sub_0058C6F8
 0058B78F    pop         esi
 0058B790    pop         ecx
 0058B791    pop         ecx
 0058B792    pop         ebp
 0058B793    ret
*}
end;

//0058B794
procedure TImageList.SetHeight(Value:Integer);
begin
{*
 0058B794    push        ebp
 0058B795    mov         ebp,esp
 0058B797    add         esp,0FFFFFFF8
 0058B79A    push        esi
 0058B79B    mov         dword ptr [ebp-8],edx
 0058B79E    mov         dword ptr [ebp-4],eax
 0058B7A1    mov         eax,dword ptr [ebp-8]
 0058B7A4    mov         edx,dword ptr [ebp-4]
 0058B7A7    cmp         eax,dword ptr [edx+30];TImageList.FHeight:Integer
>0058B7AA    je          0058B7F7
 0058B7AC    mov         eax,dword ptr [ebp-8]
 0058B7AF    mov         edx,dword ptr [ebp-4]
 0058B7B2    mov         dword ptr [edx+30],eax;TImageList.FHeight:Integer
 0058B7B5    mov         eax,dword ptr [ebp-4]
 0058B7B8    call        0058B5D4
 0058B7BD    test        al,al
>0058B7BF    je          0058B7DB
 0058B7C1    mov         eax,dword ptr [ebp-4]
 0058B7C4    mov         eax,dword ptr [eax+30];TImageList.FHeight:Integer
 0058B7C7    push        eax
 0058B7C8    mov         eax,dword ptr [ebp-4]
 0058B7CB    mov         eax,dword ptr [eax+34];TImageList.FWidth:Integer
 0058B7CE    push        eax
 0058B7CF    mov         eax,dword ptr [ebp-4]
 0058B7D2    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 0058B7D5    push        eax
 0058B7D6    call        COMCTL32.ImageList_SetIconSize
 0058B7DB    mov         eax,dword ptr [ebp-4]
 0058B7DE    call        0058BEF4
 0058B7E3    mov         eax,dword ptr [ebp-4]
 0058B7E6    call        0058B60C
 0058B7EB    mov         eax,dword ptr [ebp-4]
 0058B7EE    mov         si,0FFEF
 0058B7F2    call        @CallDynaInst;TCustomImageList.sub_0058C6F8
 0058B7F7    pop         esi
 0058B7F8    pop         ecx
 0058B7F9    pop         ecx
 0058B7FA    pop         ebp
 0058B7FB    ret
*}
end;

//0058B7FC
{*procedure sub_0058B7FC(?:TDragImageList; ?:?);
begin
 0058B7FC    push        ebp
 0058B7FD    mov         ebp,esp
 0058B7FF    add         esp,0FFFFFFF8
 0058B802    push        esi
 0058B803    mov         dword ptr [ebp-8],edx
 0058B806    mov         dword ptr [ebp-4],eax
 0058B809    mov         eax,dword ptr [ebp-4]
 0058B80C    call        0058B900
 0058B811    cmp         dword ptr [ebp-8],0
>0058B815    je          0058B837
 0058B817    mov         edx,dword ptr [ebp-8]
 0058B81A    mov         eax,dword ptr [ebp-4]
 0058B81D    call        0058B6DC
 0058B822    mov         eax,dword ptr [ebp-8]
 0058B825    mov         edx,dword ptr [ebp-4]
 0058B828    mov         dword ptr [edx+3C],eax
 0058B82B    mov         eax,dword ptr [ebp-4]
 0058B82E    mov         si,0FFEF
 0058B832    call        @CallDynaInst
 0058B837    pop         esi
 0058B838    pop         ecx
 0058B839    pop         ecx
 0058B83A    pop         ebp
 0058B83B    ret
end;*}

//0058B83C
{*function sub_0058B83C(?:TImageList; ?:?):?;
begin
 0058B83C    push        ebp
 0058B83D    mov         ebp,esp
 0058B83F    add         esp,0FFFFFFF4
 0058B842    mov         dword ptr [ebp-8],edx
 0058B845    mov         dword ptr [ebp-4],eax
 0058B848    cmp         dword ptr [ebp-8],0
>0058B84C    je          0058B856
 0058B84E    mov         eax,dword ptr [ebp-8]
 0058B851    mov         dword ptr [ebp-0C],eax
>0058B854    jmp         0058B864
 0058B856    mov         eax,dword ptr [ebp-4]
 0058B859    mov         eax,dword ptr [eax+50]
 0058B85C    mov         edx,dword ptr [eax]
 0058B85E    call        dword ptr [edx+64]
 0058B861    mov         dword ptr [ebp-0C],eax
 0058B864    mov         eax,dword ptr [ebp-0C]
 0058B867    mov         esp,ebp
 0058B869    pop         ebp
 0058B86A    ret
end;*}

//0058B86C
{*function sub_0058B86C(?:TPersistent):?;
begin
 0058B86C    push        ebp
 0058B86D    mov         ebp,esp
 0058B86F    add         esp,0FFFFFFF8
 0058B872    mov         dword ptr [ebp-4],eax
 0058B875    mov         eax,dword ptr [ebp-4]
 0058B878    call        0058B5F0
 0058B87D    mov         eax,dword ptr [ebp-4]
 0058B880    mov         eax,dword ptr [eax+3C]
 0058B883    mov         dword ptr [ebp-8],eax
 0058B886    mov         eax,dword ptr [ebp-8]
 0058B889    pop         ecx
 0058B88A    pop         ecx
 0058B88B    pop         ebp
 0058B88C    ret
end;*}

//0058B890
{*function sub_0058B890(?:TImageList; ?:TBitmap; ?:TBitmap):?;
begin
 0058B890    push        ebp
 0058B891    mov         ebp,esp
 0058B893    add         esp,0FFFFFFF0
 0058B896    mov         dword ptr [ebp-0C],ecx
 0058B899    mov         dword ptr [ebp-8],edx
 0058B89C    mov         dword ptr [ebp-4],eax
 0058B89F    mov         edx,dword ptr [ebp-8]
 0058B8A2    mov         eax,dword ptr [ebp-4]
 0058B8A5    call        0058C620
 0058B8AA    cmp         dword ptr [ebp-8],0
>0058B8AE    je          0058B8EB
 0058B8B0    mov         eax,dword ptr [ebp-8]
 0058B8B3    call        005C71B0
 0058B8B8    cmp         al,1
>0058B8BA    jne         0058B8C9
 0058B8BC    mov         eax,dword ptr [ebp-8]
 0058B8BF    mov         edx,dword ptr [eax]
 0058B8C1    call        dword ptr [edx+64]
 0058B8C4    mov         dword ptr [ebp-10],eax
>0058B8C7    jmp         0058B8F9
 0058B8C9    mov         edx,dword ptr [ebp-8]
 0058B8CC    mov         eax,dword ptr [ebp-0C]
 0058B8CF    mov         ecx,dword ptr [eax]
 0058B8D1    call        dword ptr [ecx+8]
 0058B8D4    mov         dl,1
 0058B8D6    mov         eax,dword ptr [ebp-0C]
 0058B8D9    mov         ecx,dword ptr [eax]
 0058B8DB    call        dword ptr [ecx+6C]
 0058B8DE    mov         eax,dword ptr [ebp-0C]
 0058B8E1    mov         edx,dword ptr [eax]
 0058B8E3    call        dword ptr [edx+64]
 0058B8E6    mov         dword ptr [ebp-10],eax
>0058B8E9    jmp         0058B8F9
 0058B8EB    mov         eax,dword ptr [ebp-4]
 0058B8EE    mov         eax,dword ptr [eax+50]
 0058B8F1    mov         edx,dword ptr [eax]
 0058B8F3    call        dword ptr [edx+64]
 0058B8F6    mov         dword ptr [ebp-10],eax
 0058B8F9    mov         eax,dword ptr [ebp-10]
 0058B8FC    mov         esp,ebp
 0058B8FE    pop         ebp
 0058B8FF    ret
end;*}

//0058B900
procedure sub_0058B900(?:TCustomImageList);
begin
{*
 0058B900    push        ebp
 0058B901    mov         ebp,esp
 0058B903    push        ecx
 0058B904    push        esi
 0058B905    mov         dword ptr [ebp-4],eax
 0058B908    mov         eax,dword ptr [ebp-4]
 0058B90B    call        0058B5D4
 0058B910    test        al,al
>0058B912    je          0058B92B
 0058B914    mov         eax,dword ptr [ebp-4]
 0058B917    cmp         byte ptr [eax+42],0;TCustomImageList.FShareImages:Boolean
>0058B91B    jne         0058B92B
 0058B91D    mov         eax,dword ptr [ebp-4]
 0058B920    call        0058B86C
 0058B925    push        eax
 0058B926    call        COMCTL32.ImageList_Destroy
 0058B92B    mov         eax,dword ptr [ebp-4]
 0058B92E    xor         edx,edx
 0058B930    mov         dword ptr [eax+3C],edx;TCustomImageList.FHandle:HIMAGELIST
 0058B933    mov         eax,dword ptr [ebp-4]
 0058B936    mov         si,0FFEF
 0058B93A    call        @CallDynaInst;TCustomImageList.sub_0058C6F8
 0058B93F    pop         esi
 0058B940    pop         ecx
 0058B941    pop         ebp
 0058B942    ret
*}
end;

//0058B944
{*procedure sub_0058B944(?:?);
begin
 0058B944    push        ebp
 0058B945    mov         ebp,esp
 0058B947    add         esp,0FFFFFFF8
 0058B94A    xor         edx,edx
 0058B94C    mov         dword ptr [ebp-8],edx
 0058B94F    mov         dword ptr [ebp-4],eax
 0058B952    xor         eax,eax
 0058B954    push        ebp
 0058B955    push        58B9F8
 0058B95A    push        dword ptr fs:[eax]
 0058B95D    mov         dword ptr fs:[eax],esp
 0058B960    mov         eax,dword ptr [ebp-4]
 0058B963    mov         eax,dword ptr [eax+38]
 0058B966    push        eax
 0058B967    mov         eax,dword ptr [ebp-4]
 0058B96A    mov         eax,dword ptr [eax+38]
 0058B96D    push        eax
 0058B96E    mov         eax,dword ptr [ebp-4]
 0058B971    movzx       eax,byte ptr [eax+41]
 0058B975    mov         eax,dword ptr [eax*4+6E3A1C]
 0058B97C    or          eax,0FE
 0058B981    push        eax
 0058B982    mov         eax,dword ptr [ebp-4]
 0058B985    mov         eax,dword ptr [eax+30]
 0058B988    push        eax
 0058B989    mov         eax,dword ptr [ebp-4]
 0058B98C    mov         eax,dword ptr [eax+34]
 0058B98F    push        eax
 0058B990    call        COMCTL32.ImageList_Create
 0058B995    mov         edx,dword ptr [ebp-4]
 0058B998    mov         dword ptr [edx+3C],eax
 0058B99B    mov         eax,dword ptr [ebp-4]
 0058B99E    call        0058B5D4
 0058B9A3    test        al,al
>0058B9A5    jne         0058B9C8
 0058B9A7    lea         edx,[ebp-8]
 0058B9AA    mov         eax,[006E9E18];^gvar_0063CA40
 0058B9AF    call        LoadResString
 0058B9B4    mov         ecx,dword ptr [ebp-8]
 0058B9B7    mov         dl,1
 0058B9B9    mov         eax,[00642244];EInvalidOperation
 0058B9BE    call        Exception.Create;EInvalidOperation.Create
 0058B9C3    call        @RaiseExcept
 0058B9C8    mov         eax,dword ptr [ebp-4]
 0058B9CB    cmp         dword ptr [eax+44],1FFFFFFF
>0058B9D2    je          0058B9E2
 0058B9D4    mov         eax,dword ptr [ebp-4]
 0058B9D7    mov         edx,dword ptr [eax+44]
 0058B9DA    mov         eax,dword ptr [ebp-4]
 0058B9DD    call        TImageList.SetBkColor
 0058B9E2    xor         eax,eax
 0058B9E4    pop         edx
 0058B9E5    pop         ecx
 0058B9E6    pop         ecx
 0058B9E7    mov         dword ptr fs:[eax],edx
 0058B9EA    push        58B9FF
 0058B9EF    lea         eax,[ebp-8]
 0058B9F2    call        @LStrClr
 0058B9F7    ret
>0058B9F8    jmp         @HandleFinally
>0058B9FD    jmp         0058B9EF
 0058B9FF    pop         ecx
 0058BA00    pop         ecx
 0058BA01    pop         ebp
 0058BA02    ret
end;*}

//0058BA04
{*function sub_0058BA04(?:?; ?:TBitmap; ?:TBitmap):?;
begin
 0058BA04    push        ebp
 0058BA05    mov         ebp,esp
 0058BA07    add         esp,0FFFFFFE8
 0058BA0A    push        esi
 0058BA0B    mov         dword ptr [ebp-0C],ecx
 0058BA0E    mov         dword ptr [ebp-8],edx
 0058BA11    mov         dword ptr [ebp-4],eax
 0058BA14    mov         dl,1
 0058BA16    mov         eax,[005BEDD4];TBitmap
 0058BA1B    call        TBitmap.Create;TBitmap.Create
 0058BA20    mov         dword ptr [ebp-14],eax
 0058BA23    xor         eax,eax
 0058BA25    push        ebp
 0058BA26    push        58BAB6
 0058BA2B    push        dword ptr fs:[eax]
 0058BA2E    mov         dword ptr fs:[eax],esp
 0058BA31    mov         dl,1
 0058BA33    mov         eax,[005BEDD4];TBitmap
 0058BA38    call        TBitmap.Create;TBitmap.Create
 0058BA3D    mov         dword ptr [ebp-18],eax
 0058BA40    xor         eax,eax
 0058BA42    push        ebp
 0058BA43    push        58BA99
 0058BA48    push        dword ptr fs:[eax]
 0058BA4B    mov         dword ptr fs:[eax],esp
 0058BA4E    mov         eax,dword ptr [ebp-4]
 0058BA51    call        0058B5F0
 0058BA56    mov         ecx,dword ptr [ebp-18]
 0058BA59    mov         edx,dword ptr [ebp-0C]
 0058BA5C    mov         eax,dword ptr [ebp-4]
 0058BA5F    call        0058B890
 0058BA64    push        eax
 0058BA65    mov         ecx,dword ptr [ebp-14]
 0058BA68    mov         edx,dword ptr [ebp-8]
 0058BA6B    mov         eax,dword ptr [ebp-4]
 0058BA6E    call        0058B890
 0058BA73    push        eax
 0058BA74    mov         eax,dword ptr [ebp-4]
 0058BA77    mov         eax,dword ptr [eax+3C]
 0058BA7A    push        eax
 0058BA7B    call        COMCTL32.ImageList_Add
 0058BA80    mov         dword ptr [ebp-10],eax
 0058BA83    xor         eax,eax
 0058BA85    pop         edx
 0058BA86    pop         ecx
 0058BA87    pop         ecx
 0058BA88    mov         dword ptr fs:[eax],edx
 0058BA8B    push        58BAA0
 0058BA90    mov         eax,dword ptr [ebp-18]
 0058BA93    call        TObject.Free
 0058BA98    ret
>0058BA99    jmp         @HandleFinally
>0058BA9E    jmp         0058BA90
 0058BAA0    xor         eax,eax
 0058BAA2    pop         edx
 0058BAA3    pop         ecx
 0058BAA4    pop         ecx
 0058BAA5    mov         dword ptr fs:[eax],edx
 0058BAA8    push        58BABD
 0058BAAD    mov         eax,dword ptr [ebp-14]
 0058BAB0    call        TObject.Free
 0058BAB5    ret
>0058BAB6    jmp         @HandleFinally
>0058BABB    jmp         0058BAAD
 0058BABD    mov         eax,dword ptr [ebp-4]
 0058BAC0    mov         si,0FFEF
 0058BAC4    call        @CallDynaInst
 0058BAC9    mov         eax,dword ptr [ebp-10]
 0058BACC    pop         esi
 0058BACD    mov         esp,ebp
 0058BACF    pop         ebp
 0058BAD0    ret
end;*}

//0058BAD4
{*function sub_0058BAD4(?:TImageList; ?:TBitmap; ?:?):?;
begin
 0058BAD4    push        ebp
 0058BAD5    mov         ebp,esp
 0058BAD7    add         esp,0FFFFFFE8
 0058BADA    push        esi
 0058BADB    mov         dword ptr [ebp-0C],ecx
 0058BADE    mov         dword ptr [ebp-8],edx
 0058BAE1    mov         dword ptr [ebp-4],eax
 0058BAE4    mov         dl,1
 0058BAE6    mov         eax,[005BEDD4];TBitmap
 0058BAEB    call        TBitmap.Create;TBitmap.Create
 0058BAF0    mov         dword ptr [ebp-14],eax
 0058BAF3    xor         eax,eax
 0058BAF5    push        ebp
 0058BAF6    push        58BBD9
 0058BAFB    push        dword ptr fs:[eax]
 0058BAFE    mov         dword ptr fs:[eax],esp
 0058BB01    mov         eax,dword ptr [ebp-4]
 0058BB04    cmp         byte ptr [eax+41],0;TImageList.FMasked:Boolean
>0058BB08    je          0058BBA1
 0058BB0E    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0058BB12    je          0058BBA1
 0058BB18    mov         dl,1
 0058BB1A    mov         eax,[005BEDD4];TBitmap
 0058BB1F    call        TBitmap.Create;TBitmap.Create
 0058BB24    mov         dword ptr [ebp-18],eax
 0058BB27    xor         eax,eax
 0058BB29    push        ebp
 0058BB2A    push        58BB9A
 0058BB2F    push        dword ptr fs:[eax]
 0058BB32    mov         dword ptr fs:[eax],esp
 0058BB35    mov         edx,dword ptr [ebp-8]
 0058BB38    mov         eax,dword ptr [ebp-18]
 0058BB3B    mov         ecx,dword ptr [eax]
 0058BB3D    call        dword ptr [ecx+8];TBitmap.Assign
 0058BB40    mov         edx,dword ptr [ebp-0C]
 0058BB43    mov         eax,dword ptr [ebp-18]
 0058BB46    call        005C87FC
 0058BB4B    mov         eax,dword ptr [ebp-4]
 0058BB4E    call        0058B5F0
 0058BB53    mov         eax,dword ptr [ebp-18]
 0058BB56    mov         edx,dword ptr [eax]
 0058BB58    call        dword ptr [edx+68];TBitmap.sub_005C722C
 0058BB5B    mov         edx,eax
 0058BB5D    mov         eax,dword ptr [ebp-4]
 0058BB60    call        0058B83C
 0058BB65    push        eax
 0058BB66    mov         ecx,dword ptr [ebp-14]
 0058BB69    mov         edx,dword ptr [ebp-8]
 0058BB6C    mov         eax,dword ptr [ebp-4]
 0058BB6F    call        0058B890
 0058BB74    push        eax
 0058BB75    mov         eax,dword ptr [ebp-4]
 0058BB78    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 0058BB7B    push        eax
 0058BB7C    call        COMCTL32.ImageList_Add
 0058BB81    mov         dword ptr [ebp-10],eax
 0058BB84    xor         eax,eax
 0058BB86    pop         edx
 0058BB87    pop         ecx
 0058BB88    pop         ecx
 0058BB89    mov         dword ptr fs:[eax],edx
 0058BB8C    push        58BBC3
 0058BB91    mov         eax,dword ptr [ebp-18]
 0058BB94    call        TObject.Free
 0058BB99    ret
>0058BB9A    jmp         @HandleFinally
>0058BB9F    jmp         0058BB91
 0058BBA1    push        0
 0058BBA3    mov         ecx,dword ptr [ebp-14]
 0058BBA6    mov         edx,dword ptr [ebp-8]
 0058BBA9    mov         eax,dword ptr [ebp-4]
 0058BBAC    call        0058B890
 0058BBB1    push        eax
 0058BBB2    mov         eax,dword ptr [ebp-4]
 0058BBB5    call        0058B86C
 0058BBBA    push        eax
 0058BBBB    call        COMCTL32.ImageList_Add
 0058BBC0    mov         dword ptr [ebp-10],eax
 0058BBC3    xor         eax,eax
 0058BBC5    pop         edx
 0058BBC6    pop         ecx
 0058BBC7    pop         ecx
 0058BBC8    mov         dword ptr fs:[eax],edx
 0058BBCB    push        58BBE0
 0058BBD0    mov         eax,dword ptr [ebp-14]
 0058BBD3    call        TObject.Free
 0058BBD8    ret
>0058BBD9    jmp         @HandleFinally
>0058BBDE    jmp         0058BBD0
 0058BBE0    mov         eax,dword ptr [ebp-4]
 0058BBE3    mov         si,0FFEF
 0058BBE7    call        @CallDynaInst;TCustomImageList.sub_0058C6F8
 0058BBEC    mov         eax,dword ptr [ebp-10]
 0058BBEF    pop         esi
 0058BBF0    mov         esp,ebp
 0058BBF2    pop         ebp
 0058BBF3    ret
end;*}

//0058BBF4
{*function sub_0058BBF4(?:TDragImageList):?;
begin
 0058BBF4    push        ebp
 0058BBF5    mov         ebp,esp
 0058BBF7    add         esp,0FFFFFFF8
 0058BBFA    mov         dword ptr [ebp-4],eax
 0058BBFD    mov         eax,dword ptr [ebp-4]
 0058BC00    call        0058B5D4
 0058BC05    test        al,al
>0058BC07    je          0058BC1C
 0058BC09    mov         eax,dword ptr [ebp-4]
 0058BC0C    call        0058B86C
 0058BC11    push        eax
 0058BC12    call        COMCTL32.ImageList_GetImageCount
 0058BC17    mov         dword ptr [ebp-8],eax
>0058BC1A    jmp         0058BC21
 0058BC1C    xor         eax,eax
 0058BC1E    mov         dword ptr [ebp-8],eax
 0058BC21    mov         eax,dword ptr [ebp-8]
 0058BC24    pop         ecx
 0058BC25    pop         ecx
 0058BC26    pop         ebp
 0058BC27    ret
end;*}

//0058BC28
{*procedure sub_0058BC28(?:?; ?:?; ?:?; ?:?);
begin
 0058BC28    push        ebp
 0058BC29    mov         ebp,esp
 0058BC2B    add         esp,0FFFFFFE0
 0058BC2E    push        ebx
 0058BC2F    push        esi
 0058BC30    xor         ebx,ebx
 0058BC32    mov         dword ptr [ebp-20],ebx
 0058BC35    mov         dword ptr [ebp-1C],ebx
 0058BC38    mov         dword ptr [ebp-0C],ecx
 0058BC3B    mov         dword ptr [ebp-8],edx
 0058BC3E    mov         dword ptr [ebp-4],eax
 0058BC41    xor         eax,eax
 0058BC43    push        ebp
 0058BC44    push        58BE46
 0058BC49    push        dword ptr fs:[eax]
 0058BC4C    mov         dword ptr fs:[eax],esp
 0058BC4F    mov         eax,dword ptr [ebp-4]
 0058BC52    call        0058B5D4
 0058BC57    test        al,al
>0058BC59    je          0058BE1F
 0058BC5F    mov         edx,dword ptr [ebp-0C]
 0058BC62    mov         eax,dword ptr [ebp-4]
 0058BC65    call        0058C620
 0058BC6A    mov         ecx,dword ptr [ebp+8]
 0058BC6D    mov         edx,dword ptr [ebp-0C]
 0058BC70    mov         eax,dword ptr [ebp-4]
 0058BC73    call        0058BAD4
 0058BC78    mov         dword ptr [ebp-10],eax
 0058BC7B    cmp         dword ptr [ebp-10],0FFFFFFFF
>0058BC7F    je          0058BDFE
 0058BC85    xor         eax,eax
 0058BC87    push        ebp
 0058BC88    push        58BDF7
 0058BC8D    push        dword ptr fs:[eax]
 0058BC90    mov         dword ptr fs:[eax],esp
 0058BC93    mov         dl,1
 0058BC95    mov         eax,[005BEDD4];TBitmap
 0058BC9A    call        TBitmap.Create;TBitmap.Create
 0058BC9F    mov         dword ptr [ebp-14],eax
 0058BCA2    xor         eax,eax
 0058BCA4    push        ebp
 0058BCA5    push        58BDD7
 0058BCAA    push        dword ptr fs:[eax]
 0058BCAD    mov         dword ptr fs:[eax],esp
 0058BCB0    mov         eax,dword ptr [ebp-4]
 0058BCB3    mov         edx,dword ptr [eax+30]
 0058BCB6    mov         eax,dword ptr [ebp-14]
 0058BCB9    mov         ecx,dword ptr [eax]
 0058BCBB    call        dword ptr [ecx+34];TBitmap.SetHeight
 0058BCBE    mov         eax,dword ptr [ebp-4]
 0058BCC1    mov         edx,dword ptr [eax+34]
 0058BCC4    mov         eax,dword ptr [ebp-14]
 0058BCC7    mov         ecx,dword ptr [eax]
 0058BCC9    call        dword ptr [ecx+40];TBitmap.SetWidth
 0058BCCC    mov         dl,1
 0058BCCE    mov         eax,[005BEDD4];TBitmap
 0058BCD3    call        TBitmap.Create;TBitmap.Create
 0058BCD8    mov         dword ptr [ebp-18],eax
 0058BCDB    xor         eax,eax
 0058BCDD    push        ebp
 0058BCDE    push        58BDBA
 0058BCE3    push        dword ptr fs:[eax]
 0058BCE6    mov         dword ptr fs:[eax],esp
 0058BCE9    mov         dl,1
 0058BCEB    mov         eax,dword ptr [ebp-18]
 0058BCEE    call        TBitmap.SetMonochrome
 0058BCF3    mov         eax,dword ptr [ebp-4]
 0058BCF6    mov         edx,dword ptr [eax+30]
 0058BCF9    mov         eax,dword ptr [ebp-18]
 0058BCFC    mov         ecx,dword ptr [eax]
 0058BCFE    call        dword ptr [ecx+34];TBitmap.SetHeight
 0058BD01    mov         eax,dword ptr [ebp-4]
 0058BD04    mov         edx,dword ptr [eax+34]
 0058BD07    mov         eax,dword ptr [ebp-18]
 0058BD0A    mov         ecx,dword ptr [eax]
 0058BD0C    call        dword ptr [ecx+40];TBitmap.SetWidth
 0058BD0F    push        0
 0058BD11    push        0
 0058BD13    push        0
 0058BD15    mov         eax,dword ptr [ebp-14]
 0058BD18    call        TBitmap.GetCanvas
 0058BD1D    call        TCanvas.GetHandle
 0058BD22    push        eax
 0058BD23    mov         eax,dword ptr [ebp-10]
 0058BD26    push        eax
 0058BD27    mov         eax,dword ptr [ebp-4]
 0058BD2A    call        0058B86C
 0058BD2F    push        eax
 0058BD30    call        COMCTL32.ImageList_Draw
 0058BD35    push        10
 0058BD37    push        0
 0058BD39    push        0
 0058BD3B    mov         eax,dword ptr [ebp-18]
 0058BD3E    call        TBitmap.GetCanvas
 0058BD43    call        TCanvas.GetHandle
 0058BD48    push        eax
 0058BD49    mov         eax,dword ptr [ebp-10]
 0058BD4C    push        eax
 0058BD4D    mov         eax,dword ptr [ebp-4]
 0058BD50    call        0058B86C
 0058BD55    push        eax
 0058BD56    call        COMCTL32.ImageList_Draw
 0058BD5B    mov         eax,dword ptr [ebp-18]
 0058BD5E    mov         edx,dword ptr [eax]
 0058BD60    call        dword ptr [edx+64];TBitmap.sub_005C7178
 0058BD63    push        eax
 0058BD64    mov         eax,dword ptr [ebp-14]
 0058BD67    mov         edx,dword ptr [eax]
 0058BD69    call        dword ptr [edx+64];TBitmap.sub_005C7178
 0058BD6C    push        eax
 0058BD6D    mov         eax,dword ptr [ebp-8]
 0058BD70    push        eax
 0058BD71    mov         eax,dword ptr [ebp-4]
 0058BD74    call        0058B86C
 0058BD79    push        eax
 0058BD7A    call        COMCTL32.ImageList_Replace
 0058BD7F    test        eax,eax
>0058BD81    jne         0058BDA4
 0058BD83    lea         edx,[ebp-1C]
 0058BD86    mov         eax,[006E9E1C];^gvar_0063CA48
 0058BD8B    call        LoadResString
 0058BD90    mov         ecx,dword ptr [ebp-1C]
 0058BD93    mov         dl,1
 0058BD95    mov         eax,[00642244];EInvalidOperation
 0058BD9A    call        Exception.Create;EInvalidOperation.Create
 0058BD9F    call        @RaiseExcept
 0058BDA4    xor         eax,eax
 0058BDA6    pop         edx
 0058BDA7    pop         ecx
 0058BDA8    pop         ecx
 0058BDA9    mov         dword ptr fs:[eax],edx
 0058BDAC    push        58BDC1
 0058BDB1    mov         eax,dword ptr [ebp-18]
 0058BDB4    call        TObject.Free
 0058BDB9    ret
>0058BDBA    jmp         @HandleFinally
>0058BDBF    jmp         0058BDB1
 0058BDC1    xor         eax,eax
 0058BDC3    pop         edx
 0058BDC4    pop         ecx
 0058BDC5    pop         ecx
 0058BDC6    mov         dword ptr fs:[eax],edx
 0058BDC9    push        58BDDE
 0058BDCE    mov         eax,dword ptr [ebp-14]
 0058BDD1    call        TObject.Free
 0058BDD6    ret
>0058BDD7    jmp         @HandleFinally
>0058BDDC    jmp         0058BDCE
 0058BDDE    xor         eax,eax
 0058BDE0    pop         edx
 0058BDE1    pop         ecx
 0058BDE2    pop         ecx
 0058BDE3    mov         dword ptr fs:[eax],edx
 0058BDE6    push        58BE1F
 0058BDEB    mov         edx,dword ptr [ebp-10]
 0058BDEE    mov         eax,dword ptr [ebp-4]
 0058BDF1    call        0058BE58
 0058BDF6    ret
>0058BDF7    jmp         @HandleFinally
>0058BDFC    jmp         0058BDEB
 0058BDFE    lea         edx,[ebp-20]
 0058BE01    mov         eax,[006E9E1C];^gvar_0063CA48
 0058BE06    call        LoadResString
 0058BE0B    mov         ecx,dword ptr [ebp-20]
 0058BE0E    mov         dl,1
 0058BE10    mov         eax,[00642244];EInvalidOperation
 0058BE15    call        Exception.Create;EInvalidOperation.Create
 0058BE1A    call        @RaiseExcept
 0058BE1F    mov         eax,dword ptr [ebp-4]
 0058BE22    mov         si,0FFEF
 0058BE26    call        @CallDynaInst
 0058BE2B    xor         eax,eax
 0058BE2D    pop         edx
 0058BE2E    pop         ecx
 0058BE2F    pop         ecx
 0058BE30    mov         dword ptr fs:[eax],edx
 0058BE33    push        58BE4D
 0058BE38    lea         eax,[ebp-20]
 0058BE3B    mov         edx,2
 0058BE40    call        @LStrArrayClr
 0058BE45    ret
>0058BE46    jmp         @HandleFinally
>0058BE4B    jmp         0058BE38
 0058BE4D    pop         esi
 0058BE4E    pop         ebx
 0058BE4F    mov         esp,ebp
 0058BE51    pop         ebp
 0058BE52    ret         4
end;*}

//0058BE58
{*procedure sub_0058BE58(?:TImageList; ?:?);
begin
 0058BE58    push        ebp
 0058BE59    mov         ebp,esp
 0058BE5B    add         esp,0FFFFFFF4
 0058BE5E    push        esi
 0058BE5F    xor         ecx,ecx
 0058BE61    mov         dword ptr [ebp-0C],ecx
 0058BE64    mov         dword ptr [ebp-8],edx
 0058BE67    mov         dword ptr [ebp-4],eax
 0058BE6A    xor         eax,eax
 0058BE6C    push        ebp
 0058BE6D    push        58BEE6
 0058BE72    push        dword ptr fs:[eax]
 0058BE75    mov         dword ptr fs:[eax],esp
 0058BE78    mov         eax,dword ptr [ebp-4]
 0058BE7B    call        0058BBF4
 0058BE80    cmp         eax,dword ptr [ebp-8]
>0058BE83    jg          0058BEA6
 0058BE85    lea         edx,[ebp-0C]
 0058BE88    mov         eax,[006E9E20];^gvar_0063CA50
 0058BE8D    call        LoadResString
 0058BE92    mov         ecx,dword ptr [ebp-0C]
 0058BE95    mov         dl,1
 0058BE97    mov         eax,[00642244];EInvalidOperation
 0058BE9C    call        Exception.Create;EInvalidOperation.Create
 0058BEA1    call        @RaiseExcept
 0058BEA6    mov         eax,dword ptr [ebp-4]
 0058BEA9    call        0058B5D4
 0058BEAE    test        al,al
>0058BEB0    je          0058BEC4
 0058BEB2    mov         eax,dword ptr [ebp-8]
 0058BEB5    push        eax
 0058BEB6    mov         eax,dword ptr [ebp-4]
 0058BEB9    call        0058B86C
 0058BEBE    push        eax
 0058BEBF    call        COMCTL32.ImageList_Remove
 0058BEC4    mov         eax,dword ptr [ebp-4]
 0058BEC7    mov         si,0FFEF
 0058BECB    call        @CallDynaInst
 0058BED0    xor         eax,eax
 0058BED2    pop         edx
 0058BED3    pop         ecx
 0058BED4    pop         ecx
 0058BED5    mov         dword ptr fs:[eax],edx
 0058BED8    push        58BEED
 0058BEDD    lea         eax,[ebp-0C]
 0058BEE0    call        @LStrClr
 0058BEE5    ret
>0058BEE6    jmp         @HandleFinally
>0058BEEB    jmp         0058BEDD
 0058BEED    pop         esi
 0058BEEE    mov         esp,ebp
 0058BEF0    pop         ebp
 0058BEF1    ret
end;*}

//0058BEF4
procedure sub_0058BEF4(?:TPersistent; ?:TPersistent);
begin
{*
 0058BEF4    push        ebp
 0058BEF5    mov         ebp,esp
 0058BEF7    push        ecx
 0058BEF8    mov         dword ptr [ebp-4],eax
 0058BEFB    or          edx,0FFFFFFFF
 0058BEFE    mov         eax,dword ptr [ebp-4]
 0058BF01    call        0058BE58
 0058BF06    pop         ecx
 0058BF07    pop         ebp
 0058BF08    ret
*}
end;

//0058BF0C
procedure TImageList.SetBkColor(Value:TColor);
begin
{*
 0058BF0C    push        ebp
 0058BF0D    mov         ebp,esp
 0058BF0F    add         esp,0FFFFFFF8
 0058BF12    push        esi
 0058BF13    mov         dword ptr [ebp-8],edx
 0058BF16    mov         dword ptr [ebp-4],eax
 0058BF19    mov         eax,dword ptr [ebp-4]
 0058BF1C    call        0058B5D4
 0058BF21    test        al,al
>0058BF23    je          0058BF3C
 0058BF25    mov         eax,dword ptr [ebp-8]
 0058BF28    call        0058B324
 0058BF2D    push        eax
 0058BF2E    mov         eax,dword ptr [ebp-4]
 0058BF31    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 0058BF34    push        eax
 0058BF35    call        COMCTL32.ImageList_SetBkColor
>0058BF3A    jmp         0058BF45
 0058BF3C    mov         eax,dword ptr [ebp-8]
 0058BF3F    mov         edx,dword ptr [ebp-4]
 0058BF42    mov         dword ptr [edx+44],eax;TImageList.FBkColor:TColor
 0058BF45    mov         eax,dword ptr [ebp-4]
 0058BF48    mov         si,0FFEF
 0058BF4C    call        @CallDynaInst;TCustomImageList.sub_0058C6F8
 0058BF51    pop         esi
 0058BF52    pop         ecx
 0058BF53    pop         ecx
 0058BF54    pop         ebp
 0058BF55    ret
*}
end;

//0058BF58
{*function TImageList.GetBkColor:?;
begin
 0058BF58    push        ebp
 0058BF59    mov         ebp,esp
 0058BF5B    add         esp,0FFFFFFF8
 0058BF5E    mov         dword ptr [ebp-4],eax
 0058BF61    mov         eax,dword ptr [ebp-4]
 0058BF64    call        0058B5D4
 0058BF69    test        al,al
>0058BF6B    je          0058BF85
 0058BF6D    mov         eax,dword ptr [ebp-4]
 0058BF70    call        0058B86C
 0058BF75    push        eax
 0058BF76    call        COMCTL32.ImageList_GetBkColor
 0058BF7B    call        0058B360
 0058BF80    mov         dword ptr [ebp-8],eax
>0058BF83    jmp         0058BF8E
 0058BF85    mov         eax,dword ptr [ebp-4]
 0058BF88    mov         eax,dword ptr [eax+44];TImageList.FBkColor:TColor
 0058BF8B    mov         dword ptr [ebp-8],eax
 0058BF8E    mov         eax,dword ptr [ebp-8]
 0058BF91    pop         ecx
 0058BF92    pop         ecx
 0058BF93    pop         ebp
 0058BF94    ret
end;*}

//0058BF98
{*procedure sub_0058BF98(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0058BF98    push        ebp
 0058BF99    mov         ebp,esp
 0058BF9B    add         esp,0FFFFFFC8
 0058BF9E    mov         dword ptr [ebp-0C],ecx
 0058BFA1    mov         dword ptr [ebp-8],edx
 0058BFA4    mov         dword ptr [ebp-4],eax
 0058BFA7    mov         eax,dword ptr [ebp-4]
 0058BFAA    call        0058B5D4
 0058BFAF    test        al,al
>0058BFB1    je          0058C1C0
 0058BFB7    cmp         byte ptr [ebp+8],0
>0058BFBB    je          0058C007
 0058BFBD    mov         eax,dword ptr [ebp+0C]
 0058BFC0    push        eax
 0058BFC1    mov         eax,dword ptr [ebp-4]
 0058BFC4    mov         eax,dword ptr [eax+48];TCustomImageList.FBlendColor:TColor
 0058BFC7    call        0058B324
 0058BFCC    push        eax
 0058BFCD    mov         eax,dword ptr [ebp-4]
 0058BFD0    call        TImageList.GetBkColor
 0058BFD5    call        0058B324
 0058BFDA    push        eax
 0058BFDB    push        0
 0058BFDD    push        0
 0058BFDF    mov         eax,dword ptr [ebp+10]
 0058BFE2    push        eax
 0058BFE3    mov         eax,dword ptr [ebp+14]
 0058BFE6    push        eax
 0058BFE7    mov         eax,dword ptr [ebp-0C]
 0058BFEA    call        TCanvas.GetHandle
 0058BFEF    push        eax
 0058BFF0    mov         eax,dword ptr [ebp-8]
 0058BFF3    push        eax
 0058BFF4    mov         eax,dword ptr [ebp-4]
 0058BFF7    call        0058B86C
 0058BFFC    push        eax
 0058BFFD    call        COMCTL32.ImageList_DrawEx
>0058C002    jmp         0058C1C0
 0058C007    mov         eax,dword ptr [ebp-4]
 0058C00A    cmp         dword ptr [eax+54],0;TCustomImageList.FMonoBitmap:TBitmap
>0058C00E    jne         0058C051
 0058C010    mov         dl,1
 0058C012    mov         eax,[005BEDD4];TBitmap
 0058C017    call        TBitmap.Create;TBitmap.Create
 0058C01C    mov         edx,dword ptr [ebp-4]
 0058C01F    mov         dword ptr [edx+54],eax;TCustomImageList.FMonoBitmap:TBitmap
 0058C022    mov         eax,dword ptr [ebp-4]
 0058C025    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 0058C028    mov         dword ptr [ebp-18],eax
 0058C02B    mov         dl,1
 0058C02D    mov         eax,dword ptr [ebp-18]
 0058C030    call        TBitmap.SetMonochrome
 0058C035    mov         eax,dword ptr [ebp-4]
 0058C038    mov         edx,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0058C03B    mov         eax,dword ptr [ebp-18]
 0058C03E    mov         ecx,dword ptr [eax]
 0058C040    call        dword ptr [ecx+40];TBitmap.SetWidth
 0058C043    mov         eax,dword ptr [ebp-4]
 0058C046    mov         edx,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 0058C049    mov         eax,dword ptr [ebp-18]
 0058C04C    mov         ecx,dword ptr [eax]
 0058C04E    call        dword ptr [ecx+34];TBitmap.SetHeight
 0058C051    mov         eax,dword ptr [ebp-4]
 0058C054    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 0058C057    call        TBitmap.GetCanvas
 0058C05C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0058C05F    mov         edx,0FFFFFF
 0058C064    call        TBrush.SetColor
 0058C069    mov         eax,dword ptr [ebp-4]
 0058C06C    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 0058C06F    push        eax
 0058C070    lea         eax,[ebp-38]
 0058C073    push        eax
 0058C074    mov         eax,dword ptr [ebp-4]
 0058C077    mov         ecx,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0058C07A    xor         edx,edx
 0058C07C    xor         eax,eax
 0058C07E    call        Rect
 0058C083    lea         eax,[ebp-38]
 0058C086    push        eax
 0058C087    mov         eax,dword ptr [ebp-4]
 0058C08A    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 0058C08D    call        TBitmap.GetCanvas
 0058C092    pop         edx
 0058C093    call        TCanvas.FillRect
 0058C098    push        0
 0058C09A    push        0
 0058C09C    push        0FF
 0058C09E    push        0
 0058C0A0    push        0
 0058C0A2    push        0
 0058C0A4    push        0
 0058C0A6    mov         eax,dword ptr [ebp-4]
 0058C0A9    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 0058C0AC    call        TBitmap.GetCanvas
 0058C0B1    call        TCanvas.GetHandle
 0058C0B6    push        eax
 0058C0B7    mov         eax,dword ptr [ebp-8]
 0058C0BA    push        eax
 0058C0BB    mov         eax,dword ptr [ebp-4]
 0058C0BE    call        0058B86C
 0058C0C3    push        eax
 0058C0C4    call        COMCTL32.ImageList_DrawEx
 0058C0C9    mov         eax,dword ptr [ebp+10]
 0058C0CC    mov         edx,dword ptr [ebp-4]
 0058C0CF    add         eax,dword ptr [edx+30];TCustomImageList.FHeight:Integer
 0058C0D2    push        eax
 0058C0D3    lea         eax,[ebp-28]
 0058C0D6    push        eax
 0058C0D7    mov         ecx,dword ptr [ebp+14]
 0058C0DA    mov         eax,dword ptr [ebp-4]
 0058C0DD    add         ecx,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0058C0E0    mov         edx,dword ptr [ebp+10]
 0058C0E3    mov         eax,dword ptr [ebp+14]
 0058C0E6    call        Rect
 0058C0EB    mov         eax,dword ptr [ebp-4]
 0058C0EE    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 0058C0F1    call        TBitmap.GetCanvas
 0058C0F6    call        TCanvas.GetHandle
 0058C0FB    mov         dword ptr [ebp-14],eax
 0058C0FE    mov         eax,dword ptr [ebp-0C]
 0058C101    mov         eax,dword ptr [eax+14]
 0058C104    mov         edx,80000014
 0058C109    call        TBrush.SetColor
 0058C10E    mov         eax,dword ptr [ebp-0C]
 0058C111    call        TCanvas.GetHandle
 0058C116    mov         dword ptr [ebp-10],eax
 0058C119    push        0FFFFFF
 0058C11E    mov         eax,dword ptr [ebp-10]
 0058C121    push        eax
 0058C122    call        GDI32.SetTextColor
 0058C127    push        0
 0058C129    mov         eax,dword ptr [ebp-10]
 0058C12C    push        eax
 0058C12D    call        GDI32.SetBkColor
 0058C132    push        0E20746
 0058C137    push        0
 0058C139    push        0
 0058C13B    mov         eax,dword ptr [ebp-14]
 0058C13E    push        eax
 0058C13F    mov         eax,dword ptr [ebp-4]
 0058C142    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 0058C145    push        eax
 0058C146    mov         eax,dword ptr [ebp-4]
 0058C149    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0058C14C    push        eax
 0058C14D    mov         eax,dword ptr [ebp+10]
 0058C150    inc         eax
 0058C151    push        eax
 0058C152    mov         eax,dword ptr [ebp+14]
 0058C155    inc         eax
 0058C156    push        eax
 0058C157    mov         eax,dword ptr [ebp-10]
 0058C15A    push        eax
 0058C15B    call        GDI32.BitBlt
 0058C160    mov         eax,dword ptr [ebp-0C]
 0058C163    mov         eax,dword ptr [eax+14]
 0058C166    mov         edx,80000010
 0058C16B    call        TBrush.SetColor
 0058C170    mov         eax,dword ptr [ebp-0C]
 0058C173    call        TCanvas.GetHandle
 0058C178    mov         dword ptr [ebp-10],eax
 0058C17B    push        0FFFFFF
 0058C180    mov         eax,dword ptr [ebp-10]
 0058C183    push        eax
 0058C184    call        GDI32.SetTextColor
 0058C189    push        0
 0058C18B    mov         eax,dword ptr [ebp-10]
 0058C18E    push        eax
 0058C18F    call        GDI32.SetBkColor
 0058C194    push        0E20746
 0058C199    push        0
 0058C19B    push        0
 0058C19D    mov         eax,dword ptr [ebp-14]
 0058C1A0    push        eax
 0058C1A1    mov         eax,dword ptr [ebp-4]
 0058C1A4    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 0058C1A7    push        eax
 0058C1A8    mov         eax,dword ptr [ebp-4]
 0058C1AB    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0058C1AE    push        eax
 0058C1AF    mov         eax,dword ptr [ebp+10]
 0058C1B2    push        eax
 0058C1B3    mov         eax,dword ptr [ebp+14]
 0058C1B6    push        eax
 0058C1B7    mov         eax,dword ptr [ebp-10]
 0058C1BA    push        eax
 0058C1BB    call        GDI32.BitBlt
 0058C1C0    mov         esp,ebp
 0058C1C2    pop         ebp
 0058C1C3    ret         10
end;*}

//0058C1C8
{*procedure sub_0058C1C8(?:TImageList; ?:TCanvas; ?:?; ?:?; ?:?; ?:?);
begin
 0058C1C8    push        ebp
 0058C1C9    mov         ebp,esp
 0058C1CB    add         esp,0FFFFFFF4
 0058C1CE    mov         dword ptr [ebp-0C],ecx
 0058C1D1    mov         dword ptr [ebp-8],edx
 0058C1D4    mov         dword ptr [ebp-4],eax
 0058C1D7    mov         eax,dword ptr [ebp+10]
 0058C1DA    push        eax
 0058C1DB    mov         eax,dword ptr [ebp+0C]
 0058C1DE    push        eax
 0058C1DF    mov         eax,dword ptr [ebp-4]
 0058C1E2    mov         al,byte ptr [eax+40];TImageList.FDrawingStyle:TDrawingStyle
 0058C1E5    push        eax
 0058C1E6    mov         eax,dword ptr [ebp-4]
 0058C1E9    mov         al,byte ptr [eax+43];TImageList.FImageType:TImageType
 0058C1EC    push        eax
 0058C1ED    mov         al,byte ptr [ebp+8]
 0058C1F0    push        eax
 0058C1F1    mov         ecx,dword ptr [ebp-0C]
 0058C1F4    mov         edx,dword ptr [ebp-8]
 0058C1F7    mov         eax,dword ptr [ebp-4]
 0058C1FA    call        0058C208
 0058C1FF    mov         esp,ebp
 0058C201    pop         ebp
 0058C202    ret         0C
end;*}

//0058C208
{*procedure sub_0058C208(?:TImageList; ?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0058C208    push        ebp
 0058C209    mov         ebp,esp
 0058C20B    add         esp,0FFFFFFF4
 0058C20E    push        ebx
 0058C20F    mov         dword ptr [ebp-0C],ecx
 0058C212    mov         dword ptr [ebp-8],edx
 0058C215    mov         dword ptr [ebp-4],eax
 0058C218    mov         eax,dword ptr [ebp-4]
 0058C21B    call        0058B5D4
 0058C220    test        al,al
>0058C222    je          0058C257
 0058C224    mov         eax,dword ptr [ebp-0C]
 0058C227    push        eax
 0058C228    mov         eax,dword ptr [ebp+18]
 0058C22B    push        eax
 0058C22C    xor         eax,eax
 0058C22E    mov         al,byte ptr [ebp+10]
 0058C231    mov         eax,dword ptr [eax*4+6E3A04]
 0058C238    xor         edx,edx
 0058C23A    mov         dl,byte ptr [ebp+0C]
 0058C23D    or          eax,dword ptr [edx*4+6E3A14]
 0058C244    push        eax
 0058C245    mov         al,byte ptr [ebp+8]
 0058C248    push        eax
 0058C249    mov         ecx,dword ptr [ebp-8]
 0058C24C    mov         edx,dword ptr [ebp+14]
 0058C24F    mov         eax,dword ptr [ebp-4]
 0058C252    mov         ebx,dword ptr [eax]
 0058C254    call        dword ptr [ebx+30];TImageList.sub_0058BF98
 0058C257    pop         ebx
 0058C258    mov         esp,ebp
 0058C25A    pop         ebp
 0058C25B    ret         14
end;*}

//0058C260
{*procedure sub_0058C260(?:?; ?:?);
begin
 0058C260    push        ebp
 0058C261    mov         ebp,esp
 0058C263    add         esp,0FFFFFFD0
 0058C266    mov         dword ptr [ebp-8],edx
 0058C269    mov         dword ptr [ebp-4],eax
 0058C26C    mov         eax,dword ptr [ebp-4]
 0058C26F    mov         eax,dword ptr [eax+30]
 0058C272    push        eax
 0058C273    lea         eax,[ebp-30]
 0058C276    push        eax
 0058C277    mov         eax,dword ptr [ebp-4]
 0058C27A    mov         ecx,dword ptr [eax+34]
 0058C27D    xor         edx,edx
 0058C27F    xor         eax,eax
 0058C281    call        Rect
 0058C286    mov         eax,dword ptr [ebp-4]
 0058C289    call        0058CFA8
 0058C28E    xor         eax,eax
 0058C290    push        ebp
 0058C291    push        58C3FF
 0058C296    push        dword ptr fs:[eax]
 0058C299    mov         dword ptr fs:[eax],esp
 0058C29C    mov         dl,1
 0058C29E    mov         eax,[005BEDD4];TBitmap
 0058C2A3    call        TBitmap.Create;TBitmap.Create
 0058C2A8    mov         dword ptr [ebp-10],eax
 0058C2AB    xor         eax,eax
 0058C2AD    push        ebp
 0058C2AE    push        58C3E2
 0058C2B3    push        dword ptr fs:[eax]
 0058C2B6    mov         dword ptr fs:[eax],esp
 0058C2B9    mov         eax,dword ptr [ebp-4]
 0058C2BC    mov         edx,dword ptr [eax+30]
 0058C2BF    mov         eax,dword ptr [ebp-10]
 0058C2C2    mov         ecx,dword ptr [eax]
 0058C2C4    call        dword ptr [ecx+34];TBitmap.SetHeight
 0058C2C7    mov         eax,dword ptr [ebp-4]
 0058C2CA    mov         edx,dword ptr [eax+34]
 0058C2CD    mov         eax,dword ptr [ebp-10]
 0058C2D0    mov         ecx,dword ptr [eax]
 0058C2D2    call        dword ptr [ecx+40];TBitmap.SetWidth
 0058C2D5    mov         dl,1
 0058C2D7    mov         eax,[005BEDD4];TBitmap
 0058C2DC    call        TBitmap.Create;TBitmap.Create
 0058C2E1    mov         dword ptr [ebp-14],eax
 0058C2E4    xor         eax,eax
 0058C2E6    push        ebp
 0058C2E7    push        58C3C5
 0058C2EC    push        dword ptr fs:[eax]
 0058C2EF    mov         dword ptr fs:[eax],esp
 0058C2F2    mov         dl,1
 0058C2F4    mov         eax,dword ptr [ebp-14]
 0058C2F7    call        TBitmap.SetMonochrome
 0058C2FC    mov         eax,dword ptr [ebp-4]
 0058C2FF    mov         edx,dword ptr [eax+30]
 0058C302    mov         eax,dword ptr [ebp-14]
 0058C305    mov         ecx,dword ptr [eax]
 0058C307    call        dword ptr [ecx+34];TBitmap.SetHeight
 0058C30A    mov         eax,dword ptr [ebp-4]
 0058C30D    mov         edx,dword ptr [eax+34]
 0058C310    mov         eax,dword ptr [ebp-14]
 0058C313    mov         ecx,dword ptr [eax]
 0058C315    call        dword ptr [ecx+40];TBitmap.SetWidth
 0058C318    mov         eax,dword ptr [ebp-8]
 0058C31B    push        eax
 0058C31C    call        COMCTL32.ImageList_GetImageCount
 0058C321    dec         eax
 0058C322    test        eax,eax
>0058C324    jl          0058C3AF
 0058C32A    inc         eax
 0058C32B    mov         dword ptr [ebp-18],eax
 0058C32E    mov         dword ptr [ebp-0C],0
 0058C335    mov         eax,dword ptr [ebp-10]
 0058C338    call        TBitmap.GetCanvas
 0058C33D    mov         dword ptr [ebp-1C],eax
 0058C340    lea         edx,[ebp-30]
 0058C343    mov         eax,dword ptr [ebp-1C]
 0058C346    call        TCanvas.FillRect
 0058C34B    push        0
 0058C34D    push        0
 0058C34F    push        0
 0058C351    mov         eax,dword ptr [ebp-1C]
 0058C354    call        TCanvas.GetHandle
 0058C359    push        eax
 0058C35A    mov         eax,dword ptr [ebp-0C]
 0058C35D    push        eax
 0058C35E    mov         eax,dword ptr [ebp-8]
 0058C361    push        eax
 0058C362    call        COMCTL32.ImageList_Draw
 0058C367    mov         eax,dword ptr [ebp-14]
 0058C36A    call        TBitmap.GetCanvas
 0058C36F    mov         dword ptr [ebp-20],eax
 0058C372    lea         edx,[ebp-30]
 0058C375    mov         eax,dword ptr [ebp-20]
 0058C378    call        TCanvas.FillRect
 0058C37D    push        10
 0058C37F    push        0
 0058C381    push        0
 0058C383    mov         eax,dword ptr [ebp-20]
 0058C386    call        TCanvas.GetHandle
 0058C38B    push        eax
 0058C38C    mov         eax,dword ptr [ebp-0C]
 0058C38F    push        eax
 0058C390    mov         eax,dword ptr [ebp-8]
 0058C393    push        eax
 0058C394    call        COMCTL32.ImageList_Draw
 0058C399    mov         ecx,dword ptr [ebp-14]
 0058C39C    mov         edx,dword ptr [ebp-10]
 0058C39F    mov         eax,dword ptr [ebp-4]
 0058C3A2    call        0058BA04
 0058C3A7    inc         dword ptr [ebp-0C]
 0058C3AA    dec         dword ptr [ebp-18]
>0058C3AD    jne         0058C335
 0058C3AF    xor         eax,eax
 0058C3B1    pop         edx
 0058C3B2    pop         ecx
 0058C3B3    pop         ecx
 0058C3B4    mov         dword ptr fs:[eax],edx
 0058C3B7    push        58C3CC
 0058C3BC    mov         eax,dword ptr [ebp-14]
 0058C3BF    call        TObject.Free
 0058C3C4    ret
>0058C3C5    jmp         @HandleFinally
>0058C3CA    jmp         0058C3BC
 0058C3CC    xor         eax,eax
 0058C3CE    pop         edx
 0058C3CF    pop         ecx
 0058C3D0    pop         ecx
 0058C3D1    mov         dword ptr fs:[eax],edx
 0058C3D4    push        58C3E9
 0058C3D9    mov         eax,dword ptr [ebp-10]
 0058C3DC    call        TObject.Free
 0058C3E1    ret
>0058C3E2    jmp         @HandleFinally
>0058C3E7    jmp         0058C3D9
 0058C3E9    xor         eax,eax
 0058C3EB    pop         edx
 0058C3EC    pop         ecx
 0058C3ED    pop         ecx
 0058C3EE    mov         dword ptr fs:[eax],edx
 0058C3F1    push        58C406
 0058C3F6    mov         eax,dword ptr [ebp-4]
 0058C3F9    call        0058CFB8
 0058C3FE    ret
>0058C3FF    jmp         @HandleFinally
>0058C404    jmp         0058C3F6
 0058C406    mov         esp,ebp
 0058C408    pop         ebp
 0058C409    ret
end;*}

//0058C40C
procedure sub_0058C40C(?:TPersistent; ?:TPersistent);
begin
{*
 0058C40C    push        ebp
 0058C40D    mov         ebp,esp
 0058C40F    add         esp,0FFFFFFF8
 0058C412    mov         dword ptr [ebp-8],edx
 0058C415    mov         dword ptr [ebp-4],eax
 0058C418    cmp         dword ptr [ebp-8],0
>0058C41C    je          0058C430
 0058C41E    mov         eax,dword ptr [ebp-8]
 0058C421    call        0058B86C
 0058C426    mov         edx,eax
 0058C428    mov         eax,dword ptr [ebp-4]
 0058C42B    call        0058C260
 0058C430    pop         ecx
 0058C431    pop         ecx
 0058C432    pop         ebp
 0058C433    ret
*}
end;

//0058C434
procedure TCustomImageList.Assign(Source:TPersistent);
begin
{*
 0058C434    push        ebp
 0058C435    mov         ebp,esp
 0058C437    add         esp,0FFFFFFF4
 0058C43A    mov         dword ptr [ebp-8],edx
 0058C43D    mov         dword ptr [ebp-4],eax
 0058C440    cmp         dword ptr [ebp-8],0
>0058C444    jne         0058C453
 0058C446    mov         eax,dword ptr [ebp-4]
 0058C449    call        0058B900
>0058C44E    jmp         0058C52E
 0058C453    mov         eax,dword ptr [ebp-8]
 0058C456    mov         edx,dword ptr ds:[58B254];TCustomImageList
 0058C45C    call        @IsClass
 0058C461    test        al,al
>0058C463    je          0058C523
 0058C469    mov         eax,dword ptr [ebp-4]
 0058C46C    call        0058BEF4
 0058C471    mov         eax,dword ptr [ebp-8]
 0058C474    mov         dword ptr [ebp-0C],eax
 0058C477    mov         eax,dword ptr [ebp-0C]
 0058C47A    mov         al,byte ptr [eax+41]
 0058C47D    mov         edx,dword ptr [ebp-4]
 0058C480    mov         byte ptr [edx+41],al;TCustomImageList.FMasked:Boolean
 0058C483    mov         eax,dword ptr [ebp-0C]
 0058C486    mov         al,byte ptr [eax+43]
 0058C489    mov         edx,dword ptr [ebp-4]
 0058C48C    mov         byte ptr [edx+43],al;TCustomImageList.FImageType:TImageType
 0058C48F    mov         eax,dword ptr [ebp-0C]
 0058C492    mov         dl,byte ptr [eax+40]
 0058C495    mov         eax,dword ptr [ebp-4]
 0058C498    call        TImageList.SetDrawingStyle
 0058C49D    mov         eax,dword ptr [ebp-0C]
 0058C4A0    mov         al,byte ptr [eax+42]
 0058C4A3    mov         edx,dword ptr [ebp-4]
 0058C4A6    mov         byte ptr [edx+42],al;TCustomImageList.FShareImages:Boolean
 0058C4A9    mov         eax,dword ptr [ebp-0C]
 0058C4AC    call        0058B86C
 0058C4B1    mov         edx,eax
 0058C4B3    mov         eax,dword ptr [ebp-4]
 0058C4B6    call        0058B6DC
 0058C4BB    mov         eax,dword ptr [ebp-4]
 0058C4BE    call        0058B5D4
 0058C4C3    test        al,al
>0058C4C5    jne         0058C4D1
 0058C4C7    mov         eax,dword ptr [ebp-4]
 0058C4CA    call        0058B5F0
>0058C4CF    jmp         0058C4ED
 0058C4D1    mov         eax,dword ptr [ebp-4]
 0058C4D4    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 0058C4D7    push        eax
 0058C4D8    mov         eax,dword ptr [ebp-4]
 0058C4DB    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0058C4DE    push        eax
 0058C4DF    mov         eax,dword ptr [ebp-4]
 0058C4E2    call        0058B86C
 0058C4E7    push        eax
 0058C4E8    call        COMCTL32.ImageList_SetIconSize
 0058C4ED    mov         eax,dword ptr [ebp-0C]
 0058C4F0    call        0058B86C
 0058C4F5    push        eax
 0058C4F6    call        COMCTL32.ImageList_GetBkColor
 0058C4FB    call        0058B360
 0058C500    mov         edx,eax
 0058C502    mov         eax,dword ptr [ebp-4]
 0058C505    call        TImageList.SetBkColor
 0058C50A    mov         eax,dword ptr [ebp-0C]
 0058C50D    mov         eax,dword ptr [eax+48]
 0058C510    mov         edx,dword ptr [ebp-4]
 0058C513    mov         dword ptr [edx+48],eax;TCustomImageList.FBlendColor:TColor
 0058C516    mov         edx,dword ptr [ebp-0C]
 0058C519    mov         eax,dword ptr [ebp-4]
 0058C51C    call        0058C40C
>0058C521    jmp         0058C52E
 0058C523    mov         edx,dword ptr [ebp-8]
 0058C526    mov         eax,dword ptr [ebp-4]
 0058C529    call        TPersistent.Assign
 0058C52E    mov         esp,ebp
 0058C530    pop         ebp
 0058C531    ret
*}
end;

//0058C534
procedure TCustomImageList.AssignTo(Dest:TPersistent);
begin
{*
 0058C534    push        ebp
 0058C535    mov         ebp,esp
 0058C537    add         esp,0FFFFFFF4
 0058C53A    mov         dword ptr [ebp-8],edx
 0058C53D    mov         dword ptr [ebp-4],eax
 0058C540    mov         eax,dword ptr [ebp-8]
 0058C543    mov         edx,dword ptr ds:[58B254];TCustomImageList
 0058C549    call        @IsClass
 0058C54E    test        al,al
>0058C550    je          0058C610
 0058C556    mov         eax,dword ptr [ebp-8]
 0058C559    mov         dword ptr [ebp-0C],eax
 0058C55C    mov         eax,dword ptr [ebp-4]
 0058C55F    mov         al,byte ptr [eax+41];TCustomImageList.FMasked:Boolean
 0058C562    mov         edx,dword ptr [ebp-0C]
 0058C565    mov         byte ptr [edx+41],al
 0058C568    mov         eax,dword ptr [ebp-4]
 0058C56B    mov         al,byte ptr [eax+43];TCustomImageList.FImageType:TImageType
 0058C56E    mov         edx,dword ptr [ebp-0C]
 0058C571    mov         byte ptr [edx+43],al
 0058C574    mov         eax,dword ptr [ebp-4]
 0058C577    mov         dl,byte ptr [eax+40];TCustomImageList.FDrawingStyle:TDrawingStyle
 0058C57A    mov         eax,dword ptr [ebp-0C]
 0058C57D    call        TImageList.SetDrawingStyle
 0058C582    mov         eax,dword ptr [ebp-4]
 0058C585    mov         al,byte ptr [eax+42];TCustomImageList.FShareImages:Boolean
 0058C588    mov         edx,dword ptr [ebp-0C]
 0058C58B    mov         byte ptr [edx+42],al
 0058C58E    mov         eax,dword ptr [ebp-4]
 0058C591    mov         eax,dword ptr [eax+48];TCustomImageList.FBlendColor:TColor
 0058C594    mov         edx,dword ptr [ebp-0C]
 0058C597    mov         dword ptr [edx+48],eax
 0058C59A    mov         eax,dword ptr [ebp-0C]
 0058C59D    call        0058BEF4
 0058C5A2    mov         eax,dword ptr [ebp-4]
 0058C5A5    call        0058B86C
 0058C5AA    mov         edx,eax
 0058C5AC    mov         eax,dword ptr [ebp-0C]
 0058C5AF    call        0058B6DC
 0058C5B4    mov         eax,dword ptr [ebp-0C]
 0058C5B7    call        0058B5D4
 0058C5BC    test        al,al
>0058C5BE    jne         0058C5CA
 0058C5C0    mov         eax,dword ptr [ebp-0C]
 0058C5C3    call        0058B5F0
>0058C5C8    jmp         0058C5E6
 0058C5CA    mov         eax,dword ptr [ebp-0C]
 0058C5CD    mov         eax,dword ptr [eax+30]
 0058C5D0    push        eax
 0058C5D1    mov         eax,dword ptr [ebp-0C]
 0058C5D4    mov         eax,dword ptr [eax+34]
 0058C5D7    push        eax
 0058C5D8    mov         eax,dword ptr [ebp-0C]
 0058C5DB    call        0058B86C
 0058C5E0    push        eax
 0058C5E1    call        COMCTL32.ImageList_SetIconSize
 0058C5E6    mov         eax,dword ptr [ebp-4]
 0058C5E9    call        0058B86C
 0058C5EE    push        eax
 0058C5EF    call        COMCTL32.ImageList_GetBkColor
 0058C5F4    call        0058B360
 0058C5F9    mov         edx,eax
 0058C5FB    mov         eax,dword ptr [ebp-0C]
 0058C5FE    call        TImageList.SetBkColor
 0058C603    mov         edx,dword ptr [ebp-4]
 0058C606    mov         eax,dword ptr [ebp-0C]
 0058C609    call        0058C40C
>0058C60E    jmp         0058C61B
 0058C610    mov         edx,dword ptr [ebp-8]
 0058C613    mov         eax,dword ptr [ebp-4]
 0058C616    call        TPersistent.AssignTo
 0058C61B    mov         esp,ebp
 0058C61D    pop         ebp
 0058C61E    ret
*}
end;

//0058C620
{*procedure sub_0058C620(?:?; ?:?);
begin
 0058C620    push        ebp
 0058C621    mov         ebp,esp
 0058C623    add         esp,0FFFFFFF4
 0058C626    xor         ecx,ecx
 0058C628    mov         dword ptr [ebp-0C],ecx
 0058C62B    mov         dword ptr [ebp-8],edx
 0058C62E    mov         dword ptr [ebp-4],eax
 0058C631    xor         eax,eax
 0058C633    push        ebp
 0058C634    push        58C69C
 0058C639    push        dword ptr fs:[eax]
 0058C63C    mov         dword ptr fs:[eax],esp
 0058C63F    cmp         dword ptr [ebp-8],0
>0058C643    je          0058C686
 0058C645    mov         eax,dword ptr [ebp-8]
 0058C648    mov         edx,dword ptr [eax]
 0058C64A    call        dword ptr [edx+20]
 0058C64D    mov         edx,dword ptr [ebp-4]
 0058C650    cmp         eax,dword ptr [edx+30]
>0058C653    jl          0058C665
 0058C655    mov         eax,dword ptr [ebp-8]
 0058C658    mov         edx,dword ptr [eax]
 0058C65A    call        dword ptr [edx+2C]
 0058C65D    mov         edx,dword ptr [ebp-4]
 0058C660    cmp         eax,dword ptr [edx+34]
>0058C663    jge         0058C686
 0058C665    lea         edx,[ebp-0C]
 0058C668    mov         eax,[006E9E14];^gvar_0063CA38
 0058C66D    call        LoadResString
 0058C672    mov         ecx,dword ptr [ebp-0C]
 0058C675    mov         dl,1
 0058C677    mov         eax,[00642244];EInvalidOperation
 0058C67C    call        Exception.Create;EInvalidOperation.Create
 0058C681    call        @RaiseExcept
 0058C686    xor         eax,eax
 0058C688    pop         edx
 0058C689    pop         ecx
 0058C68A    pop         ecx
 0058C68B    mov         dword ptr fs:[eax],edx
 0058C68E    push        58C6A3
 0058C693    lea         eax,[ebp-0C]
 0058C696    call        @LStrClr
 0058C69B    ret
>0058C69C    jmp         @HandleFinally
>0058C6A1    jmp         0058C693
 0058C6A3    mov         esp,ebp
 0058C6A5    pop         ebp
 0058C6A6    ret
end;*}

//0058C6A8
procedure TImageList.SetDrawingStyle(Value:TDrawingStyle);
begin
{*
 0058C6A8    push        ebp
 0058C6A9    mov         ebp,esp
 0058C6AB    add         esp,0FFFFFFF8
 0058C6AE    push        esi
 0058C6AF    mov         byte ptr [ebp-5],dl
 0058C6B2    mov         dword ptr [ebp-4],eax
 0058C6B5    mov         al,byte ptr [ebp-5]
 0058C6B8    mov         edx,dword ptr [ebp-4]
 0058C6BB    cmp         al,byte ptr [edx+40];TImageList.FDrawingStyle:TDrawingStyle
>0058C6BE    je          0058C6D5
 0058C6C0    mov         al,byte ptr [ebp-5]
 0058C6C3    mov         edx,dword ptr [ebp-4]
 0058C6C6    mov         byte ptr [edx+40],al;TImageList.FDrawingStyle:TDrawingStyle
 0058C6C9    mov         eax,dword ptr [ebp-4]
 0058C6CC    mov         si,0FFEF
 0058C6D0    call        @CallDynaInst;TCustomImageList.sub_0058C6F8
 0058C6D5    pop         esi
 0058C6D6    pop         ecx
 0058C6D7    pop         ecx
 0058C6D8    pop         ebp
 0058C6D9    ret
*}
end;

//0058C6DC
{*procedure sub_0058C6DC(?:?);
begin
 0058C6DC    push        ebp
 0058C6DD    mov         ebp,esp
 0058C6DF    add         esp,0FFFFFFF8
 0058C6E2    mov         dword ptr [ebp-8],edx
 0058C6E5    mov         dword ptr [ebp-4],eax
 0058C6E8    mov         ecx,dword ptr [ebp-8]
 0058C6EB    xor         edx,edx
 0058C6ED    xor         eax,eax
 0058C6EF    call        Point
 0058C6F4    pop         ecx
 0058C6F5    pop         ecx
 0058C6F6    pop         ebp
 0058C6F7    ret
end;*}

//0058C6F8
procedure TCustomImageList.sub_0058C6F8;
begin
{*
 0058C6F8    push        ebp
 0058C6F9    mov         ebp,esp
 0058C6FB    add         esp,0FFFFFFF4
 0058C6FE    push        ebx
 0058C6FF    push        esi
 0058C700    mov         dword ptr [ebp-4],eax
 0058C703    mov         eax,dword ptr [ebp-4]
 0058C706    mov         byte ptr [eax+58],1;TCustomImageList.FChanged:Boolean
 0058C70A    mov         eax,dword ptr [ebp-4]
 0058C70D    cmp         dword ptr [eax+5C],0;TCustomImageList.FUpdateCount:Integer
>0058C711    jg          0058C76A
 0058C713    mov         eax,dword ptr [ebp-4]
 0058C716    cmp         dword ptr [eax+4C],0;TCustomImageList.FClients:TList
>0058C71A    je          0058C754
 0058C71C    mov         eax,dword ptr [ebp-4]
 0058C71F    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 0058C722    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058C725    dec         eax
 0058C726    test        eax,eax
>0058C728    jl          0058C754
 0058C72A    inc         eax
 0058C72B    mov         dword ptr [ebp-0C],eax
 0058C72E    mov         dword ptr [ebp-8],0
 0058C735    mov         edx,dword ptr [ebp-8]
 0058C738    mov         eax,dword ptr [ebp-4]
 0058C73B    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 0058C73E    call        TList.Get
 0058C743    mov         si,0FFFF
 0058C747    call        @CallDynaInst
 0058C74C    inc         dword ptr [ebp-8]
 0058C74F    dec         dword ptr [ebp-0C]
>0058C752    jne         0058C735
 0058C754    mov         eax,dword ptr [ebp-4]
 0058C757    cmp         word ptr [eax+62],0;TCustomImageList.?f62:word
>0058C75C    je          0058C76A
 0058C75E    mov         ebx,dword ptr [ebp-4]
 0058C761    mov         edx,dword ptr [ebp-4]
 0058C764    mov         eax,dword ptr [ebx+64];TCustomImageList.?f64:dword
 0058C767    call        dword ptr [ebx+60];TCustomImageList.FOnChange
 0058C76A    pop         esi
 0058C76B    pop         ebx
 0058C76C    mov         esp,ebp
 0058C76E    pop         ebp
 0058C76F    ret
*}
end;

//0058C770
procedure sub_0058C770(?:TCustomImageList; ?:TChangeLink);
begin
{*
 0058C770    push        ebp
 0058C771    mov         ebp,esp
 0058C773    add         esp,0FFFFFFF0
 0058C776    mov         dword ptr [ebp-8],edx
 0058C779    mov         dword ptr [ebp-4],eax
 0058C77C    mov         eax,dword ptr [ebp-4]
 0058C77F    cmp         dword ptr [eax+4C],0;TCustomImageList.FClients:TList
>0058C783    je          0058C7D1
 0058C785    mov         eax,dword ptr [ebp-4]
 0058C788    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 0058C78B    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058C78E    dec         eax
 0058C78F    test        eax,eax
>0058C791    jl          0058C7D1
 0058C793    inc         eax
 0058C794    mov         dword ptr [ebp-10],eax
 0058C797    mov         dword ptr [ebp-0C],0
 0058C79E    mov         edx,dword ptr [ebp-0C]
 0058C7A1    mov         eax,dword ptr [ebp-4]
 0058C7A4    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 0058C7A7    call        TList.Get
 0058C7AC    cmp         eax,dword ptr [ebp-8]
>0058C7AF    jne         0058C7C9
 0058C7B1    mov         eax,dword ptr [ebp-8]
 0058C7B4    xor         edx,edx
 0058C7B6    mov         dword ptr [eax+4],edx
 0058C7B9    mov         edx,dword ptr [ebp-0C]
 0058C7BC    mov         eax,dword ptr [ebp-4]
 0058C7BF    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 0058C7C2    call        TList.Delete
>0058C7C7    jmp         0058C7D1
 0058C7C9    inc         dword ptr [ebp-0C]
 0058C7CC    dec         dword ptr [ebp-10]
>0058C7CF    jne         0058C79E
 0058C7D1    mov         esp,ebp
 0058C7D3    pop         ebp
 0058C7D4    ret
*}
end;

//0058C7D8
procedure sub_0058C7D8(?:TCustomImageList; ?:TChangeLink);
begin
{*
 0058C7D8    push        ebp
 0058C7D9    mov         ebp,esp
 0058C7DB    add         esp,0FFFFFFF8
 0058C7DE    mov         dword ptr [ebp-8],edx
 0058C7E1    mov         dword ptr [ebp-4],eax
 0058C7E4    mov         eax,dword ptr [ebp-4]
 0058C7E7    mov         edx,dword ptr [ebp-8]
 0058C7EA    mov         dword ptr [edx+4],eax
 0058C7ED    mov         eax,dword ptr [ebp-4]
 0058C7F0    cmp         dword ptr [eax+4C],0
>0058C7F4    je          0058C804
 0058C7F6    mov         edx,dword ptr [ebp-8]
 0058C7F9    mov         eax,dword ptr [ebp-4]
 0058C7FC    mov         eax,dword ptr [eax+4C]
 0058C7FF    call        TList.Add
 0058C804    pop         ecx
 0058C805    pop         ecx
 0058C806    pop         ebp
 0058C807    ret
*}
end;

//0058C808
{*function sub_0058C808(?:TMemoryStream; ?:TMemoryStream):?;
begin
 0058C808    push        ebp
 0058C809    mov         ebp,esp
 0058C80B    add         esp,0FFFFFFF4
 0058C80E    mov         dword ptr [ebp-8],edx
 0058C811    mov         dword ptr [ebp-4],eax
 0058C814    mov         eax,dword ptr [ebp-4]
 0058C817    call        TStream.GetSize
 0058C81C    push        edx
 0058C81D    push        eax
 0058C81E    mov         eax,dword ptr [ebp-8]
 0058C821    call        TStream.GetSize
 0058C826    cmp         edx,dword ptr [esp+4]
>0058C82A    jne         0058C82F
 0058C82C    cmp         eax,dword ptr [esp]
 0058C82F    pop         edx
 0058C830    pop         eax
>0058C831    jne         0058C852
 0058C833    mov         eax,dword ptr [ebp-4]
 0058C836    call        TStream.GetSize
 0058C83B    mov         ecx,eax
 0058C83D    mov         eax,dword ptr [ebp-8]
 0058C840    mov         edx,dword ptr [eax+4]
 0058C843    mov         eax,dword ptr [ebp-4]
 0058C846    mov         eax,dword ptr [eax+4]
 0058C849    call        CompareMem
 0058C84E    test        al,al
>0058C850    jne         0058C856
 0058C852    xor         eax,eax
>0058C854    jmp         0058C858
 0058C856    mov         al,1
 0058C858    mov         byte ptr [ebp-9],al
 0058C85B    mov         al,byte ptr [ebp-9]
 0058C85E    mov         esp,ebp
 0058C860    pop         ebp
 0058C861    ret
end;*}

//0058C864
{*function sub_0058C864(?:?; ?:?):?;
begin
 0058C864    push        ebp
 0058C865    mov         ebp,esp
 0058C867    add         esp,0FFFFFFEC
 0058C86A    push        ebx
 0058C86B    mov         dword ptr [ebp-8],edx
 0058C86E    mov         dword ptr [ebp-4],eax
 0058C871    cmp         dword ptr [ebp-8],0
>0058C875    je          0058C88D
 0058C877    mov         eax,dword ptr [ebp-4]
 0058C87A    call        0058BBF4
 0058C87F    mov         ebx,eax
 0058C881    mov         eax,dword ptr [ebp-8]
 0058C884    call        0058BBF4
 0058C889    cmp         ebx,eax
>0058C88B    je          0058C896
 0058C88D    mov         byte ptr [ebp-9],0
>0058C891    jmp         0058C951
 0058C896    mov         eax,dword ptr [ebp-4]
 0058C899    call        0058BBF4
 0058C89E    test        eax,eax
>0058C8A0    jne         0058C8B7
 0058C8A2    mov         eax,dword ptr [ebp-8]
 0058C8A5    call        0058BBF4
 0058C8AA    test        eax,eax
>0058C8AC    jne         0058C8B7
 0058C8AE    mov         byte ptr [ebp-9],1
>0058C8B2    jmp         0058C951
 0058C8B7    mov         dl,1
 0058C8B9    mov         eax,[00642BA0];TMemoryStream
 0058C8BE    call        TObject.Create;TMemoryStream.Create
 0058C8C3    mov         dword ptr [ebp-10],eax
 0058C8C6    xor         eax,eax
 0058C8C8    push        ebp
 0058C8C9    push        58C94A
 0058C8CE    push        dword ptr fs:[eax]
 0058C8D1    mov         dword ptr fs:[eax],esp
 0058C8D4    mov         edx,dword ptr [ebp-10]
 0058C8D7    mov         eax,dword ptr [ebp-4]
 0058C8DA    call        TCustomImageList.WriteData
 0058C8DF    mov         dl,1
 0058C8E1    mov         eax,[00642BA0];TMemoryStream
 0058C8E6    call        TObject.Create;TMemoryStream.Create
 0058C8EB    mov         dword ptr [ebp-14],eax
 0058C8EE    xor         eax,eax
 0058C8F0    push        ebp
 0058C8F1    push        58C92D
 0058C8F6    push        dword ptr fs:[eax]
 0058C8F9    mov         dword ptr fs:[eax],esp
 0058C8FC    mov         edx,dword ptr [ebp-14]
 0058C8FF    mov         eax,dword ptr [ebp-8]
 0058C902    call        TCustomImageList.WriteData
 0058C907    push        ebp
 0058C908    mov         edx,dword ptr [ebp-14]
 0058C90B    mov         eax,dword ptr [ebp-10]
 0058C90E    call        0058C808
 0058C913    pop         ecx
 0058C914    mov         byte ptr [ebp-9],al
 0058C917    xor         eax,eax
 0058C919    pop         edx
 0058C91A    pop         ecx
 0058C91B    pop         ecx
 0058C91C    mov         dword ptr fs:[eax],edx
 0058C91F    push        58C934
 0058C924    mov         eax,dword ptr [ebp-14]
 0058C927    call        TObject.Free
 0058C92C    ret
>0058C92D    jmp         @HandleFinally
>0058C932    jmp         0058C924
 0058C934    xor         eax,eax
 0058C936    pop         edx
 0058C937    pop         ecx
 0058C938    pop         ecx
 0058C939    mov         dword ptr fs:[eax],edx
 0058C93C    push        58C951
 0058C941    mov         eax,dword ptr [ebp-10]
 0058C944    call        TObject.Free
 0058C949    ret
>0058C94A    jmp         @HandleFinally
>0058C94F    jmp         0058C941
 0058C951    mov         al,byte ptr [ebp-9]
 0058C954    pop         ebx
 0058C955    mov         esp,ebp
 0058C957    pop         ebp
 0058C958    ret
end;*}

//0058C95C
function DoWrite:Boolean;
begin
{*
 0058C95C    push        ebp
 0058C95D    mov         ebp,esp
 0058C95F    push        ecx
 0058C960    mov         eax,dword ptr [ebp+8]
 0058C963    mov         eax,dword ptr [eax-4]
 0058C966    cmp         dword ptr [eax+20],0
>0058C96A    je          0058C9A7
 0058C96C    mov         eax,dword ptr [ebp+8]
 0058C96F    mov         eax,dword ptr [eax-4]
 0058C972    mov         eax,dword ptr [eax+20]
 0058C975    mov         edx,dword ptr ds:[58B254];TCustomImageList
 0058C97B    call        @IsClass
 0058C980    test        al,al
>0058C982    je          0058C9A0
 0058C984    mov         eax,dword ptr [ebp+8]
 0058C987    mov         eax,dword ptr [eax-4]
 0058C98A    mov         edx,dword ptr [eax+20]
 0058C98D    mov         eax,dword ptr [ebp+8]
 0058C990    mov         eax,dword ptr [eax-8]
 0058C993    call        0058C864
 0058C998    test        al,al
>0058C99A    je          0058C9A0
 0058C99C    xor         eax,eax
>0058C99E    jmp         0058C9A2
 0058C9A0    mov         al,1
 0058C9A2    mov         byte ptr [ebp-1],al
>0058C9A5    jmp         0058C9B8
 0058C9A7    mov         eax,dword ptr [ebp+8]
 0058C9AA    mov         eax,dword ptr [eax-8]
 0058C9AD    call        0058BBF4
 0058C9B2    test        eax,eax
 0058C9B4    setg        byte ptr [ebp-1]
 0058C9B8    mov         al,byte ptr [ebp-1]
 0058C9BB    pop         ecx
 0058C9BC    pop         ebp
 0058C9BD    ret
*}
end;

//0058C9C0
procedure TCustomImageList.DefineProperties(Filer:TFiler);
begin
{*
 0058C9C0    push        ebp
 0058C9C1    mov         ebp,esp
 0058C9C3    add         esp,0FFFFFFF8
 0058C9C6    push        ebx
 0058C9C7    mov         dword ptr [ebp-4],edx
 0058C9CA    mov         dword ptr [ebp-8],eax
 0058C9CD    mov         edx,dword ptr [ebp-4]
 0058C9D0    mov         eax,dword ptr [ebp-8]
 0058C9D3    call        TComponent.DefineProperties
 0058C9D8    mov         eax,dword ptr [ebp-8]
 0058C9DB    push        eax
 0058C9DC    push        58CE90;TCustomImageList.ReadData
 0058C9E1    mov         eax,dword ptr [ebp-8]
 0058C9E4    push        eax
 0058C9E5    push        58CF24;TCustomImageList.WriteData
 0058C9EA    push        ebp
 0058C9EB    call        DoWrite
 0058C9F0    pop         ecx
 0058C9F1    mov         ecx,eax
 0058C9F3    mov         edx,58CA10;'Bitmap'
 0058C9F8    mov         eax,dword ptr [ebp-4]
 0058C9FB    mov         ebx,dword ptr [eax]
 0058C9FD    call        dword ptr [ebx+8]
 0058CA00    pop         ebx
 0058CA01    pop         ecx
 0058CA02    pop         ecx
 0058CA03    pop         ebp
 0058CA04    ret
*}
end;

//0058CA18
{*procedure sub_0058CA18(?:?; ?:?);
begin
 0058CA18    push        ebp
 0058CA19    mov         ebp,esp
 0058CA1B    add         esp,0FFFFFFAC
 0058CA1E    mov         dword ptr [ebp-8],edx
 0058CA21    mov         dword ptr [ebp-4],eax
 0058CA24    lea         edx,[ebp-24]
 0058CA27    mov         ecx,4
 0058CA2C    mov         eax,dword ptr [ebp-8]
 0058CA2F    call        TStream.ReadBuffer
 0058CA34    lea         edx,[ebp-2C]
 0058CA37    mov         ecx,4
 0058CA3C    mov         eax,dword ptr [ebp-8]
 0058CA3F    call        TStream.ReadBuffer
 0058CA44    mov         dl,1
 0058CA46    mov         eax,[005BEDD4];TBitmap
 0058CA4B    call        TBitmap.Create;TBitmap.Create
 0058CA50    mov         dword ptr [ebp-0C],eax
 0058CA53    xor         eax,eax
 0058CA55    push        ebp
 0058CA56    push        58CCB7
 0058CA5B    push        dword ptr fs:[eax]
 0058CA5E    mov         dword ptr fs:[eax],esp
 0058CA61    mov         eax,dword ptr [ebp-8]
 0058CA64    call        TStream.GetPosition
 0058CA69    mov         dword ptr [ebp-28],eax
 0058CA6C    mov         edx,dword ptr [ebp-8]
 0058CA6F    mov         eax,dword ptr [ebp-0C]
 0058CA72    mov         ecx,dword ptr [eax]
 0058CA74    call        dword ptr [ecx+54];TBitmap.LoadFromStream
 0058CA77    mov         eax,dword ptr [ebp-28]
 0058CA7A    add         eax,dword ptr [ebp-24]
 0058CA7D    cdq
 0058CA7E    push        edx
 0058CA7F    push        eax
 0058CA80    mov         eax,dword ptr [ebp-8]
 0058CA83    call        TStream.SetPosition
 0058CA88    mov         dl,1
 0058CA8A    mov         eax,[005BEDD4];TBitmap
 0058CA8F    call        TBitmap.Create;TBitmap.Create
 0058CA94    mov         dword ptr [ebp-14],eax
 0058CA97    xor         eax,eax
 0058CA99    push        ebp
 0058CA9A    push        58CC9A
 0058CA9F    push        dword ptr fs:[eax]
 0058CAA2    mov         dword ptr fs:[eax],esp
 0058CAA5    mov         edx,dword ptr [ebp-8]
 0058CAA8    mov         eax,dword ptr [ebp-14]
 0058CAAB    mov         ecx,dword ptr [eax]
 0058CAAD    call        dword ptr [ecx+54];TBitmap.LoadFromStream
 0058CAB0    mov         dl,1
 0058CAB2    mov         eax,[005BEDD4];TBitmap
 0058CAB7    call        TBitmap.Create;TBitmap.Create
 0058CABC    mov         dword ptr [ebp-10],eax
 0058CABF    mov         eax,dword ptr [ebp-4]
 0058CAC2    mov         edx,dword ptr [eax+34]
 0058CAC5    mov         eax,dword ptr [ebp-10]
 0058CAC8    mov         ecx,dword ptr [eax]
 0058CACA    call        dword ptr [ecx+40];TBitmap.SetWidth
 0058CACD    mov         eax,dword ptr [ebp-4]
 0058CAD0    mov         edx,dword ptr [eax+30]
 0058CAD3    mov         eax,dword ptr [ebp-10]
 0058CAD6    mov         ecx,dword ptr [eax]
 0058CAD8    call        dword ptr [ecx+34];TBitmap.SetHeight
 0058CADB    mov         dl,1
 0058CADD    mov         eax,[005BEDD4];TBitmap
 0058CAE2    call        TBitmap.Create;TBitmap.Create
 0058CAE7    mov         dword ptr [ebp-18],eax
 0058CAEA    mov         dl,1
 0058CAEC    mov         eax,dword ptr [ebp-18]
 0058CAEF    call        TBitmap.SetMonochrome
 0058CAF4    mov         eax,dword ptr [ebp-4]
 0058CAF7    mov         edx,dword ptr [eax+34]
 0058CAFA    mov         eax,dword ptr [ebp-18]
 0058CAFD    mov         ecx,dword ptr [eax]
 0058CAFF    call        dword ptr [ecx+40];TBitmap.SetWidth
 0058CB02    mov         eax,dword ptr [ebp-4]
 0058CB05    mov         edx,dword ptr [eax+30]
 0058CB08    mov         eax,dword ptr [ebp-18]
 0058CB0B    mov         ecx,dword ptr [eax]
 0058CB0D    call        dword ptr [ecx+34];TBitmap.SetHeight
 0058CB10    mov         eax,dword ptr [ebp-4]
 0058CB13    mov         eax,dword ptr [eax+30]
 0058CB16    push        eax
 0058CB17    lea         eax,[ebp-44]
 0058CB1A    push        eax
 0058CB1B    mov         eax,dword ptr [ebp-4]
 0058CB1E    mov         ecx,dword ptr [eax+34]
 0058CB21    xor         edx,edx
 0058CB23    xor         eax,eax
 0058CB25    call        Rect
 0058CB2A    mov         eax,dword ptr [ebp-4]
 0058CB2D    call        0058CFA8
 0058CB32    xor         eax,eax
 0058CB34    push        ebp
 0058CB35    push        58CC7D
 0058CB3A    push        dword ptr fs:[eax]
 0058CB3D    mov         dword ptr fs:[eax],esp
 0058CB40    mov         eax,dword ptr [ebp-0C]
 0058CB43    mov         edx,dword ptr [eax]
 0058CB45    call        dword ptr [edx+20];TBitmap.GetHeight
 0058CB48    mov         edx,dword ptr [ebp-4]
 0058CB4B    mov         ecx,dword ptr [edx+30]
 0058CB4E    cdq
 0058CB4F    idiv        eax,ecx
 0058CB51    dec         eax
 0058CB52    test        eax,eax
>0058CB54    jl          0058CC57
 0058CB5A    inc         eax
 0058CB5B    mov         dword ptr [ebp-30],eax
 0058CB5E    mov         dword ptr [ebp-20],0
 0058CB65    cmp         dword ptr [ebp-2C],0
>0058CB69    je          0058CC57
 0058CB6F    mov         eax,dword ptr [ebp-0C]
 0058CB72    mov         edx,dword ptr [eax]
 0058CB74    call        dword ptr [edx+2C];TBitmap.GetWidth
 0058CB77    mov         edx,dword ptr [ebp-4]
 0058CB7A    mov         ecx,dword ptr [edx+34]
 0058CB7D    cdq
 0058CB7E    idiv        eax,ecx
 0058CB80    dec         eax
 0058CB81    test        eax,eax
>0058CB83    jl          0058CC4B
 0058CB89    inc         eax
 0058CB8A    mov         dword ptr [ebp-34],eax
 0058CB8D    mov         dword ptr [ebp-1C],0
 0058CB94    cmp         dword ptr [ebp-2C],0
>0058CB98    je          0058CC4B
 0058CB9E    mov         eax,dword ptr [ebp-4]
 0058CBA1    mov         eax,dword ptr [eax+30]
 0058CBA4    push        eax
 0058CBA5    lea         eax,[ebp-54]
 0058CBA8    push        eax
 0058CBA9    mov         eax,dword ptr [ebp-4]
 0058CBAC    mov         ecx,dword ptr [eax+34]
 0058CBAF    mov         eax,dword ptr [ebp-4]
 0058CBB2    mov         edx,dword ptr [eax+30]
 0058CBB5    imul        edx,dword ptr [ebp-20]
 0058CBB9    mov         eax,dword ptr [ebp-4]
 0058CBBC    mov         eax,dword ptr [eax+34]
 0058CBBF    imul        eax,dword ptr [ebp-1C]
 0058CBC3    call        Bounds
 0058CBC8    lea         eax,[ebp-54]
 0058CBCB    push        eax
 0058CBCC    mov         eax,dword ptr [ebp-0C]
 0058CBCF    call        TBitmap.GetCanvas
 0058CBD4    push        eax
 0058CBD5    mov         eax,dword ptr [ebp-10]
 0058CBD8    call        TBitmap.GetCanvas
 0058CBDD    lea         edx,[ebp-44]
 0058CBE0    pop         ecx
 0058CBE1    call        005C0FC8
 0058CBE6    mov         eax,dword ptr [ebp-4]
 0058CBE9    mov         eax,dword ptr [eax+30]
 0058CBEC    push        eax
 0058CBED    lea         eax,[ebp-54]
 0058CBF0    push        eax
 0058CBF1    mov         eax,dword ptr [ebp-4]
 0058CBF4    mov         ecx,dword ptr [eax+34]
 0058CBF7    mov         eax,dword ptr [ebp-4]
 0058CBFA    mov         edx,dword ptr [eax+30]
 0058CBFD    imul        edx,dword ptr [ebp-20]
 0058CC01    mov         eax,dword ptr [ebp-4]
 0058CC04    mov         eax,dword ptr [eax+34]
 0058CC07    imul        eax,dword ptr [ebp-1C]
 0058CC0B    call        Bounds
 0058CC10    lea         eax,[ebp-54]
 0058CC13    push        eax
 0058CC14    mov         eax,dword ptr [ebp-14]
 0058CC17    call        TBitmap.GetCanvas
 0058CC1C    push        eax
 0058CC1D    mov         eax,dword ptr [ebp-18]
 0058CC20    call        TBitmap.GetCanvas
 0058CC25    lea         edx,[ebp-44]
 0058CC28    pop         ecx
 0058CC29    call        005C0FC8
 0058CC2E    mov         ecx,dword ptr [ebp-18]
 0058CC31    mov         edx,dword ptr [ebp-10]
 0058CC34    mov         eax,dword ptr [ebp-4]
 0058CC37    call        0058BA04
 0058CC3C    dec         dword ptr [ebp-2C]
 0058CC3F    inc         dword ptr [ebp-1C]
 0058CC42    dec         dword ptr [ebp-34]
>0058CC45    jne         0058CB94
 0058CC4B    inc         dword ptr [ebp-20]
 0058CC4E    dec         dword ptr [ebp-30]
>0058CC51    jne         0058CB65
 0058CC57    xor         eax,eax
 0058CC59    pop         edx
 0058CC5A    pop         ecx
 0058CC5B    pop         ecx
 0058CC5C    mov         dword ptr fs:[eax],edx
 0058CC5F    push        58CC84
 0058CC64    mov         eax,dword ptr [ebp-10]
 0058CC67    call        TObject.Free
 0058CC6C    mov         eax,dword ptr [ebp-18]
 0058CC6F    call        TObject.Free
 0058CC74    mov         eax,dword ptr [ebp-4]
 0058CC77    call        0058CFB8
 0058CC7C    ret
>0058CC7D    jmp         @HandleFinally
>0058CC82    jmp         0058CC64
 0058CC84    xor         eax,eax
 0058CC86    pop         edx
 0058CC87    pop         ecx
 0058CC88    pop         ecx
 0058CC89    mov         dword ptr fs:[eax],edx
 0058CC8C    push        58CCA1
 0058CC91    mov         eax,dword ptr [ebp-14]
 0058CC94    call        TObject.Free
 0058CC99    ret
>0058CC9A    jmp         @HandleFinally
>0058CC9F    jmp         0058CC91
 0058CCA1    xor         eax,eax
 0058CCA3    pop         edx
 0058CCA4    pop         ecx
 0058CCA5    pop         ecx
 0058CCA6    mov         dword ptr fs:[eax],edx
 0058CCA9    push        58CCBE
 0058CCAE    mov         eax,dword ptr [ebp-0C]
 0058CCB1    call        TObject.Free
 0058CCB6    ret
>0058CCB7    jmp         @HandleFinally
>0058CCBC    jmp         0058CCAE
 0058CCBE    mov         esp,ebp
 0058CCC0    pop         ebp
 0058CCC1    ret
end;*}

//0058CCC4
{*procedure sub_0058CCC4(?:?; ?:?);
begin
 0058CCC4    push        ebp
 0058CCC5    mov         ebp,esp
 0058CCC7    add         esp,0FFFFFFEC
 0058CCCA    push        ebx
 0058CCCB    mov         dword ptr [ebp-8],edx
 0058CCCE    mov         dword ptr [ebp-4],eax
 0058CCD1    push        0
 0058CCD3    mov         ecx,dword ptr [ebp-8]
 0058CCD6    mov         dl,1
 0058CCD8    mov         eax,[00642DA4];TStreamAdapter
 0058CCDD    call        TStreamAdapter.Create;TStreamAdapter.Create
 0058CCE2    mov         dword ptr [ebp-0C],eax
 0058CCE5    xor         eax,eax
 0058CCE7    push        ebp
 0058CCE8    push        58CD23
 0058CCED    push        dword ptr fs:[eax]
 0058CCF0    mov         dword ptr fs:[eax],esp
 0058CCF3    mov         eax,dword ptr [ebp-0C]
 0058CCF6    test        eax,eax
>0058CCF8    je          0058CCFD
 0058CCFA    sub         eax,0FFFFFFEC
 0058CCFD    push        eax
 0058CCFE    call        COMCTL32.ImageList_Read
 0058CD03    mov         edx,eax
 0058CD05    mov         eax,dword ptr [ebp-4]
 0058CD08    call        0058B7FC
 0058CD0D    xor         eax,eax
 0058CD0F    pop         edx
 0058CD10    pop         ecx
 0058CD11    pop         ecx
 0058CD12    mov         dword ptr fs:[eax],edx
 0058CD15    push        58CD2A
 0058CD1A    mov         eax,dword ptr [ebp-0C]
 0058CD1D    call        TObject.Free
 0058CD22    ret
>0058CD23    jmp         @HandleFinally
>0058CD28    jmp         0058CD1A
 0058CD2A    mov         eax,dword ptr [ebp-4]
 0058CD2D    call        0058B5D4
 0058CD32    test        al,al
>0058CD34    jne         0058CE88
 0058CD3A    mov         byte ptr [ebp-11],0
 0058CD3E    mov         dl,1
 0058CD40    mov         eax,[00642BA0];TMemoryStream
 0058CD45    call        TObject.Create;TMemoryStream.Create
 0058CD4A    mov         dword ptr [ebp-10],eax
 0058CD4D    xor         eax,eax
 0058CD4F    push        ebp
 0058CD50    push        58CE5E
 0058CD55    push        dword ptr fs:[eax]
 0058CD58    mov         dword ptr fs:[eax],esp
 0058CD5B    push        0
 0058CD5D    push        0
 0058CD5F    mov         eax,dword ptr [ebp-8]
 0058CD62    call        TStream.SetPosition
 0058CD67    mov         edx,dword ptr [ebp-8]
 0058CD6A    mov         eax,dword ptr [ebp-10]
 0058CD6D    call        00649050
 0058CD72    push        0
 0058CD74    push        12
 0058CD76    mov         eax,dword ptr [ebp-10]
 0058CD79    call        TStream.SetPosition
 0058CD7E    lea         edx,[ebp-12]
 0058CD81    mov         ecx,1
 0058CD86    mov         eax,dword ptr [ebp-10]
 0058CD89    mov         ebx,dword ptr [eax]
 0058CD8B    call        dword ptr [ebx+8];TMemoryStream.sub_00648E98
 0058CD8E    dec         eax
>0058CD8F    jne         0058CDDD
 0058CD91    cmp         byte ptr [ebp-12],1
>0058CD95    jne         0058CDDD
 0058CD97    push        0
 0058CD99    push        38
 0058CD9B    mov         eax,dword ptr [ebp-10]
 0058CD9E    call        TStream.SetPosition
 0058CDA3    lea         edx,[ebp-13]
 0058CDA6    mov         ecx,1
 0058CDAB    mov         eax,dword ptr [ebp-10]
 0058CDAE    mov         ebx,dword ptr [eax]
 0058CDB0    call        dword ptr [ebx+8];TMemoryStream.sub_00648E98
 0058CDB3    dec         eax
>0058CDB4    jne         0058CDDD
 0058CDB6    mov         al,byte ptr [ebp-13]
 0058CDB9    or          byte ptr [ebp-12],al
 0058CDBC    push        0
 0058CDBE    push        12
 0058CDC0    mov         eax,dword ptr [ebp-10]
 0058CDC3    call        TStream.SetPosition
 0058CDC8    lea         edx,[ebp-12]
 0058CDCB    mov         ecx,1
 0058CDD0    mov         eax,dword ptr [ebp-10]
 0058CDD3    mov         ebx,dword ptr [eax]
 0058CDD5    call        dword ptr [ebx+0C];TMemoryStream.sub_00649238
 0058CDD8    dec         eax
 0058CDD9    sete        byte ptr [ebp-11]
 0058CDDD    cmp         byte ptr [ebp-11],0
>0058CDE1    je          0058CE48
 0058CDE3    push        0
 0058CDE5    push        0
 0058CDE7    mov         eax,dword ptr [ebp-10]
 0058CDEA    call        TStream.SetPosition
 0058CDEF    push        0
 0058CDF1    mov         ecx,dword ptr [ebp-10]
 0058CDF4    mov         dl,1
 0058CDF6    mov         eax,[00642DA4];TStreamAdapter
 0058CDFB    call        TStreamAdapter.Create;TStreamAdapter.Create
 0058CE00    mov         dword ptr [ebp-0C],eax
 0058CE03    xor         eax,eax
 0058CE05    push        ebp
 0058CE06    push        58CE41
 0058CE0B    push        dword ptr fs:[eax]
 0058CE0E    mov         dword ptr fs:[eax],esp
 0058CE11    mov         eax,dword ptr [ebp-0C]
 0058CE14    test        eax,eax
>0058CE16    je          0058CE1B
 0058CE18    sub         eax,0FFFFFFEC
 0058CE1B    push        eax
 0058CE1C    call        COMCTL32.ImageList_Read
 0058CE21    mov         edx,eax
 0058CE23    mov         eax,dword ptr [ebp-4]
 0058CE26    call        0058B7FC
 0058CE2B    xor         eax,eax
 0058CE2D    pop         edx
 0058CE2E    pop         ecx
 0058CE2F    pop         ecx
 0058CE30    mov         dword ptr fs:[eax],edx
 0058CE33    push        58CE48
 0058CE38    mov         eax,dword ptr [ebp-0C]
 0058CE3B    call        TObject.Free
 0058CE40    ret
>0058CE41    jmp         @HandleFinally
>0058CE46    jmp         0058CE38
 0058CE48    xor         eax,eax
 0058CE4A    pop         edx
 0058CE4B    pop         ecx
 0058CE4C    pop         ecx
 0058CE4D    mov         dword ptr fs:[eax],edx
 0058CE50    push        58CE65
 0058CE55    mov         eax,dword ptr [ebp-10]
 0058CE58    call        TObject.Free
 0058CE5D    ret
>0058CE5E    jmp         @HandleFinally
>0058CE63    jmp         0058CE55
 0058CE65    mov         eax,dword ptr [ebp-4]
 0058CE68    call        0058B5D4
 0058CE6D    test        al,al
>0058CE6F    jne         0058CE88
 0058CE71    mov         ecx,dword ptr ds:[6E9E24];^gvar_0063CA58
 0058CE77    mov         dl,1
 0058CE79    mov         eax,[00641F14];EReadError
 0058CE7E    call        Exception.Create;EReadError.Create
 0058CE83    call        @RaiseExcept
 0058CE88    pop         ebx
 0058CE89    mov         esp,ebp
 0058CE8B    pop         ebp
 0058CE8C    ret
end;*}

//0058CE90
procedure TCustomImageList.ReadData(Stream:TStream);
begin
{*
 0058CE90    push        ebp
 0058CE91    mov         ebp,esp
 0058CE93    add         esp,0FFFFFFE8
 0058CE96    push        ebx
 0058CE97    mov         dword ptr [ebp-8],edx
 0058CE9A    mov         dword ptr [ebp-4],eax
 0058CE9D    mov         eax,dword ptr [ebp-4]
 0058CEA0    call        0058B900
 0058CEA5    mov         eax,dword ptr [ebp-8]
 0058CEA8    call        TStream.GetPosition
 0058CEAD    mov         dword ptr [ebp-18],eax
 0058CEB0    lea         edx,[ebp-0C]
 0058CEB3    mov         ecx,4
 0058CEB8    mov         eax,dword ptr [ebp-8]
 0058CEBB    mov         ebx,dword ptr [eax]
 0058CEBD    call        dword ptr [ebx+8]
 0058CEC0    lea         edx,[ebp-10]
 0058CEC3    mov         ecx,4
 0058CEC8    mov         eax,dword ptr [ebp-8]
 0058CECB    mov         ebx,dword ptr [eax]
 0058CECD    call        dword ptr [ebx+8]
 0058CED0    mov         al,byte ptr [ebp-0C]
 0058CED3    and         al,0FF
 0058CED5    mov         byte ptr [ebp-11],al
 0058CED8    mov         ax,word ptr [ebp-0C]
 0058CEDC    shr         ax,8
 0058CEE0    mov         byte ptr [ebp-12],al
 0058CEE3    mov         eax,dword ptr [ebp-18]
 0058CEE6    cdq
 0058CEE7    push        edx
 0058CEE8    push        eax
 0058CEE9    mov         eax,dword ptr [ebp-8]
 0058CEEC    call        TStream.SetPosition
 0058CEF1    mov         eax,dword ptr [ebp-0C]
 0058CEF4    cmp         eax,dword ptr [ebp-10]
>0058CEF7    je          0058CF12
 0058CEF9    cmp         byte ptr [ebp-11],49
>0058CEFD    jne         0058CF12
 0058CEFF    cmp         byte ptr [ebp-12],4C
>0058CF03    jne         0058CF12
 0058CF05    mov         edx,dword ptr [ebp-8]
 0058CF08    mov         eax,dword ptr [ebp-4]
 0058CF0B    call        0058CCC4
>0058CF10    jmp         0058CF1D
 0058CF12    mov         edx,dword ptr [ebp-8]
 0058CF15    mov         eax,dword ptr [ebp-4]
 0058CF18    call        0058CA18
 0058CF1D    pop         ebx
 0058CF1E    mov         esp,ebp
 0058CF20    pop         ebp
 0058CF21    ret
*}
end;

//0058CF24
procedure TCustomImageList.WriteData(Stream:TStream);
begin
{*
 0058CF24    push        ebp
 0058CF25    mov         ebp,esp
 0058CF27    add         esp,0FFFFFFF4
 0058CF2A    mov         dword ptr [ebp-8],edx
 0058CF2D    mov         dword ptr [ebp-4],eax
 0058CF30    push        0
 0058CF32    mov         ecx,dword ptr [ebp-8]
 0058CF35    mov         dl,1
 0058CF37    mov         eax,[00642DA4];TStreamAdapter
 0058CF3C    call        TStreamAdapter.Create
 0058CF41    mov         dword ptr [ebp-0C],eax
 0058CF44    xor         eax,eax
 0058CF46    push        ebp
 0058CF47    push        58CF9C
 0058CF4C    push        dword ptr fs:[eax]
 0058CF4F    mov         dword ptr fs:[eax],esp
 0058CF52    mov         eax,dword ptr [ebp-0C]
 0058CF55    test        eax,eax
>0058CF57    je          0058CF5C
 0058CF59    sub         eax,0FFFFFFEC
 0058CF5C    push        eax
 0058CF5D    mov         eax,dword ptr [ebp-4]
 0058CF60    call        0058B86C
 0058CF65    push        eax
 0058CF66    call        COMCTL32.ImageList_Write
 0058CF6B    test        eax,eax
>0058CF6D    jne         0058CF86
 0058CF6F    mov         ecx,dword ptr ds:[6E9E28]
 0058CF75    mov         dl,1
 0058CF77    mov         eax,[00641F6C];EWriteError
 0058CF7C    call        Exception.Create
 0058CF81    call        @RaiseExcept
 0058CF86    xor         eax,eax
 0058CF88    pop         edx
 0058CF89    pop         ecx
 0058CF8A    pop         ecx
 0058CF8B    mov         dword ptr fs:[eax],edx
 0058CF8E    push        58CFA3
 0058CF93    mov         eax,dword ptr [ebp-0C]
 0058CF96    call        TObject.Free
 0058CF9B    ret
>0058CF9C    jmp         @HandleFinally
>0058CFA1    jmp         0058CF93
 0058CFA3    mov         esp,ebp
 0058CFA5    pop         ebp
 0058CFA6    ret
*}
end;

//0058CFA8
{*procedure sub_0058CFA8(?:?);
begin
 0058CFA8    push        ebp
 0058CFA9    mov         ebp,esp
 0058CFAB    push        ecx
 0058CFAC    mov         dword ptr [ebp-4],eax
 0058CFAF    mov         eax,dword ptr [ebp-4]
 0058CFB2    inc         dword ptr [eax+5C]
 0058CFB5    pop         ecx
 0058CFB6    pop         ebp
 0058CFB7    ret
end;*}

//0058CFB8
{*procedure sub_0058CFB8(?:?);
begin
 0058CFB8    push        ebp
 0058CFB9    mov         ebp,esp
 0058CFBB    push        ecx
 0058CFBC    push        esi
 0058CFBD    mov         dword ptr [ebp-4],eax
 0058CFC0    mov         eax,dword ptr [ebp-4]
 0058CFC3    cmp         dword ptr [eax+5C],0
>0058CFC7    jle         0058CFCF
 0058CFC9    mov         eax,dword ptr [ebp-4]
 0058CFCC    dec         dword ptr [eax+5C]
 0058CFCF    mov         eax,dword ptr [ebp-4]
 0058CFD2    cmp         byte ptr [eax+58],0
>0058CFD6    je          0058CFEB
 0058CFD8    mov         eax,dword ptr [ebp-4]
 0058CFDB    mov         byte ptr [eax+58],0
 0058CFDF    mov         eax,dword ptr [ebp-4]
 0058CFE2    mov         si,0FFEF
 0058CFE6    call        @CallDynaInst
 0058CFEB    pop         esi
 0058CFEC    pop         ecx
 0058CFED    pop         ebp
 0058CFEE    ret
end;*}

//0058D038
procedure TChangeLink.sub_0058D038;
begin
{*
 0058D038    push        ebp
 0058D039    mov         ebp,esp
 0058D03B    push        ecx
 0058D03C    push        ebx
 0058D03D    mov         dword ptr [ebp-4],eax
 0058D040    mov         eax,dword ptr [ebp-4]
 0058D043    cmp         word ptr [eax+0A],0;TChangeLink.?fA:word
>0058D048    je          0058D059
 0058D04A    mov         ebx,dword ptr [ebp-4]
 0058D04D    mov         eax,dword ptr [ebp-4]
 0058D050    mov         edx,dword ptr [eax+4];TChangeLink.FSender:TCustomImageList
 0058D053    mov         eax,dword ptr [ebx+0C];TChangeLink.?fC:TCustomActionList
 0058D056    call        dword ptr [ebx+8];TChangeLink.FOnChange
 0058D059    pop         ebx
 0058D05A    pop         ecx
 0058D05B    pop         ebp
 0058D05C    ret
*}
end;

//0058D060
procedure Finalization;
begin
{*
 0058D060    push        ebp
 0058D061    mov         ebp,esp
 0058D063    xor         eax,eax
 0058D065    push        ebp
 0058D066    push        58D085
 0058D06B    push        dword ptr fs:[eax]
 0058D06E    mov         dword ptr fs:[eax],esp
 0058D071    inc         dword ptr ds:[6ECCE4]
 0058D077    xor         eax,eax
 0058D079    pop         edx
 0058D07A    pop         ecx
 0058D07B    pop         ecx
 0058D07C    mov         dword ptr fs:[eax],edx
 0058D07F    push        58D08C
 0058D084    ret
>0058D085    jmp         @HandleFinally
>0058D08A    jmp         0058D084
 0058D08C    pop         ebp
 0058D08D    ret
*}
end;

end.