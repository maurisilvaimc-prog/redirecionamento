//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit sysutils;

interface

uses
  SysUtils, Classes;

type
  TSysCharSet = set of Char;
  TFloatFormat = (ffGeneral, ffExponent, ffFixed, ffNumber, ffCurrency);
  TMbcsByteType = (mbSingleByte, mbLeadByte, mbTrailByte);
  TNameType = (ntContainsUnit, ntRequiresPackage, ntDcpBpiName);
  TSearchRec = TSearchRec = record//size=158
fC:TFileName;//fC
end;;
  Exception = class(TObject)
  public
    FMessage:String;//f4
    FHelpContext:Integer;//f8
    constructor Create(const Msg:AnsiString);//0065C4F0
    constructor CreateFmt(const Msg:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//0065C538
    constructor Create;//0065C5C8
    constructor CreateResFmt(Ident:Integer; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//0065C610
  end;
  EAbort = class(Exception)
  end;
  EHeapException = class(Exception)
  public
    ..AllowFree:Boolean;//fC
  end;
  EOutOfMemory = class(EHeapException)
  end;
  EInOutError = class(Exception)
  public
    .ErrorCode:Integer;//fC
  end;
  EExternal = class(Exception)
  public
    ExceptionRecord:PExceptionRecord;//fC
  end;
  EExternalException = class(EExternal)
  end;
  EIntError = class(EExternal)
  end;
  EDivByZero = class(EIntError)
  end;
  ERangeError = class(EIntError)
  end;
  EIntOverflow = class(EIntError)
  end;
  EMathError = class(EExternal)
  end;
  EInvalidOp = class(EMathError)
  end;
  EZeroDivide = class(EMathError)
  end;
  EOverflow = class(EMathError)
  end;
  EUnderflow = class(EMathError)
  end;
  EInvalidPointer = class(EHeapException)
  end;
  EInvalidCast = class(Exception)
  end;
  EConvertError = class(Exception)
  end;
  EAccessViolation = class(EExternal)
  end;
  EPrivilege = class(EExternal)
  end;
  EStackOverflow = class(EExternal)
  end;
  EControlC = class(EExternal)
  end;
  EVariantError = class(Exception)
  end;
  EAssertionFailed = class(Exception)
  end;
  EAbstractError = class(Exception)
  end;
  EIntfCastError = class(Exception)
  end;
  EOSError = class(Exception)
  public
    ErrorCode:DWORD;//fC
  end;
  ESafecallException = class(Exception)
  end;
  _DynArr_94_34 = array of String;
//elSize = 4
//varType equivalent: varStrArg;
  _DynArr_94_44 = array of String;
//elSize = 4
//varType equivalent: varStrArg;
  TSimpleRWSync = class(TInterfacedObject)
  public
    FLock:TRTLCriticalSection;//fC
  end;
  TMultiReadExclusiveWriteSynchronizer = class(TInterfacedObject)
  public
    FSentinel:Integer;//fC
    FReadSignal:THandle;//f10
    FWriteSignal:THandle;//f14
    FWaitRecycle:Cardinal;//f18
    FWriteRecursionCount:Cardinal;//f1C
    tls:TThreadLocalCounter;//f20
    FWriterID:Cardinal;//f24
    FRevisionLevel:Cardinal;//f28
    constructor Create;//0065E464
    procedure UnblockReaders;//0065E568
    procedure UnblockOneWriter;//0065E580
    function BeginWrite:Boolean;//0065E5D8
    procedure EndWrite;//0065E6E8
    procedure EndRead;//0065E834
  end;
  TStrData = TStrData = record//size=8
f4:String;//f4
end;;
  TErrorRec = TErrorRec = record//size=8
f4:String;//f4
end;;
  TExceptRec = TExceptRec = record//size=8
f4:String;//f4
end;;
  TThreadLocalCounter2 = class(TObject)
  public
    FHashTable:array[$0..$F] of PThreadInfo2;//f4
    procedure Open(var Thread:PThreadInfo2);//0065E314
    procedure Close(var Thread:PThreadInfo2);//0065E3C4
    procedure Delete(var Thread:PThreadInfo2);//0065E3DC
  end;
    procedure sub_00656570;//00656570
    procedure DivMod(Dividend:Integer; Divisor:Word; var Result:Word; var Remainder:Word);//006573E0
    //procedure sub_006573FC(?:?);//006573FC
    procedure ConvertErrorFmt(ResString:PResStringRec; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//0065741C
    //function sub_0065744C(?:?):?;//0065744C
    //procedure sub_006574B8(?:?);//006574B8
    //procedure sub_00657508(?:?; ?:?);//00657508
    //procedure sub_00657574(?:?; ?:?);//00657574
    function CompareStr(const S1:AnsiString; const S2:AnsiString):Integer;//006575E0
    function CompareMem(P1:Pointer; P2:Pointer; Length:Integer):Boolean;//00657610
    function CompareText(const S1:AnsiString; const S2:AnsiString):Integer;//00657630
    function SameText(const S1:AnsiString; const S2:AnsiString):Boolean;//00657684
    function AnsiUpperCase(const S:AnsiString):AnsiString;//006576A8
    //procedure sub_006576F0(?:AnsiString; ?:?);//006576F0
    //function sub_00657738(?:?; ?:?):?;//00657738
    //function sub_00657784(?:?; ?:?):?;//00657784
    function AnsiCompareText(const S1:AnsiString; const S2:AnsiString):Integer;//006577A8
    //function sub_006577F4(?:?; ?:AnsiString):?;//006577F4
    //function sub_00657818(?:PChar; ?:?; ?:?):?;//00657818
    //procedure sub_00657850(?:?; ?:?);//00657850
    //procedure sub_006578C4(?:?; ?:?);//006578C4
    //procedure sub_00657944(?:?; ?:?; ?:?);//00657944
    //function sub_00657B18(?:TComponentName):?;//00657B18
    function IntToStr(Value:Integer):AnsiString;//00657B94
    //procedure sub_00657BCC(?:?; ?:?);//00657BCC
    //procedure sub_00657C04(?:Pointer; ?:?; ?:?);//00657C04
    //procedure sub_00657C50(?:?; ?:?; ?:?);//00657C50
    function StrToInt(const S:AnsiString):Integer;//00657C98
    //function sub_00657CD8(?:AnsiString; ?:?):?;//00657CD8
    //function sub_00657D08(?:AnsiString; ?:dword):?;//00657D08
    //function sub_00657D34(?:?):?;//00657D34
    //procedure sub_00657E08(?:?; ?:?);//00657E08
    //procedure sub_00657E80(?:?; ?:?);//00657E80
    //function sub_00657E9C(?:?; ?:?):?;//00657E9C
    //function sub_00657F10(?:?):?;//00657F10
    //function sub_00657F44(?:?; ?:?):?;//00657F44
    //function sub_00657F64(?:Integer; ?:?; ?:?):?;//00657F64
    //function sub_00657F9C(?:Integer; ?:?; ?:?):?;//00657F9C
    //function sub_00657FD4(?:Integer; ?:?; ?:?; ?:?):?;//00657FD4
    procedure sub_00658010(?:Integer);//00658010
    //function sub_00658024(?:AnsiString):?;//00658024
    //function sub_00658094(?:AnsiString):?;//00658094
    //function sub_006580B4(?:AnsiString):?;//006580B4
    //function sub_006580EC(?:Byte):?;//006580EC
    //function sub_00658184(?:AnsiString; ?:?; ?:Byte):?;//00658184
    //function sub_006581F0(?:Byte):?;//006581F0
    procedure sub_0065822C(?:Byte);//0065822C
    //function sub_00658280(?:AnsiString):?;//00658280
    //function sub_006582CC(?:AnsiString; ?:dword):?;//006582CC
    //procedure sub_0065833C(?:dword; ?:?; ?:?);//0065833C
    //procedure sub_006583DC(?:?; ?:?);//006583DC
    //procedure sub_0065841C(?:dword; ?:?);//0065841C
    //procedure sub_006584B8(?:AnsiString; ?:?);//006584B8
    //procedure sub_00658580(?:AnsiString; ?:?);//00658580
    procedure sub_006585C4(?:TFileName; ?:AnsiString);//006585C4
    //procedure sub_00658624(?:?; ?:?);//00658624
    //procedure sub_006586E8(?:?);//006586E8
    //function sub_006586FC(?:AnsiString):?;//006586FC
    function StrLen(const Str:PChar):Cardinal;//00658728
    function StrEnd(const Str:PChar):PChar;//00658740
    //function sub_00658754(?:?; ?:PChar; ?:?):?;//00658754
    function StrCopy(Dest:PChar; const Source:PChar):PChar;//00658780
    function StrECopy(Dest:PChar; const Source:PChar):PChar;//006587A8
    function StrLCopy(Dest:PChar; const Source:PChar; MaxLen:Cardinal):PChar;//006587D4
    function StrPCopy(Dest:PChar; const Source:AnsiString):PChar;//00658808
    //function sub_0065883C(?:?; ?:?; ?:Integer):?;//0065883C
    function StrComp(const Str1:PChar; const Str2:PChar):Integer;//0065886C
    function StrIComp(const Str1:PChar; const Str2:PChar):Integer;//00658890
    function StrLIComp(const Str1:PChar; const Str2:PChar; MaxLen:Cardinal):Integer;//006588D0
    function StrScan(const Str:PChar; Chr:Char):PChar;//00658914
    function StrPos(const Str1:PChar; const Str2:PChar):PChar;//00658934
    function StrPas(const Str:PChar):AnsiString;//00658988
    //function sub_006589A4(?:?):?;//006589A4
    //function sub_006589D0(?:?):?;//006589D0
    //function sub_006589F8(?:PChar):?;//006589F8
    procedure sub_00658A38(?:PChar);//00658A38
    procedure FormatError(ErrorCode:Integer; Format:PChar; FmtLen:Cardinal);//00658A5C
    procedure FormatVarToStr(var S:AnsiString; const V:Variant);//00658AC4
    procedure FormatClearStr(var S:AnsiString);//00658AE0
    function FormatBuf(var Buffer:void ; BufLen:Cardinal; const Format:void ; FmtLen:Cardinal; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):Cardinal;//00658AF4
    //function sub_00658F08(?:?; ?:?; ?:?; ?:?):?;//00658F08
    //function sub_00658F64(?:?; ?:?; ?:?; ?:?; ?:?):?;//00658F64
    //procedure sub_00658FBC(?:AnsiString; ?:TFileName; ?:?; ?:?);//00658FBC
    procedure FmtStr(var Result:AnsiString; const Format:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//00658FE4
    procedure PutExponent;//006590C0
    function FloatToText(BufferArg:PChar; const Value:void ; ValueType:TFloatValue; Format:TFloatFormat; Precision:Integer; Digits:Integer):Integer;//00659104
    function FloatToTextFmt(Buf:PChar; const Value:void ; ValueType:TFloatValue; Format:PChar):Integer;//006593DC
    procedure FloatToDecimal(var Result:TFloatRec; const Value:void ; ValueType:TFloatValue; Precision:Integer; Decimals:Integer);//006596D0
    procedure sub_006596D2;//006596D2
    function TextToFloat(Buffer:PChar; var Value:void ; ValueType:TFloatValue):Boolean;//006598FC
    function FloatToStr(Value:Extended):AnsiString;//00659A10
    //procedure sub_00659A40(?:?; ?:?);//00659A40
    function TryFloatToCurr(const Value:Extended; var AResult:Currency):Boolean;//00659A70
    function FloatToCurr(const Value:Extended):Currency;//00659AD0
    function FormatFloat(const Format:AnsiString; Value:Extended):AnsiString;//00659B54
    //function sub_00659BAC(?:?):?;//00659BAC
    //function sub_00659BEC(?:?; ?:Extended):?;//00659BEC
    //function sub_00659C14(?:AnsiString; ?:?):?;//00659C14
    //function sub_00659C4C(?:AnsiString; ?:?):?;//00659C4C
    function DateTimeToTimeStamp(DateTime:TDateTime):TTimeStamp;//00659C74
    //function sub_00659CB8(?:?; ?:?; ?:?; ?:?; ?:?):?;//00659CB8
    //procedure sub_00659D38(?:?; ?:?; ?:?; ?:?);//00659D38
    procedure DecodeTime(var Hour:Word; var Min:Word; var Sec:Word; const DateTime:TDateTime; var MSec:Word);//00659D7C
    //function sub_00659DDC(?:Word):?;//00659DDC
    //function sub_00659E20(?:Integer; ?:?; ?:?; ?:?):?;//00659E20
    function EncodeDate(Year:Word; Month:Word; Day:Word):TDateTime;//00659F24
    //function sub_00659F60(?:TSystemTime; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00659F60
    procedure DecodeDate(var Year:Word; var Month:Word; var Day:Word; const DateTime:TDateTime);//0065A0DC
    //procedure sub_0065A10C(?:TSystemTime; ?:?; ?:?);//0065A10C
    //function sub_0065A164(?:TSystemTime):?;//0065A164
    //function sub_0065A1F8(?:?; ?:?):?;//0065A1F8
    function Date:TDateTime;//0065A228
    procedure sub_0065A254;//0065A254
    procedure ReplaceTime(var DateTime:TDateTime; const NewTime:TDateTime);//0065A29C
    //procedure sub_0065A304(?:?; ?:?; ?:?);//0065A304
    //function sub_0065A340:?;//0065A340
    //procedure sub_0065A360(?:void ; ?:Integer; ?:?);//0065A360
    //procedure sub_0065A3C0(?:?; ?:?);//0065A3C0
    //procedure sub_0065A3E4(?:?; ?:?; ?:?);//0065A3E4
    //procedure sub_0065A434(?:?);//0065A434
    procedure GetDate;//0065A46C
    procedure GetTime;//0065A4A4
    //procedure sub_0065A4E4(?:?; ?:?; ?:?);//0065A4E4
    //procedure sub_0065A668(?:?; ?:?; ?:?);//0065A668
    //procedure sub_0065A780(?:?; ?:?);//0065A780
    procedure DateTimeToString(var Result:AnsiString; const Format:AnsiString; DateTime:TDateTime);//0065AF64
    function TryFloatToDateTime(const Value:Extended; var AResult:TDateTime):Boolean;//0065AFD0
    function FloatToDateTime(const Value:Extended):TDateTime;//0065B028
    //procedure sub_0065B068(?:?; ?:?; ?:?);//0065B068
    //procedure sub_0065B088(?:?; ?:?; ?:?);//0065B088
    function DateTimeToStr(const DateTime:TDateTime):AnsiString;//0065B0A8
    //procedure sub_0065B0C4(?:?; ?:?);//0065B0C4
    //function sub_0065B104(?:?; ?:?; ?:?; ?:?):?;//0065B104
    //function sub_0065B1B8(?:?; ?:?; ?:AnsiString):?;//0065B1B8
    //function sub_0065B250(?:?; ?:?; ?:?):?;//0065B250
    //function sub_0065B2A0(?:?):?;//0065B2A0
    //procedure sub_0065B308(?:?; ?:?);//0065B308
    //function sub_0065B370(?:?):?;//0065B370
    //function sub_0065B3D4(?:?; ?:?):?;//0065B3D4
    //function sub_0065B43C(?:AnsiString; ?:?; ?:?):?;//0065B43C
    //function sub_0065B7C8(?:AnsiString; ?:?; ?:?):?;//0065B7C8
    //function sub_0065B9E8(?:?):?;//0065B9E8
    //function sub_0065BA20(?:AnsiString; ?:?):?;//0065BA20
    //function sub_0065BA64(?:?):?;//0065BA64
    //function sub_0065BA9C(?:AnsiString; ?:?):?;//0065BA9C
    //function sub_0065BAE0(?:AnsiString):?;//0065BAE0
    //function sub_0065BB18(?:AnsiString; ?:?):?;//0065BB18
    //procedure sub_0065BBAC(?:?; ?:AnsiString);//0065BBAC
    //procedure sub_0065BC10(?:Integer; ?:?; ?:AnsiString; ?:?);//0065BC10
    //function sub_0065BC6C(?:Integer; ?:?; ?:?):?;//0065BC6C
    //procedure sub_0065BCA8(?:?; ?:?; ?:?; ?:?; ?:?);//0065BCA8
    procedure sub_0065BCEC;//0065BCEC
    procedure sub_0065BEF8;//0065BEF8
    //procedure sub_0065BFBC(?:?; ?:?);//0065BFBC
    //function sub_0065C260(?:?):?;//0065C260
    //function sub_0065C270(?:?; ?:?; ?:?; ?:?):?;//0065C270
    //procedure sub_0065C428(?:?; ?:?);//0065C428
    //constructor sub_0065C6B4(?:?);//0065C6B4
    //function sub_0065C744:?;//0065C744
    //function sub_0065C858(?:?; ?:?; ?:?):?;//0065C858
    procedure RaiseAssertException(const E:Exception; const ErrorAddr:Pointer; const ErrorStack:Pointer);//0065C910
    //function sub_0065C974(?:?):?;//0065C974
    //function sub_0065CA54(?:?):?;//0065CA54
    procedure sub_0065CD40;//0065CD40
    procedure sub_0065CDC8;//0065CDC8
    procedure sub_0065CE38;//0065CE38
    //function sub_0065CEA0(?:?; ?:?):?;//0065CEA0
    //function sub_0065CEEC(?:PChar; ?:?):?;//0065CEEC
    //function sub_0065CF98(?:AnsiString; ?:Integer):?;//0065CF98
    //function sub_0065CFCC(?:PChar; ?:?):?;//0065CFCC
    //function sub_0065CFFC(?:?; ?:Integer):?;//0065CFFC
    //function sub_0065D038(?:?; ?:Integer):?;//0065D038
    //procedure sub_0065D0BC(?:AnsiString; ?:Integer; ?:?; ?:?);//0065D0BC
    //function sub_0065D174(?:?; ?:?):?;//0065D174
    //function sub_0065D1EC(?:AnsiString; ?:?):?;//0065D1EC
    //function sub_0065D260(?:?):?;//0065D260
    //function sub_0065D294(?:?):?;//0065D294
    //function sub_0065D2B0(?:?; ?:?):?;//0065D2B0
    //function sub_0065D300(?:?; ?:?):?;//0065D300
    //function sub_0065D354(?:String; ?:Integer):?;//0065D354
    //function sub_0065D3A0(?:AnsiString; ?:String; ?:?):?;//0065D3A0
    function AnsiPos(const Substr:AnsiString; const S:AnsiString):Integer;//0065D3FC
    //function sub_0065D448(?:String; ?:String):?;//0065D448
    //procedure sub_0065D4BC(?:AnsiString; ?:?);//0065D4BC
    //procedure sub_0065D590(?:?; ?:?);//0065D590
    //function sub_0065D664(?:PChar; ?:?):?;//0065D664
    //function sub_0065D73C(?:?; ?:?):?;//0065D73C
    //function sub_0065D78C(?:PChar; ?:?):?;//0065D78C
    //function sub_0065D7E4(?:?):?;//0065D7E4
    //procedure sub_0065D85C(?:?);//0065D85C
    //function sub_0065D8DC:?;//0065D8DC
    procedure sub_0065D900;//0065D900
    procedure sub_0065DAAC;//0065DAAC
    //procedure sub_0065DE40(?:AnsiString; ?:?; ?:?; ?:?; ?:?);//0065DE40
    procedure RaiseLastOSError;//0065DF9C
    //function sub_0065E048(?:LongBool):?;//0065E048
    //function sub_0065E06C:?;//0065E06C
    procedure sub_0065E0A8;//0065E0A8
    procedure sub_0065E0DC;//0065E0DC
    function InterlockedIncrement(var I:Integer):Integer;//0065E140
    function InterlockedDecrement(var I:Integer):Integer;//0065E14C
    //function sub_0065E158(?:?; ?:?):?;//0065E158
    function InterlockedExchangeAdd(var A:Integer; B:Integer):Integer;//0065E160
    //function sub_0065E1A8(?:?):?;//0065E1A8
    //procedure sub_0065E1C8(?:?);//0065E1C8
    //procedure sub_0065E1E0(?:?);//0065E1E0
    //procedure sub_0065E1F8(?:?);//0065E1F8
    //function sub_0065E2F0(?:?):?;//0065E2F0
    //function sub_0065E400(?:?):?;//0065E400
    //procedure sub_0065E550(?:?);//0065E550
    //procedure sub_0065E598(?:?);//0065E598
    //procedure sub_0065E5B8(?:?);//0065E5B8
    //procedure sub_0065E78C(?:?);//0065E78C
    procedure FreeAndNil(var Obj:void );//0065E8C4
    function Supports(const AClass:TClass; const IID:TGUID):Boolean;//0065E8E8
    //function sub_0065E924(?:?; ?:?; ?:?):?;//0065E924
    //function sub_0065E9CC(?:AnsiString; ?:?):?;//0065E9CC
    procedure _NF__AD4;//0065EA54
    procedure _NF__AD5;//0065EB40

implementation

//00656570
procedure sub_00656570;
begin
{*
 00656570    sub         dword ptr ds:[6ED00C],1
 00656577    ret
*}
end;

//006573E0
procedure DivMod(Dividend:Integer; Divisor:Word; var Result:Word; var Remainder:Word);
begin
{*
 006573E0    push        ebp
 006573E1    mov         ebp,esp
 006573E3    push        ebx
 006573E4    mov         ebx,edx
 006573E6    mov         edx,eax
 006573E8    shr         edx,10
 006573EB    div         ax,bx
 006573EE    mov         ebx,dword ptr [ebp+8]
 006573F1    mov         word ptr [ecx],ax
 006573F4    mov         word ptr [ebx],dx
 006573F7    pop         ebx
 006573F8    pop         ebp
 006573F9    ret         4
*}
end;

//006573FC
{*procedure sub_006573FC(?:?);
begin
 006573FC    push        ebp
 006573FD    mov         ebp,esp
 006573FF    push        ecx
 00657400    mov         dword ptr [ebp-4],eax
 00657403    mov         ecx,dword ptr [ebp-4]
 00657406    mov         dl,1
 00657408    mov         eax,[00656DCC];EConvertError
 0065740D    call        Exception.Create;EConvertError.Create
 00657412    call        @RaiseExcept
 00657417    pop         ecx
 00657418    pop         ebp
 00657419    ret
end;*}

//0065741C
procedure ConvertErrorFmt(ResString:PResStringRec; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 0065741C    push        ebp
 0065741D    mov         ebp,esp
 0065741F    add         esp,0FFFFFFF4
 00657422    mov         dword ptr [ebp-0C],ecx
 00657425    mov         dword ptr [ebp-8],edx
 00657428    mov         dword ptr [ebp-4],eax
 0065742B    mov         eax,dword ptr [ebp-8]
 0065742E    push        eax
 0065742F    mov         eax,dword ptr [ebp-0C]
 00657432    push        eax
 00657433    mov         ecx,dword ptr [ebp-4]
 00657436    mov         dl,1
 00657438    mov         eax,[00656DCC];EConvertError
 0065743D    call        Exception.CreateResFmt
 00657442    call        @RaiseExcept
 00657447    mov         esp,ebp
 00657449    pop         ebp
 0065744A    ret
*}
end;

//0065744C
{*function sub_0065744C(?:?):?;
begin
 0065744C    push        ebp
 0065744D    mov         ebp,esp
 0065744F    add         esp,0FFFFFFF8
 00657452    mov         dword ptr [ebp-4],eax
 00657455    mov         eax,dword ptr [ebp-4]
 00657458    call        @GetMem
 0065745D    mov         dword ptr [ebp-8],eax
 00657460    mov         eax,dword ptr [ebp-8]
 00657463    xor         ecx,ecx
 00657465    mov         edx,dword ptr [ebp-4]
 00657468    call        @FillChar
 0065746D    mov         eax,dword ptr [ebp-8]
 00657470    pop         ecx
 00657471    pop         ecx
 00657472    pop         ebp
 00657473    ret
end;*}

//006574B8
{*procedure sub_006574B8(?:?);
begin
 006574B8    push        ebp
 006574B9    mov         ebp,esp
 006574BB    add         esp,0FFFFFFF8
 006574BE    mov         dword ptr [ebp-4],eax
 006574C1    mov         eax,0C
 006574C6    call        @GetMem
 006574CB    mov         dword ptr [ebp-8],eax
 006574CE    mov         eax,[006E4A18];0x0 gvar_006E4A18:Pointer
 006574D3    mov         edx,dword ptr [ebp-8]
 006574D6    mov         dword ptr [edx],eax
 006574D8    mov         eax,[006EA2E4];^ExitProc:Pointer
 006574DD    mov         eax,dword ptr [eax]
 006574DF    mov         edx,dword ptr [ebp-8]
 006574E2    mov         dword ptr [edx+4],eax
 006574E5    mov         eax,dword ptr [ebp-4]
 006574E8    mov         edx,dword ptr [ebp-8]
 006574EB    mov         dword ptr [edx+8],eax
 006574EE    mov         eax,dword ptr [ebp-8]
 006574F1    mov         [006E4A18],eax;gvar_006E4A18:Pointer
 006574F6    mov         eax,[006EA2E4];^ExitProc:Pointer
 006574FB    mov         dword ptr [eax],657474
 00657501    pop         ecx
 00657502    pop         ecx
 00657503    pop         ebp
 00657504    ret
end;*}

//00657508
{*procedure sub_00657508(?:?; ?:?);
begin
 00657508    push        ebp
 00657509    mov         ebp,esp
 0065750B    add         esp,0FFFFFFE8
 0065750E    mov         dword ptr [ebp-8],edx
 00657511    mov         dword ptr [ebp-4],eax
 00657514    mov         eax,dword ptr [ebp-4]
 00657517    call        @LStrLen
 0065751C    mov         dword ptr [ebp-10],eax
 0065751F    mov         eax,dword ptr [ebp-8]
 00657522    mov         edx,dword ptr [ebp-10]
 00657525    call        @LStrSetLength
 0065752A    mov         eax,dword ptr [ebp-4]
 0065752D    mov         dword ptr [ebp-14],eax
 00657530    mov         eax,dword ptr [ebp-8]
 00657533    mov         eax,dword ptr [eax]
 00657535    mov         dword ptr [ebp-18],eax
 00657538    cmp         dword ptr [ebp-10],0
>0065753C    je          0065756D
 0065753E    mov         eax,dword ptr [ebp-14]
 00657541    mov         al,byte ptr [eax]
 00657543    mov         byte ptr [ebp-9],al
 00657546    cmp         byte ptr [ebp-9],61
>0065754A    jb          00657556
 0065754C    cmp         byte ptr [ebp-9],7A
>00657550    ja          00657556
 00657552    sub         byte ptr [ebp-9],20
 00657556    mov         eax,dword ptr [ebp-18]
 00657559    mov         dl,byte ptr [ebp-9]
 0065755C    mov         byte ptr [eax],dl
 0065755E    inc         dword ptr [ebp-14]
 00657561    inc         dword ptr [ebp-18]
 00657564    dec         dword ptr [ebp-10]
 00657567    cmp         dword ptr [ebp-10],0
>0065756B    jne         0065753E
 0065756D    mov         esp,ebp
 0065756F    pop         ebp
 00657570    ret
end;*}

//00657574
{*procedure sub_00657574(?:?; ?:?);
begin
 00657574    push        ebp
 00657575    mov         ebp,esp
 00657577    add         esp,0FFFFFFE8
 0065757A    mov         dword ptr [ebp-8],edx
 0065757D    mov         dword ptr [ebp-4],eax
 00657580    mov         eax,dword ptr [ebp-4]
 00657583    call        @LStrLen
 00657588    mov         dword ptr [ebp-10],eax
 0065758B    mov         eax,dword ptr [ebp-8]
 0065758E    mov         edx,dword ptr [ebp-10]
 00657591    call        @LStrSetLength
 00657596    mov         eax,dword ptr [ebp-4]
 00657599    mov         dword ptr [ebp-14],eax
 0065759C    mov         eax,dword ptr [ebp-8]
 0065759F    mov         eax,dword ptr [eax]
 006575A1    mov         dword ptr [ebp-18],eax
 006575A4    cmp         dword ptr [ebp-10],0
>006575A8    je          006575D9
 006575AA    mov         eax,dword ptr [ebp-14]
 006575AD    mov         al,byte ptr [eax]
 006575AF    mov         byte ptr [ebp-9],al
 006575B2    cmp         byte ptr [ebp-9],41
>006575B6    jb          006575C2
 006575B8    cmp         byte ptr [ebp-9],5A
>006575BC    ja          006575C2
 006575BE    add         byte ptr [ebp-9],20
 006575C2    mov         eax,dword ptr [ebp-18]
 006575C5    mov         dl,byte ptr [ebp-9]
 006575C8    mov         byte ptr [eax],dl
 006575CA    inc         dword ptr [ebp-14]
 006575CD    inc         dword ptr [ebp-18]
 006575D0    dec         dword ptr [ebp-10]
 006575D3    cmp         dword ptr [ebp-10],0
>006575D7    jne         006575AA
 006575D9    mov         esp,ebp
 006575DB    pop         ebp
 006575DC    ret
end;*}

//006575E0
function CompareStr(const S1:AnsiString; const S2:AnsiString):Integer;
begin
{*
 006575E0    push        esi
 006575E1    push        edi
 006575E2    mov         esi,eax
 006575E4    mov         edi,edx
 006575E6    or          eax,eax
>006575E8    je          006575ED
 006575EA    mov         eax,dword ptr [eax-4]
 006575ED    or          edx,edx
>006575EF    je          006575F4
 006575F1    mov         edx,dword ptr [edx-4]
 006575F4    mov         ecx,eax
 006575F6    cmp         ecx,edx
>006575F8    jbe         006575FC
 006575FA    mov         ecx,edx
 006575FC    cmp         ecx,ecx
 006575FE    repe cmps   byte ptr [esi],byte ptr [edi]
>00657600    je          0065760A
 00657602    movzx       eax,byte ptr [esi-1]
 00657606    movzx       edx,byte ptr [edi-1]
 0065760A    sub         eax,edx
 0065760C    pop         edi
 0065760D    pop         esi
 0065760E    ret
*}
end;

//00657610
function CompareMem(P1:Pointer; P2:Pointer; Length:Integer):Boolean;
begin
{*
 00657610    push        esi
 00657611    push        edi
 00657612    mov         esi,eax
 00657614    mov         edi,edx
 00657616    mov         edx,ecx
 00657618    xor         eax,eax
 0065761A    and         edx,3
 0065761D    shr         ecx,1
 0065761F    shr         ecx,1
 00657621    repe cmps   dword ptr [esi],dword ptr [edi]
>00657623    jne         0065762C
 00657625    mov         ecx,edx
 00657627    repe cmps   byte ptr [esi],byte ptr [edi]
>00657629    jne         0065762C
 0065762B    inc         eax
 0065762C    pop         edi
 0065762D    pop         esi
 0065762E    ret
*}
end;

//00657630
function CompareText(const S1:AnsiString; const S2:AnsiString):Integer;
begin
{*
 00657630    push        esi
 00657631    push        edi
 00657632    push        ebx
 00657633    mov         esi,eax
 00657635    mov         edi,edx
 00657637    or          eax,eax
>00657639    je          0065763E
 0065763B    mov         eax,dword ptr [eax-4]
 0065763E    or          edx,edx
>00657640    je          00657645
 00657642    mov         edx,dword ptr [edx-4]
 00657645    mov         ecx,eax
 00657647    cmp         ecx,edx
>00657649    jbe         0065764D
 0065764B    mov         ecx,edx
 0065764D    cmp         ecx,ecx
 0065764F    repe cmps   byte ptr [esi],byte ptr [edi]
>00657651    je          0065767D
 00657653    mov         bl,byte ptr [esi-1]
 00657656    cmp         bl,61
>00657659    jb          00657663
 0065765B    cmp         bl,7A
>0065765E    ja          00657663
 00657660    sub         bl,20
 00657663    mov         bh,byte ptr [edi-1]
 00657666    cmp         bh,61
>00657669    jb          00657673
 0065766B    cmp         bh,7A
>0065766E    ja          00657673
 00657670    sub         bh,20
 00657673    cmp         bl,bh
>00657675    je          0065764F
 00657677    movzx       eax,bl
 0065767A    movzx       edx,bh
 0065767D    sub         eax,edx
 0065767F    pop         ebx
 00657680    pop         edi
 00657681    pop         esi
 00657682    ret
*}
end;

//00657684
function SameText(const S1:AnsiString; const S2:AnsiString):Boolean;
begin
{*
 00657684    cmp         eax,edx
>00657686    je          006576A1
 00657688    or          eax,eax
>0065768A    je          006576A3
 0065768C    or          edx,edx
>0065768E    je          006576A4
 00657690    mov         ecx,dword ptr [eax-4]
 00657693    cmp         ecx,dword ptr [edx-4]
>00657696    jne         006576A4
 00657698    call        CompareText
 0065769D    test        eax,eax
>0065769F    jne         006576A4
 006576A1    mov         al,1
 006576A3    ret
 006576A4    xor         eax,eax
 006576A6    ret
*}
end;

//006576A8
function AnsiUpperCase(const S:AnsiString):AnsiString;
begin
{*
 006576A8    push        ebp
 006576A9    mov         ebp,esp
 006576AB    add         esp,0FFFFFFF4
 006576AE    mov         dword ptr [ebp-8],edx
 006576B1    mov         dword ptr [ebp-4],eax
 006576B4    mov         eax,dword ptr [ebp-4]
 006576B7    call        @LStrLen
 006576BC    mov         dword ptr [ebp-0C],eax
 006576BF    mov         eax,dword ptr [ebp-4]
 006576C2    call        @LStrToPChar
 006576C7    mov         edx,eax
 006576C9    mov         eax,dword ptr [ebp-8]
 006576CC    mov         ecx,dword ptr [ebp-0C]
 006576CF    call        @LStrFromPCharLen
 006576D4    cmp         dword ptr [ebp-0C],0
>006576D8    jle         006576E9
 006576DA    mov         eax,dword ptr [ebp-0C]
 006576DD    push        eax
 006576DE    mov         eax,dword ptr [ebp-8]
 006576E1    mov         eax,dword ptr [eax]
 006576E3    push        eax
 006576E4    call        USER32.CharUpperBuffA
 006576E9    mov         esp,ebp
 006576EB    pop         ebp
 006576EC    ret
*}
end;

//006576F0
{*procedure sub_006576F0(?:AnsiString; ?:?);
begin
 006576F0    push        ebp
 006576F1    mov         ebp,esp
 006576F3    add         esp,0FFFFFFF4
 006576F6    mov         dword ptr [ebp-8],edx
 006576F9    mov         dword ptr [ebp-4],eax
 006576FC    mov         eax,dword ptr [ebp-4]
 006576FF    call        @LStrLen
 00657704    mov         dword ptr [ebp-0C],eax
 00657707    mov         eax,dword ptr [ebp-4]
 0065770A    call        @LStrToPChar
 0065770F    mov         edx,eax
 00657711    mov         eax,dword ptr [ebp-8]
 00657714    mov         ecx,dword ptr [ebp-0C]
 00657717    call        @LStrFromPCharLen
 0065771C    cmp         dword ptr [ebp-0C],0
>00657720    jle         00657731
 00657722    mov         eax,dword ptr [ebp-0C]
 00657725    push        eax
 00657726    mov         eax,dword ptr [ebp-8]
 00657729    mov         eax,dword ptr [eax]
 0065772B    push        eax
 0065772C    call        USER32.CharLowerBuffA
 00657731    mov         esp,ebp
 00657733    pop         ebp
 00657734    ret
end;*}

//00657738
{*function sub_00657738(?:?; ?:?):?;
begin
 00657738    push        ebp
 00657739    mov         ebp,esp
 0065773B    add         esp,0FFFFFFF4
 0065773E    mov         dword ptr [ebp-8],edx
 00657741    mov         dword ptr [ebp-4],eax
 00657744    mov         eax,dword ptr [ebp-8]
 00657747    call        @LStrLen
 0065774C    push        eax
 0065774D    mov         eax,dword ptr [ebp-8]
 00657750    call        @LStrToPChar
 00657755    push        eax
 00657756    mov         eax,dword ptr [ebp-4]
 00657759    call        @LStrLen
 0065775E    push        eax
 0065775F    mov         eax,dword ptr [ebp-4]
 00657762    call        @LStrToPChar
 00657767    push        eax
 00657768    push        0
 0065776A    push        400
 0065776F    call        KERNEL32.CompareStringA
 00657774    sub         eax,2
 00657777    mov         dword ptr [ebp-0C],eax
 0065777A    mov         eax,dword ptr [ebp-0C]
 0065777D    mov         esp,ebp
 0065777F    pop         ebp
 00657780    ret
end;*}

//00657784
{*function sub_00657784(?:?; ?:?):?;
begin
 00657784    push        ebp
 00657785    mov         ebp,esp
 00657787    add         esp,0FFFFFFF4
 0065778A    mov         dword ptr [ebp-8],edx
 0065778D    mov         dword ptr [ebp-4],eax
 00657790    mov         edx,dword ptr [ebp-8]
 00657793    mov         eax,dword ptr [ebp-4]
 00657796    call        00657738
 0065779B    test        eax,eax
 0065779D    sete        byte ptr [ebp-9]
 006577A1    mov         al,byte ptr [ebp-9]
 006577A4    mov         esp,ebp
 006577A6    pop         ebp
 006577A7    ret
end;*}

//006577A8
function AnsiCompareText(const S1:AnsiString; const S2:AnsiString):Integer;
begin
{*
 006577A8    push        ebp
 006577A9    mov         ebp,esp
 006577AB    add         esp,0FFFFFFF4
 006577AE    mov         dword ptr [ebp-8],edx
 006577B1    mov         dword ptr [ebp-4],eax
 006577B4    mov         eax,dword ptr [ebp-8]
 006577B7    call        @LStrLen
 006577BC    push        eax
 006577BD    mov         eax,dword ptr [ebp-8]
 006577C0    call        @LStrToPChar
 006577C5    push        eax
 006577C6    mov         eax,dword ptr [ebp-4]
 006577C9    call        @LStrLen
 006577CE    push        eax
 006577CF    mov         eax,dword ptr [ebp-4]
 006577D2    call        @LStrToPChar
 006577D7    push        eax
 006577D8    push        1
 006577DA    push        400
 006577DF    call        KERNEL32.CompareStringA
 006577E4    sub         eax,2
 006577E7    mov         dword ptr [ebp-0C],eax
 006577EA    mov         eax,dword ptr [ebp-0C]
 006577ED    mov         esp,ebp
 006577EF    pop         ebp
 006577F0    ret
*}
end;

//006577F4
{*function sub_006577F4(?:?; ?:AnsiString):?;
begin
 006577F4    push        ebp
 006577F5    mov         ebp,esp
 006577F7    add         esp,0FFFFFFF4
 006577FA    mov         dword ptr [ebp-8],edx
 006577FD    mov         dword ptr [ebp-4],eax
 00657800    mov         edx,dword ptr [ebp-8]
 00657803    mov         eax,dword ptr [ebp-4]
 00657806    call        AnsiCompareText
 0065780B    test        eax,eax
 0065780D    sete        byte ptr [ebp-9]
 00657811    mov         al,byte ptr [ebp-9]
 00657814    mov         esp,ebp
 00657816    pop         ebp
 00657817    ret
end;*}

//00657818
{*function sub_00657818(?:PChar; ?:?; ?:?):?;
begin
 00657818    push        ebp
 00657819    mov         ebp,esp
 0065781B    add         esp,0FFFFFFF0
 0065781E    mov         dword ptr [ebp-0C],ecx
 00657821    mov         dword ptr [ebp-8],edx
 00657824    mov         dword ptr [ebp-4],eax
 00657827    mov         eax,dword ptr [ebp-0C]
 0065782A    push        eax
 0065782B    mov         eax,dword ptr [ebp-8]
 0065782E    push        eax
 0065782F    mov         eax,dword ptr [ebp-0C]
 00657832    push        eax
 00657833    mov         eax,dword ptr [ebp-4]
 00657836    push        eax
 00657837    push        1
 00657839    push        400
 0065783E    call        KERNEL32.CompareStringA
 00657843    sub         eax,2
 00657846    mov         dword ptr [ebp-10],eax
 00657849    mov         eax,dword ptr [ebp-10]
 0065784C    mov         esp,ebp
 0065784E    pop         ebp
 0065784F    ret
end;*}

//00657850
{*procedure sub_00657850(?:?; ?:?);
begin
 00657850    push        ebp
 00657851    mov         ebp,esp
 00657853    add         esp,0FFFFFFF0
 00657856    mov         dword ptr [ebp-8],edx
 00657859    mov         dword ptr [ebp-4],eax
 0065785C    mov         eax,dword ptr [ebp-4]
 0065785F    call        @LStrLen
 00657864    mov         dword ptr [ebp-10],eax
 00657867    mov         dword ptr [ebp-0C],1
>0065786E    jmp         00657873
 00657870    inc         dword ptr [ebp-0C]
 00657873    mov         eax,dword ptr [ebp-0C]
 00657876    cmp         eax,dword ptr [ebp-10]
>00657879    jg          00657888
 0065787B    mov         eax,dword ptr [ebp-4]
 0065787E    mov         edx,dword ptr [ebp-0C]
 00657881    cmp         byte ptr [eax+edx-1],20
>00657886    jbe         00657870
 00657888    mov         eax,dword ptr [ebp-0C]
 0065788B    cmp         eax,dword ptr [ebp-10]
>0065788E    jle         0065789D
 00657890    mov         eax,dword ptr [ebp-8]
 00657893    call        @LStrClr
>00657898    jmp         006578C0
 0065789A    dec         dword ptr [ebp-10]
 0065789D    mov         eax,dword ptr [ebp-4]
 006578A0    mov         edx,dword ptr [ebp-10]
 006578A3    cmp         byte ptr [eax+edx-1],20
>006578A8    jbe         0065789A
 006578AA    mov         eax,dword ptr [ebp-8]
 006578AD    push        eax
 006578AE    mov         ecx,dword ptr [ebp-10]
 006578B1    sub         ecx,dword ptr [ebp-0C]
 006578B4    inc         ecx
 006578B5    mov         edx,dword ptr [ebp-0C]
 006578B8    mov         eax,dword ptr [ebp-4]
 006578BB    call        @LStrCopy
 006578C0    mov         esp,ebp
 006578C2    pop         ebp
 006578C3    ret
end;*}

//006578C4
{*procedure sub_006578C4(?:?; ?:?);
begin
 006578C4    push        ebp
 006578C5    mov         ebp,esp
 006578C7    add         esp,0FFFFFFF4
 006578CA    mov         dword ptr [ebp-8],edx
 006578CD    mov         dword ptr [ebp-4],eax
 006578D0    mov         eax,dword ptr [ebp-8]
 006578D3    mov         edx,dword ptr [ebp-4]
 006578D6    call        @LStrAsg
 006578DB    mov         eax,dword ptr [ebp-8]
 006578DE    mov         eax,dword ptr [eax]
 006578E0    call        @LStrLen
 006578E5    cmp         eax,1
>006578E8    jl          00657915
 006578EA    mov         dword ptr [ebp-0C],eax
 006578ED    mov         eax,dword ptr [ebp-8]
 006578F0    mov         eax,dword ptr [eax]
 006578F2    mov         edx,dword ptr [ebp-0C]
 006578F5    cmp         byte ptr [eax+edx-1],27
>006578FA    jne         0065790C
 006578FC    mov         edx,dword ptr [ebp-8]
 006578FF    mov         ecx,dword ptr [ebp-0C]
 00657902    mov         eax,657940;'''
 00657907    call        @LStrInsert
 0065790C    dec         dword ptr [ebp-0C]
 0065790F    cmp         dword ptr [ebp-0C],0
>00657913    jne         006578ED
 00657915    push        657940;'''
 0065791A    mov         eax,dword ptr [ebp-8]
 0065791D    push        dword ptr [eax]
 0065791F    push        657940;'''
 00657924    mov         eax,dword ptr [ebp-8]
 00657927    mov         edx,3
 0065792C    call        @LStrCatN
 00657931    mov         esp,ebp
 00657933    pop         ebp
 00657934    ret
end;*}

//00657944
{*procedure sub_00657944(?:?; ?:?; ?:?);
begin
 00657944    push        ebp
 00657945    mov         ebp,esp
 00657947    add         esp,0FFFFFFDC
 0065794A    push        ebx
 0065794B    xor         ebx,ebx
 0065794D    mov         dword ptr [ebp-24],ebx
 00657950    mov         dword ptr [ebp-0C],ecx
 00657953    mov         byte ptr [ebp-5],dl
 00657956    mov         dword ptr [ebp-4],eax
 00657959    xor         eax,eax
 0065795B    push        ebp
 0065795C    push        657B09
 00657961    push        dword ptr fs:[eax]
 00657964    mov         dword ptr fs:[eax],esp
 00657967    mov         eax,dword ptr [ebp-4]
 0065796A    mov         dword ptr [ebp-10],eax
 0065796D    mov         eax,dword ptr [ebp-4]
 00657970    call        @LStrLen
 00657975    add         eax,dword ptr [ebp-10]
 00657978    mov         dword ptr [ebp-14],eax
 0065797B    mov         eax,dword ptr [ebp-4]
 0065797E    call        @LStrLen
 00657983    mov         dword ptr [ebp-1C],eax
 00657986    mov         eax,dword ptr [ebp-10]
 00657989    cmp         eax,dword ptr [ebp-14]
>0065798C    jae         006579FA
 0065798E    mov         eax,dword ptr [ebp-10]
 00657991    mov         al,byte ptr [eax]
 00657993    sub         al,0A
>00657995    je          0065799D
 00657997    sub         al,3
>00657999    je          006579A8
>0065799B    jmp         006579CF
 0065799D    cmp         byte ptr [ebp-5],1
>006579A1    jne         006579EF
 006579A3    inc         dword ptr [ebp-1C]
>006579A6    jmp         006579EF
 006579A8    cmp         byte ptr [ebp-5],1
>006579AC    jne         006579C1
 006579AE    mov         eax,dword ptr [ebp-10]
 006579B1    cmp         byte ptr [eax+1],0A
>006579B5    jne         006579BC
 006579B7    inc         dword ptr [ebp-10]
>006579BA    jmp         006579EF
 006579BC    inc         dword ptr [ebp-1C]
>006579BF    jmp         006579EF
 006579C1    mov         eax,dword ptr [ebp-10]
 006579C4    cmp         byte ptr [eax+1],0A
>006579C8    jne         006579EF
 006579CA    dec         dword ptr [ebp-1C]
>006579CD    jmp         006579EF
 006579CF    mov         eax,dword ptr [ebp-10]
 006579D2    mov         al,byte ptr [eax]
 006579D4    and         eax,0FF
 006579D9    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>006579E0    jae         006579EF
 006579E2    mov         eax,dword ptr [ebp-10]
 006579E5    call        0065D294
 006579EA    mov         dword ptr [ebp-10],eax
>006579ED    jmp         006579F2
 006579EF    inc         dword ptr [ebp-10]
 006579F2    mov         eax,dword ptr [ebp-10]
 006579F5    cmp         eax,dword ptr [ebp-14]
>006579F8    jb          0065798E
 006579FA    lea         eax,[ebp-24]
 006579FD    mov         edx,dword ptr [ebp-10]
 00657A00    call        @LStrFromPChar
 00657A05    mov         eax,dword ptr [ebp-24]
 00657A08    call        @LStrLen
 00657A0D    cmp         eax,dword ptr [ebp-1C]
>00657A10    jne         00657A22
 00657A12    mov         eax,dword ptr [ebp-0C]
 00657A15    mov         edx,dword ptr [ebp-4]
 00657A18    call        @LStrAsg
>00657A1D    jmp         00657AF3
 00657A22    mov         eax,dword ptr [ebp-4]
 00657A25    mov         dword ptr [ebp-10],eax
 00657A28    mov         eax,dword ptr [ebp-0C]
 00657A2B    mov         ecx,dword ptr [ebp-1C]
 00657A2E    xor         edx,edx
 00657A30    call        @LStrFromPCharLen
 00657A35    mov         eax,dword ptr [ebp-0C]
 00657A38    mov         eax,dword ptr [eax]
 00657A3A    mov         dword ptr [ebp-18],eax
 00657A3D    mov         eax,dword ptr [ebp-10]
 00657A40    cmp         eax,dword ptr [ebp-14]
>00657A43    jae         00657AF3
 00657A49    mov         eax,dword ptr [ebp-10]
 00657A4C    mov         al,byte ptr [eax]
 00657A4E    sub         al,0A
>00657A50    je          00657A58
 00657A52    sub         al,3
>00657A54    je          00657A75
>00657A56    jmp         00657A9D
 00657A58    cmp         byte ptr [ebp-5],1
>00657A5C    jne         00657A67
 00657A5E    mov         eax,dword ptr [ebp-18]
 00657A61    mov         byte ptr [eax],0D
 00657A64    inc         dword ptr [ebp-18]
 00657A67    mov         eax,dword ptr [ebp-18]
 00657A6A    mov         byte ptr [eax],0A
 00657A6D    inc         dword ptr [ebp-18]
 00657A70    inc         dword ptr [ebp-10]
>00657A73    jmp         00657AE7
 00657A75    cmp         byte ptr [ebp-5],1
>00657A79    jne         00657A84
 00657A7B    mov         eax,dword ptr [ebp-18]
 00657A7E    mov         byte ptr [eax],0D
 00657A81    inc         dword ptr [ebp-18]
 00657A84    mov         eax,dword ptr [ebp-18]
 00657A87    mov         byte ptr [eax],0A
 00657A8A    inc         dword ptr [ebp-18]
 00657A8D    inc         dword ptr [ebp-10]
 00657A90    mov         eax,dword ptr [ebp-10]
 00657A93    cmp         byte ptr [eax],0A
>00657A96    jne         00657AE7
 00657A98    inc         dword ptr [ebp-10]
>00657A9B    jmp         00657AE7
 00657A9D    mov         eax,dword ptr [ebp-10]
 00657AA0    mov         al,byte ptr [eax]
 00657AA2    and         eax,0FF
 00657AA7    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>00657AAE    jae         00657AD7
 00657AB0    mov         eax,dword ptr [ebp-10]
 00657AB3    call        0065D260
 00657AB8    mov         dword ptr [ebp-20],eax
 00657ABB    mov         edx,dword ptr [ebp-18]
 00657ABE    mov         eax,dword ptr [ebp-10]
 00657AC1    mov         ecx,dword ptr [ebp-20]
 00657AC4    call        Move
 00657AC9    mov         eax,dword ptr [ebp-20]
 00657ACC    add         dword ptr [ebp-18],eax
 00657ACF    mov         eax,dword ptr [ebp-20]
 00657AD2    add         dword ptr [ebp-10],eax
>00657AD5    jmp         00657AE7
 00657AD7    mov         eax,dword ptr [ebp-18]
 00657ADA    mov         edx,dword ptr [ebp-10]
 00657ADD    mov         dl,byte ptr [edx]
 00657ADF    mov         byte ptr [eax],dl
 00657AE1    inc         dword ptr [ebp-18]
 00657AE4    inc         dword ptr [ebp-10]
 00657AE7    mov         eax,dword ptr [ebp-10]
 00657AEA    cmp         eax,dword ptr [ebp-14]
>00657AED    jb          00657A49
 00657AF3    xor         eax,eax
 00657AF5    pop         edx
 00657AF6    pop         ecx
 00657AF7    pop         ecx
 00657AF8    mov         dword ptr fs:[eax],edx
 00657AFB    push        657B10
 00657B00    lea         eax,[ebp-24]
 00657B03    call        @LStrClr
 00657B08    ret
>00657B09    jmp         @HandleFinally
>00657B0E    jmp         00657B00
 00657B10    pop         ebx
 00657B11    mov         esp,ebp
 00657B13    pop         ebp
 00657B14    ret
end;*}

//00657B18
{*function sub_00657B18(?:TComponentName):?;
begin
 00657B18    push        ebp
 00657B19    mov         ebp,esp
 00657B1B    add         esp,0FFFFFFF0
 00657B1E    mov         dword ptr [ebp-4],eax
 00657B21    mov         byte ptr [ebp-5],0
 00657B25    mov         eax,dword ptr [ebp-4]
 00657B28    call        @LStrLen
 00657B2D    test        eax,eax
>00657B2F    je          00657B8A
 00657B31    mov         eax,dword ptr [ebp-4]
 00657B34    mov         al,byte ptr [eax]
 00657B36    add         al,0BF
 00657B38    sub         al,1A
>00657B3A    jb          00657B46
 00657B3C    sub         al,4
>00657B3E    je          00657B46
 00657B40    add         al,0FE
 00657B42    sub         al,1A
>00657B44    jae         00657B8A
 00657B46    mov         eax,dword ptr [ebp-4]
 00657B49    call        @LStrLen
 00657B4E    sub         eax,2
>00657B51    jl          00657B86
 00657B53    inc         eax
 00657B54    mov         dword ptr [ebp-10],eax
 00657B57    mov         dword ptr [ebp-0C],2
 00657B5E    mov         eax,dword ptr [ebp-4]
 00657B61    mov         edx,dword ptr [ebp-0C]
 00657B64    mov         al,byte ptr [eax+edx-1]
 00657B68    add         al,0D0
 00657B6A    sub         al,0A
>00657B6C    jb          00657B7E
 00657B6E    add         al,0F9
 00657B70    sub         al,1A
>00657B72    jb          00657B7E
 00657B74    sub         al,4
>00657B76    je          00657B7E
 00657B78    add         al,0FE
 00657B7A    sub         al,1A
>00657B7C    jae         00657B8A
 00657B7E    inc         dword ptr [ebp-0C]
 00657B81    dec         dword ptr [ebp-10]
>00657B84    jne         00657B5E
 00657B86    mov         byte ptr [ebp-5],1
 00657B8A    mov         al,byte ptr [ebp-5]
 00657B8D    mov         esp,ebp
 00657B8F    pop         ebp
 00657B90    ret
end;*}

//00657B94
function IntToStr(Value:Integer):AnsiString;
begin
{*
 00657B94    push        ebp
 00657B95    mov         ebp,esp
 00657B97    add         esp,0FFFFFFF0
 00657B9A    mov         dword ptr [ebp-8],edx
 00657B9D    mov         dword ptr [ebp-4],eax
 00657BA0    push        0
 00657BA2    mov         eax,dword ptr [ebp-4]
 00657BA5    mov         dword ptr [ebp-10],eax
 00657BA8    mov         byte ptr [ebp-0C],0
 00657BAC    lea         ecx,[ebp-10]
 00657BAF    mov         eax,dword ptr [ebp-8]
 00657BB2    mov         edx,657BC8;'%d'
 00657BB7    call        FmtStr
 00657BBC    mov         esp,ebp
 00657BBE    pop         ebp
 00657BBF    ret
*}
end;

//00657BCC
{*procedure sub_00657BCC(?:?; ?:?);
begin
 00657BCC    push        ebp
 00657BCD    mov         ebp,esp
 00657BCF    add         esp,0FFFFFFF4
 00657BD2    mov         dword ptr [ebp-4],eax
 00657BD5    push        0
 00657BD7    lea         eax,[ebp+8]
 00657BDA    mov         dword ptr [ebp-0C],eax
 00657BDD    mov         byte ptr [ebp-8],10
 00657BE1    lea         ecx,[ebp-0C]
 00657BE4    mov         eax,dword ptr [ebp-4]
 00657BE7    mov         edx,657C00;'%d'
 00657BEC    call        FmtStr
 00657BF1    mov         esp,ebp
 00657BF3    pop         ebp
 00657BF4    ret         8
end;*}

//00657C04
{*procedure sub_00657C04(?:Pointer; ?:?; ?:?);
begin
 00657C04    push        ebp
 00657C05    mov         ebp,esp
 00657C07    add         esp,0FFFFFFE4
 00657C0A    mov         dword ptr [ebp-0C],ecx
 00657C0D    mov         dword ptr [ebp-8],edx
 00657C10    mov         dword ptr [ebp-4],eax
 00657C13    push        1
 00657C15    mov         eax,dword ptr [ebp-8]
 00657C18    mov         dword ptr [ebp-1C],eax
 00657C1B    mov         byte ptr [ebp-18],0
 00657C1F    mov         eax,dword ptr [ebp-4]
 00657C22    mov         dword ptr [ebp-14],eax
 00657C25    mov         byte ptr [ebp-10],0
 00657C29    lea         ecx,[ebp-1C]
 00657C2C    mov         eax,dword ptr [ebp-0C]
 00657C2F    mov         edx,657C48;'%.*x'
 00657C34    call        FmtStr
 00657C39    mov         esp,ebp
 00657C3B    pop         ebp
 00657C3C    ret
end;*}

//00657C50
{*procedure sub_00657C50(?:?; ?:?; ?:?);
begin
 00657C50    push        ebp
 00657C51    mov         ebp,esp
 00657C53    add         esp,0FFFFFFE8
 00657C56    mov         dword ptr [ebp-8],edx
 00657C59    mov         dword ptr [ebp-4],eax
 00657C5C    push        1
 00657C5E    mov         eax,dword ptr [ebp-4]
 00657C61    mov         dword ptr [ebp-18],eax
 00657C64    mov         byte ptr [ebp-14],0
 00657C68    lea         eax,[ebp+8]
 00657C6B    mov         dword ptr [ebp-10],eax
 00657C6E    mov         byte ptr [ebp-0C],10
 00657C72    lea         ecx,[ebp-18]
 00657C75    mov         eax,dword ptr [ebp-8]
 00657C78    mov         edx,657C90;'%.*x'
 00657C7D    call        FmtStr
 00657C82    mov         esp,ebp
 00657C84    pop         ebp
 00657C85    ret         8
end;*}

//00657C98
function StrToInt(const S:AnsiString):Integer;
begin
{*
 00657C98    push        ebp
 00657C99    mov         ebp,esp
 00657C9B    add         esp,0FFFFFFEC
 00657C9E    mov         dword ptr [ebp-4],eax
 00657CA1    lea         edx,[ebp-0C]
 00657CA4    mov         eax,dword ptr [ebp-4]
 00657CA7    call        @ValLong
 00657CAC    mov         dword ptr [ebp-8],eax
 00657CAF    cmp         dword ptr [ebp-0C],0
>00657CB3    je          00657CCE
 00657CB5    mov         eax,dword ptr [ebp-4]
 00657CB8    mov         dword ptr [ebp-14],eax
 00657CBB    mov         byte ptr [ebp-10],0B
 00657CBF    lea         edx,[ebp-14]
 00657CC2    mov         eax,[006EA11C];^gvar_0065EF24
 00657CC7    xor         ecx,ecx
 00657CC9    call        ConvertErrorFmt
 00657CCE    mov         eax,dword ptr [ebp-8]
 00657CD1    mov         esp,ebp
 00657CD3    pop         ebp
 00657CD4    ret
*}
end;

//00657CD8
{*function sub_00657CD8(?:AnsiString; ?:?):?;
begin
 00657CD8    push        ebp
 00657CD9    mov         ebp,esp
 00657CDB    add         esp,0FFFFFFF0
 00657CDE    mov         dword ptr [ebp-8],edx
 00657CE1    mov         dword ptr [ebp-4],eax
 00657CE4    lea         edx,[ebp-10]
 00657CE7    mov         eax,dword ptr [ebp-4]
 00657CEA    call        @ValLong
 00657CEF    mov         dword ptr [ebp-0C],eax
 00657CF2    cmp         dword ptr [ebp-10],0
>00657CF6    je          00657CFE
 00657CF8    mov         eax,dword ptr [ebp-8]
 00657CFB    mov         dword ptr [ebp-0C],eax
 00657CFE    mov         eax,dword ptr [ebp-0C]
 00657D01    mov         esp,ebp
 00657D03    pop         ebp
 00657D04    ret
end;*}

//00657D08
{*function sub_00657D08(?:AnsiString; ?:dword):?;
begin
 00657D08    push        ebp
 00657D09    mov         ebp,esp
 00657D0B    add         esp,0FFFFFFF0
 00657D0E    mov         dword ptr [ebp-8],edx
 00657D11    mov         dword ptr [ebp-4],eax
 00657D14    lea         edx,[ebp-10]
 00657D17    mov         eax,dword ptr [ebp-4]
 00657D1A    call        @ValLong
 00657D1F    mov         edx,dword ptr [ebp-8]
 00657D22    mov         dword ptr [edx],eax
 00657D24    cmp         dword ptr [ebp-10],0
 00657D28    sete        byte ptr [ebp-9]
 00657D2C    mov         al,byte ptr [ebp-9]
 00657D2F    mov         esp,ebp
 00657D31    pop         ebp
 00657D32    ret
end;*}

//00657D34
{*function sub_00657D34(?:?):?;
begin
 00657D34    push        ebp
 00657D35    mov         ebp,esp
 00657D37    add         esp,0FFFFFFE4
 00657D3A    mov         dword ptr [ebp-4],eax
 00657D3D    lea         edx,[ebp-14]
 00657D40    mov         eax,dword ptr [ebp-4]
 00657D43    call        @ValInt64
 00657D48    mov         dword ptr [ebp-10],eax
 00657D4B    mov         dword ptr [ebp-0C],edx
 00657D4E    cmp         dword ptr [ebp-14],0
>00657D52    je          00657D6D
 00657D54    mov         eax,dword ptr [ebp-4]
 00657D57    mov         dword ptr [ebp-1C],eax
 00657D5A    mov         byte ptr [ebp-18],0B
 00657D5E    lea         edx,[ebp-1C]
 00657D61    mov         eax,[006EA11C];^gvar_0065EF24
 00657D66    xor         ecx,ecx
 00657D68    call        ConvertErrorFmt
 00657D6D    mov         eax,dword ptr [ebp-10]
 00657D70    mov         edx,dword ptr [ebp-0C]
 00657D73    mov         esp,ebp
 00657D75    pop         ebp
 00657D76    ret
end;*}

//00657E08
{*procedure sub_00657E08(?:?; ?:?);
begin
 00657E08    push        ebp
 00657E09    mov         ebp,esp
 00657E0B    add         esp,0FFFFFFF0
 00657E0E    mov         dword ptr [ebp-8],edx
 00657E11    mov         dword ptr [ebp-4],eax
 00657E14    lea         eax,[ebp-10]
 00657E17    mov         edx,dword ptr ds:[657D90];TStrData
 00657E1D    call        @InitializeRecord
 00657E22    xor         eax,eax
 00657E24    push        ebp
 00657E25    push        657E72
 00657E2A    push        dword ptr fs:[eax]
 00657E2D    mov         dword ptr fs:[eax],esp
 00657E30    mov         eax,dword ptr [ebp-4]
 00657E33    mov         dword ptr [ebp-10],eax
 00657E36    lea         eax,[ebp-0C]
 00657E39    call        @LStrClr
 00657E3E    lea         edx,[ebp-10]
 00657E41    mov         eax,657DB0
 00657E46    call        0066E248
 00657E4B    mov         eax,dword ptr [ebp-8]
 00657E4E    mov         edx,dword ptr [ebp-0C]
 00657E51    call        @LStrAsg
 00657E56    xor         eax,eax
 00657E58    pop         edx
 00657E59    pop         ecx
 00657E5A    pop         ecx
 00657E5B    mov         dword ptr fs:[eax],edx
 00657E5E    push        657E79
 00657E63    lea         eax,[ebp-10]
 00657E66    mov         edx,dword ptr ds:[657D90];TStrData
 00657E6C    call        @FinalizeRecord
 00657E71    ret
>00657E72    jmp         @HandleFinally
>00657E77    jmp         00657E63
 00657E79    mov         esp,ebp
 00657E7B    pop         ebp
 00657E7C    ret
end;*}

//00657E80
{*procedure sub_00657E80(?:?; ?:?);
begin
 00657E80    push        ebp
 00657E81    mov         ebp,esp
 00657E83    add         esp,0FFFFFFF8
 00657E86    mov         dword ptr [ebp-8],edx
 00657E89    mov         dword ptr [ebp-4],eax
 00657E8C    mov         edx,dword ptr [ebp-8]
 00657E8F    mov         eax,dword ptr [ebp-4]
 00657E92    call        00657E08
 00657E97    pop         ecx
 00657E98    pop         ecx
 00657E99    pop         ebp
 00657E9A    ret
end;*}

//00657E9C
{*function sub_00657E9C(?:?; ?:?):?;
begin
 00657E9C    push        ebp
 00657E9D    mov         ebp,esp
 00657E9F    add         esp,0FFFFFFF4
 00657EA2    mov         dword ptr [ebp-8],edx
 00657EA5    mov         dword ptr [ebp-4],eax
 00657EA8    mov         dword ptr [ebp-0C],0FFFFFFFF
 00657EAF    mov         eax,dword ptr [ebp-8]
 00657EB2    and         eax,3
 00657EB5    cmp         eax,2
>00657EB8    ja          00657F07
 00657EBA    mov         eax,dword ptr [ebp-8]
 00657EBD    and         eax,0F0
 00657EC2    shr         eax,4
 00657EC5    cmp         eax,40
>00657EC8    ja          00657F07
 00657ECA    push        0
 00657ECC    push        80
 00657ED1    push        3
 00657ED3    push        0
 00657ED5    mov         eax,dword ptr [ebp-8]
 00657ED8    and         eax,0F0
 00657EDD    shr         eax,4
 00657EE0    mov         eax,dword ptr [eax*4+6E4A30]
 00657EE7    push        eax
 00657EE8    mov         eax,dword ptr [ebp-8]
 00657EEB    and         eax,3
 00657EEE    mov         eax,dword ptr [eax*4+6E4A24]
 00657EF5    push        eax
 00657EF6    mov         eax,dword ptr [ebp-4]
 00657EF9    call        @LStrToPChar
 00657EFE    push        eax
 00657EFF    call        KERNEL32.CreateFileA
 00657F04    mov         dword ptr [ebp-0C],eax
 00657F07    mov         eax,dword ptr [ebp-0C]
 00657F0A    mov         esp,ebp
 00657F0C    pop         ebp
 00657F0D    ret
end;*}

//00657F10
{*function sub_00657F10(?:?):?;
begin
 00657F10    push        ebp
 00657F11    mov         ebp,esp
 00657F13    add         esp,0FFFFFFF8
 00657F16    mov         dword ptr [ebp-4],eax
 00657F19    push        0
 00657F1B    push        80
 00657F20    push        2
 00657F22    push        0
 00657F24    push        0
 00657F26    push        0C0000000
 00657F2B    mov         eax,dword ptr [ebp-4]
 00657F2E    call        @LStrToPChar
 00657F33    push        eax
 00657F34    call        KERNEL32.CreateFileA
 00657F39    mov         dword ptr [ebp-8],eax
 00657F3C    mov         eax,dword ptr [ebp-8]
 00657F3F    pop         ecx
 00657F40    pop         ecx
 00657F41    pop         ebp
 00657F42    ret
end;*}

//00657F44
{*function sub_00657F44(?:?; ?:?):?;
begin
 00657F44    push        ebp
 00657F45    mov         ebp,esp
 00657F47    add         esp,0FFFFFFF4
 00657F4A    mov         dword ptr [ebp-0C],edx
 00657F4D    mov         dword ptr [ebp-4],eax
 00657F50    mov         eax,dword ptr [ebp-4]
 00657F53    call        00657F10
 00657F58    mov         dword ptr [ebp-8],eax
 00657F5B    mov         eax,dword ptr [ebp-8]
 00657F5E    mov         esp,ebp
 00657F60    pop         ebp
 00657F61    ret
end;*}

//00657F64
{*function sub_00657F64(?:Integer; ?:?; ?:?):?;
begin
 00657F64    push        ebp
 00657F65    mov         ebp,esp
 00657F67    add         esp,0FFFFFFF0
 00657F6A    mov         dword ptr [ebp-0C],ecx
 00657F6D    mov         dword ptr [ebp-8],edx
 00657F70    mov         dword ptr [ebp-4],eax
 00657F73    push        0
 00657F75    lea         eax,[ebp-10]
 00657F78    push        eax
 00657F79    mov         eax,dword ptr [ebp-0C]
 00657F7C    push        eax
 00657F7D    mov         eax,dword ptr [ebp-8]
 00657F80    push        eax
 00657F81    mov         eax,dword ptr [ebp-4]
 00657F84    push        eax
 00657F85    call        KERNEL32.ReadFile
 00657F8A    test        eax,eax
>00657F8C    jne         00657F95
 00657F8E    mov         dword ptr [ebp-10],0FFFFFFFF
 00657F95    mov         eax,dword ptr [ebp-10]
 00657F98    mov         esp,ebp
 00657F9A    pop         ebp
 00657F9B    ret
end;*}

//00657F9C
{*function sub_00657F9C(?:Integer; ?:?; ?:?):?;
begin
 00657F9C    push        ebp
 00657F9D    mov         ebp,esp
 00657F9F    add         esp,0FFFFFFF0
 00657FA2    mov         dword ptr [ebp-0C],ecx
 00657FA5    mov         dword ptr [ebp-8],edx
 00657FA8    mov         dword ptr [ebp-4],eax
 00657FAB    push        0
 00657FAD    lea         eax,[ebp-10]
 00657FB0    push        eax
 00657FB1    mov         eax,dword ptr [ebp-0C]
 00657FB4    push        eax
 00657FB5    mov         eax,dword ptr [ebp-8]
 00657FB8    push        eax
 00657FB9    mov         eax,dword ptr [ebp-4]
 00657FBC    push        eax
 00657FBD    call        KERNEL32.WriteFile
 00657FC2    test        eax,eax
>00657FC4    jne         00657FCD
 00657FC6    mov         dword ptr [ebp-10],0FFFFFFFF
 00657FCD    mov         eax,dword ptr [ebp-10]
 00657FD0    mov         esp,ebp
 00657FD2    pop         ebp
 00657FD3    ret
end;*}

//00657FD4
{*function sub_00657FD4(?:Integer; ?:?; ?:?; ?:?):?;
begin
 00657FD4    push        ebp
 00657FD5    mov         ebp,esp
 00657FD7    add         esp,0FFFFFFF0
 00657FDA    mov         dword ptr [ebp-10],edx
 00657FDD    mov         dword ptr [ebp-0C],eax
 00657FE0    mov         eax,dword ptr [ebp+8]
 00657FE3    mov         dword ptr [ebp-8],eax
 00657FE6    mov         eax,dword ptr [ebp+0C]
 00657FE9    mov         dword ptr [ebp-4],eax
 00657FEC    mov         eax,dword ptr [ebp-10]
 00657FEF    push        eax
 00657FF0    lea         eax,[ebp-4]
 00657FF3    push        eax
 00657FF4    mov         eax,dword ptr [ebp-8]
 00657FF7    push        eax
 00657FF8    mov         eax,dword ptr [ebp-0C]
 00657FFB    push        eax
 00657FFC    call        KERNEL32.SetFilePointer
 00658001    mov         dword ptr [ebp-8],eax
 00658004    mov         eax,dword ptr [ebp-8]
 00658007    mov         edx,dword ptr [ebp-4]
 0065800A    mov         esp,ebp
 0065800C    pop         ebp
 0065800D    ret         8
end;*}

//00658010
procedure sub_00658010(?:Integer);
begin
{*
 00658010    push        ebp
 00658011    mov         ebp,esp
 00658013    push        ecx
 00658014    mov         dword ptr [ebp-4],eax
 00658017    mov         eax,dword ptr [ebp-4]
 0065801A    push        eax
 0065801B    call        KERNEL32.CloseHandle
 00658020    pop         ecx
 00658021    pop         ebp
 00658022    ret
*}
end;

//00658024
{*function sub_00658024(?:AnsiString):?;
begin
 00658024    push        ebp
 00658025    mov         ebp,esp
 00658027    add         esp,0FFFFFEAC
 0065802D    mov         dword ptr [ebp-8],eax
 00658030    lea         eax,[ebp-154]
 00658036    push        eax
 00658037    mov         eax,dword ptr [ebp-8]
 0065803A    call        @LStrToPChar
 0065803F    push        eax
 00658040    call        KERNEL32.FindFirstFileA
 00658045    mov         dword ptr [ebp-0C],eax
 00658048    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0065804C    je          00658085
 0065804E    mov         eax,dword ptr [ebp-0C]
 00658051    push        eax
 00658052    call        KERNEL32.FindClose
 00658057    test        byte ptr [ebp-154],10
>0065805E    jne         00658085
 00658060    lea         eax,[ebp-14]
 00658063    push        eax
 00658064    lea         eax,[ebp-140]
 0065806A    push        eax
 0065806B    call        KERNEL32.FileTimeToLocalFileTime
 00658070    lea         eax,[ebp-4]
 00658073    push        eax
 00658074    lea         eax,[ebp-2]
 00658077    push        eax
 00658078    lea         eax,[ebp-14]
 0065807B    push        eax
 0065807C    call        KERNEL32.FileTimeToDosDateTime
 00658081    test        eax,eax
>00658083    jne         0065808C
 00658085    mov         dword ptr [ebp-4],0FFFFFFFF
 0065808C    mov         eax,dword ptr [ebp-4]
 0065808F    mov         esp,ebp
 00658091    pop         ebp
 00658092    ret
end;*}

//00658094
{*function sub_00658094(?:AnsiString):?;
begin
 00658094    push        ebp
 00658095    mov         ebp,esp
 00658097    add         esp,0FFFFFFF8
 0065809A    mov         dword ptr [ebp-4],eax
 0065809D    mov         eax,dword ptr [ebp-4]
 006580A0    call        00658024
 006580A5    inc         eax
 006580A6    setne       byte ptr [ebp-5]
 006580AA    mov         al,byte ptr [ebp-5]
 006580AD    pop         ecx
 006580AE    pop         ecx
 006580AF    pop         ebp
 006580B0    ret
end;*}

//006580B4
{*function sub_006580B4(?:AnsiString):?;
begin
 006580B4    push        ebp
 006580B5    mov         ebp,esp
 006580B7    add         esp,0FFFFFFF4
 006580BA    mov         dword ptr [ebp-4],eax
 006580BD    mov         eax,dword ptr [ebp-4]
 006580C0    call        @LStrToPChar
 006580C5    push        eax
 006580C6    call        KERNEL32.GetFileAttributesA
 006580CB    mov         dword ptr [ebp-0C],eax
 006580CE    cmp         dword ptr [ebp-0C],0FFFFFFFF
>006580D2    je          006580DA
 006580D4    test        byte ptr [ebp-0C],10
>006580D8    jne         006580DE
 006580DA    xor         eax,eax
>006580DC    jmp         006580E0
 006580DE    mov         al,1
 006580E0    mov         byte ptr [ebp-5],al
 006580E3    mov         al,byte ptr [ebp-5]
 006580E6    mov         esp,ebp
 006580E8    pop         ebp
 006580E9    ret
end;*}

//006580EC
{*function sub_006580EC(?:Byte):?;
begin
 006580EC    push        ebp
 006580ED    mov         ebp,esp
 006580EF    add         esp,0FFFFFFF0
 006580F2    mov         dword ptr [ebp-4],eax
>006580F5    jmp         00658118
 006580F7    mov         eax,dword ptr [ebp-4]
 006580FA    add         eax,18
 006580FD    push        eax
 006580FE    mov         eax,dword ptr [ebp-4]
 00658101    mov         eax,dword ptr [eax+14]
 00658104    push        eax
 00658105    call        KERNEL32.FindNextFileA
 0065810A    test        eax,eax
>0065810C    jne         00658118
 0065810E    call        KERNEL32.GetLastError
 00658113    mov         dword ptr [ebp-8],eax
>00658116    jmp         0065817D
 00658118    mov         eax,dword ptr [ebp-4]
 0065811B    mov         eax,dword ptr [eax+18]
 0065811E    mov         edx,dword ptr [ebp-4]
 00658121    and         eax,dword ptr [edx+10]
>00658124    jne         006580F7
 00658126    lea         eax,[ebp-10]
 00658129    push        eax
 0065812A    mov         eax,dword ptr [ebp-4]
 0065812D    add         eax,2C
 00658130    push        eax
 00658131    call        KERNEL32.FileTimeToLocalFileTime
 00658136    mov         eax,dword ptr [ebp-4]
 00658139    push        eax
 0065813A    mov         eax,dword ptr [ebp-4]
 0065813D    add         eax,2
 00658140    push        eax
 00658141    lea         eax,[ebp-10]
 00658144    push        eax
 00658145    call        KERNEL32.FileTimeToDosDateTime
 0065814A    mov         eax,dword ptr [ebp-4]
 0065814D    mov         eax,dword ptr [eax+38]
 00658150    mov         edx,dword ptr [ebp-4]
 00658153    mov         dword ptr [edx+4],eax
 00658156    mov         eax,dword ptr [ebp-4]
 00658159    mov         eax,dword ptr [eax+18]
 0065815C    mov         edx,dword ptr [ebp-4]
 0065815F    mov         dword ptr [edx+8],eax
 00658162    mov         eax,dword ptr [ebp-4]
 00658165    add         eax,0C
 00658168    mov         edx,dword ptr [ebp-4]
 0065816B    add         edx,44
 0065816E    mov         ecx,104
 00658173    call        @LStrFromArray
 00658178    xor         eax,eax
 0065817A    mov         dword ptr [ebp-8],eax
 0065817D    mov         eax,dword ptr [ebp-8]
 00658180    mov         esp,ebp
 00658182    pop         ebp
 00658183    ret
end;*}

//00658184
{*function sub_00658184(?:AnsiString; ?:?; ?:Byte):?;
begin
 00658184    push        ebp
 00658185    mov         ebp,esp
 00658187    add         esp,0FFFFFFF0
 0065818A    mov         dword ptr [ebp-0C],ecx
 0065818D    mov         dword ptr [ebp-8],edx
 00658190    mov         dword ptr [ebp-4],eax
 00658193    mov         eax,dword ptr [ebp-8]
 00658196    not         eax
 00658198    and         eax,1E
 0065819B    mov         edx,dword ptr [ebp-0C]
 0065819E    mov         dword ptr [edx+10],eax
 006581A1    mov         eax,dword ptr [ebp-0C]
 006581A4    add         eax,18
 006581A7    push        eax
 006581A8    mov         eax,dword ptr [ebp-4]
 006581AB    call        @LStrToPChar
 006581B0    push        eax
 006581B1    call        KERNEL32.FindFirstFileA
 006581B6    mov         edx,dword ptr [ebp-0C]
 006581B9    mov         dword ptr [edx+14],eax
 006581BC    mov         eax,dword ptr [ebp-0C]
 006581BF    cmp         dword ptr [eax+14],0FFFFFFFF
>006581C3    je          006581E0
 006581C5    mov         eax,dword ptr [ebp-0C]
 006581C8    call        006580EC
 006581CD    mov         dword ptr [ebp-10],eax
 006581D0    cmp         dword ptr [ebp-10],0
>006581D4    je          006581E8
 006581D6    mov         eax,dword ptr [ebp-0C]
 006581D9    call        0065822C
>006581DE    jmp         006581E8
 006581E0    call        KERNEL32.GetLastError
 006581E5    mov         dword ptr [ebp-10],eax
 006581E8    mov         eax,dword ptr [ebp-10]
 006581EB    mov         esp,ebp
 006581ED    pop         ebp
 006581EE    ret
end;*}

//006581F0
{*function sub_006581F0(?:Byte):?;
begin
 006581F0    push        ebp
 006581F1    mov         ebp,esp
 006581F3    add         esp,0FFFFFFF8
 006581F6    mov         dword ptr [ebp-4],eax
 006581F9    mov         eax,dword ptr [ebp-4]
 006581FC    add         eax,18
 006581FF    push        eax
 00658200    mov         eax,dword ptr [ebp-4]
 00658203    mov         eax,dword ptr [eax+14]
 00658206    push        eax
 00658207    call        KERNEL32.FindNextFileA
 0065820C    test        eax,eax
>0065820E    je          0065821D
 00658210    mov         eax,dword ptr [ebp-4]
 00658213    call        006580EC
 00658218    mov         dword ptr [ebp-8],eax
>0065821B    jmp         00658225
 0065821D    call        KERNEL32.GetLastError
 00658222    mov         dword ptr [ebp-8],eax
 00658225    mov         eax,dword ptr [ebp-8]
 00658228    pop         ecx
 00658229    pop         ecx
 0065822A    pop         ebp
 0065822B    ret
end;*}

//0065822C
procedure sub_0065822C(?:Byte);
begin
{*
 0065822C    push        ebp
 0065822D    mov         ebp,esp
 0065822F    push        ecx
 00658230    mov         dword ptr [ebp-4],eax
 00658233    mov         eax,dword ptr [ebp-4]
 00658236    cmp         dword ptr [eax+14],0FFFFFFFF
>0065823A    je          00658252
 0065823C    mov         eax,dword ptr [ebp-4]
 0065823F    mov         eax,dword ptr [eax+14]
 00658242    push        eax
 00658243    call        KERNEL32.FindClose
 00658248    mov         eax,dword ptr [ebp-4]
 0065824B    mov         dword ptr [eax+14],0FFFFFFFF
 00658252    pop         ecx
 00658253    pop         ebp
 00658254    ret
*}
end;

//00658280
{*function sub_00658280(?:AnsiString):?;
begin
 00658280    push        ebp
 00658281    mov         ebp,esp
 00658283    add         esp,0FFFFFFF4
 00658286    mov         dword ptr [ebp-4],eax
 00658289    mov         eax,dword ptr [ebp-4]
 0065828C    call        @LStrLen
 00658291    mov         dword ptr [ebp-0C],eax
 00658294    cmp         dword ptr [ebp-0C],0
>00658298    je          006582BD
>0065829A    jmp         0065829F
 0065829C    dec         dword ptr [ebp-0C]
 0065829F    mov         edx,dword ptr [ebp-0C]
 006582A2    mov         eax,dword ptr [ebp-4]
 006582A5    call        0065CF98
 006582AA    cmp         al,2
>006582AC    je          0065829C
 006582AE    mov         eax,dword ptr [ebp-0C]
 006582B1    mov         edx,dword ptr [ebp-4]
 006582B4    lea         eax,[edx+eax-1]
 006582B8    mov         dword ptr [ebp-8],eax
>006582BB    jmp         006582C2
 006582BD    xor         eax,eax
 006582BF    mov         dword ptr [ebp-8],eax
 006582C2    mov         eax,dword ptr [ebp-8]
 006582C5    mov         esp,ebp
 006582C7    pop         ebp
 006582C8    ret
end;*}

//006582CC
{*function sub_006582CC(?:AnsiString; ?:dword):?;
begin
 006582CC    push        ebp
 006582CD    mov         ebp,esp
 006582CF    add         esp,0FFFFFFF0
 006582D2    mov         dword ptr [ebp-8],edx
 006582D5    mov         dword ptr [ebp-4],eax
 006582D8    mov         eax,dword ptr [ebp-8]
 006582DB    call        @LStrLen
 006582E0    mov         dword ptr [ebp-0C],eax
 006582E3    mov         eax,dword ptr [ebp-4]
 006582E6    call        @LStrToPChar
 006582EB    mov         dword ptr [ebp-10],eax
 006582EE    cmp         dword ptr [ebp-0C],0
>006582F2    jle         00658332
 006582F4    mov         eax,dword ptr [ebp-0C]
 006582F7    mov         edx,dword ptr [ebp-8]
 006582FA    cmp         byte ptr [edx+eax-1],0
>006582FF    je          00658329
 00658301    mov         eax,dword ptr [ebp-0C]
 00658304    mov         edx,dword ptr [ebp-8]
 00658307    mov         dl,byte ptr [edx+eax-1]
 0065830B    mov         eax,dword ptr [ebp-10]
 0065830E    call        StrScan
 00658313    test        eax,eax
>00658315    je          00658329
 00658317    mov         edx,dword ptr [ebp-0C]
 0065831A    mov         eax,dword ptr [ebp-8]
 0065831D    call        0065CF98
 00658322    cmp         al,2
>00658324    jne         00658332
 00658326    dec         dword ptr [ebp-0C]
 00658329    dec         dword ptr [ebp-0C]
 0065832C    cmp         dword ptr [ebp-0C],0
>00658330    jg          006582F4
 00658332    mov         eax,dword ptr [ebp-0C]
 00658335    mov         esp,ebp
 00658337    pop         ebp
 00658338    ret
end;*}

//0065833C
{*procedure sub_0065833C(?:dword; ?:?; ?:?);
begin
 0065833C    push        ebp
 0065833D    mov         ebp,esp
 0065833F    add         esp,0FFFFFFEC
 00658342    push        ebx
 00658343    xor         ebx,ebx
 00658345    mov         dword ptr [ebp-14],ebx
 00658348    mov         dword ptr [ebp-0C],ecx
 0065834B    mov         dword ptr [ebp-8],edx
 0065834E    mov         dword ptr [ebp-4],eax
 00658351    xor         eax,eax
 00658353    push        ebp
 00658354    push        6583C2
 00658359    push        dword ptr fs:[eax]
 0065835C    mov         dword ptr fs:[eax],esp
 0065835F    mov         edx,dword ptr [ebp-4]
 00658362    mov         eax,6583D8;'.\:'
 00658367    call        006582CC
 0065836C    mov         dword ptr [ebp-10],eax
 0065836F    cmp         dword ptr [ebp-10],0
>00658373    je          00658382
 00658375    mov         eax,dword ptr [ebp-10]
 00658378    mov         edx,dword ptr [ebp-4]
 0065837B    cmp         byte ptr [edx+eax-1],2E
>00658380    je          00658389
 00658382    mov         dword ptr [ebp-10],7FFFFFFF
 00658389    lea         eax,[ebp-14]
 0065838C    push        eax
 0065838D    mov         ecx,dword ptr [ebp-10]
 00658390    dec         ecx
 00658391    mov         edx,1
 00658396    mov         eax,dword ptr [ebp-4]
 00658399    call        @LStrCopy
 0065839E    mov         edx,dword ptr [ebp-14]
 006583A1    mov         eax,dword ptr [ebp-0C]
 006583A4    mov         ecx,dword ptr [ebp-8]
 006583A7    call        @LStrCat3
 006583AC    xor         eax,eax
 006583AE    pop         edx
 006583AF    pop         ecx
 006583B0    pop         ecx
 006583B1    mov         dword ptr fs:[eax],edx
 006583B4    push        6583C9
 006583B9    lea         eax,[ebp-14]
 006583BC    call        @LStrClr
 006583C1    ret
>006583C2    jmp         @HandleFinally
>006583C7    jmp         006583B9
 006583C9    pop         ebx
 006583CA    mov         esp,ebp
 006583CC    pop         ebp
 006583CD    ret
end;*}

//006583DC
{*procedure sub_006583DC(?:?; ?:?);
begin
 006583DC    push        ebp
 006583DD    mov         ebp,esp
 006583DF    add         esp,0FFFFFFF4
 006583E2    mov         dword ptr [ebp-8],edx
 006583E5    mov         dword ptr [ebp-4],eax
 006583E8    mov         edx,dword ptr [ebp-4]
 006583EB    mov         eax,658418;'\:'
 006583F0    call        006582CC
 006583F5    mov         dword ptr [ebp-0C],eax
 006583F8    mov         eax,dword ptr [ebp-8]
 006583FB    push        eax
 006583FC    mov         ecx,dword ptr [ebp-0C]
 006583FF    mov         edx,1
 00658404    mov         eax,dword ptr [ebp-4]
 00658407    call        @LStrCopy
 0065840C    mov         esp,ebp
 0065840E    pop         ebp
 0065840F    ret
end;*}

//0065841C
{*procedure sub_0065841C(?:dword; ?:?);
begin
 0065841C    push        ebp
 0065841D    mov         ebp,esp
 0065841F    add         esp,0FFFFFFF4
 00658422    mov         dword ptr [ebp-8],edx
 00658425    mov         dword ptr [ebp-4],eax
 00658428    mov         edx,dword ptr [ebp-4]
 0065842B    mov         eax,6584B4;'\:'
 00658430    call        006582CC
 00658435    mov         dword ptr [ebp-0C],eax
 00658438    cmp         dword ptr [ebp-0C],1
>0065843C    jle         0065847D
 0065843E    mov         eax,dword ptr [ebp-0C]
 00658441    mov         edx,dword ptr [ebp-4]
 00658444    cmp         byte ptr [edx+eax-1],5C
>00658449    jne         0065847D
 0065844B    mov         eax,dword ptr [ebp-0C]
 0065844E    mov         edx,dword ptr [ebp-4]
 00658451    cmp         byte ptr [edx+eax-2],5C
>00658456    je          00658465
 00658458    mov         eax,dword ptr [ebp-0C]
 0065845B    mov         edx,dword ptr [ebp-4]
 0065845E    cmp         byte ptr [edx+eax-2],3A
>00658463    jne         00658475
 00658465    mov         edx,dword ptr [ebp-0C]
 00658468    dec         edx
 00658469    mov         eax,dword ptr [ebp-4]
 0065846C    call        0065CF98
 00658471    cmp         al,2
>00658473    jne         0065847D
 00658475    dec         dword ptr [ebp-0C]
>00658478    jmp         0065847D
 0065847A    dec         dword ptr [ebp-0C]
 0065847D    mov         edx,dword ptr [ebp-0C]
 00658480    dec         edx
 00658481    mov         eax,dword ptr [ebp-4]
 00658484    call        0065CF98
 00658489    cmp         al,2
>0065848B    jne         00658493
 0065848D    cmp         dword ptr [ebp-0C],0
>00658491    jg          0065847A
 00658493    mov         eax,dword ptr [ebp-8]
 00658496    push        eax
 00658497    mov         ecx,dword ptr [ebp-0C]
 0065849A    mov         edx,1
 0065849F    mov         eax,dword ptr [ebp-4]
 006584A2    call        @LStrCopy
 006584A7    mov         esp,ebp
 006584A9    pop         ebp
 006584AA    ret
end;*}

//006584B8
{*procedure sub_006584B8(?:AnsiString; ?:?);
begin
 006584B8    push        ebp
 006584B9    mov         ebp,esp
 006584BB    add         esp,0FFFFFFF0
 006584BE    mov         dword ptr [ebp-8],edx
 006584C1    mov         dword ptr [ebp-4],eax
 006584C4    mov         eax,dword ptr [ebp-4]
 006584C7    call        @LStrLen
 006584CC    cmp         eax,2
>006584CF    jl          006584F5
 006584D1    mov         eax,dword ptr [ebp-4]
 006584D4    cmp         byte ptr [eax+1],3A
>006584D8    jne         006584F5
 006584DA    mov         eax,dword ptr [ebp-8]
 006584DD    push        eax
 006584DE    mov         ecx,2
 006584E3    mov         edx,1
 006584E8    mov         eax,dword ptr [ebp-4]
 006584EB    call        @LStrCopy
>006584F0    jmp         0065857B
 006584F5    mov         eax,dword ptr [ebp-4]
 006584F8    call        @LStrLen
 006584FD    cmp         eax,2
>00658500    jl          00658573
 00658502    mov         eax,dword ptr [ebp-4]
 00658505    cmp         byte ptr [eax],5C
>00658508    jne         00658573
 0065850A    mov         eax,dword ptr [ebp-4]
 0065850D    cmp         byte ptr [eax+1],5C
>00658511    jne         00658573
 00658513    xor         eax,eax
 00658515    mov         dword ptr [ebp-10],eax
 00658518    mov         dword ptr [ebp-0C],3
>0065851F    jmp         0065853A
 00658521    mov         eax,dword ptr [ebp-0C]
 00658524    mov         edx,dword ptr [ebp-4]
 00658527    cmp         byte ptr [edx+eax-1],5C
>0065852C    jne         00658531
 0065852E    inc         dword ptr [ebp-10]
 00658531    cmp         dword ptr [ebp-10],2
>00658535    jge         0065853A
 00658537    inc         dword ptr [ebp-0C]
 0065853A    mov         eax,dword ptr [ebp-4]
 0065853D    call        @LStrLen
 00658542    cmp         eax,dword ptr [ebp-0C]
>00658545    jle         0065854D
 00658547    cmp         dword ptr [ebp-10],2
>0065854B    jl          00658521
 0065854D    mov         eax,dword ptr [ebp-0C]
 00658550    mov         edx,dword ptr [ebp-4]
 00658553    cmp         byte ptr [edx+eax-1],5C
>00658558    jne         0065855D
 0065855A    dec         dword ptr [ebp-0C]
 0065855D    mov         eax,dword ptr [ebp-8]
 00658560    push        eax
 00658561    mov         ecx,dword ptr [ebp-0C]
 00658564    mov         edx,1
 00658569    mov         eax,dword ptr [ebp-4]
 0065856C    call        @LStrCopy
>00658571    jmp         0065857B
 00658573    mov         eax,dword ptr [ebp-8]
 00658576    call        @LStrClr
 0065857B    mov         esp,ebp
 0065857D    pop         ebp
 0065857E    ret
end;*}

//00658580
{*procedure sub_00658580(?:AnsiString; ?:?);
begin
 00658580    push        ebp
 00658581    mov         ebp,esp
 00658583    add         esp,0FFFFFFF4
 00658586    mov         dword ptr [ebp-8],edx
 00658589    mov         dword ptr [ebp-4],eax
 0065858C    mov         edx,dword ptr [ebp-4]
 0065858F    mov         eax,6585C0;'\:'
 00658594    call        006582CC
 00658599    mov         dword ptr [ebp-0C],eax
 0065859C    mov         eax,dword ptr [ebp-8]
 0065859F    push        eax
 006585A0    mov         edx,dword ptr [ebp-0C]
 006585A3    inc         edx
 006585A4    mov         ecx,7FFFFFFF
 006585A9    mov         eax,dword ptr [ebp-4]
 006585AC    call        @LStrCopy
 006585B1    mov         esp,ebp
 006585B3    pop         ebp
 006585B4    ret
end;*}

//006585C4
procedure sub_006585C4(?:TFileName; ?:AnsiString);
begin
{*
 006585C4    push        ebp
 006585C5    mov         ebp,esp
 006585C7    add         esp,0FFFFFFF4
 006585CA    mov         dword ptr [ebp-8],edx
 006585CD    mov         dword ptr [ebp-4],eax
 006585D0    mov         edx,dword ptr [ebp-4]
 006585D3    mov         eax,658620;'.\:'
 006585D8    call        006582CC
 006585DD    mov         dword ptr [ebp-0C],eax
 006585E0    cmp         dword ptr [ebp-0C],0
>006585E4    jle         00658609
 006585E6    mov         eax,dword ptr [ebp-0C]
 006585E9    mov         edx,dword ptr [ebp-4]
 006585EC    cmp         byte ptr [edx+eax-1],2E
>006585F1    jne         00658609
 006585F3    mov         eax,dword ptr [ebp-8]
 006585F6    push        eax
 006585F7    mov         ecx,7FFFFFFF
 006585FC    mov         edx,dword ptr [ebp-0C]
 006585FF    mov         eax,dword ptr [ebp-4]
 00658602    call        @LStrCopy
>00658607    jmp         00658611
 00658609    mov         eax,dword ptr [ebp-8]
 0065860C    call        @LStrClr
 00658611    mov         esp,ebp
 00658613    pop         ebp
 00658614    ret
*}
end;

//00658624
{*procedure sub_00658624(?:?; ?:?);
begin
 00658624    push        ebp
 00658625    mov         ebp,esp
 00658627    add         esp,0FFFFFEF0
 0065862D    mov         dword ptr [ebp-8],edx
 00658630    mov         dword ptr [ebp-4],eax
 00658633    lea         eax,[ebp-0C]
 00658636    push        eax
 00658637    lea         eax,[ebp-110]
 0065863D    push        eax
 0065863E    push        104
 00658643    mov         eax,dword ptr [ebp-4]
 00658646    call        @LStrToPChar
 0065864B    push        eax
 0065864C    call        KERNEL32.GetFullPathNameA
 00658651    mov         ecx,eax
 00658653    lea         edx,[ebp-110]
 00658659    mov         eax,dword ptr [ebp-8]
 0065865C    call        @LStrFromPCharLen
 00658661    mov         esp,ebp
 00658663    pop         ebp
 00658664    ret
end;*}

//006586E8
{*procedure sub_006586E8(?:?);
begin
 006586E8    push        ebp
 006586E9    mov         ebp,esp
 006586EB    push        ecx
 006586EC    mov         dword ptr [ebp-4],eax
 006586EF    mov         edx,dword ptr [ebp-4]
 006586F2    xor         eax,eax
 006586F4    call        @LGetDir
 006586F9    pop         ecx
 006586FA    pop         ebp
 006586FB    ret
end;*}

//006586FC
{*function sub_006586FC(?:AnsiString):?;
begin
 006586FC    push        ebp
 006586FD    mov         ebp,esp
 006586FF    add         esp,0FFFFFFF8
 00658702    mov         dword ptr [ebp-4],eax
 00658705    push        0
 00658707    mov         eax,dword ptr [ebp-4]
 0065870A    call        @LStrToPChar
 0065870F    push        eax
 00658710    call        KERNEL32.CreateDirectoryA
 00658715    cmp         eax,1
 00658718    sbb         eax,eax
 0065871A    inc         eax
 0065871B    mov         byte ptr [ebp-5],al
 0065871E    mov         al,byte ptr [ebp-5]
 00658721    pop         ecx
 00658722    pop         ecx
 00658723    pop         ebp
 00658724    ret
end;*}

//00658728
function StrLen(const Str:PChar):Cardinal;
begin
{*
 00658728    mov         edx,edi
 0065872A    mov         edi,eax
 0065872C    mov         ecx,0FFFFFFFF
 00658731    xor         al,al
 00658733    repne scas  byte ptr [edi]
 00658735    mov         eax,0FFFFFFFE
 0065873A    sub         eax,ecx
 0065873C    mov         edi,edx
 0065873E    ret
*}
end;

//00658740
function StrEnd(const Str:PChar):PChar;
begin
{*
 00658740    mov         edx,edi
 00658742    mov         edi,eax
 00658744    mov         ecx,0FFFFFFFF
 00658749    xor         al,al
 0065874B    repne scas  byte ptr [edi]
 0065874D    lea         eax,[edi-1]
 00658750    mov         edi,edx
 00658752    ret
*}
end;

//00658754
{*function sub_00658754(?:?; ?:PChar; ?:?):?;
begin
 00658754    push        ebp
 00658755    mov         ebp,esp
 00658757    add         esp,0FFFFFFF0
 0065875A    mov         dword ptr [ebp-0C],ecx
 0065875D    mov         dword ptr [ebp-8],edx
 00658760    mov         dword ptr [ebp-4],eax
 00658763    mov         eax,dword ptr [ebp-4]
 00658766    mov         dword ptr [ebp-10],eax
 00658769    mov         edx,dword ptr [ebp-4]
 0065876C    mov         eax,dword ptr [ebp-8]
 0065876F    mov         ecx,dword ptr [ebp-0C]
 00658772    call        Move
 00658777    mov         eax,dword ptr [ebp-10]
 0065877A    mov         esp,ebp
 0065877C    pop         ebp
 0065877D    ret
end;*}

//00658780
function StrCopy(Dest:PChar; const Source:PChar):PChar;
begin
{*
 00658780    push        edi
 00658781    push        esi
 00658782    mov         esi,eax
 00658784    mov         edi,edx
 00658786    mov         ecx,0FFFFFFFF
 0065878B    xor         al,al
 0065878D    repne scas  byte ptr [edi]
 0065878F    not         ecx
 00658791    mov         edi,esi
 00658793    mov         esi,edx
 00658795    mov         edx,ecx
 00658797    mov         eax,edi
 00658799    shr         ecx,2
 0065879C    rep movs    dword ptr [edi],dword ptr [esi]
 0065879E    mov         ecx,edx
 006587A0    and         ecx,3
 006587A3    rep movs    byte ptr [edi],byte ptr [esi]
 006587A5    pop         esi
 006587A6    pop         edi
 006587A7    ret
*}
end;

//006587A8
function StrECopy(Dest:PChar; const Source:PChar):PChar;
begin
{*
 006587A8    push        edi
 006587A9    push        esi
 006587AA    mov         esi,eax
 006587AC    mov         edi,edx
 006587AE    mov         ecx,0FFFFFFFF
 006587B3    xor         al,al
 006587B5    repne scas  byte ptr [edi]
 006587B7    not         ecx
 006587B9    mov         edi,esi
 006587BB    mov         esi,edx
 006587BD    mov         edx,ecx
 006587BF    shr         ecx,2
 006587C2    rep movs    dword ptr [edi],dword ptr [esi]
 006587C4    mov         ecx,edx
 006587C6    and         ecx,3
 006587C9    rep movs    byte ptr [edi],byte ptr [esi]
 006587CB    lea         eax,[edi-1]
 006587CE    pop         esi
 006587CF    pop         edi
 006587D0    ret
*}
end;

//006587D4
function StrLCopy(Dest:PChar; const Source:PChar; MaxLen:Cardinal):PChar;
begin
{*
 006587D4    push        edi
 006587D5    push        esi
 006587D6    push        ebx
 006587D7    mov         esi,eax
 006587D9    mov         edi,edx
 006587DB    mov         ebx,ecx
 006587DD    xor         al,al
 006587DF    test        ecx,ecx
>006587E1    je          006587E8
 006587E3    repne scas  byte ptr [edi]
>006587E5    jne         006587E8
 006587E7    inc         ecx
 006587E8    sub         ebx,ecx
 006587EA    mov         edi,esi
 006587EC    mov         esi,edx
 006587EE    mov         edx,edi
 006587F0    mov         ecx,ebx
 006587F2    shr         ecx,2
 006587F5    rep movs    dword ptr [edi],dword ptr [esi]
 006587F7    mov         ecx,ebx
 006587F9    and         ecx,3
 006587FC    rep movs    byte ptr [edi],byte ptr [esi]
 006587FE    stos        byte ptr [edi]
 006587FF    mov         eax,edx
 00658801    pop         ebx
 00658802    pop         esi
 00658803    pop         edi
 00658804    ret
*}
end;

//00658808
function StrPCopy(Dest:PChar; const Source:AnsiString):PChar;
begin
{*
 00658808    push        ebp
 00658809    mov         ebp,esp
 0065880B    add         esp,0FFFFFFF4
 0065880E    mov         dword ptr [ebp-8],edx
 00658811    mov         dword ptr [ebp-4],eax
 00658814    mov         eax,dword ptr [ebp-8]
 00658817    call        @LStrLen
 0065881C    push        eax
 0065881D    mov         eax,dword ptr [ebp-8]
 00658820    call        @LStrToPChar
 00658825    mov         edx,eax
 00658827    mov         eax,dword ptr [ebp-4]
 0065882A    pop         ecx
 0065882B    call        StrLCopy
 00658830    mov         dword ptr [ebp-0C],eax
 00658833    mov         eax,dword ptr [ebp-0C]
 00658836    mov         esp,ebp
 00658838    pop         ebp
 00658839    ret
*}
end;

//0065883C
{*function sub_0065883C(?:?; ?:?; ?:Integer):?;
begin
 0065883C    push        ebp
 0065883D    mov         ebp,esp
 0065883F    add         esp,0FFFFFFF0
 00658842    mov         dword ptr [ebp-0C],ecx
 00658845    mov         dword ptr [ebp-8],edx
 00658848    mov         dword ptr [ebp-4],eax
 0065884B    mov         eax,dword ptr [ebp-8]
 0065884E    call        @LStrToPChar
 00658853    mov         edx,eax
 00658855    mov         ecx,dword ptr [ebp-0C]
 00658858    mov         eax,dword ptr [ebp-4]
 0065885B    call        StrLCopy
 00658860    mov         dword ptr [ebp-10],eax
 00658863    mov         eax,dword ptr [ebp-10]
 00658866    mov         esp,ebp
 00658868    pop         ebp
 00658869    ret
end;*}

//0065886C
function StrComp(const Str1:PChar; const Str2:PChar):Integer;
begin
{*
 0065886C    push        edi
 0065886D    push        esi
 0065886E    mov         edi,edx
 00658870    mov         esi,eax
 00658872    mov         ecx,0FFFFFFFF
 00658877    xor         eax,eax
 00658879    repne scas  byte ptr [edi]
 0065887B    not         ecx
 0065887D    mov         edi,edx
 0065887F    xor         edx,edx
 00658881    repe cmps   byte ptr [esi],byte ptr [edi]
 00658883    mov         al,byte ptr [esi-1]
 00658886    mov         dl,byte ptr [edi-1]
 00658889    sub         eax,edx
 0065888B    pop         esi
 0065888C    pop         edi
 0065888D    ret
*}
end;

//00658890
function StrIComp(const Str1:PChar; const Str2:PChar):Integer;
begin
{*
 00658890    push        edi
 00658891    push        esi
 00658892    mov         edi,edx
 00658894    mov         esi,eax
 00658896    mov         ecx,0FFFFFFFF
 0065889B    xor         eax,eax
 0065889D    repne scas  byte ptr [edi]
 0065889F    not         ecx
 006588A1    mov         edi,edx
 006588A3    xor         edx,edx
 006588A5    repe cmps   byte ptr [esi],byte ptr [edi]
>006588A7    je          006588CA
 006588A9    mov         al,byte ptr [esi-1]
 006588AC    cmp         al,61
>006588AE    jb          006588B6
 006588B0    cmp         al,7A
>006588B2    ja          006588B6
 006588B4    sub         al,20
 006588B6    mov         dl,byte ptr [edi-1]
 006588B9    cmp         dl,61
>006588BC    jb          006588C6
 006588BE    cmp         dl,7A
>006588C1    ja          006588C6
 006588C3    sub         dl,20
 006588C6    sub         eax,edx
>006588C8    je          006588A5
 006588CA    pop         esi
 006588CB    pop         edi
 006588CC    ret
*}
end;

//006588D0
function StrLIComp(const Str1:PChar; const Str2:PChar; MaxLen:Cardinal):Integer;
begin
{*
 006588D0    push        edi
 006588D1    push        esi
 006588D2    push        ebx
 006588D3    mov         edi,edx
 006588D5    mov         esi,eax
 006588D7    mov         ebx,ecx
 006588D9    xor         eax,eax
 006588DB    or          ecx,ecx
>006588DD    je          0065890E
 006588DF    repne scas  byte ptr [edi]
 006588E1    sub         ebx,ecx
 006588E3    mov         ecx,ebx
 006588E5    mov         edi,edx
 006588E7    xor         edx,edx
 006588E9    repe cmps   byte ptr [esi],byte ptr [edi]
>006588EB    je          0065890E
 006588ED    mov         al,byte ptr [esi-1]
 006588F0    cmp         al,61
>006588F2    jb          006588FA
 006588F4    cmp         al,7A
>006588F6    ja          006588FA
 006588F8    sub         al,20
 006588FA    mov         dl,byte ptr [edi-1]
 006588FD    cmp         dl,61
>00658900    jb          0065890A
 00658902    cmp         dl,7A
>00658905    ja          0065890A
 00658907    sub         dl,20
 0065890A    sub         eax,edx
>0065890C    je          006588E9
 0065890E    pop         ebx
 0065890F    pop         esi
 00658910    pop         edi
 00658911    ret
*}
end;

//00658914
function StrScan(const Str:PChar; Chr:Char):PChar;
begin
{*
 00658914    push        edi
 00658915    push        eax
 00658916    mov         edi,eax
 00658918    mov         ecx,0FFFFFFFF
 0065891D    xor         al,al
 0065891F    repne scas  byte ptr [edi]
 00658921    not         ecx
 00658923    pop         edi
 00658924    mov         al,dl
 00658926    repne scas  byte ptr [edi]
 00658928    mov         eax,0
>0065892D    jne         00658932
 0065892F    mov         eax,edi
 00658931    dec         eax
 00658932    pop         edi
 00658933    ret
*}
end;

//00658934
function StrPos(const Str1:PChar; const Str2:PChar):PChar;
begin
{*
 00658934    push        edi
 00658935    push        esi
 00658936    push        ebx
 00658937    or          eax,eax
>00658939    je          0065897F
 0065893B    or          edx,edx
>0065893D    je          0065897F
 0065893F    mov         ebx,eax
 00658941    mov         edi,edx
 00658943    xor         al,al
 00658945    mov         ecx,0FFFFFFFF
 0065894A    repne scas  byte ptr [edi]
 0065894C    not         ecx
 0065894E    dec         ecx
>0065894F    je          0065897F
 00658951    mov         esi,ecx
 00658953    mov         edi,ebx
 00658955    mov         ecx,0FFFFFFFF
 0065895A    repne scas  byte ptr [edi]
 0065895C    not         ecx
 0065895E    sub         ecx,esi
>00658960    jbe         0065897F
 00658962    mov         edi,ebx
 00658964    lea         ebx,[esi-1]
 00658967    mov         esi,edx
 00658969    lods        byte ptr [esi]
 0065896A    repne scas  byte ptr [edi]
>0065896C    jne         0065897F
 0065896E    mov         eax,ecx
 00658970    push        edi
 00658971    mov         ecx,ebx
 00658973    repe cmps   byte ptr [esi],byte ptr [edi]
 00658975    pop         edi
 00658976    mov         ecx,eax
>00658978    jne         00658967
 0065897A    lea         eax,[edi-1]
>0065897D    jmp         00658981
 0065897F    xor         eax,eax
 00658981    pop         ebx
 00658982    pop         esi
 00658983    pop         edi
 00658984    ret
*}
end;

//00658988
function StrPas(const Str:PChar):AnsiString;
begin
{*
 00658988    push        ebp
 00658989    mov         ebp,esp
 0065898B    add         esp,0FFFFFFF8
 0065898E    mov         dword ptr [ebp-8],edx
 00658991    mov         dword ptr [ebp-4],eax
 00658994    mov         eax,dword ptr [ebp-8]
 00658997    mov         edx,dword ptr [ebp-4]
 0065899A    call        @LStrFromPChar
 0065899F    pop         ecx
 006589A0    pop         ecx
 006589A1    pop         ebp
 006589A2    ret
*}
end;

//006589A4
{*function sub_006589A4(?:?):?;
begin
 006589A4    push        ebp
 006589A5    mov         ebp,esp
 006589A7    add         esp,0FFFFFFF8
 006589AA    mov         dword ptr [ebp-4],eax
 006589AD    add         dword ptr [ebp-4],4
 006589B1    mov         eax,dword ptr [ebp-4]
 006589B4    call        @GetMem
 006589B9    mov         dword ptr [ebp-8],eax
 006589BC    mov         eax,dword ptr [ebp-8]
 006589BF    mov         edx,dword ptr [ebp-4]
 006589C2    mov         dword ptr [eax],edx
 006589C4    add         dword ptr [ebp-8],4
 006589C8    mov         eax,dword ptr [ebp-8]
 006589CB    pop         ecx
 006589CC    pop         ecx
 006589CD    pop         ebp
 006589CE    ret
end;*}

//006589D0
{*function sub_006589D0(?:?):?;
begin
 006589D0    push        ebp
 006589D1    mov         ebp,esp
 006589D3    add         esp,0FFFFFFF4
 006589D6    mov         dword ptr [ebp-4],eax
 006589D9    mov         eax,dword ptr [ebp-4]
 006589DC    mov         dword ptr [ebp-0C],eax
 006589DF    sub         dword ptr [ebp-0C],4
 006589E3    mov         eax,dword ptr [ebp-0C]
 006589E6    mov         eax,dword ptr [eax]
 006589E8    sub         eax,4
 006589EB    mov         dword ptr [ebp-8],eax
 006589EE    mov         eax,dword ptr [ebp-8]
 006589F1    mov         esp,ebp
 006589F3    pop         ebp
 006589F4    ret
end;*}

//006589F8
{*function sub_006589F8(?:PChar):?;
begin
 006589F8    push        ebp
 006589F9    mov         ebp,esp
 006589FB    add         esp,0FFFFFFF4
 006589FE    mov         dword ptr [ebp-4],eax
 00658A01    cmp         dword ptr [ebp-4],0
>00658A05    jne         00658A0E
 00658A07    xor         eax,eax
 00658A09    mov         dword ptr [ebp-8],eax
>00658A0C    jmp         00658A30
 00658A0E    mov         eax,dword ptr [ebp-4]
 00658A11    call        StrLen
 00658A16    inc         eax
 00658A17    mov         dword ptr [ebp-0C],eax
 00658A1A    mov         eax,dword ptr [ebp-0C]
 00658A1D    call        006589A4
 00658A22    mov         ecx,dword ptr [ebp-0C]
 00658A25    mov         edx,dword ptr [ebp-4]
 00658A28    call        00658754
 00658A2D    mov         dword ptr [ebp-8],eax
 00658A30    mov         eax,dword ptr [ebp-8]
 00658A33    mov         esp,ebp
 00658A35    pop         ebp
 00658A36    ret
end;*}

//00658A38
procedure sub_00658A38(?:PChar);
begin
{*
 00658A38    push        ebp
 00658A39    mov         ebp,esp
 00658A3B    push        ecx
 00658A3C    mov         dword ptr [ebp-4],eax
 00658A3F    cmp         dword ptr [ebp-4],0
>00658A43    je          00658A56
 00658A45    sub         dword ptr [ebp-4],4
 00658A49    mov         eax,dword ptr [ebp-4]
 00658A4C    mov         edx,dword ptr [eax]
 00658A4E    mov         eax,dword ptr [ebp-4]
 00658A51    call        @FreeMem
 00658A56    pop         ecx
 00658A57    pop         ebp
 00658A58    ret
*}
end;

//00658A5C
procedure FormatError(ErrorCode:Integer; Format:PChar; FmtLen:Cardinal);
begin
{*
 00658A5C    push        ebp
 00658A5D    mov         ebp,esp
 00658A5F    add         esp,0FFFFFFCC
 00658A62    mov         dword ptr [ebp-0C],ecx
 00658A65    mov         dword ptr [ebp-8],edx
 00658A68    mov         dword ptr [ebp-4],eax
 00658A6B    cmp         dword ptr [ebp-0C],1F
>00658A6F    jbe         00658A78
 00658A71    mov         dword ptr [ebp-0C],1F
 00658A78    mov         edx,dword ptr [ebp-0C]
 00658A7B    dec         edx
 00658A7C    mov         eax,dword ptr [ebp-8]
 00658A7F    call        0065CFCC
 00658A84    cmp         al,1
>00658A86    jne         00658A8B
 00658A88    dec         dword ptr [ebp-0C]
 00658A8B    lea         eax,[ebp-2C]
 00658A8E    mov         ecx,dword ptr [ebp-0C]
 00658A91    mov         edx,dword ptr [ebp-8]
 00658A94    call        00658754
 00658A99    mov         eax,dword ptr [ebp-0C]
 00658A9C    mov         byte ptr [ebp+eax-2C],0
 00658AA1    lea         eax,[ebp-2C]
 00658AA4    mov         dword ptr [ebp-34],eax
 00658AA7    mov         byte ptr [ebp-30],6
 00658AAB    lea         edx,[ebp-34]
 00658AAE    mov         eax,dword ptr [ebp-4]
 00658AB1    mov         eax,dword ptr [eax*4+6E4A44]
 00658AB8    xor         ecx,ecx
 00658ABA    call        ConvertErrorFmt
 00658ABF    mov         esp,ebp
 00658AC1    pop         ebp
 00658AC2    ret
*}
end;

//00658AC4
procedure FormatVarToStr(var S:AnsiString; const V:Variant);
begin
{*
 00658AC4    push        ebp
 00658AC5    mov         ebp,esp
 00658AC7    add         esp,0FFFFFFF8
 00658ACA    mov         dword ptr [ebp-8],edx
 00658ACD    mov         dword ptr [ebp-4],eax
 00658AD0    mov         eax,dword ptr [ebp-4]
 00658AD3    mov         edx,dword ptr [ebp-8]
 00658AD6    call        0066D554
 00658ADB    pop         ecx
 00658ADC    pop         ecx
 00658ADD    pop         ebp
 00658ADE    ret
*}
end;

//00658AE0
procedure FormatClearStr(var S:AnsiString);
begin
{*
 00658AE0    push        ebp
 00658AE1    mov         ebp,esp
 00658AE3    push        ecx
 00658AE4    mov         dword ptr [ebp-4],eax
 00658AE7    mov         eax,dword ptr [ebp-4]
 00658AEA    call        @LStrClr
 00658AEF    pop         ecx
 00658AF0    pop         ebp
 00658AF1    ret
*}
end;

//00658AF4
function FormatBuf(var Buffer:void ; BufLen:Cardinal; const Format:void ; FmtLen:Cardinal; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):Cardinal;
begin
{*
 00658AF4    push        ebp
 00658AF5    mov         ebp,esp
 00658AF7    add         esp,0FFFFFF8C
 00658AFA    push        ebx
 00658AFB    xor         ebx,ebx
 00658AFD    mov         dword ptr [ebp-14],ebx
 00658B00    push        ebx
 00658B01    push        esi
 00658B02    push        edi
 00658B03    mov         edi,eax
 00658B05    mov         esi,ecx
 00658B07    xor         eax,eax
 00658B09    mov         dword ptr [ebp-4],eax
 00658B0C    add         ecx,dword ptr [ebp+10]
 00658B0F    mov         dword ptr [ebp-8],edi
 00658B12    xor         eax,eax
 00658B14    mov         dword ptr [ebp-0C],eax
 00658B17    mov         dword ptr [ebp-10],eax
 00658B1A    mov         dword ptr [ebp-14],eax
 00658B1D    or          edx,edx
>00658B1F    je          00658B2E
 00658B21    cmp         esi,ecx
>00658B23    je          00658B2E
 00658B25    lods        byte ptr [esi]
 00658B26    cmp         al,25
>00658B28    je          00658B38
 00658B2A    stos        byte ptr [edi]
 00658B2B    dec         edx
>00658B2C    jne         00658B21
 00658B2E    mov         eax,edi
 00658B30    sub         eax,dword ptr [ebp-8]
>00658B33    jmp         00658EF8
 00658B38    cmp         esi,ecx
>00658B3A    je          00658B2E
 00658B3C    lods        byte ptr [esi]
 00658B3D    cmp         al,25
>00658B3F    je          00658B2A
 00658B41    lea         ebx,[esi-2]
 00658B44    mov         dword ptr [ebp-18],ebx
 00658B47    mov         byte ptr [ebp-19],al
 00658B4A    cmp         al,2D
>00658B4C    jne         00658B53
 00658B4E    cmp         esi,ecx
>00658B50    je          00658B2E
 00658B52    lods        byte ptr [esi]
 00658B53    call        00658BD6
 00658B58    cmp         al,3A
>00658B5A    jne         00658B66
 00658B5C    mov         dword ptr [ebp-0C],ebx
 00658B5F    cmp         esi,ecx
>00658B61    je          00658B2E
 00658B63    lods        byte ptr [esi]
>00658B64    jmp         00658B47
 00658B66    mov         dword ptr [ebp-20],ebx
 00658B69    mov         ebx,0FFFFFFFF
 00658B6E    cmp         al,2E
>00658B70    jne         00658B7C
 00658B72    cmp         esi,ecx
>00658B74    je          00658B2E
 00658B76    lods        byte ptr [esi]
 00658B77    call        00658BD6
 00658B7C    mov         dword ptr [ebp-24],ebx
 00658B7F    mov         dword ptr [ebp-28],esi
 00658B82    push        ecx
 00658B83    push        edx
 00658B84    call        00658C1E
 00658B89    pop         edx
 00658B8A    mov         ebx,dword ptr [ebp-20]
 00658B8D    sub         ebx,ecx
>00658B8F    jae         00658B93
 00658B91    xor         ebx,ebx
 00658B93    cmp         byte ptr [ebp-19],2D
>00658B97    jne         00658BA3
 00658B99    sub         edx,ecx
>00658B9B    jae         00658BA1
 00658B9D    add         ecx,edx
 00658B9F    xor         edx,edx
 00658BA1    rep movs    byte ptr [edi],byte ptr [esi]
 00658BA3    xchg        ebx,ecx
 00658BA5    sub         edx,ecx
>00658BA7    jae         00658BAD
 00658BA9    add         ecx,edx
 00658BAB    xor         edx,edx
 00658BAD    mov         al,20
 00658BAF    rep stos    byte ptr [edi]
 00658BB1    xchg        ebx,ecx
 00658BB3    sub         edx,ecx
>00658BB5    jae         00658BBB
 00658BB7    add         ecx,edx
 00658BB9    xor         edx,edx
 00658BBB    rep movs    byte ptr [edi],byte ptr [esi]
 00658BBD    cmp         dword ptr [ebp-10],0
>00658BC1    je          00658BCD
 00658BC3    push        edx
 00658BC4    lea         eax,[ebp-10]
 00658BC7    call        FormatClearStr
 00658BCC    pop         edx
 00658BCD    pop         ecx
 00658BCE    mov         esi,dword ptr [ebp-28]
>00658BD1    jmp         00658B1D
 00658BD6    xor         ebx,ebx
 00658BD8    cmp         al,2A
>00658BDA    je          00658BFE
 00658BDC    cmp         al,30
>00658BDE    jb          00658C1D
 00658BE0    cmp         al,39
>00658BE2    ja          00658C1D
 00658BE4    imul        ebx,ebx,0A
 00658BEA    sub         al,30
 00658BEC    movzx       eax,al
 00658BEF    add         ebx,eax
 00658BF1    cmp         esi,ecx
>00658BF3    je          00658BF8
 00658BF5    lods        byte ptr [esi]
>00658BF6    jmp         00658BDC
 00658BF8    pop         eax
>00658BF9    jmp         00658B2E
 00658BFE    mov         eax,dword ptr [ebp-0C]
 00658C01    cmp         eax,dword ptr [ebp+8]
>00658C04    ja          00658C18
 00658C06    inc         dword ptr [ebp-0C]
 00658C09    mov         ebx,dword ptr [ebp+0C]
 00658C0C    cmp         byte ptr [ebx+eax*8+4],0
 00658C11    mov         ebx,dword ptr [ebx+eax*8]
>00658C14    je          00658C18
 00658C16    xor         ebx,ebx
 00658C18    cmp         esi,ecx
>00658C1A    je          00658BF8
 00658C1C    lods        byte ptr [esi]
 00658C1D    ret
*}
end;

//00658F08
{*function sub_00658F08(?:?; ?:?; ?:?; ?:?):?;
begin
 00658F08    push        ebp
 00658F09    mov         ebp,esp
 00658F0B    add         esp,0FFFFFFF0
 00658F0E    mov         dword ptr [ebp-0C],ecx
 00658F11    mov         dword ptr [ebp-8],edx
 00658F14    mov         dword ptr [ebp-4],eax
 00658F17    cmp         dword ptr [ebp-4],0
>00658F1B    je          00658F53
 00658F1D    cmp         dword ptr [ebp-8],0
>00658F21    je          00658F53
 00658F23    mov         eax,dword ptr [ebp-8]
 00658F26    call        StrLen
 00658F2B    push        eax
 00658F2C    mov         eax,dword ptr [ebp-0C]
 00658F2F    push        eax
 00658F30    mov         eax,dword ptr [ebp+8]
 00658F33    push        eax
 00658F34    mov         ecx,dword ptr [ebp-8]
 00658F37    mov         eax,dword ptr [ebp-4]
 00658F3A    mov         edx,7FFFFFFF
 00658F3F    call        FormatBuf
 00658F44    mov         edx,dword ptr [ebp-4]
 00658F47    mov         byte ptr [edx+eax],0
 00658F4B    mov         eax,dword ptr [ebp-4]
 00658F4E    mov         dword ptr [ebp-10],eax
>00658F51    jmp         00658F58
 00658F53    xor         eax,eax
 00658F55    mov         dword ptr [ebp-10],eax
 00658F58    mov         eax,dword ptr [ebp-10]
 00658F5B    mov         esp,ebp
 00658F5D    pop         ebp
 00658F5E    ret         4
end;*}

//00658F64
{*function sub_00658F64(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00658F64    push        ebp
 00658F65    mov         ebp,esp
 00658F67    add         esp,0FFFFFFF0
 00658F6A    mov         dword ptr [ebp-0C],ecx
 00658F6D    mov         dword ptr [ebp-8],edx
 00658F70    mov         dword ptr [ebp-4],eax
 00658F73    cmp         dword ptr [ebp-4],0
>00658F77    je          00658FAD
 00658F79    cmp         dword ptr [ebp-0C],0
>00658F7D    je          00658FAD
 00658F7F    mov         eax,dword ptr [ebp-0C]
 00658F82    call        StrLen
 00658F87    push        eax
 00658F88    mov         eax,dword ptr [ebp+0C]
 00658F8B    push        eax
 00658F8C    mov         eax,dword ptr [ebp+8]
 00658F8F    push        eax
 00658F90    mov         ecx,dword ptr [ebp-0C]
 00658F93    mov         eax,dword ptr [ebp-4]
 00658F96    mov         edx,dword ptr [ebp-8]
 00658F99    call        FormatBuf
 00658F9E    mov         edx,dword ptr [ebp-4]
 00658FA1    mov         byte ptr [edx+eax],0
 00658FA5    mov         eax,dword ptr [ebp-4]
 00658FA8    mov         dword ptr [ebp-10],eax
>00658FAB    jmp         00658FB2
 00658FAD    xor         eax,eax
 00658FAF    mov         dword ptr [ebp-10],eax
 00658FB2    mov         eax,dword ptr [ebp-10]
 00658FB5    mov         esp,ebp
 00658FB7    pop         ebp
 00658FB8    ret         8
end;*}

//00658FBC
{*procedure sub_00658FBC(?:AnsiString; ?:TFileName; ?:?; ?:?);
begin
 00658FBC    push        ebp
 00658FBD    mov         ebp,esp
 00658FBF    add         esp,0FFFFFFF4
 00658FC2    mov         dword ptr [ebp-0C],ecx
 00658FC5    mov         dword ptr [ebp-8],edx
 00658FC8    mov         dword ptr [ebp-4],eax
 00658FCB    mov         eax,dword ptr [ebp-0C]
 00658FCE    push        eax
 00658FCF    mov         ecx,dword ptr [ebp-8]
 00658FD2    mov         eax,dword ptr [ebp+8]
 00658FD5    mov         edx,dword ptr [ebp-4]
 00658FD8    call        FmtStr
 00658FDD    mov         esp,ebp
 00658FDF    pop         ebp
 00658FE0    ret         4
end;*}

//00658FE4
procedure FmtStr(var Result:AnsiString; const Format:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 00658FE4    push        ebp
 00658FE5    mov         ebp,esp
 00658FE7    add         esp,0FFFFF004
 00658FED    push        eax
 00658FEE    add         esp,0FFFFFFEC
 00658FF1    mov         dword ptr [ebp-0C],ecx
 00658FF4    mov         dword ptr [ebp-8],edx
 00658FF7    mov         dword ptr [ebp-4],eax
 00658FFA    mov         dword ptr [ebp-14],1000
 00659001    mov         eax,dword ptr [ebp-8]
 00659004    call        @LStrLen
 00659009    cmp         eax,0C00
>0065900E    jge         00659039
 00659010    mov         eax,dword ptr [ebp-8]
 00659013    call        @LStrLen
 00659018    push        eax
 00659019    mov         eax,dword ptr [ebp-0C]
 0065901C    push        eax
 0065901D    mov         eax,dword ptr [ebp+8]
 00659020    push        eax
 00659021    mov         ecx,dword ptr [ebp-8]
 00659024    lea         eax,[ebp-1014]
 0065902A    mov         edx,0FFF
 0065902F    call        FormatBuf
 00659034    mov         dword ptr [ebp-10],eax
>00659037    jmp         0065904A
 00659039    mov         eax,dword ptr [ebp-8]
 0065903C    call        @LStrLen
 00659041    mov         dword ptr [ebp-14],eax
 00659044    mov         eax,dword ptr [ebp-14]
 00659047    mov         dword ptr [ebp-10],eax
 0065904A    mov         eax,dword ptr [ebp-14]
 0065904D    dec         eax
 0065904E    cmp         eax,dword ptr [ebp-10]
>00659051    jg          006590A9
>00659053    jmp         00659093
 00659055    mov         eax,dword ptr [ebp-14]
 00659058    add         dword ptr [ebp-14],eax
 0065905B    mov         eax,dword ptr [ebp-4]
 0065905E    call        @LStrClr
 00659063    mov         eax,dword ptr [ebp-4]
 00659066    mov         edx,dword ptr [ebp-14]
 00659069    call        @LStrSetLength
 0065906E    mov         eax,dword ptr [ebp-8]
 00659071    call        @LStrLen
 00659076    push        eax
 00659077    mov         eax,dword ptr [ebp-0C]
 0065907A    push        eax
 0065907B    mov         eax,dword ptr [ebp+8]
 0065907E    push        eax
 0065907F    mov         ecx,dword ptr [ebp-8]
 00659082    mov         edx,dword ptr [ebp-14]
 00659085    dec         edx
 00659086    mov         eax,dword ptr [ebp-4]
 00659089    mov         eax,dword ptr [eax]
 0065908B    call        FormatBuf
 00659090    mov         dword ptr [ebp-10],eax
 00659093    mov         eax,dword ptr [ebp-14]
 00659096    dec         eax
 00659097    cmp         eax,dword ptr [ebp-10]
>0065909A    jle         00659055
 0065909C    mov         eax,dword ptr [ebp-4]
 0065909F    mov         edx,dword ptr [ebp-10]
 006590A2    call        @LStrSetLength
>006590A7    jmp         006590BA
 006590A9    lea         edx,[ebp-1014]
 006590AF    mov         eax,dword ptr [ebp-4]
 006590B2    mov         ecx,dword ptr [ebp-10]
 006590B5    call        @LStrFromPCharLen
 006590BA    mov         esp,ebp
 006590BC    pop         ebp
 006590BD    ret         4
*}
end;

//006590C0
procedure PutExponent;
begin
{*
 006590C0    push        esi
 006590C1    xor         esi,esi
 006590C3    stos        byte ptr [edi]
 006590C4    or          bl,bl
>006590C6    jne         006590CC
 006590C8    xor         edx,edx
>006590CA    jmp         006590D6
 006590CC    or          edx,edx
>006590CE    jge         006590D6
 006590D0    mov         al,2D
 006590D2    neg         edx
>006590D4    jmp         006590DC
 006590D6    or          ah,ah
>006590D8    je          006590DD
 006590DA    mov         al,ah
 006590DC    stos        byte ptr [edi]
 006590DD    xchg        eax,edx
 006590DE    push        eax
 006590DF    mov         ebx,esp
 006590E1    xor         edx,edx
 006590E3    div         eax,dword ptr [esi+6E4A58]
 006590E9    add         dl,30
 006590EC    mov         byte ptr [ebx],dl
 006590EE    inc         ebx
 006590EF    dec         ecx
 006590F0    or          eax,eax
>006590F2    jne         006590E1
 006590F4    or          ecx,ecx
>006590F6    jg          006590E1
 006590F8    dec         ebx
 006590F9    mov         al,byte ptr [ebx]
 006590FB    stos        byte ptr [edi]
 006590FC    cmp         ebx,esp
>006590FE    jne         006590F8
 00659100    pop         eax
 00659101    pop         esi
 00659102    ret
*}
end;

//00659104
function FloatToText(BufferArg:PChar; const Value:void ; ValueType:TFloatValue; Format:TFloatFormat; Precision:Integer; Digits:Integer):Integer;
begin
{*
 00659104    push        ebp
 00659105    mov         ebp,esp
 00659107    add         esp,0FFFFFFD4
 0065910A    push        edi
 0065910B    push        esi
 0065910C    push        ebx
 0065910D    mov         dword ptr [ebp-4],eax
 00659110    mov         al,[006ED017];DecimalSeparator:Char
 00659115    mov         byte ptr [ebp-5],al
 00659118    mov         al,[006ED016];ThousandSeparator:Char
 0065911D    mov         byte ptr [ebp-6],al
 00659120    mov         eax,[006ED010];CurrencyString:AnsiString
 00659125    mov         dword ptr [ebp-0C],eax
 00659128    mov         al,[006ED014];CurrencyFormat:Byte
 0065912D    mov         byte ptr [ebp-0D],al
 00659130    mov         al,[006ED015];NegCurrFormat:Byte
 00659135    mov         byte ptr [ebp-0E],al
 00659138    mov         dword ptr [ebp-14],0
 0065913F    mov         eax,13
 00659144    cmp         cl,0
>00659147    jne         00659160
 00659149    mov         eax,dword ptr [ebp+0C]
 0065914C    cmp         eax,2
>0065914F    jge         00659156
 00659151    mov         eax,2
 00659156    cmp         eax,12
>00659159    jle         00659160
 0065915B    mov         eax,12
 00659160    mov         dword ptr [ebp+0C],eax
 00659163    push        eax
 00659164    mov         eax,270F
 00659169    cmp         byte ptr [ebp+10],2
>0065916D    jb          00659172
 0065916F    mov         eax,dword ptr [ebp+8]
 00659172    push        eax
 00659173    lea         eax,[ebp-2C]
 00659176    call        FloatToDecimal
 0065917B    mov         edi,dword ptr [ebp-4]
 0065917E    movzx       eax,word ptr [ebp-2C]
 00659182    sub         eax,7FFF
 00659187    cmp         eax,2
>0065918A    jae         006591A6
 0065918C    mov         ecx,eax
 0065918E    call        00659203
 00659193    lea         esi,[ecx+ecx*2+6591F4]
 0065919A    add         esi,dword ptr [ebp-14]
 0065919D    mov         ecx,3
 006591A2    rep movs    byte ptr [edi],byte ptr [esi]
>006591A4    jmp         006591D3
 006591A6    lea         esi,[ebp-29]
 006591A9    movzx       ebx,byte ptr [ebp+10]
 006591AD    cmp         bl,1
>006591B0    je          006591C2
 006591B2    cmp         bl,4
>006591B5    ja          006591C0
 006591B7    movsx       eax,word ptr [ebp-2C]
 006591BB    cmp         eax,dword ptr [ebp+0C]
>006591BE    jle         006591C2
 006591C0    mov         bl,0
 006591C2    lea         ebx,[ebx*4+6591E0]
 006591C9    add         ebx,dword ptr [ebp-14]
 006591CC    mov         ebx,dword ptr [ebx]
 006591CE    add         ebx,dword ptr [ebp-14]
 006591D1    call        ebx
 006591D3    mov         eax,edi
 006591D5    sub         eax,dword ptr [ebp-4]
 006591D8    pop         ebx
 006591D9    pop         esi
 006591DA    pop         edi
>006591DB    jmp         006593D3
 006591E0    or          eax,6B006592
 006591E5    xchg        eax,edx
 006591E6    add         byte ptr gs:[edx-5DFF9A6E],ah
 006591ED    xchg        eax,edx
 006591EE    add         byte ptr gs:[ebx+edx*4],cl
 006591F2    add         byte ptr gs:[ecx+4E],cl
 006591F6    inc         esi
 006591F7    dec         esi
 006591F8    inc         ecx
 006591F9    dec         esi
 006591FA    lods        byte ptr [esi]
 006591FB    or          al,al
>006591FD    jne         00659202
 006591FF    mov         al,30
 00659201    dec         esi
 00659202    ret
*}
end;

//006593DC
function FloatToTextFmt(Buf:PChar; const Value:void ; ValueType:TFloatValue; Format:PChar):Integer;
begin
{*
 006593DC    push        ebp
 006593DD    mov         ebp,esp
 006593DF    add         esp,0FFFFFFB8
 006593E2    push        edi
 006593E3    push        esi
 006593E4    push        ebx
 006593E5    mov         dword ptr [ebp-4],eax
 006593E8    mov         edi,edx
 006593EA    mov         ebx,ecx
 006593EC    mov         dword ptr [ebp-8],0
 006593F3    mov         al,[006ED017];DecimalSeparator:Char
 006593F8    mov         byte ptr [ebp-9],al
 006593FB    mov         al,[006ED016];ThousandSeparator:Char
 00659400    mov         byte ptr [ebp-0A],al
 00659403    mov         ecx,2
 00659408    cmp         bl,0
>0065940B    je          0065941C
 0065940D    mov         eax,dword ptr [edi]
 0065940F    or          eax,dword ptr [edi+4]
>00659412    je          0065942E
 00659414    mov         ecx,dword ptr [edi+4]
 00659417    shr         ecx,1F
>0065941A    jmp         0065942E
 0065941C    movzx       eax,word ptr [edi+8]
 00659420    or          eax,dword ptr [edi]
 00659422    or          eax,dword ptr [edi+4]
>00659425    je          0065942E
 00659427    movzx       ecx,word ptr [edi+8]
 0065942B    shr         ecx,0F
 0065942E    call        006594BE
>00659433    je          00659481
 00659435    call        006594F9
 0065943A    mov         eax,dword ptr [ebp-10]
 0065943D    mov         edx,270F
 00659442    cmp         byte ptr [ebp-11],0
>00659446    jne         00659452
 00659448    sub         eax,dword ptr [ebp-18]
 0065944B    mov         edx,eax
 0065944D    mov         eax,12
 00659452    push        eax
 00659453    push        edx
 00659454    lea         eax,[ebp-30]
 00659457    mov         edx,edi
 00659459    mov         ecx,ebx
 0065945B    call        FloatToDecimal
 00659460    mov         ax,word ptr [ebp-30]
 00659464    cmp         ax,8000
>00659468    je          00659481
 0065946A    cmp         ax,7FFF
>0065946E    je          00659481
 00659470    cmp         bl,0
>00659473    jne         00659498
 00659475    cmp         ax,12
>00659479    jle         00659498
 0065947B    cmp         byte ptr [ebp-11],0
>0065947F    jne         00659498
 00659481    push        0
 00659483    push        0F
 00659485    push        0
 00659487    mov         eax,dword ptr [ebp-4]
 0065948A    mov         edx,edi
 0065948C    mov         ecx,ebx
 0065948E    call        FloatToText
>00659493    jmp         006596C5
 00659498    cmp         byte ptr [ebp-2D],0
>0065949C    jne         006594B4
 0065949E    mov         ecx,2
 006594A3    call        006594BE
>006594A8    je          00659481
 006594AA    cmp         esi,dword ptr [ebp-34]
>006594AD    je          006594B4
 006594AF    call        006594F9
 006594B4    call        006595A4
>006594B9    jmp         006596C5
 006594BE    mov         esi,dword ptr [ebp+8]
 006594C1    jecxz       006594E0
 006594C3    lods        byte ptr [esi]
 006594C4    cmp         al,27
>006594C6    je          006594EC
 006594C8    cmp         al,22
>006594CA    je          006594EC
 006594CC    or          al,al
>006594CE    je          006594E0
 006594D0    cmp         al,3B
>006594D2    jne         006594C3
 006594D4    loop        006594C3
 006594D6    mov         al,byte ptr [esi]
 006594D8    or          al,al
>006594DA    je          006594E0
 006594DC    cmp         al,3B
>006594DE    jne         006594EB
 006594E0    mov         esi,dword ptr [ebp+8]
 006594E3    mov         al,byte ptr [esi]
 006594E5    or          al,al
>006594E7    je          006594EB
 006594E9    cmp         al,3B
 006594EB    ret
 006594EC    mov         ah,al
 006594EE    lods        byte ptr [esi]
 006594EF    cmp         al,ah
>006594F1    je          006594C3
 006594F3    or          al,al
>006594F5    jne         006594EE
>006594F7    jmp         006594E0
 006594F9    push        ebx
 006594FA    mov         dword ptr [ebp-34],esi
 006594FD    mov         ebx,7FFF
 00659502    xor         ecx,ecx
 00659504    xor         edx,edx
 00659506    mov         dword ptr [ebp-18],0FFFFFFFF
 0065950D    mov         byte ptr [ebp-35],dl
 00659510    mov         byte ptr [ebp-11],dl
 00659513    lods        byte ptr [esi]
 00659514    cmp         al,23
>00659516    je          0065953E
 00659518    cmp         al,30
>0065951A    je          00659541
 0065951C    cmp         al,2E
>0065951E    je          0065954C
 00659520    cmp         al,2C
>00659522    je          00659557
 00659524    cmp         al,27
>00659526    je          0065955D
 00659528    cmp         al,22
>0065952A    je          0065955D
 0065952C    cmp         al,45
>0065952E    je          0065956A
 00659530    cmp         al,65
>00659532    je          0065956A
 00659534    cmp         al,3B
>00659536    je          0065957E
 00659538    or          al,al
>0065953A    jne         00659513
>0065953C    jmp         0065957E
 0065953E    inc         edx
>0065953F    jmp         00659513
 00659541    cmp         edx,ebx
>00659543    jge         00659547
 00659545    mov         ebx,edx
 00659547    inc         edx
 00659548    mov         ecx,edx
>0065954A    jmp         00659513
 0065954C    cmp         dword ptr [ebp-18],0FFFFFFFF
>00659550    jne         00659513
 00659552    mov         dword ptr [ebp-18],edx
>00659555    jmp         00659513
 00659557    mov         byte ptr [ebp-35],1
>0065955B    jmp         00659513
 0065955D    mov         ah,al
 0065955F    lods        byte ptr [esi]
 00659560    cmp         al,ah
>00659562    je          00659513
 00659564    or          al,al
>00659566    jne         0065955F
>00659568    jmp         0065957E
 0065956A    lods        byte ptr [esi]
 0065956B    cmp         al,2D
>0065956D    je          00659573
 0065956F    cmp         al,2B
>00659571    jne         00659514
 00659573    mov         byte ptr [ebp-11],1
 00659577    lods        byte ptr [esi]
 00659578    cmp         al,30
>0065957A    je          00659577
>0065957C    jmp         00659514
 0065957E    mov         dword ptr [ebp-10],edx
 00659581    cmp         dword ptr [ebp-18],0FFFFFFFF
>00659585    jne         0065958A
 00659587    mov         dword ptr [ebp-18],edx
 0065958A    mov         eax,dword ptr [ebp-18]
 0065958D    sub         eax,ecx
>0065958F    jle         00659593
 00659591    xor         eax,eax
 00659593    mov         dword ptr [ebp-3C],eax
 00659596    mov         eax,dword ptr [ebp-18]
 00659599    sub         eax,ebx
>0065959B    jge         0065959F
 0065959D    xor         eax,eax
 0065959F    mov         dword ptr [ebp-40],eax
 006595A2    pop         ebx
 006595A3    ret
*}
end;

//006596D0
procedure FloatToDecimal(var Result:TFloatRec; const Value:void ; ValueType:TFloatValue; Precision:Integer; Decimals:Integer);
begin
{*
 006596D0    push        ebp
 006596D1    mov         ebp,esp
 006596D3    add         esp,0FFFFFFE0
 006596D6    push        edi
 006596D7    push        esi
 006596D8    push        ebx
 006596D9    mov         ebx,eax
 006596DB    mov         esi,edx
 006596DD    mov         dword ptr [ebp-4],0
 006596E4    cmp         cl,0
>006596E7    je          006596F3
 006596E9    call        0065981F
>006596EE    jmp         006598F3
 006596F3    call        006596FD
>006596F8    jmp         006598F3
 006596FD    mov         ax,word ptr [esi+8]
 00659701    mov         edx,eax
 00659703    and         eax,7FFF
>00659708    je          00659728
 0065970A    cmp         eax,7FFF
>0065970F    jne         00659733
 00659711    test        word ptr [esi+6],8000
>00659717    je          0065972A
 00659719    cmp         dword ptr [esi],0
>0065971C    jne         00659727
 0065971E    cmp         dword ptr [esi+4],80000000
>00659725    je          0065972A
 00659727    inc         eax
 00659728    xor         edx,edx
 0065972A    mov         byte ptr [ebx+3],0
>0065972E    jmp         00659800
 00659733    fld         tbyte ptr [esi]
 00659735    sub         eax,3FFF
 0065973A    imul        eax,eax,4D10
 00659740    sar         eax,10
 00659743    inc         eax
 00659744    mov         dword ptr [ebp-8],eax
 00659747    mov         eax,12
 0065974C    sub         eax,dword ptr [ebp-8]
 0065974F    fabs
 00659751    push        ebx
 00659752    mov         ebx,dword ptr [ebp-4]
 00659755    call        FPower10
 0065975A    pop         ebx
 0065975B    frndint
 0065975D    mov         edi,dword ptr [ebp-4]
 00659760    fld         tbyte ptr [edi+6E4A4C]
 00659766    fcomp       st(1)
 00659768    wait
 00659769    fnstsw      word ptr [ebp-0A]
 0065976C    wait
 0065976D    test        word ptr [ebp-0A],4100
>00659773    je          0065977E
 00659775    fidiv       dword ptr [edi+6E4A58]
 0065977B    inc         dword ptr [ebp-8]
 0065977E    fbstp       tbyte ptr [ebp-18]
 00659781    lea         edi,[ebx+3]
 00659784    mov         edx,9
 00659789    wait
 0065978A    mov         al,byte ptr [edx+ebp-19]
 0065978E    mov         ah,al
 00659790    shr         al,4
 00659793    and         ah,0F
 00659796    add         ax,3030
 0065979A    stos        word ptr [edi]
 0065979C    dec         edx
>0065979D    jne         0065978A
 0065979F    xor         al,al
 006597A1    stos        byte ptr [edi]
 006597A2    mov         edi,dword ptr [ebp-8]
 006597A5    add         edi,dword ptr [ebp+8]
>006597A8    jns         006597B1
 006597AA    xor         eax,eax
>006597AC    jmp         00659728
 006597B1    cmp         edi,dword ptr [ebp+0C]
>006597B4    jb          006597B9
 006597B6    mov         edi,dword ptr [ebp+0C]
 006597B9    cmp         edi,12
>006597BC    jae         006597E5
 006597BE    cmp         byte ptr [ebx+edi+3],35
>006597C3    jb          006597EA
 006597C5    mov         byte ptr [ebx+edi+3],0
 006597CA    dec         edi
>006597CB    js          006597DA
 006597CD    inc         byte ptr [ebx+edi+3]
 006597D1    cmp         byte ptr [ebx+edi+3],39
>006597D6    ja          006597C5
>006597D8    jmp         006597F9
 006597DA    mov         word ptr [ebx+3],31
 006597E0    inc         dword ptr [ebp-8]
>006597E3    jmp         006597F9
 006597E5    mov         edi,12
 006597EA    mov         byte ptr [ebx+edi+3],0
 006597EF    dec         edi
>006597F0    js          0065980B
 006597F2    cmp         byte ptr [ebx+edi+3],30
>006597F7    je          006597EA
 006597F9    mov         dx,word ptr [esi+8]
 006597FD    mov         eax,dword ptr [ebp-8]
 00659800    shr         dx,0F
 00659804    mov         word ptr [ebx],ax
 00659807    mov         byte ptr [ebx+2],dl
 0065980A    ret
 0065980B    xor         edx,edx
>0065980D    jmp         006597FD
 0065980F    or          al,byte ptr [eax]
 00659811    add         byte ptr [eax],al
 00659813    add         byte ptr fs:[eax],al
 00659816    add         al,ch
 00659818    add         eax,dword ptr [eax]
 0065981A    add         byte ptr [eax],dl
 0065981C    daa
 0065981D    add         byte ptr [eax],al
 0065981F    mov         eax,dword ptr [esi]
 00659821    mov         edx,dword ptr [esi+4]
 00659824    mov         ecx,eax
 00659826    or          ecx,edx
>00659828    je          006598E5
 0065982E    or          edx,edx
>00659830    jns         00659839
 00659832    neg         edx
 00659834    neg         eax
 00659836    sbb         edx,0
 00659839    xor         ecx,ecx
 0065983B    mov         edi,dword ptr [ebp+8]
 0065983E    or          edi,edi
>00659840    jge         00659844
 00659842    xor         edi,edi
 00659844    cmp         edi,4
>00659847    jl          00659868
 00659849    mov         edi,4
 0065984E    inc         ecx
 0065984F    sub         eax,0A7640000
 00659854    sbb         edx,0DE0B6B3
>0065985A    jae         0065984E
 0065985C    dec         ecx
 0065985D    add         eax,0A7640000
 00659862    adc         edx,0DE0B6B3
 00659868    mov         dword ptr [ebp-20],eax
 0065986B    mov         dword ptr [ebp-1C],edx
 0065986E    fild        qword ptr [ebp-20]
 00659871    mov         edx,edi
 00659873    mov         eax,4
 00659878    sub         eax,edx
>0065987A    je          00659886
 0065987C    mov         edi,dword ptr [ebp-4]
 0065987F    fidiv       dword ptr [edi+eax*4+65980B]
 00659886    fbstp       tbyte ptr [ebp-18]
 00659889    lea         edi,[ebx+3]
 0065988C    wait
 0065988D    or          ecx,ecx
>0065988F    jne         006598AC
 00659891    mov         ecx,9
 00659896    mov         al,byte ptr [ecx+ebp-19]
 0065989A    mov         ah,al
 0065989C    shr         al,4
>0065989F    jne         006598BF
 006598A1    mov         al,ah
 006598A3    and         al,0F
>006598A5    jne         006598C6
 006598A7    dec         ecx
>006598A8    jne         00659896
>006598AA    jmp         006598E5
 006598AC    mov         al,cl
 006598AE    add         al,30
 006598B0    stos        byte ptr [edi]
 006598B1    mov         ecx,9
 006598B6    mov         al,byte ptr [ecx+ebp-19]
 006598BA    mov         ah,al
 006598BC    shr         al,4
 006598BF    add         al,30
 006598C1    stos        byte ptr [edi]
 006598C2    mov         al,ah
 006598C4    and         al,0F
 006598C6    add         al,30
 006598C8    stos        byte ptr [edi]
 006598C9    dec         ecx
>006598CA    jne         006598B6
 006598CC    mov         eax,edi
 006598CE    lea         ecx,[ebx+edx+3]
 006598D2    sub         eax,ecx
 006598D4    mov         byte ptr [edi],0
 006598D7    dec         edi
 006598D8    cmp         byte ptr [edi],30
>006598DB    je          006598D4
 006598DD    mov         edx,dword ptr [esi+4]
 006598E0    shr         edx,1F
>006598E3    jmp         006598EC
 006598E5    xor         eax,eax
 006598E7    xor         edx,edx
 006598E9    mov         byte ptr [ebx+3],al
 006598EC    mov         word ptr [ebx],ax
 006598EF    mov         byte ptr [ebx+2],dl
 006598F2    ret
*}
end;

//006596D2
procedure sub_006596D2;
begin
{*
 006596D2    in          al,dl
 006596D3    add         esp,0FFFFFFE0
 006596D6    push        edi
 006596D7    push        esi
 006596D8    push        ebx
 006596D9    mov         ebx,eax
 006596DB    mov         esi,edx
 006596DD    mov         dword ptr [ebp-4],0
 006596E4    cmp         cl,0
>006596E7    je          006596F3
 006596E9    call        0065981F
>006596EE    jmp         006598F3
 006596F3    call        006596FD
>006596F8    jmp         006598F3
 006596FD    mov         ax,word ptr [esi+8]
 00659701    mov         edx,eax
 00659703    and         eax,7FFF
>00659708    je          00659728
 0065970A    cmp         eax,7FFF
>0065970F    jne         00659733
 00659711    test        word ptr [esi+6],8000
>00659717    je          0065972A
 00659719    cmp         dword ptr [esi],0
>0065971C    jne         00659727
 0065971E    cmp         dword ptr [esi+4],80000000
>00659725    je          0065972A
 00659727    inc         eax
 00659728    xor         edx,edx
 0065972A    mov         byte ptr [ebx+3],0
>0065972E    jmp         00659800
 00659733    fld         tbyte ptr [esi]
 00659735    sub         eax,3FFF
 0065973A    imul        eax,eax,4D10
 00659740    sar         eax,10
 00659743    inc         eax
 00659744    mov         dword ptr [ebp-8],eax
 00659747    mov         eax,12
 0065974C    sub         eax,dword ptr [ebp-8]
 0065974F    fabs
 00659751    push        ebx
 00659752    mov         ebx,dword ptr [ebp-4]
 00659755    call        FPower10
 0065975A    pop         ebx
 0065975B    frndint
 0065975D    mov         edi,dword ptr [ebp-4]
 00659760    fld         tbyte ptr [edi+6E4A4C]
 00659766    fcomp       st(1)
 00659768    wait
 00659769    fnstsw      word ptr [ebp-0A]
 0065976C    wait
 0065976D    test        word ptr [ebp-0A],4100
>00659773    je          0065977E
 00659775    fidiv       dword ptr [edi+6E4A58]
 0065977B    inc         dword ptr [ebp-8]
 0065977E    fbstp       tbyte ptr [ebp-18]
 00659781    lea         edi,[ebx+3]
 00659784    mov         edx,9
 00659789    wait
 0065978A    mov         al,byte ptr [edx+ebp-19]
 0065978E    mov         ah,al
 00659790    shr         al,4
 00659793    and         ah,0F
 00659796    add         ax,3030
 0065979A    stos        word ptr [edi]
 0065979C    dec         edx
>0065979D    jne         0065978A
 0065979F    xor         al,al
 006597A1    stos        byte ptr [edi]
 006597A2    mov         edi,dword ptr [ebp-8]
 006597A5    add         edi,dword ptr [ebp+8]
>006597A8    jns         006597B1
 006597AA    xor         eax,eax
>006597AC    jmp         00659728
 006597B1    cmp         edi,dword ptr [ebp+0C]
>006597B4    jb          006597B9
 006597B6    mov         edi,dword ptr [ebp+0C]
 006597B9    cmp         edi,12
>006597BC    jae         006597E5
 006597BE    cmp         byte ptr [ebx+edi+3],35
>006597C3    jb          006597EA
 006597C5    mov         byte ptr [ebx+edi+3],0
 006597CA    dec         edi
>006597CB    js          006597DA
 006597CD    inc         byte ptr [ebx+edi+3]
 006597D1    cmp         byte ptr [ebx+edi+3],39
>006597D6    ja          006597C5
>006597D8    jmp         006597F9
 006597DA    mov         word ptr [ebx+3],31
 006597E0    inc         dword ptr [ebp-8]
>006597E3    jmp         006597F9
 006597E5    mov         edi,12
 006597EA    mov         byte ptr [ebx+edi+3],0
 006597EF    dec         edi
>006597F0    js          0065980B
 006597F2    cmp         byte ptr [ebx+edi+3],30
>006597F7    je          006597EA
 006597F9    mov         dx,word ptr [esi+8]
 006597FD    mov         eax,dword ptr [ebp-8]
 00659800    shr         dx,0F
 00659804    mov         word ptr [ebx],ax
 00659807    mov         byte ptr [ebx+2],dl
 0065980A    ret
*}
end;

//006598FC
function TextToFloat(Buffer:PChar; var Value:void ; ValueType:TFloatValue):Boolean;
begin
{*
 006598FC    push        ebp
 006598FD    mov         ebp,esp
 006598FF    add         esp,0FFFFFFF4
 00659902    push        edi
 00659903    push        esi
 00659904    push        ebx
 00659905    mov         esi,eax
 00659907    mov         edi,edx
 00659909    mov         dword ptr [ebp-4],0
 00659910    mov         al,[006ED017];DecimalSeparator:Char
 00659915    mov         byte ptr [ebp-5],al
 00659918    mov         ebx,ecx
 0065991A    wait
 0065991B    fnstcw      word ptr [ebp-8]
 0065991E    wait
 0065991F    fnclex
 00659921    fldcw       word ptr ds:[6E4A5C]
 00659927    fldz
 00659929    call        006599B3
 0065992E    mov         bh,byte ptr [esi]
 00659930    cmp         bh,2B
>00659933    je          0065993A
 00659935    cmp         bh,2D
>00659938    jne         0065993B
 0065993A    inc         esi
 0065993B    mov         ecx,esi
 0065993D    call        006599BE
 00659942    xor         edx,edx
 00659944    mov         al,byte ptr [esi]
 00659946    cmp         al,byte ptr [ebp-5]
>00659949    jne         00659953
 0065994B    inc         esi
 0065994C    call        006599BE
 00659951    neg         edx
 00659953    cmp         ecx,esi
>00659955    je          006599A6
 00659957    mov         al,byte ptr [esi]
 00659959    and         al,0DF
 0065995B    cmp         al,45
>0065995D    jne         00659969
 0065995F    inc         esi
 00659960    push        edx
 00659961    call        006599DA
 00659966    pop         eax
 00659967    add         edx,eax
 00659969    call        006599B3
 0065996E    cmp         byte ptr [esi],0
>00659971    jne         006599A6
 00659973    mov         eax,edx
 00659975    cmp         bl,1
>00659978    jne         0065997D
 0065997A    add         eax,4
 0065997D    push        ebx
 0065997E    mov         ebx,dword ptr [ebp-4]
 00659981    call        FPower10
 00659986    pop         ebx
 00659987    cmp         bh,2D
>0065998A    jne         0065998E
 0065998C    fchs
 0065998E    cmp         bl,0
>00659991    je          00659997
 00659993    fistp       qword ptr [edi]
>00659995    jmp         00659999
 00659997    fstp        tbyte ptr [edi]
 00659999    wait
 0065999A    fnstsw      al
 0065999C    test        ax,9
>006599A0    jne         006599A8
 006599A2    mov         al,1
>006599A4    jmp         006599AA
 006599A6    fstp        st(0)
 006599A8    xor         eax,eax
 006599AA    wait
 006599AB    fnclex
 006599AD    fldcw       word ptr [ebp-8]
 006599B0    wait
>006599B1    jmp         00659A09
 006599B3    lods        byte ptr [esi]
 006599B4    or          al,al
>006599B6    je          006599BC
 006599B8    cmp         al,20
>006599BA    je          006599B3
 006599BC    dec         esi
 006599BD    ret
 006599BE    xor         eax,eax
 006599C0    xor         edx,edx
 006599C2    lods        byte ptr [esi]
 006599C3    sub         al,3A
 006599C5    add         al,0A
>006599C7    jae         006599D8
 006599C9    fimul       dword ptr ds:[6E4A58]
 006599CF    mov         dword ptr [ebp-0C],eax
 006599D2    fiadd       dword ptr [ebp-0C]
 006599D5    inc         edx
>006599D6    jmp         006599C2
 006599D8    dec         esi
 006599D9    ret
 006599DA    xor         eax,eax
 006599DC    xor         edx,edx
 006599DE    mov         cl,byte ptr [esi]
 006599E0    cmp         cl,2B
>006599E3    je          006599EA
 006599E5    cmp         cl,2D
>006599E8    jne         006599EB
 006599EA    inc         esi
 006599EB    mov         al,byte ptr [esi]
 006599ED    sub         al,3A
 006599EF    add         al,0A
>006599F1    jae         00659A01
 006599F3    inc         esi
 006599F4    imul        edx,edx,0A
 006599F7    add         edx,eax
 006599F9    cmp         edx,1F4
>006599FF    jb          006599EB
 00659A01    cmp         cl,2D
>00659A04    jne         00659A08
 00659A06    neg         edx
 00659A08    ret
 00659A09    pop         ebx
 00659A0A    pop         esi
 00659A0B    pop         edi
 00659A0C    mov         esp,ebp
 00659A0E    pop         ebp
 00659A0F    ret
*}
end;

//00659A10
function FloatToStr(Value:Extended):AnsiString;
begin
{*
 00659A10    push        ebp
 00659A11    mov         ebp,esp
 00659A13    add         esp,0FFFFFFBC
 00659A16    mov         dword ptr [ebp-4],eax
 00659A19    push        0
 00659A1B    push        0F
 00659A1D    push        0
 00659A1F    lea         edx,[ebp+8]
 00659A22    lea         eax,[ebp-44]
 00659A25    xor         ecx,ecx
 00659A27    call        FloatToText
 00659A2C    mov         ecx,eax
 00659A2E    lea         edx,[ebp-44]
 00659A31    mov         eax,dword ptr [ebp-4]
 00659A34    call        @LStrFromPCharLen
 00659A39    mov         esp,ebp
 00659A3B    pop         ebp
 00659A3C    ret         0C
*}
end;

//00659A40
{*procedure sub_00659A40(?:?; ?:?);
begin
 00659A40    push        ebp
 00659A41    mov         ebp,esp
 00659A43    add         esp,0FFFFFFBC
 00659A46    mov         dword ptr [ebp-4],eax
 00659A49    push        0
 00659A4B    push        0
 00659A4D    push        0
 00659A4F    lea         edx,[ebp+8]
 00659A52    lea         eax,[ebp-44]
 00659A55    mov         cl,1
 00659A57    call        FloatToText
 00659A5C    mov         ecx,eax
 00659A5E    lea         edx,[ebp-44]
 00659A61    mov         eax,dword ptr [ebp-4]
 00659A64    call        @LStrFromPCharLen
 00659A69    mov         esp,ebp
 00659A6B    pop         ebp
 00659A6C    ret         8
end;*}

//00659A70
function TryFloatToCurr(const Value:Extended; var AResult:Currency):Boolean;
begin
{*
 00659A70    push        ebp
 00659A71    mov         ebp,esp
 00659A73    add         esp,0FFFFFFF8
 00659A76    mov         dword ptr [ebp-4],eax
 00659A79    fld         tbyte ptr [ebp+8]
 00659A7C    fmul        dword ptr ds:[659ACC]
 00659A82    fild        qword ptr ds:[6E49A4]
 00659A88    fcompp
 00659A8A    fnstsw      al
 00659A8C    sahf
>00659A8D    ja          00659AA5
 00659A8F    fld         tbyte ptr [ebp+8]
 00659A92    fmul        dword ptr ds:[659ACC]
 00659A98    fild        qword ptr ds:[6E49AC]
 00659A9E    fcompp
 00659AA0    fnstsw      al
 00659AA2    sahf
>00659AA3    jae         00659AA9
 00659AA5    xor         eax,eax
>00659AA7    jmp         00659AAB
 00659AA9    mov         al,1
 00659AAB    mov         byte ptr [ebp-5],al
 00659AAE    cmp         byte ptr [ebp-5],0
>00659AB2    je          00659AC3
 00659AB4    fld         tbyte ptr [ebp+8]
 00659AB7    fmul        dword ptr ds:[659ACC]
 00659ABD    mov         eax,dword ptr [ebp-4]
 00659AC0    fistp       qword ptr [eax]
 00659AC2    wait
 00659AC3    mov         al,byte ptr [ebp-5]
 00659AC6    pop         ecx
 00659AC7    pop         ecx
 00659AC8    pop         ebp
 00659AC9    ret         0C
*}
end;

//00659AD0
function FloatToCurr(const Value:Extended):Currency;
begin
{*
 00659AD0    push        ebp
 00659AD1    mov         ebp,esp
 00659AD3    add         esp,0FFFFFFEC
 00659AD6    xor         eax,eax
 00659AD8    mov         dword ptr [ebp-14],eax
 00659ADB    xor         eax,eax
 00659ADD    push        ebp
 00659ADE    push        659B42
 00659AE3    push        dword ptr fs:[eax]
 00659AE6    mov         dword ptr fs:[eax],esp
 00659AE9    mov         ax,word ptr [ebp+10]
 00659AED    push        eax
 00659AEE    push        dword ptr [ebp+0C]
 00659AF1    push        dword ptr [ebp+8]
 00659AF4    lea         eax,[ebp-8]
 00659AF7    call        TryFloatToCurr
 00659AFC    test        al,al
>00659AFE    jne         00659B2C
 00659B00    mov         ax,word ptr [ebp+10]
 00659B04    push        eax
 00659B05    push        dword ptr [ebp+0C]
 00659B08    push        dword ptr [ebp+8]
 00659B0B    lea         eax,[ebp-14]
 00659B0E    call        FloatToStr
 00659B13    mov         eax,dword ptr [ebp-14]
 00659B16    mov         dword ptr [ebp-10],eax
 00659B19    mov         byte ptr [ebp-0C],0B
 00659B1D    lea         edx,[ebp-10]
 00659B20    mov         eax,[006EA124]
 00659B25    xor         ecx,ecx
 00659B27    call        ConvertErrorFmt
 00659B2C    xor         eax,eax
 00659B2E    pop         edx
 00659B2F    pop         ecx
 00659B30    pop         ecx
 00659B31    mov         dword ptr fs:[eax],edx
 00659B34    push        659B49
 00659B39    lea         eax,[ebp-14]
 00659B3C    call        @LStrClr
 00659B41    ret
>00659B42    jmp         @HandleFinally
>00659B47    jmp         00659B39
 00659B49    fild        qword ptr [ebp-8]
 00659B4C    mov         esp,ebp
 00659B4E    pop         ebp
 00659B4F    ret         0C
*}
end;

//00659B54
function FormatFloat(const Format:AnsiString; Value:Extended):AnsiString;
begin
{*
 00659B54    push        ebp
 00659B55    mov         ebp,esp
 00659B57    add         esp,0FFFFFEF8
 00659B5D    mov         dword ptr [ebp-8],edx
 00659B60    mov         dword ptr [ebp-4],eax
 00659B63    mov         eax,dword ptr [ebp-4]
 00659B66    call        @LStrLen
 00659B6B    cmp         eax,0E0
>00659B70    jle         00659B7C
 00659B72    mov         eax,[006EA1B4]
 00659B77    call        006573FC
 00659B7C    mov         eax,dword ptr [ebp-4]
 00659B7F    call        @LStrToPChar
 00659B84    push        eax
 00659B85    lea         edx,[ebp+8]
 00659B88    lea         eax,[ebp-108]
 00659B8E    xor         ecx,ecx
 00659B90    call        FloatToTextFmt
 00659B95    mov         ecx,eax
 00659B97    lea         edx,[ebp-108]
 00659B9D    mov         eax,dword ptr [ebp-8]
 00659BA0    call        @LStrFromPCharLen
 00659BA5    mov         esp,ebp
 00659BA7    pop         ebp
 00659BA8    ret         0C
*}
end;

//00659BAC
{*function sub_00659BAC(?:?):?;
begin
 00659BAC    push        ebp
 00659BAD    mov         ebp,esp
 00659BAF    add         esp,0FFFFFFE8
 00659BB2    mov         dword ptr [ebp-4],eax
 00659BB5    mov         eax,dword ptr [ebp-4]
 00659BB8    call        @LStrToPChar
 00659BBD    lea         edx,[ebp-10]
 00659BC0    xor         ecx,ecx
 00659BC2    call        TextToFloat
 00659BC7    test        al,al
>00659BC9    jne         00659BE4
 00659BCB    mov         eax,dword ptr [ebp-4]
 00659BCE    mov         dword ptr [ebp-18],eax
 00659BD1    mov         byte ptr [ebp-14],0B
 00659BD5    lea         edx,[ebp-18]
 00659BD8    mov         eax,[006EA120];^gvar_0065EF2C
 00659BDD    xor         ecx,ecx
 00659BDF    call        ConvertErrorFmt
 00659BE4    fld         tbyte ptr [ebp-10]
 00659BE7    mov         esp,ebp
 00659BE9    pop         ebp
 00659BEA    ret
end;*}

//00659BEC
{*function sub_00659BEC(?:?; ?:Extended):?;
begin
 00659BEC    push        ebp
 00659BED    mov         ebp,esp
 00659BEF    add         esp,0FFFFFFF4
 00659BF2    mov         dword ptr [ebp-8],edx
 00659BF5    mov         dword ptr [ebp-4],eax
 00659BF8    mov         eax,dword ptr [ebp-4]
 00659BFB    call        @LStrToPChar
 00659C00    mov         edx,dword ptr [ebp-8]
 00659C03    xor         ecx,ecx
 00659C05    call        TextToFloat
 00659C0A    mov         byte ptr [ebp-9],al
 00659C0D    mov         al,byte ptr [ebp-9]
 00659C10    mov         esp,ebp
 00659C12    pop         ebp
 00659C13    ret
end;*}

//00659C14
{*function sub_00659C14(?:AnsiString; ?:?):?;
begin
 00659C14    push        ebp
 00659C15    mov         ebp,esp
 00659C17    add         esp,0FFFFFFE8
 00659C1A    mov         dword ptr [ebp-8],edx
 00659C1D    mov         dword ptr [ebp-4],eax
 00659C20    mov         eax,dword ptr [ebp-4]
 00659C23    call        @LStrToPChar
 00659C28    lea         edx,[ebp-18]
 00659C2B    xor         ecx,ecx
 00659C2D    call        TextToFloat
 00659C32    mov         byte ptr [ebp-9],al
 00659C35    cmp         byte ptr [ebp-9],0
>00659C39    je          00659C44
 00659C3B    fld         tbyte ptr [ebp-18]
 00659C3E    mov         eax,dword ptr [ebp-8]
 00659C41    fstp        qword ptr [eax]
 00659C43    wait
 00659C44    mov         al,byte ptr [ebp-9]
 00659C47    mov         esp,ebp
 00659C49    pop         ebp
 00659C4A    ret
end;*}

//00659C4C
{*function sub_00659C4C(?:AnsiString; ?:?):?;
begin
 00659C4C    push        ebp
 00659C4D    mov         ebp,esp
 00659C4F    add         esp,0FFFFFFF4
 00659C52    mov         dword ptr [ebp-8],edx
 00659C55    mov         dword ptr [ebp-4],eax
 00659C58    mov         eax,dword ptr [ebp-4]
 00659C5B    call        @LStrToPChar
 00659C60    mov         edx,dword ptr [ebp-8]
 00659C63    mov         cl,1
 00659C65    call        TextToFloat
 00659C6A    mov         byte ptr [ebp-9],al
 00659C6D    mov         al,byte ptr [ebp-9]
 00659C70    mov         esp,ebp
 00659C72    pop         ebp
 00659C73    ret
end;*}

//00659C74
function DateTimeToTimeStamp(DateTime:TDateTime):TTimeStamp;
begin
{*
 00659C74    push        ebp
 00659C75    mov         ebp,esp
 00659C77    push        ebx
 00659C78    xor         ebx,ebx
 00659C7A    mov         ecx,eax
 00659C7C    fld         qword ptr [ebp+8]
 00659C7F    fmul        dword ptr [ebx+6E4A60]
 00659C85    sub         esp,8
 00659C88    fistp       qword ptr [esp]
 00659C8B    wait
 00659C8C    pop         eax
 00659C8D    pop         edx
 00659C8E    or          edx,edx
>00659C90    jns         00659CA3
 00659C92    neg         edx
 00659C94    neg         eax
 00659C96    sbb         edx,0
 00659C99    div         eax,dword ptr [ebx+6E4A64]
 00659C9F    neg         eax
>00659CA1    jmp         00659CA9
 00659CA3    div         eax,dword ptr [ebx+6E4A64]
 00659CA9    add         eax,0A955A
 00659CAE    mov         dword ptr [ecx],edx
 00659CB0    mov         dword ptr [ecx+4],eax
 00659CB3    pop         ebx
 00659CB4    pop         ebp
 00659CB5    ret         8
*}
end;

//00659CB8
{*function sub_00659CB8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00659CB8    push        ebp
 00659CB9    mov         ebp,esp
 00659CBB    add         esp,0FFFFFFF4
 00659CBE    mov         word ptr [ebp-6],cx
 00659CC2    mov         word ptr [ebp-4],dx
 00659CC6    mov         word ptr [ebp-2],ax
 00659CCA    mov         byte ptr [ebp-7],0
 00659CCE    cmp         word ptr [ebp-2],18
>00659CD3    jae         00659D29
 00659CD5    cmp         word ptr [ebp-4],3C
>00659CDA    jae         00659D29
 00659CDC    cmp         word ptr [ebp-6],3C
>00659CE1    jae         00659D29
 00659CE3    cmp         word ptr [ebp+0C],3E8
>00659CE9    jae         00659D29
 00659CEB    movzx       eax,word ptr [ebp-2]
 00659CEF    imul        eax,eax,36EE80
 00659CF5    movzx       edx,word ptr [ebp-4]
 00659CF9    imul        edx,edx,0EA60
 00659CFF    add         eax,edx
 00659D01    movzx       edx,word ptr [ebp-6]
 00659D05    imul        edx,edx,3E8
 00659D0B    add         eax,edx
 00659D0D    movzx       edx,word ptr [ebp+0C]
 00659D11    add         eax,edx
 00659D13    mov         dword ptr [ebp-0C],eax
 00659D16    fild        dword ptr [ebp-0C]
 00659D19    fdiv        dword ptr ds:[659D34];86400000:Single
 00659D1F    mov         eax,dword ptr [ebp+8]
 00659D22    fstp        qword ptr [eax]
 00659D24    wait
 00659D25    mov         byte ptr [ebp-7],1
 00659D29    mov         al,byte ptr [ebp-7]
 00659D2C    mov         esp,ebp
 00659D2E    pop         ebp
 00659D2F    ret         8
end;*}

//00659D38
{*procedure sub_00659D38(?:?; ?:?; ?:?; ?:?);
begin
 00659D38    push        ebp
 00659D39    mov         ebp,esp
 00659D3B    add         esp,0FFFFFFF0
 00659D3E    mov         word ptr [ebp-6],cx
 00659D42    mov         word ptr [ebp-4],dx
 00659D46    mov         word ptr [ebp-2],ax
 00659D4A    mov         ax,word ptr [ebp+8]
 00659D4E    push        eax
 00659D4F    lea         eax,[ebp-10]
 00659D52    push        eax
 00659D53    mov         cx,word ptr [ebp-6]
 00659D57    mov         dx,word ptr [ebp-4]
 00659D5B    mov         ax,word ptr [ebp-2]
 00659D5F    call        00659CB8
 00659D64    test        al,al
>00659D66    jne         00659D72
 00659D68    mov         eax,[006EA138];^gvar_0065EF5C
 00659D6D    call        006573FC
 00659D72    fld         qword ptr [ebp-10]
 00659D75    mov         esp,ebp
 00659D77    pop         ebp
 00659D78    ret         4
end;*}

//00659D7C
procedure DecodeTime(var Hour:Word; var Min:Word; var Sec:Word; const DateTime:TDateTime; var MSec:Word);
begin
{*
 00659D7C    push        ebp
 00659D7D    mov         ebp,esp
 00659D7F    add         esp,0FFFFFFE8
 00659D82    mov         dword ptr [ebp-0C],ecx
 00659D85    mov         dword ptr [ebp-8],edx
 00659D88    mov         dword ptr [ebp-4],eax
 00659D8B    lea         eax,[ebp-10]
 00659D8E    push        eax
 00659D8F    push        dword ptr [ebp+10]
 00659D92    push        dword ptr [ebp+0C]
 00659D95    lea         eax,[ebp-18]
 00659D98    call        DateTimeToTimeStamp
 00659D9D    mov         eax,dword ptr [ebp-18]
 00659DA0    lea         ecx,[ebp-0E]
 00659DA3    mov         dx,0EA60
 00659DA7    call        DivMod
 00659DAC    mov         eax,dword ptr [ebp-8]
 00659DAF    push        eax
 00659DB0    mov         ecx,dword ptr [ebp-4]
 00659DB3    movzx       eax,word ptr [ebp-0E]
 00659DB7    mov         dx,3C
 00659DBB    call        DivMod
 00659DC0    mov         eax,dword ptr [ebp+8]
 00659DC3    push        eax
 00659DC4    mov         ecx,dword ptr [ebp-0C]
 00659DC7    movzx       eax,word ptr [ebp-10]
 00659DCB    mov         dx,3E8
 00659DCF    call        DivMod
 00659DD4    mov         esp,ebp
 00659DD6    pop         ebp
 00659DD7    ret         0C
*}
end;

//00659DDC
{*function sub_00659DDC(?:Word):?;
begin
 00659DDC    push        ebp
 00659DDD    mov         ebp,esp
 00659DDF    push        ecx
 00659DE0    mov         word ptr [ebp-2],ax
 00659DE4    movzx       eax,word ptr [ebp-2]
 00659DE8    and         eax,3
 00659DEB    test        eax,eax
>00659DED    jne         00659E11
 00659DEF    movzx       eax,word ptr [ebp-2]
 00659DF3    mov         ecx,64
 00659DF8    xor         edx,edx
 00659DFA    div         eax,ecx
 00659DFC    test        edx,edx
>00659DFE    jne         00659E15
 00659E00    movzx       eax,word ptr [ebp-2]
 00659E04    mov         ecx,190
 00659E09    xor         edx,edx
 00659E0B    div         eax,ecx
 00659E0D    test        edx,edx
>00659E0F    je          00659E15
 00659E11    xor         eax,eax
>00659E13    jmp         00659E17
 00659E15    mov         al,1
 00659E17    mov         byte ptr [ebp-3],al
 00659E1A    mov         al,byte ptr [ebp-3]
 00659E1D    pop         ecx
 00659E1E    pop         ebp
 00659E1F    ret
end;*}

//00659E20
{*function sub_00659E20(?:Integer; ?:?; ?:?; ?:?):?;
begin
 00659E20    push        ebp
 00659E21    mov         ebp,esp
 00659E23    add         esp,0FFFFFFE8
 00659E26    push        ebx
 00659E27    mov         word ptr [ebp-6],cx
 00659E2B    mov         word ptr [ebp-4],dx
 00659E2F    mov         word ptr [ebp-2],ax
 00659E33    mov         byte ptr [ebp-7],0
 00659E37    mov         ax,word ptr [ebp-2]
 00659E3B    call        00659DDC
 00659E40    and         eax,7F
 00659E43    lea         eax,[eax+eax*2]
 00659E46    lea         eax,[eax*8+6E49B4]
 00659E4D    mov         dword ptr [ebp-10],eax
 00659E50    cmp         word ptr [ebp-2],1
>00659E55    jb          00659F18
 00659E5B    cmp         word ptr [ebp-2],270F
>00659E61    ja          00659F18
 00659E67    cmp         word ptr [ebp-4],1
>00659E6C    jb          00659F18
 00659E72    cmp         word ptr [ebp-4],0C
>00659E77    ja          00659F18
 00659E7D    cmp         word ptr [ebp-6],1
>00659E82    jb          00659F18
 00659E88    movzx       eax,word ptr [ebp-4]
 00659E8C    mov         edx,dword ptr [ebp-10]
 00659E8F    mov         ax,word ptr [edx+eax*2-2]
 00659E94    cmp         ax,word ptr [ebp-6]
>00659E98    jb          00659F18
 00659E9A    movzx       eax,word ptr [ebp-4]
 00659E9E    dec         eax
 00659E9F    test        eax,eax
>00659EA1    jle         00659EC4
 00659EA3    mov         dword ptr [ebp-14],eax
 00659EA6    mov         dword ptr [ebp-0C],1
 00659EAD    mov         eax,dword ptr [ebp-10]
 00659EB0    mov         edx,dword ptr [ebp-0C]
 00659EB3    mov         ax,word ptr [eax+edx*2-2]
 00659EB8    add         word ptr [ebp-6],ax
 00659EBC    inc         dword ptr [ebp-0C]
 00659EBF    dec         dword ptr [ebp-14]
>00659EC2    jne         00659EAD
 00659EC4    movzx       eax,word ptr [ebp-2]
 00659EC8    dec         eax
 00659EC9    mov         dword ptr [ebp-0C],eax
 00659ECC    mov         eax,dword ptr [ebp-0C]
 00659ECF    mov         ecx,64
 00659ED4    cdq
 00659ED5    idiv        eax,ecx
 00659ED7    imul        ecx,dword ptr [ebp-0C],16D
 00659EDE    mov         edx,dword ptr [ebp-0C]
 00659EE1    test        edx,edx
>00659EE3    jns         00659EE8
 00659EE5    add         edx,3
 00659EE8    sar         edx,2
 00659EEB    add         ecx,edx
 00659EED    sub         ecx,eax
 00659EEF    mov         eax,dword ptr [ebp-0C]
 00659EF2    mov         ebx,190
 00659EF7    cdq
 00659EF8    idiv        eax,ebx
 00659EFA    add         ecx,eax
 00659EFC    movzx       eax,word ptr [ebp-6]
 00659F00    add         ecx,eax
 00659F02    sub         ecx,0A955A
 00659F08    mov         dword ptr [ebp-18],ecx
 00659F0B    fild        dword ptr [ebp-18]
 00659F0E    mov         eax,dword ptr [ebp+8]
 00659F11    fstp        qword ptr [eax]
 00659F13    wait
 00659F14    mov         byte ptr [ebp-7],1
 00659F18    mov         al,byte ptr [ebp-7]
 00659F1B    pop         ebx
 00659F1C    mov         esp,ebp
 00659F1E    pop         ebp
 00659F1F    ret         4
end;*}

//00659F24
function EncodeDate(Year:Word; Month:Word; Day:Word):TDateTime;
begin
{*
 00659F24    push        ebp
 00659F25    mov         ebp,esp
 00659F27    add         esp,0FFFFFFF0
 00659F2A    mov         word ptr [ebp-6],cx
 00659F2E    mov         word ptr [ebp-4],dx
 00659F32    mov         word ptr [ebp-2],ax
 00659F36    lea         eax,[ebp-10]
 00659F39    push        eax
 00659F3A    mov         cx,word ptr [ebp-6]
 00659F3E    mov         dx,word ptr [ebp-4]
 00659F42    mov         ax,word ptr [ebp-2]
 00659F46    call        00659E20
 00659F4B    test        al,al
>00659F4D    jne         00659F59
 00659F4F    mov         eax,[006EA13C]
 00659F54    call        006573FC
 00659F59    fld         qword ptr [ebp-10]
 00659F5C    mov         esp,ebp
 00659F5E    pop         ebp
 00659F5F    ret
*}
end;

//00659F60
{*function sub_00659F60(?:TSystemTime; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00659F60    push        ebp
 00659F61    mov         ebp,esp
 00659F63    add         esp,0FFFFFFD8
 00659F66    mov         dword ptr [ebp-0C],ecx
 00659F69    mov         dword ptr [ebp-8],edx
 00659F6C    mov         dword ptr [ebp-4],eax
 00659F6F    push        dword ptr [ebp+10]
 00659F72    push        dword ptr [ebp+0C]
 00659F75    lea         eax,[ebp-28]
 00659F78    call        DateTimeToTimeStamp
 00659F7D    mov         eax,dword ptr [ebp-24]
 00659F80    mov         dword ptr [ebp-1C],eax
 00659F83    cmp         dword ptr [ebp-1C],0
>00659F87    jg          00659FB2
 00659F89    mov         eax,dword ptr [ebp-4]
 00659F8C    mov         word ptr [eax],0
 00659F91    mov         eax,dword ptr [ebp-8]
 00659F94    mov         word ptr [eax],0
 00659F99    mov         eax,dword ptr [ebp-0C]
 00659F9C    mov         word ptr [eax],0
 00659FA1    mov         eax,dword ptr [ebp+8]
 00659FA4    mov         word ptr [eax],0
 00659FA9    mov         byte ptr [ebp-0D],0
>00659FAD    jmp         0065A0D0
 00659FB2    mov         eax,dword ptr [ebp-1C]
 00659FB5    mov         ecx,7
 00659FBA    cdq
 00659FBB    idiv        eax,ecx
 00659FBD    inc         edx
 00659FBE    mov         eax,dword ptr [ebp+8]
 00659FC1    mov         word ptr [eax],dx
 00659FC4    dec         dword ptr [ebp-1C]
 00659FC7    mov         word ptr [ebp-10],1
 00659FCD    cmp         dword ptr [ebp-1C],23AB1
>00659FD4    jl          00659FEC
 00659FD6    sub         dword ptr [ebp-1C],23AB1
 00659FDD    add         word ptr [ebp-10],190
 00659FE3    cmp         dword ptr [ebp-1C],23AB1
>00659FEA    jge         00659FD6
 00659FEC    lea         eax,[ebp-14]
 00659FEF    push        eax
 00659FF0    lea         ecx,[ebp-16]
 00659FF3    mov         dx,8EAC
 00659FF7    mov         eax,dword ptr [ebp-1C]
 00659FFA    call        DivMod
 00659FFF    cmp         word ptr [ebp-16],4
>0065A004    jne         0065A010
 0065A006    dec         word ptr [ebp-16]
 0065A00A    add         word ptr [ebp-14],8EAC
 0065A010    imul        ax,word ptr [ebp-16],64
 0065A015    add         word ptr [ebp-10],ax
 0065A019    lea         eax,[ebp-14]
 0065A01C    push        eax
 0065A01D    lea         ecx,[ebp-16]
 0065A020    movzx       eax,word ptr [ebp-14]
 0065A024    mov         dx,5B5
 0065A028    call        DivMod
 0065A02D    mov         ax,word ptr [ebp-16]
 0065A031    shl         eax,2
 0065A034    add         word ptr [ebp-10],ax
 0065A038    lea         eax,[ebp-14]
 0065A03B    push        eax
 0065A03C    lea         ecx,[ebp-16]
 0065A03F    movzx       eax,word ptr [ebp-14]
 0065A043    mov         dx,16D
 0065A047    call        DivMod
 0065A04C    cmp         word ptr [ebp-16],4
>0065A051    jne         0065A05D
 0065A053    dec         word ptr [ebp-16]
 0065A057    add         word ptr [ebp-14],16D
 0065A05D    mov         ax,word ptr [ebp-16]
 0065A061    add         word ptr [ebp-10],ax
 0065A065    mov         ax,word ptr [ebp-10]
 0065A069    call        00659DDC
 0065A06E    mov         byte ptr [ebp-0D],al
 0065A071    xor         eax,eax
 0065A073    mov         al,byte ptr [ebp-0D]
 0065A076    lea         eax,[eax+eax*2]
 0065A079    lea         eax,[eax*8+6E49B4]
 0065A080    mov         dword ptr [ebp-20],eax
 0065A083    mov         word ptr [ebp-12],1
 0065A089    movzx       eax,word ptr [ebp-12]
 0065A08D    mov         edx,dword ptr [ebp-20]
 0065A090    mov         ax,word ptr [edx+eax*2-2]
 0065A095    mov         word ptr [ebp-16],ax
 0065A099    mov         ax,word ptr [ebp-14]
 0065A09D    cmp         ax,word ptr [ebp-16]
>0065A0A1    jb          0065A0B1
 0065A0A3    mov         ax,word ptr [ebp-16]
 0065A0A7    sub         word ptr [ebp-14],ax
 0065A0AB    inc         word ptr [ebp-12]
>0065A0AF    jmp         0065A089
 0065A0B1    mov         eax,dword ptr [ebp-4]
 0065A0B4    mov         dx,word ptr [ebp-10]
 0065A0B8    mov         word ptr [eax],dx
 0065A0BB    mov         eax,dword ptr [ebp-8]
 0065A0BE    mov         dx,word ptr [ebp-12]
 0065A0C2    mov         word ptr [eax],dx
 0065A0C5    mov         ax,word ptr [ebp-14]
 0065A0C9    inc         eax
 0065A0CA    mov         edx,dword ptr [ebp-0C]
 0065A0CD    mov         word ptr [edx],ax
 0065A0D0    mov         al,byte ptr [ebp-0D]
 0065A0D3    mov         esp,ebp
 0065A0D5    pop         ebp
 0065A0D6    ret         0C
end;*}

//0065A0DC
procedure DecodeDate(var Year:Word; var Month:Word; var Day:Word; const DateTime:TDateTime);
begin
{*
 0065A0DC    push        ebp
 0065A0DD    mov         ebp,esp
 0065A0DF    add         esp,0FFFFFFF0
 0065A0E2    mov         dword ptr [ebp-0C],ecx
 0065A0E5    mov         dword ptr [ebp-8],edx
 0065A0E8    mov         dword ptr [ebp-4],eax
 0065A0EB    push        dword ptr [ebp+0C]
 0065A0EE    push        dword ptr [ebp+8]
 0065A0F1    lea         eax,[ebp-0E]
 0065A0F4    push        eax
 0065A0F5    mov         ecx,dword ptr [ebp-0C]
 0065A0F8    mov         edx,dword ptr [ebp-8]
 0065A0FB    mov         eax,dword ptr [ebp-4]
 0065A0FE    call        00659F60
 0065A103    mov         esp,ebp
 0065A105    pop         ebp
 0065A106    ret         8
*}
end;

//0065A10C
{*procedure sub_0065A10C(?:TSystemTime; ?:?; ?:?);
begin
 0065A10C    push        ebp
 0065A10D    mov         ebp,esp
 0065A10F    push        ecx
 0065A110    mov         dword ptr [ebp-4],eax
 0065A113    push        dword ptr [ebp+0C]
 0065A116    push        dword ptr [ebp+8]
 0065A119    mov         eax,dword ptr [ebp-4]
 0065A11C    add         eax,4
 0065A11F    push        eax
 0065A120    mov         ecx,dword ptr [ebp-4]
 0065A123    add         ecx,6
 0065A126    mov         edx,dword ptr [ebp-4]
 0065A129    add         edx,2
 0065A12C    mov         eax,dword ptr [ebp-4]
 0065A12F    call        00659F60
 0065A134    mov         eax,dword ptr [ebp-4]
 0065A137    dec         word ptr [eax+4]
 0065A13B    push        dword ptr [ebp+0C]
 0065A13E    push        dword ptr [ebp+8]
 0065A141    mov         eax,dword ptr [ebp-4]
 0065A144    add         eax,0E
 0065A147    push        eax
 0065A148    mov         ecx,dword ptr [ebp-4]
 0065A14B    add         ecx,0C
 0065A14E    mov         edx,dword ptr [ebp-4]
 0065A151    add         edx,0A
 0065A154    mov         eax,dword ptr [ebp-4]
 0065A157    add         eax,8
 0065A15A    call        DecodeTime
 0065A15F    pop         ecx
 0065A160    pop         ebp
 0065A161    ret         8
end;*}

//0065A164
{*function sub_0065A164(?:TSystemTime):?;
begin
 0065A164    push        ebp
 0065A165    mov         ebp,esp
 0065A167    add         esp,0FFFFFFF0
 0065A16A    mov         dword ptr [ebp-4],eax
 0065A16D    mov         ecx,dword ptr [ebp-4]
 0065A170    mov         cx,word ptr [ecx+6]
 0065A174    mov         edx,dword ptr [ebp-4]
 0065A177    mov         dx,word ptr [edx+2]
 0065A17B    mov         eax,dword ptr [ebp-4]
 0065A17E    mov         ax,word ptr [eax]
 0065A181    call        EncodeDate
 0065A186    fstp        qword ptr [ebp-10]
 0065A189    wait
 0065A18A    fld         qword ptr [ebp-10]
 0065A18D    fcomp       dword ptr ds:[65A1F4];0:Single
 0065A193    fnstsw      al
 0065A195    sahf
>0065A196    jb          0065A1C3
 0065A198    mov         eax,dword ptr [ebp-4]
 0065A19B    mov         ax,word ptr [eax+0E]
 0065A19F    push        eax
 0065A1A0    mov         ecx,dword ptr [ebp-4]
 0065A1A3    mov         cx,word ptr [ecx+0C]
 0065A1A7    mov         edx,dword ptr [ebp-4]
 0065A1AA    mov         dx,word ptr [edx+0A]
 0065A1AE    mov         eax,dword ptr [ebp-4]
 0065A1B1    mov         ax,word ptr [eax+8]
 0065A1B5    call        00659D38
 0065A1BA    fadd        qword ptr [ebp-10]
 0065A1BD    fstp        qword ptr [ebp-10]
 0065A1C0    wait
>0065A1C1    jmp         0065A1EC
 0065A1C3    mov         eax,dword ptr [ebp-4]
 0065A1C6    mov         ax,word ptr [eax+0E]
 0065A1CA    push        eax
 0065A1CB    mov         ecx,dword ptr [ebp-4]
 0065A1CE    mov         cx,word ptr [ecx+0C]
 0065A1D2    mov         edx,dword ptr [ebp-4]
 0065A1D5    mov         dx,word ptr [edx+0A]
 0065A1D9    mov         eax,dword ptr [ebp-4]
 0065A1DC    mov         ax,word ptr [eax+8]
 0065A1E0    call        00659D38
 0065A1E5    fsubr       qword ptr [ebp-10]
 0065A1E8    fstp        qword ptr [ebp-10]
 0065A1EB    wait
 0065A1EC    fld         qword ptr [ebp-10]
 0065A1EF    mov         esp,ebp
 0065A1F1    pop         ebp
 0065A1F2    ret
end;*}

//0065A1F8
{*function sub_0065A1F8(?:?; ?:?):?;
begin
 0065A1F8    push        ebp
 0065A1F9    mov         ebp,esp
 0065A1FB    add         esp,0FFFFFFF4
 0065A1FE    push        dword ptr [ebp+0C]
 0065A201    push        dword ptr [ebp+8]
 0065A204    lea         eax,[ebp-0C]
 0065A207    call        DateTimeToTimeStamp
 0065A20C    mov         eax,dword ptr [ebp-8]
 0065A20F    mov         ecx,7
 0065A214    cdq
 0065A215    idiv        eax,ecx
 0065A217    inc         edx
 0065A218    mov         word ptr [ebp-2],dx
 0065A21C    mov         ax,word ptr [ebp-2]
 0065A220    mov         esp,ebp
 0065A222    pop         ebp
 0065A223    ret         8
end;*}

//0065A228
function Date:TDateTime;
begin
{*
 0065A228    push        ebp
 0065A229    mov         ebp,esp
 0065A22B    add         esp,0FFFFFFE8
 0065A22E    lea         eax,[ebp-18]
 0065A231    push        eax
 0065A232    call        KERNEL32.GetLocalTime
 0065A237    mov         cx,word ptr [ebp-12]
 0065A23B    mov         dx,word ptr [ebp-16]
 0065A23F    mov         ax,word ptr [ebp-18]
 0065A243    call        EncodeDate
 0065A248    fstp        qword ptr [ebp-8]
 0065A24B    wait
 0065A24C    fld         qword ptr [ebp-8]
 0065A24F    mov         esp,ebp
 0065A251    pop         ebp
 0065A252    ret
*}
end;

//0065A254
procedure sub_0065A254;
begin
{*
 0065A254    push        ebp
 0065A255    mov         ebp,esp
 0065A257    add         esp,0FFFFFFE0
 0065A25A    lea         eax,[ebp-18]
 0065A25D    push        eax
 0065A25E    call        KERNEL32.GetLocalTime
 0065A263    mov         cx,word ptr [ebp-12]
 0065A267    mov         dx,word ptr [ebp-16]
 0065A26B    mov         ax,word ptr [ebp-18]
 0065A26F    call        EncodeDate
 0065A274    fstp        qword ptr [ebp-20]
 0065A277    wait
 0065A278    mov         ax,word ptr [ebp-0A]
 0065A27C    push        eax
 0065A27D    mov         cx,word ptr [ebp-0C]
 0065A281    mov         dx,word ptr [ebp-0E]
 0065A285    mov         ax,word ptr [ebp-10]
 0065A289    call        00659D38
 0065A28E    fadd        qword ptr [ebp-20]
 0065A291    fstp        qword ptr [ebp-8]
 0065A294    wait
 0065A295    fld         qword ptr [ebp-8]
 0065A298    mov         esp,ebp
 0065A29A    pop         ebp
 0065A29B    ret
*}
end;

//0065A29C
procedure ReplaceTime(var DateTime:TDateTime; const NewTime:TDateTime);
begin
{*
 0065A29C    push        ebp
 0065A29D    mov         ebp,esp
 0065A29F    add         esp,0FFFFFFF4
 0065A2A2    mov         dword ptr [ebp-4],eax
 0065A2A5    mov         eax,dword ptr [ebp-4]
 0065A2A8    fld         qword ptr [eax]
 0065A2AA    call        @TRUNC
 0065A2AF    mov         dword ptr [ebp-0C],eax
 0065A2B2    mov         dword ptr [ebp-8],edx
 0065A2B5    fild        qword ptr [ebp-0C]
 0065A2B8    mov         eax,dword ptr [ebp-4]
 0065A2BB    fstp        qword ptr [eax]
 0065A2BD    wait
 0065A2BE    mov         eax,dword ptr [ebp-4]
 0065A2C1    fld         qword ptr [eax]
 0065A2C3    fcomp       dword ptr ds:[65A300]
 0065A2C9    fnstsw      al
 0065A2CB    sahf
>0065A2CC    jb          0065A2E5
 0065A2CE    fld         qword ptr [ebp+8]
 0065A2D1    call        @FRAC
 0065A2D6    fabs
 0065A2D8    mov         eax,dword ptr [ebp-4]
 0065A2DB    fadd        qword ptr [eax]
 0065A2DD    mov         eax,dword ptr [ebp-4]
 0065A2E0    fstp        qword ptr [eax]
 0065A2E2    wait
>0065A2E3    jmp         0065A2FA
 0065A2E5    fld         qword ptr [ebp+8]
 0065A2E8    call        @FRAC
 0065A2ED    fabs
 0065A2EF    mov         eax,dword ptr [ebp-4]
 0065A2F2    fsubr       qword ptr [eax]
 0065A2F4    mov         eax,dword ptr [ebp-4]
 0065A2F7    fstp        qword ptr [eax]
 0065A2F9    wait
 0065A2FA    mov         esp,ebp
 0065A2FC    pop         ebp
 0065A2FD    ret         8
*}
end;

//0065A304
{*procedure sub_0065A304(?:?; ?:?; ?:?);
begin
 0065A304    push        ebp
 0065A305    mov         ebp,esp
 0065A307    add         esp,0FFFFFFF0
 0065A30A    mov         dword ptr [ebp-4],eax
 0065A30D    mov         eax,dword ptr [ebp+8]
 0065A310    mov         dword ptr [ebp-10],eax
 0065A313    mov         eax,dword ptr [ebp+0C]
 0065A316    mov         dword ptr [ebp-0C],eax
 0065A319    mov         eax,dword ptr [ebp-4]
 0065A31C    push        dword ptr [eax+4]
 0065A31F    push        dword ptr [eax]
 0065A321    lea         eax,[ebp-10]
 0065A324    call        ReplaceTime
 0065A329    mov         eax,dword ptr [ebp-4]
 0065A32C    mov         edx,dword ptr [ebp-10]
 0065A32F    mov         dword ptr [eax],edx
 0065A331    mov         edx,dword ptr [ebp-0C]
 0065A334    mov         dword ptr [eax+4],edx
 0065A337    mov         esp,ebp
 0065A339    pop         ebp
 0065A33A    ret         8
end;*}

//0065A340
{*function sub_0065A340:?;
begin
 0065A340    push        ebp
 0065A341    mov         ebp,esp
 0065A343    add         esp,0FFFFFFEC
 0065A346    lea         eax,[ebp-12]
 0065A349    push        eax
 0065A34A    call        KERNEL32.GetLocalTime
 0065A34F    mov         ax,word ptr [ebp-12]
 0065A353    mov         word ptr [ebp-2],ax
 0065A357    mov         ax,word ptr [ebp-2]
 0065A35B    mov         esp,ebp
 0065A35D    pop         ebp
 0065A35E    ret
end;*}

//0065A360
{*procedure sub_0065A360(?:void ; ?:Integer; ?:?);
begin
 0065A360    push        ebp
 0065A361    mov         ebp,esp
 0065A363    add         esp,0FFFFFFF4
 0065A366    mov         dword ptr [ebp-8],edx
 0065A369    mov         dword ptr [ebp-4],eax
 0065A36C    mov         eax,dword ptr [ebp+8]
 0065A36F    mov         edx,100
 0065A374    sub         edx,dword ptr [eax-104]
 0065A37A    mov         dword ptr [ebp-0C],edx
 0065A37D    mov         eax,dword ptr [ebp-0C]
 0065A380    cmp         eax,dword ptr [ebp-8]
>0065A383    jle         0065A38B
 0065A385    mov         eax,dword ptr [ebp-8]
 0065A388    mov         dword ptr [ebp-0C],eax
 0065A38B    cmp         dword ptr [ebp-0C],0
>0065A38F    je          0065A3AF
 0065A391    mov         eax,dword ptr [ebp+8]
 0065A394    mov         eax,dword ptr [eax-104]
 0065A39A    mov         edx,dword ptr [ebp+8]
 0065A39D    lea         edx,[edx+eax-100]
 0065A3A4    mov         eax,dword ptr [ebp-4]
 0065A3A7    mov         ecx,dword ptr [ebp-0C]
 0065A3AA    call        Move
 0065A3AF    mov         eax,dword ptr [ebp+8]
 0065A3B2    mov         edx,dword ptr [ebp-0C]
 0065A3B5    add         dword ptr [eax-104],edx
 0065A3BB    mov         esp,ebp
 0065A3BD    pop         ebp
 0065A3BE    ret
end;*}

//0065A3C0
{*procedure sub_0065A3C0(?:?; ?:?);
begin
 0065A3C0    push        ebp
 0065A3C1    mov         ebp,esp
 0065A3C3    push        ecx
 0065A3C4    mov         dword ptr [ebp-4],eax
 0065A3C7    mov         eax,dword ptr [ebp+8]
 0065A3CA    push        eax
 0065A3CB    mov         eax,dword ptr [ebp-4]
 0065A3CE    call        @LStrLen
 0065A3D3    mov         edx,eax
 0065A3D5    mov         eax,dword ptr [ebp-4]
 0065A3D8    call        0065A360
 0065A3DD    pop         ecx
 0065A3DE    pop         ecx
 0065A3DF    pop         ebp
 0065A3E0    ret
end;*}

//0065A3E4
{*procedure sub_0065A3E4(?:?; ?:?; ?:?);
begin
 0065A3E4    push        ebp
 0065A3E5    mov         ebp,esp
 0065A3E7    add         esp,0FFFFFFD8
 0065A3EA    mov         dword ptr [ebp-8],edx
 0065A3ED    mov         dword ptr [ebp-4],eax
 0065A3F0    mov         eax,dword ptr [ebp+8]
 0065A3F3    push        eax
 0065A3F4    push        4
 0065A3F6    mov         eax,dword ptr [ebp-8]
 0065A3F9    mov         dword ptr [ebp-28],eax
 0065A3FC    mov         byte ptr [ebp-24],0
 0065A400    mov         eax,dword ptr [ebp-4]
 0065A403    mov         dword ptr [ebp-20],eax
 0065A406    mov         byte ptr [ebp-1C],0
 0065A40A    lea         eax,[ebp-28]
 0065A40D    push        eax
 0065A40E    push        1
 0065A410    mov         ecx,6E4A68
 0065A415    lea         eax,[ebp-18]
 0065A418    mov         edx,10
 0065A41D    call        FormatBuf
 0065A422    mov         edx,eax
 0065A424    lea         eax,[ebp-18]
 0065A427    call        0065A360
 0065A42C    pop         ecx
 0065A42D    mov         esp,ebp
 0065A42F    pop         ebp
 0065A430    ret
end;*}

//0065A434
{*procedure sub_0065A434(?:?);
begin
 0065A434    push        ebp
 0065A435    mov         ebp,esp
 0065A437    push        ecx
 0065A438    mov         eax,dword ptr [ebp+8]
 0065A43B    mov         eax,dword ptr [eax-4]
 0065A43E    mov         dword ptr [ebp-4],eax
>0065A441    jmp         0065A449
 0065A443    mov         eax,dword ptr [ebp+8]
 0065A446    inc         dword ptr [eax-4]
 0065A449    mov         eax,dword ptr [ebp+8]
 0065A44C    mov         eax,dword ptr [eax-4]
 0065A44F    mov         al,byte ptr [eax]
 0065A451    mov         edx,dword ptr [ebp+8]
 0065A454    cmp         al,byte ptr [edx-5]
>0065A457    je          0065A443
 0065A459    mov         eax,dword ptr [ebp+8]
 0065A45C    mov         eax,dword ptr [eax-4]
 0065A45F    sub         eax,dword ptr [ebp-4]
 0065A462    inc         eax
 0065A463    mov         edx,dword ptr [ebp+8]
 0065A466    mov         dword ptr [edx-0C],eax
 0065A469    pop         ecx
 0065A46A    pop         ebp
 0065A46B    ret
end;*}

//0065A46C
procedure GetDate;
begin
{*
 0065A46C    push        ebp
 0065A46D    mov         ebp,esp
 0065A46F    mov         eax,dword ptr [ebp+8]
 0065A472    cmp         byte ptr [eax-13],0
>0065A476    jne         0065A4A2
 0065A478    mov         eax,dword ptr [ebp+8]
 0065A47B    mov         eax,dword ptr [eax+8]
 0065A47E    push        dword ptr [eax+0C]
 0065A481    push        dword ptr [eax+8]
 0065A484    mov         eax,dword ptr [ebp+8]
 0065A487    lea         ecx,[eax-12]
 0065A48A    mov         eax,dword ptr [ebp+8]
 0065A48D    lea         edx,[eax-10]
 0065A490    mov         eax,dword ptr [ebp+8]
 0065A493    add         eax,0FFFFFFF2
 0065A496    call        DecodeDate
 0065A49B    mov         eax,dword ptr [ebp+8]
 0065A49E    mov         byte ptr [eax-13],1
 0065A4A2    pop         ebp
 0065A4A3    ret
*}
end;

//0065A4A4
procedure GetTime;
begin
{*
 0065A4A4    push        ebp
 0065A4A5    mov         ebp,esp
 0065A4A7    mov         eax,dword ptr [ebp+8]
 0065A4AA    cmp         byte ptr [eax-1D],0
>0065A4AE    jne         0065A4E1
 0065A4B0    mov         eax,dword ptr [ebp+8]
 0065A4B3    mov         eax,dword ptr [eax+8]
 0065A4B6    push        dword ptr [eax+0C]
 0065A4B9    push        dword ptr [eax+8]
 0065A4BC    mov         eax,dword ptr [ebp+8]
 0065A4BF    add         eax,0FFFFFFE4
 0065A4C2    push        eax
 0065A4C3    mov         eax,dword ptr [ebp+8]
 0065A4C6    lea         ecx,[eax-1A]
 0065A4C9    mov         eax,dword ptr [ebp+8]
 0065A4CC    lea         edx,[eax-18]
 0065A4CF    mov         eax,dword ptr [ebp+8]
 0065A4D2    add         eax,0FFFFFFEA
 0065A4D5    call        DecodeTime
 0065A4DA    mov         eax,dword ptr [ebp+8]
 0065A4DD    mov         byte ptr [eax-1D],1
 0065A4E1    pop         ebp
 0065A4E2    ret
*}
end;

//0065A4E4
{*procedure sub_0065A4E4(?:?; ?:?; ?:?);
begin
 0065A4E4    push        ebp
 0065A4E5    mov         ebp,esp
 0065A4E7    add         esp,0FFFFFEDC
 0065A4ED    xor         ecx,ecx
 0065A4EF    mov         dword ptr [ebp-124],ecx
 0065A4F5    mov         dword ptr [ebp-0C],ecx
 0065A4F8    mov         dword ptr [ebp-8],edx
 0065A4FB    mov         dword ptr [ebp-4],eax
 0065A4FE    xor         eax,eax
 0065A500    push        ebp
 0065A501    push        65A651
 0065A506    push        dword ptr fs:[eax]
 0065A509    mov         dword ptr fs:[eax],esp
 0065A50C    mov         eax,dword ptr [ebp-8]
 0065A50F    call        @LStrClr
 0065A514    mov         eax,dword ptr [ebp+8]
 0065A517    mov         ax,word ptr [eax-0E]
 0065A51B    mov         word ptr [ebp-20],ax
 0065A51F    mov         eax,dword ptr [ebp+8]
 0065A522    mov         ax,word ptr [eax-10]
 0065A526    mov         word ptr [ebp-1E],ax
 0065A52A    mov         eax,dword ptr [ebp+8]
 0065A52D    mov         ax,word ptr [eax-12]
 0065A531    mov         word ptr [ebp-1A],ax
 0065A535    lea         eax,[ebp-0C]
 0065A538    mov         edx,65A664;'gg'
 0065A53D    call        @LStrLAsg
 0065A542    push        100
 0065A547    lea         eax,[ebp-120]
 0065A54D    push        eax
 0065A54E    mov         eax,dword ptr [ebp-0C]
 0065A551    call        @LStrToPChar
 0065A556    push        eax
 0065A557    lea         eax,[ebp-20]
 0065A55A    push        eax
 0065A55B    push        4
 0065A55D    call        KERNEL32.GetThreadLocale
 0065A562    push        eax
 0065A563    call        KERNEL32.GetDateFormatA
 0065A568    test        eax,eax
>0065A56A    je          0065A630
 0065A570    mov         eax,dword ptr [ebp-8]
 0065A573    lea         edx,[ebp-120]
 0065A579    mov         ecx,100
 0065A57E    call        @LStrFromArray
 0065A583    cmp         dword ptr [ebp-4],1
>0065A587    jne         0065A630
 0065A58D    mov         eax,[006ED0D4];0x0 gvar_006ED0D4
 0065A592    sub         eax,4
>0065A595    je          0065A5C6
 0065A597    sub         eax,0D
>0065A59A    jne         0065A630
 0065A5A0    mov         eax,dword ptr [ebp-8]
 0065A5A3    push        eax
 0065A5A4    mov         eax,dword ptr [ebp-8]
 0065A5A7    mov         eax,dword ptr [eax]
 0065A5A9    mov         edx,1
 0065A5AE    call        0065D1EC
 0065A5B3    mov         ecx,eax
 0065A5B5    mov         eax,dword ptr [ebp-8]
 0065A5B8    mov         eax,dword ptr [eax]
 0065A5BA    mov         edx,1
 0065A5BF    call        @LStrCopy
>0065A5C4    jmp         0065A630
 0065A5C6    cmp         dword ptr ds:[6ED0D8],1;gvar_006ED0D8
>0065A5CD    jne         0065A630
 0065A5CF    mov         eax,dword ptr [ebp-8]
 0065A5D2    mov         eax,dword ptr [eax]
 0065A5D4    call        @LStrLen
 0065A5D9    mov         edx,eax
 0065A5DB    mov         eax,dword ptr [ebp-8]
 0065A5DE    mov         eax,dword ptr [eax]
 0065A5E0    call        0065CFFC
 0065A5E5    cmp         eax,4
>0065A5E8    jne         0065A630
 0065A5EA    mov         eax,dword ptr [ebp-8]
 0065A5ED    mov         eax,dword ptr [eax]
 0065A5EF    mov         edx,3
 0065A5F4    call        0065D174
 0065A5F9    lea         edx,[ebp-120]
 0065A5FF    add         eax,edx
 0065A601    dec         eax
 0065A602    mov         dword ptr [ebp-10],eax
 0065A605    lea         eax,[ebp-124]
 0065A60B    mov         edx,dword ptr [ebp-10]
 0065A60E    call        @LStrFromPChar
 0065A613    mov         eax,dword ptr [ebp-124]
 0065A619    mov         edx,2
 0065A61E    call        0065D1EC
 0065A623    mov         ecx,eax
 0065A625    mov         eax,dword ptr [ebp-8]
 0065A628    mov         edx,dword ptr [ebp-10]
 0065A62B    call        @LStrFromPCharLen
 0065A630    xor         eax,eax
 0065A632    pop         edx
 0065A633    pop         ecx
 0065A634    pop         ecx
 0065A635    mov         dword ptr fs:[eax],edx
 0065A638    push        65A658
 0065A63D    lea         eax,[ebp-124]
 0065A643    call        @LStrClr
 0065A648    lea         eax,[ebp-0C]
 0065A64B    call        @LStrClr
 0065A650    ret
>0065A651    jmp         @HandleFinally
>0065A656    jmp         0065A63D
 0065A658    mov         esp,ebp
 0065A65A    pop         ebp
 0065A65B    ret
end;*}

//0065A668
{*procedure sub_0065A668(?:?; ?:?; ?:?);
begin
 0065A668    push        ebp
 0065A669    mov         ebp,esp
 0065A66B    add         esp,0FFFFFEE4
 0065A671    xor         ecx,ecx
 0065A673    mov         dword ptr [ebp-0C],ecx
 0065A676    mov         dword ptr [ebp-8],edx
 0065A679    mov         dword ptr [ebp-4],eax
 0065A67C    xor         eax,eax
 0065A67E    push        ebp
 0065A67F    push        65A758
 0065A684    push        dword ptr fs:[eax]
 0065A687    mov         dword ptr fs:[eax],esp
 0065A68A    mov         eax,dword ptr [ebp-8]
 0065A68D    call        @LStrClr
 0065A692    mov         eax,dword ptr [ebp+8]
 0065A695    mov         ax,word ptr [eax-0E]
 0065A699    mov         word ptr [ebp-1C],ax
 0065A69D    mov         eax,dword ptr [ebp+8]
 0065A6A0    mov         ax,word ptr [eax-10]
 0065A6A4    mov         word ptr [ebp-1A],ax
 0065A6A8    mov         eax,dword ptr [ebp+8]
 0065A6AB    mov         ax,word ptr [eax-12]
 0065A6AF    mov         word ptr [ebp-16],ax
 0065A6B3    cmp         dword ptr [ebp-4],2
>0065A6B7    jg          0065A6C8
 0065A6B9    lea         eax,[ebp-0C]
 0065A6BC    mov         edx,65A76C;'yy'
 0065A6C1    call        @LStrLAsg
>0065A6C6    jmp         0065A6D5
 0065A6C8    lea         eax,[ebp-0C]
 0065A6CB    mov         edx,65A778;'yyyy'
 0065A6D0    call        @LStrLAsg
 0065A6D5    push        100
 0065A6DA    lea         eax,[ebp-11C]
 0065A6E0    push        eax
 0065A6E1    mov         eax,dword ptr [ebp-0C]
 0065A6E4    call        @LStrToPChar
 0065A6E9    push        eax
 0065A6EA    lea         eax,[ebp-1C]
 0065A6ED    push        eax
 0065A6EE    push        4
 0065A6F0    call        KERNEL32.GetThreadLocale
 0065A6F5    push        eax
 0065A6F6    call        KERNEL32.GetDateFormatA
 0065A6FB    test        eax,eax
>0065A6FD    je          0065A742
 0065A6FF    mov         eax,dword ptr [ebp-8]
 0065A702    lea         edx,[ebp-11C]
 0065A708    mov         ecx,100
 0065A70D    call        @LStrFromArray
 0065A712    cmp         dword ptr [ebp-4],1
>0065A716    jne         0065A742
 0065A718    mov         eax,dword ptr [ebp-8]
 0065A71B    mov         eax,dword ptr [eax]
 0065A71D    cmp         byte ptr [eax],30
>0065A720    jne         0065A742
 0065A722    mov         eax,dword ptr [ebp-8]
 0065A725    push        eax
 0065A726    mov         eax,dword ptr [ebp-8]
 0065A729    mov         eax,dword ptr [eax]
 0065A72B    call        @LStrLen
 0065A730    mov         ecx,eax
 0065A732    dec         ecx
 0065A733    mov         eax,dword ptr [ebp-8]
 0065A736    mov         eax,dword ptr [eax]
 0065A738    mov         edx,2
 0065A73D    call        @LStrCopy
 0065A742    xor         eax,eax
 0065A744    pop         edx
 0065A745    pop         ecx
 0065A746    pop         ecx
 0065A747    mov         dword ptr fs:[eax],edx
 0065A74A    push        65A75F
 0065A74F    lea         eax,[ebp-0C]
 0065A752    call        @LStrClr
 0065A757    ret
>0065A758    jmp         @HandleFinally
>0065A75D    jmp         0065A74F
 0065A75F    mov         esp,ebp
 0065A761    pop         ebp
 0065A762    ret
end;*}

//0065A780
{*procedure sub_0065A780(?:?; ?:?);
begin
 0065A780    push        ebp
 0065A781    mov         ebp,esp
 0065A783    add         esp,0FFFFFFCC
 0065A786    xor         edx,edx
 0065A788    mov         dword ptr [ebp-34],edx
 0065A78B    mov         dword ptr [ebp-30],edx
 0065A78E    mov         dword ptr [ebp-4],eax
 0065A791    xor         eax,eax
 0065A793    push        ebp
 0065A794    push        65AF34
 0065A799    push        dword ptr fs:[eax]
 0065A79C    mov         dword ptr fs:[eax],esp
 0065A79F    cmp         dword ptr [ebp-4],0
>0065A7A3    je          0065AF19
 0065A7A9    mov         eax,dword ptr [ebp+8]
 0065A7AC    cmp         dword ptr [eax-108],2
>0065A7B3    jge         0065AF19
 0065A7B9    mov         eax,dword ptr [ebp+8]
 0065A7BC    inc         dword ptr [eax-108]
 0065A7C2    mov         byte ptr [ebp-1F],20
 0065A7C6    mov         byte ptr [ebp-13],0
 0065A7CA    mov         byte ptr [ebp-1D],0
 0065A7CE    mov         byte ptr [ebp-20],0
>0065A7D2    jmp         0065AF04
 0065A7D7    mov         eax,dword ptr [ebp-4]
 0065A7DA    mov         al,byte ptr [eax]
 0065A7DC    mov         byte ptr [ebp-5],al
 0065A7DF    mov         eax,dword ptr [ebp-4]
 0065A7E2    call        0065D294
 0065A7E7    mov         dword ptr [ebp-4],eax
 0065A7EA    mov         al,byte ptr [ebp-5]
 0065A7ED    and         eax,0FF
 0065A7F2    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065A7F9    jae         0065A804
 0065A7FB    mov         byte ptr [ebp-1F],20
>0065A7FF    jmp         0065AF04
 0065A804    mov         al,byte ptr [ebp-5]
 0065A807    mov         byte ptr [ebp-1E],al
 0065A80A    mov         al,byte ptr [ebp-1E]
 0065A80D    add         al,9F
 0065A80F    sub         al,1A
>0065A811    jae         0065A817
 0065A813    sub         byte ptr [ebp-1E],20
 0065A817    mov         al,byte ptr [ebp-1E]
 0065A81A    add         al,0BF
 0065A81C    sub         al,1A
>0065A81E    jae         0065A836
 0065A820    cmp         byte ptr [ebp-1E],4D
>0065A824    jne         0065A830
 0065A826    cmp         byte ptr [ebp-1F],48
>0065A82A    jne         0065A830
 0065A82C    mov         byte ptr [ebp-1E],4E
 0065A830    mov         al,byte ptr [ebp-1E]
 0065A833    mov         byte ptr [ebp-1F],al
 0065A836    xor         eax,eax
 0065A838    mov         al,byte ptr [ebp-1E]
 0065A83B    add         eax,0FFFFFFDE
 0065A83E    cmp         eax,38
>0065A841    ja          0065AEF2
 0065A847    mov         al,byte ptr [eax+65A854]
 0065A84D    jmp         dword ptr [eax*4+65A88D]
 0065A84D    db          15
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          15
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          13
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          14
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          11
 0065A84D    db          0
 0065A84D    db          12
 0065A84D    db          5
 0065A84D    db          3
 0065A84D    db          0
 0065A84D    db          2
 0065A84D    db          6
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          4
 0065A84D    db          7
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          8
 0065A84D    db          9
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          0
 0065A84D    db          1
 0065A84D    db          10
 0065A84D    dd          0065AEF2
 0065A84D    dd          0065A8CD
 0065A84D    dd          0065A91C
 0065A84D    dd          0065A949
 0065A84D    dd          0065A976
 0065A84D    dd          0065A9DB
 0065A84D    dd          0065AA88
 0065A84D    dd          0065ABA7
 0065A84D    dd          0065ABD8
 0065A84D    dd          0065AC09
 0065A84D    dd          0065AC3E
 0065A84D    dd          0065AC6F
 0065A84D    dd          0065ADEE
 0065A84D    dd          0065AE4C
 0065A84D    dd          0065AE72
 0065A84D    dd          0065AE95
 0065A8CD    push        ebp
 0065A8CE    call        0065A434
 0065A8D3    pop         ecx
 0065A8D4    push        ebp
 0065A8D5    call        GetDate
 0065A8DA    pop         ecx
 0065A8DB    cmp         dword ptr [ebp-0C],2
>0065A8DF    jg          0065A904
 0065A8E1    mov         eax,dword ptr [ebp+8]
 0065A8E4    push        eax
 0065A8E5    movzx       eax,word ptr [ebp-0E]
 0065A8E9    mov         ecx,64
 0065A8EE    xor         edx,edx
 0065A8F0    div         eax,ecx
 0065A8F2    mov         eax,edx
 0065A8F4    mov         edx,2
 0065A8F9    call        0065A3E4
 0065A8FE    pop         ecx
>0065A8FF    jmp         0065AF04
 0065A904    mov         eax,dword ptr [ebp+8]
 0065A907    push        eax
 0065A908    movzx       eax,word ptr [ebp-0E]
 0065A90C    mov         edx,4
 0065A911    call        0065A3E4
 0065A916    pop         ecx
>0065A917    jmp         0065AF04
 0065A91C    push        ebp
 0065A91D    call        0065A434
 0065A922    pop         ecx
 0065A923    push        ebp
 0065A924    call        GetDate
 0065A929    pop         ecx
 0065A92A    mov         eax,dword ptr [ebp+8]
 0065A92D    push        eax
 0065A92E    push        ebp
 0065A92F    lea         edx,[ebp-30]
 0065A932    mov         eax,dword ptr [ebp-0C]
 0065A935    call        0065A4E4
 0065A93A    pop         ecx
 0065A93B    mov         eax,dword ptr [ebp-30]
 0065A93E    call        0065A3C0
 0065A943    pop         ecx
>0065A944    jmp         0065AF04
 0065A949    push        ebp
 0065A94A    call        0065A434
 0065A94F    pop         ecx
 0065A950    push        ebp
 0065A951    call        GetDate
 0065A956    pop         ecx
 0065A957    mov         eax,dword ptr [ebp+8]
 0065A95A    push        eax
 0065A95B    push        ebp
 0065A95C    lea         edx,[ebp-34]
 0065A95F    mov         eax,dword ptr [ebp-0C]
 0065A962    call        0065A668
 0065A967    pop         ecx
 0065A968    mov         eax,dword ptr [ebp-34]
 0065A96B    call        0065A3C0
 0065A970    pop         ecx
>0065A971    jmp         0065AF04
 0065A976    push        ebp
 0065A977    call        0065A434
 0065A97C    pop         ecx
 0065A97D    push        ebp
 0065A97E    call        GetDate
 0065A983    pop         ecx
 0065A984    mov         eax,dword ptr [ebp-0C]
 0065A987    dec         eax
 0065A988    sub         eax,2
>0065A98B    jb          0065A991
>0065A98D    je          0065A9A7
>0065A98F    jmp         0065A9C1
 0065A991    mov         eax,dword ptr [ebp+8]
 0065A994    push        eax
 0065A995    movzx       eax,word ptr [ebp-10]
 0065A999    mov         edx,dword ptr [ebp-0C]
 0065A99C    call        0065A3E4
 0065A9A1    pop         ecx
>0065A9A2    jmp         0065AF04
 0065A9A7    mov         eax,dword ptr [ebp+8]
 0065A9AA    push        eax
 0065A9AB    movzx       eax,word ptr [ebp-10]
 0065A9AF    mov         eax,dword ptr [eax*4+6ED034];gvar_006ED034
 0065A9B6    call        0065A3C0
 0065A9BB    pop         ecx
>0065A9BC    jmp         0065AF04
 0065A9C1    mov         eax,dword ptr [ebp+8]
 0065A9C4    push        eax
 0065A9C5    movzx       eax,word ptr [ebp-10]
 0065A9C9    mov         eax,dword ptr [eax*4+6ED064]
 0065A9D0    call        0065A3C0
 0065A9D5    pop         ecx
>0065A9D6    jmp         0065AF04
 0065A9DB    push        ebp
 0065A9DC    call        0065A434
 0065A9E1    pop         ecx
 0065A9E2    mov         eax,dword ptr [ebp-0C]
 0065A9E5    dec         eax
 0065A9E6    sub         eax,2
>0065A9E9    jb          0065A9F5
>0065A9EB    je          0065AA12
 0065A9ED    dec         eax
>0065A9EE    je          0065AA39
 0065A9F0    dec         eax
>0065A9F1    je          0065AA60
>0065A9F3    jmp         0065AA74
 0065A9F5    push        ebp
 0065A9F6    call        GetDate
 0065A9FB    pop         ecx
 0065A9FC    mov         eax,dword ptr [ebp+8]
 0065A9FF    push        eax
 0065AA00    movzx       eax,word ptr [ebp-12]
 0065AA04    mov         edx,dword ptr [ebp-0C]
 0065AA07    call        0065A3E4
 0065AA0C    pop         ecx
>0065AA0D    jmp         0065AF04
 0065AA12    mov         eax,dword ptr [ebp+8]
 0065AA15    push        eax
 0065AA16    mov         eax,dword ptr [ebp+8]
 0065AA19    push        dword ptr [eax+0C]
 0065AA1C    push        dword ptr [eax+8]
 0065AA1F    call        0065A1F8
 0065AA24    movzx       eax,ax
 0065AA27    mov         eax,dword ptr [eax*4+6ED094]
 0065AA2E    call        0065A3C0
 0065AA33    pop         ecx
>0065AA34    jmp         0065AF04
 0065AA39    mov         eax,dword ptr [ebp+8]
 0065AA3C    push        eax
 0065AA3D    mov         eax,dword ptr [ebp+8]
 0065AA40    push        dword ptr [eax+0C]
 0065AA43    push        dword ptr [eax+8]
 0065AA46    call        0065A1F8
 0065AA4B    movzx       eax,ax
 0065AA4E    mov         eax,dword ptr [eax*4+6ED0B0]
 0065AA55    call        0065A3C0
 0065AA5A    pop         ecx
>0065AA5B    jmp         0065AF04
 0065AA60    mov         eax,dword ptr [ebp+8]
 0065AA63    push        eax
 0065AA64    mov         eax,[006ED01C];0x0 gvar_006ED01C
 0065AA69    call        0065A780
 0065AA6E    pop         ecx
>0065AA6F    jmp         0065AF04
 0065AA74    mov         eax,dword ptr [ebp+8]
 0065AA77    push        eax
 0065AA78    mov         eax,[006ED020];0x0 gvar_006ED020
 0065AA7D    call        0065A780
 0065AA82    pop         ecx
>0065AA83    jmp         0065AF04
 0065AA88    push        ebp
 0065AA89    call        0065A434
 0065AA8E    pop         ecx
 0065AA8F    push        ebp
 0065AA90    call        GetTime
 0065AA95    pop         ecx
 0065AA96    mov         byte ptr [ebp-21],0
 0065AA9A    mov         eax,dword ptr [ebp-4]
 0065AA9D    mov         dword ptr [ebp-28],eax
>0065AAA0    jmp         0065AB4F
 0065AAA5    mov         eax,dword ptr [ebp-28]
 0065AAA8    mov         al,byte ptr [eax]
 0065AAAA    and         eax,0FF
 0065AAAF    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065AAB6    jae         0065AAC8
 0065AAB8    mov         eax,dword ptr [ebp-28]
 0065AABB    call        0065D294
 0065AAC0    mov         dword ptr [ebp-28],eax
>0065AAC3    jmp         0065AB4F
 0065AAC8    mov         eax,dword ptr [ebp-28]
 0065AACB    movzx       eax,byte ptr [eax]
 0065AACE    cmp         eax,48
>0065AAD1    jg          0065AAEA
>0065AAD3    je          0065AB5B
 0065AAD9    sub         eax,22
>0065AADC    je          0065AB44
 0065AADE    sub         eax,5
>0065AAE1    je          0065AB44
 0065AAE3    sub         eax,1A
>0065AAE6    je          0065AAF6
>0065AAE8    jmp         0065AB4C
 0065AAEA    sub         eax,61
>0065AAED    je          0065AAF6
 0065AAEF    sub         eax,7
>0065AAF2    je          0065AB5B
>0065AAF4    jmp         0065AB4C
 0065AAF6    cmp         byte ptr [ebp-21],0
>0065AAFA    jne         0065AB4C
 0065AAFC    mov         edx,65AF40
 0065AB01    mov         ecx,5
 0065AB06    mov         eax,dword ptr [ebp-28]
 0065AB09    call        StrLIComp
 0065AB0E    test        eax,eax
>0065AB10    je          0065AB3E
 0065AB12    mov         edx,65AF48
 0065AB17    mov         ecx,3
 0065AB1C    mov         eax,dword ptr [ebp-28]
 0065AB1F    call        StrLIComp
 0065AB24    test        eax,eax
>0065AB26    je          0065AB3E
 0065AB28    mov         edx,65AF4C
 0065AB2D    mov         ecx,4
 0065AB32    mov         eax,dword ptr [ebp-28]
 0065AB35    call        StrLIComp
 0065AB3A    test        eax,eax
>0065AB3C    jne         0065AB5B
 0065AB3E    mov         byte ptr [ebp-20],1
>0065AB42    jmp         0065AB5B
 0065AB44    mov         al,byte ptr [ebp-21]
 0065AB47    xor         al,1
 0065AB49    mov         byte ptr [ebp-21],al
 0065AB4C    inc         dword ptr [ebp-28]
 0065AB4F    mov         eax,dword ptr [ebp-28]
 0065AB52    cmp         byte ptr [eax],0
>0065AB55    jne         0065AAA5
 0065AB5B    mov         ax,word ptr [ebp-16]
 0065AB5F    mov         word ptr [ebp-2A],ax
 0065AB63    cmp         byte ptr [ebp-20],0
>0065AB67    je          0065AB84
 0065AB69    cmp         word ptr [ebp-2A],0
>0065AB6E    jne         0065AB78
 0065AB70    mov         word ptr [ebp-2A],0C
>0065AB76    jmp         0065AB84
 0065AB78    cmp         word ptr [ebp-2A],0C
>0065AB7D    jbe         0065AB84
 0065AB7F    sub         word ptr [ebp-2A],0C
 0065AB84    cmp         dword ptr [ebp-0C],2
>0065AB88    jle         0065AB91
 0065AB8A    mov         dword ptr [ebp-0C],2
 0065AB91    mov         eax,dword ptr [ebp+8]
 0065AB94    push        eax
 0065AB95    movzx       eax,word ptr [ebp-2A]
 0065AB99    mov         edx,dword ptr [ebp-0C]
 0065AB9C    call        0065A3E4
 0065ABA1    pop         ecx
>0065ABA2    jmp         0065AF04
 0065ABA7    push        ebp
 0065ABA8    call        0065A434
 0065ABAD    pop         ecx
 0065ABAE    push        ebp
 0065ABAF    call        GetTime
 0065ABB4    pop         ecx
 0065ABB5    cmp         dword ptr [ebp-0C],2
>0065ABB9    jle         0065ABC2
 0065ABBB    mov         dword ptr [ebp-0C],2
 0065ABC2    mov         eax,dword ptr [ebp+8]
 0065ABC5    push        eax
 0065ABC6    movzx       eax,word ptr [ebp-18]
 0065ABCA    mov         edx,dword ptr [ebp-0C]
 0065ABCD    call        0065A3E4
 0065ABD2    pop         ecx
>0065ABD3    jmp         0065AF04
 0065ABD8    push        ebp
 0065ABD9    call        0065A434
 0065ABDE    pop         ecx
 0065ABDF    push        ebp
 0065ABE0    call        GetTime
 0065ABE5    pop         ecx
 0065ABE6    cmp         dword ptr [ebp-0C],2
>0065ABEA    jle         0065ABF3
 0065ABEC    mov         dword ptr [ebp-0C],2
 0065ABF3    mov         eax,dword ptr [ebp+8]
 0065ABF6    push        eax
 0065ABF7    movzx       eax,word ptr [ebp-1A]
 0065ABFB    mov         edx,dword ptr [ebp-0C]
 0065ABFE    call        0065A3E4
 0065AC03    pop         ecx
>0065AC04    jmp         0065AF04
 0065AC09    push        ebp
 0065AC0A    call        0065A434
 0065AC0F    pop         ecx
 0065AC10    cmp         dword ptr [ebp-0C],1
>0065AC14    jne         0065AC2A
 0065AC16    mov         eax,dword ptr [ebp+8]
 0065AC19    push        eax
 0065AC1A    mov         eax,[006ED030];0x0 gvar_006ED030
 0065AC1F    call        0065A780
 0065AC24    pop         ecx
>0065AC25    jmp         0065AF04
 0065AC2A    mov         eax,dword ptr [ebp+8]
 0065AC2D    push        eax
 0065AC2E    mov         eax,[006ED034];0x0 gvar_006ED034
 0065AC33    call        0065A780
 0065AC38    pop         ecx
>0065AC39    jmp         0065AF04
 0065AC3E    push        ebp
 0065AC3F    call        0065A434
 0065AC44    pop         ecx
 0065AC45    push        ebp
 0065AC46    call        GetTime
 0065AC4B    pop         ecx
 0065AC4C    cmp         dword ptr [ebp-0C],3
>0065AC50    jle         0065AC59
 0065AC52    mov         dword ptr [ebp-0C],3
 0065AC59    mov         eax,dword ptr [ebp+8]
 0065AC5C    push        eax
 0065AC5D    movzx       eax,word ptr [ebp-1C]
 0065AC61    mov         edx,dword ptr [ebp-0C]
 0065AC64    call        0065A3E4
 0065AC69    pop         ecx
>0065AC6A    jmp         0065AF04
 0065AC6F    push        ebp
 0065AC70    call        GetTime
 0065AC75    pop         ecx
 0065AC76    mov         eax,dword ptr [ebp-4]
 0065AC79    dec         eax
 0065AC7A    mov         dword ptr [ebp-28],eax
 0065AC7D    mov         edx,65AF40
 0065AC82    mov         ecx,5
 0065AC87    mov         eax,dword ptr [ebp-28]
 0065AC8A    call        StrLIComp
 0065AC8F    test        eax,eax
>0065AC91    jne         0065ACBD
 0065AC93    cmp         word ptr [ebp-16],0C
>0065AC98    jb          0065AC9E
 0065AC9A    add         dword ptr [ebp-28],3
 0065AC9E    mov         eax,dword ptr [ebp+8]
 0065ACA1    push        eax
 0065ACA2    mov         edx,2
 0065ACA7    mov         eax,dword ptr [ebp-28]
 0065ACAA    call        0065A360
 0065ACAF    pop         ecx
 0065ACB0    add         dword ptr [ebp-4],4
 0065ACB4    mov         byte ptr [ebp-20],1
>0065ACB8    jmp         0065AF04
 0065ACBD    mov         edx,65AF48
 0065ACC2    mov         ecx,3
 0065ACC7    mov         eax,dword ptr [ebp-28]
 0065ACCA    call        StrLIComp
 0065ACCF    test        eax,eax
>0065ACD1    jne         0065ACFD
 0065ACD3    cmp         word ptr [ebp-16],0C
>0065ACD8    jb          0065ACDE
 0065ACDA    add         dword ptr [ebp-28],2
 0065ACDE    mov         eax,dword ptr [ebp+8]
 0065ACE1    push        eax
 0065ACE2    mov         edx,1
 0065ACE7    mov         eax,dword ptr [ebp-28]
 0065ACEA    call        0065A360
 0065ACEF    pop         ecx
 0065ACF0    add         dword ptr [ebp-4],2
 0065ACF4    mov         byte ptr [ebp-20],1
>0065ACF8    jmp         0065AF04
 0065ACFD    mov         edx,65AF4C
 0065AD02    mov         ecx,4
 0065AD07    mov         eax,dword ptr [ebp-28]
 0065AD0A    call        StrLIComp
 0065AD0F    test        eax,eax
>0065AD11    jne         0065AD47
 0065AD13    cmp         word ptr [ebp-16],0C
>0065AD18    jae         0065AD2B
 0065AD1A    mov         eax,dword ptr [ebp+8]
 0065AD1D    push        eax
 0065AD1E    mov         eax,[006ED028];0x0 gvar_006ED028
 0065AD23    call        0065A3C0
 0065AD28    pop         ecx
>0065AD29    jmp         0065AD3A
 0065AD2B    mov         eax,dword ptr [ebp+8]
 0065AD2E    push        eax
 0065AD2F    mov         eax,[006ED02C];0x0 gvar_006ED02C
 0065AD34    call        0065A3C0
 0065AD39    pop         ecx
 0065AD3A    add         dword ptr [ebp-4],3
 0065AD3E    mov         byte ptr [ebp-20],1
>0065AD42    jmp         0065AF04
 0065AD47    mov         edx,65AF54
 0065AD4C    mov         ecx,4
 0065AD51    mov         eax,dword ptr [ebp-28]
 0065AD54    call        StrLIComp
 0065AD59    test        eax,eax
>0065AD5B    jne         0065AD8F
 0065AD5D    push        ebp
 0065AD5E    call        GetDate
 0065AD63    pop         ecx
 0065AD64    mov         eax,dword ptr [ebp+8]
 0065AD67    push        eax
 0065AD68    mov         eax,dword ptr [ebp+8]
 0065AD6B    push        dword ptr [eax+0C]
 0065AD6E    push        dword ptr [eax+8]
 0065AD71    call        0065A1F8
 0065AD76    movzx       eax,ax
 0065AD79    mov         eax,dword ptr [eax*4+6ED0B0]
 0065AD80    call        0065A3C0
 0065AD85    pop         ecx
 0065AD86    add         dword ptr [ebp-4],3
>0065AD8A    jmp         0065AF04
 0065AD8F    mov         edx,65AF5C
 0065AD94    mov         ecx,3
 0065AD99    mov         eax,dword ptr [ebp-28]
 0065AD9C    call        StrLIComp
 0065ADA1    test        eax,eax
>0065ADA3    jne         0065ADD7
 0065ADA5    push        ebp
 0065ADA6    call        GetDate
 0065ADAB    pop         ecx
 0065ADAC    mov         eax,dword ptr [ebp+8]
 0065ADAF    push        eax
 0065ADB0    mov         eax,dword ptr [ebp+8]
 0065ADB3    push        dword ptr [eax+0C]
 0065ADB6    push        dword ptr [eax+8]
 0065ADB9    call        0065A1F8
 0065ADBE    movzx       eax,ax
 0065ADC1    mov         eax,dword ptr [eax*4+6ED094]
 0065ADC8    call        0065A3C0
 0065ADCD    pop         ecx
 0065ADCE    add         dword ptr [ebp-4],2
>0065ADD2    jmp         0065AF04
 0065ADD7    mov         eax,dword ptr [ebp+8]
 0065ADDA    push        eax
 0065ADDB    lea         eax,[ebp-5]
 0065ADDE    mov         edx,1
 0065ADE3    call        0065A360
 0065ADE8    pop         ecx
>0065ADE9    jmp         0065AF04
 0065ADEE    push        ebp
 0065ADEF    call        0065A434
 0065ADF4    pop         ecx
 0065ADF5    mov         eax,dword ptr [ebp+8]
 0065ADF8    push        eax
 0065ADF9    mov         eax,[006ED01C];0x0 gvar_006ED01C
 0065ADFE    call        0065A780
 0065AE03    pop         ecx
 0065AE04    push        ebp
 0065AE05    call        GetTime
 0065AE0A    pop         ecx
 0065AE0B    cmp         word ptr [ebp-16],0
>0065AE10    jne         0065AE24
 0065AE12    cmp         word ptr [ebp-18],0
>0065AE17    jne         0065AE24
 0065AE19    cmp         word ptr [ebp-1A],0
>0065AE1E    je          0065AF04
 0065AE24    mov         eax,dword ptr [ebp+8]
 0065AE27    push        eax
 0065AE28    mov         eax,65AF60
 0065AE2D    mov         edx,1
 0065AE32    call        0065A360
 0065AE37    pop         ecx
 0065AE38    mov         eax,dword ptr [ebp+8]
 0065AE3B    push        eax
 0065AE3C    mov         eax,[006ED034];0x0 gvar_006ED034
 0065AE41    call        0065A780
 0065AE46    pop         ecx
>0065AE47    jmp         0065AF04
 0065AE4C    cmp         byte ptr ds:[6ED019],0;gvar_006ED019
>0065AE53    je          0065AF04
 0065AE59    mov         eax,dword ptr [ebp+8]
 0065AE5C    push        eax
 0065AE5D    mov         eax,6ED019;gvar_006ED019
 0065AE62    mov         edx,1
 0065AE67    call        0065A360
 0065AE6C    pop         ecx
>0065AE6D    jmp         0065AF04
 0065AE72    cmp         byte ptr ds:[6ED024],0;gvar_006ED024
>0065AE79    je          0065AF04
 0065AE7F    mov         eax,dword ptr [ebp+8]
 0065AE82    push        eax
 0065AE83    mov         eax,6ED024;gvar_006ED024
 0065AE88    mov         edx,1
 0065AE8D    call        0065A360
 0065AE92    pop         ecx
>0065AE93    jmp         0065AF04
 0065AE95    mov         eax,dword ptr [ebp-4]
 0065AE98    mov         dword ptr [ebp-28],eax
>0065AE9B    jmp         0065AEC0
 0065AE9D    mov         eax,dword ptr [ebp-4]
 0065AEA0    mov         al,byte ptr [eax]
 0065AEA2    and         eax,0FF
 0065AEA7    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065AEAE    jae         0065AEBD
 0065AEB0    mov         eax,dword ptr [ebp-4]
 0065AEB3    call        0065D294
 0065AEB8    mov         dword ptr [ebp-4],eax
>0065AEBB    jmp         0065AEC0
 0065AEBD    inc         dword ptr [ebp-4]
 0065AEC0    mov         eax,dword ptr [ebp-4]
 0065AEC3    cmp         byte ptr [eax],0
>0065AEC6    je          0065AED2
 0065AEC8    mov         eax,dword ptr [ebp-4]
 0065AECB    mov         al,byte ptr [eax]
 0065AECD    cmp         al,byte ptr [ebp-5]
>0065AED0    jne         0065AE9D
 0065AED2    mov         eax,dword ptr [ebp+8]
 0065AED5    push        eax
 0065AED6    mov         edx,dword ptr [ebp-4]
 0065AED9    sub         edx,dword ptr [ebp-28]
 0065AEDC    mov         eax,dword ptr [ebp-28]
 0065AEDF    call        0065A360
 0065AEE4    pop         ecx
 0065AEE5    mov         eax,dword ptr [ebp-4]
 0065AEE8    cmp         byte ptr [eax],0
>0065AEEB    je          0065AF04
 0065AEED    inc         dword ptr [ebp-4]
>0065AEF0    jmp         0065AF04
 0065AEF2    mov         eax,dword ptr [ebp+8]
 0065AEF5    push        eax
 0065AEF6    lea         eax,[ebp-5]
 0065AEF9    mov         edx,1
 0065AEFE    call        0065A360
 0065AF03    pop         ecx
 0065AF04    mov         eax,dword ptr [ebp-4]
 0065AF07    cmp         byte ptr [eax],0
>0065AF0A    jne         0065A7D7
 0065AF10    mov         eax,dword ptr [ebp+8]
 0065AF13    dec         dword ptr [eax-108]
 0065AF19    xor         eax,eax
 0065AF1B    pop         edx
 0065AF1C    pop         ecx
 0065AF1D    pop         ecx
 0065AF1E    mov         dword ptr fs:[eax],edx
 0065AF21    push        65AF3B
 0065AF26    lea         eax,[ebp-34]
 0065AF29    mov         edx,2
 0065AF2E    call        @LStrArrayClr
 0065AF33    ret
>0065AF34    jmp         @HandleFinally
>0065AF39    jmp         0065AF26
 0065AF3B    mov         esp,ebp
 0065AF3D    pop         ebp
 0065AF3E    ret
end;*}

//0065AF64
procedure DateTimeToString(var Result:AnsiString; const Format:AnsiString; DateTime:TDateTime);
begin
{*
 0065AF64    push        ebp
 0065AF65    mov         ebp,esp
 0065AF67    add         esp,0FFFFFEF0
 0065AF6D    mov         dword ptr [ebp-110],edx
 0065AF73    mov         dword ptr [ebp-10C],eax
 0065AF79    xor         eax,eax
 0065AF7B    mov         dword ptr [ebp-104],eax
 0065AF81    xor         eax,eax
 0065AF83    mov         dword ptr [ebp-108],eax
 0065AF89    cmp         dword ptr [ebp-110],0
>0065AF90    je          0065AFA1
 0065AF92    push        ebp
 0065AF93    mov         eax,dword ptr [ebp-110]
 0065AF99    call        0065A780
 0065AF9E    pop         ecx
>0065AF9F    jmp         0065AFAD
 0065AFA1    push        ebp
 0065AFA2    mov         eax,65AFCC
 0065AFA7    call        0065A780
 0065AFAC    pop         ecx
 0065AFAD    lea         edx,[ebp-100]
 0065AFB3    mov         eax,dword ptr [ebp-10C]
 0065AFB9    mov         ecx,dword ptr [ebp-104]
 0065AFBF    call        @LStrFromPCharLen
 0065AFC4    mov         esp,ebp
 0065AFC6    pop         ebp
 0065AFC7    ret         8
*}
end;

//0065AFD0
function TryFloatToDateTime(const Value:Extended; var AResult:TDateTime):Boolean;
begin
{*
 0065AFD0    push        ebp
 0065AFD1    mov         ebp,esp
 0065AFD3    add         esp,0FFFFFFF8
 0065AFD6    mov         dword ptr [ebp-4],eax
 0065AFD9    fld         tbyte ptr [ebp+8]
 0065AFDC    fcomp       qword ptr ds:[6E49E4]
 0065AFE2    fnstsw      al
 0065AFE4    sahf
>0065AFE5    jb          0065B002
 0065AFE7    fld         qword ptr ds:[6E49EC]
 0065AFED    call        @INT
 0065AFF2    fadd        dword ptr ds:[65B024]
 0065AFF8    fld         tbyte ptr [ebp+8]
 0065AFFB    fcompp
 0065AFFD    fnstsw      al
 0065AFFF    sahf
>0065B000    jb          0065B006
 0065B002    xor         eax,eax
>0065B004    jmp         0065B008
 0065B006    mov         al,1
 0065B008    mov         byte ptr [ebp-5],al
 0065B00B    cmp         byte ptr [ebp-5],0
>0065B00F    je          0065B01A
 0065B011    fld         tbyte ptr [ebp+8]
 0065B014    mov         eax,dword ptr [ebp-4]
 0065B017    fstp        qword ptr [eax]
 0065B019    wait
 0065B01A    mov         al,byte ptr [ebp-5]
 0065B01D    pop         ecx
 0065B01E    pop         ecx
 0065B01F    pop         ebp
 0065B020    ret         0C
*}
end;

//0065B028
function FloatToDateTime(const Value:Extended):TDateTime;
begin
{*
 0065B028    push        ebp
 0065B029    mov         ebp,esp
 0065B02B    add         esp,0FFFFFFF0
 0065B02E    mov         ax,word ptr [ebp+10]
 0065B032    push        eax
 0065B033    push        dword ptr [ebp+0C]
 0065B036    push        dword ptr [ebp+8]
 0065B039    lea         eax,[ebp-8]
 0065B03C    call        TryFloatToDateTime
 0065B041    test        al,al
>0065B043    jne         0065B05E
 0065B045    lea         eax,[ebp+8]
 0065B048    mov         dword ptr [ebp-10],eax
 0065B04B    mov         byte ptr [ebp-0C],3
 0065B04F    lea         edx,[ebp-10]
 0065B052    mov         eax,[006EA134]
 0065B057    xor         ecx,ecx
 0065B059    call        ConvertErrorFmt
 0065B05E    fld         qword ptr [ebp-8]
 0065B061    mov         esp,ebp
 0065B063    pop         ebp
 0065B064    ret         0C
*}
end;

//0065B068
{*procedure sub_0065B068(?:?; ?:?; ?:?);
begin
 0065B068    push        ebp
 0065B069    mov         ebp,esp
 0065B06B    push        ecx
 0065B06C    mov         dword ptr [ebp-4],eax
 0065B06F    push        dword ptr [ebp+0C]
 0065B072    push        dword ptr [ebp+8]
 0065B075    mov         eax,dword ptr [ebp-4]
 0065B078    mov         edx,dword ptr ds:[6ED01C];0x0 gvar_006ED01C
 0065B07E    call        DateTimeToString
 0065B083    pop         ecx
 0065B084    pop         ebp
 0065B085    ret         8
end;*}

//0065B088
{*procedure sub_0065B088(?:?; ?:?; ?:?);
begin
 0065B088    push        ebp
 0065B089    mov         ebp,esp
 0065B08B    push        ecx
 0065B08C    mov         dword ptr [ebp-4],eax
 0065B08F    push        dword ptr [ebp+0C]
 0065B092    push        dword ptr [ebp+8]
 0065B095    mov         eax,dword ptr [ebp-4]
 0065B098    mov         edx,dword ptr ds:[6ED034];0x0 gvar_006ED034
 0065B09E    call        DateTimeToString
 0065B0A3    pop         ecx
 0065B0A4    pop         ebp
 0065B0A5    ret         8
end;*}

//0065B0A8
function DateTimeToStr(const DateTime:TDateTime):AnsiString;
begin
{*
 0065B0A8    push        ebp
 0065B0A9    mov         ebp,esp
 0065B0AB    push        ecx
 0065B0AC    mov         dword ptr [ebp-4],eax
 0065B0AF    push        dword ptr [ebp+0C]
 0065B0B2    push        dword ptr [ebp+8]
 0065B0B5    mov         eax,dword ptr [ebp-4]
 0065B0B8    xor         edx,edx
 0065B0BA    call        DateTimeToString
 0065B0BF    pop         ecx
 0065B0C0    pop         ebp
 0065B0C1    ret         8
*}
end;

//0065B0C4
{*procedure sub_0065B0C4(?:?; ?:?);
begin
 0065B0C4    push        ebp
 0065B0C5    mov         ebp,esp
 0065B0C7    add         esp,0FFFFFFF4
 0065B0CA    mov         dword ptr [ebp-8],edx
 0065B0CD    mov         dword ptr [ebp-4],eax
 0065B0D0    mov         eax,dword ptr [ebp-8]
 0065B0D3    mov         eax,dword ptr [eax]
 0065B0D5    mov         dword ptr [ebp-0C],eax
>0065B0D8    jmp         0065B0DD
 0065B0DA    inc         dword ptr [ebp-0C]
 0065B0DD    mov         eax,dword ptr [ebp-4]
 0065B0E0    call        @LStrLen
 0065B0E5    cmp         eax,dword ptr [ebp-0C]
>0065B0E8    jl          0065B0F7
 0065B0EA    mov         eax,dword ptr [ebp-0C]
 0065B0ED    mov         edx,dword ptr [ebp-4]
 0065B0F0    cmp         byte ptr [edx+eax-1],20
>0065B0F5    je          0065B0DA
 0065B0F7    mov         eax,dword ptr [ebp-8]
 0065B0FA    mov         edx,dword ptr [ebp-0C]
 0065B0FD    mov         dword ptr [eax],edx
 0065B0FF    mov         esp,ebp
 0065B101    pop         ebp
 0065B102    ret
end;*}

//0065B104
{*function sub_0065B104(?:?; ?:?; ?:?; ?:?):?;
begin
 0065B104    push        ebp
 0065B105    mov         ebp,esp
 0065B107    add         esp,0FFFFFFE8
 0065B10A    mov         dword ptr [ebp-0C],ecx
 0065B10D    mov         dword ptr [ebp-8],edx
 0065B110    mov         dword ptr [ebp-4],eax
 0065B113    mov         byte ptr [ebp-0D],0
 0065B117    mov         eax,dword ptr [ebp+8]
 0065B11A    mov         byte ptr [eax],0
 0065B11D    mov         edx,dword ptr [ebp-8]
 0065B120    mov         eax,dword ptr [ebp-4]
 0065B123    call        0065B0C4
 0065B128    mov         eax,dword ptr [ebp-8]
 0065B12B    mov         eax,dword ptr [eax]
 0065B12D    mov         dword ptr [ebp-14],eax
 0065B130    mov         word ptr [ebp-16],0
>0065B136    jmp         0065B15A
 0065B138    mov         ax,word ptr [ebp-16]
 0065B13C    add         eax,eax
 0065B13E    lea         eax,[eax+eax*4]
 0065B141    mov         edx,dword ptr [ebp-4]
 0065B144    mov         ecx,dword ptr [ebp-14]
 0065B147    movzx       edx,byte ptr [edx+ecx-1]
 0065B14C    sub         dx,30
 0065B150    add         ax,dx
 0065B153    mov         word ptr [ebp-16],ax
 0065B157    inc         dword ptr [ebp-14]
 0065B15A    mov         eax,dword ptr [ebp-4]
 0065B15D    call        @LStrLen
 0065B162    cmp         eax,dword ptr [ebp-14]
>0065B165    jl          0065B17F
 0065B167    mov         eax,dword ptr [ebp-4]
 0065B16A    mov         edx,dword ptr [ebp-14]
 0065B16D    mov         al,byte ptr [eax+edx-1]
 0065B171    add         al,0D0
 0065B173    sub         al,0A
>0065B175    jae         0065B17F
 0065B177    cmp         word ptr [ebp-16],3E8
>0065B17D    jb          0065B138
 0065B17F    mov         eax,dword ptr [ebp-8]
 0065B182    mov         eax,dword ptr [eax]
 0065B184    cmp         eax,dword ptr [ebp-14]
>0065B187    jge         0065B1AE
 0065B189    mov         al,byte ptr [ebp-14]
 0065B18C    mov         edx,dword ptr [ebp-8]
 0065B18F    mov         edx,dword ptr [edx]
 0065B191    sub         al,dl
 0065B193    mov         edx,dword ptr [ebp+8]
 0065B196    mov         byte ptr [edx],al
 0065B198    mov         eax,dword ptr [ebp-8]
 0065B19B    mov         edx,dword ptr [ebp-14]
 0065B19E    mov         dword ptr [eax],edx
 0065B1A0    mov         eax,dword ptr [ebp-0C]
 0065B1A3    mov         dx,word ptr [ebp-16]
 0065B1A7    mov         word ptr [eax],dx
 0065B1AA    mov         byte ptr [ebp-0D],1
 0065B1AE    mov         al,byte ptr [ebp-0D]
 0065B1B1    mov         esp,ebp
 0065B1B3    pop         ebp
 0065B1B4    ret         4
end;*}

//0065B1B8
{*function sub_0065B1B8(?:?; ?:?; ?:AnsiString):?;
begin
 0065B1B8    push        ebp
 0065B1B9    mov         ebp,esp
 0065B1BB    add         esp,0FFFFFFEC
 0065B1BE    push        ebx
 0065B1BF    xor         ebx,ebx
 0065B1C1    mov         dword ptr [ebp-14],ebx
 0065B1C4    mov         dword ptr [ebp-0C],ecx
 0065B1C7    mov         dword ptr [ebp-8],edx
 0065B1CA    mov         dword ptr [ebp-4],eax
 0065B1CD    xor         eax,eax
 0065B1CF    push        ebp
 0065B1D0    push        65B241
 0065B1D5    push        dword ptr fs:[eax]
 0065B1D8    mov         dword ptr fs:[eax],esp
 0065B1DB    mov         byte ptr [ebp-0D],0
 0065B1DF    cmp         dword ptr [ebp-0C],0
>0065B1E3    je          0065B22B
 0065B1E5    mov         edx,dword ptr [ebp-8]
 0065B1E8    mov         eax,dword ptr [ebp-4]
 0065B1EB    call        0065B0C4
 0065B1F0    lea         eax,[ebp-14]
 0065B1F3    push        eax
 0065B1F4    mov         eax,dword ptr [ebp-0C]
 0065B1F7    call        @LStrLen
 0065B1FC    mov         ecx,eax
 0065B1FE    mov         edx,dword ptr [ebp-8]
 0065B201    mov         edx,dword ptr [edx]
 0065B203    mov         eax,dword ptr [ebp-4]
 0065B206    call        @LStrCopy
 0065B20B    mov         edx,dword ptr [ebp-14]
 0065B20E    mov         eax,dword ptr [ebp-0C]
 0065B211    call        AnsiCompareText
 0065B216    test        eax,eax
>0065B218    jne         0065B22B
 0065B21A    mov         eax,dword ptr [ebp-0C]
 0065B21D    call        @LStrLen
 0065B222    mov         edx,dword ptr [ebp-8]
 0065B225    add         dword ptr [edx],eax
 0065B227    mov         byte ptr [ebp-0D],1
 0065B22B    xor         eax,eax
 0065B22D    pop         edx
 0065B22E    pop         ecx
 0065B22F    pop         ecx
 0065B230    mov         dword ptr fs:[eax],edx
 0065B233    push        65B248
 0065B238    lea         eax,[ebp-14]
 0065B23B    call        @LStrClr
 0065B240    ret
>0065B241    jmp         @HandleFinally
>0065B246    jmp         0065B238
 0065B248    mov         al,byte ptr [ebp-0D]
 0065B24B    pop         ebx
 0065B24C    mov         esp,ebp
 0065B24E    pop         ebp
 0065B24F    ret
end;*}

//0065B250
{*function sub_0065B250(?:?; ?:?; ?:?):?;
begin
 0065B250    push        ebp
 0065B251    mov         ebp,esp
 0065B253    add         esp,0FFFFFFF4
 0065B256    mov         byte ptr [ebp-9],cl
 0065B259    mov         dword ptr [ebp-8],edx
 0065B25C    mov         dword ptr [ebp-4],eax
 0065B25F    mov         byte ptr [ebp-0A],0
 0065B263    mov         edx,dword ptr [ebp-8]
 0065B266    mov         eax,dword ptr [ebp-4]
 0065B269    call        0065B0C4
 0065B26E    mov         eax,dword ptr [ebp-4]
 0065B271    call        @LStrLen
 0065B276    mov         edx,dword ptr [ebp-8]
 0065B279    cmp         eax,dword ptr [edx]
>0065B27B    jl          0065B297
 0065B27D    mov         eax,dword ptr [ebp-8]
 0065B280    mov         eax,dword ptr [eax]
 0065B282    mov         edx,dword ptr [ebp-4]
 0065B285    mov         al,byte ptr [edx+eax-1]
 0065B289    cmp         al,byte ptr [ebp-9]
>0065B28C    jne         0065B297
 0065B28E    mov         eax,dword ptr [ebp-8]
 0065B291    inc         dword ptr [eax]
 0065B293    mov         byte ptr [ebp-0A],1
 0065B297    mov         al,byte ptr [ebp-0A]
 0065B29A    mov         esp,ebp
 0065B29C    pop         ebp
 0065B29D    ret
end;*}

//0065B2A0
{*function sub_0065B2A0(?:?):?;
begin
 0065B2A0    push        ebp
 0065B2A1    mov         ebp,esp
 0065B2A3    add         esp,0FFFFFFF4
 0065B2A6    mov         dword ptr [ebp-4],eax
 0065B2A9    mov         byte ptr [ebp-5],0
 0065B2AD    mov         dword ptr [ebp-0C],1
>0065B2B4    jmp         0065B2EF
 0065B2B6    mov         eax,dword ptr [ebp-0C]
 0065B2B9    mov         edx,dword ptr [ebp-4]
 0065B2BC    mov         al,byte ptr [edx+eax-1]
 0065B2C0    and         al,0DF
 0065B2C2    sub         al,44
>0065B2C4    je          0065B2E6
 0065B2C6    dec         al
>0065B2C8    je          0065B2D4
 0065B2CA    sub         al,8
>0065B2CC    je          0065B2E0
 0065B2CE    sub         al,0C
>0065B2D0    je          0065B2DA
>0065B2D2    jmp         0065B2EC
 0065B2D4    mov         byte ptr [ebp-5],2
>0065B2D8    jmp         0065B300
 0065B2DA    mov         byte ptr [ebp-5],2
>0065B2DE    jmp         0065B300
 0065B2E0    mov         byte ptr [ebp-5],0
>0065B2E4    jmp         0065B300
 0065B2E6    mov         byte ptr [ebp-5],1
>0065B2EA    jmp         0065B300
 0065B2EC    inc         dword ptr [ebp-0C]
 0065B2EF    mov         eax,dword ptr [ebp-4]
 0065B2F2    call        @LStrLen
 0065B2F7    cmp         eax,dword ptr [ebp-0C]
>0065B2FA    jge         0065B2B6
 0065B2FC    mov         byte ptr [ebp-5],0
 0065B300    mov         al,byte ptr [ebp-5]
 0065B303    mov         esp,ebp
 0065B305    pop         ebp
 0065B306    ret
end;*}

//0065B308
{*procedure sub_0065B308(?:?; ?:?);
begin
 0065B308    push        ebp
 0065B309    mov         ebp,esp
 0065B30B    add         esp,0FFFFFFF8
 0065B30E    mov         dword ptr [ebp-8],edx
 0065B311    mov         dword ptr [ebp-4],eax
>0065B314    jmp         0065B349
 0065B316    mov         eax,dword ptr [ebp-8]
 0065B319    mov         eax,dword ptr [eax]
 0065B31B    mov         edx,dword ptr [ebp-4]
 0065B31E    mov         al,byte ptr [edx+eax-1]
 0065B322    and         eax,0FF
 0065B327    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065B32E    jae         0065B344
 0065B330    mov         edx,dword ptr [ebp-8]
 0065B333    mov         edx,dword ptr [edx]
 0065B335    mov         eax,dword ptr [ebp-4]
 0065B338    call        0065D300
 0065B33D    mov         edx,dword ptr [ebp-8]
 0065B340    mov         dword ptr [edx],eax
>0065B342    jmp         0065B349
 0065B344    mov         eax,dword ptr [ebp-8]
 0065B347    inc         dword ptr [eax]
 0065B349    mov         eax,dword ptr [ebp-4]
 0065B34C    call        @LStrLen
 0065B351    mov         edx,dword ptr [ebp-8]
 0065B354    cmp         eax,dword ptr [edx]
>0065B356    jl          0065B36A
 0065B358    mov         eax,dword ptr [ebp-8]
 0065B35B    mov         eax,dword ptr [eax]
 0065B35D    mov         edx,dword ptr [ebp-4]
 0065B360    mov         al,byte ptr [edx+eax-1]
 0065B364    add         al,0D0
 0065B366    sub         al,0A
>0065B368    jae         0065B316
 0065B36A    pop         ecx
 0065B36B    pop         ecx
 0065B36C    pop         ebp
 0065B36D    ret
end;*}

//0065B370
{*function sub_0065B370(?:?):?;
begin
 0065B370    push        ebp
 0065B371    mov         ebp,esp
 0065B373    add         esp,0FFFFFFF4
 0065B376    mov         dword ptr [ebp-4],eax
 0065B379    xor         eax,eax
 0065B37B    mov         dword ptr [ebp-8],eax
 0065B37E    mov         dword ptr [ebp-0C],1
 0065B385    mov         eax,dword ptr [ebp-0C]
 0065B388    cmp         dword ptr [eax*4+6ED0DC],0;gvar_006ED0DC
>0065B390    je          0065B3CC
 0065B392    mov         eax,dword ptr [ebp-4]
 0065B395    call        @LStrToPChar
 0065B39A    push        eax
 0065B39B    mov         eax,dword ptr [ebp-0C]
 0065B39E    mov         eax,dword ptr [eax*4+6ED0DC];gvar_006ED0DC
 0065B3A5    call        @LStrToPChar
 0065B3AA    pop         edx
 0065B3AB    call        0065D664
 0065B3B0    test        eax,eax
>0065B3B2    je          0065B3C3
 0065B3B4    mov         eax,dword ptr [ebp-0C]
 0065B3B7    mov         eax,dword ptr [eax*4+6ED0F8]
 0065B3BE    mov         dword ptr [ebp-8],eax
>0065B3C1    jmp         0065B3CC
 0065B3C3    inc         dword ptr [ebp-0C]
 0065B3C6    cmp         dword ptr [ebp-0C],8
>0065B3CA    jne         0065B385
 0065B3CC    mov         eax,dword ptr [ebp-8]
 0065B3CF    mov         esp,ebp
 0065B3D1    pop         ebp
 0065B3D2    ret
end;*}

//0065B3D4
{*function sub_0065B3D4(?:?; ?:?):?;
begin
 0065B3D4    push        ebp
 0065B3D5    mov         ebp,esp
 0065B3D7    add         esp,0FFFFFFF8
 0065B3DA    mov         dword ptr [ebp-4],eax
 0065B3DD    cmp         dword ptr ds:[6ED0D4],12;gvar_006ED0D4
>0065B3E4    jne         0065B422
 0065B3E6    cmp         dword ptr [ebp-4],63
>0065B3EA    jg          0065B411
 0065B3EC    call        0065A340
 0065B3F1    movzx       ecx,ax
 0065B3F4    mov         eax,dword ptr [ebp+8]
 0065B3F7    mov         eax,dword ptr [eax-4]
 0065B3FA    cdq
 0065B3FB    xor         eax,edx
 0065B3FD    sub         eax,edx
 0065B3FF    add         ecx,eax
 0065B401    mov         eax,ecx
 0065B403    mov         ecx,64
 0065B408    cdq
 0065B409    idiv        eax,ecx
 0065B40B    imul        eax,eax,64
 0065B40E    add         dword ptr [ebp-4],eax
 0065B411    mov         eax,dword ptr [ebp+8]
 0065B414    cmp         dword ptr [eax-4],0
>0065B418    jle         0065B428
 0065B41A    mov         eax,dword ptr [ebp+8]
 0065B41D    neg         dword ptr [eax-4]
>0065B420    jmp         0065B428
 0065B422    mov         eax,dword ptr [ebp+8]
 0065B425    dec         dword ptr [eax-4]
 0065B428    mov         eax,dword ptr [ebp+8]
 0065B42B    mov         eax,dword ptr [eax-4]
 0065B42E    add         eax,dword ptr [ebp-4]
 0065B431    mov         dword ptr [ebp-8],eax
 0065B434    mov         eax,dword ptr [ebp-8]
 0065B437    pop         ecx
 0065B438    pop         ecx
 0065B439    pop         ebp
 0065B43A    ret
end;*}

//0065B43C
{*function sub_0065B43C(?:AnsiString; ?:?; ?:?):?;
begin
 0065B43C    push        ebp
 0065B43D    mov         ebp,esp
 0065B43F    add         esp,0FFFFFFC8
 0065B442    push        ebx
 0065B443    xor         ebx,ebx
 0065B445    mov         dword ptr [ebp-38],ebx
 0065B448    mov         dword ptr [ebp-34],ebx
 0065B44B    mov         dword ptr [ebp-30],ebx
 0065B44E    mov         dword ptr [ebp-2C],ebx
 0065B451    mov         dword ptr [ebp-10],ecx
 0065B454    mov         dword ptr [ebp-0C],edx
 0065B457    mov         dword ptr [ebp-8],eax
 0065B45A    xor         eax,eax
 0065B45C    push        ebp
 0065B45D    push        65B7A0
 0065B462    push        dword ptr fs:[eax]
 0065B465    mov         dword ptr fs:[eax],esp
 0065B468    mov         word ptr [ebp-1A],0
 0065B46E    mov         word ptr [ebp-1C],0
 0065B474    mov         word ptr [ebp-1E],0
 0065B47A    mov         byte ptr [ebp-22],0
 0065B47E    mov         byte ptr [ebp-11],0
 0065B482    mov         eax,[006ED01C];0x0 gvar_006ED01C
 0065B487    call        0065B2A0
 0065B48C    mov         byte ptr [ebp-12],al
 0065B48F    xor         eax,eax
 0065B491    mov         dword ptr [ebp-4],eax
 0065B494    mov         eax,[006ED01C];0x0 gvar_006ED01C
 0065B499    cmp         byte ptr [eax],67
>0065B49C    jne         0065B4D8
 0065B49E    mov         edx,dword ptr [ebp-0C]
 0065B4A1    mov         eax,dword ptr [ebp-8]
 0065B4A4    call        0065B308
 0065B4A9    lea         eax,[ebp-30]
 0065B4AC    push        eax
 0065B4AD    mov         ecx,dword ptr [ebp-0C]
 0065B4B0    mov         ecx,dword ptr [ecx]
 0065B4B2    dec         ecx
 0065B4B3    mov         edx,1
 0065B4B8    mov         eax,dword ptr [ebp-8]
 0065B4BB    call        @LStrCopy
 0065B4C0    mov         eax,dword ptr [ebp-30]
 0065B4C3    lea         edx,[ebp-2C]
 0065B4C6    call        00657850
 0065B4CB    mov         eax,dword ptr [ebp-2C]
 0065B4CE    call        0065B370
 0065B4D3    mov         dword ptr [ebp-4],eax
>0065B4D6    jmp         0065B4F4
 0065B4D8    mov         edx,dword ptr ds:[6ED01C];0x0 gvar_006ED01C
 0065B4DE    mov         eax,65B7B8;'e'
 0065B4E3    call        AnsiPos
 0065B4E8    test        eax,eax
>0065B4EA    jle         0065B4F4
 0065B4EC    mov         eax,[006ED0FC];0x0 gvar_006ED0FC
 0065B4F1    mov         dword ptr [ebp-4],eax
 0065B4F4    lea         eax,[ebp-1F]
 0065B4F7    push        eax
 0065B4F8    lea         ecx,[ebp-14]
 0065B4FB    mov         edx,dword ptr [ebp-0C]
 0065B4FE    mov         eax,dword ptr [ebp-8]
 0065B501    call        0065B104
 0065B506    test        al,al
>0065B508    je          0065B785
 0065B50E    mov         edx,dword ptr [ebp-0C]
 0065B511    mov         cl,byte ptr ds:[6ED019];0x0 gvar_006ED019
 0065B517    mov         eax,dword ptr [ebp-8]
 0065B51A    call        0065B250
 0065B51F    test        al,al
>0065B521    je          0065B785
 0065B527    lea         eax,[ebp-20]
 0065B52A    push        eax
 0065B52B    lea         ecx,[ebp-16]
 0065B52E    mov         edx,dword ptr [ebp-0C]
 0065B531    mov         eax,dword ptr [ebp-8]
 0065B534    call        0065B104
 0065B539    test        al,al
>0065B53B    je          0065B785
 0065B541    mov         edx,dword ptr [ebp-0C]
 0065B544    mov         cl,byte ptr ds:[6ED019];0x0 gvar_006ED019
 0065B54A    mov         eax,dword ptr [ebp-8]
 0065B54D    call        0065B250
 0065B552    test        al,al
>0065B554    je          0065B63F
 0065B55A    lea         eax,[ebp-21]
 0065B55D    push        eax
 0065B55E    lea         ecx,[ebp-18]
 0065B561    mov         edx,dword ptr [ebp-0C]
 0065B564    mov         eax,dword ptr [ebp-8]
 0065B567    call        0065B104
 0065B56C    test        al,al
>0065B56E    je          0065B785
 0065B574    mov         al,byte ptr [ebp-12]
 0065B577    sub         al,1
>0065B579    jb          0065B583
>0065B57B    je          0065B5A3
 0065B57D    dec         al
>0065B57F    je          0065B5C3
>0065B581    jmp         0065B5E1
 0065B583    mov         ax,word ptr [ebp-18]
 0065B587    mov         word ptr [ebp-1A],ax
 0065B58B    mov         al,byte ptr [ebp-21]
 0065B58E    mov         byte ptr [ebp-22],al
 0065B591    mov         ax,word ptr [ebp-14]
 0065B595    mov         word ptr [ebp-1C],ax
 0065B599    mov         ax,word ptr [ebp-16]
 0065B59D    mov         word ptr [ebp-1E],ax
>0065B5A1    jmp         0065B5E1
 0065B5A3    mov         ax,word ptr [ebp-18]
 0065B5A7    mov         word ptr [ebp-1A],ax
 0065B5AB    mov         al,byte ptr [ebp-21]
 0065B5AE    mov         byte ptr [ebp-22],al
 0065B5B1    mov         ax,word ptr [ebp-16]
 0065B5B5    mov         word ptr [ebp-1C],ax
 0065B5B9    mov         ax,word ptr [ebp-14]
 0065B5BD    mov         word ptr [ebp-1E],ax
>0065B5C1    jmp         0065B5E1
 0065B5C3    mov         ax,word ptr [ebp-14]
 0065B5C7    mov         word ptr [ebp-1A],ax
 0065B5CB    mov         al,byte ptr [ebp-1F]
 0065B5CE    mov         byte ptr [ebp-22],al
 0065B5D1    mov         ax,word ptr [ebp-16]
 0065B5D5    mov         word ptr [ebp-1C],ax
 0065B5D9    mov         ax,word ptr [ebp-18]
 0065B5DD    mov         word ptr [ebp-1E],ax
 0065B5E1    cmp         dword ptr [ebp-4],0
>0065B5E5    jle         0065B5F8
 0065B5E7    push        ebp
 0065B5E8    movzx       eax,word ptr [ebp-1A]
 0065B5EC    call        0065B3D4
 0065B5F1    pop         ecx
 0065B5F2    mov         word ptr [ebp-1A],ax
>0065B5F6    jmp         0065B670
 0065B5F8    cmp         byte ptr [ebp-22],2
>0065B5FC    ja          0065B670
 0065B5FE    call        0065A340
 0065B603    movzx       eax,ax
 0065B606    movzx       edx,word ptr ds:[6E49A0];0x90900032 gvar_006E49A0
 0065B60D    sub         eax,edx
 0065B60F    mov         dword ptr [ebp-28],eax
 0065B612    mov         eax,dword ptr [ebp-28]
 0065B615    mov         ecx,64
 0065B61A    cdq
 0065B61B    idiv        eax,ecx
 0065B61D    imul        ax,ax,64
 0065B621    add         word ptr [ebp-1A],ax
 0065B625    cmp         word ptr ds:[6E49A0],0;gvar_006E49A0
>0065B62D    jbe         0065B670
 0065B62F    movzx       eax,word ptr [ebp-1A]
 0065B633    cmp         eax,dword ptr [ebp-28]
>0065B636    jge         0065B670
 0065B638    add         word ptr [ebp-1A],64
>0065B63D    jmp         0065B670
 0065B63F    call        0065A340
 0065B644    mov         word ptr [ebp-1A],ax
 0065B648    cmp         byte ptr [ebp-12],1
>0065B64C    jne         0065B660
 0065B64E    mov         ax,word ptr [ebp-14]
 0065B652    mov         word ptr [ebp-1E],ax
 0065B656    mov         ax,word ptr [ebp-16]
 0065B65A    mov         word ptr [ebp-1C],ax
>0065B65E    jmp         0065B670
 0065B660    mov         ax,word ptr [ebp-14]
 0065B664    mov         word ptr [ebp-1C],ax
 0065B668    mov         ax,word ptr [ebp-16]
 0065B66C    mov         word ptr [ebp-1E],ax
 0065B670    mov         edx,dword ptr [ebp-0C]
 0065B673    mov         cl,byte ptr ds:[6ED019];0x0 gvar_006ED019
 0065B679    mov         eax,dword ptr [ebp-8]
 0065B67C    call        0065B250
 0065B681    mov         edx,dword ptr [ebp-0C]
 0065B684    mov         eax,dword ptr [ebp-8]
 0065B687    call        0065B0C4
 0065B68C    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065B693    je          0065B76D
 0065B699    mov         edx,dword ptr ds:[6ED01C];0x0 gvar_006ED01C
 0065B69F    mov         eax,65B7C4;'ddd'
 0065B6A4    call        @LStrPos
 0065B6A9    test        eax,eax
>0065B6AB    je          0065B76D
 0065B6B1    mov         eax,[006ED030];0x0 gvar_006ED030
 0065B6B6    mov         al,byte ptr [eax]
 0065B6B8    add         al,0D0
 0065B6BA    sub         al,0A
>0065B6BC    jae         0065B6D5
 0065B6BE    mov         edx,dword ptr [ebp-0C]
 0065B6C1    mov         eax,dword ptr [ebp-8]
 0065B6C4    call        0065B308
>0065B6C9    jmp         0065B76D
>0065B6CE    jmp         0065B6D5
 0065B6D0    mov         eax,dword ptr [ebp-0C]
 0065B6D3    inc         dword ptr [eax]
 0065B6D5    mov         eax,dword ptr [ebp-8]
 0065B6D8    call        @LStrLen
 0065B6DD    mov         edx,dword ptr [ebp-0C]
 0065B6E0    cmp         eax,dword ptr [edx]
>0065B6E2    jl          0065B6F3
 0065B6E4    mov         eax,dword ptr [ebp-0C]
 0065B6E7    mov         eax,dword ptr [eax]
 0065B6E9    mov         edx,dword ptr [ebp-8]
 0065B6EC    cmp         byte ptr [edx+eax-1],20
>0065B6F1    jne         0065B6D0
 0065B6F3    mov         edx,dword ptr [ebp-0C]
 0065B6F6    mov         eax,dword ptr [ebp-8]
 0065B6F9    call        0065B0C4
 0065B6FE    mov         eax,dword ptr [ebp-8]
 0065B701    call        @LStrLen
 0065B706    mov         edx,dword ptr [ebp-0C]
 0065B709    cmp         eax,dword ptr [edx]
>0065B70B    jl          0065B76D
 0065B70D    lea         eax,[ebp-34]
 0065B710    push        eax
 0065B711    mov         eax,[006ED028];0x0 gvar_006ED028
 0065B716    call        @LStrLen
 0065B71B    mov         ecx,eax
 0065B71D    mov         edx,dword ptr [ebp-0C]
 0065B720    mov         edx,dword ptr [edx]
 0065B722    mov         eax,dword ptr [ebp-8]
 0065B725    call        @LStrCopy
 0065B72A    mov         edx,dword ptr [ebp-34]
 0065B72D    mov         eax,[006ED028];0x0 gvar_006ED028
 0065B732    call        AnsiCompareText
 0065B737    test        eax,eax
>0065B739    je          0065B76D
 0065B73B    lea         eax,[ebp-38]
 0065B73E    push        eax
 0065B73F    mov         eax,[006ED02C];0x0 gvar_006ED02C
 0065B744    call        @LStrLen
 0065B749    mov         ecx,eax
 0065B74B    mov         edx,dword ptr [ebp-0C]
 0065B74E    mov         edx,dword ptr [edx]
 0065B750    mov         eax,dword ptr [ebp-8]
 0065B753    call        @LStrCopy
 0065B758    mov         edx,dword ptr [ebp-38]
 0065B75B    mov         eax,[006ED02C];0x0 gvar_006ED02C
 0065B760    call        AnsiCompareText
 0065B765    test        eax,eax
>0065B767    jne         0065B6D5
 0065B76D    mov         eax,dword ptr [ebp-10]
 0065B770    push        eax
 0065B771    mov         cx,word ptr [ebp-1E]
 0065B775    mov         dx,word ptr [ebp-1C]
 0065B779    mov         ax,word ptr [ebp-1A]
 0065B77D    call        00659E20
 0065B782    mov         byte ptr [ebp-11],al
 0065B785    xor         eax,eax
 0065B787    pop         edx
 0065B788    pop         ecx
 0065B789    pop         ecx
 0065B78A    mov         dword ptr fs:[eax],edx
 0065B78D    push        65B7A7
 0065B792    lea         eax,[ebp-38]
 0065B795    mov         edx,4
 0065B79A    call        @LStrArrayClr
 0065B79F    ret
>0065B7A0    jmp         @HandleFinally
>0065B7A5    jmp         0065B792
 0065B7A7    mov         al,byte ptr [ebp-11]
 0065B7AA    pop         ebx
 0065B7AB    mov         esp,ebp
 0065B7AD    pop         ebp
 0065B7AE    ret
end;*}

//0065B7C8
{*function sub_0065B7C8(?:AnsiString; ?:?; ?:?):?;
begin
 0065B7C8    push        ebp
 0065B7C9    mov         ebp,esp
 0065B7CB    add         esp,0FFFFFFE0
 0065B7CE    mov         dword ptr [ebp-0C],ecx
 0065B7D1    mov         dword ptr [ebp-8],edx
 0065B7D4    mov         dword ptr [ebp-4],eax
 0065B7D7    mov         byte ptr [ebp-0D],0
 0065B7DB    mov         dword ptr [ebp-14],0FFFFFFFF
 0065B7E2    mov         edx,dword ptr [ebp-8]
 0065B7E5    mov         ecx,dword ptr ds:[6ED028];0x0 gvar_006ED028
 0065B7EB    mov         eax,dword ptr [ebp-4]
 0065B7EE    call        0065B1B8
 0065B7F3    test        al,al
>0065B7F5    jne         0065B80B
 0065B7F7    mov         edx,dword ptr [ebp-8]
 0065B7FA    mov         ecx,65B9D8;'AM'
 0065B7FF    mov         eax,dword ptr [ebp-4]
 0065B802    call        0065B1B8
 0065B807    test        al,al
>0065B809    je          0065B812
 0065B80B    xor         eax,eax
 0065B80D    mov         dword ptr [ebp-14],eax
>0065B810    jmp         0065B842
 0065B812    mov         edx,dword ptr [ebp-8]
 0065B815    mov         ecx,dword ptr ds:[6ED02C];0x0 gvar_006ED02C
 0065B81B    mov         eax,dword ptr [ebp-4]
 0065B81E    call        0065B1B8
 0065B823    test        al,al
>0065B825    jne         0065B83B
 0065B827    mov         edx,dword ptr [ebp-8]
 0065B82A    mov         ecx,65B9E4;'PM'
 0065B82F    mov         eax,dword ptr [ebp-4]
 0065B832    call        0065B1B8
 0065B837    test        al,al
>0065B839    je          0065B842
 0065B83B    mov         dword ptr [ebp-14],0C
 0065B842    cmp         dword ptr [ebp-14],0
>0065B846    jl          0065B853
 0065B848    mov         edx,dword ptr [ebp-8]
 0065B84B    mov         eax,dword ptr [ebp-4]
 0065B84E    call        0065B0C4
 0065B853    lea         eax,[ebp-1D]
 0065B856    push        eax
 0065B857    lea         ecx,[ebp-16]
 0065B85A    mov         edx,dword ptr [ebp-8]
 0065B85D    mov         eax,dword ptr [ebp-4]
 0065B860    call        0065B104
 0065B865    test        al,al
>0065B867    je          0065B9C7
 0065B86D    mov         edx,dword ptr [ebp-8]
 0065B870    mov         cl,byte ptr ds:[6ED024];0x0 gvar_006ED024
 0065B876    mov         eax,dword ptr [ebp-4]
 0065B879    call        0065B250
 0065B87E    test        al,al
>0065B880    je          0065B9C7
 0065B886    mov         word ptr [ebp-18],0
 0065B88C    mov         word ptr [ebp-1A],0
 0065B892    mov         word ptr [ebp-1C],0
 0065B898    lea         eax,[ebp-1D]
 0065B89B    push        eax
 0065B89C    lea         ecx,[ebp-18]
 0065B89F    mov         edx,dword ptr [ebp-8]
 0065B8A2    mov         eax,dword ptr [ebp-4]
 0065B8A5    call        0065B104
 0065B8AA    test        al,al
>0065B8AC    je          0065B9C7
 0065B8B2    mov         edx,dword ptr [ebp-8]
 0065B8B5    mov         cl,byte ptr ds:[6ED024];0x0 gvar_006ED024
 0065B8BB    mov         eax,dword ptr [ebp-4]
 0065B8BE    call        0065B250
 0065B8C3    test        al,al
>0065B8C5    je          0065B910
 0065B8C7    lea         eax,[ebp-1D]
 0065B8CA    push        eax
 0065B8CB    lea         ecx,[ebp-1A]
 0065B8CE    mov         edx,dword ptr [ebp-8]
 0065B8D1    mov         eax,dword ptr [ebp-4]
 0065B8D4    call        0065B104
 0065B8D9    test        al,al
>0065B8DB    je          0065B9C7
 0065B8E1    mov         edx,dword ptr [ebp-8]
 0065B8E4    mov         cl,byte ptr ds:[6ED017];0x0 DecimalSeparator:Char
 0065B8EA    mov         eax,dword ptr [ebp-4]
 0065B8ED    call        0065B250
 0065B8F2    test        al,al
>0065B8F4    je          0065B910
 0065B8F6    lea         eax,[ebp-1D]
 0065B8F9    push        eax
 0065B8FA    lea         ecx,[ebp-1C]
 0065B8FD    mov         edx,dword ptr [ebp-8]
 0065B900    mov         eax,dword ptr [ebp-4]
 0065B903    call        0065B104
 0065B908    test        al,al
>0065B90A    je          0065B9C7
 0065B910    cmp         dword ptr [ebp-14],0
>0065B914    jge         0065B976
 0065B916    mov         edx,dword ptr [ebp-8]
 0065B919    mov         ecx,dword ptr ds:[6ED028];0x0 gvar_006ED028
 0065B91F    mov         eax,dword ptr [ebp-4]
 0065B922    call        0065B1B8
 0065B927    test        al,al
>0065B929    jne         0065B93F
 0065B92B    mov         edx,dword ptr [ebp-8]
 0065B92E    mov         ecx,65B9D8;'AM'
 0065B933    mov         eax,dword ptr [ebp-4]
 0065B936    call        0065B1B8
 0065B93B    test        al,al
>0065B93D    je          0065B946
 0065B93F    xor         eax,eax
 0065B941    mov         dword ptr [ebp-14],eax
>0065B944    jmp         0065B976
 0065B946    mov         edx,dword ptr [ebp-8]
 0065B949    mov         ecx,dword ptr ds:[6ED02C];0x0 gvar_006ED02C
 0065B94F    mov         eax,dword ptr [ebp-4]
 0065B952    call        0065B1B8
 0065B957    test        al,al
>0065B959    jne         0065B96F
 0065B95B    mov         edx,dword ptr [ebp-8]
 0065B95E    mov         ecx,65B9E4;'PM'
 0065B963    mov         eax,dword ptr [ebp-4]
 0065B966    call        0065B1B8
 0065B96B    test        al,al
>0065B96D    je          0065B976
 0065B96F    mov         dword ptr [ebp-14],0C
 0065B976    cmp         dword ptr [ebp-14],0
>0065B97A    jl          0065B99F
 0065B97C    cmp         word ptr [ebp-16],0
>0065B981    je          0065B9C7
 0065B983    cmp         word ptr [ebp-16],0C
>0065B988    ja          0065B9C7
 0065B98A    cmp         word ptr [ebp-16],0C
>0065B98F    jne         0065B997
 0065B991    mov         word ptr [ebp-16],0
 0065B997    mov         ax,word ptr [ebp-14]
 0065B99B    add         word ptr [ebp-16],ax
 0065B99F    mov         edx,dword ptr [ebp-8]
 0065B9A2    mov         eax,dword ptr [ebp-4]
 0065B9A5    call        0065B0C4
 0065B9AA    mov         ax,word ptr [ebp-1C]
 0065B9AE    push        eax
 0065B9AF    mov         eax,dword ptr [ebp-0C]
 0065B9B2    push        eax
 0065B9B3    mov         cx,word ptr [ebp-1A]
 0065B9B7    mov         dx,word ptr [ebp-18]
 0065B9BB    mov         ax,word ptr [ebp-16]
 0065B9BF    call        00659CB8
 0065B9C4    mov         byte ptr [ebp-0D],al
 0065B9C7    mov         al,byte ptr [ebp-0D]
 0065B9CA    mov         esp,ebp
 0065B9CC    pop         ebp
 0065B9CD    ret
end;*}

//0065B9E8
{*function sub_0065B9E8(?:?):?;
begin
 0065B9E8    push        ebp
 0065B9E9    mov         ebp,esp
 0065B9EB    add         esp,0FFFFFFE8
 0065B9EE    mov         dword ptr [ebp-4],eax
 0065B9F1    lea         edx,[ebp-10]
 0065B9F4    mov         eax,dword ptr [ebp-4]
 0065B9F7    call        0065BA20
 0065B9FC    test        al,al
>0065B9FE    jne         0065BA19
 0065BA00    mov         eax,dword ptr [ebp-4]
 0065BA03    mov         dword ptr [ebp-18],eax
 0065BA06    mov         byte ptr [ebp-14],0B
 0065BA0A    lea         edx,[ebp-18]
 0065BA0D    mov         eax,[006EA128];^gvar_0065EF3C
 0065BA12    xor         ecx,ecx
 0065BA14    call        ConvertErrorFmt
 0065BA19    fld         qword ptr [ebp-10]
 0065BA1C    mov         esp,ebp
 0065BA1E    pop         ebp
 0065BA1F    ret
end;*}

//0065BA20
{*function sub_0065BA20(?:AnsiString; ?:?):?;
begin
 0065BA20    push        ebp
 0065BA21    mov         ebp,esp
 0065BA23    add         esp,0FFFFFFF0
 0065BA26    mov         dword ptr [ebp-8],edx
 0065BA29    mov         dword ptr [ebp-4],eax
 0065BA2C    mov         dword ptr [ebp-10],1
 0065BA33    mov         ecx,dword ptr [ebp-8]
 0065BA36    lea         edx,[ebp-10]
 0065BA39    mov         eax,dword ptr [ebp-4]
 0065BA3C    call        0065B43C
 0065BA41    test        al,al
>0065BA43    je          0065BA52
 0065BA45    mov         eax,dword ptr [ebp-4]
 0065BA48    call        @LStrLen
 0065BA4D    cmp         eax,dword ptr [ebp-10]
>0065BA50    jl          0065BA56
 0065BA52    xor         eax,eax
>0065BA54    jmp         0065BA58
 0065BA56    mov         al,1
 0065BA58    mov         byte ptr [ebp-9],al
 0065BA5B    mov         al,byte ptr [ebp-9]
 0065BA5E    mov         esp,ebp
 0065BA60    pop         ebp
 0065BA61    ret
end;*}

//0065BA64
{*function sub_0065BA64(?:?):?;
begin
 0065BA64    push        ebp
 0065BA65    mov         ebp,esp
 0065BA67    add         esp,0FFFFFFE8
 0065BA6A    mov         dword ptr [ebp-4],eax
 0065BA6D    lea         edx,[ebp-10]
 0065BA70    mov         eax,dword ptr [ebp-4]
 0065BA73    call        0065BA9C
 0065BA78    test        al,al
>0065BA7A    jne         0065BA95
 0065BA7C    mov         eax,dword ptr [ebp-4]
 0065BA7F    mov         dword ptr [ebp-18],eax
 0065BA82    mov         byte ptr [ebp-14],0B
 0065BA86    lea         edx,[ebp-18]
 0065BA89    mov         eax,[006EA12C];^gvar_0065EF44
 0065BA8E    xor         ecx,ecx
 0065BA90    call        ConvertErrorFmt
 0065BA95    fld         qword ptr [ebp-10]
 0065BA98    mov         esp,ebp
 0065BA9A    pop         ebp
 0065BA9B    ret
end;*}

//0065BA9C
{*function sub_0065BA9C(?:AnsiString; ?:?):?;
begin
 0065BA9C    push        ebp
 0065BA9D    mov         ebp,esp
 0065BA9F    add         esp,0FFFFFFF0
 0065BAA2    mov         dword ptr [ebp-8],edx
 0065BAA5    mov         dword ptr [ebp-4],eax
 0065BAA8    mov         dword ptr [ebp-10],1
 0065BAAF    mov         ecx,dword ptr [ebp-8]
 0065BAB2    lea         edx,[ebp-10]
 0065BAB5    mov         eax,dword ptr [ebp-4]
 0065BAB8    call        0065B7C8
 0065BABD    test        al,al
>0065BABF    je          0065BACE
 0065BAC1    mov         eax,dword ptr [ebp-4]
 0065BAC4    call        @LStrLen
 0065BAC9    cmp         eax,dword ptr [ebp-10]
>0065BACC    jl          0065BAD2
 0065BACE    xor         eax,eax
>0065BAD0    jmp         0065BAD4
 0065BAD2    mov         al,1
 0065BAD4    mov         byte ptr [ebp-9],al
 0065BAD7    mov         al,byte ptr [ebp-9]
 0065BADA    mov         esp,ebp
 0065BADC    pop         ebp
 0065BADD    ret
end;*}

//0065BAE0
{*function sub_0065BAE0(?:AnsiString):?;
begin
 0065BAE0    push        ebp
 0065BAE1    mov         ebp,esp
 0065BAE3    add         esp,0FFFFFFE8
 0065BAE6    mov         dword ptr [ebp-4],eax
 0065BAE9    lea         edx,[ebp-10]
 0065BAEC    mov         eax,dword ptr [ebp-4]
 0065BAEF    call        0065BB18
 0065BAF4    test        al,al
>0065BAF6    jne         0065BB11
 0065BAF8    mov         eax,dword ptr [ebp-4]
 0065BAFB    mov         dword ptr [ebp-18],eax
 0065BAFE    mov         byte ptr [ebp-14],0B
 0065BB02    lea         edx,[ebp-18]
 0065BB05    mov         eax,[006EA130];^gvar_0065EF4C
 0065BB0A    xor         ecx,ecx
 0065BB0C    call        ConvertErrorFmt
 0065BB11    fld         qword ptr [ebp-10]
 0065BB14    mov         esp,ebp
 0065BB16    pop         ebp
 0065BB17    ret
end;*}

//0065BB18
{*function sub_0065BB18(?:AnsiString; ?:?):?;
begin
 0065BB18    push        ebp
 0065BB19    mov         ebp,esp
 0065BB1B    add         esp,0FFFFFFE0
 0065BB1E    mov         dword ptr [ebp-8],edx
 0065BB21    mov         dword ptr [ebp-4],eax
 0065BB24    mov         byte ptr [ebp-9],1
 0065BB28    mov         dword ptr [ebp-10],1
 0065BB2F    xor         eax,eax
 0065BB31    mov         dword ptr [ebp-20],eax
 0065BB34    mov         dword ptr [ebp-1C],eax
 0065BB37    lea         ecx,[ebp-18]
 0065BB3A    lea         edx,[ebp-10]
 0065BB3D    mov         eax,dword ptr [ebp-4]
 0065BB40    call        0065B43C
 0065BB45    test        al,al
>0065BB47    je          0065BB68
 0065BB49    mov         eax,dword ptr [ebp-4]
 0065BB4C    call        @LStrLen
 0065BB51    cmp         eax,dword ptr [ebp-10]
>0065BB54    jl          0065BB78
 0065BB56    lea         ecx,[ebp-20]
 0065BB59    lea         edx,[ebp-10]
 0065BB5C    mov         eax,dword ptr [ebp-4]
 0065BB5F    call        0065B7C8
 0065BB64    test        al,al
>0065BB66    jne         0065BB78
 0065BB68    mov         edx,dword ptr [ebp-8]
 0065BB6B    mov         eax,dword ptr [ebp-4]
 0065BB6E    call        0065BA9C
 0065BB73    mov         byte ptr [ebp-9],al
>0065BB76    jmp         0065BBA0
 0065BB78    fld         qword ptr [ebp-18]
 0065BB7B    fcomp       dword ptr ds:[65BBA8];0:Single
 0065BB81    fnstsw      al
 0065BB83    sahf
>0065BB84    jb          0065BB94
 0065BB86    fld         qword ptr [ebp-18]
 0065BB89    fadd        qword ptr [ebp-20]
 0065BB8C    mov         eax,dword ptr [ebp-8]
 0065BB8F    fstp        qword ptr [eax]
 0065BB91    wait
>0065BB92    jmp         0065BBA0
 0065BB94    fld         qword ptr [ebp-18]
 0065BB97    fsub        qword ptr [ebp-20]
 0065BB9A    mov         eax,dword ptr [ebp-8]
 0065BB9D    fstp        qword ptr [eax]
 0065BB9F    wait
 0065BBA0    mov         al,byte ptr [ebp-9]
 0065BBA3    mov         esp,ebp
 0065BBA5    pop         ebp
 0065BBA6    ret
end;*}

//0065BBAC
{*procedure sub_0065BBAC(?:?; ?:AnsiString);
begin
 0065BBAC    push        ebp
 0065BBAD    mov         ebp,esp
 0065BBAF    add         esp,0FFFFFEF4
 0065BBB5    mov         dword ptr [ebp-8],edx
 0065BBB8    mov         dword ptr [ebp-4],eax
 0065BBBB    push        0
 0065BBBD    push        100
 0065BBC2    lea         eax,[ebp-10C]
 0065BBC8    push        eax
 0065BBC9    push        0
 0065BBCB    mov         eax,dword ptr [ebp-4]
 0065BBCE    push        eax
 0065BBCF    push        0
 0065BBD1    push        3000
 0065BBD6    call        KERNEL32.FormatMessageA
 0065BBDB    mov         dword ptr [ebp-0C],eax
>0065BBDE    jmp         0065BBE3
 0065BBE0    dec         dword ptr [ebp-0C]
 0065BBE3    cmp         dword ptr [ebp-0C],0
>0065BBE7    jle         0065BBFB
 0065BBE9    mov         eax,dword ptr [ebp-0C]
 0065BBEC    mov         al,byte ptr [ebp+eax-10D]
 0065BBF3    sub         al,21
>0065BBF5    jb          0065BBE0
 0065BBF7    sub         al,0D
>0065BBF9    je          0065BBE0
 0065BBFB    lea         edx,[ebp-10C]
 0065BC01    mov         eax,dword ptr [ebp-8]
 0065BC04    mov         ecx,dword ptr [ebp-0C]
 0065BC07    call        @LStrFromPCharLen
 0065BC0C    mov         esp,ebp
 0065BC0E    pop         ebp
 0065BC0F    ret
end;*}

//0065BC10
{*procedure sub_0065BC10(?:Integer; ?:?; ?:AnsiString; ?:?);
begin
 0065BC10    push        ebp
 0065BC11    mov         ebp,esp
 0065BC13    add         esp,0FFFFFEF0
 0065BC19    mov         dword ptr [ebp-0C],ecx
 0065BC1C    mov         dword ptr [ebp-8],edx
 0065BC1F    mov         dword ptr [ebp-4],eax
 0065BC22    push        100
 0065BC27    lea         eax,[ebp-110]
 0065BC2D    push        eax
 0065BC2E    mov         eax,dword ptr [ebp-8]
 0065BC31    push        eax
 0065BC32    mov         eax,dword ptr [ebp-4]
 0065BC35    push        eax
 0065BC36    call        KERNEL32.GetLocaleInfoA
 0065BC3B    mov         dword ptr [ebp-10],eax
 0065BC3E    cmp         dword ptr [ebp-10],0
>0065BC42    jle         0065BC58
 0065BC44    mov         ecx,dword ptr [ebp-10]
 0065BC47    dec         ecx
 0065BC48    lea         edx,[ebp-110]
 0065BC4E    mov         eax,dword ptr [ebp+8]
 0065BC51    call        @LStrFromPCharLen
>0065BC56    jmp         0065BC63
 0065BC58    mov         eax,dword ptr [ebp+8]
 0065BC5B    mov         edx,dword ptr [ebp-0C]
 0065BC5E    call        @LStrAsg
 0065BC63    mov         esp,ebp
 0065BC65    pop         ebp
 0065BC66    ret         4
end;*}

//0065BC6C
{*function sub_0065BC6C(?:Integer; ?:?; ?:?):?;
begin
 0065BC6C    push        ebp
 0065BC6D    mov         ebp,esp
 0065BC6F    add         esp,0FFFFFFF4
 0065BC72    mov         byte ptr [ebp-9],cl
 0065BC75    mov         dword ptr [ebp-8],edx
 0065BC78    mov         dword ptr [ebp-4],eax
 0065BC7B    push        2
 0065BC7D    lea         eax,[ebp-0C]
 0065BC80    push        eax
 0065BC81    mov         eax,dword ptr [ebp-8]
 0065BC84    push        eax
 0065BC85    mov         eax,dword ptr [ebp-4]
 0065BC88    push        eax
 0065BC89    call        KERNEL32.GetLocaleInfoA
 0065BC8E    test        eax,eax
>0065BC90    jle         0065BC9A
 0065BC92    mov         al,byte ptr [ebp-0C]
 0065BC95    mov         byte ptr [ebp-0A],al
>0065BC98    jmp         0065BCA0
 0065BC9A    mov         al,byte ptr [ebp-9]
 0065BC9D    mov         byte ptr [ebp-0A],al
 0065BCA0    mov         al,byte ptr [ebp-0A]
 0065BCA3    mov         esp,ebp
 0065BCA5    pop         ebp
 0065BCA6    ret
end;*}

//0065BCA8
{*procedure sub_0065BCA8(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0065BCA8    push        ebp
 0065BCA9    mov         ebp,esp
 0065BCAB    add         esp,0FFFFFFF4
 0065BCAE    mov         dword ptr [ebp-0C],ecx
 0065BCB1    mov         dword ptr [ebp-8],edx
 0065BCB4    mov         dword ptr [ebp-4],eax
 0065BCB7    mov         eax,dword ptr [ebp+8]
 0065BCBA    push        eax
 0065BCBB    mov         eax,dword ptr [ebp+10]
 0065BCBE    mov         eax,dword ptr [eax-4]
 0065BCC1    xor         ecx,ecx
 0065BCC3    mov         edx,dword ptr [ebp-4]
 0065BCC6    call        0065BC10
 0065BCCB    mov         eax,dword ptr [ebp+8]
 0065BCCE    cmp         dword ptr [eax],0
>0065BCD1    jne         0065BCE4
 0065BCD3    mov         eax,dword ptr [ebp-0C]
 0065BCD6    mov         edx,dword ptr [ebp-8]
 0065BCD9    mov         eax,dword ptr [eax+edx*4]
 0065BCDC    mov         edx,dword ptr [ebp+8]
 0065BCDF    call        LoadResString
 0065BCE4    mov         esp,ebp
 0065BCE6    pop         ebp
 0065BCE7    ret         8
end;*}

//0065BCEC
procedure sub_0065BCEC;
begin
{*
 0065BCEC    push        ebp
 0065BCED    mov         ebp,esp
 0065BCEF    xor         ecx,ecx
 0065BCF1    push        ecx
 0065BCF2    push        ecx
 0065BCF3    push        ecx
 0065BCF4    push        ecx
 0065BCF5    push        ecx
 0065BCF6    push        ecx
 0065BCF7    push        ecx
 0065BCF8    xor         eax,eax
 0065BCFA    push        ebp
 0065BCFB    push        65BE14
 0065BD00    push        dword ptr fs:[eax]
 0065BD03    mov         dword ptr fs:[eax],esp
 0065BD06    call        KERNEL32.GetThreadLocale
 0065BD0B    mov         dword ptr [ebp-4],eax
 0065BD0E    mov         dword ptr [ebp-8],1
 0065BD15    push        ebp
 0065BD16    push        0B
 0065BD18    lea         eax,[ebp-10]
 0065BD1B    push        eax
 0065BD1C    mov         ecx,6E4A6C
 0065BD21    mov         edx,dword ptr [ebp-8]
 0065BD24    dec         edx
 0065BD25    mov         eax,dword ptr [ebp-8]
 0065BD28    add         eax,44
 0065BD2B    dec         eax
 0065BD2C    call        0065BCA8
 0065BD31    pop         ecx
 0065BD32    mov         edx,dword ptr [ebp-10]
 0065BD35    mov         eax,dword ptr [ebp-8]
 0065BD38    lea         eax,[eax*4+6ED034];gvar_006ED034
 0065BD3F    call        @LStrAsg
 0065BD44    push        ebp
 0065BD45    push        0B
 0065BD47    lea         eax,[ebp-14]
 0065BD4A    push        eax
 0065BD4B    mov         ecx,6E4A9C
 0065BD50    mov         edx,dword ptr [ebp-8]
 0065BD53    dec         edx
 0065BD54    mov         eax,dword ptr [ebp-8]
 0065BD57    add         eax,38
 0065BD5A    dec         eax
 0065BD5B    call        0065BCA8
 0065BD60    pop         ecx
 0065BD61    mov         edx,dword ptr [ebp-14]
 0065BD64    mov         eax,dword ptr [ebp-8]
 0065BD67    lea         eax,[eax*4+6ED064]
 0065BD6E    call        @LStrAsg
 0065BD73    inc         dword ptr [ebp-8]
 0065BD76    cmp         dword ptr [ebp-8],0D
>0065BD7A    jne         0065BD15
 0065BD7C    mov         dword ptr [ebp-8],1
 0065BD83    mov         eax,dword ptr [ebp-8]
 0065BD86    add         eax,5
 0065BD89    mov         ecx,7
 0065BD8E    cdq
 0065BD8F    idiv        eax,ecx
 0065BD91    mov         dword ptr [ebp-0C],edx
 0065BD94    push        ebp
 0065BD95    push        6
 0065BD97    lea         eax,[ebp-18]
 0065BD9A    push        eax
 0065BD9B    mov         ecx,6E4ACC
 0065BDA0    mov         edx,dword ptr [ebp-8]
 0065BDA3    dec         edx
 0065BDA4    mov         eax,dword ptr [ebp-0C]
 0065BDA7    add         eax,31
 0065BDAA    call        0065BCA8
 0065BDAF    pop         ecx
 0065BDB0    mov         edx,dword ptr [ebp-18]
 0065BDB3    mov         eax,dword ptr [ebp-8]
 0065BDB6    lea         eax,[eax*4+6ED094]
 0065BDBD    call        @LStrAsg
 0065BDC2    push        ebp
 0065BDC3    push        6
 0065BDC5    lea         eax,[ebp-1C]
 0065BDC8    push        eax
 0065BDC9    mov         ecx,6E4AE8
 0065BDCE    mov         edx,dword ptr [ebp-8]
 0065BDD1    dec         edx
 0065BDD2    mov         eax,dword ptr [ebp-0C]
 0065BDD5    add         eax,2A
 0065BDD8    call        0065BCA8
 0065BDDD    pop         ecx
 0065BDDE    mov         edx,dword ptr [ebp-1C]
 0065BDE1    mov         eax,dword ptr [ebp-8]
 0065BDE4    lea         eax,[eax*4+6ED0B0]
 0065BDEB    call        @LStrAsg
 0065BDF0    inc         dword ptr [ebp-8]
 0065BDF3    cmp         dword ptr [ebp-8],8
>0065BDF7    jne         0065BD83
 0065BDF9    xor         eax,eax
 0065BDFB    pop         edx
 0065BDFC    pop         ecx
 0065BDFD    pop         ecx
 0065BDFE    mov         dword ptr fs:[eax],edx
 0065BE01    push        65BE1B
 0065BE06    lea         eax,[ebp-1C]
 0065BE09    mov         edx,4
 0065BE0E    call        @LStrArrayClr
 0065BE13    ret
>0065BE14    jmp         @HandleFinally
>0065BE19    jmp         0065BE06
 0065BE1B    mov         esp,ebp
 0065BE1D    pop         ebp
 0065BE1E    ret
*}
end;

//0065BEF8
procedure sub_0065BEF8;
begin
{*
 0065BEF8    push        ebp
 0065BEF9    mov         ebp,esp
 0065BEFB    add         esp,0FFFFFFF4
 0065BEFE    xor         eax,eax
 0065BF00    mov         dword ptr [ebp-0C],eax
 0065BF03    xor         eax,eax
 0065BF05    push        ebp
 0065BF06    push        65BFA4
 0065BF0B    push        dword ptr fs:[eax]
 0065BF0E    mov         dword ptr fs:[eax],esp
 0065BF11    lea         eax,[ebp-0C]
 0065BF14    push        eax
 0065BF15    call        KERNEL32.GetThreadLocale
 0065BF1A    mov         ecx,65BFB8;'1'
 0065BF1F    mov         edx,100B
 0065BF24    call        0065BC10
 0065BF29    mov         eax,dword ptr [ebp-0C]
 0065BF2C    mov         edx,1
 0065BF31    call        00657CD8
 0065BF36    mov         dword ptr [ebp-8],eax
 0065BF39    mov         eax,dword ptr [ebp-8]
 0065BF3C    add         eax,0FFFFFFFD
 0065BF3F    sub         eax,3
>0065BF42    jae         0065BF8E
 0065BF44    push        4
 0065BF46    mov         eax,dword ptr [ebp-8]
 0065BF49    push        eax
 0065BF4A    call        KERNEL32.GetThreadLocale
 0065BF4F    push        eax
 0065BF50    push        65BE20
 0065BF55    call        KERNEL32.EnumCalendarInfoA
 0065BF5A    mov         dword ptr [ebp-4],1
 0065BF61    mov         eax,dword ptr [ebp-4]
 0065BF64    mov         dword ptr [eax*4+6ED0F8],0FFFFFFFF
 0065BF6F    inc         dword ptr [ebp-4]
 0065BF72    cmp         dword ptr [ebp-4],8
>0065BF76    jne         0065BF61
 0065BF78    push        3
 0065BF7A    mov         eax,dword ptr [ebp-8]
 0065BF7D    push        eax
 0065BF7E    call        KERNEL32.GetThreadLocale
 0065BF83    push        eax
 0065BF84    push        65BE6C
 0065BF89    call        KERNEL32.EnumCalendarInfoA
 0065BF8E    xor         eax,eax
 0065BF90    pop         edx
 0065BF91    pop         ecx
 0065BF92    pop         ecx
 0065BF93    mov         dword ptr fs:[eax],edx
 0065BF96    push        65BFAB
 0065BF9B    lea         eax,[ebp-0C]
 0065BF9E    call        @LStrClr
 0065BFA3    ret
>0065BFA4    jmp         @HandleFinally
>0065BFA9    jmp         0065BF9B
 0065BFAB    mov         esp,ebp
 0065BFAD    pop         ebp
 0065BFAE    ret
*}
end;

//0065BFBC
{*procedure sub_0065BFBC(?:?; ?:?);
begin
 0065BFBC    push        ebp
 0065BFBD    mov         ebp,esp
 0065BFBF    add         esp,0FFFFFFD8
 0065BFC2    xor         ecx,ecx
 0065BFC4    mov         dword ptr [ebp-28],ecx
 0065BFC7    mov         dword ptr [ebp-24],ecx
 0065BFCA    mov         dword ptr [ebp-20],ecx
 0065BFCD    mov         dword ptr [ebp-1C],ecx
 0065BFD0    mov         dword ptr [ebp-8],edx
 0065BFD3    mov         dword ptr [ebp-4],eax
 0065BFD6    xor         eax,eax
 0065BFD8    push        ebp
 0065BFD9    push        65C202
 0065BFDE    push        dword ptr fs:[eax]
 0065BFE1    mov         dword ptr fs:[eax],esp
 0065BFE4    mov         dword ptr [ebp-0C],1
 0065BFEB    mov         eax,dword ptr [ebp-8]
 0065BFEE    call        @LStrClr
 0065BFF3    lea         eax,[ebp-1C]
 0065BFF6    push        eax
 0065BFF7    call        KERNEL32.GetThreadLocale
 0065BFFC    mov         ecx,65C218;'1'
 0065C001    mov         edx,1009
 0065C006    call        0065BC10
 0065C00B    mov         eax,dword ptr [ebp-1C]
 0065C00E    mov         edx,1
 0065C013    call        00657CD8
 0065C018    mov         dword ptr [ebp-14],eax
 0065C01B    mov         eax,dword ptr [ebp-14]
 0065C01E    add         eax,0FFFFFFFD
 0065C021    sub         eax,3
>0065C024    jb          0065C1D6
 0065C02A    mov         eax,[006ED0D4];0x0 gvar_006ED0D4
 0065C02F    sub         eax,4
>0065C032    je          0065C040
 0065C034    add         eax,0FFFFFFF3
 0065C037    sub         eax,2
>0065C03A    jb          0065C040
 0065C03C    xor         eax,eax
>0065C03E    jmp         0065C042
 0065C040    mov         al,1
 0065C042    mov         byte ptr [ebp-15],al
 0065C045    cmp         byte ptr [ebp-15],0
>0065C049    je          0065C094
>0065C04B    jmp         0065C082
 0065C04D    mov         eax,dword ptr [ebp-0C]
 0065C050    mov         edx,dword ptr [ebp-4]
 0065C053    mov         al,byte ptr [edx+eax-1]
 0065C057    sub         al,47
>0065C059    je          0065C07F
 0065C05B    sub         al,20
>0065C05D    je          0065C07F
 0065C05F    lea         eax,[ebp-20]
 0065C062    mov         edx,dword ptr [ebp-0C]
 0065C065    mov         ecx,dword ptr [ebp-4]
 0065C068    mov         dl,byte ptr [ecx+edx-1]
 0065C06C    call        @LStrFromChar
 0065C071    mov         edx,dword ptr [ebp-20]
 0065C074    mov         eax,dword ptr [ebp-8]
 0065C077    call        @LStrCat
 0065C07C    mov         eax,dword ptr [ebp-8]
 0065C07F    inc         dword ptr [ebp-0C]
 0065C082    mov         eax,dword ptr [ebp-4]
 0065C085    call        @LStrLen
 0065C08A    cmp         eax,dword ptr [ebp-0C]
>0065C08D    jge         0065C04D
>0065C08F    jmp         0065C1E7
 0065C094    mov         eax,dword ptr [ebp-8]
 0065C097    mov         edx,dword ptr [ebp-4]
 0065C09A    call        @LStrAsg
>0065C09F    jmp         0065C1E7
 0065C0A4    mov         eax,dword ptr [ebp-0C]
 0065C0A7    mov         edx,dword ptr [ebp-4]
 0065C0AA    mov         al,byte ptr [edx+eax-1]
 0065C0AE    and         eax,0FF
 0065C0B3    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065C0BA    jae         0065C0F5
 0065C0BC    mov         edx,dword ptr [ebp-0C]
 0065C0BF    mov         eax,dword ptr [ebp-4]
 0065C0C2    call        0065D2B0
 0065C0C7    mov         dword ptr [ebp-10],eax
 0065C0CA    lea         eax,[ebp-24]
 0065C0CD    push        eax
 0065C0CE    mov         ecx,dword ptr [ebp-10]
 0065C0D1    mov         edx,dword ptr [ebp-0C]
 0065C0D4    mov         eax,dword ptr [ebp-4]
 0065C0D7    call        @LStrCopy
 0065C0DC    mov         edx,dword ptr [ebp-24]
 0065C0DF    mov         eax,dword ptr [ebp-8]
 0065C0E2    call        @LStrCat
 0065C0E7    mov         eax,dword ptr [ebp-8]
 0065C0EA    mov         eax,dword ptr [ebp-10]
 0065C0ED    add         dword ptr [ebp-0C],eax
>0065C0F0    jmp         0065C1D6
 0065C0F5    mov         edx,65C21C
 0065C0FA    mov         eax,dword ptr [ebp-0C]
 0065C0FD    mov         ecx,dword ptr [ebp-4]
 0065C100    lea         eax,[ecx+eax-1]
 0065C104    mov         ecx,2
 0065C109    call        StrLIComp
 0065C10E    test        eax,eax
>0065C110    jne         0065C12A
 0065C112    mov         eax,dword ptr [ebp-8]
 0065C115    mov         edx,65C228;'ggg'
 0065C11A    call        @LStrCat
 0065C11F    mov         eax,dword ptr [ebp-8]
 0065C122    inc         dword ptr [ebp-0C]
>0065C125    jmp         0065C1D3
 0065C12A    mov         edx,65C22C
 0065C12F    mov         eax,dword ptr [ebp-0C]
 0065C132    mov         ecx,dword ptr [ebp-4]
 0065C135    lea         eax,[ecx+eax-1]
 0065C139    mov         ecx,4
 0065C13E    call        StrLIComp
 0065C143    test        eax,eax
>0065C145    jne         0065C15D
 0065C147    mov         eax,dword ptr [ebp-8]
 0065C14A    mov         edx,65C23C;'eeee'
 0065C14F    call        @LStrCat
 0065C154    mov         eax,dword ptr [ebp-8]
 0065C157    add         dword ptr [ebp-0C],3
>0065C15B    jmp         0065C1D3
 0065C15D    mov         edx,65C244
 0065C162    mov         eax,dword ptr [ebp-0C]
 0065C165    mov         ecx,dword ptr [ebp-4]
 0065C168    lea         eax,[ecx+eax-1]
 0065C16C    mov         ecx,2
 0065C171    call        StrLIComp
 0065C176    test        eax,eax
>0065C178    jne         0065C18F
 0065C17A    mov         eax,dword ptr [ebp-8]
 0065C17D    mov         edx,65C250;'ee'
 0065C182    call        @LStrCat
 0065C187    mov         eax,dword ptr [ebp-8]
 0065C18A    inc         dword ptr [ebp-0C]
>0065C18D    jmp         0065C1D3
 0065C18F    mov         eax,dword ptr [ebp-0C]
 0065C192    mov         edx,dword ptr [ebp-4]
 0065C195    mov         al,byte ptr [edx+eax-1]
 0065C199    sub         al,59
>0065C19B    je          0065C1A1
 0065C19D    sub         al,20
>0065C19F    jne         0065C1B3
 0065C1A1    mov         eax,dword ptr [ebp-8]
 0065C1A4    mov         edx,65C25C;'e'
 0065C1A9    call        @LStrCat
 0065C1AE    mov         eax,dword ptr [ebp-8]
>0065C1B1    jmp         0065C1D3
 0065C1B3    lea         eax,[ebp-28]
 0065C1B6    mov         edx,dword ptr [ebp-0C]
 0065C1B9    mov         ecx,dword ptr [ebp-4]
 0065C1BC    mov         dl,byte ptr [ecx+edx-1]
 0065C1C0    call        @LStrFromChar
 0065C1C5    mov         edx,dword ptr [ebp-28]
 0065C1C8    mov         eax,dword ptr [ebp-8]
 0065C1CB    call        @LStrCat
 0065C1D0    mov         eax,dword ptr [ebp-8]
 0065C1D3    inc         dword ptr [ebp-0C]
 0065C1D6    mov         eax,dword ptr [ebp-4]
 0065C1D9    call        @LStrLen
 0065C1DE    cmp         eax,dword ptr [ebp-0C]
>0065C1E1    jge         0065C0A4
 0065C1E7    xor         eax,eax
 0065C1E9    pop         edx
 0065C1EA    pop         ecx
 0065C1EB    pop         ecx
 0065C1EC    mov         dword ptr fs:[eax],edx
 0065C1EF    push        65C209
 0065C1F4    lea         eax,[ebp-28]
 0065C1F7    mov         edx,4
 0065C1FC    call        @LStrArrayClr
 0065C201    ret
>0065C202    jmp         @HandleFinally
>0065C207    jmp         0065C1F4
 0065C209    mov         esp,ebp
 0065C20B    pop         ebp
 0065C20C    ret
end;*}

//0065C260
{*function sub_0065C260(?:?):?;
begin
 0065C260    push        ebp
 0065C261    mov         ebp,esp
 0065C263    test        eax,eax
>0065C265    je          0065C26C
 0065C267    sub         eax,1000
 0065C26C    pop         ebp
 0065C26D    ret
end;*}

//0065C270
{*function sub_0065C270(?:?; ?:?; ?:?; ?:?):?;
begin
 0065C270    push        ebp
 0065C271    mov         ebp,esp
 0065C273    add         esp,0FFFFFB90
 0065C279    mov         dword ptr [ebp-0C],ecx
 0065C27C    mov         dword ptr [ebp-8],edx
 0065C27F    mov         dword ptr [ebp-4],eax
 0065C282    push        1C
 0065C284    lea         eax,[ebp-348]
 0065C28A    push        eax
 0065C28B    mov         eax,dword ptr [ebp-8]
 0065C28E    push        eax
 0065C28F    call        KERNEL32.VirtualQuery
 0065C294    cmp         dword ptr [ebp-338],1000
>0065C29E    jne         0065C2BC
 0065C2A0    push        105
 0065C2A5    lea         eax,[ebp-22A]
 0065C2AB    push        eax
 0065C2AC    mov         eax,dword ptr [ebp-344]
 0065C2B2    push        eax
 0065C2B3    call        KERNEL32.GetModuleFileNameA
 0065C2B8    test        eax,eax
>0065C2BA    jne         0065C2E2
 0065C2BC    push        105
 0065C2C1    lea         eax,[ebp-22A]
 0065C2C7    push        eax
 0065C2C8    mov         eax,[006EA390];0x0 gvar_006EA390
 0065C2CD    push        eax
 0065C2CE    call        KERNEL32.GetModuleFileNameA
 0065C2D3    push        ebp
 0065C2D4    mov         eax,dword ptr [ebp-8]
 0065C2D7    call        0065C260
 0065C2DC    pop         ecx
 0065C2DD    mov         dword ptr [ebp-20],eax
>0065C2E0    jmp         0065C2EE
 0065C2E2    mov         eax,dword ptr [ebp-8]
 0065C2E5    sub         eax,dword ptr [ebp-344]
 0065C2EB    mov         dword ptr [ebp-20],eax
 0065C2EE    lea         eax,[ebp-22A]
 0065C2F4    mov         dl,5C
 0065C2F6    call        0065D73C
 0065C2FB    mov         edx,eax
 0065C2FD    inc         edx
 0065C2FE    lea         eax,[ebp-125]
 0065C304    mov         ecx,104
 0065C309    call        StrLCopy
 0065C30E    mov         eax,65C420
 0065C313    mov         dword ptr [ebp-14],eax
 0065C316    mov         eax,65C420
 0065C31B    mov         dword ptr [ebp-18],eax
 0065C31E    mov         eax,dword ptr [ebp-4]
 0065C321    mov         edx,dword ptr ds:[656774];Exception
 0065C327    call        @IsClass
 0065C32C    test        al,al
>0065C32E    je          0065C364
 0065C330    mov         eax,dword ptr [ebp-4]
 0065C333    mov         eax,dword ptr [eax+4]
 0065C336    call        @LStrToPChar
 0065C33B    mov         dword ptr [ebp-14],eax
 0065C33E    mov         eax,dword ptr [ebp-14]
 0065C341    call        StrLen
 0065C346    mov         dword ptr [ebp-1C],eax
 0065C349    cmp         dword ptr [ebp-1C],0
>0065C34D    je          0065C364
 0065C34F    mov         eax,dword ptr [ebp-1C]
 0065C352    mov         edx,dword ptr [ebp-14]
 0065C355    cmp         byte ptr [edx+eax-1],2E
>0065C35A    je          0065C364
 0065C35C    mov         eax,65C424
 0065C361    mov         dword ptr [ebp-18],eax
 0065C364    push        100
 0065C369    lea         eax,[ebp-32A]
 0065C36F    push        eax
 0065C370    mov         eax,[006EA198];^gvar_0065F01C
 0065C375    mov         eax,dword ptr [eax+4]
 0065C378    push        eax
 0065C379    mov         eax,[006EA390];0x0 gvar_006EA390
 0065C37E    call        FindResourceHInstance
 0065C383    push        eax
 0065C384    call        USER32.LoadStringA
 0065C389    lea         edx,[ebp-470]
 0065C38F    mov         eax,dword ptr [ebp-4]
 0065C392    mov         eax,dword ptr [eax]
 0065C394    call        TObject.ClassName
 0065C399    lea         eax,[ebp-470]
 0065C39F    mov         dword ptr [ebp-370],eax
 0065C3A5    mov         byte ptr [ebp-36C],4
 0065C3AC    lea         eax,[ebp-125]
 0065C3B2    mov         dword ptr [ebp-368],eax
 0065C3B8    mov         byte ptr [ebp-364],6
 0065C3BF    mov         eax,dword ptr [ebp-20]
 0065C3C2    mov         dword ptr [ebp-360],eax
 0065C3C8    mov         byte ptr [ebp-35C],5
 0065C3CF    mov         eax,dword ptr [ebp-14]
 0065C3D2    mov         dword ptr [ebp-358],eax
 0065C3D8    mov         byte ptr [ebp-354],6
 0065C3DF    mov         eax,dword ptr [ebp-18]
 0065C3E2    mov         dword ptr [ebp-350],eax
 0065C3E8    mov         byte ptr [ebp-34C],6
 0065C3EF    lea         eax,[ebp-370]
 0065C3F5    push        eax
 0065C3F6    push        4
 0065C3F8    lea         ecx,[ebp-32A]
 0065C3FE    mov         edx,dword ptr [ebp+8]
 0065C401    mov         eax,dword ptr [ebp-0C]
 0065C404    call        00658F64
 0065C409    mov         eax,dword ptr [ebp-0C]
 0065C40C    call        StrLen
 0065C411    mov         dword ptr [ebp-10],eax
 0065C414    mov         eax,dword ptr [ebp-10]
 0065C417    mov         esp,ebp
 0065C419    pop         ebp
 0065C41A    ret         4
end;*}

//0065C428
{*procedure sub_0065C428(?:?; ?:?);
begin
 0065C428    push        ebp
 0065C429    mov         ebp,esp
 0065C42B    add         esp,0FFFFFBB4
 0065C431    mov         dword ptr [ebp-8],edx
 0065C434    mov         dword ptr [ebp-4],eax
 0065C437    push        400
 0065C43C    lea         ecx,[ebp-44C]
 0065C442    mov         edx,dword ptr [ebp-8]
 0065C445    mov         eax,dword ptr [ebp-4]
 0065C448    call        0065C270
 0065C44D    mov         eax,[006EA2E8];^IsConsole:Boolean
 0065C452    cmp         byte ptr [eax],0
>0065C455    je          0065C4A8
 0065C457    mov         eax,[006EA2EC];^Output:Text
 0065C45C    call        Flush
 0065C461    call        @_IOTest
 0065C466    push        0
 0065C468    lea         eax,[ebp-0C]
 0065C46B    push        eax
 0065C46C    lea         eax,[ebp-44C]
 0065C472    call        StrLen
 0065C477    push        eax
 0065C478    lea         eax,[ebp-44C]
 0065C47E    push        eax
 0065C47F    push        0F5
 0065C481    call        KERNEL32.GetStdHandle
 0065C486    push        eax
 0065C487    call        KERNEL32.WriteFile
 0065C48C    push        0
 0065C48E    lea         eax,[ebp-0C]
 0065C491    push        eax
 0065C492    push        2
 0065C494    push        65C4EC;#13+#10
 0065C499    push        0F5
 0065C49B    call        KERNEL32.GetStdHandle
 0065C4A0    push        eax
 0065C4A1    call        KERNEL32.WriteFile
>0065C4A6    jmp         0065C4DE
 0065C4A8    push        40
 0065C4AA    lea         eax,[ebp-4C]
 0065C4AD    push        eax
 0065C4AE    mov         eax,[006EA19C];^gvar_0065F024
 0065C4B3    mov         eax,dword ptr [eax+4]
 0065C4B6    push        eax
 0065C4B7    mov         eax,[006EA390];0x0 gvar_006EA390
 0065C4BC    call        FindResourceHInstance
 0065C4C1    push        eax
 0065C4C2    call        USER32.LoadStringA
 0065C4C7    push        2010
 0065C4CC    lea         eax,[ebp-4C]
 0065C4CF    push        eax
 0065C4D0    lea         eax,[ebp-44C]
 0065C4D6    push        eax
 0065C4D7    push        0
 0065C4D9    call        USER32.MessageBoxA
 0065C4DE    mov         esp,ebp
 0065C4E0    pop         ebp
 0065C4E1    ret
end;*}

//0065C4F0
constructor Exception.Create(const Msg:AnsiString);
begin
{*
 0065C4F0    push        ebp
 0065C4F1    mov         ebp,esp
 0065C4F3    add         esp,0FFFFFFF4
 0065C4F6    test        dl,dl
>0065C4F8    je          0065C502
 0065C4FA    add         esp,0FFFFFFF0
 0065C4FD    call        @ClassCreate
 0065C502    mov         dword ptr [ebp-0C],ecx
 0065C505    mov         byte ptr [ebp-5],dl
 0065C508    mov         dword ptr [ebp-4],eax
 0065C50B    mov         eax,dword ptr [ebp-4]
 0065C50E    add         eax,4
 0065C511    mov         edx,dword ptr [ebp-0C]
 0065C514    call        @LStrAsg
 0065C519    mov         eax,dword ptr [ebp-4]
 0065C51C    cmp         byte ptr [ebp-5],0
>0065C520    je          0065C531
 0065C522    call        @AfterConstruction
 0065C527    pop         dword ptr fs:[0]
 0065C52E    add         esp,0C
 0065C531    mov         eax,dword ptr [ebp-4]
 0065C534    mov         esp,ebp
 0065C536    pop         ebp
 0065C537    ret
*}
end;

//0065C538
constructor Exception.CreateFmt(const Msg:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 0065C538    push        ebp
 0065C539    mov         ebp,esp
 0065C53B    add         esp,0FFFFFFF0
 0065C53E    push        ebx
 0065C53F    xor         ebx,ebx
 0065C541    mov         dword ptr [ebp-10],ebx
 0065C544    test        dl,dl
>0065C546    je          0065C550
 0065C548    add         esp,0FFFFFFF0
 0065C54B    call        @ClassCreate
 0065C550    mov         dword ptr [ebp-0C],ecx
 0065C553    mov         byte ptr [ebp-5],dl
 0065C556    mov         dword ptr [ebp-4],eax
 0065C559    xor         eax,eax
 0065C55B    push        ebp
 0065C55C    push        65C59D
 0065C561    push        dword ptr fs:[eax]
 0065C564    mov         dword ptr fs:[eax],esp
 0065C567    lea         eax,[ebp-10]
 0065C56A    push        eax
 0065C56B    mov         edx,dword ptr [ebp+0C]
 0065C56E    mov         ecx,dword ptr [ebp+8]
 0065C571    mov         eax,dword ptr [ebp-0C]
 0065C574    call        00658FBC
 0065C579    mov         edx,dword ptr [ebp-10]
 0065C57C    mov         eax,dword ptr [ebp-4]
 0065C57F    add         eax,4
 0065C582    call        @LStrAsg
 0065C587    xor         eax,eax
 0065C589    pop         edx
 0065C58A    pop         ecx
 0065C58B    pop         ecx
 0065C58C    mov         dword ptr fs:[eax],edx
 0065C58F    push        65C5A4
 0065C594    lea         eax,[ebp-10]
 0065C597    call        @LStrClr
 0065C59C    ret
>0065C59D    jmp         @HandleFinally
>0065C5A2    jmp         0065C594
 0065C5A4    mov         eax,dword ptr [ebp-4]
 0065C5A7    cmp         byte ptr [ebp-5],0
>0065C5AB    je          0065C5BC
 0065C5AD    call        @AfterConstruction
 0065C5B2    pop         dword ptr fs:[0]
 0065C5B9    add         esp,0C
 0065C5BC    mov         eax,dword ptr [ebp-4]
 0065C5BF    pop         ebx
 0065C5C0    mov         esp,ebp
 0065C5C2    pop         ebp
 0065C5C3    ret         8
*}
end;

//0065C5C8
constructor Exception.Create;
begin
{*
 0065C5C8    push        ebp
 0065C5C9    mov         ebp,esp
 0065C5CB    add         esp,0FFFFFFF4
 0065C5CE    test        dl,dl
>0065C5D0    je          0065C5DA
 0065C5D2    add         esp,0FFFFFFF0
 0065C5D5    call        @ClassCreate
 0065C5DA    mov         dword ptr [ebp-0C],ecx
 0065C5DD    mov         byte ptr [ebp-5],dl
 0065C5E0    mov         dword ptr [ebp-4],eax
 0065C5E3    mov         eax,dword ptr [ebp-4]
 0065C5E6    lea         edx,[eax+4];Exception.FMessage:String
 0065C5E9    mov         eax,dword ptr [ebp-0C]
 0065C5EC    call        LoadResString;'No valid DataSource: %s'
 0065C5F1    mov         eax,dword ptr [ebp-4]
 0065C5F4    cmp         byte ptr [ebp-5],0
>0065C5F8    je          0065C609
 0065C5FA    call        @AfterConstruction
 0065C5FF    pop         dword ptr fs:[0]
 0065C606    add         esp,0C
 0065C609    mov         eax,dword ptr [ebp-4]
 0065C60C    mov         esp,ebp
 0065C60E    pop         ebp
 0065C60F    ret
*}
end;

//0065C610
constructor Exception.CreateResFmt(Ident:Integer; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 0065C610    push        ebp
 0065C611    mov         ebp,esp
 0065C613    add         esp,0FFFFFFEC
 0065C616    push        ebx
 0065C617    xor         ebx,ebx
 0065C619    mov         dword ptr [ebp-10],ebx
 0065C61C    mov         dword ptr [ebp-14],ebx
 0065C61F    test        dl,dl
>0065C621    je          0065C62B
 0065C623    add         esp,0FFFFFFF0
 0065C626    call        @ClassCreate
 0065C62B    mov         dword ptr [ebp-0C],ecx
 0065C62E    mov         byte ptr [ebp-5],dl
 0065C631    mov         dword ptr [ebp-4],eax
 0065C634    xor         eax,eax
 0065C636    push        ebp
 0065C637    push        65C688
 0065C63C    push        dword ptr fs:[eax]
 0065C63F    mov         dword ptr fs:[eax],esp
 0065C642    lea         eax,[ebp-10]
 0065C645    push        eax
 0065C646    lea         edx,[ebp-14]
 0065C649    mov         eax,dword ptr [ebp-0C]
 0065C64C    call        LoadResString
 0065C651    mov         eax,dword ptr [ebp-14]
 0065C654    mov         edx,dword ptr [ebp+0C]
 0065C657    mov         ecx,dword ptr [ebp+8]
 0065C65A    call        00658FBC
 0065C65F    mov         edx,dword ptr [ebp-10]
 0065C662    mov         eax,dword ptr [ebp-4]
 0065C665    add         eax,4
 0065C668    call        @LStrAsg
 0065C66D    xor         eax,eax
 0065C66F    pop         edx
 0065C670    pop         ecx
 0065C671    pop         ecx
 0065C672    mov         dword ptr fs:[eax],edx
 0065C675    push        65C68F
 0065C67A    lea         eax,[ebp-14]
 0065C67D    mov         edx,2
 0065C682    call        @LStrArrayClr
 0065C687    ret
>0065C688    jmp         @HandleFinally
>0065C68D    jmp         0065C67A
 0065C68F    mov         eax,dword ptr [ebp-4]
 0065C692    cmp         byte ptr [ebp-5],0
>0065C696    je          0065C6A7
 0065C698    call        @AfterConstruction
 0065C69D    pop         dword ptr fs:[0]
 0065C6A4    add         esp,0C
 0065C6A7    mov         eax,dword ptr [ebp-4]
 0065C6AA    pop         ebx
 0065C6AB    mov         esp,ebp
 0065C6AD    pop         ebp
 0065C6AE    ret         8
*}
end;

//0065C6B4
{*constructor sub_0065C6B4(?:?);
begin
 0065C6B4    push        ebp
 0065C6B5    mov         ebp,esp
 0065C6B7    add         esp,0FFFFFFF4
 0065C6BA    test        dl,dl
>0065C6BC    je          0065C6C6
 0065C6BE    add         esp,0FFFFFFF0
 0065C6C1    call        @ClassCreate
 0065C6C6    mov         dword ptr [ebp-0C],ecx
 0065C6C9    mov         byte ptr [ebp-5],dl
 0065C6CC    mov         dword ptr [ebp-4],eax
 0065C6CF    mov         eax,dword ptr [ebp-4]
 0065C6D2    add         eax,4
 0065C6D5    mov         edx,dword ptr [ebp-0C]
 0065C6D8    call        @LStrAsg
 0065C6DD    mov         eax,dword ptr [ebp-4]
 0065C6E0    mov         edx,dword ptr [ebp+8]
 0065C6E3    mov         dword ptr [eax+8],edx
 0065C6E6    mov         eax,dword ptr [ebp-4]
 0065C6E9    cmp         byte ptr [ebp-5],0
>0065C6ED    je          0065C6FE
 0065C6EF    call        @AfterConstruction
 0065C6F4    pop         dword ptr fs:[0]
 0065C6FB    add         esp,0C
 0065C6FE    mov         eax,dword ptr [ebp-4]
 0065C701    mov         esp,ebp
 0065C703    pop         ebp
 0065C704    ret         4
end;*}

//0065C744
{*function sub_0065C744:?;
begin
 0065C744    push        ebp
 0065C745    mov         ebp,esp
 0065C747    add         esp,0FFFFFFEC
 0065C74A    xor         eax,eax
 0065C74C    mov         dword ptr [ebp-8],eax
 0065C74F    call        IOResult
 0065C754    mov         dword ptr [ebp-0C],eax
>0065C757    jmp         0065C75C
 0065C759    inc         dword ptr [ebp-8]
 0065C75C    cmp         dword ptr [ebp-8],6
>0065C760    jg          0065C771
 0065C762    mov         eax,dword ptr [ebp-8]
 0065C765    mov         eax,dword ptr [eax*8+6E4B04]
 0065C76C    cmp         eax,dword ptr [ebp-0C]
>0065C76F    jne         0065C759
 0065C771    cmp         dword ptr [ebp-8],6
>0065C775    jg          0065C792
 0065C777    mov         eax,dword ptr [ebp-8]
 0065C77A    mov         ecx,dword ptr [eax*8+6E4B08]
 0065C781    mov         dl,1
 0065C783    mov         eax,[006568E8];EInOutError
 0065C788    call        Exception.Create;EInOutError.Create
 0065C78D    mov         dword ptr [ebp-4],eax
>0065C790    jmp         0065C7B7
 0065C792    mov         eax,dword ptr [ebp-0C]
 0065C795    mov         dword ptr [ebp-14],eax
 0065C798    mov         byte ptr [ebp-10],0
 0065C79C    lea         eax,[ebp-14]
 0065C79F    push        eax
 0065C7A0    push        0
 0065C7A2    mov         ecx,dword ptr ds:[6EA144];^gvar_0065EF74
 0065C7A8    mov         dl,1
 0065C7AA    mov         eax,[006568E8];EInOutError
 0065C7AF    call        Exception.CreateResFmt;EInOutError.Create
 0065C7B4    mov         dword ptr [ebp-4],eax
 0065C7B7    mov         eax,dword ptr [ebp-4]
 0065C7BA    mov         edx,dword ptr [ebp-0C]
 0065C7BD    mov         dword ptr [eax+0C],edx;EInOutError...ErrorCode:Integer
 0065C7C0    mov         eax,dword ptr [ebp-4]
 0065C7C3    mov         esp,ebp
 0065C7C5    pop         ebp
 0065C7C6    ret
end;*}

//0065C858
{*function sub_0065C858(?:?; ?:?; ?:?):?;
begin
 0065C858    push        ebp
 0065C859    mov         ebp,esp
 0065C85B    add         esp,0FFFFFFD0
 0065C85E    push        ebx
 0065C85F    xor         ebx,ebx
 0065C861    mov         dword ptr [ebp-30],ebx
 0065C864    mov         dword ptr [ebp-14],ebx
 0065C867    mov         dword ptr [ebp-0C],ecx
 0065C86A    mov         dword ptr [ebp-8],edx
 0065C86D    mov         dword ptr [ebp-4],eax
 0065C870    xor         eax,eax
 0065C872    push        ebp
 0065C873    push        65C8FF
 0065C878    push        dword ptr fs:[eax]
 0065C87B    mov         dword ptr fs:[eax],esp
 0065C87E    cmp         dword ptr [ebp-4],0
>0065C882    je          0065C891
 0065C884    lea         eax,[ebp-14]
 0065C887    mov         edx,dword ptr [ebp-4]
 0065C88A    call        @LStrLAsg
>0065C88F    jmp         0065C89E
 0065C891    lea         edx,[ebp-14]
 0065C894    mov         eax,[006EA1D0];^gvar_0065F0D4
 0065C899    call        LoadResString
 0065C89E    mov         eax,dword ptr [ebp-14]
 0065C8A1    mov         dword ptr [ebp-2C],eax
 0065C8A4    mov         byte ptr [ebp-28],0B
 0065C8A8    mov         eax,dword ptr [ebp-8]
 0065C8AB    mov         dword ptr [ebp-24],eax
 0065C8AE    mov         byte ptr [ebp-20],0B
 0065C8B2    mov         eax,dword ptr [ebp-0C]
 0065C8B5    mov         dword ptr [ebp-1C],eax
 0065C8B8    mov         byte ptr [ebp-18],0
 0065C8BC    lea         eax,[ebp-2C]
 0065C8BF    push        eax
 0065C8C0    push        2
 0065C8C2    lea         edx,[ebp-30]
 0065C8C5    mov         eax,[006EA1DC];^gvar_0065F0EC
 0065C8CA    call        LoadResString
 0065C8CF    mov         ecx,dword ptr [ebp-30]
 0065C8D2    mov         dl,1
 0065C8D4    mov         eax,[00656FF0];EAssertionFailed
 0065C8D9    call        Exception.CreateFmt;EAssertionFailed.Create
 0065C8DE    mov         dword ptr [ebp-10],eax
 0065C8E1    xor         eax,eax
 0065C8E3    pop         edx
 0065C8E4    pop         ecx
 0065C8E5    pop         ecx
 0065C8E6    mov         dword ptr fs:[eax],edx
 0065C8E9    push        65C906
 0065C8EE    lea         eax,[ebp-30]
 0065C8F1    call        @LStrClr
 0065C8F6    lea         eax,[ebp-14]
 0065C8F9    call        @LStrClr
 0065C8FE    ret
>0065C8FF    jmp         @HandleFinally
>0065C904    jmp         0065C8EE
 0065C906    mov         eax,dword ptr [ebp-10]
 0065C909    pop         ebx
 0065C90A    mov         esp,ebp
 0065C90C    pop         ebp
 0065C90D    ret
end;*}

//0065C910
procedure RaiseAssertException(const E:Exception; const ErrorAddr:Pointer; const ErrorStack:Pointer);
begin
{*
 0065C910    mov         esp,ecx
 0065C912    mov         dword ptr [esp],edx
 0065C915    mov         ebp,dword ptr [ebp]
>0065C918    jmp         @RaiseExcept
 0065C91D    ret
*}
end;

//0065C974
{*function sub_0065C974(?:?):?;
begin
 0065C974    push        ebp
 0065C975    mov         ebp,esp
 0065C977    add         esp,0FFFFFFF8
 0065C97A    mov         dword ptr [ebp-4],eax
 0065C97D    mov         eax,dword ptr [ebp-4]
 0065C980    mov         eax,dword ptr [eax]
 0065C982    cmp         eax,0C0000092
>0065C987    jg          0065C9B5
>0065C989    je          0065C9ED
 0065C98B    cmp         eax,0C000008E
>0065C990    jg          0065C9A7
>0065C992    je          0065C9F3
 0065C994    sub         eax,0C0000005
>0065C999    je          0065CA05
 0065C99B    sub         eax,87
>0065C9A0    je          0065C9E1
 0065C9A2    dec         eax
>0065C9A3    je          0065C9FF
>0065C9A5    jmp         0065CA1D
 0065C9A7    add         eax,3FFFFF71
 0065C9AC    sub         eax,2
>0065C9AF    jb          0065C9ED
>0065C9B1    je          0065C9F9
>0065C9B3    jmp         0065CA1D
 0065C9B5    cmp         eax,0C0000096
>0065C9BA    jg          0065C9CD
>0065C9BC    je          0065CA0B
 0065C9BE    sub         eax,0C0000093
>0065C9C3    je          0065C9FF
 0065C9C5    dec         eax
>0065C9C6    je          0065C9DB
 0065C9C8    dec         eax
>0065C9C9    je          0065C9E7
>0065C9CB    jmp         0065CA1D
 0065C9CD    sub         eax,0C00000FD
>0065C9D2    je          0065CA17
 0065C9D4    sub         eax,3D
>0065C9D7    je          0065CA11
>0065C9D9    jmp         0065CA1D
 0065C9DB    mov         byte ptr [ebp-5],3
>0065C9DF    jmp         0065CA21
 0065C9E1    mov         byte ptr [ebp-5],4
>0065C9E5    jmp         0065CA21
 0065C9E7    mov         byte ptr [ebp-5],5
>0065C9EB    jmp         0065CA21
 0065C9ED    mov         byte ptr [ebp-5],6
>0065C9F1    jmp         0065CA21
 0065C9F3    mov         byte ptr [ebp-5],7
>0065C9F7    jmp         0065CA21
 0065C9F9    mov         byte ptr [ebp-5],8
>0065C9FD    jmp         0065CA21
 0065C9FF    mov         byte ptr [ebp-5],9
>0065CA03    jmp         0065CA21
 0065CA05    mov         byte ptr [ebp-5],0B
>0065CA09    jmp         0065CA21
 0065CA0B    mov         byte ptr [ebp-5],0C
>0065CA0F    jmp         0065CA21
 0065CA11    mov         byte ptr [ebp-5],0D
>0065CA15    jmp         0065CA21
 0065CA17    mov         byte ptr [ebp-5],0E
>0065CA1B    jmp         0065CA21
 0065CA1D    mov         byte ptr [ebp-5],16
 0065CA21    mov         al,byte ptr [ebp-5]
 0065CA24    pop         ecx
 0065CA25    pop         ecx
 0065CA26    pop         ebp
 0065CA27    ret
end;*}

//0065CA54
{*function sub_0065CA54(?:?):?;
begin
 0065CA54    push        ebp
 0065CA55    mov         ebp,esp
 0065CA57    add         esp,0FFFFFE84
 0065CA5D    xor         eax,eax
 0065CA5F    mov         dword ptr [ebp-17C],eax
 0065CA65    mov         dword ptr [ebp-158],eax
 0065CA6B    mov         dword ptr [ebp-160],eax
 0065CA71    mov         dword ptr [ebp-15C],eax
 0065CA77    mov         dword ptr [ebp-8],eax
 0065CA7A    xor         eax,eax
 0065CA7C    push        ebp
 0065CA7D    push        65CC2A
 0065CA82    push        dword ptr fs:[eax]
 0065CA85    mov         dword ptr fs:[eax],esp
 0065CA88    mov         eax,dword ptr [ebp+8]
 0065CA8B    mov         eax,dword ptr [eax-4]
 0065CA8E    mov         dword ptr [ebp-10],eax
 0065CA91    mov         eax,dword ptr [ebp-10]
 0065CA94    cmp         dword ptr [eax+14],0
>0065CA98    jne         0065CAA9
 0065CA9A    lea         edx,[ebp-8]
 0065CA9D    mov         eax,[006EA1AC];^gvar_0065F044
 0065CAA2    call        LoadResString
>0065CAA7    jmp         0065CAB6
 0065CAA9    lea         edx,[ebp-8]
 0065CAAC    mov         eax,[006EA1B0];^gvar_0065F04C
 0065CAB1    call        LoadResString
 0065CAB6    mov         eax,dword ptr [ebp-10]
 0065CAB9    mov         eax,dword ptr [eax+18]
 0065CABC    mov         dword ptr [ebp-0C],eax
 0065CABF    push        1C
 0065CAC1    lea         eax,[ebp-2C]
 0065CAC4    push        eax
 0065CAC5    mov         eax,dword ptr [ebp-10]
 0065CAC8    mov         eax,dword ptr [eax+0C]
 0065CACB    push        eax
 0065CACC    call        KERNEL32.VirtualQuery
 0065CAD1    cmp         dword ptr [ebp-1C],1000
>0065CAD8    jne         0065CB98
 0065CADE    push        105
 0065CAE3    lea         eax,[ebp-131]
 0065CAE9    push        eax
 0065CAEA    mov         eax,dword ptr [ebp-28]
 0065CAED    push        eax
 0065CAEE    call        KERNEL32.GetModuleFileNameA
 0065CAF3    test        eax,eax
>0065CAF5    je          0065CB98
 0065CAFB    mov         eax,dword ptr [ebp-10]
 0065CAFE    mov         eax,dword ptr [eax+0C]
 0065CB01    mov         dword ptr [ebp-154],eax
 0065CB07    mov         byte ptr [ebp-150],5
 0065CB0E    lea         eax,[ebp-15C]
 0065CB14    lea         edx,[ebp-131]
 0065CB1A    mov         ecx,105
 0065CB1F    call        @LStrFromArray
 0065CB24    mov         eax,dword ptr [ebp-15C]
 0065CB2A    lea         edx,[ebp-158]
 0065CB30    call        00658580
 0065CB35    mov         eax,dword ptr [ebp-158]
 0065CB3B    mov         dword ptr [ebp-14C],eax
 0065CB41    mov         byte ptr [ebp-148],0B
 0065CB48    mov         eax,dword ptr [ebp-8]
 0065CB4B    mov         dword ptr [ebp-144],eax
 0065CB51    mov         byte ptr [ebp-140],0B
 0065CB58    mov         eax,dword ptr [ebp-0C]
 0065CB5B    mov         dword ptr [ebp-13C],eax
 0065CB61    mov         byte ptr [ebp-138],5
 0065CB68    lea         eax,[ebp-154]
 0065CB6E    push        eax
 0065CB6F    push        3
 0065CB71    lea         edx,[ebp-160]
 0065CB77    mov         eax,[006EA1E4];^gvar_0065F0FC
 0065CB7C    call        LoadResString
 0065CB81    mov         ecx,dword ptr [ebp-160]
 0065CB87    mov         dl,1
 0065CB89    mov         eax,[00656E28];EAccessViolation
 0065CB8E    call        Exception.CreateFmt;EAccessViolation.Create
 0065CB93    mov         dword ptr [ebp-4],eax
>0065CB96    jmp         0065CBF9
 0065CB98    mov         eax,dword ptr [ebp-10]
 0065CB9B    mov         eax,dword ptr [eax+0C]
 0065CB9E    mov         dword ptr [ebp-178],eax
 0065CBA4    mov         byte ptr [ebp-174],5
 0065CBAB    mov         eax,dword ptr [ebp-8]
 0065CBAE    mov         dword ptr [ebp-170],eax
 0065CBB4    mov         byte ptr [ebp-16C],0B
 0065CBBB    mov         eax,dword ptr [ebp-0C]
 0065CBBE    mov         dword ptr [ebp-168],eax
 0065CBC4    mov         byte ptr [ebp-164],5
 0065CBCB    lea         eax,[ebp-178]
 0065CBD1    push        eax
 0065CBD2    push        2
 0065CBD4    lea         edx,[ebp-17C]
 0065CBDA    mov         eax,[006EA188];^gvar_0065EFFC
 0065CBDF    call        LoadResString
 0065CBE4    mov         ecx,dword ptr [ebp-17C]
 0065CBEA    mov         dl,1
 0065CBEC    mov         eax,[00656E28];EAccessViolation
 0065CBF1    call        Exception.CreateFmt;EAccessViolation.Create
 0065CBF6    mov         dword ptr [ebp-4],eax
 0065CBF9    xor         eax,eax
 0065CBFB    pop         edx
 0065CBFC    pop         ecx
 0065CBFD    pop         ecx
 0065CBFE    mov         dword ptr fs:[eax],edx
 0065CC01    push        65CC31
 0065CC06    lea         eax,[ebp-17C]
 0065CC0C    call        @LStrClr
 0065CC11    lea         eax,[ebp-160]
 0065CC17    mov         edx,3
 0065CC1C    call        @LStrArrayClr
 0065CC21    lea         eax,[ebp-8]
 0065CC24    call        @LStrClr
 0065CC29    ret
>0065CC2A    jmp         @HandleFinally
>0065CC2F    jmp         0065CC06
 0065CC31    mov         eax,dword ptr [ebp-4]
 0065CC34    mov         esp,ebp
 0065CC36    pop         ebp
 0065CC37    ret
end;*}

//0065CD40
procedure sub_0065CD40;
begin
{*
 0065CD40    push        ebp
 0065CD41    mov         ebp,esp
 0065CD43    mov         ecx,dword ptr ds:[6EA140];^gvar_0065EF6C
 0065CD49    mov         dl,1
 0065CD4B    mov         eax,[0065688C];EOutOfMemory
 0065CD50    call        Exception.Create;EOutOfMemory.Create
 0065CD55    mov         [006ED124],eax;gvar_006ED124:EOutOfMemory
 0065CD5A    mov         ecx,dword ptr ds:[6EA180];^gvar_0065EFEC
 0065CD60    mov         dl,1
 0065CD62    mov         eax,[00656D14];EInvalidPointer
 0065CD67    call        Exception.Create;EInvalidPointer.Create
 0065CD6C    mov         [006ED128],eax;gvar_006ED128:EInvalidPointer
 0065CD71    mov         eax,[006EA2B4];^ErrorProc:procedure(val ErrorCode:Byte;val ErrorAddr:Pointer)
 0065CD76    mov         dword ptr [eax],65C7E8
 0065CD7C    mov         eax,[006EA2B0];^ExceptProc:Pointer
 0065CD81    mov         dword ptr [eax],65CD18
 0065CD87    mov         eax,[006EA2C0];^gvar_006ED2DC:Exception
 0065CD8C    mov         edx,dword ptr ds:[656774];Exception
 0065CD92    mov         dword ptr [eax],edx
 0065CD94    mov         eax,[006EA2B8];^ExceptClsProc:Pointer
 0065CD99    mov         dword ptr [eax],65CA28
 0065CD9F    mov         eax,[006EA2BC];^ExceptObjProc:Pointer
 0065CDA4    mov         dword ptr [eax],65CC38
 0065CDAA    mov         eax,65C920
 0065CDAF    mov         edx,dword ptr ds:[6EA2C4];^gvar_006ED2E4
 0065CDB5    mov         dword ptr [edx],eax
 0065CDB7    mov         eax,65C958
 0065CDBC    mov         edx,dword ptr ds:[6EA2C8];^AbstractErrorProc:procedure
 0065CDC2    mov         dword ptr [edx],eax
 0065CDC4    pop         ebp
 0065CDC5    ret
*}
end;

//0065CDC8
procedure sub_0065CDC8;
begin
{*
 0065CDC8    push        ebp
 0065CDC9    mov         ebp,esp
 0065CDCB    mov         eax,[006ED124];0x0 gvar_006ED124:EOutOfMemory
 0065CDD0    mov         byte ptr [eax+0C],1;EOutOfMemory....AllowFree:Boolean
 0065CDD4    mov         eax,[006ED124];0x0 gvar_006ED124:EOutOfMemory
 0065CDD9    mov         edx,dword ptr [eax]
 0065CDDB    call        dword ptr [edx-8]
 0065CDDE    xor         eax,eax
 0065CDE0    mov         [006ED124],eax;gvar_006ED124:EOutOfMemory
 0065CDE5    mov         eax,[006ED128];0x0 gvar_006ED128:EInvalidPointer
 0065CDEA    mov         byte ptr [eax+0C],1;EInvalidPointer.....AllowFree:Boolean
 0065CDEE    mov         eax,[006ED128];0x0 gvar_006ED128:EInvalidPointer
 0065CDF3    call        TObject.Free
 0065CDF8    xor         eax,eax
 0065CDFA    mov         [006ED128],eax;gvar_006ED128:EInvalidPointer
 0065CDFF    mov         eax,[006EA2B4];^ErrorProc:procedure(val ErrorCode:Byte;val ErrorAddr:Pointer)
 0065CE04    xor         edx,edx
 0065CE06    mov         dword ptr [eax],edx
 0065CE08    mov         eax,[006EA2B0];^ExceptProc:Pointer
 0065CE0D    xor         edx,edx
 0065CE0F    mov         dword ptr [eax],edx
 0065CE11    mov         eax,[006EA2C0];^gvar_006ED2DC:Exception
 0065CE16    xor         edx,edx
 0065CE18    mov         dword ptr [eax],edx
 0065CE1A    mov         eax,[006EA2B8];^ExceptClsProc:Pointer
 0065CE1F    xor         edx,edx
 0065CE21    mov         dword ptr [eax],edx
 0065CE23    mov         eax,[006EA2BC];^ExceptObjProc:Pointer
 0065CE28    xor         edx,edx
 0065CE2A    mov         dword ptr [eax],edx
 0065CE2C    mov         eax,[006EA2C4];^gvar_006ED2E4
 0065CE31    xor         edx,edx
 0065CE33    mov         dword ptr [eax],edx
 0065CE35    pop         ebp
 0065CE36    ret
*}
end;

//0065CE38
procedure sub_0065CE38;
begin
{*
 0065CE38    push        ebp
 0065CE39    mov         ebp,esp
 0065CE3B    add         esp,0FFFFFF6C
 0065CE41    mov         dword ptr [ebp-94],94
 0065CE4B    lea         eax,[ebp-94]
 0065CE51    push        eax
 0065CE52    call        KERNEL32.GetVersionExA
 0065CE57    test        eax,eax
>0065CE59    je          0065CE99
 0065CE5B    mov         eax,dword ptr [ebp-84]
 0065CE61    mov         [006E498C],eax;gvar_006E498C
 0065CE66    mov         eax,dword ptr [ebp-90]
 0065CE6C    mov         [006E4990],eax;gvar_006E4990
 0065CE71    mov         eax,dword ptr [ebp-8C]
 0065CE77    mov         [006E4994],eax;gvar_006E4994
 0065CE7C    mov         eax,dword ptr [ebp-88]
 0065CE82    mov         [006E4998],eax;gvar_006E4998
 0065CE87    mov         eax,6E499C
 0065CE8C    lea         edx,[ebp-80]
 0065CE8F    mov         ecx,80
 0065CE94    call        @LStrFromArray
 0065CE99    mov         esp,ebp
 0065CE9B    pop         ebp
 0065CE9C    ret
*}
end;

//0065CEA0
{*function sub_0065CEA0(?:?; ?:?):?;
begin
 0065CEA0    push        ebp
 0065CEA1    mov         ebp,esp
 0065CEA3    add         esp,0FFFFFFF4
 0065CEA6    mov         dword ptr [ebp-8],edx
 0065CEA9    mov         dword ptr [ebp-4],eax
 0065CEAC    mov         eax,dword ptr [ebp-4]
 0065CEAF    cmp         eax,dword ptr ds:[6E4990];0x0 gvar_006E4990
>0065CEB5    jg          0065CED1
 0065CEB7    mov         eax,dword ptr [ebp-4]
 0065CEBA    cmp         eax,dword ptr ds:[6E4990];0x0 gvar_006E4990
>0065CEC0    jne         0065CECD
 0065CEC2    mov         eax,dword ptr [ebp-8]
 0065CEC5    cmp         eax,dword ptr ds:[6E4994];0x0 gvar_006E4994
>0065CECB    jge         0065CED1
 0065CECD    xor         eax,eax
>0065CECF    jmp         0065CED3
 0065CED1    mov         al,1
 0065CED3    mov         byte ptr [ebp-9],al
 0065CED6    mov         al,byte ptr [ebp-9]
 0065CED9    mov         esp,ebp
 0065CEDB    pop         ebp
 0065CEDC    ret
end;*}

//0065CEEC
{*function sub_0065CEEC(?:PChar; ?:?):?;
begin
 0065CEEC    push        ebp
 0065CEED    mov         ebp,esp
 0065CEEF    add         esp,0FFFFFFF0
 0065CEF2    mov         dword ptr [ebp-8],edx
 0065CEF5    mov         dword ptr [ebp-4],eax
 0065CEF8    mov         byte ptr [ebp-9],0
 0065CEFC    cmp         dword ptr [ebp-4],0
>0065CF00    je          0065CF91
 0065CF06    mov         eax,dword ptr [ebp-8]
 0065CF09    mov         edx,dword ptr [ebp-4]
 0065CF0C    cmp         byte ptr [edx+eax],0
>0065CF10    je          0065CF91
 0065CF12    cmp         dword ptr [ebp-8],0
>0065CF16    jne         0065CF31
 0065CF18    mov         eax,dword ptr [ebp-4]
 0065CF1B    mov         al,byte ptr [eax]
 0065CF1D    and         eax,0FF
 0065CF22    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065CF29    jae         0065CF91
 0065CF2B    mov         byte ptr [ebp-9],1
>0065CF2F    jmp         0065CF91
 0065CF31    mov         eax,dword ptr [ebp-8]
 0065CF34    dec         eax
 0065CF35    mov         dword ptr [ebp-10],eax
>0065CF38    jmp         0065CF3D
 0065CF3A    dec         dword ptr [ebp-10]
 0065CF3D    cmp         dword ptr [ebp-10],0
>0065CF41    jl          0065CF5A
 0065CF43    mov         eax,dword ptr [ebp-10]
 0065CF46    mov         edx,dword ptr [ebp-4]
 0065CF49    mov         al,byte ptr [edx+eax]
 0065CF4C    and         eax,0FF
 0065CF51    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065CF58    jb          0065CF3A
 0065CF5A    mov         eax,dword ptr [ebp-8]
 0065CF5D    sub         eax,dword ptr [ebp-10]
 0065CF60    and         eax,80000001
>0065CF65    jns         0065CF6C
 0065CF67    dec         eax
 0065CF68    or          eax,0FFFFFFFE
 0065CF6B    inc         eax
 0065CF6C    test        eax,eax
>0065CF6E    jne         0065CF76
 0065CF70    mov         byte ptr [ebp-9],2
>0065CF74    jmp         0065CF91
 0065CF76    mov         eax,dword ptr [ebp-8]
 0065CF79    mov         edx,dword ptr [ebp-4]
 0065CF7C    mov         al,byte ptr [edx+eax]
 0065CF7F    and         eax,0FF
 0065CF84    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065CF8B    jae         0065CF91
 0065CF8D    mov         byte ptr [ebp-9],1
 0065CF91    mov         al,byte ptr [ebp-9]
 0065CF94    mov         esp,ebp
 0065CF96    pop         ebp
 0065CF97    ret
end;*}

//0065CF98
{*function sub_0065CF98(?:AnsiString; ?:Integer):?;
begin
 0065CF98    push        ebp
 0065CF99    mov         ebp,esp
 0065CF9B    add         esp,0FFFFFFF4
 0065CF9E    mov         dword ptr [ebp-8],edx
 0065CFA1    mov         dword ptr [ebp-4],eax
 0065CFA4    mov         byte ptr [ebp-9],0
 0065CFA8    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065CFAF    je          0065CFC5
 0065CFB1    mov         eax,dword ptr [ebp-4]
 0065CFB4    call        @LStrToPChar
 0065CFB9    mov         edx,dword ptr [ebp-8]
 0065CFBC    dec         edx
 0065CFBD    call        0065CEEC
 0065CFC2    mov         byte ptr [ebp-9],al
 0065CFC5    mov         al,byte ptr [ebp-9]
 0065CFC8    mov         esp,ebp
 0065CFCA    pop         ebp
 0065CFCB    ret
end;*}

//0065CFCC
{*function sub_0065CFCC(?:PChar; ?:?):?;
begin
 0065CFCC    push        ebp
 0065CFCD    mov         ebp,esp
 0065CFCF    add         esp,0FFFFFFF4
 0065CFD2    mov         dword ptr [ebp-8],edx
 0065CFD5    mov         dword ptr [ebp-4],eax
 0065CFD8    mov         byte ptr [ebp-9],0
 0065CFDC    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065CFE3    je          0065CFF3
 0065CFE5    mov         edx,dword ptr [ebp-8]
 0065CFE8    mov         eax,dword ptr [ebp-4]
 0065CFEB    call        0065CEEC
 0065CFF0    mov         byte ptr [ebp-9],al
 0065CFF3    mov         al,byte ptr [ebp-9]
 0065CFF6    mov         esp,ebp
 0065CFF8    pop         ebp
 0065CFF9    ret
end;*}

//0065CFFC
{*function sub_0065CFFC(?:?; ?:Integer):?;
begin
 0065CFFC    push        ebp
 0065CFFD    mov         ebp,esp
 0065CFFF    add         esp,0FFFFFFF4
 0065D002    mov         dword ptr [ebp-8],edx
 0065D005    mov         dword ptr [ebp-4],eax
 0065D008    mov         eax,dword ptr [ebp-4]
 0065D00B    call        @LStrLen
 0065D010    cmp         eax,dword ptr [ebp-8]
>0065D013    jge         0065D020
 0065D015    mov         eax,dword ptr [ebp-4]
 0065D018    call        @LStrLen
 0065D01D    mov         dword ptr [ebp-8],eax
 0065D020    mov         edx,dword ptr [ebp-8]
 0065D023    mov         eax,dword ptr [ebp-4]
 0065D026    call        0065D038
 0065D02B    mov         dword ptr [ebp-0C],eax
 0065D02E    mov         eax,dword ptr [ebp-0C]
 0065D031    mov         esp,ebp
 0065D033    pop         ebp
 0065D034    ret
end;*}

//0065D038
{*function sub_0065D038(?:?; ?:Integer):?;
begin
 0065D038    push        ebp
 0065D039    mov         ebp,esp
 0065D03B    add         esp,0FFFFFFF0
 0065D03E    mov         dword ptr [ebp-8],edx
 0065D041    mov         dword ptr [ebp-4],eax
 0065D044    xor         eax,eax
 0065D046    mov         dword ptr [ebp-0C],eax
 0065D049    cmp         dword ptr [ebp-8],0
>0065D04D    jle         0065D0B5
 0065D04F    mov         eax,dword ptr [ebp-4]
 0065D052    call        @LStrLen
 0065D057    cmp         eax,dword ptr [ebp-8]
>0065D05A    jl          0065D0B5
 0065D05C    mov         eax,dword ptr [ebp-8]
 0065D05F    mov         dword ptr [ebp-0C],eax
 0065D062    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D069    je          0065D0B5
 0065D06B    mov         dword ptr [ebp-10],1
 0065D072    xor         eax,eax
 0065D074    mov         dword ptr [ebp-0C],eax
 0065D077    mov         eax,dword ptr [ebp-10]
 0065D07A    cmp         eax,dword ptr [ebp-8]
>0065D07D    jg          0065D0B5
 0065D07F    mov         eax,dword ptr [ebp-10]
 0065D082    mov         edx,dword ptr [ebp-4]
 0065D085    mov         al,byte ptr [edx+eax-1]
 0065D089    and         eax,0FF
 0065D08E    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065D095    jae         0065D0A7
 0065D097    mov         edx,dword ptr [ebp-10]
 0065D09A    mov         eax,dword ptr [ebp-4]
 0065D09D    call        0065D300
 0065D0A2    mov         dword ptr [ebp-10],eax
>0065D0A5    jmp         0065D0AA
 0065D0A7    inc         dword ptr [ebp-10]
 0065D0AA    inc         dword ptr [ebp-0C]
 0065D0AD    mov         eax,dword ptr [ebp-10]
 0065D0B0    cmp         eax,dword ptr [ebp-8]
>0065D0B3    jle         0065D07F
 0065D0B5    mov         eax,dword ptr [ebp-0C]
 0065D0B8    mov         esp,ebp
 0065D0BA    pop         ebp
 0065D0BB    ret
end;*}

//0065D0BC
{*procedure sub_0065D0BC(?:AnsiString; ?:Integer; ?:?; ?:?);
begin
 0065D0BC    push        ebp
 0065D0BD    mov         ebp,esp
 0065D0BF    add         esp,0FFFFFFE8
 0065D0C2    mov         dword ptr [ebp-0C],ecx
 0065D0C5    mov         dword ptr [ebp-8],edx
 0065D0C8    mov         dword ptr [ebp-4],eax
 0065D0CB    mov         eax,dword ptr [ebp-4]
 0065D0CE    call        @LStrLen
 0065D0D3    mov         dword ptr [ebp-14],eax
 0065D0D6    mov         dword ptr [ebp-10],1
 0065D0DD    mov         dword ptr [ebp-18],1
>0065D0E4    jmp         0065D114
 0065D0E6    inc         dword ptr [ebp-10]
 0065D0E9    mov         eax,dword ptr [ebp-4]
 0065D0EC    mov         edx,dword ptr [ebp-18]
 0065D0EF    mov         al,byte ptr [eax+edx-1]
 0065D0F3    and         eax,0FF
 0065D0F8    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065D0FF    jae         0065D111
 0065D101    mov         edx,dword ptr [ebp-18]
 0065D104    mov         eax,dword ptr [ebp-4]
 0065D107    call        0065D300
 0065D10C    mov         dword ptr [ebp-18],eax
>0065D10F    jmp         0065D114
 0065D111    inc         dword ptr [ebp-18]
 0065D114    mov         eax,dword ptr [ebp-18]
 0065D117    cmp         eax,dword ptr [ebp-14]
>0065D11A    jge         0065D124
 0065D11C    mov         eax,dword ptr [ebp-10]
 0065D11F    cmp         eax,dword ptr [ebp-8]
>0065D122    jl          0065D0E6
 0065D124    mov         eax,dword ptr [ebp-10]
 0065D127    cmp         eax,dword ptr [ebp-8]
>0065D12A    jne         0065D15B
 0065D12C    mov         eax,dword ptr [ebp-18]
 0065D12F    cmp         eax,dword ptr [ebp-14]
>0065D132    jge         0065D15B
 0065D134    mov         eax,dword ptr [ebp-4]
 0065D137    mov         edx,dword ptr [ebp-18]
 0065D13A    mov         al,byte ptr [eax+edx-1]
 0065D13E    and         eax,0FF
 0065D143    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065D14A    jae         0065D15B
 0065D14C    mov         edx,dword ptr [ebp-18]
 0065D14F    mov         eax,dword ptr [ebp-4]
 0065D152    call        0065D300
 0065D157    dec         eax
 0065D158    mov         dword ptr [ebp-18],eax
 0065D15B    mov         eax,dword ptr [ebp-0C]
 0065D15E    mov         edx,dword ptr [ebp-10]
 0065D161    mov         dword ptr [eax],edx
 0065D163    mov         eax,dword ptr [ebp+8]
 0065D166    mov         edx,dword ptr [ebp-18]
 0065D169    mov         dword ptr [eax],edx
 0065D16B    mov         esp,ebp
 0065D16D    pop         ebp
 0065D16E    ret         4
end;*}

//0065D174
{*function sub_0065D174(?:?; ?:?):?;
begin
 0065D174    push        ebp
 0065D175    mov         ebp,esp
 0065D177    add         esp,0FFFFFFF0
 0065D17A    mov         dword ptr [ebp-8],edx
 0065D17D    mov         dword ptr [ebp-4],eax
 0065D180    xor         eax,eax
 0065D182    mov         dword ptr [ebp-0C],eax
 0065D185    cmp         dword ptr [ebp-8],0
>0065D189    jle         0065D1E2
 0065D18B    mov         eax,dword ptr [ebp-4]
 0065D18E    call        @LStrLen
 0065D193    cmp         eax,dword ptr [ebp-8]
>0065D196    jl          0065D1E2
 0065D198    cmp         dword ptr [ebp-8],1
>0065D19C    jle         0065D1DC
 0065D19E    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D1A5    je          0065D1DC
 0065D1A7    lea         eax,[ebp-0C]
 0065D1AA    push        eax
 0065D1AB    lea         ecx,[ebp-10]
 0065D1AE    mov         edx,dword ptr [ebp-8]
 0065D1B1    dec         edx
 0065D1B2    mov         eax,dword ptr [ebp-4]
 0065D1B5    call        0065D0BC
 0065D1BA    mov         eax,dword ptr [ebp-8]
 0065D1BD    dec         eax
 0065D1BE    cmp         eax,dword ptr [ebp-10]
>0065D1C1    jg          0065D1D0
 0065D1C3    mov         eax,dword ptr [ebp-4]
 0065D1C6    call        @LStrLen
 0065D1CB    cmp         eax,dword ptr [ebp-0C]
>0065D1CE    jg          0065D1D7
 0065D1D0    xor         eax,eax
 0065D1D2    mov         dword ptr [ebp-0C],eax
>0065D1D5    jmp         0065D1E2
 0065D1D7    inc         dword ptr [ebp-0C]
>0065D1DA    jmp         0065D1E2
 0065D1DC    mov         eax,dword ptr [ebp-8]
 0065D1DF    mov         dword ptr [ebp-0C],eax
 0065D1E2    mov         eax,dword ptr [ebp-0C]
 0065D1E5    mov         esp,ebp
 0065D1E7    pop         ebp
 0065D1E8    ret
end;*}

//0065D1EC
{*function sub_0065D1EC(?:AnsiString; ?:?):?;
begin
 0065D1EC    push        ebp
 0065D1ED    mov         ebp,esp
 0065D1EF    add         esp,0FFFFFFF0
 0065D1F2    mov         dword ptr [ebp-8],edx
 0065D1F5    mov         dword ptr [ebp-4],eax
 0065D1F8    xor         eax,eax
 0065D1FA    mov         dword ptr [ebp-0C],eax
 0065D1FD    cmp         dword ptr [ebp-8],0
>0065D201    jle         0065D256
 0065D203    mov         eax,dword ptr [ebp-4]
 0065D206    call        @LStrLen
 0065D20B    cmp         eax,dword ptr [ebp-8]
>0065D20E    jge         0065D21B
 0065D210    mov         eax,dword ptr [ebp-4]
 0065D213    call        @LStrLen
 0065D218    mov         dword ptr [ebp-8],eax
 0065D21B    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D222    je          0065D250
 0065D224    lea         eax,[ebp-0C]
 0065D227    push        eax
 0065D228    lea         ecx,[ebp-10]
 0065D22B    mov         edx,dword ptr [ebp-8]
 0065D22E    mov         eax,dword ptr [ebp-4]
 0065D231    call        0065D0BC
 0065D236    mov         eax,dword ptr [ebp-4]
 0065D239    call        @LStrLen
 0065D23E    cmp         eax,dword ptr [ebp-0C]
>0065D241    jge         0065D256
 0065D243    mov         eax,dword ptr [ebp-4]
 0065D246    call        @LStrLen
 0065D24B    mov         dword ptr [ebp-0C],eax
>0065D24E    jmp         0065D256
 0065D250    mov         eax,dword ptr [ebp-8]
 0065D253    mov         dword ptr [ebp-0C],eax
 0065D256    mov         eax,dword ptr [ebp-0C]
 0065D259    mov         esp,ebp
 0065D25B    pop         ebp
 0065D25C    ret
end;*}

//0065D260
{*function sub_0065D260(?:?):?;
begin
 0065D260    push        ebp
 0065D261    mov         ebp,esp
 0065D263    add         esp,0FFFFFFF8
 0065D266    mov         dword ptr [ebp-4],eax
 0065D269    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D270    je          0065D283
 0065D272    mov         eax,dword ptr [ebp-4]
 0065D275    push        eax
 0065D276    call        USER32.CharNextA
 0065D27B    sub         eax,dword ptr [ebp-4]
 0065D27E    mov         dword ptr [ebp-8],eax
>0065D281    jmp         0065D28A
 0065D283    mov         dword ptr [ebp-8],1
 0065D28A    mov         eax,dword ptr [ebp-8]
 0065D28D    pop         ecx
 0065D28E    pop         ecx
 0065D28F    pop         ebp
 0065D290    ret
end;*}

//0065D294
{*function sub_0065D294(?:?):?;
begin
 0065D294    push        ebp
 0065D295    mov         ebp,esp
 0065D297    add         esp,0FFFFFFF8
 0065D29A    mov         dword ptr [ebp-4],eax
 0065D29D    mov         eax,dword ptr [ebp-4]
 0065D2A0    push        eax
 0065D2A1    call        USER32.CharNextA
 0065D2A6    mov         dword ptr [ebp-8],eax
 0065D2A9    mov         eax,dword ptr [ebp-8]
 0065D2AC    pop         ecx
 0065D2AD    pop         ecx
 0065D2AE    pop         ebp
 0065D2AF    ret
end;*}

//0065D2B0
{*function sub_0065D2B0(?:?; ?:?):?;
begin
 0065D2B0    push        ebp
 0065D2B1    mov         ebp,esp
 0065D2B3    add         esp,0FFFFFFF4
 0065D2B6    mov         dword ptr [ebp-8],edx
 0065D2B9    mov         dword ptr [ebp-4],eax
 0065D2BC    mov         dword ptr [ebp-0C],1
 0065D2C3    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D2CA    je          0065D2F8
 0065D2CC    mov         eax,dword ptr [ebp-8]
 0065D2CF    mov         edx,dword ptr [ebp-4]
 0065D2D2    mov         al,byte ptr [edx+eax-1]
 0065D2D6    and         eax,0FF
 0065D2DB    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065D2E2    jae         0065D2F8
 0065D2E4    mov         eax,dword ptr [ebp-4]
 0065D2E7    call        @LStrToPChar
 0065D2EC    add         eax,dword ptr [ebp-8]
 0065D2EF    dec         eax
 0065D2F0    call        0065D260
 0065D2F5    mov         dword ptr [ebp-0C],eax
 0065D2F8    mov         eax,dword ptr [ebp-0C]
 0065D2FB    mov         esp,ebp
 0065D2FD    pop         ebp
 0065D2FE    ret
end;*}

//0065D300
{*function sub_0065D300(?:?; ?:?):?;
begin
 0065D300    push        ebp
 0065D301    mov         ebp,esp
 0065D303    add         esp,0FFFFFFF4
 0065D306    mov         dword ptr [ebp-8],edx
 0065D309    mov         dword ptr [ebp-4],eax
 0065D30C    mov         eax,dword ptr [ebp-8]
 0065D30F    inc         eax
 0065D310    mov         dword ptr [ebp-0C],eax
 0065D313    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D31A    je          0065D34B
 0065D31C    mov         eax,dword ptr [ebp-8]
 0065D31F    mov         edx,dword ptr [ebp-4]
 0065D322    mov         al,byte ptr [edx+eax-1]
 0065D326    and         eax,0FF
 0065D32B    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065D332    jae         0065D34B
 0065D334    mov         eax,dword ptr [ebp-4]
 0065D337    call        @LStrToPChar
 0065D33C    add         eax,dword ptr [ebp-8]
 0065D33F    dec         eax
 0065D340    call        0065D260
 0065D345    add         eax,dword ptr [ebp-8]
 0065D348    mov         dword ptr [ebp-0C],eax
 0065D34B    mov         eax,dword ptr [ebp-0C]
 0065D34E    mov         esp,ebp
 0065D350    pop         ebp
 0065D351    ret
end;*}

//0065D354
{*function sub_0065D354(?:String; ?:Integer):?;
begin
 0065D354    push        ebp
 0065D355    mov         ebp,esp
 0065D357    add         esp,0FFFFFFF4
 0065D35A    mov         dword ptr [ebp-8],edx
 0065D35D    mov         dword ptr [ebp-4],eax
 0065D360    cmp         dword ptr [ebp-8],0
>0065D364    jle         0065D38F
 0065D366    mov         eax,dword ptr [ebp-4]
 0065D369    call        @LStrLen
 0065D36E    cmp         eax,dword ptr [ebp-8]
>0065D371    jl          0065D38F
 0065D373    mov         eax,dword ptr [ebp-8]
 0065D376    mov         edx,dword ptr [ebp-4]
 0065D379    cmp         byte ptr [edx+eax-1],5C
>0065D37E    jne         0065D38F
 0065D380    mov         edx,dword ptr [ebp-8]
 0065D383    mov         eax,dword ptr [ebp-4]
 0065D386    call        0065CF98
 0065D38B    test        al,al
>0065D38D    je          0065D393
 0065D38F    xor         eax,eax
>0065D391    jmp         0065D395
 0065D393    mov         al,1
 0065D395    mov         byte ptr [ebp-9],al
 0065D398    mov         al,byte ptr [ebp-9]
 0065D39B    mov         esp,ebp
 0065D39D    pop         ebp
 0065D39E    ret
end;*}

//0065D3A0
{*function sub_0065D3A0(?:AnsiString; ?:String; ?:?):?;
begin
 0065D3A0    push        ebp
 0065D3A1    mov         ebp,esp
 0065D3A3    add         esp,0FFFFFFF0
 0065D3A6    mov         dword ptr [ebp-0C],ecx
 0065D3A9    mov         dword ptr [ebp-8],edx
 0065D3AC    mov         dword ptr [ebp-4],eax
 0065D3AF    mov         byte ptr [ebp-0D],0
 0065D3B3    cmp         dword ptr [ebp-0C],0
>0065D3B7    jle         0065D3F2
 0065D3B9    mov         eax,dword ptr [ebp-8]
 0065D3BC    call        @LStrLen
 0065D3C1    cmp         eax,dword ptr [ebp-0C]
>0065D3C4    jl          0065D3F2
 0065D3C6    mov         edx,dword ptr [ebp-0C]
 0065D3C9    mov         eax,dword ptr [ebp-8]
 0065D3CC    call        0065CF98
 0065D3D1    test        al,al
>0065D3D3    jne         0065D3F2
 0065D3D5    mov         eax,dword ptr [ebp-4]
 0065D3D8    call        @LStrToPChar
 0065D3DD    mov         edx,dword ptr [ebp-0C]
 0065D3E0    mov         ecx,dword ptr [ebp-8]
 0065D3E3    mov         dl,byte ptr [ecx+edx-1]
 0065D3E7    call        StrScan
 0065D3EC    test        eax,eax
 0065D3EE    setne       byte ptr [ebp-0D]
 0065D3F2    mov         al,byte ptr [ebp-0D]
 0065D3F5    mov         esp,ebp
 0065D3F7    pop         ebp
 0065D3F8    ret
end;*}

//0065D3FC
function AnsiPos(const Substr:AnsiString; const S:AnsiString):Integer;
begin
{*
 0065D3FC    push        ebp
 0065D3FD    mov         ebp,esp
 0065D3FF    add         esp,0FFFFFFF0
 0065D402    mov         dword ptr [ebp-8],edx
 0065D405    mov         dword ptr [ebp-4],eax
 0065D408    xor         eax,eax
 0065D40A    mov         dword ptr [ebp-0C],eax
 0065D40D    mov         eax,dword ptr [ebp-4]
 0065D410    call        @LStrToPChar
 0065D415    push        eax
 0065D416    mov         eax,dword ptr [ebp-8]
 0065D419    call        @LStrToPChar
 0065D41E    pop         edx
 0065D41F    call        0065D664
 0065D424    mov         dword ptr [ebp-10],eax
 0065D427    cmp         dword ptr [ebp-10],0
>0065D42B    je          0065D43E
 0065D42D    mov         eax,dword ptr [ebp-8]
 0065D430    call        @LStrToPChar
 0065D435    mov         edx,dword ptr [ebp-10]
 0065D438    sub         edx,eax
 0065D43A    inc         edx
 0065D43B    mov         dword ptr [ebp-0C],edx
 0065D43E    mov         eax,dword ptr [ebp-0C]
 0065D441    mov         esp,ebp
 0065D443    pop         ebp
 0065D444    ret
*}
end;

//0065D448
{*function sub_0065D448(?:String; ?:String):?;
begin
 0065D448    push        ebp
 0065D449    mov         ebp,esp
 0065D44B    add         esp,0FFFFFFEC
 0065D44E    xor         ecx,ecx
 0065D450    mov         dword ptr [ebp-10],ecx
 0065D453    mov         dword ptr [ebp-14],ecx
 0065D456    mov         dword ptr [ebp-8],edx
 0065D459    mov         dword ptr [ebp-4],eax
 0065D45C    xor         eax,eax
 0065D45E    push        ebp
 0065D45F    push        65D4AB
 0065D464    push        dword ptr fs:[eax]
 0065D467    mov         dword ptr fs:[eax],esp
 0065D46A    lea         edx,[ebp-10]
 0065D46D    mov         eax,dword ptr [ebp-8]
 0065D470    call        0065D4BC
 0065D475    mov         eax,dword ptr [ebp-10]
 0065D478    push        eax
 0065D479    lea         edx,[ebp-14]
 0065D47C    mov         eax,dword ptr [ebp-4]
 0065D47F    call        0065D4BC
 0065D484    mov         eax,dword ptr [ebp-14]
 0065D487    pop         edx
 0065D488    call        00657738
 0065D48D    mov         dword ptr [ebp-0C],eax
 0065D490    xor         eax,eax
 0065D492    pop         edx
 0065D493    pop         ecx
 0065D494    pop         ecx
 0065D495    mov         dword ptr fs:[eax],edx
 0065D498    push        65D4B2
 0065D49D    lea         eax,[ebp-14]
 0065D4A0    mov         edx,2
 0065D4A5    call        @LStrArrayClr
 0065D4AA    ret
>0065D4AB    jmp         @HandleFinally
>0065D4B0    jmp         0065D49D
 0065D4B2    mov         eax,dword ptr [ebp-0C]
 0065D4B5    mov         esp,ebp
 0065D4B7    pop         ebp
 0065D4B8    ret
end;*}

//0065D4BC
{*procedure sub_0065D4BC(?:AnsiString; ?:?);
begin
 0065D4BC    push        ebp
 0065D4BD    mov         ebp,esp
 0065D4BF    add         esp,0FFFFFFF0
 0065D4C2    push        ebx
 0065D4C3    mov         dword ptr [ebp-8],edx
 0065D4C6    mov         dword ptr [ebp-4],eax
 0065D4C9    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D4D0    je          0065D57D
 0065D4D6    mov         eax,dword ptr [ebp-4]
 0065D4D9    call        @LStrLen
 0065D4DE    mov         dword ptr [ebp-10],eax
 0065D4E1    mov         eax,dword ptr [ebp-8]
 0065D4E4    mov         edx,dword ptr [ebp-10]
 0065D4E7    call        @LStrSetLength
 0065D4EC    mov         dword ptr [ebp-0C],1
 0065D4F3    mov         eax,dword ptr [ebp-0C]
 0065D4F6    cmp         eax,dword ptr [ebp-10]
>0065D4F9    jg          0065D588
 0065D4FF    mov         eax,dword ptr [ebp-8]
 0065D502    call        @UniqueStringA
 0065D507    mov         edx,dword ptr [ebp-0C]
 0065D50A    mov         ecx,dword ptr [ebp-0C]
 0065D50D    mov         ebx,dword ptr [ebp-4]
 0065D510    mov         cl,byte ptr [ebx+ecx-1]
 0065D514    mov         byte ptr [eax+edx-1],cl
 0065D518    mov         eax,dword ptr [ebp-0C]
 0065D51B    mov         edx,dword ptr [ebp-4]
 0065D51E    mov         al,byte ptr [edx+eax-1]
 0065D522    and         eax,0FF
 0065D527    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065D52E    jae         0065D54E
 0065D530    inc         dword ptr [ebp-0C]
 0065D533    mov         eax,dword ptr [ebp-8]
 0065D536    call        @UniqueStringA
 0065D53B    mov         edx,dword ptr [ebp-0C]
 0065D53E    mov         ecx,dword ptr [ebp-0C]
 0065D541    mov         ebx,dword ptr [ebp-4]
 0065D544    mov         cl,byte ptr [ebx+ecx-1]
 0065D548    mov         byte ptr [eax+edx-1],cl
>0065D54C    jmp         0065D570
 0065D54E    mov         eax,dword ptr [ebp-8]
 0065D551    mov         eax,dword ptr [eax]
 0065D553    mov         edx,dword ptr [ebp-0C]
 0065D556    mov         al,byte ptr [eax+edx-1]
 0065D55A    add         al,0BF
 0065D55C    sub         al,1A
>0065D55E    jae         0065D570
 0065D560    mov         eax,dword ptr [ebp-8]
 0065D563    call        @UniqueStringA
 0065D568    mov         edx,dword ptr [ebp-0C]
 0065D56B    add         byte ptr [eax+edx-1],20
 0065D570    inc         dword ptr [ebp-0C]
 0065D573    mov         eax,dword ptr [ebp-0C]
 0065D576    cmp         eax,dword ptr [ebp-10]
>0065D579    jle         0065D4FF
>0065D57B    jmp         0065D588
 0065D57D    mov         edx,dword ptr [ebp-8]
 0065D580    mov         eax,dword ptr [ebp-4]
 0065D583    call        006576F0
 0065D588    pop         ebx
 0065D589    mov         esp,ebp
 0065D58B    pop         ebp
 0065D58C    ret
end;*}

//0065D590
{*procedure sub_0065D590(?:?; ?:?);
begin
 0065D590    push        ebp
 0065D591    mov         ebp,esp
 0065D593    add         esp,0FFFFFFF0
 0065D596    push        ebx
 0065D597    mov         dword ptr [ebp-8],edx
 0065D59A    mov         dword ptr [ebp-4],eax
 0065D59D    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D5A4    je          0065D651
 0065D5AA    mov         eax,dword ptr [ebp-4]
 0065D5AD    call        @LStrLen
 0065D5B2    mov         dword ptr [ebp-10],eax
 0065D5B5    mov         eax,dword ptr [ebp-8]
 0065D5B8    mov         edx,dword ptr [ebp-10]
 0065D5BB    call        @LStrSetLength
 0065D5C0    mov         dword ptr [ebp-0C],1
 0065D5C7    mov         eax,dword ptr [ebp-0C]
 0065D5CA    cmp         eax,dword ptr [ebp-10]
>0065D5CD    jg          0065D65C
 0065D5D3    mov         eax,dword ptr [ebp-8]
 0065D5D6    call        @UniqueStringA
 0065D5DB    mov         edx,dword ptr [ebp-0C]
 0065D5DE    mov         ecx,dword ptr [ebp-0C]
 0065D5E1    mov         ebx,dword ptr [ebp-4]
 0065D5E4    mov         cl,byte ptr [ebx+ecx-1]
 0065D5E8    mov         byte ptr [eax+edx-1],cl
 0065D5EC    mov         eax,dword ptr [ebp-0C]
 0065D5EF    mov         edx,dword ptr [ebp-4]
 0065D5F2    mov         al,byte ptr [edx+eax-1]
 0065D5F6    and         eax,0FF
 0065D5FB    bt          dword ptr ds:[6E49F4],eax;gvar_006E49F4
>0065D602    jae         0065D622
 0065D604    inc         dword ptr [ebp-0C]
 0065D607    mov         eax,dword ptr [ebp-8]
 0065D60A    call        @UniqueStringA
 0065D60F    mov         edx,dword ptr [ebp-0C]
 0065D612    mov         ecx,dword ptr [ebp-0C]
 0065D615    mov         ebx,dword ptr [ebp-4]
 0065D618    mov         cl,byte ptr [ebx+ecx-1]
 0065D61C    mov         byte ptr [eax+edx-1],cl
>0065D620    jmp         0065D644
 0065D622    mov         eax,dword ptr [ebp-8]
 0065D625    mov         eax,dword ptr [eax]
 0065D627    mov         edx,dword ptr [ebp-0C]
 0065D62A    mov         al,byte ptr [eax+edx-1]
 0065D62E    add         al,9F
 0065D630    sub         al,1A
>0065D632    jae         0065D644
 0065D634    mov         eax,dword ptr [ebp-8]
 0065D637    call        @UniqueStringA
 0065D63C    mov         edx,dword ptr [ebp-0C]
 0065D63F    sub         byte ptr [eax+edx-1],20
 0065D644    inc         dword ptr [ebp-0C]
 0065D647    mov         eax,dword ptr [ebp-0C]
 0065D64A    cmp         eax,dword ptr [ebp-10]
>0065D64D    jle         0065D5D3
>0065D64F    jmp         0065D65C
 0065D651    mov         edx,dword ptr [ebp-8]
 0065D654    mov         eax,dword ptr [ebp-4]
 0065D657    call        AnsiUpperCase
 0065D65C    pop         ebx
 0065D65D    mov         esp,ebp
 0065D65F    pop         ebp
 0065D660    ret
end;*}

//0065D664
{*function sub_0065D664(?:PChar; ?:?):?;
begin
 0065D664    push        ebp
 0065D665    mov         ebp,esp
 0065D667    add         esp,0FFFFFFE8
 0065D66A    mov         dword ptr [ebp-8],edx
 0065D66D    mov         dword ptr [ebp-4],eax
 0065D670    xor         eax,eax
 0065D672    mov         dword ptr [ebp-0C],eax
 0065D675    cmp         dword ptr [ebp-4],0
>0065D679    je          0065D734
 0065D67F    mov         eax,dword ptr [ebp-4]
 0065D682    cmp         byte ptr [eax],0
>0065D685    je          0065D734
 0065D68B    cmp         dword ptr [ebp-8],0
>0065D68F    je          0065D734
 0065D695    mov         eax,dword ptr [ebp-8]
 0065D698    cmp         byte ptr [eax],0
>0065D69B    je          0065D734
 0065D6A1    mov         eax,dword ptr [ebp-4]
 0065D6A4    call        StrLen
 0065D6A9    mov         dword ptr [ebp-10],eax
 0065D6AC    mov         eax,dword ptr [ebp-8]
 0065D6AF    call        StrLen
 0065D6B4    mov         dword ptr [ebp-14],eax
 0065D6B7    mov         edx,dword ptr [ebp-8]
 0065D6BA    mov         eax,dword ptr [ebp-4]
 0065D6BD    call        StrPos
 0065D6C2    mov         dword ptr [ebp-0C],eax
>0065D6C5    jmp         0065D719
 0065D6C7    mov         edx,dword ptr [ebp-0C]
 0065D6CA    sub         edx,dword ptr [ebp-4]
 0065D6CD    mov         eax,dword ptr [ebp-4]
 0065D6D0    call        0065CFCC
 0065D6D5    mov         byte ptr [ebp-15],al
 0065D6D8    cmp         byte ptr [ebp-15],2
>0065D6DC    je          0065D6FF
 0065D6DE    mov         eax,dword ptr [ebp-14]
 0065D6E1    push        eax
 0065D6E2    mov         eax,dword ptr [ebp-8]
 0065D6E5    push        eax
 0065D6E6    mov         eax,dword ptr [ebp-14]
 0065D6E9    push        eax
 0065D6EA    mov         eax,dword ptr [ebp-0C]
 0065D6ED    push        eax
 0065D6EE    push        0
 0065D6F0    push        400
 0065D6F5    call        KERNEL32.CompareStringA
 0065D6FA    cmp         eax,2
>0065D6FD    je          0065D734
 0065D6FF    cmp         byte ptr [ebp-15],1
>0065D703    jne         0065D708
 0065D705    inc         dword ptr [ebp-0C]
 0065D708    inc         dword ptr [ebp-0C]
 0065D70B    mov         edx,dword ptr [ebp-8]
 0065D70E    mov         eax,dword ptr [ebp-0C]
 0065D711    call        StrPos
 0065D716    mov         dword ptr [ebp-0C],eax
 0065D719    cmp         dword ptr [ebp-0C],0
>0065D71D    je          0065D72F
 0065D71F    mov         eax,dword ptr [ebp-0C]
 0065D722    sub         eax,dword ptr [ebp-4]
 0065D725    mov         edx,dword ptr [ebp-10]
 0065D728    sub         edx,eax
 0065D72A    cmp         edx,dword ptr [ebp-14]
>0065D72D    jae         0065D6C7
 0065D72F    xor         eax,eax
 0065D731    mov         dword ptr [ebp-0C],eax
 0065D734    mov         eax,dword ptr [ebp-0C]
 0065D737    mov         esp,ebp
 0065D739    pop         ebp
 0065D73A    ret
end;*}

//0065D73C
{*function sub_0065D73C(?:?; ?:?):?;
begin
 0065D73C    push        ebp
 0065D73D    mov         ebp,esp
 0065D73F    add         esp,0FFFFFFF4
 0065D742    mov         byte ptr [ebp-5],dl
 0065D745    mov         dword ptr [ebp-4],eax
 0065D748    mov         dl,byte ptr [ebp-5]
 0065D74B    mov         eax,dword ptr [ebp-4]
 0065D74E    call        0065D78C
 0065D753    mov         dword ptr [ebp-4],eax
 0065D756    mov         eax,dword ptr [ebp-4]
 0065D759    mov         dword ptr [ebp-0C],eax
 0065D75C    cmp         byte ptr [ebp-5],0
>0065D760    je          0065D785
 0065D762    cmp         dword ptr [ebp-4],0
>0065D766    je          0065D785
 0065D768    mov         eax,dword ptr [ebp-4]
 0065D76B    mov         dword ptr [ebp-0C],eax
 0065D76E    inc         dword ptr [ebp-4]
 0065D771    mov         dl,byte ptr [ebp-5]
 0065D774    mov         eax,dword ptr [ebp-4]
 0065D777    call        0065D78C
 0065D77C    mov         dword ptr [ebp-4],eax
 0065D77F    cmp         dword ptr [ebp-4],0
>0065D783    jne         0065D768
 0065D785    mov         eax,dword ptr [ebp-0C]
 0065D788    mov         esp,ebp
 0065D78A    pop         ebp
 0065D78B    ret
end;*}

//0065D78C
{*function sub_0065D78C(?:PChar; ?:?):?;
begin
 0065D78C    push        ebp
 0065D78D    mov         ebp,esp
 0065D78F    add         esp,0FFFFFFF4
 0065D792    mov         byte ptr [ebp-5],dl
 0065D795    mov         dword ptr [ebp-4],eax
 0065D798    mov         dl,byte ptr [ebp-5]
 0065D79B    mov         eax,dword ptr [ebp-4]
 0065D79E    call        StrScan
 0065D7A3    mov         dword ptr [ebp-0C],eax
 0065D7A6    cmp         dword ptr [ebp-0C],0
>0065D7AA    je          0065D7DC
 0065D7AC    mov         edx,dword ptr [ebp-0C]
 0065D7AF    sub         edx,dword ptr [ebp-4]
 0065D7B2    mov         eax,dword ptr [ebp-4]
 0065D7B5    call        0065CFCC
 0065D7BA    sub         al,1
>0065D7BC    jb          0065D7DC
>0065D7BE    je          0065D7C2
>0065D7C0    jmp         0065D7C5
 0065D7C2    inc         dword ptr [ebp-0C]
 0065D7C5    inc         dword ptr [ebp-0C]
 0065D7C8    mov         dl,byte ptr [ebp-5]
 0065D7CB    mov         eax,dword ptr [ebp-0C]
 0065D7CE    call        StrScan
 0065D7D3    mov         dword ptr [ebp-0C],eax
 0065D7D6    cmp         dword ptr [ebp-0C],0
>0065D7DA    jne         0065D7AC
 0065D7DC    mov         eax,dword ptr [ebp-0C]
 0065D7DF    mov         esp,ebp
 0065D7E1    pop         ebp
 0065D7E2    ret
end;*}

//0065D7E4
{*function sub_0065D7E4(?:?):?;
begin
 0065D7E4    push        ebp
 0065D7E5    mov         ebp,esp
 0065D7E7    add         esp,0FFFFFFEC
 0065D7EA    xor         edx,edx
 0065D7EC    mov         dword ptr [ebp-14],edx
 0065D7EF    mov         dword ptr [ebp-4],eax
 0065D7F2    xor         eax,eax
 0065D7F4    push        ebp
 0065D7F5    push        65D84E
 0065D7FA    push        dword ptr fs:[eax]
 0065D7FD    mov         dword ptr fs:[eax],esp
 0065D800    push        7
 0065D802    lea         eax,[ebp-0F]
 0065D805    push        eax
 0065D806    push        1004
 0065D80B    mov         eax,dword ptr [ebp-4]
 0065D80E    push        eax
 0065D80F    call        KERNEL32.GetLocaleInfoA
 0065D814    lea         eax,[ebp-14]
 0065D817    lea         edx,[ebp-0F]
 0065D81A    mov         ecx,7
 0065D81F    call        @LStrFromArray
 0065D824    mov         eax,dword ptr [ebp-14]
 0065D827    push        eax
 0065D828    call        KERNEL32.GetACP
 0065D82D    mov         edx,eax
 0065D82F    pop         eax
 0065D830    call        00657CD8
 0065D835    mov         dword ptr [ebp-8],eax
 0065D838    xor         eax,eax
 0065D83A    pop         edx
 0065D83B    pop         ecx
 0065D83C    pop         ecx
 0065D83D    mov         dword ptr fs:[eax],edx
 0065D840    push        65D855
 0065D845    lea         eax,[ebp-14]
 0065D848    call        @LStrClr
 0065D84D    ret
>0065D84E    jmp         @HandleFinally
>0065D853    jmp         0065D845
 0065D855    mov         eax,dword ptr [ebp-8]
 0065D858    mov         esp,ebp
 0065D85A    pop         ebp
 0065D85B    ret
end;*}

//0065D85C
{*procedure sub_0065D85C(?:?);
begin
 0065D85C    push        ebp
 0065D85D    mov         ebp,esp
 0065D85F    add         esp,0FFFFFFF8
 0065D862    mov         eax,dword ptr [ebp+8]
 0065D865    add         eax,0FFFFFFEC
 0065D868    push        eax
 0065D869    mov         eax,[006ED0D0];0x0 gvar_006ED0D0:Integer
 0065D86E    call        0065D7E4
 0065D873    push        eax
 0065D874    call        KERNEL32.GetCPInfo
 0065D879    xor         eax,eax
 0065D87B    mov         dword ptr [ebp-4],eax
>0065D87E    jmp         0065D8BA
 0065D880    mov         eax,dword ptr [ebp+8]
 0065D883    mov         edx,dword ptr [ebp-4]
 0065D886    mov         al,byte ptr [eax+edx-0E]
 0065D88A    mov         edx,dword ptr [ebp+8]
 0065D88D    mov         ecx,dword ptr [ebp-4]
 0065D890    mov         dl,byte ptr [edx+ecx-0D]
 0065D894    sub         dl,al
>0065D896    jb          0065D8B6
 0065D898    inc         edx
 0065D899    mov         byte ptr [ebp-6],dl
 0065D89C    mov         byte ptr [ebp-5],al
 0065D89F    mov         al,byte ptr [ebp-5]
 0065D8A2    and         eax,0FF
 0065D8A7    bts         dword ptr ds:[6E49F4],eax;gvar_006E49F4
 0065D8AE    inc         byte ptr [ebp-5]
 0065D8B1    dec         byte ptr [ebp-6]
>0065D8B4    jne         0065D89F
 0065D8B6    add         dword ptr [ebp-4],2
 0065D8BA    cmp         dword ptr [ebp-4],0C
>0065D8BE    jge         0065D8D6
 0065D8C0    mov         eax,dword ptr [ebp+8]
 0065D8C3    mov         edx,dword ptr [ebp-4]
 0065D8C6    mov         al,byte ptr [eax+edx-0E]
 0065D8CA    mov         edx,dword ptr [ebp+8]
 0065D8CD    mov         ecx,dword ptr [ebp-4]
 0065D8D0    or          al,byte ptr [edx+ecx-0D]
>0065D8D4    jne         0065D880
 0065D8D6    pop         ecx
 0065D8D7    pop         ecx
 0065D8D8    pop         ebp
 0065D8D9    ret
end;*}

//0065D8DC
{*function sub_0065D8DC:?;
begin
 0065D8DC    push        ebp
 0065D8DD    mov         ebp,esp
 0065D8DF    push        ecx
 0065D8E0    mov         eax,[006ED0D4];0x0 gvar_006ED0D4
 0065D8E5    cmp         eax,1F
>0065D8E8    ja          0065D8F1
 0065D8EA    bt          dword ptr ds:[6E4BEC],eax;gvar_006E4BEC
 0065D8F1    setb        al
 0065D8F4    mov         byte ptr [ebp-1],al
 0065D8F7    mov         al,byte ptr [ebp-1]
 0065D8FA    pop         ecx
 0065D8FB    pop         ebp
 0065D8FC    ret
end;*}

//0065D900
procedure sub_0065D900;
begin
{*
 0065D900    push        ebp
 0065D901    mov         ebp,esp
 0065D903    add         esp,0FFFFFE58
 0065D909    push        esi
 0065D90A    push        edi
 0065D90B    mov         dword ptr ds:[6ED0D0],409;gvar_006ED0D0:Integer
 0065D915    mov         dword ptr ds:[6ED0D4],9;gvar_006ED0D4
 0065D91F    mov         dword ptr ds:[6ED0D8],1;gvar_006ED0D8
 0065D929    call        KERNEL32.GetThreadLocale
 0065D92E    mov         dword ptr [ebp-18],eax
 0065D931    cmp         dword ptr [ebp-18],0
>0065D935    je          0065D93F
 0065D937    mov         eax,dword ptr [ebp-18]
 0065D93A    mov         [006ED0D0],eax;gvar_006ED0D0:Integer
 0065D93F    mov         ax,word ptr [ebp-18]
 0065D943    mov         word ptr [ebp-1A],ax
 0065D947    cmp         word ptr [ebp-1A],0
>0065D94C    je          0065D96A
 0065D94E    mov         ax,word ptr [ebp-1A]
 0065D952    and         ax,3FF
 0065D956    movzx       eax,ax
 0065D959    mov         [006ED0D4],eax;gvar_006ED0D4
 0065D95E    movzx       eax,word ptr [ebp-1A]
 0065D962    shr         eax,0A
 0065D965    mov         [006ED0D8],eax;gvar_006ED0D8
 0065D96A    mov         esi,65DA8C
 0065D96F    mov         edi,6E49F4;gvar_006E49F4
 0065D974    mov         ecx,8
 0065D979    rep movs    dword ptr [edi],dword ptr [esi]
 0065D97B    cmp         dword ptr ds:[6E498C],2;gvar_006E498C
>0065D982    jne         0065DA53
 0065D988    push        ebp
 0065D989    call        0065D8DC
 0065D98E    pop         ecx
 0065D98F    test        al,al
>0065D991    je          0065D9A6
 0065D993    mov         byte ptr ds:[6ED0DD],0;gvar_006ED0DD
 0065D99A    mov         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D9A1    jmp         0065DA85
 0065D9A6    push        ebp
 0065D9A7    call        0065D85C
 0065D9AC    pop         ecx
 0065D9AD    mov         eax,6E49F4;gvar_006E49F4
 0065D9B2    mov         edx,65DA8C
 0065D9B7    mov         cl,20
 0065D9B9    call        @SetEq
 0065D9BE    setne       al
 0065D9C1    mov         [006ED0DC],al;gvar_006ED0DC
 0065D9C6    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065D9CD    je          0065D9DB
 0065D9CF    mov         byte ptr ds:[6ED0DD],0;gvar_006ED0DD
>0065D9D6    jmp         0065DA85
 0065D9DB    mov         dword ptr [ebp-20],80
 0065D9E2    mov         al,byte ptr [ebp-20]
 0065D9E5    mov         edx,dword ptr [ebp-20]
 0065D9E8    mov         byte ptr [ebp+edx-124],al
 0065D9EF    inc         dword ptr [ebp-20]
 0065D9F2    cmp         dword ptr [ebp-20],100
>0065D9F9    jne         0065D9E2
 0065D9FB    lea         eax,[ebp-0A4]
 0065DA01    mov         dword ptr [ebp-24],eax
 0065DA04    lea         eax,[ebp-1A6]
 0065DA0A    push        eax
 0065DA0B    push        80
 0065DA10    mov         eax,dword ptr [ebp-24]
 0065DA13    push        eax
 0065DA14    push        2
 0065DA16    mov         eax,[006ED0D0];0x0 gvar_006ED0D0:Integer
 0065DA1B    push        eax
 0065DA1C    call        KERNEL32.GetStringTypeExA
 0065DA21    mov         dword ptr [ebp-20],80
 0065DA28    mov         eax,dword ptr [ebp-20]
 0065DA2B    cmp         word ptr [ebp+eax*2-2A6],2
 0065DA34    sete        al
 0065DA37    mov         [006ED0DD],al;gvar_006ED0DD
 0065DA3C    cmp         byte ptr ds:[6ED0DD],0;gvar_006ED0DD
>0065DA43    jne         0065DA85
 0065DA45    inc         dword ptr [ebp-20]
 0065DA48    cmp         dword ptr [ebp-20],100
>0065DA4F    jne         0065DA28
>0065DA51    jmp         0065DA85
 0065DA53    push        4A
 0065DA55    call        USER32.GetSystemMetrics
 0065DA5A    test        eax,eax
 0065DA5C    setne       al
 0065DA5F    mov         [006ED0DD],al;gvar_006ED0DD
 0065DA64    push        2A
 0065DA66    call        USER32.GetSystemMetrics
 0065DA6B    test        eax,eax
 0065DA6D    setne       al
 0065DA70    mov         [006ED0DC],al;gvar_006ED0DC
 0065DA75    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065DA7C    je          0065DA85
 0065DA7E    push        ebp
 0065DA7F    call        0065D85C
 0065DA84    pop         ecx
 0065DA85    pop         edi
 0065DA86    pop         esi
 0065DA87    mov         esp,ebp
 0065DA89    pop         ebp
 0065DA8A    ret
*}
end;

//0065DAAC
procedure sub_0065DAAC;
begin
{*
 0065DAAC    push        ebp
 0065DAAD    mov         ebp,esp
 0065DAAF    mov         ecx,8
 0065DAB4    push        0
 0065DAB6    push        0
 0065DAB8    dec         ecx
>0065DAB9    jne         0065DAB4
 0065DABB    push        ecx
 0065DABC    xor         eax,eax
 0065DABE    push        ebp
 0065DABF    push        65DD95
 0065DAC4    push        dword ptr fs:[eax]
 0065DAC7    mov         dword ptr fs:[eax],esp
 0065DACA    call        0065D900
 0065DACF    call        0065BCEC
 0065DAD4    cmp         byte ptr ds:[6ED0DC],0;gvar_006ED0DC
>0065DADB    je          0065DAE2
 0065DADD    call        0065BEF8
 0065DAE2    call        KERNEL32.GetThreadLocale
 0065DAE7    mov         dword ptr [ebp-10],eax
 0065DAEA    lea         eax,[ebp-14]
 0065DAED    push        eax
 0065DAEE    xor         ecx,ecx
 0065DAF0    mov         edx,14
 0065DAF5    mov         eax,dword ptr [ebp-10]
 0065DAF8    call        0065BC10
 0065DAFD    mov         edx,dword ptr [ebp-14]
 0065DB00    mov         eax,6ED010;CurrencyString:AnsiString
 0065DB05    call        @LStrAsg
 0065DB0A    lea         eax,[ebp-18]
 0065DB0D    push        eax
 0065DB0E    mov         ecx,65DDA8;'0'
 0065DB13    mov         edx,1B
 0065DB18    mov         eax,dword ptr [ebp-10]
 0065DB1B    call        0065BC10
 0065DB20    mov         eax,dword ptr [ebp-18]
 0065DB23    xor         edx,edx
 0065DB25    call        00657CD8
 0065DB2A    mov         [006ED014],al;CurrencyFormat:Byte
 0065DB2F    lea         eax,[ebp-1C]
 0065DB32    push        eax
 0065DB33    mov         ecx,65DDA8;'0'
 0065DB38    mov         edx,1C
 0065DB3D    mov         eax,dword ptr [ebp-10]
 0065DB40    call        0065BC10
 0065DB45    mov         eax,dword ptr [ebp-1C]
 0065DB48    xor         edx,edx
 0065DB4A    call        00657CD8
 0065DB4F    mov         [006ED015],al;NegCurrFormat:Byte
 0065DB54    mov         cl,2C
 0065DB56    mov         edx,0F
 0065DB5B    mov         eax,dword ptr [ebp-10]
 0065DB5E    call        0065BC6C
 0065DB63    mov         [006ED016],al;ThousandSeparator:Char
 0065DB68    mov         cl,2E
 0065DB6A    mov         edx,0E
 0065DB6F    mov         eax,dword ptr [ebp-10]
 0065DB72    call        0065BC6C
 0065DB77    mov         [006ED017],al;DecimalSeparator:Char
 0065DB7C    lea         eax,[ebp-20]
 0065DB7F    push        eax
 0065DB80    mov         ecx,65DDA8;'0'
 0065DB85    mov         edx,19
 0065DB8A    mov         eax,dword ptr [ebp-10]
 0065DB8D    call        0065BC10
 0065DB92    mov         eax,dword ptr [ebp-20]
 0065DB95    xor         edx,edx
 0065DB97    call        00657CD8
 0065DB9C    mov         [006ED018],al;CurrencyDecimals:Byte
 0065DBA1    mov         cl,2F
 0065DBA3    mov         edx,1D
 0065DBA8    mov         eax,dword ptr [ebp-10]
 0065DBAB    call        0065BC6C
 0065DBB0    mov         [006ED019],al;gvar_006ED019
 0065DBB5    lea         eax,[ebp-28]
 0065DBB8    push        eax
 0065DBB9    mov         ecx,65DDB4;'m/d/yy'
 0065DBBE    mov         edx,1F
 0065DBC3    mov         eax,dword ptr [ebp-10]
 0065DBC6    call        0065BC10
 0065DBCB    mov         eax,dword ptr [ebp-28]
 0065DBCE    lea         edx,[ebp-24]
 0065DBD1    call        0065BFBC
 0065DBD6    mov         edx,dword ptr [ebp-24]
 0065DBD9    mov         eax,6ED01C;gvar_006ED01C
 0065DBDE    call        @LStrAsg
 0065DBE3    lea         eax,[ebp-30]
 0065DBE6    push        eax
 0065DBE7    mov         ecx,65DDC4;'mmmm d, yyyy'
 0065DBEC    mov         edx,20
 0065DBF1    mov         eax,dword ptr [ebp-10]
 0065DBF4    call        0065BC10
 0065DBF9    mov         eax,dword ptr [ebp-30]
 0065DBFC    lea         edx,[ebp-2C]
 0065DBFF    call        0065BFBC
 0065DC04    mov         edx,dword ptr [ebp-2C]
 0065DC07    mov         eax,6ED020;gvar_006ED020
 0065DC0C    call        @LStrAsg
 0065DC11    mov         cl,3A
 0065DC13    mov         edx,1E
 0065DC18    mov         eax,dword ptr [ebp-10]
 0065DC1B    call        0065BC6C
 0065DC20    mov         [006ED024],al;gvar_006ED024
 0065DC25    lea         eax,[ebp-34]
 0065DC28    push        eax
 0065DC29    mov         ecx,65DDDC;'am'
 0065DC2E    mov         edx,28
 0065DC33    mov         eax,dword ptr [ebp-10]
 0065DC36    call        0065BC10
 0065DC3B    mov         edx,dword ptr [ebp-34]
 0065DC3E    mov         eax,6ED028;gvar_006ED028
 0065DC43    call        @LStrAsg
 0065DC48    lea         eax,[ebp-38]
 0065DC4B    push        eax
 0065DC4C    mov         ecx,65DDE8;'pm'
 0065DC51    mov         edx,29
 0065DC56    mov         eax,dword ptr [ebp-10]
 0065DC59    call        0065BC10
 0065DC5E    mov         edx,dword ptr [ebp-38]
 0065DC61    mov         eax,6ED02C;gvar_006ED02C
 0065DC66    call        @LStrAsg
 0065DC6B    lea         eax,[ebp-8]
 0065DC6E    call        @LStrClr
 0065DC73    lea         eax,[ebp-0C]
 0065DC76    call        @LStrClr
 0065DC7B    lea         eax,[ebp-3C]
 0065DC7E    push        eax
 0065DC7F    mov         ecx,65DDA8;'0'
 0065DC84    mov         edx,25
 0065DC89    mov         eax,dword ptr [ebp-10]
 0065DC8C    call        0065BC10
 0065DC91    mov         eax,dword ptr [ebp-3C]
 0065DC94    xor         edx,edx
 0065DC96    call        00657CD8
 0065DC9B    test        eax,eax
>0065DC9D    jne         0065DCAE
 0065DC9F    lea         eax,[ebp-4]
 0065DCA2    mov         edx,65DDF4;'h'
 0065DCA7    call        @LStrLAsg
>0065DCAC    jmp         0065DCBB
 0065DCAE    lea         eax,[ebp-4]
 0065DCB1    mov         edx,65DE00;'hh'
 0065DCB6    call        @LStrLAsg
 0065DCBB    lea         eax,[ebp-40]
 0065DCBE    push        eax
 0065DCBF    mov         ecx,65DDA8;'0'
 0065DCC4    mov         edx,23
 0065DCC9    mov         eax,dword ptr [ebp-10]
 0065DCCC    call        0065BC10
 0065DCD1    mov         eax,dword ptr [ebp-40]
 0065DCD4    xor         edx,edx
 0065DCD6    call        00657CD8
 0065DCDB    test        eax,eax
>0065DCDD    jne         0065DD1F
 0065DCDF    lea         eax,[ebp-44]
 0065DCE2    push        eax
 0065DCE3    mov         ecx,65DDA8;'0'
 0065DCE8    mov         edx,1005
 0065DCED    mov         eax,dword ptr [ebp-10]
 0065DCF0    call        0065BC10
 0065DCF5    mov         eax,dword ptr [ebp-44]
 0065DCF8    xor         edx,edx
 0065DCFA    call        00657CD8
 0065DCFF    test        eax,eax
>0065DD01    jne         0065DD12
 0065DD03    lea         eax,[ebp-0C]
 0065DD06    mov         edx,65DE0C;' AMPM'
 0065DD0B    call        @LStrLAsg
>0065DD10    jmp         0065DD1F
 0065DD12    lea         eax,[ebp-8]
 0065DD15    mov         edx,65DE1C;'AMPM '
 0065DD1A    call        @LStrLAsg
 0065DD1F    push        dword ptr [ebp-8]
 0065DD22    push        dword ptr [ebp-4]
 0065DD25    push        65DE2C;':mm'
 0065DD2A    push        dword ptr [ebp-0C]
 0065DD2D    mov         eax,6ED030;gvar_006ED030
 0065DD32    mov         edx,4
 0065DD37    call        @LStrCatN
 0065DD3C    push        dword ptr [ebp-8]
 0065DD3F    push        dword ptr [ebp-4]
 0065DD42    push        65DE38;':mm:ss'
 0065DD47    push        dword ptr [ebp-0C]
 0065DD4A    mov         eax,6ED034;gvar_006ED034
 0065DD4F    mov         edx,4
 0065DD54    call        @LStrCatN
 0065DD59    mov         cl,2C
 0065DD5B    mov         edx,0C
 0065DD60    mov         eax,dword ptr [ebp-10]
 0065DD63    call        0065BC6C
 0065DD68    mov         [006ED0DE],al;gvar_006ED0DE
 0065DD6D    xor         eax,eax
 0065DD6F    pop         edx
 0065DD70    pop         ecx
 0065DD71    pop         ecx
 0065DD72    mov         dword ptr fs:[eax],edx
 0065DD75    push        65DD9C
 0065DD7A    lea         eax,[ebp-44]
 0065DD7D    mov         edx,0D
 0065DD82    call        @LStrArrayClr
 0065DD87    lea         eax,[ebp-0C]
 0065DD8A    mov         edx,3
 0065DD8F    call        @LStrArrayClr
 0065DD94    ret
>0065DD95    jmp         @HandleFinally
>0065DD9A    jmp         0065DD7A
 0065DD9C    mov         esp,ebp
 0065DD9E    pop         ebp
 0065DD9F    ret
*}
end;

//0065DE40
{*procedure sub_0065DE40(?:AnsiString; ?:?; ?:?; ?:?; ?:?);
begin
 0065DE40    push        ebp
 0065DE41    mov         ebp,esp
 0065DE43    add         esp,0FFFFFFE0
 0065DE46    push        ebx
 0065DE47    xor         ebx,ebx
 0065DE49    mov         dword ptr [ebp-20],ebx
 0065DE4C    mov         dword ptr [ebp-10],ebx
 0065DE4F    mov         dword ptr [ebp-14],ebx
 0065DE52    mov         dword ptr [ebp-18],ebx
 0065DE55    mov         dword ptr [ebp-0C],ecx
 0065DE58    mov         dword ptr [ebp-8],edx
 0065DE5B    mov         dword ptr [ebp-4],eax
 0065DE5E    xor         eax,eax
 0065DE60    push        ebp
 0065DE61    push        65DF8B
 0065DE66    push        dword ptr fs:[eax]
 0065DE69    mov         dword ptr fs:[eax],esp
 0065DE6C    test        byte ptr [ebp+0C],2
>0065DE70    je          0065DE8A
 0065DE72    lea         edx,[ebp-10]
 0065DE75    mov         eax,dword ptr [ebp-4]
 0065DE78    call        AnsiUpperCase
 0065DE7D    lea         edx,[ebp-14]
 0065DE80    mov         eax,dword ptr [ebp-8]
 0065DE83    call        AnsiUpperCase
>0065DE88    jmp         0065DEA0
 0065DE8A    lea         eax,[ebp-10]
 0065DE8D    mov         edx,dword ptr [ebp-4]
 0065DE90    call        @LStrLAsg
 0065DE95    lea         eax,[ebp-14]
 0065DE98    mov         edx,dword ptr [ebp-8]
 0065DE9B    call        @LStrLAsg
 0065DEA0    lea         eax,[ebp-18]
 0065DEA3    mov         edx,dword ptr [ebp-4]
 0065DEA6    call        @LStrLAsg
 0065DEAB    mov         eax,dword ptr [ebp+8]
 0065DEAE    call        @LStrClr
>0065DEB3    jmp         0065DF5E
 0065DEB8    mov         edx,dword ptr [ebp-10]
 0065DEBB    mov         eax,dword ptr [ebp-14]
 0065DEBE    call        AnsiPos
 0065DEC3    mov         dword ptr [ebp-1C],eax
 0065DEC6    cmp         dword ptr [ebp-1C],0
>0065DECA    jne         0065DEDF
 0065DECC    mov         eax,dword ptr [ebp+8]
 0065DECF    mov         edx,dword ptr [ebp-18]
 0065DED2    call        @LStrCat
 0065DED7    mov         eax,dword ptr [ebp+8]
>0065DEDA    jmp         0065DF68
 0065DEDF    mov         eax,dword ptr [ebp+8]
 0065DEE2    push        dword ptr [eax]
 0065DEE4    lea         eax,[ebp-20]
 0065DEE7    push        eax
 0065DEE8    mov         ecx,dword ptr [ebp-1C]
 0065DEEB    dec         ecx
 0065DEEC    mov         edx,1
 0065DEF1    mov         eax,dword ptr [ebp-18]
 0065DEF4    call        @LStrCopy
 0065DEF9    push        dword ptr [ebp-20]
 0065DEFC    push        dword ptr [ebp-0C]
 0065DEFF    mov         eax,dword ptr [ebp+8]
 0065DF02    mov         edx,3
 0065DF07    call        @LStrCatN
 0065DF0C    lea         eax,[ebp-18]
 0065DF0F    push        eax
 0065DF10    mov         eax,dword ptr [ebp-8]
 0065DF13    call        @LStrLen
 0065DF18    mov         edx,eax
 0065DF1A    add         edx,dword ptr [ebp-1C]
 0065DF1D    mov         ecx,7FFFFFFF
 0065DF22    mov         eax,dword ptr [ebp-18]
 0065DF25    call        @LStrCopy
 0065DF2A    test        byte ptr [ebp+0C],1
>0065DF2E    jne         0065DF40
 0065DF30    mov         eax,dword ptr [ebp+8]
 0065DF33    mov         edx,dword ptr [ebp-18]
 0065DF36    call        @LStrCat
 0065DF3B    mov         eax,dword ptr [ebp+8]
>0065DF3E    jmp         0065DF68
 0065DF40    lea         eax,[ebp-10]
 0065DF43    push        eax
 0065DF44    mov         eax,dword ptr [ebp-14]
 0065DF47    call        @LStrLen
 0065DF4C    mov         edx,eax
 0065DF4E    add         edx,dword ptr [ebp-1C]
 0065DF51    mov         ecx,7FFFFFFF
 0065DF56    mov         eax,dword ptr [ebp-10]
 0065DF59    call        @LStrCopy
 0065DF5E    cmp         dword ptr [ebp-10],0
>0065DF62    jne         0065DEB8
 0065DF68    xor         eax,eax
 0065DF6A    pop         edx
 0065DF6B    pop         ecx
 0065DF6C    pop         ecx
 0065DF6D    mov         dword ptr fs:[eax],edx
 0065DF70    push        65DF92
 0065DF75    lea         eax,[ebp-20]
 0065DF78    call        @LStrClr
 0065DF7D    lea         eax,[ebp-18]
 0065DF80    mov         edx,3
 0065DF85    call        @LStrArrayClr
 0065DF8A    ret
>0065DF8B    jmp         @HandleFinally
>0065DF90    jmp         0065DF75
 0065DF92    pop         ebx
 0065DF93    mov         esp,ebp
 0065DF95    pop         ebp
 0065DF96    ret         8
end;*}

//0065DF9C
procedure RaiseLastOSError;
begin
{*
 0065DF9C    push        ebp
 0065DF9D    mov         ebp,esp
 0065DF9F    add         esp,0FFFFFFE4
 0065DFA2    xor         eax,eax
 0065DFA4    mov         dword ptr [ebp-1C],eax
 0065DFA7    xor         eax,eax
 0065DFA9    push        ebp
 0065DFAA    push        65E03B
 0065DFAF    push        dword ptr fs:[eax]
 0065DFB2    mov         dword ptr fs:[eax],esp
 0065DFB5    call        KERNEL32.GetLastError
 0065DFBA    mov         dword ptr [ebp-4],eax
 0065DFBD    cmp         dword ptr [ebp-4],0
>0065DFC1    je          0065DFFF
 0065DFC3    mov         eax,dword ptr [ebp-4]
 0065DFC6    mov         dword ptr [ebp-18],eax
 0065DFC9    mov         byte ptr [ebp-14],0
 0065DFCD    lea         edx,[ebp-1C]
 0065DFD0    mov         eax,dword ptr [ebp-4]
 0065DFD3    call        0065BBAC
 0065DFD8    mov         eax,dword ptr [ebp-1C]
 0065DFDB    mov         dword ptr [ebp-10],eax
 0065DFDE    mov         byte ptr [ebp-0C],0B
 0065DFE2    lea         eax,[ebp-18]
 0065DFE5    push        eax
 0065DFE6    push        1
 0065DFE8    mov         ecx,dword ptr ds:[6EA1E8]
 0065DFEE    mov         dl,1
 0065DFF0    mov         eax,[00657108];EOSError
 0065DFF5    call        Exception.CreateResFmt
 0065DFFA    mov         dword ptr [ebp-8],eax
>0065DFFD    jmp         0065E014
 0065DFFF    mov         ecx,dword ptr ds:[6EA1EC]
 0065E005    mov         dl,1
 0065E007    mov         eax,[00657108];EOSError
 0065E00C    call        Exception.Create
 0065E011    mov         dword ptr [ebp-8],eax
 0065E014    mov         eax,dword ptr [ebp-4]
 0065E017    mov         edx,dword ptr [ebp-8]
 0065E01A    mov         dword ptr [edx+0C],eax
 0065E01D    mov         eax,dword ptr [ebp-8]
 0065E020    call        @RaiseExcept
 0065E025    xor         eax,eax
 0065E027    pop         edx
 0065E028    pop         ecx
 0065E029    pop         ecx
 0065E02A    mov         dword ptr fs:[eax],edx
 0065E02D    push        65E042
 0065E032    lea         eax,[ebp-1C]
 0065E035    call        @LStrClr
 0065E03A    ret
>0065E03B    jmp         @HandleFinally
>0065E040    jmp         0065E032
 0065E042    mov         esp,ebp
 0065E044    pop         ebp
 0065E045    ret
*}
end;

//0065E048
{*function sub_0065E048(?:LongBool):?;
begin
 0065E048    push        ebp
 0065E049    mov         ebp,esp
 0065E04B    add         esp,0FFFFFFF8
 0065E04E    mov         dword ptr [ebp-4],eax
 0065E051    cmp         dword ptr [ebp-4],0
>0065E055    jne         0065E05C
 0065E057    call        RaiseLastOSError
 0065E05C    mov         eax,dword ptr [ebp-4]
 0065E05F    mov         dword ptr [ebp-8],eax
 0065E062    mov         eax,dword ptr [ebp-8]
 0065E065    pop         ecx
 0065E066    pop         ecx
 0065E067    pop         ebp
 0065E068    ret
end;*}

//0065E06C
{*function sub_0065E06C:?;
begin
 0065E06C    push        ebp
 0065E06D    mov         ebp,esp
 0065E06F    add         esp,0FFFFFFF8
 0065E072    push        ebx
 0065E073    mov         byte ptr [ebp-1],1
 0065E077    mov         eax,[006E4BF0];0x0 gvar_006E4BF0
 0065E07C    mov         dword ptr [ebp-8],eax
>0065E07F    jmp         0065E092
 0065E081    mov         ebx,dword ptr [ebp-8]
 0065E084    call        dword ptr [ebx+4]
 0065E087    mov         byte ptr [ebp-1],al
 0065E08A    mov         eax,dword ptr [ebp-8]
 0065E08D    mov         eax,dword ptr [eax]
 0065E08F    mov         dword ptr [ebp-8],eax
 0065E092    cmp         byte ptr [ebp-1],0
>0065E096    je          0065E09E
 0065E098    cmp         dword ptr [ebp-8],0
>0065E09C    jne         0065E081
 0065E09E    mov         al,byte ptr [ebp-1]
 0065E0A1    pop         ebx
 0065E0A2    pop         ecx
 0065E0A3    pop         ecx
 0065E0A4    pop         ebp
 0065E0A5    ret
end;*}

//0065E0A8
procedure sub_0065E0A8;
begin
{*
 0065E0A8    push        ebp
 0065E0A9    mov         ebp,esp
 0065E0AB    push        ecx
>0065E0AC    jmp         0065E0CD
 0065E0AE    mov         eax,[006E4BF0];0x0 gvar_006E4BF0
 0065E0B3    mov         dword ptr [ebp-4],eax
 0065E0B6    mov         eax,dword ptr [ebp-4]
 0065E0B9    mov         eax,dword ptr [eax]
 0065E0BB    mov         [006E4BF0],eax;gvar_006E4BF0
 0065E0C0    mov         edx,8
 0065E0C5    mov         eax,dword ptr [ebp-4]
 0065E0C8    call        @FreeMem
 0065E0CD    cmp         dword ptr ds:[6E4BF0],0;gvar_006E4BF0
>0065E0D4    jne         0065E0AE
 0065E0D6    pop         ecx
 0065E0D7    pop         ebp
 0065E0D8    ret
*}
end;

//0065E0DC
procedure sub_0065E0DC;
begin
{*
 0065E0DC    push        ebp
 0065E0DD    mov         ebp,esp
 0065E0DF    push        ecx
 0065E0E0    push        65E11C;'kernel32.dll'
 0065E0E5    call        KERNEL32.GetModuleHandleA
 0065E0EA    mov         dword ptr [ebp-4],eax
 0065E0ED    cmp         dword ptr [ebp-4],0
>0065E0F1    je          0065E106
 0065E0F3    push        65E12C
 0065E0F8    mov         eax,dword ptr [ebp-4]
 0065E0FB    push        eax
 0065E0FC    call        KERNEL32.GetProcAddress
 0065E101    mov         [006E4980],eax;gvar_006E4980
 0065E106    cmp         dword ptr ds:[6E4980],0;gvar_006E4980
>0065E10D    jne         0065E119
 0065E10F    mov         eax,658668
 0065E114    mov         [006E4980],eax;gvar_006E4980
 0065E119    pop         ecx
 0065E11A    pop         ebp
 0065E11B    ret
*}
end;

//0065E140
function InterlockedIncrement(var I:Integer):Integer;
begin
{*
 0065E140    mov         edx,1
 0065E145    xchg        eax,edx
 0065E146    lock xadd   dword ptr [edx],eax
 0065E14A    inc         eax
 0065E14B    ret
*}
end;

//0065E14C
function InterlockedDecrement(var I:Integer):Integer;
begin
{*
 0065E14C    mov         edx,0FFFFFFFF
 0065E151    xchg        eax,edx
 0065E152    lock xadd   dword ptr [edx],eax
 0065E156    dec         eax
 0065E157    ret
*}
end;

//0065E158
{*function sub_0065E158(?:?; ?:?):?;
begin
 0065E158    xchg        edx,dword ptr [eax]
 0065E15A    mov         eax,edx
 0065E15C    ret
end;*}

//0065E160
function InterlockedExchangeAdd(var A:Integer; B:Integer):Integer;
begin
{*
 0065E160    xchg        eax,edx
 0065E161    lock xadd   dword ptr [edx],eax
 0065E165    ret
*}
end;

//0065E1A8
{*function sub_0065E1A8(?:?):?;
begin
 0065E1A8    push        ebp
 0065E1A9    mov         ebp,esp
 0065E1AB    add         esp,0FFFFFFF8
 0065E1AE    mov         dword ptr [ebp-4],eax
 0065E1B1    mov         eax,dword ptr [ebp-4]
 0065E1B4    add         eax,0C
 0065E1B7    push        eax
 0065E1B8    call        KERNEL32.EnterCriticalSection
 0065E1BD    mov         byte ptr [ebp-5],1
 0065E1C1    mov         al,byte ptr [ebp-5]
 0065E1C4    pop         ecx
 0065E1C5    pop         ecx
 0065E1C6    pop         ebp
 0065E1C7    ret
end;*}

//0065E1C8
{*procedure sub_0065E1C8(?:?);
begin
 0065E1C8    push        ebp
 0065E1C9    mov         ebp,esp
 0065E1CB    push        ecx
 0065E1CC    mov         dword ptr [ebp-4],eax
 0065E1CF    mov         eax,dword ptr [ebp-4]
 0065E1D2    add         eax,0C
 0065E1D5    push        eax
 0065E1D6    call        KERNEL32.LeaveCriticalSection
 0065E1DB    pop         ecx
 0065E1DC    pop         ebp
 0065E1DD    ret
end;*}

//0065E1E0
{*procedure sub_0065E1E0(?:?);
begin
 0065E1E0    push        ebp
 0065E1E1    mov         ebp,esp
 0065E1E3    push        ecx
 0065E1E4    mov         dword ptr [ebp-4],eax
 0065E1E7    mov         eax,dword ptr [ebp-4]
 0065E1EA    add         eax,0C
 0065E1ED    push        eax
 0065E1EE    call        KERNEL32.EnterCriticalSection
 0065E1F3    pop         ecx
 0065E1F4    pop         ebp
 0065E1F5    ret
end;*}

//0065E1F8
{*procedure sub_0065E1F8(?:?);
begin
 0065E1F8    push        ebp
 0065E1F9    mov         ebp,esp
 0065E1FB    push        ecx
 0065E1FC    mov         dword ptr [ebp-4],eax
 0065E1FF    mov         eax,dword ptr [ebp-4]
 0065E202    add         eax,0C
 0065E205    push        eax
 0065E206    call        KERNEL32.LeaveCriticalSection
 0065E20B    pop         ecx
 0065E20C    pop         ebp
 0065E20D    ret
end;*}

//0065E2F0
{*function sub_0065E2F0(?:?):?;
begin
 0065E2F0    push        ebp
 0065E2F1    mov         ebp,esp
 0065E2F3    add         esp,0FFFFFFF4
 0065E2F6    mov         dword ptr [ebp-8],eax
 0065E2F9    call        KERNEL32.GetCurrentThreadId
 0065E2FE    mov         word ptr [ebp-2],ax
 0065E302    mov         al,byte ptr [ebp-2]
 0065E305    xor         al,byte ptr [ebp-1]
 0065E308    and         al,0F
 0065E30A    mov         byte ptr [ebp-9],al
 0065E30D    mov         al,byte ptr [ebp-9]
 0065E310    mov         esp,ebp
 0065E312    pop         ebp
 0065E313    ret
end;*}

//0065E314
procedure TThreadLocalCounter2.Open(var Thread:PThreadInfo2);
begin
{*
 0065E314    push        ebp
 0065E315    mov         ebp,esp
 0065E317    add         esp,0FFFFFFEC
 0065E31A    mov         dword ptr [ebp-8],edx
 0065E31D    mov         dword ptr [ebp-4],eax
 0065E320    mov         eax,dword ptr [ebp-4]
 0065E323    call        0065E2F0
 0065E328    mov         byte ptr [ebp-11],al
 0065E32B    call        KERNEL32.GetCurrentThreadId
 0065E330    mov         dword ptr [ebp-10],eax
 0065E333    xor         eax,eax
 0065E335    mov         al,byte ptr [ebp-11]
 0065E338    mov         edx,dword ptr [ebp-4]
 0065E33B    mov         eax,dword ptr [edx+eax*4+4]
 0065E33F    mov         dword ptr [ebp-0C],eax
>0065E342    jmp         0065E34C
 0065E344    mov         eax,dword ptr [ebp-0C]
 0065E347    mov         eax,dword ptr [eax]
 0065E349    mov         dword ptr [ebp-0C],eax
 0065E34C    cmp         dword ptr [ebp-0C],0
>0065E350    je          0065E35D
 0065E352    mov         eax,dword ptr [ebp-0C]
 0065E355    mov         eax,dword ptr [eax+4]
 0065E358    cmp         eax,dword ptr [ebp-10]
>0065E35B    jne         0065E344
 0065E35D    cmp         dword ptr [ebp-0C],0
>0065E361    jne         0065E3B5
 0065E363    mov         eax,dword ptr [ebp-4]
 0065E366    call        0065E400
 0065E36B    mov         dword ptr [ebp-0C],eax
 0065E36E    cmp         dword ptr [ebp-0C],0
>0065E372    jne         0065E3B5
 0065E374    mov         eax,10
 0065E379    call        0065744C
 0065E37E    mov         dword ptr [ebp-0C],eax
 0065E381    mov         eax,dword ptr [ebp-10]
 0065E384    mov         edx,dword ptr [ebp-0C]
 0065E387    mov         dword ptr [edx+4],eax
 0065E38A    mov         eax,dword ptr [ebp-0C]
 0065E38D    mov         dword ptr [eax+8],7FFFFFFF
 0065E394    mov         eax,dword ptr [ebp-0C]
 0065E397    mov         edx,dword ptr [ebp-0C]
 0065E39A    mov         dword ptr [edx],eax
 0065E39C    xor         eax,eax
 0065E39E    mov         al,byte ptr [ebp-11]
 0065E3A1    mov         edx,dword ptr [ebp-4]
 0065E3A4    lea         eax,[edx+eax*4+4]
 0065E3A8    mov         edx,dword ptr [ebp-0C]
 0065E3AB    call        0065E158
 0065E3B0    mov         edx,dword ptr [ebp-0C]
 0065E3B3    mov         dword ptr [edx],eax
 0065E3B5    mov         eax,dword ptr [ebp-8]
 0065E3B8    mov         edx,dword ptr [ebp-0C]
 0065E3BB    mov         dword ptr [eax],edx
 0065E3BD    mov         esp,ebp
 0065E3BF    pop         ebp
 0065E3C0    ret
*}
end;

//0065E3C4
procedure TThreadLocalCounter2.Close(var Thread:PThreadInfo2);
begin
{*
 0065E3C4    push        ebp
 0065E3C5    mov         ebp,esp
 0065E3C7    add         esp,0FFFFFFF8
 0065E3CA    mov         dword ptr [ebp-8],edx
 0065E3CD    mov         dword ptr [ebp-4],eax
 0065E3D0    mov         eax,dword ptr [ebp-8]
 0065E3D3    xor         edx,edx
 0065E3D5    mov         dword ptr [eax],edx
 0065E3D7    pop         ecx
 0065E3D8    pop         ecx
 0065E3D9    pop         ebp
 0065E3DA    ret
*}
end;

//0065E3DC
procedure TThreadLocalCounter2.Delete(var Thread:PThreadInfo2);
begin
{*
 0065E3DC    push        ebp
 0065E3DD    mov         ebp,esp
 0065E3DF    add         esp,0FFFFFFF8
 0065E3E2    mov         dword ptr [ebp-8],edx
 0065E3E5    mov         dword ptr [ebp-4],eax
 0065E3E8    mov         eax,dword ptr [ebp-8]
 0065E3EB    mov         eax,dword ptr [eax]
 0065E3ED    xor         edx,edx
 0065E3EF    mov         dword ptr [eax+4],edx
 0065E3F2    mov         eax,dword ptr [ebp-8]
 0065E3F5    mov         eax,dword ptr [eax]
 0065E3F7    xor         edx,edx
 0065E3F9    mov         dword ptr [eax+8],edx
 0065E3FC    pop         ecx
 0065E3FD    pop         ecx
 0065E3FE    pop         ebp
 0065E3FF    ret
*}
end;

//0065E400
{*function sub_0065E400(?:?):?;
begin
 0065E400    push        ebp
 0065E401    mov         ebp,esp
 0065E403    add         esp,0FFFFFFF4
 0065E406    mov         dword ptr [ebp-4],eax
 0065E409    mov         eax,dword ptr [ebp-4]
 0065E40C    call        0065E2F0
 0065E411    and         eax,0FF
 0065E416    mov         edx,dword ptr [ebp-4]
 0065E419    mov         eax,dword ptr [edx+eax*4+4]
 0065E41D    mov         dword ptr [ebp-8],eax
 0065E420    cmp         dword ptr [ebp-8],0
>0065E424    je          0065E45D
 0065E426    mov         eax,dword ptr [ebp-8]
 0065E429    add         eax,8
 0065E42C    mov         edx,7FFFFFFF
 0065E431    call        0065E158
 0065E436    mov         dword ptr [ebp-0C],eax
 0065E439    cmp         dword ptr [ebp-0C],7FFFFFFF
>0065E440    je          0065E44F
 0065E442    call        KERNEL32.GetCurrentThreadId
 0065E447    mov         edx,dword ptr [ebp-8]
 0065E44A    mov         dword ptr [edx+4],eax
>0065E44D    jmp         0065E45D
 0065E44F    mov         eax,dword ptr [ebp-8]
 0065E452    mov         eax,dword ptr [eax]
 0065E454    mov         dword ptr [ebp-8],eax
 0065E457    cmp         dword ptr [ebp-8],0
>0065E45B    jne         0065E426
 0065E45D    mov         eax,dword ptr [ebp-8]
 0065E460    mov         esp,ebp
 0065E462    pop         ebp
 0065E463    ret
end;*}

//0065E464
constructor TMultiReadExclusiveWriteSynchronizer.Create;
begin
{*
 0065E464    push        ebp
 0065E465    mov         ebp,esp
 0065E467    add         esp,0FFFFFFF8
 0065E46A    test        dl,dl
>0065E46C    je          0065E476
 0065E46E    add         esp,0FFFFFFF0
 0065E471    call        @ClassCreate
 0065E476    mov         byte ptr [ebp-5],dl
 0065E479    mov         dword ptr [ebp-4],eax
 0065E47C    xor         edx,edx
 0065E47E    mov         eax,dword ptr [ebp-4]
 0065E481    call        TObject.Create
 0065E486    mov         eax,dword ptr [ebp-4]
 0065E489    mov         dword ptr [eax+0C],0FFFF;TMultiReadExclusiveWriteSynchronizer.FSentinel:Integer
 0065E490    push        0
 0065E492    push        0FF
 0065E494    push        0FF
 0065E496    push        0
 0065E498    call        KERNEL32.CreateEventA
 0065E49D    mov         edx,dword ptr [ebp-4]
 0065E4A0    mov         dword ptr [edx+10],eax;TMultiReadExclusiveWriteSynchronizer.FReadSignal:THandle
 0065E4A3    push        0
 0065E4A5    push        0
 0065E4A7    push        0
 0065E4A9    push        0
 0065E4AB    call        KERNEL32.CreateEventA
 0065E4B0    mov         edx,dword ptr [ebp-4]
 0065E4B3    mov         dword ptr [edx+14],eax;TMultiReadExclusiveWriteSynchronizer.FWriteSignal:THandle
 0065E4B6    mov         eax,dword ptr [ebp-4]
 0065E4B9    mov         dword ptr [eax+18],0FFFFFFFF;TMultiReadExclusiveWriteSynchronizer.FWaitRecycle:Cardinal
 0065E4C0    mov         dl,1
 0065E4C2    mov         eax,[0065E210];TThreadLocalCounter2
 0065E4C7    call        TObject.Create;TThreadLocalCounter2.Create
 0065E4CC    mov         edx,dword ptr [ebp-4]
 0065E4CF    mov         dword ptr [edx+20],eax;TMultiReadExclusiveWriteSynchronizer.tls:TThreadLocalCounter
 0065E4D2    mov         eax,dword ptr [ebp-4]
 0065E4D5    cmp         byte ptr [ebp-5],0
>0065E4D9    je          0065E4EA
 0065E4DB    call        @AfterConstruction
 0065E4E0    pop         dword ptr fs:[0]
 0065E4E7    add         esp,0C
 0065E4EA    mov         eax,dword ptr [ebp-4]
 0065E4ED    pop         ecx
 0065E4EE    pop         ecx
 0065E4EF    pop         ebp
 0065E4F0    ret
*}
end;

//0065E550
{*procedure sub_0065E550(?:?);
begin
 0065E550    push        ebp
 0065E551    mov         ebp,esp
 0065E553    push        ecx
 0065E554    mov         dword ptr [ebp-4],eax
 0065E557    mov         eax,dword ptr [ebp-4]
 0065E55A    mov         eax,dword ptr [eax+10]
 0065E55D    push        eax
 0065E55E    call        KERNEL32.ResetEvent
 0065E563    pop         ecx
 0065E564    pop         ebp
 0065E565    ret
end;*}

//0065E568
procedure TMultiReadExclusiveWriteSynchronizer.UnblockReaders;
begin
{*
 0065E568    push        ebp
 0065E569    mov         ebp,esp
 0065E56B    push        ecx
 0065E56C    mov         dword ptr [ebp-4],eax
 0065E56F    mov         eax,dword ptr [ebp-4]
 0065E572    mov         eax,dword ptr [eax+10]
 0065E575    push        eax
 0065E576    call        KERNEL32.SetEvent
 0065E57B    pop         ecx
 0065E57C    pop         ebp
 0065E57D    ret
*}
end;

//0065E580
procedure TMultiReadExclusiveWriteSynchronizer.UnblockOneWriter;
begin
{*
 0065E580    push        ebp
 0065E581    mov         ebp,esp
 0065E583    push        ecx
 0065E584    mov         dword ptr [ebp-4],eax
 0065E587    mov         eax,dword ptr [ebp-4]
 0065E58A    mov         eax,dword ptr [eax+14]
 0065E58D    push        eax
 0065E58E    call        KERNEL32.SetEvent
 0065E593    pop         ecx
 0065E594    pop         ebp
 0065E595    ret
*}
end;

//0065E598
{*procedure sub_0065E598(?:?);
begin
 0065E598    push        ebp
 0065E599    mov         ebp,esp
 0065E59B    push        ecx
 0065E59C    mov         dword ptr [ebp-4],eax
 0065E59F    mov         eax,dword ptr [ebp-4]
 0065E5A2    mov         eax,dword ptr [eax+18]
 0065E5A5    push        eax
 0065E5A6    mov         eax,dword ptr [ebp-4]
 0065E5A9    mov         eax,dword ptr [eax+10]
 0065E5AC    push        eax
 0065E5AD    call        KERNEL32.WaitForSingleObject
 0065E5B2    pop         ecx
 0065E5B3    pop         ebp
 0065E5B4    ret
end;*}

//0065E5B8
{*procedure sub_0065E5B8(?:?);
begin
 0065E5B8    push        ebp
 0065E5B9    mov         ebp,esp
 0065E5BB    push        ecx
 0065E5BC    mov         dword ptr [ebp-4],eax
 0065E5BF    mov         eax,dword ptr [ebp-4]
 0065E5C2    mov         eax,dword ptr [eax+18]
 0065E5C5    push        eax
 0065E5C6    mov         eax,dword ptr [ebp-4]
 0065E5C9    mov         eax,dword ptr [eax+14]
 0065E5CC    push        eax
 0065E5CD    call        KERNEL32.WaitForSingleObject
 0065E5D2    pop         ecx
 0065E5D3    pop         ebp
 0065E5D4    ret
end;*}

//0065E5D8
function TMultiReadExclusiveWriteSynchronizer.BeginWrite:Boolean;
begin
{*
 0065E5D8    push        ebp
 0065E5D9    mov         ebp,esp
 0065E5DB    add         esp,0FFFFFFE4
 0065E5DE    mov         dword ptr [ebp-4],eax
 0065E5E1    mov         byte ptr [ebp-5],1
 0065E5E5    call        KERNEL32.GetCurrentThreadId
 0065E5EA    mov         dword ptr [ebp-14],eax
 0065E5ED    mov         eax,dword ptr [ebp-4]
 0065E5F0    mov         eax,dword ptr [eax+24]
 0065E5F3    cmp         eax,dword ptr [ebp-14]
>0065E5F6    je          0065E6DB
 0065E5FC    mov         eax,dword ptr [ebp-4]
 0065E5FF    call        0065E550
 0065E604    mov         eax,dword ptr [ebp-4]
 0065E607    mov         eax,dword ptr [eax+28]
 0065E60A    mov         dword ptr [ebp-1C],eax
 0065E60D    lea         edx,[ebp-0C]
 0065E610    mov         eax,dword ptr [ebp-4]
 0065E613    mov         eax,dword ptr [eax+20]
 0065E616    call        TThreadLocalCounter2.Open
 0065E61B    xor         eax,eax
 0065E61D    push        ebp
 0065E61E    push        65E661
 0065E623    push        dword ptr fs:[eax]
 0065E626    mov         dword ptr fs:[eax],esp
 0065E629    mov         eax,dword ptr [ebp-0C]
 0065E62C    cmp         dword ptr [eax+0C],0
 0065E630    seta        byte ptr [ebp-0D]
 0065E634    cmp         byte ptr [ebp-0D],0
>0065E638    je          0065E645
 0065E63A    mov         eax,dword ptr [ebp-4]
 0065E63D    add         eax,0C
 0065E640    call        InterlockedIncrement
 0065E645    xor         eax,eax
 0065E647    pop         edx
 0065E648    pop         ecx
 0065E649    pop         ecx
 0065E64A    mov         dword ptr fs:[eax],edx
 0065E64D    push        65E697
 0065E652    lea         edx,[ebp-0C]
 0065E655    mov         eax,dword ptr [ebp-4]
 0065E658    mov         eax,dword ptr [eax+20]
 0065E65B    call        TThreadLocalCounter2.Close
 0065E660    ret
>0065E661    jmp         @HandleFinally
>0065E666    jmp         0065E652
 0065E668    mov         eax,dword ptr [ebp-4]
 0065E66B    add         eax,0C
 0065E66E    mov         edx,0FFFF
 0065E673    call        InterlockedExchangeAdd
 0065E678    add         eax,0FFFF
 0065E67D    mov         dword ptr [ebp-18],eax
 0065E680    cmp         dword ptr [ebp-18],0
>0065E684    jg          0065E68F
 0065E686    cmp         dword ptr [ebp-18],0FFFE0002
>0065E68D    jg          0065E697
 0065E68F    mov         eax,dword ptr [ebp-4]
 0065E692    call        0065E5B8
 0065E697    mov         eax,dword ptr [ebp-4]
 0065E69A    add         eax,0C
 0065E69D    mov         edx,0FFFF0001
 0065E6A2    call        InterlockedExchangeAdd
 0065E6A7    sub         eax,0FFFF
>0065E6AC    jne         0065E668
 0065E6AE    cmp         byte ptr [ebp-0D],0
>0065E6B2    je          0065E6BF
 0065E6B4    mov         eax,dword ptr [ebp-4]
 0065E6B7    add         eax,0C
 0065E6BA    call        InterlockedDecrement
 0065E6BF    mov         eax,dword ptr [ebp-4]
 0065E6C2    mov         edx,dword ptr [ebp-14]
 0065E6C5    mov         dword ptr [eax+24],edx
 0065E6C8    mov         eax,dword ptr [ebp-4]
 0065E6CB    add         eax,28
 0065E6CE    call        InterlockedIncrement
 0065E6D3    dec         eax
 0065E6D4    cmp         eax,dword ptr [ebp-1C]
 0065E6D7    sete        byte ptr [ebp-5]
 0065E6DB    mov         eax,dword ptr [ebp-4]
 0065E6DE    inc         dword ptr [eax+1C]
 0065E6E1    mov         al,byte ptr [ebp-5]
 0065E6E4    mov         esp,ebp
 0065E6E6    pop         ebp
 0065E6E7    ret
*}
end;

//0065E6E8
procedure TMultiReadExclusiveWriteSynchronizer.EndWrite;
begin
{*
 0065E6E8    push        ebp
 0065E6E9    mov         ebp,esp
 0065E6EB    add         esp,0FFFFFFF8
 0065E6EE    mov         dword ptr [ebp-4],eax
 0065E6F1    lea         edx,[ebp-8]
 0065E6F4    mov         eax,dword ptr [ebp-4]
 0065E6F7    mov         eax,dword ptr [eax+20]
 0065E6FA    call        TThreadLocalCounter2.Open
 0065E6FF    xor         eax,eax
 0065E701    push        ebp
 0065E702    push        65E77E
 0065E707    push        dword ptr fs:[eax]
 0065E70A    mov         dword ptr fs:[eax],esp
 0065E70D    mov         eax,dword ptr [ebp-4]
 0065E710    dec         dword ptr [eax+1C]
 0065E713    mov         eax,dword ptr [ebp-4]
 0065E716    cmp         dword ptr [eax+1C],0
>0065E71A    jne         0065E74B
 0065E71C    mov         eax,dword ptr [ebp-4]
 0065E71F    xor         edx,edx
 0065E721    mov         dword ptr [eax+24],edx
 0065E724    mov         eax,dword ptr [ebp-4]
 0065E727    add         eax,0C
 0065E72A    mov         edx,0FFFF
 0065E72F    call        InterlockedExchangeAdd
 0065E734    mov         eax,dword ptr [ebp-4]
 0065E737    call        TMultiReadExclusiveWriteSynchronizer.UnblockOneWriter
 0065E73C    push        0
 0065E73E    call        KERNEL32.Sleep
 0065E743    mov         eax,dword ptr [ebp-4]
 0065E746    call        TMultiReadExclusiveWriteSynchronizer.UnblockReaders
 0065E74B    mov         eax,dword ptr [ebp-8]
 0065E74E    cmp         dword ptr [eax+0C],0
>0065E752    jne         0065E762
 0065E754    lea         edx,[ebp-8]
 0065E757    mov         eax,dword ptr [ebp-4]
 0065E75A    mov         eax,dword ptr [eax+20]
 0065E75D    call        TThreadLocalCounter2.Delete
 0065E762    xor         eax,eax
 0065E764    pop         edx
 0065E765    pop         ecx
 0065E766    pop         ecx
 0065E767    mov         dword ptr fs:[eax],edx
 0065E76A    push        65E785
 0065E76F    lea         edx,[ebp-8]
 0065E772    mov         eax,dword ptr [ebp-4]
 0065E775    mov         eax,dword ptr [eax+20]
 0065E778    call        TThreadLocalCounter2.Close
 0065E77D    ret
>0065E77E    jmp         @HandleFinally
>0065E783    jmp         0065E76F
 0065E785    pop         ecx
 0065E786    pop         ecx
 0065E787    pop         ebp
 0065E788    ret
*}
end;

//0065E78C
{*procedure sub_0065E78C(?:?);
begin
 0065E78C    push        ebp
 0065E78D    mov         ebp,esp
 0065E78F    add         esp,0FFFFFFF4
 0065E792    mov         dword ptr [ebp-4],eax
 0065E795    mov         byte ptr [ebp-9],0
 0065E799    call        KERNEL32.GetCurrentThreadId
 0065E79E    mov         edx,dword ptr [ebp-4]
 0065E7A1    cmp         eax,dword ptr [edx+24]
>0065E7A4    je          0065E7CE
>0065E7A6    jmp         0065E7BB
 0065E7A8    mov         eax,dword ptr [ebp-4]
 0065E7AB    add         eax,0C
 0065E7AE    call        InterlockedIncrement
 0065E7B3    mov         eax,dword ptr [ebp-4]
 0065E7B6    call        0065E598
 0065E7BB    mov         eax,dword ptr [ebp-4]
 0065E7BE    add         eax,0C
 0065E7C1    call        InterlockedDecrement
 0065E7C6    test        eax,eax
>0065E7C8    jle         0065E7A8
 0065E7CA    mov         byte ptr [ebp-9],1
 0065E7CE    lea         edx,[ebp-8]
 0065E7D1    mov         eax,dword ptr [ebp-4]
 0065E7D4    mov         eax,dword ptr [eax+20]
 0065E7D7    call        TThreadLocalCounter2.Open
 0065E7DC    xor         eax,eax
 0065E7DE    push        ebp
 0065E7DF    push        65E826
 0065E7E4    push        dword ptr fs:[eax]
 0065E7E7    mov         dword ptr fs:[eax],esp
 0065E7EA    mov         eax,dword ptr [ebp-8]
 0065E7ED    inc         dword ptr [eax+0C]
 0065E7F0    mov         eax,dword ptr [ebp-8]
 0065E7F3    cmp         dword ptr [eax+0C],1
 0065E7F7    seta        al
 0065E7FA    and         al,byte ptr [ebp-9]
>0065E7FD    je          0065E80A
 0065E7FF    mov         eax,dword ptr [ebp-4]
 0065E802    add         eax,0C
 0065E805    call        InterlockedIncrement
 0065E80A    xor         eax,eax
 0065E80C    pop         edx
 0065E80D    pop         ecx
 0065E80E    pop         ecx
 0065E80F    mov         dword ptr fs:[eax],edx
 0065E812    push        65E82D
 0065E817    lea         edx,[ebp-8]
 0065E81A    mov         eax,dword ptr [ebp-4]
 0065E81D    mov         eax,dword ptr [eax+20]
 0065E820    call        TThreadLocalCounter2.Close
 0065E825    ret
>0065E826    jmp         @HandleFinally
>0065E82B    jmp         0065E817
 0065E82D    mov         esp,ebp
 0065E82F    pop         ebp
 0065E830    ret
end;*}

//0065E834
procedure TMultiReadExclusiveWriteSynchronizer.EndRead;
begin
{*
 0065E834    push        ebp
 0065E835    mov         ebp,esp
 0065E837    add         esp,0FFFFFFF8
 0065E83A    mov         dword ptr [ebp-4],eax
 0065E83D    lea         edx,[ebp-8]
 0065E840    mov         eax,dword ptr [ebp-4]
 0065E843    mov         eax,dword ptr [eax+20]
 0065E846    call        TThreadLocalCounter2.Open
 0065E84B    xor         eax,eax
 0065E84D    push        ebp
 0065E84E    push        65E8B9
 0065E853    push        dword ptr fs:[eax]
 0065E856    mov         dword ptr fs:[eax],esp
 0065E859    mov         eax,dword ptr [ebp-8]
 0065E85C    dec         dword ptr [eax+0C]
 0065E85F    mov         eax,dword ptr [ebp-8]
 0065E862    cmp         dword ptr [eax+0C],0
>0065E866    jne         0065E89D
 0065E868    lea         edx,[ebp-8]
 0065E86B    mov         eax,dword ptr [ebp-4]
 0065E86E    mov         eax,dword ptr [eax+20]
 0065E871    call        TThreadLocalCounter2.Delete
 0065E876    call        KERNEL32.GetCurrentThreadId
 0065E87B    mov         edx,dword ptr [ebp-4]
 0065E87E    cmp         eax,dword ptr [edx+24]
>0065E881    je          0065E89D
 0065E883    mov         eax,dword ptr [ebp-4]
 0065E886    add         eax,0C
 0065E889    call        InterlockedIncrement
 0065E88E    cmp         eax,0FFFF
>0065E893    jne         0065E89D
 0065E895    mov         eax,dword ptr [ebp-4]
 0065E898    call        TMultiReadExclusiveWriteSynchronizer.UnblockOneWriter
 0065E89D    xor         eax,eax
 0065E89F    pop         edx
 0065E8A0    pop         ecx
 0065E8A1    pop         ecx
 0065E8A2    mov         dword ptr fs:[eax],edx
 0065E8A5    push        65E8C0
 0065E8AA    lea         edx,[ebp-8]
 0065E8AD    mov         eax,dword ptr [ebp-4]
 0065E8B0    mov         eax,dword ptr [eax+20]
 0065E8B3    call        TThreadLocalCounter2.Close
 0065E8B8    ret
>0065E8B9    jmp         @HandleFinally
>0065E8BE    jmp         0065E8AA
 0065E8C0    pop         ecx
 0065E8C1    pop         ecx
 0065E8C2    pop         ebp
 0065E8C3    ret
*}
end;

//0065E8C4
procedure FreeAndNil(var Obj:void );
begin
{*
 0065E8C4    push        ebp
 0065E8C5    mov         ebp,esp
 0065E8C7    add         esp,0FFFFFFF8
 0065E8CA    mov         dword ptr [ebp-4],eax
 0065E8CD    mov         eax,dword ptr [ebp-4]
 0065E8D0    mov         eax,dword ptr [eax]
 0065E8D2    mov         dword ptr [ebp-8],eax
 0065E8D5    mov         eax,dword ptr [ebp-4]
 0065E8D8    xor         edx,edx
 0065E8DA    mov         dword ptr [eax],edx
 0065E8DC    mov         eax,dword ptr [ebp-8]
 0065E8DF    call        TObject.Free
 0065E8E4    pop         ecx
 0065E8E5    pop         ecx
 0065E8E6    pop         ebp
 0065E8E7    ret
*}
end;

//0065E8E8
function Supports(const AClass:TClass; const IID:TGUID):Boolean;
begin
{*
 0065E8E8    push        ebp
 0065E8E9    mov         ebp,esp
 0065E8EB    add         esp,0FFFFFFF0
 0065E8EE    mov         dword ptr [ebp-0C],ecx
 0065E8F1    mov         dword ptr [ebp-8],edx
 0065E8F4    mov         dword ptr [ebp-4],eax
 0065E8F7    cmp         dword ptr [ebp-4],0
>0065E8FB    je          0065E911
 0065E8FD    mov         eax,dword ptr [ebp-0C]
 0065E900    push        eax
 0065E901    mov         eax,dword ptr [ebp-8]
 0065E904    push        eax
 0065E905    mov         eax,dword ptr [ebp-4]
 0065E908    push        eax
 0065E909    mov         eax,dword ptr [eax]
 0065E90B    call        dword ptr [eax]
 0065E90D    test        eax,eax
>0065E90F    je          0065E915
 0065E911    xor         eax,eax
>0065E913    jmp         0065E917
 0065E915    mov         al,1
 0065E917    mov         byte ptr [ebp-0D],al
 0065E91A    mov         al,byte ptr [ebp-0D]
 0065E91D    mov         esp,ebp
 0065E91F    pop         ebp
 0065E920    ret
*}
end;

//0065E924
{*function sub_0065E924(?:?; ?:?; ?:?):?;
begin
 0065E924    push        ebp
 0065E925    mov         ebp,esp
 0065E927    add         esp,0FFFFFFEC
 0065E92A    push        ebx
 0065E92B    xor         ebx,ebx
 0065E92D    mov         dword ptr [ebp-14],ebx
 0065E930    mov         dword ptr [ebp-0C],ecx
 0065E933    mov         dword ptr [ebp-8],edx
 0065E936    mov         dword ptr [ebp-4],eax
 0065E939    xor         eax,eax
 0065E93B    push        ebp
 0065E93C    push        65E9AB
 0065E941    push        dword ptr fs:[eax]
 0065E944    mov         dword ptr fs:[eax],esp
 0065E947    cmp         dword ptr [ebp-4],0
>0065E94B    je          0065E98C
 0065E94D    lea         eax,[ebp-14]
 0065E950    call        @IntfClear
 0065E955    mov         ecx,eax
 0065E957    mov         edx,65E9BC;['{00000000-0000-0000-C000-000000000046}']
 0065E95C    mov         eax,dword ptr [ebp-4]
 0065E95F    call        TObject.GetInterface
 0065E964    test        al,al
>0065E966    je          0065E97A
 0065E968    mov         ecx,dword ptr [ebp-0C]
 0065E96B    mov         edx,dword ptr [ebp-8]
 0065E96E    mov         eax,dword ptr [ebp-14]
 0065E971    call        Supports
 0065E976    test        al,al
>0065E978    jne         0065E990
 0065E97A    mov         ecx,dword ptr [ebp-0C]
 0065E97D    mov         edx,dword ptr [ebp-8]
 0065E980    mov         eax,dword ptr [ebp-4]
 0065E983    call        TObject.GetInterface
 0065E988    test        al,al
>0065E98A    jne         0065E990
 0065E98C    xor         eax,eax
>0065E98E    jmp         0065E992
 0065E990    mov         al,1
 0065E992    mov         byte ptr [ebp-0D],al
 0065E995    xor         eax,eax
 0065E997    pop         edx
 0065E998    pop         ecx
 0065E999    pop         ecx
 0065E99A    mov         dword ptr fs:[eax],edx
 0065E99D    push        65E9B2
 0065E9A2    lea         eax,[ebp-14]
 0065E9A5    call        @IntfClear
 0065E9AA    ret
>0065E9AB    jmp         @HandleFinally
>0065E9B0    jmp         0065E9A2
 0065E9B2    mov         al,byte ptr [ebp-0D]
 0065E9B5    pop         ebx
 0065E9B6    mov         esp,ebp
 0065E9B8    pop         ebp
 0065E9B9    ret
end;*}

//0065E9CC
{*function sub_0065E9CC(?:AnsiString; ?:?):?;
begin
 0065E9CC    push        ebp
 0065E9CD    mov         ebp,esp
 0065E9CF    add         esp,0FFFFFFEC
 0065E9D2    mov         dword ptr [ebp-0C],edx
 0065E9D5    mov         dword ptr [ebp-8],eax
 0065E9D8    mov         eax,dword ptr [ebp-0C]
 0065E9DB    push        eax
 0065E9DC    call        KERNEL32.SetErrorMode
 0065E9E1    mov         dword ptr [ebp-14],eax
 0065E9E4    xor         eax,eax
 0065E9E6    push        ebp
 0065E9E7    push        65EA45
 0065E9EC    push        dword ptr fs:[eax]
 0065E9EF    mov         dword ptr fs:[eax],esp
 0065E9F2    fnstcw      word ptr [ebp-2]
 0065E9F5    xor         eax,eax
 0065E9F7    push        ebp
 0065E9F8    push        65EA27
 0065E9FD    push        dword ptr fs:[eax]
 0065EA00    mov         dword ptr fs:[eax],esp
 0065EA03    mov         eax,dword ptr [ebp-8]
 0065EA06    call        @LStrToPChar
 0065EA0B    push        eax
 0065EA0C    call        KERNEL32.LoadLibraryA
 0065EA11    mov         dword ptr [ebp-10],eax
 0065EA14    xor         eax,eax
 0065EA16    pop         edx
 0065EA17    pop         ecx
 0065EA18    pop         ecx
 0065EA19    mov         dword ptr fs:[eax],edx
 0065EA1C    push        65EA2E
 0065EA21    fnclex
 0065EA23    fldcw       word ptr [ebp-2]
 0065EA26    ret
>0065EA27    jmp         @HandleFinally
>0065EA2C    jmp         0065EA21
 0065EA2E    xor         eax,eax
 0065EA30    pop         edx
 0065EA31    pop         ecx
 0065EA32    pop         ecx
 0065EA33    mov         dword ptr fs:[eax],edx
 0065EA36    push        65EA4C
 0065EA3B    mov         eax,dword ptr [ebp-14]
 0065EA3E    push        eax
 0065EA3F    call        KERNEL32.SetErrorMode
 0065EA44    ret
>0065EA45    jmp         @HandleFinally
>0065EA4A    jmp         0065EA3B
 0065EA4C    mov         eax,dword ptr [ebp-10]
 0065EA4F    mov         esp,ebp
 0065EA51    pop         ebp
 0065EA52    ret
end;*}

//0065EA54
procedure _NF__AD4;
begin
{*
 0065EA54    sbb         eax,0E8000000
 0065EA59    dec         ebx
 0065EA5A    outs        dl,byte ptr [esi]
 0065EA5B    add         al,bl
 0065EA5D    mov         eax,[4BE0006E]
 0065EA62    outs        dl,byte ptr [esi]
 0065EA63    add         ah,dl
 0065EA65    mov         eax,[4BD8006E]
 0065EA6A    outs        dl,byte ptr [esi]
 0065EA6B    add         ah,cl
 0065EA6D    mov         eax,[4BD0006E]
 0065EA72    outs        dl,byte ptr [esi]
 0065EA73    add         al,dl
 0065EA75    mov         eax,[4BC8006E]
 0065EA7A    outs        dl,byte ptr [esi]
 0065EA7B    add         byte ptr [ecx+4BC0006E],bh
 0065EA82    outs        dl,byte ptr [esi]
 0065EA83    add         al,cl
 0065EA85    mov         eax,[4BB8006E]
 0065EA8A    outs        dl,byte ptr [esi]
 0065EA8B    add         byte ptr [eax-4FFF915F],bh
 0065EA91    dec         ebx
 0065EA92    outs        dl,byte ptr [esi]
 0065EA93    add         byte ptr [eax-57FF915F],ch
 0065EA99    dec         ebx
 0065EA9A    outs        dl,byte ptr [esi]
 0065EA9B    add         ah,al
 0065EA9D    mov         eax,[4BA0006E]
 0065EAA2    outs        dl,byte ptr [esi]
 0065EAA3    add         al,al
 0065EAA5    mov         eax,[4B98006E]
 0065EAAA    outs        dl,byte ptr [esi]
 0065EAAB    add         byte ptr [ecx+4B90006E],cl
 0065EAB2    outs        dl,byte ptr [esi]
 0065EAB3    add         byte ptr [eax-77FF915F],dl
 0065EAB9    dec         ebx
 0065EABA    outs        dl,byte ptr [esi]
 0065EABB    add         byte ptr [ecx+4B80006E],dl
 0065EAC2    outs        dl,byte ptr [esi]
 0065EAC3    add         byte ptr [eax+78006EA1],cl
 0065EAC9    dec         ebx
 0065EACA    outs        dl,byte ptr [esi]
 0065EACB    add         byte ptr [ecx+4B70006E],al
 0065EAD2    outs        dl,byte ptr [esi]
 0065EAD3    add         byte ptr [ecx+6E],bh
 0065EAD7    add         byte ptr [eax+4B],ch
 0065EADA    outs        dl,byte ptr [esi]
 0065EADB    add         byte ptr [eax-5F],bh
 0065EADE    outs        dl,byte ptr [esi]
 0065EADF    add         byte ptr [eax+4B],ah
 0065EAE2    outs        dl,byte ptr [esi]
 0065EAE3    add         byte ptr [ecx+6E],dh
 0065EAE7    add         byte ptr [eax+4B],bl
 0065EAEA    outs        dl,byte ptr [esi]
 0065EAEB    add         byte ptr [eax-5F],dh
 0065EAEE    outs        dl,byte ptr [esi]
 0065EAEF    add         byte ptr [eax+4B],dl
 0065EAF2    outs        dl,byte ptr [esi]
 0065EAF3    add         byte ptr [ecx+6E],ch
 0065EAF7    add         byte ptr [eax+4B],cl
 0065EAFA    outs        dl,byte ptr [esi]
 0065EAFB    add         byte ptr [eax-5F],ch
 0065EAFE    outs        dl,byte ptr [esi]
 0065EAFF    add         byte ptr [eax+4B],al
 0065EB02    outs        dl,byte ptr [esi]
 0065EB03    add         byte ptr [ecx+6E],ah
 0065EB07    add         byte ptr [eax],bh
 0065EB09    dec         ebx
 0065EB0A    outs        dl,byte ptr [esi]
 0065EB0B    add         byte ptr [eax-5F],ah
 0065EB0E    outs        dl,byte ptr [esi]
 0065EB0F    add         byte ptr [eax],dh
 0065EB11    dec         ebx
 0065EB12    outs        dl,byte ptr [esi]
 0065EB13    add         byte ptr [ecx+6E],bl
 0065EB17    add         byte ptr [eax],ch
 0065EB19    dec         ebx
 0065EB1A    outs        dl,byte ptr [esi]
 0065EB1B    add         byte ptr [eax-5F],bl
 0065EB1E    outs        dl,byte ptr [esi]
 0065EB1F    add         byte ptr [eax],ah
 0065EB21    dec         ebx
 0065EB22    outs        dl,byte ptr [esi]
 0065EB23    add         byte ptr [ecx+6E],dl
 0065EB27    add         byte ptr [eax],bl
 0065EB29    dec         ebx
 0065EB2A    outs        dl,byte ptr [esi]
 0065EB2B    add         byte ptr [eax-5F],dl
 0065EB2E    outs        dl,byte ptr [esi]
 0065EB2F    add         byte ptr [eax],dl
 0065EB31    dec         ebx
 0065EB32    outs        dl,byte ptr [esi]
 0065EB33    add         byte ptr [ecx+6E],cl
 0065EB37    add         byte ptr [eax],cl
 0065EB39    dec         ebx
 0065EB3A    outs        dl,byte ptr [esi]
 0065EB3B    add         byte ptr [eax-5F],cl
 0065EB3E    outs        dl,byte ptr [esi]
 0065EB3F    add         byte ptr [eax],ch;{_NF__AD5}
*}
end;

//0065EB40
procedure _NF__AD5;
begin
{*
 0065EB40    sub         byte ptr [eax],al
 0065EB42    add         byte ptr [eax],al
 0065EB44    add         byte ptr [ebx+6E],cl
 0065EB47    add         byte ptr [edx+6E],al
 0065EB4E    add         byte ptr [eax],al
 0065EB50    cld
 0065EB51    dec         edx
 0065EB52    outs        dl,byte ptr [esi]
 0065EB53    add         byte ptr [eax+6EA2],al
 0065EB59    add         byte ptr [eax],al
 0065EB5B    add         al,bh
 0065EB5D    dec         edx
 0065EB5E    outs        dl,byte ptr [esi]
 0065EB5F    add         byte ptr [edx+6E],bh
 0065EB63    add         byte ptr [eax],al
 0065EB65    add         byte ptr [eax],al
 0065EB67    add         ah,dh
 0065EB69    dec         edx
 0065EB6A    outs        dl,byte ptr [esi]
 0065EB6B    add         byte ptr [eax-5E],bh
 0065EB6E    outs        dl,byte ptr [esi]
 0065EB6F    add         byte ptr [eax],al
 0065EB71    add         byte ptr [eax],al
 0065EB73    add         al,dh
 0065EB75    dec         edx
 0065EB76    outs        dl,byte ptr [esi]
 0065EB77    add         byte ptr [edx+6E],dh
 0065EB7B    add         byte ptr [eax],al
 0065EB7D    add         byte ptr [eax],al
 0065EB7F    add         ah,ch
 0065EB81    dec         edx
 0065EB82    outs        dl,byte ptr [esi]
 0065EB83    add         byte ptr [eax-5E],dh
 0065EB86    outs        dl,byte ptr [esi]
 0065EB87    add         byte ptr [eax],al
 0065EB89    add         byte ptr [eax],al
 0065EB8B    add         al,ch
 0065EB8D    dec         edx
 0065EB8E    outs        dl,byte ptr [esi]
 0065EB8F    add         byte ptr [edx+6E],ch
 0065EB93    add         byte ptr [eax],al
 0065EB95    add         byte ptr [eax],al
 0065EB97    add         ah,ah
 0065EB99    dec         edx
 0065EB9A    outs        dl,byte ptr [esi]
 0065EB9B    add         byte ptr [eax-5E],ch
 0065EB9E    outs        dl,byte ptr [esi]
 0065EB9F    add         byte ptr [eax],al
 0065EBA1    add         byte ptr [eax],al
 0065EBA3    add         al,ah
 0065EBA5    dec         edx
 0065EBA6    outs        dl,byte ptr [esi]
 0065EBA7    add         byte ptr [edx+6E],ah
 0065EBAB    add         byte ptr [eax],al
 0065EBAD    add         byte ptr [eax],al
 0065EBAF    add         ah,bl
 0065EBB1    dec         edx
 0065EBB2    outs        dl,byte ptr [esi]
 0065EBB3    add         byte ptr [eax-5E],ah
 0065EBB6    outs        dl,byte ptr [esi]
 0065EBB7    add         byte ptr [eax],al
 0065EBB9    add         byte ptr [eax],al
 0065EBBB    add         al,bl
 0065EBBD    dec         edx
 0065EBBE    outs        dl,byte ptr [esi]
 0065EBBF    add         byte ptr [edx+6E],bl
 0065EBC3    add         byte ptr [eax],al
 0065EBC5    add         byte ptr [eax],al
 0065EBC7    add         ah,dl
 0065EBC9    dec         edx
 0065EBCA    outs        dl,byte ptr [esi]
 0065EBCB    add         byte ptr [eax-5E],bl
 0065EBCE    outs        dl,byte ptr [esi]
 0065EBCF    add         byte ptr [eax],al
 0065EBD1    add         byte ptr [eax],al
 0065EBD3    add         al,dl
 0065EBD5    dec         edx
 0065EBD6    outs        dl,byte ptr [esi]
 0065EBD7    add         byte ptr [edx+6E],dl
 0065EBDB    add         byte ptr [eax],al
 0065EBDD    add         byte ptr [eax],al
 0065EBDF    add         ah,cl
 0065EBE1    dec         edx
 0065EBE2    outs        dl,byte ptr [esi]
 0065EBE3    add         byte ptr [eax-5E],dl
 0065EBE6    outs        dl,byte ptr [esi]
 0065EBE7    add         byte ptr [eax],al
 0065EBE9    add         byte ptr [eax],al
 0065EBEB    add         al,cl
 0065EBED    dec         edx
 0065EBEE    outs        dl,byte ptr [esi]
 0065EBEF    add         byte ptr [edx+6E],cl
 0065EBF3    add         byte ptr [eax],al
 0065EBF5    add         byte ptr [eax],al
 0065EBF7    add         ah,al
 0065EBF9    dec         edx
 0065EBFA    outs        dl,byte ptr [esi]
 0065EBFB    add         byte ptr [eax-5E],cl
 0065EBFE    outs        dl,byte ptr [esi]
 0065EBFF    add         byte ptr [eax],al
 0065EC01    add         byte ptr [eax],al
 0065EC03    add         al,al
 0065EC05    dec         edx
 0065EC06    outs        dl,byte ptr [esi]
 0065EC07    add         byte ptr [edx+6E],al
 0065EC0B    add         byte ptr [eax],al
 0065EC0D    add         byte ptr [eax],al
 0065EC0F    add         byte ptr [edx+ecx*2-5DBFFF92],bh
 0065EC16    outs        dl,byte ptr [esi]
 0065EC17    add         byte ptr [eax],al
 0065EC19    add         byte ptr [eax],al
 0065EC1B    add         byte ptr [eax+3C006E4A],bh
 0065EC21    mov         [0000006E],al
 0065EC26    add         byte ptr [eax],al
 0065EC28    mov         ah,4A
 0065EC2A    outs        dl,byte ptr [esi]
 0065EC2B    add         byte ptr [eax],bh
 0065EC2D    mov         [0000006E],al
 0065EC32    add         byte ptr [eax],al
 0065EC34    mov         al,4A
 0065EC36    outs        dl,byte ptr [esi]
 0065EC37    add         byte ptr [edx],dh
 0065EC3A    outs        dl,byte ptr [esi]
 0065EC3B    add         byte ptr [eax],al
 0065EC3D    add         byte ptr [eax],al
 0065EC3F    add         byte ptr [edx+ecx*2-5DCFFF92],ch
 0065EC46    outs        dl,byte ptr [esi]
 0065EC47    add         byte ptr [eax],al
 0065EC49    add         byte ptr [eax],al
 0065EC4B    add         byte ptr [eax+2C006E4A],ch
 0065EC51    mov         [0000006E],al
 0065EC56    add         byte ptr [eax],al
 0065EC58    movs        byte ptr [edi],byte ptr [esi]
 0065EC59    dec         edx
 0065EC5A    outs        dl,byte ptr [esi]
 0065EC5B    add         byte ptr [eax],ch
 0065EC5D    mov         [0000006E],al
 0065EC62    add         byte ptr [eax],al
 0065EC64    mov         al,[24006E4A]
 0065EC69    mov         [0000006E],al
 0065EC6E    add         byte ptr [eax],al
 0065EC70    pushfd
 0065EC71    dec         edx
 0065EC72    outs        dl,byte ptr [esi]
 0065EC73    add         byte ptr [eax],ah
 0065EC75    mov         [0000006E],al
 0065EC7A    add         byte ptr [eax],al
 0065EC7C    cwde
 0065EC7D    dec         edx
 0065EC7E    outs        dl,byte ptr [esi]
 0065EC7F    add         byte ptr [edx],bl
 0065EC82    outs        dl,byte ptr [esi]
 0065EC83    add         byte ptr [eax],al
 0065EC85    add         byte ptr [eax],al
 0065EC87    add         byte ptr [edx+ecx*2-5DE7FF92],dl
 0065EC8E    outs        dl,byte ptr [esi]
 0065EC8F    add         byte ptr [eax],al
 0065EC91    add         byte ptr [eax],al
 0065EC93    add         byte ptr [eax+14006E4A],dl
 0065EC99    mov         [0000006E],al
 0065EC9E    add         byte ptr [eax],al
 0065ECA0    mov         word ptr [edx+6E],cs
 0065ECA3    add         byte ptr [eax],dl
 0065ECA5    mov         [0000006E],al
 0065ECAA    add         byte ptr [eax],al
 0065ECAC    mov         byte ptr [edx+6E],cl
 0065ECAF    add         byte ptr [edx],cl
 0065ECB2    outs        dl,byte ptr [esi]
 0065ECB3    add         byte ptr [eax],al
 0065ECB5    add         byte ptr [eax],al
 0065ECB7    add         byte ptr [edx+ecx*2-5DF7FF92],al
 0065ECBE    outs        dl,byte ptr [esi]
 0065ECBF    add         byte ptr [eax],al
 0065ECC1    add         byte ptr [eax],al
 0065ECC3    add         byte ptr [eax+4006E4A],al
 0065ECC9    mov         [0000006E],al
 0065ECCE    add         byte ptr [eax],al
>0065ECD0    jl          0065ED1C
 0065ECD2    outs        dl,byte ptr [esi]
 0065ECD3    add         byte ptr [eax],al
 0065ECD5    mov         [0000006E],al
 0065ECDA    add         byte ptr [eax],al
>0065ECDC    js          0065ED28
 0065ECDE    outs        dl,byte ptr [esi]
 0065ECDF    add         ah,bh
 0065ECE1    mov         eax,[0000006E]
 0065ECE6    add         byte ptr [eax],al
>0065ECE8    je          0065ED34
 0065ECEA    outs        dl,byte ptr [esi]
 0065ECEB    add         al,bh
 0065ECED    mov         eax,[0000006E]
 0065ECF2    add         byte ptr [eax],al
>0065ECF4    jo          0065ED40
 0065ECF6    outs        dl,byte ptr [esi]
 0065ECF7    add         ah,dh
 0065ECF9    mov         eax,[0000006E]
 0065ECFE    add         byte ptr [eax],al
 0065ED00    ins         byte ptr [edi],dl
 0065ED01    dec         edx
 0065ED02    outs        dl,byte ptr [esi]
 0065ED03    add         al,dh
 0065ED05    mov         eax,[0000006E]
 0065ED0A    add         byte ptr [eax],al
 0065ED0C    dec         eax
 0065ED0D    dec         edx
 0065ED0E    outs        dl,byte ptr [esi]
 0065ED0F    add         byte ptr [ecx+6E],ah
 0065ED16    add         byte ptr [eax],al
 0065ED18    inc         esp
 0065ED19    dec         edx
 0065ED1A    outs        dl,byte ptr [esi]
 0065ED1B    add         byte ptr [eax+6EA1],ah
 0065ED21    add         byte ptr [eax],al
 0065ED23    add         byte ptr [ebp-75],dl
*}
end;

end.