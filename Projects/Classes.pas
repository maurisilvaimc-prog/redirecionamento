//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Classes;

interface

uses
  SysUtils, Classes, system, Menus;

type
  TDuplicates = (dupIgnore, dupAccept, dupError);
  TStringItem = TStringItem = record//size=8
f0:String;//f0
end;;
  TStringItemList = array [1..134217728] of TStringItem;
  TIdentMapEntry = TIdentMapEntry = record//size=8
f4:String;//f4
end;;
  TBitSet = set of TBitEnum;
  TAlignment = (taLeftJustify, taRightJustify, taCenter);
  TLeftRight = (taLeftJustify, taRightJustify);
  TBiDiMode = (bdLeftToRight, bdRightToLeft, bdRightToLeftNoAlign, bdRightToLeftReadingOnly);
  THelpType = (htKeyword, htContext);
  TNotifyEvent = procedure(Sender:TObject) of object;;
  EStreamError = class(Exception)
  end;
  EFCreateError = class(EStreamError)
  end;
  EFOpenError = class(EStreamError)
  end;
  EFilerError = class(EStreamError)
  end;
  EReadError = class(EFilerError)
  end;
  EWriteError = class(EFilerError)
  end;
  EClassNotFound = class(EFilerError)
  end;
  EResNotFound = class(Exception)
  end;
  EListError = class(Exception)
  end;
  EBitsError = class(Exception)
  end;
  EStringListError = class(Exception)
  end;
  EComponentError = class(Exception)
  end;
  EOutOfResources = class(EOutOfMemory)
  end;
  EInvalidOperation = class(Exception)
  end;
  TList = class(TObject)
  public
    FList:PPointerList;//f4
    FCount:Integer;//f8
    FCapacity:Integer;//fC
    destructor Destroy; virtual;//00644DE0
    procedure v0; virtual;//v0//006450E8
    //procedure v4(?:?; ?:?); virtual;//v4//006455B8
    procedure v8; virtual;//v8//00644E64
    //procedure vC(?:?; ?:?); virtual;//vC//00644F20
    function Add(Item:Pointer):Integer;//00644E0C
    procedure Delete(Index:Integer);//00644E84
    procedure Exchange(Index1:Integer; Index2:Integer);//00644FC0
    function First:Pointer;//00645080
    function Get(Index:Integer):Pointer;//006450A0
    function IndexOf(Item:Pointer):Integer;//00645140
    procedure Insert(Index:Integer; Item:Pointer);//0064518C
    procedure Put(Index:Integer; Item:Pointer);//006452E4
    function Remove(Item:Pointer):Integer;//00645374
    procedure SetCapacity(NewCapacity:Integer);//006453A8
  end;
  TThreadList = class(TObject)
  public
    FList:TList;//f4
    FLock:TRTLCriticalSection;//f8
    FDuplicates:TDuplicates;//f20
    constructor Create;//00645924
    destructor Destroy;//0064598C
    function LockList:TList;//00645A94
    procedure UnlockList;//00645B10
  end;
  TBits = class(TObject)
  public
    FSize:Integer;//f4
    FBits:Pointer;//f8
    procedure Error;//00645B7C
    procedure SetSize(Value:Integer);//00645BC8
    procedure SetBit(Index:Integer; Value:Boolean);//00645C9C
    function GetBit(Index:Integer):Boolean;//00645CC8
  end;
  TPersistent = class(TObject)
  public
    destructor Destroy; virtual;//00645D98
    procedure AssignTo(Dest:TPersistent); virtual;//v0//00645ED8
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00645EF4
    procedure Assign(Source:TPersistent); virtual;//v8//00645DD4
    //procedure sub_00645F04(?:?); dynamic;//00645F04
    procedure sub_00645FBC; dynamic;//00645FBC
  end;
  TInterfacedPersistent = class(TPersistent)
  public
    FOwnerInterface:IInterface;//f4
    procedure AfterConstruction; virtual;//00645FD4
    //function vC(?:?; ?:?):?; virtual;//vC//00646090
  end;
  TCollectionItem = class(TPersistent)
  public
    FCollection:TCollection;//f4
    FID:Integer;//f8
    destructor Destroy; virtual;//00646224
    //procedure vC(?:?); virtual;//vC//006462E0
    //procedure v10(?:?); virtual;//v10//006463F0
    //procedure v14(?:?); virtual;//v14//00646450
    //procedure v18(?:?); virtual;//v18//00646434
    constructor v1C; virtual;//v1C//006461DC
    //procedure sub_00645F04(?:?); dynamic;//00646314
    procedure sub_00645FBC; dynamic;//006463D4
  end;
  TCollection = class(TPersistent)
  public
    FItemClass:TCollectionItemClass;//f4
    FItems:TList;//f8
    FUpdateCount:Integer;//fC
    FNextID:Integer;//f10
    FPropName:String;//f14
    destructor Destroy; virtual;//006464FC
    procedure Assign(Source:TPersistent); virtual;//v8//0064658C
    //procedure vC(?:?); virtual;//vC//00646B90
    //procedure v10(?:?); virtual;//v10//00646BA0
    //procedure v14(?:?; ?:?); virtual;//v14//00646BB0
    //procedure v18(?:?); virtual;//v18//00646B0C
    //procedure v1C(?:?); virtual;//v1C//00646B1C
    procedure v20; virtual;//v20//00646630
    procedure v24; virtual;//v24//006466C8
    //procedure sub_0064676C(?:?; ?:?; ?:?); dynamic;//0064676C
    //procedure sub_00646750(?:?; ?:?); dynamic;//00646750
    procedure sub_00646738; dynamic;//00646738
    //procedure sub_00645F04(?:?); dynamic;//006467D4
    constructor Create;//00646498
    procedure Clear;//00646660
  end;
  TOwnedCollection = class(TCollection)
  public
    ..FOwner:TPersistent;//f18
    procedure sub_00645FBC; dynamic;//00646C3C
  end;
  TStrings = class(TPersistent)
  public
    FDefined:TStringsDefined;//f4
    FDelimiter:Char;//f5
    FQuoteChar:Char;//f6
    FUpdateCount:Integer;//f8
    FAdapter:IStringsAdapter;//fC
    destructor Destroy; virtual;//00646C58
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00646EF0
    procedure Assign(Source:TPersistent); virtual;//v8//00646DD4
    procedure vC; virtual; abstract;//vC//0066AC84
    //function v10:?; virtual;//v10//00647204
    procedure v14; virtual; abstract;//v14//0066AC84
    //function v18(?:?):?; virtual;//v18//00647284
    //procedure v1C(?:?); virtual;//v1C//006472F8
    //procedure v20(?:?; ?:?); virtual;//v20//0064787C
    //procedure v24(?:?; ?:?); virtual;//v24//006478BC
    //procedure v28(?:?); virtual;//v28//00647A40
    //procedure v2C(?:?); virtual;//v2C//00647AF4
    //procedure v30(?:?); virtual;//v30//00647BD4
    //function v34(?:?; ?:?):?; virtual;//v34//00647D24
    //function v38(?:?):?; virtual;//v38//00646C94
    //function v3C(?:?; ?:?):?; virtual;//v3C//00646CC4
    //procedure v40(?:?); virtual;//v40//00646D14
    procedure Clear; virtual; abstract;//v44//0066AC84
    procedure v48; virtual; abstract;//v48//0066AC84
    //procedure v4C(?:?; ?:?); virtual;//v4C//006470BC
    //function v50:?; virtual;//v50//0064729C
    //function v54(?:?):?; virtual;//v54//006474D4
    //function v58(?:?):?; virtual;//v58//00647560
    //function v5C(?:?):?; virtual;//v5C//00647630
    procedure v60; virtual; abstract;//v60//0066AC84
    //procedure v64(?:?; ?:?; ?:?); virtual;//v64//0064767C
    //procedure v68(?:?); virtual;//v68//006476B0
    //procedure v6C(?:?); virtual;//v6C//0064770C
    //procedure v70(?:?; ?:?); virtual;//v70//006477C0
    //procedure v74(?:?); virtual;//v74//00647980
    //procedure v78(?:?); virtual;//v78//006479E0
    //procedure v7C(?:?); virtual;//v7C//00647A9C
    procedure BeginUpdate;//00646E6C
    procedure EndUpdate;//00646F3C
    procedure ReadData(Reader:TReader);//006478D0
    procedure WriteData(Writer:TWriter);//00647C98
  end;
  TStringList = class(TStrings)
  public
    FList:PStringItemList;//f10
    FCount:Integer;//f14
    FCapacity:Integer;//f18
    FSorted:Boolean;//f1C
    FDuplicates:TDuplicates;//f1D
    FCaseSensitive:Boolean;//f1E
    FOnChange:TNotifyEvent;//f20
    f22:word;//f22
    f24:dword;//f24
    FOnChanging:TNotifyEvent;//f28
    f2A:word;//f2A
    f2C:dword;//f2C
    destructor Destroy; virtual;//00647D48
    //procedure vC(?:?; ?:?); virtual;//vC//00648130
    //function v10:?; virtual;//v10//0064817C
    //function v14:?; virtual;//v14//00648198
    //function v18(?:?):?; virtual;//v18//006481B4
    //procedure v20(?:?; ?:?); virtual;//v20//006483D8
    //procedure v24(?:?; ?:?); virtual;//v24//00648450
    //procedure v28(?:?); virtual;//v28//00648570
    //procedure v30(?:?); virtual;//v30//006485D4
    //function v34(?:?; ?:?):?; virtual;//v34//006486AC
    //function v38(?:?):?; virtual;//v38//00647DC4
    //function v3C(?:?; ?:?):?; virtual;//v3C//00647DEC
    procedure Clear; virtual;//v44//00647EBC
    //procedure v48(?:?); virtual;//v48//00647F10
    //procedure v4C(?:?; ?:?); virtual;//v4C//00647FB0
    //function v54(?:?):?; virtual;//v54//00648254
    //procedure v60(?:?; ?:?); virtual;//v60//006482A0
    //procedure v64(?:?; ?:?; ?:?); virtual;//v64//006482C8
    procedure v80; virtual;//v80//00647E64
    procedure v84; virtual;//v84//00647E90
    //procedure v88(?:?; ?:?; ?:?); virtual;//v88//00648330
    //function v8C(?:?; ?:?):?; virtual;//v8C//00648098
    procedure v90; virtual;//v90//00648640
    //procedure v94(?:?); virtual;//v94//0064865C
  end;
  TStream = class(TObject)
  public
    //procedure v0(?:?); virtual;//v0//0064877C
    //procedure v4(?:?; ?:?); virtual;//v4//006487A8
    procedure v8; virtual; abstract;//v8//0066AC84
    procedure vC; virtual; abstract;//vC//0066AC84
    //function v10(?:?; ?:?):?; virtual;//v10//0064884C
    //procedure v14(?:?; ?:?; ?:?); virtual;//v14//006488D8
    //procedure v18(?:?; ?:?); virtual;//v18//00648B58
    function GetPosition:Int64;//006486EC
    procedure SetPosition(const Pos:Int64);//00648714
    function GetSize:Int64;//00648730
    procedure SetSize64(const NewSize:Int64);//0064878C
    procedure ReadBuffer(var Buffer:void ; Count:Longint);//00648948
    procedure WriteBuffer(const Buffer:void ; Count:Longint);//00648990
    function CopyFrom(Source:TStream; Count:Int64):Int64;//006489D8
  end;
  THandleStream = class(TStream)
  public
    ......FHandle:Integer;//f4
    //procedure v0(?:?); virtual;//v0//00648CB0
    //procedure v4(?:?; ?:?); virtual;//v4//00648CD0
    //function v8(?:?; ?:?):?; virtual;//v8//00648C0C
    //function vC(?:?; ?:?):?; virtual;//vC//00648C44
    //procedure v14(?:?; ?:?; ?:?); virtual;//v14//00648C7C
  end;
  TFileStream = class(THandleStream)
  public
    destructor Destroy; virtual;//00648E28
    //constructor Create(?:?);//00648D00
  end;
  TCustomMemoryStream = class(TStream)
  public
    FMemory:Pointer;//f4
    FSize:Longint;//f8
    FPosition:Longint;//fC
    //function v8(?:?; ?:?):?; virtual;//v8//00648E98
    //function v10(?:?; ?:?):?; virtual;//v10//00648F08
  end;
  TMemoryStream = class(TCustomMemoryStream)
  public
    ....FCapacity:Longint;//f10
    destructor Destroy; virtual;//00648FF0
    //procedure v0(?:?); virtual;//v0//00649128
    //function vC(?:?; ?:?):?; virtual;//vC//00649238
    //function v1C(?:?):?; virtual;//v1C//00649170
  end;
  TResourceStream = class(TCustomMemoryStream)
  public
    HResInfo:THandle;//f10
    HGlobal:THandle;//f14
    destructor Destroy; virtual;//0064947C
    //function vC(?:?; ?:?):?; virtual;//vC//006494C4
    //constructor Create(?:?; ?:?);//006492C8
  end;
  TStreamAdapter = class(TInterfacedObject)
  public
    FStream:TStream;//fC
    FOwnership:TStreamOwnership;//f10
    destructor Destroy; virtual;//00651384
    //function v0(?:?; ?:?; ?:?):?; virtual;//v0//006513D4
    //function v4(?:?; ?:?; ?:?):?; virtual;//v4//00651450
    //function v8(?:?; ?:?; ?:?):?; virtual;//v8//006514CC
    //function vC(?:?; ?:?):?; virtual;//vC//0065155C
    //function v10(?:?; ?:?; ?:?; ?:?; ?:?):?; virtual;//v10//006515CC
    //function v14:?; virtual;//v14//006517F0
    //function v18:?; virtual;//v18//00651804
    //function v1C:?; virtual;//v1C//00651818
    //function v20:?; virtual;//v20//0065182C
    //function v24(?:?):?; virtual;//v24//00651840
    //function v28:?; virtual;//v28//006518E0
    //constructor Create(?:?);//0065132C
  end;
  TClassFinder = class(TObject)
  public
    FGroups:TList;//f4
    //constructor Create(?:?);//00644010
  end;
  TFiler = class(TObject)
  public
    FStream:TStream;//f4
    FBuffer:Pointer;//f8
    FBufSize:Integer;//fC
    FBufPos:Integer;//f10
    FBufEnd:Integer;//f14
    FRoot:TComponent;//f18
    FLookupRoot:TComponent;//f1C
    FAncestor:TPersistent;//f20
    FIgnoreChildren:Boolean;//f24
    destructor Destroy; virtual;//00649550
    //procedure v0(?:?); virtual;//v0//00649590
    procedure v4; virtual; abstract;//v4//0066AC84
    procedure v8; virtual; abstract;//v8//0066AC84
    procedure vC; virtual; abstract;//vC//0066AC84
    constructor Create(Stream:TStream; BufSize:Integer);//006494F4
  end;
  TReader = class(TFiler)
  public
    FOwner:TComponent;//f28
    FParent:TComponent;//f2C
    FFixups:TList;//f30
    FLoaded:TList;//f34
    FOnFindMethod:TFindMethodEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    FOnSetName:TSetNameEvent;//f40
    f42:word;//f42
    f44:dword;//f44
    FOnReferenceName:TReferenceNameEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnAncestorNotFound:TAncestorNotFoundEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    FOnError:TReaderError;//f58
    f5A:word;//f5A
    f5C:dword;//f5C
    FOnFindComponentClass:TFindComponentClassEvent;//f60
    FOnCreateComponent:TCreateComponentEvent;//f68
    FPropName:String;//f70
    FFinder:TClassFinder;//f74
    FCanHandleExcepts:Boolean;//f78
    destructor Destroy; virtual;//00649D50
    //procedure v4(?:?; ?:?; ?:?; ?:?); virtual;//v4//00649DD0
    //procedure v8(?:?; ?:?; ?:?; ?:?); virtual;//v8//00649E14
    procedure vC; virtual;//vC//0064A194
    //function v10(?:?):?; virtual;//v10//00649F14
    //function v14(?:?; ?:?):?; virtual;//v14//0064C14C
    //function v18(?:?; ?:?):?; virtual;//v18//00649F4C
    //procedure v1C(?:?; ?:?); virtual;//v1C//0064C240
    //procedure v20(?:?); virtual;//v20//0064C214
    //procedure v24(?:?; ?:?); virtual;//v24//0064AE44
    function EndOfList:Boolean;//00649EF0
    function NextValue:TValueType;//0064A300
    procedure Read(var Buf:void ; Count:Longint);//0064A344
    procedure ReadBuffer;//0064A390
    procedure ReadCollection(Collection:TCollection);//0064A468
    function ReadComponent(Component:TComponent):TComponent;//0064A810
    function ReadIdent:AnsiString;//0064AC58
    function ReadInteger:Longint;//0064AD64
    procedure ReadListBegin;//0064AE1C
    procedure ReadListEnd;//0064AE30
    function ReadStr:AnsiString;//0064BB30
    function ReadString:AnsiString;//0064BB78
    function ReadValue:TValueType;//0064BD34
    procedure SkipSetBody;//0064BD88
    procedure SkipValue;//0064BEAC
    procedure SkipBytes(Count:Integer);//0064C318
    function ReadVariant:Variant;//0064C53C
  end;
  TWriter = class(TFiler)
  public
    FRootAncestor:TComponent;//f28
    FPropPath:String;//f2C
    FAncestorList:TList;//f30
    FAncestorPos:Integer;//f34
    FChildPos:Integer;//f38
    FOnFindAncestor:TFindAncestorEvent;//f40
    FUseQualifiedNames:Boolean;//f48
    destructor Destroy; virtual;//0064C754
    //procedure v0(?:?); virtual;//v0//0064C8B8
    //procedure v4(?:?; ?:?; ?:?; ?:?); virtual;//v4//0064C7B0
    //procedure v8(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v8//0064C7E8
    procedure vC; virtual;//vC//0064C848
    //procedure v10(?:?); virtual;//v10//0064CC58
    procedure Write(const Buf:void ; Count:Longint);//0064C8DC
    procedure WriteBuffer;//0064C9B0
    procedure WriteChar(Value:Char);//0064CA08
    procedure WriteCollection(Value:TCollection);//0064CA60
    procedure WriteFloat(const Value:Extended);//0064D0B8
    procedure WriteIdent(const Ident:AnsiString);//0064D158
    procedure WriteInteger(Value:Longint);//0064D230
    procedure WriteListBegin;//0064D30C
    procedure WriteListEnd;//0064D320
    procedure WriteProperties(Instance:TPersistent);//0064D380
    procedure WriteProperty(Instance:TPersistent; PropInfo:PPropInfo);//0064E328
    procedure WriteVariant(const Value:Variant);//0064E440
    procedure WritePropName(const PropName:AnsiString);//0064E84C
    procedure WriteString(const Value:AnsiString);//0064E9C4
    procedure WriteWideString(const Value:WideString);//0064EA20
    procedure WriteValue(Value:TValueType);//0064EAE0
  end;
  EThread = class(Exception)
  end;
  TThread = class(TObject)
  public
    FHandle:THandle;//f4
    FThreadID:THandle;//f8
    FCreateSuspended:Boolean;//fC
    FTerminated:Boolean;//fD
    FSuspended:Boolean;//fE
    FFreeOnTerminate:Boolean;//fF
    FFinished:Boolean;//f10
    FReturnValue:Integer;//f14
    FOnTerminate:TNotifyEvent;//f18
    f1A:word;//f1A
    FMethod:TThreadMethod;//f20
    f24:dword;//f24
    FSynchronizeException:TObject;//f28
    FFatalException:TObject;//f2C
    procedure AfterConstruction; virtual;//0064FE48
    destructor Destroy; virtual;//0064FDBC
    procedure v0; virtual;//v0//0064FF34
    procedure v4; virtual; abstract;//v4//0066AC84
  end;
  TComponent = class(TPersistent)
  public
    FOwner:TComponent;//f4
    Name:TComponentName;//f8
    Tag:Integer;//fC
    FComponents:TList;//f10
    FFreeNotifies:TList;//f14
    FDesignInfo:Longint;//f18
    FComponentState:TComponentState;//f1C
    f1D:byte;//f1D
    FVCLComObject:Pointer;//f20
    FComponentStyle:TComponentStyle;//f24
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT; virtual;//00650D60
    procedure BeforeDestruction; virtual;//006502EC
    destructor Destroy; virtual;//00650248
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00650708
    procedure Loaded; virtual;//vC//006508A8
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//00650680
    //procedure v14(?:?); virtual;//v14//006508C8
    procedure SetName(Value:TComponentName); virtual;//v18//00650A34
    //procedure v1C(?:?; ?:?); virtual;//v1C//00650DA8
    //procedure v20(?:?; ?:?; ?:?); virtual;//v20//00650900
    //procedure v24(?:?); virtual;//v24//006508E4
    //function v28(?:?; ?:?):?; virtual;//v28//00650DC0
    constructor Create(AOwner:TComponent); virtual;//v2C//006501EC
    //procedure sub_00650D04(?:?); dynamic;//00650D04
    procedure sub_006507B0; dynamic;//006507B0
    procedure sub_00650858; dynamic;//00650858
    //procedure sub_00650CD0(?:?); dynamic;//00650CD0
    //procedure sub_006509B8(?:?); dynamic;//006509B8
    //procedure sub_00650994(?:?); dynamic;//00650994
    procedure sub_00650894; dynamic;//00650894
    procedure sub_00650880; dynamic;//00650880
    //procedure sub_00650870(?:?); dynamic;//00650870
    //procedure sub_00650844(?:?; ?:?); dynamic;//00650844
    procedure sub_006508BC; dynamic;//006508BC
    procedure sub_006507F0; dynamic;//006507F0
    procedure sub_006507D8; dynamic;//006507D8
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent); dynamic;//006507C4
    //procedure sub_00645F04(?:?); dynamic;//00650808
    procedure sub_00645FBC; dynamic;//00650828
    procedure FreeNotification(AComponent:TComponent);//00650308
    function FindComponent(const AName:AnsiString):TComponent;//006509C8
  end;
  TBasicActionLink = class(TObject)
  public
    FOnChange:TNotifyEvent;//f8
    fA:word;//fA
    fC:TMenuItem;//fC
    FAction:TBasicAction;//f10
    destructor Destroy; virtual;//00650EE8
    //procedure v0(?:?); virtual;//v0//00650ED8
    procedure v4; virtual;//v4//00650F30
    //function v8:?; virtual;//v8//0065101C
    //procedure vC(?:?); virtual;//vC//00650FD0
    procedure v10; virtual;//v10//00651030
    constructor v14; virtual;//v14//00650E88
    //function v18(?:?):?; virtual;//v18//00650F58
    //function v1C:?; virtual;//v1C//0065103C
  end;
  TBasicAction = class(TComponent)
  public
    FActionComponent:TComponent;//f30
    FOnChange:TNotifyEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    FOnExecute:TNotifyEvent;//f40
    f42:word;//f42
    f44:dword;//f44
    FOnUpdate:TNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FClients:TList;//f50
    destructor Destroy; virtual;//006510B8
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//00651158
    constructor Create(AOwner:TComponent); virtual;//v2C//0065105C
    procedure v30; virtual;//v30//00651284
    //procedure SetOnExecute(Value:TNotifyEvent; ?:?; ?:?); virtual;//v34//0065120C
    //function v38(?:?):?; virtual;//v38//00651130
    //procedure v3C(?:?); virtual;//v3C//00651194
    //procedure v40(?:?); virtual;//v40//00651148
    //function v44:?; virtual;//v44//006511D8
    procedure sub_006511A4; dynamic;//006511A4
  end;
  TRegGroup = class(TObject)
  public
    FClassList:TList;//f4
    FAliasList:TStringList;//f8
    FGroupClasses:TList;//fC
    FActive:Boolean;//f10
    constructor Create;//00643760
  end;
  TRegGroups = class(TObject)
  public
    FGroups:TList;//f4
    FLock:TRTLCriticalSection;//f8
    FActiveClass:TPersistentClass;//f20
    constructor Create;//00643B60
  end;
  TIntConst = class(TObject)
  public
    IntegerType:PTypeInfo;//f4
    IdentToInt:TIdentToInt;//f8
    IntToIdent:TIntToIdent;//fC
    //constructor Create(?:?; ?:?);//006445A4
  end;
  TPropFixup = class(TObject)
  public
    FInstance:TPersistent;//f4
    FInstanceRoot:TComponent;//f8
    FPropInfo:PPropInfo;//fC
    FRootName:String;//f10
    FName:String;//f14
    //procedure v0(?:?); virtual;//v0//00649764
    constructor Create(Instance:TPersistent; InstanceRoot:TComponent; PropInfo:PPropInfo; const RootName:AnsiString; const Name:AnsiString);//00649684
  end;
  TPropIntfFixup = class(TPropFixup)
  public
    //procedure v0(?:?); virtual;//v0//00649788
  end;
    procedure sub_00641AC4;//00641AC4
    function Point(AX:Integer; AY:Integer):TPoint;//00643490
    //function sub_006434B4(?:?; ?:?):?;//006434B4
    function Rect(ALeft:Integer; ATop:Integer; ARight:Integer; ABottom:Integer):TRect;//006434DC
    function Bounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer):TRect;//00643508
    //function sub_00643534(?:word):?;//00643534
    //function sub_00643560(?:?):?;//00643560
    //procedure sub_00643638(?:?; ?:?);//00643638
    //function sub_00643658(?:?; ?:?):?;//00643658
    //function sub_006436CC(?:TRegGroup; ?:Pointer; ?:?; ?:?):?;//006436CC
    //function sub_0064383C(?:Pointer; ?:AnsiString):?;//0064383C
    //function sub_006438C0(?:Pointer; ?:?):?;//006438C0
    //procedure sub_00643918(?:?; ?:?);//00643918
    //function sub_006439C4(?:Pointer; ?:?):?;//006439C4
    //function sub_006439EC(?:Pointer; ?:?):?;//006439EC
    //procedure sub_00643A1C(?:Pointer; ?:?);//00643A1C
    //procedure sub_00643AF8(?:?; ?:TControl);//00643AF8
    //function sub_00643C68(?:?; ?:Pointer):?;//00643C68
    //function sub_00643CCC(?:?; ?:AnsiString):?;//00643CCC
    procedure Error;//00643D34
    //procedure sub_00643DC4(?:?; ?:TComponent; ?:TControl);//00643DC4
    //procedure sub_00643EA8(?:?);//00643EA8
    //procedure sub_00643EC0(?:?; ?:?);//00643EC0
    //function sub_00643EF0(?:?; ?:?):?;//00643EF0
    //procedure sub_00643F48(?:?; ?:TControl);//00643F48
    procedure ReadError(Ident:PResStringRec);//00643FB4
    //procedure sub_00643FCC(?:?; ?:?);//00643FCC
    //function sub_00644194(?:?; ?:?):?;//00644194
    function GetFieldClassTable(AClass:TClass):PFieldClassTable;//00644230
    procedure sub_0064423C(?:AnsiString);//0064423C
    //function sub_006442AC(?:AnsiString):?;//006442AC
    //function sub_00644304(?:AnsiString):?;//00644304
    procedure RegisterClass(AClass:TPersistentClass);//00644330
    //procedure sub_006443A8(?:TPersistent; ?:?);//006443A8
    //procedure sub_006443F4(?:?);//006443F4
    procedure PropValueError;//0064442D
    procedure sub_00644444(?:TControl);//00644444
    procedure sub_00644494(?:TComponent; ?:TControl);//00644494
    //function sub_006444EC(?:TControl):?;//006444EC
    //procedure sub_006445FC(?:?; ?:?; ?:?);//006445FC
    //function sub_00644634(?:?):?;//00644634
    //function sub_006446C4(?:?):?;//006446C4
    //procedure sub_00644810(?:?);//00644810
    function FindGlobalComponent(const Name:AnsiString):TComponent;//00644874
    //function sub_006448CC(?:?):?;//006448CC
    //function sub_00644904(?:?; ?:?; ?:?):?;//00644904
    procedure BeginGlobalLoading;//006449A8
    procedure NotifyGlobalLoading;//00644A10
    procedure EndGlobalLoading;//00644A58
    function InitComponent(ClassType:TClass):Boolean;//00644AC4
    function InitInheritedComponent(Instance:TComponent; RootAncestor:TClass):Boolean;//00644B78
    //procedure sub_00644C3C(?:?; ?:?; ?:?);//00644C3C
    function CollectionsEqual(C1:TCollection; C2:TCollection; Owner1:TComponent; Owner2:TComponent):Boolean;//00644CB0
    destructor Destroy;//00644DE0
    procedure sub_00644E64;//00644E64
    //function sub_00644F18(?:?):?;//00644F18
    //procedure sub_00644F20(?:?; ?:?);//00644F20
    //procedure sub_00644F60(?:TList; ?:?; ?:Integer);//00644F60
    //function sub_00645054(?:TList):?;//00645054
    procedure sub_006450E8;//006450E8
    //function sub_0064523C(?:TList):?;//0064523C
    //procedure sub_00645260(?:TList; ?:?; ?:Integer);//00645260
    //procedure sub_00645404(?:TList; ?:?);//00645404
    //procedure sub_006454AC(?:?; ?:?; ?:?; ?:?);//006454AC
    //procedure sub_0064557C(?:?; ?:?);//0064557C
    //procedure sub_006455B8(?:?; ?:?);//006455B8
    //procedure sub_006455CC(?:TList; ?:TList; ?:?; ?:?);//006455CC
    procedure sub_00645A08(?:TThreadList; ?:TObject);//00645A08
    procedure sub_00645ABC(?:TThreadList; ?:TCanvas);//00645ABC
    //function sub_00645BA0(?:?; ?:?):?;//00645BA0
    //function sub_00645CE0(?:TBits):?;//00645CE0
    destructor Destroy;//00645D98
    procedure Assign(Source:TPersistent);//00645DD4
    //procedure sub_00645E00(?:?; ?:?);//00645E00
    procedure AssignTo(Dest:TPersistent);//00645ED8
    procedure DefineProperties(Filer:TFiler);//00645EF4
    //procedure sub_00645F04(?:?);//00645F04
    procedure sub_00645FBC;//00645FBC
    procedure AfterConstruction;//00645FD4
    //function sub_00646030(?:?):?;//00646030
    //function sub_00646060(?:?):?;//00646060
    //function sub_00646090(?:?; ?:?):?;//00646090
    //procedure sub_006460BC(?:?; ?:?);//006460BC
    //procedure sub_00646170(?:TCollection; ?:TPersistent; ?:?);//00646170
    constructor sub_006461DC;//006461DC
    destructor Destroy;//00646224
    //procedure sub_00646260(?:TCollectionItem; ?:?);//00646260
    //function sub_006462A8(?:TCollectionItem):?;//006462A8
    //procedure sub_006462E0(?:?);//006462E0
    //procedure sub_00645F04(?:?);//00646314
    procedure sub_00645FBC;//006463D4
    //procedure sub_006463F0(?:?);//006463F0
    //procedure sub_00646434(?:?);//00646434
    //procedure sub_00646450(?:?);//00646450
    destructor Destroy;//006464FC
    //function sub_00646560(?:TCollection):?;//00646560
    procedure Assign(Source:TPersistent);//0064658C
    procedure sub_00646630;//00646630
    procedure sub_00646640(?:TCollection);//00646640
    procedure sub_006466C8;//006466C8
    //function sub_006466E0(?:?; ?:?):?;//006466E0
    procedure sub_00646738;//00646738
    //procedure sub_00646750(?:?; ?:?);//00646750
    //procedure sub_0064676C(?:?; ?:?; ?:?);//0064676C
    //function sub_00646794(?:TPersistent):?;//00646794
    //function sub_006467B0(?:TPersistent; ?:?):?;//006467B0
    //procedure sub_00645F04(?:?);//006467D4
    //procedure sub_006468A4(?:TCollection; ?:?);//006468A4
    //function sub_006469E0(?:?; ?:?):?;//006469E0
    //procedure sub_00646A0C(?:?; ?:TCollectionItem);//00646A0C
    procedure sub_00646A98(?:TCollection; ?:TCollectionItem);//00646A98
    //procedure sub_00646B0C(?:?);//00646B0C
    //procedure sub_00646B1C(?:?);//00646B1C
    //procedure sub_00646B2C(?:TComboExItems; ?:?);//00646B2C
    //function sub_00646B6C(?:TComboExItems):?;//00646B6C
    //procedure sub_00646B90(?:?);//00646B90
    //procedure sub_00646BA0(?:?);//00646BA0
    //procedure sub_00646BB0(?:?; ?:?);//00646BB0
    //constructor Create(?:?);//00646BE8
    procedure sub_00645FBC;//00646C3C
    destructor Destroy;//00646C58
    //function sub_00646C94(?:?):?;//00646C94
    //function sub_00646CC4(?:?; ?:?):?;//00646CC4
    //procedure sub_00646CF8(?:?; ?:?);//00646CF8
    //procedure sub_00646D14(?:?);//00646D14
    procedure Assign(Source:TPersistent);//00646DD4
    //function sub_00646E90(?:?):?;//00646E90
    procedure DefineProperties(Filer:TFiler);//00646EF0
    //function sub_00646F60(?:?; ?:?):?;//00646F60
    //function sub_00647014(?:?):?;//00647014
    //procedure sub_0064701C(?:TStrings; ?:?; ?:?);//0064701C
    //procedure sub_0064705C(?:TStringList; ?:?; ?:?);//0064705C
    //procedure sub_006470BC(?:?; ?:?);//006470BC
    //procedure sub_006471A8(?:TValueListStrings; ?:?; ?:?);//006471A8
    //function sub_00647204:?;//00647204
    //procedure sub_00647220(?:?; ?:?; ?:?);//00647220
    //function sub_00647284(?:?):?;//00647284
    //function sub_0064729C:?;//0064729C
    //procedure sub_006472F8(?:?);//006472F8
    //procedure sub_00647440(?:?; ?:AnsiString; ?:?);//00647440
    //function sub_006474D4(?:?):?;//006474D4
    //function sub_00647560(?:?):?;//00647560
    //function sub_00647630(?:?):?;//00647630
    //procedure sub_0064767C(?:?; ?:?; ?:?);//0064767C
    //procedure sub_006476B0(?:?);//006476B0
    //procedure sub_0064770C(?:?);//0064770C
    //procedure sub_006477C0(?:?; ?:?);//006477C0
    //procedure sub_0064787C(?:?; ?:?);//0064787C
    //procedure sub_006478BC(?:?; ?:?);//006478BC
    //procedure sub_00647980(?:?);//00647980
    //procedure sub_006479E0(?:?);//006479E0
    //procedure sub_00647A40(?:?);//00647A40
    //procedure sub_00647A50(?:TStrings; ?:?);//00647A50
    //procedure sub_00647A9C(?:?);//00647A9C
    //procedure sub_00647AF4(?:?);//00647AF4
    //procedure sub_00647BD4(?:?);//00647BD4
    //procedure sub_00647BE4(?:?; ?:AnsiString; ?:?);//00647BE4
    //function sub_00647D24(?:?; ?:?):?;//00647D24
    destructor Destroy;//00647D48
    //function sub_00647DC4(?:?):?;//00647DC4
    //function sub_00647DEC(?:?; ?:?):?;//00647DEC
    procedure sub_00647E64;//00647E64
    procedure sub_00647E90;//00647E90
    procedure Clear;//00647EBC
    //procedure sub_00647F10(?:?);//00647F10
    //procedure sub_00647FB0(?:?; ?:?);//00647FB0
    //procedure sub_0064802C(?:TStringList; ?:?; ?:?);//0064802C
    //function sub_00648098(?:?; ?:?):?;//00648098
    //procedure sub_00648130(?:?; ?:?);//00648130
    //function sub_0064817C:?;//0064817C
    //function sub_00648198:?;//00648198
    //function sub_006481B4(?:?):?;//006481B4
    procedure sub_006481FC(?:TStringList);//006481FC
    //function sub_00648254(?:?):?;//00648254
    //procedure sub_006482A0(?:?; ?:?);//006482A0
    //procedure sub_006482C8(?:?; ?:?; ?:?);//006482C8
    //procedure sub_00648330(?:?; ?:?; ?:?);//00648330
    //procedure sub_006483D8(?:?; ?:?);//006483D8
    //procedure sub_00648450(?:?; ?:?);//00648450
    //procedure sub_006484AC(?:TStringList; ?:?; ?:?; ?:?);//006484AC
    //procedure sub_00648570(?:?);//00648570
    //procedure sub_0064859C(?:TStringList; ?:?);//0064859C
    //procedure sub_006485D4(?:?);//006485D4
    procedure sub_00648640;//00648640
    //procedure sub_0064865C(?:?);//0064865C
    //function sub_006486AC(?:?; ?:?):?;//006486AC
    //procedure sub_0064877C(?:?);//0064877C
    //procedure sub_006487A8(?:?; ?:?);//006487A8
    procedure RaiseException;//00648800
    //function sub_0064884C(?:?; ?:?):?;//0064884C
    //procedure sub_006488D8(?:?; ?:?; ?:?);//006488D8
    //function sub_00648AD4(?:TCustomMemoryStream; ?:TCustomListView):?;//00648AD4
    procedure sub_00648B38(?:TMemoryStream; ?:TCustomListView);//00648B38
    //procedure sub_00648B58(?:?; ?:?);//00648B58
    constructor sub_00648BBC;//00648BBC
    //function sub_00648C0C(?:?; ?:?):?;//00648C0C
    //function sub_00648C44(?:?; ?:?):?;//00648C44
    //procedure sub_00648C7C(?:?; ?:?; ?:?);//00648C7C
    //procedure sub_00648CB0(?:?);//00648CB0
    //procedure sub_00648CD0(?:?; ?:?);//00648CD0
    //constructor sub_00648D50(?:?; ?:?);//00648D50
    destructor Destroy;//00648E28
    procedure sub_00648E70(?:TCustomMemoryStream; ?:Pointer; ?:Longint);//00648E70
    //function sub_00648E98(?:?; ?:?):?;//00648E98
    //function sub_00648F08(?:?; ?:?):?;//00648F08
    //procedure sub_00648F60(?:?; ?:TFileStream);//00648F60
    //procedure sub_00648F90(?:?; ?:?);//00648F90
    destructor Destroy;//00648FF0
    procedure sub_0064902C(?:TMemoryStream);//0064902C
    procedure sub_00649050(?:TMemoryStream; ?:TFileStream);//00649050
    //procedure sub_00649098(?:?; ?:?);//00649098
    //procedure sub_006490F4(?:TMemoryStream; ?:?);//006490F4
    //procedure sub_00649128(?:?);//00649128
    //function sub_00649170(?:?):?;//00649170
    //function sub_00649238(?:?; ?:?):?;//00649238
    //constructor sub_00649328(?:?; ?:?);//00649328
    procedure Error;//00649380
    //procedure sub_006493F0(?:TResourceStream; ?:?; ?:PChar; ?:?);//006493F0
    destructor Destroy;//0064947C
    //function sub_006494C4(?:?; ?:?):?;//006494C4
    destructor Destroy;//00649550
    //procedure sub_00649590(?:?);//00649590
    //function sub_006496F8(?:Pointer):?;//006496F8
    //procedure sub_00649764(?:?);//00649764
    //procedure sub_00649788(?:?);//00649788
    //function sub_0064981C(?:TComponent; ?:AnsiString):?;//0064981C
    //procedure sub_00649924(?:?; ?:?);//00649924
    //procedure sub_00649960(?:?; ?:?);//00649960
    procedure sub_006499B4;//006499B4
    //procedure sub_00649B9C(?:Boolean; ?:?);//00649B9C
    //procedure sub_00649C58(?:?);//00649C58
    //procedure sub_00649CEC(?:?);//00649CEC
    procedure sub_00649D0C;//00649D0C
    //procedure sub_00649D1C(?:?);//00649D1C
    destructor Destroy;//00649D50
    //procedure sub_00649DA0(?:?; ?:?);//00649DA0
    //procedure sub_00649DD0(?:?; ?:?; ?:?; ?:?);//00649DD0
    //procedure sub_00649E14(?:?; ?:?; ?:?; ?:?);//00649E14
    //function sub_00649F14(?:?):?;//00649F14
    //function sub_00649F4C(?:?; ?:?):?;//00649F4C
    procedure sub_00649FC4(?:Pointer);//00649FC4
    //procedure sub_0064A060(?:?);//0064A060
    procedure sub_0064A194;//0064A194
    //procedure sub_0064A1C4(?:?);//0064A1C4
    //function sub_0064A224(?:?; ?:?; ?:?):?;//0064A224
    //function sub_0064A2D4(?:TReader):?;//0064A2D4
    //procedure sub_0064A324(?:?; ?:?);//0064A324
    //function sub_0064A3E4(?:?):?;//0064A3E4
    //function sub_0064A404(?:?):?;//0064A404
    function ComponentCreated:Boolean;//0064A520
    function Recover(var Component:TComponent):Boolean;//0064A548
    procedure CreateComponent;//0064A5B4
    procedure SetCompName;//0064A6C8
    procedure FindExistingComponent;//0064A768
    //procedure sub_0064A9E8(?:?; ?:TComponent);//0064A9E8
    //procedure sub_0064AA5C(?:?; ?:?);//0064AA5C
    //procedure sub_0064AB30(?:?);//0064AB30
    //procedure sub_0064AB78(?:?);//0064AB78
    //procedure sub_0064ABC0(?:?);//0064ABC0
    //procedure sub_0064AC10(?:?);//0064AC10
    //procedure sub_0064ADD4(?:?);//0064ADD4
    //procedure sub_0064AE44(?:?; ?:?);//0064AE44
    //procedure sub_0064AEA0(?:Exception; ?:?);//0064AEA0
    procedure PropPathError;//0064AFA0
    //procedure sub_0064AFBC(?:?; ?:?);//0064AFBC
    //procedure sub_0064B1C8(?:Longint; ?:PPropInfo; ?:?);//0064B1C8
    //procedure sub_0064B214(?:Longint; ?:PPropInfo; ?:?; ?:?);//0064B214
    procedure SetVariantReference;//0064B25C
    procedure SetInterfaceReference;//0064B2B8
    //procedure sub_0064B378(?:?; ?:Longint; ?:PPropInfo);//0064B378
    //procedure sub_0064B690(?:?; ?:?);//0064B690
    destructor sub_0064B700;//0064B700
    //function sub_0064BA34(?:?; ?:PPropInfo):?;//0064BA34
    procedure sub_0064BAFC(?:TReader);//0064BAFC
    //procedure sub_0064BC3C(?:?; ?:?);//0064BC3C
    //procedure sub_0064BD54(?:?; ?:?);//0064BD54
    procedure SkipList;//0064BDD8
    procedure SkipBinary(BytesPerUnit:Integer);//0064BE04
    procedure SkipCollection;//0064BE38
    //procedure sub_0064C048(?:?);//0064C048
    //procedure sub_0064C098(?:?; ?:?);//0064C098
    //function sub_0064C14C(?:?; ?:?):?;//0064C14C
    //procedure sub_0064C214(?:?);//0064C214
    //procedure sub_0064C240(?:?; ?:?);//0064C240
    //function sub_0064C280(?:?; ?:?):?;//0064C280
    //procedure sub_0064C374(?:?; ?:?);//0064C374
    destructor Destroy;//0064C754
    //procedure sub_0064C7B0(?:?; ?:?; ?:?; ?:?);//0064C7B0
    //procedure sub_0064C7E8(?:?; ?:?; ?:?; ?:?; ?:?);//0064C7E8
    //function sub_0064C824(?:TWriter):?;//0064C824
    procedure sub_0064C848;//0064C848
    //procedure sub_0064C85C(?:TWriter; ?:?);//0064C85C
    //procedure sub_0064C8B8(?:?);//0064C8B8
    //procedure sub_0064C928(?:TWriter; ?:?);//0064C928
    //procedure sub_0064C9DC(?:?; ?:?);//0064C9DC
    //function sub_0064CB0C(?:?; ?:?):?;//0064CB0C
    //procedure sub_0064CB6C(?:TWriter; ?:?);//0064CB6C
    //procedure sub_0064CC58(?:?);//0064CC58
    //procedure sub_0064D06C(?:TWriter; ?:?; ?:?);//0064D06C
    //procedure sub_0064D0E0(?:?; ?:?);//0064D0E0
    //procedure sub_0064D108(?:?; ?:?);//0064D108
    //procedure sub_0064D130(?:?; ?:?);//0064D130
    //procedure sub_0064D2B0(?:?; ?:?; ?:?);//0064D2B0
    //procedure sub_0064D334(?:TWriter; ?:?; ?:Integer);//0064D334
    function AncestorValid:Boolean;//0064D458
    procedure WritePropPath;//0064D4A8
    procedure WriteSet(Value:Longint);//0064D4FC
    procedure WriteIntProp(IntType:PTypeInfo; Value:Longint);//0064D5A0
    procedure WriteCollectionProp(Collection:TCollection);//0064D61C
    function IsDefaultValue:Boolean;//0064D6C4
    procedure WriteOrdProp;//0064D734
    //function sub_0064D808(?:?):?;//0064D808
    procedure WriteFloatProp;//0064D868
    //function sub_0064D8B4(?:?):?;//0064D8B4
    procedure WriteInt64Prop;//0064D910
    function IsDefault:Boolean;//0064D958
    procedure WriteStrProp;//0064D9E8
    //function sub_0064DA54(?:?; ?:?):?;//0064DA54
    function GetComponentValue(Component:TComponent):AnsiString;//0064DA8C
    //function sub_0064DBF4(?:Longint; ?:?; ?:?):?;//0064DBF4
    //function sub_0064DC54(?:?):?;//0064DC54
    procedure WriteObjectProp;//0064DCC4
    //function sub_0064DEF4(?:?):?;//0064DEF4
    procedure WriteInterfaceProp;//0064DFCC
    //function sub_0064E0EC(?:?):?;//0064E0EC
    procedure WriteMethodProp;//0064E17C
    //function sub_0064E22C(?:?):?;//0064E22C
    procedure WriteVariantProp;//0064E2B8
    procedure sub_0064E8A8(?:TWriter);//0064E8A8
    procedure sub_0064E8C4(?:TWriter; ?:AnsiString);//0064E8C4
    //procedure sub_0064E914(?:?; ?:?; ?:?);//0064E914
    procedure BinToHex(Buffer:PChar; Text:PChar; BufSize:Integer);//0064EB00
    //function sub_0064EB68(?:PChar; ?:?; ?:?):?;//0064EB68
    procedure WriteIndent;//0064EBE4
    procedure WriteStr(const S:AnsiString);//0064EC20
    procedure NewLine;//0064EC4C
    procedure ConvertHeader;//0064EC78
    //procedure sub_0064EE40(?:?);//0064EE40
    procedure ConvertValue;//0064EF1C
    procedure ConvertProperty;//0064F810
    //procedure sub_0064F8BC(?:?);//0064F8BC
    //procedure sub_0064F94C(?:?; ?:?);//0064F94C
    procedure AddThread;//0064FA48
    procedure RemoveThread;//0064FAB0
    function CheckSynchronize:Boolean;//0064FAF4
    constructor sub_0064FCD0;//0064FCD0
    destructor Destroy;//0064FDBC
    procedure AfterConstruction;//0064FE48
    //procedure sub_0064FE64(?:?; ?:?);//0064FE64
    //procedure sub_0064FEE8(?:TAnalyzeThread; ?:?);//0064FEE8
    procedure sub_0064FF34;//0064FF34
    //procedure sub_0064FF5C(?:TAnalyzeThread; ?:?);//0064FF5C
    //procedure sub_0064FF94(?:TThread; ?:?; ?:?);//0064FF94
    //procedure sub_006500D0(?:?);//006500D0
    //procedure sub_006500FC(?:?);//006500FC
    //procedure sub_00650134(?:?);//00650134
    //function sub_00650148(?:?):?;//00650148
    constructor Create(AOwner:TComponent);//006501EC
    destructor Destroy;//00650248
    procedure BeforeDestruction;//006502EC
    //procedure sub_00650400(?:?; ?:?);//00650400
    //procedure sub_00650444(?:?; ?:?);//00650444
    //procedure sub_0065048C(?:?; ?:?);//0065048C
    //procedure sub_006504FC(?:?; ?:?);//006504FC
    //procedure sub_00650544(?:?);//00650544
    procedure sub_006505B4(?:TWinControl);//006505B4
    procedure sub_00650610(?:TComponent; ?:TComponent);//00650610
    procedure sub_00650658(?:TComponent; ?:TComponent);//00650658
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00650680
    procedure DefineProperties(Filer:TFiler);//00650708
    procedure sub_006507B0;//006507B0
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent);//006507C4
    procedure sub_006507D8;//006507D8
    procedure sub_006507F0;//006507F0
    //procedure sub_00645F04(?:?);//00650808
    procedure sub_00645FBC;//00650828
    //procedure sub_00650844(?:?; ?:?);//00650844
    procedure sub_00650858;//00650858
    //procedure sub_00650870(?:?);//00650870
    procedure sub_00650880;//00650880
    procedure sub_00650894;//00650894
    procedure Loaded;//006508A8
    procedure sub_006508BC;//006508BC
    //procedure sub_006508C8(?:?);//006508C8
    //procedure sub_006508E4(?:?);//006508E4
    //procedure sub_00650900(?:?; ?:?; ?:?);//00650900
    //procedure sub_00650994(?:?);//00650994
    //procedure sub_006509B8(?:?);//006509B8
    procedure SetName(Value:TComponentName);//00650A34
    procedure sub_00650AEC(?:TComponent; ?:TComponentName);//00650AEC
    //function sub_00650B0C(?:TComponent; ?:?):?;//00650B0C
    //function sub_00650B4C(?:TComponent):?;//00650B4C
    //procedure sub_00650B78(?:?; ?:?);//00650B78
    //procedure sub_00650C04(?:?; ?:?; ?:?);//00650C04
    //procedure sub_00650C6C(?:TComponent; ?:?);//00650C6C
    //procedure sub_00650CD0(?:?);//00650CD0
    //procedure sub_00650D04(?:?);//00650D04
    //procedure sub_00650D38(?:TComponent; ?:?);//00650D38
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;//00650D60
    //procedure sub_00650DA8(?:?; ?:?);//00650DA8
    //function sub_00650DC0(?:?; ?:?):?;//00650DC0
    //function sub_00650E10(?:?):?;//00650E10
    //function sub_00650E40(?:?):?;//00650E40
    //function sub_00650E70(?:?):?;//00650E70
    constructor sub_00650E88;//00650E88
    //procedure sub_00650ED8(?:?);//00650ED8
    destructor Destroy;//00650EE8
    procedure sub_00650F30;//00650F30
    //function sub_00650F58(?:?):?;//00650F58
    //procedure sub_00650FD0(?:?);//00650FD0
    //function sub_0065101C:?;//0065101C
    procedure sub_00651030;//00651030
    //function sub_0065103C:?;//0065103C
    constructor Create(AOwner:TComponent);//0065105C
    destructor Destroy;//006510B8
    //function sub_00651130(?:?):?;//00651130
    //procedure sub_00651148(?:?);//00651148
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00651158
    //procedure sub_00651194(?:?);//00651194
    procedure sub_006511A4;//006511A4
    //function sub_006511D8:?;//006511D8
    //procedure SetOnExecute(Value:TNotifyEvent; ?:?; ?:?);//0065120C
    procedure sub_00651284;//00651284
    //procedure sub_006512A8(?:?; ?:TBasicActionLink);//006512A8
    procedure sub_006512D0(?:TBasicAction; ?:TBasicActionLink);//006512D0
    destructor Destroy;//00651384
    //function sub_006513D4(?:?; ?:?; ?:?):?;//006513D4
    //function sub_00651450(?:?; ?:?; ?:?):?;//00651450
    //function sub_006514CC(?:?; ?:?; ?:?):?;//006514CC
    //function sub_0065155C(?:?; ?:?):?;//0065155C
    //function sub_006515CC(?:?; ?:?; ?:?; ?:?; ?:?):?;//006515CC
    //function sub_006517F0:?;//006517F0
    //function sub_00651804:?;//00651804
    //function sub_00651818:?;//00651818
    //function sub_0065182C:?;//0065182C
    //function sub_00651840(?:?):?;//00651840
    //function sub_006518E0:?;//006518E0
    procedure sub_00651900;//00651900
    function StdWndProc(Window:HWND; Message:Longint; WParam:Longint; LParam:Longint):Longint; stdcall;//00651990
    //function sub_006519B0(?:?; ?:Longint):?;//006519B0
    //function sub_006519D4(?:?; ?:?):?;//006519D4
    procedure sub_00651AB4(?:Pointer);//00651AB4
    procedure _NF__E01;//00651AD8
    //function sub_00651AE8(?:?; ?:?; ?:?):?;//00651AE8
    procedure sub_00651BA4(?:HWND);//00651BA4

implementation

//00641AC4
procedure sub_00641AC4;
begin
{*
 00641AC4    sub         dword ptr ds:[6ECF8C],1
 00641ACB    ret
*}
end;

//00643490
function Point(AX:Integer; AY:Integer):TPoint;
begin
{*
 00643490    push        ebp
 00643491    mov         ebp,esp
 00643493    add         esp,0FFFFFFF4
 00643496    mov         dword ptr [ebp-0C],ecx
 00643499    mov         dword ptr [ebp-8],edx
 0064349C    mov         dword ptr [ebp-4],eax
 0064349F    mov         ecx,dword ptr [ebp-0C]
 006434A2    mov         edx,dword ptr [ebp-8]
 006434A5    mov         eax,dword ptr [ebp-4]
 006434A8    call        0065615C
 006434AD    mov         esp,ebp
 006434AF    pop         ebp
 006434B0    ret
*}
end;

//006434B4
{*function sub_006434B4(?:?; ?:?):?;
begin
 006434B4    push        ebp
 006434B5    mov         ebp,esp
 006434B7    add         esp,0FFFFFFF8
 006434BA    mov         word ptr [ebp-4],dx
 006434BE    mov         word ptr [ebp-2],ax
 006434C2    mov         ax,word ptr [ebp-2]
 006434C6    mov         word ptr [ebp-8],ax
 006434CA    mov         ax,word ptr [ebp-4]
 006434CE    mov         word ptr [ebp-6],ax
 006434D2    mov         eax,dword ptr [ebp-8]
 006434D5    pop         ecx
 006434D6    pop         ecx
 006434D7    pop         ebp
 006434D8    ret
end;*}

//006434DC
function Rect(ALeft:Integer; ATop:Integer; ARight:Integer; ABottom:Integer):TRect;
begin
{*
 006434DC    push        ebp
 006434DD    mov         ebp,esp
 006434DF    add         esp,0FFFFFFF4
 006434E2    mov         dword ptr [ebp-0C],ecx
 006434E5    mov         dword ptr [ebp-8],edx
 006434E8    mov         dword ptr [ebp-4],eax
 006434EB    mov         eax,dword ptr [ebp+0C]
 006434EE    push        eax
 006434EF    mov         eax,dword ptr [ebp+8]
 006434F2    push        eax
 006434F3    mov         ecx,dword ptr [ebp-0C]
 006434F6    mov         edx,dword ptr [ebp-8]
 006434F9    mov         eax,dword ptr [ebp-4]
 006434FC    call        00656124
 00643501    mov         esp,ebp
 00643503    pop         ebp
 00643504    ret         8
*}
end;

//00643508
function Bounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer):TRect;
begin
{*
 00643508    push        ebp
 00643509    mov         ebp,esp
 0064350B    add         esp,0FFFFFFF4
 0064350E    mov         dword ptr [ebp-0C],ecx
 00643511    mov         dword ptr [ebp-8],edx
 00643514    mov         dword ptr [ebp-4],eax
 00643517    mov         eax,dword ptr [ebp+0C]
 0064351A    push        eax
 0064351B    mov         eax,dword ptr [ebp+8]
 0064351E    push        eax
 0064351F    mov         ecx,dword ptr [ebp-0C]
 00643522    mov         edx,dword ptr [ebp-8]
 00643525    mov         eax,dword ptr [ebp-4]
 00643528    call        006562B0
 0064352D    mov         esp,ebp
 0064352F    pop         ebp
 00643530    ret         8
*}
end;

//00643534
{*function sub_00643534(?:word):?;
begin
 00643534    push        ebp
 00643535    mov         ebp,esp
 00643537    add         esp,0FFFFFFF8
 0064353A    mov         dword ptr [ebp-4],eax
 0064353D    mov         eax,dword ptr [ebp-4]
 00643540    cmp         dword ptr [eax],0FFFFFFFF
>00643543    jne         0064354E
 00643545    mov         eax,dword ptr [ebp-4]
 00643548    cmp         dword ptr [eax+4],0FFFFFFFF
>0064354C    je          00643552
 0064354E    xor         eax,eax
>00643550    jmp         00643554
 00643552    mov         al,1
 00643554    mov         byte ptr [ebp-5],al
 00643557    mov         al,byte ptr [ebp-5]
 0064355A    pop         ecx
 0064355B    pop         ecx
 0064355C    pop         ebp
 0064355D    ret
end;*}

//00643560
{*function sub_00643560(?:?):?;
begin
 00643560    push        ebp
 00643561    mov         ebp,esp
 00643563    add         esp,0FFFFFFF8
 00643566    mov         dword ptr [ebp-4],eax
 00643569    cmp         word ptr [ebp-4],0FFFFFFFF
>0064356E    jne         00643577
 00643570    cmp         word ptr [ebp-2],0FFFFFFFF
>00643575    je          0064357B
 00643577    xor         eax,eax
>00643579    jmp         0064357D
 0064357B    mov         al,1
 0064357D    mov         byte ptr [ebp-5],al
 00643580    mov         al,byte ptr [ebp-5]
 00643583    pop         ecx
 00643584    pop         ecx
 00643585    pop         ebp
 00643586    ret
end;*}

//00643638
{*procedure sub_00643638(?:?; ?:?);
begin
 00643638    push        ebp
 00643639    mov         ebp,esp
 0064363B    add         esp,0FFFFFFF8
 0064363E    mov         dword ptr [ebp-8],edx
 00643641    mov         dword ptr [ebp-4],eax
 00643644    mov         edx,dword ptr [ebp-8]
 00643647    mov         eax,dword ptr [ebp-4]
 0064364A    mov         eax,dword ptr [eax+0C]
 0064364D    call        TList.Add
 00643652    pop         ecx
 00643653    pop         ecx
 00643654    pop         ebp
 00643655    ret
end;*}

//00643658
{*function sub_00643658(?:?; ?:?):?;
begin
 00643658    push        ebp
 00643659    mov         ebp,esp
 0064365B    add         esp,0FFFFFFE8
 0064365E    mov         dword ptr [ebp-8],edx
 00643661    mov         dword ptr [ebp-4],eax
 00643664    xor         eax,eax
 00643666    mov         dword ptr [ebp-0C],eax
 00643669    mov         eax,dword ptr [ebp-4]
 0064366C    mov         eax,dword ptr [eax+0C]
 0064366F    mov         eax,dword ptr [eax+8]
 00643672    dec         eax
 00643673    test        eax,eax
>00643675    jl          006436C5
 00643677    inc         eax
 00643678    mov         dword ptr [ebp-18],eax
 0064367B    mov         dword ptr [ebp-10],0
 00643682    mov         eax,dword ptr [ebp-4]
 00643685    mov         eax,dword ptr [eax+0C]
 00643688    mov         edx,dword ptr [ebp-10]
 0064368B    call        TList.Get
 00643690    mov         dword ptr [ebp-14],eax
 00643693    mov         edx,dword ptr [ebp-14]
 00643696    mov         eax,dword ptr [ebp-8]
 00643699    call        TObject.InheritsFrom
 0064369E    test        al,al
>006436A0    je          006436BD
 006436A2    cmp         dword ptr [ebp-0C],0
>006436A6    je          006436B7
 006436A8    mov         edx,dword ptr [ebp-0C]
 006436AB    mov         eax,dword ptr [ebp-14]
 006436AE    call        TObject.InheritsFrom
 006436B3    test        al,al
>006436B5    je          006436BD
 006436B7    mov         eax,dword ptr [ebp-14]
 006436BA    mov         dword ptr [ebp-0C],eax
 006436BD    inc         dword ptr [ebp-10]
 006436C0    dec         dword ptr [ebp-18]
>006436C3    jne         00643682
 006436C5    mov         eax,dword ptr [ebp-0C]
 006436C8    mov         esp,ebp
 006436CA    pop         ebp
 006436CB    ret
end;*}

//006436CC
{*function sub_006436CC(?:TRegGroup; ?:Pointer; ?:?; ?:?):?;
begin
 006436CC    push        ebp
 006436CD    mov         ebp,esp
 006436CF    add         esp,0FFFFFFE8
 006436D2    mov         dword ptr [ebp-0C],ecx
 006436D5    mov         dword ptr [ebp-8],edx
 006436D8    mov         dword ptr [ebp-4],eax
 006436DB    cmp         dword ptr [ebp-8],0
>006436DF    je          006436F1
 006436E1    mov         edx,dword ptr [ebp+8]
 006436E4    mov         eax,dword ptr [ebp-8]
 006436E7    call        00643658
 006436EC    mov         dword ptr [ebp-14],eax
>006436EF    jmp         006436F6
 006436F1    xor         eax,eax
 006436F3    mov         dword ptr [ebp-14],eax
 006436F6    cmp         dword ptr [ebp-0C],0
>006436FA    je          0064370C
 006436FC    mov         edx,dword ptr [ebp+8]
 006436FF    mov         eax,dword ptr [ebp-0C]
 00643702    call        00643658
 00643707    mov         dword ptr [ebp-18],eax
>0064370A    jmp         00643711
 0064370C    xor         eax,eax
 0064370E    mov         dword ptr [ebp-18],eax
 00643711    cmp         dword ptr [ebp-14],0
>00643715    jne         0064372C
 00643717    cmp         dword ptr [ebp-18],0
>0064371B    jne         00643724
 0064371D    xor         eax,eax
 0064371F    mov         dword ptr [ebp-10],eax
>00643722    jmp         00643757
 00643724    mov         eax,dword ptr [ebp-0C]
 00643727    mov         dword ptr [ebp-10],eax
>0064372A    jmp         00643757
 0064372C    cmp         dword ptr [ebp-18],0
>00643730    jne         0064373A
 00643732    mov         eax,dword ptr [ebp-8]
 00643735    mov         dword ptr [ebp-10],eax
>00643738    jmp         00643757
 0064373A    mov         edx,dword ptr [ebp-18]
 0064373D    mov         eax,dword ptr [ebp-14]
 00643740    call        TObject.InheritsFrom
 00643745    test        al,al
>00643747    je          00643751
 00643749    mov         eax,dword ptr [ebp-8]
 0064374C    mov         dword ptr [ebp-10],eax
>0064374F    jmp         00643757
 00643751    mov         eax,dword ptr [ebp-0C]
 00643754    mov         dword ptr [ebp-10],eax
 00643757    mov         eax,dword ptr [ebp-10]
 0064375A    mov         esp,ebp
 0064375C    pop         ebp
 0064375D    ret         4
end;*}

//00643760
constructor TRegGroup.Create;
begin
{*
 00643760    push        ebp
 00643761    mov         ebp,esp
 00643763    add         esp,0FFFFFFF4
 00643766    test        dl,dl
>00643768    je          00643772
 0064376A    add         esp,0FFFFFFF0
 0064376D    call        @ClassCreate
 00643772    mov         dword ptr [ebp-0C],ecx
 00643775    mov         byte ptr [ebp-5],dl
 00643778    mov         dword ptr [ebp-4],eax
 0064377B    xor         edx,edx
 0064377D    mov         eax,dword ptr [ebp-4]
 00643780    call        TObject.Create
 00643785    mov         dl,1
 00643787    mov         eax,[006422A4];TList
 0064378C    call        TObject.Create;TList.Create
 00643791    mov         edx,dword ptr [ebp-4]
 00643794    mov         dword ptr [edx+4],eax
 00643797    mov         dl,1
 00643799    mov         eax,[006428B0];TStringList
 0064379E    call        TObject.Create;TStringList.Create
 006437A3    mov         edx,dword ptr [ebp-4]
 006437A6    mov         dword ptr [edx+8],eax
 006437A9    mov         dl,1
 006437AB    mov         eax,[006422A4];TList
 006437B0    call        TObject.Create;TList.Create
 006437B5    mov         edx,dword ptr [ebp-4]
 006437B8    mov         dword ptr [edx+0C],eax
 006437BB    mov         eax,dword ptr [ebp-4]
 006437BE    mov         eax,dword ptr [eax+0C]
 006437C1    mov         edx,dword ptr [ebp-0C]
 006437C4    call        TList.Add
 006437C9    mov         eax,dword ptr [ebp-4]
 006437CC    cmp         byte ptr [ebp-5],0
>006437D0    je          006437E1
 006437D2    call        @AfterConstruction
 006437D7    pop         dword ptr fs:[0]
 006437DE    add         esp,0C
 006437E1    mov         eax,dword ptr [ebp-4]
 006437E4    mov         esp,ebp
 006437E6    pop         ebp
 006437E7    ret
*}
end;

//0064383C
{*function sub_0064383C(?:Pointer; ?:AnsiString):?;
begin
 0064383C    push        ebp
 0064383D    mov         ebp,esp
 0064383F    add         esp,0FFFFFFEC
 00643842    mov         dword ptr [ebp-8],edx
 00643845    mov         dword ptr [ebp-4],eax
 00643848    mov         eax,dword ptr [ebp-4]
 0064384B    mov         eax,dword ptr [eax+4]
 0064384E    mov         eax,dword ptr [eax+8]
 00643851    dec         eax
 00643852    test        eax,eax
>00643854    jl          00643889
 00643856    inc         eax
 00643857    mov         dword ptr [ebp-14],eax
 0064385A    mov         dword ptr [ebp-10],0
 00643861    mov         eax,dword ptr [ebp-4]
 00643864    mov         eax,dword ptr [eax+4]
 00643867    mov         edx,dword ptr [ebp-10]
 0064386A    call        TList.Get
 0064386F    mov         dword ptr [ebp-0C],eax
 00643872    mov         edx,dword ptr [ebp-8]
 00643875    mov         eax,dword ptr [ebp-0C]
 00643878    call        TObject.ClassNameIs
 0064387D    test        al,al
>0064387F    jne         006438B8
 00643881    inc         dword ptr [ebp-10]
 00643884    dec         dword ptr [ebp-14]
>00643887    jne         00643861
 00643889    mov         eax,dword ptr [ebp-4]
 0064388C    mov         eax,dword ptr [eax+8]
 0064388F    mov         edx,dword ptr [ebp-8]
 00643892    mov         ecx,dword ptr [eax]
 00643894    call        dword ptr [ecx+54]
 00643897    mov         dword ptr [ebp-10],eax
 0064389A    cmp         dword ptr [ebp-10],0
>0064389E    jl          006438B3
 006438A0    mov         eax,dword ptr [ebp-4]
 006438A3    mov         eax,dword ptr [eax+8]
 006438A6    mov         edx,dword ptr [ebp-10]
 006438A9    mov         ecx,dword ptr [eax]
 006438AB    call        dword ptr [ecx+18]
 006438AE    mov         dword ptr [ebp-0C],eax
>006438B1    jmp         006438B8
 006438B3    xor         eax,eax
 006438B5    mov         dword ptr [ebp-0C],eax
 006438B8    mov         eax,dword ptr [ebp-0C]
 006438BB    mov         esp,ebp
 006438BD    pop         ebp
 006438BE    ret
end;*}

//006438C0
{*function sub_006438C0(?:Pointer; ?:?):?;
begin
 006438C0    push        ebp
 006438C1    mov         ebp,esp
 006438C3    add         esp,0FFFFFFEC
 006438C6    mov         dword ptr [ebp-8],edx
 006438C9    mov         dword ptr [ebp-4],eax
 006438CC    mov         byte ptr [ebp-9],1
 006438D0    mov         eax,dword ptr [ebp-4]
 006438D3    mov         eax,dword ptr [eax+0C]
 006438D6    mov         eax,dword ptr [eax+8]
 006438D9    dec         eax
 006438DA    test        eax,eax
>006438DC    jl          0064390D
 006438DE    inc         eax
 006438DF    mov         dword ptr [ebp-14],eax
 006438E2    mov         dword ptr [ebp-10],0
 006438E9    mov         eax,dword ptr [ebp-4]
 006438EC    mov         eax,dword ptr [eax+0C]
 006438EF    mov         edx,dword ptr [ebp-10]
 006438F2    call        TList.Get
 006438F7    mov         edx,eax
 006438F9    mov         eax,dword ptr [ebp-8]
 006438FC    call        TObject.InheritsFrom
 00643901    test        al,al
>00643903    jne         00643911
 00643905    inc         dword ptr [ebp-10]
 00643908    dec         dword ptr [ebp-14]
>0064390B    jne         006438E9
 0064390D    mov         byte ptr [ebp-9],0
 00643911    mov         al,byte ptr [ebp-9]
 00643914    mov         esp,ebp
 00643916    pop         ebp
 00643917    ret
end;*}

//00643918
{*procedure sub_00643918(?:?; ?:?);
begin
 00643918    push        ebp
 00643919    mov         ebp,esp
 0064391B    add         esp,0FFFFFEEC
 00643921    xor         ecx,ecx
 00643923    mov         dword ptr [ebp-0C],ecx
 00643926    mov         dword ptr [ebp-8],edx
 00643929    mov         dword ptr [ebp-4],eax
 0064392C    xor         eax,eax
 0064392E    push        ebp
 0064392F    push        6439B9
 00643934    push        dword ptr fs:[eax]
 00643937    mov         dword ptr fs:[eax],esp
 0064393A    lea         edx,[ebp-10C]
 00643940    mov         eax,dword ptr [ebp-8]
 00643943    call        TObject.ClassName
 00643948    lea         edx,[ebp-10C]
 0064394E    lea         eax,[ebp-0C]
 00643951    call        @LStrFromString
 00643956    mov         edx,dword ptr [ebp-0C]
 00643959    mov         eax,dword ptr [ebp-4]
 0064395C    call        0064383C
 00643961    test        eax,eax
>00643963    je          00643995
 00643965    mov         eax,dword ptr [ebp-0C]
 00643968    mov         dword ptr [ebp-114],eax
 0064396E    mov         byte ptr [ebp-110],0B
 00643975    lea         eax,[ebp-114]
 0064397B    push        eax
 0064397C    push        0
 0064397E    mov         ecx,dword ptr ds:[6EA05C];^gvar_00654FAC
 00643984    mov         dl,1
 00643986    mov         eax,[00641EBC];EFilerError
 0064398B    call        Exception.CreateResFmt;EFilerError.Create
 00643990    call        @RaiseExcept
 00643995    mov         edx,dword ptr [ebp-8]
 00643998    mov         eax,dword ptr [ebp-4]
 0064399B    mov         eax,dword ptr [eax+4]
 0064399E    call        TList.Add
 006439A3    xor         eax,eax
 006439A5    pop         edx
 006439A6    pop         ecx
 006439A7    pop         ecx
 006439A8    mov         dword ptr fs:[eax],edx
 006439AB    push        6439C0
 006439B0    lea         eax,[ebp-0C]
 006439B3    call        @LStrClr
 006439B8    ret
>006439B9    jmp         @HandleFinally
>006439BE    jmp         006439B0
 006439C0    mov         esp,ebp
 006439C2    pop         ebp
 006439C3    ret
end;*}

//006439C4
{*function sub_006439C4(?:Pointer; ?:?):?;
begin
 006439C4    push        ebp
 006439C5    mov         ebp,esp
 006439C7    add         esp,0FFFFFFF4
 006439CA    mov         dword ptr [ebp-8],edx
 006439CD    mov         dword ptr [ebp-4],eax
 006439D0    mov         edx,dword ptr [ebp-8]
 006439D3    mov         eax,dword ptr [ebp-4]
 006439D6    mov         eax,dword ptr [eax+4]
 006439D9    call        TList.IndexOf
 006439DE    test        eax,eax
 006439E0    setge       byte ptr [ebp-9]
 006439E4    mov         al,byte ptr [ebp-9]
 006439E7    mov         esp,ebp
 006439E9    pop         ebp
 006439EA    ret
end;*}

//006439EC
{*function sub_006439EC(?:Pointer; ?:?):?;
begin
 006439EC    push        ebp
 006439ED    mov         ebp,esp
 006439EF    add         esp,0FFFFFFF4
 006439F2    mov         dword ptr [ebp-8],edx
 006439F5    mov         dword ptr [ebp-4],eax
 006439F8    cmp         dword ptr [ebp-8],0
>006439FC    je          00643A0F
 006439FE    mov         eax,dword ptr [ebp-4]
 00643A01    call        FindHInstance
 00643A06    cmp         eax,dword ptr [ebp-8]
>00643A09    je          00643A0F
 00643A0B    xor         eax,eax
>00643A0D    jmp         00643A11
 00643A0F    mov         al,1
 00643A11    mov         byte ptr [ebp-9],al
 00643A14    mov         al,byte ptr [ebp-9]
 00643A17    mov         esp,ebp
 00643A19    pop         ebp
 00643A1A    ret
end;*}

//00643A1C
{*procedure sub_00643A1C(?:Pointer; ?:?);
begin
 00643A1C    push        ebp
 00643A1D    mov         ebp,esp
 00643A1F    add         esp,0FFFFFFF4
 00643A22    mov         dword ptr [ebp-8],edx
 00643A25    mov         dword ptr [ebp-4],eax
 00643A28    mov         eax,dword ptr [ebp-4]
 00643A2B    mov         eax,dword ptr [eax+0C]
 00643A2E    mov         eax,dword ptr [eax+8]
 00643A31    dec         eax
 00643A32    cmp         eax,0
>00643A35    jl          00643A6B
 00643A37    mov         dword ptr [ebp-0C],eax
 00643A3A    mov         edx,dword ptr [ebp-0C]
 00643A3D    mov         eax,dword ptr [ebp-4]
 00643A40    mov         eax,dword ptr [eax+0C]
 00643A43    call        TList.Get
 00643A48    mov         edx,dword ptr [ebp-8]
 00643A4B    call        006439EC
 00643A50    test        al,al
>00643A52    je          00643A62
 00643A54    mov         edx,dword ptr [ebp-0C]
 00643A57    mov         eax,dword ptr [ebp-4]
 00643A5A    mov         eax,dword ptr [eax+0C]
 00643A5D    call        TList.Delete
 00643A62    dec         dword ptr [ebp-0C]
 00643A65    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00643A69    jne         00643A3A
 00643A6B    mov         eax,dword ptr [ebp-4]
 00643A6E    mov         eax,dword ptr [eax+4]
 00643A71    mov         eax,dword ptr [eax+8]
 00643A74    dec         eax
 00643A75    cmp         eax,0
>00643A78    jl          00643AAE
 00643A7A    mov         dword ptr [ebp-0C],eax
 00643A7D    mov         edx,dword ptr [ebp-0C]
 00643A80    mov         eax,dword ptr [ebp-4]
 00643A83    mov         eax,dword ptr [eax+4]
 00643A86    call        TList.Get
 00643A8B    mov         edx,dword ptr [ebp-8]
 00643A8E    call        006439EC
 00643A93    test        al,al
>00643A95    je          00643AA5
 00643A97    mov         edx,dword ptr [ebp-0C]
 00643A9A    mov         eax,dword ptr [ebp-4]
 00643A9D    mov         eax,dword ptr [eax+4]
 00643AA0    call        TList.Delete
 00643AA5    dec         dword ptr [ebp-0C]
 00643AA8    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00643AAC    jne         00643A7D
 00643AAE    mov         eax,dword ptr [ebp-4]
 00643AB1    mov         eax,dword ptr [eax+8]
 00643AB4    mov         edx,dword ptr [eax]
 00643AB6    call        dword ptr [edx+14]
 00643AB9    dec         eax
 00643ABA    cmp         eax,0
>00643ABD    jl          00643AF3
 00643ABF    mov         dword ptr [ebp-0C],eax
 00643AC2    mov         edx,dword ptr [ebp-0C]
 00643AC5    mov         eax,dword ptr [ebp-4]
 00643AC8    mov         eax,dword ptr [eax+8]
 00643ACB    mov         ecx,dword ptr [eax]
 00643ACD    call        dword ptr [ecx+18]
 00643AD0    mov         edx,dword ptr [ebp-8]
 00643AD3    call        006439EC
 00643AD8    test        al,al
>00643ADA    je          00643AEA
 00643ADC    mov         edx,dword ptr [ebp-0C]
 00643ADF    mov         eax,dword ptr [ebp-4]
 00643AE2    mov         eax,dword ptr [eax+8]
 00643AE5    mov         ecx,dword ptr [eax]
 00643AE7    call        dword ptr [ecx+48]
 00643AEA    dec         dword ptr [ebp-0C]
 00643AED    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00643AF1    jne         00643AC2
 00643AF3    mov         esp,ebp
 00643AF5    pop         ebp
 00643AF6    ret
end;*}

//00643AF8
{*procedure sub_00643AF8(?:?; ?:TControl);
begin
 00643AF8    push        ebp
 00643AF9    mov         ebp,esp
 00643AFB    add         esp,0FFFFFFEC
 00643AFE    mov         dword ptr [ebp-8],edx
 00643B01    mov         dword ptr [ebp-4],eax
 00643B04    mov         eax,dword ptr [ebp-4]
 00643B07    mov         eax,dword ptr [eax+20]
 00643B0A    cmp         eax,dword ptr [ebp-8]
>00643B0D    je          00643B5B
 00643B0F    mov         eax,dword ptr [ebp-4]
 00643B12    mov         edx,dword ptr [ebp-8]
 00643B15    mov         dword ptr [eax+20],edx
 00643B18    mov         eax,dword ptr [ebp-4]
 00643B1B    mov         eax,dword ptr [eax+4]
 00643B1E    mov         eax,dword ptr [eax+8]
 00643B21    dec         eax
 00643B22    test        eax,eax
>00643B24    jl          00643B5B
 00643B26    inc         eax
 00643B27    mov         dword ptr [ebp-10],eax
 00643B2A    mov         dword ptr [ebp-0C],0
 00643B31    mov         eax,dword ptr [ebp-4]
 00643B34    mov         eax,dword ptr [eax+4]
 00643B37    mov         edx,dword ptr [ebp-0C]
 00643B3A    call        TList.Get
 00643B3F    mov         dword ptr [ebp-14],eax
 00643B42    mov         edx,dword ptr [ebp-8]
 00643B45    mov         eax,dword ptr [ebp-14]
 00643B48    call        006438C0
 00643B4D    mov         edx,dword ptr [ebp-14]
 00643B50    mov         byte ptr [edx+10],al
 00643B53    inc         dword ptr [ebp-0C]
 00643B56    dec         dword ptr [ebp-10]
>00643B59    jne         00643B31
 00643B5B    mov         esp,ebp
 00643B5D    pop         ebp
 00643B5E    ret
end;*}

//00643B60
constructor TRegGroups.Create;
begin
{*
 00643B60    push        ebp
 00643B61    mov         ebp,esp
 00643B63    add         esp,0FFFFFFF4
 00643B66    test        dl,dl
>00643B68    je          00643B72
 00643B6A    add         esp,0FFFFFFF0
 00643B6D    call        @ClassCreate
 00643B72    mov         byte ptr [ebp-5],dl
 00643B75    mov         dword ptr [ebp-4],eax
 00643B78    xor         edx,edx
 00643B7A    mov         eax,dword ptr [ebp-4]
 00643B7D    call        TObject.Create
 00643B82    mov         dl,1
 00643B84    mov         eax,[006422A4];TList
 00643B89    call        TObject.Create;TList.Create
 00643B8E    mov         edx,dword ptr [ebp-4]
 00643B91    mov         dword ptr [edx+4],eax
 00643B94    mov         eax,dword ptr [ebp-4]
 00643B97    add         eax,8
 00643B9A    push        eax
 00643B9B    call        KERNEL32.InitializeCriticalSection
 00643BA0    mov         ecx,dword ptr ds:[6423D4];TPersistent
 00643BA6    mov         dl,1
 00643BA8    mov         eax,[00643588];TRegGroup
 00643BAD    call        TRegGroup.Create;TRegGroup.Create
 00643BB2    mov         dword ptr [ebp-0C],eax
 00643BB5    mov         eax,dword ptr [ebp-4]
 00643BB8    mov         eax,dword ptr [eax+4]
 00643BBB    mov         edx,dword ptr [ebp-0C]
 00643BBE    call        TList.Add
 00643BC3    mov         eax,dword ptr [ebp-0C]
 00643BC6    mov         byte ptr [eax+10],1;TRegGroup.FActive:Boolean
 00643BCA    mov         eax,dword ptr [ebp-4]
 00643BCD    cmp         byte ptr [ebp-5],0
>00643BD1    je          00643BE2
 00643BD3    call        @AfterConstruction
 00643BD8    pop         dword ptr fs:[0]
 00643BDF    add         esp,0C
 00643BE2    mov         eax,dword ptr [ebp-4]
 00643BE5    mov         esp,ebp
 00643BE7    pop         ebp
 00643BE8    ret
*}
end;

//00643C68
{*function sub_00643C68(?:?; ?:Pointer):?;
begin
 00643C68    push        ebp
 00643C69    mov         ebp,esp
 00643C6B    add         esp,0FFFFFFE8
 00643C6E    mov         dword ptr [ebp-8],edx
 00643C71    mov         dword ptr [ebp-4],eax
 00643C74    xor         eax,eax
 00643C76    mov         dword ptr [ebp-0C],eax
 00643C79    mov         eax,dword ptr [ebp-4]
 00643C7C    mov         eax,dword ptr [eax+4]
 00643C7F    mov         eax,dword ptr [eax+8]
 00643C82    dec         eax
 00643C83    test        eax,eax
>00643C85    jl          00643CC2
 00643C87    inc         eax
 00643C88    mov         dword ptr [ebp-18],eax
 00643C8B    mov         dword ptr [ebp-10],0
 00643C92    mov         eax,dword ptr [ebp-4]
 00643C95    mov         eax,dword ptr [eax+4]
 00643C98    mov         edx,dword ptr [ebp-10]
 00643C9B    call        TList.Get
 00643CA0    mov         dword ptr [ebp-14],eax
 00643CA3    mov         eax,dword ptr [ebp-8]
 00643CA6    push        eax
 00643CA7    mov         ecx,dword ptr [ebp-0C]
 00643CAA    mov         edx,dword ptr [ebp-14]
 00643CAD    mov         eax,[00643588];TRegGroup
 00643CB2    call        006436CC
 00643CB7    mov         dword ptr [ebp-0C],eax
 00643CBA    inc         dword ptr [ebp-10]
 00643CBD    dec         dword ptr [ebp-18]
>00643CC0    jne         00643C92
 00643CC2    mov         eax,dword ptr [ebp-0C]
 00643CC5    mov         esp,ebp
 00643CC7    pop         ebp
 00643CC8    ret
end;*}

//00643CCC
{*function sub_00643CCC(?:?; ?:AnsiString):?;
begin
 00643CCC    push        ebp
 00643CCD    mov         ebp,esp
 00643CCF    add         esp,0FFFFFFE8
 00643CD2    mov         dword ptr [ebp-8],edx
 00643CD5    mov         dword ptr [ebp-4],eax
 00643CD8    xor         eax,eax
 00643CDA    mov         dword ptr [ebp-0C],eax
 00643CDD    mov         eax,dword ptr [ebp-4]
 00643CE0    mov         eax,dword ptr [eax+4]
 00643CE3    mov         eax,dword ptr [eax+8]
 00643CE6    dec         eax
 00643CE7    test        eax,eax
>00643CE9    jl          00643D2C
 00643CEB    inc         eax
 00643CEC    mov         dword ptr [ebp-14],eax
 00643CEF    mov         dword ptr [ebp-10],0
 00643CF6    mov         eax,dword ptr [ebp-4]
 00643CF9    mov         eax,dword ptr [eax+4]
 00643CFC    mov         edx,dword ptr [ebp-10]
 00643CFF    call        TList.Get
 00643D04    mov         dword ptr [ebp-18],eax
 00643D07    mov         eax,dword ptr [ebp-18]
 00643D0A    cmp         byte ptr [eax+10],0
>00643D0E    je          00643D1E
 00643D10    mov         edx,dword ptr [ebp-8]
 00643D13    mov         eax,dword ptr [ebp-18]
 00643D16    call        0064383C
 00643D1B    mov         dword ptr [ebp-0C],eax
 00643D1E    cmp         dword ptr [ebp-0C],0
>00643D22    jne         00643D2C
 00643D24    inc         dword ptr [ebp-10]
 00643D27    dec         dword ptr [ebp-14]
>00643D2A    jne         00643CF6
 00643D2C    mov         eax,dword ptr [ebp-0C]
 00643D2F    mov         esp,ebp
 00643D31    pop         ebp
 00643D32    ret
end;*}

//00643D34
procedure Error;
begin
{*
 00643D34    push        ebp
 00643D35    mov         ebp,esp
 00643D37    add         esp,0FFFFFEF4
 00643D3D    xor         eax,eax
 00643D3F    mov         dword ptr [ebp-10C],eax
 00643D45    xor         eax,eax
 00643D47    push        ebp
 00643D48    push        643DB7
 00643D4D    push        dword ptr fs:[eax]
 00643D50    mov         dword ptr fs:[eax],esp
 00643D53    lea         edx,[ebp-108]
 00643D59    mov         eax,dword ptr [ebp+8]
 00643D5C    mov         eax,dword ptr [eax-4]
 00643D5F    call        TObject.ClassName
 00643D64    lea         eax,[ebp-108]
 00643D6A    mov         dword ptr [ebp-8],eax
 00643D6D    mov         byte ptr [ebp-4],4
 00643D71    lea         eax,[ebp-8]
 00643D74    push        eax
 00643D75    push        0
 00643D77    lea         edx,[ebp-10C]
 00643D7D    mov         eax,[006EA0D4]
 00643D82    call        LoadResString
 00643D87    mov         ecx,dword ptr [ebp-10C]
 00643D8D    mov         dl,1
 00643D8F    mov         eax,[00641EBC];EFilerError
 00643D94    call        Exception.CreateFmt
 00643D99    call        @RaiseExcept
 00643D9E    xor         eax,eax
 00643DA0    pop         edx
 00643DA1    pop         ecx
 00643DA2    pop         ecx
 00643DA3    mov         dword ptr fs:[eax],edx
 00643DA6    push        643DBE
 00643DAB    lea         eax,[ebp-10C]
 00643DB1    call        @LStrClr
 00643DB6    ret
>00643DB7    jmp         @HandleFinally
>00643DBC    jmp         00643DAB
 00643DBE    mov         esp,ebp
 00643DC0    pop         ebp
 00643DC1    ret
*}
end;

//00643DC4
{*procedure sub_00643DC4(?:?; ?:TComponent; ?:TControl);
begin
 00643DC4    push        ebp
 00643DC5    mov         ebp,esp
 00643DC7    add         esp,0FFFFFFDC
 00643DCA    mov         dword ptr [ebp-4],ecx
 00643DCD    mov         dword ptr [ebp-0C],edx
 00643DD0    mov         dword ptr [ebp-8],eax
 00643DD3    mov         edx,dword ptr [ebp-4]
 00643DD6    mov         eax,dword ptr [ebp-8]
 00643DD9    call        00643C68
 00643DDE    mov         dword ptr [ebp-10],eax
 00643DE1    cmp         dword ptr [ebp-10],0
>00643DE5    jne         00643DEE
 00643DE7    push        ebp
 00643DE8    call        Error
 00643DED    pop         ecx
 00643DEE    mov         edx,dword ptr [ebp-0C]
 00643DF1    mov         eax,dword ptr [ebp-10]
 00643DF4    call        00643638
 00643DF9    mov         eax,dword ptr [ebp-8]
 00643DFC    mov         eax,dword ptr [eax+4]
 00643DFF    mov         eax,dword ptr [eax+8]
 00643E02    dec         eax
 00643E03    test        eax,eax
>00643E05    jl          00643EA2
 00643E0B    inc         eax
 00643E0C    mov         dword ptr [ebp-24],eax
 00643E0F    mov         dword ptr [ebp-1C],0
 00643E16    mov         eax,dword ptr [ebp-8]
 00643E19    mov         eax,dword ptr [eax+4]
 00643E1C    mov         edx,dword ptr [ebp-1C]
 00643E1F    call        TList.Get
 00643E24    mov         dword ptr [ebp-14],eax
 00643E27    mov         eax,dword ptr [ebp-14]
 00643E2A    cmp         eax,dword ptr [ebp-10]
>00643E2D    je          00643E96
 00643E2F    mov         eax,dword ptr [ebp-14]
 00643E32    mov         eax,dword ptr [eax+4]
 00643E35    mov         eax,dword ptr [eax+8]
 00643E38    dec         eax
 00643E39    cmp         eax,0
>00643E3C    jl          00643E96
 00643E3E    mov         dword ptr [ebp-20],eax
 00643E41    mov         eax,dword ptr [ebp-14]
 00643E44    mov         eax,dword ptr [eax+4]
 00643E47    mov         edx,dword ptr [ebp-20]
 00643E4A    call        TList.Get
 00643E4F    mov         dword ptr [ebp-18],eax
 00643E52    mov         edx,dword ptr [ebp-0C]
 00643E55    mov         eax,dword ptr [ebp-18]
 00643E58    call        TObject.InheritsFrom
 00643E5D    test        al,al
>00643E5F    je          00643E8D
 00643E61    mov         edx,dword ptr [ebp-18]
 00643E64    mov         eax,dword ptr [ebp-8]
 00643E67    call        00643C68
 00643E6C    cmp         eax,dword ptr [ebp-10]
>00643E6F    jne         00643E8D
 00643E71    mov         eax,dword ptr [ebp-14]
 00643E74    mov         eax,dword ptr [eax+4]
 00643E77    mov         edx,dword ptr [ebp-20]
 00643E7A    call        TList.Delete
 00643E7F    mov         eax,dword ptr [ebp-10]
 00643E82    mov         eax,dword ptr [eax+4]
 00643E85    mov         edx,dword ptr [ebp-18]
 00643E88    call        TList.Add
 00643E8D    dec         dword ptr [ebp-20]
 00643E90    cmp         dword ptr [ebp-20],0FFFFFFFF
>00643E94    jne         00643E41
 00643E96    inc         dword ptr [ebp-1C]
 00643E99    dec         dword ptr [ebp-24]
>00643E9C    jne         00643E16
 00643EA2    mov         esp,ebp
 00643EA4    pop         ebp
 00643EA5    ret
end;*}

//00643EA8
{*procedure sub_00643EA8(?:?);
begin
 00643EA8    push        ebp
 00643EA9    mov         ebp,esp
 00643EAB    push        ecx
 00643EAC    mov         dword ptr [ebp-4],eax
 00643EAF    mov         eax,dword ptr [ebp-4]
 00643EB2    add         eax,8
 00643EB5    push        eax
 00643EB6    call        KERNEL32.EnterCriticalSection
 00643EBB    pop         ecx
 00643EBC    pop         ebp
 00643EBD    ret
end;*}

//00643EC0
{*procedure sub_00643EC0(?:?; ?:?);
begin
 00643EC0    push        ebp
 00643EC1    mov         ebp,esp
 00643EC3    add         esp,0FFFFFFF4
 00643EC6    mov         dword ptr [ebp-8],edx
 00643EC9    mov         dword ptr [ebp-4],eax
 00643ECC    mov         edx,dword ptr [ebp-8]
 00643ECF    mov         eax,dword ptr [ebp-4]
 00643ED2    call        00643C68
 00643ED7    mov         dword ptr [ebp-0C],eax
 00643EDA    cmp         dword ptr [ebp-0C],0
>00643EDE    je          00643EEB
 00643EE0    mov         edx,dword ptr [ebp-8]
 00643EE3    mov         eax,dword ptr [ebp-0C]
 00643EE6    call        00643918
 00643EEB    mov         esp,ebp
 00643EED    pop         ebp
 00643EEE    ret
end;*}

//00643EF0
{*function sub_00643EF0(?:?; ?:?):?;
begin
 00643EF0    push        ebp
 00643EF1    mov         ebp,esp
 00643EF3    add         esp,0FFFFFFEC
 00643EF6    mov         dword ptr [ebp-8],edx
 00643EF9    mov         dword ptr [ebp-4],eax
 00643EFC    mov         byte ptr [ebp-9],1
 00643F00    mov         eax,dword ptr [ebp-4]
 00643F03    mov         eax,dword ptr [eax+4]
 00643F06    mov         eax,dword ptr [eax+8]
 00643F09    dec         eax
 00643F0A    test        eax,eax
>00643F0C    jl          00643F3B
 00643F0E    inc         eax
 00643F0F    mov         dword ptr [ebp-14],eax
 00643F12    mov         dword ptr [ebp-10],0
 00643F19    mov         eax,dword ptr [ebp-4]
 00643F1C    mov         eax,dword ptr [eax+4]
 00643F1F    mov         edx,dword ptr [ebp-10]
 00643F22    call        TList.Get
 00643F27    mov         edx,dword ptr [ebp-8]
 00643F2A    call        006439C4
 00643F2F    test        al,al
>00643F31    jne         00643F3F
 00643F33    inc         dword ptr [ebp-10]
 00643F36    dec         dword ptr [ebp-14]
>00643F39    jne         00643F19
 00643F3B    mov         byte ptr [ebp-9],0
 00643F3F    mov         al,byte ptr [ebp-9]
 00643F42    mov         esp,ebp
 00643F44    pop         ebp
 00643F45    ret
end;*}

//00643F48
{*procedure sub_00643F48(?:?; ?:TControl);
begin
 00643F48    push        ebp
 00643F49    mov         ebp,esp
 00643F4B    add         esp,0FFFFFFF0
 00643F4E    mov         dword ptr [ebp-8],edx
 00643F51    mov         dword ptr [ebp-4],eax
 00643F54    mov         eax,dword ptr [ebp-4]
 00643F57    mov         eax,dword ptr [eax+4]
 00643F5A    mov         eax,dword ptr [eax+8]
 00643F5D    dec         eax
 00643F5E    test        eax,eax
>00643F60    jl          00643F92
 00643F62    inc         eax
 00643F63    mov         dword ptr [ebp-10],eax
 00643F66    mov         dword ptr [ebp-0C],0
 00643F6D    mov         eax,dword ptr [ebp-4]
 00643F70    mov         eax,dword ptr [eax+4]
 00643F73    mov         edx,dword ptr [ebp-0C]
 00643F76    call        TList.Get
 00643F7B    mov         eax,dword ptr [eax+0C]
 00643F7E    mov         edx,dword ptr [ebp-8]
 00643F81    call        TList.IndexOf
 00643F86    test        eax,eax
>00643F88    jge         00643FAE
 00643F8A    inc         dword ptr [ebp-0C]
 00643F8D    dec         dword ptr [ebp-10]
>00643F90    jne         00643F6D
 00643F92    mov         ecx,dword ptr [ebp-8]
 00643F95    mov         dl,1
 00643F97    mov         eax,[00643588];TRegGroup
 00643F9C    call        TRegGroup.Create;TRegGroup.Create
 00643FA1    mov         edx,eax
 00643FA3    mov         eax,dword ptr [ebp-4]
 00643FA6    mov         eax,dword ptr [eax+4]
 00643FA9    call        TList.Add
 00643FAE    mov         esp,ebp
 00643FB0    pop         ebp
 00643FB1    ret
end;*}

//00643FB4
procedure ReadError(Ident:PResStringRec);
begin
{*
 00643FB4    push        ebp
 00643FB5    mov         ebp,esp
 00643FB7    push        ecx
 00643FB8    mov         dword ptr [ebp-4],eax
 00643FBB    mov         eax,dword ptr [ebp-4]
 00643FBE    add         eax,8
 00643FC1    push        eax
 00643FC2    call        KERNEL32.LeaveCriticalSection
 00643FC7    pop         ecx
 00643FC8    pop         ebp
 00643FC9    ret
*}
end;

//00643FCC
{*procedure sub_00643FCC(?:?; ?:?);
begin
 00643FCC    push        ebp
 00643FCD    mov         ebp,esp
 00643FCF    add         esp,0FFFFFFF4
 00643FD2    mov         dword ptr [ebp-8],edx
 00643FD5    mov         dword ptr [ebp-4],eax
 00643FD8    mov         eax,dword ptr [ebp-4]
 00643FDB    mov         eax,dword ptr [eax+4]
 00643FDE    mov         eax,dword ptr [eax+8]
 00643FE1    dec         eax
 00643FE2    cmp         eax,0
>00643FE5    jl          00644009
 00643FE7    mov         dword ptr [ebp-0C],eax
 00643FEA    mov         edx,dword ptr [ebp-0C]
 00643FED    mov         eax,dword ptr [ebp-4]
 00643FF0    mov         eax,dword ptr [eax+4]
 00643FF3    call        TList.Get
 00643FF8    mov         edx,dword ptr [ebp-8]
 00643FFB    call        00643A1C
 00644000    dec         dword ptr [ebp-0C]
 00644003    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00644007    jne         00643FEA
 00644009    mov         esp,ebp
 0064400B    pop         ebp
 0064400C    ret
end;*}

//00644010
{*constructor TClassFinder.Create(?:?);
begin
 00644010    push        ebp
 00644011    mov         ebp,esp
 00644013    add         esp,0FFFFFFE8
 00644016    test        dl,dl
>00644018    je          00644022
 0064401A    add         esp,0FFFFFFF0
 0064401D    call        @ClassCreate
 00644022    mov         dword ptr [ebp-0C],ecx
 00644025    mov         byte ptr [ebp-5],dl
 00644028    mov         dword ptr [ebp-4],eax
 0064402B    xor         edx,edx
 0064402D    mov         eax,dword ptr [ebp-4]
 00644030    call        TObject.Create
 00644035    mov         dl,1
 00644037    mov         eax,[006422A4];TList
 0064403C    call        TObject.Create;TList.Create
 00644041    mov         edx,dword ptr [ebp-4]
 00644044    mov         dword ptr [edx+4],eax
 00644047    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 0064404C    call        00643EA8
 00644051    xor         eax,eax
 00644053    push        ebp
 00644054    push        64412E
 00644059    push        dword ptr fs:[eax]
 0064405C    mov         dword ptr fs:[eax],esp
 0064405F    cmp         dword ptr [ebp-0C],0
>00644063    jne         00644070
 00644065    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 0064406A    mov         eax,dword ptr [eax+20]
 0064406D    mov         dword ptr [ebp-0C],eax
 00644070    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644075    mov         eax,dword ptr [eax+4]
 00644078    mov         eax,dword ptr [eax+8]
 0064407B    dec         eax
 0064407C    test        eax,eax
>0064407E    jl          006440C3
 00644080    inc         eax
 00644081    mov         dword ptr [ebp-18],eax
 00644084    mov         dword ptr [ebp-10],0
 0064408B    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644090    mov         eax,dword ptr [eax+4]
 00644093    mov         edx,dword ptr [ebp-10]
 00644096    call        TList.Get
 0064409B    mov         dword ptr [ebp-14],eax
 0064409E    mov         edx,dword ptr [ebp-0C]
 006440A1    mov         eax,dword ptr [ebp-14]
 006440A4    call        006438C0
 006440A9    test        al,al
>006440AB    je          006440BB
 006440AD    mov         eax,dword ptr [ebp-4]
 006440B0    mov         eax,dword ptr [eax+4]
 006440B3    mov         edx,dword ptr [ebp-14]
 006440B6    call        TList.Add
 006440BB    inc         dword ptr [ebp-10]
 006440BE    dec         dword ptr [ebp-18]
>006440C1    jne         0064408B
 006440C3    cmp         byte ptr [ebp+8],0
>006440C7    je          00644116
 006440C9    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006440CE    mov         eax,dword ptr [eax+4]
 006440D1    mov         eax,dword ptr [eax+8]
 006440D4    dec         eax
 006440D5    test        eax,eax
>006440D7    jl          00644116
 006440D9    inc         eax
 006440DA    mov         dword ptr [ebp-18],eax
 006440DD    mov         dword ptr [ebp-10],0
 006440E4    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006440E9    mov         eax,dword ptr [eax+4]
 006440EC    mov         edx,dword ptr [ebp-10]
 006440EF    call        TList.Get
 006440F4    mov         dword ptr [ebp-14],eax
 006440F7    mov         eax,dword ptr [ebp-14]
 006440FA    cmp         byte ptr [eax+10],0
>006440FE    je          0064410E
 00644100    mov         eax,dword ptr [ebp-4]
 00644103    mov         eax,dword ptr [eax+4]
 00644106    mov         edx,dword ptr [ebp-14]
 00644109    call        TList.Add
 0064410E    inc         dword ptr [ebp-10]
 00644111    dec         dword ptr [ebp-18]
>00644114    jne         006440E4
 00644116    xor         eax,eax
 00644118    pop         edx
 00644119    pop         ecx
 0064411A    pop         ecx
 0064411B    mov         dword ptr fs:[eax],edx
 0064411E    push        644135
 00644123    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644128    call        ReadError
 0064412D    ret
>0064412E    jmp         @HandleFinally
>00644133    jmp         00644123
 00644135    mov         eax,dword ptr [ebp-4]
 00644138    cmp         byte ptr [ebp-5],0
>0064413C    je          0064414D
 0064413E    call        @AfterConstruction
 00644143    pop         dword ptr fs:[0]
 0064414A    add         esp,0C
 0064414D    mov         eax,dword ptr [ebp-4]
 00644150    mov         esp,ebp
 00644152    pop         ebp
 00644153    ret         4
end;*}

//00644194
{*function sub_00644194(?:?; ?:?):?;
begin
 00644194    push        ebp
 00644195    mov         ebp,esp
 00644197    add         esp,0FFFFFFE8
 0064419A    mov         dword ptr [ebp-8],edx
 0064419D    mov         dword ptr [ebp-4],eax
 006441A0    xor         eax,eax
 006441A2    mov         dword ptr [ebp-0C],eax
 006441A5    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006441AA    call        00643EA8
 006441AF    xor         eax,eax
 006441B1    push        ebp
 006441B2    push        644222
 006441B7    push        dword ptr fs:[eax]
 006441BA    mov         dword ptr fs:[eax],esp
 006441BD    mov         eax,dword ptr [ebp-4]
 006441C0    mov         eax,dword ptr [eax+4]
 006441C3    mov         eax,dword ptr [eax+8]
 006441C6    dec         eax
 006441C7    test        eax,eax
>006441C9    jl          0064420A
 006441CB    inc         eax
 006441CC    mov         dword ptr [ebp-14],eax
 006441CF    mov         dword ptr [ebp-10],0
 006441D6    mov         eax,dword ptr [ebp-4]
 006441D9    mov         eax,dword ptr [eax+4]
 006441DC    mov         edx,dword ptr [ebp-10]
 006441DF    call        TList.Get
 006441E4    mov         dword ptr [ebp-18],eax
 006441E7    mov         edx,dword ptr [ebp-8]
 006441EA    mov         eax,dword ptr [ebp-18]
 006441ED    call        0064383C
 006441F2    mov         dword ptr [ebp-0C],eax
 006441F5    cmp         dword ptr [ebp-0C],0
>006441F9    je          00644202
 006441FB    call        @TryFinallyExit
>00644200    jmp         00644229
 00644202    inc         dword ptr [ebp-10]
 00644205    dec         dword ptr [ebp-14]
>00644208    jne         006441D6
 0064420A    xor         eax,eax
 0064420C    pop         edx
 0064420D    pop         ecx
 0064420E    pop         ecx
 0064420F    mov         dword ptr fs:[eax],edx
 00644212    push        644229
 00644217    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 0064421C    call        ReadError
 00644221    ret
>00644222    jmp         @HandleFinally
>00644227    jmp         00644217
 00644229    mov         eax,dword ptr [ebp-0C]
 0064422C    mov         esp,ebp
 0064422E    pop         ebp
 0064422F    ret
end;*}

//00644230
function GetFieldClassTable(AClass:TClass):PFieldClassTable;
begin
{*
 00644230    mov         eax,dword ptr [eax-38]
 00644233    or          eax,eax
>00644235    je          0064423A
 00644237    mov         eax,dword ptr [eax+2]
 0064423A    ret
*}
end;

//0064423C
procedure sub_0064423C(?:AnsiString);
begin
{*
 0064423C    push        ebp
 0064423D    mov         ebp,esp
 0064423F    add         esp,0FFFFFFF0
 00644242    xor         edx,edx
 00644244    mov         dword ptr [ebp-10],edx
 00644247    mov         dword ptr [ebp-4],eax
 0064424A    xor         eax,eax
 0064424C    push        ebp
 0064424D    push        64429F
 00644252    push        dword ptr fs:[eax]
 00644255    mov         dword ptr fs:[eax],esp
 00644258    mov         eax,dword ptr [ebp-4]
 0064425B    mov         dword ptr [ebp-0C],eax
 0064425E    mov         byte ptr [ebp-8],0B
 00644262    lea         eax,[ebp-0C]
 00644265    push        eax
 00644266    push        0
 00644268    lea         edx,[ebp-10]
 0064426B    mov         eax,[006EA058];^gvar_00654FA4
 00644270    call        LoadResString
 00644275    mov         ecx,dword ptr [ebp-10]
 00644278    mov         dl,1
 0064427A    mov         eax,[00641FC4];EClassNotFound
 0064427F    call        Exception.CreateFmt;EClassNotFound.Create
 00644284    call        @RaiseExcept
 00644289    xor         eax,eax
 0064428B    pop         edx
 0064428C    pop         ecx
 0064428D    pop         ecx
 0064428E    mov         dword ptr fs:[eax],edx
 00644291    push        6442A6
 00644296    lea         eax,[ebp-10]
 00644299    call        @LStrClr
 0064429E    ret
>0064429F    jmp         @HandleFinally
>006442A4    jmp         00644296
 006442A6    mov         esp,ebp
 006442A8    pop         ebp
 006442A9    ret
*}
end;

//006442AC
{*function sub_006442AC(?:AnsiString):?;
begin
 006442AC    push        ebp
 006442AD    mov         ebp,esp
 006442AF    add         esp,0FFFFFFF8
 006442B2    mov         dword ptr [ebp-4],eax
 006442B5    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006442BA    call        00643EA8
 006442BF    xor         eax,eax
 006442C1    push        ebp
 006442C2    push        6442F5
 006442C7    push        dword ptr fs:[eax]
 006442CA    mov         dword ptr fs:[eax],esp
 006442CD    mov         edx,dword ptr [ebp-4]
 006442D0    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006442D5    call        00643CCC
 006442DA    mov         dword ptr [ebp-8],eax
 006442DD    xor         eax,eax
 006442DF    pop         edx
 006442E0    pop         ecx
 006442E1    pop         ecx
 006442E2    mov         dword ptr fs:[eax],edx
 006442E5    push        6442FC
 006442EA    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006442EF    call        ReadError
 006442F4    ret
>006442F5    jmp         @HandleFinally
>006442FA    jmp         006442EA
 006442FC    mov         eax,dword ptr [ebp-8]
 006442FF    pop         ecx
 00644300    pop         ecx
 00644301    pop         ebp
 00644302    ret
end;*}

//00644304
{*function sub_00644304(?:AnsiString):?;
begin
 00644304    push        ebp
 00644305    mov         ebp,esp
 00644307    add         esp,0FFFFFFF8
 0064430A    mov         dword ptr [ebp-4],eax
 0064430D    mov         eax,dword ptr [ebp-4]
 00644310    call        006442AC
 00644315    mov         dword ptr [ebp-8],eax
 00644318    cmp         dword ptr [ebp-8],0
>0064431C    jne         00644326
 0064431E    mov         eax,dword ptr [ebp-4]
 00644321    call        0064423C
 00644326    mov         eax,dword ptr [ebp-8]
 00644329    pop         ecx
 0064432A    pop         ecx
 0064432B    pop         ebp
 0064432C    ret
end;*}

//00644330
procedure RegisterClass(AClass:TPersistentClass);
begin
{*
 00644330    push        ebp
 00644331    mov         ebp,esp
 00644333    push        ecx
 00644334    mov         dword ptr [ebp-4],eax
 00644337    mov         eax,[006ECFA0];gvar_006ECFA0:TRegGroups
 0064433C    call        00643EA8
 00644341    xor         eax,eax
 00644343    push        ebp
 00644344    push        64439D
 00644349    push        dword ptr fs:[eax]
 0064434C    mov         dword ptr fs:[eax],esp
>0064434F    jmp         00644374
 00644351    mov         edx,dword ptr [ebp-4]
 00644354    mov         eax,[006ECFA0];gvar_006ECFA0:TRegGroups
 00644359    call        00643EC0
 0064435E    mov         eax,dword ptr [ebp-4]
 00644361    cmp         eax,dword ptr ds:[6423D4];TPersistent
>00644367    je          00644385
 00644369    mov         eax,dword ptr [ebp-4]
 0064436C    call        TObject.ClassParent
 00644371    mov         dword ptr [ebp-4],eax
 00644374    mov         edx,dword ptr [ebp-4]
 00644377    mov         eax,[006ECFA0];gvar_006ECFA0:TRegGroups
 0064437C    call        00643EF0
 00644381    test        al,al
>00644383    je          00644351
 00644385    xor         eax,eax
 00644387    pop         edx
 00644388    pop         ecx
 00644389    pop         ecx
 0064438A    mov         dword ptr fs:[eax],edx
 0064438D    push        6443A4
 00644392    mov         eax,[006ECFA0];gvar_006ECFA0:TRegGroups
 00644397    call        ReadError
 0064439C    ret
>0064439D    jmp         @HandleFinally
>006443A2    jmp         00644392
 006443A4    pop         ecx
 006443A5    pop         ebp
 006443A6    ret
*}
end;

//006443A8
{*procedure sub_006443A8(?:TPersistent; ?:?);
begin
 006443A8    push        ebp
 006443A9    mov         ebp,esp
 006443AB    add         esp,0FFFFFFF0
 006443AE    push        ebx
 006443AF    mov         ecx,edx
 006443B1    test        ecx,ecx
>006443B3    js          006443BC
 006443B5    mov         ebx,dword ptr [eax+ecx*4]
 006443B8    dec         ecx
 006443B9    push        ebx
>006443BA    jns         006443B5
 006443BC    mov         eax,esp
 006443BE    mov         dword ptr [ebp-8],edx
 006443C1    mov         dword ptr [ebp-4],eax
 006443C4    mov         eax,dword ptr [ebp-8]
 006443C7    test        eax,eax
>006443C9    jl          006443EC
 006443CB    inc         eax
 006443CC    mov         dword ptr [ebp-10],eax
 006443CF    mov         dword ptr [ebp-0C],0
 006443D6    mov         eax,dword ptr [ebp-4]
 006443D9    mov         edx,dword ptr [ebp-0C]
 006443DC    mov         eax,dword ptr [eax+edx*4]
 006443DF    call        RegisterClass
 006443E4    inc         dword ptr [ebp-0C]
 006443E7    dec         dword ptr [ebp-10]
>006443EA    jne         006443D6
 006443EC    mov         ebx,dword ptr [ebp-14]
 006443EF    mov         esp,ebp
 006443F1    pop         ebp
 006443F2    ret
end;*}

//006443F4
{*procedure sub_006443F4(?:?);
begin
 006443F4    push        ebp
 006443F5    mov         ebp,esp
 006443F7    push        ecx
 006443F8    mov         dword ptr [ebp-4],eax
 006443FB    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644400    call        00643EA8
 00644405    xor         eax,eax
 00644407    push        ebp
 00644408    push        644438
 0064440D    push        dword ptr fs:[eax]
 00644410    mov         dword ptr fs:[eax],esp
 00644413    mov         edx,dword ptr [ebp-4]
 00644416    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 0064441B    call        00643FCC
 00644420    xor         eax,eax
 00644422    pop         edx
 00644423    pop         ecx
 00644424    pop         ecx
 00644425    mov         dword ptr fs:[eax],edx
 00644428    push        64443F
 0064442D    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644432    call        ReadError
 00644437    ret
>00644438    jmp         @HandleFinally
>0064443D    jmp         PropValueError
 0064443F    pop         ecx
 00644440    pop         ebp
 00644441    ret
end;*}

//0064442D
procedure PropValueError;
begin
{*
 0064442D    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644432    call        ReadError
 00644437    ret
*}
end;

//00644444
procedure sub_00644444(?:TControl);
begin
{*
 00644444    push        ebp
 00644445    mov         ebp,esp
 00644447    push        ecx
 00644448    mov         dword ptr [ebp-4],eax
 0064444B    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644450    call        00643EA8
 00644455    xor         eax,eax
 00644457    push        ebp
 00644458    push        644488
 0064445D    push        dword ptr fs:[eax]
 00644460    mov         dword ptr fs:[eax],esp
 00644463    mov         edx,dword ptr [ebp-4]
 00644466    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 0064446B    call        00643F48
 00644470    xor         eax,eax
 00644472    pop         edx
 00644473    pop         ecx
 00644474    pop         ecx
 00644475    mov         dword ptr fs:[eax],edx
 00644478    push        64448F
 0064447D    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644482    call        ReadError
 00644487    ret
>00644488    jmp         @HandleFinally
>0064448D    jmp         0064447D
 0064448F    pop         ecx
 00644490    pop         ebp
 00644491    ret
*}
end;

//00644494
procedure sub_00644494(?:TComponent; ?:TControl);
begin
{*
 00644494    push        ebp
 00644495    mov         ebp,esp
 00644497    add         esp,0FFFFFFF8
 0064449A    mov         dword ptr [ebp-8],edx
 0064449D    mov         dword ptr [ebp-4],eax
 006444A0    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006444A5    call        00643EA8
 006444AA    xor         eax,eax
 006444AC    push        ebp
 006444AD    push        6444E0
 006444B2    push        dword ptr fs:[eax]
 006444B5    mov         dword ptr fs:[eax],esp
 006444B8    mov         ecx,dword ptr [ebp-8]
 006444BB    mov         edx,dword ptr [ebp-4]
 006444BE    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006444C3    call        00643DC4
 006444C8    xor         eax,eax
 006444CA    pop         edx
 006444CB    pop         ecx
 006444CC    pop         ecx
 006444CD    mov         dword ptr fs:[eax],edx
 006444D0    push        6444E7
 006444D5    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006444DA    call        ReadError
 006444DF    ret
>006444E0    jmp         @HandleFinally
>006444E5    jmp         006444D5
 006444E7    pop         ecx
 006444E8    pop         ecx
 006444E9    pop         ebp
 006444EA    ret
*}
end;

//006444EC
{*function sub_006444EC(?:TControl):?;
begin
 006444EC    push        ebp
 006444ED    mov         ebp,esp
 006444EF    add         esp,0FFFFFFF8
 006444F2    mov         dword ptr [ebp-4],eax
 006444F5    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 006444FA    call        00643EA8
 006444FF    xor         eax,eax
 00644501    push        ebp
 00644502    push        64453D
 00644507    push        dword ptr fs:[eax]
 0064450A    mov         dword ptr fs:[eax],esp
 0064450D    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644512    mov         eax,dword ptr [eax+20]
 00644515    mov         dword ptr [ebp-8],eax
 00644518    mov         edx,dword ptr [ebp-4]
 0064451B    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644520    call        00643AF8
 00644525    xor         eax,eax
 00644527    pop         edx
 00644528    pop         ecx
 00644529    pop         ecx
 0064452A    mov         dword ptr fs:[eax],edx
 0064452D    push        644544
 00644532    mov         eax,[006ECFA0];0x0 gvar_006ECFA0:TRegGroups
 00644537    call        ReadError
 0064453C    ret
>0064453D    jmp         @HandleFinally
>00644542    jmp         00644532
 00644544    mov         eax,dword ptr [ebp-8]
 00644547    pop         ecx
 00644548    pop         ecx
 00644549    pop         ebp
 0064454A    ret
end;*}

//006445A4
{*constructor TIntConst.Create(?:?; ?:?);
begin
 006445A4    push        ebp
 006445A5    mov         ebp,esp
 006445A7    add         esp,0FFFFFFF4
 006445AA    test        dl,dl
>006445AC    je          006445B6
 006445AE    add         esp,0FFFFFFF0
 006445B1    call        @ClassCreate
 006445B6    mov         dword ptr [ebp-0C],ecx
 006445B9    mov         byte ptr [ebp-5],dl
 006445BC    mov         dword ptr [ebp-4],eax
 006445BF    mov         eax,dword ptr [ebp-4]
 006445C2    mov         edx,dword ptr [ebp-0C]
 006445C5    mov         dword ptr [eax+4],edx
 006445C8    mov         eax,dword ptr [ebp-4]
 006445CB    mov         edx,dword ptr [ebp+0C]
 006445CE    mov         dword ptr [eax+8],edx
 006445D1    mov         eax,dword ptr [ebp-4]
 006445D4    mov         edx,dword ptr [ebp+8]
 006445D7    mov         dword ptr [eax+0C],edx
 006445DA    mov         eax,dword ptr [ebp-4]
 006445DD    cmp         byte ptr [ebp-5],0
>006445E1    je          006445F2
 006445E3    call        @AfterConstruction
 006445E8    pop         dword ptr fs:[0]
 006445EF    add         esp,0C
 006445F2    mov         eax,dword ptr [ebp-4]
 006445F5    mov         esp,ebp
 006445F7    pop         ebp
 006445F8    ret         8
end;*}

//006445FC
{*procedure sub_006445FC(?:?; ?:?; ?:?);
begin
 006445FC    push        ebp
 006445FD    mov         ebp,esp
 006445FF    add         esp,0FFFFFFF4
 00644602    mov         dword ptr [ebp-0C],ecx
 00644605    mov         dword ptr [ebp-8],edx
 00644608    mov         dword ptr [ebp-4],eax
 0064460B    mov         eax,dword ptr [ebp-8]
 0064460E    push        eax
 0064460F    mov         eax,dword ptr [ebp-0C]
 00644612    push        eax
 00644613    mov         ecx,dword ptr [ebp-4]
 00644616    mov         dl,1
 00644618    mov         eax,[0064454C];TIntConst
 0064461D    call        TIntConst.Create;TIntConst.Create
 00644622    mov         edx,eax
 00644624    mov         eax,[006ECF9C];0x0 gvar_006ECF9C:TThreadList
 00644629    call        00645A08
 0064462E    mov         esp,ebp
 00644630    pop         ebp
 00644631    ret
end;*}

//00644634
{*function sub_00644634(?:?):?;
begin
 00644634    push        ebp
 00644635    mov         ebp,esp
 00644637    add         esp,0FFFFFFEC
 0064463A    mov         dword ptr [ebp-4],eax
 0064463D    xor         eax,eax
 0064463F    mov         dword ptr [ebp-8],eax
 00644642    mov         eax,[006ECF9C];0x0 gvar_006ECF9C:TThreadList
 00644647    call        TThreadList.LockList
 0064464C    mov         dword ptr [ebp-10],eax
 0064464F    xor         eax,eax
 00644651    push        ebp
 00644652    push        6446B6
 00644657    push        dword ptr fs:[eax]
 0064465A    mov         dword ptr fs:[eax],esp
 0064465D    mov         eax,dword ptr [ebp-10]
 00644660    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00644663    dec         eax
 00644664    cmp         eax,0
>00644667    jl          0064469E
 00644669    mov         dword ptr [ebp-0C],eax
 0064466C    mov         edx,dword ptr [ebp-0C]
 0064466F    mov         eax,dword ptr [ebp-10]
 00644672    call        TList.Get
 00644677    mov         dword ptr [ebp-14],eax
 0064467A    mov         eax,dword ptr [ebp-14]
 0064467D    mov         eax,dword ptr [eax+4]
 00644680    cmp         eax,dword ptr [ebp-4]
>00644683    jne         00644695
 00644685    mov         eax,dword ptr [ebp-14]
 00644688    mov         eax,dword ptr [eax+0C]
 0064468B    mov         dword ptr [ebp-8],eax
 0064468E    call        @TryFinallyExit
>00644693    jmp         006446BD
 00644695    dec         dword ptr [ebp-0C]
 00644698    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0064469C    jne         0064466C
 0064469E    xor         eax,eax
 006446A0    pop         edx
 006446A1    pop         ecx
 006446A2    pop         ecx
 006446A3    mov         dword ptr fs:[eax],edx
 006446A6    push        6446BD
 006446AB    mov         eax,[006ECF9C];0x0 gvar_006ECF9C:TThreadList
 006446B0    call        TThreadList.UnlockList
 006446B5    ret
>006446B6    jmp         @HandleFinally
>006446BB    jmp         006446AB
 006446BD    mov         eax,dword ptr [ebp-8]
 006446C0    mov         esp,ebp
 006446C2    pop         ebp
 006446C3    ret
end;*}

//006446C4
{*function sub_006446C4(?:?):?;
begin
 006446C4    push        ebp
 006446C5    mov         ebp,esp
 006446C7    add         esp,0FFFFFFEC
 006446CA    mov         dword ptr [ebp-4],eax
 006446CD    xor         eax,eax
 006446CF    mov         dword ptr [ebp-8],eax
 006446D2    mov         eax,[006ECF9C];0x0 gvar_006ECF9C:TThreadList
 006446D7    call        TThreadList.LockList
 006446DC    mov         dword ptr [ebp-10],eax
 006446DF    xor         eax,eax
 006446E1    push        ebp
 006446E2    push        644746
 006446E7    push        dword ptr fs:[eax]
 006446EA    mov         dword ptr fs:[eax],esp
 006446ED    mov         eax,dword ptr [ebp-10]
 006446F0    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 006446F3    dec         eax
 006446F4    cmp         eax,0
>006446F7    jl          0064472E
 006446F9    mov         dword ptr [ebp-0C],eax
 006446FC    mov         edx,dword ptr [ebp-0C]
 006446FF    mov         eax,dword ptr [ebp-10]
 00644702    call        TList.Get
 00644707    mov         dword ptr [ebp-14],eax
 0064470A    mov         eax,dword ptr [ebp-14]
 0064470D    mov         eax,dword ptr [eax+4]
 00644710    cmp         eax,dword ptr [ebp-4]
>00644713    jne         00644725
 00644715    mov         eax,dword ptr [ebp-14]
 00644718    mov         eax,dword ptr [eax+8]
 0064471B    mov         dword ptr [ebp-8],eax
 0064471E    call        @TryFinallyExit
>00644723    jmp         0064474D
 00644725    dec         dword ptr [ebp-0C]
 00644728    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0064472C    jne         006446FC
 0064472E    xor         eax,eax
 00644730    pop         edx
 00644731    pop         ecx
 00644732    pop         ecx
 00644733    mov         dword ptr fs:[eax],edx
 00644736    push        64474D
 0064473B    mov         eax,[006ECF9C];0x0 gvar_006ECF9C:TThreadList
 00644740    call        TThreadList.UnlockList
 00644745    ret
>00644746    jmp         @HandleFinally
>0064474B    jmp         0064473B
 0064474D    mov         eax,dword ptr [ebp-8]
 00644750    mov         esp,ebp
 00644752    pop         ebp
 00644753    ret
end;*}

//00644810
{*procedure sub_00644810(?:?);
begin
 00644810    push        ebp
 00644811    mov         ebp,esp
 00644813    push        ecx
 00644814    mov         dword ptr [ebp-4],eax
 00644817    cmp         dword ptr ds:[6ECFA4],0;gvar_006ECFA4:TList
>0064481E    jne         00644831
 00644820    mov         dl,1
 00644822    mov         eax,[006422A4];TList
 00644827    call        TObject.Create;TList.Create
 0064482C    mov         [006ECFA4],eax;gvar_006ECFA4:TList
 00644831    mov         edx,dword ptr [ebp-4]
 00644834    mov         eax,[006ECFA4];0x0 gvar_006ECFA4:TList
 00644839    call        TList.IndexOf
 0064483E    test        eax,eax
>00644840    jge         0064484F
 00644842    mov         edx,dword ptr [ebp-4]
 00644845    mov         eax,[006ECFA4];0x0 gvar_006ECFA4:TList
 0064484A    call        TList.Add
 0064484F    pop         ecx
 00644850    pop         ebp
 00644851    ret
end;*}

//00644874
function FindGlobalComponent(const Name:AnsiString):TComponent;
begin
{*
 00644874    push        ebp
 00644875    mov         ebp,esp
 00644877    add         esp,0FFFFFFF4
 0064487A    push        ebx
 0064487B    mov         dword ptr [ebp-4],eax
 0064487E    xor         eax,eax
 00644880    mov         dword ptr [ebp-8],eax
 00644883    cmp         dword ptr ds:[6ECFA4],0;gvar_006ECFA4:TList
>0064488A    je          006448C3
 0064488C    mov         eax,[006ECFA4];gvar_006ECFA4:TList
 00644891    mov         eax,dword ptr [eax+8]
 00644894    dec         eax
 00644895    cmp         eax,0
>00644898    jl          006448C3
 0064489A    mov         dword ptr [ebp-0C],eax
 0064489D    mov         edx,dword ptr [ebp-0C]
 006448A0    mov         eax,[006ECFA4];gvar_006ECFA4:TList
 006448A5    call        TList.Get
 006448AA    mov         ebx,eax
 006448AC    mov         eax,dword ptr [ebp-4]
 006448AF    call        ebx
 006448B1    mov         dword ptr [ebp-8],eax
 006448B4    cmp         dword ptr [ebp-8],0
>006448B8    jne         006448C3
 006448BA    dec         dword ptr [ebp-0C]
 006448BD    cmp         dword ptr [ebp-0C],0FFFFFFFF
>006448C1    jne         0064489D
 006448C3    mov         eax,dword ptr [ebp-8]
 006448C6    pop         ebx
 006448C7    mov         esp,ebp
 006448C9    pop         ebp
 006448CA    ret
*}
end;

//006448CC
{*function sub_006448CC(?:?):?;
begin
 006448CC    push        ebp
 006448CD    mov         ebp,esp
 006448CF    add         esp,0FFFFFFF8
 006448D2    mov         dword ptr [ebp-4],eax
 006448D5    cmp         dword ptr ds:[6ECF94],0;gvar_006ECF94
>006448DC    je          006448EC
 006448DE    mov         eax,dword ptr [ebp-4]
 006448E1    call        dword ptr ds:[6ECF94]
 006448E7    mov         byte ptr [ebp-5],al
>006448EA    jmp         006448FA
 006448EC    mov         eax,dword ptr [ebp-4]
 006448EF    call        FindGlobalComponent
 006448F4    test        eax,eax
 006448F6    sete        byte ptr [ebp-5]
 006448FA    mov         al,byte ptr [ebp-5]
 006448FD    pop         ecx
 006448FE    pop         ecx
 006448FF    pop         ebp
 00644900    ret
end;*}

//00644904
{*function sub_00644904(?:?; ?:?; ?:?):?;
begin
 00644904    push        ebp
 00644905    mov         ebp,esp
 00644907    add         esp,0FFFFFFE8
 0064490A    mov         dword ptr [ebp-0C],ecx
 0064490D    mov         dword ptr [ebp-8],edx
 00644910    mov         dword ptr [ebp-4],eax
 00644913    cmp         dword ptr [ebp-8],0
>00644917    jne         00644921
 00644919    mov         eax,[006EA390];0x0 gvar_006EA390
 0064491E    mov         dword ptr [ebp-8],eax
 00644921    push        0A
 00644923    mov         eax,dword ptr [ebp-4]
 00644926    call        @LStrToPChar
 0064492B    push        eax
 0064492C    mov         eax,dword ptr [ebp-8]
 0064492F    push        eax
 00644930    call        KERNEL32.FindResourceA
 00644935    mov         dword ptr [ebp-14],eax
 00644938    cmp         dword ptr [ebp-14],0
 0064493C    setne       byte ptr [ebp-0D]
 00644940    cmp         byte ptr [ebp-0D],0
>00644944    je          0064499F
 00644946    mov         eax,dword ptr [ebp-4]
 00644949    push        eax
 0064494A    push        0A
 0064494C    mov         ecx,dword ptr [ebp-8]
 0064494F    mov         dl,1
 00644951    mov         eax,[00642C1C];TResourceStream
 00644956    call        TResourceStream.Create;TResourceStream.Create
 0064495B    mov         dword ptr [ebp-18],eax
 0064495E    xor         eax,eax
 00644960    push        ebp
 00644961    push        644994
 00644966    push        dword ptr fs:[eax]
 00644969    mov         dword ptr fs:[eax],esp
 0064496C    mov         edx,dword ptr [ebp-0C]
 0064496F    mov         edx,dword ptr [edx]
 00644971    mov         eax,dword ptr [ebp-18]
 00644974    call        00648AD4
 00644979    mov         edx,dword ptr [ebp-0C]
 0064497C    mov         dword ptr [edx],eax
 0064497E    xor         eax,eax
 00644980    pop         edx
 00644981    pop         ecx
 00644982    pop         ecx
 00644983    mov         dword ptr fs:[eax],edx
 00644986    push        64499B
 0064498B    mov         eax,dword ptr [ebp-18]
 0064498E    call        TObject.Free
 00644993    ret
>00644994    jmp         @HandleFinally
>00644999    jmp         0064498B
 0064499B    mov         byte ptr [ebp-0D],1
 0064499F    mov         al,byte ptr [ebp-0D]
 006449A2    mov         esp,ebp
 006449A4    pop         ebp
 006449A5    ret
end;*}

//006449A8
procedure BeginGlobalLoading;
begin
{*
 006449A8    push        ebp
 006449A9    mov         ebp,esp
 006449AB    push        ecx
 006449AC    push        ebx
 006449AD    call        @GetTls
 006449B2    mov         eax,dword ptr [eax+4]
 006449B8    mov         dword ptr [ebp-4],eax
 006449BB    cmp         dword ptr [ebp-4],0
>006449BF    jne         006449DE
 006449C1    mov         dl,1
 006449C3    mov         eax,[006422A4];TList
 006449C8    call        TObject.Create
 006449CD    mov         dword ptr [ebp-4],eax
 006449D0    call        @GetTls
 006449D5    mov         edx,dword ptr [ebp-4]
 006449D8    mov         dword ptr [eax+4],edx
 006449DE    call        @GetTls
 006449E3    mov         edx,dword ptr [eax+0]
 006449E9    mov         eax,dword ptr [ebp-4]
 006449EC    call        TList.Add
 006449F1    mov         dl,1
 006449F3    mov         eax,[006422A4];TList
 006449F8    call        TObject.Create
 006449FD    mov         ebx,eax
 006449FF    call        @GetTls
 00644A04    mov         dword ptr [eax+0],ebx
 00644A0A    pop         ebx
 00644A0B    pop         ecx
 00644A0C    pop         ebp
 00644A0D    ret
*}
end;

//00644A10
procedure NotifyGlobalLoading;
begin
{*
 00644A10    push        ebp
 00644A11    mov         ebp,esp
 00644A13    add         esp,0FFFFFFF4
 00644A16    call        @GetTls
 00644A1B    mov         eax,dword ptr [eax+0]
 00644A21    mov         dword ptr [ebp-8],eax
 00644A24    mov         eax,dword ptr [ebp-8]
 00644A27    mov         eax,dword ptr [eax+8]
 00644A2A    dec         eax
 00644A2B    test        eax,eax
>00644A2D    jl          00644A52
 00644A2F    inc         eax
 00644A30    mov         dword ptr [ebp-0C],eax
 00644A33    mov         dword ptr [ebp-4],0
 00644A3A    mov         edx,dword ptr [ebp-4]
 00644A3D    mov         eax,dword ptr [ebp-8]
 00644A40    call        TList.Get
 00644A45    mov         edx,dword ptr [eax]
 00644A47    call        dword ptr [edx+0C]
 00644A4A    inc         dword ptr [ebp-4]
 00644A4D    dec         dword ptr [ebp-0C]
>00644A50    jne         00644A3A
 00644A52    mov         esp,ebp
 00644A54    pop         ebp
 00644A55    ret
*}
end;

//00644A58
procedure EndGlobalLoading;
begin
{*
 00644A58    push        ebp
 00644A59    mov         ebp,esp
 00644A5B    push        ecx
 00644A5C    push        ebx
 00644A5D    call        @GetTls
 00644A62    mov         eax,dword ptr [eax+0]
 00644A68    call        TObject.Free
 00644A6D    call        @GetTls
 00644A72    mov         eax,dword ptr [eax+4]
 00644A78    mov         dword ptr [ebp-4],eax
 00644A7B    mov         eax,dword ptr [ebp-4]
 00644A7E    call        0064523C
 00644A83    mov         ebx,eax
 00644A85    call        @GetTls
 00644A8A    mov         dword ptr [eax+0],ebx
 00644A90    mov         eax,dword ptr [ebp-4]
 00644A93    mov         edx,dword ptr [eax+8]
 00644A96    dec         edx
 00644A97    mov         eax,dword ptr [ebp-4]
 00644A9A    call        TList.Delete
 00644A9F    mov         eax,dword ptr [ebp-4]
 00644AA2    cmp         dword ptr [eax+8],0
>00644AA6    jne         00644ABD
 00644AA8    call        @GetTls
 00644AAD    xor         edx,edx
 00644AAF    mov         dword ptr [eax+4],edx
 00644AB5    mov         eax,dword ptr [ebp-4]
 00644AB8    call        TObject.Free
 00644ABD    pop         ebx
 00644ABE    pop         ecx
 00644ABF    pop         ebp
 00644AC0    ret
*}
end;

//00644AC4
function InitComponent(ClassType:TClass):Boolean;
begin
{*
 00644AC4    push        ebp
 00644AC5    mov         ebp,esp
 00644AC7    add         esp,0FFFFFEF4
 00644ACD    xor         edx,edx
 00644ACF    mov         dword ptr [ebp-0C],edx
 00644AD2    mov         dword ptr [ebp-4],eax
 00644AD5    xor         eax,eax
 00644AD7    push        ebp
 00644AD8    push        644B69
 00644ADD    push        dword ptr fs:[eax]
 00644AE0    mov         dword ptr fs:[eax],esp
 00644AE3    mov         byte ptr [ebp-5],0
 00644AE7    mov         eax,dword ptr [ebp-4]
 00644AEA    cmp         eax,dword ptr ds:[643204];TComponent
>00644AF0    je          00644B53
 00644AF2    mov         eax,dword ptr [ebp+8]
 00644AF5    mov         eax,dword ptr [eax-8]
 00644AF8    cmp         eax,dword ptr [ebp-4]
>00644AFB    je          00644B53
 00644AFD    mov         eax,dword ptr [ebp+8]
 00644B00    push        eax
 00644B01    mov         eax,dword ptr [ebp-4]
 00644B04    call        TObject.ClassParent
 00644B09    call        InitComponent
 00644B0E    pop         ecx
 00644B0F    mov         byte ptr [ebp-5],al
 00644B12    lea         edx,[ebp-10C]
 00644B18    mov         eax,dword ptr [ebp-4]
 00644B1B    call        TObject.ClassName
 00644B20    lea         edx,[ebp-10C]
 00644B26    lea         eax,[ebp-0C]
 00644B29    call        @LStrFromString
 00644B2E    mov         eax,dword ptr [ebp-0C]
 00644B31    push        eax
 00644B32    mov         eax,dword ptr [ebp-4]
 00644B35    call        0066DD8C
 00644B3A    call        FindResourceHInstance
 00644B3F    mov         edx,eax
 00644B41    mov         eax,dword ptr [ebp+8]
 00644B44    lea         ecx,[eax-4]
 00644B47    pop         eax
 00644B48    call        00644904
 00644B4D    or          al,byte ptr [ebp-5]
 00644B50    mov         byte ptr [ebp-5],al
 00644B53    xor         eax,eax
 00644B55    pop         edx
 00644B56    pop         ecx
 00644B57    pop         ecx
 00644B58    mov         dword ptr fs:[eax],edx
 00644B5B    push        644B70
 00644B60    lea         eax,[ebp-0C]
 00644B63    call        @LStrClr
 00644B68    ret
>00644B69    jmp         @HandleFinally
>00644B6E    jmp         00644B60
 00644B70    mov         al,byte ptr [ebp-5]
 00644B73    mov         esp,ebp
 00644B75    pop         ebp
 00644B76    ret
*}
end;

//00644B78
function InitInheritedComponent(Instance:TComponent; RootAncestor:TClass):Boolean;
begin
{*
 00644B78    push        ebp
 00644B79    mov         ebp,esp
 00644B7B    add         esp,0FFFFFFF4
 00644B7E    mov         dword ptr [ebp-8],edx
 00644B81    mov         dword ptr [ebp-4],eax
 00644B84    mov         eax,[006ECF90];GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 00644B89    call        TMultiReadExclusiveWriteSynchronizer.BeginWrite
 00644B8E    xor         eax,eax
 00644B90    push        ebp
 00644B91    push        644C26
 00644B96    push        dword ptr fs:[eax]
 00644B99    mov         dword ptr fs:[eax],esp
 00644B9C    mov         eax,dword ptr [ebp-4]
 00644B9F    mov         ax,word ptr [eax+1C]
 00644BA3    and         ax,word ptr ds:[644C34]
 00644BAA    mov         dx,word ptr ds:[644C38]
 00644BB1    cmp         dx,ax
 00644BB4    sete        byte ptr [ebp-0A]
 00644BB8    cmp         byte ptr [ebp-0A],0
>00644BBC    je          00644BC3
 00644BBE    call        BeginGlobalLoading
 00644BC3    xor         eax,eax
 00644BC5    push        ebp
 00644BC6    push        644C07
 00644BCB    push        dword ptr fs:[eax]
 00644BCE    mov         dword ptr fs:[eax],esp
 00644BD1    push        ebp
 00644BD2    mov         eax,dword ptr [ebp-4]
 00644BD5    call        TObject.ClassType
 00644BDA    call        InitComponent
 00644BDF    pop         ecx
 00644BE0    mov         byte ptr [ebp-9],al
 00644BE3    cmp         byte ptr [ebp-0A],0
>00644BE7    je          00644BEE
 00644BE9    call        NotifyGlobalLoading
 00644BEE    xor         eax,eax
 00644BF0    pop         edx
 00644BF1    pop         ecx
 00644BF2    pop         ecx
 00644BF3    mov         dword ptr fs:[eax],edx
 00644BF6    push        644C0E
 00644BFB    cmp         byte ptr [ebp-0A],0
>00644BFF    je          00644C06
 00644C01    call        EndGlobalLoading
 00644C06    ret
>00644C07    jmp         @HandleFinally
>00644C0C    jmp         00644BFB
 00644C0E    xor         eax,eax
 00644C10    pop         edx
 00644C11    pop         ecx
 00644C12    pop         ecx
 00644C13    mov         dword ptr fs:[eax],edx
 00644C16    push        644C2D
 00644C1B    mov         eax,[006ECF90];GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 00644C20    call        TMultiReadExclusiveWriteSynchronizer.EndWrite
 00644C25    ret
>00644C26    jmp         @HandleFinally
>00644C2B    jmp         00644C1B
 00644C2D    mov         al,byte ptr [ebp-9]
 00644C30    mov         esp,ebp
 00644C32    pop         ebp
 00644C33    ret
*}
end;

//00644C3C
{*procedure sub_00644C3C(?:?; ?:?; ?:?);
begin
 00644C3C    push        ebp
 00644C3D    mov         ebp,esp
 00644C3F    add         esp,0FFFFFFF0
 00644C42    mov         dword ptr [ebp-0C],ecx
 00644C45    mov         dword ptr [ebp-8],edx
 00644C48    mov         dword ptr [ebp-4],eax
 00644C4B    push        400
 00644C50    mov         ecx,dword ptr [ebp-4]
 00644C53    mov         dl,1
 00644C55    mov         eax,[00642FC0];TWriter
 00644C5A    call        TFiler.Create;TWriter.Create
 00644C5F    mov         dword ptr [ebp-10],eax
 00644C62    mov         edx,dword ptr [ebp-0C]
 00644C65    mov         eax,dword ptr [ebp-10]
 00644C68    mov         ecx,dword ptr [eax]
 00644C6A    call        dword ptr [ecx];TWriter.sub_0064C8B8
 00644C6C    mov         eax,dword ptr [ebp-10]
 00644C6F    mov         edx,dword ptr [ebp-0C]
 00644C72    mov         dword ptr [eax+1C],edx;TWriter.FLookupRoot:TComponent
 00644C75    xor         eax,eax
 00644C77    push        ebp
 00644C78    push        644CA4
 00644C7D    push        dword ptr fs:[eax]
 00644C80    mov         dword ptr fs:[eax],esp
 00644C83    mov         edx,dword ptr [ebp-8]
 00644C86    mov         eax,dword ptr [ebp-10]
 00644C89    call        TWriter.WriteCollection
 00644C8E    xor         eax,eax
 00644C90    pop         edx
 00644C91    pop         ecx
 00644C92    pop         ecx
 00644C93    mov         dword ptr fs:[eax],edx
 00644C96    push        644CAB
 00644C9B    mov         eax,dword ptr [ebp-10]
 00644C9E    call        TObject.Free
 00644CA3    ret
>00644CA4    jmp         @HandleFinally
>00644CA9    jmp         00644C9B
 00644CAB    mov         esp,ebp
 00644CAD    pop         ebp
 00644CAE    ret
end;*}

//00644CB0
function CollectionsEqual(C1:TCollection; C2:TCollection; Owner1:TComponent; Owner2:TComponent):Boolean;
begin
{*
 00644CB0    push        ebp
 00644CB1    mov         ebp,esp
 00644CB3    add         esp,0FFFFFFE8
 00644CB6    push        ebx
 00644CB7    mov         dword ptr [ebp-0C],ecx
 00644CBA    mov         dword ptr [ebp-8],edx
 00644CBD    mov         dword ptr [ebp-4],eax
 00644CC0    mov         byte ptr [ebp-0D],0
 00644CC4    mov         eax,dword ptr [ebp-4]
 00644CC7    call        TObject.ClassType
 00644CCC    mov         ebx,eax
 00644CCE    mov         eax,dword ptr [ebp-8]
 00644CD1    call        TObject.ClassType
 00644CD6    cmp         ebx,eax
>00644CD8    jne         00644DD3
 00644CDE    mov         eax,dword ptr [ebp-4]
 00644CE1    call        00646794
 00644CE6    mov         ebx,eax
 00644CE8    mov         eax,dword ptr [ebp-8]
 00644CEB    call        00646794
 00644CF0    cmp         ebx,eax
>00644CF2    jne         00644DD3
 00644CF8    mov         dl,1
 00644CFA    mov         eax,[00642BA0];TMemoryStream
 00644CFF    call        TObject.Create
 00644D04    mov         dword ptr [ebp-14],eax
 00644D07    xor         eax,eax
 00644D09    push        ebp
 00644D0A    push        644DCC
 00644D0F    push        dword ptr fs:[eax]
 00644D12    mov         dword ptr fs:[eax],esp
 00644D15    push        ebp
 00644D16    mov         ecx,dword ptr [ebp-0C]
 00644D19    mov         edx,dword ptr [ebp-4]
 00644D1C    mov         eax,dword ptr [ebp-14]
 00644D1F    call        00644C3C
 00644D24    pop         ecx
 00644D25    mov         dl,1
 00644D27    mov         eax,[00642BA0];TMemoryStream
 00644D2C    call        TObject.Create
 00644D31    mov         dword ptr [ebp-18],eax
 00644D34    xor         eax,eax
 00644D36    push        ebp
 00644D37    push        644DAF
 00644D3C    push        dword ptr fs:[eax]
 00644D3F    mov         dword ptr fs:[eax],esp
 00644D42    push        ebp
 00644D43    mov         ecx,dword ptr [ebp+8]
 00644D46    mov         edx,dword ptr [ebp-8]
 00644D49    mov         eax,dword ptr [ebp-18]
 00644D4C    call        00644C3C
 00644D51    pop         ecx
 00644D52    mov         eax,dword ptr [ebp-14]
 00644D55    call        TStream.GetSize
 00644D5A    push        edx
 00644D5B    push        eax
 00644D5C    mov         eax,dword ptr [ebp-18]
 00644D5F    call        TStream.GetSize
 00644D64    cmp         edx,dword ptr [esp+4]
>00644D68    jne         00644D6D
 00644D6A    cmp         eax,dword ptr [esp]
 00644D6D    pop         edx
 00644D6E    pop         eax
>00644D6F    jne         00644D90
 00644D71    mov         eax,dword ptr [ebp-14]
 00644D74    call        TStream.GetSize
 00644D79    mov         ecx,eax
 00644D7B    mov         eax,dword ptr [ebp-18]
 00644D7E    mov         edx,dword ptr [eax+4]
 00644D81    mov         eax,dword ptr [ebp-14]
 00644D84    mov         eax,dword ptr [eax+4]
 00644D87    call        CompareMem
 00644D8C    test        al,al
>00644D8E    jne         00644D94
 00644D90    xor         eax,eax
>00644D92    jmp         00644D96
 00644D94    mov         al,1
 00644D96    mov         byte ptr [ebp-0D],al
 00644D99    xor         eax,eax
 00644D9B    pop         edx
 00644D9C    pop         ecx
 00644D9D    pop         ecx
 00644D9E    mov         dword ptr fs:[eax],edx
 00644DA1    push        644DB6
 00644DA6    mov         eax,dword ptr [ebp-18]
 00644DA9    call        TObject.Free
 00644DAE    ret
>00644DAF    jmp         @HandleFinally
>00644DB4    jmp         00644DA6
 00644DB6    xor         eax,eax
 00644DB8    pop         edx
 00644DB9    pop         ecx
 00644DBA    pop         ecx
 00644DBB    mov         dword ptr fs:[eax],edx
 00644DBE    push        644DD3
 00644DC3    mov         eax,dword ptr [ebp-14]
 00644DC6    call        TObject.Free
 00644DCB    ret
>00644DCC    jmp         @HandleFinally
>00644DD1    jmp         00644DC3
 00644DD3    mov         al,byte ptr [ebp-0D]
 00644DD6    pop         ebx
 00644DD7    mov         esp,ebp
 00644DD9    pop         ebp
 00644DDA    ret         4
*}
end;

//00644DE0
destructor TList.Destroy;
begin
{*
 00644DE0    push        ebp
 00644DE1    mov         ebp,esp
 00644DE3    add         esp,0FFFFFFF8
 00644DE6    call        @BeforeDestruction
 00644DEB    mov         byte ptr [ebp-5],dl
 00644DEE    mov         dword ptr [ebp-4],eax
 00644DF1    mov         eax,dword ptr [ebp-4]
 00644DF4    mov         edx,dword ptr [eax]
 00644DF6    call        dword ptr [edx+8]
 00644DF9    cmp         byte ptr [ebp-5],0
>00644DFD    jle         00644E07
 00644DFF    mov         eax,dword ptr [ebp-4]
 00644E02    call        @ClassDestroy
 00644E07    pop         ecx
 00644E08    pop         ecx
 00644E09    pop         ebp
 00644E0A    ret
*}
end;

//00644E0C
function TList.Add(Item:Pointer):Integer;
begin
{*
 00644E0C    push        ebp
 00644E0D    mov         ebp,esp
 00644E0F    add         esp,0FFFFFFF4
 00644E12    push        ebx
 00644E13    mov         dword ptr [ebp-8],edx
 00644E16    mov         dword ptr [ebp-4],eax
 00644E19    mov         eax,dword ptr [ebp-4]
 00644E1C    mov         eax,dword ptr [eax+8]
 00644E1F    mov         dword ptr [ebp-0C],eax
 00644E22    mov         eax,dword ptr [ebp-0C]
 00644E25    mov         edx,dword ptr [ebp-4]
 00644E28    cmp         eax,dword ptr [edx+0C]
>00644E2B    jne         00644E34
 00644E2D    mov         eax,dword ptr [ebp-4]
 00644E30    mov         edx,dword ptr [eax]
 00644E32    call        dword ptr [edx]
 00644E34    mov         eax,dword ptr [ebp-4]
 00644E37    mov         eax,dword ptr [eax+4]
 00644E3A    mov         edx,dword ptr [ebp-0C]
 00644E3D    mov         ecx,dword ptr [ebp-8]
 00644E40    mov         dword ptr [eax+edx*4],ecx
 00644E43    mov         eax,dword ptr [ebp-4]
 00644E46    inc         dword ptr [eax+8]
 00644E49    cmp         dword ptr [ebp-8],0
>00644E4D    je          00644E5C
 00644E4F    xor         ecx,ecx
 00644E51    mov         edx,dword ptr [ebp-8]
 00644E54    mov         eax,dword ptr [ebp-4]
 00644E57    mov         ebx,dword ptr [eax]
 00644E59    call        dword ptr [ebx+4]
 00644E5C    mov         eax,dword ptr [ebp-0C]
 00644E5F    pop         ebx
 00644E60    mov         esp,ebp
 00644E62    pop         ebp
 00644E63    ret
*}
end;

//00644E64
procedure sub_00644E64;
begin
{*
 00644E64    push        ebp
 00644E65    mov         ebp,esp
 00644E67    push        ecx
 00644E68    mov         dword ptr [ebp-4],eax
 00644E6B    xor         edx,edx
 00644E6D    mov         eax,dword ptr [ebp-4]
 00644E70    call        00645404
 00644E75    xor         edx,edx
 00644E77    mov         eax,dword ptr [ebp-4]
 00644E7A    call        TList.SetCapacity
 00644E7F    pop         ecx
 00644E80    pop         ebp
 00644E81    ret
*}
end;

//00644E84
procedure TList.Delete(Index:Integer);
begin
{*
 00644E84    push        ebp
 00644E85    mov         ebp,esp
 00644E87    add         esp,0FFFFFFF4
 00644E8A    push        ebx
 00644E8B    mov         dword ptr [ebp-8],edx
 00644E8E    mov         dword ptr [ebp-4],eax
 00644E91    cmp         dword ptr [ebp-8],0
>00644E95    jl          00644EA2
 00644E97    mov         eax,dword ptr [ebp-8]
 00644E9A    mov         edx,dword ptr [ebp-4]
 00644E9D    cmp         eax,dword ptr [edx+8]
>00644EA0    jl          00644EB5
 00644EA2    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00644EA8    mov         ecx,dword ptr [ebp-8]
 00644EAB    mov         eax,dword ptr [ebp-4]
 00644EAE    mov         eax,dword ptr [eax]
 00644EB0    call        00644F60
 00644EB5    mov         edx,dword ptr [ebp-8]
 00644EB8    mov         eax,dword ptr [ebp-4]
 00644EBB    call        TList.Get
 00644EC0    mov         dword ptr [ebp-0C],eax
 00644EC3    mov         eax,dword ptr [ebp-4]
 00644EC6    dec         dword ptr [eax+8]
 00644EC9    mov         eax,dword ptr [ebp-8]
 00644ECC    mov         edx,dword ptr [ebp-4]
 00644ECF    cmp         eax,dword ptr [edx+8]
>00644ED2    jge         00644F00
 00644ED4    mov         eax,dword ptr [ebp-4]
 00644ED7    mov         eax,dword ptr [eax+8]
 00644EDA    sub         eax,dword ptr [ebp-8]
 00644EDD    mov         ecx,eax
 00644EDF    shl         ecx,2
 00644EE2    mov         eax,dword ptr [ebp-4]
 00644EE5    mov         eax,dword ptr [eax+4]
 00644EE8    mov         edx,dword ptr [ebp-8]
 00644EEB    lea         edx,[eax+edx*4]
 00644EEE    mov         eax,dword ptr [ebp-4]
 00644EF1    mov         eax,dword ptr [eax+4]
 00644EF4    mov         ebx,dword ptr [ebp-8]
 00644EF7    lea         eax,[eax+ebx*4+4]
 00644EFB    call        Move
 00644F00    cmp         dword ptr [ebp-0C],0
>00644F04    je          00644F13
 00644F06    mov         cl,2
 00644F08    mov         edx,dword ptr [ebp-0C]
 00644F0B    mov         eax,dword ptr [ebp-4]
 00644F0E    mov         ebx,dword ptr [eax]
 00644F10    call        dword ptr [ebx+4]
 00644F13    pop         ebx
 00644F14    mov         esp,ebp
 00644F16    pop         ebp
 00644F17    ret
*}
end;

//00644F18
{*function sub_00644F18(?:?):?;
begin
 00644F18    push        ebp
 00644F19    mov         ebp,esp
 00644F1B    mov         eax,dword ptr [ebp+4]
 00644F1E    pop         ebp
 00644F1F    ret
end;*}

//00644F20
{*procedure sub_00644F20(?:?; ?:?);
begin
 00644F20    push        ebp
 00644F21    mov         ebp,esp
 00644F23    add         esp,0FFFFFFEC
 00644F26    mov         dword ptr [ebp-0C],ecx
 00644F29    mov         dword ptr [ebp-8],edx
 00644F2C    mov         dword ptr [ebp-4],eax
 00644F2F    push        ebp
 00644F30    call        00644F18
 00644F35    pop         ecx
 00644F36    push        eax
 00644F37    mov         eax,dword ptr [ebp-0C]
 00644F3A    mov         dword ptr [ebp-14],eax
 00644F3D    mov         byte ptr [ebp-10],0
 00644F41    lea         eax,[ebp-14]
 00644F44    push        eax
 00644F45    push        0
 00644F47    mov         ecx,dword ptr [ebp-8]
 00644F4A    mov         dl,1
 00644F4C    mov         eax,[0064207C];EListError
 00644F51    call        Exception.CreateFmt;EListError.Create
>00644F56    jmp         @RaiseExcept
 00644F5B    mov         esp,ebp
 00644F5D    pop         ebp
 00644F5E    ret
end;*}

//00644F60
{*procedure sub_00644F60(?:TList; ?:?; ?:Integer);
begin
 00644F60    push        ebp
 00644F61    mov         ebp,esp
 00644F63    add         esp,0FFFFFFF0
 00644F66    push        ebx
 00644F67    xor         ebx,ebx
 00644F69    mov         dword ptr [ebp-10],ebx
 00644F6C    mov         dword ptr [ebp-0C],ecx
 00644F6F    mov         dword ptr [ebp-8],edx
 00644F72    mov         dword ptr [ebp-4],eax
 00644F75    xor         eax,eax
 00644F77    push        ebp
 00644F78    push        644FB4
 00644F7D    push        dword ptr fs:[eax]
 00644F80    mov         dword ptr fs:[eax],esp
 00644F83    lea         edx,[ebp-10]
 00644F86    mov         eax,dword ptr [ebp-8]
 00644F89    call        LoadResString;'Logarithmic Axis Min and Max values should be >= 0'
 00644F8E    mov         edx,dword ptr [ebp-10]
 00644F91    mov         ecx,dword ptr [ebp-0C]
 00644F94    mov         eax,[006422A4];TList
 00644F99    call        00644F20
 00644F9E    xor         eax,eax
 00644FA0    pop         edx
 00644FA1    pop         ecx
 00644FA2    pop         ecx
 00644FA3    mov         dword ptr fs:[eax],edx
 00644FA6    push        644FBB
 00644FAB    lea         eax,[ebp-10]
 00644FAE    call        @LStrClr
 00644FB3    ret
>00644FB4    jmp         @HandleFinally
>00644FB9    jmp         00644FAB
 00644FBB    pop         ebx
 00644FBC    mov         esp,ebp
 00644FBE    pop         ebp
 00644FBF    ret
end;*}

//00644FC0
procedure TList.Exchange(Index1:Integer; Index2:Integer);
begin
{*
 00644FC0    push        ebp
 00644FC1    mov         ebp,esp
 00644FC3    add         esp,0FFFFFFF0
 00644FC6    mov         dword ptr [ebp-0C],ecx
 00644FC9    mov         dword ptr [ebp-8],edx
 00644FCC    mov         dword ptr [ebp-4],eax
 00644FCF    cmp         dword ptr [ebp-8],0
>00644FD3    jl          00644FE0
 00644FD5    mov         eax,dword ptr [ebp-8]
 00644FD8    mov         edx,dword ptr [ebp-4]
 00644FDB    cmp         eax,dword ptr [edx+8]
>00644FDE    jl          00644FF3
 00644FE0    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00644FE6    mov         ecx,dword ptr [ebp-8]
 00644FE9    mov         eax,dword ptr [ebp-4]
 00644FEC    mov         eax,dword ptr [eax]
 00644FEE    call        00644F60
 00644FF3    cmp         dword ptr [ebp-0C],0
>00644FF7    jl          00645004
 00644FF9    mov         eax,dword ptr [ebp-0C]
 00644FFC    mov         edx,dword ptr [ebp-4]
 00644FFF    cmp         eax,dword ptr [edx+8]
>00645002    jl          00645017
 00645004    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 0064500A    mov         ecx,dword ptr [ebp-0C]
 0064500D    mov         eax,dword ptr [ebp-4]
 00645010    mov         eax,dword ptr [eax]
 00645012    call        00644F60
 00645017    mov         eax,dword ptr [ebp-4]
 0064501A    mov         eax,dword ptr [eax+4]
 0064501D    mov         edx,dword ptr [ebp-8]
 00645020    mov         eax,dword ptr [eax+edx*4]
 00645023    mov         dword ptr [ebp-10],eax
 00645026    mov         eax,dword ptr [ebp-4]
 00645029    mov         eax,dword ptr [eax+4]
 0064502C    mov         edx,dword ptr [ebp-0C]
 0064502F    mov         eax,dword ptr [eax+edx*4]
 00645032    mov         edx,dword ptr [ebp-4]
 00645035    mov         edx,dword ptr [edx+4]
 00645038    mov         ecx,dword ptr [ebp-8]
 0064503B    mov         dword ptr [edx+ecx*4],eax
 0064503E    mov         eax,dword ptr [ebp-4]
 00645041    mov         eax,dword ptr [eax+4]
 00645044    mov         edx,dword ptr [ebp-0C]
 00645047    mov         ecx,dword ptr [ebp-10]
 0064504A    mov         dword ptr [eax+edx*4],ecx
 0064504D    mov         esp,ebp
 0064504F    pop         ebp
 00645050    ret
*}
end;

//00645054
{*function sub_00645054(?:TList):?;
begin
 00645054    push        ebp
 00645055    mov         ebp,esp
 00645057    add         esp,0FFFFFFF8
 0064505A    mov         dword ptr [ebp-4],eax
 0064505D    mov         eax,dword ptr [ebp-4]
 00645060    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00645063    mov         edx,dword ptr [ebp-4]
 00645066    cmp         eax,dword ptr [edx+0C];TList.FCapacity:Integer
>00645069    jne         00645072
 0064506B    mov         eax,dword ptr [ebp-4]
 0064506E    mov         edx,dword ptr [eax]
 00645070    call        dword ptr [edx];TList.sub_006450E8
 00645072    mov         eax,dword ptr [ebp-4]
 00645075    mov         dword ptr [ebp-8],eax
 00645078    mov         eax,dword ptr [ebp-8]
 0064507B    pop         ecx
 0064507C    pop         ecx
 0064507D    pop         ebp
 0064507E    ret
end;*}

//00645080
function TList.First:Pointer;
begin
{*
 00645080    push        ebp
 00645081    mov         ebp,esp
 00645083    add         esp,0FFFFFFF8
 00645086    mov         dword ptr [ebp-4],eax
 00645089    xor         edx,edx
 0064508B    mov         eax,dword ptr [ebp-4]
 0064508E    call        TList.Get
 00645093    mov         dword ptr [ebp-8],eax
 00645096    mov         eax,dword ptr [ebp-8]
 00645099    pop         ecx
 0064509A    pop         ecx
 0064509B    pop         ebp
 0064509C    ret
*}
end;

//006450A0
function TList.Get(Index:Integer):Pointer;
begin
{*
 006450A0    push        ebp
 006450A1    mov         ebp,esp
 006450A3    add         esp,0FFFFFFF4
 006450A6    mov         dword ptr [ebp-8],edx
 006450A9    mov         dword ptr [ebp-4],eax
 006450AC    cmp         dword ptr [ebp-8],0
>006450B0    jl          006450BD
 006450B2    mov         eax,dword ptr [ebp-8]
 006450B5    mov         edx,dword ptr [ebp-4]
 006450B8    cmp         eax,dword ptr [edx+8]
>006450BB    jl          006450D0
 006450BD    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 006450C3    mov         ecx,dword ptr [ebp-8]
 006450C6    mov         eax,dword ptr [ebp-4]
 006450C9    mov         eax,dword ptr [eax]
 006450CB    call        00644F60
 006450D0    mov         eax,dword ptr [ebp-4]
 006450D3    mov         eax,dword ptr [eax+4]
 006450D6    mov         edx,dword ptr [ebp-8]
 006450D9    mov         eax,dword ptr [eax+edx*4]
 006450DC    mov         dword ptr [ebp-0C],eax
 006450DF    mov         eax,dword ptr [ebp-0C]
 006450E2    mov         esp,ebp
 006450E4    pop         ebp
 006450E5    ret
*}
end;

//006450E8
procedure sub_006450E8;
begin
{*
 006450E8    push        ebp
 006450E9    mov         ebp,esp
 006450EB    add         esp,0FFFFFFF8
 006450EE    mov         dword ptr [ebp-4],eax
 006450F1    mov         eax,dword ptr [ebp-4]
 006450F4    cmp         dword ptr [eax+0C],40;TList.FCapacity:Integer
>006450F8    jle         0064510F
 006450FA    mov         eax,dword ptr [ebp-4]
 006450FD    mov         eax,dword ptr [eax+0C];TList.FCapacity:Integer
 00645100    test        eax,eax
>00645102    jns         00645107
 00645104    add         eax,3
 00645107    sar         eax,2
 0064510A    mov         dword ptr [ebp-8],eax
>0064510D    jmp         00645128
 0064510F    mov         eax,dword ptr [ebp-4]
 00645112    cmp         dword ptr [eax+0C],8;TList.FCapacity:Integer
>00645116    jle         00645121
 00645118    mov         dword ptr [ebp-8],10
>0064511F    jmp         00645128
 00645121    mov         dword ptr [ebp-8],4
 00645128    mov         eax,dword ptr [ebp-4]
 0064512B    mov         edx,dword ptr [eax+0C];TList.FCapacity:Integer
 0064512E    add         edx,dword ptr [ebp-8]
 00645131    mov         eax,dword ptr [ebp-4]
 00645134    call        TList.SetCapacity
 00645139    pop         ecx
 0064513A    pop         ecx
 0064513B    pop         ebp
 0064513C    ret
*}
end;

//00645140
function TList.IndexOf(Item:Pointer):Integer;
begin
{*
 00645140    push        ebp
 00645141    mov         ebp,esp
 00645143    add         esp,0FFFFFFF4
 00645146    mov         dword ptr [ebp-8],edx
 00645149    mov         dword ptr [ebp-4],eax
 0064514C    xor         eax,eax
 0064514E    mov         dword ptr [ebp-0C],eax
>00645151    jmp         00645156
 00645153    inc         dword ptr [ebp-0C]
 00645156    mov         eax,dword ptr [ebp-0C]
 00645159    mov         edx,dword ptr [ebp-4]
 0064515C    cmp         eax,dword ptr [edx+8]
>0064515F    jge         00645172
 00645161    mov         eax,dword ptr [ebp-4]
 00645164    mov         eax,dword ptr [eax+4]
 00645167    mov         edx,dword ptr [ebp-0C]
 0064516A    mov         eax,dword ptr [eax+edx*4]
 0064516D    cmp         eax,dword ptr [ebp-8]
>00645170    jne         00645153
 00645172    mov         eax,dword ptr [ebp-0C]
 00645175    mov         edx,dword ptr [ebp-4]
 00645178    cmp         eax,dword ptr [edx+8]
>0064517B    jne         00645184
 0064517D    mov         dword ptr [ebp-0C],0FFFFFFFF
 00645184    mov         eax,dword ptr [ebp-0C]
 00645187    mov         esp,ebp
 00645189    pop         ebp
 0064518A    ret
*}
end;

//0064518C
procedure TList.Insert(Index:Integer; Item:Pointer);
begin
{*
 0064518C    push        ebp
 0064518D    mov         ebp,esp
 0064518F    add         esp,0FFFFFFF4
 00645192    push        ebx
 00645193    mov         dword ptr [ebp-0C],ecx
 00645196    mov         dword ptr [ebp-8],edx
 00645199    mov         dword ptr [ebp-4],eax
 0064519C    cmp         dword ptr [ebp-8],0
>006451A0    jl          006451AD
 006451A2    mov         eax,dword ptr [ebp-8]
 006451A5    mov         edx,dword ptr [ebp-4]
 006451A8    cmp         eax,dword ptr [edx+8]
>006451AB    jle         006451C0
 006451AD    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 006451B3    mov         ecx,dword ptr [ebp-8]
 006451B6    mov         eax,dword ptr [ebp-4]
 006451B9    mov         eax,dword ptr [eax]
 006451BB    call        00644F60
 006451C0    mov         eax,dword ptr [ebp-4]
 006451C3    mov         eax,dword ptr [eax+8]
 006451C6    mov         edx,dword ptr [ebp-4]
 006451C9    cmp         eax,dword ptr [edx+0C]
>006451CC    jne         006451D5
 006451CE    mov         eax,dword ptr [ebp-4]
 006451D1    mov         edx,dword ptr [eax]
 006451D3    call        dword ptr [edx]
 006451D5    mov         eax,dword ptr [ebp-8]
 006451D8    mov         edx,dword ptr [ebp-4]
 006451DB    cmp         eax,dword ptr [edx+8]
>006451DE    jge         0064520C
 006451E0    mov         eax,dword ptr [ebp-4]
 006451E3    mov         eax,dword ptr [eax+8]
 006451E6    sub         eax,dword ptr [ebp-8]
 006451E9    mov         ecx,eax
 006451EB    shl         ecx,2
 006451EE    mov         eax,dword ptr [ebp-4]
 006451F1    mov         eax,dword ptr [eax+4]
 006451F4    mov         edx,dword ptr [ebp-8]
 006451F7    lea         edx,[eax+edx*4+4]
 006451FB    mov         eax,dword ptr [ebp-4]
 006451FE    mov         eax,dword ptr [eax+4]
 00645201    mov         ebx,dword ptr [ebp-8]
 00645204    lea         eax,[eax+ebx*4]
 00645207    call        Move
 0064520C    mov         eax,dword ptr [ebp-4]
 0064520F    mov         eax,dword ptr [eax+4]
 00645212    mov         edx,dword ptr [ebp-8]
 00645215    mov         ecx,dword ptr [ebp-0C]
 00645218    mov         dword ptr [eax+edx*4],ecx
 0064521B    mov         eax,dword ptr [ebp-4]
 0064521E    inc         dword ptr [eax+8]
 00645221    cmp         dword ptr [ebp-0C],0
>00645225    je          00645234
 00645227    xor         ecx,ecx
 00645229    mov         edx,dword ptr [ebp-0C]
 0064522C    mov         eax,dword ptr [ebp-4]
 0064522F    mov         ebx,dword ptr [eax]
 00645231    call        dword ptr [ebx+4]
 00645234    pop         ebx
 00645235    mov         esp,ebp
 00645237    pop         ebp
 00645238    ret
*}
end;

//0064523C
{*function sub_0064523C(?:TList):?;
begin
 0064523C    push        ebp
 0064523D    mov         ebp,esp
 0064523F    add         esp,0FFFFFFF8
 00645242    mov         dword ptr [ebp-4],eax
 00645245    mov         eax,dword ptr [ebp-4]
 00645248    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 0064524B    dec         edx
 0064524C    mov         eax,dword ptr [ebp-4]
 0064524F    call        TList.Get
 00645254    mov         dword ptr [ebp-8],eax
 00645257    mov         eax,dword ptr [ebp-8]
 0064525A    pop         ecx
 0064525B    pop         ecx
 0064525C    pop         ebp
 0064525D    ret
end;*}

//00645260
{*procedure sub_00645260(?:TList; ?:?; ?:Integer);
begin
 00645260    push        ebp
 00645261    mov         ebp,esp
 00645263    add         esp,0FFFFFFF0
 00645266    mov         dword ptr [ebp-0C],ecx
 00645269    mov         dword ptr [ebp-8],edx
 0064526C    mov         dword ptr [ebp-4],eax
 0064526F    mov         eax,dword ptr [ebp-8]
 00645272    cmp         eax,dword ptr [ebp-0C]
>00645275    je          006452DE
 00645277    cmp         dword ptr [ebp-0C],0
>0064527B    jl          00645288
 0064527D    mov         eax,dword ptr [ebp-0C]
 00645280    mov         edx,dword ptr [ebp-4]
 00645283    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>00645286    jl          0064529B
 00645288    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 0064528E    mov         ecx,dword ptr [ebp-0C]
 00645291    mov         eax,dword ptr [ebp-4]
 00645294    mov         eax,dword ptr [eax]
 00645296    call        00644F60
 0064529B    mov         edx,dword ptr [ebp-8]
 0064529E    mov         eax,dword ptr [ebp-4]
 006452A1    call        TList.Get
 006452A6    mov         dword ptr [ebp-10],eax
 006452A9    mov         eax,dword ptr [ebp-4]
 006452AC    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 006452AF    mov         edx,dword ptr [ebp-8]
 006452B2    xor         ecx,ecx
 006452B4    mov         dword ptr [eax+edx*4],ecx
 006452B7    mov         edx,dword ptr [ebp-8]
 006452BA    mov         eax,dword ptr [ebp-4]
 006452BD    call        TList.Delete
 006452C2    xor         ecx,ecx
 006452C4    mov         edx,dword ptr [ebp-0C]
 006452C7    mov         eax,dword ptr [ebp-4]
 006452CA    call        TList.Insert
 006452CF    mov         eax,dword ptr [ebp-4]
 006452D2    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 006452D5    mov         edx,dword ptr [ebp-0C]
 006452D8    mov         ecx,dword ptr [ebp-10]
 006452DB    mov         dword ptr [eax+edx*4],ecx
 006452DE    mov         esp,ebp
 006452E0    pop         ebp
 006452E1    ret
end;*}

//006452E4
procedure TList.Put(Index:Integer; Item:Pointer);
begin
{*
 006452E4    push        ebp
 006452E5    mov         ebp,esp
 006452E7    add         esp,0FFFFFFF0
 006452EA    push        ebx
 006452EB    mov         dword ptr [ebp-0C],ecx
 006452EE    mov         dword ptr [ebp-8],edx
 006452F1    mov         dword ptr [ebp-4],eax
 006452F4    cmp         dword ptr [ebp-8],0
>006452F8    jl          00645305
 006452FA    mov         eax,dword ptr [ebp-8]
 006452FD    mov         edx,dword ptr [ebp-4]
 00645300    cmp         eax,dword ptr [edx+8]
>00645303    jl          00645318
 00645305    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 0064530B    mov         ecx,dword ptr [ebp-8]
 0064530E    mov         eax,dword ptr [ebp-4]
 00645311    mov         eax,dword ptr [eax]
 00645313    call        00644F60
 00645318    mov         eax,dword ptr [ebp-4]
 0064531B    mov         eax,dword ptr [eax+4]
 0064531E    mov         edx,dword ptr [ebp-8]
 00645321    mov         eax,dword ptr [eax+edx*4]
 00645324    cmp         eax,dword ptr [ebp-0C]
>00645327    je          0064536D
 00645329    mov         eax,dword ptr [ebp-4]
 0064532C    mov         eax,dword ptr [eax+4]
 0064532F    mov         edx,dword ptr [ebp-8]
 00645332    mov         eax,dword ptr [eax+edx*4]
 00645335    mov         dword ptr [ebp-10],eax
 00645338    mov         eax,dword ptr [ebp-4]
 0064533B    mov         eax,dword ptr [eax+4]
 0064533E    mov         edx,dword ptr [ebp-8]
 00645341    mov         ecx,dword ptr [ebp-0C]
 00645344    mov         dword ptr [eax+edx*4],ecx
 00645347    cmp         dword ptr [ebp-10],0
>0064534B    je          0064535A
 0064534D    mov         cl,2
 0064534F    mov         edx,dword ptr [ebp-10]
 00645352    mov         eax,dword ptr [ebp-4]
 00645355    mov         ebx,dword ptr [eax]
 00645357    call        dword ptr [ebx+4]
 0064535A    cmp         dword ptr [ebp-0C],0
>0064535E    je          0064536D
 00645360    xor         ecx,ecx
 00645362    mov         edx,dword ptr [ebp-0C]
 00645365    mov         eax,dword ptr [ebp-4]
 00645368    mov         ebx,dword ptr [eax]
 0064536A    call        dword ptr [ebx+4]
 0064536D    pop         ebx
 0064536E    mov         esp,ebp
 00645370    pop         ebp
 00645371    ret
*}
end;

//00645374
function TList.Remove(Item:Pointer):Integer;
begin
{*
 00645374    push        ebp
 00645375    mov         ebp,esp
 00645377    add         esp,0FFFFFFF4
 0064537A    mov         dword ptr [ebp-8],edx
 0064537D    mov         dword ptr [ebp-4],eax
 00645380    mov         edx,dword ptr [ebp-8]
 00645383    mov         eax,dword ptr [ebp-4]
 00645386    call        TList.IndexOf
 0064538B    mov         dword ptr [ebp-0C],eax
 0064538E    cmp         dword ptr [ebp-0C],0
>00645392    jl          0064539F
 00645394    mov         edx,dword ptr [ebp-0C]
 00645397    mov         eax,dword ptr [ebp-4]
 0064539A    call        TList.Delete
 0064539F    mov         eax,dword ptr [ebp-0C]
 006453A2    mov         esp,ebp
 006453A4    pop         ebp
 006453A5    ret
*}
end;

//006453A8
procedure TList.SetCapacity(NewCapacity:Integer);
begin
{*
 006453A8    push        ebp
 006453A9    mov         ebp,esp
 006453AB    add         esp,0FFFFFFF8
 006453AE    mov         dword ptr [ebp-8],edx
 006453B1    mov         dword ptr [ebp-4],eax
 006453B4    mov         eax,dword ptr [ebp-8]
 006453B7    mov         edx,dword ptr [ebp-4]
 006453BA    cmp         eax,dword ptr [edx+8]
>006453BD    jl          006453C8
 006453BF    cmp         dword ptr [ebp-8],7FFFFFF
>006453C6    jle         006453DB
 006453C8    mov         edx,dword ptr ds:[6EA0A4]
 006453CE    mov         ecx,dword ptr [ebp-8]
 006453D1    mov         eax,dword ptr [ebp-4]
 006453D4    mov         eax,dword ptr [eax]
 006453D6    call        00644F60
 006453DB    mov         eax,dword ptr [ebp-8]
 006453DE    mov         edx,dword ptr [ebp-4]
 006453E1    cmp         eax,dword ptr [edx+0C]
>006453E4    je          00645400
 006453E6    mov         edx,dword ptr [ebp-8]
 006453E9    shl         edx,2
 006453EC    mov         eax,dword ptr [ebp-4]
 006453EF    add         eax,4
 006453F2    call        @ReallocMem
 006453F7    mov         eax,dword ptr [ebp-8]
 006453FA    mov         edx,dword ptr [ebp-4]
 006453FD    mov         dword ptr [edx+0C],eax
 00645400    pop         ecx
 00645401    pop         ecx
 00645402    pop         ebp
 00645403    ret
*}
end;

//00645404
{*procedure sub_00645404(?:TList; ?:?);
begin
 00645404    push        ebp
 00645405    mov         ebp,esp
 00645407    add         esp,0FFFFFFF0
 0064540A    mov         dword ptr [ebp-8],edx
 0064540D    mov         dword ptr [ebp-4],eax
 00645410    cmp         dword ptr [ebp-8],0
>00645414    jl          0064541F
 00645416    cmp         dword ptr [ebp-8],7FFFFFF
>0064541D    jle         00645432
 0064541F    mov         edx,dword ptr ds:[6EA0A8];^gvar_00655044
 00645425    mov         ecx,dword ptr [ebp-8]
 00645428    mov         eax,dword ptr [ebp-4]
 0064542B    mov         eax,dword ptr [eax]
 0064542D    call        00644F60
 00645432    mov         eax,dword ptr [ebp-8]
 00645435    mov         edx,dword ptr [ebp-4]
 00645438    cmp         eax,dword ptr [edx+0C];TList.FCapacity:Integer
>0064543B    jle         00645448
 0064543D    mov         edx,dword ptr [ebp-8]
 00645440    mov         eax,dword ptr [ebp-4]
 00645443    call        TList.SetCapacity
 00645448    mov         eax,dword ptr [ebp-8]
 0064544B    mov         edx,dword ptr [ebp-4]
 0064544E    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>00645451    jle         00645477
 00645453    mov         eax,dword ptr [ebp-4]
 00645456    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 00645459    mov         edx,dword ptr [ebp-4]
 0064545C    mov         edx,dword ptr [edx+8];TList.FCount:Integer
 0064545F    lea         eax,[eax+edx*4]
 00645462    mov         edx,dword ptr [ebp-8]
 00645465    mov         ecx,dword ptr [ebp-4]
 00645468    sub         edx,dword ptr [ecx+8]
 0064546B    shl         edx,2
 0064546E    xor         ecx,ecx
 00645470    call        @FillChar
>00645475    jmp         0064549F
 00645477    mov         eax,dword ptr [ebp-4]
 0064547A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0064547D    dec         eax
 0064547E    mov         edx,dword ptr [ebp-8]
 00645481    sub         edx,eax
>00645483    jg          0064549F
 00645485    dec         edx
 00645486    mov         dword ptr [ebp-10],edx
 00645489    mov         dword ptr [ebp-0C],eax
 0064548C    mov         edx,dword ptr [ebp-0C]
 0064548F    mov         eax,dword ptr [ebp-4]
 00645492    call        TList.Delete
 00645497    dec         dword ptr [ebp-0C]
 0064549A    inc         dword ptr [ebp-10]
>0064549D    jne         0064548C
 0064549F    mov         eax,dword ptr [ebp-8]
 006454A2    mov         edx,dword ptr [ebp-4]
 006454A5    mov         dword ptr [edx+8],eax;TList.FCount:Integer
 006454A8    mov         esp,ebp
 006454AA    pop         ebp
 006454AB    ret
end;*}

//006454AC
{*procedure sub_006454AC(?:?; ?:?; ?:?; ?:?);
begin
 006454AC    push        ebp
 006454AD    mov         ebp,esp
 006454AF    add         esp,0FFFFFFE4
 006454B2    mov         dword ptr [ebp-0C],ecx
 006454B5    mov         dword ptr [ebp-8],edx
 006454B8    mov         dword ptr [ebp-4],eax
 006454BB    mov         eax,dword ptr [ebp-8]
 006454BE    mov         dword ptr [ebp-10],eax
 006454C1    mov         eax,dword ptr [ebp-0C]
 006454C4    mov         dword ptr [ebp-14],eax
 006454C7    mov         eax,dword ptr [ebp-8]
 006454CA    add         eax,dword ptr [ebp-0C]
 006454CD    shr         eax,1
 006454CF    mov         edx,dword ptr [ebp-4]
 006454D2    mov         eax,dword ptr [edx+eax*4]
 006454D5    mov         dword ptr [ebp-18],eax
>006454D8    jmp         006454DD
 006454DA    inc         dword ptr [ebp-10]
 006454DD    mov         eax,dword ptr [ebp-4]
 006454E0    mov         edx,dword ptr [ebp-10]
 006454E3    mov         eax,dword ptr [eax+edx*4]
 006454E6    mov         edx,dword ptr [ebp-18]
 006454E9    call        dword ptr [ebp+8]
 006454EC    test        eax,eax
>006454EE    jl          006454DA
>006454F0    jmp         006454F5
 006454F2    dec         dword ptr [ebp-14]
 006454F5    mov         eax,dword ptr [ebp-4]
 006454F8    mov         edx,dword ptr [ebp-14]
 006454FB    mov         eax,dword ptr [eax+edx*4]
 006454FE    mov         edx,dword ptr [ebp-18]
 00645501    call        dword ptr [ebp+8]
 00645504    test        eax,eax
>00645506    jg          006454F2
 00645508    mov         eax,dword ptr [ebp-10]
 0064550B    cmp         eax,dword ptr [ebp-14]
>0064550E    jg          00645540
 00645510    mov         eax,dword ptr [ebp-4]
 00645513    mov         edx,dword ptr [ebp-10]
 00645516    mov         eax,dword ptr [eax+edx*4]
 00645519    mov         dword ptr [ebp-1C],eax
 0064551C    mov         eax,dword ptr [ebp-4]
 0064551F    mov         edx,dword ptr [ebp-14]
 00645522    mov         eax,dword ptr [eax+edx*4]
 00645525    mov         edx,dword ptr [ebp-4]
 00645528    mov         ecx,dword ptr [ebp-10]
 0064552B    mov         dword ptr [edx+ecx*4],eax
 0064552E    mov         eax,dword ptr [ebp-4]
 00645531    mov         edx,dword ptr [ebp-14]
 00645534    mov         ecx,dword ptr [ebp-1C]
 00645537    mov         dword ptr [eax+edx*4],ecx
 0064553A    inc         dword ptr [ebp-10]
 0064553D    dec         dword ptr [ebp-14]
 00645540    mov         eax,dword ptr [ebp-10]
 00645543    cmp         eax,dword ptr [ebp-14]
>00645546    jle         006454DD
 00645548    mov         eax,dword ptr [ebp-8]
 0064554B    cmp         eax,dword ptr [ebp-14]
>0064554E    jge         00645562
 00645550    mov         eax,dword ptr [ebp+8]
 00645553    push        eax
 00645554    mov         ecx,dword ptr [ebp-14]
 00645557    mov         edx,dword ptr [ebp-8]
 0064555A    mov         eax,dword ptr [ebp-4]
 0064555D    call        006454AC
 00645562    mov         eax,dword ptr [ebp-10]
 00645565    mov         dword ptr [ebp-8],eax
 00645568    mov         eax,dword ptr [ebp-10]
 0064556B    cmp         eax,dword ptr [ebp-0C]
>0064556E    jl          006454BB
 00645574    mov         esp,ebp
 00645576    pop         ebp
 00645577    ret         4
end;*}

//0064557C
{*procedure sub_0064557C(?:?; ?:?);
begin
 0064557C    push        ebp
 0064557D    mov         ebp,esp
 0064557F    add         esp,0FFFFFFF8
 00645582    mov         dword ptr [ebp-8],edx
 00645585    mov         dword ptr [ebp-4],eax
 00645588    mov         eax,dword ptr [ebp-4]
 0064558B    cmp         dword ptr [eax+4],0
>0064558F    je          006455B2
 00645591    mov         eax,dword ptr [ebp-4]
 00645594    cmp         dword ptr [eax+8],0
>00645598    jle         006455B2
 0064559A    mov         eax,dword ptr [ebp-8]
 0064559D    push        eax
 0064559E    mov         eax,dword ptr [ebp-4]
 006455A1    mov         ecx,dword ptr [eax+8]
 006455A4    dec         ecx
 006455A5    xor         edx,edx
 006455A7    mov         eax,dword ptr [ebp-4]
 006455AA    mov         eax,dword ptr [eax+4]
 006455AD    call        006454AC
 006455B2    pop         ecx
 006455B3    pop         ecx
 006455B4    pop         ebp
 006455B5    ret
end;*}

//006455B8
{*procedure sub_006455B8(?:?; ?:?);
begin
 006455B8    push        ebp
 006455B9    mov         ebp,esp
 006455BB    add         esp,0FFFFFFF4
 006455BE    mov         byte ptr [ebp-9],cl
 006455C1    mov         dword ptr [ebp-8],edx
 006455C4    mov         dword ptr [ebp-4],eax
 006455C7    mov         esp,ebp
 006455C9    pop         ebp
 006455CA    ret
end;*}

//006455CC
{*procedure sub_006455CC(?:TList; ?:TList; ?:?; ?:?);
begin
 006455CC    push        ebp
 006455CD    mov         ebp,esp
 006455CF    add         esp,0FFFFFFE4
 006455D2    mov         byte ptr [ebp-9],cl
 006455D5    mov         dword ptr [ebp-8],edx
 006455D8    mov         dword ptr [ebp-4],eax
 006455DB    cmp         dword ptr [ebp+8],0
>006455DF    je          006455F8
 006455E1    mov         eax,dword ptr [ebp+8]
 006455E4    mov         dword ptr [ebp-18],eax
 006455E7    push        0
 006455E9    xor         ecx,ecx
 006455EB    mov         edx,dword ptr [ebp-8]
 006455EE    mov         eax,dword ptr [ebp-4]
 006455F1    call        006455CC
>006455F6    jmp         006455FE
 006455F8    mov         eax,dword ptr [ebp-8]
 006455FB    mov         dword ptr [ebp-18],eax
 006455FE    xor         eax,eax
 00645600    mov         al,byte ptr [ebp-9]
 00645603    cmp         eax,5
>00645606    ja          0064591B
 0064560C    jmp         dword ptr [eax*4+645613]
 0064560C    dd          0064562B
 0064560C    dd          0064567D
 0064560C    dd          006456C1
 0064560C    dd          00645715
 0064560C    dd          0064583B
 0064560C    dd          0064587F
 0064562B    mov         eax,dword ptr [ebp-4]
 0064562E    mov         edx,dword ptr [eax]
 00645630    call        dword ptr [edx+8];TList.sub_00644E64
 00645633    mov         eax,dword ptr [ebp-18]
 00645636    mov         edx,dword ptr [eax+0C];TList.FCapacity:Integer
 00645639    mov         eax,dword ptr [ebp-4]
 0064563C    call        TList.SetCapacity
 00645641    mov         eax,dword ptr [ebp-18]
 00645644    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00645647    dec         eax
 00645648    test        eax,eax
>0064564A    jl          0064591B
 00645650    inc         eax
 00645651    mov         dword ptr [ebp-1C],eax
 00645654    mov         dword ptr [ebp-10],0
 0064565B    mov         edx,dword ptr [ebp-10]
 0064565E    mov         eax,dword ptr [ebp-18]
 00645661    call        TList.Get
 00645666    mov         edx,eax
 00645668    mov         eax,dword ptr [ebp-4]
 0064566B    call        TList.Add
 00645670    inc         dword ptr [ebp-10]
 00645673    dec         dword ptr [ebp-1C]
>00645676    jne         0064565B
>00645678    jmp         0064591B
 0064567D    mov         eax,dword ptr [ebp-4]
 00645680    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00645683    dec         eax
 00645684    cmp         eax,0
>00645687    jl          0064591B
 0064568D    mov         dword ptr [ebp-10],eax
 00645690    mov         edx,dword ptr [ebp-10]
 00645693    mov         eax,dword ptr [ebp-4]
 00645696    call        TList.Get
 0064569B    mov         edx,eax
 0064569D    mov         eax,dword ptr [ebp-18]
 006456A0    call        TList.IndexOf
 006456A5    inc         eax
>006456A6    jne         006456B3
 006456A8    mov         edx,dword ptr [ebp-10]
 006456AB    mov         eax,dword ptr [ebp-4]
 006456AE    call        TList.Delete
 006456B3    dec         dword ptr [ebp-10]
 006456B6    cmp         dword ptr [ebp-10],0FFFFFFFF
>006456BA    jne         00645690
>006456BC    jmp         0064591B
 006456C1    mov         eax,dword ptr [ebp-18]
 006456C4    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 006456C7    dec         eax
 006456C8    test        eax,eax
>006456CA    jl          0064591B
 006456D0    inc         eax
 006456D1    mov         dword ptr [ebp-1C],eax
 006456D4    mov         dword ptr [ebp-10],0
 006456DB    mov         edx,dword ptr [ebp-10]
 006456DE    mov         eax,dword ptr [ebp-18]
 006456E1    call        TList.Get
 006456E6    mov         edx,eax
 006456E8    mov         eax,dword ptr [ebp-4]
 006456EB    call        TList.IndexOf
 006456F0    inc         eax
>006456F1    jne         00645708
 006456F3    mov         edx,dword ptr [ebp-10]
 006456F6    mov         eax,dword ptr [ebp-18]
 006456F9    call        TList.Get
 006456FE    mov         edx,eax
 00645700    mov         eax,dword ptr [ebp-4]
 00645703    call        TList.Add
 00645708    inc         dword ptr [ebp-10]
 0064570B    dec         dword ptr [ebp-1C]
>0064570E    jne         006456DB
>00645710    jmp         0064591B
 00645715    mov         dl,1
 00645717    mov         eax,[006422A4];TList
 0064571C    call        TObject.Create;TList.Create
 00645721    mov         dword ptr [ebp-14],eax
 00645724    xor         eax,eax
 00645726    push        ebp
 00645727    push        645834
 0064572C    push        dword ptr fs:[eax]
 0064572F    mov         dword ptr fs:[eax],esp
 00645732    mov         eax,dword ptr [ebp-18]
 00645735    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 00645738    mov         eax,dword ptr [ebp-14]
 0064573B    call        TList.SetCapacity
 00645740    mov         eax,dword ptr [ebp-18]
 00645743    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00645746    dec         eax
 00645747    test        eax,eax
>00645749    jl          0064578B
 0064574B    inc         eax
 0064574C    mov         dword ptr [ebp-1C],eax
 0064574F    mov         dword ptr [ebp-10],0
 00645756    mov         edx,dword ptr [ebp-10]
 00645759    mov         eax,dword ptr [ebp-18]
 0064575C    call        TList.Get
 00645761    mov         edx,eax
 00645763    mov         eax,dword ptr [ebp-4]
 00645766    call        TList.IndexOf
 0064576B    inc         eax
>0064576C    jne         00645783
 0064576E    mov         edx,dword ptr [ebp-10]
 00645771    mov         eax,dword ptr [ebp-18]
 00645774    call        TList.Get
 00645779    mov         edx,eax
 0064577B    mov         eax,dword ptr [ebp-14]
 0064577E    call        TList.Add
 00645783    inc         dword ptr [ebp-10]
 00645786    dec         dword ptr [ebp-1C]
>00645789    jne         00645756
 0064578B    mov         eax,dword ptr [ebp-4]
 0064578E    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00645791    dec         eax
 00645792    cmp         eax,0
>00645795    jl          006457C6
 00645797    mov         dword ptr [ebp-10],eax
 0064579A    mov         edx,dword ptr [ebp-10]
 0064579D    mov         eax,dword ptr [ebp-4]
 006457A0    call        TList.Get
 006457A5    mov         edx,eax
 006457A7    mov         eax,dword ptr [ebp-18]
 006457AA    call        TList.IndexOf
 006457AF    inc         eax
>006457B0    je          006457BD
 006457B2    mov         edx,dword ptr [ebp-10]
 006457B5    mov         eax,dword ptr [ebp-4]
 006457B8    call        TList.Delete
 006457BD    dec         dword ptr [ebp-10]
 006457C0    cmp         dword ptr [ebp-10],0FFFFFFFF
>006457C4    jne         0064579A
 006457C6    mov         eax,dword ptr [ebp-4]
 006457C9    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 006457CC    mov         edx,dword ptr [ebp-14]
 006457CF    add         eax,dword ptr [edx+8];TList.FCount:Integer
 006457D2    mov         dword ptr [ebp-10],eax
 006457D5    mov         eax,dword ptr [ebp-4]
 006457D8    mov         eax,dword ptr [eax+0C];TList.FCapacity:Integer
 006457DB    cmp         eax,dword ptr [ebp-10]
>006457DE    jge         006457EB
 006457E0    mov         edx,dword ptr [ebp-10]
 006457E3    mov         eax,dword ptr [ebp-4]
 006457E6    call        TList.SetCapacity
 006457EB    mov         eax,dword ptr [ebp-14]
 006457EE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 006457F1    dec         eax
 006457F2    test        eax,eax
>006457F4    jl          0064581E
 006457F6    inc         eax
 006457F7    mov         dword ptr [ebp-1C],eax
 006457FA    mov         dword ptr [ebp-10],0
 00645801    mov         edx,dword ptr [ebp-10]
 00645804    mov         eax,dword ptr [ebp-14]
 00645807    call        TList.Get
 0064580C    mov         edx,eax
 0064580E    mov         eax,dword ptr [ebp-4]
 00645811    call        TList.Add
 00645816    inc         dword ptr [ebp-10]
 00645819    dec         dword ptr [ebp-1C]
>0064581C    jne         00645801
 0064581E    xor         eax,eax
 00645820    pop         edx
 00645821    pop         ecx
 00645822    pop         ecx
 00645823    mov         dword ptr fs:[eax],edx
 00645826    push        64591B
 0064582B    mov         eax,dword ptr [ebp-14]
 0064582E    call        TObject.Free
 00645833    ret
>00645834    jmp         @HandleFinally
>00645839    jmp         0064582B
 0064583B    mov         eax,dword ptr [ebp-4]
 0064583E    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00645841    dec         eax
 00645842    cmp         eax,0
>00645845    jl          0064591B
 0064584B    mov         dword ptr [ebp-10],eax
 0064584E    mov         edx,dword ptr [ebp-10]
 00645851    mov         eax,dword ptr [ebp-4]
 00645854    call        TList.Get
 00645859    mov         edx,eax
 0064585B    mov         eax,dword ptr [ebp-18]
 0064585E    call        TList.IndexOf
 00645863    inc         eax
>00645864    je          00645871
 00645866    mov         edx,dword ptr [ebp-10]
 00645869    mov         eax,dword ptr [ebp-4]
 0064586C    call        TList.Delete
 00645871    dec         dword ptr [ebp-10]
 00645874    cmp         dword ptr [ebp-10],0FFFFFFFF
>00645878    jne         0064584E
>0064587A    jmp         0064591B
 0064587F    mov         dl,1
 00645881    mov         eax,[006422A4];TList
 00645886    call        TObject.Create;TList.Create
 0064588B    mov         dword ptr [ebp-14],eax
 0064588E    xor         eax,eax
 00645890    push        ebp
 00645891    push        645914
 00645896    push        dword ptr fs:[eax]
 00645899    mov         dword ptr fs:[eax],esp
 0064589C    mov         eax,dword ptr [ebp-18]
 0064589F    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 006458A2    mov         eax,dword ptr [ebp-14]
 006458A5    call        TList.SetCapacity
 006458AA    mov         eax,dword ptr [ebp-18]
 006458AD    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 006458B0    dec         eax
 006458B1    cmp         eax,0
>006458B4    jl          006458EF
 006458B6    mov         dword ptr [ebp-10],eax
 006458B9    mov         edx,dword ptr [ebp-10]
 006458BC    mov         eax,dword ptr [ebp-18]
 006458BF    call        TList.Get
 006458C4    mov         edx,eax
 006458C6    mov         eax,dword ptr [ebp-4]
 006458C9    call        TList.IndexOf
 006458CE    inc         eax
>006458CF    jne         006458E6
 006458D1    mov         edx,dword ptr [ebp-10]
 006458D4    mov         eax,dword ptr [ebp-18]
 006458D7    call        TList.Get
 006458DC    mov         edx,eax
 006458DE    mov         eax,dword ptr [ebp-14]
 006458E1    call        TList.Add
 006458E6    dec         dword ptr [ebp-10]
 006458E9    cmp         dword ptr [ebp-10],0FFFFFFFF
>006458ED    jne         006458B9
 006458EF    push        0
 006458F1    xor         ecx,ecx
 006458F3    mov         edx,dword ptr [ebp-14]
 006458F6    mov         eax,dword ptr [ebp-4]
 006458F9    call        006455CC
 006458FE    xor         eax,eax
 00645900    pop         edx
 00645901    pop         ecx
 00645902    pop         ecx
 00645903    mov         dword ptr fs:[eax],edx
 00645906    push        64591B
 0064590B    mov         eax,dword ptr [ebp-14]
 0064590E    call        TObject.Free
 00645913    ret
>00645914    jmp         @HandleFinally
>00645919    jmp         0064590B
 0064591B    mov         esp,ebp
 0064591D    pop         ebp
 0064591E    ret         4
end;*}

//00645924
constructor TThreadList.Create;
begin
{*
 00645924    push        ebp
 00645925    mov         ebp,esp
 00645927    add         esp,0FFFFFFF8
 0064592A    test        dl,dl
>0064592C    je          00645936
 0064592E    add         esp,0FFFFFFF0
 00645931    call        @ClassCreate
 00645936    mov         byte ptr [ebp-5],dl
 00645939    mov         dword ptr [ebp-4],eax
 0064593C    xor         edx,edx
 0064593E    mov         eax,dword ptr [ebp-4]
 00645941    call        TObject.Create
 00645946    mov         eax,dword ptr [ebp-4]
 00645949    add         eax,8;TThreadList.FLock:TRTLCriticalSection
 0064594C    push        eax
 0064594D    call        KERNEL32.InitializeCriticalSection
 00645952    mov         dl,1
 00645954    mov         eax,[006422A4];TList
 00645959    call        TObject.Create;TList.Create
 0064595E    mov         edx,dword ptr [ebp-4]
 00645961    mov         dword ptr [edx+4],eax;TThreadList.FList:TList
 00645964    mov         eax,dword ptr [ebp-4]
 00645967    mov         byte ptr [eax+20],0;TThreadList.FDuplicates:TDuplicates
 0064596B    mov         eax,dword ptr [ebp-4]
 0064596E    cmp         byte ptr [ebp-5],0
>00645972    je          00645983
 00645974    call        @AfterConstruction
 00645979    pop         dword ptr fs:[0]
 00645980    add         esp,0C
 00645983    mov         eax,dword ptr [ebp-4]
 00645986    pop         ecx
 00645987    pop         ecx
 00645988    pop         ebp
 00645989    ret
*}
end;

//0064598C
destructor TThreadList.Destroy;
begin
{*
 0064598C    push        ebp
 0064598D    mov         ebp,esp
 0064598F    add         esp,0FFFFFFF8
 00645992    call        @BeforeDestruction
 00645997    mov         byte ptr [ebp-5],dl
 0064599A    mov         dword ptr [ebp-4],eax
 0064599D    mov         eax,dword ptr [ebp-4]
 006459A0    call        TThreadList.LockList
 006459A5    xor         eax,eax
 006459A7    push        ebp
 006459A8    push        6459EE
 006459AD    push        dword ptr fs:[eax]
 006459B0    mov         dword ptr fs:[eax],esp
 006459B3    mov         eax,dword ptr [ebp-4]
 006459B6    mov         eax,dword ptr [eax+4]
 006459B9    call        TObject.Free
 006459BE    mov         dl,byte ptr [ebp-5]
 006459C1    and         dl,0FC
 006459C4    mov         eax,dword ptr [ebp-4]
 006459C7    call        TObject.Destroy
 006459CC    xor         eax,eax
 006459CE    pop         edx
 006459CF    pop         ecx
 006459D0    pop         ecx
 006459D1    mov         dword ptr fs:[eax],edx
 006459D4    push        6459F5
 006459D9    mov         eax,dword ptr [ebp-4]
 006459DC    call        TThreadList.UnlockList
 006459E1    mov         eax,dword ptr [ebp-4]
 006459E4    add         eax,8
 006459E7    push        eax
 006459E8    call        KERNEL32.DeleteCriticalSection
 006459ED    ret
>006459EE    jmp         @HandleFinally
>006459F3    jmp         006459D9
 006459F5    cmp         byte ptr [ebp-5],0
>006459F9    jle         00645A03
 006459FB    mov         eax,dword ptr [ebp-4]
 006459FE    call        @ClassDestroy
 00645A03    pop         ecx
 00645A04    pop         ecx
 00645A05    pop         ebp
 00645A06    ret
*}
end;

//00645A08
procedure sub_00645A08(?:TThreadList; ?:TObject);
begin
{*
 00645A08    push        ebp
 00645A09    mov         ebp,esp
 00645A0B    add         esp,0FFFFFFF8
 00645A0E    mov         dword ptr [ebp-8],edx
 00645A11    mov         dword ptr [ebp-4],eax
 00645A14    mov         eax,dword ptr [ebp-4]
 00645A17    call        TThreadList.LockList
 00645A1C    xor         eax,eax
 00645A1E    push        ebp
 00645A1F    push        645A89
 00645A24    push        dword ptr fs:[eax]
 00645A27    mov         dword ptr fs:[eax],esp
 00645A2A    mov         eax,dword ptr [ebp-4]
 00645A2D    cmp         byte ptr [eax+20],1;TThreadList.FDuplicates:TDuplicates
>00645A31    je          00645A44
 00645A33    mov         eax,dword ptr [ebp-4]
 00645A36    mov         eax,dword ptr [eax+4];TThreadList.FList:TList
 00645A39    mov         edx,dword ptr [ebp-8]
 00645A3C    call        TList.IndexOf
 00645A41    inc         eax
>00645A42    jne         00645A54
 00645A44    mov         eax,dword ptr [ebp-4]
 00645A47    mov         eax,dword ptr [eax+4];TThreadList.FList:TList
 00645A4A    mov         edx,dword ptr [ebp-8]
 00645A4D    call        TList.Add
>00645A52    jmp         00645A73
 00645A54    mov         eax,dword ptr [ebp-4]
 00645A57    cmp         byte ptr [eax+20],2;TThreadList.FDuplicates:TDuplicates
>00645A5B    jne         00645A73
 00645A5D    mov         edx,dword ptr ds:[6EA060];^gvar_00654FB4
 00645A63    mov         eax,dword ptr [ebp-4]
 00645A66    mov         eax,dword ptr [eax+4];TThreadList.FList:TList
 00645A69    mov         eax,dword ptr [eax]
 00645A6B    mov         ecx,dword ptr [ebp-8]
 00645A6E    call        00644F60
 00645A73    xor         eax,eax
 00645A75    pop         edx
 00645A76    pop         ecx
 00645A77    pop         ecx
 00645A78    mov         dword ptr fs:[eax],edx
 00645A7B    push        645A90
 00645A80    mov         eax,dword ptr [ebp-4]
 00645A83    call        TThreadList.UnlockList
 00645A88    ret
>00645A89    jmp         @HandleFinally
>00645A8E    jmp         00645A80
 00645A90    pop         ecx
 00645A91    pop         ecx
 00645A92    pop         ebp
 00645A93    ret
*}
end;

//00645A94
function TThreadList.LockList:TList;
begin
{*
 00645A94    push        ebp
 00645A95    mov         ebp,esp
 00645A97    add         esp,0FFFFFFF8
 00645A9A    mov         dword ptr [ebp-4],eax
 00645A9D    mov         eax,dword ptr [ebp-4]
 00645AA0    add         eax,8
 00645AA3    push        eax
 00645AA4    call        KERNEL32.EnterCriticalSection
 00645AA9    mov         eax,dword ptr [ebp-4]
 00645AAC    mov         eax,dword ptr [eax+4]
 00645AAF    mov         dword ptr [ebp-8],eax
 00645AB2    mov         eax,dword ptr [ebp-8]
 00645AB5    pop         ecx
 00645AB6    pop         ecx
 00645AB7    pop         ebp
 00645AB8    ret
*}
end;

//00645ABC
procedure sub_00645ABC(?:TThreadList; ?:TCanvas);
begin
{*
 00645ABC    push        ebp
 00645ABD    mov         ebp,esp
 00645ABF    add         esp,0FFFFFFF8
 00645AC2    mov         dword ptr [ebp-8],edx
 00645AC5    mov         dword ptr [ebp-4],eax
 00645AC8    mov         eax,dword ptr [ebp-4]
 00645ACB    call        TThreadList.LockList
 00645AD0    xor         eax,eax
 00645AD2    push        ebp
 00645AD3    push        645B02
 00645AD8    push        dword ptr fs:[eax]
 00645ADB    mov         dword ptr fs:[eax],esp
 00645ADE    mov         eax,dword ptr [ebp-4]
 00645AE1    mov         eax,dword ptr [eax+4];TThreadList.FList:TList
 00645AE4    mov         edx,dword ptr [ebp-8]
 00645AE7    call        TList.Remove
 00645AEC    xor         eax,eax
 00645AEE    pop         edx
 00645AEF    pop         ecx
 00645AF0    pop         ecx
 00645AF1    mov         dword ptr fs:[eax],edx
 00645AF4    push        645B09
 00645AF9    mov         eax,dword ptr [ebp-4]
 00645AFC    call        TThreadList.UnlockList
 00645B01    ret
>00645B02    jmp         @HandleFinally
>00645B07    jmp         00645AF9
 00645B09    pop         ecx
 00645B0A    pop         ecx
 00645B0B    pop         ebp
 00645B0C    ret
*}
end;

//00645B10
procedure TThreadList.UnlockList;
begin
{*
 00645B10    push        ebp
 00645B11    mov         ebp,esp
 00645B13    push        ecx
 00645B14    mov         dword ptr [ebp-4],eax
 00645B17    mov         eax,dword ptr [ebp-4]
 00645B1A    add         eax,8
 00645B1D    push        eax
 00645B1E    call        KERNEL32.LeaveCriticalSection
 00645B23    pop         ecx
 00645B24    pop         ebp
 00645B25    ret
*}
end;

//00645B7C
procedure TBits.Error;
begin
{*
 00645B7C    push        ebp
 00645B7D    mov         ebp,esp
 00645B7F    push        ecx
 00645B80    mov         dword ptr [ebp-4],eax
 00645B83    mov         ecx,dword ptr ds:[6EA04C]
 00645B89    mov         dl,1
 00645B8B    mov         eax,[006420D4];EBitsError
 00645B90    call        Exception.Create
 00645B95    call        @RaiseExcept
 00645B9A    pop         ecx
 00645B9B    pop         ebp
 00645B9C    ret
*}
end;

//00645BA0
{*function sub_00645BA0(?:?; ?:?):?;
begin
 00645BA0    push        ebp
 00645BA1    mov         ebp,esp
 00645BA3    add         esp,0FFFFFFF4
 00645BA6    mov         dword ptr [ebp-8],edx
 00645BA9    mov         dword ptr [ebp-4],eax
 00645BAC    mov         eax,dword ptr [ebp-4]
 00645BAF    mov         dword ptr [ebp-0C],eax
 00645BB2    mov         eax,dword ptr [ebp-4]
 00645BB5    cmp         eax,dword ptr [ebp-8]
>00645BB8    jle         00645BC0
 00645BBA    mov         eax,dword ptr [ebp-8]
 00645BBD    mov         dword ptr [ebp-0C],eax
 00645BC0    mov         eax,dword ptr [ebp-0C]
 00645BC3    mov         esp,ebp
 00645BC5    pop         ebp
 00645BC6    ret
end;*}

//00645BC8
procedure TBits.SetSize(Value:Integer);
begin
{*
 00645BC8    push        ebp
 00645BC9    mov         ebp,esp
 00645BCB    add         esp,0FFFFFFEC
 00645BCE    mov         dword ptr [ebp-8],edx
 00645BD1    mov         dword ptr [ebp-4],eax
 00645BD4    mov         eax,dword ptr [ebp-8]
 00645BD7    mov         edx,dword ptr [ebp-4]
 00645BDA    cmp         eax,dword ptr [edx+4]
>00645BDD    je          00645C96
 00645BE3    cmp         dword ptr [ebp-8],0
>00645BE7    jge         00645BF1
 00645BE9    mov         eax,dword ptr [ebp-4]
 00645BEC    call        TBits.Error
 00645BF1    mov         eax,dword ptr [ebp-8]
 00645BF4    add         eax,20
 00645BF7    dec         eax
 00645BF8    test        eax,eax
>00645BFA    jns         00645BFF
 00645BFC    add         eax,1F
 00645BFF    sar         eax,5
 00645C02    shl         eax,2
 00645C05    mov         dword ptr [ebp-10],eax
 00645C08    mov         eax,dword ptr [ebp-4]
 00645C0B    mov         eax,dword ptr [eax+4]
 00645C0E    add         eax,20
 00645C11    dec         eax
 00645C12    test        eax,eax
>00645C14    jns         00645C19
 00645C16    add         eax,1F
 00645C19    sar         eax,5
 00645C1C    shl         eax,2
 00645C1F    mov         dword ptr [ebp-14],eax
 00645C22    mov         eax,dword ptr [ebp-10]
 00645C25    cmp         eax,dword ptr [ebp-14]
>00645C28    je          00645C8D
 00645C2A    xor         eax,eax
 00645C2C    mov         dword ptr [ebp-0C],eax
 00645C2F    cmp         dword ptr [ebp-10],0
>00645C33    je          00645C4D
 00645C35    mov         eax,dword ptr [ebp-10]
 00645C38    call        @GetMem
 00645C3D    mov         dword ptr [ebp-0C],eax
 00645C40    mov         eax,dword ptr [ebp-0C]
 00645C43    xor         ecx,ecx
 00645C45    mov         edx,dword ptr [ebp-10]
 00645C48    call        @FillChar
 00645C4D    cmp         dword ptr [ebp-14],0
>00645C51    je          00645C84
 00645C53    cmp         dword ptr [ebp-0C],0
>00645C57    je          00645C76
 00645C59    push        ebp
 00645C5A    mov         edx,dword ptr [ebp-10]
 00645C5D    mov         eax,dword ptr [ebp-14]
 00645C60    call        00645BA0
 00645C65    pop         ecx
 00645C66    mov         ecx,eax
 00645C68    mov         edx,dword ptr [ebp-0C]
 00645C6B    mov         eax,dword ptr [ebp-4]
 00645C6E    mov         eax,dword ptr [eax+8]
 00645C71    call        Move
 00645C76    mov         edx,dword ptr [ebp-14]
 00645C79    mov         eax,dword ptr [ebp-4]
 00645C7C    mov         eax,dword ptr [eax+8]
 00645C7F    call        @FreeMem
 00645C84    mov         eax,dword ptr [ebp-0C]
 00645C87    mov         edx,dword ptr [ebp-4]
 00645C8A    mov         dword ptr [edx+8],eax
 00645C8D    mov         eax,dword ptr [ebp-8]
 00645C90    mov         edx,dword ptr [ebp-4]
 00645C93    mov         dword ptr [edx+4],eax
 00645C96    mov         esp,ebp
 00645C98    pop         ebp
 00645C99    ret
*}
end;

//00645C9C
procedure TBits.SetBit(Index:Integer; Value:Boolean);
begin
{*
 00645C9C    cmp         edx,dword ptr [eax+4]
>00645C9F    jae         00645CB0
 00645CA1    mov         eax,dword ptr [eax+8]
 00645CA4    or          cl,cl
>00645CA6    je          00645CAC
 00645CA8    bts         dword ptr [eax],edx
 00645CAB    ret
 00645CAC    btr         dword ptr [eax],edx
 00645CAF    ret
 00645CB0    cmp         edx,0
>00645CB3    jl          00645B7C
 00645CB9    push        eax
 00645CBA    push        edx
 00645CBB    push        ecx
 00645CBC    inc         edx
 00645CBD    call        TBits.SetSize
 00645CC2    pop         ecx
 00645CC3    pop         edx
 00645CC4    pop         eax
>00645CC5    jmp         00645CA1
 00645CC7    ret
*}
end;

//00645CC8
function TBits.GetBit(Index:Integer):Boolean;
begin
{*
 00645CC8    cmp         edx,dword ptr [eax+4]
>00645CCB    jae         00645B7C
 00645CD1    mov         eax,dword ptr [eax+8]
 00645CD4    bt          dword ptr [eax],edx
 00645CD7    sbb         eax,eax
 00645CD9    and         eax,1
 00645CDC    ret
*}
end;

//00645CE0
{*function sub_00645CE0(?:TBits):?;
begin
 00645CE0    push        ebp
 00645CE1    mov         ebp,esp
 00645CE3    add         esp,0FFFFFFE4
 00645CE6    mov         dword ptr [ebp-4],eax
 00645CE9    mov         eax,dword ptr [ebp-4]
 00645CEC    mov         eax,dword ptr [eax+4];TBits.FSize:Integer
 00645CEF    add         eax,20
 00645CF2    dec         eax
 00645CF3    test        eax,eax
>00645CF5    jns         00645CFA
 00645CF7    add         eax,1F
 00645CFA    sar         eax,5
 00645CFD    dec         eax
 00645CFE    mov         dword ptr [ebp-18],eax
 00645D01    mov         eax,dword ptr [ebp-18]
 00645D04    test        eax,eax
>00645D06    jl          00645D81
 00645D08    inc         eax
 00645D09    mov         dword ptr [ebp-1C],eax
 00645D0C    mov         dword ptr [ebp-0C],0
 00645D13    mov         eax,dword ptr [ebp-4]
 00645D16    mov         eax,dword ptr [eax+8];TBits.FBits:Pointer
 00645D19    mov         edx,dword ptr [ebp-0C]
 00645D1C    mov         ecx,dword ptr ds:[645D94];0xFFFFFFFF gvar_00645D94
 00645D22    cmp         ecx,dword ptr [eax+edx*4]
>00645D25    je          00645D79
 00645D27    mov         eax,dword ptr [ebp-4]
 00645D2A    mov         eax,dword ptr [eax+8];TBits.FBits:Pointer
 00645D2D    mov         edx,dword ptr [ebp-0C]
 00645D30    mov         eax,dword ptr [eax+edx*4]
 00645D33    mov         dword ptr [ebp-10],eax
 00645D36    mov         byte ptr [ebp-11],0
 00645D3A    mov         al,byte ptr [ebp-11]
 00645D3D    cmp         al,1F
>00645D3F    ja          00645D48
 00645D41    and         eax,7F
 00645D44    bt          dword ptr [ebp-10],eax
>00645D48    jb          00645D70
 00645D4A    mov         eax,dword ptr [ebp-0C]
 00645D4D    shl         eax,5
 00645D50    xor         edx,edx
 00645D52    mov         dl,byte ptr [ebp-11]
 00645D55    add         eax,edx
 00645D57    mov         dword ptr [ebp-8],eax
 00645D5A    mov         eax,dword ptr [ebp-8]
 00645D5D    mov         edx,dword ptr [ebp-4]
 00645D60    cmp         eax,dword ptr [edx+4];TBits.FSize:Integer
>00645D63    jl          00645D8A
 00645D65    mov         eax,dword ptr [ebp-4]
 00645D68    mov         eax,dword ptr [eax+4];TBits.FSize:Integer
 00645D6B    mov         dword ptr [ebp-8],eax
>00645D6E    jmp         00645D8A
 00645D70    inc         byte ptr [ebp-11]
 00645D73    cmp         byte ptr [ebp-11],20
>00645D77    jne         00645D3A
 00645D79    inc         dword ptr [ebp-0C]
 00645D7C    dec         dword ptr [ebp-1C]
>00645D7F    jne         00645D13
 00645D81    mov         eax,dword ptr [ebp-4]
 00645D84    mov         eax,dword ptr [eax+4];TBits.FSize:Integer
 00645D87    mov         dword ptr [ebp-8],eax
 00645D8A    mov         eax,dword ptr [ebp-8]
 00645D8D    mov         esp,ebp
 00645D8F    pop         ebp
 00645D90    ret
end;*}

//00645D98
destructor TPersistent.Destroy;
begin
{*
 00645D98    push        ebp
 00645D99    mov         ebp,esp
 00645D9B    add         esp,0FFFFFFF8
 00645D9E    call        @BeforeDestruction
 00645DA3    mov         byte ptr [ebp-5],dl
 00645DA6    mov         dword ptr [ebp-4],eax
 00645DA9    mov         eax,dword ptr [ebp-4]
 00645DAC    call        00649C58
 00645DB1    mov         dl,byte ptr [ebp-5]
 00645DB4    and         dl,0FC
 00645DB7    mov         eax,dword ptr [ebp-4]
 00645DBA    call        TObject.Destroy
 00645DBF    cmp         byte ptr [ebp-5],0
>00645DC3    jle         00645DCD
 00645DC5    mov         eax,dword ptr [ebp-4]
 00645DC8    call        @ClassDestroy
 00645DCD    pop         ecx
 00645DCE    pop         ecx
 00645DCF    pop         ebp
 00645DD0    ret
*}
end;

//00645DD4
procedure TPersistent.Assign(Source:TPersistent);
begin
{*
 00645DD4    push        ebp
 00645DD5    mov         ebp,esp
 00645DD7    add         esp,0FFFFFFF8
 00645DDA    mov         dword ptr [ebp-8],edx
 00645DDD    mov         dword ptr [ebp-4],eax
 00645DE0    cmp         dword ptr [ebp-8],0
>00645DE4    je          00645DF2
 00645DE6    mov         edx,dword ptr [ebp-4]
 00645DE9    mov         eax,dword ptr [ebp-8]
 00645DEC    mov         ecx,dword ptr [eax]
 00645DEE    call        dword ptr [ecx]
>00645DF0    jmp         00645DFC
 00645DF2    xor         edx,edx
 00645DF4    mov         eax,dword ptr [ebp-4]
 00645DF7    call        00645E00
 00645DFC    pop         ecx
 00645DFD    pop         ecx
 00645DFE    pop         ebp
 00645DFF    ret
*}
end;

//00645E00
{*procedure sub_00645E00(?:?; ?:?);
begin
 00645E00    push        ebp
 00645E01    mov         ebp,esp
 00645E03    add         esp,0FFFFFEE4
 00645E09    xor         ecx,ecx
 00645E0B    mov         dword ptr [ebp-0C],ecx
 00645E0E    mov         dword ptr [ebp-8],edx
 00645E11    mov         dword ptr [ebp-4],eax
 00645E14    xor         eax,eax
 00645E16    push        ebp
 00645E17    push        645EBE
 00645E1C    push        dword ptr fs:[eax]
 00645E1F    mov         dword ptr fs:[eax],esp
 00645E22    cmp         dword ptr [ebp-8],0
>00645E26    je          00645E48
 00645E28    lea         edx,[ebp-10C]
 00645E2E    mov         eax,dword ptr [ebp-8]
 00645E31    mov         eax,dword ptr [eax]
 00645E33    call        TObject.ClassName
 00645E38    lea         edx,[ebp-10C]
 00645E3E    lea         eax,[ebp-0C]
 00645E41    call        @LStrFromString
>00645E46    jmp         00645E55
 00645E48    lea         eax,[ebp-0C]
 00645E4B    mov         edx,645ED4;'nil'
 00645E50    call        @LStrLAsg
 00645E55    mov         eax,dword ptr [ebp-0C]
 00645E58    mov         dword ptr [ebp-11C],eax
 00645E5E    mov         byte ptr [ebp-118],0B
 00645E65    lea         edx,[ebp-10C]
 00645E6B    mov         eax,dword ptr [ebp-4]
 00645E6E    mov         eax,dword ptr [eax]
 00645E70    call        TObject.ClassName
 00645E75    lea         eax,[ebp-10C]
 00645E7B    mov         dword ptr [ebp-114],eax
 00645E81    mov         byte ptr [ebp-110],4
 00645E88    lea         eax,[ebp-11C]
 00645E8E    push        eax
 00645E8F    push        1
 00645E91    mov         ecx,dword ptr ds:[6EA048];^gvar_00654F84
 00645E97    mov         dl,1
 00645E99    mov         eax,[00656DCC];EConvertError
 00645E9E    call        Exception.CreateResFmt;EConvertError.Create
 00645EA3    call        @RaiseExcept
 00645EA8    xor         eax,eax
 00645EAA    pop         edx
 00645EAB    pop         ecx
 00645EAC    pop         ecx
 00645EAD    mov         dword ptr fs:[eax],edx
 00645EB0    push        645EC5
 00645EB5    lea         eax,[ebp-0C]
 00645EB8    call        @LStrClr
 00645EBD    ret
>00645EBE    jmp         @HandleFinally
>00645EC3    jmp         00645EB5
 00645EC5    mov         esp,ebp
 00645EC7    pop         ebp
 00645EC8    ret
end;*}

//00645ED8
procedure TPersistent.AssignTo(Dest:TPersistent);
begin
{*
 00645ED8    push        ebp
 00645ED9    mov         ebp,esp
 00645EDB    add         esp,0FFFFFFF8
 00645EDE    mov         dword ptr [ebp-8],edx
 00645EE1    mov         dword ptr [ebp-4],eax
 00645EE4    mov         edx,dword ptr [ebp-4]
 00645EE7    mov         eax,dword ptr [ebp-8]
 00645EEA    call        00645E00
 00645EEF    pop         ecx
 00645EF0    pop         ecx
 00645EF1    pop         ebp
 00645EF2    ret
*}
end;

//00645EF4
procedure TPersistent.DefineProperties(Filer:TFiler);
begin
{*
 00645EF4    push        ebp
 00645EF5    mov         ebp,esp
 00645EF7    add         esp,0FFFFFFF8
 00645EFA    mov         dword ptr [ebp-8],edx
 00645EFD    mov         dword ptr [ebp-4],eax
 00645F00    pop         ecx
 00645F01    pop         ecx
 00645F02    pop         ebp
 00645F03    ret
*}
end;

//00645F04
{*procedure TPersistent.sub_00645F04(?:?);
begin
 00645F04    push        ebp
 00645F05    mov         ebp,esp
 00645F07    add         esp,0FFFFFEF4
 00645F0D    push        esi
 00645F0E    xor         ecx,ecx
 00645F10    mov         dword ptr [ebp-0C],ecx
 00645F13    mov         dword ptr [ebp-8],edx
 00645F16    mov         dword ptr [ebp-4],eax
 00645F19    xor         eax,eax
 00645F1B    push        ebp
 00645F1C    push        645FA3
 00645F21    push        dword ptr fs:[eax]
 00645F24    mov         dword ptr fs:[eax],esp
 00645F27    lea         edx,[ebp-10C]
 00645F2D    mov         eax,dword ptr [ebp-4]
 00645F30    mov         eax,dword ptr [eax]
 00645F32    call        TObject.ClassName
 00645F37    lea         edx,[ebp-10C]
 00645F3D    mov         eax,dword ptr [ebp-8]
 00645F40    call        @LStrFromString
 00645F45    mov         eax,dword ptr [ebp-4]
 00645F48    mov         si,0FFFF
 00645F4C    call        @CallDynaInst;TPersistent.sub_00645FBC
 00645F51    test        eax,eax
>00645F53    je          00645F8D
 00645F55    mov         eax,dword ptr [ebp-4]
 00645F58    mov         si,0FFFF
 00645F5C    call        @CallDynaInst;TPersistent.sub_00645FBC
 00645F61    lea         edx,[ebp-0C]
 00645F64    mov         si,0FFFE
 00645F68    call        @CallDynaInst
 00645F6D    cmp         dword ptr [ebp-0C],0
>00645F71    je          00645F8D
 00645F73    push        dword ptr [ebp-0C]
 00645F76    push        645FB8;'.'
 00645F7B    mov         eax,dword ptr [ebp-8]
 00645F7E    push        dword ptr [eax]
 00645F80    mov         eax,dword ptr [ebp-8]
 00645F83    mov         edx,3
 00645F88    call        @LStrCatN
 00645F8D    xor         eax,eax
 00645F8F    pop         edx
 00645F90    pop         ecx
 00645F91    pop         ecx
 00645F92    mov         dword ptr fs:[eax],edx
 00645F95    push        645FAA
 00645F9A    lea         eax,[ebp-0C]
 00645F9D    call        @LStrClr
 00645FA2    ret
>00645FA3    jmp         @HandleFinally
>00645FA8    jmp         00645F9A
 00645FAA    pop         esi
 00645FAB    mov         esp,ebp
 00645FAD    pop         ebp
 00645FAE    ret
end;*}

//00645FBC
procedure TPersistent.sub_00645FBC;
begin
{*
 00645FBC    push        ebp
 00645FBD    mov         ebp,esp
 00645FBF    add         esp,0FFFFFFF8
 00645FC2    mov         dword ptr [ebp-4],eax
 00645FC5    xor         eax,eax
 00645FC7    mov         dword ptr [ebp-8],eax
 00645FCA    mov         eax,dword ptr [ebp-8]
 00645FCD    pop         ecx
 00645FCE    pop         ecx
 00645FCF    pop         ebp
 00645FD0    ret
*}
end;

//00645FD4
procedure TInterfacedPersistent.AfterConstruction;
begin
{*
 00645FD4    push        ebp
 00645FD5    mov         ebp,esp
 00645FD7    push        ecx
 00645FD8    push        esi
 00645FD9    mov         dword ptr [ebp-4],eax;{TObject.AfterConstruction}
 00645FDC    mov         eax,dword ptr [ebp-4]
 00645FDF    call        TTeeCanvas.AfterConstruction
 00645FE4    mov         eax,dword ptr [ebp-4];{@CallDynaInst}
 00645FE7    mov         si,0FFFF
 00645FEB    call        @CallDynaInst
 00645FF0    test        eax,eax
>00645FF2    je          00646019
 00645FF4    mov         eax,dword ptr [ebp-4];{@CallDynaInst}
 00645FF7    mov         si,0FFFF
 00645FFB    call        @CallDynaInst
 00646000    push        eax
 00646001    mov         eax,dword ptr [ebp-4]
 00646004    add         eax,4
 00646007    call        @IntfClear
 0064600C    mov         ecx,eax
 0064600E    mov         edx,646020
 00646013    pop         eax
 00646014    call        TObject.GetInterface
 00646019    pop         esi
 0064601A    pop         ecx
 0064601B    pop         ebp
 0064601C    ret
*}
end;

//00646030
{*function sub_00646030(?:?):?;
begin
 00646030    push        ebp
 00646031    mov         ebp,esp
 00646033    push        ecx
 00646034    mov         eax,dword ptr [ebp+8]
 00646037    cmp         dword ptr [eax+4],0
>0064603B    je          0064604E
 0064603D    mov         eax,dword ptr [ebp+8]
 00646040    mov         eax,dword ptr [eax+4]
 00646043    push        eax
 00646044    mov         eax,dword ptr [eax]
 00646046    call        dword ptr [eax+4]
 00646049    mov         dword ptr [ebp-4],eax
>0064604C    jmp         00646055
 0064604E    mov         dword ptr [ebp-4],0FFFFFFFF
 00646055    mov         eax,dword ptr [ebp-4]
 00646058    pop         ecx
 00646059    pop         ebp
 0064605A    ret         4
end;*}

//00646060
{*function sub_00646060(?:?):?;
begin
 00646060    push        ebp
 00646061    mov         ebp,esp
 00646063    push        ecx
 00646064    mov         eax,dword ptr [ebp+8]
 00646067    cmp         dword ptr [eax+4],0
>0064606B    je          0064607E
 0064606D    mov         eax,dword ptr [ebp+8]
 00646070    mov         eax,dword ptr [eax+4]
 00646073    push        eax
 00646074    mov         eax,dword ptr [eax]
 00646076    call        dword ptr [eax+8]
 00646079    mov         dword ptr [ebp-4],eax
>0064607C    jmp         00646085
 0064607E    mov         dword ptr [ebp-4],0FFFFFFFF
 00646085    mov         eax,dword ptr [ebp-4]
 00646088    pop         ecx
 00646089    pop         ebp
 0064608A    ret         4
end;*}

//00646090
{*function sub_00646090(?:?; ?:?):?;
begin
 00646090    push        ebp
 00646091    mov         ebp,esp
 00646093    push        ecx
 00646094    mov         ecx,dword ptr [ebp+10]
 00646097    mov         edx,dword ptr [ebp+0C]
 0064609A    mov         eax,dword ptr [ebp+8]
 0064609D    call        TObject.GetInterface
 006460A2    test        al,al
>006460A4    je          006460AD
 006460A6    xor         eax,eax
 006460A8    mov         dword ptr [ebp-4],eax
>006460AB    jmp         006460B4
 006460AD    mov         dword ptr [ebp-4],80004002
 006460B4    mov         eax,dword ptr [ebp-4]
 006460B7    pop         ecx
 006460B8    pop         ebp
 006460B9    ret         0C
end;*}

//006460BC
{*procedure sub_006460BC(?:?; ?:?);
begin
 006460BC    push        ebp
 006460BD    mov         ebp,esp
 006460BF    add         esp,0FFFFFFF4
 006460C2    push        esi
 006460C3    mov         dword ptr [ebp-8],edx
 006460C6    mov         dword ptr [ebp-4],eax
 006460C9    mov         eax,dword ptr [ebp-8]
 006460CC    test        eax,eax
>006460CE    je          006460D4
 006460D0    xor         edx,edx
 006460D2    mov         dword ptr [eax],edx
 006460D4    mov         eax,dword ptr [ebp-8]
 006460D7    call        @IntfClear
 006460DC    cmp         dword ptr [ebp-4],0
>006460E0    je          00646158
 006460E2    mov         eax,dword ptr [ebp-4]
 006460E5    mov         si,0FFFF
 006460E9    call        @CallDynaInst
 006460EE    mov         dword ptr [ebp-0C],eax
 006460F1    cmp         dword ptr [ebp-0C],0
>006460F5    jne         0064612B
 006460F7    mov         eax,dword ptr [ebp-4]
 006460FA    mov         edx,dword ptr ds:[643204];TComponent
 00646100    call        @IsClass
 00646105    test        al,al
>00646107    je          00646158
 00646109    mov         eax,dword ptr [ebp-4]
 0064610C    test        byte ptr [eax+1C],10
>00646110    je          00646158
 00646112    mov         eax,dword ptr [ebp-8]
 00646115    call        @IntfClear
 0064611A    push        eax
 0064611B    push        646160
 00646120    mov         eax,dword ptr [ebp-4]
 00646123    push        eax
 00646124    mov         eax,dword ptr [eax]
 00646126    call        dword ptr [eax+28]
>00646129    jmp         00646158
 0064612B    mov         eax,dword ptr [ebp-4]
 0064612E    mov         edx,dword ptr ds:[643204];TComponent
 00646134    call        @IsClass
 00646139    test        al,al
>0064613B    je          00646146
 0064613D    mov         eax,dword ptr [ebp-4]
 00646140    test        byte ptr [eax+1C],10
>00646144    je          00646158
 00646146    mov         eax,dword ptr [ebp-8]
 00646149    call        @IntfClear
 0064614E    mov         edx,eax
 00646150    mov         eax,dword ptr [ebp-0C]
 00646153    call        006460BC
 00646158    pop         esi
 00646159    mov         esp,ebp
 0064615B    pop         ebp
 0064615C    ret
end;*}

//00646170
{*procedure sub_00646170(?:TCollection; ?:TPersistent; ?:?);
begin
 00646170    push        ebp
 00646171    mov         ebp,esp
 00646173    add         esp,0FFFFFFF0
 00646176    push        ebx
 00646177    xor         ebx,ebx
 00646179    mov         dword ptr [ebp-10],ebx
 0064617C    mov         byte ptr [ebp-9],cl
 0064617F    mov         dword ptr [ebp-8],edx
 00646182    mov         dword ptr [ebp-4],eax
 00646185    xor         eax,eax
 00646187    push        ebp
 00646188    push        6461CF
 0064618D    push        dword ptr fs:[eax]
 00646190    mov         dword ptr fs:[eax],esp
 00646193    lea         eax,[ebp-10]
 00646196    call        @IntfClear
 0064619B    mov         edx,eax
 0064619D    mov         eax,dword ptr [ebp-4]
 006461A0    call        006460BC
 006461A5    cmp         dword ptr [ebp-10],0
>006461A9    je          006461B9
 006461AB    mov         cl,byte ptr [ebp-9]
 006461AE    mov         edx,dword ptr [ebp-8]
 006461B1    mov         eax,dword ptr [ebp-10]
 006461B4    mov         ebx,dword ptr [eax]
 006461B6    call        dword ptr [ebx+10]
 006461B9    xor         eax,eax
 006461BB    pop         edx
 006461BC    pop         ecx
 006461BD    pop         ecx
 006461BE    mov         dword ptr fs:[eax],edx
 006461C1    push        6461D6
 006461C6    lea         eax,[ebp-10]
 006461C9    call        @IntfClear
 006461CE    ret
>006461CF    jmp         @HandleFinally
>006461D4    jmp         006461C6
 006461D6    pop         ebx
 006461D7    mov         esp,ebp
 006461D9    pop         ebp
 006461DA    ret
end;*}

//006461DC
constructor sub_006461DC;
begin
{*
 006461DC    push        ebp
 006461DD    mov         ebp,esp
 006461DF    add         esp,0FFFFFFF4
 006461E2    test        dl,dl
>006461E4    je          006461EE
 006461E6    add         esp,0FFFFFFF0
 006461E9    call        @ClassCreate
 006461EE    mov         dword ptr [ebp-0C],ecx
 006461F1    mov         byte ptr [ebp-5],dl
 006461F4    mov         dword ptr [ebp-4],eax
 006461F7    mov         edx,dword ptr [ebp-0C]
 006461FA    mov         eax,dword ptr [ebp-4]
 006461FD    mov         ecx,dword ptr [eax]
 006461FF    call        dword ptr [ecx+10];TCollectionItem.sub_006463F0
 00646202    mov         eax,dword ptr [ebp-4]
 00646205    cmp         byte ptr [ebp-5],0
>00646209    je          0064621A
 0064620B    call        @AfterConstruction
 00646210    pop         dword ptr fs:[0]
 00646217    add         esp,0C
 0064621A    mov         eax,dword ptr [ebp-4]
 0064621D    mov         esp,ebp
 0064621F    pop         ebp
 00646220    ret
*}
end;

//00646224
destructor TCollectionItem.Destroy;
begin
{*
 00646224    push        ebp
 00646225    mov         ebp,esp
 00646227    add         esp,0FFFFFFF8
 0064622A    call        @BeforeDestruction
 0064622F    mov         byte ptr [ebp-5],dl
 00646232    mov         dword ptr [ebp-4],eax
 00646235    xor         edx,edx
 00646237    mov         eax,dword ptr [ebp-4]
 0064623A    mov         ecx,dword ptr [eax]
 0064623C    call        dword ptr [ecx+10];TCollectionItem.sub_006463F0
 0064623F    mov         dl,byte ptr [ebp-5]
 00646242    and         dl,0FC
 00646245    mov         eax,dword ptr [ebp-4]
 00646248    call        TPersistent.Destroy
 0064624D    cmp         byte ptr [ebp-5],0
>00646251    jle         0064625B
 00646253    mov         eax,dword ptr [ebp-4]
 00646256    call        @ClassDestroy
 0064625B    pop         ecx
 0064625C    pop         ecx
 0064625D    pop         ebp
 0064625E    ret
*}
end;

//00646260
{*procedure sub_00646260(?:TCollectionItem; ?:?);
begin
 00646260    push        ebp
 00646261    mov         ebp,esp
 00646263    add         esp,0FFFFFFF4
 00646266    mov         byte ptr [ebp-5],dl
 00646269    mov         dword ptr [ebp-4],eax
 0064626C    mov         eax,dword ptr [ebp-4]
 0064626F    cmp         dword ptr [eax+4],0;TCollectionItem.FCollection:TCollection
>00646273    je          006462A2
 00646275    mov         eax,dword ptr [ebp-4]
 00646278    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 0064627B    cmp         dword ptr [eax+0C],0;TCollection.FUpdateCount:Integer
>0064627F    jne         006462A2
 00646281    cmp         byte ptr [ebp-5],0
>00646285    je          0064628E
 00646287    xor         eax,eax
 00646289    mov         dword ptr [ebp-0C],eax
>0064628C    jmp         00646294
 0064628E    mov         eax,dword ptr [ebp-4]
 00646291    mov         dword ptr [ebp-0C],eax
 00646294    mov         edx,dword ptr [ebp-0C]
 00646297    mov         eax,dword ptr [ebp-4]
 0064629A    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 0064629D    mov         ecx,dword ptr [eax]
 0064629F    call        dword ptr [ecx+1C];TCollection.sub_00646B1C
 006462A2    mov         esp,ebp
 006462A4    pop         ebp
 006462A5    ret
end;*}

//006462A8
{*function sub_006462A8(?:TCollectionItem):?;
begin
 006462A8    push        ebp
 006462A9    mov         ebp,esp
 006462AB    add         esp,0FFFFFFF8
 006462AE    mov         dword ptr [ebp-4],eax
 006462B1    mov         eax,dword ptr [ebp-4]
 006462B4    cmp         dword ptr [eax+4],0;TCollectionItem.FCollection:TCollection
>006462B8    je          006462D0
 006462BA    mov         eax,dword ptr [ebp-4]
 006462BD    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 006462C0    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 006462C3    mov         edx,dword ptr [ebp-4]
 006462C6    call        TList.IndexOf
 006462CB    mov         dword ptr [ebp-8],eax
>006462CE    jmp         006462D7
 006462D0    mov         dword ptr [ebp-8],0FFFFFFFF
 006462D7    mov         eax,dword ptr [ebp-8]
 006462DA    pop         ecx
 006462DB    pop         ecx
 006462DC    pop         ebp
 006462DD    ret
end;*}

//006462E0
{*procedure sub_006462E0(?:?);
begin
 006462E0    push        ebp
 006462E1    mov         ebp,esp
 006462E3    add         esp,0FFFFFEF8
 006462E9    mov         dword ptr [ebp-8],edx
 006462EC    mov         dword ptr [ebp-4],eax
 006462EF    lea         edx,[ebp-108]
 006462F5    mov         eax,dword ptr [ebp-4]
 006462F8    mov         eax,dword ptr [eax]
 006462FA    call        TObject.ClassName
 006462FF    lea         edx,[ebp-108]
 00646305    mov         eax,dword ptr [ebp-8]
 00646308    call        @LStrFromString
 0064630D    mov         esp,ebp
 0064630F    pop         ebp
 00646310    ret
end;*}

//00646314
{*procedure TCollectionItem.sub_00645F04(?:?);
begin
 00646314    push        ebp
 00646315    mov         ebp,esp
 00646317    add         esp,0FFFFFEE4
 0064631D    push        esi
 0064631E    xor         ecx,ecx
 00646320    mov         dword ptr [ebp-1C],ecx
 00646323    mov         dword ptr [ebp-8],edx
 00646326    mov         dword ptr [ebp-4],eax
 00646329    xor         eax,eax
 0064632B    push        ebp
 0064632C    push        6463B7
 00646331    push        dword ptr fs:[eax]
 00646334    mov         dword ptr fs:[eax],esp
 00646337    mov         eax,dword ptr [ebp-4]
 0064633A    cmp         dword ptr [eax+4],0;TCollectionItem.FCollection:TCollection
>0064633E    je          00646383
 00646340    mov         eax,dword ptr [ebp-8]
 00646343    push        eax
 00646344    lea         edx,[ebp-1C]
 00646347    mov         eax,dword ptr [ebp-4]
 0064634A    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 0064634D    mov         si,0FFFE
 00646351    call        @CallDynaInst;TCollection.sub_00645F04
 00646356    mov         eax,dword ptr [ebp-1C]
 00646359    mov         dword ptr [ebp-18],eax
 0064635C    mov         byte ptr [ebp-14],0B
 00646360    mov         eax,dword ptr [ebp-4]
 00646363    call        006462A8
 00646368    mov         dword ptr [ebp-10],eax
 0064636B    mov         byte ptr [ebp-0C],0
 0064636F    lea         edx,[ebp-18]
 00646372    mov         ecx,1
 00646377    mov         eax,6463CC;'%s[%d]'
 0064637C    call        00658FBC
>00646381    jmp         006463A1
 00646383    lea         edx,[ebp-11C]
 00646389    mov         eax,dword ptr [ebp-4]
 0064638C    mov         eax,dword ptr [eax]
 0064638E    call        TObject.ClassName
 00646393    lea         edx,[ebp-11C]
 00646399    mov         eax,dword ptr [ebp-8]
 0064639C    call        @LStrFromString
 006463A1    xor         eax,eax
 006463A3    pop         edx
 006463A4    pop         ecx
 006463A5    pop         ecx
 006463A6    mov         dword ptr fs:[eax],edx
 006463A9    push        6463BE
 006463AE    lea         eax,[ebp-1C]
 006463B1    call        @LStrClr
 006463B6    ret
>006463B7    jmp         @HandleFinally
>006463BC    jmp         006463AE
 006463BE    pop         esi
 006463BF    mov         esp,ebp
 006463C1    pop         ebp
 006463C2    ret
end;*}

//006463D4
procedure TCollectionItem.sub_00645FBC;
begin
{*
 006463D4    push        ebp
 006463D5    mov         ebp,esp
 006463D7    add         esp,0FFFFFFF8
 006463DA    mov         dword ptr [ebp-4],eax
 006463DD    mov         eax,dword ptr [ebp-4]
 006463E0    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 006463E3    mov         dword ptr [ebp-8],eax
 006463E6    mov         eax,dword ptr [ebp-8]
 006463E9    pop         ecx
 006463EA    pop         ecx
 006463EB    pop         ebp
 006463EC    ret
*}
end;

//006463F0
{*procedure sub_006463F0(?:?);
begin
 006463F0    push        ebp
 006463F1    mov         ebp,esp
 006463F3    add         esp,0FFFFFFF8
 006463F6    mov         dword ptr [ebp-8],edx
 006463F9    mov         dword ptr [ebp-4],eax
 006463FC    mov         eax,dword ptr [ebp-4]
 006463FF    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 00646402    cmp         eax,dword ptr [ebp-8]
>00646405    je          0064642F
 00646407    mov         eax,dword ptr [ebp-4]
 0064640A    cmp         dword ptr [eax+4],0;TCollectionItem.FCollection:TCollection
>0064640E    je          0064641E
 00646410    mov         edx,dword ptr [ebp-4]
 00646413    mov         eax,dword ptr [ebp-4]
 00646416    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 00646419    call        00646A98
 0064641E    cmp         dword ptr [ebp-8],0
>00646422    je          0064642F
 00646424    mov         edx,dword ptr [ebp-4]
 00646427    mov         eax,dword ptr [ebp-8]
 0064642A    call        00646A0C
 0064642F    pop         ecx
 00646430    pop         ecx
 00646431    pop         ebp
 00646432    ret
end;*}

//00646434
{*procedure sub_00646434(?:?);
begin
 00646434    push        ebp
 00646435    mov         ebp,esp
 00646437    add         esp,0FFFFFFF8
 0064643A    mov         dword ptr [ebp-8],edx
 0064643D    mov         dword ptr [ebp-4],eax
 00646440    xor         edx,edx
 00646442    mov         eax,dword ptr [ebp-4]
 00646445    call        00646260
 0064644A    pop         ecx
 0064644B    pop         ecx
 0064644C    pop         ebp
 0064644D    ret
end;*}

//00646450
{*procedure sub_00646450(?:?);
begin
 00646450    push        ebp
 00646451    mov         ebp,esp
 00646453    add         esp,0FFFFFFF4
 00646456    mov         dword ptr [ebp-8],edx
 00646459    mov         dword ptr [ebp-4],eax
 0064645C    mov         eax,dword ptr [ebp-4]
 0064645F    call        006462A8
 00646464    mov         dword ptr [ebp-0C],eax
 00646467    cmp         dword ptr [ebp-0C],0
>0064646B    jl          00646493
 0064646D    mov         eax,dword ptr [ebp-0C]
 00646470    cmp         eax,dword ptr [ebp-8]
>00646473    je          00646493
 00646475    mov         eax,dword ptr [ebp-4]
 00646478    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 0064647B    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 0064647E    mov         ecx,dword ptr [ebp-8]
 00646481    mov         edx,dword ptr [ebp-0C]
 00646484    call        00645260
 00646489    mov         dl,1
 0064648B    mov         eax,dword ptr [ebp-4]
 0064648E    call        00646260
 00646493    mov         esp,ebp
 00646495    pop         ebp
 00646496    ret
end;*}

//00646498
constructor TCollection.Create;
begin
{*
 00646498    push        ebp
 00646499    mov         ebp,esp
 0064649B    add         esp,0FFFFFFF4
 0064649E    test        dl,dl
>006464A0    je          006464AA
 006464A2    add         esp,0FFFFFFF0
 006464A5    call        @ClassCreate
 006464AA    mov         dword ptr [ebp-0C],ecx
 006464AD    mov         byte ptr [ebp-5],dl
 006464B0    mov         dword ptr [ebp-4],eax
 006464B3    mov         eax,dword ptr [ebp-4]
 006464B6    mov         edx,dword ptr [ebp-0C]
 006464B9    mov         dword ptr [eax+4],edx;TCollection.FItemClass:TCollectionItemClass
 006464BC    mov         dl,1
 006464BE    mov         eax,[006422A4];TList
 006464C3    call        TObject.Create;TList.Create
 006464C8    mov         edx,dword ptr [ebp-4]
 006464CB    mov         dword ptr [edx+8],eax;TCollection.FItems:TList
 006464CE    xor         ecx,ecx
 006464D0    mov         edx,dword ptr [ebp-4]
 006464D3    mov         eax,dword ptr [ebp-4]
 006464D6    call        00646170
 006464DB    mov         eax,dword ptr [ebp-4]
 006464DE    cmp         byte ptr [ebp-5],0
>006464E2    je          006464F3
 006464E4    call        @AfterConstruction
 006464E9    pop         dword ptr fs:[0]
 006464F0    add         esp,0C
 006464F3    mov         eax,dword ptr [ebp-4]
 006464F6    mov         esp,ebp
 006464F8    pop         ebp
 006464F9    ret
*}
end;

//006464FC
destructor TCollection.Destroy;
begin
{*
 006464FC    push        ebp
 006464FD    mov         ebp,esp
 006464FF    add         esp,0FFFFFFF8
 00646502    call        @BeforeDestruction
 00646507    mov         byte ptr [ebp-5],dl
 0064650A    mov         dword ptr [ebp-4],eax
 0064650D    mov         eax,dword ptr [ebp-4]
 00646510    mov         dword ptr [eax+0C],1;TCollection.FUpdateCount:Integer
 00646517    mov         eax,dword ptr [ebp-4]
 0064651A    cmp         dword ptr [eax+8],0;TCollection.FItems:TList
>0064651E    je          00646528
 00646520    mov         eax,dword ptr [ebp-4]
 00646523    call        TCollection.Clear
 00646528    mov         cl,1
 0064652A    mov         edx,dword ptr [ebp-4]
 0064652D    mov         eax,dword ptr [ebp-4]
 00646530    call        00646170
 00646535    mov         eax,dword ptr [ebp-4]
 00646538    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 0064653B    call        TObject.Free
 00646540    mov         dl,byte ptr [ebp-5]
 00646543    and         dl,0FC
 00646546    mov         eax,dword ptr [ebp-4]
 00646549    call        TPersistent.Destroy
 0064654E    cmp         byte ptr [ebp-5],0
>00646552    jle         0064655C
 00646554    mov         eax,dword ptr [ebp-4]
 00646557    call        @ClassDestroy
 0064655C    pop         ecx
 0064655D    pop         ecx
 0064655E    pop         ebp
 0064655F    ret
*}
end;

//00646560
{*function sub_00646560(?:TCollection):?;
begin
 00646560    push        ebp
 00646561    mov         ebp,esp
 00646563    add         esp,0FFFFFFF8
 00646566    mov         dword ptr [ebp-4],eax
 00646569    mov         ecx,dword ptr [ebp-4]
 0064656C    mov         dl,1
 0064656E    mov         eax,dword ptr [ebp-4]
 00646571    mov         eax,dword ptr [eax+4]
 00646574    call        dword ptr [eax+1C]
 00646577    mov         dword ptr [ebp-8],eax
 0064657A    lea         edx,[ebp-8]
 0064657D    mov         eax,dword ptr [ebp-4]
 00646580    mov         ecx,dword ptr [eax]
 00646582    call        dword ptr [ecx+0C]
 00646585    mov         eax,dword ptr [ebp-8]
 00646588    pop         ecx
 00646589    pop         ecx
 0064658A    pop         ebp
 0064658B    ret
end;*}

//0064658C
procedure TCollection.Assign(Source:TPersistent);
begin
{*
 0064658C    push        ebp
 0064658D    mov         ebp,esp
 0064658F    add         esp,0FFFFFFF0
 00646592    mov         dword ptr [ebp-8],edx
 00646595    mov         dword ptr [ebp-4],eax
 00646598    mov         eax,dword ptr [ebp-8]
 0064659B    mov         edx,dword ptr ds:[6425DC];TCollection
 006465A1    call        @IsClass
 006465A6    test        al,al
>006465A8    je          0064661F
 006465AA    mov         eax,dword ptr [ebp-4]
 006465AD    mov         edx,dword ptr [eax]
 006465AF    call        dword ptr [edx+20];TCollection.sub_00646630
 006465B2    xor         eax,eax
 006465B4    push        ebp
 006465B5    push        646618
 006465BA    push        dword ptr fs:[eax]
 006465BD    mov         dword ptr fs:[eax],esp
 006465C0    mov         eax,dword ptr [ebp-4]
 006465C3    call        TCollection.Clear
 006465C8    mov         eax,dword ptr [ebp-8]
 006465CB    call        00646794
 006465D0    dec         eax
 006465D1    test        eax,eax
>006465D3    jl          00646602
 006465D5    inc         eax
 006465D6    mov         dword ptr [ebp-10],eax
 006465D9    mov         dword ptr [ebp-0C],0
 006465E0    mov         edx,dword ptr [ebp-0C]
 006465E3    mov         eax,dword ptr [ebp-8]
 006465E6    call        006467B0
 006465EB    push        eax
 006465EC    mov         eax,dword ptr [ebp-4]
 006465EF    call        00646560
 006465F4    pop         edx
 006465F5    mov         ecx,dword ptr [eax]
 006465F7    call        dword ptr [ecx+8]
 006465FA    inc         dword ptr [ebp-0C]
 006465FD    dec         dword ptr [ebp-10]
>00646600    jne         006465E0
 00646602    xor         eax,eax
 00646604    pop         edx
 00646605    pop         ecx
 00646606    pop         ecx
 00646607    mov         dword ptr fs:[eax],edx
 0064660A    push        64662A
 0064660F    mov         eax,dword ptr [ebp-4]
 00646612    mov         edx,dword ptr [eax]
 00646614    call        dword ptr [edx+24];TCollection.sub_006466C8
 00646617    ret
>00646618    jmp         @HandleFinally
>0064661D    jmp         0064660F
 0064661F    mov         edx,dword ptr [ebp-8]
 00646622    mov         eax,dword ptr [ebp-4]
 00646625    call        TPersistent.Assign
 0064662A    mov         esp,ebp
 0064662C    pop         ebp
 0064662D    ret
*}
end;

//00646630
procedure sub_00646630;
begin
{*
 00646630    push        ebp
 00646631    mov         ebp,esp
 00646633    push        ecx
 00646634    mov         dword ptr [ebp-4],eax
 00646637    mov         eax,dword ptr [ebp-4]
 0064663A    inc         dword ptr [eax+0C];TCollection.FUpdateCount:Integer
 0064663D    pop         ecx
 0064663E    pop         ebp
 0064663F    ret
*}
end;

//00646640
procedure sub_00646640(?:TCollection);
begin
{*
 00646640    push        ebp
 00646641    mov         ebp,esp
 00646643    push        ecx
 00646644    mov         dword ptr [ebp-4],eax
 00646647    mov         eax,dword ptr [ebp-4]
 0064664A    cmp         dword ptr [eax+0C],0
>0064664E    jne         0064665A
 00646650    xor         edx,edx
 00646652    mov         eax,dword ptr [ebp-4]
 00646655    mov         ecx,dword ptr [eax]
 00646657    call        dword ptr [ecx+1C]
 0064665A    pop         ecx
 0064665B    pop         ebp
 0064665C    ret
*}
end;

//00646660
procedure TCollection.Clear;
begin
{*
 00646660    push        ebp
 00646661    mov         ebp,esp
 00646663    push        ecx
 00646664    mov         dword ptr [ebp-4],eax
 00646667    mov         eax,dword ptr [ebp-4]
 0064666A    mov         eax,dword ptr [eax+8]
 0064666D    cmp         dword ptr [eax+8],0
>00646671    jle         006466C4
 00646673    mov         eax,dword ptr [ebp-4]
 00646676    mov         edx,dword ptr [eax]
 00646678    call        dword ptr [edx+20]
 0064667B    xor         eax,eax
 0064667D    push        ebp
 0064667E    push        6466BD
 00646683    push        dword ptr fs:[eax]
 00646686    mov         dword ptr fs:[eax],esp
>00646689    jmp         0064669B
 0064668B    mov         eax,dword ptr [ebp-4]
 0064668E    mov         eax,dword ptr [eax+8]
 00646691    call        0064523C
 00646696    call        TObject.Free
 0064669B    mov         eax,dword ptr [ebp-4]
 0064669E    mov         eax,dword ptr [eax+8]
 006466A1    cmp         dword ptr [eax+8],0
>006466A5    jg          0064668B
 006466A7    xor         eax,eax
 006466A9    pop         edx
 006466AA    pop         ecx
 006466AB    pop         ecx
 006466AC    mov         dword ptr fs:[eax],edx
 006466AF    push        6466C4
 006466B4    mov         eax,dword ptr [ebp-4]
 006466B7    mov         edx,dword ptr [eax]
 006466B9    call        dword ptr [edx+24]
 006466BC    ret
>006466BD    jmp         @HandleFinally
>006466C2    jmp         006466B4
 006466C4    pop         ecx
 006466C5    pop         ebp
 006466C6    ret
*}
end;

//006466C8
procedure sub_006466C8;
begin
{*
 006466C8    push        ebp
 006466C9    mov         ebp,esp
 006466CB    push        ecx
 006466CC    mov         dword ptr [ebp-4],eax
 006466CF    mov         eax,dword ptr [ebp-4]
 006466D2    dec         dword ptr [eax+0C];TCollection.FUpdateCount:Integer
 006466D5    mov         eax,dword ptr [ebp-4]
 006466D8    call        00646640
 006466DD    pop         ecx
 006466DE    pop         ebp
 006466DF    ret
*}
end;

//006466E0
{*function sub_006466E0(?:?; ?:?):?;
begin
 006466E0    push        ebp
 006466E1    mov         ebp,esp
 006466E3    add         esp,0FFFFFFEC
 006466E6    mov         dword ptr [ebp-8],edx
 006466E9    mov         dword ptr [ebp-4],eax
 006466EC    mov         eax,dword ptr [ebp-4]
 006466EF    mov         eax,dword ptr [eax+8]
 006466F2    mov         eax,dword ptr [eax+8]
 006466F5    dec         eax
 006466F6    test        eax,eax
>006466F8    jl          00646729
 006466FA    inc         eax
 006466FB    mov         dword ptr [ebp-14],eax
 006466FE    mov         dword ptr [ebp-10],0
 00646705    mov         eax,dword ptr [ebp-4]
 00646708    mov         eax,dword ptr [eax+8]
 0064670B    mov         edx,dword ptr [ebp-10]
 0064670E    call        TList.Get
 00646713    mov         dword ptr [ebp-0C],eax
 00646716    mov         eax,dword ptr [ebp-0C]
 00646719    mov         eax,dword ptr [eax+8]
 0064671C    cmp         eax,dword ptr [ebp-8]
>0064671F    je          0064672E
 00646721    inc         dword ptr [ebp-10]
 00646724    dec         dword ptr [ebp-14]
>00646727    jne         00646705
 00646729    xor         eax,eax
 0064672B    mov         dword ptr [ebp-0C],eax
 0064672E    mov         eax,dword ptr [ebp-0C]
 00646731    mov         esp,ebp
 00646733    pop         ebp
 00646734    ret
end;*}

//00646738
procedure TCollection.sub_00646738;
begin
{*
 00646738    push        ebp
 00646739    mov         ebp,esp
 0064673B    add         esp,0FFFFFFF8
 0064673E    mov         dword ptr [ebp-4],eax
 00646741    xor         eax,eax
 00646743    mov         dword ptr [ebp-8],eax
 00646746    mov         eax,dword ptr [ebp-8]
 00646749    pop         ecx
 0064674A    pop         ecx
 0064674B    pop         ebp
 0064674C    ret
*}
end;

//00646750
{*procedure TCollection.sub_00646750(?:?; ?:?);
begin
 00646750    push        ebp
 00646751    mov         ebp,esp
 00646753    add         esp,0FFFFFFF4
 00646756    mov         dword ptr [ebp-8],ecx
 00646759    mov         dword ptr [ebp-0C],edx
 0064675C    mov         dword ptr [ebp-4],eax
 0064675F    mov         eax,dword ptr [ebp-8]
 00646762    call        @LStrClr
 00646767    mov         esp,ebp
 00646769    pop         ebp
 0064676A    ret
end;*}

//0064676C
{*procedure TCollection.sub_0064676C(?:?; ?:?; ?:?);
begin
 0064676C    push        ebp
 0064676D    mov         ebp,esp
 0064676F    add         esp,0FFFFFFF4
 00646772    mov         dword ptr [ebp-8],ecx
 00646775    mov         dword ptr [ebp-0C],edx
 00646778    mov         dword ptr [ebp-4],eax
 0064677B    mov         edx,dword ptr [ebp-8]
 0064677E    mov         eax,dword ptr [ebp-4]
 00646781    call        006467B0
 00646786    mov         edx,dword ptr [ebp+8]
 00646789    mov         ecx,dword ptr [eax]
 0064678B    call        dword ptr [ecx+0C]
 0064678E    mov         esp,ebp
 00646790    pop         ebp
 00646791    ret         4
end;*}

//00646794
{*function sub_00646794(?:TPersistent):?;
begin
 00646794    push        ebp
 00646795    mov         ebp,esp
 00646797    add         esp,0FFFFFFF8
 0064679A    mov         dword ptr [ebp-4],eax
 0064679D    mov         eax,dword ptr [ebp-4]
 006467A0    mov         eax,dword ptr [eax+8]
 006467A3    mov         eax,dword ptr [eax+8]
 006467A6    mov         dword ptr [ebp-8],eax
 006467A9    mov         eax,dword ptr [ebp-8]
 006467AC    pop         ecx
 006467AD    pop         ecx
 006467AE    pop         ebp
 006467AF    ret
end;*}

//006467B0
{*function sub_006467B0(?:TPersistent; ?:?):?;
begin
 006467B0    push        ebp
 006467B1    mov         ebp,esp
 006467B3    add         esp,0FFFFFFF4
 006467B6    mov         dword ptr [ebp-8],edx
 006467B9    mov         dword ptr [ebp-4],eax
 006467BC    mov         edx,dword ptr [ebp-8]
 006467BF    mov         eax,dword ptr [ebp-4]
 006467C2    mov         eax,dword ptr [eax+8]
 006467C5    call        TList.Get
 006467CA    mov         dword ptr [ebp-0C],eax
 006467CD    mov         eax,dword ptr [ebp-0C]
 006467D0    mov         esp,ebp
 006467D2    pop         ebp
 006467D3    ret
end;*}

//006467D4
{*procedure TCollection.sub_00645F04(?:?);
begin
 006467D4    push        ebp
 006467D5    mov         ebp,esp
 006467D7    add         esp,0FFFFFEF0
 006467DD    push        esi
 006467DE    xor         ecx,ecx
 006467E0    mov         dword ptr [ebp-0C],ecx
 006467E3    mov         dword ptr [ebp-10],ecx
 006467E6    mov         dword ptr [ebp-8],edx
 006467E9    mov         dword ptr [ebp-4],eax
 006467EC    xor         eax,eax
 006467EE    push        ebp
 006467EF    push        64688A
 006467F4    push        dword ptr fs:[eax]
 006467F7    mov         dword ptr fs:[eax],esp
 006467FA    lea         edx,[ebp-110]
 00646800    mov         eax,dword ptr [ebp-4]
 00646803    mov         eax,dword ptr [eax]
 00646805    call        TObject.ClassName
 0064680A    lea         edx,[ebp-110]
 00646810    mov         eax,dword ptr [ebp-8]
 00646813    call        @LStrFromString
 00646818    mov         eax,dword ptr [ebp-4]
 0064681B    mov         si,0FFFF
 0064681F    call        @CallDynaInst;TPersistent.sub_00645FBC
 00646824    test        eax,eax
>00646826    je          0064686F
 00646828    mov         eax,dword ptr [ebp-4]
 0064682B    mov         si,0FFFF
 0064682F    call        @CallDynaInst;TPersistent.sub_00645FBC
 00646834    lea         edx,[ebp-0C]
 00646837    mov         si,0FFFE
 0064683B    call        @CallDynaInst
 00646840    cmp         dword ptr [ebp-0C],0
>00646844    je          0064686F
 00646846    lea         edx,[ebp-10]
 00646849    mov         eax,dword ptr [ebp-4]
 0064684C    call        006468A4
 00646851    cmp         dword ptr [ebp-10],0
>00646855    je          0064686F
 00646857    push        dword ptr [ebp-0C]
 0064685A    push        6468A0;'.'
 0064685F    push        dword ptr [ebp-10]
 00646862    mov         eax,dword ptr [ebp-8]
 00646865    mov         edx,3
 0064686A    call        @LStrCatN
 0064686F    xor         eax,eax
 00646871    pop         edx
 00646872    pop         ecx
 00646873    pop         ecx
 00646874    mov         dword ptr fs:[eax],edx
 00646877    push        646891
 0064687C    lea         eax,[ebp-10]
 0064687F    mov         edx,2
 00646884    call        @LStrArrayClr
 00646889    ret
>0064688A    jmp         @HandleFinally
>0064688F    jmp         0064687C
 00646891    pop         esi
 00646892    mov         esp,ebp
 00646894    pop         ebp
 00646895    ret
end;*}

//006468A4
{*procedure sub_006468A4(?:TCollection; ?:?);
begin
 006468A4    push        ebp
 006468A5    mov         ebp,esp
 006468A7    add         esp,0FFFFFFE0
 006468AA    push        esi
 006468AB    mov         dword ptr [ebp-8],edx
 006468AE    mov         dword ptr [ebp-4],eax
 006468B1    mov         eax,dword ptr [ebp-8]
 006468B4    mov         edx,dword ptr [ebp-4]
 006468B7    mov         edx,dword ptr [edx+14];TCollection.FPropName:String
 006468BA    call        @LStrAsg
 006468BF    mov         eax,dword ptr [ebp-4]
 006468C2    mov         si,0FFFF
 006468C6    call        @CallDynaInst;TPersistent.sub_00645FBC
 006468CB    mov         dword ptr [ebp-18],eax
 006468CE    mov         eax,dword ptr [ebp-8]
 006468D1    cmp         dword ptr [eax],0
>006468D4    jne         006469DB
 006468DA    cmp         dword ptr [ebp-18],0
>006468DE    je          006469DB
 006468E4    mov         eax,dword ptr [ebp-18]
 006468E7    mov         eax,dword ptr [eax]
 006468E9    call        0066BB00
 006468EE    test        eax,eax
>006468F0    je          006469DB
 006468F6    mov         eax,dword ptr [ebp-18]
 006468F9    mov         eax,dword ptr [eax]
 006468FB    call        0066BB00
 00646900    call        GetTypeData
 00646905    mov         dword ptr [ebp-14],eax
 00646908    cmp         dword ptr [ebp-14],0
>0064690C    je          006469DB
 00646912    mov         eax,dword ptr [ebp-14]
 00646915    cmp         word ptr [eax+8],0
>0064691A    je          006469DB
 00646920    mov         eax,dword ptr [ebp-14]
 00646923    movsx       eax,word ptr [eax+8]
 00646927    shl         eax,2
 0064692A    call        @GetMem
 0064692F    mov         dword ptr [ebp-10],eax
 00646932    xor         eax,eax
 00646934    push        ebp
 00646935    push        6469C6
 0064693A    push        dword ptr fs:[eax]
 0064693D    mov         dword ptr fs:[eax],esp
 00646940    mov         eax,dword ptr [ebp-18]
 00646943    mov         eax,dword ptr [eax]
 00646945    call        0066BB00
 0064694A    mov         edx,dword ptr [ebp-10]
 0064694D    call        GetPropInfos
 00646952    mov         eax,dword ptr [ebp-14]
 00646955    movsx       eax,word ptr [eax+8]
 00646959    dec         eax
 0064695A    test        eax,eax
>0064695C    jl          006469B0
 0064695E    inc         eax
 0064695F    mov         dword ptr [ebp-1C],eax
 00646962    mov         dword ptr [ebp-0C],0
 00646969    mov         eax,dword ptr [ebp-10]
 0064696C    mov         edx,dword ptr [ebp-0C]
 0064696F    mov         eax,dword ptr [eax+edx*4]
 00646972    mov         dword ptr [ebp-20],eax
 00646975    mov         eax,dword ptr [ebp-20]
 00646978    mov         eax,dword ptr [eax]
 0064697A    mov         eax,dword ptr [eax]
 0064697C    cmp         byte ptr [eax],7
>0064697F    jne         006469A8
 00646981    mov         eax,dword ptr [ebp-10]
 00646984    mov         edx,dword ptr [ebp-0C]
 00646987    mov         edx,dword ptr [eax+edx*4]
 0064698A    mov         eax,dword ptr [ebp-18]
 0064698D    call        GetOrdProp
 00646992    cmp         eax,dword ptr [ebp-4]
>00646995    jne         006469A8
 00646997    mov         eax,dword ptr [ebp-4]
 0064699A    add         eax,14;TCollection.FPropName:String
 0064699D    mov         edx,dword ptr [ebp-20]
 006469A0    add         edx,1A
 006469A3    call        @LStrFromString
 006469A8    inc         dword ptr [ebp-0C]
 006469AB    dec         dword ptr [ebp-1C]
>006469AE    jne         00646969
 006469B0    xor         eax,eax
 006469B2    pop         edx
 006469B3    pop         ecx
 006469B4    pop         ecx
 006469B5    mov         dword ptr fs:[eax],edx
 006469B8    push        6469CD
 006469BD    mov         eax,dword ptr [ebp-10]
 006469C0    call        @FreeMem
 006469C5    ret
>006469C6    jmp         @HandleFinally
>006469CB    jmp         006469BD
 006469CD    mov         eax,dword ptr [ebp-8]
 006469D0    mov         edx,dword ptr [ebp-4]
 006469D3    mov         edx,dword ptr [edx+14];TCollection.FPropName:String
 006469D6    call        @LStrAsg
 006469DB    pop         esi
 006469DC    mov         esp,ebp
 006469DE    pop         ebp
 006469DF    ret
end;*}

//006469E0
{*function sub_006469E0(?:?; ?:?):?;
begin
 006469E0    push        ebp
 006469E1    mov         ebp,esp
 006469E3    add         esp,0FFFFFFF4
 006469E6    mov         dword ptr [ebp-8],edx
 006469E9    mov         dword ptr [ebp-4],eax
 006469EC    mov         eax,dword ptr [ebp-4]
 006469EF    call        00646560
 006469F4    mov         dword ptr [ebp-0C],eax
 006469F7    mov         edx,dword ptr [ebp-8]
 006469FA    mov         eax,dword ptr [ebp-0C]
 006469FD    mov         ecx,dword ptr [eax]
 006469FF    call        dword ptr [ecx+14]
 00646A02    mov         eax,dword ptr [ebp-0C]
 00646A05    mov         esp,ebp
 00646A07    pop         ebp
 00646A08    ret
end;*}

//00646A0C
{*procedure sub_00646A0C(?:?; ?:TCollectionItem);
begin
 00646A0C    push        ebp
 00646A0D    mov         ebp,esp
 00646A0F    add         esp,0FFFFFFF8
 00646A12    push        ebx
 00646A13    mov         dword ptr [ebp-8],edx
 00646A16    mov         dword ptr [ebp-4],eax
 00646A19    mov         eax,dword ptr [ebp-8]
 00646A1C    mov         edx,dword ptr [ebp-4]
 00646A1F    mov         edx,dword ptr [edx+4]
 00646A22    call        @IsClass
 00646A27    test        al,al
>00646A29    jne         00646A3D
 00646A2B    mov         edx,dword ptr ds:[6EA094];^gvar_0065501C
 00646A31    xor         ecx,ecx
 00646A33    mov         eax,[006422A4];TList
 00646A38    call        00644F60
 00646A3D    mov         edx,dword ptr [ebp-8]
 00646A40    mov         eax,dword ptr [ebp-4]
 00646A43    mov         eax,dword ptr [eax+8]
 00646A46    call        TList.Add
 00646A4B    mov         eax,dword ptr [ebp-4]
 00646A4E    mov         edx,dword ptr [ebp-8]
 00646A51    mov         dword ptr [edx+4],eax;TCollectionItem.FCollection:TCollection
 00646A54    mov         eax,dword ptr [ebp-4]
 00646A57    mov         eax,dword ptr [eax+10]
 00646A5A    mov         edx,dword ptr [ebp-8]
 00646A5D    mov         dword ptr [edx+8],eax;TCollectionItem.FID:Integer
 00646A60    mov         eax,dword ptr [ebp-4]
 00646A63    inc         dword ptr [eax+10]
 00646A66    mov         edx,dword ptr [ebp-8]
 00646A69    mov         eax,dword ptr [ebp-4]
 00646A6C    mov         ecx,dword ptr [eax]
 00646A6E    call        dword ptr [ecx+18]
 00646A71    xor         ecx,ecx
 00646A73    mov         edx,dword ptr [ebp-8]
 00646A76    mov         eax,dword ptr [ebp-4]
 00646A79    mov         ebx,dword ptr [eax]
 00646A7B    call        dword ptr [ebx+14]
 00646A7E    mov         eax,dword ptr [ebp-4]
 00646A81    call        00646640
 00646A86    xor         ecx,ecx
 00646A88    mov         edx,dword ptr [ebp-8]
 00646A8B    mov         eax,dword ptr [ebp-4]
 00646A8E    call        00646170
 00646A93    pop         ebx
 00646A94    pop         ecx
 00646A95    pop         ecx
 00646A96    pop         ebp
 00646A97    ret
end;*}

//00646A98
procedure sub_00646A98(?:TCollection; ?:TCollectionItem);
begin
{*
 00646A98    push        ebp
 00646A99    mov         ebp,esp
 00646A9B    add         esp,0FFFFFFF8
 00646A9E    push        ebx
 00646A9F    mov         dword ptr [ebp-8],edx
 00646AA2    mov         dword ptr [ebp-4],eax
 00646AA5    mov         cl,1
 00646AA7    mov         edx,dword ptr [ebp-8]
 00646AAA    mov         eax,dword ptr [ebp-4]
 00646AAD    mov         ebx,dword ptr [eax]
 00646AAF    call        dword ptr [ebx+14];TCollection.sub_00646BB0
 00646AB2    mov         eax,dword ptr [ebp-4]
 00646AB5    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00646AB8    call        0064523C
 00646ABD    cmp         eax,dword ptr [ebp-8]
>00646AC0    jne         00646AD9
 00646AC2    mov         eax,dword ptr [ebp-4]
 00646AC5    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00646AC8    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 00646ACB    dec         edx
 00646ACC    mov         eax,dword ptr [ebp-4]
 00646ACF    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00646AD2    call        TList.Delete
>00646AD7    jmp         00646AE7
 00646AD9    mov         edx,dword ptr [ebp-8]
 00646ADC    mov         eax,dword ptr [ebp-4]
 00646ADF    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00646AE2    call        TList.Remove
 00646AE7    mov         eax,dword ptr [ebp-8]
 00646AEA    xor         edx,edx
 00646AEC    mov         dword ptr [eax+4],edx;TCollectionItem.FCollection:TCollection
 00646AEF    mov         cl,1
 00646AF1    mov         edx,dword ptr [ebp-8]
 00646AF4    mov         eax,dword ptr [ebp-4]
 00646AF7    call        00646170
 00646AFC    mov         eax,dword ptr [ebp-4]
 00646AFF    call        00646640
 00646B04    pop         ebx
 00646B05    pop         ecx
 00646B06    pop         ecx
 00646B07    pop         ebp
 00646B08    ret
*}
end;

//00646B0C
{*procedure sub_00646B0C(?:?);
begin
 00646B0C    push        ebp
 00646B0D    mov         ebp,esp
 00646B0F    add         esp,0FFFFFFF8
 00646B12    mov         dword ptr [ebp-8],edx
 00646B15    mov         dword ptr [ebp-4],eax
 00646B18    pop         ecx
 00646B19    pop         ecx
 00646B1A    pop         ebp
 00646B1B    ret
end;*}

//00646B1C
{*procedure sub_00646B1C(?:?);
begin
 00646B1C    push        ebp
 00646B1D    mov         ebp,esp
 00646B1F    add         esp,0FFFFFFF8
 00646B22    mov         dword ptr [ebp-8],edx
 00646B25    mov         dword ptr [ebp-4],eax
 00646B28    pop         ecx
 00646B29    pop         ecx
 00646B2A    pop         ebp
 00646B2B    ret
end;*}

//00646B2C
{*procedure sub_00646B2C(?:TComboExItems; ?:?);
begin
 00646B2C    push        ebp
 00646B2D    mov         ebp,esp
 00646B2F    add         esp,0FFFFFFF8
 00646B32    push        ebx
 00646B33    mov         dword ptr [ebp-8],edx
 00646B36    mov         dword ptr [ebp-4],eax
 00646B39    mov         edx,dword ptr [ebp-8]
 00646B3C    mov         eax,dword ptr [ebp-4]
 00646B3F    mov         eax,dword ptr [eax+8];TComboExItems.FItems:TList
 00646B42    call        TList.Get
 00646B47    mov         edx,eax
 00646B49    mov         cl,2
 00646B4B    mov         eax,dword ptr [ebp-4]
 00646B4E    mov         ebx,dword ptr [eax]
 00646B50    call        dword ptr [ebx+14];TComboExItems.sub_00636D4C
 00646B53    mov         edx,dword ptr [ebp-8]
 00646B56    mov         eax,dword ptr [ebp-4]
 00646B59    mov         eax,dword ptr [eax+8];TComboExItems.FItems:TList
 00646B5C    call        TList.Get
 00646B61    call        TObject.Free
 00646B66    pop         ebx
 00646B67    pop         ecx
 00646B68    pop         ecx
 00646B69    pop         ebp
 00646B6A    ret
end;*}

//00646B6C
{*function sub_00646B6C(?:TComboExItems):?;
begin
 00646B6C    push        ebp
 00646B6D    mov         ebp,esp
 00646B6F    add         esp,0FFFFFFF8
 00646B72    push        esi
 00646B73    mov         dword ptr [ebp-4],eax
 00646B76    mov         eax,dword ptr [ebp-4]
 00646B79    mov         si,0FFFF
 00646B7D    call        @CallDynaInst;TOwnedCollection.sub_00645FBC
 00646B82    mov         dword ptr [ebp-8],eax
 00646B85    mov         eax,dword ptr [ebp-8]
 00646B88    pop         esi
 00646B89    pop         ecx
 00646B8A    pop         ecx
 00646B8B    pop         ebp
 00646B8C    ret
end;*}

//00646B90
{*procedure sub_00646B90(?:?);
begin
 00646B90    push        ebp
 00646B91    mov         ebp,esp
 00646B93    add         esp,0FFFFFFF8
 00646B96    mov         dword ptr [ebp-8],edx
 00646B99    mov         dword ptr [ebp-4],eax
 00646B9C    pop         ecx
 00646B9D    pop         ecx
 00646B9E    pop         ebp
 00646B9F    ret
end;*}

//00646BA0
{*procedure sub_00646BA0(?:?);
begin
 00646BA0    push        ebp
 00646BA1    mov         ebp,esp
 00646BA3    add         esp,0FFFFFFF8
 00646BA6    mov         dword ptr [ebp-8],edx
 00646BA9    mov         dword ptr [ebp-4],eax
 00646BAC    pop         ecx
 00646BAD    pop         ecx
 00646BAE    pop         ebp
 00646BAF    ret
end;*}

//00646BB0
{*procedure sub_00646BB0(?:?; ?:?);
begin
 00646BB0    push        ebp
 00646BB1    mov         ebp,esp
 00646BB3    add         esp,0FFFFFFF4
 00646BB6    mov         byte ptr [ebp-9],cl
 00646BB9    mov         dword ptr [ebp-8],edx
 00646BBC    mov         dword ptr [ebp-4],eax
 00646BBF    mov         al,byte ptr [ebp-9]
 00646BC2    sub         al,1
>00646BC4    jb          00646BCC
 00646BC6    dec         al
>00646BC8    je          00646BD9
>00646BCA    jmp         00646BE4
 00646BCC    lea         edx,[ebp-8]
 00646BCF    mov         eax,dword ptr [ebp-4]
 00646BD2    mov         ecx,dword ptr [eax]
 00646BD4    call        dword ptr [ecx+0C];TCollection.sub_00646B90
>00646BD7    jmp         00646BE4
 00646BD9    mov         edx,dword ptr [ebp-8]
 00646BDC    mov         eax,dword ptr [ebp-4]
 00646BDF    mov         ecx,dword ptr [eax]
 00646BE1    call        dword ptr [ecx+10];TCollection.sub_00646BA0
 00646BE4    mov         esp,ebp
 00646BE6    pop         ebp
 00646BE7    ret
end;*}

//00646BE8
{*constructor TWorkAreas.Create(?:?);
begin
 00646BE8    push        ebp
 00646BE9    mov         ebp,esp
 00646BEB    add         esp,0FFFFFFF4
 00646BEE    test        dl,dl
>00646BF0    je          00646BFA
 00646BF2    add         esp,0FFFFFFF0
 00646BF5    call        @ClassCreate
 00646BFA    mov         dword ptr [ebp-0C],ecx
 00646BFD    mov         byte ptr [ebp-5],dl
 00646C00    mov         dword ptr [ebp-4],eax
 00646C03    mov         eax,dword ptr [ebp-4]
 00646C06    mov         edx,dword ptr [ebp-0C]
 00646C09    mov         dword ptr [eax+18],edx;TOwnedCollection....FOwner:TPersistent
 00646C0C    mov         ecx,dword ptr [ebp+8]
 00646C0F    xor         edx,edx
 00646C11    mov         eax,dword ptr [ebp-4]
 00646C14    call        TCollection.Create
 00646C19    mov         eax,dword ptr [ebp-4]
 00646C1C    cmp         byte ptr [ebp-5],0
>00646C20    je          00646C31
 00646C22    call        @AfterConstruction
 00646C27    pop         dword ptr fs:[0]
 00646C2E    add         esp,0C
 00646C31    mov         eax,dword ptr [ebp-4]
 00646C34    mov         esp,ebp
 00646C36    pop         ebp
 00646C37    ret         4
end;*}

//00646C3C
procedure TOwnedCollection.sub_00645FBC;
begin
{*
 00646C3C    push        ebp
 00646C3D    mov         ebp,esp
 00646C3F    add         esp,0FFFFFFF8
 00646C42    mov         dword ptr [ebp-4],eax
 00646C45    mov         eax,dword ptr [ebp-4]
 00646C48    mov         eax,dword ptr [eax+18];TOwnedCollection.....FOwner:TPersistent
 00646C4B    mov         dword ptr [ebp-8],eax
 00646C4E    mov         eax,dword ptr [ebp-8]
 00646C51    pop         ecx
 00646C52    pop         ecx
 00646C53    pop         ebp
 00646C54    ret
*}
end;

//00646C58
destructor TStrings.Destroy;
begin
{*
 00646C58    push        ebp
 00646C59    mov         ebp,esp
 00646C5B    add         esp,0FFFFFFF8
 00646C5E    call        @BeforeDestruction
 00646C63    mov         byte ptr [ebp-5],dl
 00646C66    mov         dword ptr [ebp-4],eax
 00646C69    xor         edx,edx
 00646C6B    mov         eax,dword ptr [ebp-4]
 00646C6E    call        00647A50
 00646C73    mov         dl,byte ptr [ebp-5]
 00646C76    and         dl,0FC
 00646C79    mov         eax,dword ptr [ebp-4]
 00646C7C    call        TPersistent.Destroy
 00646C81    cmp         byte ptr [ebp-5],0
>00646C85    jle         00646C8F
 00646C87    mov         eax,dword ptr [ebp-4]
 00646C8A    call        @ClassDestroy
 00646C8F    pop         ecx
 00646C90    pop         ecx
 00646C91    pop         ebp
 00646C92    ret
*}
end;

//00646C94
{*function sub_00646C94(?:?):?;
begin
 00646C94    push        ebp
 00646C95    mov         ebp,esp
 00646C97    add         esp,0FFFFFFF4
 00646C9A    push        ebx
 00646C9B    mov         dword ptr [ebp-8],edx
 00646C9E    mov         dword ptr [ebp-4],eax
 00646CA1    mov         eax,dword ptr [ebp-4]
 00646CA4    mov         edx,dword ptr [eax]
 00646CA6    call        dword ptr [edx+14];@AbstractError
 00646CA9    mov         dword ptr [ebp-0C],eax
 00646CAC    mov         ecx,dword ptr [ebp-8]
 00646CAF    mov         edx,dword ptr [ebp-0C]
 00646CB2    mov         eax,dword ptr [ebp-4]
 00646CB5    mov         ebx,dword ptr [eax]
 00646CB7    call        dword ptr [ebx+60];@AbstractError
 00646CBA    mov         eax,dword ptr [ebp-0C]
 00646CBD    pop         ebx
 00646CBE    mov         esp,ebp
 00646CC0    pop         ebp
 00646CC1    ret
end;*}

//00646CC4
{*function sub_00646CC4(?:?; ?:?):?;
begin
 00646CC4    push        ebp
 00646CC5    mov         ebp,esp
 00646CC7    add         esp,0FFFFFFF0
 00646CCA    push        ebx
 00646CCB    mov         dword ptr [ebp-0C],ecx
 00646CCE    mov         dword ptr [ebp-8],edx
 00646CD1    mov         dword ptr [ebp-4],eax
 00646CD4    mov         edx,dword ptr [ebp-8]
 00646CD7    mov         eax,dword ptr [ebp-4]
 00646CDA    mov         ecx,dword ptr [eax]
 00646CDC    call        dword ptr [ecx+38];TStrings.sub_00646C94
 00646CDF    mov         dword ptr [ebp-10],eax
 00646CE2    mov         ecx,dword ptr [ebp-0C]
 00646CE5    mov         edx,dword ptr [ebp-10]
 00646CE8    mov         eax,dword ptr [ebp-4]
 00646CEB    mov         ebx,dword ptr [eax]
 00646CED    call        dword ptr [ebx+24];TStrings.sub_006478BC
 00646CF0    mov         eax,dword ptr [ebp-10]
 00646CF3    pop         ebx
 00646CF4    mov         esp,ebp
 00646CF6    pop         ebp
 00646CF7    ret
end;*}

//00646CF8
{*procedure sub_00646CF8(?:?; ?:?);
begin
 00646CF8    push        ebp
 00646CF9    mov         ebp,esp
 00646CFB    add         esp,0FFFFFFF8
 00646CFE    mov         dword ptr [ebp-8],edx
 00646D01    mov         dword ptr [ebp-4],eax
 00646D04    mov         edx,dword ptr [ebp-8]
 00646D07    mov         eax,dword ptr [ebp-4]
 00646D0A    mov         ecx,dword ptr [eax]
 00646D0C    call        dword ptr [ecx+38]
 00646D0F    pop         ecx
 00646D10    pop         ecx
 00646D11    pop         ebp
 00646D12    ret
end;*}

//00646D14
{*procedure sub_00646D14(?:?);
begin
 00646D14    push        ebp
 00646D15    mov         ebp,esp
 00646D17    add         esp,0FFFFFFEC
 00646D1A    push        ebx
 00646D1B    xor         ecx,ecx
 00646D1D    mov         dword ptr [ebp-14],ecx
 00646D20    mov         dword ptr [ebp-8],edx
 00646D23    mov         dword ptr [ebp-4],eax
 00646D26    xor         eax,eax
 00646D28    push        ebp
 00646D29    push        646DC5
 00646D2E    push        dword ptr fs:[eax]
 00646D31    mov         dword ptr fs:[eax],esp
 00646D34    mov         eax,dword ptr [ebp-4]
 00646D37    call        TStrings.BeginUpdate
 00646D3C    xor         eax,eax
 00646D3E    push        ebp
 00646D3F    push        646DA8
 00646D44    push        dword ptr fs:[eax]
 00646D47    mov         dword ptr fs:[eax],esp
 00646D4A    mov         eax,dword ptr [ebp-8]
 00646D4D    mov         edx,dword ptr [eax]
 00646D4F    call        dword ptr [edx+14]
 00646D52    dec         eax
 00646D53    test        eax,eax
>00646D55    jl          00646D92
 00646D57    inc         eax
 00646D58    mov         dword ptr [ebp-10],eax
 00646D5B    mov         dword ptr [ebp-0C],0
 00646D62    lea         ecx,[ebp-14]
 00646D65    mov         edx,dword ptr [ebp-0C]
 00646D68    mov         eax,dword ptr [ebp-8]
 00646D6B    mov         ebx,dword ptr [eax]
 00646D6D    call        dword ptr [ebx+0C]
 00646D70    mov         eax,dword ptr [ebp-14]
 00646D73    push        eax
 00646D74    mov         edx,dword ptr [ebp-0C]
 00646D77    mov         eax,dword ptr [ebp-8]
 00646D7A    mov         ecx,dword ptr [eax]
 00646D7C    call        dword ptr [ecx+18]
 00646D7F    mov         ecx,eax
 00646D81    mov         eax,dword ptr [ebp-4]
 00646D84    pop         edx
 00646D85    mov         ebx,dword ptr [eax]
 00646D87    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 00646D8A    inc         dword ptr [ebp-0C]
 00646D8D    dec         dword ptr [ebp-10]
>00646D90    jne         00646D62
 00646D92    xor         eax,eax
 00646D94    pop         edx
 00646D95    pop         ecx
 00646D96    pop         ecx
 00646D97    mov         dword ptr fs:[eax],edx
 00646D9A    push        646DAF
 00646D9F    mov         eax,dword ptr [ebp-4]
 00646DA2    call        TStrings.EndUpdate
 00646DA7    ret
>00646DA8    jmp         @HandleFinally
>00646DAD    jmp         00646D9F
 00646DAF    xor         eax,eax
 00646DB1    pop         edx
 00646DB2    pop         ecx
 00646DB3    pop         ecx
 00646DB4    mov         dword ptr fs:[eax],edx
 00646DB7    push        646DCC
 00646DBC    lea         eax,[ebp-14]
 00646DBF    call        @LStrClr
 00646DC4    ret
>00646DC5    jmp         @HandleFinally
>00646DCA    jmp         00646DBC
 00646DCC    pop         ebx
 00646DCD    mov         esp,ebp
 00646DCF    pop         ebp
 00646DD0    ret
end;*}

//00646DD4
procedure TStrings.Assign(Source:TPersistent);
begin
{*
 00646DD4    push        ebp
 00646DD5    mov         ebp,esp
 00646DD7    add         esp,0FFFFFFF8
 00646DDA    mov         dword ptr [ebp-8],edx
 00646DDD    mov         dword ptr [ebp-4],eax
 00646DE0    mov         eax,dword ptr [ebp-8]
 00646DE3    mov         edx,dword ptr ds:[6427A4];TStrings
 00646DE9    call        @IsClass
 00646DEE    test        al,al
>00646DF0    je          00646E5C
 00646DF2    mov         eax,dword ptr [ebp-4]
 00646DF5    call        TStrings.BeginUpdate
 00646DFA    xor         eax,eax
 00646DFC    push        ebp
 00646DFD    push        646E55
 00646E02    push        dword ptr fs:[eax]
 00646E05    mov         dword ptr fs:[eax],esp
 00646E08    mov         eax,dword ptr [ebp-4]
 00646E0B    mov         edx,dword ptr [eax]
 00646E0D    call        dword ptr [edx+44];TStrings.Clear
 00646E10    mov         eax,dword ptr [ebp-8]
 00646E13    mov         al,byte ptr [eax+4]
 00646E16    mov         edx,dword ptr [ebp-4]
 00646E19    mov         byte ptr [edx+4],al;TStrings.FDefined:TStringsDefined
 00646E1C    mov         eax,dword ptr [ebp-8]
 00646E1F    mov         al,byte ptr [eax+6]
 00646E22    mov         edx,dword ptr [ebp-4]
 00646E25    mov         byte ptr [edx+6],al;TStrings.FQuoteChar:Char
 00646E28    mov         eax,dword ptr [ebp-8]
 00646E2B    mov         al,byte ptr [eax+5]
 00646E2E    mov         edx,dword ptr [ebp-4]
 00646E31    mov         byte ptr [edx+5],al;TStrings.FDelimiter:Char
 00646E34    mov         edx,dword ptr [ebp-8]
 00646E37    mov         eax,dword ptr [ebp-4]
 00646E3A    mov         ecx,dword ptr [eax]
 00646E3C    call        dword ptr [ecx+40];TStrings.sub_00646D14
 00646E3F    xor         eax,eax
 00646E41    pop         edx
 00646E42    pop         ecx
 00646E43    pop         ecx
 00646E44    mov         dword ptr fs:[eax],edx
 00646E47    push        646E67
 00646E4C    mov         eax,dword ptr [ebp-4]
 00646E4F    call        TStrings.EndUpdate
 00646E54    ret
>00646E55    jmp         @HandleFinally
>00646E5A    jmp         00646E4C
 00646E5C    mov         edx,dword ptr [ebp-8]
 00646E5F    mov         eax,dword ptr [ebp-4]
 00646E62    call        TPersistent.Assign
 00646E67    pop         ecx
 00646E68    pop         ecx
 00646E69    pop         ebp
 00646E6A    ret
*}
end;

//00646E6C
procedure TStrings.BeginUpdate;
begin
{*
 00646E6C    push        ebp
 00646E6D    mov         ebp,esp
 00646E6F    push        ecx
 00646E70    mov         dword ptr [ebp-4],eax
 00646E73    mov         eax,dword ptr [ebp-4]
 00646E76    cmp         dword ptr [eax+8],0
>00646E7A    jne         00646E86
 00646E7C    mov         dl,1
 00646E7E    mov         eax,dword ptr [ebp-4]
 00646E81    mov         ecx,dword ptr [eax]
 00646E83    call        dword ptr [ecx+30]
 00646E86    mov         eax,dword ptr [ebp-4]
 00646E89    inc         dword ptr [eax+8]
 00646E8C    pop         ecx
 00646E8D    pop         ebp
 00646E8E    ret
*}
end;

//00646E90
{*function sub_00646E90(?:?):?;
begin
 00646E90    push        ebp
 00646E91    mov         ebp,esp
 00646E93    push        ecx
 00646E94    mov         eax,dword ptr [ebp+8]
 00646E97    mov         eax,dword ptr [eax-4]
 00646E9A    cmp         dword ptr [eax+20],0
>00646E9E    je          00646ED7
 00646EA0    mov         byte ptr [ebp-1],1
 00646EA4    mov         eax,dword ptr [ebp+8]
 00646EA7    mov         eax,dword ptr [eax-4]
 00646EAA    mov         eax,dword ptr [eax+20]
 00646EAD    mov         edx,dword ptr ds:[6427A4];TStrings
 00646EB3    call        @IsClass
 00646EB8    test        al,al
>00646EBA    je          00646EE8
 00646EBC    mov         eax,dword ptr [ebp+8]
 00646EBF    mov         eax,dword ptr [eax-4]
 00646EC2    mov         edx,dword ptr [eax+20]
 00646EC5    mov         eax,dword ptr [ebp+8]
 00646EC8    mov         eax,dword ptr [eax-8]
 00646ECB    call        00646F60
 00646ED0    xor         al,1
 00646ED2    mov         byte ptr [ebp-1],al
>00646ED5    jmp         00646EE8
 00646ED7    mov         eax,dword ptr [ebp+8]
 00646EDA    mov         eax,dword ptr [eax-8]
 00646EDD    mov         edx,dword ptr [eax]
 00646EDF    call        dword ptr [edx+14]
 00646EE2    test        eax,eax
 00646EE4    setg        byte ptr [ebp-1]
 00646EE8    mov         al,byte ptr [ebp-1]
 00646EEB    pop         ecx
 00646EEC    pop         ebp
 00646EED    ret
end;*}

//00646EF0
procedure TStrings.DefineProperties(Filer:TFiler);
begin
{*
 00646EF0    push        ebp
 00646EF1    mov         ebp,esp
 00646EF3    add         esp,0FFFFFFF8
 00646EF6    push        ebx
 00646EF7    mov         dword ptr [ebp-4],edx
 00646EFA    mov         dword ptr [ebp-8],eax
 00646EFD    mov         eax,dword ptr [ebp-8]
 00646F00    push        eax
 00646F01    push        6478D0;TStrings.ReadData
 00646F06    mov         eax,dword ptr [ebp-8]
 00646F09    push        eax
 00646F0A    push        647C98;TStrings.WriteData
 00646F0F    push        ebp
 00646F10    call        00646E90
 00646F15    pop         ecx
 00646F16    mov         ecx,eax
 00646F18    mov         edx,646F34;'Strings'
 00646F1D    mov         eax,dword ptr [ebp-4]
 00646F20    mov         ebx,dword ptr [eax]
 00646F22    call        dword ptr [ebx+4]
 00646F25    pop         ebx
 00646F26    pop         ecx
 00646F27    pop         ecx
 00646F28    pop         ebp
 00646F29    ret
*}
end;

//00646F3C
procedure TStrings.EndUpdate;
begin
{*
 00646F3C    push        ebp
 00646F3D    mov         ebp,esp
 00646F3F    push        ecx
 00646F40    mov         dword ptr [ebp-4],eax
 00646F43    mov         eax,dword ptr [ebp-4]
 00646F46    dec         dword ptr [eax+8]
 00646F49    mov         eax,dword ptr [ebp-4]
 00646F4C    cmp         dword ptr [eax+8],0
>00646F50    jne         00646F5C
 00646F52    xor         edx,edx
 00646F54    mov         eax,dword ptr [ebp-4]
 00646F57    mov         ecx,dword ptr [eax]
 00646F59    call        dword ptr [ecx+30]
 00646F5C    pop         ecx
 00646F5D    pop         ebp
 00646F5E    ret
*}
end;

//00646F60
{*function sub_00646F60(?:?; ?:?):?;
begin
 00646F60    push        ebp
 00646F61    mov         ebp,esp
 00646F63    add         esp,0FFFFFFE0
 00646F66    push        ebx
 00646F67    xor         ecx,ecx
 00646F69    mov         dword ptr [ebp-1C],ecx
 00646F6C    mov         dword ptr [ebp-20],ecx
 00646F6F    mov         dword ptr [ebp-8],edx
 00646F72    mov         dword ptr [ebp-4],eax
 00646F75    xor         eax,eax
 00646F77    push        ebp
 00646F78    push        647004
 00646F7D    push        dword ptr fs:[eax]
 00646F80    mov         dword ptr fs:[eax],esp
 00646F83    mov         byte ptr [ebp-9],0
 00646F87    mov         eax,dword ptr [ebp-4]
 00646F8A    mov         edx,dword ptr [eax]
 00646F8C    call        dword ptr [edx+14]
 00646F8F    mov         dword ptr [ebp-14],eax
 00646F92    mov         eax,dword ptr [ebp-8]
 00646F95    mov         edx,dword ptr [eax]
 00646F97    call        dword ptr [edx+14]
 00646F9A    cmp         eax,dword ptr [ebp-14]
>00646F9D    jne         00646FE9
 00646F9F    mov         eax,dword ptr [ebp-14]
 00646FA2    dec         eax
 00646FA3    test        eax,eax
>00646FA5    jl          00646FE5
 00646FA7    inc         eax
 00646FA8    mov         dword ptr [ebp-18],eax
 00646FAB    mov         dword ptr [ebp-10],0
 00646FB2    lea         ecx,[ebp-1C]
 00646FB5    mov         edx,dword ptr [ebp-10]
 00646FB8    mov         eax,dword ptr [ebp-4]
 00646FBB    mov         ebx,dword ptr [eax]
 00646FBD    call        dword ptr [ebx+0C]
 00646FC0    mov         eax,dword ptr [ebp-1C]
 00646FC3    push        eax
 00646FC4    lea         ecx,[ebp-20]
 00646FC7    mov         edx,dword ptr [ebp-10]
 00646FCA    mov         eax,dword ptr [ebp-8]
 00646FCD    mov         ebx,dword ptr [eax]
 00646FCF    call        dword ptr [ebx+0C]
 00646FD2    mov         edx,dword ptr [ebp-20]
 00646FD5    pop         eax
 00646FD6    call        @LStrCmp
>00646FDB    jne         00646FE9
 00646FDD    inc         dword ptr [ebp-10]
 00646FE0    dec         dword ptr [ebp-18]
>00646FE3    jne         00646FB2
 00646FE5    mov         byte ptr [ebp-9],1
 00646FE9    xor         eax,eax
 00646FEB    pop         edx
 00646FEC    pop         ecx
 00646FED    pop         ecx
 00646FEE    mov         dword ptr fs:[eax],edx
 00646FF1    push        64700B
 00646FF6    lea         eax,[ebp-20]
 00646FF9    mov         edx,2
 00646FFE    call        @LStrArrayClr
 00647003    ret
>00647004    jmp         @HandleFinally
>00647009    jmp         00646FF6
 0064700B    mov         al,byte ptr [ebp-9]
 0064700E    pop         ebx
 0064700F    mov         esp,ebp
 00647011    pop         ebp
 00647012    ret
end;*}

//00647014
{*function sub_00647014(?:?):?;
begin
 00647014    push        ebp
 00647015    mov         ebp,esp
 00647017    mov         eax,dword ptr [ebp+4]
 0064701A    pop         ebp
 0064701B    ret
end;*}

//0064701C
{*procedure sub_0064701C(?:TStrings; ?:?; ?:?);
begin
 0064701C    push        ebp
 0064701D    mov         ebp,esp
 0064701F    add         esp,0FFFFFFEC
 00647022    mov         dword ptr [ebp-0C],ecx
 00647025    mov         dword ptr [ebp-8],edx
 00647028    mov         dword ptr [ebp-4],eax
 0064702B    push        ebp
 0064702C    call        00647014
 00647031    pop         ecx
 00647032    push        eax
 00647033    mov         eax,dword ptr [ebp-0C]
 00647036    mov         dword ptr [ebp-14],eax
 00647039    mov         byte ptr [ebp-10],0
 0064703D    lea         eax,[ebp-14]
 00647040    push        eax
 00647041    push        0
 00647043    mov         ecx,dword ptr [ebp-8]
 00647046    mov         dl,1
 00647048    mov         eax,[0064212C];EStringListError
 0064704D    call        Exception.CreateFmt;EStringListError.Create
>00647052    jmp         @RaiseExcept
 00647057    mov         esp,ebp
 00647059    pop         ebp
 0064705A    ret
end;*}

//0064705C
{*procedure sub_0064705C(?:TStringList; ?:?; ?:?);
begin
 0064705C    push        ebp
 0064705D    mov         ebp,esp
 0064705F    add         esp,0FFFFFFF0
 00647062    push        ebx
 00647063    xor         ebx,ebx
 00647065    mov         dword ptr [ebp-10],ebx
 00647068    mov         dword ptr [ebp-0C],ecx
 0064706B    mov         dword ptr [ebp-8],edx
 0064706E    mov         dword ptr [ebp-4],eax
 00647071    xor         eax,eax
 00647073    push        ebp
 00647074    push        6470AE
 00647079    push        dword ptr fs:[eax]
 0064707C    mov         dword ptr fs:[eax],esp
 0064707F    lea         edx,[ebp-10]
 00647082    mov         eax,dword ptr [ebp-8]
 00647085    call        LoadResString;'Logarithmic Axis Min and Max values should be >= 0'
 0064708A    mov         edx,dword ptr [ebp-10]
 0064708D    mov         ecx,dword ptr [ebp-0C]
 00647090    mov         eax,dword ptr [ebp-4]
 00647093    call        0064701C
 00647098    xor         eax,eax
 0064709A    pop         edx
 0064709B    pop         ecx
 0064709C    pop         ecx
 0064709D    mov         dword ptr fs:[eax],edx
 006470A0    push        6470B5
 006470A5    lea         eax,[ebp-10]
 006470A8    call        @LStrClr
 006470AD    ret
>006470AE    jmp         @HandleFinally
>006470B3    jmp         006470A5
 006470B5    pop         ebx
 006470B6    mov         esp,ebp
 006470B8    pop         ebp
 006470B9    ret
end;*}

//006470BC
{*procedure sub_006470BC(?:?; ?:?);
begin
 006470BC    push        ebp
 006470BD    mov         ebp,esp
 006470BF    add         esp,0FFFFFFE8
 006470C2    push        ebx
 006470C3    xor         ebx,ebx
 006470C5    mov         dword ptr [ebp-18],ebx
 006470C8    mov         dword ptr [ebp-14],ebx
 006470CB    mov         dword ptr [ebp-0C],ecx
 006470CE    mov         dword ptr [ebp-8],edx
 006470D1    mov         dword ptr [ebp-4],eax
 006470D4    xor         eax,eax
 006470D6    push        ebp
 006470D7    push        64719C
 006470DC    push        dword ptr fs:[eax]
 006470DF    mov         dword ptr fs:[eax],esp
 006470E2    mov         eax,dword ptr [ebp-4]
 006470E5    call        TStrings.BeginUpdate
 006470EA    xor         eax,eax
 006470EC    push        ebp
 006470ED    push        64717A
 006470F2    push        dword ptr fs:[eax]
 006470F5    mov         dword ptr fs:[eax],esp
 006470F8    lea         ecx,[ebp-14]
 006470FB    mov         edx,dword ptr [ebp-8]
 006470FE    mov         eax,dword ptr [ebp-4]
 00647101    mov         ebx,dword ptr [eax]
 00647103    call        dword ptr [ebx+0C];@AbstractError
 00647106    mov         edx,dword ptr [ebp-8]
 00647109    mov         eax,dword ptr [ebp-4]
 0064710C    mov         ecx,dword ptr [eax]
 0064710E    call        dword ptr [ecx+18];TStrings.sub_00647284
 00647111    mov         dword ptr [ebp-10],eax
 00647114    lea         ecx,[ebp-18]
 00647117    mov         edx,dword ptr [ebp-0C]
 0064711A    mov         eax,dword ptr [ebp-4]
 0064711D    mov         ebx,dword ptr [eax]
 0064711F    call        dword ptr [ebx+0C];@AbstractError
 00647122    mov         ecx,dword ptr [ebp-18]
 00647125    mov         edx,dword ptr [ebp-8]
 00647128    mov         eax,dword ptr [ebp-4]
 0064712B    mov         ebx,dword ptr [eax]
 0064712D    call        dword ptr [ebx+20];TStrings.sub_0064787C
 00647130    mov         edx,dword ptr [ebp-0C]
 00647133    mov         eax,dword ptr [ebp-4]
 00647136    mov         ecx,dword ptr [eax]
 00647138    call        dword ptr [ecx+18];TStrings.sub_00647284
 0064713B    mov         ecx,eax
 0064713D    mov         edx,dword ptr [ebp-8]
 00647140    mov         eax,dword ptr [ebp-4]
 00647143    mov         ebx,dword ptr [eax]
 00647145    call        dword ptr [ebx+24];TStrings.sub_006478BC
 00647148    mov         ecx,dword ptr [ebp-14]
 0064714B    mov         edx,dword ptr [ebp-0C]
 0064714E    mov         eax,dword ptr [ebp-4]
 00647151    mov         ebx,dword ptr [eax]
 00647153    call        dword ptr [ebx+20];TStrings.sub_0064787C
 00647156    mov         ecx,dword ptr [ebp-10]
 00647159    mov         edx,dword ptr [ebp-0C]
 0064715C    mov         eax,dword ptr [ebp-4]
 0064715F    mov         ebx,dword ptr [eax]
 00647161    call        dword ptr [ebx+24];TStrings.sub_006478BC
 00647164    xor         eax,eax
 00647166    pop         edx
 00647167    pop         ecx
 00647168    pop         ecx
 00647169    mov         dword ptr fs:[eax],edx
 0064716C    push        647181
 00647171    mov         eax,dword ptr [ebp-4]
 00647174    call        TStrings.EndUpdate
 00647179    ret
>0064717A    jmp         @HandleFinally
>0064717F    jmp         00647171
 00647181    xor         eax,eax
 00647183    pop         edx
 00647184    pop         ecx
 00647185    pop         ecx
 00647186    mov         dword ptr fs:[eax],edx
 00647189    push        6471A3
 0064718E    lea         eax,[ebp-18]
 00647191    mov         edx,2
 00647196    call        @LStrArrayClr
 0064719B    ret
>0064719C    jmp         @HandleFinally
>006471A1    jmp         0064718E
 006471A3    pop         ebx
 006471A4    mov         esp,ebp
 006471A6    pop         ebp
 006471A7    ret
end;*}

//006471A8
{*procedure sub_006471A8(?:TValueListStrings; ?:?; ?:?);
begin
 006471A8    push        ebp
 006471A9    mov         ebp,esp
 006471AB    add         esp,0FFFFFFF0
 006471AE    mov         dword ptr [ebp-0C],ecx
 006471B1    mov         dword ptr [ebp-8],edx
 006471B4    mov         dword ptr [ebp-4],eax
 006471B7    mov         eax,dword ptr [ebp-0C]
 006471BA    mov         edx,dword ptr [ebp-8]
 006471BD    call        @LStrAsg
 006471C2    mov         edx,dword ptr [ebp-0C]
 006471C5    mov         edx,dword ptr [edx]
 006471C7    mov         eax,647200;'='
 006471CC    call        AnsiPos
 006471D1    mov         dword ptr [ebp-10],eax
 006471D4    cmp         dword ptr [ebp-10],0
>006471D8    je          006471E8
 006471DA    mov         edx,dword ptr [ebp-10]
 006471DD    dec         edx
 006471DE    mov         eax,dword ptr [ebp-0C]
 006471E1    call        @LStrSetLength
>006471E6    jmp         006471F2
 006471E8    mov         eax,dword ptr [ebp-0C]
 006471EB    xor         edx,edx
 006471ED    call        @LStrSetLength
 006471F2    mov         esp,ebp
 006471F4    pop         ebp
 006471F5    ret
end;*}

//00647204
{*function sub_00647204:?;
begin
 00647204    push        ebp
 00647205    mov         ebp,esp
 00647207    add         esp,0FFFFFFF8
 0064720A    mov         dword ptr [ebp-4],eax
 0064720D    mov         eax,dword ptr [ebp-4]
 00647210    mov         edx,dword ptr [eax]
 00647212    call        dword ptr [edx+14];@AbstractError
 00647215    mov         dword ptr [ebp-8],eax
 00647218    mov         eax,dword ptr [ebp-8]
 0064721B    pop         ecx
 0064721C    pop         ecx
 0064721D    pop         ebp
 0064721E    ret
end;*}

//00647220
{*procedure sub_00647220(?:?; ?:?; ?:?);
begin
 00647220    push        ebp
 00647221    mov         ebp,esp
 00647223    add         esp,0FFFFFFF0
 00647226    push        ebx
 00647227    xor         ebx,ebx
 00647229    mov         dword ptr [ebp-10],ebx
 0064722C    mov         dword ptr [ebp-0C],ecx
 0064722F    mov         dword ptr [ebp-8],edx
 00647232    mov         dword ptr [ebp-4],eax
 00647235    xor         eax,eax
 00647237    push        ebp
 00647238    push        647275
 0064723D    push        dword ptr fs:[eax]
 00647240    mov         dword ptr fs:[eax],esp
 00647243    lea         ecx,[ebp-10]
 00647246    mov         edx,dword ptr [ebp-8]
 00647249    mov         eax,dword ptr [ebp-4]
 0064724C    mov         ebx,dword ptr [eax]
 0064724E    call        dword ptr [ebx+0C]
 00647251    mov         edx,dword ptr [ebp-10]
 00647254    mov         ecx,dword ptr [ebp-0C]
 00647257    mov         eax,dword ptr [ebp-4]
 0064725A    call        006471A8
 0064725F    xor         eax,eax
 00647261    pop         edx
 00647262    pop         ecx
 00647263    pop         ecx
 00647264    mov         dword ptr fs:[eax],edx
 00647267    push        64727C
 0064726C    lea         eax,[ebp-10]
 0064726F    call        @LStrClr
 00647274    ret
>00647275    jmp         @HandleFinally
>0064727A    jmp         0064726C
 0064727C    pop         ebx
 0064727D    mov         esp,ebp
 0064727F    pop         ebp
 00647280    ret
end;*}

//00647284
{*function sub_00647284(?:?):?;
begin
 00647284    push        ebp
 00647285    mov         ebp,esp
 00647287    add         esp,0FFFFFFF4
 0064728A    mov         dword ptr [ebp-0C],edx
 0064728D    mov         dword ptr [ebp-4],eax
 00647290    xor         eax,eax
 00647292    mov         dword ptr [ebp-8],eax
 00647295    mov         eax,dword ptr [ebp-8]
 00647298    mov         esp,ebp
 0064729A    pop         ebp
 0064729B    ret
end;*}

//0064729C
{*function sub_0064729C:?;
begin
 0064729C    push        ebp
 0064729D    mov         ebp,esp
 0064729F    add         esp,0FFFFFFF4
 006472A2    xor         edx,edx
 006472A4    mov         dword ptr [ebp-0C],edx
 006472A7    mov         dword ptr [ebp-4],eax
 006472AA    xor         eax,eax
 006472AC    push        ebp
 006472AD    push        6472E9
 006472B2    push        dword ptr fs:[eax]
 006472B5    mov         dword ptr fs:[eax],esp
 006472B8    lea         edx,[ebp-0C]
 006472BB    mov         eax,dword ptr [ebp-4]
 006472BE    mov         ecx,dword ptr [eax]
 006472C0    call        dword ptr [ecx+1C];TStrings.sub_006472F8
 006472C3    mov         eax,dword ptr [ebp-0C]
 006472C6    call        @LStrToPChar
 006472CB    call        006589F8
 006472D0    mov         dword ptr [ebp-8],eax
 006472D3    xor         eax,eax
 006472D5    pop         edx
 006472D6    pop         ecx
 006472D7    pop         ecx
 006472D8    mov         dword ptr fs:[eax],edx
 006472DB    push        6472F0
 006472E0    lea         eax,[ebp-0C]
 006472E3    call        @LStrClr
 006472E8    ret
>006472E9    jmp         @HandleFinally
>006472EE    jmp         006472E0
 006472F0    mov         eax,dword ptr [ebp-8]
 006472F3    mov         esp,ebp
 006472F5    pop         ebp
 006472F6    ret
end;*}

//006472F8
{*procedure sub_006472F8(?:?);
begin
 006472F8    push        ebp
 006472F9    mov         ebp,esp
 006472FB    add         esp,0FFFFFFD4
 006472FE    push        ebx
 006472FF    xor         ecx,ecx
 00647301    mov         dword ptr [ebp-2C],ecx
 00647304    mov         dword ptr [ebp-20],ecx
 00647307    mov         dword ptr [ebp-24],ecx
 0064730A    mov         dword ptr [ebp-8],edx
 0064730D    mov         dword ptr [ebp-4],eax
 00647310    xor         eax,eax
 00647312    push        ebp
 00647313    push        647426
 00647318    push        dword ptr fs:[eax]
 0064731B    mov         dword ptr fs:[eax],esp
 0064731E    mov         eax,dword ptr [ebp-4]
 00647321    mov         edx,dword ptr [eax]
 00647323    call        dword ptr [edx+14];@AbstractError
 00647326    mov         dword ptr [ebp-18],eax
 00647329    xor         eax,eax
 0064732B    mov         dword ptr [ebp-14],eax
 0064732E    lea         eax,[ebp-24]
 00647331    mov         edx,64743C;#13+#10
 00647336    call        @LStrLAsg
 0064733B    mov         eax,dword ptr [ebp-18]
 0064733E    dec         eax
 0064733F    test        eax,eax
>00647341    jl          0064737B
 00647343    inc         eax
 00647344    mov         dword ptr [ebp-28],eax
 00647347    mov         dword ptr [ebp-0C],0
 0064734E    lea         ecx,[ebp-2C]
 00647351    mov         edx,dword ptr [ebp-0C]
 00647354    mov         eax,dword ptr [ebp-4]
 00647357    mov         ebx,dword ptr [eax]
 00647359    call        dword ptr [ebx+0C];@AbstractError
 0064735C    mov         eax,dword ptr [ebp-2C]
 0064735F    call        @LStrLen
 00647364    mov         ebx,eax
 00647366    mov         eax,dword ptr [ebp-24]
 00647369    call        @LStrLen
 0064736E    add         ebx,eax
 00647370    add         dword ptr [ebp-14],ebx
 00647373    inc         dword ptr [ebp-0C]
 00647376    dec         dword ptr [ebp-28]
>00647379    jne         0064734E
 0064737B    mov         eax,dword ptr [ebp-8]
 0064737E    mov         ecx,dword ptr [ebp-14]
 00647381    xor         edx,edx
 00647383    call        @LStrFromPCharLen
 00647388    mov         eax,dword ptr [ebp-8]
 0064738B    mov         eax,dword ptr [eax]
 0064738D    mov         dword ptr [ebp-1C],eax
 00647390    mov         eax,dword ptr [ebp-18]
 00647393    dec         eax
 00647394    test        eax,eax
>00647396    jl          00647403
 00647398    inc         eax
 00647399    mov         dword ptr [ebp-28],eax
 0064739C    mov         dword ptr [ebp-0C],0
 006473A3    lea         ecx,[ebp-20]
 006473A6    mov         edx,dword ptr [ebp-0C]
 006473A9    mov         eax,dword ptr [ebp-4]
 006473AC    mov         ebx,dword ptr [eax]
 006473AE    call        dword ptr [ebx+0C];@AbstractError
 006473B1    mov         eax,dword ptr [ebp-20]
 006473B4    call        @LStrLen
 006473B9    mov         dword ptr [ebp-10],eax
 006473BC    cmp         dword ptr [ebp-10],0
>006473C0    je          006473D6
 006473C2    mov         edx,dword ptr [ebp-1C]
 006473C5    mov         eax,dword ptr [ebp-20]
 006473C8    mov         ecx,dword ptr [ebp-10]
 006473CB    call        Move
 006473D0    mov         eax,dword ptr [ebp-10]
 006473D3    add         dword ptr [ebp-1C],eax
 006473D6    mov         eax,dword ptr [ebp-24]
 006473D9    call        @LStrLen
 006473DE    mov         dword ptr [ebp-10],eax
 006473E1    cmp         dword ptr [ebp-10],0
>006473E5    je          006473FB
 006473E7    mov         edx,dword ptr [ebp-1C]
 006473EA    mov         eax,dword ptr [ebp-24]
 006473ED    mov         ecx,dword ptr [ebp-10]
 006473F0    call        Move
 006473F5    mov         eax,dword ptr [ebp-10]
 006473F8    add         dword ptr [ebp-1C],eax
 006473FB    inc         dword ptr [ebp-0C]
 006473FE    dec         dword ptr [ebp-28]
>00647401    jne         006473A3
 00647403    xor         eax,eax
 00647405    pop         edx
 00647406    pop         ecx
 00647407    pop         ecx
 00647408    mov         dword ptr fs:[eax],edx
 0064740B    push        64742D
 00647410    lea         eax,[ebp-2C]
 00647413    call        @LStrClr
 00647418    lea         eax,[ebp-24]
 0064741B    mov         edx,2
 00647420    call        @LStrArrayClr
 00647425    ret
>00647426    jmp         @HandleFinally
>0064742B    jmp         00647410
 0064742D    pop         ebx
 0064742E    mov         esp,ebp
 00647430    pop         ebp
 00647431    ret
end;*}

//00647440
{*procedure sub_00647440(?:?; ?:AnsiString; ?:?);
begin
 00647440    push        ebp
 00647441    mov         ebp,esp
 00647443    add         esp,0FFFFFFEC
 00647446    push        ebx
 00647447    xor         ebx,ebx
 00647449    mov         dword ptr [ebp-14],ebx
 0064744C    mov         dword ptr [ebp-0C],ecx
 0064744F    mov         dword ptr [ebp-8],edx
 00647452    mov         dword ptr [ebp-4],eax
 00647455    xor         eax,eax
 00647457    push        ebp
 00647458    push        6474C5
 0064745D    push        dword ptr fs:[eax]
 00647460    mov         dword ptr fs:[eax],esp
 00647463    mov         edx,dword ptr [ebp-8]
 00647466    mov         eax,dword ptr [ebp-4]
 00647469    mov         ecx,dword ptr [eax]
 0064746B    call        dword ptr [ecx+58]
 0064746E    mov         dword ptr [ebp-10],eax
 00647471    cmp         dword ptr [ebp-10],0
>00647475    jl          006474A7
 00647477    mov         eax,dword ptr [ebp-0C]
 0064747A    push        eax
 0064747B    lea         ecx,[ebp-14]
 0064747E    mov         edx,dword ptr [ebp-10]
 00647481    mov         eax,dword ptr [ebp-4]
 00647484    mov         ebx,dword ptr [eax]
 00647486    call        dword ptr [ebx+0C]
 00647489    mov         eax,dword ptr [ebp-14]
 0064748C    push        eax
 0064748D    mov         eax,dword ptr [ebp-8]
 00647490    call        @LStrLen
 00647495    mov         edx,eax
 00647497    add         edx,2
 0064749A    mov         ecx,7FFFFFFF
 0064749F    pop         eax
 006474A0    call        @LStrCopy
>006474A5    jmp         006474AF
 006474A7    mov         eax,dword ptr [ebp-0C]
 006474AA    call        @LStrClr
 006474AF    xor         eax,eax
 006474B1    pop         edx
 006474B2    pop         ecx
 006474B3    pop         ecx
 006474B4    mov         dword ptr fs:[eax],edx
 006474B7    push        6474CC
 006474BC    lea         eax,[ebp-14]
 006474BF    call        @LStrClr
 006474C4    ret
>006474C5    jmp         @HandleFinally
>006474CA    jmp         006474BC
 006474CC    pop         ebx
 006474CD    mov         esp,ebp
 006474CF    pop         ebp
 006474D0    ret
end;*}

//006474D4
{*function sub_006474D4(?:?):?;
begin
 006474D4    push        ebp
 006474D5    mov         ebp,esp
 006474D7    add         esp,0FFFFFFEC
 006474DA    push        ebx
 006474DB    xor         ecx,ecx
 006474DD    mov         dword ptr [ebp-14],ecx
 006474E0    mov         dword ptr [ebp-8],edx
 006474E3    mov         dword ptr [ebp-4],eax
 006474E6    xor         eax,eax
 006474E8    push        ebp
 006474E9    push        647551
 006474EE    push        dword ptr fs:[eax]
 006474F1    mov         dword ptr fs:[eax],esp
 006474F4    mov         eax,dword ptr [ebp-4]
 006474F7    mov         edx,dword ptr [eax]
 006474F9    call        dword ptr [edx+14];@AbstractError
 006474FC    dec         eax
 006474FD    test        eax,eax
>006474FF    jl          00647534
 00647501    inc         eax
 00647502    mov         dword ptr [ebp-10],eax
 00647505    mov         dword ptr [ebp-0C],0
 0064750C    lea         ecx,[ebp-14]
 0064750F    mov         edx,dword ptr [ebp-0C]
 00647512    mov         eax,dword ptr [ebp-4]
 00647515    mov         ebx,dword ptr [eax]
 00647517    call        dword ptr [ebx+0C];@AbstractError
 0064751A    mov         edx,dword ptr [ebp-14]
 0064751D    mov         ecx,dword ptr [ebp-8]
 00647520    mov         eax,dword ptr [ebp-4]
 00647523    mov         ebx,dword ptr [eax]
 00647525    call        dword ptr [ebx+34];TStrings.sub_00647D24
 00647528    test        eax,eax
>0064752A    je          0064753B
 0064752C    inc         dword ptr [ebp-0C]
 0064752F    dec         dword ptr [ebp-10]
>00647532    jne         0064750C
 00647534    mov         dword ptr [ebp-0C],0FFFFFFFF
 0064753B    xor         eax,eax
 0064753D    pop         edx
 0064753E    pop         ecx
 0064753F    pop         ecx
 00647540    mov         dword ptr fs:[eax],edx
 00647543    push        647558
 00647548    lea         eax,[ebp-14]
 0064754B    call        @LStrClr
 00647550    ret
>00647551    jmp         @HandleFinally
>00647556    jmp         00647548
 00647558    mov         eax,dword ptr [ebp-0C]
 0064755B    pop         ebx
 0064755C    mov         esp,ebp
 0064755E    pop         ebp
 0064755F    ret
end;*}

//00647560
{*function sub_00647560(?:?):?;
begin
 00647560    push        ebp
 00647561    mov         ebp,esp
 00647563    add         esp,0FFFFFFE4
 00647566    push        ebx
 00647567    xor         ecx,ecx
 00647569    mov         dword ptr [ebp-1C],ecx
 0064756C    mov         dword ptr [ebp-14],ecx
 0064756F    mov         dword ptr [ebp-8],edx
 00647572    mov         dword ptr [ebp-4],eax
 00647575    xor         eax,eax
 00647577    push        ebp
 00647578    push        647613
 0064757D    push        dword ptr fs:[eax]
 00647580    mov         dword ptr fs:[eax],esp
 00647583    mov         eax,dword ptr [ebp-4]
 00647586    mov         edx,dword ptr [eax]
 00647588    call        dword ptr [edx+14];@AbstractError
 0064758B    dec         eax
 0064758C    test        eax,eax
>0064758E    jl          006475EE
 00647590    inc         eax
 00647591    mov         dword ptr [ebp-18],eax
 00647594    mov         dword ptr [ebp-0C],0
 0064759B    lea         ecx,[ebp-14]
 0064759E    mov         edx,dword ptr [ebp-0C]
 006475A1    mov         eax,dword ptr [ebp-4]
 006475A4    mov         ebx,dword ptr [eax]
 006475A6    call        dword ptr [ebx+0C];@AbstractError
 006475A9    mov         edx,dword ptr [ebp-14]
 006475AC    mov         eax,64762C;'='
 006475B1    call        AnsiPos
 006475B6    mov         dword ptr [ebp-10],eax
 006475B9    cmp         dword ptr [ebp-10],0
>006475BD    je          006475E6
 006475BF    lea         eax,[ebp-1C]
 006475C2    push        eax
 006475C3    mov         ecx,dword ptr [ebp-10]
 006475C6    dec         ecx
 006475C7    mov         edx,1
 006475CC    mov         eax,dword ptr [ebp-14]
 006475CF    call        @LStrCopy
 006475D4    mov         edx,dword ptr [ebp-1C]
 006475D7    mov         ecx,dword ptr [ebp-8]
 006475DA    mov         eax,dword ptr [ebp-4]
 006475DD    mov         ebx,dword ptr [eax]
 006475DF    call        dword ptr [ebx+34];TStrings.sub_00647D24
 006475E2    test        eax,eax
>006475E4    je          006475F5
 006475E6    inc         dword ptr [ebp-0C]
 006475E9    dec         dword ptr [ebp-18]
>006475EC    jne         0064759B
 006475EE    mov         dword ptr [ebp-0C],0FFFFFFFF
 006475F5    xor         eax,eax
 006475F7    pop         edx
 006475F8    pop         ecx
 006475F9    pop         ecx
 006475FA    mov         dword ptr fs:[eax],edx
 006475FD    push        64761A
 00647602    lea         eax,[ebp-1C]
 00647605    call        @LStrClr
 0064760A    lea         eax,[ebp-14]
 0064760D    call        @LStrClr
 00647612    ret
>00647613    jmp         @HandleFinally
>00647618    jmp         00647602
 0064761A    mov         eax,dword ptr [ebp-0C]
 0064761D    pop         ebx
 0064761E    mov         esp,ebp
 00647620    pop         ebp
 00647621    ret
end;*}

//00647630
{*function sub_00647630(?:?):?;
begin
 00647630    push        ebp
 00647631    mov         ebp,esp
 00647633    add         esp,0FFFFFFF0
 00647636    mov         dword ptr [ebp-8],edx
 00647639    mov         dword ptr [ebp-4],eax
 0064763C    mov         eax,dword ptr [ebp-4]
 0064763F    mov         edx,dword ptr [eax]
 00647641    call        dword ptr [edx+14];@AbstractError
 00647644    dec         eax
 00647645    test        eax,eax
>00647647    jl          0064766C
 00647649    inc         eax
 0064764A    mov         dword ptr [ebp-10],eax
 0064764D    mov         dword ptr [ebp-0C],0
 00647654    mov         edx,dword ptr [ebp-0C]
 00647657    mov         eax,dword ptr [ebp-4]
 0064765A    mov         ecx,dword ptr [eax]
 0064765C    call        dword ptr [ecx+18];TStrings.sub_00647284
 0064765F    cmp         eax,dword ptr [ebp-8]
>00647662    je          00647673
 00647664    inc         dword ptr [ebp-0C]
 00647667    dec         dword ptr [ebp-10]
>0064766A    jne         00647654
 0064766C    mov         dword ptr [ebp-0C],0FFFFFFFF
 00647673    mov         eax,dword ptr [ebp-0C]
 00647676    mov         esp,ebp
 00647678    pop         ebp
 00647679    ret
end;*}

//0064767C
{*procedure sub_0064767C(?:?; ?:?; ?:?);
begin
 0064767C    push        ebp
 0064767D    mov         ebp,esp
 0064767F    add         esp,0FFFFFFF4
 00647682    push        ebx
 00647683    mov         dword ptr [ebp-0C],ecx
 00647686    mov         dword ptr [ebp-8],edx
 00647689    mov         dword ptr [ebp-4],eax
 0064768C    mov         ecx,dword ptr [ebp-0C]
 0064768F    mov         edx,dword ptr [ebp-8]
 00647692    mov         eax,dword ptr [ebp-4]
 00647695    mov         ebx,dword ptr [eax]
 00647697    call        dword ptr [ebx+60];@AbstractError
 0064769A    mov         ecx,dword ptr [ebp+8]
 0064769D    mov         edx,dword ptr [ebp-8]
 006476A0    mov         eax,dword ptr [ebp-4]
 006476A3    mov         ebx,dword ptr [eax]
 006476A5    call        dword ptr [ebx+24];TStrings.sub_006478BC
 006476A8    pop         ebx
 006476A9    mov         esp,ebp
 006476AB    pop         ebp
 006476AC    ret         4
end;*}

//006476B0
{*procedure sub_006476B0(?:?);
begin
 006476B0    push        ebp
 006476B1    mov         ebp,esp
 006476B3    add         esp,0FFFFFFF4
 006476B6    mov         dword ptr [ebp-8],edx
 006476B9    mov         dword ptr [ebp-4],eax
 006476BC    push        20
 006476BE    mov         ecx,dword ptr [ebp-8]
 006476C1    mov         dl,1
 006476C3    mov         eax,[00642AB0];TFileStream
 006476C8    call        TFileStream.Create;TFileStream.Create
 006476CD    mov         dword ptr [ebp-0C],eax
 006476D0    xor         eax,eax
 006476D2    push        ebp
 006476D3    push        6476FF
 006476D8    push        dword ptr fs:[eax]
 006476DB    mov         dword ptr fs:[eax],esp
 006476DE    mov         edx,dword ptr [ebp-0C]
 006476E1    mov         eax,dword ptr [ebp-4]
 006476E4    mov         ecx,dword ptr [eax]
 006476E6    call        dword ptr [ecx+6C];TStrings.sub_0064770C
 006476E9    xor         eax,eax
 006476EB    pop         edx
 006476EC    pop         ecx
 006476ED    pop         ecx
 006476EE    mov         dword ptr fs:[eax],edx
 006476F1    push        647706
 006476F6    mov         eax,dword ptr [ebp-0C]
 006476F9    call        TObject.Free
 006476FE    ret
>006476FF    jmp         @HandleFinally
>00647704    jmp         006476F6
 00647706    mov         esp,ebp
 00647708    pop         ebp
 00647709    ret
end;*}

//0064770C
{*procedure sub_0064770C(?:?);
begin
 0064770C    push        ebp
 0064770D    mov         ebp,esp
 0064770F    add         esp,0FFFFFFF0
 00647712    push        ebx
 00647713    xor         ecx,ecx
 00647715    mov         dword ptr [ebp-10],ecx
 00647718    mov         dword ptr [ebp-8],edx
 0064771B    mov         dword ptr [ebp-4],eax
 0064771E    xor         eax,eax
 00647720    push        ebp
 00647721    push        6477B2
 00647726    push        dword ptr fs:[eax]
 00647729    mov         dword ptr fs:[eax],esp
 0064772C    mov         eax,dword ptr [ebp-4]
 0064772F    call        TStrings.BeginUpdate
 00647734    xor         eax,eax
 00647736    push        ebp
 00647737    push        647795
 0064773C    push        dword ptr fs:[eax]
 0064773F    mov         dword ptr fs:[eax],esp
 00647742    mov         eax,dword ptr [ebp-8]
 00647745    call        TStream.GetSize
 0064774A    mov         ebx,eax
 0064774C    mov         eax,dword ptr [ebp-8]
 0064774F    call        TStream.GetPosition
 00647754    sub         ebx,eax
 00647756    mov         dword ptr [ebp-0C],ebx
 00647759    lea         eax,[ebp-10]
 0064775C    mov         ecx,dword ptr [ebp-0C]
 0064775F    xor         edx,edx
 00647761    call        @LStrFromPCharLen
 00647766    mov         edx,dword ptr [ebp-10]
 00647769    mov         ecx,dword ptr [ebp-0C]
 0064776C    mov         eax,dword ptr [ebp-8]
 0064776F    mov         ebx,dword ptr [eax]
 00647771    call        dword ptr [ebx+8]
 00647774    mov         edx,dword ptr [ebp-10]
 00647777    mov         eax,dword ptr [ebp-4]
 0064777A    mov         ecx,dword ptr [eax]
 0064777C    call        dword ptr [ecx+2C];TStrings.sub_00647AF4
 0064777F    xor         eax,eax
 00647781    pop         edx
 00647782    pop         ecx
 00647783    pop         ecx
 00647784    mov         dword ptr fs:[eax],edx
 00647787    push        64779C
 0064778C    mov         eax,dword ptr [ebp-4]
 0064778F    call        TStrings.EndUpdate
 00647794    ret
>00647795    jmp         @HandleFinally
>0064779A    jmp         0064778C
 0064779C    xor         eax,eax
 0064779E    pop         edx
 0064779F    pop         ecx
 006477A0    pop         ecx
 006477A1    mov         dword ptr fs:[eax],edx
 006477A4    push        6477B9
 006477A9    lea         eax,[ebp-10]
 006477AC    call        @LStrClr
 006477B1    ret
>006477B2    jmp         @HandleFinally
>006477B7    jmp         006477A9
 006477B9    pop         ebx
 006477BA    mov         esp,ebp
 006477BC    pop         ebp
 006477BD    ret
end;*}

//006477C0
{*procedure sub_006477C0(?:?; ?:?);
begin
 006477C0    push        ebp
 006477C1    mov         ebp,esp
 006477C3    add         esp,0FFFFFFEC
 006477C6    push        ebx
 006477C7    xor         ebx,ebx
 006477C9    mov         dword ptr [ebp-14],ebx
 006477CC    mov         dword ptr [ebp-0C],ecx
 006477CF    mov         dword ptr [ebp-8],edx
 006477D2    mov         dword ptr [ebp-4],eax
 006477D5    xor         eax,eax
 006477D7    push        ebp
 006477D8    push        64786D
 006477DD    push        dword ptr fs:[eax]
 006477E0    mov         dword ptr fs:[eax],esp
 006477E3    mov         eax,dword ptr [ebp-8]
 006477E6    cmp         eax,dword ptr [ebp-0C]
>006477E9    je          00647857
 006477EB    mov         eax,dword ptr [ebp-4]
 006477EE    call        TStrings.BeginUpdate
 006477F3    xor         eax,eax
 006477F5    push        ebp
 006477F6    push        647850
 006477FB    push        dword ptr fs:[eax]
 006477FE    mov         dword ptr fs:[eax],esp
 00647801    lea         ecx,[ebp-14]
 00647804    mov         edx,dword ptr [ebp-8]
 00647807    mov         eax,dword ptr [ebp-4]
 0064780A    mov         ebx,dword ptr [eax]
 0064780C    call        dword ptr [ebx+0C];@AbstractError
 0064780F    mov         edx,dword ptr [ebp-8]
 00647812    mov         eax,dword ptr [ebp-4]
 00647815    mov         ecx,dword ptr [eax]
 00647817    call        dword ptr [ecx+18];TStrings.sub_00647284
 0064781A    mov         dword ptr [ebp-10],eax
 0064781D    mov         edx,dword ptr [ebp-8]
 00647820    mov         eax,dword ptr [ebp-4]
 00647823    mov         ecx,dword ptr [eax]
 00647825    call        dword ptr [ecx+48];@AbstractError
 00647828    mov         eax,dword ptr [ebp-10]
 0064782B    push        eax
 0064782C    mov         ecx,dword ptr [ebp-14]
 0064782F    mov         edx,dword ptr [ebp-0C]
 00647832    mov         eax,dword ptr [ebp-4]
 00647835    mov         ebx,dword ptr [eax]
 00647837    call        dword ptr [ebx+64];TStrings.sub_0064767C
 0064783A    xor         eax,eax
 0064783C    pop         edx
 0064783D    pop         ecx
 0064783E    pop         ecx
 0064783F    mov         dword ptr fs:[eax],edx
 00647842    push        647857
 00647847    mov         eax,dword ptr [ebp-4]
 0064784A    call        TStrings.EndUpdate
 0064784F    ret
>00647850    jmp         @HandleFinally
>00647855    jmp         00647847
 00647857    xor         eax,eax
 00647859    pop         edx
 0064785A    pop         ecx
 0064785B    pop         ecx
 0064785C    mov         dword ptr fs:[eax],edx
 0064785F    push        647874
 00647864    lea         eax,[ebp-14]
 00647867    call        @LStrClr
 0064786C    ret
>0064786D    jmp         @HandleFinally
>00647872    jmp         00647864
 00647874    pop         ebx
 00647875    mov         esp,ebp
 00647877    pop         ebp
 00647878    ret
end;*}

//0064787C
{*procedure sub_0064787C(?:?; ?:?);
begin
 0064787C    push        ebp
 0064787D    mov         ebp,esp
 0064787F    add         esp,0FFFFFFF0
 00647882    push        ebx
 00647883    mov         dword ptr [ebp-0C],ecx
 00647886    mov         dword ptr [ebp-8],edx
 00647889    mov         dword ptr [ebp-4],eax
 0064788C    mov         edx,dword ptr [ebp-8]
 0064788F    mov         eax,dword ptr [ebp-4]
 00647892    mov         ecx,dword ptr [eax]
 00647894    call        dword ptr [ecx+18];TStrings.sub_00647284
 00647897    mov         dword ptr [ebp-10],eax
 0064789A    mov         edx,dword ptr [ebp-8]
 0064789D    mov         eax,dword ptr [ebp-4]
 006478A0    mov         ecx,dword ptr [eax]
 006478A2    call        dword ptr [ecx+48];@AbstractError
 006478A5    mov         eax,dword ptr [ebp-10]
 006478A8    push        eax
 006478A9    mov         ecx,dword ptr [ebp-0C]
 006478AC    mov         edx,dword ptr [ebp-8]
 006478AF    mov         eax,dword ptr [ebp-4]
 006478B2    mov         ebx,dword ptr [eax]
 006478B4    call        dword ptr [ebx+64];TStrings.sub_0064767C
 006478B7    pop         ebx
 006478B8    mov         esp,ebp
 006478BA    pop         ebp
 006478BB    ret
end;*}

//006478BC
{*procedure sub_006478BC(?:?; ?:?);
begin
 006478BC    push        ebp
 006478BD    mov         ebp,esp
 006478BF    add         esp,0FFFFFFF4
 006478C2    mov         dword ptr [ebp-0C],ecx
 006478C5    mov         dword ptr [ebp-8],edx
 006478C8    mov         dword ptr [ebp-4],eax
 006478CB    mov         esp,ebp
 006478CD    pop         ebp
 006478CE    ret
end;*}

//006478D0
procedure TStrings.ReadData(Reader:TReader);
begin
{*
 006478D0    push        ebp
 006478D1    mov         ebp,esp
 006478D3    add         esp,0FFFFFFF4
 006478D6    xor         ecx,ecx
 006478D8    mov         dword ptr [ebp-0C],ecx
 006478DB    mov         dword ptr [ebp-8],edx
 006478DE    mov         dword ptr [ebp-4],eax
 006478E1    xor         eax,eax
 006478E3    push        ebp
 006478E4    push        647974
 006478E9    push        dword ptr fs:[eax]
 006478EC    mov         dword ptr fs:[eax],esp
 006478EF    mov         eax,dword ptr [ebp-8]
 006478F2    call        TReader.ReadListBegin
 006478F7    mov         eax,dword ptr [ebp-4]
 006478FA    call        TStrings.BeginUpdate
 006478FF    xor         eax,eax
 00647901    push        ebp
 00647902    push        64794F
 00647907    push        dword ptr fs:[eax]
 0064790A    mov         dword ptr fs:[eax],esp
 0064790D    mov         eax,dword ptr [ebp-4]
 00647910    mov         edx,dword ptr [eax]
 00647912    call        dword ptr [edx+44]
>00647915    jmp         0064792D
 00647917    lea         edx,[ebp-0C]
 0064791A    mov         eax,dword ptr [ebp-8]
 0064791D    call        TReader.ReadString
 00647922    mov         edx,dword ptr [ebp-0C]
 00647925    mov         eax,dword ptr [ebp-4]
 00647928    mov         ecx,dword ptr [eax]
 0064792A    call        dword ptr [ecx+38]
 0064792D    mov         eax,dword ptr [ebp-8]
 00647930    call        TReader.EndOfList
 00647935    test        al,al
>00647937    je          00647917
 00647939    xor         eax,eax
 0064793B    pop         edx
 0064793C    pop         ecx
 0064793D    pop         ecx
 0064793E    mov         dword ptr fs:[eax],edx
 00647941    push        647956
 00647946    mov         eax,dword ptr [ebp-4]
 00647949    call        TStrings.EndUpdate
 0064794E    ret
>0064794F    jmp         @HandleFinally
>00647954    jmp         00647946
 00647956    mov         eax,dword ptr [ebp-8]
 00647959    call        TReader.ReadListEnd
 0064795E    xor         eax,eax
 00647960    pop         edx
 00647961    pop         ecx
 00647962    pop         ecx
 00647963    mov         dword ptr fs:[eax],edx
 00647966    push        64797B
 0064796B    lea         eax,[ebp-0C]
 0064796E    call        @LStrClr
 00647973    ret
>00647974    jmp         @HandleFinally
>00647979    jmp         0064796B
 0064797B    mov         esp,ebp
 0064797D    pop         ebp
 0064797E    ret
*}
end;

//00647980
{*procedure sub_00647980(?:?);
begin
 00647980    push        ebp
 00647981    mov         ebp,esp
 00647983    add         esp,0FFFFFFF4
 00647986    mov         dword ptr [ebp-8],edx
 00647989    mov         dword ptr [ebp-4],eax
 0064798C    push        0FFFF
 00647991    mov         ecx,dword ptr [ebp-8]
 00647994    mov         dl,1
 00647996    mov         eax,[00642AB0];TFileStream
 0064799B    call        TFileStream.Create;TFileStream.Create
 006479A0    mov         dword ptr [ebp-0C],eax
 006479A3    xor         eax,eax
 006479A5    push        ebp
 006479A6    push        6479D2
 006479AB    push        dword ptr fs:[eax]
 006479AE    mov         dword ptr fs:[eax],esp
 006479B1    mov         edx,dword ptr [ebp-0C]
 006479B4    mov         eax,dword ptr [ebp-4]
 006479B7    mov         ecx,dword ptr [eax]
 006479B9    call        dword ptr [ecx+78];TStrings.sub_006479E0
 006479BC    xor         eax,eax
 006479BE    pop         edx
 006479BF    pop         ecx
 006479C0    pop         ecx
 006479C1    mov         dword ptr fs:[eax],edx
 006479C4    push        6479D9
 006479C9    mov         eax,dword ptr [ebp-0C]
 006479CC    call        TObject.Free
 006479D1    ret
>006479D2    jmp         @HandleFinally
>006479D7    jmp         006479C9
 006479D9    mov         esp,ebp
 006479DB    pop         ebp
 006479DC    ret
end;*}

//006479E0
{*procedure sub_006479E0(?:?);
begin
 006479E0    push        ebp
 006479E1    mov         ebp,esp
 006479E3    add         esp,0FFFFFFF4
 006479E6    xor         ecx,ecx
 006479E8    mov         dword ptr [ebp-0C],ecx
 006479EB    mov         dword ptr [ebp-8],edx
 006479EE    mov         dword ptr [ebp-4],eax
 006479F1    xor         eax,eax
 006479F3    push        ebp
 006479F4    push        647A35
 006479F9    push        dword ptr fs:[eax]
 006479FC    mov         dword ptr fs:[eax],esp
 006479FF    lea         edx,[ebp-0C]
 00647A02    mov         eax,dword ptr [ebp-4]
 00647A05    mov         ecx,dword ptr [eax]
 00647A07    call        dword ptr [ecx+1C];TStrings.sub_006472F8
 00647A0A    mov         eax,dword ptr [ebp-0C]
 00647A0D    call        @LStrLen
 00647A12    mov         ecx,eax
 00647A14    mov         edx,dword ptr [ebp-0C]
 00647A17    mov         eax,dword ptr [ebp-8]
 00647A1A    call        TStream.WriteBuffer
 00647A1F    xor         eax,eax
 00647A21    pop         edx
 00647A22    pop         ecx
 00647A23    pop         ecx
 00647A24    mov         dword ptr fs:[eax],edx
 00647A27    push        647A3C
 00647A2C    lea         eax,[ebp-0C]
 00647A2F    call        @LStrClr
 00647A34    ret
>00647A35    jmp         @HandleFinally
>00647A3A    jmp         00647A2C
 00647A3C    mov         esp,ebp
 00647A3E    pop         ebp
 00647A3F    ret
end;*}

//00647A40
{*procedure sub_00647A40(?:?);
begin
 00647A40    push        ebp
 00647A41    mov         ebp,esp
 00647A43    add         esp,0FFFFFFF8
 00647A46    mov         dword ptr [ebp-8],edx
 00647A49    mov         dword ptr [ebp-4],eax
 00647A4C    pop         ecx
 00647A4D    pop         ecx
 00647A4E    pop         ebp
 00647A4F    ret
end;*}

//00647A50
{*procedure sub_00647A50(?:TStrings; ?:?);
begin
 00647A50    push        ebp
 00647A51    mov         ebp,esp
 00647A53    add         esp,0FFFFFFF8
 00647A56    mov         dword ptr [ebp-8],edx
 00647A59    mov         dword ptr [ebp-4],eax
 00647A5C    mov         eax,dword ptr [ebp-4]
 00647A5F    cmp         dword ptr [eax+0C],0;TStrings.FAdapter:IStringsAdapter
>00647A63    je          00647A70
 00647A65    mov         eax,dword ptr [ebp-4]
 00647A68    mov         eax,dword ptr [eax+0C];TStrings.FAdapter:IStringsAdapter
 00647A6B    mov         edx,dword ptr [eax]
 00647A6D    call        dword ptr [edx+10]
 00647A70    mov         eax,dword ptr [ebp-4]
 00647A73    add         eax,0C;TStrings.FAdapter:IStringsAdapter
 00647A76    mov         edx,dword ptr [ebp-8]
 00647A79    call        @IntfCopy
 00647A7E    mov         eax,dword ptr [ebp-4]
 00647A81    cmp         dword ptr [eax+0C],0;TStrings.FAdapter:IStringsAdapter
>00647A85    je          00647A95
 00647A87    mov         edx,dword ptr [ebp-4]
 00647A8A    mov         eax,dword ptr [ebp-4]
 00647A8D    mov         eax,dword ptr [eax+0C];TStrings.FAdapter:IStringsAdapter
 00647A90    mov         ecx,dword ptr [eax]
 00647A92    call        dword ptr [ecx+0C]
 00647A95    pop         ecx
 00647A96    pop         ecx
 00647A97    pop         ebp
 00647A98    ret
end;*}

//00647A9C
{*procedure sub_00647A9C(?:?);
begin
 00647A9C    push        ebp
 00647A9D    mov         ebp,esp
 00647A9F    add         esp,0FFFFFFF4
 00647AA2    xor         ecx,ecx
 00647AA4    mov         dword ptr [ebp-0C],ecx
 00647AA7    mov         dword ptr [ebp-8],edx
 00647AAA    mov         dword ptr [ebp-4],eax
 00647AAD    xor         eax,eax
 00647AAF    push        ebp
 00647AB0    push        647AE7
 00647AB5    push        dword ptr fs:[eax]
 00647AB8    mov         dword ptr fs:[eax],esp
 00647ABB    lea         eax,[ebp-0C]
 00647ABE    mov         edx,dword ptr [ebp-8]
 00647AC1    call        @LStrFromPChar
 00647AC6    mov         edx,dword ptr [ebp-0C]
 00647AC9    mov         eax,dword ptr [ebp-4]
 00647ACC    mov         ecx,dword ptr [eax]
 00647ACE    call        dword ptr [ecx+2C];TStrings.sub_00647AF4
 00647AD1    xor         eax,eax
 00647AD3    pop         edx
 00647AD4    pop         ecx
 00647AD5    pop         ecx
 00647AD6    mov         dword ptr fs:[eax],edx
 00647AD9    push        647AEE
 00647ADE    lea         eax,[ebp-0C]
 00647AE1    call        @LStrClr
 00647AE6    ret
>00647AE7    jmp         @HandleFinally
>00647AEC    jmp         00647ADE
 00647AEE    mov         esp,ebp
 00647AF0    pop         ebp
 00647AF1    ret
end;*}

//00647AF4
{*procedure sub_00647AF4(?:?);
begin
 00647AF4    push        ebp
 00647AF5    mov         ebp,esp
 00647AF7    add         esp,0FFFFFFEC
 00647AFA    xor         ecx,ecx
 00647AFC    mov         dword ptr [ebp-14],ecx
 00647AFF    mov         dword ptr [ebp-8],edx
 00647B02    mov         dword ptr [ebp-4],eax
 00647B05    xor         eax,eax
 00647B07    push        ebp
 00647B08    push        647BC8
 00647B0D    push        dword ptr fs:[eax]
 00647B10    mov         dword ptr fs:[eax],esp
 00647B13    mov         eax,dword ptr [ebp-4]
 00647B16    call        TStrings.BeginUpdate
 00647B1B    xor         eax,eax
 00647B1D    push        ebp
 00647B1E    push        647BAB
 00647B23    push        dword ptr fs:[eax]
 00647B26    mov         dword ptr fs:[eax],esp
 00647B29    mov         eax,dword ptr [ebp-4]
 00647B2C    mov         edx,dword ptr [eax]
 00647B2E    call        dword ptr [edx+44];TStrings.Clear
 00647B31    mov         eax,dword ptr [ebp-8]
 00647B34    mov         dword ptr [ebp-0C],eax
 00647B37    cmp         dword ptr [ebp-0C],0
>00647B3B    je          00647B95
>00647B3D    jmp         00647B8D
 00647B3F    mov         eax,dword ptr [ebp-0C]
 00647B42    mov         dword ptr [ebp-10],eax
>00647B45    jmp         00647B4A
 00647B47    inc         dword ptr [ebp-0C]
 00647B4A    mov         eax,dword ptr [ebp-0C]
 00647B4D    mov         al,byte ptr [eax]
 00647B4F    test        al,al
>00647B51    je          00647B5B
 00647B53    sub         al,0A
>00647B55    je          00647B5B
 00647B57    sub         al,3
>00647B59    jne         00647B47
 00647B5B    mov         ecx,dword ptr [ebp-0C]
 00647B5E    sub         ecx,dword ptr [ebp-10]
 00647B61    lea         eax,[ebp-14]
 00647B64    mov         edx,dword ptr [ebp-10]
 00647B67    call        @LStrFromPCharLen
 00647B6C    mov         edx,dword ptr [ebp-14]
 00647B6F    mov         eax,dword ptr [ebp-4]
 00647B72    mov         ecx,dword ptr [eax]
 00647B74    call        dword ptr [ecx+38];TStrings.sub_00646C94
 00647B77    mov         eax,dword ptr [ebp-0C]
 00647B7A    cmp         byte ptr [eax],0D
>00647B7D    jne         00647B82
 00647B7F    inc         dword ptr [ebp-0C]
 00647B82    mov         eax,dword ptr [ebp-0C]
 00647B85    cmp         byte ptr [eax],0A
>00647B88    jne         00647B8D
 00647B8A    inc         dword ptr [ebp-0C]
 00647B8D    mov         eax,dword ptr [ebp-0C]
 00647B90    cmp         byte ptr [eax],0
>00647B93    jne         00647B3F
 00647B95    xor         eax,eax
 00647B97    pop         edx
 00647B98    pop         ecx
 00647B99    pop         ecx
 00647B9A    mov         dword ptr fs:[eax],edx
 00647B9D    push        647BB2
 00647BA2    mov         eax,dword ptr [ebp-4]
 00647BA5    call        TStrings.EndUpdate
 00647BAA    ret
>00647BAB    jmp         @HandleFinally
>00647BB0    jmp         00647BA2
 00647BB2    xor         eax,eax
 00647BB4    pop         edx
 00647BB5    pop         ecx
 00647BB6    pop         ecx
 00647BB7    mov         dword ptr fs:[eax],edx
 00647BBA    push        647BCF
 00647BBF    lea         eax,[ebp-14]
 00647BC2    call        @LStrClr
 00647BC7    ret
>00647BC8    jmp         @HandleFinally
>00647BCD    jmp         00647BBF
 00647BCF    mov         esp,ebp
 00647BD1    pop         ebp
 00647BD2    ret
end;*}

//00647BD4
{*procedure sub_00647BD4(?:?);
begin
 00647BD4    push        ebp
 00647BD5    mov         ebp,esp
 00647BD7    add         esp,0FFFFFFF8
 00647BDA    mov         byte ptr [ebp-5],dl
 00647BDD    mov         dword ptr [ebp-4],eax
 00647BE0    pop         ecx
 00647BE1    pop         ecx
 00647BE2    pop         ebp
 00647BE3    ret
end;*}

//00647BE4
{*procedure sub_00647BE4(?:?; ?:AnsiString; ?:?);
begin
 00647BE4    push        ebp
 00647BE5    mov         ebp,esp
 00647BE7    add         esp,0FFFFFFEC
 00647BEA    push        ebx
 00647BEB    xor         ebx,ebx
 00647BED    mov         dword ptr [ebp-14],ebx
 00647BF0    mov         dword ptr [ebp-0C],ecx
 00647BF3    mov         dword ptr [ebp-8],edx
 00647BF6    mov         dword ptr [ebp-4],eax
 00647BF9    xor         eax,eax
 00647BFB    push        ebp
 00647BFC    push        647C7D
 00647C01    push        dword ptr fs:[eax]
 00647C04    mov         dword ptr fs:[eax],esp
 00647C07    mov         edx,dword ptr [ebp-8]
 00647C0A    mov         eax,dword ptr [ebp-4]
 00647C0D    mov         ecx,dword ptr [eax]
 00647C0F    call        dword ptr [ecx+58]
 00647C12    mov         dword ptr [ebp-10],eax
 00647C15    cmp         dword ptr [ebp-0C],0
>00647C19    je          00647C56
 00647C1B    cmp         dword ptr [ebp-10],0
>00647C1F    jge         00647C2E
 00647C21    xor         edx,edx
 00647C23    mov         eax,dword ptr [ebp-4]
 00647C26    mov         ecx,dword ptr [eax]
 00647C28    call        dword ptr [ecx+38]
 00647C2B    mov         dword ptr [ebp-10],eax
 00647C2E    push        dword ptr [ebp-8]
 00647C31    push        647C94;'='
 00647C36    push        dword ptr [ebp-0C]
 00647C39    lea         eax,[ebp-14]
 00647C3C    mov         edx,3
 00647C41    call        @LStrCatN
 00647C46    mov         ecx,dword ptr [ebp-14]
 00647C49    mov         edx,dword ptr [ebp-10]
 00647C4C    mov         eax,dword ptr [ebp-4]
 00647C4F    mov         ebx,dword ptr [eax]
 00647C51    call        dword ptr [ebx+20]
>00647C54    jmp         00647C67
 00647C56    cmp         dword ptr [ebp-10],0
>00647C5A    jl          00647C67
 00647C5C    mov         edx,dword ptr [ebp-10]
 00647C5F    mov         eax,dword ptr [ebp-4]
 00647C62    mov         ecx,dword ptr [eax]
 00647C64    call        dword ptr [ecx+48]
 00647C67    xor         eax,eax
 00647C69    pop         edx
 00647C6A    pop         ecx
 00647C6B    pop         ecx
 00647C6C    mov         dword ptr fs:[eax],edx
 00647C6F    push        647C84
 00647C74    lea         eax,[ebp-14]
 00647C77    call        @LStrClr
 00647C7C    ret
>00647C7D    jmp         @HandleFinally
>00647C82    jmp         00647C74
 00647C84    pop         ebx
 00647C85    mov         esp,ebp
 00647C87    pop         ebp
 00647C88    ret
end;*}

//00647C98
procedure TStrings.WriteData(Writer:TWriter);
begin
{*
 00647C98    push        ebp
 00647C99    mov         ebp,esp
 00647C9B    add         esp,0FFFFFFEC
 00647C9E    push        ebx
 00647C9F    xor         ecx,ecx
 00647CA1    mov         dword ptr [ebp-14],ecx
 00647CA4    mov         dword ptr [ebp-8],edx
 00647CA7    mov         dword ptr [ebp-4],eax
 00647CAA    xor         eax,eax
 00647CAC    push        ebp
 00647CAD    push        647D17
 00647CB2    push        dword ptr fs:[eax]
 00647CB5    mov         dword ptr fs:[eax],esp
 00647CB8    mov         eax,dword ptr [ebp-8]
 00647CBB    call        TWriter.WriteListBegin
 00647CC0    mov         eax,dword ptr [ebp-4]
 00647CC3    mov         edx,dword ptr [eax]
 00647CC5    call        dword ptr [edx+14]
 00647CC8    dec         eax
 00647CC9    test        eax,eax
>00647CCB    jl          00647CF9
 00647CCD    inc         eax
 00647CCE    mov         dword ptr [ebp-10],eax
 00647CD1    mov         dword ptr [ebp-0C],0
 00647CD8    lea         ecx,[ebp-14]
 00647CDB    mov         edx,dword ptr [ebp-0C]
 00647CDE    mov         eax,dword ptr [ebp-4]
 00647CE1    mov         ebx,dword ptr [eax]
 00647CE3    call        dword ptr [ebx+0C]
 00647CE6    mov         edx,dword ptr [ebp-14]
 00647CE9    mov         eax,dword ptr [ebp-8]
 00647CEC    call        TWriter.WriteString
 00647CF1    inc         dword ptr [ebp-0C]
 00647CF4    dec         dword ptr [ebp-10]
>00647CF7    jne         00647CD8
 00647CF9    mov         eax,dword ptr [ebp-8]
 00647CFC    call        TWriter.WriteListEnd
 00647D01    xor         eax,eax
 00647D03    pop         edx
 00647D04    pop         ecx
 00647D05    pop         ecx
 00647D06    mov         dword ptr fs:[eax],edx
 00647D09    push        647D1E
 00647D0E    lea         eax,[ebp-14]
 00647D11    call        @LStrClr
 00647D16    ret
>00647D17    jmp         @HandleFinally
>00647D1C    jmp         00647D0E
 00647D1E    pop         ebx
 00647D1F    mov         esp,ebp
 00647D21    pop         ebp
 00647D22    ret
*}
end;

//00647D24
{*function sub_00647D24(?:?; ?:?):?;
begin
 00647D24    push        ebp
 00647D25    mov         ebp,esp
 00647D27    add         esp,0FFFFFFF0
 00647D2A    mov         dword ptr [ebp-0C],ecx
 00647D2D    mov         dword ptr [ebp-8],edx
 00647D30    mov         dword ptr [ebp-4],eax
 00647D33    mov         edx,dword ptr [ebp-0C]
 00647D36    mov         eax,dword ptr [ebp-8]
 00647D39    call        AnsiCompareText
 00647D3E    mov         dword ptr [ebp-10],eax
 00647D41    mov         eax,dword ptr [ebp-10]
 00647D44    mov         esp,ebp
 00647D46    pop         ebp
 00647D47    ret
end;*}

//00647D48
destructor TStringList.Destroy;
begin
{*
 00647D48    push        ebp
 00647D49    mov         ebp,esp
 00647D4B    add         esp,0FFFFFFF8
 00647D4E    call        @BeforeDestruction
 00647D53    mov         byte ptr [ebp-5],dl
 00647D56    mov         dword ptr [ebp-4],eax
 00647D59    mov         eax,dword ptr [ebp-4]
 00647D5C    xor         edx,edx
 00647D5E    mov         dword ptr [eax+20],edx;TStringList.FOnChange:TNotifyEvent
 00647D61    mov         dword ptr [eax+24],edx;TStringList.?f24:dword
 00647D64    mov         eax,dword ptr [ebp-4]
 00647D67    xor         edx,edx
 00647D69    mov         dword ptr [eax+28],edx;TStringList.FOnChanging:TNotifyEvent
 00647D6C    mov         dword ptr [eax+2C],edx;TStringList.?f2C:dword
 00647D6F    mov         dl,byte ptr [ebp-5]
 00647D72    and         dl,0FC
 00647D75    mov         eax,dword ptr [ebp-4]
 00647D78    call        TStrings.Destroy
 00647D7D    mov         eax,dword ptr [ebp-4]
 00647D80    cmp         dword ptr [eax+14],0;TStringList.FCount:Integer
>00647D84    je          00647D9D
 00647D86    mov         eax,dword ptr [ebp-4]
 00647D89    mov         ecx,dword ptr [eax+14];TStringList.FCount:Integer
 00647D8C    mov         eax,dword ptr [ebp-4]
 00647D8F    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00647D92    mov         edx,dword ptr ds:[641B64];TStringItem
 00647D98    call        @FinalizeArray
 00647D9D    mov         eax,dword ptr [ebp-4]
 00647DA0    xor         edx,edx
 00647DA2    mov         dword ptr [eax+14],edx;TStringList.FCount:Integer
 00647DA5    xor         edx,edx
 00647DA7    mov         eax,dword ptr [ebp-4]
 00647DAA    mov         ecx,dword ptr [eax]
 00647DAC    call        dword ptr [ecx+28];TStringList.sub_00648570
 00647DAF    cmp         byte ptr [ebp-5],0
>00647DB3    jle         00647DBD
 00647DB5    mov         eax,dword ptr [ebp-4]
 00647DB8    call        @ClassDestroy
 00647DBD    pop         ecx
 00647DBE    pop         ecx
 00647DBF    pop         ebp
 00647DC0    ret
*}
end;

//00647DC4
{*function sub_00647DC4(?:?):?;
begin
 00647DC4    push        ebp
 00647DC5    mov         ebp,esp
 00647DC7    add         esp,0FFFFFFF4
 00647DCA    push        ebx
 00647DCB    mov         dword ptr [ebp-8],edx
 00647DCE    mov         dword ptr [ebp-4],eax
 00647DD1    xor         ecx,ecx
 00647DD3    mov         edx,dword ptr [ebp-8]
 00647DD6    mov         eax,dword ptr [ebp-4]
 00647DD9    mov         ebx,dword ptr [eax]
 00647DDB    call        dword ptr [ebx+3C];TStringList.sub_00647DEC
 00647DDE    mov         dword ptr [ebp-0C],eax
 00647DE1    mov         eax,dword ptr [ebp-0C]
 00647DE4    pop         ebx
 00647DE5    mov         esp,ebp
 00647DE7    pop         ebp
 00647DE8    ret
end;*}

//00647DEC
{*function sub_00647DEC(?:?; ?:?):?;
begin
 00647DEC    push        ebp
 00647DED    mov         ebp,esp
 00647DEF    add         esp,0FFFFFFF0
 00647DF2    push        ebx
 00647DF3    mov         dword ptr [ebp-0C],ecx
 00647DF6    mov         dword ptr [ebp-8],edx
 00647DF9    mov         dword ptr [ebp-4],eax
 00647DFC    mov         eax,dword ptr [ebp-4]
 00647DFF    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>00647E03    jne         00647E10
 00647E05    mov         eax,dword ptr [ebp-4]
 00647E08    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 00647E0B    mov         dword ptr [ebp-10],eax
>00647E0E    jmp         00647E45
 00647E10    lea         ecx,[ebp-10]
 00647E13    mov         edx,dword ptr [ebp-8]
 00647E16    mov         eax,dword ptr [ebp-4]
 00647E19    mov         ebx,dword ptr [eax]
 00647E1B    call        dword ptr [ebx+8C];TStringList.sub_00648098
 00647E21    test        al,al
>00647E23    je          00647E45
 00647E25    mov         eax,dword ptr [ebp-4]
 00647E28    mov         al,byte ptr [eax+1D];TStringList.FDuplicates:TDuplicates
 00647E2B    sub         al,1
>00647E2D    jb          00647E5A
 00647E2F    dec         al
>00647E31    je          00647E35
>00647E33    jmp         00647E45
 00647E35    mov         edx,dword ptr ds:[6EA068];^gvar_00654FC4
 00647E3B    xor         ecx,ecx
 00647E3D    mov         eax,dword ptr [ebp-4]
 00647E40    call        0064705C
 00647E45    mov         eax,dword ptr [ebp-0C]
 00647E48    push        eax
 00647E49    mov         ecx,dword ptr [ebp-8]
 00647E4C    mov         edx,dword ptr [ebp-10]
 00647E4F    mov         eax,dword ptr [ebp-4]
 00647E52    mov         ebx,dword ptr [eax]
 00647E54    call        dword ptr [ebx+88];TStringList.sub_00648330
 00647E5A    mov         eax,dword ptr [ebp-10]
 00647E5D    pop         ebx
 00647E5E    mov         esp,ebp
 00647E60    pop         ebp
 00647E61    ret
end;*}

//00647E64
procedure sub_00647E64;
begin
{*
 00647E64    push        ebp
 00647E65    mov         ebp,esp
 00647E67    push        ecx
 00647E68    push        ebx
 00647E69    mov         dword ptr [ebp-4],eax
 00647E6C    mov         eax,dword ptr [ebp-4]
 00647E6F    cmp         dword ptr [eax+8],0;TStringList.FUpdateCount:Integer
>00647E73    jne         00647E8B
 00647E75    mov         eax,dword ptr [ebp-4]
 00647E78    cmp         word ptr [eax+22],0;TStringList.?f22:word
>00647E7D    je          00647E8B
 00647E7F    mov         ebx,dword ptr [ebp-4]
 00647E82    mov         edx,dword ptr [ebp-4]
 00647E85    mov         eax,dword ptr [ebx+24];TStringList.?f24:dword
 00647E88    call        dword ptr [ebx+20];TStringList.FOnChange
 00647E8B    pop         ebx
 00647E8C    pop         ecx
 00647E8D    pop         ebp
 00647E8E    ret
*}
end;

//00647E90
procedure sub_00647E90;
begin
{*
 00647E90    push        ebp
 00647E91    mov         ebp,esp
 00647E93    push        ecx
 00647E94    push        ebx
 00647E95    mov         dword ptr [ebp-4],eax
 00647E98    mov         eax,dword ptr [ebp-4]
 00647E9B    cmp         dword ptr [eax+8],0;TStringList.FUpdateCount:Integer
>00647E9F    jne         00647EB7
 00647EA1    mov         eax,dword ptr [ebp-4]
 00647EA4    cmp         word ptr [eax+2A],0;TStringList.?f2A:word
>00647EA9    je          00647EB7
 00647EAB    mov         ebx,dword ptr [ebp-4]
 00647EAE    mov         edx,dword ptr [ebp-4]
 00647EB1    mov         eax,dword ptr [ebx+2C];TStringList.?f2C:dword
 00647EB4    call        dword ptr [ebx+28];TStringList.FOnChanging
 00647EB7    pop         ebx
 00647EB8    pop         ecx
 00647EB9    pop         ebp
 00647EBA    ret
*}
end;

//00647EBC
procedure TStringList.Clear;
begin
{*
 00647EBC    push        ebp
 00647EBD    mov         ebp,esp
 00647EBF    push        ecx
 00647EC0    mov         dword ptr [ebp-4],eax
 00647EC3    mov         eax,dword ptr [ebp-4]
 00647EC6    cmp         dword ptr [eax+14],0;TStringList.FCount:Integer
>00647ECA    je          00647F0B
 00647ECC    mov         eax,dword ptr [ebp-4]
 00647ECF    mov         edx,dword ptr [eax]
 00647ED1    call        dword ptr [edx+84];TStringList.sub_00647E90
 00647ED7    mov         eax,dword ptr [ebp-4]
 00647EDA    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00647EDD    mov         edx,dword ptr [ebp-4]
 00647EE0    mov         ecx,dword ptr [edx+14];TStringList.FCount:Integer
 00647EE3    mov         edx,dword ptr ds:[641B64];TStringItem
 00647EE9    call        @FinalizeArray
 00647EEE    mov         eax,dword ptr [ebp-4]
 00647EF1    xor         edx,edx
 00647EF3    mov         dword ptr [eax+14],edx;TStringList.FCount:Integer
 00647EF6    xor         edx,edx
 00647EF8    mov         eax,dword ptr [ebp-4]
 00647EFB    mov         ecx,dword ptr [eax]
 00647EFD    call        dword ptr [ecx+28];TStringList.sub_00648570
 00647F00    mov         eax,dword ptr [ebp-4]
 00647F03    mov         edx,dword ptr [eax]
 00647F05    call        dword ptr [edx+80];TStringList.sub_00647E64
 00647F0B    pop         ecx
 00647F0C    pop         ebp
 00647F0D    ret
*}
end;

//00647F10
{*procedure sub_00647F10(?:?);
begin
 00647F10    push        ebp
 00647F11    mov         ebp,esp
 00647F13    add         esp,0FFFFFFF8
 00647F16    push        ebx
 00647F17    mov         dword ptr [ebp-8],edx
 00647F1A    mov         dword ptr [ebp-4],eax
 00647F1D    cmp         dword ptr [ebp-8],0
>00647F21    jl          00647F2E
 00647F23    mov         eax,dword ptr [ebp-8]
 00647F26    mov         edx,dword ptr [ebp-4]
 00647F29    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00647F2C    jl          00647F3F
 00647F2E    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00647F34    mov         ecx,dword ptr [ebp-8]
 00647F37    mov         eax,dword ptr [ebp-4]
 00647F3A    call        0064705C
 00647F3F    mov         eax,dword ptr [ebp-4]
 00647F42    mov         edx,dword ptr [eax]
 00647F44    call        dword ptr [edx+84];TStringList.sub_00647E90
 00647F4A    mov         eax,dword ptr [ebp-4]
 00647F4D    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00647F50    mov         edx,dword ptr [ebp-8]
 00647F53    lea         eax,[eax+edx*8]
 00647F56    mov         edx,dword ptr ds:[641B64];TStringItem
 00647F5C    call        @Finalize
 00647F61    mov         eax,dword ptr [ebp-4]
 00647F64    dec         dword ptr [eax+14];TStringList.FCount:Integer
 00647F67    mov         eax,dword ptr [ebp-8]
 00647F6A    mov         edx,dword ptr [ebp-4]
 00647F6D    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00647F70    jge         00647F9E
 00647F72    mov         eax,dword ptr [ebp-4]
 00647F75    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 00647F78    sub         eax,dword ptr [ebp-8]
 00647F7B    mov         ecx,eax
 00647F7D    shl         ecx,3
 00647F80    mov         eax,dword ptr [ebp-4]
 00647F83    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00647F86    mov         edx,dword ptr [ebp-8]
 00647F89    lea         edx,[eax+edx*8]
 00647F8C    mov         eax,dword ptr [ebp-4]
 00647F8F    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00647F92    mov         ebx,dword ptr [ebp-8]
 00647F95    lea         eax,[eax+ebx*8+8]
 00647F99    call        Move
 00647F9E    mov         eax,dword ptr [ebp-4]
 00647FA1    mov         edx,dword ptr [eax]
 00647FA3    call        dword ptr [edx+80];TStringList.sub_00647E64
 00647FA9    pop         ebx
 00647FAA    pop         ecx
 00647FAB    pop         ecx
 00647FAC    pop         ebp
 00647FAD    ret
end;*}

//00647FB0
{*procedure sub_00647FB0(?:?; ?:?);
begin
 00647FB0    push        ebp
 00647FB1    mov         ebp,esp
 00647FB3    add         esp,0FFFFFFF4
 00647FB6    mov         dword ptr [ebp-0C],ecx
 00647FB9    mov         dword ptr [ebp-8],edx
 00647FBC    mov         dword ptr [ebp-4],eax
 00647FBF    cmp         dword ptr [ebp-8],0
>00647FC3    jl          00647FD0
 00647FC5    mov         eax,dword ptr [ebp-8]
 00647FC8    mov         edx,dword ptr [ebp-4]
 00647FCB    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00647FCE    jl          00647FE1
 00647FD0    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00647FD6    mov         ecx,dword ptr [ebp-8]
 00647FD9    mov         eax,dword ptr [ebp-4]
 00647FDC    call        0064705C
 00647FE1    cmp         dword ptr [ebp-0C],0
>00647FE5    jl          00647FF2
 00647FE7    mov         eax,dword ptr [ebp-0C]
 00647FEA    mov         edx,dword ptr [ebp-4]
 00647FED    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00647FF0    jl          00648003
 00647FF2    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00647FF8    mov         ecx,dword ptr [ebp-0C]
 00647FFB    mov         eax,dword ptr [ebp-4]
 00647FFE    call        0064705C
 00648003    mov         eax,dword ptr [ebp-4]
 00648006    mov         edx,dword ptr [eax]
 00648008    call        dword ptr [edx+84];TStringList.sub_00647E90
 0064800E    mov         ecx,dword ptr [ebp-0C]
 00648011    mov         edx,dword ptr [ebp-8]
 00648014    mov         eax,dword ptr [ebp-4]
 00648017    call        0064802C
 0064801C    mov         eax,dword ptr [ebp-4]
 0064801F    mov         edx,dword ptr [eax]
 00648021    call        dword ptr [edx+80];TStringList.sub_00647E64
 00648027    mov         esp,ebp
 00648029    pop         ebp
 0064802A    ret
end;*}

//0064802C
{*procedure sub_0064802C(?:TStringList; ?:?; ?:?);
begin
 0064802C    push        ebp
 0064802D    mov         ebp,esp
 0064802F    add         esp,0FFFFFFE8
 00648032    mov         dword ptr [ebp-0C],ecx
 00648035    mov         dword ptr [ebp-8],edx
 00648038    mov         dword ptr [ebp-4],eax
 0064803B    mov         eax,dword ptr [ebp-4]
 0064803E    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00648041    mov         edx,dword ptr [ebp-8]
 00648044    lea         eax,[eax+edx*8]
 00648047    mov         dword ptr [ebp-14],eax
 0064804A    mov         eax,dword ptr [ebp-4]
 0064804D    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00648050    mov         edx,dword ptr [ebp-0C]
 00648053    lea         eax,[eax+edx*8]
 00648056    mov         dword ptr [ebp-18],eax
 00648059    mov         eax,dword ptr [ebp-14]
 0064805C    mov         eax,dword ptr [eax]
 0064805E    mov         dword ptr [ebp-10],eax
 00648061    mov         eax,dword ptr [ebp-18]
 00648064    mov         eax,dword ptr [eax]
 00648066    mov         edx,dword ptr [ebp-14]
 00648069    mov         dword ptr [edx],eax
 0064806B    mov         eax,dword ptr [ebp-10]
 0064806E    mov         edx,dword ptr [ebp-18]
 00648071    mov         dword ptr [edx],eax
 00648073    mov         eax,dword ptr [ebp-14]
 00648076    mov         eax,dword ptr [eax+4]
 00648079    mov         dword ptr [ebp-10],eax
 0064807C    mov         eax,dword ptr [ebp-18]
 0064807F    mov         eax,dword ptr [eax+4]
 00648082    mov         edx,dword ptr [ebp-14]
 00648085    mov         dword ptr [edx+4],eax
 00648088    mov         eax,dword ptr [ebp-10]
 0064808B    mov         edx,dword ptr [ebp-18]
 0064808E    mov         dword ptr [edx+4],eax
 00648091    mov         esp,ebp
 00648093    pop         ebp
 00648094    ret
end;*}

//00648098
{*function sub_00648098(?:?; ?:?):?;
begin
 00648098    push        ebp
 00648099    mov         ebp,esp
 0064809B    add         esp,0FFFFFFE0
 0064809E    push        ebx
 0064809F    mov         dword ptr [ebp-0C],ecx
 006480A2    mov         dword ptr [ebp-8],edx
 006480A5    mov         dword ptr [ebp-4],eax
 006480A8    mov         byte ptr [ebp-0D],0
 006480AC    xor         eax,eax
 006480AE    mov         dword ptr [ebp-14],eax
 006480B1    mov         eax,dword ptr [ebp-4]
 006480B4    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 006480B7    dec         eax
 006480B8    mov         dword ptr [ebp-18],eax
 006480BB    mov         eax,dword ptr [ebp-14]
 006480BE    cmp         eax,dword ptr [ebp-18]
>006480C1    jg          0064811F
 006480C3    mov         eax,dword ptr [ebp-14]
 006480C6    add         eax,dword ptr [ebp-18]
 006480C9    shr         eax,1
 006480CB    mov         dword ptr [ebp-1C],eax
 006480CE    mov         eax,dword ptr [ebp-4]
 006480D1    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 006480D4    mov         edx,dword ptr [ebp-1C]
 006480D7    mov         edx,dword ptr [eax+edx*8]
 006480DA    mov         ecx,dword ptr [ebp-8]
 006480DD    mov         eax,dword ptr [ebp-4]
 006480E0    mov         ebx,dword ptr [eax]
 006480E2    call        dword ptr [ebx+34];TStringList.sub_006486AC
 006480E5    mov         dword ptr [ebp-20],eax
 006480E8    cmp         dword ptr [ebp-20],0
>006480EC    jge         006480F7
 006480EE    mov         eax,dword ptr [ebp-1C]
 006480F1    inc         eax
 006480F2    mov         dword ptr [ebp-14],eax
>006480F5    jmp         00648117
 006480F7    mov         eax,dword ptr [ebp-1C]
 006480FA    dec         eax
 006480FB    mov         dword ptr [ebp-18],eax
 006480FE    cmp         dword ptr [ebp-20],0
>00648102    jne         00648117
 00648104    mov         byte ptr [ebp-0D],1
 00648108    mov         eax,dword ptr [ebp-4]
 0064810B    cmp         byte ptr [eax+1D],1;TStringList.FDuplicates:TDuplicates
>0064810F    je          00648117
 00648111    mov         eax,dword ptr [ebp-1C]
 00648114    mov         dword ptr [ebp-14],eax
 00648117    mov         eax,dword ptr [ebp-14]
 0064811A    cmp         eax,dword ptr [ebp-18]
>0064811D    jle         006480C3
 0064811F    mov         eax,dword ptr [ebp-0C]
 00648122    mov         edx,dword ptr [ebp-14]
 00648125    mov         dword ptr [eax],edx
 00648127    mov         al,byte ptr [ebp-0D]
 0064812A    pop         ebx
 0064812B    mov         esp,ebp
 0064812D    pop         ebp
 0064812E    ret
end;*}

//00648130
{*procedure sub_00648130(?:?; ?:?);
begin
 00648130    push        ebp
 00648131    mov         ebp,esp
 00648133    add         esp,0FFFFFFF4
 00648136    mov         dword ptr [ebp-0C],ecx
 00648139    mov         dword ptr [ebp-8],edx
 0064813C    mov         dword ptr [ebp-4],eax
 0064813F    cmp         dword ptr [ebp-8],0
>00648143    jl          00648150
 00648145    mov         eax,dword ptr [ebp-8]
 00648148    mov         edx,dword ptr [ebp-4]
 0064814B    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0064814E    jl          00648161
 00648150    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00648156    mov         ecx,dword ptr [ebp-8]
 00648159    mov         eax,dword ptr [ebp-4]
 0064815C    call        0064705C
 00648161    mov         eax,dword ptr [ebp-0C]
 00648164    mov         edx,dword ptr [ebp-4]
 00648167    mov         edx,dword ptr [edx+10];TStringList.FList:PStringItemList
 0064816A    mov         ecx,dword ptr [ebp-8]
 0064816D    mov         edx,dword ptr [edx+ecx*8]
 00648170    call        @LStrAsg
 00648175    mov         esp,ebp
 00648177    pop         ebp
 00648178    ret
end;*}

//0064817C
{*function sub_0064817C:?;
begin
 0064817C    push        ebp
 0064817D    mov         ebp,esp
 0064817F    add         esp,0FFFFFFF8
 00648182    mov         dword ptr [ebp-4],eax
 00648185    mov         eax,dword ptr [ebp-4]
 00648188    mov         eax,dword ptr [eax+18];TStringList.FCapacity:Integer
 0064818B    mov         dword ptr [ebp-8],eax
 0064818E    mov         eax,dword ptr [ebp-8]
 00648191    pop         ecx
 00648192    pop         ecx
 00648193    pop         ebp
 00648194    ret
end;*}

//00648198
{*function sub_00648198:?;
begin
 00648198    push        ebp
 00648199    mov         ebp,esp
 0064819B    add         esp,0FFFFFFF8
 0064819E    mov         dword ptr [ebp-4],eax
 006481A1    mov         eax,dword ptr [ebp-4]
 006481A4    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 006481A7    mov         dword ptr [ebp-8],eax
 006481AA    mov         eax,dword ptr [ebp-8]
 006481AD    pop         ecx
 006481AE    pop         ecx
 006481AF    pop         ebp
 006481B0    ret
end;*}

//006481B4
{*function sub_006481B4(?:?):?;
begin
 006481B4    push        ebp
 006481B5    mov         ebp,esp
 006481B7    add         esp,0FFFFFFF4
 006481BA    mov         dword ptr [ebp-8],edx
 006481BD    mov         dword ptr [ebp-4],eax
 006481C0    cmp         dword ptr [ebp-8],0
>006481C4    jl          006481D1
 006481C6    mov         eax,dword ptr [ebp-8]
 006481C9    mov         edx,dword ptr [ebp-4]
 006481CC    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>006481CF    jl          006481E2
 006481D1    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 006481D7    mov         ecx,dword ptr [ebp-8]
 006481DA    mov         eax,dword ptr [ebp-4]
 006481DD    call        0064705C
 006481E2    mov         eax,dword ptr [ebp-4]
 006481E5    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 006481E8    mov         edx,dword ptr [ebp-8]
 006481EB    mov         eax,dword ptr [eax+edx*8+4]
 006481EF    mov         dword ptr [ebp-0C],eax
 006481F2    mov         eax,dword ptr [ebp-0C]
 006481F5    mov         esp,ebp
 006481F7    pop         ebp
 006481F8    ret
end;*}

//006481FC
procedure sub_006481FC(?:TStringList);
begin
{*
 006481FC    push        ebp
 006481FD    mov         ebp,esp
 006481FF    add         esp,0FFFFFFF8
 00648202    mov         dword ptr [ebp-4],eax
 00648205    mov         eax,dword ptr [ebp-4]
 00648208    cmp         dword ptr [eax+18],40
>0064820C    jle         00648223
 0064820E    mov         eax,dword ptr [ebp-4]
 00648211    mov         eax,dword ptr [eax+18]
 00648214    test        eax,eax
>00648216    jns         0064821B
 00648218    add         eax,3
 0064821B    sar         eax,2
 0064821E    mov         dword ptr [ebp-8],eax
>00648221    jmp         0064823C
 00648223    mov         eax,dword ptr [ebp-4]
 00648226    cmp         dword ptr [eax+18],8
>0064822A    jle         00648235
 0064822C    mov         dword ptr [ebp-8],10
>00648233    jmp         0064823C
 00648235    mov         dword ptr [ebp-8],4
 0064823C    mov         eax,dword ptr [ebp-4]
 0064823F    mov         edx,dword ptr [eax+18]
 00648242    add         edx,dword ptr [ebp-8]
 00648245    mov         eax,dword ptr [ebp-4]
 00648248    mov         ecx,dword ptr [eax]
 0064824A    call        dword ptr [ecx+28]
 0064824D    pop         ecx
 0064824E    pop         ecx
 0064824F    pop         ebp
 00648250    ret
*}
end;

//00648254
{*function sub_00648254(?:?):?;
begin
 00648254    push        ebp
 00648255    mov         ebp,esp
 00648257    add         esp,0FFFFFFF4
 0064825A    push        ebx
 0064825B    mov         dword ptr [ebp-8],edx
 0064825E    mov         dword ptr [ebp-4],eax
 00648261    mov         eax,dword ptr [ebp-4]
 00648264    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>00648268    jne         0064827A
 0064826A    mov         edx,dword ptr [ebp-8]
 0064826D    mov         eax,dword ptr [ebp-4]
 00648270    call        006474D4
 00648275    mov         dword ptr [ebp-0C],eax
>00648278    jmp         00648296
 0064827A    lea         ecx,[ebp-0C]
 0064827D    mov         edx,dword ptr [ebp-8]
 00648280    mov         eax,dword ptr [ebp-4]
 00648283    mov         ebx,dword ptr [eax]
 00648285    call        dword ptr [ebx+8C];TStringList.sub_00648098
 0064828B    test        al,al
>0064828D    jne         00648296
 0064828F    mov         dword ptr [ebp-0C],0FFFFFFFF
 00648296    mov         eax,dword ptr [ebp-0C]
 00648299    pop         ebx
 0064829A    mov         esp,ebp
 0064829C    pop         ebp
 0064829D    ret
end;*}

//006482A0
{*procedure sub_006482A0(?:?; ?:?);
begin
 006482A0    push        ebp
 006482A1    mov         ebp,esp
 006482A3    add         esp,0FFFFFFF4
 006482A6    push        ebx
 006482A7    mov         dword ptr [ebp-0C],ecx
 006482AA    mov         dword ptr [ebp-8],edx
 006482AD    mov         dword ptr [ebp-4],eax
 006482B0    push        0
 006482B2    mov         ecx,dword ptr [ebp-0C]
 006482B5    mov         edx,dword ptr [ebp-8]
 006482B8    mov         eax,dword ptr [ebp-4]
 006482BB    mov         ebx,dword ptr [eax]
 006482BD    call        dword ptr [ebx+64];TStringList.sub_006482C8
 006482C0    pop         ebx
 006482C1    mov         esp,ebp
 006482C3    pop         ebp
 006482C4    ret
end;*}

//006482C8
{*procedure sub_006482C8(?:?; ?:?; ?:?);
begin
 006482C8    push        ebp
 006482C9    mov         ebp,esp
 006482CB    add         esp,0FFFFFFF4
 006482CE    push        ebx
 006482CF    mov         dword ptr [ebp-0C],ecx
 006482D2    mov         dword ptr [ebp-8],edx
 006482D5    mov         dword ptr [ebp-4],eax
 006482D8    mov         eax,dword ptr [ebp-4]
 006482DB    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>006482DF    je          006482F1
 006482E1    mov         edx,dword ptr ds:[6EA0CC];^gvar_0065508C
 006482E7    xor         ecx,ecx
 006482E9    mov         eax,dword ptr [ebp-4]
 006482EC    call        0064705C
 006482F1    cmp         dword ptr [ebp-8],0
>006482F5    jl          00648302
 006482F7    mov         eax,dword ptr [ebp-8]
 006482FA    mov         edx,dword ptr [ebp-4]
 006482FD    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00648300    jle         00648313
 00648302    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00648308    mov         ecx,dword ptr [ebp-8]
 0064830B    mov         eax,dword ptr [ebp-4]
 0064830E    call        0064705C
 00648313    mov         eax,dword ptr [ebp+8]
 00648316    push        eax
 00648317    mov         ecx,dword ptr [ebp-0C]
 0064831A    mov         edx,dword ptr [ebp-8]
 0064831D    mov         eax,dword ptr [ebp-4]
 00648320    mov         ebx,dword ptr [eax]
 00648322    call        dword ptr [ebx+88];TStringList.sub_00648330
 00648328    pop         ebx
 00648329    mov         esp,ebp
 0064832B    pop         ebp
 0064832C    ret         4
end;*}

//00648330
{*procedure sub_00648330(?:?; ?:?; ?:?);
begin
 00648330    push        ebp
 00648331    mov         ebp,esp
 00648333    add         esp,0FFFFFFF0
 00648336    mov         dword ptr [ebp-0C],ecx
 00648339    mov         dword ptr [ebp-8],edx
 0064833C    mov         dword ptr [ebp-4],eax
 0064833F    mov         eax,dword ptr [ebp-4]
 00648342    mov         edx,dword ptr [eax]
 00648344    call        dword ptr [edx+84];TStringList.sub_00647E90
 0064834A    mov         eax,dword ptr [ebp-4]
 0064834D    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 00648350    mov         edx,dword ptr [ebp-4]
 00648353    cmp         eax,dword ptr [edx+18];TStringList.FCapacity:Integer
>00648356    jne         00648360
 00648358    mov         eax,dword ptr [ebp-4]
 0064835B    call        006481FC
 00648360    mov         eax,dword ptr [ebp-8]
 00648363    mov         edx,dword ptr [ebp-4]
 00648366    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>00648369    jge         00648395
 0064836B    mov         eax,dword ptr [ebp-4]
 0064836E    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00648371    mov         edx,dword ptr [ebp-8]
 00648374    lea         edx,[eax+edx*8+8]
 00648378    mov         eax,dword ptr [ebp-4]
 0064837B    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0064837E    mov         ecx,dword ptr [ebp-8]
 00648381    lea         eax,[eax+ecx*8]
 00648384    mov         ecx,dword ptr [ebp-4]
 00648387    mov         ecx,dword ptr [ecx+14]
 0064838A    sub         ecx,dword ptr [ebp-8]
 0064838D    shl         ecx,3
 00648390    call        Move
 00648395    mov         eax,dword ptr [ebp-4]
 00648398    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0064839B    mov         edx,dword ptr [ebp-8]
 0064839E    lea         eax,[eax+edx*8]
 006483A1    mov         dword ptr [ebp-10],eax
 006483A4    mov         eax,dword ptr [ebp-10]
 006483A7    xor         edx,edx
 006483A9    mov         dword ptr [eax],edx
 006483AB    mov         eax,dword ptr [ebp+8]
 006483AE    mov         edx,dword ptr [ebp-10]
 006483B1    mov         dword ptr [edx+4],eax
 006483B4    mov         eax,dword ptr [ebp-10]
 006483B7    mov         edx,dword ptr [ebp-0C]
 006483BA    call        @LStrAsg
 006483BF    mov         eax,dword ptr [ebp-4]
 006483C2    inc         dword ptr [eax+14];TStringList.FCount:Integer
 006483C5    mov         eax,dword ptr [ebp-4]
 006483C8    mov         edx,dword ptr [eax]
 006483CA    call        dword ptr [edx+80];TStringList.sub_00647E64
 006483D0    mov         esp,ebp
 006483D2    pop         ebp
 006483D3    ret         4
end;*}

//006483D8
{*procedure sub_006483D8(?:?; ?:?);
begin
 006483D8    push        ebp
 006483D9    mov         ebp,esp
 006483DB    add         esp,0FFFFFFF4
 006483DE    mov         dword ptr [ebp-0C],ecx
 006483E1    mov         dword ptr [ebp-8],edx
 006483E4    mov         dword ptr [ebp-4],eax
 006483E7    mov         eax,dword ptr [ebp-4]
 006483EA    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>006483EE    je          00648400
 006483F0    mov         edx,dword ptr ds:[6EA0CC];^gvar_0065508C
 006483F6    xor         ecx,ecx
 006483F8    mov         eax,dword ptr [ebp-4]
 006483FB    call        0064705C
 00648400    cmp         dword ptr [ebp-8],0
>00648404    jl          00648411
 00648406    mov         eax,dword ptr [ebp-8]
 00648409    mov         edx,dword ptr [ebp-4]
 0064840C    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0064840F    jl          00648422
 00648411    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00648417    mov         ecx,dword ptr [ebp-8]
 0064841A    mov         eax,dword ptr [ebp-4]
 0064841D    call        0064705C
 00648422    mov         eax,dword ptr [ebp-4]
 00648425    mov         edx,dword ptr [eax]
 00648427    call        dword ptr [edx+84];TStringList.sub_00647E90
 0064842D    mov         eax,dword ptr [ebp-4]
 00648430    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00648433    mov         edx,dword ptr [ebp-8]
 00648436    lea         eax,[eax+edx*8]
 00648439    mov         edx,dword ptr [ebp-0C]
 0064843C    call        @LStrAsg
 00648441    mov         eax,dword ptr [ebp-4]
 00648444    mov         edx,dword ptr [eax]
 00648446    call        dword ptr [edx+80];TStringList.sub_00647E64
 0064844C    mov         esp,ebp
 0064844E    pop         ebp
 0064844F    ret
end;*}

//00648450
{*procedure sub_00648450(?:?; ?:?);
begin
 00648450    push        ebp
 00648451    mov         ebp,esp
 00648453    add         esp,0FFFFFFF4
 00648456    mov         dword ptr [ebp-0C],ecx
 00648459    mov         dword ptr [ebp-8],edx
 0064845C    mov         dword ptr [ebp-4],eax
 0064845F    cmp         dword ptr [ebp-8],0
>00648463    jl          00648470
 00648465    mov         eax,dword ptr [ebp-8]
 00648468    mov         edx,dword ptr [ebp-4]
 0064846B    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0064846E    jl          00648481
 00648470    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00648476    mov         ecx,dword ptr [ebp-8]
 00648479    mov         eax,dword ptr [ebp-4]
 0064847C    call        0064705C
 00648481    mov         eax,dword ptr [ebp-4]
 00648484    mov         edx,dword ptr [eax]
 00648486    call        dword ptr [edx+84];TStringList.sub_00647E90
 0064848C    mov         eax,dword ptr [ebp-4]
 0064848F    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 00648492    mov         edx,dword ptr [ebp-8]
 00648495    mov         ecx,dword ptr [ebp-0C]
 00648498    mov         dword ptr [eax+edx*8+4],ecx
 0064849C    mov         eax,dword ptr [ebp-4]
 0064849F    mov         edx,dword ptr [eax]
 006484A1    call        dword ptr [edx+80];TStringList.sub_00647E64
 006484A7    mov         esp,ebp
 006484A9    pop         ebp
 006484AA    ret
end;*}

//006484AC
{*procedure sub_006484AC(?:TStringList; ?:?; ?:?; ?:?);
begin
 006484AC    push        ebp
 006484AD    mov         ebp,esp
 006484AF    add         esp,0FFFFFFE8
 006484B2    mov         dword ptr [ebp-0C],ecx
 006484B5    mov         dword ptr [ebp-8],edx
 006484B8    mov         dword ptr [ebp-4],eax
 006484BB    mov         eax,dword ptr [ebp-8]
 006484BE    mov         dword ptr [ebp-10],eax
 006484C1    mov         eax,dword ptr [ebp-0C]
 006484C4    mov         dword ptr [ebp-14],eax
 006484C7    mov         eax,dword ptr [ebp-8]
 006484CA    add         eax,dword ptr [ebp-0C]
 006484CD    shr         eax,1
 006484CF    mov         dword ptr [ebp-18],eax
>006484D2    jmp         006484D7
 006484D4    inc         dword ptr [ebp-10]
 006484D7    mov         ecx,dword ptr [ebp-18]
 006484DA    mov         edx,dword ptr [ebp-10]
 006484DD    mov         eax,dword ptr [ebp-4]
 006484E0    call        dword ptr [ebp+8]
 006484E3    test        eax,eax
>006484E5    jl          006484D4
>006484E7    jmp         006484EC
 006484E9    dec         dword ptr [ebp-14]
 006484EC    mov         ecx,dword ptr [ebp-18]
 006484EF    mov         edx,dword ptr [ebp-14]
 006484F2    mov         eax,dword ptr [ebp-4]
 006484F5    call        dword ptr [ebp+8]
 006484F8    test        eax,eax
>006484FA    jg          006484E9
 006484FC    mov         eax,dword ptr [ebp-10]
 006484FF    cmp         eax,dword ptr [ebp-14]
>00648502    jg          00648536
 00648504    mov         ecx,dword ptr [ebp-14]
 00648507    mov         edx,dword ptr [ebp-10]
 0064850A    mov         eax,dword ptr [ebp-4]
 0064850D    call        0064802C
 00648512    mov         eax,dword ptr [ebp-18]
 00648515    cmp         eax,dword ptr [ebp-10]
>00648518    jne         00648522
 0064851A    mov         eax,dword ptr [ebp-14]
 0064851D    mov         dword ptr [ebp-18],eax
>00648520    jmp         00648530
 00648522    mov         eax,dword ptr [ebp-18]
 00648525    cmp         eax,dword ptr [ebp-14]
>00648528    jne         00648530
 0064852A    mov         eax,dword ptr [ebp-10]
 0064852D    mov         dword ptr [ebp-18],eax
 00648530    inc         dword ptr [ebp-10]
 00648533    dec         dword ptr [ebp-14]
 00648536    mov         eax,dword ptr [ebp-10]
 00648539    cmp         eax,dword ptr [ebp-14]
>0064853C    jle         006484D7
 0064853E    mov         eax,dword ptr [ebp-8]
 00648541    cmp         eax,dword ptr [ebp-14]
>00648544    jge         00648558
 00648546    mov         eax,dword ptr [ebp+8]
 00648549    push        eax
 0064854A    mov         ecx,dword ptr [ebp-14]
 0064854D    mov         edx,dword ptr [ebp-8]
 00648550    mov         eax,dword ptr [ebp-4]
 00648553    call        006484AC
 00648558    mov         eax,dword ptr [ebp-10]
 0064855B    mov         dword ptr [ebp-8],eax
 0064855E    mov         eax,dword ptr [ebp-10]
 00648561    cmp         eax,dword ptr [ebp-0C]
>00648564    jl          006484BB
 0064856A    mov         esp,ebp
 0064856C    pop         ebp
 0064856D    ret         4
end;*}

//00648570
{*procedure sub_00648570(?:?);
begin
 00648570    push        ebp
 00648571    mov         ebp,esp
 00648573    add         esp,0FFFFFFF8
 00648576    mov         dword ptr [ebp-8],edx
 00648579    mov         dword ptr [ebp-4],eax
 0064857C    mov         edx,dword ptr [ebp-8]
 0064857F    shl         edx,3
 00648582    mov         eax,dword ptr [ebp-4]
 00648585    add         eax,10;TStringList.FList:PStringItemList
 00648588    call        @ReallocMem
 0064858D    mov         eax,dword ptr [ebp-8]
 00648590    mov         edx,dword ptr [ebp-4]
 00648593    mov         dword ptr [edx+18],eax;TStringList.FCapacity:Integer
 00648596    pop         ecx
 00648597    pop         ecx
 00648598    pop         ebp
 00648599    ret
end;*}

//0064859C
{*procedure sub_0064859C(?:TStringList; ?:?);
begin
 0064859C    push        ebp
 0064859D    mov         ebp,esp
 0064859F    add         esp,0FFFFFFF8
 006485A2    mov         byte ptr [ebp-5],dl
 006485A5    mov         dword ptr [ebp-4],eax
 006485A8    mov         eax,dword ptr [ebp-4]
 006485AB    mov         al,byte ptr [eax+1C];TStringList.FSorted:Boolean
 006485AE    cmp         al,byte ptr [ebp-5]
>006485B1    je          006485CD
 006485B3    cmp         byte ptr [ebp-5],0
>006485B7    je          006485C4
 006485B9    mov         eax,dword ptr [ebp-4]
 006485BC    mov         edx,dword ptr [eax]
 006485BE    call        dword ptr [edx+90];TStringList.sub_00648640
 006485C4    mov         al,byte ptr [ebp-5]
 006485C7    mov         edx,dword ptr [ebp-4]
 006485CA    mov         byte ptr [edx+1C],al;TStringList.FSorted:Boolean
 006485CD    pop         ecx
 006485CE    pop         ecx
 006485CF    pop         ebp
 006485D0    ret
end;*}

//006485D4
{*procedure sub_006485D4(?:?);
begin
 006485D4    push        ebp
 006485D5    mov         ebp,esp
 006485D7    add         esp,0FFFFFFF8
 006485DA    mov         byte ptr [ebp-5],dl
 006485DD    mov         dword ptr [ebp-4],eax
 006485E0    cmp         byte ptr [ebp-5],0
>006485E4    je          006485F3
 006485E6    mov         eax,dword ptr [ebp-4]
 006485E9    mov         edx,dword ptr [eax]
 006485EB    call        dword ptr [edx+84];TStringList.sub_00647E90
>006485F1    jmp         006485FE
 006485F3    mov         eax,dword ptr [ebp-4]
 006485F6    mov         edx,dword ptr [eax]
 006485F8    call        dword ptr [edx+80];TStringList.sub_00647E64
 006485FE    pop         ecx
 006485FF    pop         ecx
 00648600    pop         ebp
 00648601    ret
end;*}

//00648640
procedure sub_00648640;
begin
{*
 00648640    push        ebp
 00648641    mov         ebp,esp
 00648643    push        ecx
 00648644    mov         dword ptr [ebp-4],eax
 00648647    mov         edx,648604
 0064864C    mov         eax,dword ptr [ebp-4]
 0064864F    mov         ecx,dword ptr [eax]
 00648651    call        dword ptr [ecx+94];TStringList.sub_0064865C
 00648657    pop         ecx
 00648658    pop         ebp
 00648659    ret
*}
end;

//0064865C
{*procedure sub_0064865C(?:?);
begin
 0064865C    push        ebp
 0064865D    mov         ebp,esp
 0064865F    add         esp,0FFFFFFF8
 00648662    mov         dword ptr [ebp-8],edx
 00648665    mov         dword ptr [ebp-4],eax
 00648668    mov         eax,dword ptr [ebp-4]
 0064866B    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>0064866F    jne         006486A5
 00648671    mov         eax,dword ptr [ebp-4]
 00648674    cmp         dword ptr [eax+14],1;TStringList.FCount:Integer
>00648678    jle         006486A5
 0064867A    mov         eax,dword ptr [ebp-4]
 0064867D    mov         edx,dword ptr [eax]
 0064867F    call        dword ptr [edx+84];TStringList.sub_00647E90
 00648685    mov         eax,dword ptr [ebp-8]
 00648688    push        eax
 00648689    mov         eax,dword ptr [ebp-4]
 0064868C    mov         ecx,dword ptr [eax+14];TStringList.FCount:Integer
 0064868F    dec         ecx
 00648690    xor         edx,edx
 00648692    mov         eax,dword ptr [ebp-4]
 00648695    call        006484AC
 0064869A    mov         eax,dword ptr [ebp-4]
 0064869D    mov         edx,dword ptr [eax]
 0064869F    call        dword ptr [edx+80];TStringList.sub_00647E64
 006486A5    pop         ecx
 006486A6    pop         ecx
 006486A7    pop         ebp
 006486A8    ret
end;*}

//006486AC
{*function sub_006486AC(?:?; ?:?):?;
begin
 006486AC    push        ebp
 006486AD    mov         ebp,esp
 006486AF    add         esp,0FFFFFFF0
 006486B2    mov         dword ptr [ebp-0C],ecx
 006486B5    mov         dword ptr [ebp-8],edx
 006486B8    mov         dword ptr [ebp-4],eax
 006486BB    mov         eax,dword ptr [ebp-4]
 006486BE    cmp         byte ptr [eax+1E],0;TStringList.FCaseSensitive:Boolean
>006486C2    je          006486D4
 006486C4    mov         edx,dword ptr [ebp-0C]
 006486C7    mov         eax,dword ptr [ebp-8]
 006486CA    call        00657738
 006486CF    mov         dword ptr [ebp-10],eax
>006486D2    jmp         006486E2
 006486D4    mov         edx,dword ptr [ebp-0C]
 006486D7    mov         eax,dword ptr [ebp-8]
 006486DA    call        AnsiCompareText
 006486DF    mov         dword ptr [ebp-10],eax
 006486E2    mov         eax,dword ptr [ebp-10]
 006486E5    mov         esp,ebp
 006486E7    pop         ebp
 006486E8    ret
end;*}

//006486EC
function TStream.GetPosition:Int64;
begin
{*
 006486EC    push        ebp
 006486ED    mov         ebp,esp
 006486EF    add         esp,0FFFFFFF0
 006486F2    mov         dword ptr [ebp-4],eax
 006486F5    push        0
 006486F7    push        0
 006486F9    mov         dl,1
 006486FB    mov         eax,dword ptr [ebp-4]
 006486FE    mov         ecx,dword ptr [eax]
 00648700    call        dword ptr [ecx+14]
 00648703    mov         dword ptr [ebp-10],eax
 00648706    mov         dword ptr [ebp-0C],edx
 00648709    mov         eax,dword ptr [ebp-10]
 0064870C    mov         edx,dword ptr [ebp-0C]
 0064870F    mov         esp,ebp
 00648711    pop         ebp
 00648712    ret
*}
end;

//00648714
procedure TStream.SetPosition(const Pos:Int64);
begin
{*
 00648714    push        ebp
 00648715    mov         ebp,esp
 00648717    push        ecx
 00648718    mov         dword ptr [ebp-4],eax
 0064871B    push        dword ptr [ebp+0C]
 0064871E    push        dword ptr [ebp+8]
 00648721    xor         edx,edx
 00648723    mov         eax,dword ptr [ebp-4]
 00648726    mov         ecx,dword ptr [eax]
 00648728    call        dword ptr [ecx+14]
 0064872B    pop         ecx
 0064872C    pop         ebp
 0064872D    ret         8
*}
end;

//00648730
function TStream.GetSize:Int64;
begin
{*
 00648730    push        ebp
 00648731    mov         ebp,esp
 00648733    add         esp,0FFFFFFE8
 00648736    mov         dword ptr [ebp-4],eax
 00648739    push        0
 0064873B    push        0
 0064873D    mov         dl,1
 0064873F    mov         eax,dword ptr [ebp-4]
 00648742    mov         ecx,dword ptr [eax]
 00648744    call        dword ptr [ecx+14]
 00648747    mov         dword ptr [ebp-18],eax
 0064874A    mov         dword ptr [ebp-14],edx
 0064874D    push        0
 0064874F    push        0
 00648751    mov         dl,2
 00648753    mov         eax,dword ptr [ebp-4]
 00648756    mov         ecx,dword ptr [eax]
 00648758    call        dword ptr [ecx+14]
 0064875B    mov         dword ptr [ebp-10],eax
 0064875E    mov         dword ptr [ebp-0C],edx
 00648761    push        dword ptr [ebp-14]
 00648764    push        dword ptr [ebp-18]
 00648767    xor         edx,edx
 00648769    mov         eax,dword ptr [ebp-4]
 0064876C    mov         ecx,dword ptr [eax]
 0064876E    call        dword ptr [ecx+14]
 00648771    mov         eax,dword ptr [ebp-10]
 00648774    mov         edx,dword ptr [ebp-0C]
 00648777    mov         esp,ebp
 00648779    pop         ebp
 0064877A    ret
*}
end;

//0064877C
{*procedure sub_0064877C(?:?);
begin
 0064877C    push        ebp
 0064877D    mov         ebp,esp
 0064877F    add         esp,0FFFFFFF8
 00648782    mov         dword ptr [ebp-8],edx
 00648785    mov         dword ptr [ebp-4],eax
 00648788    pop         ecx
 00648789    pop         ecx
 0064878A    pop         ebp
 0064878B    ret
end;*}

//0064878C
procedure TStream.SetSize64(const NewSize:Int64);
begin
{*
 0064878C    push        ebp
 0064878D    mov         ebp,esp
 0064878F    push        ecx
 00648790    mov         dword ptr [ebp-4],eax
 00648793    push        dword ptr [ebp+0C]
 00648796    push        dword ptr [ebp+8]
 00648799    mov         eax,dword ptr [ebp-4]
 0064879C    mov         edx,dword ptr [eax]
 0064879E    call        dword ptr [edx+4]
 006487A1    pop         ecx
 006487A2    pop         ebp
 006487A3    ret         8
*}
end;

//006487A8
{*procedure sub_006487A8(?:?; ?:?);
begin
 006487A8    push        ebp
 006487A9    mov         ebp,esp
 006487AB    push        ecx
 006487AC    mov         dword ptr [ebp-4],eax
 006487AF    cmp         dword ptr [ebp+0C],0FFFFFFFF
>006487B3    jne         006487C0
 006487B5    cmp         dword ptr [ebp+8],80000000
>006487BC    jb          006487D5
>006487BE    jmp         006487C2
>006487C0    jl          006487D5
 006487C2    cmp         dword ptr [ebp+0C],0
>006487C6    jne         006487D3
 006487C8    cmp         dword ptr [ebp+8],7FFFFFFF
>006487CF    jbe         006487EC
>006487D1    jmp         006487D5
>006487D3    jle         006487EC
 006487D5    mov         ecx,dword ptr ds:[6EA168];^^gvar_006EA390
 006487DB    mov         dl,1
 006487DD    mov         eax,[00656AA8];ERangeError
 006487E2    call        Exception.Create;ERangeError.Create
 006487E7    call        @RaiseExcept
 006487EC    mov         eax,dword ptr [ebp+8]
 006487EF    mov         edx,eax
 006487F1    mov         eax,dword ptr [ebp-4]
 006487F4    mov         ecx,dword ptr [eax]
 006487F6    call        dword ptr [ecx];TStream.sub_0064877C
 006487F8    pop         ecx
 006487F9    pop         ebp
 006487FA    ret         8
end;*}

//00648800
procedure RaiseException;
begin
{*
 00648800    push        ebp
 00648801    mov         ebp,esp
 00648803    add         esp,0FFFFFEF8
 00648809    lea         edx,[ebp-108]
 0064880F    mov         eax,dword ptr [ebp+8]
 00648812    mov         eax,dword ptr [eax-4]
 00648815    mov         eax,dword ptr [eax]
 00648817    call        TObject.ClassName
 0064881C    lea         eax,[ebp-108]
 00648822    mov         dword ptr [ebp-8],eax
 00648825    mov         byte ptr [ebp-4],4
 00648829    lea         eax,[ebp-8]
 0064882C    push        eax
 0064882D    push        0
 0064882F    mov         ecx,dword ptr ds:[6EA0C8]
 00648835    mov         dl,1
 00648837    mov         eax,[00641DAC];EStreamError
 0064883C    call        Exception.CreateResFmt
 00648841    call        @RaiseExcept
 00648846    mov         esp,ebp
 00648848    pop         ebp
 00648849    ret
*}
end;

//0064884C
{*function sub_0064884C(?:?; ?:?):?;
begin
 0064884C    push        ebp
 0064884D    mov         ebp,esp
 0064884F    add         esp,0FFFFFFD8
 00648852    mov         word ptr [ebp-1E],cx
 00648856    mov         dword ptr [ebp-1C],edx
 00648859    mov         dword ptr [ebp-4],eax
 0064885C    mov         eax,dword ptr [ebp-4]
 0064885F    mov         dword ptr [ebp-0C],eax
 00648862    mov         eax,dword ptr [eax]
 00648864    mov         eax,dword ptr [eax+14]
 00648867    mov         dword ptr [ebp-10],eax
 0064886A    mov         eax,dword ptr [ebp-4]
 0064886D    call        TObject.ClassType
 00648872    mov         dword ptr [ebp-28],eax
>00648875    jmp         00648882
 00648877    mov         eax,dword ptr [ebp-28]
 0064887A    call        TObject.ClassParent
 0064887F    mov         dword ptr [ebp-28],eax
 00648882    cmp         dword ptr [ebp-28],0
>00648886    je          00648893
 00648888    mov         eax,dword ptr [ebp-28]
 0064888B    cmp         eax,dword ptr ds:[6429C8];TStream
>00648891    jne         00648877
 00648893    cmp         dword ptr [ebp-28],0
>00648897    jne         006488A0
 00648899    push        ebp
 0064889A    call        RaiseException
 0064889F    pop         ecx
 006488A0    lea         eax,[ebp-28]
 006488A3    mov         dword ptr [ebp-14],eax
 006488A6    mov         eax,dword ptr [eax]
 006488A8    mov         eax,dword ptr [eax+14]
 006488AB    mov         dword ptr [ebp-18],eax
 006488AE    mov         eax,dword ptr [ebp-10]
 006488B1    cmp         eax,dword ptr [ebp-18]
>006488B4    jne         006488BD
 006488B6    push        ebp
 006488B7    call        RaiseException
 006488BC    pop         ecx
 006488BD    mov         eax,dword ptr [ebp-1C]
 006488C0    cdq
 006488C1    push        edx
 006488C2    push        eax
 006488C3    mov         dl,byte ptr [ebp-1E]
 006488C6    mov         eax,dword ptr [ebp-4]
 006488C9    mov         ecx,dword ptr [eax]
 006488CB    call        dword ptr [ecx+14];TStream.sub_006488D8
 006488CE    mov         dword ptr [ebp-24],eax
 006488D1    mov         eax,dword ptr [ebp-24]
 006488D4    mov         esp,ebp
 006488D6    pop         ebp
 006488D7    ret
end;*}

//006488D8
{*procedure sub_006488D8(?:?; ?:?; ?:?);
begin
 006488D8    push        ebp
 006488D9    mov         ebp,esp
 006488DB    add         esp,0FFFFFFF0
 006488DE    push        ebx
 006488DF    mov         byte ptr [ebp-5],dl
 006488E2    mov         dword ptr [ebp-4],eax
 006488E5    cmp         dword ptr [ebp+0C],0FFFFFFFF
>006488E9    jne         006488F6
 006488EB    cmp         dword ptr [ebp+8],80000000
>006488F2    jb          0064890B
>006488F4    jmp         006488F8
>006488F6    jl          0064890B
 006488F8    cmp         dword ptr [ebp+0C],0
>006488FC    jne         00648909
 006488FE    cmp         dword ptr [ebp+8],7FFFFFFF
>00648905    jbe         00648922
>00648907    jmp         0064890B
>00648909    jle         00648922
 0064890B    mov         ecx,dword ptr ds:[6EA168];^^gvar_006EA390
 00648911    mov         dl,1
 00648913    mov         eax,[00656AA8];ERangeError
 00648918    call        Exception.Create;ERangeError.Create
 0064891D    call        @RaiseExcept
 00648922    mov         eax,dword ptr [ebp+8]
 00648925    mov         edx,eax
 00648927    xor         ecx,ecx
 00648929    mov         cl,byte ptr [ebp-5]
 0064892C    mov         eax,dword ptr [ebp-4]
 0064892F    mov         ebx,dword ptr [eax]
 00648931    call        dword ptr [ebx+10];TStream.sub_0064884C
 00648934    cdq
 00648935    mov         dword ptr [ebp-10],eax
 00648938    mov         dword ptr [ebp-0C],edx
 0064893B    mov         eax,dword ptr [ebp-10]
 0064893E    mov         edx,dword ptr [ebp-0C]
 00648941    pop         ebx
 00648942    mov         esp,ebp
 00648944    pop         ebp
 00648945    ret         8
end;*}

//00648948
procedure TStream.ReadBuffer(var Buffer:void ; Count:Longint);
begin
{*
 00648948    push        ebp
 00648949    mov         ebp,esp
 0064894B    add         esp,0FFFFFFF4
 0064894E    push        ebx
 0064894F    mov         dword ptr [ebp-0C],ecx
 00648952    mov         dword ptr [ebp-8],edx
 00648955    mov         dword ptr [ebp-4],eax
 00648958    cmp         dword ptr [ebp-0C],0
>0064895C    je          00648988
 0064895E    mov         edx,dword ptr [ebp-8]
 00648961    mov         ecx,dword ptr [ebp-0C]
 00648964    mov         eax,dword ptr [ebp-4]
 00648967    mov         ebx,dword ptr [eax]
 00648969    call        dword ptr [ebx+8]
 0064896C    cmp         eax,dword ptr [ebp-0C]
>0064896F    je          00648988
 00648971    mov         ecx,dword ptr ds:[6EA0B8];^gvar_00655064
 00648977    mov         dl,1
 00648979    mov         eax,[00641F14];EReadError
 0064897E    call        Exception.Create
 00648983    call        @RaiseExcept
 00648988    pop         ebx
 00648989    mov         esp,ebp
 0064898B    pop         ebp
 0064898C    ret
*}
end;

//00648990
procedure TStream.WriteBuffer(const Buffer:void ; Count:Longint);
begin
{*
 00648990    push        ebp
 00648991    mov         ebp,esp
 00648993    add         esp,0FFFFFFF4
 00648996    push        ebx
 00648997    mov         dword ptr [ebp-0C],ecx
 0064899A    mov         dword ptr [ebp-8],edx
 0064899D    mov         dword ptr [ebp-4],eax
 006489A0    cmp         dword ptr [ebp-0C],0
>006489A4    je          006489D0
 006489A6    mov         edx,dword ptr [ebp-8]
 006489A9    mov         ecx,dword ptr [ebp-0C]
 006489AC    mov         eax,dword ptr [ebp-4]
 006489AF    mov         ebx,dword ptr [eax]
 006489B1    call        dword ptr [ebx+0C]
 006489B4    cmp         eax,dword ptr [ebp-0C]
>006489B7    je          006489D0
 006489B9    mov         ecx,dword ptr ds:[6EA0DC]
 006489BF    mov         dl,1
 006489C1    mov         eax,[00641F6C];EWriteError
 006489C6    call        Exception.Create
 006489CB    call        @RaiseExcept
 006489D0    pop         ebx
 006489D1    mov         esp,ebp
 006489D3    pop         ebp
 006489D4    ret
*}
end;

//006489D8
function TStream.CopyFrom(Source:TStream; Count:Int64):Int64;
begin
{*
 006489D8    push        ebp
 006489D9    mov         ebp,esp
 006489DB    add         esp,0FFFFFFE4
 006489DE    mov         dword ptr [ebp-8],edx
 006489E1    mov         dword ptr [ebp-4],eax
 006489E4    cmp         dword ptr [ebp+0C],0
>006489E8    jne         00648A0A
 006489EA    cmp         dword ptr [ebp+8],0
>006489EE    jne         00648A0A
 006489F0    push        0
 006489F2    push        0
 006489F4    mov         eax,dword ptr [ebp-8]
 006489F7    call        TStream.SetPosition
 006489FC    mov         eax,dword ptr [ebp-8]
 006489FF    call        TStream.GetSize
 00648A04    mov         dword ptr [ebp+8],eax
 00648A07    mov         dword ptr [ebp+0C],edx
 00648A0A    mov         eax,dword ptr [ebp+8]
 00648A0D    mov         dword ptr [ebp-10],eax
 00648A10    mov         eax,dword ptr [ebp+0C]
 00648A13    mov         dword ptr [ebp-0C],eax
 00648A16    cmp         dword ptr [ebp+0C],0
>00648A1A    jne         00648A27
 00648A1C    cmp         dword ptr [ebp+8],0F000
>00648A23    jbe         00648A32
>00648A25    jmp         00648A29
>00648A27    jle         00648A32
 00648A29    mov         dword ptr [ebp-14],0F000
>00648A30    jmp         00648A38
 00648A32    mov         eax,dword ptr [ebp+8]
 00648A35    mov         dword ptr [ebp-14],eax
 00648A38    mov         eax,dword ptr [ebp-14]
 00648A3B    call        @GetMem
 00648A40    mov         dword ptr [ebp-1C],eax
 00648A43    xor         eax,eax
 00648A45    push        ebp
 00648A46    push        648ABE
 00648A4B    push        dword ptr fs:[eax]
 00648A4E    mov         dword ptr fs:[eax],esp
>00648A51    jmp         00648A99
 00648A53    mov         eax,dword ptr [ebp-14]
 00648A56    cdq
 00648A57    cmp         edx,dword ptr [ebp+0C]
>00648A5A    jne         00648A63
 00648A5C    cmp         eax,dword ptr [ebp+8]
>00648A5F    jae         00648A6D
>00648A61    jmp         00648A65
>00648A63    jge         00648A6D
 00648A65    mov         eax,dword ptr [ebp-14]
 00648A68    mov         dword ptr [ebp-18],eax
>00648A6B    jmp         00648A73
 00648A6D    mov         eax,dword ptr [ebp+8]
 00648A70    mov         dword ptr [ebp-18],eax
 00648A73    mov         edx,dword ptr [ebp-1C]
 00648A76    mov         ecx,dword ptr [ebp-18]
 00648A79    mov         eax,dword ptr [ebp-8]
 00648A7C    call        TStream.ReadBuffer
 00648A81    mov         edx,dword ptr [ebp-1C]
 00648A84    mov         ecx,dword ptr [ebp-18]
 00648A87    mov         eax,dword ptr [ebp-4]
 00648A8A    call        TStream.WriteBuffer
 00648A8F    mov         eax,dword ptr [ebp-18]
 00648A92    cdq
 00648A93    sub         dword ptr [ebp+8],eax
 00648A96    sbb         dword ptr [ebp+0C],edx
 00648A99    cmp         dword ptr [ebp+0C],0
>00648A9D    jne         00648A53
 00648A9F    cmp         dword ptr [ebp+8],0
>00648AA3    jne         00648A53
 00648AA5    xor         eax,eax
 00648AA7    pop         edx
 00648AA8    pop         ecx
 00648AA9    pop         ecx
 00648AAA    mov         dword ptr fs:[eax],edx
 00648AAD    push        648AC5
 00648AB2    mov         edx,dword ptr [ebp-14]
 00648AB5    mov         eax,dword ptr [ebp-1C]
 00648AB8    call        @FreeMem
 00648ABD    ret
>00648ABE    jmp         @HandleFinally
>00648AC3    jmp         00648AB2
 00648AC5    mov         eax,dword ptr [ebp-10]
 00648AC8    mov         edx,dword ptr [ebp-0C]
 00648ACB    mov         esp,ebp
 00648ACD    pop         ebp
 00648ACE    ret         8
*}
end;

//00648AD4
{*function sub_00648AD4(?:TCustomMemoryStream; ?:TCustomListView):?;
begin
 00648AD4    push        ebp
 00648AD5    mov         ebp,esp
 00648AD7    add         esp,0FFFFFFF0
 00648ADA    mov         dword ptr [ebp-8],edx
 00648ADD    mov         dword ptr [ebp-4],eax
 00648AE0    push        1000
 00648AE5    mov         ecx,dword ptr [ebp-4]
 00648AE8    mov         dl,1
 00648AEA    mov         eax,[00642F0C];TReader
 00648AEF    call        TFiler.Create;TReader.Create
 00648AF4    mov         dword ptr [ebp-10],eax
 00648AF7    xor         eax,eax
 00648AF9    push        ebp
 00648AFA    push        648B29
 00648AFF    push        dword ptr fs:[eax]
 00648B02    mov         dword ptr fs:[eax],esp
 00648B05    mov         edx,dword ptr [ebp-8]
 00648B08    mov         eax,dword ptr [ebp-10]
 00648B0B    call        0064B700
 00648B10    mov         dword ptr [ebp-0C],eax
 00648B13    xor         eax,eax
 00648B15    pop         edx
 00648B16    pop         ecx
 00648B17    pop         ecx
 00648B18    mov         dword ptr fs:[eax],edx
 00648B1B    push        648B30
 00648B20    mov         eax,dword ptr [ebp-10]
 00648B23    call        TObject.Free
 00648B28    ret
>00648B29    jmp         @HandleFinally
>00648B2E    jmp         00648B20
 00648B30    mov         eax,dword ptr [ebp-0C]
 00648B33    mov         esp,ebp
 00648B35    pop         ebp
 00648B36    ret
end;*}

//00648B38
procedure sub_00648B38(?:TMemoryStream; ?:TCustomListView);
begin
{*
 00648B38    push        ebp
 00648B39    mov         ebp,esp
 00648B3B    add         esp,0FFFFFFF8
 00648B3E    push        ebx
 00648B3F    mov         dword ptr [ebp-8],edx
 00648B42    mov         dword ptr [ebp-4],eax
 00648B45    xor         ecx,ecx
 00648B47    mov         edx,dword ptr [ebp-8]
 00648B4A    mov         eax,dword ptr [ebp-4]
 00648B4D    mov         ebx,dword ptr [eax]
 00648B4F    call        dword ptr [ebx+18];TMemoryStream.sub_00648B58
 00648B52    pop         ebx
 00648B53    pop         ecx
 00648B54    pop         ecx
 00648B55    pop         ebp
 00648B56    ret
*}
end;

//00648B58
{*procedure sub_00648B58(?:?; ?:?);
begin
 00648B58    push        ebp
 00648B59    mov         ebp,esp
 00648B5B    add         esp,0FFFFFFF0
 00648B5E    mov         dword ptr [ebp-0C],ecx
 00648B61    mov         dword ptr [ebp-8],edx
 00648B64    mov         dword ptr [ebp-4],eax
 00648B67    push        1000
 00648B6C    mov         ecx,dword ptr [ebp-4]
 00648B6F    mov         dl,1
 00648B71    mov         eax,[00642FC0];TWriter
 00648B76    call        TFiler.Create;TWriter.Create
 00648B7B    mov         dword ptr [ebp-10],eax
 00648B7E    xor         eax,eax
 00648B80    push        ebp
 00648B81    push        648BB0
 00648B86    push        dword ptr fs:[eax]
 00648B89    mov         dword ptr fs:[eax],esp
 00648B8C    mov         ecx,dword ptr [ebp-0C]
 00648B8F    mov         edx,dword ptr [ebp-8]
 00648B92    mov         eax,dword ptr [ebp-10]
 00648B95    call        0064D06C
 00648B9A    xor         eax,eax
 00648B9C    pop         edx
 00648B9D    pop         ecx
 00648B9E    pop         ecx
 00648B9F    mov         dword ptr fs:[eax],edx
 00648BA2    push        648BB7
 00648BA7    mov         eax,dword ptr [ebp-10]
 00648BAA    call        TObject.Free
 00648BAF    ret
>00648BB0    jmp         @HandleFinally
>00648BB5    jmp         00648BA7
 00648BB7    mov         esp,ebp
 00648BB9    pop         ebp
 00648BBA    ret
end;*}

//00648BBC
constructor sub_00648BBC;
begin
{*
 00648BBC    push        ebp
 00648BBD    mov         ebp,esp
 00648BBF    add         esp,0FFFFFFF4
 00648BC2    test        dl,dl
>00648BC4    je          00648BCE
 00648BC6    add         esp,0FFFFFFF0
 00648BC9    call        @ClassCreate
 00648BCE    mov         dword ptr [ebp-0C],ecx
 00648BD1    mov         byte ptr [ebp-5],dl
 00648BD4    mov         dword ptr [ebp-4],eax
 00648BD7    xor         edx,edx
 00648BD9    mov         eax,dword ptr [ebp-4]
 00648BDC    call        TObject.Create
 00648BE1    mov         eax,dword ptr [ebp-4]
 00648BE4    mov         edx,dword ptr [ebp-0C]
 00648BE7    mov         dword ptr [eax+4],edx
 00648BEA    mov         eax,dword ptr [ebp-4]
 00648BED    cmp         byte ptr [ebp-5],0
>00648BF1    je          00648C02
 00648BF3    call        @AfterConstruction
 00648BF8    pop         dword ptr fs:[0]
 00648BFF    add         esp,0C
 00648C02    mov         eax,dword ptr [ebp-4]
 00648C05    mov         esp,ebp
 00648C07    pop         ebp
 00648C08    ret
*}
end;

//00648C0C
{*function sub_00648C0C(?:?; ?:?):?;
begin
 00648C0C    push        ebp
 00648C0D    mov         ebp,esp
 00648C0F    add         esp,0FFFFFFF0
 00648C12    mov         dword ptr [ebp-0C],ecx
 00648C15    mov         dword ptr [ebp-8],edx
 00648C18    mov         dword ptr [ebp-4],eax
 00648C1B    mov         edx,dword ptr [ebp-8]
 00648C1E    mov         ecx,dword ptr [ebp-0C]
 00648C21    mov         eax,dword ptr [ebp-4]
 00648C24    mov         eax,dword ptr [eax+4];THandleStream........FHandle:Integer
 00648C27    call        00657F64
 00648C2C    mov         dword ptr [ebp-10],eax
 00648C2F    cmp         dword ptr [ebp-10],0FFFFFFFF
>00648C33    jne         00648C3A
 00648C35    xor         eax,eax
 00648C37    mov         dword ptr [ebp-10],eax
 00648C3A    mov         eax,dword ptr [ebp-10]
 00648C3D    mov         esp,ebp
 00648C3F    pop         ebp
 00648C40    ret
end;*}

//00648C44
{*function sub_00648C44(?:?; ?:?):?;
begin
 00648C44    push        ebp
 00648C45    mov         ebp,esp
 00648C47    add         esp,0FFFFFFF0
 00648C4A    mov         dword ptr [ebp-0C],ecx
 00648C4D    mov         dword ptr [ebp-8],edx
 00648C50    mov         dword ptr [ebp-4],eax
 00648C53    mov         edx,dword ptr [ebp-8]
 00648C56    mov         ecx,dword ptr [ebp-0C]
 00648C59    mov         eax,dword ptr [ebp-4]
 00648C5C    mov         eax,dword ptr [eax+4];THandleStream.........FHandle:Integer
 00648C5F    call        00657F9C
 00648C64    mov         dword ptr [ebp-10],eax
 00648C67    cmp         dword ptr [ebp-10],0FFFFFFFF
>00648C6B    jne         00648C72
 00648C6D    xor         eax,eax
 00648C6F    mov         dword ptr [ebp-10],eax
 00648C72    mov         eax,dword ptr [ebp-10]
 00648C75    mov         esp,ebp
 00648C77    pop         ebp
 00648C78    ret
end;*}

//00648C7C
{*procedure sub_00648C7C(?:?; ?:?; ?:?);
begin
 00648C7C    push        ebp
 00648C7D    mov         ebp,esp
 00648C7F    add         esp,0FFFFFFF0
 00648C82    mov         byte ptr [ebp-5],dl
 00648C85    mov         dword ptr [ebp-4],eax
 00648C88    push        dword ptr [ebp+0C]
 00648C8B    push        dword ptr [ebp+8]
 00648C8E    xor         edx,edx
 00648C90    mov         dl,byte ptr [ebp-5]
 00648C93    mov         eax,dword ptr [ebp-4]
 00648C96    mov         eax,dword ptr [eax+4];THandleStream..........FHandle:Integer
 00648C99    call        00657FD4
 00648C9E    mov         dword ptr [ebp-10],eax
 00648CA1    mov         dword ptr [ebp-0C],edx
 00648CA4    mov         eax,dword ptr [ebp-10]
 00648CA7    mov         edx,dword ptr [ebp-0C]
 00648CAA    mov         esp,ebp
 00648CAC    pop         ebp
 00648CAD    ret         8
end;*}

//00648CB0
{*procedure sub_00648CB0(?:?);
begin
 00648CB0    push        ebp
 00648CB1    mov         ebp,esp
 00648CB3    add         esp,0FFFFFFF8
 00648CB6    mov         dword ptr [ebp-8],edx
 00648CB9    mov         dword ptr [ebp-4],eax
 00648CBC    mov         eax,dword ptr [ebp-8]
 00648CBF    cdq
 00648CC0    push        edx
 00648CC1    push        eax
 00648CC2    mov         eax,dword ptr [ebp-4]
 00648CC5    mov         edx,dword ptr [eax]
 00648CC7    call        dword ptr [edx+4];THandleStream.sub_00648CD0
 00648CCA    pop         ecx
 00648CCB    pop         ecx
 00648CCC    pop         ebp
 00648CCD    ret
end;*}

//00648CD0
{*procedure sub_00648CD0(?:?; ?:?);
begin
 00648CD0    push        ebp
 00648CD1    mov         ebp,esp
 00648CD3    push        ecx
 00648CD4    mov         dword ptr [ebp-4],eax
 00648CD7    push        dword ptr [ebp+0C]
 00648CDA    push        dword ptr [ebp+8]
 00648CDD    xor         edx,edx
 00648CDF    mov         eax,dword ptr [ebp-4]
 00648CE2    mov         ecx,dword ptr [eax]
 00648CE4    call        dword ptr [ecx+14];THandleStream.sub_00648C7C
 00648CE7    mov         eax,dword ptr [ebp-4]
 00648CEA    mov         eax,dword ptr [eax+4];THandleStream...........FHandle:Integer
 00648CED    push        eax
 00648CEE    call        KERNEL32.SetEndOfFile
 00648CF3    call        0065E048
 00648CF8    pop         ecx
 00648CF9    pop         ebp
 00648CFA    ret         8
end;*}

//00648D00
{*constructor TFileStream.Create(?:?);
begin
 00648D00    push        ebp
 00648D01    mov         ebp,esp
 00648D03    add         esp,0FFFFFFF4
 00648D06    test        dl,dl
>00648D08    je          00648D12
 00648D0A    add         esp,0FFFFFFF0
 00648D0D    call        @ClassCreate
 00648D12    mov         dword ptr [ebp-0C],ecx
 00648D15    mov         byte ptr [ebp-5],dl
 00648D18    mov         dword ptr [ebp-4],eax
 00648D1B    mov         ax,word ptr [ebp+8]
 00648D1F    push        eax
 00648D20    push        0
 00648D22    mov         ecx,dword ptr [ebp-0C]
 00648D25    xor         edx,edx
 00648D27    mov         eax,dword ptr [ebp-4]
 00648D2A    call        00648D50
 00648D2F    mov         eax,dword ptr [ebp-4]
 00648D32    cmp         byte ptr [ebp-5],0
>00648D36    je          00648D47
 00648D38    call        @AfterConstruction
 00648D3D    pop         dword ptr fs:[0]
 00648D44    add         esp,0C
 00648D47    mov         eax,dword ptr [ebp-4]
 00648D4A    mov         esp,ebp
 00648D4C    pop         ebp
 00648D4D    ret         4
end;*}

//00648D50
{*constructor sub_00648D50(?:?; ?:?);
begin
 00648D50    push        ebp
 00648D51    mov         ebp,esp
 00648D53    add         esp,0FFFFFFEC
 00648D56    test        dl,dl
>00648D58    je          00648D62
 00648D5A    add         esp,0FFFFFFF0
 00648D5D    call        @ClassCreate
 00648D62    mov         dword ptr [ebp-0C],ecx
 00648D65    mov         byte ptr [ebp-5],dl
 00648D68    mov         dword ptr [ebp-4],eax
 00648D6B    cmp         word ptr [ebp+0C],0FFFF
>00648D71    jne         00648DBC
 00648D73    mov         edx,dword ptr [ebp+8]
 00648D76    mov         eax,dword ptr [ebp-0C]
 00648D79    call        00657F44
 00648D7E    mov         ecx,eax
 00648D80    xor         edx,edx
 00648D82    mov         eax,dword ptr [ebp-4]
 00648D85    call        00648BBC
 00648D8A    mov         eax,dword ptr [ebp-4]
 00648D8D    cmp         dword ptr [eax+4],0
>00648D91    jge         00648E04
 00648D93    mov         eax,dword ptr [ebp-0C]
 00648D96    mov         dword ptr [ebp-14],eax
 00648D99    mov         byte ptr [ebp-10],0B
 00648D9D    lea         eax,[ebp-14]
 00648DA0    push        eax
 00648DA1    push        0
 00648DA3    mov         ecx,dword ptr ds:[6EA06C];^gvar_00654FCC
 00648DA9    mov         dl,1
 00648DAB    mov         eax,[00641E08];EFCreateError
 00648DB0    call        Exception.CreateResFmt;EFCreateError.Create
 00648DB5    call        @RaiseExcept
>00648DBA    jmp         00648E04
 00648DBC    movzx       edx,word ptr [ebp+0C]
 00648DC0    mov         eax,dword ptr [ebp-0C]
 00648DC3    call        00657E9C
 00648DC8    mov         ecx,eax
 00648DCA    xor         edx,edx
 00648DCC    mov         eax,dword ptr [ebp-4]
 00648DCF    call        00648BBC
 00648DD4    mov         eax,dword ptr [ebp-4]
 00648DD7    cmp         dword ptr [eax+4],0
>00648DDB    jge         00648E04
 00648DDD    mov         eax,dword ptr [ebp-0C]
 00648DE0    mov         dword ptr [ebp-14],eax
 00648DE3    mov         byte ptr [ebp-10],0B
 00648DE7    lea         eax,[ebp-14]
 00648DEA    push        eax
 00648DEB    push        0
 00648DED    mov         ecx,dword ptr ds:[6EA078];^gvar_00654FE4
 00648DF3    mov         dl,1
 00648DF5    mov         eax,[00641E64];EFOpenError
 00648DFA    call        Exception.CreateResFmt;EFOpenError.Create
 00648DFF    call        @RaiseExcept
 00648E04    mov         eax,dword ptr [ebp-4]
 00648E07    cmp         byte ptr [ebp-5],0
>00648E0B    je          00648E1C
 00648E0D    call        @AfterConstruction
 00648E12    pop         dword ptr fs:[0]
 00648E19    add         esp,0C
 00648E1C    mov         eax,dword ptr [ebp-4]
 00648E1F    mov         esp,ebp
 00648E21    pop         ebp
 00648E22    ret         8
end;*}

//00648E28
destructor TFileStream.Destroy;
begin
{*
 00648E28    push        ebp
 00648E29    mov         ebp,esp
 00648E2B    add         esp,0FFFFFFF8
 00648E2E    call        @BeforeDestruction
 00648E33    mov         byte ptr [ebp-5],dl
 00648E36    mov         dword ptr [ebp-4],eax
 00648E39    mov         eax,dword ptr [ebp-4]
 00648E3C    cmp         dword ptr [eax+4],0;TFileStream............FHandle:Integer
>00648E40    jl          00648E4D
 00648E42    mov         eax,dword ptr [ebp-4]
 00648E45    mov         eax,dword ptr [eax+4];TFileStream.............FHandle:Integer
 00648E48    call        00658010
 00648E4D    mov         dl,byte ptr [ebp-5]
 00648E50    and         dl,0FC
 00648E53    mov         eax,dword ptr [ebp-4]
 00648E56    call        TObject.Destroy
 00648E5B    cmp         byte ptr [ebp-5],0
>00648E5F    jle         00648E69
 00648E61    mov         eax,dword ptr [ebp-4]
 00648E64    call        @ClassDestroy
 00648E69    pop         ecx
 00648E6A    pop         ecx
 00648E6B    pop         ebp
 00648E6C    ret
*}
end;

//00648E70
procedure sub_00648E70(?:TCustomMemoryStream; ?:Pointer; ?:Longint);
begin
{*
 00648E70    push        ebp
 00648E71    mov         ebp,esp
 00648E73    add         esp,0FFFFFFF4
 00648E76    mov         dword ptr [ebp-0C],ecx
 00648E79    mov         dword ptr [ebp-8],edx
 00648E7C    mov         dword ptr [ebp-4],eax
 00648E7F    mov         eax,dword ptr [ebp-8]
 00648E82    mov         edx,dword ptr [ebp-4]
 00648E85    mov         dword ptr [edx+4],eax
 00648E88    mov         eax,dword ptr [ebp-0C]
 00648E8B    mov         edx,dword ptr [ebp-4]
 00648E8E    mov         dword ptr [edx+8],eax
 00648E91    mov         esp,ebp
 00648E93    pop         ebp
 00648E94    ret
*}
end;

//00648E98
{*function sub_00648E98(?:?; ?:?):?;
begin
 00648E98    push        ebp
 00648E99    mov         ebp,esp
 00648E9B    add         esp,0FFFFFFF0
 00648E9E    mov         dword ptr [ebp-0C],ecx
 00648EA1    mov         dword ptr [ebp-8],edx
 00648EA4    mov         dword ptr [ebp-4],eax
 00648EA7    mov         eax,dword ptr [ebp-4]
 00648EAA    cmp         dword ptr [eax+0C],0;TCustomMemoryStream.FPosition:Longint
>00648EAE    jl          00648EFB
 00648EB0    cmp         dword ptr [ebp-0C],0
>00648EB4    jl          00648EFB
 00648EB6    mov         eax,dword ptr [ebp-4]
 00648EB9    mov         eax,dword ptr [eax+8];TCustomMemoryStream.FSize:Longint
 00648EBC    mov         edx,dword ptr [ebp-4]
 00648EBF    sub         eax,dword ptr [edx+0C]
 00648EC2    mov         dword ptr [ebp-10],eax
 00648EC5    cmp         dword ptr [ebp-10],0
>00648EC9    jle         00648EFB
 00648ECB    mov         eax,dword ptr [ebp-10]
 00648ECE    cmp         eax,dword ptr [ebp-0C]
>00648ED1    jle         00648ED9
 00648ED3    mov         eax,dword ptr [ebp-0C]
 00648ED6    mov         dword ptr [ebp-10],eax
 00648ED9    mov         edx,dword ptr [ebp-8]
 00648EDC    mov         eax,dword ptr [ebp-4]
 00648EDF    mov         eax,dword ptr [eax+4];TCustomMemoryStream.FMemory:Pointer
 00648EE2    mov         ecx,dword ptr [ebp-4]
 00648EE5    add         eax,dword ptr [ecx+0C]
 00648EE8    mov         ecx,dword ptr [ebp-10]
 00648EEB    call        Move
 00648EF0    mov         eax,dword ptr [ebp-10]
 00648EF3    mov         edx,dword ptr [ebp-4]
 00648EF6    add         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
>00648EF9    jmp         00648F00
 00648EFB    xor         eax,eax
 00648EFD    mov         dword ptr [ebp-10],eax
 00648F00    mov         eax,dword ptr [ebp-10]
 00648F03    mov         esp,ebp
 00648F05    pop         ebp
 00648F06    ret
end;*}

//00648F08
{*function sub_00648F08(?:?; ?:?):?;
begin
 00648F08    push        ebp
 00648F09    mov         ebp,esp
 00648F0B    add         esp,0FFFFFFF0
 00648F0E    mov         word ptr [ebp-0A],cx
 00648F12    mov         dword ptr [ebp-8],edx
 00648F15    mov         dword ptr [ebp-4],eax
 00648F18    mov         ax,word ptr [ebp-0A]
 00648F1C    sub         ax,1
>00648F20    jb          00648F2B
>00648F22    je          00648F36
 00648F24    dec         ax
>00648F27    je          00648F41
>00648F29    jmp         00648F50
 00648F2B    mov         eax,dword ptr [ebp-8]
 00648F2E    mov         edx,dword ptr [ebp-4]
 00648F31    mov         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
>00648F34    jmp         00648F50
 00648F36    mov         eax,dword ptr [ebp-8]
 00648F39    mov         edx,dword ptr [ebp-4]
 00648F3C    add         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
>00648F3F    jmp         00648F50
 00648F41    mov         eax,dword ptr [ebp-4]
 00648F44    mov         eax,dword ptr [eax+8];TCustomMemoryStream.FSize:Longint
 00648F47    add         eax,dword ptr [ebp-8]
 00648F4A    mov         edx,dword ptr [ebp-4]
 00648F4D    mov         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
 00648F50    mov         eax,dword ptr [ebp-4]
 00648F53    mov         eax,dword ptr [eax+0C];TCustomMemoryStream.FPosition:Longint
 00648F56    mov         dword ptr [ebp-10],eax
 00648F59    mov         eax,dword ptr [ebp-10]
 00648F5C    mov         esp,ebp
 00648F5E    pop         ebp
 00648F5F    ret
end;*}

//00648F60
{*procedure sub_00648F60(?:?; ?:TFileStream);
begin
 00648F60    push        ebp
 00648F61    mov         ebp,esp
 00648F63    add         esp,0FFFFFFF8
 00648F66    mov         dword ptr [ebp-8],edx
 00648F69    mov         dword ptr [ebp-4],eax
 00648F6C    mov         eax,dword ptr [ebp-4]
 00648F6F    cmp         dword ptr [eax+8],0
>00648F73    je          00648F89
 00648F75    mov         eax,dword ptr [ebp-4]
 00648F78    mov         edx,dword ptr [eax+4]
 00648F7B    mov         eax,dword ptr [ebp-4]
 00648F7E    mov         ecx,dword ptr [eax+8]
 00648F81    mov         eax,dword ptr [ebp-8]
 00648F84    call        TStream.WriteBuffer
 00648F89    pop         ecx
 00648F8A    pop         ecx
 00648F8B    pop         ebp
 00648F8C    ret
end;*}

//00648F90
{*procedure sub_00648F90(?:?; ?:?);
begin
 00648F90    push        ebp
 00648F91    mov         ebp,esp
 00648F93    add         esp,0FFFFFFF4
 00648F96    mov         dword ptr [ebp-8],edx
 00648F99    mov         dword ptr [ebp-4],eax
 00648F9C    push        0FFFF
 00648FA1    mov         ecx,dword ptr [ebp-8]
 00648FA4    mov         dl,1
 00648FA6    mov         eax,[00642AB0];TFileStream
 00648FAB    call        TFileStream.Create;TFileStream.Create
 00648FB0    mov         dword ptr [ebp-0C],eax
 00648FB3    xor         eax,eax
 00648FB5    push        ebp
 00648FB6    push        648FE2
 00648FBB    push        dword ptr fs:[eax]
 00648FBE    mov         dword ptr fs:[eax],esp
 00648FC1    mov         edx,dword ptr [ebp-0C]
 00648FC4    mov         eax,dword ptr [ebp-4]
 00648FC7    call        00648F60
 00648FCC    xor         eax,eax
 00648FCE    pop         edx
 00648FCF    pop         ecx
 00648FD0    pop         ecx
 00648FD1    mov         dword ptr fs:[eax],edx
 00648FD4    push        648FE9
 00648FD9    mov         eax,dword ptr [ebp-0C]
 00648FDC    call        TObject.Free
 00648FE1    ret
>00648FE2    jmp         @HandleFinally
>00648FE7    jmp         00648FD9
 00648FE9    mov         esp,ebp
 00648FEB    pop         ebp
 00648FEC    ret
end;*}

//00648FF0
destructor TMemoryStream.Destroy;
begin
{*
 00648FF0    push        ebp
 00648FF1    mov         ebp,esp
 00648FF3    add         esp,0FFFFFFF8
 00648FF6    call        @BeforeDestruction
 00648FFB    mov         byte ptr [ebp-5],dl
 00648FFE    mov         dword ptr [ebp-4],eax
 00649001    mov         eax,dword ptr [ebp-4]
 00649004    call        0064902C
 00649009    mov         dl,byte ptr [ebp-5]
 0064900C    and         dl,0FC
 0064900F    mov         eax,dword ptr [ebp-4]
 00649012    call        TObject.Destroy
 00649017    cmp         byte ptr [ebp-5],0
>0064901B    jle         00649025
 0064901D    mov         eax,dword ptr [ebp-4]
 00649020    call        @ClassDestroy
 00649025    pop         ecx
 00649026    pop         ecx
 00649027    pop         ebp
 00649028    ret
*}
end;

//0064902C
procedure sub_0064902C(?:TMemoryStream);
begin
{*
 0064902C    push        ebp
 0064902D    mov         ebp,esp
 0064902F    push        ecx
 00649030    mov         dword ptr [ebp-4],eax
 00649033    xor         edx,edx
 00649035    mov         eax,dword ptr [ebp-4]
 00649038    call        006490F4
 0064903D    mov         eax,dword ptr [ebp-4]
 00649040    xor         edx,edx
 00649042    mov         dword ptr [eax+8],edx;TMemoryStream.FSize:Longint
 00649045    mov         eax,dword ptr [ebp-4]
 00649048    xor         edx,edx
 0064904A    mov         dword ptr [eax+0C],edx;TMemoryStream.FPosition:Longint
 0064904D    pop         ecx
 0064904E    pop         ebp
 0064904F    ret
*}
end;

//00649050
procedure sub_00649050(?:TMemoryStream; ?:TFileStream);
begin
{*
 00649050    push        ebp
 00649051    mov         ebp,esp
 00649053    add         esp,0FFFFFFF4
 00649056    mov         dword ptr [ebp-8],edx
 00649059    mov         dword ptr [ebp-4],eax
 0064905C    push        0
 0064905E    push        0
 00649060    mov         eax,dword ptr [ebp-8]
 00649063    call        TStream.SetPosition
 00649068    mov         eax,dword ptr [ebp-8]
 0064906B    call        TStream.GetSize
 00649070    mov         dword ptr [ebp-0C],eax
 00649073    mov         edx,dword ptr [ebp-0C]
 00649076    mov         eax,dword ptr [ebp-4]
 00649079    mov         ecx,dword ptr [eax]
 0064907B    call        dword ptr [ecx];TMemoryStream.sub_00649128
 0064907D    cmp         dword ptr [ebp-0C],0
>00649081    je          00649094
 00649083    mov         eax,dword ptr [ebp-4]
 00649086    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00649089    mov         ecx,dword ptr [ebp-0C]
 0064908C    mov         eax,dword ptr [ebp-8]
 0064908F    call        TStream.ReadBuffer
 00649094    mov         esp,ebp
 00649096    pop         ebp
 00649097    ret
*}
end;

//00649098
{*procedure sub_00649098(?:?; ?:?);
begin
 00649098    push        ebp
 00649099    mov         ebp,esp
 0064909B    add         esp,0FFFFFFF4
 0064909E    mov         dword ptr [ebp-8],edx
 006490A1    mov         dword ptr [ebp-4],eax
 006490A4    push        20
 006490A6    mov         ecx,dword ptr [ebp-8]
 006490A9    mov         dl,1
 006490AB    mov         eax,[00642AB0];TFileStream
 006490B0    call        TFileStream.Create;TFileStream.Create
 006490B5    mov         dword ptr [ebp-0C],eax
 006490B8    xor         eax,eax
 006490BA    push        ebp
 006490BB    push        6490E7
 006490C0    push        dword ptr fs:[eax]
 006490C3    mov         dword ptr fs:[eax],esp
 006490C6    mov         edx,dword ptr [ebp-0C]
 006490C9    mov         eax,dword ptr [ebp-4]
 006490CC    call        00649050
 006490D1    xor         eax,eax
 006490D3    pop         edx
 006490D4    pop         ecx
 006490D5    pop         ecx
 006490D6    mov         dword ptr fs:[eax],edx
 006490D9    push        6490EE
 006490DE    mov         eax,dword ptr [ebp-0C]
 006490E1    call        TObject.Free
 006490E6    ret
>006490E7    jmp         @HandleFinally
>006490EC    jmp         006490DE
 006490EE    mov         esp,ebp
 006490F0    pop         ebp
 006490F1    ret
end;*}

//006490F4
{*procedure sub_006490F4(?:TMemoryStream; ?:?);
begin
 006490F4    push        ebp
 006490F5    mov         ebp,esp
 006490F7    add         esp,0FFFFFFF8
 006490FA    mov         dword ptr [ebp-8],edx
 006490FD    mov         dword ptr [ebp-4],eax
 00649100    lea         edx,[ebp-8]
 00649103    mov         eax,dword ptr [ebp-4]
 00649106    mov         ecx,dword ptr [eax]
 00649108    call        dword ptr [ecx+1C];TMemoryStream.sub_00649170
 0064910B    mov         edx,eax
 0064910D    mov         eax,dword ptr [ebp-4]
 00649110    mov         ecx,dword ptr [eax+8];TMemoryStream.FSize:Longint
 00649113    mov         eax,dword ptr [ebp-4]
 00649116    call        00648E70
 0064911B    mov         eax,dword ptr [ebp-8]
 0064911E    mov         edx,dword ptr [ebp-4]
 00649121    mov         dword ptr [edx+10],eax;TMemoryStream......FCapacity:Longint
 00649124    pop         ecx
 00649125    pop         ecx
 00649126    pop         ebp
 00649127    ret
end;*}

//00649128
{*procedure sub_00649128(?:?);
begin
 00649128    push        ebp
 00649129    mov         ebp,esp
 0064912B    add         esp,0FFFFFFF4
 0064912E    push        ebx
 0064912F    mov         dword ptr [ebp-8],edx
 00649132    mov         dword ptr [ebp-4],eax
 00649135    mov         eax,dword ptr [ebp-4]
 00649138    mov         eax,dword ptr [eax+0C];TMemoryStream.FPosition:Longint
 0064913B    mov         dword ptr [ebp-0C],eax
 0064913E    mov         edx,dword ptr [ebp-8]
 00649141    mov         eax,dword ptr [ebp-4]
 00649144    call        006490F4
 00649149    mov         eax,dword ptr [ebp-8]
 0064914C    mov         edx,dword ptr [ebp-4]
 0064914F    mov         dword ptr [edx+8],eax;TMemoryStream.FSize:Longint
 00649152    mov         eax,dword ptr [ebp-0C]
 00649155    cmp         eax,dword ptr [ebp-8]
>00649158    jle         00649168
 0064915A    mov         cx,2
 0064915E    xor         edx,edx
 00649160    mov         eax,dword ptr [ebp-4]
 00649163    mov         ebx,dword ptr [eax]
 00649165    call        dword ptr [ebx+10];TMemoryStream.sub_00648F08
 00649168    pop         ebx
 00649169    mov         esp,ebp
 0064916B    pop         ebp
 0064916C    ret
end;*}

//00649170
{*function sub_00649170(?:?):?;
begin
 00649170    push        ebp
 00649171    mov         ebp,esp
 00649173    add         esp,0FFFFFFF4
 00649176    mov         dword ptr [ebp-8],edx
 00649179    mov         dword ptr [ebp-4],eax
 0064917C    mov         eax,dword ptr [ebp-8]
 0064917F    cmp         dword ptr [eax],0
>00649182    jle         006491A5
 00649184    mov         eax,dword ptr [ebp-8]
 00649187    mov         eax,dword ptr [eax]
 00649189    mov         edx,dword ptr [ebp-4]
 0064918C    cmp         eax,dword ptr [edx+8];TMemoryStream.FSize:Longint
>0064918F    je          006491A5
 00649191    mov         eax,dword ptr [ebp-8]
 00649194    mov         eax,dword ptr [eax]
 00649196    add         eax,1FFF
 0064919B    and         eax,0FFFFE000
 006491A0    mov         edx,dword ptr [ebp-8]
 006491A3    mov         dword ptr [edx],eax
 006491A5    mov         eax,dword ptr [ebp-4]
 006491A8    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 006491AB    mov         dword ptr [ebp-0C],eax
 006491AE    mov         eax,dword ptr [ebp-8]
 006491B1    mov         eax,dword ptr [eax]
 006491B3    mov         edx,dword ptr [ebp-4]
 006491B6    cmp         eax,dword ptr [edx+10];TMemoryStream.......FCapacity:Longint
>006491B9    je          0064922E
 006491BB    mov         eax,dword ptr [ebp-8]
 006491BE    cmp         dword ptr [eax],0
>006491C1    jne         006491D5
 006491C3    mov         eax,dword ptr [ebp-4]
 006491C6    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 006491C9    call        GlobalFreePtr
 006491CE    xor         eax,eax
 006491D0    mov         dword ptr [ebp-0C],eax
>006491D3    jmp         0064922E
 006491D5    mov         eax,dword ptr [ebp-4]
 006491D8    cmp         dword ptr [eax+10],0;TMemoryStream........FCapacity:Longint
>006491DC    jne         006491F5
 006491DE    mov         edx,dword ptr [ebp-8]
 006491E1    mov         edx,dword ptr [edx]
 006491E3    mov         eax,[006EA2AC];^gvar_006E4E84
 006491E8    movzx       eax,word ptr [eax]
 006491EB    call        GlobalAllocPtr
 006491F0    mov         dword ptr [ebp-0C],eax
>006491F3    jmp         00649211
 006491F5    mov         ecx,dword ptr ds:[6EA2AC];^gvar_006E4E84
 006491FB    movzx       ecx,word ptr [ecx]
 006491FE    mov         edx,dword ptr [ebp-8]
 00649201    mov         edx,dword ptr [edx]
 00649203    mov         eax,dword ptr [ebp-4]
 00649206    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00649209    call        GlobalReAllocPtr
 0064920E    mov         dword ptr [ebp-0C],eax
 00649211    cmp         dword ptr [ebp-0C],0
>00649215    jne         0064922E
 00649217    mov         ecx,dword ptr ds:[6EA0B0];^gvar_00655054
 0064921D    mov         dl,1
 0064921F    mov         eax,[00641DAC];EStreamError
 00649224    call        Exception.Create;EStreamError.Create
 00649229    call        @RaiseExcept
 0064922E    mov         eax,dword ptr [ebp-0C]
 00649231    mov         esp,ebp
 00649233    pop         ebp
 00649234    ret
end;*}

//00649238
{*function sub_00649238(?:?; ?:?):?;
begin
 00649238    push        ebp
 00649239    mov         ebp,esp
 0064923B    add         esp,0FFFFFFEC
 0064923E    mov         dword ptr [ebp-0C],ecx
 00649241    mov         dword ptr [ebp-8],edx
 00649244    mov         dword ptr [ebp-4],eax
 00649247    mov         eax,dword ptr [ebp-4]
 0064924A    cmp         dword ptr [eax+0C],0;TMemoryStream.FPosition:Longint
>0064924E    jl          006492BA
 00649250    cmp         dword ptr [ebp-0C],0
>00649254    jl          006492BA
 00649256    mov         eax,dword ptr [ebp-4]
 00649259    mov         eax,dword ptr [eax+0C];TMemoryStream.FPosition:Longint
 0064925C    add         eax,dword ptr [ebp-0C]
 0064925F    mov         dword ptr [ebp-14],eax
 00649262    cmp         dword ptr [ebp-14],0
>00649266    jle         006492BA
 00649268    mov         eax,dword ptr [ebp-14]
 0064926B    mov         edx,dword ptr [ebp-4]
 0064926E    cmp         eax,dword ptr [edx+8];TMemoryStream.FSize:Longint
>00649271    jle         00649292
 00649273    mov         eax,dword ptr [ebp-14]
 00649276    mov         edx,dword ptr [ebp-4]
 00649279    cmp         eax,dword ptr [edx+10];TMemoryStream.........FCapacity:Longint
>0064927C    jle         00649289
 0064927E    mov         edx,dword ptr [ebp-14]
 00649281    mov         eax,dword ptr [ebp-4]
 00649284    call        006490F4
 00649289    mov         eax,dword ptr [ebp-14]
 0064928C    mov         edx,dword ptr [ebp-4]
 0064928F    mov         dword ptr [edx+8],eax;TMemoryStream.FSize:Longint
 00649292    mov         eax,dword ptr [ebp-4]
 00649295    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00649298    mov         eax,dword ptr [ebp-4]
 0064929B    add         edx,dword ptr [eax+0C];TMemoryStream.FPosition:Longint
 0064929E    mov         eax,dword ptr [ebp-8]
 006492A1    mov         ecx,dword ptr [ebp-0C]
 006492A4    call        Move
 006492A9    mov         eax,dword ptr [ebp-14]
 006492AC    mov         edx,dword ptr [ebp-4]
 006492AF    mov         dword ptr [edx+0C],eax;TMemoryStream.FPosition:Longint
 006492B2    mov         eax,dword ptr [ebp-0C]
 006492B5    mov         dword ptr [ebp-10],eax
>006492B8    jmp         006492BF
 006492BA    xor         eax,eax
 006492BC    mov         dword ptr [ebp-10],eax
 006492BF    mov         eax,dword ptr [ebp-10]
 006492C2    mov         esp,ebp
 006492C4    pop         ebp
 006492C5    ret
end;*}

//006492C8
{*constructor TResourceStream.Create(?:?; ?:?);
begin
 006492C8    push        ebp
 006492C9    mov         ebp,esp
 006492CB    add         esp,0FFFFFFF4
 006492CE    test        dl,dl
>006492D0    je          006492DA
 006492D2    add         esp,0FFFFFFF0
 006492D5    call        @ClassCreate
 006492DA    mov         dword ptr [ebp-0C],ecx
 006492DD    mov         byte ptr [ebp-5],dl
 006492E0    mov         dword ptr [ebp-4],eax
 006492E3    xor         edx,edx
 006492E5    mov         eax,dword ptr [ebp-4]
 006492E8    call        TObject.Create
 006492ED    mov         eax,dword ptr [ebp+8]
 006492F0    push        eax
 006492F1    mov         eax,dword ptr [ebp+0C]
 006492F4    call        @LStrToPChar
 006492F9    mov         ecx,eax
 006492FB    mov         edx,dword ptr [ebp-0C]
 006492FE    mov         eax,dword ptr [ebp-4]
 00649301    call        006493F0
 00649306    mov         eax,dword ptr [ebp-4]
 00649309    cmp         byte ptr [ebp-5],0
>0064930D    je          0064931E
 0064930F    call        @AfterConstruction
 00649314    pop         dword ptr fs:[0]
 0064931B    add         esp,0C
 0064931E    mov         eax,dword ptr [ebp-4]
 00649321    mov         esp,ebp
 00649323    pop         ebp
 00649324    ret         8
end;*}

//00649328
{*constructor sub_00649328(?:?; ?:?);
begin
 00649328    push        ebp
 00649329    mov         ebp,esp
 0064932B    add         esp,0FFFFFFF4
 0064932E    test        dl,dl
>00649330    je          0064933A
 00649332    add         esp,0FFFFFFF0
 00649335    call        @ClassCreate
 0064933A    mov         dword ptr [ebp-0C],ecx
 0064933D    mov         byte ptr [ebp-5],dl
 00649340    mov         dword ptr [ebp-4],eax
 00649343    xor         edx,edx
 00649345    mov         eax,dword ptr [ebp-4]
 00649348    call        TObject.Create
 0064934D    mov         eax,dword ptr [ebp+8]
 00649350    push        eax
 00649351    mov         ecx,dword ptr [ebp+0C]
 00649354    mov         edx,dword ptr [ebp-0C]
 00649357    mov         eax,dword ptr [ebp-4]
 0064935A    call        006493F0
 0064935F    mov         eax,dword ptr [ebp-4]
 00649362    cmp         byte ptr [ebp-5],0
>00649366    je          00649377
 00649368    call        @AfterConstruction
 0064936D    pop         dword ptr fs:[0]
 00649374    add         esp,0C
 00649377    mov         eax,dword ptr [ebp-4]
 0064937A    mov         esp,ebp
 0064937C    pop         ebp
 0064937D    ret         8
end;*}

//00649380
procedure Error;
begin
{*
 00649380    push        ebp
 00649381    mov         ebp,esp
 00649383    add         esp,0FFFFFFF4
 00649386    xor         eax,eax
 00649388    mov         dword ptr [ebp-0C],eax
 0064938B    xor         eax,eax
 0064938D    push        ebp
 0064938E    push        6493E3
 00649393    push        dword ptr fs:[eax]
 00649396    mov         dword ptr fs:[eax],esp
 00649399    mov         eax,dword ptr [ebp+8]
 0064939C    mov         eax,dword ptr [eax-4]
 0064939F    mov         dword ptr [ebp-8],eax
 006493A2    mov         byte ptr [ebp-4],6
 006493A6    lea         eax,[ebp-8]
 006493A9    push        eax
 006493AA    push        0
 006493AC    lea         edx,[ebp-0C]
 006493AF    mov         eax,[006EA0C4];^gvar_0065507C
 006493B4    call        LoadResString
 006493B9    mov         ecx,dword ptr [ebp-0C]
 006493BC    mov         dl,1
 006493BE    mov         eax,[00642020];EResNotFound
 006493C3    call        Exception.CreateFmt
 006493C8    call        @RaiseExcept
 006493CD    xor         eax,eax
 006493CF    pop         edx
 006493D0    pop         ecx
 006493D1    pop         ecx
 006493D2    mov         dword ptr fs:[eax],edx
 006493D5    push        6493EA
 006493DA    lea         eax,[ebp-0C]
 006493DD    call        @LStrClr
 006493E2    ret
>006493E3    jmp         @HandleFinally
>006493E8    jmp         006493DA
 006493EA    mov         esp,ebp
 006493EC    pop         ebp
 006493ED    ret
*}
end;

//006493F0
{*procedure sub_006493F0(?:TResourceStream; ?:?; ?:PChar; ?:?);
begin
 006493F0    push        ebp
 006493F1    mov         ebp,esp
 006493F3    add         esp,0FFFFFFF4
 006493F6    mov         dword ptr [ebp-4],ecx
 006493F9    mov         dword ptr [ebp-0C],edx
 006493FC    mov         dword ptr [ebp-8],eax
 006493FF    mov         eax,dword ptr [ebp+8]
 00649402    push        eax
 00649403    mov         eax,dword ptr [ebp-4]
 00649406    push        eax
 00649407    mov         eax,dword ptr [ebp-0C]
 0064940A    push        eax
 0064940B    call        KERNEL32.FindResourceA
 00649410    mov         edx,dword ptr [ebp-8]
 00649413    mov         dword ptr [edx+10],eax;TResourceStream.HResInfo:THandle
 00649416    mov         eax,dword ptr [ebp-8]
 00649419    cmp         dword ptr [eax+10],0;TResourceStream.HResInfo:THandle
>0064941D    jne         00649426
 0064941F    push        ebp
 00649420    call        Error
 00649425    pop         ecx
 00649426    mov         eax,dword ptr [ebp-8]
 00649429    mov         eax,dword ptr [eax+10];TResourceStream.HResInfo:THandle
 0064942C    push        eax
 0064942D    mov         eax,dword ptr [ebp-0C]
 00649430    push        eax
 00649431    call        KERNEL32.LoadResource
 00649436    mov         edx,dword ptr [ebp-8]
 00649439    mov         dword ptr [edx+14],eax;TResourceStream.HGlobal:THandle
 0064943C    mov         eax,dword ptr [ebp-8]
 0064943F    cmp         dword ptr [eax+14],0;TResourceStream.HGlobal:THandle
>00649443    jne         0064944C
 00649445    push        ebp
 00649446    call        Error
 0064944B    pop         ecx
 0064944C    mov         eax,dword ptr [ebp-8]
 0064944F    mov         eax,dword ptr [eax+10];TResourceStream.HResInfo:THandle
 00649452    push        eax
 00649453    mov         eax,dword ptr [ebp-0C]
 00649456    push        eax
 00649457    call        KERNEL32.SizeofResource
 0064945C    push        eax
 0064945D    mov         eax,dword ptr [ebp-8]
 00649460    mov         eax,dword ptr [eax+14];TResourceStream.HGlobal:THandle
 00649463    push        eax
 00649464    call        KERNEL32.LockResource
 00649469    mov         edx,eax
 0064946B    mov         eax,dword ptr [ebp-8]
 0064946E    pop         ecx
 0064946F    call        00648E70
 00649474    mov         esp,ebp
 00649476    pop         ebp
 00649477    ret         4
end;*}

//0064947C
destructor TResourceStream.Destroy;
begin
{*
 0064947C    push        ebp
 0064947D    mov         ebp,esp
 0064947F    add         esp,0FFFFFFF8
 00649482    call        @BeforeDestruction
 00649487    mov         byte ptr [ebp-5],dl
 0064948A    mov         dword ptr [ebp-4],eax
 0064948D    mov         eax,dword ptr [ebp-4]
 00649490    mov         eax,dword ptr [eax+14];TResourceStream.HGlobal:THandle
 00649493    call        0063CF50
 00649498    mov         eax,dword ptr [ebp-4]
 0064949B    mov         eax,dword ptr [eax+14];TResourceStream.HGlobal:THandle
 0064949E    push        eax
 0064949F    call        KERNEL32.FreeResource
 006494A4    mov         dl,byte ptr [ebp-5]
 006494A7    and         dl,0FC
 006494AA    mov         eax,dword ptr [ebp-4]
 006494AD    call        TObject.Destroy
 006494B2    cmp         byte ptr [ebp-5],0
>006494B6    jle         006494C0
 006494B8    mov         eax,dword ptr [ebp-4]
 006494BB    call        @ClassDestroy
 006494C0    pop         ecx
 006494C1    pop         ecx
 006494C2    pop         ebp
 006494C3    ret
*}
end;

//006494C4
{*function sub_006494C4(?:?; ?:?):?;
begin
 006494C4    push        ebp
 006494C5    mov         ebp,esp
 006494C7    add         esp,0FFFFFFF0
 006494CA    mov         dword ptr [ebp-10],ecx
 006494CD    mov         dword ptr [ebp-0C],edx
 006494D0    mov         dword ptr [ebp-4],eax
 006494D3    mov         ecx,dword ptr ds:[6EA050];^gvar_00654F94
 006494D9    mov         dl,1
 006494DB    mov         eax,[00641DAC];EStreamError
 006494E0    call        Exception.Create;EStreamError.Create
 006494E5    call        @RaiseExcept
 006494EA    mov         eax,dword ptr [ebp-8]
 006494ED    mov         esp,ebp
 006494EF    pop         ebp
 006494F0    ret
end;*}

//006494F4
constructor TFiler.Create(Stream:TStream; BufSize:Integer);
begin
{*
 006494F4    push        ebp
 006494F5    mov         ebp,esp
 006494F7    add         esp,0FFFFFFF4
 006494FA    test        dl,dl
>006494FC    je          00649506
 006494FE    add         esp,0FFFFFFF0
 00649501    call        @ClassCreate
 00649506    mov         dword ptr [ebp-0C],ecx
 00649509    mov         byte ptr [ebp-5],dl
 0064950C    mov         dword ptr [ebp-4],eax
 0064950F    mov         eax,dword ptr [ebp-4]
 00649512    mov         edx,dword ptr [ebp-0C]
 00649515    mov         dword ptr [eax+4],edx
 00649518    mov         eax,dword ptr [ebp+8]
 0064951B    call        @GetMem
 00649520    mov         edx,dword ptr [ebp-4]
 00649523    mov         dword ptr [edx+8],eax
 00649526    mov         eax,dword ptr [ebp-4]
 00649529    mov         edx,dword ptr [ebp+8]
 0064952C    mov         dword ptr [eax+0C],edx
 0064952F    mov         eax,dword ptr [ebp-4]
 00649532    cmp         byte ptr [ebp-5],0
>00649536    je          00649547
 00649538    call        @AfterConstruction
 0064953D    pop         dword ptr fs:[0]
 00649544    add         esp,0C
 00649547    mov         eax,dword ptr [ebp-4]
 0064954A    mov         esp,ebp
 0064954C    pop         ebp
 0064954D    ret         4
*}
end;

//00649550
destructor TFiler.Destroy;
begin
{*
 00649550    push        ebp
 00649551    mov         ebp,esp
 00649553    add         esp,0FFFFFFF8
 00649556    call        @BeforeDestruction
 0064955B    mov         byte ptr [ebp-5],dl
 0064955E    mov         dword ptr [ebp-4],eax
 00649561    mov         eax,dword ptr [ebp-4]
 00649564    cmp         dword ptr [eax+8],0
>00649568    je          0064957B
 0064956A    mov         eax,dword ptr [ebp-4]
 0064956D    mov         edx,dword ptr [eax+0C]
 00649570    mov         eax,dword ptr [ebp-4]
 00649573    mov         eax,dword ptr [eax+8]
 00649576    call        @FreeMem
 0064957B    cmp         byte ptr [ebp-5],0
>0064957F    jle         00649589
 00649581    mov         eax,dword ptr [ebp-4]
 00649584    call        @ClassDestroy
 00649589    pop         ecx
 0064958A    pop         ecx
 0064958B    pop         ebp
 0064958C    ret
*}
end;

//00649590
{*procedure sub_00649590(?:?);
begin
 00649590    push        ebp
 00649591    mov         ebp,esp
 00649593    add         esp,0FFFFFFF8
 00649596    mov         dword ptr [ebp-8],edx
 00649599    mov         dword ptr [ebp-4],eax
 0064959C    mov         eax,dword ptr [ebp-8]
 0064959F    mov         edx,dword ptr [ebp-4]
 006495A2    mov         dword ptr [edx+18],eax;TFiler.FRoot:TComponent
 006495A5    pop         ecx
 006495A6    pop         ecx
 006495A7    pop         ebp
 006495A8    ret
end;*}

//00649684
constructor TPropFixup.Create(Instance:TPersistent; InstanceRoot:TComponent; PropInfo:PPropInfo; const RootName:AnsiString; const Name:AnsiString);
begin
{*
 00649684    push        ebp
 00649685    mov         ebp,esp
 00649687    add         esp,0FFFFFFF4
 0064968A    test        dl,dl
>0064968C    je          00649696
 0064968E    add         esp,0FFFFFFF0
 00649691    call        @ClassCreate
 00649696    mov         dword ptr [ebp-0C],ecx
 00649699    mov         byte ptr [ebp-5],dl
 0064969C    mov         dword ptr [ebp-4],eax
 0064969F    mov         eax,dword ptr [ebp-4]
 006496A2    mov         edx,dword ptr [ebp-0C]
 006496A5    mov         dword ptr [eax+4],edx
 006496A8    mov         eax,dword ptr [ebp-4]
 006496AB    mov         edx,dword ptr [ebp+14]
 006496AE    mov         dword ptr [eax+8],edx
 006496B1    mov         eax,dword ptr [ebp-4]
 006496B4    mov         edx,dword ptr [ebp+10]
 006496B7    mov         dword ptr [eax+0C],edx
 006496BA    mov         eax,dword ptr [ebp-4]
 006496BD    add         eax,10
 006496C0    mov         edx,dword ptr [ebp+0C]
 006496C3    call        @LStrAsg
 006496C8    mov         eax,dword ptr [ebp-4]
 006496CB    add         eax,14
 006496CE    mov         edx,dword ptr [ebp+8]
 006496D1    call        @LStrAsg
 006496D6    mov         eax,dword ptr [ebp-4]
 006496D9    cmp         byte ptr [ebp-5],0
>006496DD    je          006496EE
 006496DF    call        @AfterConstruction
 006496E4    pop         dword ptr fs:[0]
 006496EB    add         esp,0C
 006496EE    mov         eax,dword ptr [ebp-4]
 006496F1    mov         esp,ebp
 006496F3    pop         ebp
 006496F4    ret         10
*}
end;

//006496F8
{*function sub_006496F8(?:Pointer):?;
begin
 006496F8    push        ebp
 006496F9    mov         ebp,esp
 006496FB    add         esp,0FFFFFFF0
 006496FE    mov         dword ptr [ebp-4],eax
 00649701    mov         byte ptr [ebp-5],0
 00649705    mov         eax,dword ptr [ebp-4]
 00649708    mov         eax,dword ptr [eax+14]
 0064970B    mov         dword ptr [ebp-0C],eax
 0064970E    mov         eax,dword ptr [ebp-0C]
 00649711    mov         dword ptr [ebp-10],eax
>00649714    jmp         00649719
 00649716    inc         dword ptr [ebp-10]
 00649719    mov         eax,dword ptr [ebp-10]
 0064971C    mov         al,byte ptr [eax]
 0064971E    test        al,al
>00649720    je          00649726
 00649722    sub         al,2E
>00649724    jne         00649716
 00649726    mov         eax,dword ptr [ebp-10]
 00649729    cmp         byte ptr [eax],0
>0064972C    je          0064975D
 0064972E    mov         ecx,dword ptr [ebp-10]
 00649731    sub         ecx,dword ptr [ebp-0C]
 00649734    mov         eax,dword ptr [ebp-4]
 00649737    add         eax,10
 0064973A    mov         edx,dword ptr [ebp-0C]
 0064973D    call        @LStrFromPCharLen
 00649742    mov         ecx,dword ptr [ebp-10]
 00649745    sub         ecx,dword ptr [ebp-0C]
 00649748    inc         ecx
 00649749    mov         eax,dword ptr [ebp-4]
 0064974C    add         eax,14
 0064974F    mov         edx,1
 00649754    call        @LStrDelete
 00649759    mov         byte ptr [ebp-5],1
 0064975D    mov         al,byte ptr [ebp-5]
 00649760    mov         esp,ebp
 00649762    pop         ebp
 00649763    ret
end;*}

//00649764
{*procedure sub_00649764(?:?);
begin
 00649764    push        ebp
 00649765    mov         ebp,esp
 00649767    add         esp,0FFFFFFF8
 0064976A    mov         dword ptr [ebp-8],edx
 0064976D    mov         dword ptr [ebp-4],eax
 00649770    mov         ecx,dword ptr [ebp-8]
 00649773    mov         eax,dword ptr [ebp-4]
 00649776    mov         edx,dword ptr [eax+0C];TPropFixup.FPropInfo:PPropInfo
 00649779    mov         eax,dword ptr [ebp-4]
 0064977C    mov         eax,dword ptr [eax+4];TPropFixup.FInstance:TPersistent
 0064977F    call        SetOrdProp
 00649784    pop         ecx
 00649785    pop         ecx
 00649786    pop         ebp
 00649787    ret
end;*}

//00649788
{*procedure sub_00649788(?:?);
begin
 00649788    push        ebp
 00649789    mov         ebp,esp
 0064978B    add         esp,0FFFFFFF4
 0064978E    xor         ecx,ecx
 00649790    mov         dword ptr [ebp-0C],ecx
 00649793    mov         dword ptr [ebp-8],edx
 00649796    mov         dword ptr [ebp-4],eax
 00649799    xor         eax,eax
 0064979B    push        ebp
 0064979C    push        649811
 006497A1    push        dword ptr fs:[eax]
 006497A4    mov         dword ptr fs:[eax],esp
 006497A7    lea         eax,[ebp-0C]
 006497AA    call        @IntfClear
 006497AF    cmp         dword ptr [ebp-8],0
>006497B3    je          006497E7
 006497B5    mov         eax,dword ptr [ebp-4]
 006497B8    mov         eax,dword ptr [eax+0C];TPropIntfFixup.FPropInfo:PPropInfo
 006497BB    mov         eax,dword ptr [eax]
 006497BD    mov         eax,dword ptr [eax]
 006497BF    call        GetTypeData
 006497C4    add         eax,5
 006497C7    push        eax
 006497C8    lea         eax,[ebp-0C]
 006497CB    call        @IntfClear
 006497D0    mov         ecx,eax
 006497D2    mov         eax,dword ptr [ebp-8]
 006497D5    pop         edx
 006497D6    call        0065E924
 006497DB    test        al,al
>006497DD    jne         006497E7
 006497DF    lea         eax,[ebp-0C]
 006497E2    call        @IntfClear
 006497E7    mov         ecx,dword ptr [ebp-0C]
 006497EA    mov         eax,dword ptr [ebp-4]
 006497ED    mov         edx,dword ptr [eax+0C];TPropIntfFixup.FPropInfo:PPropInfo
 006497F0    mov         eax,dword ptr [ebp-4]
 006497F3    mov         eax,dword ptr [eax+4];TPropIntfFixup.FInstance:TPersistent
 006497F6    call        SetInterfaceProp
 006497FB    xor         eax,eax
 006497FD    pop         edx
 006497FE    pop         ecx
 006497FF    pop         ecx
 00649800    mov         dword ptr fs:[eax],edx
 00649803    push        649818
 00649808    lea         eax,[ebp-0C]
 0064980B    call        @IntfClear
 00649810    ret
>00649811    jmp         @HandleFinally
>00649816    jmp         00649808
 00649818    mov         esp,ebp
 0064981A    pop         ebp
 0064981B    ret
end;*}

//0064981C
{*function sub_0064981C(?:TComponent; ?:AnsiString):?;
begin
 0064981C    push        ebp
 0064981D    mov         ebp,esp
 0064981F    add         esp,0FFFFFFE0
 00649822    xor         ecx,ecx
 00649824    mov         dword ptr [ebp-20],ecx
 00649827    mov         dword ptr [ebp-8],edx
 0064982A    mov         dword ptr [ebp-4],eax
 0064982D    xor         eax,eax
 0064982F    push        ebp
 00649830    push        649906
 00649835    push        dword ptr fs:[eax]
 00649838    mov         dword ptr fs:[eax],esp
 0064983B    xor         eax,eax
 0064983D    mov         dword ptr [ebp-0C],eax
 00649840    cmp         dword ptr [ebp-8],0
>00649844    je          006498F0
 0064984A    mov         eax,dword ptr [ebp-4]
 0064984D    mov         dword ptr [ebp-10],eax
 00649850    mov         eax,dword ptr [ebp-8]
 00649853    mov         dword ptr [ebp-1C],eax
>00649856    jmp         006498DE
 0064985B    mov         eax,dword ptr [ebp-1C]
 0064985E    mov         dword ptr [ebp-18],eax
>00649861    jmp         00649866
 00649863    inc         dword ptr [ebp-1C]
 00649866    mov         eax,dword ptr [ebp-1C]
 00649869    mov         al,byte ptr [eax]
 0064986B    test        al,al
>0064986D    je          00649875
 0064986F    add         al,0D3
 00649871    sub         al,2
>00649873    jae         00649863
 00649875    mov         ecx,dword ptr [ebp-1C]
 00649878    sub         ecx,dword ptr [ebp-18]
 0064987B    lea         eax,[ebp-20]
 0064987E    mov         edx,dword ptr [ebp-18]
 00649881    call        @LStrFromPCharLen
 00649886    mov         edx,dword ptr [ebp-20]
 00649889    mov         eax,dword ptr [ebp-10]
 0064988C    call        TComponent.FindComponent
 00649891    mov         dword ptr [ebp-14],eax
 00649894    cmp         dword ptr [ebp-14],0
>00649898    jne         006498B1
 0064989A    mov         edx,64991C;'Owner'
 0064989F    mov         eax,dword ptr [ebp-20]
 006498A2    call        SameText
 006498A7    test        al,al
>006498A9    je          006498B1
 006498AB    mov         eax,dword ptr [ebp-10]
 006498AE    mov         dword ptr [ebp-14],eax
 006498B1    cmp         dword ptr [ebp-14],0
>006498B5    je          006498F0
 006498B7    mov         eax,dword ptr [ebp-1C]
 006498BA    cmp         byte ptr [eax],2E
>006498BD    jne         006498C2
 006498BF    inc         dword ptr [ebp-1C]
 006498C2    mov         eax,dword ptr [ebp-1C]
 006498C5    cmp         byte ptr [eax],2D
>006498C8    jne         006498CD
 006498CA    inc         dword ptr [ebp-1C]
 006498CD    mov         eax,dword ptr [ebp-1C]
 006498D0    cmp         byte ptr [eax],3E
>006498D3    jne         006498D8
 006498D5    inc         dword ptr [ebp-1C]
 006498D8    mov         eax,dword ptr [ebp-14]
 006498DB    mov         dword ptr [ebp-10],eax
 006498DE    mov         eax,dword ptr [ebp-1C]
 006498E1    cmp         byte ptr [eax],0
>006498E4    jne         0064985B
 006498EA    mov         eax,dword ptr [ebp-10]
 006498ED    mov         dword ptr [ebp-0C],eax
 006498F0    xor         eax,eax
 006498F2    pop         edx
 006498F3    pop         ecx
 006498F4    pop         ecx
 006498F5    mov         dword ptr fs:[eax],edx
 006498F8    push        64990D
 006498FD    lea         eax,[ebp-20]
 00649900    call        @LStrClr
 00649905    ret
>00649906    jmp         @HandleFinally
>0064990B    jmp         006498FD
 0064990D    mov         eax,dword ptr [ebp-0C]
 00649910    mov         esp,ebp
 00649912    pop         ebp
 00649913    ret
end;*}

//00649924
{*procedure sub_00649924(?:?; ?:?);
begin
 00649924    push        ebp
 00649925    mov         ebp,esp
 00649927    push        ecx
 00649928    mov         dword ptr [ebp-4],eax
 0064992B    mov         eax,dword ptr [ebp+8]
 0064992E    mov         eax,dword ptr [eax-4]
 00649931    mov         edx,dword ptr [ebp-4]
 00649934    call        TList.IndexOf
 00649939    test        eax,eax
>0064993B    jge         0064995D
 0064993D    mov         eax,dword ptr [ebp+8]
 00649940    mov         eax,dword ptr [eax-8]
 00649943    mov         edx,dword ptr [ebp-4]
 00649946    call        TList.IndexOf
 0064994B    test        eax,eax
>0064994D    jl          0064995D
 0064994F    mov         eax,dword ptr [ebp+8]
 00649952    mov         eax,dword ptr [eax-4]
 00649955    mov         edx,dword ptr [ebp-4]
 00649958    call        TList.Add
 0064995D    pop         ecx
 0064995E    pop         ebp
 0064995F    ret
end;*}

//00649960
{*procedure sub_00649960(?:?; ?:?);
begin
 00649960    push        ebp
 00649961    mov         ebp,esp
 00649963    add         esp,0FFFFFFF8
 00649966    mov         dword ptr [ebp-4],eax
 00649969    mov         eax,dword ptr [ebp+8]
 0064996C    mov         eax,dword ptr [eax-4]
 0064996F    mov         edx,dword ptr [ebp-4]
 00649972    call        TList.IndexOf
 00649977    mov         dword ptr [ebp-8],eax
 0064997A    cmp         dword ptr [ebp-8],0FFFFFFFF
>0064997E    je          0064998E
 00649980    mov         eax,dword ptr [ebp+8]
 00649983    mov         eax,dword ptr [eax-4]
 00649986    mov         edx,dword ptr [ebp-8]
 00649989    call        TList.Delete
 0064998E    mov         eax,dword ptr [ebp+8]
 00649991    mov         eax,dword ptr [eax-8]
 00649994    mov         edx,dword ptr [ebp-4]
 00649997    call        TList.IndexOf
 0064999C    test        eax,eax
>0064999E    jge         006499AE
 006499A0    mov         eax,dword ptr [ebp+8]
 006499A3    mov         eax,dword ptr [eax-8]
 006499A6    mov         edx,dword ptr [ebp-4]
 006499A9    call        TList.Add
 006499AE    pop         ecx
 006499AF    pop         ecx
 006499B0    pop         ebp
 006499B1    ret
end;*}

//006499B4
procedure sub_006499B4;
begin
{*
 006499B4    push        ebp
 006499B5    mov         ebp,esp
 006499B7    add         esp,0FFFFFFDC
 006499BA    mov         eax,[006ECF90];0x0 GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 006499BF    call        TMultiReadExclusiveWriteSynchronizer.BeginWrite
 006499C4    xor         eax,eax
 006499C6    push        ebp
 006499C7    push        649B8F
 006499CC    push        dword ptr fs:[eax]
 006499CF    mov         dword ptr fs:[eax],esp
 006499D2    mov         eax,[006ECFA8];0x0 gvar_006ECFA8:TThreadList
 006499D7    call        TThreadList.LockList
 006499DC    mov         dword ptr [ebp-0C],eax
 006499DF    xor         eax,eax
 006499E1    push        ebp
 006499E2    push        649B70
 006499E7    push        dword ptr fs:[eax]
 006499EA    mov         dword ptr fs:[eax],esp
 006499ED    mov         eax,dword ptr [ebp-0C]
 006499F0    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>006499F4    jle         00649B58
 006499FA    mov         dl,1
 006499FC    mov         eax,[006422A4];TList
 00649A01    call        TObject.Create;TList.Create
 00649A06    mov         dword ptr [ebp-4],eax
 00649A09    xor         eax,eax
 00649A0B    push        ebp
 00649A0C    push        649B51
 00649A11    push        dword ptr fs:[eax]
 00649A14    mov         dword ptr fs:[eax],esp
 00649A17    mov         dl,1
 00649A19    mov         eax,[006422A4];TList
 00649A1E    call        TObject.Create;TList.Create
 00649A23    mov         dword ptr [ebp-8],eax
 00649A26    xor         eax,eax
 00649A28    push        ebp
 00649A29    push        649AED
 00649A2E    push        dword ptr fs:[eax]
 00649A31    mov         dword ptr fs:[eax],esp
 00649A34    xor         eax,eax
 00649A36    mov         dword ptr [ebp-10],eax
>00649A39    jmp         00649AC8
 00649A3E    mov         edx,dword ptr [ebp-10]
 00649A41    mov         eax,dword ptr [ebp-0C]
 00649A44    call        TList.Get
 00649A49    mov         dword ptr [ebp-20],eax
 00649A4C    mov         eax,dword ptr [ebp-20]
 00649A4F    mov         eax,dword ptr [eax+10]
 00649A52    call        FindGlobalComponent
 00649A57    mov         dword ptr [ebp-14],eax
 00649A5A    cmp         dword ptr [ebp-14],0
>00649A5E    jne         00649A75
 00649A60    mov         eax,dword ptr [ebp-20]
 00649A63    mov         edx,dword ptr [eax+0C]
 00649A66    mov         eax,dword ptr [ebp-20]
 00649A69    mov         eax,dword ptr [eax+4]
 00649A6C    call        GetOrdProp
 00649A71    test        eax,eax
>00649A73    je          00649AB8
 00649A75    cmp         dword ptr [ebp-14],0
>00649A79    je          00649A96
 00649A7B    mov         eax,dword ptr [ebp-20]
 00649A7E    mov         edx,dword ptr [eax+14]
 00649A81    mov         eax,dword ptr [ebp-14]
 00649A84    call        0064981C
 00649A89    mov         dword ptr [ebp-1C],eax
 00649A8C    mov         edx,dword ptr [ebp-1C]
 00649A8F    mov         eax,dword ptr [ebp-20]
 00649A92    mov         ecx,dword ptr [eax]
 00649A94    call        dword ptr [ecx]
 00649A96    push        ebp
 00649A97    mov         eax,dword ptr [ebp-20]
 00649A9A    mov         eax,dword ptr [eax+4]
 00649A9D    call        00649924
 00649AA2    pop         ecx
 00649AA3    mov         edx,dword ptr [ebp-10]
 00649AA6    mov         eax,dword ptr [ebp-0C]
 00649AA9    call        TList.Delete
 00649AAE    mov         eax,dword ptr [ebp-20]
 00649AB1    call        TObject.Free
>00649AB6    jmp         00649AC8
 00649AB8    push        ebp
 00649AB9    mov         eax,dword ptr [ebp-20]
 00649ABC    mov         eax,dword ptr [eax+4]
 00649ABF    call        00649960
 00649AC4    pop         ecx
 00649AC5    inc         dword ptr [ebp-10]
 00649AC8    mov         eax,dword ptr [ebp-0C]
 00649ACB    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00649ACE    cmp         eax,dword ptr [ebp-10]
>00649AD1    jg          00649A3E
 00649AD7    xor         eax,eax
 00649AD9    pop         edx
 00649ADA    pop         ecx
 00649ADB    pop         ecx
 00649ADC    mov         dword ptr fs:[eax],edx
 00649ADF    push        649AF4
 00649AE4    mov         eax,dword ptr [ebp-8]
 00649AE7    call        TObject.Free
 00649AEC    ret
>00649AED    jmp         @HandleFinally
>00649AF2    jmp         00649AE4
 00649AF4    mov         eax,dword ptr [ebp-4]
 00649AF7    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00649AFA    dec         eax
 00649AFB    test        eax,eax
>00649AFD    jl          00649B3B
 00649AFF    inc         eax
 00649B00    mov         dword ptr [ebp-24],eax
 00649B03    mov         dword ptr [ebp-10],0
 00649B0A    mov         edx,dword ptr [ebp-10]
 00649B0D    mov         eax,dword ptr [ebp-4]
 00649B10    call        TList.Get
 00649B15    mov         dword ptr [ebp-18],eax
 00649B18    mov         eax,dword ptr [ebp-18]
 00649B1B    mov         edx,dword ptr ds:[643204];TComponent
 00649B21    call        @IsClass
 00649B26    test        al,al
>00649B28    je          00649B33
 00649B2A    mov         eax,dword ptr [ebp-18]
 00649B2D    and         word ptr [eax+1C],0FF7F
 00649B33    inc         dword ptr [ebp-10]
 00649B36    dec         dword ptr [ebp-24]
>00649B39    jne         00649B0A
 00649B3B    xor         eax,eax
 00649B3D    pop         edx
 00649B3E    pop         ecx
 00649B3F    pop         ecx
 00649B40    mov         dword ptr fs:[eax],edx
 00649B43    push        649B58
 00649B48    mov         eax,dword ptr [ebp-4]
 00649B4B    call        TObject.Free
 00649B50    ret
>00649B51    jmp         @HandleFinally
>00649B56    jmp         00649B48
 00649B58    xor         eax,eax
 00649B5A    pop         edx
 00649B5B    pop         ecx
 00649B5C    pop         ecx
 00649B5D    mov         dword ptr fs:[eax],edx
 00649B60    push        649B77
 00649B65    mov         eax,[006ECFA8];0x0 gvar_006ECFA8:TThreadList
 00649B6A    call        TThreadList.UnlockList
 00649B6F    ret
>00649B70    jmp         @HandleFinally
>00649B75    jmp         00649B65
 00649B77    xor         eax,eax
 00649B79    pop         edx
 00649B7A    pop         ecx
 00649B7B    pop         ecx
 00649B7C    mov         dword ptr fs:[eax],edx
 00649B7F    push        649B96
 00649B84    mov         eax,[006ECF90];0x0 GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 00649B89    call        TMultiReadExclusiveWriteSynchronizer.EndWrite
 00649B8E    ret
>00649B8F    jmp         @HandleFinally
>00649B94    jmp         00649B84
 00649B96    mov         esp,ebp
 00649B98    pop         ebp
 00649B99    ret
*}
end;

//00649B9C
{*procedure sub_00649B9C(?:Boolean; ?:?);
begin
 00649B9C    push        ebp
 00649B9D    mov         ebp,esp
 00649B9F    add         esp,0FFFFFFEC
 00649BA2    mov         dword ptr [ebp-8],edx
 00649BA5    mov         dword ptr [ebp-4],eax
 00649BA8    cmp         dword ptr ds:[6ECFA8],0;gvar_006ECFA8:TThreadList
>00649BAF    je          00649C51
 00649BB5    mov         eax,[006ECFA8];0x0 gvar_006ECFA8:TThreadList
 00649BBA    call        TThreadList.LockList
 00649BBF    mov         dword ptr [ebp-14],eax
 00649BC2    xor         eax,eax
 00649BC4    push        ebp
 00649BC5    push        649C4A
 00649BCA    push        dword ptr fs:[eax]
 00649BCD    mov         dword ptr fs:[eax],esp
 00649BD0    mov         eax,dword ptr [ebp-14]
 00649BD3    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00649BD6    dec         eax
 00649BD7    cmp         eax,0
>00649BDA    jl          00649C32
 00649BDC    mov         dword ptr [ebp-0C],eax
 00649BDF    mov         edx,dword ptr [ebp-0C]
 00649BE2    mov         eax,dword ptr [ebp-14]
 00649BE5    call        TList.Get
 00649BEA    mov         dword ptr [ebp-10],eax
 00649BED    cmp         dword ptr [ebp-4],0
>00649BF1    je          00649BFE
 00649BF3    mov         eax,dword ptr [ebp-10]
 00649BF6    mov         eax,dword ptr [eax+8]
 00649BF9    cmp         eax,dword ptr [ebp-4]
>00649BFC    jne         00649C29
 00649BFE    cmp         dword ptr [ebp-8],0
>00649C02    je          00649C16
 00649C04    mov         eax,dword ptr [ebp-10]
 00649C07    mov         edx,dword ptr [eax+10]
 00649C0A    mov         eax,dword ptr [ebp-8]
 00649C0D    call        SameText
 00649C12    test        al,al
>00649C14    je          00649C29
 00649C16    mov         edx,dword ptr [ebp-0C]
 00649C19    mov         eax,dword ptr [ebp-14]
 00649C1C    call        TList.Delete
 00649C21    mov         eax,dword ptr [ebp-10]
 00649C24    call        TObject.Free
 00649C29    dec         dword ptr [ebp-0C]
 00649C2C    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00649C30    jne         00649BDF
 00649C32    xor         eax,eax
 00649C34    pop         edx
 00649C35    pop         ecx
 00649C36    pop         ecx
 00649C37    mov         dword ptr fs:[eax],edx
 00649C3A    push        649C51
 00649C3F    mov         eax,[006ECFA8];0x0 gvar_006ECFA8:TThreadList
 00649C44    call        TThreadList.UnlockList
 00649C49    ret
>00649C4A    jmp         @HandleFinally
>00649C4F    jmp         00649C3F
 00649C51    mov         esp,ebp
 00649C53    pop         ebp
 00649C54    ret
end;*}

//00649C58
{*procedure sub_00649C58(?:?);
begin
 00649C58    push        ebp
 00649C59    mov         ebp,esp
 00649C5B    add         esp,0FFFFFFF0
 00649C5E    mov         dword ptr [ebp-4],eax
 00649C61    cmp         dword ptr ds:[6ECFA8],0;gvar_006ECFA8:TThreadList
>00649C68    je          00649CE8
 00649C6A    mov         eax,[006ECFA8];0x0 gvar_006ECFA8:TThreadList
 00649C6F    call        TThreadList.LockList
 00649C74    mov         dword ptr [ebp-10],eax
 00649C77    xor         eax,eax
 00649C79    push        ebp
 00649C7A    push        649CE1
 00649C7F    push        dword ptr fs:[eax]
 00649C82    mov         dword ptr fs:[eax],esp
 00649C85    mov         eax,dword ptr [ebp-10]
 00649C88    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00649C8B    dec         eax
 00649C8C    cmp         eax,0
>00649C8F    jl          00649CC9
 00649C91    mov         dword ptr [ebp-8],eax
 00649C94    mov         edx,dword ptr [ebp-8]
 00649C97    mov         eax,dword ptr [ebp-10]
 00649C9A    call        TList.Get
 00649C9F    mov         dword ptr [ebp-0C],eax
 00649CA2    mov         eax,dword ptr [ebp-0C]
 00649CA5    mov         eax,dword ptr [eax+4]
 00649CA8    cmp         eax,dword ptr [ebp-4]
>00649CAB    jne         00649CC0
 00649CAD    mov         edx,dword ptr [ebp-8]
 00649CB0    mov         eax,dword ptr [ebp-10]
 00649CB3    call        TList.Delete
 00649CB8    mov         eax,dword ptr [ebp-0C]
 00649CBB    call        TObject.Free
 00649CC0    dec         dword ptr [ebp-8]
 00649CC3    cmp         dword ptr [ebp-8],0FFFFFFFF
>00649CC7    jne         00649C94
 00649CC9    xor         eax,eax
 00649CCB    pop         edx
 00649CCC    pop         ecx
 00649CCD    pop         ecx
 00649CCE    mov         dword ptr fs:[eax],edx
 00649CD1    push        649CE8
 00649CD6    mov         eax,[006ECFA8];0x0 gvar_006ECFA8:TThreadList
 00649CDB    call        TThreadList.UnlockList
 00649CE0    ret
>00649CE1    jmp         @HandleFinally
>00649CE6    jmp         00649CD6
 00649CE8    mov         esp,ebp
 00649CEA    pop         ebp
 00649CEB    ret
end;*}

//00649CEC
{*procedure sub_00649CEC(?:?);
begin
 00649CEC    push        ebp
 00649CED    mov         ebp,esp
 00649CEF    push        ecx
 00649CF0    mov         dword ptr [ebp-4],eax
 00649CF3    mov         ecx,dword ptr [ebp-4]
 00649CF6    mov         dl,1
 00649CF8    mov         eax,[00641F14];EReadError
 00649CFD    call        Exception.Create;EReadError.Create
 00649D02    call        @RaiseExcept
 00649D07    pop         ecx
 00649D08    pop         ebp
 00649D09    ret
end;*}

//00649D0C
procedure sub_00649D0C;
begin
{*
 00649D0C    push        ebp
 00649D0D    mov         ebp,esp
 00649D0F    mov         eax,[006EA09C];^gvar_0065502C
 00649D14    call        00649CEC
 00649D19    pop         ebp
 00649D1A    ret
*}
end;

//00649D1C
{*procedure sub_00649D1C(?:?);
begin
 00649D1C    push        ebp
 00649D1D    mov         ebp,esp
 00649D1F    add         esp,0FFFFFFF4
 00649D22    mov         dword ptr [ebp-4],eax
 00649D25    mov         eax,dword ptr [ebp-4]
 00649D28    mov         dword ptr [ebp-0C],eax
 00649D2B    mov         byte ptr [ebp-8],0B
 00649D2F    lea         eax,[ebp-0C]
 00649D32    push        eax
 00649D33    push        0
 00649D35    mov         ecx,dword ptr ds:[6EA0D8];^gvar_006550A4
 00649D3B    mov         dl,1
 00649D3D    mov         eax,[00641F14];EReadError
 00649D42    call        Exception.CreateResFmt;EReadError.Create
 00649D47    call        @RaiseExcept
 00649D4C    mov         esp,ebp
 00649D4E    pop         ebp
 00649D4F    ret
end;*}

//00649D50
destructor TReader.Destroy;
begin
{*
 00649D50    push        ebp
 00649D51    mov         ebp,esp
 00649D53    add         esp,0FFFFFFF8
 00649D56    push        ebx
 00649D57    call        @BeforeDestruction
 00649D5C    mov         byte ptr [ebp-5],dl
 00649D5F    mov         dword ptr [ebp-4],eax
 00649D62    mov         eax,dword ptr [ebp-4]
 00649D65    mov         edx,dword ptr [eax+10]
 00649D68    mov         eax,dword ptr [ebp-4]
 00649D6B    sub         edx,dword ptr [eax+14]
 00649D6E    mov         eax,dword ptr [ebp-4]
 00649D71    mov         eax,dword ptr [eax+4]
 00649D74    mov         cx,1
 00649D78    mov         ebx,dword ptr [eax]
 00649D7A    call        dword ptr [ebx+10]
 00649D7D    mov         dl,byte ptr [ebp-5]
 00649D80    and         dl,0FC
 00649D83    mov         eax,dword ptr [ebp-4]
 00649D86    call        TFiler.Destroy
 00649D8B    cmp         byte ptr [ebp-5],0
>00649D8F    jle         00649D99
 00649D91    mov         eax,dword ptr [ebp-4]
 00649D94    call        @ClassDestroy
 00649D99    pop         ebx
 00649D9A    pop         ecx
 00649D9B    pop         ecx
 00649D9C    pop         ebp
 00649D9D    ret
*}
end;

//00649DA0
{*procedure sub_00649DA0(?:?; ?:?);
begin
 00649DA0    push        ebp
 00649DA1    mov         ebp,esp
 00649DA3    add         esp,0FFFFFFF8
 00649DA6    mov         byte ptr [ebp-5],dl
 00649DA9    mov         dword ptr [ebp-4],eax
 00649DAC    mov         eax,dword ptr [ebp-4]
 00649DAF    call        TReader.ReadValue
 00649DB4    cmp         al,byte ptr [ebp-5]
>00649DB7    je          00649DCC
 00649DB9    mov         eax,dword ptr [ebp-4]
 00649DBC    dec         dword ptr [eax+10]
 00649DBF    mov         eax,dword ptr [ebp-4]
 00649DC2    call        TReader.SkipValue
 00649DC7    call        00649D0C
 00649DCC    pop         ecx
 00649DCD    pop         ecx
 00649DCE    pop         ebp
 00649DCF    ret
end;*}

//00649DD0
{*procedure sub_00649DD0(?:?; ?:?; ?:?; ?:?);
begin
 00649DD0    push        ebp
 00649DD1    mov         ebp,esp
 00649DD3    add         esp,0FFFFFFF4
 00649DD6    mov         byte ptr [ebp-9],cl
 00649DD9    mov         dword ptr [ebp-8],edx
 00649DDC    mov         dword ptr [ebp-4],eax
 00649DDF    mov         eax,dword ptr [ebp-4]
 00649DE2    mov         edx,dword ptr [eax+70];TReader.FPropName:String
 00649DE5    mov         eax,dword ptr [ebp-8]
 00649DE8    call        SameText
 00649DED    test        al,al
>00649DEF    je          00649E0C
 00649DF1    cmp         word ptr [ebp+12],0
>00649DF6    je          00649E0C
 00649DF8    mov         edx,dword ptr [ebp-4]
 00649DFB    mov         eax,dword ptr [ebp+14]
 00649DFE    call        dword ptr [ebp+10]
 00649E01    mov         eax,dword ptr [ebp-4]
 00649E04    add         eax,70;TReader.FPropName:String
 00649E07    call        @LStrClr
 00649E0C    mov         esp,ebp
 00649E0E    pop         ebp
 00649E0F    ret         10
end;*}

//00649E14
{*procedure sub_00649E14(?:?; ?:?; ?:?; ?:?);
begin
 00649E14    push        ebp
 00649E15    mov         ebp,esp
 00649E17    add         esp,0FFFFFFEC
 00649E1A    mov         byte ptr [ebp-11],cl
 00649E1D    mov         dword ptr [ebp-8],edx
 00649E20    mov         dword ptr [ebp-4],eax
 00649E23    mov         eax,dword ptr [ebp-4]
 00649E26    mov         edx,dword ptr [eax+70];TReader.FPropName:String
 00649E29    mov         eax,dword ptr [ebp-8]
 00649E2C    call        SameText
 00649E31    test        al,al
>00649E33    je          00649EEA
 00649E39    cmp         word ptr [ebp+12],0
>00649E3E    je          00649EEA
 00649E44    mov         eax,dword ptr [ebp-4]
 00649E47    call        TReader.ReadValue
 00649E4C    cmp         al,0A
>00649E4E    je          00649E6A
 00649E50    mov         eax,dword ptr [ebp-4]
 00649E53    dec         dword ptr [eax+10];TReader.FBufPos:Integer
 00649E56    mov         eax,dword ptr [ebp-4]
 00649E59    call        TReader.SkipValue
 00649E5E    mov         eax,dword ptr [ebp-4]
 00649E61    mov         byte ptr [eax+78],1;TReader.FCanHandleExcepts:Boolean
 00649E65    call        00649D0C
 00649E6A    mov         dl,1
 00649E6C    mov         eax,[00642BA0];TMemoryStream
 00649E71    call        TObject.Create;TMemoryStream.Create
 00649E76    mov         dword ptr [ebp-0C],eax
 00649E79    xor         eax,eax
 00649E7B    push        ebp
 00649E7C    push        649ED8
 00649E81    push        dword ptr fs:[eax]
 00649E84    mov         dword ptr fs:[eax],esp
 00649E87    lea         edx,[ebp-10]
 00649E8A    mov         ecx,4
 00649E8F    mov         eax,dword ptr [ebp-4]
 00649E92    call        TReader.Read
 00649E97    mov         edx,dword ptr [ebp-10]
 00649E9A    mov         eax,dword ptr [ebp-0C]
 00649E9D    mov         ecx,dword ptr [eax]
 00649E9F    call        dword ptr [ecx];TMemoryStream.sub_00649128
 00649EA1    mov         eax,dword ptr [ebp-0C]
 00649EA4    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00649EA7    mov         ecx,dword ptr [ebp-10]
 00649EAA    mov         eax,dword ptr [ebp-4]
 00649EAD    call        TReader.Read
 00649EB2    mov         eax,dword ptr [ebp-4]
 00649EB5    mov         byte ptr [eax+78],1;TReader.FCanHandleExcepts:Boolean
 00649EB9    mov         edx,dword ptr [ebp-0C]
 00649EBC    mov         eax,dword ptr [ebp+14]
 00649EBF    call        dword ptr [ebp+10]
 00649EC2    xor         eax,eax
 00649EC4    pop         edx
 00649EC5    pop         ecx
 00649EC6    pop         ecx
 00649EC7    mov         dword ptr fs:[eax],edx
 00649ECA    push        649EDF
 00649ECF    mov         eax,dword ptr [ebp-0C]
 00649ED2    call        TObject.Free
 00649ED7    ret
>00649ED8    jmp         @HandleFinally
>00649EDD    jmp         00649ECF
 00649EDF    mov         eax,dword ptr [ebp-4]
 00649EE2    add         eax,70;TReader.FPropName:String
 00649EE5    call        @LStrClr
 00649EEA    mov         esp,ebp
 00649EEC    pop         ebp
 00649EED    ret         10
end;*}

//00649EF0
function TReader.EndOfList:Boolean;
begin
{*
 00649EF0    push        ebp
 00649EF1    mov         ebp,esp
 00649EF3    add         esp,0FFFFFFF8
 00649EF6    mov         dword ptr [ebp-4],eax
 00649EF9    mov         eax,dword ptr [ebp-4]
 00649EFC    call        TReader.ReadValue
 00649F01    test        al,al
 00649F03    sete        byte ptr [ebp-5]
 00649F07    mov         eax,dword ptr [ebp-4]
 00649F0A    dec         dword ptr [eax+10]
 00649F0D    mov         al,byte ptr [ebp-5]
 00649F10    pop         ecx
 00649F11    pop         ecx
 00649F12    pop         ebp
 00649F13    ret
*}
end;

//00649F14
{*function sub_00649F14(?:?):?;
begin
 00649F14    push        ebp
 00649F15    mov         ebp,esp
 00649F17    add         esp,0FFFFFFF4
 00649F1A    push        ebx
 00649F1B    mov         dword ptr [ebp-8],edx
 00649F1E    mov         dword ptr [ebp-4],eax
 00649F21    mov         byte ptr [ebp-9],0
 00649F25    mov         eax,dword ptr [ebp-4]
 00649F28    cmp         word ptr [eax+5A],0;TReader.?f5A:word
>00649F2D    je          00649F42
 00649F2F    lea         eax,[ebp-9]
 00649F32    push        eax
 00649F33    mov         ebx,dword ptr [ebp-4]
 00649F36    mov         ecx,dword ptr [ebp-8]
 00649F39    mov         edx,dword ptr [ebp-4]
 00649F3C    mov         eax,dword ptr [ebx+5C];TReader.?f5C:dword
 00649F3F    call        dword ptr [ebx+58];TReader.FOnError
 00649F42    mov         al,byte ptr [ebp-9]
 00649F45    pop         ebx
 00649F46    mov         esp,ebp
 00649F48    pop         ebp
 00649F49    ret
end;*}

//00649F4C
{*function sub_00649F4C(?:?; ?:?):?;
begin
 00649F4C    push        ebp
 00649F4D    mov         ebp,esp
 00649F4F    add         esp,0FFFFFEEC
 00649F55    push        ebx
 00649F56    mov         dword ptr [ebp-0C],ecx
 00649F59    mov         dword ptr [ebp-8],edx
 00649F5C    mov         dword ptr [ebp-4],eax
 00649F5F    lea         eax,[ebp-114]
 00649F65    mov         edx,dword ptr [ebp-0C]
 00649F68    mov         ecx,0FF
 00649F6D    call        @LStrToString
 00649F72    lea         edx,[ebp-114]
 00649F78    mov         eax,dword ptr [ebp-8]
 00649F7B    mov         eax,dword ptr [eax]
 00649F7D    call        TObject.MethodAddress
 00649F82    mov         dword ptr [ebp-10],eax
 00649F85    cmp         dword ptr [ebp-10],0
 00649F89    sete        byte ptr [ebp-11]
 00649F8D    mov         eax,dword ptr [ebp-4]
 00649F90    cmp         word ptr [eax+3A],0;TReader.?f3A:word
>00649F95    je          00649FAE
 00649F97    lea         eax,[ebp-10]
 00649F9A    push        eax
 00649F9B    lea         eax,[ebp-11]
 00649F9E    push        eax
 00649F9F    mov         ebx,dword ptr [ebp-4]
 00649FA2    mov         ecx,dword ptr [ebp-0C]
 00649FA5    mov         edx,dword ptr [ebp-4]
 00649FA8    mov         eax,dword ptr [ebx+3C];TReader.?f3C:dword
 00649FAB    call        dword ptr [ebx+38];TReader.FOnFindMethod
 00649FAE    cmp         byte ptr [ebp-11],0
>00649FB2    je          00649FB9
 00649FB4    call        00649D0C
 00649FB9    mov         eax,dword ptr [ebp-10]
 00649FBC    pop         ebx
 00649FBD    mov         esp,ebp
 00649FBF    pop         ebp
 00649FC0    ret
end;*}

//00649FC4
procedure sub_00649FC4(?:Pointer);
begin
{*
 00649FC4    push        ebp
 00649FC5    mov         ebp,esp
 00649FC7    add         esp,0FFFFFFF0
 00649FCA    mov         dword ptr [ebp-4],eax
 00649FCD    mov         eax,[006ECFA8];0x0 gvar_006ECFA8:TThreadList
 00649FD2    call        TThreadList.LockList
 00649FD7    mov         dword ptr [ebp-0C],eax
 00649FDA    xor         eax,eax
 00649FDC    push        ebp
 00649FDD    push        64A055
 00649FE2    push        dword ptr fs:[eax]
 00649FE5    mov         dword ptr fs:[eax],esp
 00649FE8    mov         eax,dword ptr [ebp-0C]
 00649FEB    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00649FEE    dec         eax
 00649FEF    cmp         eax,0
>00649FF2    jl          0064A03D
 00649FF4    mov         dword ptr [ebp-8],eax
 00649FF7    mov         edx,dword ptr [ebp-8]
 00649FFA    mov         eax,dword ptr [ebp-0C]
 00649FFD    call        TList.Get
 0064A002    mov         dword ptr [ebp-10],eax
 0064A005    mov         eax,dword ptr [ebp-10]
 0064A008    mov         eax,dword ptr [eax+4]
 0064A00B    mov         edx,dword ptr [ebp-4]
 0064A00E    cmp         eax,dword ptr [edx+4]
>0064A011    jne         0064A034
 0064A013    mov         eax,dword ptr [ebp-10]
 0064A016    mov         eax,dword ptr [eax+0C]
 0064A019    mov         edx,dword ptr [ebp-4]
 0064A01C    cmp         eax,dword ptr [edx+0C]
>0064A01F    jne         0064A034
 0064A021    mov         eax,dword ptr [ebp-10]
 0064A024    call        TObject.Free
 0064A029    mov         edx,dword ptr [ebp-8]
 0064A02C    mov         eax,dword ptr [ebp-0C]
 0064A02F    call        TList.Delete
 0064A034    dec         dword ptr [ebp-8]
 0064A037    cmp         dword ptr [ebp-8],0FFFFFFFF
>0064A03B    jne         00649FF7
 0064A03D    xor         eax,eax
 0064A03F    pop         edx
 0064A040    pop         ecx
 0064A041    pop         ecx
 0064A042    mov         dword ptr fs:[eax],edx
 0064A045    push        64A05C
 0064A04A    mov         eax,[006ECFA8];0x0 gvar_006ECFA8:TThreadList
 0064A04F    call        TThreadList.UnlockList
 0064A054    ret
>0064A055    jmp         @HandleFinally
>0064A05A    jmp         0064A04A
 0064A05C    mov         esp,ebp
 0064A05E    pop         ebp
 0064A05F    ret
*}
end;

//0064A060
{*procedure sub_0064A060(?:?);
begin
 0064A060    push        ebp
 0064A061    mov         ebp,esp
 0064A063    add         esp,0FFFFFFE8
 0064A066    xor         edx,edx
 0064A068    mov         dword ptr [ebp-0C],edx
 0064A06B    mov         dword ptr [ebp-4],eax
 0064A06E    xor         eax,eax
 0064A070    push        ebp
 0064A071    push        64A189
 0064A076    push        dword ptr fs:[eax]
 0064A079    mov         dword ptr fs:[eax],esp
 0064A07C    mov         eax,dword ptr [ebp-4]
 0064A07F    cmp         dword ptr [eax+30],0
>0064A083    je          0064A173
 0064A089    xor         eax,eax
 0064A08B    push        ebp
 0064A08C    push        64A16C
 0064A091    push        dword ptr fs:[eax]
 0064A094    mov         dword ptr fs:[eax],esp
 0064A097    mov         eax,dword ptr [ebp-4]
 0064A09A    mov         eax,dword ptr [eax+30]
 0064A09D    mov         eax,dword ptr [eax+8]
 0064A0A0    dec         eax
 0064A0A1    test        eax,eax
>0064A0A3    jl          0064A156
 0064A0A9    inc         eax
 0064A0AA    mov         dword ptr [ebp-14],eax
 0064A0AD    mov         dword ptr [ebp-8],0
 0064A0B4    mov         eax,dword ptr [ebp-4]
 0064A0B7    mov         eax,dword ptr [eax+30]
 0064A0BA    mov         edx,dword ptr [ebp-8]
 0064A0BD    call        TList.Get
 0064A0C2    mov         dword ptr [ebp-18],eax
 0064A0C5    lea         eax,[ebp-0C]
 0064A0C8    mov         edx,dword ptr [ebp-18]
 0064A0CB    mov         edx,dword ptr [edx+14]
 0064A0CE    call        @LStrLAsg
 0064A0D3    lea         edx,[ebp-0C]
 0064A0D6    mov         eax,dword ptr [ebp-4]
 0064A0D9    mov         ecx,dword ptr [eax]
 0064A0DB    call        dword ptr [ecx+20]
 0064A0DE    mov         eax,dword ptr [ebp-18]
 0064A0E1    mov         eax,dword ptr [eax+8]
 0064A0E4    mov         edx,dword ptr [ebp-0C]
 0064A0E7    call        0064981C
 0064A0EC    mov         dword ptr [ebp-10],eax
 0064A0EF    mov         eax,dword ptr [ebp-4]
 0064A0F2    mov         eax,dword ptr [eax+30]
 0064A0F5    mov         edx,dword ptr [ebp-8]
 0064A0F8    call        TList.Get
 0064A0FD    call        00649FC4
 0064A102    cmp         dword ptr [ebp-10],0
>0064A106    jne         0064A140
 0064A108    mov         eax,dword ptr [ebp-18]
 0064A10B    call        006496F8
 0064A110    test        al,al
>0064A112    je          0064A140
 0064A114    mov         eax,dword ptr [ebp-4]
 0064A117    mov         eax,dword ptr [eax+30]
 0064A11A    mov         edx,dword ptr [ebp-8]
 0064A11D    call        TList.Get
 0064A122    mov         edx,eax
 0064A124    mov         eax,[006ECFA8];0x0 gvar_006ECFA8:TThreadList
 0064A129    call        00645A08
 0064A12E    mov         eax,dword ptr [ebp-4]
 0064A131    mov         eax,dword ptr [eax+30]
 0064A134    xor         ecx,ecx
 0064A136    mov         edx,dword ptr [ebp-8]
 0064A139    call        TList.Put
>0064A13E    jmp         0064A14A
 0064A140    mov         edx,dword ptr [ebp-10]
 0064A143    mov         eax,dword ptr [ebp-18]
 0064A146    mov         ecx,dword ptr [eax]
 0064A148    call        dword ptr [ecx]
 0064A14A    inc         dword ptr [ebp-8]
 0064A14D    dec         dword ptr [ebp-14]
>0064A150    jne         0064A0B4
 0064A156    xor         eax,eax
 0064A158    pop         edx
 0064A159    pop         ecx
 0064A15A    pop         ecx
 0064A15B    mov         dword ptr fs:[eax],edx
 0064A15E    push        64A173
 0064A163    mov         eax,dword ptr [ebp-4]
 0064A166    call        0064A1C4
 0064A16B    ret
>0064A16C    jmp         @HandleFinally
>0064A171    jmp         0064A163
 0064A173    xor         eax,eax
 0064A175    pop         edx
 0064A176    pop         ecx
 0064A177    pop         ecx
 0064A178    mov         dword ptr fs:[eax],edx
 0064A17B    push        64A190
 0064A180    lea         eax,[ebp-0C]
 0064A183    call        @LStrClr
 0064A188    ret
>0064A189    jmp         @HandleFinally
>0064A18E    jmp         0064A180
 0064A190    mov         esp,ebp
 0064A192    pop         ebp
 0064A193    ret
end;*}

//0064A194
procedure sub_0064A194;
begin
{*
 0064A194    push        ebp
 0064A195    mov         ebp,esp
 0064A197    push        ecx
 0064A198    mov         dword ptr [ebp-4],eax
 0064A19B    mov         eax,dword ptr [ebp-4]
 0064A19E    call        0064A2D4
 0064A1A3    cdq
 0064A1A4    push        edx
 0064A1A5    push        eax
 0064A1A6    mov         eax,dword ptr [ebp-4]
 0064A1A9    mov         eax,dword ptr [eax+4];TReader.FStream:TStream
 0064A1AC    call        TStream.SetPosition
 0064A1B1    mov         eax,dword ptr [ebp-4]
 0064A1B4    xor         edx,edx
 0064A1B6    mov         dword ptr [eax+10],edx;TReader.FBufPos:Integer
 0064A1B9    mov         eax,dword ptr [ebp-4]
 0064A1BC    xor         edx,edx
 0064A1BE    mov         dword ptr [eax+14],edx;TReader.FBufEnd:Integer
 0064A1C1    pop         ecx
 0064A1C2    pop         ebp
 0064A1C3    ret
*}
end;

//0064A1C4
{*procedure sub_0064A1C4(?:?);
begin
 0064A1C4    push        ebp
 0064A1C5    mov         ebp,esp
 0064A1C7    add         esp,0FFFFFFF4
 0064A1CA    mov         dword ptr [ebp-4],eax
 0064A1CD    mov         eax,dword ptr [ebp-4]
 0064A1D0    cmp         dword ptr [eax+30],0
>0064A1D4    je          0064A21D
 0064A1D6    mov         eax,dword ptr [ebp-4]
 0064A1D9    mov         eax,dword ptr [eax+30]
 0064A1DC    mov         eax,dword ptr [eax+8]
 0064A1DF    dec         eax
 0064A1E0    test        eax,eax
>0064A1E2    jl          0064A20A
 0064A1E4    inc         eax
 0064A1E5    mov         dword ptr [ebp-0C],eax
 0064A1E8    mov         dword ptr [ebp-8],0
 0064A1EF    mov         edx,dword ptr [ebp-8]
 0064A1F2    mov         eax,dword ptr [ebp-4]
 0064A1F5    mov         eax,dword ptr [eax+30]
 0064A1F8    call        TList.Get
 0064A1FD    call        TObject.Free
 0064A202    inc         dword ptr [ebp-8]
 0064A205    dec         dword ptr [ebp-0C]
>0064A208    jne         0064A1EF
 0064A20A    mov         eax,dword ptr [ebp-4]
 0064A20D    mov         eax,dword ptr [eax+30]
 0064A210    call        TObject.Free
 0064A215    mov         eax,dword ptr [ebp-4]
 0064A218    xor         edx,edx
 0064A21A    mov         dword ptr [eax+30],edx
 0064A21D    mov         esp,ebp
 0064A21F    pop         ebp
 0064A220    ret
end;*}

//0064A224
{*function sub_0064A224(?:?; ?:?; ?:?):?;
begin
 0064A224    push        ebp
 0064A225    mov         ebp,esp
 0064A227    add         esp,0FFFFFFE0
 0064A22A    mov         dword ptr [ebp-0C],ecx
 0064A22D    mov         dword ptr [ebp-8],edx
 0064A230    mov         dword ptr [ebp-4],eax
 0064A233    mov         eax,dword ptr [ebp-8]
 0064A236    call        TObject.ClassType
 0064A23B    mov         dword ptr [ebp-1C],eax
>0064A23E    jmp         0064A298
 0064A240    mov         eax,dword ptr [ebp-1C]
 0064A243    call        GetFieldClassTable
 0064A248    mov         dword ptr [ebp-18],eax
 0064A24B    cmp         dword ptr [ebp-18],0
>0064A24F    je          0064A28D
 0064A251    mov         eax,dword ptr [ebp-18]
 0064A254    movsx       eax,word ptr [eax]
 0064A257    dec         eax
 0064A258    test        eax,eax
>0064A25A    jl          0064A28D
 0064A25C    inc         eax
 0064A25D    mov         dword ptr [ebp-20],eax
 0064A260    mov         dword ptr [ebp-14],0
 0064A267    mov         eax,dword ptr [ebp-14]
 0064A26A    mov         edx,dword ptr [ebp-18]
 0064A26D    mov         eax,dword ptr [edx+eax*4+2]
 0064A271    mov         eax,dword ptr [eax]
 0064A273    mov         dword ptr [ebp-10],eax
 0064A276    mov         edx,dword ptr [ebp-0C]
 0064A279    mov         eax,dword ptr [ebp-10]
 0064A27C    call        TObject.ClassNameIs
 0064A281    test        al,al
>0064A283    jne         0064A2CA
 0064A285    inc         dword ptr [ebp-14]
 0064A288    dec         dword ptr [ebp-20]
>0064A28B    jne         0064A267
 0064A28D    mov         eax,dword ptr [ebp-1C]
 0064A290    call        TObject.ClassParent
 0064A295    mov         dword ptr [ebp-1C],eax
 0064A298    mov         eax,dword ptr [ebp-1C]
 0064A29B    cmp         eax,dword ptr ds:[6423D4];TPersistent
>0064A2A1    jne         0064A240
 0064A2A3    mov         eax,dword ptr [ebp-4]
 0064A2A6    cmp         dword ptr [eax+74],0
>0064A2AA    je          0064A2BF
 0064A2AC    mov         eax,dword ptr [ebp-4]
 0064A2AF    mov         eax,dword ptr [eax+74]
 0064A2B2    mov         edx,dword ptr [ebp-0C]
 0064A2B5    call        00644194
 0064A2BA    mov         dword ptr [ebp-10],eax
>0064A2BD    jmp         0064A2CA
 0064A2BF    mov         eax,dword ptr [ebp-0C]
 0064A2C2    call        006442AC
 0064A2C7    mov         dword ptr [ebp-10],eax
 0064A2CA    mov         eax,dword ptr [ebp-10]
 0064A2CD    mov         esp,ebp
 0064A2CF    pop         ebp
 0064A2D0    ret
end;*}

//0064A2D4
{*function sub_0064A2D4(?:TReader):?;
begin
 0064A2D4    push        ebp
 0064A2D5    mov         ebp,esp
 0064A2D7    add         esp,0FFFFFFF8
 0064A2DA    mov         dword ptr [ebp-4],eax
 0064A2DD    mov         eax,dword ptr [ebp-4]
 0064A2E0    mov         eax,dword ptr [eax+4];TReader.FStream:TStream
 0064A2E3    call        TStream.GetPosition
 0064A2E8    mov         edx,dword ptr [ebp-4]
 0064A2EB    mov         edx,dword ptr [edx+14];TReader.FBufEnd:Integer
 0064A2EE    mov         ecx,dword ptr [ebp-4]
 0064A2F1    sub         edx,dword ptr [ecx+10]
 0064A2F4    sub         eax,edx
 0064A2F6    mov         dword ptr [ebp-8],eax
 0064A2F9    mov         eax,dword ptr [ebp-8]
 0064A2FC    pop         ecx
 0064A2FD    pop         ecx
 0064A2FE    pop         ebp
 0064A2FF    ret
end;*}

//0064A300
function TReader.NextValue:TValueType;
begin
{*
 0064A300    push        ebp
 0064A301    mov         ebp,esp
 0064A303    add         esp,0FFFFFFF8
 0064A306    mov         dword ptr [ebp-4],eax
 0064A309    mov         eax,dword ptr [ebp-4]
 0064A30C    call        TReader.ReadValue
 0064A311    mov         byte ptr [ebp-5],al
 0064A314    mov         eax,dword ptr [ebp-4]
 0064A317    dec         dword ptr [eax+10]
 0064A31A    mov         al,byte ptr [ebp-5]
 0064A31D    pop         ecx
 0064A31E    pop         ecx
 0064A31F    pop         ebp
 0064A320    ret
*}
end;

//0064A324
{*procedure sub_0064A324(?:?; ?:?);
begin
 0064A324    push        ebp
 0064A325    mov         ebp,esp
 0064A327    add         esp,0FFFFFFF8
 0064A32A    mov         dword ptr [ebp-8],edx
 0064A32D    mov         dword ptr [ebp-4],eax
 0064A330    mov         eax,dword ptr [ebp-4]
 0064A333    call        TReader.SkipValue
 0064A338    mov         eax,dword ptr [ebp-8]
 0064A33B    call        00649D1C
 0064A340    pop         ecx
 0064A341    pop         ecx
 0064A342    pop         ebp
 0064A343    ret
end;*}

//0064A344
procedure TReader.Read(var Buf:void ; Count:Longint);
begin
{*
 0064A344    push        esi
 0064A345    push        edi
 0064A346    push        ebx
 0064A347    mov         edi,edx
 0064A349    mov         ebx,ecx
 0064A34B    mov         esi,eax
>0064A34D    jmp         0064A385
 0064A34F    mov         ecx,dword ptr [esi+14]
 0064A352    sub         ecx,dword ptr [esi+10]
>0064A355    ja          0064A361
 0064A357    mov         eax,esi
 0064A359    call        TReader.ReadBuffer
 0064A35E    mov         ecx,dword ptr [esi+14]
 0064A361    cmp         ecx,ebx
>0064A363    jb          0064A367
 0064A365    mov         ecx,ebx
 0064A367    push        esi
 0064A368    sub         ebx,ecx
 0064A36A    mov         eax,dword ptr [esi+8]
 0064A36D    add         eax,dword ptr [esi+10]
 0064A370    add         dword ptr [esi+10],ecx
 0064A373    mov         esi,eax
 0064A375    mov         edx,ecx
 0064A377    shr         ecx,2
 0064A37A    cld
 0064A37B    rep movs    dword ptr [edi],dword ptr [esi]
 0064A37D    mov         ecx,edx
 0064A37F    and         ecx,3
 0064A382    rep movs    byte ptr [edi],byte ptr [esi]
 0064A384    pop         esi
 0064A385    or          ebx,ebx
>0064A387    jne         0064A34F
 0064A389    pop         ebx
 0064A38A    pop         edi
 0064A38B    pop         esi
 0064A38C    ret
*}
end;

//0064A390
procedure TReader.ReadBuffer;
begin
{*
 0064A390    push        ebp
 0064A391    mov         ebp,esp
 0064A393    push        ecx
 0064A394    push        ebx
 0064A395    mov         dword ptr [ebp-4],eax
 0064A398    mov         eax,dword ptr [ebp-4]
 0064A39B    mov         edx,dword ptr [eax+8]
 0064A39E    mov         eax,dword ptr [ebp-4]
 0064A3A1    mov         ecx,dword ptr [eax+0C]
 0064A3A4    mov         eax,dword ptr [ebp-4]
 0064A3A7    mov         eax,dword ptr [eax+4]
 0064A3AA    mov         ebx,dword ptr [eax]
 0064A3AC    call        dword ptr [ebx+8]
 0064A3AF    mov         edx,dword ptr [ebp-4]
 0064A3B2    mov         dword ptr [edx+14],eax
 0064A3B5    mov         eax,dword ptr [ebp-4]
 0064A3B8    cmp         dword ptr [eax+14],0
>0064A3BC    jne         0064A3D5
 0064A3BE    mov         ecx,dword ptr ds:[6EA0B8];^gvar_00655064
 0064A3C4    mov         dl,1
 0064A3C6    mov         eax,[00641F14];EReadError
 0064A3CB    call        Exception.Create
 0064A3D0    call        @RaiseExcept
 0064A3D5    mov         eax,dword ptr [ebp-4]
 0064A3D8    xor         edx,edx
 0064A3DA    mov         dword ptr [eax+10],edx
 0064A3DD    pop         ebx
 0064A3DE    pop         ecx
 0064A3DF    pop         ebp
 0064A3E0    ret
*}
end;

//0064A3E4
{*function sub_0064A3E4(?:?):?;
begin
 0064A3E4    push        ebp
 0064A3E5    mov         ebp,esp
 0064A3E7    add         esp,0FFFFFFF8
 0064A3EA    mov         dword ptr [ebp-4],eax
 0064A3ED    mov         eax,dword ptr [ebp-4]
 0064A3F0    call        TReader.ReadValue
 0064A3F5    cmp         al,9
 0064A3F7    sete        byte ptr [ebp-5]
 0064A3FB    mov         al,byte ptr [ebp-5]
 0064A3FE    pop         ecx
 0064A3FF    pop         ecx
 0064A400    pop         ebp
 0064A401    ret
end;*}

//0064A404
{*function sub_0064A404(?:?):?;
begin
 0064A404    push        ebp
 0064A405    mov         ebp,esp
 0064A407    add         esp,0FFFFFFF4
 0064A40A    xor         edx,edx
 0064A40C    mov         dword ptr [ebp-0C],edx
 0064A40F    mov         dword ptr [ebp-4],eax
 0064A412    xor         eax,eax
 0064A414    push        ebp
 0064A415    push        64A459
 0064A41A    push        dword ptr fs:[eax]
 0064A41D    mov         dword ptr fs:[eax],esp
 0064A420    lea         edx,[ebp-0C]
 0064A423    mov         eax,dword ptr [ebp-4]
 0064A426    call        TReader.ReadString
 0064A42B    mov         eax,dword ptr [ebp-0C]
 0064A42E    call        @LStrLen
 0064A433    dec         eax
>0064A434    jle         0064A43B
 0064A436    call        00649D0C
 0064A43B    mov         eax,dword ptr [ebp-0C]
 0064A43E    mov         al,byte ptr [eax]
 0064A440    mov         byte ptr [ebp-5],al
 0064A443    xor         eax,eax
 0064A445    pop         edx
 0064A446    pop         ecx
 0064A447    pop         ecx
 0064A448    mov         dword ptr fs:[eax],edx
 0064A44B    push        64A460
 0064A450    lea         eax,[ebp-0C]
 0064A453    call        @LStrClr
 0064A458    ret
>0064A459    jmp         @HandleFinally
>0064A45E    jmp         0064A450
 0064A460    mov         al,byte ptr [ebp-5]
 0064A463    mov         esp,ebp
 0064A465    pop         ebp
 0064A466    ret
end;*}

//0064A468
procedure TReader.ReadCollection(Collection:TCollection);
begin
{*
 0064A468    push        ebp
 0064A469    mov         ebp,esp
 0064A46B    add         esp,0FFFFFFF4
 0064A46E    mov         dword ptr [ebp-8],edx
 0064A471    mov         dword ptr [ebp-4],eax
 0064A474    mov         eax,dword ptr [ebp-8]
 0064A477    mov         edx,dword ptr [eax]
 0064A479    call        dword ptr [edx+20]
 0064A47C    xor         eax,eax
 0064A47E    push        ebp
 0064A47F    push        64A514
 0064A484    push        dword ptr fs:[eax]
 0064A487    mov         dword ptr fs:[eax],esp
 0064A48A    mov         eax,dword ptr [ebp-4]
 0064A48D    call        TReader.EndOfList
 0064A492    test        al,al
>0064A494    jne         0064A4EA
 0064A496    mov         eax,dword ptr [ebp-8]
 0064A499    call        TCollection.Clear
>0064A49E    jmp         0064A4EA
 0064A4A0    mov         eax,dword ptr [ebp-4]
 0064A4A3    call        TReader.NextValue
 0064A4A8    add         al,0FE
 0064A4AA    sub         al,3
>0064A4AC    jae         0064A4B6
 0064A4AE    mov         eax,dword ptr [ebp-4]
 0064A4B1    call        TReader.ReadInteger
 0064A4B6    mov         eax,dword ptr [ebp-8]
 0064A4B9    call        00646560
 0064A4BE    mov         dword ptr [ebp-0C],eax
 0064A4C1    mov         eax,dword ptr [ebp-4]
 0064A4C4    call        TReader.ReadListBegin
>0064A4C9    jmp         0064A4D6
 0064A4CB    mov         edx,dword ptr [ebp-0C]
 0064A4CE    mov         eax,dword ptr [ebp-4]
 0064A4D1    call        0064AFBC
 0064A4D6    mov         eax,dword ptr [ebp-4]
 0064A4D9    call        TReader.EndOfList
 0064A4DE    test        al,al
>0064A4E0    je          0064A4CB
 0064A4E2    mov         eax,dword ptr [ebp-4]
 0064A4E5    call        TReader.ReadListEnd
 0064A4EA    mov         eax,dword ptr [ebp-4]
 0064A4ED    call        TReader.EndOfList
 0064A4F2    test        al,al
>0064A4F4    je          0064A4A0
 0064A4F6    mov         eax,dword ptr [ebp-4]
 0064A4F9    call        TReader.ReadListEnd
 0064A4FE    xor         eax,eax
 0064A500    pop         edx
 0064A501    pop         ecx
 0064A502    pop         ecx
 0064A503    mov         dword ptr fs:[eax],edx
 0064A506    push        64A51B
 0064A50B    mov         eax,dword ptr [ebp-8]
 0064A50E    mov         edx,dword ptr [eax]
 0064A510    call        dword ptr [edx+24]
 0064A513    ret
>0064A514    jmp         @HandleFinally
>0064A519    jmp         0064A50B
 0064A51B    mov         esp,ebp
 0064A51D    pop         ebp
 0064A51E    ret
*}
end;

//0064A520
function ComponentCreated:Boolean;
begin
{*
 0064A520    push        ebp
 0064A521    mov         ebp,esp
 0064A523    push        ecx
 0064A524    mov         eax,dword ptr [ebp+8]
 0064A527    test        byte ptr [eax-1],1
>0064A52B    jne         0064A536
 0064A52D    mov         eax,dword ptr [ebp+8]
 0064A530    cmp         dword ptr [eax-8],0
>0064A534    je          0064A53A
 0064A536    xor         eax,eax
>0064A538    jmp         0064A53C
 0064A53A    mov         al,1
 0064A53C    mov         byte ptr [ebp-1],al
 0064A53F    mov         al,byte ptr [ebp-1]
 0064A542    pop         ecx
 0064A543    pop         ebp
 0064A544    ret
*}
end;

//0064A548
function Recover(var Component:TComponent):Boolean;
begin
{*
 0064A548    push        ebp
 0064A549    mov         ebp,esp
 0064A54B    add         esp,0FFFFFFF8
 0064A54E    mov         dword ptr [ebp-4],eax
 0064A551    mov         byte ptr [ebp-5],0
 0064A555    call        ExceptObject
 0064A55A    mov         edx,dword ptr ds:[656774];Exception
 0064A560    call        @IsClass
 0064A565    test        al,al
>0064A567    je          0064A5AB
 0064A569    mov         eax,dword ptr [ebp+8]
 0064A56C    push        eax
 0064A56D    call        ComponentCreated
 0064A572    pop         ecx
 0064A573    test        al,al
>0064A575    je          0064A581
 0064A577    mov         eax,dword ptr [ebp-4]
 0064A57A    mov         eax,dword ptr [eax]
 0064A57C    call        TObject.Free
 0064A581    mov         eax,dword ptr [ebp-4]
 0064A584    xor         edx,edx
 0064A586    mov         dword ptr [eax],edx
 0064A588    mov         eax,dword ptr [ebp+8]
 0064A58B    mov         eax,dword ptr [eax-0C]
 0064A58E    xor         edx,edx
 0064A590    call        0064C098
 0064A595    call        ExceptObject
 0064A59A    mov         edx,dword ptr [eax+4]
 0064A59D    mov         eax,dword ptr [ebp+8]
 0064A5A0    mov         eax,dword ptr [eax-0C]
 0064A5A3    mov         ecx,dword ptr [eax]
 0064A5A5    call        dword ptr [ecx+10]
 0064A5A8    mov         byte ptr [ebp-5],al
 0064A5AB    mov         al,byte ptr [ebp-5]
 0064A5AE    pop         ecx
 0064A5AF    pop         ecx
 0064A5B0    pop         ebp
 0064A5B1    ret
*}
end;

//0064A5B4
procedure CreateComponent;
begin
{*
 0064A5B4    push        ebp
 0064A5B5    mov         ebp,esp
 0064A5B7    push        ecx
 0064A5B8    push        ebx
 0064A5B9    push        esi
 0064A5BA    push        edi
 0064A5BB    xor         eax,eax
 0064A5BD    push        ebp
 0064A5BE    push        64A69E
 0064A5C3    push        dword ptr fs:[eax]
 0064A5C6    mov         dword ptr fs:[eax],esp
 0064A5C9    mov         eax,dword ptr [ebp+8]
 0064A5CC    mov         edx,dword ptr [eax-14]
 0064A5CF    mov         eax,dword ptr [ebp+8]
 0064A5D2    mov         eax,dword ptr [eax-0C]
 0064A5D5    call        0064C280
 0064A5DA    mov         dword ptr [ebp-4],eax
 0064A5DD    mov         eax,dword ptr [ebp+8]
 0064A5E0    xor         edx,edx
 0064A5E2    mov         dword ptr [eax-10],edx
 0064A5E5    mov         eax,dword ptr [ebp+8]
 0064A5E8    mov         eax,dword ptr [eax-0C]
 0064A5EB    cmp         word ptr [eax+6A],0
>0064A5F0    je          0064A60E
 0064A5F2    mov         eax,dword ptr [ebp+8]
 0064A5F5    add         eax,0FFFFFFF0
 0064A5F8    push        eax
 0064A5F9    mov         eax,dword ptr [ebp+8]
 0064A5FC    mov         ebx,dword ptr [eax-0C]
 0064A5FF    mov         eax,dword ptr [ebp+8]
 0064A602    mov         edx,dword ptr [eax-0C]
 0064A605    mov         ecx,dword ptr [ebp-4]
 0064A608    mov         eax,dword ptr [ebx+6C]
 0064A60B    call        dword ptr [ebx+68]
 0064A60E    mov         eax,dword ptr [ebp+8]
 0064A611    cmp         dword ptr [eax-10],0
>0064A615    jne         0064A689
 0064A617    mov         eax,dword ptr [ebp-4]
 0064A61A    call        dword ptr [eax-0C]
 0064A61D    mov         edx,dword ptr [ebp+8]
 0064A620    mov         dword ptr [edx-10],eax
 0064A623    mov         eax,dword ptr [ebp+8]
 0064A626    test        byte ptr [eax-1],4
>0064A62A    je          0064A643
 0064A62C    mov         eax,dword ptr [ebp+8]
 0064A62F    mov         eax,dword ptr [eax-10]
 0064A632    or          word ptr [eax+1C],1
 0064A637    mov         eax,dword ptr [ebp+8]
 0064A63A    mov         eax,dword ptr [eax-10]
 0064A63D    or          word ptr [eax+1C],200
 0064A643    xor         eax,eax
 0064A645    push        ebp
 0064A646    push        64A672
 0064A64B    push        dword ptr fs:[eax]
 0064A64E    mov         dword ptr fs:[eax],esp
 0064A651    mov         eax,dword ptr [ebp+8]
 0064A654    mov         eax,dword ptr [eax-0C]
 0064A657    mov         ecx,dword ptr [eax+28]
 0064A65A    mov         eax,dword ptr [ebp+8]
 0064A65D    mov         eax,dword ptr [eax-10]
 0064A660    or          edx,0FFFFFFFF
 0064A663    mov         ebx,dword ptr [eax]
 0064A665    call        dword ptr [ebx+2C]
 0064A668    xor         eax,eax
 0064A66A    pop         edx
 0064A66B    pop         ecx
 0064A66C    pop         ecx
 0064A66D    mov         dword ptr fs:[eax],edx
>0064A670    jmp         0064A689
>0064A672    jmp         @HandleAnyException
 0064A677    mov         eax,dword ptr [ebp+8]
 0064A67A    xor         edx,edx
 0064A67C    mov         dword ptr [eax-10],edx
 0064A67F    call        @RaiseAgain
 0064A684    call        @DoneExcept
 0064A689    mov         eax,dword ptr [ebp+8]
 0064A68C    mov         eax,dword ptr [eax-10]
 0064A68F    or          word ptr [eax+1C],1
 0064A694    xor         eax,eax
 0064A696    pop         edx
 0064A697    pop         ecx
 0064A698    pop         ecx
 0064A699    mov         dword ptr fs:[eax],edx
>0064A69C    jmp         0064A6C1
>0064A69E    jmp         @HandleAnyException
 0064A6A3    mov         eax,dword ptr [ebp+8]
 0064A6A6    push        eax
 0064A6A7    mov         eax,dword ptr [ebp+8]
 0064A6AA    add         eax,0FFFFFFF0
 0064A6AD    call        Recover
 0064A6B2    pop         ecx
 0064A6B3    test        al,al
>0064A6B5    jne         0064A6BC
 0064A6B7    call        @RaiseAgain
 0064A6BC    call        @DoneExcept
 0064A6C1    pop         edi
 0064A6C2    pop         esi
 0064A6C3    pop         ebx
 0064A6C4    pop         ecx
 0064A6C5    pop         ebp
 0064A6C6    ret
*}
end;

//0064A6C8
procedure SetCompName;
begin
{*
 0064A6C8    push        ebp
 0064A6C9    mov         ebp,esp
 0064A6CB    push        ebx
 0064A6CC    push        esi
 0064A6CD    push        edi
 0064A6CE    xor         eax,eax
 0064A6D0    push        ebp
 0064A6D1    push        64A740
 0064A6D6    push        dword ptr fs:[eax]
 0064A6D9    mov         dword ptr fs:[eax],esp
 0064A6DC    mov         eax,dword ptr [ebp+8]
 0064A6DF    mov         eax,dword ptr [eax-0C]
 0064A6E2    mov         edx,dword ptr [eax+2C]
 0064A6E5    mov         eax,dword ptr [ebp+8]
 0064A6E8    mov         eax,dword ptr [eax-10]
 0064A6EB    mov         si,0FFF8
 0064A6EF    call        @CallDynaInst
 0064A6F4    mov         eax,dword ptr [ebp+8]
 0064A6F7    lea         ecx,[eax-18]
 0064A6FA    mov         eax,dword ptr [ebp+8]
 0064A6FD    mov         edx,dword ptr [eax-10]
 0064A700    mov         eax,dword ptr [ebp+8]
 0064A703    mov         eax,dword ptr [eax-0C]
 0064A706    mov         ebx,dword ptr [eax]
 0064A708    call        dword ptr [ebx+1C]
 0064A70B    mov         eax,dword ptr [ebp+8]
 0064A70E    mov         eax,dword ptr [eax-10]
 0064A711    test        byte ptr [eax+1C],10
>0064A715    je          0064A736
 0064A717    mov         eax,dword ptr [ebp+8]
 0064A71A    mov         eax,dword ptr [eax-18]
 0064A71D    call        FindGlobalComponent
 0064A722    mov         edx,dword ptr [ebp+8]
 0064A725    cmp         eax,dword ptr [edx-10]
>0064A728    jne         0064A736
 0064A72A    mov         eax,dword ptr [ebp+8]
 0064A72D    mov         eax,dword ptr [eax-10]
 0064A730    or          word ptr [eax+1C],200
 0064A736    xor         eax,eax
 0064A738    pop         edx
 0064A739    pop         ecx
 0064A73A    pop         ecx
 0064A73B    mov         dword ptr fs:[eax],edx
>0064A73E    jmp         0064A763
>0064A740    jmp         @HandleAnyException
 0064A745    mov         eax,dword ptr [ebp+8]
 0064A748    push        eax
 0064A749    mov         eax,dword ptr [ebp+8]
 0064A74C    add         eax,0FFFFFFF0
 0064A74F    call        Recover
 0064A754    pop         ecx
 0064A755    test        al,al
>0064A757    jne         0064A75E
 0064A759    call        @RaiseAgain
 0064A75E    call        @DoneExcept
 0064A763    pop         edi
 0064A764    pop         esi
 0064A765    pop         ebx
 0064A766    pop         ebp
 0064A767    ret
*}
end;

//0064A768
procedure FindExistingComponent;
begin
{*
 0064A768    push        ebp
 0064A769    mov         ebp,esp
 0064A76B    push        ebx
 0064A76C    push        esi
 0064A76D    push        edi
 0064A76E    xor         eax,eax
 0064A770    push        ebp
 0064A771    push        64A7E6
 0064A776    push        dword ptr fs:[eax]
 0064A779    mov         dword ptr fs:[eax],esp
 0064A77C    mov         eax,dword ptr [ebp+8]
 0064A77F    mov         edx,dword ptr [eax-14]
 0064A782    mov         eax,dword ptr [ebp+8]
 0064A785    mov         eax,dword ptr [eax-0C]
 0064A788    call        0064C280
 0064A78D    mov         ecx,eax
 0064A78F    mov         eax,dword ptr [ebp+8]
 0064A792    mov         edx,dword ptr [eax-18]
 0064A795    mov         eax,dword ptr [ebp+8]
 0064A798    mov         eax,dword ptr [eax-0C]
 0064A79B    mov         ebx,dword ptr [eax]
 0064A79D    call        dword ptr [ebx+14]
 0064A7A0    mov         edx,dword ptr [ebp+8]
 0064A7A3    mov         dword ptr [edx-10],eax
 0064A7A6    mov         eax,dword ptr [ebp+8]
 0064A7A9    mov         eax,dword ptr [eax-10]
 0064A7AC    mov         si,0FFF2
 0064A7B0    call        @CallDynaInst
 0064A7B5    mov         edx,dword ptr [ebp+8]
 0064A7B8    mov         edx,dword ptr [edx-0C]
 0064A7BB    mov         dword ptr [edx+2C],eax
 0064A7BE    mov         eax,dword ptr [ebp+8]
 0064A7C1    mov         eax,dword ptr [eax-0C]
 0064A7C4    cmp         dword ptr [eax+2C],0
>0064A7C8    jne         0064A7DC
 0064A7CA    mov         eax,dword ptr [ebp+8]
 0064A7CD    mov         eax,dword ptr [eax-0C]
 0064A7D0    mov         eax,dword ptr [eax+18]
 0064A7D3    mov         edx,dword ptr [ebp+8]
 0064A7D6    mov         edx,dword ptr [edx-0C]
 0064A7D9    mov         dword ptr [edx+2C],eax
 0064A7DC    xor         eax,eax
 0064A7DE    pop         edx
 0064A7DF    pop         ecx
 0064A7E0    pop         ecx
 0064A7E1    mov         dword ptr fs:[eax],edx
>0064A7E4    jmp         0064A809
>0064A7E6    jmp         @HandleAnyException
 0064A7EB    mov         eax,dword ptr [ebp+8]
 0064A7EE    push        eax
 0064A7EF    mov         eax,dword ptr [ebp+8]
 0064A7F2    add         eax,0FFFFFFF0
 0064A7F5    call        Recover
 0064A7FA    pop         ecx
 0064A7FB    test        al,al
>0064A7FD    jne         0064A804
 0064A7FF    call        @RaiseAgain
 0064A804    call        @DoneExcept
 0064A809    pop         edi
 0064A80A    pop         esi
 0064A80B    pop         ebx
 0064A80C    pop         ebp
 0064A80D    ret
*}
end;

//0064A810
function TReader.ReadComponent(Component:TComponent):TComponent;
begin
{*
 0064A810    push        ebp
 0064A811    mov         ebp,esp
 0064A813    add         esp,0FFFFFFDC
 0064A816    push        ebx
 0064A817    push        esi
 0064A818    push        edi
 0064A819    xor         ecx,ecx
 0064A81B    mov         dword ptr [ebp-14],ecx
 0064A81E    mov         dword ptr [ebp-18],ecx
 0064A821    mov         dword ptr [ebp-8],edx
 0064A824    mov         dword ptr [ebp-0C],eax
 0064A827    xor         eax,eax
 0064A829    push        ebp
 0064A82A    push        64A9D5
 0064A82F    push        dword ptr fs:[eax]
 0064A832    mov         dword ptr fs:[eax],esp
 0064A835    lea         ecx,[ebp-1C]
 0064A838    lea         edx,[ebp-1]
 0064A83B    mov         eax,dword ptr [ebp-0C]
 0064A83E    mov         ebx,dword ptr [eax]
 0064A840    call        dword ptr [ebx+24]
 0064A843    lea         edx,[ebp-14]
 0064A846    mov         eax,dword ptr [ebp-0C]
 0064A849    call        TReader.ReadStr
 0064A84E    lea         edx,[ebp-18]
 0064A851    mov         eax,dword ptr [ebp-0C]
 0064A854    call        TReader.ReadStr
 0064A859    mov         eax,dword ptr [ebp-0C]
 0064A85C    mov         eax,dword ptr [eax+2C]
 0064A85F    mov         dword ptr [ebp-20],eax
 0064A862    mov         eax,dword ptr [ebp-0C]
 0064A865    mov         eax,dword ptr [eax+1C]
 0064A868    mov         dword ptr [ebp-24],eax
 0064A86B    xor         eax,eax
 0064A86D    push        ebp
 0064A86E    push        64A9B3
 0064A873    push        dword ptr fs:[eax]
 0064A876    mov         dword ptr fs:[eax],esp
 0064A879    mov         eax,dword ptr [ebp-8]
 0064A87C    mov         dword ptr [ebp-10],eax
 0064A87F    cmp         dword ptr [ebp-10],0
>0064A883    jne         0064A89B
 0064A885    test        byte ptr [ebp-1],1
>0064A889    je          0064A894
 0064A88B    push        ebp
 0064A88C    call        FindExistingComponent
 0064A891    pop         ecx
>0064A892    jmp         0064A89B
 0064A894    push        ebp
 0064A895    call        CreateComponent
 0064A89A    pop         ecx
 0064A89B    cmp         dword ptr [ebp-10],0
>0064A89F    je          0064A993
 0064A8A5    xor         eax,eax
 0064A8A7    push        ebp
 0064A8A8    push        64A971
 0064A8AD    push        dword ptr fs:[eax]
 0064A8B0    mov         dword ptr fs:[eax],esp
 0064A8B3    mov         eax,dword ptr [ebp-10]
 0064A8B6    or          word ptr [eax+1C],1
 0064A8BB    test        byte ptr [ebp-1],1
>0064A8BF    jne         0064A8C8
 0064A8C1    push        ebp
 0064A8C2    call        SetCompName
 0064A8C7    pop         ecx
 0064A8C8    cmp         dword ptr [ebp-10],0
>0064A8CC    jne         0064A8E0
 0064A8CE    xor         eax,eax
 0064A8D0    pop         edx
 0064A8D1    pop         ecx
 0064A8D2    pop         ecx
 0064A8D3    mov         dword ptr fs:[eax],edx
 0064A8D6    call        @TryFinallyExit
>0064A8DB    jmp         0064A9BA
 0064A8E0    mov         eax,dword ptr [ebp-10]
 0064A8E3    test        byte ptr [eax+1D],2
>0064A8E7    je          0064A8F2
 0064A8E9    mov         eax,dword ptr [ebp-0C]
 0064A8EC    mov         edx,dword ptr [ebp-10]
 0064A8EF    mov         dword ptr [eax+1C],edx
 0064A8F2    mov         eax,dword ptr [ebp-10]
 0064A8F5    or          word ptr [eax+1C],2
 0064A8FA    mov         edx,dword ptr [ebp-0C]
 0064A8FD    mov         eax,dword ptr [ebp-10]
 0064A900    mov         ecx,dword ptr [eax]
 0064A902    call        dword ptr [ecx+14]
 0064A905    mov         eax,dword ptr [ebp-10]
 0064A908    and         word ptr [eax+1C],0FFFFFFFD
 0064A90D    test        byte ptr [ebp-1],2
>0064A911    je          0064A928
 0064A913    mov         eax,dword ptr [ebp-0C]
 0064A916    mov         eax,dword ptr [eax+2C]
 0064A919    mov         ecx,dword ptr [ebp-1C]
 0064A91C    mov         edx,dword ptr [ebp-10]
 0064A91F    mov         si,0FFF9
 0064A923    call        @CallDynaInst
 0064A928    test        byte ptr [ebp-1],1
>0064A92C    jne         0064A937
 0064A92E    mov         eax,dword ptr [ebp-10]
 0064A931    test        byte ptr [eax+1D],2
>0064A935    je          0064A959
 0064A937    mov         eax,dword ptr [ebp-0C]
 0064A93A    mov         eax,dword ptr [eax+34]
 0064A93D    mov         edx,dword ptr [ebp-10]
 0064A940    call        TList.IndexOf
 0064A945    test        eax,eax
>0064A947    jge         0064A967
 0064A949    mov         eax,dword ptr [ebp-0C]
 0064A94C    mov         eax,dword ptr [eax+34]
 0064A94F    mov         edx,dword ptr [ebp-10]
 0064A952    call        TList.Add
>0064A957    jmp         0064A967
 0064A959    mov         eax,dword ptr [ebp-0C]
 0064A95C    mov         eax,dword ptr [eax+34]
 0064A95F    mov         edx,dword ptr [ebp-10]
 0064A962    call        TList.Add
 0064A967    xor         eax,eax
 0064A969    pop         edx
 0064A96A    pop         ecx
 0064A96B    pop         ecx
 0064A96C    mov         dword ptr fs:[eax],edx
>0064A96F    jmp         0064A993
>0064A971    jmp         @HandleAnyException
 0064A976    push        ebp
 0064A977    call        ComponentCreated
 0064A97C    pop         ecx
 0064A97D    test        al,al
>0064A97F    je          0064A989
 0064A981    mov         eax,dword ptr [ebp-10]
 0064A984    call        TObject.Free
 0064A989    call        @RaiseAgain
 0064A98E    call        @DoneExcept
 0064A993    xor         eax,eax
 0064A995    pop         edx
 0064A996    pop         ecx
 0064A997    pop         ecx
 0064A998    mov         dword ptr fs:[eax],edx
 0064A99B    push        64A9BA
 0064A9A0    mov         eax,dword ptr [ebp-0C]
 0064A9A3    mov         edx,dword ptr [ebp-20]
 0064A9A6    mov         dword ptr [eax+2C],edx
 0064A9A9    mov         eax,dword ptr [ebp-0C]
 0064A9AC    mov         edx,dword ptr [ebp-24]
 0064A9AF    mov         dword ptr [eax+1C],edx
 0064A9B2    ret
>0064A9B3    jmp         @HandleFinally
>0064A9B8    jmp         0064A9A0
 0064A9BA    xor         eax,eax
 0064A9BC    pop         edx
 0064A9BD    pop         ecx
 0064A9BE    pop         ecx
 0064A9BF    mov         dword ptr fs:[eax],edx
 0064A9C2    push        64A9DC
 0064A9C7    lea         eax,[ebp-18]
 0064A9CA    mov         edx,2
 0064A9CF    call        @LStrArrayClr
 0064A9D4    ret
>0064A9D5    jmp         @HandleFinally
>0064A9DA    jmp         0064A9C7
 0064A9DC    mov         eax,dword ptr [ebp-10]
 0064A9DF    pop         edi
 0064A9E0    pop         esi
 0064A9E1    pop         ebx
 0064A9E2    mov         esp,ebp
 0064A9E4    pop         ebp
 0064A9E5    ret
*}
end;

//0064A9E8
{*procedure sub_0064A9E8(?:?; ?:TComponent);
begin
 0064A9E8    push        ebp
 0064A9E9    mov         ebp,esp
 0064A9EB    add         esp,0FFFFFFF8
 0064A9EE    mov         dword ptr [ebp-8],edx
 0064A9F1    mov         dword ptr [ebp-4],eax
 0064A9F4    mov         eax,dword ptr [ebp-4]
 0064A9F7    cmp         dword ptr [eax+30],0
>0064A9FB    jne         0064AA4D
 0064A9FD    mov         dl,1
 0064A9FF    mov         eax,[006422A4];TList
 0064AA04    call        TObject.Create;TList.Create
 0064AA09    mov         edx,dword ptr [ebp-4]
 0064AA0C    mov         dword ptr [edx+30],eax
 0064AA0F    xor         eax,eax
 0064AA11    push        ebp
 0064AA12    push        64AA46
 0064AA17    push        dword ptr fs:[eax]
 0064AA1A    mov         dword ptr fs:[eax],esp
 0064AA1D    mov         edx,dword ptr [ebp-8]
 0064AA20    mov         eax,dword ptr [ebp-4]
 0064AA23    call        0064AA5C
 0064AA28    mov         eax,dword ptr [ebp-4]
 0064AA2B    call        0064A060
 0064AA30    xor         eax,eax
 0064AA32    pop         edx
 0064AA33    pop         ecx
 0064AA34    pop         ecx
 0064AA35    mov         dword ptr fs:[eax],edx
 0064AA38    push        64AA58
 0064AA3D    mov         eax,dword ptr [ebp-4]
 0064AA40    call        0064A1C4
 0064AA45    ret
>0064AA46    jmp         @HandleFinally
>0064AA4B    jmp         0064AA3D
 0064AA4D    mov         edx,dword ptr [ebp-8]
 0064AA50    mov         eax,dword ptr [ebp-4]
 0064AA53    call        0064AA5C
 0064AA58    pop         ecx
 0064AA59    pop         ecx
 0064AA5A    pop         ebp
 0064AA5B    ret
end;*}

//0064AA5C
{*procedure sub_0064AA5C(?:?; ?:?);
begin
 0064AA5C    push        ebp
 0064AA5D    mov         ebp,esp
 0064AA5F    add         esp,0FFFFFFF0
 0064AA62    push        esi
 0064AA63    mov         dword ptr [ebp-8],edx
 0064AA66    mov         dword ptr [ebp-4],eax
>0064AA69    jmp         0064AA76
 0064AA6B    mov         edx,dword ptr [ebp-8]
 0064AA6E    mov         eax,dword ptr [ebp-4]
 0064AA71    call        0064AFBC
 0064AA76    mov         eax,dword ptr [ebp-4]
 0064AA79    call        TReader.EndOfList
 0064AA7E    test        al,al
>0064AA80    je          0064AA6B
 0064AA82    mov         eax,dword ptr [ebp-4]
 0064AA85    call        TReader.ReadListEnd
 0064AA8A    mov         eax,dword ptr [ebp-4]
 0064AA8D    mov         eax,dword ptr [eax+2C]
 0064AA90    mov         dword ptr [ebp-0C],eax
 0064AA93    mov         eax,dword ptr [ebp-4]
 0064AA96    mov         eax,dword ptr [eax+28]
 0064AA99    mov         dword ptr [ebp-10],eax
 0064AA9C    mov         eax,dword ptr [ebp-8]
 0064AA9F    mov         si,0FFFB
 0064AAA3    call        @CallDynaInst
 0064AAA8    mov         edx,dword ptr [ebp-4]
 0064AAAB    mov         dword ptr [edx+2C],eax
 0064AAAE    xor         eax,eax
 0064AAB0    push        ebp
 0064AAB1    push        64AB23
 0064AAB6    push        dword ptr fs:[eax]
 0064AAB9    mov         dword ptr fs:[eax],esp
 0064AABC    mov         eax,dword ptr [ebp-8]
 0064AABF    mov         si,0FFFC
 0064AAC3    call        @CallDynaInst
 0064AAC8    mov         edx,dword ptr [ebp-4]
 0064AACB    mov         dword ptr [edx+28],eax
 0064AACE    mov         eax,dword ptr [ebp-4]
 0064AAD1    cmp         dword ptr [eax+28],0
>0064AAD5    jne         0064AAEF
 0064AAD7    mov         eax,dword ptr [ebp-4]
 0064AADA    mov         eax,dword ptr [eax+18]
 0064AADD    mov         edx,dword ptr [ebp-4]
 0064AAE0    mov         dword ptr [edx+28],eax
>0064AAE3    jmp         0064AAEF
 0064AAE5    xor         edx,edx
 0064AAE7    mov         eax,dword ptr [ebp-4]
 0064AAEA    call        TReader.ReadComponent
 0064AAEF    mov         eax,dword ptr [ebp-4]
 0064AAF2    call        TReader.EndOfList
 0064AAF7    test        al,al
>0064AAF9    je          0064AAE5
 0064AAFB    mov         eax,dword ptr [ebp-4]
 0064AAFE    call        TReader.ReadListEnd
 0064AB03    xor         eax,eax
 0064AB05    pop         edx
 0064AB06    pop         ecx
 0064AB07    pop         ecx
 0064AB08    mov         dword ptr fs:[eax],edx
 0064AB0B    push        64AB2A
 0064AB10    mov         eax,dword ptr [ebp-4]
 0064AB13    mov         edx,dword ptr [ebp-0C]
 0064AB16    mov         dword ptr [eax+2C],edx
 0064AB19    mov         eax,dword ptr [ebp-4]
 0064AB1C    mov         edx,dword ptr [ebp-10]
 0064AB1F    mov         dword ptr [eax+28],edx
 0064AB22    ret
>0064AB23    jmp         @HandleFinally
>0064AB28    jmp         0064AB10
 0064AB2A    pop         esi
 0064AB2B    mov         esp,ebp
 0064AB2D    pop         ebp
 0064AB2E    ret
end;*}

//0064AB30
{*procedure sub_0064AB30(?:?);
begin
 0064AB30    push        ebp
 0064AB31    mov         ebp,esp
 0064AB33    add         esp,0FFFFFFEC
 0064AB36    mov         dword ptr [ebp-4],eax
 0064AB39    mov         eax,dword ptr [ebp-4]
 0064AB3C    call        TReader.ReadValue
 0064AB41    cmp         al,5
>0064AB43    jne         0064AB57
 0064AB45    lea         edx,[ebp-10]
 0064AB48    mov         ecx,0A
 0064AB4D    mov         eax,dword ptr [ebp-4]
 0064AB50    call        TReader.Read
>0064AB55    jmp         0064AB6F
 0064AB57    mov         eax,dword ptr [ebp-4]
 0064AB5A    dec         dword ptr [eax+10]
 0064AB5D    mov         eax,dword ptr [ebp-4]
 0064AB60    call        TReader.ReadInteger
 0064AB65    mov         dword ptr [ebp-14],eax
 0064AB68    fild        dword ptr [ebp-14]
 0064AB6B    fstp        tbyte ptr [ebp-10]
 0064AB6E    wait
 0064AB6F    fld         tbyte ptr [ebp-10]
 0064AB72    mov         esp,ebp
 0064AB74    pop         ebp
 0064AB75    ret
end;*}

//0064AB78
{*procedure sub_0064AB78(?:?);
begin
 0064AB78    push        ebp
 0064AB79    mov         ebp,esp
 0064AB7B    add         esp,0FFFFFFF4
 0064AB7E    mov         dword ptr [ebp-4],eax
 0064AB81    mov         eax,dword ptr [ebp-4]
 0064AB84    call        TReader.ReadValue
 0064AB89    cmp         al,0F
>0064AB8B    jne         0064AB9F
 0064AB8D    lea         edx,[ebp-8]
 0064AB90    mov         ecx,4
 0064AB95    mov         eax,dword ptr [ebp-4]
 0064AB98    call        TReader.Read
>0064AB9D    jmp         0064ABB7
 0064AB9F    mov         eax,dword ptr [ebp-4]
 0064ABA2    dec         dword ptr [eax+10]
 0064ABA5    mov         eax,dword ptr [ebp-4]
 0064ABA8    call        TReader.ReadInteger
 0064ABAD    mov         dword ptr [ebp-0C],eax
 0064ABB0    fild        dword ptr [ebp-0C]
 0064ABB3    fstp        dword ptr [ebp-8]
 0064ABB6    wait
 0064ABB7    fld         dword ptr [ebp-8]
 0064ABBA    mov         esp,ebp
 0064ABBC    pop         ebp
 0064ABBD    ret
end;*}

//0064ABC0
{*procedure sub_0064ABC0(?:?);
begin
 0064ABC0    push        ebp
 0064ABC1    mov         ebp,esp
 0064ABC3    add         esp,0FFFFFFEC
 0064ABC6    mov         dword ptr [ebp-4],eax
 0064ABC9    mov         eax,dword ptr [ebp-4]
 0064ABCC    call        TReader.ReadValue
 0064ABD1    cmp         al,10
>0064ABD3    jne         0064ABE7
 0064ABD5    lea         edx,[ebp-10]
 0064ABD8    mov         ecx,8
 0064ABDD    mov         eax,dword ptr [ebp-4]
 0064ABE0    call        TReader.Read
>0064ABE5    jmp         0064AC05
 0064ABE7    mov         eax,dword ptr [ebp-4]
 0064ABEA    dec         dword ptr [eax+10]
 0064ABED    mov         eax,dword ptr [ebp-4]
 0064ABF0    call        TReader.ReadInteger
 0064ABF5    mov         dword ptr [ebp-14],eax
 0064ABF8    fild        dword ptr [ebp-14]
 0064ABFB    fmul        dword ptr ds:[64AC0C];10000:Single
 0064AC01    fistp       qword ptr [ebp-10]
 0064AC04    wait
 0064AC05    fild        qword ptr [ebp-10]
 0064AC08    mov         esp,ebp
 0064AC0A    pop         ebp
 0064AC0B    ret
end;*}

//0064AC10
{*procedure sub_0064AC10(?:?);
begin
 0064AC10    push        ebp
 0064AC11    mov         ebp,esp
 0064AC13    add         esp,0FFFFFFEC
 0064AC16    mov         dword ptr [ebp-4],eax
 0064AC19    mov         eax,dword ptr [ebp-4]
 0064AC1C    call        TReader.ReadValue
 0064AC21    cmp         al,11
>0064AC23    jne         0064AC37
 0064AC25    lea         edx,[ebp-10]
 0064AC28    mov         ecx,8
 0064AC2D    mov         eax,dword ptr [ebp-4]
 0064AC30    call        TReader.Read
>0064AC35    jmp         0064AC4F
 0064AC37    mov         eax,dword ptr [ebp-4]
 0064AC3A    dec         dword ptr [eax+10]
 0064AC3D    mov         eax,dword ptr [ebp-4]
 0064AC40    call        TReader.ReadInteger
 0064AC45    mov         dword ptr [ebp-14],eax
 0064AC48    fild        dword ptr [ebp-14]
 0064AC4B    fstp        qword ptr [ebp-10]
 0064AC4E    wait
 0064AC4F    fld         qword ptr [ebp-10]
 0064AC52    mov         esp,ebp
 0064AC54    pop         ebp
 0064AC55    ret
end;*}

//0064AC58
function TReader.ReadIdent:AnsiString;
begin
{*
 0064AC58    push        ebp
 0064AC59    mov         ebp,esp
 0064AC5B    add         esp,0FFFFFFF4
 0064AC5E    mov         dword ptr [ebp-8],edx
 0064AC61    mov         dword ptr [ebp-4],eax
 0064AC64    mov         eax,dword ptr [ebp-4]
 0064AC67    call        TReader.ReadValue
 0064AC6C    and         eax,7F
 0064AC6F    cmp         eax,0D
>0064AC72    ja          0064AD1F
 0064AC78    mov         al,byte ptr [eax+64AC85]
 0064AC7E    jmp         dword ptr [eax*4+64AC93]
 0064AC7E    db          5
 0064AC7E    db          0
 0064AC7E    db          0
 0064AC7E    db          0
 0064AC7E    db          0
 0064AC7E    db          0
 0064AC7E    db          0
 0064AC7E    db          1
 0064AC7E    db          2
 0064AC7E    db          3
 0064AC7E    db          0
 0064AC7E    db          0
 0064AC7E    db          0
 0064AC7E    db          4
 0064AC7E    dd          0064AD1F
 0064AC7E    dd          0064ACAB
 0064AC7E    dd          0064ACE3
 0064AC7E    dd          0064ACF2
 0064AC7E    dd          0064AD01
 0064AC7E    dd          0064AD10
 0064ACAB    lea         edx,[ebp-9]
 0064ACAE    mov         ecx,1
 0064ACB3    mov         eax,dword ptr [ebp-4]
 0064ACB6    call        TReader.Read
 0064ACBB    xor         ecx,ecx
 0064ACBD    mov         cl,byte ptr [ebp-9]
 0064ACC0    mov         eax,dword ptr [ebp-8]
 0064ACC3    xor         edx,edx
 0064ACC5    call        @LStrFromPCharLen
 0064ACCA    mov         eax,dword ptr [ebp-8]
 0064ACCD    call        @UniqueStringA
 0064ACD2    mov         edx,eax
 0064ACD4    xor         ecx,ecx
 0064ACD6    mov         cl,byte ptr [ebp-9]
 0064ACD9    mov         eax,dword ptr [ebp-4]
 0064ACDC    call        TReader.Read
>0064ACE1    jmp         0064AD24
 0064ACE3    mov         eax,dword ptr [ebp-8]
 0064ACE6    mov         edx,64AD30;'False'
 0064ACEB    call        @LStrAsg
>0064ACF0    jmp         0064AD24
 0064ACF2    mov         eax,dword ptr [ebp-8]
 0064ACF5    mov         edx,64AD40;'True'
 0064ACFA    call        @LStrAsg
>0064ACFF    jmp         0064AD24
 0064AD01    mov         eax,dword ptr [ebp-8]
 0064AD04    mov         edx,64AD50;'nil'
 0064AD09    call        @LStrAsg
>0064AD0E    jmp         0064AD24
 0064AD10    mov         eax,dword ptr [ebp-8]
 0064AD13    mov         edx,64AD5C;'Null'
 0064AD18    call        @LStrAsg
>0064AD1D    jmp         0064AD24
 0064AD1F    call        00649D0C
 0064AD24    mov         esp,ebp
 0064AD26    pop         ebp
 0064AD27    ret
*}
end;

//0064AD64
function TReader.ReadInteger:Longint;
begin
{*
 0064AD64    push        ebp
 0064AD65    mov         ebp,esp
 0064AD67    add         esp,0FFFFFFF4
 0064AD6A    mov         dword ptr [ebp-4],eax
 0064AD6D    mov         eax,dword ptr [ebp-4]
 0064AD70    call        TReader.ReadValue
 0064AD75    sub         al,2
>0064AD77    je          0064AD83
 0064AD79    dec         al
>0064AD7B    je          0064AD9C
 0064AD7D    dec         al
>0064AD7F    je          0064ADB5
>0064AD81    jmp         0064ADC7
 0064AD83    lea         edx,[ebp-9]
 0064AD86    mov         ecx,1
 0064AD8B    mov         eax,dword ptr [ebp-4]
 0064AD8E    call        TReader.Read
 0064AD93    movsx       eax,byte ptr [ebp-9]
 0064AD97    mov         dword ptr [ebp-8],eax
>0064AD9A    jmp         0064ADCC
 0064AD9C    lea         edx,[ebp-0C]
 0064AD9F    mov         ecx,2
 0064ADA4    mov         eax,dword ptr [ebp-4]
 0064ADA7    call        TReader.Read
 0064ADAC    movsx       eax,word ptr [ebp-0C]
 0064ADB0    mov         dword ptr [ebp-8],eax
>0064ADB3    jmp         0064ADCC
 0064ADB5    lea         edx,[ebp-8]
 0064ADB8    mov         ecx,4
 0064ADBD    mov         eax,dword ptr [ebp-4]
 0064ADC0    call        TReader.Read
>0064ADC5    jmp         0064ADCC
 0064ADC7    call        00649D0C
 0064ADCC    mov         eax,dword ptr [ebp-8]
 0064ADCF    mov         esp,ebp
 0064ADD1    pop         ebp
 0064ADD2    ret
*}
end;

//0064ADD4
{*procedure sub_0064ADD4(?:?);
begin
 0064ADD4    push        ebp
 0064ADD5    mov         ebp,esp
 0064ADD7    add         esp,0FFFFFFF0
 0064ADDA    mov         dword ptr [ebp-4],eax
 0064ADDD    mov         eax,dword ptr [ebp-4]
 0064ADE0    call        TReader.NextValue
 0064ADE5    cmp         al,13
>0064ADE7    jne         0064AE03
 0064ADE9    mov         eax,dword ptr [ebp-4]
 0064ADEC    call        TReader.ReadValue
 0064ADF1    lea         edx,[ebp-10]
 0064ADF4    mov         ecx,8
 0064ADF9    mov         eax,dword ptr [ebp-4]
 0064ADFC    call        TReader.Read
>0064AE01    jmp         0064AE12
 0064AE03    mov         eax,dword ptr [ebp-4]
 0064AE06    call        TReader.ReadInteger
 0064AE0B    cdq
 0064AE0C    mov         dword ptr [ebp-10],eax
 0064AE0F    mov         dword ptr [ebp-0C],edx
 0064AE12    mov         eax,dword ptr [ebp-10]
 0064AE15    mov         edx,dword ptr [ebp-0C]
 0064AE18    mov         esp,ebp
 0064AE1A    pop         ebp
 0064AE1B    ret
end;*}

//0064AE1C
procedure TReader.ReadListBegin;
begin
{*
 0064AE1C    push        ebp
 0064AE1D    mov         ebp,esp
 0064AE1F    push        ecx
 0064AE20    mov         dword ptr [ebp-4],eax
 0064AE23    mov         dl,1
 0064AE25    mov         eax,dword ptr [ebp-4]
 0064AE28    call        00649DA0
 0064AE2D    pop         ecx
 0064AE2E    pop         ebp
 0064AE2F    ret
*}
end;

//0064AE30
procedure TReader.ReadListEnd;
begin
{*
 0064AE30    push        ebp
 0064AE31    mov         ebp,esp
 0064AE33    push        ecx
 0064AE34    mov         dword ptr [ebp-4],eax
 0064AE37    xor         edx,edx
 0064AE39    mov         eax,dword ptr [ebp-4]
 0064AE3C    call        00649DA0
 0064AE41    pop         ecx
 0064AE42    pop         ebp
 0064AE43    ret
*}
end;

//0064AE44
{*procedure sub_0064AE44(?:?; ?:?);
begin
 0064AE44    push        ebp
 0064AE45    mov         ebp,esp
 0064AE47    add         esp,0FFFFFFF0
 0064AE4A    mov         dword ptr [ebp-0C],ecx
 0064AE4D    mov         dword ptr [ebp-8],edx
 0064AE50    mov         dword ptr [ebp-4],eax
 0064AE53    mov         eax,dword ptr [ebp-8]
 0064AE56    mov         dl,byte ptr ds:[64AE9C];0x0 gvar_0064AE9C
 0064AE5C    mov         byte ptr [eax],dl
 0064AE5E    mov         eax,dword ptr [ebp-4]
 0064AE61    call        TReader.NextValue
 0064AE66    and         al,0F0
 0064AE68    cmp         al,0F0
>0064AE6A    jne         0064AE96
 0064AE6C    mov         eax,dword ptr [ebp-4]
 0064AE6F    call        TReader.ReadValue
 0064AE74    mov         byte ptr [ebp-0D],al
 0064AE77    mov         al,byte ptr [ebp-0D]
 0064AE7A    and         al,0F
 0064AE7C    mov         edx,dword ptr [ebp-8]
 0064AE7F    mov         byte ptr [edx],al
 0064AE81    mov         eax,dword ptr [ebp-8]
 0064AE84    test        byte ptr [eax],2
>0064AE87    je          0064AE96
 0064AE89    mov         eax,dword ptr [ebp-4]
 0064AE8C    call        TReader.ReadInteger
 0064AE91    mov         edx,dword ptr [ebp-0C]
 0064AE94    mov         dword ptr [edx],eax
 0064AE96    mov         esp,ebp
 0064AE98    pop         ebp
 0064AE99    ret
end;*}

//0064AEA0
{*procedure sub_0064AEA0(?:Exception; ?:?);
begin
 0064AEA0    push        ebp
 0064AEA1    mov         ebp,esp
 0064AEA3    add         esp,0FFFFFED8
 0064AEA9    xor         edx,edx
 0064AEAB    mov         dword ptr [ebp-8],edx
 0064AEAE    mov         dword ptr [ebp-4],eax
 0064AEB1    xor         eax,eax
 0064AEB3    push        ebp
 0064AEB4    push        64AF94
 0064AEB9    push        dword ptr fs:[eax]
 0064AEBC    mov         dword ptr fs:[eax],esp
 0064AEBF    lea         eax,[ebp-8]
 0064AEC2    call        @LStrClr
 0064AEC7    mov         eax,dword ptr [ebp+8]
 0064AECA    mov         eax,dword ptr [eax-4]
 0064AECD    mov         edx,dword ptr ds:[643204];TComponent
 0064AED3    call        @IsClass
 0064AED8    test        al,al
>0064AEDA    je          0064AEED
 0064AEDC    lea         eax,[ebp-8]
 0064AEDF    mov         edx,dword ptr [ebp+8]
 0064AEE2    mov         edx,dword ptr [edx-4]
 0064AEE5    mov         edx,dword ptr [edx+8]
 0064AEE8    call        @LStrLAsg
 0064AEED    cmp         dword ptr [ebp-8],0
>0064AEF1    jne         0064AF14
 0064AEF3    lea         edx,[ebp-108]
 0064AEF9    mov         eax,dword ptr [ebp+8]
 0064AEFC    mov         eax,dword ptr [eax-4]
 0064AEFF    mov         eax,dword ptr [eax]
 0064AF01    call        TObject.ClassName
 0064AF06    lea         edx,[ebp-108]
 0064AF0C    lea         eax,[ebp-8]
 0064AF0F    call        @LStrFromString
 0064AF14    mov         eax,dword ptr [ebp-8]
 0064AF17    mov         dword ptr [ebp-128],eax
 0064AF1D    mov         byte ptr [ebp-124],0B
 0064AF24    mov         eax,[006EA040];^gvar_006E491C
 0064AF29    mov         eax,dword ptr [eax]
 0064AF2B    mov         dword ptr [ebp-120],eax
 0064AF31    mov         byte ptr [ebp-11C],0B
 0064AF38    mov         eax,dword ptr [ebp+8]
 0064AF3B    mov         eax,dword ptr [eax-8]
 0064AF3E    mov         dword ptr [ebp-118],eax
 0064AF44    mov         byte ptr [ebp-114],0B
 0064AF4B    mov         eax,dword ptr [ebp-4]
 0064AF4E    mov         eax,dword ptr [eax+4]
 0064AF51    mov         dword ptr [ebp-110],eax
 0064AF57    mov         byte ptr [ebp-10C],0B
 0064AF5E    lea         eax,[ebp-128]
 0064AF64    push        eax
 0064AF65    push        3
 0064AF67    mov         ecx,dword ptr ds:[6EA0B4];^gvar_0065505C
 0064AF6D    mov         dl,1
 0064AF6F    mov         eax,[00641F14];EReadError
 0064AF74    call        Exception.CreateResFmt;EReadError.Create
 0064AF79    call        @RaiseExcept
 0064AF7E    xor         eax,eax
 0064AF80    pop         edx
 0064AF81    pop         ecx
 0064AF82    pop         ecx
 0064AF83    mov         dword ptr fs:[eax],edx
 0064AF86    push        64AF9B
 0064AF8B    lea         eax,[ebp-8]
 0064AF8E    call        @LStrClr
 0064AF93    ret
>0064AF94    jmp         @HandleFinally
>0064AF99    jmp         0064AF8B
 0064AF9B    mov         esp,ebp
 0064AF9D    pop         ebp
 0064AF9E    ret
end;*}

//0064AFA0
procedure PropPathError;
begin
{*
 0064AFA0    push        ebp
 0064AFA1    mov         ebp,esp
 0064AFA3    mov         eax,dword ptr [ebp+8]
 0064AFA6    mov         eax,dword ptr [eax-0C]
 0064AFA9    call        TReader.SkipValue
 0064AFAE    mov         eax,[006EA098]
 0064AFB3    call        00649CEC
 0064AFB8    pop         ebp
 0064AFB9    ret
*}
end;

//0064AFBC
{*procedure sub_0064AFBC(?:?; ?:?);
begin
 0064AFBC    push        ebp
 0064AFBD    mov         ebp,esp
 0064AFBF    add         esp,0FFFFFFD4
 0064AFC2    push        ebx
 0064AFC3    push        esi
 0064AFC4    push        edi
 0064AFC5    xor         ecx,ecx
 0064AFC7    mov         dword ptr [ebp-8],ecx
 0064AFCA    mov         dword ptr [ebp-4],edx
 0064AFCD    mov         dword ptr [ebp-0C],eax
 0064AFD0    xor         eax,eax
 0064AFD2    push        ebp
 0064AFD3    push        64B1BA
 0064AFD8    push        dword ptr fs:[eax]
 0064AFDB    mov         dword ptr fs:[eax],esp
 0064AFDE    xor         eax,eax
 0064AFE0    push        ebp
 0064AFE1    push        64B16B
 0064AFE6    push        dword ptr fs:[eax]
 0064AFE9    mov         dword ptr fs:[eax],esp
 0064AFEC    lea         edx,[ebp-8]
 0064AFEF    mov         eax,dword ptr [ebp-0C]
 0064AFF2    call        TReader.ReadStr
 0064AFF7    xor         eax,eax
 0064AFF9    push        ebp
 0064AFFA    push        64B13E
 0064AFFF    push        dword ptr fs:[eax]
 0064B002    mov         dword ptr fs:[eax],esp
 0064B005    mov         dword ptr [ebp-10],1
 0064B00C    mov         eax,dword ptr [ebp-8]
 0064B00F    call        @LStrLen
 0064B014    mov         dword ptr [ebp-18],eax
 0064B017    mov         eax,dword ptr [ebp-4]
 0064B01A    mov         dword ptr [ebp-1C],eax
 0064B01D    mov         eax,dword ptr [ebp-0C]
 0064B020    mov         byte ptr [eax+78],1
 0064B024    mov         eax,dword ptr [ebp-10]
 0064B027    mov         dword ptr [ebp-14],eax
>0064B02A    jmp         0064B02F
 0064B02C    inc         dword ptr [ebp-10]
 0064B02F    mov         eax,dword ptr [ebp-10]
 0064B032    cmp         eax,dword ptr [ebp-18]
>0064B035    jg          0064B044
 0064B037    mov         eax,dword ptr [ebp-8]
 0064B03A    mov         edx,dword ptr [ebp-10]
 0064B03D    cmp         byte ptr [eax+edx-1],2E
>0064B042    jne         0064B02C
 0064B044    mov         eax,dword ptr [ebp-0C]
 0064B047    add         eax,70
 0064B04A    push        eax
 0064B04B    mov         ecx,dword ptr [ebp-10]
 0064B04E    sub         ecx,dword ptr [ebp-14]
 0064B051    mov         edx,dword ptr [ebp-14]
 0064B054    mov         eax,dword ptr [ebp-8]
 0064B057    call        @LStrCopy
 0064B05C    mov         eax,dword ptr [ebp-10]
 0064B05F    cmp         eax,dword ptr [ebp-18]
>0064B062    jg          0064B0D6
 0064B064    mov         eax,dword ptr [ebp-1C]
 0064B067    mov         eax,dword ptr [eax]
 0064B069    call        0066BB00
 0064B06E    mov         edx,dword ptr [ebp-0C]
 0064B071    mov         edx,dword ptr [edx+70]
 0064B074    call        GetPropInfo
 0064B079    mov         dword ptr [ebp-20],eax
 0064B07C    cmp         dword ptr [ebp-20],0
>0064B080    jne         0064B090
 0064B082    mov         eax,dword ptr [ebp-0C]
 0064B085    mov         edx,dword ptr [eax+70]
 0064B088    mov         eax,dword ptr [ebp-0C]
 0064B08B    call        0064A324
 0064B090    xor         eax,eax
 0064B092    mov         dword ptr [ebp-24],eax
 0064B095    mov         eax,dword ptr [ebp-20]
 0064B098    mov         eax,dword ptr [eax]
 0064B09A    mov         eax,dword ptr [eax]
 0064B09C    cmp         byte ptr [eax],7
>0064B09F    jne         0064B0AF
 0064B0A1    mov         edx,dword ptr [ebp-20]
 0064B0A4    mov         eax,dword ptr [ebp-1C]
 0064B0A7    call        GetOrdProp
 0064B0AC    mov         dword ptr [ebp-24],eax
 0064B0AF    mov         eax,dword ptr [ebp-24]
 0064B0B2    mov         edx,dword ptr ds:[6423D4];TPersistent
 0064B0B8    call        @IsClass
 0064B0BD    test        al,al
>0064B0BF    jne         0064B0C8
 0064B0C1    push        ebp
 0064B0C2    call        PropPathError
 0064B0C7    pop         ecx
 0064B0C8    mov         eax,dword ptr [ebp-24]
 0064B0CB    mov         dword ptr [ebp-1C],eax
 0064B0CE    inc         dword ptr [ebp-10]
>0064B0D1    jmp         0064B024
 0064B0D6    mov         eax,dword ptr [ebp-1C]
 0064B0D9    mov         eax,dword ptr [eax]
 0064B0DB    call        0066BB00
 0064B0E0    mov         edx,dword ptr [ebp-0C]
 0064B0E3    mov         edx,dword ptr [edx+70]
 0064B0E6    call        GetPropInfo
 0064B0EB    mov         dword ptr [ebp-20],eax
 0064B0EE    cmp         dword ptr [ebp-20],0
>0064B0F2    je          0064B104
 0064B0F4    mov         ecx,dword ptr [ebp-20]
 0064B0F7    mov         edx,dword ptr [ebp-1C]
 0064B0FA    mov         eax,dword ptr [ebp-0C]
 0064B0FD    call        0064B378
>0064B102    jmp         0064B134
 0064B104    mov         eax,dword ptr [ebp-0C]
 0064B107    mov         byte ptr [eax+78],0
 0064B10B    mov         edx,dword ptr [ebp-0C]
 0064B10E    mov         eax,dword ptr [ebp-1C]
 0064B111    mov         ecx,dword ptr [eax]
 0064B113    call        dword ptr [ecx+4]
 0064B116    mov         eax,dword ptr [ebp-0C]
 0064B119    mov         byte ptr [eax+78],1
 0064B11D    mov         eax,dword ptr [ebp-0C]
 0064B120    cmp         dword ptr [eax+70],0
>0064B124    je          0064B134
 0064B126    mov         eax,dword ptr [ebp-0C]
 0064B129    mov         edx,dword ptr [eax+70]
 0064B12C    mov         eax,dword ptr [ebp-0C]
 0064B12F    call        0064A324
 0064B134    xor         eax,eax
 0064B136    pop         edx
 0064B137    pop         ecx
 0064B138    pop         ecx
 0064B139    mov         dword ptr fs:[eax],edx
>0064B13C    jmp         0064B161
>0064B13E    jmp         @HandleOnException
 0064B143    dd          1
 0064B147    dd          00656774;Exception
 0064B14B    dd          0064B14F
 0064B14F    mov         dword ptr [ebp-28],eax
 0064B152    push        ebp
 0064B153    mov         eax,dword ptr [ebp-28]
 0064B156    call        0064AEA0
 0064B15B    pop         ecx
 0064B15C    call        @DoneExcept
 0064B161    xor         eax,eax
 0064B163    pop         edx
 0064B164    pop         ecx
 0064B165    pop         ecx
 0064B166    mov         dword ptr fs:[eax],edx
>0064B169    jmp         0064B1A4
>0064B16B    jmp         @HandleOnException
 0064B170    dd          1
 0064B174    dd          00656774;Exception
 0064B178    dd          0064B17C
 0064B17C    mov         dword ptr [ebp-2C],eax
 0064B17F    mov         eax,dword ptr [ebp-0C]
 0064B182    cmp         byte ptr [eax+78],0
>0064B186    je          0064B19A
 0064B188    mov         eax,dword ptr [ebp-2C]
 0064B18B    mov         edx,dword ptr [eax+4];Exception.FMessage:String
 0064B18E    mov         eax,dword ptr [ebp-0C]
 0064B191    mov         ecx,dword ptr [eax]
 0064B193    call        dword ptr [ecx+10]
 0064B196    test        al,al
>0064B198    jne         0064B19F
 0064B19A    call        @RaiseAgain
 0064B19F    call        @DoneExcept
 0064B1A4    xor         eax,eax
 0064B1A6    pop         edx
 0064B1A7    pop         ecx
 0064B1A8    pop         ecx
 0064B1A9    mov         dword ptr fs:[eax],edx
 0064B1AC    push        64B1C1
 0064B1B1    lea         eax,[ebp-8]
 0064B1B4    call        @LStrClr
 0064B1B9    ret
>0064B1BA    jmp         @HandleFinally
>0064B1BF    jmp         0064B1B1
 0064B1C1    pop         edi
 0064B1C2    pop         esi
 0064B1C3    pop         ebx
 0064B1C4    mov         esp,ebp
 0064B1C6    pop         ebp
 0064B1C7    ret
end;*}

//0064B1C8
{*procedure sub_0064B1C8(?:Longint; ?:PPropInfo; ?:?);
begin
 0064B1C8    push        ebp
 0064B1C9    mov         ebp,esp
 0064B1CB    add         esp,0FFFFFFEC
 0064B1CE    mov         dword ptr [ebp-0C],ecx
 0064B1D1    mov         dword ptr [ebp-8],edx
 0064B1D4    mov         dword ptr [ebp-4],eax
 0064B1D7    mov         eax,dword ptr [ebp-8]
 0064B1DA    mov         eax,dword ptr [eax]
 0064B1DC    mov         eax,dword ptr [eax]
 0064B1DE    call        006446C4
 0064B1E3    mov         dword ptr [ebp-14],eax
 0064B1E6    cmp         dword ptr [ebp-14],0
>0064B1EA    je          0064B209
 0064B1EC    lea         edx,[ebp-10]
 0064B1EF    mov         eax,dword ptr [ebp-0C]
 0064B1F2    call        dword ptr [ebp-14]
 0064B1F5    test        al,al
>0064B1F7    je          0064B209
 0064B1F9    mov         ecx,dword ptr [ebp-10]
 0064B1FC    mov         edx,dword ptr [ebp-8]
 0064B1FF    mov         eax,dword ptr [ebp-4]
 0064B202    call        SetOrdProp
>0064B207    jmp         0064B20E
 0064B209    call        00649D0C
 0064B20E    mov         esp,ebp
 0064B210    pop         ebp
 0064B211    ret
end;*}

//0064B214
{*procedure sub_0064B214(?:Longint; ?:PPropInfo; ?:?; ?:?);
begin
 0064B214    push        ebp
 0064B215    mov         ebp,esp
 0064B217    add         esp,0FFFFFFF4
 0064B21A    mov         dword ptr [ebp-0C],ecx
 0064B21D    mov         dword ptr [ebp-8],edx
 0064B220    mov         dword ptr [ebp-4],eax
 0064B223    mov         eax,dword ptr [ebp+8]
 0064B226    mov         eax,dword ptr [eax-4]
 0064B229    mov         eax,dword ptr [eax+18]
 0064B22C    push        eax
 0064B22D    mov         eax,dword ptr [ebp-8]
 0064B230    push        eax
 0064B231    push        0
 0064B233    mov         eax,dword ptr [ebp-0C]
 0064B236    push        eax
 0064B237    mov         ecx,dword ptr [ebp-4]
 0064B23A    mov         dl,1
 0064B23C    mov         eax,[006495AC];TPropFixup
 0064B241    call        TPropFixup.Create;TPropFixup.Create
 0064B246    mov         edx,eax
 0064B248    mov         eax,dword ptr [ebp+8]
 0064B24B    mov         eax,dword ptr [eax-4]
 0064B24E    mov         eax,dword ptr [eax+30]
 0064B251    call        TList.Add
 0064B256    mov         esp,ebp
 0064B258    pop         ebp
 0064B259    ret
end;*}

//0064B25C
procedure SetVariantReference;
begin
{*
 0064B25C    push        ebp
 0064B25D    mov         ebp,esp
 0064B25F    xor         ecx,ecx
 0064B261    push        ecx
 0064B262    push        ecx
 0064B263    push        ecx
 0064B264    push        ecx
 0064B265    xor         eax,eax
 0064B267    push        ebp
 0064B268    push        64B2AB
 0064B26D    push        dword ptr fs:[eax]
 0064B270    mov         dword ptr fs:[eax],esp
 0064B273    lea         edx,[ebp-10]
 0064B276    mov         eax,dword ptr [ebp+8]
 0064B279    mov         eax,dword ptr [eax-4]
 0064B27C    call        TReader.ReadVariant
 0064B281    lea         ecx,[ebp-10]
 0064B284    mov         eax,dword ptr [ebp+8]
 0064B287    mov         edx,dword ptr [eax-0C]
 0064B28A    mov         eax,dword ptr [ebp+8]
 0064B28D    mov         eax,dword ptr [eax-8]
 0064B290    call        SetVariantProp
 0064B295    xor         eax,eax
 0064B297    pop         edx
 0064B298    pop         ecx
 0064B299    pop         ecx
 0064B29A    mov         dword ptr fs:[eax],edx
 0064B29D    push        64B2B2
 0064B2A2    lea         eax,[ebp-10]
 0064B2A5    call        @VarClr
 0064B2AA    ret
>0064B2AB    jmp         @HandleFinally
>0064B2B0    jmp         0064B2A2
 0064B2B2    mov         esp,ebp
 0064B2B4    pop         ebp
 0064B2B5    ret
*}
end;

//0064B2B8
procedure SetInterfaceReference;
begin
{*
 0064B2B8    push        ebp
 0064B2B9    mov         ebp,esp
 0064B2BB    push        0
 0064B2BD    push        0
 0064B2BF    xor         eax,eax
 0064B2C1    push        ebp
 0064B2C2    push        64B36A
 0064B2C7    push        dword ptr fs:[eax]
 0064B2CA    mov         dword ptr fs:[eax],esp
 0064B2CD    mov         eax,dword ptr [ebp+8]
 0064B2D0    mov         eax,dword ptr [eax-4]
 0064B2D3    call        TReader.NextValue
 0064B2D8    cmp         al,0D
>0064B2DA    jne         0064B305
 0064B2DC    mov         eax,dword ptr [ebp+8]
 0064B2DF    mov         eax,dword ptr [eax-4]
 0064B2E2    call        TReader.ReadValue
 0064B2E7    lea         eax,[ebp-4]
 0064B2EA    call        @IntfClear
 0064B2EF    mov         eax,dword ptr [ebp+8]
 0064B2F2    mov         edx,dword ptr [eax-0C]
 0064B2F5    mov         eax,dword ptr [ebp+8]
 0064B2F8    mov         eax,dword ptr [eax-8]
 0064B2FB    mov         ecx,dword ptr [ebp-4]
 0064B2FE    call        SetInterfaceProp
>0064B303    jmp         0064B34C
 0064B305    mov         eax,dword ptr [ebp+8]
 0064B308    mov         eax,dword ptr [eax-4]
 0064B30B    mov         eax,dword ptr [eax+18]
 0064B30E    push        eax
 0064B30F    mov         eax,dword ptr [ebp+8]
 0064B312    mov         eax,dword ptr [eax-0C]
 0064B315    push        eax
 0064B316    push        0
 0064B318    lea         edx,[ebp-8]
 0064B31B    mov         eax,dword ptr [ebp+8]
 0064B31E    mov         eax,dword ptr [eax-4]
 0064B321    call        TReader.ReadIdent
 0064B326    mov         eax,dword ptr [ebp-8]
 0064B329    push        eax
 0064B32A    mov         eax,dword ptr [ebp+8]
 0064B32D    mov         ecx,dword ptr [eax-8]
 0064B330    mov         dl,1
 0064B332    mov         eax,[00649624];TPropIntfFixup
 0064B337    call        TPropFixup.Create
 0064B33C    mov         edx,eax
 0064B33E    mov         eax,dword ptr [ebp+8]
 0064B341    mov         eax,dword ptr [eax-4]
 0064B344    mov         eax,dword ptr [eax+30]
 0064B347    call        TList.Add
 0064B34C    xor         eax,eax
 0064B34E    pop         edx
 0064B34F    pop         ecx
 0064B350    pop         ecx
 0064B351    mov         dword ptr fs:[eax],edx
 0064B354    push        64B371
 0064B359    lea         eax,[ebp-8]
 0064B35C    call        @LStrClr
 0064B361    lea         eax,[ebp-4]
 0064B364    call        @IntfClear
 0064B369    ret
>0064B36A    jmp         @HandleFinally
>0064B36F    jmp         0064B359
 0064B371    pop         ecx
 0064B372    pop         ecx
 0064B373    pop         ebp
 0064B374    ret
*}
end;

//0064B378
{*procedure sub_0064B378(?:?; ?:Longint; ?:PPropInfo);
begin
 0064B378    push        ebp
 0064B379    mov         ebp,esp
 0064B37B    add         esp,0FFFFFFD0
 0064B37E    push        ebx
 0064B37F    xor         ebx,ebx
 0064B381    mov         dword ptr [ebp-30],ebx
 0064B384    mov         dword ptr [ebp-2C],ebx
 0064B387    mov         dword ptr [ebp-28],ebx
 0064B38A    mov         dword ptr [ebp-24],ebx
 0064B38D    mov         dword ptr [ebp-20],ebx
 0064B390    mov         dword ptr [ebp-1C],ebx
 0064B393    mov         dword ptr [ebp-0C],ecx
 0064B396    mov         dword ptr [ebp-8],edx
 0064B399    mov         dword ptr [ebp-4],eax
 0064B39C    xor         eax,eax
 0064B39E    push        ebp
 0064B39F    push        64B683
 0064B3A4    push        dword ptr fs:[eax]
 0064B3A7    mov         dword ptr fs:[eax],esp
 0064B3AA    mov         eax,dword ptr [ebp-0C]
 0064B3AD    cmp         dword ptr [eax+8],0
>0064B3B1    jne         0064B3F4
 0064B3B3    mov         eax,dword ptr [ebp-0C]
 0064B3B6    mov         eax,dword ptr [eax]
 0064B3B8    mov         eax,dword ptr [eax]
 0064B3BA    cmp         byte ptr [eax],7
>0064B3BD    jne         0064B3EA
 0064B3BF    mov         edx,dword ptr [ebp-0C]
 0064B3C2    mov         eax,dword ptr [ebp-8]
 0064B3C5    call        GetOrdProp
 0064B3CA    mov         edx,dword ptr ds:[643204];TComponent
 0064B3D0    call        @IsClass
 0064B3D5    test        al,al
>0064B3D7    je          0064B3EA
 0064B3D9    mov         edx,dword ptr [ebp-0C]
 0064B3DC    mov         eax,dword ptr [ebp-8]
 0064B3DF    call        GetOrdProp
 0064B3E4    test        byte ptr [eax+24],4
>0064B3E8    jne         0064B3F4
 0064B3EA    mov         eax,[006EA0BC];^gvar_0065506C
 0064B3EF    call        00649CEC
 0064B3F4    mov         eax,dword ptr [ebp-0C]
 0064B3F7    mov         eax,dword ptr [eax]
 0064B3F9    mov         eax,dword ptr [eax]
 0064B3FB    mov         dword ptr [ebp-10],eax
 0064B3FE    mov         eax,dword ptr [ebp-10]
 0064B401    movzx       eax,byte ptr [eax]
 0064B404    cmp         eax,10
>0064B407    ja          0064B653
 0064B40D    jmp         dword ptr [eax*4+64B414]
 0064B40D    dd          0064B653
 0064B40D    dd          0064B458
 0064B40D    dd          0064B49E
 0064B40D    dd          0064B4BA
 0064B40D    dd          0064B4E2
 0064B40D    dd          0064B501
 0064B40D    dd          0064B53D
 0064B40D    dd          0064B55A
 0064B40D    dd          0064B5C8
 0064B40D    dd          0064B653
 0064B40D    dd          0064B501
 0064B40D    dd          0064B51F
 0064B40D    dd          0064B62C
 0064B40D    dd          0064B653
 0064B40D    dd          0064B653
 0064B40D    dd          0064B64C
 0064B40D    dd          0064B635
 0064B458    mov         eax,dword ptr [ebp-4]
 0064B45B    call        TReader.NextValue
 0064B460    cmp         al,7
>0064B462    jne         0064B484
 0064B464    push        ebp
 0064B465    lea         edx,[ebp-1C]
 0064B468    mov         eax,dword ptr [ebp-4]
 0064B46B    call        TReader.ReadIdent
 0064B470    mov         ecx,dword ptr [ebp-1C]
 0064B473    mov         edx,dword ptr [ebp-0C]
 0064B476    mov         eax,dword ptr [ebp-8]
 0064B479    call        0064B1C8
 0064B47E    pop         ecx
>0064B47F    jmp         0064B653
 0064B484    mov         eax,dword ptr [ebp-4]
 0064B487    call        TReader.ReadInteger
 0064B48C    mov         ecx,eax
 0064B48E    mov         edx,dword ptr [ebp-0C]
 0064B491    mov         eax,dword ptr [ebp-8]
 0064B494    call        SetOrdProp
>0064B499    jmp         0064B653
 0064B49E    mov         eax,dword ptr [ebp-4]
 0064B4A1    call        0064A404
 0064B4A6    xor         ecx,ecx
 0064B4A8    mov         cl,al
 0064B4AA    mov         edx,dword ptr [ebp-0C]
 0064B4AD    mov         eax,dword ptr [ebp-8]
 0064B4B0    call        SetOrdProp
>0064B4B5    jmp         0064B653
 0064B4BA    lea         edx,[ebp-20]
 0064B4BD    mov         eax,dword ptr [ebp-4]
 0064B4C0    call        TReader.ReadIdent
 0064B4C5    mov         edx,dword ptr [ebp-20]
 0064B4C8    mov         eax,dword ptr [ebp-10]
 0064B4CB    call        00651E9C
 0064B4D0    mov         ecx,eax
 0064B4D2    mov         edx,dword ptr [ebp-0C]
 0064B4D5    mov         eax,dword ptr [ebp-8]
 0064B4D8    call        SetOrdProp
>0064B4DD    jmp         0064B653
 0064B4E2    mov         eax,dword ptr [ebp-4]
 0064B4E5    call        0064AB30
 0064B4EA    add         esp,0FFFFFFF4
 0064B4ED    fstp        tbyte ptr [esp]
 0064B4F0    wait
 0064B4F1    mov         edx,dword ptr [ebp-0C]
 0064B4F4    mov         eax,dword ptr [ebp-8]
 0064B4F7    call        00652770
>0064B4FC    jmp         0064B653
 0064B501    lea         edx,[ebp-24]
 0064B504    mov         eax,dword ptr [ebp-4]
 0064B507    call        TReader.ReadString
 0064B50C    mov         ecx,dword ptr [ebp-24]
 0064B50F    mov         edx,dword ptr [ebp-0C]
 0064B512    mov         eax,dword ptr [ebp-8]
 0064B515    call        006523B8
>0064B51A    jmp         0064B653
 0064B51F    lea         edx,[ebp-28]
 0064B522    mov         eax,dword ptr [ebp-4]
 0064B525    call        0064BC3C
 0064B52A    mov         ecx,dword ptr [ebp-28]
 0064B52D    mov         edx,dword ptr [ebp-0C]
 0064B530    mov         eax,dword ptr [ebp-8]
 0064B533    call        00652520
>0064B538    jmp         0064B653
 0064B53D    mov         edx,dword ptr [ebp-10]
 0064B540    mov         eax,dword ptr [ebp-4]
 0064B543    call        0064BA34
 0064B548    mov         ecx,eax
 0064B54A    mov         edx,dword ptr [ebp-0C]
 0064B54D    mov         eax,dword ptr [ebp-8]
 0064B550    call        SetOrdProp
>0064B555    jmp         0064B653
 0064B55A    mov         eax,dword ptr [ebp-4]
 0064B55D    call        TReader.NextValue
 0064B562    sub         al,0D
>0064B564    je          0064B56C
 0064B566    dec         al
>0064B568    je          0064B586
>0064B56A    jmp         0064B5A8
 0064B56C    mov         eax,dword ptr [ebp-4]
 0064B56F    call        TReader.ReadValue
 0064B574    xor         ecx,ecx
 0064B576    mov         edx,dword ptr [ebp-0C]
 0064B579    mov         eax,dword ptr [ebp-8]
 0064B57C    call        SetOrdProp
>0064B581    jmp         0064B653
 0064B586    mov         eax,dword ptr [ebp-4]
 0064B589    call        TReader.ReadValue
 0064B58E    mov         edx,dword ptr [ebp-0C]
 0064B591    mov         eax,dword ptr [ebp-8]
 0064B594    call        GetOrdProp
 0064B599    mov         edx,eax
 0064B59B    mov         eax,dword ptr [ebp-4]
 0064B59E    call        TReader.ReadCollection
>0064B5A3    jmp         0064B653
 0064B5A8    push        ebp
 0064B5A9    lea         edx,[ebp-2C]
 0064B5AC    mov         eax,dword ptr [ebp-4]
 0064B5AF    call        TReader.ReadIdent
 0064B5B4    mov         ecx,dword ptr [ebp-2C]
 0064B5B7    mov         edx,dword ptr [ebp-0C]
 0064B5BA    mov         eax,dword ptr [ebp-8]
 0064B5BD    call        0064B214
 0064B5C2    pop         ecx
>0064B5C3    jmp         0064B653
 0064B5C8    mov         eax,dword ptr [ebp-4]
 0064B5CB    call        TReader.NextValue
 0064B5D0    cmp         al,0D
>0064B5D2    jne         0064B5EE
 0064B5D4    mov         eax,dword ptr [ebp-4]
 0064B5D7    call        TReader.ReadValue
 0064B5DC    mov         ecx,6E483C
 0064B5E1    mov         edx,dword ptr [ebp-0C]
 0064B5E4    mov         eax,dword ptr [ebp-8]
 0064B5E7    call        SetMethodProp
>0064B5EC    jmp         0064B653
 0064B5EE    lea         edx,[ebp-30]
 0064B5F1    mov         eax,dword ptr [ebp-4]
 0064B5F4    call        TReader.ReadIdent
 0064B5F9    mov         ecx,dword ptr [ebp-30]
 0064B5FC    mov         eax,dword ptr [ebp-4]
 0064B5FF    mov         edx,dword ptr [eax+18]
 0064B602    mov         eax,dword ptr [ebp-4]
 0064B605    mov         ebx,dword ptr [eax]
 0064B607    call        dword ptr [ebx+18]
 0064B60A    mov         dword ptr [ebp-18],eax
 0064B60D    mov         eax,dword ptr [ebp-4]
 0064B610    mov         eax,dword ptr [eax+18]
 0064B613    mov         dword ptr [ebp-14],eax
 0064B616    cmp         dword ptr [ebp-18],0
>0064B61A    je          0064B653
 0064B61C    lea         ecx,[ebp-18]
 0064B61F    mov         edx,dword ptr [ebp-0C]
 0064B622    mov         eax,dword ptr [ebp-8]
 0064B625    call        SetMethodProp
>0064B62A    jmp         0064B653
 0064B62C    push        ebp
 0064B62D    call        SetVariantReference
 0064B632    pop         ecx
>0064B633    jmp         0064B653
 0064B635    mov         eax,dword ptr [ebp-4]
 0064B638    call        0064ADD4
 0064B63D    push        edx
 0064B63E    push        eax
 0064B63F    mov         edx,dword ptr [ebp-0C]
 0064B642    mov         eax,dword ptr [ebp-8]
 0064B645    call        SetInt64Prop
>0064B64A    jmp         0064B653
 0064B64C    push        ebp
 0064B64D    call        SetInterfaceReference
 0064B652    pop         ecx
 0064B653    xor         eax,eax
 0064B655    pop         edx
 0064B656    pop         ecx
 0064B657    pop         ecx
 0064B658    mov         dword ptr fs:[eax],edx
 0064B65B    push        64B68A
 0064B660    lea         eax,[ebp-30]
 0064B663    mov         edx,2
 0064B668    call        @LStrArrayClr
 0064B66D    lea         eax,[ebp-28]
 0064B670    call        @WStrClr
 0064B675    lea         eax,[ebp-24]
 0064B678    mov         edx,3
 0064B67D    call        @LStrArrayClr
 0064B682    ret
>0064B683    jmp         @HandleFinally
>0064B688    jmp         0064B660
 0064B68A    pop         ebx
 0064B68B    mov         esp,ebp
 0064B68D    pop         ebp
 0064B68E    ret
end;*}

//0064B690
{*procedure sub_0064B690(?:?; ?:?);
begin
 0064B690    push        ebp
 0064B691    mov         ebp,esp
 0064B693    add         esp,0FFFFFFE4
 0064B696    mov         dword ptr [ebp-8],edx
 0064B699    mov         dword ptr [ebp-4],eax
 0064B69C    xor         eax,eax
 0064B69E    mov         dword ptr [ebp-0C],eax
 0064B6A1    mov         eax,dword ptr [ebp-8]
 0064B6A4    mov         edx,dword ptr [ebp-4]
 0064B6A7    call        @LStrAsg
>0064B6AC    jmp         0064B6DB
 0064B6AE    inc         dword ptr [ebp-0C]
 0064B6B1    mov         eax,dword ptr [ebp-8]
 0064B6B4    push        eax
 0064B6B5    mov         eax,dword ptr [ebp-4]
 0064B6B8    mov         dword ptr [ebp-1C],eax
 0064B6BB    mov         byte ptr [ebp-18],0B
 0064B6BF    mov         eax,dword ptr [ebp-0C]
 0064B6C2    mov         dword ptr [ebp-14],eax
 0064B6C5    mov         byte ptr [ebp-10],0
 0064B6C9    lea         edx,[ebp-1C]
 0064B6CC    mov         ecx,1
 0064B6D1    mov         eax,64B6F8;'%s_%d'
 0064B6D6    call        00658FBC
 0064B6DB    mov         eax,dword ptr [ebp-8]
 0064B6DE    mov         eax,dword ptr [eax]
 0064B6E0    call        006448CC
 0064B6E5    test        al,al
>0064B6E7    je          0064B6AE
 0064B6E9    mov         esp,ebp
 0064B6EB    pop         ebp
 0064B6EC    ret
end;*}

//0064B700
destructor sub_0064B700;
begin
{*
 0064B700    push        ebp
 0064B701    mov         ebp,esp
 0064B703    add         esp,0FFFFFFCC
 0064B706    push        ebx
 0064B707    push        esi
 0064B708    push        edi
 0064B709    xor         ecx,ecx
 0064B70B    mov         dword ptr [ebp-30],ecx
 0064B70E    mov         dword ptr [ebp-34],ecx
 0064B711    mov         dword ptr [ebp-2C],ecx
 0064B714    mov         dword ptr [ebp-28],ecx
 0064B717    mov         dword ptr [ebp-24],ecx
 0064B71A    mov         dword ptr [ebp-20],ecx
 0064B71D    mov         dword ptr [ebp-8],edx
 0064B720    mov         dword ptr [ebp-4],eax
 0064B723    xor         eax,eax
 0064B725    push        ebp
 0064B726    push        64BA22
 0064B72B    push        dword ptr fs:[eax]
 0064B72E    mov         dword ptr fs:[eax],esp
 0064B731    mov         eax,dword ptr [ebp-4]
 0064B734    call        0064BAFC
 0064B739    xor         eax,eax
 0064B73B    mov         dword ptr [ebp-0C],eax
 0064B73E    mov         eax,[006ECF90];0x0 GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 0064B743    call        TMultiReadExclusiveWriteSynchronizer.BeginWrite
 0064B748    xor         eax,eax
 0064B74A    push        ebp
 0064B74B    push        64BA00
 0064B750    push        dword ptr fs:[eax]
 0064B753    mov         dword ptr fs:[eax],esp
 0064B756    xor         eax,eax
 0064B758    push        ebp
 0064B759    push        64B9C1
 0064B75E    push        dword ptr fs:[eax]
 0064B761    mov         dword ptr fs:[eax],esp
 0064B764    lea         ecx,[ebp-10]
 0064B767    lea         edx,[ebp-11]
 0064B76A    mov         eax,dword ptr [ebp-4]
 0064B76D    mov         ebx,dword ptr [eax]
 0064B76F    call        dword ptr [ebx+24];TReader.sub_0064AE44
 0064B772    cmp         dword ptr [ebp-8],0
>0064B776    jne         0064B7AD
 0064B778    lea         edx,[ebp-20]
 0064B77B    mov         eax,dword ptr [ebp-4]
 0064B77E    call        TReader.ReadStr
 0064B783    mov         eax,dword ptr [ebp-20]
 0064B786    call        00644304
 0064B78B    xor         ecx,ecx
 0064B78D    mov         dl,1
 0064B78F    call        dword ptr [eax+2C]
 0064B792    mov         dword ptr [ebp-0C],eax
 0064B795    lea         edx,[ebp-24]
 0064B798    mov         eax,dword ptr [ebp-4]
 0064B79B    call        TReader.ReadStr
 0064B7A0    mov         edx,dword ptr [ebp-24]
 0064B7A3    mov         eax,dword ptr [ebp-0C]
 0064B7A6    mov         ecx,dword ptr [eax]
 0064B7A8    call        dword ptr [ecx+18]
>0064B7AB    jmp         0064B807
 0064B7AD    mov         eax,dword ptr [ebp-8]
 0064B7B0    mov         dword ptr [ebp-0C],eax
 0064B7B3    lea         edx,[ebp-28]
 0064B7B6    mov         eax,dword ptr [ebp-4]
 0064B7B9    call        TReader.ReadStr
 0064B7BE    mov         eax,dword ptr [ebp-0C]
 0064B7C1    test        byte ptr [eax+1C],10
>0064B7C5    je          0064B7D4
 0064B7C7    lea         edx,[ebp-2C]
 0064B7CA    mov         eax,dword ptr [ebp-4]
 0064B7CD    call        TReader.ReadStr
>0064B7D2    jmp         0064B807
 0064B7D4    mov         eax,dword ptr [ebp-0C]
 0064B7D7    or          word ptr [eax+1C],1
 0064B7DC    mov         eax,dword ptr [ebp-0C]
 0064B7DF    or          word ptr [eax+1C],2
 0064B7E4    push        ebp
 0064B7E5    lea         edx,[ebp-34]
 0064B7E8    mov         eax,dword ptr [ebp-4]
 0064B7EB    call        TReader.ReadStr
 0064B7F0    mov         eax,dword ptr [ebp-34]
 0064B7F3    lea         edx,[ebp-30]
 0064B7F6    call        0064B690
 0064B7FB    pop         ecx
 0064B7FC    mov         edx,dword ptr [ebp-30]
 0064B7FF    mov         eax,dword ptr [ebp-0C]
 0064B802    mov         ecx,dword ptr [eax]
 0064B804    call        dword ptr [ecx+18]
 0064B807    mov         eax,dword ptr [ebp-4]
 0064B80A    mov         edx,dword ptr [ebp-0C]
 0064B80D    mov         dword ptr [eax+18],edx;TReader.FRoot:TComponent
 0064B810    push        1
 0064B812    mov         eax,dword ptr [ebp-0C]
 0064B815    call        TObject.ClassType
 0064B81A    mov         ecx,eax
 0064B81C    mov         dl,1
 0064B81E    mov         eax,[00642E2C];TClassFinder
 0064B823    call        TClassFinder.Create;TClassFinder.Create
 0064B828    mov         edx,dword ptr [ebp-4]
 0064B82B    mov         dword ptr [edx+74],eax;TReader.FFinder:TClassFinder
 0064B82E    xor         eax,eax
 0064B830    push        ebp
 0064B831    push        64B966
 0064B836    push        dword ptr fs:[eax]
 0064B839    mov         dword ptr fs:[eax],esp
 0064B83C    mov         eax,dword ptr [ebp-4]
 0064B83F    mov         edx,dword ptr [ebp-0C]
 0064B842    mov         dword ptr [eax+1C],edx;TReader.FLookupRoot:TComponent
 0064B845    call        @GetTls
 0064B84A    mov         eax,dword ptr [eax+0];{threadvar_0}
 0064B850    mov         dword ptr [ebp-18],eax
 0064B853    cmp         dword ptr [ebp-18],0
>0064B857    je          0064B864
 0064B859    mov         eax,dword ptr [ebp-4]
 0064B85C    mov         edx,dword ptr [ebp-18]
 0064B85F    mov         dword ptr [eax+34],edx;TReader.FLoaded:TList
>0064B862    jmp         0064B876
 0064B864    mov         dl,1
 0064B866    mov         eax,[006422A4];TList
 0064B86B    call        TObject.Create;TList.Create
 0064B870    mov         edx,dword ptr [ebp-4]
 0064B873    mov         dword ptr [edx+34],eax;TReader.FLoaded:TList
 0064B876    xor         eax,eax
 0064B878    push        ebp
 0064B879    push        64B946
 0064B87E    push        dword ptr fs:[eax]
 0064B881    mov         dword ptr fs:[eax],esp
 0064B884    mov         eax,dword ptr [ebp-4]
 0064B887    mov         edx,dword ptr [eax+18];TReader.FRoot:TComponent
 0064B88A    mov         eax,dword ptr [ebp-4]
 0064B88D    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0064B890    call        TList.IndexOf
 0064B895    test        eax,eax
>0064B897    jge         0064B8AA
 0064B899    mov         eax,dword ptr [ebp-4]
 0064B89C    mov         edx,dword ptr [eax+18];TReader.FRoot:TComponent
 0064B89F    mov         eax,dword ptr [ebp-4]
 0064B8A2    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0064B8A5    call        TList.Add
 0064B8AA    mov         eax,dword ptr [ebp-4]
 0064B8AD    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0064B8B0    mov         edx,dword ptr [ebp-4]
 0064B8B3    mov         dword ptr [edx+28],eax;TReader.FOwner:TComponent
 0064B8B6    mov         eax,dword ptr [ebp-4]
 0064B8B9    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0064B8BC    or          word ptr [eax+1C],1;TComponent.FComponentState:TComponentState
 0064B8C1    mov         eax,dword ptr [ebp-4]
 0064B8C4    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0064B8C7    or          word ptr [eax+1C],2;TComponent.FComponentState:TComponentState
 0064B8CC    mov         eax,dword ptr [ebp-4]
 0064B8CF    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0064B8D2    mov         edx,dword ptr [ebp-4]
 0064B8D5    mov         ecx,dword ptr [eax]
 0064B8D7    call        dword ptr [ecx+14];TComponent.sub_006508C8
 0064B8DA    mov         eax,dword ptr [ebp-4]
 0064B8DD    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0064B8E0    and         word ptr [eax+1C],0FFFFFFFD;TComponent.FComponentState:TComponentState
 0064B8E5    cmp         dword ptr [ebp-18],0
>0064B8E9    jne         0064B91F
 0064B8EB    mov         eax,dword ptr [ebp-4]
 0064B8EE    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0064B8F1    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0064B8F4    dec         eax
 0064B8F5    test        eax,eax
>0064B8F7    jl          0064B91F
 0064B8F9    inc         eax
 0064B8FA    mov         dword ptr [ebp-1C],eax
 0064B8FD    mov         dword ptr [ebp-10],0
 0064B904    mov         eax,dword ptr [ebp-4]
 0064B907    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0064B90A    mov         edx,dword ptr [ebp-10]
 0064B90D    call        TList.Get
 0064B912    mov         edx,dword ptr [eax]
 0064B914    call        dword ptr [edx+0C]
 0064B917    inc         dword ptr [ebp-10]
 0064B91A    dec         dword ptr [ebp-1C]
>0064B91D    jne         0064B904
 0064B91F    xor         eax,eax
 0064B921    pop         edx
 0064B922    pop         ecx
 0064B923    pop         ecx
 0064B924    mov         dword ptr fs:[eax],edx
 0064B927    push        64B94D
 0064B92C    cmp         dword ptr [ebp-18],0
>0064B930    jne         0064B93D
 0064B932    mov         eax,dword ptr [ebp-4]
 0064B935    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0064B938    call        TObject.Free
 0064B93D    mov         eax,dword ptr [ebp-4]
 0064B940    xor         edx,edx
 0064B942    mov         dword ptr [eax+34],edx;TReader.FLoaded:TList
 0064B945    ret
>0064B946    jmp         @HandleFinally
>0064B94B    jmp         0064B92C
 0064B94D    xor         eax,eax
 0064B94F    pop         edx
 0064B950    pop         ecx
 0064B951    pop         ecx
 0064B952    mov         dword ptr fs:[eax],edx
 0064B955    push        64B96D
 0064B95A    mov         eax,dword ptr [ebp-4]
 0064B95D    mov         eax,dword ptr [eax+74];TReader.FFinder:TClassFinder
 0064B960    call        TObject.Free
 0064B965    ret
>0064B966    jmp         @HandleFinally
>0064B96B    jmp         0064B95A
 0064B96D    xor         eax,eax
 0064B96F    push        ebp
 0064B970    push        64B992
 0064B975    push        dword ptr fs:[eax]
 0064B978    mov         dword ptr fs:[eax],esp
 0064B97B    call        006499B4
 0064B980    xor         eax,eax
 0064B982    pop         edx
 0064B983    pop         ecx
 0064B984    pop         ecx
 0064B985    mov         dword ptr fs:[eax],edx
>0064B988    jmp         0064B9B7
 0064B98A    xor         eax,eax
 0064B98C    pop         edx
 0064B98D    pop         ecx
 0064B98E    pop         ecx
 0064B98F    mov         dword ptr fs:[eax],edx
>0064B992    jmp         @HandleAnyException
 0064B997    call        ExceptObject
 0064B99C    mov         edx,dword ptr [eax+4]
 0064B99F    mov         eax,dword ptr [ebp-4]
 0064B9A2    mov         ecx,dword ptr [eax]
 0064B9A4    call        dword ptr [ecx+10];TReader.sub_00649F14
 0064B9A7    test        al,al
>0064B9A9    jne         0064B9B0
 0064B9AB    call        @RaiseAgain
 0064B9B0    call        @DoneExcept
>0064B9B5    jmp         0064B96D
 0064B9B7    xor         eax,eax
 0064B9B9    pop         edx
 0064B9BA    pop         ecx
 0064B9BB    pop         ecx
 0064B9BC    mov         dword ptr fs:[eax],edx
>0064B9BF    jmp         0064B9E8
>0064B9C1    jmp         @HandleAnyException
 0064B9C6    xor         edx,edx
 0064B9C8    mov         eax,dword ptr [ebp-8]
 0064B9CB    call        00649B9C
 0064B9D0    cmp         dword ptr [ebp-8],0
>0064B9D4    jne         0064B9DE
 0064B9D6    mov         eax,dword ptr [ebp-0C]
 0064B9D9    call        TObject.Free
 0064B9DE    call        @RaiseAgain
 0064B9E3    call        @DoneExcept
 0064B9E8    xor         eax,eax
 0064B9EA    pop         edx
 0064B9EB    pop         ecx
 0064B9EC    pop         ecx
 0064B9ED    mov         dword ptr fs:[eax],edx
 0064B9F0    push        64BA07
 0064B9F5    mov         eax,[006ECF90];0x0 GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 0064B9FA    call        TMultiReadExclusiveWriteSynchronizer.EndWrite
 0064B9FF    ret
>0064BA00    jmp         @HandleFinally
>0064BA05    jmp         0064B9F5
 0064BA07    xor         eax,eax
 0064BA09    pop         edx
 0064BA0A    pop         ecx
 0064BA0B    pop         ecx
 0064BA0C    mov         dword ptr fs:[eax],edx
 0064BA0F    push        64BA29
 0064BA14    lea         eax,[ebp-34]
 0064BA17    mov         edx,6
 0064BA1C    call        @LStrArrayClr
 0064BA21    ret
>0064BA22    jmp         @HandleFinally
>0064BA27    jmp         0064BA14
 0064BA29    mov         eax,dword ptr [ebp-0C]
 0064BA2C    pop         edi
 0064BA2D    pop         esi
 0064BA2E    pop         ebx
 0064BA2F    mov         esp,ebp
 0064BA31    pop         ebp
 0064BA32    ret
*}
end;

//0064BA34
{*function sub_0064BA34(?:?; ?:PPropInfo):?;
begin
 0064BA34    push        ebp
 0064BA35    mov         ebp,esp
 0064BA37    add         esp,0FFFFFFEC
 0064BA3A    push        ebx
 0064BA3B    push        esi
 0064BA3C    push        edi
 0064BA3D    xor         ecx,ecx
 0064BA3F    mov         dword ptr [ebp-14],ecx
 0064BA42    mov         dword ptr [ebp-8],edx
 0064BA45    mov         dword ptr [ebp-4],eax
 0064BA48    xor         eax,eax
 0064BA4A    push        ebp
 0064BA4B    push        64BAE8
 0064BA50    push        dword ptr fs:[eax]
 0064BA53    mov         dword ptr fs:[eax],esp
 0064BA56    xor         eax,eax
 0064BA58    push        ebp
 0064BA59    push        64BABB
 0064BA5E    push        dword ptr fs:[eax]
 0064BA61    mov         dword ptr fs:[eax],esp
 0064BA64    mov         eax,dword ptr [ebp-4]
 0064BA67    call        TReader.ReadValue
 0064BA6C    cmp         al,0B
>0064BA6E    je          0064BA75
 0064BA70    call        00649D0C
 0064BA75    mov         eax,dword ptr [ebp-8]
 0064BA78    call        GetTypeData
 0064BA7D    mov         eax,dword ptr [eax+1]
 0064BA80    mov         eax,dword ptr [eax]
 0064BA82    mov         dword ptr [ebp-10],eax
 0064BA85    xor         eax,eax
 0064BA87    mov         dword ptr [ebp-0C],eax
 0064BA8A    lea         edx,[ebp-14]
 0064BA8D    mov         eax,dword ptr [ebp-4]
 0064BA90    call        TReader.ReadStr
 0064BA95    cmp         dword ptr [ebp-14],0
>0064BA99    je          0064BAB1
 0064BA9B    mov         edx,dword ptr [ebp-14]
 0064BA9E    mov         eax,dword ptr [ebp-10]
 0064BAA1    call        00651E9C
 0064BAA6    cmp         eax,1F
>0064BAA9    ja          0064BA8A
 0064BAAB    bts         dword ptr [ebp-0C],eax
>0064BAAF    jmp         0064BA8A
 0064BAB1    xor         eax,eax
 0064BAB3    pop         edx
 0064BAB4    pop         ecx
 0064BAB5    pop         ecx
 0064BAB6    mov         dword ptr fs:[eax],edx
>0064BAB9    jmp         0064BAD2
>0064BABB    jmp         @HandleAnyException
 0064BAC0    mov         eax,dword ptr [ebp-4]
 0064BAC3    call        TReader.SkipSetBody
 0064BAC8    call        @RaiseAgain
 0064BACD    call        @DoneExcept
 0064BAD2    xor         eax,eax
 0064BAD4    pop         edx
 0064BAD5    pop         ecx
 0064BAD6    pop         ecx
 0064BAD7    mov         dword ptr fs:[eax],edx
 0064BADA    push        64BAEF
 0064BADF    lea         eax,[ebp-14]
 0064BAE2    call        @LStrClr
 0064BAE7    ret
>0064BAE8    jmp         @HandleFinally
>0064BAED    jmp         0064BADF
 0064BAEF    mov         eax,dword ptr [ebp-0C]
 0064BAF2    pop         edi
 0064BAF3    pop         esi
 0064BAF4    pop         ebx
 0064BAF5    mov         esp,ebp
 0064BAF7    pop         ebp
 0064BAF8    ret
end;*}

//0064BAFC
procedure sub_0064BAFC(?:TReader);
begin
{*
 0064BAFC    push        ebp
 0064BAFD    mov         ebp,esp
 0064BAFF    add         esp,0FFFFFFF8
 0064BB02    mov         dword ptr [ebp-4],eax
 0064BB05    lea         edx,[ebp-8]
 0064BB08    mov         ecx,4
 0064BB0D    mov         eax,dword ptr [ebp-4]
 0064BB10    call        TReader.Read
 0064BB15    mov         eax,dword ptr [ebp-8]
 0064BB18    cmp         eax,dword ptr ds:[6E4838];0x30465054 gvar_006E4838
>0064BB1E    je          0064BB2A
 0064BB20    mov         eax,[006EA08C];^gvar_0065500C
 0064BB25    call        00649CEC
 0064BB2A    pop         ecx
 0064BB2B    pop         ecx
 0064BB2C    pop         ebp
 0064BB2D    ret
*}
end;

//0064BB30
function TReader.ReadStr:AnsiString;
begin
{*
 0064BB30    push        ebp
 0064BB31    mov         ebp,esp
 0064BB33    add         esp,0FFFFFFF4
 0064BB36    mov         dword ptr [ebp-8],edx
 0064BB39    mov         dword ptr [ebp-4],eax
 0064BB3C    lea         edx,[ebp-9]
 0064BB3F    mov         ecx,1
 0064BB44    mov         eax,dword ptr [ebp-4]
 0064BB47    call        TReader.Read
 0064BB4C    xor         ecx,ecx
 0064BB4E    mov         cl,byte ptr [ebp-9]
 0064BB51    mov         eax,dword ptr [ebp-8]
 0064BB54    xor         edx,edx
 0064BB56    call        @LStrFromPCharLen
 0064BB5B    mov         eax,dword ptr [ebp-8]
 0064BB5E    call        @UniqueStringA
 0064BB63    mov         edx,eax
 0064BB65    xor         ecx,ecx
 0064BB67    mov         cl,byte ptr [ebp-9]
 0064BB6A    mov         eax,dword ptr [ebp-4]
 0064BB6D    call        TReader.Read
 0064BB72    mov         esp,ebp
 0064BB74    pop         ebp
 0064BB75    ret
*}
end;

//0064BB78
function TReader.ReadString:AnsiString;
begin
{*
 0064BB78    push        ebp
 0064BB79    mov         ebp,esp
 0064BB7B    add         esp,0FFFFFFF0
 0064BB7E    xor         ecx,ecx
 0064BB80    mov         dword ptr [ebp-10],ecx
 0064BB83    mov         dword ptr [ebp-8],edx
 0064BB86    mov         dword ptr [ebp-4],eax
 0064BB89    xor         eax,eax
 0064BB8B    push        ebp
 0064BB8C    push        64BC30
 0064BB91    push        dword ptr fs:[eax]
 0064BB94    mov         dword ptr fs:[eax],esp
 0064BB97    mov         eax,dword ptr [ebp-4]
 0064BB9A    call        TReader.NextValue
 0064BB9F    sub         al,12
>0064BBA1    je          0064BBA7
 0064BBA3    sub         al,2
>0064BBA5    jne         0064BBBF
 0064BBA7    lea         edx,[ebp-10]
 0064BBAA    mov         eax,dword ptr [ebp-4]
 0064BBAD    call        0064BC3C
 0064BBB2    mov         edx,dword ptr [ebp-10]
 0064BBB5    mov         eax,dword ptr [ebp-8]
 0064BBB8    call        @LStrFromWStr
>0064BBBD    jmp         0064BC1A
 0064BBBF    xor         eax,eax
 0064BBC1    mov         dword ptr [ebp-0C],eax
 0064BBC4    mov         eax,dword ptr [ebp-4]
 0064BBC7    call        TReader.ReadValue
 0064BBCC    sub         al,6
>0064BBCE    je          0064BBD6
 0064BBD0    sub         al,6
>0064BBD2    je          0064BBE8
>0064BBD4    jmp         0064BBFA
 0064BBD6    lea         edx,[ebp-0C]
 0064BBD9    mov         ecx,1
 0064BBDE    mov         eax,dword ptr [ebp-4]
 0064BBE1    call        TReader.Read
>0064BBE6    jmp         0064BBFF
 0064BBE8    lea         edx,[ebp-0C]
 0064BBEB    mov         ecx,4
 0064BBF0    mov         eax,dword ptr [ebp-4]
 0064BBF3    call        TReader.Read
>0064BBF8    jmp         0064BBFF
 0064BBFA    call        00649D0C
 0064BBFF    mov         eax,dword ptr [ebp-8]
 0064BC02    mov         edx,dword ptr [ebp-0C]
 0064BC05    call        @LStrSetLength
 0064BC0A    mov         edx,dword ptr [ebp-8]
 0064BC0D    mov         edx,dword ptr [edx]
 0064BC0F    mov         ecx,dword ptr [ebp-0C]
 0064BC12    mov         eax,dword ptr [ebp-4]
 0064BC15    call        TReader.Read
 0064BC1A    xor         eax,eax
 0064BC1C    pop         edx
 0064BC1D    pop         ecx
 0064BC1E    pop         ecx
 0064BC1F    mov         dword ptr fs:[eax],edx
 0064BC22    push        64BC37
 0064BC27    lea         eax,[ebp-10]
 0064BC2A    call        @WStrClr
 0064BC2F    ret
>0064BC30    jmp         @HandleFinally
>0064BC35    jmp         0064BC27
 0064BC37    mov         esp,ebp
 0064BC39    pop         ebp
 0064BC3A    ret
*}
end;

//0064BC3C
{*procedure sub_0064BC3C(?:?; ?:?);
begin
 0064BC3C    push        ebp
 0064BC3D    mov         ebp,esp
 0064BC3F    add         esp,0FFFFFFEC
 0064BC42    xor         ecx,ecx
 0064BC44    mov         dword ptr [ebp-14],ecx
 0064BC47    mov         dword ptr [ebp-10],ecx
 0064BC4A    mov         dword ptr [ebp-8],edx
 0064BC4D    mov         dword ptr [ebp-4],eax
 0064BC50    xor         eax,eax
 0064BC52    push        ebp
 0064BC53    push        64BD28
 0064BC58    push        dword ptr fs:[eax]
 0064BC5B    mov         dword ptr fs:[eax],esp
 0064BC5E    mov         eax,dword ptr [ebp-4]
 0064BC61    call        TReader.NextValue
 0064BC66    sub         al,6
>0064BC68    je          0064BC6E
 0064BC6A    sub         al,6
>0064BC6C    jne         0064BC89
 0064BC6E    lea         edx,[ebp-14]
 0064BC71    mov         eax,dword ptr [ebp-4]
 0064BC74    call        TReader.ReadString
 0064BC79    mov         edx,dword ptr [ebp-14]
 0064BC7C    mov         eax,dword ptr [ebp-8]
 0064BC7F    call        @WStrFromLStr
>0064BC84    jmp         0064BD0A
 0064BC89    xor         eax,eax
 0064BC8B    mov         dword ptr [ebp-0C],eax
 0064BC8E    mov         eax,dword ptr [ebp-4]
 0064BC91    call        TReader.ReadValue
 0064BC96    sub         al,12
>0064BC98    je          0064BCA0
 0064BC9A    sub         al,2
>0064BC9C    je          0064BCCF
>0064BC9E    jmp         0064BD05
 0064BCA0    lea         edx,[ebp-0C]
 0064BCA3    mov         ecx,4
 0064BCA8    mov         eax,dword ptr [ebp-4]
 0064BCAB    call        TReader.Read
 0064BCB0    mov         eax,dword ptr [ebp-8]
 0064BCB3    mov         edx,dword ptr [ebp-0C]
 0064BCB6    call        @WStrSetLength
 0064BCBB    mov         ecx,dword ptr [ebp-0C]
 0064BCBE    add         ecx,ecx
 0064BCC0    mov         edx,dword ptr [ebp-8]
 0064BCC3    mov         edx,dword ptr [edx]
 0064BCC5    mov         eax,dword ptr [ebp-4]
 0064BCC8    call        TReader.Read
>0064BCCD    jmp         0064BD0A
 0064BCCF    lea         edx,[ebp-0C]
 0064BCD2    mov         ecx,4
 0064BCD7    mov         eax,dword ptr [ebp-4]
 0064BCDA    call        TReader.Read
 0064BCDF    lea         eax,[ebp-10]
 0064BCE2    mov         edx,dword ptr [ebp-0C]
 0064BCE5    call        @LStrSetLength
 0064BCEA    mov         edx,dword ptr [ebp-10]
 0064BCED    mov         ecx,dword ptr [ebp-0C]
 0064BCF0    mov         eax,dword ptr [ebp-4]
 0064BCF3    call        TReader.Read
 0064BCF8    mov         edx,dword ptr [ebp-8]
 0064BCFB    mov         eax,dword ptr [ebp-10]
 0064BCFE    call        UTF8Decode
>0064BD03    jmp         0064BD0A
 0064BD05    call        00649D0C
 0064BD0A    xor         eax,eax
 0064BD0C    pop         edx
 0064BD0D    pop         ecx
 0064BD0E    pop         ecx
 0064BD0F    mov         dword ptr fs:[eax],edx
 0064BD12    push        64BD2F
 0064BD17    lea         eax,[ebp-14]
 0064BD1A    call        @LStrClr
 0064BD1F    lea         eax,[ebp-10]
 0064BD22    call        @LStrClr
 0064BD27    ret
>0064BD28    jmp         @HandleFinally
>0064BD2D    jmp         0064BD17
 0064BD2F    mov         esp,ebp
 0064BD31    pop         ebp
 0064BD32    ret
end;*}

//0064BD34
function TReader.ReadValue:TValueType;
begin
{*
 0064BD34    push        ebp
 0064BD35    mov         ebp,esp
 0064BD37    add         esp,0FFFFFFF8
 0064BD3A    mov         dword ptr [ebp-4],eax
 0064BD3D    lea         edx,[ebp-5]
 0064BD40    mov         ecx,1
 0064BD45    mov         eax,dword ptr [ebp-4]
 0064BD48    call        TReader.Read
 0064BD4D    mov         al,byte ptr [ebp-5]
 0064BD50    pop         ecx
 0064BD51    pop         ecx
 0064BD52    pop         ebp
 0064BD53    ret
*}
end;

//0064BD54
{*procedure sub_0064BD54(?:?; ?:?);
begin
 0064BD54    push        ebp
 0064BD55    mov         ebp,esp
 0064BD57    add         esp,0FFFFFFF8
 0064BD5A    mov         dword ptr [ebp-8],edx
 0064BD5D    mov         dword ptr [ebp-4],eax
 0064BD60    mov         eax,dword ptr [ebp-8]
 0064BD63    cdq
 0064BD64    push        edx
 0064BD65    push        eax
 0064BD66    mov         eax,dword ptr [ebp-4]
 0064BD69    mov         eax,dword ptr [eax+4]
 0064BD6C    call        TStream.SetPosition
 0064BD71    mov         eax,dword ptr [ebp-4]
 0064BD74    xor         edx,edx
 0064BD76    mov         dword ptr [eax+10],edx
 0064BD79    mov         eax,dword ptr [ebp-4]
 0064BD7C    xor         edx,edx
 0064BD7E    mov         dword ptr [eax+14],edx
 0064BD81    pop         ecx
 0064BD82    pop         ecx
 0064BD83    pop         ebp
 0064BD84    ret
end;*}

//0064BD88
procedure TReader.SkipSetBody;
begin
{*
 0064BD88    push        ebp
 0064BD89    mov         ebp,esp
 0064BD8B    add         esp,0FFFFFFF8
 0064BD8E    xor         edx,edx
 0064BD90    mov         dword ptr [ebp-8],edx
 0064BD93    mov         dword ptr [ebp-4],eax
 0064BD96    xor         eax,eax
 0064BD98    push        ebp
 0064BD99    push        64BDCB
 0064BD9E    push        dword ptr fs:[eax]
 0064BDA1    mov         dword ptr fs:[eax],esp
 0064BDA4    lea         edx,[ebp-8]
 0064BDA7    mov         eax,dword ptr [ebp-4]
 0064BDAA    call        TReader.ReadStr
 0064BDAF    cmp         dword ptr [ebp-8],0
>0064BDB3    jne         0064BDA4
 0064BDB5    xor         eax,eax
 0064BDB7    pop         edx
 0064BDB8    pop         ecx
 0064BDB9    pop         ecx
 0064BDBA    mov         dword ptr fs:[eax],edx
 0064BDBD    push        64BDD2
 0064BDC2    lea         eax,[ebp-8]
 0064BDC5    call        @LStrClr
 0064BDCA    ret
>0064BDCB    jmp         @HandleFinally
>0064BDD0    jmp         0064BDC2
 0064BDD2    pop         ecx
 0064BDD3    pop         ecx
 0064BDD4    pop         ebp
 0064BDD5    ret
*}
end;

//0064BDD8
procedure SkipList;
begin
{*
 0064BDD8    push        ebp
 0064BDD9    mov         ebp,esp
>0064BDDB    jmp         0064BDE8
 0064BDDD    mov         eax,dword ptr [ebp+8]
 0064BDE0    mov         eax,dword ptr [eax-4]
 0064BDE3    call        TReader.SkipValue
 0064BDE8    mov         eax,dword ptr [ebp+8]
 0064BDEB    mov         eax,dword ptr [eax-4]
 0064BDEE    call        TReader.EndOfList
 0064BDF3    test        al,al
>0064BDF5    je          0064BDDD
 0064BDF7    mov         eax,dword ptr [ebp+8]
 0064BDFA    mov         eax,dword ptr [eax-4]
 0064BDFD    call        TReader.ReadListEnd
 0064BE02    pop         ebp
 0064BE03    ret
*}
end;

//0064BE04
procedure SkipBinary(BytesPerUnit:Integer);
begin
{*
 0064BE04    push        ebp
 0064BE05    mov         ebp,esp
 0064BE07    add         esp,0FFFFFFF8
 0064BE0A    mov         dword ptr [ebp-4],eax
 0064BE0D    lea         edx,[ebp-8]
 0064BE10    mov         eax,dword ptr [ebp+8]
 0064BE13    mov         eax,dword ptr [eax-4]
 0064BE16    mov         ecx,4
 0064BE1B    call        TReader.Read
 0064BE20    mov         edx,dword ptr [ebp-8]
 0064BE23    imul        edx,dword ptr [ebp-4]
 0064BE27    mov         eax,dword ptr [ebp+8]
 0064BE2A    mov         eax,dword ptr [eax-4]
 0064BE2D    call        TReader.SkipBytes
 0064BE32    pop         ecx
 0064BE33    pop         ecx
 0064BE34    pop         ebp
 0064BE35    ret
*}
end;

//0064BE38
procedure SkipCollection;
begin
{*
 0064BE38    push        ebp
 0064BE39    mov         ebp,esp
>0064BE3B    jmp         0064BE90
 0064BE3D    mov         eax,dword ptr [ebp+8]
 0064BE40    mov         eax,dword ptr [eax-4]
 0064BE43    call        TReader.NextValue
 0064BE48    add         al,0FE
 0064BE4A    sub         al,3
>0064BE4C    jae         0064BE59
 0064BE4E    mov         eax,dword ptr [ebp+8]
 0064BE51    mov         eax,dword ptr [eax-4]
 0064BE54    call        TReader.SkipValue
 0064BE59    mov         eax,dword ptr [ebp+8]
 0064BE5C    mov         eax,dword ptr [eax-4]
 0064BE5F    mov         edx,1
 0064BE64    call        TReader.SkipBytes
>0064BE69    jmp         0064BE76
 0064BE6B    mov         eax,dword ptr [ebp+8]
 0064BE6E    mov         eax,dword ptr [eax-4]
 0064BE71    call        0064C048
 0064BE76    mov         eax,dword ptr [ebp+8]
 0064BE79    mov         eax,dword ptr [eax-4]
 0064BE7C    call        TReader.EndOfList
 0064BE81    test        al,al
>0064BE83    je          0064BE6B
 0064BE85    mov         eax,dword ptr [ebp+8]
 0064BE88    mov         eax,dword ptr [eax-4]
 0064BE8B    call        TReader.ReadListEnd
 0064BE90    mov         eax,dword ptr [ebp+8]
 0064BE93    mov         eax,dword ptr [eax-4]
 0064BE96    call        TReader.EndOfList
 0064BE9B    test        al,al
>0064BE9D    je          0064BE3D
 0064BE9F    mov         eax,dword ptr [ebp+8]
 0064BEA2    mov         eax,dword ptr [eax-4]
 0064BEA5    call        TReader.ReadListEnd
 0064BEAA    pop         ebp
 0064BEAB    ret
*}
end;

//0064BEAC
procedure TReader.SkipValue;
begin
{*
 0064BEAC    push        ebp
 0064BEAD    mov         ebp,esp
 0064BEAF    add         esp,0FFFFFFF8
 0064BEB2    xor         edx,edx
 0064BEB4    mov         dword ptr [ebp-8],edx
 0064BEB7    mov         dword ptr [ebp-4],eax
 0064BEBA    xor         eax,eax
 0064BEBC    push        ebp
 0064BEBD    push        64C03B
 0064BEC2    push        dword ptr fs:[eax]
 0064BEC5    mov         dword ptr fs:[eax],esp
 0064BEC8    mov         eax,dword ptr [ebp-4]
 0064BECB    call        TReader.ReadValue
 0064BED0    and         eax,7F
 0064BED3    cmp         eax,14
>0064BED6    ja          0064C025
 0064BEDC    jmp         dword ptr [eax*4+64BEE3]
 0064BEDC    dd          0064C025
 0064BEDC    dd          0064BF3C
 0064BEDC    dd          0064BF48
 0064BEDC    dd          0064BF5A
 0064BEDC    dd          0064BF6C
 0064BEDC    dd          0064BF7E
 0064BEDC    dd          0064BF90
 0064BEDC    dd          0064BF90
 0064BEDC    dd          0064C025
 0064BEDC    dd          0064C025
 0064BEDC    dd          0064BFA0
 0064BEDC    dd          0064BFAE
 0064BEDC    dd          0064BFB8
 0064BEDC    dd          0064C025
 0064BEDC    dd          0064BFC6
 0064BEDC    dd          0064BFCF
 0064BEDC    dd          0064BFDE
 0064BEDC    dd          0064BFED
 0064BEDC    dd          0064BFFC
 0064BEDC    dd          0064C00A
 0064BEDC    dd          0064C019
>0064BF37    jmp         0064C025
 0064BF3C    push        ebp
 0064BF3D    call        SkipList
 0064BF42    pop         ecx
>0064BF43    jmp         0064C025
 0064BF48    mov         edx,1
 0064BF4D    mov         eax,dword ptr [ebp-4]
 0064BF50    call        TReader.SkipBytes
>0064BF55    jmp         0064C025
 0064BF5A    mov         edx,2
 0064BF5F    mov         eax,dword ptr [ebp-4]
 0064BF62    call        TReader.SkipBytes
>0064BF67    jmp         0064C025
 0064BF6C    mov         edx,4
 0064BF71    mov         eax,dword ptr [ebp-4]
 0064BF74    call        TReader.SkipBytes
>0064BF79    jmp         0064C025
 0064BF7E    mov         edx,0A
 0064BF83    mov         eax,dword ptr [ebp-4]
 0064BF86    call        TReader.SkipBytes
>0064BF8B    jmp         0064C025
 0064BF90    lea         edx,[ebp-8]
 0064BF93    mov         eax,dword ptr [ebp-4]
 0064BF96    call        TReader.ReadStr
>0064BF9B    jmp         0064C025
 0064BFA0    push        ebp
 0064BFA1    mov         eax,1
 0064BFA6    call        SkipBinary
 0064BFAB    pop         ecx
>0064BFAC    jmp         0064C025
 0064BFAE    mov         eax,dword ptr [ebp-4]
 0064BFB1    call        TReader.SkipSetBody
>0064BFB6    jmp         0064C025
 0064BFB8    push        ebp
 0064BFB9    mov         eax,1
 0064BFBE    call        SkipBinary
 0064BFC3    pop         ecx
>0064BFC4    jmp         0064C025
 0064BFC6    push        ebp
 0064BFC7    call        SkipCollection
 0064BFCC    pop         ecx
>0064BFCD    jmp         0064C025
 0064BFCF    mov         edx,4
 0064BFD4    mov         eax,dword ptr [ebp-4]
 0064BFD7    call        TReader.SkipBytes
>0064BFDC    jmp         0064C025
 0064BFDE    mov         edx,8
 0064BFE3    mov         eax,dword ptr [ebp-4]
 0064BFE6    call        TReader.SkipBytes
>0064BFEB    jmp         0064C025
 0064BFED    mov         edx,8
 0064BFF2    mov         eax,dword ptr [ebp-4]
 0064BFF5    call        TReader.SkipBytes
>0064BFFA    jmp         0064C025
 0064BFFC    push        ebp
 0064BFFD    mov         eax,2
 0064C002    call        SkipBinary
 0064C007    pop         ecx
>0064C008    jmp         0064C025
 0064C00A    mov         edx,8
 0064C00F    mov         eax,dword ptr [ebp-4]
 0064C012    call        TReader.SkipBytes
>0064C017    jmp         0064C025
 0064C019    push        ebp
 0064C01A    mov         eax,1
 0064C01F    call        SkipBinary
 0064C024    pop         ecx
 0064C025    xor         eax,eax
 0064C027    pop         edx
 0064C028    pop         ecx
 0064C029    pop         ecx
 0064C02A    mov         dword ptr fs:[eax],edx
 0064C02D    push        64C042
 0064C032    lea         eax,[ebp-8]
 0064C035    call        @LStrClr
 0064C03A    ret
>0064C03B    jmp         @HandleFinally
>0064C040    jmp         0064C032
 0064C042    pop         ecx
 0064C043    pop         ecx
 0064C044    pop         ebp
 0064C045    ret
*}
end;

//0064C048
{*procedure sub_0064C048(?:?);
begin
 0064C048    push        ebp
 0064C049    mov         ebp,esp
 0064C04B    add         esp,0FFFFFFF8
 0064C04E    xor         edx,edx
 0064C050    mov         dword ptr [ebp-8],edx
 0064C053    mov         dword ptr [ebp-4],eax
 0064C056    xor         eax,eax
 0064C058    push        ebp
 0064C059    push        64C08D
 0064C05E    push        dword ptr fs:[eax]
 0064C061    mov         dword ptr fs:[eax],esp
 0064C064    lea         edx,[ebp-8]
 0064C067    mov         eax,dword ptr [ebp-4]
 0064C06A    call        TReader.ReadStr
 0064C06F    mov         eax,dword ptr [ebp-4]
 0064C072    call        TReader.SkipValue
 0064C077    xor         eax,eax
 0064C079    pop         edx
 0064C07A    pop         ecx
 0064C07B    pop         ecx
 0064C07C    mov         dword ptr fs:[eax],edx
 0064C07F    push        64C094
 0064C084    lea         eax,[ebp-8]
 0064C087    call        @LStrClr
 0064C08C    ret
>0064C08D    jmp         @HandleFinally
>0064C092    jmp         0064C084
 0064C094    pop         ecx
 0064C095    pop         ecx
 0064C096    pop         ebp
 0064C097    ret
end;*}

//0064C098
{*procedure sub_0064C098(?:?; ?:?);
begin
 0064C098    push        ebp
 0064C099    mov         ebp,esp
 0064C09B    add         esp,0FFFFFFEC
 0064C09E    push        ebx
 0064C09F    xor         ecx,ecx
 0064C0A1    mov         dword ptr [ebp-14],ecx
 0064C0A4    mov         dword ptr [ebp-10],ecx
 0064C0A7    mov         byte ptr [ebp-5],dl
 0064C0AA    mov         dword ptr [ebp-4],eax
 0064C0AD    xor         eax,eax
 0064C0AF    push        ebp
 0064C0B0    push        64C13E
 0064C0B5    push        dword ptr fs:[eax]
 0064C0B8    mov         dword ptr fs:[eax],esp
 0064C0BB    cmp         byte ptr [ebp-5],0
>0064C0BF    je          0064C0EF
 0064C0C1    lea         ecx,[ebp-0C]
 0064C0C4    lea         edx,[ebp-6]
 0064C0C7    mov         eax,dword ptr [ebp-4]
 0064C0CA    mov         ebx,dword ptr [eax]
 0064C0CC    call        dword ptr [ebx+24]
 0064C0CF    lea         edx,[ebp-10]
 0064C0D2    mov         eax,dword ptr [ebp-4]
 0064C0D5    call        TReader.ReadStr
 0064C0DA    lea         edx,[ebp-14]
 0064C0DD    mov         eax,dword ptr [ebp-4]
 0064C0E0    call        TReader.ReadStr
>0064C0E5    jmp         0064C0EF
 0064C0E7    mov         eax,dword ptr [ebp-4]
 0064C0EA    call        0064C048
 0064C0EF    mov         eax,dword ptr [ebp-4]
 0064C0F2    call        TReader.EndOfList
 0064C0F7    test        al,al
>0064C0F9    je          0064C0E7
 0064C0FB    mov         eax,dword ptr [ebp-4]
 0064C0FE    call        TReader.ReadListEnd
>0064C103    jmp         0064C10F
 0064C105    mov         dl,1
 0064C107    mov         eax,dword ptr [ebp-4]
 0064C10A    call        0064C098
 0064C10F    mov         eax,dword ptr [ebp-4]
 0064C112    call        TReader.EndOfList
 0064C117    test        al,al
>0064C119    je          0064C105
 0064C11B    mov         eax,dword ptr [ebp-4]
 0064C11E    call        TReader.ReadListEnd
 0064C123    xor         eax,eax
 0064C125    pop         edx
 0064C126    pop         ecx
 0064C127    pop         ecx
 0064C128    mov         dword ptr fs:[eax],edx
 0064C12B    push        64C145
 0064C130    lea         eax,[ebp-14]
 0064C133    mov         edx,2
 0064C138    call        @LStrArrayClr
 0064C13D    ret
>0064C13E    jmp         @HandleFinally
>0064C143    jmp         0064C130
 0064C145    pop         ebx
 0064C146    mov         esp,ebp
 0064C148    pop         ebp
 0064C149    ret
end;*}

//0064C14C
{*function sub_0064C14C(?:?; ?:?):?;
begin
 0064C14C    push        ebp
 0064C14D    mov         ebp,esp
 0064C14F    add         esp,0FFFFFFE4
 0064C152    push        ebx
 0064C153    xor         ebx,ebx
 0064C155    mov         dword ptr [ebp-14],ebx
 0064C158    mov         dword ptr [ebp-0C],ecx
 0064C15B    mov         dword ptr [ebp-8],edx
 0064C15E    mov         dword ptr [ebp-4],eax
 0064C161    xor         eax,eax
 0064C163    push        ebp
 0064C164    push        64C203
 0064C169    push        dword ptr fs:[eax]
 0064C16C    mov         dword ptr fs:[eax],esp
 0064C16F    lea         eax,[ebp-14]
 0064C172    mov         edx,dword ptr [ebp-8]
 0064C175    call        @LStrLAsg
 0064C17A    xor         eax,eax
 0064C17C    mov         dword ptr [ebp-10],eax
 0064C17F    mov         eax,dword ptr [ebp-4]
 0064C182    cmp         dword ptr [eax+1C],0;TReader.FLookupRoot:TComponent
>0064C186    je          0064C199
 0064C188    mov         edx,dword ptr [ebp-14]
 0064C18B    mov         eax,dword ptr [ebp-4]
 0064C18E    mov         eax,dword ptr [eax+1C];TReader.FLookupRoot:TComponent
 0064C191    call        TComponent.FindComponent
 0064C196    mov         dword ptr [ebp-10],eax
 0064C199    cmp         dword ptr [ebp-10],0
>0064C19D    jne         0064C1ED
 0064C19F    mov         eax,dword ptr [ebp-4]
 0064C1A2    cmp         word ptr [eax+52],0;TReader.?f52:word
>0064C1A7    je          0064C1C0
 0064C1A9    mov         eax,dword ptr [ebp-0C]
 0064C1AC    push        eax
 0064C1AD    lea         eax,[ebp-10]
 0064C1B0    push        eax
 0064C1B1    mov         ebx,dword ptr [ebp-4]
 0064C1B4    mov         ecx,dword ptr [ebp-14]
 0064C1B7    mov         edx,dword ptr [ebp-4]
 0064C1BA    mov         eax,dword ptr [ebx+54];TReader.?f54:dword
 0064C1BD    call        dword ptr [ebx+50];TReader.FOnAncestorNotFound
 0064C1C0    cmp         dword ptr [ebp-10],0
>0064C1C4    jne         0064C1ED
 0064C1C6    mov         eax,dword ptr [ebp-14]
 0064C1C9    mov         dword ptr [ebp-1C],eax
 0064C1CC    mov         byte ptr [ebp-18],0B
 0064C1D0    lea         eax,[ebp-1C]
 0064C1D3    push        eax
 0064C1D4    push        0
 0064C1D6    mov         ecx,dword ptr ds:[6EA044];^gvar_00654F7C
 0064C1DC    mov         dl,1
 0064C1DE    mov         eax,[00641F14];EReadError
 0064C1E3    call        Exception.CreateResFmt;EReadError.Create
 0064C1E8    call        @RaiseExcept
 0064C1ED    xor         eax,eax
 0064C1EF    pop         edx
 0064C1F0    pop         ecx
 0064C1F1    pop         ecx
 0064C1F2    mov         dword ptr fs:[eax],edx
 0064C1F5    push        64C20A
 0064C1FA    lea         eax,[ebp-14]
 0064C1FD    call        @LStrClr
 0064C202    ret
>0064C203    jmp         @HandleFinally
>0064C208    jmp         0064C1FA
 0064C20A    mov         eax,dword ptr [ebp-10]
 0064C20D    pop         ebx
 0064C20E    mov         esp,ebp
 0064C210    pop         ebp
 0064C211    ret
end;*}

//0064C214
{*procedure sub_0064C214(?:?);
begin
 0064C214    push        ebp
 0064C215    mov         ebp,esp
 0064C217    add         esp,0FFFFFFF8
 0064C21A    push        ebx
 0064C21B    mov         dword ptr [ebp-8],edx
 0064C21E    mov         dword ptr [ebp-4],eax
 0064C221    mov         eax,dword ptr [ebp-4]
 0064C224    cmp         word ptr [eax+4A],0;TReader.?f4A:word
>0064C229    je          0064C23A
 0064C22B    mov         ecx,dword ptr [ebp-8]
 0064C22E    mov         ebx,dword ptr [ebp-4]
 0064C231    mov         edx,dword ptr [ebp-4]
 0064C234    mov         eax,dword ptr [ebx+4C];TReader.?f4C:dword
 0064C237    call        dword ptr [ebx+48];TReader.FOnReferenceName
 0064C23A    pop         ebx
 0064C23B    pop         ecx
 0064C23C    pop         ecx
 0064C23D    pop         ebp
 0064C23E    ret
end;*}

//0064C240
{*procedure sub_0064C240(?:?; ?:?);
begin
 0064C240    push        ebp
 0064C241    mov         ebp,esp
 0064C243    add         esp,0FFFFFFF4
 0064C246    push        ebx
 0064C247    mov         dword ptr [ebp-0C],ecx
 0064C24A    mov         dword ptr [ebp-8],edx
 0064C24D    mov         dword ptr [ebp-4],eax
 0064C250    mov         eax,dword ptr [ebp-4]
 0064C253    cmp         word ptr [eax+42],0;TReader.?f42:word
>0064C258    je          0064C26D
 0064C25A    mov         eax,dword ptr [ebp-0C]
 0064C25D    push        eax
 0064C25E    mov         ebx,dword ptr [ebp-4]
 0064C261    mov         ecx,dword ptr [ebp-8]
 0064C264    mov         edx,dword ptr [ebp-4]
 0064C267    mov         eax,dword ptr [ebx+44];TReader.?f44:dword
 0064C26A    call        dword ptr [ebx+40];TReader.FOnSetName
 0064C26D    mov         edx,dword ptr [ebp-0C]
 0064C270    mov         edx,dword ptr [edx]
 0064C272    mov         eax,dword ptr [ebp-8]
 0064C275    mov         ecx,dword ptr [eax]
 0064C277    call        dword ptr [ecx+18]
 0064C27A    pop         ebx
 0064C27B    mov         esp,ebp
 0064C27D    pop         ebp
 0064C27E    ret
end;*}

//0064C280
{*function sub_0064C280(?:?; ?:?):?;
begin
 0064C280    push        ebp
 0064C281    mov         ebp,esp
 0064C283    add         esp,0FFFFFFF4
 0064C286    push        ebx
 0064C287    mov         dword ptr [ebp-8],edx
 0064C28A    mov         dword ptr [ebp-4],eax
 0064C28D    mov         ecx,dword ptr [ebp-8]
 0064C290    mov         eax,dword ptr [ebp-4]
 0064C293    mov         edx,dword ptr [eax+18]
 0064C296    mov         eax,dword ptr [ebp-4]
 0064C299    call        0064A224
 0064C29E    mov         dword ptr [ebp-0C],eax
 0064C2A1    cmp         dword ptr [ebp-0C],0
>0064C2A5    jne         0064C2D2
 0064C2A7    mov         eax,dword ptr [ebp-4]
 0064C2AA    cmp         dword ptr [eax+1C],0
>0064C2AE    je          0064C2D2
 0064C2B0    mov         eax,dword ptr [ebp-4]
 0064C2B3    mov         eax,dword ptr [eax+1C]
 0064C2B6    mov         edx,dword ptr [ebp-4]
 0064C2B9    cmp         eax,dword ptr [edx+18]
>0064C2BC    je          0064C2D2
 0064C2BE    mov         ecx,dword ptr [ebp-8]
 0064C2C1    mov         eax,dword ptr [ebp-4]
 0064C2C4    mov         edx,dword ptr [eax+1C]
 0064C2C7    mov         eax,dword ptr [ebp-4]
 0064C2CA    call        0064A224
 0064C2CF    mov         dword ptr [ebp-0C],eax
 0064C2D2    mov         eax,dword ptr [ebp-4]
 0064C2D5    cmp         word ptr [eax+62],0
>0064C2DA    je          0064C2EF
 0064C2DC    lea         eax,[ebp-0C]
 0064C2DF    push        eax
 0064C2E0    mov         ebx,dword ptr [ebp-4]
 0064C2E3    mov         ecx,dword ptr [ebp-8]
 0064C2E6    mov         edx,dword ptr [ebp-4]
 0064C2E9    mov         eax,dword ptr [ebx+64]
 0064C2EC    call        dword ptr [ebx+60]
 0064C2EF    cmp         dword ptr [ebp-0C],0
>0064C2F3    je          0064C307
 0064C2F5    mov         edx,dword ptr ds:[643204];TComponent
 0064C2FB    mov         eax,dword ptr [ebp-0C]
 0064C2FE    call        TObject.InheritsFrom
 0064C303    test        al,al
>0064C305    jne         0064C30F
 0064C307    mov         eax,dword ptr [ebp-8]
 0064C30A    call        0064423C
 0064C30F    mov         eax,dword ptr [ebp-0C]
 0064C312    pop         ebx
 0064C313    mov         esp,ebp
 0064C315    pop         ebp
 0064C316    ret
end;*}

//0064C318
procedure TReader.SkipBytes(Count:Integer);
begin
{*
 0064C318    push        ebp
 0064C319    mov         ebp,esp
 0064C31B    add         esp,0FFFFFEF8
 0064C321    mov         dword ptr [ebp-8],edx
 0064C324    mov         dword ptr [ebp-4],eax
 0064C327    cmp         dword ptr [ebp-8],0
>0064C32B    jle         0064C36E
 0064C32D    cmp         dword ptr [ebp-8],100
>0064C334    jle         0064C352
 0064C336    lea         edx,[ebp-108]
 0064C33C    mov         ecx,100
 0064C341    mov         eax,dword ptr [ebp-4]
 0064C344    call        TReader.Read
 0064C349    sub         dword ptr [ebp-8],100
>0064C350    jmp         0064C368
 0064C352    lea         edx,[ebp-108]
 0064C358    mov         ecx,dword ptr [ebp-8]
 0064C35B    mov         eax,dword ptr [ebp-4]
 0064C35E    call        TReader.Read
 0064C363    xor         eax,eax
 0064C365    mov         dword ptr [ebp-8],eax
 0064C368    cmp         dword ptr [ebp-8],0
>0064C36C    jg          0064C32D
 0064C36E    mov         esp,ebp
 0064C370    pop         ebp
 0064C371    ret
*}
end;

//0064C374
{*procedure sub_0064C374(?:?; ?:?);
begin
 0064C374    push        ebp
 0064C375    mov         ebp,esp
 0064C377    add         esp,0FFFFFFE0
 0064C37A    push        ebx
 0064C37B    xor         edx,edx
 0064C37D    mov         dword ptr [ebp-1C],edx
 0064C380    mov         dword ptr [ebp-20],edx
 0064C383    mov         dword ptr [ebp-4],eax
 0064C386    xor         eax,eax
 0064C388    push        ebp
 0064C389    push        64C51D
 0064C38E    push        dword ptr fs:[eax]
 0064C391    mov         dword ptr fs:[eax],esp
 0064C394    mov         eax,dword ptr [ebp+8]
 0064C397    mov         eax,dword ptr [eax-4]
 0064C39A    mov         dl,0A
 0064C39C    call        00649DA0
 0064C3A1    mov         dl,1
 0064C3A3    mov         eax,[00642BA0];TMemoryStream
 0064C3A8    call        TObject.Create;TMemoryStream.Create
 0064C3AD    mov         dword ptr [ebp-8],eax
 0064C3B0    mov         dl,1
 0064C3B2    mov         eax,[00642BA0];TMemoryStream
 0064C3B7    call        TObject.Create;TMemoryStream.Create
 0064C3BC    mov         dword ptr [ebp-0C],eax
 0064C3BF    xor         eax,eax
 0064C3C1    push        ebp
 0064C3C2    push        64C4F8
 0064C3C7    push        dword ptr fs:[eax]
 0064C3CA    mov         dword ptr fs:[eax],esp
 0064C3CD    lea         edx,[ebp-14]
 0064C3D0    mov         eax,dword ptr [ebp+8]
 0064C3D3    mov         eax,dword ptr [eax-4]
 0064C3D6    mov         ecx,4
 0064C3DB    call        TReader.Read
 0064C3E0    mov         eax,dword ptr [ebp-14]
 0064C3E3    cdq
 0064C3E4    push        edx
 0064C3E5    push        eax
 0064C3E6    mov         eax,dword ptr [ebp-8]
 0064C3E9    call        TStream.SetSize64
 0064C3EE    mov         eax,dword ptr [ebp-8]
 0064C3F1    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0064C3F4    mov         eax,dword ptr [ebp+8]
 0064C3F7    mov         eax,dword ptr [eax-4]
 0064C3FA    mov         ecx,dword ptr [ebp-14]
 0064C3FD    call        TReader.Read
 0064C402    push        400
 0064C407    mov         ecx,dword ptr [ebp-8]
 0064C40A    mov         dl,1
 0064C40C    mov         eax,[00642F0C];TReader
 0064C411    call        TFiler.Create;TReader.Create
 0064C416    mov         dword ptr [ebp-10],eax
 0064C419    xor         eax,eax
 0064C41B    push        ebp
 0064C41C    push        64C4D3
 0064C421    push        dword ptr fs:[eax]
 0064C424    mov         dword ptr fs:[eax],esp
 0064C427    lea         edx,[ebp-1C]
 0064C42A    mov         eax,dword ptr [ebp-10]
 0064C42D    call        TReader.ReadString
 0064C432    lea         edx,[ebp-14]
 0064C435    mov         ecx,4
 0064C43A    mov         eax,dword ptr [ebp-10]
 0064C43D    call        TReader.Read
 0064C442    mov         eax,dword ptr [ebp-14]
 0064C445    cdq
 0064C446    push        edx
 0064C447    push        eax
 0064C448    mov         eax,dword ptr [ebp-0C]
 0064C44B    call        TStream.SetSize64
 0064C450    mov         eax,dword ptr [ebp-0C]
 0064C453    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0064C456    mov         ecx,dword ptr [ebp-14]
 0064C459    mov         eax,dword ptr [ebp-10]
 0064C45C    call        TReader.Read
 0064C461    lea         edx,[ebp-18]
 0064C464    mov         eax,dword ptr [ebp-1C]
 0064C467    call        00668A6C
 0064C46C    test        al,al
>0064C46E    je          0064C48B
 0064C470    lea         eax,[ebp-20]
 0064C473    call        @IntfClear
 0064C478    mov         ecx,eax
 0064C47A    mov         edx,64C52C
 0064C47F    mov         eax,dword ptr [ebp-18]
 0064C482    call        0065E924
 0064C487    test        al,al
>0064C489    jne         0064C4A2
 0064C48B    mov         ecx,dword ptr ds:[6EA0B8];^gvar_00655064
 0064C491    mov         dl,1
 0064C493    mov         eax,[00641F14];EReadError
 0064C498    call        Exception.Create;EReadError.Create
 0064C49D    call        @RaiseExcept
 0064C4A2    mov         eax,dword ptr [ebp-18]
 0064C4A5    mov         ax,word ptr [eax+4]
 0064C4A9    mov         edx,dword ptr [ebp-4]
 0064C4AC    mov         word ptr [edx],ax
 0064C4AF    mov         edx,dword ptr [ebp-4]
 0064C4B2    mov         ecx,dword ptr [ebp-0C]
 0064C4B5    mov         eax,dword ptr [ebp-20]
 0064C4B8    mov         ebx,dword ptr [eax]
 0064C4BA    call        dword ptr [ebx+0C]
 0064C4BD    xor         eax,eax
 0064C4BF    pop         edx
 0064C4C0    pop         ecx
 0064C4C1    pop         ecx
 0064C4C2    mov         dword ptr fs:[eax],edx
 0064C4C5    push        64C4DA
 0064C4CA    mov         eax,dword ptr [ebp-10]
 0064C4CD    call        TObject.Free
 0064C4D2    ret
>0064C4D3    jmp         @HandleFinally
>0064C4D8    jmp         0064C4CA
 0064C4DA    xor         eax,eax
 0064C4DC    pop         edx
 0064C4DD    pop         ecx
 0064C4DE    pop         ecx
 0064C4DF    mov         dword ptr fs:[eax],edx
 0064C4E2    push        64C4FF
 0064C4E7    mov         eax,dword ptr [ebp-0C]
 0064C4EA    call        TObject.Free
 0064C4EF    mov         eax,dword ptr [ebp-8]
 0064C4F2    call        TObject.Free
 0064C4F7    ret
>0064C4F8    jmp         @HandleFinally
>0064C4FD    jmp         0064C4E7
 0064C4FF    xor         eax,eax
 0064C501    pop         edx
 0064C502    pop         ecx
 0064C503    pop         ecx
 0064C504    mov         dword ptr fs:[eax],edx
 0064C507    push        64C524
 0064C50C    lea         eax,[ebp-20]
 0064C50F    call        @IntfClear
 0064C514    lea         eax,[ebp-1C]
 0064C517    call        @LStrClr
 0064C51C    ret
>0064C51D    jmp         @HandleFinally
>0064C522    jmp         0064C50C
 0064C524    pop         ebx
 0064C525    mov         esp,ebp
 0064C527    pop         ebp
 0064C528    ret
end;*}

//0064C53C
function TReader.ReadVariant:Variant;
begin
{*
 0064C53C    push        ebp
 0064C53D    mov         ebp,esp
 0064C53F    xor         ecx,ecx
 0064C541    push        ecx
 0064C542    push        ecx
 0064C543    push        ecx
 0064C544    push        ecx
 0064C545    push        ecx
 0064C546    push        ecx
 0064C547    push        ecx
 0064C548    push        ecx
 0064C549    mov         dword ptr [ebp-8],edx
 0064C54C    mov         dword ptr [ebp-4],eax
 0064C54F    xor         eax,eax
 0064C551    push        ebp
 0064C552    push        64C748
 0064C557    push        dword ptr fs:[eax]
 0064C55A    mov         dword ptr fs:[eax],esp
 0064C55D    mov         eax,dword ptr [ebp-8]
 0064C560    call        @VarClear
 0064C565    mov         eax,dword ptr [ebp-4]
 0064C568    call        TReader.NextValue
 0064C56D    and         eax,7F
 0064C570    cmp         eax,14
>0064C573    ja          0064C70B
 0064C579    jmp         dword ptr [eax*4+64C580]
 0064C579    dd          0064C5D4
 0064C579    dd          0064C70B
 0064C579    dd          0064C5F1
 0064C579    dd          0064C610
 0064C579    dd          0064C62C
 0064C579    dd          0064C645
 0064C579    dd          0064C699
 0064C579    dd          0064C70B
 0064C579    dd          0064C6C9
 0064C579    dd          0064C6C9
 0064C579    dd          0064C6E0
 0064C579    dd          0064C70B
 0064C579    dd          0064C699
 0064C579    dd          0064C5D4
 0064C579    dd          0064C70B
 0064C579    dd          0064C65A
 0064C579    dd          0064C66F
 0064C579    dd          0064C684
 0064C579    dd          0064C6B1
 0064C579    dd          0064C6F7
 0064C579    dd          0064C6B1
 0064C5D4    mov         eax,dword ptr [ebp-4]
 0064C5D7    call        TReader.ReadValue
 0064C5DC    cmp         al,0D
>0064C5DE    je          0064C722
 0064C5E4    mov         eax,dword ptr [ebp-8]
 0064C5E7    call        00668B68
>0064C5EC    jmp         0064C722
 0064C5F1    mov         eax,dword ptr [ebp-4]
 0064C5F4    call        TReader.ReadInteger
 0064C5F9    mov         edx,eax
 0064C5FB    and         edx,0FF
 0064C601    mov         eax,dword ptr [ebp-8]
 0064C604    mov         cl,1
 0064C606    call        0066D574
>0064C60B    jmp         0064C722
 0064C610    mov         eax,dword ptr [ebp-4]
 0064C613    call        TReader.ReadInteger
 0064C618    mov         edx,eax
 0064C61A    movsx       edx,dx
 0064C61D    mov         eax,dword ptr [ebp-8]
 0064C620    mov         cl,0FE
 0064C622    call        0066D574
>0064C627    jmp         0064C722
 0064C62C    mov         eax,dword ptr [ebp-4]
 0064C62F    call        TReader.ReadInteger
 0064C634    mov         edx,eax
 0064C636    mov         eax,dword ptr [ebp-8]
 0064C639    mov         cl,0FC
 0064C63B    call        0066D574
>0064C640    jmp         0064C722
 0064C645    mov         eax,dword ptr [ebp-4]
 0064C648    call        0064AB30
 0064C64D    mov         eax,dword ptr [ebp-8]
 0064C650    call        0066D598
>0064C655    jmp         0064C722
 0064C65A    mov         eax,dword ptr [ebp-4]
 0064C65D    call        0064AB78
 0064C662    mov         eax,dword ptr [ebp-8]
 0064C665    call        0066D598
>0064C66A    jmp         0064C722
 0064C66F    mov         eax,dword ptr [ebp-4]
 0064C672    call        0064ABC0
 0064C677    mov         eax,dword ptr [ebp-8]
 0064C67A    call        0066D5A8
>0064C67F    jmp         0064C722
 0064C684    mov         eax,dword ptr [ebp-4]
 0064C687    call        0064AC10
 0064C68C    mov         eax,dword ptr [ebp-8]
 0064C68F    call        0066D5A0
>0064C694    jmp         0064C722
 0064C699    lea         edx,[ebp-0C]
 0064C69C    mov         eax,dword ptr [ebp-4]
 0064C69F    call        TReader.ReadString
 0064C6A4    mov         edx,dword ptr [ebp-0C]
 0064C6A7    mov         eax,dword ptr [ebp-8]
 0064C6AA    call        0066D5B0
>0064C6AF    jmp         0064C722
 0064C6B1    lea         edx,[ebp-10]
 0064C6B4    mov         eax,dword ptr [ebp-4]
 0064C6B7    call        0064BC3C
 0064C6BC    mov         edx,dword ptr [ebp-10]
 0064C6BF    mov         eax,dword ptr [ebp-8]
 0064C6C2    call        0066D5B8
>0064C6C7    jmp         0064C722
 0064C6C9    mov         eax,dword ptr [ebp-4]
 0064C6CC    call        TReader.ReadValue
 0064C6D1    cmp         al,9
 0064C6D3    sete        dl
 0064C6D6    mov         eax,dword ptr [ebp-8]
 0064C6D9    call        0066D590
>0064C6DE    jmp         0064C722
 0064C6E0    push        ebp
 0064C6E1    lea         eax,[ebp-20]
 0064C6E4    call        0064C374
 0064C6E9    pop         ecx
 0064C6EA    lea         edx,[ebp-20]
 0064C6ED    mov         eax,dword ptr [ebp-8]
 0064C6F0    call        @VarCopy
>0064C6F5    jmp         0064C722
 0064C6F7    mov         eax,dword ptr [ebp-4]
 0064C6FA    call        0064ADD4
 0064C6FF    push        edx
 0064C700    push        eax
 0064C701    mov         eax,dword ptr [ebp-8]
 0064C704    call        @VarFromInt64
>0064C709    jmp         0064C722
 0064C70B    mov         ecx,dword ptr ds:[6EA0B8];^gvar_00655064
 0064C711    mov         dl,1
 0064C713    mov         eax,[00641F14];EReadError
 0064C718    call        Exception.Create
 0064C71D    call        @RaiseExcept
 0064C722    xor         eax,eax
 0064C724    pop         edx
 0064C725    pop         ecx
 0064C726    pop         ecx
 0064C727    mov         dword ptr fs:[eax],edx
 0064C72A    push        64C74F
 0064C72F    lea         eax,[ebp-20]
 0064C732    call        @VarClr
 0064C737    lea         eax,[ebp-10]
 0064C73A    call        @WStrClr
 0064C73F    lea         eax,[ebp-0C]
 0064C742    call        @LStrClr
 0064C747    ret
>0064C748    jmp         @HandleFinally
>0064C74D    jmp         0064C72F
 0064C74F    mov         esp,ebp
 0064C751    pop         ebp
 0064C752    ret
*}
end;

//0064C754
destructor TWriter.Destroy;
begin
{*
 0064C754    push        ebp
 0064C755    mov         ebp,esp
 0064C757    add         esp,0FFFFFFF8
 0064C75A    call        @BeforeDestruction
 0064C75F    mov         byte ptr [ebp-5],dl
 0064C762    mov         dword ptr [ebp-4],eax
 0064C765    mov         eax,dword ptr [ebp-4]
 0064C768    call        TWriter.WriteBuffer
 0064C76D    mov         dl,byte ptr [ebp-5]
 0064C770    and         dl,0FC
 0064C773    mov         eax,dword ptr [ebp-4]
 0064C776    call        TFiler.Destroy
 0064C77B    cmp         byte ptr [ebp-5],0
>0064C77F    jle         0064C789
 0064C781    mov         eax,dword ptr [ebp-4]
 0064C784    call        @ClassDestroy
 0064C789    pop         ecx
 0064C78A    pop         ecx
 0064C78B    pop         ebp
 0064C78C    ret
*}
end;

//0064C7B0
{*procedure sub_0064C7B0(?:?; ?:?; ?:?; ?:?);
begin
 0064C7B0    push        ebp
 0064C7B1    mov         ebp,esp
 0064C7B3    add         esp,0FFFFFFF4
 0064C7B6    mov         byte ptr [ebp-9],cl
 0064C7B9    mov         dword ptr [ebp-8],edx
 0064C7BC    mov         dword ptr [ebp-4],eax
 0064C7BF    cmp         byte ptr [ebp-9],0
>0064C7C3    je          0064C7E0
 0064C7C5    cmp         word ptr [ebp+0A],0
>0064C7CA    je          0064C7E0
 0064C7CC    mov         edx,dword ptr [ebp-8]
 0064C7CF    mov         eax,dword ptr [ebp-4]
 0064C7D2    call        TWriter.WritePropName
 0064C7D7    mov         edx,dword ptr [ebp-4]
 0064C7DA    mov         eax,dword ptr [ebp+0C]
 0064C7DD    call        dword ptr [ebp+8]
 0064C7E0    mov         esp,ebp
 0064C7E2    pop         ebp
 0064C7E3    ret         10
end;*}

//0064C7E8
{*procedure sub_0064C7E8(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0064C7E8    push        ebp
 0064C7E9    mov         ebp,esp
 0064C7EB    add         esp,0FFFFFFF4
 0064C7EE    mov         byte ptr [ebp-9],cl
 0064C7F1    mov         dword ptr [ebp-8],edx
 0064C7F4    mov         dword ptr [ebp-4],eax
 0064C7F7    cmp         byte ptr [ebp-9],0
>0064C7FB    je          0064C81D
 0064C7FD    cmp         word ptr [ebp+0A],0
>0064C802    je          0064C81D
 0064C804    mov         edx,dword ptr [ebp-8]
 0064C807    mov         eax,dword ptr [ebp-4]
 0064C80A    call        TWriter.WritePropName
 0064C80F    push        dword ptr [ebp+0C]
 0064C812    push        dword ptr [ebp+8]
 0064C815    mov         eax,dword ptr [ebp-4]
 0064C818    call        0064C928
 0064C81D    mov         esp,ebp
 0064C81F    pop         ebp
 0064C820    ret         10
end;*}

//0064C824
{*function sub_0064C824(?:TWriter):?;
begin
 0064C824    push        ebp
 0064C825    mov         ebp,esp
 0064C827    add         esp,0FFFFFFF8
 0064C82A    mov         dword ptr [ebp-4],eax
 0064C82D    mov         eax,dword ptr [ebp-4]
 0064C830    mov         eax,dword ptr [eax+4]
 0064C833    call        TStream.GetPosition
 0064C838    mov         edx,dword ptr [ebp-4]
 0064C83B    add         eax,dword ptr [edx+10]
 0064C83E    mov         dword ptr [ebp-8],eax
 0064C841    mov         eax,dword ptr [ebp-8]
 0064C844    pop         ecx
 0064C845    pop         ecx
 0064C846    pop         ebp
 0064C847    ret
end;*}

//0064C848
procedure sub_0064C848;
begin
{*
 0064C848    push        ebp
 0064C849    mov         ebp,esp
 0064C84B    push        ecx
 0064C84C    mov         dword ptr [ebp-4],eax
 0064C84F    mov         eax,dword ptr [ebp-4]
 0064C852    call        TWriter.WriteBuffer
 0064C857    pop         ecx
 0064C858    pop         ebp
 0064C859    ret
*}
end;

//0064C85C
{*procedure sub_0064C85C(?:TWriter; ?:?);
begin
 0064C85C    push        ebp
 0064C85D    mov         ebp,esp
 0064C85F    add         esp,0FFFFFFF4
 0064C862    mov         dword ptr [ebp-8],edx
 0064C865    mov         dword ptr [ebp-4],eax
 0064C868    mov         eax,dword ptr [ebp-4]
 0064C86B    mov         eax,dword ptr [eax+4]
 0064C86E    call        TStream.GetPosition
 0064C873    mov         dword ptr [ebp-0C],eax
 0064C876    mov         eax,dword ptr [ebp-8]
 0064C879    cmp         eax,dword ptr [ebp-0C]
>0064C87C    jl          0064C88C
 0064C87E    mov         eax,dword ptr [ebp-0C]
 0064C881    mov         edx,dword ptr [ebp-4]
 0064C884    add         eax,dword ptr [edx+10]
 0064C887    cmp         eax,dword ptr [ebp-8]
>0064C88A    jge         0064C8A7
 0064C88C    mov         eax,dword ptr [ebp-4]
 0064C88F    call        TWriter.WriteBuffer
 0064C894    mov         eax,dword ptr [ebp-8]
 0064C897    cdq
 0064C898    push        edx
 0064C899    push        eax
 0064C89A    mov         eax,dword ptr [ebp-4]
 0064C89D    mov         eax,dword ptr [eax+4]
 0064C8A0    call        TStream.SetPosition
>0064C8A5    jmp         0064C8B3
 0064C8A7    mov         eax,dword ptr [ebp-8]
 0064C8AA    sub         eax,dword ptr [ebp-0C]
 0064C8AD    mov         edx,dword ptr [ebp-4]
 0064C8B0    mov         dword ptr [edx+10],eax
 0064C8B3    mov         esp,ebp
 0064C8B5    pop         ebp
 0064C8B6    ret
end;*}

//0064C8B8
{*procedure sub_0064C8B8(?:?);
begin
 0064C8B8    push        ebp
 0064C8B9    mov         ebp,esp
 0064C8BB    add         esp,0FFFFFFF8
 0064C8BE    mov         dword ptr [ebp-8],edx
 0064C8C1    mov         dword ptr [ebp-4],eax
 0064C8C4    mov         edx,dword ptr [ebp-8]
 0064C8C7    mov         eax,dword ptr [ebp-4]
 0064C8CA    call        00649590
 0064C8CF    mov         eax,dword ptr [ebp-8]
 0064C8D2    mov         edx,dword ptr [ebp-4]
 0064C8D5    mov         dword ptr [edx+1C],eax;TWriter.FLookupRoot:TComponent
 0064C8D8    pop         ecx
 0064C8D9    pop         ecx
 0064C8DA    pop         ebp
 0064C8DB    ret
end;*}

//0064C8DC
procedure TWriter.Write(const Buf:void ; Count:Longint);
begin
{*
 0064C8DC    push        esi
 0064C8DD    push        edi
 0064C8DE    push        ebx
 0064C8DF    mov         esi,edx
 0064C8E1    mov         ebx,ecx
 0064C8E3    mov         edi,eax
>0064C8E5    jmp         0064C91D
 0064C8E7    mov         ecx,dword ptr [edi+0C]
 0064C8EA    sub         ecx,dword ptr [edi+10]
>0064C8ED    ja          0064C8F9
 0064C8EF    mov         eax,edi
 0064C8F1    call        TWriter.WriteBuffer
 0064C8F6    mov         ecx,dword ptr [edi+0C]
 0064C8F9    cmp         ecx,ebx
>0064C8FB    jb          0064C8FF
 0064C8FD    mov         ecx,ebx
 0064C8FF    sub         ebx,ecx
 0064C901    push        edi
 0064C902    mov         eax,dword ptr [edi+8]
 0064C905    add         eax,dword ptr [edi+10]
 0064C908    add         dword ptr [edi+10],ecx
 0064C90B    mov         edi,eax
 0064C90D    mov         edx,ecx
 0064C90F    shr         ecx,2
 0064C912    cld
 0064C913    rep movs    dword ptr [edi],dword ptr [esi]
 0064C915    mov         ecx,edx
 0064C917    and         ecx,3
 0064C91A    rep movs    byte ptr [edi],byte ptr [esi]
 0064C91C    pop         edi
 0064C91D    or          ebx,ebx
>0064C91F    jne         0064C8E7
 0064C921    pop         ebx
 0064C922    pop         edi
 0064C923    pop         esi
 0064C924    ret
*}
end;

//0064C928
{*procedure sub_0064C928(?:TWriter; ?:?);
begin
 0064C928    push        ebp
 0064C929    mov         ebp,esp
 0064C92B    add         esp,0FFFFFFF4
 0064C92E    mov         dword ptr [ebp-4],eax
 0064C931    mov         dl,1
 0064C933    mov         eax,[00642BA0];TMemoryStream
 0064C938    call        TObject.Create;TMemoryStream.Create
 0064C93D    mov         dword ptr [ebp-8],eax
 0064C940    xor         eax,eax
 0064C942    push        ebp
 0064C943    push        64C9A3
 0064C948    push        dword ptr fs:[eax]
 0064C94B    mov         dword ptr fs:[eax],esp
 0064C94E    mov         edx,dword ptr [ebp-8]
 0064C951    mov         eax,dword ptr [ebp+0C]
 0064C954    call        dword ptr [ebp+8]
 0064C957    mov         dl,0A
 0064C959    mov         eax,dword ptr [ebp-4]
 0064C95C    call        TWriter.WriteValue
 0064C961    mov         eax,dword ptr [ebp-8]
 0064C964    call        TStream.GetSize
 0064C969    mov         dword ptr [ebp-0C],eax
 0064C96C    lea         edx,[ebp-0C]
 0064C96F    mov         ecx,4
 0064C974    mov         eax,dword ptr [ebp-4]
 0064C977    call        TWriter.Write
 0064C97C    mov         eax,dword ptr [ebp-8]
 0064C97F    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0064C982    mov         ecx,dword ptr [ebp-0C]
 0064C985    mov         eax,dword ptr [ebp-4]
 0064C988    call        TWriter.Write
 0064C98D    xor         eax,eax
 0064C98F    pop         edx
 0064C990    pop         ecx
 0064C991    pop         ecx
 0064C992    mov         dword ptr fs:[eax],edx
 0064C995    push        64C9AA
 0064C99A    mov         eax,dword ptr [ebp-8]
 0064C99D    call        TObject.Free
 0064C9A2    ret
>0064C9A3    jmp         @HandleFinally
>0064C9A8    jmp         0064C99A
 0064C9AA    mov         esp,ebp
 0064C9AC    pop         ebp
 0064C9AD    ret         8
end;*}

//0064C9B0
procedure TWriter.WriteBuffer;
begin
{*
 0064C9B0    push        ebp
 0064C9B1    mov         ebp,esp
 0064C9B3    push        ecx
 0064C9B4    mov         dword ptr [ebp-4],eax
 0064C9B7    mov         eax,dword ptr [ebp-4]
 0064C9BA    mov         edx,dword ptr [eax+8]
 0064C9BD    mov         eax,dword ptr [ebp-4]
 0064C9C0    mov         ecx,dword ptr [eax+10]
 0064C9C3    mov         eax,dword ptr [ebp-4]
 0064C9C6    mov         eax,dword ptr [eax+4]
 0064C9C9    call        TStream.WriteBuffer
 0064C9CE    mov         eax,dword ptr [ebp-4]
 0064C9D1    xor         edx,edx
 0064C9D3    mov         dword ptr [eax+10],edx
 0064C9D6    pop         ecx
 0064C9D7    pop         ebp
 0064C9D8    ret
*}
end;

//0064C9DC
{*procedure sub_0064C9DC(?:?; ?:?);
begin
 0064C9DC    push        ebp
 0064C9DD    mov         ebp,esp
 0064C9DF    add         esp,0FFFFFFF8
 0064C9E2    mov         byte ptr [ebp-5],dl
 0064C9E5    mov         dword ptr [ebp-4],eax
 0064C9E8    cmp         byte ptr [ebp-5],0
>0064C9EC    je          0064C9FA
 0064C9EE    mov         dl,9
 0064C9F0    mov         eax,dword ptr [ebp-4]
 0064C9F3    call        TWriter.WriteValue
>0064C9F8    jmp         0064CA04
 0064C9FA    mov         dl,8
 0064C9FC    mov         eax,dword ptr [ebp-4]
 0064C9FF    call        TWriter.WriteValue
 0064CA04    pop         ecx
 0064CA05    pop         ecx
 0064CA06    pop         ebp
 0064CA07    ret
end;*}

//0064CA08
procedure TWriter.WriteChar(Value:Char);
begin
{*
 0064CA08    push        ebp
 0064CA09    mov         ebp,esp
 0064CA0B    add         esp,0FFFFFFF4
 0064CA0E    xor         ecx,ecx
 0064CA10    mov         dword ptr [ebp-0C],ecx
 0064CA13    mov         byte ptr [ebp-5],dl
 0064CA16    mov         dword ptr [ebp-4],eax
 0064CA19    xor         eax,eax
 0064CA1B    push        ebp
 0064CA1C    push        64CA53
 0064CA21    push        dword ptr fs:[eax]
 0064CA24    mov         dword ptr fs:[eax],esp
 0064CA27    lea         eax,[ebp-0C]
 0064CA2A    mov         dl,byte ptr [ebp-5]
 0064CA2D    call        @LStrFromChar
 0064CA32    mov         edx,dword ptr [ebp-0C]
 0064CA35    mov         eax,dword ptr [ebp-4]
 0064CA38    call        TWriter.WriteString
 0064CA3D    xor         eax,eax
 0064CA3F    pop         edx
 0064CA40    pop         ecx
 0064CA41    pop         ecx
 0064CA42    mov         dword ptr fs:[eax],edx
 0064CA45    push        64CA5A
 0064CA4A    lea         eax,[ebp-0C]
 0064CA4D    call        @LStrClr
 0064CA52    ret
>0064CA53    jmp         @HandleFinally
>0064CA58    jmp         0064CA4A
 0064CA5A    mov         esp,ebp
 0064CA5C    pop         ebp
 0064CA5D    ret
*}
end;

//0064CA60
procedure TWriter.WriteCollection(Value:TCollection);
begin
{*
 0064CA60    push        ebp
 0064CA61    mov         ebp,esp
 0064CA63    add         esp,0FFFFFFEC
 0064CA66    mov         dword ptr [ebp-8],edx
 0064CA69    mov         dword ptr [ebp-4],eax
 0064CA6C    mov         eax,dword ptr [ebp-4]
 0064CA6F    mov         eax,dword ptr [eax+20]
 0064CA72    mov         dword ptr [ebp-10],eax
 0064CA75    mov         eax,dword ptr [ebp-4]
 0064CA78    xor         edx,edx
 0064CA7A    mov         dword ptr [eax+20],edx
 0064CA7D    xor         eax,eax
 0064CA7F    push        ebp
 0064CA80    push        64CAFF
 0064CA85    push        dword ptr fs:[eax]
 0064CA88    mov         dword ptr fs:[eax],esp
 0064CA8B    mov         dl,0E
 0064CA8D    mov         eax,dword ptr [ebp-4]
 0064CA90    call        TWriter.WriteValue
 0064CA95    cmp         dword ptr [ebp-8],0
>0064CA99    je          0064CAE0
 0064CA9B    mov         eax,dword ptr [ebp-8]
 0064CA9E    call        00646794
 0064CAA3    dec         eax
 0064CAA4    test        eax,eax
>0064CAA6    jl          0064CAE0
 0064CAA8    inc         eax
 0064CAA9    mov         dword ptr [ebp-14],eax
 0064CAAC    mov         dword ptr [ebp-0C],0
 0064CAB3    mov         eax,dword ptr [ebp-4]
 0064CAB6    call        TWriter.WriteListBegin
 0064CABB    mov         edx,dword ptr [ebp-0C]
 0064CABE    mov         eax,dword ptr [ebp-8]
 0064CAC1    call        006467B0
 0064CAC6    mov         edx,eax
 0064CAC8    mov         eax,dword ptr [ebp-4]
 0064CACB    call        TWriter.WriteProperties
 0064CAD0    mov         eax,dword ptr [ebp-4]
 0064CAD3    call        TWriter.WriteListEnd
 0064CAD8    inc         dword ptr [ebp-0C]
 0064CADB    dec         dword ptr [ebp-14]
>0064CADE    jne         0064CAB3
 0064CAE0    mov         eax,dword ptr [ebp-4]
 0064CAE3    call        TWriter.WriteListEnd
 0064CAE8    xor         eax,eax
 0064CAEA    pop         edx
 0064CAEB    pop         ecx
 0064CAEC    pop         ecx
 0064CAED    mov         dword ptr fs:[eax],edx
 0064CAF0    push        64CB06
 0064CAF5    mov         eax,dword ptr [ebp-4]
 0064CAF8    mov         edx,dword ptr [ebp-10]
 0064CAFB    mov         dword ptr [eax+20],edx
 0064CAFE    ret
>0064CAFF    jmp         @HandleFinally
>0064CB04    jmp         0064CAF5
 0064CB06    mov         esp,ebp
 0064CB08    pop         ebp
 0064CB09    ret
*}
end;

//0064CB0C
{*function sub_0064CB0C(?:?; ?:?):?;
begin
 0064CB0C    push        ebp
 0064CB0D    mov         ebp,esp
 0064CB0F    add         esp,0FFFFFFF0
 0064CB12    mov         dword ptr [ebp-4],eax
 0064CB15    mov         eax,dword ptr [ebp+8]
 0064CB18    mov         eax,dword ptr [eax-4]
 0064CB1B    mov         eax,dword ptr [eax+30]
 0064CB1E    mov         eax,dword ptr [eax+8]
 0064CB21    dec         eax
 0064CB22    test        eax,eax
>0064CB24    jl          0064CB5F
 0064CB26    inc         eax
 0064CB27    mov         dword ptr [ebp-10],eax
 0064CB2A    mov         dword ptr [ebp-0C],0
 0064CB31    mov         eax,dword ptr [ebp+8]
 0064CB34    mov         eax,dword ptr [eax-4]
 0064CB37    mov         eax,dword ptr [eax+30]
 0064CB3A    mov         edx,dword ptr [ebp-0C]
 0064CB3D    call        TList.Get
 0064CB42    mov         dword ptr [ebp-8],eax
 0064CB45    mov         eax,dword ptr [ebp-8]
 0064CB48    mov         eax,dword ptr [eax+8]
 0064CB4B    mov         edx,dword ptr [ebp-4]
 0064CB4E    call        SameText
 0064CB53    test        al,al
>0064CB55    jne         0064CB64
 0064CB57    inc         dword ptr [ebp-0C]
 0064CB5A    dec         dword ptr [ebp-10]
>0064CB5D    jne         0064CB31
 0064CB5F    xor         eax,eax
 0064CB61    mov         dword ptr [ebp-8],eax
 0064CB64    mov         eax,dword ptr [ebp-8]
 0064CB67    mov         esp,ebp
 0064CB69    pop         ebp
 0064CB6A    ret
end;*}

//0064CB6C
{*procedure sub_0064CB6C(?:TWriter; ?:?);
begin
 0064CB6C    push        ebp
 0064CB6D    mov         ebp,esp
 0064CB6F    add         esp,0FFFFFFEC
 0064CB72    push        ebx
 0064CB73    mov         dword ptr [ebp-8],edx
 0064CB76    mov         dword ptr [ebp-4],eax
 0064CB79    mov         eax,dword ptr [ebp-4]
 0064CB7C    mov         eax,dword ptr [eax+20]
 0064CB7F    mov         dword ptr [ebp-0C],eax
 0064CB82    mov         eax,dword ptr [ebp-4]
 0064CB85    mov         eax,dword ptr [eax+28]
 0064CB88    mov         dword ptr [ebp-10],eax
 0064CB8B    xor         eax,eax
 0064CB8D    push        ebp
 0064CB8E    push        64CC4B
 0064CB93    push        dword ptr fs:[eax]
 0064CB96    mov         dword ptr fs:[eax],esp
 0064CB99    mov         eax,dword ptr [ebp-8]
 0064CB9C    or          word ptr [eax+1C],4
 0064CBA1    mov         eax,dword ptr [ebp-4]
 0064CBA4    cmp         dword ptr [eax+30],0
>0064CBA8    je          0064CBBD
 0064CBAA    push        ebp
 0064CBAB    mov         eax,dword ptr [ebp-8]
 0064CBAE    mov         eax,dword ptr [eax+8]
 0064CBB1    call        0064CB0C
 0064CBB6    pop         ecx
 0064CBB7    mov         edx,dword ptr [ebp-4]
 0064CBBA    mov         dword ptr [edx+20],eax
 0064CBBD    mov         eax,dword ptr [ebp-4]
 0064CBC0    cmp         word ptr [eax+42],0
>0064CBC5    je          0064CC18
 0064CBC7    mov         eax,dword ptr [ebp-4]
 0064CBCA    cmp         dword ptr [eax+20],0
>0064CBCE    je          0064CBE5
 0064CBD0    mov         eax,dword ptr [ebp-4]
 0064CBD3    mov         eax,dword ptr [eax+20]
 0064CBD6    mov         edx,dword ptr ds:[643204];TComponent
 0064CBDC    call        @IsClass
 0064CBE1    test        al,al
>0064CBE3    je          0064CC18
 0064CBE5    mov         eax,dword ptr [ebp-4]
 0064CBE8    mov         eax,dword ptr [eax+20]
 0064CBEB    mov         dword ptr [ebp-14],eax
 0064CBEE    mov         eax,dword ptr [ebp-8]
 0064CBF1    mov         eax,dword ptr [eax+8]
 0064CBF4    push        eax
 0064CBF5    lea         eax,[ebp-14]
 0064CBF8    push        eax
 0064CBF9    mov         eax,dword ptr [ebp-4]
 0064CBFC    add         eax,28
 0064CBFF    push        eax
 0064CC00    mov         ebx,dword ptr [ebp-4]
 0064CC03    mov         ecx,dword ptr [ebp-8]
 0064CC06    mov         edx,dword ptr [ebp-4]
 0064CC09    mov         eax,dword ptr [ebx+44]
 0064CC0C    call        dword ptr [ebx+40]
 0064CC0F    mov         eax,dword ptr [ebp-4]
 0064CC12    mov         edx,dword ptr [ebp-14]
 0064CC15    mov         dword ptr [eax+20],edx
 0064CC18    mov         edx,dword ptr [ebp-4]
 0064CC1B    mov         eax,dword ptr [ebp-8]
 0064CC1E    mov         ecx,dword ptr [eax]
 0064CC20    call        dword ptr [ecx+24]
 0064CC23    mov         eax,dword ptr [ebp-8]
 0064CC26    and         word ptr [eax+1C],0FFFFFFFB
 0064CC2B    xor         eax,eax
 0064CC2D    pop         edx
 0064CC2E    pop         ecx
 0064CC2F    pop         ecx
 0064CC30    mov         dword ptr fs:[eax],edx
 0064CC33    push        64CC52
 0064CC38    mov         eax,dword ptr [ebp-4]
 0064CC3B    mov         edx,dword ptr [ebp-0C]
 0064CC3E    mov         dword ptr [eax+20],edx
 0064CC41    mov         eax,dword ptr [ebp-4]
 0064CC44    mov         edx,dword ptr [ebp-10]
 0064CC47    mov         dword ptr [eax+28],edx
 0064CC4A    ret
>0064CC4B    jmp         @HandleFinally
>0064CC50    jmp         0064CC38
 0064CC52    pop         ebx
 0064CC53    mov         esp,ebp
 0064CC55    pop         ebp
 0064CC56    ret
end;*}

//0064CC58
{*procedure sub_0064CC58(?:?);
begin
 0064CC58    push        ebp
 0064CC59    mov         ebp,esp
 0064CC5B    add         esp,0FFFFFEC8
 0064CC61    push        ebx
 0064CC62    push        esi
 0064CC63    xor         ecx,ecx
 0064CC65    mov         dword ptr [ebp-138],ecx
 0064CC6B    mov         dword ptr [ebp-12C],ecx
 0064CC71    mov         dword ptr [ebp-130],ecx
 0064CC77    mov         dword ptr [ebp-134],ecx
 0064CC7D    mov         dword ptr [ebp-8],edx
 0064CC80    mov         dword ptr [ebp-4],eax
 0064CC83    xor         eax,eax
 0064CC85    push        ebp
 0064CC86    push        64D04B
 0064CC8B    push        dword ptr fs:[eax]
 0064CC8E    mov         dword ptr fs:[eax],esp
 0064CC91    lea         edx,[ebp-128]
 0064CC97    mov         eax,dword ptr [ebp-8]
 0064CC9A    mov         eax,dword ptr [eax]
 0064CC9C    call        TObject.ClassName
 0064CCA1    xor         ebx,ebx
 0064CCA3    mov         bl,byte ptr [ebp-128]
 0064CCA9    mov         eax,dword ptr [ebp-8]
 0064CCAC    mov         eax,dword ptr [eax+8]
 0064CCAF    call        @LStrLen
 0064CCB4    add         ebx,eax
 0064CCB6    inc         ebx
 0064CCB7    add         ebx,5
 0064CCBA    add         ebx,3
 0064CCBD    mov         eax,dword ptr [ebp-4]
 0064CCC0    mov         eax,dword ptr [eax+0C];TWriter.FBufSize:Integer
 0064CCC3    mov         edx,dword ptr [ebp-4]
 0064CCC6    sub         eax,dword ptr [edx+10]
 0064CCC9    cmp         ebx,eax
>0064CCCB    jle         0064CCD5
 0064CCCD    mov         eax,dword ptr [ebp-4]
 0064CCD0    call        TWriter.WriteBuffer
 0064CCD5    mov         eax,dword ptr [ebp-4]
 0064CCD8    call        0064C824
 0064CCDD    mov         dword ptr [ebp-0C],eax
 0064CCE0    mov         al,[0064D058];0x0 gvar_0064D058
 0064CCE5    mov         byte ptr [ebp-25],al
 0064CCE8    mov         eax,dword ptr [ebp-8]
 0064CCEB    test        byte ptr [eax+1D],2
>0064CCEF    je          0064CD18
 0064CCF1    mov         eax,dword ptr [ebp-4]
 0064CCF4    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>0064CCF8    je          0064CD12
 0064CCFA    mov         eax,dword ptr [ebp-8]
 0064CCFD    test        byte ptr [eax+1C],20
>0064CD01    je          0064CD12
 0064CD03    mov         eax,dword ptr [ebp-4]
 0064CD06    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList
>0064CD0A    je          0064CD12
 0064CD0C    or          byte ptr [ebp-25],1
>0064CD10    jmp         0064CD25
 0064CD12    or          byte ptr [ebp-25],4
>0064CD16    jmp         0064CD25
 0064CD18    mov         eax,dword ptr [ebp-4]
 0064CD1B    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>0064CD1F    je          0064CD25
 0064CD21    or          byte ptr [ebp-25],1
 0064CD25    mov         eax,dword ptr [ebp-4]
 0064CD28    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList
>0064CD2C    je          0064CD65
 0064CD2E    mov         eax,dword ptr [ebp-4]
 0064CD31    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 0064CD34    mov         edx,dword ptr [ebp-4]
 0064CD37    mov         edx,dword ptr [edx+30];TWriter.FAncestorList:TList
 0064CD3A    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>0064CD3D    jge         0064CD65
 0064CD3F    mov         eax,dword ptr [ebp-4]
 0064CD42    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>0064CD46    je          0064CD61
 0064CD48    mov         eax,dword ptr [ebp-4]
 0064CD4B    mov         edx,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 0064CD4E    mov         eax,dword ptr [ebp-4]
 0064CD51    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList
 0064CD54    call        TList.Get
 0064CD59    mov         edx,dword ptr [ebp-4]
 0064CD5C    cmp         eax,dword ptr [edx+20];TWriter.FAncestor:TPersistent
>0064CD5F    je          0064CD65
 0064CD61    or          byte ptr [ebp-25],2
 0064CD65    mov         eax,dword ptr [ebp-4]
 0064CD68    mov         ecx,dword ptr [eax+38];TWriter.FChildPos:Integer
 0064CD6B    mov         dl,byte ptr [ebp-25]
 0064CD6E    mov         eax,dword ptr [ebp-4]
 0064CD71    call        0064D334
 0064CD76    mov         eax,dword ptr [ebp-4]
 0064CD79    cmp         byte ptr [eax+48],0;TWriter.FUseQualifiedNames:Boolean
>0064CD7D    je          0064CDF1
 0064CD7F    mov         eax,dword ptr [ebp-8]
 0064CD82    call        TObject.ClassType
 0064CD87    call        0066BB00
 0064CD8C    call        GetTypeData
 0064CD91    lea         edx,[eax+0A]
 0064CD94    lea         eax,[ebp-130]
 0064CD9A    call        @LStrFromString
 0064CD9F    push        dword ptr [ebp-130]
 0064CDA5    push        64D064;'.'
 0064CDAA    lea         edx,[ebp-128]
 0064CDB0    mov         eax,dword ptr [ebp-8]
 0064CDB3    mov         eax,dword ptr [eax]
 0064CDB5    call        TObject.ClassName
 0064CDBA    lea         edx,[ebp-128]
 0064CDC0    lea         eax,[ebp-134]
 0064CDC6    call        @LStrFromString
 0064CDCB    push        dword ptr [ebp-134]
 0064CDD1    lea         eax,[ebp-12C]
 0064CDD7    mov         edx,3
 0064CDDC    call        @LStrCatN
 0064CDE1    mov         edx,dword ptr [ebp-12C]
 0064CDE7    mov         eax,dword ptr [ebp-4]
 0064CDEA    call        0064E8C4
>0064CDEF    jmp         0064CE20
 0064CDF1    lea         edx,[ebp-128]
 0064CDF7    mov         eax,dword ptr [ebp-8]
 0064CDFA    mov         eax,dword ptr [eax]
 0064CDFC    call        TObject.ClassName
 0064CE01    lea         edx,[ebp-128]
 0064CE07    lea         eax,[ebp-138]
 0064CE0D    call        @LStrFromString
 0064CE12    mov         edx,dword ptr [ebp-138]
 0064CE18    mov         eax,dword ptr [ebp-4]
 0064CE1B    call        0064E8C4
 0064CE20    mov         eax,dword ptr [ebp-8]
 0064CE23    mov         edx,dword ptr [eax+8]
 0064CE26    mov         eax,dword ptr [ebp-4]
 0064CE29    call        0064E8C4
 0064CE2E    mov         eax,dword ptr [ebp-4]
 0064CE31    call        0064C824
 0064CE36    mov         dword ptr [ebp-10],eax
 0064CE39    mov         eax,dword ptr [ebp-4]
 0064CE3C    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList
>0064CE40    je          0064CE68
 0064CE42    mov         eax,dword ptr [ebp-4]
 0064CE45    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 0064CE48    mov         edx,dword ptr [ebp-4]
 0064CE4B    mov         edx,dword ptr [edx+30];TWriter.FAncestorList:TList
 0064CE4E    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>0064CE51    jge         0064CE68
 0064CE53    mov         eax,dword ptr [ebp-4]
 0064CE56    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>0064CE5A    je          0064CE62
 0064CE5C    mov         eax,dword ptr [ebp-4]
 0064CE5F    inc         dword ptr [eax+34];TWriter.FAncestorPos:Integer
 0064CE62    mov         eax,dword ptr [ebp-4]
 0064CE65    inc         dword ptr [eax+38];TWriter.FChildPos:Integer
 0064CE68    mov         edx,dword ptr [ebp-8]
 0064CE6B    mov         eax,dword ptr [ebp-4]
 0064CE6E    call        TWriter.WriteProperties
 0064CE73    mov         eax,dword ptr [ebp-4]
 0064CE76    call        TWriter.WriteListEnd
 0064CE7B    mov         eax,dword ptr [ebp-4]
 0064CE7E    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList
 0064CE81    mov         dword ptr [ebp-14],eax
 0064CE84    mov         eax,dword ptr [ebp-4]
 0064CE87    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 0064CE8A    mov         dword ptr [ebp-18],eax
 0064CE8D    mov         eax,dword ptr [ebp-4]
 0064CE90    mov         eax,dword ptr [eax+38];TWriter.FChildPos:Integer
 0064CE93    mov         dword ptr [ebp-1C],eax
 0064CE96    mov         eax,dword ptr [ebp-4]
 0064CE99    mov         eax,dword ptr [eax+18];TWriter.FRoot:TComponent
 0064CE9C    mov         dword ptr [ebp-20],eax
 0064CE9F    mov         eax,dword ptr [ebp-4]
 0064CEA2    mov         eax,dword ptr [eax+28];TWriter.FRootAncestor:TComponent
 0064CEA5    mov         dword ptr [ebp-24],eax
 0064CEA8    xor         eax,eax
 0064CEAA    push        ebp
 0064CEAB    push        64CFEC
 0064CEB0    push        dword ptr fs:[eax]
 0064CEB3    mov         dword ptr fs:[eax],esp
 0064CEB6    mov         eax,dword ptr [ebp-4]
 0064CEB9    xor         edx,edx
 0064CEBB    mov         dword ptr [eax+30],edx;TWriter.FAncestorList:TList
 0064CEBE    mov         eax,dword ptr [ebp-4]
 0064CEC1    xor         edx,edx
 0064CEC3    mov         dword ptr [eax+34],edx;TWriter.FAncestorPos:Integer
 0064CEC6    mov         eax,dword ptr [ebp-4]
 0064CEC9    xor         edx,edx
 0064CECB    mov         dword ptr [eax+38],edx;TWriter.FChildPos:Integer
 0064CECE    mov         eax,dword ptr [ebp-4]
 0064CED1    cmp         byte ptr [eax+24],0;TWriter.FIgnoreChildren:Boolean
>0064CED5    jne         0064CFB1
 0064CEDB    xor         eax,eax
 0064CEDD    push        ebp
 0064CEDE    push        64CFAA
 0064CEE3    push        dword ptr fs:[eax]
 0064CEE6    mov         dword ptr fs:[eax],esp
 0064CEE9    mov         eax,dword ptr [ebp-4]
 0064CEEC    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>0064CEF0    je          0064CF64
 0064CEF2    mov         eax,dword ptr [ebp-4]
 0064CEF5    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0064CEF8    mov         edx,dword ptr ds:[643204];TComponent
 0064CEFE    call        @IsClass
 0064CF03    test        al,al
>0064CF05    je          0064CF64
 0064CF07    mov         eax,dword ptr [ebp-4]
 0064CF0A    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0064CF0D    mov         edx,dword ptr ds:[643204];TComponent
 0064CF13    call        @IsClass
 0064CF18    test        al,al
>0064CF1A    je          0064CF34
 0064CF1C    mov         eax,dword ptr [ebp-4]
 0064CF1F    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0064CF22    test        byte ptr [eax+1D],2
>0064CF26    je          0064CF34
 0064CF28    mov         eax,dword ptr [ebp-4]
 0064CF2B    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0064CF2E    mov         edx,dword ptr [ebp-4]
 0064CF31    mov         dword ptr [edx+28],eax;TWriter.FRootAncestor:TComponent
 0064CF34    mov         dl,1
 0064CF36    mov         eax,[006422A4];TList
 0064CF3B    call        TObject.Create;TList.Create
 0064CF40    mov         edx,dword ptr [ebp-4]
 0064CF43    mov         dword ptr [edx+30],eax;TWriter.FAncestorList:TList
 0064CF46    mov         eax,dword ptr [ebp-4]
 0064CF49    push        eax
 0064CF4A    push        64C790
 0064CF4F    mov         eax,dword ptr [ebp-4]
 0064CF52    mov         edx,dword ptr [eax+28];TWriter.FRootAncestor:TComponent
 0064CF55    mov         eax,dword ptr [ebp-4]
 0064CF58    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0064CF5B    mov         si,0FFFD
 0064CF5F    call        @CallDynaInst
 0064CF64    mov         eax,dword ptr [ebp-8]
 0064CF67    test        byte ptr [eax+1D],2
>0064CF6B    je          0064CF76
 0064CF6D    mov         eax,dword ptr [ebp-4]
 0064CF70    mov         edx,dword ptr [ebp-8]
 0064CF73    mov         dword ptr [eax+18],edx;TWriter.FRoot:TComponent
 0064CF76    mov         eax,dword ptr [ebp-4]
 0064CF79    push        eax
 0064CF7A    push        64CB6C;sub_0064CB6C
 0064CF7F    mov         eax,dword ptr [ebp-4]
 0064CF82    mov         edx,dword ptr [eax+18];TWriter.FRoot:TComponent
 0064CF85    mov         eax,dword ptr [ebp-8]
 0064CF88    mov         si,0FFFD
 0064CF8C    call        @CallDynaInst
 0064CF91    xor         eax,eax
 0064CF93    pop         edx
 0064CF94    pop         ecx
 0064CF95    pop         ecx
 0064CF96    mov         dword ptr fs:[eax],edx
 0064CF99    push        64CFB1
 0064CF9E    mov         eax,dword ptr [ebp-4]
 0064CFA1    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList
 0064CFA4    call        TObject.Free
 0064CFA9    ret
>0064CFAA    jmp         @HandleFinally
>0064CFAF    jmp         0064CF9E
 0064CFB1    xor         eax,eax
 0064CFB3    pop         edx
 0064CFB4    pop         ecx
 0064CFB5    pop         ecx
 0064CFB6    mov         dword ptr fs:[eax],edx
 0064CFB9    push        64CFF3
 0064CFBE    mov         eax,dword ptr [ebp-4]
 0064CFC1    mov         edx,dword ptr [ebp-14]
 0064CFC4    mov         dword ptr [eax+30],edx;TWriter.FAncestorList:TList
 0064CFC7    mov         eax,dword ptr [ebp-4]
 0064CFCA    mov         edx,dword ptr [ebp-18]
 0064CFCD    mov         dword ptr [eax+34],edx;TWriter.FAncestorPos:Integer
 0064CFD0    mov         eax,dword ptr [ebp-4]
 0064CFD3    mov         edx,dword ptr [ebp-1C]
 0064CFD6    mov         dword ptr [eax+38],edx;TWriter.FChildPos:Integer
 0064CFD9    mov         eax,dword ptr [ebp-4]
 0064CFDC    mov         edx,dword ptr [ebp-20]
 0064CFDF    mov         dword ptr [eax+18],edx;TWriter.FRoot:TComponent
 0064CFE2    mov         eax,dword ptr [ebp-4]
 0064CFE5    mov         edx,dword ptr [ebp-24]
 0064CFE8    mov         dword ptr [eax+28],edx;TWriter.FRootAncestor:TComponent
 0064CFEB    ret
>0064CFEC    jmp         @HandleFinally
>0064CFF1    jmp         0064CFBE
 0064CFF3    mov         eax,dword ptr [ebp-4]
 0064CFF6    call        TWriter.WriteListEnd
 0064CFFB    mov         eax,dword ptr [ebp-4]
 0064CFFE    mov         eax,dword ptr [eax+18];TWriter.FRoot:TComponent
 0064D001    cmp         eax,dword ptr [ebp-8]
>0064D004    je          0064D02D
 0064D006    mov         al,[0064D068];0x1 gvar_0064D068
 0064D00B    cmp         al,byte ptr [ebp-25]
>0064D00E    jne         0064D02D
 0064D010    mov         eax,dword ptr [ebp-4]
 0064D013    call        0064C824
 0064D018    mov         edx,dword ptr [ebp-10]
 0064D01B    add         edx,2
 0064D01E    cmp         eax,edx
>0064D020    jne         0064D02D
 0064D022    mov         edx,dword ptr [ebp-0C]
 0064D025    mov         eax,dword ptr [ebp-4]
 0064D028    call        0064C85C
 0064D02D    xor         eax,eax
 0064D02F    pop         edx
 0064D030    pop         ecx
 0064D031    pop         ecx
 0064D032    mov         dword ptr fs:[eax],edx
 0064D035    push        64D052
 0064D03A    lea         eax,[ebp-138]
 0064D040    mov         edx,4
 0064D045    call        @LStrArrayClr
 0064D04A    ret
>0064D04B    jmp         @HandleFinally
>0064D050    jmp         0064D03A
 0064D052    pop         esi
 0064D053    pop         ebx
 0064D054    mov         esp,ebp
 0064D056    pop         ebp
 0064D057    ret
end;*}

//0064D06C
{*procedure sub_0064D06C(?:TWriter; ?:?; ?:?);
begin
 0064D06C    push        ebp
 0064D06D    mov         ebp,esp
 0064D06F    add         esp,0FFFFFFF4
 0064D072    mov         dword ptr [ebp-0C],ecx
 0064D075    mov         dword ptr [ebp-8],edx
 0064D078    mov         dword ptr [ebp-4],eax
 0064D07B    mov         eax,dword ptr [ebp-0C]
 0064D07E    mov         edx,dword ptr [ebp-4]
 0064D081    mov         dword ptr [edx+28],eax;TWriter.FRootAncestor:TComponent
 0064D084    mov         eax,dword ptr [ebp-0C]
 0064D087    mov         edx,dword ptr [ebp-4]
 0064D08A    mov         dword ptr [edx+20],eax;TWriter.FAncestor:TPersistent
 0064D08D    mov         eax,dword ptr [ebp-8]
 0064D090    mov         edx,dword ptr [ebp-4]
 0064D093    mov         dword ptr [edx+18],eax;TWriter.FRoot:TComponent
 0064D096    mov         eax,dword ptr [ebp-8]
 0064D099    mov         edx,dword ptr [ebp-4]
 0064D09C    mov         dword ptr [edx+1C],eax;TWriter.FLookupRoot:TComponent
 0064D09F    mov         eax,dword ptr [ebp-4]
 0064D0A2    call        0064E8A8
 0064D0A7    mov         edx,dword ptr [ebp-8]
 0064D0AA    mov         eax,dword ptr [ebp-4]
 0064D0AD    call        0064CB6C
 0064D0B2    mov         esp,ebp
 0064D0B4    pop         ebp
 0064D0B5    ret
end;*}

//0064D0B8
procedure TWriter.WriteFloat(const Value:Extended);
begin
{*
 0064D0B8    push        ebp
 0064D0B9    mov         ebp,esp
 0064D0BB    push        ecx
 0064D0BC    mov         dword ptr [ebp-4],eax
 0064D0BF    mov         dl,5
 0064D0C1    mov         eax,dword ptr [ebp-4]
 0064D0C4    call        TWriter.WriteValue
 0064D0C9    lea         edx,[ebp+8]
 0064D0CC    mov         ecx,0A
 0064D0D1    mov         eax,dword ptr [ebp-4]
 0064D0D4    call        TWriter.Write
 0064D0D9    pop         ecx
 0064D0DA    pop         ebp
 0064D0DB    ret         0C
*}
end;

//0064D0E0
{*procedure sub_0064D0E0(?:?; ?:?);
begin
 0064D0E0    push        ebp
 0064D0E1    mov         ebp,esp
 0064D0E3    push        ecx
 0064D0E4    mov         dword ptr [ebp-4],eax
 0064D0E7    mov         dl,0F
 0064D0E9    mov         eax,dword ptr [ebp-4]
 0064D0EC    call        TWriter.WriteValue
 0064D0F1    lea         edx,[ebp+8]
 0064D0F4    mov         ecx,4
 0064D0F9    mov         eax,dword ptr [ebp-4]
 0064D0FC    call        TWriter.Write
 0064D101    pop         ecx
 0064D102    pop         ebp
 0064D103    ret         4
end;*}

//0064D108
{*procedure sub_0064D108(?:?; ?:?);
begin
 0064D108    push        ebp
 0064D109    mov         ebp,esp
 0064D10B    push        ecx
 0064D10C    mov         dword ptr [ebp-4],eax
 0064D10F    mov         dl,10
 0064D111    mov         eax,dword ptr [ebp-4]
 0064D114    call        TWriter.WriteValue
 0064D119    lea         edx,[ebp+8]
 0064D11C    mov         ecx,8
 0064D121    mov         eax,dword ptr [ebp-4]
 0064D124    call        TWriter.Write
 0064D129    pop         ecx
 0064D12A    pop         ebp
 0064D12B    ret         8
end;*}

//0064D130
{*procedure sub_0064D130(?:?; ?:?);
begin
 0064D130    push        ebp
 0064D131    mov         ebp,esp
 0064D133    push        ecx
 0064D134    mov         dword ptr [ebp-4],eax
 0064D137    mov         dl,11
 0064D139    mov         eax,dword ptr [ebp-4]
 0064D13C    call        TWriter.WriteValue
 0064D141    lea         edx,[ebp+8]
 0064D144    mov         ecx,8
 0064D149    mov         eax,dword ptr [ebp-4]
 0064D14C    call        TWriter.Write
 0064D151    pop         ecx
 0064D152    pop         ebp
 0064D153    ret         8
end;*}

//0064D158
procedure TWriter.WriteIdent(const Ident:AnsiString);
begin
{*
 0064D158    push        ebp
 0064D159    mov         ebp,esp
 0064D15B    add         esp,0FFFFFFF8
 0064D15E    mov         dword ptr [ebp-8],edx
 0064D161    mov         dword ptr [ebp-4],eax
 0064D164    mov         edx,64D1FC;'False'
 0064D169    mov         eax,dword ptr [ebp-8]
 0064D16C    call        SameText
 0064D171    test        al,al
>0064D173    je          0064D181
 0064D175    mov         dl,8
 0064D177    mov         eax,dword ptr [ebp-4]
 0064D17A    call        TWriter.WriteValue
>0064D17F    jmp         0064D1ED
 0064D181    mov         edx,64D20C;'True'
 0064D186    mov         eax,dword ptr [ebp-8]
 0064D189    call        SameText
 0064D18E    test        al,al
>0064D190    je          0064D19E
 0064D192    mov         dl,9
 0064D194    mov         eax,dword ptr [ebp-4]
 0064D197    call        TWriter.WriteValue
>0064D19C    jmp         0064D1ED
 0064D19E    mov         edx,64D21C;'Null'
 0064D1A3    mov         eax,dword ptr [ebp-8]
 0064D1A6    call        SameText
 0064D1AB    test        al,al
>0064D1AD    je          0064D1BB
 0064D1AF    xor         edx,edx
 0064D1B1    mov         eax,dword ptr [ebp-4]
 0064D1B4    call        TWriter.WriteValue
>0064D1B9    jmp         0064D1ED
 0064D1BB    mov         edx,64D22C;'nil'
 0064D1C0    mov         eax,dword ptr [ebp-8]
 0064D1C3    call        SameText
 0064D1C8    test        al,al
>0064D1CA    je          0064D1D8
 0064D1CC    mov         dl,0D
 0064D1CE    mov         eax,dword ptr [ebp-4]
 0064D1D1    call        TWriter.WriteValue
>0064D1D6    jmp         0064D1ED
 0064D1D8    mov         dl,7
 0064D1DA    mov         eax,dword ptr [ebp-4]
 0064D1DD    call        TWriter.WriteValue
 0064D1E2    mov         edx,dword ptr [ebp-8]
 0064D1E5    mov         eax,dword ptr [ebp-4]
 0064D1E8    call        0064E8C4
 0064D1ED    pop         ecx
 0064D1EE    pop         ecx
 0064D1EF    pop         ebp
 0064D1F0    ret
*}
end;

//0064D230
procedure TWriter.WriteInteger(Value:Longint);
begin
{*
 0064D230    push        ebp
 0064D231    mov         ebp,esp
 0064D233    add         esp,0FFFFFFF8
 0064D236    mov         dword ptr [ebp-8],edx
 0064D239    mov         dword ptr [ebp-4],eax
 0064D23C    cmp         dword ptr [ebp-8],0FFFFFF80
>0064D240    jl          0064D264
 0064D242    cmp         dword ptr [ebp-8],7F
>0064D246    jg          0064D264
 0064D248    mov         dl,2
 0064D24A    mov         eax,dword ptr [ebp-4]
 0064D24D    call        TWriter.WriteValue
 0064D252    lea         edx,[ebp-8]
 0064D255    mov         ecx,1
 0064D25A    mov         eax,dword ptr [ebp-4]
 0064D25D    call        TWriter.Write
>0064D262    jmp         0064D2AC
 0064D264    cmp         dword ptr [ebp-8],0FFFF8000
>0064D26B    jl          0064D292
 0064D26D    cmp         dword ptr [ebp-8],7FFF
>0064D274    jg          0064D292
 0064D276    mov         dl,3
 0064D278    mov         eax,dword ptr [ebp-4]
 0064D27B    call        TWriter.WriteValue
 0064D280    lea         edx,[ebp-8]
 0064D283    mov         ecx,2
 0064D288    mov         eax,dword ptr [ebp-4]
 0064D28B    call        TWriter.Write
>0064D290    jmp         0064D2AC
 0064D292    mov         dl,4
 0064D294    mov         eax,dword ptr [ebp-4]
 0064D297    call        TWriter.WriteValue
 0064D29C    lea         edx,[ebp-8]
 0064D29F    mov         ecx,4
 0064D2A4    mov         eax,dword ptr [ebp-4]
 0064D2A7    call        TWriter.Write
 0064D2AC    pop         ecx
 0064D2AD    pop         ecx
 0064D2AE    pop         ebp
 0064D2AF    ret
*}
end;

//0064D2B0
{*procedure sub_0064D2B0(?:?; ?:?; ?:?);
begin
 0064D2B0    push        ebp
 0064D2B1    mov         ebp,esp
 0064D2B3    push        ecx
 0064D2B4    mov         dword ptr [ebp-4],eax
 0064D2B7    cmp         dword ptr [ebp+0C],0FFFFFFFF
>0064D2BB    jne         0064D2C8
 0064D2BD    cmp         dword ptr [ebp+8],80000000
>0064D2C4    jb          0064D2EC
>0064D2C6    jmp         0064D2CA
>0064D2C8    jl          0064D2EC
 0064D2CA    cmp         dword ptr [ebp+0C],0
>0064D2CE    jne         0064D2DB
 0064D2D0    cmp         dword ptr [ebp+8],7FFFFFFF
>0064D2D7    ja          0064D2EC
>0064D2D9    jmp         0064D2DD
>0064D2DB    jg          0064D2EC
 0064D2DD    mov         eax,dword ptr [ebp+8]
 0064D2E0    mov         edx,eax
 0064D2E2    mov         eax,dword ptr [ebp-4]
 0064D2E5    call        TWriter.WriteInteger
>0064D2EA    jmp         0064D306
 0064D2EC    mov         dl,13
 0064D2EE    mov         eax,dword ptr [ebp-4]
 0064D2F1    call        TWriter.WriteValue
 0064D2F6    lea         edx,[ebp+8]
 0064D2F9    mov         ecx,8
 0064D2FE    mov         eax,dword ptr [ebp-4]
 0064D301    call        TWriter.Write
 0064D306    pop         ecx
 0064D307    pop         ebp
 0064D308    ret         8
end;*}

//0064D30C
procedure TWriter.WriteListBegin;
begin
{*
 0064D30C    push        ebp
 0064D30D    mov         ebp,esp
 0064D30F    push        ecx
 0064D310    mov         dword ptr [ebp-4],eax
 0064D313    mov         dl,1
 0064D315    mov         eax,dword ptr [ebp-4]
 0064D318    call        TWriter.WriteValue
 0064D31D    pop         ecx
 0064D31E    pop         ebp
 0064D31F    ret
*}
end;

//0064D320
procedure TWriter.WriteListEnd;
begin
{*
 0064D320    push        ebp
 0064D321    mov         ebp,esp
 0064D323    push        ecx
 0064D324    mov         dword ptr [ebp-4],eax
 0064D327    xor         edx,edx
 0064D329    mov         eax,dword ptr [ebp-4]
 0064D32C    call        TWriter.WriteValue
 0064D331    pop         ecx
 0064D332    pop         ebp
 0064D333    ret
*}
end;

//0064D334
{*procedure sub_0064D334(?:TWriter; ?:?; ?:Integer);
begin
 0064D334    push        ebp
 0064D335    mov         ebp,esp
 0064D337    add         esp,0FFFFFFF0
 0064D33A    mov         dword ptr [ebp-0C],ecx
 0064D33D    mov         byte ptr [ebp-5],dl
 0064D340    mov         dword ptr [ebp-4],eax
 0064D343    mov         al,[0064D37C];0x0 gvar_0064D37C
 0064D348    cmp         al,byte ptr [ebp-5]
>0064D34B    je          0064D376
 0064D34D    mov         al,byte ptr [ebp-5]
 0064D350    or          al,0F0
 0064D352    mov         byte ptr [ebp-0D],al
 0064D355    lea         edx,[ebp-0D]
 0064D358    mov         ecx,1
 0064D35D    mov         eax,dword ptr [ebp-4]
 0064D360    call        TWriter.Write
 0064D365    test        byte ptr [ebp-5],2
>0064D369    je          0064D376
 0064D36B    mov         edx,dword ptr [ebp-0C]
 0064D36E    mov         eax,dword ptr [ebp-4]
 0064D371    call        TWriter.WriteInteger
 0064D376    mov         esp,ebp
 0064D378    pop         ebp
 0064D379    ret
end;*}

//0064D380
procedure TWriter.WriteProperties(Instance:TPersistent);
begin
{*
 0064D380    push        ebp
 0064D381    mov         ebp,esp
 0064D383    add         esp,0FFFFFFE4
 0064D386    mov         dword ptr [ebp-8],edx
 0064D389    mov         dword ptr [ebp-4],eax
 0064D38C    mov         eax,dword ptr [ebp-8]
 0064D38F    mov         eax,dword ptr [eax]
 0064D391    call        0066BB00
 0064D396    call        GetTypeData
 0064D39B    movsx       eax,word ptr [eax+8]
 0064D39F    mov         dword ptr [ebp-10],eax
 0064D3A2    cmp         dword ptr [ebp-10],0
>0064D3A6    jle         0064D447
 0064D3AC    mov         eax,dword ptr [ebp-10]
 0064D3AF    shl         eax,2
 0064D3B2    call        @GetMem
 0064D3B7    mov         dword ptr [ebp-18],eax
 0064D3BA    xor         eax,eax
 0064D3BC    push        ebp
 0064D3BD    push        64D440
 0064D3C2    push        dword ptr fs:[eax]
 0064D3C5    mov         dword ptr fs:[eax],esp
 0064D3C8    mov         eax,dword ptr [ebp-8]
 0064D3CB    mov         eax,dword ptr [eax]
 0064D3CD    call        0066BB00
 0064D3D2    mov         edx,dword ptr [ebp-18]
 0064D3D5    call        GetPropInfos
 0064D3DA    mov         eax,dword ptr [ebp-10]
 0064D3DD    dec         eax
 0064D3DE    test        eax,eax
>0064D3E0    jl          0064D424
 0064D3E2    inc         eax
 0064D3E3    mov         dword ptr [ebp-1C],eax
 0064D3E6    mov         dword ptr [ebp-0C],0
 0064D3ED    mov         eax,dword ptr [ebp-18]
 0064D3F0    mov         edx,dword ptr [ebp-0C]
 0064D3F3    mov         eax,dword ptr [eax+edx*4]
 0064D3F6    mov         dword ptr [ebp-14],eax
 0064D3F9    cmp         dword ptr [ebp-14],0
>0064D3FD    je          0064D424
 0064D3FF    mov         edx,dword ptr [ebp-14]
 0064D402    mov         eax,dword ptr [ebp-8]
 0064D405    call        IsStoredProp
 0064D40A    test        al,al
>0064D40C    je          0064D41C
 0064D40E    mov         ecx,dword ptr [ebp-14]
 0064D411    mov         edx,dword ptr [ebp-8]
 0064D414    mov         eax,dword ptr [ebp-4]
 0064D417    call        TWriter.WriteProperty
 0064D41C    inc         dword ptr [ebp-0C]
 0064D41F    dec         dword ptr [ebp-1C]
>0064D422    jne         0064D3ED
 0064D424    xor         eax,eax
 0064D426    pop         edx
 0064D427    pop         ecx
 0064D428    pop         ecx
 0064D429    mov         dword ptr fs:[eax],edx
 0064D42C    push        64D447
 0064D431    mov         edx,dword ptr [ebp-10]
 0064D434    shl         edx,2
 0064D437    mov         eax,dword ptr [ebp-18]
 0064D43A    call        @FreeMem
 0064D43F    ret
>0064D440    jmp         @HandleFinally
>0064D445    jmp         0064D431
 0064D447    mov         edx,dword ptr [ebp-4]
 0064D44A    mov         eax,dword ptr [ebp-8]
 0064D44D    mov         ecx,dword ptr [eax]
 0064D44F    call        dword ptr [ecx+4]
 0064D452    mov         esp,ebp
 0064D454    pop         ebp
 0064D455    ret
*}
end;

//0064D458
function AncestorValid:Boolean;
begin
{*
 0064D458    push        ebp
 0064D459    mov         ebp,esp
 0064D45B    push        ecx
 0064D45C    mov         eax,dword ptr [ebp+8]
 0064D45F    mov         eax,dword ptr [eax-4]
 0064D462    cmp         dword ptr [eax+20],0
>0064D466    je          0064D498
 0064D468    mov         eax,dword ptr [ebp+8]
 0064D46B    mov         eax,dword ptr [eax-4]
 0064D46E    cmp         dword ptr [eax+28],0
>0064D472    je          0064D498
 0064D474    mov         eax,dword ptr [ebp+8]
 0064D477    mov         eax,dword ptr [eax-4]
 0064D47A    mov         eax,dword ptr [eax+28]
 0064D47D    call        TObject.ClassType
 0064D482    mov         edx,eax
 0064D484    mov         eax,dword ptr [ebp+8]
 0064D487    mov         eax,dword ptr [eax-4]
 0064D48A    mov         eax,dword ptr [eax+18]
 0064D48D    mov         eax,dword ptr [eax]
 0064D48F    call        TObject.InheritsFrom
 0064D494    test        al,al
>0064D496    jne         0064D49C
 0064D498    xor         eax,eax
>0064D49A    jmp         0064D49E
 0064D49C    mov         al,1
 0064D49E    mov         byte ptr [ebp-1],al
 0064D4A1    mov         al,byte ptr [ebp-1]
 0064D4A4    pop         ecx
 0064D4A5    pop         ebp
 0064D4A6    ret
*}
end;

//0064D4A8
procedure WritePropPath;
begin
{*
 0064D4A8    push        ebp
 0064D4A9    mov         ebp,esp
 0064D4AB    push        0
 0064D4AD    xor         eax,eax
 0064D4AF    push        ebp
 0064D4B0    push        64D4F0
 0064D4B5    push        dword ptr fs:[eax]
 0064D4B8    mov         dword ptr fs:[eax],esp
 0064D4BB    lea         eax,[ebp-4]
 0064D4BE    mov         edx,dword ptr [ebp+8]
 0064D4C1    mov         edx,dword ptr [edx-8]
 0064D4C4    add         edx,1A
 0064D4C7    call        @LStrFromString
 0064D4CC    mov         edx,dword ptr [ebp-4]
 0064D4CF    mov         eax,dword ptr [ebp+8]
 0064D4D2    mov         eax,dword ptr [eax-4]
 0064D4D5    call        TWriter.WritePropName
 0064D4DA    xor         eax,eax
 0064D4DC    pop         edx
 0064D4DD    pop         ecx
 0064D4DE    pop         ecx
 0064D4DF    mov         dword ptr fs:[eax],edx
 0064D4E2    push        64D4F7
 0064D4E7    lea         eax,[ebp-4]
 0064D4EA    call        @LStrClr
 0064D4EF    ret
>0064D4F0    jmp         @HandleFinally
>0064D4F5    jmp         0064D4E7
 0064D4F7    pop         ecx
 0064D4F8    pop         ebp
 0064D4F9    ret
*}
end;

//0064D4FC
procedure WriteSet(Value:Longint);
begin
{*
 0064D4FC    push        ebp
 0064D4FD    mov         ebp,esp
 0064D4FF    add         esp,0FFFFFFF0
 0064D502    xor         edx,edx
 0064D504    mov         dword ptr [ebp-10],edx
 0064D507    mov         dword ptr [ebp-4],eax
 0064D50A    xor         eax,eax
 0064D50C    push        ebp
 0064D50D    push        64D593
 0064D512    push        dword ptr fs:[eax]
 0064D515    mov         dword ptr fs:[eax],esp
 0064D518    mov         eax,dword ptr [ebp+8]
 0064D51B    mov         eax,dword ptr [eax-0C]
 0064D51E    call        GetTypeData
 0064D523    mov         eax,dword ptr [eax+1]
 0064D526    mov         eax,dword ptr [eax]
 0064D528    mov         dword ptr [ebp-0C],eax
 0064D52B    mov         eax,dword ptr [ebp+8]
 0064D52E    mov         eax,dword ptr [eax-4]
 0064D531    mov         dl,0B
 0064D533    call        TWriter.WriteValue
 0064D538    xor         eax,eax
 0064D53A    mov         dword ptr [ebp-8],eax
 0064D53D    mov         eax,dword ptr [ebp-8]
 0064D540    cmp         eax,1F
>0064D543    ja          0064D549
 0064D545    bt          dword ptr [ebp-4],eax
>0064D549    jae         0064D567
 0064D54B    lea         ecx,[ebp-10]
 0064D54E    mov         edx,dword ptr [ebp-8]
 0064D551    mov         eax,dword ptr [ebp-0C]
 0064D554    call        GetEnumName
 0064D559    mov         edx,dword ptr [ebp-10]
 0064D55C    mov         eax,dword ptr [ebp+8]
 0064D55F    mov         eax,dword ptr [eax-4]
 0064D562    call        0064E8C4
 0064D567    inc         dword ptr [ebp-8]
 0064D56A    cmp         dword ptr [ebp-8],20
>0064D56E    jne         0064D53D
 0064D570    mov         eax,dword ptr [ebp+8]
 0064D573    mov         eax,dword ptr [eax-4]
 0064D576    xor         edx,edx
 0064D578    call        0064E8C4
 0064D57D    xor         eax,eax
 0064D57F    pop         edx
 0064D580    pop         ecx
 0064D581    pop         ecx
 0064D582    mov         dword ptr fs:[eax],edx
 0064D585    push        64D59A
 0064D58A    lea         eax,[ebp-10]
 0064D58D    call        @LStrClr
 0064D592    ret
>0064D593    jmp         @HandleFinally
>0064D598    jmp         0064D58A
 0064D59A    mov         esp,ebp
 0064D59C    pop         ebp
 0064D59D    ret
*}
end;

//0064D5A0
procedure WriteIntProp(IntType:PTypeInfo; Value:Longint);
begin
{*
 0064D5A0    push        ebp
 0064D5A1    mov         ebp,esp
 0064D5A3    add         esp,0FFFFFFF0
 0064D5A6    xor         ecx,ecx
 0064D5A8    mov         dword ptr [ebp-0C],ecx
 0064D5AB    mov         dword ptr [ebp-8],edx
 0064D5AE    mov         dword ptr [ebp-4],eax
 0064D5B1    xor         eax,eax
 0064D5B3    push        ebp
 0064D5B4    push        64D611
 0064D5B9    push        dword ptr fs:[eax]
 0064D5BC    mov         dword ptr fs:[eax],esp
 0064D5BF    mov         eax,dword ptr [ebp-4]
 0064D5C2    call        00644634
 0064D5C7    mov         dword ptr [ebp-10],eax
 0064D5CA    cmp         dword ptr [ebp-10],0
>0064D5CE    je          0064D5ED
 0064D5D0    lea         edx,[ebp-0C]
 0064D5D3    mov         eax,dword ptr [ebp-8]
 0064D5D6    call        dword ptr [ebp-10]
 0064D5D9    test        al,al
>0064D5DB    je          0064D5ED
 0064D5DD    mov         eax,dword ptr [ebp+8]
 0064D5E0    mov         eax,dword ptr [eax-4]
 0064D5E3    mov         edx,dword ptr [ebp-0C]
 0064D5E6    call        TWriter.WriteIdent
>0064D5EB    jmp         0064D5FB
 0064D5ED    mov         eax,dword ptr [ebp+8]
 0064D5F0    mov         eax,dword ptr [eax-4]
 0064D5F3    mov         edx,dword ptr [ebp-8]
 0064D5F6    call        TWriter.WriteInteger
 0064D5FB    xor         eax,eax
 0064D5FD    pop         edx
 0064D5FE    pop         ecx
 0064D5FF    pop         ecx
 0064D600    mov         dword ptr fs:[eax],edx
 0064D603    push        64D618
 0064D608    lea         eax,[ebp-0C]
 0064D60B    call        @LStrClr
 0064D610    ret
>0064D611    jmp         @HandleFinally
>0064D616    jmp         0064D608
 0064D618    mov         esp,ebp
 0064D61A    pop         ebp
 0064D61B    ret
*}
end;

//0064D61C
procedure WriteCollectionProp(Collection:TCollection);
begin
{*
 0064D61C    push        ebp
 0064D61D    mov         ebp,esp
 0064D61F    add         esp,0FFFFFFF8
 0064D622    xor         edx,edx
 0064D624    mov         dword ptr [ebp-8],edx
 0064D627    mov         dword ptr [ebp-4],eax
 0064D62A    xor         eax,eax
 0064D62C    push        ebp
 0064D62D    push        64D6B9
 0064D632    push        dword ptr fs:[eax]
 0064D635    mov         dword ptr fs:[eax],esp
 0064D638    mov         eax,dword ptr [ebp+8]
 0064D63B    push        eax
 0064D63C    call        WritePropPath
 0064D641    pop         ecx
 0064D642    lea         eax,[ebp-8]
 0064D645    mov         edx,dword ptr [ebp+8]
 0064D648    mov         edx,dword ptr [edx-4]
 0064D64B    mov         edx,dword ptr [edx+2C]
 0064D64E    call        @LStrLAsg
 0064D653    xor         eax,eax
 0064D655    push        ebp
 0064D656    push        64D69C
 0064D65B    push        dword ptr fs:[eax]
 0064D65E    mov         dword ptr fs:[eax],esp
 0064D661    mov         eax,dword ptr [ebp+8]
 0064D664    mov         eax,dword ptr [eax-4]
 0064D667    add         eax,2C
 0064D66A    call        @LStrClr
 0064D66F    mov         eax,dword ptr [ebp+8]
 0064D672    mov         eax,dword ptr [eax-4]
 0064D675    mov         edx,dword ptr [ebp-4]
 0064D678    call        TWriter.WriteCollection
 0064D67D    xor         eax,eax
 0064D67F    pop         edx
 0064D680    pop         ecx
 0064D681    pop         ecx
 0064D682    mov         dword ptr fs:[eax],edx
 0064D685    push        64D6A3
 0064D68A    mov         eax,dword ptr [ebp+8]
 0064D68D    mov         eax,dword ptr [eax-4]
 0064D690    add         eax,2C
 0064D693    mov         edx,dword ptr [ebp-8]
 0064D696    call        @LStrAsg
 0064D69B    ret
>0064D69C    jmp         @HandleFinally
>0064D6A1    jmp         0064D68A
 0064D6A3    xor         eax,eax
 0064D6A5    pop         edx
 0064D6A6    pop         ecx
 0064D6A7    pop         ecx
 0064D6A8    mov         dword ptr fs:[eax],edx
 0064D6AB    push        64D6C0
 0064D6B0    lea         eax,[ebp-8]
 0064D6B3    call        @LStrClr
 0064D6B8    ret
>0064D6B9    jmp         @HandleFinally
>0064D6BE    jmp         0064D6B0
 0064D6C0    pop         ecx
 0064D6C1    pop         ecx
 0064D6C2    pop         ebp
 0064D6C3    ret
*}
end;

//0064D6C4
function IsDefaultValue:Boolean;
begin
{*
 0064D6C4    push        ebp
 0064D6C5    mov         ebp,esp
 0064D6C7    add         esp,0FFFFFFF8
 0064D6CA    mov         eax,dword ptr [ebp+8]
 0064D6CD    mov         eax,dword ptr [eax+8]
 0064D6D0    push        eax
 0064D6D1    call        AncestorValid
 0064D6D6    pop         ecx
 0064D6D7    test        al,al
>0064D6D9    je          0064D701
 0064D6DB    mov         eax,dword ptr [ebp+8]
 0064D6DE    mov         eax,dword ptr [eax+8]
 0064D6E1    mov         edx,dword ptr [eax-8]
 0064D6E4    mov         eax,dword ptr [ebp+8]
 0064D6E7    mov         eax,dword ptr [eax+8]
 0064D6EA    mov         eax,dword ptr [eax-4]
 0064D6ED    mov         eax,dword ptr [eax+20]
 0064D6F0    call        GetOrdProp
 0064D6F5    mov         edx,dword ptr [ebp+8]
 0064D6F8    cmp         eax,dword ptr [edx-4]
 0064D6FB    sete        byte ptr [ebp-1]
>0064D6FF    jmp         0064D72D
 0064D701    mov         eax,dword ptr [ebp+8]
 0064D704    mov         eax,dword ptr [eax+8]
 0064D707    mov         eax,dword ptr [eax-8]
 0064D70A    mov         eax,dword ptr [eax+14]
 0064D70D    mov         dword ptr [ebp-8],eax
 0064D710    cmp         dword ptr [ebp-8],80000000
>0064D717    je          0064D724
 0064D719    mov         eax,dword ptr [ebp+8]
 0064D71C    mov         eax,dword ptr [eax-4]
 0064D71F    cmp         eax,dword ptr [ebp-8]
>0064D722    je          0064D728
 0064D724    xor         eax,eax
>0064D726    jmp         0064D72A
 0064D728    mov         al,1
 0064D72A    mov         byte ptr [ebp-1],al
 0064D72D    mov         al,byte ptr [ebp-1]
 0064D730    pop         ecx
 0064D731    pop         ecx
 0064D732    pop         ebp
 0064D733    ret
*}
end;

//0064D734
procedure WriteOrdProp;
begin
{*
 0064D734    push        ebp
 0064D735    mov         ebp,esp
 0064D737    add         esp,0FFFFFFF8
 0064D73A    xor         eax,eax
 0064D73C    mov         dword ptr [ebp-8],eax
 0064D73F    xor         eax,eax
 0064D741    push        ebp
 0064D742    push        64D7FD
 0064D747    push        dword ptr fs:[eax]
 0064D74A    mov         dword ptr fs:[eax],esp
 0064D74D    mov         eax,dword ptr [ebp+8]
 0064D750    mov         edx,dword ptr [eax-8]
 0064D753    mov         eax,dword ptr [ebp+8]
 0064D756    mov         eax,dword ptr [eax-10]
 0064D759    call        GetOrdProp
 0064D75E    mov         dword ptr [ebp-4],eax
 0064D761    push        ebp
 0064D762    call        IsDefaultValue
 0064D767    pop         ecx
 0064D768    test        al,al
>0064D76A    jne         0064D7E7
 0064D76C    mov         eax,dword ptr [ebp+8]
 0064D76F    push        eax
 0064D770    call        WritePropPath
 0064D775    pop         ecx
 0064D776    mov         eax,dword ptr [ebp+8]
 0064D779    mov         eax,dword ptr [eax-0C]
 0064D77C    mov         al,byte ptr [eax]
 0064D77E    dec         al
>0064D780    je          0064D790
 0064D782    dec         al
>0064D784    je          0064D7A9
 0064D786    dec         al
>0064D788    je          0064D7C8
 0064D78A    sub         al,3
>0064D78C    je          0064D7B9
>0064D78E    jmp         0064D7E7
 0064D790    mov         eax,dword ptr [ebp+8]
 0064D793    push        eax
 0064D794    mov         eax,dword ptr [ebp+8]
 0064D797    mov         eax,dword ptr [eax-8]
 0064D79A    mov         eax,dword ptr [eax]
 0064D79C    mov         eax,dword ptr [eax]
 0064D79E    mov         edx,dword ptr [ebp-4]
 0064D7A1    call        WriteIntProp
 0064D7A6    pop         ecx
>0064D7A7    jmp         0064D7E7
 0064D7A9    mov         edx,dword ptr [ebp-4]
 0064D7AC    mov         eax,dword ptr [ebp+8]
 0064D7AF    mov         eax,dword ptr [eax-4]
 0064D7B2    call        TWriter.WriteChar
>0064D7B7    jmp         0064D7E7
 0064D7B9    mov         eax,dword ptr [ebp+8]
 0064D7BC    push        eax
 0064D7BD    mov         eax,dword ptr [ebp-4]
 0064D7C0    call        WriteSet
 0064D7C5    pop         ecx
>0064D7C6    jmp         0064D7E7
 0064D7C8    lea         ecx,[ebp-8]
 0064D7CB    mov         eax,dword ptr [ebp+8]
 0064D7CE    mov         eax,dword ptr [eax-0C]
 0064D7D1    mov         edx,dword ptr [ebp-4]
 0064D7D4    call        GetEnumName
 0064D7D9    mov         edx,dword ptr [ebp-8]
 0064D7DC    mov         eax,dword ptr [ebp+8]
 0064D7DF    mov         eax,dword ptr [eax-4]
 0064D7E2    call        TWriter.WriteIdent
 0064D7E7    xor         eax,eax
 0064D7E9    pop         edx
 0064D7EA    pop         ecx
 0064D7EB    pop         ecx
 0064D7EC    mov         dword ptr fs:[eax],edx
 0064D7EF    push        64D804
 0064D7F4    lea         eax,[ebp-8]
 0064D7F7    call        @LStrClr
 0064D7FC    ret
>0064D7FD    jmp         @HandleFinally
>0064D802    jmp         0064D7F4
 0064D804    pop         ecx
 0064D805    pop         ecx
 0064D806    pop         ebp
 0064D807    ret
*}
end;

//0064D808
{*function sub_0064D808(?:?):?;
begin
 0064D808    push        ebp
 0064D809    mov         ebp,esp
 0064D80B    push        ecx
 0064D80C    mov         eax,dword ptr [ebp+8]
 0064D80F    mov         eax,dword ptr [eax+8]
 0064D812    push        eax
 0064D813    call        AncestorValid
 0064D818    pop         ecx
 0064D819    test        al,al
>0064D81B    je          0064D848
 0064D81D    mov         eax,dword ptr [ebp+8]
 0064D820    mov         eax,dword ptr [eax+8]
 0064D823    mov         edx,dword ptr [eax-8]
 0064D826    mov         eax,dword ptr [ebp+8]
 0064D829    mov         eax,dword ptr [eax+8]
 0064D82C    mov         eax,dword ptr [eax-4]
 0064D82F    mov         eax,dword ptr [eax+20]
 0064D832    call        GetFloatProp
 0064D837    mov         eax,dword ptr [ebp+8]
 0064D83A    fld         tbyte ptr [eax-10]
 0064D83D    fcompp
 0064D83F    fnstsw      al
 0064D841    sahf
 0064D842    sete        byte ptr [ebp-1]
>0064D846    jmp         0064D85B
 0064D848    mov         eax,dword ptr [ebp+8]
 0064D84B    fld         tbyte ptr [eax-10]
 0064D84E    fcomp       dword ptr ds:[64D864];0:Single
 0064D854    fnstsw      al
 0064D856    sahf
 0064D857    sete        byte ptr [ebp-1]
 0064D85B    mov         al,byte ptr [ebp-1]
 0064D85E    pop         ecx
 0064D85F    pop         ebp
 0064D860    ret
end;*}

//0064D868
procedure WriteFloatProp;
begin
{*
 0064D868    push        ebp
 0064D869    mov         ebp,esp
 0064D86B    add         esp,0FFFFFFF0
 0064D86E    mov         eax,dword ptr [ebp+8]
 0064D871    mov         edx,dword ptr [eax-8]
 0064D874    mov         eax,dword ptr [ebp+8]
 0064D877    mov         eax,dword ptr [eax-10]
 0064D87A    call        GetFloatProp
 0064D87F    fstp        tbyte ptr [ebp-10]
 0064D882    wait
 0064D883    push        ebp
 0064D884    call        0064D808
 0064D889    pop         ecx
 0064D88A    test        al,al
>0064D88C    jne         0064D8AE
 0064D88E    mov         eax,dword ptr [ebp+8]
 0064D891    push        eax
 0064D892    call        WritePropPath
 0064D897    pop         ecx
 0064D898    mov         ax,word ptr [ebp-8]
 0064D89C    push        eax
 0064D89D    push        dword ptr [ebp-0C]
 0064D8A0    push        dword ptr [ebp-10]
 0064D8A3    mov         eax,dword ptr [ebp+8]
 0064D8A6    mov         eax,dword ptr [eax-4]
 0064D8A9    call        TWriter.WriteFloat
 0064D8AE    mov         esp,ebp
 0064D8B0    pop         ebp
 0064D8B1    ret
*}
end;

//0064D8B4
{*function sub_0064D8B4(?:?):?;
begin
 0064D8B4    push        ebp
 0064D8B5    mov         ebp,esp
 0064D8B7    push        ecx
 0064D8B8    mov         eax,dword ptr [ebp+8]
 0064D8BB    mov         eax,dword ptr [eax+8]
 0064D8BE    push        eax
 0064D8BF    call        AncestorValid
 0064D8C4    pop         ecx
 0064D8C5    test        al,al
>0064D8C7    je          0064D8F6
 0064D8C9    mov         eax,dword ptr [ebp+8]
 0064D8CC    mov         eax,dword ptr [eax+8]
 0064D8CF    mov         edx,dword ptr [eax-8]
 0064D8D2    mov         eax,dword ptr [ebp+8]
 0064D8D5    mov         eax,dword ptr [eax+8]
 0064D8D8    mov         eax,dword ptr [eax-4]
 0064D8DB    mov         eax,dword ptr [eax+20]
 0064D8DE    call        GetInt64Prop
 0064D8E3    mov         ecx,dword ptr [ebp+8]
 0064D8E6    cmp         edx,dword ptr [ecx-4]
>0064D8E9    jne         0064D8EE
 0064D8EB    cmp         eax,dword ptr [ecx-8]
 0064D8EE    sete        al
 0064D8F1    mov         byte ptr [ebp-1],al
>0064D8F4    jmp         0064D909
 0064D8F6    mov         eax,dword ptr [ebp+8]
 0064D8F9    cmp         dword ptr [eax-4],0
>0064D8FD    jne         0064D903
 0064D8FF    cmp         dword ptr [eax-8],0
 0064D903    sete        al
 0064D906    mov         byte ptr [ebp-1],al
 0064D909    mov         al,byte ptr [ebp-1]
 0064D90C    pop         ecx
 0064D90D    pop         ebp
 0064D90E    ret
end;*}

//0064D910
procedure WriteInt64Prop;
begin
{*
 0064D910    push        ebp
 0064D911    mov         ebp,esp
 0064D913    add         esp,0FFFFFFF8
 0064D916    mov         eax,dword ptr [ebp+8]
 0064D919    mov         edx,dword ptr [eax-8]
 0064D91C    mov         eax,dword ptr [ebp+8]
 0064D91F    mov         eax,dword ptr [eax-10]
 0064D922    call        GetInt64Prop
 0064D927    mov         dword ptr [ebp-8],eax
 0064D92A    mov         dword ptr [ebp-4],edx
 0064D92D    push        ebp
 0064D92E    call        0064D8B4
 0064D933    pop         ecx
 0064D934    test        al,al
>0064D936    jne         0064D953
 0064D938    mov         eax,dword ptr [ebp+8]
 0064D93B    push        eax
 0064D93C    call        WritePropPath
 0064D941    pop         ecx
 0064D942    push        dword ptr [ebp-4]
 0064D945    push        dword ptr [ebp-8]
 0064D948    mov         eax,dword ptr [ebp+8]
 0064D94B    mov         eax,dword ptr [eax-4]
 0064D94E    call        0064D2B0
 0064D953    pop         ecx
 0064D954    pop         ecx
 0064D955    pop         ebp
 0064D956    ret
*}
end;

//0064D958
function IsDefault:Boolean;
begin
{*
 0064D958    push        ebp
 0064D959    mov         ebp,esp
 0064D95B    add         esp,0FFFFFFF8
 0064D95E    xor         eax,eax
 0064D960    mov         dword ptr [ebp-8],eax
 0064D963    xor         eax,eax
 0064D965    push        ebp
 0064D966    push        64D9DA
 0064D96B    push        dword ptr fs:[eax]
 0064D96E    mov         dword ptr fs:[eax],esp
 0064D971    mov         eax,dword ptr [ebp+8]
 0064D974    mov         eax,dword ptr [eax+8]
 0064D977    push        eax
 0064D978    call        AncestorValid
 0064D97D    pop         ecx
 0064D97E    test        al,al
>0064D980    je          0064D9B3
 0064D982    lea         ecx,[ebp-8]
 0064D985    mov         eax,dword ptr [ebp+8]
 0064D988    mov         eax,dword ptr [eax+8]
 0064D98B    mov         edx,dword ptr [eax-8]
 0064D98E    mov         eax,dword ptr [ebp+8]
 0064D991    mov         eax,dword ptr [eax+8]
 0064D994    mov         eax,dword ptr [eax-4]
 0064D997    mov         eax,dword ptr [eax+20]
 0064D99A    call        GetWideStrProp
 0064D99F    mov         edx,dword ptr [ebp-8]
 0064D9A2    mov         eax,dword ptr [ebp+8]
 0064D9A5    mov         eax,dword ptr [eax-4]
 0064D9A8    call        @WStrCmp
 0064D9AD    sete        byte ptr [ebp-1]
>0064D9B1    jmp         0064D9C4
 0064D9B3    mov         eax,dword ptr [ebp+8]
 0064D9B6    mov         eax,dword ptr [eax-4]
 0064D9B9    xor         edx,edx
 0064D9BB    call        @WStrCmp
 0064D9C0    sete        byte ptr [ebp-1]
 0064D9C4    xor         eax,eax
 0064D9C6    pop         edx
 0064D9C7    pop         ecx
 0064D9C8    pop         ecx
 0064D9C9    mov         dword ptr fs:[eax],edx
 0064D9CC    push        64D9E1
 0064D9D1    lea         eax,[ebp-8]
 0064D9D4    call        @WStrClr
 0064D9D9    ret
>0064D9DA    jmp         @HandleFinally
>0064D9DF    jmp         0064D9D1
 0064D9E1    mov         al,byte ptr [ebp-1]
 0064D9E4    pop         ecx
 0064D9E5    pop         ecx
 0064D9E6    pop         ebp
 0064D9E7    ret
*}
end;

//0064D9E8
procedure WriteStrProp;
begin
{*
 0064D9E8    push        ebp
 0064D9E9    mov         ebp,esp
 0064D9EB    push        0
 0064D9ED    xor         eax,eax
 0064D9EF    push        ebp
 0064D9F0    push        64DA48
 0064D9F5    push        dword ptr fs:[eax]
 0064D9F8    mov         dword ptr fs:[eax],esp
 0064D9FB    lea         ecx,[ebp-4]
 0064D9FE    mov         eax,dword ptr [ebp+8]
 0064DA01    mov         edx,dword ptr [eax-8]
 0064DA04    mov         eax,dword ptr [ebp+8]
 0064DA07    mov         eax,dword ptr [eax-10]
 0064DA0A    call        GetWideStrProp
 0064DA0F    push        ebp
 0064DA10    call        IsDefault
 0064DA15    pop         ecx
 0064DA16    test        al,al
>0064DA18    jne         0064DA32
 0064DA1A    mov         eax,dword ptr [ebp+8]
 0064DA1D    push        eax
 0064DA1E    call        WritePropPath
 0064DA23    pop         ecx
 0064DA24    mov         eax,dword ptr [ebp+8]
 0064DA27    mov         eax,dword ptr [eax-4]
 0064DA2A    mov         edx,dword ptr [ebp-4]
 0064DA2D    call        TWriter.WriteWideString
 0064DA32    xor         eax,eax
 0064DA34    pop         edx
 0064DA35    pop         ecx
 0064DA36    pop         ecx
 0064DA37    mov         dword ptr fs:[eax],edx
 0064DA3A    push        64DA4F
 0064DA3F    lea         eax,[ebp-4]
 0064DA42    call        @WStrClr
 0064DA47    ret
>0064DA48    jmp         @HandleFinally
>0064DA4D    jmp         0064DA3F
 0064DA4F    pop         ecx
 0064DA50    pop         ebp
 0064DA51    ret
*}
end;

//0064DA54
{*function sub_0064DA54(?:?; ?:?):?;
begin
 0064DA54    push        ebp
 0064DA55    mov         ebp,esp
 0064DA57    add         esp,0FFFFFFF4
 0064DA5A    mov         dword ptr [ebp-8],edx
 0064DA5D    mov         dword ptr [ebp-4],eax
 0064DA60    mov         byte ptr [ebp-9],1
 0064DA64    cmp         dword ptr [ebp-4],0
>0064DA68    je          0064DA81
 0064DA6A    mov         eax,dword ptr [ebp-4]
 0064DA6D    cmp         eax,dword ptr [ebp-8]
>0064DA70    je          0064DA85
 0064DA72    mov         eax,dword ptr [ebp-4]
 0064DA75    mov         eax,dword ptr [eax+4]
 0064DA78    mov         dword ptr [ebp-4],eax
 0064DA7B    cmp         dword ptr [ebp-4],0
>0064DA7F    jne         0064DA6A
 0064DA81    mov         byte ptr [ebp-9],0
 0064DA85    mov         al,byte ptr [ebp-9]
 0064DA88    mov         esp,ebp
 0064DA8A    pop         ebp
 0064DA8B    ret
end;*}

//0064DA8C
function GetComponentValue(Component:TComponent):AnsiString;
begin
{*
 0064DA8C    push        ebp
 0064DA8D    mov         ebp,esp
 0064DA8F    add         esp,0FFFFFFF4
 0064DA92    xor         ecx,ecx
 0064DA94    mov         dword ptr [ebp-0C],ecx
 0064DA97    mov         dword ptr [ebp-8],edx
 0064DA9A    mov         dword ptr [ebp-4],eax
 0064DA9D    xor         eax,eax
 0064DA9F    push        ebp
 0064DAA0    push        64DBBD
 0064DAA5    push        dword ptr fs:[eax]
 0064DAA8    mov         dword ptr fs:[eax],esp
 0064DAAB    mov         eax,dword ptr [ebp+8]
 0064DAAE    mov         eax,dword ptr [eax-4]
 0064DAB1    mov         eax,dword ptr [eax+1C]
 0064DAB4    mov         edx,dword ptr [ebp-4]
 0064DAB7    cmp         eax,dword ptr [edx+4]
>0064DABA    jne         0064DACF
 0064DABC    mov         eax,dword ptr [ebp-8]
 0064DABF    mov         edx,dword ptr [ebp-4]
 0064DAC2    mov         edx,dword ptr [edx+8]
 0064DAC5    call        @LStrAsg
>0064DACA    jmp         0064DBA7
 0064DACF    mov         eax,dword ptr [ebp+8]
 0064DAD2    mov         eax,dword ptr [eax-4]
 0064DAD5    mov         eax,dword ptr [eax+1C]
 0064DAD8    cmp         eax,dword ptr [ebp-4]
>0064DADB    jne         0064DAEF
 0064DADD    mov         eax,dword ptr [ebp-8]
 0064DAE0    mov         edx,64DBD0;'Owner'
 0064DAE5    call        @LStrAsg
>0064DAEA    jmp         0064DBA7
 0064DAEF    mov         eax,dword ptr [ebp-4]
 0064DAF2    cmp         dword ptr [eax+4],0
>0064DAF6    je          0064DB81
 0064DAFC    mov         eax,dword ptr [ebp-4]
 0064DAFF    mov         eax,dword ptr [eax+4]
 0064DB02    cmp         dword ptr [eax+8],0
>0064DB06    je          0064DB81
 0064DB08    mov         eax,dword ptr [ebp-4]
 0064DB0B    cmp         dword ptr [eax+8],0
>0064DB0F    je          0064DB81
 0064DB11    mov         eax,dword ptr [ebp+8]
 0064DB14    push        eax
 0064DB15    mov         eax,dword ptr [ebp+8]
 0064DB18    mov         eax,dword ptr [eax-4]
 0064DB1B    mov         edx,dword ptr [eax+1C]
 0064DB1E    mov         eax,dword ptr [ebp-4]
 0064DB21    mov         eax,dword ptr [eax+4]
 0064DB24    call        0064DA54
 0064DB29    pop         ecx
 0064DB2A    test        al,al
>0064DB2C    je          0064DB5E
 0064DB2E    mov         eax,dword ptr [ebp+8]
 0064DB31    push        eax
 0064DB32    lea         edx,[ebp-0C]
 0064DB35    mov         eax,dword ptr [ebp-4]
 0064DB38    mov         eax,dword ptr [eax+4]
 0064DB3B    call        GetComponentValue
 0064DB40    pop         ecx
 0064DB41    push        dword ptr [ebp-0C]
 0064DB44    push        64DBE0;'.'
 0064DB49    mov         eax,dword ptr [ebp-4]
 0064DB4C    push        dword ptr [eax+8]
 0064DB4F    mov         eax,dword ptr [ebp-8]
 0064DB52    mov         edx,3
 0064DB57    call        @LStrCatN
>0064DB5C    jmp         0064DBA7
 0064DB5E    mov         eax,dword ptr [ebp-4]
 0064DB61    mov         eax,dword ptr [eax+4]
 0064DB64    push        dword ptr [eax+8]
 0064DB67    push        64DBE0;'.'
 0064DB6C    mov         eax,dword ptr [ebp-4]
 0064DB6F    push        dword ptr [eax+8]
 0064DB72    mov         eax,dword ptr [ebp-8]
 0064DB75    mov         edx,3
 0064DB7A    call        @LStrCatN
>0064DB7F    jmp         0064DBA7
 0064DB81    mov         eax,dword ptr [ebp-4]
 0064DB84    cmp         dword ptr [eax+8],0
>0064DB88    je          0064DB9F
 0064DB8A    mov         eax,dword ptr [ebp-8]
 0064DB8D    mov         ecx,64DBEC;'.Owner'
 0064DB92    mov         edx,dword ptr [ebp-4]
 0064DB95    mov         edx,dword ptr [edx+8]
 0064DB98    call        @LStrCat3
>0064DB9D    jmp         0064DBA7
 0064DB9F    mov         eax,dword ptr [ebp-8]
 0064DBA2    call        @LStrClr
 0064DBA7    xor         eax,eax
 0064DBA9    pop         edx
 0064DBAA    pop         ecx
 0064DBAB    pop         ecx
 0064DBAC    mov         dword ptr fs:[eax],edx
 0064DBAF    push        64DBC4
 0064DBB4    lea         eax,[ebp-0C]
 0064DBB7    call        @LStrClr
 0064DBBC    ret
>0064DBBD    jmp         @HandleFinally
>0064DBC2    jmp         0064DBB4
 0064DBC4    mov         esp,ebp
 0064DBC6    pop         ebp
 0064DBC7    ret
*}
end;

//0064DBF4
{*function sub_0064DBF4(?:Longint; ?:?; ?:?):?;
begin
 0064DBF4    push        ebp
 0064DBF5    mov         ebp,esp
 0064DBF7    add         esp,0FFFFFFF4
 0064DBFA    mov         dword ptr [ebp-8],edx
 0064DBFD    mov         dword ptr [ebp-4],eax
 0064DC00    cmp         dword ptr [ebp-4],0
>0064DC04    je          0064DC43
 0064DC06    mov         eax,dword ptr [ebp+8]
 0064DC09    mov         eax,dword ptr [eax-4]
 0064DC0C    mov         eax,dword ptr [eax+28]
 0064DC0F    mov         edx,dword ptr [ebp-4]
 0064DC12    cmp         eax,dword ptr [edx+4]
>0064DC15    jne         0064DC43
 0064DC17    cmp         dword ptr [ebp-8],0
>0064DC1B    je          0064DC43
 0064DC1D    mov         eax,dword ptr [ebp+8]
 0064DC20    mov         eax,dword ptr [eax-4]
 0064DC23    mov         eax,dword ptr [eax+18]
 0064DC26    mov         edx,dword ptr [ebp-8]
 0064DC29    cmp         eax,dword ptr [edx+4]
>0064DC2C    jne         0064DC43
 0064DC2E    mov         eax,dword ptr [ebp-8]
 0064DC31    mov         edx,dword ptr [eax+8]
 0064DC34    mov         eax,dword ptr [ebp-4]
 0064DC37    mov         eax,dword ptr [eax+8]
 0064DC3A    call        SameText
 0064DC3F    test        al,al
>0064DC41    jne         0064DC47
 0064DC43    xor         eax,eax
>0064DC45    jmp         0064DC49
 0064DC47    mov         al,1
 0064DC49    mov         byte ptr [ebp-9],al
 0064DC4C    mov         al,byte ptr [ebp-9]
 0064DC4F    mov         esp,ebp
 0064DC51    pop         ebp
 0064DC52    ret
end;*}

//0064DC54
{*function sub_0064DC54(?:?):?;
begin
 0064DC54    push        ebp
 0064DC55    mov         ebp,esp
 0064DC57    add         esp,0FFFFFFF8
 0064DC5A    xor         eax,eax
 0064DC5C    mov         dword ptr [ebp-8],eax
 0064DC5F    mov         eax,dword ptr [ebp+8]
 0064DC62    mov         eax,dword ptr [eax+8]
 0064DC65    push        eax
 0064DC66    call        AncestorValid
 0064DC6B    pop         ecx
 0064DC6C    test        al,al
>0064DC6E    je          0064DCB0
 0064DC70    mov         eax,dword ptr [ebp+8]
 0064DC73    mov         eax,dword ptr [eax+8]
 0064DC76    mov         edx,dword ptr [eax-8]
 0064DC79    mov         eax,dword ptr [ebp+8]
 0064DC7C    mov         eax,dword ptr [eax+8]
 0064DC7F    mov         eax,dword ptr [eax-4]
 0064DC82    mov         eax,dword ptr [eax+20]
 0064DC85    call        GetOrdProp
 0064DC8A    mov         dword ptr [ebp-8],eax
 0064DC8D    mov         eax,dword ptr [ebp+8]
 0064DC90    mov         eax,dword ptr [eax+8]
 0064DC93    push        eax
 0064DC94    mov         eax,dword ptr [ebp+8]
 0064DC97    mov         edx,dword ptr [eax-4]
 0064DC9A    mov         eax,dword ptr [ebp-8]
 0064DC9D    call        0064DBF4
 0064DCA2    pop         ecx
 0064DCA3    test        al,al
>0064DCA5    je          0064DCB0
 0064DCA7    mov         eax,dword ptr [ebp+8]
 0064DCAA    mov         eax,dword ptr [eax-4]
 0064DCAD    mov         dword ptr [ebp-8],eax
 0064DCB0    mov         eax,dword ptr [ebp+8]
 0064DCB3    mov         eax,dword ptr [eax-4]
 0064DCB6    cmp         eax,dword ptr [ebp-8]
 0064DCB9    sete        byte ptr [ebp-1]
 0064DCBD    mov         al,byte ptr [ebp-1]
 0064DCC0    pop         ecx
 0064DCC1    pop         ecx
 0064DCC2    pop         ebp
 0064DCC3    ret
end;*}

//0064DCC4
procedure WriteObjectProp;
begin
{*
 0064DCC4    push        ebp
 0064DCC5    mov         ebp,esp
 0064DCC7    xor         ecx,ecx
 0064DCC9    push        ecx
 0064DCCA    push        ecx
 0064DCCB    push        ecx
 0064DCCC    push        ecx
 0064DCCD    push        ecx
 0064DCCE    xor         eax,eax
 0064DCD0    push        ebp
 0064DCD1    push        64DEDC
 0064DCD6    push        dword ptr fs:[eax]
 0064DCD9    mov         dword ptr fs:[eax],esp
 0064DCDC    mov         eax,dword ptr [ebp+8]
 0064DCDF    mov         edx,dword ptr [eax-8]
 0064DCE2    mov         eax,dword ptr [ebp+8]
 0064DCE5    mov         eax,dword ptr [eax-10]
 0064DCE8    call        GetOrdProp
 0064DCED    mov         dword ptr [ebp-4],eax
 0064DCF0    cmp         dword ptr [ebp-4],0
>0064DCF4    jne         0064DD1D
 0064DCF6    push        ebp
 0064DCF7    call        0064DC54
 0064DCFC    pop         ecx
 0064DCFD    test        al,al
>0064DCFF    jne         0064DD1D
 0064DD01    mov         eax,dword ptr [ebp+8]
 0064DD04    push        eax
 0064DD05    call        WritePropPath
 0064DD0A    pop         ecx
 0064DD0B    mov         eax,dword ptr [ebp+8]
 0064DD0E    mov         eax,dword ptr [eax-4]
 0064DD11    mov         dl,0D
 0064DD13    call        TWriter.WriteValue
>0064DD18    jmp         0064DEC1
 0064DD1D    mov         eax,dword ptr [ebp-4]
 0064DD20    mov         edx,dword ptr ds:[6423D4];TPersistent
 0064DD26    call        @IsClass
 0064DD2B    test        al,al
>0064DD2D    je          0064DEC1
 0064DD33    mov         eax,dword ptr [ebp-4]
 0064DD36    mov         edx,dword ptr ds:[643204];TComponent
 0064DD3C    call        @IsClass
 0064DD41    test        al,al
>0064DD43    je          0064DD94
 0064DD45    mov         eax,dword ptr [ebp-4]
 0064DD48    test        byte ptr [eax+24],4
>0064DD4C    jne         0064DD94
 0064DD4E    push        ebp
 0064DD4F    call        0064DC54
 0064DD54    pop         ecx
 0064DD55    test        al,al
>0064DD57    jne         0064DEC1
 0064DD5D    mov         eax,dword ptr [ebp+8]
 0064DD60    push        eax
 0064DD61    lea         edx,[ebp-10]
 0064DD64    mov         eax,dword ptr [ebp-4]
 0064DD67    call        GetComponentValue
 0064DD6C    pop         ecx
 0064DD6D    cmp         dword ptr [ebp-10],0
>0064DD71    je          0064DEC1
 0064DD77    mov         eax,dword ptr [ebp+8]
 0064DD7A    push        eax
 0064DD7B    call        WritePropPath
 0064DD80    pop         ecx
 0064DD81    mov         eax,dword ptr [ebp+8]
 0064DD84    mov         eax,dword ptr [eax-4]
 0064DD87    mov         edx,dword ptr [ebp-10]
 0064DD8A    call        TWriter.WriteIdent
>0064DD8F    jmp         0064DEC1
 0064DD94    mov         eax,dword ptr [ebp+8]
 0064DD97    mov         eax,dword ptr [eax-4]
 0064DD9A    mov         eax,dword ptr [eax+20]
 0064DD9D    mov         dword ptr [ebp-8],eax
 0064DDA0    lea         eax,[ebp-0C]
 0064DDA3    mov         edx,dword ptr [ebp+8]
 0064DDA6    mov         edx,dword ptr [edx-4]
 0064DDA9    mov         edx,dword ptr [edx+2C]
 0064DDAC    call        @LStrLAsg
 0064DDB1    xor         eax,eax
 0064DDB3    push        ebp
 0064DDB4    push        64DE58
 0064DDB9    push        dword ptr fs:[eax]
 0064DDBC    mov         dword ptr fs:[eax],esp
 0064DDBF    mov         eax,dword ptr [ebp+8]
 0064DDC2    mov         eax,dword ptr [eax-4]
 0064DDC5    push        dword ptr [eax+2C]
 0064DDC8    lea         eax,[ebp-14]
 0064DDCB    mov         edx,dword ptr [ebp+8]
 0064DDCE    mov         edx,dword ptr [edx-8]
 0064DDD1    add         edx,1A
 0064DDD4    call        @LStrFromString
 0064DDD9    push        dword ptr [ebp-14]
 0064DDDC    push        64DEF0;'.'
 0064DDE1    mov         eax,dword ptr [ebp+8]
 0064DDE4    mov         eax,dword ptr [eax-4]
 0064DDE7    add         eax,2C
 0064DDEA    mov         edx,3
 0064DDEF    call        @LStrCatN
 0064DDF4    mov         eax,dword ptr [ebp+8]
 0064DDF7    push        eax
 0064DDF8    call        AncestorValid
 0064DDFD    pop         ecx
 0064DDFE    test        al,al
>0064DE00    je          0064DE1F
 0064DE02    mov         eax,dword ptr [ebp+8]
 0064DE05    mov         edx,dword ptr [eax-8]
 0064DE08    mov         eax,dword ptr [ebp+8]
 0064DE0B    mov         eax,dword ptr [eax-4]
 0064DE0E    mov         eax,dword ptr [eax+20]
 0064DE11    call        GetOrdProp
 0064DE16    mov         edx,dword ptr [ebp+8]
 0064DE19    mov         edx,dword ptr [edx-4]
 0064DE1C    mov         dword ptr [edx+20],eax
 0064DE1F    mov         eax,dword ptr [ebp+8]
 0064DE22    mov         eax,dword ptr [eax-4]
 0064DE25    mov         edx,dword ptr [ebp-4]
 0064DE28    call        TWriter.WriteProperties
 0064DE2D    xor         eax,eax
 0064DE2F    pop         edx
 0064DE30    pop         ecx
 0064DE31    pop         ecx
 0064DE32    mov         dword ptr fs:[eax],edx
 0064DE35    push        64DE5F
 0064DE3A    mov         eax,dword ptr [ebp+8]
 0064DE3D    mov         eax,dword ptr [eax-4]
 0064DE40    mov         edx,dword ptr [ebp-8]
 0064DE43    mov         dword ptr [eax+20],edx
 0064DE46    mov         eax,dword ptr [ebp+8]
 0064DE49    mov         eax,dword ptr [eax-4]
 0064DE4C    add         eax,2C
 0064DE4F    mov         edx,dword ptr [ebp-0C]
 0064DE52    call        @LStrAsg
 0064DE57    ret
>0064DE58    jmp         @HandleFinally
>0064DE5D    jmp         0064DE3A
 0064DE5F    mov         eax,dword ptr [ebp-4]
 0064DE62    mov         edx,dword ptr ds:[6425DC];TCollection
 0064DE68    call        @IsClass
 0064DE6D    test        al,al
>0064DE6F    je          0064DEC1
 0064DE71    mov         eax,dword ptr [ebp+8]
 0064DE74    push        eax
 0064DE75    call        AncestorValid
 0064DE7A    pop         ecx
 0064DE7B    test        al,al
>0064DE7D    je          0064DEB4
 0064DE7F    mov         eax,dword ptr [ebp+8]
 0064DE82    mov         eax,dword ptr [eax-4]
 0064DE85    mov         eax,dword ptr [eax+28]
 0064DE88    push        eax
 0064DE89    mov         eax,dword ptr [ebp+8]
 0064DE8C    mov         edx,dword ptr [eax-8]
 0064DE8F    mov         eax,dword ptr [ebp+8]
 0064DE92    mov         eax,dword ptr [eax-4]
 0064DE95    mov         eax,dword ptr [eax+20]
 0064DE98    call        GetOrdProp
 0064DE9D    mov         edx,eax
 0064DE9F    mov         eax,dword ptr [ebp+8]
 0064DEA2    mov         eax,dword ptr [eax-4]
 0064DEA5    mov         ecx,dword ptr [eax+1C]
 0064DEA8    mov         eax,dword ptr [ebp-4]
 0064DEAB    call        CollectionsEqual
 0064DEB0    test        al,al
>0064DEB2    jne         0064DEC1
 0064DEB4    mov         eax,dword ptr [ebp+8]
 0064DEB7    push        eax
 0064DEB8    mov         eax,dword ptr [ebp-4]
 0064DEBB    call        WriteCollectionProp
 0064DEC0    pop         ecx
 0064DEC1    xor         eax,eax
 0064DEC3    pop         edx
 0064DEC4    pop         ecx
 0064DEC5    pop         ecx
 0064DEC6    mov         dword ptr fs:[eax],edx
 0064DEC9    push        64DEE3
 0064DECE    lea         eax,[ebp-14]
 0064DED1    mov         edx,3
 0064DED6    call        @LStrArrayClr
 0064DEDB    ret
>0064DEDC    jmp         @HandleFinally
>0064DEE1    jmp         0064DECE
 0064DEE3    mov         esp,ebp
 0064DEE5    pop         ebp
 0064DEE6    ret
*}
end;

//0064DEF4
{*function sub_0064DEF4(?:?):?;
begin
 0064DEF4    push        ebp
 0064DEF5    mov         ebp,esp
 0064DEF7    push        0
 0064DEF9    push        0
 0064DEFB    push        0
 0064DEFD    xor         eax,eax
 0064DEFF    push        ebp
 0064DF00    push        64DFAE
 0064DF05    push        dword ptr fs:[eax]
 0064DF08    mov         dword ptr fs:[eax],esp
 0064DF0B    mov         eax,dword ptr [ebp+8]
 0064DF0E    cmp         dword ptr [eax-4],0
 0064DF12    sete        byte ptr [ebp-1]
 0064DF16    mov         eax,dword ptr [ebp+8]
 0064DF19    mov         eax,dword ptr [eax+8]
 0064DF1C    push        eax
 0064DF1D    call        AncestorValid
 0064DF22    pop         ecx
 0064DF23    test        al,al
>0064DF25    je          0064DF90
 0064DF27    lea         ecx,[ebp-8]
 0064DF2A    mov         eax,dword ptr [ebp+8]
 0064DF2D    mov         eax,dword ptr [eax+8]
 0064DF30    mov         edx,dword ptr [eax-8]
 0064DF33    mov         eax,dword ptr [ebp+8]
 0064DF36    mov         eax,dword ptr [eax+8]
 0064DF39    mov         eax,dword ptr [eax-4]
 0064DF3C    mov         eax,dword ptr [eax+20]
 0064DF3F    call        GetInterfaceProp
 0064DF44    mov         eax,dword ptr [ebp+8]
 0064DF47    mov         eax,dword ptr [eax-4]
 0064DF4A    cmp         eax,dword ptr [ebp-8]
 0064DF4D    sete        byte ptr [ebp-1]
 0064DF51    cmp         byte ptr [ebp-1],0
>0064DF55    jne         0064DF90
 0064DF57    lea         eax,[ebp-0C]
 0064DF5A    call        @IntfClear
 0064DF5F    mov         ecx,eax
 0064DF61    mov         edx,64DFBC;['{E28B1858-EC86-4559-8FCD-6B4F824151ED}']
 0064DF66    mov         eax,dword ptr [ebp-8]
 0064DF69    call        Supports
 0064DF6E    test        al,al
>0064DF70    je          0064DF90
 0064DF72    mov         eax,dword ptr [ebp+8]
 0064DF75    mov         eax,dword ptr [eax+8]
 0064DF78    push        eax
 0064DF79    mov         eax,dword ptr [ebp-0C]
 0064DF7C    mov         edx,dword ptr [eax]
 0064DF7E    call        dword ptr [edx+0C]
 0064DF81    mov         edx,dword ptr [ebp+8]
 0064DF84    mov         edx,dword ptr [edx-8]
 0064DF87    call        0064DBF4
 0064DF8C    pop         ecx
 0064DF8D    mov         byte ptr [ebp-1],al
 0064DF90    xor         eax,eax
 0064DF92    pop         edx
 0064DF93    pop         ecx
 0064DF94    pop         ecx
 0064DF95    mov         dword ptr fs:[eax],edx
 0064DF98    push        64DFB5
 0064DF9D    lea         eax,[ebp-0C]
 0064DFA0    call        @IntfClear
 0064DFA5    lea         eax,[ebp-8]
 0064DFA8    call        @IntfClear
 0064DFAD    ret
>0064DFAE    jmp         @HandleFinally
>0064DFB3    jmp         0064DF9D
 0064DFB5    mov         al,byte ptr [ebp-1]
 0064DFB8    mov         esp,ebp
 0064DFBA    pop         ebp
 0064DFBB    ret
end;*}

//0064DFCC
procedure WriteInterfaceProp;
begin
{*
 0064DFCC    push        ebp
 0064DFCD    mov         ebp,esp
 0064DFCF    xor         ecx,ecx
 0064DFD1    push        ecx
 0064DFD2    push        ecx
 0064DFD3    push        ecx
 0064DFD4    push        ecx
 0064DFD5    push        ecx
 0064DFD6    xor         eax,eax
 0064DFD8    push        ebp
 0064DFD9    push        64E0CF
 0064DFDE    push        dword ptr fs:[eax]
 0064DFE1    mov         dword ptr fs:[eax],esp
 0064DFE4    lea         ecx,[ebp-4]
 0064DFE7    mov         eax,dword ptr [ebp+8]
 0064DFEA    mov         edx,dword ptr [eax-8]
 0064DFED    mov         eax,dword ptr [ebp+8]
 0064DFF0    mov         eax,dword ptr [eax-10]
 0064DFF3    call        GetInterfaceProp
 0064DFF8    cmp         dword ptr [ebp-4],0
>0064DFFC    je          0064E019
 0064DFFE    lea         eax,[ebp-0C]
 0064E001    call        @IntfClear
 0064E006    mov         ecx,eax
 0064E008    mov         edx,64E0DC
 0064E00D    mov         eax,dword ptr [ebp-4]
 0064E010    call        Supports
 0064E015    test        al,al
>0064E017    jne         0064E05D
 0064E019    mov         eax,dword ptr [ebp+8]
 0064E01C    push        eax
 0064E01D    call        AncestorValid
 0064E022    pop         ecx
 0064E023    test        al,al
>0064E025    je          0064E0A1
 0064E027    lea         ecx,[ebp-14]
 0064E02A    mov         eax,dword ptr [ebp+8]
 0064E02D    mov         edx,dword ptr [eax-8]
 0064E030    mov         eax,dword ptr [ebp+8]
 0064E033    mov         eax,dword ptr [eax-4]
 0064E036    mov         eax,dword ptr [eax+20]
 0064E039    call        GetInterfaceProp
 0064E03E    cmp         dword ptr [ebp-14],0
>0064E042    je          0064E0A1
 0064E044    mov         eax,dword ptr [ebp+8]
 0064E047    push        eax
 0064E048    call        WritePropPath
 0064E04D    pop         ecx
 0064E04E    mov         eax,dword ptr [ebp+8]
 0064E051    mov         eax,dword ptr [eax-4]
 0064E054    mov         dl,0D
 0064E056    call        TWriter.WriteValue
>0064E05B    jmp         0064E0A1
 0064E05D    mov         eax,dword ptr [ebp-0C]
 0064E060    mov         edx,dword ptr [eax]
 0064E062    call        dword ptr [edx+0C]
 0064E065    mov         dword ptr [ebp-8],eax
 0064E068    push        ebp
 0064E069    call        0064DEF4
 0064E06E    pop         ecx
 0064E06F    test        al,al
>0064E071    jne         0064E0A1
 0064E073    mov         eax,dword ptr [ebp+8]
 0064E076    push        eax
 0064E077    lea         edx,[ebp-10]
 0064E07A    mov         eax,dword ptr [ebp-8]
 0064E07D    call        GetComponentValue
 0064E082    pop         ecx
 0064E083    cmp         dword ptr [ebp-10],0
>0064E087    je          0064E0A1
 0064E089    mov         eax,dword ptr [ebp+8]
 0064E08C    push        eax
 0064E08D    call        WritePropPath
 0064E092    pop         ecx
 0064E093    mov         eax,dword ptr [ebp+8]
 0064E096    mov         eax,dword ptr [eax-4]
 0064E099    mov         edx,dword ptr [ebp-10]
 0064E09C    call        TWriter.WriteIdent
 0064E0A1    xor         eax,eax
 0064E0A3    pop         edx
 0064E0A4    pop         ecx
 0064E0A5    pop         ecx
 0064E0A6    mov         dword ptr fs:[eax],edx
 0064E0A9    push        64E0D6
 0064E0AE    lea         eax,[ebp-14]
 0064E0B1    call        @IntfClear
 0064E0B6    lea         eax,[ebp-10]
 0064E0B9    call        @LStrClr
 0064E0BE    lea         eax,[ebp-0C]
 0064E0C1    call        @IntfClear
 0064E0C6    lea         eax,[ebp-4]
 0064E0C9    call        @IntfClear
 0064E0CE    ret
>0064E0CF    jmp         @HandleFinally
>0064E0D4    jmp         0064E0AE
 0064E0D6    mov         esp,ebp
 0064E0D8    pop         ebp
 0064E0D9    ret
*}
end;

//0064E0EC
{*function sub_0064E0EC(?:?):?;
begin
 0064E0EC    push        ebp
 0064E0ED    mov         ebp,esp
 0064E0EF    add         esp,0FFFFFEF0
 0064E0F5    xor         eax,eax
 0064E0F7    mov         dword ptr [ebp-8],eax
 0064E0FA    mov         eax,dword ptr [ebp+8]
 0064E0FD    mov         eax,dword ptr [eax+8]
 0064E100    push        eax
 0064E101    call        AncestorValid
 0064E106    pop         ecx
 0064E107    test        al,al
>0064E109    je          0064E12E
 0064E10B    lea         ecx,[ebp-10]
 0064E10E    mov         eax,dword ptr [ebp+8]
 0064E111    mov         eax,dword ptr [eax+8]
 0064E114    mov         edx,dword ptr [eax-8]
 0064E117    mov         eax,dword ptr [ebp+8]
 0064E11A    mov         eax,dword ptr [eax+8]
 0064E11D    mov         eax,dword ptr [eax-4]
 0064E120    mov         eax,dword ptr [eax+20]
 0064E123    call        GetMethodProp
 0064E128    mov         eax,dword ptr [ebp-10]
 0064E12B    mov         dword ptr [ebp-8],eax
 0064E12E    mov         eax,dword ptr [ebp+8]
 0064E131    mov         eax,dword ptr [eax-8]
 0064E134    cmp         eax,dword ptr [ebp-8]
>0064E137    je          0064E16E
 0064E139    mov         eax,dword ptr [ebp+8]
 0064E13C    cmp         dword ptr [eax-8],0
>0064E140    je          0064E16A
 0064E142    lea         ecx,[ebp-110]
 0064E148    mov         eax,dword ptr [ebp+8]
 0064E14B    mov         edx,dword ptr [eax-8]
 0064E14E    mov         eax,dword ptr [ebp+8]
 0064E151    mov         eax,dword ptr [eax+8]
 0064E154    mov         eax,dword ptr [eax-4]
 0064E157    mov         eax,dword ptr [eax+1C]
 0064E15A    mov         eax,dword ptr [eax]
 0064E15C    call        TObject.MethodName
 0064E161    cmp         byte ptr [ebp-110],0
>0064E168    je          0064E16E
 0064E16A    xor         eax,eax
>0064E16C    jmp         0064E170
 0064E16E    mov         al,1
 0064E170    mov         byte ptr [ebp-1],al
 0064E173    mov         al,byte ptr [ebp-1]
 0064E176    mov         esp,ebp
 0064E178    pop         ebp
 0064E179    ret
end;*}

//0064E17C
procedure WriteMethodProp;
begin
{*
 0064E17C    push        ebp
 0064E17D    mov         ebp,esp
 0064E17F    add         esp,0FFFFFEF4
 0064E185    xor         eax,eax
 0064E187    mov         dword ptr [ebp-0C],eax
 0064E18A    xor         eax,eax
 0064E18C    push        ebp
 0064E18D    push        64E221
 0064E192    push        dword ptr fs:[eax]
 0064E195    mov         dword ptr fs:[eax],esp
 0064E198    lea         ecx,[ebp-8]
 0064E19B    mov         eax,dword ptr [ebp+8]
 0064E19E    mov         edx,dword ptr [eax-8]
 0064E1A1    mov         eax,dword ptr [ebp+8]
 0064E1A4    mov         eax,dword ptr [eax-10]
 0064E1A7    call        GetMethodProp
 0064E1AC    push        ebp
 0064E1AD    call        0064E0EC
 0064E1B2    pop         ecx
 0064E1B3    test        al,al
>0064E1B5    jne         0064E20B
 0064E1B7    mov         eax,dword ptr [ebp+8]
 0064E1BA    push        eax
 0064E1BB    call        WritePropPath
 0064E1C0    pop         ecx
 0064E1C1    cmp         dword ptr [ebp-8],0
>0064E1C5    jne         0064E1D6
 0064E1C7    mov         eax,dword ptr [ebp+8]
 0064E1CA    mov         eax,dword ptr [eax-4]
 0064E1CD    mov         dl,0D
 0064E1CF    call        TWriter.WriteValue
>0064E1D4    jmp         0064E20B
 0064E1D6    lea         ecx,[ebp-10C]
 0064E1DC    mov         eax,dword ptr [ebp+8]
 0064E1DF    mov         eax,dword ptr [eax-4]
 0064E1E2    mov         eax,dword ptr [eax+1C]
 0064E1E5    mov         eax,dword ptr [eax]
 0064E1E7    mov         edx,dword ptr [ebp-8]
 0064E1EA    call        TObject.MethodName
 0064E1EF    lea         edx,[ebp-10C]
 0064E1F5    lea         eax,[ebp-0C]
 0064E1F8    call        @LStrFromString
 0064E1FD    mov         edx,dword ptr [ebp-0C]
 0064E200    mov         eax,dword ptr [ebp+8]
 0064E203    mov         eax,dword ptr [eax-4]
 0064E206    call        TWriter.WriteIdent
 0064E20B    xor         eax,eax
 0064E20D    pop         edx
 0064E20E    pop         ecx
 0064E20F    pop         ecx
 0064E210    mov         dword ptr fs:[eax],edx
 0064E213    push        64E228
 0064E218    lea         eax,[ebp-0C]
 0064E21B    call        @LStrClr
 0064E220    ret
>0064E221    jmp         @HandleFinally
>0064E226    jmp         0064E218
 0064E228    mov         esp,ebp
 0064E22A    pop         ebp
 0064E22B    ret
*}
end;

//0064E22C
{*function sub_0064E22C(?:?):?;
begin
 0064E22C    push        ebp
 0064E22D    mov         ebp,esp
 0064E22F    xor         ecx,ecx
 0064E231    push        ecx
 0064E232    push        ecx
 0064E233    push        ecx
 0064E234    push        ecx
 0064E235    push        ecx
 0064E236    xor         eax,eax
 0064E238    push        ebp
 0064E239    push        64E2A9
 0064E23E    push        dword ptr fs:[eax]
 0064E241    mov         dword ptr fs:[eax],esp
 0064E244    mov         eax,dword ptr [ebp+8]
 0064E247    mov         eax,dword ptr [eax+8]
 0064E24A    push        eax
 0064E24B    call        AncestorValid
 0064E250    pop         ecx
 0064E251    test        al,al
>0064E253    je          0064E285
 0064E255    lea         ecx,[ebp-14]
 0064E258    mov         eax,dword ptr [ebp+8]
 0064E25B    mov         eax,dword ptr [eax+8]
 0064E25E    mov         edx,dword ptr [eax-8]
 0064E261    mov         eax,dword ptr [ebp+8]
 0064E264    mov         eax,dword ptr [eax+8]
 0064E267    mov         eax,dword ptr [eax-4]
 0064E26A    mov         eax,dword ptr [eax+20]
 0064E26D    call        GetVariantProp
 0064E272    lea         edx,[ebp-14]
 0064E275    mov         eax,dword ptr [ebp+8]
 0064E278    add         eax,0FFFFFFF0
 0064E27B    call        006674F4
 0064E280    mov         byte ptr [ebp-1],al
>0064E283    jmp         0064E293
 0064E285    mov         eax,dword ptr [ebp+8]
 0064E288    add         eax,0FFFFFFF0
 0064E28B    call        0066736C
 0064E290    mov         byte ptr [ebp-1],al
 0064E293    xor         eax,eax
 0064E295    pop         edx
 0064E296    pop         ecx
 0064E297    pop         ecx
 0064E298    mov         dword ptr fs:[eax],edx
 0064E29B    push        64E2B0
 0064E2A0    lea         eax,[ebp-14]
 0064E2A3    call        @VarClr
 0064E2A8    ret
>0064E2A9    jmp         @HandleFinally
>0064E2AE    jmp         0064E2A0
 0064E2B0    mov         al,byte ptr [ebp-1]
 0064E2B3    mov         esp,ebp
 0064E2B5    pop         ebp
 0064E2B6    ret
end;*}

//0064E2B8
procedure WriteVariantProp;
begin
{*
 0064E2B8    push        ebp
 0064E2B9    mov         ebp,esp
 0064E2BB    xor         ecx,ecx
 0064E2BD    push        ecx
 0064E2BE    push        ecx
 0064E2BF    push        ecx
 0064E2C0    push        ecx
 0064E2C1    xor         eax,eax
 0064E2C3    push        ebp
 0064E2C4    push        64E31C
 0064E2C9    push        dword ptr fs:[eax]
 0064E2CC    mov         dword ptr fs:[eax],esp
 0064E2CF    lea         ecx,[ebp-10]
 0064E2D2    mov         eax,dword ptr [ebp+8]
 0064E2D5    mov         edx,dword ptr [eax-8]
 0064E2D8    mov         eax,dword ptr [ebp+8]
 0064E2DB    mov         eax,dword ptr [eax-10]
 0064E2DE    call        GetVariantProp
 0064E2E3    push        ebp
 0064E2E4    call        0064E22C
 0064E2E9    pop         ecx
 0064E2EA    test        al,al
>0064E2EC    jne         0064E306
 0064E2EE    mov         eax,dword ptr [ebp+8]
 0064E2F1    push        eax
 0064E2F2    call        WritePropPath
 0064E2F7    pop         ecx
 0064E2F8    lea         edx,[ebp-10]
 0064E2FB    mov         eax,dword ptr [ebp+8]
 0064E2FE    mov         eax,dword ptr [eax-4]
 0064E301    call        TWriter.WriteVariant
 0064E306    xor         eax,eax
 0064E308    pop         edx
 0064E309    pop         ecx
 0064E30A    pop         ecx
 0064E30B    mov         dword ptr fs:[eax],edx
 0064E30E    push        64E323
 0064E313    lea         eax,[ebp-10]
 0064E316    call        @VarClr
 0064E31B    ret
>0064E31C    jmp         @HandleFinally
>0064E321    jmp         0064E313
 0064E323    mov         esp,ebp
 0064E325    pop         ebp
 0064E326    ret
*}
end;

//0064E328
procedure TWriter.WriteProperty(Instance:TPersistent; PropInfo:PPropInfo);
begin
{*
 0064E328    push        ebp
 0064E329    mov         ebp,esp
 0064E32B    add         esp,0FFFFFFF0
 0064E32E    mov         dword ptr [ebp-8],ecx
 0064E331    mov         dword ptr [ebp-10],edx
 0064E334    mov         dword ptr [ebp-4],eax
 0064E337    mov         eax,dword ptr [ebp-8]
 0064E33A    cmp         dword ptr [eax+4],0
>0064E33E    je          0064E43A
 0064E344    mov         eax,dword ptr [ebp-8]
 0064E347    cmp         dword ptr [eax+8],0
>0064E34B    jne         0064E390
 0064E34D    mov         eax,dword ptr [ebp-8]
 0064E350    mov         eax,dword ptr [eax]
 0064E352    mov         eax,dword ptr [eax]
 0064E354    cmp         byte ptr [eax],7
>0064E357    jne         0064E43A
 0064E35D    mov         edx,dword ptr [ebp-8]
 0064E360    mov         eax,dword ptr [ebp-10]
 0064E363    call        GetOrdProp
 0064E368    mov         edx,dword ptr ds:[643204];TComponent
 0064E36E    call        @IsClass
 0064E373    test        al,al
>0064E375    je          0064E43A
 0064E37B    mov         edx,dword ptr [ebp-8]
 0064E37E    mov         eax,dword ptr [ebp-10]
 0064E381    call        GetOrdProp
 0064E386    test        byte ptr [eax+24],4
>0064E38A    je          0064E43A
 0064E390    mov         eax,dword ptr [ebp-8]
 0064E393    mov         eax,dword ptr [eax]
 0064E395    mov         eax,dword ptr [eax]
 0064E397    mov         dword ptr [ebp-0C],eax
 0064E39A    mov         eax,dword ptr [ebp-0C]
 0064E39D    movzx       eax,byte ptr [eax]
 0064E3A0    cmp         eax,10
>0064E3A3    ja          0064E43A
 0064E3A9    jmp         dword ptr [eax*4+64E3B0]
 0064E3A9    dd          0064E43A
 0064E3A9    dd          0064E3F4
 0064E3A9    dd          0064E3F4
 0064E3A9    dd          0064E3F4
 0064E3A9    dd          0064E3FD
 0064E3A9    dd          0064E406
 0064E3A9    dd          0064E3F4
 0064E3A9    dd          0064E40F
 0064E3A9    dd          0064E418
 0064E3A9    dd          0064E43A
 0064E3A9    dd          0064E406
 0064E3A9    dd          0064E406
 0064E3A9    dd          0064E421
 0064E3A9    dd          0064E43A
 0064E3A9    dd          0064E43A
 0064E3A9    dd          0064E433
 0064E3A9    dd          0064E42A
 0064E3F4    push        ebp
 0064E3F5    call        WriteOrdProp
 0064E3FA    pop         ecx
>0064E3FB    jmp         0064E43A
 0064E3FD    push        ebp
 0064E3FE    call        WriteFloatProp
 0064E403    pop         ecx
>0064E404    jmp         0064E43A
 0064E406    push        ebp
 0064E407    call        WriteStrProp
 0064E40C    pop         ecx
>0064E40D    jmp         0064E43A
 0064E40F    push        ebp
 0064E410    call        WriteObjectProp
 0064E415    pop         ecx
>0064E416    jmp         0064E43A
 0064E418    push        ebp
 0064E419    call        WriteMethodProp
 0064E41E    pop         ecx
>0064E41F    jmp         0064E43A
 0064E421    push        ebp
 0064E422    call        WriteVariantProp
 0064E427    pop         ecx
>0064E428    jmp         0064E43A
 0064E42A    push        ebp
 0064E42B    call        WriteInt64Prop
 0064E430    pop         ecx
>0064E431    jmp         0064E43A
 0064E433    push        ebp
 0064E434    call        WriteInterfaceProp
 0064E439    pop         ecx
 0064E43A    mov         esp,ebp
 0064E43C    pop         ebp
 0064E43D    ret
*}
end;

//0064E440
procedure TWriter.WriteVariant(const Value:Variant);
begin
{*
 0064E440    push        ebp
 0064E441    mov         ebp,esp
 0064E443    add         esp,0FFFFFEC4
 0064E449    push        ebx
 0064E44A    push        esi
 0064E44B    push        edi
 0064E44C    xor         ecx,ecx
 0064E44E    mov         dword ptr [ebp-3C],ecx
 0064E451    mov         dword ptr [ebp-38],ecx
 0064E454    mov         dword ptr [ebp-34],ecx
 0064E457    mov         dword ptr [ebp-30],ecx
 0064E45A    mov         dword ptr [ebp-2C],ecx
 0064E45D    mov         dword ptr [ebp-20],ecx
 0064E460    mov         dword ptr [ebp-8],edx
 0064E463    mov         dword ptr [ebp-4],eax
 0064E466    xor         eax,eax
 0064E468    push        ebp
 0064E469    push        64E82B
 0064E46E    push        dword ptr fs:[eax]
 0064E471    mov         dword ptr fs:[eax],esp
 0064E474    mov         eax,dword ptr [ebp-8]
 0064E477    call        006678A0
 0064E47C    test        al,al
>0064E47E    je          0064E497
 0064E480    mov         ecx,dword ptr ds:[6EA0DC]
 0064E486    mov         dl,1
 0064E488    mov         eax,[00641F6C];EWriteError
 0064E48D    call        Exception.Create
 0064E492    call        @RaiseExcept
 0064E497    mov         eax,dword ptr [ebp-8]
 0064E49A    call        00667324
 0064E49F    and         ax,0FFF
 0064E4A3    movzx       eax,ax
 0064E4A6    cmp         eax,7
>0064E4A9    jg          0064E4DD
>0064E4AB    je          0064E5D1
 0064E4B1    cmp         eax,6
>0064E4B4    ja          0064E638
 0064E4BA    jmp         dword ptr [eax*4+64E4C1]
 0064E4BA    dd          0064E512
 0064E4BA    dd          0064E521
 0064E4BA    dd          0064E566
 0064E4BA    dd          0064E566
 0064E4BA    dd          0064E57D
 0064E4BA    dd          0064E599
 0064E4BA    dd          0064E5B5
 0064E4DD    cmp         eax,10
>0064E4E0    jge         0064E4F5
 0064E4E2    sub         eax,8
>0064E4E5    je          0064E530
 0064E4E7    sub         eax,3
>0064E4EA    je          0064E5ED
>0064E4F0    jmp         0064E638
 0064E4F5    add         eax,0FFFFFFF0
 0064E4F8    sub         eax,3
>0064E4FB    jb          0064E566
 0064E4FD    sub         eax,2
>0064E500    jb          0064E617
 0064E506    sub         eax,0EB
>0064E50B    je          0064E54B
>0064E50D    jmp         0064E638
 0064E512    mov         dl,0D
 0064E514    mov         eax,dword ptr [ebp-4]
 0064E517    call        TWriter.WriteValue
>0064E51C    jmp         0064E7F0
 0064E521    xor         edx,edx
 0064E523    mov         eax,dword ptr [ebp-4]
 0064E526    call        TWriter.WriteValue
>0064E52B    jmp         0064E7F0
 0064E530    lea         eax,[ebp-2C]
 0064E533    mov         edx,dword ptr [ebp-8]
 0064E536    call        0066D55C
 0064E53B    mov         edx,dword ptr [ebp-2C]
 0064E53E    mov         eax,dword ptr [ebp-4]
 0064E541    call        TWriter.WriteWideString
>0064E546    jmp         0064E7F0
 0064E54B    lea         eax,[ebp-30]
 0064E54E    mov         edx,dword ptr [ebp-8]
 0064E551    call        0066D554
 0064E556    mov         edx,dword ptr [ebp-30]
 0064E559    mov         eax,dword ptr [ebp-4]
 0064E55C    call        TWriter.WriteString
>0064E561    jmp         0064E7F0
 0064E566    mov         eax,dword ptr [ebp-8]
 0064E569    call        0066D52C
 0064E56E    mov         edx,eax
 0064E570    mov         eax,dword ptr [ebp-4]
 0064E573    call        TWriter.WriteInteger
>0064E578    jmp         0064E7F0
 0064E57D    mov         eax,dword ptr [ebp-8]
 0064E580    call        0066D544
 0064E585    add         esp,0FFFFFFFC
 0064E588    fstp        dword ptr [esp]
 0064E58B    wait
 0064E58C    mov         eax,dword ptr [ebp-4]
 0064E58F    call        0064D0E0
>0064E594    jmp         0064E7F0
 0064E599    mov         eax,dword ptr [ebp-8]
 0064E59C    call        0066D544
 0064E5A1    add         esp,0FFFFFFF4
 0064E5A4    fstp        tbyte ptr [esp]
 0064E5A7    wait
 0064E5A8    mov         eax,dword ptr [ebp-4]
 0064E5AB    call        TWriter.WriteFloat
>0064E5B0    jmp         0064E7F0
 0064E5B5    mov         eax,dword ptr [ebp-8]
 0064E5B8    call        0066D54C
 0064E5BD    add         esp,0FFFFFFF8
 0064E5C0    fistp       qword ptr [esp]
 0064E5C3    wait
 0064E5C4    mov         eax,dword ptr [ebp-4]
 0064E5C7    call        0064D108
>0064E5CC    jmp         0064E7F0
 0064E5D1    mov         eax,dword ptr [ebp-8]
 0064E5D4    call        0066D544
 0064E5D9    add         esp,0FFFFFFF8
 0064E5DC    fstp        qword ptr [esp]
 0064E5DF    wait
 0064E5E0    mov         eax,dword ptr [ebp-4]
 0064E5E3    call        0064D130
>0064E5E8    jmp         0064E7F0
 0064E5ED    mov         eax,dword ptr [ebp-8]
 0064E5F0    call        0066D53C
 0064E5F5    test        al,al
>0064E5F7    je          0064E608
 0064E5F9    mov         dl,9
 0064E5FB    mov         eax,dword ptr [ebp-4]
 0064E5FE    call        TWriter.WriteValue
>0064E603    jmp         0064E7F0
 0064E608    mov         dl,8
 0064E60A    mov         eax,dword ptr [ebp-4]
 0064E60D    call        TWriter.WriteValue
>0064E612    jmp         0064E7F0
 0064E617    mov         eax,dword ptr [ebp-8]
 0064E61A    call        0066D534
 0064E61F    mov         dword ptr [ebp-28],eax
 0064E622    mov         dword ptr [ebp-24],edx
 0064E625    push        dword ptr [ebp-24]
 0064E628    push        dword ptr [ebp-28]
 0064E62B    mov         eax,dword ptr [ebp-4]
 0064E62E    call        0064D2B0
>0064E633    jmp         0064E7F0
 0064E638    xor         eax,eax
 0064E63A    push        ebp
 0064E63B    push        64E7CF
 0064E640    push        dword ptr fs:[eax]
 0064E643    mov         dword ptr fs:[eax],esp
 0064E646    lea         edx,[ebp-0C]
 0064E649    mov         eax,dword ptr [ebp-8]
 0064E64C    mov         ax,word ptr [eax]
 0064E64F    call        006689A0
 0064E654    test        al,al
>0064E656    je          0064E67E
 0064E658    lea         eax,[ebp-20]
 0064E65B    call        @IntfClear
 0064E660    push        eax
 0064E661    lea         eax,[ebp-34]
 0064E664    mov         edx,dword ptr [ebp-8]
 0064E667    call        0066D564
 0064E66C    mov         eax,dword ptr [ebp-34]
 0064E66F    mov         edx,64E83C
 0064E674    pop         ecx
 0064E675    call        Supports
 0064E67A    test        al,al
>0064E67C    jne         0064E699
 0064E67E    lea         eax,[ebp-38]
 0064E681    mov         edx,dword ptr [ebp-8]
 0064E684    call        0066D554
 0064E689    mov         edx,dword ptr [ebp-38]
 0064E68C    mov         eax,dword ptr [ebp-4]
 0064E68F    call        TWriter.WriteString
>0064E694    jmp         0064E7C5
 0064E699    mov         dl,1
 0064E69B    mov         eax,[00642BA0];TMemoryStream
 0064E6A0    call        TObject.Create
 0064E6A5    mov         dword ptr [ebp-10],eax
 0064E6A8    mov         dl,1
 0064E6AA    mov         eax,[00642BA0];TMemoryStream
 0064E6AF    call        TObject.Create
 0064E6B4    mov         dword ptr [ebp-14],eax
 0064E6B7    xor         eax,eax
 0064E6B9    push        ebp
 0064E6BA    push        64E7BE
 0064E6BF    push        dword ptr fs:[eax]
 0064E6C2    mov         dword ptr fs:[eax],esp
 0064E6C5    push        400
 0064E6CA    mov         ecx,dword ptr [ebp-10]
 0064E6CD    mov         dl,1
 0064E6CF    mov         eax,[00642FC0];TWriter
 0064E6D4    call        TFiler.Create
 0064E6D9    mov         dword ptr [ebp-18],eax
 0064E6DC    xor         eax,eax
 0064E6DE    push        ebp
 0064E6DF    push        64E763
 0064E6E4    push        dword ptr fs:[eax]
 0064E6E7    mov         dword ptr fs:[eax],esp
 0064E6EA    mov         edx,dword ptr [ebp-8]
 0064E6ED    mov         ecx,dword ptr [ebp-14]
 0064E6F0    mov         eax,dword ptr [ebp-20]
 0064E6F3    mov         ebx,dword ptr [eax]
 0064E6F5    call        dword ptr [ebx+10]
 0064E6F8    mov         eax,dword ptr [ebp-14]
 0064E6FB    call        TStream.GetSize
 0064E700    mov         dword ptr [ebp-1C],eax
 0064E703    lea         edx,[ebp-13C]
 0064E709    mov         eax,dword ptr [ebp-0C]
 0064E70C    mov         eax,dword ptr [eax]
 0064E70E    call        TObject.ClassName
 0064E713    lea         edx,[ebp-13C]
 0064E719    lea         eax,[ebp-3C]
 0064E71C    call        @LStrFromString
 0064E721    mov         edx,dword ptr [ebp-3C]
 0064E724    mov         eax,dword ptr [ebp-18]
 0064E727    call        TWriter.WriteString
 0064E72C    lea         edx,[ebp-1C]
 0064E72F    mov         ecx,4
 0064E734    mov         eax,dword ptr [ebp-18]
 0064E737    call        TWriter.Write
 0064E73C    mov         eax,dword ptr [ebp-14]
 0064E73F    mov         edx,dword ptr [eax+4]
 0064E742    mov         ecx,dword ptr [ebp-1C]
 0064E745    mov         eax,dword ptr [ebp-18]
 0064E748    call        TWriter.Write
 0064E74D    xor         eax,eax
 0064E74F    pop         edx
 0064E750    pop         ecx
 0064E751    pop         ecx
 0064E752    mov         dword ptr fs:[eax],edx
 0064E755    push        64E76A
 0064E75A    mov         eax,dword ptr [ebp-18]
 0064E75D    call        TObject.Free
 0064E762    ret
>0064E763    jmp         @HandleFinally
>0064E768    jmp         0064E75A
 0064E76A    mov         eax,dword ptr [ebp-10]
 0064E76D    call        TStream.GetSize
 0064E772    mov         dword ptr [ebp-1C],eax
 0064E775    mov         dl,0A
 0064E777    mov         eax,dword ptr [ebp-4]
 0064E77A    call        TWriter.WriteValue
 0064E77F    lea         edx,[ebp-1C]
 0064E782    mov         ecx,4
 0064E787    mov         eax,dword ptr [ebp-4]
 0064E78A    call        TWriter.Write
 0064E78F    mov         eax,dword ptr [ebp-10]
 0064E792    mov         edx,dword ptr [eax+4]
 0064E795    mov         ecx,dword ptr [ebp-1C]
 0064E798    mov         eax,dword ptr [ebp-4]
 0064E79B    call        TWriter.Write
 0064E7A0    xor         eax,eax
 0064E7A2    pop         edx
 0064E7A3    pop         ecx
 0064E7A4    pop         ecx
 0064E7A5    mov         dword ptr fs:[eax],edx
 0064E7A8    push        64E7C5
 0064E7AD    mov         eax,dword ptr [ebp-14]
 0064E7B0    call        TObject.Free
 0064E7B5    mov         eax,dword ptr [ebp-10]
 0064E7B8    call        TObject.Free
 0064E7BD    ret
>0064E7BE    jmp         @HandleFinally
>0064E7C3    jmp         0064E7AD
 0064E7C5    xor         eax,eax
 0064E7C7    pop         edx
 0064E7C8    pop         ecx
 0064E7C9    pop         ecx
 0064E7CA    mov         dword ptr fs:[eax],edx
>0064E7CD    jmp         0064E7F0
>0064E7CF    jmp         @HandleAnyException
 0064E7D4    mov         ecx,dword ptr ds:[6EA0DC]
 0064E7DA    mov         dl,1
 0064E7DC    mov         eax,[00641F6C];EWriteError
 0064E7E1    call        Exception.Create
 0064E7E6    call        @RaiseExcept
 0064E7EB    call        @DoneExcept
 0064E7F0    xor         eax,eax
 0064E7F2    pop         edx
 0064E7F3    pop         ecx
 0064E7F4    pop         ecx
 0064E7F5    mov         dword ptr fs:[eax],edx
 0064E7F8    push        64E832
 0064E7FD    lea         eax,[ebp-3C]
 0064E800    mov         edx,2
 0064E805    call        @LStrArrayClr
 0064E80A    lea         eax,[ebp-34]
 0064E80D    call        @IntfClear
 0064E812    lea         eax,[ebp-30]
 0064E815    call        @LStrClr
 0064E81A    lea         eax,[ebp-2C]
 0064E81D    call        @WStrClr
 0064E822    lea         eax,[ebp-20]
 0064E825    call        @IntfClear
 0064E82A    ret
>0064E82B    jmp         @HandleFinally
>0064E830    jmp         0064E7FD
 0064E832    pop         edi
 0064E833    pop         esi
 0064E834    pop         ebx
 0064E835    mov         esp,ebp
 0064E837    pop         ebp
 0064E838    ret
*}
end;

//0064E84C
procedure TWriter.WritePropName(const PropName:AnsiString);
begin
{*
 0064E84C    push        ebp
 0064E84D    mov         ebp,esp
 0064E84F    add         esp,0FFFFFFF4
 0064E852    xor         ecx,ecx
 0064E854    mov         dword ptr [ebp-0C],ecx
 0064E857    mov         dword ptr [ebp-8],edx
 0064E85A    mov         dword ptr [ebp-4],eax
 0064E85D    xor         eax,eax
 0064E85F    push        ebp
 0064E860    push        64E89D
 0064E865    push        dword ptr fs:[eax]
 0064E868    mov         dword ptr fs:[eax],esp
 0064E86B    lea         eax,[ebp-0C]
 0064E86E    mov         ecx,dword ptr [ebp-8]
 0064E871    mov         edx,dword ptr [ebp-4]
 0064E874    mov         edx,dword ptr [edx+2C]
 0064E877    call        @LStrCat3
 0064E87C    mov         edx,dword ptr [ebp-0C]
 0064E87F    mov         eax,dword ptr [ebp-4]
 0064E882    call        0064E8C4
 0064E887    xor         eax,eax
 0064E889    pop         edx
 0064E88A    pop         ecx
 0064E88B    pop         ecx
 0064E88C    mov         dword ptr fs:[eax],edx
 0064E88F    push        64E8A4
 0064E894    lea         eax,[ebp-0C]
 0064E897    call        @LStrClr
 0064E89C    ret
>0064E89D    jmp         @HandleFinally
>0064E8A2    jmp         0064E894
 0064E8A4    mov         esp,ebp
 0064E8A6    pop         ebp
 0064E8A7    ret
*}
end;

//0064E8A8
procedure sub_0064E8A8(?:TWriter);
begin
{*
 0064E8A8    push        ebp
 0064E8A9    mov         ebp,esp
 0064E8AB    push        ecx
 0064E8AC    mov         dword ptr [ebp-4],eax
 0064E8AF    mov         edx,6E4838;gvar_006E4838
 0064E8B4    mov         ecx,4
 0064E8B9    mov         eax,dword ptr [ebp-4]
 0064E8BC    call        TWriter.Write
 0064E8C1    pop         ecx
 0064E8C2    pop         ebp
 0064E8C3    ret
*}
end;

//0064E8C4
procedure sub_0064E8C4(?:TWriter; ?:AnsiString);
begin
{*
 0064E8C4    push        ebp
 0064E8C5    mov         ebp,esp
 0064E8C7    add         esp,0FFFFFFF4
 0064E8CA    mov         dword ptr [ebp-8],edx
 0064E8CD    mov         dword ptr [ebp-4],eax
 0064E8D0    mov         eax,dword ptr [ebp-8]
 0064E8D3    call        @LStrLen
 0064E8D8    mov         dword ptr [ebp-0C],eax
 0064E8DB    cmp         dword ptr [ebp-0C],0FF
>0064E8E2    jle         0064E8EB
 0064E8E4    mov         dword ptr [ebp-0C],0FF
 0064E8EB    lea         edx,[ebp-0C]
 0064E8EE    mov         ecx,1
 0064E8F3    mov         eax,dword ptr [ebp-4]
 0064E8F6    call        TWriter.Write
 0064E8FB    mov         eax,dword ptr [ebp-8]
 0064E8FE    call        @LStrToPChar
 0064E903    mov         edx,eax
 0064E905    mov         ecx,dword ptr [ebp-0C]
 0064E908    mov         eax,dword ptr [ebp-4]
 0064E90B    call        TWriter.Write
 0064E910    mov         esp,ebp
 0064E912    pop         ebp
 0064E913    ret
*}
end;

//0064E914
{*procedure sub_0064E914(?:?; ?:?; ?:?);
begin
 0064E914    push        ebp
 0064E915    mov         ebp,esp
 0064E917    add         esp,0FFFFFFF0
 0064E91A    mov         dword ptr [ebp-0C],ecx
 0064E91D    mov         dword ptr [ebp-8],edx
 0064E920    mov         dword ptr [ebp-4],eax
 0064E923    mov         eax,dword ptr [ebp-8]
 0064E926    mov         edx,dword ptr [ebp-0C]
 0064E929    call        @LStrCmp
>0064E92E    je          0064E965
 0064E930    mov         eax,dword ptr [ebp-0C]
 0064E933    call        @LStrLen
 0064E938    mov         dword ptr [ebp-10],eax
 0064E93B    mov         dl,14
 0064E93D    mov         eax,dword ptr [ebp-4]
 0064E940    call        TWriter.WriteValue
 0064E945    lea         edx,[ebp-10]
 0064E948    mov         ecx,4
 0064E94D    mov         eax,dword ptr [ebp-4]
 0064E950    call        TWriter.Write
 0064E955    mov         edx,dword ptr [ebp-0C]
 0064E958    mov         ecx,dword ptr [ebp-10]
 0064E95B    mov         eax,dword ptr [ebp-4]
 0064E95E    call        TWriter.Write
>0064E963    jmp         0064E9BD
 0064E965    mov         eax,dword ptr [ebp-8]
 0064E968    call        @LStrLen
 0064E96D    mov         dword ptr [ebp-10],eax
 0064E970    cmp         dword ptr [ebp-10],0FF
>0064E977    jg          0064E995
 0064E979    mov         dl,6
 0064E97B    mov         eax,dword ptr [ebp-4]
 0064E97E    call        TWriter.WriteValue
 0064E983    lea         edx,[ebp-10]
 0064E986    mov         ecx,1
 0064E98B    mov         eax,dword ptr [ebp-4]
 0064E98E    call        TWriter.Write
>0064E993    jmp         0064E9AF
 0064E995    mov         dl,0C
 0064E997    mov         eax,dword ptr [ebp-4]
 0064E99A    call        TWriter.WriteValue
 0064E99F    lea         edx,[ebp-10]
 0064E9A2    mov         ecx,4
 0064E9A7    mov         eax,dword ptr [ebp-4]
 0064E9AA    call        TWriter.Write
 0064E9AF    mov         edx,dword ptr [ebp-8]
 0064E9B2    mov         ecx,dword ptr [ebp-10]
 0064E9B5    mov         eax,dword ptr [ebp-4]
 0064E9B8    call        TWriter.Write
 0064E9BD    mov         esp,ebp
 0064E9BF    pop         ebp
 0064E9C0    ret
end;*}

//0064E9C4
procedure TWriter.WriteString(const Value:AnsiString);
begin
{*
 0064E9C4    push        ebp
 0064E9C5    mov         ebp,esp
 0064E9C7    add         esp,0FFFFFFF4
 0064E9CA    xor         ecx,ecx
 0064E9CC    mov         dword ptr [ebp-0C],ecx
 0064E9CF    mov         dword ptr [ebp-8],edx
 0064E9D2    mov         dword ptr [ebp-4],eax
 0064E9D5    xor         eax,eax
 0064E9D7    push        ebp
 0064E9D8    push        64EA12
 0064E9DD    push        dword ptr fs:[eax]
 0064E9E0    mov         dword ptr fs:[eax],esp
 0064E9E3    lea         edx,[ebp-0C]
 0064E9E6    mov         eax,dword ptr [ebp-8]
 0064E9E9    call        AnsiToUtf8
 0064E9EE    mov         ecx,dword ptr [ebp-0C]
 0064E9F1    mov         edx,dword ptr [ebp-8]
 0064E9F4    mov         eax,dword ptr [ebp-4]
 0064E9F7    call        0064E914
 0064E9FC    xor         eax,eax
 0064E9FE    pop         edx
 0064E9FF    pop         ecx
 0064EA00    pop         ecx
 0064EA01    mov         dword ptr fs:[eax],edx
 0064EA04    push        64EA19
 0064EA09    lea         eax,[ebp-0C]
 0064EA0C    call        @LStrClr
 0064EA11    ret
>0064EA12    jmp         @HandleFinally
>0064EA17    jmp         0064EA09
 0064EA19    mov         esp,ebp
 0064EA1B    pop         ebp
 0064EA1C    ret
*}
end;

//0064EA20
procedure TWriter.WriteWideString(const Value:WideString);
begin
{*
 0064EA20    push        ebp
 0064EA21    mov         ebp,esp
 0064EA23    add         esp,0FFFFFFEC
 0064EA26    push        ebx
 0064EA27    xor         ecx,ecx
 0064EA29    mov         dword ptr [ebp-14],ecx
 0064EA2C    mov         dword ptr [ebp-10],ecx
 0064EA2F    mov         dword ptr [ebp-8],edx
 0064EA32    mov         dword ptr [ebp-4],eax
 0064EA35    xor         eax,eax
 0064EA37    push        ebp
 0064EA38    push        64EAD4
 0064EA3D    push        dword ptr fs:[eax]
 0064EA40    mov         dword ptr fs:[eax],esp
 0064EA43    lea         edx,[ebp-10]
 0064EA46    mov         eax,dword ptr [ebp-8]
 0064EA49    call        UTF8Encode
 0064EA4E    mov         eax,dword ptr [ebp-10]
 0064EA51    call        @LStrLen
 0064EA56    mov         ebx,eax
 0064EA58    mov         eax,dword ptr [ebp-8]
 0064EA5B    call        @WStrLen
 0064EA60    add         eax,eax
 0064EA62    cmp         ebx,eax
>0064EA64    jge         0064EA81
 0064EA66    lea         eax,[ebp-14]
 0064EA69    mov         edx,dword ptr [ebp-8]
 0064EA6C    call        @LStrFromWStr
 0064EA71    mov         edx,dword ptr [ebp-14]
 0064EA74    mov         ecx,dword ptr [ebp-10]
 0064EA77    mov         eax,dword ptr [ebp-4]
 0064EA7A    call        0064E914
>0064EA7F    jmp         0064EAB6
 0064EA81    mov         dl,12
 0064EA83    mov         eax,dword ptr [ebp-4]
 0064EA86    call        TWriter.WriteValue
 0064EA8B    mov         eax,dword ptr [ebp-8]
 0064EA8E    call        @WStrLen
 0064EA93    mov         dword ptr [ebp-0C],eax
 0064EA96    lea         edx,[ebp-0C]
 0064EA99    mov         ecx,4
 0064EA9E    mov         eax,dword ptr [ebp-4]
 0064EAA1    call        TWriter.Write
 0064EAA6    mov         ecx,dword ptr [ebp-0C]
 0064EAA9    add         ecx,ecx
 0064EAAB    mov         edx,dword ptr [ebp-8]
 0064EAAE    mov         eax,dword ptr [ebp-4]
 0064EAB1    call        TWriter.Write
 0064EAB6    xor         eax,eax
 0064EAB8    pop         edx
 0064EAB9    pop         ecx
 0064EABA    pop         ecx
 0064EABB    mov         dword ptr fs:[eax],edx
 0064EABE    push        64EADB
 0064EAC3    lea         eax,[ebp-14]
 0064EAC6    call        @LStrClr
 0064EACB    lea         eax,[ebp-10]
 0064EACE    call        @LStrClr
 0064EAD3    ret
>0064EAD4    jmp         @HandleFinally
>0064EAD9    jmp         0064EAC3
 0064EADB    pop         ebx
 0064EADC    mov         esp,ebp
 0064EADE    pop         ebp
 0064EADF    ret
*}
end;

//0064EAE0
procedure TWriter.WriteValue(Value:TValueType);
begin
{*
 0064EAE0    push        ebp
 0064EAE1    mov         ebp,esp
 0064EAE3    add         esp,0FFFFFFF8
 0064EAE6    mov         byte ptr [ebp-5],dl
 0064EAE9    mov         dword ptr [ebp-4],eax
 0064EAEC    lea         edx,[ebp-5]
 0064EAEF    mov         ecx,1
 0064EAF4    mov         eax,dword ptr [ebp-4]
 0064EAF7    call        TWriter.Write
 0064EAFC    pop         ecx
 0064EAFD    pop         ecx
 0064EAFE    pop         ebp
 0064EAFF    ret
*}
end;

//0064EB00
procedure BinToHex(Buffer:PChar; Text:PChar; BufSize:Integer);
begin
{*
 0064EB00    push        ebp
 0064EB01    mov         ebp,esp
 0064EB03    add         esp,0FFFFFFEC
 0064EB06    mov         dword ptr [ebp-0C],ecx
 0064EB09    mov         dword ptr [ebp-8],edx
 0064EB0C    mov         dword ptr [ebp-4],eax
 0064EB0F    mov         eax,dword ptr [ebp-0C]
 0064EB12    dec         eax
 0064EB13    test        eax,eax
>0064EB15    jl          0064EB62
 0064EB17    inc         eax
 0064EB18    mov         dword ptr [ebp-14],eax
 0064EB1B    mov         dword ptr [ebp-10],0
 0064EB22    mov         eax,dword ptr [ebp-4]
 0064EB25    mov         edx,dword ptr [ebp-10]
 0064EB28    movzx       eax,byte ptr [eax+edx]
 0064EB2C    shr         eax,4
 0064EB2F    mov         al,byte ptr [eax+6E4844]
 0064EB35    mov         edx,dword ptr [ebp-8]
 0064EB38    mov         byte ptr [edx],al
 0064EB3A    mov         eax,dword ptr [ebp-4]
 0064EB3D    mov         edx,dword ptr [ebp-10]
 0064EB40    mov         al,byte ptr [eax+edx]
 0064EB43    and         al,0F
 0064EB45    and         eax,0FF
 0064EB4A    mov         al,byte ptr [eax+6E4844]
 0064EB50    mov         edx,dword ptr [ebp-8]
 0064EB53    mov         byte ptr [edx+1],al
 0064EB56    add         dword ptr [ebp-8],2
 0064EB5A    inc         dword ptr [ebp-10]
 0064EB5D    dec         dword ptr [ebp-14]
>0064EB60    jne         0064EB22
 0064EB62    mov         esp,ebp
 0064EB64    pop         ebp
 0064EB65    ret
*}
end;

//0064EB68
{*function sub_0064EB68(?:PChar; ?:?; ?:?):?;
begin
 0064EB68    push        ebp
 0064EB69    mov         ebp,esp
 0064EB6B    add         esp,0FFFFFFEC
 0064EB6E    mov         dword ptr [ebp-0C],ecx
 0064EB71    mov         dword ptr [ebp-8],edx
 0064EB74    mov         dword ptr [ebp-4],eax
 0064EB77    mov         eax,dword ptr [ebp-0C]
 0064EB7A    mov         dword ptr [ebp-14],eax
 0064EB7D    cmp         dword ptr [ebp-14],0
>0064EB81    jle         0064EBD1
 0064EB83    mov         eax,dword ptr [ebp-4]
 0064EB86    mov         al,byte ptr [eax]
 0064EB88    add         al,0D0
 0064EB8A    sub         al,37
>0064EB8C    jae         0064EBD1
 0064EB8E    mov         eax,dword ptr [ebp-4]
 0064EB91    mov         al,byte ptr [eax+1]
 0064EB94    add         al,0D0
 0064EB96    sub         al,37
>0064EB98    jae         0064EBD1
 0064EB9A    mov         eax,dword ptr [ebp-4]
 0064EB9D    movzx       eax,byte ptr [eax]
 0064EBA0    mov         ax,word ptr [eax*2+6E47F4];gvar_006E47F4
 0064EBA8    shl         eax,4
 0064EBAB    mov         edx,dword ptr [ebp-4]
 0064EBAE    movzx       edx,byte ptr [edx+1]
 0064EBB2    mov         dx,word ptr [edx*2+6E47F4];gvar_006E47F4
 0064EBBA    add         al,dl
 0064EBBC    mov         edx,dword ptr [ebp-8]
 0064EBBF    mov         byte ptr [edx],al
 0064EBC1    inc         dword ptr [ebp-8]
 0064EBC4    add         dword ptr [ebp-4],2
 0064EBC8    dec         dword ptr [ebp-14]
 0064EBCB    cmp         dword ptr [ebp-14],0
>0064EBCF    jg          0064EB83
 0064EBD1    mov         eax,dword ptr [ebp-0C]
 0064EBD4    sub         eax,dword ptr [ebp-14]
 0064EBD7    mov         dword ptr [ebp-10],eax
 0064EBDA    mov         eax,dword ptr [ebp-10]
 0064EBDD    mov         esp,ebp
 0064EBDF    pop         ebp
 0064EBE0    ret
end;*}

//0064EBE4
procedure WriteIndent;
begin
{*
 0064EBE4    push        ebp
 0064EBE5    mov         ebp,esp
 0064EBE7    add         esp,0FFFFFFF8
 0064EBEA    mov         eax,dword ptr [ebp+8]
 0064EBED    mov         eax,dword ptr [eax-4]
 0064EBF0    test        eax,eax
>0064EBF2    jle         0064EC1B
 0064EBF4    mov         dword ptr [ebp-8],eax
 0064EBF7    mov         dword ptr [ebp-4],1
 0064EBFE    mov         edx,6E48C4
 0064EC03    mov         eax,dword ptr [ebp+8]
 0064EC06    mov         eax,dword ptr [eax-8]
 0064EC09    mov         ecx,2
 0064EC0E    call        TWriter.Write
 0064EC13    inc         dword ptr [ebp-4]
 0064EC16    dec         dword ptr [ebp-8]
>0064EC19    jne         0064EBFE
 0064EC1B    pop         ecx
 0064EC1C    pop         ecx
 0064EC1D    pop         ebp
 0064EC1E    ret
*}
end;

//0064EC20
procedure WriteStr(const S:AnsiString);
begin
{*
 0064EC20    push        ebp
 0064EC21    mov         ebp,esp
 0064EC23    push        ecx
 0064EC24    mov         dword ptr [ebp-4],eax
 0064EC27    mov         eax,dword ptr [ebp-4]
 0064EC2A    call        @LStrLen
 0064EC2F    push        eax
 0064EC30    mov         eax,dword ptr [ebp-4]
 0064EC33    call        @LStrToPChar
 0064EC38    mov         edx,eax
 0064EC3A    mov         eax,dword ptr [ebp+8]
 0064EC3D    mov         eax,dword ptr [eax-8]
 0064EC40    pop         ecx
 0064EC41    call        TWriter.Write
 0064EC46    pop         ecx
 0064EC47    pop         ebp
 0064EC48    ret
*}
end;

//0064EC4C
procedure NewLine;
begin
{*
 0064EC4C    push        ebp
 0064EC4D    mov         ebp,esp
 0064EC4F    mov         eax,dword ptr [ebp+8]
 0064EC52    push        eax
 0064EC53    mov         eax,64EC74;#13+#10
 0064EC58    call        WriteStr
 0064EC5D    pop         ecx
 0064EC5E    mov         eax,dword ptr [ebp+8]
 0064EC61    push        eax
 0064EC62    call        WriteIndent
 0064EC67    pop         ecx
 0064EC68    pop         ebp
 0064EC69    ret
*}
end;

//0064EC78
procedure ConvertHeader;
begin
{*
 0064EC78    push        ebp
 0064EC79    mov         ebp,esp
 0064EC7B    xor         ecx,ecx
 0064EC7D    push        ecx
 0064EC7E    push        ecx
 0064EC7F    push        ecx
 0064EC80    push        ecx
 0064EC81    push        ecx
 0064EC82    push        ebx
 0064EC83    xor         eax,eax
 0064EC85    push        ebp
 0064EC86    push        64EDCD
 0064EC8B    push        dword ptr fs:[eax]
 0064EC8E    mov         dword ptr fs:[eax],esp
 0064EC91    lea         ecx,[ebp-0C]
 0064EC94    lea         edx,[ebp-5]
 0064EC97    mov         eax,dword ptr [ebp+8]
 0064EC9A    mov         eax,dword ptr [eax-0C]
 0064EC9D    mov         ebx,dword ptr [eax]
 0064EC9F    call        dword ptr [ebx+24]
 0064ECA2    lea         edx,[ebp-4]
 0064ECA5    mov         eax,dword ptr [ebp+8]
 0064ECA8    mov         eax,dword ptr [eax-0C]
 0064ECAB    call        TReader.ReadStr
 0064ECB0    lea         edx,[ebp-10]
 0064ECB3    mov         eax,dword ptr [ebp+8]
 0064ECB6    mov         eax,dword ptr [eax-0C]
 0064ECB9    call        TReader.ReadStr
 0064ECBE    mov         edx,dword ptr [ebp-10]
 0064ECC1    mov         eax,dword ptr [ebp+8]
 0064ECC4    add         eax,0FFFFFFF0
 0064ECC7    call        @LStrLAsg
 0064ECCC    mov         eax,dword ptr [ebp+8]
 0064ECCF    push        eax
 0064ECD0    call        WriteIndent
 0064ECD5    pop         ecx
 0064ECD6    test        byte ptr [ebp-5],1
>0064ECDA    je          0064ECED
 0064ECDC    mov         eax,dword ptr [ebp+8]
 0064ECDF    push        eax
 0064ECE0    mov         eax,64EDE4;'inherited '
 0064ECE5    call        WriteStr
 0064ECEA    pop         ecx
>0064ECEB    jmp         0064ED13
 0064ECED    test        byte ptr [ebp-5],4
>0064ECF1    je          0064ED04
 0064ECF3    mov         eax,dword ptr [ebp+8]
 0064ECF6    push        eax
 0064ECF7    mov         eax,64EDF8;'inline '
 0064ECFC    call        WriteStr
 0064ED01    pop         ecx
>0064ED02    jmp         0064ED13
 0064ED04    mov         eax,dword ptr [ebp+8]
 0064ED07    push        eax
 0064ED08    mov         eax,64EE08;'object '
 0064ED0D    call        WriteStr
 0064ED12    pop         ecx
 0064ED13    mov         eax,dword ptr [ebp+8]
 0064ED16    cmp         dword ptr [eax-10],0
>0064ED1A    je          0064ED3B
 0064ED1C    mov         eax,dword ptr [ebp+8]
 0064ED1F    push        eax
 0064ED20    mov         eax,dword ptr [ebp+8]
 0064ED23    mov         eax,dword ptr [eax-10]
 0064ED26    call        WriteStr
 0064ED2B    pop         ecx
 0064ED2C    mov         eax,dword ptr [ebp+8]
 0064ED2F    push        eax
 0064ED30    mov         eax,64EE18;': '
 0064ED35    call        WriteStr
 0064ED3A    pop         ecx
 0064ED3B    mov         eax,dword ptr [ebp+8]
 0064ED3E    push        eax
 0064ED3F    mov         eax,dword ptr [ebp-4]
 0064ED42    call        WriteStr
 0064ED47    pop         ecx
 0064ED48    test        byte ptr [ebp-5],2
>0064ED4C    je          0064ED84
 0064ED4E    mov         eax,dword ptr [ebp+8]
 0064ED51    push        eax
 0064ED52    mov         eax,64EE24;' ['
 0064ED57    call        WriteStr
 0064ED5C    pop         ecx
 0064ED5D    mov         eax,dword ptr [ebp+8]
 0064ED60    push        eax
 0064ED61    lea         edx,[ebp-14]
 0064ED64    mov         eax,dword ptr [ebp-0C]
 0064ED67    call        IntToStr
 0064ED6C    mov         eax,dword ptr [ebp-14]
 0064ED6F    call        WriteStr
 0064ED74    pop         ecx
 0064ED75    mov         eax,dword ptr [ebp+8]
 0064ED78    push        eax
 0064ED79    mov         eax,64EE30;']'
 0064ED7E    call        WriteStr
 0064ED83    pop         ecx
 0064ED84    mov         eax,dword ptr [ebp+8]
 0064ED87    cmp         dword ptr [eax-10],0
>0064ED8B    jne         0064ED9B
 0064ED8D    mov         eax,dword ptr [ebp+8]
 0064ED90    add         eax,0FFFFFFF0
 0064ED93    mov         edx,dword ptr [ebp-4]
 0064ED96    call        @LStrLAsg
 0064ED9B    mov         eax,dword ptr [ebp+8]
 0064ED9E    push        eax
 0064ED9F    mov         eax,64EE3C;#13+#10
 0064EDA4    call        WriteStr
 0064EDA9    pop         ecx
 0064EDAA    xor         eax,eax
 0064EDAC    pop         edx
 0064EDAD    pop         ecx
 0064EDAE    pop         ecx
 0064EDAF    mov         dword ptr fs:[eax],edx
 0064EDB2    push        64EDD4
 0064EDB7    lea         eax,[ebp-14]
 0064EDBA    mov         edx,2
 0064EDBF    call        @LStrArrayClr
 0064EDC4    lea         eax,[ebp-4]
 0064EDC7    call        @LStrClr
 0064EDCC    ret
>0064EDCD    jmp         @HandleFinally
>0064EDD2    jmp         0064EDB7
 0064EDD4    pop         ebx
 0064EDD5    mov         esp,ebp
 0064EDD7    pop         ebp
 0064EDD8    ret
*}
end;

//0064EE40
{*procedure sub_0064EE40(?:?);
begin
 0064EE40    push        ebp
 0064EE41    mov         ebp,esp
 0064EE43    add         esp,0FFFFFF94
 0064EE46    mov         eax,dword ptr [ebp+8]
 0064EE49    mov         eax,dword ptr [eax-0C]
 0064EE4C    call        TReader.ReadValue
 0064EE51    mov         eax,dword ptr [ebp+8]
 0064EE54    push        eax
 0064EE55    mov         eax,64EF0C;'{'
 0064EE5A    call        WriteStr
 0064EE5F    pop         ecx
 0064EE60    mov         eax,dword ptr [ebp+8]
 0064EE63    inc         dword ptr [eax-4]
 0064EE66    lea         edx,[ebp-0C]
 0064EE69    mov         eax,dword ptr [ebp+8]
 0064EE6C    mov         eax,dword ptr [eax-0C]
 0064EE6F    mov         ecx,4
 0064EE74    call        TReader.Read
 0064EE79    cmp         dword ptr [ebp-0C],20
 0064EE7D    setge       byte ptr [ebp-1]
 0064EE81    cmp         dword ptr [ebp-0C],0
>0064EE85    jle         0064EEEA
 0064EE87    cmp         byte ptr [ebp-1],0
>0064EE8B    je          0064EE97
 0064EE8D    mov         eax,dword ptr [ebp+8]
 0064EE90    push        eax
 0064EE91    call        NewLine
 0064EE96    pop         ecx
 0064EE97    cmp         dword ptr [ebp-0C],20
>0064EE9B    jl          0064EEA6
 0064EE9D    mov         dword ptr [ebp-8],20
>0064EEA4    jmp         0064EEAC
 0064EEA6    mov         eax,dword ptr [ebp-0C]
 0064EEA9    mov         dword ptr [ebp-8],eax
 0064EEAC    lea         edx,[ebp-2C]
 0064EEAF    mov         eax,dword ptr [ebp+8]
 0064EEB2    mov         eax,dword ptr [eax-0C]
 0064EEB5    mov         ecx,dword ptr [ebp-8]
 0064EEB8    call        TReader.Read
 0064EEBD    lea         edx,[ebp-6C]
 0064EEC0    lea         eax,[ebp-2C]
 0064EEC3    mov         ecx,dword ptr [ebp-8]
 0064EEC6    call        BinToHex
 0064EECB    mov         ecx,dword ptr [ebp-8]
 0064EECE    add         ecx,ecx
 0064EED0    lea         edx,[ebp-6C]
 0064EED3    mov         eax,dword ptr [ebp+8]
 0064EED6    mov         eax,dword ptr [eax-8]
 0064EED9    call        TWriter.Write
 0064EEDE    mov         eax,dword ptr [ebp-8]
 0064EEE1    sub         dword ptr [ebp-0C],eax
 0064EEE4    cmp         dword ptr [ebp-0C],0
>0064EEE8    jg          0064EE87
 0064EEEA    mov         eax,dword ptr [ebp+8]
 0064EEED    dec         dword ptr [eax-4]
 0064EEF0    mov         eax,dword ptr [ebp+8]
 0064EEF3    push        eax
 0064EEF4    mov         eax,64EF18;'}'
 0064EEF9    call        WriteStr
 0064EEFE    pop         ecx
 0064EEFF    mov         esp,ebp
 0064EF01    pop         ebp
 0064EF02    ret
end;*}

//0064EF1C
procedure ConvertValue;
begin
{*
 0064EF1C    push        ebp
 0064EF1D    mov         ebp,esp
 0064EF1F    mov         ecx,0D
 0064EF24    push        0
 0064EF26    push        0
 0064EF28    dec         ecx
>0064EF29    jne         0064EF24
 0064EF2B    xor         eax,eax
 0064EF2D    push        ebp
 0064EF2E    push        64F722
 0064EF33    push        dword ptr fs:[eax]
 0064EF36    mov         dword ptr fs:[eax],esp
 0064EF39    mov         eax,dword ptr [ebp+8]
 0064EF3C    mov         eax,dword ptr [eax-0C]
 0064EF3F    call        TReader.NextValue
 0064EF44    and         eax,7F
 0064EF47    cmp         eax,14
>0064EF4A    ja          0064F68A
 0064EF50    jmp         dword ptr [eax*4+64EF57]
 0064EF50    dd          0064F4B3
 0064EF50    dd          0064EFAB
 0064EF50    dd          0064F015
 0064EF50    dd          0064F015
 0064EF50    dd          0064F015
 0064EF50    dd          0064F03A
 0064EF50    dd          0064F2FD
 0064EF50    dd          0064F4B3
 0064EF50    dd          0064F4B3
 0064EF50    dd          0064F4B3
 0064EF50    dd          0064F4D3
 0064EF50    dd          0064F4E2
 0064EF50    dd          0064F2FD
 0064EF50    dd          0064F4B3
 0064EF50    dd          0064F550
 0064EF50    dd          0064F066
 0064EF50    dd          0064F09F
 0064EF50    dd          0064F0E4
 0064EF50    dd          0064F11D
 0064EF50    dd          0064F666
 0064EF50    dd          0064F11D
 0064EFAB    mov         eax,dword ptr [ebp+8]
 0064EFAE    mov         eax,dword ptr [eax-0C]
 0064EFB1    call        TReader.ReadValue
 0064EFB6    mov         eax,dword ptr [ebp+8]
 0064EFB9    push        eax
 0064EFBA    mov         eax,64F738;'('
 0064EFBF    call        WriteStr
 0064EFC4    pop         ecx
 0064EFC5    mov         eax,dword ptr [ebp+8]
 0064EFC8    inc         dword ptr [eax-4]
>0064EFCB    jmp         0064EFE1
 0064EFCD    mov         eax,dword ptr [ebp+8]
 0064EFD0    push        eax
 0064EFD1    call        NewLine
 0064EFD6    pop         ecx
 0064EFD7    mov         eax,dword ptr [ebp+8]
 0064EFDA    push        eax
 0064EFDB    call        ConvertValue
 0064EFE0    pop         ecx
 0064EFE1    mov         eax,dword ptr [ebp+8]
 0064EFE4    mov         eax,dword ptr [eax-0C]
 0064EFE7    call        TReader.EndOfList
 0064EFEC    test        al,al
>0064EFEE    je          0064EFCD
 0064EFF0    mov         eax,dword ptr [ebp+8]
 0064EFF3    mov         eax,dword ptr [eax-0C]
 0064EFF6    call        TReader.ReadListEnd
 0064EFFB    mov         eax,dword ptr [ebp+8]
 0064EFFE    dec         dword ptr [eax-4]
 0064F001    mov         eax,dword ptr [ebp+8]
 0064F004    push        eax
 0064F005    mov         eax,64F744;')'
 0064F00A    call        WriteStr
 0064F00F    pop         ecx
>0064F010    jmp         0064F6EF
 0064F015    mov         eax,dword ptr [ebp+8]
 0064F018    push        eax
 0064F019    mov         eax,dword ptr [ebp+8]
 0064F01C    mov         eax,dword ptr [eax-0C]
 0064F01F    call        TReader.ReadInteger
 0064F024    lea         edx,[ebp-20]
 0064F027    call        IntToStr
 0064F02C    mov         eax,dword ptr [ebp-20]
 0064F02F    call        WriteStr
 0064F034    pop         ecx
>0064F035    jmp         0064F6EF
 0064F03A    mov         eax,dword ptr [ebp+8]
 0064F03D    push        eax
 0064F03E    mov         eax,dword ptr [ebp+8]
 0064F041    mov         eax,dword ptr [eax-0C]
 0064F044    call        0064AB30
 0064F049    add         esp,0FFFFFFF4
 0064F04C    fstp        tbyte ptr [esp]
 0064F04F    wait
 0064F050    lea         eax,[ebp-24]
 0064F053    call        FloatToStr
 0064F058    mov         eax,dword ptr [ebp-24]
 0064F05B    call        WriteStr
 0064F060    pop         ecx
>0064F061    jmp         0064F6EF
 0064F066    mov         eax,dword ptr [ebp+8]
 0064F069    push        eax
 0064F06A    mov         eax,dword ptr [ebp+8]
 0064F06D    mov         eax,dword ptr [eax-0C]
 0064F070    call        0064AB78
 0064F075    add         esp,0FFFFFFF4
 0064F078    fstp        tbyte ptr [esp]
 0064F07B    wait
 0064F07C    lea         eax,[ebp-28]
 0064F07F    call        FloatToStr
 0064F084    lea         eax,[ebp-28]
 0064F087    mov         edx,64F750;'s'
 0064F08C    call        @LStrCat
 0064F091    mov         eax,dword ptr [ebp-28]
 0064F094    call        WriteStr
 0064F099    pop         ecx
>0064F09A    jmp         0064F6EF
 0064F09F    mov         eax,dword ptr [ebp+8]
 0064F0A2    push        eax
 0064F0A3    mov         eax,dword ptr [ebp+8]
 0064F0A6    mov         eax,dword ptr [eax-0C]
 0064F0A9    call        0064ABC0
 0064F0AE    fmul        dword ptr ds:[64F754]
 0064F0B4    fdiv        dword ptr ds:[64F754]
 0064F0BA    add         esp,0FFFFFFF4
 0064F0BD    fstp        tbyte ptr [esp]
 0064F0C0    wait
 0064F0C1    lea         eax,[ebp-2C]
 0064F0C4    call        FloatToStr
 0064F0C9    lea         eax,[ebp-2C]
 0064F0CC    mov         edx,64F760;'c'
 0064F0D1    call        @LStrCat
 0064F0D6    mov         eax,dword ptr [ebp-2C]
 0064F0D9    call        WriteStr
 0064F0DE    pop         ecx
>0064F0DF    jmp         0064F6EF
 0064F0E4    mov         eax,dword ptr [ebp+8]
 0064F0E7    push        eax
 0064F0E8    mov         eax,dword ptr [ebp+8]
 0064F0EB    mov         eax,dword ptr [eax-0C]
 0064F0EE    call        0064AC10
 0064F0F3    add         esp,0FFFFFFF4
 0064F0F6    fstp        tbyte ptr [esp]
 0064F0F9    wait
 0064F0FA    lea         eax,[ebp-30]
 0064F0FD    call        FloatToStr
 0064F102    lea         eax,[ebp-30]
 0064F105    mov         edx,64F76C;'d'
 0064F10A    call        @LStrCat
 0064F10F    mov         eax,dword ptr [ebp-30]
 0064F112    call        WriteStr
 0064F117    pop         ecx
>0064F118    jmp         0064F6EF
 0064F11D    lea         edx,[ebp-18]
 0064F120    mov         eax,dword ptr [ebp+8]
 0064F123    mov         eax,dword ptr [eax-0C]
 0064F126    call        0064BC3C
 0064F12B    mov         eax,dword ptr [ebp-18]
 0064F12E    call        @WStrLen
 0064F133    mov         dword ptr [ebp-10],eax
 0064F136    cmp         dword ptr [ebp-10],0
>0064F13A    jne         0064F150
 0064F13C    mov         eax,dword ptr [ebp+8]
 0064F13F    push        eax
 0064F140    mov         eax,64F778;''''
 0064F145    call        WriteStr
 0064F14A    pop         ecx
>0064F14B    jmp         0064F6EF
 0064F150    mov         dword ptr [ebp-4],1
 0064F157    mov         eax,dword ptr [ebp+8]
 0064F15A    inc         dword ptr [eax-4]
 0064F15D    xor         eax,eax
 0064F15F    push        ebp
 0064F160    push        64F2F6
 0064F165    push        dword ptr fs:[eax]
 0064F168    mov         dword ptr fs:[eax],esp
 0064F16B    cmp         dword ptr [ebp-10],40
>0064F16F    jle         0064F17B
 0064F171    mov         eax,dword ptr [ebp+8]
 0064F174    push        eax
 0064F175    call        NewLine
 0064F17A    pop         ecx
 0064F17B    mov         eax,dword ptr [ebp-4]
 0064F17E    mov         dword ptr [ebp-0C],eax
 0064F181    mov         byte ptr [ebp-19],0
 0064F185    mov         eax,dword ptr [ebp-18]
 0064F188    mov         edx,dword ptr [ebp-4]
 0064F18B    cmp         word ptr [eax+edx*2-2],20
>0064F191    jb          0064F268
 0064F197    mov         eax,dword ptr [ebp-18]
 0064F19A    mov         edx,dword ptr [ebp-4]
 0064F19D    cmp         word ptr [eax+edx*2-2],27
>0064F1A3    je          0064F268
 0064F1A9    mov         eax,dword ptr [ebp-18]
 0064F1AC    mov         edx,dword ptr [ebp-4]
 0064F1AF    mov         ax,word ptr [eax+edx*2-2]
 0064F1B4    cmp         ax,7F
>0064F1B8    ja          0064F268
 0064F1BE    mov         eax,dword ptr [ebp-4]
 0064F1C1    mov         dword ptr [ebp-8],eax
 0064F1C4    inc         dword ptr [ebp-4]
 0064F1C7    mov         eax,dword ptr [ebp-4]
 0064F1CA    cmp         eax,dword ptr [ebp-10]
>0064F1CD    jg          0064F207
 0064F1CF    mov         eax,dword ptr [ebp-18]
 0064F1D2    mov         edx,dword ptr [ebp-4]
 0064F1D5    cmp         word ptr [eax+edx*2-2],20
>0064F1DB    jb          0064F207
 0064F1DD    mov         eax,dword ptr [ebp-18]
 0064F1E0    mov         edx,dword ptr [ebp-4]
 0064F1E3    cmp         word ptr [eax+edx*2-2],27
>0064F1E9    je          0064F207
 0064F1EB    mov         eax,dword ptr [ebp-4]
 0064F1EE    sub         eax,dword ptr [ebp-0C]
 0064F1F1    cmp         eax,40
>0064F1F4    jge         0064F207
 0064F1F6    mov         eax,dword ptr [ebp-18]
 0064F1F9    mov         edx,dword ptr [ebp-4]
 0064F1FC    mov         ax,word ptr [eax+edx*2-2]
 0064F201    cmp         ax,7F
>0064F205    jbe         0064F1C4
 0064F207    mov         eax,dword ptr [ebp-4]
 0064F20A    sub         eax,dword ptr [ebp-0C]
 0064F20D    cmp         eax,40
>0064F210    jl          0064F216
 0064F212    mov         byte ptr [ebp-19],1
 0064F216    mov         eax,dword ptr [ebp+8]
 0064F219    push        eax
 0064F21A    mov         eax,64F784;'''
 0064F21F    call        WriteStr
 0064F224    pop         ecx
 0064F225    mov         eax,dword ptr [ebp-8]
 0064F228    cmp         eax,dword ptr [ebp-4]
>0064F22B    jge         0064F257
 0064F22D    mov         eax,dword ptr [ebp+8]
 0064F230    push        eax
 0064F231    lea         eax,[ebp-34]
 0064F234    mov         edx,dword ptr [ebp-18]
 0064F237    mov         ecx,dword ptr [ebp-8]
 0064F23A    mov         dl,byte ptr [edx+ecx*2-2]
 0064F23E    call        @LStrFromChar
 0064F243    mov         eax,dword ptr [ebp-34]
 0064F246    call        WriteStr
 0064F24B    pop         ecx
 0064F24C    inc         dword ptr [ebp-8]
 0064F24F    mov         eax,dword ptr [ebp-8]
 0064F252    cmp         eax,dword ptr [ebp-4]
>0064F255    jl          0064F22D
 0064F257    mov         eax,dword ptr [ebp+8]
 0064F25A    push        eax
 0064F25B    mov         eax,64F784;'''
 0064F260    call        WriteStr
 0064F265    pop         ecx
>0064F266    jmp         0064F2A9
 0064F268    mov         eax,dword ptr [ebp+8]
 0064F26B    push        eax
 0064F26C    mov         eax,64F790;'#'
 0064F271    call        WriteStr
 0064F276    pop         ecx
 0064F277    mov         eax,dword ptr [ebp+8]
 0064F27A    push        eax
 0064F27B    mov         eax,dword ptr [ebp-18]
 0064F27E    mov         edx,dword ptr [ebp-4]
 0064F281    movzx       eax,word ptr [eax+edx*2-2]
 0064F286    lea         edx,[ebp-38]
 0064F289    call        IntToStr
 0064F28E    mov         eax,dword ptr [ebp-38]
 0064F291    call        WriteStr
 0064F296    pop         ecx
 0064F297    inc         dword ptr [ebp-4]
 0064F29A    mov         eax,dword ptr [ebp-4]
 0064F29D    sub         eax,dword ptr [ebp-0C]
 0064F2A0    cmp         eax,40
>0064F2A3    jl          0064F2A9
 0064F2A5    mov         byte ptr [ebp-19],1
 0064F2A9    cmp         byte ptr [ebp-19],0
>0064F2AD    je          0064F2D6
 0064F2AF    mov         eax,dword ptr [ebp-4]
 0064F2B2    cmp         eax,dword ptr [ebp-10]
>0064F2B5    jg          0064F2D6
 0064F2B7    mov         eax,dword ptr [ebp+8]
 0064F2BA    push        eax
 0064F2BB    mov         eax,64F79C;' +'
 0064F2C0    call        WriteStr
 0064F2C5    pop         ecx
 0064F2C6    mov         eax,dword ptr [ebp+8]
 0064F2C9    push        eax
 0064F2CA    call        NewLine
 0064F2CF    pop         ecx
 0064F2D0    mov         eax,dword ptr [ebp-4]
 0064F2D3    mov         dword ptr [ebp-0C],eax
 0064F2D6    mov         eax,dword ptr [ebp-4]
 0064F2D9    cmp         eax,dword ptr [ebp-10]
>0064F2DC    jle         0064F181
 0064F2E2    xor         eax,eax
 0064F2E4    pop         edx
 0064F2E5    pop         ecx
 0064F2E6    pop         ecx
 0064F2E7    mov         dword ptr fs:[eax],edx
 0064F2EA    push        64F6EF
 0064F2EF    mov         eax,dword ptr [ebp+8]
 0064F2F2    dec         dword ptr [eax-4]
 0064F2F5    ret
>0064F2F6    jmp         @HandleFinally
>0064F2FB    jmp         0064F2EF
 0064F2FD    lea         edx,[ebp-14]
 0064F300    mov         eax,dword ptr [ebp+8]
 0064F303    mov         eax,dword ptr [eax-0C]
 0064F306    call        TReader.ReadString
 0064F30B    mov         eax,dword ptr [ebp-14]
 0064F30E    call        @LStrLen
 0064F313    mov         dword ptr [ebp-10],eax
 0064F316    cmp         dword ptr [ebp-10],0
>0064F31A    jne         0064F330
 0064F31C    mov         eax,dword ptr [ebp+8]
 0064F31F    push        eax
 0064F320    mov         eax,64F778;''''
 0064F325    call        WriteStr
 0064F32A    pop         ecx
>0064F32B    jmp         0064F6EF
 0064F330    mov         dword ptr [ebp-4],1
 0064F337    mov         eax,dword ptr [ebp+8]
 0064F33A    inc         dword ptr [eax-4]
 0064F33D    xor         eax,eax
 0064F33F    push        ebp
 0064F340    push        64F4AC
 0064F345    push        dword ptr fs:[eax]
 0064F348    mov         dword ptr fs:[eax],esp
 0064F34B    cmp         dword ptr [ebp-10],40
>0064F34F    jle         0064F35B
 0064F351    mov         eax,dword ptr [ebp+8]
 0064F354    push        eax
 0064F355    call        NewLine
 0064F35A    pop         ecx
 0064F35B    mov         eax,dword ptr [ebp-4]
 0064F35E    mov         dword ptr [ebp-0C],eax
 0064F361    mov         byte ptr [ebp-19],0
 0064F365    mov         eax,dword ptr [ebp-14]
 0064F368    mov         edx,dword ptr [ebp-4]
 0064F36B    cmp         byte ptr [eax+edx-1],20
>0064F370    jb          0064F41E
 0064F376    mov         eax,dword ptr [ebp-14]
 0064F379    mov         edx,dword ptr [ebp-4]
 0064F37C    cmp         byte ptr [eax+edx-1],27
>0064F381    je          0064F41E
 0064F387    mov         eax,dword ptr [ebp-4]
 0064F38A    mov         dword ptr [ebp-8],eax
 0064F38D    inc         dword ptr [ebp-4]
 0064F390    mov         eax,dword ptr [ebp-4]
 0064F393    cmp         eax,dword ptr [ebp-10]
>0064F396    jg          0064F3BD
 0064F398    mov         eax,dword ptr [ebp-14]
 0064F39B    mov         edx,dword ptr [ebp-4]
 0064F39E    cmp         byte ptr [eax+edx-1],20
>0064F3A3    jb          0064F3BD
 0064F3A5    mov         eax,dword ptr [ebp-14]
 0064F3A8    mov         edx,dword ptr [ebp-4]
 0064F3AB    cmp         byte ptr [eax+edx-1],27
>0064F3B0    je          0064F3BD
 0064F3B2    mov         eax,dword ptr [ebp-4]
 0064F3B5    sub         eax,dword ptr [ebp-0C]
 0064F3B8    cmp         eax,40
>0064F3BB    jl          0064F38D
 0064F3BD    mov         eax,dword ptr [ebp-4]
 0064F3C0    sub         eax,dword ptr [ebp-0C]
 0064F3C3    cmp         eax,40
>0064F3C6    jl          0064F3DE
 0064F3C8    mov         byte ptr [ebp-19],1
 0064F3CC    mov         edx,dword ptr [ebp-4]
 0064F3CF    mov         eax,dword ptr [ebp-14]
 0064F3D2    call        0065CF98
 0064F3D7    cmp         al,2
>0064F3D9    jne         0064F3DE
 0064F3DB    dec         dword ptr [ebp-4]
 0064F3DE    mov         eax,dword ptr [ebp+8]
 0064F3E1    push        eax
 0064F3E2    mov         eax,64F784;'''
 0064F3E7    call        WriteStr
 0064F3EC    pop         ecx
 0064F3ED    lea         eax,[ebp-14]
 0064F3F0    call        @UniqueStringA
 0064F3F5    mov         edx,dword ptr [ebp-8]
 0064F3F8    lea         edx,[eax+edx-1]
 0064F3FC    mov         ecx,dword ptr [ebp-4]
 0064F3FF    sub         ecx,dword ptr [ebp-8]
 0064F402    mov         eax,dword ptr [ebp+8]
 0064F405    mov         eax,dword ptr [eax-8]
 0064F408    call        TWriter.Write
 0064F40D    mov         eax,dword ptr [ebp+8]
 0064F410    push        eax
 0064F411    mov         eax,64F784;'''
 0064F416    call        WriteStr
 0064F41B    pop         ecx
>0064F41C    jmp         0064F45F
 0064F41E    mov         eax,dword ptr [ebp+8]
 0064F421    push        eax
 0064F422    mov         eax,64F790;'#'
 0064F427    call        WriteStr
 0064F42C    pop         ecx
 0064F42D    mov         eax,dword ptr [ebp+8]
 0064F430    push        eax
 0064F431    mov         eax,dword ptr [ebp-14]
 0064F434    mov         edx,dword ptr [ebp-4]
 0064F437    movzx       eax,byte ptr [eax+edx-1]
 0064F43C    lea         edx,[ebp-3C]
 0064F43F    call        IntToStr
 0064F444    mov         eax,dword ptr [ebp-3C]
 0064F447    call        WriteStr
 0064F44C    pop         ecx
 0064F44D    inc         dword ptr [ebp-4]
 0064F450    mov         eax,dword ptr [ebp-4]
 0064F453    sub         eax,dword ptr [ebp-0C]
 0064F456    cmp         eax,40
>0064F459    jl          0064F45F
 0064F45B    mov         byte ptr [ebp-19],1
 0064F45F    cmp         byte ptr [ebp-19],0
>0064F463    je          0064F48C
 0064F465    mov         eax,dword ptr [ebp-4]
 0064F468    cmp         eax,dword ptr [ebp-10]
>0064F46B    jg          0064F48C
 0064F46D    mov         eax,dword ptr [ebp+8]
 0064F470    push        eax
 0064F471    mov         eax,64F79C;' +'
 0064F476    call        WriteStr
 0064F47B    pop         ecx
 0064F47C    mov         eax,dword ptr [ebp+8]
 0064F47F    push        eax
 0064F480    call        NewLine
 0064F485    pop         ecx
 0064F486    mov         eax,dword ptr [ebp-4]
 0064F489    mov         dword ptr [ebp-0C],eax
 0064F48C    mov         eax,dword ptr [ebp-4]
 0064F48F    cmp         eax,dword ptr [ebp-10]
>0064F492    jle         0064F361
 0064F498    xor         eax,eax
 0064F49A    pop         edx
 0064F49B    pop         ecx
 0064F49C    pop         ecx
 0064F49D    mov         dword ptr fs:[eax],edx
 0064F4A0    push        64F6EF
 0064F4A5    mov         eax,dword ptr [ebp+8]
 0064F4A8    dec         dword ptr [eax-4]
 0064F4AB    ret
>0064F4AC    jmp         @HandleFinally
>0064F4B1    jmp         0064F4A5
 0064F4B3    mov         eax,dword ptr [ebp+8]
 0064F4B6    push        eax
 0064F4B7    lea         edx,[ebp-40]
 0064F4BA    mov         eax,dword ptr [ebp+8]
 0064F4BD    mov         eax,dword ptr [eax-0C]
 0064F4C0    call        TReader.ReadIdent
 0064F4C5    mov         eax,dword ptr [ebp-40]
 0064F4C8    call        WriteStr
 0064F4CD    pop         ecx
>0064F4CE    jmp         0064F6EF
 0064F4D3    mov         eax,dword ptr [ebp+8]
 0064F4D6    push        eax
 0064F4D7    call        0064EE40
 0064F4DC    pop         ecx
>0064F4DD    jmp         0064F6EF
 0064F4E2    mov         eax,dword ptr [ebp+8]
 0064F4E5    mov         eax,dword ptr [eax-0C]
 0064F4E8    call        TReader.ReadValue
 0064F4ED    mov         eax,dword ptr [ebp+8]
 0064F4F0    push        eax
 0064F4F1    mov         eax,64F7A8;'['
 0064F4F6    call        WriteStr
 0064F4FB    pop         ecx
 0064F4FC    xor         eax,eax
 0064F4FE    mov         dword ptr [ebp-4],eax
 0064F501    lea         edx,[ebp-14]
 0064F504    mov         eax,dword ptr [ebp+8]
 0064F507    mov         eax,dword ptr [eax-0C]
 0064F50A    call        TReader.ReadStr
 0064F50F    cmp         dword ptr [ebp-14],0
>0064F513    je          0064F53C
 0064F515    cmp         dword ptr [ebp-4],0
>0064F519    jle         0064F52A
 0064F51B    mov         eax,dword ptr [ebp+8]
 0064F51E    push        eax
 0064F51F    mov         eax,64F7B4;', '
 0064F524    call        WriteStr
 0064F529    pop         ecx
 0064F52A    mov         eax,dword ptr [ebp+8]
 0064F52D    push        eax
 0064F52E    mov         eax,dword ptr [ebp-14]
 0064F531    call        WriteStr
 0064F536    pop         ecx
 0064F537    inc         dword ptr [ebp-4]
>0064F53A    jmp         0064F501
 0064F53C    mov         eax,dword ptr [ebp+8]
 0064F53F    push        eax
 0064F540    mov         eax,64F7C0;']'
 0064F545    call        WriteStr
 0064F54A    pop         ecx
>0064F54B    jmp         0064F6EF
 0064F550    mov         eax,dword ptr [ebp+8]
 0064F553    mov         eax,dword ptr [eax-0C]
 0064F556    call        TReader.ReadValue
 0064F55B    mov         eax,dword ptr [ebp+8]
 0064F55E    push        eax
 0064F55F    mov         eax,64F7CC;'<'
 0064F564    call        WriteStr
 0064F569    pop         ecx
 0064F56A    mov         eax,dword ptr [ebp+8]
 0064F56D    inc         dword ptr [eax-4]
>0064F570    jmp         0064F62E
 0064F575    mov         eax,dword ptr [ebp+8]
 0064F578    push        eax
 0064F579    call        NewLine
 0064F57E    pop         ecx
 0064F57F    mov         eax,dword ptr [ebp+8]
 0064F582    push        eax
 0064F583    mov         eax,64F7D8;'item'
 0064F588    call        WriteStr
 0064F58D    pop         ecx
 0064F58E    mov         eax,dword ptr [ebp+8]
 0064F591    mov         eax,dword ptr [eax-0C]
 0064F594    call        TReader.NextValue
 0064F599    add         al,0FE
 0064F59B    sub         al,3
>0064F59D    jae         0064F5C7
 0064F59F    mov         eax,dword ptr [ebp+8]
 0064F5A2    push        eax
 0064F5A3    mov         eax,64F7E8;' ['
 0064F5A8    call        WriteStr
 0064F5AD    pop         ecx
 0064F5AE    mov         eax,dword ptr [ebp+8]
 0064F5B1    push        eax
 0064F5B2    call        ConvertValue
 0064F5B7    pop         ecx
 0064F5B8    mov         eax,dword ptr [ebp+8]
 0064F5BB    push        eax
 0064F5BC    mov         eax,64F7C0;']'
 0064F5C1    call        WriteStr
 0064F5C6    pop         ecx
 0064F5C7    mov         eax,dword ptr [ebp+8]
 0064F5CA    push        eax
 0064F5CB    mov         eax,64F7F4;#13+#10
 0064F5D0    call        WriteStr
 0064F5D5    pop         ecx
 0064F5D6    mov         eax,dword ptr [ebp+8]
 0064F5D9    mov         eax,dword ptr [eax-0C]
 0064F5DC    mov         dl,1
 0064F5DE    call        00649DA0
 0064F5E3    mov         eax,dword ptr [ebp+8]
 0064F5E6    inc         dword ptr [eax-4]
>0064F5E9    jmp         0064F5F5
 0064F5EB    mov         eax,dword ptr [ebp+8]
 0064F5EE    push        eax
 0064F5EF    call        ConvertProperty
 0064F5F4    pop         ecx
 0064F5F5    mov         eax,dword ptr [ebp+8]
 0064F5F8    mov         eax,dword ptr [eax-0C]
 0064F5FB    call        TReader.EndOfList
 0064F600    test        al,al
>0064F602    je          0064F5EB
 0064F604    mov         eax,dword ptr [ebp+8]
 0064F607    mov         eax,dword ptr [eax-0C]
 0064F60A    call        TReader.ReadListEnd
 0064F60F    mov         eax,dword ptr [ebp+8]
 0064F612    dec         dword ptr [eax-4]
 0064F615    mov         eax,dword ptr [ebp+8]
 0064F618    push        eax
 0064F619    call        WriteIndent
 0064F61E    pop         ecx
 0064F61F    mov         eax,dword ptr [ebp+8]
 0064F622    push        eax
 0064F623    mov         eax,64F800;'end'
 0064F628    call        WriteStr
 0064F62D    pop         ecx
 0064F62E    mov         eax,dword ptr [ebp+8]
 0064F631    mov         eax,dword ptr [eax-0C]
 0064F634    call        TReader.EndOfList
 0064F639    test        al,al
>0064F63B    je          0064F575
 0064F641    mov         eax,dword ptr [ebp+8]
 0064F644    mov         eax,dword ptr [eax-0C]
 0064F647    call        TReader.ReadListEnd
 0064F64C    mov         eax,dword ptr [ebp+8]
 0064F64F    dec         dword ptr [eax-4]
 0064F652    mov         eax,dword ptr [ebp+8]
 0064F655    push        eax
 0064F656    mov         eax,64F80C;'>'
 0064F65B    call        WriteStr
 0064F660    pop         ecx
>0064F661    jmp         0064F6EF
 0064F666    mov         eax,dword ptr [ebp+8]
 0064F669    push        eax
 0064F66A    mov         eax,dword ptr [ebp+8]
 0064F66D    mov         eax,dword ptr [eax-0C]
 0064F670    call        0064ADD4
 0064F675    push        edx
 0064F676    push        eax
 0064F677    lea         eax,[ebp-44]
 0064F67A    call        00657BCC
 0064F67F    mov         eax,dword ptr [ebp-44]
 0064F682    call        WriteStr
 0064F687    pop         ecx
>0064F688    jmp         0064F6EF
 0064F68A    mov         eax,dword ptr [ebp+8]
 0064F68D    mov         eax,dword ptr [eax-10]
 0064F690    mov         dword ptr [ebp-64],eax
 0064F693    mov         byte ptr [ebp-60],0B
 0064F697    mov         eax,[006EA040];^gvar_006E491C
 0064F69C    mov         eax,dword ptr [eax]
 0064F69E    mov         dword ptr [ebp-5C],eax
 0064F6A1    mov         byte ptr [ebp-58],0B
 0064F6A5    mov         eax,dword ptr [ebp+8]
 0064F6A8    mov         eax,dword ptr [eax-14]
 0064F6AB    mov         dword ptr [ebp-54],eax
 0064F6AE    mov         byte ptr [ebp-50],0B
 0064F6B2    mov         eax,dword ptr [ebp+8]
 0064F6B5    mov         eax,dword ptr [eax-0C]
 0064F6B8    call        TReader.NextValue
 0064F6BD    and         eax,7F
 0064F6C0    lea         edx,[ebp-68]
 0064F6C3    call        IntToStr
 0064F6C8    mov         eax,dword ptr [ebp-68]
 0064F6CB    mov         dword ptr [ebp-4C],eax
 0064F6CE    mov         byte ptr [ebp-48],0B
 0064F6D2    lea         eax,[ebp-64]
 0064F6D5    push        eax
 0064F6D6    push        3
 0064F6D8    mov         ecx,dword ptr ds:[6EA0B4];^gvar_0065505C
 0064F6DE    mov         dl,1
 0064F6E0    mov         eax,[00641F14];EReadError
 0064F6E5    call        Exception.CreateResFmt
 0064F6EA    call        @RaiseExcept
 0064F6EF    xor         eax,eax
 0064F6F1    pop         edx
 0064F6F2    pop         ecx
 0064F6F3    pop         ecx
 0064F6F4    mov         dword ptr fs:[eax],edx
 0064F6F7    push        64F729
 0064F6FC    lea         eax,[ebp-68]
 0064F6FF    call        @LStrClr
 0064F704    lea         eax,[ebp-44]
 0064F707    mov         edx,0A
 0064F70C    call        @LStrArrayClr
 0064F711    lea         eax,[ebp-18]
 0064F714    call        @WStrClr
 0064F719    lea         eax,[ebp-14]
 0064F71C    call        @LStrClr
 0064F721    ret
>0064F722    jmp         @HandleFinally
>0064F727    jmp         0064F6FC
 0064F729    mov         esp,ebp
 0064F72B    pop         ebp
 0064F72C    ret
*}
end;

//0064F810
procedure ConvertProperty;
begin
{*
 0064F810    push        ebp
 0064F811    mov         ebp,esp
 0064F813    push        0
 0064F815    xor         eax,eax
 0064F817    push        ebp
 0064F818    push        64F897
 0064F81D    push        dword ptr fs:[eax]
 0064F820    mov         dword ptr fs:[eax],esp
 0064F823    mov         eax,dword ptr [ebp+8]
 0064F826    push        eax
 0064F827    call        WriteIndent
 0064F82C    pop         ecx
 0064F82D    lea         edx,[ebp-4]
 0064F830    mov         eax,dword ptr [ebp+8]
 0064F833    mov         eax,dword ptr [eax-0C]
 0064F836    call        TReader.ReadStr
 0064F83B    mov         edx,dword ptr [ebp-4]
 0064F83E    mov         eax,dword ptr [ebp+8]
 0064F841    add         eax,0FFFFFFEC
 0064F844    call        @LStrLAsg
 0064F849    mov         eax,dword ptr [ebp+8]
 0064F84C    push        eax
 0064F84D    mov         eax,dword ptr [ebp+8]
 0064F850    mov         eax,dword ptr [eax-14]
 0064F853    call        WriteStr
 0064F858    pop         ecx
 0064F859    mov         eax,dword ptr [ebp+8]
 0064F85C    push        eax
 0064F85D    mov         eax,64F8AC;' = '
 0064F862    call        WriteStr
 0064F867    pop         ecx
 0064F868    mov         eax,dword ptr [ebp+8]
 0064F86B    push        eax
 0064F86C    call        ConvertValue
 0064F871    pop         ecx
 0064F872    mov         eax,dword ptr [ebp+8]
 0064F875    push        eax
 0064F876    mov         eax,64F8B8;#13+#10
 0064F87B    call        WriteStr
 0064F880    pop         ecx
 0064F881    xor         eax,eax
 0064F883    pop         edx
 0064F884    pop         ecx
 0064F885    pop         ecx
 0064F886    mov         dword ptr fs:[eax],edx
 0064F889    push        64F89E
 0064F88E    lea         eax,[ebp-4]
 0064F891    call        @LStrClr
 0064F896    ret
>0064F897    jmp         @HandleFinally
>0064F89C    jmp         0064F88E
 0064F89E    pop         ecx
 0064F89F    pop         ebp
 0064F8A0    ret
*}
end;

//0064F8BC
{*procedure sub_0064F8BC(?:?);
begin
 0064F8BC    push        ebp
 0064F8BD    mov         ebp,esp
 0064F8BF    mov         eax,dword ptr [ebp+8]
 0064F8C2    push        eax
 0064F8C3    call        ConvertHeader
 0064F8C8    pop         ecx
 0064F8C9    mov         eax,dword ptr [ebp+8]
 0064F8CC    inc         dword ptr [eax-4]
>0064F8CF    jmp         0064F8DB
 0064F8D1    mov         eax,dword ptr [ebp+8]
 0064F8D4    push        eax
 0064F8D5    call        ConvertProperty
 0064F8DA    pop         ecx
 0064F8DB    mov         eax,dword ptr [ebp+8]
 0064F8DE    mov         eax,dword ptr [eax-0C]
 0064F8E1    call        TReader.EndOfList
 0064F8E6    test        al,al
>0064F8E8    je          0064F8D1
 0064F8EA    mov         eax,dword ptr [ebp+8]
 0064F8ED    mov         eax,dword ptr [eax-0C]
 0064F8F0    call        TReader.ReadListEnd
>0064F8F5    jmp         0064F901
 0064F8F7    mov         eax,dword ptr [ebp+8]
 0064F8FA    push        eax
 0064F8FB    call        0064F8BC
 0064F900    pop         ecx
 0064F901    mov         eax,dword ptr [ebp+8]
 0064F904    mov         eax,dword ptr [eax-0C]
 0064F907    call        TReader.EndOfList
 0064F90C    test        al,al
>0064F90E    je          0064F8F7
 0064F910    mov         eax,dword ptr [ebp+8]
 0064F913    mov         eax,dword ptr [eax-0C]
 0064F916    call        TReader.ReadListEnd
 0064F91B    mov         eax,dword ptr [ebp+8]
 0064F91E    dec         dword ptr [eax-4]
 0064F921    mov         eax,dword ptr [ebp+8]
 0064F924    push        eax
 0064F925    call        WriteIndent
 0064F92A    pop         ecx
 0064F92B    mov         eax,dword ptr [ebp+8]
 0064F92E    push        eax
 0064F92F    mov         eax,64F944;'end'+#13+#10
 0064F934    call        WriteStr
 0064F939    pop         ecx
 0064F93A    pop         ebp
 0064F93B    ret
end;*}

//0064F94C
{*procedure sub_0064F94C(?:?; ?:?);
begin
 0064F94C    push        ebp
 0064F94D    mov         ebp,esp
 0064F94F    add         esp,0FFFFFFE0
 0064F952    xor         ecx,ecx
 0064F954    mov         dword ptr [ebp-10],ecx
 0064F957    mov         dword ptr [ebp-14],ecx
 0064F95A    mov         dword ptr [ebp-1C],edx
 0064F95D    mov         dword ptr [ebp-18],eax
 0064F960    xor         eax,eax
 0064F962    push        ebp
 0064F963    push        64FA3D
 0064F968    push        dword ptr fs:[eax]
 0064F96B    mov         dword ptr fs:[eax],esp
 0064F96E    xor         eax,eax
 0064F970    mov         dword ptr [ebp-4],eax
 0064F973    push        1000
 0064F978    mov         ecx,dword ptr [ebp-18]
 0064F97B    mov         dl,1
 0064F97D    mov         eax,[00642F0C];TReader
 0064F982    call        TFiler.Create;TReader.Create
 0064F987    mov         dword ptr [ebp-0C],eax
 0064F98A    mov         eax,[006EA100];^DecimalSeparator:Char
 0064F98F    mov         al,byte ptr [eax]
 0064F991    mov         byte ptr [ebp-1D],al
 0064F994    mov         eax,[006EA100];^DecimalSeparator:Char
 0064F999    mov         byte ptr [eax],2E
 0064F99C    xor         eax,eax
 0064F99E    push        ebp
 0064F99F    push        64FA1B
 0064F9A4    push        dword ptr fs:[eax]
 0064F9A7    mov         dword ptr fs:[eax],esp
 0064F9AA    push        1000
 0064F9AF    mov         ecx,dword ptr [ebp-1C]
 0064F9B2    mov         dl,1
 0064F9B4    mov         eax,[00642FC0];TWriter
 0064F9B9    call        TFiler.Create;TWriter.Create
 0064F9BE    mov         dword ptr [ebp-8],eax
 0064F9C1    xor         eax,eax
 0064F9C3    push        ebp
 0064F9C4    push        64F9F4
 0064F9C9    push        dword ptr fs:[eax]
 0064F9CC    mov         dword ptr fs:[eax],esp
 0064F9CF    mov         eax,dword ptr [ebp-0C]
 0064F9D2    call        0064BAFC
 0064F9D7    push        ebp
 0064F9D8    call        0064F8BC
 0064F9DD    pop         ecx
 0064F9DE    xor         eax,eax
 0064F9E0    pop         edx
 0064F9E1    pop         ecx
 0064F9E2    pop         ecx
 0064F9E3    mov         dword ptr fs:[eax],edx
 0064F9E6    push        64F9FB
 0064F9EB    mov         eax,dword ptr [ebp-8]
 0064F9EE    call        TObject.Free
 0064F9F3    ret
>0064F9F4    jmp         @HandleFinally
>0064F9F9    jmp         0064F9EB
 0064F9FB    xor         eax,eax
 0064F9FD    pop         edx
 0064F9FE    pop         ecx
 0064F9FF    pop         ecx
 0064FA00    mov         dword ptr fs:[eax],edx
 0064FA03    push        64FA22
 0064FA08    mov         eax,[006EA100];^DecimalSeparator:Char
 0064FA0D    mov         dl,byte ptr [ebp-1D]
 0064FA10    mov         byte ptr [eax],dl
 0064FA12    mov         eax,dword ptr [ebp-0C]
 0064FA15    call        TObject.Free
 0064FA1A    ret
>0064FA1B    jmp         @HandleFinally
>0064FA20    jmp         0064FA08
 0064FA22    xor         eax,eax
 0064FA24    pop         edx
 0064FA25    pop         ecx
 0064FA26    pop         ecx
 0064FA27    mov         dword ptr fs:[eax],edx
 0064FA2A    push        64FA44
 0064FA2F    lea         eax,[ebp-14]
 0064FA32    mov         edx,2
 0064FA37    call        @LStrArrayClr
 0064FA3C    ret
>0064FA3D    jmp         @HandleFinally
>0064FA42    jmp         0064FA2F
 0064FA44    mov         esp,ebp
 0064FA46    pop         ebp
 0064FA47    ret
end;*}

//0064FA48
procedure AddThread;
begin
{*
 0064FA48    push        ebp
 0064FA49    mov         ebp,esp
 0064FA4B    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0064FA50    call        KERNEL32.EnterCriticalSection
 0064FA55    xor         eax,eax
 0064FA57    push        ebp
 0064FA58    push        64FAA4
 0064FA5D    push        dword ptr fs:[eax]
 0064FA60    mov         dword ptr fs:[eax],esp
 0064FA63    cmp         dword ptr ds:[6ECFC8],0;ThreadCount:Integer
>0064FA6A    jne         0064FA86
 0064FA6C    cmp         dword ptr ds:[6E48C8],0;gvar_006E48C8
>0064FA73    jne         0064FA86
 0064FA75    mov         dl,1
 0064FA77    mov         eax,[006422A4];TList
 0064FA7C    call        TObject.Create
 0064FA81    mov         [006E48C8],eax;gvar_006E48C8
 0064FA86    inc         dword ptr ds:[6ECFC8];ThreadCount:Integer
 0064FA8C    xor         eax,eax
 0064FA8E    pop         edx
 0064FA8F    pop         ecx
 0064FA90    pop         ecx
 0064FA91    mov         dword ptr fs:[eax],edx
 0064FA94    push        64FAAB
 0064FA99    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0064FA9E    call        KERNEL32.LeaveCriticalSection
 0064FAA3    ret
>0064FAA4    jmp         @HandleFinally
>0064FAA9    jmp         0064FA99
 0064FAAB    pop         ebp
 0064FAAC    ret
*}
end;

//0064FAB0
procedure RemoveThread;
begin
{*
 0064FAB0    push        ebp
 0064FAB1    mov         ebp,esp
 0064FAB3    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0064FAB8    call        KERNEL32.EnterCriticalSection
 0064FABD    xor         eax,eax
 0064FABF    push        ebp
 0064FAC0    push        64FAE9
 0064FAC5    push        dword ptr fs:[eax]
 0064FAC8    mov         dword ptr fs:[eax],esp
 0064FACB    dec         dword ptr ds:[6ECFC8];ThreadCount:Integer
 0064FAD1    xor         eax,eax
 0064FAD3    pop         edx
 0064FAD4    pop         ecx
 0064FAD5    pop         ecx
 0064FAD6    mov         dword ptr fs:[eax],edx
 0064FAD9    push        64FAF0
 0064FADE    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0064FAE3    call        KERNEL32.LeaveCriticalSection
 0064FAE8    ret
>0064FAE9    jmp         @HandleFinally
>0064FAEE    jmp         0064FADE
 0064FAF0    pop         ebp
 0064FAF1    ret
*}
end;

//0064FAF4
function CheckSynchronize:Boolean;
begin
{*
 0064FAF4    push        ebp
 0064FAF5    mov         ebp,esp
 0064FAF7    add         esp,0FFFFFFF0
 0064FAFA    push        ebx
 0064FAFB    push        esi
 0064FAFC    push        edi
 0064FAFD    call        KERNEL32.GetCurrentThreadId
 0064FB02    mov         edx,dword ptr ds:[6EA2D0];^gvar_006ED2F8:DWORD
 0064FB08    cmp         eax,dword ptr [edx]
>0064FB0A    je          0064FB35
 0064FB0C    call        KERNEL32.GetCurrentThreadId
 0064FB11    mov         dword ptr [ebp-10],eax
 0064FB14    mov         byte ptr [ebp-0C],0
 0064FB18    lea         eax,[ebp-10]
 0064FB1B    push        eax
 0064FB1C    push        0
 0064FB1E    mov         ecx,dword ptr ds:[6EA054]
 0064FB24    mov         dl,1
 0064FB26    mov         eax,[0064303C];EThread
 0064FB2B    call        Exception.CreateResFmt
 0064FB30    call        @RaiseExcept
 0064FB35    cmp         byte ptr ds:[6ECFAC],0;ProcPosted:Boolean
>0064FB3C    je          0064FC11
 0064FB42    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0064FB47    call        KERNEL32.EnterCriticalSection
 0064FB4C    xor         eax,eax
 0064FB4E    push        ebp
 0064FB4F    push        64FC0A
 0064FB54    push        dword ptr fs:[eax]
 0064FB57    mov         dword ptr fs:[eax],esp
 0064FB5A    cmp         dword ptr ds:[6E48C8],0;gvar_006E48C8
>0064FB61    je          0064FB6E
 0064FB63    mov         eax,[006E48C8];gvar_006E48C8
 0064FB68    cmp         dword ptr [eax+8],0
>0064FB6C    jg          0064FB72
 0064FB6E    xor         eax,eax
>0064FB70    jmp         0064FB74
 0064FB72    mov         al,1
 0064FB74    mov         byte ptr [ebp-1],al
 0064FB77    cmp         byte ptr [ebp-1],0
>0064FB7B    je          0064FBF2
>0064FB7D    jmp         0064FBE0
 0064FB7F    xor         edx,edx
 0064FB81    mov         eax,[006E48C8];gvar_006E48C8
 0064FB86    call        TList.Get
 0064FB8B    mov         dword ptr [ebp-8],eax
 0064FB8E    xor         edx,edx
 0064FB90    mov         eax,[006E48C8];gvar_006E48C8
 0064FB95    call        TList.Delete
 0064FB9A    xor         eax,eax
 0064FB9C    push        ebp
 0064FB9D    push        64FBBD
 0064FBA2    push        dword ptr fs:[eax]
 0064FBA5    mov         dword ptr fs:[eax],esp
 0064FBA8    mov         eax,dword ptr [ebp-8]
 0064FBAB    mov         ebx,dword ptr [eax]
 0064FBAD    mov         eax,dword ptr [ebx+24]
 0064FBB0    call        dword ptr [ebx+20]
 0064FBB3    xor         eax,eax
 0064FBB5    pop         edx
 0064FBB6    pop         ecx
 0064FBB7    pop         ecx
 0064FBB8    mov         dword ptr fs:[eax],edx
>0064FBBB    jmp         0064FBD4
>0064FBBD    jmp         @HandleAnyException
 0064FBC2    call        AcquireExceptionObject
 0064FBC7    mov         edx,dword ptr [ebp-8]
 0064FBCA    mov         edx,dword ptr [edx]
 0064FBCC    mov         dword ptr [edx+28],eax
 0064FBCF    call        @DoneExcept
 0064FBD4    mov         eax,dword ptr [ebp-8]
 0064FBD7    mov         eax,dword ptr [eax+4]
 0064FBDA    push        eax
 0064FBDB    call        KERNEL32.SetEvent
 0064FBE0    mov         eax,[006E48C8];gvar_006E48C8
 0064FBE5    cmp         dword ptr [eax+8],0
>0064FBE9    jg          0064FB7F
 0064FBEB    mov         byte ptr ds:[6ECFAC],0;ProcPosted:Boolean
 0064FBF2    xor         eax,eax
 0064FBF4    pop         edx
 0064FBF5    pop         ecx
 0064FBF6    pop         ecx
 0064FBF7    mov         dword ptr fs:[eax],edx
 0064FBFA    push        64FC15
 0064FBFF    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0064FC04    call        KERNEL32.LeaveCriticalSection
 0064FC09    ret
>0064FC0A    jmp         @HandleFinally
>0064FC0F    jmp         0064FBFF
 0064FC11    mov         byte ptr [ebp-1],0
 0064FC15    mov         al,byte ptr [ebp-1]
 0064FC18    pop         edi
 0064FC19    pop         esi
 0064FC1A    pop         ebx
 0064FC1B    mov         esp,ebp
 0064FC1D    pop         ebp
 0064FC1E    ret
*}
end;

//0064FCD0
constructor sub_0064FCD0;
begin
{*
 0064FCD0    push        ebp
 0064FCD1    mov         ebp,esp
 0064FCD3    add         esp,0FFFFFFEC
 0064FCD6    push        ebx
 0064FCD7    xor         ebx,ebx
 0064FCD9    mov         dword ptr [ebp-14],ebx
 0064FCDC    test        dl,dl
>0064FCDE    je          0064FCE8
 0064FCE0    add         esp,0FFFFFFF0
 0064FCE3    call        @ClassCreate
 0064FCE8    mov         byte ptr [ebp-6],cl
 0064FCEB    mov         byte ptr [ebp-5],dl
 0064FCEE    mov         dword ptr [ebp-4],eax
 0064FCF1    xor         eax,eax
 0064FCF3    push        ebp
 0064FCF4    push        64FD94
 0064FCF9    push        dword ptr fs:[eax]
 0064FCFC    mov         dword ptr fs:[eax],esp
 0064FCFF    xor         edx,edx
 0064FD01    mov         eax,dword ptr [ebp-4]
 0064FD04    call        TObject.Create
 0064FD09    call        AddThread
 0064FD0E    mov         eax,dword ptr [ebp-4]
 0064FD11    mov         dl,byte ptr [ebp-6]
 0064FD14    mov         byte ptr [eax+0E],dl
 0064FD17    mov         eax,dword ptr [ebp-4]
 0064FD1A    mov         dl,byte ptr [ebp-6]
 0064FD1D    mov         byte ptr [eax+0C],dl
 0064FD20    mov         eax,dword ptr [ebp-4]
 0064FD23    push        eax
 0064FD24    push        4
 0064FD26    mov         eax,dword ptr [ebp-4]
 0064FD29    add         eax,8
 0064FD2C    push        eax
 0064FD2D    mov         ecx,64FC20
 0064FD32    xor         edx,edx
 0064FD34    xor         eax,eax
 0064FD36    call        BeginThread
 0064FD3B    mov         edx,dword ptr [ebp-4]
 0064FD3E    mov         dword ptr [edx+4],eax
 0064FD41    mov         eax,dword ptr [ebp-4]
 0064FD44    cmp         dword ptr [eax+4],0
>0064FD48    jne         0064FD7E
 0064FD4A    call        KERNEL32.GetLastError
 0064FD4F    lea         edx,[ebp-14]
 0064FD52    call        0065BBAC
 0064FD57    mov         eax,dword ptr [ebp-14]
 0064FD5A    mov         dword ptr [ebp-10],eax
 0064FD5D    mov         byte ptr [ebp-0C],0B
 0064FD61    lea         eax,[ebp-10]
 0064FD64    push        eax
 0064FD65    push        0
 0064FD67    mov         ecx,dword ptr ds:[6EA0E0];^gvar_006550B4
 0064FD6D    mov         dl,1
 0064FD6F    mov         eax,[0064303C];EThread
 0064FD74    call        Exception.CreateResFmt;EThread.Create
 0064FD79    call        @RaiseExcept
 0064FD7E    xor         eax,eax
 0064FD80    pop         edx
 0064FD81    pop         ecx
 0064FD82    pop         ecx
 0064FD83    mov         dword ptr fs:[eax],edx
 0064FD86    push        64FD9B
 0064FD8B    lea         eax,[ebp-14]
 0064FD8E    call        @LStrClr
 0064FD93    ret
>0064FD94    jmp         @HandleFinally
>0064FD99    jmp         0064FD8B
 0064FD9B    mov         eax,dword ptr [ebp-4]
 0064FD9E    cmp         byte ptr [ebp-5],0
>0064FDA2    je          0064FDB3
 0064FDA4    call        @AfterConstruction
 0064FDA9    pop         dword ptr fs:[0]
 0064FDB0    add         esp,0C
 0064FDB3    mov         eax,dword ptr [ebp-4]
 0064FDB6    pop         ebx
 0064FDB7    mov         esp,ebp
 0064FDB9    pop         ebp
 0064FDBA    ret
*}
end;

//0064FDBC
destructor TThread.Destroy;
begin
{*
 0064FDBC    push        ebp
 0064FDBD    mov         ebp,esp
 0064FDBF    add         esp,0FFFFFFF8
 0064FDC2    call        @BeforeDestruction
 0064FDC7    mov         byte ptr [ebp-5],dl
 0064FDCA    mov         dword ptr [ebp-4],eax
 0064FDCD    mov         eax,dword ptr [ebp-4]
 0064FDD0    cmp         dword ptr [eax+8],0
>0064FDD4    je          0064FE00
 0064FDD6    mov         eax,dword ptr [ebp-4]
 0064FDD9    cmp         byte ptr [eax+10],0
>0064FDDD    jne         0064FE00
 0064FDDF    mov         eax,dword ptr [ebp-4]
 0064FDE2    call        00650134
 0064FDE7    mov         eax,dword ptr [ebp-4]
 0064FDEA    cmp         byte ptr [eax+0C],0
>0064FDEE    je          0064FDF8
 0064FDF0    mov         eax,dword ptr [ebp-4]
 0064FDF3    call        006500FC
 0064FDF8    mov         eax,dword ptr [ebp-4]
 0064FDFB    call        00650148
 0064FE00    mov         eax,dword ptr [ebp-4]
 0064FE03    cmp         dword ptr [eax+4],0
>0064FE07    je          0064FE15
 0064FE09    mov         eax,dword ptr [ebp-4]
 0064FE0C    mov         eax,dword ptr [eax+4]
 0064FE0F    push        eax
 0064FE10    call        KERNEL32.CloseHandle
 0064FE15    mov         dl,byte ptr [ebp-5]
 0064FE18    and         dl,0FC
 0064FE1B    mov         eax,dword ptr [ebp-4]
 0064FE1E    call        TObject.Destroy
 0064FE23    mov         eax,dword ptr [ebp-4]
 0064FE26    mov         eax,dword ptr [eax+2C]
 0064FE29    call        TObject.Free
 0064FE2E    call        RemoveThread
 0064FE33    cmp         byte ptr [ebp-5],0
>0064FE37    jle         0064FE41
 0064FE39    mov         eax,dword ptr [ebp-4]
 0064FE3C    call        @ClassDestroy
 0064FE41    pop         ecx
 0064FE42    pop         ecx
 0064FE43    pop         ebp
 0064FE44    ret
*}
end;

//0064FE48
procedure TThread.AfterConstruction;
begin
{*
 0064FE48    push        ebp
 0064FE49    mov         ebp,esp
 0064FE4B    push        ecx
 0064FE4C    mov         dword ptr [ebp-4],eax
 0064FE4F    mov         eax,dword ptr [ebp-4]
 0064FE52    cmp         byte ptr [eax+0C],0
>0064FE56    jne         0064FE60
 0064FE58    mov         eax,dword ptr [ebp-4]
 0064FE5B    call        006500FC
 0064FE60    pop         ecx
 0064FE61    pop         ebp
 0064FE62    ret
*}
end;

//0064FE64
{*procedure sub_0064FE64(?:?; ?:?);
begin
 0064FE64    push        ebp
 0064FE65    mov         ebp,esp
 0064FE67    add         esp,0FFFFFFE4
 0064FE6A    xor         ecx,ecx
 0064FE6C    mov         dword ptr [ebp-1C],ecx
 0064FE6F    mov         dword ptr [ebp-8],edx
 0064FE72    mov         dword ptr [ebp-4],eax
 0064FE75    xor         eax,eax
 0064FE77    push        ebp
 0064FE78    push        64FEDB
 0064FE7D    push        dword ptr fs:[eax]
 0064FE80    mov         dword ptr fs:[eax],esp
 0064FE83    cmp         dword ptr [ebp-8],0
>0064FE87    je          0064FEC5
 0064FE89    lea         edx,[ebp-1C]
 0064FE8C    mov         eax,dword ptr [ebp-8]
 0064FE8F    call        0065BBAC
 0064FE94    mov         eax,dword ptr [ebp-1C]
 0064FE97    mov         dword ptr [ebp-18],eax
 0064FE9A    mov         byte ptr [ebp-14],0B
 0064FE9E    mov         eax,dword ptr [ebp-8]
 0064FEA1    mov         dword ptr [ebp-10],eax
 0064FEA4    mov         byte ptr [ebp-0C],0
 0064FEA8    lea         eax,[ebp-18]
 0064FEAB    push        eax
 0064FEAC    push        1
 0064FEAE    mov         ecx,dword ptr ds:[6EA0E4];^gvar_006550BC
 0064FEB4    mov         dl,1
 0064FEB6    mov         eax,[0064303C];EThread
 0064FEBB    call        Exception.CreateResFmt;EThread.Create
 0064FEC0    call        @RaiseExcept
 0064FEC5    xor         eax,eax
 0064FEC7    pop         edx
 0064FEC8    pop         ecx
 0064FEC9    pop         ecx
 0064FECA    mov         dword ptr fs:[eax],edx
 0064FECD    push        64FEE2
 0064FED2    lea         eax,[ebp-1C]
 0064FED5    call        @LStrClr
 0064FEDA    ret
>0064FEDB    jmp         @HandleFinally
>0064FEE0    jmp         0064FED2
 0064FEE2    mov         esp,ebp
 0064FEE4    pop         ebp
 0064FEE5    ret
end;*}

//0064FEE8
{*procedure sub_0064FEE8(?:TAnalyzeThread; ?:?);
begin
 0064FEE8    push        ebp
 0064FEE9    mov         ebp,esp
 0064FEEB    add         esp,0FFFFFFF8
 0064FEEE    mov         byte ptr [ebp-5],dl
 0064FEF1    mov         dword ptr [ebp-4],eax
 0064FEF4    cmp         byte ptr [ebp-5],0
>0064FEF8    jne         0064FF09
 0064FEFA    call        KERNEL32.GetLastError
 0064FEFF    mov         edx,eax
 0064FF01    mov         eax,dword ptr [ebp-4]
 0064FF04    call        0064FE64
 0064FF09    pop         ecx
 0064FF0A    pop         ecx
 0064FF0B    pop         ebp
 0064FF0C    ret
end;*}

//0064FF34
procedure sub_0064FF34;
begin
{*
 0064FF34    push        ebp
 0064FF35    mov         ebp,esp
 0064FF37    push        ecx
 0064FF38    mov         dword ptr [ebp-4],eax
 0064FF3B    mov         eax,dword ptr [ebp-4]
 0064FF3E    cmp         word ptr [eax+1A],0;TThread.?f1A:word
>0064FF43    je          0064FF56
 0064FF45    mov         eax,dword ptr [ebp-4]
 0064FF48    push        eax
 0064FF49    push        64FF10
 0064FF4E    mov         eax,dword ptr [ebp-4]
 0064FF51    call        0064FF94
 0064FF56    pop         ecx
 0064FF57    pop         ebp
 0064FF58    ret
*}
end;

//0064FF5C
{*procedure sub_0064FF5C(?:TAnalyzeThread; ?:?);
begin
 0064FF5C    push        ebp
 0064FF5D    mov         ebp,esp
 0064FF5F    add         esp,0FFFFFFF8
 0064FF62    mov         byte ptr [ebp-5],dl
 0064FF65    mov         dword ptr [ebp-4],eax
 0064FF68    xor         eax,eax
 0064FF6A    mov         al,byte ptr [ebp-5]
 0064FF6D    mov         eax,dword ptr [eax*4+6E48CC]
 0064FF74    push        eax
 0064FF75    mov         eax,dword ptr [ebp-4]
 0064FF78    mov         eax,dword ptr [eax+4];TAnalyzeThread.FHandle:THandle
 0064FF7B    push        eax
 0064FF7C    call        KERNEL32.SetThreadPriority
 0064FF81    cmp         eax,1
 0064FF84    sbb         edx,edx
 0064FF86    inc         edx
 0064FF87    mov         eax,dword ptr [ebp-4]
 0064FF8A    call        0064FEE8
 0064FF8F    pop         ecx
 0064FF90    pop         ecx
 0064FF91    pop         ebp
 0064FF92    ret
end;*}

//0064FF94
{*procedure sub_0064FF94(?:TThread; ?:?; ?:?);
begin
 0064FF94    push        ebp
 0064FF95    mov         ebp,esp
 0064FF97    add         esp,0FFFFFFF4
 0064FF9A    mov         dword ptr [ebp-4],eax
 0064FF9D    call        KERNEL32.GetCurrentThreadId
 0064FFA2    mov         edx,dword ptr ds:[6EA2D0];^gvar_006ED2F8:DWORD
 0064FFA8    cmp         eax,dword ptr [edx]
>0064FFAA    jne         0064FFB7
 0064FFAC    mov         eax,dword ptr [ebp+0C]
 0064FFAF    call        dword ptr [ebp+8]
>0064FFB2    jmp         006500CA
 0064FFB7    push        0
 0064FFB9    push        0
 0064FFBB    push        0FF
 0064FFBD    push        0
 0064FFBF    call        KERNEL32.CreateEventA
 0064FFC4    mov         dword ptr [ebp-8],eax
 0064FFC7    xor         eax,eax
 0064FFC9    push        ebp
 0064FFCA    push        6500AF
 0064FFCF    push        dword ptr fs:[eax]
 0064FFD2    mov         dword ptr fs:[eax],esp
 0064FFD5    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0064FFDA    call        KERNEL32.EnterCriticalSection
 0064FFDF    xor         eax,eax
 0064FFE1    push        ebp
 0064FFE2    push        650091
 0064FFE7    push        dword ptr fs:[eax]
 0064FFEA    mov         dword ptr fs:[eax],esp
 0064FFED    mov         eax,dword ptr [ebp-4]
 0064FFF0    xor         edx,edx
 0064FFF2    mov         dword ptr [eax+28],edx;TThread.FSynchronizeException:TObject
 0064FFF5    mov         eax,dword ptr [ebp-4]
 0064FFF8    mov         edx,dword ptr [ebp+8]
 0064FFFB    mov         dword ptr [eax+20],edx;TThread.FMethod:TThreadMethod
 0064FFFE    mov         edx,dword ptr [ebp+0C]
 00650001    mov         dword ptr [eax+24],edx;TThread.?f24:dword
 00650004    mov         eax,dword ptr [ebp-4]
 00650007    mov         dword ptr [ebp-0C],eax
 0065000A    lea         edx,[ebp-0C]
 0065000D    mov         eax,[006E48C8];0x0 gvar_006E48C8
 00650012    call        TList.Add
 00650017    mov         byte ptr ds:[6ECFAC],1;ProcPosted:Boolean
 0065001E    cmp         word ptr ds:[6E4832],0;gvar_006E4832
>00650026    je          00650037
 00650028    mov         edx,dword ptr [ebp-4]
 0065002B    mov         eax,dword ptr ds:[6E4834];0x0 gvar_006E4834
 00650031    call        dword ptr ds:[6E4830]
 00650037    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0065003C    call        KERNEL32.LeaveCriticalSection
 00650041    xor         eax,eax
 00650043    push        ebp
 00650044    push        650072
 00650049    push        dword ptr fs:[eax]
 0065004C    mov         dword ptr fs:[eax],esp
 0065004F    push        0FF
 00650051    mov         eax,dword ptr [ebp-8]
 00650054    push        eax
 00650055    call        KERNEL32.WaitForSingleObject
 0065005A    xor         eax,eax
 0065005C    pop         edx
 0065005D    pop         ecx
 0065005E    pop         ecx
 0065005F    mov         dword ptr fs:[eax],edx
 00650062    push        650079
 00650067    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0065006C    call        KERNEL32.EnterCriticalSection
 00650071    ret
>00650072    jmp         @HandleFinally
>00650077    jmp         00650067
 00650079    xor         eax,eax
 0065007B    pop         edx
 0065007C    pop         ecx
 0065007D    pop         ecx
 0065007E    mov         dword ptr fs:[eax],edx
 00650081    push        650098
 00650086    push        6ECFB0;ThreadLock:TRTLCriticalSection
 0065008B    call        KERNEL32.LeaveCriticalSection
 00650090    ret
>00650091    jmp         @HandleFinally
>00650096    jmp         00650086
 00650098    xor         eax,eax
 0065009A    pop         edx
 0065009B    pop         ecx
 0065009C    pop         ecx
 0065009D    mov         dword ptr fs:[eax],edx
 006500A0    push        6500B6
 006500A5    mov         eax,dword ptr [ebp-8]
 006500A8    push        eax
 006500A9    call        KERNEL32.CloseHandle
 006500AE    ret
>006500AF    jmp         @HandleFinally
>006500B4    jmp         006500A5
 006500B6    mov         eax,dword ptr [ebp-4]
 006500B9    cmp         dword ptr [eax+28],0;TThread.FSynchronizeException:TObject
>006500BD    je          006500CA
 006500BF    mov         eax,dword ptr [ebp-4]
 006500C2    mov         eax,dword ptr [eax+28];TThread.FSynchronizeException:TObject
 006500C5    call        @RaiseExcept
 006500CA    mov         esp,ebp
 006500CC    pop         ebp
 006500CD    ret         8
end;*}

//006500D0
{*procedure sub_006500D0(?:?);
begin
 006500D0    push        ebp
 006500D1    mov         ebp,esp
 006500D3    push        ecx
 006500D4    mov         dword ptr [ebp-4],eax
 006500D7    mov         eax,dword ptr [ebp-4]
 006500DA    mov         byte ptr [eax+0E],1
 006500DE    mov         eax,dword ptr [ebp-4]
 006500E1    mov         eax,dword ptr [eax+4]
 006500E4    push        eax
 006500E5    call        KERNEL32.SuspendThread
 006500EA    test        eax,eax
 006500EC    setge       dl
 006500EF    mov         eax,dword ptr [ebp-4]
 006500F2    call        0064FEE8
 006500F7    pop         ecx
 006500F8    pop         ebp
 006500F9    ret
end;*}

//006500FC
{*procedure sub_006500FC(?:?);
begin
 006500FC    push        ebp
 006500FD    mov         ebp,esp
 006500FF    add         esp,0FFFFFFF8
 00650102    mov         dword ptr [ebp-4],eax
 00650105    mov         eax,dword ptr [ebp-4]
 00650108    mov         eax,dword ptr [eax+4]
 0065010B    push        eax
 0065010C    call        KERNEL32.ResumeThread
 00650111    mov         dword ptr [ebp-8],eax
 00650114    cmp         dword ptr [ebp-8],0
 00650118    setge       dl
 0065011B    mov         eax,dword ptr [ebp-4]
 0065011E    call        0064FEE8
 00650123    cmp         dword ptr [ebp-8],1
>00650127    jne         00650130
 00650129    mov         eax,dword ptr [ebp-4]
 0065012C    mov         byte ptr [eax+0E],0
 00650130    pop         ecx
 00650131    pop         ecx
 00650132    pop         ebp
 00650133    ret
end;*}

//00650134
{*procedure sub_00650134(?:?);
begin
 00650134    push        ebp
 00650135    mov         ebp,esp
 00650137    push        ecx
 00650138    mov         dword ptr [ebp-4],eax
 0065013B    mov         eax,dword ptr [ebp-4]
 0065013E    mov         byte ptr [eax+0D],1
 00650142    pop         ecx
 00650143    pop         ebp
 00650144    ret
end;*}

//00650148
{*function sub_00650148(?:?):?;
begin
 00650148    push        ebp
 00650149    mov         ebp,esp
 0065014B    add         esp,0FFFFFFD4
 0065014E    mov         dword ptr [ebp-4],eax
 00650151    mov         eax,dword ptr [ebp-4]
 00650154    mov         eax,dword ptr [eax+4]
 00650157    mov         dword ptr [ebp-0C],eax
 0065015A    call        KERNEL32.GetCurrentThreadId
 0065015F    mov         edx,dword ptr ds:[6EA2D0];^gvar_006ED2F8:DWORD
 00650165    cmp         eax,dword ptr [edx]
>00650167    jne         006501BD
 00650169    xor         eax,eax
 0065016B    mov         dword ptr [ebp-10],eax
 0065016E    cmp         dword ptr [ebp-10],1
>00650172    jne         00650185
 00650174    push        0
 00650176    push        0
 00650178    push        0
 0065017A    push        0
 0065017C    lea         eax,[ebp-2C]
 0065017F    push        eax
 00650180    call        USER32.PeekMessageA
 00650185    push        0
 00650187    call        KERNEL32.Sleep
 0065018C    call        CheckSynchronize
 00650191    push        40
 00650193    push        0
 00650195    push        0
 00650197    lea         eax,[ebp-0C]
 0065019A    push        eax
 0065019B    push        1
 0065019D    call        USER32.MsgWaitForMultipleObjects
 006501A2    mov         dword ptr [ebp-10],eax
 006501A5    cmp         dword ptr [ebp-10],0FFFFFFFF
 006501A9    setne       al
 006501AC    neg         al
 006501AE    sbb         eax,eax
 006501B0    call        0065E048
 006501B5    cmp         dword ptr [ebp-10],0
>006501B9    jne         0065016E
>006501BB    jmp         006501C8
 006501BD    push        0FF
 006501BF    mov         eax,dword ptr [ebp-0C]
 006501C2    push        eax
 006501C3    call        KERNEL32.WaitForSingleObject
 006501C8    lea         eax,[ebp-8]
 006501CB    push        eax
 006501CC    mov         eax,dword ptr [ebp-0C]
 006501CF    push        eax
 006501D0    call        KERNEL32.GetExitCodeThread
 006501D5    cmp         eax,1
 006501D8    sbb         edx,edx
 006501DA    inc         edx
 006501DB    mov         eax,dword ptr [ebp-4]
 006501DE    call        0064FEE8
 006501E3    mov         eax,dword ptr [ebp-8]
 006501E6    mov         esp,ebp
 006501E8    pop         ebp
 006501E9    ret
end;*}

//006501EC
constructor TComponent.Create(AOwner:TComponent);
begin
{*
 006501EC    push        ebp
 006501ED    mov         ebp,esp
 006501EF    add         esp,0FFFFFFF4
 006501F2    test        dl,dl
>006501F4    je          006501FE
 006501F6    add         esp,0FFFFFFF0
 006501F9    call        @ClassCreate
 006501FE    mov         dword ptr [ebp-0C],ecx
 00650201    mov         byte ptr [ebp-5],dl
 00650204    mov         dword ptr [ebp-4],eax
 00650207    mov         eax,dword ptr [ebp-4]
 0065020A    mov         dl,byte ptr ds:[650244]
 00650210    mov         byte ptr [eax+24],dl
 00650213    cmp         dword ptr [ebp-0C],0
>00650217    je          00650224
 00650219    mov         edx,dword ptr [ebp-4]
 0065021C    mov         eax,dword ptr [ebp-0C]
 0065021F    call        0065048C
 00650224    mov         eax,dword ptr [ebp-4]
 00650227    cmp         byte ptr [ebp-5],0
>0065022B    je          0065023C
 0065022D    call        @AfterConstruction
 00650232    pop         dword ptr fs:[0]
 00650239    add         esp,0C
 0065023C    mov         eax,dword ptr [ebp-4]
 0065023F    mov         esp,ebp
 00650241    pop         ebp
 00650242    ret
*}
end;

//00650248
destructor TComponent.Destroy;
begin
{*
 00650248    push        ebp
 00650249    mov         ebp,esp
 0065024B    add         esp,0FFFFFFF8
 0065024E    push        ebx
 0065024F    call        @BeforeDestruction
 00650254    mov         byte ptr [ebp-5],dl
 00650257    mov         dword ptr [ebp-4],eax
 0065025A    mov         eax,dword ptr [ebp-4]
 0065025D    call        006505B4
 00650262    mov         eax,dword ptr [ebp-4]
 00650265    cmp         dword ptr [eax+14],0
>00650269    je          006502AC
>0065026B    jmp         0065028C
 0065026D    mov         eax,dword ptr [ebp-4]
 00650270    mov         eax,dword ptr [eax+14]
 00650273    mov         edx,dword ptr [eax+8]
 00650276    dec         edx
 00650277    mov         eax,dword ptr [ebp-4]
 0065027A    mov         eax,dword ptr [eax+14]
 0065027D    call        TList.Get
 00650282    mov         cl,1
 00650284    mov         edx,dword ptr [ebp-4]
 00650287    mov         ebx,dword ptr [eax]
 00650289    call        dword ptr [ebx+10]
 0065028C    mov         eax,dword ptr [ebp-4]
 0065028F    cmp         dword ptr [eax+14],0
>00650293    je          006502A1
 00650295    mov         eax,dword ptr [ebp-4]
 00650298    mov         eax,dword ptr [eax+14]
 0065029B    cmp         dword ptr [eax+8],0
>0065029F    jg          0065026D
 006502A1    mov         eax,dword ptr [ebp-4]
 006502A4    add         eax,14
 006502A7    call        FreeAndNil
 006502AC    mov         eax,dword ptr [ebp-4]
 006502AF    call        00650544
 006502B4    mov         eax,dword ptr [ebp-4]
 006502B7    cmp         dword ptr [eax+4],0
>006502BB    je          006502CB
 006502BD    mov         eax,dword ptr [ebp-4]
 006502C0    mov         eax,dword ptr [eax+4]
 006502C3    mov         edx,dword ptr [ebp-4]
 006502C6    call        006504FC
 006502CB    mov         dl,byte ptr [ebp-5]
 006502CE    and         dl,0FC
 006502D1    mov         eax,dword ptr [ebp-4]
 006502D4    call        TPersistent.Destroy
 006502D9    cmp         byte ptr [ebp-5],0
>006502DD    jle         006502E7
 006502DF    mov         eax,dword ptr [ebp-4]
 006502E2    call        @ClassDestroy
 006502E7    pop         ebx
 006502E8    pop         ecx
 006502E9    pop         ecx
 006502EA    pop         ebp
 006502EB    ret
*}
end;

//006502EC
procedure TComponent.BeforeDestruction;
begin
{*
 006502EC    push        ebp
 006502ED    mov         ebp,esp
 006502EF    push        ecx
 006502F0    mov         dword ptr [ebp-4],eax
 006502F3    mov         eax,dword ptr [ebp-4]
 006502F6    test        byte ptr [eax+1C],8
>006502FA    jne         00650304
 006502FC    mov         eax,dword ptr [ebp-4]
 006502FF    call        006505B4
 00650304    pop         ecx
 00650305    pop         ebp
 00650306    ret
*}
end;

//00650308
procedure TComponent.FreeNotification(AComponent:TComponent);
begin
{*
 00650308    push        ebp
 00650309    mov         ebp,esp
 0065030B    add         esp,0FFFFFFF8
 0065030E    mov         dword ptr [ebp-8],edx
 00650311    mov         dword ptr [ebp-4],eax
 00650314    mov         eax,dword ptr [ebp-4]
 00650317    cmp         dword ptr [eax+4],0
>0065031B    je          0065032B
 0065031D    mov         eax,dword ptr [ebp-8]
 00650320    mov         eax,dword ptr [eax+4]
 00650323    mov         edx,dword ptr [ebp-4]
 00650326    cmp         eax,dword ptr [edx+4]
>00650329    je          00650371
 0065032B    mov         eax,dword ptr [ebp-4]
 0065032E    cmp         dword ptr [eax+14],0
>00650332    jne         00650346
 00650334    mov         dl,1
 00650336    mov         eax,[006422A4];TList
 0065033B    call        TObject.Create
 00650340    mov         edx,dword ptr [ebp-4]
 00650343    mov         dword ptr [edx+14],eax
 00650346    mov         edx,dword ptr [ebp-8]
 00650349    mov         eax,dword ptr [ebp-4]
 0065034C    mov         eax,dword ptr [eax+14]
 0065034F    call        TList.IndexOf
 00650354    test        eax,eax
>00650356    jge         00650371
 00650358    mov         edx,dword ptr [ebp-8]
 0065035B    mov         eax,dword ptr [ebp-4]
 0065035E    mov         eax,dword ptr [eax+14]
 00650361    call        TList.Add
 00650366    mov         edx,dword ptr [ebp-4]
 00650369    mov         eax,dword ptr [ebp-8]
 0065036C    call        TComponent.FreeNotification
 00650371    mov         eax,dword ptr [ebp-4]
 00650374    or          word ptr [eax+1C],100
 0065037A    pop         ecx
 0065037B    pop         ecx
 0065037C    pop         ebp
 0065037D    ret
*}
end;

//00650400
{*procedure sub_00650400(?:?; ?:?);
begin
 00650400    push        ebp
 00650401    mov         ebp,esp
 00650403    add         esp,0FFFFFFF8
 00650406    mov         dword ptr [ebp-8],edx
 00650409    mov         dword ptr [ebp-4],eax
 0065040C    mov         eax,dword ptr [ebp-4]
 0065040F    cmp         dword ptr [eax+10],0
>00650413    jne         00650427
 00650415    mov         dl,1
 00650417    mov         eax,[006422A4];TList
 0065041C    call        TObject.Create;TList.Create
 00650421    mov         edx,dword ptr [ebp-4]
 00650424    mov         dword ptr [edx+10],eax
 00650427    mov         edx,dword ptr [ebp-8]
 0065042A    mov         eax,dword ptr [ebp-4]
 0065042D    mov         eax,dword ptr [eax+10]
 00650430    call        TList.Add
 00650435    mov         eax,dword ptr [ebp-4]
 00650438    mov         edx,dword ptr [ebp-8]
 0065043B    mov         dword ptr [edx+4],eax
 0065043E    pop         ecx
 0065043F    pop         ecx
 00650440    pop         ebp
 00650441    ret
end;*}

//00650444
{*procedure sub_00650444(?:?; ?:?);
begin
 00650444    push        ebp
 00650445    mov         ebp,esp
 00650447    add         esp,0FFFFFFF8
 0065044A    mov         dword ptr [ebp-8],edx
 0065044D    mov         dword ptr [ebp-4],eax
 00650450    mov         eax,dword ptr [ebp-8]
 00650453    xor         edx,edx
 00650455    mov         dword ptr [eax+4],edx
 00650458    mov         edx,dword ptr [ebp-8]
 0065045B    mov         eax,dword ptr [ebp-4]
 0065045E    mov         eax,dword ptr [eax+10]
 00650461    call        TList.Remove
 00650466    mov         eax,dword ptr [ebp-4]
 00650469    mov         eax,dword ptr [eax+10]
 0065046C    cmp         dword ptr [eax+8],0
>00650470    jne         00650485
 00650472    mov         eax,dword ptr [ebp-4]
 00650475    mov         eax,dword ptr [eax+10]
 00650478    call        TObject.Free
 0065047D    mov         eax,dword ptr [ebp-4]
 00650480    xor         edx,edx
 00650482    mov         dword ptr [eax+10],edx
 00650485    pop         ecx
 00650486    pop         ecx
 00650487    pop         ebp
 00650488    ret
end;*}

//0065048C
{*procedure sub_0065048C(?:?; ?:?);
begin
 0065048C    push        ebp
 0065048D    mov         ebp,esp
 0065048F    add         esp,0FFFFFFF8
 00650492    push        ebx
 00650493    push        esi
 00650494    mov         dword ptr [ebp-8],edx
 00650497    mov         dword ptr [ebp-4],eax
 0065049A    mov         edx,dword ptr [ebp-4]
 0065049D    mov         eax,dword ptr [ebp-8]
 006504A0    mov         si,0FFF5
 006504A4    call        @CallDynaInst
 006504A9    mov         eax,dword ptr [ebp-8]
 006504AC    mov         eax,dword ptr [eax+8]
 006504AF    push        eax
 006504B0    xor         ecx,ecx
 006504B2    mov         edx,dword ptr [ebp-8]
 006504B5    mov         eax,dword ptr [ebp-4]
 006504B8    mov         ebx,dword ptr [eax]
 006504BA    call        dword ptr [ebx+20]
 006504BD    mov         edx,dword ptr [ebp-8]
 006504C0    mov         eax,dword ptr [ebp-4]
 006504C3    call        00650400
 006504C8    mov         dl,1
 006504CA    mov         eax,dword ptr [ebp-8]
 006504CD    call        00650C6C
 006504D2    mov         eax,dword ptr [ebp-4]
 006504D5    test        byte ptr [eax+1C],10
>006504D9    je          006504E7
 006504DB    mov         cl,1
 006504DD    mov         dl,1
 006504DF    mov         eax,dword ptr [ebp-8]
 006504E2    call        00650C04
 006504E7    xor         ecx,ecx
 006504E9    mov         edx,dword ptr [ebp-8]
 006504EC    mov         eax,dword ptr [ebp-4]
 006504EF    mov         ebx,dword ptr [eax]
 006504F1    call        dword ptr [ebx+10]
 006504F4    pop         esi
 006504F5    pop         ebx
 006504F6    pop         ecx
 006504F7    pop         ecx
 006504F8    pop         ebp
 006504F9    ret
end;*}

//006504FC
{*procedure sub_006504FC(?:?; ?:?);
begin
 006504FC    push        ebp
 006504FD    mov         ebp,esp
 006504FF    add         esp,0FFFFFFF8
 00650502    push        ebx
 00650503    mov         dword ptr [ebp-8],edx
 00650506    mov         dword ptr [ebp-4],eax
 00650509    push        0
 0065050B    mov         eax,dword ptr [ebp-8]
 0065050E    mov         ecx,dword ptr [eax+8]
 00650511    mov         edx,dword ptr [ebp-8]
 00650514    mov         eax,dword ptr [ebp-4]
 00650517    mov         ebx,dword ptr [eax]
 00650519    call        dword ptr [ebx+20]
 0065051C    mov         cl,1
 0065051E    mov         edx,dword ptr [ebp-8]
 00650521    mov         eax,dword ptr [ebp-4]
 00650524    mov         ebx,dword ptr [eax]
 00650526    call        dword ptr [ebx+10]
 00650529    xor         edx,edx
 0065052B    mov         eax,dword ptr [ebp-8]
 0065052E    call        00650C6C
 00650533    mov         edx,dword ptr [ebp-8]
 00650536    mov         eax,dword ptr [ebp-4]
 00650539    call        00650444
 0065053E    pop         ebx
 0065053F    pop         ecx
 00650540    pop         ecx
 00650541    pop         ebp
 00650542    ret
end;*}

//00650544
{*procedure sub_00650544(?:?);
begin
 00650544    push        ebp
 00650545    mov         ebp,esp
 00650547    add         esp,0FFFFFFF8
 0065054A    mov         dword ptr [ebp-4],eax
>0065054D    jmp         006505A1
 0065054F    mov         eax,dword ptr [ebp-4]
 00650552    mov         eax,dword ptr [eax+10]
 00650555    call        0064523C
 0065055A    mov         dword ptr [ebp-8],eax
 0065055D    mov         eax,dword ptr [ebp-8]
 00650560    test        byte ptr [eax+1D],1
>00650564    jne         0065057F
 00650566    mov         ax,[006505B0];0x210 gvar_006505B0
 0065056C    mov         edx,dword ptr [ebp-4]
 0065056F    and         ax,word ptr [edx+1C]
 00650573    mov         dx,word ptr ds:[6505B0];0x210 gvar_006505B0
 0065057A    cmp         dx,ax
>0065057D    jne         0065058C
 0065057F    mov         edx,dword ptr [ebp-8]
 00650582    mov         eax,dword ptr [ebp-4]
 00650585    call        006504FC
>0065058A    jmp         00650597
 0065058C    mov         edx,dword ptr [ebp-8]
 0065058F    mov         eax,dword ptr [ebp-4]
 00650592    call        00650444
 00650597    mov         dl,1
 00650599    mov         eax,dword ptr [ebp-8]
 0065059C    mov         ecx,dword ptr [eax]
 0065059E    call        dword ptr [ecx-4]
 006505A1    mov         eax,dword ptr [ebp-4]
 006505A4    cmp         dword ptr [eax+10],0
>006505A8    jne         0065054F
 006505AA    pop         ecx
 006505AB    pop         ecx
 006505AC    pop         ebp
 006505AD    ret
end;*}

//006505B4
procedure sub_006505B4(?:TWinControl);
begin
{*
 006505B4    push        ebp
 006505B5    mov         ebp,esp
 006505B7    add         esp,0FFFFFFF4
 006505BA    mov         dword ptr [ebp-4],eax
 006505BD    mov         eax,dword ptr [ebp-4]
 006505C0    test        byte ptr [eax+1C],8;TWinControl.FComponentState:TComponentState
>006505C4    jne         0065060B
 006505C6    mov         eax,dword ptr [ebp-4]
 006505C9    or          word ptr [eax+1C],8;TWinControl.FComponentState:TComponentState
 006505CE    mov         eax,dword ptr [ebp-4]
 006505D1    cmp         dword ptr [eax+10],0;TWinControl.FComponents:TList
>006505D5    je          0065060B
 006505D7    mov         eax,dword ptr [ebp-4]
 006505DA    mov         eax,dword ptr [eax+10];TWinControl.FComponents:TList
 006505DD    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 006505E0    dec         eax
 006505E1    test        eax,eax
>006505E3    jl          0065060B
 006505E5    inc         eax
 006505E6    mov         dword ptr [ebp-0C],eax
 006505E9    mov         dword ptr [ebp-8],0
 006505F0    mov         edx,dword ptr [ebp-8]
 006505F3    mov         eax,dword ptr [ebp-4]
 006505F6    mov         eax,dword ptr [eax+10];TWinControl.FComponents:TList
 006505F9    call        TList.Get
 006505FE    call        006505B4
 00650603    inc         dword ptr [ebp-8]
 00650606    dec         dword ptr [ebp-0C]
>00650609    jne         006505F0
 0065060B    mov         esp,ebp
 0065060D    pop         ebp
 0065060E    ret
*}
end;

//00650610
procedure sub_00650610(?:TComponent; ?:TComponent);
begin
{*
 00650610    push        ebp
 00650611    mov         ebp,esp
 00650613    add         esp,0FFFFFFF8
 00650616    mov         dword ptr [ebp-8],edx
 00650619    mov         dword ptr [ebp-4],eax
 0065061C    mov         eax,dword ptr [ebp-4]
 0065061F    cmp         dword ptr [eax+14],0
>00650623    je          00650652
 00650625    mov         edx,dword ptr [ebp-8]
 00650628    mov         eax,dword ptr [ebp-4]
 0065062B    mov         eax,dword ptr [eax+14]
 0065062E    call        TList.Remove
 00650633    mov         eax,dword ptr [ebp-4]
 00650636    mov         eax,dword ptr [eax+14]
 00650639    cmp         dword ptr [eax+8],0
>0065063D    jne         00650652
 0065063F    mov         eax,dword ptr [ebp-4]
 00650642    mov         eax,dword ptr [eax+14]
 00650645    call        TObject.Free
 0065064A    mov         eax,dword ptr [ebp-4]
 0065064D    xor         edx,edx
 0065064F    mov         dword ptr [eax+14],edx
 00650652    pop         ecx
 00650653    pop         ecx
 00650654    pop         ebp
 00650655    ret
*}
end;

//00650658
procedure sub_00650658(?:TComponent; ?:TComponent);
begin
{*
 00650658    push        ebp
 00650659    mov         ebp,esp
 0065065B    add         esp,0FFFFFFF8
 0065065E    mov         dword ptr [ebp-8],edx
 00650661    mov         dword ptr [ebp-4],eax
 00650664    mov         edx,dword ptr [ebp-8]
 00650667    mov         eax,dword ptr [ebp-4]
 0065066A    call        00650610
 0065066F    mov         edx,dword ptr [ebp-4]
 00650672    mov         eax,dword ptr [ebp-8]
 00650675    call        00650610
 0065067A    pop         ecx
 0065067B    pop         ecx
 0065067C    pop         ebp
 0065067D    ret
*}
end;

//00650680
procedure TComponent.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00650680    push        ebp
 00650681    mov         ebp,esp
 00650683    add         esp,0FFFFFFF0
 00650686    push        ebx
 00650687    mov         byte ptr [ebp-9],cl
 0065068A    mov         dword ptr [ebp-8],edx
 0065068D    mov         dword ptr [ebp-4],eax
 00650690    cmp         byte ptr [ebp-9],1
>00650694    jne         006506A7
 00650696    cmp         dword ptr [ebp-8],0
>0065069A    je          006506A7
 0065069C    mov         edx,dword ptr [ebp-8]
 0065069F    mov         eax,dword ptr [ebp-4]
 006506A2    call        00650658
 006506A7    mov         eax,dword ptr [ebp-4]
 006506AA    cmp         dword ptr [eax+10],0
>006506AE    je          00650700
 006506B0    mov         eax,dword ptr [ebp-4]
 006506B3    mov         eax,dword ptr [eax+10]
 006506B6    mov         eax,dword ptr [eax+8]
 006506B9    dec         eax
 006506BA    mov         dword ptr [ebp-10],eax
 006506BD    cmp         dword ptr [ebp-10],0
>006506C1    jl          00650700
 006506C3    mov         edx,dword ptr [ebp-10]
 006506C6    mov         eax,dword ptr [ebp-4]
 006506C9    mov         eax,dword ptr [eax+10]
 006506CC    call        TList.Get
 006506D1    mov         cl,byte ptr [ebp-9]
 006506D4    mov         edx,dword ptr [ebp-8]
 006506D7    mov         ebx,dword ptr [eax]
 006506D9    call        dword ptr [ebx+10]
 006506DC    dec         dword ptr [ebp-10]
 006506DF    mov         eax,dword ptr [ebp-4]
 006506E2    mov         eax,dword ptr [eax+10]
 006506E5    mov         eax,dword ptr [eax+8]
 006506E8    cmp         eax,dword ptr [ebp-10]
>006506EB    jg          006506FA
 006506ED    mov         eax,dword ptr [ebp-4]
 006506F0    mov         eax,dword ptr [eax+10]
 006506F3    mov         eax,dword ptr [eax+8]
 006506F6    dec         eax
 006506F7    mov         dword ptr [ebp-10],eax
 006506FA    cmp         dword ptr [ebp-10],0
>006506FE    jge         006506C3
 00650700    pop         ebx
 00650701    mov         esp,ebp
 00650703    pop         ebp
 00650704    ret
*}
end;

//00650708
procedure TComponent.DefineProperties(Filer:TFiler);
begin
{*
 00650708    push        ebp
 00650709    mov         ebp,esp
 0065070B    add         esp,0FFFFFFF0
 0065070E    push        ebx
 0065070F    mov         dword ptr [ebp-0C],edx
 00650712    mov         dword ptr [ebp-8],eax
 00650715    xor         eax,eax
 00650717    mov         dword ptr [ebp-4],eax
 0065071A    mov         eax,dword ptr [ebp-0C]
 0065071D    mov         eax,dword ptr [eax+20]
 00650720    mov         dword ptr [ebp-10],eax
 00650723    cmp         dword ptr [ebp-10],0
>00650727    je          00650732
 00650729    mov         eax,dword ptr [ebp-10]
 0065072C    mov         eax,dword ptr [eax+18]
 0065072F    mov         dword ptr [ebp-4],eax
 00650732    mov         eax,dword ptr [ebp-8]
 00650735    push        eax
 00650736    push        650380
 0065073B    mov         eax,dword ptr [ebp-8]
 0065073E    push        eax
 0065073F    push        6503C0
 00650744    mov         eax,dword ptr [ebp-8]
 00650747    mov         ax,word ptr [eax+18]
 0065074B    cmp         ax,word ptr [ebp-4]
 0065074F    setne       cl
 00650752    mov         edx,65079C;'Left'
 00650757    mov         eax,dword ptr [ebp-0C]
 0065075A    mov         ebx,dword ptr [eax]
 0065075C    call        dword ptr [ebx+4]
 0065075F    mov         eax,dword ptr [ebp-8]
 00650762    push        eax
 00650763    push        6503A0
 00650768    mov         eax,dword ptr [ebp-8]
 0065076B    push        eax
 0065076C    push        6503E0
 00650771    mov         ax,word ptr [ebp-2]
 00650775    mov         edx,dword ptr [ebp-8]
 00650778    cmp         ax,word ptr [edx+1A]
 0065077C    setne       cl
 0065077F    mov         edx,6507AC;'Top'
 00650784    mov         eax,dword ptr [ebp-0C]
 00650787    mov         ebx,dword ptr [eax]
 00650789    call        dword ptr [ebx+4]
 0065078C    pop         ebx
 0065078D    mov         esp,ebp
 0065078F    pop         ebp
 00650790    ret
*}
end;

//006507B0
procedure TComponent.sub_006507B0;
begin
{*
 006507B0    push        ebp
 006507B1    mov         ebp,esp
 006507B3    add         esp,0FFFFFFF8
 006507B6    mov         dword ptr [ebp-4],eax
 006507B9    mov         byte ptr [ebp-5],0
 006507BD    mov         al,byte ptr [ebp-5]
 006507C0    pop         ecx
 006507C1    pop         ecx
 006507C2    pop         ebp
 006507C3    ret
*}
end;

//006507C4
procedure TComponent.GetChildren(Proc:TGetChildProc; Root:TComponent);
begin
{*
 006507C4    push        ebp
 006507C5    mov         ebp,esp
 006507C7    add         esp,0FFFFFFF8
 006507CA    mov         dword ptr [ebp-8],edx
 006507CD    mov         dword ptr [ebp-4],eax
 006507D0    pop         ecx
 006507D1    pop         ecx
 006507D2    pop         ebp
 006507D3    ret         8
*}
end;

//006507D8
procedure TComponent.sub_006507D8;
begin
{*
 006507D8    push        ebp
 006507D9    mov         ebp,esp
 006507DB    add         esp,0FFFFFFF8
 006507DE    mov         dword ptr [ebp-4],eax
 006507E1    xor         eax,eax
 006507E3    mov         dword ptr [ebp-8],eax
 006507E6    mov         eax,dword ptr [ebp-8]
 006507E9    pop         ecx
 006507EA    pop         ecx
 006507EB    pop         ebp
 006507EC    ret
*}
end;

//006507F0
procedure TComponent.sub_006507F0;
begin
{*
 006507F0    push        ebp
 006507F1    mov         ebp,esp
 006507F3    add         esp,0FFFFFFF8
 006507F6    mov         dword ptr [ebp-4],eax
 006507F9    mov         eax,dword ptr [ebp-4]
 006507FC    mov         dword ptr [ebp-8],eax
 006507FF    mov         eax,dword ptr [ebp-8]
 00650802    pop         ecx
 00650803    pop         ecx
 00650804    pop         ebp
 00650805    ret
*}
end;

//00650808
{*procedure TComponent.sub_00645F04(?:?);
begin
 00650808    push        ebp
 00650809    mov         ebp,esp
 0065080B    add         esp,0FFFFFFF8
 0065080E    mov         dword ptr [ebp-8],edx
 00650811    mov         dword ptr [ebp-4],eax
 00650814    mov         eax,dword ptr [ebp-8]
 00650817    mov         edx,dword ptr [ebp-4]
 0065081A    mov         edx,dword ptr [edx+8];TComponent.Name:TComponentName
 0065081D    call        @LStrAsg
 00650822    pop         ecx
 00650823    pop         ecx
 00650824    pop         ebp
 00650825    ret
end;*}

//00650828
procedure TComponent.sub_00645FBC;
begin
{*
 00650828    push        ebp
 00650829    mov         ebp,esp
 0065082B    add         esp,0FFFFFFF8
 0065082E    mov         dword ptr [ebp-4],eax
 00650831    mov         eax,dword ptr [ebp-4]
 00650834    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 00650837    mov         dword ptr [ebp-8],eax
 0065083A    mov         eax,dword ptr [ebp-8]
 0065083D    pop         ecx
 0065083E    pop         ecx
 0065083F    pop         ebp
 00650840    ret
*}
end;

//00650844
{*procedure TComponent.sub_00650844(?:?; ?:?);
begin
 00650844    push        ebp
 00650845    mov         ebp,esp
 00650847    add         esp,0FFFFFFF4
 0065084A    mov         dword ptr [ebp-0C],ecx
 0065084D    mov         dword ptr [ebp-8],edx
 00650850    mov         dword ptr [ebp-4],eax
 00650853    mov         esp,ebp
 00650855    pop         ebp
 00650856    ret
end;*}

//00650858
procedure TComponent.sub_00650858;
begin
{*
 00650858    push        ebp
 00650859    mov         ebp,esp
 0065085B    add         esp,0FFFFFFF8
 0065085E    mov         dword ptr [ebp-4],eax
 00650861    xor         eax,eax
 00650863    mov         dword ptr [ebp-8],eax
 00650866    mov         eax,dword ptr [ebp-8]
 00650869    pop         ecx
 0065086A    pop         ecx
 0065086B    pop         ebp
 0065086C    ret
*}
end;

//00650870
{*procedure TComponent.sub_00650870(?:?);
begin
 00650870    push        ebp
 00650871    mov         ebp,esp
 00650873    add         esp,0FFFFFFF8
 00650876    mov         dword ptr [ebp-8],edx
 00650879    mov         dword ptr [ebp-4],eax
 0065087C    pop         ecx
 0065087D    pop         ecx
 0065087E    pop         ebp
 0065087F    ret
end;*}

//00650880
procedure TComponent.sub_00650880;
begin
{*
 00650880    push        ebp
 00650881    mov         ebp,esp
 00650883    push        ecx
 00650884    mov         dword ptr [ebp-4],eax
 00650887    mov         eax,dword ptr [ebp-4]
 0065088A    or          word ptr [eax+1C],40;TComponent.FComponentState:TComponentState
 0065088F    pop         ecx
 00650890    pop         ebp
 00650891    ret
*}
end;

//00650894
procedure TComponent.sub_00650894;
begin
{*
 00650894    push        ebp
 00650895    mov         ebp,esp
 00650897    push        ecx
 00650898    mov         dword ptr [ebp-4],eax
 0065089B    mov         eax,dword ptr [ebp-4]
 0065089E    and         word ptr [eax+1C],0FFFFFFBF;TComponent.FComponentState:TComponentState
 006508A3    pop         ecx
 006508A4    pop         ebp
 006508A5    ret
*}
end;

//006508A8
procedure TComponent.Loaded;
begin
{*
 006508A8    push        ebp
 006508A9    mov         ebp,esp
 006508AB    push        ecx
 006508AC    mov         dword ptr [ebp-4],eax
 006508AF    mov         eax,dword ptr [ebp-4]
 006508B2    and         word ptr [eax+1C],0FFFFFFFE
 006508B7    pop         ecx
 006508B8    pop         ebp
 006508B9    ret
*}
end;

//006508BC
procedure TComponent.sub_006508BC;
begin
{*
 006508BC    push        ebp
 006508BD    mov         ebp,esp
 006508BF    push        ecx
 006508C0    mov         dword ptr [ebp-4],eax
 006508C3    pop         ecx
 006508C4    pop         ebp
 006508C5    ret
*}
end;

//006508C8
{*procedure sub_006508C8(?:?);
begin
 006508C8    push        ebp
 006508C9    mov         ebp,esp
 006508CB    add         esp,0FFFFFFF8
 006508CE    mov         dword ptr [ebp-8],edx
 006508D1    mov         dword ptr [ebp-4],eax
 006508D4    mov         edx,dword ptr [ebp-4]
 006508D7    mov         eax,dword ptr [ebp-8]
 006508DA    call        0064A9E8
 006508DF    pop         ecx
 006508E0    pop         ecx
 006508E1    pop         ebp
 006508E2    ret
end;*}

//006508E4
{*procedure sub_006508E4(?:?);
begin
 006508E4    push        ebp
 006508E5    mov         ebp,esp
 006508E7    add         esp,0FFFFFFF8
 006508EA    mov         dword ptr [ebp-8],edx
 006508ED    mov         dword ptr [ebp-4],eax
 006508F0    mov         edx,dword ptr [ebp-4]
 006508F3    mov         eax,dword ptr [ebp-8]
 006508F6    mov         ecx,dword ptr [eax]
 006508F8    call        dword ptr [ecx+10]
 006508FB    pop         ecx
 006508FC    pop         ecx
 006508FD    pop         ebp
 006508FE    ret
end;*}

//00650900
{*procedure sub_00650900(?:?; ?:?; ?:?);
begin
 00650900    push        ebp
 00650901    mov         ebp,esp
 00650903    add         esp,0FFFFFFEC
 00650906    push        ebx
 00650907    mov         dword ptr [ebp-0C],ecx
 0065090A    mov         dword ptr [ebp-8],edx
 0065090D    mov         dword ptr [ebp-4],eax
 00650910    cmp         dword ptr [ebp-8],0
>00650914    je          00650966
 00650916    mov         edx,dword ptr [ebp+8]
 00650919    mov         eax,dword ptr [ebp-0C]
 0065091C    call        SameText
 00650921    test        al,al
>00650923    jne         00650966
 00650925    mov         eax,dword ptr [ebp-8]
 00650928    mov         eax,dword ptr [eax+4]
 0065092B    cmp         eax,dword ptr [ebp-4]
>0065092E    jne         00650966
 00650930    mov         edx,dword ptr [ebp+8]
 00650933    mov         eax,dword ptr [ebp-4]
 00650936    call        TComponent.FindComponent
 0065093B    test        eax,eax
>0065093D    je          00650966
 0065093F    mov         eax,dword ptr [ebp+8]
 00650942    mov         dword ptr [ebp-14],eax
 00650945    mov         byte ptr [ebp-10],0B
 00650949    lea         eax,[ebp-14]
 0065094C    push        eax
 0065094D    push        0
 0065094F    mov         ecx,dword ptr ds:[6EA064];^gvar_00654FBC
 00650955    mov         dl,1
 00650957    mov         eax,[0064218C];EComponentError
 0065095C    call        Exception.CreateResFmt;EComponentError.Create
 00650961    call        @RaiseExcept
 00650966    mov         eax,dword ptr [ebp-4]
 00650969    test        byte ptr [eax+1C],10;TComponent.FComponentState:TComponentState
>0065096D    je          0065098D
 0065096F    mov         eax,dword ptr [ebp-4]
 00650972    cmp         dword ptr [eax+4],0;TComponent.FOwner:TComponent
>00650976    je          0065098D
 00650978    mov         eax,dword ptr [ebp+8]
 0065097B    push        eax
 0065097C    mov         ecx,dword ptr [ebp-0C]
 0065097F    mov         edx,dword ptr [ebp-8]
 00650982    mov         eax,dword ptr [ebp-4]
 00650985    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 00650988    mov         ebx,dword ptr [eax]
 0065098A    call        dword ptr [ebx+20];TComponent.sub_00650900
 0065098D    pop         ebx
 0065098E    mov         esp,ebp
 00650990    pop         ebp
 00650991    ret         4
end;*}

//00650994
{*procedure TComponent.sub_00650994(?:?);
begin
 00650994    push        ebp
 00650995    mov         ebp,esp
 00650997    add         esp,0FFFFFFF8
 0065099A    push        esi
 0065099B    mov         dword ptr [ebp-8],edx
 0065099E    mov         dword ptr [ebp-4],eax
 006509A1    mov         edx,dword ptr [ebp-4]
 006509A4    mov         eax,dword ptr [ebp-8]
 006509A7    mov         si,0FFF4
 006509AB    call        @CallDynaInst
 006509B0    pop         esi
 006509B1    pop         ecx
 006509B2    pop         ecx
 006509B3    pop         ebp
 006509B4    ret
end;*}

//006509B8
{*procedure TComponent.sub_006509B8(?:?);
begin
 006509B8    push        ebp
 006509B9    mov         ebp,esp
 006509BB    add         esp,0FFFFFFF8
 006509BE    mov         dword ptr [ebp-8],edx
 006509C1    mov         dword ptr [ebp-4],eax
 006509C4    pop         ecx
 006509C5    pop         ecx
 006509C6    pop         ebp
 006509C7    ret
end;*}

//006509C8
function TComponent.FindComponent(const AName:AnsiString):TComponent;
begin
{*
 006509C8    push        ebp
 006509C9    mov         ebp,esp
 006509CB    add         esp,0FFFFFFEC
 006509CE    mov         dword ptr [ebp-8],edx
 006509D1    mov         dword ptr [ebp-4],eax
 006509D4    cmp         dword ptr [ebp-8],0
>006509D8    je          00650A27
 006509DA    mov         eax,dword ptr [ebp-4]
 006509DD    cmp         dword ptr [eax+10],0
>006509E1    je          00650A27
 006509E3    mov         eax,dword ptr [ebp-4]
 006509E6    mov         eax,dword ptr [eax+10]
 006509E9    mov         eax,dword ptr [eax+8]
 006509EC    dec         eax
 006509ED    test        eax,eax
>006509EF    jl          00650A27
 006509F1    inc         eax
 006509F2    mov         dword ptr [ebp-14],eax
 006509F5    mov         dword ptr [ebp-10],0
 006509FC    mov         eax,dword ptr [ebp-4]
 006509FF    mov         eax,dword ptr [eax+10]
 00650A02    mov         edx,dword ptr [ebp-10]
 00650A05    call        TList.Get
 00650A0A    mov         dword ptr [ebp-0C],eax
 00650A0D    mov         eax,dword ptr [ebp-0C]
 00650A10    mov         eax,dword ptr [eax+8]
 00650A13    mov         edx,dword ptr [ebp-8]
 00650A16    call        SameText
 00650A1B    test        al,al
>00650A1D    jne         00650A2C
 00650A1F    inc         dword ptr [ebp-10]
 00650A22    dec         dword ptr [ebp-14]
>00650A25    jne         006509FC
 00650A27    xor         eax,eax
 00650A29    mov         dword ptr [ebp-0C],eax
 00650A2C    mov         eax,dword ptr [ebp-0C]
 00650A2F    mov         esp,ebp
 00650A31    pop         ebp
 00650A32    ret
*}
end;

//00650A34
procedure TComponent.SetName(Value:TComponentName);
begin
{*
 00650A34    push        ebp
 00650A35    mov         ebp,esp
 00650A37    add         esp,0FFFFFFF0
 00650A3A    push        ebx
 00650A3B    mov         dword ptr [ebp-8],edx
 00650A3E    mov         dword ptr [ebp-4],eax
 00650A41    mov         eax,dword ptr [ebp-4]
 00650A44    mov         eax,dword ptr [eax+8];TComponent.Name:TComponentName
 00650A47    mov         edx,dword ptr [ebp-8]
 00650A4A    call        @LStrCmp
>00650A4F    je          00650AE4
 00650A55    cmp         dword ptr [ebp-8],0
>00650A59    je          00650A8E
 00650A5B    mov         eax,dword ptr [ebp-8]
 00650A5E    call        00657B18
 00650A63    test        al,al
>00650A65    jne         00650A8E
 00650A67    mov         eax,dword ptr [ebp-8]
 00650A6A    mov         dword ptr [ebp-10],eax
 00650A6D    mov         byte ptr [ebp-0C],0B
 00650A71    lea         eax,[ebp-10]
 00650A74    push        eax
 00650A75    push        0
 00650A77    mov         ecx,dword ptr ds:[6EA090];^gvar_00655014
 00650A7D    mov         dl,1
 00650A7F    mov         eax,[0064218C];EComponentError
 00650A84    call        Exception.CreateResFmt;EComponentError.Create
 00650A89    call        @RaiseExcept
 00650A8E    mov         eax,dword ptr [ebp-4]
 00650A91    cmp         dword ptr [eax+4],0;TComponent.FOwner:TComponent
>00650A95    je          00650AB1
 00650A97    mov         eax,dword ptr [ebp-8]
 00650A9A    push        eax
 00650A9B    mov         eax,dword ptr [ebp-4]
 00650A9E    mov         ecx,dword ptr [eax+8];TComponent.Name:TComponentName
 00650AA1    mov         edx,dword ptr [ebp-4]
 00650AA4    mov         eax,dword ptr [ebp-4]
 00650AA7    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 00650AAA    mov         ebx,dword ptr [eax]
 00650AAC    call        dword ptr [ebx+20];TComponent.sub_00650900
>00650AAF    jmp         00650AC5
 00650AB1    mov         eax,dword ptr [ebp-8]
 00650AB4    push        eax
 00650AB5    mov         eax,dword ptr [ebp-4]
 00650AB8    mov         ecx,dword ptr [eax+8];TComponent.Name:TComponentName
 00650ABB    xor         edx,edx
 00650ABD    mov         eax,dword ptr [ebp-4]
 00650AC0    mov         ebx,dword ptr [eax]
 00650AC2    call        dword ptr [ebx+20];TComponent.sub_00650900
 00650AC5    xor         edx,edx
 00650AC7    mov         eax,dword ptr [ebp-4]
 00650ACA    call        00650C6C
 00650ACF    mov         edx,dword ptr [ebp-8]
 00650AD2    mov         eax,dword ptr [ebp-4]
 00650AD5    call        00650AEC
 00650ADA    mov         dl,1
 00650ADC    mov         eax,dword ptr [ebp-4]
 00650ADF    call        00650C6C
 00650AE4    pop         ebx
 00650AE5    mov         esp,ebp
 00650AE7    pop         ebp
 00650AE8    ret
*}
end;

//00650AEC
procedure sub_00650AEC(?:TComponent; ?:TComponentName);
begin
{*
 00650AEC    push        ebp
 00650AED    mov         ebp,esp
 00650AEF    add         esp,0FFFFFFF8
 00650AF2    mov         dword ptr [ebp-8],edx
 00650AF5    mov         dword ptr [ebp-4],eax
 00650AF8    mov         eax,dword ptr [ebp-4]
 00650AFB    add         eax,8;TComponent.Name:TComponentName
 00650AFE    mov         edx,dword ptr [ebp-8]
 00650B01    call        @LStrAsg
 00650B06    pop         ecx
 00650B07    pop         ecx
 00650B08    pop         ebp
 00650B09    ret
*}
end;

//00650B0C
{*function sub_00650B0C(?:TComponent; ?:?):?;
begin
 00650B0C    push        ebp
 00650B0D    mov         ebp,esp
 00650B0F    add         esp,0FFFFFFF4
 00650B12    mov         dword ptr [ebp-8],edx
 00650B15    mov         dword ptr [ebp-4],eax
 00650B18    mov         eax,dword ptr [ebp-4]
 00650B1B    cmp         dword ptr [eax+10],0;TComponent.FComponents:TList
>00650B1F    jne         00650B34
 00650B21    mov         edx,dword ptr ds:[6EA0AC];^gvar_0065504C
 00650B27    mov         ecx,dword ptr [ebp-8]
 00650B2A    mov         eax,[006422A4];TList
 00650B2F    call        00644F60
 00650B34    mov         edx,dword ptr [ebp-8]
 00650B37    mov         eax,dword ptr [ebp-4]
 00650B3A    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 00650B3D    call        TList.Get
 00650B42    mov         dword ptr [ebp-0C],eax
 00650B45    mov         eax,dword ptr [ebp-0C]
 00650B48    mov         esp,ebp
 00650B4A    pop         ebp
 00650B4B    ret
end;*}

//00650B4C
{*function sub_00650B4C(?:TComponent):?;
begin
 00650B4C    push        ebp
 00650B4D    mov         ebp,esp
 00650B4F    add         esp,0FFFFFFF8
 00650B52    mov         dword ptr [ebp-4],eax
 00650B55    mov         eax,dword ptr [ebp-4]
 00650B58    cmp         dword ptr [eax+10],0;TComponent.FComponents:TList
>00650B5C    je          00650B6C
 00650B5E    mov         eax,dword ptr [ebp-4]
 00650B61    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 00650B64    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00650B67    mov         dword ptr [ebp-8],eax
>00650B6A    jmp         00650B71
 00650B6C    xor         eax,eax
 00650B6E    mov         dword ptr [ebp-8],eax
 00650B71    mov         eax,dword ptr [ebp-8]
 00650B74    pop         ecx
 00650B75    pop         ecx
 00650B76    pop         ebp
 00650B77    ret
end;*}

//00650B78
{*procedure sub_00650B78(?:?; ?:?);
begin
 00650B78    push        ebp
 00650B79    mov         ebp,esp
 00650B7B    add         esp,0FFFFFFF0
 00650B7E    mov         dword ptr [ebp-8],edx
 00650B81    mov         dword ptr [ebp-4],eax
 00650B84    mov         eax,dword ptr [ebp-4]
 00650B87    cmp         dword ptr [eax+4],0
>00650B8B    je          00650BFD
 00650B8D    mov         eax,dword ptr [ebp-4]
 00650B90    mov         eax,dword ptr [eax+4]
 00650B93    mov         eax,dword ptr [eax+10]
 00650B96    mov         edx,dword ptr [ebp-4]
 00650B99    call        TList.IndexOf
 00650B9E    mov         dword ptr [ebp-0C],eax
 00650BA1    cmp         dword ptr [ebp-0C],0
>00650BA5    jl          00650BFD
 00650BA7    mov         eax,dword ptr [ebp-4]
 00650BAA    mov         eax,dword ptr [eax+4]
 00650BAD    mov         eax,dword ptr [eax+10]
 00650BB0    mov         eax,dword ptr [eax+8]
 00650BB3    mov         dword ptr [ebp-10],eax
 00650BB6    cmp         dword ptr [ebp-8],0
>00650BBA    jge         00650BC1
 00650BBC    xor         eax,eax
 00650BBE    mov         dword ptr [ebp-8],eax
 00650BC1    mov         eax,dword ptr [ebp-8]
 00650BC4    cmp         eax,dword ptr [ebp-10]
>00650BC7    jl          00650BD0
 00650BC9    mov         eax,dword ptr [ebp-10]
 00650BCC    dec         eax
 00650BCD    mov         dword ptr [ebp-8],eax
 00650BD0    mov         eax,dword ptr [ebp-8]
 00650BD3    cmp         eax,dword ptr [ebp-0C]
>00650BD6    je          00650BFD
 00650BD8    mov         eax,dword ptr [ebp-4]
 00650BDB    mov         eax,dword ptr [eax+4]
 00650BDE    mov         eax,dword ptr [eax+10]
 00650BE1    mov         edx,dword ptr [ebp-0C]
 00650BE4    call        TList.Delete
 00650BE9    mov         eax,dword ptr [ebp-4]
 00650BEC    mov         eax,dword ptr [eax+4]
 00650BEF    mov         eax,dword ptr [eax+10]
 00650BF2    mov         ecx,dword ptr [ebp-4]
 00650BF5    mov         edx,dword ptr [ebp-8]
 00650BF8    call        TList.Insert
 00650BFD    mov         esp,ebp
 00650BFF    pop         ebp
 00650C00    ret
end;*}

//00650C04
{*procedure sub_00650C04(?:?; ?:?; ?:?);
begin
 00650C04    push        ebp
 00650C05    mov         ebp,esp
 00650C07    add         esp,0FFFFFFF0
 00650C0A    mov         byte ptr [ebp-6],cl
 00650C0D    mov         byte ptr [ebp-5],dl
 00650C10    mov         dword ptr [ebp-4],eax
 00650C13    cmp         byte ptr [ebp-5],0
>00650C17    je          00650C23
 00650C19    mov         eax,dword ptr [ebp-4]
 00650C1C    or          word ptr [eax+1C],10
>00650C21    jmp         00650C2B
 00650C23    mov         eax,dword ptr [ebp-4]
 00650C26    and         word ptr [eax+1C],0FFFFFFEF
 00650C2B    cmp         byte ptr [ebp-6],0
>00650C2F    je          00650C66
 00650C31    mov         eax,dword ptr [ebp-4]
 00650C34    call        00650B4C
 00650C39    dec         eax
 00650C3A    test        eax,eax
>00650C3C    jl          00650C66
 00650C3E    inc         eax
 00650C3F    mov         dword ptr [ebp-10],eax
 00650C42    mov         dword ptr [ebp-0C],0
 00650C49    mov         edx,dword ptr [ebp-0C]
 00650C4C    mov         eax,dword ptr [ebp-4]
 00650C4F    call        00650B0C
 00650C54    mov         cl,1
 00650C56    mov         dl,byte ptr [ebp-5]
 00650C59    call        00650C04
 00650C5E    inc         dword ptr [ebp-0C]
 00650C61    dec         dword ptr [ebp-10]
>00650C64    jne         00650C49
 00650C66    mov         esp,ebp
 00650C68    pop         ebp
 00650C69    ret
end;*}

//00650C6C
{*procedure sub_00650C6C(?:TComponent; ?:?);
begin
 00650C6C    push        ebp
 00650C6D    mov         ebp,esp
 00650C6F    add         esp,0FFFFFEF4
 00650C75    mov         byte ptr [ebp-5],dl
 00650C78    mov         dword ptr [ebp-4],eax
 00650C7B    mov         eax,dword ptr [ebp-4]
 00650C7E    cmp         dword ptr [eax+4],0;TComponent.FOwner:TComponent
>00650C82    je          00650CCB
 00650C84    lea         eax,[ebp-10C]
 00650C8A    mov         edx,dword ptr [ebp-4]
 00650C8D    mov         edx,dword ptr [edx+8];TComponent.Name:TComponentName
 00650C90    mov         ecx,0FF
 00650C95    call        @LStrToString
 00650C9A    lea         edx,[ebp-10C]
 00650CA0    mov         eax,dword ptr [ebp-4]
 00650CA3    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 00650CA6    call        TObject.FieldAddress
 00650CAB    mov         dword ptr [ebp-0C],eax
 00650CAE    cmp         dword ptr [ebp-0C],0
>00650CB2    je          00650CCB
 00650CB4    cmp         byte ptr [ebp-5],0
>00650CB8    je          00650CC4
 00650CBA    mov         eax,dword ptr [ebp-4]
 00650CBD    mov         edx,dword ptr [ebp-0C]
 00650CC0    mov         dword ptr [edx],eax
>00650CC2    jmp         00650CCB
 00650CC4    mov         eax,dword ptr [ebp-0C]
 00650CC7    xor         edx,edx
 00650CC9    mov         dword ptr [eax],edx
 00650CCB    mov         esp,ebp
 00650CCD    pop         ebp
 00650CCE    ret
end;*}

//00650CD0
{*procedure TComponent.sub_00650CD0(?:?);
begin
 00650CD0    push        ebp
 00650CD1    mov         ebp,esp
 00650CD3    add         esp,0FFFFFFF4
 00650CD6    mov         dword ptr [ebp-8],edx
 00650CD9    mov         dword ptr [ebp-4],eax
 00650CDC    mov         edx,dword ptr [ebp-4]
 00650CDF    mov         eax,dword ptr [ebp-8]
 00650CE2    mov         ecx,dword ptr [eax]
 00650CE4    call        dword ptr [ecx+38]
 00650CE7    mov         byte ptr [ebp-9],al
 00650CEA    cmp         byte ptr [ebp-9],0
>00650CEE    je          00650CFB
 00650CF0    mov         edx,dword ptr [ebp-4]
 00650CF3    mov         eax,dword ptr [ebp-8]
 00650CF6    mov         ecx,dword ptr [eax]
 00650CF8    call        dword ptr [ecx+40]
 00650CFB    mov         al,byte ptr [ebp-9]
 00650CFE    mov         esp,ebp
 00650D00    pop         ebp
 00650D01    ret
end;*}

//00650D04
{*procedure TComponent.sub_00650D04(?:?);
begin
 00650D04    push        ebp
 00650D05    mov         ebp,esp
 00650D07    add         esp,0FFFFFFF4
 00650D0A    mov         dword ptr [ebp-8],edx
 00650D0D    mov         dword ptr [ebp-4],eax
 00650D10    mov         edx,dword ptr [ebp-4]
 00650D13    mov         eax,dword ptr [ebp-8]
 00650D16    mov         ecx,dword ptr [eax]
 00650D18    call        dword ptr [ecx+38]
 00650D1B    mov         byte ptr [ebp-9],al
 00650D1E    cmp         byte ptr [ebp-9],0
>00650D22    je          00650D2F
 00650D24    mov         edx,dword ptr [ebp-4]
 00650D27    mov         eax,dword ptr [ebp-8]
 00650D2A    mov         ecx,dword ptr [eax]
 00650D2C    call        dword ptr [ecx+3C]
 00650D2F    mov         al,byte ptr [ebp-9]
 00650D32    mov         esp,ebp
 00650D34    pop         ebp
 00650D35    ret
end;*}

//00650D38
{*procedure sub_00650D38(?:TComponent; ?:?);
begin
 00650D38    push        ebp
 00650D39    mov         ebp,esp
 00650D3B    add         esp,0FFFFFFF8
 00650D3E    mov         byte ptr [ebp-5],dl
 00650D41    mov         dword ptr [ebp-4],eax
 00650D44    cmp         byte ptr [ebp-5],0
>00650D48    je          00650D53
 00650D4A    mov         eax,dword ptr [ebp-4]
 00650D4D    or          byte ptr [eax+24],4;TComponent.FComponentStyle:TComponentStyle
>00650D51    jmp         00650D5A
 00650D53    mov         eax,dword ptr [ebp-4]
 00650D56    and         byte ptr [eax+24],0FB;TComponent.FComponentStyle:TComponentStyle
 00650D5A    pop         ecx
 00650D5B    pop         ecx
 00650D5C    pop         ebp
 00650D5D    ret
end;*}

//00650D60
function TComponent.SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;
begin
{*
 00650D60    push        ebp
 00650D61    mov         ebp,esp
 00650D63    add         esp,0FFFFFFF0
 00650D66    push        ebx
 00650D67    mov         dword ptr [ebp-0C],ecx
 00650D6A    mov         dword ptr [ebp-8],edx
 00650D6D    mov         dword ptr [ebp-4],eax
 00650D70    mov         eax,dword ptr [ebp-4];{TObject.SafeCallException}
 00650D73    cmp         dword ptr [eax+20],0
>00650D77    je          00650D8F
 00650D79    mov         ecx,dword ptr [ebp-0C]
 00650D7C    mov         edx,dword ptr [ebp-8]
 00650D7F    mov         eax,dword ptr [ebp-4]
 00650D82    mov         eax,dword ptr [eax+20]
 00650D85    mov         ebx,dword ptr [eax]
 00650D87    call        dword ptr [ebx+1C]
 00650D8A    mov         dword ptr [ebp-10],eax
>00650D8D    jmp         00650DA0
 00650D8F    mov         ecx,dword ptr [ebp-0C]
 00650D92    mov         edx,dword ptr [ebp-8]
 00650D95    mov         eax,dword ptr [ebp-4]
 00650D98    call        TTeeCanvas.SafeCallException
 00650D9D    mov         dword ptr [ebp-10],eax
 00650DA0    mov         eax,dword ptr [ebp-10]
 00650DA3    pop         ebx
 00650DA4    mov         esp,ebp
 00650DA6    pop         ebp
 00650DA7    ret
*}
end;

//00650DA8
{*procedure sub_00650DA8(?:?; ?:?);
begin
 00650DA8    push        ebp
 00650DA9    mov         ebp,esp
 00650DAB    add         esp,0FFFFFFF4
 00650DAE    mov         dword ptr [ebp-0C],ecx
 00650DB1    mov         byte ptr [ebp-5],dl
 00650DB4    mov         dword ptr [ebp-4],eax
 00650DB7    mov         esp,ebp
 00650DB9    pop         ebp
 00650DBA    ret         4
end;*}

//00650DC0
{*function sub_00650DC0(?:?; ?:?):?;
begin
 00650DC0    push        ebp
 00650DC1    mov         ebp,esp
 00650DC3    push        ecx
 00650DC4    mov         eax,dword ptr [ebp+8]
 00650DC7    cmp         dword ptr [eax+20],0
>00650DCB    jne         00650DEF
 00650DCD    mov         ecx,dword ptr [ebp+10]
 00650DD0    mov         edx,dword ptr [ebp+0C]
 00650DD3    mov         eax,dword ptr [ebp+8]
 00650DD6    call        TObject.GetInterface
 00650DDB    test        al,al
>00650DDD    je          00650DE6
 00650DDF    xor         eax,eax
 00650DE1    mov         dword ptr [ebp-4],eax
>00650DE4    jmp         00650E05
 00650DE6    mov         dword ptr [ebp-4],80004002
>00650DED    jmp         00650E05
 00650DEF    mov         eax,dword ptr [ebp+10]
 00650DF2    push        eax
 00650DF3    mov         eax,dword ptr [ebp+0C]
 00650DF6    push        eax
 00650DF7    mov         eax,dword ptr [ebp+8]
 00650DFA    mov         eax,dword ptr [eax+20]
 00650DFD    push        eax
 00650DFE    mov         eax,dword ptr [eax]
 00650E00    call        dword ptr [eax]
 00650E02    mov         dword ptr [ebp-4],eax
 00650E05    mov         eax,dword ptr [ebp-4]
 00650E08    pop         ecx
 00650E09    pop         ebp
 00650E0A    ret         0C
end;*}

//00650E10
{*function sub_00650E10(?:?):?;
begin
 00650E10    push        ebp
 00650E11    mov         ebp,esp
 00650E13    push        ecx
 00650E14    mov         eax,dword ptr [ebp+8]
 00650E17    cmp         dword ptr [eax+20],0
>00650E1B    jne         00650E26
 00650E1D    mov         dword ptr [ebp-4],0FFFFFFFF
>00650E24    jmp         00650E35
 00650E26    mov         eax,dword ptr [ebp+8]
 00650E29    mov         eax,dword ptr [eax+20]
 00650E2C    push        eax
 00650E2D    mov         eax,dword ptr [eax]
 00650E2F    call        dword ptr [eax+4]
 00650E32    mov         dword ptr [ebp-4],eax
 00650E35    mov         eax,dword ptr [ebp-4]
 00650E38    pop         ecx
 00650E39    pop         ebp
 00650E3A    ret         4
end;*}

//00650E40
{*function sub_00650E40(?:?):?;
begin
 00650E40    push        ebp
 00650E41    mov         ebp,esp
 00650E43    push        ecx
 00650E44    mov         eax,dword ptr [ebp+8]
 00650E47    cmp         dword ptr [eax+20],0
>00650E4B    jne         00650E56
 00650E4D    mov         dword ptr [ebp-4],0FFFFFFFF
>00650E54    jmp         00650E65
 00650E56    mov         eax,dword ptr [ebp+8]
 00650E59    mov         eax,dword ptr [eax+20]
 00650E5C    push        eax
 00650E5D    mov         eax,dword ptr [eax]
 00650E5F    call        dword ptr [eax+8]
 00650E62    mov         dword ptr [ebp-4],eax
 00650E65    mov         eax,dword ptr [ebp-4]
 00650E68    pop         ecx
 00650E69    pop         ebp
 00650E6A    ret         4
end;*}

//00650E70
{*function sub_00650E70(?:?):?;
begin
 00650E70    push        ebp
 00650E71    mov         ebp,esp
 00650E73    add         esp,0FFFFFFF8
 00650E76    mov         dword ptr [ebp-4],eax
 00650E79    mov         eax,dword ptr [ebp-4]
 00650E7C    mov         dword ptr [ebp-8],eax
 00650E7F    mov         eax,dword ptr [ebp-8]
 00650E82    pop         ecx
 00650E83    pop         ecx
 00650E84    pop         ebp
 00650E85    ret
end;*}

//00650E88
constructor sub_00650E88;
begin
{*
 00650E88    push        ebp
 00650E89    mov         ebp,esp
 00650E8B    add         esp,0FFFFFFF4
 00650E8E    test        dl,dl
>00650E90    je          00650E9A
 00650E92    add         esp,0FFFFFFF0
 00650E95    call        @ClassCreate
 00650E9A    mov         dword ptr [ebp-0C],ecx
 00650E9D    mov         byte ptr [ebp-5],dl
 00650EA0    mov         dword ptr [ebp-4],eax
 00650EA3    xor         edx,edx
 00650EA5    mov         eax,dword ptr [ebp-4]
 00650EA8    call        TObject.Create
 00650EAD    mov         edx,dword ptr [ebp-0C]
 00650EB0    mov         eax,dword ptr [ebp-4]
 00650EB3    mov         ecx,dword ptr [eax]
 00650EB5    call        dword ptr [ecx];TBasicActionLink.sub_00650ED8
 00650EB7    mov         eax,dword ptr [ebp-4]
 00650EBA    cmp         byte ptr [ebp-5],0
>00650EBE    je          00650ECF
 00650EC0    call        @AfterConstruction
 00650EC5    pop         dword ptr fs:[0]
 00650ECC    add         esp,0C
 00650ECF    mov         eax,dword ptr [ebp-4]
 00650ED2    mov         esp,ebp
 00650ED4    pop         ebp
 00650ED5    ret
*}
end;

//00650ED8
{*procedure sub_00650ED8(?:?);
begin
 00650ED8    push        ebp
 00650ED9    mov         ebp,esp
 00650EDB    add         esp,0FFFFFFF8
 00650EDE    mov         dword ptr [ebp-8],edx
 00650EE1    mov         dword ptr [ebp-4],eax
 00650EE4    pop         ecx
 00650EE5    pop         ecx
 00650EE6    pop         ebp
 00650EE7    ret
end;*}

//00650EE8
destructor TBasicActionLink.Destroy;
begin
{*
 00650EE8    push        ebp
 00650EE9    mov         ebp,esp
 00650EEB    add         esp,0FFFFFFF8
 00650EEE    call        @BeforeDestruction
 00650EF3    mov         byte ptr [ebp-5],dl
 00650EF6    mov         dword ptr [ebp-4],eax
 00650EF9    mov         eax,dword ptr [ebp-4]
 00650EFC    cmp         dword ptr [eax+10],0
>00650F00    je          00650F10
 00650F02    mov         eax,dword ptr [ebp-4]
 00650F05    mov         eax,dword ptr [eax+10]
 00650F08    mov         edx,dword ptr [ebp-4]
 00650F0B    call        006512D0
 00650F10    mov         dl,byte ptr [ebp-5]
 00650F13    and         dl,0FC
 00650F16    mov         eax,dword ptr [ebp-4]
 00650F19    call        TObject.Destroy
 00650F1E    cmp         byte ptr [ebp-5],0
>00650F22    jle         00650F2C
 00650F24    mov         eax,dword ptr [ebp-4]
 00650F27    call        @ClassDestroy
 00650F2C    pop         ecx
 00650F2D    pop         ecx
 00650F2E    pop         ebp
 00650F2F    ret
*}
end;

//00650F30
procedure sub_00650F30;
begin
{*
 00650F30    push        ebp
 00650F31    mov         ebp,esp
 00650F33    push        ecx
 00650F34    push        ebx
 00650F35    mov         dword ptr [ebp-4],eax
 00650F38    mov         eax,dword ptr [ebp-4]
 00650F3B    cmp         word ptr [eax+0A],0;TBasicActionLink.?fA:word
>00650F40    je          00650F51
 00650F42    mov         ebx,dword ptr [ebp-4]
 00650F45    mov         eax,dword ptr [ebp-4]
 00650F48    mov         edx,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00650F4B    mov         eax,dword ptr [ebx+0C];TBasicActionLink.?fC:TMenuItem
 00650F4E    call        dword ptr [ebx+8];TBasicActionLink.FOnChange
 00650F51    pop         ebx
 00650F52    pop         ecx
 00650F53    pop         ebp
 00650F54    ret
*}
end;

//00650F58
{*function sub_00650F58(?:?):?;
begin
 00650F58    push        ebp
 00650F59    mov         ebp,esp
 00650F5B    add         esp,0FFFFFFF4
 00650F5E    push        esi
 00650F5F    mov         dword ptr [ebp-8],edx
 00650F62    mov         dword ptr [ebp-4],eax
 00650F65    mov         eax,dword ptr [ebp-4]
 00650F68    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00650F6B    mov         eax,dword ptr [eax+30];TBasicAction.FActionComponent:TComponent
 00650F6E    cmp         eax,dword ptr [ebp-8]
>00650F71    je          00650FB3
 00650F73    mov         eax,dword ptr [ebp-4]
 00650F76    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00650F79    cmp         dword ptr [eax+30],0;TBasicAction.FActionComponent:TComponent
>00650F7D    je          00650F93
 00650F7F    mov         eax,dword ptr [ebp-4]
 00650F82    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00650F85    mov         eax,dword ptr [eax+30];TBasicAction.FActionComponent:TComponent
 00650F88    mov         edx,dword ptr [ebp-4]
 00650F8B    mov         edx,dword ptr [edx+10];TBasicActionLink.FAction:TBasicAction
 00650F8E    call        00650658
 00650F93    cmp         dword ptr [ebp-8],0
>00650F97    je          00650FA7
 00650F99    mov         eax,dword ptr [ebp-4]
 00650F9C    mov         edx,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00650F9F    mov         eax,dword ptr [ebp-8]
 00650FA2    call        TComponent.FreeNotification
 00650FA7    mov         eax,dword ptr [ebp-4]
 00650FAA    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00650FAD    mov         edx,dword ptr [ebp-8]
 00650FB0    mov         dword ptr [eax+30],edx;TBasicAction.FActionComponent:TComponent
 00650FB3    mov         eax,dword ptr [ebp-4]
 00650FB6    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00650FB9    mov         si,0FFEF
 00650FBD    call        @CallDynaInst;TBasicAction.sub_006511A4
 00650FC2    mov         byte ptr [ebp-9],al
 00650FC5    mov         al,byte ptr [ebp-9]
 00650FC8    pop         esi
 00650FC9    mov         esp,ebp
 00650FCB    pop         ebp
 00650FCC    ret
end;*}

//00650FD0
{*procedure sub_00650FD0(?:?);
begin
 00650FD0    push        ebp
 00650FD1    mov         ebp,esp
 00650FD3    add         esp,0FFFFFFF8
 00650FD6    mov         dword ptr [ebp-8],edx
 00650FD9    mov         dword ptr [ebp-4],eax
 00650FDC    mov         eax,dword ptr [ebp-8]
 00650FDF    mov         edx,dword ptr [ebp-4]
 00650FE2    cmp         eax,dword ptr [edx+10];TBasicActionLink.FAction:TBasicAction
>00650FE5    je          00651018
 00650FE7    mov         eax,dword ptr [ebp-4]
 00650FEA    cmp         dword ptr [eax+10],0;TBasicActionLink.FAction:TBasicAction
>00650FEE    je          00650FFE
 00650FF0    mov         edx,dword ptr [ebp-4]
 00650FF3    mov         eax,dword ptr [ebp-4]
 00650FF6    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00650FF9    call        006512D0
 00650FFE    mov         eax,dword ptr [ebp-8]
 00651001    mov         edx,dword ptr [ebp-4]
 00651004    mov         dword ptr [edx+10],eax;TBasicActionLink.FAction:TBasicAction
 00651007    cmp         dword ptr [ebp-8],0
>0065100B    je          00651018
 0065100D    mov         edx,dword ptr [ebp-4]
 00651010    mov         eax,dword ptr [ebp-8]
 00651013    call        006512A8
 00651018    pop         ecx
 00651019    pop         ecx
 0065101A    pop         ebp
 0065101B    ret
end;*}

//0065101C
{*function sub_0065101C:?;
begin
 0065101C    push        ebp
 0065101D    mov         ebp,esp
 0065101F    add         esp,0FFFFFFF8
 00651022    mov         dword ptr [ebp-4],eax
 00651025    mov         byte ptr [ebp-5],1
 00651029    mov         al,byte ptr [ebp-5]
 0065102C    pop         ecx
 0065102D    pop         ecx
 0065102E    pop         ebp
 0065102F    ret
end;*}

//00651030
procedure sub_00651030;
begin
{*
 00651030    push        ebp
 00651031    mov         ebp,esp
 00651033    push        ecx
 00651034    mov         dword ptr [ebp-4],eax
 00651037    pop         ecx
 00651038    pop         ebp
 00651039    ret         8
*}
end;

//0065103C
{*function sub_0065103C:?;
begin
 0065103C    push        ebp
 0065103D    mov         ebp,esp
 0065103F    add         esp,0FFFFFFF8
 00651042    mov         dword ptr [ebp-4],eax
 00651045    mov         eax,dword ptr [ebp-4]
 00651048    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 0065104B    mov         edx,dword ptr [eax]
 0065104D    call        dword ptr [edx+44];TBasicAction.sub_006511D8
 00651050    mov         byte ptr [ebp-5],al
 00651053    mov         al,byte ptr [ebp-5]
 00651056    pop         ecx
 00651057    pop         ecx
 00651058    pop         ebp
 00651059    ret
end;*}

//0065105C
constructor TBasicAction.Create(AOwner:TComponent);
begin
{*
 0065105C    push        ebp
 0065105D    mov         ebp,esp
 0065105F    add         esp,0FFFFFFF4
 00651062    test        dl,dl
>00651064    je          0065106E
 00651066    add         esp,0FFFFFFF0
 00651069    call        @ClassCreate
 0065106E    mov         dword ptr [ebp-0C],ecx
 00651071    mov         byte ptr [ebp-5],dl
 00651074    mov         dword ptr [ebp-4],eax
 00651077    mov         ecx,dword ptr [ebp-0C]
 0065107A    xor         edx,edx
 0065107C    mov         eax,dword ptr [ebp-4]
 0065107F    call        TComponent.Create
 00651084    mov         dl,1
 00651086    mov         eax,[006422A4];TList
 0065108B    call        TObject.Create;TList.Create
 00651090    mov         edx,dword ptr [ebp-4]
 00651093    mov         dword ptr [edx+50],eax;TBasicAction.FClients:TList
 00651096    mov         eax,dword ptr [ebp-4]
 00651099    cmp         byte ptr [ebp-5],0
>0065109D    je          006510AE
 0065109F    call        @AfterConstruction
 006510A4    pop         dword ptr fs:[0]
 006510AB    add         esp,0C
 006510AE    mov         eax,dword ptr [ebp-4]
 006510B1    mov         esp,ebp
 006510B3    pop         ebp
 006510B4    ret
*}
end;

//006510B8
destructor TBasicAction.Destroy;
begin
{*
 006510B8    push        ebp
 006510B9    mov         ebp,esp
 006510BB    add         esp,0FFFFFFF8
 006510BE    call        @BeforeDestruction
 006510C3    mov         byte ptr [ebp-5],dl
 006510C6    mov         dword ptr [ebp-4],eax
 006510C9    mov         dl,byte ptr [ebp-5]
 006510CC    and         dl,0FC
 006510CF    mov         eax,dword ptr [ebp-4]
 006510D2    call        TComponent.Destroy
 006510D7    mov         eax,dword ptr [ebp-4]
 006510DA    cmp         dword ptr [eax+30],0;TBasicAction.FActionComponent:TComponent
>006510DE    je          00651105
 006510E0    mov         eax,dword ptr [ebp-4]
 006510E3    mov         eax,dword ptr [eax+30];TBasicAction.FActionComponent:TComponent
 006510E6    mov         edx,dword ptr [ebp-4]
 006510E9    call        00650658
>006510EE    jmp         00651105
 006510F0    mov         eax,dword ptr [ebp-4]
 006510F3    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 006510F6    call        0064523C
 006510FB    mov         edx,eax
 006510FD    mov         eax,dword ptr [ebp-4]
 00651100    call        006512D0
 00651105    mov         eax,dword ptr [ebp-4]
 00651108    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 0065110B    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0065110F    jg          006510F0
 00651111    mov         eax,dword ptr [ebp-4]
 00651114    add         eax,50;TBasicAction.FClients:TList
 00651117    call        FreeAndNil
 0065111C    cmp         byte ptr [ebp-5],0
>00651120    jle         0065112A
 00651122    mov         eax,dword ptr [ebp-4]
 00651125    call        @ClassDestroy
 0065112A    pop         ecx
 0065112B    pop         ecx
 0065112C    pop         ebp
 0065112D    ret
*}
end;

//00651130
{*function sub_00651130(?:?):?;
begin
 00651130    push        ebp
 00651131    mov         ebp,esp
 00651133    add         esp,0FFFFFFF4
 00651136    mov         dword ptr [ebp-0C],edx
 00651139    mov         dword ptr [ebp-4],eax
 0065113C    mov         byte ptr [ebp-5],0
 00651140    mov         al,byte ptr [ebp-5]
 00651143    mov         esp,ebp
 00651145    pop         ebp
 00651146    ret
end;*}

//00651148
{*procedure sub_00651148(?:?);
begin
 00651148    push        ebp
 00651149    mov         ebp,esp
 0065114B    add         esp,0FFFFFFF8
 0065114E    mov         dword ptr [ebp-8],edx
 00651151    mov         dword ptr [ebp-4],eax
 00651154    pop         ecx
 00651155    pop         ecx
 00651156    pop         ebp
 00651157    ret
end;*}

//00651158
procedure TBasicAction.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00651158    push        ebp
 00651159    mov         ebp,esp
 0065115B    add         esp,0FFFFFFF4
 0065115E    mov         byte ptr [ebp-9],cl
 00651161    mov         dword ptr [ebp-8],edx
 00651164    mov         dword ptr [ebp-4],eax
 00651167    mov         cl,byte ptr [ebp-9]
 0065116A    mov         edx,dword ptr [ebp-8]
 0065116D    mov         eax,dword ptr [ebp-4]
 00651170    call        TComponent.Notification
 00651175    cmp         byte ptr [ebp-9],1
>00651179    jne         0065118E
 0065117B    mov         eax,dword ptr [ebp-8]
 0065117E    mov         edx,dword ptr [ebp-4]
 00651181    cmp         eax,dword ptr [edx+30];TBasicAction.FActionComponent:TComponent
>00651184    jne         0065118E
 00651186    mov         eax,dword ptr [ebp-4]
 00651189    xor         edx,edx
 0065118B    mov         dword ptr [eax+30],edx;TBasicAction.FActionComponent:TComponent
 0065118E    mov         esp,ebp
 00651190    pop         ebp
 00651191    ret
*}
end;

//00651194
{*procedure sub_00651194(?:?);
begin
 00651194    push        ebp
 00651195    mov         ebp,esp
 00651197    add         esp,0FFFFFFF8
 0065119A    mov         dword ptr [ebp-8],edx
 0065119D    mov         dword ptr [ebp-4],eax
 006511A0    pop         ecx
 006511A1    pop         ecx
 006511A2    pop         ebp
 006511A3    ret
end;*}

//006511A4
procedure TBasicAction.sub_006511A4;
begin
{*
 006511A4    push        ebp
 006511A5    mov         ebp,esp
 006511A7    add         esp,0FFFFFFF8
 006511AA    push        ebx
 006511AB    mov         dword ptr [ebp-4],eax
 006511AE    mov         eax,dword ptr [ebp-4]
 006511B1    cmp         word ptr [eax+42],0;TBasicAction.?f42:word
>006511B6    je          006511CA
 006511B8    mov         ebx,dword ptr [ebp-4]
 006511BB    mov         edx,dword ptr [ebp-4]
 006511BE    mov         eax,dword ptr [ebx+44];TBasicAction.?f44:dword
 006511C1    call        dword ptr [ebx+40];TBasicAction.FOnExecute
 006511C4    mov         byte ptr [ebp-5],1
>006511C8    jmp         006511CE
 006511CA    mov         byte ptr [ebp-5],0
 006511CE    mov         al,byte ptr [ebp-5]
 006511D1    pop         ebx
 006511D2    pop         ecx
 006511D3    pop         ecx
 006511D4    pop         ebp
 006511D5    ret
*}
end;

//006511D8
{*function sub_006511D8:?;
begin
 006511D8    push        ebp
 006511D9    mov         ebp,esp
 006511DB    add         esp,0FFFFFFF8
 006511DE    push        ebx
 006511DF    mov         dword ptr [ebp-4],eax
 006511E2    mov         eax,dword ptr [ebp-4]
 006511E5    cmp         word ptr [eax+4A],0;TBasicAction.?f4A:word
>006511EA    je          006511FE
 006511EC    mov         ebx,dword ptr [ebp-4]
 006511EF    mov         edx,dword ptr [ebp-4]
 006511F2    mov         eax,dword ptr [ebx+4C];TBasicAction.?f4C:dword
 006511F5    call        dword ptr [ebx+48];TBasicAction.FOnUpdate
 006511F8    mov         byte ptr [ebp-5],1
>006511FC    jmp         00651202
 006511FE    mov         byte ptr [ebp-5],0
 00651202    mov         al,byte ptr [ebp-5]
 00651205    pop         ebx
 00651206    pop         ecx
 00651207    pop         ecx
 00651208    pop         ebp
 00651209    ret
end;*}

//0065120C
{*procedure TAction.SetOnExecute(Value:TNotifyEvent; ?:?; ?:?);
begin
 0065120C    push        ebp
 0065120D    mov         ebp,esp
 0065120F    add         esp,0FFFFFFF4
 00651212    mov         dword ptr [ebp-4],eax
 00651215    mov         eax,dword ptr [ebp+8]
 00651218    mov         edx,dword ptr [ebp-4]
 0065121B    cmp         eax,dword ptr [edx+40];TAction.FOnExecute:TNotifyEvent
>0065121E    jne         0065122B
 00651220    mov         eax,dword ptr [ebp+0C]
 00651223    mov         edx,dword ptr [ebp-4]
 00651226    cmp         eax,dword ptr [edx+44];TAction.?f44:dword
>00651229    je          0065127C
 0065122B    mov         eax,dword ptr [ebp-4]
 0065122E    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00651231    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00651234    dec         eax
 00651235    test        eax,eax
>00651237    jl          00651265
 00651239    inc         eax
 0065123A    mov         dword ptr [ebp-0C],eax
 0065123D    mov         dword ptr [ebp-8],0
 00651244    push        dword ptr [ebp+0C]
 00651247    push        dword ptr [ebp+8]
 0065124A    mov         edx,dword ptr [ebp-8]
 0065124D    mov         eax,dword ptr [ebp-4]
 00651250    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00651253    call        TList.Get
 00651258    mov         edx,dword ptr [eax]
 0065125A    call        dword ptr [edx+10]
 0065125D    inc         dword ptr [ebp-8]
 00651260    dec         dword ptr [ebp-0C]
>00651263    jne         00651244
 00651265    mov         eax,dword ptr [ebp-4]
 00651268    mov         edx,dword ptr [ebp+8]
 0065126B    mov         dword ptr [eax+40],edx;TAction.FOnExecute:TNotifyEvent
 0065126E    mov         edx,dword ptr [ebp+0C]
 00651271    mov         dword ptr [eax+44],edx;TAction.?f44:dword
 00651274    mov         eax,dword ptr [ebp-4]
 00651277    mov         edx,dword ptr [eax]
 00651279    call        dword ptr [edx+30];TAction.sub_00651284
 0065127C    mov         esp,ebp
 0065127E    pop         ebp
 0065127F    ret         8
end;*}

//00651284
procedure sub_00651284;
begin
{*
 00651284    push        ebp
 00651285    mov         ebp,esp
 00651287    push        ecx
 00651288    push        ebx
 00651289    mov         dword ptr [ebp-4],eax
 0065128C    mov         eax,dword ptr [ebp-4]
 0065128F    cmp         word ptr [eax+3A],0;TBasicAction.?f3A:word
>00651294    je          006512A2
 00651296    mov         ebx,dword ptr [ebp-4]
 00651299    mov         edx,dword ptr [ebp-4]
 0065129C    mov         eax,dword ptr [ebx+3C];TBasicAction.?f3C:dword
 0065129F    call        dword ptr [ebx+38];TBasicAction.FOnChange
 006512A2    pop         ebx
 006512A3    pop         ecx
 006512A4    pop         ebp
 006512A5    ret
*}
end;

//006512A8
{*procedure sub_006512A8(?:?; ?:TBasicActionLink);
begin
 006512A8    push        ebp
 006512A9    mov         ebp,esp
 006512AB    add         esp,0FFFFFFF8
 006512AE    mov         dword ptr [ebp-8],edx
 006512B1    mov         dword ptr [ebp-4],eax
 006512B4    mov         eax,dword ptr [ebp-4]
 006512B7    mov         edx,dword ptr [ebp-8]
 006512BA    mov         dword ptr [edx+10],eax;TBasicActionLink.FAction:TBasicAction
 006512BD    mov         edx,dword ptr [ebp-8]
 006512C0    mov         eax,dword ptr [ebp-4]
 006512C3    mov         eax,dword ptr [eax+50]
 006512C6    call        TList.Add
 006512CB    pop         ecx
 006512CC    pop         ecx
 006512CD    pop         ebp
 006512CE    ret
end;*}

//006512D0
procedure sub_006512D0(?:TBasicAction; ?:TBasicActionLink);
begin
{*
 006512D0    push        ebp
 006512D1    mov         ebp,esp
 006512D3    add         esp,0FFFFFFF0
 006512D6    mov         dword ptr [ebp-8],edx
 006512D9    mov         dword ptr [ebp-4],eax
 006512DC    mov         eax,dword ptr [ebp-4]
 006512DF    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 006512E2    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 006512E5    dec         eax
 006512E6    test        eax,eax
>006512E8    jl          00651328
 006512EA    inc         eax
 006512EB    mov         dword ptr [ebp-10],eax
 006512EE    mov         dword ptr [ebp-0C],0
 006512F5    mov         eax,dword ptr [ebp-4]
 006512F8    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 006512FB    mov         edx,dword ptr [ebp-0C]
 006512FE    call        TList.Get
 00651303    cmp         eax,dword ptr [ebp-8]
>00651306    jne         00651320
 00651308    mov         eax,dword ptr [ebp-8]
 0065130B    xor         edx,edx
 0065130D    mov         dword ptr [eax+10],edx;TBasicActionLink.FAction:TBasicAction
 00651310    mov         eax,dword ptr [ebp-4]
 00651313    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 00651316    mov         edx,dword ptr [ebp-0C]
 00651319    call        TList.Delete
>0065131E    jmp         00651328
 00651320    inc         dword ptr [ebp-0C]
 00651323    dec         dword ptr [ebp-10]
>00651326    jne         006512F5
 00651328    mov         esp,ebp
 0065132A    pop         ebp
 0065132B    ret
*}
end;

//0065132C
{*constructor TStreamAdapter.Create(?:?);
begin
 0065132C    push        ebp
 0065132D    mov         ebp,esp
 0065132F    add         esp,0FFFFFFF4
 00651332    test        dl,dl
>00651334    je          0065133E
 00651336    add         esp,0FFFFFFF0
 00651339    call        @ClassCreate
 0065133E    mov         dword ptr [ebp-0C],ecx
 00651341    mov         byte ptr [ebp-5],dl
 00651344    mov         dword ptr [ebp-4],eax
 00651347    xor         edx,edx
 00651349    mov         eax,dword ptr [ebp-4]
 0065134C    call        TObject.Create
 00651351    mov         eax,dword ptr [ebp-4]
 00651354    mov         edx,dword ptr [ebp-0C]
 00651357    mov         dword ptr [eax+0C],edx;TStreamAdapter.FStream:TStream
 0065135A    mov         eax,dword ptr [ebp-4]
 0065135D    mov         dl,byte ptr [ebp+8]
 00651360    mov         byte ptr [eax+10],dl;TStreamAdapter.FOwnership:TStreamOwnership
 00651363    mov         eax,dword ptr [ebp-4]
 00651366    cmp         byte ptr [ebp-5],0
>0065136A    je          0065137B
 0065136C    call        @AfterConstruction
 00651371    pop         dword ptr fs:[0]
 00651378    add         esp,0C
 0065137B    mov         eax,dword ptr [ebp-4]
 0065137E    mov         esp,ebp
 00651380    pop         ebp
 00651381    ret         4
end;*}

//00651384
destructor TStreamAdapter.Destroy;
begin
{*
 00651384    push        ebp
 00651385    mov         ebp,esp
 00651387    add         esp,0FFFFFFF8
 0065138A    call        @BeforeDestruction
 0065138F    mov         byte ptr [ebp-5],dl
 00651392    mov         dword ptr [ebp-4],eax
 00651395    mov         eax,dword ptr [ebp-4]
 00651398    cmp         byte ptr [eax+10],1
>0065139C    jne         006513B1
 0065139E    mov         eax,dword ptr [ebp-4]
 006513A1    mov         eax,dword ptr [eax+0C]
 006513A4    call        TObject.Free
 006513A9    mov         eax,dword ptr [ebp-4]
 006513AC    xor         edx,edx
 006513AE    mov         dword ptr [eax+0C],edx
 006513B1    mov         dl,byte ptr [ebp-5]
 006513B4    and         dl,0FC
 006513B7    mov         eax,dword ptr [ebp-4]
 006513BA    call        TObject.Destroy
 006513BF    cmp         byte ptr [ebp-5],0
>006513C3    jle         006513CD
 006513C5    mov         eax,dword ptr [ebp-4]
 006513C8    call        @ClassDestroy
 006513CD    pop         ecx
 006513CE    pop         ecx
 006513CF    pop         ebp
 006513D0    ret
*}
end;

//006513D4
{*function sub_006513D4(?:?; ?:?; ?:?):?;
begin
 006513D4    push        ebp
 006513D5    mov         ebp,esp
 006513D7    add         esp,0FFFFFFF8
 006513DA    push        ebx
 006513DB    push        esi
 006513DC    push        edi
 006513DD    xor         eax,eax
 006513DF    push        ebp
 006513E0    push        651433
 006513E5    push        dword ptr fs:[eax]
 006513E8    mov         dword ptr fs:[eax],esp
 006513EB    cmp         dword ptr [ebp+0C],0
>006513EF    jne         00651402
 006513F1    mov         dword ptr [ebp-4],80030009
 006513F8    xor         eax,eax
 006513FA    pop         edx
 006513FB    pop         ecx
 006513FC    pop         ecx
 006513FD    mov         dword ptr fs:[eax],edx
>00651400    jmp         00651444
 00651402    mov         edx,dword ptr [ebp+0C]
 00651405    mov         eax,dword ptr [ebp+8]
 00651408    mov         eax,dword ptr [eax+0C]
 0065140B    mov         ecx,dword ptr [ebp+10]
 0065140E    mov         ebx,dword ptr [eax]
 00651410    call        dword ptr [ebx+8]
 00651413    mov         dword ptr [ebp-8],eax
 00651416    cmp         dword ptr [ebp+14],0
>0065141A    je          00651424
 0065141C    mov         eax,dword ptr [ebp+14]
 0065141F    mov         edx,dword ptr [ebp-8]
 00651422    mov         dword ptr [eax],edx
 00651424    xor         eax,eax
 00651426    mov         dword ptr [ebp-4],eax
 00651429    xor         eax,eax
 0065142B    pop         edx
 0065142C    pop         ecx
 0065142D    pop         ecx
 0065142E    mov         dword ptr fs:[eax],edx
>00651431    jmp         00651444
>00651433    jmp         @HandleAnyException
 00651438    mov         dword ptr [ebp-4],1
 0065143F    call        @DoneExcept
 00651444    mov         eax,dword ptr [ebp-4]
 00651447    pop         edi
 00651448    pop         esi
 00651449    pop         ebx
 0065144A    pop         ecx
 0065144B    pop         ecx
 0065144C    pop         ebp
 0065144D    ret         10
end;*}

//00651450
{*function sub_00651450(?:?; ?:?; ?:?):?;
begin
 00651450    push        ebp
 00651451    mov         ebp,esp
 00651453    add         esp,0FFFFFFF8
 00651456    push        ebx
 00651457    push        esi
 00651458    push        edi
 00651459    xor         eax,eax
 0065145B    push        ebp
 0065145C    push        6514AF
 00651461    push        dword ptr fs:[eax]
 00651464    mov         dword ptr fs:[eax],esp
 00651467    cmp         dword ptr [ebp+0C],0
>0065146B    jne         0065147E
 0065146D    mov         dword ptr [ebp-4],80030009
 00651474    xor         eax,eax
 00651476    pop         edx
 00651477    pop         ecx
 00651478    pop         ecx
 00651479    mov         dword ptr fs:[eax],edx
>0065147C    jmp         006514C0
 0065147E    mov         edx,dword ptr [ebp+0C]
 00651481    mov         eax,dword ptr [ebp+8]
 00651484    mov         eax,dword ptr [eax+0C]
 00651487    mov         ecx,dword ptr [ebp+10]
 0065148A    mov         ebx,dword ptr [eax]
 0065148C    call        dword ptr [ebx+0C]
 0065148F    mov         dword ptr [ebp-8],eax
 00651492    cmp         dword ptr [ebp+14],0
>00651496    je          006514A0
 00651498    mov         eax,dword ptr [ebp+14]
 0065149B    mov         edx,dword ptr [ebp-8]
 0065149E    mov         dword ptr [eax],edx
 006514A0    xor         eax,eax
 006514A2    mov         dword ptr [ebp-4],eax
 006514A5    xor         eax,eax
 006514A7    pop         edx
 006514A8    pop         ecx
 006514A9    pop         ecx
 006514AA    mov         dword ptr fs:[eax],edx
>006514AD    jmp         006514C0
>006514AF    jmp         @HandleAnyException
 006514B4    mov         dword ptr [ebp-4],80030103
 006514BB    call        @DoneExcept
 006514C0    mov         eax,dword ptr [ebp-4]
 006514C3    pop         edi
 006514C4    pop         esi
 006514C5    pop         ebx
 006514C6    pop         ecx
 006514C7    pop         ecx
 006514C8    pop         ebp
 006514C9    ret         10
end;*}

//006514CC
{*function sub_006514CC(?:?; ?:?; ?:?):?;
begin
 006514CC    push        ebp
 006514CD    mov         ebp,esp
 006514CF    add         esp,0FFFFFFF0
 006514D2    push        ebx
 006514D3    push        esi
 006514D4    push        edi
 006514D5    xor         eax,eax
 006514D7    push        ebp
 006514D8    push        65153D
 006514DD    push        dword ptr fs:[eax]
 006514E0    mov         dword ptr fs:[eax],esp
 006514E3    cmp         dword ptr [ebp+14],0
>006514E7    jl          006514EF
 006514E9    cmp         dword ptr [ebp+14],2
>006514ED    jle         00651500
 006514EF    mov         dword ptr [ebp-4],80030001
 006514F6    xor         eax,eax
 006514F8    pop         edx
 006514F9    pop         ecx
 006514FA    pop         ecx
 006514FB    mov         dword ptr fs:[eax],edx
>006514FE    jmp         0065154E
 00651500    mov         eax,dword ptr [ebp+8]
 00651503    mov         eax,dword ptr [eax+0C]
 00651506    mov         cx,word ptr [ebp+14]
 0065150A    mov         edx,dword ptr [ebp+0C]
 0065150D    mov         ebx,dword ptr [eax]
 0065150F    call        dword ptr [ebx+10]
 00651512    cdq
 00651513    mov         dword ptr [ebp-10],eax
 00651516    mov         dword ptr [ebp-0C],edx
 00651519    mov         eax,dword ptr [ebp+18]
 0065151C    test        eax,eax
>0065151E    je          0065152E
 00651520    mov         eax,dword ptr [ebp+18]
 00651523    mov         edx,dword ptr [ebp-10]
 00651526    mov         dword ptr [eax],edx
 00651528    mov         edx,dword ptr [ebp-0C]
 0065152B    mov         dword ptr [eax+4],edx
 0065152E    xor         eax,eax
 00651530    mov         dword ptr [ebp-4],eax
 00651533    xor         eax,eax
 00651535    pop         edx
 00651536    pop         ecx
 00651537    pop         ecx
 00651538    mov         dword ptr fs:[eax],edx
>0065153B    jmp         0065154E
>0065153D    jmp         @HandleAnyException
 00651542    mov         dword ptr [ebp-4],80030009
 00651549    call        @DoneExcept
 0065154E    mov         eax,dword ptr [ebp-4]
 00651551    pop         edi
 00651552    pop         esi
 00651553    pop         ebx
 00651554    mov         esp,ebp
 00651556    pop         ebp
 00651557    ret         14
end;*}

//0065155C
{*function sub_0065155C(?:?; ?:?):?;
begin
 0065155C    push        ebp
 0065155D    mov         ebp,esp
 0065155F    push        ecx
 00651560    push        ebx
 00651561    push        esi
 00651562    push        edi
 00651563    xor         eax,eax
 00651565    push        ebp
 00651566    push        6515AF
 0065156B    push        dword ptr fs:[eax]
 0065156E    mov         dword ptr fs:[eax],esp
 00651571    push        dword ptr [ebp+10]
 00651574    push        dword ptr [ebp+0C]
 00651577    mov         eax,dword ptr [ebp+8]
 0065157A    mov         eax,dword ptr [eax+0C]
 0065157D    call        TStream.SetSize64
 00651582    mov         eax,dword ptr [ebp+8]
 00651585    mov         eax,dword ptr [eax+0C]
 00651588    call        TStream.GetSize
 0065158D    cmp         edx,dword ptr [ebp+10]
>00651590    jne         00651595
 00651592    cmp         eax,dword ptr [ebp+0C]
>00651595    je          006515A0
 00651597    mov         dword ptr [ebp-4],80004005
>0065159E    jmp         006515A5
 006515A0    xor         eax,eax
 006515A2    mov         dword ptr [ebp-4],eax
 006515A5    xor         eax,eax
 006515A7    pop         edx
 006515A8    pop         ecx
 006515A9    pop         ecx
 006515AA    mov         dword ptr fs:[eax],edx
>006515AD    jmp         006515C0
>006515AF    jmp         @HandleAnyException
 006515B4    mov         dword ptr [ebp-4],8000FFFF
 006515BB    call        @DoneExcept
 006515C0    mov         eax,dword ptr [ebp-4]
 006515C3    pop         edi
 006515C4    pop         esi
 006515C5    pop         ebx
 006515C6    pop         ecx
 006515C7    pop         ebp
 006515C8    ret         0C
end;*}

//006515CC
{*function sub_006515CC(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 006515CC    push        ebp
 006515CD    mov         ebp,esp
 006515CF    add         esp,0FFFFFFD0
 006515D2    push        ebx
 006515D3    push        esi
 006515D4    push        edi
 006515D5    mov         eax,dword ptr [ebp+0C]
 006515D8    call        @IntfAddRef
 006515DD    xor         eax,eax
 006515DF    push        ebp
 006515E0    push        6517DB
 006515E5    push        dword ptr fs:[eax]
 006515E8    mov         dword ptr fs:[eax],esp
 006515EB    xor         eax,eax
 006515ED    mov         dword ptr [ebp-4],eax
 006515F0    mov         dword ptr [ebp-20],0
 006515F7    mov         dword ptr [ebp-1C],0
 006515FE    mov         dword ptr [ebp-28],0
 00651605    mov         dword ptr [ebp-24],0
 0065160C    xor         eax,eax
 0065160E    push        ebp
 0065160F    push        6517B4
 00651614    push        dword ptr fs:[eax]
 00651617    mov         dword ptr fs:[eax],esp
 0065161A    cmp         dword ptr [ebp+14],0
>0065161E    jne         0065162B
 00651620    cmp         dword ptr [ebp+10],100000
>00651627    jbe         00651636
>00651629    jmp         0065162D
>0065162B    jle         00651636
 0065162D    mov         dword ptr [ebp-0C],100000
>00651634    jmp         0065163C
 00651636    mov         eax,dword ptr [ebp+10]
 00651639    mov         dword ptr [ebp-0C],eax
 0065163C    mov         eax,dword ptr [ebp-0C]
 0065163F    call        @GetMem
 00651644    mov         dword ptr [ebp-8],eax
 00651647    xor         eax,eax
 00651649    push        ebp
 0065164A    push        6517A3
 0065164F    push        dword ptr fs:[eax]
 00651652    mov         dword ptr fs:[eax],esp
>00651655    jmp         0065174B
 0065165A    cmp         dword ptr [ebp+14],0
>0065165E    jne         0065166B
 00651660    cmp         dword ptr [ebp+10],7FFFFFFF
>00651667    jbe         00651676
>00651669    jmp         0065166D
>0065166B    jle         00651676
 0065166D    mov         dword ptr [ebp-14],7FFFFFFF
>00651674    jmp         0065167C
 00651676    mov         eax,dword ptr [ebp+10]
 00651679    mov         dword ptr [ebp-14],eax
 0065167C    cmp         dword ptr [ebp-14],0
>00651680    jle         0065174B
 00651686    mov         eax,dword ptr [ebp-14]
 00651689    cmp         eax,dword ptr [ebp-0C]
>0065168C    jle         00651696
 0065168E    mov         eax,dword ptr [ebp-0C]
 00651691    mov         dword ptr [ebp-10],eax
>00651694    jmp         0065169C
 00651696    mov         eax,dword ptr [ebp-14]
 00651699    mov         dword ptr [ebp-10],eax
 0065169C    mov         edx,dword ptr [ebp-8]
 0065169F    mov         eax,dword ptr [ebp+8]
 006516A2    mov         eax,dword ptr [eax+0C]
 006516A5    mov         ecx,dword ptr [ebp-10]
 006516A8    mov         ebx,dword ptr [eax]
 006516AA    call        dword ptr [ebx+8]
 006516AD    mov         dword ptr [ebp-18],eax
 006516B0    cmp         dword ptr [ebp-18],0
>006516B4    jne         006516C8
 006516B6    call        @TryFinallyExit
 006516BB    xor         eax,eax
 006516BD    pop         edx
 006516BE    pop         ecx
 006516BF    pop         ecx
 006516C0    mov         dword ptr fs:[eax],edx
>006516C3    jmp         006517C5
 006516C8    mov         eax,dword ptr [ebp-18]
 006516CB    cdq
 006516CC    add         dword ptr [ebp-20],eax
 006516CF    adc         dword ptr [ebp-1C],edx
 006516D2    mov         dword ptr [ebp-30],0
 006516D9    mov         dword ptr [ebp-2C],0
 006516E0    lea         eax,[ebp-30]
 006516E3    push        eax
 006516E4    mov         eax,dword ptr [ebp-18]
 006516E7    push        eax
 006516E8    mov         eax,dword ptr [ebp-8]
 006516EB    push        eax
 006516EC    mov         eax,dword ptr [ebp+0C]
 006516EF    push        eax
 006516F0    mov         eax,dword ptr [eax]
 006516F2    call        dword ptr [eax+10]
 006516F5    mov         dword ptr [ebp-4],eax
 006516F8    mov         eax,dword ptr [ebp-30]
 006516FB    mov         edx,dword ptr [ebp-2C]
 006516FE    add         dword ptr [ebp-28],eax
 00651701    adc         dword ptr [ebp-24],edx
 00651704    cmp         dword ptr [ebp-4],0
>00651708    jne         00651719
 0065170A    mov         eax,dword ptr [ebp-30]
 0065170D    cmp         eax,dword ptr [ebp-18]
>00651710    je          00651719
 00651712    mov         dword ptr [ebp-4],80004005
 00651719    cmp         dword ptr [ebp-4],0
>0065171D    je          00651731
 0065171F    call        @TryFinallyExit
 00651724    xor         eax,eax
 00651726    pop         edx
 00651727    pop         ecx
 00651728    pop         ecx
 00651729    mov         dword ptr fs:[eax],edx
>0065172C    jmp         006517C5
 00651731    mov         eax,dword ptr [ebp-18]
 00651734    sub         dword ptr [ebp-14],eax
 00651737    mov         eax,dword ptr [ebp-18]
 0065173A    cdq
 0065173B    sub         dword ptr [ebp+10],eax
 0065173E    sbb         dword ptr [ebp+14],edx
 00651741    cmp         dword ptr [ebp-14],0
>00651745    jg          00651686
 0065174B    cmp         dword ptr [ebp+14],0
>0065174F    jne         0065175D
 00651751    cmp         dword ptr [ebp+10],0
>00651755    ja          0065165A
>0065175B    jmp         00651763
>0065175D    jg          0065165A
 00651763    xor         eax,eax
 00651765    pop         edx
 00651766    pop         ecx
 00651767    pop         ecx
 00651768    mov         dword ptr fs:[eax],edx
 0065176B    push        6517AA
 00651770    mov         eax,dword ptr [ebp-8]
 00651773    call        @FreeMem
 00651778    mov         eax,dword ptr [ebp+1C]
 0065177B    test        eax,eax
>0065177D    je          0065178D
 0065177F    mov         eax,dword ptr [ebp+1C]
 00651782    mov         edx,dword ptr [ebp-28]
 00651785    mov         dword ptr [eax],edx
 00651787    mov         edx,dword ptr [ebp-24]
 0065178A    mov         dword ptr [eax+4],edx
 0065178D    mov         eax,dword ptr [ebp+18]
 00651790    test        eax,eax
>00651792    je          006517A2
 00651794    mov         eax,dword ptr [ebp+18]
 00651797    mov         edx,dword ptr [ebp-20]
 0065179A    mov         dword ptr [eax],edx
 0065179C    mov         edx,dword ptr [ebp-1C]
 0065179F    mov         dword ptr [eax+4],edx
 006517A2    ret
>006517A3    jmp         @HandleFinally
>006517A8    jmp         00651770
 006517AA    xor         eax,eax
 006517AC    pop         edx
 006517AD    pop         ecx
 006517AE    pop         ecx
 006517AF    mov         dword ptr fs:[eax],edx
>006517B2    jmp         006517C5
>006517B4    jmp         @HandleAnyException
 006517B9    mov         dword ptr [ebp-4],8000FFFF
 006517C0    call        @DoneExcept
 006517C5    xor         eax,eax
 006517C7    pop         edx
 006517C8    pop         ecx
 006517C9    pop         ecx
 006517CA    mov         dword ptr fs:[eax],edx
 006517CD    push        6517E2
 006517D2    lea         eax,[ebp+0C]
 006517D5    call        @IntfClear
 006517DA    ret
>006517DB    jmp         @HandleFinally
>006517E0    jmp         006517D2
 006517E2    mov         eax,dword ptr [ebp-4]
 006517E5    pop         edi
 006517E6    pop         esi
 006517E7    pop         ebx
 006517E8    mov         esp,ebp
 006517EA    pop         ebp
 006517EB    ret         18
end;*}

//006517F0
{*function sub_006517F0:?;
begin
 006517F0    push        ebp
 006517F1    mov         ebp,esp
 006517F3    push        ecx
 006517F4    xor         eax,eax
 006517F6    mov         dword ptr [ebp-4],eax
 006517F9    mov         eax,dword ptr [ebp-4]
 006517FC    pop         ecx
 006517FD    pop         ebp
 006517FE    ret         8
end;*}

//00651804
{*function sub_00651804:?;
begin
 00651804    push        ebp
 00651805    mov         ebp,esp
 00651807    push        ecx
 00651808    mov         dword ptr [ebp-4],80030102
 0065180F    mov         eax,dword ptr [ebp-4]
 00651812    pop         ecx
 00651813    pop         ebp
 00651814    ret         4
end;*}

//00651818
{*function sub_00651818:?;
begin
 00651818    push        ebp
 00651819    mov         ebp,esp
 0065181B    push        ecx
 0065181C    mov         dword ptr [ebp-4],80030001
 00651823    mov         eax,dword ptr [ebp-4]
 00651826    pop         ecx
 00651827    pop         ebp
 00651828    ret         18
end;*}

//0065182C
{*function sub_0065182C:?;
begin
 0065182C    push        ebp
 0065182D    mov         ebp,esp
 0065182F    push        ecx
 00651830    mov         dword ptr [ebp-4],80030001
 00651837    mov         eax,dword ptr [ebp-4]
 0065183A    pop         ecx
 0065183B    pop         ebp
 0065183C    ret         18
end;*}

//00651840
{*function sub_00651840(?:?):?;
begin
 00651840    push        ebp
 00651841    mov         ebp,esp
 00651843    push        ecx
 00651844    push        ebx
 00651845    push        esi
 00651846    push        edi
 00651847    xor         eax,eax
 00651849    mov         dword ptr [ebp-4],eax
 0065184C    xor         eax,eax
 0065184E    push        ebp
 0065184F    push        6518C3
 00651854    push        dword ptr fs:[eax]
 00651857    mov         dword ptr fs:[eax],esp
 0065185A    mov         eax,dword ptr [ebp+0C]
 0065185D    test        eax,eax
>0065185F    je          006518B9
 00651861    mov         eax,dword ptr [ebp+0C]
 00651864    mov         dword ptr [eax+4],2
 0065186B    mov         eax,dword ptr [ebp+8]
 0065186E    mov         eax,dword ptr [eax+0C]
 00651871    call        TStream.GetSize
 00651876    mov         ecx,dword ptr [ebp+0C]
 00651879    mov         dword ptr [ecx+8],eax
 0065187C    mov         dword ptr [ecx+0C],edx
 0065187F    mov         eax,dword ptr [ebp+0C]
 00651882    xor         edx,edx
 00651884    mov         dword ptr [eax+10],edx
 00651887    mov         eax,dword ptr [ebp+0C]
 0065188A    xor         edx,edx
 0065188C    mov         dword ptr [eax+14],edx
 0065188F    mov         eax,dword ptr [ebp+0C]
 00651892    xor         edx,edx
 00651894    mov         dword ptr [eax+18],edx
 00651897    mov         eax,dword ptr [ebp+0C]
 0065189A    xor         edx,edx
 0065189C    mov         dword ptr [eax+1C],edx
 0065189F    mov         eax,dword ptr [ebp+0C]
 006518A2    xor         edx,edx
 006518A4    mov         dword ptr [eax+20],edx
 006518A7    mov         eax,dword ptr [ebp+0C]
 006518AA    xor         edx,edx
 006518AC    mov         dword ptr [eax+24],edx
 006518AF    mov         eax,dword ptr [ebp+0C]
 006518B2    mov         dword ptr [eax+2C],1
 006518B9    xor         eax,eax
 006518BB    pop         edx
 006518BC    pop         ecx
 006518BD    pop         ecx
 006518BE    mov         dword ptr fs:[eax],edx
>006518C1    jmp         006518D4
>006518C3    jmp         @HandleAnyException
 006518C8    mov         dword ptr [ebp-4],8000FFFF
 006518CF    call        @DoneExcept
 006518D4    mov         eax,dword ptr [ebp-4]
 006518D7    pop         edi
 006518D8    pop         esi
 006518D9    pop         ebx
 006518DA    pop         ecx
 006518DB    pop         ebp
 006518DC    ret         0C
end;*}

//006518E0
{*function sub_006518E0:?;
begin
 006518E0    push        ebp
 006518E1    mov         ebp,esp
 006518E3    push        ecx
 006518E4    mov         eax,dword ptr [ebp+0C]
 006518E7    test        eax,eax
>006518E9    je          006518EF
 006518EB    xor         edx,edx
 006518ED    mov         dword ptr [eax],edx
 006518EF    mov         dword ptr [ebp-4],80004001
 006518F6    mov         eax,dword ptr [ebp-4]
 006518F9    pop         ecx
 006518FA    pop         ebp
 006518FB    ret         8
end;*}

//00651900
procedure sub_00651900;
begin
{*
 00651900    push        ebp
 00651901    mov         ebp,esp
 00651903    add         esp,0FFFFFFF4
 00651906    mov         eax,[006ECF9C];0x0 gvar_006ECF9C:TThreadList
 0065190B    call        TThreadList.LockList
 00651910    mov         dword ptr [ebp-8],eax
 00651913    xor         eax,eax
 00651915    push        ebp
 00651916    push        651967
 0065191B    push        dword ptr fs:[eax]
 0065191E    mov         dword ptr fs:[eax],esp
 00651921    mov         eax,dword ptr [ebp-8]
 00651924    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00651927    dec         eax
 00651928    test        eax,eax
>0065192A    jl          0065194F
 0065192C    inc         eax
 0065192D    mov         dword ptr [ebp-0C],eax
 00651930    mov         dword ptr [ebp-4],0
 00651937    mov         edx,dword ptr [ebp-4]
 0065193A    mov         eax,dword ptr [ebp-8]
 0065193D    call        TList.Get
 00651942    call        TObject.Free
 00651947    inc         dword ptr [ebp-4]
 0065194A    dec         dword ptr [ebp-0C]
>0065194D    jne         00651937
 0065194F    xor         eax,eax
 00651951    pop         edx
 00651952    pop         ecx
 00651953    pop         ecx
 00651954    mov         dword ptr fs:[eax],edx
 00651957    push        65196E
 0065195C    mov         eax,[006ECF9C];0x0 gvar_006ECF9C:TThreadList
 00651961    call        TThreadList.UnlockList
 00651966    ret
>00651967    jmp         @HandleFinally
>0065196C    jmp         0065195C
 0065196E    mov         eax,[006ECF9C];0x0 gvar_006ECF9C:TThreadList
 00651973    call        TObject.Free
 00651978    mov         esp,ebp
 0065197A    pop         ebp
 0065197B    ret
*}
end;

//00651990
function StdWndProc(Window:HWND; Message:Longint; WParam:Longint; LParam:Longint):Longint; stdcall;
begin
{*
 00651990    push        ebp
 00651991    mov         ebp,esp
 00651993    xor         eax,eax
 00651995    push        eax
 00651996    push        dword ptr [ebp+14]
 00651999    push        dword ptr [ebp+10]
 0065199C    push        dword ptr [ebp+0C]
 0065199F    mov         edx,esp
 006519A1    mov         eax,dword ptr [ecx+4]
 006519A4    call        dword ptr [ecx]
 006519A6    add         esp,0C
 006519A9    pop         eax
 006519AA    pop         ebp
 006519AB    ret         10
*}
end;

//006519B0
{*function sub_006519B0(?:?; ?:Longint):?;
begin
 006519B0    push        ebp
 006519B1    mov         ebp,esp
 006519B3    add         esp,0FFFFFFF4
 006519B6    mov         dword ptr [ebp-8],edx
 006519B9    mov         dword ptr [ebp-4],eax
 006519BC    mov         eax,dword ptr [ebp-4]
 006519BF    add         eax,5
 006519C2    mov         edx,dword ptr [ebp-8]
 006519C5    sub         edx,eax
 006519C7    mov         dword ptr [ebp-0C],edx
 006519CA    mov         eax,dword ptr [ebp-0C]
 006519CD    mov         esp,ebp
 006519CF    pop         ebp
 006519D0    ret
end;*}

//006519D4
{*function sub_006519D4(?:?; ?:?):?;
begin
 006519D4    push        ebp
 006519D5    mov         ebp,esp
 006519D7    add         esp,0FFFFFFF4
 006519DA    cmp         dword ptr ds:[6ECFD0],0;gvar_006ECFD0:Pointer
>006519E1    jne         00651A81
 006519E7    push        40
 006519E9    push        1000
 006519EE    push        1000
 006519F3    push        0
 006519F5    call        KERNEL32.VirtualAlloc
 006519FA    mov         dword ptr [ebp-8],eax
 006519FD    mov         eax,[006ECFCC];0x0 gvar_006ECFCC
 00651A02    mov         edx,dword ptr [ebp-8]
 00651A05    mov         dword ptr [edx],eax
 00651A07    mov         eax,dword ptr [ebp-8]
 00651A0A    lea         edx,[eax+4]
 00651A0D    mov         eax,6E48E8
 00651A12    mov         ecx,2
 00651A17    call        Move
 00651A1C    mov         edx,651990;StdWndProc:Longint
 00651A21    mov         eax,dword ptr [ebp-8]
 00651A24    add         eax,5
 00651A27    call        006519B0
 00651A2C    mov         edx,dword ptr [ebp-8]
 00651A2F    mov         dword ptr [edx+6],eax
 00651A32    mov         eax,dword ptr [ebp-8]
 00651A35    add         eax,0A
 00651A38    mov         dword ptr [ebp-0C],eax
 00651A3B    mov         eax,dword ptr [ebp-0C]
 00651A3E    mov         byte ptr [eax],0E8
 00651A41    mov         eax,dword ptr [ebp-8]
 00651A44    lea         edx,[eax+4]
 00651A47    mov         eax,dword ptr [ebp-0C]
 00651A4A    call        006519B0
 00651A4F    mov         edx,dword ptr [ebp-0C]
 00651A52    mov         dword ptr [edx+1],eax
 00651A55    mov         eax,[006ECFD0];0x0 gvar_006ECFD0:Pointer
 00651A5A    mov         edx,dword ptr [ebp-0C]
 00651A5D    mov         dword ptr [edx+5],eax
 00651A60    mov         eax,dword ptr [ebp-0C]
 00651A63    mov         [006ECFD0],eax;gvar_006ECFD0:Pointer
 00651A68    add         dword ptr [ebp-0C],0D
 00651A6C    mov         eax,dword ptr [ebp-0C]
 00651A6F    sub         eax,dword ptr [ebp-8]
 00651A72    cmp         eax,0FFC
>00651A77    jl          00651A3B
 00651A79    mov         eax,dword ptr [ebp-8]
 00651A7C    mov         [006ECFCC],eax;gvar_006ECFCC
 00651A81    mov         eax,[006ECFD0];0x0 gvar_006ECFD0:Pointer
 00651A86    mov         dword ptr [ebp-4],eax
 00651A89    mov         eax,[006ECFD0];0x0 gvar_006ECFD0:Pointer
 00651A8E    mov         dword ptr [ebp-0C],eax
 00651A91    mov         eax,dword ptr [ebp-0C]
 00651A94    mov         eax,dword ptr [eax+5]
 00651A97    mov         [006ECFD0],eax;gvar_006ECFD0:Pointer
 00651A9C    mov         eax,dword ptr [ebp-0C]
 00651A9F    mov         edx,dword ptr [ebp+8]
 00651AA2    mov         dword ptr [eax+5],edx
 00651AA5    mov         edx,dword ptr [ebp+0C]
 00651AA8    mov         dword ptr [eax+9],edx
 00651AAB    mov         eax,dword ptr [ebp-4]
 00651AAE    mov         esp,ebp
 00651AB0    pop         ebp
 00651AB1    ret         8
end;*}

//00651AB4
procedure sub_00651AB4(?:Pointer);
begin
{*
 00651AB4    push        ebp
 00651AB5    mov         ebp,esp
 00651AB7    push        ecx
 00651AB8    mov         dword ptr [ebp-4],eax
 00651ABB    cmp         dword ptr [ebp-4],0
>00651ABF    je          00651AD5
 00651AC1    mov         eax,dword ptr [ebp-4]
 00651AC4    mov         edx,dword ptr ds:[6ECFD0];0x0 gvar_006ECFD0:Pointer
 00651ACA    mov         dword ptr [eax+5],edx
 00651ACD    mov         eax,dword ptr [ebp-4]
 00651AD0    mov         [006ECFD0],eax;gvar_006ECFD0:Pointer
 00651AD5    pop         ecx
 00651AD6    pop         ebp
 00651AD7    ret
*}
end;

//00651AD8
procedure _NF__E01;
begin
{*
 00651AD8    push        esp
 00651AD9    push        eax
 00651ADA    push        ebp
>00651ADB    je          00651B46
 00651ADD    ins         byte ptr [edi],dl
 00651ADE    push        edi
 00651ADF    imul        ebp,dword ptr [esi+64],776F
 00651AE6    add         byte ptr [eax],al
 00651AE8    push        ebp
 00651AE9    mov         ebp,esp
 00651AEB    add         esp,0FFFFFFD0
 00651AEE    mov         eax,[006EA390];0x0 gvar_006EA390
 00651AF3    mov         [006E48FC],eax;gvar_006E48FC
 00651AF8    lea         eax,[ebp-2D]
 00651AFB    push        eax
 00651AFC    mov         eax,[006E4910];^_NF__E01
 00651B01    push        eax
 00651B02    mov         eax,[006EA390];0x0 gvar_006EA390
 00651B07    push        eax
 00651B08    call        USER32.GetClassInfoA
 00651B0D    cmp         eax,1
 00651B10    sbb         eax,eax
 00651B12    inc         eax
 00651B13    mov         byte ptr [ebp-5],al
 00651B16    cmp         byte ptr [ebp-5],0
>00651B1A    je          00651B26
 00651B1C    mov         eax,692BA0;USER32.DefWindowProcA:Longint
 00651B21    cmp         eax,dword ptr [ebp-29]
>00651B24    je          00651B47
 00651B26    cmp         byte ptr [ebp-5],0
>00651B2A    je          00651B3D
 00651B2C    mov         eax,[006EA390];0x0 gvar_006EA390
 00651B31    push        eax
 00651B32    mov         eax,[006E4910];^_NF__E01
 00651B37    push        eax
 00651B38    call        USER32.UnregisterClassA
 00651B3D    push        6E48EC
 00651B42    call        USER32.RegisterClassA
 00651B47    push        0
 00651B49    mov         eax,[006EA390];0x0 gvar_006EA390
 00651B4E    push        eax
 00651B4F    push        0
 00651B51    push        0
 00651B53    push        0
 00651B55    push        0
 00651B57    push        0
 00651B59    push        0
 00651B5B    push        80000000
 00651B60    push        651BA0
 00651B65    mov         eax,[006E4910];^_NF__E01
 00651B6A    push        eax
 00651B6B    push        80
 00651B70    call        USER32.CreateWindowExA
 00651B75    mov         dword ptr [ebp-4],eax
 00651B78    cmp         word ptr [ebp+0A],0
>00651B7D    je          00651B96
 00651B7F    push        dword ptr [ebp+0C]
 00651B82    push        dword ptr [ebp+8]
 00651B85    call        006519D4
 00651B8A    push        eax
 00651B8B    push        0FC
 00651B8D    mov         eax,dword ptr [ebp-4]
 00651B90    push        eax
 00651B91    call        USER32.SetWindowLongA
 00651B96    mov         eax,dword ptr [ebp-4]
 00651B99    mov         esp,ebp
 00651B9B    pop         ebp
 00651B9C    ret         8
*}
end;

//00651AE8
{*function sub_00651AE8(?:?; ?:?; ?:?):?;
begin
 00651AE8    push        ebp
 00651AE9    mov         ebp,esp
 00651AEB    add         esp,0FFFFFFD0
 00651AEE    mov         eax,[006EA390];0x0 gvar_006EA390
 00651AF3    mov         [006E48FC],eax;gvar_006E48FC
 00651AF8    lea         eax,[ebp-2D]
 00651AFB    push        eax
 00651AFC    mov         eax,[006E4910];^_NF__E01
 00651B01    push        eax
 00651B02    mov         eax,[006EA390];0x0 gvar_006EA390
 00651B07    push        eax
 00651B08    call        USER32.GetClassInfoA
 00651B0D    cmp         eax,1
 00651B10    sbb         eax,eax
 00651B12    inc         eax
 00651B13    mov         byte ptr [ebp-5],al
 00651B16    cmp         byte ptr [ebp-5],0
>00651B1A    je          00651B26
 00651B1C    mov         eax,692BA0;USER32.DefWindowProcA:Longint
 00651B21    cmp         eax,dword ptr [ebp-29]
>00651B24    je          00651B47
 00651B26    cmp         byte ptr [ebp-5],0
>00651B2A    je          00651B3D
 00651B2C    mov         eax,[006EA390];0x0 gvar_006EA390
 00651B31    push        eax
 00651B32    mov         eax,[006E4910];^_NF__E01
 00651B37    push        eax
 00651B38    call        USER32.UnregisterClassA
 00651B3D    push        6E48EC
 00651B42    call        USER32.RegisterClassA
 00651B47    push        0
 00651B49    mov         eax,[006EA390];0x0 gvar_006EA390
 00651B4E    push        eax
 00651B4F    push        0
 00651B51    push        0
 00651B53    push        0
 00651B55    push        0
 00651B57    push        0
 00651B59    push        0
 00651B5B    push        80000000
 00651B60    push        651BA0
 00651B65    mov         eax,[006E4910];^_NF__E01
 00651B6A    push        eax
 00651B6B    push        80
 00651B70    call        USER32.CreateWindowExA
 00651B75    mov         dword ptr [ebp-4],eax
 00651B78    cmp         word ptr [ebp+0A],0
>00651B7D    je          00651B96
 00651B7F    push        dword ptr [ebp+0C]
 00651B82    push        dword ptr [ebp+8]
 00651B85    call        006519D4
 00651B8A    push        eax
 00651B8B    push        0FC
 00651B8D    mov         eax,dword ptr [ebp-4]
 00651B90    push        eax
 00651B91    call        USER32.SetWindowLongA
 00651B96    mov         eax,dword ptr [ebp-4]
 00651B99    mov         esp,ebp
 00651B9B    pop         ebp
 00651B9C    ret         8
end;*}

//00651BA4
procedure sub_00651BA4(?:HWND);
begin
{*
 00651BA4    push        ebp
 00651BA5    mov         ebp,esp
 00651BA7    add         esp,0FFFFFFF8
 00651BAA    mov         dword ptr [ebp-4],eax
 00651BAD    push        0FC
 00651BAF    mov         eax,dword ptr [ebp-4]
 00651BB2    push        eax
 00651BB3    call        USER32.GetWindowLongA
 00651BB8    mov         dword ptr [ebp-8],eax
 00651BBB    mov         eax,dword ptr [ebp-4]
 00651BBE    push        eax
 00651BBF    call        USER32.DestroyWindow
 00651BC4    mov         eax,692BA0;USER32.DefWindowProcA:Longint
 00651BC9    cmp         eax,dword ptr [ebp-8]
>00651BCC    je          00651BD6
 00651BCE    mov         eax,dword ptr [ebp-8]
 00651BD1    call        00651AB4
 00651BD6    pop         ecx
 00651BD7    pop         ecx
 00651BD8    pop         ebp
 00651BD9    ret
*}
end;

end.