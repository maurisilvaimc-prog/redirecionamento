//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit system;

interface

uses
  SysUtils, Classes;

type
  TBoundArray = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  Boolean = (False, True);
  TObject = class()
    function ClassType:TClass;//0066B808
    function ClassName:ShortString;//0066B810
    function ClassNameIs(const Name:AnsiString):Boolean;//0066B824
    function ClassParent:TClass;//0066B84C
    function InstanceSize:Integer;//0066B888
    constructor Create;//0066B890
    procedure Free;//0066B8C0
    function InitInstance(Instance:Pointer):TObject;//0066B8CC
    procedure CleanupInstance;//0066B924
    function GetInterface(const IID:TGUID; var Obj:void ):Boolean;//0066B974
    function GetInterfaceEntry(const IID:TGUID):PInterfaceEntry;//0066BA08
    function InheritsFrom(AClass:TClass):Boolean;//0066BAEC
    function MethodAddress(const Name:ShortString):Pointer;//0066BB44
    function MethodName(Address:Pointer):ShortString;//0066BB94
    function FieldAddress(const Name:ShortString):Pointer;//0066BBD4
  end;
  TInterfacedObject = class(TObject)
  public
    FRefCount:Integer;//f4
    function _AddRef:Integer; stdcall;//0066E4E0
    function _Release:Integer; stdcall;//0066E4F4
  end;
  TAggregatedObject = class(TObject)
  public
    FController:Pointer;//f4
    function _AddRef:Integer; stdcall;//0066E51C
    function _Release:Integer; stdcall;//0066E530
  end;
  TContainedObject = class(TAggregatedObject)
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;//0066E4B8
  end;
    procedure sub_00668BF4;//00668BF4
    function GetCmdShow:Integer;//006692DC
    function GetBlockDesc:PBlockDesc;//00669300
    procedure MakeEmpty(bd:PBlockDesc);//00669350
    function AddBlockAfter(prev:PBlockDesc; const b:TBlock):Boolean;//00669358
    procedure DeleteBlock(bd:PBlockDesc);//00669388
    function MergeBlockAfter(prev:PBlockDesc; const b:TBlock):TBlock;//006693A0
    function RemoveBlock(bd:PBlockDesc; const b:TBlock):Boolean;//00669410
    function GetSpace(minSize:Integer):TBlock;//006694A4
    function GetSpaceAt(addr:PAnsiChar; minSize:Integer):TBlock;//00669508
    function FreeSpace(addr:Pointer; maxSize:Integer):TBlock;//00669580
    function Commit(addr:Pointer; minSize:Integer):TBlock;//00669638
    function Decommit(addr:Pointer; maxSize:Integer):TBlock;//006696CC
    function GetCommitted(minSize:Integer):TBlock;//0066974C
    function GetCommittedAt(addr:PAnsiChar; minSize:Integer):TBlock;//006697DC
    function FreeCommitted(addr:PAnsiChar; maxSize:Integer):TBlock;//00669900
    function InitAllocator:Boolean;//0066998C
    procedure UninitAllocator;//00669A50
    procedure DeleteFree(f:PFree);//00669B30
    function FindCommitted(addr:PAnsiChar):PBlockDesc;//00669B94
    procedure FillBeforeGap(a:PAnsiChar; size:Integer);//00669BC4
    procedure InternalFreeMem(a:PAnsiChar);//00669BF4
    procedure FillAfterGap(a:PAnsiChar; size:Integer);//00669C18
    function FillerSizeBeforeGap(a:PAnsiChar):Integer;//00669C40
    function FillerSizeAfterGap(a:PAnsiChar):Integer;//00669CB0
    function DecommitFree(a:PAnsiChar; size:Integer):Boolean;//00669CE8
    procedure InsertFree(a:Pointer; size:Integer);//00669D98
    procedure FreeCurAlloc;//00669E20
    function MergeCommit(b:TBlock):Boolean;//00669E6C
    function NewCommit(minSize:Integer):Boolean;//00669EF8
    function NewCommitAt(addr:Pointer; minSize:Integer):Boolean;//00669F24
    function SearchSmallBlocks(size:Integer):PFree;//00669F58
    function TryHarder(size:Integer):Pointer;//00669F84
    function SysGetMem(Size:Integer):Pointer;//0066A078
    function SysFreeMem(P:Pointer):Integer;//0066A208
    function ResizeInPlace(p:Pointer; newSize:Integer):Boolean;//0066A3AC
    function SysReallocMem(P:Pointer; Size:Integer):Pointer;//0066A57C
    function @GetMem(size:Integer):Pointer;//0066A640
    function @FreeMem(p:Pointer):Integer;//0066A660
    function @ReallocMem(var P:Pointer; NewSize:Integer):Pointer;//0066A680
    procedure GetMemoryManager(var MemMgr:TMemoryManager);//0066A6D0
    procedure SetMemoryManager(const MemMgr:TMemoryManager);//0066A6EC
    function IsMemoryManagerSet:Boolean;//0066A708
    function ExceptObject:TObject;//0066A738
    function ExceptAddr:Pointer;//0066A758
    function AcquireExceptionObject:Pointer;//0066A778
    procedure RunErrorAt(ErrCode:Integer; ErrorAtAddr:Pointer);//0066A7AC
    procedure ErrorAt(ErrorCode:Byte; ErrorAddr:Pointer);//0066A7B8
    procedure Error(errorCode:TRuntimeError);//0066A804
    procedure @_IOTest;//0066A810
    procedure SetInOutRes(NewValue:Integer);//0066A830
    procedure InOutError;//0066A840
    procedure ChDir(const S:AnsiString);//0066A84C
    procedure ChDir(P:PAnsiChar);//0066A860
    procedure @Copy(S:ShortString; Index:Integer; Count:Integer; Result:ShortString);//0066A878
    procedure @LGetDir(D:Byte; var S:AnsiString);//0066A8BC
    procedure @SGetDir(D:Byte; var S:ShortString; const _Dv_:$0..-$1);//0066A934
    function IOResult:Integer;//0066A9A4
    procedure Move(const Source:void ; var Dest:void ; Count:Integer);//0066A9C4
    function GetParamStr(P:PAnsiChar; var Param:AnsiString):PAnsiChar;//0066AA04
    function ParamCount:Integer;//0066AAF0
    function ParamStr(Index:Integer):String;//0066AB50
    procedure Randomize;//0066ABB0
    function UpCase(Ch:Char):Char;//0066ABEC
    procedure @EXP;//0066ABF8
    procedure @INT;//0066AC10
    procedure @FRAC;//0066AC30
    procedure @ROUND;//0066AC54
    function @TRUNC(X:Extended):Int64;//0066AC60
    procedure @AbstractError;//0066AC84
    function OpenText(var t:TTextRec; Mode:Word):Integer;//0066ACA0
    function @RewritText(var T:TTextRec):Integer;//0066ACF8
    function TextIn(var t:TTextRec):Integer;//0066AD04
    function FileNOPProc(var t:void ):Integer;//0066AD40
    function TextOut(var t:TTextRec):Integer;//0066AD44
    function InternalClose(Handle:Integer):Boolean;//0066AD80
    function TextClose(var t:TTextRec):Integer;//0066AD90
    function TextOpen(var t:TTextRec):Integer;//0066ADB0
    function InternalFlush(var t:TTextRec; Func:TTextIOFunc):Integer;//0066AF5C
    function Flush(var t:Text):Integer;//0066AFA4
    procedure @Flush(var F:TFileRec);//0066AFB0
    procedure @Close(var F:TFileRec);//0066AFBC
    procedure @PStrNCat(Dest:PShortString; Source:PShortString; MaxLen:Byte);//0066B014
    procedure @PStrCpy(Dest:PShortString; Source:PShortString);//0066B044
    procedure @PStrNCpy(Dest:PShortString; Source:PShortString; MaxLen:Byte);//0066B050
    procedure @PStrCmp(S1:PShortString; S2:PShortString);//0066B06C
    procedure @AStrCmp(S1:PShortString; S2:PShortString; Bytes:Integer);//0066B0F0
    procedure @FillChar(var dst:Pointer; cnt:Integer; val:Char);//0066B160
    function @RandInt(Range:Integer):Integer;//0066B180
    function @ValLong(s:AnsiString; var code:Integer):Longint;//0066B19C
    function TryOpenForOutput(var t:TTextRec):Boolean;//0066B268
    function @WriteBytes(var t:TTextRec; const b:void ; cnt:Integer):Pointer;//0066B2AC
    function @WriteSpaces(var t:TTextRec; cnt:Integer):Pointer;//0066B300
    procedure @_CToPasStr(Dest:PShortString; const Source:PAnsiChar);//0066B37C
    procedure @_CLenToPasStr(Dest:PShortString; const Source:PAnsiChar; MaxLen:Integer);//0066B388
    procedure @SetRange;//0066B3AC
    procedure @SetEq;//0066B404
    procedure FPower10;//0066B418
    procedure @Pow10;//0066B420
    function @isNECWindows:Boolean;//0066B700
    procedure @FpuMaskInit;//0066B730
    procedure @FpuInit;//0066B7F4
    procedure @BoundErr;//0066B800
    function NewInstance:TObject;//0066B858
    procedure FreeInstance;//0066B874
    destructor Destroy;//0066B8B0
    function InvokeImplGetter(Self:TObject; ImplGetter:Cardinal):IInterface;//0066B944
    function @IsClass(Child:TObject; Parent:TClass):Boolean;//0066BA4C
    function @AsClass(child:TObject; parent:TClass):TObject;//0066BA70
    procedure GetDynaMethod;//0066BA8C
    procedure @CallDynaInst;//0066BABC
    procedure @FindDynaInst;//0066BAD4
    //function sub_0066BB00(?:Longint):?;//0066BB00
    //function SafeCallException:?;//0066BB08
    procedure DefaultHandler;//0066BB10
    procedure AfterConstruction;//0066BB14
    procedure BeforeDestruction;//0066BB18
    procedure Dispatch(var Message:void );//0066BB1C
    function @ClassCreate(AClass:TClass; Alloc:Boolean):TObject;//0066BC24
    procedure @ClassDestroy(Instance:TObject);//0066BC74
    function @AfterConstruction(Instance:TObject):TObject;//0066BC7C
    function @BeforeDestruction(Instance:TObject; OuterMost:Shortint):TObject;//0066BC8C
    procedure NotifyReRaise;//0066BC9C
    procedure NotifyNonDelphiException;//0066BCB8
    procedure NotifyExcept;//0066BCDC
    procedure NotifyOnExcept;//0066BCF4
    procedure NotifyAnyExcept;//0066BD08
    procedure CheckJmp;//0066BD1C
    procedure NotifyExceptFinally;//0066BD3C
    procedure NotifyTerminate;//0066BD64
    procedure NotifyUnhandled;//0066BD80
    procedure @HandleAnyException;//0066BDA0
    procedure @HandleOnException;//0066BECC
    procedure @HandleFinally;//0066C054
    procedure @RaiseExcept;//0066C08C
    procedure @RaiseAgain;//0066C0B4
    procedure @DoneExcept;//0066C108
    procedure @TryFinallyExit;//0066C138
    procedure MapToRunError(P:PExceptionRecord); stdcall;//0066C150
    procedure @ExceptionHandler;//0066C1F0
    procedure UnsetExceptionHandler;//0066C290
    procedure FinalizeUnits;//0066C2B8
    procedure @InitResStringImports;//0066C318
    procedure @InitImports;//0066C340
    procedure MakeErrorMessage;//0066C364
    procedure ExitDll;//0066C3C0
    procedure WriteErrorMessage;//0066C3F0
    procedure @Halt0;//0066C47C
    procedure @Halt(Code:Integer);//0066C554
    procedure @RunError;//0066C560
    function ThreadWrapper(Parameter:Pointer):Integer; stdcall;//0066C56C
    function BeginThread(SecurityAttributes:Pointer; StackSize:Cardinal; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):Integer;//0066C5A4
    procedure sub_0066C5E8;//0066C5E8
    procedure @LStrClr(var S:AnsiString);//0066C5F0
    procedure @LStrArrayClr(var StrArray:Pointer; Count:Integer);//0066C614
    procedure @LStrAsg(var Dest:AnsiString; Source:AnsiString);//0066C644
    procedure @LStrLAsg(var Dest:AnsiString; const Source:AnsiString);//0066C688
    function @NewAnsiString(length:Integer):Pointer;//0066C6B4
    procedure @LStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);//0066C6E0
    function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer):Integer;//0066C710
    function WCharFromChar(WCharDest:PWideChar; DestChars:Integer; const CharSource:PAnsiChar; SrcBytes:Integer):Integer;//0066C72C
    procedure @LStrFromPWCharLen(var Dest:AnsiString; Source:PWideChar; Length:Integer);//0066C744
    procedure @LStrFromChar(var Dest:AnsiString; Source:AnsiChar);//0066C7D0
    procedure @LStrFromPChar(var Dest:AnsiString; Source:PAnsiChar);//0066C7E0
    procedure @LStrFromPWChar(var Dest:AnsiString; Source:PWideChar);//0066C810
    procedure @LStrFromString(var Dest:AnsiString; const Source:ShortString);//0066C84C
    procedure @LStrFromArray(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);//0066C858
    procedure @LStrFromWStr(var Dest:AnsiString; const Source:WideString);//0066C870
    procedure @LStrToString(var Dest:ShortString; const Source:AnsiString; MaxLen:Integer);//0066C884
    function @LStrLen(S:AnsiString):Integer;//0066C8A8
    procedure @LStrCat(var Dest:AnsiString; Source:AnsiString);//0066C8B0
    procedure @LStrCat3(var Dest:AnsiString; Source1:AnsiString; Source2:AnsiString);//0066C8F4
    procedure @LStrCatN(var Dest:AnsiString; ArgCnt:Integer);//0066C968
    //function @LStrCmp(Left:AnsiString; Right:AnsiString):?;//0066C9EC
    function @LStrAddRef(var S:AnsiString):Pointer;//0066CA90
    function @LStrToPChar(S:AnsiString):PChar;//0066CAA0
    function InternalUniqueString(var str:void ):Pointer;//0066CAAC
    procedure UniqueString(var str:AnsiString);//0066CAF0
    procedure @UniqueStringA(var str:AnsiString);//0066CAF8
    function @LStrCopy(const S:AnsiString; Index:Integer; Count:Integer):AnsiString;//0066CB00
    procedure @LStrDelete(var S:AnsiString; Index:Integer; Count:Integer);//0066CB40
    procedure @LStrInsert(const Source:AnsiString; var S:AnsiString; Index:Integer);//0066CB88
    function @LStrPos(const Substr:AnsiString; const S:AnsiString):Integer;//0066CBE4
    procedure @LStrSetLength(var S:AnsiString; NewLen:Integer);//0066CC2C
    procedure @LStrOfChar(C:Char; Count:Integer; var Result:AnsiString);//0066CC90
    procedure @WriteLString(var T:TTextRec; S:AnsiString; Width:Longint);//0066CCBC
    procedure WStrError;//0066CCDC
    function @NewWideString(CharLength:Integer):Pointer;//0066CCE4
    procedure WStrSet(var S:WideString; P:PWideChar);//0066CCFC
    procedure @WStrClr(var S:WideString);//0066CD0C
    procedure @WStrArrayClr(var StrArray:Pointer; Count:Integer);//0066CD24
    procedure @WStrAsg(var Dest:WideString; Source:WideString);//0066CD48
    procedure @WStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer);//0066CD6C
    procedure @WStrFromPWCharLen(var Dest:WideString; Source:PWideChar; Length:Integer);//0066CDF8
    procedure @WStrFromPWChar(var Dest:WideString; Source:PWideChar);//0066CE1C
    procedure @WStrFromLStr(var Dest:WideString; const Source:AnsiString);//0066CE58
    function @WStrToPWChar(S:WideString):PWideChar;//0066CE68
    function @WStrLen(S:WideString):Integer;//0066CE78
    procedure @WStrCat(var Dest:WideString; Source:WideString);//0066CE84
    //function @WStrCmp(Left:WideString; Right:WideString):?;//0066CEE4
    function @WStrCopy(const S:WideString; Index:Integer; Count:Integer):WideString;//0066CF68
    procedure @WStrSetLength(var S:WideString; NewLen:Integer);//0066CFB4
    procedure @InitializeRecord(p:Pointer; typeInfo:Pointer);//0066CFF8
    procedure @InitializeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);//0066D028
    procedure @Initialize(p:Pointer; typeInfo:Pointer);//0066D0BC
    procedure @FinalizeRecord(P:Pointer; typeInfo:Pointer);//0066D0C8
    procedure @FinalizeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);//0066D0FC
    procedure @Finalize(p:Pointer; typeInfo:Pointer);//0066D1E8
    procedure @CopyRecord(Dest:Pointer; Source:Pointer; TypeInfo:Pointer);//0066D1F4
    procedure @CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Cnt:Integer);//0066D310
    function @New(size:Integer; typeInfo:Pointer):Pointer;//0066D404
    procedure @Dispose(p:Pointer; typeInfo:Pointer);//0066D418
    procedure WideCharLenToStrVar(Source:PWideChar; SourceLen:Integer; var Dest:AnsiString);//0066D428
    function StringToWideChar(const Source:AnsiString; Dest:PWideChar; DestSize:Integer):PWideChar;//0066D434
    procedure OleStrToStrVar(Source:PWideChar; var Dest:AnsiString);//0066D464
    function StringToOleStr(const Source:AnsiString):PWideChar;//0066D488
    procedure VariantSystemUndefinedError;//0066D4AC
    procedure VariantSystemDefaultVarClear(var V:TVarData);//0066D4B4
    procedure InitVariantManager;//0066D4CC
    procedure GetVariantManager(var VarMgr:TVariantManager);//0066D4EC
    procedure SetVariantManager(const VarMgr:TVariantManager);//0066D500
    procedure @VarClear(var V:Variant);//0066D514
    procedure @VarCopy(var Dest:Variant; const Source:Variant);//0066D51C
    procedure sub_0066D524;//0066D524
    //function sub_0066D52C:?;//0066D52C
    //function sub_0066D534:?;//0066D534
    //function sub_0066D53C:?;//0066D53C
    procedure sub_0066D544;//0066D544
    procedure sub_0066D54C;//0066D54C
    procedure sub_0066D554;//0066D554
    procedure sub_0066D55C;//0066D55C
    procedure sub_0066D564;//0066D564
    procedure sub_0066D56C;//0066D56C
    procedure sub_0066D574;//0066D574
    procedure @VarFromInt64(var V:Variant; const Value:Int64);//0066D57C
    procedure sub_0066D590;//0066D590
    procedure sub_0066D598;//0066D598
    procedure sub_0066D5A0;//0066D5A0
    procedure sub_0066D5A8;//0066D5A8
    procedure sub_0066D5B0;//0066D5B0
    procedure sub_0066D5B8;//0066D5B8
    procedure sub_0066D5C0;//0066D5C0
    procedure sub_0066D5C8;//0066D5C8
    procedure @VarCmpEQ(const Left:Variant; const Right:Variant);//0066D5D0
    procedure @VarCmpNE(const Left:Variant; const Right:Variant);//0066D5DC
    procedure sub_0066D5E8;//0066D5E8
    procedure sub_0066D5F0;//0066D5F0
    procedure @VarClr(var V:Variant);//0066D5F8
    procedure @DispCallByIDError;//0066D600
    procedure @_llmul;//0066D608
    procedure @_lldiv;//0066D62C
    procedure @_lludiv;//0066D6A8
    procedure @_llmod;//0066D6F4
    procedure @_llumod;//0066D770
    procedure @_llshl;//0066D7C0
    procedure @_llushr;//0066D7E0
    function @ValInt64(const s:AnsiString; var code:Integer):Int64;//0066D800
    function @DynArrayLength(Arr:Pointer):Longint;//0066DA24
    //function sub_0066DA2C:?;//0066DA2C
    procedure CopyArray(dest:Pointer; source:Pointer; typeInfo:Pointer; cnt:Integer);//0066DA34
    procedure FinalizeArray(p:Pointer; typeInfo:Pointer; cnt:Integer);//0066DA44
    procedure DynArrayClear(var arr:Pointer; typeInfo:PDynArrayTypeInfo);//0066DA4C
    procedure DynArraySetLength(var arr:Pointer; typeInfo:PDynArrayTypeInfo; dimCnt:Longint; lenVec:PLongint);//0066DA54
    procedure @DynArraySetLength(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo; DimCnt:Longint; LengthVec:Longint);//0066DBE0
    procedure @DynArrayCopy(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; var Result:Pointer);//0066DBEC
    procedure @DynArrayCopyRange(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; Index:Integer; Count:Integer; var Result:Pointer);//0066DC0C
    procedure @DynArrayClear(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo);//0066DD00
    procedure @DynArrayAsg(var Dest:Pointer; Source:Pointer; TypeInfo:PDynArrayTypeInfo);//0066DD3C
    function FindHInstance(Address:Pointer):Cardinal;//0066DD64
    procedure sub_0066DD8C;//0066DD8C
    function DelayLoadResourceModule(Module:PLibModule):Cardinal;//0066DD94
    function FindResourceHInstance(Instance:Cardinal):Cardinal;//0066DDDC
    function FindBS(Current:PAnsiChar):PAnsiChar;//0066DE04
    function ToLongPath(AFileName:PAnsiChar; BufSize:Integer):PAnsiChar;//0066DE18
    function LoadResourceModule(ModuleName:PAnsiChar; CheckOwner:Boolean):Cardinal;//0066DFD0
    procedure EnumModules(Func:TEnumModuleFuncLW; Data:Pointer);//0066E240
    procedure sub_0066E248;//0066E248
    //procedure sub_0066E250(?:?; ?:?);//0066E250
    procedure EnumResourceModules(Func:TEnumModuleFuncLW; Data:Pointer);//0066E278
    procedure sub_0066E2A4;//0066E2A4
    procedure sub_0066E2AC;//0066E2AC
    procedure AddModuleUnloadProc(Proc:TModuleUnloadProcLW);//0066E2B4
    procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProcLW);//0066E2D4
    procedure NotifyModuleUnload(HInstance:Cardinal);//0066E334
    procedure RegisterModule(LibModule:PLibModule);//0066E390
    procedure UnregisterModule(LibModule:PLibModule);//0066E3A0
    function @IntfClear(var Dest:IInterface):Pointer;//0066E410
    procedure @IntfCopy(var Dest:IInterface; const Source:IInterface);//0066E428
    procedure @IntfCast(var Dest:IInterface; const Source:IInterface; const IID:TGUID);//0066E454
    procedure @IntfAddRef(const Dest:IInterface);//0066E480
    procedure AfterConstruction;//0066E48C
    procedure BeforeDestruction;//0066E498
    function NewInstance:TObject;//0066E4A8
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;//0066E544
    function CompToDouble(Value:Comp):Double; cdecl;//0066E56C
    procedure DoubleToComp(Value:Double; var Result:Comp); cdecl;//0066E580
    function UnicodeToUtf8(Dest:PAnsiChar; MaxDestBytes:Cardinal; Source:PWideChar; SourceChars:Cardinal):Cardinal;//0066E590
    function Utf8ToUnicode(Dest:PWideChar; MaxDestChars:Cardinal; Source:PAnsiChar; SourceBytes:Cardinal):Cardinal;//0066E66C
    function UTF8Encode(const WS:WideString):UTF8String;//0066E7B0
    function UTF8Decode(const S:UTF8String):WideString;//0066E85C
    function AnsiToUtf8(const S:AnsiString):UTF8String;//0066E900
    function LoadResString(ResStringRec:PResStringRec):String;//0066E950
    procedure Finalization;//0066E9A8

implementation

//00668BF4
procedure sub_00668BF4;
begin
{*
 00668BF4    push        ebp
 00668BF5    mov         ebp,esp
 00668BF7    xor         eax,eax
 00668BF9    push        ebp
 00668BFA    push        668E25
 00668BFF    push        dword ptr fs:[eax]
 00668C02    mov         dword ptr fs:[eax],esp
 00668C05    sub         dword ptr ds:[6ED15C],1
>00668C0C    jae         00668E17
 00668C12    mov         eax,6ED13C
 00668C17    call        00667570
 00668C1C    mov         eax,65FEB4;_DispInvokeError
 00668C21    mov         [006ED14C],eax;gvar_006ED14C
 00668C26    mov         eax,65FA3C;VarInvalidOp
 00668C2B    mov         [006ED150],eax;gvar_006ED150
 00668C30    mov         eax,65F948;VarCastError
 00668C35    mov         [006ED154],eax;gvar_006ED154
 00668C3A    mov         eax,65FA3C;VarInvalidOp
 00668C3F    mov         [006ED158],eax;gvar_006ED158
 00668C44    mov         eax,660244;sub_00660244
 00668C49    mov         [006ED160],eax;gvar_006ED160
 00668C4E    mov         eax,6607C0;sub_006607C0
 00668C53    mov         [006ED164],eax;gvar_006ED164
 00668C58    mov         eax,660900;sub_00660900
 00668C5D    mov         [006ED168],eax;gvar_006ED168
 00668C62    mov         eax,661390;sub_00661390
 00668C67    mov         [006ED16C],eax;gvar_006ED16C
 00668C6C    mov         eax,661648;sub_00661648
 00668C71    mov         [006ED170],eax;gvar_006ED170
 00668C76    mov         eax,66186C;sub_0066186C
 00668C7B    mov         [006ED174],eax;gvar_006ED174
 00668C80    mov         eax,661E44;sub_00661E44
 00668C85    mov         [006ED178],eax;gvar_006ED178
 00668C8A    mov         eax,6623E4;sub_006623E4
 00668C8F    mov         [006ED17C],eax;gvar_006ED17C
 00668C94    mov         eax,66291C;sub_0066291C
 00668C99    mov         [006ED180],eax;gvar_006ED180
 00668C9E    mov         eax,6633E0;sub_006633E0
 00668CA3    mov         [006ED184],eax;gvar_006ED184
 00668CA8    mov         eax,663EE8
 00668CAD    mov         [006ED188],eax;gvar_006ED188
 00668CB2    mov         eax,663964;sub_00663964
 00668CB7    mov         [006ED18C],eax;gvar_006ED18C
 00668CBC    mov         eax,664050;sub_00664050
 00668CC1    mov         [006ED190],eax;gvar_006ED190
 00668CC6    mov         eax,664680
 00668CCB    mov         [006ED194],eax;gvar_006ED194
 00668CD0    mov         eax,664744
 00668CD5    mov         [006ED198],eax;gvar_006ED198
 00668CDA    mov         eax,6647E8
 00668CDF    mov         [006ED19C],eax;gvar_006ED19C
 00668CE4    mov         eax,6647F8;sub_006647F8
 00668CE9    mov         [006ED1A0],eax;gvar_006ED1A0
 00668CEE    mov         eax,664958;sub_00664958
 00668CF3    mov         [006ED1A4],eax;gvar_006ED1A4
 00668CF8    mov         eax,6649A4;sub_006649A4
 00668CFD    mov         [006ED1A8],eax;gvar_006ED1A8
 00668D02    mov         eax,6649F4
 00668D07    mov         [006ED1AC],eax;gvar_006ED1AC
 00668D0C    mov         eax,664A08
 00668D11    mov         [006ED1B0],eax;gvar_006ED1B0
 00668D16    mov         eax,664A1C
 00668D1B    mov         [006ED1B4],eax;gvar_006ED1B4
 00668D20    mov         eax,664A88
 00668D25    mov         [006ED1B8],eax;gvar_006ED1B8
 00668D2A    mov         eax,664A30;sub_00664A30
 00668D2F    mov         [006ED1BC],eax;gvar_006ED1BC
 00668D34    mov         eax,664AE0;sub_00664AE0
 00668D39    mov         [006ED1C0],eax;gvar_006ED1C0
 00668D3E    mov         eax,664B44;sub_00664B44
 00668D43    mov         [006ED1C4],eax;gvar_006ED1C4
 00668D48    mov         eax,664B9C;sub_00664B9C
 00668D4D    mov         [006ED1C8],eax;gvar_006ED1C8
 00668D52    mov         eax,664BF4
 00668D57    mov         [006ED1CC],eax;gvar_006ED1CC
 00668D5C    mov         eax,664C60
 00668D61    mov         [006ED1D0],eax;gvar_006ED1D0
 00668D66    mov         eax,664C08;sub_00664C08
 00668D6B    mov         [006ED1D4],eax;gvar_006ED1D4
 00668D70    mov         eax,664D38;sub_00664D38
 00668D75    mov         [006ED1D8],eax;gvar_006ED1D8
 00668D7A    mov         eax,664908
 00668D7F    mov         [006ED1DC],eax;gvar_006ED1DC
 00668D84    mov         eax,665C10;sub_00665C10
 00668D89    mov         [006ED1E0],eax;gvar_006ED1E0
 00668D8E    mov         eax,666714
 00668D93    mov         [006ED1E4],eax;gvar_006ED1E4
 00668D98    mov         eax,6668C4;sub_006668C4
 00668D9D    mov         [006ED1E8],eax;gvar_006ED1E8
 00668DA2    mov         eax,666D20;sub_00666D20
 00668DA7    mov         [006ED1EC],eax;gvar_006ED1EC
 00668DAC    mov         eax,660284;sub_00660284
 00668DB1    mov         [006ED1F0],eax;gvar_006ED1F0
 00668DB6    mov         eax,66700C
 00668DBB    mov         [006ED1F4],eax;gvar_006ED1F4
 00668DC0    mov         eax,66777C
 00668DC5    mov         [006ED1F8],eax;gvar_006ED1F8
 00668DCA    mov         eax,667980;sub_00667980
 00668DCF    mov         [006ED1FC],eax;gvar_006ED1FC
 00668DD4    mov         eax,667A78;sub_00667A78
 00668DD9    mov         [006ED200],eax;gvar_006ED200
 00668DDE    mov         eax,66758C;sub_0066758C
 00668DE3    mov         [006ED204],eax;gvar_006ED204
 00668DE8    mov         eax,667600
 00668DED    mov         [006ED208],eax;gvar_006ED208
 00668DF2    mov         eax,6ED20C
 00668DF7    call        GetVariantManager
 00668DFC    mov         eax,6ED160;gvar_006ED160
 00668E01    call        SetVariantManager
 00668E06    mov         dl,1
 00668E08    mov         eax,[0065736C];TMultiReadExclusiveWriteSynchronizer
 00668E0D    call        TMultiReadExclusiveWriteSynchronizer.Create;TMultiReadExclusiveWriteSynchronizer.Create
 00668E12    mov         [006ED2BC],eax;gvar_006ED2BC:TMultiReadExclusiveWriteSynchronizer
 00668E17    xor         eax,eax
 00668E19    pop         edx
 00668E1A    pop         ecx
 00668E1B    pop         ecx
 00668E1C    mov         dword ptr fs:[eax],edx
 00668E1F    push        668E2C
 00668E24    ret
>00668E25    jmp         @HandleFinally
>00668E2A    jmp         00668E24
 00668E2C    pop         ebp
 00668E2D    ret
*}
end;

//006692DC
function GetCmdShow:Integer;
begin
{*
 006692DC    push        ebx
 006692DD    add         esp,0FFFFFFBC
 006692E0    mov         ebx,0A
 006692E5    push        esp
 006692E6    call        KERNEL32.GetStartupInfoA
 006692EB    test        byte ptr [esp+2C],1
>006692F0    je          006692F7
 006692F2    movzx       ebx,word ptr [esp+30]
 006692F7    mov         eax,ebx
 006692F9    add         esp,44
 006692FC    pop         ebx
 006692FD    ret
*}
end;

//00669300
function GetBlockDesc:PBlockDesc;
begin
{*
 00669300    push        ebx
 00669301    push        esi
 00669302    mov         esi,6ED8AC;blockDescFreeList:PBlockDesc
 00669307    cmp         dword ptr [esi],0
>0066930A    jne         00669346
 0066930C    push        644
 00669311    push        0
 00669313    call        KERNEL32.LocalAlloc
 00669318    mov         ecx,eax
 0066931A    test        ecx,ecx
>0066931C    jne         00669323
 0066931E    xor         eax,eax
 00669320    pop         esi
 00669321    pop         ebx
 00669322    ret
 00669323    mov         eax,[006ED8A8];blockDescBlockList:PBlockDescBlock
 00669328    mov         dword ptr [ecx],eax
 0066932A    mov         dword ptr ds:[6ED8A8],ecx;blockDescBlockList:PBlockDescBlock
 00669330    xor         edx,edx
 00669332    mov         eax,edx
 00669334    add         eax,eax
 00669336    lea         eax,[ecx+eax*8+4]
 0066933A    mov         ebx,dword ptr [esi]
 0066933C    mov         dword ptr [eax],ebx
 0066933E    mov         dword ptr [esi],eax
 00669340    inc         edx
 00669341    cmp         edx,64
>00669344    jne         00669332
 00669346    mov         eax,dword ptr [esi]
 00669348    mov         edx,dword ptr [eax]
 0066934A    mov         dword ptr [esi],edx
 0066934C    pop         esi
 0066934D    pop         ebx
 0066934E    ret
*}
end;

//00669350
procedure MakeEmpty(bd:PBlockDesc);
begin
{*
 00669350    mov         dword ptr [eax],eax
 00669352    mov         dword ptr [eax+4],eax
 00669355    ret
*}
end;

//00669358
function AddBlockAfter(prev:PBlockDesc; const b:TBlock):Boolean;
begin
{*
 00669358    push        ebx
 00669359    push        esi
 0066935A    mov         esi,edx
 0066935C    mov         ebx,eax
 0066935E    call        GetBlockDesc
 00669363    test        eax,eax
>00669365    jne         0066936C
 00669367    xor         eax,eax
 00669369    pop         esi
 0066936A    pop         ebx
 0066936B    ret
 0066936C    mov         edx,dword ptr [esi]
 0066936E    mov         dword ptr [eax+8],edx
 00669371    mov         edx,dword ptr [esi+4]
 00669374    mov         dword ptr [eax+0C],edx
 00669377    mov         edx,dword ptr [ebx]
 00669379    mov         dword ptr [eax],edx
 0066937B    mov         dword ptr [eax+4],ebx
 0066937E    mov         dword ptr [edx+4],eax
 00669381    mov         dword ptr [ebx],eax
 00669383    mov         al,1
 00669385    pop         esi
 00669386    pop         ebx
 00669387    ret
*}
end;

//00669388
procedure DeleteBlock(bd:PBlockDesc);
begin
{*
 00669388    mov         edx,dword ptr [eax+4]
 0066938B    mov         ecx,dword ptr [eax]
 0066938D    mov         dword ptr [edx],ecx
 0066938F    mov         dword ptr [ecx+4],edx
 00669392    mov         edx,dword ptr ds:[6ED8AC];blockDescFreeList:PBlockDesc
 00669398    mov         dword ptr [eax],edx
 0066939A    mov         [006ED8AC],eax;blockDescFreeList:PBlockDesc
 0066939F    ret
*}
end;

//006693A0
function MergeBlockAfter(prev:PBlockDesc; const b:TBlock):TBlock;
begin
{*
 006693A0    push        ebx
 006693A1    push        esi
 006693A2    push        edi
 006693A3    push        ebp
 006693A4    push        ecx
 006693A5    mov         esi,ecx
 006693A7    mov         dword ptr [esp],edx
 006693AA    mov         ebp,eax
 006693AC    mov         ebx,dword ptr [ebp]
 006693AF    mov         eax,dword ptr [esp]
 006693B2    mov         edx,dword ptr [eax]
 006693B4    mov         dword ptr [esi],edx
 006693B6    mov         edx,dword ptr [eax+4]
 006693B9    mov         dword ptr [esi+4],edx
 006693BC    mov         edi,dword ptr [ebx]
 006693BE    mov         eax,dword ptr [esi]
 006693C0    mov         edx,dword ptr [ebx+8]
 006693C3    add         edx,dword ptr [ebx+0C]
 006693C6    cmp         eax,edx
>006693C8    jne         006693DE
 006693CA    mov         eax,ebx
 006693CC    call        DeleteBlock
 006693D1    mov         eax,dword ptr [ebx+8]
 006693D4    mov         dword ptr [esi],eax
 006693D6    mov         eax,dword ptr [ebx+0C]
 006693D9    add         dword ptr [esi+4],eax
>006693DC    jmp         006693F3
 006693DE    add         eax,dword ptr [esi+4]
 006693E1    cmp         eax,dword ptr [ebx+8]
>006693E4    jne         006693F3
 006693E6    mov         eax,ebx
 006693E8    call        DeleteBlock
 006693ED    mov         eax,dword ptr [ebx+0C]
 006693F0    add         dword ptr [esi+4],eax
 006693F3    mov         ebx,edi
 006693F5    cmp         ebp,ebx
>006693F7    jne         006693BC
 006693F9    mov         edx,esi
 006693FB    mov         eax,ebp
 006693FD    call        AddBlockAfter
 00669402    test        al,al
>00669404    jne         0066940A
 00669406    xor         eax,eax
 00669408    mov         dword ptr [esi],eax
 0066940A    pop         edx
 0066940B    pop         ebp
 0066940C    pop         edi
 0066940D    pop         esi
 0066940E    pop         ebx
 0066940F    ret
*}
end;

//00669410
function RemoveBlock(bd:PBlockDesc; const b:TBlock):Boolean;
begin
{*
 00669410    push        ebx
 00669411    push        esi
 00669412    push        edi
 00669413    push        ebp
 00669414    add         esp,0FFFFFFF8
 00669417    mov         ebx,eax
 00669419    mov         edi,ebx
 0066941B    mov         esi,dword ptr [edx]
 0066941D    mov         eax,dword ptr [ebx+8]
 00669420    cmp         esi,eax
>00669422    jb          00669494
 00669424    mov         ecx,esi
 00669426    add         ecx,dword ptr [edx+4]
 00669429    mov         ebp,eax
 0066942B    add         ebp,dword ptr [ebx+0C]
 0066942E    cmp         ecx,ebp
>00669430    ja          00669494
 00669432    cmp         esi,eax
>00669434    jne         00669451
 00669436    mov         eax,dword ptr [edx+4]
 00669439    add         dword ptr [ebx+8],eax
 0066943C    mov         eax,dword ptr [edx+4]
 0066943F    sub         dword ptr [ebx+0C],eax
 00669442    cmp         dword ptr [ebx+0C],0
>00669446    jne         00669490
 00669448    mov         eax,ebx
 0066944A    call        DeleteBlock
>0066944F    jmp         00669490
 00669451    mov         ecx,esi
 00669453    mov         edi,dword ptr [edx+4]
 00669456    add         ecx,edi
 00669458    mov         ebp,eax
 0066945A    add         ebp,dword ptr [ebx+0C]
 0066945D    cmp         ecx,ebp
>0066945F    jne         00669466
 00669461    sub         dword ptr [ebx+0C],edi
>00669464    jmp         00669490
 00669466    mov         ecx,dword ptr [edx]
 00669468    add         ecx,dword ptr [edx+4]
 0066946B    mov         dword ptr [esp],ecx
 0066946E    mov         edi,dword ptr [ebx+8]
 00669471    add         edi,dword ptr [ebx+0C]
 00669474    sub         edi,ecx
 00669476    mov         dword ptr [esp+4],edi
 0066947A    sub         esi,eax
 0066947C    mov         dword ptr [ebx+0C],esi
 0066947F    mov         edx,esp
 00669481    mov         eax,ebx
 00669483    call        AddBlockAfter
 00669488    test        al,al
>0066948A    jne         00669490
 0066948C    xor         eax,eax
>0066948E    jmp         0066949C
 00669490    mov         al,1
>00669492    jmp         0066949C
 00669494    mov         ebx,dword ptr [ebx]
 00669496    cmp         edi,ebx
>00669498    jne         0066941B
 0066949A    xor         eax,eax
 0066949C    pop         ecx
 0066949D    pop         edx
 0066949E    pop         ebp
 0066949F    pop         edi
 006694A0    pop         esi
 006694A1    pop         ebx
 006694A2    ret
*}
end;

//006694A4
function GetSpace(minSize:Integer):TBlock;
begin
{*
 006694A4    push        ebx
 006694A5    push        esi
 006694A6    push        edi
 006694A7    mov         ebx,edx
 006694A9    mov         esi,eax
 006694AB    cmp         esi,100000
>006694B1    jge         006694BA
 006694B3    mov         esi,100000
>006694B8    jmp         006694C6
 006694BA    add         esi,0FFFF
 006694C0    and         esi,0FFFF0000
 006694C6    mov         dword ptr [ebx+4],esi
 006694C9    push        1
 006694CB    push        2000
 006694D0    push        esi
 006694D1    push        0
 006694D3    call        KERNEL32.VirtualAlloc
 006694D8    mov         edi,eax
 006694DA    mov         dword ptr [ebx],edi
 006694DC    test        edi,edi
>006694DE    je          00669503
 006694E0    mov         edx,ebx
 006694E2    mov         eax,6ED8B0;spaceRoot:TBlockDesc
 006694E7    call        AddBlockAfter
 006694EC    test        al,al
>006694EE    jne         00669503
 006694F0    push        8000
 006694F5    push        0
 006694F7    mov         eax,dword ptr [ebx]
 006694F9    push        eax
 006694FA    call        KERNEL32.VirtualFree
 006694FF    xor         eax,eax
 00669501    mov         dword ptr [ebx],eax
 00669503    pop         edi
 00669504    pop         esi
 00669505    pop         ebx
 00669506    ret
*}
end;

//00669508
function GetSpaceAt(addr:PAnsiChar; minSize:Integer):TBlock;
begin
{*
 00669508    push        ebx
 00669509    push        esi
 0066950A    push        edi
 0066950B    push        ebp
 0066950C    mov         ebx,ecx
 0066950E    mov         esi,edx
 00669510    mov         ebp,eax
 00669512    mov         dword ptr [ebx+4],100000
 00669519    push        4
 0066951B    push        2000
 00669520    push        100000
 00669525    push        ebp
 00669526    call        KERNEL32.VirtualAlloc
 0066952B    mov         edi,eax
 0066952D    mov         dword ptr [ebx],edi
 0066952F    test        edi,edi
>00669531    jne         00669552
 00669533    add         esi,0FFFF
 00669539    and         esi,0FFFF0000
 0066953F    mov         dword ptr [ebx+4],esi
 00669542    push        4
 00669544    push        2000
 00669549    push        esi
 0066954A    push        ebp
 0066954B    call        KERNEL32.VirtualAlloc
 00669550    mov         dword ptr [ebx],eax
 00669552    cmp         dword ptr [ebx],0
>00669555    je          0066957A
 00669557    mov         edx,ebx
 00669559    mov         eax,6ED8B0;spaceRoot:TBlockDesc
 0066955E    call        AddBlockAfter
 00669563    test        al,al
>00669565    jne         0066957A
 00669567    push        8000
 0066956C    push        0
 0066956E    mov         eax,dword ptr [ebx]
 00669570    push        eax
 00669571    call        KERNEL32.VirtualFree
 00669576    xor         eax,eax
 00669578    mov         dword ptr [ebx],eax
 0066957A    pop         ebp
 0066957B    pop         edi
 0066957C    pop         esi
 0066957D    pop         ebx
 0066957E    ret
*}
end;

//00669580
function FreeSpace(addr:Pointer; maxSize:Integer):TBlock;
begin
{*
 00669580    push        ebx
 00669581    push        esi
 00669582    push        edi
 00669583    push        ebp
 00669584    add         esp,0FFFFFFEC
 00669587    mov         dword ptr [esp+4],ecx
 0066958B    mov         dword ptr [esp],edx
 0066958E    mov         dword ptr [esp+8],0FFFFFFFF
 00669596    xor         edx,edx
 00669598    mov         dword ptr [esp+0C],edx
 0066959C    mov         ebp,eax
 0066959E    mov         eax,dword ptr [esp]
 006695A1    add         eax,ebp
 006695A3    mov         dword ptr [esp+10],eax
 006695A7    mov         ebx,dword ptr ds:[6ED8B0];spaceRoot:TBlockDesc
>006695AD    jmp         00669600
 006695AF    mov         edi,dword ptr [ebx]
 006695B1    mov         esi,dword ptr [ebx+8]
 006695B4    cmp         ebp,esi
>006695B6    ja          006695FE
 006695B8    mov         eax,esi
 006695BA    add         eax,dword ptr [ebx+0C]
 006695BD    cmp         eax,dword ptr [esp+10]
>006695C1    ja          006695FE
 006695C3    cmp         esi,dword ptr [esp+8]
>006695C7    jae         006695CD
 006695C9    mov         dword ptr [esp+8],esi
 006695CD    mov         eax,esi
 006695CF    add         eax,dword ptr [ebx+0C]
 006695D2    cmp         eax,dword ptr [esp+0C]
>006695D6    jbe         006695DC
 006695D8    mov         dword ptr [esp+0C],eax
 006695DC    push        8000
 006695E1    push        0
 006695E3    push        esi
 006695E4    call        KERNEL32.VirtualFree
 006695E9    test        eax,eax
>006695EB    jne         006695F7
 006695ED    mov         dword ptr ds:[6ED88C],1;heapErrorCode:Integer
 006695F7    mov         eax,ebx
 006695F9    call        DeleteBlock
 006695FE    mov         ebx,edi
 00669600    cmp         ebx,6ED8B0;spaceRoot:TBlockDesc
>00669606    jne         006695AF
 00669608    mov         eax,dword ptr [esp+4]
 0066960C    xor         edx,edx
 0066960E    mov         dword ptr [eax],edx
 00669610    cmp         dword ptr [esp+0C],0
>00669615    je          00669630
 00669617    mov         eax,dword ptr [esp+4]
 0066961B    mov         edx,dword ptr [esp+8]
 0066961F    mov         dword ptr [eax],edx
 00669621    mov         eax,dword ptr [esp+0C]
 00669625    sub         eax,dword ptr [esp+8]
 00669629    mov         edx,dword ptr [esp+4]
 0066962D    mov         dword ptr [edx+4],eax
 00669630    add         esp,14
 00669633    pop         ebp
 00669634    pop         edi
 00669635    pop         esi
 00669636    pop         ebx
 00669637    ret
*}
end;

//00669638
function Commit(addr:Pointer; minSize:Integer):TBlock;
begin
{*
 00669638    push        ebx
 00669639    push        esi
 0066963A    push        edi
 0066963B    push        ebp
 0066963C    add         esp,0FFFFFFF4
 0066963F    mov         dword ptr [esp+4],ecx
 00669643    mov         dword ptr [esp],edx
 00669646    mov         edx,eax
 00669648    mov         ebp,edx
 0066964A    and         ebp,0FFFFF000
 00669650    add         edx,dword ptr [esp]
 00669653    add         edx,0FFF
 00669659    and         edx,0FFFFF000
 0066965F    mov         dword ptr [esp+8],edx
 00669663    mov         eax,dword ptr [esp+4]
 00669667    mov         dword ptr [eax],ebp
 00669669    mov         eax,dword ptr [esp+8]
 0066966D    sub         eax,ebp
 0066966F    mov         edx,dword ptr [esp+4]
 00669673    mov         dword ptr [edx+4],eax
 00669676    mov         esi,dword ptr ds:[6ED8B0];spaceRoot:TBlockDesc
>0066967C    jmp         006696BA
 0066967E    mov         ebx,dword ptr [esi+8]
 00669681    mov         edi,dword ptr [esi+0C]
 00669684    add         edi,ebx
 00669686    cmp         ebp,ebx
>00669688    jbe         0066968C
 0066968A    mov         ebx,ebp
 0066968C    cmp         edi,dword ptr [esp+8]
>00669690    jbe         00669696
 00669692    mov         edi,dword ptr [esp+8]
 00669696    cmp         edi,ebx
>00669698    jbe         006696B8
 0066969A    push        4
 0066969C    push        1000
 006696A1    sub         edi,ebx
 006696A3    push        edi
 006696A4    push        ebx
 006696A5    call        KERNEL32.VirtualAlloc
 006696AA    test        eax,eax
>006696AC    jne         006696B8
 006696AE    mov         eax,dword ptr [esp+4]
 006696B2    xor         edx,edx
 006696B4    mov         dword ptr [eax],edx
>006696B6    jmp         006696C2
 006696B8    mov         esi,dword ptr [esi]
 006696BA    cmp         esi,6ED8B0;spaceRoot:TBlockDesc
>006696C0    jne         0066967E
 006696C2    add         esp,0C
 006696C5    pop         ebp
 006696C6    pop         edi
 006696C7    pop         esi
 006696C8    pop         ebx
 006696C9    ret
*}
end;

//006696CC
function Decommit(addr:Pointer; maxSize:Integer):TBlock;
begin
{*
 006696CC    push        ebx
 006696CD    push        esi
 006696CE    push        edi
 006696CF    push        ebp
 006696D0    push        ecx
 006696D1    mov         ebx,eax
 006696D3    mov         esi,ebx
 006696D5    add         esi,0FFF
 006696DB    and         esi,0FFFFF000
 006696E1    mov         dword ptr [esp],esi
 006696E4    mov         ebp,ebx
 006696E6    add         ebp,edx
 006696E8    and         ebp,0FFFFF000
 006696EE    mov         eax,dword ptr [esp]
 006696F1    mov         dword ptr [ecx],eax
 006696F3    mov         eax,ebp
 006696F5    sub         eax,dword ptr [esp]
 006696F8    mov         dword ptr [ecx+4],eax
 006696FB    mov         esi,dword ptr ds:[6ED8B0];spaceRoot:TBlockDesc
>00669701    jmp         0066973B
 00669703    mov         ebx,dword ptr [esi+8]
 00669706    mov         edi,dword ptr [esi+0C]
 00669709    add         edi,ebx
 0066970B    cmp         ebx,dword ptr [esp]
>0066970E    jae         00669713
 00669710    mov         ebx,dword ptr [esp]
 00669713    cmp         ebp,edi
>00669715    jae         00669719
 00669717    mov         edi,ebp
 00669719    cmp         edi,ebx
>0066971B    jbe         00669739
 0066971D    push        4000
 00669722    sub         edi,ebx
 00669724    push        edi
 00669725    push        ebx
 00669726    call        KERNEL32.VirtualFree
 0066972B    test        eax,eax
>0066972D    jne         00669739
 0066972F    mov         dword ptr ds:[6ED88C],2;heapErrorCode:Integer
 00669739    mov         esi,dword ptr [esi]
 0066973B    cmp         esi,6ED8B0;spaceRoot:TBlockDesc
>00669741    jne         00669703
 00669743    pop         edx
 00669744    pop         ebp
 00669745    pop         edi
 00669746    pop         esi
 00669747    pop         ebx
 00669748    ret
*}
end;

//0066974C
function GetCommitted(minSize:Integer):TBlock;
begin
{*
 0066974C    push        ebx
 0066974D    push        esi
 0066974E    push        edi
 0066974F    push        ebp
 00669750    add         esp,0FFFFFFF8
 00669753    mov         esi,edx
 00669755    mov         edi,eax
 00669757    mov         ebp,6ED8C0;decommittedRoot:TBlockDesc
 0066975C    add         edi,3FFF
 00669762    and         edi,0FFFFC000
 00669768    mov         ebx,dword ptr [ebp]
>0066976B    jmp         006697A0
 0066976D    cmp         edi,dword ptr [ebx+0C]
>00669770    jg          0066979E
 00669772    mov         ecx,esi
 00669774    mov         edx,edi
 00669776    mov         eax,dword ptr [ebx+8]
 00669779    call        Commit
 0066977E    cmp         dword ptr [esi],0
>00669781    je          006697D3
 00669783    mov         eax,dword ptr [esi+4]
 00669786    add         dword ptr [ebx+8],eax
 00669789    mov         eax,dword ptr [esi+4]
 0066978C    sub         dword ptr [ebx+0C],eax
 0066978F    cmp         dword ptr [ebx+0C],0
>00669793    jne         006697D3
 00669795    mov         eax,ebx
 00669797    call        DeleteBlock
>0066979C    jmp         006697D3
 0066979E    mov         ebx,dword ptr [ebx]
 006697A0    cmp         ebx,ebp
>006697A2    jne         0066976D
 006697A4    mov         edx,esi
 006697A6    mov         eax,edi
 006697A8    call        GetSpace
 006697AD    cmp         dword ptr [esi],0
>006697B0    je          006697D3
 006697B2    mov         ecx,esp
 006697B4    mov         edx,esi
 006697B6    mov         eax,ebp
 006697B8    call        MergeBlockAfter
 006697BD    cmp         dword ptr [esp],0
>006697C1    jne         00669768
 006697C3    mov         ecx,esp
 006697C5    mov         edx,dword ptr [esi+4]
 006697C8    mov         eax,dword ptr [esi]
 006697CA    call        FreeSpace
 006697CF    xor         eax,eax
 006697D1    mov         dword ptr [esi],eax
 006697D3    pop         ecx
 006697D4    pop         edx
 006697D5    pop         ebp
 006697D6    pop         edi
 006697D7    pop         esi
 006697D8    pop         ebx
 006697D9    ret
*}
end;

//006697DC
function GetCommittedAt(addr:PAnsiChar; minSize:Integer):TBlock;
begin
{*
 006697DC    push        ebx
 006697DD    push        esi
 006697DE    push        edi
 006697DF    push        ebp
 006697E0    add         esp,0FFFFFFEC
 006697E3    mov         dword ptr [esp],ecx
 006697E6    mov         edi,edx
 006697E8    mov         esi,eax
 006697EA    mov         ebp,6ED8C0;decommittedRoot:TBlockDesc
 006697EF    add         edi,3FFF
 006697F5    and         edi,0FFFFC000
 006697FB    mov         ebx,dword ptr [ebp]
>006697FE    jmp         00669802
 00669800    mov         ebx,dword ptr [ebx]
 00669802    cmp         ebx,ebp
>00669804    je          0066980B
 00669806    cmp         esi,dword ptr [ebx+8]
>00669809    jne         00669800
 0066980B    cmp         esi,dword ptr [ebx+8]
>0066980E    jne         00669867
 00669810    cmp         edi,dword ptr [ebx+0C]
>00669813    jle         006698AF
 00669819    lea         ecx,[esp+4]
 0066981D    mov         edx,edi
 0066981F    sub         edx,dword ptr [ebx+0C]
 00669822    mov         eax,dword ptr [ebx+8]
 00669825    add         eax,dword ptr [ebx+0C]
 00669828    call        GetSpaceAt
 0066982D    cmp         dword ptr [esp+4],0
>00669832    je          00669867
 00669834    lea         ecx,[esp+0C]
 00669838    lea         edx,[esp+4]
 0066983C    mov         eax,ebp
 0066983E    call        MergeBlockAfter
 00669843    cmp         dword ptr [esp+0C],0
>00669848    jne         006697FB
 0066984A    lea         ecx,[esp+0C]
 0066984E    mov         edx,dword ptr [esp+8]
 00669852    mov         eax,dword ptr [esp+4]
 00669856    call        FreeSpace
 0066985B    mov         eax,dword ptr [esp]
 0066985E    xor         edx,edx
 00669860    mov         dword ptr [eax],edx
>00669862    jmp         006698F7
 00669867    lea         ecx,[esp+4]
 0066986B    mov         edx,edi
 0066986D    mov         eax,esi
 0066986F    call        GetSpaceAt
 00669874    cmp         dword ptr [esp+4],0
>00669879    je          006698AF
 0066987B    lea         ecx,[esp+0C]
 0066987F    lea         edx,[esp+4]
 00669883    mov         eax,ebp
 00669885    call        MergeBlockAfter
 0066988A    cmp         dword ptr [esp+0C],0
>0066988F    jne         006697FB
 00669895    lea         ecx,[esp+0C]
 00669899    mov         edx,dword ptr [esp+8]
 0066989D    mov         eax,dword ptr [esp+4]
 006698A1    call        FreeSpace
 006698A6    mov         eax,dword ptr [esp]
 006698A9    xor         edx,edx
 006698AB    mov         dword ptr [eax],edx
>006698AD    jmp         006698F7
 006698AF    mov         ebp,dword ptr [ebx+8]
 006698B2    cmp         esi,ebp
>006698B4    jne         006698F0
 006698B6    cmp         edi,dword ptr [ebx+0C]
>006698B9    jg          006698F0
 006698BB    mov         ecx,dword ptr [esp]
 006698BE    mov         edx,edi
 006698C0    mov         eax,ebp
 006698C2    call        Commit
 006698C7    mov         eax,dword ptr [esp]
 006698CA    cmp         dword ptr [eax],0
>006698CD    je          006698F7
 006698CF    mov         eax,dword ptr [esp]
 006698D2    mov         eax,dword ptr [eax+4]
 006698D5    add         dword ptr [ebx+8],eax
 006698D8    mov         eax,dword ptr [esp]
 006698DB    mov         eax,dword ptr [eax+4]
 006698DE    sub         dword ptr [ebx+0C],eax
 006698E1    cmp         dword ptr [ebx+0C],0
>006698E5    jne         006698F7
 006698E7    mov         eax,ebx
 006698E9    call        DeleteBlock
>006698EE    jmp         006698F7
 006698F0    mov         eax,dword ptr [esp]
 006698F3    xor         edx,edx
 006698F5    mov         dword ptr [eax],edx
 006698F7    add         esp,14
 006698FA    pop         ebp
 006698FB    pop         edi
 006698FC    pop         esi
 006698FD    pop         ebx
 006698FE    ret
*}
end;

//00669900
function FreeCommitted(addr:PAnsiChar; maxSize:Integer):TBlock;
begin
{*
 00669900    push        ebx
 00669901    push        esi
 00669902    push        edi
 00669903    add         esp,0FFFFFFEC
 00669906    mov         edi,ecx
 00669908    mov         dword ptr [esp],edx
 0066990B    lea         ebx,[eax+3FFF]
 00669911    and         ebx,0FFFFC000
 00669917    mov         esi,dword ptr [esp]
 0066991A    add         esi,eax
 0066991C    and         esi,0FFFFC000
 00669922    cmp         ebx,esi
>00669924    jae         00669981
 00669926    mov         ecx,edi
 00669928    mov         edx,esi
 0066992A    sub         edx,ebx
 0066992C    mov         eax,ebx
 0066992E    call        Decommit
 00669933    lea         ecx,[esp+4]
 00669937    mov         edx,edi
 00669939    mov         eax,6ED8C0;decommittedRoot:TBlockDesc
 0066993E    call        MergeBlockAfter
 00669943    mov         ebx,dword ptr [esp+4]
 00669947    test        ebx,ebx
>00669949    je          0066996A
 0066994B    lea         ecx,[esp+0C]
 0066994F    mov         edx,dword ptr [esp+8]
 00669953    mov         eax,ebx
 00669955    call        FreeSpace
 0066995A    mov         eax,dword ptr [esp+0C]
 0066995E    mov         dword ptr [esp+4],eax
 00669962    mov         eax,dword ptr [esp+10]
 00669966    mov         dword ptr [esp+8],eax
 0066996A    cmp         dword ptr [esp+4],0
>0066996F    je          00669985
 00669971    lea         edx,[esp+4]
 00669975    mov         eax,6ED8C0;decommittedRoot:TBlockDesc
 0066997A    call        RemoveBlock
>0066997F    jmp         00669985
 00669981    xor         eax,eax
 00669983    mov         dword ptr [edi],eax
 00669985    add         esp,14
 00669988    pop         edi
 00669989    pop         esi
 0066998A    pop         ebx
 0066998B    ret
*}
end;

//0066998C
function InitAllocator:Boolean;
begin
{*
 0066998C    push        ebp
 0066998D    mov         ebp,esp
 0066998F    xor         edx,edx
 00669991    push        ebp
 00669992    push        669A42
 00669997    push        dword ptr fs:[edx]
 0066999A    mov         dword ptr fs:[edx],esp
 0066999D    push        6ED890;heapLock:TRTLCriticalSection
 006699A2    call        KERNEL32.InitializeCriticalSection
 006699A7    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>006699AE    je          006699BA
 006699B0    push        6ED890;heapLock:TRTLCriticalSection
 006699B5    call        KERNEL32.EnterCriticalSection
 006699BA    mov         eax,6ED8B0;spaceRoot:TBlockDesc
 006699BF    call        MakeEmpty
 006699C4    mov         eax,6ED8C0;decommittedRoot:TBlockDesc
 006699C9    call        MakeEmpty
 006699CE    mov         eax,6ED8EC;committedRoot:TBlockDesc
 006699D3    call        MakeEmpty
 006699D8    push        0FF8
 006699DD    push        0
 006699DF    call        KERNEL32.LocalAlloc
 006699E4    mov         [006ED8E8],eax;smallTab:^TSmallTab
 006699E9    cmp         dword ptr ds:[6ED8E8],0;smallTab:^TSmallTab
>006699F0    je          00669A21
 006699F2    mov         eax,3
 006699F7    mov         edx,dword ptr ds:[6ED8E8];smallTab:^TSmallTab
 006699FD    xor         ecx,ecx
 006699FF    mov         dword ptr [edx+eax*4-0C],ecx
 00669A03    inc         eax
 00669A04    cmp         eax,401
>00669A09    jne         006699F7
 00669A0B    mov         eax,6ED8D0;avail:TFree
 00669A10    mov         dword ptr [eax+4],eax
 00669A13    mov         dword ptr [eax],eax
 00669A15    mov         [006ED8DC],eax;rover:PFree
 00669A1A    mov         byte ptr ds:[6ED888],1;initialized:Boolean
 00669A21    xor         eax,eax
 00669A23    pop         edx
 00669A24    pop         ecx
 00669A25    pop         ecx
 00669A26    mov         dword ptr fs:[eax],edx
 00669A29    push        669A49
 00669A2E    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>00669A35    je          00669A41
 00669A37    push        6ED890;heapLock:TRTLCriticalSection
 00669A3C    call        KERNEL32.LeaveCriticalSection
 00669A41    ret
>00669A42    jmp         @HandleFinally
>00669A47    jmp         00669A2E
 00669A49    mov         al,[006ED888];initialized:Boolean
 00669A4E    pop         ebp
 00669A4F    ret
*}
end;

//00669A50
procedure UninitAllocator;
begin
{*
 00669A50    push        ebp
 00669A51    mov         ebp,esp
 00669A53    push        ebx
 00669A54    cmp         byte ptr ds:[6ED888],0;initialized:Boolean
>00669A5B    je          00669B2D
 00669A61    xor         edx,edx
 00669A63    push        ebp
 00669A64    push        669B26
 00669A69    push        dword ptr fs:[edx]
 00669A6C    mov         dword ptr fs:[edx],esp
 00669A6F    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>00669A76    je          00669A82
 00669A78    push        6ED890;heapLock:TRTLCriticalSection
 00669A7D    call        KERNEL32.EnterCriticalSection
 00669A82    mov         byte ptr ds:[6ED888],0;initialized:Boolean
 00669A89    mov         eax,[006ED8E8];smallTab:^TSmallTab
 00669A8E    push        eax
 00669A8F    call        KERNEL32.LocalFree
 00669A94    xor         eax,eax
 00669A96    mov         [006ED8E8],eax;smallTab:^TSmallTab
 00669A9B    mov         ebx,dword ptr ds:[6ED8B0];spaceRoot:TBlockDesc
>00669AA1    jmp         00669AB5
 00669AA3    push        8000
 00669AA8    push        0
 00669AAA    mov         eax,dword ptr [ebx+8]
 00669AAD    push        eax
 00669AAE    call        KERNEL32.VirtualFree
 00669AB3    mov         ebx,dword ptr [ebx]
 00669AB5    cmp         ebx,6ED8B0;spaceRoot:TBlockDesc
>00669ABB    jne         00669AA3
 00669ABD    mov         eax,6ED8B0;spaceRoot:TBlockDesc
 00669AC2    call        MakeEmpty
 00669AC7    mov         eax,6ED8C0;decommittedRoot:TBlockDesc
 00669ACC    call        MakeEmpty
 00669AD1    mov         eax,6ED8EC;committedRoot:TBlockDesc
 00669AD6    call        MakeEmpty
 00669ADB    mov         eax,[006ED8A8];blockDescBlockList:PBlockDescBlock
 00669AE0    test        eax,eax
>00669AE2    je          00669AFB
 00669AE4    mov         edx,dword ptr [eax]
 00669AE6    mov         dword ptr ds:[6ED8A8],edx;blockDescBlockList:PBlockDescBlock
 00669AEC    push        eax
 00669AED    call        KERNEL32.LocalFree
 00669AF2    mov         eax,[006ED8A8];blockDescBlockList:PBlockDescBlock
 00669AF7    test        eax,eax
>00669AF9    jne         00669AE4
 00669AFB    xor         eax,eax
 00669AFD    pop         edx
 00669AFE    pop         ecx
 00669AFF    pop         ecx
 00669B00    mov         dword ptr fs:[eax],edx
 00669B03    push        669B2D
 00669B08    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>00669B0F    je          00669B1B
 00669B11    push        6ED890;heapLock:TRTLCriticalSection
 00669B16    call        KERNEL32.LeaveCriticalSection
 00669B1B    push        6ED890;heapLock:TRTLCriticalSection
 00669B20    call        KERNEL32.DeleteCriticalSection
 00669B25    ret
>00669B26    jmp         @HandleFinally
>00669B2B    jmp         00669B08
 00669B2D    pop         ebx
 00669B2E    pop         ebp
 00669B2F    ret
*}
end;

//00669B30
procedure DeleteFree(f:PFree);
begin
{*
 00669B30    push        ebx
 00669B31    cmp         eax,dword ptr ds:[6ED8DC];rover:PFree
>00669B37    jne         00669B42
 00669B39    mov         edx,dword ptr [eax+4]
 00669B3C    mov         dword ptr ds:[6ED8DC],edx;rover:PFree
 00669B42    mov         edx,dword ptr [eax+4]
 00669B45    mov         ecx,dword ptr [eax+8]
 00669B48    cmp         ecx,1000
>00669B4E    jg          00669B88
 00669B50    cmp         eax,edx
>00669B52    jne         00669B6B
 00669B54    test        ecx,ecx
>00669B56    jns         00669B5B
 00669B58    add         ecx,3
 00669B5B    sar         ecx,2
 00669B5E    mov         eax,[006ED8E8];smallTab:^TSmallTab
 00669B63    xor         edx,edx
 00669B65    mov         dword ptr [eax+ecx*4-0C],edx
>00669B69    jmp         00669B8F
 00669B6B    test        ecx,ecx
>00669B6D    jns         00669B72
 00669B6F    add         ecx,3
 00669B72    sar         ecx,2
 00669B75    mov         ebx,dword ptr ds:[6ED8E8];smallTab:^TSmallTab
 00669B7B    mov         dword ptr [ebx+ecx*4-0C],edx
 00669B7F    mov         eax,dword ptr [eax]
 00669B81    mov         dword ptr [edx],eax
 00669B83    mov         dword ptr [eax+4],edx
 00669B86    pop         ebx
 00669B87    ret
 00669B88    mov         eax,dword ptr [eax]
 00669B8A    mov         dword ptr [edx],eax
 00669B8C    mov         dword ptr [eax+4],edx
 00669B8F    pop         ebx
 00669B90    ret
*}
end;

//00669B94
function FindCommitted(addr:PAnsiChar):PBlockDesc;
begin
{*
 00669B94    mov         edx,dword ptr ds:[6ED8EC];committedRoot:TBlockDesc
>00669B9A    jmp         00669BAC
 00669B9C    mov         ecx,dword ptr [edx+8]
 00669B9F    cmp         eax,ecx
>00669BA1    jb          00669BAA
 00669BA3    add         ecx,dword ptr [edx+0C]
 00669BA6    cmp         eax,ecx
>00669BA8    jb          00669BC0
 00669BAA    mov         edx,dword ptr [edx]
 00669BAC    cmp         edx,6ED8EC;committedRoot:TBlockDesc
>00669BB2    jne         00669B9C
 00669BB4    mov         dword ptr ds:[6ED88C],3;heapErrorCode:Integer
 00669BBE    xor         edx,edx
 00669BC0    mov         eax,edx
 00669BC2    ret
*}
end;

//00669BC4
procedure FillBeforeGap(a:PAnsiChar; size:Integer);
begin
{*
 00669BC4    push        ebx
 00669BC5    mov         ecx,edx
 00669BC7    sub         ecx,4
 00669BCA    lea         ebx,[ecx+eax]
 00669BCD    cmp         edx,10
>00669BD0    jl          00669BE1
 00669BD2    mov         dword ptr [ebx],80000007
 00669BD8    mov         edx,ecx
 00669BDA    call        InsertFree
 00669BDF    pop         ebx
 00669BE0    ret
 00669BE1    cmp         edx,4
>00669BE4    jl          00669BF2
 00669BE6    mov         ecx,edx
 00669BE8    or          ecx,80000002
 00669BEE    mov         dword ptr [eax],ecx
 00669BF0    mov         dword ptr [ebx],ecx
 00669BF2    pop         ebx
 00669BF3    ret
*}
end;

//00669BF4
procedure InternalFreeMem(a:PAnsiChar);
begin
{*
 00669BF4    inc         dword ptr ds:[6ED87C];AllocMemCount:Integer
 00669BFA    mov         edx,eax
 00669BFC    sub         edx,4
 00669BFF    mov         edx,dword ptr [edx]
 00669C01    and         edx,7FFFFFFC
 00669C07    sub         edx,4
 00669C0A    add         dword ptr ds:[6ED880],edx;AllocMemSize:Integer
 00669C10    call        SysFreeMem
 00669C15    ret
*}
end;

//00669C18
procedure FillAfterGap(a:PAnsiChar; size:Integer);
begin
{*
 00669C18    cmp         edx,0C
>00669C1B    jl          00669C2B
 00669C1D    or          edx,2
 00669C20    mov         dword ptr [eax],edx
 00669C22    add         eax,4
 00669C25    call        InternalFreeMem
 00669C2A    ret
 00669C2B    cmp         edx,4
>00669C2E    jl          00669C3A
 00669C30    mov         ecx,edx
 00669C32    or          ecx,80000002
 00669C38    mov         dword ptr [eax],ecx
 00669C3A    add         eax,edx
 00669C3C    and         dword ptr [eax],0FFFFFFFE
 00669C3F    ret
*}
end;

//00669C40
function FillerSizeBeforeGap(a:PAnsiChar):Integer;
begin
{*
 00669C40    push        ebx
 00669C41    push        esi
 00669C42    mov         edx,eax
 00669C44    sub         edx,4
 00669C47    mov         edx,dword ptr [edx]
 00669C49    mov         ecx,edx
 00669C4B    and         ecx,80000002
 00669C51    cmp         ecx,80000002
>00669C57    je          00669C63
 00669C59    mov         dword ptr ds:[6ED88C],4;heapErrorCode:Integer
 00669C63    mov         ebx,edx
 00669C65    and         ebx,7FFFFFFC
 00669C6B    sub         eax,ebx
 00669C6D    mov         ecx,eax
 00669C6F    xor         edx,dword ptr [ecx]
 00669C71    test        edx,0FFFFFFFE
>00669C77    je          00669C83
 00669C79    mov         dword ptr ds:[6ED88C],5;heapErrorCode:Integer
 00669C83    test        byte ptr [ecx],1
>00669C86    je          00669CA8
 00669C88    mov         edx,eax
 00669C8A    sub         edx,0C
 00669C8D    mov         esi,dword ptr [edx+8]
 00669C90    sub         eax,esi
 00669C92    cmp         esi,dword ptr [eax+8]
>00669C95    je          00669CA1
 00669C97    mov         dword ptr ds:[6ED88C],6;heapErrorCode:Integer
 00669CA1    call        DeleteFree
 00669CA6    add         ebx,esi
 00669CA8    mov         eax,ebx
 00669CAA    pop         esi
 00669CAB    pop         ebx
 00669CAC    ret
*}
end;

//00669CB0
function FillerSizeAfterGap(a:PAnsiChar):Integer;
begin
{*
 00669CB0    push        ebx
 00669CB1    push        esi
 00669CB2    push        edi
 00669CB3    mov         ebx,eax
 00669CB5    xor         edi,edi
 00669CB7    mov         eax,dword ptr [ebx]
 00669CB9    test        eax,80000000
>00669CBE    je          00669CCB
 00669CC0    and         eax,7FFFFFFC
 00669CC5    add         edi,eax
 00669CC7    add         ebx,eax
 00669CC9    mov         eax,dword ptr [ebx]
 00669CCB    test        al,2
>00669CCD    jne         00669CE2
 00669CCF    mov         esi,ebx
 00669CD1    mov         eax,esi
 00669CD3    call        DeleteFree
 00669CD8    mov         eax,dword ptr [esi+8]
 00669CDB    add         edi,eax
 00669CDD    add         ebx,eax
 00669CDF    and         dword ptr [ebx],0FFFFFFFE
 00669CE2    mov         eax,edi
 00669CE4    pop         edi
 00669CE5    pop         esi
 00669CE6    pop         ebx
 00669CE7    ret
*}
end;

//00669CE8
function DecommitFree(a:PAnsiChar; size:Integer):Boolean;
begin
{*
 00669CE8    push        ebx
 00669CE9    push        esi
 00669CEA    push        edi
 00669CEB    push        ebp
 00669CEC    add         esp,0FFFFFFF4
 00669CEF    mov         edi,edx
 00669CF1    mov         esi,eax
 00669CF3    mov         byte ptr [esp],0
 00669CF7    mov         eax,esi
 00669CF9    call        FindCommitted
 00669CFE    mov         ebx,eax
 00669D00    test        ebx,ebx
>00669D02    je          00669D8A
 00669D08    mov         ebp,dword ptr [ebx+8]
 00669D0B    mov         eax,ebp
 00669D0D    add         eax,dword ptr [ebx+0C]
 00669D10    mov         edx,eax
 00669D12    lea         ecx,[edi+esi]
 00669D15    sub         edx,ecx
 00669D17    cmp         edx,0C
>00669D1A    jg          00669D20
 00669D1C    mov         edi,eax
 00669D1E    sub         edi,esi
 00669D20    mov         eax,esi
 00669D22    sub         eax,ebp
 00669D24    cmp         eax,0C
>00669D27    jge         00669D3D
 00669D29    lea         ecx,[esp+1]
 00669D2D    mov         edx,esi
 00669D2F    sub         edx,dword ptr [ebx+8]
 00669D32    add         edx,edi
 00669D34    mov         eax,ebp
 00669D36    call        FreeCommitted
>00669D3B    jmp         00669D4E
 00669D3D    lea         ecx,[esp+1]
 00669D41    mov         edx,edi
 00669D43    sub         edx,4
 00669D46    lea         eax,[esi+4]
 00669D49    call        FreeCommitted
 00669D4E    mov         ebp,dword ptr [esp+1]
 00669D52    test        ebp,ebp
>00669D54    je          00669D8A
 00669D56    mov         edx,ebp
 00669D58    sub         edx,esi
 00669D5A    mov         eax,esi
 00669D5C    call        FillBeforeGap
 00669D61    mov         eax,ebp
 00669D63    add         eax,dword ptr [esp+5]
 00669D67    mov         edx,dword ptr [ebx+8]
 00669D6A    add         edx,dword ptr [ebx+0C]
 00669D6D    cmp         eax,edx
>00669D6F    jae         00669D7B
 00669D71    lea         edx,[edi+esi]
 00669D74    sub         edx,eax
 00669D76    call        FillAfterGap
 00669D7B    lea         edx,[esp+1]
 00669D7F    mov         eax,ebx
 00669D81    call        RemoveBlock
 00669D86    mov         byte ptr [esp],1
 00669D8A    mov         al,byte ptr [esp]
 00669D8D    add         esp,0C
 00669D90    pop         ebp
 00669D91    pop         edi
 00669D92    pop         esi
 00669D93    pop         ebx
 00669D94    ret
*}
end;

//00669D98
procedure InsertFree(a:Pointer; size:Integer);
begin
{*
 00669D98    push        ebx
 00669D99    push        esi
 00669D9A    push        edi
 00669D9B    mov         esi,edx
 00669D9D    mov         edi,eax
 00669D9F    mov         ebx,edi
 00669DA1    mov         dword ptr [ebx+8],esi
 00669DA4    mov         eax,ebx
 00669DA6    add         eax,esi
 00669DA8    sub         eax,0C
 00669DAB    mov         dword ptr [eax+8],esi
 00669DAE    cmp         esi,1000
>00669DB4    jg          00669DED
 00669DB6    mov         edx,esi
 00669DB8    test        edx,edx
>00669DBA    jns         00669DBF
 00669DBC    add         edx,3
 00669DBF    sar         edx,2
 00669DC2    mov         eax,[006ED8E8];smallTab:^TSmallTab
 00669DC7    mov         eax,dword ptr [eax+edx*4-0C]
 00669DCB    test        eax,eax
>00669DCD    jne         00669DDF
 00669DCF    mov         eax,[006ED8E8];smallTab:^TSmallTab
 00669DD4    mov         dword ptr [eax+edx*4-0C],ebx
 00669DD8    mov         dword ptr [ebx+4],ebx
 00669DDB    mov         dword ptr [ebx],ebx
>00669DDD    jmp         00669E19
 00669DDF    mov         edx,dword ptr [eax]
 00669DE1    mov         dword ptr [ebx+4],eax
 00669DE4    mov         dword ptr [ebx],edx
 00669DE6    mov         dword ptr [eax],ebx
 00669DE8    mov         dword ptr [edx+4],ebx
>00669DEB    jmp         00669E19
 00669DED    cmp         esi,3C00
>00669DF3    jl          00669E02
 00669DF5    mov         edx,esi
 00669DF7    mov         eax,edi
 00669DF9    call        DecommitFree
 00669DFE    test        al,al
>00669E00    jne         00669E19
 00669E02    mov         eax,[006ED8DC];rover:PFree
 00669E07    mov         dword ptr ds:[6ED8DC],ebx;rover:PFree
 00669E0D    mov         edx,dword ptr [eax]
 00669E0F    mov         dword ptr [ebx+4],eax
 00669E12    mov         dword ptr [ebx],edx
 00669E14    mov         dword ptr [eax],ebx
 00669E16    mov         dword ptr [edx+4],ebx
 00669E19    pop         edi
 00669E1A    pop         esi
 00669E1B    pop         ebx
 00669E1C    ret
*}
end;

//00669E20
procedure FreeCurAlloc;
begin
{*
 00669E20    cmp         dword ptr ds:[6ED8E0],0;remBytes:Integer
>00669E27    jle         00669E69
 00669E29    cmp         dword ptr ds:[6ED8E0],0C;remBytes:Integer
>00669E30    jge         00669E3E
 00669E32    mov         dword ptr ds:[6ED88C],7;heapErrorCode:Integer
>00669E3C    jmp         00669E69
 00669E3E    mov         eax,[006ED8E0];remBytes:Integer
 00669E43    or          eax,2
 00669E46    mov         edx,dword ptr ds:[6ED8E4];curAlloc:PAnsiChar
 00669E4C    mov         dword ptr [edx],eax
 00669E4E    mov         eax,[006ED8E4];curAlloc:PAnsiChar
 00669E53    add         eax,4
 00669E56    call        InternalFreeMem
 00669E5B    xor         eax,eax
 00669E5D    mov         [006ED8E4],eax;curAlloc:PAnsiChar
 00669E62    xor         eax,eax
 00669E64    mov         [006ED8E0],eax;remBytes:Integer
 00669E69    ret
*}
end;

//00669E6C
function MergeCommit(b:TBlock):Boolean;
begin
{*
 00669E6C    push        ebx
 00669E6D    push        esi
 00669E6E    push        edi
 00669E6F    add         esp,0FFFFFFF0
 00669E72    mov         esi,eax
 00669E74    lea         edi,[esp]
 00669E77    movs        dword ptr [edi],dword ptr [esi]
 00669E78    movs        dword ptr [edi],dword ptr [esi]
 00669E79    mov         edi,esp
 00669E7B    call        FreeCurAlloc
 00669E80    lea         ecx,[esp+8]
 00669E84    mov         edx,edi
 00669E86    mov         eax,6ED8EC;committedRoot:TBlockDesc
 00669E8B    call        MergeBlockAfter
 00669E90    mov         ebx,dword ptr [esp+8]
 00669E94    test        ebx,ebx
>00669E96    jne         00669E9C
 00669E98    xor         eax,eax
>00669E9A    jmp         00669EEE
 00669E9C    mov         eax,dword ptr [edi]
 00669E9E    cmp         ebx,eax
>00669EA0    jae         00669EAC
 00669EA2    call        FillerSizeBeforeGap
 00669EA7    sub         dword ptr [edi],eax
 00669EA9    add         dword ptr [edi+4],eax
 00669EAC    mov         eax,dword ptr [edi]
 00669EAE    add         eax,dword ptr [edi+4]
 00669EB1    mov         esi,ebx
 00669EB3    add         esi,dword ptr [esp+0C]
 00669EB7    cmp         eax,esi
>00669EB9    jae         00669EC3
 00669EBB    call        FillerSizeAfterGap
 00669EC0    add         dword ptr [edi+4],eax
 00669EC3    mov         eax,dword ptr [edi]
 00669EC5    add         eax,dword ptr [edi+4]
 00669EC8    cmp         esi,eax
>00669ECA    jne         00669EDD
 00669ECC    sub         eax,4
 00669ECF    mov         edx,4
 00669ED4    call        FillBeforeGap
 00669ED9    sub         dword ptr [edi+4],4
 00669EDD    mov         eax,dword ptr [edi]
 00669EDF    mov         [006ED8E4],eax;curAlloc:PAnsiChar
 00669EE4    mov         eax,dword ptr [edi+4]
 00669EE7    mov         [006ED8E0],eax;remBytes:Integer
 00669EEC    mov         al,1
 00669EEE    add         esp,10
 00669EF1    pop         edi
 00669EF2    pop         esi
 00669EF3    pop         ebx
 00669EF4    ret
*}
end;

//00669EF8
function NewCommit(minSize:Integer):Boolean;
begin
{*
 00669EF8    push        ebx
 00669EF9    add         esp,0FFFFFFF8
 00669EFC    mov         ebx,eax
 00669EFE    mov         edx,esp
 00669F00    lea         eax,[ebx+4]
 00669F03    call        GetCommitted
 00669F08    cmp         dword ptr [esp],0
>00669F0C    je          00669F19
 00669F0E    mov         eax,esp
 00669F10    call        MergeCommit
 00669F15    test        al,al
>00669F17    jne         00669F1D
 00669F19    xor         eax,eax
>00669F1B    jmp         00669F1F
 00669F1D    mov         al,1
 00669F1F    pop         ecx
 00669F20    pop         edx
 00669F21    pop         ebx
 00669F22    ret
*}
end;

//00669F24
function NewCommitAt(addr:Pointer; minSize:Integer):Boolean;
begin
{*
 00669F24    push        ebx
 00669F25    push        esi
 00669F26    add         esp,0FFFFFFF8
 00669F29    mov         esi,edx
 00669F2B    mov         ebx,eax
 00669F2D    mov         ecx,esp
 00669F2F    lea         edx,[esi+4]
 00669F32    mov         eax,ebx
 00669F34    call        GetCommittedAt
 00669F39    cmp         dword ptr [esp],0
>00669F3D    je          00669F4A
 00669F3F    mov         eax,esp
 00669F41    call        MergeCommit
 00669F46    test        al,al
>00669F48    jne         00669F4E
 00669F4A    xor         eax,eax
>00669F4C    jmp         00669F50
 00669F4E    mov         al,1
 00669F50    pop         ecx
 00669F51    pop         edx
 00669F52    pop         esi
 00669F53    pop         ebx
 00669F54    ret
*}
end;

//00669F58
function SearchSmallBlocks(size:Integer):PFree;
begin
{*
 00669F58    xor         edx,edx
 00669F5A    test        eax,eax
>00669F5C    jns         00669F61
 00669F5E    add         eax,3
 00669F61    sar         eax,2
 00669F64    cmp         eax,400
>00669F69    jg          00669F81
 00669F6B    mov         edx,dword ptr ds:[6ED8E8];smallTab:^TSmallTab
 00669F71    mov         edx,dword ptr [edx+eax*4-0C]
 00669F75    test        edx,edx
>00669F77    jne         00669F81
 00669F79    inc         eax
 00669F7A    cmp         eax,401
>00669F7F    jne         00669F6B
 00669F81    mov         eax,edx
 00669F83    ret
*}
end;

//00669F84
function TryHarder(size:Integer):Pointer;
begin
{*
 00669F84    push        ebx
 00669F85    push        esi
 00669F86    push        edi
 00669F87    push        ebp
 00669F88    mov         esi,eax
 00669F8A    mov         edi,6ED8DC;rover:PFree
 00669F8F    mov         ebp,6ED8E0;remBytes:Integer
 00669F94    mov         ebx,dword ptr ds:[6ED8D4]
 00669F9A    cmp         esi,dword ptr [ebx+8]
>00669F9D    jle         0066A027
 00669FA3    mov         ebx,dword ptr [edi]
 00669FA5    mov         eax,dword ptr [ebx+8]
 00669FA8    cmp         esi,eax
>00669FAA    jle         0066A027
 00669FAC    mov         dword ptr [ebx+8],esi
 00669FAF    mov         ebx,dword ptr [ebx+4]
 00669FB2    cmp         esi,dword ptr [ebx+8]
>00669FB5    jg          00669FAF
 00669FB7    mov         edx,dword ptr [edi]
 00669FB9    mov         dword ptr [edx+8],eax
 00669FBC    cmp         ebx,dword ptr [edi]
>00669FBE    je          00669FC4
 00669FC0    mov         dword ptr [edi],ebx
>00669FC2    jmp         0066A027
 00669FC4    cmp         esi,1000
>00669FCA    jg          00669FD9
 00669FCC    mov         eax,esi
 00669FCE    call        SearchSmallBlocks
 00669FD3    mov         ebx,eax
 00669FD5    test        ebx,ebx
>00669FD7    jne         0066A027
 00669FD9    mov         eax,esi
 00669FDB    call        NewCommit
 00669FE0    test        al,al
>00669FE2    jne         00669FEB
 00669FE4    xor         eax,eax
>00669FE6    jmp         0066A073
 00669FEB    cmp         esi,dword ptr [ebp]
>00669FEE    jg          00669F94
 00669FF0    sub         dword ptr [ebp],esi
 00669FF3    cmp         dword ptr [ebp],0C
>00669FF7    jge         0066A001
 00669FF9    add         esi,dword ptr [ebp]
 00669FFC    xor         eax,eax
 00669FFE    mov         dword ptr [ebp],eax
 0066A001    mov         eax,[006ED8E4];curAlloc:PAnsiChar
 0066A006    add         dword ptr ds:[6ED8E4],esi;curAlloc:PAnsiChar
 0066A00C    mov         edx,esi
 0066A00E    or          edx,2
 0066A011    mov         dword ptr [eax],edx
 0066A013    add         eax,4
 0066A016    inc         dword ptr ds:[6ED87C];AllocMemCount:Integer
 0066A01C    sub         esi,4
 0066A01F    add         dword ptr ds:[6ED880],esi;AllocMemSize:Integer
>0066A025    jmp         0066A073
 0066A027    mov         eax,ebx
 0066A029    call        DeleteFree
 0066A02E    mov         edx,dword ptr [ebx+8]
 0066A031    mov         eax,edx
 0066A033    sub         eax,esi
 0066A035    cmp         eax,0C
>0066A038    jl          0066A046
 0066A03A    mov         edx,ebx
 0066A03C    add         edx,esi
 0066A03E    xchg        eax,edx
 0066A03F    call        InsertFree
>0066A044    jmp         0066A058
 0066A046    mov         esi,edx
 0066A048    cmp         ebx,dword ptr [edi]
>0066A04A    jne         0066A051
 0066A04C    mov         eax,dword ptr [ebx+4]
 0066A04F    mov         dword ptr [edi],eax
 0066A051    mov         eax,ebx
 0066A053    add         eax,esi
 0066A055    and         dword ptr [eax],0FFFFFFFE
 0066A058    mov         eax,ebx
 0066A05A    mov         edx,esi
 0066A05C    or          edx,2
 0066A05F    mov         dword ptr [eax],edx
 0066A061    add         eax,4
 0066A064    inc         dword ptr ds:[6ED87C];AllocMemCount:Integer
 0066A06A    sub         esi,4
 0066A06D    add         dword ptr ds:[6ED880],esi;AllocMemSize:Integer
 0066A073    pop         ebp
 0066A074    pop         edi
 0066A075    pop         esi
 0066A076    pop         ebx
 0066A077    ret
*}
end;

//0066A078
function SysGetMem(Size:Integer):Pointer;
begin
{*
 0066A078    push        ebp
 0066A079    mov         ebp,esp
 0066A07B    add         esp,0FFFFFFF8
 0066A07E    push        ebx
 0066A07F    push        esi
 0066A080    push        edi
 0066A081    mov         ebx,eax
 0066A083    cmp         byte ptr ds:[6ED888],0;initialized:Boolean
>0066A08A    jne         0066A095
 0066A08C    call        InitAllocator
 0066A091    test        al,al
>0066A093    je          0066A09D
 0066A095    cmp         ebx,7FFFFFF8
>0066A09B    jle         0066A0A7
 0066A09D    xor         eax,eax
 0066A09F    mov         dword ptr [ebp-4],eax
>0066A0A2    jmp         0066A1FB
 0066A0A7    xor         ecx,ecx
 0066A0A9    push        ebp
 0066A0AA    push        66A1F4
 0066A0AF    push        dword ptr fs:[ecx]
 0066A0B2    mov         dword ptr fs:[ecx],esp
 0066A0B5    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>0066A0BC    je          0066A0C8
 0066A0BE    push        6ED890;heapLock:TRTLCriticalSection
 0066A0C3    call        KERNEL32.EnterCriticalSection
 0066A0C8    add         ebx,7
 0066A0CB    and         ebx,0FFFFFFFC
 0066A0CE    cmp         ebx,0C
>0066A0D1    jge         0066A0D8
 0066A0D3    mov         ebx,0C
 0066A0D8    cmp         ebx,1000
>0066A0DE    jg          0066A177
 0066A0E4    mov         eax,ebx
 0066A0E6    test        eax,eax
>0066A0E8    jns         0066A0ED
 0066A0EA    add         eax,3
 0066A0ED    sar         eax,2
 0066A0F0    mov         edx,dword ptr ds:[6ED8E8];smallTab:^TSmallTab
 0066A0F6    mov         edx,dword ptr [edx+eax*4-0C]
 0066A0FA    test        edx,edx
>0066A0FC    je          0066A177
 0066A0FE    mov         esi,edx
 0066A100    mov         eax,esi
 0066A102    add         eax,ebx
 0066A104    and         dword ptr [eax],0FFFFFFFE
 0066A107    mov         eax,dword ptr [edx+4]
 0066A10A    cmp         edx,eax
>0066A10C    jne         0066A128
 0066A10E    mov         eax,ebx
 0066A110    test        eax,eax
>0066A112    jns         0066A117
 0066A114    add         eax,3
 0066A117    sar         eax,2
 0066A11A    mov         ecx,dword ptr ds:[6ED8E8];smallTab:^TSmallTab
 0066A120    xor         edi,edi
 0066A122    mov         dword ptr [ecx+eax*4-0C],edi
>0066A126    jmp         0066A14E
 0066A128    mov         ecx,ebx
 0066A12A    test        ecx,ecx
>0066A12C    jns         0066A131
 0066A12E    add         ecx,3
 0066A131    sar         ecx,2
 0066A134    mov         edi,dword ptr ds:[6ED8E8];smallTab:^TSmallTab
 0066A13A    mov         dword ptr [edi+ecx*4-0C],eax
 0066A13E    mov         ecx,dword ptr [edx]
 0066A140    mov         dword ptr [ebp-8],ecx
 0066A143    mov         ecx,dword ptr [ebp-8]
 0066A146    mov         dword ptr [ecx+4],eax
 0066A149    mov         ecx,dword ptr [ebp-8]
 0066A14C    mov         dword ptr [eax],ecx
 0066A14E    mov         eax,esi
 0066A150    mov         edx,dword ptr [edx+8]
 0066A153    or          edx,2
 0066A156    mov         dword ptr [eax],edx
 0066A158    add         eax,4
 0066A15B    mov         dword ptr [ebp-4],eax
 0066A15E    inc         dword ptr ds:[6ED87C];AllocMemCount:Integer
 0066A164    sub         ebx,4
 0066A167    add         dword ptr ds:[6ED880],ebx;AllocMemSize:Integer
 0066A16D    call        @TryFinallyExit
>0066A172    jmp         0066A1FB
 0066A177    cmp         ebx,dword ptr ds:[6ED8E0];remBytes:Integer
>0066A17D    jg          0066A1C9
 0066A17F    sub         dword ptr ds:[6ED8E0],ebx;remBytes:Integer
 0066A185    cmp         dword ptr ds:[6ED8E0],0C;remBytes:Integer
>0066A18C    jge         0066A19B
 0066A18E    add         ebx,dword ptr ds:[6ED8E0];remBytes:Integer
 0066A194    xor         eax,eax
 0066A196    mov         [006ED8E0],eax;remBytes:Integer
 0066A19B    mov         eax,[006ED8E4];curAlloc:PAnsiChar
 0066A1A0    add         dword ptr ds:[6ED8E4],ebx;curAlloc:PAnsiChar
 0066A1A6    mov         edx,ebx
 0066A1A8    or          edx,2
 0066A1AB    mov         dword ptr [eax],edx
 0066A1AD    add         eax,4
 0066A1B0    mov         dword ptr [ebp-4],eax
 0066A1B3    inc         dword ptr ds:[6ED87C];AllocMemCount:Integer
 0066A1B9    sub         ebx,4
 0066A1BC    add         dword ptr ds:[6ED880],ebx;AllocMemSize:Integer
 0066A1C2    call        @TryFinallyExit
>0066A1C7    jmp         0066A1FB
 0066A1C9    mov         eax,ebx
 0066A1CB    call        TryHarder
 0066A1D0    mov         dword ptr [ebp-4],eax
 0066A1D3    xor         eax,eax
 0066A1D5    pop         edx
 0066A1D6    pop         ecx
 0066A1D7    pop         ecx
 0066A1D8    mov         dword ptr fs:[eax],edx
 0066A1DB    push        66A1FB
 0066A1E0    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>0066A1E7    je          0066A1F3
 0066A1E9    push        6ED890;heapLock:TRTLCriticalSection
 0066A1EE    call        KERNEL32.LeaveCriticalSection
 0066A1F3    ret
>0066A1F4    jmp         @HandleFinally
>0066A1F9    jmp         0066A1E0
 0066A1FB    mov         eax,dword ptr [ebp-4]
 0066A1FE    pop         edi
 0066A1FF    pop         esi
 0066A200    pop         ebx
 0066A201    pop         ecx
 0066A202    pop         ecx
 0066A203    pop         ebp
 0066A204    ret
*}
end;

//0066A208
function SysFreeMem(P:Pointer):Integer;
begin
{*
 0066A208    push        ebp
 0066A209    mov         ebp,esp
 0066A20B    push        ecx
 0066A20C    push        ebx
 0066A20D    push        esi
 0066A20E    push        edi
 0066A20F    mov         ebx,eax
 0066A211    xor         eax,eax
 0066A213    mov         [006ED88C],eax;heapErrorCode:Integer
 0066A218    cmp         byte ptr ds:[6ED888],0;initialized:Boolean
>0066A21F    jne         0066A240
 0066A221    call        InitAllocator
 0066A226    test        al,al
>0066A228    jne         0066A240
 0066A22A    mov         dword ptr ds:[6ED88C],8;heapErrorCode:Integer
 0066A234    mov         dword ptr [ebp-4],8
>0066A23B    jmp         0066A3A1
 0066A240    xor         ecx,ecx
 0066A242    push        ebp
 0066A243    push        66A39A
 0066A248    push        dword ptr fs:[ecx]
 0066A24B    mov         dword ptr fs:[ecx],esp
 0066A24E    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>0066A255    je          0066A261
 0066A257    push        6ED890;heapLock:TRTLCriticalSection
 0066A25C    call        KERNEL32.EnterCriticalSection
 0066A261    mov         esi,ebx
 0066A263    sub         esi,4
 0066A266    mov         ebx,dword ptr [esi]
 0066A268    test        bl,2
>0066A26B    jne         0066A27C
 0066A26D    mov         dword ptr ds:[6ED88C],9;heapErrorCode:Integer
>0066A277    jmp         0066A371
 0066A27C    dec         dword ptr ds:[6ED87C];AllocMemCount:Integer
 0066A282    mov         eax,ebx
 0066A284    and         eax,7FFFFFFC
 0066A289    sub         eax,4
 0066A28C    sub         dword ptr ds:[6ED880],eax;AllocMemSize:Integer
 0066A292    test        bl,1
>0066A295    je          0066A2DC
 0066A297    mov         eax,esi
 0066A299    sub         eax,0C
 0066A29C    mov         edx,dword ptr [eax+8]
 0066A29F    cmp         edx,0C
>0066A2A2    jl          0066A2AC
 0066A2A4    test        edx,80000003
>0066A2AA    je          0066A2BB
 0066A2AC    mov         dword ptr ds:[6ED88C],0A;heapErrorCode:Integer
>0066A2B6    jmp         0066A371
 0066A2BB    mov         eax,esi
 0066A2BD    sub         eax,edx
 0066A2BF    cmp         edx,dword ptr [eax+8]
>0066A2C2    je          0066A2D3
 0066A2C4    mov         dword ptr ds:[6ED88C],0A;heapErrorCode:Integer
>0066A2CE    jmp         0066A371
 0066A2D3    add         ebx,edx
 0066A2D5    mov         esi,eax
 0066A2D7    call        DeleteFree
 0066A2DC    and         ebx,7FFFFFFC
 0066A2E2    mov         eax,esi
 0066A2E4    add         eax,ebx
 0066A2E6    mov         edi,eax
 0066A2E8    cmp         edi,dword ptr ds:[6ED8E4];curAlloc:PAnsiChar
>0066A2EE    jne         0066A31C
 0066A2F0    sub         dword ptr ds:[6ED8E4],ebx;curAlloc:PAnsiChar
 0066A2F6    add         dword ptr ds:[6ED8E0],ebx;remBytes:Integer
 0066A2FC    cmp         dword ptr ds:[6ED8E0],3C00;remBytes:Integer
>0066A306    jle         0066A30D
 0066A308    call        FreeCurAlloc
 0066A30D    xor         eax,eax
 0066A30F    mov         dword ptr [ebp-4],eax
 0066A312    call        @TryFinallyExit
>0066A317    jmp         0066A3A1
 0066A31C    mov         edx,dword ptr [eax]
 0066A31E    test        dl,2
>0066A321    je          0066A33F
 0066A323    and         edx,7FFFFFFC
 0066A329    cmp         edx,4
>0066A32C    jge         0066A33A
 0066A32E    mov         dword ptr ds:[6ED88C],0B;heapErrorCode:Integer
>0066A338    jmp         0066A371
 0066A33A    or          dword ptr [eax],1
>0066A33D    jmp         0066A368
 0066A33F    mov         eax,edi
 0066A341    cmp         dword ptr [eax+4],0
>0066A345    je          0066A352
 0066A347    cmp         dword ptr [eax],0
>0066A34A    je          0066A352
 0066A34C    cmp         dword ptr [eax+8],0C
>0066A350    jge         0066A35E
 0066A352    mov         dword ptr ds:[6ED88C],0B;heapErrorCode:Integer
>0066A35C    jmp         0066A371
 0066A35E    mov         edx,dword ptr [eax+8]
 0066A361    add         ebx,edx
 0066A363    call        DeleteFree
 0066A368    mov         edx,ebx
 0066A36A    mov         eax,esi
 0066A36C    call        InsertFree
 0066A371    mov         eax,[006ED88C];heapErrorCode:Integer
 0066A376    mov         dword ptr [ebp-4],eax
 0066A379    xor         eax,eax
 0066A37B    pop         edx
 0066A37C    pop         ecx
 0066A37D    pop         ecx
 0066A37E    mov         dword ptr fs:[eax],edx
 0066A381    push        66A3A1
 0066A386    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>0066A38D    je          0066A399
 0066A38F    push        6ED890;heapLock:TRTLCriticalSection
 0066A394    call        KERNEL32.LeaveCriticalSection
 0066A399    ret
>0066A39A    jmp         @HandleFinally
>0066A39F    jmp         0066A386
 0066A3A1    mov         eax,dword ptr [ebp-4]
 0066A3A4    pop         edi
 0066A3A5    pop         esi
 0066A3A6    pop         ebx
 0066A3A7    pop         ecx
 0066A3A8    pop         ebp
 0066A3A9    ret
*}
end;

//0066A3AC
function ResizeInPlace(p:Pointer; newSize:Integer):Boolean;
begin
{*
 0066A3AC    push        ebx
 0066A3AD    push        esi
 0066A3AE    push        edi
 0066A3AF    push        ebp
 0066A3B0    add         esp,0FFFFFFF8
 0066A3B3    mov         esi,edx
 0066A3B5    add         esi,7
 0066A3B8    and         esi,0FFFFFFFC
 0066A3BB    cmp         esi,0C
>0066A3BE    jge         0066A3C5
 0066A3C0    mov         esi,0C
 0066A3C5    mov         ebp,eax
 0066A3C7    sub         ebp,4
 0066A3CA    mov         edi,dword ptr [ebp]
 0066A3CD    and         edi,7FFFFFFC
 0066A3D3    mov         eax,ebp
 0066A3D5    add         eax,edi
 0066A3D7    mov         ebx,eax
 0066A3D9    cmp         edi,esi
>0066A3DB    jl          0066A464
 0066A3E1    mov         edx,edi
 0066A3E3    sub         edx,esi
 0066A3E5    mov         dword ptr [esp],edx
 0066A3E8    cmp         ebx,dword ptr ds:[6ED8E4];curAlloc:PAnsiChar
>0066A3EE    jne         0066A428
 0066A3F0    mov         eax,dword ptr [esp]
 0066A3F3    sub         dword ptr ds:[6ED8E4],eax;curAlloc:PAnsiChar
 0066A3F9    mov         eax,dword ptr [esp]
 0066A3FC    add         dword ptr ds:[6ED8E0],eax;remBytes:Integer
 0066A402    cmp         dword ptr ds:[6ED8E0],0C;remBytes:Integer
>0066A409    jge         0066A55B
 0066A40F    mov         eax,dword ptr [esp]
 0066A412    add         dword ptr ds:[6ED8E4],eax;curAlloc:PAnsiChar
 0066A418    mov         eax,dword ptr [esp]
 0066A41B    sub         dword ptr ds:[6ED8E0],eax;remBytes:Integer
 0066A421    mov         esi,edi
>0066A423    jmp         0066A55B
 0066A428    mov         ebx,eax
 0066A42A    test        byte ptr [ebx],2
>0066A42D    jne         0066A43C
 0066A42F    mov         eax,ebx
 0066A431    mov         edx,dword ptr [eax+8]
 0066A434    add         dword ptr [esp],edx
 0066A437    call        DeleteFree
 0066A43C    cmp         dword ptr [esp],0C
>0066A440    jl          0066A45D
 0066A442    mov         ebx,ebp
 0066A444    add         ebx,esi
 0066A446    mov         eax,dword ptr [esp]
 0066A449    or          eax,2
 0066A44C    mov         dword ptr [ebx],eax
 0066A44E    mov         eax,ebx
 0066A450    add         eax,4
 0066A453    call        InternalFreeMem
>0066A458    jmp         0066A55B
 0066A45D    mov         esi,edi
>0066A45F    jmp         0066A55B
 0066A464    mov         eax,esi
 0066A466    sub         eax,edi
 0066A468    mov         dword ptr [esp+4],eax
 0066A46C    cmp         ebx,dword ptr ds:[6ED8E4];curAlloc:PAnsiChar
>0066A472    jne         0066A4DB
 0066A474    mov         eax,[006ED8E0];remBytes:Integer
 0066A479    cmp         eax,dword ptr [esp+4]
>0066A47D    jl          0066A4D2
 0066A47F    mov         eax,dword ptr [esp+4]
 0066A483    sub         dword ptr ds:[6ED8E0],eax;remBytes:Integer
 0066A489    mov         eax,dword ptr [esp+4]
 0066A48D    add         dword ptr ds:[6ED8E4],eax;curAlloc:PAnsiChar
 0066A493    cmp         dword ptr ds:[6ED8E0],0C;remBytes:Integer
>0066A49A    jge         0066A4B4
 0066A49C    mov         eax,[006ED8E0];remBytes:Integer
 0066A4A1    add         dword ptr ds:[6ED8E4],eax;curAlloc:PAnsiChar
 0066A4A7    add         esi,dword ptr ds:[6ED8E0];remBytes:Integer
 0066A4AD    xor         eax,eax
 0066A4AF    mov         [006ED8E0],eax;remBytes:Integer
 0066A4B4    mov         eax,esi
 0066A4B6    sub         eax,edi
 0066A4B8    add         dword ptr ds:[6ED880],eax;AllocMemSize:Integer
 0066A4BE    mov         eax,dword ptr [ebp]
 0066A4C1    and         eax,80000003
 0066A4C6    or          esi,eax
 0066A4C8    mov         dword ptr [ebp],esi
 0066A4CB    mov         al,1
>0066A4CD    jmp         0066A574
 0066A4D2    call        FreeCurAlloc
 0066A4D7    mov         ebx,ebp
 0066A4D9    add         ebx,edi
 0066A4DB    test        byte ptr [ebx],2
>0066A4DE    jne         0066A52D
 0066A4E0    mov         edx,ebx
 0066A4E2    mov         eax,edx
 0066A4E4    mov         ecx,dword ptr [eax+8]
 0066A4E7    mov         dword ptr [esp],ecx
 0066A4EA    mov         ecx,dword ptr [esp]
 0066A4ED    cmp         ecx,dword ptr [esp+4]
>0066A4F1    jge         0066A501
 0066A4F3    add         edx,dword ptr [esp]
 0066A4F6    mov         ebx,edx
 0066A4F8    mov         eax,dword ptr [esp]
 0066A4FB    sub         dword ptr [esp+4],eax
>0066A4FF    jmp         0066A52D
 0066A501    call        DeleteFree
 0066A506    mov         eax,dword ptr [esp+4]
 0066A50A    sub         dword ptr [esp],eax
 0066A50D    cmp         dword ptr [esp],0C
>0066A511    jl          0066A521
 0066A513    mov         eax,ebp
 0066A515    add         eax,esi
 0066A517    mov         edx,dword ptr [esp]
 0066A51A    call        InsertFree
>0066A51F    jmp         0066A55B
 0066A521    add         esi,dword ptr [esp]
 0066A524    mov         ebx,ebp
 0066A526    add         ebx,esi
 0066A528    and         dword ptr [ebx],0FFFFFFFE
>0066A52B    jmp         0066A55B
 0066A52D    mov         eax,dword ptr [ebx]
 0066A52F    test        eax,80000000
>0066A534    je          0066A557
 0066A536    and         eax,7FFFFFFC
 0066A53B    add         eax,ebx
 0066A53D    mov         ebx,eax
 0066A53F    mov         edx,dword ptr [esp+4]
 0066A543    mov         eax,ebx
 0066A545    call        NewCommitAt
 0066A54A    test        al,al
>0066A54C    je          0066A557
 0066A54E    mov         ebx,ebp
 0066A550    add         ebx,edi
>0066A552    jmp         0066A464
 0066A557    xor         eax,eax
>0066A559    jmp         0066A574
 0066A55B    mov         eax,esi
 0066A55D    sub         eax,edi
 0066A55F    add         dword ptr ds:[6ED880],eax;AllocMemSize:Integer
 0066A565    mov         eax,dword ptr [ebp]
 0066A568    and         eax,80000003
 0066A56D    or          esi,eax
 0066A56F    mov         dword ptr [ebp],esi
 0066A572    mov         al,1
 0066A574    pop         ecx
 0066A575    pop         edx
 0066A576    pop         ebp
 0066A577    pop         edi
 0066A578    pop         esi
 0066A579    pop         ebx
 0066A57A    ret
*}
end;

//0066A57C
function SysReallocMem(P:Pointer; Size:Integer):Pointer;
begin
{*
 0066A57C    push        ebp
 0066A57D    mov         ebp,esp
 0066A57F    push        ecx
 0066A580    push        ebx
 0066A581    push        esi
 0066A582    push        edi
 0066A583    mov         esi,edx
 0066A585    mov         ebx,eax
 0066A587    cmp         byte ptr ds:[6ED888],0;initialized:Boolean
>0066A58E    jne         0066A5A3
 0066A590    call        InitAllocator
 0066A595    test        al,al
>0066A597    jne         0066A5A3
 0066A599    xor         eax,eax
 0066A59B    mov         dword ptr [ebp-4],eax
>0066A59E    jmp         0066A634
 0066A5A3    xor         edx,edx
 0066A5A5    push        ebp
 0066A5A6    push        66A62D
 0066A5AB    push        dword ptr fs:[edx]
 0066A5AE    mov         dword ptr fs:[edx],esp
 0066A5B1    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>0066A5B8    je          0066A5C4
 0066A5BA    push        6ED890;heapLock:TRTLCriticalSection
 0066A5BF    call        KERNEL32.EnterCriticalSection
 0066A5C4    mov         edx,esi
 0066A5C6    mov         eax,ebx
 0066A5C8    call        ResizeInPlace
 0066A5CD    test        al,al
>0066A5CF    je          0066A5D6
 0066A5D1    mov         dword ptr [ebp-4],ebx
>0066A5D4    jmp         0066A60C
 0066A5D6    mov         eax,esi
 0066A5D8    call        SysGetMem
 0066A5DD    mov         edi,eax
 0066A5DF    mov         eax,ebx
 0066A5E1    sub         eax,4
 0066A5E4    mov         eax,dword ptr [eax]
 0066A5E6    and         eax,7FFFFFFC
 0066A5EB    sub         eax,4
 0066A5EE    cmp         esi,eax
>0066A5F0    jge         0066A5F4
 0066A5F2    mov         eax,esi
 0066A5F4    test        edi,edi
>0066A5F6    je          0066A609
 0066A5F8    mov         edx,edi
 0066A5FA    mov         ecx,ebx
 0066A5FC    xchg        eax,ecx
 0066A5FD    call        Move
 0066A602    mov         eax,ebx
 0066A604    call        SysFreeMem
 0066A609    mov         dword ptr [ebp-4],edi
 0066A60C    xor         eax,eax
 0066A60E    pop         edx
 0066A60F    pop         ecx
 0066A610    pop         ecx
 0066A611    mov         dword ptr fs:[eax],edx
 0066A614    push        66A634
 0066A619    cmp         byte ptr ds:[6ED311],0;IsMultiThread:Boolean
>0066A620    je          0066A62C
 0066A622    push        6ED890;heapLock:TRTLCriticalSection
 0066A627    call        KERNEL32.LeaveCriticalSection
 0066A62C    ret
>0066A62D    jmp         @HandleFinally
>0066A632    jmp         0066A619
 0066A634    mov         eax,dword ptr [ebp-4]
 0066A637    pop         edi
 0066A638    pop         esi
 0066A639    pop         ebx
 0066A63A    pop         ecx
 0066A63B    pop         ebp
 0066A63C    ret
*}
end;

//0066A640
function @GetMem(size:Integer):Pointer;
begin
{*
 0066A640    push        ebx
 0066A641    test        eax,eax
>0066A643    jle         0066A65A
 0066A645    call        dword ptr ds:[6E4EA0]
 0066A64B    mov         ebx,eax
 0066A64D    test        ebx,ebx
>0066A64F    jne         0066A65C
 0066A651    mov         al,1
 0066A653    call        Error
>0066A658    jmp         0066A65C
 0066A65A    xor         ebx,ebx
 0066A65C    mov         eax,ebx
 0066A65E    pop         ebx
 0066A65F    ret
*}
end;

//0066A660
function @FreeMem(p:Pointer):Integer;
begin
{*
 0066A660    push        ebx
 0066A661    test        eax,eax
>0066A663    je          0066A67A
 0066A665    call        dword ptr ds:[6E4EA4]
 0066A66B    mov         ebx,eax
 0066A66D    test        ebx,ebx
>0066A66F    je          0066A67C
 0066A671    mov         al,2
 0066A673    call        Error
>0066A678    jmp         0066A67C
 0066A67A    xor         ebx,ebx
 0066A67C    mov         eax,ebx
 0066A67E    pop         ebx
 0066A67F    ret
*}
end;

//0066A680
function @ReallocMem(var P:Pointer; NewSize:Integer):Pointer;
begin
{*
 0066A680    mov         ecx,dword ptr [eax]
 0066A682    test        ecx,ecx
>0066A684    je          0066A6B8
 0066A686    test        edx,edx
>0066A688    je          0066A6A2
 0066A68A    push        eax
 0066A68B    mov         eax,ecx
 0066A68D    call        dword ptr ds:[6E4EA8]
 0066A693    pop         ecx
 0066A694    or          eax,eax
>0066A696    je          0066A6B1
 0066A698    mov         dword ptr [ecx],eax
 0066A69A    ret
 0066A69B    mov         al,2
>0066A69D    jmp         Error
 0066A6A2    mov         dword ptr [eax],edx
 0066A6A4    mov         eax,ecx
 0066A6A6    call        dword ptr ds:[6E4EA4]
 0066A6AC    or          eax,eax
>0066A6AE    jne         0066A69B
 0066A6B0    ret
 0066A6B1    mov         al,1
>0066A6B3    jmp         Error
 0066A6B8    test        edx,edx
>0066A6BA    je          0066A6CC
 0066A6BC    push        eax
 0066A6BD    mov         eax,edx
 0066A6BF    call        dword ptr ds:[6E4EA0]
 0066A6C5    pop         ecx
 0066A6C6    or          eax,eax
>0066A6C8    je          0066A6B1
 0066A6CA    mov         dword ptr [ecx],eax
 0066A6CC    ret
*}
end;

//0066A6D0
procedure GetMemoryManager(var MemMgr:TMemoryManager);
begin
{*
 0066A6D0    mov         edx,dword ptr ds:[6E4EA0];^SysGetMem:Pointer
 0066A6D6    mov         dword ptr [eax],edx
 0066A6D8    mov         edx,dword ptr ds:[6E4EA4];^SysFreeMem:Integer
 0066A6DE    mov         dword ptr [eax+4],edx
 0066A6E1    mov         edx,dword ptr ds:[6E4EA8];^SysReallocMem:Pointer
 0066A6E7    mov         dword ptr [eax+8],edx
 0066A6EA    ret
*}
end;

//0066A6EC
procedure SetMemoryManager(const MemMgr:TMemoryManager);
begin
{*
 0066A6EC    mov         edx,dword ptr [eax]
 0066A6EE    mov         dword ptr ds:[6E4EA0],edx;^SysGetMem:Pointer
 0066A6F4    mov         edx,dword ptr [eax+4]
 0066A6F7    mov         dword ptr ds:[6E4EA4],edx;^SysFreeMem:Integer
 0066A6FD    mov         edx,dword ptr [eax+8]
 0066A700    mov         dword ptr ds:[6E4EA8],edx;^SysReallocMem:Pointer
 0066A706    ret
*}
end;

//0066A708
function IsMemoryManagerSet:Boolean;
begin
{*
 0066A708    mov         eax,66A078;SysGetMem:Pointer
 0066A70D    cmp         eax,dword ptr ds:[6E4EA0];^SysGetMem:Pointer
>0066A713    jne         0066A732
 0066A715    mov         eax,66A208;SysFreeMem:Integer
 0066A71A    cmp         eax,dword ptr ds:[6E4EA4];^SysFreeMem:Integer
>0066A720    jne         0066A732
 0066A722    mov         eax,66A57C;SysReallocMem:Pointer
 0066A727    cmp         eax,dword ptr ds:[6E4EA8];^SysReallocMem:Pointer
>0066A72D    jne         0066A732
 0066A72F    xor         eax,eax
 0066A731    ret
 0066A732    mov         al,1
 0066A734    ret
*}
end;

//0066A738
function ExceptObject:TObject;
begin
{*
 0066A738    call        @GetTls
 0066A73D    cmp         dword ptr [eax+8],0;{RaiseListPtr:Pointer}
>0066A744    je          0066A755
 0066A746    call        @GetTls
 0066A74B    mov         eax,dword ptr [eax+8];{RaiseListPtr:Pointer}
 0066A751    mov         eax,dword ptr [eax+8]
 0066A754    ret
 0066A755    xor         eax,eax
 0066A757    ret
*}
end;

//0066A758
function ExceptAddr:Pointer;
begin
{*
 0066A758    call        @GetTls
 0066A75D    cmp         dword ptr [eax+8],0;{RaiseListPtr:Pointer}
>0066A764    je          0066A775
 0066A766    call        @GetTls
 0066A76B    mov         eax,dword ptr [eax+8];{RaiseListPtr:Pointer}
 0066A771    mov         eax,dword ptr [eax+4]
 0066A774    ret
 0066A775    xor         eax,eax
 0066A777    ret
*}
end;

//0066A778
function AcquireExceptionObject:Pointer;
begin
{*
 0066A778    push        ebx
 0066A779    push        esi
 0066A77A    call        @GetTls
 0066A77F    cmp         dword ptr [eax+8],0;{RaiseListPtr:Pointer}
>0066A786    je          0066A7A2
 0066A788    call        @GetTls
 0066A78D    mov         esi,dword ptr [eax+8];{RaiseListPtr:Pointer}
 0066A793    mov         ebx,dword ptr [esi+8]
 0066A796    call        @GetTls
 0066A79B    xor         eax,eax
 0066A79D    mov         dword ptr [esi+8],eax
>0066A7A0    jmp         0066A7A4
 0066A7A2    xor         ebx,ebx
 0066A7A4    mov         eax,ebx
 0066A7A6    pop         esi
 0066A7A7    pop         ebx
 0066A7A8    ret
*}
end;

//0066A7AC
procedure RunErrorAt(ErrCode:Integer; ErrorAtAddr:Pointer);
begin
{*
 0066A7AC    mov         dword ptr ds:[6E4E74],edx
 0066A7B2    call        @Halt
 0066A7B7    ret
*}
end;

//0066A7B8
procedure ErrorAt(ErrorCode:Byte; ErrorAddr:Pointer);
begin
{*
 0066A7B8    push        ebx
 0066A7B9    push        esi
 0066A7BA    mov         esi,edx
 0066A7BC    mov         ebx,eax
 0066A7BE    and         bl,7F
 0066A7C1    cmp         dword ptr ds:[6ED2C8],0;ErrorProc:procedure(val ErrorCode:Byte;val ErrorAddr:Pointer)
>0066A7C8    je          0066A7D4
 0066A7CA    mov         edx,esi
 0066A7CC    mov         eax,ebx
 0066A7CE    call        dword ptr ds:[6ED2C8]
 0066A7D4    test        bl,bl
>0066A7D6    jne         0066A7E5
 0066A7D8    call        @GetTls
 0066A7DD    mov         ebx,dword ptr [eax+0C];{InOutRes:Integer}
>0066A7E3    jmp         0066A7F4
 0066A7E5    cmp         bl,18
>0066A7E8    ja          0066A7F4
 0066A7EA    xor         eax,eax
 0066A7EC    mov         al,bl
 0066A7EE    mov         bl,byte ptr [eax+6E4EAC]
 0066A7F4    xor         eax,eax
 0066A7F6    mov         al,bl
 0066A7F8    mov         edx,esi
 0066A7FA    call        RunErrorAt
 0066A7FF    pop         esi
 0066A800    pop         ebx
 0066A801    ret
*}
end;

//0066A804
procedure Error(errorCode:TRuntimeError);
begin
{*
 0066A804    and         eax,7F
 0066A807    mov         edx,dword ptr [esp]
>0066A80A    jmp         ErrorAt
 0066A80F    ret
*}
end;

//0066A810
procedure @_IOTest;
begin
{*
 0066A810    push        eax
 0066A811    push        edx
 0066A812    push        ecx
 0066A813    call        @GetTls
 0066A818    cmp         dword ptr [eax+0C],0;{InOutRes:Integer}
 0066A81F    pop         ecx
 0066A820    pop         edx
 0066A821    pop         eax
>0066A822    jne         0066A825
 0066A824    ret
 0066A825    xor         eax,eax
>0066A827    jmp         Error
 0066A82C    ret
*}
end;

//0066A830
procedure SetInOutRes(NewValue:Integer);
begin
{*
 0066A830    push        ebx
 0066A831    mov         ebx,eax
 0066A833    call        @GetTls
 0066A838    mov         dword ptr [eax+0C],ebx;{InOutRes:Integer}
 0066A83E    pop         ebx
 0066A83F    ret
*}
end;

//0066A840
procedure InOutError;
begin
{*
 0066A840    call        KERNEL32.GetLastError
 0066A845    call        SetInOutRes
 0066A84A    ret
*}
end;

//0066A84C
procedure ChDir(const S:AnsiString);
begin
{*
 0066A84C    push        ebx
 0066A84D    mov         ebx,eax
 0066A84F    mov         eax,ebx
 0066A851    call        @LStrToPChar
 0066A856    call        ChDir
 0066A85B    pop         ebx
 0066A85C    ret
*}
end;

//0066A860
procedure ChDir(P:PAnsiChar);
begin
{*
 0066A860    push        ebx
 0066A861    mov         ebx,eax
 0066A863    push        ebx
 0066A864    call        KERNEL32.SetCurrentDirectoryA
 0066A869    test        ax,ax
>0066A86C    jne         0066A873
 0066A86E    call        InOutError
 0066A873    pop         ebx
 0066A874    ret
*}
end;

//0066A878
procedure @Copy(S:ShortString; Index:Integer; Count:Integer; Result:ShortString);
begin
{*
 0066A878    push        esi
 0066A879    push        edi
 0066A87A    mov         esi,eax
 0066A87C    mov         edi,dword ptr [esp+0C]
 0066A880    xor         eax,eax
 0066A882    or          al,byte ptr [esi]
>0066A884    je          0066A8B1
 0066A886    test        edx,edx
>0066A888    jle         0066A8A2
 0066A88A    cmp         edx,eax
>0066A88C    jg          0066A8A9
 0066A88E    sub         eax,edx
 0066A890    inc         eax
 0066A891    test        ecx,ecx
>0066A893    jl          0066A8A9
 0066A895    cmp         ecx,eax
>0066A897    jg          0066A8AD
 0066A899    add         esi,edx
 0066A89B    mov         byte ptr [edi],cl
 0066A89D    inc         edi
 0066A89E    rep movs    byte ptr [edi],byte ptr [esi]
>0066A8A0    jmp         0066A8B3
 0066A8A2    mov         edx,1
>0066A8A7    jmp         0066A88E
 0066A8A9    xor         ecx,ecx
>0066A8AB    jmp         0066A899
 0066A8AD    mov         ecx,eax
>0066A8AF    jmp         0066A899
 0066A8B1    mov         byte ptr [edi],al
 0066A8B3    pop         edi
 0066A8B4    pop         esi
 0066A8B5    ret         4
*}
end;

//0066A8BC
procedure @LGetDir(D:Byte; var S:AnsiString);
begin
{*
 0066A8BC    push        ebx
 0066A8BD    push        esi
 0066A8BE    add         esp,0FFFFFDF0
 0066A8C4    mov         esi,edx
 0066A8C6    mov         ebx,eax
 0066A8C8    test        bl,bl
>0066A8CA    je          0066A8F9
 0066A8CC    xor         eax,eax
 0066A8CE    mov         al,bl
 0066A8D0    add         eax,41
 0066A8D3    dec         eax
 0066A8D4    mov         byte ptr [esp],al
 0066A8D7    mov         byte ptr [esp+1],3A
 0066A8DC    mov         byte ptr [esp+2],0
 0066A8E1    lea         eax,[esp+109]
 0066A8E8    push        eax
 0066A8E9    push        105
 0066A8EE    call        KERNEL32.GetCurrentDirectoryA
 0066A8F3    push        esp
 0066A8F4    call        KERNEL32.SetCurrentDirectoryA
 0066A8F9    lea         eax,[esp+4]
 0066A8FD    push        eax
 0066A8FE    push        105
 0066A903    call        KERNEL32.GetCurrentDirectoryA
 0066A908    test        bl,bl
>0066A90A    je          0066A919
 0066A90C    lea         eax,[esp+109]
 0066A913    push        eax
 0066A914    call        KERNEL32.SetCurrentDirectoryA
 0066A919    mov         eax,esi
 0066A91B    lea         edx,[esp+4]
 0066A91F    mov         ecx,105
 0066A924    call        @LStrFromArray
 0066A929    add         esp,210
 0066A92F    pop         esi
 0066A930    pop         ebx
 0066A931    ret
*}
end;

//0066A934
procedure @SGetDir(D:Byte; var S:ShortString; const _Dv_:$0..-$1);
begin
{*
 0066A934    push        ebp
 0066A935    mov         ebp,esp
 0066A937    add         esp,0FFFFFEFC
 0066A93D    push        ebx
 0066A93E    push        esi
 0066A93F    xor         ebx,ebx
 0066A941    mov         dword ptr [ebp-4],ebx
 0066A944    mov         esi,ecx
 0066A946    mov         ebx,edx
 0066A948    xor         edx,edx
 0066A94A    push        ebp
 0066A94B    push        66A996
 0066A950    push        dword ptr fs:[edx]
 0066A953    mov         dword ptr fs:[edx],esp
 0066A956    lea         edx,[ebp-4]
 0066A959    call        @LGetDir
 0066A95E    lea         eax,[ebp-104]
 0066A964    mov         edx,dword ptr [ebp-4]
 0066A967    mov         ecx,0FF
 0066A96C    call        @LStrToString
 0066A971    lea         edx,[ebp-104]
 0066A977    mov         eax,ebx
 0066A979    mov         ecx,esi
 0066A97B    call        @PStrNCpy
 0066A980    xor         eax,eax
 0066A982    pop         edx
 0066A983    pop         ecx
 0066A984    pop         ecx
 0066A985    mov         dword ptr fs:[eax],edx
 0066A988    push        66A99D
 0066A98D    lea         eax,[ebp-4]
 0066A990    call        @LStrClr
 0066A995    ret
>0066A996    jmp         @HandleFinally
>0066A99B    jmp         0066A98D
 0066A99D    pop         esi
 0066A99E    pop         ebx
 0066A99F    mov         esp,ebp
 0066A9A1    pop         ebp
 0066A9A2    ret
*}
end;

//0066A9A4
function IOResult:Integer;
begin
{*
 0066A9A4    push        ebx
 0066A9A5    call        @GetTls
 0066A9AA    mov         ebx,dword ptr [eax+0C];{InOutRes:Integer}
 0066A9B0    call        @GetTls
 0066A9B5    xor         edx,edx
 0066A9B7    mov         dword ptr [eax+0C],edx;{InOutRes:Integer}
 0066A9BD    mov         eax,ebx
 0066A9BF    pop         ebx
 0066A9C0    ret
*}
end;

//0066A9C4
procedure Move(const Source:void ; var Dest:void ; Count:Integer);
begin
{*
 0066A9C4    push        esi
 0066A9C5    push        edi
 0066A9C6    mov         esi,eax
 0066A9C8    mov         edi,edx
 0066A9CA    mov         eax,ecx
 0066A9CC    cmp         edi,esi
>0066A9CE    ja          0066A9E3
>0066A9D0    je          0066AA01
 0066A9D2    sar         ecx,2
>0066A9D5    js          0066AA01
 0066A9D7    rep movs    dword ptr [edi],dword ptr [esi]
 0066A9D9    mov         ecx,eax
 0066A9DB    and         ecx,3
 0066A9DE    rep movs    byte ptr [edi],byte ptr [esi]
 0066A9E0    pop         edi
 0066A9E1    pop         esi
 0066A9E2    ret
 0066A9E3    lea         esi,[ecx+esi-4]
 0066A9E7    lea         edi,[ecx+edi-4]
 0066A9EB    sar         ecx,2
>0066A9EE    js          0066AA01
 0066A9F0    std
 0066A9F1    rep movs    dword ptr [edi],dword ptr [esi]
 0066A9F3    mov         ecx,eax
 0066A9F5    and         ecx,3
 0066A9F8    add         esi,3
 0066A9FB    add         edi,3
 0066A9FE    rep movs    byte ptr [edi],byte ptr [esi]
 0066AA00    cld
 0066AA01    pop         edi
 0066AA02    pop         esi
 0066AA03    ret
*}
end;

//0066AA04
function GetParamStr(P:PAnsiChar; var Param:AnsiString):PAnsiChar;
begin
{*
 0066AA04    push        ebx
 0066AA05    push        esi
 0066AA06    push        edi
 0066AA07    push        ebp
 0066AA08    mov         esi,edx
 0066AA0A    mov         ebx,eax
>0066AA0C    jmp         0066AA16
 0066AA0E    push        ebx
 0066AA0F    call        USER32.CharNextA
 0066AA14    mov         ebx,eax
 0066AA16    mov         al,byte ptr [ebx]
 0066AA18    test        al,al
>0066AA1A    je          0066AA20
 0066AA1C    cmp         al,20
>0066AA1E    jbe         0066AA0E
 0066AA20    cmp         byte ptr [ebx],22
>0066AA23    jne         0066AA30
 0066AA25    cmp         byte ptr [ebx+1],22
>0066AA29    jne         0066AA30
 0066AA2B    add         ebx,2
>0066AA2E    jmp         0066AA16
 0066AA30    xor         ebp,ebp
 0066AA32    mov         edi,ebx
>0066AA34    jmp         0066AA79
 0066AA36    cmp         al,22
>0066AA38    jne         0066AA6B
 0066AA3A    push        ebx
 0066AA3B    call        USER32.CharNextA
 0066AA40    mov         ebx,eax
>0066AA42    jmp         0066AA52
 0066AA44    push        ebx
 0066AA45    call        USER32.CharNextA
 0066AA4A    mov         edx,eax
 0066AA4C    sub         edx,ebx
 0066AA4E    add         ebp,edx
 0066AA50    mov         ebx,eax
 0066AA52    mov         al,byte ptr [ebx]
 0066AA54    test        al,al
>0066AA56    je          0066AA5C
 0066AA58    cmp         al,22
>0066AA5A    jne         0066AA44
 0066AA5C    cmp         byte ptr [ebx],0
>0066AA5F    je          0066AA79
 0066AA61    push        ebx
 0066AA62    call        USER32.CharNextA
 0066AA67    mov         ebx,eax
>0066AA69    jmp         0066AA79
 0066AA6B    push        ebx
 0066AA6C    call        USER32.CharNextA
 0066AA71    mov         edx,eax
 0066AA73    sub         edx,ebx
 0066AA75    add         ebp,edx
 0066AA77    mov         ebx,eax
 0066AA79    mov         al,byte ptr [ebx]
 0066AA7B    cmp         al,20
>0066AA7D    ja          0066AA36
 0066AA7F    mov         eax,esi
 0066AA81    mov         edx,ebp
 0066AA83    call        @LStrSetLength
 0066AA88    mov         ebx,edi
 0066AA8A    mov         edi,dword ptr [esi]
 0066AA8C    xor         esi,esi
>0066AA8E    jmp         0066AAE1
 0066AA90    cmp         al,22
>0066AA92    jne         0066AACC
 0066AA94    push        ebx
 0066AA95    call        USER32.CharNextA
 0066AA9A    mov         ebx,eax
>0066AA9C    jmp         0066AAB3
 0066AA9E    push        ebx
 0066AA9F    call        USER32.CharNextA
 0066AAA4    cmp         eax,ebx
>0066AAA6    jbe         0066AAB3
 0066AAA8    mov         dl,byte ptr [ebx]
 0066AAAA    mov         byte ptr [edi+esi],dl
 0066AAAD    inc         ebx
 0066AAAE    inc         esi
 0066AAAF    cmp         eax,ebx
>0066AAB1    ja          0066AAA8
 0066AAB3    mov         al,byte ptr [ebx]
 0066AAB5    test        al,al
>0066AAB7    je          0066AABD
 0066AAB9    cmp         al,22
>0066AABB    jne         0066AA9E
 0066AABD    cmp         byte ptr [ebx],0
>0066AAC0    je          0066AAE1
 0066AAC2    push        ebx
 0066AAC3    call        USER32.CharNextA
 0066AAC8    mov         ebx,eax
>0066AACA    jmp         0066AAE1
 0066AACC    push        ebx
 0066AACD    call        USER32.CharNextA
 0066AAD2    cmp         eax,ebx
>0066AAD4    jbe         0066AAE1
 0066AAD6    mov         dl,byte ptr [ebx]
 0066AAD8    mov         byte ptr [edi+esi],dl
 0066AADB    inc         ebx
 0066AADC    inc         esi
 0066AADD    cmp         eax,ebx
>0066AADF    ja          0066AAD6
 0066AAE1    mov         al,byte ptr [ebx]
 0066AAE3    cmp         al,20
>0066AAE5    ja          0066AA90
 0066AAE7    mov         eax,ebx
 0066AAE9    pop         ebp
 0066AAEA    pop         edi
 0066AAEB    pop         esi
 0066AAEC    pop         ebx
 0066AAED    ret
*}
end;

//0066AAF0
function ParamCount:Integer;
begin
{*
 0066AAF0    push        ebp
 0066AAF1    mov         ebp,esp
 0066AAF3    push        0
 0066AAF5    push        ebx
 0066AAF6    push        esi
 0066AAF7    xor         eax,eax
 0066AAF9    push        ebp
 0066AAFA    push        66AB41
 0066AAFF    push        dword ptr fs:[eax]
 0066AB02    mov         dword ptr fs:[eax],esp
 0066AB05    xor         esi,esi
 0066AB07    call        KERNEL32.GetCommandLineA
 0066AB0C    lea         edx,[ebp-4]
 0066AB0F    call        GetParamStr
 0066AB14    mov         ebx,eax
 0066AB16    lea         edx,[ebp-4]
 0066AB19    mov         eax,ebx
 0066AB1B    call        GetParamStr
 0066AB20    mov         ebx,eax
 0066AB22    cmp         dword ptr [ebp-4],0
>0066AB26    je          0066AB2B
 0066AB28    inc         esi
>0066AB29    jmp         0066AB16
 0066AB2B    xor         eax,eax
 0066AB2D    pop         edx
 0066AB2E    pop         ecx
 0066AB2F    pop         ecx
 0066AB30    mov         dword ptr fs:[eax],edx
 0066AB33    push        66AB48
 0066AB38    lea         eax,[ebp-4]
 0066AB3B    call        @LStrClr
 0066AB40    ret
>0066AB41    jmp         @HandleFinally
>0066AB46    jmp         0066AB38
 0066AB48    mov         eax,esi
 0066AB4A    pop         esi
 0066AB4B    pop         ebx
 0066AB4C    pop         ecx
 0066AB4D    pop         ebp
 0066AB4E    ret
*}
end;

//0066AB50
function ParamStr(Index:Integer):String;
begin
{*
 0066AB50    push        ebx
 0066AB51    push        esi
 0066AB52    push        edi
 0066AB53    add         esp,0FFFFFEF8
 0066AB59    mov         ebx,edx
 0066AB5B    mov         esi,eax
 0066AB5D    mov         eax,ebx
 0066AB5F    call        @LStrClr
 0066AB64    test        esi,esi
>0066AB66    jne         0066AB86
 0066AB68    push        105
 0066AB6D    lea         eax,[esp+4]
 0066AB71    push        eax
 0066AB72    push        0
 0066AB74    call        KERNEL32.GetModuleFileNameA
 0066AB79    mov         ecx,eax
 0066AB7B    mov         edx,esp
 0066AB7D    mov         eax,ebx
 0066AB7F    call        @LStrFromPCharLen
>0066AB84    jmp         0066ABA4
 0066AB86    call        KERNEL32.GetCommandLineA
 0066AB8B    mov         edi,eax
 0066AB8D    mov         edx,ebx
 0066AB8F    mov         eax,edi
 0066AB91    call        GetParamStr
 0066AB96    mov         edi,eax
 0066AB98    test        esi,esi
>0066AB9A    je          0066ABA4
 0066AB9C    cmp         dword ptr [ebx],0
>0066AB9F    je          0066ABA4
 0066ABA1    dec         esi
>0066ABA2    jmp         0066AB8D
 0066ABA4    add         esp,108
 0066ABAA    pop         edi
 0066ABAB    pop         esi
 0066ABAC    pop         ebx
 0066ABAD    ret
*}
end;

//0066ABB0
procedure Randomize;
begin
{*
 0066ABB0    push        ebp
 0066ABB1    mov         ebp,esp
 0066ABB3    add         esp,0FFFFFFE8
 0066ABB6    lea         eax,[ebp-18]
 0066ABB9    push        eax
 0066ABBA    call        KERNEL32.GetSystemTime
 0066ABBF    movzx       eax,word ptr [ebp-10]
 0066ABC3    imul        eax,eax,3C
 0066ABC6    add         ax,word ptr [ebp-0E]
 0066ABCA    imul        eax,eax,3C
 0066ABCD    xor         edx,edx
 0066ABCF    mov         dx,word ptr [ebp-0C]
 0066ABD3    add         eax,edx
 0066ABD5    imul        eax,eax,3E8
 0066ABDB    mov         dx,word ptr [ebp-0A]
 0066ABDF    add         eax,edx
 0066ABE1    mov         [006E4E78],eax
 0066ABE6    mov         esp,ebp
 0066ABE8    pop         ebp
 0066ABE9    ret
*}
end;

//0066ABEC
function UpCase(Ch:Char):Char;
begin
{*
 0066ABEC    cmp         al,61
>0066ABEE    jb          0066ABF6
 0066ABF0    cmp         al,7A
>0066ABF2    ja          0066ABF6
 0066ABF4    sub         al,20
 0066ABF6    ret
*}
end;

//0066ABF8
procedure @EXP;
begin
{*
 0066ABF8    fldl2e
 0066ABFA    fmulp       st(1),st
 0066ABFC    fld         st(0)
 0066ABFE    frndint
 0066AC00    fsub        st(1),st
 0066AC02    fxch        st(1)
 0066AC04    f2xm1
 0066AC06    fld1
 0066AC08    faddp       st(1),st
 0066AC0A    fscale
 0066AC0C    fstp        st(1)
 0066AC0E    ret
*}
end;

//0066AC10
procedure @INT;
begin
{*
 0066AC10    sub         esp,4
 0066AC13    fnstcw      word ptr [esp]
 0066AC16    fnstcw      word ptr [esp+2]
 0066AC1A    wait
 0066AC1B    or          word ptr [esp+2],0F00
 0066AC22    fldcw       word ptr [esp+2]
 0066AC26    frndint
 0066AC28    wait
 0066AC29    fldcw       word ptr [esp]
 0066AC2C    add         esp,4
 0066AC2F    ret
*}
end;

//0066AC30
procedure @FRAC;
begin
{*
 0066AC30    fld         st(0)
 0066AC32    sub         esp,4
 0066AC35    fnstcw      word ptr [esp]
 0066AC38    fnstcw      word ptr [esp+2]
 0066AC3C    wait
 0066AC3D    or          word ptr [esp+2],0F00
 0066AC44    fldcw       word ptr [esp+2]
 0066AC48    frndint
 0066AC4A    wait
 0066AC4B    fldcw       word ptr [esp]
 0066AC4E    add         esp,4
 0066AC51    fsubp       st(1),st
 0066AC53    ret
*}
end;

//0066AC54
procedure @ROUND;
begin
{*
 0066AC54    sub         esp,8
 0066AC57    fistp       qword ptr [esp]
 0066AC5A    wait
 0066AC5B    pop         eax
 0066AC5C    pop         edx
 0066AC5D    ret
*}
end;

//0066AC60
function @TRUNC(X:Extended):Int64;
begin
{*
 0066AC60    sub         esp,0C
 0066AC63    fnstcw      word ptr [esp]
 0066AC66    fnstcw      word ptr [esp+2]
 0066AC6A    wait
 0066AC6B    or          word ptr [esp+2],0F00
 0066AC72    fldcw       word ptr [esp+2]
 0066AC76    fistp       qword ptr [esp+4]
 0066AC7A    wait
 0066AC7B    fldcw       word ptr [esp]
 0066AC7E    pop         ecx
 0066AC7F    pop         eax
 0066AC80    pop         edx
 0066AC81    ret
*}
end;

//0066AC84
procedure @AbstractError;
begin
{*
 0066AC84    cmp         dword ptr ds:[6ED2EC],0;AbstractErrorProc:procedure
>0066AC8B    je          0066AC93
 0066AC8D    call        dword ptr ds:[6ED2EC]
 0066AC93    mov         eax,0D2
>0066AC98    jmp         @RunError
 0066AC9D    ret
*}
end;

//0066ACA0
function OpenText(var t:TTextRec; Mode:Word):Integer;
begin
{*
 0066ACA0    push        ebx
 0066ACA1    push        esi
 0066ACA2    mov         esi,edx
 0066ACA4    mov         ebx,eax
 0066ACA6    mov         ax,word ptr [ebx+4]
 0066ACAA    cmp         ax,0D7B0
>0066ACAE    jb          0066ACB6
 0066ACB0    cmp         ax,0D7B3
>0066ACB4    jbe         0066ACBD
 0066ACB6    mov         ebx,66
>0066ACBB    jmp         0066ACE8
 0066ACBD    cmp         ax,0D7B0
>0066ACC1    je          0066ACCA
 0066ACC3    mov         eax,ebx
 0066ACC5    call        @Close
 0066ACCA    mov         word ptr [ebx+4],si
 0066ACCE    cmp         byte ptr [ebx+48],0
>0066ACD2    jne         0066ACE1
 0066ACD4    cmp         dword ptr [ebx+18],0
>0066ACD8    jne         0066ACE1
 0066ACDA    mov         dword ptr [ebx+18],66ADB0;TextOpen:Integer
 0066ACE1    mov         eax,ebx
 0066ACE3    call        dword ptr [ebx+18]
 0066ACE6    mov         ebx,eax
 0066ACE8    test        ebx,ebx
>0066ACEA    je          0066ACF3
 0066ACEC    mov         eax,ebx
 0066ACEE    call        SetInOutRes
 0066ACF3    mov         eax,ebx
 0066ACF5    pop         esi
 0066ACF6    pop         ebx
 0066ACF7    ret
*}
end;

//0066ACF8
function @RewritText(var T:TTextRec):Integer;
begin
{*
 0066ACF8    mov         dx,0D7B2
 0066ACFC    call        OpenText
 0066AD01    ret
*}
end;

//0066AD04
function TextIn(var t:TTextRec):Integer;
begin
{*
 0066AD04    push        ebx
 0066AD05    mov         ebx,eax
 0066AD07    xor         eax,eax
 0066AD09    mov         dword ptr [ebx+10],eax
 0066AD0C    xor         eax,eax
 0066AD0E    mov         dword ptr [ebx+0C],eax
 0066AD11    push        0
 0066AD13    lea         eax,[ebx+10]
 0066AD16    push        eax
 0066AD17    mov         eax,dword ptr [ebx+8]
 0066AD1A    push        eax
 0066AD1B    mov         eax,dword ptr [ebx+14]
 0066AD1E    push        eax
 0066AD1F    mov         eax,dword ptr [ebx]
 0066AD21    push        eax
 0066AD22    call        KERNEL32.ReadFile
 0066AD27    test        eax,eax
>0066AD29    jne         0066AD39
 0066AD2B    call        KERNEL32.GetLastError
 0066AD30    cmp         eax,6D
>0066AD33    jne         0066AD3B
 0066AD35    xor         eax,eax
 0066AD37    pop         ebx
 0066AD38    ret
 0066AD39    xor         eax,eax
 0066AD3B    pop         ebx
 0066AD3C    ret
*}
end;

//0066AD40
function FileNOPProc(var t:void ):Integer;
begin
{*
 0066AD40    xor         eax,eax
 0066AD42    ret
*}
end;

//0066AD44
function TextOut(var t:TTextRec):Integer;
begin
{*
 0066AD44    push        ebx
 0066AD45    push        esi
 0066AD46    push        ecx
 0066AD47    mov         ebx,eax
 0066AD49    mov         esi,dword ptr [ebx+0C]
 0066AD4C    test        esi,esi
>0066AD4E    jne         0066AD54
 0066AD50    xor         eax,eax
>0066AD52    jmp         0066AD7A
 0066AD54    push        0
 0066AD56    lea         eax,[esp+4]
 0066AD5A    push        eax
 0066AD5B    push        esi
 0066AD5C    mov         eax,dword ptr [ebx+14]
 0066AD5F    push        eax
 0066AD60    mov         eax,dword ptr [ebx]
 0066AD62    push        eax
 0066AD63    call        KERNEL32.WriteFile
 0066AD68    test        eax,eax
>0066AD6A    jne         0066AD73
 0066AD6C    call        KERNEL32.GetLastError
>0066AD71    jmp         0066AD75
 0066AD73    xor         eax,eax
 0066AD75    xor         edx,edx
 0066AD77    mov         dword ptr [ebx+0C],edx
 0066AD7A    pop         edx
 0066AD7B    pop         esi
 0066AD7C    pop         ebx
 0066AD7D    ret
*}
end;

//0066AD80
function InternalClose(Handle:Integer):Boolean;
begin
{*
 0066AD80    push        ebx
 0066AD81    mov         ebx,eax
 0066AD83    push        ebx
 0066AD84    call        KERNEL32.CloseHandle
 0066AD89    dec         eax
 0066AD8A    sete        al
 0066AD8D    pop         ebx
 0066AD8E    ret
*}
end;

//0066AD90
function TextClose(var t:TTextRec):Integer;
begin
{*
 0066AD90    push        ebx
 0066AD91    mov         ebx,eax
 0066AD93    mov         word ptr [ebx+4],0D7B0
 0066AD99    mov         eax,dword ptr [ebx]
 0066AD9B    call        InternalClose
 0066ADA0    test        al,al
>0066ADA2    jne         0066ADAB
 0066ADA4    call        KERNEL32.GetLastError
 0066ADA9    pop         ebx
 0066ADAA    ret
 0066ADAB    xor         eax,eax
 0066ADAD    pop         ebx
 0066ADAE    ret
*}
end;

//0066ADB0
function TextOpen(var t:TTextRec):Integer;
begin
{*
 0066ADB0    push        esi
 0066ADB1    mov         esi,eax
 0066ADB3    xor         eax,eax
 0066ADB5    mov         dword ptr [esi+0C],eax
 0066ADB8    mov         dword ptr [esi+10],eax
 0066ADBB    mov         ax,word ptr [esi+4]
 0066ADBF    sub         eax,0D7B1
>0066ADC4    je          0066ADD1
 0066ADC6    dec         eax
>0066ADC7    je          0066ADE9
 0066ADC9    dec         eax
>0066ADCA    je          0066ADFA
>0066ADCC    jmp         0066AF38
 0066ADD1    mov         eax,80000000
 0066ADD6    mov         edx,1
 0066ADDB    mov         ecx,3
 0066ADE0    mov         dword ptr [esi+1C],66AD04;TextIn:Integer
>0066ADE7    jmp         0066AE10
 0066ADE9    mov         eax,40000000
 0066ADEE    mov         edx,1
 0066ADF3    mov         ecx,2
>0066ADF8    jmp         0066AE09
 0066ADFA    mov         eax,0C0000000
 0066ADFF    mov         edx,1
 0066AE04    mov         ecx,3
 0066AE09    mov         dword ptr [esi+1C],66AD44;TextOut:Integer
 0066AE10    mov         dword ptr [esi+24],66AD90;TextClose:Integer
 0066AE17    mov         dword ptr [esi+20],66AD40;FileNOPProc:Integer
 0066AE1E    cmp         byte ptr [esi+48],0
>0066AE22    je          0066AEDA
 0066AE28    push        0
 0066AE2A    push        80
 0066AE2F    push        ecx
 0066AE30    push        0
 0066AE32    push        edx
 0066AE33    push        eax
 0066AE34    lea         eax,[esi+48]
 0066AE37    push        eax
 0066AE38    call        KERNEL32.CreateFileA
 0066AE3D    cmp         eax,0FFFFFFFF
>0066AE40    je          0066AF4E
 0066AE46    mov         dword ptr [esi],eax
 0066AE48    cmp         word ptr [esi+4],0D7B3
>0066AE4E    jne         0066AF17
 0066AE54    dec         word ptr [esi+4]
 0066AE58    push        0
 0066AE5A    push        dword ptr [esi]
 0066AE5C    call        KERNEL32.GetFileSize
 0066AE61    inc         eax
>0066AE62    je          0066AF4E
 0066AE68    sub         eax,81
>0066AE6D    jae         0066AE71
 0066AE6F    xor         eax,eax
 0066AE71    push        0
 0066AE73    push        0
 0066AE75    push        eax
 0066AE76    push        dword ptr [esi]
 0066AE78    call        KERNEL32.SetFilePointer
 0066AE7D    inc         eax
>0066AE7E    je          0066AF4E
 0066AE84    push        0
 0066AE86    mov         edx,esp
 0066AE88    push        0
 0066AE8A    push        edx
 0066AE8B    push        80
 0066AE90    lea         edx,[esi+14C]
 0066AE96    push        edx
 0066AE97    push        dword ptr [esi]
 0066AE99    call        KERNEL32.ReadFile
 0066AE9E    pop         edx
 0066AE9F    dec         eax
>0066AEA0    jne         0066AF4E
 0066AEA6    xor         eax,eax
 0066AEA8    cmp         eax,edx
>0066AEAA    jae         0066AF17
 0066AEAC    cmp         byte ptr [esi+eax+14C],0E
>0066AEB4    je          0066AEB9
 0066AEB6    inc         eax
>0066AEB7    jmp         0066AEA8
 0066AEB9    push        2
 0066AEBB    push        0
 0066AEBD    sub         eax,edx
 0066AEBF    push        eax
 0066AEC0    push        dword ptr [esi]
 0066AEC2    call        KERNEL32.SetFilePointer
 0066AEC7    inc         eax
>0066AEC8    je          0066AF4E
 0066AECE    push        dword ptr [esi]
 0066AED0    call        KERNEL32.SetEndOfFile
 0066AED5    dec         eax
>0066AED6    jne         0066AF4E
>0066AED8    jmp         0066AF17
 0066AEDA    lea         eax,[esi+14C]
 0066AEE0    mov         dword ptr [esi+8],80
 0066AEE7    mov         dword ptr [esi+24],66AD40;FileNOPProc:Integer
 0066AEEE    mov         dword ptr [esi+14],eax
 0066AEF1    cmp         word ptr [esi+4],0D7B2
>0066AEF7    je          0066AEFD
 0066AEF9    push        0F6
>0066AEFB    jmp         0066AF0B
 0066AEFD    cmp         esi,6ED6AC;ErrOutput:Text
>0066AF03    jne         0066AF09
 0066AF05    push        0F4
>0066AF07    jmp         0066AF0B
 0066AF09    push        0F5
 0066AF0B    call        KERNEL32.GetStdHandle
 0066AF10    cmp         eax,0FFFFFFFF
>0066AF13    je          0066AF4E
 0066AF15    mov         dword ptr [esi],eax
 0066AF17    cmp         word ptr [esi+4],0D7B1
>0066AF1D    je          0066AF36
 0066AF1F    push        dword ptr [esi]
 0066AF21    call        KERNEL32.GetFileType
 0066AF26    test        eax,eax
>0066AF28    je          0066AF3A
 0066AF2A    cmp         eax,2
>0066AF2D    jne         0066AF36
 0066AF2F    mov         dword ptr [esi+20],66AD44;TextOut:Integer
 0066AF36    xor         eax,eax
 0066AF38    pop         esi
 0066AF39    ret
 0066AF3A    push        dword ptr [esi]
 0066AF3C    call        KERNEL32.CloseHandle
 0066AF41    mov         word ptr [esi+4],0D7B0
 0066AF47    mov         eax,69
>0066AF4C    jmp         0066AF38
 0066AF4E    mov         word ptr [esi+4],0D7B0
 0066AF54    call        KERNEL32.GetLastError
>0066AF59    jmp         0066AF38
 0066AF5B    ret
*}
end;

//0066AF5C
function InternalFlush(var t:TTextRec; Func:TTextIOFunc):Integer;
begin
{*
 0066AF5C    push        ebx
 0066AF5D    mov         cx,word ptr [eax+4]
 0066AF61    sub         cx,0D7B1
>0066AF66    je          0066AF77
 0066AF68    dec         ecx
 0066AF69    sub         cx,2
>0066AF6D    jae         0066AF7B
 0066AF6F    mov         ebx,edx
 0066AF71    call        ebx
 0066AF73    mov         ebx,eax
>0066AF75    jmp         0066AF92
 0066AF77    xor         ebx,ebx
>0066AF79    jmp         0066AF92
 0066AF7B    cmp         eax,6ED4E0;Output:Text
>0066AF80    je          0066AF89
 0066AF82    cmp         eax,6ED6AC;ErrOutput:Text
>0066AF87    jne         0066AF8D
 0066AF89    xor         ebx,ebx
>0066AF8B    jmp         0066AF92
 0066AF8D    mov         ebx,67
 0066AF92    test        ebx,ebx
>0066AF94    je          0066AF9D
 0066AF96    mov         eax,ebx
 0066AF98    call        SetInOutRes
 0066AF9D    mov         eax,ebx
 0066AF9F    pop         ebx
 0066AFA0    ret
*}
end;

//0066AFA4
function Flush(var t:Text):Integer;
begin
{*
 0066AFA4    mov         edx,dword ptr [eax+1C]
 0066AFA7    call        InternalFlush
 0066AFAC    ret
*}
end;

//0066AFB0
procedure @Flush(var F:TFileRec);
begin
{*
 0066AFB0    mov         edx,dword ptr [eax+20]
 0066AFB3    call        InternalFlush
 0066AFB8    ret
*}
end;

//0066AFBC
procedure @Close(var F:TFileRec);
begin
{*
 0066AFBC    push        ebx
 0066AFBD    push        esi
 0066AFBE    mov         ebx,eax
 0066AFC0    xor         esi,esi
 0066AFC2    mov         ax,word ptr [ebx+4]
 0066AFC6    cmp         ax,0D7B1
>0066AFCA    jb          0066AFFB
 0066AFCC    cmp         ax,0D7B3
>0066AFD0    ja          0066AFFB
 0066AFD2    and         ax,0D7B2
 0066AFD6    cmp         ax,0D7B2
>0066AFDA    jne         0066AFE3
 0066AFDC    mov         eax,ebx
 0066AFDE    call        dword ptr [ebx+1C]
 0066AFE1    mov         esi,eax
 0066AFE3    test        esi,esi
>0066AFE5    jne         0066AFEE
 0066AFE7    mov         eax,ebx
 0066AFE9    call        dword ptr [ebx+24]
 0066AFEC    mov         esi,eax
 0066AFEE    test        esi,esi
>0066AFF0    je          0066B00D
 0066AFF2    mov         eax,esi
 0066AFF4    call        SetInOutRes
>0066AFF9    jmp         0066B00D
 0066AFFB    cmp         ebx,6ED314;Input:Text
>0066B001    je          0066B00D
 0066B003    mov         eax,67
 0066B008    call        SetInOutRes
 0066B00D    mov         eax,esi
 0066B00F    pop         esi
 0066B010    pop         ebx
 0066B011    ret
*}
end;

//0066B014
procedure @PStrNCat(Dest:PShortString; Source:PShortString; MaxLen:Byte);
begin
{*
 0066B014    push        esi
 0066B015    push        edi
 0066B016    mov         edi,eax
 0066B018    xor         eax,eax
 0066B01A    mov         al,byte ptr [edi]
 0066B01C    mov         esi,edx
 0066B01E    xor         edx,edx
 0066B020    mov         dl,byte ptr [esi]
 0066B022    inc         esi
 0066B023    add         al,dl
>0066B025    jb          0066B039
 0066B027    cmp         al,cl
>0066B029    ja          0066B039
 0066B02B    mov         ecx,edx
 0066B02D    mov         dl,byte ptr [edi]
 0066B02F    mov         byte ptr [edi],al
 0066B031    inc         edi
 0066B032    add         edi,edx
 0066B034    rep movs    byte ptr [edi],byte ptr [esi]
 0066B036    pop         edi
 0066B037    pop         esi
 0066B038    ret
 0066B039    mov         al,cl
 0066B03B    sub         cl,byte ptr [edi]
>0066B03D    jbe         0066B036
 0066B03F    mov         dl,cl
>0066B041    jmp         0066B02B
 0066B043    ret
*}
end;

//0066B044
procedure @PStrCpy(Dest:PShortString; Source:PShortString);
begin
{*
 0066B044    xor         ecx,ecx
 0066B046    mov         cl,byte ptr [edx]
 0066B048    inc         ecx
 0066B049    xchg        eax,edx
 0066B04A    call        Move
 0066B04F    ret
*}
end;

//0066B050
procedure @PStrNCpy(Dest:PShortString; Source:PShortString; MaxLen:Byte);
begin
{*
 0066B050    push        ebx
 0066B051    mov         bl,byte ptr [edx]
 0066B053    cmp         cl,bl
>0066B055    jbe         0066B059
 0066B057    mov         ecx,ebx
 0066B059    mov         byte ptr [eax],cl
 0066B05B    inc         edx
 0066B05C    inc         eax
 0066B05D    and         ecx,0FF
 0066B063    xchg        eax,edx
 0066B064    call        Move
 0066B069    pop         ebx
 0066B06A    ret
*}
end;

//0066B06C
procedure @PStrCmp(S1:PShortString; S2:PShortString);
begin
{*
 0066B06C    push        ebx
 0066B06D    push        esi
 0066B06E    push        edi
 0066B06F    mov         esi,eax
 0066B071    mov         edi,edx
 0066B073    xor         eax,eax
 0066B075    xor         edx,edx
 0066B077    mov         al,byte ptr [esi]
 0066B079    mov         dl,byte ptr [edi]
 0066B07B    inc         esi
 0066B07C    inc         edi
 0066B07D    sub         eax,edx
>0066B07F    ja          0066B083
 0066B081    add         edx,eax
 0066B083    push        edx
 0066B084    shr         edx,2
>0066B087    je          0066B0AF
 0066B089    mov         ecx,dword ptr [esi]
 0066B08B    mov         ebx,dword ptr [edi]
 0066B08D    cmp         ecx,ebx
>0066B08F    jne         0066B0D5
 0066B091    dec         edx
>0066B092    je          0066B0A9
 0066B094    mov         ecx,dword ptr [esi+4]
 0066B097    mov         ebx,dword ptr [edi+4]
 0066B09A    cmp         ecx,ebx
>0066B09C    jne         0066B0D5
 0066B09E    add         esi,8
 0066B0A1    add         edi,8
 0066B0A4    dec         edx
>0066B0A5    jne         0066B089
>0066B0A7    jmp         0066B0AF
 0066B0A9    add         esi,4
 0066B0AC    add         edi,4
 0066B0AF    pop         edx
 0066B0B0    and         edx,3
>0066B0B3    je          0066B0D1
 0066B0B5    mov         cl,byte ptr [esi]
 0066B0B7    cmp         cl,byte ptr [edi]
>0066B0B9    jne         0066B0EA
 0066B0BB    dec         edx
>0066B0BC    je          0066B0D1
 0066B0BE    mov         cl,byte ptr [esi+1]
 0066B0C1    cmp         cl,byte ptr [edi+1]
>0066B0C4    jne         0066B0EA
 0066B0C6    dec         edx
>0066B0C7    je          0066B0D1
 0066B0C9    mov         cl,byte ptr [esi+2]
 0066B0CC    cmp         cl,byte ptr [edi+2]
>0066B0CF    jne         0066B0EA
 0066B0D1    add         eax,eax
>0066B0D3    jmp         0066B0EA
 0066B0D5    pop         edx
 0066B0D6    cmp         cl,bl
>0066B0D8    jne         0066B0EA
 0066B0DA    cmp         ch,bh
>0066B0DC    jne         0066B0EA
 0066B0DE    shr         ecx,10
 0066B0E1    shr         ebx,10
 0066B0E4    cmp         cl,bl
>0066B0E6    jne         0066B0EA
 0066B0E8    cmp         ch,bh
 0066B0EA    pop         edi
 0066B0EB    pop         esi
 0066B0EC    pop         ebx
 0066B0ED    ret
*}
end;

//0066B0F0
procedure @AStrCmp(S1:PShortString; S2:PShortString; Bytes:Integer);
begin
{*
 0066B0F0    push        ebx
 0066B0F1    push        esi
 0066B0F2    push        ecx
 0066B0F3    mov         esi,ecx
 0066B0F5    shr         esi,2
>0066B0F8    je          0066B120
 0066B0FA    mov         ecx,dword ptr [eax]
 0066B0FC    mov         ebx,dword ptr [edx]
 0066B0FE    cmp         ecx,ebx
>0066B100    jne         0066B147
 0066B102    dec         esi
>0066B103    je          0066B11A
 0066B105    mov         ecx,dword ptr [eax+4]
 0066B108    mov         ebx,dword ptr [edx+4]
 0066B10B    cmp         ecx,ebx
>0066B10D    jne         0066B147
 0066B10F    add         eax,8
 0066B112    add         edx,8
 0066B115    dec         esi
>0066B116    jne         0066B0FA
>0066B118    jmp         0066B120
 0066B11A    add         eax,4
 0066B11D    add         edx,4
 0066B120    pop         esi
 0066B121    and         esi,3
>0066B124    je          0066B15C
 0066B126    mov         cl,byte ptr [eax]
 0066B128    cmp         cl,byte ptr [edx]
>0066B12A    jne         0066B15C
 0066B12C    dec         esi
>0066B12D    je          0066B142
 0066B12F    mov         cl,byte ptr [eax+1]
 0066B132    cmp         cl,byte ptr [edx+1]
>0066B135    jne         0066B15C
 0066B137    dec         esi
>0066B138    je          0066B142
 0066B13A    mov         cl,byte ptr [eax+2]
 0066B13D    cmp         cl,byte ptr [edx+2]
>0066B140    jne         0066B15C
 0066B142    xor         eax,eax
 0066B144    pop         esi
 0066B145    pop         ebx
 0066B146    ret
 0066B147    pop         esi
 0066B148    cmp         cl,bl
>0066B14A    jne         0066B15C
 0066B14C    cmp         ch,bh
>0066B14E    jne         0066B15C
 0066B150    shr         ecx,10
 0066B153    shr         ebx,10
 0066B156    cmp         cl,bl
>0066B158    jne         0066B15C
 0066B15A    cmp         ch,bh
 0066B15C    pop         esi
 0066B15D    pop         ebx
 0066B15E    ret
*}
end;

//0066B160
procedure @FillChar(var dst:Pointer; cnt:Integer; val:Char);
begin
{*
 0066B160    push        edi
 0066B161    mov         edi,eax
 0066B163    mov         ch,cl
 0066B165    mov         eax,ecx
 0066B167    shl         eax,10
 0066B16A    mov         ax,cx
 0066B16D    mov         ecx,edx
 0066B16F    sar         ecx,2
>0066B172    js          0066B17D
 0066B174    rep stos    dword ptr [edi]
 0066B176    mov         ecx,edx
 0066B178    and         ecx,3
 0066B17B    rep stos    byte ptr [edi]
 0066B17D    pop         edi
 0066B17E    ret
*}
end;

//0066B180
function @RandInt(Range:Integer):Integer;
begin
{*
 0066B180    push        ebx
 0066B181    xor         ebx,ebx
 0066B183    imul        edx,dword ptr [ebx+6E4E78],8088405
 0066B18D    inc         edx
 0066B18E    mov         dword ptr [ebx+6E4E78],edx
 0066B194    mul         eax,edx
 0066B196    mov         eax,edx
 0066B198    pop         ebx
 0066B199    ret
*}
end;

//0066B19C
function @ValLong(s:AnsiString; var code:Integer):Longint;
begin
{*
 0066B19C    push        ebx
 0066B19D    push        esi
 0066B19E    push        edi
 0066B19F    mov         esi,eax
 0066B1A1    push        eax
 0066B1A2    test        eax,eax
>0066B1A4    je          0066B212
 0066B1A6    xor         eax,eax
 0066B1A8    xor         ebx,ebx
 0066B1AA    mov         edi,0CCCCCCC
 0066B1AF    mov         bl,byte ptr [esi]
 0066B1B1    inc         esi
 0066B1B2    cmp         bl,20
>0066B1B5    je          0066B1AF
 0066B1B7    mov         ch,0
 0066B1B9    cmp         bl,2D
>0066B1BC    je          0066B220
 0066B1BE    cmp         bl,2B
>0066B1C1    je          0066B222
 0066B1C3    cmp         bl,24
>0066B1C6    je          0066B227
 0066B1C8    cmp         bl,78
>0066B1CB    je          0066B227
 0066B1CD    cmp         bl,58
>0066B1D0    je          0066B227
 0066B1D2    cmp         bl,30
>0066B1D5    jne         0066B1EA
 0066B1D7    mov         bl,byte ptr [esi]
 0066B1D9    inc         esi
 0066B1DA    cmp         bl,78
>0066B1DD    je          0066B227
 0066B1DF    cmp         bl,58
>0066B1E2    je          0066B227
 0066B1E4    test        bl,bl
>0066B1E6    je          0066B208
>0066B1E8    jmp         0066B1EE
 0066B1EA    test        bl,bl
>0066B1EC    je          0066B21B
 0066B1EE    sub         bl,30
 0066B1F1    cmp         bl,9
>0066B1F4    ja          0066B21B
 0066B1F6    cmp         eax,edi
>0066B1F8    ja          0066B21B
 0066B1FA    lea         eax,[eax+eax*4]
 0066B1FD    add         eax,eax
 0066B1FF    add         eax,ebx
 0066B201    mov         bl,byte ptr [esi]
 0066B203    inc         esi
 0066B204    test        bl,bl
>0066B206    jne         0066B1EE
 0066B208    dec         ch
>0066B20A    je          0066B215
 0066B20C    test        eax,eax
>0066B20E    jge         0066B25E
>0066B210    jmp         0066B21B
 0066B212    inc         esi
>0066B213    jmp         0066B21B
 0066B215    neg         eax
>0066B217    jle         0066B25E
>0066B219    js          0066B25E
 0066B21B    pop         ebx
 0066B21C    sub         esi,ebx
>0066B21E    jmp         0066B261
 0066B220    inc         ch
 0066B222    mov         bl,byte ptr [esi]
 0066B224    inc         esi
>0066B225    jmp         0066B1EA
 0066B227    mov         edi,0FFFFFFF
 0066B22C    mov         bl,byte ptr [esi]
 0066B22E    inc         esi
 0066B22F    test        bl,bl
>0066B231    je          0066B212
 0066B233    cmp         bl,61
>0066B236    jb          0066B23B
 0066B238    sub         bl,20
 0066B23B    sub         bl,30
 0066B23E    cmp         bl,9
>0066B241    jbe         0066B24E
 0066B243    sub         bl,11
 0066B246    cmp         bl,5
>0066B249    ja          0066B21B
 0066B24B    add         bl,0A
 0066B24E    cmp         eax,edi
>0066B250    ja          0066B21B
 0066B252    shl         eax,4
 0066B255    add         eax,ebx
 0066B257    mov         bl,byte ptr [esi]
 0066B259    inc         esi
 0066B25A    test        bl,bl
>0066B25C    jne         0066B233
 0066B25E    pop         ecx
 0066B25F    xor         esi,esi
 0066B261    mov         dword ptr [edx],esi
 0066B263    pop         edi
 0066B264    pop         esi
 0066B265    pop         ebx
 0066B266    ret
*}
end;

//0066B268
function TryOpenForOutput(var t:TTextRec):Boolean;
begin
{*
 0066B268    push        ebx
 0066B269    mov         ebx,eax
 0066B26B    cmp         ebx,6ED4E0;Output:Text
>0066B271    je          0066B27B
 0066B273    cmp         ebx,6ED6AC;ErrOutput:Text
>0066B279    jne         0066B28D
 0066B27B    xor         eax,eax
 0066B27D    mov         al,[006E4E94]
 0066B282    mov         word ptr [ebx+6],ax
 0066B286    mov         eax,ebx
 0066B288    call        @RewritText
 0066B28D    cmp         word ptr [ebx+4],0D7B2
 0066B293    sete        al
 0066B296    mov         ebx,eax
 0066B298    test        bl,bl
>0066B29A    jne         0066B2A6
 0066B29C    mov         eax,69
 0066B2A1    call        SetInOutRes
 0066B2A6    mov         eax,ebx
 0066B2A8    pop         ebx
 0066B2A9    ret
*}
end;

//0066B2AC
function @WriteBytes(var t:TTextRec; const b:void ; cnt:Integer):Pointer;
begin
{*
 0066B2AC    push        esi
 0066B2AD    push        edi
 0066B2AE    mov         esi,edx
 0066B2B0    cmp         word ptr [eax+4],0D7B2
>0066B2B6    je          0066B2C7
 0066B2B8    push        eax
 0066B2B9    push        edx
 0066B2BA    push        ecx
 0066B2BB    call        TryOpenForOutput
 0066B2C0    test        al,al
 0066B2C2    pop         ecx
 0066B2C3    pop         edx
 0066B2C4    pop         eax
>0066B2C5    je          0066B2FC
 0066B2C7    mov         edi,dword ptr [eax+14]
 0066B2CA    add         edi,dword ptr [eax+0C]
 0066B2CD    mov         edx,dword ptr [eax+8]
 0066B2D0    sub         edx,dword ptr [eax+0C]
 0066B2D3    cmp         edx,ecx
>0066B2D5    jg          0066B2F7
 0066B2D7    add         dword ptr [eax+0C],edx
 0066B2DA    sub         ecx,edx
 0066B2DC    push        eax
 0066B2DD    push        ecx
 0066B2DE    mov         ecx,edx
 0066B2E0    rep movs    byte ptr [edi],byte ptr [esi]
 0066B2E2    call        dword ptr [eax+1C]
 0066B2E5    test        eax,eax
>0066B2E7    jne         0066B2ED
 0066B2E9    pop         ecx
 0066B2EA    pop         eax
>0066B2EB    jmp         0066B2C7
 0066B2ED    call        SetInOutRes
 0066B2F2    pop         ecx
 0066B2F3    pop         eax
 0066B2F4    pop         edi
 0066B2F5    pop         esi
 0066B2F6    ret
 0066B2F7    add         dword ptr [eax+0C],ecx
 0066B2FA    rep movs    byte ptr [edi],byte ptr [esi]
 0066B2FC    pop         edi
 0066B2FD    pop         esi
 0066B2FE    ret
*}
end;

//0066B300
function @WriteSpaces(var t:TTextRec; cnt:Integer):Pointer;
begin
{*
 0066B300    mov         ecx,edx
 0066B302    mov         edx,66B330
 0066B307    cmp         ecx,40
>0066B30A    jle         0066B370
 0066B30C    sub         ecx,40
 0066B30F    push        eax
 0066B310    push        ecx
 0066B311    mov         ecx,40
 0066B316    call        @WriteBytes
 0066B31B    call        @GetTls
 0066B320    cmp         dword ptr [eax+0C],0;{InOutRes:Integer}
>0066B327    jne         0066B32D
 0066B329    pop         ecx
 0066B32A    pop         eax
>0066B32B    jmp         0066B302
 0066B32D    pop         ecx
 0066B32E    pop         eax
 0066B32F    ret
 0066B330    and         byte ptr [eax],ah
 0066B332    and         byte ptr [eax],ah
 0066B334    and         byte ptr [eax],ah
 0066B336    and         byte ptr [eax],ah
 0066B338    and         byte ptr [eax],ah
 0066B33A    and         byte ptr [eax],ah
 0066B33C    and         byte ptr [eax],ah
 0066B33E    and         byte ptr [eax],ah
 0066B340    and         byte ptr [eax],ah
 0066B342    and         byte ptr [eax],ah
 0066B344    and         byte ptr [eax],ah
 0066B346    and         byte ptr [eax],ah
 0066B348    and         byte ptr [eax],ah
 0066B34A    and         byte ptr [eax],ah
 0066B34C    and         byte ptr [eax],ah
 0066B34E    and         byte ptr [eax],ah
 0066B350    and         byte ptr [eax],ah
 0066B352    and         byte ptr [eax],ah
 0066B354    and         byte ptr [eax],ah
 0066B356    and         byte ptr [eax],ah
 0066B358    and         byte ptr [eax],ah
 0066B35A    and         byte ptr [eax],ah
 0066B35C    and         byte ptr [eax],ah
 0066B35E    and         byte ptr [eax],ah
 0066B360    and         byte ptr [eax],ah
 0066B362    and         byte ptr [eax],ah
 0066B364    and         byte ptr [eax],ah
 0066B366    and         byte ptr [eax],ah
 0066B368    and         byte ptr [eax],ah
 0066B36A    and         byte ptr [eax],ah
 0066B36C    and         byte ptr [eax],ah
 0066B36E    and         byte ptr [eax],ah
 0066B370    test        ecx,ecx
>0066B372    jg          0066B2AC
 0066B378    ret
*}
end;

//0066B37C
procedure @_CToPasStr(Dest:PShortString; const Source:PAnsiChar);
begin
{*
 0066B37C    mov         ecx,0FF
 0066B381    call        @_CLenToPasStr
 0066B386    ret
*}
end;

//0066B388
procedure @_CLenToPasStr(Dest:PShortString; const Source:PAnsiChar; MaxLen:Integer);
begin
{*
 0066B388    push        ebx
 0066B389    push        eax
 0066B38A    cmp         ecx,0FF
>0066B390    jbe         0066B397
 0066B392    mov         ecx,0FF
 0066B397    mov         bl,byte ptr [edx]
 0066B399    inc         edx
 0066B39A    test        bl,bl
>0066B39C    je          0066B3A4
 0066B39E    inc         eax
 0066B39F    mov         byte ptr [eax],bl
 0066B3A1    dec         ecx
>0066B3A2    jne         0066B397
 0066B3A4    pop         edx
 0066B3A5    sub         eax,edx
 0066B3A7    mov         byte ptr [edx],al
 0066B3A9    pop         ebx
 0066B3AA    ret
*}
end;

//0066B3AC
procedure @SetRange;
begin
{*
 0066B3AC    push        ebx
 0066B3AD    push        esi
 0066B3AE    push        edi
 0066B3AF    xor         ebx,ebx
 0066B3B1    mov         bl,ah
 0066B3B3    movzx       esi,al
 0066B3B6    movzx       edx,dl
 0066B3B9    mov         edi,ecx
 0066B3BB    mov         ecx,ebx
 0066B3BD    xor         eax,eax
 0066B3BF    rep stos    byte ptr [edi]
 0066B3C1    sub         edi,ebx
 0066B3C3    shl         ebx,3
 0066B3C6    cmp         edx,ebx
>0066B3C8    jb          0066B3CD
 0066B3CA    lea         edx,[ebx-1]
 0066B3CD    cmp         esi,edx
>0066B3CF    ja          0066B3FE
 0066B3D1    dec         eax
 0066B3D2    mov         ecx,esi
 0066B3D4    and         cl,7
 0066B3D7    shl         al,cl
 0066B3D9    shr         esi,3
 0066B3DC    mov         cl,dl
 0066B3DE    not         cl
 0066B3E0    and         cl,7
 0066B3E3    shr         ah,cl
 0066B3E5    shr         edx,3
 0066B3E8    add         edi,esi
 0066B3EA    mov         ecx,edx
 0066B3EC    sub         ecx,esi
>0066B3EE    jne         0066B3F6
 0066B3F0    and         al,ah
 0066B3F2    mov         byte ptr [edi],al
>0066B3F4    jmp         0066B3FE
 0066B3F6    stos        byte ptr [edi]
 0066B3F7    dec         ecx
 0066B3F8    mov         al,0FF
 0066B3FA    rep stos    byte ptr [edi]
 0066B3FC    mov         byte ptr [edi],ah
 0066B3FE    pop         edi
 0066B3FF    pop         esi
 0066B400    pop         ebx
 0066B401    ret
*}
end;

//0066B404
procedure @SetEq;
begin
{*
 0066B404    push        esi
 0066B405    push        edi
 0066B406    mov         esi,eax
 0066B408    mov         edi,edx
 0066B40A    and         ecx,0FF
 0066B410    repe cmps   byte ptr [esi],byte ptr [edi]
 0066B412    pop         edi
 0066B413    pop         esi
 0066B414    ret
*}
end;

//0066B418
procedure FPower10;
begin
{*
>0066B418    jmp         @Pow10
 0066B41D    ret
*}
end;

//0066B420
procedure @Pow10;
begin
{*
 0066B420    push        ebx
 0066B421    xor         ebx,ebx
 0066B423    test        eax,eax
>0066B425    jl          0066B474
>0066B427    je          0066B4C3
 0066B42D    cmp         eax,1400
>0066B432    jge         0066B4B9
 0066B438    mov         edx,eax
 0066B43A    and         edx,1F
 0066B43D    lea         edx,[edx+edx*4]
 0066B440    fld         tbyte ptr [ebx+edx*2+66B4CF]
 0066B447    fmulp       st(1),st
 0066B449    shr         eax,5
>0066B44C    je          0066B4C3
 0066B44E    mov         edx,eax
 0066B450    and         edx,0F
>0066B453    je          0066B461
 0066B455    lea         edx,[edx+edx*4]
 0066B458    fld         tbyte ptr [ebx+edx*2+66B605]
 0066B45F    fmulp       st(1),st
 0066B461    shr         eax,4
>0066B464    je          0066B4C3
 0066B466    lea         eax,[eax+eax*4]
 0066B469    fld         tbyte ptr [ebx+eax*2+66B69B]
 0066B470    fmulp       st(1),st
>0066B472    jmp         0066B4C3
 0066B474    neg         eax
 0066B476    cmp         eax,1400
>0066B47B    jge         0066B4C1
 0066B47D    mov         edx,eax
 0066B47F    and         edx,1F
 0066B482    lea         edx,[edx+edx*4]
 0066B485    fld         tbyte ptr [ebx+edx*2+66B4CF]
 0066B48C    fdivp       st(1),st
 0066B48E    shr         eax,5
>0066B491    je          0066B4C3
 0066B493    mov         edx,eax
 0066B495    and         edx,0F
>0066B498    je          0066B4A6
 0066B49A    lea         edx,[edx+edx*4]
 0066B49D    fld         tbyte ptr [ebx+edx*2+66B605]
 0066B4A4    fdivp       st(1),st
 0066B4A6    shr         eax,4
>0066B4A9    je          0066B4C3
 0066B4AB    lea         eax,[eax+eax*4]
 0066B4AE    fld         tbyte ptr [ebx+eax*2+66B69B]
 0066B4B5    fdivp       st(1),st
>0066B4B7    jmp         0066B4C3
 0066B4B9    fld         tbyte ptr [ebx+66B4C5]
>0066B4BF    jmp         0066B4C3
 0066B4C1    fldz
 0066B4C3    pop         ebx
 0066B4C4    ret
*}
end;

//0066B700
function @isNECWindows:Boolean;
begin
{*
 0066B700    push        ebx
 0066B701    xor         ebx,ebx
 0066B703    push        0
 0066B705    call        USER32.GetKeyboardType
 0066B70A    cmp         eax,7
>0066B70D    jne         0066B72B
 0066B70F    push        1
 0066B711    call        USER32.GetKeyboardType
 0066B716    and         eax,0FF00
 0066B71B    cmp         eax,0D00
>0066B720    je          0066B729
 0066B722    cmp         eax,400
>0066B727    jne         0066B72B
 0066B729    mov         bl,1
 0066B72B    mov         eax,ebx
 0066B72D    pop         ebx
 0066B72E    ret
*}
end;

//0066B730
procedure @FpuMaskInit;
begin
{*
 0066B730    push        ebp
 0066B731    mov         ebp,esp
 0066B733    add         esp,0FFFFFFF4
 0066B736    movzx       eax,word ptr ds:[6E4E80]
 0066B73D    mov         dword ptr [ebp-8],eax
 0066B740    lea         eax,[ebp-4]
 0066B743    push        eax
 0066B744    push        1
 0066B746    push        0
 0066B748    push        66B7C8
 0066B74D    push        80000002
 0066B752    call        ADVAPI32.RegOpenKeyExA
 0066B757    test        eax,eax
>0066B759    jne         0066B7A8
 0066B75B    xor         eax,eax
 0066B75D    push        ebp
 0066B75E    push        66B7A1
 0066B763    push        dword ptr fs:[eax]
 0066B766    mov         dword ptr fs:[eax],esp
 0066B769    mov         dword ptr [ebp-0C],4
 0066B770    lea         eax,[ebp-0C]
 0066B773    push        eax
 0066B774    lea         eax,[ebp-8]
 0066B777    push        eax
 0066B778    push        0
 0066B77A    push        0
 0066B77C    push        66B7E4
 0066B781    mov         eax,dword ptr [ebp-4]
 0066B784    push        eax
 0066B785    call        ADVAPI32.RegQueryValueExA
 0066B78A    xor         eax,eax
 0066B78C    pop         edx
 0066B78D    pop         ecx
 0066B78E    pop         ecx
 0066B78F    mov         dword ptr fs:[eax],edx
 0066B792    push        66B7A8
 0066B797    mov         eax,dword ptr [ebp-4]
 0066B79A    push        eax
 0066B79B    call        ADVAPI32.RegCloseKey
 0066B7A0    ret
>0066B7A1    jmp         @HandleFinally
>0066B7A6    jmp         0066B797
 0066B7A8    mov         ax,[006E4E80]
 0066B7AE    and         ax,0FFC0
 0066B7B2    mov         dx,word ptr [ebp-8]
 0066B7B6    and         dx,3F
 0066B7BA    or          ax,dx
 0066B7BD    mov         [006E4E80],ax
 0066B7C3    mov         esp,ebp
 0066B7C5    pop         ebp
 0066B7C6    ret
*}
end;

//0066B7F4
procedure @FpuInit;
begin
{*
 0066B7F4    fninit
 0066B7F6    wait
 0066B7F7    fldcw       word ptr ds:[6E4E80]
 0066B7FD    ret
*}
end;

//0066B800
procedure @BoundErr;
begin
{*
 0066B800    mov         al,4
>0066B802    jmp         Error
 0066B807    ret
*}
end;

//0066B808
function TObject.ClassType:TClass;
begin
{*
 0066B808    mov         eax,dword ptr [eax]
 0066B80A    mov         edx,eax
 0066B80C    mov         eax,edx
 0066B80E    ret
*}
end;

//0066B810
function TObject.ClassName:ShortString;
begin
{*
 0066B810    push        esi
 0066B811    push        edi
 0066B812    mov         edi,edx
 0066B814    mov         esi,dword ptr [eax-2C]
 0066B817    xor         ecx,ecx
 0066B819    mov         cl,byte ptr [esi]
 0066B81B    inc         ecx
 0066B81C    rep movs    byte ptr [edi],byte ptr [esi]
 0066B81E    pop         edi
 0066B81F    pop         esi
 0066B820    ret
*}
end;

//0066B824
function TObject.ClassNameIs(const Name:AnsiString):Boolean;
begin
{*
 0066B824    push        ebx
 0066B825    xor         ebx,ebx
 0066B827    or          edx,edx
>0066B829    je          0066B847
 0066B82B    mov         eax,dword ptr [eax-2C]
 0066B82E    xor         ecx,ecx
 0066B830    mov         cl,byte ptr [eax]
 0066B832    cmp         ecx,dword ptr [edx-4]
>0066B835    jne         0066B847
 0066B837    dec         edx
 0066B838    mov         bh,byte ptr [ecx+eax]
 0066B83B    xor         bh,byte ptr [ecx+edx]
 0066B83E    and         bh,0DF
>0066B841    jne         0066B847
 0066B843    dec         ecx
>0066B844    jne         0066B838
 0066B846    inc         ebx
 0066B847    mov         al,bl
 0066B849    pop         ebx
 0066B84A    ret
*}
end;

//0066B84C
function TObject.ClassParent:TClass;
begin
{*
 0066B84C    mov         eax,dword ptr [eax-24]
 0066B84F    test        eax,eax
>0066B851    je          0066B855
 0066B853    mov         eax,dword ptr [eax]
 0066B855    ret
*}
end;

//0066B858
function TObject.NewInstance:TObject;
begin
{*
 0066B858    push        ebx
 0066B859    mov         ebx,eax
 0066B85B    mov         eax,ebx
 0066B85D    call        TObject.InstanceSize
 0066B862    call        @GetMem
 0066B867    mov         edx,eax
 0066B869    mov         eax,ebx
 0066B86B    call        TObject.InitInstance
 0066B870    pop         ebx
 0066B871    ret
*}
end;

//0066B874
procedure TObject.FreeInstance;
begin
{*
 0066B874    push        ebx
 0066B875    mov         ebx,eax
 0066B877    mov         eax,ebx
 0066B879    call        TObject.CleanupInstance
 0066B87E    mov         eax,ebx
 0066B880    call        @FreeMem
 0066B885    pop         ebx
 0066B886    ret
*}
end;

//0066B888
function TObject.InstanceSize:Integer;
begin
{*
 0066B888    add         eax,0FFFFFFD8
 0066B88B    mov         eax,dword ptr [eax]
 0066B88D    ret
*}
end;

//0066B890
constructor TObject.Create;
begin
{*
 0066B890    test        dl,dl
>0066B892    je          0066B89C
 0066B894    add         esp,0FFFFFFF0
 0066B897    call        @ClassCreate
 0066B89C    test        dl,dl
>0066B89E    je          0066B8AF
 0066B8A0    call        @AfterConstruction
 0066B8A5    pop         dword ptr fs:[0]
 0066B8AC    add         esp,0C
 0066B8AF    ret
*}
end;

//0066B8B0
destructor TObject.Destroy;
begin
{*
 0066B8B0    call        @BeforeDestruction
 0066B8B5    test        dl,dl
>0066B8B7    jle         0066B8BE
 0066B8B9    call        @ClassDestroy
 0066B8BE    ret
*}
end;

//0066B8C0
procedure TObject.Free;
begin
{*
 0066B8C0    test        eax,eax
>0066B8C2    je          0066B8CB
 0066B8C4    mov         dl,1
 0066B8C6    mov         ecx,dword ptr [eax]
 0066B8C8    call        dword ptr [ecx-4]
 0066B8CB    ret
*}
end;

//0066B8CC
function TObject.InitInstance(Instance:Pointer):TObject;
begin
{*
 0066B8CC    push        ebx
 0066B8CD    push        esi
 0066B8CE    push        edi
 0066B8CF    mov         ebx,eax
 0066B8D1    mov         edi,edx
 0066B8D3    stos        dword ptr [edi]
 0066B8D4    mov         ecx,dword ptr [ebx-28]
 0066B8D7    xor         eax,eax
 0066B8D9    push        ecx
 0066B8DA    shr         ecx,2
 0066B8DD    dec         ecx
 0066B8DE    rep stos    dword ptr [edi]
 0066B8E0    pop         ecx
 0066B8E1    and         ecx,3
 0066B8E4    rep stos    byte ptr [edi]
 0066B8E6    mov         eax,edx
 0066B8E8    mov         edx,esp
 0066B8EA    mov         ecx,dword ptr [ebx-48]
 0066B8ED    test        ecx,ecx
>0066B8EF    je          0066B8F2
 0066B8F1    push        ecx
 0066B8F2    mov         ebx,dword ptr [ebx-24]
 0066B8F5    test        ebx,ebx
>0066B8F7    je          0066B8FD
 0066B8F9    mov         ebx,dword ptr [ebx]
>0066B8FB    jmp         0066B8EA
 0066B8FD    cmp         esp,edx
>0066B8FF    je          0066B91E
 0066B901    pop         ebx
 0066B902    mov         ecx,dword ptr [ebx]
 0066B904    add         ebx,4
 0066B907    mov         esi,dword ptr [ebx+10]
 0066B90A    test        esi,esi
>0066B90C    je          0066B914
 0066B90E    mov         edi,dword ptr [ebx+14]
 0066B911    mov         dword ptr [edi+eax],esi
 0066B914    add         ebx,1C
 0066B917    dec         ecx
>0066B918    jne         0066B907
 0066B91A    cmp         esp,edx
>0066B91C    jne         0066B901
 0066B91E    pop         edi
 0066B91F    pop         esi
 0066B920    pop         ebx
 0066B921    ret
*}
end;

//0066B924
procedure TObject.CleanupInstance;
begin
{*
 0066B924    push        ebx
 0066B925    push        esi
 0066B926    mov         ebx,eax
 0066B928    mov         esi,eax
 0066B92A    mov         esi,dword ptr [esi]
 0066B92C    mov         edx,dword ptr [esi-40]
 0066B92F    mov         esi,dword ptr [esi-24]
 0066B932    test        edx,edx
>0066B934    je          0066B93D
 0066B936    call        @FinalizeRecord
 0066B93B    mov         eax,ebx
 0066B93D    test        esi,esi
>0066B93F    jne         0066B92A
 0066B941    pop         esi
 0066B942    pop         ebx
 0066B943    ret
*}
end;

//0066B944
function InvokeImplGetter(Self:TObject; ImplGetter:Cardinal):IInterface;
begin
{*
 0066B944    xchg        edx,ecx
 0066B946    cmp         ecx,0FF000000
>0066B94C    jae         0066B95F
 0066B94E    cmp         ecx,0FE000000
>0066B954    jb          0066B95D
 0066B956    movsx       ecx,cx
 0066B959    add         ecx,dword ptr [eax]
 0066B95B    jmp         dword ptr [ecx]
 0066B95D    jmp         ecx
 0066B95F    and         ecx,0FFFFFF
 0066B965    add         ecx,eax
 0066B967    mov         eax,edx
 0066B969    mov         edx,dword ptr [ecx]
>0066B96B    jmp         @IntfCopy
 0066B970    ret
*}
end;

//0066B974
function TObject.GetInterface(const IID:TGUID; var Obj:void ):Boolean;
begin
{*
 0066B974    push        ebp
 0066B975    mov         ebp,esp
 0066B977    add         esp,0FFFFFFF8
 0066B97A    push        ebx
 0066B97B    push        esi
 0066B97C    push        edi
 0066B97D    xor         ebx,ebx
 0066B97F    mov         dword ptr [ebp-8],ebx
 0066B982    mov         esi,ecx
 0066B984    mov         dword ptr [ebp-4],edx
 0066B987    mov         edi,eax
 0066B989    xor         eax,eax
 0066B98B    push        ebp
 0066B98C    push        66B9F8
 0066B991    push        dword ptr fs:[eax]
 0066B994    mov         dword ptr fs:[eax],esp
 0066B997    xor         eax,eax
 0066B999    mov         dword ptr [esi],eax
 0066B99B    mov         edx,dword ptr [ebp-4]
 0066B99E    mov         eax,dword ptr [edi]
 0066B9A0    call        TObject.GetInterfaceEntry
 0066B9A5    mov         ebx,eax
 0066B9A7    test        ebx,ebx
>0066B9A9    je          0066B9DC
 0066B9AB    mov         eax,dword ptr [ebx+14]
 0066B9AE    test        eax,eax
>0066B9B0    je          0066B9C5
 0066B9B2    add         edi,eax
 0066B9B4    mov         dword ptr [esi],edi
 0066B9B6    cmp         dword ptr [esi],0
>0066B9B9    je          0066B9DC
 0066B9BB    mov         eax,dword ptr [esi]
 0066B9BD    push        eax
 0066B9BE    mov         eax,dword ptr [eax]
 0066B9C0    call        dword ptr [eax+4]
>0066B9C3    jmp         0066B9DC
 0066B9C5    lea         ecx,[ebp-8]
 0066B9C8    mov         edx,dword ptr [ebx+18]
 0066B9CB    mov         eax,edi
 0066B9CD    call        InvokeImplGetter
 0066B9D2    mov         edx,dword ptr [ebp-8]
 0066B9D5    mov         eax,esi
 0066B9D7    call        @IntfCopy
 0066B9DC    cmp         dword ptr [esi],0
 0066B9DF    setne       bl
 0066B9E2    xor         eax,eax
 0066B9E4    pop         edx
 0066B9E5    pop         ecx
 0066B9E6    pop         ecx
 0066B9E7    mov         dword ptr fs:[eax],edx
 0066B9EA    push        66B9FF
 0066B9EF    lea         eax,[ebp-8]
 0066B9F2    call        @IntfClear
 0066B9F7    ret
>0066B9F8    jmp         @HandleFinally
>0066B9FD    jmp         0066B9EF
 0066B9FF    mov         eax,ebx
 0066BA01    pop         edi
 0066BA02    pop         esi
 0066BA03    pop         ebx
 0066BA04    pop         ecx
 0066BA05    pop         ecx
 0066BA06    pop         ebp
 0066BA07    ret
*}
end;

//0066BA08
function TObject.GetInterfaceEntry(const IID:TGUID):PInterfaceEntry;
begin
{*
 0066BA08    push        ebx
 0066BA09    push        esi
 0066BA0A    mov         ebx,eax
 0066BA0C    mov         eax,dword ptr [ebx-48]
 0066BA0F    test        eax,eax
>0066BA11    je          0066BA3C
 0066BA13    mov         ecx,dword ptr [eax]
 0066BA15    add         eax,4
 0066BA18    mov         esi,dword ptr [edx]
 0066BA1A    cmp         esi,dword ptr [eax]
>0066BA1C    jne         0066BA36
 0066BA1E    mov         esi,dword ptr [edx+4]
 0066BA21    cmp         esi,dword ptr [eax+4]
>0066BA24    jne         0066BA36
 0066BA26    mov         esi,dword ptr [edx+8]
 0066BA29    cmp         esi,dword ptr [eax+8]
>0066BA2C    jne         0066BA36
 0066BA2E    mov         esi,dword ptr [edx+0C]
 0066BA31    cmp         esi,dword ptr [eax+0C]
>0066BA34    je          0066BA49
 0066BA36    add         eax,1C
 0066BA39    dec         ecx
>0066BA3A    jne         0066BA18
 0066BA3C    mov         ebx,dword ptr [ebx-24]
 0066BA3F    test        ebx,ebx
>0066BA41    je          0066BA47
 0066BA43    mov         ebx,dword ptr [ebx]
>0066BA45    jmp         0066BA0C
 0066BA47    xor         eax,eax
 0066BA49    pop         esi
 0066BA4A    pop         ebx
 0066BA4B    ret
*}
end;

//0066BA4C
function @IsClass(Child:TObject; Parent:TClass):Boolean;
begin
{*
 0066BA4C    push        ebx
 0066BA4D    push        esi
 0066BA4E    mov         esi,edx
 0066BA50    mov         ebx,eax
 0066BA52    test        ebx,ebx
>0066BA54    je          0066BA63
 0066BA56    mov         edx,esi
 0066BA58    mov         eax,dword ptr [ebx]
 0066BA5A    call        TObject.InheritsFrom
 0066BA5F    test        al,al
>0066BA61    jne         0066BA68
 0066BA63    xor         eax,eax
 0066BA65    pop         esi
 0066BA66    pop         ebx
 0066BA67    ret
 0066BA68    mov         al,1
 0066BA6A    pop         esi
 0066BA6B    pop         ebx
 0066BA6C    ret
*}
end;

//0066BA70
function @AsClass(child:TObject; parent:TClass):TObject;
begin
{*
 0066BA70    test        eax,eax
>0066BA72    je          0066BA8A
 0066BA74    mov         ecx,eax
 0066BA76    mov         ecx,dword ptr [ecx]
 0066BA78    cmp         ecx,edx
>0066BA7A    je          0066BA8A
 0066BA7C    mov         ecx,dword ptr [ecx-24]
 0066BA7F    test        ecx,ecx
>0066BA81    jne         0066BA76
 0066BA83    mov         al,0A
>0066BA85    jmp         Error
 0066BA8A    ret
*}
end;

//0066BA8C
procedure GetDynaMethod;
begin
{*
 0066BA8C    push        edi
 0066BA8D    xchg        eax,esi
>0066BA8E    jmp         0066BA92
 0066BA90    mov         esi,dword ptr [esi]
 0066BA92    mov         edi,dword ptr [esi-30]
 0066BA95    test        edi,edi
>0066BA97    je          0066BAA6
 0066BA99    movzx       ecx,word ptr [edi]
 0066BA9C    push        ecx
 0066BA9D    add         edi,2
 0066BAA0    repne scas  word ptr [edi]
>0066BAA3    je          0066BAAF
 0066BAA5    pop         ecx
 0066BAA6    mov         esi,dword ptr [esi-24]
 0066BAA9    test        esi,esi
>0066BAAB    jne         0066BA90
 0066BAAD    pop         edi
 0066BAAE    ret
 0066BAAF    pop         eax
 0066BAB0    add         eax,eax
 0066BAB2    sub         eax,ecx
 0066BAB4    mov         esi,dword ptr [edi+eax*2-4]
 0066BAB8    pop         edi
 0066BAB9    ret
*}
end;

//0066BABC
procedure @CallDynaInst;
begin
{*
 0066BABC    push        eax
 0066BABD    push        ecx
 0066BABE    mov         eax,dword ptr [eax]
 0066BAC0    call        GetDynaMethod
 0066BAC5    pop         ecx
 0066BAC6    pop         eax
>0066BAC7    je          0066BACB
 0066BAC9    jmp         esi
 0066BACB    pop         ecx
>0066BACC    jmp         @AbstractError
 0066BAD1    ret
*}
end;

//0066BAD4
procedure @FindDynaInst;
begin
{*
 0066BAD4    push        esi
 0066BAD5    mov         esi,edx
 0066BAD7    mov         eax,dword ptr [eax]
 0066BAD9    call        GetDynaMethod
 0066BADE    mov         eax,esi
 0066BAE0    pop         esi
>0066BAE1    jne         0066BAE9
 0066BAE3    pop         ecx
>0066BAE4    jmp         @AbstractError
 0066BAE9    ret
*}
end;

//0066BAEC
function TObject.InheritsFrom(AClass:TClass):Boolean;
begin
{*
>0066BAEC    jmp         0066BAF0
 0066BAEE    mov         eax,dword ptr [eax]
 0066BAF0    cmp         eax,edx
>0066BAF2    je          0066BAFC
 0066BAF4    mov         eax,dword ptr [eax-24]
 0066BAF7    test        eax,eax
>0066BAF9    jne         0066BAEE
 0066BAFB    ret
 0066BAFC    mov         al,1
 0066BAFE    ret
*}
end;

//0066BB00
{*function sub_0066BB00(?:Longint):?;
begin
 0066BB00    add         eax,0FFFFFFC4
 0066BB03    mov         eax,dword ptr [eax]
 0066BB05    ret
end;*}

//0066BB08
{*function TTeeCanvas.SafeCallException:?;
begin
 0066BB08    mov         eax,8000FFFF
 0066BB0D    ret
end;*}

//0066BB10
procedure TTeeCanvas.DefaultHandler;
begin
{*
 0066BB10    ret
*}
end;

//0066BB14
procedure TTeeCanvas.AfterConstruction;
begin
{*
 0066BB14    ret
*}
end;

//0066BB18
procedure TTeeCanvas.BeforeDestruction;
begin
{*
 0066BB18    ret
*}
end;

//0066BB1C
procedure TObject.Dispatch(var Message:void );
begin
{*
 0066BB1C    push        esi
 0066BB1D    mov         si,word ptr [edx]
 0066BB20    or          si,si
>0066BB23    je          0066BB3C
 0066BB25    cmp         si,0C000
>0066BB2A    jae         0066BB3C
 0066BB2C    push        eax
 0066BB2D    mov         eax,dword ptr [eax]
 0066BB2F    call        GetDynaMethod
 0066BB34    pop         eax
>0066BB35    je          0066BB3C
 0066BB37    mov         ecx,esi
 0066BB39    pop         esi
 0066BB3A    jmp         ecx
 0066BB3C    pop         esi
 0066BB3D    mov         ecx,dword ptr [eax]
 0066BB3F    jmp         dword ptr [ecx-10]
 0066BB42    ret
*}
end;

//0066BB44
function TObject.MethodAddress(const Name:ShortString):Pointer;
begin
{*
 0066BB44    push        ebx
 0066BB45    push        esi
 0066BB46    push        edi
 0066BB47    xor         ecx,ecx
 0066BB49    xor         edi,edi
 0066BB4B    mov         bl,byte ptr [edx]
>0066BB4D    jmp         0066BB51
 0066BB4F    mov         eax,dword ptr [eax]
 0066BB51    mov         esi,dword ptr [eax-34]
 0066BB54    test        esi,esi
>0066BB56    je          0066BB6D
 0066BB58    mov         di,word ptr [esi]
 0066BB5B    add         esi,2
 0066BB5E    mov         cl,byte ptr [esi+6]
 0066BB61    cmp         cl,bl
>0066BB63    je          0066BB7A
 0066BB65    mov         cx,word ptr [esi]
 0066BB68    add         esi,ecx
 0066BB6A    dec         edi
>0066BB6B    jne         0066BB5E
 0066BB6D    mov         eax,dword ptr [eax-24]
 0066BB70    test        eax,eax
>0066BB72    jne         0066BB4F
>0066BB74    jmp         0066BB8E
 0066BB76    mov         bl,byte ptr [edx]
>0066BB78    jmp         0066BB65
 0066BB7A    mov         ch,0
 0066BB7C    mov         bl,byte ptr [ecx+esi+6]
 0066BB80    xor         bl,byte ptr [ecx+edx]
 0066BB83    and         bl,0DF
>0066BB86    jne         0066BB76
 0066BB88    dec         ecx
>0066BB89    jne         0066BB7C
 0066BB8B    mov         eax,dword ptr [esi+2]
 0066BB8E    pop         edi
 0066BB8F    pop         esi
 0066BB90    pop         ebx
 0066BB91    ret
*}
end;

//0066BB94
function TObject.MethodName(Address:Pointer):ShortString;
begin
{*
 0066BB94    push        ebx
 0066BB95    push        esi
 0066BB96    push        edi
 0066BB97    mov         edi,ecx
 0066BB99    xor         ebx,ebx
 0066BB9B    xor         ecx,ecx
>0066BB9D    jmp         0066BBA1
 0066BB9F    mov         eax,dword ptr [eax]
 0066BBA1    mov         esi,dword ptr [eax-34]
 0066BBA4    test        esi,esi
>0066BBA6    je          0066BBBB
 0066BBA8    mov         cx,word ptr [esi]
 0066BBAB    add         esi,2
 0066BBAE    cmp         edx,dword ptr [esi+2]
>0066BBB1    je          0066BBC6
 0066BBB3    mov         bx,word ptr [esi]
 0066BBB6    add         esi,ebx
 0066BBB8    dec         ecx
>0066BBB9    jne         0066BBAE
 0066BBBB    mov         eax,dword ptr [eax-24]
 0066BBBE    test        eax,eax
>0066BBC0    jne         0066BB9F
 0066BBC2    mov         byte ptr [edi],al
>0066BBC4    jmp         0066BBD0
 0066BBC6    add         esi,6
 0066BBC9    xor         ecx,ecx
 0066BBCB    mov         cl,byte ptr [esi]
 0066BBCD    inc         ecx
 0066BBCE    rep movs    byte ptr [edi],byte ptr [esi]
 0066BBD0    pop         edi
 0066BBD1    pop         esi
 0066BBD2    pop         ebx
 0066BBD3    ret
*}
end;

//0066BBD4
function TObject.FieldAddress(const Name:ShortString):Pointer;
begin
{*
 0066BBD4    push        ebx
 0066BBD5    push        esi
 0066BBD6    push        edi
 0066BBD7    xor         ecx,ecx
 0066BBD9    xor         edi,edi
 0066BBDB    mov         bl,byte ptr [edx]
 0066BBDD    push        eax
 0066BBDE    mov         eax,dword ptr [eax]
 0066BBE0    mov         esi,dword ptr [eax-38]
 0066BBE3    test        esi,esi
>0066BBE5    je          0066BBFB
 0066BBE7    mov         di,word ptr [esi]
 0066BBEA    add         esi,6
 0066BBED    mov         cl,byte ptr [esi+6]
 0066BBF0    cmp         cl,bl
>0066BBF2    je          0066BC0C
 0066BBF4    lea         esi,[ecx+esi+7]
 0066BBF8    dec         edi
>0066BBF9    jne         0066BBED
 0066BBFB    mov         eax,dword ptr [eax-24]
 0066BBFE    test        eax,eax
>0066BC00    jne         0066BBDE
 0066BC02    pop         edx
>0066BC03    jmp         0066BC20
 0066BC05    mov         bl,byte ptr [edx]
 0066BC07    mov         cl,byte ptr [esi+6]
>0066BC0A    jmp         0066BBF4
 0066BC0C    mov         bl,byte ptr [ecx+esi+6]
 0066BC10    xor         bl,byte ptr [ecx+edx]
 0066BC13    and         bl,0DF
>0066BC16    jne         0066BC05
 0066BC18    dec         ecx
>0066BC19    jne         0066BC0C
 0066BC1B    mov         eax,dword ptr [esi]
 0066BC1D    pop         edx
 0066BC1E    add         eax,edx
 0066BC20    pop         edi
 0066BC21    pop         esi
 0066BC22    pop         ebx
 0066BC23    ret
*}
end;

//0066BC24
function @ClassCreate(AClass:TClass; Alloc:Boolean):TObject;
begin
{*
 0066BC24    push        edx
 0066BC25    push        ecx
 0066BC26    push        ebx
 0066BC27    test        dl,dl
>0066BC29    jl          0066BC2E
 0066BC2B    call        dword ptr [eax-0C]
 0066BC2E    xor         edx,edx
 0066BC30    lea         ecx,[esp+10]
 0066BC34    mov         ebx,dword ptr fs:[edx]
 0066BC37    mov         dword ptr [ecx],ebx
 0066BC39    mov         dword ptr [ecx+8],ebp
 0066BC3C    mov         dword ptr [ecx+4],66BC4D
 0066BC43    mov         dword ptr [ecx+0C],eax
 0066BC46    mov         dword ptr fs:[edx],ecx
 0066BC49    pop         ebx
 0066BC4A    pop         ecx
 0066BC4B    pop         edx
 0066BC4C    ret
*}
end;

//0066BC74
procedure @ClassDestroy(Instance:TObject);
begin
{*
 0066BC74    mov         edx,dword ptr [eax]
 0066BC76    call        dword ptr [edx-8]
 0066BC79    ret
*}
end;

//0066BC7C
function @AfterConstruction(Instance:TObject):TObject;
begin
{*
 0066BC7C    push        ebx
 0066BC7D    mov         ebx,eax
 0066BC7F    mov         eax,ebx
 0066BC81    mov         edx,dword ptr [eax]
 0066BC83    call        dword ptr [edx-1C]
 0066BC86    mov         eax,ebx
 0066BC88    pop         ebx
 0066BC89    ret
*}
end;

//0066BC8C
function @BeforeDestruction(Instance:TObject; OuterMost:Shortint):TObject;
begin
{*
 0066BC8C    test        dl,dl
>0066BC8E    jg          0066BC91
 0066BC90    ret
 0066BC91    push        eax
 0066BC92    push        edx
 0066BC93    mov         edx,dword ptr [eax]
 0066BC95    call        dword ptr [edx-18]
 0066BC98    pop         edx
 0066BC99    pop         eax
 0066BC9A    ret
*}
end;

//0066BC9C
procedure NotifyReRaise;
begin
{*
 0066BC9C    cmp         byte ptr ds:[6E4E88],1
>0066BCA3    jbe         0066BCB6
 0066BCA5    push        0
 0066BCA7    push        0
 0066BCA9    push        0
 0066BCAB    push        0EEDFADF
 0066BCB0    call        dword ptr ds:[6ED2D4]
 0066BCB6    ret
*}
end;

//0066BCB8
procedure NotifyNonDelphiException;
begin
{*
 0066BCB8    cmp         byte ptr ds:[6E4E88],0
>0066BCBF    je          0066BCD8
 0066BCC1    push        eax
 0066BCC2    push        eax
 0066BCC3    push        edx
 0066BCC4    push        esp
 0066BCC5    push        2
 0066BCC7    push        0
 0066BCC9    push        0EEDFAE4
 0066BCCE    call        dword ptr ds:[6ED2D4]
 0066BCD4    add         esp,8
 0066BCD7    pop         eax
 0066BCD8    ret
*}
end;

//0066BCDC
procedure NotifyExcept;
begin
{*
 0066BCDC    push        esp
 0066BCDD    push        1
 0066BCDF    push        0
 0066BCE1    push        0EEDFAE0
 0066BCE6    call        dword ptr ds:[6ED2D4]
 0066BCEC    add         esp,4
 0066BCEF    pop         eax
 0066BCF0    ret
*}
end;

//0066BCF4
procedure NotifyOnExcept;
begin
{*
 0066BCF4    cmp         byte ptr ds:[6E4E88],1
>0066BCFB    jbe         0066BD06
 0066BCFD    push        eax
 0066BCFE    push        dword ptr [ebx+4]
>0066BD01    jmp         NotifyExcept
 0066BD06    ret
*}
end;

//0066BD08
procedure NotifyAnyExcept;
begin
{*
 0066BD08    cmp         byte ptr ds:[6E4E88],1
>0066BD0F    jbe         0066BD18
 0066BD11    push        eax
 0066BD12    push        ebx
>0066BD13    jmp         NotifyExcept
 0066BD18    ret
*}
end;

//0066BD1C
procedure CheckJmp;
begin
{*
 0066BD1C    test        ecx,ecx
>0066BD1E    je          0066BD39
 0066BD20    mov         eax,dword ptr [ecx+1]
 0066BD23    cmp         byte ptr [ecx],0E9
>0066BD26    je          0066BD34
 0066BD28    cmp         byte ptr [ecx],0EB
>0066BD2B    jne         0066BD39
 0066BD2D    movsx       eax,al
 0066BD30    inc         ecx
 0066BD31    inc         ecx
>0066BD32    jmp         0066BD37
 0066BD34    add         ecx,5
 0066BD37    add         ecx,eax
 0066BD39    ret
*}
end;

//0066BD3C
procedure NotifyExceptFinally;
begin
{*
 0066BD3C    cmp         byte ptr ds:[6E4E88],1
>0066BD43    jbe         0066BD62
 0066BD45    push        eax
 0066BD46    push        edx
 0066BD47    push        ecx
 0066BD48    call        CheckJmp
 0066BD4D    push        ecx
 0066BD4E    push        esp
 0066BD4F    push        1
 0066BD51    push        0
 0066BD53    push        0EEDFAE1
 0066BD58    call        dword ptr ds:[6ED2D4]
 0066BD5E    pop         ecx
 0066BD5F    pop         ecx
 0066BD60    pop         edx
 0066BD61    pop         eax
 0066BD62    ret
*}
end;

//0066BD64
procedure NotifyTerminate;
begin
{*
 0066BD64    cmp         byte ptr ds:[6E4E88],1
>0066BD6B    jbe         0066BD7F
 0066BD6D    push        edx
 0066BD6E    push        esp
 0066BD6F    push        1
 0066BD71    push        0
 0066BD73    push        0EEDFAE2
 0066BD78    call        dword ptr ds:[6ED2D4]
 0066BD7E    pop         edx
 0066BD7F    ret
*}
end;

//0066BD80
procedure NotifyUnhandled;
begin
{*
 0066BD80    push        eax
 0066BD81    push        edx
 0066BD82    cmp         byte ptr ds:[6E4E88],1
>0066BD89    jbe         0066BD9B
 0066BD8B    push        esp
 0066BD8C    push        2
 0066BD8E    push        0
 0066BD90    push        0EEDFAE3
 0066BD95    call        dword ptr ds:[6ED2D4]
 0066BD9B    pop         edx
 0066BD9C    pop         eax
 0066BD9D    ret
*}
end;

//0066BDA0
procedure @HandleAnyException;
begin
{*
 0066BDA0    mov         eax,dword ptr [esp+4]
 0066BDA4    test        dword ptr [eax+4],6
>0066BDAB    jne         0066BEC4
 0066BDB1    cmp         dword ptr [eax],0EEDFADE
 0066BDB7    mov         edx,dword ptr [eax+18]
 0066BDBA    mov         ecx,dword ptr [eax+14]
>0066BDBD    je          0066BE2D
 0066BDBF    cld
 0066BDC0    call        @FpuInit
 0066BDC5    mov         edx,dword ptr ds:[6ED2D0];ExceptObjProc:Pointer
 0066BDCB    test        edx,edx
>0066BDCD    je          0066BEC4
 0066BDD3    call        edx
 0066BDD5    test        eax,eax
>0066BDD7    je          0066BEC4
 0066BDDD    mov         edx,dword ptr [esp+0C]
 0066BDE1    mov         ecx,dword ptr [esp+4]
 0066BDE5    cmp         dword ptr [ecx],0EEFFACE
>0066BDEB    je          0066BE24
 0066BDED    call        NotifyNonDelphiException
 0066BDF2    cmp         byte ptr ds:[6E4E8C],0
>0066BDF9    jbe         0066BE24
 0066BDFB    cmp         byte ptr ds:[6E4E88],0
>0066BE02    ja          0066BE24
 0066BE04    lea         ecx,[esp+4]
 0066BE08    push        eax
 0066BE09    push        ecx
 0066BE0A    call        KERNEL32.UnhandledExceptionFilter
 0066BE0F    cmp         eax,0
 0066BE12    pop         eax
>0066BE13    je          0066BEC4
 0066BE19    mov         edx,eax
 0066BE1B    mov         eax,dword ptr [esp+4]
 0066BE1F    mov         ecx,dword ptr [eax+0C]
>0066BE22    jmp         0066BE54
 0066BE24    mov         edx,eax
 0066BE26    mov         eax,dword ptr [esp+4]
 0066BE2A    mov         ecx,dword ptr [eax+0C]
 0066BE2D    cmp         byte ptr ds:[6E4E8C],1
>0066BE34    jbe         0066BE54
 0066BE36    cmp         byte ptr ds:[6E4E88],0
>0066BE3D    ja          0066BE54
 0066BE3F    push        eax
 0066BE40    lea         eax,[esp+8]
 0066BE44    push        edx
 0066BE45    push        ecx
 0066BE46    push        eax
 0066BE47    call        KERNEL32.UnhandledExceptionFilter
 0066BE4C    cmp         eax,0
 0066BE4F    pop         ecx
 0066BE50    pop         edx
 0066BE51    pop         eax
>0066BE52    je          0066BEC4
 0066BE54    or          dword ptr [eax+4],2
 0066BE58    push        ebx
 0066BE59    xor         ebx,ebx
 0066BE5B    push        esi
 0066BE5C    push        edi
 0066BE5D    push        ebp
 0066BE5E    mov         ebx,dword ptr fs:[ebx]
 0066BE61    push        ebx
 0066BE62    push        eax
 0066BE63    push        edx
 0066BE64    push        ecx
 0066BE65    mov         edx,dword ptr [esp+28]
 0066BE69    push        0
 0066BE6B    push        eax
 0066BE6C    push        66BE78
 0066BE71    push        edx
 0066BE72    call        dword ptr ds:[6ED2D8]
 0066BE78    mov         edi,dword ptr [esp+28]
 0066BE7C    call        @GetTls
 0066BE81    push        dword ptr [eax+8];{RaiseListPtr:Pointer}
 0066BE87    mov         dword ptr [eax+8],esp;{RaiseListPtr:Pointer}
 0066BE8D    mov         ebp,dword ptr [edi+8]
 0066BE90    mov         ebx,dword ptr [edi+4]
 0066BE93    mov         dword ptr [edi+4],66BEA4
 0066BE9A    add         ebx,5
 0066BE9D    call        NotifyAnyExcept
 0066BEA2    jmp         ebx
>0066BEA4    jmp         @HandleFinally
 0066BEA9    call        @GetTls
 0066BEAE    mov         ecx,dword ptr [eax+8];{RaiseListPtr:Pointer}
 0066BEB4    mov         edx,dword ptr [ecx]
 0066BEB6    mov         dword ptr [eax+8],edx;{RaiseListPtr:Pointer}
 0066BEBC    mov         eax,dword ptr [ecx+8]
>0066BEBF    jmp         TObject.Free
 0066BEC4    mov         eax,1
 0066BEC9    ret
*}
end;

//0066BECC
procedure @HandleOnException;
begin
{*
 0066BECC    mov         eax,dword ptr [esp+4]
 0066BED0    test        dword ptr [eax+4],6
>0066BED7    jne         0066C04C
 0066BEDD    cmp         dword ptr [eax],0EEDFADE
>0066BEE3    je          0066BF04
 0066BEE5    cld
 0066BEE6    call        @FpuInit
 0066BEEB    mov         edx,dword ptr ds:[6ED2CC];ExceptClsProc:Pointer
 0066BEF1    test        edx,edx
>0066BEF3    je          0066C04C
 0066BEF9    call        edx
 0066BEFB    test        eax,eax
>0066BEFD    jne         0066BF09
>0066BEFF    jmp         0066C04C
 0066BF04    mov         eax,dword ptr [eax+18]
 0066BF07    mov         eax,dword ptr [eax]
 0066BF09    mov         edx,dword ptr [esp+8]
 0066BF0D    push        ebx
 0066BF0E    push        esi
 0066BF0F    push        edi
 0066BF10    push        ebp
 0066BF11    mov         ecx,dword ptr [edx+4]
 0066BF14    mov         ebx,dword ptr [ecx+5]
 0066BF17    lea         esi,[ecx+9]
 0066BF1A    mov         ebp,eax
 0066BF1C    mov         eax,dword ptr [esi]
 0066BF1E    test        eax,eax
>0066BF20    je          0066BF65
 0066BF22    mov         edi,ebp
>0066BF24    jmp         0066BF28
 0066BF26    mov         edi,dword ptr [edi]
 0066BF28    mov         eax,dword ptr [eax]
 0066BF2A    cmp         eax,edi
>0066BF2C    je          0066BF65
 0066BF2E    mov         ecx,dword ptr [eax-28]
 0066BF31    cmp         ecx,dword ptr [edi-28]
>0066BF34    jne         0066BF4D
 0066BF36    mov         eax,dword ptr [eax-2C]
 0066BF39    mov         edx,dword ptr [edi-2C]
 0066BF3C    xor         ecx,ecx
 0066BF3E    mov         cl,byte ptr [eax]
 0066BF40    cmp         cl,byte ptr [edx]
>0066BF42    jne         0066BF4D
 0066BF44    inc         eax
 0066BF45    inc         edx
 0066BF46    call        @AStrCmp
>0066BF4B    je          0066BF65
 0066BF4D    mov         edi,dword ptr [edi-24]
 0066BF50    mov         eax,dword ptr [esi]
 0066BF52    test        edi,edi
>0066BF54    jne         0066BF26
 0066BF56    add         esi,8
 0066BF59    dec         ebx
>0066BF5A    jne         0066BF1C
 0066BF5C    pop         ebp
 0066BF5D    pop         edi
 0066BF5E    pop         esi
 0066BF5F    pop         ebx
>0066BF60    jmp         0066C04C
 0066BF65    mov         eax,dword ptr [esp+14]
 0066BF69    cmp         dword ptr [eax],0EEDFADE
 0066BF6F    mov         edx,dword ptr [eax+18]
 0066BF72    mov         ecx,dword ptr [eax+14]
>0066BF75    je          0066BFB8
 0066BF77    call        dword ptr ds:[6ED2D0]
 0066BF7D    mov         edx,dword ptr [esp+1C]
 0066BF81    call        NotifyNonDelphiException
 0066BF86    cmp         byte ptr ds:[6E4E8C],0
>0066BF8D    jbe         0066BFAD
 0066BF8F    cmp         byte ptr ds:[6E4E88],0
>0066BF96    ja          0066BFAD
 0066BF98    lea         ecx,[esp+4]
 0066BF9C    push        eax
 0066BF9D    push        ecx
 0066BF9E    call        KERNEL32.UnhandledExceptionFilter
 0066BFA3    cmp         eax,0
 0066BFA6    pop         eax
>0066BFA7    je          0066C04C
 0066BFAD    mov         edx,eax
 0066BFAF    mov         eax,dword ptr [esp+14]
 0066BFB3    mov         ecx,dword ptr [eax+0C]
>0066BFB6    jmp         0066BFDF
 0066BFB8    cmp         byte ptr ds:[6E4E8C],1
>0066BFBF    jbe         0066BFDF
 0066BFC1    cmp         byte ptr ds:[6E4E88],0
>0066BFC8    ja          0066BFDF
 0066BFCA    push        eax
 0066BFCB    lea         eax,[esp+8]
 0066BFCF    push        edx
 0066BFD0    push        ecx
 0066BFD1    push        eax
 0066BFD2    call        KERNEL32.UnhandledExceptionFilter
 0066BFD7    cmp         eax,0
 0066BFDA    pop         ecx
 0066BFDB    pop         edx
 0066BFDC    pop         eax
>0066BFDD    je          0066C04C
 0066BFDF    xor         ebx,ebx
 0066BFE1    mov         ebx,dword ptr fs:[ebx]
 0066BFE4    push        ebx
 0066BFE5    push        eax
 0066BFE6    push        edx
 0066BFE7    push        ecx
 0066BFE8    mov         edx,dword ptr [esp+28]
 0066BFEC    or          dword ptr [eax+4],2
 0066BFF0    push        esi
 0066BFF1    push        0
 0066BFF3    push        eax
 0066BFF4    push        66C000
 0066BFF9    push        edx
 0066BFFA    call        dword ptr ds:[6ED2D8]
 0066C000    pop         ebx
 0066C001    mov         edi,dword ptr [esp+28]
 0066C005    call        @GetTls
 0066C00A    push        dword ptr [eax+8];{RaiseListPtr:Pointer}
 0066C010    mov         dword ptr [eax+8],esp;{RaiseListPtr:Pointer}
 0066C016    mov         ebp,dword ptr [edi+8]
 0066C019    mov         dword ptr [edi+4],66C02C
 0066C020    mov         eax,dword ptr [esp+8]
 0066C024    call        NotifyOnExcept
 0066C029    jmp         dword ptr [ebx+4]
>0066C02C    jmp         @HandleFinally
 0066C031    call        @GetTls
 0066C036    mov         ecx,dword ptr [eax+8];{RaiseListPtr:Pointer}
 0066C03C    mov         edx,dword ptr [ecx]
 0066C03E    mov         dword ptr [eax+8],edx;{RaiseListPtr:Pointer}
 0066C044    mov         eax,dword ptr [ecx+8]
>0066C047    jmp         TObject.Free
 0066C04C    mov         eax,1
 0066C051    ret
*}
end;

//0066C054
procedure @HandleFinally;
begin
{*
 0066C054    mov         eax,dword ptr [esp+4]
 0066C058    mov         edx,dword ptr [esp+8]
 0066C05C    test        dword ptr [eax+4],6
>0066C063    je          0066C084
 0066C065    mov         ecx,dword ptr [edx+4]
 0066C068    mov         dword ptr [edx+4],66C084
 0066C06F    push        ebx
 0066C070    push        esi
 0066C071    push        edi
 0066C072    push        ebp
 0066C073    mov         ebp,dword ptr [edx+8]
 0066C076    add         ecx,5
 0066C079    call        NotifyExceptFinally
 0066C07E    call        ecx
 0066C080    pop         ebp
 0066C081    pop         edi
 0066C082    pop         esi
 0066C083    pop         ebx
 0066C084    mov         eax,1
 0066C089    ret
*}
end;

//0066C08C
procedure @RaiseExcept;
begin
{*
 0066C08C    or          eax,eax
>0066C08E    jne         0066C09A
 0066C090    mov         eax,0D8
 0066C095    call        @RunError
 0066C09A    pop         edx
 0066C09B    push        esp
 0066C09C    push        ebp
 0066C09D    push        edi
 0066C09E    push        esi
 0066C09F    push        ebx
 0066C0A0    push        eax
 0066C0A1    push        edx
 0066C0A2    push        esp
 0066C0A3    push        7
 0066C0A5    push        1
 0066C0A7    push        0EEDFADE
 0066C0AC    push        edx
 0066C0AD    jmp         dword ptr ds:[6ED2D4]
 0066C0B3    ret
*}
end;

//0066C0B4
procedure @RaiseAgain;
begin
{*
 0066C0B4    mov         eax,dword ptr [esp+30]
 0066C0B8    mov         dword ptr [eax+4],66C0FF
 0066C0BF    call        @GetTls
 0066C0C4    mov         edx,dword ptr [eax+8];{RaiseListPtr:Pointer}
 0066C0CA    mov         ecx,dword ptr [edx]
 0066C0CC    mov         dword ptr [eax+8],ecx;{RaiseListPtr:Pointer}
 0066C0D2    mov         eax,dword ptr [edx+0C]
 0066C0D5    and         dword ptr [eax+4],0FFFFFFFD
 0066C0D9    cmp         dword ptr [eax],0EEDFADE
>0066C0DF    je          0066C0EE
 0066C0E1    mov         eax,dword ptr [edx+8]
 0066C0E4    call        TObject.Free
 0066C0E9    call        NotifyReRaise
 0066C0EE    xor         eax,eax
 0066C0F0    add         esp,14
 0066C0F3    mov         edx,dword ptr fs:[eax]
 0066C0F6    pop         ecx
 0066C0F7    mov         edx,dword ptr [edx]
 0066C0F9    mov         dword ptr [ecx],edx
 0066C0FB    pop         ebp
 0066C0FC    pop         edi
 0066C0FD    pop         esi
 0066C0FE    pop         ebx
 0066C0FF    mov         eax,1
 0066C104    ret
*}
end;

//0066C108
procedure @DoneExcept;
begin
{*
 0066C108    call        @GetTls
 0066C10D    mov         edx,dword ptr [eax+8];{RaiseListPtr:Pointer}
 0066C113    mov         ecx,dword ptr [edx]
 0066C115    mov         dword ptr [eax+8],ecx;{RaiseListPtr:Pointer}
 0066C11B    mov         eax,dword ptr [edx+8]
 0066C11E    call        TObject.Free
 0066C123    pop         edx
 0066C124    mov         esp,dword ptr [esp+2C]
 0066C128    xor         eax,eax
 0066C12A    pop         ecx
 0066C12B    mov         dword ptr fs:[eax],ecx
 0066C12E    pop         eax
 0066C12F    pop         ebp
 0066C130    call        NotifyTerminate
 0066C135    jmp         edx
 0066C137    ret
*}
end;

//0066C138
procedure @TryFinallyExit;
begin
{*
 0066C138    xor         edx,edx
 0066C13A    mov         ecx,dword ptr [esp+8]
 0066C13E    mov         eax,dword ptr [esp+4]
 0066C142    add         ecx,5
 0066C145    mov         dword ptr fs:[edx],eax
 0066C148    call        ecx
 0066C14A    ret         0C
*}
end;

//0066C150
procedure MapToRunError(P:PExceptionRecord); stdcall;
begin
{*
 0066C150    push        ebp
 0066C151    mov         ebp,esp
 0066C153    mov         edx,dword ptr [ebp+8]
 0066C156    mov         eax,dword ptr [edx]
 0066C158    cmp         eax,0C0000092
>0066C15D    jg          0066C18B
>0066C15F    je          0066C1BD
 0066C161    cmp         eax,0C000008E
>0066C166    jg          0066C17D
>0066C168    je          0066C1C1
 0066C16A    sub         eax,0C0000005
>0066C16F    je          0066C1CD
 0066C171    sub         eax,87
>0066C176    je          0066C1B5
 0066C178    dec         eax
>0066C179    je          0066C1C9
>0066C17B    jmp         0066C1DD
 0066C17D    add         eax,3FFFFF71
 0066C182    sub         eax,2
>0066C185    jb          0066C1BD
>0066C187    je          0066C1B9
>0066C189    jmp         0066C1DD
 0066C18B    cmp         eax,0C0000096
>0066C190    jg          0066C1A3
>0066C192    je          0066C1D1
 0066C194    sub         eax,0C0000093
>0066C199    je          0066C1C9
 0066C19B    dec         eax
>0066C19C    je          0066C1B1
 0066C19E    dec         eax
>0066C19F    je          0066C1C5
>0066C1A1    jmp         0066C1DD
 0066C1A3    sub         eax,0C00000FD
>0066C1A8    je          0066C1D9
 0066C1AA    sub         eax,3D
>0066C1AD    je          0066C1D5
>0066C1AF    jmp         0066C1DD
 0066C1B1    mov         al,0C8
>0066C1B3    jmp         0066C1DF
 0066C1B5    mov         al,0C9
>0066C1B7    jmp         0066C1DF
 0066C1B9    mov         al,0CD
>0066C1BB    jmp         0066C1DF
 0066C1BD    mov         al,0CF
>0066C1BF    jmp         0066C1DF
 0066C1C1    mov         al,0C8
>0066C1C3    jmp         0066C1DF
 0066C1C5    mov         al,0D7
>0066C1C7    jmp         0066C1DF
 0066C1C9    mov         al,0CE
>0066C1CB    jmp         0066C1DF
 0066C1CD    mov         al,0D8
>0066C1CF    jmp         0066C1DF
 0066C1D1    mov         al,0DA
>0066C1D3    jmp         0066C1DF
 0066C1D5    mov         al,0D9
>0066C1D7    jmp         0066C1DF
 0066C1D9    mov         al,0CA
>0066C1DB    jmp         0066C1DF
 0066C1DD    mov         al,0FF
 0066C1DF    and         eax,0FF
 0066C1E4    mov         edx,dword ptr [edx+0C]
 0066C1E7    call        RunErrorAt
 0066C1EC    pop         ebp
 0066C1ED    ret         4
*}
end;

//0066C1F0
procedure @ExceptionHandler;
begin
{*
 0066C1F0    mov         eax,dword ptr [esp+4]
 0066C1F4    test        dword ptr [eax+4],6
>0066C1FB    jne         0066C28A
 0066C201    cmp         byte ptr ds:[6E4E88],0
>0066C208    ja          0066C219
 0066C20A    lea         eax,[esp+4]
 0066C20E    push        eax
 0066C20F    call        KERNEL32.UnhandledExceptionFilter
 0066C214    cmp         eax,0
>0066C217    je          0066C28A
 0066C219    mov         eax,dword ptr [esp+4]
 0066C21D    cld
 0066C21E    call        @FpuInit
 0066C223    mov         edx,dword ptr [esp+8]
 0066C227    push        0
 0066C229    push        eax
 0066C22A    push        66C236
 0066C22F    push        edx
 0066C230    call        dword ptr ds:[6ED2D8]
 0066C236    mov         ebx,dword ptr [esp+4]
 0066C23A    cmp         dword ptr [ebx],0EEDFADE
 0066C240    mov         edx,dword ptr [ebx+14]
 0066C243    mov         eax,dword ptr [ebx+18]
>0066C246    je          0066C265
 0066C248    mov         edx,dword ptr ds:[6ED2D0];ExceptObjProc:Pointer
 0066C24E    test        edx,edx
>0066C250    je          0066C150
 0066C256    mov         eax,ebx
 0066C258    call        edx
 0066C25A    test        eax,eax
>0066C25C    je          0066C150
 0066C262    mov         edx,dword ptr [ebx+0C]
 0066C265    call        NotifyUnhandled
 0066C26A    mov         ecx,dword ptr ds:[6ED2C4];ExceptProc:Pointer
 0066C270    test        ecx,ecx
>0066C272    je          0066C276
 0066C274    call        ecx
 0066C276    mov         ecx,dword ptr [esp+4]
 0066C27A    mov         eax,0D9
 0066C27F    mov         edx,dword ptr [ecx+14]
 0066C282    mov         dword ptr [esp],edx
>0066C285    jmp         @RunError
 0066C28A    xor         eax,eax
 0066C28C    ret
*}
end;

//0066C290
procedure UnsetExceptionHandler;
begin
{*
 0066C290    xor         edx,edx
 0066C292    mov         eax,[006ED900]
 0066C297    test        eax,eax
>0066C299    je          0066C2B7
 0066C29B    mov         ecx,dword ptr fs:[edx]
 0066C29E    cmp         eax,ecx
>0066C2A0    jne         0066C2AA
 0066C2A2    mov         eax,dword ptr [eax]
 0066C2A4    mov         dword ptr fs:[edx],eax
 0066C2A7    ret
 0066C2A8    mov         ecx,dword ptr [ecx]
 0066C2AA    cmp         ecx,0FFFFFFFF
>0066C2AD    je          0066C2B7
 0066C2AF    cmp         dword ptr [ecx],eax
>0066C2B1    jne         0066C2A8
 0066C2B3    mov         eax,dword ptr [eax]
 0066C2B5    mov         dword ptr [ecx],eax
 0066C2B7    ret
*}
end;

//0066C2B8
procedure FinalizeUnits;
begin
{*
 0066C2B8    push        ebp
 0066C2B9    mov         ebp,esp
 0066C2BB    push        ebx
 0066C2BC    push        esi
 0066C2BD    push        edi
 0066C2BE    mov         edi,6ED8FC;InitContext:TInitContext
 0066C2C3    mov         eax,dword ptr [edi+8]
 0066C2C6    test        eax,eax
>0066C2C8    je          0066C312
 0066C2CA    mov         ebx,dword ptr [edi+0C]
 0066C2CD    mov         esi,dword ptr [eax+4]
 0066C2D0    xor         edx,edx
 0066C2D2    push        ebp
 0066C2D3    push        66C2FE
 0066C2D8    push        dword ptr fs:[edx]
 0066C2DB    mov         dword ptr fs:[edx],esp
 0066C2DE    test        ebx,ebx
>0066C2E0    jle         0066C2F4
 0066C2E2    dec         ebx
 0066C2E3    mov         dword ptr [edi+0C],ebx
 0066C2E6    mov         eax,dword ptr [esi+ebx*8+4]
 0066C2EA    test        eax,eax
>0066C2EC    je          0066C2F0
 0066C2EE    call        eax
 0066C2F0    test        ebx,ebx
>0066C2F2    jg          0066C2E2
 0066C2F4    xor         eax,eax
 0066C2F6    pop         edx
 0066C2F7    pop         ecx
 0066C2F8    pop         ecx
 0066C2F9    mov         dword ptr fs:[eax],edx
>0066C2FC    jmp         0066C312
>0066C2FE    jmp         @HandleAnyException
 0066C303    call        FinalizeUnits
 0066C308    call        @RaiseAgain
 0066C30D    call        @DoneExcept
 0066C312    pop         edi
 0066C313    pop         esi
 0066C314    pop         ebx
 0066C315    pop         ebp
 0066C316    ret
*}
end;

//0066C318
procedure @InitResStringImports;
begin
{*
 0066C318    push        ebx
 0066C319    xor         ebx,ebx
 0066C31B    push        edi
 0066C31C    push        esi
 0066C31D    mov         edi,dword ptr [eax+ebx]
 0066C320    lea         esi,[eax+ebx+4]
 0066C324    mov         eax,dword ptr [esi+4]
 0066C327    mov         edx,dword ptr [esi]
 0066C329    mov         eax,dword ptr [eax+ebx]
 0066C32C    add         edx,ebx
 0066C32E    call        LoadResString
 0066C333    add         esi,8
 0066C336    dec         edi
>0066C337    jne         0066C324
 0066C339    pop         esi
 0066C33A    pop         edi
 0066C33B    pop         ebx
 0066C33C    ret
*}
end;

//0066C340
procedure @InitImports;
begin
{*
 0066C340    push        ebx
 0066C341    xor         ebx,ebx
 0066C343    push        edi
 0066C344    push        esi
 0066C345    mov         edi,dword ptr [eax+ebx]
 0066C348    lea         esi,[eax+ebx+4]
 0066C34C    mov         eax,dword ptr [esi+4]
 0066C34F    mov         edx,dword ptr [esi]
 0066C351    mov         eax,dword ptr [eax+ebx]
 0066C354    add         eax,dword ptr [esi+8]
 0066C357    mov         dword ptr [edx+ebx],eax
 0066C35A    add         esi,0C
 0066C35D    dec         edi
>0066C35E    jne         0066C34C
 0066C360    pop         esi
 0066C361    pop         edi
 0066C362    pop         ebx
 0066C363    ret
*}
end;

//0066C364
procedure MakeErrorMessage;
begin
{*
 0066C364    push        ebx
 0066C365    push        esi
 0066C366    push        edi
 0066C367    mov         esi,6E4EC8
 0066C36C    mov         cl,10
 0066C36E    mov         ebx,dword ptr ds:[6E4E70]
 0066C374    mov         eax,ebx
 0066C376    mov         edi,0A
 0066C37B    cdq
 0066C37C    idiv        eax,edi
 0066C37E    add         dl,30
 0066C381    xor         eax,eax
 0066C383    mov         al,cl
 0066C385    mov         byte ptr [esi+eax],dl
 0066C388    mov         eax,ebx
 0066C38A    mov         ebx,0A
 0066C38F    cdq
 0066C390    idiv        eax,ebx
 0066C392    mov         ebx,eax
 0066C394    dec         ecx
 0066C395    test        ebx,ebx
>0066C397    jne         0066C374
 0066C399    mov         cl,1C
 0066C39B    mov         eax,[006E4E74]
 0066C3A0    mov         edx,eax
 0066C3A2    and         edx,0F
 0066C3A5    mov         dl,byte ptr [edx+6E4EF0]
 0066C3AB    xor         ebx,ebx
 0066C3AD    mov         bl,cl
 0066C3AF    mov         byte ptr [esi+ebx],dl
 0066C3B2    shr         eax,4
 0066C3B5    dec         ecx
 0066C3B6    test        eax,eax
>0066C3B8    jne         0066C3A0
 0066C3BA    pop         edi
 0066C3BB    pop         esi
 0066C3BC    pop         ebx
 0066C3BD    ret
*}
end;

//0066C3C0
procedure ExitDll;
begin
{*
 0066C3C0    xor         eax,eax
 0066C3C2    xchg        eax,dword ptr ds:[6E4E70]
 0066C3C8    neg         eax
 0066C3CA    sbb         eax,eax
 0066C3CC    inc         eax
 0066C3CD    mov         edi,6ED8FC;InitContext:TInitContext
 0066C3D2    mov         ebx,dword ptr [edi+18]
 0066C3D5    mov         ebp,dword ptr [edi+14]
 0066C3D8    push        dword ptr [edi+1C]
 0066C3DB    push        dword ptr [edi+20]
 0066C3DE    mov         esi,dword ptr [edi]
 0066C3E0    mov         ecx,0B
 0066C3E5    rep movs    dword ptr [edi],dword ptr [esi]
 0066C3E7    pop         edi
 0066C3E8    pop         esi
 0066C3E9    leave
 0066C3EA    ret         0C
*}
end;

//0066C3F0
procedure WriteErrorMessage;
begin
{*
 0066C3F0    push        ecx
 0066C3F1    cmp         byte ptr ds:[6ED310],0;IsConsole:Boolean
>0066C3F8    je          0066C451
 0066C3FA    cmp         word ptr ds:[6ED4E4],0D7B2;gvar_006ED4E4
>0066C403    jne         0066C419
 0066C405    cmp         dword ptr ds:[6ED4EC],0
>0066C40C    jbe         0066C419
 0066C40E    mov         eax,6ED4E0;Output:Text
 0066C413    call        dword ptr ds:[6ED4FC]
 0066C419    push        0
 0066C41B    lea         eax,[esp+4]
 0066C41F    push        eax
 0066C420    push        1E
 0066C422    push        6E4EC8
 0066C427    push        0F5
 0066C429    call        KERNEL32.GetStdHandle
 0066C42E    push        eax
 0066C42F    call        KERNEL32.WriteFile
 0066C434    push        0
 0066C436    lea         eax,[esp+4]
 0066C43A    push        eax
 0066C43B    push        2
 0066C43D    push        66C478;#13+#10
 0066C442    push        0F5
 0066C444    call        KERNEL32.GetStdHandle
 0066C449    push        eax
 0066C44A    call        KERNEL32.WriteFile
 0066C44F    pop         edx
 0066C450    ret
 0066C451    cmp         byte ptr ds:[6E4E90],0
>0066C458    jne         0066C46D
 0066C45A    push        0
 0066C45C    push        6E4EE8
 0066C461    push        6E4EC8
 0066C466    push        0
 0066C468    call        USER32.MessageBoxA
 0066C46D    pop         edx
 0066C46E    ret
*}
end;

//0066C47C
procedure @Halt0;
begin
{*
 0066C47C    push        ebx
 0066C47D    push        esi
 0066C47E    push        edi
 0066C47F    push        ebp
 0066C480    mov         ebx,6ED8FC;InitContext:TInitContext
 0066C485    mov         esi,6E4E70
 0066C48A    mov         edi,6ED30C;ExitProc:Pointer
 0066C48F    cmp         byte ptr [ebx+28],0
>0066C493    jne         0066C4AB
 0066C495    cmp         dword ptr [edi],0
>0066C498    je          0066C4AB
 0066C49A    mov         edx,dword ptr [edi]
 0066C49C    mov         eax,edx
 0066C49E    xor         edx,edx
 0066C4A0    mov         dword ptr [edi],edx
 0066C4A2    mov         ebp,eax
 0066C4A4    call        ebp
 0066C4A6    cmp         dword ptr [edi],0
>0066C4A9    jne         0066C49A
 0066C4AB    cmp         dword ptr ds:[6E4E74],0
>0066C4B2    je          0066C4C5
 0066C4B4    call        MakeErrorMessage
 0066C4B9    call        WriteErrorMessage
 0066C4BE    xor         eax,eax
 0066C4C0    mov         [006E4E74],eax
 0066C4C5    cmp         byte ptr [ebx+28],2
>0066C4C9    jne         0066C4D5
 0066C4CB    cmp         dword ptr [esi],0
>0066C4CE    jne         0066C4D5
 0066C4D0    xor         eax,eax
 0066C4D2    mov         dword ptr [ebx+0C],eax
 0066C4D5    call        FinalizeUnits
 0066C4DA    cmp         byte ptr [ebx+28],1
>0066C4DE    jbe         0066C4E5
 0066C4E0    cmp         dword ptr [esi],0
>0066C4E3    je          0066C506
 0066C4E5    mov         eax,dword ptr [ebx+10]
 0066C4E8    test        eax,eax
>0066C4EA    je          0066C506
 0066C4EC    call        UnregisterModule
 0066C4F1    mov         edx,dword ptr [ebx+10]
 0066C4F4    mov         eax,dword ptr [edx+10]
 0066C4F7    cmp         eax,dword ptr [edx+4]
>0066C4FA    je          0066C506
 0066C4FC    test        eax,eax
>0066C4FE    je          0066C506
 0066C500    push        eax
 0066C501    call        KERNEL32.FreeLibrary
 0066C506    call        UnsetExceptionHandler
 0066C50B    cmp         byte ptr [ebx+28],1
>0066C50F    jne         0066C514
 0066C511    call        dword ptr [ebx+24]
 0066C514    cmp         byte ptr [ebx+28],0
>0066C518    je          0066C51F
 0066C51A    call        ExitDll
 0066C51F    cmp         dword ptr [ebx],0
>0066C522    jne         0066C53B
 0066C524    cmp         dword ptr ds:[6ED2E8],0;ExitProcessProc:procedure
>0066C52B    je          0066C533
 0066C52D    call        dword ptr ds:[6ED2E8]
 0066C533    mov         eax,dword ptr [esi]
 0066C535    push        eax
 0066C536    call        KERNEL32.ExitProcess
 0066C53B    mov         eax,dword ptr [ebx]
 0066C53D    push        esi
 0066C53E    mov         esi,eax
 0066C540    mov         edi,ebx
 0066C542    mov         ecx,0B
 0066C547    rep movs    dword ptr [edi],dword ptr [esi]
 0066C549    pop         esi
>0066C54A    jmp         0066C4C5
 0066C54F    pop         ebp
 0066C550    pop         edi
 0066C551    pop         esi
 0066C552    pop         ebx
 0066C553    ret
*}
end;

//0066C554
procedure @Halt(Code:Integer);
begin
{*
 0066C554    mov         [006E4E70],eax
 0066C559    call        @Halt0
 0066C55E    ret
*}
end;

//0066C560
procedure @RunError;
begin
{*
 0066C560    pop         dword ptr ds:[6E4E74]
>0066C566    jmp         @Halt
 0066C56B    ret
*}
end;

//0066C56C
function ThreadWrapper(Parameter:Pointer):Integer; stdcall;
begin
{*
 0066C56C    push        ebp
 0066C56D    mov         ebp,esp
 0066C56F    call        @FpuInit
 0066C574    push        ebp
 0066C575    xor         ecx,ecx
 0066C577    push        66C1F0;@ExceptionHandler
 0066C57C    mov         edx,dword ptr fs:[ecx]
 0066C57F    push        edx
 0066C580    mov         dword ptr fs:[ecx],esp
 0066C583    mov         eax,dword ptr [ebp+8]
 0066C586    mov         ecx,dword ptr [eax+4]
 0066C589    mov         edx,dword ptr [eax]
 0066C58B    push        ecx
 0066C58C    push        edx
 0066C58D    call        @FreeMem
 0066C592    pop         edx
 0066C593    pop         eax
 0066C594    call        edx
 0066C596    xor         edx,edx
 0066C598    pop         ecx
 0066C599    mov         dword ptr fs:[edx],ecx
 0066C59C    pop         ecx
 0066C59D    pop         ebp
 0066C59E    pop         ebp
 0066C59F    ret         4
*}
end;

//0066C5A4
function BeginThread(SecurityAttributes:Pointer; StackSize:Cardinal; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):Integer;
begin
{*
 0066C5A4    push        ebp
 0066C5A5    mov         ebp,esp
 0066C5A7    push        ebx
 0066C5A8    push        esi
 0066C5A9    push        edi
 0066C5AA    mov         edi,ecx
 0066C5AC    mov         esi,edx
 0066C5AE    mov         ebx,eax
 0066C5B0    mov         eax,8
 0066C5B5    call        @GetMem
 0066C5BA    mov         dword ptr [eax],edi
 0066C5BC    mov         edx,dword ptr [ebp+10]
 0066C5BF    mov         dword ptr [eax+4],edx
 0066C5C2    mov         byte ptr ds:[6ED311],1;IsMultiThread:Boolean
 0066C5C9    mov         edx,dword ptr [ebp+8]
 0066C5CC    push        edx
 0066C5CD    mov         edx,dword ptr [ebp+0C]
 0066C5D0    push        edx
 0066C5D1    push        eax
 0066C5D2    mov         eax,66C56C;ThreadWrapper:Integer
 0066C5D7    push        eax
 0066C5D8    push        esi
 0066C5D9    push        ebx
 0066C5DA    call        KERNEL32.CreateThread
 0066C5DF    pop         edi
 0066C5E0    pop         esi
 0066C5E1    pop         ebx
 0066C5E2    pop         ebp
 0066C5E3    ret         0C
*}
end;

//0066C5E8
procedure sub_0066C5E8;
begin
{*
 0066C5E8    push        eax
 0066C5E9    call        KERNEL32.ExitThread
 0066C5EE    ret
*}
end;

//0066C5F0
procedure @LStrClr(var S:AnsiString);
begin
{*
 0066C5F0    mov         edx,dword ptr [eax]
 0066C5F2    test        edx,edx
>0066C5F4    je          0066C612
 0066C5F6    mov         dword ptr [eax],0
 0066C5FC    mov         ecx,dword ptr [edx-8]
 0066C5FF    dec         ecx
>0066C600    jl          0066C612
 0066C602    lock dec    dword ptr [edx-8]
>0066C606    jne         0066C612
 0066C608    push        eax
 0066C609    lea         eax,[edx-8]
 0066C60C    call        @FreeMem
 0066C611    pop         eax
 0066C612    ret
*}
end;

//0066C614
procedure @LStrArrayClr(var StrArray:Pointer; Count:Integer);
begin
{*
 0066C614    push        ebx
 0066C615    push        esi
 0066C616    mov         ebx,eax
 0066C618    mov         esi,edx
 0066C61A    mov         edx,dword ptr [ebx]
 0066C61C    test        edx,edx
>0066C61E    je          0066C63A
 0066C620    mov         dword ptr [ebx],0
 0066C626    mov         ecx,dword ptr [edx-8]
 0066C629    dec         ecx
>0066C62A    jl          0066C63A
 0066C62C    lock dec    dword ptr [edx-8]
>0066C630    jne         0066C63A
 0066C632    lea         eax,[edx-8]
 0066C635    call        @FreeMem
 0066C63A    add         ebx,4
 0066C63D    dec         esi
>0066C63E    jne         0066C61A
 0066C640    pop         esi
 0066C641    pop         ebx
 0066C642    ret
*}
end;

//0066C644
procedure @LStrAsg(var Dest:AnsiString; Source:AnsiString);
begin
{*
 0066C644    test        edx,edx
>0066C646    je          0066C66C
 0066C648    mov         ecx,dword ptr [edx-8]
 0066C64B    inc         ecx
>0066C64C    jg          0066C668
 0066C64E    push        eax
 0066C64F    push        edx
 0066C650    mov         eax,dword ptr [edx-4]
 0066C653    call        @NewAnsiString
 0066C658    mov         edx,eax
 0066C65A    pop         eax
 0066C65B    push        edx
 0066C65C    mov         ecx,dword ptr [eax-4]
 0066C65F    call        Move
 0066C664    pop         edx
 0066C665    pop         eax
>0066C666    jmp         0066C66C
 0066C668    lock inc    dword ptr [edx-8]
 0066C66C    xchg        edx,dword ptr [eax]
 0066C66E    test        edx,edx
>0066C670    je          0066C686
 0066C672    mov         ecx,dword ptr [edx-8]
 0066C675    dec         ecx
>0066C676    jl          0066C686
 0066C678    lock dec    dword ptr [edx-8]
>0066C67C    jne         0066C686
 0066C67E    lea         eax,[edx-8]
 0066C681    call        @FreeMem
 0066C686    ret
*}
end;

//0066C688
procedure @LStrLAsg(var Dest:AnsiString; const Source:AnsiString);
begin
{*
 0066C688    test        edx,edx
>0066C68A    je          0066C696
 0066C68C    mov         ecx,dword ptr [edx-8]
 0066C68F    inc         ecx
>0066C690    jle         0066C696
 0066C692    lock inc    dword ptr [edx-8]
 0066C696    xchg        edx,dword ptr [eax]
 0066C698    test        edx,edx
>0066C69A    je          0066C6B0
 0066C69C    mov         ecx,dword ptr [edx-8]
 0066C69F    dec         ecx
>0066C6A0    jl          0066C6B0
 0066C6A2    lock dec    dword ptr [edx-8]
>0066C6A6    jne         0066C6B0
 0066C6A8    lea         eax,[edx-8]
 0066C6AB    call        @FreeMem
 0066C6B0    ret
*}
end;

//0066C6B4
function @NewAnsiString(length:Integer):Pointer;
begin
{*
 0066C6B4    test        eax,eax
>0066C6B6    jle         0066C6DC
 0066C6B8    push        eax
 0066C6B9    add         eax,0A
 0066C6BC    and         eax,0FFFFFFFE
 0066C6BF    push        eax
 0066C6C0    call        @GetMem
 0066C6C5    pop         edx
 0066C6C6    mov         word ptr [edx+eax-2],0
 0066C6CD    add         eax,8
 0066C6D0    pop         edx
 0066C6D1    mov         dword ptr [eax-4],edx
 0066C6D4    mov         dword ptr [eax-8],1
 0066C6DB    ret
 0066C6DC    xor         eax,eax
 0066C6DE    ret
*}
end;

//0066C6E0
procedure @LStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);
begin
{*
 0066C6E0    push        ebx
 0066C6E1    push        esi
 0066C6E2    push        edi
 0066C6E3    mov         ebx,eax
 0066C6E5    mov         esi,edx
 0066C6E7    mov         edi,ecx
 0066C6E9    mov         eax,edi
 0066C6EB    call        @NewAnsiString
 0066C6F0    mov         ecx,edi
 0066C6F2    mov         edi,eax
 0066C6F4    test        esi,esi
>0066C6F6    je          0066C701
 0066C6F8    mov         edx,eax
 0066C6FA    mov         eax,esi
 0066C6FC    call        Move
 0066C701    mov         eax,ebx
 0066C703    call        @LStrClr
 0066C708    mov         dword ptr [ebx],edi
 0066C70A    pop         edi
 0066C70B    pop         esi
 0066C70C    pop         ebx
 0066C70D    ret
*}
end;

//0066C710
function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer):Integer;
begin
{*
 0066C710    push        ebp
 0066C711    mov         ebp,esp
 0066C713    push        0
 0066C715    push        0
 0066C717    push        edx
 0066C718    push        eax
 0066C719    mov         eax,dword ptr [ebp+8]
 0066C71C    push        eax
 0066C71D    push        ecx
 0066C71E    push        0
 0066C720    push        0
 0066C722    call        KERNEL32.WideCharToMultiByte
 0066C727    pop         ebp
 0066C728    ret         4
*}
end;

//0066C72C
function WCharFromChar(WCharDest:PWideChar; DestChars:Integer; const CharSource:PAnsiChar; SrcBytes:Integer):Integer;
begin
{*
 0066C72C    push        ebp
 0066C72D    mov         ebp,esp
 0066C72F    push        edx
 0066C730    push        eax
 0066C731    mov         eax,dword ptr [ebp+8]
 0066C734    push        eax
 0066C735    push        ecx
 0066C736    push        0
 0066C738    push        0
 0066C73A    call        KERNEL32.MultiByteToWideChar
 0066C73F    pop         ebp
 0066C740    ret         4
*}
end;

//0066C744
procedure @LStrFromPWCharLen(var Dest:AnsiString; Source:PWideChar; Length:Integer);
begin
{*
 0066C744    push        ebx
 0066C745    push        esi
 0066C746    push        edi
 0066C747    push        ebp
 0066C748    add         esp,0FFFFF004
 0066C74E    push        eax
 0066C74F    add         esp,0FFFFFFFC
 0066C752    mov         esi,ecx
 0066C754    mov         dword ptr [esp],edx
 0066C757    mov         edi,eax
 0066C759    test        esi,esi
>0066C75B    jg          0066C766
 0066C75D    mov         eax,edi
 0066C75F    call        @LStrClr
>0066C764    jmp         0066C7C5
 0066C766    lea         ebp,[esi+1]
 0066C769    cmp         ebp,7FF
>0066C76F    jge         0066C799
 0066C771    push        esi
 0066C772    lea         eax,[esp+8]
 0066C776    mov         ecx,dword ptr [esp+4]
 0066C77A    mov         edx,0FFF
 0066C77F    call        CharFromWChar
 0066C784    mov         ebx,eax
 0066C786    test        ebx,ebx
>0066C788    jl          0066C799
 0066C78A    lea         edx,[esp+4]
 0066C78E    mov         eax,edi
 0066C790    mov         ecx,ebx
 0066C792    call        @LStrFromPCharLen
>0066C797    jmp         0066C7C5
 0066C799    mov         ebx,ebp
 0066C79B    add         ebx,ebx
 0066C79D    mov         eax,edi
 0066C79F    mov         edx,ebx
 0066C7A1    call        @LStrSetLength
 0066C7A6    push        esi
 0066C7A7    mov         eax,dword ptr [edi]
 0066C7A9    mov         ecx,dword ptr [esp+4]
 0066C7AD    mov         edx,ebx
 0066C7AF    call        CharFromWChar
 0066C7B4    mov         ebx,eax
 0066C7B6    test        ebx,ebx
>0066C7B8    jge         0066C7BC
 0066C7BA    xor         ebx,ebx
 0066C7BC    mov         eax,edi
 0066C7BE    mov         edx,ebx
 0066C7C0    call        @LStrSetLength
 0066C7C5    add         esp,1004
 0066C7CB    pop         ebp
 0066C7CC    pop         edi
 0066C7CD    pop         esi
 0066C7CE    pop         ebx
 0066C7CF    ret
*}
end;

//0066C7D0
procedure @LStrFromChar(var Dest:AnsiString; Source:AnsiChar);
begin
{*
 0066C7D0    push        edx
 0066C7D1    mov         edx,esp
 0066C7D3    mov         ecx,1
 0066C7D8    call        @LStrFromPCharLen
 0066C7DD    pop         edx
 0066C7DE    ret
*}
end;

//0066C7E0
procedure @LStrFromPChar(var Dest:AnsiString; Source:PAnsiChar);
begin
{*
 0066C7E0    xor         ecx,ecx
 0066C7E2    test        edx,edx
>0066C7E4    je          0066C807
 0066C7E6    push        edx
 0066C7E7    cmp         cl,byte ptr [edx]
>0066C7E9    je          0066C802
 0066C7EB    cmp         cl,byte ptr [edx+1]
>0066C7EE    je          0066C801
 0066C7F0    cmp         cl,byte ptr [edx+2]
>0066C7F3    je          0066C800
 0066C7F5    cmp         cl,byte ptr [edx+3]
>0066C7F8    je          0066C7FF
 0066C7FA    add         edx,4
>0066C7FD    jmp         0066C7E7
 0066C7FF    inc         edx
 0066C800    inc         edx
 0066C801    inc         edx
 0066C802    mov         ecx,edx
 0066C804    pop         edx
 0066C805    sub         ecx,edx
>0066C807    jmp         @LStrFromPCharLen
 0066C80C    ret
*}
end;

//0066C810
procedure @LStrFromPWChar(var Dest:AnsiString; Source:PWideChar);
begin
{*
 0066C810    xor         ecx,ecx
 0066C812    test        edx,edx
>0066C814    je          0066C843
 0066C816    push        edx
 0066C817    cmp         cx,word ptr [edx]
>0066C81A    je          0066C83C
 0066C81C    cmp         cx,word ptr [edx+2]
>0066C820    je          0066C839
 0066C822    cmp         cx,word ptr [edx+4]
>0066C826    je          0066C836
 0066C828    cmp         cx,word ptr [edx+6]
>0066C82C    je          0066C833
 0066C82E    add         edx,8
>0066C831    jmp         0066C817
 0066C833    add         edx,2
 0066C836    add         edx,2
 0066C839    add         edx,2
 0066C83C    mov         ecx,edx
 0066C83E    pop         edx
 0066C83F    sub         ecx,edx
 0066C841    shr         ecx,1
>0066C843    jmp         @LStrFromPWCharLen
 0066C848    ret
*}
end;

//0066C84C
procedure @LStrFromString(var Dest:AnsiString; const Source:ShortString);
begin
{*
 0066C84C    xor         ecx,ecx
 0066C84E    mov         cl,byte ptr [edx]
 0066C850    inc         edx
>0066C851    jmp         @LStrFromPCharLen
 0066C856    ret
*}
end;

//0066C858
procedure @LStrFromArray(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);
begin
{*
 0066C858    push        edi
 0066C859    push        eax
 0066C85A    push        ecx
 0066C85B    mov         edi,edx
 0066C85D    xor         eax,eax
 0066C85F    repne scas  byte ptr [edi]
>0066C861    jne         0066C865
 0066C863    not         ecx
 0066C865    pop         eax
 0066C866    add         ecx,eax
 0066C868    pop         eax
 0066C869    pop         edi
>0066C86A    jmp         @LStrFromPCharLen
 0066C86F    ret
*}
end;

//0066C870
procedure @LStrFromWStr(var Dest:AnsiString; const Source:WideString);
begin
{*
 0066C870    xor         ecx,ecx
 0066C872    test        edx,edx
>0066C874    je          0066C87B
 0066C876    mov         ecx,dword ptr [edx-4]
 0066C879    shr         ecx,1
>0066C87B    jmp         @LStrFromPWCharLen
 0066C880    ret
*}
end;

//0066C884
procedure @LStrToString(var Dest:ShortString; const Source:AnsiString; MaxLen:Integer);
begin
{*
 0066C884    push        ebx
 0066C885    test        edx,edx
>0066C887    je          0066C8A1
 0066C889    mov         ebx,dword ptr [edx-4]
 0066C88C    test        ebx,ebx
>0066C88E    je          0066C8A1
 0066C890    cmp         ecx,ebx
>0066C892    jl          0066C896
 0066C894    mov         ecx,ebx
 0066C896    mov         byte ptr [eax],cl
 0066C898    inc         eax
 0066C899    xchg        eax,edx
 0066C89A    call        Move
 0066C89F    pop         ebx
 0066C8A0    ret
 0066C8A1    mov         byte ptr [eax],0
 0066C8A4    pop         ebx
 0066C8A5    ret
*}
end;

//0066C8A8
function @LStrLen(S:AnsiString):Integer;
begin
{*
 0066C8A8    test        eax,eax
>0066C8AA    je          0066C8AF
 0066C8AC    mov         eax,dword ptr [eax-4]
 0066C8AF    ret
*}
end;

//0066C8B0
procedure @LStrCat(var Dest:AnsiString; Source:AnsiString);
begin
{*
 0066C8B0    test        edx,edx
>0066C8B2    je          0066C8F3
 0066C8B4    mov         ecx,dword ptr [eax]
 0066C8B6    test        ecx,ecx
>0066C8B8    je          0066C644
 0066C8BE    push        ebx
 0066C8BF    push        esi
 0066C8C0    push        edi
 0066C8C1    mov         ebx,eax
 0066C8C3    mov         esi,edx
 0066C8C5    mov         edi,dword ptr [ecx-4]
 0066C8C8    mov         edx,dword ptr [esi-4]
 0066C8CB    add         edx,edi
 0066C8CD    cmp         esi,ecx
>0066C8CF    je          0066C8E8
 0066C8D1    call        @LStrSetLength
 0066C8D6    mov         eax,esi
 0066C8D8    mov         ecx,dword ptr [esi-4]
 0066C8DB    mov         edx,dword ptr [ebx]
 0066C8DD    add         edx,edi
 0066C8DF    call        Move
 0066C8E4    pop         edi
 0066C8E5    pop         esi
 0066C8E6    pop         ebx
 0066C8E7    ret
 0066C8E8    call        @LStrSetLength
 0066C8ED    mov         eax,dword ptr [ebx]
 0066C8EF    mov         ecx,edi
>0066C8F1    jmp         0066C8DB
 0066C8F3    ret
*}
end;

//0066C8F4
procedure @LStrCat3(var Dest:AnsiString; Source1:AnsiString; Source2:AnsiString);
begin
{*
 0066C8F4    test        edx,edx
>0066C8F6    je          0066C959
 0066C8F8    test        ecx,ecx
>0066C8FA    je          0066C644
 0066C900    cmp         edx,dword ptr [eax]
>0066C902    je          0066C960
 0066C904    cmp         ecx,dword ptr [eax]
>0066C906    je          0066C916
 0066C908    push        eax
 0066C909    push        ecx
 0066C90A    call        @LStrAsg
 0066C90F    pop         edx
 0066C910    pop         eax
>0066C911    jmp         @LStrCat
 0066C916    push        ebx
 0066C917    push        esi
 0066C918    push        edi
 0066C919    mov         ebx,edx
 0066C91B    mov         esi,ecx
 0066C91D    push        eax
 0066C91E    mov         eax,dword ptr [ebx-4]
 0066C921    add         eax,dword ptr [esi-4]
 0066C924    call        @NewAnsiString
 0066C929    mov         edi,eax
 0066C92B    mov         edx,eax
 0066C92D    mov         eax,ebx
 0066C92F    mov         ecx,dword ptr [ebx-4]
 0066C932    call        Move
 0066C937    mov         edx,edi
 0066C939    mov         eax,esi
 0066C93B    mov         ecx,dword ptr [esi-4]
 0066C93E    add         edx,dword ptr [ebx-4]
 0066C941    call        Move
 0066C946    pop         eax
 0066C947    mov         edx,edi
 0066C949    test        edi,edi
>0066C94B    je          0066C950
 0066C94D    dec         dword ptr [edi-8]
 0066C950    call        @LStrAsg
 0066C955    pop         edi
 0066C956    pop         esi
 0066C957    pop         ebx
 0066C958    ret
 0066C959    mov         edx,ecx
>0066C95B    jmp         @LStrAsg
 0066C960    mov         edx,ecx
>0066C962    jmp         @LStrCat
 0066C967    ret
*}
end;

//0066C968
procedure @LStrCatN(var Dest:AnsiString; ArgCnt:Integer);
begin
{*
 0066C968    push        ebx
 0066C969    push        esi
 0066C96A    push        edi
 0066C96B    push        edx
 0066C96C    push        eax
 0066C96D    mov         ebx,edx
 0066C96F    xor         edi,edi
 0066C971    mov         ecx,dword ptr [esp+edx*4+14]
 0066C975    test        ecx,ecx
>0066C977    je          0066C97F
 0066C979    cmp         dword ptr [eax],ecx
>0066C97B    jne         0066C97F
 0066C97D    mov         edi,ecx
 0066C97F    xor         eax,eax
 0066C981    mov         ecx,dword ptr [esp+edx*4+14]
 0066C985    test        ecx,ecx
>0066C987    je          0066C992
 0066C989    add         eax,dword ptr [ecx-4]
 0066C98C    cmp         edi,ecx
>0066C98E    jne         0066C992
 0066C990    xor         edi,edi
 0066C992    dec         edx
>0066C993    jne         0066C981
 0066C995    test        edi,edi
>0066C997    je          0066C9AD
 0066C999    mov         edx,eax
 0066C99B    mov         eax,edi
 0066C99D    mov         esi,dword ptr [edi]
 0066C99F    mov         esi,dword ptr [esi-4]
 0066C9A2    call        @LStrSetLength
 0066C9A7    push        edi
 0066C9A8    add         esi,dword ptr [edi]
 0066C9AA    dec         ebx
>0066C9AB    jmp         0066C9B5
 0066C9AD    call        @NewAnsiString
 0066C9B2    push        eax
 0066C9B3    mov         esi,eax
 0066C9B5    mov         eax,dword ptr [esp+ebx*4+18]
 0066C9B9    mov         edx,esi
 0066C9BB    test        eax,eax
>0066C9BD    je          0066C9C9
 0066C9BF    mov         ecx,dword ptr [eax-4]
 0066C9C2    add         esi,ecx
 0066C9C4    call        Move
 0066C9C9    dec         ebx
>0066C9CA    jne         0066C9B5
 0066C9CC    pop         edx
 0066C9CD    pop         eax
 0066C9CE    test        edi,edi
>0066C9D0    jne         0066C9DE
 0066C9D2    test        edx,edx
>0066C9D4    je          0066C9D9
 0066C9D6    dec         dword ptr [edx-8]
 0066C9D9    call        @LStrAsg
 0066C9DE    pop         edx
 0066C9DF    pop         edi
 0066C9E0    pop         esi
 0066C9E1    pop         ebx
 0066C9E2    pop         eax
 0066C9E3    lea         esp,[esp+edx*4]
 0066C9E6    jmp         eax
 0066C9E8    ret
*}
end;

//0066C9EC
{*function @LStrCmp(Left:AnsiString; Right:AnsiString):?;
begin
 0066C9EC    push        ebx
 0066C9ED    push        esi
 0066C9EE    push        edi
 0066C9EF    mov         esi,eax
 0066C9F1    mov         edi,edx
 0066C9F3    cmp         eax,edx
>0066C9F5    je          0066CA8A
 0066C9FB    test        esi,esi
>0066C9FD    je          0066CA67
 0066C9FF    test        edi,edi
>0066CA01    je          0066CA6E
 0066CA03    mov         eax,dword ptr [esi-4]
 0066CA06    mov         edx,dword ptr [edi-4]
 0066CA09    sub         eax,edx
>0066CA0B    ja          0066CA0F
 0066CA0D    add         edx,eax
 0066CA0F    push        edx
 0066CA10    shr         edx,2
>0066CA13    je          0066CA3B
 0066CA15    mov         ecx,dword ptr [esi]
 0066CA17    mov         ebx,dword ptr [edi]
 0066CA19    cmp         ecx,ebx
>0066CA1B    jne         0066CA75
 0066CA1D    dec         edx
>0066CA1E    je          0066CA35
 0066CA20    mov         ecx,dword ptr [esi+4]
 0066CA23    mov         ebx,dword ptr [edi+4]
 0066CA26    cmp         ecx,ebx
>0066CA28    jne         0066CA75
 0066CA2A    add         esi,8
 0066CA2D    add         edi,8
 0066CA30    dec         edx
>0066CA31    jne         0066CA15
>0066CA33    jmp         0066CA3B
 0066CA35    add         esi,4
 0066CA38    add         edi,4
 0066CA3B    pop         edx
 0066CA3C    and         edx,3
>0066CA3F    je          0066CA63
 0066CA41    mov         ecx,dword ptr [esi]
 0066CA43    mov         ebx,dword ptr [edi]
 0066CA45    cmp         cl,bl
>0066CA47    jne         0066CA8A
 0066CA49    dec         edx
>0066CA4A    je          0066CA63
 0066CA4C    cmp         ch,bh
>0066CA4E    jne         0066CA8A
 0066CA50    dec         edx
>0066CA51    je          0066CA63
 0066CA53    and         ebx,0FF0000
 0066CA59    and         ecx,0FF0000
 0066CA5F    cmp         ecx,ebx
>0066CA61    jne         0066CA8A
 0066CA63    add         eax,eax
>0066CA65    jmp         0066CA8A
 0066CA67    mov         edx,dword ptr [edi-4]
 0066CA6A    sub         eax,edx
>0066CA6C    jmp         0066CA8A
 0066CA6E    mov         eax,dword ptr [esi-4]
 0066CA71    sub         eax,edx
>0066CA73    jmp         0066CA8A
 0066CA75    pop         edx
 0066CA76    cmp         cl,bl
>0066CA78    jne         0066CA8A
 0066CA7A    cmp         ch,bh
>0066CA7C    jne         0066CA8A
 0066CA7E    shr         ecx,10
 0066CA81    shr         ebx,10
 0066CA84    cmp         cl,bl
>0066CA86    jne         0066CA8A
 0066CA88    cmp         ch,bh
 0066CA8A    pop         edi
 0066CA8B    pop         esi
 0066CA8C    pop         ebx
 0066CA8D    ret
end;*}

//0066CA90
function @LStrAddRef(var S:AnsiString):Pointer;
begin
{*
 0066CA90    test        eax,eax
>0066CA92    je          0066CA9E
 0066CA94    mov         edx,dword ptr [eax-8]
 0066CA97    inc         edx
>0066CA98    jle         0066CA9E
 0066CA9A    lock inc    dword ptr [eax-8]
 0066CA9E    ret
*}
end;

//0066CAA0
function @LStrToPChar(S:AnsiString):PChar;
begin
{*
 0066CAA0    test        eax,eax
>0066CAA2    je          0066CAA6
 0066CAA4    ret
 0066CAA5    add         byte ptr [eax+66CAA5],bh
 0066CAAB    ret
*}
end;

//0066CAAC
function InternalUniqueString(var str:void ):Pointer;
begin
{*
 0066CAAC    mov         edx,dword ptr [eax]
 0066CAAE    test        edx,edx
>0066CAB0    je          0066CAEA
 0066CAB2    mov         ecx,dword ptr [edx-8]
 0066CAB5    dec         ecx
>0066CAB6    je          0066CAEA
 0066CAB8    push        ebx
 0066CAB9    mov         ebx,eax
 0066CABB    mov         eax,dword ptr [edx-4]
 0066CABE    call        @NewAnsiString
 0066CAC3    mov         edx,eax
 0066CAC5    mov         eax,dword ptr [ebx]
 0066CAC7    mov         dword ptr [ebx],edx
 0066CAC9    push        eax
 0066CACA    mov         ecx,dword ptr [eax-4]
 0066CACD    call        Move
 0066CAD2    pop         eax
 0066CAD3    mov         ecx,dword ptr [eax-8]
 0066CAD6    dec         ecx
>0066CAD7    jl          0066CAE7
 0066CAD9    lock dec    dword ptr [eax-8]
>0066CADD    jne         0066CAE7
 0066CADF    lea         eax,[eax-8]
 0066CAE2    call        @FreeMem
 0066CAE7    mov         edx,dword ptr [ebx]
 0066CAE9    pop         ebx
 0066CAEA    mov         eax,edx
 0066CAEC    ret
*}
end;

//0066CAF0
procedure UniqueString(var str:AnsiString);
begin
{*
>0066CAF0    jmp         InternalUniqueString
 0066CAF5    ret
*}
end;

//0066CAF8
procedure @UniqueStringA(var str:AnsiString);
begin
{*
>0066CAF8    jmp         InternalUniqueString
 0066CAFD    ret
*}
end;

//0066CB00
function @LStrCopy(const S:AnsiString; Index:Integer; Count:Integer):AnsiString;
begin
{*
 0066CB00    push        ebx
 0066CB01    test        eax,eax
>0066CB03    je          0066CB32
 0066CB05    mov         ebx,dword ptr [eax-4]
 0066CB08    test        ebx,ebx
>0066CB0A    je          0066CB32
 0066CB0C    dec         edx
>0066CB0D    jl          0066CB2A
 0066CB0F    cmp         edx,ebx
>0066CB11    jge         0066CB32
 0066CB13    sub         ebx,edx
 0066CB15    test        ecx,ecx
>0066CB17    jl          0066CB32
 0066CB19    cmp         ecx,ebx
>0066CB1B    jg          0066CB2E
 0066CB1D    add         edx,eax
 0066CB1F    mov         eax,dword ptr [esp+8]
 0066CB23    call        @LStrFromPCharLen
>0066CB28    jmp         0066CB3B
 0066CB2A    xor         edx,edx
>0066CB2C    jmp         0066CB13
 0066CB2E    mov         ecx,ebx
>0066CB30    jmp         0066CB1D
 0066CB32    mov         eax,dword ptr [esp+8]
 0066CB36    call        @LStrClr
 0066CB3B    pop         ebx
 0066CB3C    ret         4
*}
end;

//0066CB40
procedure @LStrDelete(var S:AnsiString; Index:Integer; Count:Integer);
begin
{*
 0066CB40    push        ebx
 0066CB41    push        esi
 0066CB42    push        edi
 0066CB43    mov         ebx,eax
 0066CB45    mov         esi,edx
 0066CB47    mov         edi,ecx
 0066CB49    call        UniqueString
 0066CB4E    mov         edx,dword ptr [ebx]
 0066CB50    test        edx,edx
>0066CB52    je          0066CB84
 0066CB54    mov         ecx,dword ptr [edx-4]
 0066CB57    dec         esi
>0066CB58    jl          0066CB84
 0066CB5A    cmp         esi,ecx
>0066CB5C    jge         0066CB84
 0066CB5E    test        edi,edi
>0066CB60    jle         0066CB84
 0066CB62    sub         ecx,esi
 0066CB64    cmp         edi,ecx
>0066CB66    jle         0066CB6A
 0066CB68    mov         edi,ecx
 0066CB6A    sub         ecx,edi
 0066CB6C    add         edx,esi
 0066CB6E    lea         eax,[edi+edx]
 0066CB71    call        Move
 0066CB76    mov         edx,dword ptr [ebx]
 0066CB78    mov         eax,ebx
 0066CB7A    mov         edx,dword ptr [edx-4]
 0066CB7D    sub         edx,edi
 0066CB7F    call        @LStrSetLength
 0066CB84    pop         edi
 0066CB85    pop         esi
 0066CB86    pop         ebx
 0066CB87    ret
*}
end;

//0066CB88
procedure @LStrInsert(const Source:AnsiString; var S:AnsiString; Index:Integer);
begin
{*
 0066CB88    test        eax,eax
>0066CB8A    je          0066CBE2
 0066CB8C    push        ebx
 0066CB8D    push        esi
 0066CB8E    push        edi
 0066CB8F    push        ebp
 0066CB90    mov         ebx,eax
 0066CB92    mov         esi,edx
 0066CB94    mov         edi,ecx
 0066CB96    mov         edx,dword ptr [edx]
 0066CB98    push        edx
 0066CB99    test        edx,edx
>0066CB9B    je          0066CBA0
 0066CB9D    mov         edx,dword ptr [edx-4]
 0066CBA0    dec         edi
>0066CBA1    jge         0066CBA5
 0066CBA3    xor         edi,edi
 0066CBA5    cmp         edi,edx
>0066CBA7    jle         0066CBAB
 0066CBA9    mov         edi,edx
 0066CBAB    mov         ebp,dword ptr [ebx-4]
 0066CBAE    mov         eax,esi
 0066CBB0    add         edx,ebp
 0066CBB2    call        @LStrSetLength
 0066CBB7    pop         eax
 0066CBB8    cmp         eax,ebx
>0066CBBA    jne         0066CBBE
 0066CBBC    mov         ebx,dword ptr [esi]
 0066CBBE    mov         eax,dword ptr [esi]
 0066CBC0    lea         edx,[edi+ebp]
 0066CBC3    mov         ecx,dword ptr [eax-4]
 0066CBC6    sub         ecx,edx
 0066CBC8    add         edx,eax
 0066CBCA    add         eax,edi
 0066CBCC    call        Move
 0066CBD1    mov         eax,ebx
 0066CBD3    mov         edx,dword ptr [esi]
 0066CBD5    mov         ecx,ebp
 0066CBD7    add         edx,edi
 0066CBD9    call        Move
 0066CBDE    pop         ebp
 0066CBDF    pop         edi
 0066CBE0    pop         esi
 0066CBE1    pop         ebx
 0066CBE2    ret
*}
end;

//0066CBE4
function @LStrPos(const Substr:AnsiString; const S:AnsiString):Integer;
begin
{*
 0066CBE4    test        eax,eax
>0066CBE6    je          0066CC28
 0066CBE8    test        edx,edx
>0066CBEA    je          0066CC1D
 0066CBEC    push        ebx
 0066CBED    push        esi
 0066CBEE    push        edi
 0066CBEF    mov         esi,eax
 0066CBF1    mov         edi,edx
 0066CBF3    mov         ecx,dword ptr [edi-4]
 0066CBF6    push        edi
 0066CBF7    mov         edx,dword ptr [esi-4]
 0066CBFA    dec         edx
>0066CBFB    js          0066CC18
 0066CBFD    mov         al,byte ptr [esi]
 0066CBFF    inc         esi
 0066CC00    sub         ecx,edx
>0066CC02    jle         0066CC18
 0066CC04    repne scas  byte ptr [edi]
>0066CC06    jne         0066CC18
 0066CC08    mov         ebx,ecx
 0066CC0A    push        esi
 0066CC0B    push        edi
 0066CC0C    mov         ecx,edx
 0066CC0E    repe cmps   byte ptr [esi],byte ptr [edi]
 0066CC10    pop         edi
 0066CC11    pop         esi
>0066CC12    je          0066CC20
 0066CC14    mov         ecx,ebx
>0066CC16    jmp         0066CC04
 0066CC18    pop         edx
 0066CC19    xor         eax,eax
>0066CC1B    jmp         0066CC25
 0066CC1D    xor         eax,eax
 0066CC1F    ret
 0066CC20    pop         edx
 0066CC21    mov         eax,edi
 0066CC23    sub         eax,edx
 0066CC25    pop         edi
 0066CC26    pop         esi
 0066CC27    pop         ebx
 0066CC28    ret
*}
end;

//0066CC2C
procedure @LStrSetLength(var S:AnsiString; NewLen:Integer);
begin
{*
 0066CC2C    push        ebx
 0066CC2D    push        esi
 0066CC2E    push        edi
 0066CC2F    mov         ebx,eax
 0066CC31    mov         esi,edx
 0066CC33    xor         edi,edi
 0066CC35    test        edx,edx
>0066CC37    jle         0066CC81
 0066CC39    mov         eax,dword ptr [ebx]
 0066CC3B    test        eax,eax
>0066CC3D    je          0066CC62
 0066CC3F    cmp         dword ptr [eax-8],1
>0066CC43    jne         0066CC62
 0066CC45    sub         eax,8
 0066CC48    add         edx,9
 0066CC4B    push        eax
 0066CC4C    mov         eax,esp
 0066CC4E    call        @ReallocMem
 0066CC53    pop         eax
 0066CC54    add         eax,8
 0066CC57    mov         dword ptr [ebx],eax
 0066CC59    mov         dword ptr [eax-4],esi
 0066CC5C    mov         byte ptr [esi+eax],0
>0066CC60    jmp         0066CC8A
 0066CC62    mov         eax,edx
 0066CC64    call        @NewAnsiString
 0066CC69    mov         edi,eax
 0066CC6B    mov         eax,dword ptr [ebx]
 0066CC6D    test        eax,eax
>0066CC6F    je          0066CC81
 0066CC71    mov         edx,edi
 0066CC73    mov         ecx,dword ptr [eax-4]
 0066CC76    cmp         ecx,esi
>0066CC78    jl          0066CC7C
 0066CC7A    mov         ecx,esi
 0066CC7C    call        Move
 0066CC81    mov         eax,ebx
 0066CC83    call        @LStrClr
 0066CC88    mov         dword ptr [ebx],edi
 0066CC8A    pop         edi
 0066CC8B    pop         esi
 0066CC8C    pop         ebx
 0066CC8D    ret
*}
end;

//0066CC90
procedure @LStrOfChar(C:Char; Count:Integer; var Result:AnsiString);
begin
{*
 0066CC90    push        ebx
 0066CC91    push        esi
 0066CC92    push        edi
 0066CC93    mov         ebx,eax
 0066CC95    mov         esi,edx
 0066CC97    mov         edi,ecx
 0066CC99    mov         eax,ecx
 0066CC9B    call        @LStrClr
 0066CCA0    test        esi,esi
>0066CCA2    jle         0066CCB6
 0066CCA4    mov         eax,esi
 0066CCA6    call        @NewAnsiString
 0066CCAB    mov         dword ptr [edi],eax
 0066CCAD    mov         edx,esi
 0066CCAF    mov         cl,bl
 0066CCB1    call        @FillChar
 0066CCB6    pop         edi
 0066CCB7    pop         esi
 0066CCB8    pop         ebx
 0066CCB9    ret
*}
end;

//0066CCBC
procedure @WriteLString(var T:TTextRec; S:AnsiString; Width:Longint);
begin
{*
 0066CCBC    push        ebx
 0066CCBD    mov         ebx,edx
 0066CCBF    mov         edx,ecx
 0066CCC1    xor         ecx,ecx
 0066CCC3    test        ebx,ebx
>0066CCC5    je          0066CCCC
 0066CCC7    mov         ecx,dword ptr [ebx-4]
 0066CCCA    sub         edx,ecx
 0066CCCC    push        ecx
 0066CCCD    call        @WriteSpaces
 0066CCD2    pop         ecx
 0066CCD3    mov         edx,ebx
 0066CCD5    pop         ebx
>0066CCD6    jmp         @WriteBytes
 0066CCDB    ret
*}
end;

//0066CCDC
procedure WStrError;
begin
{*
 0066CCDC    mov         al,1
>0066CCDE    jmp         Error
 0066CCE3    ret
*}
end;

//0066CCE4
function @NewWideString(CharLength:Integer):Pointer;
begin
{*
 0066CCE4    test        eax,eax
>0066CCE6    je          0066CCF8
 0066CCE8    push        eax
 0066CCE9    push        0
 0066CCEB    call        OLEAUT32.4
 0066CCF0    test        eax,eax
>0066CCF2    je          0066CCDC
 0066CCF8    ret
*}
end;

//0066CCFC
procedure WStrSet(var S:WideString; P:PWideChar);
begin
{*
 0066CCFC    xchg        edx,dword ptr [eax]
 0066CCFE    test        edx,edx
>0066CD00    je          0066CD08
 0066CD02    push        edx
 0066CD03    call        OLEAUT32.6
 0066CD08    ret
*}
end;

//0066CD0C
procedure @WStrClr(var S:WideString);
begin
{*
 0066CD0C    mov         edx,dword ptr [eax]
 0066CD0E    test        edx,edx
>0066CD10    je          0066CD20
 0066CD12    mov         dword ptr [eax],0
 0066CD18    push        eax
 0066CD19    push        edx
 0066CD1A    call        OLEAUT32.6
 0066CD1F    pop         eax
 0066CD20    ret
*}
end;

//0066CD24
procedure @WStrArrayClr(var StrArray:Pointer; Count:Integer);
begin
{*
 0066CD24    push        ebx
 0066CD25    push        esi
 0066CD26    mov         ebx,eax
 0066CD28    mov         esi,edx
 0066CD2A    mov         eax,dword ptr [ebx]
 0066CD2C    test        eax,eax
>0066CD2E    je          0066CD3C
 0066CD30    mov         dword ptr [ebx],0
 0066CD36    push        eax
 0066CD37    call        OLEAUT32.6
 0066CD3C    add         ebx,4
 0066CD3F    dec         esi
>0066CD40    jne         0066CD2A
 0066CD42    pop         esi
 0066CD43    pop         ebx
 0066CD44    ret
*}
end;

//0066CD48
procedure @WStrAsg(var Dest:WideString; Source:WideString);
begin
{*
 0066CD48    test        edx,edx
>0066CD4A    je          0066CD0C
 0066CD50    mov         ecx,dword ptr [edx-4]
 0066CD53    shr         ecx,1
>0066CD55    je          0066CD0C
 0066CD5B    push        ecx
 0066CD5C    push        edx
 0066CD5D    push        eax
 0066CD5E    call        OLEAUT32.5
 0066CD63    test        eax,eax
>0066CD65    je          0066CCDC
 0066CD6B    ret
*}
end;

//0066CD6C
procedure @WStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer);
begin
{*
 0066CD6C    push        ebx
 0066CD6D    push        esi
 0066CD6E    push        edi
 0066CD6F    push        ebp
 0066CD70    add         esp,0FFFFF004
 0066CD76    push        eax
 0066CD77    add         esp,0FFFFFFFC
 0066CD7A    mov         esi,ecx
 0066CD7C    mov         dword ptr [esp],edx
 0066CD7F    mov         edi,eax
 0066CD81    test        esi,esi
>0066CD83    jg          0066CD8E
 0066CD85    mov         eax,edi
 0066CD87    call        @WStrClr
>0066CD8C    jmp         0066CDEB
 0066CD8E    lea         ebp,[esi+1]
 0066CD91    cmp         ebp,7FF
>0066CD97    jge         0066CDC1
 0066CD99    push        esi
 0066CD9A    lea         eax,[esp+8]
 0066CD9E    mov         ecx,dword ptr [esp+4]
 0066CDA2    mov         edx,7FF
 0066CDA7    call        WCharFromChar
 0066CDAC    mov         ebx,eax
 0066CDAE    test        ebx,ebx
>0066CDB0    jle         0066CDC1
 0066CDB2    lea         edx,[esp+4]
 0066CDB6    mov         eax,edi
 0066CDB8    mov         ecx,ebx
 0066CDBA    call        @WStrFromPWCharLen
>0066CDBF    jmp         0066CDEB
 0066CDC1    mov         ebx,ebp
 0066CDC3    mov         eax,edi
 0066CDC5    mov         edx,ebx
 0066CDC7    call        @WStrSetLength
 0066CDCC    push        esi
 0066CDCD    mov         eax,dword ptr [edi]
 0066CDCF    mov         ecx,dword ptr [esp+4]
 0066CDD3    mov         edx,ebx
 0066CDD5    call        WCharFromChar
 0066CDDA    mov         ebx,eax
 0066CDDC    test        ebx,ebx
>0066CDDE    jge         0066CDE2
 0066CDE0    xor         ebx,ebx
 0066CDE2    mov         eax,edi
 0066CDE4    mov         edx,ebx
 0066CDE6    call        @WStrSetLength
 0066CDEB    add         esp,1004
 0066CDF1    pop         ebp
 0066CDF2    pop         edi
 0066CDF3    pop         esi
 0066CDF4    pop         ebx
 0066CDF5    ret
*}
end;

//0066CDF8
procedure @WStrFromPWCharLen(var Dest:WideString; Source:PWideChar; Length:Integer);
begin
{*
 0066CDF8    test        ecx,ecx
>0066CDFA    je          0066CD0C
 0066CE00    push        eax
 0066CE01    push        ecx
 0066CE02    push        edx
 0066CE03    call        OLEAUT32.4
 0066CE08    test        eax,eax
>0066CE0A    je          0066CCDC
 0066CE10    pop         edx
 0066CE11    push        dword ptr [edx]
 0066CE13    mov         dword ptr [edx],eax
 0066CE15    call        OLEAUT32.6
 0066CE1A    ret
*}
end;

//0066CE1C
procedure @WStrFromPWChar(var Dest:WideString; Source:PWideChar);
begin
{*
 0066CE1C    xor         ecx,ecx
 0066CE1E    test        edx,edx
>0066CE20    je          0066CE4F
 0066CE22    push        edx
 0066CE23    cmp         cx,word ptr [edx]
>0066CE26    je          0066CE48
 0066CE28    cmp         cx,word ptr [edx+2]
>0066CE2C    je          0066CE45
 0066CE2E    cmp         cx,word ptr [edx+4]
>0066CE32    je          0066CE42
 0066CE34    cmp         cx,word ptr [edx+6]
>0066CE38    je          0066CE3F
 0066CE3A    add         edx,8
>0066CE3D    jmp         0066CE23
 0066CE3F    add         edx,2
 0066CE42    add         edx,2
 0066CE45    add         edx,2
 0066CE48    mov         ecx,edx
 0066CE4A    pop         edx
 0066CE4B    sub         ecx,edx
 0066CE4D    shr         ecx,1
>0066CE4F    jmp         @WStrFromPWCharLen
 0066CE54    ret
*}
end;

//0066CE58
procedure @WStrFromLStr(var Dest:WideString; const Source:AnsiString);
begin
{*
 0066CE58    xor         ecx,ecx
 0066CE5A    test        edx,edx
>0066CE5C    je          0066CE61
 0066CE5E    mov         ecx,dword ptr [edx-4]
>0066CE61    jmp         @WStrFromPCharLen
 0066CE66    ret
*}
end;

//0066CE68
function @WStrToPWChar(S:WideString):PWideChar;
begin
{*
 0066CE68    test        eax,eax
>0066CE6A    je          0066CE70
 0066CE6C    ret
 0066CE6D    nop
 0066CE6E    add         byte ptr [eax],al
 0066CE70    mov         eax,66CE6E
 0066CE75    ret
*}
end;

//0066CE78
function @WStrLen(S:WideString):Integer;
begin
{*
 0066CE78    test        eax,eax
>0066CE7A    je          0066CE81
 0066CE7C    mov         eax,dword ptr [eax-4]
 0066CE7F    shr         eax,1
 0066CE81    ret
*}
end;

//0066CE84
procedure @WStrCat(var Dest:WideString; Source:WideString);
begin
{*
 0066CE84    push        ebx
 0066CE85    push        esi
 0066CE86    push        edi
 0066CE87    push        ebp
 0066CE88    push        ecx
 0066CE89    mov         ebp,edx
 0066CE8B    mov         dword ptr [esp],eax
 0066CE8E    mov         eax,ebp
 0066CE90    call        @WStrLen
 0066CE95    mov         ebx,eax
 0066CE97    test        ebx,ebx
>0066CE99    je          0066CEDD
 0066CE9B    mov         eax,dword ptr [esp]
 0066CE9E    mov         eax,dword ptr [eax]
 0066CEA0    call        @WStrLen
 0066CEA5    mov         esi,eax
 0066CEA7    lea         eax,[ebx+esi]
 0066CEAA    call        @NewWideString
 0066CEAF    mov         edi,eax
 0066CEB1    test        esi,esi
>0066CEB3    jle         0066CEC5
 0066CEB5    mov         ecx,esi
 0066CEB7    add         ecx,ecx
 0066CEB9    mov         edx,edi
 0066CEBB    mov         eax,dword ptr [esp]
 0066CEBE    mov         eax,dword ptr [eax]
 0066CEC0    call        Move
 0066CEC5    mov         ecx,ebx
 0066CEC7    add         ecx,ecx
 0066CEC9    lea         edx,[edi+esi*2]
 0066CECC    mov         eax,ebp
 0066CECE    call        Move
 0066CED3    mov         eax,dword ptr [esp]
 0066CED6    mov         edx,edi
 0066CED8    call        WStrSet
 0066CEDD    pop         edx
 0066CEDE    pop         ebp
 0066CEDF    pop         edi
 0066CEE0    pop         esi
 0066CEE1    pop         ebx
 0066CEE2    ret
*}
end;

//0066CEE4
{*function @WStrCmp(Left:WideString; Right:WideString):?;
begin
 0066CEE4    push        ebx
 0066CEE5    push        esi
 0066CEE6    push        edi
 0066CEE7    mov         esi,eax
 0066CEE9    mov         edi,edx
 0066CEEB    cmp         eax,edx
>0066CEED    je          0066CF61
 0066CEEF    test        esi,esi
>0066CEF1    je          0066CF44
 0066CEF3    test        edi,edi
>0066CEF5    je          0066CF4B
 0066CEF7    mov         eax,dword ptr [esi-4]
 0066CEFA    mov         edx,dword ptr [edi-4]
 0066CEFD    sub         eax,edx
>0066CEFF    ja          0066CF03
 0066CF01    add         edx,eax
 0066CF03    push        edx
 0066CF04    shr         edx,2
>0066CF07    je          0066CF2F
 0066CF09    mov         ecx,dword ptr [esi]
 0066CF0B    mov         ebx,dword ptr [edi]
 0066CF0D    cmp         ecx,ebx
>0066CF0F    jne         0066CF52
 0066CF11    dec         edx
>0066CF12    je          0066CF29
 0066CF14    mov         ecx,dword ptr [esi+4]
 0066CF17    mov         ebx,dword ptr [edi+4]
 0066CF1A    cmp         ecx,ebx
>0066CF1C    jne         0066CF52
 0066CF1E    add         esi,8
 0066CF21    add         edi,8
 0066CF24    dec         edx
>0066CF25    jne         0066CF09
>0066CF27    jmp         0066CF2F
 0066CF29    add         esi,4
 0066CF2C    add         edi,4
 0066CF2F    pop         edx
 0066CF30    and         edx,2
>0066CF33    je          0066CF40
 0066CF35    mov         cx,word ptr [esi]
 0066CF38    mov         bx,word ptr [edi]
 0066CF3B    cmp         cx,bx
>0066CF3E    jne         0066CF61
 0066CF40    add         eax,eax
>0066CF42    jmp         0066CF61
 0066CF44    mov         edx,dword ptr [edi-4]
 0066CF47    sub         eax,edx
>0066CF49    jmp         0066CF61
 0066CF4B    mov         eax,dword ptr [esi-4]
 0066CF4E    sub         eax,edx
>0066CF50    jmp         0066CF61
 0066CF52    pop         edx
 0066CF53    cmp         cx,bx
>0066CF56    jne         0066CF61
 0066CF58    shr         ecx,10
 0066CF5B    shr         ebx,10
 0066CF5E    cmp         cx,bx
 0066CF61    pop         edi
 0066CF62    pop         esi
 0066CF63    pop         ebx
 0066CF64    ret
end;*}

//0066CF68
function @WStrCopy(const S:WideString; Index:Integer; Count:Integer):WideString;
begin
{*
 0066CF68    push        ebp
 0066CF69    mov         ebp,esp
 0066CF6B    push        ebx
 0066CF6C    push        esi
 0066CF6D    push        edi
 0066CF6E    mov         edi,ecx
 0066CF70    mov         ebx,edx
 0066CF72    mov         esi,eax
 0066CF74    mov         eax,esi
 0066CF76    call        @WStrLen
 0066CF7B    cmp         ebx,1
>0066CF7E    jge         0066CF84
 0066CF80    xor         ebx,ebx
>0066CF82    jmp         0066CF8B
 0066CF84    dec         ebx
 0066CF85    cmp         eax,ebx
>0066CF87    jge         0066CF8B
 0066CF89    mov         ebx,eax
 0066CF8B    test        edi,edi
>0066CF8D    jge         0066CF93
 0066CF8F    xor         eax,eax
>0066CF91    jmp         0066CF9B
 0066CF93    sub         eax,ebx
 0066CF95    cmp         edi,eax
>0066CF97    jge         0066CF9B
 0066CF99    mov         eax,edi
 0066CF9B    mov         edx,ebx
 0066CF9D    add         edx,edx
 0066CF9F    add         edx,esi
 0066CFA1    mov         ecx,dword ptr [ebp+8]
 0066CFA4    xchg        eax,ecx
 0066CFA5    call        @WStrFromPWCharLen
 0066CFAA    pop         edi
 0066CFAB    pop         esi
 0066CFAC    pop         ebx
 0066CFAD    pop         ebp
 0066CFAE    ret         4
*}
end;

//0066CFB4
procedure @WStrSetLength(var S:WideString; NewLen:Integer);
begin
{*
 0066CFB4    push        ebx
 0066CFB5    push        esi
 0066CFB6    push        edi
 0066CFB7    mov         esi,edx
 0066CFB9    mov         edi,eax
 0066CFBB    xor         ebx,ebx
 0066CFBD    test        esi,esi
>0066CFBF    jle         0066CFE8
 0066CFC1    mov         eax,esi
 0066CFC3    call        @NewWideString
 0066CFC8    mov         ebx,eax
 0066CFCA    mov         eax,dword ptr [edi]
 0066CFCC    call        @WStrLen
 0066CFD1    test        eax,eax
>0066CFD3    jle         0066CFE8
 0066CFD5    cmp         esi,eax
>0066CFD7    jge         0066CFDB
 0066CFD9    mov         eax,esi
 0066CFDB    mov         ecx,eax
 0066CFDD    add         ecx,ecx
 0066CFDF    mov         edx,ebx
 0066CFE1    mov         eax,dword ptr [edi]
 0066CFE3    call        Move
 0066CFE8    mov         eax,edi
 0066CFEA    mov         edx,ebx
 0066CFEC    call        WStrSet
 0066CFF1    pop         edi
 0066CFF2    pop         esi
 0066CFF3    pop         ebx
 0066CFF4    ret
*}
end;

//0066CFF8
procedure @InitializeRecord(p:Pointer; typeInfo:Pointer);
begin
{*
 0066CFF8    xor         ecx,ecx
 0066CFFA    push        ebx
 0066CFFB    mov         cl,byte ptr [edx+1]
 0066CFFE    push        esi
 0066CFFF    push        edi
 0066D000    mov         ebx,eax
 0066D002    lea         esi,[ecx+edx+0A]
 0066D006    mov         edi,dword ptr [ecx+edx+6]
 0066D00A    mov         edx,dword ptr [esi]
 0066D00C    mov         eax,dword ptr [esi+4]
 0066D00F    add         eax,ebx
 0066D011    mov         edx,dword ptr [edx]
 0066D013    mov         ecx,1
 0066D018    call        @InitializeArray
 0066D01D    add         esi,8
 0066D020    dec         edi
>0066D021    jg          0066D00A
 0066D023    pop         edi
 0066D024    pop         esi
 0066D025    pop         ebx
 0066D026    ret
*}
end;

//0066D028
procedure @InitializeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);
begin
{*
 0066D028    test        ecx,ecx
>0066D02A    je          0066D0BA
 0066D030    push        ebx
 0066D031    push        esi
 0066D032    push        edi
 0066D033    mov         ebx,eax
 0066D035    mov         esi,edx
 0066D037    mov         edi,ecx
 0066D039    xor         edx,edx
 0066D03B    mov         al,byte ptr [esi]
 0066D03D    mov         dl,byte ptr [esi+1]
 0066D040    xor         ecx,ecx
 0066D042    cmp         al,0A
>0066D044    je          0066D068
 0066D046    cmp         al,0B
>0066D048    je          0066D068
 0066D04A    cmp         al,0C
>0066D04C    je          0066D072
 0066D04E    cmp         al,0D
>0066D050    je          0066D085
 0066D052    cmp         al,0E
>0066D054    je          0066D0A3
 0066D056    cmp         al,0F
>0066D058    je          0066D068
 0066D05A    cmp         al,11
>0066D05C    je          0066D068
 0066D05E    mov         al,2
 0066D060    pop         edi
 0066D061    pop         esi
 0066D062    pop         ebx
>0066D063    jmp         Error
 0066D068    mov         dword ptr [ebx],ecx
 0066D06A    add         ebx,4
 0066D06D    dec         edi
>0066D06E    jg          0066D068
>0066D070    jmp         0066D0B7
 0066D072    mov         dword ptr [ebx],ecx
 0066D074    mov         dword ptr [ebx+4],ecx
 0066D077    mov         dword ptr [ebx+8],ecx
 0066D07A    mov         dword ptr [ebx+0C],ecx
 0066D07D    add         ebx,10
 0066D080    dec         edi
>0066D081    jg          0066D072
>0066D083    jmp         0066D0B7
 0066D085    push        ebp
 0066D086    mov         ebp,edx
 0066D088    mov         edx,dword ptr [esi+ebp+0A]
 0066D08C    mov         eax,ebx
 0066D08E    add         ebx,dword ptr [esi+ebp+2]
 0066D092    mov         ecx,dword ptr [esi+ebp+6]
 0066D096    mov         edx,dword ptr [edx]
 0066D098    call        @InitializeArray
 0066D09D    dec         edi
>0066D09E    jg          0066D088
 0066D0A0    pop         ebp
>0066D0A1    jmp         0066D0B7
 0066D0A3    push        ebp
 0066D0A4    mov         ebp,edx
 0066D0A6    mov         eax,ebx
 0066D0A8    add         ebx,dword ptr [esi+ebp+2]
 0066D0AC    mov         edx,esi
 0066D0AE    call        @InitializeRecord
 0066D0B3    dec         edi
>0066D0B4    jg          0066D0A6
 0066D0B6    pop         ebp
 0066D0B7    pop         edi
 0066D0B8    pop         esi
 0066D0B9    pop         ebx
 0066D0BA    ret
*}
end;

//0066D0BC
procedure @Initialize(p:Pointer; typeInfo:Pointer);
begin
{*
 0066D0BC    mov         ecx,1
>0066D0C1    jmp         @InitializeArray
 0066D0C6    ret
*}
end;

//0066D0C8
procedure @FinalizeRecord(P:Pointer; typeInfo:Pointer);
begin
{*
 0066D0C8    xor         ecx,ecx
 0066D0CA    push        ebx
 0066D0CB    mov         cl,byte ptr [edx+1]
 0066D0CE    push        esi
 0066D0CF    push        edi
 0066D0D0    mov         ebx,eax
 0066D0D2    lea         esi,[ecx+edx+0A]
 0066D0D6    mov         edi,dword ptr [ecx+edx+6]
 0066D0DA    mov         edx,dword ptr [esi]
 0066D0DC    mov         eax,dword ptr [esi+4]
 0066D0DF    add         eax,ebx
 0066D0E1    mov         edx,dword ptr [edx]
 0066D0E3    mov         ecx,1
 0066D0E8    call        @FinalizeArray
 0066D0ED    add         esi,8
 0066D0F0    dec         edi
>0066D0F1    jg          0066D0DA
 0066D0F3    mov         eax,ebx
 0066D0F5    pop         edi
 0066D0F6    pop         esi
 0066D0F7    pop         ebx
 0066D0F8    ret
*}
end;

//0066D0FC
procedure @FinalizeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);
begin
{*
 0066D0FC    cmp         ecx,0
>0066D0FF    je          0066D1E5
 0066D105    push        eax
 0066D106    push        ebx
 0066D107    push        esi
 0066D108    push        edi
 0066D109    mov         ebx,eax
 0066D10B    mov         esi,edx
 0066D10D    mov         edi,ecx
 0066D10F    xor         edx,edx
 0066D111    mov         al,byte ptr [esi]
 0066D113    mov         dl,byte ptr [esi+1]
 0066D116    cmp         al,0A
>0066D118    je          0066D13F
 0066D11A    cmp         al,0B
>0066D11C    je          0066D15C
 0066D11E    cmp         al,0C
>0066D120    je          0066D173
 0066D122    cmp         al,0D
>0066D124    je          0066D182
 0066D126    cmp         al,0E
>0066D128    je          0066D1A0
 0066D12A    cmp         al,0F
>0066D12C    je          0066D1B6
 0066D132    cmp         al,11
>0066D134    je          0066D1C5
>0066D13A    jmp         0066D1D6
 0066D13F    cmp         ecx,1
 0066D142    mov         eax,ebx
>0066D144    jg          0066D150
 0066D146    call        @LStrClr
>0066D14B    jmp         0066D1E1
 0066D150    mov         edx,ecx
 0066D152    call        @LStrArrayClr
>0066D157    jmp         0066D1E1
 0066D15C    cmp         ecx,1
 0066D15F    mov         eax,ebx
>0066D161    jg          0066D16A
 0066D163    call        @WStrClr
>0066D168    jmp         0066D1E1
 0066D16A    mov         edx,ecx
 0066D16C    call        @WStrArrayClr
>0066D171    jmp         0066D1E1
 0066D173    mov         eax,ebx
 0066D175    add         ebx,10
 0066D178    call        @VarClr
 0066D17D    dec         edi
>0066D17E    jg          0066D173
>0066D180    jmp         0066D1E1
 0066D182    push        ebp
 0066D183    mov         ebp,edx
 0066D185    mov         edx,dword ptr [esi+ebp+0A]
 0066D189    mov         eax,ebx
 0066D18B    add         ebx,dword ptr [esi+ebp+2]
 0066D18F    mov         ecx,dword ptr [esi+ebp+6]
 0066D193    mov         edx,dword ptr [edx]
 0066D195    call        @FinalizeArray
 0066D19A    dec         edi
>0066D19B    jg          0066D185
 0066D19D    pop         ebp
>0066D19E    jmp         0066D1E1
 0066D1A0    push        ebp
 0066D1A1    mov         ebp,edx
 0066D1A3    mov         eax,ebx
 0066D1A5    add         ebx,dword ptr [esi+ebp+2]
 0066D1A9    mov         edx,esi
 0066D1AB    call        @FinalizeRecord
 0066D1B0    dec         edi
>0066D1B1    jg          0066D1A3
 0066D1B3    pop         ebp
>0066D1B4    jmp         0066D1E1
 0066D1B6    mov         eax,ebx
 0066D1B8    add         ebx,4
 0066D1BB    call        @IntfClear
 0066D1C0    dec         edi
>0066D1C1    jg          0066D1B6
>0066D1C3    jmp         0066D1E1
 0066D1C5    mov         eax,ebx
 0066D1C7    mov         edx,esi
 0066D1C9    add         ebx,4
 0066D1CC    call        @DynArrayClear
 0066D1D1    dec         edi
>0066D1D2    jg          0066D1C5
>0066D1D4    jmp         0066D1E1
 0066D1D6    pop         edi
 0066D1D7    pop         esi
 0066D1D8    pop         ebx
 0066D1D9    pop         eax
 0066D1DA    mov         al,2
>0066D1DC    jmp         Error
 0066D1E1    pop         edi
 0066D1E2    pop         esi
 0066D1E3    pop         ebx
 0066D1E4    pop         eax
 0066D1E5    ret
*}
end;

//0066D1E8
procedure @Finalize(p:Pointer; typeInfo:Pointer);
begin
{*
 0066D1E8    mov         ecx,1
>0066D1ED    jmp         @FinalizeArray
 0066D1F2    ret
*}
end;

//0066D1F4
procedure @CopyRecord(Dest:Pointer; Source:Pointer; TypeInfo:Pointer);
begin
{*
 0066D1F4    push        ebx
 0066D1F5    push        esi
 0066D1F6    push        edi
 0066D1F7    push        ebp
 0066D1F8    mov         ebx,eax
 0066D1FA    mov         esi,edx
 0066D1FC    xor         eax,eax
 0066D1FE    mov         al,byte ptr [ecx+1]
 0066D201    lea         edi,[eax+ecx+0A]
 0066D205    mov         ebp,dword ptr [edi-4]
 0066D208    xor         eax,eax
 0066D20A    mov         ecx,dword ptr [edi-8]
 0066D20D    push        ecx
 0066D20E    mov         ecx,dword ptr [edi+4]
 0066D211    sub         ecx,eax
>0066D213    jle         0066D220
 0066D215    mov         edx,eax
 0066D217    add         eax,esi
 0066D219    add         edx,ebx
 0066D21B    call        Move
 0066D220    mov         eax,dword ptr [edi+4]
 0066D223    mov         edx,dword ptr [edi]
 0066D225    mov         edx,dword ptr [edx]
 0066D227    mov         cl,byte ptr [edx]
 0066D229    cmp         cl,0A
>0066D22C    je          0066D25F
 0066D22E    cmp         cl,0B
>0066D231    je          0066D270
 0066D233    cmp         cl,0C
>0066D236    je          0066D281
 0066D238    cmp         cl,0D
>0066D23B    je          0066D292
 0066D23D    cmp         cl,0E
>0066D240    je          0066D2B2
 0066D242    cmp         cl,0F
>0066D245    je          0066D2CB
 0066D24B    cmp         cl,11
>0066D24E    je          0066D2DC
 0066D254    mov         al,2
 0066D256    pop         ebp
 0066D257    pop         edi
 0066D258    pop         esi
 0066D259    pop         ebx
>0066D25A    jmp         Error
 0066D25F    mov         edx,dword ptr [eax+esi]
 0066D262    add         eax,ebx
 0066D264    call        @LStrAsg
 0066D269    mov         eax,4
>0066D26E    jmp         0066D2ED
 0066D270    mov         edx,dword ptr [eax+esi]
 0066D273    add         eax,ebx
 0066D275    call        @WStrAsg
 0066D27A    mov         eax,4
>0066D27F    jmp         0066D2ED
 0066D281    lea         edx,[eax+esi]
 0066D284    add         eax,ebx
 0066D286    call        @VarCopy
 0066D28B    mov         eax,10
>0066D290    jmp         0066D2ED
 0066D292    xor         ecx,ecx
 0066D294    mov         cl,byte ptr [edx+1]
 0066D297    push        dword ptr [ecx+edx+2]
 0066D29B    push        dword ptr [ecx+edx+6]
 0066D29F    mov         ecx,dword ptr [ecx+edx+0A]
 0066D2A3    mov         ecx,dword ptr [ecx]
 0066D2A5    lea         edx,[eax+esi]
 0066D2A8    add         eax,ebx
 0066D2AA    call        @CopyArray
 0066D2AF    pop         eax
>0066D2B0    jmp         0066D2ED
 0066D2B2    xor         ecx,ecx
 0066D2B4    mov         cl,byte ptr [edx+1]
 0066D2B7    mov         ecx,dword ptr [ecx+edx+2]
 0066D2BB    push        ecx
 0066D2BC    mov         ecx,edx
 0066D2BE    lea         edx,[eax+esi]
 0066D2C1    add         eax,ebx
 0066D2C3    call        @CopyRecord
 0066D2C8    pop         eax
>0066D2C9    jmp         0066D2ED
 0066D2CB    mov         edx,dword ptr [eax+esi]
 0066D2CE    add         eax,ebx
 0066D2D0    call        @IntfCopy
 0066D2D5    mov         eax,4
>0066D2DA    jmp         0066D2ED
 0066D2DC    mov         ecx,edx
 0066D2DE    mov         edx,dword ptr [eax+esi]
 0066D2E1    add         eax,ebx
 0066D2E3    call        @DynArrayAsg
 0066D2E8    mov         eax,4
 0066D2ED    add         eax,dword ptr [edi+4]
 0066D2F0    add         edi,8
 0066D2F3    dec         ebp
>0066D2F4    jne         0066D20E
 0066D2FA    pop         ecx
 0066D2FB    sub         ecx,eax
>0066D2FD    jle         0066D309
 0066D2FF    lea         edx,[eax+ebx]
 0066D302    add         eax,esi
 0066D304    call        Move
 0066D309    pop         ebp
 0066D30A    pop         edi
 0066D30B    pop         esi
 0066D30C    pop         ebx
 0066D30D    ret
*}
end;

//0066D310
procedure @CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Cnt:Integer);
begin
{*
 0066D310    push        ebx
 0066D311    push        esi
 0066D312    push        edi
 0066D313    push        ebp
 0066D314    mov         ebx,eax
 0066D316    mov         esi,edx
 0066D318    mov         edi,ecx
 0066D31A    mov         ebp,dword ptr [esp+14]
 0066D31E    mov         cl,byte ptr [edi]
 0066D320    cmp         cl,0A
>0066D323    je          0066D356
 0066D325    cmp         cl,0B
>0066D328    je          0066D36D
 0066D32A    cmp         cl,0C
>0066D32D    je          0066D381
 0066D32F    cmp         cl,0D
>0066D332    je          0066D395
 0066D334    cmp         cl,0E
>0066D337    je          0066D3B6
 0066D339    cmp         cl,0F
>0066D33C    je          0066D3D3
 0066D342    cmp         cl,11
>0066D345    je          0066D3E7
 0066D34B    mov         al,2
 0066D34D    pop         ebp
 0066D34E    pop         edi
 0066D34F    pop         esi
 0066D350    pop         ebx
>0066D351    jmp         Error
 0066D356    mov         eax,ebx
 0066D358    mov         edx,dword ptr [esi]
 0066D35A    call        @LStrAsg
 0066D35F    add         ebx,4
 0066D362    add         esi,4
 0066D365    dec         ebp
>0066D366    jne         0066D356
>0066D368    jmp         0066D3FB
 0066D36D    mov         eax,ebx
 0066D36F    mov         edx,dword ptr [esi]
 0066D371    call        @WStrAsg
 0066D376    add         ebx,4
 0066D379    add         esi,4
 0066D37C    dec         ebp
>0066D37D    jne         0066D36D
>0066D37F    jmp         0066D3FB
 0066D381    mov         eax,ebx
 0066D383    mov         edx,esi
 0066D385    call        @VarCopy
 0066D38A    add         ebx,10
 0066D38D    add         esi,10
 0066D390    dec         ebp
>0066D391    jne         0066D381
>0066D393    jmp         0066D3FB
 0066D395    xor         ecx,ecx
 0066D397    mov         cl,byte ptr [edi+1]
 0066D39A    lea         edi,[ecx+edi+2]
 0066D39E    mov         eax,ebx
 0066D3A0    mov         edx,esi
 0066D3A2    mov         ecx,dword ptr [edi+8]
 0066D3A5    push        dword ptr [edi+4]
 0066D3A8    call        @CopyArray
 0066D3AD    add         ebx,dword ptr [edi]
 0066D3AF    add         esi,dword ptr [edi]
 0066D3B1    dec         ebp
>0066D3B2    jne         0066D39E
>0066D3B4    jmp         0066D3FB
 0066D3B6    mov         eax,ebx
 0066D3B8    mov         edx,esi
 0066D3BA    mov         ecx,edi
 0066D3BC    call        @CopyRecord
 0066D3C1    xor         eax,eax
 0066D3C3    mov         al,byte ptr [edi+1]
 0066D3C6    add         ebx,dword ptr [eax+edi+2]
 0066D3CA    add         esi,dword ptr [eax+edi+2]
 0066D3CE    dec         ebp
>0066D3CF    jne         0066D3B6
>0066D3D1    jmp         0066D3FB
 0066D3D3    mov         eax,ebx
 0066D3D5    mov         edx,dword ptr [esi]
 0066D3D7    call        @IntfCopy
 0066D3DC    add         ebx,4
 0066D3DF    add         esi,4
 0066D3E2    dec         ebp
>0066D3E3    jne         0066D3D3
>0066D3E5    jmp         0066D3FB
 0066D3E7    mov         eax,ebx
 0066D3E9    mov         edx,dword ptr [esi]
 0066D3EB    mov         ecx,edi
 0066D3ED    call        @DynArrayAsg
 0066D3F2    add         ebx,4
 0066D3F5    add         esi,4
 0066D3F8    dec         ebp
>0066D3F9    jne         0066D3E7
 0066D3FB    pop         ebp
 0066D3FC    pop         edi
 0066D3FD    pop         esi
 0066D3FE    pop         ebx
 0066D3FF    ret         4
*}
end;

//0066D404
function @New(size:Integer; typeInfo:Pointer):Pointer;
begin
{*
 0066D404    push        edx
 0066D405    call        @GetMem
 0066D40A    pop         edx
 0066D40B    test        eax,eax
>0066D40D    je          0066D416
 0066D40F    push        eax
 0066D410    call        @Initialize
 0066D415    pop         eax
 0066D416    ret
*}
end;

//0066D418
procedure @Dispose(p:Pointer; typeInfo:Pointer);
begin
{*
 0066D418    push        eax
 0066D419    call        @Finalize
 0066D41E    pop         eax
 0066D41F    call        @FreeMem
 0066D424    ret
*}
end;

//0066D428
procedure WideCharLenToStrVar(Source:PWideChar; SourceLen:Integer; var Dest:AnsiString);
begin
{*
 0066D428    xchg        eax,ecx
 0066D429    xchg        ecx,edx
 0066D42B    call        @LStrFromPWCharLen
 0066D430    ret
*}
end;

//0066D434
function StringToWideChar(const Source:AnsiString; Dest:PWideChar; DestSize:Integer):PWideChar;
begin
{*
 0066D434    push        ebx
 0066D435    push        esi
 0066D436    push        edi
 0066D437    mov         edi,ecx
 0066D439    mov         ebx,edx
 0066D43B    mov         esi,eax
 0066D43D    mov         eax,esi
 0066D43F    call        @LStrLen
 0066D444    push        eax
 0066D445    mov         eax,esi
 0066D447    call        @LStrToPChar
 0066D44C    mov         ecx,eax
 0066D44E    mov         edx,edi
 0066D450    dec         edx
 0066D451    mov         eax,ebx
 0066D453    call        WCharFromChar
 0066D458    mov         word ptr [ebx+eax*2],0
 0066D45E    mov         eax,ebx
 0066D460    pop         edi
 0066D461    pop         esi
 0066D462    pop         ebx
 0066D463    ret
*}
end;

//0066D464
procedure OleStrToStrVar(Source:PWideChar; var Dest:AnsiString);
begin
{*
 0066D464    push        ebx
 0066D465    push        esi
 0066D466    push        0
 0066D468    mov         esi,edx
 0066D46A    mov         ebx,eax
 0066D46C    mov         dword ptr [esp],ebx
 0066D46F    mov         eax,dword ptr [esp]
 0066D472    call        @WStrLen
 0066D477    mov         edx,eax
 0066D479    mov         ecx,esi
 0066D47B    mov         eax,ebx
 0066D47D    call        WideCharLenToStrVar
 0066D482    pop         edx
 0066D483    pop         esi
 0066D484    pop         ebx
 0066D485    ret
*}
end;

//0066D488
function StringToOleStr(const Source:AnsiString):PWideChar;
begin
{*
 0066D488    push        ebx
 0066D489    push        ecx
 0066D48A    mov         ebx,eax
 0066D48C    xor         eax,eax
 0066D48E    mov         dword ptr [esp],eax
 0066D491    mov         eax,ebx
 0066D493    call        @LStrLen
 0066D498    mov         ecx,eax
 0066D49A    mov         eax,esp
 0066D49C    mov         edx,ebx
 0066D49E    call        @WStrFromPCharLen
 0066D4A3    mov         eax,dword ptr [esp]
 0066D4A6    pop         edx
 0066D4A7    pop         ebx
 0066D4A8    ret
*}
end;

//0066D4AC
procedure VariantSystemUndefinedError;
begin
{*
 0066D4AC    mov         al,10
>0066D4AE    jmp         Error
 0066D4B3    ret
*}
end;

//0066D4B4
procedure VariantSystemDefaultVarClear(var V:TVarData);
begin
{*
 0066D4B4    mov         ax,word ptr [eax]
 0066D4B7    sub         ax,2
>0066D4BB    jb          0066D4C8
 0066D4BD    sub         ax,8
>0066D4C1    je          0066D4C8
 0066D4C3    call        VariantSystemUndefinedError
 0066D4C8    ret
*}
end;

//0066D4CC
procedure InitVariantManager;
begin
{*
 0066D4CC    mov         edx,6ED928;VariantManager:TVariantManager
 0066D4D1    xor         eax,eax
 0066D4D3    mov         dword ptr [edx+eax*4],66D4AC;VariantSystemUndefinedError
 0066D4DA    inc         eax
 0066D4DB    cmp         eax,2B
>0066D4DE    jne         0066D4D3
 0066D4E0    mov         eax,66D4B4;VariantSystemDefaultVarClear
 0066D4E5    mov         [006ED928],eax;VariantManager:TVariantManager
 0066D4EA    ret
*}
end;

//0066D4EC
procedure GetVariantManager(var VarMgr:TVariantManager);
begin
{*
 0066D4EC    push        esi
 0066D4ED    push        edi
 0066D4EE    mov         edi,eax
 0066D4F0    mov         esi,6ED928;VariantManager:TVariantManager
 0066D4F5    mov         ecx,2B
 0066D4FA    rep movs    dword ptr [edi],dword ptr [esi]
 0066D4FC    pop         edi
 0066D4FD    pop         esi
 0066D4FE    ret
*}
end;

//0066D500
procedure SetVariantManager(const VarMgr:TVariantManager);
begin
{*
 0066D500    push        esi
 0066D501    push        edi
 0066D502    mov         esi,eax
 0066D504    mov         edi,6ED928;VariantManager:TVariantManager
 0066D509    mov         ecx,2B
 0066D50E    rep movs    dword ptr [edi],dword ptr [esi]
 0066D510    pop         edi
 0066D511    pop         esi
 0066D512    ret
*}
end;

//0066D514
procedure @VarClear(var V:Variant);
begin
{*
 0066D514    jmp         dword ptr ds:[6ED928]
 0066D51A    ret
*}
end;

//0066D51C
procedure @VarCopy(var Dest:Variant; const Source:Variant);
begin
{*
 0066D51C    jmp         dword ptr ds:[6ED92C]
 0066D522    ret
*}
end;

//0066D524
procedure sub_0066D524;
begin
{*
 0066D524    jmp         dword ptr ds:[6ED934]
*}
end;

//0066D52C
{*function sub_0066D52C:?;
begin
 0066D52C    jmp         dword ptr ds:[6ED93C]
end;*}

//0066D534
{*function sub_0066D534:?;
begin
 0066D534    jmp         dword ptr ds:[6ED940]
end;*}

//0066D53C
{*function sub_0066D53C:?;
begin
 0066D53C    jmp         dword ptr ds:[6ED944]
end;*}

//0066D544
procedure sub_0066D544;
begin
{*
 0066D544    jmp         dword ptr ds:[6ED948]
*}
end;

//0066D54C
procedure sub_0066D54C;
begin
{*
 0066D54C    jmp         dword ptr ds:[6ED94C]
*}
end;

//0066D554
procedure sub_0066D554;
begin
{*
 0066D554    jmp         dword ptr ds:[6ED954]
*}
end;

//0066D55C
procedure sub_0066D55C;
begin
{*
 0066D55C    jmp         dword ptr ds:[6ED958]
*}
end;

//0066D564
procedure sub_0066D564;
begin
{*
 0066D564    jmp         dword ptr ds:[6ED95C]
*}
end;

//0066D56C
procedure sub_0066D56C;
begin
{*
 0066D56C    jmp         dword ptr ds:[6ED960]
*}
end;

//0066D574
procedure sub_0066D574;
begin
{*
 0066D574    jmp         dword ptr ds:[6ED968]
*}
end;

//0066D57C
procedure @VarFromInt64(var V:Variant; const Value:Int64);
begin
{*
 0066D57C    push        ebp
 0066D57D    mov         ebp,esp
 0066D57F    push        dword ptr [ebp+0C]
 0066D582    push        dword ptr [ebp+8]
 0066D585    call        dword ptr ds:[6ED96C]
 0066D58B    pop         ebp
 0066D58C    ret         8
*}
end;

//0066D590
procedure sub_0066D590;
begin
{*
 0066D590    jmp         dword ptr ds:[6ED970]
*}
end;

//0066D598
procedure sub_0066D598;
begin
{*
 0066D598    jmp         dword ptr ds:[6ED974]
*}
end;

//0066D5A0
procedure sub_0066D5A0;
begin
{*
 0066D5A0    jmp         dword ptr ds:[6ED978]
*}
end;

//0066D5A8
procedure sub_0066D5A8;
begin
{*
 0066D5A8    jmp         dword ptr ds:[6ED97C]
*}
end;

//0066D5B0
procedure sub_0066D5B0;
begin
{*
 0066D5B0    jmp         dword ptr ds:[6ED984]
*}
end;

//0066D5B8
procedure sub_0066D5B8;
begin
{*
 0066D5B8    jmp         dword ptr ds:[6ED988]
*}
end;

//0066D5C0
procedure sub_0066D5C0;
begin
{*
 0066D5C0    jmp         dword ptr ds:[6ED98C]
*}
end;

//0066D5C8
procedure sub_0066D5C8;
begin
{*
 0066D5C8    jmp         dword ptr ds:[6ED990]
*}
end;

//0066D5D0
procedure @VarCmpEQ(const Left:Variant; const Right:Variant);
begin
{*
 0066D5D0    mov         ecx,0E
 0066D5D5    jmp         dword ptr ds:[6ED9AC]
 0066D5DB    ret
*}
end;

//0066D5DC
procedure @VarCmpNE(const Left:Variant; const Right:Variant);
begin
{*
 0066D5DC    mov         ecx,0F
 0066D5E1    jmp         dword ptr ds:[6ED9AC]
 0066D5E7    ret
*}
end;

//0066D5E8
procedure sub_0066D5E8;
begin
{*
 0066D5E8    jmp         dword ptr ds:[6ED9B0]
*}
end;

//0066D5F0
procedure sub_0066D5F0;
begin
{*
 0066D5F0    jmp         dword ptr ds:[6ED9B4]
*}
end;

//0066D5F8
procedure @VarClr(var V:Variant);
begin
{*
 0066D5F8    push        eax
 0066D5F9    call        @VarClear
 0066D5FE    pop         eax
 0066D5FF    ret
*}
end;

//0066D600
procedure @DispCallByIDError;
begin
{*
 0066D600    mov         al,11
>0066D602    jmp         Error
 0066D607    ret
*}
end;

//0066D608
procedure @_llmul;
begin
{*
 0066D608    push        edx
 0066D609    push        eax
 0066D60A    mov         eax,dword ptr [esp+10]
 0066D60E    mul         eax,dword ptr [esp]
 0066D611    mov         ecx,eax
 0066D613    mov         eax,dword ptr [esp+4]
 0066D617    mul         eax,dword ptr [esp+0C]
 0066D61B    add         ecx,eax
 0066D61D    mov         eax,dword ptr [esp]
 0066D620    mul         eax,dword ptr [esp+0C]
 0066D624    add         edx,ecx
 0066D626    pop         ecx
 0066D627    pop         ecx
 0066D628    ret         8
*}
end;

//0066D62C
procedure @_lldiv;
begin
{*
 0066D62C    push        ebp
 0066D62D    push        ebx
 0066D62E    push        esi
 0066D62F    push        edi
 0066D630    xor         edi,edi
 0066D632    mov         ebx,dword ptr [esp+14]
 0066D636    mov         ecx,dword ptr [esp+18]
 0066D63A    or          ecx,ecx
>0066D63C    jne         0066D646
 0066D63E    or          edx,edx
>0066D640    je          0066D69E
 0066D642    or          ebx,ebx
>0066D644    je          0066D69E
 0066D646    or          edx,edx
>0066D648    jns         0066D654
 0066D64A    neg         edx
 0066D64C    neg         eax
 0066D64E    sbb         edx,0
 0066D651    or          edi,1
 0066D654    or          ecx,ecx
>0066D656    jns         0066D662
 0066D658    neg         ecx
 0066D65A    neg         ebx
 0066D65C    sbb         ecx,0
 0066D65F    xor         edi,1
 0066D662    mov         ebp,ecx
 0066D664    mov         ecx,40
 0066D669    push        edi
 0066D66A    xor         edi,edi
 0066D66C    xor         esi,esi
 0066D66E    shl         eax,1
 0066D670    rcl         edx,1
 0066D672    rcl         esi,1
 0066D674    rcl         edi,1
 0066D676    cmp         edi,ebp
>0066D678    jb          0066D685
>0066D67A    ja          0066D680
 0066D67C    cmp         esi,ebx
>0066D67E    jb          0066D685
 0066D680    sub         esi,ebx
 0066D682    sbb         edi,ebp
 0066D684    inc         eax
 0066D685    loop        0066D66E
 0066D687    pop         ebx
 0066D688    test        ebx,1
>0066D68E    je          0066D697
 0066D690    neg         edx
 0066D692    neg         eax
 0066D694    sbb         edx,0
 0066D697    pop         edi
 0066D698    pop         esi
 0066D699    pop         ebx
 0066D69A    pop         ebp
 0066D69B    ret         8
 0066D69E    div         eax,ebx
 0066D6A0    xor         edx,edx
>0066D6A2    jmp         0066D697
 0066D6A4    ret
*}
end;

//0066D6A8
procedure @_lludiv;
begin
{*
 0066D6A8    push        ebp
 0066D6A9    push        ebx
 0066D6AA    push        esi
 0066D6AB    push        edi
 0066D6AC    mov         ebx,dword ptr [esp+14]
 0066D6B0    mov         ecx,dword ptr [esp+18]
 0066D6B4    or          ecx,ecx
>0066D6B6    jne         0066D6C0
 0066D6B8    or          edx,edx
>0066D6BA    je          0066D6EB
 0066D6BC    or          ebx,ebx
>0066D6BE    je          0066D6EB
 0066D6C0    mov         ebp,ecx
 0066D6C2    mov         ecx,40
 0066D6C7    xor         edi,edi
 0066D6C9    xor         esi,esi
 0066D6CB    shl         eax,1
 0066D6CD    rcl         edx,1
 0066D6CF    rcl         esi,1
 0066D6D1    rcl         edi,1
 0066D6D3    cmp         edi,ebp
>0066D6D5    jb          0066D6E2
>0066D6D7    ja          0066D6DD
 0066D6D9    cmp         esi,ebx
>0066D6DB    jb          0066D6E2
 0066D6DD    sub         esi,ebx
 0066D6DF    sbb         edi,ebp
 0066D6E1    inc         eax
 0066D6E2    loop        0066D6CB
 0066D6E4    pop         edi
 0066D6E5    pop         esi
 0066D6E6    pop         ebx
 0066D6E7    pop         ebp
 0066D6E8    ret         8
 0066D6EB    div         eax,ebx
 0066D6ED    xor         edx,edx
>0066D6EF    jmp         0066D6E4
 0066D6F1    ret
*}
end;

//0066D6F4
procedure @_llmod;
begin
{*
 0066D6F4    push        ebp
 0066D6F5    push        ebx
 0066D6F6    push        esi
 0066D6F7    push        edi
 0066D6F8    xor         edi,edi
 0066D6FA    mov         ebx,dword ptr [esp+14]
 0066D6FE    mov         ecx,dword ptr [esp+18]
 0066D702    or          ecx,ecx
>0066D704    jne         0066D70E
 0066D706    or          edx,edx
>0066D708    je          0066D767
 0066D70A    or          ebx,ebx
>0066D70C    je          0066D767
 0066D70E    or          edx,edx
>0066D710    jns         0066D71C
 0066D712    neg         edx
 0066D714    neg         eax
 0066D716    sbb         edx,0
 0066D719    or          edi,1
 0066D71C    or          ecx,ecx
>0066D71E    jns         0066D727
 0066D720    neg         ecx
 0066D722    neg         ebx
 0066D724    sbb         ecx,0
 0066D727    mov         ebp,ecx
 0066D729    mov         ecx,40
 0066D72E    push        edi
 0066D72F    xor         edi,edi
 0066D731    xor         esi,esi
 0066D733    shl         eax,1
 0066D735    rcl         edx,1
 0066D737    rcl         esi,1
 0066D739    rcl         edi,1
 0066D73B    cmp         edi,ebp
>0066D73D    jb          0066D74A
>0066D73F    ja          0066D745
 0066D741    cmp         esi,ebx
>0066D743    jb          0066D74A
 0066D745    sub         esi,ebx
 0066D747    sbb         edi,ebp
 0066D749    inc         eax
 0066D74A    loop        0066D733
 0066D74C    mov         eax,esi
 0066D74E    mov         edx,edi
 0066D750    pop         ebx
 0066D751    test        ebx,1
>0066D757    je          0066D760
 0066D759    neg         edx
 0066D75B    neg         eax
 0066D75D    sbb         edx,0
 0066D760    pop         edi
 0066D761    pop         esi
 0066D762    pop         ebx
 0066D763    pop         ebp
 0066D764    ret         8
 0066D767    div         eax,ebx
 0066D769    xchg        eax,edx
 0066D76A    xor         edx,edx
>0066D76C    jmp         0066D760
 0066D76E    ret
*}
end;

//0066D770
procedure @_llumod;
begin
{*
 0066D770    push        ebp
 0066D771    push        ebx
 0066D772    push        esi
 0066D773    push        edi
 0066D774    mov         ebx,dword ptr [esp+14]
 0066D778    mov         ecx,dword ptr [esp+18]
 0066D77C    or          ecx,ecx
>0066D77E    jne         0066D788
 0066D780    or          edx,edx
>0066D782    je          0066D7B7
 0066D784    or          ebx,ebx
>0066D786    je          0066D7B7
 0066D788    mov         ebp,ecx
 0066D78A    mov         ecx,40
 0066D78F    xor         edi,edi
 0066D791    xor         esi,esi
 0066D793    shl         eax,1
 0066D795    rcl         edx,1
 0066D797    rcl         esi,1
 0066D799    rcl         edi,1
 0066D79B    cmp         edi,ebp
>0066D79D    jb          0066D7AA
>0066D79F    ja          0066D7A5
 0066D7A1    cmp         esi,ebx
>0066D7A3    jb          0066D7AA
 0066D7A5    sub         esi,ebx
 0066D7A7    sbb         edi,ebp
 0066D7A9    inc         eax
 0066D7AA    loop        0066D793
 0066D7AC    mov         eax,esi
 0066D7AE    mov         edx,edi
 0066D7B0    pop         edi
 0066D7B1    pop         esi
 0066D7B2    pop         ebx
 0066D7B3    pop         ebp
 0066D7B4    ret         8
 0066D7B7    div         eax,ebx
 0066D7B9    xchg        eax,edx
 0066D7BA    xor         edx,edx
>0066D7BC    jmp         0066D7B0
 0066D7BE    ret
*}
end;

//0066D7C0
procedure @_llshl;
begin
{*
 0066D7C0    cmp         cl,20
>0066D7C3    jl          0066D7D6
 0066D7C5    cmp         cl,40
>0066D7C8    jl          0066D7CF
 0066D7CA    xor         edx,edx
 0066D7CC    xor         eax,eax
 0066D7CE    ret
 0066D7CF    mov         edx,eax
 0066D7D1    shl         edx,cl
 0066D7D3    xor         eax,eax
 0066D7D5    ret
 0066D7D6    shld        edx,eax,cl
 0066D7D9    shl         eax,cl
 0066D7DB    ret
*}
end;

//0066D7E0
procedure @_llushr;
begin
{*
 0066D7E0    cmp         cl,20
>0066D7E3    jl          0066D7F6
 0066D7E5    cmp         cl,40
>0066D7E8    jl          0066D7EF
 0066D7EA    xor         edx,edx
 0066D7EC    xor         eax,eax
 0066D7EE    ret
 0066D7EF    mov         eax,edx
 0066D7F1    xor         edx,edx
 0066D7F3    shr         eax,cl
 0066D7F5    ret
 0066D7F6    shrd        eax,edx,cl
 0066D7F9    shr         edx,cl
 0066D7FB    ret
*}
end;

//0066D800
function @ValInt64(const s:AnsiString; var code:Integer):Int64;
begin
{*
 0066D800    push        ebx
 0066D801    push        esi
 0066D802    push        edi
 0066D803    push        ebp
 0066D804    add         esp,0FFFFFFEC
 0066D807    mov         dword ptr [esp],edx
 0066D80A    mov         esi,eax
 0066D80C    mov         ebp,1
 0066D811    xor         edi,edi
 0066D813    mov         dword ptr [esp+8],0
 0066D81B    mov         dword ptr [esp+0C],0
 0066D823    test        esi,esi
>0066D825    jne         0066D832
 0066D827    mov         eax,dword ptr [esp]
 0066D82A    mov         dword ptr [eax],ebp
>0066D82C    jmp         0066DA12
 0066D831    inc         ebp
 0066D832    cmp         byte ptr [esi+ebp-1],20
>0066D837    je          0066D831
 0066D839    mov         byte ptr [esp+10],0
 0066D83E    mov         al,byte ptr [esi+ebp-1]
 0066D842    cmp         al,2D
>0066D844    jne         0066D84E
 0066D846    mov         byte ptr [esp+10],1
 0066D84B    inc         ebp
>0066D84C    jmp         0066D853
 0066D84E    cmp         al,2B
>0066D850    jne         0066D853
 0066D852    inc         ebp
 0066D853    mov         bl,1
 0066D855    cmp         byte ptr [esi+ebp-1],24
>0066D85A    je          0066D877
 0066D85C    cmp         byte ptr [esi+ebp-1],30
>0066D861    jne         0066D941
 0066D867    mov         al,byte ptr [esi+ebp]
 0066D86A    call        UpCase
 0066D86F    cmp         al,58
>0066D871    jne         0066D941
 0066D877    cmp         byte ptr [esi+ebp-1],30
>0066D87C    jne         0066D87F
 0066D87E    inc         ebp
 0066D87F    inc         ebp
 0066D880    mov         al,byte ptr [esi+ebp-1]
 0066D884    mov         edx,eax
 0066D886    add         dl,0D0
 0066D889    sub         dl,0A
>0066D88C    jb          0066D8A0
 0066D88E    add         dl,0F9
 0066D891    sub         dl,6
>0066D894    jb          0066D8AD
 0066D896    add         dl,0E6
 0066D899    sub         dl,6
>0066D89C    jb          0066D8BA
>0066D89E    jmp         0066D91A
 0066D8A0    mov         edi,eax
 0066D8A2    and         edi,0FF
 0066D8A8    sub         edi,30
>0066D8AB    jmp         0066D8C5
 0066D8AD    mov         edi,eax
 0066D8AF    and         edi,0FF
 0066D8B5    sub         edi,37
>0066D8B8    jmp         0066D8C5
 0066D8BA    mov         edi,eax
 0066D8BC    and         edi,0FF
 0066D8C2    sub         edi,57
 0066D8C5    cmp         dword ptr [esp+0C],0
>0066D8CA    jne         0066D8D5
 0066D8CC    cmp         dword ptr [esp+8],0
>0066D8D1    jb          0066D91A
>0066D8D3    jmp         0066D8D7
>0066D8D5    jl          0066D91A
 0066D8D7    cmp         dword ptr [esp+0C],0FFFFFFF
>0066D8DF    jne         0066D8EA
 0066D8E1    cmp         dword ptr [esp+8],0FFFFFFFF
>0066D8E6    jbe         0066D8EC
>0066D8E8    jmp         0066D91A
>0066D8EA    jg          0066D91A
 0066D8EC    mov         eax,edi
 0066D8EE    cdq
 0066D8EF    push        edx
 0066D8F0    push        eax
 0066D8F1    mov         eax,dword ptr [esp+10]
 0066D8F5    mov         edx,dword ptr [esp+14]
 0066D8F9    shld        edx,eax,4
 0066D8FD    shl         eax,4
 0066D900    add         eax,dword ptr [esp]
 0066D903    adc         edx,dword ptr [esp+4]
 0066D907    add         esp,8
 0066D90A    mov         dword ptr [esp+8],eax
 0066D90E    mov         dword ptr [esp+0C],edx
 0066D912    inc         ebp
 0066D913    xor         ebx,ebx
>0066D915    jmp         0066D880
 0066D91A    cmp         byte ptr [esp+10],0
>0066D91F    je          0066D9F8
 0066D925    mov         eax,dword ptr [esp+8]
 0066D929    mov         edx,dword ptr [esp+0C]
 0066D92D    neg         eax
 0066D92F    adc         edx,0
 0066D932    neg         edx
 0066D934    mov         dword ptr [esp+8],eax
 0066D938    mov         dword ptr [esp+0C],edx
>0066D93C    jmp         0066D9F8
 0066D941    mov         al,byte ptr [esi+ebp-1]
 0066D945    mov         edx,eax
 0066D947    add         dl,0D0
 0066D94A    sub         dl,0A
>0066D94D    jae         0066D9B1
 0066D94F    mov         edi,eax
 0066D951    and         edi,0FF
 0066D957    sub         edi,30
 0066D95A    cmp         dword ptr [esp+0C],0
>0066D95F    jne         0066D96A
 0066D961    cmp         dword ptr [esp+8],0
>0066D966    jb          0066D9B1
>0066D968    jmp         0066D96C
>0066D96A    jl          0066D9B1
 0066D96C    cmp         dword ptr [esp+0C],0CCCCCCC
>0066D974    jne         0066D982
 0066D976    cmp         dword ptr [esp+8],0CCCCCCCC
>0066D97E    jbe         0066D984
>0066D980    jmp         0066D9B1
>0066D982    jg          0066D9B1
 0066D984    push        0
 0066D986    push        0A
 0066D988    mov         eax,dword ptr [esp+10]
 0066D98C    mov         edx,dword ptr [esp+14]
 0066D990    call        @_llmul
 0066D995    push        edx
 0066D996    push        eax
 0066D997    mov         eax,edi
 0066D999    cdq
 0066D99A    add         eax,dword ptr [esp]
 0066D99D    adc         edx,dword ptr [esp+4]
 0066D9A1    add         esp,8
 0066D9A4    mov         dword ptr [esp+8],eax
 0066D9A8    mov         dword ptr [esp+0C],edx
 0066D9AC    inc         ebp
 0066D9AD    xor         ebx,ebx
>0066D9AF    jmp         0066D941
 0066D9B1    cmp         byte ptr [esp+10],0
>0066D9B6    je          0066D9CF
 0066D9B8    mov         eax,dword ptr [esp+8]
 0066D9BC    mov         edx,dword ptr [esp+0C]
 0066D9C0    neg         eax
 0066D9C2    adc         edx,0
 0066D9C5    neg         edx
 0066D9C7    mov         dword ptr [esp+8],eax
 0066D9CB    mov         dword ptr [esp+0C],edx
 0066D9CF    cmp         dword ptr [esp+0C],0
>0066D9D4    jne         0066D9DB
 0066D9D6    cmp         dword ptr [esp+8],0
>0066D9DB    je          0066D9F8
 0066D9DD    cmp         dword ptr [esp+0C],0
>0066D9E2    jne         0066D9EE
 0066D9E4    cmp         dword ptr [esp+8],0
 0066D9E9    setb        al
>0066D9EC    jmp         0066D9F1
 0066D9EE    setl        al
 0066D9F1    cmp         al,byte ptr [esp+10]
>0066D9F5    je          0066D9F8
 0066D9F7    dec         ebp
 0066D9F8    cmp         byte ptr [esi+ebp-1],0
 0066D9FD    setne       al
 0066DA00    or          bl,al
>0066DA02    je          0066DA0B
 0066DA04    mov         eax,dword ptr [esp]
 0066DA07    mov         dword ptr [eax],ebp
>0066DA09    jmp         0066DA12
 0066DA0B    mov         eax,dword ptr [esp]
 0066DA0E    xor         edx,edx
 0066DA10    mov         dword ptr [eax],edx
 0066DA12    mov         eax,dword ptr [esp+8]
 0066DA16    mov         edx,dword ptr [esp+0C]
 0066DA1A    add         esp,14
 0066DA1D    pop         ebp
 0066DA1E    pop         edi
 0066DA1F    pop         esi
 0066DA20    pop         ebx
 0066DA21    ret
*}
end;

//0066DA24
function @DynArrayLength(Arr:Pointer):Longint;
begin
{*
 0066DA24    test        eax,eax
>0066DA26    je          0066DA2B
 0066DA28    mov         eax,dword ptr [eax-4]
 0066DA2B    ret
*}
end;

//0066DA2C
{*function sub_0066DA2C:?;
begin
 0066DA2C    call        @DynArrayLength
 0066DA31    dec         eax
 0066DA32    ret
end;*}

//0066DA34
procedure CopyArray(dest:Pointer; source:Pointer; typeInfo:Pointer; cnt:Integer);
begin
{*
 0066DA34    push        ebp
 0066DA35    mov         ebp,esp
 0066DA37    push        dword ptr [ebp+8]
 0066DA3A    call        @CopyArray
 0066DA3F    pop         ebp
 0066DA40    ret         4
*}
end;

//0066DA44
procedure FinalizeArray(p:Pointer; typeInfo:Pointer; cnt:Integer);
begin
{*
>0066DA44    jmp         @FinalizeArray
 0066DA49    ret
*}
end;

//0066DA4C
procedure DynArrayClear(var arr:Pointer; typeInfo:PDynArrayTypeInfo);
begin
{*
 0066DA4C    call        @DynArrayClear
 0066DA51    ret
*}
end;

//0066DA54
procedure DynArraySetLength(var arr:Pointer; typeInfo:PDynArrayTypeInfo; dimCnt:Longint; lenVec:PLongint);
begin
{*
 0066DA54    push        ebp
 0066DA55    mov         ebp,esp
 0066DA57    add         esp,0FFFFFFE0
 0066DA5A    push        ebx
 0066DA5B    push        esi
 0066DA5C    push        edi
 0066DA5D    mov         dword ptr [ebp-8],ecx
 0066DA60    mov         esi,edx
 0066DA62    mov         dword ptr [ebp-4],eax
 0066DA65    mov         ebx,dword ptr [ebp-4]
 0066DA68    mov         ebx,dword ptr [ebx]
 0066DA6A    mov         eax,dword ptr [ebp+8]
 0066DA6D    mov         edi,dword ptr [eax]
 0066DA6F    test        edi,edi
>0066DA71    jg          0066DA8D
 0066DA73    test        edi,edi
>0066DA75    jge         0066DA7E
 0066DA77    mov         al,4
 0066DA79    call        Error
 0066DA7E    mov         eax,dword ptr [ebp-4]
 0066DA81    mov         edx,esi
 0066DA83    call        DynArrayClear
>0066DA88    jmp         0066DBD7
 0066DA8D    xor         eax,eax
 0066DA8F    mov         dword ptr [ebp-10],eax
 0066DA92    test        ebx,ebx
>0066DA94    je          0066DAA1
 0066DA96    sub         ebx,4
 0066DA99    mov         eax,dword ptr [ebx]
 0066DA9B    mov         dword ptr [ebp-10],eax
 0066DA9E    sub         ebx,4
 0066DAA1    xor         eax,eax
 0066DAA3    mov         al,byte ptr [esi+1]
 0066DAA6    add         esi,eax
 0066DAA8    mov         eax,esi
 0066DAAA    mov         edx,dword ptr [eax+2]
 0066DAAD    mov         dword ptr [ebp-18],edx
 0066DAB0    mov         edx,dword ptr [eax+6]
 0066DAB3    test        edx,edx
>0066DAB5    je          0066DABB
 0066DAB7    mov         esi,dword ptr [edx]
>0066DAB9    jmp         0066DABD
 0066DABB    xor         esi,esi
 0066DABD    mov         eax,edi
 0066DABF    imul        dword ptr [ebp-18]
 0066DAC2    mov         dword ptr [ebp-1C],eax
 0066DAC5    mov         eax,dword ptr [ebp-1C]
 0066DAC8    cdq
 0066DAC9    idiv        eax,edi
 0066DACB    cmp         eax,dword ptr [ebp-18]
>0066DACE    je          0066DAD7
 0066DAD0    mov         al,4
 0066DAD2    call        Error
 0066DAD7    add         dword ptr [ebp-1C],8
 0066DADB    test        ebx,ebx
>0066DADD    je          0066DAE4
 0066DADF    cmp         dword ptr [ebx],1
>0066DAE2    jne         0066DB19
 0066DAE4    mov         dword ptr [ebp-20],ebx
 0066DAE7    cmp         edi,dword ptr [ebp-10]
>0066DAEA    jge         0066DB09
 0066DAEC    test        esi,esi
>0066DAEE    je          0066DB09
 0066DAF0    mov         eax,ebx
 0066DAF2    add         eax,8
 0066DAF5    mov         edx,edi
 0066DAF7    imul        edx,dword ptr [ebp-18]
 0066DAFB    add         eax,edx
 0066DAFD    mov         ecx,dword ptr [ebp-10]
 0066DB00    sub         ecx,edi
 0066DB02    mov         edx,esi
 0066DB04    call        FinalizeArray
 0066DB09    lea         eax,[ebp-20]
 0066DB0C    mov         edx,dword ptr [ebp-1C]
 0066DB0F    call        @ReallocMem
 0066DB14    mov         ebx,dword ptr [ebp-20]
>0066DB17    jmp         0066DB77
 0066DB19    dec         dword ptr [ebx]
 0066DB1B    mov         eax,dword ptr [ebp-1C]
 0066DB1E    call        @GetMem
 0066DB23    mov         ebx,eax
 0066DB25    mov         eax,dword ptr [ebp-10]
 0066DB28    mov         dword ptr [ebp-14],eax
 0066DB2B    cmp         edi,dword ptr [ebp-14]
>0066DB2E    jge         0066DB33
 0066DB30    mov         dword ptr [ebp-14],edi
 0066DB33    test        esi,esi
>0066DB35    je          0066DB61
 0066DB37    mov         edx,dword ptr [ebp-14]
 0066DB3A    imul        edx,dword ptr [ebp-18]
 0066DB3E    mov         eax,ebx
 0066DB40    add         eax,8
 0066DB43    xor         ecx,ecx
 0066DB45    call        @FillChar
 0066DB4A    mov         eax,dword ptr [ebp-14]
 0066DB4D    push        eax
 0066DB4E    mov         edx,dword ptr [ebp-4]
 0066DB51    mov         edx,dword ptr [edx]
 0066DB53    mov         eax,ebx
 0066DB55    add         eax,8
 0066DB58    mov         ecx,esi
 0066DB5A    call        CopyArray
>0066DB5F    jmp         0066DB77
 0066DB61    mov         ecx,dword ptr [ebp-14]
 0066DB64    imul        ecx,dword ptr [ebp-18]
 0066DB68    mov         edx,ebx
 0066DB6A    add         edx,8
 0066DB6D    mov         eax,dword ptr [ebp-4]
 0066DB70    mov         eax,dword ptr [eax]
 0066DB72    call        Move
 0066DB77    mov         dword ptr [ebx],1
 0066DB7D    add         ebx,4
 0066DB80    mov         dword ptr [ebx],edi
 0066DB82    add         ebx,4
 0066DB85    mov         edx,edi
 0066DB87    sub         edx,dword ptr [ebp-10]
 0066DB8A    imul        edx,dword ptr [ebp-18]
 0066DB8E    mov         eax,dword ptr [ebp-18]
 0066DB91    imul        eax,dword ptr [ebp-10]
 0066DB95    add         eax,ebx
 0066DB97    xor         ecx,ecx
 0066DB99    call        @FillChar
 0066DB9E    cmp         dword ptr [ebp-8],1
>0066DBA2    jle         0066DBD2
 0066DBA4    add         dword ptr [ebp+8],4
 0066DBA8    dec         dword ptr [ebp-8]
 0066DBAB    dec         edi
 0066DBAC    test        edi,edi
>0066DBAE    jl          0066DBD2
 0066DBB0    inc         edi
 0066DBB1    mov         dword ptr [ebp-0C],0
 0066DBB8    mov         eax,dword ptr [ebp+8]
 0066DBBB    push        eax
 0066DBBC    mov         eax,dword ptr [ebp-0C]
 0066DBBF    lea         eax,[ebx+eax*4]
 0066DBC2    mov         ecx,dword ptr [ebp-8]
 0066DBC5    mov         edx,esi
 0066DBC7    call        DynArraySetLength
 0066DBCC    inc         dword ptr [ebp-0C]
 0066DBCF    dec         edi
>0066DBD0    jne         0066DBB8
 0066DBD2    mov         eax,dword ptr [ebp-4]
 0066DBD5    mov         dword ptr [eax],ebx
 0066DBD7    pop         edi
 0066DBD8    pop         esi
 0066DBD9    pop         ebx
 0066DBDA    mov         esp,ebp
 0066DBDC    pop         ebp
 0066DBDD    ret         4
*}
end;

//0066DBE0
procedure @DynArraySetLength(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo; DimCnt:Longint; LengthVec:Longint);
begin
{*
 0066DBE0    push        esp
 0066DBE1    add         dword ptr [esp],4
 0066DBE5    call        DynArraySetLength
 0066DBEA    ret
*}
end;

//0066DBEC
procedure @DynArrayCopy(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; var Result:Pointer);
begin
{*
 0066DBEC    push        ebx
 0066DBED    test        eax,eax
>0066DBEF    je          0066DC03
 0066DBF1    mov         ebx,eax
 0066DBF3    sub         ebx,4
 0066DBF6    mov         ebx,dword ptr [ebx]
 0066DBF8    push        ebx
 0066DBF9    push        ecx
 0066DBFA    xor         ecx,ecx
 0066DBFC    call        @DynArrayCopyRange
 0066DC01    pop         ebx
 0066DC02    ret
 0066DC03    mov         eax,ecx
 0066DC05    call        @DynArrayClear
 0066DC0A    pop         ebx
 0066DC0B    ret
*}
end;

//0066DC0C
procedure @DynArrayCopyRange(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; Index:Integer; Count:Integer; var Result:Pointer);
begin
{*
 0066DC0C    push        ebp
 0066DC0D    mov         ebp,esp
 0066DC0F    add         esp,0FFFFFFF0
 0066DC12    push        ebx
 0066DC13    push        esi
 0066DC14    push        edi
 0066DC15    mov         edi,ecx
 0066DC17    mov         dword ptr [ebp-8],edx
 0066DC1A    mov         dword ptr [ebp-4],eax
 0066DC1D    mov         esi,dword ptr [ebp+0C]
 0066DC20    xor         ebx,ebx
 0066DC22    cmp         dword ptr [ebp-4],0
>0066DC26    je          0066DCE6
 0066DC2C    mov         eax,dword ptr [ebp-8]
 0066DC2F    mov         dword ptr [ebp-10],eax
 0066DC32    test        edi,edi
>0066DC34    jge         0066DC3A
 0066DC36    add         esi,edi
 0066DC38    xor         edi,edi
 0066DC3A    mov         eax,dword ptr [ebp-4]
 0066DC3D    sub         eax,4
 0066DC40    mov         eax,dword ptr [eax]
 0066DC42    cmp         eax,edi
>0066DC44    jge         0066DC48
 0066DC46    mov         edi,eax
 0066DC48    mov         edx,eax
 0066DC4A    sub         edx,edi
 0066DC4C    cmp         esi,edx
>0066DC4E    jle         0066DC52
 0066DC50    mov         esi,edx
 0066DC52    test        esi,esi
>0066DC54    jge         0066DC58
 0066DC56    xor         esi,esi
 0066DC58    test        esi,esi
>0066DC5A    jle         0066DCE6
 0066DC60    mov         eax,dword ptr [ebp-10]
 0066DC63    movzx       eax,byte ptr [eax+1]
 0066DC67    add         dword ptr [ebp-10],eax
 0066DC6A    mov         eax,dword ptr [ebp-10]
 0066DC6D    mov         eax,dword ptr [eax+2]
 0066DC70    mov         dword ptr [ebp-0C],eax
 0066DC73    mov         eax,dword ptr [ebp-10]
 0066DC76    mov         eax,dword ptr [eax+6]
 0066DC79    test        eax,eax
>0066DC7B    je          0066DC84
 0066DC7D    mov         eax,dword ptr [eax]
 0066DC7F    mov         dword ptr [ebp-10],eax
>0066DC82    jmp         0066DC89
 0066DC84    xor         eax,eax
 0066DC86    mov         dword ptr [ebp-10],eax
 0066DC89    mov         eax,esi
 0066DC8B    imul        dword ptr [ebp-0C]
 0066DC8E    add         eax,8
 0066DC91    call        @GetMem
 0066DC96    mov         ebx,eax
 0066DC98    mov         dword ptr [ebx],1
 0066DC9E    add         ebx,4
 0066DCA1    mov         dword ptr [ebx],esi
 0066DCA3    add         ebx,4
 0066DCA6    imul        edi,dword ptr [ebp-0C]
 0066DCAA    add         dword ptr [ebp-4],edi
 0066DCAD    test        esi,esi
>0066DCAF    jle         0066DCE6
 0066DCB1    cmp         dword ptr [ebp-10],0
>0066DCB5    je          0066DCD6
 0066DCB7    mov         edx,esi
 0066DCB9    imul        edx,dword ptr [ebp-0C]
 0066DCBD    mov         eax,ebx
 0066DCBF    xor         ecx,ecx
 0066DCC1    call        @FillChar
 0066DCC6    push        esi
 0066DCC7    mov         ecx,dword ptr [ebp-10]
 0066DCCA    mov         edx,dword ptr [ebp-4]
 0066DCCD    mov         eax,ebx
 0066DCCF    call        CopyArray
>0066DCD4    jmp         0066DCE6
 0066DCD6    mov         ecx,esi
 0066DCD8    imul        ecx,dword ptr [ebp-0C]
 0066DCDC    mov         edx,ebx
 0066DCDE    mov         eax,dword ptr [ebp-4]
 0066DCE1    call        Move
 0066DCE6    mov         eax,dword ptr [ebp+8]
 0066DCE9    mov         edx,dword ptr [ebp-8]
 0066DCEC    call        DynArrayClear
 0066DCF1    mov         eax,dword ptr [ebp+8]
 0066DCF4    mov         dword ptr [eax],ebx
 0066DCF6    pop         edi
 0066DCF7    pop         esi
 0066DCF8    pop         ebx
 0066DCF9    mov         esp,ebp
 0066DCFB    pop         ebp
 0066DCFC    ret         8
*}
end;

//0066DD00
procedure @DynArrayClear(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo);
begin
{*
 0066DD00    mov         ecx,dword ptr [eax]
 0066DD02    test        ecx,ecx
>0066DD04    je          0066DD39
 0066DD06    mov         dword ptr [eax],0
 0066DD0C    lock dec    dword ptr [ecx-8]
>0066DD10    jne         0066DD39
 0066DD12    push        eax
 0066DD13    mov         eax,ecx
 0066DD15    xor         ecx,ecx
 0066DD17    mov         cl,byte ptr [edx+1]
 0066DD1A    mov         edx,dword ptr [ecx+edx+6]
 0066DD1E    test        edx,edx
>0066DD20    je          0066DD30
 0066DD22    mov         ecx,dword ptr [eax-4]
 0066DD25    test        ecx,ecx
>0066DD27    je          0066DD30
 0066DD29    mov         edx,dword ptr [edx]
 0066DD2B    call        @FinalizeArray
 0066DD30    sub         eax,8
 0066DD33    call        @FreeMem
 0066DD38    pop         eax
 0066DD39    ret
*}
end;

//0066DD3C
procedure @DynArrayAsg(var Dest:Pointer; Source:Pointer; TypeInfo:PDynArrayTypeInfo);
begin
{*
 0066DD3C    push        ebx
 0066DD3D    mov         ebx,dword ptr [eax]
 0066DD3F    test        edx,edx
>0066DD41    je          0066DD47
 0066DD43    lock inc    dword ptr [edx-8]
 0066DD47    test        ebx,ebx
>0066DD49    je          0066DD5F
 0066DD4B    lock dec    dword ptr [ebx-8]
>0066DD4F    jne         0066DD5F
 0066DD51    push        eax
 0066DD52    push        edx
 0066DD53    mov         edx,ecx
 0066DD55    inc         dword ptr [ebx-8]
 0066DD58    call        @DynArrayClear
 0066DD5D    pop         edx
 0066DD5E    pop         eax
 0066DD5F    mov         dword ptr [eax],edx
 0066DD61    pop         ebx
 0066DD62    ret
*}
end;

//0066DD64
function FindHInstance(Address:Pointer):Cardinal;
begin
{*
 0066DD64    add         esp,0FFFFFFE4
 0066DD67    push        1C
 0066DD69    lea         edx,[esp+4]
 0066DD6D    push        edx
 0066DD6E    push        eax
 0066DD6F    call        KERNEL32.VirtualQuery
 0066DD74    cmp         dword ptr [esp+10],1000
>0066DD7C    jne         0066DD84
 0066DD7E    mov         eax,dword ptr [esp+4]
>0066DD82    jmp         0066DD86
 0066DD84    xor         eax,eax
 0066DD86    add         esp,1C
 0066DD89    ret
*}
end;

//0066DD8C
procedure sub_0066DD8C;
begin
{*
 0066DD8C    call        FindHInstance
 0066DD91    ret
*}
end;

//0066DD94
function DelayLoadResourceModule(Module:PLibModule):Cardinal;
begin
{*
 0066DD94    push        ebx
 0066DD95    push        esi
 0066DD96    add         esp,0FFFFFEF8
 0066DD9C    mov         ebx,eax
 0066DD9E    cmp         dword ptr [ebx+10],0
>0066DDA2    jne         0066DDCF
 0066DDA4    push        105
 0066DDA9    lea         eax,[esp+4]
 0066DDAD    push        eax
 0066DDAE    mov         eax,dword ptr [ebx+4]
 0066DDB1    push        eax
 0066DDB2    call        KERNEL32.GetModuleFileNameA
 0066DDB7    mov         eax,esp
 0066DDB9    mov         dl,1
 0066DDBB    call        LoadResourceModule
 0066DDC0    mov         esi,eax
 0066DDC2    mov         dword ptr [ebx+10],esi
 0066DDC5    test        esi,esi
>0066DDC7    jne         0066DDCF
 0066DDC9    mov         eax,dword ptr [ebx+4]
 0066DDCC    mov         dword ptr [ebx+10],eax
 0066DDCF    mov         eax,dword ptr [ebx+10]
 0066DDD2    add         esp,108
 0066DDD8    pop         esi
 0066DDD9    pop         ebx
 0066DDDA    ret
*}
end;

//0066DDDC
function FindResourceHInstance(Instance:Cardinal):Cardinal;
begin
{*
 0066DDDC    mov         edx,dword ptr ds:[6E4E98];gvar_006E4E98
 0066DDE2    test        edx,edx
>0066DDE4    je          0066DE03
 0066DDE6    cmp         eax,dword ptr [edx+4]
>0066DDE9    je          0066DDF5
 0066DDEB    cmp         eax,dword ptr [edx+8]
>0066DDEE    je          0066DDF5
 0066DDF0    cmp         eax,dword ptr [edx+0C]
>0066DDF3    jne         0066DDFD
 0066DDF5    mov         eax,edx
 0066DDF7    call        DelayLoadResourceModule
 0066DDFC    ret
 0066DDFD    mov         edx,dword ptr [edx]
 0066DDFF    test        edx,edx
>0066DE01    jne         0066DDE6
 0066DE03    ret
*}
end;

//0066DE04
function FindBS(Current:PAnsiChar):PAnsiChar;
begin
{*
>0066DE04    jmp         0066DE0C
 0066DE06    push        eax
 0066DE07    call        USER32.CharNextA
 0066DE0C    mov         dl,byte ptr [eax]
 0066DE0E    test        dl,dl
>0066DE10    je          0066DE17
 0066DE12    cmp         dl,5C
>0066DE15    jne         0066DE06
 0066DE17    ret
*}
end;

//0066DE18
function ToLongPath(AFileName:PAnsiChar; BufSize:Integer):PAnsiChar;
begin
{*
 0066DE18    push        ebp
 0066DE19    mov         ebp,esp
 0066DE1B    add         esp,0FFFFFDB0
 0066DE21    push        ebx
 0066DE22    push        esi
 0066DE23    push        edi
 0066DE24    mov         dword ptr [ebp-8],edx
 0066DE27    mov         dword ptr [ebp-4],eax
 0066DE2A    mov         eax,dword ptr [ebp-4]
 0066DE2D    mov         dword ptr [ebp-0C],eax
 0066DE30    push        66DFAC
 0066DE35    call        KERNEL32.GetModuleHandleA
 0066DE3A    mov         esi,eax
 0066DE3C    test        esi,esi
>0066DE3E    je          0066DE80
 0066DE40    push        66DFBC
 0066DE45    push        esi
 0066DE46    call        KERNEL32.GetProcAddress
 0066DE4B    mov         ebx,eax
 0066DE4D    test        ebx,ebx
>0066DE4F    je          0066DE80
 0066DE51    push        105
 0066DE56    lea         eax,[ebp-24F]
 0066DE5C    push        eax
 0066DE5D    mov         eax,dword ptr [ebp-4]
 0066DE60    push        eax
 0066DE61    call        ebx
 0066DE63    test        eax,eax
>0066DE65    je          0066DE80
 0066DE67    mov         eax,dword ptr [ebp-8]
 0066DE6A    push        eax
 0066DE6B    lea         eax,[ebp-24F]
 0066DE71    push        eax
 0066DE72    mov         eax,dword ptr [ebp-4]
 0066DE75    push        eax
 0066DE76    call        KERNEL32.lstrcpynA
>0066DE7B    jmp         0066DFA2
 0066DE80    mov         eax,dword ptr [ebp-4]
 0066DE83    cmp         byte ptr [eax],5C
>0066DE86    jne         0066DEC0
 0066DE88    mov         eax,dword ptr [ebp-4]
 0066DE8B    cmp         byte ptr [eax+1],5C
>0066DE8F    jne         0066DFA2
 0066DE95    mov         eax,dword ptr [ebp-4]
 0066DE98    add         eax,2
 0066DE9B    call        FindBS
 0066DEA0    mov         esi,eax
 0066DEA2    cmp         byte ptr [esi],0
>0066DEA5    je          0066DFA2
 0066DEAB    lea         eax,[esi+1]
 0066DEAE    call        FindBS
 0066DEB3    mov         esi,eax
 0066DEB5    cmp         byte ptr [esi],0
>0066DEB8    je          0066DFA2
>0066DEBE    jmp         0066DEC6
 0066DEC0    mov         esi,dword ptr [ebp-4]
 0066DEC3    add         esi,2
 0066DEC6    mov         ebx,esi
 0066DEC8    sub         ebx,dword ptr [ebp-4]
 0066DECB    lea         eax,[ebx+1]
 0066DECE    push        eax
 0066DECF    mov         eax,dword ptr [ebp-4]
 0066DED2    push        eax
 0066DED3    lea         eax,[ebp-24F]
 0066DED9    push        eax
 0066DEDA    call        KERNEL32.lstrcpynA
>0066DEDF    jmp         0066DF85
 0066DEE4    lea         eax,[esi+1]
 0066DEE7    call        FindBS
 0066DEEC    mov         edi,eax
 0066DEEE    mov         eax,edi
 0066DEF0    sub         eax,esi
 0066DEF2    mov         edx,eax
 0066DEF4    add         edx,ebx
 0066DEF6    inc         edx
 0066DEF7    cmp         edx,105
>0066DEFD    jg          0066DFA2
 0066DF03    inc         eax
 0066DF04    push        eax
 0066DF05    push        esi
 0066DF06    lea         eax,[ebp-24F]
 0066DF0C    add         eax,ebx
 0066DF0E    push        eax
 0066DF0F    call        KERNEL32.lstrcpynA
 0066DF14    lea         eax,[ebp-14A]
 0066DF1A    push        eax
 0066DF1B    lea         eax,[ebp-24F]
 0066DF21    push        eax
 0066DF22    call        KERNEL32.FindFirstFileA
 0066DF27    mov         esi,eax
 0066DF29    cmp         esi,0FFFFFFFF
>0066DF2C    je          0066DFA2
 0066DF2E    push        esi
 0066DF2F    call        KERNEL32.FindClose
 0066DF34    lea         eax,[ebp-11E]
 0066DF3A    push        eax
 0066DF3B    call        KERNEL32.lstrlenA
 0066DF40    lea         edx,[ebx+1]
 0066DF43    add         eax,edx
 0066DF45    inc         eax
 0066DF46    cmp         eax,105
>0066DF4B    jg          0066DFA2
 0066DF4D    mov         byte ptr [ebp+ebx-24F],5C
 0066DF55    mov         eax,105
 0066DF5A    sub         eax,ebx
 0066DF5C    dec         eax
 0066DF5D    push        eax
 0066DF5E    lea         eax,[ebp-11E]
 0066DF64    push        eax
 0066DF65    lea         eax,[ebp-24F]
 0066DF6B    add         eax,ebx
 0066DF6D    inc         eax
 0066DF6E    push        eax
 0066DF6F    call        KERNEL32.lstrcpynA
 0066DF74    lea         eax,[ebp-11E]
 0066DF7A    push        eax
 0066DF7B    call        KERNEL32.lstrlenA
 0066DF80    inc         eax
 0066DF81    add         ebx,eax
 0066DF83    mov         esi,edi
 0066DF85    cmp         byte ptr [esi],0
>0066DF88    jne         0066DEE4
 0066DF8E    mov         eax,dword ptr [ebp-8]
 0066DF91    push        eax
 0066DF92    lea         eax,[ebp-24F]
 0066DF98    push        eax
 0066DF99    mov         eax,dword ptr [ebp-4]
 0066DF9C    push        eax
 0066DF9D    call        KERNEL32.lstrcpynA
 0066DFA2    mov         eax,dword ptr [ebp-0C]
 0066DFA5    pop         edi
 0066DFA6    pop         esi
 0066DFA7    pop         ebx
 0066DFA8    mov         esp,ebp
 0066DFAA    pop         ebp
 0066DFAB    ret
*}
end;

//0066DFD0
function LoadResourceModule(ModuleName:PAnsiChar; CheckOwner:Boolean):Cardinal;
begin
{*
 0066DFD0    push        ebp
 0066DFD1    mov         ebp,esp
 0066DFD3    add         esp,0FFFFFEE0
 0066DFD9    push        ebx
 0066DFDA    push        esi
 0066DFDB    mov         dword ptr [ebp-4],eax
 0066DFDE    push        105
 0066DFE3    lea         eax,[ebp-11D]
 0066DFE9    push        eax
 0066DFEA    push        0
 0066DFEC    call        KERNEL32.GetModuleFileNameA
 0066DFF1    mov         byte ptr [ebp-12],0
 0066DFF5    lea         eax,[ebp-8]
 0066DFF8    push        eax
 0066DFF9    push        0F0019
 0066DFFE    push        0
 0066E000    push        66E200
 0066E005    push        80000001
 0066E00A    call        ADVAPI32.RegOpenKeyExA
 0066E00F    test        eax,eax
>0066E011    je          0066E053
 0066E013    lea         eax,[ebp-8]
 0066E016    push        eax
 0066E017    push        0F0019
 0066E01C    push        0
 0066E01E    push        66E200
 0066E023    push        80000002
 0066E028    call        ADVAPI32.RegOpenKeyExA
 0066E02D    test        eax,eax
>0066E02F    je          0066E053
 0066E031    lea         eax,[ebp-8]
 0066E034    push        eax
 0066E035    push        0F0019
 0066E03A    push        0
 0066E03C    push        66E21C
 0066E041    push        80000001
 0066E046    call        ADVAPI32.RegOpenKeyExA
 0066E04B    test        eax,eax
>0066E04D    jne         0066E0DC
 0066E053    xor         eax,eax
 0066E055    push        ebp
 0066E056    push        66E0D5
 0066E05B    push        dword ptr fs:[eax]
 0066E05E    mov         dword ptr fs:[eax],esp
 0066E061    mov         dword ptr [ebp-18],5
 0066E068    lea         eax,[ebp-11D]
 0066E06E    mov         edx,105
 0066E073    call        ToLongPath
 0066E078    lea         eax,[ebp-18]
 0066E07B    push        eax
 0066E07C    lea         eax,[ebp-12]
 0066E07F    push        eax
 0066E080    push        0
 0066E082    push        0
 0066E084    lea         eax,[ebp-11D]
 0066E08A    push        eax
 0066E08B    mov         eax,dword ptr [ebp-8]
 0066E08E    push        eax
 0066E08F    call        ADVAPI32.RegQueryValueExA
 0066E094    test        eax,eax
>0066E096    je          0066E0BA
 0066E098    lea         eax,[ebp-18]
 0066E09B    push        eax
 0066E09C    lea         eax,[ebp-12]
 0066E09F    push        eax
 0066E0A0    push        0
 0066E0A2    push        0
 0066E0A4    push        66E23C
 0066E0A9    mov         eax,dword ptr [ebp-8]
 0066E0AC    push        eax
 0066E0AD    call        ADVAPI32.RegQueryValueExA
 0066E0B2    test        eax,eax
>0066E0B4    je          0066E0BA
 0066E0B6    mov         byte ptr [ebp-12],0
 0066E0BA    mov         byte ptr [ebp-0E],0
 0066E0BE    xor         eax,eax
 0066E0C0    pop         edx
 0066E0C1    pop         ecx
 0066E0C2    pop         ecx
 0066E0C3    mov         dword ptr fs:[eax],edx
 0066E0C6    push        66E0DC
 0066E0CB    mov         eax,dword ptr [ebp-8]
 0066E0CE    push        eax
 0066E0CF    call        ADVAPI32.RegCloseKey
 0066E0D4    ret
>0066E0D5    jmp         @HandleFinally
>0066E0DA    jmp         0066E0CB
 0066E0DC    push        105
 0066E0E1    mov         eax,dword ptr [ebp-4]
 0066E0E4    push        eax
 0066E0E5    lea         eax,[ebp-11D]
 0066E0EB    push        eax
 0066E0EC    call        KERNEL32.lstrcpynA
 0066E0F1    push        5
 0066E0F3    lea         eax,[ebp-0D]
 0066E0F6    push        eax
 0066E0F7    push        3
 0066E0F9    call        KERNEL32.GetThreadLocale
 0066E0FE    push        eax
 0066E0FF    call        KERNEL32.GetLocaleInfoA
 0066E104    xor         esi,esi
 0066E106    cmp         byte ptr [ebp-11D],0
>0066E10D    je          0066E1F6
 0066E113    cmp         byte ptr [ebp-0D],0
>0066E117    jne         0066E123
 0066E119    cmp         byte ptr [ebp-12],0
>0066E11D    je          0066E1F6
 0066E123    lea         eax,[ebp-11D]
 0066E129    push        eax
 0066E12A    call        KERNEL32.lstrlenA
 0066E12F    mov         ebx,eax
 0066E131    lea         eax,[ebp-11D]
 0066E137    add         ebx,eax
>0066E139    jmp         0066E13C
 0066E13B    dec         ebx
 0066E13C    cmp         byte ptr [ebx],2E
>0066E13F    je          0066E14B
 0066E141    lea         eax,[ebp-11D]
 0066E147    cmp         ebx,eax
>0066E149    jne         0066E13B
 0066E14B    lea         eax,[ebp-11D]
 0066E151    cmp         ebx,eax
>0066E153    je          0066E1F6
 0066E159    inc         ebx
 0066E15A    cmp         byte ptr [ebp-12],0
>0066E15E    je          0066E188
 0066E160    mov         edx,ebx
 0066E162    sub         edx,eax
 0066E164    mov         eax,105
 0066E169    sub         eax,edx
 0066E16B    push        eax
 0066E16C    lea         eax,[ebp-12]
 0066E16F    push        eax
 0066E170    push        ebx
 0066E171    call        KERNEL32.lstrcpynA
 0066E176    push        2
 0066E178    push        0
 0066E17A    lea         eax,[ebp-11D]
 0066E180    push        eax
 0066E181    call        KERNEL32.LoadLibraryExA
 0066E186    mov         esi,eax
 0066E188    test        esi,esi
>0066E18A    jne         0066E1F6
 0066E18C    cmp         byte ptr [ebp-0D],0
>0066E190    je          0066E1F6
 0066E192    lea         eax,[ebp-11D]
 0066E198    mov         edx,ebx
 0066E19A    sub         edx,eax
 0066E19C    mov         eax,105
 0066E1A1    sub         eax,edx
 0066E1A3    push        eax
 0066E1A4    lea         eax,[ebp-0D]
 0066E1A7    push        eax
 0066E1A8    push        ebx
 0066E1A9    call        KERNEL32.lstrcpynA
 0066E1AE    push        2
 0066E1B0    push        0
 0066E1B2    lea         eax,[ebp-11D]
 0066E1B8    push        eax
 0066E1B9    call        KERNEL32.LoadLibraryExA
 0066E1BE    mov         esi,eax
 0066E1C0    test        esi,esi
>0066E1C2    jne         0066E1F6
 0066E1C4    mov         byte ptr [ebp-0B],0
 0066E1C8    lea         eax,[ebp-11D]
 0066E1CE    mov         edx,ebx
 0066E1D0    sub         edx,eax
 0066E1D2    mov         eax,105
 0066E1D7    sub         eax,edx
 0066E1D9    push        eax
 0066E1DA    lea         eax,[ebp-0D]
 0066E1DD    push        eax
 0066E1DE    push        ebx
 0066E1DF    call        KERNEL32.lstrcpynA
 0066E1E4    push        2
 0066E1E6    push        0
 0066E1E8    lea         eax,[ebp-11D]
 0066E1EE    push        eax
 0066E1EF    call        KERNEL32.LoadLibraryExA
 0066E1F4    mov         esi,eax
 0066E1F6    mov         eax,esi
 0066E1F8    pop         esi
 0066E1F9    pop         ebx
 0066E1FA    mov         esp,ebp
 0066E1FC    pop         ebp
 0066E1FD    ret
*}
end;

//0066E240
procedure EnumModules(Func:TEnumModuleFuncLW; Data:Pointer);
begin
{*
 0066E240    call        0066E250
 0066E245    ret
*}
end;

//0066E248
procedure sub_0066E248;
begin
{*
 0066E248    call        EnumResourceModules
 0066E24D    ret
*}
end;

//0066E250
{*procedure sub_0066E250(?:?; ?:?);
begin
 0066E250    push        ebx
 0066E251    push        esi
 0066E252    push        edi
 0066E253    mov         edi,edx
 0066E255    mov         esi,eax
 0066E257    mov         ebx,dword ptr ds:[6E4E98];0x0 gvar_006E4E98
 0066E25D    test        ebx,ebx
>0066E25F    je          0066E272
 0066E261    mov         edx,edi
 0066E263    mov         eax,dword ptr [ebx+4]
 0066E266    call        esi
 0066E268    test        al,al
>0066E26A    je          0066E272
 0066E26C    mov         ebx,dword ptr [ebx]
 0066E26E    test        ebx,ebx
>0066E270    jne         0066E261
 0066E272    pop         edi
 0066E273    pop         esi
 0066E274    pop         ebx
 0066E275    ret
end;*}

//0066E278
procedure EnumResourceModules(Func:TEnumModuleFuncLW; Data:Pointer);
begin
{*
 0066E278    push        ebx
 0066E279    push        esi
 0066E27A    push        edi
 0066E27B    mov         edi,edx
 0066E27D    mov         esi,eax
 0066E27F    mov         ebx,dword ptr ds:[6E4E98];gvar_006E4E98
 0066E285    test        ebx,ebx
>0066E287    je          0066E29E
 0066E289    mov         eax,ebx
 0066E28B    call        DelayLoadResourceModule
 0066E290    mov         edx,edi
 0066E292    call        esi
 0066E294    test        al,al
>0066E296    je          0066E29E
 0066E298    mov         ebx,dword ptr [ebx]
 0066E29A    test        ebx,ebx
>0066E29C    jne         0066E289
 0066E29E    pop         edi
 0066E29F    pop         esi
 0066E2A0    pop         ebx
 0066E2A1    ret
*}
end;

//0066E2A4
procedure sub_0066E2A4;
begin
{*
 0066E2A4    call        AddModuleUnloadProc
 0066E2A9    ret
*}
end;

//0066E2AC
procedure sub_0066E2AC;
begin
{*
 0066E2AC    call        RemoveModuleUnloadProc
 0066E2B1    ret
*}
end;

//0066E2B4
procedure AddModuleUnloadProc(Proc:TModuleUnloadProcLW);
begin
{*
 0066E2B4    push        ebx
 0066E2B5    mov         ebx,eax
 0066E2B7    mov         eax,8
 0066E2BC    call        @GetMem
 0066E2C1    mov         edx,dword ptr ds:[6E4E9C]
 0066E2C7    mov         dword ptr [eax],edx
 0066E2C9    mov         dword ptr [eax+4],ebx
 0066E2CC    mov         [006E4E9C],eax
 0066E2D1    pop         ebx
 0066E2D2    ret
*}
end;

//0066E2D4
procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProcLW);
begin
{*
 0066E2D4    push        ebx
 0066E2D5    push        esi
 0066E2D6    mov         esi,dword ptr ds:[6E4E9C]
 0066E2DC    test        esi,esi
>0066E2DE    je          0066E302
 0066E2E0    mov         edx,dword ptr [esi+4]
 0066E2E3    cmp         edx,eax
>0066E2E5    jne         0066E302
 0066E2E7    mov         eax,[006E4E9C]
 0066E2EC    mov         eax,dword ptr [eax]
 0066E2EE    mov         [006E4E9C],eax
 0066E2F3    mov         edx,8
 0066E2F8    mov         eax,esi
 0066E2FA    call        @FreeMem
 0066E2FF    pop         esi
 0066E300    pop         ebx
 0066E301    ret
 0066E302    mov         edx,esi
 0066E304    test        edx,edx
>0066E306    je          0066E32F
 0066E308    mov         ecx,dword ptr [edx]
 0066E30A    test        ecx,ecx
>0066E30C    je          0066E329
 0066E30E    mov         ebx,dword ptr [ecx+4]
 0066E311    cmp         ebx,eax
>0066E313    jne         0066E329
 0066E315    mov         esi,ecx
 0066E317    mov         eax,dword ptr [ecx]
 0066E319    mov         dword ptr [edx],eax
 0066E31B    mov         edx,8
 0066E320    mov         eax,esi
 0066E322    call        @FreeMem
>0066E327    jmp         0066E32F
 0066E329    mov         edx,dword ptr [edx]
 0066E32B    test        edx,edx
>0066E32D    jne         0066E308
 0066E32F    pop         esi
 0066E330    pop         ebx
 0066E331    ret
*}
end;

//0066E334
procedure NotifyModuleUnload(HInstance:Cardinal);
begin
{*
 0066E334    push        ebp
 0066E335    mov         ebp,esp
 0066E337    add         esp,0FFFFFFF8
 0066E33A    push        ebx
 0066E33B    push        esi
 0066E33C    push        edi
 0066E33D    mov         dword ptr [ebp-4],eax
 0066E340    mov         eax,[006E4E9C]
 0066E345    mov         dword ptr [ebp-8],eax
 0066E348    cmp         dword ptr [ebp-8],0
>0066E34C    je          0066E387
 0066E34E    xor         eax,eax
 0066E350    push        ebp
 0066E351    push        66E36F
 0066E356    push        dword ptr fs:[eax]
 0066E359    mov         dword ptr fs:[eax],esp
 0066E35C    mov         ebx,dword ptr [ebp-8]
 0066E35F    mov         eax,dword ptr [ebp-4]
 0066E362    call        dword ptr [ebx+4]
 0066E365    xor         eax,eax
 0066E367    pop         edx
 0066E368    pop         ecx
 0066E369    pop         ecx
 0066E36A    mov         dword ptr fs:[eax],edx
>0066E36D    jmp         0066E379
>0066E36F    jmp         @HandleAnyException
 0066E374    call        @DoneExcept
 0066E379    mov         eax,dword ptr [ebp-8]
 0066E37C    mov         eax,dword ptr [eax]
 0066E37E    mov         dword ptr [ebp-8],eax
 0066E381    cmp         dword ptr [ebp-8],0
>0066E385    jne         0066E34E
 0066E387    pop         edi
 0066E388    pop         esi
 0066E389    pop         ebx
 0066E38A    pop         ecx
 0066E38B    pop         ecx
 0066E38C    pop         ebp
 0066E38D    ret
*}
end;

//0066E390
procedure RegisterModule(LibModule:PLibModule);
begin
{*
 0066E390    mov         edx,dword ptr ds:[6E4E98];gvar_006E4E98
 0066E396    mov         dword ptr [eax],edx
 0066E398    mov         [006E4E98],eax;gvar_006E4E98
 0066E39D    ret
*}
end;

//0066E3A0
procedure UnregisterModule(LibModule:PLibModule);
begin
{*
 0066E3A0    push        ebp
 0066E3A1    mov         ebp,esp
 0066E3A3    push        ecx
 0066E3A4    mov         dword ptr [ebp-4],eax
 0066E3A7    xor         edx,edx
 0066E3A9    push        ebp
 0066E3AA    push        66E404
 0066E3AF    push        dword ptr fs:[edx]
 0066E3B2    mov         dword ptr fs:[edx],esp
 0066E3B5    mov         eax,dword ptr [ebp-4]
 0066E3B8    mov         eax,dword ptr [eax+4]
 0066E3BB    call        NotifyModuleUnload
 0066E3C0    xor         eax,eax
 0066E3C2    pop         edx
 0066E3C3    pop         ecx
 0066E3C4    pop         ecx
 0066E3C5    mov         dword ptr fs:[eax],edx
 0066E3C8    push        66E40B
 0066E3CD    mov         eax,dword ptr [ebp-4]
 0066E3D0    cmp         eax,dword ptr ds:[6E4E98];gvar_006E4E98
>0066E3D6    jne         0066E3E4
 0066E3D8    mov         eax,dword ptr [ebp-4]
 0066E3DB    mov         eax,dword ptr [eax]
 0066E3DD    mov         [006E4E98],eax;gvar_006E4E98
>0066E3E2    jmp         0066E403
 0066E3E4    mov         eax,[006E4E98];gvar_006E4E98
 0066E3E9    test        eax,eax
>0066E3EB    je          0066E403
 0066E3ED    mov         edx,dword ptr [eax]
 0066E3EF    cmp         edx,dword ptr [ebp-4]
>0066E3F2    jne         0066E3FD
 0066E3F4    mov         edx,dword ptr [ebp-4]
 0066E3F7    mov         edx,dword ptr [edx]
 0066E3F9    mov         dword ptr [eax],edx
>0066E3FB    jmp         0066E403
 0066E3FD    mov         eax,dword ptr [eax]
 0066E3FF    test        eax,eax
>0066E401    jne         0066E3ED
 0066E403    ret
>0066E404    jmp         @HandleFinally
>0066E409    jmp         0066E3CD
 0066E40B    pop         ecx
 0066E40C    pop         ebp
 0066E40D    ret
*}
end;

//0066E410
function @IntfClear(var Dest:IInterface):Pointer;
begin
{*
 0066E410    mov         edx,dword ptr [eax]
 0066E412    test        edx,edx
>0066E414    je          0066E424
 0066E416    mov         dword ptr [eax],0
 0066E41C    push        eax
 0066E41D    push        edx
 0066E41E    mov         eax,dword ptr [edx]
 0066E420    call        dword ptr [eax+8]
 0066E423    pop         eax
 0066E424    ret
*}
end;

//0066E428
procedure @IntfCopy(var Dest:IInterface; const Source:IInterface);
begin
{*
 0066E428    test        edx,edx
>0066E42A    je          0066E445
 0066E42C    push        edx
 0066E42D    push        eax
 0066E42E    mov         eax,dword ptr [edx]
 0066E430    push        edx
 0066E431    call        dword ptr [eax+4]
 0066E434    pop         eax
 0066E435    mov         ecx,dword ptr [eax]
 0066E437    pop         dword ptr [eax]
 0066E439    test        ecx,ecx
>0066E43B    jne         0066E43E
 0066E43D    ret
 0066E43E    mov         eax,dword ptr [ecx]
 0066E440    push        ecx
 0066E441    call        dword ptr [eax+8]
 0066E444    ret
 0066E445    mov         ecx,dword ptr [eax]
 0066E447    test        ecx,ecx
 0066E449    mov         dword ptr [eax],edx
>0066E44B    je          0066E453
 0066E44D    mov         eax,dword ptr [ecx]
 0066E44F    push        ecx
 0066E450    call        dword ptr [eax+8]
 0066E453    ret
*}
end;

//0066E454
procedure @IntfCast(var Dest:IInterface; const Source:IInterface; const IID:TGUID);
begin
{*
 0066E454    test        edx,edx
>0066E456    je          0066E410
 0066E45C    push        eax
 0066E45D    push        ecx
 0066E45E    push        edx
 0066E45F    mov         ecx,dword ptr [eax]
 0066E461    test        ecx,ecx
>0066E463    je          0066E46E
 0066E465    push        ecx
 0066E466    mov         eax,dword ptr [ecx]
 0066E468    call        dword ptr [eax+8]
 0066E46B    mov         edx,dword ptr [esp]
 0066E46E    mov         eax,dword ptr [edx]
 0066E470    call        dword ptr [eax]
 0066E472    test        eax,eax
>0066E474    je          0066E47D
 0066E476    mov         al,17
>0066E478    jmp         Error
 0066E47D    ret
*}
end;

//0066E480
procedure @IntfAddRef(const Dest:IInterface);
begin
{*
 0066E480    test        eax,eax
>0066E482    je          0066E48A
 0066E484    push        eax
 0066E485    mov         eax,dword ptr [eax]
 0066E487    call        dword ptr [eax+4]
 0066E48A    ret
*}
end;

//0066E48C
procedure TInterfacedObject.AfterConstruction;
begin
{*
 0066E48C    add         eax,4
 0066E48F    push        eax
 0066E490    call        KERNEL32.InterlockedDecrement
 0066E495    ret
*}
end;

//0066E498
procedure TInterfacedObject.BeforeDestruction;
begin
{*
 0066E498    cmp         dword ptr [eax+4],0
>0066E49C    je          0066E4A5
 0066E49E    mov         al,2
 0066E4A0    call        Error
 0066E4A5    ret
*}
end;

//0066E4A8
function TInterfacedObject.NewInstance:TObject;
begin
{*
 0066E4A8    call        TObject.NewInstance
 0066E4AD    mov         dword ptr [eax+4],1
 0066E4B4    ret
*}
end;

//0066E4B8
function TContainedObject.QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;
begin
{*
 0066E4B8    push        ebp
 0066E4B9    mov         ebp,esp
 0066E4BB    push        ebx
 0066E4BC    mov         ebx,dword ptr [ebp+8]
 0066E4BF    mov         ecx,dword ptr [ebp+10]
 0066E4C2    mov         edx,dword ptr [ebp+0C]
 0066E4C5    mov         eax,ebx
 0066E4C7    call        TObject.GetInterface
 0066E4CC    test        al,al
>0066E4CE    je          0066E4D4
 0066E4D0    xor         eax,eax
>0066E4D2    jmp         0066E4D9
 0066E4D4    mov         eax,80004002
 0066E4D9    pop         ebx
 0066E4DA    pop         ebp
 0066E4DB    ret         0C
*}
end;

//0066E4E0
function TInterfacedObject._AddRef:Integer; stdcall;
begin
{*
 0066E4E0    push        ebp
 0066E4E1    mov         ebp,esp
 0066E4E3    mov         eax,dword ptr [ebp+8]
 0066E4E6    add         eax,4
 0066E4E9    push        eax
 0066E4EA    call        KERNEL32.InterlockedIncrement
 0066E4EF    pop         ebp
 0066E4F0    ret         4
*}
end;

//0066E4F4
function TInterfacedObject._Release:Integer; stdcall;
begin
{*
 0066E4F4    push        ebp
 0066E4F5    mov         ebp,esp
 0066E4F7    push        ebx
 0066E4F8    push        esi
 0066E4F9    mov         ebx,dword ptr [ebp+8]
 0066E4FC    lea         eax,[ebx+4]
 0066E4FF    push        eax
 0066E500    call        KERNEL32.InterlockedDecrement
 0066E505    mov         esi,eax
 0066E507    test        esi,esi
>0066E509    jne         0066E514
 0066E50B    mov         dl,1
 0066E50D    mov         eax,ebx
 0066E50F    mov         ecx,dword ptr [eax]
 0066E511    call        dword ptr [ecx-4]
 0066E514    mov         eax,esi
 0066E516    pop         esi
 0066E517    pop         ebx
 0066E518    pop         ebp
 0066E519    ret         4
*}
end;

//0066E51C
function TAggregatedObject._AddRef:Integer; stdcall;
begin
{*
 0066E51C    push        ebp
 0066E51D    mov         ebp,esp
 0066E51F    mov         eax,dword ptr [ebp+8]
 0066E522    mov         eax,dword ptr [eax+4]
 0066E525    push        eax
 0066E526    mov         eax,dword ptr [eax]
 0066E528    call        dword ptr [eax+4]
 0066E52B    pop         ebp
 0066E52C    ret         4
*}
end;

//0066E530
function TAggregatedObject._Release:Integer; stdcall;
begin
{*
 0066E530    push        ebp
 0066E531    mov         ebp,esp
 0066E533    mov         eax,dword ptr [ebp+8]
 0066E536    mov         eax,dword ptr [eax+4]
 0066E539    push        eax
 0066E53A    mov         eax,dword ptr [eax]
 0066E53C    call        dword ptr [eax+8]
 0066E53F    pop         ebp
 0066E540    ret         4
*}
end;

//0066E544
function TInterfacedObject.QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;
begin
{*
 0066E544    push        ebp
 0066E545    mov         ebp,esp
 0066E547    push        ebx
 0066E548    mov         ebx,dword ptr [ebp+8]
 0066E54B    mov         ecx,dword ptr [ebp+10]
 0066E54E    mov         edx,dword ptr [ebp+0C]
 0066E551    mov         eax,ebx
 0066E553    call        TObject.GetInterface
 0066E558    test        al,al
>0066E55A    je          0066E560
 0066E55C    xor         eax,eax
>0066E55E    jmp         0066E565
 0066E560    mov         eax,80004002
 0066E565    pop         ebx
 0066E566    pop         ebp
 0066E567    ret         0C
*}
end;

//0066E56C
function CompToDouble(Value:Comp):Double; cdecl;
begin
{*
 0066E56C    push        ebp
 0066E56D    mov         ebp,esp
 0066E56F    add         esp,0FFFFFFF8
 0066E572    fild        qword ptr [ebp+8]
 0066E575    fstp        qword ptr [ebp-8]
 0066E578    wait
 0066E579    fld         qword ptr [ebp-8]
 0066E57C    pop         ecx
 0066E57D    pop         ecx
 0066E57E    pop         ebp
 0066E57F    ret
*}
end;

//0066E580
procedure DoubleToComp(Value:Double; var Result:Comp); cdecl;
begin
{*
 0066E580    push        ebp
 0066E581    mov         ebp,esp
 0066E583    fld         qword ptr [ebp+8]
 0066E586    mov         eax,dword ptr [ebp+10]
 0066E589    fistp       qword ptr [eax]
 0066E58B    wait
 0066E58C    pop         ebp
 0066E58D    ret
*}
end;

//0066E590
function UnicodeToUtf8(Dest:PAnsiChar; MaxDestBytes:Cardinal; Source:PWideChar; SourceChars:Cardinal):Cardinal;
begin
{*
 0066E590    push        ebp
 0066E591    mov         ebp,esp
 0066E593    add         esp,0FFFFFFF8
 0066E596    push        ebx
 0066E597    push        esi
 0066E598    mov         dword ptr [ebp-8],ecx
 0066E59B    mov         dword ptr [ebp-4],edx
 0066E59E    xor         edx,edx
 0066E5A0    cmp         dword ptr [ebp-8],0
>0066E5A4    je          0066E662
 0066E5AA    xor         esi,esi
 0066E5AC    xor         ecx,ecx
 0066E5AE    test        eax,eax
>0066E5B0    je          0066E63D
>0066E5B6    jmp         0066E624
 0066E5B8    mov         edx,dword ptr [ebp-8]
 0066E5BB    movzx       edx,word ptr [edx+ecx*2]
 0066E5BF    inc         ecx
 0066E5C0    cmp         edx,7F
>0066E5C3    ja          0066E5CB
 0066E5C5    mov         byte ptr [eax+esi],dl
 0066E5C8    inc         esi
>0066E5C9    jmp         0066E624
 0066E5CB    cmp         edx,7FF
>0066E5D1    jbe         0066E604
 0066E5D3    lea         ebx,[esi+3]
 0066E5D6    cmp         ebx,dword ptr [ebp-4]
>0066E5D9    ja          0066E62E
 0066E5DB    mov         ebx,edx
 0066E5DD    shr         ebx,0C
 0066E5E0    or          bl,0E0
 0066E5E3    mov         byte ptr [eax+esi],bl
 0066E5E6    mov         ebx,edx
 0066E5E8    shr         ebx,6
 0066E5EB    and         bl,3F
 0066E5EE    or          bl,80
 0066E5F1    mov         byte ptr [eax+esi+1],bl
 0066E5F5    and         dl,3F
 0066E5F8    or          dl,80
 0066E5FB    mov         byte ptr [eax+esi+2],dl
 0066E5FF    add         esi,3
>0066E602    jmp         0066E624
 0066E604    lea         ebx,[esi+2]
 0066E607    cmp         ebx,dword ptr [ebp-4]
>0066E60A    ja          0066E62E
 0066E60C    mov         ebx,edx
 0066E60E    shr         ebx,6
 0066E611    or          bl,0C0
 0066E614    mov         byte ptr [eax+esi],bl
 0066E617    and         dl,3F
 0066E61A    or          dl,80
 0066E61D    mov         byte ptr [eax+esi+1],dl
 0066E621    add         esi,2
 0066E624    cmp         ecx,dword ptr [ebp+8]
>0066E627    jae         0066E62E
 0066E629    cmp         esi,dword ptr [ebp-4]
>0066E62C    jb          0066E5B8
 0066E62E    cmp         esi,dword ptr [ebp-4]
>0066E631    jb          0066E637
 0066E633    mov         esi,dword ptr [ebp-4]
 0066E636    dec         esi
 0066E637    mov         byte ptr [eax+esi],0
>0066E63B    jmp         0066E65F
 0066E63D    cmp         ecx,dword ptr [ebp+8]
>0066E640    jae         0066E65F
 0066E642    mov         eax,dword ptr [ebp-8]
 0066E645    movzx       edx,word ptr [eax+ecx*2]
 0066E649    inc         ecx
 0066E64A    cmp         edx,7F
>0066E64D    jbe         0066E659
 0066E64F    cmp         edx,7FF
>0066E655    jbe         0066E658
 0066E657    inc         esi
 0066E658    inc         esi
 0066E659    inc         esi
 0066E65A    cmp         ecx,dword ptr [ebp+8]
>0066E65D    jb          0066E642
 0066E65F    lea         edx,[esi+1]
 0066E662    mov         eax,edx
 0066E664    pop         esi
 0066E665    pop         ebx
 0066E666    pop         ecx
 0066E667    pop         ecx
 0066E668    pop         ebp
 0066E669    ret         4
*}
end;

//0066E66C
function Utf8ToUnicode(Dest:PWideChar; MaxDestChars:Cardinal; Source:PAnsiChar; SourceBytes:Cardinal):Cardinal;
begin
{*
 0066E66C    push        ebp
 0066E66D    mov         ebp,esp
 0066E66F    add         esp,0FFFFFFF0
 0066E672    push        ebx
 0066E673    push        esi
 0066E674    mov         dword ptr [ebp-0C],ecx
 0066E677    mov         dword ptr [ebp-8],edx
 0066E67A    mov         dword ptr [ebp-4],eax
 0066E67D    cmp         dword ptr [ebp-0C],0
>0066E681    jne         0066E68D
 0066E683    xor         eax,eax
 0066E685    mov         dword ptr [ebp-10],eax
>0066E688    jmp         0066E7A2
 0066E68D    mov         dword ptr [ebp-10],0FFFFFFFF
 0066E694    xor         eax,eax
 0066E696    xor         esi,esi
 0066E698    cmp         dword ptr [ebp-4],0
>0066E69C    je          0066E74B
>0066E6A2    jmp         0066E729
 0066E6A7    mov         edx,dword ptr [ebp-0C]
 0066E6AA    xor         ecx,ecx
 0066E6AC    mov         cl,byte ptr [edx+esi]
 0066E6AF    inc         esi
 0066E6B0    test        cl,80
>0066E6B3    je          0066E721
 0066E6B5    and         ecx,3F
 0066E6B8    cmp         esi,dword ptr [ebp+8]
>0066E6BB    ja          0066E7A2
 0066E6C1    test        cl,20
>0066E6C4    je          0066E6F4
 0066E6C6    mov         edx,dword ptr [ebp-0C]
 0066E6C9    mov         dl,byte ptr [edx+esi]
 0066E6CC    inc         esi
 0066E6CD    mov         ebx,edx
 0066E6CF    and         bl,0C0
 0066E6D2    cmp         bl,80
>0066E6D5    jne         0066E7A2
 0066E6DB    cmp         esi,dword ptr [ebp+8]
>0066E6DE    ja          0066E7A2
 0066E6E4    and         dl,3F
 0066E6E7    and         edx,0FF
 0066E6ED    shl         ecx,6
 0066E6F0    or          edx,ecx
 0066E6F2    mov         ecx,edx
 0066E6F4    mov         edx,dword ptr [ebp-0C]
 0066E6F7    mov         dl,byte ptr [edx+esi]
 0066E6FA    inc         esi
 0066E6FB    mov         ebx,edx
 0066E6FD    and         bl,0C0
 0066E700    cmp         bl,80
>0066E703    jne         0066E7A2
 0066E709    and         dl,3F
 0066E70C    and         edx,0FF
 0066E712    shl         ecx,6
 0066E715    or          dx,cx
 0066E718    mov         ecx,dword ptr [ebp-4]
 0066E71B    mov         word ptr [ecx+eax*2],dx
>0066E71F    jmp         0066E728
 0066E721    mov         edx,dword ptr [ebp-4]
 0066E724    mov         word ptr [edx+eax*2],cx
 0066E728    inc         eax
 0066E729    cmp         esi,dword ptr [ebp+8]
>0066E72C    jae         0066E737
 0066E72E    cmp         eax,dword ptr [ebp-8]
>0066E731    jb          0066E6A7
 0066E737    cmp         eax,dword ptr [ebp-8]
>0066E73A    jb          0066E740
 0066E73C    mov         eax,dword ptr [ebp-8]
 0066E73F    dec         eax
 0066E740    mov         edx,dword ptr [ebp-4]
 0066E743    mov         word ptr [edx+eax*2],0
>0066E749    jmp         0066E79E
 0066E74B    cmp         esi,dword ptr [ebp+8]
>0066E74E    ja          0066E79E
 0066E750    mov         edx,dword ptr [ebp-0C]
 0066E753    mov         dl,byte ptr [edx+esi]
 0066E756    inc         esi
 0066E757    test        dl,80
>0066E75A    je          0066E798
 0066E75C    mov         ecx,edx
 0066E75E    and         cl,0F0
 0066E761    cmp         cl,0F0
>0066E764    je          0066E7A2
 0066E766    test        dl,40
>0066E769    je          0066E7A2
 0066E76B    cmp         esi,dword ptr [ebp+8]
>0066E76E    ja          0066E7A2
 0066E770    mov         ecx,dword ptr [ebp-0C]
 0066E773    mov         cl,byte ptr [ecx+esi]
 0066E776    and         cl,0C0
 0066E779    cmp         cl,80
>0066E77C    jne         0066E7A2
 0066E77E    inc         esi
 0066E77F    cmp         esi,dword ptr [ebp+8]
>0066E782    ja          0066E7A2
 0066E784    test        dl,20
>0066E787    je          0066E797
 0066E789    mov         edx,dword ptr [ebp-0C]
 0066E78C    mov         dl,byte ptr [edx+esi]
 0066E78F    and         dl,0C0
 0066E792    cmp         dl,80
>0066E795    jne         0066E7A2
 0066E797    inc         esi
 0066E798    inc         eax
 0066E799    cmp         esi,dword ptr [ebp+8]
>0066E79C    jbe         0066E750
 0066E79E    inc         eax
 0066E79F    mov         dword ptr [ebp-10],eax
 0066E7A2    mov         eax,dword ptr [ebp-10]
 0066E7A5    pop         esi
 0066E7A6    pop         ebx
 0066E7A7    mov         esp,ebp
 0066E7A9    pop         ebp
 0066E7AA    ret         4
*}
end;

//0066E7B0
function UTF8Encode(const WS:WideString):UTF8String;
begin
{*
 0066E7B0    push        ebp
 0066E7B1    mov         ebp,esp
 0066E7B3    push        0
 0066E7B5    push        ebx
 0066E7B6    push        esi
 0066E7B7    mov         esi,edx
 0066E7B9    mov         ebx,eax
 0066E7BB    xor         eax,eax
 0066E7BD    push        ebp
 0066E7BE    push        66E84F
 0066E7C3    push        dword ptr fs:[eax]
 0066E7C6    mov         dword ptr fs:[eax],esp
 0066E7C9    mov         eax,esi
 0066E7CB    call        @LStrClr
 0066E7D0    mov         eax,ebx
 0066E7D2    xor         edx,edx
 0066E7D4    call        @WStrCmp
>0066E7D9    je          0066E839
 0066E7DB    mov         eax,ebx
 0066E7DD    call        @WStrLen
 0066E7E2    lea         edx,[eax+eax*2]
 0066E7E5    lea         eax,[ebp-4]
 0066E7E8    call        @LStrSetLength
 0066E7ED    mov         eax,ebx
 0066E7EF    call        @WStrLen
 0066E7F4    push        eax
 0066E7F5    mov         eax,dword ptr [ebp-4]
 0066E7F8    call        @LStrLen
 0066E7FD    inc         eax
 0066E7FE    push        eax
 0066E7FF    mov         eax,ebx
 0066E801    call        @WStrToPWChar
 0066E806    push        eax
 0066E807    mov         eax,dword ptr [ebp-4]
 0066E80A    call        @LStrToPChar
 0066E80F    pop         ecx
 0066E810    pop         edx
 0066E811    call        UnicodeToUtf8
 0066E816    test        eax,eax
>0066E818    jle         0066E827
 0066E81A    mov         edx,eax
 0066E81C    dec         edx
 0066E81D    lea         eax,[ebp-4]
 0066E820    call        @LStrSetLength
>0066E825    jmp         0066E82F
 0066E827    lea         eax,[ebp-4]
 0066E82A    call        @LStrClr
 0066E82F    mov         eax,esi
 0066E831    mov         edx,dword ptr [ebp-4]
 0066E834    call        @LStrAsg
 0066E839    xor         eax,eax
 0066E83B    pop         edx
 0066E83C    pop         ecx
 0066E83D    pop         ecx
 0066E83E    mov         dword ptr fs:[eax],edx
 0066E841    push        66E856
 0066E846    lea         eax,[ebp-4]
 0066E849    call        @LStrClr
 0066E84E    ret
>0066E84F    jmp         @HandleFinally
>0066E854    jmp         0066E846
 0066E856    pop         esi
 0066E857    pop         ebx
 0066E858    pop         ecx
 0066E859    pop         ebp
 0066E85A    ret
*}
end;

//0066E85C
function UTF8Decode(const S:UTF8String):WideString;
begin
{*
 0066E85C    push        ebp
 0066E85D    mov         ebp,esp
 0066E85F    push        0
 0066E861    push        ebx
 0066E862    push        esi
 0066E863    mov         esi,edx
 0066E865    mov         ebx,eax
 0066E867    xor         eax,eax
 0066E869    push        ebp
 0066E86A    push        66E8F3
 0066E86F    push        dword ptr fs:[eax]
 0066E872    mov         dword ptr fs:[eax],esp
 0066E875    mov         eax,esi
 0066E877    call        @WStrClr
 0066E87C    test        ebx,ebx
>0066E87E    je          0066E8DD
 0066E880    mov         eax,ebx
 0066E882    call        @LStrLen
 0066E887    mov         edx,eax
 0066E889    lea         eax,[ebp-4]
 0066E88C    call        @WStrSetLength
 0066E891    mov         eax,ebx
 0066E893    call        @LStrLen
 0066E898    push        eax
 0066E899    mov         eax,dword ptr [ebp-4]
 0066E89C    call        @WStrLen
 0066E8A1    inc         eax
 0066E8A2    push        eax
 0066E8A3    mov         eax,ebx
 0066E8A5    call        @LStrToPChar
 0066E8AA    push        eax
 0066E8AB    mov         eax,dword ptr [ebp-4]
 0066E8AE    call        @WStrToPWChar
 0066E8B3    pop         ecx
 0066E8B4    pop         edx
 0066E8B5    call        Utf8ToUnicode
 0066E8BA    test        eax,eax
>0066E8BC    jle         0066E8CB
 0066E8BE    mov         edx,eax
 0066E8C0    dec         edx
 0066E8C1    lea         eax,[ebp-4]
 0066E8C4    call        @WStrSetLength
>0066E8C9    jmp         0066E8D3
 0066E8CB    lea         eax,[ebp-4]
 0066E8CE    call        @WStrClr
 0066E8D3    mov         eax,esi
 0066E8D5    mov         edx,dword ptr [ebp-4]
 0066E8D8    call        @WStrAsg
 0066E8DD    xor         eax,eax
 0066E8DF    pop         edx
 0066E8E0    pop         ecx
 0066E8E1    pop         ecx
 0066E8E2    mov         dword ptr fs:[eax],edx
 0066E8E5    push        66E8FA
 0066E8EA    lea         eax,[ebp-4]
 0066E8ED    call        @WStrClr
 0066E8F2    ret
>0066E8F3    jmp         @HandleFinally
>0066E8F8    jmp         0066E8EA
 0066E8FA    pop         esi
 0066E8FB    pop         ebx
 0066E8FC    pop         ecx
 0066E8FD    pop         ebp
 0066E8FE    ret
*}
end;

//0066E900
function AnsiToUtf8(const S:AnsiString):UTF8String;
begin
{*
 0066E900    push        ebp
 0066E901    mov         ebp,esp
 0066E903    push        0
 0066E905    push        ebx
 0066E906    push        esi
 0066E907    mov         esi,edx
 0066E909    mov         ebx,eax
 0066E90B    xor         eax,eax
 0066E90D    push        ebp
 0066E90E    push        66E943
 0066E913    push        dword ptr fs:[eax]
 0066E916    mov         dword ptr fs:[eax],esp
 0066E919    lea         eax,[ebp-4]
 0066E91C    mov         edx,ebx
 0066E91E    call        @WStrFromLStr
 0066E923    mov         eax,dword ptr [ebp-4]
 0066E926    mov         edx,esi
 0066E928    call        UTF8Encode
 0066E92D    xor         eax,eax
 0066E92F    pop         edx
 0066E930    pop         ecx
 0066E931    pop         ecx
 0066E932    mov         dword ptr fs:[eax],edx
 0066E935    push        66E94A
 0066E93A    lea         eax,[ebp-4]
 0066E93D    call        @WStrClr
 0066E942    ret
>0066E943    jmp         @HandleFinally
>0066E948    jmp         0066E93A
 0066E94A    pop         esi
 0066E94B    pop         ebx
 0066E94C    pop         ecx
 0066E94D    pop         ebp
 0066E94E    ret
*}
end;

//0066E950
function LoadResString(ResStringRec:PResStringRec):String;
begin
{*
 0066E950    push        ebx
 0066E951    push        esi
 0066E952    add         esp,0FFFFFC00
 0066E958    mov         esi,edx
 0066E95A    mov         ebx,eax
 0066E95C    test        ebx,ebx
>0066E95E    je          0066E99D
 0066E960    cmp         dword ptr [ebx+4],10000
>0066E967    jge         0066E993
 0066E969    push        400
 0066E96E    lea         eax,[esp+4]
 0066E972    push        eax
 0066E973    mov         eax,dword ptr [ebx+4]
 0066E976    push        eax
 0066E977    mov         eax,dword ptr [ebx]
 0066E979    mov         eax,dword ptr [eax]
 0066E97B    call        FindResourceHInstance
 0066E980    push        eax
 0066E981    call        USER32.LoadStringA
 0066E986    mov         ecx,eax
 0066E988    mov         edx,esp
 0066E98A    mov         eax,esi
 0066E98C    call        @LStrFromPCharLen
>0066E991    jmp         0066E99D
 0066E993    mov         eax,esi
 0066E995    mov         edx,dword ptr [ebx+4]
 0066E998    call        @LStrFromPChar
 0066E99D    add         esp,400
 0066E9A3    pop         esi
 0066E9A4    pop         ebx
 0066E9A5    ret
*}
end;

//0066E9A8
procedure Finalization;
begin
{*
 0066E9A8    push        ebp
 0066E9A9    mov         ebp,esp
 0066E9AB    xor         eax,eax
 0066E9AD    push        ebp
 0066E9AE    push        66E9F2
 0066E9B3    push        dword ptr fs:[eax]
 0066E9B6    mov         dword ptr fs:[eax],esp
 0066E9B9    inc         dword ptr ds:[6ED884]
>0066E9BF    jne         0066E9E4
 0066E9C1    mov         eax,6ED314;Input:Text
 0066E9C6    call        @Close
 0066E9CB    mov         eax,6ED4E0;Output:Text
 0066E9D0    call        @Close
 0066E9D5    mov         eax,6ED6AC;ErrOutput:Text
 0066E9DA    call        @Close
 0066E9DF    call        UninitAllocator
 0066E9E4    xor         eax,eax
 0066E9E6    pop         edx
 0066E9E7    pop         ecx
 0066E9E8    pop         ecx
 0066E9E9    mov         dword ptr fs:[eax],edx
 0066E9EC    push        66E9F9
 0066E9F1    ret
>0066E9F2    jmp         @HandleFinally
>0066E9F7    jmp         0066E9F1
 0066E9F9    pop         ebp
 0066E9FA    ret
*}
end;

end.