//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit variants;

interface

uses
  SysUtils, Classes;

type
  TCustomVariantType = class(TObject)
  public
    ....FVarType:TVarType;//f4
    destructor Destroy; virtual;//006687C0
    //function v0(?:?; ?:?):?; virtual;//v0//00668974
    //function v4(?:?; ?:?; ?:?):?; virtual;//v4//00668864
    //function v8(?:?; ?:?; ?:?):?; virtual;//v8//006688E4
    //function vC(?:?; ?:?):?; virtual;//vC//00668890
    //procedure v10(?:?; ?:?); virtual;//v10//0066892C
    //function v14(?:?):?; virtual;//v14//0066884C
    //procedure v18(?:?; ?:?); virtual;//v18//0066867C
    //procedure v1C(?:?; ?:?; ?:?); virtual;//v1C//006686C4
    //procedure v20(?:?; ?:?); virtual;//v20//0066877C
    procedure v24; virtual; abstract;//v24//0066AC84
    procedure v28; virtual; abstract;//v28//0066AC84
    //procedure v2C(?:?; ?:?); virtual;//v2C//0066865C
    //procedure v30(?:?; ?:?); virtual;//v30//00668910
    //function v34(?:?; ?:?; ?:?):?; virtual;//v34//00668738
    //procedure v38(?:?; ?:?); virtual;//v38//00668718
  end;
  EVariantInvalidOpError = class(EVariantError)
  end;
  EVariantTypeCastError = class(EVariantError)
  end;
  EVariantOverflowError = class(EVariantError)
  end;
  EVariantInvalidArgError = class(EVariantError)
  end;
  EVariantBadVarTypeError = class(EVariantError)
  end;
  EVariantBadIndexError = class(EVariantError)
  end;
  EVariantArrayLockedError = class(EVariantError)
  end;
  EVariantArrayCreateError = class(EVariantError)
  end;
  EVariantNotImplError = class(EVariantError)
  end;
  EVariantOutOfMemoryError = class(EVariantError)
  end;
  EVariantUnexpectedError = class(EVariantError)
  end;
  EVariantDispatchError = class(EVariantError)
  end;
  _DynArr_97_81 = array of ?;
//elSize = 4;
    procedure sub_0065F368;//0065F368
    procedure VarCastError;//0065F948
    //procedure sub_0065F99C(?:?; ?:?);//0065F99C
    procedure VarInvalidOp;//0065FA3C
    //procedure sub_0065FA90(?:?; ?:?);//0065FA90
    procedure VarArrayCreateError;//0065FB30
    //procedure sub_0065FB84(?:?);//0065FB84
    //function sub_0065FDC4(?:?; ?:?; ?:?):?;//0065FDC4
    //procedure sub_0065FE18(?:?; ?:?);//0065FE18
    procedure _DispInvokeError;//0065FEB4
    //procedure sub_0065FF08(?:?);//0065FF08
    //function sub_0065FF24(?:?; ?:?):?;//0065FF24
    //function sub_0065FF70(?:?; ?:?):?;//0065FF70
    //procedure sub_0065FFF4(?:?);//0065FFF4
    //procedure sub_006601B0(?:?);//006601B0
    //procedure sub_00660244(?:?);//00660244
    //procedure sub_00660284(?:?; ?:?; ?:?; ?:?);//00660284
    //function sub_00660390(?:?; ?:?):?;//00660390
    //function sub_006603DC(?:?; ?:?):?;//006603DC
    //procedure sub_00660460(?:?; ?:?; ?:?);//00660460
    //procedure sub_006606C4(?:?; ?:?);//006606C4
    //procedure sub_006607C0(?:?; ?:?);//006607C0
    //procedure sub_00660858(?:?; ?:?);//00660858
    //procedure sub_0066088C(?:?; ?:?);//0066088C
    //procedure sub_006608C4(?:?; ?:?);//006608C4
    //procedure sub_00660900(?:?; ?:?);//00660900
    procedure sub_00660B74;//00660B74
    //procedure sub_00660B7C(?:?; ?:?; ?:?);//00660B7C
    //procedure sub_00660BE8(?:?; ?:?; ?:?; ?:?);//00660BE8
    //procedure sub_00660E8C(?:?; ?:?; ?:?; ?:Extended; ?:?; ?:?);//00660E8C
    //procedure sub_00660F78(?:?; ?:?; ?:?; ?:?);//00660F78
    //procedure sub_006610BC(?:?; ?:?);//006610BC
    //procedure sub_00661114(?:?; ?:?);//00661114
    //procedure sub_0066116C(?:?; ?:?);//0066116C
    //procedure sub_006611C4(?:?; ?:?);//006611C4
    //procedure sub_0066121C(?:?; ?:?; ?:?);//0066121C
    //procedure sub_006612C4(?:?; ?:?; ?:?);//006612C4
    //procedure sub_00661390(?:?; ?:?; ?:?);//00661390
    //procedure sub_00661648(?:?; ?:?; ?:?);//00661648
    //function sub_006616D4(?:?):?;//006616D4
    //function sub_00661774(?:?):?;//00661774
    //function sub_006617B8(?:?):?;//006617B8
    //function sub_0066181C(?:?; ?:?):?;//0066181C
    //function sub_0066186C(?:?):?;//0066186C
    //function sub_00661C94(?:?):?;//00661C94
    //function sub_00661CF0(?:?):?;//00661CF0
    //function sub_00661D84(?:?):?;//00661D84
    //function sub_00661DF0(?:?; ?:Integer):?;//00661DF0
    //function sub_00661E44(?:?):?;//00661E44
    //function sub_00662250(?:?):?;//00662250
    //function sub_006622E0(?:?):?;//006622E0
    //function sub_0066232C(?:?):?;//0066232C
    //function sub_00662390(?:?; ?:?):?;//00662390
    //function sub_006623E4(?:?):?;//006623E4
    //function sub_00662778(?:?):?;//00662778
    //function sub_00662820(?:?):?;//00662820
    //function sub_00662868(?:?):?;//00662868
    //function sub_006628CC(?:?; ?:Extended):?;//006628CC
    //function sub_0066291C(?:?):?;//0066291C
    //function sub_00662CAC(?:?):?;//00662CAC
    //function sub_00662D7C(?:?):?;//00662D7C
    //function sub_00662DC8(?:?):?;//00662DC8
    //function sub_00662E2C(?:?; ?:Double):?;//00662E2C
    //function sub_00662E80(?:?):?;//00662E80
    //procedure sub_0066323C(?:?);//0066323C
    //procedure sub_006632DC(?:?);//006632DC
    //procedure sub_00663328(?:?);//00663328
    //function sub_0066338C(?:?; ?:Double):?;//0066338C
    //procedure sub_006633E0(?:?);//006633E0
    //procedure sub_006637B4(?:?; ?:?; ?:?);//006637B4
    //procedure sub_006637E8(?:?; ?:?; ?:?);//006637E8
    //procedure sub_0066381C(?:?; ?:?);//0066381C
    //procedure sub_00663854(?:?; ?:?);//00663854
    //procedure sub_006638A0(?:?; ?:?);//006638A0
    //function sub_00663904(?:?; ?:?):?;//00663904
    //procedure sub_00663964(?:?; ?:?);//00663964
    //procedure sub_00663F44(?:?; ?:?);//00663F44
    //procedure sub_00663F90(?:?; ?:?);//00663F90
    //function sub_00663FF4(?:?; ?:?):?;//00663FF4
    //procedure sub_00664050(?:?; ?:?);//00664050
    //procedure sub_006645F8(?:?; ?:?);//006645F8
    //procedure sub_006647F8(?:?; ?:?; ?:?);//006647F8
    //procedure sub_00664958(?:?; ?:?; ?:?);//00664958
    //procedure sub_006649A4(?:?; ?:?);//006649A4
    //procedure sub_00664A30(?:?; ?:?);//00664A30
    //procedure sub_00664AE0(?:?; ?:WideString);//00664AE0
    //procedure sub_00664B44(?:?; ?:?);//00664B44
    //procedure sub_00664B9C(?:?; ?:?);//00664B9C
    //procedure sub_00664C08(?:?; ?:?);//00664C08
    //procedure sub_00664CB8(?:?; ?:?);//00664CB8
    //procedure sub_00664D38(?:?; ?:?);//00664D38
    //procedure sub_00664EDC(?:?; ?:?);//00664EDC
    //procedure sub_00664F98(?:?; ?:?; ?:?);//00664F98
    //procedure sub_006652E4(?:?; ?:?; ?:?);//006652E4
    //function sub_00665378(?:?; ?:?):?;//00665378
    //procedure sub_006653D8(?:?; ?:?; ?:?);//006653D8
    //procedure sub_00665458(?:?; ?:?; ?:?);//00665458
    //procedure sub_006654B8(?:?; ?:?; ?:?; ?:?);//006654B8
    //procedure sub_006655CC(?:?; ?:?; ?:?; ?:?);//006655CC
    //procedure sub_006657B8(?:?; ?:?; ?:?);//006657B8
    //procedure sub_00665C10(?:?; ?:?; ?:?);//00665C10
    //function sub_00665CCC(?:?; ?:?; ?:?):?;//00665CCC
    //function sub_00665DA8(?:?; ?:?):?;//00665DA8
    //function sub_00665DD4(?:?; ?:?; ?:?):?;//00665DD4
    //function sub_00665E40(?:?):?;//00665E40
    //function sub_00665E78(?:Integer; ?:?):?;//00665E78
    //function sub_00665EAC(?:?; ?:?; ?:?; ?:?):?;//00665EAC
    //function sub_00665EF0(?:?; ?:?):?;//00665EF0
    //function sub_00665F24(?:?; ?:?):?;//00665F24
    //function sub_00665F58(?:?; ?:?):?;//00665F58
    //function sub_00665F90(?:?; ?:?; ?:?):?;//00665F90
    //function sub_00666018(?:?; ?:?; ?:?):?;//00666018
    //function sub_006661E8(?:?; ?:?; ?:?):?;//006661E8
    //function sub_00666624(?:?; ?:?; ?:?):?;//00666624
    //procedure sub_0066671C(?:?);//0066671C
    //procedure sub_00666780(?:?);//00666780
    //procedure sub_0066679C(?:?; ?:?);//0066679C
    //procedure sub_006667D4(?:?; ?:?);//006667D4
    //procedure sub_006667FC(?:?; ?:?);//006667FC
    //procedure sub_00666824(?:?; ?:?);//00666824
    //procedure sub_0066686C(?:?);//0066686C
    //function sub_00666888(?:?):?;//00666888
    //procedure sub_006668C4(?:?);//006668C4
    //procedure sub_00666C0C(?:?);//00666C0C
    //procedure sub_00666C74(?:?);//00666C74
    //procedure sub_00666C90(?:?; ?:?);//00666C90
    //procedure sub_00666CC8(?:?);//00666CC8
    //function sub_00666CE4(?:?):?;//00666CE4
    //procedure sub_00666D20(?:?);//00666D20
    //procedure sub_00667190(?:?; ?:?);//00667190
    //function sub_00667324(?:?):?;//00667324
    //function sub_00667340(?:?):?;//00667340
    //function sub_0066736C(?:?):?;//0066736C
    //function sub_006673E4(?:?):?;//006673E4
    //function sub_00667404(?:?):?;//00667404
    //function sub_00667438(?:?):?;//00667438
    //function sub_0066745C(?:?):?;//0066745C
    //function sub_0066747C(?:?):?;//0066747C
    //procedure sub_0066749C(?:?; ?:?);//0066749C
    //procedure sub_006674BC(?:?; ?:?; ?:?);//006674BC
    //function sub_006674F4(?:?; ?:?):?;//006674F4
    //procedure sub_00667570(?:?);//00667570
    //function sub_0066758C(?:?; ?:?; ?:?):?;//0066758C
    //function sub_00667624(?:?; ?:?; ?:?):?;//00667624
    //procedure sub_006676A4(?:?; ?:?; ?:?; ?:?);//006676A4
    //function sub_006677E0(?:?):?;//006677E0
    //function sub_0066780C(?:?):?;//0066780C
    //function sub_00667840(?:?; ?:?):?;//00667840
    //function sub_00667870(?:?; ?:?):?;//00667870
    //function sub_006678A0(?:?):?;//006678A0
    //function sub_006678C0(?:?; ?:?):?;//006678C0
    //function sub_00667900(?:?):?;//00667900
    //function sub_00667934(?:?):?;//00667934
    //procedure sub_00667980(?:?; ?:?; ?:?; ?:?);//00667980
    function VarArrayGet(const A:Variant; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1):Variant;//00667A54
    //procedure sub_00667A78(?:?; ?:?; ?:?; ?:?);//00667A78
    procedure VarArrayPut(var A:Variant; const Value:Variant; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1);//00667BC4
    function DynArrayIndex(const P:Pointer; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1; const TypInfo:Pointer):Pointer;//00667BEC
    //function sub_00667C2C(?:?):?;//00667C2C
    //function sub_00667C68(?:?):?;//00667C68
    function DynArraySize(a:Pointer):Integer;//00667C9C
    //function sub_00667CA4(?:?; ?:?):?;//00667CA4
    //procedure sub_00667D40(?:?; ?:?; ?:?);//00667D40
    //function sub_00667DBC(?:?; ?:?):?;//00667DBC
    //procedure sub_00667E80(?:?; ?:?; ?:?);//00667E80
    //function sub_00667F08(?:?):?;//00667F08
    //procedure sub_00667F50(?:?; ?:?; ?:?);//00667F50
    //procedure sub_006682B4(?:?; ?:?; ?:?);//006682B4
    procedure sub_006685DC;//006685DC
    //procedure sub_0066865C(?:?; ?:?);//0066865C
    //procedure sub_0066867C(?:?; ?:?);//0066867C
    //procedure sub_006686C4(?:?; ?:?; ?:?);//006686C4
    //procedure sub_00668718(?:?; ?:?);//00668718
    //function sub_00668738(?:?; ?:?; ?:?):?;//00668738
    //procedure sub_0066877C(?:?; ?:?);//0066877C
    destructor Destroy;//006687C0
    //function sub_0066884C(?:?):?;//0066884C
    //function sub_00668864(?:?; ?:?; ?:?):?;//00668864
    //function sub_00668890(?:?; ?:?):?;//00668890
    procedure sub_006688B4(?:TCustomVariantType);//006688B4
    procedure sub_006688C4(?:TCustomVariantType);//006688C4
    procedure sub_006688D4(?:TCustomVariantType);//006688D4
    //function sub_006688E4(?:?; ?:?; ?:?):?;//006688E4
    //procedure sub_00668910(?:?; ?:?);//00668910
    //procedure sub_0066892C(?:?; ?:?);//0066892C
    //function sub_0066894C:?;//0066894C
    //function sub_00668960:?;//00668960
    //function sub_00668974(?:?; ?:?):?;//00668974
    //function sub_006689A0(?:?; ?:?):?;//006689A0
    //function sub_00668A6C(?:?; ?:?):?;//00668A6C
    //procedure sub_00668B68(?:?);//00668B68

implementation

//0065F368
procedure sub_0065F368;
begin
{*
 0065F368    sub         dword ptr ds:[6ED138],1
 0065F36F    ret
*}
end;

//0065F948
procedure VarCastError;
begin
{*
 0065F948    push        ebp
 0065F949    mov         ebp,esp
 0065F94B    push        0
 0065F94D    xor         eax,eax
 0065F94F    push        ebp
 0065F950    push        65F992
 0065F955    push        dword ptr fs:[eax]
 0065F958    mov         dword ptr fs:[eax],esp
 0065F95B    lea         edx,[ebp-4]
 0065F95E    mov         eax,[006EA1C0]
 0065F963    call        LoadResString
 0065F968    mov         ecx,dword ptr [ebp-4]
 0065F96B    mov         dl,1
 0065F96D    mov         eax,[0065F4F0];EVariantTypeCastError
 0065F972    call        Exception.Create
 0065F977    call        @RaiseExcept
 0065F97C    xor         eax,eax
 0065F97E    pop         edx
 0065F97F    pop         ecx
 0065F980    pop         ecx
 0065F981    mov         dword ptr fs:[eax],edx
 0065F984    push        65F999
 0065F989    lea         eax,[ebp-4]
 0065F98C    call        @LStrClr
 0065F991    ret
>0065F992    jmp         @HandleFinally
>0065F997    jmp         0065F989
 0065F999    pop         ecx
 0065F99A    pop         ebp
 0065F99B    ret
*}
end;

//0065F99C
{*procedure sub_0065F99C(?:?; ?:?);
begin
 0065F99C    push        ebp
 0065F99D    mov         ebp,esp
 0065F99F    add         esp,0FFFFFFE0
 0065F9A2    xor         ecx,ecx
 0065F9A4    mov         dword ptr [ebp-18],ecx
 0065F9A7    mov         dword ptr [ebp-1C],ecx
 0065F9AA    mov         dword ptr [ebp-20],ecx
 0065F9AD    mov         word ptr [ebp-4],dx
 0065F9B1    mov         word ptr [ebp-2],ax
 0065F9B5    xor         eax,eax
 0065F9B7    push        ebp
 0065F9B8    push        65FA31
 0065F9BD    push        dword ptr fs:[eax]
 0065F9C0    mov         dword ptr fs:[eax],esp
 0065F9C3    lea         edx,[ebp-18]
 0065F9C6    mov         ax,word ptr [ebp-2]
 0065F9CA    call        00667190
 0065F9CF    mov         eax,dword ptr [ebp-18]
 0065F9D2    mov         dword ptr [ebp-14],eax
 0065F9D5    mov         byte ptr [ebp-10],0B
 0065F9D9    lea         edx,[ebp-1C]
 0065F9DC    mov         ax,word ptr [ebp-4]
 0065F9E0    call        00667190
 0065F9E5    mov         eax,dword ptr [ebp-1C]
 0065F9E8    mov         dword ptr [ebp-0C],eax
 0065F9EB    mov         byte ptr [ebp-8],0B
 0065F9EF    lea         eax,[ebp-14]
 0065F9F2    push        eax
 0065F9F3    push        1
 0065F9F5    lea         edx,[ebp-20]
 0065F9F8    mov         eax,[006EA288];^gvar_0065F094
 0065F9FD    call        LoadResString
 0065FA02    mov         ecx,dword ptr [ebp-20]
 0065FA05    mov         dl,1
 0065FA07    mov         eax,[0065F4F0];EVariantTypeCastError
 0065FA0C    call        Exception.CreateFmt;EVariantTypeCastError.Create
 0065FA11    call        @RaiseExcept
 0065FA16    xor         eax,eax
 0065FA18    pop         edx
 0065FA19    pop         ecx
 0065FA1A    pop         ecx
 0065FA1B    mov         dword ptr fs:[eax],edx
 0065FA1E    push        65FA38
 0065FA23    lea         eax,[ebp-20]
 0065FA26    mov         edx,3
 0065FA2B    call        @LStrArrayClr
 0065FA30    ret
>0065FA31    jmp         @HandleFinally
>0065FA36    jmp         0065FA23
 0065FA38    mov         esp,ebp
 0065FA3A    pop         ebp
 0065FA3B    ret
end;*}

//0065FA3C
procedure VarInvalidOp;
begin
{*
 0065FA3C    push        ebp
 0065FA3D    mov         ebp,esp
 0065FA3F    push        0
 0065FA41    xor         eax,eax
 0065FA43    push        ebp
 0065FA44    push        65FA86
 0065FA49    push        dword ptr fs:[eax]
 0065FA4C    mov         dword ptr fs:[eax],esp
 0065FA4F    lea         edx,[ebp-4]
 0065FA52    mov         eax,[006EA1C4]
 0065FA57    call        LoadResString
 0065FA5C    mov         ecx,dword ptr [ebp-4]
 0065FA5F    mov         dl,1
 0065FA61    mov         eax,[0065F48C];EVariantInvalidOpError
 0065FA66    call        Exception.Create
 0065FA6B    call        @RaiseExcept
 0065FA70    xor         eax,eax
 0065FA72    pop         edx
 0065FA73    pop         ecx
 0065FA74    pop         ecx
 0065FA75    mov         dword ptr fs:[eax],edx
 0065FA78    push        65FA8D
 0065FA7D    lea         eax,[ebp-4]
 0065FA80    call        @LStrClr
 0065FA85    ret
>0065FA86    jmp         @HandleFinally
>0065FA8B    jmp         0065FA7D
 0065FA8D    pop         ecx
 0065FA8E    pop         ebp
 0065FA8F    ret
*}
end;

//0065FA90
{*procedure sub_0065FA90(?:?; ?:?);
begin
 0065FA90    push        ebp
 0065FA91    mov         ebp,esp
 0065FA93    add         esp,0FFFFFFE0
 0065FA96    xor         ecx,ecx
 0065FA98    mov         dword ptr [ebp-18],ecx
 0065FA9B    mov         dword ptr [ebp-1C],ecx
 0065FA9E    mov         dword ptr [ebp-20],ecx
 0065FAA1    mov         word ptr [ebp-4],dx
 0065FAA5    mov         word ptr [ebp-2],ax
 0065FAA9    xor         eax,eax
 0065FAAB    push        ebp
 0065FAAC    push        65FB25
 0065FAB1    push        dword ptr fs:[eax]
 0065FAB4    mov         dword ptr fs:[eax],esp
 0065FAB7    lea         edx,[ebp-18]
 0065FABA    mov         ax,word ptr [ebp-2]
 0065FABE    call        00667190
 0065FAC3    mov         eax,dword ptr [ebp-18]
 0065FAC6    mov         dword ptr [ebp-14],eax
 0065FAC9    mov         byte ptr [ebp-10],0B
 0065FACD    lea         edx,[ebp-1C]
 0065FAD0    mov         ax,word ptr [ebp-4]
 0065FAD4    call        00667190
 0065FAD9    mov         eax,dword ptr [ebp-1C]
 0065FADC    mov         dword ptr [ebp-0C],eax
 0065FADF    mov         byte ptr [ebp-8],0B
 0065FAE3    lea         eax,[ebp-14]
 0065FAE6    push        eax
 0065FAE7    push        1
 0065FAE9    lea         edx,[ebp-20]
 0065FAEC    mov         eax,[006EA28C];^gvar_0065F09C
 0065FAF1    call        LoadResString
 0065FAF6    mov         ecx,dword ptr [ebp-20]
 0065FAF9    mov         dl,1
 0065FAFB    mov         eax,[0065F554];EVariantOverflowError
 0065FB00    call        Exception.CreateFmt;EVariantOverflowError.Create
 0065FB05    call        @RaiseExcept
 0065FB0A    xor         eax,eax
 0065FB0C    pop         edx
 0065FB0D    pop         ecx
 0065FB0E    pop         ecx
 0065FB0F    mov         dword ptr fs:[eax],edx
 0065FB12    push        65FB2C
 0065FB17    lea         eax,[ebp-20]
 0065FB1A    mov         edx,3
 0065FB1F    call        @LStrArrayClr
 0065FB24    ret
>0065FB25    jmp         @HandleFinally
>0065FB2A    jmp         0065FB17
 0065FB2C    mov         esp,ebp
 0065FB2E    pop         ebp
 0065FB2F    ret
end;*}

//0065FB30
procedure VarArrayCreateError;
begin
{*
 0065FB30    push        ebp
 0065FB31    mov         ebp,esp
 0065FB33    push        0
 0065FB35    xor         eax,eax
 0065FB37    push        ebp
 0065FB38    push        65FB7A
 0065FB3D    push        dword ptr fs:[eax]
 0065FB40    mov         dword ptr fs:[eax],esp
 0065FB43    lea         edx,[ebp-4]
 0065FB46    mov         eax,[006EA1B8]
 0065FB4B    call        LoadResString
 0065FB50    mov         ecx,dword ptr [ebp-4]
 0065FB53    mov         dl,1
 0065FB55    mov         eax,[0065F74C];EVariantArrayCreateError
 0065FB5A    call        Exception.Create
 0065FB5F    call        @RaiseExcept
 0065FB64    xor         eax,eax
 0065FB66    pop         edx
 0065FB67    pop         ecx
 0065FB68    pop         ecx
 0065FB69    mov         dword ptr fs:[eax],edx
 0065FB6C    push        65FB81
 0065FB71    lea         eax,[ebp-4]
 0065FB74    call        @LStrClr
 0065FB79    ret
>0065FB7A    jmp         @HandleFinally
>0065FB7F    jmp         0065FB71
 0065FB81    pop         ecx
 0065FB82    pop         ebp
 0065FB83    ret
*}
end;

//0065FB84
{*procedure sub_0065FB84(?:?);
begin
 0065FB84    push        ebp
 0065FB85    mov         ebp,esp
 0065FB87    mov         ecx,6
 0065FB8C    push        0
 0065FB8E    push        0
 0065FB90    dec         ecx
>0065FB91    jne         0065FB8C
 0065FB93    mov         dword ptr [ebp-4],eax
 0065FB96    xor         eax,eax
 0065FB98    push        ebp
 0065FB99    push        65FDB7
 0065FB9E    push        dword ptr fs:[eax]
 0065FBA1    mov         dword ptr fs:[eax],esp
 0065FBA4    mov         eax,dword ptr [ebp-4]
 0065FBA7    cmp         eax,8002000A
>0065FBAC    jg          0065FBE7
>0065FBAE    je          0065FC62
 0065FBB4    cmp         eax,80020005
>0065FBB9    jg          0065FBD8
>0065FBBB    je          0065FC28
 0065FBBD    sub         eax,80004001
>0065FBC2    je          0065FCD4
 0065FBC8    sub         eax,0BFFE
>0065FBCD    je          0065FD40
>0065FBD3    jmp         0065FD63
 0065FBD8    sub         eax,80020008
>0065FBDD    je          0065FC32
 0065FBDF    dec         eax
>0065FBE0    je          0065FC58
>0065FBE2    jmp         0065FD63
 0065FBE7    cmp         eax,8007000E
>0065FBEC    jg          0065FC0D
>0065FBEE    je          0065FCFA
 0065FBF4    sub         eax,8002000B
>0065FBF9    je          0065FC88
 0065FBFF    sub         eax,2
>0065FC02    je          0065FCAE
>0065FC08    jmp         0065FD63
 0065FC0D    sub         eax,80070057
>0065FC12    je          0065FD1D
 0065FC18    sub         eax,7FF8FFA9
>0065FC1D    jne         0065FD63
>0065FC23    jmp         0065FD94
 0065FC28    call        VarCastError
>0065FC2D    jmp         0065FD94
 0065FC32    lea         edx,[ebp-8]
 0065FC35    mov         eax,[006EA290];^gvar_0065F0B4
 0065FC3A    call        LoadResString
 0065FC3F    mov         ecx,dword ptr [ebp-8]
 0065FC42    mov         dl,1
 0065FC44    mov         eax,[0065F61C];EVariantBadVarTypeError
 0065FC49    call        Exception.Create;EVariantBadVarTypeError.Create
 0065FC4E    call        @RaiseExcept
>0065FC53    jmp         0065FD94
 0065FC58    call        VarInvalidOp
>0065FC5D    jmp         0065FD94
 0065FC62    lea         edx,[ebp-0C]
 0065FC65    mov         eax,[006EA294];^gvar_0065F0A4
 0065FC6A    call        LoadResString
 0065FC6F    mov         ecx,dword ptr [ebp-0C]
 0065FC72    mov         dl,1
 0065FC74    mov         eax,[0065F554];EVariantOverflowError
 0065FC79    call        Exception.Create;EVariantOverflowError.Create
 0065FC7E    call        @RaiseExcept
>0065FC83    jmp         0065FD94
 0065FC88    lea         edx,[ebp-10]
 0065FC8B    mov         eax,[006EA1BC];^gvar_0065F064
 0065FC90    call        LoadResString
 0065FC95    mov         ecx,dword ptr [ebp-10]
 0065FC98    mov         dl,1
 0065FC9A    mov         eax,[0065F680];EVariantBadIndexError
 0065FC9F    call        Exception.Create;EVariantBadIndexError.Create
 0065FCA4    call        @RaiseExcept
>0065FCA9    jmp         0065FD94
 0065FCAE    lea         edx,[ebp-14]
 0065FCB1    mov         eax,[006EA298];^gvar_0065F06C
 0065FCB6    call        LoadResString
 0065FCBB    mov         ecx,dword ptr [ebp-14]
 0065FCBE    mov         dl,1
 0065FCC0    mov         eax,[0065F6E4];EVariantArrayLockedError
 0065FCC5    call        Exception.Create;EVariantArrayLockedError.Create
 0065FCCA    call        @RaiseExcept
>0065FCCF    jmp         0065FD94
 0065FCD4    lea         edx,[ebp-18]
 0065FCD7    mov         eax,[006EA29C];^gvar_0065F0BC
 0065FCDC    call        LoadResString
 0065FCE1    mov         ecx,dword ptr [ebp-18]
 0065FCE4    mov         dl,1
 0065FCE6    mov         eax,[0065F7B4];EVariantNotImplError
 0065FCEB    call        Exception.Create;EVariantNotImplError.Create
 0065FCF0    call        @RaiseExcept
>0065FCF5    jmp         0065FD94
 0065FCFA    lea         edx,[ebp-1C]
 0065FCFD    mov         eax,[006EA140];^gvar_0065EF6C
 0065FD02    call        LoadResString
 0065FD07    mov         ecx,dword ptr [ebp-1C]
 0065FD0A    mov         dl,1
 0065FD0C    mov         eax,[0065F818];EVariantOutOfMemoryError
 0065FD11    call        Exception.Create;EVariantOutOfMemoryError.Create
 0065FD16    call        @RaiseExcept
>0065FD1B    jmp         0065FD94
 0065FD1D    lea         edx,[ebp-20]
 0065FD20    mov         eax,[006EA2A0];^gvar_0065F0AC
 0065FD25    call        LoadResString
 0065FD2A    mov         ecx,dword ptr [ebp-20]
 0065FD2D    mov         dl,1
 0065FD2F    mov         eax,[0065F5B8];EVariantInvalidArgError
 0065FD34    call        Exception.Create;EVariantInvalidArgError.Create
 0065FD39    call        @RaiseExcept
>0065FD3E    jmp         0065FD94
 0065FD40    lea         edx,[ebp-24]
 0065FD43    mov         eax,[006EA2A4];^gvar_0065F0C4
 0065FD48    call        LoadResString
 0065FD4D    mov         ecx,dword ptr [ebp-24]
 0065FD50    mov         dl,1
 0065FD52    mov         eax,[0065F880];EVariantUnexpectedError
 0065FD57    call        Exception.Create;EVariantUnexpectedError.Create
 0065FD5C    call        @RaiseExcept
>0065FD61    jmp         0065FD94
 0065FD63    mov         eax,dword ptr [ebp-4]
 0065FD66    mov         dword ptr [ebp-2C],eax
 0065FD69    mov         byte ptr [ebp-28],0
 0065FD6D    lea         eax,[ebp-2C]
 0065FD70    push        eax
 0065FD71    push        0
 0065FD73    lea         edx,[ebp-30]
 0065FD76    mov         eax,[006EA2A8];^gvar_0065F084
 0065FD7B    call        LoadResString
 0065FD80    mov         ecx,dword ptr [ebp-30]
 0065FD83    mov         dl,1
 0065FD85    mov         eax,[00656F94];EVariantError
 0065FD8A    call        Exception.CreateFmt;EVariantError.Create
 0065FD8F    call        @RaiseExcept
 0065FD94    xor         eax,eax
 0065FD96    pop         edx
 0065FD97    pop         ecx
 0065FD98    pop         ecx
 0065FD99    mov         dword ptr fs:[eax],edx
 0065FD9C    push        65FDBE
 0065FDA1    lea         eax,[ebp-30]
 0065FDA4    call        @LStrClr
 0065FDA9    lea         eax,[ebp-24]
 0065FDAC    mov         edx,8
 0065FDB1    call        @LStrArrayClr
 0065FDB6    ret
>0065FDB7    jmp         @HandleFinally
>0065FDBC    jmp         0065FDA1
 0065FDBE    mov         esp,ebp
 0065FDC0    pop         ebp
 0065FDC1    ret
end;*}

//0065FDC4
{*function sub_0065FDC4(?:?; ?:?; ?:?):?;
begin
 0065FDC4    push        ebp
 0065FDC5    mov         ebp,esp
 0065FDC7    add         esp,0FFFFFFF8
 0065FDCA    mov         word ptr [ebp-8],cx
 0065FDCE    mov         word ptr [ebp-6],dx
 0065FDD2    mov         dword ptr [ebp-4],eax
 0065FDD5    mov         eax,dword ptr [ebp-4]
 0065FDD8    sub         eax,80020005
>0065FDDD    je          0065FDED
 0065FDDF    sub         eax,5
>0065FDE2    je          0065FDFC
 0065FDE4    sub         eax,7FFDFFF6
>0065FDE9    jne         0065FE0B
>0065FDEB    jmp         0065FE13
 0065FDED    mov         dx,word ptr [ebp-8]
 0065FDF1    mov         ax,word ptr [ebp-6]
 0065FDF5    call        0065F99C
>0065FDFA    jmp         0065FE13
 0065FDFC    mov         dx,word ptr [ebp-8]
 0065FE00    mov         ax,word ptr [ebp-6]
 0065FE04    call        0065FA90
>0065FE09    jmp         0065FE13
 0065FE0B    mov         eax,dword ptr [ebp-4]
 0065FE0E    call        0065FB84
 0065FE13    pop         ecx
 0065FE14    pop         ecx
 0065FE15    pop         ebp
 0065FE16    ret
end;*}

//0065FE18
{*procedure sub_0065FE18(?:?; ?:?);
begin
 0065FE18    push        ebp
 0065FE19    mov         ebp,esp
 0065FE1B    add         esp,0FFFFFFF8
 0065FE1E    mov         word ptr [ebp-4],dx
 0065FE22    mov         word ptr [ebp-2],ax
 0065FE26    call        ExceptObject
 0065FE2B    mov         edx,dword ptr ds:[656AA8];ERangeError
 0065FE31    call        @IsClass
 0065FE36    test        al,al
>0065FE38    je          0065FE4E
 0065FE3A    mov         cx,word ptr [ebp-4]
 0065FE3E    mov         dx,word ptr [ebp-2]
 0065FE42    mov         eax,8002000A
 0065FE47    call        0065FDC4
>0065FE4C    jmp         0065FEAE
 0065FE4E    call        ExceptObject
 0065FE53    mov         edx,dword ptr ds:[656C64];EOverflow
 0065FE59    call        @IsClass
 0065FE5E    test        al,al
>0065FE60    je          0065FE76
 0065FE62    mov         cx,word ptr [ebp-4]
 0065FE66    mov         dx,word ptr [ebp-2]
 0065FE6A    mov         eax,8002000A
 0065FE6F    call        0065FDC4
>0065FE74    jmp         0065FEAE
 0065FE76    call        ExceptObject
 0065FE7B    mov         edx,dword ptr ds:[656DCC];EConvertError
 0065FE81    call        @IsClass
 0065FE86    test        al,al
>0065FE88    je          0065FE9E
 0065FE8A    mov         cx,word ptr [ebp-4]
 0065FE8E    mov         dx,word ptr [ebp-2]
 0065FE92    mov         eax,80020005
 0065FE97    call        0065FDC4
>0065FE9C    jmp         0065FEAE
 0065FE9E    call        AcquireExceptionObject
 0065FEA3    mov         dword ptr [ebp-8],eax
 0065FEA6    mov         eax,dword ptr [ebp-8]
 0065FEA9    call        @RaiseExcept
 0065FEAE    pop         ecx
 0065FEAF    pop         ecx
 0065FEB0    pop         ebp
 0065FEB1    ret
end;*}

//0065FEB4
procedure _DispInvokeError;
begin
{*
 0065FEB4    push        ebp
 0065FEB5    mov         ebp,esp
 0065FEB7    push        0
 0065FEB9    xor         eax,eax
 0065FEBB    push        ebp
 0065FEBC    push        65FEFE
 0065FEC1    push        dword ptr fs:[eax]
 0065FEC4    mov         dword ptr fs:[eax],esp
 0065FEC7    lea         edx,[ebp-4]
 0065FECA    mov         eax,[006EA1A8]
 0065FECF    call        LoadResString
 0065FED4    mov         ecx,dword ptr [ebp-4]
 0065FED7    mov         dl,1
 0065FED9    mov         eax,[0065F8E4];EVariantDispatchError
 0065FEDE    call        Exception.Create
 0065FEE3    call        @RaiseExcept
 0065FEE8    xor         eax,eax
 0065FEEA    pop         edx
 0065FEEB    pop         ecx
 0065FEEC    pop         ecx
 0065FEED    mov         dword ptr fs:[eax],edx
 0065FEF0    push        65FF05
 0065FEF5    lea         eax,[ebp-4]
 0065FEF8    call        @LStrClr
 0065FEFD    ret
>0065FEFE    jmp         @HandleFinally
>0065FF03    jmp         0065FEF5
 0065FF05    pop         ecx
 0065FF06    pop         ebp
 0065FF07    ret
*}
end;

//0065FF08
{*procedure sub_0065FF08(?:?);
begin
 0065FF08    push        ebp
 0065FF09    mov         ebp,esp
 0065FF0B    push        ecx
 0065FF0C    mov         dword ptr [ebp-4],eax
 0065FF0F    mov         eax,dword ptr [ebp-4]
 0065FF12    call        00660244
 0065FF17    mov         eax,dword ptr [ebp-4]
 0065FF1A    mov         word ptr [eax],1
 0065FF1F    pop         ecx
 0065FF20    pop         ebp
 0065FF21    ret
end;*}

//0065FF24
{*function sub_0065FF24(?:?; ?:?):?;
begin
 0065FF24    push        ebp
 0065FF25    mov         ebp,esp
 0065FF27    add         esp,0FFFFFFF8
 0065FF2A    mov         dword ptr [ebp-4],eax
 0065FF2D    mov         eax,dword ptr [ebp+8]
 0065FF30    mov         edx,dword ptr [ebp-4]
 0065FF33    mov         eax,dword ptr [eax+edx*8-2FC]
 0065FF3A    mov         edx,dword ptr [ebp+8]
 0065FF3D    mov         ecx,dword ptr [ebp-4]
 0065FF40    add         eax,dword ptr [edx+ecx*8-300]
 0065FF47    mov         edx,dword ptr [ebp+8]
 0065FF4A    mov         ecx,dword ptr [ebp-4]
 0065FF4D    cmp         eax,dword ptr [edx+ecx*4-100]
 0065FF54    setg        byte ptr [ebp-5]
 0065FF58    dec         dword ptr [ebp-4]
 0065FF5B    cmp         byte ptr [ebp-5],0
>0065FF5F    je          0065FF67
 0065FF61    cmp         dword ptr [ebp-4],0
>0065FF65    jge         0065FF2D
 0065FF67    mov         al,byte ptr [ebp-5]
 0065FF6A    pop         ecx
 0065FF6B    pop         ecx
 0065FF6C    pop         ebp
 0065FF6D    ret
end;*}

//0065FF70
{*function sub_0065FF70(?:?; ?:?):?;
begin
 0065FF70    push        ebp
 0065FF71    mov         ebp,esp
 0065FF73    add         esp,0FFFFFFF8
 0065FF76    mov         dword ptr [ebp-4],eax
 0065FF79    mov         byte ptr [ebp-5],1
 0065FF7D    mov         eax,dword ptr [ebp+8]
 0065FF80    mov         edx,dword ptr [ebp-4]
 0065FF83    inc         dword ptr [eax+edx*4-100]
 0065FF8A    mov         eax,dword ptr [ebp+8]
 0065FF8D    mov         edx,dword ptr [ebp-4]
 0065FF90    mov         eax,dword ptr [eax+edx*8-2FC]
 0065FF97    mov         edx,dword ptr [ebp+8]
 0065FF9A    mov         ecx,dword ptr [ebp-4]
 0065FF9D    add         eax,dword ptr [edx+ecx*8-300]
 0065FFA4    mov         edx,dword ptr [ebp+8]
 0065FFA7    mov         ecx,dword ptr [ebp-4]
 0065FFAA    cmp         eax,dword ptr [edx+ecx*4-100]
>0065FFB1    jg          0065FFEA
 0065FFB3    cmp         dword ptr [ebp-4],0
>0065FFB7    jne         0065FFBF
 0065FFB9    mov         byte ptr [ebp-5],0
>0065FFBD    jmp         0065FFEA
 0065FFBF    mov         eax,dword ptr [ebp+8]
 0065FFC2    mov         edx,dword ptr [ebp-4]
 0065FFC5    mov         eax,dword ptr [eax+edx*8-2FC]
 0065FFCC    mov         edx,dword ptr [ebp+8]
 0065FFCF    mov         ecx,dword ptr [ebp-4]
 0065FFD2    mov         dword ptr [edx+ecx*4-100],eax
 0065FFD9    mov         eax,dword ptr [ebp+8]
 0065FFDC    push        eax
 0065FFDD    mov         eax,dword ptr [ebp-4]
 0065FFE0    dec         eax
 0065FFE1    call        0065FF70
 0065FFE6    pop         ecx
 0065FFE7    mov         byte ptr [ebp-5],al
 0065FFEA    mov         al,byte ptr [ebp-5]
 0065FFED    pop         ecx
 0065FFEE    pop         ecx
 0065FFEF    pop         ebp
 0065FFF0    ret
end;*}

//0065FFF4
{*procedure sub_0065FFF4(?:?);
begin
 0065FFF4    push        ebp
 0065FFF5    mov         ebp,esp
 0065FFF7    add         esp,0FFFFFCE0
 0065FFFD    mov         dword ptr [ebp-304],eax
 00660003    mov         eax,dword ptr [ebp-304]
 00660009    test        byte ptr [eax+1],20
>0066000D    jne         00660019
 0066000F    mov         eax,80070057
 00660014    call        0065FB84
 00660019    mov         eax,dword ptr [ebp-304]
 0066001F    mov         ax,word ptr [eax]
 00660022    and         ax,0FFF
 00660026    cmp         ax,0C
>0066002A    jne         0066019B
 00660030    mov         eax,dword ptr [ebp-304]
 00660036    test        byte ptr [eax+1],40
>0066003A    je          0066004F
 0066003C    mov         eax,dword ptr [ebp-304]
 00660042    mov         eax,dword ptr [eax+8]
 00660045    mov         eax,dword ptr [eax]
 00660047    mov         dword ptr [ebp-308],eax
>0066004D    jmp         0066005E
 0066004F    mov         eax,dword ptr [ebp-304]
 00660055    mov         eax,dword ptr [eax+8]
 00660058    mov         dword ptr [ebp-308],eax
 0066005E    mov         eax,dword ptr [ebp-308]
 00660064    movzx       eax,word ptr [eax]
 00660067    mov         dword ptr [ebp-314],eax
 0066006D    mov         eax,dword ptr [ebp-314]
 00660073    dec         eax
 00660074    test        eax,eax
>00660076    jl          00660109
 0066007C    inc         eax
 0066007D    mov         dword ptr [ebp-31C],eax
 00660083    mov         dword ptr [ebp-30C],0
 0066008D    mov         eax,dword ptr [ebp-30C]
 00660093    lea         eax,[ebp+eax*8-300]
 0066009A    mov         dword ptr [ebp-320],eax
 006600A0    mov         eax,dword ptr [ebp-320]
 006600A6    add         eax,4
 006600A9    push        eax
 006600AA    mov         eax,dword ptr [ebp-30C]
 006600B0    inc         eax
 006600B1    push        eax
 006600B2    mov         eax,dword ptr [ebp-308]
 006600B8    push        eax
 006600B9    call        OLEAUT32.20
 006600BE    call        0065FB84
 006600C3    lea         eax,[ebp-310]
 006600C9    push        eax
 006600CA    mov         eax,dword ptr [ebp-30C]
 006600D0    inc         eax
 006600D1    push        eax
 006600D2    mov         eax,dword ptr [ebp-308]
 006600D8    push        eax
 006600D9    call        OLEAUT32.19
 006600DE    call        0065FB84
 006600E3    mov         eax,dword ptr [ebp-320]
 006600E9    mov         edx,dword ptr [ebp-310]
 006600EF    sub         edx,dword ptr [eax+4]
 006600F2    inc         edx
 006600F3    mov         eax,dword ptr [ebp-320]
 006600F9    mov         dword ptr [eax],edx
 006600FB    inc         dword ptr [ebp-30C]
 00660101    dec         dword ptr [ebp-31C]
>00660107    jne         0066008D
 00660109    mov         eax,dword ptr [ebp-314]
 0066010F    dec         eax
 00660110    test        eax,eax
>00660112    jl          0066014D
 00660114    inc         eax
 00660115    mov         dword ptr [ebp-31C],eax
 0066011B    mov         dword ptr [ebp-30C],0
 00660125    mov         eax,dword ptr [ebp-30C]
 0066012B    mov         eax,dword ptr [ebp+eax*8-2FC]
 00660132    mov         edx,dword ptr [ebp-30C]
 00660138    mov         dword ptr [ebp+edx*4-100],eax
 0066013F    inc         dword ptr [ebp-30C]
 00660145    dec         dword ptr [ebp-31C]
>0066014B    jne         00660125
 0066014D    push        ebp
 0066014E    mov         eax,dword ptr [ebp-314]
 00660154    dec         eax
 00660155    call        0065FF24
 0066015A    pop         ecx
 0066015B    test        al,al
>0066015D    je          00660189
 0066015F    lea         eax,[ebp-318]
 00660165    push        eax
 00660166    lea         eax,[ebp-100]
 0066016C    push        eax
 0066016D    mov         eax,dword ptr [ebp-308]
 00660173    push        eax
 00660174    call        OLEAUT32.148
 00660179    call        0065FB84
 0066017E    mov         eax,dword ptr [ebp-318]
 00660184    call        00660244
 00660189    push        ebp
 0066018A    mov         eax,dword ptr [ebp-314]
 00660190    dec         eax
 00660191    call        0065FF70
 00660196    pop         ecx
 00660197    test        al,al
>00660199    jne         0066014D
 0066019B    mov         eax,dword ptr [ebp-304]
 006601A1    push        eax
 006601A2    call        OLEAUT32.9
 006601A7    call        0065FB84
 006601AC    mov         esp,ebp
 006601AE    pop         ebp
 006601AF    ret
end;*}

//006601B0
{*procedure sub_006601B0(?:?);
begin
 006601B0    push        ebp
 006601B1    mov         ebp,esp
 006601B3    add         esp,0FFFFFFF8
 006601B6    mov         dword ptr [ebp-4],eax
 006601B9    mov         eax,dword ptr [ebp-4]
 006601BC    cmp         word ptr [eax],14
>006601C0    jae         006601D2
 006601C2    mov         eax,dword ptr [ebp-4]
 006601C5    push        eax
 006601C6    call        OLEAUT32.9
 006601CB    call        0065FB84
>006601D0    jmp         0066023D
 006601D2    mov         eax,dword ptr [ebp-4]
 006601D5    cmp         word ptr [eax],100
>006601DA    jne         006601F1
 006601DC    mov         eax,dword ptr [ebp-4]
 006601DF    mov         word ptr [eax],0
 006601E4    mov         eax,dword ptr [ebp-4]
 006601E7    add         eax,8
 006601EA    call        @LStrClr
>006601EF    jmp         0066023D
 006601F1    mov         eax,dword ptr [ebp-4]
 006601F4    cmp         word ptr [eax],101
>006601F9    jne         00660206
 006601FB    mov         eax,dword ptr [ebp-4]
 006601FE    call        dword ptr ds:[6ED150]
>00660204    jmp         0066023D
 00660206    mov         eax,dword ptr [ebp-4]
 00660209    test        byte ptr [eax+1],20
>0066020D    je          00660219
 0066020F    mov         eax,dword ptr [ebp-4]
 00660212    call        0065FFF4
>00660217    jmp         0066023D
 00660219    lea         edx,[ebp-8]
 0066021C    mov         eax,dword ptr [ebp-4]
 0066021F    mov         ax,word ptr [eax]
 00660222    call        006689A0
 00660227    test        al,al
>00660229    je          00660238
 0066022B    mov         edx,dword ptr [ebp-4]
 0066022E    mov         eax,dword ptr [ebp-8]
 00660231    mov         ecx,dword ptr [eax]
 00660233    call        dword ptr [ecx+24]
>00660236    jmp         0066023D
 00660238    call        VarInvalidOp
 0066023D    pop         ecx
 0066023E    pop         ecx
 0066023F    pop         ebp
 00660240    ret
end;*}

//00660244
{*procedure sub_00660244(?:?);
begin
 00660244    push        ebp
 00660245    mov         ebp,esp
 00660247    push        ecx
 00660248    mov         dword ptr [ebp-4],eax
 0066024B    mov         eax,dword ptr [ebp-4]
 0066024E    cmp         word ptr [eax],14
>00660252    ja          00660263
 00660254    mov         eax,dword ptr [ebp-4]
 00660257    movzx       eax,word ptr [eax]
 0066025A    cmp         byte ptr [eax+6E4D00],0
>00660261    jne         0066026C
 00660263    mov         eax,dword ptr [ebp-4]
 00660266    test        byte ptr [eax+1],40
>0066026A    je          00660277
 0066026C    mov         eax,dword ptr [ebp-4]
 0066026F    mov         word ptr [eax],0
 00660274    pop         ecx
 00660275    pop         ebp
 00660276    ret
 00660277    mov         eax,dword ptr [ebp-4]
 0066027A    call        006601B0
 0066027F    pop         ecx
 00660280    pop         ebp
 00660281    ret
end;*}

//00660284
{*procedure sub_00660284(?:?; ?:?; ?:?; ?:?);
begin
 00660284    push        ebp
 00660285    mov         ebp,esp
 00660287    add         esp,0FFFFFFE8
 0066028A    push        ebx
 0066028B    mov         eax,dword ptr [ebp+0C]
 0066028E    cmp         word ptr [eax],400C
>00660293    jne         006602B5
 00660295    mov         eax,dword ptr [ebp+14]
 00660298    push        eax
 00660299    mov         eax,dword ptr [ebp+10]
 0066029C    push        eax
 0066029D    mov         eax,dword ptr [ebp+0C]
 006602A0    mov         eax,dword ptr [eax+8]
 006602A3    push        eax
 006602A4    mov         eax,dword ptr [ebp+8]
 006602A7    push        eax
 006602A8    call        00660284
 006602AD    add         esp,10
>006602B0    jmp         00660389
 006602B5    cmp         dword ptr [ebp+8],0
>006602B9    jne         006602C2
 006602BB    xor         eax,eax
 006602BD    mov         dword ptr [ebp-8],eax
>006602C0    jmp         006602D1
 006602C2    lea         eax,[ebp-18]
 006602C5    push        eax
 006602C6    call        OLEAUT32.8
 006602CB    lea         eax,[ebp-18]
 006602CE    mov         dword ptr [ebp-8],eax
 006602D1    xor         eax,eax
 006602D3    push        ebp
 006602D4    push        660382
 006602D9    push        dword ptr fs:[eax]
 006602DC    mov         dword ptr fs:[eax],esp
 006602DF    mov         eax,dword ptr [ebp+0C]
 006602E2    movzx       eax,word ptr [eax]
 006602E5    cmp         eax,101
>006602EA    jg          006602FA
>006602EC    je          00660306
 006602EE    sub         eax,9
>006602F1    je          00660306
 006602F3    sub         eax,4
>006602F6    je          00660306
>006602F8    jmp         0066032A
 006602FA    sub         eax,4009
>006602FF    je          00660306
 00660301    sub         eax,4
>00660304    jne         0066032A
 00660306    cmp         dword ptr ds:[6ED14C],0;gvar_006ED14C
>0066030D    je          00660359
 0066030F    lea         eax,[ebp+14]
 00660312    push        eax
 00660313    mov         eax,dword ptr [ebp+10]
 00660316    push        eax
 00660317    mov         eax,dword ptr [ebp+0C]
 0066031A    push        eax
 0066031B    mov         eax,dword ptr [ebp-8]
 0066031E    push        eax
 0066031F    call        dword ptr ds:[6ED14C]
 00660325    add         esp,10
>00660328    jmp         00660359
 0066032A    lea         edx,[ebp-4]
 0066032D    mov         eax,dword ptr [ebp+0C]
 00660330    mov         ax,word ptr [eax]
 00660333    call        006689A0
 00660338    test        al,al
>0066033A    je          00660354
 0066033C    mov         eax,dword ptr [ebp+10]
 0066033F    push        eax
 00660340    lea         eax,[ebp+14]
 00660343    push        eax
 00660344    mov         ecx,dword ptr [ebp+0C]
 00660347    mov         edx,dword ptr [ebp-8]
 0066034A    mov         eax,dword ptr [ebp-4]
 0066034D    mov         ebx,dword ptr [eax]
 0066034F    call        dword ptr [ebx+10]
>00660352    jmp         00660359
 00660354    call        VarInvalidOp
 00660359    xor         eax,eax
 0066035B    pop         edx
 0066035C    pop         ecx
 0066035D    pop         ecx
 0066035E    mov         dword ptr fs:[eax],edx
 00660361    push        660389
 00660366    cmp         dword ptr [ebp-8],0
>0066036A    je          00660381
 0066036C    mov         eax,dword ptr [ebp-8]
 0066036F    mov         edx,eax
 00660371    mov         eax,dword ptr [ebp+8]
 00660374    call        006607C0
 00660379    lea         eax,[ebp-18]
 0066037C    call        00660244
 00660381    ret
>00660382    jmp         @HandleFinally
>00660387    jmp         00660366
 00660389    pop         ebx
 0066038A    mov         esp,ebp
 0066038C    pop         ebp
 0066038D    ret
end;*}

//00660390
{*function sub_00660390(?:?; ?:?):?;
begin
 00660390    push        ebp
 00660391    mov         ebp,esp
 00660393    add         esp,0FFFFFFF8
 00660396    mov         dword ptr [ebp-4],eax
 00660399    mov         eax,dword ptr [ebp+8]
 0066039C    mov         edx,dword ptr [ebp-4]
 0066039F    mov         eax,dword ptr [eax+edx*8-2FC]
 006603A6    mov         edx,dword ptr [ebp+8]
 006603A9    mov         ecx,dword ptr [ebp-4]
 006603AC    add         eax,dword ptr [edx+ecx*8-300]
 006603B3    mov         edx,dword ptr [ebp+8]
 006603B6    mov         ecx,dword ptr [ebp-4]
 006603B9    cmp         eax,dword ptr [edx+ecx*4-100]
 006603C0    setg        byte ptr [ebp-5]
 006603C4    dec         dword ptr [ebp-4]
 006603C7    cmp         byte ptr [ebp-5],0
>006603CB    je          006603D3
 006603CD    cmp         dword ptr [ebp-4],0
>006603D1    jge         00660399
 006603D3    mov         al,byte ptr [ebp-5]
 006603D6    pop         ecx
 006603D7    pop         ecx
 006603D8    pop         ebp
 006603D9    ret
end;*}

//006603DC
{*function sub_006603DC(?:?; ?:?):?;
begin
 006603DC    push        ebp
 006603DD    mov         ebp,esp
 006603DF    add         esp,0FFFFFFF8
 006603E2    mov         dword ptr [ebp-4],eax
 006603E5    mov         byte ptr [ebp-5],1
 006603E9    mov         eax,dword ptr [ebp+8]
 006603EC    mov         edx,dword ptr [ebp-4]
 006603EF    inc         dword ptr [eax+edx*4-100]
 006603F6    mov         eax,dword ptr [ebp+8]
 006603F9    mov         edx,dword ptr [ebp-4]
 006603FC    mov         eax,dword ptr [eax+edx*8-2FC]
 00660403    mov         edx,dword ptr [ebp+8]
 00660406    mov         ecx,dword ptr [ebp-4]
 00660409    add         eax,dword ptr [edx+ecx*8-300]
 00660410    mov         edx,dword ptr [ebp+8]
 00660413    mov         ecx,dword ptr [ebp-4]
 00660416    cmp         eax,dword ptr [edx+ecx*4-100]
>0066041D    jg          00660456
 0066041F    cmp         dword ptr [ebp-4],0
>00660423    jne         0066042B
 00660425    mov         byte ptr [ebp-5],0
>00660429    jmp         00660456
 0066042B    mov         eax,dword ptr [ebp+8]
 0066042E    mov         edx,dword ptr [ebp-4]
 00660431    mov         eax,dword ptr [eax+edx*8-2FC]
 00660438    mov         edx,dword ptr [ebp+8]
 0066043B    mov         ecx,dword ptr [ebp-4]
 0066043E    mov         dword ptr [edx+ecx*4-100],eax
 00660445    mov         eax,dword ptr [ebp+8]
 00660448    push        eax
 00660449    mov         eax,dword ptr [ebp-4]
 0066044C    dec         eax
 0066044D    call        006603DC
 00660452    pop         ecx
 00660453    mov         byte ptr [ebp-5],al
 00660456    mov         al,byte ptr [ebp-5]
 00660459    pop         ecx
 0066045A    pop         ecx
 0066045B    pop         ebp
 0066045C    ret
end;*}

//00660460
{*procedure sub_00660460(?:?; ?:?; ?:?);
begin
 00660460    push        ebp
 00660461    mov         ebp,esp
 00660463    add         esp,0FFFFFCD0
 00660469    mov         dword ptr [ebp-30C],ecx
 0066046F    mov         dword ptr [ebp-308],edx
 00660475    mov         dword ptr [ebp-304],eax
 0066047B    mov         eax,dword ptr [ebp-308]
 00660481    test        byte ptr [eax+1],20
>00660485    jne         00660491
 00660487    mov         eax,80070057
 0066048C    call        0065FB84
 00660491    mov         eax,dword ptr [ebp-308]
 00660497    mov         ax,word ptr [eax]
 0066049A    and         ax,0FFF
 0066049E    cmp         ax,0C
>006604A2    jne         0066068B
 006604A8    mov         eax,dword ptr [ebp-308]
 006604AE    test        byte ptr [eax+1],40
>006604B2    je          006604C7
 006604B4    mov         eax,dword ptr [ebp-308]
 006604BA    mov         eax,dword ptr [eax+8]
 006604BD    mov         eax,dword ptr [eax]
 006604BF    mov         dword ptr [ebp-320],eax
>006604C5    jmp         006604D6
 006604C7    mov         eax,dword ptr [ebp-308]
 006604CD    mov         eax,dword ptr [eax+8]
 006604D0    mov         dword ptr [ebp-320],eax
 006604D6    mov         eax,dword ptr [ebp-320]
 006604DC    movzx       eax,word ptr [eax]
 006604DF    mov         dword ptr [ebp-318],eax
 006604E5    mov         eax,dword ptr [ebp-318]
 006604EB    dec         eax
 006604EC    test        eax,eax
>006604EE    jl          00660581
 006604F4    inc         eax
 006604F5    mov         dword ptr [ebp-32C],eax
 006604FB    mov         dword ptr [ebp-310],0
 00660505    mov         eax,dword ptr [ebp-310]
 0066050B    lea         eax,[ebp+eax*8-300]
 00660512    mov         dword ptr [ebp-330],eax
 00660518    mov         eax,dword ptr [ebp-330]
 0066051E    add         eax,4
 00660521    push        eax
 00660522    mov         eax,dword ptr [ebp-310]
 00660528    inc         eax
 00660529    push        eax
 0066052A    mov         eax,dword ptr [ebp-320]
 00660530    push        eax
 00660531    call        OLEAUT32.20
 00660536    call        0065FB84
 0066053B    lea         eax,[ebp-314]
 00660541    push        eax
 00660542    mov         eax,dword ptr [ebp-310]
 00660548    inc         eax
 00660549    push        eax
 0066054A    mov         eax,dword ptr [ebp-320]
 00660550    push        eax
 00660551    call        OLEAUT32.19
 00660556    call        0065FB84
 0066055B    mov         eax,dword ptr [ebp-330]
 00660561    mov         edx,dword ptr [ebp-314]
 00660567    sub         edx,dword ptr [eax+4]
 0066056A    inc         edx
 0066056B    mov         eax,dword ptr [ebp-330]
 00660571    mov         dword ptr [eax],edx
 00660573    inc         dword ptr [ebp-310]
 00660579    dec         dword ptr [ebp-32C]
>0066057F    jne         00660505
 00660581    lea         eax,[ebp-300]
 00660587    push        eax
 00660588    mov         eax,dword ptr [ebp-318]
 0066058E    push        eax
 0066058F    push        0C
 00660591    call        OLEAUT32.15
 00660596    mov         dword ptr [ebp-31C],eax
 0066059C    cmp         dword ptr [ebp-31C],0
>006605A3    jne         006605AA
 006605A5    call        VarArrayCreateError
 006605AA    mov         eax,dword ptr [ebp-304]
 006605B0    call        00660244
 006605B5    mov         eax,dword ptr [ebp-304]
 006605BB    mov         word ptr [eax],200C
 006605C0    mov         eax,dword ptr [ebp-304]
 006605C6    mov         edx,dword ptr [ebp-31C]
 006605CC    mov         dword ptr [eax+8],edx
 006605CF    mov         eax,dword ptr [ebp-318]
 006605D5    dec         eax
 006605D6    test        eax,eax
>006605D8    jl          00660613
 006605DA    inc         eax
 006605DB    mov         dword ptr [ebp-32C],eax
 006605E1    mov         dword ptr [ebp-310],0
 006605EB    mov         eax,dword ptr [ebp-310]
 006605F1    mov         eax,dword ptr [ebp+eax*8-2FC]
 006605F8    mov         edx,dword ptr [ebp-310]
 006605FE    mov         dword ptr [ebp+edx*4-100],eax
 00660605    inc         dword ptr [ebp-310]
 0066060B    dec         dword ptr [ebp-32C]
>00660611    jne         006605EB
 00660613    push        ebp
 00660614    mov         eax,dword ptr [ebp-318]
 0066061A    dec         eax
 0066061B    call        00660390
 00660620    pop         ecx
 00660621    test        al,al
>00660623    je          00660677
 00660625    lea         eax,[ebp-324]
 0066062B    push        eax
 0066062C    lea         eax,[ebp-100]
 00660632    push        eax
 00660633    mov         eax,dword ptr [ebp-320]
 00660639    push        eax
 0066063A    call        OLEAUT32.148
 0066063F    call        0065FB84
 00660644    lea         eax,[ebp-328]
 0066064A    push        eax
 0066064B    lea         eax,[ebp-100]
 00660651    push        eax
 00660652    mov         eax,dword ptr [ebp-31C]
 00660658    push        eax
 00660659    call        OLEAUT32.148
 0066065E    call        0065FB84
 00660663    mov         eax,dword ptr [ebp-324]
 00660669    mov         edx,eax
 0066066B    mov         eax,dword ptr [ebp-328]
 00660671    call        dword ptr [ebp-30C]
 00660677    push        ebp
 00660678    mov         eax,dword ptr [ebp-318]
 0066067E    dec         eax
 0066067F    call        006603DC
 00660684    pop         ecx
 00660685    test        al,al
>00660687    jne         00660613
>00660689    jmp         006606A3
 0066068B    mov         eax,dword ptr [ebp-308]
 00660691    push        eax
 00660692    mov         eax,dword ptr [ebp-304]
 00660698    push        eax
 00660699    call        OLEAUT32.10
 0066069E    call        0065FB84
 006606A3    mov         esp,ebp
 006606A5    pop         ebp
 006606A6    ret
end;*}

//006606C4
{*procedure sub_006606C4(?:?; ?:?);
begin
 006606C4    push        ebp
 006606C5    mov         ebp,esp
 006606C7    add         esp,0FFFFFFF4
 006606CA    push        ebx
 006606CB    mov         dword ptr [ebp-8],edx
 006606CE    mov         dword ptr [ebp-4],eax
 006606D1    mov         eax,dword ptr [ebp-4]
 006606D4    cmp         word ptr [eax],14
>006606D8    ja          006606E9
 006606DA    mov         eax,dword ptr [ebp-4]
 006606DD    movzx       eax,word ptr [eax]
 006606E0    cmp         byte ptr [eax+6E4D00],0
>006606E7    jne         006606FA
 006606E9    mov         eax,dword ptr [ebp-4]
 006606EC    test        byte ptr [eax+1],40
>006606F0    jne         006606FA
 006606F2    mov         eax,dword ptr [ebp-4]
 006606F5    call        006601B0
 006606FA    mov         eax,dword ptr [ebp-8]
 006606FD    cmp         word ptr [eax],14
>00660701    jae         0066071A
 00660703    mov         eax,dword ptr [ebp-8]
 00660706    push        eax
 00660707    mov         eax,dword ptr [ebp-4]
 0066070A    push        eax
 0066070B    call        OLEAUT32.10
 00660710    call        0065FB84
>00660715    jmp         006607B8
 0066071A    mov         eax,dword ptr [ebp-8]
 0066071D    cmp         word ptr [eax],100
>00660722    jne         00660747
 00660724    mov         eax,dword ptr [ebp-4]
 00660727    mov         word ptr [eax],100
 0066072C    mov         eax,dword ptr [ebp-4]
 0066072F    xor         edx,edx
 00660731    mov         dword ptr [eax+8],edx
 00660734    mov         eax,dword ptr [ebp-4]
 00660737    add         eax,8
 0066073A    mov         edx,dword ptr [ebp-8]
 0066073D    mov         edx,dword ptr [edx+8]
 00660740    call        @LStrAsg
>00660745    jmp         006607B8
 00660747    mov         eax,dword ptr [ebp-8]
 0066074A    cmp         word ptr [eax],101
>0066074F    jne         00660774
 00660751    mov         eax,dword ptr [ebp-8]
 00660754    mov         ax,word ptr [eax]
 00660757    mov         edx,dword ptr [ebp-4]
 0066075A    mov         word ptr [edx],ax
 0066075D    mov         eax,dword ptr [ebp-8]
 00660760    mov         eax,dword ptr [eax+8]
 00660763    mov         edx,dword ptr [ebp-4]
 00660766    mov         dword ptr [edx+8],eax
 00660769    mov         eax,dword ptr [ebp-4]
 0066076C    call        dword ptr ds:[6ED158]
>00660772    jmp         006607B8
 00660774    mov         eax,dword ptr [ebp-8]
 00660777    test        byte ptr [eax+1],20
>0066077B    je          0066078F
 0066077D    mov         ecx,6606A8
 00660782    mov         edx,dword ptr [ebp-8]
 00660785    mov         eax,dword ptr [ebp-4]
 00660788    call        00660460
>0066078D    jmp         006607B8
 0066078F    lea         edx,[ebp-0C]
 00660792    mov         eax,dword ptr [ebp-8]
 00660795    mov         ax,word ptr [eax]
 00660798    call        006689A0
 0066079D    test        al,al
>0066079F    je          006607B3
 006607A1    push        0
 006607A3    mov         ecx,dword ptr [ebp-8]
 006607A6    mov         edx,dword ptr [ebp-4]
 006607A9    mov         eax,dword ptr [ebp-0C]
 006607AC    mov         ebx,dword ptr [eax]
 006607AE    call        dword ptr [ebx+28]
>006607B1    jmp         006607B8
 006607B3    call        VarInvalidOp
 006607B8    pop         ebx
 006607B9    mov         esp,ebp
 006607BB    pop         ebp
 006607BC    ret
end;*}

//006607C0
{*procedure sub_006607C0(?:?; ?:?);
begin
 006607C0    push        ebp
 006607C1    mov         ebp,esp
 006607C3    add         esp,0FFFFFFF8
 006607C6    mov         dword ptr [ebp-8],edx
 006607C9    mov         dword ptr [ebp-4],eax
 006607CC    mov         eax,dword ptr [ebp-4]
 006607CF    mov         edx,dword ptr [ebp-8]
 006607D2    cmp         eax,edx
>006607D4    je          00660851
 006607D6    mov         eax,dword ptr [ebp-8]
 006607D9    cmp         word ptr [eax],14
>006607DD    ja          006607EE
 006607DF    mov         eax,dword ptr [ebp-8]
 006607E2    movzx       eax,word ptr [eax]
 006607E5    cmp         byte ptr [eax+6E4D00],0
>006607EC    jne         006607F7
 006607EE    mov         eax,dword ptr [ebp-8]
 006607F1    test        byte ptr [eax+1],40
>006607F5    je          00660846
 006607F7    mov         eax,dword ptr [ebp-4]
 006607FA    cmp         word ptr [eax],14
>006607FE    ja          0066080F
 00660800    mov         eax,dword ptr [ebp-4]
 00660803    movzx       eax,word ptr [eax]
 00660806    cmp         byte ptr [eax+6E4D00],0
>0066080D    jne         00660820
 0066080F    mov         eax,dword ptr [ebp-4]
 00660812    test        byte ptr [eax+1],40
>00660816    jne         00660820
 00660818    mov         eax,dword ptr [ebp-4]
 0066081B    call        006601B0
 00660820    mov         eax,dword ptr [ebp-8]
 00660823    mov         ax,word ptr [eax]
 00660826    mov         edx,dword ptr [ebp-4]
 00660829    mov         word ptr [edx],ax
 0066082C    mov         eax,dword ptr [ebp-8]
 0066082F    mov         eax,dword ptr [eax+8]
 00660832    mov         edx,dword ptr [ebp-4]
 00660835    mov         dword ptr [edx+8],eax
 00660838    mov         eax,dword ptr [ebp-8]
 0066083B    mov         eax,dword ptr [eax+0C]
 0066083E    mov         edx,dword ptr [ebp-4]
 00660841    mov         dword ptr [edx+0C],eax
>00660844    jmp         00660851
 00660846    mov         edx,dword ptr [ebp-8]
 00660849    mov         eax,dword ptr [ebp-4]
 0066084C    call        006606C4
 00660851    pop         ecx
 00660852    pop         ecx
 00660853    pop         ebp
 00660854    ret
end;*}

//00660858
{*procedure sub_00660858(?:?; ?:?);
begin
 00660858    push        ebp
 00660859    mov         ebp,esp
 0066085B    add         esp,0FFFFFFF8
 0066085E    mov         dword ptr [ebp-8],edx
 00660861    mov         dword ptr [ebp-4],eax
 00660864    mov         eax,dword ptr [ebp-4]
 00660867    mov         edx,dword ptr [ebp-8]
 0066086A    cmp         eax,edx
>0066086C    je          00660876
 0066086E    mov         eax,dword ptr [ebp-4]
 00660871    call        00660244
 00660876    mov         eax,dword ptr [ebp-8]
 00660879    push        eax
 0066087A    mov         eax,dword ptr [ebp-4]
 0066087D    push        eax
 0066087E    call        OLEAUT32.11
 00660883    call        0065FB84
 00660888    pop         ecx
 00660889    pop         ecx
 0066088A    pop         ebp
 0066088B    ret
end;*}

//0066088C
{*procedure sub_0066088C(?:?; ?:?);
begin
 0066088C    push        ebp
 0066088D    mov         ebp,esp
 0066088F    add         esp,0FFFFFFF8
 00660892    mov         dword ptr [ebp-8],edx
 00660895    mov         dword ptr [ebp-4],eax
 00660898    mov         edx,dword ptr [ebp-4]
 0066089B    mov         eax,dword ptr [ebp-8]
 0066089E    call        00664050
 006608A3    pop         ecx
 006608A4    pop         ecx
 006608A5    pop         ebp
 006608A6    ret
end;*}

//006608C4
{*procedure sub_006608C4(?:?; ?:?);
begin
 006608C4    push        ebp
 006608C5    mov         ebp,esp
 006608C7    add         esp,0FFFFFFF4
 006608CA    push        ebx
 006608CB    mov         dword ptr [ebp-8],edx
 006608CE    mov         dword ptr [ebp-4],eax
 006608D1    lea         edx,[ebp-0C]
 006608D4    mov         eax,dword ptr [ebp-8]
 006608D7    mov         ax,word ptr [eax]
 006608DA    call        006689A0
 006608DF    test        al,al
>006608E1    je          006608F5
 006608E3    push        1
 006608E5    mov         ecx,dword ptr [ebp-8]
 006608E8    mov         edx,dword ptr [ebp-4]
 006608EB    mov         eax,dword ptr [ebp-0C]
 006608EE    mov         ebx,dword ptr [eax]
 006608F0    call        dword ptr [ebx+28]
>006608F3    jmp         006608FA
 006608F5    call        VarInvalidOp
 006608FA    pop         ebx
 006608FB    mov         esp,ebp
 006608FD    pop         ebp
 006608FE    ret
end;*}

//00660900
{*procedure sub_00660900(?:?; ?:?);
begin
 00660900    push        ebp
 00660901    mov         ebp,esp
 00660903    add         esp,0FFFFFFF4
 00660906    xor         ecx,ecx
 00660908    mov         dword ptr [ebp-0C],ecx
 0066090B    mov         dword ptr [ebp-8],edx
 0066090E    mov         dword ptr [ebp-4],eax
 00660911    xor         eax,eax
 00660913    push        ebp
 00660914    push        660B2E
 00660919    push        dword ptr fs:[eax]
 0066091C    mov         dword ptr fs:[eax],esp
 0066091F    mov         eax,dword ptr [ebp-8]
 00660922    test        byte ptr [eax+1],40
>00660926    je          00660B0D
 0066092C    mov         eax,dword ptr [ebp-8]
 0066092F    movzx       eax,word ptr [eax]
 00660932    and         eax,0FFFFBFFF
 00660937    cmp         eax,14
>0066093A    ja          00660AE5
 00660940    jmp         dword ptr [eax*4+660947]
 00660940    dd          00660AE5
 00660940    dd          00660AE5
 00660940    dd          0066099B
 00660940    dd          006609B3
 00660940    dd          006609CA
 00660940    dd          006609DF
 00660940    dd          006609F4
 00660940    dd          00660A09
 00660940    dd          00660A1E
 00660940    dd          00660AD8
 00660940    dd          00660AE5
 00660940    dd          00660A39
 00660940    dd          00660AC6
 00660940    dd          00660AD8
 00660940    dd          00660AE5
 00660940    dd          00660AE5
 00660940    dd          00660A56
 00660940    dd          00660A6E
 00660940    dd          00660A86
 00660940    dd          00660A9B
 00660940    dd          00660AAF
 0066099B    mov         eax,dword ptr [ebp-4]
 0066099E    mov         edx,dword ptr [ebp-8]
 006609A1    mov         edx,dword ptr [edx+8]
 006609A4    movsx       edx,word ptr [edx]
 006609A7    mov         cl,0FE
 006609A9    call        0066D574
>006609AE    jmp         00660B18
 006609B3    mov         eax,dword ptr [ebp-4]
 006609B6    mov         edx,dword ptr [ebp-8]
 006609B9    mov         edx,dword ptr [edx+8]
 006609BC    mov         edx,dword ptr [edx]
 006609BE    mov         cl,0FC
 006609C0    call        0066D574
>006609C5    jmp         00660B18
 006609CA    mov         eax,dword ptr [ebp-8]
 006609CD    mov         eax,dword ptr [eax+8]
 006609D0    fld         dword ptr [eax]
 006609D2    mov         eax,dword ptr [ebp-4]
 006609D5    call        0066D598
>006609DA    jmp         00660B18
 006609DF    mov         eax,dword ptr [ebp-8]
 006609E2    mov         eax,dword ptr [eax+8]
 006609E5    fld         qword ptr [eax]
 006609E7    mov         eax,dword ptr [ebp-4]
 006609EA    call        0066D598
>006609EF    jmp         00660B18
 006609F4    mov         eax,dword ptr [ebp-8]
 006609F7    mov         eax,dword ptr [eax+8]
 006609FA    fild        qword ptr [eax]
 006609FC    mov         eax,dword ptr [ebp-4]
 006609FF    call        0066D5A8
>00660A04    jmp         00660B18
 00660A09    mov         eax,dword ptr [ebp-8]
 00660A0C    mov         eax,dword ptr [eax+8]
 00660A0F    fld         qword ptr [eax]
 00660A11    mov         eax,dword ptr [ebp-4]
 00660A14    call        0066D598
>00660A19    jmp         00660B18
 00660A1E    lea         edx,[ebp-0C]
 00660A21    mov         eax,dword ptr [ebp-8]
 00660A24    call        0066088C
 00660A29    mov         edx,dword ptr [ebp-0C]
 00660A2C    mov         eax,dword ptr [ebp-4]
 00660A2F    call        0066D5B8
>00660A34    jmp         00660B18
 00660A39    mov         eax,dword ptr [ebp-4]
 00660A3C    mov         edx,dword ptr [ebp-8]
 00660A3F    mov         edx,dword ptr [edx+8]
 00660A42    mov         dx,word ptr [edx]
 00660A45    neg         dx
 00660A48    sbb         edx,edx
 00660A4A    neg         edx
 00660A4C    call        0066D590
>00660A51    jmp         00660B18
 00660A56    mov         eax,dword ptr [ebp-4]
 00660A59    mov         edx,dword ptr [ebp-8]
 00660A5C    mov         edx,dword ptr [edx+8]
 00660A5F    movsx       edx,byte ptr [edx]
 00660A62    mov         cl,0FF
 00660A64    call        0066D574
>00660A69    jmp         00660B18
 00660A6E    mov         eax,dword ptr [ebp-4]
 00660A71    mov         edx,dword ptr [ebp-8]
 00660A74    mov         edx,dword ptr [edx+8]
 00660A77    movzx       edx,byte ptr [edx]
 00660A7A    mov         cl,1
 00660A7C    call        0066D574
>00660A81    jmp         00660B18
 00660A86    mov         eax,dword ptr [ebp-4]
 00660A89    mov         edx,dword ptr [ebp-8]
 00660A8C    mov         edx,dword ptr [edx+8]
 00660A8F    movzx       edx,word ptr [edx]
 00660A92    mov         cl,2
 00660A94    call        0066D574
>00660A99    jmp         00660B18
 00660A9B    mov         eax,dword ptr [ebp-4]
 00660A9E    mov         edx,dword ptr [ebp-8]
 00660AA1    mov         edx,dword ptr [edx+8]
 00660AA4    mov         edx,dword ptr [edx]
 00660AA6    mov         cl,4
 00660AA8    call        0066D574
>00660AAD    jmp         00660B18
 00660AAF    mov         eax,dword ptr [ebp-8]
 00660AB2    mov         eax,dword ptr [eax+8]
 00660AB5    mov         edx,dword ptr [eax+4]
 00660AB8    mov         eax,dword ptr [eax]
 00660ABA    push        edx
 00660ABB    push        eax
 00660ABC    mov         eax,dword ptr [ebp-4]
 00660ABF    call        @VarFromInt64
>00660AC4    jmp         00660B18
 00660AC6    mov         eax,dword ptr [ebp-8]
 00660AC9    mov         eax,dword ptr [eax+8]
 00660ACC    mov         edx,eax
 00660ACE    mov         eax,dword ptr [ebp-4]
 00660AD1    call        00660900
>00660AD6    jmp         00660B18
 00660AD8    mov         edx,dword ptr [ebp-8]
 00660ADB    mov         eax,dword ptr [ebp-4]
 00660ADE    call        00660858
>00660AE3    jmp         00660B18
 00660AE5    mov         eax,dword ptr [ebp-8]
 00660AE8    test        byte ptr [eax+1],20
>00660AEC    je          00660B00
 00660AEE    mov         ecx,6608A8
 00660AF3    mov         edx,dword ptr [ebp-8]
 00660AF6    mov         eax,dword ptr [ebp-4]
 00660AF9    call        00660460
>00660AFE    jmp         00660B18
 00660B00    mov         edx,dword ptr [ebp-8]
 00660B03    mov         eax,dword ptr [ebp-4]
 00660B06    call        006608C4
>00660B0B    jmp         00660B18
 00660B0D    mov         edx,dword ptr [ebp-8]
 00660B10    mov         eax,dword ptr [ebp-4]
 00660B13    call        006607C0
 00660B18    xor         eax,eax
 00660B1A    pop         edx
 00660B1B    pop         ecx
 00660B1C    pop         ecx
 00660B1D    mov         dword ptr fs:[eax],edx
 00660B20    push        660B35
 00660B25    lea         eax,[ebp-0C]
 00660B28    call        @WStrClr
 00660B2D    ret
>00660B2E    jmp         @HandleFinally
>00660B33    jmp         00660B25
 00660B35    mov         esp,ebp
 00660B37    pop         ebp
 00660B38    ret
end;*}

//00660B74
procedure sub_00660B74;
begin
{*
>00660B74    jmp         00660B3C
*}
end;

//00660B7C
{*procedure sub_00660B7C(?:?; ?:?; ?:?);
begin
 00660B7C    push        ebp
 00660B7D    mov         ebp,esp
 00660B7F    add         esp,0FFFFFFE4
 00660B82    mov         word ptr [ebp-0A],cx
 00660B86    mov         dword ptr [ebp-8],edx
 00660B89    mov         dword ptr [ebp-4],eax
 00660B8C    lea         eax,[ebp-1A]
 00660B8F    push        eax
 00660B90    call        OLEAUT32.8
 00660B95    xor         eax,eax
 00660B97    push        ebp
 00660B98    push        660BDC
 00660B9D    push        dword ptr fs:[eax]
 00660BA0    mov         dword ptr fs:[eax],esp
 00660BA3    mov         edx,dword ptr [ebp-8]
 00660BA6    lea         eax,[ebp-1A]
 00660BA9    call        006607C0
 00660BAE    lea         eax,[ebp-1A]
 00660BB1    call        dword ptr ds:[6ED154]
 00660BB7    movzx       ecx,word ptr [ebp-0A]
 00660BBB    lea         edx,[ebp-1A]
 00660BBE    mov         eax,dword ptr [ebp-4]
 00660BC1    call        00661390
 00660BC6    xor         eax,eax
 00660BC8    pop         edx
 00660BC9    pop         ecx
 00660BCA    pop         ecx
 00660BCB    mov         dword ptr fs:[eax],edx
 00660BCE    push        660BE3
 00660BD3    lea         eax,[ebp-1A]
 00660BD6    call        00660244
 00660BDB    ret
>00660BDC    jmp         @HandleFinally
>00660BE1    jmp         00660BD3
 00660BE3    mov         esp,ebp
 00660BE5    pop         ebp
 00660BE6    ret
end;*}

//00660BE8
{*procedure sub_00660BE8(?:?; ?:?; ?:?; ?:?);
begin
 00660BE8    push        ebp
 00660BE9    mov         ebp,esp
 00660BEB    add         esp,0FFFFFFF0
 00660BEE    push        ebx
 00660BEF    push        esi
 00660BF0    push        edi
 00660BF1    xor         ecx,ecx
 00660BF3    mov         dword ptr [ebp-0C],ecx
 00660BF6    mov         dword ptr [ebp-10],ecx
 00660BF9    mov         word ptr [ebp-6],dx
 00660BFD    mov         dword ptr [ebp-4],eax
 00660C00    xor         eax,eax
 00660C02    push        ebp
 00660C03    push        660E76
 00660C08    push        dword ptr fs:[eax]
 00660C0B    mov         dword ptr fs:[eax],esp
 00660C0E    mov         eax,dword ptr [ebp-4]
 00660C11    cmp         word ptr [eax],14
>00660C15    ja          00660C26
 00660C17    mov         eax,dword ptr [ebp-4]
 00660C1A    movzx       eax,word ptr [eax]
 00660C1D    cmp         byte ptr [eax+6E4D00],0
>00660C24    jne         00660C37
 00660C26    mov         eax,dword ptr [ebp-4]
 00660C29    test        byte ptr [eax+1],40
>00660C2D    jne         00660C37
 00660C2F    mov         eax,dword ptr [ebp-4]
 00660C32    call        006601B0
 00660C37    xor         eax,eax
 00660C39    push        ebp
 00660C3A    push        660E37
 00660C3F    push        dword ptr fs:[eax]
 00660C42    mov         dword ptr fs:[eax],esp
 00660C45    movzx       eax,word ptr [ebp-6]
 00660C49    cmp         eax,14
>00660C4C    ja          00660E20
 00660C52    jmp         dword ptr [eax*4+660C59]
 00660C52    dd          00660E2D
 00660C52    dd          00660E20
 00660C52    dd          00660CB2
 00660C52    dd          00660CE5
 00660C52    dd          00660D04
 00660C52    dd          00660D13
 00660C52    dd          00660D22
 00660C52    dd          00660D37
 00660C52    dd          00660D46
 00660C52    dd          00660E20
 00660C52    dd          00660E20
 00660C52    dd          00660D6F
 00660C52    dd          00660E20
 00660C52    dd          00660E20
 00660C52    dd          00660E20
 00660C52    dd          00660E20
 00660C52    dd          00660D8C
 00660C52    dd          00660DB9
 00660C52    dd          00660DD8
 00660C52    dd          00660DF8
 00660C52    dd          00660E0F
>00660CAD    jmp         00660E2D
 00660CB2    mov         eax,dword ptr [ebp+8]
 00660CB5    mov         edx,dword ptr [ebp+0C]
 00660CB8    add         eax,8000
 00660CBD    adc         edx,0
 00660CC0    cmp         edx,0
>00660CC3    jne         00660CCA
 00660CC5    cmp         eax,0FFFF
>00660CCA    jbe         00660CD1
 00660CCC    call        @BoundErr
 00660CD1    add         eax,0FFFF8000
 00660CD6    adc         edx,0FFFFFFFF
 00660CD9    mov         edx,dword ptr [ebp-4]
 00660CDC    mov         word ptr [edx+8],ax
>00660CE0    jmp         00660E2D
 00660CE5    mov         eax,dword ptr [ebp+8]
 00660CE8    mov         edx,dword ptr [ebp+0C]
 00660CEB    push        eax
 00660CEC    sar         eax,1F
 00660CEF    cmp         eax,edx
 00660CF1    pop         eax
>00660CF2    je          00660CF9
 00660CF4    call        @BoundErr
 00660CF9    mov         edx,dword ptr [ebp-4]
 00660CFC    mov         dword ptr [edx+8],eax
>00660CFF    jmp         00660E2D
 00660D04    fild        qword ptr [ebp+8]
 00660D07    mov         eax,dword ptr [ebp-4]
 00660D0A    fstp        dword ptr [eax+8]
 00660D0D    wait
>00660D0E    jmp         00660E2D
 00660D13    fild        qword ptr [ebp+8]
 00660D16    mov         eax,dword ptr [ebp-4]
 00660D19    fstp        qword ptr [eax+8]
 00660D1C    wait
>00660D1D    jmp         00660E2D
 00660D22    fild        qword ptr [ebp+8]
 00660D25    fmul        dword ptr ds:[660E88];10000:Single
 00660D2B    mov         eax,dword ptr [ebp-4]
 00660D2E    fistp       qword ptr [eax+8]
 00660D31    wait
>00660D32    jmp         00660E2D
 00660D37    fild        qword ptr [ebp+8]
 00660D3A    mov         eax,dword ptr [ebp-4]
 00660D3D    fstp        qword ptr [eax+8]
 00660D40    wait
>00660D41    jmp         00660E2D
 00660D46    push        dword ptr [ebp+0C]
 00660D49    push        dword ptr [ebp+8]
 00660D4C    lea         eax,[ebp-10]
 00660D4F    call        00657BCC
 00660D54    mov         edx,dword ptr [ebp-10]
 00660D57    lea         eax,[ebp-0C]
 00660D5A    call        @WStrFromLStr
 00660D5F    mov         edx,dword ptr [ebp-0C]
 00660D62    mov         eax,dword ptr [ebp-4]
 00660D65    call        00664AE0
>00660D6A    jmp         00660E2D
 00660D6F    cmp         dword ptr [ebp+0C],0
>00660D73    jne         00660D79
 00660D75    cmp         dword ptr [ebp+8],0
 00660D79    setne       al
 00660D7C    neg         al
 00660D7E    sbb         eax,eax
 00660D80    mov         edx,dword ptr [ebp-4]
 00660D83    mov         word ptr [edx+8],ax
>00660D87    jmp         00660E2D
 00660D8C    mov         eax,dword ptr [ebp+8]
 00660D8F    mov         edx,dword ptr [ebp+0C]
 00660D92    add         eax,80
 00660D97    adc         edx,0
 00660D9A    cmp         edx,0
>00660D9D    jne         00660DA4
 00660D9F    cmp         eax,0FF
>00660DA4    jbe         00660DAB
 00660DA6    call        @BoundErr
 00660DAB    add         eax,0FFFFFF80
 00660DAE    adc         edx,0FFFFFFFF
 00660DB1    mov         edx,dword ptr [ebp-4]
 00660DB4    mov         byte ptr [edx+8],al
>00660DB7    jmp         00660E2D
 00660DB9    mov         eax,dword ptr [ebp+8]
 00660DBC    mov         edx,dword ptr [ebp+0C]
 00660DBF    cmp         edx,0
>00660DC2    jne         00660DC9
 00660DC4    cmp         eax,0FF
>00660DC9    jbe         00660DD0
 00660DCB    call        @BoundErr
 00660DD0    mov         edx,dword ptr [ebp-4]
 00660DD3    mov         byte ptr [edx+8],al
>00660DD6    jmp         00660E2D
 00660DD8    mov         eax,dword ptr [ebp+8]
 00660DDB    mov         edx,dword ptr [ebp+0C]
 00660DDE    cmp         edx,0
>00660DE1    jne         00660DE8
 00660DE3    cmp         eax,0FFFF
>00660DE8    jbe         00660DEF
 00660DEA    call        @BoundErr
 00660DEF    mov         edx,dword ptr [ebp-4]
 00660DF2    mov         word ptr [edx+8],ax
>00660DF6    jmp         00660E2D
 00660DF8    mov         eax,dword ptr [ebp+8]
 00660DFB    mov         edx,dword ptr [ebp+0C]
 00660DFE    test        edx,edx
>00660E00    je          00660E07
 00660E02    call        @BoundErr
 00660E07    mov         edx,dword ptr [ebp-4]
 00660E0A    mov         dword ptr [edx+8],eax
>00660E0D    jmp         00660E2D
 00660E0F    mov         eax,dword ptr [ebp-4]
 00660E12    mov         edx,dword ptr [ebp+8]
 00660E15    mov         dword ptr [eax+8],edx
 00660E18    mov         edx,dword ptr [ebp+0C]
 00660E1B    mov         dword ptr [eax+0C],edx
>00660E1E    jmp         00660E2D
 00660E20    mov         dx,word ptr [ebp-6]
 00660E24    mov         ax,14
 00660E28    call        0065F99C
 00660E2D    xor         eax,eax
 00660E2F    pop         edx
 00660E30    pop         ecx
 00660E31    pop         ecx
 00660E32    mov         dword ptr fs:[eax],edx
>00660E35    jmp         00660E4E
>00660E37    jmp         @HandleAnyException
 00660E3C    mov         dx,word ptr [ebp-6]
 00660E40    mov         ax,14
 00660E44    call        0065FE18
 00660E49    call        @DoneExcept
 00660E4E    mov         eax,dword ptr [ebp-4]
 00660E51    mov         dx,word ptr [ebp-6]
 00660E55    mov         word ptr [eax],dx
 00660E58    xor         eax,eax
 00660E5A    pop         edx
 00660E5B    pop         ecx
 00660E5C    pop         ecx
 00660E5D    mov         dword ptr fs:[eax],edx
 00660E60    push        660E7D
 00660E65    lea         eax,[ebp-10]
 00660E68    call        @LStrClr
 00660E6D    lea         eax,[ebp-0C]
 00660E70    call        @WStrClr
 00660E75    ret
>00660E76    jmp         @HandleFinally
>00660E7B    jmp         00660E65
 00660E7D    pop         edi
 00660E7E    pop         esi
 00660E7F    pop         ebx
 00660E80    mov         esp,ebp
 00660E82    pop         ebp
 00660E83    ret         8
end;*}

//00660E8C
{*procedure sub_00660E8C(?:?; ?:?; ?:?; ?:Extended; ?:?; ?:?);
begin
 00660E8C    push        ebp
 00660E8D    mov         ebp,esp
 00660E8F    add         esp,0FFFFFFF8
 00660E92    push        ebx
 00660E93    push        esi
 00660E94    push        edi
 00660E95    mov         word ptr [ebp-8],cx
 00660E99    mov         word ptr [ebp-6],dx
 00660E9D    mov         dword ptr [ebp-4],eax
 00660EA0    mov         eax,dword ptr [ebp-4]
 00660EA3    cmp         word ptr [eax],14
>00660EA7    ja          00660EB8
 00660EA9    mov         eax,dword ptr [ebp-4]
 00660EAC    movzx       eax,word ptr [eax]
 00660EAF    cmp         byte ptr [eax+6E4D00],0
>00660EB6    jne         00660EC9
 00660EB8    mov         eax,dword ptr [ebp-4]
 00660EBB    test        byte ptr [eax+1],40
>00660EBF    jne         00660EC9
 00660EC1    mov         eax,dword ptr [ebp-4]
 00660EC4    call        006601B0
 00660EC9    xor         eax,eax
 00660ECB    push        ebp
 00660ECC    push        660F4B
 00660ED1    push        dword ptr fs:[eax]
 00660ED4    mov         dword ptr fs:[eax],esp
 00660ED7    mov         ax,word ptr [ebp-8]
 00660EDB    sub         ax,4
>00660EDF    je          00660EF2
 00660EE1    dec         ax
>00660EE4    je          00660EFE
 00660EE6    dec         ax
>00660EE9    je          00660F0A
 00660EEB    dec         ax
>00660EEE    je          00660F23
>00660EF0    jmp         00660F3C
 00660EF2    fld         tbyte ptr [ebp+8]
 00660EF5    mov         eax,dword ptr [ebp-4]
 00660EF8    fstp        dword ptr [eax+8]
 00660EFB    wait
>00660EFC    jmp         00660F41
 00660EFE    fld         tbyte ptr [ebp+8]
 00660F01    mov         eax,dword ptr [ebp-4]
 00660F04    fstp        qword ptr [eax+8]
 00660F07    wait
>00660F08    jmp         00660F41
 00660F0A    mov         ax,word ptr [ebp+10]
 00660F0E    push        eax
 00660F0F    push        dword ptr [ebp+0C]
 00660F12    push        dword ptr [ebp+8]
 00660F15    call        FloatToCurr
 00660F1A    mov         eax,dword ptr [ebp-4]
 00660F1D    fistp       qword ptr [eax+8]
 00660F20    wait
>00660F21    jmp         00660F41
 00660F23    mov         ax,word ptr [ebp+10]
 00660F27    push        eax
 00660F28    push        dword ptr [ebp+0C]
 00660F2B    push        dword ptr [ebp+8]
 00660F2E    call        FloatToDateTime
 00660F33    mov         eax,dword ptr [ebp-4]
 00660F36    fstp        qword ptr [eax+8]
 00660F39    wait
>00660F3A    jmp         00660F41
 00660F3C    call        VarCastError
 00660F41    xor         eax,eax
 00660F43    pop         edx
 00660F44    pop         ecx
 00660F45    pop         ecx
 00660F46    mov         dword ptr fs:[eax],edx
>00660F49    jmp         00660F62
>00660F4B    jmp         @HandleAnyException
 00660F50    mov         dx,word ptr [ebp-8]
 00660F54    mov         ax,word ptr [ebp-6]
 00660F58    call        0065FE18
 00660F5D    call        @DoneExcept
 00660F62    mov         eax,dword ptr [ebp-4]
 00660F65    mov         dx,word ptr [ebp-8]
 00660F69    mov         word ptr [eax],dx
 00660F6C    pop         edi
 00660F6D    pop         esi
 00660F6E    pop         ebx
 00660F6F    pop         ecx
 00660F70    pop         ecx
 00660F71    pop         ebp
 00660F72    ret         0C
end;*}

//00660F78
{*procedure sub_00660F78(?:?; ?:?; ?:?; ?:?);
begin
 00660F78    push        ebp
 00660F79    mov         ebp,esp
 00660F7B    add         esp,0FFFFFFF4
 00660F7E    push        ebx
 00660F7F    push        esi
 00660F80    push        edi
 00660F81    mov         word ptr [ebp-0A],cx
 00660F85    mov         dword ptr [ebp-8],edx
 00660F88    mov         dword ptr [ebp-4],eax
 00660F8B    mov         eax,dword ptr [ebp-4]
 00660F8E    cmp         word ptr [eax],14
>00660F92    ja          00660FA3
 00660F94    mov         eax,dword ptr [ebp-4]
 00660F97    movzx       eax,word ptr [eax]
 00660F9A    cmp         byte ptr [eax+6E4D00],0
>00660FA1    jne         00660FB4
 00660FA3    mov         eax,dword ptr [ebp-4]
 00660FA6    test        byte ptr [eax+1],40
>00660FAA    jne         00660FB4
 00660FAC    mov         eax,dword ptr [ebp-4]
 00660FAF    call        006601B0
 00660FB4    xor         eax,eax
 00660FB6    push        ebp
 00660FB7    push        661092
 00660FBC    push        dword ptr fs:[eax]
 00660FBF    mov         dword ptr fs:[eax],esp
 00660FC2    movzx       eax,word ptr [ebp+8]
 00660FC6    cmp         eax,13
>00660FC9    ja          00661083
 00660FCF    mov         al,byte ptr [eax+660FDC]
 00660FD5    jmp         dword ptr [eax*4+660FF0]
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          1
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          0
 00660FD5    db          2
 00660FD5    db          3
 00660FD5    db          4
 00660FD5    db          5
 00660FD5    dd          00661083
 00660FD5    dd          00661008
 00660FD5    dd          0066102A
 00660FD5    dd          00661049
 00660FD5    dd          00661060
 00660FD5    dd          00661078
 00661008    mov         eax,dword ptr [ebp-8]
 0066100B    add         eax,8000
 00661010    cmp         eax,0FFFF
>00661015    jbe         0066101C
 00661017    call        @BoundErr
 0066101C    add         eax,0FFFF8000
 00661021    mov         edx,dword ptr [ebp-4]
 00661024    mov         word ptr [edx+8],ax
>00661028    jmp         00661088
 0066102A    mov         eax,dword ptr [ebp-8]
 0066102D    add         eax,80
 00661032    cmp         eax,0FF
>00661037    jbe         0066103E
 00661039    call        @BoundErr
 0066103E    add         eax,0FFFFFF80
 00661041    mov         edx,dword ptr [ebp-4]
 00661044    mov         byte ptr [edx+8],al
>00661047    jmp         00661088
 00661049    mov         eax,dword ptr [ebp-8]
 0066104C    cmp         eax,0FF
>00661051    jbe         00661058
 00661053    call        @BoundErr
 00661058    mov         edx,dword ptr [ebp-4]
 0066105B    mov         byte ptr [edx+8],al
>0066105E    jmp         00661088
 00661060    mov         eax,dword ptr [ebp-8]
 00661063    cmp         eax,0FFFF
>00661068    jbe         0066106F
 0066106A    call        @BoundErr
 0066106F    mov         edx,dword ptr [ebp-4]
 00661072    mov         word ptr [edx+8],ax
>00661076    jmp         00661088
 00661078    mov         eax,dword ptr [ebp-4]
 0066107B    mov         edx,dword ptr [ebp-8]
 0066107E    mov         dword ptr [eax+8],edx
>00661081    jmp         00661088
 00661083    call        VarCastError
 00661088    xor         eax,eax
 0066108A    pop         edx
 0066108B    pop         ecx
 0066108C    pop         ecx
 0066108D    mov         dword ptr fs:[eax],edx
>00661090    jmp         006610A9
>00661092    jmp         @HandleAnyException
 00661097    mov         dx,word ptr [ebp+8]
 0066109B    mov         ax,word ptr [ebp-0A]
 0066109F    call        0065FE18
 006610A4    call        @DoneExcept
 006610A9    mov         eax,dword ptr [ebp-4]
 006610AC    mov         dx,word ptr [ebp+8]
 006610B0    mov         word ptr [eax],dx
 006610B3    pop         edi
 006610B4    pop         esi
 006610B5    pop         ebx
 006610B6    mov         esp,ebp
 006610B8    pop         ebp
 006610B9    ret         4
end;*}

//006610BC
{*procedure sub_006610BC(?:?; ?:?);
begin
 006610BC    push        ebp
 006610BD    mov         ebp,esp
 006610BF    add         esp,0FFFFFFF4
 006610C2    xor         ecx,ecx
 006610C4    mov         dword ptr [ebp-0C],ecx
 006610C7    mov         dword ptr [ebp-8],edx
 006610CA    mov         dword ptr [ebp-4],eax
 006610CD    xor         eax,eax
 006610CF    push        ebp
 006610D0    push        661107
 006610D5    push        dword ptr fs:[eax]
 006610D8    mov         dword ptr fs:[eax],esp
 006610DB    lea         eax,[ebp-0C]
 006610DE    mov         edx,dword ptr [ebp-8]
 006610E1    call        0066D55C
 006610E6    mov         edx,dword ptr [ebp-0C]
 006610E9    mov         eax,dword ptr [ebp-4]
 006610EC    call        00664AE0
 006610F1    xor         eax,eax
 006610F3    pop         edx
 006610F4    pop         ecx
 006610F5    pop         ecx
 006610F6    mov         dword ptr fs:[eax],edx
 006610F9    push        66110E
 006610FE    lea         eax,[ebp-0C]
 00661101    call        @WStrClr
 00661106    ret
>00661107    jmp         @HandleFinally
>0066110C    jmp         006610FE
 0066110E    mov         esp,ebp
 00661110    pop         ebp
 00661111    ret
end;*}

//00661114
{*procedure sub_00661114(?:?; ?:?);
begin
 00661114    push        ebp
 00661115    mov         ebp,esp
 00661117    add         esp,0FFFFFFF4
 0066111A    xor         ecx,ecx
 0066111C    mov         dword ptr [ebp-0C],ecx
 0066111F    mov         dword ptr [ebp-8],edx
 00661122    mov         dword ptr [ebp-4],eax
 00661125    xor         eax,eax
 00661127    push        ebp
 00661128    push        66115F
 0066112D    push        dword ptr fs:[eax]
 00661130    mov         dword ptr fs:[eax],esp
 00661133    lea         eax,[ebp-0C]
 00661136    mov         edx,dword ptr [ebp-8]
 00661139    call        0066D554
 0066113E    mov         edx,dword ptr [ebp-0C]
 00661141    mov         eax,dword ptr [ebp-4]
 00661144    call        00664A30
 00661149    xor         eax,eax
 0066114B    pop         edx
 0066114C    pop         ecx
 0066114D    pop         ecx
 0066114E    mov         dword ptr fs:[eax],edx
 00661151    push        661166
 00661156    lea         eax,[ebp-0C]
 00661159    call        @LStrClr
 0066115E    ret
>0066115F    jmp         @HandleFinally
>00661164    jmp         00661156
 00661166    mov         esp,ebp
 00661168    pop         ebp
 00661169    ret
end;*}

//0066116C
{*procedure sub_0066116C(?:?; ?:?);
begin
 0066116C    push        ebp
 0066116D    mov         ebp,esp
 0066116F    add         esp,0FFFFFFF4
 00661172    xor         ecx,ecx
 00661174    mov         dword ptr [ebp-0C],ecx
 00661177    mov         dword ptr [ebp-8],edx
 0066117A    mov         dword ptr [ebp-4],eax
 0066117D    xor         eax,eax
 0066117F    push        ebp
 00661180    push        6611B7
 00661185    push        dword ptr fs:[eax]
 00661188    mov         dword ptr fs:[eax],esp
 0066118B    lea         eax,[ebp-0C]
 0066118E    mov         edx,dword ptr [ebp-8]
 00661191    call        0066D56C
 00661196    mov         edx,dword ptr [ebp-0C]
 00661199    mov         eax,dword ptr [ebp-4]
 0066119C    call        00664B9C
 006611A1    xor         eax,eax
 006611A3    pop         edx
 006611A4    pop         ecx
 006611A5    pop         ecx
 006611A6    mov         dword ptr fs:[eax],edx
 006611A9    push        6611BE
 006611AE    lea         eax,[ebp-0C]
 006611B1    call        @IntfClear
 006611B6    ret
>006611B7    jmp         @HandleFinally
>006611BC    jmp         006611AE
 006611BE    mov         esp,ebp
 006611C0    pop         ebp
 006611C1    ret
end;*}

//006611C4
{*procedure sub_006611C4(?:?; ?:?);
begin
 006611C4    push        ebp
 006611C5    mov         ebp,esp
 006611C7    add         esp,0FFFFFFF4
 006611CA    xor         ecx,ecx
 006611CC    mov         dword ptr [ebp-0C],ecx
 006611CF    mov         dword ptr [ebp-8],edx
 006611D2    mov         dword ptr [ebp-4],eax
 006611D5    xor         eax,eax
 006611D7    push        ebp
 006611D8    push        66120F
 006611DD    push        dword ptr fs:[eax]
 006611E0    mov         dword ptr fs:[eax],esp
 006611E3    lea         eax,[ebp-0C]
 006611E6    mov         edx,dword ptr [ebp-8]
 006611E9    call        0066D564
 006611EE    mov         edx,dword ptr [ebp-0C]
 006611F1    mov         eax,dword ptr [ebp-4]
 006611F4    call        00664B44
 006611F9    xor         eax,eax
 006611FB    pop         edx
 006611FC    pop         ecx
 006611FD    pop         ecx
 006611FE    mov         dword ptr fs:[eax],edx
 00661201    push        661216
 00661206    lea         eax,[ebp-0C]
 00661209    call        @IntfClear
 0066120E    ret
>0066120F    jmp         @HandleFinally
>00661214    jmp         00661206
 00661216    mov         esp,ebp
 00661218    pop         ebp
 00661219    ret
end;*}

//0066121C
{*procedure sub_0066121C(?:?; ?:?; ?:?);
begin
 0066121C    push        ebp
 0066121D    mov         ebp,esp
 0066121F    add         esp,0FFFFFFF4
 00661222    mov         word ptr [ebp-0A],cx
 00661226    mov         dword ptr [ebp-8],edx
 00661229    mov         dword ptr [ebp-4],eax
 0066122C    mov         eax,dword ptr [ebp-8]
 0066122F    mov         ax,word ptr [eax]
 00661232    and         ax,0FFF
 00661236    cmp         ax,14
>0066123A    jb          00661276
 0066123C    mov         edx,dword ptr [ebp-8]
 0066123F    mov         eax,dword ptr [ebp-4]
 00661242    mov         ecx,8
 00661247    call        00661390
 0066124C    mov         ax,word ptr [ebp-0A]
 00661250    push        eax
 00661251    push        0
 00661253    push        400
 00661258    mov         eax,dword ptr [ebp-4]
 0066125B    push        eax
 0066125C    mov         eax,dword ptr [ebp-4]
 0066125F    push        eax
 00661260    call        OLEAUT32.147
 00661265    mov         edx,dword ptr [ebp-8]
 00661268    mov         dx,word ptr [edx]
 0066126B    mov         cx,word ptr [ebp-0A]
 0066126F    call        0065FDC4
>00661274    jmp         006612BD
 00661276    mov         ax,word ptr [ebp-0A]
 0066127A    and         ax,0FFF
 0066127E    cmp         ax,14
>00661282    jae         006612AE
 00661284    mov         ax,word ptr [ebp-0A]
 00661288    push        eax
 00661289    push        0
 0066128B    push        400
 00661290    mov         eax,dword ptr [ebp-8]
 00661293    push        eax
 00661294    mov         eax,dword ptr [ebp-4]
 00661297    push        eax
 00661298    call        OLEAUT32.147
 0066129D    mov         edx,dword ptr [ebp-8]
 006612A0    mov         dx,word ptr [edx]
 006612A3    mov         cx,word ptr [ebp-0A]
 006612A7    call        0065FDC4
>006612AC    jmp         006612BD
 006612AE    mov         eax,dword ptr [ebp-8]
 006612B1    mov         ax,word ptr [eax]
 006612B4    mov         dx,word ptr [ebp-0A]
 006612B8    call        0065F99C
 006612BD    mov         esp,ebp
 006612BF    pop         ebp
 006612C0    ret
end;*}

//006612C4
{*procedure sub_006612C4(?:?; ?:?; ?:?);
begin
 006612C4    push        ebp
 006612C5    mov         ebp,esp
 006612C7    add         esp,0FFFFFFF0
 006612CA    push        ebx
 006612CB    mov         word ptr [ebp-0A],cx
 006612CF    mov         dword ptr [ebp-8],edx
 006612D2    mov         dword ptr [ebp-4],eax
 006612D5    mov         eax,dword ptr [ebp-8]
 006612D8    mov         ax,word ptr [eax]
 006612DB    sub         ax,14
>006612DF    je          00661303
 006612E1    sub         ax,0ED
>006612E5    je          006612EF
 006612E7    sub         ax,3F13
>006612EB    je          0066131A
>006612ED    jmp         00661333
 006612EF    mov         edx,dword ptr [ebp-8]
 006612F2    mov         eax,dword ptr [ebp-4]
 006612F5    mov         cx,word ptr [ebp-0A]
 006612F9    call        00660B7C
>006612FE    jmp         00661389
 00661303    mov         eax,dword ptr [ebp-8]
 00661306    push        dword ptr [eax+0C]
 00661309    push        dword ptr [eax+8]
 0066130C    mov         eax,dword ptr [ebp-4]
 0066130F    mov         dx,word ptr [ebp-0A]
 00661313    call        00660BE8
>00661318    jmp         00661389
 0066131A    mov         eax,dword ptr [ebp-8]
 0066131D    mov         eax,dword ptr [eax+8]
 00661320    push        dword ptr [eax+4]
 00661323    push        dword ptr [eax]
 00661325    mov         eax,dword ptr [ebp-4]
 00661328    mov         dx,word ptr [ebp-0A]
 0066132C    call        00660BE8
>00661331    jmp         00661389
 00661333    lea         edx,[ebp-10]
 00661336    mov         eax,dword ptr [ebp-8]
 00661339    mov         ax,word ptr [eax]
 0066133C    call        006689A0
 00661341    test        al,al
>00661343    je          0066135A
 00661345    mov         ax,word ptr [ebp-0A]
 00661349    push        eax
 0066134A    mov         ecx,dword ptr [ebp-8]
 0066134D    mov         edx,dword ptr [ebp-4]
 00661350    mov         eax,dword ptr [ebp-10]
 00661353    mov         ebx,dword ptr [eax]
 00661355    call        dword ptr [ebx+1C]
>00661358    jmp         00661389
 0066135A    lea         edx,[ebp-10]
 0066135D    mov         ax,word ptr [ebp-0A]
 00661361    call        006689A0
 00661366    test        al,al
>00661368    je          0066137A
 0066136A    mov         ecx,dword ptr [ebp-8]
 0066136D    mov         edx,dword ptr [ebp-4]
 00661370    mov         eax,dword ptr [ebp-10]
 00661373    mov         ebx,dword ptr [eax]
 00661375    call        dword ptr [ebx+18]
>00661378    jmp         00661389
 0066137A    mov         edx,dword ptr [ebp-8]
 0066137D    mov         eax,dword ptr [ebp-4]
 00661380    mov         cx,word ptr [ebp-0A]
 00661384    call        0066121C
 00661389    pop         ebx
 0066138A    mov         esp,ebp
 0066138C    pop         ebp
 0066138D    ret
end;*}

//00661390
{*procedure sub_00661390(?:?; ?:?; ?:?);
begin
 00661390    push        ebp
 00661391    mov         ebp,esp
 00661393    add         esp,0FFFFFFF4
 00661396    mov         dword ptr [ebp-0C],ecx
 00661399    mov         dword ptr [ebp-8],edx
 0066139C    mov         dword ptr [ebp-4],eax
 0066139F    mov         eax,dword ptr [ebp-8]
 006613A2    movzx       eax,word ptr [eax]
 006613A5    cmp         eax,dword ptr [ebp-0C]
>006613A8    jne         006613BA
 006613AA    mov         edx,dword ptr [ebp-8]
 006613AD    mov         eax,dword ptr [ebp-4]
 006613B0    call        006607C0
>006613B5    jmp         00661640
 006613BA    mov         eax,dword ptr [ebp-8]
 006613BD    cmp         word ptr [eax],400C
>006613C2    jne         006613DC
 006613C4    mov         eax,dword ptr [ebp-8]
 006613C7    mov         eax,dword ptr [eax+8]
 006613CA    mov         edx,eax
 006613CC    mov         eax,dword ptr [ebp-4]
 006613CF    mov         ecx,dword ptr [ebp-0C]
 006613D2    call        00661390
>006613D7    jmp         00661640
 006613DC    mov         eax,dword ptr [ebp-0C]
 006613DF    cmp         eax,14
>006613E2    ja          00661604
 006613E8    jmp         dword ptr [eax*4+6613EF]
 006613E8    dd          00661443
 006613E8    dd          00661450
 006613E8    dd          0066145D
 006613E8    dd          0066147C
 006613E8    dd          00661498
 006613E8    dd          006614BE
 006613E8    dd          006614E4
 006613E8    dd          00661510
 006613E8    dd          00661536
 006613E8    dd          006615EA
 006613E8    dd          00661604
 006613E8    dd          00661546
 006613E8    dd          00661604
 006613E8    dd          006615F7
 006613E8    dd          00661604
 006613E8    dd          00661604
 006613E8    dd          0066155D
 006613E8    dd          0066157C
 006613E8    dd          0066159B
 006613E8    dd          006615BA
 006613E8    dd          006615D6
 00661443    mov         eax,dword ptr [ebp-4]
 00661446    call        00660244
>0066144B    jmp         00661640
 00661450    mov         eax,dword ptr [ebp-4]
 00661453    call        0065FF08
>00661458    jmp         00661640
 0066145D    push        2
 0066145F    mov         eax,dword ptr [ebp-8]
 00661462    call        0066186C
 00661467    mov         edx,eax
 00661469    mov         ecx,dword ptr [ebp-8]
 0066146C    mov         cx,word ptr [ecx]
 0066146F    mov         eax,dword ptr [ebp-4]
 00661472    call        00660F78
>00661477    jmp         00661640
 0066147C    mov         eax,dword ptr [ebp-8]
 0066147F    call        0066186C
 00661484    mov         edx,eax
 00661486    mov         eax,dword ptr [ebp-4]
 00661489    mov         ecx,0FFFFFFFC
 0066148E    call        006647F8
>00661493    jmp         00661640
 00661498    mov         eax,dword ptr [ebp-8]
 0066149B    call        0066291C
 006614A0    add         esp,0FFFFFFF4
 006614A3    fstp        tbyte ptr [esp]
 006614A6    wait
 006614A7    mov         edx,dword ptr [ebp-8]
 006614AA    mov         dx,word ptr [edx]
 006614AD    mov         eax,dword ptr [ebp-4]
 006614B0    mov         cx,4
 006614B4    call        00660E8C
>006614B9    jmp         00661640
 006614BE    mov         eax,dword ptr [ebp-8]
 006614C1    call        0066291C
 006614C6    add         esp,0FFFFFFF4
 006614C9    fstp        tbyte ptr [esp]
 006614CC    wait
 006614CD    mov         edx,dword ptr [ebp-8]
 006614D0    mov         dx,word ptr [edx]
 006614D3    mov         eax,dword ptr [ebp-4]
 006614D6    mov         cx,5
 006614DA    call        00660E8C
>006614DF    jmp         00661640
 006614E4    mov         eax,dword ptr [ebp-8]
 006614E7    call        006633E0
 006614EC    fdiv        dword ptr ds:[661644];10000:Single
 006614F2    add         esp,0FFFFFFF4
 006614F5    fstp        tbyte ptr [esp]
 006614F8    wait
 006614F9    mov         edx,dword ptr [ebp-8]
 006614FC    mov         dx,word ptr [edx]
 006614FF    mov         eax,dword ptr [ebp-4]
 00661502    mov         cx,6
 00661506    call        00660E8C
>0066150B    jmp         00661640
 00661510    mov         eax,dword ptr [ebp-8]
 00661513    call        00662E80
 00661518    add         esp,0FFFFFFF4
 0066151B    fstp        tbyte ptr [esp]
 0066151E    wait
 0066151F    mov         edx,dword ptr [ebp-8]
 00661522    mov         dx,word ptr [edx]
 00661525    mov         eax,dword ptr [ebp-4]
 00661528    mov         cx,7
 0066152C    call        00660E8C
>00661531    jmp         00661640
 00661536    mov         edx,dword ptr [ebp-8]
 00661539    mov         eax,dword ptr [ebp-4]
 0066153C    call        006610BC
>00661541    jmp         00661640
 00661546    mov         eax,dword ptr [ebp-8]
 00661549    call        006623E4
 0066154E    mov         edx,eax
 00661550    mov         eax,dword ptr [ebp-4]
 00661553    call        006649A4
>00661558    jmp         00661640
 0066155D    push        10
 0066155F    mov         eax,dword ptr [ebp-8]
 00661562    call        0066186C
 00661567    mov         edx,eax
 00661569    mov         ecx,dword ptr [ebp-8]
 0066156C    mov         cx,word ptr [ecx]
 0066156F    mov         eax,dword ptr [ebp-4]
 00661572    call        00660F78
>00661577    jmp         00661640
 0066157C    push        11
 0066157E    mov         eax,dword ptr [ebp-8]
 00661581    call        0066186C
 00661586    mov         edx,eax
 00661588    mov         ecx,dword ptr [ebp-8]
 0066158B    mov         cx,word ptr [ecx]
 0066158E    mov         eax,dword ptr [ebp-4]
 00661591    call        00660F78
>00661596    jmp         00661640
 0066159B    push        12
 0066159D    mov         eax,dword ptr [ebp-8]
 006615A0    call        0066186C
 006615A5    mov         edx,eax
 006615A7    mov         ecx,dword ptr [ebp-8]
 006615AA    mov         cx,word ptr [ecx]
 006615AD    mov         eax,dword ptr [ebp-4]
 006615B0    call        00660F78
>006615B5    jmp         00661640
 006615BA    push        13
 006615BC    mov         eax,dword ptr [ebp-8]
 006615BF    call        0066186C
 006615C4    mov         edx,eax
 006615C6    mov         ecx,dword ptr [ebp-8]
 006615C9    mov         cx,word ptr [ecx]
 006615CC    mov         eax,dword ptr [ebp-4]
 006615CF    call        00660F78
>006615D4    jmp         00661640
 006615D6    mov         eax,dword ptr [ebp-8]
 006615D9    call        00661E44
 006615DE    push        edx
 006615DF    push        eax
 006615E0    mov         eax,dword ptr [ebp-4]
 006615E3    call        00664958
>006615E8    jmp         00661640
 006615EA    mov         edx,dword ptr [ebp-8]
 006615ED    mov         eax,dword ptr [ebp-4]
 006615F0    call        0066116C
>006615F5    jmp         00661640
 006615F7    mov         edx,dword ptr [ebp-8]
 006615FA    mov         eax,dword ptr [ebp-4]
 006615FD    call        006611C4
>00661602    jmp         00661640
 00661604    mov         eax,dword ptr [ebp-0C]
 00661607    sub         eax,100
>0066160C    je          00661613
 0066160E    dec         eax
>0066160F    je          00661620
>00661611    jmp         00661631
 00661613    mov         edx,dword ptr [ebp-8]
 00661616    mov         eax,dword ptr [ebp-4]
 00661619    call        00661114
>0066161E    jmp         00661640
 00661620    mov         eax,dword ptr [ebp-8]
 00661623    mov         ax,word ptr [eax]
 00661626    mov         dx,101
 0066162A    call        0065F99C
>0066162F    jmp         00661640
 00661631    mov         edx,dword ptr [ebp-8]
 00661634    mov         eax,dword ptr [ebp-4]
 00661637    mov         cx,word ptr [ebp-0C]
 0066163B    call        006612C4
 00661640    mov         esp,ebp
 00661642    pop         ebp
 00661643    ret
end;*}

//00661648
{*procedure sub_00661648(?:?; ?:?; ?:?);
begin
 00661648    push        ebp
 00661649    mov         ebp,esp
 0066164B    add         esp,0FFFFFFF0
 0066164E    push        ebx
 0066164F    mov         dword ptr [ebp-0C],ecx
 00661652    mov         dword ptr [ebp-8],edx
 00661655    mov         dword ptr [ebp-4],eax
 00661658    mov         eax,dword ptr [ebp-8]
 0066165B    cmp         word ptr [eax],400C
>00661660    jne         00661677
 00661662    mov         eax,dword ptr [ebp-8]
 00661665    mov         eax,dword ptr [eax+8]
 00661668    mov         edx,eax
 0066166A    mov         eax,dword ptr [ebp-4]
 0066166D    mov         ecx,dword ptr [ebp-0C]
 00661670    call        00661648
>00661675    jmp         006616CF
 00661677    cmp         dword ptr [ebp-0C],100
>0066167E    je          00661689
 00661680    cmp         dword ptr [ebp-0C],101
>00661687    jne         0066169A
 00661689    mov         eax,dword ptr [ebp-8]
 0066168C    mov         ax,word ptr [eax]
 0066168F    mov         dx,word ptr [ebp-0C]
 00661693    call        0065F99C
>00661698    jmp         006616CF
 0066169A    lea         edx,[ebp-10]
 0066169D    mov         eax,dword ptr [ebp-8]
 006616A0    mov         ax,word ptr [eax]
 006616A3    call        006689A0
 006616A8    test        al,al
>006616AA    je          006616C1
 006616AC    mov         ax,word ptr [ebp-0C]
 006616B0    push        eax
 006616B1    mov         ecx,dword ptr [ebp-8]
 006616B4    mov         edx,dword ptr [ebp-4]
 006616B7    mov         eax,dword ptr [ebp-10]
 006616BA    mov         ebx,dword ptr [eax]
 006616BC    call        dword ptr [ebx+1C]
>006616BF    jmp         006616CF
 006616C1    mov         edx,dword ptr [ebp-8]
 006616C4    mov         eax,dword ptr [ebp-4]
 006616C7    mov         ecx,dword ptr [ebp-0C]
 006616CA    call        00661390
 006616CF    pop         ebx
 006616D0    mov         esp,ebp
 006616D2    pop         ebp
 006616D3    ret
end;*}

//006616D4
{*function sub_006616D4(?:?):?;
begin
 006616D4    push        ebp
 006616D5    mov         ebp,esp
 006616D7    add         esp,0FFFFFFEC
 006616DA    xor         edx,edx
 006616DC    mov         dword ptr [ebp-14],edx
 006616DF    mov         dword ptr [ebp-0C],edx
 006616E2    mov         dword ptr [ebp-4],eax
 006616E5    xor         eax,eax
 006616E7    push        ebp
 006616E8    push        661763
 006616ED    push        dword ptr fs:[eax]
 006616F0    mov         dword ptr fs:[eax],esp
 006616F3    mov         edx,dword ptr [ebp-4]
 006616F6    lea         eax,[ebp-0C]
 006616F9    call        00663964
 006616FE    lea         eax,[ebp-8]
 00661701    push        eax
 00661702    push        0
 00661704    push        400
 00661709    lea         eax,[ebp-14]
 0066170C    mov         edx,dword ptr [ebp-0C]
 0066170F    call        @WStrFromLStr
 00661714    mov         eax,dword ptr [ebp-14]
 00661717    push        eax
 00661718    call        OLEAUT32.64
 0066171D    mov         dword ptr [ebp-10],eax
 00661720    cmp         dword ptr [ebp-10],0
>00661724    je          00661745
 00661726    lea         edx,[ebp-8]
 00661729    mov         eax,dword ptr [ebp-0C]
 0066172C    call        00657D08
 00661731    test        al,al
>00661733    jne         00661745
 00661735    mov         cx,3
 00661739    mov         dx,100
 0066173D    mov         eax,dword ptr [ebp-10]
 00661740    call        0065FDC4
 00661745    xor         eax,eax
 00661747    pop         edx
 00661748    pop         ecx
 00661749    pop         ecx
 0066174A    mov         dword ptr fs:[eax],edx
 0066174D    push        66176A
 00661752    lea         eax,[ebp-14]
 00661755    call        @WStrClr
 0066175A    lea         eax,[ebp-0C]
 0066175D    call        @LStrClr
 00661762    ret
>00661763    jmp         @HandleFinally
>00661768    jmp         00661752
 0066176A    mov         eax,dword ptr [ebp-8]
 0066176D    mov         esp,ebp
 0066176F    pop         ebp
 00661770    ret
end;*}

//00661774
{*function sub_00661774(?:?):?;
begin
 00661774    push        ebp
 00661775    mov         ebp,esp
 00661777    add         esp,0FFFFFFE8
 0066177A    mov         dword ptr [ebp-4],eax
 0066177D    lea         eax,[ebp-18]
 00661780    push        eax
 00661781    call        OLEAUT32.8
 00661786    push        3
 00661788    push        4
 0066178A    push        400
 0066178F    mov         eax,dword ptr [ebp-4]
 00661792    push        eax
 00661793    lea         eax,[ebp-18]
 00661796    push        eax
 00661797    call        OLEAUT32.147
 0066179C    mov         edx,dword ptr [ebp-4]
 0066179F    mov         dx,word ptr [edx]
 006617A2    mov         cx,3
 006617A6    call        0065FDC4
 006617AB    mov         eax,dword ptr [ebp-10]
 006617AE    mov         dword ptr [ebp-8],eax
 006617B1    mov         eax,dword ptr [ebp-8]
 006617B4    mov         esp,ebp
 006617B6    pop         ebp
 006617B7    ret
end;*}

//006617B8
{*function sub_006617B8(?:?):?;
begin
 006617B8    push        ebp
 006617B9    mov         ebp,esp
 006617BB    add         esp,0FFFFFFE8
 006617BE    mov         dword ptr [ebp-4],eax
 006617C1    lea         eax,[ebp-18]
 006617C4    push        eax
 006617C5    call        OLEAUT32.8
 006617CA    xor         eax,eax
 006617CC    push        ebp
 006617CD    push        66180D
 006617D2    push        dword ptr fs:[eax]
 006617D5    mov         dword ptr fs:[eax],esp
 006617D8    mov         edx,dword ptr [ebp-4]
 006617DB    lea         eax,[ebp-18]
 006617DE    call        006607C0
 006617E3    lea         eax,[ebp-18]
 006617E6    call        dword ptr ds:[6ED154]
 006617EC    lea         eax,[ebp-18]
 006617EF    call        0066186C
 006617F4    mov         dword ptr [ebp-8],eax
 006617F7    xor         eax,eax
 006617F9    pop         edx
 006617FA    pop         ecx
 006617FB    pop         ecx
 006617FC    mov         dword ptr fs:[eax],edx
 006617FF    push        661814
 00661804    lea         eax,[ebp-18]
 00661807    call        00660244
 0066180C    ret
>0066180D    jmp         @HandleFinally
>00661812    jmp         00661804
 00661814    mov         eax,dword ptr [ebp-8]
 00661817    mov         esp,ebp
 00661819    pop         ebp
 0066181A    ret
end;*}

//0066181C
{*function sub_0066181C(?:?; ?:?):?;
begin
 0066181C    push        ebp
 0066181D    mov         ebp,esp
 0066181F    add         esp,0FFFFFFE0
 00661822    push        ebx
 00661823    mov         dword ptr [ebp-8],edx
 00661826    mov         dword ptr [ebp-4],eax
 00661829    lea         edx,[ebp-10]
 0066182C    mov         eax,dword ptr [ebp-4]
 0066182F    mov         ax,word ptr [eax]
 00661832    call        006689A0
 00661837    mov         byte ptr [ebp-9],al
 0066183A    cmp         byte ptr [ebp-9],0
>0066183E    je          00661861
 00661840    lea         eax,[ebp-20]
 00661843    push        eax
 00661844    call        OLEAUT32.8
 00661849    push        3
 0066184B    mov         ecx,dword ptr [ebp-4]
 0066184E    lea         edx,[ebp-20]
 00661851    mov         eax,dword ptr [ebp-10]
 00661854    mov         ebx,dword ptr [eax]
 00661856    call        dword ptr [ebx+1C]
 00661859    mov         eax,dword ptr [ebp-8]
 0066185C    mov         edx,dword ptr [ebp-18]
 0066185F    mov         dword ptr [eax],edx
 00661861    mov         al,byte ptr [ebp-9]
 00661864    pop         ebx
 00661865    mov         esp,ebp
 00661867    pop         ebp
 00661868    ret
end;*}

//0066186C
{*function sub_0066186C(?:?):?;
begin
 0066186C    push        ebp
 0066186D    mov         ebp,esp
 0066186F    add         esp,0FFFFFFF8
 00661872    push        ebx
 00661873    push        esi
 00661874    push        edi
 00661875    mov         dword ptr [ebp-4],eax
 00661878    xor         eax,eax
 0066187A    push        ebp
 0066187B    push        661C6B
 00661880    push        dword ptr fs:[eax]
 00661883    mov         dword ptr fs:[eax],esp
 00661886    mov         eax,dword ptr [ebp-4]
 00661889    movzx       eax,word ptr [eax]
 0066188C    cmp         eax,14
>0066188F    ja          00661A46
 00661895    jmp         dword ptr [eax*4+66189C]
 00661895    dd          006618F0
 00661895    dd          00661A46
 00661895    dd          006618FA
 00661895    dd          00661909
 00661895    dd          00661917
 00661895    dd          00661938
 00661895    dd          00661959
 00661895    dd          00661980
 00661895    dd          006619A1
 00661895    dd          00661A36
 00661895    dd          00661A46
 00661895    dd          006619B1
 00661895    dd          00661A23
 00661895    dd          00661A36
 00661895    dd          00661A46
 00661895    dd          00661A46
 00661895    dd          006619C0
 00661895    dd          006619CF
 00661895    dd          006619DE
 00661895    dd          006619ED
 00661895    dd          00661A04
 006618F0    xor         eax,eax
 006618F2    mov         dword ptr [ebp-8],eax
>006618F5    jmp         00661C61
 006618FA    mov         eax,dword ptr [ebp-4]
 006618FD    movsx       eax,word ptr [eax+8]
 00661901    mov         dword ptr [ebp-8],eax
>00661904    jmp         00661C61
 00661909    mov         eax,dword ptr [ebp-4]
 0066190C    mov         eax,dword ptr [eax+8]
 0066190F    mov         dword ptr [ebp-8],eax
>00661912    jmp         00661C61
 00661917    mov         eax,dword ptr [ebp-4]
 0066191A    fld         dword ptr [eax+8]
 0066191D    call        @ROUND
 00661922    push        eax
 00661923    sar         eax,1F
 00661926    cmp         eax,edx
 00661928    pop         eax
>00661929    je          00661930
 0066192B    call        @BoundErr
 00661930    mov         dword ptr [ebp-8],eax
>00661933    jmp         00661C61
 00661938    mov         eax,dword ptr [ebp-4]
 0066193B    fld         qword ptr [eax+8]
 0066193E    call        @ROUND
 00661943    push        eax
 00661944    sar         eax,1F
 00661947    cmp         eax,edx
 00661949    pop         eax
>0066194A    je          00661951
 0066194C    call        @BoundErr
 00661951    mov         dword ptr [ebp-8],eax
>00661954    jmp         00661C61
 00661959    mov         eax,dword ptr [ebp-4]
 0066195C    fild        qword ptr [eax+8]
 0066195F    fdiv        dword ptr ds:[661C90];10000:Single
 00661965    call        @ROUND
 0066196A    push        eax
 0066196B    sar         eax,1F
 0066196E    cmp         eax,edx
 00661970    pop         eax
>00661971    je          00661978
 00661973    call        @BoundErr
 00661978    mov         dword ptr [ebp-8],eax
>0066197B    jmp         00661C61
 00661980    mov         eax,dword ptr [ebp-4]
 00661983    fld         qword ptr [eax+8]
 00661986    call        @ROUND
 0066198B    push        eax
 0066198C    sar         eax,1F
 0066198F    cmp         eax,edx
 00661991    pop         eax
>00661992    je          00661999
 00661994    call        @BoundErr
 00661999    mov         dword ptr [ebp-8],eax
>0066199C    jmp         00661C61
 006619A1    mov         eax,dword ptr [ebp-4]
 006619A4    call        006616D4
 006619A9    mov         dword ptr [ebp-8],eax
>006619AC    jmp         00661C61
 006619B1    mov         eax,dword ptr [ebp-4]
 006619B4    movsx       eax,word ptr [eax+8]
 006619B8    mov         dword ptr [ebp-8],eax
>006619BB    jmp         00661C61
 006619C0    mov         eax,dword ptr [ebp-4]
 006619C3    movsx       eax,byte ptr [eax+8]
 006619C7    mov         dword ptr [ebp-8],eax
>006619CA    jmp         00661C61
 006619CF    mov         eax,dword ptr [ebp-4]
 006619D2    movzx       eax,byte ptr [eax+8]
 006619D6    mov         dword ptr [ebp-8],eax
>006619D9    jmp         00661C61
 006619DE    mov         eax,dword ptr [ebp-4]
 006619E1    movzx       eax,word ptr [eax+8]
 006619E5    mov         dword ptr [ebp-8],eax
>006619E8    jmp         00661C61
 006619ED    mov         eax,dword ptr [ebp-4]
 006619F0    mov         eax,dword ptr [eax+8]
 006619F3    test        eax,eax
>006619F5    jns         006619FC
 006619F7    call        @BoundErr
 006619FC    mov         dword ptr [ebp-8],eax
>006619FF    jmp         00661C61
 00661A04    mov         eax,dword ptr [ebp-4]
 00661A07    mov         edx,dword ptr [eax+0C]
 00661A0A    mov         eax,dword ptr [eax+8]
 00661A0D    push        eax
 00661A0E    sar         eax,1F
 00661A11    cmp         eax,edx
 00661A13    pop         eax
>00661A14    je          00661A1B
 00661A16    call        @BoundErr
 00661A1B    mov         dword ptr [ebp-8],eax
>00661A1E    jmp         00661C61
 00661A23    mov         eax,dword ptr [ebp-4]
 00661A26    mov         eax,dword ptr [eax+8]
 00661A29    call        0066186C
 00661A2E    mov         dword ptr [ebp-8],eax
>00661A31    jmp         00661C61
 00661A36    mov         eax,dword ptr [ebp-4]
 00661A39    call        00661774
 00661A3E    mov         dword ptr [ebp-8],eax
>00661A41    jmp         00661C61
 00661A46    mov         eax,dword ptr [ebp-4]
 00661A49    mov         ax,word ptr [eax]
 00661A4C    sub         ax,100
>00661A50    je          00661A59
 00661A52    dec         ax
>00661A55    je          00661A69
>00661A57    jmp         00661A79
 00661A59    mov         eax,dword ptr [ebp-4]
 00661A5C    call        006616D4
 00661A61    mov         dword ptr [ebp-8],eax
>00661A64    jmp         00661C61
 00661A69    mov         eax,dword ptr [ebp-4]
 00661A6C    call        006617B8
 00661A71    mov         dword ptr [ebp-8],eax
>00661A74    jmp         00661C61
 00661A79    mov         eax,dword ptr [ebp-4]
 00661A7C    test        byte ptr [eax+1],40
>00661A80    je          00661C47
 00661A86    mov         eax,dword ptr [ebp-4]
 00661A89    movzx       eax,word ptr [eax]
 00661A8C    and         eax,0FFFFBFFF
 00661A91    cmp         eax,14
>00661A94    ja          00661C3A
 00661A9A    jmp         dword ptr [eax*4+661AA1]
 00661A9A    dd          00661C3A
 00661A9A    dd          00661C3A
 00661A9A    dd          00661AF5
 00661A9A    dd          00661B06
 00661A9A    dd          00661B16
 00661A9A    dd          00661B39
 00661A9A    dd          00661B5C
 00661A9A    dd          00661B85
 00661A9A    dd          00661BA8
 00661A9A    dd          00661C3A
 00661A9A    dd          00661C3A
 00661A9A    dd          00661BB8
 00661A9A    dd          00661C2A
 00661A9A    dd          00661C3A
 00661A9A    dd          00661C3A
 00661A9A    dd          00661C3A
 00661A9A    dd          00661BC9
 00661A9A    dd          00661BDA
 00661A9A    dd          00661BE8
 00661A9A    dd          00661BF6
 00661A9A    dd          00661C0C
 00661AF5    mov         eax,dword ptr [ebp-4]
 00661AF8    mov         eax,dword ptr [eax+8]
 00661AFB    movsx       eax,word ptr [eax]
 00661AFE    mov         dword ptr [ebp-8],eax
>00661B01    jmp         00661C61
 00661B06    mov         eax,dword ptr [ebp-4]
 00661B09    mov         eax,dword ptr [eax+8]
 00661B0C    mov         eax,dword ptr [eax]
 00661B0E    mov         dword ptr [ebp-8],eax
>00661B11    jmp         00661C61
 00661B16    mov         eax,dword ptr [ebp-4]
 00661B19    mov         eax,dword ptr [eax+8]
 00661B1C    fld         dword ptr [eax]
 00661B1E    call        @ROUND
 00661B23    push        eax
 00661B24    sar         eax,1F
 00661B27    cmp         eax,edx
 00661B29    pop         eax
>00661B2A    je          00661B31
 00661B2C    call        @BoundErr
 00661B31    mov         dword ptr [ebp-8],eax
>00661B34    jmp         00661C61
 00661B39    mov         eax,dword ptr [ebp-4]
 00661B3C    mov         eax,dword ptr [eax+8]
 00661B3F    fld         qword ptr [eax]
 00661B41    call        @ROUND
 00661B46    push        eax
 00661B47    sar         eax,1F
 00661B4A    cmp         eax,edx
 00661B4C    pop         eax
>00661B4D    je          00661B54
 00661B4F    call        @BoundErr
 00661B54    mov         dword ptr [ebp-8],eax
>00661B57    jmp         00661C61
 00661B5C    mov         eax,dword ptr [ebp-4]
 00661B5F    mov         eax,dword ptr [eax+8]
 00661B62    fild        qword ptr [eax]
 00661B64    fdiv        dword ptr ds:[661C90];10000:Single
 00661B6A    call        @ROUND
 00661B6F    push        eax
 00661B70    sar         eax,1F
 00661B73    cmp         eax,edx
 00661B75    pop         eax
>00661B76    je          00661B7D
 00661B78    call        @BoundErr
 00661B7D    mov         dword ptr [ebp-8],eax
>00661B80    jmp         00661C61
 00661B85    mov         eax,dword ptr [ebp-4]
 00661B88    mov         eax,dword ptr [eax+8]
 00661B8B    fld         qword ptr [eax]
 00661B8D    call        @ROUND
 00661B92    push        eax
 00661B93    sar         eax,1F
 00661B96    cmp         eax,edx
 00661B98    pop         eax
>00661B99    je          00661BA0
 00661B9B    call        @BoundErr
 00661BA0    mov         dword ptr [ebp-8],eax
>00661BA3    jmp         00661C61
 00661BA8    mov         eax,dword ptr [ebp-4]
 00661BAB    call        006616D4
 00661BB0    mov         dword ptr [ebp-8],eax
>00661BB3    jmp         00661C61
 00661BB8    mov         eax,dword ptr [ebp-4]
 00661BBB    mov         eax,dword ptr [eax+8]
 00661BBE    movsx       eax,word ptr [eax]
 00661BC1    mov         dword ptr [ebp-8],eax
>00661BC4    jmp         00661C61
 00661BC9    mov         eax,dword ptr [ebp-4]
 00661BCC    mov         eax,dword ptr [eax+8]
 00661BCF    movsx       eax,byte ptr [eax]
 00661BD2    mov         dword ptr [ebp-8],eax
>00661BD5    jmp         00661C61
 00661BDA    mov         eax,dword ptr [ebp-4]
 00661BDD    mov         eax,dword ptr [eax+8]
 00661BE0    movzx       eax,byte ptr [eax]
 00661BE3    mov         dword ptr [ebp-8],eax
>00661BE6    jmp         00661C61
 00661BE8    mov         eax,dword ptr [ebp-4]
 00661BEB    mov         eax,dword ptr [eax+8]
 00661BEE    movzx       eax,word ptr [eax]
 00661BF1    mov         dword ptr [ebp-8],eax
>00661BF4    jmp         00661C61
 00661BF6    mov         eax,dword ptr [ebp-4]
 00661BF9    mov         eax,dword ptr [eax+8]
 00661BFC    mov         eax,dword ptr [eax]
 00661BFE    test        eax,eax
>00661C00    jns         00661C07
 00661C02    call        @BoundErr
 00661C07    mov         dword ptr [ebp-8],eax
>00661C0A    jmp         00661C61
 00661C0C    mov         eax,dword ptr [ebp-4]
 00661C0F    mov         eax,dword ptr [eax+8]
 00661C12    mov         edx,dword ptr [eax+4]
 00661C15    mov         eax,dword ptr [eax]
 00661C17    push        eax
 00661C18    sar         eax,1F
 00661C1B    cmp         eax,edx
 00661C1D    pop         eax
>00661C1E    je          00661C25
 00661C20    call        @BoundErr
 00661C25    mov         dword ptr [ebp-8],eax
>00661C28    jmp         00661C61
 00661C2A    mov         eax,dword ptr [ebp-4]
 00661C2D    mov         eax,dword ptr [eax+8]
 00661C30    call        0066186C
 00661C35    mov         dword ptr [ebp-8],eax
>00661C38    jmp         00661C61
 00661C3A    mov         eax,dword ptr [ebp-4]
 00661C3D    call        00661774
 00661C42    mov         dword ptr [ebp-8],eax
>00661C45    jmp         00661C61
 00661C47    lea         edx,[ebp-8]
 00661C4A    mov         eax,dword ptr [ebp-4]
 00661C4D    call        0066181C
 00661C52    test        al,al
>00661C54    jne         00661C61
 00661C56    mov         eax,dword ptr [ebp-4]
 00661C59    call        00661774
 00661C5E    mov         dword ptr [ebp-8],eax
 00661C61    xor         eax,eax
 00661C63    pop         edx
 00661C64    pop         ecx
 00661C65    pop         ecx
 00661C66    mov         dword ptr fs:[eax],edx
>00661C69    jmp         00661C84
>00661C6B    jmp         @HandleAnyException
 00661C70    mov         eax,dword ptr [ebp-4]
 00661C73    mov         ax,word ptr [eax]
 00661C76    mov         dx,3
 00661C7A    call        0065FE18
 00661C7F    call        @DoneExcept
 00661C84    mov         eax,dword ptr [ebp-8]
 00661C87    pop         edi
 00661C88    pop         esi
 00661C89    pop         ebx
 00661C8A    pop         ecx
 00661C8B    pop         ecx
 00661C8C    pop         ebp
 00661C8D    ret
end;*}

//00661C94
{*function sub_00661C94(?:?):?;
begin
 00661C94    push        ebp
 00661C95    mov         ebp,esp
 00661C97    add         esp,0FFFFFFEC
 00661C9A    xor         edx,edx
 00661C9C    mov         dword ptr [ebp-14],edx
 00661C9F    mov         dword ptr [ebp-4],eax
 00661CA2    xor         eax,eax
 00661CA4    push        ebp
 00661CA5    push        661CDF
 00661CAA    push        dword ptr fs:[eax]
 00661CAD    mov         dword ptr fs:[eax],esp
 00661CB0    mov         edx,dword ptr [ebp-4]
 00661CB3    lea         eax,[ebp-14]
 00661CB6    call        00663964
 00661CBB    mov         eax,dword ptr [ebp-14]
 00661CBE    call        00657D34
 00661CC3    mov         dword ptr [ebp-10],eax
 00661CC6    mov         dword ptr [ebp-0C],edx
 00661CC9    xor         eax,eax
 00661CCB    pop         edx
 00661CCC    pop         ecx
 00661CCD    pop         ecx
 00661CCE    mov         dword ptr fs:[eax],edx
 00661CD1    push        661CE6
 00661CD6    lea         eax,[ebp-14]
 00661CD9    call        @LStrClr
 00661CDE    ret
>00661CDF    jmp         @HandleFinally
>00661CE4    jmp         00661CD6
 00661CE6    mov         eax,dword ptr [ebp-10]
 00661CE9    mov         edx,dword ptr [ebp-0C]
 00661CEC    mov         esp,ebp
 00661CEE    pop         ebp
 00661CEF    ret
end;*}

//00661CF0
{*function sub_00661CF0(?:?):?;
begin
 00661CF0    push        ebp
 00661CF1    mov         ebp,esp
 00661CF3    add         esp,0FFFFFFE0
 00661CF6    push        ebx
 00661CF7    push        esi
 00661CF8    push        edi
 00661CF9    mov         dword ptr [ebp-4],eax
 00661CFC    lea         eax,[ebp-20]
 00661CFF    push        eax
 00661D00    call        OLEAUT32.8
 00661D05    push        5
 00661D07    push        4
 00661D09    push        400
 00661D0E    mov         eax,dword ptr [ebp-4]
 00661D11    push        eax
 00661D12    lea         eax,[ebp-20]
 00661D15    push        eax
 00661D16    call        OLEAUT32.147
 00661D1B    mov         edx,dword ptr [ebp-4]
 00661D1E    mov         dx,word ptr [edx]
 00661D21    mov         cx,14
 00661D25    call        0065FDC4
 00661D2A    xor         eax,eax
 00661D2C    push        ebp
 00661D2D    push        661D50
 00661D32    push        dword ptr fs:[eax]
 00661D35    mov         dword ptr fs:[eax],esp
 00661D38    fld         qword ptr [ebp-18]
 00661D3B    call        @ROUND
 00661D40    mov         dword ptr [ebp-10],eax
 00661D43    mov         dword ptr [ebp-0C],edx
 00661D46    xor         eax,eax
 00661D48    pop         edx
 00661D49    pop         ecx
 00661D4A    pop         ecx
 00661D4B    mov         dword ptr fs:[eax],edx
>00661D4E    jmp         00661D77
>00661D50    jmp         @HandleAnyException
 00661D55    mov         eax,dword ptr [ebp-4]
 00661D58    mov         ax,word ptr [eax]
 00661D5B    mov         dx,14
 00661D5F    call        0065FE18
 00661D64    mov         dword ptr [ebp-10],0
 00661D6B    mov         dword ptr [ebp-0C],0
 00661D72    call        @DoneExcept
 00661D77    mov         eax,dword ptr [ebp-10]
 00661D7A    mov         edx,dword ptr [ebp-0C]
 00661D7D    pop         edi
 00661D7E    pop         esi
 00661D7F    pop         ebx
 00661D80    mov         esp,ebp
 00661D82    pop         ebp
 00661D83    ret
end;*}

//00661D84
{*function sub_00661D84(?:?):?;
begin
 00661D84    push        ebp
 00661D85    mov         ebp,esp
 00661D87    add         esp,0FFFFFFE0
 00661D8A    mov         dword ptr [ebp-4],eax
 00661D8D    lea         eax,[ebp-20]
 00661D90    push        eax
 00661D91    call        OLEAUT32.8
 00661D96    xor         eax,eax
 00661D98    push        ebp
 00661D99    push        661DDC
 00661D9E    push        dword ptr fs:[eax]
 00661DA1    mov         dword ptr fs:[eax],esp
 00661DA4    mov         edx,dword ptr [ebp-4]
 00661DA7    lea         eax,[ebp-20]
 00661DAA    call        006607C0
 00661DAF    lea         eax,[ebp-20]
 00661DB2    call        dword ptr ds:[6ED154]
 00661DB8    lea         eax,[ebp-20]
 00661DBB    call        00661E44
 00661DC0    mov         dword ptr [ebp-10],eax
 00661DC3    mov         dword ptr [ebp-0C],edx
 00661DC6    xor         eax,eax
 00661DC8    pop         edx
 00661DC9    pop         ecx
 00661DCA    pop         ecx
 00661DCB    mov         dword ptr fs:[eax],edx
 00661DCE    push        661DE3
 00661DD3    lea         eax,[ebp-20]
 00661DD6    call        00660244
 00661DDB    ret
>00661DDC    jmp         @HandleFinally
>00661DE1    jmp         00661DD3
 00661DE3    mov         eax,dword ptr [ebp-10]
 00661DE6    mov         edx,dword ptr [ebp-0C]
 00661DE9    mov         esp,ebp
 00661DEB    pop         ebp
 00661DEC    ret
end;*}

//00661DF0
{*function sub_00661DF0(?:?; ?:Integer):?;
begin
 00661DF0    push        ebp
 00661DF1    mov         ebp,esp
 00661DF3    add         esp,0FFFFFFE0
 00661DF6    push        ebx
 00661DF7    mov         dword ptr [ebp-8],edx
 00661DFA    mov         dword ptr [ebp-4],eax
 00661DFD    lea         edx,[ebp-10]
 00661E00    mov         eax,dword ptr [ebp-4]
 00661E03    mov         ax,word ptr [eax]
 00661E06    call        006689A0
 00661E0B    mov         byte ptr [ebp-9],al
 00661E0E    cmp         byte ptr [ebp-9],0
>00661E12    je          00661E3B
 00661E14    lea         eax,[ebp-20]
 00661E17    push        eax
 00661E18    call        OLEAUT32.8
 00661E1D    push        14
 00661E1F    mov         ecx,dword ptr [ebp-4]
 00661E22    lea         edx,[ebp-20]
 00661E25    mov         eax,dword ptr [ebp-10]
 00661E28    mov         ebx,dword ptr [eax]
 00661E2A    call        dword ptr [ebx+1C]
 00661E2D    mov         eax,dword ptr [ebp-8]
 00661E30    mov         edx,dword ptr [ebp-18]
 00661E33    mov         dword ptr [eax],edx
 00661E35    mov         edx,dword ptr [ebp-14]
 00661E38    mov         dword ptr [eax+4],edx
 00661E3B    mov         al,byte ptr [ebp-9]
 00661E3E    pop         ebx
 00661E3F    mov         esp,ebp
 00661E41    pop         ebp
 00661E42    ret
end;*}

//00661E44
{*function sub_00661E44(?:?):?;
begin
 00661E44    push        ebp
 00661E45    mov         ebp,esp
 00661E47    add         esp,0FFFFFFF0
 00661E4A    push        ebx
 00661E4B    push        esi
 00661E4C    push        edi
 00661E4D    mov         dword ptr [ebp-4],eax
 00661E50    xor         eax,eax
 00661E52    push        ebp
 00661E53    push        662225
 00661E58    push        dword ptr fs:[eax]
 00661E5B    mov         dword ptr fs:[eax],esp
 00661E5E    mov         eax,dword ptr [ebp-4]
 00661E61    movzx       eax,word ptr [eax]
 00661E64    cmp         eax,14
>00661E67    ja          0066200F
 00661E6D    jmp         dword ptr [eax*4+661E74]
 00661E6D    dd          00661EC8
 00661E6D    dd          0066200F
 00661E6D    dd          00661EDB
 00661E6D    dd          00661EEE
 00661E6D    dd          00661F00
 00661E6D    dd          00661F16
 00661E6D    dd          00661F2C
 00661E6D    dd          00661F48
 00661E6D    dd          00661F5E
 00661E6D    dd          00661FFC
 00661E6D    dd          0066200F
 00661E6D    dd          00661F71
 00661E6D    dd          00661FE6
 00661E6D    dd          00661FFC
 00661E6D    dd          0066200F
 00661E6D    dd          0066200F
 00661E6D    dd          00661F84
 00661E6D    dd          00661F97
 00661E6D    dd          00661FAB
 00661E6D    dd          00661FBF
 00661E6D    dd          00661FD2
 00661EC8    mov         dword ptr [ebp-10],0
 00661ECF    mov         dword ptr [ebp-0C],0
>00661ED6    jmp         0066221B
 00661EDB    mov         eax,dword ptr [ebp-4]
 00661EDE    movsx       eax,word ptr [eax+8]
 00661EE2    cdq
 00661EE3    mov         dword ptr [ebp-10],eax
 00661EE6    mov         dword ptr [ebp-0C],edx
>00661EE9    jmp         0066221B
 00661EEE    mov         eax,dword ptr [ebp-4]
 00661EF1    mov         eax,dword ptr [eax+8]
 00661EF4    cdq
 00661EF5    mov         dword ptr [ebp-10],eax
 00661EF8    mov         dword ptr [ebp-0C],edx
>00661EFB    jmp         0066221B
 00661F00    mov         eax,dword ptr [ebp-4]
 00661F03    fld         dword ptr [eax+8]
 00661F06    call        @ROUND
 00661F0B    mov         dword ptr [ebp-10],eax
 00661F0E    mov         dword ptr [ebp-0C],edx
>00661F11    jmp         0066221B
 00661F16    mov         eax,dword ptr [ebp-4]
 00661F19    fld         qword ptr [eax+8]
 00661F1C    call        @ROUND
 00661F21    mov         dword ptr [ebp-10],eax
 00661F24    mov         dword ptr [ebp-0C],edx
>00661F27    jmp         0066221B
 00661F2C    mov         eax,dword ptr [ebp-4]
 00661F2F    fild        qword ptr [eax+8]
 00661F32    fdiv        dword ptr ds:[66224C];10000:Single
 00661F38    call        @ROUND
 00661F3D    mov         dword ptr [ebp-10],eax
 00661F40    mov         dword ptr [ebp-0C],edx
>00661F43    jmp         0066221B
 00661F48    mov         eax,dword ptr [ebp-4]
 00661F4B    fld         qword ptr [eax+8]
 00661F4E    call        @ROUND
 00661F53    mov         dword ptr [ebp-10],eax
 00661F56    mov         dword ptr [ebp-0C],edx
>00661F59    jmp         0066221B
 00661F5E    mov         eax,dword ptr [ebp-4]
 00661F61    call        00661C94
 00661F66    mov         dword ptr [ebp-10],eax
 00661F69    mov         dword ptr [ebp-0C],edx
>00661F6C    jmp         0066221B
 00661F71    mov         eax,dword ptr [ebp-4]
 00661F74    movsx       eax,word ptr [eax+8]
 00661F78    cdq
 00661F79    mov         dword ptr [ebp-10],eax
 00661F7C    mov         dword ptr [ebp-0C],edx
>00661F7F    jmp         0066221B
 00661F84    mov         eax,dword ptr [ebp-4]
 00661F87    movsx       eax,byte ptr [eax+8]
 00661F8B    cdq
 00661F8C    mov         dword ptr [ebp-10],eax
 00661F8F    mov         dword ptr [ebp-0C],edx
>00661F92    jmp         0066221B
 00661F97    mov         eax,dword ptr [ebp-4]
 00661F9A    movzx       eax,byte ptr [eax+8]
 00661F9E    xor         edx,edx
 00661FA0    mov         dword ptr [ebp-10],eax
 00661FA3    mov         dword ptr [ebp-0C],edx
>00661FA6    jmp         0066221B
 00661FAB    mov         eax,dword ptr [ebp-4]
 00661FAE    movzx       eax,word ptr [eax+8]
 00661FB2    xor         edx,edx
 00661FB4    mov         dword ptr [ebp-10],eax
 00661FB7    mov         dword ptr [ebp-0C],edx
>00661FBA    jmp         0066221B
 00661FBF    mov         eax,dword ptr [ebp-4]
 00661FC2    mov         eax,dword ptr [eax+8]
 00661FC5    xor         edx,edx
 00661FC7    mov         dword ptr [ebp-10],eax
 00661FCA    mov         dword ptr [ebp-0C],edx
>00661FCD    jmp         0066221B
 00661FD2    mov         eax,dword ptr [ebp-4]
 00661FD5    mov         edx,dword ptr [eax+8]
 00661FD8    mov         dword ptr [ebp-10],edx
 00661FDB    mov         edx,dword ptr [eax+0C]
 00661FDE    mov         dword ptr [ebp-0C],edx
>00661FE1    jmp         0066221B
 00661FE6    mov         eax,dword ptr [ebp-4]
 00661FE9    mov         eax,dword ptr [eax+8]
 00661FEC    call        00661E44
 00661FF1    mov         dword ptr [ebp-10],eax
 00661FF4    mov         dword ptr [ebp-0C],edx
>00661FF7    jmp         0066221B
 00661FFC    mov         eax,dword ptr [ebp-4]
 00661FFF    call        00661CF0
 00662004    mov         dword ptr [ebp-10],eax
 00662007    mov         dword ptr [ebp-0C],edx
>0066200A    jmp         0066221B
 0066200F    mov         eax,dword ptr [ebp-4]
 00662012    mov         ax,word ptr [eax]
 00662015    sub         ax,100
>00662019    je          00662022
 0066201B    dec         ax
>0066201E    je          00662035
>00662020    jmp         00662048
 00662022    mov         eax,dword ptr [ebp-4]
 00662025    call        00661C94
 0066202A    mov         dword ptr [ebp-10],eax
 0066202D    mov         dword ptr [ebp-0C],edx
>00662030    jmp         0066221B
 00662035    mov         eax,dword ptr [ebp-4]
 00662038    call        00661D84
 0066203D    mov         dword ptr [ebp-10],eax
 00662040    mov         dword ptr [ebp-0C],edx
>00662043    jmp         0066221B
 00662048    mov         eax,dword ptr [ebp-4]
 0066204B    test        byte ptr [eax+1],40
>0066204F    je          006621FE
 00662055    mov         eax,dword ptr [ebp-4]
 00662058    movzx       eax,word ptr [eax]
 0066205B    and         eax,0FFFFBFFF
 00662060    cmp         eax,14
>00662063    ja          006621EE
 00662069    jmp         dword ptr [eax*4+662070]
 00662069    dd          006621EE
 00662069    dd          006621EE
 00662069    dd          006620C4
 00662069    dd          006620D9
 00662069    dd          006620ED
 00662069    dd          00662105
 00662069    dd          0066211D
 00662069    dd          0066213B
 00662069    dd          00662153
 00662069    dd          006621EE
 00662069    dd          006621EE
 00662069    dd          00662166
 00662069    dd          006621DB
 00662069    dd          006621EE
 00662069    dd          006621EE
 00662069    dd          006621EE
 00662069    dd          0066217B
 00662069    dd          00662190
 00662069    dd          006621A3
 00662069    dd          006621B6
 00662069    dd          006621C8
 006620C4    mov         eax,dword ptr [ebp-4]
 006620C7    mov         eax,dword ptr [eax+8]
 006620CA    movsx       eax,word ptr [eax]
 006620CD    cdq
 006620CE    mov         dword ptr [ebp-10],eax
 006620D1    mov         dword ptr [ebp-0C],edx
>006620D4    jmp         0066221B
 006620D9    mov         eax,dword ptr [ebp-4]
 006620DC    mov         eax,dword ptr [eax+8]
 006620DF    mov         eax,dword ptr [eax]
 006620E1    cdq
 006620E2    mov         dword ptr [ebp-10],eax
 006620E5    mov         dword ptr [ebp-0C],edx
>006620E8    jmp         0066221B
 006620ED    mov         eax,dword ptr [ebp-4]
 006620F0    mov         eax,dword ptr [eax+8]
 006620F3    fld         dword ptr [eax]
 006620F5    call        @ROUND
 006620FA    mov         dword ptr [ebp-10],eax
 006620FD    mov         dword ptr [ebp-0C],edx
>00662100    jmp         0066221B
 00662105    mov         eax,dword ptr [ebp-4]
 00662108    mov         eax,dword ptr [eax+8]
 0066210B    fld         qword ptr [eax]
 0066210D    call        @ROUND
 00662112    mov         dword ptr [ebp-10],eax
 00662115    mov         dword ptr [ebp-0C],edx
>00662118    jmp         0066221B
 0066211D    mov         eax,dword ptr [ebp-4]
 00662120    mov         eax,dword ptr [eax+8]
 00662123    fild        qword ptr [eax]
 00662125    fdiv        dword ptr ds:[66224C];10000:Single
 0066212B    call        @ROUND
 00662130    mov         dword ptr [ebp-10],eax
 00662133    mov         dword ptr [ebp-0C],edx
>00662136    jmp         0066221B
 0066213B    mov         eax,dword ptr [ebp-4]
 0066213E    mov         eax,dword ptr [eax+8]
 00662141    fld         qword ptr [eax]
 00662143    call        @ROUND
 00662148    mov         dword ptr [ebp-10],eax
 0066214B    mov         dword ptr [ebp-0C],edx
>0066214E    jmp         0066221B
 00662153    mov         eax,dword ptr [ebp-4]
 00662156    call        00661C94
 0066215B    mov         dword ptr [ebp-10],eax
 0066215E    mov         dword ptr [ebp-0C],edx
>00662161    jmp         0066221B
 00662166    mov         eax,dword ptr [ebp-4]
 00662169    mov         eax,dword ptr [eax+8]
 0066216C    movsx       eax,word ptr [eax]
 0066216F    cdq
 00662170    mov         dword ptr [ebp-10],eax
 00662173    mov         dword ptr [ebp-0C],edx
>00662176    jmp         0066221B
 0066217B    mov         eax,dword ptr [ebp-4]
 0066217E    mov         eax,dword ptr [eax+8]
 00662181    movsx       eax,byte ptr [eax]
 00662184    cdq
 00662185    mov         dword ptr [ebp-10],eax
 00662188    mov         dword ptr [ebp-0C],edx
>0066218B    jmp         0066221B
 00662190    mov         eax,dword ptr [ebp-4]
 00662193    mov         eax,dword ptr [eax+8]
 00662196    movzx       eax,byte ptr [eax]
 00662199    xor         edx,edx
 0066219B    mov         dword ptr [ebp-10],eax
 0066219E    mov         dword ptr [ebp-0C],edx
>006621A1    jmp         0066221B
 006621A3    mov         eax,dword ptr [ebp-4]
 006621A6    mov         eax,dword ptr [eax+8]
 006621A9    movzx       eax,word ptr [eax]
 006621AC    xor         edx,edx
 006621AE    mov         dword ptr [ebp-10],eax
 006621B1    mov         dword ptr [ebp-0C],edx
>006621B4    jmp         0066221B
 006621B6    mov         eax,dword ptr [ebp-4]
 006621B9    mov         eax,dword ptr [eax+8]
 006621BC    mov         eax,dword ptr [eax]
 006621BE    xor         edx,edx
 006621C0    mov         dword ptr [ebp-10],eax
 006621C3    mov         dword ptr [ebp-0C],edx
>006621C6    jmp         0066221B
 006621C8    mov         eax,dword ptr [ebp-4]
 006621CB    mov         eax,dword ptr [eax+8]
 006621CE    mov         edx,dword ptr [eax]
 006621D0    mov         dword ptr [ebp-10],edx
 006621D3    mov         edx,dword ptr [eax+4]
 006621D6    mov         dword ptr [ebp-0C],edx
>006621D9    jmp         0066221B
 006621DB    mov         eax,dword ptr [ebp-4]
 006621DE    mov         eax,dword ptr [eax+8]
 006621E1    call        00661E44
 006621E6    mov         dword ptr [ebp-10],eax
 006621E9    mov         dword ptr [ebp-0C],edx
>006621EC    jmp         0066221B
 006621EE    mov         eax,dword ptr [ebp-4]
 006621F1    call        00661CF0
 006621F6    mov         dword ptr [ebp-10],eax
 006621F9    mov         dword ptr [ebp-0C],edx
>006621FC    jmp         0066221B
 006621FE    lea         edx,[ebp-10]
 00662201    mov         eax,dword ptr [ebp-4]
 00662204    call        00661DF0
 00662209    test        al,al
>0066220B    jne         0066221B
 0066220D    mov         eax,dword ptr [ebp-4]
 00662210    call        00661CF0
 00662215    mov         dword ptr [ebp-10],eax
 00662218    mov         dword ptr [ebp-0C],edx
 0066221B    xor         eax,eax
 0066221D    pop         edx
 0066221E    pop         ecx
 0066221F    pop         ecx
 00662220    mov         dword ptr fs:[eax],edx
>00662223    jmp         0066223E
>00662225    jmp         @HandleAnyException
 0066222A    mov         eax,dword ptr [ebp-4]
 0066222D    mov         ax,word ptr [eax]
 00662230    mov         dx,14
 00662234    call        0065FE18
 00662239    call        @DoneExcept
 0066223E    mov         eax,dword ptr [ebp-10]
 00662241    mov         edx,dword ptr [ebp-0C]
 00662244    pop         edi
 00662245    pop         esi
 00662246    pop         ebx
 00662247    mov         esp,ebp
 00662249    pop         ebp
 0066224A    ret
end;*}

//00662250
{*function sub_00662250(?:?):?;
begin
 00662250    push        ebp
 00662251    mov         ebp,esp
 00662253    add         esp,0FFFFFFEC
 00662256    xor         edx,edx
 00662258    mov         dword ptr [ebp-14],edx
 0066225B    mov         dword ptr [ebp-0C],edx
 0066225E    mov         dword ptr [ebp-4],eax
 00662261    xor         eax,eax
 00662263    push        ebp
 00662264    push        6622CF
 00662269    push        dword ptr fs:[eax]
 0066226C    mov         dword ptr fs:[eax],esp
 0066226F    mov         edx,dword ptr [ebp-4]
 00662272    lea         eax,[ebp-0C]
 00662275    call        00663964
 0066227A    lea         eax,[ebp-0E]
 0066227D    push        eax
 0066227E    push        0
 00662280    push        400
 00662285    lea         eax,[ebp-14]
 00662288    mov         edx,dword ptr [ebp-0C]
 0066228B    call        @WStrFromLStr
 00662290    mov         eax,dword ptr [ebp-14]
 00662293    push        eax
 00662294    call        OLEAUT32.125
 00662299    mov         cx,0B
 0066229D    mov         dx,100
 006622A1    call        0065FDC4
 006622A6    cmp         word ptr [ebp-0E],1
 006622AB    sbb         eax,eax
 006622AD    inc         eax
 006622AE    mov         byte ptr [ebp-5],al
 006622B1    xor         eax,eax
 006622B3    pop         edx
 006622B4    pop         ecx
 006622B5    pop         ecx
 006622B6    mov         dword ptr fs:[eax],edx
 006622B9    push        6622D6
 006622BE    lea         eax,[ebp-14]
 006622C1    call        @WStrClr
 006622C6    lea         eax,[ebp-0C]
 006622C9    call        @LStrClr
 006622CE    ret
>006622CF    jmp         @HandleFinally
>006622D4    jmp         006622BE
 006622D6    mov         al,byte ptr [ebp-5]
 006622D9    mov         esp,ebp
 006622DB    pop         ebp
 006622DC    ret
end;*}

//006622E0
{*function sub_006622E0(?:?):?;
begin
 006622E0    push        ebp
 006622E1    mov         ebp,esp
 006622E3    add         esp,0FFFFFFE8
 006622E6    mov         dword ptr [ebp-4],eax
 006622E9    lea         eax,[ebp-15]
 006622EC    push        eax
 006622ED    call        OLEAUT32.8
 006622F2    push        0B
 006622F4    push        4
 006622F6    push        400
 006622FB    mov         eax,dword ptr [ebp-4]
 006622FE    push        eax
 006622FF    lea         eax,[ebp-15]
 00662302    push        eax
 00662303    call        OLEAUT32.147
 00662308    mov         edx,dword ptr [ebp-4]
 0066230B    mov         dx,word ptr [edx]
 0066230E    mov         cx,0B
 00662312    call        0065FDC4
 00662317    cmp         word ptr [ebp-0D],1
 0066231C    sbb         eax,eax
 0066231E    inc         eax
 0066231F    mov         byte ptr [ebp-5],al
 00662322    mov         al,byte ptr [ebp-5]
 00662325    mov         esp,ebp
 00662327    pop         ebp
 00662328    ret
end;*}

//0066232C
{*function sub_0066232C(?:?):?;
begin
 0066232C    push        ebp
 0066232D    mov         ebp,esp
 0066232F    add         esp,0FFFFFFE8
 00662332    mov         dword ptr [ebp-4],eax
 00662335    lea         eax,[ebp-15]
 00662338    push        eax
 00662339    call        OLEAUT32.8
 0066233E    xor         eax,eax
 00662340    push        ebp
 00662341    push        662381
 00662346    push        dword ptr fs:[eax]
 00662349    mov         dword ptr fs:[eax],esp
 0066234C    mov         edx,dword ptr [ebp-4]
 0066234F    lea         eax,[ebp-15]
 00662352    call        006607C0
 00662357    lea         eax,[ebp-15]
 0066235A    call        dword ptr ds:[6ED154]
 00662360    lea         eax,[ebp-15]
 00662363    call        006623E4
 00662368    mov         byte ptr [ebp-5],al
 0066236B    xor         eax,eax
 0066236D    pop         edx
 0066236E    pop         ecx
 0066236F    pop         ecx
 00662370    mov         dword ptr fs:[eax],edx
 00662373    push        662388
 00662378    lea         eax,[ebp-15]
 0066237B    call        00660244
 00662380    ret
>00662381    jmp         @HandleFinally
>00662386    jmp         00662378
 00662388    mov         al,byte ptr [ebp-5]
 0066238B    mov         esp,ebp
 0066238D    pop         ebp
 0066238E    ret
end;*}

//00662390
{*function sub_00662390(?:?; ?:?):?;
begin
 00662390    push        ebp
 00662391    mov         ebp,esp
 00662393    add         esp,0FFFFFFE0
 00662396    push        ebx
 00662397    mov         dword ptr [ebp-8],edx
 0066239A    mov         dword ptr [ebp-4],eax
 0066239D    lea         edx,[ebp-10]
 006623A0    mov         eax,dword ptr [ebp-4]
 006623A3    mov         ax,word ptr [eax]
 006623A6    call        006689A0
 006623AB    mov         byte ptr [ebp-9],al
 006623AE    cmp         byte ptr [ebp-9],0
>006623B2    je          006623DA
 006623B4    lea         eax,[ebp-20]
 006623B7    push        eax
 006623B8    call        OLEAUT32.8
 006623BD    push        0B
 006623BF    mov         ecx,dword ptr [ebp-4]
 006623C2    lea         edx,[ebp-20]
 006623C5    mov         eax,dword ptr [ebp-10]
 006623C8    mov         ebx,dword ptr [eax]
 006623CA    call        dword ptr [ebx+1C]
 006623CD    cmp         word ptr [ebp-18],1
 006623D2    sbb         eax,eax
 006623D4    inc         eax
 006623D5    mov         edx,dword ptr [ebp-8]
 006623D8    mov         byte ptr [edx],al
 006623DA    mov         al,byte ptr [ebp-9]
 006623DD    pop         ebx
 006623DE    mov         esp,ebp
 006623E0    pop         ebp
 006623E1    ret
end;*}

//006623E4
{*function sub_006623E4(?:?):?;
begin
 006623E4    push        ebp
 006623E5    mov         ebp,esp
 006623E7    add         esp,0FFFFFFF8
 006623EA    mov         dword ptr [ebp-4],eax
 006623ED    mov         eax,dword ptr [ebp-4]
 006623F0    movzx       eax,word ptr [eax]
 006623F3    cmp         eax,14
>006623F6    ja          00662580
 006623FC    jmp         dword ptr [eax*4+662403]
 006623FC    dd          00662457
 006623FC    dd          00662580
 006623FC    dd          00662460
 006623FC    dd          00662471
 006623FC    dd          00662481
 006623FC    dd          00662499
 006623FC    dd          006624B1
 006623FC    dd          006624C9
 006623FC    dd          006624E1
 006623FC    dd          00662570
 006623FC    dd          00662580
 006623FC    dd          006624F1
 006623FC    dd          0066255D
 006623FC    dd          00662570
 006623FC    dd          00662580
 006623FC    dd          00662580
 006623FC    dd          00662504
 006623FC    dd          00662514
 006623FC    dd          00662524
 006623FC    dd          00662535
 006623FC    dd          00662545
 00662457    mov         byte ptr [ebp-5],0
>0066245B    jmp         0066276C
 00662460    mov         eax,dword ptr [ebp-4]
 00662463    cmp         word ptr [eax+8],0
 00662468    setne       byte ptr [ebp-5]
>0066246C    jmp         0066276C
 00662471    mov         eax,dword ptr [ebp-4]
 00662474    cmp         dword ptr [eax+8],0
 00662478    setne       byte ptr [ebp-5]
>0066247C    jmp         0066276C
 00662481    mov         eax,dword ptr [ebp-4]
 00662484    fld         dword ptr [eax+8]
 00662487    fcomp       dword ptr ds:[662774];0:Single
 0066248D    fnstsw      al
 0066248F    sahf
 00662490    setne       byte ptr [ebp-5]
>00662494    jmp         0066276C
 00662499    mov         eax,dword ptr [ebp-4]
 0066249C    fld         qword ptr [eax+8]
 0066249F    fcomp       dword ptr ds:[662774];0:Single
 006624A5    fnstsw      al
 006624A7    sahf
 006624A8    setne       byte ptr [ebp-5]
>006624AC    jmp         0066276C
 006624B1    mov         eax,dword ptr [ebp-4]
 006624B4    fild        qword ptr [eax+8]
 006624B7    fcomp       dword ptr ds:[662774];0:Single
 006624BD    fnstsw      al
 006624BF    sahf
 006624C0    setne       byte ptr [ebp-5]
>006624C4    jmp         0066276C
 006624C9    mov         eax,dword ptr [ebp-4]
 006624CC    fld         qword ptr [eax+8]
 006624CF    fcomp       dword ptr ds:[662774];0:Single
 006624D5    fnstsw      al
 006624D7    sahf
 006624D8    setne       byte ptr [ebp-5]
>006624DC    jmp         0066276C
 006624E1    mov         eax,dword ptr [ebp-4]
 006624E4    call        00662250
 006624E9    mov         byte ptr [ebp-5],al
>006624EC    jmp         0066276C
 006624F1    mov         eax,dword ptr [ebp-4]
 006624F4    cmp         word ptr [eax+8],1
 006624F9    sbb         eax,eax
 006624FB    inc         eax
 006624FC    mov         byte ptr [ebp-5],al
>006624FF    jmp         0066276C
 00662504    mov         eax,dword ptr [ebp-4]
 00662507    cmp         byte ptr [eax+8],0
 0066250B    setne       byte ptr [ebp-5]
>0066250F    jmp         0066276C
 00662514    mov         eax,dword ptr [ebp-4]
 00662517    cmp         byte ptr [eax+8],0
 0066251B    setne       byte ptr [ebp-5]
>0066251F    jmp         0066276C
 00662524    mov         eax,dword ptr [ebp-4]
 00662527    cmp         word ptr [eax+8],0
 0066252C    setne       byte ptr [ebp-5]
>00662530    jmp         0066276C
 00662535    mov         eax,dword ptr [ebp-4]
 00662538    cmp         dword ptr [eax+8],0
 0066253C    setne       byte ptr [ebp-5]
>00662540    jmp         0066276C
 00662545    mov         eax,dword ptr [ebp-4]
 00662548    cmp         dword ptr [eax+0C],0
>0066254C    jne         00662552
 0066254E    cmp         dword ptr [eax+8],0
 00662552    setne       al
 00662555    mov         byte ptr [ebp-5],al
>00662558    jmp         0066276C
 0066255D    mov         eax,dword ptr [ebp-4]
 00662560    mov         eax,dword ptr [eax+8]
 00662563    call        006623E4
 00662568    mov         byte ptr [ebp-5],al
>0066256B    jmp         0066276C
 00662570    mov         eax,dword ptr [ebp-4]
 00662573    call        006622E0
 00662578    mov         byte ptr [ebp-5],al
>0066257B    jmp         0066276C
 00662580    mov         eax,dword ptr [ebp-4]
 00662583    mov         ax,word ptr [eax]
 00662586    sub         ax,100
>0066258A    je          00662593
 0066258C    dec         ax
>0066258F    je          006625A3
>00662591    jmp         006625B3
 00662593    mov         eax,dword ptr [ebp-4]
 00662596    call        00662250
 0066259B    mov         byte ptr [ebp-5],al
>0066259E    jmp         0066276C
 006625A3    mov         eax,dword ptr [ebp-4]
 006625A6    call        0066232C
 006625AB    mov         byte ptr [ebp-5],al
>006625AE    jmp         0066276C
 006625B3    mov         eax,dword ptr [ebp-4]
 006625B6    test        byte ptr [eax+1],40
>006625BA    je          00662752
 006625C0    mov         eax,dword ptr [ebp-4]
 006625C3    movzx       eax,word ptr [eax]
 006625C6    and         eax,0FFFFBFFF
 006625CB    cmp         eax,14
>006625CE    ja          00662745
 006625D4    jmp         dword ptr [eax*4+6625DB]
 006625D4    dd          00662745
 006625D4    dd          00662745
 006625D4    dd          0066262F
 006625D4    dd          00662642
 006625D4    dd          00662654
 006625D4    dd          0066266E
 006625D4    dd          00662688
 006625D4    dd          006626A2
 006625D4    dd          006626BC
 006625D4    dd          00662745
 006625D4    dd          00662745
 006625D4    dd          006626CC
 006625D4    dd          00662735
 006625D4    dd          00662745
 006625D4    dd          00662745
 006625D4    dd          00662745
 006625D4    dd          006626E1
 006625D4    dd          006626F0
 006625D4    dd          006626FF
 006625D4    dd          0066270F
 006625D4    dd          0066271E
 0066262F    mov         eax,dword ptr [ebp-4]
 00662632    mov         eax,dword ptr [eax+8]
 00662635    cmp         word ptr [eax],0
 00662639    setne       byte ptr [ebp-5]
>0066263D    jmp         0066276C
 00662642    mov         eax,dword ptr [ebp-4]
 00662645    mov         eax,dword ptr [eax+8]
 00662648    cmp         dword ptr [eax],0
 0066264B    setne       byte ptr [ebp-5]
>0066264F    jmp         0066276C
 00662654    mov         eax,dword ptr [ebp-4]
 00662657    mov         eax,dword ptr [eax+8]
 0066265A    fld         dword ptr [eax]
 0066265C    fcomp       dword ptr ds:[662774];0:Single
 00662662    fnstsw      al
 00662664    sahf
 00662665    setne       byte ptr [ebp-5]
>00662669    jmp         0066276C
 0066266E    mov         eax,dword ptr [ebp-4]
 00662671    mov         eax,dword ptr [eax+8]
 00662674    fld         qword ptr [eax]
 00662676    fcomp       dword ptr ds:[662774];0:Single
 0066267C    fnstsw      al
 0066267E    sahf
 0066267F    setne       byte ptr [ebp-5]
>00662683    jmp         0066276C
 00662688    mov         eax,dword ptr [ebp-4]
 0066268B    mov         eax,dword ptr [eax+8]
 0066268E    fild        qword ptr [eax]
 00662690    fcomp       dword ptr ds:[662774];0:Single
 00662696    fnstsw      al
 00662698    sahf
 00662699    setne       byte ptr [ebp-5]
>0066269D    jmp         0066276C
 006626A2    mov         eax,dword ptr [ebp-4]
 006626A5    mov         eax,dword ptr [eax+8]
 006626A8    fld         qword ptr [eax]
 006626AA    fcomp       dword ptr ds:[662774];0:Single
 006626B0    fnstsw      al
 006626B2    sahf
 006626B3    setne       byte ptr [ebp-5]
>006626B7    jmp         0066276C
 006626BC    mov         eax,dword ptr [ebp-4]
 006626BF    call        00662250
 006626C4    mov         byte ptr [ebp-5],al
>006626C7    jmp         0066276C
 006626CC    mov         eax,dword ptr [ebp-4]
 006626CF    mov         eax,dword ptr [eax+8]
 006626D2    cmp         word ptr [eax],1
 006626D6    sbb         eax,eax
 006626D8    inc         eax
 006626D9    mov         byte ptr [ebp-5],al
>006626DC    jmp         0066276C
 006626E1    mov         eax,dword ptr [ebp-4]
 006626E4    mov         eax,dword ptr [eax+8]
 006626E7    cmp         byte ptr [eax],0
 006626EA    setne       byte ptr [ebp-5]
>006626EE    jmp         0066276C
 006626F0    mov         eax,dword ptr [ebp-4]
 006626F3    mov         eax,dword ptr [eax+8]
 006626F6    cmp         byte ptr [eax],0
 006626F9    setne       byte ptr [ebp-5]
>006626FD    jmp         0066276C
 006626FF    mov         eax,dword ptr [ebp-4]
 00662702    mov         eax,dword ptr [eax+8]
 00662705    cmp         word ptr [eax],0
 00662709    setne       byte ptr [ebp-5]
>0066270D    jmp         0066276C
 0066270F    mov         eax,dword ptr [ebp-4]
 00662712    mov         eax,dword ptr [eax+8]
 00662715    cmp         dword ptr [eax],0
 00662718    setne       byte ptr [ebp-5]
>0066271C    jmp         0066276C
 0066271E    mov         eax,dword ptr [ebp-4]
 00662721    mov         eax,dword ptr [eax+8]
 00662724    cmp         dword ptr [eax+4],0
>00662728    jne         0066272D
 0066272A    cmp         dword ptr [eax],0
 0066272D    setne       al
 00662730    mov         byte ptr [ebp-5],al
>00662733    jmp         0066276C
 00662735    mov         eax,dword ptr [ebp-4]
 00662738    mov         eax,dword ptr [eax+8]
 0066273B    call        006623E4
 00662740    mov         byte ptr [ebp-5],al
>00662743    jmp         0066276C
 00662745    mov         eax,dword ptr [ebp-4]
 00662748    call        006622E0
 0066274D    mov         byte ptr [ebp-5],al
>00662750    jmp         0066276C
 00662752    lea         edx,[ebp-5]
 00662755    mov         eax,dword ptr [ebp-4]
 00662758    call        00662390
 0066275D    test        al,al
>0066275F    jne         0066276C
 00662761    mov         eax,dword ptr [ebp-4]
 00662764    call        006622E0
 00662769    mov         byte ptr [ebp-5],al
 0066276C    mov         al,byte ptr [ebp-5]
 0066276F    pop         ecx
 00662770    pop         ecx
 00662771    pop         ebp
 00662772    ret
end;*}

//00662778
{*function sub_00662778(?:?):?;
begin
 00662778    push        ebp
 00662779    mov         ebp,esp
 0066277B    add         esp,0FFFFFFD8
 0066277E    xor         edx,edx
 00662780    mov         dword ptr [ebp-28],edx
 00662783    mov         dword ptr [ebp-14],edx
 00662786    mov         dword ptr [ebp-4],eax
 00662789    xor         eax,eax
 0066278B    push        ebp
 0066278C    push        662810
 00662791    push        dword ptr fs:[eax]
 00662794    mov         dword ptr fs:[eax],esp
 00662797    mov         edx,dword ptr [ebp-4]
 0066279A    lea         eax,[ebp-14]
 0066279D    call        00663964
 006627A2    lea         eax,[ebp-20]
 006627A5    push        eax
 006627A6    push        0
 006627A8    push        400
 006627AD    lea         eax,[ebp-28]
 006627B0    mov         edx,dword ptr [ebp-14]
 006627B3    call        @WStrFromLStr
 006627B8    mov         eax,dword ptr [ebp-28]
 006627BB    push        eax
 006627BC    call        OLEAUT32.84
 006627C1    mov         dword ptr [ebp-24],eax
 006627C4    cmp         dword ptr [ebp-24],0
>006627C8    jne         006627D3
 006627CA    fld         qword ptr [ebp-20]
 006627CD    fstp        tbyte ptr [ebp-10]
 006627D0    wait
>006627D1    jmp         006627F2
 006627D3    lea         edx,[ebp-10]
 006627D6    mov         eax,dword ptr [ebp-14]
 006627D9    call        00659BEC
 006627DE    test        al,al
>006627E0    jne         006627F2
 006627E2    mov         cx,5
 006627E6    mov         dx,100
 006627EA    mov         eax,dword ptr [ebp-24]
 006627ED    call        0065FDC4
 006627F2    xor         eax,eax
 006627F4    pop         edx
 006627F5    pop         ecx
 006627F6    pop         ecx
 006627F7    mov         dword ptr fs:[eax],edx
 006627FA    push        662817
 006627FF    lea         eax,[ebp-28]
 00662802    call        @WStrClr
 00662807    lea         eax,[ebp-14]
 0066280A    call        @LStrClr
 0066280F    ret
>00662810    jmp         @HandleFinally
>00662815    jmp         006627FF
 00662817    fld         tbyte ptr [ebp-10]
 0066281A    mov         esp,ebp
 0066281C    pop         ebp
 0066281D    ret
end;*}

//00662820
{*function sub_00662820(?:?):?;
begin
 00662820    push        ebp
 00662821    mov         ebp,esp
 00662823    add         esp,0FFFFFFE0
 00662826    mov         dword ptr [ebp-4],eax
 00662829    lea         eax,[ebp-20]
 0066282C    push        eax
 0066282D    call        OLEAUT32.8
 00662832    push        5
 00662834    push        4
 00662836    push        400
 0066283B    mov         eax,dword ptr [ebp-4]
 0066283E    push        eax
 0066283F    lea         eax,[ebp-20]
 00662842    push        eax
 00662843    call        OLEAUT32.147
 00662848    mov         edx,dword ptr [ebp-4]
 0066284B    mov         dx,word ptr [edx]
 0066284E    mov         cx,5
 00662852    call        0065FDC4
 00662857    fld         qword ptr [ebp-18]
 0066285A    fstp        tbyte ptr [ebp-10]
 0066285D    wait
 0066285E    fld         tbyte ptr [ebp-10]
 00662861    mov         esp,ebp
 00662863    pop         ebp
 00662864    ret
end;*}

//00662868
{*function sub_00662868(?:?):?;
begin
 00662868    push        ebp
 00662869    mov         ebp,esp
 0066286B    add         esp,0FFFFFFE0
 0066286E    mov         dword ptr [ebp-4],eax
 00662871    lea         eax,[ebp-20]
 00662874    push        eax
 00662875    call        OLEAUT32.8
 0066287A    xor         eax,eax
 0066287C    push        ebp
 0066287D    push        6628BE
 00662882    push        dword ptr fs:[eax]
 00662885    mov         dword ptr fs:[eax],esp
 00662888    mov         edx,dword ptr [ebp-4]
 0066288B    lea         eax,[ebp-20]
 0066288E    call        006607C0
 00662893    lea         eax,[ebp-20]
 00662896    call        dword ptr ds:[6ED154]
 0066289C    lea         eax,[ebp-20]
 0066289F    call        0066291C
 006628A4    fstp        tbyte ptr [ebp-10]
 006628A7    wait
 006628A8    xor         eax,eax
 006628AA    pop         edx
 006628AB    pop         ecx
 006628AC    pop         ecx
 006628AD    mov         dword ptr fs:[eax],edx
 006628B0    push        6628C5
 006628B5    lea         eax,[ebp-20]
 006628B8    call        00660244
 006628BD    ret
>006628BE    jmp         @HandleFinally
>006628C3    jmp         006628B5
 006628C5    fld         tbyte ptr [ebp-10]
 006628C8    mov         esp,ebp
 006628CA    pop         ebp
 006628CB    ret
end;*}

//006628CC
{*function sub_006628CC(?:?; ?:Extended):?;
begin
 006628CC    push        ebp
 006628CD    mov         ebp,esp
 006628CF    add         esp,0FFFFFFE0
 006628D2    push        ebx
 006628D3    mov         dword ptr [ebp-8],edx
 006628D6    mov         dword ptr [ebp-4],eax
 006628D9    lea         edx,[ebp-10]
 006628DC    mov         eax,dword ptr [ebp-4]
 006628DF    mov         ax,word ptr [eax]
 006628E2    call        006689A0
 006628E7    mov         byte ptr [ebp-9],al
 006628EA    cmp         byte ptr [ebp-9],0
>006628EE    je          00662912
 006628F0    lea         eax,[ebp-20]
 006628F3    push        eax
 006628F4    call        OLEAUT32.8
 006628F9    push        5
 006628FB    mov         ecx,dword ptr [ebp-4]
 006628FE    lea         edx,[ebp-20]
 00662901    mov         eax,dword ptr [ebp-10]
 00662904    mov         ebx,dword ptr [eax]
 00662906    call        dword ptr [ebx+1C]
 00662909    fld         qword ptr [ebp-18]
 0066290C    mov         eax,dword ptr [ebp-8]
 0066290F    fstp        tbyte ptr [eax]
 00662911    wait
 00662912    mov         al,byte ptr [ebp-9]
 00662915    pop         ebx
 00662916    mov         esp,ebp
 00662918    pop         ebp
 00662919    ret
end;*}

//0066291C
{*function sub_0066291C(?:?):?;
begin
 0066291C    push        ebp
 0066291D    mov         ebp,esp
 0066291F    add         esp,0FFFFFFE4
 00662922    mov         dword ptr [ebp-4],eax
 00662925    mov         eax,dword ptr [ebp-4]
 00662928    movzx       eax,word ptr [eax]
 0066292B    cmp         eax,14
>0066292E    ja          00662AB7
 00662934    jmp         dword ptr [eax*4+66293B]
 00662934    dd          0066298F
 00662934    dd          00662AB7
 00662934    dd          006629A0
 00662934    dd          006629AF
 00662934    dd          006629BE
 00662934    dd          006629CD
 00662934    dd          006629DC
 00662934    dd          006629F1
 00662934    dd          00662A00
 00662934    dd          00662AA6
 00662934    dd          00662AB7
 00662934    dd          00662A11
 00662934    dd          00662A92
 00662934    dd          00662AA6
 00662934    dd          00662AB7
 00662934    dd          00662AB7
 00662934    dd          00662A27
 00662934    dd          00662A3D
 00662934    dd          00662A53
 00662934    dd          00662A69
 00662934    dd          00662A83
 0066298F    xor         eax,eax
 00662991    mov         dword ptr [ebp-10],eax
 00662994    mov         dword ptr [ebp-0C],eax
 00662997    mov         word ptr [ebp-8],ax
>0066299B    jmp         00662CA0
 006629A0    mov         eax,dword ptr [ebp-4]
 006629A3    fild        word ptr [eax+8]
 006629A6    fstp        tbyte ptr [ebp-10]
 006629A9    wait
>006629AA    jmp         00662CA0
 006629AF    mov         eax,dword ptr [ebp-4]
 006629B2    fild        dword ptr [eax+8]
 006629B5    fstp        tbyte ptr [ebp-10]
 006629B8    wait
>006629B9    jmp         00662CA0
 006629BE    mov         eax,dword ptr [ebp-4]
 006629C1    fld         dword ptr [eax+8]
 006629C4    fstp        tbyte ptr [ebp-10]
 006629C7    wait
>006629C8    jmp         00662CA0
 006629CD    mov         eax,dword ptr [ebp-4]
 006629D0    fld         qword ptr [eax+8]
 006629D3    fstp        tbyte ptr [ebp-10]
 006629D6    wait
>006629D7    jmp         00662CA0
 006629DC    mov         eax,dword ptr [ebp-4]
 006629DF    fild        qword ptr [eax+8]
 006629E2    fdiv        dword ptr ds:[662CA8];10000:Single
 006629E8    fstp        tbyte ptr [ebp-10]
 006629EB    wait
>006629EC    jmp         00662CA0
 006629F1    mov         eax,dword ptr [ebp-4]
 006629F4    fld         qword ptr [eax+8]
 006629F7    fstp        tbyte ptr [ebp-10]
 006629FA    wait
>006629FB    jmp         00662CA0
 00662A00    mov         eax,dword ptr [ebp-4]
 00662A03    call        00662778
 00662A08    fstp        tbyte ptr [ebp-10]
 00662A0B    wait
>00662A0C    jmp         00662CA0
 00662A11    mov         eax,dword ptr [ebp-4]
 00662A14    movsx       eax,word ptr [eax+8]
 00662A18    mov         dword ptr [ebp-14],eax
 00662A1B    fild        dword ptr [ebp-14]
 00662A1E    fstp        tbyte ptr [ebp-10]
 00662A21    wait
>00662A22    jmp         00662CA0
 00662A27    mov         eax,dword ptr [ebp-4]
 00662A2A    movsx       eax,byte ptr [eax+8]
 00662A2E    mov         dword ptr [ebp-14],eax
 00662A31    fild        dword ptr [ebp-14]
 00662A34    fstp        tbyte ptr [ebp-10]
 00662A37    wait
>00662A38    jmp         00662CA0
 00662A3D    mov         eax,dword ptr [ebp-4]
 00662A40    movzx       eax,byte ptr [eax+8]
 00662A44    mov         dword ptr [ebp-14],eax
 00662A47    fild        dword ptr [ebp-14]
 00662A4A    fstp        tbyte ptr [ebp-10]
 00662A4D    wait
>00662A4E    jmp         00662CA0
 00662A53    mov         eax,dword ptr [ebp-4]
 00662A56    movzx       eax,word ptr [eax+8]
 00662A5A    mov         dword ptr [ebp-14],eax
 00662A5D    fild        dword ptr [ebp-14]
 00662A60    fstp        tbyte ptr [ebp-10]
 00662A63    wait
>00662A64    jmp         00662CA0
 00662A69    mov         eax,dword ptr [ebp-4]
 00662A6C    mov         eax,dword ptr [eax+8]
 00662A6F    mov         dword ptr [ebp-1C],eax
 00662A72    xor         eax,eax
 00662A74    mov         dword ptr [ebp-18],eax
 00662A77    fild        qword ptr [ebp-1C]
 00662A7A    fstp        tbyte ptr [ebp-10]
 00662A7D    wait
>00662A7E    jmp         00662CA0
 00662A83    mov         eax,dword ptr [ebp-4]
 00662A86    fild        qword ptr [eax+8]
 00662A89    fstp        tbyte ptr [ebp-10]
 00662A8C    wait
>00662A8D    jmp         00662CA0
 00662A92    mov         eax,dword ptr [ebp-4]
 00662A95    mov         eax,dword ptr [eax+8]
 00662A98    call        0066291C
 00662A9D    fstp        tbyte ptr [ebp-10]
 00662AA0    wait
>00662AA1    jmp         00662CA0
 00662AA6    mov         eax,dword ptr [ebp-4]
 00662AA9    call        00662820
 00662AAE    fstp        tbyte ptr [ebp-10]
 00662AB1    wait
>00662AB2    jmp         00662CA0
 00662AB7    mov         eax,dword ptr [ebp-4]
 00662ABA    mov         ax,word ptr [eax]
 00662ABD    sub         ax,100
>00662AC1    je          00662ACA
 00662AC3    dec         ax
>00662AC6    je          00662ADB
>00662AC8    jmp         00662AEC
 00662ACA    mov         eax,dword ptr [ebp-4]
 00662ACD    call        00662778
 00662AD2    fstp        tbyte ptr [ebp-10]
 00662AD5    wait
>00662AD6    jmp         00662CA0
 00662ADB    mov         eax,dword ptr [ebp-4]
 00662ADE    call        00662868
 00662AE3    fstp        tbyte ptr [ebp-10]
 00662AE6    wait
>00662AE7    jmp         00662CA0
 00662AEC    mov         eax,dword ptr [ebp-4]
 00662AEF    test        byte ptr [eax+1],40
>00662AF3    je          00662C85
 00662AF9    mov         eax,dword ptr [ebp-4]
 00662AFC    movzx       eax,word ptr [eax]
 00662AFF    and         eax,0FFFFBFFF
 00662B04    cmp         eax,14
>00662B07    ja          00662C77
 00662B0D    jmp         dword ptr [eax*4+662B14]
 00662B0D    dd          00662C77
 00662B0D    dd          00662C77
 00662B0D    dd          00662B68
 00662B0D    dd          00662B79
 00662B0D    dd          00662B8A
 00662B0D    dd          00662B9B
 00662B0D    dd          00662BAC
 00662B0D    dd          00662BC3
 00662B0D    dd          00662BD4
 00662B0D    dd          00662C77
 00662B0D    dd          00662C77
 00662B0D    dd          00662BE5
 00662B0D    dd          00662C66
 00662B0D    dd          00662C77
 00662B0D    dd          00662C77
 00662B0D    dd          00662C77
 00662B0D    dd          00662BFD
 00662B0D    dd          00662C15
 00662B0D    dd          00662C2A
 00662B0D    dd          00662C3F
 00662B0D    dd          00662C58
 00662B68    mov         eax,dword ptr [ebp-4]
 00662B6B    mov         eax,dword ptr [eax+8]
 00662B6E    fild        word ptr [eax]
 00662B70    fstp        tbyte ptr [ebp-10]
 00662B73    wait
>00662B74    jmp         00662CA0
 00662B79    mov         eax,dword ptr [ebp-4]
 00662B7C    mov         eax,dword ptr [eax+8]
 00662B7F    fild        dword ptr [eax]
 00662B81    fstp        tbyte ptr [ebp-10]
 00662B84    wait
>00662B85    jmp         00662CA0
 00662B8A    mov         eax,dword ptr [ebp-4]
 00662B8D    mov         eax,dword ptr [eax+8]
 00662B90    fld         dword ptr [eax]
 00662B92    fstp        tbyte ptr [ebp-10]
 00662B95    wait
>00662B96    jmp         00662CA0
 00662B9B    mov         eax,dword ptr [ebp-4]
 00662B9E    mov         eax,dword ptr [eax+8]
 00662BA1    fld         qword ptr [eax]
 00662BA3    fstp        tbyte ptr [ebp-10]
 00662BA6    wait
>00662BA7    jmp         00662CA0
 00662BAC    mov         eax,dword ptr [ebp-4]
 00662BAF    mov         eax,dword ptr [eax+8]
 00662BB2    fild        qword ptr [eax]
 00662BB4    fdiv        dword ptr ds:[662CA8];10000:Single
 00662BBA    fstp        tbyte ptr [ebp-10]
 00662BBD    wait
>00662BBE    jmp         00662CA0
 00662BC3    mov         eax,dword ptr [ebp-4]
 00662BC6    mov         eax,dword ptr [eax+8]
 00662BC9    fld         qword ptr [eax]
 00662BCB    fstp        tbyte ptr [ebp-10]
 00662BCE    wait
>00662BCF    jmp         00662CA0
 00662BD4    mov         eax,dword ptr [ebp-4]
 00662BD7    call        00662778
 00662BDC    fstp        tbyte ptr [ebp-10]
 00662BDF    wait
>00662BE0    jmp         00662CA0
 00662BE5    mov         eax,dword ptr [ebp-4]
 00662BE8    mov         eax,dword ptr [eax+8]
 00662BEB    movsx       eax,word ptr [eax]
 00662BEE    mov         dword ptr [ebp-14],eax
 00662BF1    fild        dword ptr [ebp-14]
 00662BF4    fstp        tbyte ptr [ebp-10]
 00662BF7    wait
>00662BF8    jmp         00662CA0
 00662BFD    mov         eax,dword ptr [ebp-4]
 00662C00    mov         eax,dword ptr [eax+8]
 00662C03    movsx       eax,byte ptr [eax]
 00662C06    mov         dword ptr [ebp-14],eax
 00662C09    fild        dword ptr [ebp-14]
 00662C0C    fstp        tbyte ptr [ebp-10]
 00662C0F    wait
>00662C10    jmp         00662CA0
 00662C15    mov         eax,dword ptr [ebp-4]
 00662C18    mov         eax,dword ptr [eax+8]
 00662C1B    movzx       eax,byte ptr [eax]
 00662C1E    mov         dword ptr [ebp-14],eax
 00662C21    fild        dword ptr [ebp-14]
 00662C24    fstp        tbyte ptr [ebp-10]
 00662C27    wait
>00662C28    jmp         00662CA0
 00662C2A    mov         eax,dword ptr [ebp-4]
 00662C2D    mov         eax,dword ptr [eax+8]
 00662C30    movzx       eax,word ptr [eax]
 00662C33    mov         dword ptr [ebp-14],eax
 00662C36    fild        dword ptr [ebp-14]
 00662C39    fstp        tbyte ptr [ebp-10]
 00662C3C    wait
>00662C3D    jmp         00662CA0
 00662C3F    mov         eax,dword ptr [ebp-4]
 00662C42    mov         eax,dword ptr [eax+8]
 00662C45    mov         eax,dword ptr [eax]
 00662C47    mov         dword ptr [ebp-1C],eax
 00662C4A    xor         eax,eax
 00662C4C    mov         dword ptr [ebp-18],eax
 00662C4F    fild        qword ptr [ebp-1C]
 00662C52    fstp        tbyte ptr [ebp-10]
 00662C55    wait
>00662C56    jmp         00662CA0
 00662C58    mov         eax,dword ptr [ebp-4]
 00662C5B    mov         eax,dword ptr [eax+8]
 00662C5E    fild        qword ptr [eax]
 00662C60    fstp        tbyte ptr [ebp-10]
 00662C63    wait
>00662C64    jmp         00662CA0
 00662C66    mov         eax,dword ptr [ebp-4]
 00662C69    mov         eax,dword ptr [eax+8]
 00662C6C    call        0066291C
 00662C71    fstp        tbyte ptr [ebp-10]
 00662C74    wait
>00662C75    jmp         00662CA0
 00662C77    mov         eax,dword ptr [ebp-4]
 00662C7A    call        00662820
 00662C7F    fstp        tbyte ptr [ebp-10]
 00662C82    wait
>00662C83    jmp         00662CA0
 00662C85    lea         edx,[ebp-10]
 00662C88    mov         eax,dword ptr [ebp-4]
 00662C8B    call        006628CC
 00662C90    test        al,al
>00662C92    jne         00662CA0
 00662C94    mov         eax,dword ptr [ebp-4]
 00662C97    call        00662820
 00662C9C    fstp        tbyte ptr [ebp-10]
 00662C9F    wait
 00662CA0    fld         tbyte ptr [ebp-10]
 00662CA3    mov         esp,ebp
 00662CA5    pop         ebp
 00662CA6    ret
end;*}

//00662CAC
{*function sub_00662CAC(?:?):?;
begin
 00662CAC    push        ebp
 00662CAD    mov         ebp,esp
 00662CAF    add         esp,0FFFFFFD4
 00662CB2    xor         edx,edx
 00662CB4    mov         dword ptr [ebp-2C],edx
 00662CB7    mov         dword ptr [ebp-28],edx
 00662CBA    mov         dword ptr [ebp-14],edx
 00662CBD    mov         dword ptr [ebp-4],eax
 00662CC0    xor         eax,eax
 00662CC2    push        ebp
 00662CC3    push        662D6D
 00662CC8    push        dword ptr fs:[eax]
 00662CCB    mov         dword ptr fs:[eax],esp
 00662CCE    mov         edx,dword ptr [ebp-4]
 00662CD1    lea         eax,[ebp-14]
 00662CD4    call        00664050
 00662CD9    lea         eax,[ebp-10]
 00662CDC    push        eax
 00662CDD    push        0
 00662CDF    push        400
 00662CE4    mov         eax,dword ptr [ebp-14]
 00662CE7    push        eax
 00662CE8    call        OLEAUT32.94
 00662CED    mov         dword ptr [ebp-24],eax
 00662CF0    cmp         dword ptr [ebp-24],0
>00662CF4    je          00662D4A
 00662CF6    lea         eax,[ebp-28]
 00662CF9    mov         edx,dword ptr [ebp-14]
 00662CFC    call        @LStrFromWStr
 00662D01    mov         eax,dword ptr [ebp-28]
 00662D04    lea         edx,[ebp-10]
 00662D07    call        0065BA20
 00662D0C    test        al,al
>00662D0E    jne         00662D4A
 00662D10    lea         eax,[ebp-2C]
 00662D13    mov         edx,dword ptr [ebp-14]
 00662D16    call        @LStrFromWStr
 00662D1B    mov         eax,dword ptr [ebp-2C]
 00662D1E    lea         edx,[ebp-20]
 00662D21    call        00659C14
 00662D26    test        al,al
>00662D28    je          00662D38
 00662D2A    mov         eax,dword ptr [ebp-20]
 00662D2D    mov         dword ptr [ebp-10],eax
 00662D30    mov         eax,dword ptr [ebp-1C]
 00662D33    mov         dword ptr [ebp-0C],eax
>00662D36    jmp         00662D4A
 00662D38    mov         edx,dword ptr [ebp-4]
 00662D3B    mov         dx,word ptr [edx]
 00662D3E    mov         cx,7
 00662D42    mov         eax,dword ptr [ebp-24]
 00662D45    call        0065FDC4
 00662D4A    xor         eax,eax
 00662D4C    pop         edx
 00662D4D    pop         ecx
 00662D4E    pop         ecx
 00662D4F    mov         dword ptr fs:[eax],edx
 00662D52    push        662D74
 00662D57    lea         eax,[ebp-2C]
 00662D5A    mov         edx,2
 00662D5F    call        @LStrArrayClr
 00662D64    lea         eax,[ebp-14]
 00662D67    call        @WStrClr
 00662D6C    ret
>00662D6D    jmp         @HandleFinally
>00662D72    jmp         00662D57
 00662D74    fld         qword ptr [ebp-10]
 00662D77    mov         esp,ebp
 00662D79    pop         ebp
 00662D7A    ret
end;*}

//00662D7C
{*function sub_00662D7C(?:?):?;
begin
 00662D7C    push        ebp
 00662D7D    mov         ebp,esp
 00662D7F    add         esp,0FFFFFFE0
 00662D82    mov         dword ptr [ebp-4],eax
 00662D85    lea         eax,[ebp-20]
 00662D88    push        eax
 00662D89    call        OLEAUT32.8
 00662D8E    push        7
 00662D90    push        4
 00662D92    push        400
 00662D97    mov         eax,dword ptr [ebp-4]
 00662D9A    push        eax
 00662D9B    lea         eax,[ebp-20]
 00662D9E    push        eax
 00662D9F    call        OLEAUT32.147
 00662DA4    mov         edx,dword ptr [ebp-4]
 00662DA7    mov         dx,word ptr [edx]
 00662DAA    mov         cx,7
 00662DAE    call        0065FDC4
 00662DB3    mov         eax,dword ptr [ebp-18]
 00662DB6    mov         dword ptr [ebp-10],eax
 00662DB9    mov         eax,dword ptr [ebp-14]
 00662DBC    mov         dword ptr [ebp-0C],eax
 00662DBF    fld         qword ptr [ebp-10]
 00662DC2    mov         esp,ebp
 00662DC4    pop         ebp
 00662DC5    ret
end;*}

//00662DC8
{*function sub_00662DC8(?:?):?;
begin
 00662DC8    push        ebp
 00662DC9    mov         ebp,esp
 00662DCB    add         esp,0FFFFFFE0
 00662DCE    mov         dword ptr [ebp-4],eax
 00662DD1    lea         eax,[ebp-20]
 00662DD4    push        eax
 00662DD5    call        OLEAUT32.8
 00662DDA    xor         eax,eax
 00662DDC    push        ebp
 00662DDD    push        662E1E
 00662DE2    push        dword ptr fs:[eax]
 00662DE5    mov         dword ptr fs:[eax],esp
 00662DE8    mov         edx,dword ptr [ebp-4]
 00662DEB    lea         eax,[ebp-20]
 00662DEE    call        006607C0
 00662DF3    lea         eax,[ebp-20]
 00662DF6    call        dword ptr ds:[6ED154]
 00662DFC    lea         eax,[ebp-20]
 00662DFF    call        00662E80
 00662E04    fstp        qword ptr [ebp-10]
 00662E07    wait
 00662E08    xor         eax,eax
 00662E0A    pop         edx
 00662E0B    pop         ecx
 00662E0C    pop         ecx
 00662E0D    mov         dword ptr fs:[eax],edx
 00662E10    push        662E25
 00662E15    lea         eax,[ebp-20]
 00662E18    call        00660244
 00662E1D    ret
>00662E1E    jmp         @HandleFinally
>00662E23    jmp         00662E15
 00662E25    fld         qword ptr [ebp-10]
 00662E28    mov         esp,ebp
 00662E2A    pop         ebp
 00662E2B    ret
end;*}

//00662E2C
{*function sub_00662E2C(?:?; ?:Double):?;
begin
 00662E2C    push        ebp
 00662E2D    mov         ebp,esp
 00662E2F    add         esp,0FFFFFFE0
 00662E32    push        ebx
 00662E33    mov         dword ptr [ebp-8],edx
 00662E36    mov         dword ptr [ebp-4],eax
 00662E39    lea         edx,[ebp-10]
 00662E3C    mov         eax,dword ptr [ebp-4]
 00662E3F    mov         ax,word ptr [eax]
 00662E42    call        006689A0
 00662E47    mov         byte ptr [ebp-9],al
 00662E4A    cmp         byte ptr [ebp-9],0
>00662E4E    je          00662E77
 00662E50    lea         eax,[ebp-20]
 00662E53    push        eax
 00662E54    call        OLEAUT32.8
 00662E59    push        7
 00662E5B    mov         ecx,dword ptr [ebp-4]
 00662E5E    lea         edx,[ebp-20]
 00662E61    mov         eax,dword ptr [ebp-10]
 00662E64    mov         ebx,dword ptr [eax]
 00662E66    call        dword ptr [ebx+1C]
 00662E69    mov         eax,dword ptr [ebp-8]
 00662E6C    mov         edx,dword ptr [ebp-18]
 00662E6F    mov         dword ptr [eax],edx
 00662E71    mov         edx,dword ptr [ebp-14]
 00662E74    mov         dword ptr [eax+4],edx
 00662E77    mov         al,byte ptr [ebp-9]
 00662E7A    pop         ebx
 00662E7B    mov         esp,ebp
 00662E7D    pop         ebp
 00662E7E    ret
end;*}

//00662E80
{*function sub_00662E80(?:?):?;
begin
 00662E80    push        ebp
 00662E81    mov         ebp,esp
 00662E83    add         esp,0FFFFFFD4
 00662E86    mov         dword ptr [ebp-4],eax
 00662E89    mov         eax,dword ptr [ebp-4]
 00662E8C    movzx       eax,word ptr [eax]
 00662E8F    cmp         eax,14
>00662E92    ja          0066301B
 00662E98    jmp         dword ptr [eax*4+662E9F]
 00662E98    dd          00662EF3
 00662E98    dd          0066301B
 00662E98    dd          00662F04
 00662E98    dd          00662F13
 00662E98    dd          00662F22
 00662E98    dd          00662F31
 00662E98    dd          00662F40
 00662E98    dd          00662F55
 00662E98    dd          00662F64
 00662E98    dd          0066300A
 00662E98    dd          0066301B
 00662E98    dd          00662F75
 00662E98    dd          00662FF6
 00662E98    dd          0066300A
 00662E98    dd          0066301B
 00662E98    dd          0066301B
 00662E98    dd          00662F8B
 00662E98    dd          00662FA1
 00662E98    dd          00662FB7
 00662E98    dd          00662FCD
 00662E98    dd          00662FE7
 00662EF3    xor         eax,eax
 00662EF5    mov         dword ptr [ebp-20],eax
 00662EF8    mov         dword ptr [ebp-1C],eax
 00662EFB    mov         word ptr [ebp-18],ax
>00662EFF    jmp         00663206
 00662F04    mov         eax,dword ptr [ebp-4]
 00662F07    fild        word ptr [eax+8]
 00662F0A    fstp        tbyte ptr [ebp-20]
 00662F0D    wait
>00662F0E    jmp         00663206
 00662F13    mov         eax,dword ptr [ebp-4]
 00662F16    fild        dword ptr [eax+8]
 00662F19    fstp        tbyte ptr [ebp-20]
 00662F1C    wait
>00662F1D    jmp         00663206
 00662F22    mov         eax,dword ptr [ebp-4]
 00662F25    fld         dword ptr [eax+8]
 00662F28    fstp        tbyte ptr [ebp-20]
 00662F2B    wait
>00662F2C    jmp         00663206
 00662F31    mov         eax,dword ptr [ebp-4]
 00662F34    fld         qword ptr [eax+8]
 00662F37    fstp        tbyte ptr [ebp-20]
 00662F3A    wait
>00662F3B    jmp         00663206
 00662F40    mov         eax,dword ptr [ebp-4]
 00662F43    fild        qword ptr [eax+8]
 00662F46    fdiv        dword ptr ds:[663238];10000:Single
 00662F4C    fstp        tbyte ptr [ebp-20]
 00662F4F    wait
>00662F50    jmp         00663206
 00662F55    mov         eax,dword ptr [ebp-4]
 00662F58    fld         qword ptr [eax+8]
 00662F5B    fstp        tbyte ptr [ebp-20]
 00662F5E    wait
>00662F5F    jmp         00663206
 00662F64    mov         eax,dword ptr [ebp-4]
 00662F67    call        00662CAC
 00662F6C    fstp        tbyte ptr [ebp-20]
 00662F6F    wait
>00662F70    jmp         00663206
 00662F75    mov         eax,dword ptr [ebp-4]
 00662F78    movsx       eax,word ptr [eax+8]
 00662F7C    mov         dword ptr [ebp-24],eax
 00662F7F    fild        dword ptr [ebp-24]
 00662F82    fstp        tbyte ptr [ebp-20]
 00662F85    wait
>00662F86    jmp         00663206
 00662F8B    mov         eax,dword ptr [ebp-4]
 00662F8E    movsx       eax,byte ptr [eax+8]
 00662F92    mov         dword ptr [ebp-24],eax
 00662F95    fild        dword ptr [ebp-24]
 00662F98    fstp        tbyte ptr [ebp-20]
 00662F9B    wait
>00662F9C    jmp         00663206
 00662FA1    mov         eax,dword ptr [ebp-4]
 00662FA4    movzx       eax,byte ptr [eax+8]
 00662FA8    mov         dword ptr [ebp-24],eax
 00662FAB    fild        dword ptr [ebp-24]
 00662FAE    fstp        tbyte ptr [ebp-20]
 00662FB1    wait
>00662FB2    jmp         00663206
 00662FB7    mov         eax,dword ptr [ebp-4]
 00662FBA    movzx       eax,word ptr [eax+8]
 00662FBE    mov         dword ptr [ebp-24],eax
 00662FC1    fild        dword ptr [ebp-24]
 00662FC4    fstp        tbyte ptr [ebp-20]
 00662FC7    wait
>00662FC8    jmp         00663206
 00662FCD    mov         eax,dword ptr [ebp-4]
 00662FD0    mov         eax,dword ptr [eax+8]
 00662FD3    mov         dword ptr [ebp-2C],eax
 00662FD6    xor         eax,eax
 00662FD8    mov         dword ptr [ebp-28],eax
 00662FDB    fild        qword ptr [ebp-2C]
 00662FDE    fstp        tbyte ptr [ebp-20]
 00662FE1    wait
>00662FE2    jmp         00663206
 00662FE7    mov         eax,dword ptr [ebp-4]
 00662FEA    fild        qword ptr [eax+8]
 00662FED    fstp        tbyte ptr [ebp-20]
 00662FF0    wait
>00662FF1    jmp         00663206
 00662FF6    mov         eax,dword ptr [ebp-4]
 00662FF9    mov         eax,dword ptr [eax+8]
 00662FFC    call        00662E80
 00663001    fstp        qword ptr [ebp-10]
 00663004    wait
>00663005    jmp         00663231
 0066300A    mov         eax,dword ptr [ebp-4]
 0066300D    call        00662D7C
 00663012    fstp        qword ptr [ebp-10]
 00663015    wait
>00663016    jmp         00663231
 0066301B    mov         eax,dword ptr [ebp-4]
 0066301E    mov         ax,word ptr [eax]
 00663021    sub         ax,100
>00663025    je          0066302E
 00663027    dec         ax
>0066302A    je          0066303F
>0066302C    jmp         00663050
 0066302E    mov         eax,dword ptr [ebp-4]
 00663031    call        00662CAC
 00663036    fstp        tbyte ptr [ebp-20]
 00663039    wait
>0066303A    jmp         00663206
 0066303F    mov         eax,dword ptr [ebp-4]
 00663042    call        00662DC8
 00663047    fstp        tbyte ptr [ebp-20]
 0066304A    wait
>0066304B    jmp         00663206
 00663050    mov         eax,dword ptr [ebp-4]
 00663053    test        byte ptr [eax+1],40
>00663057    je          006631E9
 0066305D    mov         eax,dword ptr [ebp-4]
 00663060    movzx       eax,word ptr [eax]
 00663063    and         eax,0FFFFBFFF
 00663068    cmp         eax,14
>0066306B    ja          006631DB
 00663071    jmp         dword ptr [eax*4+663078]
 00663071    dd          006631DB
 00663071    dd          006631DB
 00663071    dd          006630CC
 00663071    dd          006630DD
 00663071    dd          006630EE
 00663071    dd          006630FF
 00663071    dd          00663110
 00663071    dd          00663127
 00663071    dd          00663138
 00663071    dd          006631DB
 00663071    dd          006631DB
 00663071    dd          00663149
 00663071    dd          006631CA
 00663071    dd          006631DB
 00663071    dd          006631DB
 00663071    dd          006631DB
 00663071    dd          00663161
 00663071    dd          00663179
 00663071    dd          0066318E
 00663071    dd          006631A3
 00663071    dd          006631BC
 006630CC    mov         eax,dword ptr [ebp-4]
 006630CF    mov         eax,dword ptr [eax+8]
 006630D2    fild        word ptr [eax]
 006630D4    fstp        tbyte ptr [ebp-20]
 006630D7    wait
>006630D8    jmp         00663206
 006630DD    mov         eax,dword ptr [ebp-4]
 006630E0    mov         eax,dword ptr [eax+8]
 006630E3    fild        dword ptr [eax]
 006630E5    fstp        tbyte ptr [ebp-20]
 006630E8    wait
>006630E9    jmp         00663206
 006630EE    mov         eax,dword ptr [ebp-4]
 006630F1    mov         eax,dword ptr [eax+8]
 006630F4    fld         dword ptr [eax]
 006630F6    fstp        tbyte ptr [ebp-20]
 006630F9    wait
>006630FA    jmp         00663206
 006630FF    mov         eax,dword ptr [ebp-4]
 00663102    mov         eax,dword ptr [eax+8]
 00663105    fld         qword ptr [eax]
 00663107    fstp        tbyte ptr [ebp-20]
 0066310A    wait
>0066310B    jmp         00663206
 00663110    mov         eax,dword ptr [ebp-4]
 00663113    mov         eax,dword ptr [eax+8]
 00663116    fild        qword ptr [eax]
 00663118    fdiv        dword ptr ds:[663238];10000:Single
 0066311E    fstp        tbyte ptr [ebp-20]
 00663121    wait
>00663122    jmp         00663206
 00663127    mov         eax,dword ptr [ebp-4]
 0066312A    mov         eax,dword ptr [eax+8]
 0066312D    fld         qword ptr [eax]
 0066312F    fstp        tbyte ptr [ebp-20]
 00663132    wait
>00663133    jmp         00663206
 00663138    mov         eax,dword ptr [ebp-4]
 0066313B    call        00662CAC
 00663140    fstp        tbyte ptr [ebp-20]
 00663143    wait
>00663144    jmp         00663206
 00663149    mov         eax,dword ptr [ebp-4]
 0066314C    mov         eax,dword ptr [eax+8]
 0066314F    movsx       eax,word ptr [eax]
 00663152    mov         dword ptr [ebp-24],eax
 00663155    fild        dword ptr [ebp-24]
 00663158    fstp        tbyte ptr [ebp-20]
 0066315B    wait
>0066315C    jmp         00663206
 00663161    mov         eax,dword ptr [ebp-4]
 00663164    mov         eax,dword ptr [eax+8]
 00663167    movsx       eax,byte ptr [eax]
 0066316A    mov         dword ptr [ebp-24],eax
 0066316D    fild        dword ptr [ebp-24]
 00663170    fstp        tbyte ptr [ebp-20]
 00663173    wait
>00663174    jmp         00663206
 00663179    mov         eax,dword ptr [ebp-4]
 0066317C    mov         eax,dword ptr [eax+8]
 0066317F    movzx       eax,byte ptr [eax]
 00663182    mov         dword ptr [ebp-24],eax
 00663185    fild        dword ptr [ebp-24]
 00663188    fstp        tbyte ptr [ebp-20]
 0066318B    wait
>0066318C    jmp         00663206
 0066318E    mov         eax,dword ptr [ebp-4]
 00663191    mov         eax,dword ptr [eax+8]
 00663194    movzx       eax,word ptr [eax]
 00663197    mov         dword ptr [ebp-24],eax
 0066319A    fild        dword ptr [ebp-24]
 0066319D    fstp        tbyte ptr [ebp-20]
 006631A0    wait
>006631A1    jmp         00663206
 006631A3    mov         eax,dword ptr [ebp-4]
 006631A6    mov         eax,dword ptr [eax+8]
 006631A9    mov         eax,dword ptr [eax]
 006631AB    mov         dword ptr [ebp-2C],eax
 006631AE    xor         eax,eax
 006631B0    mov         dword ptr [ebp-28],eax
 006631B3    fild        qword ptr [ebp-2C]
 006631B6    fstp        tbyte ptr [ebp-20]
 006631B9    wait
>006631BA    jmp         00663206
 006631BC    mov         eax,dword ptr [ebp-4]
 006631BF    mov         eax,dword ptr [eax+8]
 006631C2    fild        qword ptr [eax]
 006631C4    fstp        tbyte ptr [ebp-20]
 006631C7    wait
>006631C8    jmp         00663206
 006631CA    mov         eax,dword ptr [ebp-4]
 006631CD    mov         eax,dword ptr [eax+8]
 006631D0    call        00662E80
 006631D5    fstp        qword ptr [ebp-10]
 006631D8    wait
>006631D9    jmp         00663231
 006631DB    mov         eax,dword ptr [ebp-4]
 006631DE    call        00662D7C
 006631E3    fstp        qword ptr [ebp-10]
 006631E6    wait
>006631E7    jmp         00663231
 006631E9    lea         edx,[ebp-10]
 006631EC    mov         eax,dword ptr [ebp-4]
 006631EF    call        00662E2C
 006631F4    test        al,al
>006631F6    jne         00663231
 006631F8    mov         eax,dword ptr [ebp-4]
 006631FB    call        00662D7C
 00663200    fstp        qword ptr [ebp-10]
 00663203    wait
>00663204    jmp         00663231
 00663206    mov         ax,word ptr [ebp-18]
 0066320A    push        eax
 0066320B    push        dword ptr [ebp-1C]
 0066320E    push        dword ptr [ebp-20]
 00663211    lea         eax,[ebp-10]
 00663214    call        TryFloatToDateTime
 00663219    test        al,al
>0066321B    jne         00663231
 0066321D    mov         edx,dword ptr [ebp-4]
 00663220    mov         dx,word ptr [edx]
 00663223    mov         cx,7
 00663227    mov         eax,8002000A
 0066322C    call        0065FDC4
 00663231    fld         qword ptr [ebp-10]
 00663234    mov         esp,ebp
 00663236    pop         ebp
 00663237    ret
end;*}

//0066323C
{*procedure sub_0066323C(?:?);
begin
 0066323C    push        ebp
 0066323D    mov         ebp,esp
 0066323F    add         esp,0FFFFFFE4
 00663242    xor         edx,edx
 00663244    mov         dword ptr [ebp-1C],edx
 00663247    mov         dword ptr [ebp-14],edx
 0066324A    mov         dword ptr [ebp-4],eax
 0066324D    xor         eax,eax
 0066324F    push        ebp
 00663250    push        6632CD
 00663255    push        dword ptr fs:[eax]
 00663258    mov         dword ptr fs:[eax],esp
 0066325B    mov         edx,dword ptr [ebp-4]
 0066325E    lea         eax,[ebp-14]
 00663261    call        00664050
 00663266    lea         eax,[ebp-10]
 00663269    push        eax
 0066326A    push        0
 0066326C    push        400
 00663271    mov         eax,dword ptr [ebp-14]
 00663274    push        eax
 00663275    call        OLEAUT32.104
 0066327A    mov         dword ptr [ebp-18],eax
 0066327D    cmp         dword ptr [ebp-18],0
>00663281    je          006632AF
 00663283    lea         eax,[ebp-1C]
 00663286    mov         edx,dword ptr [ebp-14]
 00663289    call        @LStrFromWStr
 0066328E    mov         eax,dword ptr [ebp-1C]
 00663291    lea         edx,[ebp-10]
 00663294    call        00659C4C
 00663299    test        al,al
>0066329B    jne         006632AF
 0066329D    mov         edx,dword ptr [ebp-4]
 006632A0    mov         dx,word ptr [edx]
 006632A3    mov         cx,6
 006632A7    mov         eax,dword ptr [ebp-18]
 006632AA    call        0065FDC4
 006632AF    xor         eax,eax
 006632B1    pop         edx
 006632B2    pop         ecx
 006632B3    pop         ecx
 006632B4    mov         dword ptr fs:[eax],edx
 006632B7    push        6632D4
 006632BC    lea         eax,[ebp-1C]
 006632BF    call        @LStrClr
 006632C4    lea         eax,[ebp-14]
 006632C7    call        @WStrClr
 006632CC    ret
>006632CD    jmp         @HandleFinally
>006632D2    jmp         006632BC
 006632D4    fild        qword ptr [ebp-10]
 006632D7    mov         esp,ebp
 006632D9    pop         ebp
 006632DA    ret
end;*}

//006632DC
{*procedure sub_006632DC(?:?);
begin
 006632DC    push        ebp
 006632DD    mov         ebp,esp
 006632DF    add         esp,0FFFFFFE0
 006632E2    mov         dword ptr [ebp-4],eax
 006632E5    lea         eax,[ebp-20]
 006632E8    push        eax
 006632E9    call        OLEAUT32.8
 006632EE    push        6
 006632F0    push        4
 006632F2    push        400
 006632F7    mov         eax,dword ptr [ebp-4]
 006632FA    push        eax
 006632FB    lea         eax,[ebp-20]
 006632FE    push        eax
 006632FF    call        OLEAUT32.147
 00663304    mov         edx,dword ptr [ebp-4]
 00663307    mov         dx,word ptr [edx]
 0066330A    mov         cx,6
 0066330E    call        0065FDC4
 00663313    mov         eax,dword ptr [ebp-18]
 00663316    mov         dword ptr [ebp-10],eax
 00663319    mov         eax,dword ptr [ebp-14]
 0066331C    mov         dword ptr [ebp-0C],eax
 0066331F    fild        qword ptr [ebp-10]
 00663322    mov         esp,ebp
 00663324    pop         ebp
 00663325    ret
end;*}

//00663328
{*procedure sub_00663328(?:?);
begin
 00663328    push        ebp
 00663329    mov         ebp,esp
 0066332B    add         esp,0FFFFFFE0
 0066332E    mov         dword ptr [ebp-4],eax
 00663331    lea         eax,[ebp-20]
 00663334    push        eax
 00663335    call        OLEAUT32.8
 0066333A    xor         eax,eax
 0066333C    push        ebp
 0066333D    push        66337E
 00663342    push        dword ptr fs:[eax]
 00663345    mov         dword ptr fs:[eax],esp
 00663348    mov         edx,dword ptr [ebp-4]
 0066334B    lea         eax,[ebp-20]
 0066334E    call        006607C0
 00663353    lea         eax,[ebp-20]
 00663356    call        dword ptr ds:[6ED154]
 0066335C    lea         eax,[ebp-20]
 0066335F    call        006633E0
 00663364    fistp       qword ptr [ebp-10]
 00663367    wait
 00663368    xor         eax,eax
 0066336A    pop         edx
 0066336B    pop         ecx
 0066336C    pop         ecx
 0066336D    mov         dword ptr fs:[eax],edx
 00663370    push        663385
 00663375    lea         eax,[ebp-20]
 00663378    call        00660244
 0066337D    ret
>0066337E    jmp         @HandleFinally
>00663383    jmp         00663375
 00663385    fild        qword ptr [ebp-10]
 00663388    mov         esp,ebp
 0066338A    pop         ebp
 0066338B    ret
end;*}

//0066338C
{*function sub_0066338C(?:?; ?:Double):?;
begin
 0066338C    push        ebp
 0066338D    mov         ebp,esp
 0066338F    add         esp,0FFFFFFE0
 00663392    push        ebx
 00663393    mov         dword ptr [ebp-8],edx
 00663396    mov         dword ptr [ebp-4],eax
 00663399    lea         edx,[ebp-10]
 0066339C    mov         eax,dword ptr [ebp-4]
 0066339F    mov         ax,word ptr [eax]
 006633A2    call        006689A0
 006633A7    mov         byte ptr [ebp-9],al
 006633AA    cmp         byte ptr [ebp-9],0
>006633AE    je          006633D7
 006633B0    lea         eax,[ebp-20]
 006633B3    push        eax
 006633B4    call        OLEAUT32.8
 006633B9    push        6
 006633BB    mov         ecx,dword ptr [ebp-4]
 006633BE    lea         edx,[ebp-20]
 006633C1    mov         eax,dword ptr [ebp-10]
 006633C4    mov         ebx,dword ptr [eax]
 006633C6    call        dword ptr [ebx+1C]
 006633C9    mov         eax,dword ptr [ebp-8]
 006633CC    mov         edx,dword ptr [ebp-18]
 006633CF    mov         dword ptr [eax],edx
 006633D1    mov         edx,dword ptr [ebp-14]
 006633D4    mov         dword ptr [eax+4],edx
 006633D7    mov         al,byte ptr [ebp-9]
 006633DA    pop         ebx
 006633DB    mov         esp,ebp
 006633DD    pop         ebp
 006633DE    ret
end;*}

//006633E0
{*procedure sub_006633E0(?:?);
begin
 006633E0    push        ebp
 006633E1    mov         ebp,esp
 006633E3    add         esp,0FFFFFFD4
 006633E6    mov         dword ptr [ebp-4],eax
 006633E9    mov         eax,dword ptr [ebp-4]
 006633EC    movzx       eax,word ptr [eax]
 006633EF    cmp         eax,14
>006633F2    ja          00663581
 006633F8    jmp         dword ptr [eax*4+6633FF]
 006633F8    dd          00663453
 006633F8    dd          00663581
 006633F8    dd          00663464
 006633F8    dd          00663473
 006633F8    dd          00663482
 006633F8    dd          00663491
 006633F8    dd          006634A0
 006633F8    dd          006634B5
 006633F8    dd          006634C4
 006633F8    dd          00663570
 006633F8    dd          00663581
 006633F8    dd          006634DB
 006633F8    dd          0066355C
 006633F8    dd          00663570
 006633F8    dd          00663581
 006633F8    dd          00663581
 006633F8    dd          006634F1
 006633F8    dd          00663507
 006633F8    dd          0066351D
 006633F8    dd          00663533
 006633F8    dd          0066354D
 00663453    xor         eax,eax
 00663455    mov         dword ptr [ebp-20],eax
 00663458    mov         dword ptr [ebp-1C],eax
 0066345B    mov         word ptr [ebp-18],ax
>0066345F    jmp         0066377E
 00663464    mov         eax,dword ptr [ebp-4]
 00663467    fild        word ptr [eax+8]
 0066346A    fstp        tbyte ptr [ebp-20]
 0066346D    wait
>0066346E    jmp         0066377E
 00663473    mov         eax,dword ptr [ebp-4]
 00663476    fild        dword ptr [eax+8]
 00663479    fstp        tbyte ptr [ebp-20]
 0066347C    wait
>0066347D    jmp         0066377E
 00663482    mov         eax,dword ptr [ebp-4]
 00663485    fld         dword ptr [eax+8]
 00663488    fstp        tbyte ptr [ebp-20]
 0066348B    wait
>0066348C    jmp         0066377E
 00663491    mov         eax,dword ptr [ebp-4]
 00663494    fld         qword ptr [eax+8]
 00663497    fstp        tbyte ptr [ebp-20]
 0066349A    wait
>0066349B    jmp         0066377E
 006634A0    mov         eax,dword ptr [ebp-4]
 006634A3    fild        qword ptr [eax+8]
 006634A6    fdiv        dword ptr ds:[6637B0];10000:Single
 006634AC    fstp        tbyte ptr [ebp-20]
 006634AF    wait
>006634B0    jmp         0066377E
 006634B5    mov         eax,dword ptr [ebp-4]
 006634B8    fld         qword ptr [eax+8]
 006634BB    fstp        tbyte ptr [ebp-20]
 006634BE    wait
>006634BF    jmp         0066377E
 006634C4    mov         eax,dword ptr [ebp-4]
 006634C7    call        0066323C
 006634CC    fdiv        dword ptr ds:[6637B0];10000:Single
 006634D2    fstp        tbyte ptr [ebp-20]
 006634D5    wait
>006634D6    jmp         0066377E
 006634DB    mov         eax,dword ptr [ebp-4]
 006634DE    movsx       eax,word ptr [eax+8]
 006634E2    mov         dword ptr [ebp-24],eax
 006634E5    fild        dword ptr [ebp-24]
 006634E8    fstp        tbyte ptr [ebp-20]
 006634EB    wait
>006634EC    jmp         0066377E
 006634F1    mov         eax,dword ptr [ebp-4]
 006634F4    movsx       eax,byte ptr [eax+8]
 006634F8    mov         dword ptr [ebp-24],eax
 006634FB    fild        dword ptr [ebp-24]
 006634FE    fstp        tbyte ptr [ebp-20]
 00663501    wait
>00663502    jmp         0066377E
 00663507    mov         eax,dword ptr [ebp-4]
 0066350A    movzx       eax,byte ptr [eax+8]
 0066350E    mov         dword ptr [ebp-24],eax
 00663511    fild        dword ptr [ebp-24]
 00663514    fstp        tbyte ptr [ebp-20]
 00663517    wait
>00663518    jmp         0066377E
 0066351D    mov         eax,dword ptr [ebp-4]
 00663520    movzx       eax,word ptr [eax+8]
 00663524    mov         dword ptr [ebp-24],eax
 00663527    fild        dword ptr [ebp-24]
 0066352A    fstp        tbyte ptr [ebp-20]
 0066352D    wait
>0066352E    jmp         0066377E
 00663533    mov         eax,dword ptr [ebp-4]
 00663536    mov         eax,dword ptr [eax+8]
 00663539    mov         dword ptr [ebp-2C],eax
 0066353C    xor         eax,eax
 0066353E    mov         dword ptr [ebp-28],eax
 00663541    fild        qword ptr [ebp-2C]
 00663544    fstp        tbyte ptr [ebp-20]
 00663547    wait
>00663548    jmp         0066377E
 0066354D    mov         eax,dword ptr [ebp-4]
 00663550    fild        qword ptr [eax+8]
 00663553    fstp        tbyte ptr [ebp-20]
 00663556    wait
>00663557    jmp         0066377E
 0066355C    mov         eax,dword ptr [ebp-4]
 0066355F    mov         eax,dword ptr [eax+8]
 00663562    call        006633E0
 00663567    fistp       qword ptr [ebp-10]
 0066356A    wait
>0066356B    jmp         006637A9
 00663570    mov         eax,dword ptr [ebp-4]
 00663573    call        006632DC
 00663578    fistp       qword ptr [ebp-10]
 0066357B    wait
>0066357C    jmp         006637A9
 00663581    mov         eax,dword ptr [ebp-4]
 00663584    mov         ax,word ptr [eax]
 00663587    sub         ax,100
>0066358B    je          00663594
 0066358D    dec         ax
>00663590    je          006635AB
>00663592    jmp         006635C2
 00663594    mov         eax,dword ptr [ebp-4]
 00663597    call        0066323C
 0066359C    fdiv        dword ptr ds:[6637B0];10000:Single
 006635A2    fstp        tbyte ptr [ebp-20]
 006635A5    wait
>006635A6    jmp         0066377E
 006635AB    mov         eax,dword ptr [ebp-4]
 006635AE    call        00663328
 006635B3    fdiv        dword ptr ds:[6637B0];10000:Single
 006635B9    fstp        tbyte ptr [ebp-20]
 006635BC    wait
>006635BD    jmp         0066377E
 006635C2    mov         eax,dword ptr [ebp-4]
 006635C5    test        byte ptr [eax+1],40
>006635C9    je          00663761
 006635CF    mov         eax,dword ptr [ebp-4]
 006635D2    movzx       eax,word ptr [eax]
 006635D5    and         eax,0FFFFBFFF
 006635DA    cmp         eax,14
>006635DD    ja          00663753
 006635E3    jmp         dword ptr [eax*4+6635EA]
 006635E3    dd          00663753
 006635E3    dd          00663753
 006635E3    dd          0066363E
 006635E3    dd          0066364F
 006635E3    dd          00663660
 006635E3    dd          00663671
 006635E3    dd          00663682
 006635E3    dd          00663699
 006635E3    dd          006636AA
 006635E3    dd          00663753
 006635E3    dd          00663753
 006635E3    dd          006636C1
 006635E3    dd          00663742
 006635E3    dd          00663753
 006635E3    dd          00663753
 006635E3    dd          00663753
 006635E3    dd          006636D9
 006635E3    dd          006636F1
 006635E3    dd          00663706
 006635E3    dd          0066371B
 006635E3    dd          00663734
 0066363E    mov         eax,dword ptr [ebp-4]
 00663641    mov         eax,dword ptr [eax+8]
 00663644    fild        word ptr [eax]
 00663646    fstp        tbyte ptr [ebp-20]
 00663649    wait
>0066364A    jmp         0066377E
 0066364F    mov         eax,dword ptr [ebp-4]
 00663652    mov         eax,dword ptr [eax+8]
 00663655    fild        dword ptr [eax]
 00663657    fstp        tbyte ptr [ebp-20]
 0066365A    wait
>0066365B    jmp         0066377E
 00663660    mov         eax,dword ptr [ebp-4]
 00663663    mov         eax,dword ptr [eax+8]
 00663666    fld         dword ptr [eax]
 00663668    fstp        tbyte ptr [ebp-20]
 0066366B    wait
>0066366C    jmp         0066377E
 00663671    mov         eax,dword ptr [ebp-4]
 00663674    mov         eax,dword ptr [eax+8]
 00663677    fld         qword ptr [eax]
 00663679    fstp        tbyte ptr [ebp-20]
 0066367C    wait
>0066367D    jmp         0066377E
 00663682    mov         eax,dword ptr [ebp-4]
 00663685    mov         eax,dword ptr [eax+8]
 00663688    fild        qword ptr [eax]
 0066368A    fdiv        dword ptr ds:[6637B0];10000:Single
 00663690    fstp        tbyte ptr [ebp-20]
 00663693    wait
>00663694    jmp         0066377E
 00663699    mov         eax,dword ptr [ebp-4]
 0066369C    mov         eax,dword ptr [eax+8]
 0066369F    fld         qword ptr [eax]
 006636A1    fstp        tbyte ptr [ebp-20]
 006636A4    wait
>006636A5    jmp         0066377E
 006636AA    mov         eax,dword ptr [ebp-4]
 006636AD    call        0066323C
 006636B2    fdiv        dword ptr ds:[6637B0];10000:Single
 006636B8    fstp        tbyte ptr [ebp-20]
 006636BB    wait
>006636BC    jmp         0066377E
 006636C1    mov         eax,dword ptr [ebp-4]
 006636C4    mov         eax,dword ptr [eax+8]
 006636C7    movsx       eax,word ptr [eax]
 006636CA    mov         dword ptr [ebp-24],eax
 006636CD    fild        dword ptr [ebp-24]
 006636D0    fstp        tbyte ptr [ebp-20]
 006636D3    wait
>006636D4    jmp         0066377E
 006636D9    mov         eax,dword ptr [ebp-4]
 006636DC    mov         eax,dword ptr [eax+8]
 006636DF    movsx       eax,byte ptr [eax]
 006636E2    mov         dword ptr [ebp-24],eax
 006636E5    fild        dword ptr [ebp-24]
 006636E8    fstp        tbyte ptr [ebp-20]
 006636EB    wait
>006636EC    jmp         0066377E
 006636F1    mov         eax,dword ptr [ebp-4]
 006636F4    mov         eax,dword ptr [eax+8]
 006636F7    movzx       eax,byte ptr [eax]
 006636FA    mov         dword ptr [ebp-24],eax
 006636FD    fild        dword ptr [ebp-24]
 00663700    fstp        tbyte ptr [ebp-20]
 00663703    wait
>00663704    jmp         0066377E
 00663706    mov         eax,dword ptr [ebp-4]
 00663709    mov         eax,dword ptr [eax+8]
 0066370C    movzx       eax,word ptr [eax]
 0066370F    mov         dword ptr [ebp-24],eax
 00663712    fild        dword ptr [ebp-24]
 00663715    fstp        tbyte ptr [ebp-20]
 00663718    wait
>00663719    jmp         0066377E
 0066371B    mov         eax,dword ptr [ebp-4]
 0066371E    mov         eax,dword ptr [eax+8]
 00663721    mov         eax,dword ptr [eax]
 00663723    mov         dword ptr [ebp-2C],eax
 00663726    xor         eax,eax
 00663728    mov         dword ptr [ebp-28],eax
 0066372B    fild        qword ptr [ebp-2C]
 0066372E    fstp        tbyte ptr [ebp-20]
 00663731    wait
>00663732    jmp         0066377E
 00663734    mov         eax,dword ptr [ebp-4]
 00663737    mov         eax,dword ptr [eax+8]
 0066373A    fild        qword ptr [eax]
 0066373C    fstp        tbyte ptr [ebp-20]
 0066373F    wait
>00663740    jmp         0066377E
 00663742    mov         eax,dword ptr [ebp-4]
 00663745    mov         eax,dword ptr [eax+8]
 00663748    call        006633E0
 0066374D    fistp       qword ptr [ebp-10]
 00663750    wait
>00663751    jmp         006637A9
 00663753    mov         eax,dword ptr [ebp-4]
 00663756    call        006632DC
 0066375B    fistp       qword ptr [ebp-10]
 0066375E    wait
>0066375F    jmp         006637A9
 00663761    lea         edx,[ebp-10]
 00663764    mov         eax,dword ptr [ebp-4]
 00663767    call        0066338C
 0066376C    test        al,al
>0066376E    jne         006637A9
 00663770    mov         eax,dword ptr [ebp-4]
 00663773    call        006632DC
 00663778    fistp       qword ptr [ebp-10]
 0066377B    wait
>0066377C    jmp         006637A9
 0066377E    mov         ax,word ptr [ebp-18]
 00663782    push        eax
 00663783    push        dword ptr [ebp-1C]
 00663786    push        dword ptr [ebp-20]
 00663789    lea         eax,[ebp-10]
 0066378C    call        TryFloatToCurr
 00663791    test        al,al
>00663793    jne         006637A9
 00663795    mov         edx,dword ptr [ebp-4]
 00663798    mov         dx,word ptr [edx]
 0066379B    mov         cx,6
 0066379F    mov         eax,8002000A
 006637A4    call        0065FDC4
 006637A9    fild        qword ptr [ebp-10]
 006637AC    mov         esp,ebp
 006637AE    pop         ebp
 006637AF    ret
end;*}

//006637B4
{*procedure sub_006637B4(?:?; ?:?; ?:?);
begin
 006637B4    push        ebp
 006637B5    mov         ebp,esp
 006637B7    push        ecx
 006637B8    mov         dword ptr [ebp-4],eax
 006637BB    mov         eax,dword ptr [ebp-4]
 006637BE    call        @WStrClr
 006637C3    push        eax
 006637C4    push        0
 006637C6    push        400
 006637CB    push        dword ptr [ebp+0C]
 006637CE    push        dword ptr [ebp+8]
 006637D1    call        OLEAUT32.113
 006637D6    mov         cx,8
 006637DA    mov         dx,6
 006637DE    call        0065FDC4
 006637E3    pop         ecx
 006637E4    pop         ebp
 006637E5    ret         8
end;*}

//006637E8
{*procedure sub_006637E8(?:?; ?:?; ?:?);
begin
 006637E8    push        ebp
 006637E9    mov         ebp,esp
 006637EB    push        ecx
 006637EC    mov         dword ptr [ebp-4],eax
 006637EF    mov         eax,dword ptr [ebp-4]
 006637F2    call        @WStrClr
 006637F7    push        eax
 006637F8    push        0
 006637FA    push        400
 006637FF    push        dword ptr [ebp+0C]
 00663802    push        dword ptr [ebp+8]
 00663805    call        OLEAUT32.114
 0066380A    mov         cx,8
 0066380E    mov         dx,7
 00663812    call        0065FDC4
 00663817    pop         ecx
 00663818    pop         ebp
 00663819    ret         8
end;*}

//0066381C
{*procedure sub_0066381C(?:?; ?:?);
begin
 0066381C    push        ebp
 0066381D    mov         ebp,esp
 0066381F    add         esp,0FFFFFFF8
 00663822    mov         dword ptr [ebp-8],edx
 00663825    mov         word ptr [ebp-2],ax
 00663829    mov         eax,dword ptr [ebp-8]
 0066382C    call        @WStrClr
 00663831    push        eax
 00663832    push        0
 00663834    push        400
 00663839    mov         ax,word ptr [ebp-2]
 0066383D    push        eax
 0066383E    call        OLEAUT32.116
 00663843    mov         cx,8
 00663847    mov         dx,0B
 0066384B    call        0065FDC4
 00663850    pop         ecx
 00663851    pop         ecx
 00663852    pop         ebp
 00663853    ret
end;*}

//00663854
{*procedure sub_00663854(?:?; ?:?);
begin
 00663854    push        ebp
 00663855    mov         ebp,esp
 00663857    add         esp,0FFFFFFE8
 0066385A    mov         dword ptr [ebp-8],edx
 0066385D    mov         dword ptr [ebp-4],eax
 00663860    lea         eax,[ebp-18]
 00663863    push        eax
 00663864    call        OLEAUT32.8
 00663869    push        8
 0066386B    push        4
 0066386D    push        400
 00663872    mov         eax,dword ptr [ebp-4]
 00663875    push        eax
 00663876    lea         eax,[ebp-18]
 00663879    push        eax
 0066387A    call        OLEAUT32.147
 0066387F    mov         edx,dword ptr [ebp-4]
 00663882    mov         dx,word ptr [edx]
 00663885    mov         cx,100
 00663889    call        0065FDC4
 0066388E    mov         eax,dword ptr [ebp-8]
 00663891    mov         edx,dword ptr [ebp-10]
 00663894    call        @LStrFromWStr
 00663899    mov         esp,ebp
 0066389B    pop         ebp
 0066389C    ret
end;*}

//006638A0
{*procedure sub_006638A0(?:?; ?:?);
begin
 006638A0    push        ebp
 006638A1    mov         ebp,esp
 006638A3    add         esp,0FFFFFFE8
 006638A6    mov         dword ptr [ebp-8],edx
 006638A9    mov         dword ptr [ebp-4],eax
 006638AC    lea         eax,[ebp-18]
 006638AF    push        eax
 006638B0    call        OLEAUT32.8
 006638B5    xor         eax,eax
 006638B7    push        ebp
 006638B8    push        6638F8
 006638BD    push        dword ptr fs:[eax]
 006638C0    mov         dword ptr fs:[eax],esp
 006638C3    mov         edx,dword ptr [ebp-4]
 006638C6    lea         eax,[ebp-18]
 006638C9    call        006607C0
 006638CE    lea         eax,[ebp-18]
 006638D1    call        dword ptr ds:[6ED154]
 006638D7    lea         edx,[ebp-18]
 006638DA    mov         eax,dword ptr [ebp-8]
 006638DD    call        00663964
 006638E2    xor         eax,eax
 006638E4    pop         edx
 006638E5    pop         ecx
 006638E6    pop         ecx
 006638E7    mov         dword ptr fs:[eax],edx
 006638EA    push        6638FF
 006638EF    lea         eax,[ebp-18]
 006638F2    call        00660244
 006638F7    ret
>006638F8    jmp         @HandleFinally
>006638FD    jmp         006638EF
 006638FF    mov         esp,ebp
 00663901    pop         ebp
 00663902    ret
end;*}

//00663904
{*function sub_00663904(?:?; ?:?):?;
begin
 00663904    push        ebp
 00663905    mov         ebp,esp
 00663907    add         esp,0FFFFFFE0
 0066390A    push        ebx
 0066390B    mov         dword ptr [ebp-8],edx
 0066390E    mov         dword ptr [ebp-4],eax
 00663911    mov         eax,dword ptr [ebp-8]
 00663914    test        eax,eax
>00663916    je          0066391C
 00663918    xor         edx,edx
 0066391A    mov         dword ptr [eax],edx
 0066391C    lea         edx,[ebp-10]
 0066391F    mov         eax,dword ptr [ebp-4]
 00663922    mov         ax,word ptr [eax]
 00663925    call        006689A0
 0066392A    mov         byte ptr [ebp-9],al
 0066392D    cmp         byte ptr [ebp-9],0
>00663931    je          0066395A
 00663933    lea         eax,[ebp-20]
 00663936    push        eax
 00663937    call        OLEAUT32.8
 0066393C    push        100
 00663941    mov         ecx,dword ptr [ebp-4]
 00663944    lea         edx,[ebp-20]
 00663947    mov         eax,dword ptr [ebp-10]
 0066394A    mov         ebx,dword ptr [eax]
 0066394C    call        dword ptr [ebx+1C]
 0066394F    mov         eax,dword ptr [ebp-8]
 00663952    mov         edx,dword ptr [ebp-18]
 00663955    call        @LStrAsg
 0066395A    mov         al,byte ptr [ebp-9]
 0066395D    pop         ebx
 0066395E    mov         esp,ebp
 00663960    pop         ebp
 00663961    ret
end;*}

//00663964
{*procedure sub_00663964(?:?; ?:?);
begin
 00663964    push        ebp
 00663965    mov         ebp,esp
 00663967    mov         ecx,0F
 0066396C    push        0
 0066396E    push        0
 00663970    dec         ecx
>00663971    jne         0066396C
 00663973    mov         dword ptr [ebp-8],edx
 00663976    mov         dword ptr [ebp-4],eax
 00663979    xor         eax,eax
 0066397B    push        ebp
 0066397C    push        663EDA
 00663981    push        dword ptr fs:[eax]
 00663984    mov         dword ptr fs:[eax],esp
 00663987    mov         eax,dword ptr [ebp-8]
 0066398A    movzx       eax,word ptr [eax]
 0066398D    cmp         eax,14
>00663990    ja          00663BC9
 00663996    jmp         dword ptr [eax*4+66399D]
 00663996    dd          006639F1
 00663996    dd          00663BC9
 00663996    dd          006639FE
 00663996    dd          00663A1D
 00663996    dd          00663A3B
 00663996    dd          00663A60
 00663996    dd          00663A85
 00663996    dd          00663AA6
 00663996    dd          00663AC7
 00663996    dd          00663BAE
 00663996    dd          00663BC9
 00663996    dd          00663ADA
 00663996    dd          00663B99
 00663996    dd          00663BAE
 00663996    dd          00663BC9
 00663996    dd          00663BC9
 00663996    dd          00663AF9
 00663996    dd          00663B18
 00663996    dd          00663B37
 00663996    dd          00663B56
 00663996    dd          00663B78
 006639F1    mov         eax,dword ptr [ebp-4]
 006639F4    call        @LStrClr
>006639F9    jmp         00663E8B
 006639FE    lea         edx,[ebp-0C]
 00663A01    mov         eax,dword ptr [ebp-8]
 00663A04    movsx       eax,word ptr [eax+8]
 00663A08    call        IntToStr
 00663A0D    mov         edx,dword ptr [ebp-0C]
 00663A10    mov         eax,dword ptr [ebp-4]
 00663A13    call        @LStrAsg
>00663A18    jmp         00663E8B
 00663A1D    lea         edx,[ebp-10]
 00663A20    mov         eax,dword ptr [ebp-8]
 00663A23    mov         eax,dword ptr [eax+8]
 00663A26    call        IntToStr
 00663A2B    mov         edx,dword ptr [ebp-10]
 00663A2E    mov         eax,dword ptr [ebp-4]
 00663A31    call        @LStrAsg
>00663A36    jmp         00663E8B
 00663A3B    mov         eax,dword ptr [ebp-8]
 00663A3E    fld         dword ptr [eax+8]
 00663A41    add         esp,0FFFFFFF4
 00663A44    fstp        tbyte ptr [esp]
 00663A47    wait
 00663A48    lea         eax,[ebp-14]
 00663A4B    call        FloatToStr
 00663A50    mov         edx,dword ptr [ebp-14]
 00663A53    mov         eax,dword ptr [ebp-4]
 00663A56    call        @LStrAsg
>00663A5B    jmp         00663E8B
 00663A60    mov         eax,dword ptr [ebp-8]
 00663A63    fld         qword ptr [eax+8]
 00663A66    add         esp,0FFFFFFF4
 00663A69    fstp        tbyte ptr [esp]
 00663A6C    wait
 00663A6D    lea         eax,[ebp-18]
 00663A70    call        FloatToStr
 00663A75    mov         edx,dword ptr [ebp-18]
 00663A78    mov         eax,dword ptr [ebp-4]
 00663A7B    call        @LStrAsg
>00663A80    jmp         00663E8B
 00663A85    mov         eax,dword ptr [ebp-8]
 00663A88    push        dword ptr [eax+0C]
 00663A8B    push        dword ptr [eax+8]
 00663A8E    lea         eax,[ebp-1C]
 00663A91    call        006637B4
 00663A96    mov         edx,dword ptr [ebp-1C]
 00663A99    mov         eax,dword ptr [ebp-4]
 00663A9C    call        @LStrFromWStr
>00663AA1    jmp         00663E8B
 00663AA6    mov         eax,dword ptr [ebp-8]
 00663AA9    push        dword ptr [eax+0C]
 00663AAC    push        dword ptr [eax+8]
 00663AAF    lea         eax,[ebp-20]
 00663AB2    call        006637E8
 00663AB7    mov         edx,dword ptr [ebp-20]
 00663ABA    mov         eax,dword ptr [ebp-4]
 00663ABD    call        @LStrFromWStr
>00663AC2    jmp         00663E8B
 00663AC7    mov         eax,dword ptr [ebp-4]
 00663ACA    mov         edx,dword ptr [ebp-8]
 00663ACD    mov         edx,dword ptr [edx+8]
 00663AD0    call        @LStrFromWStr
>00663AD5    jmp         00663E8B
 00663ADA    lea         edx,[ebp-24]
 00663ADD    mov         eax,dword ptr [ebp-8]
 00663AE0    mov         ax,word ptr [eax+8]
 00663AE4    call        0066381C
 00663AE9    mov         edx,dword ptr [ebp-24]
 00663AEC    mov         eax,dword ptr [ebp-4]
 00663AEF    call        @LStrFromWStr
>00663AF4    jmp         00663E8B
 00663AF9    lea         edx,[ebp-28]
 00663AFC    mov         eax,dword ptr [ebp-8]
 00663AFF    movsx       eax,byte ptr [eax+8]
 00663B03    call        IntToStr
 00663B08    mov         edx,dword ptr [ebp-28]
 00663B0B    mov         eax,dword ptr [ebp-4]
 00663B0E    call        @LStrAsg
>00663B13    jmp         00663E8B
 00663B18    lea         edx,[ebp-2C]
 00663B1B    mov         eax,dword ptr [ebp-8]
 00663B1E    movzx       eax,byte ptr [eax+8]
 00663B22    call        IntToStr
 00663B27    mov         edx,dword ptr [ebp-2C]
 00663B2A    mov         eax,dword ptr [ebp-4]
 00663B2D    call        @LStrAsg
>00663B32    jmp         00663E8B
 00663B37    lea         edx,[ebp-30]
 00663B3A    mov         eax,dword ptr [ebp-8]
 00663B3D    movzx       eax,word ptr [eax+8]
 00663B41    call        IntToStr
 00663B46    mov         edx,dword ptr [ebp-30]
 00663B49    mov         eax,dword ptr [ebp-4]
 00663B4C    call        @LStrAsg
>00663B51    jmp         00663E8B
 00663B56    mov         eax,dword ptr [ebp-8]
 00663B59    mov         eax,dword ptr [eax+8]
 00663B5C    xor         edx,edx
 00663B5E    push        edx
 00663B5F    push        eax
 00663B60    lea         eax,[ebp-34]
 00663B63    call        00657BCC
 00663B68    mov         edx,dword ptr [ebp-34]
 00663B6B    mov         eax,dword ptr [ebp-4]
 00663B6E    call        @LStrAsg
>00663B73    jmp         00663E8B
 00663B78    mov         eax,dword ptr [ebp-8]
 00663B7B    push        dword ptr [eax+0C]
 00663B7E    push        dword ptr [eax+8]
 00663B81    lea         eax,[ebp-38]
 00663B84    call        00657BCC
 00663B89    mov         edx,dword ptr [ebp-38]
 00663B8C    mov         eax,dword ptr [ebp-4]
 00663B8F    call        @LStrAsg
>00663B94    jmp         00663E8B
 00663B99    mov         eax,dword ptr [ebp-8]
 00663B9C    mov         eax,dword ptr [eax+8]
 00663B9F    mov         edx,eax
 00663BA1    mov         eax,dword ptr [ebp-4]
 00663BA4    call        00663964
>00663BA9    jmp         00663E8B
 00663BAE    lea         edx,[ebp-3C]
 00663BB1    mov         eax,dword ptr [ebp-8]
 00663BB4    call        00663854
 00663BB9    mov         edx,dword ptr [ebp-3C]
 00663BBC    mov         eax,dword ptr [ebp-4]
 00663BBF    call        @LStrAsg
>00663BC4    jmp         00663E8B
 00663BC9    mov         eax,dword ptr [ebp-8]
 00663BCC    mov         ax,word ptr [eax]
 00663BCF    sub         ax,100
>00663BD3    je          00663BDC
 00663BD5    dec         ax
>00663BD8    je          00663BEF
>00663BDA    jmp         00663C0A
 00663BDC    mov         eax,dword ptr [ebp-4]
 00663BDF    mov         edx,dword ptr [ebp-8]
 00663BE2    mov         edx,dword ptr [edx+8]
 00663BE5    call        @LStrAsg
>00663BEA    jmp         00663E8B
 00663BEF    lea         edx,[ebp-40]
 00663BF2    mov         eax,dword ptr [ebp-8]
 00663BF5    call        006638A0
 00663BFA    mov         edx,dword ptr [ebp-40]
 00663BFD    mov         eax,dword ptr [ebp-4]
 00663C00    call        @LStrAsg
>00663C05    jmp         00663E8B
 00663C0A    mov         eax,dword ptr [ebp-8]
 00663C0D    test        byte ptr [eax+1],40
>00663C11    je          00663E5F
 00663C17    mov         eax,dword ptr [ebp-8]
 00663C1A    movzx       eax,word ptr [eax]
 00663C1D    and         eax,0FFFFBFFF
 00663C22    cmp         eax,14
>00663C25    ja          00663E47
 00663C2B    jmp         dword ptr [eax*4+663C32]
 00663C2B    dd          00663E47
 00663C2B    dd          00663E47
 00663C2B    dd          00663C86
 00663C2B    dd          00663CA7
 00663C2B    dd          00663CC7
 00663C2B    dd          00663CEE
 00663C2B    dd          00663D15
 00663C2B    dd          00663D38
 00663C2B    dd          00663D5B
 00663C2B    dd          00663E47
 00663C2B    dd          00663E47
 00663C2B    dd          00663D70
 00663C2B    dd          00663E35
 00663C2B    dd          00663E47
 00663C2B    dd          00663E47
 00663C2B    dd          00663E47
 00663C2B    dd          00663D91
 00663C2B    dd          00663DB2
 00663C2B    dd          00663DD3
 00663C2B    dd          00663DF4
 00663C2B    dd          00663E15
 00663C86    lea         edx,[ebp-44]
 00663C89    mov         eax,dword ptr [ebp-8]
 00663C8C    mov         eax,dword ptr [eax+8]
 00663C8F    movsx       eax,word ptr [eax]
 00663C92    call        IntToStr
 00663C97    mov         edx,dword ptr [ebp-44]
 00663C9A    mov         eax,dword ptr [ebp-4]
 00663C9D    call        @LStrAsg
>00663CA2    jmp         00663E8B
 00663CA7    lea         edx,[ebp-48]
 00663CAA    mov         eax,dword ptr [ebp-8]
 00663CAD    mov         eax,dword ptr [eax+8]
 00663CB0    mov         eax,dword ptr [eax]
 00663CB2    call        IntToStr
 00663CB7    mov         edx,dword ptr [ebp-48]
 00663CBA    mov         eax,dword ptr [ebp-4]
 00663CBD    call        @LStrAsg
>00663CC2    jmp         00663E8B
 00663CC7    mov         eax,dword ptr [ebp-8]
 00663CCA    mov         eax,dword ptr [eax+8]
 00663CCD    fld         dword ptr [eax]
 00663CCF    add         esp,0FFFFFFF4
 00663CD2    fstp        tbyte ptr [esp]
 00663CD5    wait
 00663CD6    lea         eax,[ebp-4C]
 00663CD9    call        FloatToStr
 00663CDE    mov         edx,dword ptr [ebp-4C]
 00663CE1    mov         eax,dword ptr [ebp-4]
 00663CE4    call        @LStrAsg
>00663CE9    jmp         00663E8B
 00663CEE    mov         eax,dword ptr [ebp-8]
 00663CF1    mov         eax,dword ptr [eax+8]
 00663CF4    fld         qword ptr [eax]
 00663CF6    add         esp,0FFFFFFF4
 00663CF9    fstp        tbyte ptr [esp]
 00663CFC    wait
 00663CFD    lea         eax,[ebp-50]
 00663D00    call        FloatToStr
 00663D05    mov         edx,dword ptr [ebp-50]
 00663D08    mov         eax,dword ptr [ebp-4]
 00663D0B    call        @LStrAsg
>00663D10    jmp         00663E8B
 00663D15    mov         eax,dword ptr [ebp-8]
 00663D18    mov         eax,dword ptr [eax+8]
 00663D1B    push        dword ptr [eax+4]
 00663D1E    push        dword ptr [eax]
 00663D20    lea         eax,[ebp-54]
 00663D23    call        006637B4
 00663D28    mov         edx,dword ptr [ebp-54]
 00663D2B    mov         eax,dword ptr [ebp-4]
 00663D2E    call        @LStrFromWStr
>00663D33    jmp         00663E8B
 00663D38    mov         eax,dword ptr [ebp-8]
 00663D3B    mov         eax,dword ptr [eax+8]
 00663D3E    push        dword ptr [eax+4]
 00663D41    push        dword ptr [eax]
 00663D43    lea         eax,[ebp-58]
 00663D46    call        006637E8
 00663D4B    mov         edx,dword ptr [ebp-58]
 00663D4E    mov         eax,dword ptr [ebp-4]
 00663D51    call        @LStrFromWStr
>00663D56    jmp         00663E8B
 00663D5B    mov         eax,dword ptr [ebp-4]
 00663D5E    mov         edx,dword ptr [ebp-8]
 00663D61    mov         edx,dword ptr [edx+8]
 00663D64    mov         edx,dword ptr [edx]
 00663D66    call        @LStrFromPWChar
>00663D6B    jmp         00663E8B
 00663D70    lea         edx,[ebp-5C]
 00663D73    mov         eax,dword ptr [ebp-8]
 00663D76    mov         eax,dword ptr [eax+8]
 00663D79    mov         ax,word ptr [eax]
 00663D7C    call        0066381C
 00663D81    mov         edx,dword ptr [ebp-5C]
 00663D84    mov         eax,dword ptr [ebp-4]
 00663D87    call        @LStrFromWStr
>00663D8C    jmp         00663E8B
 00663D91    lea         edx,[ebp-60]
 00663D94    mov         eax,dword ptr [ebp-8]
 00663D97    mov         eax,dword ptr [eax+8]
 00663D9A    movsx       eax,byte ptr [eax]
 00663D9D    call        IntToStr
 00663DA2    mov         edx,dword ptr [ebp-60]
 00663DA5    mov         eax,dword ptr [ebp-4]
 00663DA8    call        @LStrAsg
>00663DAD    jmp         00663E8B
 00663DB2    lea         edx,[ebp-64]
 00663DB5    mov         eax,dword ptr [ebp-8]
 00663DB8    mov         eax,dword ptr [eax+8]
 00663DBB    movzx       eax,byte ptr [eax]
 00663DBE    call        IntToStr
 00663DC3    mov         edx,dword ptr [ebp-64]
 00663DC6    mov         eax,dword ptr [ebp-4]
 00663DC9    call        @LStrAsg
>00663DCE    jmp         00663E8B
 00663DD3    lea         edx,[ebp-68]
 00663DD6    mov         eax,dword ptr [ebp-8]
 00663DD9    mov         eax,dword ptr [eax+8]
 00663DDC    movzx       eax,word ptr [eax]
 00663DDF    call        IntToStr
 00663DE4    mov         edx,dword ptr [ebp-68]
 00663DE7    mov         eax,dword ptr [ebp-4]
 00663DEA    call        @LStrAsg
>00663DEF    jmp         00663E8B
 00663DF4    mov         eax,dword ptr [ebp-8]
 00663DF7    mov         eax,dword ptr [eax+8]
 00663DFA    mov         eax,dword ptr [eax]
 00663DFC    xor         edx,edx
 00663DFE    push        edx
 00663DFF    push        eax
 00663E00    lea         eax,[ebp-6C]
 00663E03    call        00657BCC
 00663E08    mov         edx,dword ptr [ebp-6C]
 00663E0B    mov         eax,dword ptr [ebp-4]
 00663E0E    call        @LStrAsg
>00663E13    jmp         00663E8B
 00663E15    mov         eax,dword ptr [ebp-8]
 00663E18    mov         eax,dword ptr [eax+8]
 00663E1B    push        dword ptr [eax+4]
 00663E1E    push        dword ptr [eax]
 00663E20    lea         eax,[ebp-70]
 00663E23    call        00657BCC
 00663E28    mov         edx,dword ptr [ebp-70]
 00663E2B    mov         eax,dword ptr [ebp-4]
 00663E2E    call        @LStrAsg
>00663E33    jmp         00663E8B
 00663E35    mov         eax,dword ptr [ebp-8]
 00663E38    mov         eax,dword ptr [eax+8]
 00663E3B    mov         edx,eax
 00663E3D    mov         eax,dword ptr [ebp-4]
 00663E40    call        00663964
>00663E45    jmp         00663E8B
 00663E47    lea         edx,[ebp-74]
 00663E4A    mov         eax,dword ptr [ebp-8]
 00663E4D    call        00663854
 00663E52    mov         edx,dword ptr [ebp-74]
 00663E55    mov         eax,dword ptr [ebp-4]
 00663E58    call        @LStrAsg
>00663E5D    jmp         00663E8B
 00663E5F    mov         eax,dword ptr [ebp-4]
 00663E62    call        @LStrClr
 00663E67    mov         edx,eax
 00663E69    mov         eax,dword ptr [ebp-8]
 00663E6C    call        00663904
 00663E71    test        al,al
>00663E73    jne         00663E8B
 00663E75    lea         edx,[ebp-78]
 00663E78    mov         eax,dword ptr [ebp-8]
 00663E7B    call        00663854
 00663E80    mov         edx,dword ptr [ebp-78]
 00663E83    mov         eax,dword ptr [ebp-4]
 00663E86    call        @LStrAsg
 00663E8B    xor         eax,eax
 00663E8D    pop         edx
 00663E8E    pop         ecx
 00663E8F    pop         ecx
 00663E90    mov         dword ptr fs:[eax],edx
 00663E93    push        663EE1
 00663E98    lea         eax,[ebp-78]
 00663E9B    mov         edx,7
 00663EA0    call        @LStrArrayClr
 00663EA5    lea         eax,[ebp-5C]
 00663EA8    mov         edx,3
 00663EAD    call        @WStrArrayClr
 00663EB2    lea         eax,[ebp-50]
 00663EB5    mov         edx,0B
 00663EBA    call        @LStrArrayClr
 00663EBF    lea         eax,[ebp-24]
 00663EC2    mov         edx,3
 00663EC7    call        @WStrArrayClr
 00663ECC    lea         eax,[ebp-18]
 00663ECF    mov         edx,4
 00663ED4    call        @LStrArrayClr
 00663ED9    ret
>00663EDA    jmp         @HandleFinally
>00663EDF    jmp         00663E98
 00663EE1    mov         esp,ebp
 00663EE3    pop         ebp
 00663EE4    ret
end;*}

//00663F44
{*procedure sub_00663F44(?:?; ?:?);
begin
 00663F44    push        ebp
 00663F45    mov         ebp,esp
 00663F47    add         esp,0FFFFFFE8
 00663F4A    mov         dword ptr [ebp-8],edx
 00663F4D    mov         dword ptr [ebp-4],eax
 00663F50    lea         eax,[ebp-18]
 00663F53    push        eax
 00663F54    call        OLEAUT32.8
 00663F59    push        8
 00663F5B    push        4
 00663F5D    push        400
 00663F62    mov         eax,dword ptr [ebp-4]
 00663F65    push        eax
 00663F66    lea         eax,[ebp-18]
 00663F69    push        eax
 00663F6A    call        OLEAUT32.147
 00663F6F    mov         edx,dword ptr [ebp-4]
 00663F72    mov         dx,word ptr [edx]
 00663F75    mov         cx,8
 00663F79    call        0065FDC4
 00663F7E    mov         eax,dword ptr [ebp-8]
 00663F81    mov         edx,dword ptr [ebp-10]
 00663F84    call        @WStrAsg
 00663F89    mov         esp,ebp
 00663F8B    pop         ebp
 00663F8C    ret
end;*}

//00663F90
{*procedure sub_00663F90(?:?; ?:?);
begin
 00663F90    push        ebp
 00663F91    mov         ebp,esp
 00663F93    add         esp,0FFFFFFE8
 00663F96    mov         dword ptr [ebp-8],edx
 00663F99    mov         dword ptr [ebp-4],eax
 00663F9C    lea         eax,[ebp-18]
 00663F9F    push        eax
 00663FA0    call        OLEAUT32.8
 00663FA5    xor         eax,eax
 00663FA7    push        ebp
 00663FA8    push        663FE8
 00663FAD    push        dword ptr fs:[eax]
 00663FB0    mov         dword ptr fs:[eax],esp
 00663FB3    mov         edx,dword ptr [ebp-4]
 00663FB6    lea         eax,[ebp-18]
 00663FB9    call        006607C0
 00663FBE    lea         eax,[ebp-18]
 00663FC1    call        dword ptr ds:[6ED154]
 00663FC7    lea         edx,[ebp-18]
 00663FCA    mov         eax,dword ptr [ebp-8]
 00663FCD    call        00664050
 00663FD2    xor         eax,eax
 00663FD4    pop         edx
 00663FD5    pop         ecx
 00663FD6    pop         ecx
 00663FD7    mov         dword ptr fs:[eax],edx
 00663FDA    push        663FEF
 00663FDF    lea         eax,[ebp-18]
 00663FE2    call        00660244
 00663FE7    ret
>00663FE8    jmp         @HandleFinally
>00663FED    jmp         00663FDF
 00663FEF    mov         esp,ebp
 00663FF1    pop         ebp
 00663FF2    ret
end;*}

//00663FF4
{*function sub_00663FF4(?:?; ?:?):?;
begin
 00663FF4    push        ebp
 00663FF5    mov         ebp,esp
 00663FF7    add         esp,0FFFFFFE0
 00663FFA    push        ebx
 00663FFB    mov         dword ptr [ebp-8],edx
 00663FFE    mov         dword ptr [ebp-4],eax
 00664001    mov         eax,dword ptr [ebp-8]
 00664004    test        eax,eax
>00664006    je          0066400C
 00664008    xor         edx,edx
 0066400A    mov         dword ptr [eax],edx
 0066400C    lea         edx,[ebp-10]
 0066400F    mov         eax,dword ptr [ebp-4]
 00664012    mov         ax,word ptr [eax]
 00664015    call        006689A0
 0066401A    mov         byte ptr [ebp-9],al
 0066401D    cmp         byte ptr [ebp-9],0
>00664021    je          00664047
 00664023    lea         eax,[ebp-20]
 00664026    push        eax
 00664027    call        OLEAUT32.8
 0066402C    push        8
 0066402E    mov         ecx,dword ptr [ebp-4]
 00664031    lea         edx,[ebp-20]
 00664034    mov         eax,dword ptr [ebp-10]
 00664037    mov         ebx,dword ptr [eax]
 00664039    call        dword ptr [ebx+1C]
 0066403C    mov         eax,dword ptr [ebp-8]
 0066403F    mov         edx,dword ptr [ebp-18]
 00664042    call        @WStrAsg
 00664047    mov         al,byte ptr [ebp-9]
 0066404A    pop         ebx
 0066404B    mov         esp,ebp
 0066404D    pop         ebp
 0066404E    ret
end;*}

//00664050
{*procedure sub_00664050(?:?; ?:?);
begin
 00664050    push        ebp
 00664051    mov         ebp,esp
 00664053    mov         ecx,0F
 00664058    push        0
 0066405A    push        0
 0066405C    dec         ecx
>0066405D    jne         00664058
 0066405F    mov         dword ptr [ebp-8],edx
 00664062    mov         dword ptr [ebp-4],eax
 00664065    xor         eax,eax
 00664067    push        ebp
 00664068    push        6645ED
 0066406D    push        dword ptr fs:[eax]
 00664070    mov         dword ptr fs:[eax],esp
 00664073    mov         eax,dword ptr [ebp-8]
 00664076    movzx       eax,word ptr [eax]
 00664079    cmp         eax,14
>0066407C    ja          006642B5
 00664082    jmp         dword ptr [eax*4+664089]
 00664082    dd          006640DD
 00664082    dd          006642B5
 00664082    dd          006640EA
 00664082    dd          00664109
 00664082    dd          00664127
 00664082    dd          0066414C
 00664082    dd          00664171
 00664082    dd          00664192
 00664082    dd          006641B3
 00664082    dd          0066429A
 00664082    dd          006642B5
 00664082    dd          006641C6
 00664082    dd          00664285
 00664082    dd          0066429A
 00664082    dd          006642B5
 00664082    dd          006642B5
 00664082    dd          006641E5
 00664082    dd          00664204
 00664082    dd          00664223
 00664082    dd          00664242
 00664082    dd          00664264
 006640DD    mov         eax,dword ptr [ebp-4]
 006640E0    call        @WStrClr
>006640E5    jmp         00664577
 006640EA    lea         edx,[ebp-0C]
 006640ED    mov         eax,dword ptr [ebp-8]
 006640F0    movsx       eax,word ptr [eax+8]
 006640F4    call        IntToStr
 006640F9    mov         edx,dword ptr [ebp-0C]
 006640FC    mov         eax,dword ptr [ebp-4]
 006640FF    call        @WStrFromLStr
>00664104    jmp         00664577
 00664109    lea         edx,[ebp-10]
 0066410C    mov         eax,dword ptr [ebp-8]
 0066410F    mov         eax,dword ptr [eax+8]
 00664112    call        IntToStr
 00664117    mov         edx,dword ptr [ebp-10]
 0066411A    mov         eax,dword ptr [ebp-4]
 0066411D    call        @WStrFromLStr
>00664122    jmp         00664577
 00664127    mov         eax,dword ptr [ebp-8]
 0066412A    fld         dword ptr [eax+8]
 0066412D    add         esp,0FFFFFFF4
 00664130    fstp        tbyte ptr [esp]
 00664133    wait
 00664134    lea         eax,[ebp-14]
 00664137    call        FloatToStr
 0066413C    mov         edx,dword ptr [ebp-14]
 0066413F    mov         eax,dword ptr [ebp-4]
 00664142    call        @WStrFromLStr
>00664147    jmp         00664577
 0066414C    mov         eax,dword ptr [ebp-8]
 0066414F    fld         qword ptr [eax+8]
 00664152    add         esp,0FFFFFFF4
 00664155    fstp        tbyte ptr [esp]
 00664158    wait
 00664159    lea         eax,[ebp-18]
 0066415C    call        FloatToStr
 00664161    mov         edx,dword ptr [ebp-18]
 00664164    mov         eax,dword ptr [ebp-4]
 00664167    call        @WStrFromLStr
>0066416C    jmp         00664577
 00664171    mov         eax,dword ptr [ebp-8]
 00664174    push        dword ptr [eax+0C]
 00664177    push        dword ptr [eax+8]
 0066417A    lea         eax,[ebp-1C]
 0066417D    call        006637B4
 00664182    mov         edx,dword ptr [ebp-1C]
 00664185    mov         eax,dword ptr [ebp-4]
 00664188    call        @WStrAsg
>0066418D    jmp         00664577
 00664192    mov         eax,dword ptr [ebp-8]
 00664195    push        dword ptr [eax+0C]
 00664198    push        dword ptr [eax+8]
 0066419B    lea         eax,[ebp-20]
 0066419E    call        006637E8
 006641A3    mov         edx,dword ptr [ebp-20]
 006641A6    mov         eax,dword ptr [ebp-4]
 006641A9    call        @WStrAsg
>006641AE    jmp         00664577
 006641B3    mov         eax,dword ptr [ebp-4]
 006641B6    mov         edx,dword ptr [ebp-8]
 006641B9    mov         edx,dword ptr [edx+8]
 006641BC    call        @WStrAsg
>006641C1    jmp         00664577
 006641C6    lea         edx,[ebp-24]
 006641C9    mov         eax,dword ptr [ebp-8]
 006641CC    mov         ax,word ptr [eax+8]
 006641D0    call        0066381C
 006641D5    mov         edx,dword ptr [ebp-24]
 006641D8    mov         eax,dword ptr [ebp-4]
 006641DB    call        @WStrAsg
>006641E0    jmp         00664577
 006641E5    lea         edx,[ebp-28]
 006641E8    mov         eax,dword ptr [ebp-8]
 006641EB    movsx       eax,byte ptr [eax+8]
 006641EF    call        IntToStr
 006641F4    mov         edx,dword ptr [ebp-28]
 006641F7    mov         eax,dword ptr [ebp-4]
 006641FA    call        @WStrFromLStr
>006641FF    jmp         00664577
 00664204    lea         edx,[ebp-2C]
 00664207    mov         eax,dword ptr [ebp-8]
 0066420A    movzx       eax,byte ptr [eax+8]
 0066420E    call        IntToStr
 00664213    mov         edx,dword ptr [ebp-2C]
 00664216    mov         eax,dword ptr [ebp-4]
 00664219    call        @WStrFromLStr
>0066421E    jmp         00664577
 00664223    lea         edx,[ebp-30]
 00664226    mov         eax,dword ptr [ebp-8]
 00664229    movzx       eax,word ptr [eax+8]
 0066422D    call        IntToStr
 00664232    mov         edx,dword ptr [ebp-30]
 00664235    mov         eax,dword ptr [ebp-4]
 00664238    call        @WStrFromLStr
>0066423D    jmp         00664577
 00664242    mov         eax,dword ptr [ebp-8]
 00664245    mov         eax,dword ptr [eax+8]
 00664248    xor         edx,edx
 0066424A    push        edx
 0066424B    push        eax
 0066424C    lea         eax,[ebp-34]
 0066424F    call        00657BCC
 00664254    mov         edx,dword ptr [ebp-34]
 00664257    mov         eax,dword ptr [ebp-4]
 0066425A    call        @WStrFromLStr
>0066425F    jmp         00664577
 00664264    mov         eax,dword ptr [ebp-8]
 00664267    push        dword ptr [eax+0C]
 0066426A    push        dword ptr [eax+8]
 0066426D    lea         eax,[ebp-38]
 00664270    call        00657BCC
 00664275    mov         edx,dword ptr [ebp-38]
 00664278    mov         eax,dword ptr [ebp-4]
 0066427B    call        @WStrFromLStr
>00664280    jmp         00664577
 00664285    mov         eax,dword ptr [ebp-8]
 00664288    mov         eax,dword ptr [eax+8]
 0066428B    mov         edx,eax
 0066428D    mov         eax,dword ptr [ebp-4]
 00664290    call        00664050
>00664295    jmp         00664577
 0066429A    lea         edx,[ebp-3C]
 0066429D    mov         eax,dword ptr [ebp-8]
 006642A0    call        00663F44
 006642A5    mov         edx,dword ptr [ebp-3C]
 006642A8    mov         eax,dword ptr [ebp-4]
 006642AB    call        @WStrAsg
>006642B0    jmp         00664577
 006642B5    mov         eax,dword ptr [ebp-8]
 006642B8    mov         ax,word ptr [eax]
 006642BB    sub         ax,100
>006642BF    je          006642C8
 006642C1    dec         ax
>006642C4    je          006642DB
>006642C6    jmp         006642F6
 006642C8    mov         eax,dword ptr [ebp-4]
 006642CB    mov         edx,dword ptr [ebp-8]
 006642CE    mov         edx,dword ptr [edx+8]
 006642D1    call        @WStrFromLStr
>006642D6    jmp         00664577
 006642DB    lea         edx,[ebp-40]
 006642DE    mov         eax,dword ptr [ebp-8]
 006642E1    call        00663F90
 006642E6    mov         edx,dword ptr [ebp-40]
 006642E9    mov         eax,dword ptr [ebp-4]
 006642EC    call        @WStrAsg
>006642F1    jmp         00664577
 006642F6    mov         eax,dword ptr [ebp-8]
 006642F9    test        byte ptr [eax+1],40
>006642FD    je          0066454B
 00664303    mov         eax,dword ptr [ebp-8]
 00664306    movzx       eax,word ptr [eax]
 00664309    and         eax,0FFFFBFFF
 0066430E    cmp         eax,14
>00664311    ja          00664533
 00664317    jmp         dword ptr [eax*4+66431E]
 00664317    dd          00664533
 00664317    dd          00664533
 00664317    dd          00664372
 00664317    dd          00664393
 00664317    dd          006643B3
 00664317    dd          006643DA
 00664317    dd          00664401
 00664317    dd          00664424
 00664317    dd          00664447
 00664317    dd          00664533
 00664317    dd          00664533
 00664317    dd          0066445C
 00664317    dd          00664521
 00664317    dd          00664533
 00664317    dd          00664533
 00664317    dd          00664533
 00664317    dd          0066447D
 00664317    dd          0066449E
 00664317    dd          006644BF
 00664317    dd          006644E0
 00664317    dd          00664501
 00664372    lea         edx,[ebp-44]
 00664375    mov         eax,dword ptr [ebp-8]
 00664378    mov         eax,dword ptr [eax+8]
 0066437B    movsx       eax,word ptr [eax]
 0066437E    call        IntToStr
 00664383    mov         edx,dword ptr [ebp-44]
 00664386    mov         eax,dword ptr [ebp-4]
 00664389    call        @WStrFromLStr
>0066438E    jmp         00664577
 00664393    lea         edx,[ebp-48]
 00664396    mov         eax,dword ptr [ebp-8]
 00664399    mov         eax,dword ptr [eax+8]
 0066439C    mov         eax,dword ptr [eax]
 0066439E    call        IntToStr
 006643A3    mov         edx,dword ptr [ebp-48]
 006643A6    mov         eax,dword ptr [ebp-4]
 006643A9    call        @WStrFromLStr
>006643AE    jmp         00664577
 006643B3    mov         eax,dword ptr [ebp-8]
 006643B6    mov         eax,dword ptr [eax+8]
 006643B9    fld         dword ptr [eax]
 006643BB    add         esp,0FFFFFFF4
 006643BE    fstp        tbyte ptr [esp]
 006643C1    wait
 006643C2    lea         eax,[ebp-4C]
 006643C5    call        FloatToStr
 006643CA    mov         edx,dword ptr [ebp-4C]
 006643CD    mov         eax,dword ptr [ebp-4]
 006643D0    call        @WStrFromLStr
>006643D5    jmp         00664577
 006643DA    mov         eax,dword ptr [ebp-8]
 006643DD    mov         eax,dword ptr [eax+8]
 006643E0    fld         qword ptr [eax]
 006643E2    add         esp,0FFFFFFF4
 006643E5    fstp        tbyte ptr [esp]
 006643E8    wait
 006643E9    lea         eax,[ebp-50]
 006643EC    call        FloatToStr
 006643F1    mov         edx,dword ptr [ebp-50]
 006643F4    mov         eax,dword ptr [ebp-4]
 006643F7    call        @WStrFromLStr
>006643FC    jmp         00664577
 00664401    mov         eax,dword ptr [ebp-8]
 00664404    mov         eax,dword ptr [eax+8]
 00664407    push        dword ptr [eax+4]
 0066440A    push        dword ptr [eax]
 0066440C    lea         eax,[ebp-54]
 0066440F    call        006637B4
 00664414    mov         edx,dword ptr [ebp-54]
 00664417    mov         eax,dword ptr [ebp-4]
 0066441A    call        @WStrAsg
>0066441F    jmp         00664577
 00664424    mov         eax,dword ptr [ebp-8]
 00664427    mov         eax,dword ptr [eax+8]
 0066442A    push        dword ptr [eax+4]
 0066442D    push        dword ptr [eax]
 0066442F    lea         eax,[ebp-58]
 00664432    call        006637E8
 00664437    mov         edx,dword ptr [ebp-58]
 0066443A    mov         eax,dword ptr [ebp-4]
 0066443D    call        @WStrAsg
>00664442    jmp         00664577
 00664447    mov         eax,dword ptr [ebp-4]
 0066444A    mov         edx,dword ptr [ebp-8]
 0066444D    mov         edx,dword ptr [edx+8]
 00664450    mov         edx,dword ptr [edx]
 00664452    call        @WStrFromPWChar
>00664457    jmp         00664577
 0066445C    lea         edx,[ebp-5C]
 0066445F    mov         eax,dword ptr [ebp-8]
 00664462    mov         eax,dword ptr [eax+8]
 00664465    mov         ax,word ptr [eax]
 00664468    call        0066381C
 0066446D    mov         edx,dword ptr [ebp-5C]
 00664470    mov         eax,dword ptr [ebp-4]
 00664473    call        @WStrAsg
>00664478    jmp         00664577
 0066447D    lea         edx,[ebp-60]
 00664480    mov         eax,dword ptr [ebp-8]
 00664483    mov         eax,dword ptr [eax+8]
 00664486    movsx       eax,byte ptr [eax]
 00664489    call        IntToStr
 0066448E    mov         edx,dword ptr [ebp-60]
 00664491    mov         eax,dword ptr [ebp-4]
 00664494    call        @WStrFromLStr
>00664499    jmp         00664577
 0066449E    lea         edx,[ebp-64]
 006644A1    mov         eax,dword ptr [ebp-8]
 006644A4    mov         eax,dword ptr [eax+8]
 006644A7    movzx       eax,byte ptr [eax]
 006644AA    call        IntToStr
 006644AF    mov         edx,dword ptr [ebp-64]
 006644B2    mov         eax,dword ptr [ebp-4]
 006644B5    call        @WStrFromLStr
>006644BA    jmp         00664577
 006644BF    lea         edx,[ebp-68]
 006644C2    mov         eax,dword ptr [ebp-8]
 006644C5    mov         eax,dword ptr [eax+8]
 006644C8    movzx       eax,word ptr [eax]
 006644CB    call        IntToStr
 006644D0    mov         edx,dword ptr [ebp-68]
 006644D3    mov         eax,dword ptr [ebp-4]
 006644D6    call        @WStrFromLStr
>006644DB    jmp         00664577
 006644E0    mov         eax,dword ptr [ebp-8]
 006644E3    mov         eax,dword ptr [eax+8]
 006644E6    mov         eax,dword ptr [eax]
 006644E8    xor         edx,edx
 006644EA    push        edx
 006644EB    push        eax
 006644EC    lea         eax,[ebp-6C]
 006644EF    call        00657BCC
 006644F4    mov         edx,dword ptr [ebp-6C]
 006644F7    mov         eax,dword ptr [ebp-4]
 006644FA    call        @WStrFromLStr
>006644FF    jmp         00664577
 00664501    mov         eax,dword ptr [ebp-8]
 00664504    mov         eax,dword ptr [eax+8]
 00664507    push        dword ptr [eax+4]
 0066450A    push        dword ptr [eax]
 0066450C    lea         eax,[ebp-70]
 0066450F    call        00657BCC
 00664514    mov         edx,dword ptr [ebp-70]
 00664517    mov         eax,dword ptr [ebp-4]
 0066451A    call        @WStrFromLStr
>0066451F    jmp         00664577
 00664521    mov         eax,dword ptr [ebp-8]
 00664524    mov         eax,dword ptr [eax+8]
 00664527    mov         edx,eax
 00664529    mov         eax,dword ptr [ebp-4]
 0066452C    call        00664050
>00664531    jmp         00664577
 00664533    lea         edx,[ebp-74]
 00664536    mov         eax,dword ptr [ebp-8]
 00664539    call        00663F44
 0066453E    mov         edx,dword ptr [ebp-74]
 00664541    mov         eax,dword ptr [ebp-4]
 00664544    call        @WStrAsg
>00664549    jmp         00664577
 0066454B    mov         eax,dword ptr [ebp-4]
 0066454E    call        @WStrClr
 00664553    mov         edx,eax
 00664555    mov         eax,dword ptr [ebp-8]
 00664558    call        00663FF4
 0066455D    test        al,al
>0066455F    jne         00664577
 00664561    lea         edx,[ebp-78]
 00664564    mov         eax,dword ptr [ebp-8]
 00664567    call        00663F44
 0066456C    mov         edx,dword ptr [ebp-78]
 0066456F    mov         eax,dword ptr [ebp-4]
 00664572    call        @WStrAsg
 00664577    xor         eax,eax
 00664579    pop         edx
 0066457A    pop         ecx
 0066457B    pop         ecx
 0066457C    mov         dword ptr fs:[eax],edx
 0066457F    push        6645F4
 00664584    lea         eax,[ebp-78]
 00664587    mov         edx,2
 0066458C    call        @WStrArrayClr
 00664591    lea         eax,[ebp-70]
 00664594    mov         edx,5
 00664599    call        @LStrArrayClr
 0066459E    lea         eax,[ebp-5C]
 006645A1    mov         edx,3
 006645A6    call        @WStrArrayClr
 006645AB    lea         eax,[ebp-50]
 006645AE    mov         edx,4
 006645B3    call        @LStrArrayClr
 006645B8    lea         eax,[ebp-40]
 006645BB    mov         edx,2
 006645C0    call        @WStrArrayClr
 006645C5    lea         eax,[ebp-38]
 006645C8    mov         edx,5
 006645CD    call        @LStrArrayClr
 006645D2    lea         eax,[ebp-24]
 006645D5    mov         edx,3
 006645DA    call        @WStrArrayClr
 006645DF    lea         eax,[ebp-18]
 006645E2    mov         edx,4
 006645E7    call        @LStrArrayClr
 006645EC    ret
>006645ED    jmp         @HandleFinally
>006645F2    jmp         00664584
 006645F4    mov         esp,ebp
 006645F6    pop         ebp
 006645F7    ret
end;*}

//006645F8
{*procedure sub_006645F8(?:?; ?:?);
begin
 006645F8    push        ebp
 006645F9    mov         ebp,esp
 006645FB    add         esp,0FFFFFFE8
 006645FE    mov         dword ptr [ebp-8],edx
 00664601    mov         dword ptr [ebp-4],eax
 00664604    lea         eax,[ebp-18]
 00664607    push        eax
 00664608    call        OLEAUT32.8
 0066460D    xor         eax,eax
 0066460F    push        ebp
 00664610    push        664672
 00664615    push        dword ptr fs:[eax]
 00664618    mov         dword ptr fs:[eax],esp
 0066461B    mov         edx,dword ptr [ebp-8]
 0066461E    lea         eax,[ebp-18]
 00664621    call        006607C0
 00664626    lea         eax,[ebp-18]
 00664629    call        dword ptr ds:[6ED154]
 0066462F    cmp         word ptr [ebp-18],0D
>00664634    je          00664643
 00664636    mov         dx,0D
 0066463A    mov         ax,101
 0066463E    call        0065F99C
 00664643    mov         eax,dword ptr [ebp-4]
 00664646    mov         edx,dword ptr [ebp-10]
 00664649    call        @IntfCopy
 0066464E    xor         eax,eax
 00664650    pop         edx
 00664651    pop         ecx
 00664652    pop         ecx
 00664653    mov         dword ptr fs:[eax],edx
 00664656    push        664679
 0066465B    lea         eax,[ebp-18]
 0066465E    push        eax
 0066465F    call        OLEAUT32.9
 00664664    mov         cx,0D
 00664668    mov         dx,101
 0066466C    call        0065FDC4
 00664671    ret
>00664672    jmp         @HandleFinally
>00664677    jmp         0066465B
 00664679    mov         esp,ebp
 0066467B    pop         ebp
 0066467C    ret
end;*}

//006647F8
{*procedure sub_006647F8(?:?; ?:?; ?:?);
begin
 006647F8    push        ebp
 006647F9    mov         ebp,esp
 006647FB    add         esp,0FFFFFFF4
 006647FE    mov         dword ptr [ebp-0C],ecx
 00664801    mov         dword ptr [ebp-8],edx
 00664804    mov         dword ptr [ebp-4],eax
 00664807    mov         eax,dword ptr [ebp-4]
 0066480A    cmp         word ptr [eax],14
>0066480E    ja          0066481F
 00664810    mov         eax,dword ptr [ebp-4]
 00664813    movzx       eax,word ptr [eax]
 00664816    cmp         byte ptr [eax+6E4D00],0
>0066481D    jne         00664830
 0066481F    mov         eax,dword ptr [ebp-4]
 00664822    test        byte ptr [eax+1],40
>00664826    jne         00664830
 00664828    mov         eax,dword ptr [ebp-4]
 0066482B    call        006601B0
 00664830    cmp         byte ptr ds:[6E4CFC],0;gvar_006E4CFC
>00664837    je          006648F1
 0066483D    movsx       eax,byte ptr [ebp-0C]
 00664841    add         eax,3
 00664844    cmp         eax,7
>00664847    ja          006648DE
 0066484D    jmp         dword ptr [eax*4+664854]
 0066484D    dd          006648D7
 0066484D    dd          00664874
 0066484D    dd          00664889
 0066484D    dd          006648D7
 0066484D    dd          0066489C
 0066484D    dd          006648AF
 0066484D    dd          006648D7
 0066484D    dd          006648C4
 00664874    mov         eax,dword ptr [ebp-4]
 00664877    mov         word ptr [eax],2
 0066487C    mov         eax,dword ptr [ebp-4]
 0066487F    mov         dx,word ptr [ebp-8]
 00664883    mov         word ptr [eax+8],dx
>00664887    jmp         00664902
 00664889    mov         eax,dword ptr [ebp-4]
 0066488C    mov         word ptr [eax],10
 00664891    mov         al,byte ptr [ebp-8]
 00664894    mov         edx,dword ptr [ebp-4]
 00664897    mov         byte ptr [edx+8],al
>0066489A    jmp         00664902
 0066489C    mov         eax,dword ptr [ebp-4]
 0066489F    mov         word ptr [eax],11
 006648A4    mov         al,byte ptr [ebp-8]
 006648A7    mov         edx,dword ptr [ebp-4]
 006648AA    mov         byte ptr [edx+8],al
>006648AD    jmp         00664902
 006648AF    mov         eax,dword ptr [ebp-4]
 006648B2    mov         word ptr [eax],12
 006648B7    mov         eax,dword ptr [ebp-4]
 006648BA    mov         dx,word ptr [ebp-8]
 006648BE    mov         word ptr [eax+8],dx
>006648C2    jmp         00664902
 006648C4    mov         eax,dword ptr [ebp-4]
 006648C7    mov         word ptr [eax],13
 006648CC    mov         eax,dword ptr [ebp-4]
 006648CF    mov         edx,dword ptr [ebp-8]
 006648D2    mov         dword ptr [eax+8],edx
>006648D5    jmp         00664902
 006648D7    call        VarCastError
>006648DC    jmp         00664902
 006648DE    mov         eax,dword ptr [ebp-4]
 006648E1    mov         word ptr [eax],3
 006648E6    mov         eax,dword ptr [ebp-4]
 006648E9    mov         edx,dword ptr [ebp-8]
 006648EC    mov         dword ptr [eax+8],edx
>006648EF    jmp         00664902
 006648F1    mov         eax,dword ptr [ebp-4]
 006648F4    mov         word ptr [eax],3
 006648F9    mov         eax,dword ptr [ebp-4]
 006648FC    mov         edx,dword ptr [ebp-8]
 006648FF    mov         dword ptr [eax+8],edx
 00664902    mov         esp,ebp
 00664904    pop         ebp
 00664905    ret
end;*}

//00664958
{*procedure sub_00664958(?:?; ?:?; ?:?);
begin
 00664958    push        ebp
 00664959    mov         ebp,esp
 0066495B    push        ecx
 0066495C    mov         dword ptr [ebp-4],eax
 0066495F    mov         eax,dword ptr [ebp-4]
 00664962    cmp         word ptr [eax],14
>00664966    ja          00664977
 00664968    mov         eax,dword ptr [ebp-4]
 0066496B    movzx       eax,word ptr [eax]
 0066496E    cmp         byte ptr [eax+6E4D00],0
>00664975    jne         00664988
 00664977    mov         eax,dword ptr [ebp-4]
 0066497A    test        byte ptr [eax+1],40
>0066497E    jne         00664988
 00664980    mov         eax,dword ptr [ebp-4]
 00664983    call        006601B0
 00664988    mov         eax,dword ptr [ebp-4]
 0066498B    mov         word ptr [eax],14
 00664990    mov         eax,dword ptr [ebp-4]
 00664993    mov         edx,dword ptr [ebp+8]
 00664996    mov         dword ptr [eax+8],edx
 00664999    mov         edx,dword ptr [ebp+0C]
 0066499C    mov         dword ptr [eax+0C],edx
 0066499F    pop         ecx
 006649A0    pop         ebp
 006649A1    ret         8
end;*}

//006649A4
{*procedure sub_006649A4(?:?; ?:?);
begin
 006649A4    push        ebp
 006649A5    mov         ebp,esp
 006649A7    add         esp,0FFFFFFF8
 006649AA    mov         byte ptr [ebp-5],dl
 006649AD    mov         dword ptr [ebp-4],eax
 006649B0    mov         eax,dword ptr [ebp-4]
 006649B3    cmp         word ptr [eax],14
>006649B7    ja          006649C8
 006649B9    mov         eax,dword ptr [ebp-4]
 006649BC    movzx       eax,word ptr [eax]
 006649BF    cmp         byte ptr [eax+6E4D00],0
>006649C6    jne         006649D9
 006649C8    mov         eax,dword ptr [ebp-4]
 006649CB    test        byte ptr [eax+1],40
>006649CF    jne         006649D9
 006649D1    mov         eax,dword ptr [ebp-4]
 006649D4    call        006601B0
 006649D9    mov         eax,dword ptr [ebp-4]
 006649DC    mov         word ptr [eax],0B
 006649E1    cmp         byte ptr [ebp-5],1
 006649E5    cmc
 006649E6    sbb         eax,eax
 006649E8    mov         edx,dword ptr [ebp-4]
 006649EB    mov         word ptr [edx+8],ax
 006649EF    pop         ecx
 006649F0    pop         ecx
 006649F1    pop         ebp
 006649F2    ret
end;*}

//00664A30
{*procedure sub_00664A30(?:?; ?:?);
begin
 00664A30    push        ebp
 00664A31    mov         ebp,esp
 00664A33    add         esp,0FFFFFFF8
 00664A36    mov         dword ptr [ebp-8],edx
 00664A39    mov         dword ptr [ebp-4],eax
 00664A3C    mov         eax,dword ptr [ebp-4]
 00664A3F    cmp         word ptr [eax],14
>00664A43    ja          00664A54
 00664A45    mov         eax,dword ptr [ebp-4]
 00664A48    movzx       eax,word ptr [eax]
 00664A4B    cmp         byte ptr [eax+6E4D00],0
>00664A52    jne         00664A65
 00664A54    mov         eax,dword ptr [ebp-4]
 00664A57    test        byte ptr [eax+1],40
>00664A5B    jne         00664A65
 00664A5D    mov         eax,dword ptr [ebp-4]
 00664A60    call        006601B0
 00664A65    mov         eax,dword ptr [ebp-4]
 00664A68    xor         edx,edx
 00664A6A    mov         dword ptr [eax+8],edx
 00664A6D    mov         eax,dword ptr [ebp-4]
 00664A70    mov         word ptr [eax],100
 00664A75    mov         eax,dword ptr [ebp-4]
 00664A78    add         eax,8
 00664A7B    mov         edx,dword ptr [ebp-8]
 00664A7E    call        @LStrAsg
 00664A83    pop         ecx
 00664A84    pop         ecx
 00664A85    pop         ebp
 00664A86    ret
end;*}

//00664AE0
{*procedure sub_00664AE0(?:?; ?:WideString);
begin
 00664AE0    push        ebp
 00664AE1    mov         ebp,esp
 00664AE3    add         esp,0FFFFFFF8
 00664AE6    mov         dword ptr [ebp-8],edx
 00664AE9    mov         dword ptr [ebp-4],eax
 00664AEC    mov         eax,dword ptr [ebp-4]
 00664AEF    cmp         word ptr [eax],14
>00664AF3    ja          00664B04
 00664AF5    mov         eax,dword ptr [ebp-4]
 00664AF8    movzx       eax,word ptr [eax]
 00664AFB    cmp         byte ptr [eax+6E4D00],0
>00664B02    jne         00664B15
 00664B04    mov         eax,dword ptr [ebp-4]
 00664B07    test        byte ptr [eax+1],40
>00664B0B    jne         00664B15
 00664B0D    mov         eax,dword ptr [ebp-4]
 00664B10    call        006601B0
 00664B15    mov         eax,dword ptr [ebp-4]
 00664B18    xor         edx,edx
 00664B1A    mov         dword ptr [eax+8],edx
 00664B1D    mov         eax,dword ptr [ebp-4]
 00664B20    mov         word ptr [eax],8
 00664B25    mov         eax,dword ptr [ebp-4]
 00664B28    add         eax,8
 00664B2B    push        eax
 00664B2C    mov         ecx,7FFFFFFF
 00664B31    mov         edx,1
 00664B36    mov         eax,dword ptr [ebp-8]
 00664B39    call        @WStrCopy
 00664B3E    pop         ecx
 00664B3F    pop         ecx
 00664B40    pop         ebp
 00664B41    ret
end;*}

//00664B44
{*procedure sub_00664B44(?:?; ?:?);
begin
 00664B44    push        ebp
 00664B45    mov         ebp,esp
 00664B47    add         esp,0FFFFFFF8
 00664B4A    mov         dword ptr [ebp-8],edx
 00664B4D    mov         dword ptr [ebp-4],eax
 00664B50    mov         eax,dword ptr [ebp-4]
 00664B53    cmp         word ptr [eax],14
>00664B57    ja          00664B68
 00664B59    mov         eax,dword ptr [ebp-4]
 00664B5C    movzx       eax,word ptr [eax]
 00664B5F    cmp         byte ptr [eax+6E4D00],0
>00664B66    jne         00664B79
 00664B68    mov         eax,dword ptr [ebp-4]
 00664B6B    test        byte ptr [eax+1],40
>00664B6F    jne         00664B79
 00664B71    mov         eax,dword ptr [ebp-4]
 00664B74    call        006601B0
 00664B79    mov         eax,dword ptr [ebp-4]
 00664B7C    xor         edx,edx
 00664B7E    mov         dword ptr [eax+8],edx
 00664B81    mov         eax,dword ptr [ebp-4]
 00664B84    mov         word ptr [eax],0D
 00664B89    mov         eax,dword ptr [ebp-4]
 00664B8C    add         eax,8
 00664B8F    mov         edx,dword ptr [ebp-8]
 00664B92    call        @IntfCopy
 00664B97    pop         ecx
 00664B98    pop         ecx
 00664B99    pop         ebp
 00664B9A    ret
end;*}

//00664B9C
{*procedure sub_00664B9C(?:?; ?:?);
begin
 00664B9C    push        ebp
 00664B9D    mov         ebp,esp
 00664B9F    add         esp,0FFFFFFF8
 00664BA2    mov         dword ptr [ebp-8],edx
 00664BA5    mov         dword ptr [ebp-4],eax
 00664BA8    mov         eax,dword ptr [ebp-4]
 00664BAB    cmp         word ptr [eax],14
>00664BAF    ja          00664BC0
 00664BB1    mov         eax,dword ptr [ebp-4]
 00664BB4    movzx       eax,word ptr [eax]
 00664BB7    cmp         byte ptr [eax+6E4D00],0
>00664BBE    jne         00664BD1
 00664BC0    mov         eax,dword ptr [ebp-4]
 00664BC3    test        byte ptr [eax+1],40
>00664BC7    jne         00664BD1
 00664BC9    mov         eax,dword ptr [ebp-4]
 00664BCC    call        006601B0
 00664BD1    mov         eax,dword ptr [ebp-4]
 00664BD4    xor         edx,edx
 00664BD6    mov         dword ptr [eax+8],edx
 00664BD9    mov         eax,dword ptr [ebp-4]
 00664BDC    mov         word ptr [eax],9
 00664BE1    mov         eax,dword ptr [ebp-4]
 00664BE4    add         eax,8
 00664BE7    mov         edx,dword ptr [ebp-8]
 00664BEA    call        @IntfCopy
 00664BEF    pop         ecx
 00664BF0    pop         ecx
 00664BF1    pop         ebp
 00664BF2    ret
end;*}

//00664C08
{*procedure sub_00664C08(?:?; ?:?);
begin
 00664C08    push        ebp
 00664C09    mov         ebp,esp
 00664C0B    add         esp,0FFFFFFF4
 00664C0E    xor         ecx,ecx
 00664C10    mov         dword ptr [ebp-0C],ecx
 00664C13    mov         dword ptr [ebp-8],edx
 00664C16    mov         dword ptr [ebp-4],eax
 00664C19    xor         eax,eax
 00664C1B    push        ebp
 00664C1C    push        664C53
 00664C21    push        dword ptr fs:[eax]
 00664C24    mov         dword ptr fs:[eax],esp
 00664C27    lea         eax,[ebp-0C]
 00664C2A    mov         edx,dword ptr [ebp-8]
 00664C2D    call        @WStrFromLStr
 00664C32    mov         edx,dword ptr [ebp-0C]
 00664C35    mov         eax,dword ptr [ebp-4]
 00664C38    call        00664AE0
 00664C3D    xor         eax,eax
 00664C3F    pop         edx
 00664C40    pop         ecx
 00664C41    pop         ecx
 00664C42    mov         dword ptr fs:[eax],edx
 00664C45    push        664C5A
 00664C4A    lea         eax,[ebp-0C]
 00664C4D    call        @WStrClr
 00664C52    ret
>00664C53    jmp         @HandleFinally
>00664C58    jmp         00664C4A
 00664C5A    mov         esp,ebp
 00664C5C    pop         ebp
 00664C5D    ret
end;*}

//00664CB8
{*procedure sub_00664CB8(?:?; ?:?);
begin
 00664CB8    push        ebp
 00664CB9    mov         ebp,esp
 00664CBB    add         esp,0FFFFFFE8
 00664CBE    mov         dword ptr [ebp-8],edx
 00664CC1    mov         dword ptr [ebp-4],eax
 00664CC4    lea         eax,[ebp-18]
 00664CC7    push        eax
 00664CC8    call        OLEAUT32.8
 00664CCD    xor         eax,eax
 00664CCF    push        ebp
 00664CD0    push        664D10
 00664CD5    push        dword ptr fs:[eax]
 00664CD8    mov         dword ptr fs:[eax],esp
 00664CDB    mov         edx,dword ptr [ebp-8]
 00664CDE    lea         eax,[ebp-18]
 00664CE1    call        006607C0
 00664CE6    lea         eax,[ebp-18]
 00664CE9    call        dword ptr ds:[6ED154]
 00664CEF    lea         edx,[ebp-18]
 00664CF2    mov         eax,dword ptr [ebp-4]
 00664CF5    call        006607C0
 00664CFA    xor         eax,eax
 00664CFC    pop         edx
 00664CFD    pop         ecx
 00664CFE    pop         ecx
 00664CFF    mov         dword ptr fs:[eax],edx
 00664D02    push        664D17
 00664D07    lea         eax,[ebp-18]
 00664D0A    call        00660244
 00664D0F    ret
>00664D10    jmp         @HandleFinally
>00664D15    jmp         00664D07
 00664D17    mov         esp,ebp
 00664D19    pop         ebp
 00664D1A    ret
end;*}

//00664D38
{*procedure sub_00664D38(?:?; ?:?);
begin
 00664D38    push        ebp
 00664D39    mov         ebp,esp
 00664D3B    add         esp,0FFFFFFF4
 00664D3E    push        ebx
 00664D3F    mov         dword ptr [ebp-8],edx
 00664D42    mov         dword ptr [ebp-4],eax
 00664D45    mov         eax,dword ptr [ebp-8]
 00664D48    cmp         word ptr [eax],400C
>00664D4D    jne         00664D64
 00664D4F    mov         eax,dword ptr [ebp-8]
 00664D52    mov         eax,dword ptr [eax+8]
 00664D55    mov         edx,eax
 00664D57    mov         eax,dword ptr [ebp-4]
 00664D5A    call        00664D38
>00664D5F    jmp         00664ED7
 00664D64    mov         eax,dword ptr [ebp-4]
 00664D67    cmp         word ptr [eax],14
>00664D6B    ja          00664D7C
 00664D6D    mov         eax,dword ptr [ebp-4]
 00664D70    movzx       eax,word ptr [eax]
 00664D73    cmp         byte ptr [eax+6E4D00],0
>00664D7A    jne         00664D8D
 00664D7C    mov         eax,dword ptr [ebp-4]
 00664D7F    test        byte ptr [eax+1],40
>00664D83    jne         00664D8D
 00664D85    mov         eax,dword ptr [ebp-4]
 00664D88    call        006601B0
 00664D8D    mov         eax,dword ptr [ebp-8]
 00664D90    movzx       eax,word ptr [eax]
 00664D93    cmp         eax,14
>00664D96    jg          00664DA9
>00664D98    je          00664E08
 00664D9A    add         eax,0FFFFFFF0
 00664D9D    sub         eax,3
>00664DA0    jb          00664DC0
>00664DA2    je          00664DD5
>00664DA4    jmp         00664E78
 00664DA9    sub         eax,100
>00664DAE    je          00664E5B
 00664DB4    dec         eax
>00664DB5    je          00664E6B
>00664DBB    jmp         00664E78
 00664DC0    mov         edx,dword ptr [ebp-8]
 00664DC3    mov         eax,dword ptr [ebp-4]
 00664DC6    mov         ecx,3
 00664DCB    call        00661390
>00664DD0    jmp         00664ED7
 00664DD5    mov         eax,dword ptr [ebp-8]
 00664DD8    test        byte ptr [eax+0B],80
>00664DDC    je          00664DF3
 00664DDE    mov         edx,dword ptr [ebp-8]
 00664DE1    mov         eax,dword ptr [ebp-4]
 00664DE4    mov         ecx,5
 00664DE9    call        00661390
>00664DEE    jmp         00664ED7
 00664DF3    mov         edx,dword ptr [ebp-8]
 00664DF6    mov         eax,dword ptr [ebp-4]
 00664DF9    mov         ecx,3
 00664DFE    call        00661390
>00664E03    jmp         00664ED7
 00664E08    mov         eax,dword ptr [ebp-8]
 00664E0B    cmp         dword ptr [eax+0C],0
>00664E0F    jne         00664E1C
 00664E11    cmp         dword ptr [eax+8],7FFFFFFF
>00664E18    ja          00664E49
>00664E1A    jmp         00664E1E
>00664E1C    jg          00664E49
 00664E1E    mov         eax,dword ptr [ebp-8]
 00664E21    cmp         dword ptr [eax+0C],0FFFFFFFF
>00664E25    jne         00664E32
 00664E27    cmp         dword ptr [eax+8],80000000
>00664E2E    jb          00664E49
>00664E30    jmp         00664E34
>00664E32    jl          00664E49
 00664E34    mov         edx,dword ptr [ebp-8]
 00664E37    mov         eax,dword ptr [ebp-4]
 00664E3A    mov         ecx,3
 00664E3F    call        00661390
>00664E44    jmp         00664ED7
 00664E49    mov         edx,dword ptr [ebp-8]
 00664E4C    mov         eax,dword ptr [ebp-4]
 00664E4F    mov         ecx,5
 00664E54    call        00661390
>00664E59    jmp         00664ED7
 00664E5B    mov         edx,dword ptr [ebp-8]
 00664E5E    mov         edx,dword ptr [edx+8]
 00664E61    mov         eax,dword ptr [ebp-4]
 00664E64    call        00664C08
>00664E69    jmp         00664ED7
 00664E6B    mov         edx,dword ptr [ebp-8]
 00664E6E    mov         eax,dword ptr [ebp-4]
 00664E71    call        00664CB8
>00664E76    jmp         00664ED7
 00664E78    mov         eax,dword ptr [ebp-8]
 00664E7B    test        byte ptr [eax+1],20
>00664E7F    je          00664E93
 00664E81    mov         ecx,664D1C
 00664E86    mov         edx,dword ptr [ebp-8]
 00664E89    mov         eax,dword ptr [ebp-4]
 00664E8C    call        00660460
>00664E91    jmp         00664ED7
 00664E93    mov         eax,dword ptr [ebp-8]
 00664E96    mov         ax,word ptr [eax]
 00664E99    and         ax,0FFF
 00664E9D    cmp         ax,10F
>00664EA1    jae         00664EB0
 00664EA3    mov         edx,dword ptr [ebp-8]
 00664EA6    mov         eax,dword ptr [ebp-4]
 00664EA9    call        006607C0
>00664EAE    jmp         00664ED7
 00664EB0    lea         edx,[ebp-0C]
 00664EB3    mov         eax,dword ptr [ebp-8]
 00664EB6    mov         ax,word ptr [eax]
 00664EB9    call        006689A0
 00664EBE    test        al,al
>00664EC0    je          00664ED2
 00664EC2    mov         ecx,dword ptr [ebp-8]
 00664EC5    mov         edx,dword ptr [ebp-4]
 00664EC8    mov         eax,dword ptr [ebp-0C]
 00664ECB    mov         ebx,dword ptr [eax]
 00664ECD    call        dword ptr [ebx+20]
>00664ED0    jmp         00664ED7
 00664ED2    call        VarCastError
 00664ED7    pop         ebx
 00664ED8    mov         esp,ebp
 00664EDA    pop         ebp
 00664EDB    ret
end;*}

//00664EDC
{*procedure sub_00664EDC(?:?; ?:?);
begin
 00664EDC    push        ebp
 00664EDD    mov         ebp,esp
 00664EDF    xor         ecx,ecx
 00664EE1    push        ecx
 00664EE2    push        ecx
 00664EE3    push        ecx
 00664EE4    push        ecx
 00664EE5    push        ecx
 00664EE6    push        ecx
 00664EE7    mov         dword ptr [ebp-8],edx
 00664EEA    mov         dword ptr [ebp-4],eax
 00664EED    xor         eax,eax
 00664EEF    push        ebp
 00664EF0    push        664F8B
 00664EF5    push        dword ptr fs:[eax]
 00664EF8    mov         dword ptr fs:[eax],esp
 00664EFB    mov         eax,dword ptr [ebp-4]
 00664EFE    cmp         word ptr [eax],100
>00664F03    jne         00664F35
 00664F05    lea         eax,[ebp-0C]
 00664F08    mov         edx,dword ptr [ebp-4]
 00664F0B    call        0066D554
 00664F10    lea         eax,[ebp-0C]
 00664F13    push        eax
 00664F14    lea         eax,[ebp-10]
 00664F17    mov         edx,dword ptr [ebp-8]
 00664F1A    call        0066D554
 00664F1F    mov         edx,dword ptr [ebp-10]
 00664F22    pop         eax
 00664F23    call        @LStrCat
 00664F28    mov         edx,dword ptr [ebp-0C]
 00664F2B    mov         eax,dword ptr [ebp-4]
 00664F2E    call        0066D5B0
>00664F33    jmp         00664F63
 00664F35    lea         eax,[ebp-14]
 00664F38    mov         edx,dword ptr [ebp-4]
 00664F3B    call        0066D55C
 00664F40    lea         eax,[ebp-14]
 00664F43    push        eax
 00664F44    lea         eax,[ebp-18]
 00664F47    mov         edx,dword ptr [ebp-8]
 00664F4A    call        0066D55C
 00664F4F    mov         edx,dword ptr [ebp-18]
 00664F52    pop         eax
 00664F53    call        @WStrCat
 00664F58    mov         edx,dword ptr [ebp-14]
 00664F5B    mov         eax,dword ptr [ebp-4]
 00664F5E    call        0066D5B8
 00664F63    xor         eax,eax
 00664F65    pop         edx
 00664F66    pop         ecx
 00664F67    pop         ecx
 00664F68    mov         dword ptr fs:[eax],edx
 00664F6B    push        664F92
 00664F70    lea         eax,[ebp-18]
 00664F73    mov         edx,2
 00664F78    call        @WStrArrayClr
 00664F7D    lea         eax,[ebp-10]
 00664F80    mov         edx,2
 00664F85    call        @LStrArrayClr
 00664F8A    ret
>00664F8B    jmp         @HandleFinally
>00664F90    jmp         00664F70
 00664F92    mov         esp,ebp
 00664F94    pop         ebp
 00664F95    ret
end;*}

//00664F98
{*procedure sub_00664F98(?:?; ?:?; ?:?);
begin
 00664F98    push        ebp
 00664F99    mov         ebp,esp
 00664F9B    add         esp,0FFFFFFD8
 00664F9E    push        ebx
 00664F9F    mov         dword ptr [ebp-0C],ecx
 00664FA2    mov         dword ptr [ebp-8],edx
 00664FA5    mov         dword ptr [ebp-4],eax
 00664FA8    mov         eax,dword ptr [ebp-4]
 00664FAB    mov         ax,word ptr [eax]
 00664FAE    and         ax,0FFF
 00664FB2    cmp         ax,10F
>00664FB6    jae         006650D8
 00664FBC    lea         edx,[ebp-18]
 00664FBF    mov         eax,dword ptr [ebp-8]
 00664FC2    mov         ax,word ptr [eax]
 00664FC5    call        006689A0
 00664FCA    test        al,al
>00664FCC    jne         00664FD8
 00664FCE    call        VarInvalidOp
>00664FD3    jmp         006652DE
 00664FD8    lea         eax,[ebp-0E]
 00664FDB    push        eax
 00664FDC    mov         edx,dword ptr [ebp-4]
 00664FDF    mov         ecx,dword ptr [ebp-0C]
 00664FE2    mov         eax,dword ptr [ebp-18]
 00664FE5    mov         ebx,dword ptr [eax]
 00664FE7    call        dword ptr [ebx+4]
 00664FEA    test        al,al
>00664FEC    je          00665074
 00664FF2    mov         eax,dword ptr [ebp-4]
 00664FF5    mov         ax,word ptr [eax]
 00664FF8    cmp         ax,word ptr [ebp-0E]
>00664FFC    je          0066505D
 00664FFE    lea         eax,[ebp-28]
 00665001    push        eax
 00665002    call        OLEAUT32.8
 00665007    xor         eax,eax
 00665009    push        ebp
 0066500A    push        665056
 0066500F    push        dword ptr fs:[eax]
 00665012    mov         dword ptr fs:[eax],esp
 00665015    movzx       ecx,word ptr [ebp-0E]
 00665019    mov         edx,dword ptr [ebp-4]
 0066501C    lea         eax,[ebp-28]
 0066501F    call        00661390
 00665024    lea         edx,[ebp-28]
 00665027    mov         eax,dword ptr [ebp-4]
 0066502A    call        006607C0
 0066502F    mov         eax,dword ptr [ebp-4]
 00665032    mov         ax,word ptr [eax]
 00665035    cmp         ax,word ptr [ebp-0E]
>00665039    je          00665040
 0066503B    call        VarCastError
 00665040    xor         eax,eax
 00665042    pop         edx
 00665043    pop         ecx
 00665044    pop         ecx
 00665045    mov         dword ptr fs:[eax],edx
 00665048    push        66505D
 0066504D    lea         eax,[ebp-28]
 00665050    call        00660244
 00665055    ret
>00665056    jmp         @HandleFinally
>0066505B    jmp         0066504D
 0066505D    mov         eax,dword ptr [ebp-0C]
 00665060    push        eax
 00665061    mov         ecx,dword ptr [ebp-8]
 00665064    mov         edx,dword ptr [ebp-4]
 00665067    mov         eax,dword ptr [ebp-18]
 0066506A    mov         ebx,dword ptr [eax]
 0066506C    call        dword ptr [ebx+2C]
>0066506F    jmp         006652DE
 00665074    lea         eax,[ebp-28]
 00665077    push        eax
 00665078    call        OLEAUT32.8
 0066507D    xor         eax,eax
 0066507F    push        ebp
 00665080    push        6650D1
 00665085    push        dword ptr fs:[eax]
 00665088    mov         dword ptr fs:[eax],esp
 0066508B    mov         ecx,dword ptr [ebp-4]
 0066508E    movzx       ecx,word ptr [ecx]
 00665091    mov         edx,dword ptr [ebp-8]
 00665094    lea         eax,[ebp-28]
 00665097    call        00661390
 0066509C    mov         eax,dword ptr [ebp-4]
 0066509F    mov         ax,word ptr [eax]
 006650A2    cmp         ax,word ptr [ebp-28]
>006650A6    je          006650AD
 006650A8    call        VarCastError
 006650AD    lea         edx,[ebp-28]
 006650B0    mov         eax,dword ptr [ebp-4]
 006650B3    mov         ecx,dword ptr [ebp-0C]
 006650B6    call        00665C10
 006650BB    xor         eax,eax
 006650BD    pop         edx
 006650BE    pop         ecx
 006650BF    pop         ecx
 006650C0    mov         dword ptr fs:[eax],edx
 006650C3    push        6652DE
 006650C8    lea         eax,[ebp-28]
 006650CB    call        00660244
 006650D0    ret
>006650D1    jmp         @HandleFinally
>006650D6    jmp         006650C8
 006650D8    lea         edx,[ebp-14]
 006650DB    mov         eax,dword ptr [ebp-4]
 006650DE    mov         ax,word ptr [eax]
 006650E1    call        006689A0
 006650E6    test        al,al
>006650E8    jne         006650EF
 006650EA    call        VarInvalidOp
 006650EF    lea         eax,[ebp-10]
 006650F2    push        eax
 006650F3    mov         edx,dword ptr [ebp-8]
 006650F6    mov         ecx,dword ptr [ebp-0C]
 006650F9    mov         eax,dword ptr [ebp-14]
 006650FC    mov         ebx,dword ptr [eax]
 006650FE    call        dword ptr [ebx+8]
 00665101    test        al,al
>00665103    je          00665190
 00665109    mov         eax,dword ptr [ebp-8]
 0066510C    mov         ax,word ptr [eax]
 0066510F    cmp         ax,word ptr [ebp-10]
>00665113    je          00665179
 00665115    lea         eax,[ebp-28]
 00665118    push        eax
 00665119    call        OLEAUT32.8
 0066511E    xor         eax,eax
 00665120    push        ebp
 00665121    push        665172
 00665126    push        dword ptr fs:[eax]
 00665129    mov         dword ptr fs:[eax],esp
 0066512C    movzx       ecx,word ptr [ebp-10]
 00665130    mov         edx,dword ptr [ebp-8]
 00665133    lea         eax,[ebp-28]
 00665136    call        00661390
 0066513B    mov         ax,word ptr [ebp-28]
 0066513F    cmp         ax,word ptr [ebp-10]
>00665143    je          0066514A
 00665145    call        VarCastError
 0066514A    mov         eax,dword ptr [ebp-0C]
 0066514D    push        eax
 0066514E    lea         ecx,[ebp-28]
 00665151    mov         edx,dword ptr [ebp-4]
 00665154    mov         eax,dword ptr [ebp-14]
 00665157    mov         ebx,dword ptr [eax]
 00665159    call        dword ptr [ebx+2C]
 0066515C    xor         eax,eax
 0066515E    pop         edx
 0066515F    pop         ecx
 00665160    pop         ecx
 00665161    mov         dword ptr fs:[eax],edx
 00665164    push        6652DE
 00665169    lea         eax,[ebp-28]
 0066516C    call        00660244
 00665171    ret
>00665172    jmp         @HandleFinally
>00665177    jmp         00665169
 00665179    mov         eax,dword ptr [ebp-0C]
 0066517C    push        eax
 0066517D    mov         ecx,dword ptr [ebp-8]
 00665180    mov         edx,dword ptr [ebp-4]
 00665183    mov         eax,dword ptr [ebp-14]
 00665186    mov         ebx,dword ptr [eax]
 00665188    call        dword ptr [ebx+2C]
>0066518B    jmp         006652DE
 00665190    mov         eax,dword ptr [ebp-8]
 00665193    mov         ax,word ptr [eax]
 00665196    and         ax,0FFF
 0066519A    cmp         ax,10F
>0066519E    jae         00665228
 006651A4    mov         eax,dword ptr [ebp-4]
 006651A7    mov         ax,word ptr [eax]
 006651AA    mov         edx,dword ptr [ebp-8]
 006651AD    cmp         ax,word ptr [edx]
>006651B0    je          00665215
 006651B2    lea         eax,[ebp-28]
 006651B5    push        eax
 006651B6    call        OLEAUT32.8
 006651BB    xor         eax,eax
 006651BD    push        ebp
 006651BE    push        66520E
 006651C3    push        dword ptr fs:[eax]
 006651C6    mov         dword ptr fs:[eax],esp
 006651C9    mov         ecx,dword ptr [ebp-8]
 006651CC    movzx       ecx,word ptr [ecx]
 006651CF    mov         edx,dword ptr [ebp-4]
 006651D2    lea         eax,[ebp-28]
 006651D5    call        00661390
 006651DA    lea         edx,[ebp-28]
 006651DD    mov         eax,dword ptr [ebp-4]
 006651E0    call        006607C0
 006651E5    mov         eax,dword ptr [ebp-4]
 006651E8    mov         ax,word ptr [eax]
 006651EB    mov         edx,dword ptr [ebp-8]
 006651EE    cmp         ax,word ptr [edx]
>006651F1    je          006651F8
 006651F3    call        VarCastError
 006651F8    xor         eax,eax
 006651FA    pop         edx
 006651FB    pop         ecx
 006651FC    pop         ecx
 006651FD    mov         dword ptr fs:[eax],edx
 00665200    push        665215
 00665205    lea         eax,[ebp-28]
 00665208    call        00660244
 0066520D    ret
>0066520E    jmp         @HandleFinally
>00665213    jmp         00665205
 00665215    mov         edx,dword ptr [ebp-8]
 00665218    mov         eax,dword ptr [ebp-4]
 0066521B    mov         ecx,dword ptr [ebp-0C]
 0066521E    call        00665C10
>00665223    jmp         006652DE
 00665228    lea         edx,[ebp-18]
 0066522B    mov         eax,dword ptr [ebp-8]
 0066522E    mov         ax,word ptr [eax]
 00665231    call        006689A0
 00665236    test        al,al
>00665238    jne         00665244
 0066523A    call        VarInvalidOp
>0066523F    jmp         006652DE
 00665244    lea         eax,[ebp-0E]
 00665247    push        eax
 00665248    mov         edx,dword ptr [ebp-4]
 0066524B    mov         ecx,dword ptr [ebp-0C]
 0066524E    mov         eax,dword ptr [ebp-18]
 00665251    mov         ebx,dword ptr [eax]
 00665253    call        dword ptr [ebx+4]
 00665256    test        al,al
>00665258    je          006652D9
 0066525A    mov         eax,dword ptr [ebp-4]
 0066525D    mov         ax,word ptr [eax]
 00665260    cmp         ax,word ptr [ebp-0E]
>00665264    je          006652C5
 00665266    lea         eax,[ebp-28]
 00665269    push        eax
 0066526A    call        OLEAUT32.8
 0066526F    xor         eax,eax
 00665271    push        ebp
 00665272    push        6652BE
 00665277    push        dword ptr fs:[eax]
 0066527A    mov         dword ptr fs:[eax],esp
 0066527D    movzx       ecx,word ptr [ebp-0E]
 00665281    mov         edx,dword ptr [ebp-4]
 00665284    lea         eax,[ebp-28]
 00665287    call        00661390
 0066528C    lea         edx,[ebp-28]
 0066528F    mov         eax,dword ptr [ebp-4]
 00665292    call        006607C0
 00665297    mov         eax,dword ptr [ebp-4]
 0066529A    mov         ax,word ptr [eax]
 0066529D    cmp         ax,word ptr [ebp-0E]
>006652A1    je          006652A8
 006652A3    call        VarCastError
 006652A8    xor         eax,eax
 006652AA    pop         edx
 006652AB    pop         ecx
 006652AC    pop         ecx
 006652AD    mov         dword ptr fs:[eax],edx
 006652B0    push        6652C5
 006652B5    lea         eax,[ebp-28]
 006652B8    call        00660244
 006652BD    ret
>006652BE    jmp         @HandleFinally
>006652C3    jmp         006652B5
 006652C5    mov         eax,dword ptr [ebp-0C]
 006652C8    push        eax
 006652C9    mov         ecx,dword ptr [ebp-8]
 006652CC    mov         edx,dword ptr [ebp-4]
 006652CF    mov         eax,dword ptr [ebp-18]
 006652D2    mov         ebx,dword ptr [eax]
 006652D4    call        dword ptr [ebx+2C]
>006652D7    jmp         006652DE
 006652D9    call        VarInvalidOp
 006652DE    pop         ebx
 006652DF    mov         esp,ebp
 006652E1    pop         ebp
 006652E2    ret
end;*}

//006652E4
{*procedure sub_006652E4(?:?; ?:?; ?:?);
begin
 006652E4    push        ebp
 006652E5    mov         ebp,esp
 006652E7    add         esp,0FFFFFFE4
 006652EA    mov         dword ptr [ebp-0C],ecx
 006652ED    mov         dword ptr [ebp-8],edx
 006652F0    mov         dword ptr [ebp-4],eax
 006652F3    mov         eax,dword ptr [ebp-4]
 006652F6    cmp         word ptr [eax],101
>006652FB    jne         00665306
 006652FD    mov         eax,dword ptr [ebp-4]
 00665300    call        dword ptr ds:[6ED154]
 00665306    mov         eax,dword ptr [ebp-8]
 00665309    cmp         word ptr [eax],101
>0066530E    jne         00665366
 00665310    lea         eax,[ebp-1C]
 00665313    push        eax
 00665314    call        OLEAUT32.8
 00665319    xor         eax,eax
 0066531B    push        ebp
 0066531C    push        66535F
 00665321    push        dword ptr fs:[eax]
 00665324    mov         dword ptr fs:[eax],esp
 00665327    mov         edx,dword ptr [ebp-8]
 0066532A    lea         eax,[ebp-1C]
 0066532D    call        006607C0
 00665332    lea         eax,[ebp-1C]
 00665335    call        dword ptr ds:[6ED154]
 0066533B    lea         edx,[ebp-1C]
 0066533E    mov         eax,dword ptr [ebp-4]
 00665341    mov         ecx,dword ptr [ebp-0C]
 00665344    call        00665C10
 00665349    xor         eax,eax
 0066534B    pop         edx
 0066534C    pop         ecx
 0066534D    pop         ecx
 0066534E    mov         dword ptr fs:[eax],edx
 00665351    push        665374
 00665356    lea         eax,[ebp-1C]
 00665359    call        00660244
 0066535E    ret
>0066535F    jmp         @HandleFinally
>00665364    jmp         00665356
 00665366    mov         edx,dword ptr [ebp-8]
 00665369    mov         eax,dword ptr [ebp-4]
 0066536C    mov         ecx,dword ptr [ebp-0C]
 0066536F    call        00665C10
 00665374    mov         esp,ebp
 00665376    pop         ebp
 00665377    ret
end;*}

//00665378
{*function sub_00665378(?:?; ?:?):?;
begin
 00665378    push        ebp
 00665379    mov         ebp,esp
 0066537B    push        ecx
 0066537C    mov         word ptr [ebp-2],ax
 00665380    mov         ax,word ptr [ebp-2]
 00665384    and         ax,0FFF
 00665388    mov         word ptr [ebp-4],ax
 0066538C    cmp         word ptr [ebp-4],14
>00665391    jbe         006653CE
 00665393    cmp         word ptr [ebp-4],100
>00665399    jne         006653A3
 0066539B    mov         word ptr [ebp-4],8
>006653A1    jmp         006653CE
 006653A3    cmp         word ptr [ebp-4],101
>006653A9    jne         006653C9
 006653AB    mov         eax,dword ptr [ebp+8]
 006653AE    push        eax
 006653AF    mov         eax,dword ptr [ebp+8]
 006653B2    mov         ecx,dword ptr [eax-0C]
 006653B5    mov         eax,dword ptr [ebp+8]
 006653B8    mov         edx,dword ptr [eax-8]
 006653BB    mov         eax,dword ptr [ebp+8]
 006653BE    mov         eax,dword ptr [eax-4]
 006653C1    call        006652E4
 006653C6    pop         ecx
>006653C7    jmp         006653CE
 006653C9    call        VarInvalidOp
 006653CE    mov         ax,word ptr [ebp-4]
 006653D2    pop         ecx
 006653D3    pop         ebp
 006653D4    ret
end;*}

//006653D8
{*procedure sub_006653D8(?:?; ?:?; ?:?);
begin
 006653D8    push        ebp
 006653D9    mov         ebp,esp
 006653DB    add         esp,0FFFFFFE0
 006653DE    mov         dword ptr [ebp-0C],ecx
 006653E1    mov         dword ptr [ebp-8],edx
 006653E4    mov         dword ptr [ebp-4],eax
 006653E7    mov         eax,dword ptr [ebp-4]
 006653EA    call        0066291C
 006653EF    fstp        qword ptr [ebp-18]
 006653F2    wait
 006653F3    mov         eax,dword ptr [ebp-8]
 006653F6    call        0066291C
 006653FB    fstp        qword ptr [ebp-20]
 006653FE    wait
 006653FF    mov         eax,dword ptr [ebp-0C]
 00665402    sub         eax,1
>00665405    jb          00665411
>00665407    je          0066541D
 00665409    dec         eax
>0066540A    je          00665429
 0066540C    dec         eax
>0066540D    je          00665435
>0066540F    jmp         00665441
 00665411    fld         qword ptr [ebp-18]
 00665414    fadd        qword ptr [ebp-20]
 00665417    fstp        qword ptr [ebp-18]
 0066541A    wait
>0066541B    jmp         00665446
 0066541D    fld         qword ptr [ebp-18]
 00665420    fsub        qword ptr [ebp-20]
 00665423    fstp        qword ptr [ebp-18]
 00665426    wait
>00665427    jmp         00665446
 00665429    fld         qword ptr [ebp-18]
 0066542C    fmul        qword ptr [ebp-20]
 0066542F    fstp        qword ptr [ebp-18]
 00665432    wait
>00665433    jmp         00665446
 00665435    fld         qword ptr [ebp-18]
 00665438    fdiv        qword ptr [ebp-20]
 0066543B    fstp        qword ptr [ebp-18]
 0066543E    wait
>0066543F    jmp         00665446
 00665441    call        VarInvalidOp
 00665446    fld         qword ptr [ebp-18]
 00665449    mov         eax,dword ptr [ebp-4]
 0066544C    call        0066D598
 00665451    mov         esp,ebp
 00665453    pop         ebp
 00665454    ret
end;*}

//00665458
{*procedure sub_00665458(?:?; ?:?; ?:?);
begin
 00665458    push        ebp
 00665459    mov         ebp,esp
 0066545B    add         esp,0FFFFFFE0
 0066545E    mov         dword ptr [ebp-0C],ecx
 00665461    mov         dword ptr [ebp-8],edx
 00665464    mov         dword ptr [ebp-4],eax
 00665467    mov         eax,dword ptr [ebp-4]
 0066546A    call        00662E80
 0066546F    fstp        qword ptr [ebp-18]
 00665472    wait
 00665473    mov         eax,dword ptr [ebp-8]
 00665476    call        00662E80
 0066547B    fstp        qword ptr [ebp-20]
 0066547E    wait
 0066547F    mov         eax,dword ptr [ebp-0C]
 00665482    sub         eax,1
>00665485    jb          0066548B
>00665487    je          00665497
>00665489    jmp         006654A3
 0066548B    fld         qword ptr [ebp-18]
 0066548E    fadd        qword ptr [ebp-20]
 00665491    fstp        qword ptr [ebp-18]
 00665494    wait
>00665495    jmp         006654A8
 00665497    fld         qword ptr [ebp-18]
 0066549A    fsub        qword ptr [ebp-20]
 0066549D    fstp        qword ptr [ebp-18]
 006654A0    wait
>006654A1    jmp         006654A8
 006654A3    call        VarInvalidOp
 006654A8    fld         qword ptr [ebp-18]
 006654AB    mov         eax,dword ptr [ebp-4]
 006654AE    call        0066D5A0
 006654B3    mov         esp,ebp
 006654B5    pop         ebp
 006654B6    ret
end;*}

//006654B8
{*procedure sub_006654B8(?:?; ?:?; ?:?; ?:?);
begin
 006654B8    push        ebp
 006654B9    mov         ebp,esp
 006654BB    add         esp,0FFFFFFE8
 006654BE    mov         dword ptr [ebp-18],ecx
 006654C1    mov         dword ptr [ebp-14],edx
 006654C4    mov         dword ptr [ebp-10],eax
 006654C7    mov         byte ptr [ebp-9],0
 006654CB    mov         eax,dword ptr [ebp-10]
 006654CE    call        0066186C
 006654D3    mov         dword ptr [ebp-4],eax
 006654D6    mov         eax,dword ptr [ebp-14]
 006654D9    call        0066186C
 006654DE    mov         dword ptr [ebp-8],eax
 006654E1    mov         eax,dword ptr [ebp-18]
 006654E4    cmp         eax,0A
>006654E7    ja          00665599
 006654ED    jmp         dword ptr [eax*4+6654F4]
 006654ED    dd          00665520
 006654ED    dd          00665531
 006654ED    dd          00665542
 006654ED    dd          00665553
 006654ED    dd          00665559
 006654ED    dd          00665565
 006654ED    dd          00665571
 006654ED    dd          00665579
 006654ED    dd          00665581
 006654ED    dd          00665589
 006654ED    dd          00665591
 00665520    mov         eax,dword ptr [ebp-4]
 00665523    mov         edx,dword ptr [ebp-8]
 00665526    add         eax,edx
 00665528    seto        byte ptr [ebp-9]
 0066552C    mov         dword ptr [ebp-4],eax
>0066552F    jmp         0066559E
 00665531    mov         eax,dword ptr [ebp-4]
 00665534    mov         edx,dword ptr [ebp-8]
 00665537    sub         eax,edx
 00665539    seto        byte ptr [ebp-9]
 0066553D    mov         dword ptr [ebp-4],eax
>00665540    jmp         0066559E
 00665542    mov         eax,dword ptr [ebp-4]
 00665545    mov         edx,dword ptr [ebp-8]
 00665548    imul        edx
 0066554A    seto        byte ptr [ebp-9]
 0066554E    mov         dword ptr [ebp-4],eax
>00665551    jmp         0066559E
 00665553    mov         byte ptr [ebp-9],1
>00665557    jmp         0066559E
 00665559    mov         eax,dword ptr [ebp-4]
 0066555C    cdq
 0066555D    idiv        eax,dword ptr [ebp-8]
 00665560    mov         dword ptr [ebp-4],eax
>00665563    jmp         0066559E
 00665565    mov         eax,dword ptr [ebp-4]
 00665568    cdq
 00665569    idiv        eax,dword ptr [ebp-8]
 0066556C    mov         dword ptr [ebp-4],edx
>0066556F    jmp         0066559E
 00665571    mov         ecx,dword ptr [ebp-8]
 00665574    shl         dword ptr [ebp-4],cl
>00665577    jmp         0066559E
 00665579    mov         ecx,dword ptr [ebp-8]
 0066557C    shr         dword ptr [ebp-4],cl
>0066557F    jmp         0066559E
 00665581    mov         eax,dword ptr [ebp-8]
 00665584    and         dword ptr [ebp-4],eax
>00665587    jmp         0066559E
 00665589    mov         eax,dword ptr [ebp-8]
 0066558C    or          dword ptr [ebp-4],eax
>0066558F    jmp         0066559E
 00665591    mov         eax,dword ptr [ebp-8]
 00665594    xor         dword ptr [ebp-4],eax
>00665597    jmp         0066559E
 00665599    call        VarInvalidOp
 0066559E    cmp         byte ptr [ebp-9],0
>006655A2    je          006655B9
 006655A4    mov         eax,dword ptr [ebp+8]
 006655A7    push        eax
 006655A8    mov         edx,dword ptr [ebp-14]
 006655AB    mov         eax,dword ptr [ebp-10]
 006655AE    mov         ecx,dword ptr [ebp-18]
 006655B1    call        006653D8
 006655B6    pop         ecx
>006655B7    jmp         006655C6
 006655B9    mov         eax,dword ptr [ebp-10]
 006655BC    mov         edx,dword ptr [ebp-4]
 006655BF    mov         cl,0FC
 006655C1    call        0066D574
 006655C6    mov         esp,ebp
 006655C8    pop         ebp
 006655C9    ret
end;*}

//006655CC
{*procedure sub_006655CC(?:?; ?:?; ?:?; ?:?);
begin
 006655CC    push        ebp
 006655CD    mov         ebp,esp
 006655CF    add         esp,0FFFFFFDC
 006655D2    push        ebx
 006655D3    push        esi
 006655D4    push        edi
 006655D5    mov         dword ptr [ebp-0C],ecx
 006655D8    mov         dword ptr [ebp-8],edx
 006655DB    mov         dword ptr [ebp-4],eax
 006655DE    mov         byte ptr [ebp-21],0
 006655E2    mov         eax,dword ptr [ebp-4]
 006655E5    call        00661E44
 006655EA    mov         dword ptr [ebp-18],eax
 006655ED    mov         dword ptr [ebp-14],edx
 006655F0    mov         eax,dword ptr [ebp-8]
 006655F3    call        00661E44
 006655F8    mov         dword ptr [ebp-20],eax
 006655FB    mov         dword ptr [ebp-1C],edx
 006655FE    mov         eax,dword ptr [ebp-0C]
 00665601    cmp         eax,0A
>00665604    ja          0066577E
 0066560A    jmp         dword ptr [eax*4+665611]
 0066560A    dd          0066563D
 0066560A    dd          0066563D
 0066560A    dd          0066563D
 0066560A    dd          006656D4
 0066560A    dd          006656DD
 0066560A    dd          006656F9
 0066560A    dd          00665712
 0066560A    dd          0066572A
 0066560A    dd          00665742
 0066560A    dd          00665756
 0066560A    dd          0066576A
 0066563D    xor         eax,eax
 0066563F    push        ebp
 00665640    push        6656A6
 00665645    push        dword ptr fs:[eax]
 00665648    mov         dword ptr fs:[eax],esp
 0066564B    mov         eax,dword ptr [ebp-0C]
 0066564E    sub         eax,1
>00665651    jb          0066565A
>00665653    je          0066566E
 00665655    dec         eax
>00665656    je          00665682
>00665658    jmp         00665699
 0066565A    mov         eax,dword ptr [ebp-18]
 0066565D    mov         edx,dword ptr [ebp-14]
 00665660    add         eax,dword ptr [ebp-20]
 00665663    adc         edx,dword ptr [ebp-1C]
 00665666    mov         dword ptr [ebp-18],eax
 00665669    mov         dword ptr [ebp-14],edx
>0066566C    jmp         00665699
 0066566E    mov         eax,dword ptr [ebp-18]
 00665671    mov         edx,dword ptr [ebp-14]
 00665674    sub         eax,dword ptr [ebp-20]
 00665677    sbb         edx,dword ptr [ebp-1C]
 0066567A    mov         dword ptr [ebp-18],eax
 0066567D    mov         dword ptr [ebp-14],edx
>00665680    jmp         00665699
 00665682    push        dword ptr [ebp-1C]
 00665685    push        dword ptr [ebp-20]
 00665688    mov         eax,dword ptr [ebp-18]
 0066568B    mov         edx,dword ptr [ebp-14]
 0066568E    call        @_llmul
 00665693    mov         dword ptr [ebp-18],eax
 00665696    mov         dword ptr [ebp-14],edx
 00665699    xor         eax,eax
 0066569B    pop         edx
 0066569C    pop         ecx
 0066569D    pop         ecx
 0066569E    mov         dword ptr fs:[eax],edx
>006656A1    jmp         00665783
>006656A6    jmp         @HandleOnException
 006656AB    dd          2
 006656AF    dd          00656C64;EOverflow
 006656B3    dd          006656BF
 006656B7    dd          00000000
 006656BB    dd          006656C5
 006656BF    mov         byte ptr [ebp-21],1
>006656C3    jmp         006656CA
 006656C5    call        @RaiseAgain
 006656CA    call        @DoneExcept
>006656CF    jmp         00665783
 006656D4    mov         byte ptr [ebp-21],1
>006656D8    jmp         00665783
 006656DD    push        dword ptr [ebp-1C]
 006656E0    push        dword ptr [ebp-20]
 006656E3    mov         eax,dword ptr [ebp-18]
 006656E6    mov         edx,dword ptr [ebp-14]
 006656E9    call        @_lldiv
 006656EE    mov         dword ptr [ebp-18],eax
 006656F1    mov         dword ptr [ebp-14],edx
>006656F4    jmp         00665783
 006656F9    push        dword ptr [ebp-1C]
 006656FC    push        dword ptr [ebp-20]
 006656FF    mov         eax,dword ptr [ebp-18]
 00665702    mov         edx,dword ptr [ebp-14]
 00665705    call        @_llmod
 0066570A    mov         dword ptr [ebp-18],eax
 0066570D    mov         dword ptr [ebp-14],edx
>00665710    jmp         00665783
 00665712    mov         eax,dword ptr [ebp-20]
 00665715    mov         ecx,eax
 00665717    mov         eax,dword ptr [ebp-18]
 0066571A    mov         edx,dword ptr [ebp-14]
 0066571D    call        @_llshl
 00665722    mov         dword ptr [ebp-18],eax
 00665725    mov         dword ptr [ebp-14],edx
>00665728    jmp         00665783
 0066572A    mov         eax,dword ptr [ebp-20]
 0066572D    mov         ecx,eax
 0066572F    mov         eax,dword ptr [ebp-18]
 00665732    mov         edx,dword ptr [ebp-14]
 00665735    call        @_llushr
 0066573A    mov         dword ptr [ebp-18],eax
 0066573D    mov         dword ptr [ebp-14],edx
>00665740    jmp         00665783
 00665742    mov         eax,dword ptr [ebp-18]
 00665745    mov         edx,dword ptr [ebp-14]
 00665748    and         eax,dword ptr [ebp-20]
 0066574B    and         edx,dword ptr [ebp-1C]
 0066574E    mov         dword ptr [ebp-18],eax
 00665751    mov         dword ptr [ebp-14],edx
>00665754    jmp         00665783
 00665756    mov         eax,dword ptr [ebp-18]
 00665759    mov         edx,dword ptr [ebp-14]
 0066575C    or          eax,dword ptr [ebp-20]
 0066575F    or          edx,dword ptr [ebp-1C]
 00665762    mov         dword ptr [ebp-18],eax
 00665765    mov         dword ptr [ebp-14],edx
>00665768    jmp         00665783
 0066576A    mov         eax,dword ptr [ebp-18]
 0066576D    mov         edx,dword ptr [ebp-14]
 00665770    xor         eax,dword ptr [ebp-20]
 00665773    xor         edx,dword ptr [ebp-1C]
 00665776    mov         dword ptr [ebp-18],eax
 00665779    mov         dword ptr [ebp-14],edx
>0066577C    jmp         00665783
 0066577E    call        VarInvalidOp
 00665783    cmp         byte ptr [ebp-21],0
>00665787    je          0066579E
 00665789    mov         eax,dword ptr [ebp+8]
 0066578C    push        eax
 0066578D    mov         edx,dword ptr [ebp-8]
 00665790    mov         eax,dword ptr [ebp-4]
 00665793    mov         ecx,dword ptr [ebp-0C]
 00665796    call        006653D8
 0066579B    pop         ecx
>0066579C    jmp         006657AE
 0066579E    mov         eax,dword ptr [ebp-18]
 006657A1    mov         edx,dword ptr [ebp-14]
 006657A4    push        edx
 006657A5    push        eax
 006657A6    mov         eax,dword ptr [ebp-4]
 006657A9    call        @VarFromInt64
 006657AE    pop         edi
 006657AF    pop         esi
 006657B0    pop         ebx
 006657B1    mov         esp,ebp
 006657B3    pop         ebp
 006657B4    ret
end;*}

//006657B8
{*procedure sub_006657B8(?:?; ?:?; ?:?);
begin
 006657B8    push        ebp
 006657B9    mov         ebp,esp
 006657BB    add         esp,0FFFFFFCC
 006657BE    push        ebx
 006657BF    mov         dword ptr [ebp-0C],ecx
 006657C2    mov         dword ptr [ebp-8],edx
 006657C5    mov         dword ptr [ebp-4],eax
 006657C8    push        ebp
 006657C9    mov         eax,dword ptr [ebp-4]
 006657CC    mov         ax,word ptr [eax]
 006657CF    call        00665378
 006657D4    pop         ecx
 006657D5    movzx       eax,ax
 006657D8    mov         al,byte ptr [eax+6E4D18]
 006657DE    mov         byte ptr [ebp-0D],al
 006657E1    push        ebp
 006657E2    mov         eax,dword ptr [ebp-8]
 006657E5    mov         ax,word ptr [eax]
 006657E8    call        00665378
 006657ED    pop         ecx
 006657EE    movzx       eax,ax
 006657F1    mov         al,byte ptr [eax+6E4D18]
 006657F7    mov         byte ptr [ebp-0E],al
 006657FA    xor         eax,eax
 006657FC    mov         al,byte ptr [ebp-0E]
 006657FF    xor         edx,edx
 00665801    mov         dl,byte ptr [ebp-0D]
 00665804    lea         edx,[edx+edx*4]
 00665807    lea         edx,[edx*2+6E4D34]
 0066580E    movzx       eax,byte ptr [edx+eax]
 00665812    cmp         eax,9
>00665815    ja          00665C01
 0066581B    jmp         dword ptr [eax*4+665822]
 0066581B    dd          0066584A
 0066581B    dd          00665854
 0066581B    dd          0066584A
 0066581B    dd          00665861
 0066581B    dd          00665891
 0066581B    dd          006658C1
 0066581B    dd          00665A61
 0066581B    dd          00665AA7
 0066581B    dd          00665B69
 0066581B    dd          00665BD7
 0066584A    call        VarInvalidOp
>0066584F    jmp         00665C06
 00665854    mov         eax,dword ptr [ebp-4]
 00665857    call        00660244
>0066585C    jmp         00665C06
 00665861    cmp         dword ptr [ebp-0C],3
>00665865    jne         0066587C
 00665867    push        ebp
 00665868    mov         edx,dword ptr [ebp-8]
 0066586B    mov         eax,dword ptr [ebp-4]
 0066586E    mov         ecx,dword ptr [ebp-0C]
 00665871    call        006653D8
 00665876    pop         ecx
>00665877    jmp         00665C06
 0066587C    push        ebp
 0066587D    mov         edx,dword ptr [ebp-8]
 00665880    mov         eax,dword ptr [ebp-4]
 00665883    mov         ecx,dword ptr [ebp-0C]
 00665886    call        006654B8
 0066588B    pop         ecx
>0066588C    jmp         00665C06
 00665891    cmp         dword ptr [ebp-0C],4
>00665895    jl          006658AC
 00665897    push        ebp
 00665898    mov         edx,dword ptr [ebp-8]
 0066589B    mov         eax,dword ptr [ebp-4]
 0066589E    mov         ecx,dword ptr [ebp-0C]
 006658A1    call        006654B8
 006658A6    pop         ecx
>006658A7    jmp         00665C06
 006658AC    push        ebp
 006658AD    mov         edx,dword ptr [ebp-8]
 006658B0    mov         eax,dword ptr [ebp-4]
 006658B3    mov         ecx,dword ptr [ebp-0C]
 006658B6    call        006653D8
 006658BB    pop         ecx
>006658BC    jmp         00665C06
 006658C1    mov         eax,dword ptr [ebp-0C]
 006658C4    sub         eax,1
>006658C7    jb          006658D6
>006658C9    je          006658FC
 006658CB    dec         eax
 006658CC    sub         eax,2
>006658CF    jb          00665922
>006658D1    jmp         00665A4C
 006658D6    mov         eax,dword ptr [ebp-4]
 006658D9    call        006633E0
 006658DE    fistp       qword ptr [ebp-28]
 006658E1    wait
 006658E2    mov         eax,dword ptr [ebp-8]
 006658E5    call        006633E0
 006658EA    fild        qword ptr [ebp-28]
 006658ED    faddp       st(1),st
 006658EF    mov         eax,dword ptr [ebp-4]
 006658F2    call        0066D5A8
>006658F7    jmp         00665C06
 006658FC    mov         eax,dword ptr [ebp-4]
 006658FF    call        006633E0
 00665904    fistp       qword ptr [ebp-28]
 00665907    wait
 00665908    mov         eax,dword ptr [ebp-8]
 0066590B    call        006633E0
 00665910    fild        qword ptr [ebp-28]
 00665913    fsubrp      st(1),st
 00665915    mov         eax,dword ptr [ebp-4]
 00665918    call        0066D5A8
>0066591D    jmp         00665C06
 00665922    cmp         byte ptr [ebp-0D],5
>00665926    jne         00665986
 00665928    cmp         byte ptr [ebp-0E],5
>0066592C    jne         00665986
 0066592E    cmp         dword ptr [ebp-0C],2
>00665932    jne         00665960
 00665934    mov         eax,dword ptr [ebp-4]
 00665937    call        006633E0
 0066593C    fistp       qword ptr [ebp-28]
 0066593F    wait
 00665940    mov         eax,dword ptr [ebp-8]
 00665943    call        006633E0
 00665948    fild        qword ptr [ebp-28]
 0066594B    fmulp       st(1),st
 0066594D    fdiv        dword ptr ds:[665C0C];10000:Single
 00665953    mov         eax,dword ptr [ebp-4]
 00665956    call        0066D5A8
>0066595B    jmp         00665C06
 00665960    mov         eax,dword ptr [ebp-4]
 00665963    call        006633E0
 00665968    fistp       qword ptr [ebp-28]
 0066596B    wait
 0066596C    mov         eax,dword ptr [ebp-8]
 0066596F    call        006633E0
 00665974    fild        qword ptr [ebp-28]
 00665977    fdivrp      st(1),st
 00665979    mov         eax,dword ptr [ebp-4]
 0066597C    call        0066D598
>00665981    jmp         00665C06
 00665986    cmp         byte ptr [ebp-0E],5
>0066598A    jne         006659EC
 0066598C    cmp         dword ptr [ebp-0C],2
>00665990    jne         006659BF
 00665992    mov         eax,dword ptr [ebp-4]
 00665995    call        0066291C
 0066599A    fstp        tbyte ptr [ebp-34]
 0066599D    wait
 0066599E    mov         eax,dword ptr [ebp-8]
 006659A1    call        006633E0
 006659A6    fld         tbyte ptr [ebp-34]
 006659A9    fmulp       st(1),st
 006659AB    fistp       qword ptr [ebp-18]
 006659AE    wait
 006659AF    fild        qword ptr [ebp-18]
 006659B2    mov         eax,dword ptr [ebp-4]
 006659B5    call        0066D5A8
>006659BA    jmp         00665C06
 006659BF    mov         eax,dword ptr [ebp-4]
 006659C2    call        006633E0
 006659C7    fistp       qword ptr [ebp-28]
 006659CA    wait
 006659CB    mov         eax,dword ptr [ebp-8]
 006659CE    call        006633E0
 006659D3    fild        qword ptr [ebp-28]
 006659D6    fdivrp      st(1),st
 006659D8    fstp        qword ptr [ebp-20]
 006659DB    wait
 006659DC    fld         qword ptr [ebp-20]
 006659DF    mov         eax,dword ptr [ebp-4]
 006659E2    call        0066D598
>006659E7    jmp         00665C06
 006659EC    cmp         dword ptr [ebp-0C],2
>006659F0    jne         00665A1F
 006659F2    mov         eax,dword ptr [ebp-8]
 006659F5    call        0066291C
 006659FA    fstp        tbyte ptr [ebp-34]
 006659FD    wait
 006659FE    mov         eax,dword ptr [ebp-4]
 00665A01    call        006633E0
 00665A06    fld         tbyte ptr [ebp-34]
 00665A09    fmulp       st(1),st
 00665A0B    fistp       qword ptr [ebp-18]
 00665A0E    wait
 00665A0F    fild        qword ptr [ebp-18]
 00665A12    mov         eax,dword ptr [ebp-4]
 00665A15    call        0066D5A8
>00665A1A    jmp         00665C06
 00665A1F    mov         eax,dword ptr [ebp-8]
 00665A22    call        0066291C
 00665A27    fstp        tbyte ptr [ebp-34]
 00665A2A    wait
 00665A2B    mov         eax,dword ptr [ebp-4]
 00665A2E    call        006633E0
 00665A33    fld         tbyte ptr [ebp-34]
 00665A36    fdivp       st(1),st
 00665A38    fistp       qword ptr [ebp-18]
 00665A3B    wait
 00665A3C    fild        qword ptr [ebp-18]
 00665A3F    mov         eax,dword ptr [ebp-4]
 00665A42    call        0066D5A8
>00665A47    jmp         00665C06
 00665A4C    push        ebp
 00665A4D    mov         edx,dword ptr [ebp-8]
 00665A50    mov         eax,dword ptr [ebp-4]
 00665A53    mov         ecx,dword ptr [ebp-0C]
 00665A56    call        006654B8
 00665A5B    pop         ecx
>00665A5C    jmp         00665C06
 00665A61    cmp         dword ptr [ebp-0C],0
>00665A65    jne         00665A77
 00665A67    mov         edx,dword ptr [ebp-8]
 00665A6A    mov         eax,dword ptr [ebp-4]
 00665A6D    call        00664EDC
>00665A72    jmp         00665C06
 00665A77    cmp         dword ptr [ebp-0C],4
>00665A7B    jl          00665A92
 00665A7D    push        ebp
 00665A7E    mov         edx,dword ptr [ebp-8]
 00665A81    mov         eax,dword ptr [ebp-4]
 00665A84    mov         ecx,dword ptr [ebp-0C]
 00665A87    call        006654B8
 00665A8C    pop         ecx
>00665A8D    jmp         00665C06
 00665A92    push        ebp
 00665A93    mov         edx,dword ptr [ebp-8]
 00665A96    mov         eax,dword ptr [ebp-4]
 00665A99    mov         ecx,dword ptr [ebp-0C]
 00665A9C    call        006653D8
 00665AA1    pop         ecx
>00665AA2    jmp         00665C06
 00665AA7    cmp         dword ptr [ebp-0C],8
>00665AAB    jge         00665ADD
 00665AAD    cmp         dword ptr [ebp-0C],4
>00665AB1    jl          00665AC8
 00665AB3    push        ebp
 00665AB4    mov         edx,dword ptr [ebp-8]
 00665AB7    mov         eax,dword ptr [ebp-4]
 00665ABA    mov         ecx,dword ptr [ebp-0C]
 00665ABD    call        006654B8
 00665AC2    pop         ecx
>00665AC3    jmp         00665C06
 00665AC8    push        ebp
 00665AC9    mov         edx,dword ptr [ebp-8]
 00665ACC    mov         eax,dword ptr [ebp-4]
 00665ACF    mov         ecx,dword ptr [ebp-0C]
 00665AD2    call        006653D8
 00665AD7    pop         ecx
>00665AD8    jmp         00665C06
 00665ADD    mov         eax,dword ptr [ebp-0C]
 00665AE0    sub         eax,8
>00665AE3    je          00665AF0
 00665AE5    dec         eax
>00665AE6    je          00665B1B
 00665AE8    dec         eax
>00665AE9    je          00665B46
>00665AEB    jmp         00665C06
 00665AF0    mov         eax,dword ptr [ebp-4]
 00665AF3    call        006623E4
 00665AF8    test        al,al
>00665AFA    je          00665B08
 00665AFC    mov         eax,dword ptr [ebp-8]
 00665AFF    call        006623E4
 00665B04    test        al,al
>00665B06    jne         00665B0C
 00665B08    xor         edx,edx
>00665B0A    jmp         00665B0E
 00665B0C    mov         dl,1
 00665B0E    mov         eax,dword ptr [ebp-4]
 00665B11    call        0066D590
>00665B16    jmp         00665C06
 00665B1B    mov         eax,dword ptr [ebp-4]
 00665B1E    call        006623E4
 00665B23    test        al,al
>00665B25    jne         00665B37
 00665B27    mov         eax,dword ptr [ebp-8]
 00665B2A    call        006623E4
 00665B2F    test        al,al
>00665B31    jne         00665B37
 00665B33    xor         edx,edx
>00665B35    jmp         00665B39
 00665B37    mov         dl,1
 00665B39    mov         eax,dword ptr [ebp-4]
 00665B3C    call        0066D590
>00665B41    jmp         00665C06
 00665B46    mov         eax,dword ptr [ebp-4]
 00665B49    call        006623E4
 00665B4E    mov         ebx,eax
 00665B50    mov         eax,dword ptr [ebp-8]
 00665B53    call        006623E4
 00665B58    xor         bl,al
 00665B5A    mov         edx,ebx
 00665B5C    mov         eax,dword ptr [ebp-4]
 00665B5F    call        0066D590
>00665B64    jmp         00665C06
 00665B69    mov         eax,dword ptr [ebp-0C]
 00665B6C    sub         eax,1
>00665B6F    jb          00665B7B
>00665B71    je          00665B8D
 00665B73    dec         eax
 00665B74    sub         eax,2
>00665B77    jb          00665BB3
>00665B79    jmp         00665BC5
 00665B7B    push        ebp
 00665B7C    mov         edx,dword ptr [ebp-8]
 00665B7F    mov         eax,dword ptr [ebp-4]
 00665B82    mov         ecx,dword ptr [ebp-0C]
 00665B85    call        00665458
 00665B8A    pop         ecx
>00665B8B    jmp         00665C06
 00665B8D    push        ebp
 00665B8E    mov         edx,dword ptr [ebp-8]
 00665B91    mov         eax,dword ptr [ebp-4]
 00665B94    mov         ecx,dword ptr [ebp-0C]
 00665B97    call        00665458
 00665B9C    pop         ecx
 00665B9D    cmp         byte ptr [ebp-0D],8
>00665BA1    jne         00665C06
 00665BA3    cmp         byte ptr [ebp-0E],8
>00665BA7    jne         00665C06
 00665BA9    mov         eax,dword ptr [ebp-4]
 00665BAC    mov         word ptr [eax],5
>00665BB1    jmp         00665C06
 00665BB3    push        ebp
 00665BB4    mov         edx,dword ptr [ebp-8]
 00665BB7    mov         eax,dword ptr [ebp-4]
 00665BBA    mov         ecx,dword ptr [ebp-0C]
 00665BBD    call        006653D8
 00665BC2    pop         ecx
>00665BC3    jmp         00665C06
 00665BC5    push        ebp
 00665BC6    mov         edx,dword ptr [ebp-8]
 00665BC9    mov         eax,dword ptr [ebp-4]
 00665BCC    mov         ecx,dword ptr [ebp-0C]
 00665BCF    call        006654B8
 00665BD4    pop         ecx
>00665BD5    jmp         00665C06
 00665BD7    cmp         dword ptr [ebp-0C],3
>00665BDB    jne         00665BEF
 00665BDD    push        ebp
 00665BDE    mov         edx,dword ptr [ebp-8]
 00665BE1    mov         eax,dword ptr [ebp-4]
 00665BE4    mov         ecx,dword ptr [ebp-0C]
 00665BE7    call        006653D8
 00665BEC    pop         ecx
>00665BED    jmp         00665C06
 00665BEF    push        ebp
 00665BF0    mov         edx,dword ptr [ebp-8]
 00665BF3    mov         eax,dword ptr [ebp-4]
 00665BF6    mov         ecx,dword ptr [ebp-0C]
 00665BF9    call        006655CC
 00665BFE    pop         ecx
>00665BFF    jmp         00665C06
 00665C01    call        VarInvalidOp
 00665C06    pop         ebx
 00665C07    mov         esp,ebp
 00665C09    pop         ebp
 00665C0A    ret
end;*}

//00665C10
{*procedure sub_00665C10(?:?; ?:?; ?:?);
begin
 00665C10    push        ebp
 00665C11    mov         ebp,esp
 00665C13    add         esp,0FFFFFFF4
 00665C16    mov         dword ptr [ebp-0C],ecx
 00665C19    mov         dword ptr [ebp-8],edx
 00665C1C    mov         dword ptr [ebp-4],eax
 00665C1F    mov         eax,dword ptr [ebp-4]
 00665C22    cmp         word ptr [eax],10F
>00665C27    jae         00665C46
 00665C29    mov         eax,dword ptr [ebp-8]
 00665C2C    cmp         word ptr [eax],10F
>00665C31    jae         00665C46
 00665C33    mov         edx,dword ptr [ebp-8]
 00665C36    mov         eax,dword ptr [ebp-4]
 00665C39    mov         ecx,dword ptr [ebp-0C]
 00665C3C    call        006657B8
>00665C41    jmp         00665CC8
 00665C46    mov         eax,dword ptr [ebp-4]
 00665C49    cmp         word ptr [eax],400C
>00665C4E    jne         00665C6B
 00665C50    mov         edx,dword ptr [ebp-4]
 00665C53    mov         eax,dword ptr [ebp-4]
 00665C56    call        00660900
 00665C5B    mov         edx,dword ptr [ebp-8]
 00665C5E    mov         eax,dword ptr [ebp-4]
 00665C61    mov         ecx,dword ptr [ebp-0C]
 00665C64    call        00665C10
>00665C69    jmp         00665CC8
 00665C6B    mov         eax,dword ptr [ebp-8]
 00665C6E    cmp         word ptr [eax],400C
>00665C73    jne         00665C8A
 00665C75    mov         eax,dword ptr [ebp-8]
 00665C78    mov         eax,dword ptr [eax+8]
 00665C7B    mov         edx,eax
 00665C7D    mov         eax,dword ptr [ebp-4]
 00665C80    mov         ecx,dword ptr [ebp-0C]
 00665C83    call        00665C10
>00665C88    jmp         00665CC8
 00665C8A    mov         eax,dword ptr [ebp-4]
 00665C8D    mov         ax,word ptr [eax]
 00665C90    and         ax,0FFF
 00665C94    cmp         ax,10F
>00665C98    jae         00665CBA
 00665C9A    mov         eax,dword ptr [ebp-8]
 00665C9D    mov         ax,word ptr [eax]
 00665CA0    and         ax,0FFF
 00665CA4    cmp         ax,10F
>00665CA8    jae         00665CBA
 00665CAA    mov         edx,dword ptr [ebp-8]
 00665CAD    mov         eax,dword ptr [ebp-4]
 00665CB0    mov         ecx,dword ptr [ebp-0C]
 00665CB3    call        006657B8
>00665CB8    jmp         00665CC8
 00665CBA    mov         edx,dword ptr [ebp-8]
 00665CBD    mov         eax,dword ptr [ebp-4]
 00665CC0    mov         ecx,dword ptr [ebp-0C]
 00665CC3    call        00664F98
 00665CC8    mov         esp,ebp
 00665CCA    pop         ebp
 00665CCB    ret
end;*}

//00665CCC
{*function sub_00665CCC(?:?; ?:?; ?:?):?;
begin
 00665CCC    push        ebp
 00665CCD    mov         ebp,esp
 00665CCF    add         esp,0FFFFFFD0
 00665CD2    mov         dword ptr [ebp-0C],ecx
 00665CD5    mov         dword ptr [ebp-8],edx
 00665CD8    mov         dword ptr [ebp-4],eax
 00665CDB    lea         eax,[ebp-1D]
 00665CDE    push        eax
 00665CDF    call        OLEAUT32.8
 00665CE4    xor         eax,eax
 00665CE6    push        ebp
 00665CE7    push        665D9A
 00665CEC    push        dword ptr fs:[eax]
 00665CEF    mov         dword ptr fs:[eax],esp
 00665CF2    mov         edx,dword ptr [ebp-4]
 00665CF5    lea         eax,[ebp-1D]
 00665CF8    call        006607C0
 00665CFD    mov         eax,dword ptr [ebp-4]
 00665D00    cmp         word ptr [eax],101
>00665D05    jne         00665D10
 00665D07    lea         eax,[ebp-1D]
 00665D0A    call        dword ptr ds:[6ED154]
 00665D10    mov         eax,dword ptr [ebp-8]
 00665D13    cmp         word ptr [eax],101
>00665D18    jne         00665D73
 00665D1A    lea         eax,[ebp-2D]
 00665D1D    push        eax
 00665D1E    call        OLEAUT32.8
 00665D23    xor         eax,eax
 00665D25    push        ebp
 00665D26    push        665D6C
 00665D2B    push        dword ptr fs:[eax]
 00665D2E    mov         dword ptr fs:[eax],esp
 00665D31    mov         edx,dword ptr [ebp-8]
 00665D34    lea         eax,[ebp-2D]
 00665D37    call        006607C0
 00665D3C    lea         eax,[ebp-2D]
 00665D3F    call        dword ptr ds:[6ED154]
 00665D45    lea         edx,[ebp-2D]
 00665D48    lea         eax,[ebp-1D]
 00665D4B    mov         ecx,dword ptr [ebp-0C]
 00665D4E    call        00666624
 00665D53    mov         byte ptr [ebp-0D],al
 00665D56    xor         eax,eax
 00665D58    pop         edx
 00665D59    pop         ecx
 00665D5A    pop         ecx
 00665D5B    mov         dword ptr fs:[eax],edx
 00665D5E    push        665D84
 00665D63    lea         eax,[ebp-2D]
 00665D66    call        00660244
 00665D6B    ret
>00665D6C    jmp         @HandleFinally
>00665D71    jmp         00665D63
 00665D73    mov         edx,dword ptr [ebp-8]
 00665D76    lea         eax,[ebp-1D]
 00665D79    mov         ecx,dword ptr [ebp-0C]
 00665D7C    call        00666624
 00665D81    mov         byte ptr [ebp-0D],al
 00665D84    xor         eax,eax
 00665D86    pop         edx
 00665D87    pop         ecx
 00665D88    pop         ecx
 00665D89    mov         dword ptr fs:[eax],edx
 00665D8C    push        665DA1
 00665D91    lea         eax,[ebp-1D]
 00665D94    call        00660244
 00665D99    ret
>00665D9A    jmp         @HandleFinally
>00665D9F    jmp         00665D91
 00665DA1    mov         al,byte ptr [ebp-0D]
 00665DA4    mov         esp,ebp
 00665DA6    pop         ebp
 00665DA7    ret
end;*}

//00665DA8
{*function sub_00665DA8(?:?; ?:?):?;
begin
 00665DA8    push        ebp
 00665DA9    mov         ebp,esp
 00665DAB    push        ecx
 00665DAC    mov         byte ptr [ebp-2],dl
 00665DAF    mov         byte ptr [ebp-1],al
 00665DB2    cmp         byte ptr [ebp-1],1
>00665DB6    jne         00665DCA
 00665DB8    cmp         byte ptr [ebp-2],1
>00665DBC    jne         00665DC4
 00665DBE    mov         byte ptr [ebp-3],1
>00665DC2    jmp         00665DCE
 00665DC4    mov         byte ptr [ebp-3],0
>00665DC8    jmp         00665DCE
 00665DCA    mov         byte ptr [ebp-3],2
 00665DCE    mov         al,byte ptr [ebp-3]
 00665DD1    pop         ecx
 00665DD2    pop         ebp
 00665DD3    ret
end;*}

//00665DD4
{*function sub_00665DD4(?:?; ?:?; ?:?):?;
begin
 00665DD4    push        ebp
 00665DD5    mov         ebp,esp
 00665DD7    add         esp,0FFFFFFF4
 00665DDA    mov         dword ptr [ebp-8],ecx
 00665DDD    mov         byte ptr [ebp-2],dl
 00665DE0    mov         byte ptr [ebp-1],al
 00665DE3    mov         eax,dword ptr [ebp-8]
 00665DE6    sub         eax,0E
>00665DE9    je          00665DF0
 00665DEB    dec         eax
>00665DEC    je          00665E10
>00665DEE    jmp         00665E30
 00665DF0    cmp         byte ptr [ebp-1],2
>00665DF4    jne         00665DFC
 00665DF6    cmp         byte ptr [ebp-2],2
>00665DFA    je          00665E00
 00665DFC    xor         eax,eax
>00665DFE    jmp         00665E02
 00665E00    mov         al,1
 00665E02    and         eax,7F
 00665E05    mov         al,byte ptr [eax+6E4D98]
 00665E0B    mov         byte ptr [ebp-9],al
>00665E0E    jmp         00665E39
 00665E10    cmp         byte ptr [ebp-1],2
>00665E14    jne         00665E20
 00665E16    cmp         byte ptr [ebp-2],2
>00665E1A    jne         00665E20
 00665E1C    xor         eax,eax
>00665E1E    jmp         00665E22
 00665E20    mov         al,1
 00665E22    and         eax,7F
 00665E25    mov         al,byte ptr [eax+6E4D9A]
 00665E2B    mov         byte ptr [ebp-9],al
>00665E2E    jmp         00665E39
 00665E30    call        VarInvalidOp
 00665E35    mov         byte ptr [ebp-9],1
 00665E39    mov         al,byte ptr [ebp-9]
 00665E3C    mov         esp,ebp
 00665E3E    pop         ebp
 00665E3F    ret
end;*}

//00665E40
{*function sub_00665E40(?:?):?;
begin
 00665E40    push        ebp
 00665E41    mov         ebp,esp
 00665E43    push        ecx
 00665E44    mov         word ptr [ebp-2],ax
 00665E48    mov         ax,word ptr [ebp-2]
 00665E4C    and         ax,0FFF
 00665E50    mov         word ptr [ebp-4],ax
 00665E54    cmp         word ptr [ebp-4],14
>00665E59    jbe         00665E70
 00665E5B    cmp         word ptr [ebp-4],100
>00665E61    jne         00665E6B
 00665E63    mov         word ptr [ebp-4],8
>00665E69    jmp         00665E70
 00665E6B    call        VarInvalidOp
 00665E70    mov         ax,word ptr [ebp-4]
 00665E74    pop         ecx
 00665E75    pop         ebp
 00665E76    ret
end;*}

//00665E78
{*function sub_00665E78(?:Integer; ?:?):?;
begin
 00665E78    push        ebp
 00665E79    mov         ebp,esp
 00665E7B    add         esp,0FFFFFFF4
 00665E7E    mov         dword ptr [ebp-8],edx
 00665E81    mov         dword ptr [ebp-4],eax
 00665E84    mov         eax,dword ptr [ebp-4]
 00665E87    cmp         eax,dword ptr [ebp-8]
>00665E8A    jge         00665E92
 00665E8C    mov         byte ptr [ebp-9],0
>00665E90    jmp         00665EA4
 00665E92    mov         eax,dword ptr [ebp-4]
 00665E95    cmp         eax,dword ptr [ebp-8]
>00665E98    jle         00665EA0
 00665E9A    mov         byte ptr [ebp-9],2
>00665E9E    jmp         00665EA4
 00665EA0    mov         byte ptr [ebp-9],1
 00665EA4    mov         al,byte ptr [ebp-9]
 00665EA7    mov         esp,ebp
 00665EA9    pop         ebp
 00665EAA    ret
end;*}

//00665EAC
{*function sub_00665EAC(?:?; ?:?; ?:?; ?:?):?;
begin
 00665EAC    push        ebp
 00665EAD    mov         ebp,esp
 00665EAF    push        ecx
 00665EB0    mov         eax,dword ptr [ebp+10]
 00665EB3    mov         edx,dword ptr [ebp+14]
 00665EB6    cmp         edx,dword ptr [ebp+0C]
>00665EB9    jne         00665EC2
 00665EBB    cmp         eax,dword ptr [ebp+8]
>00665EBE    jae         00665ECA
>00665EC0    jmp         00665EC4
>00665EC2    jge         00665ECA
 00665EC4    mov         byte ptr [ebp-1],0
>00665EC8    jmp         00665EE8
 00665ECA    mov         eax,dword ptr [ebp+10]
 00665ECD    mov         edx,dword ptr [ebp+14]
 00665ED0    cmp         edx,dword ptr [ebp+0C]
>00665ED3    jne         00665EDC
 00665ED5    cmp         eax,dword ptr [ebp+8]
>00665ED8    jbe         00665EE4
>00665EDA    jmp         00665EDE
>00665EDC    jle         00665EE4
 00665EDE    mov         byte ptr [ebp-1],2
>00665EE2    jmp         00665EE8
 00665EE4    mov         byte ptr [ebp-1],1
 00665EE8    mov         al,byte ptr [ebp-1]
 00665EEB    pop         ecx
 00665EEC    pop         ebp
 00665EED    ret         10
end;*}

//00665EF0
{*function sub_00665EF0(?:?; ?:?):?;
begin
 00665EF0    push        ebp
 00665EF1    mov         ebp,esp
 00665EF3    push        ecx
 00665EF4    fld         qword ptr [ebp+10]
 00665EF7    fcomp       qword ptr [ebp+8]
 00665EFA    fnstsw      al
 00665EFC    sahf
>00665EFD    jae         00665F05
 00665EFF    mov         byte ptr [ebp-1],0
>00665F03    jmp         00665F1A
 00665F05    fld         qword ptr [ebp+10]
 00665F08    fcomp       qword ptr [ebp+8]
 00665F0B    fnstsw      al
 00665F0D    sahf
>00665F0E    jbe         00665F16
 00665F10    mov         byte ptr [ebp-1],2
>00665F14    jmp         00665F1A
 00665F16    mov         byte ptr [ebp-1],1
 00665F1A    mov         al,byte ptr [ebp-1]
 00665F1D    pop         ecx
 00665F1E    pop         ebp
 00665F1F    ret         10
end;*}

//00665F24
{*function sub_00665F24(?:?; ?:?):?;
begin
 00665F24    push        ebp
 00665F25    mov         ebp,esp
 00665F27    push        ecx
 00665F28    fld         qword ptr [ebp+10]
 00665F2B    fcomp       qword ptr [ebp+8]
 00665F2E    fnstsw      al
 00665F30    sahf
>00665F31    jae         00665F39
 00665F33    mov         byte ptr [ebp-1],0
>00665F37    jmp         00665F4E
 00665F39    fld         qword ptr [ebp+10]
 00665F3C    fcomp       qword ptr [ebp+8]
 00665F3F    fnstsw      al
 00665F41    sahf
>00665F42    jbe         00665F4A
 00665F44    mov         byte ptr [ebp-1],2
>00665F48    jmp         00665F4E
 00665F4A    mov         byte ptr [ebp-1],1
 00665F4E    mov         al,byte ptr [ebp-1]
 00665F51    pop         ecx
 00665F52    pop         ebp
 00665F53    ret         10
end;*}

//00665F58
{*function sub_00665F58(?:?; ?:?):?;
begin
 00665F58    push        ebp
 00665F59    mov         ebp,esp
 00665F5B    push        ecx
 00665F5C    fild        qword ptr [ebp+10]
 00665F5F    fild        qword ptr [ebp+8]
 00665F62    fcompp
 00665F64    fnstsw      al
 00665F66    sahf
>00665F67    jbe         00665F6F
 00665F69    mov         byte ptr [ebp-1],0
>00665F6D    jmp         00665F86
 00665F6F    fild        qword ptr [ebp+10]
 00665F72    fild        qword ptr [ebp+8]
 00665F75    fcompp
 00665F77    fnstsw      al
 00665F79    sahf
>00665F7A    jae         00665F82
 00665F7C    mov         byte ptr [ebp-1],2
>00665F80    jmp         00665F86
 00665F82    mov         byte ptr [ebp-1],1
 00665F86    mov         al,byte ptr [ebp-1]
 00665F89    pop         ecx
 00665F8A    pop         ebp
 00665F8B    ret         10
end;*}

//00665F90
{*function sub_00665F90(?:?; ?:?; ?:?):?;
begin
 00665F90    push        ebp
 00665F91    mov         ebp,esp
 00665F93    add         esp,0FFFFFFEC
 00665F96    xor         ecx,ecx
 00665F98    mov         dword ptr [ebp-10],ecx
 00665F9B    mov         dword ptr [ebp-14],ecx
 00665F9E    mov         dword ptr [ebp-8],edx
 00665FA1    mov         dword ptr [ebp-4],eax
 00665FA4    xor         eax,eax
 00665FA6    push        ebp
 00665FA7    push        666009
 00665FAC    push        dword ptr fs:[eax]
 00665FAF    mov         dword ptr fs:[eax],esp
 00665FB2    mov         edx,dword ptr [ebp-4]
 00665FB5    lea         eax,[ebp-10]
 00665FB8    call        00663964
 00665FBD    mov         edx,dword ptr [ebp-8]
 00665FC0    lea         eax,[ebp-14]
 00665FC3    call        00663964
 00665FC8    mov         eax,dword ptr [ebp+8]
 00665FCB    push        eax
 00665FCC    mov         eax,dword ptr [ebp-14]
 00665FCF    call        @LStrToPChar
 00665FD4    push        eax
 00665FD5    mov         eax,dword ptr [ebp-10]
 00665FD8    call        @LStrToPChar
 00665FDD    pop         edx
 00665FDE    call        StrComp
 00665FE3    xor         edx,edx
 00665FE5    call        00665E78
 00665FEA    pop         ecx
 00665FEB    mov         byte ptr [ebp-9],al
 00665FEE    xor         eax,eax
 00665FF0    pop         edx
 00665FF1    pop         ecx
 00665FF2    pop         ecx
 00665FF3    mov         dword ptr fs:[eax],edx
 00665FF6    push        666010
 00665FFB    lea         eax,[ebp-14]
 00665FFE    mov         edx,2
 00666003    call        @LStrArrayClr
 00666008    ret
>00666009    jmp         @HandleFinally
>0066600E    jmp         00665FFB
 00666010    mov         al,byte ptr [ebp-9]
 00666013    mov         esp,ebp
 00666015    pop         ebp
 00666016    ret
end;*}

//00666018
{*function sub_00666018(?:?; ?:?; ?:?):?;
begin
 00666018    push        ebp
 00666019    mov         ebp,esp
 0066601B    add         esp,0FFFFFFF0
 0066601E    mov         dword ptr [ebp-0C],ecx
 00666021    mov         dword ptr [ebp-8],edx
 00666024    mov         dword ptr [ebp-4],eax
 00666027    mov         byte ptr [ebp-0D],1
 0066602B    push        ebp
 0066602C    mov         eax,dword ptr [ebp-4]
 0066602F    mov         ax,word ptr [eax]
 00666032    call        00665E40
 00666037    pop         ecx
 00666038    movzx       eax,ax
 0066603B    mov         al,byte ptr [eax+6E4D18]
 00666041    mov         byte ptr [ebp-0E],al
 00666044    push        ebp
 00666045    mov         eax,dword ptr [ebp-8]
 00666048    mov         ax,word ptr [eax]
 0066604B    call        00665E40
 00666050    pop         ecx
 00666051    movzx       eax,ax
 00666054    mov         al,byte ptr [eax+6E4D18]
 0066605A    mov         byte ptr [ebp-0F],al
 0066605D    xor         eax,eax
 0066605F    mov         al,byte ptr [ebp-0F]
 00666062    xor         edx,edx
 00666064    mov         dl,byte ptr [ebp-0E]
 00666067    lea         edx,[edx+edx*4]
 0066606A    lea         edx,[edx*2+6E4DA4]
 00666071    movzx       eax,byte ptr [edx+eax]
 00666075    cmp         eax,9
>00666078    ja          006661DB
 0066607E    jmp         dword ptr [eax*4+666085]
 0066607E    dd          006660AD
 0066607E    dd          006660B7
 0066607E    dd          006660CA
 0066607E    dd          006660E0
 0066607E    dd          00666124
 0066607E    dd          0066617B
 0066607E    dd          006661A5
 0066607E    dd          006661B7
 0066607E    dd          00666151
 0066607E    dd          00666101
 006660AD    call        VarInvalidOp
>006660B2    jmp         006661E0
 006660B7    mov         dl,byte ptr [ebp-0F]
 006660BA    mov         al,byte ptr [ebp-0E]
 006660BD    call        00665DA8
 006660C2    mov         byte ptr [ebp-0D],al
>006660C5    jmp         006661E0
 006660CA    mov         ecx,dword ptr [ebp-0C]
 006660CD    mov         dl,byte ptr [ebp-0F]
 006660D0    mov         al,byte ptr [ebp-0E]
 006660D3    call        00665DD4
 006660D8    mov         byte ptr [ebp-0D],al
>006660DB    jmp         006661E0
 006660E0    push        ebp
 006660E1    mov         eax,dword ptr [ebp-8]
 006660E4    call        0066186C
 006660E9    push        eax
 006660EA    mov         eax,dword ptr [ebp-4]
 006660ED    call        0066186C
 006660F2    pop         edx
 006660F3    call        00665E78
 006660F8    pop         ecx
 006660F9    mov         byte ptr [ebp-0D],al
>006660FC    jmp         006661E0
 00666101    push        ebp
 00666102    mov         eax,dword ptr [ebp-4]
 00666105    call        00661E44
 0066610A    push        edx
 0066610B    push        eax
 0066610C    mov         eax,dword ptr [ebp-8]
 0066610F    call        00661E44
 00666114    push        edx
 00666115    push        eax
 00666116    call        00665EAC
 0066611B    pop         ecx
 0066611C    mov         byte ptr [ebp-0D],al
>0066611F    jmp         006661E0
 00666124    push        ebp
 00666125    mov         eax,dword ptr [ebp-4]
 00666128    call        0066291C
 0066612D    add         esp,0FFFFFFF8
 00666130    fstp        qword ptr [esp]
 00666133    wait
 00666134    mov         eax,dword ptr [ebp-8]
 00666137    call        0066291C
 0066613C    add         esp,0FFFFFFF8
 0066613F    fstp        qword ptr [esp]
 00666142    wait
 00666143    call        00665EF0
 00666148    pop         ecx
 00666149    mov         byte ptr [ebp-0D],al
>0066614C    jmp         006661E0
 00666151    push        ebp
 00666152    mov         eax,dword ptr [ebp-4]
 00666155    call        00662E80
 0066615A    add         esp,0FFFFFFF8
 0066615D    fstp        qword ptr [esp]
 00666160    wait
 00666161    mov         eax,dword ptr [ebp-8]
 00666164    call        00662E80
 00666169    add         esp,0FFFFFFF8
 0066616C    fstp        qword ptr [esp]
 0066616F    wait
 00666170    call        00665F24
 00666175    pop         ecx
 00666176    mov         byte ptr [ebp-0D],al
>00666179    jmp         006661E0
 0066617B    push        ebp
 0066617C    mov         eax,dword ptr [ebp-4]
 0066617F    call        006633E0
 00666184    add         esp,0FFFFFFF8
 00666187    fistp       qword ptr [esp]
 0066618A    wait
 0066618B    mov         eax,dword ptr [ebp-8]
 0066618E    call        006633E0
 00666193    add         esp,0FFFFFFF8
 00666196    fistp       qword ptr [esp]
 00666199    wait
 0066619A    call        00665F58
 0066619F    pop         ecx
 006661A0    mov         byte ptr [ebp-0D],al
>006661A3    jmp         006661E0
 006661A5    push        ebp
 006661A6    mov         edx,dword ptr [ebp-8]
 006661A9    mov         eax,dword ptr [ebp-4]
 006661AC    call        00665F90
 006661B1    pop         ecx
 006661B2    mov         byte ptr [ebp-0D],al
>006661B5    jmp         006661E0
 006661B7    push        ebp
 006661B8    mov         eax,dword ptr [ebp-8]
 006661BB    call        006623E4
 006661C0    and         eax,7F
 006661C3    push        eax
 006661C4    mov         eax,dword ptr [ebp-4]
 006661C7    call        006623E4
 006661CC    and         eax,7F
 006661CF    pop         edx
 006661D0    call        00665E78
 006661D5    pop         ecx
 006661D6    mov         byte ptr [ebp-0D],al
>006661D9    jmp         006661E0
 006661DB    call        VarInvalidOp
 006661E0    mov         al,byte ptr [ebp-0D]
 006661E3    mov         esp,ebp
 006661E5    pop         ebp
 006661E6    ret
end;*}

//006661E8
{*function sub_006661E8(?:?; ?:?; ?:?):?;
begin
 006661E8    push        ebp
 006661E9    mov         ebp,esp
 006661EB    add         esp,0FFFFFFD4
 006661EE    push        ebx
 006661EF    mov         dword ptr [ebp-0C],ecx
 006661F2    mov         dword ptr [ebp-8],edx
 006661F5    mov         dword ptr [ebp-4],eax
 006661F8    mov         byte ptr [ebp-0D],1
 006661FC    mov         eax,dword ptr [ebp-4]
 006661FF    mov         ax,word ptr [eax]
 00666202    and         ax,0FFF
 00666206    cmp         ax,10F
>0066620A    jae         0066639D
 00666210    mov         eax,dword ptr [ebp-4]
 00666213    cmp         word ptr [eax],0
>00666217    jne         0066622A
 00666219    xor         edx,edx
 0066621B    mov         al,1
 0066621D    call        00665DA8
 00666222    mov         byte ptr [ebp-0D],al
>00666225    jmp         0066661B
 0066622A    mov         eax,dword ptr [ebp-4]
 0066622D    cmp         word ptr [eax],1
>00666231    jne         00666247
 00666233    mov         ecx,dword ptr [ebp-0C]
 00666236    xor         edx,edx
 00666238    mov         al,2
 0066623A    call        00665DD4
 0066623F    mov         byte ptr [ebp-0D],al
>00666242    jmp         0066661B
 00666247    lea         edx,[ebp-1C]
 0066624A    mov         eax,dword ptr [ebp-8]
 0066624D    mov         ax,word ptr [eax]
 00666250    call        006689A0
 00666255    test        al,al
>00666257    jne         00666263
 00666259    call        VarInvalidOp
>0066625E    jmp         0066661B
 00666263    lea         eax,[ebp-10]
 00666266    push        eax
 00666267    mov         edx,dword ptr [ebp-4]
 0066626A    mov         ecx,0B
 0066626F    mov         eax,dword ptr [ebp-1C]
 00666272    mov         ebx,dword ptr [eax]
 00666274    call        dword ptr [ebx+4]
 00666277    test        al,al
>00666279    je          00666332
 0066627F    mov         eax,dword ptr [ebp-4]
 00666282    mov         ax,word ptr [eax]
 00666285    cmp         ax,word ptr [ebp-10]
>00666289    je          00666307
 0066628B    lea         eax,[ebp-2C]
 0066628E    push        eax
 0066628F    call        OLEAUT32.8
 00666294    xor         eax,eax
 00666296    push        ebp
 00666297    push        666300
 0066629C    push        dword ptr fs:[eax]
 0066629F    mov         dword ptr fs:[eax],esp
 006662A2    movzx       ecx,word ptr [ebp-10]
 006662A6    mov         edx,dword ptr [ebp-4]
 006662A9    lea         eax,[ebp-2C]
 006662AC    call        00661390
 006662B1    mov         ax,word ptr [ebp-2C]
 006662B5    and         ax,0FFF
 006662B9    cmp         ax,word ptr [ebp-10]
>006662BD    je          006662C4
 006662BF    call        VarCastError
 006662C4    mov         eax,dword ptr [ebp-0C]
 006662C7    push        eax
 006662C8    mov         ecx,dword ptr [ebp-8]
 006662CB    lea         edx,[ebp-2C]
 006662CE    mov         eax,dword ptr [ebp-1C]
 006662D1    mov         ebx,dword ptr [eax]
 006662D3    call        dword ptr [ebx+34]
 006662D6    and         eax,7F
 006662D9    mov         edx,dword ptr [ebp-0C]
 006662DC    lea         edx,[edx*2+6E4D98]
 006662E3    mov         al,byte ptr [edx+eax-1C]
 006662E7    mov         byte ptr [ebp-0D],al
 006662EA    xor         eax,eax
 006662EC    pop         edx
 006662ED    pop         ecx
 006662EE    pop         ecx
 006662EF    mov         dword ptr fs:[eax],edx
 006662F2    push        66661B
 006662F7    lea         eax,[ebp-2C]
 006662FA    call        00660244
 006662FF    ret
>00666300    jmp         @HandleFinally
>00666305    jmp         006662F7
 00666307    mov         eax,dword ptr [ebp-0C]
 0066630A    push        eax
 0066630B    mov         ecx,dword ptr [ebp-8]
 0066630E    mov         edx,dword ptr [ebp-4]
 00666311    mov         eax,dword ptr [ebp-1C]
 00666314    mov         ebx,dword ptr [eax]
 00666316    call        dword ptr [ebx+34]
 00666319    and         eax,7F
 0066631C    mov         edx,dword ptr [ebp-0C]
 0066631F    lea         edx,[edx*2+6E4D98]
 00666326    mov         al,byte ptr [edx+eax-1C]
 0066632A    mov         byte ptr [ebp-0D],al
>0066632D    jmp         0066661B
 00666332    lea         eax,[ebp-2C]
 00666335    push        eax
 00666336    call        OLEAUT32.8
 0066633B    xor         eax,eax
 0066633D    push        ebp
 0066633E    push        666396
 00666343    push        dword ptr fs:[eax]
 00666346    mov         dword ptr fs:[eax],esp
 00666349    mov         ecx,dword ptr [ebp-4]
 0066634C    movzx       ecx,word ptr [ecx]
 0066634F    mov         edx,dword ptr [ebp-8]
 00666352    lea         eax,[ebp-2C]
 00666355    call        00661390
 0066635A    mov         ax,word ptr [ebp-2C]
 0066635E    and         ax,0FFF
 00666362    mov         edx,dword ptr [ebp-4]
 00666365    cmp         ax,word ptr [edx]
>00666368    je          0066636F
 0066636A    call        VarCastError
 0066636F    lea         edx,[ebp-2C]
 00666372    mov         eax,dword ptr [ebp-4]
 00666375    mov         ecx,dword ptr [ebp-0C]
 00666378    call        00666018
 0066637D    mov         byte ptr [ebp-0D],al
 00666380    xor         eax,eax
 00666382    pop         edx
 00666383    pop         ecx
 00666384    pop         ecx
 00666385    mov         dword ptr fs:[eax],edx
 00666388    push        66661B
 0066638D    lea         eax,[ebp-2C]
 00666390    call        00660244
 00666395    ret
>00666396    jmp         @HandleFinally
>0066639B    jmp         0066638D
 0066639D    mov         eax,dword ptr [ebp-8]
 006663A0    cmp         word ptr [eax],0
>006663A4    jne         006663B7
 006663A6    mov         dl,1
 006663A8    xor         eax,eax
 006663AA    call        00665DA8
 006663AF    mov         byte ptr [ebp-0D],al
>006663B2    jmp         0066661B
 006663B7    mov         eax,dword ptr [ebp-8]
 006663BA    cmp         word ptr [eax],1
>006663BE    jne         006663D4
 006663C0    mov         ecx,dword ptr [ebp-0C]
 006663C3    mov         dl,2
 006663C5    xor         eax,eax
 006663C7    call        00665DD4
 006663CC    mov         byte ptr [ebp-0D],al
>006663CF    jmp         0066661B
 006663D4    lea         edx,[ebp-18]
 006663D7    mov         eax,dword ptr [ebp-4]
 006663DA    mov         ax,word ptr [eax]
 006663DD    call        006689A0
 006663E2    test        al,al
>006663E4    jne         006663F0
 006663E6    call        VarInvalidOp
>006663EB    jmp         0066661B
 006663F0    lea         eax,[ebp-12]
 006663F3    push        eax
 006663F4    mov         edx,dword ptr [ebp-8]
 006663F7    mov         ecx,0B
 006663FC    mov         eax,dword ptr [ebp-18]
 006663FF    mov         ebx,dword ptr [eax]
 00666401    call        dword ptr [ebx+8]
 00666404    test        al,al
>00666406    je          006664BB
 0066640C    mov         eax,dword ptr [ebp-8]
 0066640F    mov         ax,word ptr [eax]
 00666412    cmp         ax,word ptr [ebp-12]
>00666416    je          00666490
 00666418    lea         eax,[ebp-2C]
 0066641B    push        eax
 0066641C    call        OLEAUT32.8
 00666421    xor         eax,eax
 00666423    push        ebp
 00666424    push        666489
 00666429    push        dword ptr fs:[eax]
 0066642C    mov         dword ptr fs:[eax],esp
 0066642F    movzx       ecx,word ptr [ebp-12]
 00666433    mov         edx,dword ptr [ebp-8]
 00666436    lea         eax,[ebp-2C]
 00666439    call        00661390
 0066643E    mov         ax,word ptr [ebp-2C]
 00666442    cmp         ax,word ptr [ebp-12]
>00666446    je          0066644D
 00666448    call        VarCastError
 0066644D    mov         eax,dword ptr [ebp-0C]
 00666450    push        eax
 00666451    lea         ecx,[ebp-2C]
 00666454    mov         edx,dword ptr [ebp-4]
 00666457    mov         eax,dword ptr [ebp-18]
 0066645A    mov         ebx,dword ptr [eax]
 0066645C    call        dword ptr [ebx+34]
 0066645F    and         eax,7F
 00666462    mov         edx,dword ptr [ebp-0C]
 00666465    lea         edx,[edx*2+6E4D98]
 0066646C    mov         al,byte ptr [edx+eax-1C]
 00666470    mov         byte ptr [ebp-0D],al
 00666473    xor         eax,eax
 00666475    pop         edx
 00666476    pop         ecx
 00666477    pop         ecx
 00666478    mov         dword ptr fs:[eax],edx
 0066647B    push        66661B
 00666480    lea         eax,[ebp-2C]
 00666483    call        00660244
 00666488    ret
>00666489    jmp         @HandleFinally
>0066648E    jmp         00666480
 00666490    mov         eax,dword ptr [ebp-0C]
 00666493    push        eax
 00666494    mov         ecx,dword ptr [ebp-8]
 00666497    mov         edx,dword ptr [ebp-4]
 0066649A    mov         eax,dword ptr [ebp-18]
 0066649D    mov         ebx,dword ptr [eax]
 0066649F    call        dword ptr [ebx+34]
 006664A2    and         eax,7F
 006664A5    mov         edx,dword ptr [ebp-0C]
 006664A8    lea         edx,[edx*2+6E4D98]
 006664AF    mov         al,byte ptr [edx+eax-1C]
 006664B3    mov         byte ptr [ebp-0D],al
>006664B6    jmp         0066661B
 006664BB    mov         eax,dword ptr [ebp-8]
 006664BE    mov         ax,word ptr [eax]
 006664C1    and         ax,0FFF
 006664C5    cmp         ax,10F
>006664C9    jae         00666532
 006664CB    lea         eax,[ebp-2C]
 006664CE    push        eax
 006664CF    call        OLEAUT32.8
 006664D4    xor         eax,eax
 006664D6    push        ebp
 006664D7    push        66652B
 006664DC    push        dword ptr fs:[eax]
 006664DF    mov         dword ptr fs:[eax],esp
 006664E2    mov         ecx,dword ptr [ebp-8]
 006664E5    movzx       ecx,word ptr [ecx]
 006664E8    mov         edx,dword ptr [ebp-4]
 006664EB    lea         eax,[ebp-2C]
 006664EE    call        00661390
 006664F3    mov         eax,dword ptr [ebp-8]
 006664F6    mov         ax,word ptr [eax]
 006664F9    cmp         ax,word ptr [ebp-2C]
>006664FD    je          00666504
 006664FF    call        VarCastError
 00666504    mov         edx,dword ptr [ebp-8]
 00666507    lea         eax,[ebp-2C]
 0066650A    mov         ecx,dword ptr [ebp-0C]
 0066650D    call        00666018
 00666512    mov         byte ptr [ebp-0D],al
 00666515    xor         eax,eax
 00666517    pop         edx
 00666518    pop         ecx
 00666519    pop         ecx
 0066651A    mov         dword ptr fs:[eax],edx
 0066651D    push        66661B
 00666522    lea         eax,[ebp-2C]
 00666525    call        00660244
 0066652A    ret
>0066652B    jmp         @HandleFinally
>00666530    jmp         00666522
 00666532    lea         edx,[ebp-1C]
 00666535    mov         eax,dword ptr [ebp-8]
 00666538    mov         ax,word ptr [eax]
 0066653B    call        006689A0
 00666540    test        al,al
>00666542    jne         0066654E
 00666544    call        VarInvalidOp
>00666549    jmp         0066661B
 0066654E    lea         eax,[ebp-10]
 00666551    push        eax
 00666552    mov         edx,dword ptr [ebp-4]
 00666555    mov         ecx,0B
 0066655A    mov         eax,dword ptr [ebp-1C]
 0066655D    mov         ebx,dword ptr [eax]
 0066655F    call        dword ptr [ebx+4]
 00666562    test        al,al
>00666564    je          00666616
 0066656A    mov         eax,dword ptr [ebp-4]
 0066656D    mov         ax,word ptr [eax]
 00666570    cmp         ax,word ptr [ebp-10]
>00666574    je          006665EE
 00666576    lea         eax,[ebp-2C]
 00666579    push        eax
 0066657A    call        OLEAUT32.8
 0066657F    xor         eax,eax
 00666581    push        ebp
 00666582    push        6665E7
 00666587    push        dword ptr fs:[eax]
 0066658A    mov         dword ptr fs:[eax],esp
 0066658D    movzx       ecx,word ptr [ebp-10]
 00666591    mov         edx,dword ptr [ebp-4]
 00666594    lea         eax,[ebp-2C]
 00666597    call        00661390
 0066659C    mov         ax,word ptr [ebp-2C]
 006665A0    cmp         ax,word ptr [ebp-10]
>006665A4    je          006665AB
 006665A6    call        VarCastError
 006665AB    mov         eax,dword ptr [ebp-0C]
 006665AE    push        eax
 006665AF    mov         ecx,dword ptr [ebp-8]
 006665B2    lea         edx,[ebp-2C]
 006665B5    mov         eax,dword ptr [ebp-1C]
 006665B8    mov         ebx,dword ptr [eax]
 006665BA    call        dword ptr [ebx+34]
 006665BD    and         eax,7F
 006665C0    mov         edx,dword ptr [ebp-0C]
 006665C3    lea         edx,[edx*2+6E4D98]
 006665CA    mov         al,byte ptr [edx+eax-1C]
 006665CE    mov         byte ptr [ebp-0D],al
 006665D1    xor         eax,eax
 006665D3    pop         edx
 006665D4    pop         ecx
 006665D5    pop         ecx
 006665D6    mov         dword ptr fs:[eax],edx
 006665D9    push        66661B
 006665DE    lea         eax,[ebp-2C]
 006665E1    call        00660244
 006665E6    ret
>006665E7    jmp         @HandleFinally
>006665EC    jmp         006665DE
 006665EE    mov         eax,dword ptr [ebp-0C]
 006665F1    push        eax
 006665F2    mov         ecx,dword ptr [ebp-8]
 006665F5    mov         edx,dword ptr [ebp-4]
 006665F8    mov         eax,dword ptr [ebp-1C]
 006665FB    mov         ebx,dword ptr [eax]
 006665FD    call        dword ptr [ebx+34]
 00666600    and         eax,7F
 00666603    mov         edx,dword ptr [ebp-0C]
 00666606    lea         edx,[edx*2+6E4D98]
 0066660D    mov         al,byte ptr [edx+eax-1C]
 00666611    mov         byte ptr [ebp-0D],al
>00666614    jmp         0066661B
 00666616    call        VarInvalidOp
 0066661B    mov         al,byte ptr [ebp-0D]
 0066661E    pop         ebx
 0066661F    mov         esp,ebp
 00666621    pop         ebp
 00666622    ret
end;*}

//00666624
{*function sub_00666624(?:?; ?:?; ?:?):?;
begin
 00666624    push        ebp
 00666625    mov         ebp,esp
 00666627    add         esp,0FFFFFFF0
 0066662A    mov         dword ptr [ebp-0C],ecx
 0066662D    mov         dword ptr [ebp-8],edx
 00666630    mov         dword ptr [ebp-4],eax
 00666633    mov         eax,dword ptr [ebp-4]
 00666636    cmp         word ptr [eax],101
>0066663B    je          00666647
 0066663D    mov         eax,dword ptr [ebp-8]
 00666640    cmp         word ptr [eax],101
>00666645    jne         0066665D
 00666647    mov         edx,dword ptr [ebp-8]
 0066664A    mov         eax,dword ptr [ebp-4]
 0066664D    mov         ecx,dword ptr [ebp-0C]
 00666650    call        00665CCC
 00666655    mov         byte ptr [ebp-0D],al
>00666658    jmp         0066670D
 0066665D    mov         eax,dword ptr [ebp-4]
 00666660    cmp         word ptr [eax],10F
>00666665    jae         00666687
 00666667    mov         eax,dword ptr [ebp-8]
 0066666A    cmp         word ptr [eax],10F
>0066666F    jae         00666687
 00666671    mov         edx,dword ptr [ebp-8]
 00666674    mov         eax,dword ptr [ebp-4]
 00666677    mov         ecx,dword ptr [ebp-0C]
 0066667A    call        00666018
 0066667F    mov         byte ptr [ebp-0D],al
>00666682    jmp         0066670D
 00666687    mov         eax,dword ptr [ebp-4]
 0066668A    cmp         word ptr [eax],400C
>0066668F    jne         006666A7
 00666691    mov         edx,dword ptr [ebp-8]
 00666694    mov         eax,dword ptr [ebp-4]
 00666697    mov         eax,dword ptr [eax+8]
 0066669A    mov         ecx,dword ptr [ebp-0C]
 0066669D    call        00666624
 006666A2    mov         byte ptr [ebp-0D],al
>006666A5    jmp         0066670D
 006666A7    mov         eax,dword ptr [ebp-8]
 006666AA    cmp         word ptr [eax],400C
>006666AF    jne         006666C9
 006666B1    mov         eax,dword ptr [ebp-8]
 006666B4    mov         eax,dword ptr [eax+8]
 006666B7    mov         edx,eax
 006666B9    mov         eax,dword ptr [ebp-4]
 006666BC    mov         ecx,dword ptr [ebp-0C]
 006666BF    call        00666624
 006666C4    mov         byte ptr [ebp-0D],al
>006666C7    jmp         0066670D
 006666C9    mov         eax,dword ptr [ebp-4]
 006666CC    mov         ax,word ptr [eax]
 006666CF    and         ax,0FFF
 006666D3    cmp         ax,10F
>006666D7    jae         006666FC
 006666D9    mov         eax,dword ptr [ebp-8]
 006666DC    mov         ax,word ptr [eax]
 006666DF    and         ax,0FFF
 006666E3    cmp         ax,10F
>006666E7    jae         006666FC
 006666E9    mov         edx,dword ptr [ebp-8]
 006666EC    mov         eax,dword ptr [ebp-4]
 006666EF    mov         ecx,dword ptr [ebp-0C]
 006666F2    call        00666018
 006666F7    mov         byte ptr [ebp-0D],al
>006666FA    jmp         0066670D
 006666FC    mov         edx,dword ptr [ebp-8]
 006666FF    mov         eax,dword ptr [ebp-4]
 00666702    mov         ecx,dword ptr [ebp-0C]
 00666705    call        006661E8
 0066670A    mov         byte ptr [ebp-0D],al
 0066670D    mov         al,byte ptr [ebp-0D]
 00666710    mov         esp,ebp
 00666712    pop         ebp
 00666713    ret
end;*}

//0066671C
{*procedure sub_0066671C(?:?);
begin
 0066671C    push        ebp
 0066671D    mov         ebp,esp
 0066671F    add         esp,0FFFFFFF8
 00666722    push        ebx
 00666723    push        esi
 00666724    push        edi
 00666725    mov         dword ptr [ebp-4],eax
 00666728    xor         eax,eax
 0066672A    push        ebp
 0066672B    push        666752
 00666730    push        dword ptr fs:[eax]
 00666733    mov         dword ptr fs:[eax],esp
 00666736    mov         eax,dword ptr [ebp-4]
 00666739    call        0066291C
 0066673E    fchs
 00666740    mov         eax,dword ptr [ebp-4]
 00666743    call        0066D598
 00666748    xor         eax,eax
 0066674A    pop         edx
 0066674B    pop         ecx
 0066674C    pop         ecx
 0066674D    mov         dword ptr fs:[eax],edx
>00666750    jmp         00666778
>00666752    jmp         @HandleOnException
 00666757    dd          1
 0066675B    dd          00656774;Exception
 0066675F    dd          00666763
 00666763    mov         dword ptr [ebp-8],eax
 00666766    mov         eax,dword ptr [ebp-8]
 00666769    call        0065F27C
 0066676E    call        0065FB84
 00666773    call        @DoneExcept
 00666778    pop         edi
 00666779    pop         esi
 0066677A    pop         ebx
 0066677B    pop         ecx
 0066677C    pop         ecx
 0066677D    pop         ebp
 0066677E    ret
end;*}

//00666780
{*procedure sub_00666780(?:?);
begin
 00666780    push        ebp
 00666781    mov         ebp,esp
 00666783    push        ecx
 00666784    mov         dword ptr [ebp-4],eax
 00666787    mov         eax,dword ptr [ebp-4]
 0066678A    push        eax
 0066678B    mov         eax,dword ptr [ebp-4]
 0066678E    push        eax
 0066678F    call        OLEAUT32.173
 00666794    call        0065FB84
 00666799    pop         ecx
 0066679A    pop         ebp
 0066679B    ret
end;*}

//0066679C
{*procedure sub_0066679C(?:?; ?:?);
begin
 0066679C    push        ebp
 0066679D    mov         ebp,esp
 0066679F    xor         ecx,ecx
 006667A1    push        ecx
 006667A2    push        ecx
 006667A3    push        ecx
 006667A4    push        ecx
 006667A5    push        ecx
 006667A6    push        ecx
 006667A7    mov         dword ptr [ebp-8],edx
 006667AA    mov         dword ptr [ebp-4],eax
 006667AD    mov         eax,dword ptr [ebp-4]
 006667B0    mov         edx,eax
 006667B2    lea         eax,[ebp-18]
 006667B5    call        @VarCopy
 006667BA    lea         eax,[ebp-18]
 006667BD    call        0066D5E8
 006667C2    lea         edx,[ebp-18]
 006667C5    mov         eax,dword ptr [ebp-8]
 006667C8    call        @VarCopy
 006667CD    mov         esp,ebp
 006667CF    pop         ebp
 006667D0    ret
end;*}

//006667D4
{*procedure sub_006667D4(?:?; ?:?);
begin
 006667D4    push        ebp
 006667D5    mov         ebp,esp
 006667D7    add         esp,0FFFFFFF8
 006667DA    mov         dword ptr [ebp-8],edx
 006667DD    mov         byte ptr [ebp-1],al
 006667E0    xor         eax,eax
 006667E2    mov         al,byte ptr [ebp-1]
 006667E5    neg         ax
 006667E8    mov         edx,dword ptr [ebp-8]
 006667EB    mov         word ptr [edx+8],ax
 006667EF    mov         eax,dword ptr [ebp-8]
 006667F2    mov         word ptr [eax],2
 006667F7    pop         ecx
 006667F8    pop         ecx
 006667F9    pop         ebp
 006667FA    ret
end;*}

//006667FC
{*procedure sub_006667FC(?:?; ?:?);
begin
 006667FC    push        ebp
 006667FD    mov         ebp,esp
 006667FF    add         esp,0FFFFFFF8
 00666802    mov         dword ptr [ebp-8],edx
 00666805    mov         word ptr [ebp-2],ax
 00666809    movzx       eax,word ptr [ebp-2]
 0066680D    neg         eax
 0066680F    mov         edx,dword ptr [ebp-8]
 00666812    mov         dword ptr [edx+8],eax
 00666815    mov         eax,dword ptr [ebp-8]
 00666818    mov         word ptr [eax],3
 0066681D    pop         ecx
 0066681E    pop         ecx
 0066681F    pop         ebp
 00666820    ret
end;*}

//00666824
{*procedure sub_00666824(?:?; ?:?);
begin
 00666824    push        ebp
 00666825    mov         ebp,esp
 00666827    add         esp,0FFFFFFF8
 0066682A    mov         dword ptr [ebp-8],edx
 0066682D    mov         dword ptr [ebp-4],eax
 00666830    test        byte ptr [ebp-1],80
>00666834    je          00666855
 00666836    mov         eax,dword ptr [ebp-4]
 00666839    xor         edx,edx
 0066683B    neg         eax
 0066683D    adc         edx,0
 00666840    neg         edx
 00666842    mov         ecx,dword ptr [ebp-8]
 00666845    mov         dword ptr [ecx+8],eax
 00666848    mov         dword ptr [ecx+0C],edx
 0066684B    mov         eax,dword ptr [ebp-8]
 0066684E    mov         word ptr [eax],14
>00666853    jmp         00666868
 00666855    mov         eax,dword ptr [ebp-4]
 00666858    neg         eax
 0066685A    mov         edx,dword ptr [ebp-8]
 0066685D    mov         dword ptr [edx+8],eax
 00666860    mov         eax,dword ptr [ebp-8]
 00666863    mov         word ptr [eax],3
 00666868    pop         ecx
 00666869    pop         ecx
 0066686A    pop         ebp
 0066686B    ret
end;*}

//0066686C
{*procedure sub_0066686C(?:?);
begin
 0066686C    push        ebp
 0066686D    mov         ebp,esp
 0066686F    push        ecx
 00666870    mov         dword ptr [ebp-4],eax
 00666873    mov         eax,dword ptr [ebp-4]
 00666876    call        dword ptr ds:[6ED154]
 0066687C    mov         eax,dword ptr [ebp-4]
 0066687F    call        006668C4
 00666884    pop         ecx
 00666885    pop         ebp
 00666886    ret
end;*}

//00666888
{*function sub_00666888(?:?):?;
begin
 00666888    push        ebp
 00666889    mov         ebp,esp
 0066688B    add         esp,0FFFFFFF4
 0066688E    push        ebx
 0066688F    mov         dword ptr [ebp-4],eax
 00666892    lea         edx,[ebp-0C]
 00666895    mov         eax,dword ptr [ebp-4]
 00666898    mov         ax,word ptr [eax]
 0066689B    call        006689A0
 006668A0    mov         byte ptr [ebp-5],al
 006668A3    cmp         byte ptr [ebp-5],0
>006668A7    je          006668B9
 006668A9    mov         edx,dword ptr [ebp-4]
 006668AC    mov         ecx,0C
 006668B1    mov         eax,dword ptr [ebp-0C]
 006668B4    mov         ebx,dword ptr [eax]
 006668B6    call        dword ptr [ebx+30]
 006668B9    mov         al,byte ptr [ebp-5]
 006668BC    pop         ebx
 006668BD    mov         esp,ebp
 006668BF    pop         ebp
 006668C0    ret
end;*}

//006668C4
{*procedure sub_006668C4(?:?);
begin
 006668C4    push        ebp
 006668C5    mov         ebp,esp
 006668C7    push        ecx
 006668C8    mov         dword ptr [ebp-4],eax
 006668CB    mov         eax,dword ptr [ebp-4]
 006668CE    movzx       eax,word ptr [eax]
 006668D1    cmp         eax,14
>006668D4    ja          00666A26
 006668DA    jmp         dword ptr [eax*4+6668E1]
 006668DA    dd          00666935
 006668DA    dd          00666C08
 006668DA    dd          00666942
 006668DA    dd          0066694F
 006668DA    dd          0066695B
 006668DA    dd          0066696D
 006668DA    dd          0066697F
 006668DA    dd          00666991
 006668DA    dd          006669A3
 006668DA    dd          00666A1B
 006668DA    dd          00666A26
 006668DA    dd          00666C08
 006668DA    dd          00666A0A
 006668DA    dd          00666A1B
 006668DA    dd          00666A26
 006668DA    dd          00666A26
 006668DA    dd          006669AE
 006668DA    dd          006669BA
 006668DA    dd          006669CB
 006668DA    dd          006669DD
 006668DA    dd          006669EE
 00666935    mov         edx,dword ptr [ebp-4]
 00666938    xor         eax,eax
 0066693A    call        006667D4
 0066693F    pop         ecx
 00666940    pop         ebp
 00666941    ret
 00666942    mov         eax,dword ptr [ebp-4]
 00666945    neg         word ptr [eax+8]
 00666949    mov         eax,dword ptr [ebp-4]
 0066694C    pop         ecx
 0066694D    pop         ebp
 0066694E    ret
 0066694F    mov         eax,dword ptr [ebp-4]
 00666952    neg         dword ptr [eax+8]
 00666955    mov         eax,dword ptr [ebp-4]
 00666958    pop         ecx
 00666959    pop         ebp
 0066695A    ret
 0066695B    mov         eax,dword ptr [ebp-4]
 0066695E    fld         dword ptr [eax+8]
 00666961    fchs
 00666963    mov         eax,dword ptr [ebp-4]
 00666966    fstp        dword ptr [eax+8]
 00666969    wait
 0066696A    pop         ecx
 0066696B    pop         ebp
 0066696C    ret
 0066696D    mov         eax,dword ptr [ebp-4]
 00666970    fld         qword ptr [eax+8]
 00666973    fchs
 00666975    mov         eax,dword ptr [ebp-4]
 00666978    fstp        qword ptr [eax+8]
 0066697B    wait
 0066697C    pop         ecx
 0066697D    pop         ebp
 0066697E    ret
 0066697F    mov         eax,dword ptr [ebp-4]
 00666982    fild        qword ptr [eax+8]
 00666985    fchs
 00666987    mov         eax,dword ptr [ebp-4]
 0066698A    fistp       qword ptr [eax+8]
 0066698D    wait
 0066698E    pop         ecx
 0066698F    pop         ebp
 00666990    ret
 00666991    mov         eax,dword ptr [ebp-4]
 00666994    fld         qword ptr [eax+8]
 00666997    fchs
 00666999    mov         eax,dword ptr [ebp-4]
 0066699C    fstp        qword ptr [eax+8]
 0066699F    wait
 006669A0    pop         ecx
 006669A1    pop         ebp
 006669A2    ret
 006669A3    mov         eax,dword ptr [ebp-4]
 006669A6    call        0066671C
 006669AB    pop         ecx
 006669AC    pop         ebp
 006669AD    ret
 006669AE    mov         eax,dword ptr [ebp-4]
 006669B1    neg         byte ptr [eax+8]
 006669B4    mov         eax,dword ptr [ebp-4]
 006669B7    pop         ecx
 006669B8    pop         ebp
 006669B9    ret
 006669BA    mov         edx,dword ptr [ebp-4]
 006669BD    mov         eax,dword ptr [ebp-4]
 006669C0    mov         al,byte ptr [eax+8]
 006669C3    call        006667D4
 006669C8    pop         ecx
 006669C9    pop         ebp
 006669CA    ret
 006669CB    mov         edx,dword ptr [ebp-4]
 006669CE    mov         eax,dword ptr [ebp-4]
 006669D1    mov         ax,word ptr [eax+8]
 006669D5    call        006667FC
 006669DA    pop         ecx
 006669DB    pop         ebp
 006669DC    ret
 006669DD    mov         edx,dword ptr [ebp-4]
 006669E0    mov         eax,dword ptr [ebp-4]
 006669E3    mov         eax,dword ptr [eax+8]
 006669E6    call        00666824
 006669EB    pop         ecx
 006669EC    pop         ebp
 006669ED    ret
 006669EE    mov         eax,dword ptr [ebp-4]
 006669F1    mov         edx,dword ptr [eax+0C]
 006669F4    mov         eax,dword ptr [eax+8]
 006669F7    neg         eax
 006669F9    adc         edx,0
 006669FC    neg         edx
 006669FE    mov         ecx,dword ptr [ebp-4]
 00666A01    mov         dword ptr [ecx+8],eax
 00666A04    mov         dword ptr [ecx+0C],edx
 00666A07    pop         ecx
 00666A08    pop         ebp
 00666A09    ret
 00666A0A    mov         edx,dword ptr [ebp-4]
 00666A0D    mov         eax,dword ptr [ebp-4]
 00666A10    mov         eax,dword ptr [eax+8]
 00666A13    call        0066679C
 00666A18    pop         ecx
 00666A19    pop         ebp
 00666A1A    ret
 00666A1B    mov         eax,dword ptr [ebp-4]
 00666A1E    call        00666780
 00666A23    pop         ecx
 00666A24    pop         ebp
 00666A25    ret
 00666A26    mov         eax,dword ptr [ebp-4]
 00666A29    mov         ax,word ptr [eax]
 00666A2C    sub         ax,100
>00666A30    je          00666A39
 00666A32    dec         ax
>00666A35    je          00666A46
>00666A37    jmp         00666A53
 00666A39    mov         eax,dword ptr [ebp-4]
 00666A3C    call        0066671C
>00666A41    jmp         00666C08
 00666A46    mov         eax,dword ptr [ebp-4]
 00666A49    call        0066686C
>00666A4E    jmp         00666C08
 00666A53    mov         eax,dword ptr [ebp-4]
 00666A56    test        byte ptr [eax+1],40
>00666A5A    je          00666BF4
 00666A60    mov         eax,dword ptr [ebp-4]
 00666A63    movzx       eax,word ptr [eax]
 00666A66    and         eax,0FFFFBFFF
 00666A6B    cmp         eax,14
>00666A6E    ja          00666BEA
 00666A74    jmp         dword ptr [eax*4+666A7B]
 00666A74    dd          00666BEA
 00666A74    dd          00666BEA
 00666A74    dd          00666ACF
 00666A74    dd          00666AE9
 00666A74    dd          00666B02
 00666A74    dd          00666B19
 00666A74    dd          00666B30
 00666A74    dd          00666B47
 00666A74    dd          00666B5E
 00666A74    dd          00666BEA
 00666A74    dd          00666BEA
 00666A74    dd          00666C08
 00666A74    dd          00666BDA
 00666A74    dd          00666BEA
 00666A74    dd          00666BEA
 00666A74    dd          00666BEA
 00666A74    dd          00666B6B
 00666A74    dd          00666B85
 00666A74    dd          00666B97
 00666A74    dd          00666BAA
 00666A74    dd          00666BBC
 00666ACF    mov         eax,dword ptr [ebp-4]
 00666AD2    mov         edx,dword ptr [ebp-4]
 00666AD5    mov         edx,dword ptr [edx+8]
 00666AD8    movsx       edx,word ptr [edx]
 00666ADB    neg         edx
 00666ADD    mov         cl,0FC
 00666ADF    call        0066D574
>00666AE4    jmp         00666C08
 00666AE9    mov         eax,dword ptr [ebp-4]
 00666AEC    mov         edx,dword ptr [ebp-4]
 00666AEF    mov         edx,dword ptr [edx+8]
 00666AF2    mov         edx,dword ptr [edx]
 00666AF4    neg         edx
 00666AF6    mov         cl,0FC
 00666AF8    call        0066D574
>00666AFD    jmp         00666C08
 00666B02    mov         eax,dword ptr [ebp-4]
 00666B05    mov         eax,dword ptr [eax+8]
 00666B08    fld         dword ptr [eax]
 00666B0A    fchs
 00666B0C    mov         eax,dword ptr [ebp-4]
 00666B0F    call        0066D598
>00666B14    jmp         00666C08
 00666B19    mov         eax,dword ptr [ebp-4]
 00666B1C    mov         eax,dword ptr [eax+8]
 00666B1F    fld         qword ptr [eax]
 00666B21    fchs
 00666B23    mov         eax,dword ptr [ebp-4]
 00666B26    call        0066D598
>00666B2B    jmp         00666C08
 00666B30    mov         eax,dword ptr [ebp-4]
 00666B33    mov         eax,dword ptr [eax+8]
 00666B36    fild        qword ptr [eax]
 00666B38    fchs
 00666B3A    mov         eax,dword ptr [ebp-4]
 00666B3D    call        0066D5A8
>00666B42    jmp         00666C08
 00666B47    mov         eax,dword ptr [ebp-4]
 00666B4A    mov         eax,dword ptr [eax+8]
 00666B4D    fld         qword ptr [eax]
 00666B4F    fchs
 00666B51    mov         eax,dword ptr [ebp-4]
 00666B54    call        0066D598
>00666B59    jmp         00666C08
 00666B5E    mov         eax,dword ptr [ebp-4]
 00666B61    call        0066671C
>00666B66    jmp         00666C08
 00666B6B    mov         eax,dword ptr [ebp-4]
 00666B6E    mov         edx,dword ptr [ebp-4]
 00666B71    mov         edx,dword ptr [edx+8]
 00666B74    movsx       edx,byte ptr [edx]
 00666B77    neg         edx
 00666B79    mov         cl,0FC
 00666B7B    call        0066D574
>00666B80    jmp         00666C08
 00666B85    mov         edx,dword ptr [ebp-4]
 00666B88    mov         eax,dword ptr [ebp-4]
 00666B8B    mov         eax,dword ptr [eax+8]
 00666B8E    mov         al,byte ptr [eax]
 00666B90    call        006667D4
>00666B95    jmp         00666C08
 00666B97    mov         edx,dword ptr [ebp-4]
 00666B9A    mov         eax,dword ptr [ebp-4]
 00666B9D    mov         eax,dword ptr [eax+8]
 00666BA0    mov         ax,word ptr [eax]
 00666BA3    call        006667FC
>00666BA8    jmp         00666C08
 00666BAA    mov         edx,dword ptr [ebp-4]
 00666BAD    mov         eax,dword ptr [ebp-4]
 00666BB0    mov         eax,dword ptr [eax+8]
 00666BB3    mov         eax,dword ptr [eax]
 00666BB5    call        00666824
>00666BBA    jmp         00666C08
 00666BBC    mov         eax,dword ptr [ebp-4]
 00666BBF    mov         eax,dword ptr [eax+8]
 00666BC2    mov         edx,dword ptr [eax+4]
 00666BC5    mov         eax,dword ptr [eax]
 00666BC7    neg         eax
 00666BC9    adc         edx,0
 00666BCC    neg         edx
 00666BCE    push        edx
 00666BCF    push        eax
 00666BD0    mov         eax,dword ptr [ebp-4]
 00666BD3    call        @VarFromInt64
>00666BD8    jmp         00666C08
 00666BDA    mov         edx,dword ptr [ebp-4]
 00666BDD    mov         eax,dword ptr [ebp-4]
 00666BE0    mov         eax,dword ptr [eax+8]
 00666BE3    call        0066679C
>00666BE8    jmp         00666C08
 00666BEA    mov         eax,dword ptr [ebp-4]
 00666BED    call        00666780
>00666BF2    jmp         00666C08
 00666BF4    mov         eax,dword ptr [ebp-4]
 00666BF7    call        00666888
 00666BFC    test        al,al
>00666BFE    jne         00666C08
 00666C00    mov         eax,dword ptr [ebp-4]
 00666C03    call        00666780
 00666C08    pop         ecx
 00666C09    pop         ebp
 00666C0A    ret
end;*}

//00666C0C
{*procedure sub_00666C0C(?:?);
begin
 00666C0C    push        ebp
 00666C0D    mov         ebp,esp
 00666C0F    add         esp,0FFFFFFF8
 00666C12    push        ebx
 00666C13    push        esi
 00666C14    push        edi
 00666C15    mov         dword ptr [ebp-4],eax
 00666C18    xor         eax,eax
 00666C1A    push        ebp
 00666C1B    push        666C46
 00666C20    push        dword ptr fs:[eax]
 00666C23    mov         dword ptr fs:[eax],esp
 00666C26    mov         eax,dword ptr [ebp-4]
 00666C29    call        0066186C
 00666C2E    mov         edx,eax
 00666C30    not         edx
 00666C32    mov         eax,dword ptr [ebp-4]
 00666C35    mov         cl,0FC
 00666C37    call        0066D574
 00666C3C    xor         eax,eax
 00666C3E    pop         edx
 00666C3F    pop         ecx
 00666C40    pop         ecx
 00666C41    mov         dword ptr fs:[eax],edx
>00666C44    jmp         00666C6C
>00666C46    jmp         @HandleOnException
 00666C4B    dd          1
 00666C4F    dd          00656774;Exception
 00666C53    dd          00666C57
 00666C57    mov         dword ptr [ebp-8],eax
 00666C5A    mov         eax,dword ptr [ebp-8]
 00666C5D    call        0065F27C
 00666C62    call        0065FB84
 00666C67    call        @DoneExcept
 00666C6C    pop         edi
 00666C6D    pop         esi
 00666C6E    pop         ebx
 00666C6F    pop         ecx
 00666C70    pop         ecx
 00666C71    pop         ebp
 00666C72    ret
end;*}

//00666C74
{*procedure sub_00666C74(?:?);
begin
 00666C74    push        ebp
 00666C75    mov         ebp,esp
 00666C77    push        ecx
 00666C78    mov         dword ptr [ebp-4],eax
 00666C7B    mov         eax,dword ptr [ebp-4]
 00666C7E    push        eax
 00666C7F    mov         eax,dword ptr [ebp-4]
 00666C82    push        eax
 00666C83    call        OLEAUT32.174
 00666C88    call        0065FB84
 00666C8D    pop         ecx
 00666C8E    pop         ebp
 00666C8F    ret
end;*}

//00666C90
{*procedure sub_00666C90(?:?; ?:?);
begin
 00666C90    push        ebp
 00666C91    mov         ebp,esp
 00666C93    xor         ecx,ecx
 00666C95    push        ecx
 00666C96    push        ecx
 00666C97    push        ecx
 00666C98    push        ecx
 00666C99    push        ecx
 00666C9A    push        ecx
 00666C9B    mov         dword ptr [ebp-8],edx
 00666C9E    mov         dword ptr [ebp-4],eax
 00666CA1    mov         eax,dword ptr [ebp-4]
 00666CA4    mov         edx,eax
 00666CA6    lea         eax,[ebp-18]
 00666CA9    call        @VarCopy
 00666CAE    lea         eax,[ebp-18]
 00666CB1    call        0066D5F0
 00666CB6    lea         edx,[ebp-18]
 00666CB9    mov         eax,dword ptr [ebp-8]
 00666CBC    call        @VarCopy
 00666CC1    mov         esp,ebp
 00666CC3    pop         ebp
 00666CC4    ret
end;*}

//00666CC8
{*procedure sub_00666CC8(?:?);
begin
 00666CC8    push        ebp
 00666CC9    mov         ebp,esp
 00666CCB    push        ecx
 00666CCC    mov         dword ptr [ebp-4],eax
 00666CCF    mov         eax,dword ptr [ebp-4]
 00666CD2    call        dword ptr ds:[6ED154]
 00666CD8    mov         eax,dword ptr [ebp-4]
 00666CDB    call        00666D20
 00666CE0    pop         ecx
 00666CE1    pop         ebp
 00666CE2    ret
end;*}

//00666CE4
{*function sub_00666CE4(?:?):?;
begin
 00666CE4    push        ebp
 00666CE5    mov         ebp,esp
 00666CE7    add         esp,0FFFFFFF4
 00666CEA    push        ebx
 00666CEB    mov         dword ptr [ebp-4],eax
 00666CEE    lea         edx,[ebp-0C]
 00666CF1    mov         eax,dword ptr [ebp-4]
 00666CF4    mov         ax,word ptr [eax]
 00666CF7    call        006689A0
 00666CFC    mov         byte ptr [ebp-5],al
 00666CFF    cmp         byte ptr [ebp-5],0
>00666D03    je          00666D15
 00666D05    mov         edx,dword ptr [ebp-4]
 00666D08    mov         ecx,0D
 00666D0D    mov         eax,dword ptr [ebp-0C]
 00666D10    mov         ebx,dword ptr [eax]
 00666D12    call        dword ptr [ebx+30]
 00666D15    mov         al,byte ptr [ebp-5]
 00666D18    pop         ebx
 00666D19    mov         esp,ebp
 00666D1B    pop         ebp
 00666D1C    ret
end;*}

//00666D20
{*procedure sub_00666D20(?:?);
begin
 00666D20    push        ebp
 00666D21    mov         ebp,esp
 00666D23    push        ecx
 00666D24    mov         dword ptr [ebp-4],eax
 00666D27    mov         eax,dword ptr [ebp-4]
 00666D2A    movzx       eax,word ptr [eax]
 00666D2D    cmp         eax,14
>00666D30    ja          00666E4A
 00666D36    jmp         dword ptr [eax*4+666D3D]
 00666D36    dd          00666D91
 00666D36    dd          00667007
 00666D36    dd          00666DA3
 00666D36    dd          00666DB0
 00666D36    dd          00666DBC
 00666D36    dd          00666DBC
 00666D36    dd          00666DBC
 00666D36    dd          00666DBC
 00666D36    dd          00666DBC
 00666D36    dd          00666E3F
 00666D36    dd          00666E4A
 00666D36    dd          00666DC7
 00666D36    dd          00666E2E
 00666D36    dd          00666E3F
 00666D36    dd          00666E4A
 00666D36    dd          00666E4A
 00666D36    dd          00666DE4
 00666D36    dd          00666DF0
 00666D36    dd          00666DFC
 00666D36    dd          00666E09
 00666D36    dd          00666E15
 00666D91    mov         eax,dword ptr [ebp-4]
 00666D94    mov         edx,0FFFFFFFF
 00666D99    mov         cl,0FF
 00666D9B    call        0066D574
 00666DA0    pop         ecx
 00666DA1    pop         ebp
 00666DA2    ret
 00666DA3    mov         eax,dword ptr [ebp-4]
 00666DA6    not         word ptr [eax+8]
 00666DAA    mov         eax,dword ptr [ebp-4]
 00666DAD    pop         ecx
 00666DAE    pop         ebp
 00666DAF    ret
 00666DB0    mov         eax,dword ptr [ebp-4]
 00666DB3    not         dword ptr [eax+8]
 00666DB6    mov         eax,dword ptr [ebp-4]
 00666DB9    pop         ecx
 00666DBA    pop         ebp
 00666DBB    ret
 00666DBC    mov         eax,dword ptr [ebp-4]
 00666DBF    call        00666C0C
 00666DC4    pop         ecx
 00666DC5    pop         ebp
 00666DC6    ret
 00666DC7    mov         eax,dword ptr [ebp-4]
 00666DCA    mov         ax,word ptr [eax+8]
 00666DCE    cmp         ax,1
 00666DD2    sbb         eax,eax
 00666DD4    neg         eax
 00666DD6    neg         al
 00666DD8    sbb         eax,eax
 00666DDA    mov         edx,dword ptr [ebp-4]
 00666DDD    mov         word ptr [edx+8],ax
 00666DE1    pop         ecx
 00666DE2    pop         ebp
 00666DE3    ret
 00666DE4    mov         eax,dword ptr [ebp-4]
 00666DE7    not         byte ptr [eax+8]
 00666DEA    mov         eax,dword ptr [ebp-4]
 00666DED    pop         ecx
 00666DEE    pop         ebp
 00666DEF    ret
 00666DF0    mov         eax,dword ptr [ebp-4]
 00666DF3    not         byte ptr [eax+8]
 00666DF6    mov         eax,dword ptr [ebp-4]
 00666DF9    pop         ecx
 00666DFA    pop         ebp
 00666DFB    ret
 00666DFC    mov         eax,dword ptr [ebp-4]
 00666DFF    not         word ptr [eax+8]
 00666E03    mov         eax,dword ptr [ebp-4]
 00666E06    pop         ecx
 00666E07    pop         ebp
 00666E08    ret
 00666E09    mov         eax,dword ptr [ebp-4]
 00666E0C    not         dword ptr [eax+8]
 00666E0F    mov         eax,dword ptr [ebp-4]
 00666E12    pop         ecx
 00666E13    pop         ebp
 00666E14    ret
 00666E15    mov         eax,dword ptr [ebp-4]
 00666E18    mov         edx,dword ptr [eax+0C]
 00666E1B    mov         eax,dword ptr [eax+8]
 00666E1E    not         eax
 00666E20    not         edx
 00666E22    mov         ecx,dword ptr [ebp-4]
 00666E25    mov         dword ptr [ecx+8],eax
 00666E28    mov         dword ptr [ecx+0C],edx
 00666E2B    pop         ecx
 00666E2C    pop         ebp
 00666E2D    ret
 00666E2E    mov         edx,dword ptr [ebp-4]
 00666E31    mov         eax,dword ptr [ebp-4]
 00666E34    mov         eax,dword ptr [eax+8]
 00666E37    call        00666C90
 00666E3C    pop         ecx
 00666E3D    pop         ebp
 00666E3E    ret
 00666E3F    mov         eax,dword ptr [ebp-4]
 00666E42    call        00666C74
 00666E47    pop         ecx
 00666E48    pop         ebp
 00666E49    ret
 00666E4A    mov         eax,dword ptr [ebp-4]
 00666E4D    mov         ax,word ptr [eax]
 00666E50    sub         ax,100
>00666E54    je          00666E5D
 00666E56    dec         ax
>00666E59    je          00666E6A
>00666E5B    jmp         00666E77
 00666E5D    mov         eax,dword ptr [ebp-4]
 00666E60    call        00666C0C
>00666E65    jmp         00667007
 00666E6A    mov         eax,dword ptr [ebp-4]
 00666E6D    call        00666CC8
>00666E72    jmp         00667007
 00666E77    mov         eax,dword ptr [ebp-4]
 00666E7A    test        byte ptr [eax+1],40
>00666E7E    je          00666FF3
 00666E84    mov         eax,dword ptr [ebp-4]
 00666E87    movzx       eax,word ptr [eax]
 00666E8A    and         eax,0FFFFBFFF
 00666E8F    cmp         eax,14
>00666E92    ja          00666FE9
 00666E98    jmp         dword ptr [eax*4+666E9F]
 00666E98    dd          00666FE9
 00666E98    dd          00666FE9
 00666E98    dd          00666EF3
 00666E98    dd          00666F11
 00666E98    dd          00666F2A
 00666E98    dd          00666F2A
 00666E98    dd          00666F2A
 00666E98    dd          00666F2A
 00666E98    dd          00666F2A
 00666E98    dd          00666FE9
 00666E98    dd          00666FE9
 00666E98    dd          00666F37
 00666E98    dd          00666FD9
 00666E98    dd          00666FE9
 00666E98    dd          00666FE9
 00666E98    dd          00666FE9
 00666E98    dd          00666F55
 00666E98    dd          00666F71
 00666E98    dd          00666F8D
 00666E98    dd          00666FA8
 00666E98    dd          00666FBE
 00666EF3    mov         eax,dword ptr [ebp-4]
 00666EF6    mov         edx,dword ptr [ebp-4]
 00666EF9    mov         edx,dword ptr [edx+8]
 00666EFC    mov         dx,word ptr [edx]
 00666EFF    not         dx
 00666F02    movsx       edx,dx
 00666F05    mov         cl,0FE
 00666F07    call        0066D574
>00666F0C    jmp         00667007
 00666F11    mov         eax,dword ptr [ebp-4]
 00666F14    mov         edx,dword ptr [ebp-4]
 00666F17    mov         edx,dword ptr [edx+8]
 00666F1A    mov         edx,dword ptr [edx]
 00666F1C    not         edx
 00666F1E    mov         cl,0FC
 00666F20    call        0066D574
>00666F25    jmp         00667007
 00666F2A    mov         eax,dword ptr [ebp-4]
 00666F2D    call        00666C0C
>00666F32    jmp         00667007
 00666F37    mov         eax,dword ptr [ebp-4]
 00666F3A    mov         edx,dword ptr [ebp-4]
 00666F3D    mov         edx,dword ptr [edx+8]
 00666F40    mov         dx,word ptr [edx]
 00666F43    cmp         dx,1
 00666F47    sbb         edx,edx
 00666F49    neg         edx
 00666F4B    call        0066D590
>00666F50    jmp         00667007
 00666F55    mov         eax,dword ptr [ebp-4]
 00666F58    mov         edx,dword ptr [ebp-4]
 00666F5B    mov         edx,dword ptr [edx+8]
 00666F5E    mov         dl,byte ptr [edx]
 00666F60    not         dl
 00666F62    movsx       edx,dl
 00666F65    mov         cl,0FF
 00666F67    call        0066D574
>00666F6C    jmp         00667007
 00666F71    mov         eax,dword ptr [ebp-4]
 00666F74    mov         edx,dword ptr [ebp-4]
 00666F77    mov         edx,dword ptr [edx+8]
 00666F7A    mov         dl,byte ptr [edx]
 00666F7C    not         dl
 00666F7E    and         edx,0FF
 00666F84    mov         cl,1
 00666F86    call        0066D574
>00666F8B    jmp         00667007
 00666F8D    mov         eax,dword ptr [ebp-4]
 00666F90    mov         edx,dword ptr [ebp-4]
 00666F93    mov         edx,dword ptr [edx+8]
 00666F96    mov         dx,word ptr [edx]
 00666F99    not         dx
 00666F9C    movzx       edx,dx
 00666F9F    mov         cl,2
 00666FA1    call        0066D574
>00666FA6    jmp         00667007
 00666FA8    mov         eax,dword ptr [ebp-4]
 00666FAB    mov         edx,dword ptr [ebp-4]
 00666FAE    mov         edx,dword ptr [edx+8]
 00666FB1    mov         edx,dword ptr [edx]
 00666FB3    not         edx
 00666FB5    mov         cl,4
 00666FB7    call        0066D574
>00666FBC    jmp         00667007
 00666FBE    mov         eax,dword ptr [ebp-4]
 00666FC1    mov         eax,dword ptr [eax+8]
 00666FC4    mov         edx,dword ptr [eax+4]
 00666FC7    mov         eax,dword ptr [eax]
 00666FC9    not         eax
 00666FCB    not         edx
 00666FCD    push        edx
 00666FCE    push        eax
 00666FCF    mov         eax,dword ptr [ebp-4]
 00666FD2    call        @VarFromInt64
>00666FD7    jmp         00667007
 00666FD9    mov         edx,dword ptr [ebp-4]
 00666FDC    mov         eax,dword ptr [ebp-4]
 00666FDF    mov         eax,dword ptr [eax+8]
 00666FE2    call        00666C90
>00666FE7    jmp         00667007
 00666FE9    mov         eax,dword ptr [ebp-4]
 00666FEC    call        00666C74
>00666FF1    jmp         00667007
 00666FF3    mov         eax,dword ptr [ebp-4]
 00666FF6    call        00666CE4
 00666FFB    test        al,al
>00666FFD    jne         00667007
 00666FFF    mov         eax,dword ptr [ebp-4]
 00667002    call        00666C74
 00667007    pop         ecx
 00667008    pop         ebp
 00667009    ret
end;*}

//00667190
{*procedure sub_00667190(?:?; ?:?);
begin
 00667190    push        ebp
 00667191    mov         ebp,esp
 00667193    add         esp,0FFFFFDF0
 00667199    xor         ecx,ecx
 0066719B    mov         dword ptr [ebp-210],ecx
 006671A1    mov         dword ptr [ebp-8],edx
 006671A4    mov         word ptr [ebp-2],ax
 006671A8    xor         eax,eax
 006671AA    push        ebp
 006671AB    push        6672DB
 006671B0    push        dword ptr fs:[eax]
 006671B3    mov         dword ptr fs:[eax],esp
 006671B6    mov         ax,word ptr [ebp-2]
 006671BA    and         ax,0FFF
 006671BE    cmp         ax,14
>006671C2    ja          006671E4
 006671C4    mov         eax,dword ptr [ebp-8]
 006671C7    mov         dx,word ptr [ebp-2]
 006671CB    and         dx,0FFF
 006671D0    movzx       edx,dx
 006671D3    mov         edx,dword ptr [edx*4+6E4E08];^'Empty'
 006671DA    call        @LStrAsg
>006671DF    jmp         00667292
 006671E4    cmp         word ptr [ebp-2],100
>006671EA    jne         006671FE
 006671EC    mov         eax,dword ptr [ebp-8]
 006671EF    mov         edx,6672F0;'String'
 006671F4    call        @LStrAsg
>006671F9    jmp         00667292
 006671FE    cmp         word ptr [ebp-2],101
>00667204    jne         00667215
 00667206    mov         eax,dword ptr [ebp-8]
 00667209    mov         edx,667300;'Any'
 0066720E    call        @LStrAsg
>00667213    jmp         00667292
 00667215    lea         edx,[ebp-0C]
 00667218    mov         ax,word ptr [ebp-2]
 0066721C    call        006689A0
 00667221    test        al,al
>00667223    je          00667261
 00667225    lea         eax,[ebp-10C]
 0066722B    push        eax
 0066722C    lea         edx,[ebp-20C]
 00667232    mov         eax,dword ptr [ebp-0C]
 00667235    mov         eax,dword ptr [eax]
 00667237    call        TObject.ClassName
 0066723C    lea         eax,[ebp-20C]
 00667242    mov         ecx,7FFFFFFF
 00667247    mov         edx,2
 0066724C    call        @Copy
 00667251    lea         edx,[ebp-10C]
 00667257    mov         eax,dword ptr [ebp-8]
 0066725A    call        @LStrFromString
>0066725F    jmp         00667292
 00667261    lea         ecx,[ebp-210]
 00667267    mov         ax,word ptr [ebp-2]
 0066726B    and         ax,0FFF
 0066726F    movzx       eax,ax
 00667272    mov         edx,4
 00667277    call        00657C04
 0066727C    mov         ecx,dword ptr [ebp-210]
 00667282    mov         edx,dword ptr ds:[6EA0FC];^gvar_006E4A14
 00667288    mov         edx,dword ptr [edx]
 0066728A    mov         eax,dword ptr [ebp-8]
 0066728D    call        @LStrCat3
 00667292    test        byte ptr [ebp-1],40
>00667296    je          006672AA
 00667298    mov         ecx,dword ptr [ebp-8]
 0066729B    mov         ecx,dword ptr [ecx]
 0066729D    mov         eax,dword ptr [ebp-8]
 006672A0    mov         edx,66730C;'ByRef '
 006672A5    call        @LStrCat3
 006672AA    test        byte ptr [ebp-1],20
>006672AE    je          006672C2
 006672B0    mov         ecx,dword ptr [ebp-8]
 006672B3    mov         ecx,dword ptr [ecx]
 006672B5    mov         eax,dword ptr [ebp-8]
 006672B8    mov         edx,66731C;'Array '
 006672BD    call        @LStrCat3
 006672C2    xor         eax,eax
 006672C4    pop         edx
 006672C5    pop         ecx
 006672C6    pop         ecx
 006672C7    mov         dword ptr fs:[eax],edx
 006672CA    push        6672E2
 006672CF    lea         eax,[ebp-210]
 006672D5    call        @LStrClr
 006672DA    ret
>006672DB    jmp         @HandleFinally
>006672E0    jmp         006672CF
 006672E2    mov         esp,ebp
 006672E4    pop         ebp
 006672E5    ret
end;*}

//00667324
{*function sub_00667324(?:?):?;
begin
 00667324    push        ebp
 00667325    mov         ebp,esp
 00667327    add         esp,0FFFFFFF8
 0066732A    mov         dword ptr [ebp-4],eax
 0066732D    mov         eax,dword ptr [ebp-4]
 00667330    mov         ax,word ptr [eax]
 00667333    mov         word ptr [ebp-6],ax
 00667337    mov         ax,word ptr [ebp-6]
 0066733B    pop         ecx
 0066733C    pop         ecx
 0066733D    pop         ebp
 0066733E    ret
end;*}

//00667340
{*function sub_00667340(?:?):?;
begin
 00667340    push        ebp
 00667341    mov         ebp,esp
 00667343    add         esp,0FFFFFFF8
 00667346    mov         dword ptr [ebp-4],eax
 00667349    mov         eax,dword ptr [ebp-4]
 0066734C    mov         dword ptr [ebp-8],eax
>0066734F    jmp         0066735A
 00667351    mov         eax,dword ptr [ebp-8]
 00667354    mov         eax,dword ptr [eax+8]
 00667357    mov         dword ptr [ebp-8],eax
 0066735A    mov         eax,dword ptr [ebp-8]
 0066735D    cmp         word ptr [eax],400C
>00667362    je          00667351
 00667364    mov         eax,dword ptr [ebp-8]
 00667367    pop         ecx
 00667368    pop         ecx
 00667369    pop         ebp
 0066736A    ret
end;*}

//0066736C
{*function sub_0066736C(?:?):?;
begin
 0066736C    push        ebp
 0066736D    mov         ebp,esp
 0066736F    add         esp,0FFFFFFE4
 00667372    push        esi
 00667373    push        edi
 00667374    mov         dword ptr [ebp-4],eax
 00667377    mov         eax,dword ptr [ebp-4]
 0066737A    call        00667340
 0066737F    mov         esi,eax
 00667381    lea         edi,[ebp-1C]
 00667384    movs        dword ptr [edi],dword ptr [esi]
 00667385    movs        dword ptr [edi],dword ptr [esi]
 00667386    movs        dword ptr [edi],dword ptr [esi]
 00667387    movs        dword ptr [edi],dword ptr [esi]
 00667388    cmp         word ptr [ebp-1C],10F
>0066738E    jae         006673B6
 00667390    cmp         word ptr [ebp-1C],0
>00667395    je          006673AF
 00667397    cmp         word ptr [ebp-1C],9
>0066739C    je          006673A5
 0066739E    cmp         word ptr [ebp-1C],0D
>006673A3    jne         006673AB
 006673A5    cmp         dword ptr [ebp-14],0
>006673A9    je          006673AF
 006673AB    xor         eax,eax
>006673AD    jmp         006673B1
 006673AF    mov         al,1
 006673B1    mov         byte ptr [ebp-5],al
>006673B4    jmp         006673DA
 006673B6    lea         edx,[ebp-0C]
 006673B9    mov         ax,word ptr [ebp-1C]
 006673BD    call        006689A0
 006673C2    test        al,al
>006673C4    je          006673D6
 006673C6    lea         edx,[ebp-1C]
 006673C9    mov         eax,dword ptr [ebp-0C]
 006673CC    mov         ecx,dword ptr [eax]
 006673CE    call        dword ptr [ecx+14]
 006673D1    mov         byte ptr [ebp-5],al
>006673D4    jmp         006673DA
 006673D6    mov         byte ptr [ebp-5],0
 006673DA    mov         al,byte ptr [ebp-5]
 006673DD    pop         edi
 006673DE    pop         esi
 006673DF    mov         esp,ebp
 006673E1    pop         ebp
 006673E2    ret
end;*}

//006673E4
{*function sub_006673E4(?:?):?;
begin
 006673E4    push        ebp
 006673E5    mov         ebp,esp
 006673E7    add         esp,0FFFFFFF8
 006673EA    mov         word ptr [ebp-2],ax
 006673EE    lea         edx,[ebp-8]
 006673F1    mov         ax,word ptr [ebp-2]
 006673F5    call        006689A0
 006673FA    mov         byte ptr [ebp-3],al
 006673FD    mov         al,byte ptr [ebp-3]
 00667400    pop         ecx
 00667401    pop         ecx
 00667402    pop         ebp
 00667403    ret
end;*}

//00667404
{*function sub_00667404(?:?):?;
begin
 00667404    push        ebp
 00667405    mov         ebp,esp
 00667407    push        ecx
 00667408    mov         word ptr [ebp-2],ax
 0066740C    mov         ax,word ptr [ebp-2]
 00667410    add         eax,0FFFFFFFE
 00667413    sub         ax,2
>00667417    jb          0066742C
 00667419    sub         ax,7
>0066741D    je          0066742C
 0066741F    add         eax,0FFFFFFFB
 00667422    sub         ax,5
>00667426    jb          0066742C
 00667428    xor         eax,eax
>0066742A    jmp         0066742E
 0066742C    mov         al,1
 0066742E    mov         byte ptr [ebp-3],al
 00667431    mov         al,byte ptr [ebp-3]
 00667434    pop         ecx
 00667435    pop         ebp
 00667436    ret
end;*}

//00667438
{*function sub_00667438(?:?):?;
begin
 00667438    push        ebp
 00667439    mov         ebp,esp
 0066743B    add         esp,0FFFFFFF8
 0066743E    mov         dword ptr [ebp-4],eax
 00667441    mov         eax,dword ptr [ebp-4]
 00667444    call        00667340
 00667449    mov         ax,word ptr [eax]
 0066744C    call        00667404
 00667451    mov         byte ptr [ebp-5],al
 00667454    mov         al,byte ptr [ebp-5]
 00667457    pop         ecx
 00667458    pop         ecx
 00667459    pop         ebp
 0066745A    ret
end;*}

//0066745C
{*function sub_0066745C(?:?):?;
begin
 0066745C    push        ebp
 0066745D    mov         ebp,esp
 0066745F    add         esp,0FFFFFFF8
 00667462    mov         dword ptr [ebp-4],eax
 00667465    mov         eax,dword ptr [ebp-4]
 00667468    call        00667340
 0066746D    cmp         word ptr [eax],0
 00667471    sete        byte ptr [ebp-5]
 00667475    mov         al,byte ptr [ebp-5]
 00667478    pop         ecx
 00667479    pop         ecx
 0066747A    pop         ebp
 0066747B    ret
end;*}

//0066747C
{*function sub_0066747C(?:?):?;
begin
 0066747C    push        ebp
 0066747D    mov         ebp,esp
 0066747F    add         esp,0FFFFFFF8
 00667482    mov         dword ptr [ebp-4],eax
 00667485    mov         eax,dword ptr [ebp-4]
 00667488    call        00667340
 0066748D    cmp         word ptr [eax],1
 00667491    sete        byte ptr [ebp-5]
 00667495    mov         al,byte ptr [ebp-5]
 00667498    pop         ecx
 00667499    pop         ecx
 0066749A    pop         ebp
 0066749B    ret
end;*}

//0066749C
{*procedure sub_0066749C(?:?; ?:?);
begin
 0066749C    push        ebp
 0066749D    mov         ebp,esp
 0066749F    add         esp,0FFFFFFF8
 006674A2    mov         dword ptr [ebp-8],edx
 006674A5    mov         dword ptr [ebp-4],eax
 006674A8    mov         ecx,dword ptr [ebp-8]
 006674AB    mov         eax,dword ptr [ebp-4]
 006674AE    xor         edx,edx
 006674B0    call        006674BC
 006674B5    pop         ecx
 006674B6    pop         ecx
 006674B7    pop         ebp
 006674B8    ret
end;*}

//006674BC
{*procedure sub_006674BC(?:?; ?:?; ?:?);
begin
 006674BC    push        ebp
 006674BD    mov         ebp,esp
 006674BF    add         esp,0FFFFFFF4
 006674C2    mov         dword ptr [ebp-0C],ecx
 006674C5    mov         dword ptr [ebp-8],edx
 006674C8    mov         dword ptr [ebp-4],eax
 006674CB    mov         eax,dword ptr [ebp-4]
 006674CE    call        0066747C
 006674D3    test        al,al
>006674D5    jne         006674E4
 006674D7    mov         eax,dword ptr [ebp-0C]
 006674DA    mov         edx,dword ptr [ebp-4]
 006674DD    call        0066D554
>006674E2    jmp         006674EF
 006674E4    mov         eax,dword ptr [ebp-0C]
 006674E7    mov         edx,dword ptr [ebp-8]
 006674EA    call        @LStrAsg
 006674EF    mov         esp,ebp
 006674F1    pop         ebp
 006674F2    ret
end;*}

//006674F4
{*function sub_006674F4(?:?; ?:?):?;
begin
 006674F4    push        ebp
 006674F5    mov         ebp,esp
 006674F7    add         esp,0FFFFFFD4
 006674FA    push        esi
 006674FB    push        edi
 006674FC    mov         dword ptr [ebp-8],edx
 006674FF    mov         dword ptr [ebp-4],eax
 00667502    mov         eax,dword ptr [ebp-4]
 00667505    call        00667340
 0066750A    mov         esi,eax
 0066750C    lea         edi,[ebp-19]
 0066750F    movs        dword ptr [edi],dword ptr [esi]
 00667510    movs        dword ptr [edi],dword ptr [esi]
 00667511    movs        dword ptr [edi],dword ptr [esi]
 00667512    movs        dword ptr [edi],dword ptr [esi]
 00667513    mov         eax,dword ptr [ebp-8]
 00667516    call        00667340
 0066751B    mov         esi,eax
 0066751D    lea         edi,[ebp-29]
 00667520    movs        dword ptr [edi],dword ptr [esi]
 00667521    movs        dword ptr [edi],dword ptr [esi]
 00667522    movs        dword ptr [edi],dword ptr [esi]
 00667523    movs        dword ptr [edi],dword ptr [esi]
 00667524    cmp         word ptr [ebp-19],0
>00667529    jne         00667536
 0066752B    cmp         word ptr [ebp-29],0
 00667530    sete        byte ptr [ebp-9]
>00667534    jmp         00667567
 00667536    cmp         word ptr [ebp-19],1
>0066753B    jne         00667548
 0066753D    cmp         word ptr [ebp-29],1
 00667542    sete        byte ptr [ebp-9]
>00667546    jmp         00667567
 00667548    mov         ax,word ptr [ebp-29]
 0066754C    sub         ax,2
>00667550    jae         00667558
 00667552    mov         byte ptr [ebp-9],0
>00667556    jmp         00667567
 00667558    mov         eax,dword ptr [ebp-4]
 0066755B    mov         edx,dword ptr [ebp-8]
 0066755E    call        @VarCmpEQ
 00667563    sete        byte ptr [ebp-9]
 00667567    mov         al,byte ptr [ebp-9]
 0066756A    pop         edi
 0066756B    pop         esi
 0066756C    mov         esp,ebp
 0066756E    pop         ebp
 0066756F    ret
end;*}

//00667570
{*procedure sub_00667570(?:?);
begin
 00667570    push        ebp
 00667571    mov         ebp,esp
 00667573    push        ecx
 00667574    mov         dword ptr [ebp-4],eax
 00667577    mov         eax,dword ptr [ebp-4]
 0066757A    mov         word ptr [eax],0A
 0066757F    mov         eax,dword ptr [ebp-4]
 00667582    mov         dword ptr [eax+8],80020004
 00667589    pop         ecx
 0066758A    pop         ebp
 0066758B    ret
end;*}

//0066758C
{*function sub_0066758C(?:?; ?:?; ?:?):?;
begin
 0066758C    push        ebp
 0066758D    mov         ebp,esp
 0066758F    add         esp,0FFFFFFEC
 00667592    push        ebx
 00667593    xor         ebx,ebx
 00667595    mov         dword ptr [ebp-14],ebx
 00667598    mov         dword ptr [ebp-0C],ecx
 0066759B    mov         dword ptr [ebp-8],edx
 0066759E    mov         dword ptr [ebp-4],eax
 006675A1    xor         eax,eax
 006675A3    push        ebp
 006675A4    push        6675EE
 006675A9    push        dword ptr fs:[eax]
 006675AC    mov         dword ptr fs:[eax],esp
 006675AF    lea         edx,[ebp-14]
 006675B2    mov         eax,dword ptr [ebp-8]
 006675B5    call        0066749C
 006675BA    mov         eax,dword ptr [ebp-4]
 006675BD    mov         ecx,dword ptr [ebp-0C]
 006675C0    mov         edx,dword ptr [ebp-14]
 006675C3    call        @WriteLString
 006675C8    call        @Flush
 006675CD    call        @_IOTest
 006675D2    mov         eax,dword ptr [ebp-4]
 006675D5    mov         dword ptr [ebp-10],eax
 006675D8    xor         eax,eax
 006675DA    pop         edx
 006675DB    pop         ecx
 006675DC    pop         ecx
 006675DD    mov         dword ptr fs:[eax],edx
 006675E0    push        6675F5
 006675E5    lea         eax,[ebp-14]
 006675E8    call        @LStrClr
 006675ED    ret
>006675EE    jmp         @HandleFinally
>006675F3    jmp         006675E5
 006675F5    mov         eax,dword ptr [ebp-10]
 006675F8    pop         ebx
 006675F9    mov         esp,ebp
 006675FB    pop         ebp
 006675FC    ret
end;*}

//00667624
{*function sub_00667624(?:?; ?:?; ?:?):?;
begin
 00667624    push        ebp
 00667625    mov         ebp,esp
 00667627    add         esp,0FFFFFFF0
 0066762A    mov         dword ptr [ebp-0C],ecx
 0066762D    mov         dword ptr [ebp-8],edx
 00667630    mov         dword ptr [ebp-4],eax
 00667633    mov         eax,dword ptr [ebp-4]
 00667636    cmp         word ptr [eax],400C
>0066763B    jne         00667653
 0066763D    mov         ecx,dword ptr [ebp-0C]
 00667640    mov         edx,dword ptr [ebp-8]
 00667643    mov         eax,dword ptr [ebp-4]
 00667646    mov         eax,dword ptr [eax+8]
 00667649    call        00667624
 0066764E    mov         byte ptr [ebp-0D],al
>00667651    jmp         0066769C
 00667653    mov         eax,dword ptr [ebp-4]
 00667656    mov         ax,word ptr [eax]
 00667659    mov         edx,dword ptr [ebp-8]
 0066765C    mov         word ptr [edx],ax
 0066765F    mov         eax,dword ptr [ebp-8]
 00667662    test        byte ptr [eax+1],20
 00667666    setne       byte ptr [ebp-0D]
 0066766A    cmp         byte ptr [ebp-0D],0
>0066766E    je          00667695
 00667670    mov         eax,dword ptr [ebp-8]
 00667673    test        byte ptr [eax+1],40
>00667677    je          00667688
 00667679    mov         eax,dword ptr [ebp-4]
 0066767C    mov         eax,dword ptr [eax+8]
 0066767F    mov         eax,dword ptr [eax]
 00667681    mov         edx,dword ptr [ebp-0C]
 00667684    mov         dword ptr [edx],eax
>00667686    jmp         0066769C
 00667688    mov         eax,dword ptr [ebp-4]
 0066768B    mov         eax,dword ptr [eax+8]
 0066768E    mov         edx,dword ptr [ebp-0C]
 00667691    mov         dword ptr [edx],eax
>00667693    jmp         0066769C
 00667695    mov         eax,dword ptr [ebp-0C]
 00667698    xor         edx,edx
 0066769A    mov         dword ptr [eax],edx
 0066769C    mov         al,byte ptr [ebp-0D]
 0066769F    mov         esp,ebp
 006676A1    pop         ebp
 006676A2    ret
end;*}

//006676A4
{*procedure sub_006676A4(?:?; ?:?; ?:?; ?:?);
begin
 006676A4    push        ebp
 006676A5    mov         ebp,esp
 006676A7    add         esp,0FFFFFDE0
 006676AD    mov         word ptr [ebp-0A],cx
 006676B1    mov         dword ptr [ebp-8],edx
 006676B4    mov         dword ptr [ebp-4],eax
 006676B7    test        byte ptr [ebp-8],1
>006676BB    je          006676D0
 006676BD    cmp         dword ptr [ebp-8],7F
>006676C1    jg          006676D0
 006676C3    mov         ax,word ptr [ebp-0A]
 006676C7    call        00667900
 006676CC    test        al,al
>006676CE    jne         006676D5
 006676D0    call        VarArrayCreateError
 006676D5    mov         eax,dword ptr [ebp-8]
 006676D8    inc         eax
 006676D9    sar         eax,1
>006676DB    jns         006676E0
 006676DD    adc         eax,0
 006676E0    mov         dword ptr [ebp-14],eax
 006676E3    mov         eax,dword ptr [ebp-14]
 006676E6    dec         eax
 006676E7    test        eax,eax
>006676E9    jl          00667734
 006676EB    inc         eax
 006676EC    mov         dword ptr [ebp-1C],eax
 006676EF    mov         dword ptr [ebp-10],0
 006676F6    mov         eax,dword ptr [ebp-10]
 006676F9    lea         eax,[ebp+eax*8-220]
 00667700    mov         dword ptr [ebp-20],eax
 00667703    mov         eax,dword ptr [ebp-10]
 00667706    add         eax,eax
 00667708    mov         edx,dword ptr [ebp-4]
 0066770B    mov         eax,dword ptr [edx+eax*4]
 0066770E    mov         edx,dword ptr [ebp-20]
 00667711    mov         dword ptr [edx+4],eax
 00667714    mov         eax,dword ptr [ebp-10]
 00667717    add         eax,eax
 00667719    mov         edx,dword ptr [ebp-4]
 0066771C    mov         eax,dword ptr [edx+eax*4+4]
 00667720    mov         edx,dword ptr [ebp-20]
 00667723    sub         eax,dword ptr [edx+4]
 00667726    inc         eax
 00667727    mov         edx,dword ptr [ebp-20]
 0066772A    mov         dword ptr [edx],eax
 0066772C    inc         dword ptr [ebp-10]
 0066772F    dec         dword ptr [ebp-1C]
>00667732    jne         006676F6
 00667734    lea         eax,[ebp-220]
 0066773A    push        eax
 0066773B    mov         eax,dword ptr [ebp-14]
 0066773E    push        eax
 0066773F    movzx       eax,word ptr [ebp-0A]
 00667743    push        eax
 00667744    call        OLEAUT32.15
 00667749    mov         dword ptr [ebp-18],eax
 0066774C    cmp         dword ptr [ebp-18],0
>00667750    jne         00667757
 00667752    call        VarArrayCreateError
 00667757    mov         eax,dword ptr [ebp+8]
 0066775A    call        00660244
 0066775F    mov         ax,word ptr [ebp-0A]
 00667763    or          ax,2000
 00667767    mov         edx,dword ptr [ebp+8]
 0066776A    mov         word ptr [edx],ax
 0066776D    mov         eax,dword ptr [ebp+8]
 00667770    mov         edx,dword ptr [ebp-18]
 00667773    mov         dword ptr [eax+8],edx
 00667776    mov         esp,ebp
 00667778    pop         ebp
 00667779    ret         4
end;*}

//006677E0
{*function sub_006677E0(?:?):?;
begin
 006677E0    push        ebp
 006677E1    mov         ebp,esp
 006677E3    add         esp,0FFFFFFF4
 006677E6    mov         dword ptr [ebp-4],eax
 006677E9    lea         ecx,[ebp-8]
 006677EC    lea         edx,[ebp-0A]
 006677EF    mov         eax,dword ptr [ebp-4]
 006677F2    call        00667624
 006677F7    test        al,al
>006677F9    jne         00667805
 006677FB    mov         eax,80070057
 00667800    call        0065FB84
 00667805    mov         eax,dword ptr [ebp-8]
 00667808    mov         esp,ebp
 0066780A    pop         ebp
 0066780B    ret
end;*}

//0066780C
{*function sub_0066780C(?:?):?;
begin
 0066780C    push        ebp
 0066780D    mov         ebp,esp
 0066780F    add         esp,0FFFFFFF0
 00667812    mov         dword ptr [ebp-4],eax
 00667815    lea         ecx,[ebp-10]
 00667818    lea         edx,[ebp-0A]
 0066781B    mov         eax,dword ptr [ebp-4]
 0066781E    call        00667624
 00667823    test        al,al
>00667825    je          00667832
 00667827    mov         eax,dword ptr [ebp-10]
 0066782A    movzx       eax,word ptr [eax]
 0066782D    mov         dword ptr [ebp-8],eax
>00667830    jmp         00667837
 00667832    xor         eax,eax
 00667834    mov         dword ptr [ebp-8],eax
 00667837    mov         eax,dword ptr [ebp-8]
 0066783A    mov         esp,ebp
 0066783C    pop         ebp
 0066783D    ret
end;*}

//00667840
{*function sub_00667840(?:?; ?:?):?;
begin
 00667840    push        ebp
 00667841    mov         ebp,esp
 00667843    add         esp,0FFFFFFF4
 00667846    mov         dword ptr [ebp-8],edx
 00667849    mov         dword ptr [ebp-4],eax
 0066784C    lea         eax,[ebp-0C]
 0066784F    push        eax
 00667850    mov         eax,dword ptr [ebp-8]
 00667853    push        eax
 00667854    mov         eax,dword ptr [ebp-4]
 00667857    call        006677E0
 0066785C    push        eax
 0066785D    call        OLEAUT32.20
 00667862    call        0065FB84
 00667867    mov         eax,dword ptr [ebp-0C]
 0066786A    mov         esp,ebp
 0066786C    pop         ebp
 0066786D    ret
end;*}

//00667870
{*function sub_00667870(?:?; ?:?):?;
begin
 00667870    push        ebp
 00667871    mov         ebp,esp
 00667873    add         esp,0FFFFFFF4
 00667876    mov         dword ptr [ebp-8],edx
 00667879    mov         dword ptr [ebp-4],eax
 0066787C    lea         eax,[ebp-0C]
 0066787F    push        eax
 00667880    mov         eax,dword ptr [ebp-8]
 00667883    push        eax
 00667884    mov         eax,dword ptr [ebp-4]
 00667887    call        006677E0
 0066788C    push        eax
 0066788D    call        OLEAUT32.19
 00667892    call        0065FB84
 00667897    mov         eax,dword ptr [ebp-0C]
 0066789A    mov         esp,ebp
 0066789C    pop         ebp
 0066789D    ret
end;*}

//006678A0
{*function sub_006678A0(?:?):?;
begin
 006678A0    push        ebp
 006678A1    mov         ebp,esp
 006678A3    add         esp,0FFFFFFF8
 006678A6    mov         dword ptr [ebp-4],eax
 006678A9    mov         eax,dword ptr [ebp-4]
 006678AC    mov         dl,1
 006678AE    call        006678C0
 006678B3    mov         byte ptr [ebp-5],al
 006678B6    mov         al,byte ptr [ebp-5]
 006678B9    pop         ecx
 006678BA    pop         ecx
 006678BB    pop         ebp
 006678BC    ret
end;*}

//006678C0
{*function sub_006678C0(?:?; ?:?):?;
begin
 006678C0    push        ebp
 006678C1    mov         ebp,esp
 006678C3    add         esp,0FFFFFFF4
 006678C6    mov         byte ptr [ebp-5],dl
 006678C9    mov         dword ptr [ebp-4],eax
 006678CC    cmp         byte ptr [ebp-5],0
>006678D0    je          006678E5
 006678D2    lea         ecx,[ebp-0C]
 006678D5    lea         edx,[ebp-8]
 006678D8    mov         eax,dword ptr [ebp-4]
 006678DB    call        00667624
 006678E0    mov         byte ptr [ebp-6],al
>006678E3    jmp         006678F7
 006678E5    mov         eax,dword ptr [ebp-4]
 006678E8    mov         ax,word ptr [eax]
 006678EB    and         ax,2000
 006678EF    cmp         ax,2000
 006678F3    sete        byte ptr [ebp-6]
 006678F7    mov         al,byte ptr [ebp-6]
 006678FA    mov         esp,ebp
 006678FC    pop         ebp
 006678FD    ret
end;*}

//00667900
{*function sub_00667900(?:?):?;
begin
 00667900    push        ebp
 00667901    mov         ebp,esp
 00667903    push        ecx
 00667904    mov         word ptr [ebp-2],ax
 00667908    mov         ax,word ptr [ebp-2]
 0066790C    sub         ax,16
>00667910    jae         00667925
 00667912    movzx       eax,word ptr [ebp-2]
 00667916    lea         eax,[eax+eax*2]
 00667919    mov         edx,dword ptr ds:[6EA380];^gvar_006E4BF4
 0066791F    cmp         byte ptr [edx+eax*4],0
>00667923    jne         00667929
 00667925    xor         eax,eax
>00667927    jmp         0066792B
 00667929    mov         al,1
 0066792B    mov         byte ptr [ebp-3],al
 0066792E    mov         al,byte ptr [ebp-3]
 00667931    pop         ecx
 00667932    pop         ebp
 00667933    ret
end;*}

//00667934
{*function sub_00667934(?:?):?;
begin
 00667934    push        ebp
 00667935    mov         ebp,esp
 00667937    push        ecx
 00667938    mov         word ptr [ebp-2],ax
 0066793C    movzx       eax,word ptr [ebp-2]
 00667940    and         eax,0FFFFBFFF
 00667945    sub         eax,16
>00667948    jae         00667963
 0066794A    movzx       eax,word ptr [ebp-2]
 0066794E    and         eax,0FFFFBFFF
 00667953    lea         eax,[eax+eax*2]
 00667956    mov         edx,dword ptr ds:[6EA380];^gvar_006E4BF4
 0066795C    cmp         byte ptr [edx+eax*4+1],0
>00667961    jne         00667974
 00667963    mov         ax,word ptr [ebp-2]
 00667967    call        006673E4
 0066796C    test        al,al
>0066796E    jne         00667974
 00667970    xor         eax,eax
>00667972    jmp         00667976
 00667974    mov         al,1
 00667976    mov         byte ptr [ebp-3],al
 00667979    mov         al,byte ptr [ebp-3]
 0066797C    pop         ecx
 0066797D    pop         ebp
 0066797E    ret
end;*}

//00667980
{*procedure sub_00667980(?:?; ?:?; ?:?; ?:?);
begin
 00667980    push        ebp
 00667981    mov         ebp,esp
 00667983    add         esp,0FFFFFFE0
 00667986    lea         ecx,[ebp-18]
 00667989    lea         edx,[ebp-12]
 0066798C    mov         eax,dword ptr [ebp+0C]
 0066798F    call        00667624
 00667994    test        al,al
>00667996    jne         006679A2
 00667998    mov         eax,80070057
 0066799D    call        0065FB84
 006679A2    mov         eax,dword ptr [ebp-18]
 006679A5    movzx       eax,word ptr [eax]
 006679A8    cmp         eax,dword ptr [ebp+10]
>006679AB    je          006679B7
 006679AD    mov         eax,8002000B
 006679B2    call        0065FB84
 006679B7    lea         eax,[ebp-10]
 006679BA    push        eax
 006679BB    call        OLEAUT32.8
 006679C0    xor         eax,eax
 006679C2    push        ebp
 006679C3    push        667A46
 006679C8    push        dword ptr fs:[eax]
 006679CB    mov         dword ptr fs:[eax],esp
 006679CE    mov         ax,word ptr [ebp-12]
 006679D2    and         ax,0FFF
 006679D6    movzx       eax,ax
 006679D9    mov         dword ptr [ebp-1C],eax
 006679DC    cmp         dword ptr [ebp-1C],0C
>006679E0    jne         00667A07
 006679E2    lea         eax,[ebp-20]
 006679E5    push        eax
 006679E6    lea         eax,[ebp+14]
 006679E9    push        eax
 006679EA    mov         eax,dword ptr [ebp-18]
 006679ED    push        eax
 006679EE    call        OLEAUT32.148
 006679F3    call        0065FB84
 006679F8    mov         eax,dword ptr [ebp-20]
 006679FB    mov         edx,eax
 006679FD    lea         eax,[ebp-10]
 00667A00    call        006607C0
>00667A05    jmp         00667A25
 00667A07    lea         eax,[ebp-8]
 00667A0A    push        eax
 00667A0B    lea         eax,[ebp+14]
 00667A0E    push        eax
 00667A0F    mov         eax,dword ptr [ebp-18]
 00667A12    push        eax
 00667A13    call        OLEAUT32.25
 00667A18    call        0065FB84
 00667A1D    mov         ax,word ptr [ebp-1C]
 00667A21    mov         word ptr [ebp-10],ax
 00667A25    lea         edx,[ebp-10]
 00667A28    mov         eax,dword ptr [ebp+8]
 00667A2B    call        006607C0
 00667A30    xor         eax,eax
 00667A32    pop         edx
 00667A33    pop         ecx
 00667A34    pop         ecx
 00667A35    mov         dword ptr fs:[eax],edx
 00667A38    push        667A4D
 00667A3D    lea         eax,[ebp-10]
 00667A40    call        00660244
 00667A45    ret
>00667A46    jmp         @HandleFinally
>00667A4B    jmp         00667A3D
 00667A4D    mov         esp,ebp
 00667A4F    pop         ebp
 00667A50    ret
end;*}

//00667A54
function VarArrayGet(const A:Variant; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1):Variant;
begin
{*
 00667A54    push        ebp
 00667A55    mov         ebp,esp
 00667A57    push        ebx
 00667A58    mov         ebx,ecx
 00667A5A    inc         ebx
>00667A5B    jle         00667A63
 00667A5D    push        dword ptr [edx+ecx*4]
 00667A60    dec         ecx
>00667A61    jns         00667A5D
 00667A63    push        ebx
 00667A64    push        eax
 00667A65    mov         eax,dword ptr [ebp+8]
 00667A68    push        eax
 00667A69    call        00667980
 00667A6E    lea         esp,[esp+ebx*4+0C]
 00667A72    pop         ebx
 00667A73    pop         ebp
 00667A74    ret         4
*}
end;

//00667A78
{*procedure sub_00667A78(?:?; ?:?; ?:?; ?:?);
begin
 00667A78    push        ebp
 00667A79    mov         ebp,esp
 00667A7B    add         esp,0FFFFFFD8
 00667A7E    lea         ecx,[ebp-18]
 00667A81    lea         edx,[ebp-12]
 00667A84    mov         eax,dword ptr [ebp+8]
 00667A87    call        00667624
 00667A8C    test        al,al
>00667A8E    jne         00667A9A
 00667A90    mov         eax,80070057
 00667A95    call        0065FB84
 00667A9A    lea         ecx,[ebp-20]
 00667A9D    lea         edx,[ebp-1A]
 00667AA0    mov         eax,dword ptr [ebp+0C]
 00667AA3    call        00667624
 00667AA8    test        al,al
>00667AAA    jne         00667ACB
 00667AAC    mov         ax,word ptr [ebp-1A]
 00667AB0    call        00667934
 00667AB5    test        al,al
>00667AB7    jne         00667ACB
 00667AB9    cmp         word ptr [ebp-1A],100
>00667ABF    je          00667ACB
 00667AC1    mov         eax,80020005
 00667AC6    call        0065FB84
 00667ACB    mov         eax,dword ptr [ebp-18]
 00667ACE    movzx       eax,word ptr [eax]
 00667AD1    cmp         eax,dword ptr [ebp+10]
>00667AD4    je          00667AE0
 00667AD6    mov         eax,8002000B
 00667ADB    call        0065FB84
 00667AE0    mov         ax,word ptr [ebp-12]
 00667AE4    and         ax,0FFF
 00667AE8    movzx       eax,ax
 00667AEB    mov         dword ptr [ebp-24],eax
 00667AEE    cmp         dword ptr [ebp-24],0C
>00667AF2    jne         00667B2F
 00667AF4    cmp         word ptr [ebp-1A],100
>00667AFA    jne         00667B09
 00667AFC    mov         ax,word ptr [ebp-1A]
 00667B00    call        006673E4
 00667B05    test        al,al
>00667B07    je          00667B2F
 00667B09    lea         eax,[ebp-28]
 00667B0C    push        eax
 00667B0D    lea         eax,[ebp+14]
 00667B10    push        eax
 00667B11    mov         eax,dword ptr [ebp-18]
 00667B14    push        eax
 00667B15    call        OLEAUT32.148
 00667B1A    call        0065FB84
 00667B1F    mov         eax,dword ptr [ebp-28]
 00667B22    mov         edx,dword ptr [ebp+0C]
 00667B25    call        @VarCopy
>00667B2A    jmp         00667BBE
 00667B2F    lea         eax,[ebp-10]
 00667B32    push        eax
 00667B33    call        OLEAUT32.8
 00667B38    xor         eax,eax
 00667B3A    push        ebp
 00667B3B    push        667BB7
 00667B40    push        dword ptr fs:[eax]
 00667B43    mov         dword ptr fs:[eax],esp
 00667B46    cmp         dword ptr [ebp-24],0C
>00667B4A    jne         00667B5F
 00667B4C    mov         edx,dword ptr [ebp+0C]
 00667B4F    lea         eax,[ebp-10]
 00667B52    call        00660B74
 00667B57    lea         eax,[ebp-10]
 00667B5A    mov         dword ptr [ebp-28],eax
>00667B5D    jmp         00667B8B
 00667B5F    mov         edx,dword ptr [ebp+0C]
 00667B62    lea         eax,[ebp-10]
 00667B65    mov         ecx,dword ptr [ebp-24]
 00667B68    call        00661390
 00667B6D    mov         eax,dword ptr [ebp-24]
 00667B70    add         eax,0FFFFFFF8
 00667B73    sub         eax,2
>00667B76    jb          00667B7D
 00667B78    sub         eax,3
>00667B7B    jne         00667B85
 00667B7D    mov         eax,dword ptr [ebp-8]
 00667B80    mov         dword ptr [ebp-28],eax
>00667B83    jmp         00667B8B
 00667B85    lea         eax,[ebp-8]
 00667B88    mov         dword ptr [ebp-28],eax
 00667B8B    mov         eax,dword ptr [ebp-28]
 00667B8E    push        eax
 00667B8F    lea         eax,[ebp+14]
 00667B92    push        eax
 00667B93    mov         eax,dword ptr [ebp-18]
 00667B96    push        eax
 00667B97    call        OLEAUT32.26
 00667B9C    call        0065FB84
 00667BA1    xor         eax,eax
 00667BA3    pop         edx
 00667BA4    pop         ecx
 00667BA5    pop         ecx
 00667BA6    mov         dword ptr fs:[eax],edx
 00667BA9    push        667BBE
 00667BAE    lea         eax,[ebp-10]
 00667BB1    call        00660244
 00667BB6    ret
>00667BB7    jmp         @HandleFinally
>00667BBC    jmp         00667BAE
 00667BBE    mov         esp,ebp
 00667BC0    pop         ebp
 00667BC1    ret
end;*}

//00667BC4
procedure VarArrayPut(var A:Variant; const Value:Variant; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1);
begin
{*
 00667BC4    push        ebp
 00667BC5    mov         ebp,esp
 00667BC7    push        ebx
 00667BC8    mov         ebx,dword ptr [ebp+8]
 00667BCB    test        ebx,ebx
>00667BCD    js          00667BD5
 00667BCF    push        dword ptr [ecx+ebx*4]
 00667BD2    dec         ebx
>00667BD3    jns         00667BCF
 00667BD5    mov         ebx,dword ptr [ebp+8]
 00667BD8    inc         ebx
 00667BD9    push        ebx
 00667BDA    push        edx
 00667BDB    push        eax
 00667BDC    call        00667A78
 00667BE1    lea         esp,[esp+ebx*4+0C]
 00667BE5    pop         ebx
 00667BE6    pop         ebp
 00667BE7    ret         4
*}
end;

//00667BEC
function DynArrayIndex(const P:Pointer; const Indices:array[$0..-$1] of System.Integer; const _Dv_:$0..-$1; const TypInfo:Pointer):Pointer;
begin
{*
 00667BEC    push        ebp
 00667BED    mov         ebp,esp
 00667BEF    push        ebx
 00667BF0    push        esi
 00667BF1    push        edi
 00667BF2    push        ebp
 00667BF3    mov         esi,edx
 00667BF5    mov         edi,dword ptr [ebp+8]
 00667BF8    mov         ebp,eax
 00667BFA    xor         ebx,ebx
 00667BFC    test        ecx,ecx
>00667BFE    jge         00667C03
 00667C00    mov         ebp,dword ptr [ebp]
 00667C03    xor         eax,eax
 00667C05    mov         al,byte ptr [edi+1]
 00667C08    add         edi,eax
 00667C0A    mov         eax,dword ptr [esi+ebx*4]
 00667C0D    mul         eax,dword ptr [edi+2]
 00667C10    mov         edi,dword ptr [edi+6]
 00667C13    test        edi,edi
>00667C15    je          00667C19
 00667C17    mov         edi,dword ptr [edi]
 00667C19    add         ebp,eax
 00667C1B    inc         ebx
 00667C1C    cmp         ebx,ecx
>00667C1E    jle         00667C00
 00667C20    mov         eax,ebp
 00667C22    pop         ebp
 00667C23    pop         edi
 00667C24    pop         esi
 00667C25    pop         ebx
 00667C26    pop         ebp
 00667C27    ret         4
*}
end;

//00667C2C
{*function sub_00667C2C(?:?):?;
begin
 00667C2C    push        ebp
 00667C2D    mov         ebp,esp
 00667C2F    add         esp,0FFFFFFF8
 00667C32    mov         dword ptr [ebp-4],eax
 00667C35    xor         eax,eax
 00667C37    mov         dword ptr [ebp-8],eax
 00667C3A    cmp         dword ptr [ebp-4],0
>00667C3E    je          00667C5E
 00667C40    mov         eax,dword ptr [ebp-4]
 00667C43    movzx       eax,byte ptr [eax+1]
 00667C47    add         dword ptr [ebp-4],eax
 00667C4A    mov         eax,dword ptr [ebp-4]
 00667C4D    cmp         dword ptr [eax+6],0
>00667C51    je          00667C5E
 00667C53    mov         eax,dword ptr [ebp-4]
 00667C56    mov         eax,dword ptr [eax+6]
 00667C59    mov         eax,dword ptr [eax]
 00667C5B    mov         dword ptr [ebp-8],eax
 00667C5E    mov         eax,dword ptr [ebp-8]
 00667C61    pop         ecx
 00667C62    pop         ecx
 00667C63    pop         ebp
 00667C64    ret
end;*}

//00667C68
{*function sub_00667C68(?:?):?;
begin
 00667C68    push        ebp
 00667C69    mov         ebp,esp
 00667C6B    add         esp,0FFFFFFF8
 00667C6E    mov         dword ptr [ebp-4],eax
 00667C71    xor         eax,eax
 00667C73    mov         dword ptr [ebp-8],eax
>00667C76    jmp         00667C86
 00667C78    inc         dword ptr [ebp-8]
 00667C7B    mov         eax,dword ptr [ebp-4]
 00667C7E    call        00667C2C
 00667C83    mov         dword ptr [ebp-4],eax
 00667C86    cmp         dword ptr [ebp-4],0
>00667C8A    je          00667C94
 00667C8C    mov         eax,dword ptr [ebp-4]
 00667C8F    cmp         byte ptr [eax],11
>00667C92    je          00667C78
 00667C94    mov         eax,dword ptr [ebp-8]
 00667C97    pop         ecx
 00667C98    pop         ecx
 00667C99    pop         ebp
 00667C9A    ret
end;*}

//00667C9C
function DynArraySize(a:Pointer):Integer;
begin
{*
 00667C9C    test        eax,eax
>00667C9E    je          00667CA3
 00667CA0    mov         eax,dword ptr [eax-4]
 00667CA3    ret
*}
end;

//00667CA4
{*function sub_00667CA4(?:?; ?:?):?;
begin
 00667CA4    push        ebp
 00667CA5    mov         ebp,esp
 00667CA7    add         esp,0FFFFFFD4
 00667CAA    mov         dword ptr [ebp-8],edx
 00667CAD    mov         dword ptr [ebp-4],eax
 00667CB0    mov         byte ptr [ebp-9],1
 00667CB4    mov         eax,dword ptr [ebp-4]
 00667CB7    mov         dword ptr [ebp-24],eax
 00667CBA    mov         eax,dword ptr [ebp-8]
 00667CBD    call        00667C68
 00667CC2    mov         dword ptr [ebp-10],eax
 00667CC5    mov         eax,dword ptr [ebp-10]
 00667CC8    dec         eax
 00667CC9    test        eax,eax
>00667CCB    jle         00667D38
 00667CCD    mov         dword ptr [ebp-28],eax
 00667CD0    mov         dword ptr [ebp-14],1
 00667CD7    cmp         dword ptr [ebp-24],0
>00667CDB    je          00667D30
 00667CDD    mov         eax,dword ptr [ebp-24]
 00667CE0    call        DynArraySize
 00667CE5    mov         dword ptr [ebp-1C],eax
 00667CE8    mov         eax,dword ptr [ebp-24]
 00667CEB    mov         eax,dword ptr [eax]
 00667CED    call        DynArraySize
 00667CF2    mov         dword ptr [ebp-20],eax
 00667CF5    mov         eax,dword ptr [ebp-1C]
 00667CF8    dec         eax
 00667CF9    test        eax,eax
>00667CFB    jle         00667D28
 00667CFD    mov         dword ptr [ebp-2C],eax
 00667D00    mov         dword ptr [ebp-18],1
 00667D07    mov         eax,dword ptr [ebp-24]
 00667D0A    mov         edx,dword ptr [ebp-18]
 00667D0D    mov         eax,dword ptr [eax+edx*4]
 00667D10    call        DynArraySize
 00667D15    cmp         eax,dword ptr [ebp-20]
>00667D18    je          00667D20
 00667D1A    mov         byte ptr [ebp-9],0
>00667D1E    jmp         00667D38
 00667D20    inc         dword ptr [ebp-18]
 00667D23    dec         dword ptr [ebp-2C]
>00667D26    jne         00667D07
 00667D28    mov         eax,dword ptr [ebp-24]
 00667D2B    mov         eax,dword ptr [eax]
 00667D2D    mov         dword ptr [ebp-24],eax
 00667D30    inc         dword ptr [ebp-14]
 00667D33    dec         dword ptr [ebp-28]
>00667D36    jne         00667CD7
 00667D38    mov         al,byte ptr [ebp-9]
 00667D3B    mov         esp,ebp
 00667D3D    pop         ebp
 00667D3E    ret
end;*}

//00667D40
{*procedure sub_00667D40(?:?; ?:?; ?:?);
begin
 00667D40    push        ebp
 00667D41    mov         ebp,esp
 00667D43    add         esp,0FFFFFFE4
 00667D46    mov         dword ptr [ebp-0C],ecx
 00667D49    mov         dword ptr [ebp-8],edx
 00667D4C    mov         dword ptr [ebp-4],eax
 00667D4F    mov         eax,dword ptr [ebp-4]
 00667D52    mov         dword ptr [ebp-18],eax
 00667D55    mov         eax,dword ptr [ebp-8]
 00667D58    call        00667C68
 00667D5D    mov         dword ptr [ebp-10],eax
 00667D60    mov         eax,dword ptr [ebp-10]
 00667D63    push        eax
 00667D64    mov         eax,dword ptr [ebp-0C]
 00667D67    mov         ecx,1
 00667D6C    mov         edx,dword ptr ds:[668F50];TBoundArray
 00667D72    call        @DynArraySetLength
 00667D77    add         esp,4
 00667D7A    mov         eax,dword ptr [ebp-10]
 00667D7D    dec         eax
 00667D7E    test        eax,eax
>00667D80    jl          00667DB7
 00667D82    inc         eax
 00667D83    mov         dword ptr [ebp-1C],eax
 00667D86    mov         dword ptr [ebp-14],0
 00667D8D    cmp         dword ptr [ebp-18],0
>00667D91    je          00667DAF
 00667D93    mov         eax,dword ptr [ebp-18]
 00667D96    call        DynArraySize
 00667D9B    dec         eax
 00667D9C    mov         edx,dword ptr [ebp-0C]
 00667D9F    mov         edx,dword ptr [edx]
 00667DA1    mov         ecx,dword ptr [ebp-14]
 00667DA4    mov         dword ptr [edx+ecx*4],eax
 00667DA7    mov         eax,dword ptr [ebp-18]
 00667DAA    mov         eax,dword ptr [eax]
 00667DAC    mov         dword ptr [ebp-18],eax
 00667DAF    inc         dword ptr [ebp-14]
 00667DB2    dec         dword ptr [ebp-1C]
>00667DB5    jne         00667D8D
 00667DB7    mov         esp,ebp
 00667DB9    pop         ebp
 00667DBA    ret
end;*}

//00667DBC
{*function sub_00667DBC(?:?; ?:?):?;
begin
 00667DBC    push        ebp
 00667DBD    mov         ebp,esp
 00667DBF    add         esp,0FFFFFFE8
 00667DC2    mov         dword ptr [ebp-8],edx
 00667DC5    mov         dword ptr [ebp-4],eax
 00667DC8    mov         byte ptr [ebp-9],0
 00667DCC    mov         eax,dword ptr [ebp-4]
 00667DCF    mov         eax,dword ptr [eax]
 00667DD1    call        0066DA2C
 00667DD6    test        eax,eax
>00667DD8    jl          00667E01
 00667DDA    inc         eax
 00667DDB    mov         dword ptr [ebp-18],eax
 00667DDE    mov         dword ptr [ebp-10],0
 00667DE5    mov         eax,dword ptr [ebp-4]
 00667DE8    mov         eax,dword ptr [eax]
 00667DEA    mov         edx,dword ptr [ebp-10]
 00667DED    cmp         dword ptr [eax+edx*4],0
>00667DF1    je          00667DF9
 00667DF3    mov         byte ptr [ebp-9],1
>00667DF7    jmp         00667E01
 00667DF9    inc         dword ptr [ebp-10]
 00667DFC    dec         dword ptr [ebp-18]
>00667DFF    jne         00667DE5
 00667E01    cmp         byte ptr [ebp-9],0
>00667E05    je          00667E77
 00667E07    mov         eax,dword ptr [ebp-4]
 00667E0A    mov         eax,dword ptr [eax]
 00667E0C    call        0066DA2C
 00667E11    cmp         eax,0
>00667E14    jl          00667E77
 00667E16    mov         dword ptr [ebp-10],eax
 00667E19    mov         eax,dword ptr [ebp-4]
 00667E1C    mov         eax,dword ptr [eax]
 00667E1E    mov         edx,dword ptr [ebp-10]
 00667E21    cmp         dword ptr [eax+edx*4],0
>00667E25    je          00667E34
 00667E27    mov         eax,dword ptr [ebp-4]
 00667E2A    mov         eax,dword ptr [eax]
 00667E2C    mov         edx,dword ptr [ebp-10]
 00667E2F    dec         dword ptr [eax+edx*4]
>00667E32    jmp         00667E77
 00667E34    mov         eax,dword ptr [ebp-10]
 00667E37    mov         dword ptr [ebp-14],eax
>00667E3A    jmp         00667E53
 00667E3C    mov         eax,dword ptr [ebp-8]
 00667E3F    mov         edx,dword ptr [ebp-14]
 00667E42    mov         eax,dword ptr [eax+edx*4]
 00667E45    mov         edx,dword ptr [ebp-4]
 00667E48    mov         edx,dword ptr [edx]
 00667E4A    mov         ecx,dword ptr [ebp-14]
 00667E4D    mov         dword ptr [edx+ecx*4],eax
 00667E50    dec         dword ptr [ebp-14]
 00667E53    mov         eax,dword ptr [ebp-4]
 00667E56    mov         eax,dword ptr [eax]
 00667E58    mov         edx,dword ptr [ebp-14]
 00667E5B    cmp         dword ptr [eax+edx*4],0
>00667E5F    je          00667E3C
 00667E61    mov         eax,dword ptr [ebp-4]
 00667E64    mov         eax,dword ptr [eax]
 00667E66    mov         edx,dword ptr [ebp-14]
 00667E69    dec         dword ptr [eax+edx*4]
>00667E6C    jmp         00667E77
 00667E6E    dec         dword ptr [ebp-10]
 00667E71    cmp         dword ptr [ebp-10],0FFFFFFFF
>00667E75    jne         00667E19
 00667E77    mov         al,byte ptr [ebp-9]
 00667E7A    mov         esp,ebp
 00667E7C    pop         ebp
 00667E7D    ret
end;*}

//00667E80
{*procedure sub_00667E80(?:?; ?:?; ?:?);
begin
 00667E80    push        ebp
 00667E81    mov         ebp,esp
 00667E83    add         esp,0FFFFFFE8
 00667E86    mov         dword ptr [ebp-0C],ecx
 00667E89    mov         dword ptr [ebp-8],edx
 00667E8C    mov         dword ptr [ebp-4],eax
 00667E8F    mov         eax,dword ptr [ebp-4]
 00667E92    mov         dword ptr [ebp-18],eax
 00667E95    mov         eax,dword ptr [ebp-8]
 00667E98    call        00667C68
 00667E9D    mov         dword ptr [ebp-10],eax
 00667EA0    mov         eax,dword ptr [ebp-10]
 00667EA3    add         eax,eax
 00667EA5    push        eax
 00667EA6    mov         eax,dword ptr [ebp-0C]
 00667EA9    mov         ecx,1
 00667EAE    mov         edx,dword ptr ds:[668F50];TBoundArray
 00667EB4    call        @DynArraySetLength
 00667EB9    add         esp,4
 00667EBC    xor         eax,eax
 00667EBE    mov         dword ptr [ebp-14],eax
>00667EC1    jmp         00667EF8
 00667EC3    mov         eax,dword ptr [ebp-0C]
 00667EC6    mov         eax,dword ptr [eax]
 00667EC8    mov         edx,dword ptr [ebp-14]
 00667ECB    xor         ecx,ecx
 00667ECD    mov         dword ptr [eax+edx*4],ecx
 00667ED0    inc         dword ptr [ebp-14]
 00667ED3    cmp         dword ptr [ebp-18],0
>00667ED7    je          00667EF5
 00667ED9    mov         eax,dword ptr [ebp-18]
 00667EDC    call        DynArraySize
 00667EE1    dec         eax
 00667EE2    mov         edx,dword ptr [ebp-0C]
 00667EE5    mov         edx,dword ptr [edx]
 00667EE7    mov         ecx,dword ptr [ebp-14]
 00667EEA    mov         dword ptr [edx+ecx*4],eax
 00667EED    mov         eax,dword ptr [ebp-18]
 00667EF0    mov         eax,dword ptr [eax]
 00667EF2    mov         dword ptr [ebp-18],eax
 00667EF5    inc         dword ptr [ebp-14]
 00667EF8    mov         eax,dword ptr [ebp-10]
 00667EFB    add         eax,eax
 00667EFD    cmp         eax,dword ptr [ebp-14]
>00667F00    jg          00667EC3
 00667F02    mov         esp,ebp
 00667F04    pop         ebp
 00667F05    ret
end;*}

//00667F08
{*function sub_00667F08(?:?):?;
begin
 00667F08    push        ebp
 00667F09    mov         ebp,esp
 00667F0B    add         esp,0FFFFFFF8
 00667F0E    mov         dword ptr [ebp-4],eax
 00667F11    mov         dword ptr [ebp-8],1
 00667F18    cmp         dword ptr [ebp-4],0
>00667F1C    je          00667F39
 00667F1E    mov         eax,dword ptr [ebp-4]
 00667F21    cmp         byte ptr [eax],11
>00667F24    jne         00667F39
 00667F26    mov         eax,dword ptr [ebp-4]
 00667F29    movzx       eax,byte ptr [eax+1]
 00667F2D    add         dword ptr [ebp-4],eax
 00667F30    mov         eax,dword ptr [ebp-4]
 00667F33    mov         eax,dword ptr [eax+0A]
 00667F36    mov         dword ptr [ebp-8],eax
 00667F39    cmp         dword ptr [ebp-8],48
>00667F3D    jne         00667F46
 00667F3F    mov         dword ptr [ebp-8],100
 00667F46    mov         eax,dword ptr [ebp-8]
 00667F49    pop         ecx
 00667F4A    pop         ecx
 00667F4B    pop         ebp
 00667F4C    ret
end;*}

//00667F50
{*procedure sub_00667F50(?:?; ?:?; ?:?);
begin
 00667F50    push        ebp
 00667F51    mov         ebp,esp
 00667F53    push        ecx
 00667F54    mov         ecx,8
 00667F59    push        0
 00667F5B    push        0
 00667F5D    dec         ecx
>00667F5E    jne         00667F59
 00667F60    push        ecx
 00667F61    xchg        ecx,dword ptr [ebp-4]
 00667F64    push        ebx
 00667F65    mov         dword ptr [ebp-0C],ecx
 00667F68    mov         dword ptr [ebp-8],edx
 00667F6B    mov         dword ptr [ebp-4],eax
 00667F6E    xor         eax,eax
 00667F70    push        ebp
 00667F71    push        6682A6
 00667F76    push        dword ptr fs:[eax]
 00667F79    mov         dword ptr fs:[eax],esp
 00667F7C    lea         eax,[ebp-10]
 00667F7F    mov         edx,dword ptr ds:[668F50];TBoundArray
 00667F85    call        @DynArrayClear
 00667F8A    lea         eax,[ebp-14]
 00667F8D    mov         edx,dword ptr ds:[668F50];TBoundArray
 00667F93    call        @DynArrayClear
 00667F98    mov         eax,dword ptr [ebp-4]
 00667F9B    call        @VarClear
 00667FA0    mov         eax,dword ptr [ebp-0C]
 00667FA3    call        00667F08
 00667FA8    mov         dword ptr [ebp-1C],eax
 00667FAB    cmp         dword ptr [ebp-1C],1
>00667FAF    jle         00667FB7
 00667FB1    cmp         dword ptr [ebp-1C],11
>00667FB5    jle         00667FC4
 00667FB7    cmp         dword ptr [ebp-1C],100
>00667FBE    jne         00668272
 00667FC4    cmp         dword ptr [ebp-1C],100
>00667FCB    jne         00667FD6
 00667FCD    mov         dword ptr [ebp-20],8
>00667FD4    jmp         00667FDC
 00667FD6    mov         eax,dword ptr [ebp-1C]
 00667FD9    mov         dword ptr [ebp-20],eax
 00667FDC    mov         eax,dword ptr [ebp-0C]
 00667FDF    call        00667C68
 00667FE4    mov         dword ptr [ebp-24],eax
 00667FE7    cmp         dword ptr [ebp-24],1
>00667FEB    jle         00668000
 00667FED    mov         edx,dword ptr [ebp-0C]
 00667FF0    mov         eax,dword ptr [ebp-8]
 00667FF3    call        00667CA4
 00667FF8    test        al,al
>00667FFA    je          00668272
 00668000    lea         ecx,[ebp-10]
 00668003    mov         edx,dword ptr [ebp-0C]
 00668006    mov         eax,dword ptr [ebp-8]
 00668009    call        00667E80
 0066800E    lea         ecx,[ebp-14]
 00668011    mov         edx,dword ptr [ebp-0C]
 00668014    mov         eax,dword ptr [ebp-8]
 00668017    call        00667D40
 0066801C    lea         ecx,[ebp-18]
 0066801F    mov         edx,dword ptr ds:[668F50];TBoundArray
 00668025    mov         eax,dword ptr [ebp-14]
 00668028    call        @DynArrayCopy
 0066802D    lea         eax,[ebp-48]
 00668030    push        eax
 00668031    mov         eax,dword ptr [ebp-10]
 00668034    call        0066DA2C
 00668039    mov         edx,eax
 0066803B    mov         cx,word ptr [ebp-20]
 0066803F    mov         eax,dword ptr [ebp-10]
 00668042    call        006676A4
 00668047    lea         edx,[ebp-48]
 0066804A    mov         eax,dword ptr [ebp-4]
 0066804D    call        @VarCopy
 00668052    mov         eax,dword ptr [ebp-0C]
 00668055    push        eax
 00668056    mov         eax,dword ptr [ebp-18]
 00668059    call        0066DA2C
 0066805E    mov         ecx,eax
 00668060    mov         edx,dword ptr [ebp-18]
 00668063    mov         eax,dword ptr [ebp-8]
 00668066    call        DynArrayIndex
 0066806B    mov         dword ptr [ebp-28],eax
 0066806E    cmp         dword ptr [ebp-28],0
>00668072    je          0066825F
 00668078    mov         eax,dword ptr [ebp-1C]
 0066807B    cmp         eax,0A
>0066807E    jg          006680BE
>00668080    je          006681A3
 00668086    cmp         eax,9
>00668089    ja          00668240
 0066808F    jmp         dword ptr [eax*4+668096]
 0066808F    dd          00668240
 0066808F    dd          00668240
 0066808F    dd          0066810E
 0066808F    dd          00668123
 0066808F    dd          00668137
 0066808F    dd          00668149
 0066808F    dd          0066815B
 0066808F    dd          0066816D
 0066808F    dd          0066817F
 0066808F    dd          00668191
 006680BE    cmp         eax,11
>006680C1    jg          006680EE
>006680C3    je          006681FC
 006680C9    sub         eax,0B
>006680CC    je          006681B7
 006680D2    dec         eax
>006680D3    je          006681CE
 006680D9    dec         eax
>006680DA    je          006681DB
 006680E0    sub         eax,3
>006680E3    je          006681EA
>006680E9    jmp         00668240
 006680EE    sub         eax,12
>006680F1    je          0066820E
 006680F7    dec         eax
>006680F8    je          00668220
 006680FE    sub         eax,0ED
>00668103    je          00668231
>00668109    jmp         00668240
 0066810E    lea         eax,[ebp-38]
 00668111    mov         edx,dword ptr [ebp-28]
 00668114    movsx       edx,word ptr [edx]
 00668117    mov         cl,0FE
 00668119    call        0066D574
>0066811E    jmp         00668248
 00668123    lea         eax,[ebp-38]
 00668126    mov         edx,dword ptr [ebp-28]
 00668129    mov         edx,dword ptr [edx]
 0066812B    mov         cl,0FC
 0066812D    call        0066D574
>00668132    jmp         00668248
 00668137    mov         eax,dword ptr [ebp-28]
 0066813A    fld         dword ptr [eax]
 0066813C    lea         eax,[ebp-38]
 0066813F    call        0066D598
>00668144    jmp         00668248
 00668149    mov         eax,dword ptr [ebp-28]
 0066814C    fld         qword ptr [eax]
 0066814E    lea         eax,[ebp-38]
 00668151    call        0066D598
>00668156    jmp         00668248
 0066815B    mov         eax,dword ptr [ebp-28]
 0066815E    fild        qword ptr [eax]
 00668160    lea         eax,[ebp-38]
 00668163    call        0066D5A8
>00668168    jmp         00668248
 0066816D    mov         eax,dword ptr [ebp-28]
 00668170    fld         qword ptr [eax]
 00668172    lea         eax,[ebp-38]
 00668175    call        0066D598
>0066817A    jmp         00668248
 0066817F    lea         eax,[ebp-38]
 00668182    mov         edx,dword ptr [ebp-28]
 00668185    mov         edx,dword ptr [edx]
 00668187    call        0066D5B8
>0066818C    jmp         00668248
 00668191    lea         eax,[ebp-38]
 00668194    mov         edx,dword ptr [ebp-28]
 00668197    mov         edx,dword ptr [edx]
 00668199    call        0066D5C8
>0066819E    jmp         00668248
 006681A3    lea         eax,[ebp-38]
 006681A6    mov         edx,dword ptr [ebp-28]
 006681A9    mov         edx,dword ptr [edx]
 006681AB    mov         cl,0FC
 006681AD    call        0066D574
>006681B2    jmp         00668248
 006681B7    lea         eax,[ebp-38]
 006681BA    mov         edx,dword ptr [ebp-28]
 006681BD    mov         dx,word ptr [edx]
 006681C0    neg         dx
 006681C3    sbb         edx,edx
 006681C5    neg         edx
 006681C7    call        0066D590
>006681CC    jmp         00668248
 006681CE    lea         eax,[ebp-38]
 006681D1    mov         edx,dword ptr [ebp-28]
 006681D4    call        @VarCopy
>006681D9    jmp         00668248
 006681DB    lea         eax,[ebp-38]
 006681DE    mov         edx,dword ptr [ebp-28]
 006681E1    mov         edx,dword ptr [edx]
 006681E3    call        0066D5C0
>006681E8    jmp         00668248
 006681EA    lea         eax,[ebp-38]
 006681ED    mov         edx,dword ptr [ebp-28]
 006681F0    movsx       edx,byte ptr [edx]
 006681F3    mov         cl,0FF
 006681F5    call        0066D574
>006681FA    jmp         00668248
 006681FC    lea         eax,[ebp-38]
 006681FF    mov         edx,dword ptr [ebp-28]
 00668202    movzx       edx,byte ptr [edx]
 00668205    mov         cl,1
 00668207    call        0066D574
>0066820C    jmp         00668248
 0066820E    lea         eax,[ebp-38]
 00668211    mov         edx,dword ptr [ebp-28]
 00668214    movzx       edx,word ptr [edx]
 00668217    mov         cl,2
 00668219    call        0066D574
>0066821E    jmp         00668248
 00668220    lea         eax,[ebp-38]
 00668223    mov         edx,dword ptr [ebp-28]
 00668226    mov         edx,dword ptr [edx]
 00668228    mov         cl,4
 0066822A    call        0066D574
>0066822F    jmp         00668248
 00668231    lea         eax,[ebp-38]
 00668234    mov         edx,dword ptr [ebp-28]
 00668237    mov         edx,dword ptr [edx]
 00668239    call        0066D5B0
>0066823E    jmp         00668248
 00668240    lea         eax,[ebp-38]
 00668243    call        @VarClear
 00668248    mov         eax,dword ptr [ebp-18]
 0066824B    call        0066DA2C
 00668250    push        eax
 00668251    lea         edx,[ebp-38]
 00668254    mov         eax,dword ptr [ebp-4]
 00668257    mov         ecx,dword ptr [ebp-18]
 0066825A    call        VarArrayPut
 0066825F    lea         eax,[ebp-18]
 00668262    mov         edx,dword ptr [ebp-14]
 00668265    call        00667DBC
 0066826A    test        al,al
>0066826C    jne         00668052
 00668272    xor         eax,eax
 00668274    pop         edx
 00668275    pop         ecx
 00668276    pop         ecx
 00668277    mov         dword ptr fs:[eax],edx
 0066827A    push        6682AD
 0066827F    lea         eax,[ebp-48]
 00668282    mov         edx,dword ptr ds:[66903C];Variant
 00668288    mov         ecx,2
 0066828D    call        @FinalizeArray
 00668292    lea         eax,[ebp-18]
 00668295    mov         edx,dword ptr ds:[668F50];TBoundArray
 0066829B    mov         ecx,3
 006682A0    call        @FinalizeArray
 006682A5    ret
>006682A6    jmp         @HandleFinally
>006682AB    jmp         0066827F
 006682AD    pop         ebx
 006682AE    mov         esp,ebp
 006682B0    pop         ebp
 006682B1    ret
end;*}

//006682B4
{*procedure sub_006682B4(?:?; ?:?; ?:?);
begin
 006682B4    push        ebp
 006682B5    mov         ebp,esp
 006682B7    add         esp,0FFFFFFC0
 006682BA    push        ebx
 006682BB    xor         ebx,ebx
 006682BD    mov         dword ptr [ebp-24],ebx
 006682C0    mov         dword ptr [ebp-28],ebx
 006682C3    mov         dword ptr [ebp-40],ebx
 006682C6    mov         dword ptr [ebp-3C],ebx
 006682C9    mov         dword ptr [ebp-38],ebx
 006682CC    mov         dword ptr [ebp-34],ebx
 006682CF    mov         dword ptr [ebp-0C],ecx
 006682D2    mov         dword ptr [ebp-8],edx
 006682D5    mov         dword ptr [ebp-4],eax
 006682D8    xor         eax,eax
 006682DA    push        ebp
 006682DB    push        6685AC
 006682E0    push        dword ptr fs:[eax]
 006682E3    mov         dword ptr fs:[eax],esp
 006682E6    mov         eax,dword ptr [ebp-8]
 006682E9    call        0066780C
 006682EE    mov         dword ptr [ebp-14],eax
 006682F1    mov         eax,dword ptr [ebp-14]
 006682F4    shl         eax,2
 006682F7    call        @GetMem
 006682FC    mov         dword ptr [ebp-20],eax
 006682FF    mov         eax,dword ptr [ebp-14]
 00668302    dec         eax
 00668303    test        eax,eax
>00668305    jl          00668340
 00668307    inc         eax
 00668308    mov         dword ptr [ebp-30],eax
 0066830B    mov         dword ptr [ebp-1C],0
 00668312    mov         edx,dword ptr [ebp-1C]
 00668315    inc         edx
 00668316    mov         eax,dword ptr [ebp-8]
 00668319    call        00667870
 0066831E    mov         ebx,eax
 00668320    mov         edx,dword ptr [ebp-1C]
 00668323    inc         edx
 00668324    mov         eax,dword ptr [ebp-8]
 00668327    call        00667840
 0066832C    sub         ebx,eax
 0066832E    inc         ebx
 0066832F    mov         eax,dword ptr [ebp-20]
 00668332    mov         edx,dword ptr [ebp-1C]
 00668335    mov         dword ptr [eax+edx*4],ebx
 00668338    inc         dword ptr [ebp-1C]
 0066833B    dec         dword ptr [ebp-30]
>0066833E    jne         00668312
 00668340    mov         eax,dword ptr [ebp-20]
 00668343    push        eax
 00668344    mov         eax,dword ptr [ebp-4]
 00668347    mov         ecx,dword ptr [ebp-14]
 0066834A    mov         edx,dword ptr [ebp-0C]
 0066834D    call        DynArraySetLength
 00668352    mov         eax,dword ptr [ebp-0C]
 00668355    call        00667C68
 0066835A    mov         dword ptr [ebp-10],eax
 0066835D    mov         eax,dword ptr [ebp-0C]
 00668360    call        00667F08
 00668365    mov         dword ptr [ebp-18],eax
 00668368    lea         ecx,[ebp-24]
 0066836B    mov         eax,dword ptr [ebp-4]
 0066836E    mov         eax,dword ptr [eax]
 00668370    mov         edx,dword ptr [ebp-0C]
 00668373    call        00667D40
 00668378    lea         ecx,[ebp-28]
 0066837B    mov         edx,dword ptr ds:[668F50];TBoundArray
 00668381    mov         eax,dword ptr [ebp-24]
 00668384    call        @DynArrayCopy
 00668389    lea         eax,[ebp-40]
 0066838C    push        eax
 0066838D    mov         eax,dword ptr [ebp-28]
 00668390    call        0066DA2C
 00668395    mov         ecx,eax
 00668397    mov         eax,dword ptr [ebp-8]
 0066839A    mov         edx,dword ptr [ebp-28]
 0066839D    call        VarArrayGet
 006683A2    mov         eax,dword ptr [ebp-0C]
 006683A5    push        eax
 006683A6    mov         eax,dword ptr [ebp-28]
 006683A9    call        0066DA2C
 006683AE    mov         ecx,eax
 006683B0    mov         eax,dword ptr [ebp-4]
 006683B3    mov         eax,dword ptr [eax]
 006683B5    mov         edx,dword ptr [ebp-28]
 006683B8    call        DynArrayIndex
 006683BD    mov         dword ptr [ebp-2C],eax
 006683C0    mov         eax,dword ptr [ebp-18]
 006683C3    cmp         eax,0A
>006683C6    jg          00668406
>006683C8    je          006684E7
 006683CE    cmp         eax,9
>006683D1    ja          00668568
 006683D7    jmp         dword ptr [eax*4+6683DE]
 006683D7    dd          00668568
 006683D7    dd          00668568
 006683D7    dd          00668456
 006683D7    dd          00668469
 006683D7    dd          0066847B
 006683D7    dd          0066848E
 006683D7    dd          006684A1
 006683D7    dd          006684B4
 006683D7    dd          006684C7
 006683D7    dd          006684D7
 00668406    cmp         eax,11
>00668409    jg          00668436
>0066840B    je          0066852F
 00668411    sub         eax,0B
>00668414    je          006684F6
 0066841A    dec         eax
>0066841B    je          00668506
 00668421    dec         eax
>00668422    je          00668513
 00668428    sub         eax,3
>0066842B    je          00668520
>00668431    jmp         00668568
 00668436    sub         eax,12
>00668439    je          0066853E
 0066843F    dec         eax
>00668440    je          0066854E
 00668446    sub         eax,0ED
>0066844B    je          0066855D
>00668451    jmp         00668568
 00668456    lea         eax,[ebp-40]
 00668459    call        0066D52C
 0066845E    mov         edx,dword ptr [ebp-2C]
 00668461    mov         word ptr [edx],ax
>00668464    jmp         00668568
 00668469    lea         eax,[ebp-40]
 0066846C    call        0066D52C
 00668471    mov         edx,dword ptr [ebp-2C]
 00668474    mov         dword ptr [edx],eax
>00668476    jmp         00668568
 0066847B    lea         eax,[ebp-40]
 0066847E    call        0066D544
 00668483    mov         eax,dword ptr [ebp-2C]
 00668486    fstp        dword ptr [eax]
 00668488    wait
>00668489    jmp         00668568
 0066848E    lea         eax,[ebp-40]
 00668491    call        0066D544
 00668496    mov         eax,dword ptr [ebp-2C]
 00668499    fstp        qword ptr [eax]
 0066849B    wait
>0066849C    jmp         00668568
 006684A1    lea         eax,[ebp-40]
 006684A4    call        0066D54C
 006684A9    mov         eax,dword ptr [ebp-2C]
 006684AC    fistp       qword ptr [eax]
 006684AE    wait
>006684AF    jmp         00668568
 006684B4    lea         eax,[ebp-40]
 006684B7    call        0066D544
 006684BC    mov         eax,dword ptr [ebp-2C]
 006684BF    fstp        qword ptr [eax]
 006684C1    wait
>006684C2    jmp         00668568
 006684C7    mov         eax,dword ptr [ebp-2C]
 006684CA    lea         edx,[ebp-40]
 006684CD    call        0066D55C
>006684D2    jmp         00668568
 006684D7    mov         eax,dword ptr [ebp-2C]
 006684DA    lea         edx,[ebp-40]
 006684DD    call        0066D56C
>006684E2    jmp         00668568
 006684E7    lea         eax,[ebp-40]
 006684EA    call        0066D52C
 006684EF    mov         edx,dword ptr [ebp-2C]
 006684F2    mov         dword ptr [edx],eax
>006684F4    jmp         00668568
 006684F6    lea         eax,[ebp-40]
 006684F9    call        0066D53C
 006684FE    mov         edx,dword ptr [ebp-2C]
 00668501    mov         word ptr [edx],ax
>00668504    jmp         00668568
 00668506    mov         eax,dword ptr [ebp-2C]
 00668509    lea         edx,[ebp-40]
 0066850C    call        @VarCopy
>00668511    jmp         00668568
 00668513    mov         eax,dword ptr [ebp-2C]
 00668516    lea         edx,[ebp-40]
 00668519    call        0066D564
>0066851E    jmp         00668568
 00668520    lea         eax,[ebp-40]
 00668523    call        0066D52C
 00668528    mov         edx,dword ptr [ebp-2C]
 0066852B    mov         byte ptr [edx],al
>0066852D    jmp         00668568
 0066852F    lea         eax,[ebp-40]
 00668532    call        0066D52C
 00668537    mov         edx,dword ptr [ebp-2C]
 0066853A    mov         byte ptr [edx],al
>0066853C    jmp         00668568
 0066853E    lea         eax,[ebp-40]
 00668541    call        0066D52C
 00668546    mov         edx,dword ptr [ebp-2C]
 00668549    mov         word ptr [edx],ax
>0066854C    jmp         00668568
 0066854E    lea         eax,[ebp-40]
 00668551    call        0066D52C
 00668556    mov         edx,dword ptr [ebp-2C]
 00668559    mov         dword ptr [edx],eax
>0066855B    jmp         00668568
 0066855D    mov         eax,dword ptr [ebp-2C]
 00668560    lea         edx,[ebp-40]
 00668563    call        0066D554
 00668568    lea         eax,[ebp-28]
 0066856B    mov         edx,dword ptr [ebp-24]
 0066856E    call        00667DBC
 00668573    test        al,al
>00668575    jne         00668389
 0066857B    mov         eax,dword ptr [ebp-20]
 0066857E    call        @FreeMem
 00668583    xor         eax,eax
 00668585    pop         edx
 00668586    pop         ecx
 00668587    pop         ecx
 00668588    mov         dword ptr fs:[eax],edx
 0066858B    push        6685B3
 00668590    lea         eax,[ebp-40]
 00668593    call        @VarClr
 00668598    lea         eax,[ebp-28]
 0066859B    mov         edx,dword ptr ds:[668F50];TBoundArray
 006685A1    mov         ecx,2
 006685A6    call        @FinalizeArray
 006685AB    ret
>006685AC    jmp         @HandleFinally
>006685B1    jmp         00668590
 006685B3    pop         ebx
 006685B4    mov         esp,ebp
 006685B6    pop         ebp
 006685B7    ret
end;*}

//006685DC
procedure sub_006685DC;
begin
{*
 006685DC    push        ebp
 006685DD    mov         ebp,esp
 006685DF    push        ecx
 006685E0    mov         eax,[006ED2BC];0x0 gvar_006ED2BC:TMultiReadExclusiveWriteSynchronizer
 006685E5    call        TMultiReadExclusiveWriteSynchronizer.BeginWrite
 006685EA    xor         eax,eax
 006685EC    push        ebp
 006685ED    push        66864F
 006685F2    push        dword ptr fs:[eax]
 006685F5    mov         dword ptr fs:[eax],esp
 006685F8    mov         eax,[006ED2B8];0x0 gvar_006ED2B8
 006685FD    call        @DynArrayLength
 00668602    dec         eax
 00668603    cmp         eax,0
>00668606    jl          00668637
 00668608    mov         dword ptr [ebp-4],eax
 0066860B    mov         eax,[006ED2B8];0x0 gvar_006ED2B8
 00668610    mov         edx,dword ptr [ebp-4]
 00668613    mov         eax,dword ptr [eax+edx*4]
 00668616    cmp         eax,dword ptr ds:[6E4D30];0xFFFFFFFF gvar_006E4D30
>0066861C    je          0066862E
 0066861E    mov         eax,[006ED2B8];0x0 gvar_006ED2B8
 00668623    mov         edx,dword ptr [ebp-4]
 00668626    mov         eax,dword ptr [eax+edx*4]
 00668629    call        TObject.Free
 0066862E    dec         dword ptr [ebp-4]
 00668631    cmp         dword ptr [ebp-4],0FFFFFFFF
>00668635    jne         0066860B
 00668637    xor         eax,eax
 00668639    pop         edx
 0066863A    pop         ecx
 0066863B    pop         ecx
 0066863C    mov         dword ptr fs:[eax],edx
 0066863F    push        668656
 00668644    mov         eax,[006ED2BC];0x0 gvar_006ED2BC:TMultiReadExclusiveWriteSynchronizer
 00668649    call        TMultiReadExclusiveWriteSynchronizer.EndWrite
 0066864E    ret
>0066864F    jmp         @HandleFinally
>00668654    jmp         00668644
 00668656    pop         ecx
 00668657    pop         ebp
 00668658    ret
*}
end;

//0066865C
{*procedure sub_0066865C(?:?; ?:?);
begin
 0066865C    push        ebp
 0066865D    mov         ebp,esp
 0066865F    add         esp,0FFFFFFF4
 00668662    mov         dword ptr [ebp-0C],ecx
 00668665    mov         dword ptr [ebp-8],edx
 00668668    mov         dword ptr [ebp-4],eax
 0066866B    mov         eax,dword ptr [ebp-4]
 0066866E    call        006688C4
 00668673    mov         esp,ebp
 00668675    pop         ebp
 00668676    ret         4
end;*}

//0066867C
{*procedure sub_0066867C(?:?; ?:?);
begin
 0066867C    push        ebp
 0066867D    mov         ebp,esp
 0066867F    add         esp,0FFFFFFF0
 00668682    push        ebx
 00668683    mov         dword ptr [ebp-0C],ecx
 00668686    mov         dword ptr [ebp-8],edx
 00668689    mov         dword ptr [ebp-4],eax
 0066868C    lea         edx,[ebp-10]
 0066868F    mov         eax,dword ptr [ebp-0C]
 00668692    mov         ax,word ptr [eax]
 00668695    call        006689A0
 0066869A    test        al,al
>0066869C    je          006686B6
 0066869E    mov         eax,dword ptr [ebp-4]
 006686A1    mov         ax,word ptr [eax+4];TCustomVariantType......FVarType:TVarType
 006686A5    push        eax
 006686A6    mov         ecx,dword ptr [ebp-0C]
 006686A9    mov         edx,dword ptr [ebp-8]
 006686AC    mov         eax,dword ptr [ebp-10]
 006686AF    mov         ebx,dword ptr [eax]
 006686B1    call        dword ptr [ebx+1C]
>006686B4    jmp         006686BE
 006686B6    mov         eax,dword ptr [ebp-4]
 006686B9    call        006688B4
 006686BE    pop         ebx
 006686BF    mov         esp,ebp
 006686C1    pop         ebp
 006686C2    ret
end;*}

//006686C4
{*procedure sub_006686C4(?:?; ?:?; ?:?);
begin
 006686C4    push        ebp
 006686C5    mov         ebp,esp
 006686C7    add         esp,0FFFFFFF0
 006686CA    push        ebx
 006686CB    mov         dword ptr [ebp-0C],ecx
 006686CE    mov         dword ptr [ebp-8],edx
 006686D1    mov         dword ptr [ebp-4],eax
 006686D4    mov         ax,word ptr [ebp+8]
 006686D8    mov         edx,dword ptr [ebp-4]
 006686DB    cmp         ax,word ptr [edx+4];TCustomVariantType.......FVarType:TVarType
>006686DF    je          00668708
 006686E1    lea         edx,[ebp-10]
 006686E4    mov         eax,dword ptr [ebp-0C]
 006686E7    mov         ax,word ptr [eax]
 006686EA    call        006689A0
 006686EF    test        al,al
>006686F1    je          00668708
 006686F3    mov         ax,word ptr [ebp+8]
 006686F7    push        eax
 006686F8    mov         ecx,dword ptr [ebp-0C]
 006686FB    mov         edx,dword ptr [ebp-8]
 006686FE    mov         eax,dword ptr [ebp-10]
 00668701    mov         ebx,dword ptr [eax]
 00668703    call        dword ptr [ebx+1C]
>00668706    jmp         00668710
 00668708    mov         eax,dword ptr [ebp-4]
 0066870B    call        006688B4
 00668710    pop         ebx
 00668711    mov         esp,ebp
 00668713    pop         ebp
 00668714    ret         4
end;*}

//00668718
{*procedure sub_00668718(?:?; ?:?);
begin
 00668718    push        ebp
 00668719    mov         ebp,esp
 0066871B    add         esp,0FFFFFFF4
 0066871E    mov         dword ptr [ebp-0C],ecx
 00668721    mov         dword ptr [ebp-8],edx
 00668724    mov         dword ptr [ebp-4],eax
 00668727    mov         eax,dword ptr [ebp-4]
 0066872A    call        006688C4
 0066872F    mov         esp,ebp
 00668731    pop         ebp
 00668732    ret         4
end;*}

//00668738
{*function sub_00668738(?:?; ?:?; ?:?):?;
begin
 00668738    push        ebp
 00668739    mov         ebp,esp
 0066873B    add         esp,0FFFFFFF0
 0066873E    push        ebx
 0066873F    mov         dword ptr [ebp-0C],ecx
 00668742    mov         dword ptr [ebp-8],edx
 00668745    mov         dword ptr [ebp-4],eax
 00668748    lea         eax,[ebp-0E]
 0066874B    push        eax
 0066874C    mov         ecx,dword ptr [ebp-0C]
 0066874F    mov         edx,dword ptr [ebp-8]
 00668752    mov         eax,dword ptr [ebp-4]
 00668755    mov         ebx,dword ptr [eax]
 00668757    call        dword ptr [ebx+38];TCustomVariantType.sub_00668718
 0066875A    xor         eax,eax
 0066875C    mov         al,byte ptr [ebp-0E]
 0066875F    mov         edx,dword ptr [ebp+8]
 00668762    lea         edx,[edx+edx*2]
 00668765    add         edx,6E4E5C
 0066876B    mov         al,byte ptr [edx+eax-2A]
 0066876F    mov         byte ptr [ebp-0D],al
 00668772    mov         al,byte ptr [ebp-0D]
 00668775    pop         ebx
 00668776    mov         esp,ebp
 00668778    pop         ebp
 00668779    ret         4
end;*}

//0066877C
{*procedure sub_0066877C(?:?; ?:?);
begin
 0066877C    push        ebp
 0066877D    mov         ebp,esp
 0066877F    add         esp,0FFFFFFF0
 00668782    push        ebx
 00668783    mov         dword ptr [ebp-0C],ecx
 00668786    mov         dword ptr [ebp-8],edx
 00668789    mov         dword ptr [ebp-4],eax
 0066878C    lea         ecx,[ebp-0E]
 0066878F    mov         edx,dword ptr [ebp-0C]
 00668792    mov         eax,dword ptr [ebp-4]
 00668795    mov         ebx,dword ptr [eax]
 00668797    call        dword ptr [ebx+0C];TCustomVariantType.sub_00668890
 0066879A    test        al,al
>0066879C    je          006687B3
 0066879E    mov         ax,word ptr [ebp-0E]
 006687A2    push        eax
 006687A3    mov         ecx,dword ptr [ebp-0C]
 006687A6    mov         edx,dword ptr [ebp-8]
 006687A9    mov         eax,dword ptr [ebp-4]
 006687AC    mov         ebx,dword ptr [eax]
 006687AE    call        dword ptr [ebx+1C];TCustomVariantType.sub_006686C4
>006687B1    jmp         006687BB
 006687B3    mov         eax,dword ptr [ebp-4]
 006687B6    call        006688B4
 006687BB    pop         ebx
 006687BC    mov         esp,ebp
 006687BE    pop         ebp
 006687BF    ret
end;*}

//006687C0
destructor TCustomVariantType.Destroy;
begin
{*
 006687C0    push        ebp
 006687C1    mov         ebp,esp
 006687C3    add         esp,0FFFFFFF8
 006687C6    call        @BeforeDestruction
 006687CB    mov         byte ptr [ebp-5],dl
 006687CE    mov         dword ptr [ebp-4],eax
 006687D1    mov         eax,[006ED2BC];0x0 gvar_006ED2BC:TMultiReadExclusiveWriteSynchronizer
 006687D6    call        TMultiReadExclusiveWriteSynchronizer.BeginWrite
 006687DB    xor         eax,eax
 006687DD    push        ebp
 006687DE    push        668825
 006687E3    push        dword ptr fs:[eax]
 006687E6    mov         dword ptr fs:[eax],esp
 006687E9    mov         eax,dword ptr [ebp-4]
 006687EC    cmp         word ptr [eax+4],0
>006687F1    je          0066880D
 006687F3    mov         eax,dword ptr [ebp-4]
 006687F6    movzx       eax,word ptr [eax+4]
 006687FA    mov         edx,dword ptr ds:[6ED2B8];0x0 gvar_006ED2B8
 00668800    mov         ecx,dword ptr ds:[6E4D30];0xFFFFFFFF gvar_006E4D30
 00668806    mov         dword ptr [edx+eax*4-400],ecx
 0066880D    xor         eax,eax
 0066880F    pop         edx
 00668810    pop         ecx
 00668811    pop         ecx
 00668812    mov         dword ptr fs:[eax],edx
 00668815    push        66882C
 0066881A    mov         eax,[006ED2BC];0x0 gvar_006ED2BC:TMultiReadExclusiveWriteSynchronizer
 0066881F    call        TMultiReadExclusiveWriteSynchronizer.EndWrite
 00668824    ret
>00668825    jmp         @HandleFinally
>0066882A    jmp         0066881A
 0066882C    mov         dl,byte ptr [ebp-5]
 0066882F    and         dl,0FC
 00668832    mov         eax,dword ptr [ebp-4]
 00668835    call        TObject.Destroy
 0066883A    cmp         byte ptr [ebp-5],0
>0066883E    jle         00668848
 00668840    mov         eax,dword ptr [ebp-4]
 00668843    call        @ClassDestroy
 00668848    pop         ecx
 00668849    pop         ecx
 0066884A    pop         ebp
 0066884B    ret
*}
end;

//0066884C
{*function sub_0066884C(?:?):?;
begin
 0066884C    push        ebp
 0066884D    mov         ebp,esp
 0066884F    add         esp,0FFFFFFF4
 00668852    mov         dword ptr [ebp-0C],edx
 00668855    mov         dword ptr [ebp-4],eax
 00668858    mov         byte ptr [ebp-5],0
 0066885C    mov         al,byte ptr [ebp-5]
 0066885F    mov         esp,ebp
 00668861    pop         ebp
 00668862    ret
end;*}

//00668864
{*function sub_00668864(?:?; ?:?; ?:?):?;
begin
 00668864    push        ebp
 00668865    mov         ebp,esp
 00668867    add         esp,0FFFFFFF0
 0066886A    mov         dword ptr [ebp-10],ecx
 0066886D    mov         dword ptr [ebp-0C],edx
 00668870    mov         dword ptr [ebp-4],eax
 00668873    mov         eax,dword ptr [ebp+8]
 00668876    mov         edx,dword ptr [ebp-4]
 00668879    mov         dx,word ptr [edx+4];TCustomVariantType........FVarType:TVarType
 0066887D    mov         word ptr [eax],dx
 00668880    mov         byte ptr [ebp-5],1
 00668884    mov         al,byte ptr [ebp-5]
 00668887    mov         esp,ebp
 00668889    pop         ebp
 0066888A    ret         4
end;*}

//00668890
{*function sub_00668890(?:?; ?:?):?;
begin
 00668890    push        ebp
 00668891    mov         ebp,esp
 00668893    add         esp,0FFFFFFF0
 00668896    mov         dword ptr [ebp-8],ecx
 00668899    mov         dword ptr [ebp-10],edx
 0066889C    mov         dword ptr [ebp-4],eax
 0066889F    mov         eax,dword ptr [ebp-8]
 006688A2    mov         word ptr [eax],8
 006688A7    mov         byte ptr [ebp-9],1
 006688AB    mov         al,byte ptr [ebp-9]
 006688AE    mov         esp,ebp
 006688B0    pop         ebp
 006688B1    ret
end;*}

//006688B4
procedure sub_006688B4(?:TCustomVariantType);
begin
{*
 006688B4    push        ebp
 006688B5    mov         ebp,esp
 006688B7    push        ecx
 006688B8    mov         dword ptr [ebp-4],eax
 006688BB    call        VarCastError
 006688C0    pop         ecx
 006688C1    pop         ebp
 006688C2    ret
*}
end;

//006688C4
procedure sub_006688C4(?:TCustomVariantType);
begin
{*
 006688C4    push        ebp
 006688C5    mov         ebp,esp
 006688C7    push        ecx
 006688C8    mov         dword ptr [ebp-4],eax
 006688CB    call        VarInvalidOp
 006688D0    pop         ecx
 006688D1    pop         ebp
 006688D2    ret
*}
end;

//006688D4
procedure sub_006688D4(?:TCustomVariantType);
begin
{*
 006688D4    push        ebp
 006688D5    mov         ebp,esp
 006688D7    push        ecx
 006688D8    mov         dword ptr [ebp-4],eax
 006688DB    call        _DispInvokeError
 006688E0    pop         ecx
 006688E1    pop         ebp
 006688E2    ret
*}
end;

//006688E4
{*function sub_006688E4(?:?; ?:?; ?:?):?;
begin
 006688E4    push        ebp
 006688E5    mov         ebp,esp
 006688E7    add         esp,0FFFFFFF0
 006688EA    mov         dword ptr [ebp-10],ecx
 006688ED    mov         dword ptr [ebp-0C],edx
 006688F0    mov         dword ptr [ebp-4],eax
 006688F3    mov         eax,dword ptr [ebp+8]
 006688F6    mov         edx,dword ptr [ebp-4]
 006688F9    mov         dx,word ptr [edx+4];TCustomVariantType.........FVarType:TVarType
 006688FD    mov         word ptr [eax],dx
 00668900    mov         byte ptr [ebp-5],1
 00668904    mov         al,byte ptr [ebp-5]
 00668907    mov         esp,ebp
 00668909    pop         ebp
 0066890A    ret         4
end;*}

//00668910
{*procedure sub_00668910(?:?; ?:?);
begin
 00668910    push        ebp
 00668911    mov         ebp,esp
 00668913    add         esp,0FFFFFFF4
 00668916    mov         dword ptr [ebp-0C],ecx
 00668919    mov         dword ptr [ebp-8],edx
 0066891C    mov         dword ptr [ebp-4],eax
 0066891F    mov         eax,dword ptr [ebp-4]
 00668922    call        006688C4
 00668927    mov         esp,ebp
 00668929    pop         ebp
 0066892A    ret
end;*}

//0066892C
{*procedure sub_0066892C(?:?; ?:?);
begin
 0066892C    push        ebp
 0066892D    mov         ebp,esp
 0066892F    add         esp,0FFFFFFF4
 00668932    mov         dword ptr [ebp-0C],ecx
 00668935    mov         dword ptr [ebp-8],edx
 00668938    mov         dword ptr [ebp-4],eax
 0066893B    mov         eax,dword ptr [ebp-4]
 0066893E    call        006688D4
 00668943    mov         esp,ebp
 00668945    pop         ebp
 00668946    ret         8
end;*}

//0066894C
{*function sub_0066894C:?;
begin
 0066894C    push        ebp
 0066894D    mov         ebp,esp
 0066894F    push        ecx
 00668950    mov         dword ptr [ebp-4],0FFFFFFFF
 00668957    mov         eax,dword ptr [ebp-4]
 0066895A    pop         ecx
 0066895B    pop         ebp
 0066895C    ret         4
end;*}

//00668960
{*function sub_00668960:?;
begin
 00668960    push        ebp
 00668961    mov         ebp,esp
 00668963    push        ecx
 00668964    mov         dword ptr [ebp-4],0FFFFFFFF
 0066896B    mov         eax,dword ptr [ebp-4]
 0066896E    pop         ecx
 0066896F    pop         ebp
 00668970    ret         4
end;*}

//00668974
{*function sub_00668974(?:?; ?:?):?;
begin
 00668974    push        ebp
 00668975    mov         ebp,esp
 00668977    push        ecx
 00668978    mov         ecx,dword ptr [ebp+10]
 0066897B    mov         edx,dword ptr [ebp+0C]
 0066897E    mov         eax,dword ptr [ebp+8]
 00668981    call        TObject.GetInterface
 00668986    test        al,al
>00668988    je          00668991
 0066898A    xor         eax,eax
 0066898C    mov         dword ptr [ebp-4],eax
>0066898F    jmp         00668998
 00668991    mov         dword ptr [ebp-4],80004002
 00668998    mov         eax,dword ptr [ebp-4]
 0066899B    pop         ecx
 0066899C    pop         ebp
 0066899D    ret         0C
end;*}

//006689A0
{*function sub_006689A0(?:?; ?:?):?;
begin
 006689A0    push        ebp
 006689A1    mov         ebp,esp
 006689A3    add         esp,0FFFFFFF4
 006689A6    mov         dword ptr [ebp-8],edx
 006689A9    mov         word ptr [ebp-2],ax
 006689AD    cmp         dword ptr ds:[6ED2B8],0;gvar_006ED2B8
>006689B4    je          006689C6
 006689B6    cmp         word ptr [ebp-2],100
>006689BC    jb          006689C6
 006689BE    cmp         word ptr [ebp-2],7FF
>006689C4    jbe         006689CA
 006689C6    xor         eax,eax
>006689C8    jmp         006689CC
 006689CA    mov         al,1
 006689CC    mov         byte ptr [ebp-9],al
 006689CF    cmp         byte ptr [ebp-9],0
>006689D3    je          00668A64
 006689D9    mov         eax,[006ED2BC];0x0 gvar_006ED2BC:TMultiReadExclusiveWriteSynchronizer
 006689DE    call        0065E78C
 006689E3    xor         eax,eax
 006689E5    push        ebp
 006689E6    push        668A5D
 006689EB    push        dword ptr fs:[eax]
 006689EE    mov         dword ptr fs:[eax],esp
 006689F1    mov         eax,[006ED2B8];0x0 gvar_006ED2B8
 006689F6    call        @DynArrayLength
 006689FB    movzx       edx,word ptr [ebp-2]
 006689FF    sub         edx,100
 00668A05    cmp         eax,edx
 00668A07    setg        byte ptr [ebp-9]
 00668A0B    cmp         byte ptr [ebp-9],0
>00668A0F    je          00668A45
 00668A11    movzx       eax,word ptr [ebp-2]
 00668A15    mov         edx,dword ptr ds:[6ED2B8];0x0 gvar_006ED2B8
 00668A1B    mov         eax,dword ptr [edx+eax*4-400]
 00668A22    mov         edx,dword ptr [ebp-8]
 00668A25    mov         dword ptr [edx],eax
 00668A27    mov         eax,dword ptr [ebp-8]
 00668A2A    cmp         dword ptr [eax],0
>00668A2D    je          00668A3C
 00668A2F    mov         eax,dword ptr [ebp-8]
 00668A32    mov         eax,dword ptr [eax]
 00668A34    cmp         eax,dword ptr ds:[6E4D30];0xFFFFFFFF gvar_006E4D30
>00668A3A    jne         00668A40
 00668A3C    xor         eax,eax
>00668A3E    jmp         00668A42
 00668A40    mov         al,1
 00668A42    mov         byte ptr [ebp-9],al
 00668A45    xor         eax,eax
 00668A47    pop         edx
 00668A48    pop         ecx
 00668A49    pop         ecx
 00668A4A    mov         dword ptr fs:[eax],edx
 00668A4D    push        668A64
 00668A52    mov         eax,[006ED2BC];0x0 gvar_006ED2BC:TMultiReadExclusiveWriteSynchronizer
 00668A57    call        TMultiReadExclusiveWriteSynchronizer.EndRead
 00668A5C    ret
>00668A5D    jmp         @HandleFinally
>00668A62    jmp         00668A52
 00668A64    mov         al,byte ptr [ebp-9]
 00668A67    mov         esp,ebp
 00668A69    pop         ebp
 00668A6A    ret
end;*}

//00668A6C
{*function sub_00668A6C(?:?; ?:?):?;
begin
 00668A6C    push        ebp
 00668A6D    mov         ebp,esp
 00668A6F    add         esp,0FFFFFEE4
 00668A75    xor         ecx,ecx
 00668A77    mov         dword ptr [ebp-1C],ecx
 00668A7A    mov         dword ptr [ebp-8],edx
 00668A7D    mov         dword ptr [ebp-4],eax
 00668A80    xor         eax,eax
 00668A82    push        ebp
 00668A83    push        668B5A
 00668A88    push        dword ptr fs:[eax]
 00668A8B    mov         dword ptr fs:[eax],esp
 00668A8E    mov         byte ptr [ebp-9],0
 00668A92    mov         eax,[006ED2BC];0x0 gvar_006ED2BC:TMultiReadExclusiveWriteSynchronizer
 00668A97    call        0065E78C
 00668A9C    xor         eax,eax
 00668A9E    push        ebp
 00668A9F    push        668B3D
 00668AA4    push        dword ptr fs:[eax]
 00668AA7    mov         dword ptr fs:[eax],esp
 00668AAA    mov         eax,[006ED2B8];0x0 gvar_006ED2B8
 00668AAF    call        0066DA2C
 00668AB4    test        eax,eax
>00668AB6    jl          00668B25
 00668AB8    inc         eax
 00668AB9    mov         dword ptr [ebp-18],eax
 00668ABC    mov         dword ptr [ebp-10],0
 00668AC3    mov         eax,[006ED2B8];0x0 gvar_006ED2B8
 00668AC8    mov         edx,dword ptr [ebp-10]
 00668ACB    mov         eax,dword ptr [eax+edx*4]
 00668ACE    mov         dword ptr [ebp-14],eax
 00668AD1    cmp         dword ptr [ebp-14],0
>00668AD5    je          00668B1D
 00668AD7    mov         eax,dword ptr [ebp-14]
 00668ADA    cmp         eax,dword ptr ds:[6E4D30];0xFFFFFFFF gvar_006E4D30
>00668AE0    je          00668B1D
 00668AE2    lea         edx,[ebp-11C]
 00668AE8    mov         eax,dword ptr [ebp-14]
 00668AEB    mov         eax,dword ptr [eax]
 00668AED    call        TObject.ClassName
 00668AF2    lea         edx,[ebp-11C]
 00668AF8    lea         eax,[ebp-1C]
 00668AFB    call        @LStrFromString
 00668B00    mov         eax,dword ptr [ebp-1C]
 00668B03    mov         edx,dword ptr [ebp-4]
 00668B06    call        SameText
 00668B0B    test        al,al
>00668B0D    je          00668B1D
 00668B0F    mov         eax,dword ptr [ebp-8]
 00668B12    mov         edx,dword ptr [ebp-14]
 00668B15    mov         dword ptr [eax],edx
 00668B17    mov         byte ptr [ebp-9],1
>00668B1B    jmp         00668B25
 00668B1D    inc         dword ptr [ebp-10]
 00668B20    dec         dword ptr [ebp-18]
>00668B23    jne         00668AC3
 00668B25    xor         eax,eax
 00668B27    pop         edx
 00668B28    pop         ecx
 00668B29    pop         ecx
 00668B2A    mov         dword ptr fs:[eax],edx
 00668B2D    push        668B44
 00668B32    mov         eax,[006ED2BC];0x0 gvar_006ED2BC:TMultiReadExclusiveWriteSynchronizer
 00668B37    call        TMultiReadExclusiveWriteSynchronizer.EndRead
 00668B3C    ret
>00668B3D    jmp         @HandleFinally
>00668B42    jmp         00668B32
 00668B44    xor         eax,eax
 00668B46    pop         edx
 00668B47    pop         ecx
 00668B48    pop         ecx
 00668B49    mov         dword ptr fs:[eax],edx
 00668B4C    push        668B61
 00668B51    lea         eax,[ebp-1C]
 00668B54    call        @LStrClr
 00668B59    ret
>00668B5A    jmp         @HandleFinally
>00668B5F    jmp         00668B51
 00668B61    mov         al,byte ptr [ebp-9]
 00668B64    mov         esp,ebp
 00668B66    pop         ebp
 00668B67    ret
end;*}

//00668B68
{*procedure sub_00668B68(?:?);
begin
 00668B68    push        ebp
 00668B69    mov         ebp,esp
 00668B6B    push        ecx
 00668B6C    mov         dword ptr [ebp-4],eax
 00668B6F    mov         eax,dword ptr [ebp-4]
 00668B72    call        0065FF08
 00668B77    pop         ecx
 00668B78    pop         ebp
 00668B79    ret
end;*}

end.