//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit jpeg;

interface

uses
  SysUtils, Classes, jpeg, Graphics;

type
  TJPEGData = class(TSharedImage)
  public
    FData:TCustomMemoryStream;//f8
    FHeight:Integer;//fC
    FWidth:Integer;//f10
    FGrayscale:Boolean;//f14
    destructor Destroy; virtual;//0068FB98
    procedure v0; virtual;//v0//0068FBC8
  end;
  TJPEGImage = class(TGraphic)
  public
    FImage:TJPEGData;//f28
    FBitmap:TBitmap;//f2C
    FScaledWidth:Integer;//f30
    FScaledHeight:Integer;//f34
    FTempPal:HPALETTE;//f38
    FSmoothing:Boolean;//f3C
    FGrayScale:Boolean;//f3D
    FPixelFormat:TJPEGPixelFormat;//f3E
    FQuality:TJPEGQualityRange;//f3F
    FProgressiveDisplay:Boolean;//f40
    FProgressiveEncoding:Boolean;//f41
    FPerformance:TJPEGPerformance;//f42
    FScale:TJPEGScale;//f43
    FNeedRecalc:Boolean;//f44
    destructor Destroy; virtual;//0068FC40
    procedure AssignTo(Dest:TPersistent); virtual;//v0//0068FD04
    procedure Assign(Source:TPersistent); virtual;//v8//0068FC84
    procedure v10; virtual;//v10//006900F8
    procedure Draw(ACanvas:TCanvas; const Rect:TRect); virtual;//v14//00690488
    function Equals(Graphic:TGraphic):Boolean; virtual;//v18//006904A8
    function GetEmpty:Boolean; virtual;//v1C//00690A40
    function GetHeight:Integer; virtual;//v20//00690AD4
    function GetPalette:HPALETTE; virtual;//v24//00690A6C
    function GetWidth:Integer; virtual;//v2C//00690B00
    procedure ReadData(Stream:TStream); virtual;//v30//00690BC8
    procedure SetHeight(Value:Integer); virtual;//v34//00690D84
    procedure SetPalette(Value:HPALETTE); virtual;//v38//00690DCC
    procedure SetWidth(Value:Integer); virtual;//v40//00690E24
    procedure WriteData(Stream:TStream); virtual;//v44//00690E6C
    constructor Create; virtual;//v48//0068FBCC
    procedure LoadFromStream(Stream:TStream); virtual;//v54//00690B5C
    procedure SaveToStream(Stream:TStream); virtual;//v58//00690D58
    procedure LoadFromClipboardFormat(AFormat:Word; AData:THandle; APalette:HPALETTE); virtual;//v5C//00690B3C
    procedure SaveToClipboardFormat(var AFormat:Word; var AData:THandle; var APalette:HPALETTE); virtual;//v60//00690D2C
    procedure CalcOutputDimensions;//0069006C
    procedure Compress;//00690100
    procedure FreeBitmap;//006904F0
    function GetBitmap:TBitmap;//00690634
    procedure JPEGNeeded;//00690B2C
    procedure NewBitmap;//00690B80
    procedure NewImage;//00690B9C
    procedure ReadStream(Size:Longint; Stream:TStream);//00690BF0
  end;
  EJPEG = class(EInvalidGraphic)
  end;
    procedure sub_0067ED84;//0067ED84
    //function sub_0067EE40(?:?):?;//0067EE40
    //procedure sub_0067EE78(?:?; ?:?);//0067EE78
    //function sub_0067EEA8(?:?; ?:?):?;//0067EEA8
    //procedure sub_0067EEBC(?:?; ?:?);//0067EEBC
    //function sub_0067EF38(?:Single; ?:Extended):?;//0067EF38
    //function sub_0067EF6C:?;//0067EF6C
    //function sub_0067EF74:?;//0067EF74
    //function sub_0067EF79(?:TObject):?;//0067EF79
    //function sub_0067EF81(?:TPersistent; ?:false..true):?;//0067EF81
    procedure jpeg_CreateDecompress(var cinfo:jpeg_decompress_struct; version:Integer; structsize:Integer);//0067F020
    procedure jpeg_destroy_decompress(var cinfo:jpeg_decompress_struct);//0067F0E8
    procedure sub_0067F13C(?:Integer);//0067F13C
    procedure jpeg_read_header(var cinfo:jpeg_decompress_struct; RequireImage:LongBool);//0067F324
    function jpeg_consume_input(var cinfo:jpeg_decompress_struct):Integer;//0067F390
    function jpeg_has_multiple_scans(var cinfo:jpeg_decompress_struct):LongBool;//0067F470
    function jpeg_finish_decompress(var cinfo:jpeg_decompress_struct):LongBool;//0067F4A4
    procedure ;//0067F554
    //function sub_0067F568(?:Extended; ?:Single; ?:?):?;//0067F568
    //function sub_0067F698(?:Extended; ?:Single; ?:Integer):?;//0067F698
    //function sub_0067F738(?:?; ?:?; ?:?; ?:?):?;//0067F738
    //function sub_0067F80C(?:?; ?:?; ?:?; ?:?):?;//0067F80C
    //procedure sub_0067FB54(?:Single; ?:?; ?:?);//0067FB54
    //procedure sub_0067FC00(?:Single; ?:?; ?:?);//0067FC00
    //procedure sub_0067FF48(?:?; ?:?);//0067FF48
    procedure @jinit_memory_mgr;//00680084
    procedure @jpeg_get_small;//00680170
    procedure @jpeg_free_small;//00680178
    procedure @jpeg_get_large;//00680180
    procedure @jpeg_free_large;//00680188
    procedure @jpeg_mem_available;//00680190
    procedure @jpeg_open_backing_store;//0068019C
    procedure @jpeg_mem_init;//006801AC
    procedure @jpeg_mem_term;//006801B0
    procedure ;//006801B4
    //procedure sub_00680380(?:?);//00680380
    //procedure sub_0068050C(?:?);//0068050C
    //procedure sub_006805A4(?:?);//006805A4
    procedure @jinit_input_controller;//006806D4
    procedure ;//0068071C
    //procedure sub_00680728(?:?);//00680728
    procedure jpeg_stdio_src(var cinfo:jpeg_decompress_struct; input_file:TStream);//006807C8
    function jpeg_start_decompress(var cinfo:jpeg_decompress_struct):LongBool;//00680834
    //function sub_006808FC(?:Integer):?;//006808FC
    function jpeg_read_scanlines(var cinfo:jpeg_decompress_struct; scanlines:JSAMPARRAY; max_lines:Cardinal):Cardinal;//006809BC
    function jpeg_start_output(var cinfo:jpeg_decompress_struct; scan_number:Integer):LongBool;//00680AF8
    function jpeg_finish_output(var cinfo:jpeg_decompress_struct):LongBool;//00680B58
    procedure ;//00680BE0
    procedure jpeg_calc_output_dimensions(var cinfo:jpeg_decompress_struct);//00680C70
    //procedure sub_00680E60(?:?);//00680E60
    //function sub_00680EFC(?:?):?;//00680EFC
    procedure @jinit_master_decompress;//006812EC
    procedure ;//00681324
    //function sub_006815C8(?:?):?;//006815C8
    procedure @jinit_phuff_decoder;//0068207C
    procedure ;//006820F0
    procedure @jpeg_make_d_derived_tbl;//00682210
    procedure @jpeg_fill_bit_buffer;//00682428
    procedure @jpeg_huff_decode;//00682538
    //function sub_0068263C(?:?):?;//0068263C
    procedure @jinit_huff_decoder;//00682B40
    procedure ;//00682B80
    procedure @jinit_merged_upsampler;//006830EC
    procedure ;//0068316C
    procedure @jinit_color_deconverter;//0068354C
    procedure ;//00683718
    //function sub_00683810(?:?; ?:?; ?:?; ?:?):?;//00683810
    //procedure sub_00683834(?:?; ?:?; ?:?; ?:?);//00683834
    //procedure sub_00683858(?:?);//00683858
    //procedure sub_00683A0C(?:?);//00683A0C
    //function sub_00683B7C(?:?; ?:?):?;//00683B7C
    //procedure sub_00683C1C(?:?);//00683C1C
    //function sub_006841B0(?:?):?;//006841B0
    procedure @jinit_1pass_quantizer;//006842E0
    procedure ;//00684374
    //function sub_006843F8(?:Single; ?:?):?;//006843F8
    //function sub_00684424(?:Single; ?:?):?;//00684424
    //procedure sub_0068444C(?:Integer; ?:?);//0068444C
    //function sub_0068481C(?:?; ?:?; ?:?; ?:?):?;//0068481C
    //procedure sub_00684938(?:?; ?:?; ?:?);//00684938
    //function sub_00684A7C(?:?; ?:?):?;//00684A7C
    //function sub_00684B14(?:Integer; ?:?; ?:?; ?:?; ?:?):?;//00684B14
    //procedure sub_00684D54(?:Integer; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00684D54
    //procedure sub_00684ECC(?:Single; ?:?; ?:?; ?:?);//00684ECC
    //function sub_0068537C(?:?):?;//0068537C
    procedure @jinit_2pass_quantizer;//00685560
    procedure ;//00685680
    //procedure sub_00685748(?:?);//00685748
    //procedure sub_00685890(?:?);//00685890
    //procedure sub_0068598C(?:?);//0068598C
    procedure @jinit_d_main_controller;//00685C78
    procedure ;//00685D58
    //function sub_00686404(?:?):?;//00686404
    procedure @jinit_d_coef_controller;//00686CE4
    procedure ;//00686DF8
    procedure @jinit_d_post_controller;//00687058
    procedure ;//006870EC
    procedure @jinit_inverse_dct;//00687340
    procedure ;//006873BC
    procedure @jinit_upsampler;//006878A0
    procedure @jpeg_idct_4x4;//00687AB8
    procedure @jpeg_idct_2x2;//00687E4C
    procedure @jpeg_idct_1x1;//00688028
    procedure ;//00688064
    //function sub_0068810C(?:?; ?:?; ?:?):?;//0068810C
    //function sub_0068848C(?:?):?;//0068848C
    //function sub_00688C28(?:?):?;//00688C28
    //function sub_00688DBC(?:?):?;//00688DBC
    //function sub_006890DC(?:?):?;//006890DC
    //function sub_00689360(?:?):?;//00689360
    //function sub_0068944C(?:?):?;//0068944C
    //function sub_006894E0(?:?):?;//006894E0
    //function sub_006895F4(?:?):?;//006895F4
    procedure @jpeg_resync_to_restart;//00689A30
    //function sub_00689B2C(?:?):?;//00689B2C
    procedure @jinit_marker_reader;//00689B5C
    procedure @jround_up;//00689BC8
    procedure @jcopy_sample_rows;//00689BE0
    procedure @jcopy_block_row;//00689C2C
    procedure @jpeg_abort;//00689C3C
    procedure jpeg_destroy(var cinfo:jpeg_common_struct);//00689C6C
    procedure @jpeg_alloc_quant_table;//00689C8C
    procedure @jpeg_alloc_huff_table;//00689CA4
    procedure ;//00689CBC
    procedure jpeg_stdio_dest(var cinfo:jpeg_compress_struct; output_file:TStream);//00689D8C
    procedure ;//00689DCC
    //function sub_00689E64(?:?; ?:?; ?:?):?;//00689E64
    //function sub_00689E94(?:?):?;//00689E94
    procedure jpeg_set_quality(var cinfo:jpeg_compress_struct; Quality:Integer; Baseline:LongBool);//00689EC8
    //function sub_00689EE4(?:?; ?:?; ?:?; ?:?):?;//00689EE4
    //procedure sub_00689F34(?:?);//00689F34
    procedure jpeg_set_defaults(var cinfo:jpeg_compress_struct);//00689F8C
    //function sub_0068A07C(?:?):?;//0068A07C
    procedure jpeg_set_colorspace(var cinfo:jpeg_compress_struct; colorspace:J_COLOR_SPACE);//0068A0F0
    //function sub_0068A4A8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0068A4A8
    //function sub_0068A4D0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0068A4D0
    //function sub_0068A50C(?:?; ?:?; ?:?; ?:?):?;//0068A50C
    procedure jpeg_simple_progression(var cinfo:jpeg_compress_struct);//0068A558
    procedure jpeg_start_compress(var cinfo:jpeg_compress_struct; WriteAllTables:LongBool);//0068A73C
    function jpeg_write_scanlines(var cinfo:jpeg_compress_struct; scanlines:JSAMPARRAY; max_lines:Cardinal):Cardinal;//0068A7B0
    procedure jpeg_CreateCompress(var cinfo:jpeg_compress_struct; version:Integer; structsize:Integer);//0068A91C
    procedure @jpeg_suppress_tables;//0068A9E4
    procedure jpeg_finish_compress(var cinfo:jpeg_compress_struct);//0068AA2C
    procedure ;//0068ABB0
    //function sub_0068ABE0(?:?; ?:?):?;//0068ABE0
    //function sub_0068AC00(?:?; ?:?):?;//0068AC00
    //function sub_0068AC2C(?:?; ?:?):?;//0068AC2C
    //procedure sub_0068AD10(?:?; ?:?; ?:?);//0068AD10
    procedure sub_0068ADEC;//0068ADEC
    //procedure sub_0068ADF0(?:?);//0068ADF0
    //function sub_0068AE1C(?:?):?;//0068AE1C
    //procedure sub_0068AEC0(?:?);//0068AEC0
    //procedure sub_0068AF88(?:?);//0068AF88
    //function sub_0068B034(?:?):?;//0068B034
    procedure @jinit_marker_writer;//0068B358
    procedure ;//0068B3A4
    //procedure sub_0068B56C(?:?);//0068B56C
    //procedure sub_0068B954(?:?);//0068B954
    //procedure sub_0068BA44(?:?);//0068BA44
    procedure @jinit_c_master_control;//0068BE14
    procedure ;//0068BEDC
    procedure @jinit_c_main_controller;//0068BFB4
    procedure ;//0068C038
    //procedure sub_0068C074(?:Integer; ?:?; ?:Integer; ?:?);//0068C074
    //function sub_0068C3B4(?:?):?;//0068C3B4
    procedure @jinit_c_prep_controller;//0068C4CC
    procedure ;//0068C574
    //function sub_0068CB14(?:?):?;//0068CB14
    procedure @jinit_c_coef_controller;//0068CCDC
    procedure ;//0068CDA4
    procedure @jinit_color_converter;//0068D1E0
    procedure ;//0068D42C
    //procedure sub_0068D430(?:Integer; ?:?; ?:?; ?:?);//0068D430
    procedure @jinit_downsampler;//0068DBCC
    procedure ;//0068DD54
    procedure @jinit_forward_dct;//0068E1F0
    procedure ;//0068E26C
    //function sub_0068E444(?:?):?;//0068E444
    //function sub_0068E474(?:?; ?:?; ?:?):?;//0068E474
    //procedure sub_0068E510(?:?);//0068E510
    //procedure sub_0068E530(?:?; ?:?; ?:?);//0068E530
    //procedure sub_0068E55C(?:?; ?:?; ?:?);//0068E55C
    //procedure sub_0068E588(?:?);//0068E588
    //procedure sub_0068E5D8(?:?; ?:?);//0068E5D8
    procedure @jinit_phuff_encoder;//0068ED18
    procedure ;//0068ED5C
    procedure @jpeg_make_c_derived_tbl;//0068EF28
    //function sub_0068F02C(?:Integer):?;//0068F02C
    //function sub_0068F054(?:Integer; ?:Integer; ?:Single):?;//0068F054
    //function sub_0068F0FC(?:?):?;//0068F0FC
    //function sub_0068F12C(?:?; ?:?; ?:?; ?:?; ?:?):?;//0068F12C
    //function sub_0068F298(?:?; ?:?):?;//0068F298
    //procedure sub_0068F490(?:?; ?:?; ?:?; ?:?);//0068F490
    procedure @jpeg_gen_optimal_table;//0068F5E0
    procedure @jinit_huff_encoder;//0068F89C
    function _malloc(size:Integer):Pointer; cdecl;//0068F9F8
    procedure _free(P:Pointer); cdecl;//0068FA08
    procedure _memset(P:Pointer; B:Byte; count:Integer); cdecl;//0068FA18
    procedure _memcpy(dest:Pointer; source:Pointer; count:Integer); cdecl;//0068FA30
    function _fread(var buf:void ; recsize:Integer; reccount:Integer; S:TStream):Integer; cdecl;//0068FA44
    function _fwrite(const buf:void ; recsize:Integer; reccount:Integer; S:TStream):Integer; cdecl;//0068FA60
    function _fflush(S:TStream):Integer; cdecl;//0068FA7C
    function __ftol:Integer;//0068FA84
    procedure InvalidOperation(const Msg:AnsiString);//0068FAF0
    procedure JpegError(cinfo:j_common_ptr);//0068FB08
    procedure ResetErrorMgr(cinfo:j_common_ptr);//0068FB88
    destructor Destroy;//0068FB98
    procedure sub_0068FBC8;//0068FBC8
    constructor Create;//0068FBCC
    destructor Destroy;//0068FC40
    procedure Assign(Source:TPersistent);//0068FC84
    procedure AssignTo(Dest:TPersistent);//0068FD04
    procedure ProgressCallback(const cinfo:jpeg_common_struct);//0068FD3C
    procedure ReleaseContext(var jc:TJPEGContext);//0068FE30
    procedure InitDecompressor(Obj:TJPEGImage; var jc:TJPEGContext);//0068FE54
    procedure sub_006900F8;//006900F8
    procedure Draw(ACanvas:TCanvas; const Rect:TRect);//00690488
    function Equals(Graphic:TGraphic):Boolean;//006904A8
    function BuildPalette(const cinfo:jpeg_decompress_struct):HPALETTE;//00690504
    procedure BuildColorMap(var cinfo:jpeg_decompress_struct; P:HPALETTE);//006905AC
    function GetEmpty:Boolean;//00690A40
    function GetPalette:HPALETTE;//00690A6C
    function GetHeight:Integer;//00690AD4
    function GetWidth:Integer;//00690B00
    procedure LoadFromClipboardFormat(AFormat:Word; AData:THandle; APalette:HPALETTE);//00690B3C
    procedure LoadFromStream(Stream:TStream);//00690B5C
    procedure ReadData(Stream:TStream);//00690BC8
    procedure SaveToClipboardFormat(var AFormat:Word; var AData:THandle; var APalette:HPALETTE);//00690D2C
    procedure SaveToStream(Stream:TStream);//00690D58
    procedure SetHeight(Value:Integer);//00690D84
    procedure SetPalette(Value:HPALETTE);//00690DCC
    procedure SetWidth(Value:Integer);//00690E24
    procedure WriteData(Stream:TStream);//00690E6C
    procedure InitDefaults;//00690EBC
    procedure @jpeg_idct_float;//00690EFC
    procedure @jpeg_idct_ifast;//0069132C
    procedure @jinit_compress_master;//00691738
    procedure @jpeg_fdct_ifast;//006917E8
    procedure @jpeg_fdct_float;//00691A54

implementation

//0067ED84
procedure sub_0067ED84;
begin
{*
 0067ED84    push        ebp
 0067ED85    mov         ebp,esp
 0067ED87    add         esp,0FFFFFFD0
 0067ED8A    mov         eax,6E9200
 0067ED8F    call        0066FECC
 0067ED94    mov         word ptr [ebp-20],8
 0067ED9A    mov         edx,6E91C0
 0067ED9F    lea         eax,[ebp-4]
 0067EDA2    call        0067DAB4
 0067EDA7    inc         dword ptr [ebp-14]
 0067EDAA    lea         edx,[ebp-4]
 0067EDAD    mov         eax,[006EA2F8];^^gvar_00651CF4
 0067EDB2    call        0067DCD0
 0067EDB7    dec         dword ptr [ebp-14]
 0067EDBA    lea         eax,[ebp-4]
 0067EDBD    mov         edx,2
 0067EDC2    call        0067DCA0
 0067EDC7    mov         word ptr [ebp-20],14
 0067EDCD    mov         edx,6E91C6
 0067EDD2    lea         eax,[ebp-8]
 0067EDD5    call        0067DAB4
 0067EDDA    inc         dword ptr [ebp-14]
 0067EDDD    lea         edx,[ebp-8]
 0067EDE0    mov         eax,[006EA2F8];^^gvar_00651CF4
 0067EDE5    add         eax,4
 0067EDE8    call        0067DCD0
 0067EDED    dec         dword ptr [ebp-14]
 0067EDF0    lea         eax,[ebp-8]
 0067EDF3    mov         edx,2
 0067EDF8    call        0067DCA0
 0067EDFD    mov         word ptr [ebp-20],20
 0067EE03    mov         edx,6E91CB
 0067EE08    lea         eax,[ebp-0C]
 0067EE0B    call        0067DAB4
 0067EE10    inc         dword ptr [ebp-14]
 0067EE13    lea         edx,[ebp-0C]
 0067EE16    mov         eax,[006EA040];^gvar_006E491C
 0067EE1B    call        0067DCD0
 0067EE20    dec         dword ptr [ebp-14]
 0067EE23    lea         eax,[ebp-0C]
 0067EE26    mov         edx,2
 0067EE2B    call        0067DCA0
 0067EE30    mov         ecx,dword ptr [ebp-30]
 0067EE33    mov         dword ptr fs:[0],ecx
 0067EE3A    mov         esp,ebp
 0067EE3C    pop         ebp
 0067EE3D    ret
*}
end;

//0067EE40
{*function sub_0067EE40(?:?):?;
begin
 0067EE40    push        ebp
 0067EE41    mov         ebp,esp
 0067EE43    add         esp,0FFFFFFD8
 0067EE46    push        ebx
 0067EE47    mov         dword ptr [ebp-4],eax
 0067EE4A    mov         eax,6E923C
 0067EE4F    call        0066FECC
 0067EE54    mov         word ptr [ebp-18],8
 0067EE5A    mov         eax,dword ptr [ebp-4]
 0067EE5D    xor         ecx,ecx
 0067EE5F    mov         dword ptr [eax],ecx
 0067EE61    call        @WStrFromPWChar
 0067EE66    mov         edx,dword ptr [ebp-28]
 0067EE69    mov         dword ptr fs:[0000],edx
 0067EE6F    mov         eax,dword ptr [ebp-4]
 0067EE72    pop         ebx
 0067EE73    mov         esp,ebp
 0067EE75    pop         ebp
 0067EE76    ret
end;*}

//0067EE78
{*procedure sub_0067EE78(?:?; ?:?);
begin
 0067EE78    push        ebp
 0067EE79    mov         ebp,esp
 0067EE7B    push        ecx
 0067EE7C    push        ebx
 0067EE7D    push        esi
 0067EE7E    mov         esi,edx
 0067EE80    mov         dword ptr [ebp-4],eax
 0067EE83    cmp         dword ptr [ebp-4],0
>0067EE87    je          0067EEA2
 0067EE89    mov         eax,dword ptr [ebp-4]
 0067EE8C    call        @WStrClr
 0067EE91    test        esi,1
>0067EE97    je          0067EEA2
 0067EE99    push        dword ptr [ebp-4]
 0067EE9C    call        0066EAB0
 0067EEA1    pop         ecx
 0067EEA2    pop         esi
 0067EEA3    pop         ebx
 0067EEA4    pop         ecx
 0067EEA5    pop         ebp
 0067EEA6    ret
end;*}

//0067EEA8
{*function sub_0067EEA8(?:?; ?:?):?;
begin
 0067EEA8    push        ebp
 0067EEA9    mov         ebp,esp
 0067EEAB    push        ebx
 0067EEAC    push        esi
 0067EEAD    mov         esi,eax
 0067EEAF    mov         edx,dword ptr [edx]
 0067EEB1    call        @WStrAsg
 0067EEB6    mov         eax,esi
 0067EEB8    pop         esi
 0067EEB9    pop         ebx
 0067EEBA    pop         ebp
 0067EEBB    ret
end;*}

//0067EEBC
{*procedure sub_0067EEBC(?:?; ?:?);
begin
 0067EEBC    push        ebp
 0067EEBD    mov         ebp,esp
 0067EEBF    add         esp,0FFFFFFCC
 0067EEC2    push        ebx
 0067EEC3    mov         dword ptr [ebp-8],edx
 0067EEC6    mov         ebx,eax
 0067EEC8    mov         eax,6E927C
 0067EECD    call        0066FECC
 0067EED2    mov         word ptr [ebp-1C],8
 0067EED8    lea         eax,[ebp-34]
 0067EEDB    mov         edx,ebx
 0067EEDD    call        0067EF38
 0067EEE2    push        dword ptr [eax+4]
 0067EEE5    push        dword ptr [eax]
 0067EEE7    lea         eax,[ebp-4]
 0067EEEA    call        00401EA8
 0067EEEF    inc         dword ptr [ebp-10]
 0067EEF2    call        00659A40
 0067EEF7    lea         edx,[ebp-4]
 0067EEFA    mov         eax,dword ptr [ebp-8]
 0067EEFD    call        0067DCD0
 0067EF02    mov         eax,dword ptr [ebp-8]
 0067EF05    mov         word ptr [ebp-1C],14
 0067EF0B    push        eax
 0067EF0C    dec         dword ptr [ebp-10]
 0067EF0F    lea         eax,[ebp-4]
 0067EF12    mov         edx,2
 0067EF17    call        0067DCA0
 0067EF1C    pop         eax
 0067EF1D    mov         word ptr [ebp-1C],8
 0067EF23    inc         dword ptr [ebp-10]
 0067EF26    mov         edx,dword ptr [ebp-2C]
 0067EF29    mov         dword ptr fs:[0],edx
 0067EF30    pop         ebx
 0067EF31    mov         esp,ebp
 0067EF33    pop         ebp
 0067EF34    ret
end;*}

//0067EF38
{*function sub_0067EF38(?:Single; ?:Extended):?;
begin
 0067EF38    push        ebp
 0067EF39    mov         ebp,esp
 0067EF3B    add         esp,0FFFFFFDC
 0067EF3E    push        ebx
 0067EF3F    push        esi
 0067EF40    mov         esi,edx
 0067EF42    mov         ebx,eax
 0067EF44    mov         eax,6E929C
 0067EF49    call        0066FECC
 0067EF4E    mov         edx,dword ptr [esi]
 0067EF50    mov         dword ptr [ebx],edx
 0067EF52    mov         edx,dword ptr [esi+4]
 0067EF55    mov         dword ptr [ebx+4],edx
 0067EF58    mov         ecx,dword ptr [ebp-24]
 0067EF5B    mov         dword ptr fs:[0],ecx
 0067EF62    mov         eax,ebx
 0067EF64    pop         esi
 0067EF65    pop         ebx
 0067EF66    mov         esp,ebp
 0067EF68    pop         ebp
 0067EF69    ret
end;*}

//0067EF6C
{*function sub_0067EF6C:?;
begin
 0067EF6C    push        edx
 0067EF6D    push        ecx
 0067EF6E    call        dword ptr [eax-0C]
 0067EF71    pop         ecx
 0067EF72    pop         edx
 0067EF73    ret
end;*}

//0067EF74
{*function sub_0067EF74:?;
begin
 0067EF74    mov         edx,dword ptr [eax]
 0067EF76    jmp         dword ptr [edx-8]
end;*}

//0067EF79
{*function sub_0067EF79(?:TObject):?;
begin
 0067EF79    push        eax
 0067EF7A    mov         edx,dword ptr [eax]
 0067EF7C    call        dword ptr [edx-1C]
 0067EF7F    pop         eax
 0067EF80    ret
end;*}

//0067EF81
{*function sub_0067EF81(?:TPersistent; ?:false..true):?;
begin
 0067EF81    test        dl,dl
>0067EF83    jg          0067EF86
 0067EF85    ret
 0067EF86    push        eax
 0067EF87    push        edx
 0067EF88    mov         edx,dword ptr [eax]
 0067EF8A    call        dword ptr [edx-18];TPersistent.BeforeDestruction
 0067EF8D    pop         edx
 0067EF8E    pop         eax
 0067EF8F    ret
end;*}

//0067F020
procedure jpeg_CreateDecompress(var cinfo:jpeg_decompress_struct; version:Integer; structsize:Integer);
begin
{*
 0067F020    push        ebx
 0067F021    mov         ebx,eax
 0067F023    xor         eax,eax
 0067F025    push        esi
 0067F026    mov         esi,ecx
 0067F028    mov         dword ptr [ebx+4],eax
 0067F02B    cmp         edx,3D
>0067F02E    je          0067F049
 0067F030    mov         eax,dword ptr [ebx]
 0067F032    mov         dword ptr [eax+14],0A
 0067F039    mov         dword ptr [eax+18],3D
 0067F040    mov         dword ptr [eax+1C],edx
 0067F043    mov         eax,ebx
 0067F045    mov         edx,dword ptr [eax]
 0067F047    call        dword ptr [edx]
 0067F049    cmp         esi,1C8
>0067F04F    je          0067F06A
 0067F051    mov         eax,dword ptr [ebx]
 0067F053    mov         dword ptr [eax+14],13
 0067F05A    mov         dword ptr [eax+18],1C8
 0067F061    mov         dword ptr [eax+1C],esi
 0067F064    mov         eax,ebx
 0067F066    mov         edx,dword ptr [eax]
 0067F068    call        dword ptr [edx]
 0067F06A    mov         esi,dword ptr [ebx]
 0067F06C    push        1C8
 0067F071    push        0
 0067F073    push        ebx
 0067F074    call        _memset
 0067F079    add         esp,0C
 0067F07C    mov         dword ptr [ebx],esi
 0067F07E    mov         dword ptr [ebx+0C],1
 0067F085    mov         eax,ebx
 0067F087    call        @jinit_memory_mgr
 0067F08C    xor         edx,edx
 0067F08E    mov         dword ptr [ebx+8],edx
 0067F091    xor         ecx,ecx
 0067F093    mov         dword ptr [ebx+14],ecx
 0067F096    push        10
 0067F098    push        0
 0067F09A    lea         eax,[ebx+0A0]
 0067F0A0    push        eax
 0067F0A1    call        _memset
 0067F0A6    add         esp,0C
 0067F0A9    lea         edx,[ebx+0B0]
 0067F0AF    push        10
 0067F0B1    push        0
 0067F0B3    push        edx
 0067F0B4    call        _memset
 0067F0B9    add         esp,0C
 0067F0BC    lea         ecx,[ebx+0C0]
 0067F0C2    push        10
 0067F0C4    push        0
 0067F0C6    push        ecx
 0067F0C7    call        _memset
 0067F0CC    add         esp,0C
 0067F0CF    mov         eax,ebx
 0067F0D1    call        @jinit_marker_reader
 0067F0D6    mov         eax,ebx
 0067F0D8    call        @jinit_input_controller
 0067F0DD    mov         dword ptr [ebx+10],0C8
 0067F0E4    pop         esi
 0067F0E5    pop         ebx
 0067F0E6    ret
*}
end;

//0067F0E8
procedure jpeg_destroy_decompress(var cinfo:jpeg_decompress_struct);
begin
{*
 0067F0E8    call        jpeg_destroy
 0067F0ED    ret
*}
end;

//0067F13C
procedure sub_0067F13C(?:Integer);
begin
{*
 0067F13C    push        ebx
 0067F13D    mov         ebx,eax
 0067F13F    push        esi
 0067F140    mov         eax,dword ptr [ebx+20]
 0067F143    dec         eax
>0067F144    je          0067F157
 0067F146    sub         eax,2
>0067F149    je          0067F16A
 0067F14B    dec         eax
>0067F14C    je          0067F249
>0067F152    jmp         0067F2AC
 0067F157    mov         dword ptr [ebx+24],1
 0067F15E    mov         dword ptr [ebx+28],1
>0067F165    jmp         0067F2B6
 0067F16A    cmp         dword ptr [ebx+114],0
>0067F171    je          0067F17F
 0067F173    mov         dword ptr [ebx+24],3
>0067F17A    jmp         0067F240
 0067F17F    cmp         dword ptr [ebx+120],0
>0067F186    je          0067F1D6
 0067F188    mov         dl,byte ptr [ebx+124]
 0067F18E    sub         dl,1
>0067F191    jb          0067F197
>0067F193    je          0067F1A3
>0067F195    jmp         0067F1AF
 0067F197    mov         dword ptr [ebx+24],2
>0067F19E    jmp         0067F240
 0067F1A3    mov         dword ptr [ebx+24],3
>0067F1AA    jmp         0067F240
 0067F1AF    mov         eax,dword ptr [ebx]
 0067F1B1    xor         edx,edx
 0067F1B3    mov         dword ptr [eax+14],6E
 0067F1BA    mov         dl,byte ptr [ebx+124]
 0067F1C0    mov         dword ptr [eax+18],edx
 0067F1C3    mov         eax,ebx
 0067F1C5    or          edx,0FFFFFFFF
 0067F1C8    mov         ecx,dword ptr [eax]
 0067F1CA    call        dword ptr [ecx+4]
 0067F1CD    mov         dword ptr [ebx+24],3
>0067F1D4    jmp         0067F240
 0067F1D6    mov         ecx,dword ptr [ebx+0D4]
 0067F1DC    mov         eax,dword ptr [ecx]
 0067F1DE    mov         edx,dword ptr [ecx+54]
 0067F1E1    mov         ecx,dword ptr [ecx+0A8]
 0067F1E7    cmp         eax,1
>0067F1EA    jne         0067F1FF
 0067F1EC    cmp         edx,2
>0067F1EF    jne         0067F1FF
 0067F1F1    cmp         ecx,3
>0067F1F4    jne         0067F1FF
 0067F1F6    mov         dword ptr [ebx+24],3
>0067F1FD    jmp         0067F240
 0067F1FF    cmp         eax,52
>0067F202    jne         0067F217
 0067F204    cmp         edx,47
>0067F207    jne         0067F217
 0067F209    cmp         ecx,42
>0067F20C    jne         0067F217
 0067F20E    mov         dword ptr [ebx+24],2
>0067F215    jmp         0067F240
 0067F217    mov         esi,dword ptr [ebx]
 0067F219    add         esi,18
 0067F21C    mov         dword ptr [esi],eax
 0067F21E    mov         dword ptr [esi+4],edx
 0067F221    mov         dword ptr [esi+8],ecx
 0067F224    mov         eax,dword ptr [ebx]
 0067F226    mov         dword ptr [eax+14],6B
 0067F22D    mov         edx,1
 0067F232    mov         eax,ebx
 0067F234    mov         ecx,dword ptr [eax]
 0067F236    call        dword ptr [ecx+4]
 0067F239    mov         dword ptr [ebx+24],3
 0067F240    mov         dword ptr [ebx+28],2
>0067F247    jmp         0067F2B6
 0067F249    cmp         dword ptr [ebx+120],0
>0067F250    je          0067F29C
 0067F252    mov         dl,byte ptr [ebx+124]
 0067F258    sub         dl,1
>0067F25B    jb          0067F263
 0067F25D    dec         dl
>0067F25F    je          0067F26C
>0067F261    jmp         0067F275
 0067F263    mov         dword ptr [ebx+24],4
>0067F26A    jmp         0067F2A3
 0067F26C    mov         dword ptr [ebx+24],5
>0067F273    jmp         0067F2A3
 0067F275    mov         eax,dword ptr [ebx]
 0067F277    xor         edx,edx
 0067F279    mov         dword ptr [eax+14],6E
 0067F280    mov         dl,byte ptr [ebx+124]
 0067F286    mov         dword ptr [eax+18],edx
 0067F289    mov         eax,ebx
 0067F28B    or          edx,0FFFFFFFF
 0067F28E    mov         ecx,dword ptr [eax]
 0067F290    call        dword ptr [ecx+4]
 0067F293    mov         dword ptr [ebx+24],5
>0067F29A    jmp         0067F2A3
 0067F29C    mov         dword ptr [ebx+24],4
 0067F2A3    mov         dword ptr [ebx+28],4
>0067F2AA    jmp         0067F2B6
 0067F2AC    xor         eax,eax
 0067F2AE    xor         edx,edx
 0067F2B0    mov         dword ptr [ebx+24],eax
 0067F2B3    mov         dword ptr [ebx+28],edx
 0067F2B6    mov         dword ptr [ebx+2C],1
 0067F2BD    mov         dword ptr [ebx+30],1
 0067F2C4    xor         ecx,ecx
 0067F2C6    xor         eax,eax
 0067F2C8    mov         dword ptr [ebx+34],ecx
 0067F2CB    xor         edx,edx
 0067F2CD    mov         dword ptr [ebx+38],3FF00000
 0067F2D4    mov         dword ptr [ebx+3C],eax
 0067F2D7    mov         dword ptr [ebx+40],edx
 0067F2DA    xor         ecx,ecx
 0067F2DC    xor         eax,eax
 0067F2DE    mov         dword ptr [ebx+44],ecx
 0067F2E1    xor         edx,edx
 0067F2E3    mov         dword ptr [ebx+48],1
 0067F2EA    mov         dword ptr [ebx+4C],1
 0067F2F1    mov         dword ptr [ebx+50],eax
 0067F2F4    xor         ecx,ecx
 0067F2F6    mov         dword ptr [ebx+54],2
 0067F2FD    mov         dword ptr [ebx+58],1
 0067F304    mov         dword ptr [ebx+5C],100
 0067F30B    mov         dword ptr [ebx+84],edx
 0067F311    xor         eax,eax
 0067F313    mov         dword ptr [ebx+60],ecx
 0067F316    mov         dword ptr [ebx+64],eax
 0067F319    xor         edx,edx
 0067F31B    mov         dword ptr [ebx+68],edx
 0067F31E    pop         esi
 0067F31F    pop         ebx
 0067F320    ret
*}
end;

//0067F324
procedure jpeg_read_header(var cinfo:jpeg_decompress_struct; RequireImage:LongBool);
begin
{*
 0067F324    push        ebx
 0067F325    mov         ebx,eax
 0067F327    push        esi
 0067F328    mov         esi,edx
 0067F32A    mov         eax,dword ptr [ebx+10]
 0067F32D    cmp         eax,0C8
>0067F332    je          0067F350
 0067F334    cmp         eax,0C9
>0067F339    je          0067F350
 0067F33B    mov         eax,dword ptr [ebx]
 0067F33D    mov         dword ptr [eax+14],12
 0067F344    mov         edx,dword ptr [ebx+10]
 0067F347    mov         dword ptr [eax+18],edx
 0067F34A    mov         eax,ebx
 0067F34C    mov         edx,dword ptr [eax]
 0067F34E    call        dword ptr [edx]
 0067F350    mov         eax,ebx
 0067F352    call        jpeg_consume_input
 0067F357    mov         edx,eax
 0067F359    sub         edx,1
>0067F35C    jb          0067F38B
>0067F35E    je          0067F365
 0067F360    dec         edx
>0067F361    je          0067F36C
>0067F363    jmp         0067F38B
 0067F365    mov         eax,1
>0067F36A    jmp         0067F38B
 0067F36C    test        esi,esi
>0067F36E    je          0067F37F
 0067F370    mov         edx,dword ptr [ebx]
 0067F372    mov         eax,ebx
 0067F374    mov         dword ptr [edx+14],32
 0067F37B    mov         edx,dword ptr [eax]
 0067F37D    call        dword ptr [edx]
 0067F37F    mov         eax,ebx
 0067F381    call        @jpeg_abort
 0067F386    mov         eax,2
 0067F38B    pop         esi
 0067F38C    pop         ebx
 0067F38D    ret
*}
end;

//0067F390
function jpeg_consume_input(var cinfo:jpeg_decompress_struct):Integer;
begin
{*
 0067F390    push        ebx
 0067F391    mov         ebx,eax
 0067F393    push        esi
 0067F394    xor         esi,esi
 0067F396    mov         eax,dword ptr [ebx+10]
 0067F399    add         eax,0FFFFFF38
 0067F39E    cmp         eax,0A
>0067F3A1    ja          0067F41F
 0067F3A3    mov         al,byte ptr [eax+67F3B0]
 0067F3A9    jmp         dword ptr [eax*4+67F3BB]
 0067F3A9    db          4
 0067F3A9    db          3
 0067F3A9    db          2
 0067F3A9    db          1
 0067F3A9    db          1
 0067F3A9    db          1
 0067F3A9    db          1
 0067F3A9    db          1
 0067F3A9    db          1
 0067F3A9    db          0
 0067F3A9    db          1
 0067F3A9    dd          0067F41F
 0067F3A9    dd          0067F411
 0067F3A9    dd          0067F40A
 0067F3A9    dd          0067F3E9
 0067F3A9    dd          0067F3CF
 0067F3CF    mov         eax,ebx
 0067F3D1    mov         edx,dword ptr [eax+1AC]
 0067F3D7    call        dword ptr [edx+4]
 0067F3DA    mov         eax,ebx
 0067F3DC    mov         edx,dword ptr [eax+14]
 0067F3DF    call        dword ptr [edx+8]
 0067F3E2    mov         dword ptr [ebx+10],0C9
 0067F3E9    mov         eax,ebx
 0067F3EB    mov         edx,dword ptr [eax+1AC]
 0067F3F1    call        dword ptr [edx]
 0067F3F3    mov         esi,eax
 0067F3F5    cmp         esi,1
>0067F3F8    jne         0067F434
 0067F3FA    mov         eax,ebx
 0067F3FC    call        0067F13C
 0067F401    mov         dword ptr [ebx+10],0CA
>0067F408    jmp         0067F434
 0067F40A    mov         esi,1
>0067F40F    jmp         0067F434
 0067F411    mov         eax,ebx
 0067F413    mov         edx,dword ptr [eax+1AC]
 0067F419    call        dword ptr [edx]
 0067F41B    mov         esi,eax
>0067F41D    jmp         0067F434
 0067F41F    mov         eax,dword ptr [ebx]
 0067F421    mov         dword ptr [eax+14],12
 0067F428    mov         edx,dword ptr [ebx+10]
 0067F42B    mov         dword ptr [eax+18],edx
 0067F42E    mov         eax,ebx
 0067F430    mov         edx,dword ptr [eax]
 0067F432    call        dword ptr [edx]
 0067F434    mov         eax,esi
 0067F436    pop         esi
 0067F437    pop         ebx
 0067F438    ret
*}
end;

//0067F470
function jpeg_has_multiple_scans(var cinfo:jpeg_decompress_struct):LongBool;
begin
{*
 0067F470    push        ebx
 0067F471    mov         ebx,eax
 0067F473    mov         eax,dword ptr [ebx+10]
 0067F476    cmp         eax,0CA
>0067F47B    jl          0067F484
 0067F47D    cmp         eax,0D2
>0067F482    jle         0067F499
 0067F484    mov         eax,dword ptr [ebx]
 0067F486    mov         dword ptr [eax+14],12
 0067F48D    mov         edx,dword ptr [ebx+10]
 0067F490    mov         dword ptr [eax+18],edx
 0067F493    mov         eax,ebx
 0067F495    mov         edx,dword ptr [eax]
 0067F497    call        dword ptr [edx]
 0067F499    mov         ecx,dword ptr [ebx+1AC]
 0067F49F    mov         eax,dword ptr [ecx+10]
 0067F4A2    pop         ebx
 0067F4A3    ret
*}
end;

//0067F4A4
function jpeg_finish_decompress(var cinfo:jpeg_decompress_struct):LongBool;
begin
{*
 0067F4A4    push        ebx
 0067F4A5    mov         ebx,eax
 0067F4A7    mov         eax,dword ptr [ebx+10]
 0067F4AA    cmp         eax,0CD
>0067F4AF    je          0067F4B8
 0067F4B1    cmp         eax,0CE
>0067F4B6    jne         0067F4EC
 0067F4B8    cmp         dword ptr [ebx+3C],0
>0067F4BC    jne         0067F4EC
 0067F4BE    mov         edx,dword ptr [ebx+88]
 0067F4C4    cmp         edx,dword ptr [ebx+70]
>0067F4C7    jae         0067F4D8
 0067F4C9    mov         ecx,dword ptr [ebx]
 0067F4CB    mov         eax,ebx
 0067F4CD    mov         dword ptr [ecx+14],42
 0067F4D4    mov         edx,dword ptr [eax]
 0067F4D6    call        dword ptr [edx]
 0067F4D8    mov         eax,ebx
 0067F4DA    mov         edx,dword ptr [eax+19C]
 0067F4E0    call        dword ptr [edx+4]
 0067F4E3    mov         dword ptr [ebx+10],0D2
>0067F4EA    jmp         0067F530
 0067F4EC    cmp         dword ptr [ebx+10],0CF
>0067F4F3    jne         0067F4FE
 0067F4F5    mov         dword ptr [ebx+10],0D2
>0067F4FC    jmp         0067F530
 0067F4FE    cmp         dword ptr [ebx+10],0D2
>0067F505    je          0067F530
 0067F507    mov         eax,dword ptr [ebx]
 0067F509    mov         dword ptr [eax+14],12
 0067F510    mov         edx,dword ptr [ebx+10]
 0067F513    mov         dword ptr [eax+18],edx
 0067F516    mov         eax,ebx
 0067F518    mov         edx,dword ptr [eax]
 0067F51A    call        dword ptr [edx]
>0067F51C    jmp         0067F530
 0067F51E    mov         eax,ebx
 0067F520    mov         edx,dword ptr [eax+1AC]
 0067F526    call        dword ptr [edx]
 0067F528    test        eax,eax
>0067F52A    jne         0067F530
 0067F52C    xor         eax,eax
 0067F52E    pop         ebx
 0067F52F    ret
 0067F530    mov         edx,dword ptr [ebx+1AC]
 0067F536    cmp         dword ptr [edx+14],0
>0067F53A    je          0067F51E
 0067F53C    mov         eax,ebx
 0067F53E    mov         edx,dword ptr [eax+14]
 0067F541    call        dword ptr [edx+18]
 0067F544    mov         eax,ebx
 0067F546    call        @jpeg_abort
 0067F54B    mov         eax,1
 0067F550    pop         ebx
 0067F551    ret
*}
end;

//0067F554
procedure _DF_.;
begin
{*
 0067F554    mov         ecx,dword ptr [eax]
 0067F556    mov         dword ptr [ecx+14],35
 0067F55D    mov         dword ptr [ecx+18],edx
 0067F560    mov         edx,dword ptr [eax]
 0067F562    call        dword ptr [edx]
 0067F564    ret
*}
end;

//0067F568
{*function sub_0067F568(?:Extended; ?:Single; ?:?):?;
begin
 0067F568    push        ebx
 0067F569    push        esi
 0067F56A    push        edi
 0067F56B    push        ebp
 0067F56C    add         esp,0FFFFFFF4
 0067F56F    mov         edi,eax
 0067F571    mov         esi,ecx
 0067F573    cmp         esi,3B9AC9F4
 0067F579    mov         dword ptr [esp],edx
 0067F57C    mov         eax,dword ptr [edi+4]
 0067F57F    mov         dword ptr [esp+4],eax
>0067F583    jbe         0067F591
 0067F585    mov         edx,1
 0067F58A    mov         eax,edi
 0067F58C    call        _DF_.
 0067F591    mov         eax,esi
 0067F593    and         eax,7
 0067F596    test        eax,eax
>0067F598    jbe         0067F5A3
 0067F59A    mov         edx,8
 0067F59F    sub         edx,eax
 0067F5A1    add         esi,edx
 0067F5A3    cmp         dword ptr [esp],0
>0067F5A7    jl          0067F5AF
 0067F5A9    cmp         dword ptr [esp],2
>0067F5AD    jl          0067F5C4
 0067F5AF    mov         eax,dword ptr [edi]
 0067F5B1    mov         dword ptr [eax+14],0C
 0067F5B8    mov         edx,dword ptr [esp]
 0067F5BB    mov         dword ptr [eax+18],edx
 0067F5BE    mov         eax,edi
 0067F5C0    mov         edx,dword ptr [eax]
 0067F5C2    call        dword ptr [edx]
 0067F5C4    mov         eax,dword ptr [esp+4]
 0067F5C8    mov         edx,dword ptr [esp]
 0067F5CB    xor         ebp,ebp
 0067F5CD    mov         eax,dword ptr [eax+edx*4+30]
 0067F5D1    test        eax,eax
>0067F5D3    je          0067F5E2
 0067F5D5    cmp         esi,dword ptr [eax+8]
>0067F5D8    jbe         0067F5E2
 0067F5DA    mov         ebp,eax
 0067F5DC    mov         eax,dword ptr [eax]
 0067F5DE    test        eax,eax
>0067F5E0    jne         0067F5D5
 0067F5E2    test        eax,eax
>0067F5E4    jne         0067F681
 0067F5EA    lea         eax,[esi+0C]
 0067F5ED    test        ebp,ebp
 0067F5EF    mov         dword ptr [esp+8],eax
>0067F5F3    jne         0067F601
 0067F5F5    mov         edx,dword ptr [esp]
 0067F5F8    mov         ebx,dword ptr [edx*4+6E92A4]
>0067F5FF    jmp         0067F60B
 0067F601    mov         eax,dword ptr [esp]
 0067F604    mov         ebx,dword ptr [eax*4+6E92AC]
 0067F60B    mov         eax,3B9ACA00
 0067F610    sub         eax,dword ptr [esp+8]
 0067F614    cmp         ebx,eax
>0067F616    jbe         0067F61A
 0067F618    mov         ebx,eax
 0067F61A    mov         edx,dword ptr [esp+8]
 0067F61E    mov         eax,edi
 0067F620    add         edx,ebx
 0067F622    call        @jpeg_get_small
 0067F627    test        eax,eax
>0067F629    jne         0067F64B
 0067F62B    mov         ecx,2
 0067F630    mov         eax,ebx
 0067F632    xor         edx,edx
 0067F634    div         eax,ecx
 0067F636    mov         ebx,eax
 0067F638    cmp         ebx,32
>0067F63B    jae         0067F61A
 0067F63D    mov         edx,2
 0067F642    mov         eax,edi
 0067F644    call        _DF_.
>0067F649    jmp         0067F61A
 0067F64B    mov         edx,dword ptr [esp+4]
 0067F64F    mov         ecx,dword ptr [esp+8]
 0067F653    add         ecx,ebx
 0067F655    add         ebx,esi
 0067F657    add         ecx,dword ptr [edx+48]
 0067F65A    mov         edx,dword ptr [esp+4]
 0067F65E    mov         dword ptr [edx+48],ecx
 0067F661    xor         ecx,ecx
 0067F663    xor         edx,edx
 0067F665    mov         dword ptr [eax],ecx
 0067F667    mov         dword ptr [eax+4],edx
 0067F66A    mov         dword ptr [eax+8],ebx
 0067F66D    test        ebp,ebp
>0067F66F    jne         0067F67E
 0067F671    mov         edx,dword ptr [esp+4]
 0067F675    mov         ecx,dword ptr [esp]
 0067F678    mov         dword ptr [edx+ecx*4+30],eax
>0067F67C    jmp         0067F681
 0067F67E    mov         dword ptr [ebp],eax
 0067F681    lea         edx,[eax+0C]
 0067F684    add         edx,dword ptr [eax+4]
 0067F687    add         dword ptr [eax+4],esi
 0067F68A    sub         dword ptr [eax+8],esi
 0067F68D    mov         eax,edx
 0067F68F    add         esp,0C
 0067F692    pop         ebp
 0067F693    pop         edi
 0067F694    pop         esi
 0067F695    pop         ebx
 0067F696    ret
end;*}

//0067F698
{*function sub_0067F698(?:Extended; ?:Single; ?:Integer):?;
begin
 0067F698    push        ebx
 0067F699    push        esi
 0067F69A    push        edi
 0067F69B    push        ebp
 0067F69C    mov         ebp,eax
 0067F69E    push        ecx
 0067F69F    mov         dword ptr [esp],edx
 0067F6A2    mov         esi,ecx
 0067F6A4    cmp         esi,3B9AC9F4
 0067F6AA    mov         edi,dword ptr [ebp+4]
>0067F6AD    jbe         0067F6BB
 0067F6AF    mov         edx,3
 0067F6B4    mov         eax,ebp
 0067F6B6    call        _DF_.
 0067F6BB    mov         eax,esi
 0067F6BD    and         eax,7
 0067F6C0    test        eax,eax
>0067F6C2    jbe         0067F6CD
 0067F6C4    mov         edx,8
 0067F6C9    sub         edx,eax
 0067F6CB    add         esi,edx
 0067F6CD    cmp         dword ptr [esp],0
>0067F6D1    jl          0067F6D9
 0067F6D3    cmp         dword ptr [esp],2
>0067F6D7    jl          0067F6EF
 0067F6D9    mov         eax,dword ptr [ebp]
 0067F6DC    mov         dword ptr [eax+14],0C
 0067F6E3    mov         edx,dword ptr [esp]
 0067F6E6    mov         dword ptr [eax+18],edx
 0067F6E9    mov         eax,ebp
 0067F6EB    mov         edx,dword ptr [eax]
 0067F6ED    call        dword ptr [edx]
 0067F6EF    lea         edx,[esi+0C]
 0067F6F2    mov         eax,ebp
 0067F6F4    call        @jpeg_get_large
 0067F6F9    mov         ebx,eax
 0067F6FB    test        ebx,ebx
>0067F6FD    jne         0067F70B
 0067F6FF    mov         edx,4
 0067F704    mov         eax,ebp
 0067F706    call        _DF_.
 0067F70B    mov         ecx,dword ptr [edi+48]
 0067F70E    add         ecx,esi
 0067F710    add         ecx,0C
 0067F713    mov         dword ptr [edi+48],ecx
 0067F716    xor         ecx,ecx
 0067F718    mov         eax,dword ptr [esp]
 0067F71B    mov         edx,dword ptr [edi+eax*4+38]
 0067F71F    mov         dword ptr [ebx],edx
 0067F721    mov         dword ptr [ebx+4],esi
 0067F724    mov         dword ptr [ebx+8],ecx
 0067F727    mov         eax,dword ptr [esp]
 0067F72A    mov         dword ptr [edi+eax*4+38],ebx
 0067F72E    lea         eax,[ebx+0C]
 0067F731    pop         edx
 0067F732    pop         ebp
 0067F733    pop         edi
 0067F734    pop         esi
 0067F735    pop         ebx
 0067F736    ret
end;*}

//0067F738
{*function sub_0067F738(?:?; ?:?; ?:?; ?:?):?;
begin
 0067F738    push        ebp
 0067F739    mov         ebp,esp
 0067F73B    add         esp,0FFFFFFE8
 0067F73E    push        ebx
 0067F73F    push        esi
 0067F740    mov         dword ptr [ebp-0C],ecx
 0067F743    mov         dword ptr [ebp-8],edx
 0067F746    mov         dword ptr [ebp-4],eax
 0067F749    xor         edx,edx
 0067F74B    mov         eax,dword ptr [ebp-4]
 0067F74E    mov         esi,dword ptr [eax+4]
 0067F751    mov         eax,3B9AC9F4
 0067F756    div         eax,dword ptr [ebp-0C]
 0067F759    mov         ebx,eax
 0067F75B    test        ebx,ebx
>0067F75D    jg          0067F772
 0067F75F    mov         eax,dword ptr [ebp-4]
 0067F762    mov         edx,dword ptr [eax]
 0067F764    mov         dword ptr [edx+14],45
 0067F76B    mov         eax,dword ptr [ebp-4]
 0067F76E    mov         edx,dword ptr [eax]
 0067F770    call        dword ptr [edx]
 0067F772    cmp         ebx,dword ptr [ebp+8]
>0067F775    jge         0067F77C
 0067F777    mov         dword ptr [ebp-14],ebx
>0067F77A    jmp         0067F782
 0067F77C    mov         ecx,dword ptr [ebp+8]
 0067F77F    mov         dword ptr [ebp-14],ecx
 0067F782    mov         eax,dword ptr [ebp-14]
 0067F785    mov         dword ptr [esi+4C],eax
 0067F788    mov         ecx,dword ptr [ebp+8]
 0067F78B    shl         ecx,2
 0067F78E    mov         edx,dword ptr [ebp-8]
 0067F791    mov         eax,dword ptr [ebp-4]
 0067F794    call        0067F568
 0067F799    mov         dword ptr [ebp-10],eax
 0067F79C    xor         edx,edx
 0067F79E    mov         dword ptr [ebp-18],edx
 0067F7A1    mov         ecx,dword ptr [ebp-18]
 0067F7A4    cmp         ecx,dword ptr [ebp+8]
>0067F7A7    jae         0067F7FE
 0067F7A9    mov         eax,dword ptr [ebp+8]
 0067F7AC    sub         eax,dword ptr [ebp-18]
 0067F7AF    cmp         eax,dword ptr [ebp-14]
>0067F7B2    jbe         0067F7B9
 0067F7B4    mov         edx,dword ptr [ebp-14]
>0067F7B7    jmp         0067F7BF
 0067F7B9    mov         edx,dword ptr [ebp+8]
 0067F7BC    sub         edx,dword ptr [ebp-18]
 0067F7BF    mov         dword ptr [ebp-14],edx
 0067F7C2    mov         ecx,dword ptr [ebp-14]
 0067F7C5    mov         edx,dword ptr [ebp-8]
 0067F7C8    imul        ecx,dword ptr [ebp-0C]
 0067F7CC    mov         eax,dword ptr [ebp-4]
 0067F7CF    call        0067F698
 0067F7D4    mov         edx,eax
 0067F7D6    mov         ecx,dword ptr [ebp-14]
 0067F7D9    mov         eax,dword ptr [ebp-10]
 0067F7DC    mov         ebx,dword ptr [ebp-18]
 0067F7DF    lea         eax,[eax+ebx*4]
 0067F7E2    test        ecx,ecx
>0067F7E4    jbe         0067F7F6
 0067F7E6    mov         dword ptr [eax],edx
 0067F7E8    inc         dword ptr [ebp-18]
 0067F7EB    add         eax,4
 0067F7EE    add         edx,dword ptr [ebp-0C]
 0067F7F1    dec         ecx
 0067F7F2    test        ecx,ecx
>0067F7F4    ja          0067F7E6
 0067F7F6    mov         edx,dword ptr [ebp-18]
 0067F7F9    cmp         edx,dword ptr [ebp+8]
>0067F7FC    jb          0067F7A9
 0067F7FE    mov         eax,dword ptr [ebp-10]
 0067F801    pop         esi
 0067F802    pop         ebx
 0067F803    mov         esp,ebp
 0067F805    pop         ebp
 0067F806    ret         4
end;*}

//0067F80C
{*function sub_0067F80C(?:?; ?:?; ?:?; ?:?):?;
begin
 0067F80C    push        ebp
 0067F80D    mov         ebp,esp
 0067F80F    add         esp,0FFFFFFE8
 0067F812    push        ebx
 0067F813    push        esi
 0067F814    mov         dword ptr [ebp-0C],ecx
 0067F817    mov         dword ptr [ebp-8],edx
 0067F81A    mov         dword ptr [ebp-4],eax
 0067F81D    mov         eax,dword ptr [ebp-4]
 0067F820    mov         esi,dword ptr [eax+4]
 0067F823    mov         eax,dword ptr [ebp-0C]
 0067F826    shl         eax,7
 0067F829    push        eax
 0067F82A    mov         eax,3B9AC9F4
 0067F82F    pop         edx
 0067F830    mov         ecx,edx
 0067F832    xor         edx,edx
 0067F834    div         eax,ecx
 0067F836    mov         ebx,eax
 0067F838    test        ebx,ebx
>0067F83A    jg          0067F84F
 0067F83C    mov         eax,dword ptr [ebp-4]
 0067F83F    mov         edx,dword ptr [eax]
 0067F841    mov         dword ptr [edx+14],45
 0067F848    mov         eax,dword ptr [ebp-4]
 0067F84B    mov         edx,dword ptr [eax]
 0067F84D    call        dword ptr [edx]
 0067F84F    cmp         ebx,dword ptr [ebp+8]
>0067F852    jge         0067F859
 0067F854    mov         dword ptr [ebp-14],ebx
>0067F857    jmp         0067F85F
 0067F859    mov         ecx,dword ptr [ebp+8]
 0067F85C    mov         dword ptr [ebp-14],ecx
 0067F85F    mov         eax,dword ptr [ebp-14]
 0067F862    mov         dword ptr [esi+4C],eax
 0067F865    mov         ecx,dword ptr [ebp+8]
 0067F868    shl         ecx,2
 0067F86B    mov         edx,dword ptr [ebp-8]
 0067F86E    mov         eax,dword ptr [ebp-4]
 0067F871    call        0067F568
 0067F876    mov         dword ptr [ebp-10],eax
 0067F879    xor         edx,edx
 0067F87B    mov         dword ptr [ebp-18],edx
 0067F87E    mov         ecx,dword ptr [ebp-18]
 0067F881    cmp         ecx,dword ptr [ebp+8]
>0067F884    jae         0067F8E3
 0067F886    mov         eax,dword ptr [ebp+8]
 0067F889    sub         eax,dword ptr [ebp-18]
 0067F88C    cmp         eax,dword ptr [ebp-14]
>0067F88F    jbe         0067F896
 0067F891    mov         edx,dword ptr [ebp-14]
>0067F894    jmp         0067F89C
 0067F896    mov         edx,dword ptr [ebp+8]
 0067F899    sub         edx,dword ptr [ebp-18]
 0067F89C    mov         dword ptr [ebp-14],edx
 0067F89F    mov         ecx,dword ptr [ebp-14]
 0067F8A2    imul        ecx,dword ptr [ebp-0C]
 0067F8A6    shl         ecx,7
 0067F8A9    mov         edx,dword ptr [ebp-8]
 0067F8AC    mov         eax,dword ptr [ebp-4]
 0067F8AF    call        0067F698
 0067F8B4    mov         edx,eax
 0067F8B6    mov         ecx,dword ptr [ebp-14]
 0067F8B9    mov         eax,dword ptr [ebp-10]
 0067F8BC    mov         ebx,dword ptr [ebp-18]
 0067F8BF    lea         eax,[eax+ebx*4]
 0067F8C2    test        ecx,ecx
>0067F8C4    jbe         0067F8DB
 0067F8C6    mov         dword ptr [eax],edx
 0067F8C8    inc         dword ptr [ebp-18]
 0067F8CB    add         eax,4
 0067F8CE    mov         ebx,dword ptr [ebp-0C]
 0067F8D1    shl         ebx,7
 0067F8D4    add         edx,ebx
 0067F8D6    dec         ecx
 0067F8D7    test        ecx,ecx
>0067F8D9    ja          0067F8C6
 0067F8DB    mov         eax,dword ptr [ebp-18]
 0067F8DE    cmp         eax,dword ptr [ebp+8]
>0067F8E1    jb          0067F886
 0067F8E3    mov         eax,dword ptr [ebp-10]
 0067F8E6    pop         esi
 0067F8E7    pop         ebx
 0067F8E8    mov         esp,ebp
 0067F8EA    pop         ebp
 0067F8EB    ret         4
end;*}

//0067FB54
{*procedure sub_0067FB54(?:Single; ?:?; ?:?);
begin
 0067FB54    push        ebx
 0067FB55    push        esi
 0067FB56    push        edi
 0067FB57    add         esp,0FFFFFFF0
 0067FB5A    mov         dword ptr [esp+4],ecx
 0067FB5E    mov         ebx,edx
 0067FB60    mov         dword ptr [esp],eax
 0067FB63    mov         eax,dword ptr [ebx+8]
 0067FB66    mov         dword ptr [esp+8],eax
 0067FB6A    mov         edx,dword ptr [ebx+18]
 0067FB6D    imul        edx,dword ptr [esp+8]
 0067FB72    mov         dword ptr [esp+0C],edx
 0067FB76    xor         esi,esi
>0067FB78    jmp         0067FBF1
 0067FB7A    sub         eax,esi
 0067FB7C    cmp         eax,dword ptr [ebx+14]
>0067FB7F    jle         0067FB86
 0067FB81    mov         eax,dword ptr [ebx+14]
>0067FB84    jmp         0067FB8B
 0067FB86    mov         eax,dword ptr [ebx+10]
 0067FB89    sub         eax,esi
 0067FB8B    mov         edx,dword ptr [ebx+18]
 0067FB8E    add         edx,esi
 0067FB90    mov         ecx,dword ptr [ebx+1C]
 0067FB93    sub         ecx,edx
 0067FB95    cmp         eax,ecx
>0067FB97    jl          0067FB9E
 0067FB99    mov         eax,dword ptr [ebx+1C]
 0067FB9C    sub         eax,edx
 0067FB9E    mov         ecx,dword ptr [ebx+4]
 0067FBA1    sub         ecx,edx
 0067FBA3    cmp         eax,ecx
>0067FBA5    jl          0067FBAC
 0067FBA7    mov         eax,dword ptr [ebx+4]
 0067FBAA    sub         eax,edx
 0067FBAC    test        eax,eax
>0067FBAE    jle         0067FBF8
 0067FBB0    mov         edi,eax
 0067FBB2    imul        edi,dword ptr [esp+8]
 0067FBB7    cmp         dword ptr [esp+4],0
>0067FBBC    je          0067FBD5
 0067FBBE    mov         eax,dword ptr [esp+0C]
 0067FBC2    push        eax
 0067FBC3    push        edi
 0067FBC4    mov         edx,dword ptr [ebx]
 0067FBC6    mov         eax,dword ptr [esp+8]
 0067FBCA    mov         ecx,dword ptr [edx+esi*4]
 0067FBCD    lea         edx,[ebx+30]
 0067FBD0    call        dword ptr [ebx+34]
>0067FBD3    jmp         0067FBEA
 0067FBD5    mov         ecx,dword ptr [esp+0C]
 0067FBD9    lea         edx,[ebx+30]
 0067FBDC    push        ecx
 0067FBDD    push        edi
 0067FBDE    mov         eax,dword ptr [ebx]
 0067FBE0    mov         ecx,dword ptr [eax+esi*4]
 0067FBE3    mov         eax,dword ptr [esp+8]
 0067FBE7    call        dword ptr [ebx+30]
 0067FBEA    add         dword ptr [esp+0C],edi
 0067FBEE    add         esi,dword ptr [ebx+14]
 0067FBF1    mov         eax,dword ptr [ebx+10]
 0067FBF4    cmp         esi,eax
>0067FBF6    jl          0067FB7A
 0067FBF8    add         esp,10
 0067FBFB    pop         edi
 0067FBFC    pop         esi
 0067FBFD    pop         ebx
 0067FBFE    ret
end;*}

//0067FC00
{*procedure sub_0067FC00(?:Single; ?:?; ?:?);
begin
 0067FC00    push        ebx
 0067FC01    push        esi
 0067FC02    push        edi
 0067FC03    add         esp,0FFFFFFF0
 0067FC06    mov         dword ptr [esp+4],ecx
 0067FC0A    mov         ebx,edx
 0067FC0C    mov         dword ptr [esp],eax
 0067FC0F    mov         eax,dword ptr [ebx+8]
 0067FC12    shl         eax,7
 0067FC15    mov         dword ptr [esp+8],eax
 0067FC19    mov         edx,dword ptr [ebx+18]
 0067FC1C    imul        edx,dword ptr [esp+8]
 0067FC21    mov         dword ptr [esp+0C],edx
 0067FC25    xor         esi,esi
>0067FC27    jmp         0067FCA0
 0067FC29    sub         eax,esi
 0067FC2B    cmp         eax,dword ptr [ebx+14]
>0067FC2E    jle         0067FC35
 0067FC30    mov         eax,dword ptr [ebx+14]
>0067FC33    jmp         0067FC3A
 0067FC35    mov         eax,dword ptr [ebx+10]
 0067FC38    sub         eax,esi
 0067FC3A    mov         edx,dword ptr [ebx+18]
 0067FC3D    add         edx,esi
 0067FC3F    mov         ecx,dword ptr [ebx+1C]
 0067FC42    sub         ecx,edx
 0067FC44    cmp         eax,ecx
>0067FC46    jl          0067FC4D
 0067FC48    mov         eax,dword ptr [ebx+1C]
 0067FC4B    sub         eax,edx
 0067FC4D    mov         ecx,dword ptr [ebx+4]
 0067FC50    sub         ecx,edx
 0067FC52    cmp         eax,ecx
>0067FC54    jl          0067FC5B
 0067FC56    mov         eax,dword ptr [ebx+4]
 0067FC59    sub         eax,edx
 0067FC5B    test        eax,eax
>0067FC5D    jle         0067FCA7
 0067FC5F    mov         edi,eax
 0067FC61    imul        edi,dword ptr [esp+8]
 0067FC66    cmp         dword ptr [esp+4],0
>0067FC6B    je          0067FC84
 0067FC6D    mov         eax,dword ptr [esp+0C]
 0067FC71    push        eax
 0067FC72    push        edi
 0067FC73    mov         edx,dword ptr [ebx]
 0067FC75    mov         eax,dword ptr [esp+8]
 0067FC79    mov         ecx,dword ptr [edx+esi*4]
 0067FC7C    lea         edx,[ebx+30]
 0067FC7F    call        dword ptr [ebx+34]
>0067FC82    jmp         0067FC99
 0067FC84    mov         ecx,dword ptr [esp+0C]
 0067FC88    lea         edx,[ebx+30]
 0067FC8B    push        ecx
 0067FC8C    push        edi
 0067FC8D    mov         eax,dword ptr [ebx]
 0067FC8F    mov         ecx,dword ptr [eax+esi*4]
 0067FC92    mov         eax,dword ptr [esp+8]
 0067FC96    call        dword ptr [ebx+30]
 0067FC99    add         dword ptr [esp+0C],edi
 0067FC9D    add         esi,dword ptr [ebx+14]
 0067FCA0    mov         eax,dword ptr [ebx+10]
 0067FCA3    cmp         esi,eax
>0067FCA5    jl          0067FC29
 0067FCA7    add         esp,10
 0067FCAA    pop         edi
 0067FCAB    pop         esi
 0067FCAC    pop         ebx
 0067FCAD    ret
end;*}

//0067FF48
{*procedure sub_0067FF48(?:?; ?:?);
begin
 0067FF48    push        ebx
 0067FF49    push        esi
 0067FF4A    push        edi
 0067FF4B    add         esp,0FFFFFFF4
 0067FF4E    mov         dword ptr [esp],edx
 0067FF51    mov         edi,eax
 0067FF53    mov         esi,dword ptr [edi+4]
 0067FF56    cmp         dword ptr [esp],0
>0067FF5A    jl          0067FF62
 0067FF5C    cmp         dword ptr [esp],2
>0067FF60    jl          0067FF77
 0067FF62    mov         eax,dword ptr [edi]
 0067FF64    mov         dword ptr [eax+14],0C
 0067FF6B    mov         edx,dword ptr [esp]
 0067FF6E    mov         dword ptr [eax+18],edx
 0067FF71    mov         eax,edi
 0067FF73    mov         edx,dword ptr [eax]
 0067FF75    call        dword ptr [edx]
 0067FF77    cmp         dword ptr [esp],1
>0067FF7B    jne         0067FFC9
 0067FF7D    mov         ebx,dword ptr [esi+40]
 0067FF80    test        ebx,ebx
>0067FF82    je          0067FF9E
 0067FF84    cmp         dword ptr [ebx+28],0
>0067FF88    je          0067FF97
 0067FF8A    xor         eax,eax
 0067FF8C    lea         edx,[ebx+30]
 0067FF8F    mov         dword ptr [ebx+28],eax
 0067FF92    mov         eax,edi
 0067FF94    call        dword ptr [ebx+38]
 0067FF97    mov         ebx,dword ptr [ebx+2C]
 0067FF9A    test        ebx,ebx
>0067FF9C    jne         0067FF84
 0067FF9E    xor         edx,edx
 0067FFA0    mov         dword ptr [esi+40],edx
 0067FFA3    mov         ebx,dword ptr [esi+44]
 0067FFA6    test        ebx,ebx
>0067FFA8    je          0067FFC4
 0067FFAA    cmp         dword ptr [ebx+28],0
>0067FFAE    je          0067FFBD
 0067FFB0    xor         eax,eax
 0067FFB2    lea         edx,[ebx+30]
 0067FFB5    mov         dword ptr [ebx+28],eax
 0067FFB8    mov         eax,edi
 0067FFBA    call        dword ptr [ebx+38]
 0067FFBD    mov         ebx,dword ptr [ebx+2C]
 0067FFC0    test        ebx,ebx
>0067FFC2    jne         0067FFAA
 0067FFC4    xor         edx,edx
 0067FFC6    mov         dword ptr [esi+44],edx
 0067FFC9    mov         ecx,dword ptr [esp]
 0067FFCC    mov         edx,dword ptr [esp]
 0067FFCF    mov         eax,dword ptr [esi+ecx*4+38]
 0067FFD3    xor         ecx,ecx
 0067FFD5    mov         dword ptr [esi+edx*4+38],ecx
 0067FFD9    test        eax,eax
>0067FFDB    je          00680007
 0067FFDD    mov         edx,dword ptr [eax]
 0067FFDF    mov         dword ptr [esp+4],edx
 0067FFE3    mov         edx,eax
 0067FFE5    mov         ebx,dword ptr [eax+4]
 0067FFE8    add         ebx,dword ptr [eax+8]
 0067FFEB    mov         eax,edi
 0067FFED    add         ebx,0C
 0067FFF0    mov         ecx,ebx
 0067FFF2    call        @jpeg_free_large
 0067FFF7    mov         eax,dword ptr [esi+48]
 0067FFFA    sub         eax,ebx
 0067FFFC    mov         dword ptr [esi+48],eax
 0067FFFF    mov         eax,dword ptr [esp+4]
 00680003    test        eax,eax
>00680005    jne         0067FFDD
 00680007    mov         edx,dword ptr [esp]
 0068000A    mov         eax,dword ptr [esi+edx*4+30]
 0068000E    mov         edx,dword ptr [esp]
 00680011    xor         ecx,ecx
 00680013    mov         dword ptr [esi+edx*4+30],ecx
 00680017    test        eax,eax
>00680019    je          00680045
 0068001B    mov         edx,dword ptr [eax]
 0068001D    mov         dword ptr [esp+8],edx
 00680021    mov         edx,eax
 00680023    mov         ebx,dword ptr [eax+4]
 00680026    add         ebx,dword ptr [eax+8]
 00680029    mov         eax,edi
 0068002B    add         ebx,0C
 0068002E    mov         ecx,ebx
 00680030    call        @jpeg_free_small
 00680035    mov         eax,dword ptr [esi+48]
 00680038    sub         eax,ebx
 0068003A    mov         dword ptr [esi+48],eax
 0068003D    mov         eax,dword ptr [esp+8]
 00680041    test        eax,eax
>00680043    jne         0068001B
 00680045    add         esp,0C
 00680048    pop         edi
 00680049    pop         esi
 0068004A    pop         ebx
 0068004B    ret
end;*}

//00680084
procedure @jinit_memory_mgr;
begin
{*
 00680084    push        ebx
 00680085    push        esi
 00680086    push        edi
 00680087    mov         esi,eax
 00680089    xor         eax,eax
 0068008B    mov         dword ptr [esi+4],eax
>0068008E    jmp         0068009F
 00680090    mov         edx,dword ptr [esi]
 00680092    mov         eax,esi
 00680094    mov         dword ptr [edx+14],2
 0068009B    mov         edx,dword ptr [eax]
 0068009D    call        dword ptr [edx]
 0068009F    mov         eax,3B9ACA00
 006800A4    cmp         eax,3B9ACA00
>006800A9    je          006800BA
 006800AB    mov         edx,dword ptr [esi]
 006800AD    mov         eax,esi
 006800AF    mov         dword ptr [edx+14],3
 006800B6    mov         edx,dword ptr [eax]
 006800B8    call        dword ptr [edx]
 006800BA    mov         eax,esi
 006800BC    call        @jpeg_mem_init
 006800C1    mov         edi,eax
 006800C3    mov         edx,50
 006800C8    mov         eax,esi
 006800CA    call        @jpeg_get_small
 006800CF    mov         ebx,eax
 006800D1    test        ebx,ebx
>006800D3    jne         006800F0
 006800D5    mov         eax,esi
 006800D7    call        @jpeg_mem_term
 006800DC    mov         eax,dword ptr [esi]
 006800DE    xor         edx,edx
 006800E0    mov         dword ptr [eax+14],35
 006800E7    mov         dword ptr [eax+18],edx
 006800EA    mov         eax,esi
 006800EC    mov         edx,dword ptr [eax]
 006800EE    call        dword ptr [edx]
 006800F0    mov         dword ptr [ebx],67F568;sub_0067F568
 006800F6    mov         edx,1
 006800FB    mov         dword ptr [ebx+4],67F698;sub_0067F698
 00680102    mov         dword ptr [ebx+8],67F738;sub_0067F738
 00680109    mov         dword ptr [ebx+0C],67F80C;sub_0067F80C
 00680110    mov         dword ptr [ebx+10],67F8F0
 00680117    mov         dword ptr [ebx+14],67F958
 0068011E    mov         dword ptr [ebx+18],67F9C0
 00680125    mov         dword ptr [ebx+1C],67FCB0
 0068012C    mov         dword ptr [ebx+20],67FDFC
 00680133    mov         dword ptr [ebx+24],67FF48;sub_0067FF48
 0068013A    mov         dword ptr [ebx+28],68004C
 00680141    mov         dword ptr [ebx+2C],edi
 00680144    lea         eax,[ebx+34]
 00680147    xor         ecx,ecx
 00680149    dec         edx
 0068014A    mov         dword ptr [eax],ecx
 0068014C    xor         ecx,ecx
 0068014E    mov         dword ptr [eax+8],ecx
 00680151    add         eax,0FFFFFFFC
 00680154    test        edx,edx
>00680156    jge         00680147
 00680158    xor         eax,eax
 0068015A    xor         edx,edx
 0068015C    mov         dword ptr [ebx+40],eax
 0068015F    mov         dword ptr [ebx+44],edx
 00680162    mov         dword ptr [ebx+48],50
 00680169    mov         dword ptr [esi+4],ebx
 0068016C    pop         edi
 0068016D    pop         esi
 0068016E    pop         ebx
 0068016F    ret
*}
end;

//00680170
procedure @jpeg_get_small;
begin
{*
 00680170    push        edx
 00680171    call        _malloc
 00680176    pop         ecx
 00680177    ret
*}
end;

//00680178
procedure @jpeg_free_small;
begin
{*
 00680178    push        edx
 00680179    call        _free
 0068017E    pop         ecx
 0068017F    ret
*}
end;

//00680180
procedure @jpeg_get_large;
begin
{*
 00680180    push        edx
 00680181    call        _malloc
 00680186    pop         ecx
 00680187    ret
*}
end;

//00680188
procedure @jpeg_free_large;
begin
{*
 00680188    push        edx
 00680189    call        _free
 0068018E    pop         ecx
 0068018F    ret
*}
end;

//00680190
procedure @jpeg_mem_available;
begin
{*
 00680190    push        ebp
 00680191    mov         ebp,esp
 00680193    mov         eax,ecx
 00680195    pop         ebp
 00680196    ret         4
*}
end;

//0068019C
procedure @jpeg_open_backing_store;
begin
{*
 0068019C    mov         edx,dword ptr [eax]
 0068019E    mov         dword ptr [edx+14],30
 006801A5    mov         ecx,dword ptr [eax]
 006801A7    call        dword ptr [ecx]
 006801A9    ret
*}
end;

//006801AC
procedure @jpeg_mem_init;
begin
{*
 006801AC    xor         eax,eax
 006801AE    ret
*}
end;

//006801B0
procedure @jpeg_mem_term;
begin
{*
 006801B0    ret
*}
end;

//006801B4
procedure _DF_.;
begin
{*
 006801B4    push        ebx
 006801B5    mov         ebx,eax
 006801B7    push        esi
 006801B8    push        edi
 006801B9    cmp         dword ptr [ebx+1C],0FFDC
>006801C0    jg          006801CB
 006801C2    cmp         dword ptr [ebx+18],0FFDC
>006801C9    jle         006801E1
 006801CB    mov         eax,dword ptr [ebx]
 006801CD    mov         dword ptr [eax+14],28
 006801D4    mov         dword ptr [eax+18],0FFDC
 006801DB    mov         eax,ebx
 006801DD    mov         edx,dword ptr [eax]
 006801DF    call        dword ptr [edx]
 006801E1    cmp         dword ptr [ebx+0D0],8
>006801E8    je          00680202
 006801EA    mov         eax,dword ptr [ebx]
 006801EC    mov         dword ptr [eax+14],0D
 006801F3    mov         edx,dword ptr [ebx+0D0]
 006801F9    mov         dword ptr [eax+18],edx
 006801FC    mov         eax,ebx
 006801FE    mov         edx,dword ptr [eax]
 00680200    call        dword ptr [edx]
 00680202    cmp         dword ptr [ebx+20],0A
>00680206    jle         00680224
 00680208    mov         eax,dword ptr [ebx]
 0068020A    mov         dword ptr [eax+14],18
 00680211    mov         edx,dword ptr [ebx+20]
 00680214    mov         dword ptr [eax+18],edx
 00680217    mov         dword ptr [eax+1C],0A
 0068021E    mov         eax,ebx
 00680220    mov         edx,dword ptr [eax]
 00680222    call        dword ptr [edx]
 00680224    mov         dword ptr [ebx+12C],1
 0068022E    mov         dword ptr [ebx+130],1
 00680238    xor         edi,edi
 0068023A    mov         esi,dword ptr [ebx+0D4]
>00680240    jmp         006802A5
 00680242    mov         eax,dword ptr [esi+8]
 00680245    test        eax,eax
>00680247    jle         0068025A
 00680249    cmp         eax,4
>0068024C    jg          0068025A
 0068024E    cmp         dword ptr [esi+0C],0
>00680252    jle         0068025A
 00680254    cmp         dword ptr [esi+0C],4
>00680258    jle         00680269
 0068025A    mov         edx,dword ptr [ebx]
 0068025C    mov         eax,ebx
 0068025E    mov         dword ptr [edx+14],10
 00680265    mov         edx,dword ptr [eax]
 00680267    call        dword ptr [edx]
 00680269    mov         ecx,dword ptr [ebx+12C]
 0068026F    cmp         ecx,dword ptr [esi+8]
>00680272    jle         0068027C
 00680274    mov         eax,dword ptr [ebx+12C]
>0068027A    jmp         0068027F
 0068027C    mov         eax,dword ptr [esi+8]
 0068027F    mov         dword ptr [ebx+12C],eax
 00680285    mov         edx,dword ptr [ebx+130]
 0068028B    cmp         edx,dword ptr [esi+0C]
>0068028E    jle         00680298
 00680290    mov         ecx,dword ptr [ebx+130]
>00680296    jmp         0068029B
 00680298    mov         ecx,dword ptr [esi+0C]
 0068029B    mov         dword ptr [ebx+130],ecx
 006802A1    inc         edi
 006802A2    add         esi,54
 006802A5    cmp         edi,dword ptr [ebx+20]
>006802A8    jl          00680242
 006802AA    mov         dword ptr [ebx+134],8
 006802B4    xor         edi,edi
 006802B6    mov         esi,dword ptr [ebx+0D4]
>006802BC    jmp         0068032F
 006802BE    mov         dword ptr [esi+24],8
 006802C5    mov         eax,dword ptr [ebx+18]
 006802C8    mov         ecx,dword ptr [ebx+12C]
 006802CE    imul        dword ptr [esi+8]
 006802D1    shl         ecx,3
 006802D4    inc         edi
 006802D5    add         eax,ecx
 006802D7    dec         eax
 006802D8    cdq
 006802D9    idiv        eax,ecx
 006802DB    mov         dword ptr [esi+1C],eax
 006802DE    mov         eax,dword ptr [ebx+1C]
 006802E1    mov         ecx,dword ptr [ebx+130]
 006802E7    imul        dword ptr [esi+0C]
 006802EA    shl         ecx,3
 006802ED    add         eax,ecx
 006802EF    dec         eax
 006802F0    cdq
 006802F1    idiv        eax,ecx
 006802F3    mov         dword ptr [esi+20],eax
 006802F6    mov         eax,dword ptr [ebx+18]
 006802F9    mov         ecx,dword ptr [ebx+12C]
 006802FF    imul        dword ptr [esi+8]
 00680302    add         eax,ecx
 00680304    dec         eax
 00680305    cdq
 00680306    idiv        eax,ecx
 00680308    mov         dword ptr [esi+28],eax
 0068030B    mov         eax,dword ptr [ebx+1C]
 0068030E    mov         ecx,dword ptr [ebx+130]
 00680314    imul        dword ptr [esi+0C]
 00680317    add         eax,ecx
 00680319    dec         eax
 0068031A    cdq
 0068031B    idiv        eax,ecx
 0068031D    mov         dword ptr [esi+2C],eax
 00680320    xor         eax,eax
 00680322    mov         dword ptr [esi+30],1
 00680329    mov         dword ptr [esi+4C],eax
 0068032C    add         esi,54
 0068032F    cmp         edi,dword ptr [ebx+20]
>00680332    jl          006802BE
 00680334    mov         ecx,dword ptr [ebx+130]
 0068033A    shl         ecx,3
 0068033D    mov         eax,ecx
 0068033F    add         eax,dword ptr [ebx+1C]
 00680342    dec         eax
 00680343    cdq
 00680344    idiv        eax,ecx
 00680346    mov         dword ptr [ebx+138],eax
 0068034C    mov         ecx,dword ptr [ebx+140]
 00680352    cmp         ecx,dword ptr [ebx+20]
>00680355    jl          00680360
 00680357    cmp         dword ptr [ebx+0D8],0
>0068035E    je          0068036F
 00680360    mov         eax,dword ptr [ebx+1AC]
 00680366    mov         dword ptr [eax+10],1
>0068036D    jmp         0068037A
 0068036F    mov         edx,dword ptr [ebx+1AC]
 00680375    xor         ecx,ecx
 00680377    mov         dword ptr [edx+10],ecx
 0068037A    pop         edi
 0068037B    pop         esi
 0068037C    pop         ebx
 0068037D    ret
*}
end;

//00680380
{*procedure sub_00680380(?:?);
begin
 00680380    push        ebx
 00680381    mov         ebx,eax
 00680383    push        esi
 00680384    push        edi
 00680385    push        ecx
 00680386    cmp         dword ptr [ebx+140],1
>0068038D    jne         006803F5
 0068038F    mov         ecx,dword ptr [ebx+144]
 00680395    mov         eax,dword ptr [ecx+1C]
 00680398    mov         dword ptr [ebx+154],eax
 0068039E    mov         edx,dword ptr [ecx+20]
 006803A1    mov         dword ptr [ebx+158],edx
 006803A7    xor         edx,edx
 006803A9    mov         dword ptr [ecx+34],1
 006803B0    mov         dword ptr [ecx+38],1
 006803B7    mov         dword ptr [ecx+3C],1
 006803BE    mov         eax,dword ptr [ecx+24]
 006803C1    mov         dword ptr [ecx+40],eax
 006803C4    mov         dword ptr [ecx+44],1
 006803CB    mov         eax,dword ptr [ecx+20]
 006803CE    mov         esi,dword ptr [ecx+0C]
 006803D1    div         eax,esi
 006803D3    mov         eax,edx
 006803D5    test        eax,eax
>006803D7    jne         006803DB
 006803D9    mov         eax,esi
 006803DB    mov         dword ptr [ecx+48],eax
 006803DE    xor         edx,edx
 006803E0    mov         dword ptr [ebx+15C],1
 006803EA    mov         dword ptr [ebx+160],edx
>006803F0    jmp         00680506
 006803F5    mov         eax,dword ptr [ebx+140]
 006803FB    test        eax,eax
>006803FD    jle         00680404
 006803FF    cmp         eax,4
>00680402    jle         00680423
 00680404    mov         eax,dword ptr [ebx]
 00680406    mov         dword ptr [eax+14],18
 0068040D    mov         edx,dword ptr [ebx+140]
 00680413    mov         dword ptr [eax+18],edx
 00680416    mov         dword ptr [eax+1C],4
 0068041D    mov         eax,ebx
 0068041F    mov         edx,dword ptr [eax]
 00680421    call        dword ptr [edx]
 00680423    mov         ecx,dword ptr [ebx+12C]
 00680429    shl         ecx,3
 0068042C    mov         eax,ecx
 0068042E    add         eax,dword ptr [ebx+18]
 00680431    dec         eax
 00680432    cdq
 00680433    idiv        eax,ecx
 00680435    mov         dword ptr [ebx+154],eax
 0068043B    mov         ecx,dword ptr [ebx+130]
 00680441    shl         ecx,3
 00680444    mov         eax,ecx
 00680446    add         eax,dword ptr [ebx+1C]
 00680449    dec         eax
 0068044A    cdq
 0068044B    idiv        eax,ecx
 0068044D    mov         dword ptr [ebx+158],eax
 00680453    xor         ecx,ecx
 00680455    mov         dword ptr [ebx+15C],ecx
 0068045B    xor         esi,esi
 0068045D    lea         eax,[ebx+144]
 00680463    mov         dword ptr [esp],eax
>00680466    jmp         006804FA
 0068046B    mov         edx,dword ptr [esp]
 0068046E    mov         ecx,dword ptr [edx]
 00680470    mov         eax,dword ptr [ecx+8]
 00680473    mov         dword ptr [ecx+34],eax
 00680476    mov         eax,dword ptr [ecx+0C]
 00680479    mov         dword ptr [ecx+38],eax
 0068047C    mov         edx,dword ptr [ecx+34]
 0068047F    imul        edx,eax
 00680482    mov         dword ptr [ecx+3C],edx
 00680485    mov         eax,dword ptr [ecx+34]
 00680488    imul        dword ptr [ecx+24]
 0068048B    mov         dword ptr [ecx+40],eax
 0068048E    xor         edx,edx
 00680490    mov         eax,dword ptr [ecx+1C]
 00680493    mov         edi,dword ptr [ecx+34]
 00680496    div         eax,edi
 00680498    mov         eax,edx
 0068049A    test        eax,eax
>0068049C    jne         006804A0
 0068049E    mov         eax,edi
 006804A0    mov         dword ptr [ecx+44],eax
 006804A3    xor         edx,edx
 006804A5    mov         eax,dword ptr [ecx+20]
 006804A8    mov         edi,dword ptr [ecx+38]
 006804AB    div         eax,edi
 006804AD    mov         eax,edx
 006804AF    test        eax,eax
>006804B1    jne         006804B5
 006804B3    mov         eax,edi
 006804B5    mov         dword ptr [ecx+48],eax
 006804B8    mov         edi,dword ptr [ecx+3C]
 006804BB    mov         eax,dword ptr [ebx+15C]
 006804C1    add         eax,edi
 006804C3    cmp         eax,0A
>006804C6    jle         006804EC
 006804C8    mov         edx,dword ptr [ebx]
 006804CA    mov         eax,ebx
 006804CC    mov         dword ptr [edx+14],0B
 006804D3    mov         edx,dword ptr [eax]
 006804D5    call        dword ptr [edx]
>006804D7    jmp         006804EC
 006804D9    mov         ecx,dword ptr [ebx+15C]
 006804DF    inc         dword ptr [ebx+15C]
 006804E5    mov         dword ptr [ebx+ecx*4+160],esi
 006804EC    mov         eax,edi
 006804EE    add         edi,0FFFFFFFF
 006804F1    test        eax,eax
>006804F3    jg          006804D9
 006804F5    inc         esi
 006804F6    add         dword ptr [esp],4
 006804FA    cmp         esi,dword ptr [ebx+140]
>00680500    jl          0068046B
 00680506    pop         edx
 00680507    pop         edi
 00680508    pop         esi
 00680509    pop         ebx
 0068050A    ret
end;*}

//0068050C
{*procedure sub_0068050C(?:?);
begin
 0068050C    push        ebx
 0068050D    push        esi
 0068050E    push        edi
 0068050F    push        ebp
 00680510    add         esp,0FFFFFFF8
 00680513    mov         ebx,eax
 00680515    xor         eax,eax
 00680517    mov         dword ptr [esp],eax
 0068051A    lea         edx,[ebx+144]
 00680520    mov         dword ptr [esp+4],edx
>00680524    jmp         0068058F
 00680526    mov         ecx,dword ptr [esp+4]
 0068052A    mov         esi,dword ptr [ecx]
 0068052C    cmp         dword ptr [esi+4C],0
>00680530    jne         00680587
 00680532    mov         edi,dword ptr [esi+10]
 00680535    test        edi,edi
>00680537    jl          00680548
 00680539    cmp         edi,4
>0068053C    jge         00680548
 0068053E    cmp         dword ptr [ebx+edi*4+0A0],0
>00680546    jne         0068055A
 00680548    mov         eax,dword ptr [ebx]
 0068054A    mov         dword ptr [eax+14],33
 00680551    mov         dword ptr [eax+18],edi
 00680554    mov         eax,ebx
 00680556    mov         edx,dword ptr [eax]
 00680558    call        dword ptr [edx]
 0068055A    mov         eax,ebx
 0068055C    mov         ecx,84
 00680561    mov         edx,1
 00680566    mov         ebp,dword ptr [eax+4]
 00680569    call        dword ptr [ebp]
 0068056C    mov         ebp,eax
 0068056E    push        84
 00680573    mov         eax,dword ptr [ebx+edi*4+0A0]
 0068057A    push        eax
 0068057B    push        ebp
 0068057C    call        _memcpy
 00680581    add         esp,0C
 00680584    mov         dword ptr [esi+4C],ebp
 00680587    inc         dword ptr [esp]
 0068058A    add         dword ptr [esp+4],4
 0068058F    mov         edx,dword ptr [esp]
 00680592    cmp         edx,dword ptr [ebx+140]
>00680598    jl          00680526
 0068059A    pop         ecx
 0068059B    pop         edx
 0068059C    pop         ebp
 0068059D    pop         edi
 0068059E    pop         esi
 0068059F    pop         ebx
 006805A0    ret
end;*}

//006805A4
{*procedure sub_006805A4(?:?);
begin
 006805A4    push        ebx
 006805A5    mov         ebx,eax
 006805A7    mov         eax,ebx
 006805A9    call        00680380
 006805AE    mov         eax,ebx
 006805B0    call        0068050C
 006805B5    mov         eax,ebx
 006805B7    mov         edx,dword ptr [eax+1B4]
 006805BD    call        dword ptr [edx]
 006805BF    mov         eax,ebx
 006805C1    mov         edx,dword ptr [eax+1A4]
 006805C7    call        dword ptr [edx]
 006805C9    mov         ecx,dword ptr [ebx+1A4]
 006805CF    mov         edx,dword ptr [ebx+1AC]
 006805D5    mov         eax,dword ptr [ecx+4]
 006805D8    mov         dword ptr [edx],eax
 006805DA    pop         ebx
 006805DB    ret
end;*}

//006806D4
procedure @jinit_input_controller;
begin
{*
 006806D4    push        ebx
 006806D5    mov         ebx,eax
 006806D7    mov         eax,ebx
 006806D9    push        esi
 006806DA    mov         ecx,1C
 006806DF    xor         edx,edx
 006806E1    mov         esi,dword ptr [eax+4]
 006806E4    call        dword ptr [esi]
 006806E6    mov         dword ptr [ebx+1AC],eax
 006806EC    mov         dword ptr [eax],6805EC
 006806F2    mov         dword ptr [eax+4],680698
 006806F9    mov         dword ptr [eax+8],6805A4;sub_006805A4
 00680700    mov         dword ptr [eax+0C],6805DC
 00680707    xor         edx,edx
 00680709    xor         ecx,ecx
 0068070B    mov         dword ptr [eax+10],edx
 0068070E    mov         dword ptr [eax+14],ecx
 00680711    mov         dword ptr [eax+18],1
 00680718    pop         esi
 00680719    pop         ebx
 0068071A    ret
*}
end;

//0068071C
procedure _DF_.;
begin
{*
 0068071C    mov         eax,dword ptr [eax+14]
 0068071F    mov         dword ptr [eax+24],1
 00680726    ret
*}
end;

//00680728
{*procedure sub_00680728(?:?);
begin
 00680728    push        ebx
 00680729    push        esi
 0068072A    mov         esi,eax
 0068072C    mov         ebx,dword ptr [esi+14]
 0068072F    mov         eax,dword ptr [ebx+1C]
 00680732    push        eax
 00680733    push        1000
 00680738    push        1
 0068073A    mov         edx,dword ptr [ebx+20]
 0068073D    push        edx
 0068073E    call        _fread
 00680743    add         esp,10
 00680746    test        eax,eax
>00680748    ja          00680781
 0068074A    cmp         dword ptr [ebx+24],0
>0068074E    je          0068075F
 00680750    mov         ecx,dword ptr [esi]
 00680752    mov         eax,esi
 00680754    mov         dword ptr [ecx+14],29
 0068075B    mov         edx,dword ptr [eax]
 0068075D    call        dword ptr [edx]
 0068075F    mov         ecx,dword ptr [esi]
 00680761    mov         eax,esi
 00680763    or          edx,0FFFFFFFF
 00680766    mov         dword ptr [ecx+14],74
 0068076D    mov         ecx,dword ptr [eax]
 0068076F    call        dword ptr [ecx+4]
 00680772    mov         eax,dword ptr [ebx+20]
 00680775    mov         byte ptr [eax],0FF
 00680778    mov         byte ptr [eax+1],0D9
 0068077C    mov         eax,2
 00680781    mov         edx,dword ptr [ebx+20]
 00680784    xor         ecx,ecx
 00680786    mov         dword ptr [ebx],edx
 00680788    mov         dword ptr [ebx+4],eax
 0068078B    mov         eax,1
 00680790    mov         dword ptr [ebx+24],ecx
 00680793    pop         esi
 00680794    pop         ebx
 00680795    ret
end;*}

//006807C8
procedure jpeg_stdio_src(var cinfo:jpeg_decompress_struct; input_file:TStream);
begin
{*
 006807C8    push        ebx
 006807C9    push        esi
 006807CA    mov         esi,eax
 006807CC    push        edi
 006807CD    push        ebp
 006807CE    mov         edi,edx
 006807D0    cmp         dword ptr [esi+14],0
>006807D4    jne         006807FB
 006807D6    mov         eax,esi
 006807D8    mov         ecx,28
 006807DD    xor         edx,edx
 006807DF    mov         ebx,dword ptr [eax+4]
 006807E2    call        dword ptr [ebx]
 006807E4    mov         ebx,eax
 006807E6    mov         eax,esi
 006807E8    mov         dword ptr [esi+14],ebx
 006807EB    mov         ecx,1000
 006807F0    mov         ebp,dword ptr [eax+4]
 006807F3    xor         edx,edx
 006807F5    call        dword ptr [ebp]
 006807F8    mov         dword ptr [ebx+20],eax
 006807FB    mov         ebx,dword ptr [esi+14]
 006807FE    xor         eax,eax
 00680800    xor         edx,edx
 00680802    mov         dword ptr [ebx+8],68071C;_DF_.
 00680809    mov         dword ptr [ebx+0C],680728;sub_00680728
 00680810    mov         dword ptr [ebx+10],680798
 00680817    mov         dword ptr [ebx+14],689A30;@jpeg_resync_to_restart
 0068081E    mov         dword ptr [ebx+18],6807C4
 00680825    mov         dword ptr [ebx+1C],edi
 00680828    mov         dword ptr [ebx+4],eax
 0068082B    mov         dword ptr [ebx],edx
 0068082D    pop         ebp
 0068082E    pop         edi
 0068082F    pop         esi
 00680830    pop         ebx
 00680831    ret
*}
end;

//00680834
function jpeg_start_decompress(var cinfo:jpeg_decompress_struct):LongBool;
begin
{*
 00680834    push        ebx
 00680835    mov         ebx,eax
 00680837    cmp         dword ptr [ebx+10],0CA
>0068083E    jne         00680862
 00680840    mov         eax,ebx
 00680842    call        @jinit_master_decompress
 00680847    cmp         dword ptr [ebx+3C],0
>0068084B    je          0068085B
 0068084D    mov         dword ptr [ebx+10],0CF
 00680854    mov         eax,1
 00680859    pop         ebx
 0068085A    ret
 0068085B    mov         dword ptr [ebx+10],0CB
 00680862    cmp         dword ptr [ebx+10],0CB
>00680869    jne         006808D3
 0068086B    mov         edx,dword ptr [ebx+1AC]
 00680871    cmp         dword ptr [edx+10],0
>00680875    je          006808C5
 00680877    cmp         dword ptr [ebx+8],0
>0068087B    je          00680884
 0068087D    mov         eax,ebx
 0068087F    mov         edx,dword ptr [eax+8]
 00680882    call        dword ptr [edx]
 00680884    mov         eax,ebx
 00680886    mov         edx,dword ptr [eax+1AC]
 0068088C    call        dword ptr [edx]
 0068088E    test        eax,eax
>00680890    jne         00680896
 00680892    xor         eax,eax
 00680894    pop         ebx
 00680895    ret
 00680896    cmp         eax,2
>00680899    je          006808C5
 0068089B    cmp         dword ptr [ebx+8],0
>0068089F    je          00680877
 006808A1    cmp         eax,3
>006808A4    je          006808A9
 006808A6    dec         eax
>006808A7    jne         00680877
 006808A9    mov         edx,dword ptr [ebx+8]
 006808AC    inc         dword ptr [edx+4]
 006808AF    mov         ecx,dword ptr [edx+4]
 006808B2    mov         eax,dword ptr [ebx+8]
 006808B5    cmp         ecx,dword ptr [eax+8]
>006808B8    jl          00680877
 006808BA    mov         edx,dword ptr [ebx+138]
 006808C0    add         dword ptr [eax+8],edx
>006808C3    jmp         00680877
 006808C5    mov         ecx,dword ptr [ebx+8C]
 006808CB    mov         dword ptr [ebx+94],ecx
>006808D1    jmp         006808F1
 006808D3    cmp         dword ptr [ebx+10],0CC
>006808DA    je          006808F1
 006808DC    mov         eax,dword ptr [ebx]
 006808DE    mov         dword ptr [eax+14],12
 006808E5    mov         edx,dword ptr [ebx+10]
 006808E8    mov         dword ptr [eax+18],edx
 006808EB    mov         eax,ebx
 006808ED    mov         edx,dword ptr [eax]
 006808EF    call        dword ptr [edx]
 006808F1    mov         eax,ebx
 006808F3    call        006808FC
 006808F8    pop         ebx
 006808F9    ret
*}
end;

//006808FC
{*function sub_006808FC(?:Integer):?;
begin
 006808FC    push        ebx
 006808FD    mov         ebx,eax
 006808FF    push        esi
 00680900    push        edi
 00680901    cmp         dword ptr [ebx+10],0CC
>00680908    je          00680991
 0068090E    mov         eax,ebx
 00680910    mov         edx,dword ptr [eax+19C]
 00680916    call        dword ptr [edx]
 00680918    xor         ecx,ecx
 0068091A    mov         dword ptr [ebx+88],ecx
 00680920    mov         dword ptr [ebx+10],0CC
>00680927    jmp         00680991
>00680929    jmp         00680969
 0068092B    mov         eax,dword ptr [ebx+8]
 0068092E    test        eax,eax
>00680930    je          00680942
 00680932    mov         dword ptr [eax+4],edx
 00680935    mov         edx,dword ptr [ebx+70]
 00680938    mov         dword ptr [eax+8],edx
 0068093B    mov         eax,ebx
 0068093D    mov         edx,dword ptr [eax+8]
 00680940    call        dword ptr [edx]
 00680942    mov         eax,ebx
 00680944    mov         esi,dword ptr [ebx+88]
 0068094A    push        0
 0068094C    lea         ecx,[ebx+88]
 00680952    mov         edi,dword ptr [eax+1A0]
 00680958    xor         edx,edx
 0068095A    call        dword ptr [edi+4]
 0068095D    cmp         esi,dword ptr [ebx+88]
>00680963    jne         00680969
 00680965    xor         eax,eax
>00680967    jmp         006809B7
 00680969    mov         edx,dword ptr [ebx+88]
 0068096F    cmp         edx,dword ptr [ebx+70]
>00680972    jb          0068092B
 00680974    mov         eax,ebx
 00680976    mov         edx,dword ptr [eax+19C]
 0068097C    call        dword ptr [edx+4]
 0068097F    mov         eax,ebx
 00680981    mov         edx,dword ptr [eax+19C]
 00680987    call        dword ptr [edx]
 00680989    xor         ecx,ecx
 0068098B    mov         dword ptr [ebx+88],ecx
 00680991    mov         eax,dword ptr [ebx+19C]
 00680997    cmp         dword ptr [eax+8],0
>0068099B    jne         00680969
 0068099D    cmp         dword ptr [ebx+40],0
>006809A1    je          006809AA
 006809A3    mov         edx,0CE
>006809A8    jmp         006809AF
 006809AA    mov         edx,0CD
 006809AF    mov         dword ptr [ebx+10],edx
 006809B2    mov         eax,1
 006809B7    pop         edi
 006809B8    pop         esi
 006809B9    pop         ebx
 006809BA    ret
end;*}

//006809BC
function jpeg_read_scanlines(var cinfo:jpeg_decompress_struct; scanlines:JSAMPARRAY; max_lines:Cardinal):Cardinal;
begin
{*
 006809BC    push        ebx
 006809BD    mov         ebx,eax
 006809BF    push        esi
 006809C0    push        edi
 006809C1    push        ecx
 006809C2    mov         edi,ecx
 006809C4    cmp         dword ptr [ebx+10],0CD
 006809CB    mov         esi,edx
>006809CD    je          006809E4
 006809CF    mov         eax,dword ptr [ebx]
 006809D1    mov         dword ptr [eax+14],12
 006809D8    mov         edx,dword ptr [ebx+10]
 006809DB    mov         dword ptr [eax+18],edx
 006809DE    mov         eax,ebx
 006809E0    mov         edx,dword ptr [eax]
 006809E2    call        dword ptr [edx]
 006809E4    mov         ecx,dword ptr [ebx+88]
 006809EA    cmp         ecx,dword ptr [ebx+70]
>006809ED    jb          00680A06
 006809EF    mov         eax,dword ptr [ebx]
 006809F1    mov         dword ptr [eax+14],77
 006809F8    or          edx,0FFFFFFFF
 006809FB    mov         eax,ebx
 006809FD    mov         ecx,dword ptr [eax]
 006809FF    call        dword ptr [ecx+4]
 00680A02    xor         eax,eax
>00680A04    jmp         00680A46
 00680A06    mov         eax,dword ptr [ebx+8]
 00680A09    test        eax,eax
>00680A0B    je          00680A23
 00680A0D    mov         edx,dword ptr [ebx+88]
 00680A13    mov         dword ptr [eax+4],edx
 00680A16    mov         ecx,dword ptr [ebx+70]
 00680A19    mov         dword ptr [eax+8],ecx
 00680A1C    mov         eax,ebx
 00680A1E    mov         edx,dword ptr [eax+8]
 00680A21    call        dword ptr [edx]
 00680A23    xor         ecx,ecx
 00680A25    mov         eax,ebx
 00680A27    mov         dword ptr [esp],ecx
 00680A2A    push        edi
 00680A2B    mov         edx,esi
 00680A2D    mov         esi,dword ptr [eax+1A0]
 00680A33    lea         ecx,[esp+4]
 00680A37    call        dword ptr [esi+4]
 00680A3A    mov         eax,dword ptr [esp]
 00680A3D    add         dword ptr [ebx+88],eax
 00680A43    mov         eax,dword ptr [esp]
 00680A46    pop         edx
 00680A47    pop         edi
 00680A48    pop         esi
 00680A49    pop         ebx
 00680A4A    ret
*}
end;

//00680AF8
function jpeg_start_output(var cinfo:jpeg_decompress_struct; scan_number:Integer):LongBool;
begin
{*
 00680AF8    push        ebx
 00680AF9    mov         ebx,eax
 00680AFB    push        esi
 00680AFC    mov         esi,edx
 00680AFE    mov         eax,dword ptr [ebx+10]
 00680B01    cmp         eax,0CF
>00680B06    je          00680B24
 00680B08    cmp         eax,0CC
>00680B0D    je          00680B24
 00680B0F    mov         eax,dword ptr [ebx]
 00680B11    mov         dword ptr [eax+14],12
 00680B18    mov         edx,dword ptr [ebx+10]
 00680B1B    mov         dword ptr [eax+18],edx
 00680B1E    mov         eax,ebx
 00680B20    mov         edx,dword ptr [eax]
 00680B22    call        dword ptr [edx]
 00680B24    test        esi,esi
>00680B26    jg          00680B2D
 00680B28    mov         esi,1
 00680B2D    mov         eax,dword ptr [ebx+1AC]
 00680B33    cmp         dword ptr [eax+14],0
>00680B37    je          00680B47
 00680B39    cmp         esi,dword ptr [ebx+8C]
>00680B3F    jle         00680B47
 00680B41    mov         esi,dword ptr [ebx+8C]
 00680B47    mov         dword ptr [ebx+94],esi
 00680B4D    mov         eax,ebx
 00680B4F    call        006808FC
 00680B54    pop         esi
 00680B55    pop         ebx
 00680B56    ret
*}
end;

//00680B58
function jpeg_finish_output(var cinfo:jpeg_decompress_struct):LongBool;
begin
{*
 00680B58    push        ebx
 00680B59    mov         ebx,eax
 00680B5B    mov         eax,dword ptr [ebx+10]
 00680B5E    cmp         eax,0CD
>00680B63    je          00680B6C
 00680B65    cmp         eax,0CE
>00680B6A    jne         00680B86
 00680B6C    cmp         dword ptr [ebx+3C],0
>00680B70    je          00680B86
 00680B72    mov         eax,ebx
 00680B74    mov         edx,dword ptr [eax+19C]
 00680B7A    call        dword ptr [edx+4]
 00680B7D    mov         dword ptr [ebx+10],0D0
>00680B84    jmp         00680BB8
 00680B86    cmp         dword ptr [ebx+10],0D0
>00680B8D    je          00680BB8
 00680B8F    mov         eax,dword ptr [ebx]
 00680B91    mov         dword ptr [eax+14],12
 00680B98    mov         edx,dword ptr [ebx+10]
 00680B9B    mov         dword ptr [eax+18],edx
 00680B9E    mov         eax,ebx
 00680BA0    mov         edx,dword ptr [eax]
 00680BA2    call        dword ptr [edx]
>00680BA4    jmp         00680BB8
 00680BA6    mov         eax,ebx
 00680BA8    mov         edx,dword ptr [eax+1AC]
 00680BAE    call        dword ptr [edx]
 00680BB0    test        eax,eax
>00680BB2    jne         00680BB8
 00680BB4    xor         eax,eax
 00680BB6    pop         ebx
 00680BB7    ret
 00680BB8    mov         edx,dword ptr [ebx+8C]
 00680BBE    cmp         edx,dword ptr [ebx+94]
>00680BC4    jg          00680BD2
 00680BC6    mov         ecx,dword ptr [ebx+1AC]
 00680BCC    cmp         dword ptr [ecx+14],0
>00680BD0    je          00680BA6
 00680BD2    mov         dword ptr [ebx+10],0CF
 00680BD9    mov         eax,1
 00680BDE    pop         ebx
 00680BDF    ret
*}
end;

//00680BE0
procedure _DF_.;
begin
{*
 00680BE0    push        ebx
 00680BE1    cmp         dword ptr [eax+48],0
>00680BE5    jne         00680BF0
 00680BE7    cmp         dword ptr [eax+128],0
>00680BEE    je          00680BF4
 00680BF0    xor         eax,eax
 00680BF2    pop         ebx
 00680BF3    ret
 00680BF4    cmp         dword ptr [eax+24],3
>00680BF8    jne         00680C0C
 00680BFA    cmp         dword ptr [eax+20],3
>00680BFE    jne         00680C0C
 00680C00    cmp         dword ptr [eax+28],2
>00680C04    jne         00680C0C
 00680C06    cmp         dword ptr [eax+74],3
>00680C0A    je          00680C10
 00680C0C    xor         eax,eax
 00680C0E    pop         ebx
 00680C0F    ret
 00680C10    mov         edx,dword ptr [eax+0D4]
 00680C16    cmp         dword ptr [edx+8],2
>00680C1A    jne         00680C40
 00680C1C    cmp         dword ptr [edx+5C],1
>00680C20    jne         00680C40
 00680C22    cmp         dword ptr [edx+0B0],1
>00680C29    jne         00680C40
 00680C2B    cmp         dword ptr [edx+0C],2
>00680C2F    jg          00680C40
 00680C31    cmp         dword ptr [edx+60],1
>00680C35    jne         00680C40
 00680C37    cmp         dword ptr [edx+0B4],1
>00680C3E    je          00680C44
 00680C40    xor         eax,eax
 00680C42    pop         ebx
 00680C43    ret
 00680C44    mov         edx,dword ptr [eax+0D4]
 00680C4A    mov         ebx,dword ptr [edx+24]
 00680C4D    mov         ecx,dword ptr [eax+134]
 00680C53    cmp         ebx,ecx
>00680C55    jne         00680C64
 00680C57    cmp         ecx,dword ptr [edx+78]
>00680C5A    jne         00680C64
 00680C5C    cmp         ecx,dword ptr [edx+0CC]
>00680C62    je          00680C68
 00680C64    xor         eax,eax
 00680C66    pop         ebx
 00680C67    ret
 00680C68    mov         eax,1
 00680C6D    pop         ebx
 00680C6E    ret
*}
end;

//00680C70
procedure jpeg_calc_output_dimensions(var cinfo:jpeg_decompress_struct);
begin
{*
 00680C70    push        ebx
 00680C71    mov         ebx,eax
 00680C73    push        esi
 00680C74    push        edi
 00680C75    cmp         dword ptr [ebx+10],0CA
>00680C7C    je          00680C93
 00680C7E    mov         eax,dword ptr [ebx]
 00680C80    mov         dword ptr [eax+14],12
 00680C87    mov         edx,dword ptr [ebx+10]
 00680C8A    mov         dword ptr [eax+18],edx
 00680C8D    mov         eax,ebx
 00680C8F    mov         edx,dword ptr [eax]
 00680C91    call        dword ptr [edx]
 00680C93    mov         ecx,dword ptr [ebx+2C]
 00680C96    shl         ecx,3
 00680C99    cmp         ecx,dword ptr [ebx+30]
>00680C9C    ja          00680CD3
 00680C9E    mov         eax,dword ptr [ebx+18]
 00680CA1    add         eax,7
 00680CA4    test        eax,eax
>00680CA6    jns         00680CAB
 00680CA8    add         eax,7
 00680CAB    sar         eax,3
 00680CAE    mov         dword ptr [ebx+6C],eax
 00680CB1    mov         edx,dword ptr [ebx+1C]
 00680CB4    add         edx,7
 00680CB7    test        edx,edx
>00680CB9    jns         00680CBE
 00680CBB    add         edx,7
 00680CBE    sar         edx,3
 00680CC1    mov         dword ptr [ebx+70],edx
 00680CC4    mov         dword ptr [ebx+134],1
>00680CCE    jmp         00680D58
 00680CD3    mov         ecx,dword ptr [ebx+2C]
 00680CD6    shl         ecx,2
 00680CD9    cmp         ecx,dword ptr [ebx+30]
>00680CDC    ja          00680D10
 00680CDE    mov         eax,dword ptr [ebx+18]
 00680CE1    add         eax,3
 00680CE4    test        eax,eax
>00680CE6    jns         00680CEB
 00680CE8    add         eax,3
 00680CEB    sar         eax,2
 00680CEE    mov         dword ptr [ebx+6C],eax
 00680CF1    mov         edx,dword ptr [ebx+1C]
 00680CF4    add         edx,3
 00680CF7    test        edx,edx
>00680CF9    jns         00680CFE
 00680CFB    add         edx,3
 00680CFE    sar         edx,2
 00680D01    mov         dword ptr [ebx+70],edx
 00680D04    mov         dword ptr [ebx+134],2
>00680D0E    jmp         00680D58
 00680D10    mov         ecx,dword ptr [ebx+2C]
 00680D13    add         ecx,ecx
 00680D15    cmp         ecx,dword ptr [ebx+30]
>00680D18    ja          00680D42
 00680D1A    mov         eax,dword ptr [ebx+18]
 00680D1D    inc         eax
 00680D1E    sar         eax,1
>00680D20    jns         00680D25
 00680D22    adc         eax,0
 00680D25    mov         dword ptr [ebx+6C],eax
 00680D28    mov         edx,dword ptr [ebx+1C]
 00680D2B    inc         edx
 00680D2C    sar         edx,1
>00680D2E    jns         00680D33
 00680D30    adc         edx,0
 00680D33    mov         dword ptr [ebx+70],edx
 00680D36    mov         dword ptr [ebx+134],4
>00680D40    jmp         00680D58
 00680D42    mov         ecx,dword ptr [ebx+18]
 00680D45    mov         dword ptr [ebx+6C],ecx
 00680D48    mov         eax,dword ptr [ebx+1C]
 00680D4B    mov         dword ptr [ebx+70],eax
 00680D4E    mov         dword ptr [ebx+134],8
 00680D58    xor         esi,esi
 00680D5A    mov         ecx,dword ptr [ebx+0D4]
>00680D60    jmp         00680DAA
 00680D62    mov         eax,dword ptr [ebx+134]
>00680D68    jmp         00680D6C
 00680D6A    add         eax,eax
 00680D6C    cmp         eax,8
>00680D6F    jge         00680DA3
 00680D71    mov         edx,dword ptr [ecx+8]
 00680D74    imul        edx,eax
 00680D77    add         edx,edx
 00680D79    mov         edi,dword ptr [ebx+12C]
 00680D7F    imul        edi,dword ptr [ebx+134]
 00680D86    cmp         edx,edi
>00680D88    jg          00680DA3
 00680D8A    mov         edx,dword ptr [ecx+0C]
 00680D8D    imul        edx,eax
 00680D90    add         edx,edx
 00680D92    mov         edi,dword ptr [ebx+130]
 00680D98    imul        edi,dword ptr [ebx+134]
 00680D9F    cmp         edx,edi
>00680DA1    jle         00680D6A
 00680DA3    mov         dword ptr [ecx+24],eax
 00680DA6    inc         esi
 00680DA7    add         ecx,54
 00680DAA    cmp         esi,dword ptr [ebx+20]
>00680DAD    jl          00680D62
 00680DAF    xor         esi,esi
 00680DB1    mov         ecx,dword ptr [ebx+0D4]
>00680DB7    jmp         00680DF3
 00680DB9    mov         eax,dword ptr [ecx+8]
 00680DBC    mov         edi,dword ptr [ebx+12C]
 00680DC2    imul        dword ptr [ecx+24]
 00680DC5    imul        dword ptr [ebx+18]
 00680DC8    shl         edi,3
 00680DCB    inc         esi
 00680DCC    add         eax,edi
 00680DCE    dec         eax
 00680DCF    cdq
 00680DD0    idiv        eax,edi
 00680DD2    mov         dword ptr [ecx+28],eax
 00680DD5    mov         eax,dword ptr [ecx+0C]
 00680DD8    mov         edi,dword ptr [ebx+130]
 00680DDE    imul        dword ptr [ecx+24]
 00680DE1    imul        dword ptr [ebx+1C]
 00680DE4    shl         edi,3
 00680DE7    add         eax,edi
 00680DE9    dec         eax
 00680DEA    cdq
 00680DEB    idiv        eax,edi
 00680DED    mov         dword ptr [ecx+2C],eax
 00680DF0    add         ecx,54
 00680DF3    cmp         esi,dword ptr [ebx+20]
>00680DF6    jl          00680DB9
 00680DF8    mov         eax,dword ptr [ebx+28]
 00680DFB    dec         eax
>00680DFC    je          00680E0B
 00680DFE    dec         eax
 00680DFF    sub         eax,2
>00680E02    jb          00680E14
 00680E04    sub         eax,2
>00680E07    jb          00680E1D
>00680E09    jmp         00680E26
 00680E0B    mov         dword ptr [ebx+74],1
>00680E12    jmp         00680E2C
 00680E14    mov         dword ptr [ebx+74],3
>00680E1B    jmp         00680E2C
 00680E1D    mov         dword ptr [ebx+74],4
>00680E24    jmp         00680E2C
 00680E26    mov         ecx,dword ptr [ebx+20]
 00680E29    mov         dword ptr [ebx+74],ecx
 00680E2C    cmp         dword ptr [ebx+50],0
>00680E30    je          00680E39
 00680E32    mov         eax,1
>00680E37    jmp         00680E3C
 00680E39    mov         eax,dword ptr [ebx+74]
 00680E3C    mov         dword ptr [ebx+78],eax
 00680E3F    mov         eax,ebx
 00680E41    call        _DF_.
 00680E46    test        eax,eax
>00680E48    je          00680E55
 00680E4A    mov         edx,dword ptr [ebx+130]
 00680E50    mov         dword ptr [ebx+7C],edx
>00680E53    jmp         00680E5C
 00680E55    mov         dword ptr [ebx+7C],1
 00680E5C    pop         edi
 00680E5D    pop         esi
 00680E5E    pop         ebx
 00680E5F    ret
*}
end;

//00680E60
{*procedure sub_00680E60(?:?);
begin
 00680E60    push        ebx
 00680E61    mov         ebx,eax
 00680E63    mov         eax,ebx
 00680E65    push        esi
 00680E66    mov         ecx,580
 00680E6B    mov         edx,1
 00680E70    mov         esi,dword ptr [eax+4]
 00680E73    call        dword ptr [esi]
 00680E75    mov         esi,eax
 00680E77    add         esi,100
 00680E7D    mov         dword ptr [ebx+13C],esi
 00680E83    push        100
 00680E88    push        0
 00680E8A    lea         eax,[esi-100]
 00680E90    push        eax
 00680E91    call        _memset
 00680E96    add         esp,0C
 00680E99    xor         eax,eax
 00680E9B    mov         edx,esi
 00680E9D    mov         byte ptr [edx],al
 00680E9F    inc         eax
 00680EA0    inc         edx
 00680EA1    cmp         eax,0FF
>00680EA6    jle         00680E9D
 00680EA8    add         esi,80
 00680EAE    mov         eax,80
 00680EB3    lea         edx,[esi+80]
 00680EB9    mov         byte ptr [edx],0FF
 00680EBC    inc         eax
 00680EBD    inc         edx
 00680EBE    cmp         eax,200
>00680EC3    jl          00680EB9
 00680EC5    push        180
 00680ECA    push        0
 00680ECC    lea         ecx,[esi+200]
 00680ED2    push        ecx
 00680ED3    call        _memset
 00680ED8    add         esp,0C
 00680EDB    push        80
 00680EE0    mov         eax,dword ptr [ebx+13C]
 00680EE6    push        eax
 00680EE7    add         esi,380
 00680EED    push        esi
 00680EEE    call        _memcpy
 00680EF3    add         esp,0C
 00680EF6    pop         esi
 00680EF7    pop         ebx
 00680EF8    ret
end;*}

//00680EFC
{*function sub_00680EFC(?:?):?;
begin
 00680EFC    push        ebx
 00680EFD    mov         ebx,eax
 00680EFF    push        esi
 00680F00    mov         eax,ebx
 00680F02    mov         esi,dword ptr [ebx+19C]
 00680F08    call        jpeg_calc_output_dimensions
 00680F0D    mov         eax,ebx
 00680F0F    call        00680E60
 00680F14    mov         eax,dword ptr [ebx+6C]
 00680F17    imul        dword ptr [ebx+74]
 00680F1A    mov         edx,eax
 00680F1C    cmp         eax,edx
>00680F1E    je          00680F2F
 00680F20    mov         ecx,dword ptr [ebx]
 00680F22    mov         eax,ebx
 00680F24    mov         dword ptr [ecx+14],45
 00680F2B    mov         edx,dword ptr [eax]
 00680F2D    call        dword ptr [edx]
 00680F2F    xor         ecx,ecx
 00680F31    mov         eax,ebx
 00680F33    mov         dword ptr [esi+0C],ecx
 00680F36    call        _DF_.
 00680F3B    mov         dword ptr [esi+10],eax
 00680F3E    xor         edx,edx
 00680F40    mov         dword ptr [esi+14],edx
 00680F43    xor         ecx,ecx
 00680F45    mov         dword ptr [esi+18],ecx
 00680F48    cmp         dword ptr [ebx+50],0
>00680F4C    je          00680F54
 00680F4E    cmp         dword ptr [ebx+3C],0
>00680F52    jne         00680F63
 00680F54    xor         eax,eax
 00680F56    mov         dword ptr [ebx+60],eax
 00680F59    xor         edx,edx
 00680F5B    mov         dword ptr [ebx+64],edx
 00680F5E    xor         ecx,ecx
 00680F60    mov         dword ptr [ebx+68],ecx
 00680F63    cmp         dword ptr [ebx+50],0
>00680F67    je          00680FFD
 00680F6D    cmp         dword ptr [ebx+40],0
>00680F71    je          00680F82
 00680F73    mov         eax,dword ptr [ebx]
 00680F75    mov         dword ptr [eax+14],2E
 00680F7C    mov         eax,ebx
 00680F7E    mov         edx,dword ptr [eax]
 00680F80    call        dword ptr [edx]
 00680F82    cmp         dword ptr [ebx+74],3
>00680F86    je          00680FA3
 00680F88    mov         dword ptr [ebx+60],1
 00680F8F    xor         ecx,ecx
 00680F91    mov         dword ptr [ebx+64],ecx
 00680F94    xor         eax,eax
 00680F96    mov         dword ptr [ebx+68],eax
 00680F99    xor         edx,edx
 00680F9B    mov         dword ptr [ebx+84],edx
>00680FA1    jmp         00680FCB
 00680FA3    cmp         dword ptr [ebx+84],0
>00680FAA    je          00680FB5
 00680FAC    mov         dword ptr [ebx+64],1
>00680FB3    jmp         00680FCB
 00680FB5    cmp         dword ptr [ebx+58],0
>00680FB9    je          00680FC4
 00680FBB    mov         dword ptr [ebx+68],1
>00680FC2    jmp         00680FCB
 00680FC4    mov         dword ptr [ebx+60],1
 00680FCB    cmp         dword ptr [ebx+60],0
>00680FCF    je          00680FE1
 00680FD1    mov         eax,ebx
 00680FD3    call        @jinit_1pass_quantizer
 00680FD8    mov         edx,dword ptr [ebx+1C4]
 00680FDE    mov         dword ptr [esi+14],edx
 00680FE1    cmp         dword ptr [ebx+68],0
>00680FE5    jne         00680FED
 00680FE7    cmp         dword ptr [ebx+64],0
>00680FEB    je          00680FFD
 00680FED    mov         eax,ebx
 00680FEF    call        @jinit_2pass_quantizer
 00680FF4    mov         edx,dword ptr [ebx+1C4]
 00680FFA    mov         dword ptr [esi+18],edx
 00680FFD    cmp         dword ptr [ebx+40],0
>00681001    jne         0068102A
 00681003    cmp         dword ptr [esi+10],0
>00681007    je          00681012
 00681009    mov         eax,ebx
 0068100B    call        @jinit_merged_upsampler
>00681010    jmp         00681020
 00681012    mov         eax,ebx
 00681014    call        @jinit_color_deconverter
 00681019    mov         eax,ebx
 0068101B    call        @jinit_upsampler
 00681020    mov         edx,dword ptr [ebx+68]
 00681023    mov         eax,ebx
 00681025    call        @jinit_d_post_controller
 0068102A    mov         eax,ebx
 0068102C    call        @jinit_inverse_dct
 00681031    cmp         dword ptr [ebx+0DC],0
>00681038    je          0068104B
 0068103A    mov         edx,dword ptr [ebx]
 0068103C    mov         eax,ebx
 0068103E    mov         dword ptr [edx+14],1
 00681045    mov         edx,dword ptr [eax]
 00681047    call        dword ptr [edx]
>00681049    jmp         00681064
 0068104B    cmp         dword ptr [ebx+0D8],0
>00681052    je          0068105D
 00681054    mov         eax,ebx
 00681056    call        @jinit_phuff_decoder
>0068105B    jmp         00681064
 0068105D    mov         eax,ebx
 0068105F    call        @jinit_huff_decoder
 00681064    mov         edx,dword ptr [ebx+1AC]
 0068106A    cmp         dword ptr [edx+10],0
>0068106E    jne         0068107A
 00681070    cmp         dword ptr [ebx+3C],0
>00681074    jne         0068107A
 00681076    xor         eax,eax
>00681078    jmp         0068107F
 0068107A    mov         eax,1
 0068107F    mov         edx,eax
 00681081    mov         eax,ebx
 00681083    call        @jinit_d_coef_controller
 00681088    cmp         dword ptr [ebx+40],0
>0068108C    jne         00681097
 0068108E    xor         edx,edx
 00681090    mov         eax,ebx
 00681092    call        @jinit_d_main_controller
 00681097    mov         eax,ebx
 00681099    mov         edx,dword ptr [eax+4]
 0068109C    call        dword ptr [edx+18]
 0068109F    mov         eax,ebx
 006810A1    mov         edx,dword ptr [eax+1AC]
 006810A7    call        dword ptr [edx+8]
 006810AA    cmp         dword ptr [ebx+8],0
>006810AE    je          0068110D
 006810B0    cmp         dword ptr [ebx+3C],0
>006810B4    jne         0068110D
 006810B6    mov         ecx,dword ptr [ebx+1AC]
 006810BC    cmp         dword ptr [ecx+10],0
>006810C0    je          0068110D
 006810C2    cmp         dword ptr [ebx+0D8],0
>006810C9    je          006810D6
 006810CB    mov         edx,dword ptr [ebx+20]
 006810CE    lea         edx,[edx+edx*2]
 006810D1    add         edx,2
>006810D4    jmp         006810D9
 006810D6    mov         edx,dword ptr [ebx+20]
 006810D9    mov         eax,dword ptr [ebx+8]
 006810DC    xor         ecx,ecx
 006810DE    mov         dword ptr [eax+4],ecx
 006810E1    mov         ecx,dword ptr [ebx+138]
 006810E7    imul        ecx,edx
 006810EA    mov         dword ptr [eax+8],ecx
 006810ED    xor         edx,edx
 006810EF    mov         dword ptr [eax+0C],edx
 006810F2    cmp         dword ptr [ebx+68],0
>006810F6    je          006810FF
 006810F8    mov         eax,3
>006810FD    jmp         00681104
 006810FF    mov         eax,2
 00681104    mov         edx,dword ptr [ebx+8]
 00681107    mov         dword ptr [edx+10],eax
 0068110A    inc         dword ptr [esi+0C]
 0068110D    pop         esi
 0068110E    pop         ebx
 0068110F    ret
end;*}

//006812EC
procedure @jinit_master_decompress;
begin
{*
 006812EC    push        ebx
 006812ED    mov         ebx,eax
 006812EF    mov         eax,ebx
 006812F1    push        esi
 006812F2    mov         ecx,1C
 006812F7    mov         edx,1
 006812FC    mov         esi,dword ptr [eax+4]
 006812FF    call        dword ptr [esi]
 00681301    mov         dword ptr [ebx+19C],eax
 00681307    mov         dword ptr [eax],681110
 0068130D    mov         dword ptr [eax+4],681264
 00681314    xor         edx,edx
 00681316    mov         dword ptr [eax+8],edx
 00681319    mov         eax,ebx
 0068131B    call        00680EFC
 00681320    pop         esi
 00681321    pop         ebx
 00681322    ret
*}
end;

//00681324
procedure _DF_.;
begin
{*
 00681324    push        ebx
 00681325    push        esi
 00681326    mov         ebx,eax
 00681328    push        edi
 00681329    push        ebp
 0068132A    add         esp,0FFFFFFEC
 0068132D    cmp         dword ptr [ebx+188],0
 00681334    sete        al
 00681337    and         eax,1
 0068133A    mov         ebp,dword ptr [ebx+1B4]
 00681340    mov         dword ptr [esp],eax
 00681343    xor         eax,eax
 00681345    cmp         dword ptr [esp],0
>00681349    je          0068135B
 0068134B    cmp         dword ptr [ebx+18C],0
>00681352    je          00681381
 00681354    mov         eax,1
>00681359    jmp         00681381
 0068135B    mov         edx,dword ptr [ebx+18C]
 00681361    cmp         edx,dword ptr [ebx+188]
>00681367    jl          0068136E
 00681369    cmp         edx,40
>0068136C    jl          00681373
 0068136E    mov         eax,1
 00681373    cmp         dword ptr [ebx+140],1
>0068137A    je          00681381
 0068137C    mov         eax,1
 00681381    mov         edx,dword ptr [ebx+190]
 00681387    test        edx,edx
>00681389    je          00681399
 0068138B    dec         edx
 0068138C    cmp         edx,dword ptr [ebx+194]
>00681392    je          00681399
 00681394    mov         eax,1
 00681399    cmp         dword ptr [ebx+194],0D
>006813A0    jle         006813A7
 006813A2    mov         eax,1
 006813A7    test        eax,eax
>006813A9    je          006813DE
 006813AB    mov         eax,dword ptr [ebx]
 006813AD    mov         dword ptr [eax+14],0E
 006813B4    mov         edx,dword ptr [ebx+188]
 006813BA    mov         dword ptr [eax+18],edx
 006813BD    mov         ecx,dword ptr [ebx+18C]
 006813C3    mov         dword ptr [eax+1C],ecx
 006813C6    mov         edx,dword ptr [ebx+190]
 006813CC    mov         dword ptr [eax+20],edx
 006813CF    mov         ecx,dword ptr [ebx+194]
 006813D5    mov         dword ptr [eax+24],ecx
 006813D8    mov         eax,ebx
 006813DA    mov         edx,dword ptr [eax]
 006813DC    call        dword ptr [edx]
 006813DE    xor         eax,eax
 006813E0    mov         dword ptr [esp+4],eax
 006813E4    lea         ecx,[ebx+144]
 006813EA    mov         dword ptr [esp+0C],ecx
>006813EE    jmp         00681491
 006813F3    mov         eax,dword ptr [esp+0C]
 006813F7    mov         edx,dword ptr [eax]
 006813F9    mov         ecx,dword ptr [edx+4]
 006813FC    mov         dword ptr [esp+8],ecx
 00681400    mov         esi,dword ptr [esp+8]
 00681404    shl         esi,8
 00681407    add         esi,dword ptr [ebx+9C]
 0068140D    cmp         dword ptr [esp],0
>00681411    jne         00681437
 00681413    cmp         dword ptr [esi],0
>00681416    jge         00681437
 00681418    mov         eax,dword ptr [ebx]
 0068141A    xor         ecx,ecx
 0068141C    mov         dword ptr [eax+14],6F
 00681423    mov         edx,dword ptr [esp+8]
 00681427    mov         dword ptr [eax+18],edx
 0068142A    mov         dword ptr [eax+1C],ecx
 0068142D    mov         eax,ebx
 0068142F    or          edx,0FFFFFFFF
 00681432    mov         ecx,dword ptr [eax]
 00681434    call        dword ptr [ecx+4]
 00681437    mov         edi,dword ptr [ebx+188]
 0068143D    lea         eax,[esi+edi*4]
 00681440    mov         esi,eax
>00681442    jmp         00681480
 00681444    cmp         dword ptr [esi],0
>00681447    jge         0068144D
 00681449    xor         eax,eax
>0068144B    jmp         0068144F
 0068144D    mov         eax,dword ptr [esi]
 0068144F    cmp         eax,dword ptr [ebx+190]
>00681455    je          00681474
 00681457    mov         eax,dword ptr [ebx]
 00681459    mov         dword ptr [eax+14],6F
 00681460    mov         edx,dword ptr [esp+8]
 00681464    mov         dword ptr [eax+18],edx
 00681467    mov         dword ptr [eax+1C],edi
 0068146A    or          edx,0FFFFFFFF
 0068146D    mov         eax,ebx
 0068146F    mov         ecx,dword ptr [eax]
 00681471    call        dword ptr [ecx+4]
 00681474    mov         eax,dword ptr [ebx+194]
 0068147A    mov         dword ptr [esi],eax
 0068147C    inc         edi
 0068147D    add         esi,4
 00681480    cmp         edi,dword ptr [ebx+18C]
>00681486    jle         00681444
 00681488    inc         dword ptr [esp+4]
 0068148C    add         dword ptr [esp+0C],4
 00681491    mov         edx,dword ptr [esp+4]
 00681495    cmp         edx,dword ptr [ebx+140]
>0068149B    jl          006813F3
 006814A1    cmp         dword ptr [ebx+190],0
>006814A8    jne         006814C2
 006814AA    cmp         dword ptr [esp],0
>006814AE    je          006814B9
 006814B0    mov         dword ptr [ebp+4],681634
>006814B7    jmp         006814D8
 006814B9    mov         dword ptr [ebp+4],681880
>006814C0    jmp         006814D8
 006814C2    cmp         dword ptr [esp],0
>006814C6    je          006814D1
 006814C8    mov         dword ptr [ebp+4],681B20
>006814CF    jmp         006814D8
 006814D1    mov         dword ptr [ebp+4],681C38
 006814D8    xor         ecx,ecx
 006814DA    lea         eax,[ebp+18]
 006814DD    mov         dword ptr [esp+4],ecx
 006814E1    mov         dword ptr [esp+10],eax
 006814E5    lea         edi,[ebx+144]
>006814EB    jmp         00681592
 006814F0    mov         eax,dword ptr [edi]
 006814F2    cmp         dword ptr [esp],0
>006814F6    je          0068153D
 006814F8    cmp         dword ptr [ebx+190],0
>006814FF    jne         0068157E
 00681501    mov         esi,dword ptr [eax+14]
 00681504    test        esi,esi
>00681506    jl          00681517
 00681508    cmp         esi,4
>0068150B    jge         00681517
 0068150D    cmp         dword ptr [ebx+esi*4+0B0],0
>00681515    jne         00681529
 00681517    mov         eax,dword ptr [ebx]
 00681519    mov         dword ptr [eax+14],31
 00681520    mov         dword ptr [eax+18],esi
 00681523    mov         eax,ebx
 00681525    mov         edx,dword ptr [eax]
 00681527    call        dword ptr [edx]
 00681529    lea         ecx,[ebp+esi*4+2C]
 0068152D    mov         edx,dword ptr [ebx+esi*4+0B0]
 00681534    mov         eax,ebx
 00681536    call        @jpeg_make_d_derived_tbl
>0068153B    jmp         0068157E
 0068153D    mov         esi,dword ptr [eax+18]
 00681540    test        esi,esi
>00681542    jl          00681553
 00681544    cmp         esi,4
>00681547    jge         00681553
 00681549    cmp         dword ptr [ebx+esi*4+0C0],0
>00681551    jne         00681565
 00681553    mov         eax,dword ptr [ebx]
 00681555    mov         dword ptr [eax+14],31
 0068155C    mov         dword ptr [eax+18],esi
 0068155F    mov         eax,ebx
 00681561    mov         edx,dword ptr [eax]
 00681563    call        dword ptr [edx]
 00681565    lea         ecx,[ebp+esi*4+2C]
 00681569    mov         edx,dword ptr [ebx+esi*4+0C0]
 00681570    mov         eax,ebx
 00681572    call        @jpeg_make_d_derived_tbl
 00681577    mov         ecx,dword ptr [ebp+esi*4+2C]
 0068157B    mov         dword ptr [ebp+3C],ecx
 0068157E    mov         eax,dword ptr [esp+10]
 00681582    xor         edx,edx
 00681584    mov         dword ptr [eax],edx
 00681586    inc         dword ptr [esp+4]
 0068158A    add         dword ptr [esp+10],4
 0068158F    add         edi,4
 00681592    mov         ecx,dword ptr [esp+4]
 00681596    cmp         ecx,dword ptr [ebx+140]
>0068159C    jl          006814F0
 006815A2    xor         eax,eax
 006815A4    xor         edx,edx
 006815A6    mov         dword ptr [ebp+0C],eax
 006815A9    mov         dword ptr [ebp+8],edx
 006815AC    xor         ecx,ecx
 006815AE    xor         eax,eax
 006815B0    mov         dword ptr [ebp+10],ecx
 006815B3    mov         dword ptr [ebp+14],eax
 006815B6    mov         edx,dword ptr [ebx+110]
 006815BC    mov         dword ptr [ebp+28],edx
 006815BF    add         esp,14
 006815C2    pop         ebp
 006815C3    pop         edi
 006815C4    pop         esi
 006815C5    pop         ebx
 006815C6    ret
*}
end;

//006815C8
{*function sub_006815C8(?:?):?;
begin
 006815C8    push        ebx
 006815C9    mov         ebx,eax
 006815CB    push        esi
 006815CC    mov         esi,dword ptr [ebx+1B4]
 006815D2    mov         eax,dword ptr [esi+0C]
 006815D5    test        eax,eax
>006815D7    jns         006815DC
 006815D9    add         eax,7
 006815DC    sar         eax,3
 006815DF    mov         edx,dword ptr [ebx+1B0]
 006815E5    add         dword ptr [edx+5C],eax
 006815E8    xor         ecx,ecx
 006815EA    mov         dword ptr [esi+0C],ecx
 006815ED    mov         eax,ebx
 006815EF    mov         edx,dword ptr [eax+1B0]
 006815F5    call        dword ptr [edx+8]
 006815F8    test        eax,eax
>006815FA    jne         00681601
 006815FC    xor         eax,eax
 006815FE    pop         esi
 006815FF    pop         ebx
 00681600    ret
 00681601    xor         edx,edx
 00681603    lea         eax,[esi+18]
>00681606    jmp         00681610
 00681608    xor         ecx,ecx
 0068160A    inc         edx
 0068160B    mov         dword ptr [eax],ecx
 0068160D    add         eax,4
 00681610    cmp         edx,dword ptr [ebx+140]
>00681616    jl          00681608
 00681618    xor         edx,edx
 0068161A    mov         dword ptr [esi+14],edx
 0068161D    xor         edx,edx
 0068161F    mov         eax,dword ptr [ebx+110]
 00681625    mov         dword ptr [esi+28],eax
 00681628    mov         eax,1
 0068162D    mov         dword ptr [esi+10],edx
 00681630    pop         esi
 00681631    pop         ebx
 00681632    ret
end;*}

//0068207C
procedure @jinit_phuff_decoder;
begin
{*
 0068207C    push        ebx
 0068207D    mov         ebx,eax
 0068207F    mov         eax,ebx
 00682081    push        esi
 00682082    mov         ecx,40
 00682087    mov         edx,1
 0068208C    mov         esi,dword ptr [eax+4]
 0068208F    call        dword ptr [esi]
 00682091    mov         edx,eax
 00682093    mov         dword ptr [ebx+1B4],edx
 00682099    mov         dword ptr [edx],681324;_DF_.
 0068209F    xor         eax,eax
 006820A1    lea         ecx,[edx+2C]
 006820A4    mov         edx,ecx
 006820A6    xor         ecx,ecx
 006820A8    inc         eax
 006820A9    mov         dword ptr [edx],ecx
 006820AB    add         edx,4
 006820AE    cmp         eax,4
>006820B1    jl          006820A6
 006820B3    mov         eax,ebx
 006820B5    mov         ecx,dword ptr [ebx+20]
 006820B8    shl         ecx,6
 006820BB    mov         edx,1
 006820C0    mov         esi,dword ptr [eax+4]
 006820C3    shl         ecx,2
 006820C6    call        dword ptr [esi]
 006820C8    mov         esi,eax
 006820CA    mov         dword ptr [ebx+9C],esi
 006820D0    mov         edx,esi
 006820D2    xor         ecx,ecx
>006820D4    jmp         006820E8
 006820D6    xor         eax,eax
 006820D8    mov         dword ptr [edx],0FFFFFFFF
 006820DE    add         edx,4
 006820E1    inc         eax
 006820E2    cmp         eax,40
>006820E5    jl          006820D8
 006820E7    inc         ecx
 006820E8    cmp         ecx,dword ptr [ebx+20]
>006820EB    jl          006820D6
 006820ED    pop         esi
 006820EE    pop         ebx
 006820EF    ret
*}
end;

//006820F0
procedure _DF_.;
begin
{*
 006820F0    push        ebx
 006820F1    push        esi
 006820F2    mov         ebx,eax
 006820F4    push        edi
 006820F5    push        ebp
 006820F6    add         esp,0FFFFFFF4
 006820F9    cmp         dword ptr [ebx+188],0
 00682100    mov         ebp,dword ptr [ebx+1B4]
>00682106    jne         00682123
 00682108    cmp         dword ptr [ebx+18C],3F
>0068210F    jne         00682123
 00682111    cmp         dword ptr [ebx+190],0
>00682118    jne         00682123
 0068211A    cmp         dword ptr [ebx+194],0
>00682121    je          00682136
 00682123    mov         eax,dword ptr [ebx]
 00682125    mov         dword ptr [eax+14],76
 0068212C    or          edx,0FFFFFFFF
 0068212F    mov         eax,ebx
 00682131    mov         ecx,dword ptr [eax]
 00682133    call        dword ptr [ecx+4]
 00682136    xor         edx,edx
 00682138    mov         dword ptr [esp],edx
 0068213B    lea         eax,[ebp+14]
 0068213E    mov         dword ptr [esp+8],eax
 00682142    lea         edx,[ebx+144]
 00682148    mov         dword ptr [esp+4],edx
>0068214C    jmp         006821E0
 00682151    mov         ecx,dword ptr [esp+4]
 00682155    mov         eax,dword ptr [ecx]
 00682157    mov         esi,dword ptr [eax+14]
 0068215A    mov         edi,dword ptr [eax+18]
 0068215D    test        esi,esi
>0068215F    jl          00682170
 00682161    cmp         esi,4
>00682164    jge         00682170
 00682166    cmp         dword ptr [ebx+esi*4+0B0],0
>0068216E    jne         00682182
 00682170    mov         eax,dword ptr [ebx]
 00682172    mov         dword ptr [eax+14],31
 00682179    mov         dword ptr [eax+18],esi
 0068217C    mov         eax,ebx
 0068217E    mov         edx,dword ptr [eax]
 00682180    call        dword ptr [edx]
 00682182    test        edi,edi
>00682184    jl          00682195
 00682186    cmp         edi,4
>00682189    jge         00682195
 0068218B    cmp         dword ptr [ebx+edi*4+0C0],0
>00682193    jne         006821A7
 00682195    mov         eax,dword ptr [ebx]
 00682197    mov         dword ptr [eax+14],31
 0068219E    mov         dword ptr [eax+18],edi
 006821A1    mov         eax,ebx
 006821A3    mov         edx,dword ptr [eax]
 006821A5    call        dword ptr [edx]
 006821A7    lea         ecx,[ebp+esi*4+28]
 006821AB    mov         edx,dword ptr [ebx+esi*4+0B0]
 006821B2    mov         eax,ebx
 006821B4    call        @jpeg_make_d_derived_tbl
 006821B9    lea         ecx,[ebp+edi*4+38]
 006821BD    mov         edx,dword ptr [ebx+edi*4+0C0]
 006821C4    mov         eax,ebx
 006821C6    call        @jpeg_make_d_derived_tbl
 006821CB    mov         ecx,dword ptr [esp+8]
 006821CF    xor         eax,eax
 006821D1    mov         dword ptr [ecx],eax
 006821D3    inc         dword ptr [esp]
 006821D6    add         dword ptr [esp+8],4
 006821DB    add         dword ptr [esp+4],4
 006821E0    mov         edx,dword ptr [esp]
 006821E3    cmp         edx,dword ptr [ebx+140]
>006821E9    jl          00682151
 006821EF    xor         ecx,ecx
 006821F1    mov         dword ptr [ebp+0C],ecx
 006821F4    xor         eax,eax
 006821F6    mov         dword ptr [ebp+8],eax
 006821F9    xor         edx,edx
 006821FB    mov         dword ptr [ebp+10],edx
 006821FE    mov         ecx,dword ptr [ebx+110]
 00682204    mov         dword ptr [ebp+24],ecx
 00682207    add         esp,0C
 0068220A    pop         ebp
 0068220B    pop         edi
 0068220C    pop         esi
 0068220D    pop         ebx
 0068220E    ret
*}
end;

//00682210
procedure @jpeg_make_d_derived_tbl;
begin
{*
 00682210    push        ebx
 00682211    push        esi
 00682212    push        edi
 00682213    add         esp,0FFFFFAD8
 00682219    mov         ebx,ecx
 0068221B    mov         edi,eax
 0068221D    mov         dword ptr [esp],edx
 00682220    lea         esi,[esp+20]
 00682224    cmp         dword ptr [ebx],0
>00682227    jne         0068223C
 00682229    mov         eax,edi
 0068222B    mov         ecx,5D4
 00682230    mov         edx,1
 00682235    mov         edi,dword ptr [eax+4]
 00682238    call        dword ptr [edi]
 0068223A    mov         dword ptr [ebx],eax
 0068223C    mov         eax,dword ptr [ebx]
 0068223E    mov         edi,1
 00682243    mov         dword ptr [esp+4],eax
 00682247    xor         eax,eax
 00682249    mov         edx,dword ptr [esp+4]
 0068224D    mov         ecx,dword ptr [esp]
 00682250    mov         dword ptr [edx+0D0],ecx
 00682256    mov         dword ptr [esp+8],eax
 0068225A    mov         eax,dword ptr [esp]
 0068225D    lea         ecx,[eax+1]
 00682260    mov         dword ptr [esp+0C],1
 00682268    mov         edx,dword ptr [esp+8]
 0068226C    lea         eax,[esi+edx]
 0068226F    mov         edx,ecx
>00682271    jmp         00682280
 00682273    mov         ebx,edi
 00682275    mov         byte ptr [eax],bl
 00682277    inc         dword ptr [esp+8]
 0068227B    inc         eax
 0068227C    inc         dword ptr [esp+0C]
 00682280    xor         ebx,ebx
 00682282    mov         bl,byte ptr [edx]
 00682284    cmp         ebx,dword ptr [esp+0C]
>00682288    jge         00682273
 0068228A    inc         edi
 0068228B    inc         ecx
 0068228C    cmp         edi,10
>0068228F    jle         00682260
 00682291    mov         eax,dword ptr [esp+8]
 00682295    xor         ecx,ecx
 00682297    mov         byte ptr [esi+eax],0
 0068229B    xor         eax,eax
 0068229D    movsx       ebx,byte ptr [esi]
 006822A0    mov         dword ptr [esp+8],eax
>006822A4    jmp         006822CF
 006822A6    mov         edx,dword ptr [esp+8]
 006822AA    mov         eax,dword ptr [esp+8]
 006822AE    lea         eax,[esi+eax]
 006822B1    lea         edx,[esp+edx*4+124]
>006822B8    jmp         006822C5
 006822BA    mov         dword ptr [edx],ecx
 006822BC    add         edx,4
 006822BF    inc         dword ptr [esp+8]
 006822C3    inc         eax
 006822C4    inc         ecx
 006822C5    movsx       edi,byte ptr [eax]
 006822C8    cmp         ebx,edi
>006822CA    je          006822BA
 006822CC    add         ecx,ecx
 006822CE    inc         ebx
 006822CF    mov         eax,dword ptr [esp+8]
 006822D3    cmp         byte ptr [esi+eax],0
>006822D7    jne         006822A6
 006822D9    xor         edx,edx
 006822DB    mov         edi,1
 006822E0    mov         dword ptr [esp+8],edx
 006822E4    mov         eax,dword ptr [esp+4]
 006822E8    mov         edx,dword ptr [esp]
 006822EB    add         eax,90
 006822F0    inc         edx
 006822F1    cmp         byte ptr [edx],0
>006822F4    je          00682325
 006822F6    mov         ecx,dword ptr [esp+8]
 006822FA    mov         dword ptr [eax],ecx
 006822FC    mov         ecx,dword ptr [esp+8]
 00682300    mov         ecx,dword ptr [esp+ecx*4+124]
 00682307    mov         dword ptr [eax-8C],ecx
 0068230D    xor         ecx,ecx
 0068230F    mov         cl,byte ptr [edx]
 00682311    add         dword ptr [esp+8],ecx
 00682315    mov         ecx,dword ptr [esp+8]
 00682319    mov         ecx,dword ptr [esp+ecx*4+120]
 00682320    mov         dword ptr [eax-48],ecx
>00682323    jmp         0068232C
 00682325    mov         dword ptr [eax-48],0FFFFFFFF
 0068232C    inc         edi
 0068232D    add         eax,4
 00682330    inc         edx
 00682331    cmp         edi,10
>00682334    jle         006822F1
 00682336    mov         eax,dword ptr [esp+4]
 0068233A    mov         dword ptr [eax+88],0FFFFF
 00682344    push        400
 00682349    push        0
 0068234B    mov         edx,dword ptr [esp+0C]
 0068234F    add         edx,0D4
 00682355    push        edx
 00682356    call        _memset
 0068235B    add         esp,0C
 0068235E    xor         eax,eax
 00682360    mov         dword ptr [esp+8],eax
 00682364    mov         edi,1
 00682369    mov         eax,dword ptr [esp]
 0068236C    lea         edx,[eax+1]
 0068236F    mov         dword ptr [esp+1C],edx
 00682373    mov         dword ptr [esp+0C],1
 0068237B    mov         ecx,dword ptr [esp]
 0068237E    mov         eax,dword ptr [esp+8]
 00682382    lea         edx,[ecx+eax+11]
 00682386    mov         dword ptr [esp+18],edx
 0068238A    mov         ecx,dword ptr [esp+8]
 0068238E    lea         eax,[esp+ecx*4+124]
 00682395    mov         dword ptr [esp+14],eax
 00682399    mov         edx,dword ptr [esp+1C]
 0068239D    mov         ecx,edx
 0068239F    mov         dword ptr [esp+10],ecx
>006823A3    jmp         00682401
 006823A5    mov         eax,dword ptr [esp+14]
 006823A9    mov         edx,8
 006823AE    sub         edx,edi
 006823B0    mov         ebx,dword ptr [esp+18]
 006823B4    mov         ecx,edx
 006823B6    mov         eax,dword ptr [eax]
 006823B8    shl         eax,cl
 006823BA    mov         ecx,edx
 006823BC    mov         edx,1
 006823C1    shl         edx,cl
 006823C3    mov         ecx,edx
 006823C5    mov         edx,dword ptr [esp+4]
 006823C9    mov         esi,ebx
 006823CB    mov         ebx,dword ptr [esp+4]
 006823CF    lea         edx,[edx+eax+4D4]
 006823D6    test        ecx,ecx
 006823D8    lea         eax,[ebx+eax*4+0D4]
>006823DF    jle         006823F0
 006823E1    mov         dword ptr [eax],edi
 006823E3    add         eax,4
 006823E6    mov         bl,byte ptr [esi]
 006823E8    dec         ecx
 006823E9    mov         byte ptr [edx],bl
 006823EB    inc         edx
 006823EC    test        ecx,ecx
>006823EE    jg          006823E1
 006823F0    inc         dword ptr [esp+0C]
 006823F4    add         dword ptr [esp+14],4
 006823F9    inc         dword ptr [esp+18]
 006823FD    inc         dword ptr [esp+8]
 00682401    mov         eax,dword ptr [esp+10]
 00682405    xor         edx,edx
 00682407    mov         dl,byte ptr [eax]
 00682409    cmp         edx,dword ptr [esp+0C]
>0068240D    jge         006823A5
 0068240F    inc         edi
 00682410    inc         dword ptr [esp+1C]
 00682414    cmp         edi,8
>00682417    jle         00682373
 0068241D    add         esp,528
 00682423    pop         edi
 00682424    pop         esi
 00682425    pop         ebx
 00682426    ret
*}
end;

//00682428
procedure @jpeg_fill_bit_buffer;
begin
{*
 00682428    push        ebp
 00682429    mov         ebp,esp
 0068242B    add         esp,0FFFFFFF4
 0068242E    push        ebx
 0068242F    mov         ebx,eax
 00682431    push        esi
 00682432    mov         dword ptr [ebp-8],ecx
 00682435    mov         dword ptr [ebp-4],edx
 00682438    mov         esi,dword ptr [ebx]
 0068243A    mov         eax,dword ptr [ebx+4]
 0068243D    mov         dword ptr [ebp-0C],eax
 00682440    cmp         dword ptr [ebp-8],19
>00682444    jge         00682514
 0068244A    cmp         dword ptr [ebx+8],0
>0068244E    jne         006824CC
 00682450    cmp         dword ptr [ebp-0C],0
>00682454    jne         00682478
 00682456    mov         eax,dword ptr [ebx+14]
 00682459    mov         edx,dword ptr [eax+14]
 0068245C    call        dword ptr [edx+0C]
 0068245F    test        eax,eax
>00682461    jne         0068246A
 00682463    xor         eax,eax
>00682465    jmp         0068252D
 0068246A    mov         edx,dword ptr [ebx+14]
 0068246D    mov         eax,dword ptr [edx+14]
 00682470    mov         esi,dword ptr [eax]
 00682472    mov         eax,dword ptr [eax+4]
 00682475    mov         dword ptr [ebp-0C],eax
 00682478    dec         dword ptr [ebp-0C]
 0068247B    xor         eax,eax
 0068247D    mov         al,byte ptr [esi]
 0068247F    inc         esi
 00682480    cmp         eax,0FF
>00682485    jne         006824FB
 00682487    cmp         dword ptr [ebp-0C],0
>0068248B    jne         006824AF
 0068248D    mov         eax,dword ptr [ebx+14]
 00682490    mov         edx,dword ptr [eax+14]
 00682493    call        dword ptr [edx+0C]
 00682496    test        eax,eax
>00682498    jne         006824A1
 0068249A    xor         eax,eax
>0068249C    jmp         0068252D
 006824A1    mov         edx,dword ptr [ebx+14]
 006824A4    mov         eax,dword ptr [edx+14]
 006824A7    mov         esi,dword ptr [eax]
 006824A9    mov         eax,dword ptr [eax+4]
 006824AC    mov         dword ptr [ebp-0C],eax
 006824AF    dec         dword ptr [ebp-0C]
 006824B2    xor         eax,eax
 006824B4    mov         al,byte ptr [esi]
 006824B6    inc         esi
 006824B7    cmp         eax,0FF
>006824BC    je          00682487
 006824BE    test        eax,eax
>006824C0    jne         006824C9
 006824C2    mov         eax,0FF
>006824C7    jmp         006824FB
 006824C9    mov         dword ptr [ebx+8],eax
 006824CC    mov         edx,dword ptr [ebp-8]
 006824CF    cmp         edx,dword ptr [ebp+8]
>006824D2    jge         00682514
 006824D4    mov         ecx,dword ptr [ebx+18]
 006824D7    cmp         dword ptr [ecx],0
>006824DA    jne         006824F9
 006824DC    mov         eax,dword ptr [ebx+14]
 006824DF    mov         edx,dword ptr [eax]
 006824E1    mov         dword ptr [edx+14],71
 006824E8    or          edx,0FFFFFFFF
 006824EB    mov         ecx,dword ptr [eax]
 006824ED    call        dword ptr [ecx+4]
 006824F0    mov         eax,dword ptr [ebx+18]
 006824F3    mov         dword ptr [eax],1
 006824F9    xor         eax,eax
 006824FB    mov         edx,dword ptr [ebp-4]
 006824FE    shl         edx,8
 00682501    or          eax,edx
 00682503    mov         dword ptr [ebp-4],eax
 00682506    add         dword ptr [ebp-8],8
 0068250A    cmp         dword ptr [ebp-8],19
>0068250E    jl          0068244A
 00682514    mov         dword ptr [ebx],esi
 00682516    mov         ecx,dword ptr [ebp-0C]
 00682519    mov         dword ptr [ebx+4],ecx
 0068251C    mov         eax,dword ptr [ebp-4]
 0068251F    mov         dword ptr [ebx+0C],eax
 00682522    mov         eax,1
 00682527    mov         edx,dword ptr [ebp-8]
 0068252A    mov         dword ptr [ebx+10],edx
 0068252D    pop         esi
 0068252E    pop         ebx
 0068252F    mov         esp,ebp
 00682531    pop         ebp
 00682532    ret         4
*}
end;

//00682538
procedure @jpeg_huff_decode;
begin
{*
 00682538    push        ebp
 00682539    mov         ebp,esp
 0068253B    add         esp,0FFFFFFF4
 0068253E    push        ebx
 0068253F    push        esi
 00682540    push        edi
 00682541    mov         ebx,ecx
 00682543    mov         dword ptr [ebp-8],edx
 00682546    mov         dword ptr [ebp-4],eax
 00682549    mov         edi,dword ptr [ebp+8]
 0068254C    cmp         edi,ebx
>0068254E    jle         00682579
 00682550    push        edi
 00682551    mov         ecx,ebx
 00682553    mov         edx,dword ptr [ebp-8]
 00682556    mov         eax,dword ptr [ebp-4]
 00682559    call        @jpeg_fill_bit_buffer
 0068255E    test        eax,eax
>00682560    jne         0068256A
 00682562    or          eax,0FFFFFFFF
>00682565    jmp         00682631
 0068256A    mov         edx,dword ptr [ebp-4]
 0068256D    mov         ecx,dword ptr [edx+0C]
 00682570    mov         dword ptr [ebp-8],ecx
 00682573    mov         eax,dword ptr [ebp-4]
 00682576    mov         ebx,dword ptr [eax+10]
 00682579    sub         ebx,edi
 0068257B    mov         esi,dword ptr [ebp-8]
 0068257E    mov         ecx,ebx
 00682580    mov         eax,1
 00682585    sar         esi,cl
 00682587    mov         ecx,edi
 00682589    mov         edx,dword ptr [ebp+0C]
 0068258C    shl         eax,cl
 0068258E    dec         eax
 0068258F    and         esi,eax
 00682591    lea         eax,[edx+edi*4+44]
 00682595    mov         dword ptr [ebp-0C],eax
>00682598    jmp         006825DA
 0068259A    add         esi,esi
 0068259C    cmp         ebx,1
>0068259F    jge         006825C8
 006825A1    push        1
 006825A3    mov         ecx,ebx
 006825A5    mov         edx,dword ptr [ebp-8]
 006825A8    mov         eax,dword ptr [ebp-4]
 006825AB    call        @jpeg_fill_bit_buffer
 006825B0    test        eax,eax
>006825B2    jne         006825B9
 006825B4    or          eax,0FFFFFFFF
>006825B7    jmp         00682631
 006825B9    mov         edx,dword ptr [ebp-4]
 006825BC    mov         ecx,dword ptr [edx+0C]
 006825BF    mov         dword ptr [ebp-8],ecx
 006825C2    mov         eax,dword ptr [ebp-4]
 006825C5    mov         ebx,dword ptr [eax+10]
 006825C8    dec         ebx
 006825C9    mov         ecx,ebx
 006825CB    mov         eax,dword ptr [ebp-8]
 006825CE    sar         eax,cl
 006825D0    and         eax,1
 006825D3    or          esi,eax
 006825D5    inc         edi
 006825D6    add         dword ptr [ebp-0C],4
 006825DA    mov         edx,dword ptr [ebp-0C]
 006825DD    cmp         esi,dword ptr [edx]
>006825DF    jg          0068259A
 006825E1    mov         eax,dword ptr [ebp-4]
 006825E4    mov         edx,dword ptr [ebp-8]
 006825E7    cmp         edi,10
 006825EA    mov         dword ptr [eax+0C],edx
 006825ED    mov         ecx,dword ptr [ebp-4]
 006825F0    mov         dword ptr [ecx+10],ebx
>006825F3    jle         00682610
 006825F5    mov         eax,dword ptr [ebp-4]
 006825F8    mov         eax,dword ptr [eax+14]
 006825FB    mov         edx,dword ptr [eax]
 006825FD    mov         dword ptr [edx+14],72
 00682604    or          edx,0FFFFFFFF
 00682607    mov         ecx,dword ptr [eax]
 00682609    call        dword ptr [ecx+4]
 0068260C    xor         eax,eax
>0068260E    jmp         00682631
 00682610    mov         edx,dword ptr [ebp+0C]
 00682613    mov         ecx,dword ptr [ebp+0C]
 00682616    sub         esi,dword ptr [edx+edi*4]
 00682619    mov         edx,dword ptr [ebp+0C]
 0068261C    mov         eax,dword ptr [ecx+edi*4+8C]
 00682623    mov         ecx,dword ptr [edx+0D0]
 00682629    lea         eax,[ecx+eax]
 0068262C    movzx       eax,byte ptr [eax+esi+11]
 00682631    pop         edi
 00682632    pop         esi
 00682633    pop         ebx
 00682634    mov         esp,ebp
 00682636    pop         ebp
 00682637    ret         8
*}
end;

//0068263C
{*function sub_0068263C(?:?):?;
begin
 0068263C    push        ebx
 0068263D    mov         ebx,eax
 0068263F    push        esi
 00682640    mov         esi,dword ptr [ebx+1B4]
 00682646    mov         eax,dword ptr [esi+0C]
 00682649    test        eax,eax
>0068264B    jns         00682650
 0068264D    add         eax,7
 00682650    sar         eax,3
 00682653    mov         edx,dword ptr [ebx+1B0]
 00682659    add         dword ptr [edx+5C],eax
 0068265C    xor         ecx,ecx
 0068265E    mov         dword ptr [esi+0C],ecx
 00682661    mov         eax,ebx
 00682663    mov         edx,dword ptr [eax+1B0]
 00682669    call        dword ptr [edx+8]
 0068266C    test        eax,eax
>0068266E    jne         00682675
 00682670    xor         eax,eax
 00682672    pop         esi
 00682673    pop         ebx
 00682674    ret
 00682675    xor         edx,edx
 00682677    lea         eax,[esi+14]
>0068267A    jmp         00682684
 0068267C    xor         ecx,ecx
 0068267E    inc         edx
 0068267F    mov         dword ptr [eax],ecx
 00682681    add         eax,4
 00682684    cmp         edx,dword ptr [ebx+140]
>0068268A    jl          0068267C
 0068268C    mov         edx,dword ptr [ebx+110]
 00682692    xor         eax,eax
 00682694    mov         dword ptr [esi+24],edx
 00682697    mov         dword ptr [esi+10],eax
 0068269A    mov         eax,1
 0068269F    pop         esi
 006826A0    pop         ebx
 006826A1    ret
end;*}

//00682B40
procedure @jinit_huff_decoder;
begin
{*
 00682B40    push        ebx
 00682B41    mov         ebx,eax
 00682B43    mov         eax,ebx
 00682B45    push        esi
 00682B46    mov         ecx,48
 00682B4B    mov         edx,1
 00682B50    mov         esi,dword ptr [eax+4]
 00682B53    call        dword ptr [esi]
 00682B55    mov         dword ptr [ebx+1B4],eax
 00682B5B    mov         dword ptr [eax],6820F0;_DF_.
 00682B61    mov         dword ptr [eax+4],6826A4
 00682B68    xor         edx,edx
 00682B6A    add         eax,38
 00682B6D    xor         ecx,ecx
 00682B6F    mov         dword ptr [eax],ecx
 00682B71    mov         dword ptr [eax-10],ecx
 00682B74    inc         edx
 00682B75    add         eax,4
 00682B78    cmp         edx,4
>00682B7B    jl          00682B6D
 00682B7D    pop         esi
 00682B7E    pop         ebx
 00682B7F    ret
*}
end;

//00682B80
procedure _DF_.;
begin
{*
 00682B80    push        ebx
 00682B81    push        esi
 00682B82    mov         esi,eax
 00682B84    push        edi
 00682B85    mov         eax,esi
 00682B87    mov         ecx,400
 00682B8C    mov         ebx,dword ptr [esi+1BC]
 00682B92    mov         edx,1
 00682B97    mov         edi,dword ptr [eax+4]
 00682B9A    call        dword ptr [edi]
 00682B9C    mov         dword ptr [ebx+10],eax
 00682B9F    mov         eax,esi
 00682BA1    mov         ecx,400
 00682BA6    mov         edx,1
 00682BAB    mov         edi,dword ptr [eax+4]
 00682BAE    call        dword ptr [edi]
 00682BB0    mov         dword ptr [ebx+14],eax
 00682BB3    mov         eax,esi
 00682BB5    mov         ecx,400
 00682BBA    mov         edx,1
 00682BBF    mov         edi,dword ptr [eax+4]
 00682BC2    call        dword ptr [edi]
 00682BC4    mov         dword ptr [ebx+18],eax
 00682BC7    mov         eax,esi
 00682BC9    mov         ecx,400
 00682BCE    mov         edx,1
 00682BD3    mov         esi,dword ptr [eax+4]
 00682BD6    call        dword ptr [esi]
 00682BD8    mov         dword ptr [ebx+1C],eax
 00682BDB    xor         eax,eax
 00682BDD    mov         edx,0FFFFFF80
 00682BE2    imul        ecx,edx,166E9
 00682BE8    add         ecx,8000
 00682BEE    mov         esi,dword ptr [ebx+10]
 00682BF1    sar         ecx,10
 00682BF4    mov         dword ptr [esi+eax*4],ecx
 00682BF7    imul        ecx,edx,1C5A2
 00682BFD    add         ecx,8000
 00682C03    mov         esi,dword ptr [ebx+14]
 00682C06    sar         ecx,10
 00682C09    mov         dword ptr [esi+eax*4],ecx
 00682C0C    imul        ecx,edx,0FFFF492E
 00682C12    mov         esi,dword ptr [ebx+18]
 00682C15    mov         dword ptr [esi+eax*4],ecx
 00682C18    imul        ecx,edx,0FFFFA7E6
 00682C1E    mov         esi,dword ptr [ebx+1C]
 00682C21    add         ecx,8000
 00682C27    inc         edx
 00682C28    mov         dword ptr [esi+eax*4],ecx
 00682C2B    inc         eax
 00682C2C    cmp         eax,0FF
>00682C31    jle         00682BE2
 00682C33    pop         edi
 00682C34    pop         esi
 00682C35    pop         ebx
 00682C36    ret
*}
end;

//006830EC
procedure @jinit_merged_upsampler;
begin
{*
 006830EC    push        ebx
 006830ED    push        esi
 006830EE    mov         esi,eax
 006830F0    push        edi
 006830F1    mov         eax,esi
 006830F3    mov         ecx,30
 006830F8    mov         edx,1
 006830FD    mov         ebx,dword ptr [eax+4]
 00683100    call        dword ptr [ebx]
 00683102    mov         ebx,eax
 00683104    xor         eax,eax
 00683106    mov         dword ptr [esi+1BC],ebx
 0068310C    mov         dword ptr [ebx],682C38
 00683112    mov         dword ptr [ebx+8],eax
 00683115    mov         edx,dword ptr [esi+6C]
 00683118    imul        edx,dword ptr [esi+74]
 0068311C    mov         dword ptr [ebx+28],edx
 0068311F    cmp         dword ptr [esi+130],2
>00683126    jne         0068314B
 00683128    mov         dword ptr [ebx+4],682C4C
 0068312F    mov         eax,esi
 00683131    mov         edx,1
 00683136    mov         dword ptr [ebx+0C],682EB4
 0068313D    mov         edi,dword ptr [eax+4]
 00683140    mov         ecx,dword ptr [ebx+28]
 00683143    call        dword ptr [edi+4]
 00683146    mov         dword ptr [ebx+20],eax
>00683149    jmp         0068315E
 0068314B    mov         dword ptr [ebx+4],682D04
 00683152    mov         dword ptr [ebx+0C],682D3C
 00683159    xor         eax,eax
 0068315B    mov         dword ptr [ebx+20],eax
 0068315E    mov         eax,esi
 00683160    call        _DF_.
 00683165    pop         edi
 00683166    pop         esi
 00683167    pop         ebx
 00683168    ret
*}
end;

//0068316C
procedure _DF_.;
begin
{*
 0068316C    push        ebx
 0068316D    push        esi
 0068316E    mov         esi,eax
 00683170    push        edi
 00683171    mov         eax,esi
 00683173    mov         ecx,400
 00683178    mov         ebx,dword ptr [esi+1C0]
 0068317E    mov         edx,1
 00683183    mov         edi,dword ptr [eax+4]
 00683186    call        dword ptr [edi]
 00683188    mov         dword ptr [ebx+8],eax
 0068318B    mov         eax,esi
 0068318D    mov         ecx,400
 00683192    mov         edx,1
 00683197    mov         edi,dword ptr [eax+4]
 0068319A    call        dword ptr [edi]
 0068319C    mov         dword ptr [ebx+0C],eax
 0068319F    mov         eax,esi
 006831A1    mov         ecx,400
 006831A6    mov         edx,1
 006831AB    mov         edi,dword ptr [eax+4]
 006831AE    call        dword ptr [edi]
 006831B0    mov         dword ptr [ebx+10],eax
 006831B3    mov         eax,esi
 006831B5    mov         ecx,400
 006831BA    mov         edx,1
 006831BF    mov         esi,dword ptr [eax+4]
 006831C2    call        dword ptr [esi]
 006831C4    mov         dword ptr [ebx+14],eax
 006831C7    xor         eax,eax
 006831C9    mov         edx,0FFFFFF80
 006831CE    imul        ecx,edx,166E9
 006831D4    add         ecx,8000
 006831DA    mov         esi,dword ptr [ebx+8]
 006831DD    sar         ecx,10
 006831E0    mov         dword ptr [esi+eax*4],ecx
 006831E3    imul        ecx,edx,1C5A2
 006831E9    add         ecx,8000
 006831EF    mov         esi,dword ptr [ebx+0C]
 006831F2    sar         ecx,10
 006831F5    mov         dword ptr [esi+eax*4],ecx
 006831F8    imul        ecx,edx,0FFFF492E
 006831FE    mov         esi,dword ptr [ebx+10]
 00683201    mov         dword ptr [esi+eax*4],ecx
 00683204    imul        ecx,edx,0FFFFA7E6
 0068320A    mov         esi,dword ptr [ebx+14]
 0068320D    add         ecx,8000
 00683213    inc         edx
 00683214    mov         dword ptr [esi+eax*4],ecx
 00683217    inc         eax
 00683218    cmp         eax,0FF
>0068321D    jle         006831CE
 0068321F    pop         edi
 00683220    pop         esi
 00683221    pop         ebx
 00683222    ret
*}
end;

//0068354C
procedure @jinit_color_deconverter;
begin
{*
 0068354C    push        ebx
 0068354D    mov         ebx,eax
 0068354F    mov         eax,ebx
 00683551    push        esi
 00683552    mov         ecx,18
 00683557    mov         edx,1
 0068355C    mov         esi,dword ptr [eax+4]
 0068355F    call        dword ptr [esi]
 00683561    mov         esi,eax
 00683563    mov         dword ptr [ebx+1C0],esi
 00683569    mov         dword ptr [esi],683548
 0068356F    mov         eax,dword ptr [ebx+24]
 00683572    dec         eax
>00683573    je          00683582
 00683575    dec         eax
 00683576    sub         eax,2
>00683579    jb          00683599
 0068357B    sub         eax,2
>0068357E    jb          006835B0
>00683580    jmp         006835C7
 00683582    cmp         dword ptr [ebx+20],1
>00683586    je          006835DC
 00683588    mov         edx,dword ptr [ebx]
 0068358A    mov         eax,ebx
 0068358C    mov         dword ptr [edx+14],8
 00683593    mov         edx,dword ptr [eax]
 00683595    call        dword ptr [edx]
>00683597    jmp         006835DC
 00683599    cmp         dword ptr [ebx+20],3
>0068359D    je          006835DC
 0068359F    mov         ecx,dword ptr [ebx]
 006835A1    mov         eax,ebx
 006835A3    mov         dword ptr [ecx+14],8
 006835AA    mov         edx,dword ptr [eax]
 006835AC    call        dword ptr [edx]
>006835AE    jmp         006835DC
 006835B0    cmp         dword ptr [ebx+20],4
>006835B4    je          006835DC
 006835B6    mov         ecx,dword ptr [ebx]
 006835B8    mov         eax,ebx
 006835BA    mov         dword ptr [ecx+14],8
 006835C1    mov         edx,dword ptr [eax]
 006835C3    call        dword ptr [edx]
>006835C5    jmp         006835DC
 006835C7    cmp         dword ptr [ebx+20],1
>006835CB    jge         006835DC
 006835CD    mov         ecx,dword ptr [ebx]
 006835CF    mov         eax,ebx
 006835D1    mov         dword ptr [ecx+14],8
 006835D8    mov         edx,dword ptr [eax]
 006835DA    call        dword ptr [edx]
 006835DC    mov         ecx,dword ptr [ebx+28]
 006835DF    dec         ecx
>006835E0    je          006835F3
 006835E2    dec         ecx
>006835E3    je          0068364A
 006835E5    sub         ecx,2
>006835E8    je          0068369C
>006835EE    jmp         006836D9
 006835F3    mov         dword ptr [ebx+74],1
 006835FA    mov         eax,dword ptr [ebx+24]
 006835FD    cmp         eax,1
>00683600    je          00683607
 00683602    cmp         eax,3
>00683605    jne         00683636
 00683607    mov         dword ptr [esi+4],68339C
 0068360E    mov         eax,1
>00683613    jmp         0068362C
 00683615    mov         edx,eax
 00683617    mov         ecx,dword ptr [ebx+0D4]
 0068361D    shl         edx,3
 00683620    xor         esi,esi
 00683622    sub         edx,eax
 00683624    inc         eax
 00683625    lea         edx,[edx+edx*2]
 00683628    mov         dword ptr [ecx+edx*4+30],esi
 0068362C    cmp         eax,dword ptr [ebx+20]
>0068362F    jl          00683615
>00683631    jmp         006836FF
 00683636    mov         eax,dword ptr [ebx]
 00683638    mov         dword ptr [eax+14],19
 0068363F    mov         eax,ebx
 00683641    mov         edx,dword ptr [eax]
 00683643    call        dword ptr [edx]
>00683645    jmp         006836FF
 0068364A    mov         dword ptr [ebx+74],3
 00683651    cmp         dword ptr [ebx+24],3
>00683655    jne         0068366A
 00683657    mov         dword ptr [esi+4],683224
 0068365E    mov         eax,ebx
 00683660    call        _DF_.
>00683665    jmp         006836FF
 0068366A    cmp         dword ptr [ebx+24],2
>0068366E    jne         0068367C
 00683670    mov         dword ptr [esi+4],68332C
>00683677    jmp         006836FF
 0068367C    cmp         dword ptr [ebx+24],1
>00683680    jne         0068368B
 00683682    mov         dword ptr [esi+4],6833BC
>00683689    jmp         006836FF
 0068368B    mov         edx,dword ptr [ebx]
 0068368D    mov         eax,ebx
 0068368F    mov         dword ptr [edx+14],19
 00683696    mov         edx,dword ptr [eax]
 00683698    call        dword ptr [edx]
>0068369A    jmp         006836FF
 0068369C    mov         dword ptr [ebx+74],4
 006836A3    cmp         dword ptr [ebx+24],5
>006836A7    jne         006836B9
 006836A9    mov         dword ptr [esi+4],683408
 006836B0    mov         eax,ebx
 006836B2    call        _DF_.
>006836B7    jmp         006836FF
 006836B9    cmp         dword ptr [ebx+24],4
>006836BD    jne         006836C8
 006836BF    mov         dword ptr [esi+4],68332C
>006836C6    jmp         006836FF
 006836C8    mov         edx,dword ptr [ebx]
 006836CA    mov         eax,ebx
 006836CC    mov         dword ptr [edx+14],19
 006836D3    mov         edx,dword ptr [eax]
 006836D5    call        dword ptr [edx]
>006836D7    jmp         006836FF
 006836D9    mov         ecx,dword ptr [ebx+28]
 006836DC    cmp         ecx,dword ptr [ebx+24]
>006836DF    jne         006836F0
 006836E1    mov         eax,dword ptr [ebx+20]
 006836E4    mov         dword ptr [ebx+74],eax
 006836E7    mov         dword ptr [esi+4],68332C
>006836EE    jmp         006836FF
 006836F0    mov         edx,dword ptr [ebx]
 006836F2    mov         eax,ebx
 006836F4    mov         dword ptr [edx+14],19
 006836FB    mov         edx,dword ptr [eax]
 006836FD    call        dword ptr [edx]
 006836FF    cmp         dword ptr [ebx+50],0
>00683703    je          0068370F
 00683705    mov         dword ptr [ebx+78],1
 0068370C    pop         esi
 0068370D    pop         ebx
 0068370E    ret
 0068370F    mov         ecx,dword ptr [ebx+74]
 00683712    mov         dword ptr [ebx+78],ecx
 00683715    pop         esi
 00683716    pop         ebx
 00683717    ret
*}
end;

//00683718
procedure _DF_.;
begin
{*
 00683718    push        ebx
 00683719    push        esi
 0068371A    push        edi
 0068371B    add         esp,0FFFFFFE8
 0068371E    mov         dword ptr [esp+4],edx
 00683722    mov         dword ptr [esp],eax
 00683725    mov         eax,dword ptr [esp]
 00683728    mov         edx,dword ptr [eax+74]
 0068372B    mov         dword ptr [esp+8],edx
 0068372F    mov         ecx,dword ptr [esp]
 00683732    mov         eax,dword ptr [ecx+5C]
 00683735    mov         dword ptr [esp+0C],eax
 00683739    mov         ebx,1
 0068373E    inc         ebx
 0068373F    mov         eax,ebx
 00683741    mov         ecx,1
 00683746    cmp         ecx,dword ptr [esp+8]
>0068374A    jge         00683756
 0068374C    imul        eax,ebx
 0068374F    inc         ecx
 00683750    cmp         ecx,dword ptr [esp+8]
>00683754    jl          0068374C
 00683756    cmp         eax,dword ptr [esp+0C]
>0068375A    jle         0068373E
 0068375C    dec         ebx
 0068375D    cmp         ebx,2
>00683760    jge         00683778
 00683762    mov         edx,dword ptr [esp]
 00683765    mov         edx,dword ptr [edx]
 00683767    mov         dword ptr [edx+14],37
 0068376E    mov         dword ptr [edx+18],eax
 00683771    mov         eax,dword ptr [esp]
 00683774    mov         ecx,dword ptr [eax]
 00683776    call        dword ptr [ecx]
 00683778    mov         esi,1
 0068377D    xor         ecx,ecx
 0068377F    mov         eax,dword ptr [esp+4]
 00683783    cmp         ecx,dword ptr [esp+8]
>00683787    jge         00683798
 00683789    mov         dword ptr [eax],ebx
 0068378B    imul        esi,ebx
 0068378E    inc         ecx
 0068378F    add         eax,4
 00683792    cmp         ecx,dword ptr [esp+8]
>00683796    jl          00683789
 00683798    xor         edx,edx
 0068379A    mov         dword ptr [esp+10],edx
 0068379E    xor         ecx,ecx
 006837A0    mov         dword ptr [esp+14],6E94B4
 006837A8    cmp         ecx,dword ptr [esp+8]
>006837AC    jge         006837FE
 006837AE    mov         eax,dword ptr [esp]
 006837B1    cmp         dword ptr [eax+28],2
>006837B5    jne         006837BF
 006837B7    mov         edx,dword ptr [esp+14]
 006837BB    mov         ebx,dword ptr [edx]
>006837BD    jmp         006837C1
 006837BF    mov         ebx,ecx
 006837C1    mov         eax,dword ptr [esp+4]
 006837C5    push        dword ptr [eax+ebx*4]
 006837C8    mov         eax,esi
 006837CA    pop         edx
 006837CB    mov         edi,edx
 006837CD    cdq
 006837CE    idiv        eax,edi
 006837D0    mov         edx,dword ptr [esp+4]
 006837D4    mov         edx,dword ptr [edx+ebx*4]
 006837D7    inc         edx
 006837D8    imul        eax,edx
 006837DB    cmp         eax,dword ptr [esp+0C]
>006837DF    jg          006837FE
 006837E1    mov         edx,dword ptr [esp+4]
 006837E5    inc         ecx
 006837E6    mov         esi,eax
 006837E8    inc         dword ptr [edx+ebx*4]
 006837EB    mov         dword ptr [esp+10],1
 006837F3    add         dword ptr [esp+14],4
 006837F8    cmp         ecx,dword ptr [esp+8]
>006837FC    jl          006837AE
 006837FE    cmp         dword ptr [esp+10],0
>00683803    jne         00683798
 00683805    mov         eax,esi
 00683807    add         esp,18
 0068380A    pop         edi
 0068380B    pop         esi
 0068380C    pop         ebx
 0068380D    ret
*}
end;

//00683810
{*function sub_00683810(?:?; ?:?; ?:?; ?:?):?;
begin
 00683810    push        ebp
 00683811    mov         ebp,esp
 00683813    mov         eax,ecx
 00683815    push        ebx
 00683816    shl         eax,8
 00683819    mov         ebx,dword ptr [ebp+8]
 0068381C    mov         edx,ebx
 0068381E    sub         eax,ecx
 00683820    sar         edx,1
>00683822    jns         00683827
 00683824    adc         edx,0
 00683827    add         eax,edx
 00683829    cdq
 0068382A    idiv        eax,ebx
 0068382C    pop         ebx
 0068382D    pop         ebp
 0068382E    ret         4
end;*}

//00683834
{*procedure sub_00683834(?:?; ?:?; ?:?; ?:?);
begin
 00683834    add         ecx,ecx
 00683836    push        ebp
 00683837    mov         ebp,esp
 00683839    mov         eax,ecx
 0068383B    shl         eax,8
 0068383E    push        ebx
 0068383F    mov         ebx,dword ptr [ebp+8]
 00683842    sub         eax,ecx
 00683844    add         eax,ebx
 00683846    add         ebx,ebx
 00683848    add         eax,0FF
 0068384D    cdq
 0068384E    idiv        eax,ebx
 00683850    pop         ebx
 00683851    pop         ebp
 00683852    ret         4
end;*}

//00683858
{*procedure sub_00683858(?:?);
begin
 00683858    push        ebx
 00683859    push        esi
 0068385A    push        edi
 0068385B    push        ebp
 0068385C    add         esp,0FFFFFFD0
 0068385F    mov         dword ptr [esp],eax
 00683862    mov         eax,dword ptr [esp]
 00683865    mov         edx,dword ptr [eax+1C4]
 0068386B    mov         dword ptr [esp+4],edx
 0068386F    mov         edx,dword ptr [esp+4]
 00683873    mov         eax,dword ptr [esp]
 00683876    add         edx,20
 00683879    call        _DF_.
 0068387E    mov         dword ptr [esp+0C],eax
 00683882    mov         ecx,dword ptr [esp]
 00683885    cmp         dword ptr [ecx+74],3
>00683889    jne         006838D2
 0068388B    mov         eax,dword ptr [esp]
 0068388E    mov         eax,dword ptr [eax]
 00683890    add         eax,18
 00683893    mov         edx,dword ptr [esp+0C]
 00683897    mov         dword ptr [eax],edx
 00683899    mov         ecx,dword ptr [esp+4]
 0068389D    mov         edx,dword ptr [ecx+20]
 006838A0    mov         dword ptr [eax+4],edx
 006838A3    mov         ecx,dword ptr [esp+4]
 006838A7    mov         edx,dword ptr [ecx+24]
 006838AA    mov         dword ptr [eax+8],edx
 006838AD    mov         ecx,dword ptr [esp+4]
 006838B1    mov         edx,dword ptr [ecx+28]
 006838B4    mov         dword ptr [eax+0C],edx
 006838B7    mov         eax,dword ptr [esp]
 006838BA    mov         ecx,dword ptr [eax]
 006838BC    mov         dword ptr [ecx+14],5D
 006838C3    mov         edx,1
 006838C8    mov         eax,dword ptr [esp]
 006838CB    mov         ecx,dword ptr [eax]
 006838CD    call        dword ptr [ecx+4]
>006838D0    jmp         006838F2
 006838D2    mov         eax,dword ptr [esp]
 006838D5    mov         eax,dword ptr [eax]
 006838D7    mov         dword ptr [eax+14],5E
 006838DE    mov         edx,dword ptr [esp+0C]
 006838E2    mov         dword ptr [eax+18],edx
 006838E5    mov         edx,1
 006838EA    mov         eax,dword ptr [esp]
 006838ED    mov         ecx,dword ptr [eax]
 006838EF    call        dword ptr [ecx+4]
 006838F2    mov         eax,dword ptr [esp]
 006838F5    mov         edx,dword ptr [eax+74]
 006838F8    push        edx
 006838F9    mov         edx,1
 006838FE    mov         eax,dword ptr [esp+4]
 00683902    mov         ecx,dword ptr [esp+10]
 00683906    mov         ebx,dword ptr [eax+4]
 00683909    call        dword ptr [ebx+8]
 0068390C    mov         dword ptr [esp+8],eax
 00683910    xor         edx,edx
 00683912    mov         eax,dword ptr [esp+0C]
 00683916    mov         dword ptr [esp+1C],eax
 0068391A    mov         dword ptr [esp+10],edx
 0068391E    mov         ecx,dword ptr [esp+8]
 00683922    mov         eax,ecx
 00683924    mov         dword ptr [esp+2C],eax
 00683928    mov         edx,dword ptr [esp+4]
 0068392C    lea         ecx,[edx+20]
 0068392F    mov         dword ptr [esp+20],ecx
>00683933    jmp         006839DD
 00683938    mov         eax,dword ptr [esp+20]
 0068393C    mov         edx,dword ptr [eax]
 0068393E    mov         dword ptr [esp+18],edx
 00683942    mov         eax,dword ptr [esp+1C]
 00683946    cdq
 00683947    idiv        eax,dword ptr [esp+18]
 0068394B    mov         esi,eax
 0068394D    xor         eax,eax
 0068394F    mov         dword ptr [esp+14],eax
 00683953    mov         edx,dword ptr [esp+2C]
 00683957    mov         ecx,edx
 00683959    mov         dword ptr [esp+28],ecx
 0068395D    mov         eax,dword ptr [esp+14]
 00683961    cmp         eax,dword ptr [esp+18]
>00683965    jge         006839CB
 00683967    mov         edx,dword ptr [esp+18]
 0068396B    dec         edx
 0068396C    push        edx
 0068396D    mov         ecx,dword ptr [esp+18]
 00683971    mov         edx,dword ptr [esp+14]
 00683975    mov         eax,dword ptr [esp+4]
 00683979    call        00683810
 0068397E    mov         edi,eax
 00683980    mov         ecx,dword ptr [esp+14]
 00683984    imul        ecx,esi
 00683987    mov         eax,dword ptr [esp+28]
 0068398B    mov         edx,eax
 0068398D    mov         dword ptr [esp+24],edx
 00683991    cmp         ecx,dword ptr [esp+0C]
>00683995    jge         006839BD
 00683997    xor         eax,eax
 00683999    mov         edx,dword ptr [esp+24]
 0068399D    cmp         esi,eax
>0068399F    jle         006839B3
 006839A1    mov         ebx,dword ptr [edx]
 006839A3    add         ebx,ecx
 006839A5    add         ebx,eax
 006839A7    inc         eax
 006839A8    push        ebx
 006839A9    mov         ebx,edi
 006839AB    pop         ebp
 006839AC    cmp         esi,eax
 006839AE    mov         byte ptr [ebp],bl
>006839B1    jg          006839A1
 006839B3    add         ecx,dword ptr [esp+1C]
 006839B7    cmp         ecx,dword ptr [esp+0C]
>006839BB    jl          00683997
 006839BD    inc         dword ptr [esp+14]
 006839C1    mov         eax,dword ptr [esp+14]
 006839C5    cmp         eax,dword ptr [esp+18]
>006839C9    jl          00683967
 006839CB    mov         dword ptr [esp+1C],esi
 006839CF    inc         dword ptr [esp+10]
 006839D3    add         dword ptr [esp+2C],4
 006839D8    add         dword ptr [esp+20],4
 006839DD    mov         edx,dword ptr [esp]
 006839E0    mov         ecx,dword ptr [edx+74]
 006839E3    cmp         ecx,dword ptr [esp+10]
>006839E7    jg          00683938
 006839ED    mov         eax,dword ptr [esp+4]
 006839F1    mov         edx,dword ptr [esp+8]
 006839F5    mov         dword ptr [eax+10],edx
 006839F8    mov         ecx,dword ptr [esp+4]
 006839FC    mov         eax,dword ptr [esp+0C]
 00683A00    mov         dword ptr [ecx+14],eax
 00683A03    add         esp,30
 00683A06    pop         ebp
 00683A07    pop         edi
 00683A08    pop         esi
 00683A09    pop         ebx
 00683A0A    ret
end;*}

//00683A0C
{*procedure sub_00683A0C(?:?);
begin
 00683A0C    push        ebx
 00683A0D    push        esi
 00683A0E    push        edi
 00683A0F    add         esp,0FFFFFFE0
 00683A12    mov         dword ptr [esp],eax
 00683A15    mov         eax,dword ptr [esp]
 00683A18    mov         edx,dword ptr [eax+1C4]
 00683A1E    mov         dword ptr [esp+4],edx
 00683A22    mov         ecx,dword ptr [esp]
 00683A25    cmp         dword ptr [ecx+54],1
>00683A29    jne         00683A40
 00683A2B    mov         dword ptr [esp+14],1FE
 00683A33    mov         eax,dword ptr [esp+4]
 00683A37    mov         dword ptr [eax+1C],1
>00683A3E    jmp         00683A4F
 00683A40    xor         edx,edx
 00683A42    mov         dword ptr [esp+14],edx
 00683A46    mov         ecx,dword ptr [esp+4]
 00683A4A    xor         eax,eax
 00683A4C    mov         dword ptr [ecx+1C],eax
 00683A4F    mov         edx,dword ptr [esp]
 00683A52    mov         ecx,dword ptr [edx+74]
 00683A55    mov         edx,1
 00683A5A    push        ecx
 00683A5B    mov         eax,dword ptr [esp+4]
 00683A5F    mov         ecx,dword ptr [esp+18]
 00683A63    add         ecx,100
 00683A69    mov         ebx,dword ptr [eax+4]
 00683A6C    call        dword ptr [ebx+8]
 00683A6F    mov         edx,dword ptr [esp+4]
 00683A73    mov         dword ptr [edx+18],eax
 00683A76    mov         eax,dword ptr [esp+4]
 00683A7A    mov         ecx,dword ptr [eax+14]
 00683A7D    mov         dword ptr [esp+10],ecx
 00683A81    xor         edi,edi
 00683A83    mov         eax,dword ptr [esp+4]
 00683A87    lea         edx,[eax+20]
 00683A8A    mov         dword ptr [esp+18],edx
>00683A8E    jmp         00683B67
 00683A93    mov         ecx,dword ptr [esp+18]
 00683A97    mov         eax,dword ptr [ecx]
 00683A99    mov         dword ptr [esp+0C],eax
 00683A9D    mov         eax,dword ptr [esp+10]
 00683AA1    cdq
 00683AA2    idiv        eax,dword ptr [esp+0C]
 00683AA6    mov         dword ptr [esp+10],eax
 00683AAA    cmp         dword ptr [esp+14],0
>00683AAF    je          00683ABF
 00683AB1    mov         ecx,dword ptr [esp+4]
 00683AB5    mov         eax,dword ptr [ecx+18]
 00683AB8    add         dword ptr [eax+edi*4],0FF
 00683ABF    mov         edx,dword ptr [esp+4]
 00683AC3    xor         esi,esi
 00683AC5    mov         ecx,dword ptr [edx+18]
 00683AC8    mov         edx,edi
 00683ACA    mov         eax,dword ptr [ecx+edi*4]
 00683ACD    mov         dword ptr [esp+8],eax
 00683AD1    mov         eax,dword ptr [esp+0C]
 00683AD5    dec         eax
 00683AD6    xor         ecx,ecx
 00683AD8    push        eax
 00683AD9    mov         eax,dword ptr [esp+4]
 00683ADD    call        00683834
 00683AE2    xor         ebx,ebx
 00683AE4    mov         edx,dword ptr [esp+8]
 00683AE8    mov         ecx,edx
 00683AEA    mov         dword ptr [esp+1C],ecx
 00683AEE    cmp         eax,ebx
>00683AF0    jge         00683B0A
 00683AF2    mov         eax,dword ptr [esp+0C]
 00683AF6    mov         edx,edi
 00683AF8    dec         eax
 00683AF9    inc         esi
 00683AFA    push        eax
 00683AFB    mov         ecx,esi
 00683AFD    mov         eax,dword ptr [esp+4]
 00683B01    call        00683834
 00683B06    cmp         eax,ebx
>00683B08    jl          00683AF2
 00683B0A    mov         edx,esi
 00683B0C    mov         ecx,dword ptr [esp+1C]
 00683B10    imul        edx,dword ptr [esp+10]
 00683B15    mov         byte ptr [ecx],dl
 00683B17    inc         ebx
 00683B18    inc         dword ptr [esp+1C]
 00683B1C    cmp         ebx,0FF
>00683B22    jle         00683AEE
 00683B24    cmp         dword ptr [esp+14],0
>00683B29    je          00683B61
 00683B2B    mov         ebx,1
 00683B30    mov         eax,dword ptr [esp+8]
 00683B34    add         eax,100
 00683B39    mov         edx,ebx
 00683B3B    mov         ecx,dword ptr [esp+8]
 00683B3F    neg         edx
 00683B41    add         ecx,edx
 00683B43    mov         edx,dword ptr [esp+8]
 00683B47    inc         ebx
 00683B48    mov         dl,byte ptr [edx]
 00683B4A    mov         byte ptr [ecx],dl
 00683B4C    mov         ecx,dword ptr [esp+8]
 00683B50    mov         dl,byte ptr [ecx+0FF]
 00683B56    mov         byte ptr [eax],dl
 00683B58    inc         eax
 00683B59    cmp         ebx,0FF
>00683B5F    jle         00683B39
 00683B61    inc         edi
 00683B62    add         dword ptr [esp+18],4
 00683B67    mov         eax,dword ptr [esp]
 00683B6A    cmp         edi,dword ptr [eax+74]
>00683B6D    jl          00683A93
 00683B73    add         esp,20
 00683B76    pop         edi
 00683B77    pop         esi
 00683B78    pop         ebx
 00683B79    ret
end;*}

//00683B7C
{*function sub_00683B7C(?:?; ?:?):?;
begin
 00683B7C    push        ebx
 00683B7D    push        esi
 00683B7E    push        edi
 00683B7F    push        ebp
 00683B80    mov         esi,dword ptr [eax+4]
 00683B83    mov         ebx,edx
 00683B85    mov         edx,1
 00683B8A    add         esp,0FFFFFFF0
 00683B8D    mov         ecx,400
 00683B92    call        dword ptr [esi]
 00683B94    mov         dword ptr [esp],eax
 00683B97    mov         ebp,ebx
 00683B99    shl         ebp,9
 00683B9C    add         ebp,0FFFFFE00
 00683BA2    xor         eax,eax
 00683BA4    mov         dword ptr [esp+4],eax
 00683BA8    mov         dword ptr [esp+0C],6E93B4
 00683BB0    mov         edx,dword ptr [esp]
 00683BB3    mov         ecx,edx
 00683BB5    mov         dword ptr [esp+8],ecx
 00683BB9    xor         edi,edi
 00683BBB    mov         eax,dword ptr [esp+8]
 00683BBF    mov         esi,eax
 00683BC1    mov         eax,dword ptr [esp+0C]
 00683BC5    mov         ebx,eax
 00683BC7    xor         eax,eax
 00683BC9    mov         al,byte ptr [ebx]
 00683BCB    add         eax,eax
 00683BCD    mov         edx,0FF
 00683BD2    sub         edx,eax
 00683BD4    mov         ecx,edx
 00683BD6    shl         ecx,8
 00683BD9    sub         ecx,edx
 00683BDB    test        ecx,ecx
>00683BDD    jge         00683BEA
 00683BDF    mov         eax,ecx
 00683BE1    neg         eax
 00683BE3    cdq
 00683BE4    idiv        eax,ebp
 00683BE6    neg         eax
>00683BE8    jmp         00683BEF
 00683BEA    mov         eax,ecx
 00683BEC    cdq
 00683BED    idiv        eax,ebp
 00683BEF    mov         dword ptr [esi],eax
 00683BF1    inc         edi
 00683BF2    add         esi,4
 00683BF5    inc         ebx
 00683BF6    cmp         edi,10
>00683BF9    jl          00683BC7
 00683BFB    inc         dword ptr [esp+4]
 00683BFF    add         dword ptr [esp+0C],10
 00683C04    add         dword ptr [esp+8],40
 00683C09    cmp         dword ptr [esp+4],10
>00683C0E    jl          00683BB9
 00683C10    mov         eax,dword ptr [esp]
 00683C13    add         esp,10
 00683C16    pop         ebp
 00683C17    pop         edi
 00683C18    pop         esi
 00683C19    pop         ebx
 00683C1A    ret
end;*}

//00683C1C
{*procedure sub_00683C1C(?:?);
begin
 00683C1C    push        ebx
 00683C1D    push        esi
 00683C1E    push        edi
 00683C1F    add         esp,0FFFFFFF8
 00683C22    mov         dword ptr [esp],eax
 00683C25    mov         eax,dword ptr [esp]
 00683C28    mov         edx,dword ptr [eax+1C4]
 00683C2E    mov         dword ptr [esp+4],edx
 00683C32    xor         ebx,ebx
 00683C34    mov         eax,dword ptr [esp+4]
 00683C38    lea         esi,[eax+20]
>00683C3B    jmp         00683C76
 00683C3D    mov         edi,dword ptr [esi]
 00683C3F    xor         ecx,ecx
 00683C41    xor         edx,edx
 00683C43    mov         eax,dword ptr [esp+4]
 00683C47    add         eax,20
 00683C4A    cmp         ebx,edx
>00683C4C    jle         00683C5F
 00683C4E    cmp         edi,dword ptr [eax]
>00683C50    jne         00683C57
 00683C52    mov         ecx,dword ptr [eax+14]
>00683C55    jmp         00683C5F
 00683C57    inc         edx
 00683C58    add         eax,4
 00683C5B    cmp         ebx,edx
>00683C5D    jg          00683C4E
 00683C5F    test        ecx,ecx
>00683C61    jne         00683C6F
 00683C63    mov         edx,edi
 00683C65    mov         eax,dword ptr [esp]
 00683C68    call        00683B7C
 00683C6D    mov         ecx,eax
 00683C6F    mov         dword ptr [esi+14],ecx
 00683C72    inc         ebx
 00683C73    add         esi,4
 00683C76    mov         edx,dword ptr [esp]
 00683C79    cmp         ebx,dword ptr [edx+74]
>00683C7C    jl          00683C3D
 00683C7E    pop         ecx
 00683C7F    pop         edx
 00683C80    pop         edi
 00683C81    pop         esi
 00683C82    pop         ebx
 00683C83    ret
end;*}

//006841B0
{*function sub_006841B0(?:?):?;
begin
 006841B0    push        ebx
 006841B1    push        esi
 006841B2    mov         ebx,eax
 006841B4    push        edi
 006841B5    push        ebp
 006841B6    push        ecx
 006841B7    mov         eax,dword ptr [ebx+1C4]
 006841BD    mov         edx,dword ptr [ebx+6C]
 006841C0    add         edx,edx
 006841C2    add         edx,4
 006841C5    xor         edi,edi
 006841C7    mov         dword ptr [esp],edx
 006841CA    lea         esi,[eax+44]
>006841CD    jmp         006841E5
 006841CF    mov         eax,ebx
 006841D1    mov         ecx,dword ptr [esp]
 006841D4    mov         edx,1
 006841D9    mov         ebp,dword ptr [eax+4]
 006841DC    call        dword ptr [ebp+4]
 006841DF    mov         dword ptr [esi],eax
 006841E1    inc         edi
 006841E2    add         esi,4
 006841E5    cmp         edi,dword ptr [ebx+74]
>006841E8    jl          006841CF
 006841EA    pop         edx
 006841EB    pop         ebp
 006841EC    pop         edi
 006841ED    pop         esi
 006841EE    pop         ebx
 006841EF    ret
end;*}

//006842E0
procedure @jinit_1pass_quantizer;
begin
{*
 006842E0    push        ebx
 006842E1    mov         ebx,eax
 006842E3    mov         eax,ebx
 006842E5    push        esi
 006842E6    mov         ecx,58
 006842EB    mov         edx,1
 006842F0    mov         esi,dword ptr [eax+4]
 006842F3    call        dword ptr [esi]
 006842F5    mov         dword ptr [ebx+1C4],eax
 006842FB    mov         dword ptr [eax],6841F0
 00684301    mov         dword ptr [eax+8],6842CC
 00684308    mov         dword ptr [eax+0C],6842D0
 0068430F    xor         edx,edx
 00684311    xor         ecx,ecx
 00684313    mov         dword ptr [eax+44],edx
 00684316    mov         dword ptr [eax+34],ecx
 00684319    cmp         dword ptr [ebx+74],4
>0068431D    jle         00684335
 0068431F    mov         eax,dword ptr [ebx]
 00684321    mov         dword ptr [eax+14],36
 00684328    mov         dword ptr [eax+18],4
 0068432F    mov         eax,ebx
 00684331    mov         edx,dword ptr [eax]
 00684333    call        dword ptr [edx]
 00684335    cmp         dword ptr [ebx+5C],100
>0068433C    jle         00684354
 0068433E    mov         eax,dword ptr [ebx]
 00684340    mov         dword ptr [eax+14],38
 00684347    mov         dword ptr [eax+18],100
 0068434E    mov         eax,ebx
 00684350    mov         edx,dword ptr [eax]
 00684352    call        dword ptr [edx]
 00684354    mov         eax,ebx
 00684356    call        00683858
 0068435B    mov         eax,ebx
 0068435D    call        00683A0C
 00684362    cmp         dword ptr [ebx+54],2
>00684366    jne         0068436F
 00684368    mov         eax,ebx
 0068436A    call        006841B0
 0068436F    pop         esi
 00684370    pop         ebx
 00684371    ret
*}
end;

//00684374
procedure _DF_.;
begin
{*
 00684374    push        ebp
 00684375    mov         ebp,esp
 00684377    add         esp,0FFFFFFF4
 0068437A    push        ebx
 0068437B    push        esi
 0068437C    mov         ecx,dword ptr [eax+1C4]
 00684382    mov         ebx,dword ptr [ecx+18]
 00684385    mov         eax,dword ptr [eax+6C]
 00684388    mov         dword ptr [ebp-8],eax
 0068438B    xor         ecx,ecx
 0068438D    mov         dword ptr [ebp-4],ecx
 00684390    mov         dword ptr [ebp-0C],edx
 00684393    mov         eax,dword ptr [ebp-4]
 00684396    cmp         eax,dword ptr [ebp+8]
>00684399    jge         006843ED
 0068439B    mov         edx,dword ptr [ebp-0C]
 0068439E    mov         eax,dword ptr [edx]
 006843A0    mov         ecx,dword ptr [ebp-8]
 006843A3    test        ecx,ecx
>006843A5    jbe         006843DE
 006843A7    movzx       esi,byte ptr [eax+1]
 006843AB    xor         edx,edx
 006843AD    mov         dl,byte ptr [eax]
 006843AF    sar         edx,3
 006843B2    sar         esi,2
 006843B5    shl         esi,6
 006843B8    mov         edx,dword ptr [ebx+edx*4]
 006843BB    add         edx,esi
 006843BD    movzx       esi,byte ptr [eax+2]
 006843C1    sar         esi,3
 006843C4    add         esi,esi
 006843C6    add         edx,esi
 006843C8    inc         word ptr [edx]
 006843CB    mov         si,word ptr [edx]
 006843CE    test        si,si
>006843D1    ja          006843D6
 006843D3    dec         word ptr [edx]
 006843D6    add         eax,3
 006843D9    dec         ecx
 006843DA    test        ecx,ecx
>006843DC    ja          006843A7
 006843DE    inc         dword ptr [ebp-4]
 006843E1    add         dword ptr [ebp-0C],4
 006843E5    mov         eax,dword ptr [ebp-4]
 006843E8    cmp         eax,dword ptr [ebp+8]
>006843EB    jl          0068439B
 006843ED    pop         esi
 006843EE    pop         ebx
 006843EF    mov         esp,ebp
 006843F1    pop         ebp
 006843F2    ret         4
*}
end;

//006843F8
{*function sub_006843F8(?:Single; ?:?):?;
begin
 006843F8    push        ebx
 006843F9    push        esi
 006843FA    push        edi
 006843FB    xor         ebx,ebx
 006843FD    xor         edi,edi
 006843FF    xor         ecx,ecx
 00684401    cmp         edx,ecx
>00684403    jle         0068441E
 00684405    mov         esi,dword ptr [eax+1C]
 00684408    cmp         ebx,esi
>0068440A    jge         00684416
 0068440C    cmp         dword ptr [eax+18],0
>00684410    jle         00684416
 00684412    mov         edi,eax
 00684414    mov         ebx,esi
 00684416    inc         ecx
 00684417    add         eax,20
 0068441A    cmp         edx,ecx
>0068441C    jg          00684405
 0068441E    mov         eax,edi
 00684420    pop         edi
 00684421    pop         esi
 00684422    pop         ebx
 00684423    ret
end;*}

//00684424
{*function sub_00684424(?:Single; ?:?):?;
begin
 00684424    push        ebx
 00684425    push        esi
 00684426    push        edi
 00684427    xor         ebx,ebx
 00684429    xor         edi,edi
 0068442B    xor         ecx,ecx
 0068442D    cmp         edx,ecx
>0068442F    jle         00684444
 00684431    mov         esi,dword ptr [eax+18]
 00684434    cmp         ebx,esi
>00684436    jge         0068443C
 00684438    mov         edi,eax
 0068443A    mov         ebx,esi
 0068443C    inc         ecx
 0068443D    add         eax,20
 00684440    cmp         edx,ecx
>00684442    jg          00684431
 00684444    mov         eax,edi
 00684446    pop         edi
 00684447    pop         esi
 00684448    pop         ebx
 00684449    ret
end;*}

//0068444C
{*procedure sub_0068444C(?:Integer; ?:?);
begin
 0068444C    push        ebx
 0068444D    push        esi
 0068444E    push        edi
 0068444F    add         esp,0FFFFFFB8
 00684452    mov         dword ptr [esp],edx
 00684455    mov         eax,dword ptr [eax+1C4]
 0068445B    mov         eax,dword ptr [eax+18]
 0068445E    mov         dword ptr [esp+4],eax
 00684462    mov         edx,dword ptr [esp]
 00684465    mov         ecx,dword ptr [edx]
 00684467    mov         dword ptr [esp+8],ecx
 0068446B    mov         eax,dword ptr [esp]
 0068446E    mov         edx,dword ptr [eax+4]
 00684471    mov         dword ptr [esp+0C],edx
 00684475    mov         ecx,dword ptr [esp]
 00684478    mov         eax,dword ptr [ecx+8]
 0068447B    mov         dword ptr [esp+10],eax
 0068447F    mov         edx,dword ptr [esp]
 00684482    mov         ecx,dword ptr [edx+0C]
 00684485    mov         dword ptr [esp+14],ecx
 00684489    mov         eax,dword ptr [esp]
 0068448C    mov         edx,dword ptr [eax+10]
 0068448F    mov         dword ptr [esp+18],edx
 00684493    mov         ecx,dword ptr [esp]
 00684496    mov         esi,dword ptr [ecx+14]
 00684499    mov         eax,dword ptr [esp+0C]
 0068449D    cmp         eax,dword ptr [esp+8]
>006844A1    jle         00684517
 006844A3    mov         edx,dword ptr [esp+8]
 006844A7    mov         ecx,dword ptr [esp+4]
 006844AB    lea         eax,[ecx+edx*4]
 006844AE    mov         dword ptr [esp+24],eax
 006844B2    cmp         edx,dword ptr [esp+0C]
>006844B6    jg          00684517
 006844B8    mov         ebx,dword ptr [esp+10]
 006844BC    mov         eax,dword ptr [esp+24]
 006844C0    mov         ecx,eax
 006844C2    mov         dword ptr [esp+20],ecx
 006844C6    cmp         ebx,dword ptr [esp+14]
>006844CA    jg          0068450B
 006844CC    mov         eax,dword ptr [esp+20]
 006844D0    mov         ecx,dword ptr [eax]
 006844D2    mov         eax,ebx
 006844D4    shl         eax,6
 006844D7    add         ecx,eax
 006844D9    mov         eax,dword ptr [esp+18]
 006844DD    add         eax,eax
 006844DF    add         ecx,eax
 006844E1    mov         eax,dword ptr [esp+18]
 006844E5    cmp         esi,eax
>006844E7    jl          00684504
 006844E9    mov         di,word ptr [ecx]
 006844EC    add         ecx,2
 006844EF    test        di,di
>006844F2    je          006844FF
 006844F4    mov         dword ptr [esp+8],edx
 006844F8    mov         eax,dword ptr [esp]
 006844FB    mov         dword ptr [eax],edx
>006844FD    jmp         00684517
 006844FF    inc         eax
 00684500    cmp         esi,eax
>00684502    jge         006844E9
 00684504    inc         ebx
 00684505    cmp         ebx,dword ptr [esp+14]
>00684509    jle         006844CC
 0068450B    inc         edx
 0068450C    add         dword ptr [esp+24],4
 00684511    cmp         edx,dword ptr [esp+0C]
>00684515    jle         006844B8
 00684517    mov         ecx,dword ptr [esp+0C]
 0068451B    cmp         ecx,dword ptr [esp+8]
>0068451F    jle         00684596
 00684521    mov         edx,dword ptr [esp+0C]
 00684525    mov         eax,dword ptr [esp+4]
 00684529    lea         ecx,[eax+edx*4]
 0068452C    mov         dword ptr [esp+2C],ecx
 00684530    cmp         edx,dword ptr [esp+8]
>00684534    jl          00684596
 00684536    mov         ebx,dword ptr [esp+10]
 0068453A    mov         eax,dword ptr [esp+2C]
 0068453E    mov         ecx,eax
 00684540    mov         dword ptr [esp+28],ecx
 00684544    cmp         ebx,dword ptr [esp+14]
>00684548    jg          0068458A
 0068454A    mov         eax,dword ptr [esp+28]
 0068454E    mov         ecx,dword ptr [eax]
 00684550    mov         eax,ebx
 00684552    shl         eax,6
 00684555    add         ecx,eax
 00684557    mov         eax,dword ptr [esp+18]
 0068455B    add         eax,eax
 0068455D    add         ecx,eax
 0068455F    mov         eax,dword ptr [esp+18]
 00684563    cmp         esi,eax
>00684565    jl          00684583
 00684567    mov         di,word ptr [ecx]
 0068456A    add         ecx,2
 0068456D    test        di,di
>00684570    je          0068457E
 00684572    mov         dword ptr [esp+0C],edx
 00684576    mov         eax,dword ptr [esp]
 00684579    mov         dword ptr [eax+4],edx
>0068457C    jmp         00684596
 0068457E    inc         eax
 0068457F    cmp         esi,eax
>00684581    jge         00684567
 00684583    inc         ebx
 00684584    cmp         ebx,dword ptr [esp+14]
>00684588    jle         0068454A
 0068458A    dec         edx
 0068458B    add         dword ptr [esp+2C],0FFFFFFFC
 00684590    cmp         edx,dword ptr [esp+8]
>00684594    jge         00684536
 00684596    mov         ecx,dword ptr [esp+14]
 0068459A    cmp         ecx,dword ptr [esp+10]
>0068459E    jle         0068460B
 006845A0    mov         ebx,dword ptr [esp+10]
 006845A4    cmp         ebx,dword ptr [esp+14]
>006845A8    jg          0068460B
 006845AA    mov         edx,dword ptr [esp+8]
 006845AE    mov         eax,dword ptr [esp+4]
 006845B2    lea         ecx,[eax+edx*4]
 006845B5    mov         dword ptr [esp+30],ecx
 006845B9    cmp         edx,dword ptr [esp+0C]
>006845BD    jg          00684604
 006845BF    mov         eax,dword ptr [esp+30]
 006845C3    mov         ecx,dword ptr [eax]
 006845C5    mov         eax,ebx
 006845C7    shl         eax,6
 006845CA    add         ecx,eax
 006845CC    mov         eax,dword ptr [esp+18]
 006845D0    add         eax,eax
 006845D2    add         ecx,eax
 006845D4    mov         eax,dword ptr [esp+18]
 006845D8    cmp         esi,eax
>006845DA    jl          006845F8
 006845DC    mov         di,word ptr [ecx]
 006845DF    add         ecx,2
 006845E2    test        di,di
>006845E5    je          006845F3
 006845E7    mov         dword ptr [esp+10],ebx
 006845EB    mov         eax,dword ptr [esp]
 006845EE    mov         dword ptr [eax+8],ebx
>006845F1    jmp         0068460B
 006845F3    inc         eax
 006845F4    cmp         esi,eax
>006845F6    jge         006845DC
 006845F8    inc         edx
 006845F9    add         dword ptr [esp+30],4
 006845FE    cmp         edx,dword ptr [esp+0C]
>00684602    jle         006845BF
 00684604    inc         ebx
 00684605    cmp         ebx,dword ptr [esp+14]
>00684609    jle         006845AA
 0068460B    mov         edx,dword ptr [esp+14]
 0068460F    cmp         edx,dword ptr [esp+10]
>00684613    jle         00684680
 00684615    mov         ebx,dword ptr [esp+14]
 00684619    cmp         ebx,dword ptr [esp+10]
>0068461D    jl          00684680
 0068461F    mov         edx,dword ptr [esp+8]
 00684623    mov         eax,dword ptr [esp+4]
 00684627    lea         ecx,[eax+edx*4]
 0068462A    mov         dword ptr [esp+34],ecx
 0068462E    cmp         edx,dword ptr [esp+0C]
>00684632    jg          00684679
 00684634    mov         eax,dword ptr [esp+34]
 00684638    mov         ecx,dword ptr [eax]
 0068463A    mov         eax,ebx
 0068463C    shl         eax,6
 0068463F    add         ecx,eax
 00684641    mov         eax,dword ptr [esp+18]
 00684645    add         eax,eax
 00684647    add         ecx,eax
 00684649    mov         eax,dword ptr [esp+18]
 0068464D    cmp         esi,eax
>0068464F    jl          0068466D
 00684651    mov         di,word ptr [ecx]
 00684654    add         ecx,2
 00684657    test        di,di
>0068465A    je          00684668
 0068465C    mov         dword ptr [esp+14],ebx
 00684660    mov         eax,dword ptr [esp]
 00684663    mov         dword ptr [eax+0C],ebx
>00684666    jmp         00684680
 00684668    inc         eax
 00684669    cmp         esi,eax
>0068466B    jge         00684651
 0068466D    inc         edx
 0068466E    add         dword ptr [esp+34],4
 00684673    cmp         edx,dword ptr [esp+0C]
>00684677    jle         00684634
 00684679    dec         ebx
 0068467A    cmp         ebx,dword ptr [esp+10]
>0068467E    jge         0068461F
 00684680    cmp         esi,dword ptr [esp+18]
>00684684    jle         006846EF
 00684686    mov         eax,dword ptr [esp+18]
 0068468A    cmp         esi,eax
>0068468C    jl          006846EF
 0068468E    mov         edx,dword ptr [esp+8]
 00684692    mov         ecx,dword ptr [esp+4]
 00684696    lea         ecx,[ecx+edx*4]
 00684699    mov         dword ptr [esp+38],ecx
 0068469D    cmp         edx,dword ptr [esp+0C]
>006846A1    jg          006846EA
 006846A3    mov         ecx,dword ptr [esp+38]
 006846A7    mov         ebx,dword ptr [esp+10]
 006846AB    shl         ebx,6
 006846AE    mov         ecx,dword ptr [ecx]
 006846B0    add         ecx,ebx
 006846B2    mov         ebx,eax
 006846B4    add         ebx,ebx
 006846B6    add         ecx,ebx
 006846B8    mov         ebx,dword ptr [esp+10]
 006846BC    cmp         ebx,dword ptr [esp+14]
>006846C0    jg          006846DE
 006846C2    cmp         word ptr [ecx],0
>006846C6    je          006846D4
 006846C8    mov         dword ptr [esp+18],eax
 006846CC    mov         edx,dword ptr [esp]
 006846CF    mov         dword ptr [edx+10],eax
>006846D2    jmp         006846EF
 006846D4    inc         ebx
 006846D5    add         ecx,40
 006846D8    cmp         ebx,dword ptr [esp+14]
>006846DC    jle         006846C2
 006846DE    inc         edx
 006846DF    add         dword ptr [esp+38],4
 006846E4    cmp         edx,dword ptr [esp+0C]
>006846E8    jle         006846A3
 006846EA    inc         eax
 006846EB    cmp         esi,eax
>006846ED    jge         0068468E
 006846EF    cmp         esi,dword ptr [esp+18]
>006846F3    jle         0068475E
 006846F5    mov         eax,esi
 006846F7    cmp         eax,dword ptr [esp+18]
>006846FB    jl          0068475E
 006846FD    mov         edx,dword ptr [esp+8]
 00684701    mov         ecx,dword ptr [esp+4]
 00684705    lea         ecx,[ecx+edx*4]
 00684708    mov         dword ptr [esp+3C],ecx
 0068470C    cmp         edx,dword ptr [esp+0C]
>00684710    jg          00684757
 00684712    mov         ecx,dword ptr [esp+3C]
 00684716    mov         ebx,dword ptr [esp+10]
 0068471A    shl         ebx,6
 0068471D    mov         ecx,dword ptr [ecx]
 0068471F    add         ecx,ebx
 00684721    mov         ebx,eax
 00684723    add         ebx,ebx
 00684725    add         ecx,ebx
 00684727    mov         ebx,dword ptr [esp+10]
 0068472B    cmp         ebx,dword ptr [esp+14]
>0068472F    jg          0068474B
 00684731    cmp         word ptr [ecx],0
>00684735    je          00684741
 00684737    mov         esi,eax
 00684739    mov         edx,dword ptr [esp]
 0068473C    mov         dword ptr [edx+14],eax
>0068473F    jmp         0068475E
 00684741    inc         ebx
 00684742    add         ecx,40
 00684745    cmp         ebx,dword ptr [esp+14]
>00684749    jle         00684731
 0068474B    inc         edx
 0068474C    add         dword ptr [esp+3C],4
 00684751    cmp         edx,dword ptr [esp+0C]
>00684755    jle         00684712
 00684757    dec         eax
 00684758    cmp         eax,dword ptr [esp+18]
>0068475C    jge         006846FD
 0068475E    mov         eax,dword ptr [esp+0C]
 00684762    mov         edx,dword ptr [esp+14]
 00684766    sub         eax,dword ptr [esp+8]
 0068476A    sub         edx,dword ptr [esp+10]
 0068476E    shl         eax,3
 00684771    mov         ecx,esi
 00684773    mov         ebx,eax
 00684775    imul        ebx,eax
 00684778    shl         edx,2
 0068477B    sub         ecx,dword ptr [esp+18]
 0068477F    shl         ecx,3
 00684782    add         ecx,ecx
 00684784    lea         edx,[edx+edx*2]
 00684787    mov         eax,edx
 00684789    imul        edx
 0068478B    mov         edx,ecx
 0068478D    add         ebx,eax
 0068478F    imul        edx,ecx
 00684792    mov         ecx,dword ptr [esp]
 00684795    add         ebx,edx
 00684797    xor         eax,eax
 00684799    mov         dword ptr [ecx+18],ebx
 0068479C    mov         dword ptr [esp+1C],eax
 006847A0    mov         edx,dword ptr [esp+8]
 006847A4    mov         ecx,dword ptr [esp+4]
 006847A8    lea         eax,[ecx+edx*4]
 006847AB    mov         dword ptr [esp+44],eax
 006847AF    cmp         edx,dword ptr [esp+0C]
>006847B3    jg          0068480B
 006847B5    mov         ebx,dword ptr [esp+10]
 006847B9    mov         eax,dword ptr [esp+44]
 006847BD    mov         ecx,eax
 006847BF    mov         dword ptr [esp+40],ecx
 006847C3    cmp         ebx,dword ptr [esp+14]
>006847C7    jg          006847FF
 006847C9    mov         eax,dword ptr [esp+40]
 006847CD    mov         ecx,dword ptr [eax]
 006847CF    mov         eax,ebx
 006847D1    shl         eax,6
 006847D4    add         ecx,eax
 006847D6    mov         eax,dword ptr [esp+18]
 006847DA    add         eax,eax
 006847DC    add         ecx,eax
 006847DE    mov         eax,dword ptr [esp+18]
 006847E2    cmp         esi,eax
>006847E4    jl          006847F8
 006847E6    cmp         word ptr [ecx],0
>006847EA    je          006847F0
 006847EC    inc         dword ptr [esp+1C]
 006847F0    inc         eax
 006847F1    add         ecx,2
 006847F4    cmp         esi,eax
>006847F6    jge         006847E6
 006847F8    inc         ebx
 006847F9    cmp         ebx,dword ptr [esp+14]
>006847FD    jle         006847C9
 006847FF    inc         edx
 00684800    add         dword ptr [esp+44],4
 00684805    cmp         edx,dword ptr [esp+0C]
>00684809    jle         006847B5
 0068480B    mov         edx,dword ptr [esp]
 0068480E    mov         ecx,dword ptr [esp+1C]
 00684812    mov         dword ptr [edx+1C],ecx
 00684815    add         esp,48
 00684818    pop         edi
 00684819    pop         esi
 0068481A    pop         ebx
 0068481B    ret
end;*}

//0068481C
{*function sub_0068481C(?:?; ?:?; ?:?; ?:?):?;
begin
 0068481C    push        ebp
 0068481D    mov         ebp,esp
 0068481F    add         esp,0FFFFFFF0
 00684822    push        ebx
 00684823    push        esi
 00684824    mov         esi,ecx
 00684826    mov         dword ptr [ebp-8],edx
 00684829    mov         dword ptr [ebp-4],eax
 0068482C    cmp         esi,dword ptr [ebp+8]
>0068482F    jge         0068492C
 00684835    mov         eax,esi
 00684837    add         eax,eax
 00684839    cmp         eax,dword ptr [ebp+8]
>0068483C    jg          0068484A
 0068483E    mov         edx,esi
 00684840    mov         eax,dword ptr [ebp-8]
 00684843    call        006843F8
>00684848    jmp         00684854
 0068484A    mov         edx,esi
 0068484C    mov         eax,dword ptr [ebp-8]
 0068484F    call        00684424
 00684854    test        eax,eax
>00684856    je          0068492C
 0068485C    mov         ebx,esi
 0068485E    shl         ebx,5
 00684861    add         ebx,dword ptr [ebp-8]
 00684864    mov         edx,dword ptr [eax+4]
 00684867    mov         dword ptr [ebx+4],edx
 0068486A    mov         ecx,dword ptr [eax+0C]
 0068486D    mov         dword ptr [ebx+0C],ecx
 00684870    mov         edx,dword ptr [eax+14]
 00684873    mov         dword ptr [ebx+14],edx
 00684876    mov         ecx,dword ptr [eax]
 00684878    mov         dword ptr [ebx],ecx
 0068487A    mov         edx,dword ptr [eax+8]
 0068487D    mov         dword ptr [ebx+8],edx
 00684880    mov         ecx,dword ptr [eax+10]
 00684883    mov         dword ptr [ebx+10],ecx
 00684886    mov         edx,dword ptr [eax+4]
 00684889    sub         edx,dword ptr [eax]
 0068488B    shl         edx,3
 0068488E    mov         dword ptr [ebp-0C],edx
 00684891    mov         ecx,dword ptr [eax+0C]
 00684894    sub         ecx,dword ptr [eax+8]
 00684897    shl         ecx,2
 0068489A    lea         edx,[ecx+ecx*2]
 0068489D    mov         ecx,dword ptr [eax+14]
 006848A0    sub         ecx,dword ptr [eax+10]
 006848A3    shl         ecx,3
 006848A6    add         ecx,ecx
 006848A8    mov         dword ptr [ebp-10],ecx
 006848AB    mov         ecx,1
 006848B0    cmp         edx,dword ptr [ebp-10]
>006848B3    jge         006848BD
 006848B5    mov         edx,dword ptr [ebp-10]
 006848B8    mov         ecx,2
 006848BD    cmp         edx,dword ptr [ebp-0C]
>006848C0    jge         006848C4
 006848C2    xor         ecx,ecx
 006848C4    sub         ecx,1
>006848C7    jb          006848D0
>006848C9    je          006848E4
 006848CB    dec         ecx
>006848CC    je          006848FA
>006848CE    jmp         0068490E
 006848D0    mov         edx,dword ptr [eax+4]
 006848D3    add         edx,dword ptr [eax]
 006848D5    sar         edx,1
>006848D7    jns         006848DC
 006848D9    adc         edx,0
 006848DC    mov         dword ptr [eax+4],edx
 006848DF    inc         edx
 006848E0    mov         dword ptr [ebx],edx
>006848E2    jmp         0068490E
 006848E4    mov         edx,dword ptr [eax+0C]
 006848E7    add         edx,dword ptr [eax+8]
 006848EA    sar         edx,1
>006848EC    jns         006848F1
 006848EE    adc         edx,0
 006848F1    mov         dword ptr [eax+0C],edx
 006848F4    inc         edx
 006848F5    mov         dword ptr [ebx+8],edx
>006848F8    jmp         0068490E
 006848FA    mov         edx,dword ptr [eax+14]
 006848FD    add         edx,dword ptr [eax+10]
 00684900    sar         edx,1
>00684902    jns         00684907
 00684904    adc         edx,0
 00684907    mov         dword ptr [eax+14],edx
 0068490A    inc         edx
 0068490B    mov         dword ptr [ebx+10],edx
 0068490E    mov         edx,eax
 00684910    mov         eax,dword ptr [ebp-4]
 00684913    call        0068444C
 00684918    mov         edx,ebx
 0068491A    mov         eax,dword ptr [ebp-4]
 0068491D    call        0068444C
 00684922    inc         esi
 00684923    cmp         esi,dword ptr [ebp+8]
>00684926    jl          00684835
 0068492C    mov         eax,esi
 0068492E    pop         esi
 0068492F    pop         ebx
 00684930    mov         esp,ebp
 00684932    pop         ebp
 00684933    ret         4
end;*}

//00684938
{*procedure sub_00684938(?:?; ?:?; ?:?);
begin
 00684938    push        ebx
 00684939    push        esi
 0068493A    push        edi
 0068493B    push        ebp
 0068493C    add         esp,0FFFFFFD0
 0068493F    mov         dword ptr [esp+4],ecx
 00684943    mov         dword ptr [esp],eax
 00684946    mov         eax,dword ptr [esp]
 00684949    xor         ecx,ecx
 0068494B    mov         eax,dword ptr [eax+1C4]
 00684951    mov         eax,dword ptr [eax+18]
 00684954    mov         dword ptr [esp+18],ecx
 00684958    xor         ecx,ecx
 0068495A    mov         dword ptr [esp+1C],ecx
 0068495E    xor         ecx,ecx
 00684960    mov         dword ptr [esp+20],ecx
 00684964    xor         ecx,ecx
 00684966    mov         dword ptr [esp+24],ecx
 0068496A    mov         ecx,dword ptr [edx]
 0068496C    mov         ebx,dword ptr [edx+4]
 0068496F    mov         dword ptr [esp+8],ebx
 00684973    mov         ebx,dword ptr [edx+8]
 00684976    lea         eax,[eax+ecx*4]
 00684979    mov         dword ptr [esp+0C],ebx
 0068497D    mov         ebx,dword ptr [edx+0C]
 00684980    mov         dword ptr [esp+10],ebx
 00684984    mov         ebx,dword ptr [edx+10]
 00684987    mov         dword ptr [esp+14],ebx
 0068498B    mov         esi,dword ptr [edx+14]
 0068498E    mov         dword ptr [esp+2C],eax
 00684992    cmp         ecx,dword ptr [esp+8]
>00684996    jg          00684A27
 0068499C    mov         ebx,dword ptr [esp+0C]
 006849A0    mov         eax,dword ptr [esp+2C]
 006849A4    mov         edx,eax
 006849A6    mov         dword ptr [esp+28],edx
 006849AA    cmp         ebx,dword ptr [esp+10]
>006849AE    jg          00684A17
 006849B0    mov         eax,dword ptr [esp+28]
 006849B4    mov         edi,dword ptr [eax]
 006849B6    mov         eax,ebx
 006849B8    shl         eax,6
 006849BB    add         edi,eax
 006849BD    mov         edx,dword ptr [esp+14]
 006849C1    add         edx,edx
 006849C3    add         edi,edx
 006849C5    mov         edx,dword ptr [esp+14]
 006849C9    cmp         esi,edx
>006849CB    jl          00684A10
 006849CD    mov         ax,word ptr [edi]
 006849D0    add         edi,2
 006849D3    movzx       eax,ax
 006849D6    test        eax,eax
>006849D8    je          00684A0B
 006849DA    add         dword ptr [esp+18],eax
 006849DE    mov         ebp,ecx
 006849E0    shl         ebp,3
 006849E3    add         ebp,4
 006849E6    imul        ebp,eax
 006849E9    add         dword ptr [esp+1C],ebp
 006849ED    mov         ebp,ebx
 006849EF    shl         ebp,2
 006849F2    add         ebp,2
 006849F5    imul        ebp,eax
 006849F8    add         dword ptr [esp+20],ebp
 006849FC    mov         ebp,edx
 006849FE    shl         ebp,3
 00684A01    add         ebp,4
 00684A04    imul        ebp,eax
 00684A07    add         dword ptr [esp+24],ebp
 00684A0B    inc         edx
 00684A0C    cmp         esi,edx
>00684A0E    jge         006849CD
 00684A10    inc         ebx
 00684A11    cmp         ebx,dword ptr [esp+10]
>00684A15    jle         006849B0
 00684A17    inc         ecx
 00684A18    add         dword ptr [esp+2C],4
 00684A1D    cmp         ecx,dword ptr [esp+8]
>00684A21    jle         0068499C
 00684A27    mov         ecx,dword ptr [esp+18]
 00684A2B    sar         ecx,1
 00684A2D    mov         eax,ecx
 00684A2F    add         eax,dword ptr [esp+1C]
 00684A33    cdq
 00684A34    idiv        eax,dword ptr [esp+18]
 00684A38    mov         edx,dword ptr [esp]
 00684A3B    mov         ebx,dword ptr [edx+84]
 00684A41    mov         edx,dword ptr [ebx]
 00684A43    mov         esi,dword ptr [esp+4]
 00684A47    mov         byte ptr [edx+esi],al
 00684A4A    mov         eax,ecx
 00684A4C    add         eax,dword ptr [esp+20]
 00684A50    cdq
 00684A51    idiv        eax,dword ptr [esp+18]
 00684A55    mov         edx,dword ptr [ebx+4]
 00684A58    mov         esi,dword ptr [esp+4]
 00684A5C    mov         byte ptr [edx+esi],al
 00684A5F    mov         eax,ecx
 00684A61    add         eax,dword ptr [esp+24]
 00684A65    cdq
 00684A66    idiv        eax,dword ptr [esp+18]
 00684A6A    mov         ecx,dword ptr [ebx+8]
 00684A6D    mov         edx,dword ptr [esp+4]
 00684A71    mov         byte ptr [ecx+edx],al
 00684A74    add         esp,30
 00684A77    pop         ebp
 00684A78    pop         edi
 00684A79    pop         esi
 00684A7A    pop         ebx
 00684A7B    ret
end;*}

//00684A7C
{*function sub_00684A7C(?:?; ?:?):?;
begin
 00684A7C    push        ebx
 00684A7D    push        esi
 00684A7E    push        edi
 00684A7F    mov         edi,eax
 00684A81    mov         eax,edi
 00684A83    mov         ebx,edx
 00684A85    push        ebp
 00684A86    mov         ecx,ebx
 00684A88    mov         esi,dword ptr [eax+4]
 00684A8B    mov         edx,1
 00684A90    shl         ecx,5
 00684A93    call        dword ptr [esi]
 00684A95    mov         esi,eax
 00684A97    xor         eax,eax
 00684A99    xor         edx,edx
 00684A9B    xor         ecx,ecx
 00684A9D    mov         dword ptr [esi],eax
 00684A9F    mov         eax,edi
 00684AA1    mov         dword ptr [esi+4],1F
 00684AA8    mov         dword ptr [esi+8],edx
 00684AAB    mov         edx,esi
 00684AAD    mov         dword ptr [esi+0C],3F
 00684AB4    mov         dword ptr [esi+10],ecx
 00684AB7    mov         ebp,1
 00684ABC    mov         dword ptr [esi+14],1F
 00684AC3    call        0068444C
 00684AC8    push        ebx
 00684AC9    mov         ecx,ebp
 00684ACB    mov         edx,esi
 00684ACD    mov         eax,edi
 00684ACF    call        0068481C
 00684AD4    mov         ebp,eax
 00684AD6    xor         ebx,ebx
 00684AD8    cmp         ebp,ebx
>00684ADA    jle         00684AF1
 00684ADC    mov         edx,ebx
 00684ADE    mov         ecx,ebx
 00684AE0    shl         edx,5
 00684AE3    mov         eax,edi
 00684AE5    add         edx,esi
 00684AE7    call        00684938
 00684AEC    inc         ebx
 00684AED    cmp         ebp,ebx
>00684AEF    jg          00684ADC
 00684AF1    mov         dword ptr [edi+80],ebp
 00684AF7    mov         edx,1
 00684AFC    mov         eax,dword ptr [edi]
 00684AFE    mov         dword ptr [eax+14],5F
 00684B05    mov         dword ptr [eax+18],ebp
 00684B08    mov         eax,edi
 00684B0A    mov         ecx,dword ptr [eax]
 00684B0C    call        dword ptr [ecx+4]
 00684B0F    pop         ebp
 00684B10    pop         edi
 00684B11    pop         esi
 00684B12    pop         ebx
 00684B13    ret
end;*}

//00684B14
{*function sub_00684B14(?:Integer; ?:?; ?:?; ?:?; ?:?):?;
begin
 00684B14    push        ebp
 00684B15    mov         ebp,esp
 00684B17    add         esp,0FFFFFBC4
 00684B1D    push        ebx
 00684B1E    push        esi
 00684B1F    mov         dword ptr [ebp-8],ecx
 00684B22    mov         dword ptr [ebp-4],edx
 00684B25    mov         edx,dword ptr [eax+80]
 00684B2B    mov         dword ptr [ebp-0C],edx
 00684B2E    mov         ecx,dword ptr [ebp-4]
 00684B31    add         ecx,18
 00684B34    mov         dword ptr [ebp-10],ecx
 00684B37    mov         edx,dword ptr [ebp-4]
 00684B3A    add         edx,dword ptr [ebp-10]
 00684B3D    sar         edx,1
 00684B3F    mov         dword ptr [ebp-1C],edx
 00684B42    mov         ecx,dword ptr [ebp-8]
 00684B45    add         ecx,1C
 00684B48    mov         dword ptr [ebp-14],ecx
 00684B4B    mov         edx,dword ptr [ebp-8]
 00684B4E    add         edx,dword ptr [ebp-14]
 00684B51    sar         edx,1
 00684B53    mov         dword ptr [ebp-20],edx
 00684B56    mov         ecx,dword ptr [ebp+0C]
 00684B59    add         ecx,18
 00684B5C    mov         dword ptr [ebp-18],ecx
 00684B5F    xor         ecx,ecx
 00684B61    mov         edx,dword ptr [ebp+0C]
 00684B64    add         edx,dword ptr [ebp-18]
 00684B67    sar         edx,1
 00684B69    mov         dword ptr [ebp-24],edx
 00684B6C    lea         edx,[ebp-43C]
 00684B72    mov         dword ptr [ebp-2C],7FFFFFFF
 00684B79    mov         dword ptr [ebp-28],ecx
 00684B7C    mov         dword ptr [ebp-3C],edx
 00684B7F    mov         ecx,dword ptr [eax+84]
 00684B85    mov         edx,dword ptr [ecx+8]
 00684B88    mov         ecx,edx
 00684B8A    mov         dword ptr [ebp-38],ecx
 00684B8D    mov         edx,dword ptr [eax+84]
 00684B93    mov         ecx,dword ptr [edx+4]
 00684B96    mov         edx,ecx
 00684B98    mov         dword ptr [ebp-34],edx
 00684B9B    mov         eax,dword ptr [eax+84]
 00684BA1    mov         ecx,dword ptr [eax]
 00684BA3    mov         eax,ecx
 00684BA5    mov         dword ptr [ebp-30],eax
 00684BA8    mov         edx,dword ptr [ebp-28]
 00684BAB    cmp         edx,dword ptr [ebp-0C]
>00684BAE    jge         00684D15
 00684BB4    mov         ecx,dword ptr [ebp-30]
 00684BB7    xor         ebx,ebx
 00684BB9    mov         bl,byte ptr [ecx]
 00684BBB    cmp         ebx,dword ptr [ebp-4]
>00684BBE    jge         00684BD6
 00684BC0    mov         eax,ebx
 00684BC2    sub         eax,dword ptr [ebp-4]
 00684BC5    mov         edx,eax
 00684BC7    imul        edx,eax
 00684BCA    mov         eax,ebx
 00684BCC    sub         eax,dword ptr [ebp-10]
 00684BCF    mov         ecx,eax
 00684BD1    imul        ecx,eax
>00684BD4    jmp         00684C0E
 00684BD6    cmp         ebx,dword ptr [ebp-10]
>00684BD9    jle         00684BF1
 00684BDB    mov         eax,ebx
 00684BDD    sub         eax,dword ptr [ebp-10]
 00684BE0    mov         edx,eax
 00684BE2    imul        edx,eax
 00684BE5    mov         eax,ebx
 00684BE7    sub         eax,dword ptr [ebp-4]
 00684BEA    mov         ecx,eax
 00684BEC    imul        ecx,eax
>00684BEF    jmp         00684C0E
 00684BF1    xor         edx,edx
 00684BF3    cmp         ebx,dword ptr [ebp-1C]
>00684BF6    jg          00684C04
 00684BF8    mov         eax,ebx
 00684BFA    sub         eax,dword ptr [ebp-10]
 00684BFD    mov         ecx,eax
 00684BFF    imul        ecx,eax
>00684C02    jmp         00684C0E
 00684C04    mov         eax,ebx
 00684C06    sub         eax,dword ptr [ebp-4]
 00684C09    mov         ecx,eax
 00684C0B    imul        ecx,eax
 00684C0E    mov         eax,dword ptr [ebp-34]
 00684C11    xor         ebx,ebx
 00684C13    mov         bl,byte ptr [eax]
 00684C15    cmp         ebx,dword ptr [ebp-8]
>00684C18    jge         00684C38
 00684C1A    mov         eax,ebx
 00684C1C    sub         eax,dword ptr [ebp-8]
 00684C1F    sub         ebx,dword ptr [ebp-14]
 00684C22    lea         eax,[eax+eax*2]
 00684C25    mov         esi,eax
 00684C27    imul        esi,eax
 00684C2A    lea         eax,[ebx+ebx*2]
 00684C2D    add         edx,esi
 00684C2F    mov         ebx,eax
 00684C31    imul        ebx,eax
 00684C34    add         ecx,ebx
>00684C36    jmp         00684C7C
 00684C38    cmp         ebx,dword ptr [ebp-14]
>00684C3B    jle         00684C5B
 00684C3D    mov         eax,ebx
 00684C3F    sub         eax,dword ptr [ebp-14]
 00684C42    sub         ebx,dword ptr [ebp-8]
 00684C45    lea         eax,[eax+eax*2]
 00684C48    mov         esi,eax
 00684C4A    imul        esi,eax
 00684C4D    lea         eax,[ebx+ebx*2]
 00684C50    add         edx,esi
 00684C52    mov         ebx,eax
 00684C54    imul        ebx,eax
 00684C57    add         ecx,ebx
>00684C59    jmp         00684C7C
 00684C5B    cmp         ebx,dword ptr [ebp-20]
>00684C5E    jg          00684C6F
 00684C60    sub         ebx,dword ptr [ebp-14]
 00684C63    lea         eax,[ebx+ebx*2]
 00684C66    mov         ebx,eax
 00684C68    imul        ebx,eax
 00684C6B    add         ecx,ebx
>00684C6D    jmp         00684C7C
 00684C6F    sub         ebx,dword ptr [ebp-8]
 00684C72    lea         eax,[ebx+ebx*2]
 00684C75    mov         ebx,eax
 00684C77    imul        ebx,eax
 00684C7A    add         ecx,ebx
 00684C7C    mov         eax,dword ptr [ebp-38]
 00684C7F    xor         ebx,ebx
 00684C81    mov         bl,byte ptr [eax]
 00684C83    cmp         ebx,dword ptr [ebp+0C]
>00684C86    jge         00684CA6
 00684C88    mov         eax,ebx
 00684C8A    sub         eax,dword ptr [ebp+0C]
 00684C8D    add         eax,eax
 00684C8F    mov         esi,eax
 00684C91    imul        esi,eax
 00684C94    add         edx,esi
 00684C96    mov         eax,ebx
 00684C98    sub         eax,dword ptr [ebp-18]
 00684C9B    add         eax,eax
 00684C9D    mov         ebx,eax
 00684C9F    imul        ebx,eax
 00684CA2    add         ecx,ebx
>00684CA4    jmp         00684CEC
 00684CA6    cmp         ebx,dword ptr [ebp-18]
>00684CA9    jle         00684CC9
 00684CAB    mov         eax,ebx
 00684CAD    sub         eax,dword ptr [ebp-18]
 00684CB0    add         eax,eax
 00684CB2    mov         esi,eax
 00684CB4    imul        esi,eax
 00684CB7    add         edx,esi
 00684CB9    mov         eax,ebx
 00684CBB    sub         eax,dword ptr [ebp+0C]
 00684CBE    add         eax,eax
 00684CC0    mov         ebx,eax
 00684CC2    imul        ebx,eax
 00684CC5    add         ecx,ebx
>00684CC7    jmp         00684CEC
 00684CC9    cmp         ebx,dword ptr [ebp-24]
>00684CCC    jg          00684CDE
 00684CCE    mov         eax,ebx
 00684CD0    sub         eax,dword ptr [ebp-18]
 00684CD3    add         eax,eax
 00684CD5    mov         ebx,eax
 00684CD7    imul        ebx,eax
 00684CDA    add         ecx,ebx
>00684CDC    jmp         00684CEC
 00684CDE    mov         eax,ebx
 00684CE0    sub         eax,dword ptr [ebp+0C]
 00684CE3    add         eax,eax
 00684CE5    mov         ebx,eax
 00684CE7    imul        ebx,eax
 00684CEA    add         ecx,ebx
 00684CEC    mov         eax,dword ptr [ebp-3C]
 00684CEF    mov         dword ptr [eax],edx
 00684CF1    cmp         ecx,dword ptr [ebp-2C]
>00684CF4    jge         00684CF9
 00684CF6    mov         dword ptr [ebp-2C],ecx
 00684CF9    inc         dword ptr [ebp-28]
 00684CFC    add         dword ptr [ebp-3C],4
 00684D00    inc         dword ptr [ebp-38]
 00684D03    inc         dword ptr [ebp-34]
 00684D06    inc         dword ptr [ebp-30]
 00684D09    mov         edx,dword ptr [ebp-28]
 00684D0C    cmp         edx,dword ptr [ebp-0C]
>00684D0F    jl          00684BB4
 00684D15    xor         eax,eax
 00684D17    xor         ecx,ecx
 00684D19    mov         dword ptr [ebp-28],eax
 00684D1C    lea         eax,[ebp-43C]
 00684D22    mov         ebx,dword ptr [ebp-28]
 00684D25    mov         edx,dword ptr [ebp+8]
 00684D28    cmp         ebx,dword ptr [ebp-0C]
>00684D2B    jge         00684D49
 00684D2D    mov         ebx,dword ptr [eax]
 00684D2F    cmp         ebx,dword ptr [ebp-2C]
>00684D32    jg          00684D3B
 00684D34    mov         bl,byte ptr [ebp-28]
 00684D37    inc         ecx
 00684D38    mov         byte ptr [edx],bl
 00684D3A    inc         edx
 00684D3B    inc         dword ptr [ebp-28]
 00684D3E    add         eax,4
 00684D41    mov         ebx,dword ptr [ebp-28]
 00684D44    cmp         ebx,dword ptr [ebp-0C]
>00684D47    jl          00684D2D
 00684D49    mov         eax,ecx
 00684D4B    pop         esi
 00684D4C    pop         ebx
 00684D4D    mov         esp,ebp
 00684D4F    pop         ebp
 00684D50    ret         8
end;*}

//00684D54
{*procedure sub_00684D54(?:Integer; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00684D54    push        ebp
 00684D55    mov         ebp,esp
 00684D57    add         esp,0FFFFFDC4
 00684D5D    push        ebx
 00684D5E    push        esi
 00684D5F    push        edi
 00684D60    mov         dword ptr [ebp-0C],ecx
 00684D63    mov         dword ptr [ebp-8],edx
 00684D66    mov         dword ptr [ebp-4],eax
 00684D69    mov         dword ptr [ebp-18],7F
 00684D70    lea         ecx,[ebp-23C]
 00684D76    mov         dword ptr [ecx],7FFFFFFF
 00684D7C    add         ecx,4
 00684D7F    dec         dword ptr [ebp-18]
 00684D82    cmp         dword ptr [ebp-18],0
>00684D86    jge         00684D76
 00684D88    xor         eax,eax
 00684D8A    mov         dword ptr [ebp-18],eax
 00684D8D    mov         edx,dword ptr [ebp+0C]
 00684D90    mov         eax,edx
 00684D92    mov         dword ptr [ebp-3C],eax
 00684D95    mov         edx,dword ptr [ebp-18]
 00684D98    cmp         edx,dword ptr [ebp+10]
>00684D9B    jge         00684EC3
 00684DA1    mov         ecx,dword ptr [ebp-3C]
 00684DA4    xor         eax,eax
 00684DA6    mov         al,byte ptr [ecx]
 00684DA8    mov         dword ptr [ebp-1C],eax
 00684DAB    mov         edx,dword ptr [ebp-4]
 00684DAE    mov         ecx,dword ptr [ebp-1C]
 00684DB1    mov         edx,dword ptr [edx+84]
 00684DB7    mov         eax,dword ptr [edx]
 00684DB9    movzx       eax,byte ptr [eax+ecx]
 00684DBD    push        eax
 00684DBE    mov         eax,dword ptr [ebp-8]
 00684DC1    pop         ecx
 00684DC2    sub         eax,ecx
 00684DC4    mov         ecx,eax
 00684DC6    imul        ecx,eax
 00684DC9    mov         dword ptr [ebp-24],ecx
 00684DCC    mov         ecx,dword ptr [edx+4]
 00684DCF    mov         ebx,dword ptr [ebp-1C]
 00684DD2    shl         eax,4
 00684DD5    movzx       ecx,byte ptr [ecx+ebx]
 00684DD9    mov         ebx,dword ptr [ebp-0C]
 00684DDC    add         eax,40
 00684DDF    sub         ebx,ecx
 00684DE1    lea         ecx,[ebx+ebx*2]
 00684DE4    mov         dword ptr [ebp-34],ecx
 00684DE7    mov         ecx,dword ptr [ebp-34]
 00684DEA    imul        ecx,dword ptr [ebp-34]
 00684DEE    add         dword ptr [ebp-24],ecx
 00684DF1    mov         ecx,dword ptr [ebp-1C]
 00684DF4    mov         edx,dword ptr [edx+8]
 00684DF7    movzx       edx,byte ptr [edx+ecx]
 00684DFB    mov         ecx,dword ptr [ebp+14]
 00684DFE    sub         ecx,edx
 00684E00    add         ecx,ecx
 00684E02    mov         dword ptr [ebp-38],ecx
 00684E05    mov         edx,dword ptr [ebp-38]
 00684E08    imul        edx,dword ptr [ebp-38]
 00684E0C    add         dword ptr [ebp-24],edx
 00684E0F    mov         edx,dword ptr [ebp-34]
 00684E12    shl         edx,3
 00684E15    lea         edx,[edx+edx*2]
 00684E18    add         edx,90
 00684E1E    mov         dword ptr [ebp-34],edx
 00684E21    mov         ecx,dword ptr [ebp-38]
 00684E24    shl         ecx,5
 00684E27    add         ecx,100
 00684E2D    mov         dword ptr [ebp-38],ecx
 00684E30    lea         ecx,[ebp-23C]
 00684E36    mov         edx,dword ptr [ebp+8]
 00684E39    mov         dword ptr [ebp-20],edx
 00684E3C    mov         dword ptr [ebp-2C],eax
 00684E3F    mov         dword ptr [ebp-10],3
 00684E46    mov         eax,dword ptr [ebp-24]
 00684E49    mov         dword ptr [ebp-28],eax
 00684E4C    mov         eax,dword ptr [ebp-34]
 00684E4F    mov         dword ptr [ebp-30],eax
 00684E52    mov         dword ptr [ebp-14],7
 00684E59    mov         esi,dword ptr [ebp-28]
 00684E5C    mov         edx,dword ptr [ebp-38]
 00684E5F    mov         eax,3
 00684E64    cmp         esi,dword ptr [ecx]
>00684E66    jge         00684E72
 00684E68    mov         dword ptr [ecx],esi
 00684E6A    mov         bl,byte ptr [ebp-1C]
 00684E6D    mov         edi,dword ptr [ebp-20]
 00684E70    mov         byte ptr [edi],bl
 00684E72    add         esi,edx
 00684E74    add         edx,200
 00684E7A    add         ecx,4
 00684E7D    inc         dword ptr [ebp-20]
 00684E80    dec         eax
 00684E81    test        eax,eax
>00684E83    jge         00684E64
 00684E85    mov         eax,dword ptr [ebp-30]
 00684E88    add         dword ptr [ebp-28],eax
 00684E8B    add         dword ptr [ebp-30],120
 00684E92    dec         dword ptr [ebp-14]
 00684E95    cmp         dword ptr [ebp-14],0
>00684E99    jge         00684E59
 00684E9B    mov         edx,dword ptr [ebp-2C]
 00684E9E    add         dword ptr [ebp-24],edx
 00684EA1    add         dword ptr [ebp-2C],80
 00684EA8    dec         dword ptr [ebp-10]
 00684EAB    cmp         dword ptr [ebp-10],0
>00684EAF    jge         00684E46
 00684EB1    inc         dword ptr [ebp-18]
 00684EB4    inc         dword ptr [ebp-3C]
 00684EB7    mov         ecx,dword ptr [ebp-18]
 00684EBA    cmp         ecx,dword ptr [ebp+10]
>00684EBD    jl          00684DA1
 00684EC3    pop         edi
 00684EC4    pop         esi
 00684EC5    pop         ebx
 00684EC6    mov         esp,ebp
 00684EC8    pop         ebp
 00684EC9    ret         10
end;*}

//00684ECC
{*procedure sub_00684ECC(?:Single; ?:?; ?:?; ?:?);
begin
 00684ECC    push        ebp
 00684ECD    mov         ebp,esp
 00684ECF    add         esp,0FFFFFE6C
 00684ED5    push        ebx
 00684ED6    push        esi
 00684ED7    push        edi
 00684ED8    mov         ebx,eax
 00684EDA    mov         dword ptr [ebp-8],ecx
 00684EDD    mov         dword ptr [ebp-4],edx
 00684EE0    mov         eax,dword ptr [ebx+1C4]
 00684EE6    lea         ecx,[ebp-114]
 00684EEC    mov         edx,dword ptr [eax+18]
 00684EEF    mov         dword ptr [ebp-0C],edx
 00684EF2    sar         dword ptr [ebp-4],2
 00684EF6    sar         dword ptr [ebp-8],3
 00684EFA    sar         dword ptr [ebp+8],2
 00684EFE    mov         esi,dword ptr [ebp-4]
 00684F01    mov         edi,dword ptr [ebp-8]
 00684F04    mov         eax,dword ptr [ebp+8]
 00684F07    shl         edi,5
 00684F0A    shl         esi,5
 00684F0D    add         edi,2
 00684F10    shl         eax,5
 00684F13    add         esi,4
 00684F16    add         eax,4
 00684F19    mov         dword ptr [ebp-10],eax
 00684F1C    mov         eax,ebx
 00684F1E    mov         edx,dword ptr [ebp-10]
 00684F21    push        edx
 00684F22    push        ecx
 00684F23    mov         ecx,edi
 00684F25    mov         edx,esi
 00684F27    call        00684B14
 00684F2C    mov         edx,dword ptr [ebp-10]
 00684F2F    lea         ecx,[ebp-194]
 00684F35    push        edx
 00684F36    push        eax
 00684F37    lea         eax,[ebp-114]
 00684F3D    mov         edx,esi
 00684F3F    push        eax
 00684F40    push        ecx
 00684F41    mov         ecx,edi
 00684F43    mov         eax,ebx
 00684F45    call        00684D54
 00684F4A    shl         dword ptr [ebp-4],2
 00684F4E    shl         dword ptr [ebp-8],3
 00684F52    shl         dword ptr [ebp+8],2
 00684F56    lea         ecx,[ebp-194]
 00684F5C    xor         eax,eax
 00684F5E    mov         dword ptr [ebp-14],eax
 00684F61    xor         ebx,ebx
 00684F63    mov         eax,dword ptr [ebp-4]
 00684F66    add         eax,dword ptr [ebp-14]
 00684F69    mov         edx,dword ptr [ebp-0C]
 00684F6C    mov         eax,dword ptr [edx+eax*4]
 00684F6F    mov         edx,dword ptr [ebp-8]
 00684F72    add         edx,ebx
 00684F74    shl         edx,6
 00684F77    add         eax,edx
 00684F79    mov         edx,dword ptr [ebp+8]
 00684F7C    add         edx,edx
 00684F7E    add         eax,edx
 00684F80    xor         edx,edx
 00684F82    movzx       esi,byte ptr [ecx]
 00684F85    inc         esi
 00684F86    mov         word ptr [eax],si
 00684F89    inc         ecx
 00684F8A    add         eax,2
 00684F8D    inc         edx
 00684F8E    cmp         edx,4
>00684F91    jl          00684F82
 00684F93    inc         ebx
 00684F94    cmp         ebx,8
>00684F97    jl          00684F63
 00684F99    inc         dword ptr [ebp-14]
 00684F9C    cmp         dword ptr [ebp-14],4
>00684FA0    jl          00684F61
 00684FA2    pop         edi
 00684FA3    pop         esi
 00684FA4    pop         ebx
 00684FA5    mov         esp,ebp
 00684FA7    pop         ebp
 00684FA8    ret         4
end;*}

//0068537C
{*function sub_0068537C(?:?):?;
begin
 0068537C    push        ebx
 0068537D    push        esi
 0068537E    push        edi
 0068537F    mov         ecx,7FC
 00685384    mov         esi,dword ptr [eax+4]
 00685387    mov         ebx,dword ptr [eax+1C4]
 0068538D    mov         edx,1
 00685392    call        dword ptr [esi]
 00685394    mov         ecx,eax
 00685396    xor         edx,edx
 00685398    add         ecx,3FC
 0068539E    xor         eax,eax
 006853A0    mov         dword ptr [ebx+28],ecx
 006853A3    mov         ebx,ecx
 006853A5    mov         dword ptr [ebx],edx
 006853A7    mov         esi,eax
 006853A9    neg         esi
 006853AB    mov         edi,edx
 006853AD    neg         edi
 006853AF    mov         dword ptr [ecx+esi*4],edi
 006853B2    add         ebx,4
 006853B5    inc         eax
 006853B6    inc         edx
 006853B7    cmp         eax,10
>006853BA    jl          006853A5
 006853BC    lea         ebx,[ecx+eax*4]
 006853BF    cmp         eax,30
>006853C2    jge         006853E9
 006853C4    mov         esi,eax
 006853C6    mov         edi,edx
 006853C8    neg         esi
 006853CA    neg         edi
 006853CC    mov         dword ptr [ebx],edx
 006853CE    add         ebx,4
 006853D1    inc         eax
 006853D2    mov         dword ptr [ecx+esi*4],edi
 006853D5    test        al,1
>006853D7    je          006853DD
 006853D9    xor         esi,esi
>006853DB    jmp         006853E2
 006853DD    mov         esi,1
 006853E2    add         edx,esi
 006853E4    cmp         eax,30
>006853E7    jl          006853C4
 006853E9    lea         ebx,[ecx+eax*4]
 006853EC    cmp         eax,0FF
>006853F1    jg          0068540B
 006853F3    mov         esi,eax
 006853F5    mov         edi,edx
 006853F7    neg         esi
 006853F9    neg         edi
 006853FB    mov         dword ptr [ebx],edx
 006853FD    add         ebx,4
 00685400    inc         eax
 00685401    mov         dword ptr [ecx+esi*4],edi
 00685404    cmp         eax,0FF
>00685409    jle         006853F3
 0068540B    pop         edi
 0068540C    pop         esi
 0068540D    pop         ebx
 0068540E    ret
end;*}

//00685560
procedure @jinit_2pass_quantizer;
begin
{*
 00685560    push        ebx
 00685561    mov         ebx,eax
 00685563    mov         eax,ebx
 00685565    push        esi
 00685566    push        edi
 00685567    push        ebp
 00685568    mov         esi,dword ptr [eax+4]
 0068556B    mov         ecx,2C
 00685570    mov         edx,1
 00685575    call        dword ptr [esi]
 00685577    mov         esi,eax
 00685579    xor         eax,eax
 0068557B    mov         dword ptr [ebx+1C4],esi
 00685581    xor         edx,edx
 00685583    mov         dword ptr [esi],685438
 00685589    mov         dword ptr [esi+0C],685550
 00685590    mov         dword ptr [esi+20],eax
 00685593    mov         dword ptr [esi+28],edx
 00685596    cmp         dword ptr [ebx+74],3
>0068559A    je          006855AB
 0068559C    mov         ecx,dword ptr [ebx]
 0068559E    mov         eax,ebx
 006855A0    mov         dword ptr [ecx+14],2E
 006855A7    mov         edx,dword ptr [eax]
 006855A9    call        dword ptr [edx]
 006855AB    mov         eax,ebx
 006855AD    mov         ecx,80
 006855B2    mov         edx,1
 006855B7    mov         edi,dword ptr [eax+4]
 006855BA    call        dword ptr [edi]
 006855BC    mov         dword ptr [esi+18],eax
 006855BF    xor         edi,edi
 006855C1    mov         eax,ebx
 006855C3    mov         ecx,1000
 006855C8    mov         edx,1
 006855CD    mov         ebp,dword ptr [eax+4]
 006855D0    call        dword ptr [ebp+4]
 006855D3    mov         edx,dword ptr [esi+18]
 006855D6    mov         dword ptr [edx+edi*4],eax
 006855D9    inc         edi
 006855DA    cmp         edi,20
>006855DD    jl          006855C1
 006855DF    mov         dword ptr [esi+1C],1
 006855E6    cmp         dword ptr [ebx+68],0
>006855EA    je          00685641
 006855EC    mov         edi,dword ptr [ebx+5C]
 006855EF    cmp         edi,8
>006855F2    jge         0068560A
 006855F4    mov         eax,dword ptr [ebx]
 006855F6    mov         dword ptr [eax+14],37
 006855FD    mov         dword ptr [eax+18],8
 00685604    mov         eax,ebx
 00685606    mov         edx,dword ptr [eax]
 00685608    call        dword ptr [edx]
 0068560A    cmp         edi,100
>00685610    jle         00685628
 00685612    mov         eax,dword ptr [ebx]
 00685614    mov         dword ptr [eax+14],38
 0068561B    mov         dword ptr [eax+18],100
 00685622    mov         eax,ebx
 00685624    mov         edx,dword ptr [eax]
 00685626    call        dword ptr [edx]
 00685628    mov         eax,ebx
 0068562A    push        3
 0068562C    mov         ecx,edi
 0068562E    mov         edx,1
 00685633    mov         ebp,dword ptr [eax+4]
 00685636    call        dword ptr [ebp+8]
 00685639    mov         dword ptr [esi+10],eax
 0068563C    mov         dword ptr [esi+14],edi
>0068563F    jmp         00685646
 00685641    xor         eax,eax
 00685643    mov         dword ptr [esi+10],eax
 00685646    cmp         dword ptr [ebx+54],0
>0068564A    je          00685653
 0068564C    mov         dword ptr [ebx+54],2
 00685653    cmp         dword ptr [ebx+54],2
>00685657    jne         0068567B
 00685659    mov         ecx,dword ptr [ebx+6C]
 0068565C    mov         eax,ebx
 0068565E    add         ecx,ecx
 00685660    mov         edx,1
 00685665    mov         edi,dword ptr [eax+4]
 00685668    lea         ecx,[ecx+ecx*2]
 0068566B    add         ecx,0C
 0068566E    call        dword ptr [edi+4]
 00685671    mov         dword ptr [esi+20],eax
 00685674    mov         eax,ebx
 00685676    call        0068537C
 0068567B    pop         ebp
 0068567C    pop         edi
 0068567D    pop         esi
 0068567E    pop         ebx
 0068567F    ret
*}
end;

//00685680
procedure _DF_.;
begin
{*
 00685680    push        ebx
 00685681    push        esi
 00685682    mov         ebx,eax
 00685684    push        edi
 00685685    add         esp,0FFFFFFF0
 00685688    mov         eax,dword ptr [ebx+1A0]
 0068568E    mov         dword ptr [esp],eax
 00685691    mov         eax,ebx
 00685693    mov         edx,dword ptr [ebx+134]
 00685699    mov         dword ptr [esp+8],edx
 0068569D    mov         edx,1
 006856A2    mov         ecx,dword ptr [ebx+20]
 006856A5    mov         esi,dword ptr [eax+4]
 006856A8    add         ecx,ecx
 006856AA    shl         ecx,2
 006856AD    call        dword ptr [esi]
 006856AF    mov         esi,eax
 006856B1    mov         eax,dword ptr [esp]
 006856B4    mov         dword ptr [eax+38],esi
 006856B7    mov         edx,dword ptr [ebx+20]
 006856BA    mov         ecx,dword ptr [esp]
 006856BD    shl         edx,2
 006856C0    add         esi,edx
 006856C2    mov         dword ptr [ecx+3C],esi
 006856C5    xor         esi,esi
 006856C7    mov         eax,dword ptr [ebx+0D4]
 006856CD    mov         dword ptr [esp+0C],eax
>006856D1    jmp         0068573B
 006856D3    mov         edx,dword ptr [esp+0C]
 006856D7    mov         eax,dword ptr [edx+0C]
 006856DA    mov         edx,dword ptr [esp+0C]
 006856DE    imul        dword ptr [edx+24]
 006856E1    cdq
 006856E2    idiv        eax,dword ptr [ebx+134]
 006856E8    mov         dword ptr [esp+4],eax
 006856EC    mov         eax,ebx
 006856EE    mov         ecx,dword ptr [esp+8]
 006856F2    mov         edx,1
 006856F7    add         ecx,4
 006856FA    mov         edi,dword ptr [eax+4]
 006856FD    imul        ecx,dword ptr [esp+4]
 00685702    add         ecx,ecx
 00685704    shl         ecx,2
 00685707    call        dword ptr [edi]
 00685709    mov         edx,dword ptr [esp+4]
 0068570D    mov         ecx,dword ptr [esp]
 00685710    shl         edx,2
 00685713    add         eax,edx
 00685715    mov         edx,dword ptr [ecx+38]
 00685718    mov         dword ptr [edx+esi*4],eax
 0068571B    mov         ecx,dword ptr [esp+8]
 0068571F    mov         edx,dword ptr [esp]
 00685722    add         ecx,4
 00685725    imul        ecx,dword ptr [esp+4]
 0068572A    shl         ecx,2
 0068572D    add         eax,ecx
 0068572F    mov         ecx,dword ptr [edx+3C]
 00685732    mov         dword ptr [ecx+esi*4],eax
 00685735    inc         esi
 00685736    add         dword ptr [esp+0C],54
 0068573B    cmp         esi,dword ptr [ebx+20]
>0068573E    jl          006856D3
 00685740    add         esp,10
 00685743    pop         edi
 00685744    pop         esi
 00685745    pop         ebx
 00685746    ret
*}
end;

//00685748
{*procedure sub_00685748(?:?);
begin
 00685748    push        ebx
 00685749    push        esi
 0068574A    push        edi
 0068574B    push        ebp
 0068574C    add         esp,0FFFFFFDC
 0068574F    mov         dword ptr [esp],eax
 00685752    mov         eax,dword ptr [esp]
 00685755    mov         edx,dword ptr [eax+1A0]
 0068575B    xor         eax,eax
 0068575D    mov         dword ptr [esp+4],edx
 00685761    mov         ecx,dword ptr [esp]
 00685764    mov         ecx,dword ptr [ecx+134]
 0068576A    mov         dword ptr [esp+8],eax
 0068576E    mov         edx,dword ptr [esp]
 00685771    mov         eax,dword ptr [edx+0D4]
 00685777    mov         dword ptr [esp+0C],eax
 0068577B    mov         edx,dword ptr [esp+4]
 0068577F    lea         eax,[edx+8]
 00685782    mov         dword ptr [esp+14],eax
>00685786    jmp         00685878
 0068578B    mov         edx,dword ptr [esp+0C]
 0068578F    mov         esi,dword ptr [esp+8]
 00685793    mov         eax,dword ptr [edx+0C]
 00685796    mov         edx,dword ptr [esp+0C]
 0068579A    imul        dword ptr [edx+24]
 0068579D    mov         edx,dword ptr [esp]
 006857A0    mov         ebx,dword ptr [edx+134]
 006857A6    cdq
 006857A7    idiv        eax,ebx
 006857A9    mov         edx,eax
 006857AB    mov         eax,dword ptr [esp+4]
 006857AF    mov         ebx,dword ptr [esp+8]
 006857B3    mov         eax,dword ptr [eax+38]
 006857B6    mov         ebx,dword ptr [eax+ebx*4]
 006857B9    mov         eax,dword ptr [esp+4]
 006857BD    mov         edi,ebx
 006857BF    mov         eax,dword ptr [eax+3C]
 006857C2    mov         esi,dword ptr [eax+esi*4]
 006857C5    mov         eax,dword ptr [esp+14]
 006857C9    mov         eax,dword ptr [eax]
 006857CB    mov         dword ptr [esp+10],eax
 006857CF    mov         dword ptr [esp+20],edi
 006857D3    mov         edi,esi
 006857D5    xor         eax,eax
 006857D7    mov         dword ptr [esp+1C],edi
 006857DB    mov         edi,dword ptr [esp+10]
 006857DF    mov         dword ptr [esp+18],edi
>006857E3    jmp         00685809
 006857E5    mov         edi,dword ptr [esp+18]
 006857E9    mov         ebp,dword ptr [esp+1C]
 006857ED    inc         eax
 006857EE    mov         edi,dword ptr [edi]
 006857F0    mov         dword ptr [ebp],edi
 006857F3    mov         ebp,dword ptr [esp+20]
 006857F7    mov         dword ptr [ebp],edi
 006857FA    add         dword ptr [esp+20],4
 006857FF    add         dword ptr [esp+1C],4
 00685804    add         dword ptr [esp+18],4
 00685809    lea         edi,[ecx+2]
 0068580C    imul        edi,edx
 0068580F    cmp         eax,edi
>00685811    jl          006857E5
 00685813    xor         eax,eax
>00685815    jmp         0068584E
 00685817    mov         edi,edx
 00685819    mov         ebp,dword ptr [esp+10]
 0068581D    imul        edi,ecx
 00685820    add         edi,eax
 00685822    push        dword ptr [ebp+edi*4]
 00685826    lea         edi,[ecx-2]
 00685829    pop         ebp
 0068582A    imul        edi,edx
 0068582D    add         edi,eax
 0068582F    mov         dword ptr [esi+edi*4],ebp
 00685832    lea         edi,[ecx-2]
 00685835    imul        edi,edx
 00685838    add         edi,eax
 0068583A    mov         ebp,dword ptr [esp+10]
 0068583E    push        dword ptr [ebp+edi*4]
 00685842    mov         edi,edx
 00685844    pop         ebp
 00685845    imul        edi,ecx
 00685848    add         edi,eax
 0068584A    inc         eax
 0068584B    mov         dword ptr [esi+edi*4],ebp
 0068584E    mov         edi,edx
 00685850    add         edi,edi
 00685852    cmp         eax,edi
>00685854    jl          00685817
 00685856    xor         eax,eax
 00685858    cmp         edx,eax
>0068585A    jle         0068586A
 0068585C    mov         esi,eax
 0068585E    sub         esi,edx
 00685860    mov         edi,dword ptr [ebx]
 00685862    mov         dword ptr [ebx+esi*4],edi
 00685865    inc         eax
 00685866    cmp         edx,eax
>00685868    jg          0068585C
 0068586A    add         dword ptr [esp+14],4
 0068586F    inc         dword ptr [esp+8]
 00685873    add         dword ptr [esp+0C],54
 00685878    mov         eax,dword ptr [esp]
 0068587B    mov         edx,dword ptr [eax+20]
 0068587E    cmp         edx,dword ptr [esp+8]
>00685882    jg          0068578B
 00685888    add         esp,24
 0068588B    pop         ebp
 0068588C    pop         edi
 0068588D    pop         esi
 0068588E    pop         ebx
 0068588F    ret
end;*}

//00685890
{*procedure sub_00685890(?:?);
begin
 00685890    push        ebx
 00685891    push        esi
 00685892    push        edi
 00685893    push        ebp
 00685894    add         esp,0FFFFFFE8
 00685897    mov         dword ptr [esp],eax
 0068589A    mov         eax,dword ptr [esp]
 0068589D    mov         edx,dword ptr [eax+1A0]
 006858A3    xor         eax,eax
 006858A5    mov         dword ptr [esp+4],edx
 006858A9    mov         ecx,dword ptr [esp]
 006858AC    mov         ecx,dword ptr [ecx+134]
 006858B2    mov         dword ptr [esp+8],eax
 006858B6    mov         edx,dword ptr [esp]
 006858B9    mov         eax,dword ptr [edx+0D4]
 006858BF    mov         dword ptr [esp+0C],eax
>006858C3    jmp         00685974
 006858C8    mov         edx,dword ptr [esp+0C]
 006858CC    mov         esi,dword ptr [esp+8]
 006858D0    mov         eax,dword ptr [edx+0C]
 006858D3    mov         edx,dword ptr [esp+0C]
 006858D7    imul        dword ptr [edx+24]
 006858DA    mov         edx,dword ptr [esp]
 006858DD    mov         ebx,dword ptr [edx+134]
 006858E3    cdq
 006858E4    idiv        eax,ebx
 006858E6    mov         edx,eax
 006858E8    mov         eax,dword ptr [esp+4]
 006858EC    mov         ebx,dword ptr [esp+8]
 006858F0    mov         eax,dword ptr [eax+38]
 006858F3    mov         ebx,dword ptr [eax+ebx*4]
 006858F6    mov         eax,dword ptr [esp+4]
 006858FA    mov         eax,dword ptr [eax+3C]
 006858FD    mov         esi,dword ptr [eax+esi*4]
 00685900    xor         eax,eax
 00685902    mov         edi,esi
 00685904    cmp         edx,eax
 00685906    mov         dword ptr [esp+14],edi
 0068590A    mov         edi,ebx
 0068590C    mov         dword ptr [esp+10],edi
>00685910    jle         0068596B
 00685912    lea         edi,[ecx+1]
 00685915    imul        edi,edx
 00685918    add         edi,eax
 0068591A    push        dword ptr [ebx+edi*4]
 0068591D    mov         edi,eax
 0068591F    sub         edi,edx
 00685921    pop         ebp
 00685922    mov         dword ptr [ebx+edi*4],ebp
 00685925    lea         edi,[ecx+1]
 00685928    imul        edi,edx
 0068592B    add         edi,eax
 0068592D    push        dword ptr [esi+edi*4]
 00685930    mov         edi,eax
 00685932    sub         edi,edx
 00685934    pop         ebp
 00685935    mov         dword ptr [esi+edi*4],ebp
 00685938    lea         edi,[ecx+2]
 0068593B    imul        edi,edx
 0068593E    add         edi,eax
 00685940    mov         ebp,dword ptr [esp+10]
 00685944    mov         ebp,dword ptr [ebp]
 00685947    mov         dword ptr [ebx+edi*4],ebp
 0068594A    lea         edi,[ecx+2]
 0068594D    imul        edi,edx
 00685950    add         edi,eax
 00685952    mov         ebp,dword ptr [esp+14]
 00685956    mov         ebp,dword ptr [ebp]
 00685959    mov         dword ptr [esi+edi*4],ebp
 0068595C    inc         eax
 0068595D    add         dword ptr [esp+14],4
 00685962    add         dword ptr [esp+10],4
 00685967    cmp         edx,eax
>00685969    jg          00685912
 0068596B    inc         dword ptr [esp+8]
 0068596F    add         dword ptr [esp+0C],54
 00685974    mov         eax,dword ptr [esp]
 00685977    mov         edx,dword ptr [eax+20]
 0068597A    cmp         edx,dword ptr [esp+8]
>0068597E    jg          006858C8
 00685984    add         esp,18
 00685987    pop         ebp
 00685988    pop         edi
 00685989    pop         esi
 0068598A    pop         ebx
 0068598B    ret
end;*}

//0068598C
{*procedure sub_0068598C(?:?);
begin
 0068598C    push        ebx
 0068598D    push        esi
 0068598E    push        edi
 0068598F    push        ebp
 00685990    add         esp,0FFFFFFF0
 00685993    xor         ecx,ecx
 00685995    mov         dword ptr [esp],eax
 00685998    mov         eax,dword ptr [esp]
 0068599B    mov         edx,dword ptr [eax+1A0]
 006859A1    mov         dword ptr [esp+4],edx
 006859A5    mov         dword ptr [esp+8],ecx
 006859A9    mov         eax,dword ptr [esp]
 006859AC    mov         edx,dword ptr [eax+0D4]
 006859B2    mov         dword ptr [esp+0C],edx
>006859B6    jmp         00685A37
 006859B8    mov         ecx,dword ptr [esp+0C]
 006859BC    mov         eax,dword ptr [esp+0C]
 006859C0    mov         edx,dword ptr [esp]
 006859C3    mov         ebx,dword ptr [ecx+0C]
 006859C6    imul        ebx,dword ptr [eax+24]
 006859CA    mov         eax,ebx
 006859CC    mov         ecx,dword ptr [edx+134]
 006859D2    cdq
 006859D3    idiv        eax,ecx
 006859D5    mov         esi,eax
 006859D7    mov         eax,dword ptr [esp+0C]
 006859DB    xor         edx,edx
 006859DD    mov         eax,dword ptr [eax+2C]
 006859E0    div         eax,ebx
 006859E2    mov         ecx,edx
 006859E4    test        ecx,ecx
>006859E6    jne         006859EA
 006859E8    mov         ecx,ebx
 006859EA    cmp         dword ptr [esp+8],0
>006859EF    jne         006859FF
 006859F1    lea         eax,[ecx-1]
 006859F4    cdq
 006859F5    idiv        eax,esi
 006859F7    inc         eax
 006859F8    mov         edx,dword ptr [esp+4]
 006859FC    mov         dword ptr [edx+48],eax
 006859FF    mov         eax,dword ptr [esp+4]
 00685A03    mov         eax,dword ptr [eax+40]
 00685A06    mov         edx,dword ptr [esp+4]
 00685A0A    mov         eax,dword ptr [edx+eax*4+38]
 00685A0E    mov         edx,dword ptr [esp+8]
 00685A12    mov         ebx,dword ptr [eax+edx*4]
 00685A15    xor         eax,eax
 00685A17    lea         edx,[ebx+ecx*4-4]
>00685A1B    jmp         00685A26
 00685A1D    lea         edi,[eax+ecx]
 00685A20    mov         ebp,dword ptr [edx]
 00685A22    mov         dword ptr [ebx+edi*4],ebp
 00685A25    inc         eax
 00685A26    mov         edi,esi
 00685A28    add         edi,edi
 00685A2A    cmp         eax,edi
>00685A2C    jl          00685A1D
 00685A2E    inc         dword ptr [esp+8]
 00685A32    add         dword ptr [esp+0C],54
 00685A37    mov         eax,dword ptr [esp]
 00685A3A    mov         edx,dword ptr [eax+20]
 00685A3D    cmp         edx,dword ptr [esp+8]
>00685A41    jg          006859B8
 00685A47    add         esp,10
 00685A4A    pop         ebp
 00685A4B    pop         edi
 00685A4C    pop         esi
 00685A4D    pop         ebx
 00685A4E    ret
end;*}

//00685C78
procedure @jinit_d_main_controller;
begin
{*
 00685C78    push        ebx
 00685C79    push        esi
 00685C7A    mov         esi,eax
 00685C7C    push        edi
 00685C7D    mov         eax,esi
 00685C7F    push        ebp
 00685C80    mov         ebx,edx
 00685C82    mov         edx,1
 00685C87    mov         edi,dword ptr [eax+4]
 00685C8A    add         esp,0FFFFFFF4
 00685C8D    mov         ecx,50
 00685C92    call        dword ptr [edi]
 00685C94    mov         edi,eax
 00685C96    mov         dword ptr [esi+1A0],edi
 00685C9C    mov         dword ptr [edi],685A50
 00685CA2    test        ebx,ebx
>00685CA4    je          00685CB5
 00685CA6    mov         eax,dword ptr [esi]
 00685CA8    mov         dword ptr [eax+14],4
 00685CAF    mov         eax,esi
 00685CB1    mov         edx,dword ptr [eax]
 00685CB3    call        dword ptr [edx]
 00685CB5    mov         ecx,dword ptr [esi+1BC]
 00685CBB    cmp         dword ptr [ecx+8],0
>00685CBF    je          00685CEF
 00685CC1    cmp         dword ptr [esi+134],2
>00685CC8    jge         00685CD9
 00685CCA    mov         eax,dword ptr [esi]
 00685CCC    mov         dword ptr [eax+14],2E
 00685CD3    mov         eax,esi
 00685CD5    mov         edx,dword ptr [eax]
 00685CD7    call        dword ptr [edx]
 00685CD9    mov         eax,esi
 00685CDB    call        _DF_.
 00685CE0    mov         edx,dword ptr [esi+134]
 00685CE6    add         edx,2
 00685CE9    mov         dword ptr [esp+8],edx
>00685CED    jmp         00685CF9
 00685CEF    mov         ecx,dword ptr [esi+134]
 00685CF5    mov         dword ptr [esp+8],ecx
 00685CF9    xor         eax,eax
 00685CFB    mov         dword ptr [esp],eax
 00685CFE    mov         ebx,dword ptr [esi+0D4]
 00685D04    lea         eax,[edi+8]
 00685D07    mov         edi,eax
>00685D09    jmp         00685D45
 00685D0B    mov         eax,dword ptr [ebx+0C]
 00685D0E    imul        dword ptr [ebx+24]
 00685D11    cdq
 00685D12    idiv        eax,dword ptr [esi+134]
 00685D18    mov         dword ptr [esp+4],eax
 00685D1C    mov         eax,esi
 00685D1E    mov         ecx,dword ptr [esp+4]
 00685D22    mov         edx,1
 00685D27    imul        ecx,dword ptr [esp+8]
 00685D2C    push        ecx
 00685D2D    mov         ecx,dword ptr [ebx+1C]
 00685D30    mov         ebp,dword ptr [eax+4]
 00685D33    imul        ecx,dword ptr [ebx+24]
 00685D37    call        dword ptr [ebp+8]
 00685D3A    mov         dword ptr [edi],eax
 00685D3C    add         edi,4
 00685D3F    inc         dword ptr [esp]
 00685D42    add         ebx,54
 00685D45    mov         eax,dword ptr [esp]
 00685D48    cmp         eax,dword ptr [esi+20]
>00685D4B    jl          00685D0B
 00685D4D    add         esp,0C
 00685D50    pop         ebp
 00685D51    pop         edi
 00685D52    pop         esi
 00685D53    pop         ebx
 00685D54    ret
*}
end;

//00685D58
procedure _DF_.;
begin
{*
 00685D58    cmp         dword ptr [eax+140],1
 00685D5F    mov         edx,dword ptr [eax+1A4]
>00685D65    jle         00685D70
 00685D67    mov         dword ptr [edx+1C],1
>00685D6E    jmp         00685D99
 00685D70    mov         ecx,dword ptr [eax+138]
 00685D76    dec         ecx
 00685D77    cmp         ecx,dword ptr [eax+90]
>00685D7D    jbe         00685D8D
 00685D7F    mov         eax,dword ptr [eax+144]
 00685D85    mov         eax,dword ptr [eax+0C]
 00685D88    mov         dword ptr [edx+1C],eax
>00685D8B    jmp         00685D99
 00685D8D    mov         ecx,dword ptr [eax+144]
 00685D93    mov         eax,dword ptr [ecx+48]
 00685D96    mov         dword ptr [edx+1C],eax
 00685D99    xor         ecx,ecx
 00685D9B    xor         eax,eax
 00685D9D    mov         dword ptr [edx+14],ecx
 00685DA0    mov         dword ptr [edx+18],eax
 00685DA3    ret
*}
end;

//00686404
{*function sub_00686404(?:?):?;
begin
 00686404    push        ebx
 00686405    push        esi
 00686406    push        edi
 00686407    add         esp,0FFFFFFF4
 0068640A    mov         dword ptr [esp],eax
 0068640D    mov         eax,dword ptr [esp]
 00686410    mov         ebx,dword ptr [eax+1A4]
 00686416    xor         eax,eax
 00686418    mov         dword ptr [esp+4],eax
 0068641C    mov         edx,dword ptr [esp]
 0068641F    cmp         dword ptr [edx+0D8],0
>00686426    je          00686434
 00686428    mov         ecx,dword ptr [esp]
 0068642B    cmp         dword ptr [ecx+9C],0
>00686432    jne         0068643B
 00686434    xor         eax,eax
>00686436    jmp         0068650D
 0068643B    cmp         dword ptr [ebx+70],0
>0068643F    jne         0068645D
 00686441    mov         edx,dword ptr [esp]
 00686444    mov         eax,dword ptr [esp]
 00686447    mov         ecx,dword ptr [edx+20]
 0068644A    mov         esi,dword ptr [eax+4]
 0068644D    shl         ecx,3
 00686450    mov         edx,1
 00686455    lea         ecx,[ecx+ecx*2]
 00686458    call        dword ptr [esi]
 0068645A    mov         dword ptr [ebx+70],eax
 0068645D    mov         eax,dword ptr [esp]
 00686460    mov         esi,dword ptr [ebx+70]
 00686463    xor         ebx,ebx
 00686465    mov         edx,dword ptr [eax+0D4]
 0068646B    mov         dword ptr [esp+8],edx
>0068646F    jmp         006864FD
 00686474    mov         ecx,dword ptr [esp+8]
 00686478    mov         eax,dword ptr [ecx+4C]
 0068647B    test        eax,eax
>0068647D    jne         00686486
 0068647F    xor         eax,eax
>00686481    jmp         0068650D
 00686486    cmp         word ptr [eax],0
>0068648A    je          006864AF
 0068648C    cmp         word ptr [eax+2],0
>00686491    je          006864AF
 00686493    cmp         word ptr [eax+10],0
>00686498    je          006864AF
 0068649A    cmp         word ptr [eax+20],0
>0068649F    je          006864AF
 006864A1    cmp         word ptr [eax+12],0
>006864A6    je          006864AF
 006864A8    cmp         word ptr [eax+4],0
>006864AD    jne         006864B3
 006864AF    xor         eax,eax
>006864B1    jmp         0068650D
 006864B3    mov         edx,dword ptr [esp]
 006864B6    mov         eax,dword ptr [edx+9C]
 006864BC    mov         edx,ebx
 006864BE    shl         edx,8
 006864C1    add         eax,edx
 006864C3    cmp         dword ptr [eax],0
>006864C6    jge         006864CC
 006864C8    xor         eax,eax
>006864CA    jmp         0068650D
 006864CC    mov         ecx,1
 006864D1    lea         edx,[esi+4]
 006864D4    add         eax,4
 006864D7    mov         edi,dword ptr [eax]
 006864D9    mov         dword ptr [edx],edi
 006864DB    cmp         dword ptr [eax],0
>006864DE    je          006864E8
 006864E0    mov         dword ptr [esp+4],1
 006864E8    inc         ecx
 006864E9    add         edx,4
 006864EC    add         eax,4
 006864EF    cmp         ecx,5
>006864F2    jle         006864D7
 006864F4    add         esi,18
 006864F7    inc         ebx
 006864F8    add         dword ptr [esp+8],54
 006864FD    mov         eax,dword ptr [esp]
 00686500    cmp         ebx,dword ptr [eax+20]
>00686503    jl          00686474
 00686509    mov         eax,dword ptr [esp+4]
 0068650D    add         esp,0C
 00686510    pop         edi
 00686511    pop         esi
 00686512    pop         ebx
 00686513    ret
end;*}

//00686CE4
procedure @jinit_d_coef_controller;
begin
{*
 00686CE4    push        ebx
 00686CE5    push        esi
 00686CE6    push        edi
 00686CE7    mov         edi,eax
 00686CE9    mov         eax,edi
 00686CEB    push        ebp
 00686CEC    mov         ebx,edx
 00686CEE    mov         edx,1
 00686CF3    mov         esi,dword ptr [eax+4]
 00686CF6    add         esp,0FFFFFFF4
 00686CF9    mov         ecx,74
 00686CFE    call        dword ptr [esi]
 00686D00    mov         esi,eax
 00686D02    xor         eax,eax
 00686D04    mov         dword ptr [edi+1A4],esi
 00686D0A    test        ebx,ebx
 00686D0C    mov         dword ptr [esi],685DA4
 00686D12    mov         dword ptr [esi+8],685DB4
 00686D19    mov         dword ptr [esi+70],eax
>00686D1C    je          00686DAF
 00686D22    xor         edx,edx
 00686D24    mov         dword ptr [esp],edx
 00686D27    mov         ebx,dword ptr [edi+0D4]
 00686D2D    lea         eax,[esi+48]
 00686D30    mov         dword ptr [esp+8],eax
>00686D34    jmp         00686D91
 00686D36    mov         edx,dword ptr [ebx+0C]
 00686D39    mov         dword ptr [esp+4],edx
 00686D3D    cmp         dword ptr [edi+0D8],0
>00686D44    je          00686D51
 00686D46    mov         ecx,dword ptr [esp+4]
 00686D4A    lea         ecx,[ecx+ecx*2]
 00686D4D    mov         dword ptr [esp+4],ecx
 00686D51    mov         edx,dword ptr [ebx+8]
 00686D54    mov         eax,dword ptr [ebx+1C]
 00686D57    call        @jround_up
 00686D5C    push        eax
 00686D5D    mov         edx,dword ptr [ebx+0C]
 00686D60    mov         eax,dword ptr [ebx+20]
 00686D63    call        @jround_up
 00686D68    push        eax
 00686D69    mov         eax,edi
 00686D6B    mov         ecx,dword ptr [esp+0C]
 00686D6F    mov         edx,1
 00686D74    push        ecx
 00686D75    mov         ecx,1
 00686D7A    mov         ebp,dword ptr [eax+4]
 00686D7D    call        dword ptr [ebp+14]
 00686D80    mov         edx,dword ptr [esp+8]
 00686D84    mov         dword ptr [edx],eax
 00686D86    add         dword ptr [esp+8],4
 00686D8B    inc         dword ptr [esp]
 00686D8E    add         ebx,54
 00686D91    mov         eax,dword ptr [edi+20]
 00686D94    cmp         eax,dword ptr [esp]
>00686D97    jg          00686D36
 00686D99    mov         dword ptr [esi+4],686044
 00686DA0    mov         dword ptr [esi+0C],686234
 00686DA7    lea         ecx,[esi+48]
 00686DAA    mov         dword ptr [esi+10],ecx
>00686DAD    jmp         00686DED
 00686DAF    mov         eax,edi
 00686DB1    mov         ecx,500
 00686DB6    mov         edx,1
 00686DBB    mov         ebx,dword ptr [eax+4]
 00686DBE    call        dword ptr [ebx+4]
 00686DC1    mov         ecx,eax
 00686DC3    xor         eax,eax
 00686DC5    lea         edx,[esi+20]
 00686DC8    mov         ebx,eax
 00686DCA    inc         eax
 00686DCB    shl         ebx,7
 00686DCE    add         ebx,ecx
 00686DD0    mov         dword ptr [edx],ebx
 00686DD2    add         edx,4
 00686DD5    cmp         eax,0A
>00686DD8    jl          00686DC8
 00686DDA    mov         dword ptr [esi+4],686040
 00686DE1    mov         dword ptr [esi+0C],685DF0
 00686DE8    xor         eax,eax
 00686DEA    mov         dword ptr [esi+10],eax
 00686DED    add         esp,0C
 00686DF0    pop         ebp
 00686DF1    pop         edi
 00686DF2    pop         esi
 00686DF3    pop         ebx
 00686DF4    ret
*}
end;

//00686DF8
procedure _DF_.;
begin
{*
 00686DF8    push        ebx
 00686DF9    push        esi
 00686DFA    mov         esi,eax
 00686DFC    sub         edx,1
 00686DFF    mov         ebx,dword ptr [esi+1A8]
>00686E05    jb          00686E0F
 00686E07    dec         edx
>00686E08    je          00686E66
 00686E0A    dec         edx
>00686E0B    je          00686E48
>00686E0D    jmp         00686E84
 00686E0F    cmp         dword ptr [esi+50],0
>00686E13    je          00686E3A
 00686E15    mov         dword ptr [ebx+4],686EA0
 00686E1C    cmp         dword ptr [ebx+0C],0
>00686E20    jne         00686E93
 00686E22    mov         eax,dword ptr [ebx+10]
 00686E25    xor         ecx,ecx
 00686E27    push        eax
 00686E28    mov         eax,esi
 00686E2A    push        1
 00686E2C    mov         esi,dword ptr [eax+4]
 00686E2F    mov         edx,dword ptr [ebx+8]
 00686E32    call        dword ptr [esi+1C]
 00686E35    mov         dword ptr [ebx+0C],eax
>00686E38    jmp         00686E93
 00686E3A    mov         eax,dword ptr [esi+1BC]
 00686E40    mov         edx,dword ptr [eax+4]
 00686E43    mov         dword ptr [ebx+4],edx
>00686E46    jmp         00686E93
 00686E48    cmp         dword ptr [ebx+8],0
>00686E4C    jne         00686E5D
 00686E4E    mov         ecx,dword ptr [esi]
 00686E50    mov         eax,esi
 00686E52    mov         dword ptr [ecx+14],4
 00686E59    mov         edx,dword ptr [eax]
 00686E5B    call        dword ptr [edx]
 00686E5D    mov         dword ptr [ebx+4],686F1C
>00686E64    jmp         00686E93
 00686E66    cmp         dword ptr [ebx+8],0
>00686E6A    jne         00686E7B
 00686E6C    mov         ecx,dword ptr [esi]
 00686E6E    mov         eax,esi
 00686E70    mov         dword ptr [ecx+14],4
 00686E77    mov         edx,dword ptr [eax]
 00686E79    call        dword ptr [edx]
 00686E7B    mov         dword ptr [ebx+4],686FC0
>00686E82    jmp         00686E93
 00686E84    mov         ecx,dword ptr [esi]
 00686E86    mov         eax,esi
 00686E88    mov         dword ptr [ecx+14],4
 00686E8F    mov         edx,dword ptr [eax]
 00686E91    call        dword ptr [edx]
 00686E93    xor         ecx,ecx
 00686E95    mov         dword ptr [ebx+18],ecx
 00686E98    mov         dword ptr [ebx+14],ecx
 00686E9B    pop         esi
 00686E9C    pop         ebx
 00686E9D    ret
*}
end;

//00687058
procedure @jinit_d_post_controller;
begin
{*
 00687058    push        ebx
 00687059    push        esi
 0068705A    mov         esi,eax
 0068705C    push        edi
 0068705D    mov         eax,esi
 0068705F    push        ecx
 00687060    mov         dword ptr [esp],edx
 00687063    mov         edx,1
 00687068    mov         ebx,dword ptr [eax+4]
 0068706B    mov         ecx,1C
 00687070    call        dword ptr [ebx]
 00687072    mov         ebx,eax
 00687074    xor         eax,eax
 00687076    mov         dword ptr [esi+1A8],ebx
 0068707C    xor         edx,edx
 0068707E    mov         dword ptr [ebx],686DF8;_DF_.
 00687084    mov         dword ptr [ebx+8],eax
 00687087    mov         dword ptr [ebx+0C],edx
 0068708A    cmp         dword ptr [esi+50],0
>0068708E    je          006870E4
 00687090    mov         edi,dword ptr [esi+130]
 00687096    mov         dword ptr [ebx+10],edi
 00687099    cmp         dword ptr [esp],0
>0068709D    je          006870C9
 0068709F    mov         eax,dword ptr [esi+6C]
 006870A2    imul        dword ptr [esi+74]
 006870A5    push        eax
 006870A6    mov         edx,edi
 006870A8    mov         eax,dword ptr [esi+70]
 006870AB    call        @jround_up
 006870B0    push        eax
 006870B1    mov         eax,esi
 006870B3    mov         edx,dword ptr [ebx+10]
 006870B6    xor         ecx,ecx
 006870B8    push        edx
 006870B9    mov         edx,1
 006870BE    mov         esi,dword ptr [eax+4]
 006870C1    call        dword ptr [esi+10]
 006870C4    mov         dword ptr [ebx+8],eax
>006870C7    jmp         006870E4
 006870C9    mov         eax,dword ptr [ebx+10]
 006870CC    mov         edx,1
 006870D1    push        eax
 006870D2    mov         eax,esi
 006870D4    mov         ecx,dword ptr [esi+6C]
 006870D7    imul        ecx,dword ptr [esi+74]
 006870DB    mov         esi,dword ptr [eax+4]
 006870DE    call        dword ptr [esi+8]
 006870E1    mov         dword ptr [ebx+0C],eax
 006870E4    pop         edx
 006870E5    pop         edi
 006870E6    pop         esi
 006870E7    pop         ebx
 006870E8    ret
*}
end;

//006870EC
procedure _DF_.;
begin
{*
 006870EC    push        ebx
 006870ED    push        esi
 006870EE    push        edi
 006870EF    push        ebp
 006870F0    add         esp,0FFFFFFD0
 006870F3    xor         edx,edx
 006870F5    xor         ecx,ecx
 006870F7    mov         dword ptr [esp],eax
 006870FA    mov         eax,dword ptr [esp]
 006870FD    mov         eax,dword ptr [eax+1B8]
 00687103    mov         dword ptr [esp+0C],edx
 00687107    mov         dword ptr [esp+10],ecx
 0068710B    xor         edx,edx
 0068710D    mov         dword ptr [esp+4],edx
 00687111    add         eax,4
 00687114    mov         ecx,dword ptr [esp]
 00687117    mov         edx,dword ptr [ecx+0D4]
 0068711D    mov         dword ptr [esp+8],edx
 00687121    mov         dword ptr [esp+20],eax
>00687125    jmp         00687327
 0068712A    mov         ecx,dword ptr [esp+8]
 0068712E    mov         eax,dword ptr [ecx+24]
 00687131    dec         eax
>00687132    je          00687143
 00687134    dec         eax
>00687135    je          00687156
 00687137    sub         eax,2
>0068713A    je          00687166
 0068713C    sub         eax,4
>0068713F    je          00687176
>00687141    jmp         006871BD
 00687143    mov         dword ptr [esp+10],688028;@jpeg_idct_1x1
 0068714B    xor         edx,edx
 0068714D    mov         dword ptr [esp+0C],edx
>00687151    jmp         006871DA
 00687156    mov         dword ptr [esp+10],687E4C;@jpeg_idct_2x2
 0068715E    xor         ecx,ecx
 00687160    mov         dword ptr [esp+0C],ecx
>00687164    jmp         006871DA
 00687166    mov         dword ptr [esp+10],687AB8;@jpeg_idct_4x4
 0068716E    xor         eax,eax
 00687170    mov         dword ptr [esp+0C],eax
>00687174    jmp         006871DA
 00687176    mov         edx,dword ptr [esp]
 00687179    mov         ecx,dword ptr [edx+44]
 0068717C    dec         ecx
>0068717D    je          00687184
 0068717F    dec         ecx
>00687180    je          00687196
>00687182    jmp         006871A8
 00687184    mov         dword ptr [esp+10],69132C;@jpeg_idct_ifast
 0068718C    mov         dword ptr [esp+0C],1
>00687194    jmp         006871DA
 00687196    mov         dword ptr [esp+10],690EFC;@jpeg_idct_float
 0068719E    mov         dword ptr [esp+0C],2
>006871A6    jmp         006871DA
 006871A8    mov         eax,dword ptr [esp]
 006871AB    mov         edx,dword ptr [eax]
 006871AD    mov         dword ptr [edx+14],2F
 006871B4    mov         eax,dword ptr [esp]
 006871B7    mov         edx,dword ptr [eax]
 006871B9    call        dword ptr [edx]
>006871BB    jmp         006871DA
 006871BD    mov         ecx,dword ptr [esp]
 006871C0    mov         eax,dword ptr [ecx]
 006871C2    mov         dword ptr [eax+14],6
 006871C9    mov         edx,dword ptr [esp+8]
 006871CD    mov         ecx,dword ptr [edx+24]
 006871D0    mov         dword ptr [eax+18],ecx
 006871D3    mov         eax,dword ptr [esp]
 006871D6    mov         edx,dword ptr [eax]
 006871D8    call        dword ptr [edx]
 006871DA    mov         ecx,dword ptr [esp+20]
 006871DE    mov         eax,dword ptr [esp+10]
 006871E2    mov         dword ptr [ecx],eax
 006871E4    mov         edx,dword ptr [esp+8]
 006871E8    cmp         dword ptr [edx+30],0
>006871EC    je          00687319
 006871F2    mov         ecx,dword ptr [esp+20]
 006871F6    mov         eax,dword ptr [ecx+28]
 006871F9    cmp         eax,dword ptr [esp+0C]
>006871FD    je          00687319
 00687203    mov         edx,dword ptr [esp+8]
 00687207    mov         ecx,dword ptr [edx+4C]
 0068720A    mov         dword ptr [esp+14],ecx
 0068720E    cmp         dword ptr [esp+14],0
>00687213    je          00687319
 00687219    mov         eax,dword ptr [esp+20]
 0068721D    mov         edx,dword ptr [esp+0C]
 00687221    mov         dword ptr [eax+28],edx
 00687224    mov         ecx,dword ptr [esp+0C]
 00687228    sub         ecx,1
>0068722B    jb          00687237
>0068722D    je          0068725C
 0068722F    dec         ecx
>00687230    je          0068729D
>00687232    jmp         00687306
 00687237    mov         eax,dword ptr [esp+8]
 0068723B    mov         edx,dword ptr [eax+50]
 0068723E    xor         eax,eax
 00687240    mov         ecx,edx
 00687242    mov         edx,dword ptr [esp+14]
 00687246    movzx       ebx,word ptr [edx]
 00687249    mov         dword ptr [ecx],ebx
 0068724B    inc         eax
 0068724C    add         ecx,4
 0068724F    add         edx,2
 00687252    cmp         eax,40
>00687255    jl          00687246
>00687257    jmp         00687319
 0068725C    mov         eax,dword ptr [esp+8]
 00687260    mov         edx,dword ptr [eax+50]
 00687263    xor         eax,eax
 00687265    mov         dword ptr [esp+24],edx
 00687269    mov         ecx,6E94C0
 0068726E    mov         edx,dword ptr [esp+14]
 00687272    movzx       ebx,word ptr [edx]
 00687275    movsx       esi,word ptr [ecx]
 00687278    imul        ebx,esi
 0068727B    add         ebx,800
 00687281    mov         esi,dword ptr [esp+24]
 00687285    sar         ebx,0C
 00687288    add         ecx,2
 0068728B    mov         dword ptr [esi],ebx
 0068728D    add         edx,2
 00687290    add         dword ptr [esp+24],4
 00687295    inc         eax
 00687296    cmp         eax,40
>00687299    jl          00687272
>0068729B    jmp         00687319
 0068729D    mov         eax,dword ptr [esp+8]
 006872A1    mov         edx,dword ptr [eax+50]
 006872A4    xor         eax,eax
 006872A6    mov         dword ptr [esp+18],edx
 006872AA    xor         edx,edx
 006872AC    mov         dword ptr [esp+1C],edx
 006872B0    mov         dword ptr [esp+28],6E9540;gvar_006E9540:Double
 006872B8    xor         edi,edi
 006872BA    mov         edx,dword ptr [esp+18]
 006872BE    lea         ebx,[edx+eax*4]
 006872C1    mov         ecx,6E9540;gvar_006E9540:Double
 006872C6    mov         edx,dword ptr [esp+28]
 006872CA    mov         esi,edx
 006872CC    mov         edx,dword ptr [esp+14]
 006872D0    lea         edx,[edx+eax*2]
 006872D3    movzx       ebp,word ptr [edx]
 006872D6    mov         dword ptr [esp+2C],ebp
 006872DA    add         edx,2
 006872DD    fild        dword ptr [esp+2C]
 006872E1    inc         eax
 006872E2    inc         edi
 006872E3    fmul        qword ptr [esi]
 006872E5    fmul        qword ptr [ecx]
 006872E7    add         ecx,8
 006872EA    fstp        dword ptr [ebx]
 006872EC    add         ebx,4
 006872EF    cmp         edi,8
>006872F2    jl          006872D3
 006872F4    inc         dword ptr [esp+1C]
 006872F8    add         dword ptr [esp+28],8
 006872FD    cmp         dword ptr [esp+1C],8
>00687302    jl          006872B8
>00687304    jmp         00687319
 00687306    mov         eax,dword ptr [esp]
 00687309    mov         edx,dword ptr [eax]
 0068730B    mov         dword ptr [edx+14],2F
 00687312    mov         eax,dword ptr [esp]
 00687315    mov         edx,dword ptr [eax]
 00687317    call        dword ptr [edx]
 00687319    add         dword ptr [esp+20],4
 0068731E    inc         dword ptr [esp+4]
 00687322    add         dword ptr [esp+8],54
 00687327    mov         ecx,dword ptr [esp]
 0068732A    mov         eax,dword ptr [ecx+20]
 0068732D    cmp         eax,dword ptr [esp+4]
>00687331    jg          0068712A
 00687337    add         esp,30
 0068733A    pop         ebp
 0068733B    pop         edi
 0068733C    pop         esi
 0068733D    pop         ebx
 0068733E    ret
*}
end;

//00687340
procedure @jinit_inverse_dct;
begin
{*
 00687340    push        ebx
 00687341    push        esi
 00687342    mov         esi,eax
 00687344    push        edi
 00687345    mov         eax,esi
 00687347    push        ebp
 00687348    push        ecx
 00687349    mov         ecx,54
 0068734E    mov         ebx,dword ptr [eax+4]
 00687351    mov         edx,1
 00687356    call        dword ptr [ebx]
 00687358    mov         dword ptr [esi+1B8],eax
 0068735E    mov         dword ptr [eax],6870EC;_DF_.
 00687364    xor         edx,edx
 00687366    lea         edi,[eax+2C]
 00687369    mov         dword ptr [esp],edx
 0068736C    mov         ebx,dword ptr [esi+0D4]
>00687372    jmp         006873AB
 00687374    mov         eax,esi
 00687376    mov         ecx,100
 0068737B    mov         edx,1
 00687380    mov         ebp,dword ptr [eax+4]
 00687383    call        dword ptr [ebp]
 00687386    mov         dword ptr [ebx+50],eax
 00687389    push        100
 0068738E    push        0
 00687390    mov         eax,dword ptr [ebx+50]
 00687393    push        eax
 00687394    call        _memset
 00687399    add         esp,0C
 0068739C    mov         dword ptr [edi],0FFFFFFFF
 006873A2    add         edi,4
 006873A5    inc         dword ptr [esp]
 006873A8    add         ebx,54
 006873AB    mov         edx,dword ptr [esp]
 006873AE    cmp         edx,dword ptr [esi+20]
>006873B1    jl          00687374
 006873B3    pop         edx
 006873B4    pop         ebp
 006873B5    pop         edi
 006873B6    pop         esi
 006873B7    pop         ebx
 006873B8    ret
*}
end;

//006873BC
procedure _DF_.;
begin
{*
 006873BC    mov         edx,dword ptr [eax+1BC]
 006873C2    mov         ecx,dword ptr [eax+130]
 006873C8    mov         dword ptr [edx+5C],ecx
 006873CB    mov         eax,dword ptr [eax+70]
 006873CE    mov         dword ptr [edx+60],eax
 006873D1    ret
*}
end;

//006878A0
procedure @jinit_upsampler;
begin
{*
 006878A0    push        ebx
 006878A1    mov         ebx,eax
 006878A3    mov         eax,ebx
 006878A5    push        esi
 006878A6    push        edi
 006878A7    push        ebp
 006878A8    mov         esi,dword ptr [eax+4]
 006878AB    add         esp,0FFFFFFE4
 006878AE    mov         ecx,0A0
 006878B3    mov         edx,1
 006878B8    call        dword ptr [esi]
 006878BA    mov         dword ptr [esp],eax
 006878BD    mov         eax,dword ptr [esp]
 006878C0    mov         dword ptr [ebx+1BC],eax
 006878C6    mov         edx,dword ptr [esp]
 006878C9    mov         dword ptr [edx],6873BC;_DF_.
 006878CF    mov         ecx,dword ptr [esp]
 006878D2    mov         dword ptr [ecx+4],6873D4
 006878D9    mov         eax,dword ptr [esp]
 006878DC    xor         edx,edx
 006878DE    mov         dword ptr [eax+8],edx
 006878E1    cmp         dword ptr [ebx+128],0
>006878E8    je          006878F9
 006878EA    mov         ecx,dword ptr [ebx]
 006878EC    mov         eax,ebx
 006878EE    mov         dword ptr [ecx+14],17
 006878F5    mov         edx,dword ptr [eax]
 006878F7    call        dword ptr [edx]
 006878F9    cmp         dword ptr [ebx+48],0
>006878FD    je          00687908
 006878FF    cmp         dword ptr [ebx+134],1
>00687906    jg          0068790C
 00687908    xor         ecx,ecx
>0068790A    jmp         00687911
 0068790C    mov         ecx,1
 00687911    mov         dword ptr [esp+0C],ecx
 00687915    xor         eax,eax
 00687917    mov         dword ptr [esp+4],eax
 0068791B    mov         edi,dword ptr [ebx+0D4]
 00687921    mov         eax,dword ptr [esp]
 00687924    lea         edx,[eax+8C]
 0068792A    mov         dword ptr [esp+18],edx
 0068792E    mov         ecx,dword ptr [esp]
 00687931    lea         esi,[ecx+64]
>00687934    jmp         00687AA3
 00687939    mov         eax,dword ptr [edi+8]
 0068793C    mov         ecx,dword ptr [edi+24]
 0068793F    imul        ecx
 00687941    cdq
 00687942    idiv        eax,dword ptr [ebx+134]
 00687948    mov         ebp,eax
 0068794A    mov         eax,dword ptr [edi+0C]
 0068794D    imul        ecx
 0068794F    cdq
 00687950    idiv        eax,dword ptr [ebx+134]
 00687956    mov         ecx,eax
 00687958    mov         eax,dword ptr [ebx+12C]
 0068795E    mov         dword ptr [esp+10],eax
 00687962    mov         edx,dword ptr [ebx+130]
 00687968    mov         dword ptr [esp+14],edx
 0068796C    mov         dword ptr [esi],ecx
 0068796E    mov         dword ptr [esp+8],1
 00687976    cmp         dword ptr [edi+30],0
>0068797A    jne         0068798E
 0068797C    mov         dword ptr [esi-30],6874E0
 00687983    xor         ecx,ecx
 00687985    mov         dword ptr [esp+8],ecx
>00687989    jmp         00687A67
 0068798E    cmp         ebp,dword ptr [esp+10]
>00687992    jne         006879AC
 00687994    cmp         ecx,dword ptr [esp+14]
>00687998    jne         006879AC
 0068799A    mov         dword ptr [esi-30],6874D4
 006879A1    xor         eax,eax
 006879A3    mov         dword ptr [esp+8],eax
>006879A7    jmp         00687A67
 006879AC    mov         edx,ebp
 006879AE    add         edx,edx
 006879B0    cmp         edx,dword ptr [esp+10]
>006879B4    jne         006879E1
 006879B6    cmp         ecx,dword ptr [esp+14]
>006879BA    jne         006879E1
 006879BC    cmp         dword ptr [esp+0C],0
>006879C1    je          006879D5
 006879C3    cmp         dword ptr [edi+28],2
>006879C7    jbe         006879D5
 006879C9    mov         dword ptr [esi-30],687698
>006879D0    jmp         00687A67
 006879D5    mov         dword ptr [esi-30],6875AC
>006879DC    jmp         00687A67
 006879E1    mov         eax,ebp
 006879E3    add         eax,eax
 006879E5    cmp         eax,dword ptr [esp+10]
>006879E9    jne         00687A1E
 006879EB    mov         edx,ecx
 006879ED    add         edx,edx
 006879EF    cmp         edx,dword ptr [esp+14]
>006879F3    jne         00687A1E
 006879F5    cmp         dword ptr [esp+0C],0
>006879FA    je          00687A15
 006879FC    cmp         dword ptr [edi+28],2
>00687A00    jbe         00687A15
 00687A02    mov         dword ptr [esi-30],68774C
 00687A09    mov         ecx,dword ptr [esp]
 00687A0C    mov         dword ptr [ecx+8],1
>00687A13    jmp         00687A67
 00687A15    mov         dword ptr [esi-30],687608
>00687A1C    jmp         00687A67
 00687A1E    mov         eax,dword ptr [esp+10]
 00687A22    cdq
 00687A23    idiv        eax,ebp
 00687A25    test        edx,edx
>00687A27    jne         00687A58
 00687A29    mov         eax,dword ptr [esp+14]
 00687A2D    cdq
 00687A2E    idiv        eax,ecx
 00687A30    test        edx,edx
>00687A32    jne         00687A58
 00687A34    mov         dword ptr [esi-30],6874F0
 00687A3B    mov         eax,dword ptr [esp+10]
 00687A3F    cdq
 00687A40    idiv        eax,ebp
 00687A42    mov         edx,dword ptr [esp+18]
 00687A46    mov         byte ptr [edx],al
 00687A48    mov         eax,dword ptr [esp+14]
 00687A4C    cdq
 00687A4D    idiv        eax,ecx
 00687A4F    mov         ecx,dword ptr [esp+18]
 00687A53    mov         byte ptr [ecx+0A],al
>00687A56    jmp         00687A67
 00687A58    mov         eax,dword ptr [ebx]
 00687A5A    mov         dword ptr [eax+14],25
 00687A61    mov         eax,ebx
 00687A63    mov         edx,dword ptr [eax]
 00687A65    call        dword ptr [edx]
 00687A67    cmp         dword ptr [esp+8],0
>00687A6C    je          00687A95
 00687A6E    mov         ecx,dword ptr [ebx+130]
 00687A74    push        ecx
 00687A75    mov         edx,dword ptr [ebx+12C]
 00687A7B    mov         eax,dword ptr [ebx+6C]
 00687A7E    call        @jround_up
 00687A83    mov         ecx,eax
 00687A85    mov         eax,ebx
 00687A87    mov         edx,1
 00687A8C    mov         ebp,dword ptr [eax+4]
 00687A8F    call        dword ptr [ebp+8]
 00687A92    mov         dword ptr [esi-58],eax
 00687A95    add         esi,4
 00687A98    inc         dword ptr [esp+18]
 00687A9C    inc         dword ptr [esp+4]
 00687AA0    add         edi,54
 00687AA3    mov         eax,dword ptr [esp+4]
 00687AA7    cmp         eax,dword ptr [ebx+20]
>00687AAA    jl          00687939
 00687AB0    add         esp,1C
 00687AB3    pop         ebp
 00687AB4    pop         edi
 00687AB5    pop         esi
 00687AB6    pop         ebx
 00687AB7    ret
*}
end;

//00687AB8
procedure @jpeg_idct_4x4;
begin
{*
 00687AB8    push        ebp
 00687AB9    mov         ebp,esp
 00687ABB    add         esp,0FFFFFF58
 00687AC1    push        ebx
 00687AC2    push        esi
 00687AC3    push        edi
 00687AC4    mov         eax,dword ptr [eax+13C]
 00687ACA    add         eax,80
 00687ACF    mov         dword ptr [ebp-20],eax
 00687AD2    mov         ebx,ecx
 00687AD4    mov         eax,dword ptr [edx+50]
 00687AD7    mov         dword ptr [ebp-1C],eax
 00687ADA    lea         eax,[ebp-0A8]
 00687AE0    mov         dword ptr [ebp-24],8
 00687AE7    cmp         dword ptr [ebp-24],4
>00687AEB    je          00687C82
 00687AF1    mov         dx,word ptr [ebx+10]
 00687AF5    or          dx,word ptr [ebx+20]
 00687AF9    or          dx,word ptr [ebx+30]
 00687AFD    or          dx,word ptr [ebx+50]
 00687B01    or          dx,word ptr [ebx+60]
 00687B05    or          dx,word ptr [ebx+70]
>00687B09    jne         00687B27
 00687B0B    movsx       edx,word ptr [ebx]
 00687B0E    mov         ecx,dword ptr [ebp-1C]
 00687B11    imul        edx,dword ptr [ecx]
 00687B14    shl         edx,2
 00687B17    mov         dword ptr [eax],edx
 00687B19    mov         dword ptr [eax+20],edx
 00687B1C    mov         dword ptr [eax+40],edx
 00687B1F    mov         dword ptr [eax+60],edx
>00687B22    jmp         00687C82
 00687B27    movsx       edx,word ptr [ebx]
 00687B2A    mov         ecx,dword ptr [ebp-1C]
 00687B2D    mov         esi,dword ptr [ebp-1C]
 00687B30    imul        edx,dword ptr [ecx]
 00687B33    movsx       ecx,word ptr [ebx+20]
 00687B37    imul        ecx,dword ptr [esi+40]
 00687B3B    mov         dword ptr [ebp-10],ecx
 00687B3E    movsx       ecx,word ptr [ebx+60]
 00687B42    mov         esi,dword ptr [ebp-1C]
 00687B45    imul        ecx,dword ptr [esi+0C0]
 00687B4C    mov         dword ptr [ebp-14],ecx
 00687B4F    mov         ecx,dword ptr [ebp-10]
 00687B52    mov         esi,ecx
 00687B54    shl         ecx,4
 00687B57    sub         ecx,esi
 00687B59    shl         ecx,2
 00687B5C    sub         ecx,esi
 00687B5E    shl         edx,0E
 00687B61    lea         ecx,[esi+ecx*8]
 00687B64    shl         ecx,5
 00687B67    add         ecx,esi
 00687B69    mov         esi,dword ptr [ebp-14]
 00687B6C    mov         edi,esi
 00687B6E    neg         esi
 00687B70    lea         esi,[edi+esi*4]
 00687B73    shl         esi,4
 00687B76    sub         esi,edi
 00687B78    shl         esi,6
 00687B7B    add         esi,edi
 00687B7D    add         esi,esi
 00687B7F    add         ecx,esi
 00687B81    lea         esi,[ecx+edx]
 00687B84    sub         edx,ecx
 00687B86    mov         dword ptr [ebp-4],esi
 00687B89    mov         dword ptr [ebp-8],edx
 00687B8C    movsx       edx,word ptr [ebx+70]
 00687B90    mov         ecx,dword ptr [ebp-1C]
 00687B93    imul        edx,dword ptr [ecx+0E0]
 00687B9A    mov         dword ptr [ebp-0C],edx
 00687B9D    movsx       edx,word ptr [ebx+50]
 00687BA1    mov         ecx,dword ptr [ebp-1C]
 00687BA4    imul        edx,dword ptr [ecx+0A0]
 00687BAB    mov         dword ptr [ebp-10],edx
 00687BAE    movsx       edx,word ptr [ebx+30]
 00687BB2    mov         ecx,dword ptr [ebp-1C]
 00687BB5    imul        edx,dword ptr [ecx+60]
 00687BB9    mov         dword ptr [ebp-14],edx
 00687BBC    movsx       edx,word ptr [ebx+10]
 00687BC0    mov         ecx,dword ptr [ebp-1C]
 00687BC3    imul        edx,dword ptr [ecx+20]
 00687BC7    mov         dword ptr [ebp-18],edx
 00687BCA    mov         edx,dword ptr [ebp-0C]
 00687BCD    mov         ecx,edx
 00687BCF    neg         edx
 00687BD1    lea         edx,[ecx+edx*8]
 00687BD4    lea         edx,[ecx+edx*4]
 00687BD7    shl         edx,5
 00687BDA    sub         edx,ecx
 00687BDC    imul        ecx,dword ptr [ebp-10],2E75
 00687BE3    add         edx,edx
 00687BE5    add         edx,ecx
 00687BE7    imul        ecx,dword ptr [ebp-14],0FFFFBA79
 00687BEE    add         edx,ecx
 00687BF0    mov         ecx,dword ptr [ebp-18]
 00687BF3    mov         esi,ecx
 00687BF5    shl         ecx,4
 00687BF8    add         ecx,esi
 00687BFA    shl         ecx,6
 00687BFD    sub         ecx,esi
 00687BFF    lea         ecx,[esi+ecx*8]
 00687C02    add         edx,ecx
 00687C04    mov         ecx,dword ptr [ebp-0C]
 00687C07    mov         esi,ecx
 00687C09    neg         ecx
 00687C0B    shl         ecx,6
 00687C0E    sub         ecx,esi
 00687C10    shl         ecx,2
 00687C13    sub         ecx,esi
 00687C15    imul        esi,dword ptr [ebp-10],0FFFFECC2
 00687C1C    shl         ecx,4
 00687C1F    add         ecx,esi
 00687C21    imul        esi,dword ptr [ebp-14],1CCD
 00687C28    add         ecx,esi
 00687C2A    mov         esi,dword ptr [ebp-18]
 00687C2D    mov         edi,esi
 00687C2F    lea         esi,[edi+esi*4]
 00687C32    lea         esi,[edi+esi*8]
 00687C35    shl         esi,8
 00687C38    add         esi,edi
 00687C3A    lea         esi,[edi+esi*2]
 00687C3D    add         ecx,esi
 00687C3F    mov         esi,dword ptr [ebp-4]
 00687C42    add         esi,ecx
 00687C44    add         esi,800
 00687C4A    sar         esi,0C
 00687C4D    mov         dword ptr [eax],esi
 00687C4F    mov         esi,dword ptr [ebp-4]
 00687C52    sub         esi,ecx
 00687C54    add         esi,800
 00687C5A    sar         esi,0C
 00687C5D    mov         dword ptr [eax+60],esi
 00687C60    mov         ecx,dword ptr [ebp-8]
 00687C63    add         ecx,edx
 00687C65    add         ecx,800
 00687C6B    sar         ecx,0C
 00687C6E    mov         dword ptr [eax+20],ecx
 00687C71    mov         ecx,dword ptr [ebp-8]
 00687C74    sub         ecx,edx
 00687C76    add         ecx,800
 00687C7C    sar         ecx,0C
 00687C7F    mov         dword ptr [eax+40],ecx
 00687C82    add         ebx,2
 00687C85    add         dword ptr [ebp-1C],4
 00687C89    add         eax,4
 00687C8C    dec         dword ptr [ebp-24]
 00687C8F    cmp         dword ptr [ebp-24],0
>00687C93    jg          00687AE7
 00687C99    lea         eax,[ebp-0A8]
 00687C9F    xor         edx,edx
 00687CA1    mov         dword ptr [ebp-24],edx
 00687CA4    mov         edx,dword ptr [ebp+0C]
 00687CA7    mov         ecx,edx
 00687CA9    mov         dword ptr [ebp-28],ecx
 00687CAC    mov         edx,dword ptr [ebp-28]
 00687CAF    mov         esi,dword ptr [edx]
 00687CB1    mov         edx,dword ptr [eax+4]
 00687CB4    or          edx,dword ptr [eax+8]
 00687CB7    add         esi,dword ptr [ebp+8]
 00687CBA    or          edx,dword ptr [eax+0C]
 00687CBD    or          edx,dword ptr [eax+14]
 00687CC0    or          edx,dword ptr [eax+18]
 00687CC3    or          edx,dword ptr [eax+1C]
>00687CC6    jne         00687CEF
 00687CC8    mov         ecx,dword ptr [eax]
 00687CCA    add         ecx,10
 00687CCD    sar         ecx,5
 00687CD0    and         ecx,3FF
 00687CD6    mov         edx,dword ptr [ebp-20]
 00687CD9    mov         dl,byte ptr [edx+ecx]
 00687CDC    mov         byte ptr [esi],dl
 00687CDE    mov         byte ptr [esi+1],dl
 00687CE1    mov         byte ptr [esi+2],dl
 00687CE4    mov         byte ptr [esi+3],dl
 00687CE7    add         eax,20
>00687CEA    jmp         00687E31
 00687CEF    mov         ecx,dword ptr [eax+8]
 00687CF2    mov         edx,dword ptr [eax]
 00687CF4    mov         ebx,ecx
 00687CF6    shl         ecx,4
 00687CF9    sub         ecx,ebx
 00687CFB    shl         ecx,2
 00687CFE    sub         ecx,ebx
 00687D00    shl         edx,0E
 00687D03    lea         ecx,[ebx+ecx*8]
 00687D06    shl         ecx,5
 00687D09    add         ecx,ebx
 00687D0B    mov         ebx,dword ptr [eax+18]
 00687D0E    mov         edi,ebx
 00687D10    neg         ebx
 00687D12    lea         ebx,[edi+ebx*4]
 00687D15    shl         ebx,4
 00687D18    sub         ebx,edi
 00687D1A    shl         ebx,6
 00687D1D    add         ebx,edi
 00687D1F    add         ebx,ebx
 00687D21    add         ecx,ebx
 00687D23    lea         ebx,[ecx+edx]
 00687D26    sub         edx,ecx
 00687D28    mov         dword ptr [ebp-4],ebx
 00687D2B    mov         dword ptr [ebp-8],edx
 00687D2E    mov         edx,dword ptr [eax+1C]
 00687D31    mov         dword ptr [ebp-0C],edx
 00687D34    mov         ecx,dword ptr [eax+14]
 00687D37    mov         dword ptr [ebp-10],ecx
 00687D3A    mov         edx,dword ptr [eax+0C]
 00687D3D    mov         dword ptr [ebp-14],edx
 00687D40    mov         ecx,dword ptr [eax+4]
 00687D43    mov         dword ptr [ebp-18],ecx
 00687D46    mov         edx,dword ptr [ebp-0C]
 00687D49    mov         ecx,edx
 00687D4B    neg         edx
 00687D4D    lea         edx,[ecx+edx*8]
 00687D50    lea         edx,[ecx+edx*4]
 00687D53    shl         edx,5
 00687D56    sub         edx,ecx
 00687D58    imul        ecx,dword ptr [ebp-10],2E75
 00687D5F    add         edx,edx
 00687D61    add         edx,ecx
 00687D63    imul        ecx,dword ptr [ebp-14],0FFFFBA79
 00687D6A    add         edx,ecx
 00687D6C    mov         ecx,dword ptr [ebp-18]
 00687D6F    mov         ebx,ecx
 00687D71    shl         ecx,4
 00687D74    add         ecx,ebx
 00687D76    shl         ecx,6
 00687D79    sub         ecx,ebx
 00687D7B    lea         ecx,[ebx+ecx*8]
 00687D7E    add         edx,ecx
 00687D80    mov         ecx,dword ptr [ebp-0C]
 00687D83    mov         ebx,ecx
 00687D85    neg         ecx
 00687D87    shl         ecx,6
 00687D8A    sub         ecx,ebx
 00687D8C    shl         ecx,2
 00687D8F    sub         ecx,ebx
 00687D91    imul        ebx,dword ptr [ebp-10],0FFFFECC2
 00687D98    shl         ecx,4
 00687D9B    add         ecx,ebx
 00687D9D    imul        ebx,dword ptr [ebp-14],1CCD
 00687DA4    add         ecx,ebx
 00687DA6    mov         ebx,dword ptr [ebp-18]
 00687DA9    mov         edi,ebx
 00687DAB    lea         ebx,[edi+ebx*4]
 00687DAE    lea         ebx,[edi+ebx*8]
 00687DB1    shl         ebx,8
 00687DB4    add         ebx,edi
 00687DB6    lea         ebx,[edi+ebx*2]
 00687DB9    mov         edi,dword ptr [ebp-20]
 00687DBC    add         ecx,ebx
 00687DBE    mov         ebx,dword ptr [ebp-4]
 00687DC1    add         ebx,ecx
 00687DC3    add         ebx,40000
 00687DC9    sar         ebx,13
 00687DCC    and         ebx,3FF
 00687DD2    mov         bl,byte ptr [edi+ebx]
 00687DD5    mov         byte ptr [esi],bl
 00687DD7    mov         ebx,dword ptr [ebp-4]
 00687DDA    sub         ebx,ecx
 00687DDC    mov         ecx,dword ptr [ebp-20]
 00687DDF    add         ebx,40000
 00687DE5    sar         ebx,13
 00687DE8    and         ebx,3FF
 00687DEE    mov         cl,byte ptr [ecx+ebx]
 00687DF1    mov         byte ptr [esi+3],cl
 00687DF4    mov         ecx,dword ptr [ebp-8]
 00687DF7    mov         ebx,dword ptr [ebp-20]
 00687DFA    add         ecx,edx
 00687DFC    add         ecx,40000
 00687E02    sar         ecx,13
 00687E05    and         ecx,3FF
 00687E0B    mov         cl,byte ptr [ebx+ecx]
 00687E0E    mov         byte ptr [esi+1],cl
 00687E11    mov         ecx,dword ptr [ebp-8]
 00687E14    sub         ecx,edx
 00687E16    mov         edx,dword ptr [ebp-20]
 00687E19    add         ecx,40000
 00687E1F    sar         ecx,13
 00687E22    and         ecx,3FF
 00687E28    add         eax,20
 00687E2B    mov         dl,byte ptr [edx+ecx]
 00687E2E    mov         byte ptr [esi+2],dl
 00687E31    inc         dword ptr [ebp-24]
 00687E34    add         dword ptr [ebp-28],4
 00687E38    cmp         dword ptr [ebp-24],4
>00687E3C    jl          00687CAC
 00687E42    pop         edi
 00687E43    pop         esi
 00687E44    pop         ebx
 00687E45    mov         esp,ebp
 00687E47    pop         ebp
 00687E48    ret         8
*}
end;

//00687E4C
procedure @jpeg_idct_2x2;
begin
{*
 00687E4C    push        ebp
 00687E4D    mov         ebp,esp
 00687E4F    add         esp,0FFFFFFAC
 00687E52    push        ebx
 00687E53    push        esi
 00687E54    push        edi
 00687E55    mov         eax,dword ptr [eax+13C]
 00687E5B    add         eax,80
 00687E60    mov         dword ptr [ebp-0C],eax
 00687E63    lea         eax,[ebp-54]
 00687E66    mov         edx,dword ptr [edx+50]
 00687E69    mov         dword ptr [ebp-8],edx
 00687E6C    mov         edx,8
 00687E71    cmp         edx,6
>00687E74    je          00687F40
 00687E7A    cmp         edx,4
>00687E7D    je          00687F40
 00687E83    cmp         edx,2
>00687E86    je          00687F40
 00687E8C    mov         bx,word ptr [ecx+10]
 00687E90    or          bx,word ptr [ecx+30]
 00687E94    or          bx,word ptr [ecx+50]
 00687E98    or          bx,word ptr [ecx+70]
>00687E9C    jne         00687EB4
 00687E9E    movsx       ebx,word ptr [ecx]
 00687EA1    mov         esi,dword ptr [ebp-8]
 00687EA4    imul        ebx,dword ptr [esi]
 00687EA7    shl         ebx,2
 00687EAA    mov         dword ptr [eax],ebx
 00687EAC    mov         dword ptr [eax+20],ebx
>00687EAF    jmp         00687F40
 00687EB4    movsx       ebx,word ptr [ecx]
 00687EB7    mov         esi,dword ptr [ebp-8]
 00687EBA    imul        ebx,dword ptr [esi]
 00687EBD    shl         ebx,0F
 00687EC0    mov         dword ptr [ebp-4],ebx
 00687EC3    movsx       ebx,word ptr [ecx+70]
 00687EC7    mov         esi,dword ptr [ebp-8]
 00687ECA    mov         edi,dword ptr [ebp-8]
 00687ECD    imul        ebx,dword ptr [esi+0E0]
 00687ED4    imul        esi,ebx,0FFFFE8EE
 00687EDA    movsx       ebx,word ptr [ecx+50]
 00687EDE    imul        ebx,dword ptr [edi+0A0]
 00687EE5    imul        ebx,ebx,1B37
 00687EEB    add         esi,ebx
 00687EED    mov         edi,dword ptr [ebp-8]
 00687EF0    movsx       ebx,word ptr [ecx+30]
 00687EF4    imul        ebx,dword ptr [edi+60]
 00687EF8    imul        ebx,ebx,0FFFFD746
 00687EFE    add         esi,ebx
 00687F00    mov         edi,dword ptr [ebp-8]
 00687F03    movsx       ebx,word ptr [ecx+10]
 00687F07    imul        ebx,dword ptr [edi+20]
 00687F0B    mov         edi,ebx
 00687F0D    shl         ebx,3
 00687F10    sub         ebx,edi
 00687F12    lea         ebx,[edi+ebx*4]
 00687F15    shl         ebx,8
 00687F18    sub         ebx,edi
 00687F1A    shl         ebx,2
 00687F1D    add         esi,ebx
 00687F1F    mov         ebx,dword ptr [ebp-4]
 00687F22    add         ebx,esi
 00687F24    add         ebx,1000
 00687F2A    sar         ebx,0D
 00687F2D    mov         dword ptr [eax],ebx
 00687F2F    mov         ebx,dword ptr [ebp-4]
 00687F32    sub         ebx,esi
 00687F34    add         ebx,1000
 00687F3A    sar         ebx,0D
 00687F3D    mov         dword ptr [eax+20],ebx
 00687F40    add         ecx,2
 00687F43    add         dword ptr [ebp-8],4
 00687F47    add         eax,4
 00687F4A    dec         edx
 00687F4B    test        edx,edx
>00687F4D    jg          00687E71
 00687F53    mov         ecx,dword ptr [ebp+0C]
 00687F56    lea         eax,[ebp-54]
 00687F59    mov         dword ptr [ebp-14],ecx
 00687F5C    xor         edx,edx
 00687F5E    mov         ecx,dword ptr [ebp-14]
 00687F61    mov         ebx,dword ptr [eax+4]
 00687F64    or          ebx,dword ptr [eax+0C]
 00687F67    or          ebx,dword ptr [eax+14]
 00687F6A    mov         ecx,dword ptr [ecx]
 00687F6C    add         ecx,dword ptr [ebp+8]
 00687F6F    or          ebx,dword ptr [eax+1C]
>00687F72    jne         00687F9B
 00687F74    mov         ebx,dword ptr [eax]
 00687F76    mov         esi,dword ptr [ebp-0C]
 00687F79    add         ebx,10
 00687F7C    sar         ebx,5
 00687F7F    and         ebx,3FF
 00687F85    add         eax,20
 00687F88    mov         bl,byte ptr [esi+ebx]
 00687F8B    mov         byte ptr [ebp-0D],bl
 00687F8E    mov         bl,byte ptr [ebp-0D]
 00687F91    mov         byte ptr [ecx],bl
 00687F93    mov         bl,byte ptr [ebp-0D]
 00687F96    mov         byte ptr [ecx+1],bl
>00687F99    jmp         0068800F
 00687F9B    mov         ebx,dword ptr [eax]
 00687F9D    shl         ebx,0F
 00687FA0    mov         dword ptr [ebp-4],ebx
 00687FA3    imul        ebx,dword ptr [eax+14],1B37
 00687FAA    imul        esi,dword ptr [eax+1C],0FFFFE8EE
 00687FB1    add         esi,ebx
 00687FB3    imul        ebx,dword ptr [eax+0C],0FFFFD746
 00687FBA    add         esi,ebx
 00687FBC    mov         ebx,dword ptr [eax+4]
 00687FBF    mov         edi,ebx
 00687FC1    shl         ebx,3
 00687FC4    sub         ebx,edi
 00687FC6    lea         ebx,[edi+ebx*4]
 00687FC9    shl         ebx,8
 00687FCC    sub         ebx,edi
 00687FCE    mov         edi,dword ptr [ebp-0C]
 00687FD1    shl         ebx,2
 00687FD4    add         esi,ebx
 00687FD6    mov         ebx,dword ptr [ebp-4]
 00687FD9    add         ebx,esi
 00687FDB    add         ebx,80000
 00687FE1    sar         ebx,14
 00687FE4    and         ebx,3FF
 00687FEA    mov         bl,byte ptr [edi+ebx]
 00687FED    mov         byte ptr [ecx],bl
 00687FEF    mov         ebx,dword ptr [ebp-4]
 00687FF2    sub         ebx,esi
 00687FF4    mov         esi,dword ptr [ebp-0C]
 00687FF7    add         ebx,80000
 00687FFD    sar         ebx,14
 00688000    and         ebx,3FF
 00688006    add         eax,20
 00688009    mov         bl,byte ptr [esi+ebx]
 0068800C    mov         byte ptr [ecx+1],bl
 0068800F    inc         edx
 00688010    add         dword ptr [ebp-14],4
 00688014    cmp         edx,2
>00688017    jl          00687F5E
 0068801D    pop         edi
 0068801E    pop         esi
 0068801F    pop         ebx
 00688020    mov         esp,ebp
 00688022    pop         ebp
 00688023    ret         8
*}
end;

//00688028
procedure @jpeg_idct_1x1;
begin
{*
 00688028    push        ebp
 00688029    mov         ebp,esp
 0068802B    push        esi
 0068802C    mov         esi,dword ptr [eax+13C]
 00688032    mov         eax,dword ptr [edx+50]
 00688035    movsx       edx,word ptr [ecx]
 00688038    imul        edx,dword ptr [eax]
 0068803B    mov         eax,edx
 0068803D    add         esi,80
 00688043    add         eax,4
 00688046    mov         ecx,dword ptr [ebp+0C]
 00688049    sar         eax,3
 0068804C    and         eax,3FF
 00688051    mov         dl,byte ptr [esi+eax]
 00688054    mov         eax,dword ptr [ecx]
 00688056    mov         ecx,dword ptr [ebp+8]
 00688059    mov         byte ptr [eax+ecx],dl
 0068805C    pop         esi
 0068805D    pop         ebp
 0068805E    ret         8
*}
end;

//00688064
procedure _DF_.;
begin
{*
 00688064    push        ebx
 00688065    mov         ebx,eax
 00688067    mov         eax,dword ptr [ebx]
 00688069    mov         dword ptr [eax+14],65
 00688070    mov         edx,1
 00688075    mov         eax,ebx
 00688077    mov         ecx,dword ptr [eax]
 00688079    call        dword ptr [ecx+4]
 0068807C    mov         edx,dword ptr [ebx+1B0]
 00688082    cmp         dword ptr [edx+50],0
>00688086    je          00688097
 00688088    mov         eax,dword ptr [ebx]
 0068808A    mov         dword ptr [eax+14],3C
 00688091    mov         eax,ebx
 00688093    mov         edx,dword ptr [eax]
 00688095    call        dword ptr [edx]
 00688097    xor         edx,edx
 00688099    lea         eax,[ebx+0E0]
 0068809F    mov         byte ptr [eax],0
 006880A2    mov         byte ptr [eax+10],1
 006880A6    mov         byte ptr [eax+20],5
 006880AA    inc         edx
 006880AB    inc         eax
 006880AC    cmp         edx,10
>006880AF    jl          0068809F
 006880B1    xor         ecx,ecx
 006880B3    xor         eax,eax
 006880B5    mov         dword ptr [ebx+110],ecx
 006880BB    mov         dword ptr [ebx+24],eax
 006880BE    xor         edx,edx
 006880C0    xor         ecx,ecx
 006880C2    mov         dword ptr [ebx+128],edx
 006880C8    mov         dword ptr [ebx+114],ecx
 006880CE    mov         byte ptr [ebx+118],0
 006880D5    mov         word ptr [ebx+11A],1
 006880DE    mov         word ptr [ebx+11C],1
 006880E7    xor         eax,eax
 006880E9    mov         dword ptr [ebx+120],eax
 006880EF    mov         eax,1
 006880F4    mov         byte ptr [ebx+124],0
 006880FB    mov         edx,dword ptr [ebx+1B0]
 00688101    mov         dword ptr [edx+50],1
 00688108    pop         ebx
 00688109    ret
*}
end;

//0068810C
{*function sub_0068810C(?:?; ?:?; ?:?):?;
begin
 0068810C    push        ebx
 0068810D    push        esi
 0068810E    push        edi
 0068810F    push        ebp
 00688110    add         esp,0FFFFFFF0
 00688113    mov         ebx,eax
 00688115    mov         dword ptr [esp+4],ecx
 00688119    mov         dword ptr [esp],edx
 0068811C    mov         eax,dword ptr [ebx+14]
 0068811F    mov         dword ptr [esp+0C],eax
 00688123    mov         eax,dword ptr [esp+0C]
 00688127    mov         edx,dword ptr [esp+0C]
 0068812B    mov         edi,dword ptr [eax+4]
 0068812E    mov         esi,dword ptr [edx]
 00688130    mov         eax,dword ptr [esp]
 00688133    test        edi,edi
 00688135    mov         dword ptr [ebx+0D8],eax
 0068813B    mov         edx,dword ptr [esp+4]
 0068813F    mov         dword ptr [ebx+0DC],edx
>00688145    jne         00688168
 00688147    mov         esi,dword ptr [esp+0C]
 0068814B    mov         eax,ebx
 0068814D    call        dword ptr [esi+0C]
 00688150    test        eax,eax
>00688152    jne         0068815B
 00688154    xor         eax,eax
>00688156    jmp         00688481
 0068815B    mov         edx,dword ptr [esp+0C]
 0068815F    mov         eax,dword ptr [esp+0C]
 00688163    mov         edi,dword ptr [eax+4]
 00688166    mov         esi,dword ptr [edx]
 00688168    dec         edi
 00688169    movzx       ebp,byte ptr [esi]
 0068816C    shl         ebp,8
 0068816F    inc         esi
 00688170    test        edi,edi
>00688172    jne         00688195
 00688174    mov         esi,dword ptr [esp+0C]
 00688178    mov         eax,ebx
 0068817A    call        dword ptr [esi+0C]
 0068817D    test        eax,eax
>0068817F    jne         00688188
 00688181    xor         eax,eax
>00688183    jmp         00688481
 00688188    mov         edx,dword ptr [esp+0C]
 0068818C    mov         eax,dword ptr [esp+0C]
 00688190    mov         edi,dword ptr [eax+4]
 00688193    mov         esi,dword ptr [edx]
 00688195    dec         edi
 00688196    xor         eax,eax
 00688198    mov         al,byte ptr [esi]
 0068819A    add         ebp,eax
 0068819C    inc         esi
 0068819D    test        edi,edi
>0068819F    jne         006881C2
 006881A1    mov         esi,dword ptr [esp+0C]
 006881A5    mov         eax,ebx
 006881A7    call        dword ptr [esi+0C]
 006881AA    test        eax,eax
>006881AC    jne         006881B5
 006881AE    xor         eax,eax
>006881B0    jmp         00688481
 006881B5    mov         edx,dword ptr [esp+0C]
 006881B9    mov         eax,dword ptr [esp+0C]
 006881BD    mov         edi,dword ptr [eax+4]
 006881C0    mov         esi,dword ptr [edx]
 006881C2    dec         edi
 006881C3    xor         eax,eax
 006881C5    mov         al,byte ptr [esi]
 006881C7    mov         dword ptr [ebx+0D0],eax
 006881CD    inc         esi
 006881CE    test        edi,edi
>006881D0    jne         006881F3
 006881D2    mov         esi,dword ptr [esp+0C]
 006881D6    mov         eax,ebx
 006881D8    call        dword ptr [esi+0C]
 006881DB    test        eax,eax
>006881DD    jne         006881E6
 006881DF    xor         eax,eax
>006881E1    jmp         00688481
 006881E6    mov         edx,dword ptr [esp+0C]
 006881EA    mov         eax,dword ptr [esp+0C]
 006881EE    mov         edi,dword ptr [eax+4]
 006881F1    mov         esi,dword ptr [edx]
 006881F3    xor         eax,eax
 006881F5    dec         edi
 006881F6    mov         al,byte ptr [esi]
 006881F8    inc         esi
 006881F9    shl         eax,8
 006881FC    test        edi,edi
 006881FE    mov         dword ptr [ebx+1C],eax
>00688201    jne         00688224
 00688203    mov         esi,dword ptr [esp+0C]
 00688207    mov         eax,ebx
 00688209    call        dword ptr [esi+0C]
 0068820C    test        eax,eax
>0068820E    jne         00688217
 00688210    xor         eax,eax
>00688212    jmp         00688481
 00688217    mov         edx,dword ptr [esp+0C]
 0068821B    mov         eax,dword ptr [esp+0C]
 0068821F    mov         edi,dword ptr [eax+4]
 00688222    mov         esi,dword ptr [edx]
 00688224    dec         edi
 00688225    xor         eax,eax
 00688227    mov         al,byte ptr [esi]
 00688229    add         dword ptr [ebx+1C],eax
 0068822C    inc         esi
 0068822D    test        edi,edi
>0068822F    jne         00688252
 00688231    mov         esi,dword ptr [esp+0C]
 00688235    mov         eax,ebx
 00688237    call        dword ptr [esi+0C]
 0068823A    test        eax,eax
>0068823C    jne         00688245
 0068823E    xor         eax,eax
>00688240    jmp         00688481
 00688245    mov         edx,dword ptr [esp+0C]
 00688249    mov         eax,dword ptr [esp+0C]
 0068824D    mov         edi,dword ptr [eax+4]
 00688250    mov         esi,dword ptr [edx]
 00688252    xor         eax,eax
 00688254    dec         edi
 00688255    mov         al,byte ptr [esi]
 00688257    inc         esi
 00688258    shl         eax,8
 0068825B    test        edi,edi
 0068825D    mov         dword ptr [ebx+18],eax
>00688260    jne         00688283
 00688262    mov         esi,dword ptr [esp+0C]
 00688266    mov         eax,ebx
 00688268    call        dword ptr [esi+0C]
 0068826B    test        eax,eax
>0068826D    jne         00688276
 0068826F    xor         eax,eax
>00688271    jmp         00688481
 00688276    mov         edx,dword ptr [esp+0C]
 0068827A    mov         eax,dword ptr [esp+0C]
 0068827E    mov         edi,dword ptr [eax+4]
 00688281    mov         esi,dword ptr [edx]
 00688283    dec         edi
 00688284    xor         eax,eax
 00688286    mov         al,byte ptr [esi]
 00688288    add         dword ptr [ebx+18],eax
 0068828B    inc         esi
 0068828C    test        edi,edi
>0068828E    jne         006882B1
 00688290    mov         esi,dword ptr [esp+0C]
 00688294    mov         eax,ebx
 00688296    call        dword ptr [esi+0C]
 00688299    test        eax,eax
>0068829B    jne         006882A4
 0068829D    xor         eax,eax
>0068829F    jmp         00688481
 006882A4    mov         edx,dword ptr [esp+0C]
 006882A8    mov         eax,dword ptr [esp+0C]
 006882AC    mov         edi,dword ptr [eax+4]
 006882AF    mov         esi,dword ptr [edx]
 006882B1    xor         eax,eax
 006882B3    dec         edi
 006882B4    mov         al,byte ptr [esi]
 006882B6    inc         esi
 006882B7    sub         ebp,8
 006882BA    mov         dword ptr [ebx+20],eax
 006882BD    mov         eax,dword ptr [ebx]
 006882BF    add         eax,18
 006882C2    mov         edx,dword ptr [ebx+198]
 006882C8    mov         dword ptr [eax],edx
 006882CA    mov         ecx,dword ptr [ebx+18]
 006882CD    mov         dword ptr [eax+4],ecx
 006882D0    mov         edx,dword ptr [ebx+1C]
 006882D3    mov         dword ptr [eax+8],edx
 006882D6    mov         ecx,dword ptr [ebx+20]
 006882D9    mov         dword ptr [eax+0C],ecx
 006882DC    mov         eax,dword ptr [ebx]
 006882DE    mov         dword ptr [eax+14],63
 006882E5    mov         edx,1
 006882EA    mov         eax,ebx
 006882EC    mov         ecx,dword ptr [eax]
 006882EE    call        dword ptr [ecx+4]
 006882F1    mov         eax,dword ptr [ebx+1B0]
 006882F7    cmp         dword ptr [eax+54],0
>006882FB    je          0068830C
 006882FD    mov         edx,dword ptr [ebx]
 006882FF    mov         eax,ebx
 00688301    mov         dword ptr [edx+14],39
 00688308    mov         edx,dword ptr [eax]
 0068830A    call        dword ptr [edx]
 0068830C    cmp         dword ptr [ebx+1C],0
>00688310    jbe         0068831E
 00688312    cmp         dword ptr [ebx+18],0
>00688316    jbe         0068831E
 00688318    cmp         dword ptr [ebx+20],0
>0068831C    jg          0068832D
 0068831E    mov         ecx,dword ptr [ebx]
 00688320    mov         eax,ebx
 00688322    mov         dword ptr [ecx+14],1F
 00688329    mov         edx,dword ptr [eax]
 0068832B    call        dword ptr [edx]
 0068832D    mov         ecx,dword ptr [ebx+20]
 00688330    lea         ecx,[ecx+ecx*2]
 00688333    cmp         ebp,ecx
>00688335    je          00688346
 00688337    mov         eax,dword ptr [ebx]
 00688339    mov         dword ptr [eax+14],9
 00688340    mov         eax,ebx
 00688342    mov         edx,dword ptr [eax]
 00688344    call        dword ptr [edx]
 00688346    cmp         dword ptr [ebx+0D4],0
>0068834D    jne         00688370
 0068834F    mov         ecx,dword ptr [ebx+20]
 00688352    mov         edx,1
 00688357    mov         eax,ecx
 00688359    lea         ecx,[eax+ecx*4]
 0068835C    lea         ecx,[eax+ecx*4]
 0068835F    mov         eax,ebx
 00688361    shl         ecx,2
 00688364    mov         ebp,dword ptr [eax+4]
 00688367    call        dword ptr [ebp]
 0068836A    mov         dword ptr [ebx+0D4],eax
 00688370    xor         eax,eax
 00688372    mov         dword ptr [esp+8],eax
 00688376    mov         ebp,dword ptr [ebx+0D4]
>0068837C    jmp         00688455
 00688381    mov         eax,dword ptr [esp+8]
 00688385    test        edi,edi
 00688387    mov         dword ptr [ebp+4],eax
>0068838A    jne         006883AD
 0068838C    mov         esi,dword ptr [esp+0C]
 00688390    mov         eax,ebx
 00688392    call        dword ptr [esi+0C]
 00688395    test        eax,eax
>00688397    jne         006883A0
 00688399    xor         eax,eax
>0068839B    jmp         00688481
 006883A0    mov         edx,dword ptr [esp+0C]
 006883A4    mov         eax,dword ptr [esp+0C]
 006883A8    mov         edi,dword ptr [eax+4]
 006883AB    mov         esi,dword ptr [edx]
 006883AD    dec         edi
 006883AE    xor         eax,eax
 006883B0    mov         al,byte ptr [esi]
 006883B2    mov         dword ptr [ebp],eax
 006883B5    inc         esi
 006883B6    test        edi,edi
>006883B8    jne         006883DB
 006883BA    mov         esi,dword ptr [esp+0C]
 006883BE    mov         eax,ebx
 006883C0    call        dword ptr [esi+0C]
 006883C3    test        eax,eax
>006883C5    jne         006883CE
 006883C7    xor         eax,eax
>006883C9    jmp         00688481
 006883CE    mov         edx,dword ptr [esp+0C]
 006883D2    mov         eax,dword ptr [esp+0C]
 006883D6    mov         edi,dword ptr [eax+4]
 006883D9    mov         esi,dword ptr [edx]
 006883DB    xor         eax,eax
 006883DD    dec         edi
 006883DE    mov         al,byte ptr [esi]
 006883E0    inc         esi
 006883E1    mov         edx,eax
 006883E3    and         eax,0F
 006883E6    sar         edx,4
 006883E9    and         edx,0F
 006883EC    test        edi,edi
 006883EE    mov         dword ptr [ebp+8],edx
 006883F1    mov         dword ptr [ebp+0C],eax
>006883F4    jne         00688414
 006883F6    mov         esi,dword ptr [esp+0C]
 006883FA    mov         eax,ebx
 006883FC    call        dword ptr [esi+0C]
 006883FF    test        eax,eax
>00688401    jne         00688407
 00688403    xor         eax,eax
>00688405    jmp         00688481
 00688407    mov         edx,dword ptr [esp+0C]
 0068840B    mov         eax,dword ptr [esp+0C]
 0068840F    mov         edi,dword ptr [eax+4]
 00688412    mov         esi,dword ptr [edx]
 00688414    xor         eax,eax
 00688416    dec         edi
 00688417    mov         al,byte ptr [esi]
 00688419    inc         esi
 0068841A    mov         dword ptr [ebp+10],eax
 0068841D    mov         eax,dword ptr [ebx]
 0068841F    add         eax,18
 00688422    mov         edx,dword ptr [ebp]
 00688425    mov         dword ptr [eax],edx
 00688427    mov         ecx,dword ptr [ebp+8]
 0068842A    mov         dword ptr [eax+4],ecx
 0068842D    mov         edx,dword ptr [ebp+0C]
 00688430    mov         dword ptr [eax+8],edx
 00688433    mov         ecx,dword ptr [ebp+10]
 00688436    mov         dword ptr [eax+0C],ecx
 00688439    mov         eax,dword ptr [ebx]
 0068843B    mov         dword ptr [eax+14],64
 00688442    mov         edx,1
 00688447    mov         eax,ebx
 00688449    mov         ecx,dword ptr [eax]
 0068844B    call        dword ptr [ecx+4]
 0068844E    inc         dword ptr [esp+8]
 00688452    add         ebp,54
 00688455    mov         eax,dword ptr [esp+8]
 00688459    cmp         eax,dword ptr [ebx+20]
>0068845C    jl          00688381
 00688462    mov         edx,dword ptr [ebx+1B0]
 00688468    mov         dword ptr [edx+54],1
 0068846F    mov         ecx,dword ptr [esp+0C]
 00688473    mov         dword ptr [ecx],esi
 00688475    mov         eax,dword ptr [esp+0C]
 00688479    mov         dword ptr [eax+4],edi
 0068847C    mov         eax,1
 00688481    add         esp,10
 00688484    pop         ebp
 00688485    pop         edi
 00688486    pop         esi
 00688487    pop         ebx
 00688488    ret
end;*}

//0068848C
{*function sub_0068848C(?:?):?;
begin
 0068848C    push        ebx
 0068848D    push        esi
 0068848E    push        edi
 0068848F    push        ebp
 00688490    mov         ebx,eax
 00688492    add         esp,0FFFFFFE8
 00688495    mov         eax,dword ptr [ebx+14]
 00688498    mov         dword ptr [esp+10],eax
 0068849C    mov         eax,dword ptr [esp+10]
 006884A0    mov         edx,dword ptr [esp+10]
 006884A4    mov         ebp,dword ptr [eax+4]
 006884A7    mov         eax,dword ptr [ebx+1B0]
 006884AD    mov         edi,dword ptr [edx]
 006884AF    cmp         dword ptr [eax+54],0
>006884B3    jne         006884C4
 006884B5    mov         edx,dword ptr [ebx]
 006884B7    mov         eax,ebx
 006884B9    mov         dword ptr [edx+14],3D
 006884C0    mov         edx,dword ptr [eax]
 006884C2    call        dword ptr [edx]
 006884C4    test        ebp,ebp
>006884C6    jne         006884E9
 006884C8    mov         esi,dword ptr [esp+10]
 006884CC    mov         eax,ebx
 006884CE    call        dword ptr [esi+0C]
 006884D1    test        eax,eax
>006884D3    jne         006884DC
 006884D5    xor         eax,eax
>006884D7    jmp         006887C4
 006884DC    mov         edx,dword ptr [esp+10]
 006884E0    mov         eax,dword ptr [esp+10]
 006884E4    mov         ebp,dword ptr [eax+4]
 006884E7    mov         edi,dword ptr [edx]
 006884E9    dec         ebp
 006884EA    movzx       esi,byte ptr [edi]
 006884ED    shl         esi,8
 006884F0    inc         edi
 006884F1    test        ebp,ebp
>006884F3    jne         00688516
 006884F5    mov         edi,dword ptr [esp+10]
 006884F9    mov         eax,ebx
 006884FB    call        dword ptr [edi+0C]
 006884FE    test        eax,eax
>00688500    jne         00688509
 00688502    xor         eax,eax
>00688504    jmp         006887C4
 00688509    mov         edx,dword ptr [esp+10]
 0068850D    mov         eax,dword ptr [esp+10]
 00688511    mov         ebp,dword ptr [eax+4]
 00688514    mov         edi,dword ptr [edx]
 00688516    dec         ebp
 00688517    xor         eax,eax
 00688519    mov         al,byte ptr [edi]
 0068851B    add         esi,eax
 0068851D    inc         edi
 0068851E    test        ebp,ebp
>00688520    jne         00688543
 00688522    mov         edi,dword ptr [esp+10]
 00688526    mov         eax,ebx
 00688528    call        dword ptr [edi+0C]
 0068852B    test        eax,eax
>0068852D    jne         00688536
 0068852F    xor         eax,eax
>00688531    jmp         006887C4
 00688536    mov         edx,dword ptr [esp+10]
 0068853A    mov         eax,dword ptr [esp+10]
 0068853E    mov         ebp,dword ptr [eax+4]
 00688541    mov         edi,dword ptr [edx]
 00688543    dec         ebp
 00688544    xor         eax,eax
 00688546    mov         al,byte ptr [edi]
 00688548    mov         dword ptr [esp+4],eax
 0068854C    inc         edi
 0068854D    mov         edx,dword ptr [esp+4]
 00688551    add         edx,edx
 00688553    add         edx,6
 00688556    cmp         esi,edx
>00688558    jne         00688568
 0068855A    cmp         dword ptr [esp+4],1
>0068855F    jl          00688568
 00688561    cmp         dword ptr [esp+4],4
>00688566    jle         00688577
 00688568    mov         ecx,dword ptr [ebx]
 0068856A    mov         eax,ebx
 0068856C    mov         dword ptr [ecx+14],9
 00688573    mov         edx,dword ptr [eax]
 00688575    call        dword ptr [edx]
 00688577    mov         eax,dword ptr [ebx]
 00688579    mov         dword ptr [eax+14],66
 00688580    mov         edx,dword ptr [esp+4]
 00688584    mov         dword ptr [eax+18],edx
 00688587    mov         eax,ebx
 00688589    mov         edx,1
 0068858E    mov         ecx,dword ptr [eax]
 00688590    call        dword ptr [ecx+4]
 00688593    mov         eax,dword ptr [esp+4]
 00688597    mov         dword ptr [ebx+140],eax
 0068859D    xor         edx,edx
 0068859F    mov         dword ptr [esp],edx
 006885A2    lea         ecx,[ebx+144]
 006885A8    mov         dword ptr [esp+14],ecx
 006885AC    mov         eax,dword ptr [esp]
 006885AF    cmp         eax,dword ptr [esp+4]
>006885B3    jge         006886A6
 006885B9    test        ebp,ebp
>006885BB    jne         006885DE
 006885BD    mov         esi,dword ptr [esp+10]
 006885C1    mov         eax,ebx
 006885C3    call        dword ptr [esi+0C]
 006885C6    test        eax,eax
>006885C8    jne         006885D1
 006885CA    xor         eax,eax
>006885CC    jmp         006887C4
 006885D1    mov         edx,dword ptr [esp+10]
 006885D5    mov         eax,dword ptr [esp+10]
 006885D9    mov         ebp,dword ptr [eax+4]
 006885DC    mov         edi,dword ptr [edx]
 006885DE    dec         ebp
 006885DF    xor         eax,eax
 006885E1    mov         al,byte ptr [edi]
 006885E3    mov         dword ptr [esp+0C],eax
 006885E7    inc         edi
 006885E8    test        ebp,ebp
>006885EA    jne         0068860D
 006885EC    mov         esi,dword ptr [esp+10]
 006885F0    mov         eax,ebx
 006885F2    call        dword ptr [esi+0C]
 006885F5    test        eax,eax
>006885F7    jne         00688600
 006885F9    xor         eax,eax
>006885FB    jmp         006887C4
 00688600    mov         edx,dword ptr [esp+10]
 00688604    mov         eax,dword ptr [esp+10]
 00688608    mov         ebp,dword ptr [eax+4]
 0068860B    mov         edi,dword ptr [edx]
 0068860D    xor         eax,eax
 0068860F    dec         ebp
 00688610    mov         al,byte ptr [edi]
 00688612    inc         edi
 00688613    mov         dword ptr [esp+8],eax
 00688617    xor         eax,eax
 00688619    mov         esi,dword ptr [ebx+0D4]
>0068861F    jmp         0068862D
 00688621    mov         edx,dword ptr [esp+0C]
 00688625    cmp         edx,dword ptr [esi]
>00688627    je          00688648
 00688629    inc         eax
 0068862A    add         esi,54
 0068862D    cmp         eax,dword ptr [ebx+20]
>00688630    jl          00688621
 00688632    mov         eax,dword ptr [ebx]
 00688634    mov         dword ptr [eax+14],5
 0068863B    mov         ecx,dword ptr [esp+0C]
 0068863F    mov         dword ptr [eax+18],ecx
 00688642    mov         eax,ebx
 00688644    mov         edx,dword ptr [eax]
 00688646    call        dword ptr [edx]
 00688648    mov         ecx,dword ptr [esp+14]
 0068864C    mov         dword ptr [ecx],esi
 0068864E    mov         eax,dword ptr [esp+8]
 00688652    sar         eax,4
 00688655    and         eax,0F
 00688658    mov         dword ptr [esi+14],eax
 0068865B    mov         edx,dword ptr [esp+8]
 0068865F    and         edx,0F
 00688662    mov         dword ptr [esi+18],edx
 00688665    mov         eax,dword ptr [ebx]
 00688667    add         eax,18
 0068866A    mov         edx,dword ptr [esp+0C]
 0068866E    mov         dword ptr [eax],edx
 00688670    mov         ecx,dword ptr [esi+14]
 00688673    mov         dword ptr [eax+4],ecx
 00688676    mov         edx,dword ptr [esi+18]
 00688679    mov         dword ptr [eax+8],edx
 0068867C    mov         eax,dword ptr [ebx]
 0068867E    mov         dword ptr [eax+14],67
 00688685    mov         edx,1
 0068868A    mov         eax,ebx
 0068868C    mov         ecx,dword ptr [eax]
 0068868E    call        dword ptr [ecx+4]
 00688691    inc         dword ptr [esp]
 00688694    add         dword ptr [esp+14],4
 00688699    mov         eax,dword ptr [esp]
 0068869C    cmp         eax,dword ptr [esp+4]
>006886A0    jl          006885B9
 006886A6    test        ebp,ebp
>006886A8    jne         006886CB
 006886AA    mov         esi,dword ptr [esp+10]
 006886AE    mov         eax,ebx
 006886B0    call        dword ptr [esi+0C]
 006886B3    test        eax,eax
>006886B5    jne         006886BE
 006886B7    xor         eax,eax
>006886B9    jmp         006887C4
 006886BE    mov         edx,dword ptr [esp+10]
 006886C2    mov         eax,dword ptr [esp+10]
 006886C6    mov         ebp,dword ptr [eax+4]
 006886C9    mov         edi,dword ptr [edx]
 006886CB    xor         eax,eax
 006886CD    dec         ebp
 006886CE    mov         al,byte ptr [edi]
 006886D0    inc         edi
 006886D1    mov         dword ptr [esp+8],eax
 006886D5    test        ebp,ebp
 006886D7    mov         edx,dword ptr [esp+8]
 006886DB    mov         dword ptr [ebx+188],edx
>006886E1    jne         00688704
 006886E3    mov         esi,dword ptr [esp+10]
 006886E7    mov         eax,ebx
 006886E9    call        dword ptr [esi+0C]
 006886EC    test        eax,eax
>006886EE    jne         006886F7
 006886F0    xor         eax,eax
>006886F2    jmp         006887C4
 006886F7    mov         edx,dword ptr [esp+10]
 006886FB    mov         eax,dword ptr [esp+10]
 006886FF    mov         ebp,dword ptr [eax+4]
 00688702    mov         edi,dword ptr [edx]
 00688704    xor         eax,eax
 00688706    dec         ebp
 00688707    mov         al,byte ptr [edi]
 00688709    inc         edi
 0068870A    mov         dword ptr [esp+8],eax
 0068870E    test        ebp,ebp
 00688710    mov         edx,dword ptr [esp+8]
 00688714    mov         dword ptr [ebx+18C],edx
>0068871A    jne         0068873D
 0068871C    mov         esi,dword ptr [esp+10]
 00688720    mov         eax,ebx
 00688722    call        dword ptr [esi+0C]
 00688725    test        eax,eax
>00688727    jne         00688730
 00688729    xor         eax,eax
>0068872B    jmp         006887C4
 00688730    mov         edx,dword ptr [esp+10]
 00688734    mov         eax,dword ptr [esp+10]
 00688738    mov         ebp,dword ptr [eax+4]
 0068873B    mov         edi,dword ptr [edx]
 0068873D    dec         ebp
 0068873E    xor         eax,eax
 00688740    mov         al,byte ptr [edi]
 00688742    mov         dword ptr [esp+8],eax
 00688746    inc         edi
 00688747    mov         edx,dword ptr [esp+8]
 0068874B    sar         edx,4
 0068874E    and         edx,0F
 00688751    mov         dword ptr [ebx+190],edx
 00688757    mov         ecx,dword ptr [esp+8]
 0068875B    and         ecx,0F
 0068875E    mov         dword ptr [ebx+194],ecx
 00688764    mov         eax,dword ptr [ebx]
 00688766    add         eax,18
 00688769    mov         edx,dword ptr [ebx+188]
 0068876F    mov         dword ptr [eax],edx
 00688771    mov         ecx,dword ptr [ebx+18C]
 00688777    mov         dword ptr [eax+4],ecx
 0068877A    mov         edx,dword ptr [ebx+190]
 00688780    mov         dword ptr [eax+8],edx
 00688783    mov         ecx,dword ptr [ebx+194]
 00688789    mov         dword ptr [eax+0C],ecx
 0068878C    mov         eax,dword ptr [ebx]
 0068878E    mov         dword ptr [eax+14],68
 00688795    mov         edx,1
 0068879A    mov         eax,ebx
 0068879C    mov         ecx,dword ptr [eax]
 0068879E    call        dword ptr [ecx+4]
 006887A1    mov         eax,dword ptr [ebx+1B0]
 006887A7    xor         edx,edx
 006887A9    mov         dword ptr [eax+58],edx
 006887AC    inc         dword ptr [ebx+8C]
 006887B2    mov         ecx,dword ptr [esp+10]
 006887B6    mov         dword ptr [ecx],edi
 006887B8    mov         eax,dword ptr [esp+10]
 006887BC    mov         dword ptr [eax+4],ebp
 006887BF    mov         eax,1
 006887C4    add         esp,18
 006887C7    pop         ebp
 006887C8    pop         edi
 006887C9    pop         esi
 006887CA    pop         ebx
 006887CB    ret
end;*}

//00688C28
{*function sub_00688C28(?:?):?;
begin
 00688C28    push        ebx
 00688C29    push        esi
 00688C2A    push        edi
 00688C2B    push        ebp
 00688C2C    mov         ebx,eax
 00688C2E    add         esp,0FFFFFFF4
 00688C31    mov         eax,dword ptr [ebx+14]
 00688C34    mov         dword ptr [esp+8],eax
 00688C38    mov         eax,dword ptr [esp+8]
 00688C3C    mov         edx,dword ptr [esp+8]
 00688C40    mov         ebp,dword ptr [eax+4]
 00688C43    mov         edi,dword ptr [edx]
 00688C45    test        ebp,ebp
>00688C47    jne         00688C6A
 00688C49    mov         esi,dword ptr [esp+8]
 00688C4D    mov         eax,ebx
 00688C4F    call        dword ptr [esi+0C]
 00688C52    test        eax,eax
>00688C54    jne         00688C5D
 00688C56    xor         eax,eax
>00688C58    jmp         00688DB1
 00688C5D    mov         edx,dword ptr [esp+8]
 00688C61    mov         eax,dword ptr [esp+8]
 00688C65    mov         ebp,dword ptr [eax+4]
 00688C68    mov         edi,dword ptr [edx]
 00688C6A    xor         eax,eax
 00688C6C    dec         ebp
 00688C6D    mov         al,byte ptr [edi]
 00688C6F    inc         edi
 00688C70    shl         eax,8
 00688C73    test        ebp,ebp
 00688C75    mov         dword ptr [esp],eax
>00688C78    jne         00688C9B
 00688C7A    mov         esi,dword ptr [esp+8]
 00688C7E    mov         eax,ebx
 00688C80    call        dword ptr [esi+0C]
 00688C83    test        eax,eax
>00688C85    jne         00688C8E
 00688C87    xor         eax,eax
>00688C89    jmp         00688DB1
 00688C8E    mov         edx,dword ptr [esp+8]
 00688C92    mov         eax,dword ptr [esp+8]
 00688C96    mov         ebp,dword ptr [eax+4]
 00688C99    mov         edi,dword ptr [edx]
 00688C9B    dec         ebp
 00688C9C    xor         eax,eax
 00688C9E    mov         al,byte ptr [edi]
 00688CA0    add         dword ptr [esp],eax
 00688CA3    inc         edi
 00688CA4    sub         dword ptr [esp],2
 00688CA8    cmp         dword ptr [esp],0
>00688CAC    jle         00688D9F
 00688CB2    test        ebp,ebp
>00688CB4    jne         00688CD7
 00688CB6    mov         esi,dword ptr [esp+8]
 00688CBA    mov         eax,ebx
 00688CBC    call        dword ptr [esi+0C]
 00688CBF    test        eax,eax
>00688CC1    jne         00688CCA
 00688CC3    xor         eax,eax
>00688CC5    jmp         00688DB1
 00688CCA    mov         edx,dword ptr [esp+8]
 00688CCE    mov         eax,dword ptr [esp+8]
 00688CD2    mov         ebp,dword ptr [eax+4]
 00688CD5    mov         edi,dword ptr [edx]
 00688CD7    movzx       esi,byte ptr [edi]
 00688CDA    inc         edi
 00688CDB    dec         ebp
 00688CDC    test        ebp,ebp
>00688CDE    jne         00688D01
 00688CE0    mov         edi,dword ptr [esp+8]
 00688CE4    mov         eax,ebx
 00688CE6    call        dword ptr [edi+0C]
 00688CE9    test        eax,eax
>00688CEB    jne         00688CF4
 00688CED    xor         eax,eax
>00688CEF    jmp         00688DB1
 00688CF4    mov         edx,dword ptr [esp+8]
 00688CF8    mov         eax,dword ptr [esp+8]
 00688CFC    mov         ebp,dword ptr [eax+4]
 00688CFF    mov         edi,dword ptr [edx]
 00688D01    xor         eax,eax
 00688D03    dec         ebp
 00688D04    mov         al,byte ptr [edi]
 00688D06    inc         edi
 00688D07    mov         dword ptr [esp+4],eax
 00688D0B    sub         dword ptr [esp],2
 00688D0F    mov         eax,dword ptr [ebx]
 00688D11    mov         dword ptr [eax+14],4E
 00688D18    mov         dword ptr [eax+18],esi
 00688D1B    mov         edx,dword ptr [esp+4]
 00688D1F    mov         dword ptr [eax+1C],edx
 00688D22    mov         eax,ebx
 00688D24    mov         edx,1
 00688D29    mov         ecx,dword ptr [eax]
 00688D2B    call        dword ptr [ecx+4]
 00688D2E    test        esi,esi
>00688D30    jl          00688D37
 00688D32    cmp         esi,20
>00688D35    jl          00688D49
 00688D37    mov         eax,dword ptr [ebx]
 00688D39    mov         dword ptr [eax+14],1A
 00688D40    mov         dword ptr [eax+18],esi
 00688D43    mov         eax,ebx
 00688D45    mov         edx,dword ptr [eax]
 00688D47    call        dword ptr [edx]
 00688D49    cmp         esi,10
>00688D4C    jl          00688D5B
 00688D4E    mov         cl,byte ptr [esp+4]
 00688D52    mov         byte ptr [ebx+esi+0F0],cl
>00688D59    jmp         00688D95
 00688D5B    mov         al,byte ptr [esp+4]
 00688D5F    and         al,0F
 00688D61    mov         byte ptr [ebx+esi+0E0],al
 00688D68    mov         eax,dword ptr [esp+4]
 00688D6C    sar         eax,4
 00688D6F    mov         byte ptr [ebx+esi+0F0],al
 00688D76    cmp         al,byte ptr [ebx+esi+0E0]
>00688D7D    jae         00688D95
 00688D7F    mov         eax,dword ptr [ebx]
 00688D81    mov         dword ptr [eax+14],1B
 00688D88    mov         edx,dword ptr [esp+4]
 00688D8C    mov         dword ptr [eax+18],edx
 00688D8F    mov         eax,ebx
 00688D91    mov         edx,dword ptr [eax]
 00688D93    call        dword ptr [edx]
 00688D95    cmp         dword ptr [esp],0
>00688D99    jg          00688CB2
 00688D9F    mov         ecx,dword ptr [esp+8]
 00688DA3    mov         dword ptr [ecx],edi
 00688DA5    mov         eax,dword ptr [esp+8]
 00688DA9    mov         dword ptr [eax+4],ebp
 00688DAC    mov         eax,1
 00688DB1    add         esp,0C
 00688DB4    pop         ebp
 00688DB5    pop         edi
 00688DB6    pop         esi
 00688DB7    pop         ebx
 00688DB8    ret
end;*}

//00688DBC
{*function sub_00688DBC(?:?):?;
begin
 00688DBC    push        ebx
 00688DBD    push        esi
 00688DBE    push        edi
 00688DBF    push        ebp
 00688DC0    mov         edi,eax
 00688DC2    add         esp,0FFFFFED4
 00688DC8    mov         eax,dword ptr [edi+14]
 00688DCB    mov         dword ptr [esp+0C],eax
 00688DCF    mov         eax,dword ptr [esp+0C]
 00688DD3    mov         edx,dword ptr [esp+0C]
 00688DD7    mov         esi,dword ptr [eax+4]
 00688DDA    mov         ebx,dword ptr [edx]
 00688DDC    test        esi,esi
>00688DDE    jne         00688E01
 00688DE0    mov         ebx,dword ptr [esp+0C]
 00688DE4    mov         eax,edi
 00688DE6    call        dword ptr [ebx+0C]
 00688DE9    test        eax,eax
>00688DEB    jne         00688DF4
 00688DED    xor         eax,eax
>00688DEF    jmp         006890CE
 00688DF4    mov         edx,dword ptr [esp+0C]
 00688DF8    mov         eax,dword ptr [esp+0C]
 00688DFC    mov         esi,dword ptr [eax+4]
 00688DFF    mov         ebx,dword ptr [edx]
 00688E01    xor         eax,eax
 00688E03    dec         esi
 00688E04    mov         al,byte ptr [ebx]
 00688E06    inc         ebx
 00688E07    shl         eax,8
 00688E0A    test        esi,esi
 00688E0C    mov         dword ptr [esp],eax
>00688E0F    jne         00688E32
 00688E11    mov         ebx,dword ptr [esp+0C]
 00688E15    mov         eax,edi
 00688E17    call        dword ptr [ebx+0C]
 00688E1A    test        eax,eax
>00688E1C    jne         00688E25
 00688E1E    xor         eax,eax
>00688E20    jmp         006890CE
 00688E25    mov         edx,dword ptr [esp+0C]
 00688E29    mov         eax,dword ptr [esp+0C]
 00688E2D    mov         esi,dword ptr [eax+4]
 00688E30    mov         ebx,dword ptr [edx]
 00688E32    dec         esi
 00688E33    xor         eax,eax
 00688E35    mov         al,byte ptr [ebx]
 00688E37    add         dword ptr [esp],eax
 00688E3A    inc         ebx
 00688E3B    sub         dword ptr [esp],2
 00688E3F    cmp         dword ptr [esp],0
>00688E43    jle         006890BC
 00688E49    test        esi,esi
>00688E4B    jne         00688E6E
 00688E4D    mov         ebx,dword ptr [esp+0C]
 00688E51    mov         eax,edi
 00688E53    call        dword ptr [ebx+0C]
 00688E56    test        eax,eax
>00688E58    jne         00688E61
 00688E5A    xor         eax,eax
>00688E5C    jmp         006890CE
 00688E61    mov         edx,dword ptr [esp+0C]
 00688E65    mov         eax,dword ptr [esp+0C]
 00688E69    mov         esi,dword ptr [eax+4]
 00688E6C    mov         ebx,dword ptr [edx]
 00688E6E    xor         eax,eax
 00688E70    dec         esi
 00688E71    mov         al,byte ptr [ebx]
 00688E73    inc         ebx
 00688E74    mov         dword ptr [esp+4],eax
 00688E78    mov         eax,dword ptr [edi]
 00688E7A    mov         dword ptr [eax+14],4F
 00688E81    mov         edx,dword ptr [esp+4]
 00688E85    mov         dword ptr [eax+18],edx
 00688E88    mov         eax,edi
 00688E8A    mov         edx,1
 00688E8F    mov         ecx,dword ptr [eax]
 00688E91    call        dword ptr [ecx+4]
 00688E94    mov         byte ptr [esp+18],0
 00688E99    xor         eax,eax
 00688E9B    mov         ebp,1
 00688EA0    mov         dword ptr [esp+8],eax
 00688EA4    lea         eax,[esp+19]
 00688EA8    mov         dword ptr [esp+10],eax
 00688EAC    test        esi,esi
>00688EAE    jne         00688ED1
 00688EB0    mov         ebx,dword ptr [esp+0C]
 00688EB4    mov         eax,edi
 00688EB6    call        dword ptr [ebx+0C]
 00688EB9    test        eax,eax
>00688EBB    jne         00688EC4
 00688EBD    xor         eax,eax
>00688EBF    jmp         006890CE
 00688EC4    mov         edx,dword ptr [esp+0C]
 00688EC8    mov         eax,dword ptr [esp+0C]
 00688ECC    mov         esi,dword ptr [eax+4]
 00688ECF    mov         ebx,dword ptr [edx]
 00688ED1    mov         edx,dword ptr [esp+10]
 00688ED5    mov         al,byte ptr [ebx]
 00688ED7    xor         ecx,ecx
 00688ED9    inc         ebx
 00688EDA    mov         cl,al
 00688EDC    mov         byte ptr [edx],al
 00688EDE    add         dword ptr [esp+8],ecx
 00688EE2    inc         dword ptr [esp+10]
 00688EE6    dec         esi
 00688EE7    inc         ebp
 00688EE8    cmp         ebp,10
>00688EEB    jle         00688EAC
 00688EED    sub         dword ptr [esp],11
 00688EF1    mov         eax,dword ptr [edi]
 00688EF3    add         eax,18
 00688EF6    xor         edx,edx
 00688EF8    mov         dl,byte ptr [esp+19]
 00688EFC    mov         dword ptr [eax],edx
 00688EFE    xor         ecx,ecx
 00688F00    mov         cl,byte ptr [esp+1A]
 00688F04    mov         dword ptr [eax+4],ecx
 00688F07    xor         edx,edx
 00688F09    mov         dl,byte ptr [esp+1B]
 00688F0D    mov         dword ptr [eax+8],edx
 00688F10    xor         ecx,ecx
 00688F12    mov         cl,byte ptr [esp+1C]
 00688F16    mov         dword ptr [eax+0C],ecx
 00688F19    xor         edx,edx
 00688F1B    mov         dl,byte ptr [esp+1D]
 00688F1F    mov         dword ptr [eax+10],edx
 00688F22    xor         ecx,ecx
 00688F24    mov         cl,byte ptr [esp+1E]
 00688F28    mov         dword ptr [eax+14],ecx
 00688F2B    xor         edx,edx
 00688F2D    mov         dl,byte ptr [esp+1F]
 00688F31    mov         dword ptr [eax+18],edx
 00688F34    xor         ecx,ecx
 00688F36    mov         cl,byte ptr [esp+20]
 00688F3A    mov         dword ptr [eax+1C],ecx
 00688F3D    mov         eax,dword ptr [edi]
 00688F3F    mov         dword ptr [eax+14],55
 00688F46    mov         edx,2
 00688F4B    mov         eax,edi
 00688F4D    mov         ecx,dword ptr [eax]
 00688F4F    call        dword ptr [ecx+4]
 00688F52    mov         eax,dword ptr [edi]
 00688F54    add         eax,18
 00688F57    xor         edx,edx
 00688F59    mov         dl,byte ptr [esp+21]
 00688F5D    mov         dword ptr [eax],edx
 00688F5F    xor         ecx,ecx
 00688F61    mov         cl,byte ptr [esp+22]
 00688F65    mov         dword ptr [eax+4],ecx
 00688F68    xor         edx,edx
 00688F6A    mov         dl,byte ptr [esp+23]
 00688F6E    mov         dword ptr [eax+8],edx
 00688F71    xor         ecx,ecx
 00688F73    mov         cl,byte ptr [esp+24]
 00688F77    mov         dword ptr [eax+0C],ecx
 00688F7A    xor         edx,edx
 00688F7C    mov         dl,byte ptr [esp+25]
 00688F80    mov         dword ptr [eax+10],edx
 00688F83    xor         ecx,ecx
 00688F85    mov         cl,byte ptr [esp+26]
 00688F89    mov         dword ptr [eax+14],ecx
 00688F8C    xor         edx,edx
 00688F8E    mov         dl,byte ptr [esp+27]
 00688F92    mov         dword ptr [eax+18],edx
 00688F95    xor         ecx,ecx
 00688F97    mov         cl,byte ptr [esp+28]
 00688F9B    mov         dword ptr [eax+1C],ecx
 00688F9E    mov         eax,dword ptr [edi]
 00688FA0    mov         dword ptr [eax+14],55
 00688FA7    mov         edx,2
 00688FAC    mov         eax,edi
 00688FAE    mov         ecx,dword ptr [eax]
 00688FB0    call        dword ptr [ecx+4]
 00688FB3    cmp         dword ptr [esp+8],100
>00688FBB    jg          00688FC6
 00688FBD    mov         eax,dword ptr [esp+8]
 00688FC1    cmp         eax,dword ptr [esp]
>00688FC4    jle         00688FD5
 00688FC6    mov         edx,dword ptr [edi]
 00688FC8    mov         eax,edi
 00688FCA    mov         dword ptr [edx+14],1C
 00688FD1    mov         edx,dword ptr [eax]
 00688FD3    call        dword ptr [edx]
 00688FD5    xor         ebp,ebp
 00688FD7    lea         eax,[esp+2C]
 00688FDB    mov         dword ptr [esp+14],eax
 00688FDF    cmp         ebp,dword ptr [esp+8]
>00688FE3    jge         0068901F
 00688FE5    test        esi,esi
>00688FE7    jne         0068900A
 00688FE9    mov         ebx,dword ptr [esp+0C]
 00688FED    mov         eax,edi
 00688FEF    call        dword ptr [ebx+0C]
 00688FF2    test        eax,eax
>00688FF4    jne         00688FFD
 00688FF6    xor         eax,eax
>00688FF8    jmp         006890CE
 00688FFD    mov         edx,dword ptr [esp+0C]
 00689001    mov         eax,dword ptr [esp+0C]
 00689005    mov         esi,dword ptr [eax+4]
 00689008    mov         ebx,dword ptr [edx]
 0068900A    dec         esi
 0068900B    mov         eax,dword ptr [esp+14]
 0068900F    mov         dl,byte ptr [ebx]
 00689011    mov         byte ptr [eax],dl
 00689013    inc         ebx
 00689014    inc         ebp
 00689015    inc         dword ptr [esp+14]
 00689019    cmp         ebp,dword ptr [esp+8]
>0068901D    jl          00688FE5
 0068901F    mov         ecx,dword ptr [esp+8]
 00689023    sub         dword ptr [esp],ecx
 00689026    test        byte ptr [esp+4],10
>0068902B    je          00689043
 0068902D    sub         dword ptr [esp+4],10
 00689032    mov         ebp,dword ptr [esp+4]
 00689036    shl         ebp,2
 00689039    add         ebp,edi
 0068903B    add         ebp,0C0
>00689041    jmp         00689052
 00689043    mov         ebp,dword ptr [esp+4]
 00689047    shl         ebp,2
 0068904A    add         ebp,edi
 0068904C    add         ebp,0B0
 00689052    cmp         dword ptr [esp+4],0
>00689057    jl          00689060
 00689059    cmp         dword ptr [esp+4],4
>0068905E    jl          00689076
 00689060    mov         eax,dword ptr [edi]
 00689062    mov         dword ptr [eax+14],1D
 00689069    mov         edx,dword ptr [esp+4]
 0068906D    mov         dword ptr [eax+18],edx
 00689070    mov         eax,edi
 00689072    mov         edx,dword ptr [eax]
 00689074    call        dword ptr [edx]
 00689076    cmp         dword ptr [ebp],0
>0068907A    jne         00689086
 0068907C    mov         eax,edi
 0068907E    call        @jpeg_alloc_huff_table
 00689083    mov         dword ptr [ebp],eax
 00689086    push        11
 00689088    lea         edx,[esp+1C]
 0068908C    push        edx
 0068908D    mov         ecx,dword ptr [ebp]
 00689090    push        ecx
 00689091    call        _memcpy
 00689096    add         esp,0C
 00689099    push        100
 0068909E    lea         eax,[esp+30]
 006890A2    push        eax
 006890A3    mov         edx,dword ptr [ebp]
 006890A6    add         edx,11
 006890A9    push        edx
 006890AA    call        _memcpy
 006890AF    add         esp,0C
 006890B2    cmp         dword ptr [esp],0
>006890B6    jg          00688E49
 006890BC    mov         ecx,dword ptr [esp+0C]
 006890C0    mov         dword ptr [ecx],ebx
 006890C2    mov         eax,dword ptr [esp+0C]
 006890C6    mov         dword ptr [eax+4],esi
 006890C9    mov         eax,1
 006890CE    add         esp,12C
 006890D4    pop         ebp
 006890D5    pop         edi
 006890D6    pop         esi
 006890D7    pop         ebx
 006890D8    ret
end;*}

//006890DC
{*function sub_006890DC(?:?):?;
begin
 006890DC    push        ebx
 006890DD    push        esi
 006890DE    push        edi
 006890DF    push        ebp
 006890E0    mov         ebp,eax
 006890E2    add         esp,0FFFFFFE8
 006890E5    mov         eax,dword ptr [ebp+14]
 006890E8    mov         dword ptr [esp+10],eax
 006890EC    mov         eax,dword ptr [esp+10]
 006890F0    mov         edx,dword ptr [esp+10]
 006890F4    mov         edi,dword ptr [eax+4]
 006890F7    mov         esi,dword ptr [edx]
 006890F9    test        edi,edi
>006890FB    jne         0068911E
 006890FD    mov         ebx,dword ptr [esp+10]
 00689101    mov         eax,ebp
 00689103    call        dword ptr [ebx+0C]
 00689106    test        eax,eax
>00689108    jne         00689111
 0068910A    xor         eax,eax
>0068910C    jmp         00689358
 00689111    mov         edx,dword ptr [esp+10]
 00689115    mov         eax,dword ptr [esp+10]
 00689119    mov         edi,dword ptr [eax+4]
 0068911C    mov         esi,dword ptr [edx]
 0068911E    xor         eax,eax
 00689120    dec         edi
 00689121    mov         al,byte ptr [esi]
 00689123    inc         esi
 00689124    shl         eax,8
 00689127    test        edi,edi
 00689129    mov         dword ptr [esp],eax
>0068912C    jne         0068914F
 0068912E    mov         ebx,dword ptr [esp+10]
 00689132    mov         eax,ebp
 00689134    call        dword ptr [ebx+0C]
 00689137    test        eax,eax
>00689139    jne         00689142
 0068913B    xor         eax,eax
>0068913D    jmp         00689358
 00689142    mov         edx,dword ptr [esp+10]
 00689146    mov         eax,dword ptr [esp+10]
 0068914A    mov         edi,dword ptr [eax+4]
 0068914D    mov         esi,dword ptr [edx]
 0068914F    dec         edi
 00689150    xor         eax,eax
 00689152    mov         al,byte ptr [esi]
 00689154    add         dword ptr [esp],eax
 00689157    inc         esi
 00689158    sub         dword ptr [esp],2
 0068915C    cmp         dword ptr [esp],0
>00689160    jle         00689346
 00689166    test        edi,edi
>00689168    jne         0068918B
 0068916A    mov         ebx,dword ptr [esp+10]
 0068916E    mov         eax,ebp
 00689170    call        dword ptr [ebx+0C]
 00689173    test        eax,eax
>00689175    jne         0068917E
 00689177    xor         eax,eax
>00689179    jmp         00689358
 0068917E    mov         edx,dword ptr [esp+10]
 00689182    mov         eax,dword ptr [esp+10]
 00689186    mov         edi,dword ptr [eax+4]
 00689189    mov         esi,dword ptr [edx]
 0068918B    xor         ebx,ebx
 0068918D    dec         edi
 0068918E    mov         bl,byte ptr [esi]
 00689190    inc         esi
 00689191    mov         eax,ebx
 00689193    sar         eax,4
 00689196    and         ebx,0F
 00689199    mov         dword ptr [esp+8],eax
 0068919D    mov         eax,dword ptr [ebp]
 006891A0    mov         dword ptr [eax+14],50
 006891A7    mov         dword ptr [eax+18],ebx
 006891AA    mov         edx,dword ptr [esp+8]
 006891AE    mov         dword ptr [eax+1C],edx
 006891B1    mov         eax,ebp
 006891B3    mov         edx,1
 006891B8    mov         ecx,dword ptr [eax]
 006891BA    call        dword ptr [ecx+4]
 006891BD    cmp         ebx,4
>006891C0    jl          006891D5
 006891C2    mov         eax,dword ptr [ebp]
 006891C5    mov         dword ptr [eax+14],1E
 006891CC    mov         dword ptr [eax+18],ebx
 006891CF    mov         eax,ebp
 006891D1    mov         edx,dword ptr [eax]
 006891D3    call        dword ptr [edx]
 006891D5    cmp         dword ptr [ebp+ebx*4+0A0],0
>006891DD    jne         006891ED
 006891DF    mov         eax,ebp
 006891E1    call        @jpeg_alloc_quant_table
 006891E6    mov         dword ptr [ebp+ebx*4+0A0],eax
 006891ED    mov         edx,dword ptr [ebp+ebx*4+0A0]
 006891F4    xor         ecx,ecx
 006891F6    mov         dword ptr [esp+0C],edx
 006891FA    mov         dword ptr [esp+4],ecx
 006891FE    mov         dword ptr [esp+14],6E9580
 00689206    cmp         dword ptr [esp+8],0
>0068920B    je          0068926A
 0068920D    test        edi,edi
>0068920F    jne         00689232
 00689211    mov         ebx,dword ptr [esp+10]
 00689215    mov         eax,ebp
 00689217    call        dword ptr [ebx+0C]
 0068921A    test        eax,eax
>0068921C    jne         00689225
 0068921E    xor         eax,eax
>00689220    jmp         00689358
 00689225    mov         edx,dword ptr [esp+10]
 00689229    mov         eax,dword ptr [esp+10]
 0068922D    mov         edi,dword ptr [eax+4]
 00689230    mov         esi,dword ptr [edx]
 00689232    dec         edi
 00689233    xor         ebx,ebx
 00689235    mov         bl,byte ptr [esi]
 00689237    shl         ebx,8
 0068923A    inc         esi
 0068923B    test        edi,edi
>0068923D    jne         00689260
 0068923F    mov         esi,dword ptr [esp+10]
 00689243    mov         eax,ebp
 00689245    call        dword ptr [esi+0C]
 00689248    test        eax,eax
>0068924A    jne         00689253
 0068924C    xor         eax,eax
>0068924E    jmp         00689358
 00689253    mov         edx,dword ptr [esp+10]
 00689257    mov         eax,dword ptr [esp+10]
 0068925B    mov         edi,dword ptr [eax+4]
 0068925E    mov         esi,dword ptr [edx]
 00689260    dec         edi
 00689261    xor         eax,eax
 00689263    mov         al,byte ptr [esi]
 00689265    add         ebx,eax
 00689267    inc         esi
>00689268    jmp         00689295
 0068926A    test        edi,edi
>0068926C    jne         0068928F
 0068926E    mov         ebx,dword ptr [esp+10]
 00689272    mov         eax,ebp
 00689274    call        dword ptr [ebx+0C]
 00689277    test        eax,eax
>00689279    jne         00689282
 0068927B    xor         eax,eax
>0068927D    jmp         00689358
 00689282    mov         edx,dword ptr [esp+10]
 00689286    mov         eax,dword ptr [esp+10]
 0068928A    mov         edi,dword ptr [eax+4]
 0068928D    mov         esi,dword ptr [edx]
 0068928F    dec         edi
 00689290    xor         ebx,ebx
 00689292    mov         bl,byte ptr [esi]
 00689294    inc         esi
 00689295    mov         eax,dword ptr [esp+14]
 00689299    mov         edx,dword ptr [eax]
 0068929B    mov         ecx,dword ptr [esp+0C]
 0068929F    mov         word ptr [ecx+edx*2],bx
 006892A3    inc         dword ptr [esp+4]
 006892A7    add         dword ptr [esp+14],4
 006892AC    cmp         dword ptr [esp+4],40
>006892B1    jl          00689206
 006892B7    mov         eax,dword ptr [ebp]
 006892BA    cmp         dword ptr [eax+68],2
>006892BE    jl          0068932D
 006892C0    xor         edx,edx
 006892C2    mov         dword ptr [esp+4],edx
 006892C6    mov         ecx,dword ptr [esp+0C]
 006892CA    mov         ebx,ecx
 006892CC    mov         eax,dword ptr [ebp]
 006892CF    add         eax,18
 006892D2    movzx       edx,word ptr [ebx]
 006892D5    mov         dword ptr [eax],edx
 006892D7    movzx       ecx,word ptr [ebx+2]
 006892DB    mov         dword ptr [eax+4],ecx
 006892DE    movzx       edx,word ptr [ebx+4]
 006892E2    mov         dword ptr [eax+8],edx
 006892E5    movzx       ecx,word ptr [ebx+6]
 006892E9    mov         dword ptr [eax+0C],ecx
 006892EC    movzx       edx,word ptr [ebx+8]
 006892F0    mov         dword ptr [eax+10],edx
 006892F3    movzx       ecx,word ptr [ebx+0A]
 006892F7    mov         dword ptr [eax+14],ecx
 006892FA    movzx       edx,word ptr [ebx+0C]
 006892FE    mov         dword ptr [eax+18],edx
 00689301    movzx       ecx,word ptr [ebx+0E]
 00689305    mov         dword ptr [eax+1C],ecx
 00689308    mov         eax,dword ptr [ebp]
 0068930B    mov         dword ptr [eax+14],5C
 00689312    mov         edx,2
 00689317    mov         eax,ebp
 00689319    mov         ecx,dword ptr [eax]
 0068931B    call        dword ptr [ecx+4]
 0068931E    add         dword ptr [esp+4],8
 00689323    add         ebx,10
 00689326    cmp         dword ptr [esp+4],40
>0068932B    jl          006892CC
 0068932D    sub         dword ptr [esp],41
 00689331    cmp         dword ptr [esp+8],0
>00689336    je          0068933C
 00689338    sub         dword ptr [esp],40
 0068933C    cmp         dword ptr [esp],0
>00689340    jg          00689166
 00689346    mov         eax,dword ptr [esp+10]
 0068934A    mov         dword ptr [eax],esi
 0068934C    mov         eax,1
 00689351    mov         edx,dword ptr [esp+10]
 00689355    mov         dword ptr [edx+4],edi
 00689358    add         esp,18
 0068935B    pop         ebp
 0068935C    pop         edi
 0068935D    pop         esi
 0068935E    pop         ebx
 0068935F    ret
end;*}

//00689360
{*function sub_00689360(?:?):?;
begin
 00689360    push        ebx
 00689361    push        esi
 00689362    push        edi
 00689363    push        ebp
 00689364    add         esp,0FFFFFFF8
 00689367    mov         ebp,eax
 00689369    mov         edi,dword ptr [ebp+14]
 0068936C    mov         ebx,dword ptr [edi]
 0068936E    mov         esi,dword ptr [edi+4]
 00689371    test        esi,esi
>00689373    jne         0068938A
 00689375    mov         eax,ebp
 00689377    call        dword ptr [edi+0C]
 0068937A    test        eax,eax
>0068937C    jne         00689385
 0068937E    xor         eax,eax
>00689380    jmp         00689442
 00689385    mov         ebx,dword ptr [edi]
 00689387    mov         esi,dword ptr [edi+4]
 0068938A    xor         eax,eax
 0068938C    dec         esi
 0068938D    mov         al,byte ptr [ebx]
 0068938F    inc         ebx
 00689390    shl         eax,8
 00689393    test        esi,esi
 00689395    mov         dword ptr [esp],eax
>00689398    jne         006893AF
 0068939A    mov         eax,ebp
 0068939C    call        dword ptr [edi+0C]
 0068939F    test        eax,eax
>006893A1    jne         006893AA
 006893A3    xor         eax,eax
>006893A5    jmp         00689442
 006893AA    mov         ebx,dword ptr [edi]
 006893AC    mov         esi,dword ptr [edi+4]
 006893AF    dec         esi
 006893B0    xor         eax,eax
 006893B2    mov         al,byte ptr [ebx]
 006893B4    add         dword ptr [esp],eax
 006893B7    inc         ebx
 006893B8    cmp         dword ptr [esp],4
>006893BC    je          006893CE
 006893BE    mov         edx,dword ptr [ebp]
 006893C1    mov         eax,ebp
 006893C3    mov         dword ptr [edx+14],9
 006893CA    mov         edx,dword ptr [eax]
 006893CC    call        dword ptr [edx]
 006893CE    test        esi,esi
>006893D0    jne         006893E4
 006893D2    mov         eax,ebp
 006893D4    call        dword ptr [edi+0C]
 006893D7    test        eax,eax
>006893D9    jne         006893DF
 006893DB    xor         eax,eax
>006893DD    jmp         00689442
 006893DF    mov         ebx,dword ptr [edi]
 006893E1    mov         esi,dword ptr [edi+4]
 006893E4    xor         eax,eax
 006893E6    dec         esi
 006893E7    mov         al,byte ptr [ebx]
 006893E9    inc         ebx
 006893EA    shl         eax,8
 006893ED    test        esi,esi
 006893EF    mov         dword ptr [esp+4],eax
>006893F3    jne         00689407
 006893F5    mov         eax,ebp
 006893F7    call        dword ptr [edi+0C]
 006893FA    test        eax,eax
>006893FC    jne         00689402
 006893FE    xor         eax,eax
>00689400    jmp         00689442
 00689402    mov         ebx,dword ptr [edi]
 00689404    mov         esi,dword ptr [edi+4]
 00689407    xor         eax,eax
 00689409    dec         esi
 0068940A    mov         al,byte ptr [ebx]
 0068940C    add         dword ptr [esp+4],eax
 00689410    inc         ebx
 00689411    mov         eax,dword ptr [ebp]
 00689414    mov         dword ptr [eax+14],51
 0068941B    mov         edx,dword ptr [esp+4]
 0068941F    mov         dword ptr [eax+18],edx
 00689422    mov         eax,ebp
 00689424    mov         edx,1
 00689429    mov         ecx,dword ptr [eax]
 0068942B    call        dword ptr [ecx+4]
 0068942E    mov         eax,dword ptr [esp+4]
 00689432    mov         dword ptr [ebp+110],eax
 00689438    mov         dword ptr [edi],ebx
 0068943A    mov         dword ptr [edi+4],esi
 0068943D    mov         eax,1
 00689442    pop         ecx
 00689443    pop         edx
 00689444    pop         ebp
 00689445    pop         edi
 00689446    pop         esi
 00689447    pop         ebx
 00689448    ret
end;*}

//0068944C
{*function sub_0068944C(?:?):?;
begin
 0068944C    push        ebx
 0068944D    push        esi
 0068944E    push        edi
 0068944F    mov         esi,eax
 00689451    push        ebp
 00689452    push        ecx
 00689453    mov         ebx,dword ptr [esi+14]
 00689456    mov         ebp,dword ptr [ebx+4]
 00689459    mov         edi,dword ptr [ebx]
 0068945B    test        ebp,ebp
>0068945D    jne         00689471
 0068945F    mov         eax,esi
 00689461    call        dword ptr [ebx+0C]
 00689464    test        eax,eax
>00689466    jne         0068946C
 00689468    xor         eax,eax
>0068946A    jmp         006894D8
 0068946C    mov         edi,dword ptr [ebx]
 0068946E    mov         ebp,dword ptr [ebx+4]
 00689471    xor         eax,eax
 00689473    dec         ebp
 00689474    mov         al,byte ptr [edi]
 00689476    inc         edi
 00689477    shl         eax,8
 0068947A    test        ebp,ebp
 0068947C    mov         dword ptr [esp],eax
>0068947F    jne         00689493
 00689481    mov         eax,esi
 00689483    call        dword ptr [ebx+0C]
 00689486    test        eax,eax
>00689488    jne         0068948E
 0068948A    xor         eax,eax
>0068948C    jmp         006894D8
 0068948E    mov         edi,dword ptr [ebx]
 00689490    mov         ebp,dword ptr [ebx+4]
 00689493    xor         eax,eax
 00689495    dec         ebp
 00689496    mov         al,byte ptr [edi]
 00689498    add         dword ptr [esp],eax
 0068949B    inc         edi
 0068949C    mov         eax,dword ptr [esi]
 0068949E    mov         dword ptr [eax+14],5A
 006894A5    mov         edx,dword ptr [esi+198]
 006894AB    mov         dword ptr [eax+18],edx
 006894AE    mov         edx,1
 006894B3    mov         ecx,dword ptr [esp]
 006894B6    mov         dword ptr [eax+1C],ecx
 006894B9    mov         eax,esi
 006894BB    mov         ecx,dword ptr [eax]
 006894BD    call        dword ptr [ecx+4]
 006894C0    mov         eax,esi
 006894C2    mov         dword ptr [ebx],edi
 006894C4    mov         dword ptr [ebx+4],ebp
 006894C7    mov         ecx,dword ptr [eax+14]
 006894CA    mov         edx,dword ptr [esp]
 006894CD    add         edx,0FFFFFFFE
 006894D0    call        dword ptr [ecx+10]
 006894D3    mov         eax,1
 006894D8    pop         edx
 006894D9    pop         ebp
 006894DA    pop         edi
 006894DB    pop         esi
 006894DC    pop         ebx
 006894DD    ret
end;*}

//006894E0
{*function sub_006894E0(?:?):?;
begin
 006894E0    push        ebx
 006894E1    push        esi
 006894E2    push        edi
 006894E3    push        ebp
 006894E4    push        ecx
 006894E5    mov         dword ptr [esp],eax
 006894E8    mov         eax,dword ptr [esp]
 006894EB    mov         edi,dword ptr [eax+14]
 006894EE    mov         ebx,dword ptr [edi]
 006894F0    mov         esi,dword ptr [edi+4]
 006894F3    test        esi,esi
>006894F5    jne         0068950D
 006894F7    mov         eax,dword ptr [esp]
 006894FA    call        dword ptr [edi+0C]
 006894FD    test        eax,eax
>006894FF    jne         00689508
 00689501    xor         eax,eax
>00689503    jmp         006895ED
 00689508    mov         ebx,dword ptr [edi]
 0068950A    mov         esi,dword ptr [edi+4]
 0068950D    movzx       ebp,byte ptr [ebx]
 00689510    inc         ebx
 00689511    dec         esi
 00689512    cmp         ebp,0FF
>00689518    je          00689552
 0068951A    mov         eax,dword ptr [esp]
 0068951D    mov         edx,dword ptr [eax+1B0]
 00689523    inc         dword ptr [edx+5C]
 00689526    mov         dword ptr [edi],ebx
 00689528    mov         dword ptr [edi+4],esi
 0068952B    test        esi,esi
>0068952D    jne         00689545
 0068952F    mov         eax,dword ptr [esp]
 00689532    call        dword ptr [edi+0C]
 00689535    test        eax,eax
>00689537    jne         00689540
 00689539    xor         eax,eax
>0068953B    jmp         006895ED
 00689540    mov         ebx,dword ptr [edi]
 00689542    mov         esi,dword ptr [edi+4]
 00689545    movzx       ebp,byte ptr [ebx]
 00689548    inc         ebx
 00689549    dec         esi
 0068954A    cmp         ebp,0FF
>00689550    jne         0068951A
 00689552    test        esi,esi
>00689554    jne         0068956C
 00689556    mov         eax,dword ptr [esp]
 00689559    call        dword ptr [edi+0C]
 0068955C    test        eax,eax
>0068955E    jne         00689567
 00689560    xor         eax,eax
>00689562    jmp         006895ED
 00689567    mov         ebx,dword ptr [edi]
 00689569    mov         esi,dword ptr [edi+4]
 0068956C    movzx       ebp,byte ptr [ebx]
 0068956F    inc         ebx
 00689570    dec         esi
 00689571    cmp         ebp,0FF
>00689577    je          00689552
 00689579    test        ebp,ebp
>0068957B    jne         00689594
 0068957D    mov         eax,dword ptr [esp]
 00689580    mov         edx,dword ptr [eax+1B0]
 00689586    add         dword ptr [edx+5C],2
 0068958A    mov         dword ptr [edi],ebx
 0068958C    mov         dword ptr [edi+4],esi
>0068958F    jmp         006894F3
 00689594    mov         ecx,dword ptr [esp]
 00689597    mov         eax,dword ptr [ecx+1B0]
 0068959D    cmp         dword ptr [eax+5C],0
>006895A1    je          006895DA
 006895A3    mov         edx,dword ptr [esp]
 006895A6    mov         eax,dword ptr [edx]
 006895A8    mov         dword ptr [eax+14],70
 006895AF    mov         edx,dword ptr [esp]
 006895B2    mov         ecx,dword ptr [edx+1B0]
 006895B8    mov         edx,dword ptr [ecx+5C]
 006895BB    mov         dword ptr [eax+18],edx
 006895BE    mov         dword ptr [eax+1C],ebp
 006895C1    or          edx,0FFFFFFFF
 006895C4    mov         eax,dword ptr [esp]
 006895C7    mov         ecx,dword ptr [eax]
 006895C9    call        dword ptr [ecx+4]
 006895CC    mov         eax,dword ptr [esp]
 006895CF    mov         edx,dword ptr [eax+1B0]
 006895D5    xor         ecx,ecx
 006895D7    mov         dword ptr [edx+5C],ecx
 006895DA    mov         eax,dword ptr [esp]
 006895DD    mov         dword ptr [eax+198],ebp
 006895E3    mov         dword ptr [edi],ebx
 006895E5    mov         dword ptr [edi+4],esi
 006895E8    mov         eax,1
 006895ED    pop         edx
 006895EE    pop         ebp
 006895EF    pop         edi
 006895F0    pop         esi
 006895F1    pop         ebx
 006895F2    ret
end;*}

//006895F4
{*function sub_006895F4(?:?):?;
begin
 006895F4    push        ebx
 006895F5    push        esi
 006895F6    push        edi
 006895F7    push        ebp
 006895F8    add         esp,0FFFFFFF8
 006895FB    mov         ebp,eax
 006895FD    mov         ebx,dword ptr [ebp+14]
 00689600    mov         esi,dword ptr [ebx]
 00689602    mov         edi,dword ptr [ebx+4]
 00689605    test        edi,edi
>00689607    jne         0068961B
 00689609    mov         eax,ebp
 0068960B    call        dword ptr [ebx+0C]
 0068960E    test        eax,eax
>00689610    jne         00689616
 00689612    xor         eax,eax
>00689614    jmp         00689688
 00689616    mov         esi,dword ptr [ebx]
 00689618    mov         edi,dword ptr [ebx+4]
 0068961B    dec         edi
 0068961C    xor         eax,eax
 0068961E    mov         al,byte ptr [esi]
 00689620    mov         dword ptr [esp],eax
 00689623    inc         esi
 00689624    test        edi,edi
>00689626    jne         0068963A
 00689628    mov         eax,ebp
 0068962A    call        dword ptr [ebx+0C]
 0068962D    test        eax,eax
>0068962F    jne         00689635
 00689631    xor         eax,eax
>00689633    jmp         00689688
 00689635    mov         esi,dword ptr [ebx]
 00689637    mov         edi,dword ptr [ebx+4]
 0068963A    dec         edi
 0068963B    xor         eax,eax
 0068963D    mov         al,byte ptr [esi]
 0068963F    mov         dword ptr [esp+4],eax
 00689643    inc         esi
 00689644    cmp         dword ptr [esp],0FF
>0068964B    jne         00689657
 0068964D    cmp         dword ptr [esp+4],0D8
>00689655    je          00689674
 00689657    mov         eax,dword ptr [ebp]
 0068965A    mov         dword ptr [eax+14],34
 00689661    mov         edx,dword ptr [esp]
 00689664    mov         dword ptr [eax+18],edx
 00689667    mov         ecx,dword ptr [esp+4]
 0068966B    mov         dword ptr [eax+1C],ecx
 0068966E    mov         eax,ebp
 00689670    mov         edx,dword ptr [eax]
 00689672    call        dword ptr [edx]
 00689674    mov         ecx,dword ptr [esp+4]
 00689678    mov         eax,1
 0068967D    mov         dword ptr [ebp+198],ecx
 00689683    mov         dword ptr [ebx],esi
 00689685    mov         dword ptr [ebx+4],edi
 00689688    pop         ecx
 00689689    pop         edx
 0068968A    pop         ebp
 0068968B    pop         edi
 0068968C    pop         esi
 0068968D    pop         ebx
 0068968E    ret
end;*}

//00689A30
procedure @jpeg_resync_to_restart;
begin
{*
 00689A30    push        ebx
 00689A31    push        esi
 00689A32    mov         esi,eax
 00689A34    push        edi
 00689A35    push        ebp
 00689A36    mov         ebp,edx
 00689A38    mov         eax,dword ptr [esi]
 00689A3A    mov         ebx,dword ptr [esi+198]
 00689A40    or          edx,0FFFFFFFF
 00689A43    mov         dword ptr [eax+14],75
 00689A4A    mov         dword ptr [eax+18],ebx
 00689A4D    mov         dword ptr [eax+1C],ebp
 00689A50    mov         eax,esi
 00689A52    mov         ecx,dword ptr [eax]
 00689A54    call        dword ptr [ecx+4]
 00689A57    cmp         ebx,0C0
>00689A5D    jge         00689A66
 00689A5F    mov         edi,2
>00689A64    jmp         00689ACE
 00689A66    cmp         ebx,0D0
>00689A6C    jl          00689A76
 00689A6E    cmp         ebx,0D7
>00689A74    jle         00689A7D
 00689A76    mov         edi,3
>00689A7B    jmp         00689ACE
 00689A7D    lea         eax,[ebp+1]
 00689A80    and         eax,7
 00689A83    add         eax,0D0
 00689A88    cmp         ebx,eax
>00689A8A    je          00689A9C
 00689A8C    lea         edx,[ebp+2]
 00689A8F    and         edx,7
 00689A92    add         edx,0D0
 00689A98    cmp         ebx,edx
>00689A9A    jne         00689AA3
 00689A9C    mov         edi,3
>00689AA1    jmp         00689ACE
 00689AA3    lea         eax,[ebp-1]
 00689AA6    and         eax,7
 00689AA9    add         eax,0D0
 00689AAE    cmp         ebx,eax
>00689AB0    je          00689AC2
 00689AB2    lea         edx,[ebp-2]
 00689AB5    and         edx,7
 00689AB8    add         edx,0D0
 00689ABE    cmp         ebx,edx
>00689AC0    jne         00689AC9
 00689AC2    mov         edi,2
>00689AC7    jmp         00689ACE
 00689AC9    mov         edi,1
 00689ACE    mov         eax,dword ptr [esi]
 00689AD0    mov         dword ptr [eax+14],60
 00689AD7    mov         dword ptr [eax+18],ebx
 00689ADA    mov         dword ptr [eax+1C],edi
 00689ADD    mov         edx,4
 00689AE2    mov         eax,esi
 00689AE4    mov         ecx,dword ptr [eax]
 00689AE6    call        dword ptr [ecx+4]
 00689AE9    dec         edi
>00689AEA    je          00689AF7
 00689AEC    dec         edi
>00689AED    je          00689B06
 00689AEF    dec         edi
>00689AF0    je          00689B20
>00689AF2    jmp         00689A57
 00689AF7    xor         edx,edx
 00689AF9    mov         eax,1
 00689AFE    mov         dword ptr [esi+198],edx
>00689B04    jmp         00689B25
 00689B06    mov         eax,esi
 00689B08    call        006894E0
 00689B0D    test        eax,eax
>00689B0F    jne         00689B15
 00689B11    xor         eax,eax
>00689B13    jmp         00689B25
 00689B15    mov         ebx,dword ptr [esi+198]
>00689B1B    jmp         00689A57
 00689B20    mov         eax,1
 00689B25    pop         ebp
 00689B26    pop         edi
 00689B27    pop         esi
 00689B28    pop         ebx
 00689B29    ret
*}
end;

//00689B2C
{*function sub_00689B2C(?:?):?;
begin
 00689B2C    xor         edx,edx
 00689B2E    mov         dword ptr [eax+0D4],edx
 00689B34    xor         ecx,ecx
 00689B36    mov         dword ptr [eax+8C],ecx
 00689B3C    xor         edx,edx
 00689B3E    mov         dword ptr [eax+198],edx
 00689B44    mov         edx,dword ptr [eax+1B0]
 00689B4A    xor         ecx,ecx
 00689B4C    mov         dword ptr [edx+50],ecx
 00689B4F    xor         ecx,ecx
 00689B51    mov         dword ptr [edx+54],ecx
 00689B54    xor         eax,eax
 00689B56    mov         dword ptr [edx+5C],eax
 00689B59    ret
end;*}

//00689B5C
procedure @jinit_marker_reader;
begin
{*
 00689B5C    push        ebx
 00689B5D    mov         ebx,eax
 00689B5F    mov         eax,ebx
 00689B61    push        esi
 00689B62    mov         ecx,60
 00689B67    xor         edx,edx
 00689B69    mov         esi,dword ptr [eax+4]
 00689B6C    call        dword ptr [esi]
 00689B6E    mov         esi,eax
 00689B70    xor         eax,eax
 00689B72    mov         dword ptr [ebx+1B0],esi
 00689B78    mov         dword ptr [esi],689B2C;sub_00689B2C
 00689B7E    mov         dword ptr [esi+4],689690
 00689B85    mov         dword ptr [esi+8],6899A0
 00689B8C    mov         dword ptr [esi+0C],68944C;sub_0068944C
 00689B93    mov         edx,dword ptr [ebx+1B0]
 00689B99    mov         dword ptr [edx+eax*4+10],68944C;sub_0068944C
 00689BA1    inc         eax
 00689BA2    cmp         eax,10
>00689BA5    jl          00689B93
 00689BA7    mov         eax,dword ptr [ebx+1B0]
 00689BAD    mov         dword ptr [eax+10],6887CC
 00689BB4    mov         dword ptr [eax+48],688A50
 00689BBB    mov         eax,ebx
 00689BBD    call        00689B2C
 00689BC2    pop         esi
 00689BC3    pop         ebx
 00689BC4    ret
*}
end;

//00689BC8
procedure @jround_up;
begin
{*
 00689BC8    push        ebx
 00689BC9    mov         ebx,edx
 00689BCB    mov         ecx,eax
 00689BCD    lea         eax,[ebx-1]
 00689BD0    add         ecx,eax
 00689BD2    mov         eax,ecx
 00689BD4    cdq
 00689BD5    idiv        eax,ebx
 00689BD7    mov         eax,ecx
 00689BD9    sub         eax,edx
 00689BDB    pop         ebx
 00689BDC    ret
*}
end;

//00689BE0
procedure @jcopy_sample_rows;
begin
{*
 00689BE0    push        ebp
 00689BE1    mov         ebp,esp
 00689BE3    push        ecx
 00689BE4    push        ebx
 00689BE5    push        esi
 00689BE6    push        edi
 00689BE7    mov         ebx,eax
 00689BE9    mov         eax,dword ptr [ebp+8]
 00689BEC    shl         edx,2
 00689BEF    mov         dword ptr [ebp-4],eax
 00689BF2    add         ebx,edx
 00689BF4    mov         edx,dword ptr [ebp+10]
 00689BF7    shl         edx,2
 00689BFA    mov         esi,ecx
 00689BFC    add         esi,edx
 00689BFE    mov         edi,dword ptr [ebp+0C]
 00689C01    test        edi,edi
>00689C03    jle         00689C22
 00689C05    mov         eax,dword ptr [ebx]
 00689C07    add         ebx,4
 00689C0A    mov         edx,dword ptr [esi]
 00689C0C    add         esi,4
 00689C0F    mov         ecx,dword ptr [ebp-4]
 00689C12    push        ecx
 00689C13    push        eax
 00689C14    push        edx
 00689C15    call        _memcpy
 00689C1A    add         esp,0C
 00689C1D    dec         edi
 00689C1E    test        edi,edi
>00689C20    jg          00689C05
 00689C22    pop         edi
 00689C23    pop         esi
 00689C24    pop         ebx
 00689C25    pop         ecx
 00689C26    pop         ebp
 00689C27    ret         0C
*}
end;

//00689C2C
procedure @jcopy_block_row;
begin
{*
 00689C2C    shl         ecx,7
 00689C2F    push        ecx
 00689C30    push        eax
 00689C31    push        edx
 00689C32    call        _memcpy
 00689C37    add         esp,0C
 00689C3A    ret
*}
end;

//00689C3C
procedure @jpeg_abort;
begin
{*
 00689C3C    push        ebx
 00689C3D    push        esi
 00689C3E    mov         esi,eax
 00689C40    mov         ebx,1
 00689C45    mov         edx,ebx
 00689C47    mov         eax,esi
 00689C49    mov         ecx,dword ptr [eax+4]
 00689C4C    call        dword ptr [ecx+24]
 00689C4F    dec         ebx
 00689C50    test        ebx,ebx
>00689C52    jg          00689C45
 00689C54    cmp         dword ptr [esi+0C],0
>00689C58    je          00689C61
 00689C5A    mov         eax,0C8
>00689C5F    jmp         00689C66
 00689C61    mov         eax,64
 00689C66    mov         dword ptr [esi+10],eax
 00689C69    pop         esi
 00689C6A    pop         ebx
 00689C6B    ret
*}
end;

//00689C6C
procedure jpeg_destroy(var cinfo:jpeg_common_struct);
begin
{*
 00689C6C    push        ebx
 00689C6D    mov         ebx,eax
 00689C6F    cmp         dword ptr [ebx+4],0
>00689C73    je          00689C7D
 00689C75    mov         eax,ebx
 00689C77    mov         edx,dword ptr [eax+4]
 00689C7A    call        dword ptr [edx+28]
 00689C7D    xor         ecx,ecx
 00689C7F    xor         eax,eax
 00689C81    mov         dword ptr [ebx+4],ecx
 00689C84    mov         dword ptr [ebx+10],eax
 00689C87    pop         ebx
 00689C88    ret
*}
end;

//00689C8C
procedure @jpeg_alloc_quant_table;
begin
{*
 00689C8C    push        ebx
 00689C8D    mov         ecx,84
 00689C92    xor         edx,edx
 00689C94    mov         ebx,dword ptr [eax+4]
 00689C97    call        dword ptr [ebx]
 00689C99    xor         edx,edx
 00689C9B    mov         dword ptr [eax+80],edx
 00689CA1    pop         ebx
 00689CA2    ret
*}
end;

//00689CA4
procedure @jpeg_alloc_huff_table;
begin
{*
 00689CA4    push        ebx
 00689CA5    mov         ecx,118
 00689CAA    xor         edx,edx
 00689CAC    mov         ebx,dword ptr [eax+4]
 00689CAF    call        dword ptr [ebx]
 00689CB1    xor         edx,edx
 00689CB3    mov         dword ptr [eax+114],edx
 00689CB9    pop         ebx
 00689CBA    ret
*}
end;

//00689CBC
procedure _DF_.;
begin
{*
 00689CBC    push        ebx
 00689CBD    push        esi
 00689CBE    mov         esi,eax
 00689CC0    push        edi
 00689CC1    mov         eax,esi
 00689CC3    mov         ecx,1000
 00689CC8    mov         ebx,dword ptr [esi+14]
 00689CCB    mov         edx,1
 00689CD0    mov         esi,dword ptr [eax+4]
 00689CD3    call        dword ptr [esi]
 00689CD5    mov         edi,eax
 00689CD7    mov         dword ptr [ebx+18],edi
 00689CDA    mov         dword ptr [ebx],edi
 00689CDC    mov         dword ptr [ebx+4],1000
 00689CE3    pop         edi
 00689CE4    pop         esi
 00689CE5    pop         ebx
 00689CE6    ret
*}
end;

//00689D8C
procedure jpeg_stdio_dest(var cinfo:jpeg_compress_struct; output_file:TStream);
begin
{*
 00689D8C    push        ebx
 00689D8D    mov         ebx,eax
 00689D8F    push        esi
 00689D90    push        edi
 00689D91    cmp         dword ptr [ebx+14],0
 00689D95    mov         esi,edx
>00689D97    jne         00689DAA
 00689D99    mov         eax,ebx
 00689D9B    mov         ecx,1C
 00689DA0    xor         edx,edx
 00689DA2    mov         edi,dword ptr [eax+4]
 00689DA5    call        dword ptr [edi]
 00689DA7    mov         dword ptr [ebx+14],eax
 00689DAA    mov         eax,dword ptr [ebx+14]
 00689DAD    mov         dword ptr [eax+8],689CBC;_DF_.
 00689DB4    mov         dword ptr [eax+0C],689CE8
 00689DBB    mov         dword ptr [eax+10],689D30
 00689DC2    mov         dword ptr [eax+14],esi
 00689DC5    pop         edi
 00689DC6    pop         esi
 00689DC7    pop         ebx
 00689DC8    ret
*}
end;

//00689DCC
procedure _DF_.;
begin
{*
 00689DCC    push        ebp
 00689DCD    mov         ebp,esp
 00689DCF    push        ecx
 00689DD0    push        ebx
 00689DD1    mov         ebx,eax
 00689DD3    push        esi
 00689DD4    push        edi
 00689DD5    mov         dword ptr [ebp-4],ecx
 00689DD8    cmp         dword ptr [ebx+10],64
 00689DDC    lea         esi,[ebx+edx*4+40]
>00689DE0    je          00689DF7
 00689DE2    mov         eax,dword ptr [ebx]
 00689DE4    mov         dword ptr [eax+14],12
 00689DEB    mov         edx,dword ptr [ebx+10]
 00689DEE    mov         dword ptr [eax+18],edx
 00689DF1    mov         eax,ebx
 00689DF3    mov         edx,dword ptr [eax]
 00689DF5    call        dword ptr [edx]
 00689DF7    cmp         dword ptr [esi],0
>00689DFA    jne         00689E05
 00689DFC    mov         eax,ebx
 00689DFE    call        @jpeg_alloc_quant_table
 00689E03    mov         dword ptr [esi],eax
 00689E05    xor         ecx,ecx
 00689E07    mov         edx,dword ptr [ebp-4]
 00689E0A    mov         ebx,edx
 00689E0C    mov         eax,dword ptr [ebx]
 00689E0E    imul        dword ptr [ebp+0C]
 00689E11    add         eax,32
 00689E14    mov         edi,64
 00689E19    cdq
 00689E1A    idiv        eax,edi
 00689E1C    test        eax,eax
>00689E1E    jg          00689E25
 00689E20    mov         eax,1
 00689E25    cmp         eax,7FFF
>00689E2A    jle         00689E31
 00689E2C    mov         eax,7FFF
 00689E31    cmp         dword ptr [ebp+8],0
>00689E35    je          00689E43
 00689E37    cmp         eax,0FF
>00689E3C    jle         00689E43
 00689E3E    mov         eax,0FF
 00689E43    mov         edx,dword ptr [esi]
 00689E45    add         ebx,4
 00689E48    mov         word ptr [edx+ecx*2],ax
 00689E4C    inc         ecx
 00689E4D    cmp         ecx,40
>00689E50    jl          00689E0C
 00689E52    mov         ecx,dword ptr [esi]
 00689E54    xor         eax,eax
 00689E56    mov         dword ptr [ecx+80],eax
 00689E5C    pop         edi
 00689E5D    pop         esi
 00689E5E    pop         ebx
 00689E5F    pop         ecx
 00689E60    pop         ebp
 00689E61    ret         8
*}
end;

//00689E64
{*function sub_00689E64(?:?; ?:?; ?:?):?;
begin
 00689E64    push        ebx
 00689E65    push        esi
 00689E66    push        edi
 00689E67    mov         edi,ecx
 00689E69    mov         esi,edx
 00689E6B    mov         ebx,eax
 00689E6D    push        esi
 00689E6E    push        edi
 00689E6F    mov         ecx,6E96C0
 00689E74    xor         edx,edx
 00689E76    mov         eax,ebx
 00689E78    call        _DF_.
 00689E7D    push        esi
 00689E7E    push        edi
 00689E7F    mov         ecx,6E97C0
 00689E84    mov         edx,1
 00689E89    mov         eax,ebx
 00689E8B    call        _DF_.
 00689E90    pop         edi
 00689E91    pop         esi
 00689E92    pop         ebx
 00689E93    ret
end;*}

//00689E94
{*function sub_00689E94(?:?):?;
begin
 00689E94    mov         ecx,eax
 00689E96    test        ecx,ecx
>00689E98    jg          00689E9F
 00689E9A    mov         ecx,1
 00689E9F    cmp         ecx,64
>00689EA2    jle         00689EA9
 00689EA4    mov         ecx,64
 00689EA9    cmp         ecx,32
>00689EAC    jge         00689EBA
 00689EAE    mov         eax,1388
 00689EB3    cdq
 00689EB4    idiv        eax,ecx
 00689EB6    mov         ecx,eax
>00689EB8    jmp         00689EC5
 00689EBA    add         ecx,ecx
 00689EBC    mov         eax,0C8
 00689EC1    sub         eax,ecx
 00689EC3    mov         ecx,eax
 00689EC5    mov         eax,ecx
 00689EC7    ret
end;*}

//00689EC8
procedure jpeg_set_quality(var cinfo:jpeg_compress_struct; Quality:Integer; Baseline:LongBool);
begin
{*
 00689EC8    push        ebx
 00689EC9    push        esi
 00689ECA    mov         esi,ecx
 00689ECC    mov         ebx,eax
 00689ECE    mov         eax,edx
 00689ED0    call        00689E94
 00689ED5    mov         edx,eax
 00689ED7    mov         ecx,esi
 00689ED9    mov         eax,ebx
 00689EDB    call        00689E64
 00689EE0    pop         esi
 00689EE1    pop         ebx
 00689EE2    ret
*}
end;

//00689EE4
{*function sub_00689EE4(?:?; ?:?; ?:?; ?:?):?;
begin
 00689EE4    push        ebp
 00689EE5    mov         ebp,esp
 00689EE7    push        ebx
 00689EE8    mov         ebx,edx
 00689EEA    push        esi
 00689EEB    push        edi
 00689EEC    cmp         dword ptr [ebx],0
 00689EEF    mov         edi,eax
 00689EF1    mov         esi,ecx
>00689EF3    jne         00689EFE
 00689EF5    mov         eax,edi
 00689EF7    call        @jpeg_alloc_huff_table
 00689EFC    mov         dword ptr [ebx],eax
 00689EFE    push        11
 00689F00    push        esi
 00689F01    mov         edx,dword ptr [ebx]
 00689F03    push        edx
 00689F04    call        _memcpy
 00689F09    add         esp,0C
 00689F0C    push        100
 00689F11    mov         ecx,dword ptr [ebp+8]
 00689F14    push        ecx
 00689F15    mov         eax,dword ptr [ebx]
 00689F17    add         eax,11
 00689F1A    push        eax
 00689F1B    call        _memcpy
 00689F20    add         esp,0C
 00689F23    mov         edx,dword ptr [ebx]
 00689F25    xor         ecx,ecx
 00689F27    mov         dword ptr [edx+114],ecx
 00689F2D    pop         edi
 00689F2E    pop         esi
 00689F2F    pop         ebx
 00689F30    pop         ebp
 00689F31    ret         4
end;*}

//00689F34
{*procedure sub_00689F34(?:?);
begin
 00689F34    push        ebx
 00689F35    mov         ebx,eax
 00689F37    push        6E98D1
 00689F3C    mov         ecx,6E98C0
 00689F41    lea         edx,[ebx+50]
 00689F44    mov         eax,ebx
 00689F46    call        00689EE4
 00689F4B    push        6E990B
 00689F50    mov         ecx,6E98FA
 00689F55    lea         edx,[ebx+60]
 00689F58    mov         eax,ebx
 00689F5A    call        00689EE4
 00689F5F    push        6E98EE
 00689F64    mov         ecx,6E98DD
 00689F69    lea         edx,[ebx+54]
 00689F6C    mov         eax,ebx
 00689F6E    call        00689EE4
 00689F73    push        6E99BE
 00689F78    mov         ecx,6E99AD
 00689F7D    lea         edx,[ebx+64]
 00689F80    mov         eax,ebx
 00689F82    call        00689EE4
 00689F87    pop         ebx
 00689F88    ret
end;*}

//00689F8C
procedure jpeg_set_defaults(var cinfo:jpeg_compress_struct);
begin
{*
 00689F8C    push        ebx
 00689F8D    mov         ebx,eax
 00689F8F    push        esi
 00689F90    cmp         dword ptr [ebx+10],64
>00689F94    je          00689FAB
 00689F96    mov         eax,dword ptr [ebx]
 00689F98    mov         dword ptr [eax+14],12
 00689F9F    mov         edx,dword ptr [ebx+10]
 00689FA2    mov         dword ptr [eax+18],edx
 00689FA5    mov         eax,ebx
 00689FA7    mov         edx,dword ptr [eax]
 00689FA9    call        dword ptr [edx]
 00689FAB    cmp         dword ptr [ebx+3C],0
>00689FAF    jne         00689FC2
 00689FB1    mov         eax,ebx
 00689FB3    mov         ecx,348
 00689FB8    xor         edx,edx
 00689FBA    mov         esi,dword ptr [eax+4]
 00689FBD    call        dword ptr [esi]
 00689FBF    mov         dword ptr [ebx+3C],eax
 00689FC2    mov         dword ptr [ebx+30],8
 00689FC9    mov         ecx,1
 00689FCE    mov         edx,4B
 00689FD3    mov         eax,ebx
 00689FD5    call        jpeg_set_quality
 00689FDA    mov         eax,ebx
 00689FDC    call        00689F34
 00689FE1    xor         edx,edx
 00689FE3    lea         eax,[ebx+70]
 00689FE6    mov         byte ptr [eax],0
 00689FE9    mov         byte ptr [eax+10],1
 00689FED    mov         byte ptr [eax+20],5
 00689FF1    inc         edx
 00689FF2    inc         eax
 00689FF3    cmp         edx,10
>00689FF6    jl          00689FE6
 00689FF8    xor         edx,edx
 00689FFA    xor         ecx,ecx
 00689FFC    mov         dword ptr [ebx+0A4],edx
 0068A002    mov         dword ptr [ebx+0A0],ecx
 0068A008    xor         eax,eax
 0068A00A    xor         edx,edx
 0068A00C    mov         dword ptr [ebx+0A8],eax
 0068A012    xor         ecx,ecx
 0068A014    mov         dword ptr [ebx+0AC],edx
 0068A01A    mov         dword ptr [ebx+0B0],ecx
 0068A020    cmp         dword ptr [ebx+30],8
>0068A024    jle         0068A030
 0068A026    mov         dword ptr [ebx+0B0],1
 0068A030    xor         eax,eax
 0068A032    mov         dword ptr [ebx+0B4],eax
 0068A038    xor         edx,edx
 0068A03A    mov         dword ptr [ebx+0B8],edx
 0068A040    xor         ecx,ecx
 0068A042    mov         dword ptr [ebx+0BC],ecx
 0068A048    xor         eax,eax
 0068A04A    mov         dword ptr [ebx+0C0],eax
 0068A050    xor         edx,edx
 0068A052    mov         dword ptr [ebx+0C4],edx
 0068A058    mov         byte ptr [ebx+0CC],0
 0068A05F    mov         word ptr [ebx+0CE],1
 0068A068    mov         word ptr [ebx+0D0],1
 0068A071    mov         eax,ebx
 0068A073    call        0068A07C
 0068A078    pop         esi
 0068A079    pop         ebx
 0068A07A    ret
*}
end;

//0068A07C
{*function sub_0068A07C(?:?):?;
begin
 0068A07C    mov         edx,dword ptr [eax+24]
 0068A07F    cmp         edx,5
>0068A082    ja          0068A0E2
 0068A084    jmp         dword ptr [edx*4+68A08B]
 0068A084    dd          0068A0DA
 0068A084    dd          0068A0A3
 0068A084    dd          0068A0AE
 0068A084    dd          0068A0B9
 0068A084    dd          0068A0C4
 0068A084    dd          0068A0CF
 0068A0A3    mov         edx,1
 0068A0A8    call        jpeg_set_colorspace
 0068A0AD    ret
 0068A0AE    mov         edx,3
 0068A0B3    call        jpeg_set_colorspace
 0068A0B8    ret
 0068A0B9    mov         edx,3
 0068A0BE    call        jpeg_set_colorspace
 0068A0C3    ret
 0068A0C4    mov         edx,4
 0068A0C9    call        jpeg_set_colorspace
 0068A0CE    ret
 0068A0CF    mov         edx,5
 0068A0D4    call        jpeg_set_colorspace
 0068A0D9    ret
 0068A0DA    xor         edx,edx
 0068A0DC    call        jpeg_set_colorspace
 0068A0E1    ret
 0068A0E2    mov         ecx,dword ptr [eax]
 0068A0E4    mov         dword ptr [ecx+14],7
 0068A0EB    mov         edx,dword ptr [eax]
 0068A0ED    call        dword ptr [edx]
 0068A0EF    ret
end;*}

//0068A0F0
procedure jpeg_set_colorspace(var cinfo:jpeg_compress_struct; colorspace:J_COLOR_SPACE);
begin
{*
 0068A0F0    push        ebx
 0068A0F1    mov         ebx,eax
 0068A0F3    push        esi
 0068A0F4    mov         esi,edx
 0068A0F6    cmp         dword ptr [ebx+10],64
>0068A0FA    je          0068A111
 0068A0FC    mov         eax,dword ptr [ebx]
 0068A0FE    mov         dword ptr [eax+14],12
 0068A105    mov         edx,dword ptr [ebx+10]
 0068A108    mov         dword ptr [eax+18],edx
 0068A10B    mov         eax,ebx
 0068A10D    mov         edx,dword ptr [eax]
 0068A10F    call        dword ptr [edx]
 0068A111    mov         dword ptr [ebx+38],esi
 0068A114    xor         ecx,ecx
 0068A116    mov         dword ptr [ebx+0C8],ecx
 0068A11C    xor         eax,eax
 0068A11E    mov         dword ptr [ebx+0D4],eax
 0068A124    cmp         esi,5
>0068A127    ja          0068A493
 0068A12D    jmp         dword ptr [esi*4+68A134]
 0068A12D    dd          0068A42C
 0068A12D    dd          0068A14C
 0068A12D    dd          0068A186
 0068A12D    dd          0068A214
 0068A12D    dd          0068A2AE
 0068A12D    dd          0068A367
 0068A14C    mov         dword ptr [ebx+0C8],1
 0068A156    mov         dword ptr [ebx+34],1
 0068A15D    mov         eax,dword ptr [ebx+3C]
 0068A160    xor         edx,edx
 0068A162    xor         ecx,ecx
 0068A164    mov         dword ptr [eax],1
 0068A16A    mov         dword ptr [eax+8],1
 0068A171    mov         dword ptr [eax+0C],1
 0068A178    mov         dword ptr [eax+10],edx
 0068A17B    xor         edx,edx
 0068A17D    mov         dword ptr [eax+14],ecx
 0068A180    mov         dword ptr [eax+18],edx
 0068A183    pop         esi
 0068A184    pop         ebx
 0068A185    ret
 0068A186    mov         dword ptr [ebx+0D4],1
 0068A190    mov         dword ptr [ebx+34],3
 0068A197    mov         eax,dword ptr [ebx+3C]
 0068A19A    xor         ecx,ecx
 0068A19C    xor         edx,edx
 0068A19E    mov         dword ptr [eax],52
 0068A1A4    mov         dword ptr [eax+8],1
 0068A1AB    mov         dword ptr [eax+0C],1
 0068A1B2    mov         dword ptr [eax+10],ecx
 0068A1B5    xor         ecx,ecx
 0068A1B7    mov         dword ptr [eax+14],edx
 0068A1BA    mov         dword ptr [eax+18],ecx
 0068A1BD    mov         eax,dword ptr [ebx+3C]
 0068A1C0    xor         edx,edx
 0068A1C2    add         eax,54
 0068A1C5    xor         ecx,ecx
 0068A1C7    mov         dword ptr [eax],47
 0068A1CD    mov         dword ptr [eax+8],1
 0068A1D4    mov         dword ptr [eax+0C],1
 0068A1DB    mov         dword ptr [eax+10],edx
 0068A1DE    xor         edx,edx
 0068A1E0    mov         dword ptr [eax+14],ecx
 0068A1E3    mov         dword ptr [eax+18],edx
 0068A1E6    mov         eax,dword ptr [ebx+3C]
 0068A1E9    xor         ecx,ecx
 0068A1EB    add         eax,0A8
 0068A1F0    xor         edx,edx
 0068A1F2    mov         dword ptr [eax],42
 0068A1F8    mov         dword ptr [eax+8],1
 0068A1FF    mov         dword ptr [eax+0C],1
 0068A206    mov         dword ptr [eax+10],ecx
 0068A209    xor         ecx,ecx
 0068A20B    mov         dword ptr [eax+14],edx
 0068A20E    mov         dword ptr [eax+18],ecx
 0068A211    pop         esi
 0068A212    pop         ebx
 0068A213    ret
 0068A214    mov         dword ptr [ebx+0C8],1
 0068A21E    mov         dword ptr [ebx+34],3
 0068A225    mov         eax,dword ptr [ebx+3C]
 0068A228    xor         edx,edx
 0068A22A    xor         ecx,ecx
 0068A22C    mov         dword ptr [eax],1
 0068A232    mov         dword ptr [eax+8],2
 0068A239    mov         dword ptr [eax+0C],2
 0068A240    mov         dword ptr [eax+10],edx
 0068A243    xor         edx,edx
 0068A245    mov         dword ptr [eax+14],ecx
 0068A248    mov         dword ptr [eax+18],edx
 0068A24B    mov         eax,dword ptr [ebx+3C]
 0068A24E    add         eax,54
 0068A251    mov         dword ptr [eax],2
 0068A257    mov         dword ptr [eax+8],1
 0068A25E    mov         dword ptr [eax+0C],1
 0068A265    mov         dword ptr [eax+10],1
 0068A26C    mov         dword ptr [eax+14],1
 0068A273    mov         dword ptr [eax+18],1
 0068A27A    mov         eax,dword ptr [ebx+3C]
 0068A27D    add         eax,0A8
 0068A282    mov         dword ptr [eax],3
 0068A288    mov         dword ptr [eax+8],1
 0068A28F    mov         dword ptr [eax+0C],1
 0068A296    mov         dword ptr [eax+10],1
 0068A29D    mov         dword ptr [eax+14],1
 0068A2A4    mov         dword ptr [eax+18],1
 0068A2AB    pop         esi
 0068A2AC    pop         ebx
 0068A2AD    ret
 0068A2AE    mov         dword ptr [ebx+0D4],1
 0068A2B8    mov         dword ptr [ebx+34],4
 0068A2BF    mov         eax,dword ptr [ebx+3C]
 0068A2C2    xor         edx,edx
 0068A2C4    xor         ecx,ecx
 0068A2C6    mov         dword ptr [eax],43
 0068A2CC    mov         dword ptr [eax+8],1
 0068A2D3    mov         dword ptr [eax+0C],1
 0068A2DA    mov         dword ptr [eax+10],edx
 0068A2DD    xor         edx,edx
 0068A2DF    mov         dword ptr [eax+14],ecx
 0068A2E2    mov         dword ptr [eax+18],edx
 0068A2E5    mov         eax,dword ptr [ebx+3C]
 0068A2E8    xor         ecx,ecx
 0068A2EA    add         eax,54
 0068A2ED    xor         edx,edx
 0068A2EF    mov         dword ptr [eax],4D
 0068A2F5    mov         dword ptr [eax+8],1
 0068A2FC    mov         dword ptr [eax+0C],1
 0068A303    mov         dword ptr [eax+10],ecx
 0068A306    xor         ecx,ecx
 0068A308    mov         dword ptr [eax+14],edx
 0068A30B    mov         dword ptr [eax+18],ecx
 0068A30E    mov         eax,dword ptr [ebx+3C]
 0068A311    xor         edx,edx
 0068A313    add         eax,0A8
 0068A318    xor         ecx,ecx
 0068A31A    mov         dword ptr [eax],59
 0068A320    mov         dword ptr [eax+8],1
 0068A327    mov         dword ptr [eax+0C],1
 0068A32E    mov         dword ptr [eax+10],edx
 0068A331    xor         edx,edx
 0068A333    mov         dword ptr [eax+14],ecx
 0068A336    mov         dword ptr [eax+18],edx
 0068A339    mov         eax,dword ptr [ebx+3C]
 0068A33C    xor         ecx,ecx
 0068A33E    add         eax,0FC
 0068A343    xor         edx,edx
 0068A345    mov         dword ptr [eax],4B
 0068A34B    mov         dword ptr [eax+8],1
 0068A352    mov         dword ptr [eax+0C],1
 0068A359    mov         dword ptr [eax+10],ecx
 0068A35C    xor         ecx,ecx
 0068A35E    mov         dword ptr [eax+14],edx
 0068A361    mov         dword ptr [eax+18],ecx
 0068A364    pop         esi
 0068A365    pop         ebx
 0068A366    ret
 0068A367    mov         dword ptr [ebx+0D4],1
 0068A371    mov         dword ptr [ebx+34],4
 0068A378    mov         eax,dword ptr [ebx+3C]
 0068A37B    xor         edx,edx
 0068A37D    xor         ecx,ecx
 0068A37F    mov         dword ptr [eax],1
 0068A385    mov         dword ptr [eax+8],2
 0068A38C    mov         dword ptr [eax+0C],2
 0068A393    mov         dword ptr [eax+10],edx
 0068A396    xor         edx,edx
 0068A398    mov         dword ptr [eax+14],ecx
 0068A39B    mov         dword ptr [eax+18],edx
 0068A39E    mov         eax,dword ptr [ebx+3C]
 0068A3A1    xor         edx,edx
 0068A3A3    add         eax,54
 0068A3A6    xor         ecx,ecx
 0068A3A8    mov         dword ptr [eax],2
 0068A3AE    mov         dword ptr [eax+8],1
 0068A3B5    mov         dword ptr [eax+0C],1
 0068A3BC    mov         dword ptr [eax+10],1
 0068A3C3    mov         dword ptr [eax+14],1
 0068A3CA    mov         dword ptr [eax+18],1
 0068A3D1    mov         eax,dword ptr [ebx+3C]
 0068A3D4    add         eax,0A8
 0068A3D9    mov         dword ptr [eax],3
 0068A3DF    mov         dword ptr [eax+8],1
 0068A3E6    mov         dword ptr [eax+0C],1
 0068A3ED    mov         dword ptr [eax+10],1
 0068A3F4    mov         dword ptr [eax+14],1
 0068A3FB    mov         dword ptr [eax+18],1
 0068A402    mov         eax,dword ptr [ebx+3C]
 0068A405    add         eax,0FC
 0068A40A    mov         dword ptr [eax],4
 0068A410    mov         dword ptr [eax+8],2
 0068A417    mov         dword ptr [eax+0C],2
 0068A41E    mov         dword ptr [eax+10],edx
 0068A421    xor         edx,edx
 0068A423    mov         dword ptr [eax+14],ecx
 0068A426    mov         dword ptr [eax+18],edx
 0068A429    pop         esi
 0068A42A    pop         ebx
 0068A42B    ret
 0068A42C    mov         eax,dword ptr [ebx+20]
 0068A42F    mov         dword ptr [ebx+34],eax
 0068A432    mov         eax,dword ptr [ebx+34]
 0068A435    cmp         eax,1
>0068A438    jl          0068A43F
 0068A43A    cmp         eax,0A
>0068A43D    jle         0068A45B
 0068A43F    mov         eax,dword ptr [ebx]
 0068A441    mov         dword ptr [eax+14],18
 0068A448    mov         edx,dword ptr [ebx+34]
 0068A44B    mov         dword ptr [eax+18],edx
 0068A44E    mov         dword ptr [eax+1C],0A
 0068A455    mov         eax,ebx
 0068A457    mov         edx,dword ptr [eax]
 0068A459    call        dword ptr [edx]
 0068A45B    xor         edx,edx
>0068A45D    jmp         0068A48B
 0068A45F    lea         eax,[edx+edx*4]
 0068A462    xor         ecx,ecx
 0068A464    lea         eax,[edx+eax*4]
 0068A467    shl         eax,2
 0068A46A    add         eax,dword ptr [ebx+3C]
 0068A46D    mov         dword ptr [eax],edx
 0068A46F    mov         dword ptr [eax+8],1
 0068A476    mov         dword ptr [eax+0C],1
 0068A47D    mov         dword ptr [eax+10],ecx
 0068A480    xor         ecx,ecx
 0068A482    mov         dword ptr [eax+14],ecx
 0068A485    xor         ecx,ecx
 0068A487    mov         dword ptr [eax+18],ecx
 0068A48A    inc         edx
 0068A48B    cmp         edx,dword ptr [ebx+34]
>0068A48E    jl          0068A45F
 0068A490    pop         esi
 0068A491    pop         ebx
 0068A492    ret
 0068A493    mov         eax,dword ptr [ebx]
 0068A495    mov         dword ptr [eax+14],8
 0068A49C    mov         eax,ebx
 0068A49E    mov         edx,dword ptr [eax]
 0068A4A0    call        dword ptr [edx]
 0068A4A2    pop         esi
 0068A4A3    pop         ebx
 0068A4A4    ret
*}
end;

//0068A4A8
{*function sub_0068A4A8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0068A4A8    push        ebp
 0068A4A9    mov         ebp,esp
 0068A4AB    mov         dword ptr [eax],1
 0068A4B1    mov         dword ptr [eax+4],edx
 0068A4B4    mov         dword ptr [eax+14],ecx
 0068A4B7    mov         edx,dword ptr [ebp+10]
 0068A4BA    mov         dword ptr [eax+18],edx
 0068A4BD    mov         ecx,dword ptr [ebp+0C]
 0068A4C0    mov         dword ptr [eax+1C],ecx
 0068A4C3    mov         edx,dword ptr [ebp+8]
 0068A4C6    mov         dword ptr [eax+20],edx
 0068A4C9    add         eax,24
 0068A4CC    pop         ebp
 0068A4CD    ret         0C
end;*}

//0068A4D0
{*function sub_0068A4D0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0068A4D0    push        ebp
 0068A4D1    mov         ebp,esp
 0068A4D3    push        ebx
 0068A4D4    push        esi
 0068A4D5    push        edi
 0068A4D6    mov         esi,dword ptr [ebp+10]
 0068A4D9    xor         ebx,ebx
 0068A4DB    cmp         edx,ebx
>0068A4DD    jle         0068A502
 0068A4DF    mov         dword ptr [eax],1
 0068A4E5    mov         dword ptr [eax+4],ebx
 0068A4E8    mov         dword ptr [eax+14],ecx
 0068A4EB    mov         dword ptr [eax+18],esi
 0068A4EE    mov         edi,dword ptr [ebp+0C]
 0068A4F1    inc         ebx
 0068A4F2    mov         dword ptr [eax+1C],edi
 0068A4F5    mov         edi,dword ptr [ebp+8]
 0068A4F8    mov         dword ptr [eax+20],edi
 0068A4FB    add         eax,24
 0068A4FE    cmp         edx,ebx
>0068A500    jg          0068A4DF
 0068A502    pop         edi
 0068A503    pop         esi
 0068A504    pop         ebx
 0068A505    pop         ebp
 0068A506    ret         0C
end;*}

//0068A50C
{*function sub_0068A50C(?:?; ?:?; ?:?; ?:?):?;
begin
 0068A50C    push        ebp
 0068A50D    mov         ebp,esp
 0068A50F    push        ebx
 0068A510    push        esi
 0068A511    cmp         edx,4
>0068A514    jg          0068A541
 0068A516    mov         dword ptr [eax],edx
 0068A518    xor         ebx,ebx
 0068A51A    lea         esi,[eax+4]
 0068A51D    cmp         edx,ebx
>0068A51F    jle         0068A52B
 0068A521    mov         dword ptr [esi],ebx
 0068A523    inc         ebx
 0068A524    add         esi,4
 0068A527    cmp         edx,ebx
>0068A529    jg          0068A521
 0068A52B    xor         edx,edx
 0068A52D    mov         dword ptr [eax+18],edx
 0068A530    mov         dword ptr [eax+14],edx
 0068A533    mov         dword ptr [eax+1C],ecx
 0068A536    mov         ecx,dword ptr [ebp+8]
 0068A539    mov         dword ptr [eax+20],ecx
 0068A53C    add         eax,24
>0068A53F    jmp         0068A54F
 0068A541    push        0
 0068A543    push        ecx
 0068A544    mov         ecx,dword ptr [ebp+8]
 0068A547    push        ecx
 0068A548    xor         ecx,ecx
 0068A54A    call        0068A4D0
 0068A54F    pop         esi
 0068A550    pop         ebx
 0068A551    pop         ebp
 0068A552    ret         4
end;*}

//0068A558
procedure jpeg_simple_progression(var cinfo:jpeg_compress_struct);
begin
{*
 0068A558    push        ebx
 0068A559    push        esi
 0068A55A    push        edi
 0068A55B    mov         edi,eax
 0068A55D    push        ecx
 0068A55E    cmp         dword ptr [edi+10],64
 0068A562    mov         esi,dword ptr [edi+34]
>0068A565    je          0068A57C
 0068A567    mov         eax,dword ptr [edi]
 0068A569    mov         dword ptr [eax+14],12
 0068A570    mov         edx,dword ptr [edi+10]
 0068A573    mov         dword ptr [eax+18],edx
 0068A576    mov         eax,edi
 0068A578    mov         edx,dword ptr [eax]
 0068A57A    call        dword ptr [edx]
 0068A57C    cmp         esi,3
>0068A57F    jne         0068A590
 0068A581    cmp         dword ptr [edi+38],3
>0068A585    jne         0068A590
 0068A587    mov         dword ptr [esp],0A
>0068A58E    jmp         0068A5AC
 0068A590    cmp         esi,4
>0068A593    jle         0068A5A1
 0068A595    mov         ecx,esi
 0068A597    add         ecx,ecx
 0068A599    lea         ecx,[ecx+ecx*2]
 0068A59C    mov         dword ptr [esp],ecx
>0068A59F    jmp         0068A5AC
 0068A5A1    mov         eax,esi
 0068A5A3    shl         eax,2
 0068A5A6    add         eax,2
 0068A5A9    mov         dword ptr [esp],eax
 0068A5AC    mov         ecx,dword ptr [esp]
 0068A5AF    mov         eax,edi
 0068A5B1    shl         ecx,2
 0068A5B4    xor         edx,edx
 0068A5B6    mov         ebx,dword ptr [eax+4]
 0068A5B9    lea         ecx,[ecx+ecx*8]
 0068A5BC    call        dword ptr [ebx]
 0068A5BE    mov         ebx,eax
 0068A5C0    cmp         esi,3
 0068A5C3    mov         dword ptr [edi+0A4],ebx
 0068A5C9    mov         eax,dword ptr [esp]
 0068A5CC    mov         dword ptr [edi+0A0],eax
>0068A5D2    jne         0068A6BF
 0068A5D8    cmp         dword ptr [edi+38],3
>0068A5DC    jne         0068A6BF
 0068A5E2    push        1
 0068A5E4    xor         ecx,ecx
 0068A5E6    mov         edx,esi
 0068A5E8    mov         eax,ebx
 0068A5EA    call        0068A50C
 0068A5EF    mov         ebx,eax
 0068A5F1    push        5
 0068A5F3    push        0
 0068A5F5    push        2
 0068A5F7    mov         ecx,1
 0068A5FC    xor         edx,edx
 0068A5FE    mov         eax,ebx
 0068A600    call        0068A4A8
 0068A605    mov         ebx,eax
 0068A607    push        3F
 0068A609    push        0
 0068A60B    push        1
 0068A60D    mov         ecx,1
 0068A612    mov         edx,2
 0068A617    mov         eax,ebx
 0068A619    call        0068A4A8
 0068A61E    mov         ebx,eax
 0068A620    push        3F
 0068A622    push        0
 0068A624    push        1
 0068A626    mov         ecx,1
 0068A62B    mov         edx,1
 0068A630    mov         eax,ebx
 0068A632    call        0068A4A8
 0068A637    mov         ebx,eax
 0068A639    push        3F
 0068A63B    push        0
 0068A63D    push        2
 0068A63F    mov         ecx,6
 0068A644    xor         edx,edx
 0068A646    mov         eax,ebx
 0068A648    call        0068A4A8
 0068A64D    mov         ebx,eax
 0068A64F    push        3F
 0068A651    push        2
 0068A653    push        1
 0068A655    mov         ecx,1
 0068A65A    xor         edx,edx
 0068A65C    mov         eax,ebx
 0068A65E    call        0068A4A8
 0068A663    mov         ebx,eax
 0068A665    push        0
 0068A667    mov         ecx,1
 0068A66C    mov         edx,esi
 0068A66E    mov         eax,ebx
 0068A670    call        0068A50C
 0068A675    mov         ebx,eax
 0068A677    push        3F
 0068A679    push        1
 0068A67B    push        0
 0068A67D    mov         ecx,1
 0068A682    mov         edx,2
 0068A687    mov         eax,ebx
 0068A689    call        0068A4A8
 0068A68E    mov         ebx,eax
 0068A690    push        3F
 0068A692    push        1
 0068A694    push        0
 0068A696    mov         ecx,1
 0068A69B    mov         edx,1
 0068A6A0    mov         eax,ebx
 0068A6A2    call        0068A4A8
 0068A6A7    mov         ebx,eax
 0068A6A9    push        3F
 0068A6AB    push        1
 0068A6AD    push        0
 0068A6AF    mov         ecx,1
 0068A6B4    xor         edx,edx
 0068A6B6    mov         eax,ebx
 0068A6B8    call        0068A4A8
>0068A6BD    jmp         0068A736
 0068A6BF    push        1
 0068A6C1    xor         ecx,ecx
 0068A6C3    mov         edx,esi
 0068A6C5    mov         eax,ebx
 0068A6C7    call        0068A50C
 0068A6CC    mov         ebx,eax
 0068A6CE    push        5
 0068A6D0    push        0
 0068A6D2    push        2
 0068A6D4    mov         ecx,1
 0068A6D9    mov         edx,esi
 0068A6DB    mov         eax,ebx
 0068A6DD    call        0068A4D0
 0068A6E2    mov         ebx,eax
 0068A6E4    push        3F
 0068A6E6    push        0
 0068A6E8    push        2
 0068A6EA    mov         ecx,6
 0068A6EF    mov         edx,esi
 0068A6F1    mov         eax,ebx
 0068A6F3    call        0068A4D0
 0068A6F8    mov         ebx,eax
 0068A6FA    push        3F
 0068A6FC    push        2
 0068A6FE    push        1
 0068A700    mov         ecx,1
 0068A705    mov         edx,esi
 0068A707    mov         eax,ebx
 0068A709    call        0068A4D0
 0068A70E    mov         ebx,eax
 0068A710    push        0
 0068A712    mov         ecx,1
 0068A717    mov         edx,esi
 0068A719    mov         eax,ebx
 0068A71B    call        0068A50C
 0068A720    mov         ebx,eax
 0068A722    push        3F
 0068A724    push        1
 0068A726    push        0
 0068A728    mov         ecx,1
 0068A72D    mov         edx,esi
 0068A72F    mov         eax,ebx
 0068A731    call        0068A4D0
 0068A736    pop         edx
 0068A737    pop         edi
 0068A738    pop         esi
 0068A739    pop         ebx
 0068A73A    ret
*}
end;

//0068A73C
procedure jpeg_start_compress(var cinfo:jpeg_compress_struct; WriteAllTables:LongBool);
begin
{*
 0068A73C    push        ebx
 0068A73D    mov         ebx,eax
 0068A73F    push        esi
 0068A740    mov         esi,edx
 0068A742    cmp         dword ptr [ebx+10],64
>0068A746    je          0068A75D
 0068A748    mov         eax,dword ptr [ebx]
 0068A74A    mov         dword ptr [eax+14],12
 0068A751    mov         edx,dword ptr [ebx+10]
 0068A754    mov         dword ptr [eax+18],edx
 0068A757    mov         eax,ebx
 0068A759    mov         edx,dword ptr [eax]
 0068A75B    call        dword ptr [edx]
 0068A75D    test        esi,esi
>0068A75F    je          0068A76A
 0068A761    xor         edx,edx
 0068A763    mov         eax,ebx
 0068A765    call        @jpeg_suppress_tables
 0068A76A    mov         eax,ebx
 0068A76C    mov         edx,dword ptr [eax]
 0068A76E    call        dword ptr [edx+10]
 0068A771    mov         eax,ebx
 0068A773    mov         edx,dword ptr [eax+14]
 0068A776    call        dword ptr [edx+8]
 0068A779    mov         eax,ebx
 0068A77B    call        @jinit_compress_master
 0068A780    mov         eax,ebx
 0068A782    mov         edx,dword ptr [eax+144]
 0068A788    call        dword ptr [edx]
 0068A78A    xor         ecx,ecx
 0068A78C    mov         dword ptr [ebx+0D8],ecx
 0068A792    cmp         dword ptr [ebx+0A8],0
>0068A799    je          0068A7A2
 0068A79B    mov         eax,66
>0068A7A0    jmp         0068A7A7
 0068A7A2    mov         eax,65
 0068A7A7    mov         dword ptr [ebx+10],eax
 0068A7AA    pop         esi
 0068A7AB    pop         ebx
 0068A7AC    ret
*}
end;

//0068A7B0
function jpeg_write_scanlines(var cinfo:jpeg_compress_struct; scanlines:JSAMPARRAY; max_lines:Cardinal):Cardinal;
begin
{*
 0068A7B0    push        ebx
 0068A7B1    mov         ebx,eax
 0068A7B3    push        esi
 0068A7B4    push        edi
 0068A7B5    push        ecx
 0068A7B6    mov         edi,edx
 0068A7B8    cmp         dword ptr [ebx+10],65
 0068A7BC    mov         esi,ecx
>0068A7BE    je          0068A7D5
 0068A7C0    mov         eax,dword ptr [ebx]
 0068A7C2    mov         dword ptr [eax+14],12
 0068A7C9    mov         edx,dword ptr [ebx+10]
 0068A7CC    mov         dword ptr [eax+18],edx
 0068A7CF    mov         eax,ebx
 0068A7D1    mov         edx,dword ptr [eax]
 0068A7D3    call        dword ptr [edx]
 0068A7D5    mov         ecx,dword ptr [ebx+0D8]
 0068A7DB    cmp         ecx,dword ptr [ebx+1C]
>0068A7DE    jb          0068A7F3
 0068A7E0    mov         eax,dword ptr [ebx]
 0068A7E2    mov         dword ptr [eax+14],77
 0068A7E9    or          edx,0FFFFFFFF
 0068A7EC    mov         eax,ebx
 0068A7EE    mov         ecx,dword ptr [eax]
 0068A7F0    call        dword ptr [ecx+4]
 0068A7F3    mov         eax,dword ptr [ebx+8]
 0068A7F6    test        eax,eax
>0068A7F8    je          0068A810
 0068A7FA    mov         edx,dword ptr [ebx+0D8]
 0068A800    mov         dword ptr [eax+4],edx
 0068A803    mov         ecx,dword ptr [ebx+1C]
 0068A806    mov         dword ptr [eax+8],ecx
 0068A809    mov         eax,ebx
 0068A80B    mov         edx,dword ptr [eax+8]
 0068A80E    call        dword ptr [edx]
 0068A810    mov         ecx,dword ptr [ebx+144]
 0068A816    cmp         dword ptr [ecx+0C],0
>0068A81A    je          0068A827
 0068A81C    mov         eax,ebx
 0068A81E    mov         edx,dword ptr [eax+144]
 0068A824    call        dword ptr [edx+4]
 0068A827    mov         eax,dword ptr [ebx+1C]
 0068A82A    sub         eax,dword ptr [ebx+0D8]
 0068A830    cmp         eax,esi
>0068A832    jae         0068A836
 0068A834    mov         esi,eax
 0068A836    xor         eax,eax
 0068A838    mov         edx,edi
 0068A83A    mov         dword ptr [esp],eax
 0068A83D    mov         eax,ebx
 0068A83F    push        esi
 0068A840    lea         ecx,[esp+4]
 0068A844    mov         esi,dword ptr [eax+148]
 0068A84A    call        dword ptr [esi+4]
 0068A84D    mov         eax,dword ptr [esp]
 0068A850    add         dword ptr [ebx+0D8],eax
 0068A856    mov         eax,dword ptr [esp]
 0068A859    pop         edx
 0068A85A    pop         edi
 0068A85B    pop         esi
 0068A85C    pop         ebx
 0068A85D    ret
*}
end;

//0068A91C
procedure jpeg_CreateCompress(var cinfo:jpeg_compress_struct; version:Integer; structsize:Integer);
begin
{*
 0068A91C    push        ebx
 0068A91D    mov         ebx,eax
 0068A91F    xor         eax,eax
 0068A921    push        esi
 0068A922    mov         esi,ecx
 0068A924    mov         dword ptr [ebx+4],eax
 0068A927    cmp         edx,3D
>0068A92A    je          0068A945
 0068A92C    mov         eax,dword ptr [ebx]
 0068A92E    mov         dword ptr [eax+14],0A
 0068A935    mov         dword ptr [eax+18],3D
 0068A93C    mov         dword ptr [eax+1C],edx
 0068A93F    mov         eax,ebx
 0068A941    mov         edx,dword ptr [eax]
 0068A943    call        dword ptr [edx]
 0068A945    cmp         esi,168
>0068A94B    je          0068A966
 0068A94D    mov         eax,dword ptr [ebx]
 0068A94F    mov         dword ptr [eax+14],13
 0068A956    mov         dword ptr [eax+18],168
 0068A95D    mov         dword ptr [eax+1C],esi
 0068A960    mov         eax,ebx
 0068A962    mov         edx,dword ptr [eax]
 0068A964    call        dword ptr [edx]
 0068A966    mov         esi,dword ptr [ebx]
 0068A968    push        168
 0068A96D    push        0
 0068A96F    push        ebx
 0068A970    call        _memset
 0068A975    add         esp,0C
 0068A978    mov         dword ptr [ebx],esi
 0068A97A    xor         eax,eax
 0068A97C    mov         dword ptr [ebx+0C],eax
 0068A97F    mov         eax,ebx
 0068A981    call        @jinit_memory_mgr
 0068A986    xor         edx,edx
 0068A988    xor         ecx,ecx
 0068A98A    mov         dword ptr [ebx+8],edx
 0068A98D    mov         dword ptr [ebx+14],ecx
 0068A990    xor         eax,eax
 0068A992    lea         edx,[ebx+40]
 0068A995    mov         dword ptr [ebx+3C],eax
 0068A998    xor         eax,eax
 0068A99A    xor         ecx,ecx
 0068A99C    inc         eax
 0068A99D    mov         dword ptr [edx],ecx
 0068A99F    add         edx,4
 0068A9A2    cmp         eax,4
>0068A9A5    jl          0068A99A
 0068A9A7    xor         eax,eax
 0068A9A9    lea         edx,[ebx+50]
 0068A9AC    xor         ecx,ecx
 0068A9AE    inc         eax
 0068A9AF    mov         dword ptr [edx],ecx
 0068A9B1    xor         ecx,ecx
 0068A9B3    mov         dword ptr [edx+10],ecx
 0068A9B6    add         edx,4
 0068A9B9    cmp         eax,4
>0068A9BC    jl          0068A9AC
 0068A9BE    xor         eax,eax
 0068A9C0    mov         dword ptr [ebx+28],eax
 0068A9C3    mov         dword ptr [ebx+2C],3FF00000
 0068A9CA    mov         dword ptr [ebx+10],64
 0068A9D1    pop         esi
 0068A9D2    pop         ebx
 0068A9D3    ret
*}
end;

//0068A9E4
procedure @jpeg_suppress_tables;
begin
{*
 0068A9E4    push        ebx
 0068A9E5    push        esi
 0068A9E6    xor         ecx,ecx
 0068A9E8    lea         ebx,[eax+40]
 0068A9EB    mov         esi,dword ptr [ebx]
 0068A9ED    test        esi,esi
>0068A9EF    je          0068A9F7
 0068A9F1    mov         dword ptr [esi+80],edx
 0068A9F7    inc         ecx
 0068A9F8    add         ebx,4
 0068A9FB    cmp         ecx,4
>0068A9FE    jl          0068A9EB
 0068AA00    xor         ecx,ecx
 0068AA02    add         eax,50
 0068AA05    mov         ebx,dword ptr [eax]
 0068AA07    test        ebx,ebx
>0068AA09    je          0068AA11
 0068AA0B    mov         dword ptr [ebx+114],edx
 0068AA11    mov         ebx,dword ptr [eax+10]
 0068AA14    test        ebx,ebx
>0068AA16    je          0068AA1E
 0068AA18    mov         dword ptr [ebx+114],edx
 0068AA1E    inc         ecx
 0068AA1F    add         eax,4
 0068AA22    cmp         ecx,4
>0068AA25    jl          0068AA05
 0068AA27    pop         esi
 0068AA28    pop         ebx
 0068AA29    ret
*}
end;

//0068AA2C
procedure jpeg_finish_compress(var cinfo:jpeg_compress_struct);
begin
{*
 0068AA2C    push        ebx
 0068AA2D    mov         ebx,eax
 0068AA2F    push        esi
 0068AA30    mov         eax,dword ptr [ebx+10]
 0068AA33    cmp         eax,65
>0068AA36    je          0068AA3D
 0068AA38    cmp         eax,66
>0068AA3B    jne         0068AA64
 0068AA3D    mov         edx,dword ptr [ebx+0D8]
 0068AA43    cmp         edx,dword ptr [ebx+1C]
>0068AA46    jae         0068AA57
 0068AA48    mov         ecx,dword ptr [ebx]
 0068AA4A    mov         eax,ebx
 0068AA4C    mov         dword ptr [ecx+14],42
 0068AA53    mov         edx,dword ptr [eax]
 0068AA55    call        dword ptr [edx]
 0068AA57    mov         eax,ebx
 0068AA59    mov         edx,dword ptr [eax+144]
 0068AA5F    call        dword ptr [edx+8]
>0068AA62    jmp         0068AADD
 0068AA64    cmp         dword ptr [ebx+10],67
>0068AA68    je          0068AADD
 0068AA6A    mov         eax,dword ptr [ebx]
 0068AA6C    mov         dword ptr [eax+14],12
 0068AA73    mov         edx,dword ptr [ebx+10]
 0068AA76    mov         dword ptr [eax+18],edx
 0068AA79    mov         eax,ebx
 0068AA7B    mov         edx,dword ptr [eax]
 0068AA7D    call        dword ptr [edx]
>0068AA7F    jmp         0068AADD
 0068AA81    mov         eax,ebx
 0068AA83    mov         edx,dword ptr [eax+144]
 0068AA89    call        dword ptr [edx]
 0068AA8B    xor         esi,esi
>0068AA8D    jmp         0068AACA
 0068AA8F    mov         eax,dword ptr [ebx+8]
 0068AA92    test        eax,eax
>0068AA94    je          0068AAA9
 0068AA96    mov         dword ptr [eax+4],esi
 0068AA99    mov         edx,dword ptr [ebx+0E8]
 0068AA9F    mov         dword ptr [eax+8],edx
 0068AAA2    mov         eax,ebx
 0068AAA4    mov         edx,dword ptr [eax+8]
 0068AAA7    call        dword ptr [edx]
 0068AAA9    xor         edx,edx
 0068AAAB    mov         eax,ebx
 0068AAAD    mov         ecx,dword ptr [eax+150]
 0068AAB3    call        dword ptr [ecx+4]
 0068AAB6    test        eax,eax
>0068AAB8    jne         0068AAC9
 0068AABA    mov         eax,dword ptr [ebx]
 0068AABC    mov         dword ptr [eax+14],16
 0068AAC3    mov         eax,ebx
 0068AAC5    mov         edx,dword ptr [eax]
 0068AAC7    call        dword ptr [edx]
 0068AAC9    inc         esi
 0068AACA    cmp         esi,dword ptr [ebx+0E8]
>0068AAD0    jb          0068AA8F
 0068AAD2    mov         eax,ebx
 0068AAD4    mov         edx,dword ptr [eax+144]
 0068AADA    call        dword ptr [edx+8]
 0068AADD    mov         ecx,dword ptr [ebx+144]
 0068AAE3    cmp         dword ptr [ecx+10],0
>0068AAE7    je          0068AA81
 0068AAE9    mov         eax,ebx
 0068AAEB    mov         edx,dword ptr [eax+154]
 0068AAF1    call        dword ptr [edx+10]
 0068AAF4    mov         eax,ebx
 0068AAF6    mov         edx,dword ptr [eax+14]
 0068AAF9    call        dword ptr [edx+10]
 0068AAFC    mov         eax,ebx
 0068AAFE    call        @jpeg_abort
 0068AB03    pop         esi
 0068AB04    pop         ebx
 0068AB05    ret
*}
end;

//0068ABB0
procedure _DF_.;
begin
{*
 0068ABB0    push        ebx
 0068ABB1    mov         ebx,eax
 0068ABB3    push        esi
 0068ABB4    mov         eax,dword ptr [ebx+14]
 0068ABB7    mov         ecx,dword ptr [eax]
 0068ABB9    inc         dword ptr [eax]
 0068ABBB    mov         byte ptr [ecx],dl
 0068ABBD    dec         dword ptr [eax+4]
>0068ABC0    jne         0068ABDC
 0068ABC2    mov         esi,eax
 0068ABC4    mov         eax,ebx
 0068ABC6    call        dword ptr [esi+0C]
 0068ABC9    test        eax,eax
>0068ABCB    jne         0068ABDC
 0068ABCD    mov         edx,dword ptr [ebx]
 0068ABCF    mov         eax,ebx
 0068ABD1    mov         dword ptr [edx+14],16
 0068ABD8    mov         edx,dword ptr [eax]
 0068ABDA    call        dword ptr [edx]
 0068ABDC    pop         esi
 0068ABDD    pop         ebx
 0068ABDE    ret
*}
end;

//0068ABE0
{*function sub_0068ABE0(?:?; ?:?):?;
begin
 0068ABE0    push        ebx
 0068ABE1    push        esi
 0068ABE2    mov         esi,edx
 0068ABE4    mov         ebx,eax
 0068ABE6    mov         edx,0FF
 0068ABEB    mov         eax,ebx
 0068ABED    call        _DF_.
 0068ABF2    mov         edx,esi
 0068ABF4    mov         eax,ebx
 0068ABF6    call        _DF_.
 0068ABFB    pop         esi
 0068ABFC    pop         ebx
 0068ABFD    ret
end;*}

//0068AC00
{*function sub_0068AC00(?:?; ?:?):?;
begin
 0068AC00    push        ebx
 0068AC01    push        esi
 0068AC02    mov         esi,edx
 0068AC04    mov         ebx,eax
 0068AC06    mov         edx,esi
 0068AC08    mov         eax,ebx
 0068AC0A    sar         edx,8
 0068AC0D    and         edx,0FF
 0068AC13    call        _DF_.
 0068AC18    mov         edx,esi
 0068AC1A    mov         eax,ebx
 0068AC1C    and         edx,0FF
 0068AC22    call        _DF_.
 0068AC27    pop         esi
 0068AC28    pop         ebx
 0068AC29    ret
end;*}

//0068AC2C
{*function sub_0068AC2C(?:?; ?:?):?;
begin
 0068AC2C    push        ebx
 0068AC2D    push        esi
 0068AC2E    push        edi
 0068AC2F    push        ebp
 0068AC30    add         esp,0FFFFFFF4
 0068AC33    mov         dword ptr [esp],edx
 0068AC36    mov         esi,eax
 0068AC38    mov         eax,dword ptr [esp]
 0068AC3B    mov         ebp,dword ptr [esi+eax*4+40]
 0068AC3F    test        ebp,ebp
>0068AC41    jne         0068AC58
 0068AC43    mov         eax,dword ptr [esi]
 0068AC45    mov         dword ptr [eax+14],33
 0068AC4C    mov         edx,dword ptr [esp]
 0068AC4F    mov         dword ptr [eax+18],edx
 0068AC52    mov         eax,esi
 0068AC54    mov         edx,dword ptr [eax]
 0068AC56    call        dword ptr [edx]
 0068AC58    xor         edi,edi
 0068AC5A    xor         ebx,ebx
 0068AC5C    mov         eax,ebp
 0068AC5E    cmp         word ptr [eax],0FF
>0068AC63    jbe         0068AC6A
 0068AC65    mov         edi,1
 0068AC6A    inc         ebx
 0068AC6B    add         eax,2
 0068AC6E    cmp         ebx,40
>0068AC71    jl          0068AC5E
 0068AC73    cmp         dword ptr [ebp+80],0
>0068AC7A    jne         0068AD03
 0068AC80    mov         edx,0DB
 0068AC85    mov         eax,esi
 0068AC87    call        0068ABE0
 0068AC8C    test        edi,edi
>0068AC8E    je          0068AC97
 0068AC90    mov         edx,83
>0068AC95    jmp         0068AC9C
 0068AC97    mov         edx,43
 0068AC9C    mov         eax,esi
 0068AC9E    call        0068AC00
 0068ACA3    mov         edx,edi
 0068ACA5    mov         eax,esi
 0068ACA7    shl         edx,4
 0068ACAA    add         edx,dword ptr [esp]
 0068ACAD    call        _DF_.
 0068ACB2    mov         dword ptr [esp+8],6E9580
 0068ACBA    xor         ebx,ebx
 0068ACBC    mov         eax,dword ptr [esp+8]
 0068ACC0    test        edi,edi
 0068ACC2    mov         edx,dword ptr [eax]
 0068ACC4    movzx       ecx,word ptr [ebp+edx*2]
 0068ACC9    mov         dword ptr [esp+4],ecx
>0068ACCD    je          0068ACDD
 0068ACCF    mov         edx,dword ptr [esp+4]
 0068ACD3    mov         eax,esi
 0068ACD5    shr         edx,8
 0068ACD8    call        _DF_.
 0068ACDD    mov         edx,dword ptr [esp+4]
 0068ACE1    mov         eax,esi
 0068ACE3    and         edx,0FF
 0068ACE9    call        _DF_.
 0068ACEE    inc         ebx
 0068ACEF    add         dword ptr [esp+8],4
 0068ACF4    cmp         ebx,40
>0068ACF7    jl          0068ACBC
 0068ACF9    mov         dword ptr [ebp+80],1
 0068AD03    mov         eax,edi
 0068AD05    add         esp,0C
 0068AD08    pop         ebp
 0068AD09    pop         edi
 0068AD0A    pop         esi
 0068AD0B    pop         ebx
 0068AD0C    ret
end;*}

//0068AD10
{*procedure sub_0068AD10(?:?; ?:?; ?:?);
begin
 0068AD10    push        ebx
 0068AD11    push        esi
 0068AD12    push        edi
 0068AD13    push        ebp
 0068AD14    add         esp,0FFFFFFF4
 0068AD17    mov         dword ptr [esp],edx
 0068AD1A    mov         esi,eax
 0068AD1C    test        ecx,ecx
>0068AD1E    je          0068AD2D
 0068AD20    mov         eax,dword ptr [esp]
 0068AD23    mov         edi,dword ptr [esi+eax*4+60]
 0068AD27    add         dword ptr [esp],10
>0068AD2B    jmp         0068AD34
 0068AD2D    mov         eax,dword ptr [esp]
 0068AD30    mov         edi,dword ptr [esi+eax*4+50]
 0068AD34    test        edi,edi
>0068AD36    jne         0068AD4D
 0068AD38    mov         eax,dword ptr [esi]
 0068AD3A    mov         dword ptr [eax+14],31
 0068AD41    mov         edx,dword ptr [esp]
 0068AD44    mov         dword ptr [eax+18],edx
 0068AD47    mov         eax,esi
 0068AD49    mov         edx,dword ptr [eax]
 0068AD4B    call        dword ptr [edx]
 0068AD4D    cmp         dword ptr [edi+114],0
>0068AD54    jne         0068ADE3
 0068AD5A    mov         edx,0C4
 0068AD5F    mov         eax,esi
 0068AD61    call        0068ABE0
 0068AD66    xor         ebp,ebp
 0068AD68    mov         ebx,1
 0068AD6D    lea         eax,[edi+1]
 0068AD70    xor         edx,edx
 0068AD72    inc         ebx
 0068AD73    mov         dl,byte ptr [eax]
 0068AD75    inc         eax
 0068AD76    add         ebp,edx
 0068AD78    cmp         ebx,10
>0068AD7B    jle         0068AD70
 0068AD7D    lea         edx,[ebp+13]
 0068AD80    mov         eax,esi
 0068AD82    call        0068AC00
 0068AD87    mov         edx,dword ptr [esp]
 0068AD8A    mov         eax,esi
 0068AD8C    call        _DF_.
 0068AD91    mov         ebx,1
 0068AD96    lea         eax,[edi+1]
 0068AD99    mov         dword ptr [esp+4],eax
 0068AD9D    mov         edx,dword ptr [esp+4]
 0068ADA1    movzx       edx,byte ptr [edx]
 0068ADA4    mov         eax,esi
 0068ADA6    call        _DF_.
 0068ADAB    inc         ebx
 0068ADAC    inc         dword ptr [esp+4]
 0068ADB0    cmp         ebx,10
>0068ADB3    jle         0068AD9D
 0068ADB5    xor         ebx,ebx
 0068ADB7    lea         eax,[edi+11]
 0068ADBA    mov         dword ptr [esp+8],eax
 0068ADBE    cmp         ebp,ebx
>0068ADC0    jle         0068ADD9
 0068ADC2    mov         edx,dword ptr [esp+8]
 0068ADC6    movzx       edx,byte ptr [edx]
 0068ADC9    mov         eax,esi
 0068ADCB    call        _DF_.
 0068ADD0    inc         ebx
 0068ADD1    inc         dword ptr [esp+8]
 0068ADD5    cmp         ebp,ebx
>0068ADD7    jg          0068ADC2
 0068ADD9    mov         dword ptr [edi+114],1
 0068ADE3    add         esp,0C
 0068ADE6    pop         ebp
 0068ADE7    pop         edi
 0068ADE8    pop         esi
 0068ADE9    pop         ebx
 0068ADEA    ret
end;*}

//0068ADEC
procedure sub_0068ADEC;
begin
{*
 0068ADEC    ret
*}
end;

//0068ADF0
{*procedure sub_0068ADF0(?:?);
begin
 0068ADF0    push        ebx
 0068ADF1    mov         ebx,eax
 0068ADF3    mov         edx,0DD
 0068ADF8    mov         eax,ebx
 0068ADFA    call        0068ABE0
 0068ADFF    mov         edx,4
 0068AE04    mov         eax,ebx
 0068AE06    call        0068AC00
 0068AE0B    mov         edx,dword ptr [ebx+0C0]
 0068AE11    mov         eax,ebx
 0068AE13    call        0068AC00
 0068AE18    pop         ebx
 0068AE19    ret
end;*}

//0068AE1C
{*function sub_0068AE1C(?:?):?;
begin
 0068AE1C    push        ebx
 0068AE1D    push        esi
 0068AE1E    push        edi
 0068AE1F    mov         ebx,eax
 0068AE21    mov         eax,ebx
 0068AE23    call        0068ABE0
 0068AE28    mov         edx,dword ptr [ebx+34]
 0068AE2B    mov         eax,ebx
 0068AE2D    lea         edx,[edx+edx*2]
 0068AE30    add         edx,8
 0068AE33    call        0068AC00
 0068AE38    cmp         dword ptr [ebx+1C],0FFFF
>0068AE3F    jg          0068AE4A
 0068AE41    cmp         dword ptr [ebx+18],0FFFF
>0068AE48    jle         0068AE60
 0068AE4A    mov         eax,dword ptr [ebx]
 0068AE4C    mov         dword ptr [eax+14],28
 0068AE53    mov         dword ptr [eax+18],0FFFF
 0068AE5A    mov         eax,ebx
 0068AE5C    mov         edx,dword ptr [eax]
 0068AE5E    call        dword ptr [edx]
 0068AE60    mov         edx,dword ptr [ebx+30]
 0068AE63    mov         eax,ebx
 0068AE65    call        _DF_.
 0068AE6A    mov         edx,dword ptr [ebx+1C]
 0068AE6D    mov         eax,ebx
 0068AE6F    call        0068AC00
 0068AE74    mov         edx,dword ptr [ebx+18]
 0068AE77    mov         eax,ebx
 0068AE79    call        0068AC00
 0068AE7E    mov         edx,dword ptr [ebx+34]
 0068AE81    mov         eax,ebx
 0068AE83    call        _DF_.
 0068AE88    xor         edi,edi
 0068AE8A    mov         esi,dword ptr [ebx+3C]
>0068AE8D    jmp         0068AEB6
 0068AE8F    mov         edx,dword ptr [esi]
 0068AE91    mov         eax,ebx
 0068AE93    call        _DF_.
 0068AE98    mov         edx,dword ptr [esi+8]
 0068AE9B    mov         eax,ebx
 0068AE9D    shl         edx,4
 0068AEA0    add         edx,dword ptr [esi+0C]
 0068AEA3    call        _DF_.
 0068AEA8    mov         edx,dword ptr [esi+10]
 0068AEAB    mov         eax,ebx
 0068AEAD    call        _DF_.
 0068AEB2    inc         edi
 0068AEB3    add         esi,54
 0068AEB6    cmp         edi,dword ptr [ebx+34]
>0068AEB9    jl          0068AE8F
 0068AEBB    pop         edi
 0068AEBC    pop         esi
 0068AEBD    pop         ebx
 0068AEBE    ret
end;*}

//0068AEC0
{*procedure sub_0068AEC0(?:?);
begin
 0068AEC0    push        ebx
 0068AEC1    push        esi
 0068AEC2    push        edi
 0068AEC3    push        ebp
 0068AEC4    mov         ebx,eax
 0068AEC6    mov         edx,0DA
 0068AECB    mov         eax,ebx
 0068AECD    call        0068ABE0
 0068AED2    mov         edx,dword ptr [ebx+0EC]
 0068AED8    mov         eax,ebx
 0068AEDA    add         edx,edx
 0068AEDC    add         edx,6
 0068AEDF    call        0068AC00
 0068AEE4    mov         edx,dword ptr [ebx+0EC]
 0068AEEA    mov         eax,ebx
 0068AEEC    call        _DF_.
 0068AEF1    xor         ebp,ebp
 0068AEF3    lea         edi,[ebx+0F0]
>0068AEF9    jmp         0068AF48
 0068AEFB    mov         esi,dword ptr [edi]
 0068AEFD    mov         eax,ebx
 0068AEFF    mov         edx,dword ptr [esi]
 0068AF01    call        _DF_.
 0068AF06    mov         eax,dword ptr [esi+14]
 0068AF09    mov         edx,dword ptr [esi+18]
 0068AF0C    cmp         dword ptr [ebx+0DC],0
>0068AF13    je          0068AF38
 0068AF15    cmp         dword ptr [ebx+134],0
>0068AF1C    jne         0068AF36
 0068AF1E    xor         edx,edx
 0068AF20    cmp         dword ptr [ebx+13C],0
>0068AF27    je          0068AF38
 0068AF29    cmp         dword ptr [ebx+0AC],0
>0068AF30    jne         0068AF38
 0068AF32    xor         eax,eax
>0068AF34    jmp         0068AF38
 0068AF36    xor         eax,eax
 0068AF38    shl         eax,4
 0068AF3B    add         edx,eax
 0068AF3D    mov         eax,ebx
 0068AF3F    call        _DF_.
 0068AF44    inc         ebp
 0068AF45    add         edi,4
 0068AF48    cmp         ebp,dword ptr [ebx+0EC]
>0068AF4E    jl          0068AEFB
 0068AF50    mov         edx,dword ptr [ebx+134]
 0068AF56    mov         eax,ebx
 0068AF58    call        _DF_.
 0068AF5D    mov         edx,dword ptr [ebx+138]
 0068AF63    mov         eax,ebx
 0068AF65    call        _DF_.
 0068AF6A    mov         edx,dword ptr [ebx+13C]
 0068AF70    mov         eax,ebx
 0068AF72    shl         edx,4
 0068AF75    add         edx,dword ptr [ebx+140]
 0068AF7B    call        _DF_.
 0068AF80    pop         ebp
 0068AF81    pop         edi
 0068AF82    pop         esi
 0068AF83    pop         ebx
 0068AF84    ret
end;*}

//0068AF88
{*procedure sub_0068AF88(?:?);
begin
 0068AF88    push        ebx
 0068AF89    mov         ebx,eax
 0068AF8B    mov         edx,0E0
 0068AF90    mov         eax,ebx
 0068AF92    call        0068ABE0
 0068AF97    mov         edx,10
 0068AF9C    mov         eax,ebx
 0068AF9E    call        0068AC00
 0068AFA3    mov         edx,4A
 0068AFA8    mov         eax,ebx
 0068AFAA    call        _DF_.
 0068AFAF    mov         edx,46
 0068AFB4    mov         eax,ebx
 0068AFB6    call        _DF_.
 0068AFBB    mov         edx,49
 0068AFC0    mov         eax,ebx
 0068AFC2    call        _DF_.
 0068AFC7    mov         edx,46
 0068AFCC    mov         eax,ebx
 0068AFCE    call        _DF_.
 0068AFD3    xor         edx,edx
 0068AFD5    mov         eax,ebx
 0068AFD7    call        _DF_.
 0068AFDC    mov         edx,1
 0068AFE1    mov         eax,ebx
 0068AFE3    call        _DF_.
 0068AFE8    mov         edx,1
 0068AFED    mov         eax,ebx
 0068AFEF    call        _DF_.
 0068AFF4    xor         edx,edx
 0068AFF6    mov         eax,ebx
 0068AFF8    mov         dl,byte ptr [ebx+0CC]
 0068AFFE    call        _DF_.
 0068B003    movzx       edx,word ptr [ebx+0CE]
 0068B00A    mov         eax,ebx
 0068B00C    call        0068AC00
 0068B011    movzx       edx,word ptr [ebx+0D0]
 0068B018    mov         eax,ebx
 0068B01A    call        0068AC00
 0068B01F    xor         edx,edx
 0068B021    mov         eax,ebx
 0068B023    call        _DF_.
 0068B028    xor         edx,edx
 0068B02A    mov         eax,ebx
 0068B02C    call        _DF_.
 0068B031    pop         ebx
 0068B032    ret
end;*}

//0068B034
{*function sub_0068B034(?:?):?;
begin
 0068B034    push        ebx
 0068B035    mov         ebx,eax
 0068B037    mov         edx,0EE
 0068B03C    mov         eax,ebx
 0068B03E    call        0068ABE0
 0068B043    mov         edx,0E
 0068B048    mov         eax,ebx
 0068B04A    call        0068AC00
 0068B04F    mov         edx,41
 0068B054    mov         eax,ebx
 0068B056    call        _DF_.
 0068B05B    mov         edx,64
 0068B060    mov         eax,ebx
 0068B062    call        _DF_.
 0068B067    mov         edx,6F
 0068B06C    mov         eax,ebx
 0068B06E    call        _DF_.
 0068B073    mov         edx,62
 0068B078    mov         eax,ebx
 0068B07A    call        _DF_.
 0068B07F    mov         edx,65
 0068B084    mov         eax,ebx
 0068B086    call        _DF_.
 0068B08B    mov         edx,64
 0068B090    mov         eax,ebx
 0068B092    call        0068AC00
 0068B097    xor         edx,edx
 0068B099    mov         eax,ebx
 0068B09B    call        0068AC00
 0068B0A0    xor         edx,edx
 0068B0A2    mov         eax,ebx
 0068B0A4    call        0068AC00
 0068B0A9    mov         ecx,dword ptr [ebx+38]
 0068B0AC    sub         ecx,3
>0068B0AF    je          0068B0B8
 0068B0B1    sub         ecx,2
>0068B0B4    je          0068B0C6
>0068B0B6    jmp         0068B0D4
 0068B0B8    mov         edx,1
 0068B0BD    mov         eax,ebx
 0068B0BF    call        _DF_.
 0068B0C4    pop         ebx
 0068B0C5    ret
 0068B0C6    mov         edx,2
 0068B0CB    mov         eax,ebx
 0068B0CD    call        _DF_.
 0068B0D2    pop         ebx
 0068B0D3    ret
 0068B0D4    xor         edx,edx
 0068B0D6    mov         eax,ebx
 0068B0D8    call        _DF_.
 0068B0DD    pop         ebx
 0068B0DE    ret
end;*}

//0068B358
procedure @jinit_marker_writer;
begin
{*
 0068B358    push        ebx
 0068B359    mov         ebx,eax
 0068B35B    mov         eax,ebx
 0068B35D    push        esi
 0068B35E    mov         ecx,18
 0068B363    mov         edx,1
 0068B368    mov         esi,dword ptr [eax+4]
 0068B36B    call        dword ptr [esi]
 0068B36D    mov         esi,eax
 0068B36F    mov         dword ptr [ebx+154],esi
 0068B375    mov         dword ptr [esi],68B0E0
 0068B37B    mov         dword ptr [esi+4],68B124
 0068B382    mov         dword ptr [esi+8],68B158
 0068B389    mov         dword ptr [esi+0C],68B230
 0068B390    mov         dword ptr [esi+10],68B2D4
 0068B397    mov         dword ptr [esi+14],68B2E0
 0068B39E    pop         esi
 0068B39F    pop         ebx
 0068B3A0    ret
*}
end;

//0068B3A4
procedure _DF_.;
begin
{*
 0068B3A4    push        ebx
 0068B3A5    mov         ebx,eax
 0068B3A7    push        esi
 0068B3A8    push        edi
 0068B3A9    cmp         dword ptr [ebx+1C],0
>0068B3AD    jbe         0068B3C1
 0068B3AF    cmp         dword ptr [ebx+18],0
>0068B3B3    jbe         0068B3C1
 0068B3B5    cmp         dword ptr [ebx+34],0
>0068B3B9    jle         0068B3C1
 0068B3BB    cmp         dword ptr [ebx+20],0
>0068B3BF    jg          0068B3D0
 0068B3C1    mov         eax,dword ptr [ebx]
 0068B3C3    mov         dword ptr [eax+14],1F
 0068B3CA    mov         eax,ebx
 0068B3CC    mov         edx,dword ptr [eax]
 0068B3CE    call        dword ptr [edx]
 0068B3D0    cmp         dword ptr [ebx+1C],0FFDC
>0068B3D7    jg          0068B3E2
 0068B3D9    cmp         dword ptr [ebx+18],0FFDC
>0068B3E0    jle         0068B3F8
 0068B3E2    mov         eax,dword ptr [ebx]
 0068B3E4    mov         dword ptr [eax+14],28
 0068B3EB    mov         dword ptr [eax+18],0FFDC
 0068B3F2    mov         eax,ebx
 0068B3F4    mov         edx,dword ptr [eax]
 0068B3F6    call        dword ptr [edx]
 0068B3F8    mov         eax,dword ptr [ebx+18]
 0068B3FB    imul        dword ptr [ebx+20]
 0068B3FE    mov         edx,eax
 0068B400    cmp         eax,edx
>0068B402    je          0068B413
 0068B404    mov         ecx,dword ptr [ebx]
 0068B406    mov         eax,ebx
 0068B408    mov         dword ptr [ecx+14],45
 0068B40F    mov         edx,dword ptr [eax]
 0068B411    call        dword ptr [edx]
 0068B413    cmp         dword ptr [ebx+30],8
>0068B417    je          0068B42E
 0068B419    mov         eax,dword ptr [ebx]
 0068B41B    mov         dword ptr [eax+14],0D
 0068B422    mov         edx,dword ptr [ebx+30]
 0068B425    mov         dword ptr [eax+18],edx
 0068B428    mov         eax,ebx
 0068B42A    mov         edx,dword ptr [eax]
 0068B42C    call        dword ptr [edx]
 0068B42E    cmp         dword ptr [ebx+34],0A
>0068B432    jle         0068B450
 0068B434    mov         eax,dword ptr [ebx]
 0068B436    mov         dword ptr [eax+14],18
 0068B43D    mov         edx,dword ptr [ebx+34]
 0068B440    mov         dword ptr [eax+18],edx
 0068B443    mov         dword ptr [eax+1C],0A
 0068B44A    mov         eax,ebx
 0068B44C    mov         edx,dword ptr [eax]
 0068B44E    call        dword ptr [edx]
 0068B450    mov         dword ptr [ebx+0E0],1
 0068B45A    mov         dword ptr [ebx+0E4],1
 0068B464    xor         edi,edi
 0068B466    mov         esi,dword ptr [ebx+3C]
>0068B469    jmp         0068B4CE
 0068B46B    mov         eax,dword ptr [esi+8]
 0068B46E    test        eax,eax
>0068B470    jle         0068B483
 0068B472    cmp         eax,4
>0068B475    jg          0068B483
 0068B477    cmp         dword ptr [esi+0C],0
>0068B47B    jle         0068B483
 0068B47D    cmp         dword ptr [esi+0C],4
>0068B481    jle         0068B492
 0068B483    mov         edx,dword ptr [ebx]
 0068B485    mov         eax,ebx
 0068B487    mov         dword ptr [edx+14],10
 0068B48E    mov         edx,dword ptr [eax]
 0068B490    call        dword ptr [edx]
 0068B492    mov         ecx,dword ptr [ebx+0E0]
 0068B498    cmp         ecx,dword ptr [esi+8]
>0068B49B    jle         0068B4A5
 0068B49D    mov         eax,dword ptr [ebx+0E0]
>0068B4A3    jmp         0068B4A8
 0068B4A5    mov         eax,dword ptr [esi+8]
 0068B4A8    mov         dword ptr [ebx+0E0],eax
 0068B4AE    mov         edx,dword ptr [ebx+0E4]
 0068B4B4    cmp         edx,dword ptr [esi+0C]
>0068B4B7    jle         0068B4C1
 0068B4B9    mov         ecx,dword ptr [ebx+0E4]
>0068B4BF    jmp         0068B4C4
 0068B4C1    mov         ecx,dword ptr [esi+0C]
 0068B4C4    mov         dword ptr [ebx+0E4],ecx
 0068B4CA    inc         edi
 0068B4CB    add         esi,54
 0068B4CE    cmp         edi,dword ptr [ebx+34]
>0068B4D1    jl          0068B46B
 0068B4D3    xor         edi,edi
 0068B4D5    mov         esi,dword ptr [ebx+3C]
>0068B4D8    jmp         0068B549
 0068B4DA    mov         dword ptr [esi+4],edi
 0068B4DD    inc         edi
 0068B4DE    mov         dword ptr [esi+24],8
 0068B4E5    mov         eax,dword ptr [ebx+18]
 0068B4E8    mov         ecx,dword ptr [ebx+0E0]
 0068B4EE    imul        dword ptr [esi+8]
 0068B4F1    shl         ecx,3
 0068B4F4    add         eax,ecx
 0068B4F6    dec         eax
 0068B4F7    cdq
 0068B4F8    idiv        eax,ecx
 0068B4FA    mov         dword ptr [esi+1C],eax
 0068B4FD    mov         eax,dword ptr [ebx+1C]
 0068B500    mov         ecx,dword ptr [ebx+0E4]
 0068B506    imul        dword ptr [esi+0C]
 0068B509    shl         ecx,3
 0068B50C    add         eax,ecx
 0068B50E    dec         eax
 0068B50F    cdq
 0068B510    idiv        eax,ecx
 0068B512    mov         dword ptr [esi+20],eax
 0068B515    mov         eax,dword ptr [ebx+18]
 0068B518    mov         ecx,dword ptr [ebx+0E0]
 0068B51E    imul        dword ptr [esi+8]
 0068B521    add         eax,ecx
 0068B523    dec         eax
 0068B524    cdq
 0068B525    idiv        eax,ecx
 0068B527    mov         dword ptr [esi+28],eax
 0068B52A    mov         eax,dword ptr [ebx+1C]
 0068B52D    mov         ecx,dword ptr [ebx+0E4]
 0068B533    imul        dword ptr [esi+0C]
 0068B536    add         eax,ecx
 0068B538    dec         eax
 0068B539    cdq
 0068B53A    idiv        eax,ecx
 0068B53C    mov         dword ptr [esi+2C],eax
 0068B53F    mov         dword ptr [esi+30],1
 0068B546    add         esi,54
 0068B549    cmp         edi,dword ptr [ebx+34]
>0068B54C    jl          0068B4DA
 0068B54E    mov         ecx,dword ptr [ebx+0E4]
 0068B554    shl         ecx,3
 0068B557    mov         eax,ecx
 0068B559    add         eax,dword ptr [ebx+1C]
 0068B55C    dec         eax
 0068B55D    cdq
 0068B55E    idiv        eax,ecx
 0068B560    mov         dword ptr [ebx+0E8],eax
 0068B566    pop         edi
 0068B567    pop         esi
 0068B568    pop         ebx
 0068B569    ret
*}
end;

//0068B56C
{*procedure sub_0068B56C(?:?);
begin
 0068B56C    push        ebx
 0068B56D    push        esi
 0068B56E    push        edi
 0068B56F    mov         esi,eax
 0068B571    push        ebp
 0068B572    add         esp,0FFFFF5B8
 0068B578    cmp         dword ptr [esi+0A0],0
>0068B57F    jg          0068B597
 0068B581    mov         eax,dword ptr [esi]
 0068B583    xor         ecx,ecx
 0068B585    mov         dword ptr [eax+14],11
 0068B58C    mov         edx,dword ptr [esi]
 0068B58E    mov         eax,esi
 0068B590    mov         dword ptr [edx+18],ecx
 0068B593    mov         edx,dword ptr [eax]
 0068B595    call        dword ptr [edx]
 0068B597    mov         ecx,dword ptr [esi+0A4]
 0068B59D    mov         dword ptr [esp],ecx
 0068B5A0    mov         eax,dword ptr [esp]
 0068B5A3    cmp         dword ptr [eax+14],0
>0068B5A7    jne         0068B5B2
 0068B5A9    mov         edx,dword ptr [esp]
 0068B5AC    cmp         dword ptr [edx+18],3F
>0068B5B0    je          0068B5E8
 0068B5B2    mov         dword ptr [esi+0DC],1
 0068B5BC    lea         ebx,[esp+48]
 0068B5C0    xor         eax,eax
 0068B5C2    mov         dword ptr [esp+0C],eax
>0068B5C6    jmp         0068B5DD
 0068B5C8    xor         edi,edi
 0068B5CA    mov         dword ptr [ebx],0FFFFFFFF
 0068B5D0    add         ebx,4
 0068B5D3    inc         edi
 0068B5D4    cmp         edi,40
>0068B5D7    jl          0068B5CA
 0068B5D9    inc         dword ptr [esp+0C]
 0068B5DD    mov         eax,dword ptr [esp+0C]
 0068B5E1    cmp         eax,dword ptr [esi+34]
>0068B5E4    jl          0068B5C8
>0068B5E6    jmp         0068B610
 0068B5E8    xor         edx,edx
 0068B5EA    xor         ecx,ecx
 0068B5EC    mov         dword ptr [esi+0DC],edx
 0068B5F2    mov         dword ptr [esp+0C],ecx
 0068B5F6    lea         eax,[esp+20]
>0068B5FA    jmp         0068B607
 0068B5FC    xor         edx,edx
 0068B5FE    mov         dword ptr [eax],edx
 0068B600    inc         dword ptr [esp+0C]
 0068B604    add         eax,4
 0068B607    mov         ecx,dword ptr [esp+0C]
 0068B60B    cmp         ecx,dword ptr [esi+34]
>0068B60E    jl          0068B5FC
 0068B610    mov         dword ptr [esp+4],1
>0068B618    jmp         0068B8CB
 0068B61D    mov         eax,dword ptr [esp]
 0068B620    mov         edx,dword ptr [eax]
 0068B622    mov         dword ptr [esp+8],edx
 0068B626    cmp         dword ptr [esp+8],0
>0068B62B    jle         0068B634
 0068B62D    cmp         dword ptr [esp+8],4
>0068B632    jle         0068B651
 0068B634    mov         eax,dword ptr [esi]
 0068B636    mov         dword ptr [eax+14],18
 0068B63D    mov         edx,dword ptr [esp+8]
 0068B641    mov         dword ptr [eax+18],edx
 0068B644    mov         dword ptr [eax+1C],4
 0068B64B    mov         eax,esi
 0068B64D    mov         edx,dword ptr [eax]
 0068B64F    call        dword ptr [edx]
 0068B651    xor         ecx,ecx
 0068B653    mov         dword ptr [esp+0C],ecx
 0068B657    mov         eax,dword ptr [esp]
 0068B65A    lea         edi,[eax+4]
 0068B65D    mov         eax,dword ptr [esp+0C]
 0068B661    cmp         eax,dword ptr [esp+8]
>0068B665    jge         0068B6BB
 0068B667    mov         ebx,dword ptr [edi]
 0068B669    test        ebx,ebx
>0068B66B    jl          0068B672
 0068B66D    cmp         ebx,dword ptr [esi+34]
>0068B670    jl          0068B688
 0068B672    mov         eax,dword ptr [esi]
 0068B674    mov         dword ptr [eax+14],11
 0068B67B    mov         edx,dword ptr [esp+4]
 0068B67F    mov         dword ptr [eax+18],edx
 0068B682    mov         eax,esi
 0068B684    mov         edx,dword ptr [eax]
 0068B686    call        dword ptr [edx]
 0068B688    cmp         dword ptr [esp+0C],0
>0068B68D    jle         0068B6AA
 0068B68F    cmp         ebx,dword ptr [edi-4]
>0068B692    jg          0068B6AA
 0068B694    mov         eax,dword ptr [esi]
 0068B696    mov         dword ptr [eax+14],11
 0068B69D    mov         edx,dword ptr [esp+4]
 0068B6A1    mov         dword ptr [eax+18],edx
 0068B6A4    mov         eax,esi
 0068B6A6    mov         edx,dword ptr [eax]
 0068B6A8    call        dword ptr [edx]
 0068B6AA    inc         dword ptr [esp+0C]
 0068B6AE    add         edi,4
 0068B6B1    mov         ecx,dword ptr [esp+0C]
 0068B6B5    cmp         ecx,dword ptr [esp+8]
>0068B6B9    jl          0068B667
 0068B6BB    mov         eax,dword ptr [esp]
 0068B6BE    mov         edx,dword ptr [eax+14]
 0068B6C1    mov         dword ptr [esp+10],edx
 0068B6C5    mov         ecx,dword ptr [esp]
 0068B6C8    mov         eax,dword ptr [ecx+18]
 0068B6CB    mov         dword ptr [esp+14],eax
 0068B6CF    mov         edx,dword ptr [esp]
 0068B6D2    mov         eax,dword ptr [esp]
 0068B6D5    mov         ebp,dword ptr [edx+1C]
 0068B6D8    mov         edx,dword ptr [eax+20]
 0068B6DB    mov         dword ptr [esp+18],edx
 0068B6DF    cmp         dword ptr [esi+0DC],0
>0068B6E6    je          0068B846
 0068B6EC    cmp         dword ptr [esp+10],0
>0068B6F1    jl          0068B722
 0068B6F3    cmp         dword ptr [esp+10],40
>0068B6F8    jge         0068B722
 0068B6FA    mov         ecx,dword ptr [esp+14]
 0068B6FE    cmp         ecx,dword ptr [esp+10]
>0068B702    jl          0068B722
 0068B704    cmp         dword ptr [esp+14],40
>0068B709    jge         0068B722
 0068B70B    test        ebp,ebp
>0068B70D    jl          0068B722
 0068B70F    cmp         ebp,0D
>0068B712    jg          0068B722
 0068B714    cmp         dword ptr [esp+18],0
>0068B719    jl          0068B722
 0068B71B    cmp         dword ptr [esp+18],0D
>0068B720    jle         0068B738
 0068B722    mov         eax,dword ptr [esi]
 0068B724    mov         dword ptr [eax+14],0F
 0068B72B    mov         edx,dword ptr [esp+4]
 0068B72F    mov         dword ptr [eax+18],edx
 0068B732    mov         eax,esi
 0068B734    mov         edx,dword ptr [eax]
 0068B736    call        dword ptr [edx]
 0068B738    cmp         dword ptr [esp+10],0
>0068B73D    jne         0068B75E
 0068B73F    cmp         dword ptr [esp+14],0
>0068B744    je          0068B77B
 0068B746    mov         eax,dword ptr [esi]
 0068B748    mov         dword ptr [eax+14],0F
 0068B74F    mov         edx,dword ptr [esp+4]
 0068B753    mov         dword ptr [eax+18],edx
 0068B756    mov         eax,esi
 0068B758    mov         edx,dword ptr [eax]
 0068B75A    call        dword ptr [edx]
>0068B75C    jmp         0068B77B
 0068B75E    cmp         dword ptr [esp+8],1
>0068B763    je          0068B77B
 0068B765    mov         eax,dword ptr [esi]
 0068B767    mov         dword ptr [eax+14],0F
 0068B76E    mov         edx,dword ptr [esp+4]
 0068B772    mov         dword ptr [eax+18],edx
 0068B775    mov         eax,esi
 0068B777    mov         edx,dword ptr [eax]
 0068B779    call        dword ptr [edx]
 0068B77B    xor         ecx,ecx
 0068B77D    mov         dword ptr [esp+0C],ecx
 0068B781    mov         eax,dword ptr [esp]
 0068B784    lea         edx,[eax+4]
 0068B787    mov         dword ptr [esp+1C],edx
 0068B78B    mov         ecx,dword ptr [esp+0C]
 0068B78F    cmp         ecx,dword ptr [esp+8]
>0068B793    jge         0068B8C3
 0068B799    mov         eax,dword ptr [esp+1C]
 0068B79D    mov         ebx,dword ptr [eax]
 0068B79F    shl         ebx,8
 0068B7A2    lea         eax,[esp+48]
 0068B7A6    add         ebx,eax
 0068B7A8    cmp         dword ptr [esp+10],0
>0068B7AD    je          0068B7CA
 0068B7AF    cmp         dword ptr [ebx],0
>0068B7B2    jge         0068B7CA
 0068B7B4    mov         eax,dword ptr [esi]
 0068B7B6    mov         dword ptr [eax+14],0F
 0068B7BD    mov         edx,dword ptr [esp+4]
 0068B7C1    mov         dword ptr [eax+18],edx
 0068B7C4    mov         eax,esi
 0068B7C6    mov         edx,dword ptr [eax]
 0068B7C8    call        dword ptr [edx]
 0068B7CA    mov         edi,dword ptr [esp+10]
 0068B7CE    cmp         edi,dword ptr [esp+14]
 0068B7D2    lea         eax,[ebx+edi*4]
 0068B7D5    mov         ebx,eax
>0068B7D7    jg          0068B82D
 0068B7D9    cmp         dword ptr [ebx],0
>0068B7DC    jge         0068B7FA
 0068B7DE    test        ebp,ebp
>0068B7E0    je          0068B81D
 0068B7E2    mov         eax,dword ptr [esi]
 0068B7E4    mov         dword ptr [eax+14],0F
 0068B7EB    mov         edx,dword ptr [esp+4]
 0068B7EF    mov         dword ptr [eax+18],edx
 0068B7F2    mov         eax,esi
 0068B7F4    mov         edx,dword ptr [eax]
 0068B7F6    call        dword ptr [edx]
>0068B7F8    jmp         0068B81D
 0068B7FA    cmp         ebp,dword ptr [ebx]
>0068B7FC    jne         0068B807
 0068B7FE    lea         ecx,[ebp-1]
 0068B801    cmp         ecx,dword ptr [esp+18]
>0068B805    je          0068B81D
 0068B807    mov         eax,dword ptr [esi]
 0068B809    mov         dword ptr [eax+14],0F
 0068B810    mov         edx,dword ptr [esp+4]
 0068B814    mov         dword ptr [eax+18],edx
 0068B817    mov         eax,esi
 0068B819    mov         edx,dword ptr [eax]
 0068B81B    call        dword ptr [edx]
 0068B81D    mov         ecx,dword ptr [esp+18]
 0068B821    inc         edi
 0068B822    mov         dword ptr [ebx],ecx
 0068B824    add         ebx,4
 0068B827    cmp         edi,dword ptr [esp+14]
>0068B82B    jle         0068B7D9
 0068B82D    inc         dword ptr [esp+0C]
 0068B831    add         dword ptr [esp+1C],4
 0068B836    mov         eax,dword ptr [esp+0C]
 0068B83A    cmp         eax,dword ptr [esp+8]
>0068B83E    jl          0068B799
>0068B844    jmp         0068B8C3
 0068B846    cmp         dword ptr [esp+10],0
>0068B84B    jne         0068B85F
 0068B84D    cmp         dword ptr [esp+14],3F
>0068B852    jne         0068B85F
 0068B854    test        ebp,ebp
>0068B856    jne         0068B85F
 0068B858    cmp         dword ptr [esp+18],0
>0068B85D    je          0068B875
 0068B85F    mov         eax,dword ptr [esi]
 0068B861    mov         dword ptr [eax+14],0F
 0068B868    mov         edx,dword ptr [esp+4]
 0068B86C    mov         dword ptr [eax+18],edx
 0068B86F    mov         eax,esi
 0068B871    mov         edx,dword ptr [eax]
 0068B873    call        dword ptr [edx]
 0068B875    xor         ecx,ecx
 0068B877    mov         dword ptr [esp+0C],ecx
 0068B87B    mov         eax,dword ptr [esp]
 0068B87E    lea         edi,[eax+4]
 0068B881    mov         eax,dword ptr [esp+0C]
 0068B885    cmp         eax,dword ptr [esp+8]
>0068B889    jge         0068B8C3
 0068B88B    mov         ebx,dword ptr [edi]
 0068B88D    cmp         dword ptr [esp+ebx*4+20],0
>0068B892    je          0068B8AA
 0068B894    mov         eax,dword ptr [esi]
 0068B896    mov         dword ptr [eax+14],11
 0068B89D    mov         edx,dword ptr [esp+4]
 0068B8A1    mov         dword ptr [eax+18],edx
 0068B8A4    mov         eax,esi
 0068B8A6    mov         edx,dword ptr [eax]
 0068B8A8    call        dword ptr [edx]
 0068B8AA    mov         dword ptr [esp+ebx*4+20],1
 0068B8B2    inc         dword ptr [esp+0C]
 0068B8B6    add         edi,4
 0068B8B9    mov         ecx,dword ptr [esp+0C]
 0068B8BD    cmp         ecx,dword ptr [esp+8]
>0068B8C1    jl          0068B88B
 0068B8C3    add         dword ptr [esp],24
 0068B8C7    inc         dword ptr [esp+4]
 0068B8CB    mov         eax,dword ptr [esp+4]
 0068B8CF    cmp         eax,dword ptr [esi+0A0]
>0068B8D5    jle         0068B61D
 0068B8DB    cmp         dword ptr [esi+0DC],0
>0068B8E2    je          0068B919
 0068B8E4    xor         edx,edx
 0068B8E6    lea         ebx,[esp+48]
 0068B8EA    mov         dword ptr [esp+0C],edx
>0068B8EE    jmp         0068B90E
 0068B8F0    cmp         dword ptr [ebx],0
>0068B8F3    jge         0068B904
 0068B8F5    mov         eax,dword ptr [esi]
 0068B8F7    mov         dword ptr [eax+14],2C
 0068B8FE    mov         eax,esi
 0068B900    mov         edx,dword ptr [eax]
 0068B902    call        dword ptr [edx]
 0068B904    inc         dword ptr [esp+0C]
 0068B908    add         ebx,100
 0068B90E    mov         ecx,dword ptr [esp+0C]
 0068B912    cmp         ecx,dword ptr [esi+34]
>0068B915    jl          0068B8F0
>0068B917    jmp         0068B949
 0068B919    xor         eax,eax
 0068B91B    lea         ebx,[esp+20]
 0068B91F    mov         dword ptr [esp+0C],eax
>0068B923    jmp         0068B940
 0068B925    cmp         dword ptr [ebx],0
>0068B928    jne         0068B939
 0068B92A    mov         eax,dword ptr [esi]
 0068B92C    mov         dword ptr [eax+14],2C
 0068B933    mov         eax,esi
 0068B935    mov         edx,dword ptr [eax]
 0068B937    call        dword ptr [edx]
 0068B939    inc         dword ptr [esp+0C]
 0068B93D    add         ebx,4
 0068B940    mov         ecx,dword ptr [esp+0C]
 0068B944    cmp         ecx,dword ptr [esi+34]
>0068B947    jl          0068B925
 0068B949    add         esp,0A48
 0068B94F    pop         ebp
 0068B950    pop         edi
 0068B951    pop         esi
 0068B952    pop         ebx
 0068B953    ret
end;*}

//0068B954
{*procedure sub_0068B954(?:?);
begin
 0068B954    push        ebx
 0068B955    mov         ebx,eax
 0068B957    push        esi
 0068B958    push        edi
 0068B959    push        ebp
 0068B95A    mov         edx,dword ptr [ebx+0A4]
 0068B960    test        edx,edx
>0068B962    je          0068B9D1
 0068B964    mov         eax,dword ptr [ebx+144]
 0068B96A    lea         esi,[ebx+0F0]
 0068B970    mov         ecx,dword ptr [eax+20]
 0068B973    shl         ecx,2
 0068B976    lea         ecx,[ecx+ecx*8]
 0068B979    add         ecx,edx
 0068B97B    mov         edx,ecx
 0068B97D    mov         eax,dword ptr [edx]
 0068B97F    lea         ecx,[edx+4]
 0068B982    mov         dword ptr [ebx+0EC],eax
 0068B988    xor         eax,eax
>0068B98A    jmp         0068B9A7
 0068B98C    mov         edi,dword ptr [ecx]
 0068B98E    inc         eax
 0068B98F    mov         ebp,edi
 0068B991    lea         edi,[ebp+edi*4]
 0068B995    lea         edi,[ebp+edi*4]
 0068B999    shl         edi,2
 0068B99C    add         edi,dword ptr [ebx+3C]
 0068B99F    mov         dword ptr [esi],edi
 0068B9A1    add         esi,4
 0068B9A4    add         ecx,4
 0068B9A7    cmp         eax,dword ptr [edx]
>0068B9A9    jl          0068B98C
 0068B9AB    mov         eax,dword ptr [edx+14]
 0068B9AE    mov         dword ptr [ebx+134],eax
 0068B9B4    mov         ecx,dword ptr [edx+18]
 0068B9B7    mov         dword ptr [ebx+138],ecx
 0068B9BD    mov         eax,dword ptr [edx+1C]
 0068B9C0    mov         dword ptr [ebx+13C],eax
 0068B9C6    mov         edx,dword ptr [edx+20]
 0068B9C9    mov         dword ptr [ebx+140],edx
>0068B9CF    jmp         0068BA3F
 0068B9D1    cmp         dword ptr [ebx+34],4
>0068B9D5    jle         0068B9F3
 0068B9D7    mov         eax,dword ptr [ebx]
 0068B9D9    mov         dword ptr [eax+14],18
 0068B9E0    mov         edx,dword ptr [ebx+34]
 0068B9E3    mov         dword ptr [eax+18],edx
 0068B9E6    mov         dword ptr [eax+1C],4
 0068B9ED    mov         eax,ebx
 0068B9EF    mov         edx,dword ptr [eax]
 0068B9F1    call        dword ptr [edx]
 0068B9F3    mov         ecx,dword ptr [ebx+34]
 0068B9F6    mov         dword ptr [ebx+0EC],ecx
 0068B9FC    xor         eax,eax
 0068B9FE    lea         edx,[ebx+0F0]
>0068BA04    jmp         0068BA18
 0068BA06    lea         ecx,[eax+eax*4]
 0068BA09    lea         ecx,[eax+ecx*4]
 0068BA0C    inc         eax
 0068BA0D    shl         ecx,2
 0068BA10    add         ecx,dword ptr [ebx+3C]
 0068BA13    mov         dword ptr [edx],ecx
 0068BA15    add         edx,4
 0068BA18    cmp         eax,dword ptr [ebx+34]
>0068BA1B    jl          0068BA06
 0068BA1D    xor         eax,eax
 0068BA1F    xor         edx,edx
 0068BA21    mov         dword ptr [ebx+134],eax
 0068BA27    xor         ecx,ecx
 0068BA29    mov         dword ptr [ebx+138],3F
 0068BA33    mov         dword ptr [ebx+13C],edx
 0068BA39    mov         dword ptr [ebx+140],ecx
 0068BA3F    pop         ebp
 0068BA40    pop         edi
 0068BA41    pop         esi
 0068BA42    pop         ebx
 0068BA43    ret
end;*}

//0068BA44
{*procedure sub_0068BA44(?:?);
begin
 0068BA44    push        ebx
 0068BA45    mov         ebx,eax
 0068BA47    push        esi
 0068BA48    push        edi
 0068BA49    push        ecx
 0068BA4A    cmp         dword ptr [ebx+0EC],1
>0068BA51    jne         0068BABA
 0068BA53    mov         ecx,dword ptr [ebx+0F0]
 0068BA59    mov         eax,dword ptr [ecx+1C]
 0068BA5C    mov         dword ptr [ebx+100],eax
 0068BA62    mov         edx,dword ptr [ecx+20]
 0068BA65    mov         dword ptr [ebx+104],edx
 0068BA6B    xor         edx,edx
 0068BA6D    mov         dword ptr [ecx+34],1
 0068BA74    mov         dword ptr [ecx+38],1
 0068BA7B    mov         dword ptr [ecx+3C],1
 0068BA82    mov         dword ptr [ecx+40],8
 0068BA89    mov         dword ptr [ecx+44],1
 0068BA90    mov         eax,dword ptr [ecx+20]
 0068BA93    mov         esi,dword ptr [ecx+0C]
 0068BA96    div         eax,esi
 0068BA98    mov         eax,edx
 0068BA9A    test        eax,eax
>0068BA9C    jne         0068BAA0
 0068BA9E    mov         eax,esi
 0068BAA0    mov         dword ptr [ecx+48],eax
 0068BAA3    xor         edx,edx
 0068BAA5    mov         dword ptr [ebx+108],1
 0068BAAF    mov         dword ptr [ebx+10C],edx
>0068BAB5    jmp         0068BBCB
 0068BABA    mov         eax,dword ptr [ebx+0EC]
 0068BAC0    test        eax,eax
>0068BAC2    jle         0068BAC9
 0068BAC4    cmp         eax,4
>0068BAC7    jle         0068BAE8
 0068BAC9    mov         eax,dword ptr [ebx]
 0068BACB    mov         dword ptr [eax+14],18
 0068BAD2    mov         edx,dword ptr [ebx+0EC]
 0068BAD8    mov         dword ptr [eax+18],edx
 0068BADB    mov         dword ptr [eax+1C],4
 0068BAE2    mov         eax,ebx
 0068BAE4    mov         edx,dword ptr [eax]
 0068BAE6    call        dword ptr [edx]
 0068BAE8    mov         ecx,dword ptr [ebx+0E0]
 0068BAEE    shl         ecx,3
 0068BAF1    mov         eax,ecx
 0068BAF3    add         eax,dword ptr [ebx+18]
 0068BAF6    dec         eax
 0068BAF7    cdq
 0068BAF8    idiv        eax,ecx
 0068BAFA    mov         dword ptr [ebx+100],eax
 0068BB00    mov         ecx,dword ptr [ebx+0E4]
 0068BB06    shl         ecx,3
 0068BB09    mov         eax,ecx
 0068BB0B    add         eax,dword ptr [ebx+1C]
 0068BB0E    dec         eax
 0068BB0F    cdq
 0068BB10    idiv        eax,ecx
 0068BB12    mov         dword ptr [ebx+104],eax
 0068BB18    xor         ecx,ecx
 0068BB1A    mov         dword ptr [ebx+108],ecx
 0068BB20    xor         esi,esi
 0068BB22    lea         eax,[ebx+0F0]
 0068BB28    mov         dword ptr [esp],eax
>0068BB2B    jmp         0068BBBF
 0068BB30    mov         edx,dword ptr [esp]
 0068BB33    mov         ecx,dword ptr [edx]
 0068BB35    mov         eax,dword ptr [ecx+8]
 0068BB38    mov         dword ptr [ecx+34],eax
 0068BB3B    mov         eax,dword ptr [ecx+0C]
 0068BB3E    mov         dword ptr [ecx+38],eax
 0068BB41    mov         edx,dword ptr [ecx+34]
 0068BB44    imul        edx,eax
 0068BB47    mov         dword ptr [ecx+3C],edx
 0068BB4A    xor         edx,edx
 0068BB4C    mov         eax,dword ptr [ecx+34]
 0068BB4F    shl         eax,3
 0068BB52    mov         dword ptr [ecx+40],eax
 0068BB55    mov         eax,dword ptr [ecx+1C]
 0068BB58    mov         edi,dword ptr [ecx+34]
 0068BB5B    div         eax,edi
 0068BB5D    mov         eax,edx
 0068BB5F    test        eax,eax
>0068BB61    jne         0068BB65
 0068BB63    mov         eax,edi
 0068BB65    mov         dword ptr [ecx+44],eax
 0068BB68    xor         edx,edx
 0068BB6A    mov         eax,dword ptr [ecx+20]
 0068BB6D    mov         edi,dword ptr [ecx+38]
 0068BB70    div         eax,edi
 0068BB72    mov         eax,edx
 0068BB74    test        eax,eax
>0068BB76    jne         0068BB7A
 0068BB78    mov         eax,edi
 0068BB7A    mov         dword ptr [ecx+48],eax
 0068BB7D    mov         edi,dword ptr [ecx+3C]
 0068BB80    mov         eax,dword ptr [ebx+108]
 0068BB86    add         eax,edi
 0068BB88    cmp         eax,0A
>0068BB8B    jle         0068BBB1
 0068BB8D    mov         edx,dword ptr [ebx]
 0068BB8F    mov         eax,ebx
 0068BB91    mov         dword ptr [edx+14],0B
 0068BB98    mov         edx,dword ptr [eax]
 0068BB9A    call        dword ptr [edx]
>0068BB9C    jmp         0068BBB1
 0068BB9E    mov         ecx,dword ptr [ebx+108]
 0068BBA4    inc         dword ptr [ebx+108]
 0068BBAA    mov         dword ptr [ebx+ecx*4+10C],esi
 0068BBB1    mov         eax,edi
 0068BBB3    add         edi,0FFFFFFFF
 0068BBB6    test        eax,eax
>0068BBB8    jg          0068BB9E
 0068BBBA    inc         esi
 0068BBBB    add         dword ptr [esp],4
 0068BBBF    cmp         esi,dword ptr [ebx+0EC]
>0068BBC5    jl          0068BB30
 0068BBCB    mov         eax,dword ptr [ebx+0C4]
 0068BBD1    test        eax,eax
>0068BBD3    jle         0068BBED
 0068BBD5    imul        dword ptr [ebx+100]
 0068BBDB    cmp         eax,0FFFF
>0068BBE0    jl          0068BBE7
 0068BBE2    mov         eax,0FFFF
 0068BBE7    mov         dword ptr [ebx+0C0],eax
 0068BBED    pop         edx
 0068BBEE    pop         edi
 0068BBEF    pop         esi
 0068BBF0    pop         ebx
 0068BBF1    ret
end;*}

//0068BE14
procedure @jinit_c_master_control;
begin
{*
 0068BE14    push        ebx
 0068BE15    push        esi
 0068BE16    mov         esi,eax
 0068BE18    push        edi
 0068BE19    mov         eax,esi
 0068BE1B    mov         edi,edx
 0068BE1D    mov         edx,1
 0068BE22    mov         ecx,24
 0068BE27    mov         ebx,dword ptr [eax+4]
 0068BE2A    call        dword ptr [ebx]
 0068BE2C    mov         ebx,eax
 0068BE2E    xor         eax,eax
 0068BE30    mov         dword ptr [esi+144],ebx
 0068BE36    mov         dword ptr [ebx],68BBF4
 0068BE3C    mov         dword ptr [ebx+4],68BD90
 0068BE43    mov         dword ptr [ebx+8],68BDB8
 0068BE4A    mov         dword ptr [ebx+10],eax
 0068BE4D    mov         eax,esi
 0068BE4F    call        _DF_.
 0068BE54    cmp         dword ptr [esi+0A4],0
>0068BE5B    je          0068BE66
 0068BE5D    mov         eax,esi
 0068BE5F    call        0068B56C
>0068BE64    jmp         0068BE78
 0068BE66    xor         edx,edx
 0068BE68    mov         dword ptr [esi+0DC],edx
 0068BE6E    mov         dword ptr [esi+0A0],1
 0068BE78    cmp         dword ptr [esi+0DC],0
>0068BE7F    je          0068BE8B
 0068BE81    mov         dword ptr [esi+0B0],1
 0068BE8B    test        edi,edi
>0068BE8D    je          0068BEAA
 0068BE8F    cmp         dword ptr [esi+0B0],0
>0068BE96    je          0068BEA1
 0068BE98    mov         dword ptr [ebx+14],1
>0068BE9F    jmp         0068BEAF
 0068BEA1    mov         dword ptr [ebx+14],2
>0068BEA8    jmp         0068BEAF
 0068BEAA    xor         ecx,ecx
 0068BEAC    mov         dword ptr [ebx+14],ecx
 0068BEAF    xor         eax,eax
 0068BEB1    xor         edx,edx
 0068BEB3    mov         dword ptr [ebx+20],eax
 0068BEB6    mov         dword ptr [ebx+18],edx
 0068BEB9    cmp         dword ptr [esi+0B0],0
>0068BEC0    je          0068BECF
 0068BEC2    mov         ecx,dword ptr [esi+0A0]
 0068BEC8    add         ecx,ecx
 0068BECA    mov         dword ptr [ebx+1C],ecx
>0068BECD    jmp         0068BED8
 0068BECF    mov         eax,dword ptr [esi+0A0]
 0068BED5    mov         dword ptr [ebx+1C],eax
 0068BED8    pop         edi
 0068BED9    pop         esi
 0068BEDA    pop         ebx
 0068BEDB    ret
*}
end;

//0068BEDC
procedure _DF_.;
begin
{*
 0068BEDC    push        ebx
 0068BEDD    cmp         dword ptr [eax+0A8],0
 0068BEE4    mov         ecx,dword ptr [eax+148]
>0068BEEA    jne         0068BF19
 0068BEEC    xor         ebx,ebx
 0068BEEE    mov         dword ptr [ecx+8],ebx
 0068BEF1    xor         ebx,ebx
 0068BEF3    mov         dword ptr [ecx+0C],ebx
 0068BEF6    xor         ebx,ebx
 0068BEF8    mov         dword ptr [ecx+10],ebx
 0068BEFB    mov         dword ptr [ecx+14],edx
 0068BEFE    sub         edx,1
>0068BF01    jae         0068BF0C
 0068BF03    mov         dword ptr [ecx+4],68BF1C
 0068BF0A    pop         ebx
 0068BF0B    ret
 0068BF0C    mov         edx,dword ptr [eax]
 0068BF0E    mov         dword ptr [edx+14],4
 0068BF15    mov         ecx,dword ptr [eax]
 0068BF17    call        dword ptr [ecx]
 0068BF19    pop         ebx
 0068BF1A    ret
*}
end;

//0068BFB4
procedure @jinit_c_main_controller;
begin
{*
 0068BFB4    push        ebx
 0068BFB5    mov         ebx,eax
 0068BFB7    push        esi
 0068BFB8    push        edi
 0068BFB9    mov         eax,ebx
 0068BFBB    push        ebp
 0068BFBC    push        ecx
 0068BFBD    mov         esi,edx
 0068BFBF    mov         edi,dword ptr [eax+4]
 0068BFC2    mov         edx,1
 0068BFC7    mov         ecx,40
 0068BFCC    call        dword ptr [edi]
 0068BFCE    mov         dword ptr [ebx+148],eax
 0068BFD4    mov         dword ptr [eax],68BEDC;_DF_.
 0068BFDA    cmp         dword ptr [ebx+0A8],0
>0068BFE1    jne         0068C032
 0068BFE3    test        esi,esi
>0068BFE5    je          0068BFF8
 0068BFE7    mov         eax,dword ptr [ebx]
 0068BFE9    mov         dword ptr [eax+14],4
 0068BFF0    mov         eax,ebx
 0068BFF2    mov         edx,dword ptr [eax]
 0068BFF4    call        dword ptr [edx]
>0068BFF6    jmp         0068C032
 0068BFF8    xor         ecx,ecx
 0068BFFA    lea         edi,[eax+18]
 0068BFFD    mov         dword ptr [esp],ecx
 0068C000    mov         esi,dword ptr [ebx+3C]
>0068C003    jmp         0068C02A
 0068C005    mov         eax,dword ptr [esi+0C]
 0068C008    mov         edx,1
 0068C00D    shl         eax,3
 0068C010    push        eax
 0068C011    mov         eax,ebx
 0068C013    mov         ecx,dword ptr [esi+1C]
 0068C016    shl         ecx,3
 0068C019    mov         ebp,dword ptr [eax+4]
 0068C01C    call        dword ptr [ebp+8]
 0068C01F    mov         dword ptr [edi],eax
 0068C021    add         edi,4
 0068C024    inc         dword ptr [esp]
 0068C027    add         esi,54
 0068C02A    mov         eax,dword ptr [esp]
 0068C02D    cmp         eax,dword ptr [ebx+34]
>0068C030    jl          0068C005
 0068C032    pop         edx
 0068C033    pop         ebp
 0068C034    pop         edi
 0068C035    pop         esi
 0068C036    pop         ebx
 0068C037    ret
*}
end;

//0068C038
procedure _DF_.;
begin
{*
 0068C038    push        ebx
 0068C039    push        esi
 0068C03A    mov         esi,eax
 0068C03C    test        edx,edx
 0068C03E    mov         ebx,dword ptr [esi+14C]
>0068C044    je          0068C055
 0068C046    mov         eax,dword ptr [esi]
 0068C048    mov         dword ptr [eax+14],4
 0068C04F    mov         eax,esi
 0068C051    mov         edx,dword ptr [eax]
 0068C053    call        dword ptr [edx]
 0068C055    mov         ecx,dword ptr [esi+1C]
 0068C058    xor         eax,eax
 0068C05A    mov         dword ptr [ebx+30],ecx
 0068C05D    xor         edx,edx
 0068C05F    mov         dword ptr [ebx+34],eax
 0068C062    mov         dword ptr [ebx+38],edx
 0068C065    mov         ecx,dword ptr [esi+0E4]
 0068C06B    add         ecx,ecx
 0068C06D    mov         dword ptr [ebx+3C],ecx
 0068C070    pop         esi
 0068C071    pop         ebx
 0068C072    ret
*}
end;

//0068C074
{*procedure sub_0068C074(?:Integer; ?:?; ?:Integer; ?:?);
begin
 0068C074    push        ebp
 0068C075    mov         ebp,esp
 0068C077    push        ecx
 0068C078    push        ebx
 0068C079    push        esi
 0068C07A    push        edi
 0068C07B    mov         edi,ecx
 0068C07D    mov         dword ptr [ebp-4],edx
 0068C080    mov         esi,eax
 0068C082    mov         ebx,edi
 0068C084    cmp         ebx,dword ptr [ebp+8]
>0068C087    jge         0068C0A2
 0068C089    push        ebx
 0068C08A    push        1
 0068C08C    mov         eax,dword ptr [ebp-4]
 0068C08F    lea         edx,[edi-1]
 0068C092    push        eax
 0068C093    mov         eax,esi
 0068C095    mov         ecx,esi
 0068C097    call        @jcopy_sample_rows
 0068C09C    inc         ebx
 0068C09D    cmp         ebx,dword ptr [ebp+8]
>0068C0A0    jl          0068C089
 0068C0A2    pop         edi
 0068C0A3    pop         esi
 0068C0A4    pop         ebx
 0068C0A5    pop         ecx
 0068C0A6    pop         ebp
 0068C0A7    ret         4
end;*}

//0068C3B4
{*function sub_0068C3B4(?:?):?;
begin
 0068C3B4    push        ebx
 0068C3B5    push        esi
 0068C3B6    push        edi
 0068C3B7    push        ebp
 0068C3B8    add         esp,0FFFFFFEC
 0068C3BB    mov         dword ptr [esp],eax
 0068C3BE    mov         eax,dword ptr [esp]
 0068C3C1    mov         esi,dword ptr [eax+14C]
 0068C3C7    mov         eax,dword ptr [esp]
 0068C3CA    mov         ebx,dword ptr [eax+0E4]
 0068C3D0    mov         eax,dword ptr [esp]
 0068C3D3    mov         edx,dword ptr [eax+34]
 0068C3D6    mov         eax,dword ptr [esp]
 0068C3D9    imul        edx,ebx
 0068C3DC    mov         edi,dword ptr [eax+4]
 0068C3DF    lea         ecx,[edx+edx*4]
 0068C3E2    shl         ecx,2
 0068C3E5    mov         edx,1
 0068C3EA    call        dword ptr [edi]
 0068C3EC    mov         dword ptr [esp+0C],eax
 0068C3F0    xor         eax,eax
 0068C3F2    mov         dword ptr [esp+4],eax
 0068C3F6    mov         edx,dword ptr [esp]
 0068C3F9    mov         ecx,dword ptr [edx+3C]
 0068C3FC    mov         dword ptr [esp+8],ecx
 0068C400    lea         eax,[esi+8]
 0068C403    mov         dword ptr [esp+10],eax
>0068C407    jmp         0068C4B3
 0068C40C    lea         edx,[ebx+ebx*2]
 0068C40F    push        edx
 0068C410    mov         ecx,dword ptr [esp+0C]
 0068C414    mov         edx,dword ptr [esp+4]
 0068C418    mov         eax,dword ptr [ecx+1C]
 0068C41B    mov         ecx,dword ptr [esp+0C]
 0068C41F    shl         eax,3
 0068C422    imul        dword ptr [edx+0E0]
 0068C428    cdq
 0068C429    idiv        eax,dword ptr [ecx+8]
 0068C42C    mov         ecx,eax
 0068C42E    mov         eax,dword ptr [esp+4]
 0068C432    mov         edx,1
 0068C437    mov         esi,dword ptr [eax+4]
 0068C43A    call        dword ptr [esi+8]
 0068C43D    mov         esi,eax
 0068C43F    lea         eax,[ebx+ebx*2]
 0068C442    shl         eax,2
 0068C445    mov         edx,ebx
 0068C447    push        eax
 0068C448    push        esi
 0068C449    shl         edx,2
 0068C44C    add         edx,dword ptr [esp+14]
 0068C450    push        edx
 0068C451    call        _memcpy
 0068C456    add         esp,0C
 0068C459    xor         eax,eax
 0068C45B    cmp         ebx,eax
 0068C45D    mov         ecx,esi
 0068C45F    mov         edx,dword ptr [esp+0C]
>0068C463    jle         0068C48A
 0068C465    lea         edi,[eax+ebx*2]
 0068C468    mov         edi,dword ptr [esi+edi*4]
 0068C46B    mov         dword ptr [edx],edi
 0068C46D    lea         edi,[eax+ebx*4]
 0068C470    mov         ebp,dword ptr [esp+0C]
 0068C474    inc         eax
 0068C475    add         edx,4
 0068C478    lea         edi,[ebp+edi*4]
 0068C47C    push        edi
 0068C47D    pop         ebp
 0068C47E    mov         edi,dword ptr [ecx]
 0068C480    add         ecx,4
 0068C483    cmp         ebx,eax
 0068C485    mov         dword ptr [ebp],edi
>0068C488    jg          0068C465
 0068C48A    mov         eax,ebx
 0068C48C    mov         ecx,ebx
 0068C48E    shl         ecx,2
 0068C491    mov         edx,dword ptr [esp+10]
 0068C495    shl         eax,2
 0068C498    add         eax,dword ptr [esp+0C]
 0068C49C    lea         ecx,[ecx+ecx*4]
 0068C49F    mov         dword ptr [edx],eax
 0068C4A1    add         dword ptr [esp+0C],ecx
 0068C4A5    add         dword ptr [esp+10],4
 0068C4AA    inc         dword ptr [esp+4]
 0068C4AE    add         dword ptr [esp+8],54
 0068C4B3    mov         eax,dword ptr [esp]
 0068C4B6    mov         edx,dword ptr [eax+34]
 0068C4B9    cmp         edx,dword ptr [esp+4]
>0068C4BD    jg          0068C40C
 0068C4C3    add         esp,14
 0068C4C6    pop         ebp
 0068C4C7    pop         edi
 0068C4C8    pop         esi
 0068C4C9    pop         ebx
 0068C4CA    ret
end;*}

//0068C4CC
procedure @jinit_c_prep_controller;
begin
{*
 0068C4CC    push        ebx
 0068C4CD    push        esi
 0068C4CE    push        edi
 0068C4CF    push        ebp
 0068C4D0    push        ecx
 0068C4D1    mov         ebx,eax
 0068C4D3    test        edx,edx
>0068C4D5    je          0068C4E6
 0068C4D7    mov         eax,dword ptr [ebx]
 0068C4D9    mov         dword ptr [eax+14],4
 0068C4E0    mov         eax,ebx
 0068C4E2    mov         edx,dword ptr [eax]
 0068C4E4    call        dword ptr [edx]
 0068C4E6    mov         eax,ebx
 0068C4E8    mov         ecx,40
 0068C4ED    mov         edx,1
 0068C4F2    mov         esi,dword ptr [eax+4]
 0068C4F5    call        dword ptr [esi]
 0068C4F7    mov         dword ptr [ebx+14C],eax
 0068C4FD    mov         dword ptr [eax],68C038;_DF_.
 0068C503    mov         edx,dword ptr [ebx+15C]
 0068C509    cmp         dword ptr [edx+8],0
>0068C50D    je          0068C51F
 0068C50F    mov         dword ptr [eax+4],68C20C
 0068C516    mov         eax,ebx
 0068C518    call        0068C3B4
>0068C51D    jmp         0068C56C
 0068C51F    mov         dword ptr [eax+4],68C0AC
 0068C526    xor         ecx,ecx
 0068C528    lea         edi,[eax+8]
 0068C52B    mov         dword ptr [esp],ecx
 0068C52E    mov         esi,dword ptr [ebx+3C]
>0068C531    jmp         0068C564
 0068C533    mov         eax,dword ptr [ebx+0E4]
 0068C539    push        eax
 0068C53A    mov         eax,dword ptr [esi+1C]
 0068C53D    shl         eax,3
 0068C540    imul        dword ptr [ebx+0E0]
 0068C546    cdq
 0068C547    idiv        eax,dword ptr [esi+8]
 0068C54A    mov         ecx,eax
 0068C54C    mov         eax,ebx
 0068C54E    mov         edx,1
 0068C553    mov         ebp,dword ptr [eax+4]
 0068C556    call        dword ptr [ebp+8]
 0068C559    mov         dword ptr [edi],eax
 0068C55B    add         edi,4
 0068C55E    inc         dword ptr [esp]
 0068C561    add         esi,54
 0068C564    mov         eax,dword ptr [esp]
 0068C567    cmp         eax,dword ptr [ebx+34]
>0068C56A    jl          0068C533
 0068C56C    pop         edx
 0068C56D    pop         ebp
 0068C56E    pop         edi
 0068C56F    pop         esi
 0068C570    pop         ebx
 0068C571    ret
*}
end;

//0068C574
procedure _DF_.;
begin
{*
 0068C574    cmp         dword ptr [eax+0EC],1
 0068C57B    mov         edx,dword ptr [eax+150]
>0068C581    jle         0068C58C
 0068C583    mov         dword ptr [edx+14],1
>0068C58A    jmp         0068C5B2
 0068C58C    mov         ecx,dword ptr [eax+0E8]
 0068C592    dec         ecx
 0068C593    cmp         ecx,dword ptr [edx+8]
>0068C596    jbe         0068C5A6
 0068C598    mov         eax,dword ptr [eax+0F0]
 0068C59E    mov         eax,dword ptr [eax+0C]
 0068C5A1    mov         dword ptr [edx+14],eax
>0068C5A4    jmp         0068C5B2
 0068C5A6    mov         ecx,dword ptr [eax+0F0]
 0068C5AC    mov         eax,dword ptr [ecx+48]
 0068C5AF    mov         dword ptr [edx+14],eax
 0068C5B2    xor         ecx,ecx
 0068C5B4    xor         eax,eax
 0068C5B6    mov         dword ptr [edx+0C],ecx
 0068C5B9    mov         dword ptr [edx+10],eax
 0068C5BC    ret
*}
end;

//0068CB14
{*function sub_0068CB14(?:?):?;
begin
 0068CB14    push        ebx
 0068CB15    push        esi
 0068CB16    push        edi
 0068CB17    add         esp,0FFFFFFC8
 0068CB1A    xor         ecx,ecx
 0068CB1C    mov         dword ptr [esp],eax
 0068CB1F    mov         eax,dword ptr [esp]
 0068CB22    lea         esi,[esp+28]
 0068CB26    mov         edx,dword ptr [eax+150]
 0068CB2C    mov         dword ptr [esp+4],edx
 0068CB30    mov         dword ptr [esp+0C],ecx
 0068CB34    mov         eax,dword ptr [esp]
 0068CB37    lea         ebx,[eax+0F0]
>0068CB3D    jmp         0068CB7E
 0068CB3F    mov         eax,dword ptr [ebx]
 0068CB41    mov         dword ptr [esp+18],eax
 0068CB45    mov         edx,dword ptr [esp+18]
 0068CB49    mov         edi,dword ptr [edx+0C]
 0068CB4C    push        edi
 0068CB4D    push        0
 0068CB4F    mov         eax,dword ptr [esp+0C]
 0068CB53    mov         edx,dword ptr [esp+20]
 0068CB57    mov         ecx,dword ptr [eax+8]
 0068CB5A    mov         eax,dword ptr [edx+4]
 0068CB5D    imul        ecx,edi
 0068CB60    mov         edx,dword ptr [esp+0C]
 0068CB64    mov         edx,dword ptr [edx+eax*4+40]
 0068CB68    mov         eax,dword ptr [esp+8]
 0068CB6C    mov         edi,dword ptr [eax+4]
 0068CB6F    call        dword ptr [edi+20]
 0068CB72    mov         dword ptr [esi],eax
 0068CB74    add         esi,4
 0068CB77    inc         dword ptr [esp+0C]
 0068CB7B    add         ebx,4
 0068CB7E    mov         eax,dword ptr [esp]
 0068CB81    mov         edx,dword ptr [eax+0EC]
 0068CB87    cmp         edx,dword ptr [esp+0C]
>0068CB8B    jg          0068CB3F
 0068CB8D    mov         ecx,dword ptr [esp+4]
 0068CB91    mov         eax,dword ptr [ecx+10]
 0068CB94    mov         dword ptr [esp+10],eax
>0068CB98    jmp         0068CCAE
 0068CB9D    mov         edx,dword ptr [esp+4]
 0068CBA1    mov         ecx,dword ptr [edx+0C]
 0068CBA4    mov         dword ptr [esp+8],ecx
>0068CBA8    jmp         0068CC8E
 0068CBAD    xor         ebx,ebx
 0068CBAF    xor         eax,eax
 0068CBB1    mov         dword ptr [esp+0C],eax
 0068CBB5    lea         edx,[esp+28]
 0068CBB9    mov         dword ptr [esp+24],edx
 0068CBBD    mov         ecx,dword ptr [esp]
 0068CBC0    lea         eax,[ecx+0F0]
 0068CBC6    mov         dword ptr [esp+1C],eax
>0068CBCA    jmp         0068CC46
 0068CBCC    mov         edx,dword ptr [esp+1C]
 0068CBD0    mov         ecx,dword ptr [edx]
 0068CBD2    mov         dword ptr [esp+18],ecx
 0068CBD6    mov         eax,dword ptr [esp+18]
 0068CBDA    mov         edx,dword ptr [eax+34]
 0068CBDD    imul        edx,dword ptr [esp+8]
 0068CBE2    mov         dword ptr [esp+14],edx
 0068CBE6    xor         esi,esi
 0068CBE8    mov         eax,dword ptr [esp+24]
 0068CBEC    mov         edx,eax
 0068CBEE    mov         dword ptr [esp+20],edx
>0068CBF2    jmp         0068CC2F
 0068CBF4    mov         eax,dword ptr [esp+20]
 0068CBF8    mov         ecx,dword ptr [esp+10]
 0068CBFC    add         ecx,esi
 0068CBFE    mov         edx,dword ptr [eax]
 0068CC00    mov         eax,dword ptr [esp+14]
 0068CC04    shl         eax,7
 0068CC07    mov         edx,dword ptr [edx+ecx*4]
 0068CC0A    add         edx,eax
 0068CC0C    mov         eax,dword ptr [esp+4]
 0068CC10    xor         ecx,ecx
 0068CC12    lea         eax,[eax+ebx*4+18]
>0068CC16    jmp         0068CC25
 0068CC18    mov         dword ptr [eax],edx
 0068CC1A    add         edx,80
 0068CC20    inc         ebx
 0068CC21    add         eax,4
 0068CC24    inc         ecx
 0068CC25    mov         edi,dword ptr [esp+18]
 0068CC29    cmp         ecx,dword ptr [edi+34]
>0068CC2C    jl          0068CC18
 0068CC2E    inc         esi
 0068CC2F    mov         eax,dword ptr [esp+18]
 0068CC33    cmp         esi,dword ptr [eax+38]
>0068CC36    jl          0068CBF4
 0068CC38    inc         dword ptr [esp+0C]
 0068CC3C    add         dword ptr [esp+24],4
 0068CC41    add         dword ptr [esp+1C],4
 0068CC46    mov         edx,dword ptr [esp]
 0068CC49    mov         ecx,dword ptr [edx+0EC]
 0068CC4F    cmp         ecx,dword ptr [esp+0C]
>0068CC53    jg          0068CBCC
 0068CC59    mov         eax,dword ptr [esp]
 0068CC5C    mov         edx,dword ptr [esp+4]
 0068CC60    add         edx,18
 0068CC63    mov         ecx,dword ptr [eax+164]
 0068CC69    call        dword ptr [ecx+4]
 0068CC6C    test        eax,eax
>0068CC6E    jne         0068CC8A
 0068CC70    mov         eax,dword ptr [esp+4]
 0068CC74    mov         edx,dword ptr [esp+10]
 0068CC78    mov         dword ptr [eax+10],edx
 0068CC7B    mov         ecx,dword ptr [esp+4]
 0068CC7F    mov         eax,dword ptr [esp+8]
 0068CC83    mov         dword ptr [ecx+0C],eax
 0068CC86    xor         eax,eax
>0068CC88    jmp         0068CCD3
 0068CC8A    inc         dword ptr [esp+8]
 0068CC8E    mov         edx,dword ptr [esp]
 0068CC91    mov         ecx,dword ptr [edx+100]
 0068CC97    cmp         ecx,dword ptr [esp+8]
>0068CC9B    ja          0068CBAD
 0068CCA1    mov         eax,dword ptr [esp+4]
 0068CCA5    xor         edx,edx
 0068CCA7    mov         dword ptr [eax+0C],edx
 0068CCAA    inc         dword ptr [esp+10]
 0068CCAE    mov         ecx,dword ptr [esp+4]
 0068CCB2    mov         eax,dword ptr [ecx+14]
 0068CCB5    cmp         eax,dword ptr [esp+10]
>0068CCB9    jg          0068CB9D
 0068CCBF    mov         edx,dword ptr [esp+4]
 0068CCC3    inc         dword ptr [edx+8]
 0068CCC6    mov         eax,dword ptr [esp]
 0068CCC9    call        _DF_.
 0068CCCE    mov         eax,1
 0068CCD3    add         esp,38
 0068CCD6    pop         edi
 0068CCD7    pop         esi
 0068CCD8    pop         ebx
 0068CCD9    ret
end;*}

//0068CCDC
procedure @jinit_c_coef_controller;
begin
{*
 0068CCDC    push        ebx
 0068CCDD    push        esi
 0068CCDE    mov         esi,eax
 0068CCE0    push        edi
 0068CCE1    mov         eax,esi
 0068CCE3    push        ebp
 0068CCE4    mov         ebx,edx
 0068CCE6    mov         edx,1
 0068CCEB    mov         edi,dword ptr [eax+4]
 0068CCEE    add         esp,0FFFFFFF8
 0068CCF1    mov         ecx,68
 0068CCF6    call        dword ptr [edi]
 0068CCF8    mov         dword ptr [esp],eax
 0068CCFB    test        ebx,ebx
 0068CCFD    mov         eax,dword ptr [esp]
 0068CD00    mov         dword ptr [esi+150],eax
 0068CD06    mov         edx,dword ptr [esp]
 0068CD09    mov         dword ptr [edx],68C5C0
>0068CD0F    je          0068CD64
 0068CD11    xor         ecx,ecx
 0068CD13    mov         dword ptr [esp+4],ecx
 0068CD17    mov         ebx,dword ptr [esi+3C]
 0068CD1A    mov         eax,dword ptr [esp]
 0068CD1D    lea         edi,[eax+40]
>0068CD20    jmp         0068CD59
 0068CD22    mov         edx,dword ptr [ebx+8]
 0068CD25    mov         eax,dword ptr [ebx+1C]
 0068CD28    call        @jround_up
 0068CD2D    push        eax
 0068CD2E    mov         edx,dword ptr [ebx+0C]
 0068CD31    mov         eax,dword ptr [ebx+20]
 0068CD34    call        @jround_up
 0068CD39    push        eax
 0068CD3A    mov         eax,esi
 0068CD3C    mov         ecx,dword ptr [ebx+0C]
 0068CD3F    mov         edx,1
 0068CD44    push        ecx
 0068CD45    xor         ecx,ecx
 0068CD47    mov         ebp,dword ptr [eax+4]
 0068CD4A    call        dword ptr [ebp+14]
 0068CD4D    mov         dword ptr [edi],eax
 0068CD4F    add         edi,4
 0068CD52    inc         dword ptr [esp+4]
 0068CD56    add         ebx,54
 0068CD59    mov         eax,dword ptr [esi+34]
 0068CD5C    cmp         eax,dword ptr [esp+4]
>0068CD60    jg          0068CD22
>0068CD62    jmp         0068CD9A
 0068CD64    mov         eax,esi
 0068CD66    mov         ecx,500
 0068CD6B    mov         edx,1
 0068CD70    mov         ebx,dword ptr [eax+4]
 0068CD73    call        dword ptr [ebx+4]
 0068CD76    mov         ecx,eax
 0068CD78    xor         eax,eax
 0068CD7A    mov         edx,dword ptr [esp]
 0068CD7D    add         edx,18
 0068CD80    mov         ebx,eax
 0068CD82    inc         eax
 0068CD83    shl         ebx,7
 0068CD86    add         ebx,ecx
 0068CD88    mov         dword ptr [edx],ebx
 0068CD8A    add         edx,4
 0068CD8D    cmp         eax,0A
>0068CD90    jl          0068CD80
 0068CD92    mov         eax,dword ptr [esp]
 0068CD95    xor         edx,edx
 0068CD97    mov         dword ptr [eax+40],edx
 0068CD9A    pop         ecx
 0068CD9B    pop         edx
 0068CD9C    pop         ebp
 0068CD9D    pop         edi
 0068CD9E    pop         esi
 0068CD9F    pop         ebx
 0068CDA0    ret
*}
end;

//0068CDA4
procedure _DF_.;
begin
{*
 0068CDA4    push        ebx
 0068CDA5    mov         ebx,eax
 0068CDA7    mov         eax,ebx
 0068CDA9    push        esi
 0068CDAA    push        ecx
 0068CDAB    mov         ecx,2000
 0068CDB0    mov         esi,dword ptr [ebx+158]
 0068CDB6    mov         ebx,dword ptr [eax+4]
 0068CDB9    mov         edx,1
 0068CDBE    call        dword ptr [ebx]
 0068CDC0    mov         dword ptr [esp],eax
 0068CDC3    mov         dword ptr [esi+8],eax
 0068CDC6    xor         edx,edx
 0068CDC8    mov         ecx,dword ptr [esp]
 0068CDCB    mov         eax,ecx
 0068CDCD    imul        ecx,edx,4C8B
 0068CDD3    mov         dword ptr [eax],ecx
 0068CDD5    imul        ecx,edx,9646
 0068CDDB    mov         dword ptr [eax+400],ecx
 0068CDE1    imul        ecx,edx,1D2F
 0068CDE7    add         ecx,8000
 0068CDED    mov         dword ptr [eax+800],ecx
 0068CDF3    imul        ecx,edx,0FFFFD4CD
 0068CDF9    mov         dword ptr [eax+0C00],ecx
 0068CDFF    imul        ecx,edx,0FFFFAB33
 0068CE05    mov         dword ptr [eax+1000],ecx
 0068CE0B    mov         ecx,edx
 0068CE0D    shl         ecx,0F
 0068CE10    add         ecx,807FFF
 0068CE16    mov         dword ptr [eax+1400],ecx
 0068CE1C    imul        ecx,edx,0FFFF94D1
 0068CE22    mov         dword ptr [eax+1800],ecx
 0068CE28    imul        ecx,edx,0FFFFEB2F
 0068CE2E    mov         dword ptr [eax+1C00],ecx
 0068CE34    inc         edx
 0068CE35    add         eax,4
 0068CE38    cmp         edx,0FF
>0068CE3E    jle         0068CDCD
 0068CE40    pop         edx
 0068CE41    pop         esi
 0068CE42    pop         ebx
 0068CE43    ret
*}
end;

//0068D1E0
procedure @jinit_color_converter;
begin
{*
 0068D1E0    push        ebx
 0068D1E1    mov         ebx,eax
 0068D1E3    mov         eax,ebx
 0068D1E5    push        esi
 0068D1E6    mov         ecx,0C
 0068D1EB    mov         edx,1
 0068D1F0    mov         esi,dword ptr [eax+4]
 0068D1F3    call        dword ptr [esi]
 0068D1F5    mov         esi,eax
 0068D1F7    mov         dword ptr [ebx+158],esi
 0068D1FD    mov         dword ptr [esi],68D1DC
 0068D203    mov         eax,dword ptr [ebx+24]
 0068D206    dec         eax
>0068D207    je          0068D216
 0068D209    dec         eax
 0068D20A    sub         eax,2
>0068D20D    jb          0068D22D
 0068D20F    sub         eax,2
>0068D212    jb          0068D244
>0068D214    jmp         0068D25B
 0068D216    cmp         dword ptr [ebx+20],1
>0068D21A    je          0068D270
 0068D21C    mov         edx,dword ptr [ebx]
 0068D21E    mov         eax,ebx
 0068D220    mov         dword ptr [edx+14],7
 0068D227    mov         edx,dword ptr [eax]
 0068D229    call        dword ptr [edx]
>0068D22B    jmp         0068D270
 0068D22D    cmp         dword ptr [ebx+20],3
>0068D231    je          0068D270
 0068D233    mov         ecx,dword ptr [ebx]
 0068D235    mov         eax,ebx
 0068D237    mov         dword ptr [ecx+14],7
 0068D23E    mov         edx,dword ptr [eax]
 0068D240    call        dword ptr [edx]
>0068D242    jmp         0068D270
 0068D244    cmp         dword ptr [ebx+20],4
>0068D248    je          0068D270
 0068D24A    mov         ecx,dword ptr [ebx]
 0068D24C    mov         eax,ebx
 0068D24E    mov         dword ptr [ecx+14],7
 0068D255    mov         edx,dword ptr [eax]
 0068D257    call        dword ptr [edx]
>0068D259    jmp         0068D270
 0068D25B    cmp         dword ptr [ebx+20],1
>0068D25F    jge         0068D270
 0068D261    mov         ecx,dword ptr [ebx]
 0068D263    mov         eax,ebx
 0068D265    mov         dword ptr [ecx+14],7
 0068D26C    mov         edx,dword ptr [eax]
 0068D26E    call        dword ptr [edx]
 0068D270    mov         ecx,dword ptr [ebx+38]
 0068D273    cmp         ecx,5
>0068D276    ja          0068D400
 0068D27C    jmp         dword ptr [ecx*4+68D283]
 0068D27C    dd          0068D400
 0068D27C    dd          0068D29B
 0068D27C    dd          0068D2F8
 0068D27C    dd          0068D32F
 0068D27C    dd          0068D37C
 0068D27C    dd          0068D3B3
 0068D29B    cmp         dword ptr [ebx+34],1
>0068D29F    je          0068D2B0
 0068D2A1    mov         eax,dword ptr [ebx]
 0068D2A3    mov         dword ptr [eax+14],8
 0068D2AA    mov         eax,ebx
 0068D2AC    mov         edx,dword ptr [eax]
 0068D2AE    call        dword ptr [edx]
 0068D2B0    cmp         dword ptr [ebx+24],1
>0068D2B4    jne         0068D2C0
 0068D2B6    mov         dword ptr [esi+4],68D11C
 0068D2BD    pop         esi
 0068D2BE    pop         ebx
 0068D2BF    ret
 0068D2C0    cmp         dword ptr [ebx+24],2
>0068D2C4    jne         0068D2D6
 0068D2C6    mov         dword ptr [esi],68CDA4;_DF_.
 0068D2CC    mov         dword ptr [esi+4],68CF4C
 0068D2D3    pop         esi
 0068D2D4    pop         ebx
 0068D2D5    ret
 0068D2D6    cmp         dword ptr [ebx+24],3
>0068D2DA    jne         0068D2E6
 0068D2DC    mov         dword ptr [esi+4],68D11C
 0068D2E3    pop         esi
 0068D2E4    pop         ebx
 0068D2E5    ret
 0068D2E6    mov         ecx,dword ptr [ebx]
 0068D2E8    mov         eax,ebx
 0068D2EA    mov         dword ptr [ecx+14],19
 0068D2F1    mov         edx,dword ptr [eax]
 0068D2F3    call        dword ptr [edx]
 0068D2F5    pop         esi
 0068D2F6    pop         ebx
 0068D2F7    ret
 0068D2F8    cmp         dword ptr [ebx+34],3
>0068D2FC    je          0068D30D
 0068D2FE    mov         ecx,dword ptr [ebx]
 0068D300    mov         eax,ebx
 0068D302    mov         dword ptr [ecx+14],8
 0068D309    mov         edx,dword ptr [eax]
 0068D30B    call        dword ptr [edx]
 0068D30D    cmp         dword ptr [ebx+24],2
>0068D311    jne         0068D31D
 0068D313    mov         dword ptr [esi+4],68D168
 0068D31A    pop         esi
 0068D31B    pop         ebx
 0068D31C    ret
 0068D31D    mov         ecx,dword ptr [ebx]
 0068D31F    mov         eax,ebx
 0068D321    mov         dword ptr [ecx+14],19
 0068D328    mov         edx,dword ptr [eax]
 0068D32A    call        dword ptr [edx]
 0068D32C    pop         esi
 0068D32D    pop         ebx
 0068D32E    ret
 0068D32F    cmp         dword ptr [ebx+34],3
>0068D333    je          0068D344
 0068D335    mov         ecx,dword ptr [ebx]
 0068D337    mov         eax,ebx
 0068D339    mov         dword ptr [ecx+14],8
 0068D340    mov         edx,dword ptr [eax]
 0068D342    call        dword ptr [edx]
 0068D344    cmp         dword ptr [ebx+24],2
>0068D348    jne         0068D35A
 0068D34A    mov         dword ptr [esi],68CDA4;_DF_.
 0068D350    mov         dword ptr [esi+4],68CE44
 0068D357    pop         esi
 0068D358    pop         ebx
 0068D359    ret
 0068D35A    cmp         dword ptr [ebx+24],3
>0068D35E    jne         0068D36A
 0068D360    mov         dword ptr [esi+4],68D168
 0068D367    pop         esi
 0068D368    pop         ebx
 0068D369    ret
 0068D36A    mov         ecx,dword ptr [ebx]
 0068D36C    mov         eax,ebx
 0068D36E    mov         dword ptr [ecx+14],19
 0068D375    mov         edx,dword ptr [eax]
 0068D377    call        dword ptr [edx]
 0068D379    pop         esi
 0068D37A    pop         ebx
 0068D37B    ret
 0068D37C    cmp         dword ptr [ebx+34],4
>0068D380    je          0068D391
 0068D382    mov         ecx,dword ptr [ebx]
 0068D384    mov         eax,ebx
 0068D386    mov         dword ptr [ecx+14],8
 0068D38D    mov         edx,dword ptr [eax]
 0068D38F    call        dword ptr [edx]
 0068D391    cmp         dword ptr [ebx+24],4
>0068D395    jne         0068D3A1
 0068D397    mov         dword ptr [esi+4],68D168
 0068D39E    pop         esi
 0068D39F    pop         ebx
 0068D3A0    ret
 0068D3A1    mov         ecx,dword ptr [ebx]
 0068D3A3    mov         eax,ebx
 0068D3A5    mov         dword ptr [ecx+14],19
 0068D3AC    mov         edx,dword ptr [eax]
 0068D3AE    call        dword ptr [edx]
 0068D3B0    pop         esi
 0068D3B1    pop         ebx
 0068D3B2    ret
 0068D3B3    cmp         dword ptr [ebx+34],4
>0068D3B7    je          0068D3C8
 0068D3B9    mov         ecx,dword ptr [ebx]
 0068D3BB    mov         eax,ebx
 0068D3BD    mov         dword ptr [ecx+14],8
 0068D3C4    mov         edx,dword ptr [eax]
 0068D3C6    call        dword ptr [edx]
 0068D3C8    cmp         dword ptr [ebx+24],4
>0068D3CC    jne         0068D3DE
 0068D3CE    mov         dword ptr [esi],68CDA4;_DF_.
 0068D3D4    mov         dword ptr [esi+4],68CFD8
 0068D3DB    pop         esi
 0068D3DC    pop         ebx
 0068D3DD    ret
 0068D3DE    cmp         dword ptr [ebx+24],5
>0068D3E2    jne         0068D3EE
 0068D3E4    mov         dword ptr [esi+4],68D168
 0068D3EB    pop         esi
 0068D3EC    pop         ebx
 0068D3ED    ret
 0068D3EE    mov         ecx,dword ptr [ebx]
 0068D3F0    mov         eax,ebx
 0068D3F2    mov         dword ptr [ecx+14],19
 0068D3F9    mov         edx,dword ptr [eax]
 0068D3FB    call        dword ptr [edx]
 0068D3FD    pop         esi
 0068D3FE    pop         ebx
 0068D3FF    ret
 0068D400    mov         ecx,dword ptr [ebx+38]
 0068D403    cmp         ecx,dword ptr [ebx+24]
>0068D406    jne         0068D410
 0068D408    mov         eax,dword ptr [ebx+34]
 0068D40B    cmp         eax,dword ptr [ebx+20]
>0068D40E    je          0068D41F
 0068D410    mov         edx,dword ptr [ebx]
 0068D412    mov         eax,ebx
 0068D414    mov         dword ptr [edx+14],19
 0068D41B    mov         edx,dword ptr [eax]
 0068D41D    call        dword ptr [edx]
 0068D41F    mov         dword ptr [esi+4],68D168
 0068D426    pop         esi
 0068D427    pop         ebx
 0068D428    ret
*}
end;

//0068D42C
procedure _DF_.;
begin
{*
 0068D42C    ret
*}
end;

//0068D430
{*procedure sub_0068D430(?:Integer; ?:?; ?:?; ?:?);
begin
 0068D430    push        ebp
 0068D431    mov         ebp,esp
 0068D433    add         esp,0FFFFFFF4
 0068D436    push        esi
 0068D437    push        edi
 0068D438    mov         dword ptr [ebp-8],ecx
 0068D43B    mov         dword ptr [ebp-4],edx
 0068D43E    mov         edx,dword ptr [ebp+8]
 0068D441    sub         edx,dword ptr [ebp-8]
 0068D444    mov         dword ptr [ebp-0C],edx
 0068D447    cmp         dword ptr [ebp-0C],0
>0068D44B    jle         0068D476
 0068D44D    xor         ecx,ecx
 0068D44F    mov         edi,eax
 0068D451    cmp         ecx,dword ptr [ebp-4]
>0068D454    jge         0068D476
 0068D456    mov         eax,dword ptr [edi]
 0068D458    mov         esi,dword ptr [ebp-0C]
 0068D45B    add         eax,dword ptr [ebp-8]
 0068D45E    test        esi,esi
 0068D460    mov         dl,byte ptr [eax-1]
>0068D463    jle         0068D46D
 0068D465    mov         byte ptr [eax],dl
 0068D467    inc         eax
 0068D468    dec         esi
 0068D469    test        esi,esi
>0068D46B    jg          0068D465
 0068D46D    inc         ecx
 0068D46E    add         edi,4
 0068D471    cmp         ecx,dword ptr [ebp-4]
>0068D474    jl          0068D456
 0068D476    pop         edi
 0068D477    pop         esi
 0068D478    mov         esp,ebp
 0068D47A    pop         ebp
 0068D47B    ret         4
end;*}

//0068DBCC
procedure @jinit_downsampler;
begin
{*
 0068DBCC    push        ebx
 0068DBCD    push        esi
 0068DBCE    push        edi
 0068DBCF    push        ebp
 0068DBD0    add         esp,0FFFFFFF8
 0068DBD3    mov         ebx,eax
 0068DBD5    mov         eax,ebx
 0068DBD7    mov         ecx,34
 0068DBDC    mov         dword ptr [esp+4],1
 0068DBE4    mov         esi,dword ptr [eax+4]
 0068DBE7    mov         edx,1
 0068DBEC    call        dword ptr [esi]
 0068DBEE    mov         dword ptr [esp],eax
 0068DBF1    mov         eax,dword ptr [esp]
 0068DBF4    mov         dword ptr [ebx+15C],eax
 0068DBFA    mov         edx,dword ptr [esp]
 0068DBFD    mov         dword ptr [edx],68D42C;_DF_.
 0068DC03    mov         ecx,dword ptr [esp]
 0068DC06    mov         dword ptr [ecx+4],68D480
 0068DC0D    mov         eax,dword ptr [esp]
 0068DC10    xor         edx,edx
 0068DC12    mov         dword ptr [eax+8],edx
 0068DC15    cmp         dword ptr [ebx+0B4],0
>0068DC1C    je          0068DC2D
 0068DC1E    mov         ecx,dword ptr [ebx]
 0068DC20    mov         eax,ebx
 0068DC22    mov         dword ptr [ecx+14],17
 0068DC29    mov         edx,dword ptr [eax]
 0068DC2B    call        dword ptr [edx]
 0068DC2D    xor         ebp,ebp
 0068DC2F    mov         esi,dword ptr [ebx+3C]
 0068DC32    mov         eax,dword ptr [esp]
 0068DC35    lea         edi,[eax+0C]
>0068DC38    jmp         0068DD1F
 0068DC3D    mov         eax,dword ptr [esi+8]
 0068DC40    cmp         eax,dword ptr [ebx+0E0]
>0068DC46    jne         0068DC7C
 0068DC48    mov         edx,dword ptr [esi+0C]
 0068DC4B    cmp         edx,dword ptr [ebx+0E4]
>0068DC51    jne         0068DC7C
 0068DC53    cmp         dword ptr [ebx+0B8],0
>0068DC5A    je          0068DC71
 0068DC5C    mov         dword ptr [edi],68DA3C
 0068DC62    mov         ecx,dword ptr [esp]
 0068DC65    mov         dword ptr [ecx+8],1
>0068DC6C    jmp         0068DD18
 0068DC71    mov         dword ptr [edi],68D614
>0068DC77    jmp         0068DD18
 0068DC7C    mov         eax,dword ptr [esi+8]
 0068DC7F    add         eax,eax
 0068DC81    cmp         eax,dword ptr [ebx+0E0]
>0068DC87    jne         0068DCA2
 0068DC89    mov         edx,dword ptr [esi+0C]
 0068DC8C    cmp         edx,dword ptr [ebx+0E4]
>0068DC92    jne         0068DCA2
 0068DC94    xor         ecx,ecx
 0068DC96    mov         dword ptr [esp+4],ecx
 0068DC9A    mov         dword ptr [edi],68D660
>0068DCA0    jmp         0068DD18
 0068DCA2    mov         eax,dword ptr [esi+8]
 0068DCA5    add         eax,eax
 0068DCA7    cmp         eax,dword ptr [ebx+0E0]
>0068DCAD    jne         0068DCDF
 0068DCAF    mov         edx,dword ptr [esi+0C]
 0068DCB2    add         edx,edx
 0068DCB4    cmp         edx,dword ptr [ebx+0E4]
>0068DCBA    jne         0068DCDF
 0068DCBC    cmp         dword ptr [ebx+0B8],0
>0068DCC3    je          0068DCD7
 0068DCC5    mov         dword ptr [edi],68D7AC
 0068DCCB    mov         ecx,dword ptr [esp]
 0068DCCE    mov         dword ptr [ecx+8],1
>0068DCD5    jmp         0068DD18
 0068DCD7    mov         dword ptr [edi],68D6F4
>0068DCDD    jmp         0068DD18
 0068DCDF    mov         eax,dword ptr [ebx+0E0]
 0068DCE5    cdq
 0068DCE6    idiv        eax,dword ptr [esi+8]
 0068DCE9    test        edx,edx
>0068DCEB    jne         0068DD09
 0068DCED    mov         eax,dword ptr [ebx+0E4]
 0068DCF3    cdq
 0068DCF4    idiv        eax,dword ptr [esi+0C]
 0068DCF7    test        edx,edx
>0068DCF9    jne         0068DD09
 0068DCFB    xor         ecx,ecx
 0068DCFD    mov         dword ptr [esp+4],ecx
 0068DD01    mov         dword ptr [edi],68D504
>0068DD07    jmp         0068DD18
 0068DD09    mov         eax,dword ptr [ebx]
 0068DD0B    mov         dword ptr [eax+14],25
 0068DD12    mov         eax,ebx
 0068DD14    mov         edx,dword ptr [eax]
 0068DD16    call        dword ptr [edx]
 0068DD18    add         edi,4
 0068DD1B    inc         ebp
 0068DD1C    add         esi,54
 0068DD1F    cmp         ebp,dword ptr [ebx+34]
>0068DD22    jl          0068DC3D
 0068DD28    cmp         dword ptr [ebx+0B8],0
>0068DD2F    je          0068DD4A
 0068DD31    cmp         dword ptr [esp+4],0
>0068DD36    jne         0068DD4A
 0068DD38    mov         ecx,dword ptr [ebx]
 0068DD3A    mov         eax,ebx
 0068DD3C    xor         edx,edx
 0068DD3E    mov         dword ptr [ecx+14],62
 0068DD45    mov         ecx,dword ptr [eax]
 0068DD47    call        dword ptr [ecx+4]
 0068DD4A    pop         ecx
 0068DD4B    pop         edx
 0068DD4C    pop         ebp
 0068DD4D    pop         edi
 0068DD4E    pop         esi
 0068DD4F    pop         ebx
 0068DD50    ret
*}
end;

//0068DD54
procedure _DF_.;
begin
{*
 0068DD54    push        ebx
 0068DD55    push        esi
 0068DD56    push        edi
 0068DD57    add         esp,0FFFFFFD8
 0068DD5A    xor         ecx,ecx
 0068DD5C    mov         dword ptr [esp],eax
 0068DD5F    mov         eax,dword ptr [esp]
 0068DD62    mov         edx,dword ptr [eax+160]
 0068DD68    mov         dword ptr [esp+4],edx
 0068DD6C    mov         dword ptr [esp+8],ecx
 0068DD70    mov         eax,dword ptr [esp]
 0068DD73    mov         edx,dword ptr [eax+3C]
 0068DD76    mov         dword ptr [esp+0C],edx
>0068DD7A    jmp         0068DEED
 0068DD7F    mov         ecx,dword ptr [esp+0C]
 0068DD83    mov         ebx,dword ptr [ecx+10]
 0068DD86    test        ebx,ebx
>0068DD88    jl          0068DD99
 0068DD8A    cmp         ebx,4
>0068DD8D    jge         0068DD99
 0068DD8F    mov         eax,dword ptr [esp]
 0068DD92    cmp         dword ptr [eax+ebx*4+40],0
>0068DD97    jne         0068DDAF
 0068DD99    mov         edx,dword ptr [esp]
 0068DD9C    mov         eax,dword ptr [edx]
 0068DD9E    mov         dword ptr [eax+14],33
 0068DDA5    mov         dword ptr [eax+18],ebx
 0068DDA8    mov         eax,dword ptr [esp]
 0068DDAB    mov         edx,dword ptr [eax]
 0068DDAD    call        dword ptr [edx]
 0068DDAF    mov         ecx,dword ptr [esp]
 0068DDB2    mov         eax,dword ptr [ecx+ebx*4+40]
 0068DDB6    mov         dword ptr [esp+10],eax
 0068DDBA    mov         edx,dword ptr [esp]
 0068DDBD    mov         ecx,dword ptr [edx+0BC]
 0068DDC3    dec         ecx
>0068DDC4    je          0068DDCE
 0068DDC6    dec         ecx
>0068DDC7    je          0068DE30
>0068DDC9    jmp         0068DED1
 0068DDCE    mov         eax,dword ptr [esp+4]
 0068DDD2    cmp         dword ptr [eax+ebx*4+0C],0
>0068DDD7    jne         0068DDF3
 0068DDD9    mov         eax,dword ptr [esp]
 0068DDDC    mov         ecx,100
 0068DDE1    mov         edx,1
 0068DDE6    mov         esi,dword ptr [eax+4]
 0068DDE9    call        dword ptr [esi]
 0068DDEB    mov         edx,dword ptr [esp+4]
 0068DDEF    mov         dword ptr [edx+ebx*4+0C],eax
 0068DDF3    mov         eax,dword ptr [esp+4]
 0068DDF7    xor         esi,esi
 0068DDF9    mov         edx,6E9A60
 0068DDFE    mov         eax,dword ptr [eax+ebx*4+0C]
 0068DE02    mov         ecx,eax
 0068DE04    mov         eax,dword ptr [esp+10]
 0068DE08    movsx       edi,word ptr [edx]
 0068DE0B    movzx       ebx,word ptr [eax]
 0068DE0E    imul        ebx,edi
 0068DE11    add         ebx,400
 0068DE17    add         eax,2
 0068DE1A    sar         ebx,0B
 0068DE1D    add         edx,2
 0068DE20    mov         dword ptr [ecx],ebx
 0068DE22    add         ecx,4
 0068DE25    inc         esi
 0068DE26    cmp         esi,40
>0068DE29    jl          0068DE08
>0068DE2B    jmp         0068DEE4
 0068DE30    mov         eax,dword ptr [esp+4]
 0068DE34    cmp         dword ptr [eax+ebx*4+20],0
>0068DE39    jne         0068DE55
 0068DE3B    mov         eax,dword ptr [esp]
 0068DE3E    mov         ecx,100
 0068DE43    mov         edx,1
 0068DE48    mov         esi,dword ptr [eax+4]
 0068DE4B    call        dword ptr [esi]
 0068DE4D    mov         edx,dword ptr [esp+4]
 0068DE51    mov         dword ptr [edx+ebx*4+20],eax
 0068DE55    mov         eax,dword ptr [esp+4]
 0068DE59    xor         esi,esi
 0068DE5B    mov         ecx,dword ptr [eax+ebx*4+20]
 0068DE5F    xor         eax,eax
 0068DE61    mov         dword ptr [esp+14],ecx
 0068DE65    mov         dword ptr [esp+18],eax
 0068DE69    mov         dword ptr [esp+20],6E9AE0;gvar_006E9AE0:Double
 0068DE71    xor         ebx,ebx
 0068DE73    mov         eax,dword ptr [esp+14]
 0068DE77    lea         ecx,[eax+esi*4]
 0068DE7A    mov         edx,6E9AE0;gvar_006E9AE0:Double
 0068DE7F    mov         eax,dword ptr [esp+20]
 0068DE83    mov         dword ptr [esp+1C],eax
 0068DE87    mov         eax,dword ptr [esp+10]
 0068DE8B    lea         eax,[eax+esi*2]
 0068DE8E    movzx       edi,word ptr [eax]
 0068DE91    mov         dword ptr [esp+24],edi
 0068DE95    fild        dword ptr [esp+24]
 0068DE99    mov         edi,dword ptr [esp+1C]
 0068DE9D    fmul        qword ptr [edi]
 0068DE9F    fmul        qword ptr [edx]
 0068DEA1    fmul        dword ptr ds:[68DF04];8:Single
 0068DEA7    fdivr       dword ptr ds:[68DF08];1:Single
 0068DEAD    fstp        dword ptr [ecx]
 0068DEAF    inc         esi
 0068DEB0    add         ecx,4
 0068DEB3    add         eax,2
 0068DEB6    inc         ebx
 0068DEB7    add         edx,8
 0068DEBA    cmp         ebx,8
>0068DEBD    jl          0068DE8E
 0068DEBF    inc         dword ptr [esp+18]
 0068DEC3    add         dword ptr [esp+20],8
 0068DEC8    cmp         dword ptr [esp+18],8
>0068DECD    jl          0068DE71
>0068DECF    jmp         0068DEE4
 0068DED1    mov         eax,dword ptr [esp]
 0068DED4    mov         edx,dword ptr [eax]
 0068DED6    mov         dword ptr [edx+14],2F
 0068DEDD    mov         eax,dword ptr [esp]
 0068DEE0    mov         edx,dword ptr [eax]
 0068DEE2    call        dword ptr [edx]
 0068DEE4    inc         dword ptr [esp+8]
 0068DEE8    add         dword ptr [esp+0C],54
 0068DEED    mov         ecx,dword ptr [esp]
 0068DEF0    mov         eax,dword ptr [ecx+34]
 0068DEF3    cmp         eax,dword ptr [esp+8]
>0068DEF7    jg          0068DD7F
 0068DEFD    add         esp,28
 0068DF00    pop         edi
 0068DF01    pop         esi
 0068DF02    pop         ebx
 0068DF03    ret
*}
end;

//0068E1F0
procedure @jinit_forward_dct;
begin
{*
 0068E1F0    push        ebx
 0068E1F1    push        esi
 0068E1F2    mov         esi,eax
 0068E1F4    mov         ecx,30
 0068E1F9    mov         edx,1
 0068E1FE    mov         eax,esi
 0068E200    mov         ebx,dword ptr [eax+4]
 0068E203    call        dword ptr [ebx]
 0068E205    mov         ebx,eax
 0068E207    mov         dword ptr [esi+160],ebx
 0068E20D    mov         dword ptr [ebx],68DD54;_DF_.
 0068E213    mov         eax,dword ptr [esi+0BC]
 0068E219    dec         eax
>0068E21A    je          0068E221
 0068E21C    dec         eax
>0068E21D    je          0068E231
>0068E21F    jmp         0068E241
 0068E221    mov         dword ptr [ebx+4],68DF0C
 0068E228    mov         dword ptr [ebx+8],6917E8;@jpeg_fdct_ifast
>0068E22F    jmp         0068E250
 0068E231    mov         dword ptr [ebx+4],68E060
 0068E238    mov         dword ptr [ebx+1C],691A54;@jpeg_fdct_float
>0068E23F    jmp         0068E250
 0068E241    mov         edx,dword ptr [esi]
 0068E243    mov         eax,esi
 0068E245    mov         dword ptr [edx+14],2F
 0068E24C    mov         edx,dword ptr [eax]
 0068E24E    call        dword ptr [edx]
 0068E250    xor         edx,edx
 0068E252    lea         eax,[ebx+0C]
 0068E255    xor         ecx,ecx
 0068E257    inc         edx
 0068E258    mov         dword ptr [eax],ecx
 0068E25A    xor         ecx,ecx
 0068E25C    mov         dword ptr [eax+14],ecx
 0068E25F    add         eax,4
 0068E262    cmp         edx,4
>0068E265    jl          0068E255
 0068E267    pop         esi
 0068E268    pop         ebx
 0068E269    ret
*}
end;

//0068E26C
procedure _DF_.;
begin
{*
 0068E26C    push        ebx
 0068E26D    push        esi
 0068E26E    push        edi
 0068E26F    push        ebp
 0068E270    add         esp,0FFFFFFEC
 0068E273    mov         esi,eax
 0068E275    mov         dword ptr [esp],edx
 0068E278    mov         edi,dword ptr [esi+164]
 0068E27E    mov         dword ptr [edi+20],esi
 0068E281    mov         eax,dword ptr [esp]
 0068E284    mov         dword ptr [edi+0C],eax
 0068E287    cmp         dword ptr [esi+134],0
 0068E28E    sete        dl
 0068E291    and         edx,1
 0068E294    mov         dword ptr [esp+4],edx
 0068E298    cmp         dword ptr [esi+13C],0
>0068E29F    jne         0068E2BA
 0068E2A1    cmp         dword ptr [esp+4],0
>0068E2A6    je          0068E2B1
 0068E2A8    mov         dword ptr [edi+4],68E658
>0068E2AF    jmp         0068E2EB
 0068E2B1    mov         dword ptr [edi+4],68E784
>0068E2B8    jmp         0068E2EB
 0068E2BA    cmp         dword ptr [esp+4],0
>0068E2BF    je          0068E2CA
 0068E2C1    mov         dword ptr [edi+4],68E918
>0068E2C8    jmp         0068E2EB
 0068E2CA    mov         dword ptr [edi+4],68E9C0
 0068E2D1    cmp         dword ptr [edi+40],0
>0068E2D5    jne         0068E2EB
 0068E2D7    mov         eax,esi
 0068E2D9    mov         ecx,3E8
 0068E2DE    mov         edx,1
 0068E2E3    mov         ebx,dword ptr [eax+4]
 0068E2E6    call        dword ptr [ebx]
 0068E2E8    mov         dword ptr [edi+40],eax
 0068E2EB    cmp         dword ptr [esp],0
>0068E2EF    je          0068E2FA
 0068E2F1    mov         dword ptr [edi+8],68EC58
>0068E2F8    jmp         0068E301
 0068E2FA    mov         dword ptr [edi+8],68EC1C
 0068E301    xor         eax,eax
 0068E303    mov         dword ptr [esp+8],eax
 0068E307    lea         edx,[edi+24]
 0068E30A    mov         dword ptr [esp+10],edx
 0068E30E    lea         ecx,[esi+0F0]
 0068E314    mov         dword ptr [esp+0C],ecx
>0068E318    jmp         0068E408
 0068E31D    mov         eax,dword ptr [esp+0C]
 0068E321    mov         edx,dword ptr [esp+10]
 0068E325    xor         ecx,ecx
 0068E327    mov         eax,dword ptr [eax]
 0068E329    mov         dword ptr [edx],ecx
 0068E32B    cmp         dword ptr [esp+4],0
>0068E330    je          0068E36C
 0068E332    cmp         dword ptr [esi+13C],0
>0068E339    jne         0068E3FA
 0068E33F    mov         ebx,dword ptr [eax+14]
 0068E342    test        ebx,ebx
>0068E344    jl          0068E358
 0068E346    cmp         ebx,4
>0068E349    jge         0068E358
 0068E34B    cmp         dword ptr [esi+ebx*4+50],0
>0068E350    jne         0068E39A
 0068E352    cmp         dword ptr [esp],0
>0068E356    jne         0068E39A
 0068E358    mov         eax,dword ptr [esi]
 0068E35A    mov         dword ptr [eax+14],31
 0068E361    mov         dword ptr [eax+18],ebx
 0068E364    mov         eax,esi
 0068E366    mov         edx,dword ptr [eax]
 0068E368    call        dword ptr [edx]
>0068E36A    jmp         0068E39A
 0068E36C    mov         ebx,dword ptr [eax+18]
 0068E36F    mov         dword ptr [edi+34],ebx
 0068E372    test        ebx,ebx
>0068E374    jl          0068E388
 0068E376    cmp         ebx,4
>0068E379    jge         0068E388
 0068E37B    cmp         dword ptr [esi+ebx*4+60],0
>0068E380    jne         0068E39A
 0068E382    cmp         dword ptr [esp],0
>0068E386    jne         0068E39A
 0068E388    mov         eax,dword ptr [esi]
 0068E38A    mov         dword ptr [eax+14],31
 0068E391    mov         dword ptr [eax+18],ebx
 0068E394    mov         eax,esi
 0068E396    mov         edx,dword ptr [eax]
 0068E398    call        dword ptr [edx]
 0068E39A    cmp         dword ptr [esp],0
>0068E39E    je          0068E3D3
 0068E3A0    cmp         dword ptr [edi+ebx*4+5C],0
>0068E3A5    jne         0068E3BD
 0068E3A7    mov         eax,esi
 0068E3A9    mov         ecx,404
 0068E3AE    mov         edx,1
 0068E3B3    mov         ebp,dword ptr [eax+4]
 0068E3B6    call        dword ptr [ebp]
 0068E3B9    mov         dword ptr [edi+ebx*4+5C],eax
 0068E3BD    push        404
 0068E3C2    push        0
 0068E3C4    mov         eax,dword ptr [edi+ebx*4+5C]
 0068E3C8    push        eax
 0068E3C9    call        _memset
 0068E3CE    add         esp,0C
>0068E3D1    jmp         0068E3FA
 0068E3D3    cmp         dword ptr [esp+4],0
>0068E3D8    je          0068E3EB
 0068E3DA    lea         ecx,[edi+ebx*4+4C]
 0068E3DE    mov         edx,dword ptr [esi+ebx*4+50]
 0068E3E2    mov         eax,esi
 0068E3E4    call        @jpeg_make_c_derived_tbl
>0068E3E9    jmp         0068E3FA
 0068E3EB    lea         ecx,[edi+ebx*4+4C]
 0068E3EF    mov         edx,dword ptr [esi+ebx*4+60]
 0068E3F3    mov         eax,esi
 0068E3F5    call        @jpeg_make_c_derived_tbl
 0068E3FA    inc         dword ptr [esp+8]
 0068E3FE    add         dword ptr [esp+10],4
 0068E403    add         dword ptr [esp+0C],4
 0068E408    mov         edx,dword ptr [esp+8]
 0068E40C    cmp         edx,dword ptr [esi+0EC]
>0068E412    jl          0068E31D
 0068E418    xor         ecx,ecx
 0068E41A    xor         eax,eax
 0068E41C    mov         dword ptr [edi+38],ecx
 0068E41F    mov         dword ptr [edi+3C],eax
 0068E422    xor         edx,edx
 0068E424    xor         ecx,ecx
 0068E426    mov         dword ptr [edi+18],edx
 0068E429    mov         dword ptr [edi+1C],ecx
 0068E42C    mov         eax,dword ptr [esi+0C0]
 0068E432    xor         edx,edx
 0068E434    mov         dword ptr [edi+44],eax
 0068E437    mov         dword ptr [edi+48],edx
 0068E43A    add         esp,14
 0068E43D    pop         ebp
 0068E43E    pop         edi
 0068E43F    pop         esi
 0068E440    pop         ebx
 0068E441    ret
*}
end;

//0068E444
{*function sub_0068E444(?:?):?;
begin
 0068E444    push        ebx
 0068E445    mov         ebx,eax
 0068E447    push        esi
 0068E448    mov         eax,dword ptr [ebx+20]
 0068E44B    mov         esi,dword ptr [eax+14]
 0068E44E    call        dword ptr [esi+0C]
 0068E451    test        eax,eax
>0068E453    jne         0068E465
 0068E455    mov         eax,dword ptr [ebx+20]
 0068E458    mov         edx,dword ptr [eax]
 0068E45A    mov         dword ptr [edx+14],16
 0068E461    mov         edx,dword ptr [eax]
 0068E463    call        dword ptr [edx]
 0068E465    mov         ecx,dword ptr [esi]
 0068E467    mov         dword ptr [ebx+10],ecx
 0068E46A    mov         eax,dword ptr [esi+4]
 0068E46D    mov         dword ptr [ebx+14],eax
 0068E470    pop         esi
 0068E471    pop         ebx
 0068E472    ret
end;*}

//0068E474
{*function sub_0068E474(?:?; ?:?; ?:?):?;
begin
 0068E474    push        ebx
 0068E475    mov         ebx,eax
 0068E477    push        esi
 0068E478    push        edi
 0068E479    push        ebp
 0068E47A    mov         edi,ecx
 0068E47C    test        edi,edi
 0068E47E    mov         ebp,dword ptr [ebx+1C]
 0068E481    mov         esi,edx
>0068E483    jne         0068E495
 0068E485    mov         eax,dword ptr [ebx+20]
 0068E488    mov         edx,dword ptr [eax]
 0068E48A    mov         dword ptr [edx+14],27
 0068E491    mov         edx,dword ptr [eax]
 0068E493    call        dword ptr [edx]
 0068E495    cmp         dword ptr [ebx+0C],0
>0068E499    jne         0068E509
 0068E49B    mov         ecx,edi
 0068E49D    mov         eax,1
 0068E4A2    shl         eax,cl
 0068E4A4    dec         eax
 0068E4A5    add         ebp,edi
 0068E4A7    mov         ecx,18
 0068E4AC    and         esi,eax
 0068E4AE    sub         ecx,ebp
 0068E4B0    shl         esi,cl
 0068E4B2    or          esi,dword ptr [ebx+18]
 0068E4B5    cmp         ebp,8
>0068E4B8    jl          0068E503
 0068E4BA    mov         edi,esi
 0068E4BC    mov         edx,dword ptr [ebx+10]
 0068E4BF    sar         edi,10
 0068E4C2    inc         dword ptr [ebx+10]
 0068E4C5    and         edi,0FF
 0068E4CB    mov         eax,edi
 0068E4CD    mov         byte ptr [edx],al
 0068E4CF    dec         dword ptr [ebx+14]
>0068E4D2    jne         0068E4DB
 0068E4D4    mov         eax,ebx
 0068E4D6    call        0068E444
 0068E4DB    cmp         edi,0FF
>0068E4E1    jne         0068E4F8
 0068E4E3    mov         edx,dword ptr [ebx+10]
 0068E4E6    inc         dword ptr [ebx+10]
 0068E4E9    mov         byte ptr [edx],0
 0068E4EC    dec         dword ptr [ebx+14]
>0068E4EF    jne         0068E4F8
 0068E4F1    mov         eax,ebx
 0068E4F3    call        0068E444
 0068E4F8    shl         esi,8
 0068E4FB    sub         ebp,8
 0068E4FE    cmp         ebp,8
>0068E501    jge         0068E4BA
 0068E503    mov         dword ptr [ebx+18],esi
 0068E506    mov         dword ptr [ebx+1C],ebp
 0068E509    pop         ebp
 0068E50A    pop         edi
 0068E50B    pop         esi
 0068E50C    pop         ebx
 0068E50D    ret
end;*}

//0068E510
{*procedure sub_0068E510(?:?);
begin
 0068E510    push        ebx
 0068E511    mov         ebx,eax
 0068E513    mov         ecx,7
 0068E518    mov         edx,7F
 0068E51D    mov         eax,ebx
 0068E51F    call        0068E474
 0068E524    xor         eax,eax
 0068E526    xor         edx,edx
 0068E528    mov         dword ptr [ebx+18],eax
 0068E52B    mov         dword ptr [ebx+1C],edx
 0068E52E    pop         ebx
 0068E52F    ret
end;*}

//0068E530
{*procedure sub_0068E530(?:?; ?:?; ?:?);
begin
 0068E530    push        ebx
 0068E531    cmp         dword ptr [eax+0C],0
>0068E535    je          0068E540
 0068E537    mov         eax,dword ptr [eax+edx*4+5C]
 0068E53B    inc         dword ptr [eax+ecx*4]
 0068E53E    pop         ebx
 0068E53F    ret
 0068E540    mov         edx,dword ptr [eax+edx*4+4C]
 0068E544    mov         ebx,dword ptr [edx+ecx*4]
 0068E547    movsx       edx,byte ptr [edx+ecx+400]
 0068E54F    mov         ecx,edx
 0068E551    mov         edx,ebx
 0068E553    call        0068E474
 0068E558    pop         ebx
 0068E559    ret
end;*}

//0068E55C
{*procedure sub_0068E55C(?:?; ?:?; ?:?);
begin
 0068E55C    push        ebx
 0068E55D    push        esi
 0068E55E    push        edi
 0068E55F    mov         edi,eax
 0068E561    mov         esi,ecx
 0068E563    mov         ebx,edx
 0068E565    cmp         dword ptr [edi+0C],0
>0068E569    jne         0068E584
 0068E56B    test        esi,esi
>0068E56D    jbe         0068E584
 0068E56F    movsx       edx,byte ptr [ebx]
 0068E572    mov         ecx,1
 0068E577    mov         eax,edi
 0068E579    call        0068E474
 0068E57E    inc         ebx
 0068E57F    dec         esi
 0068E580    test        esi,esi
>0068E582    ja          0068E56F
 0068E584    pop         edi
 0068E585    pop         esi
 0068E586    pop         ebx
 0068E587    ret
end;*}

//0068E588
{*procedure sub_0068E588(?:?);
begin
 0068E588    push        ebx
 0068E589    mov         ebx,eax
 0068E58B    push        esi
 0068E58C    mov         eax,dword ptr [ebx+38]
 0068E58F    test        eax,eax
>0068E591    jbe         0068E5D2
 0068E593    xor         esi,esi
>0068E595    jmp         0068E598
 0068E597    inc         esi
 0068E598    sar         eax,1
>0068E59A    jne         0068E597
 0068E59C    mov         ecx,esi
 0068E59E    shl         ecx,4
 0068E5A1    mov         edx,dword ptr [ebx+34]
 0068E5A4    mov         eax,ebx
 0068E5A6    call        0068E530
 0068E5AB    test        esi,esi
>0068E5AD    je          0068E5BB
 0068E5AF    mov         ecx,esi
 0068E5B1    mov         edx,dword ptr [ebx+38]
 0068E5B4    mov         eax,ebx
 0068E5B6    call        0068E474
 0068E5BB    xor         eax,eax
 0068E5BD    mov         dword ptr [ebx+38],eax
 0068E5C0    mov         ecx,dword ptr [ebx+3C]
 0068E5C3    mov         edx,dword ptr [ebx+40]
 0068E5C6    mov         eax,ebx
 0068E5C8    call        0068E55C
 0068E5CD    xor         edx,edx
 0068E5CF    mov         dword ptr [ebx+3C],edx
 0068E5D2    pop         esi
 0068E5D3    pop         ebx
 0068E5D4    ret
end;*}

//0068E5D8
{*procedure sub_0068E5D8(?:?; ?:?);
begin
 0068E5D8    push        ebx
 0068E5D9    push        esi
 0068E5DA    mov         esi,edx
 0068E5DC    mov         ebx,eax
 0068E5DE    mov         eax,ebx
 0068E5E0    call        0068E588
 0068E5E5    cmp         dword ptr [ebx+0C],0
>0068E5E9    jne         0068E620
 0068E5EB    mov         eax,ebx
 0068E5ED    call        0068E510
 0068E5F2    mov         edx,dword ptr [ebx+10]
 0068E5F5    inc         dword ptr [ebx+10]
 0068E5F8    mov         byte ptr [edx],0FF
 0068E5FB    dec         dword ptr [ebx+14]
>0068E5FE    jne         0068E607
 0068E600    mov         eax,ebx
 0068E602    call        0068E444
 0068E607    mov         ecx,dword ptr [ebx+10]
 0068E60A    mov         edx,esi
 0068E60C    inc         dword ptr [ebx+10]
 0068E60F    add         dl,0D0
 0068E612    mov         byte ptr [ecx],dl
 0068E614    dec         dword ptr [ebx+14]
>0068E617    jne         0068E620
 0068E619    mov         eax,ebx
 0068E61B    call        0068E444
 0068E620    mov         edx,dword ptr [ebx+20]
 0068E623    cmp         dword ptr [edx+134],0
>0068E62A    jne         0068E649
 0068E62C    xor         edx,edx
 0068E62E    lea         eax,[ebx+24]
>0068E631    jmp         0068E63B
 0068E633    xor         ecx,ecx
 0068E635    inc         edx
 0068E636    mov         dword ptr [eax],ecx
 0068E638    add         eax,4
 0068E63B    mov         ecx,dword ptr [ebx+20]
 0068E63E    cmp         edx,dword ptr [ecx+0EC]
>0068E644    jl          0068E633
 0068E646    pop         esi
 0068E647    pop         ebx
 0068E648    ret
 0068E649    xor         eax,eax
 0068E64B    xor         edx,edx
 0068E64D    mov         dword ptr [ebx+38],eax
 0068E650    mov         dword ptr [ebx+3C],edx
 0068E653    pop         esi
 0068E654    pop         ebx
 0068E655    ret
end;*}

//0068ED18
procedure @jinit_phuff_encoder;
begin
{*
 0068ED18    push        ebx
 0068ED19    mov         ebx,eax
 0068ED1B    mov         eax,ebx
 0068ED1D    push        esi
 0068ED1E    mov         ecx,6C
 0068ED23    mov         edx,1
 0068ED28    mov         esi,dword ptr [eax+4]
 0068ED2B    call        dword ptr [esi]
 0068ED2D    mov         ecx,eax
 0068ED2F    xor         edx,edx
 0068ED31    mov         dword ptr [ebx+164],ecx
 0068ED37    mov         dword ptr [ecx],68E26C;_DF_.
 0068ED3D    lea         eax,[ecx+4C]
 0068ED40    xor         ebx,ebx
 0068ED42    inc         edx
 0068ED43    mov         dword ptr [eax],ebx
 0068ED45    xor         ebx,ebx
 0068ED47    mov         dword ptr [eax+10],ebx
 0068ED4A    add         eax,4
 0068ED4D    cmp         edx,4
>0068ED50    jl          0068ED40
 0068ED52    xor         eax,eax
 0068ED54    mov         dword ptr [ecx+40],eax
 0068ED57    pop         esi
 0068ED58    pop         ebx
 0068ED59    ret
*}
end;

//0068ED5C
procedure _DF_.;
begin
{*
 0068ED5C    push        ebx
 0068ED5D    push        esi
 0068ED5E    push        edi
 0068ED5F    push        ebp
 0068ED60    add         esp,0FFFFFFEC
 0068ED63    mov         ebx,eax
 0068ED65    mov         dword ptr [esp],edx
 0068ED68    mov         eax,dword ptr [ebx+164]
 0068ED6E    mov         dword ptr [esp+4],eax
 0068ED72    cmp         dword ptr [esp],0
>0068ED76    je          0068ED90
 0068ED78    mov         edx,dword ptr [esp+4]
 0068ED7C    mov         dword ptr [edx+4],68F530
 0068ED83    mov         ecx,dword ptr [esp+4]
 0068ED87    mov         dword ptr [ecx+8],68F7C4
>0068ED8E    jmp         0068EDA6
 0068ED90    mov         eax,dword ptr [esp+4]
 0068ED94    mov         dword ptr [eax+4],68F30C
 0068ED9B    mov         edx,dword ptr [esp+4]
 0068ED9F    mov         dword ptr [edx+8],68F41C
 0068EDA6    xor         ecx,ecx
 0068EDA8    mov         dword ptr [esp+8],ecx
 0068EDAC    mov         eax,dword ptr [esp+4]
 0068EDB0    lea         edx,[eax+14]
 0068EDB3    mov         dword ptr [esp+10],edx
 0068EDB7    lea         ecx,[ebx+0F0]
 0068EDBD    mov         dword ptr [esp+0C],ecx
>0068EDC1    jmp         0068EEE7
 0068EDC6    mov         eax,dword ptr [esp+0C]
 0068EDCA    mov         eax,dword ptr [eax]
 0068EDCC    mov         esi,dword ptr [eax+14]
 0068EDCF    mov         edi,dword ptr [eax+18]
 0068EDD2    test        esi,esi
>0068EDD4    jl          0068EDE8
 0068EDD6    cmp         esi,4
>0068EDD9    jge         0068EDE8
 0068EDDB    cmp         dword ptr [ebx+esi*4+50],0
>0068EDE0    jne         0068EDFA
 0068EDE2    cmp         dword ptr [esp],0
>0068EDE6    jne         0068EDFA
 0068EDE8    mov         eax,dword ptr [ebx]
 0068EDEA    mov         dword ptr [eax+14],31
 0068EDF1    mov         dword ptr [eax+18],esi
 0068EDF4    mov         eax,ebx
 0068EDF6    mov         edx,dword ptr [eax]
 0068EDF8    call        dword ptr [edx]
 0068EDFA    test        edi,edi
>0068EDFC    jl          0068EE10
 0068EDFE    cmp         edi,4
>0068EE01    jge         0068EE10
 0068EE03    cmp         dword ptr [ebx+edi*4+60],0
>0068EE08    jne         0068EE22
 0068EE0A    cmp         dword ptr [esp],0
>0068EE0E    jne         0068EE22
 0068EE10    mov         eax,dword ptr [ebx]
 0068EE12    mov         dword ptr [eax+14],31
 0068EE19    mov         dword ptr [eax+18],edi
 0068EE1C    mov         eax,ebx
 0068EE1E    mov         edx,dword ptr [eax]
 0068EE20    call        dword ptr [edx]
 0068EE22    cmp         dword ptr [esp],0
>0068EE26    je          0068EEA3
 0068EE28    mov         ecx,dword ptr [esp+4]
 0068EE2C    cmp         dword ptr [ecx+esi*4+4C],0
>0068EE31    jne         0068EE4D
 0068EE33    mov         eax,ebx
 0068EE35    mov         ecx,404
 0068EE3A    mov         edx,1
 0068EE3F    mov         ebp,dword ptr [eax+4]
 0068EE42    call        dword ptr [ebp]
 0068EE45    mov         edx,dword ptr [esp+4]
 0068EE49    mov         dword ptr [edx+esi*4+4C],eax
 0068EE4D    push        404
 0068EE52    push        0
 0068EE54    mov         eax,dword ptr [esp+0C]
 0068EE58    mov         ecx,dword ptr [eax+esi*4+4C]
 0068EE5C    push        ecx
 0068EE5D    call        _memset
 0068EE62    add         esp,0C
 0068EE65    mov         eax,dword ptr [esp+4]
 0068EE69    cmp         dword ptr [eax+edi*4+5C],0
>0068EE6E    jne         0068EE89
 0068EE70    mov         eax,ebx
 0068EE72    mov         ecx,404
 0068EE77    mov         edx,1
 0068EE7C    mov         esi,dword ptr [eax+4]
 0068EE7F    call        dword ptr [esi]
 0068EE81    mov         edx,dword ptr [esp+4]
 0068EE85    mov         dword ptr [edx+edi*4+5C],eax
 0068EE89    push        404
 0068EE8E    push        0
 0068EE90    mov         eax,dword ptr [esp+0C]
 0068EE94    mov         ecx,dword ptr [eax+edi*4+5C]
 0068EE98    push        ecx
 0068EE99    call        _memset
 0068EE9E    add         esp,0C
>0068EEA1    jmp         0068EED1
 0068EEA3    mov         ecx,esi
 0068EEA5    mov         edx,dword ptr [ebx+esi*4+50]
 0068EEA9    shl         ecx,2
 0068EEAC    mov         eax,ebx
 0068EEAE    add         ecx,dword ptr [esp+4]
 0068EEB2    add         ecx,2C
 0068EEB5    call        @jpeg_make_c_derived_tbl
 0068EEBA    mov         ecx,edi
 0068EEBC    mov         edx,dword ptr [ebx+edi*4+60]
 0068EEC0    shl         ecx,2
 0068EEC3    mov         eax,ebx
 0068EEC5    add         ecx,dword ptr [esp+4]
 0068EEC9    add         ecx,3C
 0068EECC    call        @jpeg_make_c_derived_tbl
 0068EED1    mov         eax,dword ptr [esp+10]
 0068EED5    xor         edx,edx
 0068EED7    mov         dword ptr [eax],edx
 0068EED9    inc         dword ptr [esp+8]
 0068EEDD    add         dword ptr [esp+10],4
 0068EEE2    add         dword ptr [esp+0C],4
 0068EEE7    mov         ecx,dword ptr [esp+8]
 0068EEEB    cmp         ecx,dword ptr [ebx+0EC]
>0068EEF1    jl          0068EDC6
 0068EEF7    mov         eax,dword ptr [esp+4]
 0068EEFB    xor         edx,edx
 0068EEFD    mov         dword ptr [eax+0C],edx
 0068EF00    mov         ecx,dword ptr [esp+4]
 0068EF04    xor         eax,eax
 0068EF06    mov         dword ptr [ecx+10],eax
 0068EF09    mov         edx,dword ptr [esp+4]
 0068EF0D    mov         ecx,dword ptr [ebx+0C0]
 0068EF13    mov         dword ptr [edx+24],ecx
 0068EF16    mov         eax,dword ptr [esp+4]
 0068EF1A    xor         edx,edx
 0068EF1C    mov         dword ptr [eax+28],edx
 0068EF1F    add         esp,14
 0068EF22    pop         ebp
 0068EF23    pop         edi
 0068EF24    pop         esi
 0068EF25    pop         ebx
 0068EF26    ret
*}
end;

//0068EF28
procedure @jpeg_make_c_derived_tbl;
begin
{*
 0068EF28    push        ebx
 0068EF29    push        esi
 0068EF2A    push        edi
 0068EF2B    push        ebp
 0068EF2C    add         esp,0FFFFFAEC
 0068EF32    mov         ebx,ecx
 0068EF34    mov         dword ptr [esp],edx
 0068EF37    mov         esi,eax
 0068EF39    cmp         dword ptr [ebx],0
>0068EF3C    jne         0068EF51
 0068EF3E    mov         eax,esi
 0068EF40    mov         ecx,500
 0068EF45    mov         edx,1
 0068EF4A    mov         esi,dword ptr [eax+4]
 0068EF4D    call        dword ptr [esi]
 0068EF4F    mov         dword ptr [ebx],eax
 0068EF51    mov         eax,dword ptr [ebx]
 0068EF53    mov         dword ptr [esp+4],eax
 0068EF57    xor         eax,eax
 0068EF59    mov         edi,1
 0068EF5E    mov         edx,dword ptr [esp]
 0068EF61    lea         ebp,[edx+1]
 0068EF64    mov         ecx,1
 0068EF69    lea         edx,[esp+eax+0C]
 0068EF6D    mov         esi,ebp
>0068EF6F    jmp         0068EF78
 0068EF71    mov         ebx,edi
 0068EF73    inc         eax
 0068EF74    mov         byte ptr [edx],bl
 0068EF76    inc         edx
 0068EF77    inc         ecx
 0068EF78    xor         ebx,ebx
 0068EF7A    mov         bl,byte ptr [esi]
 0068EF7C    cmp         ecx,ebx
>0068EF7E    jle         0068EF71
 0068EF80    inc         edi
 0068EF81    inc         ebp
 0068EF82    cmp         edi,10
>0068EF85    jle         0068EF64
 0068EF87    mov         byte ptr [esp+eax+0C],0
 0068EF8C    mov         dword ptr [esp+8],eax
 0068EF90    xor         ebx,ebx
 0068EF92    movsx       esi,byte ptr [esp+0C]
 0068EF97    xor         eax,eax
>0068EF99    jmp         0068EFBA
 0068EF9B    lea         ecx,[esp+eax*4+110]
 0068EFA2    lea         edx,[esp+eax+0C]
>0068EFA6    jmp         0068EFB0
 0068EFA8    mov         dword ptr [ecx],ebx
 0068EFAA    inc         eax
 0068EFAB    add         ecx,4
 0068EFAE    inc         edx
 0068EFAF    inc         ebx
 0068EFB0    movsx       edi,byte ptr [edx]
 0068EFB3    cmp         esi,edi
>0068EFB5    je          0068EFA8
 0068EFB7    add         ebx,ebx
 0068EFB9    inc         esi
 0068EFBA    cmp         byte ptr [esp+eax+0C],0
>0068EFBF    jne         0068EF9B
 0068EFC1    push        100
 0068EFC6    push        0
 0068EFC8    mov         eax,dword ptr [esp+0C]
 0068EFCC    add         eax,400
 0068EFD1    push        eax
 0068EFD2    call        _memset
 0068EFD7    add         esp,0C
 0068EFDA    xor         eax,eax
 0068EFDC    lea         esi,[esp+0C]
 0068EFE0    mov         edx,dword ptr [esp]
 0068EFE3    add         edx,11
 0068EFE6    lea         ecx,[esp+110]
 0068EFED    cmp         eax,dword ptr [esp+8]
>0068EFF1    jge         0068F01F
 0068EFF3    xor         ebx,ebx
 0068EFF5    mov         edi,dword ptr [esp+4]
 0068EFF9    mov         bl,byte ptr [edx]
 0068EFFB    mov         ebp,dword ptr [ecx]
 0068EFFD    add         ecx,4
 0068F000    inc         eax
 0068F001    mov         dword ptr [edi+ebx*4],ebp
 0068F004    xor         ebx,ebx
 0068F006    mov         bl,byte ptr [edx]
 0068F008    mov         edi,dword ptr [esp+4]
 0068F00C    inc         edx
 0068F00D    lea         edi,[edi+ebx+400]
 0068F014    mov         bl,byte ptr [esi]
 0068F016    inc         esi
 0068F017    mov         byte ptr [edi],bl
 0068F019    cmp         eax,dword ptr [esp+8]
>0068F01D    jl          0068EFF3
 0068F01F    add         esp,514
 0068F025    pop         ebp
 0068F026    pop         edi
 0068F027    pop         esi
 0068F028    pop         ebx
 0068F029    ret
*}
end;

//0068F02C
{*function sub_0068F02C(?:Integer):?;
begin
 0068F02C    push        ebx
 0068F02D    mov         ebx,eax
 0068F02F    push        esi
 0068F030    mov         eax,dword ptr [ebx+20]
 0068F033    mov         esi,dword ptr [eax+14]
 0068F036    call        dword ptr [esi+0C]
 0068F039    test        eax,eax
>0068F03B    jne         0068F042
 0068F03D    xor         eax,eax
 0068F03F    pop         esi
 0068F040    pop         ebx
 0068F041    ret
 0068F042    mov         edx,dword ptr [esi]
 0068F044    mov         eax,1
 0068F049    mov         dword ptr [ebx],edx
 0068F04B    mov         ecx,dword ptr [esi+4]
 0068F04E    mov         dword ptr [ebx+4],ecx
 0068F051    pop         esi
 0068F052    pop         ebx
 0068F053    ret
end;*}

//0068F054
{*function sub_0068F054(?:Integer; ?:Integer; ?:Single):?;
begin
 0068F054    push        ebx
 0068F055    mov         ebx,eax
 0068F057    push        esi
 0068F058    push        edi
 0068F059    push        ebp
 0068F05A    mov         edi,ecx
 0068F05C    test        edi,edi
 0068F05E    mov         ebp,dword ptr [ebx+0C]
 0068F061    mov         esi,edx
>0068F063    jne         0068F075
 0068F065    mov         eax,dword ptr [ebx+20]
 0068F068    mov         edx,dword ptr [eax]
 0068F06A    mov         dword ptr [edx+14],27
 0068F071    mov         edx,dword ptr [eax]
 0068F073    call        dword ptr [edx]
 0068F075    mov         ecx,edi
 0068F077    mov         eax,1
 0068F07C    shl         eax,cl
 0068F07E    dec         eax
 0068F07F    add         ebp,edi
 0068F081    mov         ecx,18
 0068F086    and         esi,eax
 0068F088    sub         ecx,ebp
 0068F08A    shl         esi,cl
 0068F08C    or          esi,dword ptr [ebx+8]
 0068F08F    cmp         ebp,8
>0068F092    jl          0068F0E9
 0068F094    mov         edi,esi
 0068F096    mov         edx,dword ptr [ebx]
 0068F098    sar         edi,10
 0068F09B    inc         dword ptr [ebx]
 0068F09D    and         edi,0FF
 0068F0A3    mov         eax,edi
 0068F0A5    mov         byte ptr [edx],al
 0068F0A7    dec         dword ptr [ebx+4]
>0068F0AA    jne         0068F0BB
 0068F0AC    mov         eax,ebx
 0068F0AE    call        0068F02C
 0068F0B3    test        eax,eax
>0068F0B5    jne         0068F0BB
 0068F0B7    xor         eax,eax
>0068F0B9    jmp         0068F0F4
 0068F0BB    cmp         edi,0FF
>0068F0C1    jne         0068F0DE
 0068F0C3    mov         edx,dword ptr [ebx]
 0068F0C5    inc         dword ptr [ebx]
 0068F0C7    mov         byte ptr [edx],0
 0068F0CA    dec         dword ptr [ebx+4]
>0068F0CD    jne         0068F0DE
 0068F0CF    mov         eax,ebx
 0068F0D1    call        0068F02C
 0068F0D6    test        eax,eax
>0068F0D8    jne         0068F0DE
 0068F0DA    xor         eax,eax
>0068F0DC    jmp         0068F0F4
 0068F0DE    shl         esi,8
 0068F0E1    sub         ebp,8
 0068F0E4    cmp         ebp,8
>0068F0E7    jge         0068F094
 0068F0E9    mov         dword ptr [ebx+8],esi
 0068F0EC    mov         dword ptr [ebx+0C],ebp
 0068F0EF    mov         eax,1
 0068F0F4    pop         ebp
 0068F0F5    pop         edi
 0068F0F6    pop         esi
 0068F0F7    pop         ebx
 0068F0F8    ret
end;*}

//0068F0FC
{*function sub_0068F0FC(?:?):?;
begin
 0068F0FC    push        ebx
 0068F0FD    mov         ebx,eax
 0068F0FF    mov         ecx,7
 0068F104    mov         edx,7F
 0068F109    mov         eax,ebx
 0068F10B    call        0068F054
 0068F110    test        eax,eax
>0068F112    jne         0068F118
 0068F114    xor         eax,eax
 0068F116    pop         ebx
 0068F117    ret
 0068F118    xor         edx,edx
 0068F11A    xor         ecx,ecx
 0068F11C    mov         dword ptr [ebx+8],edx
 0068F11F    mov         dword ptr [ebx+0C],ecx
 0068F122    mov         eax,1
 0068F127    pop         ebx
 0068F128    ret
end;*}

//0068F12C
{*function sub_0068F12C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0068F12C    push        ebp
 0068F12D    mov         ebp,esp
 0068F12F    add         esp,0FFFFFFE4
 0068F132    push        ebx
 0068F133    push        esi
 0068F134    push        edi
 0068F135    mov         dword ptr [ebp-0C],ecx
 0068F138    mov         dword ptr [ebp-8],edx
 0068F13B    mov         dword ptr [ebp-4],eax
 0068F13E    mov         edx,dword ptr [ebp-8]
 0068F141    mov         eax,dword ptr [ebp+0C]
 0068F144    mov         edi,dword ptr [ebp+8]
 0068F147    movsx       ecx,word ptr [edx]
 0068F14A    sub         ecx,dword ptr [ebp-0C]
 0068F14D    mov         esi,ecx
 0068F14F    mov         dword ptr [ebp-10],ecx
 0068F152    test        esi,esi
>0068F154    jge         0068F15B
 0068F156    neg         esi
 0068F158    dec         dword ptr [ebp-10]
 0068F15B    xor         edx,edx
 0068F15D    test        esi,esi
 0068F15F    mov         dword ptr [ebp-14],edx
>0068F162    je          0068F16D
 0068F164    inc         dword ptr [ebp-14]
 0068F167    sar         esi,1
 0068F169    test        esi,esi
>0068F16B    jne         0068F164
 0068F16D    mov         ecx,dword ptr [ebp-14]
 0068F170    mov         edx,dword ptr [ebp-14]
 0068F173    movsx       ecx,byte ptr [eax+ecx+400]
 0068F17B    mov         edx,dword ptr [eax+edx*4]
 0068F17E    mov         eax,dword ptr [ebp-4]
 0068F181    call        0068F054
 0068F186    test        eax,eax
>0068F188    jne         0068F191
 0068F18A    xor         eax,eax
>0068F18C    jmp         0068F28D
 0068F191    cmp         dword ptr [ebp-14],0
>0068F195    je          0068F1B0
 0068F197    mov         ecx,dword ptr [ebp-14]
 0068F19A    mov         edx,dword ptr [ebp-10]
 0068F19D    mov         eax,dword ptr [ebp-4]
 0068F1A0    call        0068F054
 0068F1A5    test        eax,eax
>0068F1A7    jne         0068F1B0
 0068F1A9    xor         eax,eax
>0068F1AB    jmp         0068F28D
 0068F1B0    mov         dword ptr [ebp-18],1
 0068F1B7    mov         dword ptr [ebp-1C],6E9584
 0068F1BE    xor         ebx,ebx
 0068F1C0    mov         eax,dword ptr [ebp-1C]
 0068F1C3    mov         edx,dword ptr [eax]
 0068F1C5    mov         ecx,dword ptr [ebp-8]
 0068F1C8    movsx       esi,word ptr [ecx+edx*2]
 0068F1CC    test        esi,esi
>0068F1CE    jne         0068F1D6
 0068F1D0    inc         ebx
>0068F1D1    jmp         0068F25A
 0068F1D6    cmp         ebx,0F
>0068F1D9    jle         0068F203
 0068F1DB    movsx       ecx,byte ptr [edi+4F0]
 0068F1E2    mov         edx,dword ptr [edi+3C0]
 0068F1E8    mov         eax,dword ptr [ebp-4]
 0068F1EB    call        0068F054
 0068F1F0    test        eax,eax
>0068F1F2    jne         0068F1FB
 0068F1F4    xor         eax,eax
>0068F1F6    jmp         0068F28D
 0068F1FB    sub         ebx,10
 0068F1FE    cmp         ebx,0F
>0068F201    jg          0068F1DB
 0068F203    mov         dword ptr [ebp-10],esi
 0068F206    test        esi,esi
>0068F208    jge         0068F20F
 0068F20A    neg         esi
 0068F20C    dec         dword ptr [ebp-10]
 0068F20F    mov         dword ptr [ebp-14],1
>0068F216    jmp         0068F21B
 0068F218    inc         dword ptr [ebp-14]
 0068F21B    sar         esi,1
>0068F21D    jne         0068F218
 0068F21F    mov         eax,ebx
 0068F221    shl         eax,4
 0068F224    add         eax,dword ptr [ebp-14]
 0068F227    movsx       ecx,byte ptr [edi+eax+400]
 0068F22F    mov         edx,dword ptr [edi+eax*4]
 0068F232    mov         eax,dword ptr [ebp-4]
 0068F235    call        0068F054
 0068F23A    test        eax,eax
>0068F23C    jne         0068F242
 0068F23E    xor         eax,eax
>0068F240    jmp         0068F28D
 0068F242    mov         ecx,dword ptr [ebp-14]
 0068F245    mov         edx,dword ptr [ebp-10]
 0068F248    mov         eax,dword ptr [ebp-4]
 0068F24B    call        0068F054
 0068F250    test        eax,eax
>0068F252    jne         0068F258
 0068F254    xor         eax,eax
>0068F256    jmp         0068F28D
 0068F258    xor         ebx,ebx
 0068F25A    inc         dword ptr [ebp-18]
 0068F25D    add         dword ptr [ebp-1C],4
 0068F261    cmp         dword ptr [ebp-18],40
>0068F265    jl          0068F1C0
 0068F26B    test        ebx,ebx
>0068F26D    jle         0068F288
 0068F26F    movsx       ecx,byte ptr [edi+400]
 0068F276    mov         edx,dword ptr [edi]
 0068F278    mov         eax,dword ptr [ebp-4]
 0068F27B    call        0068F054
 0068F280    test        eax,eax
>0068F282    jne         0068F288
 0068F284    xor         eax,eax
>0068F286    jmp         0068F28D
 0068F288    mov         eax,1
 0068F28D    pop         edi
 0068F28E    pop         esi
 0068F28F    pop         ebx
 0068F290    mov         esp,ebp
 0068F292    pop         ebp
 0068F293    ret         8
end;*}

//0068F298
{*function sub_0068F298(?:?; ?:?):?;
begin
 0068F298    push        ebx
 0068F299    push        esi
 0068F29A    mov         esi,edx
 0068F29C    mov         ebx,eax
 0068F29E    mov         eax,ebx
 0068F2A0    call        0068F0FC
 0068F2A5    test        eax,eax
>0068F2A7    jne         0068F2AE
 0068F2A9    xor         eax,eax
 0068F2AB    pop         esi
 0068F2AC    pop         ebx
 0068F2AD    ret
 0068F2AE    mov         edx,dword ptr [ebx]
 0068F2B0    inc         dword ptr [ebx]
 0068F2B2    mov         byte ptr [edx],0FF
 0068F2B5    dec         dword ptr [ebx+4]
>0068F2B8    jne         0068F2CA
 0068F2BA    mov         eax,ebx
 0068F2BC    call        0068F02C
 0068F2C1    test        eax,eax
>0068F2C3    jne         0068F2CA
 0068F2C5    xor         eax,eax
 0068F2C7    pop         esi
 0068F2C8    pop         ebx
 0068F2C9    ret
 0068F2CA    mov         ecx,dword ptr [ebx]
 0068F2CC    mov         edx,esi
 0068F2CE    inc         dword ptr [ebx]
 0068F2D0    add         dl,0D0
 0068F2D3    mov         byte ptr [ecx],dl
 0068F2D5    dec         dword ptr [ebx+4]
>0068F2D8    jne         0068F2EA
 0068F2DA    mov         eax,ebx
 0068F2DC    call        0068F02C
 0068F2E1    test        eax,eax
>0068F2E3    jne         0068F2EA
 0068F2E5    xor         eax,eax
 0068F2E7    pop         esi
 0068F2E8    pop         ebx
 0068F2E9    ret
 0068F2EA    xor         edx,edx
 0068F2EC    lea         eax,[ebx+10]
>0068F2EF    jmp         0068F2F9
 0068F2F1    xor         ecx,ecx
 0068F2F3    inc         edx
 0068F2F4    mov         dword ptr [eax],ecx
 0068F2F6    add         eax,4
 0068F2F9    mov         ecx,dword ptr [ebx+20]
 0068F2FC    cmp         edx,dword ptr [ecx+0EC]
>0068F302    jl          0068F2F1
 0068F304    mov         eax,1
 0068F309    pop         esi
 0068F30A    pop         ebx
 0068F30B    ret
end;*}

//0068F490
{*procedure sub_0068F490(?:?; ?:?; ?:?; ?:?);
begin
 0068F490    push        ebp
 0068F491    mov         ebp,esp
 0068F493    add         esp,0FFFFFFF0
 0068F496    push        ebx
 0068F497    mov         dword ptr [ebp-8],ecx
 0068F49A    mov         dword ptr [ebp-4],eax
 0068F49D    mov         eax,dword ptr [ebp+8]
 0068F4A0    mov         ecx,dword ptr [ebp-4]
 0068F4A3    movsx       ebx,word ptr [ecx]
 0068F4A6    sub         ebx,edx
 0068F4A8    test        ebx,ebx
>0068F4AA    jge         0068F4AE
 0068F4AC    neg         ebx
 0068F4AE    xor         ecx,ecx
 0068F4B0    test        ebx,ebx
>0068F4B2    je          0068F4BB
 0068F4B4    sar         ebx,1
 0068F4B6    inc         ecx
 0068F4B7    test        ebx,ebx
>0068F4B9    jne         0068F4B4
 0068F4BB    mov         edx,dword ptr [ebp-8]
 0068F4BE    inc         dword ptr [edx+ecx*4]
 0068F4C1    xor         edx,edx
 0068F4C3    mov         dword ptr [ebp-0C],1
 0068F4CA    mov         dword ptr [ebp-10],6E9584
 0068F4D1    mov         ecx,dword ptr [ebp-10]
 0068F4D4    mov         ecx,dword ptr [ecx]
 0068F4D6    mov         ebx,dword ptr [ebp-4]
 0068F4D9    movsx       ebx,word ptr [ebx+ecx*2]
 0068F4DD    test        ebx,ebx
>0068F4DF    jne         0068F4E4
 0068F4E1    inc         edx
>0068F4E2    jmp         0068F513
 0068F4E4    cmp         edx,0F
>0068F4E7    jle         0068F4F7
 0068F4E9    inc         dword ptr [eax+3C0]
 0068F4EF    sub         edx,10
 0068F4F2    cmp         edx,0F
>0068F4F5    jg          0068F4E9
 0068F4F7    test        ebx,ebx
>0068F4F9    jge         0068F4FD
 0068F4FB    neg         ebx
 0068F4FD    mov         ecx,1
>0068F502    jmp         0068F505
 0068F504    inc         ecx
 0068F505    sar         ebx,1
>0068F507    jne         0068F504
 0068F509    shl         edx,4
 0068F50C    add         ecx,edx
 0068F50E    inc         dword ptr [eax+ecx*4]
 0068F511    xor         edx,edx
 0068F513    inc         dword ptr [ebp-0C]
 0068F516    add         dword ptr [ebp-10],4
 0068F51A    cmp         dword ptr [ebp-0C],40
>0068F51E    jl          0068F4D1
 0068F520    test        edx,edx
>0068F522    jle         0068F526
 0068F524    inc         dword ptr [eax]
 0068F526    pop         ebx
 0068F527    mov         esp,ebp
 0068F529    pop         ebp
 0068F52A    ret         4
end;*}

//0068F5E0
procedure @jpeg_gen_optimal_table;
begin
{*
 0068F5E0    push        ebx
 0068F5E1    push        esi
 0068F5E2    push        edi
 0068F5E3    add         esp,0FFFFF7C8
 0068F5E9    mov         dword ptr [esp+8],ecx
 0068F5ED    mov         dword ptr [esp+4],edx
 0068F5F1    mov         dword ptr [esp],eax
 0068F5F4    push        21
 0068F5F6    push        0
 0068F5F8    lea         eax,[esp+14]
 0068F5FC    push        eax
 0068F5FD    call        _memset
 0068F602    add         esp,0C
 0068F605    push        404
 0068F60A    push        0
 0068F60C    lea         edx,[esp+38]
 0068F610    push        edx
 0068F611    call        _memset
 0068F616    add         esp,0C
 0068F619    xor         ebx,ebx
 0068F61B    lea         eax,[esp+434]
 0068F622    mov         dword ptr [eax],0FFFFFFFF
 0068F628    inc         ebx
 0068F629    add         eax,4
 0068F62C    cmp         ebx,101
>0068F632    jl          0068F622
 0068F634    mov         edx,dword ptr [esp+8]
 0068F638    mov         dword ptr [edx+400],1
 0068F642    or          eax,0FFFFFFFF
 0068F645    mov         edi,3B9ACA00
 0068F64A    xor         ebx,ebx
 0068F64C    mov         edx,dword ptr [esp+8]
 0068F650    mov         ecx,dword ptr [edx]
 0068F652    test        ecx,ecx
>0068F654    je          0068F65E
 0068F656    cmp         edi,ecx
>0068F658    jl          0068F65E
 0068F65A    mov         edi,ecx
 0068F65C    mov         eax,ebx
 0068F65E    inc         ebx
 0068F65F    add         edx,4
 0068F662    cmp         ebx,100
>0068F668    jle         0068F650
 0068F66A    or          edx,0FFFFFFFF
 0068F66D    mov         edi,3B9ACA00
 0068F672    xor         ebx,ebx
 0068F674    mov         ecx,dword ptr [esp+8]
 0068F678    mov         esi,dword ptr [ecx]
 0068F67A    test        esi,esi
>0068F67C    je          0068F68A
 0068F67E    cmp         edi,esi
>0068F680    jl          0068F68A
 0068F682    cmp         eax,ebx
>0068F684    je          0068F68A
 0068F686    mov         edi,esi
 0068F688    mov         edx,ebx
 0068F68A    inc         ebx
 0068F68B    add         ecx,4
 0068F68E    cmp         ebx,100
>0068F694    jle         0068F678
 0068F696    test        edx,edx
>0068F698    jl          0068F6EB
 0068F69A    mov         ecx,dword ptr [esp+8]
 0068F69E    mov         ebx,dword ptr [esp+8]
 0068F6A2    mov         ecx,dword ptr [ecx+edx*4]
 0068F6A5    add         dword ptr [ebx+eax*4],ecx
 0068F6A8    xor         ebx,ebx
 0068F6AA    mov         ecx,dword ptr [esp+8]
 0068F6AE    mov         dword ptr [ecx+edx*4],ebx
 0068F6B1    inc         dword ptr [esp+eax*4+30]
>0068F6B5    jmp         0068F6BD
 0068F6B7    mov         eax,ecx
 0068F6B9    inc         dword ptr [esp+eax*4+30]
 0068F6BD    mov         ecx,dword ptr [esp+eax*4+434]
 0068F6C4    test        ecx,ecx
>0068F6C6    jge         0068F6B7
 0068F6C8    mov         dword ptr [esp+eax*4+434],edx
 0068F6CF    inc         dword ptr [esp+edx*4+30]
>0068F6D3    jmp         0068F6DB
 0068F6D5    mov         edx,eax
 0068F6D7    inc         dword ptr [esp+edx*4+30]
 0068F6DB    mov         eax,dword ptr [esp+edx*4+434]
 0068F6E2    test        eax,eax
>0068F6E4    jge         0068F6D5
>0068F6E6    jmp         0068F642
 0068F6EB    xor         ebx,ebx
 0068F6ED    lea         esi,[esp+30]
 0068F6F1    mov         eax,dword ptr [esi]
 0068F6F3    test        eax,eax
>0068F6F5    je          0068F715
 0068F6F7    cmp         eax,20
>0068F6FA    jle         0068F70F
 0068F6FC    mov         edx,dword ptr [esp]
 0068F6FF    mov         ecx,dword ptr [edx]
 0068F701    mov         dword ptr [ecx+14],26
 0068F708    mov         eax,dword ptr [esp]
 0068F70B    mov         edx,dword ptr [eax]
 0068F70D    call        dword ptr [edx]
 0068F70F    mov         ecx,dword ptr [esi]
 0068F711    inc         byte ptr [esp+ecx+0C]
 0068F715    inc         ebx
 0068F716    add         esi,4
 0068F719    cmp         ebx,100
>0068F71F    jle         0068F6F1
 0068F721    mov         ebx,20
 0068F726    lea         esi,[esp+2C]
 0068F72A    mov         ecx,esi
>0068F72C    jmp         0068F74D
 0068F72E    lea         eax,[ebx-2]
 0068F731    lea         edx,[esp+eax+0C]
>0068F735    jmp         0068F739
 0068F737    dec         eax
 0068F738    dec         edx
 0068F739    cmp         byte ptr [edx],0
>0068F73C    je          0068F737
 0068F73E    add         byte ptr [ecx],0FE
 0068F741    inc         byte ptr [ecx-1]
 0068F744    add         byte ptr [esp+eax+0D],2
 0068F749    dec         byte ptr [esp+eax+0C]
 0068F74D    cmp         byte ptr [ecx],0
>0068F750    ja          0068F72E
 0068F752    dec         ebx
 0068F753    dec         esi
 0068F754    cmp         ebx,10
>0068F757    jg          0068F72A
 0068F759    lea         eax,[esp+ebx+0C]
>0068F75D    jmp         0068F761
 0068F75F    dec         ebx
 0068F760    dec         eax
 0068F761    cmp         byte ptr [eax],0
>0068F764    je          0068F75F
 0068F766    dec         byte ptr [esp+ebx+0C]
 0068F76A    push        11
 0068F76C    lea         edx,[esp+10]
 0068F770    push        edx
 0068F771    mov         ecx,dword ptr [esp+0C]
 0068F775    push        ecx
 0068F776    call        _memcpy
 0068F77B    add         esp,0C
 0068F77E    xor         edi,edi
 0068F780    mov         ebx,1
 0068F785    xor         eax,eax
 0068F787    mov         edx,dword ptr [esp+4]
 0068F78B    lea         esi,[edx+edi+11]
 0068F78F    lea         edx,[esp+30]
 0068F793    cmp         ebx,dword ptr [edx]
>0068F795    jne         0068F79B
 0068F797    mov         byte ptr [esi],al
 0068F799    inc         edi
 0068F79A    inc         esi
 0068F79B    inc         eax
 0068F79C    add         edx,4
 0068F79F    cmp         eax,0FF
>0068F7A4    jle         0068F793
 0068F7A6    inc         ebx
 0068F7A7    cmp         ebx,20
>0068F7AA    jle         0068F785
 0068F7AC    mov         eax,dword ptr [esp+4]
 0068F7B0    xor         ecx,ecx
 0068F7B2    mov         dword ptr [eax+114],ecx
 0068F7B8    add         esp,838
 0068F7BE    pop         edi
 0068F7BF    pop         esi
 0068F7C0    pop         ebx
 0068F7C1    ret
*}
end;

//0068F89C
procedure @jinit_huff_encoder;
begin
{*
 0068F89C    push        ebx
 0068F89D    mov         ebx,eax
 0068F89F    mov         eax,ebx
 0068F8A1    push        esi
 0068F8A2    mov         ecx,6C
 0068F8A7    mov         edx,1
 0068F8AC    mov         esi,dword ptr [eax+4]
 0068F8AF    call        dword ptr [esi]
 0068F8B1    mov         dword ptr [ebx+164],eax
 0068F8B7    mov         dword ptr [eax],68ED5C;_DF_.
 0068F8BD    xor         edx,edx
 0068F8BF    add         eax,3C
 0068F8C2    xor         ecx,ecx
 0068F8C4    mov         dword ptr [eax],ecx
 0068F8C6    mov         dword ptr [eax-10],ecx
 0068F8C9    xor         ecx,ecx
 0068F8CB    mov         dword ptr [eax+20],ecx
 0068F8CE    mov         dword ptr [eax+10],ecx
 0068F8D1    inc         edx
 0068F8D2    add         eax,4
 0068F8D5    cmp         edx,4
>0068F8D8    jl          0068F8C2
 0068F8DA    pop         esi
 0068F8DB    pop         ebx
 0068F8DC    ret
*}
end;

//0068F9F8
function _malloc(size:Integer):Pointer; cdecl;
begin
{*
 0068F9F8    push        ebp
 0068F9F9    mov         ebp,esp
 0068F9FB    mov         eax,dword ptr [ebp+8]
 0068F9FE    call        @GetMem
 0068FA03    pop         ebp
 0068FA04    ret
*}
end;

//0068FA08
procedure _free(P:Pointer); cdecl;
begin
{*
 0068FA08    push        ebp
 0068FA09    mov         ebp,esp
 0068FA0B    mov         eax,dword ptr [ebp+8]
 0068FA0E    call        @FreeMem
 0068FA13    pop         ebp
 0068FA14    ret
*}
end;

//0068FA18
procedure _memset(P:Pointer; B:Byte; count:Integer); cdecl;
begin
{*
 0068FA18    push        ebp
 0068FA19    mov         ebp,esp
 0068FA1B    xor         ecx,ecx
 0068FA1D    mov         cl,byte ptr [ebp+0C]
 0068FA20    mov         eax,dword ptr [ebp+8]
 0068FA23    mov         edx,dword ptr [ebp+10]
 0068FA26    call        @FillChar
 0068FA2B    pop         ebp
 0068FA2C    ret
*}
end;

//0068FA30
procedure _memcpy(dest:Pointer; source:Pointer; count:Integer); cdecl;
begin
{*
 0068FA30    push        ebp
 0068FA31    mov         ebp,esp
 0068FA33    mov         edx,dword ptr [ebp+8]
 0068FA36    mov         eax,dword ptr [ebp+0C]
 0068FA39    mov         ecx,dword ptr [ebp+10]
 0068FA3C    call        Move
 0068FA41    pop         ebp
 0068FA42    ret
*}
end;

//0068FA44
function _fread(var buf:void ; recsize:Integer; reccount:Integer; S:TStream):Integer; cdecl;
begin
{*
 0068FA44    push        ebp
 0068FA45    mov         ebp,esp
 0068FA47    push        ebx
 0068FA48    mov         ecx,dword ptr [ebp+0C]
 0068FA4B    imul        ecx,dword ptr [ebp+10]
 0068FA4F    mov         edx,dword ptr [ebp+8]
 0068FA52    mov         eax,dword ptr [ebp+14]
 0068FA55    mov         ebx,dword ptr [eax]
 0068FA57    call        dword ptr [ebx+8]
 0068FA5A    pop         ebx
 0068FA5B    pop         ebp
 0068FA5C    ret
*}
end;

//0068FA60
function _fwrite(const buf:void ; recsize:Integer; reccount:Integer; S:TStream):Integer; cdecl;
begin
{*
 0068FA60    push        ebp
 0068FA61    mov         ebp,esp
 0068FA63    push        ebx
 0068FA64    mov         ecx,dword ptr [ebp+0C]
 0068FA67    imul        ecx,dword ptr [ebp+10]
 0068FA6B    mov         edx,dword ptr [ebp+8]
 0068FA6E    mov         eax,dword ptr [ebp+14]
 0068FA71    mov         ebx,dword ptr [eax]
 0068FA73    call        dword ptr [ebx+0C]
 0068FA76    pop         ebx
 0068FA77    pop         ebp
 0068FA78    ret
*}
end;

//0068FA7C
function _fflush(S:TStream):Integer; cdecl;
begin
{*
 0068FA7C    push        ebp
 0068FA7D    mov         ebp,esp
 0068FA7F    xor         eax,eax
 0068FA81    pop         ebp
 0068FA82    ret
*}
end;

//0068FA84
function __ftol:Integer;
begin
{*
 0068FA84    push        ebp
 0068FA85    mov         ebp,esp
 0068FA87    add         esp,0FFFFFFF8
 0068FA8A    lea         eax,[ebp-8]
 0068FA8D    fstp        qword ptr [eax]
 0068FA8F    fld         qword ptr [ebp-8]
 0068FA92    call        @TRUNC
 0068FA97    pop         ecx
 0068FA98    pop         ecx
 0068FA99    pop         ebp
 0068FA9A    ret
*}
end;

//0068FAF0
procedure InvalidOperation(const Msg:AnsiString);
begin
{*
 0068FAF0    push        ebx
 0068FAF1    mov         ebx,eax
 0068FAF3    mov         ecx,ebx
 0068FAF5    mov         dl,1
 0068FAF7    mov         eax,[005BE21C];EInvalidGraphicOperation
 0068FAFC    call        Exception.Create;EInvalidGraphicOperation.Create
 0068FB01    call        @RaiseExcept
 0068FB06    pop         ebx
 0068FB07    ret
*}
end;

//0068FB08
procedure JpegError(cinfo:j_common_ptr);
begin
{*
 0068FB08    push        ebp
 0068FB09    mov         ebp,esp
 0068FB0B    add         esp,0FFFFFFF4
 0068FB0E    push        ebx
 0068FB0F    xor         edx,edx
 0068FB11    mov         dword ptr [ebp-0C],edx
 0068FB14    mov         ebx,eax
 0068FB16    xor         eax,eax
 0068FB18    push        ebp
 0068FB19    push        68FB6D
 0068FB1E    push        dword ptr fs:[eax]
 0068FB21    mov         dword ptr fs:[eax],esp
 0068FB24    mov         eax,dword ptr [ebx]
 0068FB26    mov         eax,dword ptr [eax+14]
 0068FB29    mov         dword ptr [ebp-8],eax
 0068FB2C    mov         byte ptr [ebp-4],0
 0068FB30    lea         eax,[ebp-8]
 0068FB33    push        eax
 0068FB34    push        0
 0068FB36    lea         edx,[ebp-0C]
 0068FB39    mov         eax,[006EA300];^gvar_00692430
 0068FB3E    call        LoadResString
 0068FB43    mov         ecx,dword ptr [ebp-0C]
 0068FB46    mov         dl,1
 0068FB48    mov         eax,[0068FA9C];EJPEG
 0068FB4D    call        Exception.CreateFmt;EJPEG.Create
 0068FB52    call        @RaiseExcept
 0068FB57    xor         eax,eax
 0068FB59    pop         edx
 0068FB5A    pop         ecx
 0068FB5B    pop         ecx
 0068FB5C    mov         dword ptr fs:[eax],edx
 0068FB5F    push        68FB74
 0068FB64    lea         eax,[ebp-0C]
 0068FB67    call        @LStrClr
 0068FB6C    ret
>0068FB6D    jmp         @HandleFinally
>0068FB72    jmp         0068FB64
 0068FB74    pop         ebx
 0068FB75    mov         esp,ebp
 0068FB77    pop         ebp
 0068FB78    ret
*}
end;

//0068FB88
procedure ResetErrorMgr(cinfo:j_common_ptr);
begin
{*
 0068FB88    mov         edx,dword ptr [eax]
 0068FB8A    xor         ecx,ecx
 0068FB8C    mov         dword ptr [edx+70],ecx
 0068FB8F    xor         eax,eax
 0068FB91    mov         dword ptr [edx+14],eax
 0068FB94    ret
*}
end;

//0068FB98
destructor TJPEGData.Destroy;
begin
{*
 0068FB98    push        ebx
 0068FB99    push        esi
 0068FB9A    call        @BeforeDestruction
 0068FB9F    mov         ebx,edx
 0068FBA1    mov         esi,eax
 0068FBA3    mov         eax,dword ptr [esi+8]
 0068FBA6    call        TObject.Free
 0068FBAB    mov         edx,ebx
 0068FBAD    and         dl,0FC
 0068FBB0    mov         eax,esi
 0068FBB2    call        TObject.Destroy
 0068FBB7    test        bl,bl
>0068FBB9    jle         0068FBC2
 0068FBBB    mov         eax,esi
 0068FBBD    call        @ClassDestroy
 0068FBC2    pop         esi
 0068FBC3    pop         ebx
 0068FBC4    ret
*}
end;

//0068FBC8
procedure sub_0068FBC8;
begin
{*
 0068FBC8    ret
*}
end;

//0068FBCC
constructor TJPEGImage.Create;
begin
{*
 0068FBCC    push        ebx
 0068FBCD    push        esi
 0068FBCE    push        edi
 0068FBCF    test        dl,dl
>0068FBD1    je          0068FBDB
 0068FBD3    add         esp,0FFFFFFF0
 0068FBD6    call        @ClassCreate
 0068FBDB    mov         ebx,edx
 0068FBDD    mov         edi,eax
 0068FBDF    mov         esi,6E9B20
 0068FBE4    xor         edx,edx
 0068FBE6    mov         eax,edi
 0068FBE8    call        TGraphic.Create
 0068FBED    mov         eax,edi
 0068FBEF    call        TJPEGImage.NewImage
 0068FBF4    mov         al,byte ptr [esi]
 0068FBF6    mov         byte ptr [edi+3F],al
 0068FBF9    mov         al,byte ptr [esi+1]
 0068FBFC    mov         byte ptr [edi+3D],al
 0068FBFF    mov         al,byte ptr [esi+2]
 0068FC02    mov         byte ptr [edi+42],al
 0068FC05    mov         al,byte ptr [esi+3]
 0068FC08    mov         byte ptr [edi+3E],al
 0068FC0B    mov         al,byte ptr [esi+4]
 0068FC0E    mov         byte ptr [edi+40],al
 0068FC11    mov         al,byte ptr [esi+5]
 0068FC14    mov         byte ptr [edi+41],al
 0068FC17    mov         al,byte ptr [esi+6]
 0068FC1A    mov         byte ptr [edi+43],al
 0068FC1D    mov         al,byte ptr [esi+7]
 0068FC20    mov         byte ptr [edi+3C],al
 0068FC23    mov         eax,edi
 0068FC25    test        bl,bl
>0068FC27    je          0068FC38
 0068FC29    call        @AfterConstruction
 0068FC2E    pop         dword ptr fs:[0]
 0068FC35    add         esp,0C
 0068FC38    mov         eax,edi
 0068FC3A    pop         edi
 0068FC3B    pop         esi
 0068FC3C    pop         ebx
 0068FC3D    ret
*}
end;

//0068FC40
destructor TJPEGImage.Destroy;
begin
{*
 0068FC40    push        ebx
 0068FC41    push        esi
 0068FC42    call        @BeforeDestruction
 0068FC47    mov         ebx,edx
 0068FC49    mov         esi,eax
 0068FC4B    mov         eax,dword ptr [esi+38]
 0068FC4E    test        eax,eax
>0068FC50    je          0068FC58
 0068FC52    push        eax
 0068FC53    call        GDI32.DeleteObject
 0068FC58    mov         eax,dword ptr [esi+2C]
 0068FC5B    call        TObject.Free
 0068FC60    mov         eax,dword ptr [esi+28]
 0068FC63    call        TSharedImage.Release
 0068FC68    mov         edx,ebx
 0068FC6A    and         dl,0FC
 0068FC6D    mov         eax,esi
 0068FC6F    call        TPersistent.Destroy
 0068FC74    test        bl,bl
>0068FC76    jle         0068FC7F
 0068FC78    mov         eax,esi
 0068FC7A    call        @ClassDestroy
 0068FC7F    pop         esi
 0068FC80    pop         ebx
 0068FC81    ret
*}
end;

//0068FC84
procedure TJPEGImage.Assign(Source:TPersistent);
begin
{*
 0068FC84    push        ebx
 0068FC85    push        esi
 0068FC86    push        edi
 0068FC87    mov         esi,edx
 0068FC89    mov         ebx,eax
 0068FC8B    mov         eax,esi
 0068FC8D    mov         edx,dword ptr ds:[68F93C];TJPEGImage
 0068FC93    call        @IsClass
 0068FC98    test        al,al
>0068FC9A    je          0068FCCB
 0068FC9C    mov         eax,dword ptr [ebx+28]
 0068FC9F    call        TSharedImage.Release
 0068FCA4    mov         edi,esi
 0068FCA6    mov         eax,dword ptr [edi+28]
 0068FCA9    mov         dword ptr [ebx+28],eax
 0068FCAC    call        TSharedImage.Reference
 0068FCB1    cmp         dword ptr [edi+2C],0
>0068FCB5    je          0068FCFF
 0068FCB7    mov         eax,ebx
 0068FCB9    call        TJPEGImage.NewBitmap
 0068FCBE    mov         edx,dword ptr [edi+2C]
 0068FCC1    mov         eax,dword ptr [ebx+2C]
 0068FCC4    mov         ecx,dword ptr [eax]
 0068FCC6    call        dword ptr [ecx+8]
>0068FCC9    jmp         0068FCFF
 0068FCCB    mov         eax,esi
 0068FCCD    mov         edx,dword ptr ds:[5BEDD4];TBitmap
 0068FCD3    call        @IsClass
 0068FCD8    test        al,al
>0068FCDA    je          0068FCF6
 0068FCDC    mov         eax,ebx
 0068FCDE    call        TJPEGImage.NewImage
 0068FCE3    mov         eax,ebx
 0068FCE5    call        TJPEGImage.NewBitmap
 0068FCEA    mov         edx,esi
 0068FCEC    mov         eax,dword ptr [ebx+2C]
 0068FCEF    mov         ecx,dword ptr [eax]
 0068FCF1    call        dword ptr [ecx+8]
>0068FCF4    jmp         0068FCFF
 0068FCF6    mov         edx,esi
 0068FCF8    mov         eax,ebx
 0068FCFA    call        TPersistent.Assign
 0068FCFF    pop         edi
 0068FD00    pop         esi
 0068FD01    pop         ebx
 0068FD02    ret
*}
end;

//0068FD04
procedure TJPEGImage.AssignTo(Dest:TPersistent);
begin
{*
 0068FD04    push        ebx
 0068FD05    push        esi
 0068FD06    mov         esi,edx
 0068FD08    mov         ebx,eax
 0068FD0A    mov         eax,esi
 0068FD0C    mov         edx,dword ptr ds:[5BEDD4];TBitmap
 0068FD12    call        @IsClass
 0068FD17    test        al,al
>0068FD19    je          0068FD2E
 0068FD1B    mov         eax,ebx
 0068FD1D    call        TJPEGImage.GetBitmap
 0068FD22    mov         edx,eax
 0068FD24    mov         eax,esi
 0068FD26    mov         ecx,dword ptr [eax]
 0068FD28    call        dword ptr [ecx+8];TJPEGImage.Assign
 0068FD2B    pop         esi
 0068FD2C    pop         ebx
 0068FD2D    ret
 0068FD2E    mov         edx,esi
 0068FD30    mov         eax,ebx
 0068FD32    call        TPersistent.AssignTo
 0068FD37    pop         esi
 0068FD38    pop         ebx
 0068FD39    ret
*}
end;

//0068FD3C
procedure ProgressCallback(const cinfo:jpeg_common_struct);
begin
{*
 0068FD3C    push        ebx
 0068FD3D    push        esi
 0068FD3E    push        edi
 0068FD3F    add         esp,0FFFFFFF0
 0068FD42    mov         esi,eax
 0068FD44    mov         eax,dword ptr [esi+8]
 0068FD47    test        eax,eax
>0068FD49    je          0068FE22
 0068FD4F    cmp         dword ptr [eax+14],0
>0068FD53    je          0068FE22
 0068FD59    mov         ebx,eax
 0068FD5B    call        KERNEL32.GetTickCount
 0068FD60    mov         edx,eax
 0068FD62    mov         ecx,edx
 0068FD64    mov         eax,dword ptr [ebx+20]
 0068FD67    sub         ecx,eax
 0068FD69    cmp         ecx,1F4
>0068FD6F    jl          0068FE22
 0068FD75    mov         dword ptr [ebx+20],edx
 0068FD78    test        eax,eax
>0068FD7A    je          0068FE22
 0068FD80    cmp         dword ptr [esi+0C],0
>0068FD84    je          0068FDB3
 0068FD86    mov         edi,esi
 0068FD88    mov         eax,dword ptr [edi+88]
 0068FD8E    push        eax
 0068FD8F    lea         eax,[esp+4]
 0068FD93    push        eax
 0068FD94    mov         ecx,dword ptr [edi+6C]
 0068FD97    mov         edx,dword ptr [ebx+24]
 0068FD9A    xor         eax,eax
 0068FD9C    call        Rect
 0068FDA1    mov         eax,dword ptr [esp+0C]
 0068FDA5    cmp         eax,dword ptr [ebx+24]
>0068FDA8    jge         0068FDC5
 0068FDAA    mov         eax,dword ptr [edi+70]
 0068FDAD    mov         dword ptr [esp+0C],eax
>0068FDB1    jmp         0068FDC5
 0068FDB3    push        0
 0068FDB5    lea         eax,[esp+4]
 0068FDB9    push        eax
 0068FDBA    xor         ecx,ecx
 0068FDBC    xor         edx,edx
 0068FDBE    xor         eax,eax
 0068FDC0    call        Rect
 0068FDC5    fild        dword ptr [ebx+4]
 0068FDC8    fild        dword ptr [ebx+8]
 0068FDCB    fdivp       st(1),st
 0068FDCD    fild        dword ptr [ebx+0C]
 0068FDD0    faddp       st(1),st
 0068FDD2    fmul        dword ptr ds:[68FE2C];100:Single
 0068FDD8    fild        dword ptr [ebx+10]
 0068FDDB    fdivp       st(1),st
 0068FDDD    call        @TRUNC
 0068FDE2    cmp         eax,dword ptr [ebx+1C]
>0068FDE5    je          0068FE22
 0068FDE7    mov         dword ptr [ebx+1C],eax
 0068FDEA    cmp         dword ptr [esi+0C],0
>0068FDEE    je          0068FDF9
 0068FDF0    mov         edx,dword ptr [esi+88]
 0068FDF6    mov         dword ptr [ebx+24],edx
 0068FDF9    push        eax
 0068FDFA    mov         eax,dword ptr [esp+10]
 0068FDFE    sub         eax,dword ptr [esp+8]
 0068FE02    cmp         eax,4
 0068FE05    setge       al
 0068FE08    push        eax
 0068FE09    lea         eax,[esp+8]
 0068FE0D    push        eax
 0068FE0E    push        0
 0068FE10    mov         cl,1
 0068FE12    mov         esi,dword ptr [ebx+14]
 0068FE15    mov         edx,esi
 0068FE17    mov         eax,esi
 0068FE19    mov         si,0FFFD
 0068FE1D    call        @CallDynaInst
 0068FE22    add         esp,10
 0068FE25    pop         edi
 0068FE26    pop         esi
 0068FE27    pop         ebx
 0068FE28    ret
*}
end;

//0068FE30
procedure ReleaseContext(var jc:TJPEGContext);
begin
{*
 0068FE30    push        ebx
 0068FE31    mov         ebx,eax
 0068FE33    cmp         dword ptr [ebx+0A8],0
>0068FE3A    je          0068FE4F
 0068FE3C    lea         eax,[ebx+0A8]
 0068FE42    call        jpeg_destroy
 0068FE47    xor         eax,eax
 0068FE49    mov         dword ptr [ebx+0A8],eax
 0068FE4F    pop         ebx
 0068FE50    ret
*}
end;

//0068FE54
procedure InitDecompressor(Obj:TJPEGImage; var jc:TJPEGContext);
begin
{*
 0068FE54    push        ebp
 0068FE55    mov         ebp,esp
 0068FE57    push        ecx
 0068FE58    push        ebx
 0068FE59    push        esi
 0068FE5A    push        edi
 0068FE5B    mov         dword ptr [ebp-4],edx
 0068FE5E    mov         ebx,eax
 0068FE60    mov         eax,dword ptr [ebp-4]
 0068FE63    xor         ecx,ecx
 0068FE65    mov         edx,270
 0068FE6A    call        @FillChar
 0068FE6F    mov         eax,dword ptr [ebp-4]
 0068FE72    mov         edi,eax
 0068FE74    mov         esi,6E9B28;^JpegError
 0068FE79    mov         ecx,1D
 0068FE7E    rep movs    dword ptr [edi],dword ptr [esi]
 0068FE80    mov         eax,dword ptr [ebp-4]
 0068FE83    mov         edx,dword ptr [ebp-4]
 0068FE86    mov         dword ptr [edx+0A8],eax
 0068FE8C    mov         eax,dword ptr [ebp-4]
 0068FE8F    add         eax,0A8
 0068FE94    mov         ecx,1C8
 0068FE99    mov         edx,3D
 0068FE9E    call        jpeg_CreateDecompress
 0068FEA3    xor         eax,eax
 0068FEA5    push        ebp
 0068FEA6    push        69004E
 0068FEAB    push        dword ptr fs:[eax]
 0068FEAE    mov         dword ptr fs:[eax],esp
 0068FEB1    mov         eax,68FD3C;ProgressCallback
 0068FEB6    mov         edx,dword ptr [ebp-4]
 0068FEB9    mov         dword ptr [edx+74],eax
 0068FEBC    mov         eax,dword ptr [ebp-4]
 0068FEBF    mov         dword ptr [eax+88],ebx
 0068FEC5    mov         eax,dword ptr [ebp-4]
 0068FEC8    add         eax,74
 0068FECB    mov         edx,dword ptr [ebp-4]
 0068FECE    mov         dword ptr [edx+0B0],eax
 0068FED4    push        0
 0068FED6    push        0
 0068FED8    mov         eax,dword ptr [ebx+28]
 0068FEDB    mov         eax,dword ptr [eax+8]
 0068FEDE    call        TStream.SetPosition
 0068FEE3    mov         eax,dword ptr [ebx+28]
 0068FEE6    mov         edx,dword ptr [eax+8]
 0068FEE9    mov         eax,dword ptr [ebp-4]
 0068FEEC    add         eax,0A8
 0068FEF1    call        jpeg_stdio_src
 0068FEF6    mov         eax,dword ptr [ebp-4]
 0068FEF9    add         eax,0A8
 0068FEFE    or          edx,0FFFFFFFF
 0068FF01    call        jpeg_read_header
 0068FF06    mov         eax,dword ptr [ebp-4]
 0068FF09    mov         dword ptr [eax+0D4],1
 0068FF13    mov         cl,byte ptr [ebx+43]
 0068FF16    mov         eax,1
 0068FF1B    shl         eax,cl
 0068FF1D    mov         edx,dword ptr [ebp-4]
 0068FF20    mov         dword ptr [edx+0D8],eax
 0068FF26    cmp         byte ptr [ebx+3C],1
 0068FF2A    cmc
 0068FF2B    sbb         eax,eax
 0068FF2D    mov         edx,dword ptr [ebp-4]
 0068FF30    mov         dword ptr [edx+0F4],eax
 0068FF36    cmp         byte ptr [ebx+3D],0
>0068FF3A    je          0068FF49
 0068FF3C    mov         eax,dword ptr [ebp-4]
 0068FF3F    mov         dword ptr [eax+0D0],1
 0068FF49    cmp         byte ptr [ebx+3E],1
>0068FF4D    je          0068FF5B
 0068FF4F    mov         eax,dword ptr [ebp-4]
 0068FF52    cmp         dword ptr [eax+0D0],1
>0068FF59    jne         0068FF75
 0068FF5B    mov         eax,dword ptr [ebp-4]
 0068FF5E    mov         dword ptr [eax+0F8],0FFFFFFFF
 0068FF68    mov         eax,dword ptr [ebp-4]
 0068FF6B    mov         dword ptr [eax+104],0EC
 0068FF75    cmp         byte ptr [ebx+42],1
>0068FF79    jne         0068FFA2
 0068FF7B    mov         eax,dword ptr [ebp-4]
 0068FF7E    mov         dword ptr [eax+0EC],1
 0068FF88    mov         eax,dword ptr [ebp-4]
 0068FF8B    xor         edx,edx
 0068FF8D    mov         dword ptr [eax+100],edx
 0068FF93    mov         eax,dword ptr [ebp-4]
 0068FF96    mov         dword ptr [eax+0FC],1
>0068FFA0    jmp         0068FFAF
 0068FFA2    mov         eax,dword ptr [ebp-4]
 0068FFA5    mov         dword ptr [eax+0EC],2
 0068FFAF    mov         eax,dword ptr [ebp-4]
 0068FFB2    mov         eax,dword ptr [eax+0EC]
 0068FFB8    mov         edx,dword ptr [ebp-4]
 0068FFBB    mov         dword ptr [edx+9C],eax
 0068FFC1    mov         eax,dword ptr [ebp-4]
 0068FFC4    cmp         dword ptr [eax+100],1
 0068FFCB    sbb         eax,eax
 0068FFCD    inc         eax
 0068FFCE    mov         edx,dword ptr [ebp-4]
 0068FFD1    mov         byte ptr [edx+0A0],al
 0068FFD7    mov         eax,dword ptr [ebp-4]
 0068FFDA    mov         eax,dword ptr [eax+0FC]
 0068FFE0    mov         edx,dword ptr [ebp-4]
 0068FFE3    mov         dword ptr [edx+0A4],eax
 0068FFE9    cmp         byte ptr [ebx+40],0
>0068FFED    je          00690044
 0068FFEF    mov         eax,dword ptr [ebp-4]
 0068FFF2    add         eax,0A8
 0068FFF7    call        jpeg_has_multiple_scans
 0068FFFC    test        eax,eax
>0068FFFE    je          00690044
 00690000    mov         eax,dword ptr [ebp-4]
 00690003    mov         eax,dword ptr [eax+100]
 00690009    mov         edx,dword ptr [ebp-4]
 0069000C    mov         dword ptr [edx+110],eax
 00690012    mov         eax,dword ptr [ebp-4]
 00690015    mov         dword ptr [eax+0EC],1
 0069001F    mov         eax,dword ptr [ebp-4]
 00690022    xor         edx,edx
 00690024    mov         dword ptr [eax+100],edx
 0069002A    mov         eax,dword ptr [ebp-4]
 0069002D    mov         dword ptr [eax+0FC],1
 00690037    mov         eax,dword ptr [ebp-4]
 0069003A    mov         dword ptr [eax+0E4],0FFFFFFFF
 00690044    xor         eax,eax
 00690046    pop         edx
 00690047    pop         ecx
 00690048    pop         ecx
 00690049    mov         dword ptr fs:[eax],edx
>0069004C    jmp         00690065
>0069004E    jmp         @HandleAnyException
 00690053    mov         eax,dword ptr [ebp-4]
 00690056    call        ReleaseContext
 0069005B    call        @RaiseAgain
 00690060    call        @DoneExcept
 00690065    pop         edi
 00690066    pop         esi
 00690067    pop         ebx
 00690068    pop         ecx
 00690069    pop         ebp
 0069006A    ret
*}
end;

//0069006C
procedure TJPEGImage.CalcOutputDimensions;
begin
{*
 0069006C    push        ebp
 0069006D    mov         ebp,esp
 0069006F    add         esp,0FFFFFD90
 00690075    push        ebx
 00690076    mov         ebx,eax
 00690078    cmp         byte ptr [ebx+44],0
>0069007C    je          006900F2
 0069007E    lea         edx,[ebp-270]
 00690084    mov         eax,ebx
 00690086    call        InitDecompressor
 0069008B    xor         eax,eax
 0069008D    push        ebp
 0069008E    push        6900EB
 00690093    push        dword ptr fs:[eax]
 00690096    mov         dword ptr fs:[eax],esp
 00690099    xor         eax,eax
 0069009B    mov         dword ptr [ebp-1C0],eax
 006900A1    lea         eax,[ebp-1C8]
 006900A7    call        jpeg_calc_output_dimensions
 006900AC    mov         eax,dword ptr [ebp-15C]
 006900B2    mov         dword ptr [ebx+30],eax
 006900B5    mov         eax,dword ptr [ebp-158]
 006900BB    mov         dword ptr [ebx+34],eax
 006900BE    lea         eax,[ebp-1C8]
 006900C4    call        jpeg_has_multiple_scans
 006900C9    cmp         eax,1
 006900CC    sbb         eax,eax
 006900CE    inc         eax
 006900CF    mov         byte ptr [ebx+41],al
 006900D2    xor         eax,eax
 006900D4    pop         edx
 006900D5    pop         ecx
 006900D6    pop         ecx
 006900D7    mov         dword ptr fs:[eax],edx
 006900DA    push        6900F2
 006900DF    lea         eax,[ebp-270]
 006900E5    call        ReleaseContext
 006900EA    ret
>006900EB    jmp         @HandleFinally
>006900F0    jmp         006900DF
 006900F2    pop         ebx
 006900F3    mov         esp,ebp
 006900F5    pop         ebp
 006900F6    ret
*}
end;

//006900F8
procedure sub_006900F8;
begin
{*
 006900F8    call        005C33B8
 006900FD    ret
*}
end;

//00690100
procedure TJPEGImage.Compress;
begin
{*
 00690100    push        ebp
 00690101    mov         ebp,esp
 00690103    add         esp,0FFFFFD70
 00690109    push        ebx
 0069010A    push        esi
 0069010B    push        edi
 0069010C    mov         dword ptr [ebp-4],eax
 0069010F    lea         eax,[ebp-280]
 00690115    xor         ecx,ecx
 00690117    mov         edx,270
 0069011C    call        @FillChar
 00690121    mov         esi,6E9B28;^JpegError
 00690126    lea         edi,[ebp-280]
 0069012C    mov         ecx,1D
 00690131    rep movs    dword ptr [edi],dword ptr [esi]
 00690133    lea         eax,[ebp-280]
 00690139    mov         dword ptr [ebp-1D8],eax
 0069013F    lea         eax,[ebp-1D8]
 00690145    mov         ecx,168
 0069014A    mov         edx,3D
 0069014F    call        jpeg_CreateCompress
 00690154    xor         edx,edx
 00690156    push        ebp
 00690157    push        690477
 0069015C    push        dword ptr fs:[edx]
 0069015F    mov         dword ptr fs:[edx],esp
 00690162    xor         edx,edx
 00690164    push        ebp
 00690165    push        690440
 0069016A    push        dword ptr fs:[edx]
 0069016D    mov         dword ptr fs:[edx],esp
 00690170    mov         eax,68FD3C;ProgressCallback
 00690175    mov         dword ptr [ebp-20C],eax
 0069017B    mov         eax,dword ptr [ebp-4]
 0069017E    mov         dword ptr [ebp-1F8],eax
 00690184    lea         eax,[ebp-20C]
 0069018A    mov         dword ptr [ebp-1D0],eax
 00690190    mov         eax,dword ptr [ebp-4]
 00690193    mov         eax,dword ptr [eax+28]
 00690196    cmp         dword ptr [eax+8],0
>0069019A    je          006901A4
 0069019C    mov         eax,dword ptr [ebp-4]
 0069019F    call        TJPEGImage.NewImage
 006901A4    mov         dl,1
 006901A6    mov         eax,[00642BA0];TMemoryStream
 006901AB    call        TObject.Create;TMemoryStream.Create
 006901B0    mov         ebx,eax
 006901B2    mov         eax,dword ptr [ebp-4]
 006901B5    mov         eax,dword ptr [eax+28]
 006901B8    mov         dword ptr [eax+8],ebx
 006901BB    push        0
 006901BD    push        0
 006901BF    mov         eax,ebx
 006901C1    call        TStream.SetPosition
 006901C6    mov         eax,dword ptr [ebp-4]
 006901C9    mov         eax,dword ptr [eax+28]
 006901CC    mov         edx,dword ptr [eax+8]
 006901CF    lea         eax,[ebp-1D8]
 006901D5    call        jpeg_stdio_dest
 006901DA    mov         eax,dword ptr [ebp-4]
 006901DD    mov         ebx,dword ptr [eax+2C]
 006901E0    test        ebx,ebx
>006901E2    je          006901FE
 006901E4    mov         eax,ebx
 006901E6    mov         edx,dword ptr [eax]
 006901E8    call        dword ptr [edx+2C]
 006901EB    test        eax,eax
>006901ED    je          006901FE
 006901EF    mov         eax,dword ptr [ebp-4]
 006901F2    mov         eax,dword ptr [eax+2C]
 006901F5    mov         edx,dword ptr [eax]
 006901F7    call        dword ptr [edx+20]
 006901FA    test        eax,eax
>006901FC    jne         00690210
 006901FE    xor         eax,eax
 00690200    pop         edx
 00690201    pop         ecx
 00690202    pop         ecx
 00690203    mov         dword ptr fs:[eax],edx
 00690206    call        @TryFinallyExit
>0069020B    jmp         0069047E
 00690210    mov         eax,dword ptr [ebp-4]
 00690213    mov         eax,dword ptr [eax+2C]
 00690216    mov         edx,dword ptr [eax]
 00690218    call        dword ptr [edx+2C]
 0069021B    mov         dword ptr [ebp-1C0],eax
 00690221    mov         eax,dword ptr [ebp-4]
 00690224    mov         eax,dword ptr [eax+2C]
 00690227    mov         edx,dword ptr [eax]
 00690229    call        dword ptr [edx+2C]
 0069022C    mov         edx,dword ptr [ebp-4]
 0069022F    mov         edx,dword ptr [edx+28]
 00690232    mov         dword ptr [edx+10],eax
 00690235    mov         eax,dword ptr [ebp-4]
 00690238    mov         eax,dword ptr [eax+2C]
 0069023B    mov         edx,dword ptr [eax]
 0069023D    call        dword ptr [edx+20]
 00690240    mov         dword ptr [ebp-1BC],eax
 00690246    mov         eax,dword ptr [ebp-4]
 00690249    mov         eax,dword ptr [eax+2C]
 0069024C    mov         edx,dword ptr [eax]
 0069024E    call        dword ptr [edx+20]
 00690251    mov         edx,dword ptr [ebp-4]
 00690254    mov         edx,dword ptr [edx+28]
 00690257    mov         dword ptr [edx+0C],eax
 0069025A    mov         dword ptr [ebp-1B8],3
 00690264    mov         dword ptr [ebp-1B4],2
 0069026E    mov         dl,1
 00690270    mov         eax,[005BEDD4];TBitmap
 00690275    call        TBitmap.Create;TBitmap.Create
 0069027A    mov         dword ptr [ebp-10],eax
 0069027D    xor         edx,edx
 0069027F    push        ebp
 00690280    push        69042F
 00690285    push        dword ptr fs:[edx]
 00690288    mov         dword ptr fs:[edx],esp
 0069028B    mov         eax,dword ptr [ebp-4]
 0069028E    mov         edx,dword ptr [eax+2C]
 00690291    mov         eax,dword ptr [ebp-10]
 00690294    mov         ecx,dword ptr [eax]
 00690296    call        dword ptr [ecx+8];TBitmap.Assign
 00690299    mov         dl,6
 0069029B    mov         eax,dword ptr [ebp-10]
 0069029E    call        TBitmap.SetPixelFormat
 006902A3    lea         eax,[ebp-1D8]
 006902A9    call        jpeg_set_defaults
 006902AE    mov         dword ptr [ebp-11C],2
 006902B8    mov         eax,dword ptr [ebp-4]
 006902BB    xor         edx,edx
 006902BD    mov         dl,byte ptr [eax+3F]
 006902C0    lea         eax,[ebp-1D8]
 006902C6    or          ecx,0FFFFFFFF
 006902C9    call        jpeg_set_quality
 006902CE    mov         eax,dword ptr [ebp-4]
 006902D1    cmp         byte ptr [eax+3D],0
>006902D5    je          006902F1
 006902D7    mov         eax,dword ptr [ebp-4]
 006902DA    mov         eax,dword ptr [eax+28]
 006902DD    mov         byte ptr [eax+14],1
 006902E1    lea         eax,[ebp-1D8]
 006902E7    mov         edx,1
 006902EC    call        jpeg_set_colorspace
 006902F1    mov         eax,dword ptr [ebp-4]
 006902F4    cmp         byte ptr [eax+41],0
>006902F8    je          00690305
 006902FA    lea         eax,[ebp-1D8]
 00690300    call        jpeg_simple_progression
 00690305    xor         edx,edx
 00690307    mov         eax,dword ptr [ebp-10]
 0069030A    call        TBitmap.GetScanline
 0069030F    mov         dword ptr [ebp-0C],eax
 00690312    mov         edx,1
 00690317    mov         eax,dword ptr [ebp-10]
 0069031A    call        TBitmap.GetScanline
 0069031F    mov         ebx,eax
 00690321    sub         ebx,dword ptr [ebp-0C]
 00690324    test        ebx,ebx
>00690326    jle         00690338
 00690328    test        bl,3
>0069032B    jne         00690338
 0069032D    mov         eax,dword ptr [ebp-1BC]
 00690333    mov         dword ptr [ebp-8],eax
>00690336    jmp         0069033F
 00690338    mov         dword ptr [ebp-8],1
 0069033F    push        0
 00690341    push        0
 00690343    push        0
 00690345    lea         eax,[ebp-290]
 0069034B    push        eax
 0069034C    xor         ecx,ecx
 0069034E    xor         edx,edx
 00690350    xor         eax,eax
 00690352    call        Rect
 00690357    lea         eax,[ebp-290]
 0069035D    push        eax
 0069035E    push        0
 00690360    xor         ecx,ecx
 00690362    mov         edx,dword ptr [ebp-4]
 00690365    mov         eax,dword ptr [ebp-4]
 00690368    mov         si,0FFFD
 0069036C    call        @CallDynaInst
 00690371    xor         edx,edx
 00690373    push        ebp
 00690374    push        690412
 00690379    push        dword ptr fs:[edx]
 0069037C    mov         dword ptr fs:[edx],esp
 0069037F    lea         eax,[ebp-1D8]
 00690385    or          edx,0FFFFFFFF
 00690388    call        jpeg_start_compress
>0069038D    jmp         006903A8
 0069038F    lea         edx,[ebp-0C]
 00690392    lea         eax,[ebp-1D8]
 00690398    mov         ecx,dword ptr [ebp-8]
 0069039B    call        jpeg_write_scanlines
 006903A0    mov         edx,ebx
 006903A2    imul        edx,eax
 006903A5    add         dword ptr [ebp-0C],edx
 006903A8    mov         eax,dword ptr [ebp-100]
 006903AE    cmp         eax,dword ptr [ebp-1BC]
>006903B4    jb          0069038F
 006903B6    lea         eax,[ebp-1D8]
 006903BC    call        jpeg_finish_compress
 006903C1    xor         eax,eax
 006903C3    pop         edx
 006903C4    pop         ecx
 006903C5    pop         ecx
 006903C6    mov         dword ptr fs:[eax],edx
 006903C9    push        690419
 006903CE    call        ExceptObject
 006903D3    test        eax,eax
>006903D5    jne         006903DE
 006903D7    mov         ebx,64
>006903DC    jmp         006903E0
 006903DE    xor         ebx,ebx
 006903E0    push        ebx
 006903E1    push        0
 006903E3    push        0
 006903E5    lea         eax,[ebp-290]
 006903EB    push        eax
 006903EC    xor         ecx,ecx
 006903EE    xor         edx,edx
 006903F0    xor         eax,eax
 006903F2    call        Rect
 006903F7    lea         eax,[ebp-290]
 006903FD    push        eax
 006903FE    push        0
 00690400    mov         cl,2
 00690402    mov         edx,dword ptr [ebp-4]
 00690405    mov         eax,dword ptr [ebp-4]
 00690408    mov         si,0FFFD
 0069040C    call        @CallDynaInst
 00690411    ret
>00690412    jmp         @HandleFinally
>00690417    jmp         006903CE
 00690419    xor         eax,eax
 0069041B    pop         edx
 0069041C    pop         ecx
 0069041D    pop         ecx
 0069041E    mov         dword ptr fs:[eax],edx
 00690421    push        690436
 00690426    mov         eax,dword ptr [ebp-10]
 00690429    call        TObject.Free
 0069042E    ret
>0069042F    jmp         @HandleFinally
>00690434    jmp         00690426
 00690436    xor         eax,eax
 00690438    pop         edx
 00690439    pop         ecx
 0069043A    pop         ecx
 0069043B    mov         dword ptr fs:[eax],edx
>0069043E    jmp         0069045E
>00690440    jmp         @HandleOnException
 00690445    dd          1
 00690449    dd          006567DC;EAbort
 0069044D    dd          00690451
 00690451    mov         eax,dword ptr [ebp-4]
 00690454    call        TJPEGImage.NewImage
 00690459    call        @DoneExcept
 0069045E    xor         eax,eax
 00690460    pop         edx
 00690461    pop         ecx
 00690462    pop         ecx
 00690463    mov         dword ptr fs:[eax],edx
 00690466    push        69047E
 0069046B    lea         eax,[ebp-280]
 00690471    call        ReleaseContext
 00690476    ret
>00690477    jmp         @HandleFinally
>0069047C    jmp         0069046B
 0069047E    pop         edi
 0069047F    pop         esi
 00690480    pop         ebx
 00690481    mov         esp,ebp
 00690483    pop         ebp
 00690484    ret
*}
end;

//00690488
procedure TJPEGImage.Draw(ACanvas:TCanvas; const Rect:TRect);
begin
{*
 00690488    push        ebx
 00690489    push        esi
 0069048A    push        edi
 0069048B    mov         edi,ecx
 0069048D    mov         esi,edx
 0069048F    mov         ebx,eax
 00690491    mov         eax,ebx
 00690493    call        TJPEGImage.GetBitmap
 00690498    mov         ecx,eax
 0069049A    mov         edx,edi
 0069049C    mov         eax,esi
 0069049E    call        TCanvas.StretchDraw
 006904A3    pop         edi
 006904A4    pop         esi
 006904A5    pop         ebx
 006904A6    ret
*}
end;

//006904A8
function TJPEGImage.Equals(Graphic:TGraphic):Boolean;
begin
{*
 006904A8    push        ebx
 006904A9    push        esi
 006904AA    push        edi
 006904AB    mov         esi,edx
 006904AD    mov         edi,eax
 006904AF    xor         ebx,ebx
 006904B1    mov         eax,esi
 006904B3    mov         edx,dword ptr ds:[68F93C];TJPEGImage
 006904B9    call        @IsClass
 006904BE    test        al,al
>006904C0    je          006904E7
 006904C2    mov         eax,dword ptr [edi+28]
 006904C5    cmp         dword ptr [eax+8],0
>006904C9    je          006904E1
 006904CB    mov         edx,dword ptr [esi+28]
 006904CE    cmp         dword ptr [edx+8],0
>006904D2    je          006904E1
 006904D4    mov         edx,esi
 006904D6    mov         eax,edi
 006904D8    call        TGraphic.Equals
 006904DD    mov         ebx,eax
>006904DF    jmp         006904E7
 006904E1    cmp         eax,dword ptr [esi+28]
 006904E4    sete        bl
 006904E7    mov         eax,ebx
 006904E9    pop         edi
 006904EA    pop         esi
 006904EB    pop         ebx
 006904EC    ret
*}
end;

//006904F0
procedure TJPEGImage.FreeBitmap;
begin
{*
 006904F0    push        ebx
 006904F1    mov         ebx,eax
 006904F3    mov         eax,dword ptr [ebx+2C]
 006904F6    call        TObject.Free
 006904FB    xor         eax,eax
 006904FD    mov         dword ptr [ebx+2C],eax
 00690500    pop         ebx
 00690501    ret
*}
end;

//00690504
function BuildPalette(const cinfo:jpeg_decompress_struct):HPALETTE;
begin
{*
 00690504    push        esi
 00690505    push        edi
 00690506    add         esp,0FFFFFBFC
 0069050C    mov         edi,eax
 0069050E    mov         word ptr [esp],300
 00690514    mov         dx,word ptr [edi+80]
 0069051B    mov         word ptr [esp+2],dx
 00690520    cmp         dword ptr [edi+28],1
>00690524    jne         00690555
 00690526    movzx       esi,dx
 00690529    dec         esi
 0069052A    test        esi,esi
>0069052C    jl          0069059A
 0069052E    inc         esi
 0069052F    xor         ecx,ecx
 00690531    lea         edx,[esp+4]
 00690535    mov         eax,dword ptr [edi+84]
 0069053B    mov         eax,dword ptr [eax]
 0069053D    mov         al,byte ptr [eax+ecx]
 00690540    mov         byte ptr [edx],al
 00690542    mov         byte ptr [edx+1],al
 00690545    mov         byte ptr [edx+2],al
 00690548    mov         byte ptr [edx+3],0
 0069054C    inc         ecx
 0069054D    add         edx,4
 00690550    dec         esi
>00690551    jne         00690535
>00690553    jmp         0069059A
 00690555    movzx       esi,dx
 00690558    dec         esi
 00690559    test        esi,esi
>0069055B    jl          0069059A
 0069055D    inc         esi
 0069055E    xor         ecx,ecx
 00690560    lea         edx,[esp+4]
 00690564    mov         eax,dword ptr [edi+84]
 0069056A    mov         eax,dword ptr [eax+8]
 0069056D    mov         al,byte ptr [eax+ecx]
 00690570    mov         byte ptr [edx],al
 00690572    mov         eax,dword ptr [edi+84]
 00690578    mov         eax,dword ptr [eax+4]
 0069057B    mov         al,byte ptr [eax+ecx]
 0069057E    mov         byte ptr [edx+1],al
 00690581    mov         eax,dword ptr [edi+84]
 00690587    mov         eax,dword ptr [eax]
 00690589    mov         al,byte ptr [eax+ecx]
 0069058C    mov         byte ptr [edx+2],al
 0069058F    mov         byte ptr [edx+3],0
 00690593    inc         ecx
 00690594    add         edx,4
 00690597    dec         esi
>00690598    jne         00690564
 0069059A    mov         eax,esp
 0069059C    push        eax
 0069059D    call        GDI32.CreatePalette
 006905A2    add         esp,404
 006905A8    pop         edi
 006905A9    pop         esi
 006905AA    ret
*}
end;

//006905AC
procedure BuildColorMap(var cinfo:jpeg_decompress_struct; P:HPALETTE);
begin
{*
 006905AC    push        ebx
 006905AD    push        esi
 006905AE    push        edi
 006905AF    push        ebp
 006905B0    add         esp,0FFFFFBFC
 006905B6    mov         ebx,eax
 006905B8    lea         eax,[esp+4]
 006905BC    push        eax
 006905BD    push        100
 006905C2    push        0
 006905C4    push        edx
 006905C5    call        GDI32.GetPaletteEntries
 006905CA    mov         esi,eax
 006905CC    test        esi,esi
>006905CE    je          00690629
 006905D0    push        3
 006905D2    mov         edi,dword ptr [ebx+4]
 006905D5    mov         eax,ebx
 006905D7    mov         ecx,esi
 006905D9    mov         edx,1
 006905DE    call        dword ptr [edi+8]
 006905E1    mov         dword ptr [ebx+84],eax
 006905E7    mov         dword ptr [ebx+80],esi
 006905ED    mov         edi,esi
 006905EF    dec         edi
 006905F0    test        edi,edi
>006905F2    jl          00690629
 006905F4    inc         edi
 006905F5    xor         edx,edx
 006905F7    lea         eax,[esp+4]
 006905FB    mov         esi,dword ptr [ebx+84]
 00690601    mov         ecx,dword ptr [esi+8]
 00690604    lea         ebp,[ecx+edx]
 00690607    mov         cl,byte ptr [eax]
 00690609    mov         byte ptr [ebp],cl
 0069060C    mov         ecx,dword ptr [esi+4]
 0069060F    lea         ebp,[ecx+edx]
 00690612    mov         cl,byte ptr [eax+1]
 00690615    mov         byte ptr [ebp],cl
 00690618    mov         ecx,dword ptr [esi]
 0069061A    lea         esi,[ecx+edx]
 0069061D    mov         cl,byte ptr [eax+2]
 00690620    mov         byte ptr [esi],cl
 00690622    inc         edx
 00690623    add         eax,4
 00690626    dec         edi
>00690627    jne         006905FB
 00690629    add         esp,404
 0069062F    pop         ebp
 00690630    pop         edi
 00690631    pop         esi
 00690632    pop         ebx
 00690633    ret
*}
end;

//00690634
function TJPEGImage.GetBitmap:TBitmap;
begin
{*
 00690634    push        ebp
 00690635    mov         ebp,esp
 00690637    add         esp,0FFFFFD70
 0069063D    push        ebx
 0069063E    push        esi
 0069063F    push        edi
 00690640    mov         dword ptr [ebp-4],eax
 00690643    mov         eax,dword ptr [ebp-4]
 00690646    mov         eax,dword ptr [eax+2C]
 00690649    mov         dword ptr [ebp-8],eax
 0069064C    cmp         dword ptr [ebp-8],0
>00690650    jne         00690A35
 00690656    test        eax,eax
>00690658    jne         0069066C
 0069065A    mov         dl,1
 0069065C    mov         eax,[005BEDD4];TBitmap
 00690661    call        TBitmap.Create;TBitmap.Create
 00690666    mov         edx,dword ptr [ebp-4]
 00690669    mov         dword ptr [edx+2C],eax
 0069066C    mov         eax,dword ptr [ebp-4]
 0069066F    mov         eax,dword ptr [eax+2C]
 00690672    mov         dword ptr [ebp-8],eax
 00690675    mov         byte ptr [ebp-0D],1
 00690679    lea         edx,[ebp-280]
 0069067F    mov         eax,dword ptr [ebp-4]
 00690682    call        InitDecompressor
 00690687    xor         edx,edx
 00690689    push        ebp
 0069068A    push        690A2E
 0069068F    push        dword ptr fs:[edx]
 00690692    mov         dword ptr fs:[edx],esp
 00690695    xor         edx,edx
 00690697    push        ebp
 00690698    push        6909FF
 0069069D    push        dword ptr fs:[edx]
 006906A0    mov         dword ptr fs:[edx],esp
 006906A3    mov         eax,dword ptr [ebp-4]
 006906A6    mov         eax,dword ptr [eax+2C]
 006906A9    xor         edx,edx
 006906AB    call        TBitmap.SetHandle
 006906B0    mov         eax,dword ptr [ebp-4]
 006906B3    cmp         byte ptr [eax+3E],1
>006906B7    je          006906C2
 006906B9    cmp         dword ptr [ebp-1B0],1
>006906C0    jne         006906D1
 006906C2    mov         eax,dword ptr [ebp-4]
 006906C5    mov         eax,dword ptr [eax+2C]
 006906C8    mov         dl,3
 006906CA    call        TBitmap.SetPixelFormat
>006906CF    jmp         006906DE
 006906D1    mov         eax,dword ptr [ebp-4]
 006906D4    mov         eax,dword ptr [eax+2C]
 006906D7    mov         dl,6
 006906D9    call        TBitmap.SetPixelFormat
 006906DE    push        0
 006906E0    push        0
 006906E2    push        0
 006906E4    lea         eax,[ebp-290]
 006906EA    push        eax
 006906EB    xor         ecx,ecx
 006906ED    xor         edx,edx
 006906EF    xor         eax,eax
 006906F1    call        Rect
 006906F6    lea         eax,[ebp-290]
 006906FC    push        eax
 006906FD    push        0
 006906FF    xor         ecx,ecx
 00690701    mov         edx,dword ptr [ebp-4]
 00690704    mov         eax,dword ptr [ebp-4]
 00690707    mov         si,0FFFD
 0069070B    call        @CallDynaInst
 00690710    xor         edx,edx
 00690712    push        ebp
 00690713    push        6909EE
 00690718    push        dword ptr fs:[edx]
 0069071B    mov         dword ptr fs:[edx],esp
 0069071E    mov         eax,dword ptr [ebp-4]
 00690721    mov         eax,dword ptr [eax+38]
 00690724    test        eax,eax
>00690726    je          0069076A
 00690728    mov         edx,dword ptr [ebp-4]
 0069072B    cmp         byte ptr [edx+3E],1
>0069072F    jne         0069075C
 00690731    mov         edx,eax
 00690733    lea         eax,[ebp-1D8]
 00690739    call        BuildColorMap
 0069073E    mov         eax,dword ptr [ebp-4]
 00690741    mov         eax,dword ptr [eax+38]
 00690744    call        CopyPalette
 00690749    mov         edx,eax
 0069074B    mov         eax,dword ptr [ebp-4]
 0069074E    mov         eax,dword ptr [eax+2C]
 00690751    mov         ecx,dword ptr [eax]
 00690753    call        dword ptr [ecx+38]
 00690756    mov         byte ptr [ebp-0D],0
>0069075A    jmp         0069076A
 0069075C    push        eax
 0069075D    call        GDI32.DeleteObject
 00690762    mov         eax,dword ptr [ebp-4]
 00690765    xor         edx,edx
 00690767    mov         dword ptr [eax+38],edx
 0069076A    lea         eax,[ebp-1D8]
 00690770    call        jpeg_start_decompress
 00690775    mov         eax,dword ptr [ebp-4]
 00690778    mov         ebx,dword ptr [eax+2C]
 0069077B    xor         edx,edx
 0069077D    mov         eax,ebx
 0069077F    call        TBitmap.SetHandle
 00690784    mov         edx,dword ptr [ebp-16C]
 0069078A    mov         eax,ebx
 0069078C    mov         ecx,dword ptr [eax]
 0069078E    call        dword ptr [ecx+40]
 00690791    mov         edx,dword ptr [ebp-168]
 00690797    mov         eax,ebx
 00690799    mov         ecx,dword ptr [eax]
 0069079B    call        dword ptr [ecx+34]
 0069079E    xor         edx,edx
 006907A0    mov         eax,ebx
 006907A2    call        TBitmap.GetScanline
 006907A7    mov         dword ptr [ebp-0C],eax
 006907AA    mov         edx,1
 006907AF    mov         eax,ebx
 006907B1    call        TBitmap.GetScanline
 006907B6    mov         esi,eax
 006907B8    sub         esi,dword ptr [ebp-0C]
 006907BB    test        esi,esi
>006907BD    jle         006907CF
 006907BF    test        esi,3
>006907C5    jne         006907CF
 006907C7    mov         ebx,dword ptr [ebp-15C]
>006907CD    jmp         006907D4
 006907CF    mov         ebx,1
 006907D4    cmp         dword ptr [ebp-19C],0
>006907DB    je          006908EB
>006907E1    jmp         00690883
 006907E6    lea         eax,[ebp-1D8]
 006907EC    mov         edx,dword ptr [ebp-14C]
 006907F2    call        jpeg_start_output
 006907F7    mov         eax,dword ptr [ebp-1D0]
 006907FD    cmp         dword ptr [eax+0C],0
>00690801    jne         00690840
 00690803    cmp         dword ptr [ebp-154],0
>0069080A    je          00690840
 0069080C    mov         eax,dword ptr [ebp-4]
 0069080F    mov         eax,dword ptr [eax+2C]
 00690812    call        TBitmap.GetPixelFormat
 00690817    cmp         al,3
>00690819    jne         00690840
 0069081B    cmp         byte ptr [ebp-0D],0
>0069081F    je          00690840
 00690821    lea         eax,[ebp-1D8]
 00690827    call        BuildPalette
 0069082C    mov         edx,eax
 0069082E    mov         eax,dword ptr [ebp-4]
 00690831    mov         eax,dword ptr [eax+2C]
 00690834    mov         ecx,dword ptr [eax]
 00690836    call        dword ptr [ecx+38]
 00690839    mov         eax,dword ptr [ebp-4]
 0069083C    mov         byte ptr [eax+22],1
 00690840    mov         eax,dword ptr [ebp-4]
 00690843    mov         eax,dword ptr [eax+2C]
 00690846    xor         edx,edx
 00690848    call        TBitmap.GetScanline
 0069084D    mov         dword ptr [ebp-0C],eax
>00690850    jmp         0069086A
 00690852    lea         edx,[ebp-0C]
 00690855    lea         eax,[ebp-1D8]
 0069085B    mov         ecx,ebx
 0069085D    call        jpeg_read_scanlines
 00690862    mov         edx,esi
 00690864    imul        edx,eax
 00690867    add         dword ptr [ebp-0C],edx
 0069086A    mov         eax,dword ptr [ebp-150]
 00690870    cmp         eax,dword ptr [ebp-168]
>00690876    jb          00690852
 00690878    lea         eax,[ebp-1D8]
 0069087E    call        jpeg_finish_output
 00690883    lea         eax,[ebp-1D8]
 00690889    call        jpeg_consume_input
 0069088E    cmp         eax,2
>00690891    jne         006907E6
 00690897    mov         eax,dword ptr [ebp-1E4]
 0069089D    mov         dword ptr [ebp-194],eax
 006908A3    mov         eax,dword ptr [ebp-1DC]
 006908A9    mov         dword ptr [ebp-184],eax
 006908AF    cmp         byte ptr [ebp-1E0],0
>006908B6    je          006908CA
 006908B8    mov         dword ptr [ebp-180],0FFFFFFFF
 006908C2    xor         eax,eax
 006908C4    mov         dword ptr [ebp-154],eax
 006908CA    lea         eax,[ebp-1D8]
 006908D0    mov         edx,dword ptr [ebp-14C]
 006908D6    call        jpeg_start_output
 006908DB    mov         eax,dword ptr [ebp-4]
 006908DE    mov         eax,dword ptr [eax+2C]
 006908E1    xor         edx,edx
 006908E3    call        TBitmap.GetScanline
 006908E8    mov         dword ptr [ebp-0C],eax
 006908EB    cmp         dword ptr [ebp-19C],0
>006908F2    je          006908FD
 006908F4    cmp         byte ptr [ebp-1E0],0
>006908FB    je          00690955
 006908FD    cmp         dword ptr [ebp-154],0
>00690904    je          00690955
 00690906    cmp         byte ptr [ebp-0D],0
>0069090A    je          00690955
 0069090C    lea         eax,[ebp-1D8]
 00690912    call        BuildPalette
 00690917    mov         edx,eax
 00690919    mov         eax,dword ptr [ebp-4]
 0069091C    mov         eax,dword ptr [eax+2C]
 0069091F    mov         ecx,dword ptr [eax]
 00690921    call        dword ptr [ecx+38]
 00690924    mov         eax,dword ptr [ebp-4]
 00690927    mov         byte ptr [eax+22],1
 0069092B    mov         eax,dword ptr [ebp-4]
 0069092E    mov         eax,dword ptr [eax+2C]
 00690931    xor         edx,edx
 00690933    call        TBitmap.GetScanline
 00690938    mov         dword ptr [ebp-0C],eax
>0069093B    jmp         00690955
 0069093D    lea         edx,[ebp-0C]
 00690940    lea         eax,[ebp-1D8]
 00690946    mov         ecx,ebx
 00690948    call        jpeg_read_scanlines
 0069094D    mov         edx,esi
 0069094F    imul        edx,eax
 00690952    add         dword ptr [ebp-0C],edx
 00690955    mov         eax,dword ptr [ebp-150]
 0069095B    cmp         eax,dword ptr [ebp-168]
>00690961    jb          0069093D
 00690963    cmp         dword ptr [ebp-19C],0
>0069096A    je          00690977
 0069096C    lea         eax,[ebp-1D8]
 00690972    call        jpeg_finish_output
 00690977    lea         eax,[ebp-1D8]
 0069097D    call        jpeg_finish_decompress
 00690982    xor         eax,eax
 00690984    pop         edx
 00690985    pop         ecx
 00690986    pop         ecx
 00690987    mov         dword ptr fs:[eax],edx
 0069098A    push        6909F5
 0069098F    call        ExceptObject
 00690994    test        eax,eax
>00690996    jne         0069099F
 00690998    mov         esi,64
>0069099D    jmp         006909A1
 0069099F    xor         esi,esi
 006909A1    mov         eax,esi
 006909A3    push        eax
 006909A4    mov         eax,dword ptr [ebp-4]
 006909A7    mov         al,byte ptr [eax+22]
 006909AA    push        eax
 006909AB    push        0
 006909AD    lea         eax,[ebp-290]
 006909B3    push        eax
 006909B4    xor         ecx,ecx
 006909B6    xor         edx,edx
 006909B8    xor         eax,eax
 006909BA    call        Rect
 006909BF    lea         eax,[ebp-290]
 006909C5    push        eax
 006909C6    push        0
 006909C8    mov         cl,2
 006909CA    mov         edx,dword ptr [ebp-4]
 006909CD    mov         eax,dword ptr [ebp-4]
 006909D0    mov         si,0FFFD
 006909D4    call        @CallDynaInst
 006909D9    mov         eax,dword ptr [ebp-4]
 006909DC    cmp         byte ptr [eax+22],0
>006909E0    je          006909ED
 006909E2    mov         edx,dword ptr [ebp-4]
 006909E5    mov         eax,dword ptr [ebp-4]
 006909E8    mov         ecx,dword ptr [eax]
 006909EA    call        dword ptr [ecx+10]
 006909ED    ret
>006909EE    jmp         @HandleFinally
>006909F3    jmp         0069098F
 006909F5    xor         eax,eax
 006909F7    pop         edx
 006909F8    pop         ecx
 006909F9    pop         ecx
 006909FA    mov         dword ptr fs:[eax],edx
>006909FD    jmp         00690A15
>006909FF    jmp         @HandleOnException
 00690A04    dd          1
 00690A08    dd          006567DC;EAbort
 00690A0C    dd          00690A10
 00690A10    call        @DoneExcept
 00690A15    xor         eax,eax
 00690A17    pop         edx
 00690A18    pop         ecx
 00690A19    pop         ecx
 00690A1A    mov         dword ptr fs:[eax],edx
 00690A1D    push        690A35
 00690A22    lea         eax,[ebp-280]
 00690A28    call        ReleaseContext
 00690A2D    ret
>00690A2E    jmp         @HandleFinally
>00690A33    jmp         00690A22
 00690A35    mov         eax,dword ptr [ebp-8]
 00690A38    pop         edi
 00690A39    pop         esi
 00690A3A    pop         ebx
 00690A3B    mov         esp,ebp
 00690A3D    pop         ebp
 00690A3E    ret
*}
end;

//00690A40
function TJPEGImage.GetEmpty:Boolean;
begin
{*
 00690A40    push        ebx
 00690A41    push        esi
 00690A42    mov         ebx,eax
 00690A44    mov         eax,dword ptr [ebx+28]
 00690A47    cmp         dword ptr [eax+8],0
>00690A4B    jne         00690A5F
 00690A4D    mov         esi,dword ptr [ebx+2C]
 00690A50    test        esi,esi
>00690A52    je          00690A64
 00690A54    mov         eax,esi
 00690A56    mov         edx,dword ptr [eax]
 00690A58    call        dword ptr [edx+1C]
 00690A5B    test        al,al
>00690A5D    jne         00690A64
 00690A5F    xor         eax,eax
 00690A61    pop         esi
 00690A62    pop         ebx
 00690A63    ret
 00690A64    mov         al,1
 00690A66    pop         esi
 00690A67    pop         ebx
 00690A68    ret
*}
end;

//00690A6C
function TJPEGImage.GetPalette:HPALETTE;
begin
{*
 00690A6C    push        ebx
 00690A6D    push        esi
 00690A6E    push        edi
 00690A6F    push        ebp
 00690A70    mov         ebx,eax
 00690A72    xor         esi,esi
 00690A74    mov         eax,dword ptr [ebx+2C]
 00690A77    test        eax,eax
>00690A79    je          00690A84
 00690A7B    mov         edx,dword ptr [eax]
 00690A7D    call        dword ptr [edx+24]
 00690A80    mov         esi,eax
>00690A82    jmp         00690ACB
 00690A84    mov         eax,dword ptr [ebx+38]
 00690A87    test        eax,eax
>00690A89    je          00690A8F
 00690A8B    mov         esi,eax
>00690A8D    jmp         00690ACB
 00690A8F    cmp         byte ptr [ebx+3E],0
>00690A93    jne         00690ACB
 00690A95    push        0
 00690A97    call        USER32.GetDC
 00690A9C    mov         edi,eax
 00690A9E    push        0C
 00690AA0    push        edi
 00690AA1    call        GDI32.GetDeviceCaps
 00690AA6    mov         ebp,eax
 00690AA8    push        0E
 00690AAA    push        edi
 00690AAB    call        GDI32.GetDeviceCaps
 00690AB0    imul        ebp,eax
 00690AB3    cmp         ebp,8
>00690AB6    jg          00690AC3
 00690AB8    push        edi
 00690AB9    call        GDI32.CreateHalftonePalette
 00690ABE    mov         esi,eax
 00690AC0    mov         dword ptr [ebx+38],esi
 00690AC3    push        edi
 00690AC4    push        0
 00690AC6    call        USER32.ReleaseDC
 00690ACB    mov         eax,esi
 00690ACD    pop         ebp
 00690ACE    pop         edi
 00690ACF    pop         esi
 00690AD0    pop         ebx
 00690AD1    ret
*}
end;

//00690AD4
function TJPEGImage.GetHeight:Integer;
begin
{*
 00690AD4    push        ebx
 00690AD5    mov         ebx,eax
 00690AD7    mov         eax,dword ptr [ebx+2C]
 00690ADA    test        eax,eax
>00690ADC    je          00690AE5
 00690ADE    mov         edx,dword ptr [eax]
 00690AE0    call        dword ptr [edx+20]
 00690AE3    pop         ebx
 00690AE4    ret
 00690AE5    cmp         byte ptr [ebx+43],0
>00690AE9    jne         00690AF3
 00690AEB    mov         eax,dword ptr [ebx+28]
 00690AEE    mov         eax,dword ptr [eax+0C]
>00690AF1    jmp         00690AFD
 00690AF3    mov         eax,ebx
 00690AF5    call        TJPEGImage.CalcOutputDimensions
 00690AFA    mov         eax,dword ptr [ebx+34]
 00690AFD    pop         ebx
 00690AFE    ret
*}
end;

//00690B00
function TJPEGImage.GetWidth:Integer;
begin
{*
 00690B00    push        ebx
 00690B01    mov         ebx,eax
 00690B03    mov         eax,dword ptr [ebx+2C]
 00690B06    test        eax,eax
>00690B08    je          00690B11
 00690B0A    mov         edx,dword ptr [eax]
 00690B0C    call        dword ptr [edx+2C]
 00690B0F    pop         ebx
 00690B10    ret
 00690B11    cmp         byte ptr [ebx+43],0
>00690B15    jne         00690B1F
 00690B17    mov         eax,dword ptr [ebx+28]
 00690B1A    mov         eax,dword ptr [eax+10]
>00690B1D    jmp         00690B29
 00690B1F    mov         eax,ebx
 00690B21    call        TJPEGImage.CalcOutputDimensions
 00690B26    mov         eax,dword ptr [ebx+30]
 00690B29    pop         ebx
 00690B2A    ret
*}
end;

//00690B2C
procedure TJPEGImage.JPEGNeeded;
begin
{*
 00690B2C    mov         edx,dword ptr [eax+28]
 00690B2F    cmp         dword ptr [edx+8],0
>00690B33    jne         00690B3A
 00690B35    call        TJPEGImage.Compress
 00690B3A    ret
*}
end;

//00690B3C
procedure TJPEGImage.LoadFromClipboardFormat(AFormat:Word; AData:THandle; APalette:HPALETTE);
begin
{*
 00690B3C    push        ebp
 00690B3D    mov         ebp,esp
 00690B3F    push        ebx
 00690B40    push        esi
 00690B41    push        edi
 00690B42    mov         edi,edx
 00690B44    mov         esi,eax
 00690B46    mov         eax,dword ptr [ebp+8]
 00690B49    push        eax
 00690B4A    mov         edx,edi
 00690B4C    mov         eax,dword ptr [esi+2C]
 00690B4F    mov         ebx,dword ptr [eax]
 00690B51    call        dword ptr [ebx+5C]
 00690B54    pop         edi
 00690B55    pop         esi
 00690B56    pop         ebx
 00690B57    pop         ebp
 00690B58    ret         4
*}
end;

//00690B5C
procedure TJPEGImage.LoadFromStream(Stream:TStream);
begin
{*
 00690B5C    push        ebx
 00690B5D    push        esi
 00690B5E    mov         ebx,edx
 00690B60    mov         esi,eax
 00690B62    mov         eax,ebx
 00690B64    call        TStream.GetSize
 00690B69    push        eax
 00690B6A    mov         eax,ebx
 00690B6C    call        TStream.GetPosition
 00690B71    pop         edx
 00690B72    sub         edx,eax
 00690B74    mov         ecx,ebx
 00690B76    mov         eax,esi
 00690B78    call        TJPEGImage.ReadStream
 00690B7D    pop         esi
 00690B7E    pop         ebx
 00690B7F    ret
*}
end;

//00690B80
procedure TJPEGImage.NewBitmap;
begin
{*
 00690B80    push        ebx
 00690B81    mov         ebx,eax
 00690B83    mov         eax,dword ptr [ebx+2C]
 00690B86    call        TObject.Free
 00690B8B    mov         dl,1
 00690B8D    mov         eax,[005BEDD4];TBitmap
 00690B92    call        TBitmap.Create;TBitmap.Create
 00690B97    mov         dword ptr [ebx+2C],eax
 00690B9A    pop         ebx
 00690B9B    ret
*}
end;

//00690B9C
procedure TJPEGImage.NewImage;
begin
{*
 00690B9C    push        ebx
 00690B9D    push        esi
 00690B9E    mov         ebx,eax
 00690BA0    mov         eax,dword ptr [ebx+28];TBitmap.FImage:TBitmapImage
 00690BA3    test        eax,eax
>00690BA5    je          00690BAC
 00690BA7    call        TSharedImage.Release
 00690BAC    mov         dl,1
 00690BAE    mov         eax,[0068F8E0];TJPEGData
 00690BB3    call        TObject.Create;TJPEGData.Create
 00690BB8    mov         esi,eax
 00690BBA    mov         dword ptr [ebx+28],esi;TBitmap.FImage:TBitmapImage
 00690BBD    mov         eax,esi
 00690BBF    call        TSharedImage.Reference
 00690BC4    pop         esi
 00690BC5    pop         ebx
 00690BC6    ret
*}
end;

//00690BC8
procedure TJPEGImage.ReadData(Stream:TStream);
begin
{*
 00690BC8    push        ebx
 00690BC9    push        esi
 00690BCA    push        edi
 00690BCB    push        ecx
 00690BCC    mov         esi,edx
 00690BCE    mov         ebx,eax
 00690BD0    mov         edx,esp
 00690BD2    mov         ecx,4
 00690BD7    mov         eax,esi
 00690BD9    mov         edi,dword ptr [eax]
 00690BDB    call        dword ptr [edi+8]
 00690BDE    mov         ecx,esi
 00690BE0    mov         edx,dword ptr [esp]
 00690BE3    mov         eax,ebx
 00690BE5    call        TJPEGImage.ReadStream
 00690BEA    pop         edx
 00690BEB    pop         edi
 00690BEC    pop         esi
 00690BED    pop         ebx
 00690BEE    ret
*}
end;

//00690BF0
procedure TJPEGImage.ReadStream(Size:Longint; Stream:TStream);
begin
{*
 00690BF0    push        ebp
 00690BF1    mov         ebp,esp
 00690BF3    add         esp,0FFFFFDBC
 00690BF9    push        ebx
 00690BFA    push        esi
 00690BFB    push        edi
 00690BFC    mov         dword ptr [ebp-8],ecx
 00690BFF    mov         esi,edx
 00690C01    mov         dword ptr [ebp-4],eax
 00690C04    mov         eax,dword ptr [ebp-4]
 00690C07    call        TJPEGImage.NewImage
 00690C0C    mov         eax,dword ptr [ebp-4]
 00690C0F    mov         eax,dword ptr [eax+2C]
 00690C12    call        TObject.Free
 00690C17    mov         eax,dword ptr [ebp-4]
 00690C1A    xor         edx,edx
 00690C1C    mov         dword ptr [eax+2C],edx
 00690C1F    mov         eax,dword ptr [ebp-4]
 00690C22    mov         ebx,dword ptr [eax+28]
 00690C25    mov         dl,1
 00690C27    mov         eax,[00642BA0];TMemoryStream
 00690C2C    call        TObject.Create;TMemoryStream.Create
 00690C31    mov         edi,eax
 00690C33    mov         dword ptr [ebx+8],edi
 00690C36    mov         eax,esi
 00690C38    cdq
 00690C39    push        edx
 00690C3A    push        eax
 00690C3B    mov         eax,edi
 00690C3D    call        TStream.SetSize64
 00690C42    mov         eax,dword ptr [ebx+8]
 00690C45    mov         edx,dword ptr [eax+4]
 00690C48    mov         ecx,esi
 00690C4A    mov         eax,dword ptr [ebp-8]
 00690C4D    call        TStream.ReadBuffer
 00690C52    test        esi,esi
>00690C54    jle         00690D13
 00690C5A    mov         esi,6E9B28;^JpegError
 00690C5F    lea         edi,[ebp-7C]
 00690C62    mov         ecx,1D
 00690C67    rep movs    dword ptr [edi],dword ptr [esi]
 00690C69    lea         eax,[ebp-7C]
 00690C6C    mov         dword ptr [ebp-244],eax
 00690C72    lea         eax,[ebp-244]
 00690C78    mov         ecx,1C8
 00690C7D    mov         edx,3D
 00690C82    call        jpeg_CreateDecompress
 00690C87    xor         eax,eax
 00690C89    push        ebp
 00690C8A    push        690D0C
 00690C8F    push        dword ptr fs:[eax]
 00690C92    mov         dword ptr fs:[eax],esp
 00690C95    push        0
 00690C97    push        0
 00690C99    mov         eax,dword ptr [ebx+8]
 00690C9C    call        TStream.SetPosition
 00690CA1    mov         edx,dword ptr [ebx+8]
 00690CA4    lea         eax,[ebp-244]
 00690CAA    call        jpeg_stdio_src
 00690CAF    lea         eax,[ebp-244]
 00690CB5    or          edx,0FFFFFFFF
 00690CB8    call        jpeg_read_header
 00690CBD    mov         eax,dword ptr [ebp-22C]
 00690CC3    mov         dword ptr [ebx+10],eax
 00690CC6    mov         eax,dword ptr [ebp-228]
 00690CCC    mov         dword ptr [ebx+0C],eax
 00690CCF    cmp         dword ptr [ebp-220],1
 00690CD6    sete        al
 00690CD9    mov         byte ptr [ebx+14],al
 00690CDC    lea         eax,[ebp-244]
 00690CE2    call        jpeg_has_multiple_scans
 00690CE7    cmp         eax,1
 00690CEA    sbb         eax,eax
 00690CEC    inc         eax
 00690CED    mov         edx,dword ptr [ebp-4]
 00690CF0    mov         byte ptr [edx+41],al
 00690CF3    xor         eax,eax
 00690CF5    pop         edx
 00690CF6    pop         ecx
 00690CF7    pop         ecx
 00690CF8    mov         dword ptr fs:[eax],edx
 00690CFB    push        690D13
 00690D00    lea         eax,[ebp-244]
 00690D06    call        jpeg_destroy_decompress
 00690D0B    ret
>00690D0C    jmp         @HandleFinally
>00690D11    jmp         00690D00
 00690D13    mov         eax,dword ptr [ebp-4]
 00690D16    mov         byte ptr [eax+22],1
 00690D1A    mov         edx,dword ptr [ebp-4]
 00690D1D    mov         eax,dword ptr [ebp-4]
 00690D20    mov         ecx,dword ptr [eax]
 00690D22    call        dword ptr [ecx+10]
 00690D25    pop         edi
 00690D26    pop         esi
 00690D27    pop         ebx
 00690D28    mov         esp,ebp
 00690D2A    pop         ebp
 00690D2B    ret
*}
end;

//00690D2C
procedure TJPEGImage.SaveToClipboardFormat(var AFormat:Word; var AData:THandle; var APalette:HPALETTE);
begin
{*
 00690D2C    push        ebp
 00690D2D    mov         ebp,esp
 00690D2F    push        ecx
 00690D30    push        ebx
 00690D31    push        esi
 00690D32    push        edi
 00690D33    mov         dword ptr [ebp-4],ecx
 00690D36    mov         edi,edx
 00690D38    mov         esi,eax
 00690D3A    mov         eax,dword ptr [ebp+8]
 00690D3D    push        eax
 00690D3E    mov         eax,esi
 00690D40    call        TJPEGImage.GetBitmap
 00690D45    mov         ecx,dword ptr [ebp-4]
 00690D48    mov         edx,edi
 00690D4A    mov         ebx,dword ptr [eax]
 00690D4C    call        dword ptr [ebx+60];TBitmap.SaveToClipboardFormat
 00690D4F    pop         edi
 00690D50    pop         esi
 00690D51    pop         ebx
 00690D52    pop         ecx
 00690D53    pop         ebp
 00690D54    ret         4
*}
end;

//00690D58
procedure TJPEGImage.SaveToStream(Stream:TStream);
begin
{*
 00690D58    push        ebx
 00690D59    push        esi
 00690D5A    mov         esi,edx
 00690D5C    mov         ebx,eax
 00690D5E    mov         eax,ebx
 00690D60    call        TJPEGImage.JPEGNeeded
 00690D65    mov         eax,dword ptr [ebx+28]
 00690D68    mov         ebx,dword ptr [eax+8]
 00690D6B    mov         eax,ebx
 00690D6D    call        TStream.GetSize
 00690D72    mov         ecx,eax
 00690D74    mov         edx,dword ptr [ebx+4]
 00690D77    mov         eax,esi
 00690D79    mov         ebx,dword ptr [eax]
 00690D7B    call        dword ptr [ebx+0C]
 00690D7E    pop         esi
 00690D7F    pop         ebx
 00690D80    ret
*}
end;

//00690D84
procedure TJPEGImage.SetHeight(Value:Integer);
begin
{*
 00690D84    push        ebp
 00690D85    mov         ebp,esp
 00690D87    push        0
 00690D89    xor         eax,eax
 00690D8B    push        ebp
 00690D8C    push        690DC2
 00690D91    push        dword ptr fs:[eax]
 00690D94    mov         dword ptr fs:[eax],esp
 00690D97    lea         edx,[ebp-4]
 00690D9A    mov         eax,[006EA2FC];^gvar_00692428
 00690D9F    call        LoadResString
 00690DA4    mov         eax,dword ptr [ebp-4]
 00690DA7    call        InvalidOperation
 00690DAC    xor         eax,eax
 00690DAE    pop         edx
 00690DAF    pop         ecx
 00690DB0    pop         ecx
 00690DB1    mov         dword ptr fs:[eax],edx
 00690DB4    push        690DC9
 00690DB9    lea         eax,[ebp-4]
 00690DBC    call        @LStrClr
 00690DC1    ret
>00690DC2    jmp         @HandleFinally
>00690DC7    jmp         00690DB9
 00690DC9    pop         ecx
 00690DCA    pop         ebp
 00690DCB    ret
*}
end;

//00690DCC
procedure TJPEGImage.SetPalette(Value:HPALETTE);
begin
{*
 00690DCC    push        ebx
 00690DCD    push        esi
 00690DCE    push        edi
 00690DCF    mov         esi,edx
 00690DD1    mov         edi,eax
 00690DD3    cmp         esi,dword ptr [edi+38]
>00690DD6    je          00690E1E
 00690DD8    mov         ebx,dword ptr [edi+2C]
 00690DDB    test        ebx,ebx
>00690DDD    je          00690DEA
 00690DDF    mov         eax,ebx
 00690DE1    mov         edx,dword ptr [eax]
 00690DE3    call        dword ptr [edx+24]
 00690DE6    cmp         esi,eax
>00690DE8    jne         00690DEE
 00690DEA    xor         eax,eax
>00690DEC    jmp         00690DF0
 00690DEE    mov         al,1
 00690DF0    mov         ebx,eax
 00690DF2    test        bl,bl
>00690DF4    je          00690DFD
 00690DF6    mov         eax,edi
 00690DF8    call        TJPEGImage.FreeBitmap
 00690DFD    mov         eax,dword ptr [edi+38]
 00690E00    test        eax,eax
>00690E02    je          00690E0A
 00690E04    push        eax
 00690E05    call        GDI32.DeleteObject
 00690E0A    mov         dword ptr [edi+38],esi
 00690E0D    test        bl,bl
>00690E0F    je          00690E1E
 00690E11    mov         byte ptr [edi+22],1
 00690E15    mov         edx,edi
 00690E17    mov         eax,edi
 00690E19    mov         ecx,dword ptr [eax]
 00690E1B    call        dword ptr [ecx+10]
 00690E1E    pop         edi
 00690E1F    pop         esi
 00690E20    pop         ebx
 00690E21    ret
*}
end;

//00690E24
procedure TJPEGImage.SetWidth(Value:Integer);
begin
{*
 00690E24    push        ebp
 00690E25    mov         ebp,esp
 00690E27    push        0
 00690E29    xor         eax,eax
 00690E2B    push        ebp
 00690E2C    push        690E62
 00690E31    push        dword ptr fs:[eax]
 00690E34    mov         dword ptr fs:[eax],esp
 00690E37    lea         edx,[ebp-4]
 00690E3A    mov         eax,[006EA2FC];^gvar_00692428
 00690E3F    call        LoadResString
 00690E44    mov         eax,dword ptr [ebp-4]
 00690E47    call        InvalidOperation
 00690E4C    xor         eax,eax
 00690E4E    pop         edx
 00690E4F    pop         ecx
 00690E50    pop         ecx
 00690E51    mov         dword ptr fs:[eax],edx
 00690E54    push        690E69
 00690E59    lea         eax,[ebp-4]
 00690E5C    call        @LStrClr
 00690E61    ret
>00690E62    jmp         @HandleFinally
>00690E67    jmp         00690E59
 00690E69    pop         ecx
 00690E6A    pop         ebp
 00690E6B    ret
*}
end;

//00690E6C
procedure TJPEGImage.WriteData(Stream:TStream);
begin
{*
 00690E6C    push        ebx
 00690E6D    push        esi
 00690E6E    push        edi
 00690E6F    push        ecx
 00690E70    mov         esi,edx
 00690E72    mov         ebx,eax
 00690E74    xor         eax,eax
 00690E76    mov         dword ptr [esp],eax
 00690E79    mov         eax,dword ptr [ebx+28]
 00690E7C    mov         edi,dword ptr [eax+8]
 00690E7F    test        edi,edi
>00690E81    je          00690E8D
 00690E83    mov         eax,edi
 00690E85    call        TStream.GetSize
 00690E8A    mov         dword ptr [esp],eax
 00690E8D    mov         edx,esp
 00690E8F    mov         ecx,4
 00690E94    mov         eax,esi
 00690E96    mov         edi,dword ptr [eax]
 00690E98    call        dword ptr [edi+0C]
 00690E9B    cmp         dword ptr [esp],0
>00690E9F    jle         00690EB4
 00690EA1    mov         eax,dword ptr [ebx+28]
 00690EA4    mov         eax,dword ptr [eax+8]
 00690EA7    mov         edx,dword ptr [eax+4]
 00690EAA    mov         ecx,dword ptr [esp]
 00690EAD    mov         eax,esi
 00690EAF    mov         ebx,dword ptr [eax]
 00690EB1    call        dword ptr [ebx+0C]
 00690EB4    pop         edx
 00690EB5    pop         edi
 00690EB6    pop         esi
 00690EB7    pop         ebx
 00690EB8    ret
*}
end;

//00690EBC
procedure InitDefaults;
begin
{*
 00690EBC    push        ebx
 00690EBD    push        esi
 00690EBE    push        0
 00690EC0    call        USER32.GetDC
 00690EC5    mov         ebx,eax
 00690EC7    push        0C
 00690EC9    push        ebx
 00690ECA    call        GDI32.GetDeviceCaps
 00690ECF    mov         esi,eax
 00690ED1    push        0E
 00690ED3    push        ebx
 00690ED4    call        GDI32.GetDeviceCaps
 00690ED9    imul        esi,eax
 00690EDC    cmp         esi,8
>00690EDF    jg          00690EEA
 00690EE1    mov         byte ptr ds:[6E9B23],1;gvar_006E9B23
>00690EE8    jmp         00690EF1
 00690EEA    mov         byte ptr ds:[6E9B23],0;gvar_006E9B23
 00690EF1    push        ebx
 00690EF2    push        0
 00690EF4    call        USER32.ReleaseDC
 00690EF9    pop         esi
 00690EFA    pop         ebx
 00690EFB    ret
*}
end;

//00690EFC
procedure @jpeg_idct_float;
begin
{*
 00690EFC    push        ebp
 00690EFD    mov         ebp,esp
 00690EFF    add         esp,0FFFFFEB0
 00690F05    push        ebx
 00690F06    push        esi
 00690F07    push        edi
 00690F08    mov         edi,8
 00690F0D    mov         eax,dword ptr [eax+13C]
 00690F13    lea         ebx,[ebp-150]
 00690F19    add         eax,80
 00690F1E    mov         dword ptr [ebp-48],eax
 00690F21    mov         eax,ecx
 00690F23    mov         edx,dword ptr [edx+50]
 00690F26    mov         cx,word ptr [eax+10]
 00690F2A    or          cx,word ptr [eax+20]
 00690F2E    or          cx,word ptr [eax+30]
 00690F32    or          cx,word ptr [eax+40]
 00690F36    or          cx,word ptr [eax+50]
 00690F3A    or          cx,word ptr [eax+60]
 00690F3E    or          cx,word ptr [eax+70]
>00690F42    jne         00690F94
 00690F44    fild        word ptr [eax]
 00690F46    add         eax,2
 00690F49    fmul        dword ptr [edx]
 00690F4B    add         edx,4
 00690F4E    fstp        dword ptr [ebp-4C]
 00690F51    mov         ecx,dword ptr [ebp-4C]
 00690F54    mov         dword ptr [ebx],ecx
 00690F56    mov         ecx,dword ptr [ebp-4C]
 00690F59    mov         dword ptr [ebx+20],ecx
 00690F5C    mov         ecx,dword ptr [ebp-4C]
 00690F5F    mov         dword ptr [ebx+40],ecx
 00690F62    mov         ecx,dword ptr [ebp-4C]
 00690F65    mov         dword ptr [ebx+60],ecx
 00690F68    mov         ecx,dword ptr [ebp-4C]
 00690F6B    mov         dword ptr [ebx+80],ecx
 00690F71    mov         ecx,dword ptr [ebp-4C]
 00690F74    mov         dword ptr [ebx+0A0],ecx
 00690F7A    mov         ecx,dword ptr [ebp-4C]
 00690F7D    mov         dword ptr [ebx+0C0],ecx
 00690F83    mov         ecx,dword ptr [ebp-4C]
 00690F86    mov         dword ptr [ebx+0E0],ecx
 00690F8C    add         ebx,4
>00690F8F    jmp         00691117
 00690F94    fild        word ptr [eax]
 00690F96    fmul        dword ptr [edx]
 00690F98    fstp        dword ptr [ebp-4]
 00690F9B    fild        word ptr [eax+20]
 00690F9E    fmul        dword ptr [edx+40]
 00690FA1    fstp        dword ptr [ebp-8]
 00690FA4    fild        word ptr [eax+40]
 00690FA7    fmul        dword ptr [edx+80]
 00690FAD    fstp        dword ptr [ebp-0C]
 00690FB0    fild        word ptr [eax+60]
 00690FB3    fmul        dword ptr [edx+0C0]
 00690FB9    fstp        dword ptr [ebp-10]
 00690FBC    fld         dword ptr [ebp-4]
 00690FBF    fadd        dword ptr [ebp-0C]
 00690FC2    fstp        dword ptr [ebp-24]
 00690FC5    fld         dword ptr [ebp-4]
 00690FC8    fsub        dword ptr [ebp-0C]
 00690FCB    fstp        dword ptr [ebp-28]
 00690FCE    fld         dword ptr [ebp-8]
 00690FD1    fadd        dword ptr [ebp-10]
 00690FD4    fstp        dword ptr [ebp-30]
 00690FD7    fld         dword ptr [ebp-8]
 00690FDA    fsub        dword ptr [ebp-10]
 00690FDD    fmul        dword ptr ds:[69131C];1,41421353816986:Single
 00690FE3    fsub        dword ptr [ebp-30]
 00690FE6    fstp        dword ptr [ebp-2C]
 00690FE9    fld         dword ptr [ebp-24]
 00690FEC    fadd        dword ptr [ebp-30]
 00690FEF    fstp        dword ptr [ebp-4]
 00690FF2    fld         dword ptr [ebp-24]
 00690FF5    fsub        dword ptr [ebp-30]
 00690FF8    fstp        dword ptr [ebp-10]
 00690FFB    fld         dword ptr [ebp-28]
 00690FFE    fadd        dword ptr [ebp-2C]
 00691001    fstp        dword ptr [ebp-8]
 00691004    fld         dword ptr [ebp-28]
 00691007    fsub        dword ptr [ebp-2C]
 0069100A    fstp        dword ptr [ebp-0C]
 0069100D    fild        word ptr [eax+10]
 00691010    fmul        dword ptr [edx+20]
 00691013    fstp        dword ptr [ebp-14]
 00691016    fild        word ptr [eax+30]
 00691019    fmul        dword ptr [edx+60]
 0069101C    fstp        dword ptr [ebp-18]
 0069101F    fild        word ptr [eax+50]
 00691022    fmul        dword ptr [edx+0A0]
 00691028    fstp        dword ptr [ebp-1C]
 0069102B    fild        word ptr [eax+70]
 0069102E    fmul        dword ptr [edx+0E0]
 00691034    fstp        dword ptr [ebp-20]
 00691037    fld         dword ptr [ebp-1C]
 0069103A    fadd        dword ptr [ebp-18]
 0069103D    fstp        dword ptr [ebp-44]
 00691040    fld         dword ptr [ebp-1C]
 00691043    fsub        dword ptr [ebp-18]
 00691046    fstp        dword ptr [ebp-38]
 00691049    fld         dword ptr [ebp-14]
 0069104C    fadd        dword ptr [ebp-20]
 0069104F    fstp        dword ptr [ebp-3C]
 00691052    fld         dword ptr [ebp-14]
 00691055    fsub        dword ptr [ebp-20]
 00691058    fstp        dword ptr [ebp-40]
 0069105B    fld         dword ptr [ebp-3C]
 0069105E    fadd        dword ptr [ebp-44]
 00691061    fstp        dword ptr [ebp-20]
 00691064    fld         dword ptr [ebp-3C]
 00691067    fsub        dword ptr [ebp-44]
 0069106A    fmul        dword ptr ds:[69131C];1,41421353816986:Single
 00691070    fstp        dword ptr [ebp-28]
 00691073    fld         dword ptr [ebp-38]
 00691076    fadd        dword ptr [ebp-40]
 00691079    fmul        dword ptr ds:[691320];1,84775900840759:Single
 0069107F    fstp        dword ptr [ebp-34]
 00691082    fld         dword ptr ds:[691324];1,08239221572876:Single
 00691088    fmul        dword ptr [ebp-40]
 0069108B    fsub        dword ptr [ebp-34]
 0069108E    fstp        dword ptr [ebp-24]
 00691091    fld         dword ptr ds:[691328];-2,613126039505:Single
 00691097    fmul        dword ptr [ebp-38]
 0069109A    add         eax,2
 0069109D    add         edx,4
 006910A0    fadd        dword ptr [ebp-34]
 006910A3    fstp        dword ptr [ebp-2C]
 006910A6    fld         dword ptr [ebp-2C]
 006910A9    fsub        dword ptr [ebp-20]
 006910AC    fstp        dword ptr [ebp-1C]
 006910AF    fld         dword ptr [ebp-28]
 006910B2    fsub        dword ptr [ebp-1C]
 006910B5    fstp        dword ptr [ebp-18]
 006910B8    fld         dword ptr [ebp-24]
 006910BB    fadd        dword ptr [ebp-18]
 006910BE    fstp        dword ptr [ebp-14]
 006910C1    fld         dword ptr [ebp-4]
 006910C4    fadd        dword ptr [ebp-20]
 006910C7    fstp        dword ptr [ebx]
 006910C9    fld         dword ptr [ebp-4]
 006910CC    fsub        dword ptr [ebp-20]
 006910CF    fstp        dword ptr [ebx+0E0]
 006910D5    fld         dword ptr [ebp-8]
 006910D8    fadd        dword ptr [ebp-1C]
 006910DB    fstp        dword ptr [ebx+20]
 006910DE    fld         dword ptr [ebp-8]
 006910E1    fsub        dword ptr [ebp-1C]
 006910E4    fstp        dword ptr [ebx+0C0]
 006910EA    fld         dword ptr [ebp-0C]
 006910ED    fadd        dword ptr [ebp-18]
 006910F0    fstp        dword ptr [ebx+40]
 006910F3    fld         dword ptr [ebp-0C]
 006910F6    fsub        dword ptr [ebp-18]
 006910F9    fstp        dword ptr [ebx+0A0]
 006910FF    fld         dword ptr [ebp-10]
 00691102    fadd        dword ptr [ebp-14]
 00691105    fstp        dword ptr [ebx+80]
 0069110B    fld         dword ptr [ebp-10]
 0069110E    fsub        dword ptr [ebp-14]
 00691111    fstp        dword ptr [ebx+60]
 00691114    add         ebx,4
 00691117    dec         edi
 00691118    test        edi,edi
>0069111A    jg          00690F26
 00691120    mov         eax,dword ptr [ebp+0C]
 00691123    lea         ebx,[ebp-150]
 00691129    mov         edx,eax
 0069112B    xor         edi,edi
 0069112D    mov         dword ptr [ebp-50],edx
 00691130    mov         ecx,dword ptr [ebp-50]
 00691133    fld         dword ptr [ebx]
 00691135    fadd        dword ptr [ebx+10]
 00691138    mov         esi,dword ptr [ecx]
 0069113A    add         esi,dword ptr [ebp+8]
 0069113D    fstp        dword ptr [ebp-24]
 00691140    fld         dword ptr [ebx]
 00691142    fsub        dword ptr [ebx+10]
 00691145    fstp        dword ptr [ebp-28]
 00691148    fld         dword ptr [ebx+8]
 0069114B    fadd        dword ptr [ebx+18]
 0069114E    fstp        dword ptr [ebp-30]
 00691151    fld         dword ptr [ebx+8]
 00691154    fsub        dword ptr [ebx+18]
 00691157    fmul        dword ptr ds:[69131C];1,41421353816986:Single
 0069115D    fsub        dword ptr [ebp-30]
 00691160    fstp        dword ptr [ebp-2C]
 00691163    fld         dword ptr [ebp-24]
 00691166    fadd        dword ptr [ebp-30]
 00691169    fstp        dword ptr [ebp-4]
 0069116C    fld         dword ptr [ebp-24]
 0069116F    fsub        dword ptr [ebp-30]
 00691172    fstp        dword ptr [ebp-10]
 00691175    fld         dword ptr [ebp-28]
 00691178    fadd        dword ptr [ebp-2C]
 0069117B    fstp        dword ptr [ebp-8]
 0069117E    fld         dword ptr [ebp-28]
 00691181    fsub        dword ptr [ebp-2C]
 00691184    fstp        dword ptr [ebp-0C]
 00691187    fld         dword ptr [ebx+14]
 0069118A    fadd        dword ptr [ebx+0C]
 0069118D    fstp        dword ptr [ebp-44]
 00691190    fld         dword ptr [ebx+14]
 00691193    fsub        dword ptr [ebx+0C]
 00691196    fstp        dword ptr [ebp-38]
 00691199    fld         dword ptr [ebx+4]
 0069119C    fadd        dword ptr [ebx+1C]
 0069119F    fstp        dword ptr [ebp-3C]
 006911A2    fld         dword ptr [ebx+4]
 006911A5    fsub        dword ptr [ebx+1C]
 006911A8    fstp        dword ptr [ebp-40]
 006911AB    fld         dword ptr [ebp-3C]
 006911AE    fadd        dword ptr [ebp-44]
 006911B1    fstp        dword ptr [ebp-20]
 006911B4    fld         dword ptr [ebp-3C]
 006911B7    fsub        dword ptr [ebp-44]
 006911BA    fmul        dword ptr ds:[69131C];1,41421353816986:Single
 006911C0    fstp        dword ptr [ebp-28]
 006911C3    fld         dword ptr [ebp-38]
 006911C6    fadd        dword ptr [ebp-40]
 006911C9    fmul        dword ptr ds:[691320];1,84775900840759:Single
 006911CF    fstp        dword ptr [ebp-34]
 006911D2    fld         dword ptr ds:[691324];1,08239221572876:Single
 006911D8    fmul        dword ptr [ebp-40]
 006911DB    fsub        dword ptr [ebp-34]
 006911DE    fstp        dword ptr [ebp-24]
 006911E1    fld         dword ptr ds:[691328];-2,613126039505:Single
 006911E7    fmul        dword ptr [ebp-38]
 006911EA    fadd        dword ptr [ebp-34]
 006911ED    fstp        dword ptr [ebp-2C]
 006911F0    fld         dword ptr [ebp-2C]
 006911F3    fsub        dword ptr [ebp-20]
 006911F6    fstp        dword ptr [ebp-1C]
 006911F9    fld         dword ptr [ebp-28]
 006911FC    fsub        dword ptr [ebp-1C]
 006911FF    fstp        dword ptr [ebp-18]
 00691202    fld         dword ptr [ebp-24]
 00691205    fadd        dword ptr [ebp-18]
 00691208    fstp        dword ptr [ebp-14]
 0069120B    fld         dword ptr [ebp-4]
 0069120E    fadd        dword ptr [ebp-20]
 00691211    call        __ftol
 00691216    add         eax,4
 00691219    sar         eax,3
 0069121C    and         eax,3FF
 00691221    mov         edx,dword ptr [ebp-48]
 00691224    mov         cl,byte ptr [edx+eax]
 00691227    mov         byte ptr [esi],cl
 00691229    fld         dword ptr [ebp-4]
 0069122C    fsub        dword ptr [ebp-20]
 0069122F    call        __ftol
 00691234    add         eax,4
 00691237    sar         eax,3
 0069123A    and         eax,3FF
 0069123F    mov         edx,dword ptr [ebp-48]
 00691242    mov         cl,byte ptr [edx+eax]
 00691245    mov         byte ptr [esi+7],cl
 00691248    fld         dword ptr [ebp-8]
 0069124B    fadd        dword ptr [ebp-1C]
 0069124E    call        __ftol
 00691253    add         eax,4
 00691256    sar         eax,3
 00691259    and         eax,3FF
 0069125E    mov         edx,dword ptr [ebp-48]
 00691261    mov         cl,byte ptr [edx+eax]
 00691264    mov         byte ptr [esi+1],cl
 00691267    fld         dword ptr [ebp-8]
 0069126A    fsub        dword ptr [ebp-1C]
 0069126D    call        __ftol
 00691272    add         eax,4
 00691275    sar         eax,3
 00691278    and         eax,3FF
 0069127D    mov         edx,dword ptr [ebp-48]
 00691280    mov         cl,byte ptr [edx+eax]
 00691283    mov         byte ptr [esi+6],cl
 00691286    fld         dword ptr [ebp-0C]
 00691289    fadd        dword ptr [ebp-18]
 0069128C    call        __ftol
 00691291    add         eax,4
 00691294    sar         eax,3
 00691297    and         eax,3FF
 0069129C    mov         edx,dword ptr [ebp-48]
 0069129F    mov         cl,byte ptr [edx+eax]
 006912A2    mov         byte ptr [esi+2],cl
 006912A5    fld         dword ptr [ebp-0C]
 006912A8    fsub        dword ptr [ebp-18]
 006912AB    call        __ftol
 006912B0    add         eax,4
 006912B3    sar         eax,3
 006912B6    and         eax,3FF
 006912BB    mov         edx,dword ptr [ebp-48]
 006912BE    mov         cl,byte ptr [edx+eax]
 006912C1    mov         byte ptr [esi+5],cl
 006912C4    fld         dword ptr [ebp-10]
 006912C7    fadd        dword ptr [ebp-14]
 006912CA    call        __ftol
 006912CF    add         eax,4
 006912D2    sar         eax,3
 006912D5    and         eax,3FF
 006912DA    mov         edx,dword ptr [ebp-48]
 006912DD    mov         cl,byte ptr [edx+eax]
 006912E0    mov         byte ptr [esi+4],cl
 006912E3    fld         dword ptr [ebp-10]
 006912E6    fsub        dword ptr [ebp-14]
 006912E9    call        __ftol
 006912EE    add         eax,4
 006912F1    mov         edx,dword ptr [ebp-48]
 006912F4    sar         eax,3
 006912F7    add         ebx,20
 006912FA    and         eax,3FF
 006912FF    inc         edi
 00691300    mov         cl,byte ptr [edx+eax]
 00691303    mov         byte ptr [esi+3],cl
 00691306    add         dword ptr [ebp-50],4
 0069130A    cmp         edi,8
>0069130D    jl          00691130
 00691313    pop         edi
 00691314    pop         esi
 00691315    pop         ebx
 00691316    mov         esp,ebp
 00691318    pop         ebp
 00691319    ret         8
*}
end;

//0069132C
procedure @jpeg_idct_ifast;
begin
{*
 0069132C    push        ebp
 0069132D    mov         ebp,esp
 0069132F    add         esp,0FFFFFEC0
 00691335    push        ebx
 00691336    push        esi
 00691337    push        edi
 00691338    mov         dword ptr [ebp-0C],ecx
 0069133B    mov         dword ptr [ebp-8],edx
 0069133E    mov         dword ptr [ebp-4],eax
 00691341    mov         eax,dword ptr [ebp-4]
 00691344    mov         edx,dword ptr [eax+13C]
 0069134A    add         edx,80
 00691350    mov         dword ptr [ebp-38],edx
 00691353    mov         edx,dword ptr [ebp-0C]
 00691356    mov         eax,dword ptr [ebp-8]
 00691359    mov         ecx,dword ptr [eax+50]
 0069135C    mov         dword ptr [ebp-34],ecx
 0069135F    lea         eax,[ebp-140]
 00691365    mov         dword ptr [ebp-3C],8
 0069136C    mov         cx,word ptr [edx+10]
 00691370    or          cx,word ptr [edx+20]
 00691374    or          cx,word ptr [edx+30]
 00691378    or          cx,word ptr [edx+40]
 0069137C    or          cx,word ptr [edx+50]
 00691380    or          cx,word ptr [edx+60]
 00691384    or          cx,word ptr [edx+70]
>00691388    jne         006913C5
 0069138A    movsx       ecx,word ptr [edx]
 0069138D    mov         ebx,dword ptr [ebp-34]
 00691390    add         edx,2
 00691393    imul        ecx,dword ptr [ebx]
 00691396    mov         dword ptr [eax],ecx
 00691398    mov         dword ptr [eax+20],ecx
 0069139B    mov         dword ptr [eax+40],ecx
 0069139E    mov         dword ptr [eax+60],ecx
 006913A1    mov         dword ptr [eax+80],ecx
 006913A7    mov         dword ptr [eax+0A0],ecx
 006913AD    mov         dword ptr [eax+0C0],ecx
 006913B3    mov         dword ptr [eax+0E0],ecx
 006913B9    add         dword ptr [ebp-34],4
 006913BD    add         eax,4
>006913C0    jmp         0069153E
 006913C5    movsx       ecx,word ptr [edx]
 006913C8    mov         ebx,dword ptr [ebp-34]
 006913CB    imul        ecx,dword ptr [ebx]
 006913CE    mov         dword ptr [ebp-10],ecx
 006913D1    movsx       ecx,word ptr [edx+20]
 006913D5    mov         ebx,dword ptr [ebp-34]
 006913D8    imul        ecx,dword ptr [ebx+40]
 006913DC    mov         dword ptr [ebp-14],ecx
 006913DF    movsx       ecx,word ptr [edx+40]
 006913E3    mov         ebx,dword ptr [ebp-34]
 006913E6    imul        ecx,dword ptr [ebx+80]
 006913ED    mov         dword ptr [ebp-18],ecx
 006913F0    movsx       ecx,word ptr [edx+60]
 006913F4    mov         ebx,dword ptr [ebp-34]
 006913F7    imul        ecx,dword ptr [ebx+0C0]
 006913FE    mov         dword ptr [ebp-1C],ecx
 00691401    mov         ecx,dword ptr [ebp-10]
 00691404    mov         ebx,dword ptr [ebp-10]
 00691407    mov         esi,dword ptr [ebp-14]
 0069140A    add         ebx,dword ptr [ebp-18]
 0069140D    sub         ecx,dword ptr [ebp-18]
 00691410    add         esi,dword ptr [ebp-1C]
 00691413    mov         dword ptr [ebp-28],esi
 00691416    mov         esi,dword ptr [ebp-14]
 00691419    mov         edi,dword ptr [ebp-28]
 0069141C    sub         esi,dword ptr [ebp-1C]
 0069141F    imul        esi,esi,16A
 00691425    sar         esi,8
 00691428    add         edi,ebx
 0069142A    sub         esi,dword ptr [ebp-28]
 0069142D    mov         dword ptr [ebp-10],edi
 00691430    sub         ebx,dword ptr [ebp-28]
 00691433    mov         dword ptr [ebp-1C],ebx
 00691436    lea         ebx,[esi+ecx]
 00691439    sub         ecx,esi
 0069143B    mov         dword ptr [ebp-14],ebx
 0069143E    mov         dword ptr [ebp-18],ecx
 00691441    movsx       ecx,word ptr [edx+10]
 00691445    mov         ebx,dword ptr [ebp-34]
 00691448    imul        ecx,dword ptr [ebx+20]
 0069144C    mov         dword ptr [ebp-20],ecx
 0069144F    movsx       ecx,word ptr [edx+30]
 00691453    mov         ebx,dword ptr [ebp-34]
 00691456    mov         edi,dword ptr [ebp-34]
 00691459    movsx       esi,word ptr [edx+50]
 0069145D    imul        ecx,dword ptr [ebx+60]
 00691461    mov         ebx,dword ptr [ebp-34]
 00691464    imul        esi,dword ptr [ebx+0A0]
 0069146B    movsx       ebx,word ptr [edx+70]
 0069146F    imul        ebx,dword ptr [edi+0E0]
 00691476    mov         dword ptr [ebp-24],ebx
 00691479    lea         ebx,[ecx+esi]
 0069147C    sub         esi,ecx
 0069147E    mov         ecx,dword ptr [ebp-20]
 00691481    add         ecx,dword ptr [ebp-24]
 00691484    mov         edi,dword ptr [ebp-20]
 00691487    sub         edi,dword ptr [ebp-24]
 0069148A    add         edx,2
 0069148D    mov         dword ptr [ebp-30],edi
 00691490    lea         edi,[ebx+ecx]
 00691493    sub         ecx,ebx
 00691495    mov         dword ptr [ebp-24],edi
 00691498    mov         ebx,dword ptr [ebp-30]
 0069149B    imul        ecx,ecx,16A
 006914A1    add         ebx,esi
 006914A3    imul        esi,esi,0FFFFFD63
 006914A9    mov         edi,ebx
 006914AB    shl         ebx,4
 006914AE    sub         ebx,edi
 006914B0    shl         ebx,2
 006914B3    sub         ebx,edi
 006914B5    sar         esi,8
 006914B8    sar         ecx,8
 006914BB    lea         ebx,[edi+ebx*8]
 006914BE    sar         ebx,8
 006914C1    mov         dword ptr [ebp-2C],ebx
 006914C4    add         esi,dword ptr [ebp-2C]
 006914C7    mov         ebx,dword ptr [ebp-30]
 006914CA    mov         edi,ebx
 006914CC    sub         esi,dword ptr [ebp-24]
 006914CF    shl         ebx,4
 006914D2    sub         ecx,esi
 006914D4    add         ebx,edi
 006914D6    lea         ebx,[edi+ebx*4]
 006914D9    lea         ebx,[edi+ebx*4]
 006914DC    sar         ebx,8
 006914DF    sub         ebx,dword ptr [ebp-2C]
 006914E2    lea         ebx,[ecx+ebx]
 006914E5    mov         dword ptr [ebp-20],ebx
 006914E8    mov         ebx,dword ptr [ebp-10]
 006914EB    add         ebx,dword ptr [ebp-24]
 006914EE    mov         dword ptr [eax],ebx
 006914F0    mov         ebx,dword ptr [ebp-10]
 006914F3    sub         ebx,dword ptr [ebp-24]
 006914F6    mov         dword ptr [eax+0E0],ebx
 006914FC    mov         ebx,dword ptr [ebp-14]
 006914FF    add         ebx,esi
 00691501    mov         dword ptr [eax+20],ebx
 00691504    mov         ebx,dword ptr [ebp-14]
 00691507    sub         ebx,esi
 00691509    mov         dword ptr [eax+0C0],ebx
 0069150F    mov         ebx,dword ptr [ebp-18]
 00691512    add         ebx,ecx
 00691514    mov         dword ptr [eax+40],ebx
 00691517    mov         ebx,dword ptr [ebp-18]
 0069151A    sub         ebx,ecx
 0069151C    mov         dword ptr [eax+0A0],ebx
 00691522    mov         ecx,dword ptr [ebp-1C]
 00691525    add         ecx,dword ptr [ebp-20]
 00691528    mov         dword ptr [eax+80],ecx
 0069152E    mov         ecx,dword ptr [ebp-1C]
 00691531    sub         ecx,dword ptr [ebp-20]
 00691534    mov         dword ptr [eax+60],ecx
 00691537    add         dword ptr [ebp-34],4
 0069153B    add         eax,4
 0069153E    dec         dword ptr [ebp-3C]
 00691541    cmp         dword ptr [ebp-3C],0
>00691545    jg          0069136C
 0069154B    lea         eax,[ebp-140]
 00691551    xor         edx,edx
 00691553    mov         dword ptr [ebp-3C],edx
 00691556    mov         edx,dword ptr [ebp+0C]
 00691559    mov         ecx,edx
 0069155B    mov         dword ptr [ebp-40],ecx
 0069155E    mov         ecx,dword ptr [eax+4]
 00691561    mov         edx,dword ptr [ebp-40]
 00691564    or          ecx,dword ptr [eax+8]
 00691567    or          ecx,dword ptr [eax+0C]
 0069156A    mov         edx,dword ptr [edx]
 0069156C    or          ecx,dword ptr [eax+10]
 0069156F    add         edx,dword ptr [ebp+8]
 00691572    or          ecx,dword ptr [eax+14]
 00691575    or          ecx,dword ptr [eax+18]
 00691578    or          ecx,dword ptr [eax+1C]
>0069157B    jne         006915AD
 0069157D    mov         ecx,dword ptr [eax]
 0069157F    sar         ecx,5
 00691582    and         ecx,3FF
 00691588    mov         ebx,dword ptr [ebp-38]
 0069158B    mov         cl,byte ptr [ebx+ecx]
 0069158E    mov         byte ptr [edx],cl
 00691590    mov         byte ptr [edx+1],cl
 00691593    mov         byte ptr [edx+2],cl
 00691596    mov         byte ptr [edx+3],cl
 00691599    mov         byte ptr [edx+4],cl
 0069159C    mov         byte ptr [edx+5],cl
 0069159F    mov         byte ptr [edx+6],cl
 006915A2    mov         byte ptr [edx+7],cl
 006915A5    add         eax,20
>006915A8    jmp         0069171D
 006915AD    mov         ecx,dword ptr [eax]
 006915AF    mov         esi,dword ptr [eax+10]
 006915B2    mov         ebx,ecx
 006915B4    sub         ecx,esi
 006915B6    add         ebx,esi
 006915B8    mov         esi,dword ptr [eax+8]
 006915BB    mov         edi,esi
 006915BD    add         edi,dword ptr [eax+18]
 006915C0    mov         dword ptr [ebp-28],edi
 006915C3    sub         esi,dword ptr [eax+18]
 006915C6    imul        esi,esi,16A
 006915CC    sar         esi,8
 006915CF    mov         edi,dword ptr [ebp-28]
 006915D2    sub         esi,dword ptr [ebp-28]
 006915D5    add         edi,ebx
 006915D7    mov         dword ptr [ebp-10],edi
 006915DA    sub         ebx,dword ptr [ebp-28]
 006915DD    mov         dword ptr [ebp-1C],ebx
 006915E0    lea         ebx,[esi+ecx]
 006915E3    sub         ecx,esi
 006915E5    mov         dword ptr [ebp-14],ebx
 006915E8    mov         dword ptr [ebp-18],ecx
 006915EB    mov         ecx,dword ptr [eax+14]
 006915EE    mov         edi,dword ptr [eax+4]
 006915F1    mov         ebx,ecx
 006915F3    mov         esi,ecx
 006915F5    mov         ecx,dword ptr [eax+4]
 006915F8    add         ecx,dword ptr [eax+1C]
 006915FB    add         ebx,dword ptr [eax+0C]
 006915FE    sub         esi,dword ptr [eax+0C]
 00691601    sub         edi,dword ptr [eax+1C]
 00691604    mov         dword ptr [ebp-30],edi
 00691607    lea         edi,[ebx+ecx]
 0069160A    sub         ecx,ebx
 0069160C    mov         dword ptr [ebp-24],edi
 0069160F    mov         ebx,dword ptr [ebp-30]
 00691612    imul        ecx,ecx,16A
 00691618    add         ebx,esi
 0069161A    imul        esi,esi,0FFFFFD63
 00691620    mov         edi,ebx
 00691622    shl         ebx,4
 00691625    sub         ebx,edi
 00691627    shl         ebx,2
 0069162A    sub         ebx,edi
 0069162C    sar         esi,8
 0069162F    sar         ecx,8
 00691632    lea         ebx,[edi+ebx*8]
 00691635    sar         ebx,8
 00691638    mov         dword ptr [ebp-2C],ebx
 0069163B    add         esi,dword ptr [ebp-2C]
 0069163E    mov         ebx,dword ptr [ebp-30]
 00691641    mov         edi,ebx
 00691643    sub         esi,dword ptr [ebp-24]
 00691646    shl         ebx,4
 00691649    sub         ecx,esi
 0069164B    add         ebx,edi
 0069164D    lea         ebx,[edi+ebx*4]
 00691650    lea         ebx,[edi+ebx*4]
 00691653    sar         ebx,8
 00691656    sub         ebx,dword ptr [ebp-2C]
 00691659    lea         ebx,[ecx+ebx]
 0069165C    mov         dword ptr [ebp-20],ebx
 0069165F    mov         ebx,dword ptr [ebp-10]
 00691662    mov         edi,dword ptr [ebp-38]
 00691665    add         ebx,dword ptr [ebp-24]
 00691668    sar         ebx,5
 0069166B    and         ebx,3FF
 00691671    mov         bl,byte ptr [edi+ebx]
 00691674    mov         byte ptr [edx],bl
 00691676    mov         ebx,dword ptr [ebp-10]
 00691679    mov         edi,dword ptr [ebp-38]
 0069167C    sub         ebx,dword ptr [ebp-24]
 0069167F    sar         ebx,5
 00691682    and         ebx,3FF
 00691688    mov         bl,byte ptr [edi+ebx]
 0069168B    mov         byte ptr [edx+7],bl
 0069168E    mov         ebx,dword ptr [ebp-14]
 00691691    mov         edi,dword ptr [ebp-38]
 00691694    add         ebx,esi
 00691696    sar         ebx,5
 00691699    and         ebx,3FF
 0069169F    mov         bl,byte ptr [edi+ebx]
 006916A2    mov         byte ptr [edx+1],bl
 006916A5    mov         ebx,dword ptr [ebp-14]
 006916A8    sub         ebx,esi
 006916AA    mov         esi,dword ptr [ebp-38]
 006916AD    sar         ebx,5
 006916B0    and         ebx,3FF
 006916B6    mov         bl,byte ptr [esi+ebx]
 006916B9    mov         byte ptr [edx+6],bl
 006916BC    mov         ebx,dword ptr [ebp-18]
 006916BF    mov         esi,dword ptr [ebp-38]
 006916C2    add         ebx,ecx
 006916C4    sar         ebx,5
 006916C7    and         ebx,3FF
 006916CD    mov         bl,byte ptr [esi+ebx]
 006916D0    mov         byte ptr [edx+2],bl
 006916D3    mov         ebx,dword ptr [ebp-18]
 006916D6    sub         ebx,ecx
 006916D8    mov         ecx,dword ptr [ebp-38]
 006916DB    sar         ebx,5
 006916DE    and         ebx,3FF
 006916E4    mov         cl,byte ptr [ecx+ebx]
 006916E7    mov         byte ptr [edx+5],cl
 006916EA    mov         ecx,dword ptr [ebp-1C]
 006916ED    mov         ebx,dword ptr [ebp-38]
 006916F0    add         ecx,dword ptr [ebp-20]
 006916F3    sar         ecx,5
 006916F6    and         ecx,3FF
 006916FC    mov         cl,byte ptr [ebx+ecx]
 006916FF    mov         byte ptr [edx+4],cl
 00691702    mov         ecx,dword ptr [ebp-1C]
 00691705    mov         ebx,dword ptr [ebp-38]
 00691708    sub         ecx,dword ptr [ebp-20]
 0069170B    sar         ecx,5
 0069170E    and         ecx,3FF
 00691714    add         eax,20
 00691717    mov         cl,byte ptr [ebx+ecx]
 0069171A    mov         byte ptr [edx+3],cl
 0069171D    inc         dword ptr [ebp-3C]
 00691720    add         dword ptr [ebp-40],4
 00691724    cmp         dword ptr [ebp-3C],8
>00691728    jl          0069155E
 0069172E    pop         edi
 0069172F    pop         esi
 00691730    pop         ebx
 00691731    mov         esp,ebp
 00691733    pop         ebp
 00691734    ret         8
*}
end;

//00691738
procedure @jinit_compress_master;
begin
{*
 00691738    push        ebx
 00691739    mov         ebx,eax
 0069173B    xor         edx,edx
 0069173D    mov         eax,ebx
 0069173F    call        @jinit_c_master_control
 00691744    cmp         dword ptr [ebx+0A8],0
>0069174B    jne         00691764
 0069174D    mov         eax,ebx
 0069174F    call        @jinit_color_converter
 00691754    mov         eax,ebx
 00691756    call        @jinit_downsampler
 0069175B    xor         edx,edx
 0069175D    mov         eax,ebx
 0069175F    call        @jinit_c_prep_controller
 00691764    mov         eax,ebx
 00691766    call        @jinit_forward_dct
 0069176B    cmp         dword ptr [ebx+0AC],0
>00691772    je          00691785
 00691774    mov         edx,dword ptr [ebx]
 00691776    mov         eax,ebx
 00691778    mov         dword ptr [edx+14],1
 0069177F    mov         edx,dword ptr [eax]
 00691781    call        dword ptr [edx]
>00691783    jmp         0069179E
 00691785    cmp         dword ptr [ebx+0DC],0
>0069178C    je          00691797
 0069178E    mov         eax,ebx
 00691790    call        @jinit_phuff_encoder
>00691795    jmp         0069179E
 00691797    mov         eax,ebx
 00691799    call        @jinit_huff_encoder
 0069179E    cmp         dword ptr [ebx+0A0],1
>006917A5    jg          006917B4
 006917A7    cmp         dword ptr [ebx+0B0],0
>006917AE    jne         006917B4
 006917B0    xor         edx,edx
>006917B2    jmp         006917B9
 006917B4    mov         edx,1
 006917B9    mov         eax,ebx
 006917BB    call        @jinit_c_coef_controller
 006917C0    xor         edx,edx
 006917C2    mov         eax,ebx
 006917C4    call        @jinit_c_main_controller
 006917C9    mov         eax,ebx
 006917CB    call        @jinit_marker_writer
 006917D0    mov         eax,ebx
 006917D2    mov         edx,dword ptr [eax+4]
 006917D5    call        dword ptr [edx+18]
 006917D8    mov         eax,ebx
 006917DA    mov         edx,dword ptr [eax+154]
 006917E0    call        dword ptr [edx+4]
 006917E3    pop         ebx
 006917E4    ret
*}
end;

//006917E8
procedure @jpeg_fdct_ifast;
begin
{*
 006917E8    push        ebx
 006917E9    push        esi
 006917EA    push        edi
 006917EB    push        ebp
 006917EC    add         esp,0FFFFFFE8
 006917EF    mov         dword ptr [esp],eax
 006917F2    mov         eax,dword ptr [esp]
 006917F5    mov         dword ptr [esp+14],7
 006917FD    mov         edx,dword ptr [eax]
 006917FF    mov         ebx,dword ptr [eax+1C]
 00691802    mov         ecx,edx
 00691804    mov         esi,edx
 00691806    mov         edx,dword ptr [eax+4]
 00691809    sub         esi,ebx
 0069180B    add         ecx,ebx
 0069180D    mov         edi,dword ptr [eax+18]
 00691810    mov         ebx,edx
 00691812    sub         edx,edi
 00691814    mov         dword ptr [esp+10],edx
 00691818    add         ebx,edi
 0069181A    mov         edx,dword ptr [eax+8]
 0069181D    mov         edi,dword ptr [eax+14]
 00691820    mov         ebp,edx
 00691822    sub         edx,edi
 00691824    add         ebp,edi
 00691826    mov         dword ptr [esp+4],ebp
 0069182A    mov         dword ptr [esp+0C],edx
 0069182E    mov         edx,dword ptr [eax+0C]
 00691831    mov         edi,edx
 00691833    add         edi,dword ptr [eax+10]
 00691836    sub         edx,dword ptr [eax+10]
 00691839    mov         dword ptr [esp+8],edx
 0069183D    lea         edx,[edi+ecx]
 00691840    sub         ecx,edi
 00691842    mov         edi,ecx
 00691844    mov         ecx,dword ptr [esp+4]
 00691848    add         ecx,ebx
 0069184A    sub         ebx,dword ptr [esp+4]
 0069184E    lea         ebp,[ecx+edx]
 00691851    sub         edx,ecx
 00691853    mov         dword ptr [eax],ebp
 00691855    mov         dword ptr [eax+10],edx
 00691858    lea         edx,[edi+ebx]
 0069185B    mov         ecx,edx
 0069185D    lea         edx,[ecx+edx*4]
 00691860    lea         edx,[ecx+edx*2]
 00691863    lea         edx,[ecx+edx*4]
 00691866    lea         edx,[ecx+edx*4]
 00691869    sar         edx,8
 0069186C    lea         ecx,[edx+edi]
 0069186F    sub         edi,edx
 00691871    mov         dword ptr [eax+8],ecx
 00691874    mov         dword ptr [eax+18],edi
 00691877    mov         edx,dword ptr [esp+8]
 0069187B    mov         ebx,dword ptr [esp+10]
 0069187F    add         edx,dword ptr [esp+0C]
 00691883    add         ebx,esi
 00691885    mov         edi,edx
 00691887    mov         ecx,dword ptr [esp+0C]
 0069188B    sub         edi,ebx
 0069188D    add         ecx,dword ptr [esp+10]
 00691891    mov         ebp,edi
 00691893    lea         edi,[ebp+edi*2]
 00691897    shl         edi,4
 0069189A    add         edi,ebp
 0069189C    mov         ebp,edx
 0069189E    shl         edx,4
 006918A1    add         edi,edi
 006918A3    add         edx,ebp
 006918A5    sar         edi,8
 006918A8    lea         edx,[ebp+edx*4]
 006918AC    lea         edx,[ebp+edx*2]
 006918B0    mov         ebp,ebx
 006918B2    sar         edx,8
 006918B5    add         edx,edi
 006918B7    lea         ebx,[ebp+ebx*4]
 006918BB    lea         ebx,[ebp+ebx*4]
 006918BF    shl         ebx,3
 006918C2    sub         ebx,ebp
 006918C4    add         ebx,ebx
 006918C6    sar         ebx,8
 006918C9    add         edi,ebx
 006918CB    mov         ebx,edi
 006918CD    mov         edi,ecx
 006918CF    lea         ecx,[edi+ecx*4]
 006918D2    lea         ecx,[edi+ecx*2]
 006918D5    lea         ecx,[edi+ecx*4]
 006918D8    lea         ecx,[edi+ecx*4]
 006918DB    sar         ecx,8
 006918DE    lea         edi,[ecx+esi]
 006918E1    sub         esi,ecx
 006918E3    mov         ecx,esi
 006918E5    lea         esi,[edx+ecx]
 006918E8    sub         ecx,edx
 006918EA    mov         dword ptr [eax+14],esi
 006918ED    mov         dword ptr [eax+0C],ecx
 006918F0    lea         edx,[ebx+edi]
 006918F3    sub         edi,ebx
 006918F5    mov         dword ptr [eax+4],edx
 006918F8    mov         dword ptr [eax+1C],edi
 006918FB    dec         dword ptr [esp+14]
 006918FF    add         eax,20
 00691902    cmp         dword ptr [esp+14],0
>00691907    jge         006917FD
 0069190D    mov         eax,dword ptr [esp]
 00691910    mov         dword ptr [esp+14],7
 00691918    mov         edx,dword ptr [eax]
 0069191A    mov         ebx,dword ptr [eax+0E0]
 00691920    mov         ecx,edx
 00691922    mov         esi,edx
 00691924    sub         esi,ebx
 00691926    add         ecx,ebx
 00691928    mov         ebx,dword ptr [eax+20]
 0069192B    mov         edx,dword ptr [eax+20]
 0069192E    add         ebx,dword ptr [eax+0C0]
 00691934    sub         edx,dword ptr [eax+0C0]
 0069193A    mov         dword ptr [esp+10],edx
 0069193E    mov         edx,dword ptr [eax+40]
 00691941    add         edx,dword ptr [eax+0A0]
 00691947    mov         dword ptr [esp+4],edx
 0069194B    mov         edx,dword ptr [eax+40]
 0069194E    sub         edx,dword ptr [eax+0A0]
 00691954    mov         dword ptr [esp+0C],edx
 00691958    mov         edi,dword ptr [eax+60]
 0069195B    mov         edx,dword ptr [eax+60]
 0069195E    add         edi,dword ptr [eax+80]
 00691964    sub         edx,dword ptr [eax+80]
 0069196A    mov         dword ptr [esp+8],edx
 0069196E    lea         edx,[edi+ecx]
 00691971    sub         ecx,edi
 00691973    mov         edi,ecx
 00691975    mov         ecx,dword ptr [esp+4]
 00691979    add         ecx,ebx
 0069197B    sub         ebx,dword ptr [esp+4]
 0069197F    lea         ebp,[ecx+edx]
 00691982    sub         edx,ecx
 00691984    mov         dword ptr [eax],ebp
 00691986    mov         dword ptr [eax+80],edx
 0069198C    lea         edx,[edi+ebx]
 0069198F    mov         ecx,edx
 00691991    lea         edx,[ecx+edx*4]
 00691994    lea         edx,[ecx+edx*2]
 00691997    lea         edx,[ecx+edx*4]
 0069199A    lea         edx,[ecx+edx*4]
 0069199D    sar         edx,8
 006919A0    lea         ecx,[edx+edi]
 006919A3    sub         edi,edx
 006919A5    mov         dword ptr [eax+40],ecx
 006919A8    mov         dword ptr [eax+0C0],edi
 006919AE    mov         edx,dword ptr [esp+8]
 006919B2    mov         ebx,dword ptr [esp+10]
 006919B6    add         edx,dword ptr [esp+0C]
 006919BA    add         ebx,esi
 006919BC    mov         edi,edx
 006919BE    mov         ecx,dword ptr [esp+0C]
 006919C2    sub         edi,ebx
 006919C4    add         ecx,dword ptr [esp+10]
 006919C8    mov         ebp,edi
 006919CA    lea         edi,[ebp+edi*2]
 006919CE    shl         edi,4
 006919D1    add         edi,ebp
 006919D3    mov         ebp,edx
 006919D5    shl         edx,4
 006919D8    add         edi,edi
 006919DA    add         edx,ebp
 006919DC    sar         edi,8
 006919DF    lea         edx,[ebp+edx*4]
 006919E3    lea         edx,[ebp+edx*2]
 006919E7    mov         ebp,ebx
 006919E9    sar         edx,8
 006919EC    add         edx,edi
 006919EE    lea         ebx,[ebp+ebx*4]
 006919F2    lea         ebx,[ebp+ebx*4]
 006919F6    shl         ebx,3
 006919F9    sub         ebx,ebp
 006919FB    add         ebx,ebx
 006919FD    sar         ebx,8
 00691A00    add         edi,ebx
 00691A02    mov         ebx,edi
 00691A04    mov         edi,ecx
 00691A06    lea         ecx,[edi+ecx*4]
 00691A09    lea         ecx,[edi+ecx*2]
 00691A0C    lea         ecx,[edi+ecx*4]
 00691A0F    lea         ecx,[edi+ecx*4]
 00691A12    sar         ecx,8
 00691A15    lea         edi,[ecx+esi]
 00691A18    sub         esi,ecx
 00691A1A    mov         ecx,esi
 00691A1C    lea         esi,[edx+ecx]
 00691A1F    sub         ecx,edx
 00691A21    mov         dword ptr [eax+0A0],esi
 00691A27    mov         dword ptr [eax+60],ecx
 00691A2A    lea         edx,[ebx+edi]
 00691A2D    sub         edi,ebx
 00691A2F    mov         dword ptr [eax+20],edx
 00691A32    mov         dword ptr [eax+0E0],edi
 00691A38    dec         dword ptr [esp+14]
 00691A3C    add         eax,4
 00691A3F    cmp         dword ptr [esp+14],0
>00691A44    jge         00691918
 00691A4A    add         esp,18
 00691A4D    pop         ebp
 00691A4E    pop         edi
 00691A4F    pop         esi
 00691A50    pop         ebx
 00691A51    ret
*}
end;

//00691A54
procedure @jpeg_fdct_float;
begin
{*
 00691A54    add         esp,0FFFFFFB4
 00691A57    mov         edx,eax
 00691A59    mov         ecx,7
 00691A5E    fld         dword ptr [edx]
 00691A60    fadd        dword ptr [edx+1C]
 00691A63    fstp        dword ptr [esp]
 00691A66    fld         dword ptr [edx]
 00691A68    fsub        dword ptr [edx+1C]
 00691A6B    fstp        dword ptr [esp+1C]
 00691A6F    fld         dword ptr [edx+4]
 00691A72    fadd        dword ptr [edx+18]
 00691A75    fstp        dword ptr [esp+4]
 00691A79    fld         dword ptr [edx+4]
 00691A7C    fsub        dword ptr [edx+18]
 00691A7F    fstp        dword ptr [esp+18]
 00691A83    fld         dword ptr [edx+8]
 00691A86    fadd        dword ptr [edx+14]
 00691A89    fstp        dword ptr [esp+8]
 00691A8D    fld         dword ptr [edx+8]
 00691A90    fsub        dword ptr [edx+14]
 00691A93    fstp        dword ptr [esp+14]
 00691A97    fld         dword ptr [edx+0C]
 00691A9A    fadd        dword ptr [edx+10]
 00691A9D    fstp        dword ptr [esp+0C]
 00691AA1    fld         dword ptr [edx+0C]
 00691AA4    fsub        dword ptr [edx+10]
 00691AA7    fstp        dword ptr [esp+10]
 00691AAB    fld         dword ptr [esp]
 00691AAE    fadd        dword ptr [esp+0C]
 00691AB2    fstp        dword ptr [esp+20]
 00691AB6    fld         dword ptr [esp]
 00691AB9    fsub        dword ptr [esp+0C]
 00691ABD    fstp        dword ptr [esp+2C]
 00691AC1    fld         dword ptr [esp+4]
 00691AC5    fadd        dword ptr [esp+8]
 00691AC9    fstp        dword ptr [esp+24]
 00691ACD    fld         dword ptr [esp+4]
 00691AD1    fsub        dword ptr [esp+8]
 00691AD5    fstp        dword ptr [esp+28]
 00691AD9    fld         dword ptr [esp+20]
 00691ADD    fadd        dword ptr [esp+24]
 00691AE1    fstp        dword ptr [edx]
 00691AE3    fld         dword ptr [esp+20]
 00691AE7    fsub        dword ptr [esp+24]
 00691AEB    fstp        dword ptr [edx+10]
 00691AEE    fld         dword ptr [esp+28]
 00691AF2    fadd        dword ptr [esp+2C]
 00691AF6    fmul        dword ptr ds:[691D70];0,70710676908493:Single
 00691AFC    fstp        dword ptr [esp+30]
 00691B00    fld         dword ptr [esp+2C]
 00691B04    fadd        dword ptr [esp+30]
 00691B08    fstp        dword ptr [edx+8]
 00691B0B    fld         dword ptr [esp+2C]
 00691B0F    fsub        dword ptr [esp+30]
 00691B13    fstp        dword ptr [edx+18]
 00691B16    fld         dword ptr [esp+10]
 00691B1A    fadd        dword ptr [esp+14]
 00691B1E    fstp        dword ptr [esp+20]
 00691B22    fld         dword ptr [esp+14]
 00691B26    fadd        dword ptr [esp+18]
 00691B2A    fstp        dword ptr [esp+24]
 00691B2E    fld         dword ptr [esp+18]
 00691B32    fadd        dword ptr [esp+1C]
 00691B36    fstp        dword ptr [esp+28]
 00691B3A    fld         dword ptr [esp+20]
 00691B3E    fsub        dword ptr [esp+28]
 00691B42    fmul        dword ptr ds:[691D74];0,382683426141739:Single
 00691B48    fstp        dword ptr [esp+40]
 00691B4C    fld         dword ptr ds:[691D78];0,54119610786438:Single
 00691B52    fmul        dword ptr [esp+20]
 00691B56    fadd        dword ptr [esp+40]
 00691B5A    fstp        dword ptr [esp+34]
 00691B5E    fld         dword ptr ds:[691D7C];1,3065630197525:Single
 00691B64    fmul        dword ptr [esp+28]
 00691B68    fadd        dword ptr [esp+40]
 00691B6C    fstp        dword ptr [esp+3C]
 00691B70    fld         dword ptr [esp+24]
 00691B74    fmul        dword ptr ds:[691D70];0,70710676908493:Single
 00691B7A    fstp        dword ptr [esp+38]
 00691B7E    fld         dword ptr [esp+1C]
 00691B82    fadd        dword ptr [esp+38]
 00691B86    fstp        dword ptr [esp+44]
 00691B8A    fld         dword ptr [esp+1C]
 00691B8E    fsub        dword ptr [esp+38]
 00691B92    fstp        dword ptr [esp+48]
 00691B96    fld         dword ptr [esp+48]
 00691B9A    fadd        dword ptr [esp+34]
 00691B9E    fstp        dword ptr [edx+14]
 00691BA1    fld         dword ptr [esp+48]
 00691BA5    fsub        dword ptr [esp+34]
 00691BA9    fstp        dword ptr [edx+0C]
 00691BAC    fld         dword ptr [esp+44]
 00691BB0    fadd        dword ptr [esp+3C]
 00691BB4    fstp        dword ptr [edx+4]
 00691BB7    fld         dword ptr [esp+44]
 00691BBB    fsub        dword ptr [esp+3C]
 00691BBF    fstp        dword ptr [edx+1C]
 00691BC2    add         edx,20
 00691BC5    dec         ecx
 00691BC6    test        ecx,ecx
>00691BC8    jge         00691A5E
 00691BCE    mov         edx,eax
 00691BD0    mov         ecx,7
 00691BD5    fld         dword ptr [edx]
 00691BD7    fadd        dword ptr [edx+0E0]
 00691BDD    fstp        dword ptr [esp]
 00691BE0    fld         dword ptr [edx]
 00691BE2    fsub        dword ptr [edx+0E0]
 00691BE8    fstp        dword ptr [esp+1C]
 00691BEC    fld         dword ptr [edx+20]
 00691BEF    fadd        dword ptr [edx+0C0]
 00691BF5    fstp        dword ptr [esp+4]
 00691BF9    fld         dword ptr [edx+20]
 00691BFC    fsub        dword ptr [edx+0C0]
 00691C02    fstp        dword ptr [esp+18]
 00691C06    fld         dword ptr [edx+40]
 00691C09    fadd        dword ptr [edx+0A0]
 00691C0F    fstp        dword ptr [esp+8]
 00691C13    fld         dword ptr [edx+40]
 00691C16    fsub        dword ptr [edx+0A0]
 00691C1C    fstp        dword ptr [esp+14]
 00691C20    fld         dword ptr [edx+60]
 00691C23    fadd        dword ptr [edx+80]
 00691C29    fstp        dword ptr [esp+0C]
 00691C2D    fld         dword ptr [edx+60]
 00691C30    fsub        dword ptr [edx+80]
 00691C36    fstp        dword ptr [esp+10]
 00691C3A    fld         dword ptr [esp]
 00691C3D    fadd        dword ptr [esp+0C]
 00691C41    fstp        dword ptr [esp+20]
 00691C45    fld         dword ptr [esp]
 00691C48    fsub        dword ptr [esp+0C]
 00691C4C    fstp        dword ptr [esp+2C]
 00691C50    fld         dword ptr [esp+4]
 00691C54    fadd        dword ptr [esp+8]
 00691C58    fstp        dword ptr [esp+24]
 00691C5C    fld         dword ptr [esp+4]
 00691C60    fsub        dword ptr [esp+8]
 00691C64    fstp        dword ptr [esp+28]
 00691C68    fld         dword ptr [esp+20]
 00691C6C    fadd        dword ptr [esp+24]
 00691C70    fstp        dword ptr [edx]
 00691C72    fld         dword ptr [esp+20]
 00691C76    fsub        dword ptr [esp+24]
 00691C7A    fstp        dword ptr [edx+80]
 00691C80    fld         dword ptr [esp+28]
 00691C84    fadd        dword ptr [esp+2C]
 00691C88    fmul        dword ptr ds:[691D70];0,70710676908493:Single
 00691C8E    fstp        dword ptr [esp+30]
 00691C92    fld         dword ptr [esp+2C]
 00691C96    fadd        dword ptr [esp+30]
 00691C9A    fstp        dword ptr [edx+40]
 00691C9D    fld         dword ptr [esp+2C]
 00691CA1    fsub        dword ptr [esp+30]
 00691CA5    fstp        dword ptr [edx+0C0]
 00691CAB    fld         dword ptr [esp+10]
 00691CAF    fadd        dword ptr [esp+14]
 00691CB3    fstp        dword ptr [esp+20]
 00691CB7    fld         dword ptr [esp+14]
 00691CBB    fadd        dword ptr [esp+18]
 00691CBF    fstp        dword ptr [esp+24]
 00691CC3    fld         dword ptr [esp+18]
 00691CC7    fadd        dword ptr [esp+1C]
 00691CCB    fstp        dword ptr [esp+28]
 00691CCF    fld         dword ptr [esp+20]
 00691CD3    fsub        dword ptr [esp+28]
 00691CD7    fmul        dword ptr ds:[691D74];0,382683426141739:Single
 00691CDD    fstp        dword ptr [esp+40]
 00691CE1    fld         dword ptr ds:[691D78];0,54119610786438:Single
 00691CE7    fmul        dword ptr [esp+20]
 00691CEB    fadd        dword ptr [esp+40]
 00691CEF    fstp        dword ptr [esp+34]
 00691CF3    fld         dword ptr ds:[691D7C];1,3065630197525:Single
 00691CF9    fmul        dword ptr [esp+28]
 00691CFD    fadd        dword ptr [esp+40]
 00691D01    fstp        dword ptr [esp+3C]
 00691D05    fld         dword ptr [esp+24]
 00691D09    fmul        dword ptr ds:[691D70];0,70710676908493:Single
 00691D0F    fstp        dword ptr [esp+38]
 00691D13    fld         dword ptr [esp+1C]
 00691D17    fadd        dword ptr [esp+38]
 00691D1B    fstp        dword ptr [esp+44]
 00691D1F    fld         dword ptr [esp+1C]
 00691D23    fsub        dword ptr [esp+38]
 00691D27    fstp        dword ptr [esp+48]
 00691D2B    fld         dword ptr [esp+48]
 00691D2F    fadd        dword ptr [esp+34]
 00691D33    fstp        dword ptr [edx+0A0]
 00691D39    fld         dword ptr [esp+48]
 00691D3D    fsub        dword ptr [esp+34]
 00691D41    fstp        dword ptr [edx+60]
 00691D44    fld         dword ptr [esp+44]
 00691D48    fadd        dword ptr [esp+3C]
 00691D4C    fstp        dword ptr [edx+20]
 00691D4F    fld         dword ptr [esp+44]
 00691D53    fsub        dword ptr [esp+3C]
 00691D57    fstp        dword ptr [edx+0E0]
 00691D5D    add         edx,4
 00691D60    dec         ecx
 00691D61    test        ecx,ecx
>00691D63    jge         00691BD5
 00691D69    add         esp,4C
 00691D6C    ret
*}
end;

end.