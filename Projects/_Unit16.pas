//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit16;

interface

uses
  SysUtils, Classes;

    @@Plugins@Initialize; stdcall;//00541638
    @@Plugins@Finalize; stdcall;//00541648
    constructor Create(AOwner:TComponent);//00541658
    destructor Destroy;//00541890
    //procedure sub_00541920(?:?);//00541920
    //function sub_00541BDC:?;//00541BDC
    //procedure sub_00541C24(?:?);//00541C24
    //procedure sub_00541C50(?:?);//00541C50
    procedure btnCancelClick(Sender:TObject);//00541FE8
    procedure FormShow(Sender:TObject);//00542000
    procedure lvProcessesClick(Sender:TObject);//00542034
    //procedure sub_00542068(?:?; ?:?; ?:?; ?:?; ?:?);//00542068
    //procedure sub_00542160(?:TFActiveProcesses; ?:Integer; ?:?);//00542160
    procedure btnDumpClick(Sender:TObject);//0054265C

implementation

//00541658
constructor TFActiveProcesses.Create(AOwner:TComponent);
begin
{*
 00541658    push        ebp
 00541659    mov         ebp,esp
 0054165B    add         esp,0FFFFFFD0
 0054165E    mov         byte ptr [ebp-8],dl
 00541661    test        dl,dl
>00541663    jle         0054166A
 00541665    call        0067EF6C
 0054166A    mov         dword ptr [ebp-30],ecx
 0054166D    mov         byte ptr [ebp-29],dl
 00541670    mov         dword ptr [ebp-4],eax
 00541673    mov         eax,6E1140
 00541678    call        0066FECC
 0054167D    mov         word ptr [ebp-18],8
 00541683    mov         ecx,dword ptr [ebp-30]
 00541686    xor         edx,edx
 00541688    mov         eax,dword ptr [ebp-4]
 0054168B    call        0040207C
 00541690    add         dword ptr [ebp-0C],10
 00541694    mov         edx,dword ptr [ebp-4]
 00541697    xor         ecx,ecx
 00541699    mov         dword ptr [edx+300],ecx;TFActiveProcesses.?f300:dword
 0054169F    mov         eax,dword ptr [ebp-4]
 005416A2    xor         edx,edx
 005416A4    mov         dword ptr [eax+2320],edx;TFActiveProcesses.?f2320:dword
 005416AA    mov         ecx,dword ptr [ebp-4]
 005416AD    xor         eax,eax
 005416AF    mov         dword ptr [ecx+2324],eax
 005416B5    mov         edx,dword ptr [ebp-4]
 005416B8    xor         ecx,ecx
 005416BA    mov         dword ptr [edx+2FC],ecx;TFActiveProcesses.?f2FC:dword
 005416C0    mov         eax,dword ptr [ebp-4]
 005416C3    xor         edx,edx
 005416C5    mov         dword ptr [eax+230C],edx;TFActiveProcesses.?f230C:dword
 005416CB    mov         ecx,dword ptr [ebp-4]
 005416CE    xor         eax,eax
 005416D0    mov         dword ptr [ecx+2310],eax
 005416D6    mov         edx,dword ptr [ebp-4]
 005416D9    xor         ecx,ecx
 005416DB    mov         dword ptr [edx+2314],ecx;TFActiveProcesses.?f2314:dword
 005416E1    mov         eax,dword ptr [ebp-4]
 005416E4    xor         edx,edx
 005416E6    mov         dword ptr [eax+2318],edx;TFActiveProcesses.?f2318:dword
 005416EC    mov         ecx,dword ptr [ebp-4]
 005416EF    xor         eax,eax
 005416F1    mov         dword ptr [ecx+231C],eax
 005416F7    push        dword ptr [ebp-4]
 005416FA    call        00541BDC
 005416FF    pop         ecx
 00541700    test        al,al
>00541702    je          005417A1
 00541708    push        6E1030
 0054170D    call        KERNEL32.LoadLibraryA
 00541712    mov         edx,dword ptr [ebp-4]
 00541715    mov         dword ptr [edx+300],eax;TFActiveProcesses.?f300:dword
 0054171B    mov         ecx,dword ptr [ebp-4]
 0054171E    mov         eax,dword ptr [ecx+300]
 00541724    test        eax,eax
>00541726    je          00541851
 0054172C    push        6E103A
 00541731    mov         edx,dword ptr [ebp-4]
 00541734    push        dword ptr [edx+300];TFActiveProcesses.?f300:dword
 0054173A    call        KERNEL32.GetProcAddress
 0054173F    mov         ecx,dword ptr [ebp-4]
 00541742    mov         dword ptr [ecx+2320],eax
 00541748    push        6E1048
 0054174D    mov         eax,dword ptr [ebp-4]
 00541750    push        dword ptr [eax+300];TFActiveProcesses.?f300:dword
 00541756    call        KERNEL32.GetProcAddress
 0054175B    mov         edx,dword ptr [ebp-4]
 0054175E    mov         dword ptr [edx+2324],eax;TFActiveProcesses.?f2324:dword
 00541764    push        6E105B
 00541769    mov         ecx,dword ptr [ebp-4]
 0054176C    push        dword ptr [ecx+300]
 00541772    call        KERNEL32.GetProcAddress
 00541777    mov         edx,dword ptr [ebp-4]
 0054177A    mov         dword ptr [edx+2328],eax;TFActiveProcesses.?f2328:dword
 00541780    push        6E1070
 00541785    mov         eax,dword ptr [ebp-4]
 00541788    push        dword ptr [eax+300];TFActiveProcesses.?f300:dword
 0054178E    call        KERNEL32.GetProcAddress
 00541793    mov         ecx,dword ptr [ebp-4]
 00541796    mov         dword ptr [ecx+232C],eax
>0054179C    jmp         00541851
 005417A1    push        6E1085
 005417A6    call        KERNEL32.LoadLibraryA
 005417AB    mov         edx,dword ptr [ebp-4]
 005417AE    mov         dword ptr [edx+2FC],eax;TFActiveProcesses.?f2FC:dword
 005417B4    mov         eax,dword ptr [ebp-4]
 005417B7    mov         ecx,dword ptr [eax+2FC];TFActiveProcesses.?f2FC:dword
 005417BD    test        ecx,ecx
>005417BF    je          00541851
 005417C5    push        6E1092
 005417CA    mov         eax,dword ptr [ebp-4]
 005417CD    push        dword ptr [eax+2FC];TFActiveProcesses.?f2FC:dword
 005417D3    call        KERNEL32.GetProcAddress
 005417D8    mov         edx,dword ptr [ebp-4]
 005417DB    mov         dword ptr [edx+230C],eax;TFActiveProcesses.?f230C:dword
 005417E1    push        6E10AB
 005417E6    mov         ecx,dword ptr [ebp-4]
 005417E9    push        dword ptr [ecx+2FC]
 005417EF    call        KERNEL32.GetProcAddress
 005417F4    mov         edx,dword ptr [ebp-4]
 005417F7    mov         dword ptr [edx+2310],eax;TFActiveProcesses.?f2310:dword
 005417FD    push        6E10BA
 00541802    mov         eax,dword ptr [ebp-4]
 00541805    push        dword ptr [eax+2FC];TFActiveProcesses.?f2FC:dword
 0054180B    call        KERNEL32.GetProcAddress
 00541810    mov         ecx,dword ptr [ebp-4]
 00541813    mov         dword ptr [ecx+2314],eax
 00541819    push        6E10C8
 0054181E    mov         eax,dword ptr [ebp-4]
 00541821    push        dword ptr [eax+2FC];TFActiveProcesses.?f2FC:dword
 00541827    call        KERNEL32.GetProcAddress
 0054182C    mov         edx,dword ptr [ebp-4]
 0054182F    mov         dword ptr [edx+2318],eax;TFActiveProcesses.?f2318:dword
 00541835    push        6E10D6
 0054183A    mov         ecx,dword ptr [ebp-4]
 0054183D    push        dword ptr [ecx+2FC]
 00541843    call        KERNEL32.GetProcAddress
 00541848    mov         edx,dword ptr [ebp-4]
 0054184B    mov         dword ptr [edx+231C],eax;TFActiveProcesses.?f231C:dword
 00541851    mov         eax,dword ptr [ebp-28]
 00541854    mov         fs:[00000000],eax
 0054185A    mov         eax,dword ptr [ebp-4]
 0054185D    mov         dl,byte ptr [ebp-29]
 00541860    test        dl,dl
>00541862    je          00541869
 00541864    call        0067EF79
 00541869    mov         esp,ebp
 0054186B    pop         ebp
 0054186C    ret
*}
end;

//00541890
destructor TFActiveProcesses.Destroy;
begin
{*
 00541890    push        ebp
 00541891    mov         ebp,esp
 00541893    add         esp,0FFFFFFD4
 00541896    call        0067EF81
 0054189B    mov         byte ptr [ebp-29],dl
 0054189E    mov         dword ptr [ebp-4],eax
 005418A1    mov         eax,6E1164
 005418A6    call        0066FECC
 005418AB    mov         dword ptr [ebp-0C],10
 005418B2    mov         dl,byte ptr [ebp-29]
 005418B5    test        dl,dl
>005418B7    jl          00541903
 005418B9    mov         word ptr [ebp-18],8
 005418BF    mov         ecx,dword ptr [ebp-4]
 005418C2    mov         eax,dword ptr [ecx+300]
 005418C8    test        eax,eax
>005418CA    je          005418DA
 005418CC    mov         edx,dword ptr [ebp-4]
 005418CF    push        dword ptr [edx+300]
 005418D5    call        KERNEL32.FreeLibrary
 005418DA    mov         ecx,dword ptr [ebp-4]
 005418DD    mov         eax,dword ptr [ecx+2FC]
 005418E3    test        eax,eax
>005418E5    je          005418F5
 005418E7    mov         edx,dword ptr [ebp-4]
 005418EA    push        dword ptr [edx+2FC]
 005418F0    call        KERNEL32.FreeLibrary
 005418F5    sub         dword ptr [ebp-0C],10
 005418F9    xor         edx,edx
 005418FB    mov         eax,dword ptr [ebp-4]
 005418FE    call        0040235C
 00541903    mov         ecx,dword ptr [ebp-28]
 00541906    mov         dword ptr fs:[0],ecx
 0054190D    mov         al,byte ptr [ebp-29]
 00541910    test        al,al
>00541912    jle         0054191C
 00541914    mov         eax,dword ptr [ebp-4]
 00541917    call        0067EF74
 0054191C    mov         esp,ebp
 0054191E    pop         ebp
 0054191F    ret
*}
end;

//00541920
{*procedure sub_00541920(?:?);
begin
 00541920    push        ebp
 00541921    mov         ebp,esp
 00541923    add         esp,0FFFFFC5C
 00541929    push        esi
 0054192A    push        edi
 0054192B    mov         eax,6E11D4
 00541930    call        0066FECC
 00541935    mov         esi,6E0C40
 0054193A    lea         edi,[ebp-180]
 00541940    mov         ecx,4A
 00541945    rep movs    dword ptr [edi],dword ptr [esi]
 00541947    mov         esi,6E0D68
 0054194C    lea         edi,[ebp-3A4]
 00541952    mov         ecx,89
 00541957    rep movs    dword ptr [edi],dword ptr [esi]
 00541959    mov         eax,dword ptr [ebp+8]
 0054195C    mov         edx,dword ptr [eax+2F8]
 00541962    mov         eax,dword ptr [edx+22C]
 00541968    call        TListItems.BeginUpdate
 0054196D    mov         edx,dword ptr [ebp+8]
 00541970    mov         eax,dword ptr [edx+2F8]
 00541976    mov         edx,dword ptr [eax]
 00541978    call        dword ptr [edx+0D4]
 0054197E    call        KERNEL32.GetCurrentProcessId
 00541983    push        eax
 00541984    push        0F
 00541986    mov         ecx,dword ptr [ebp+8]
 00541989    call        dword ptr [ecx+230C]
 0054198F    mov         dword ptr [ebp-40],eax
 00541992    mov         eax,dword ptr [ebp-40]
 00541995    cmp         eax,0FFFFFFFF
>00541998    je          00541BB6
 0054199E    mov         dword ptr [ebp-180],128
 005419A8    mov         dword ptr [ebp-3A4],224
 005419B2    lea         edx,[ebp-180]
 005419B8    push        edx
 005419B9    push        dword ptr [ebp-40]
 005419BC    mov         ecx,dword ptr [ebp+8]
 005419BF    call        dword ptr [ecx+2310]
 005419C5    push        dword ptr [ebp-178]
 005419CB    push        8
 005419CD    mov         eax,dword ptr [ebp+8]
 005419D0    call        dword ptr [eax+230C]
 005419D6    mov         dword ptr [ebp-44],eax
 005419D9    mov         edx,dword ptr [ebp-44]
 005419DC    cmp         edx,0FFFFFFFF
>005419DF    je          00541B93
 005419E5    lea         ecx,[ebp-3A4]
 005419EB    push        ecx
 005419EC    push        dword ptr [ebp-44]
 005419EF    mov         eax,dword ptr [ebp+8]
 005419F2    call        dword ptr [eax+2318]
 005419F8    test        eax,eax
>005419FA    je          00541B8B
 00541A00    mov         edx,dword ptr [ebp+8]
 00541A03    mov         ecx,dword ptr [edx+2F8]
 00541A09    mov         eax,dword ptr [ecx+22C]
 00541A0F    call        00624364
 00541A14    mov         dword ptr [ebp-48],eax
 00541A17    mov         word ptr [ebp-2C],8
 00541A1D    lea         eax,[ebp-4]
 00541A20    call        00401EA8
 00541A25    mov         ecx,eax
 00541A27    inc         dword ptr [ebp-20]
 00541A2A    mov         edx,4
 00541A2F    mov         eax,dword ptr [ebp-178]
 00541A35    call        00657C04
 00541A3A    lea         edx,[ebp-4]
 00541A3D    mov         edx,dword ptr [edx]
 00541A3F    mov         eax,dword ptr [ebp-48]
 00541A42    call        00623C3C
 00541A47    dec         dword ptr [ebp-20]
 00541A4A    lea         eax,[ebp-4]
 00541A4D    mov         edx,2
 00541A52    call        0067DCA0
 00541A57    mov         ecx,dword ptr [ebp-48]
 00541A5A    add         ecx,8
 00541A5D    mov         dword ptr [ebp-4C],ecx
 00541A60    mov         word ptr [ebp-2C],14
 00541A66    lea         eax,[ebp-0C]
 00541A69    call        00401EA8
 00541A6E    push        eax
 00541A6F    inc         dword ptr [ebp-20]
 00541A72    lea         edx,[ebp-15C]
 00541A78    lea         eax,[ebp-8]
 00541A7B    call        0067DAB4
 00541A80    inc         dword ptr [ebp-20]
 00541A83    mov         eax,dword ptr [eax]
 00541A85    pop         edx
 00541A86    call        00658580
 00541A8B    lea         edx,[ebp-0C]
 00541A8E    mov         edx,dword ptr [edx]
 00541A90    mov         eax,dword ptr [ebp-4C]
 00541A93    mov         eax,dword ptr [eax]
 00541A95    mov         ecx,dword ptr [eax]
 00541A97    call        dword ptr [ecx+38]
 00541A9A    dec         dword ptr [ebp-20]
 00541A9D    lea         eax,[ebp-0C]
 00541AA0    mov         edx,2
 00541AA5    call        0067DCA0
 00541AAA    dec         dword ptr [ebp-20]
 00541AAD    lea         eax,[ebp-8]
 00541AB0    mov         edx,2
 00541AB5    call        0067DCA0
 00541ABA    mov         ecx,dword ptr [ebp-48]
 00541ABD    add         ecx,8
 00541AC0    mov         dword ptr [ebp-50],ecx
 00541AC3    mov         word ptr [ebp-2C],20
 00541AC9    lea         eax,[ebp-10]
 00541ACC    call        00401EA8
 00541AD1    mov         ecx,eax
 00541AD3    inc         dword ptr [ebp-20]
 00541AD6    mov         edx,8
 00541ADB    mov         eax,dword ptr [ebp-38C]
 00541AE1    call        00657C04
 00541AE6    lea         edx,[ebp-10]
 00541AE9    mov         edx,dword ptr [edx]
 00541AEB    mov         eax,dword ptr [ebp-50]
 00541AEE    mov         eax,dword ptr [eax]
 00541AF0    mov         ecx,dword ptr [eax]
 00541AF2    call        dword ptr [ecx+38]
 00541AF5    dec         dword ptr [ebp-20]
 00541AF8    lea         eax,[ebp-10]
 00541AFB    mov         edx,2
 00541B00    call        0067DCA0
 00541B05    mov         ecx,dword ptr [ebp-48]
 00541B08    add         ecx,8
 00541B0B    mov         dword ptr [ebp-54],ecx
 00541B0E    mov         word ptr [ebp-2C],2C
 00541B14    mov         edx,6E10E3
 00541B19    lea         eax,[ebp-14]
 00541B1C    call        0067DAB4
 00541B21    inc         dword ptr [ebp-20]
 00541B24    mov         edx,dword ptr [eax]
 00541B26    mov         eax,dword ptr [ebp-54]
 00541B29    mov         eax,dword ptr [eax]
 00541B2B    mov         ecx,dword ptr [eax]
 00541B2D    call        dword ptr [ecx+38]
 00541B30    dec         dword ptr [ebp-20]
 00541B33    lea         eax,[ebp-14]
 00541B36    mov         edx,2
 00541B3B    call        0067DCA0
 00541B40    mov         ecx,dword ptr [ebp-48]
 00541B43    add         ecx,8
 00541B46    mov         dword ptr [ebp-58],ecx
 00541B49    mov         word ptr [ebp-2C],38
 00541B4F    lea         eax,[ebp-18]
 00541B52    call        00401EA8
 00541B57    mov         ecx,eax
 00541B59    inc         dword ptr [ebp-20]
 00541B5C    mov         edx,8
 00541B61    mov         eax,dword ptr [ebp-390]
 00541B67    call        00657C04
 00541B6C    lea         edx,[ebp-18]
 00541B6F    mov         edx,dword ptr [edx]
 00541B71    mov         eax,dword ptr [ebp-58]
 00541B74    mov         eax,dword ptr [eax]
 00541B76    mov         ecx,dword ptr [eax]
 00541B78    call        dword ptr [ecx+38]
 00541B7B    dec         dword ptr [ebp-20]
 00541B7E    lea         eax,[ebp-18]
 00541B81    mov         edx,2
 00541B86    call        0067DCA0
 00541B8B    push        dword ptr [ebp-44]
 00541B8E    call        KERNEL32.CloseHandle
 00541B93    lea         ecx,[ebp-180]
 00541B99    push        ecx
 00541B9A    push        dword ptr [ebp-40]
 00541B9D    mov         eax,dword ptr [ebp+8]
 00541BA0    call        dword ptr [eax+2314]
 00541BA6    test        eax,eax
>00541BA8    jne         005419C5
 00541BAE    push        dword ptr [ebp-40]
 00541BB1    call        KERNEL32.CloseHandle
 00541BB6    mov         edx,dword ptr [ebp+8]
 00541BB9    mov         ecx,dword ptr [edx+2F8]
 00541BBF    mov         eax,dword ptr [ecx+22C]
 00541BC5    call        TListItems.EndUpdate
 00541BCA    mov         edx,dword ptr [ebp-3C]
 00541BCD    mov         dword ptr fs:[0],edx
 00541BD4    pop         edi
 00541BD5    pop         esi
 00541BD6    mov         esp,ebp
 00541BD8    pop         ebp
 00541BD9    ret
end;*}

//00541BDC
{*function sub_00541BDC:?;
begin
 00541BDC    push        ebp
 00541BDD    mov         ebp,esp
 00541BDF    add         esp,0FFFFFF6C
 00541BE5    push        esi
 00541BE6    push        edi
 00541BE7    mov         esi,6E0F8C
 00541BEC    lea         edi,[ebp-94]
 00541BF2    mov         ecx,25
 00541BF7    rep movs    dword ptr [edi],dword ptr [esi]
 00541BF9    mov         dword ptr [ebp-94],94
 00541C03    lea         eax,[ebp-94]
 00541C09    push        eax
 00541C0A    call        KERNEL32.GetVersionExA
 00541C0F    mov         edx,dword ptr [ebp-90]
 00541C15    cmp         edx,5
 00541C18    setae       al
 00541C1B    and         eax,1
 00541C1E    pop         edi
 00541C1F    pop         esi
 00541C20    mov         esp,ebp
 00541C22    pop         ebp
 00541C23    ret
end;*}

//00541C24
{*procedure sub_00541C24(?:?);
begin
 00541C24    push        ebp
 00541C25    mov         ebp,esp
 00541C27    push        dword ptr [ebp+8]
 00541C2A    call        00541BDC
 00541C2F    pop         ecx
 00541C30    test        al,al
>00541C32    jne         00541C42
 00541C34    push        dword ptr ds:[6ECC3C];_FActiveProcesses
 00541C3A    call        00541920
 00541C3F    pop         ecx
 00541C40    pop         ebp
 00541C41    ret
 00541C42    push        dword ptr ds:[6ECC3C];_FActiveProcesses
 00541C48    call        00541C50
 00541C4D    pop         ecx
 00541C4E    pop         ebp
 00541C4F    ret
end;*}

//00541C50
{*procedure sub_00541C50(?:?);
begin
 00541C50    push        ebp
 00541C51    mov         ebp,esp
 00541C53    add         esp,0FFFFFD90
 00541C59    push        ebx
 00541C5A    mov         eax,6E12A8
 00541C5F    call        0066FECC
 00541C64    mov         word ptr [ebp-34],8
 00541C6A    lea         eax,[ebp-4]
 00541C6D    call        00401EA8
 00541C72    inc         dword ptr [ebp-28]
 00541C75    mov         word ptr [ebp-34],14
 00541C7B    mov         edx,dword ptr [ebp+8]
 00541C7E    add         edx,304
 00541C84    push        edx
 00541C85    push        1000
 00541C8A    mov         ecx,dword ptr [ebp+8]
 00541C8D    add         ecx,30C
 00541C93    push        ecx
 00541C94    mov         eax,dword ptr [ebp+8]
 00541C97    call        dword ptr [eax+2320]
 00541C9D    mov         ecx,4
 00541CA2    mov         edx,dword ptr [ebp+8]
 00541CA5    lea         eax,[edx+304]
 00541CAB    push        eax
 00541CAC    mov         eax,dword ptr [eax]
 00541CAE    xor         edx,edx
 00541CB0    div         eax,ecx
 00541CB2    pop         ecx
 00541CB3    mov         dword ptr [ecx],eax
 00541CB5    mov         eax,dword ptr [ebp+8]
 00541CB8    mov         edx,dword ptr [eax+2F8]
 00541CBE    mov         eax,dword ptr [edx+22C]
 00541CC4    call        TListItems.BeginUpdate
 00541CC9    mov         edx,dword ptr [ebp+8]
 00541CCC    mov         eax,dword ptr [edx+2F8]
 00541CD2    mov         edx,dword ptr [eax]
 00541CD4    call        dword ptr [edx+0D4]
 00541CDA    xor         ecx,ecx
 00541CDC    mov         dword ptr [ebp-48],ecx
>00541CDF    jmp         00541F9F
 00541CE4    mov         eax,dword ptr [ebp-48]
 00541CE7    mov         edx,dword ptr [ebp+8]
 00541CEA    mov         ecx,dword ptr [edx+eax*4+30C]
 00541CF1    test        ecx,ecx
>00541CF3    je          00541F9C
 00541CF9    mov         eax,dword ptr [ebp-48]
 00541CFC    mov         edx,dword ptr [ebp+8]
 00541CFF    push        dword ptr [edx+eax*4+30C]
 00541D06    push        0
 00541D08    push        410
 00541D0D    call        KERNEL32.OpenProcess
 00541D12    mov         dword ptr [ebp-58],eax
 00541D15    mov         ecx,dword ptr [ebp-58]
 00541D18    test        ecx,ecx
>00541D1A    je          00541F9C
 00541D20    mov         eax,dword ptr [ebp+8]
 00541D23    add         eax,308
 00541D28    push        eax
 00541D29    push        1000
 00541D2E    mov         edx,dword ptr [ebp+8]
 00541D31    add         edx,130C
 00541D37    push        edx
 00541D38    push        dword ptr [ebp-58]
 00541D3B    mov         ecx,dword ptr [ebp+8]
 00541D3E    call        dword ptr [ecx+2324]
 00541D44    test        eax,eax
>00541D46    je          00541F94
 00541D4C    mov         ecx,4
 00541D51    mov         eax,dword ptr [ebp+8]
 00541D54    lea         edx,[eax+308]
 00541D5A    push        edx
 00541D5B    mov         eax,dword ptr [edx]
 00541D5D    xor         edx,edx
 00541D5F    div         eax,ecx
 00541D61    pop         ecx
 00541D62    mov         dword ptr [ecx],eax
 00541D64    push        200
 00541D69    lea         eax,[ebp-270]
 00541D6F    push        eax
 00541D70    mov         edx,dword ptr [ebp+8]
 00541D73    push        dword ptr [edx+130C]
 00541D79    push        dword ptr [ebp-58]
 00541D7C    mov         ecx,dword ptr [ebp+8]
 00541D7F    call        dword ptr [ecx+2328]
 00541D85    mov         dword ptr [ebp-4C],eax
 00541D88    mov         word ptr [ebp-34],20
 00541D8E    lea         edx,[ebp-270]
 00541D94    lea         eax,[ebp-8]
 00541D97    mov         ecx,dword ptr [ebp-4C]
 00541D9A    call        0067DB28
 00541D9F    mov         edx,eax
 00541DA1    inc         dword ptr [ebp-28]
 00541DA4    lea         eax,[ebp-4]
 00541DA7    call        0067DCD0
 00541DAC    dec         dword ptr [ebp-28]
 00541DAF    lea         eax,[ebp-8]
 00541DB2    mov         edx,2
 00541DB7    call        0067DCA0
 00541DBC    push        0C
 00541DBE    lea         ecx,[ebp-70]
 00541DC1    push        ecx
 00541DC2    mov         eax,dword ptr [ebp+8]
 00541DC5    push        dword ptr [eax+130C]
 00541DCB    push        dword ptr [ebp-58]
 00541DCE    mov         edx,dword ptr [ebp+8]
 00541DD1    call        dword ptr [edx+232C]
 00541DD7    mov         word ptr [ebp-34],2C
 00541DDD    mov         edx,6E10E5
 00541DE2    lea         eax,[ebp-0C]
 00541DE5    call        0067DAB4
 00541DEA    inc         dword ptr [ebp-28]
 00541DED    lea         edx,[ebp-0C]
 00541DF0    lea         eax,[ebp-4]
 00541DF3    call        0067DD9C
 00541DF8    push        eax
 00541DF9    dec         dword ptr [ebp-28]
 00541DFC    lea         eax,[ebp-0C]
 00541DFF    mov         edx,2
 00541E04    call        0067DCA0
 00541E09    pop         ecx
 00541E0A    test        cl,cl
>00541E0C    je          00541F94
 00541E12    mov         word ptr [ebp-34],38
 00541E18    mov         edx,6E10E6
 00541E1D    lea         eax,[ebp-10]
 00541E20    call        0067DAB4
 00541E25    inc         dword ptr [ebp-28]
 00541E28    lea         edx,[ebp-10]
 00541E2B    lea         eax,[ebp-4]
 00541E2E    call        0067E2B8
 00541E33    mov         dword ptr [ebp-50],eax
 00541E36    dec         dword ptr [ebp-28]
 00541E39    lea         eax,[ebp-10]
 00541E3C    mov         edx,2
 00541E41    call        0067DCA0
 00541E46    mov         ecx,dword ptr [ebp-50]
 00541E49    test        ecx,ecx
>00541E4B    je          00541E90
 00541E4D    mov         word ptr [ebp-34],44
 00541E53    lea         eax,[ebp-14]
 00541E56    call        00401EA8
 00541E5B    push        eax
 00541E5C    inc         dword ptr [ebp-28]
 00541E5F    lea         eax,[ebp-4]
 00541E62    call        00405290
 00541E67    mov         ecx,eax
 00541E69    mov         edx,dword ptr [ebp-50]
 00541E6C    inc         edx
 00541E6D    lea         eax,[ebp-4]
 00541E70    call        0067E0BC
 00541E75    lea         edx,[ebp-14]
 00541E78    lea         eax,[ebp-4]
 00541E7B    call        0067DCD0
 00541E80    dec         dword ptr [ebp-28]
 00541E83    lea         eax,[ebp-14]
 00541E86    mov         edx,2
 00541E8B    call        0067DCA0
 00541E90    mov         ecx,dword ptr [ebp+8]
 00541E93    mov         eax,dword ptr [ecx+2F8]
 00541E99    mov         eax,dword ptr [eax+22C]
 00541E9F    call        00624364
 00541EA4    mov         dword ptr [ebp-54],eax
 00541EA7    mov         word ptr [ebp-34],50
 00541EAD    lea         eax,[ebp-18]
 00541EB0    call        00401EA8
 00541EB5    mov         ecx,eax
 00541EB7    inc         dword ptr [ebp-28]
 00541EBA    mov         edx,4
 00541EBF    mov         eax,dword ptr [ebp-48]
 00541EC2    mov         ebx,dword ptr [ebp+8]
 00541EC5    mov         eax,dword ptr [ebx+eax*4+30C]
 00541ECC    call        00657C04
 00541ED1    lea         edx,[ebp-18]
 00541ED4    mov         edx,dword ptr [edx]
 00541ED6    mov         eax,dword ptr [ebp-54]
 00541ED9    call        00623C3C
 00541EDE    dec         dword ptr [ebp-28]
 00541EE1    lea         eax,[ebp-18]
 00541EE4    mov         edx,2
 00541EE9    call        0067DCA0
 00541EEE    mov         ecx,dword ptr [ebp-54]
 00541EF1    add         ecx,8
 00541EF4    mov         dword ptr [ebp-5C],ecx
 00541EF7    mov         eax,dword ptr [ebp-5C]
 00541EFA    mov         eax,dword ptr [eax]
 00541EFC    mov         edx,dword ptr [ebp-4]
 00541EFF    mov         ecx,dword ptr [eax]
 00541F01    call        dword ptr [ecx+38]
 00541F04    mov         eax,dword ptr [ebp-54]
 00541F07    add         eax,8
 00541F0A    mov         dword ptr [ebp-60],eax
 00541F0D    mov         word ptr [ebp-34],5C
 00541F13    lea         eax,[ebp-1C]
 00541F16    call        00401EA8
 00541F1B    mov         ecx,eax
 00541F1D    inc         dword ptr [ebp-28]
 00541F20    mov         edx,8
 00541F25    mov         eax,dword ptr [ebp-6C]
 00541F28    call        00657C04
 00541F2D    lea         edx,[ebp-1C]
 00541F30    mov         edx,dword ptr [edx]
 00541F32    mov         eax,dword ptr [ebp-60]
 00541F35    mov         eax,dword ptr [eax]
 00541F37    mov         ecx,dword ptr [eax]
 00541F39    call        dword ptr [ecx+38]
 00541F3C    dec         dword ptr [ebp-28]
 00541F3F    lea         eax,[ebp-1C]
 00541F42    mov         edx,2
 00541F47    call        0067DCA0
 00541F4C    mov         ecx,dword ptr [ebp-54]
 00541F4F    add         ecx,8
 00541F52    mov         dword ptr [ebp-64],ecx
 00541F55    mov         word ptr [ebp-34],68
 00541F5B    lea         eax,[ebp-20]
 00541F5E    call        00401EA8
 00541F63    mov         ecx,eax
 00541F65    inc         dword ptr [ebp-28]
 00541F68    mov         edx,8
 00541F6D    mov         eax,dword ptr [ebp-68]
 00541F70    call        00657C04
 00541F75    lea         edx,[ebp-20]
 00541F78    mov         edx,dword ptr [edx]
 00541F7A    mov         eax,dword ptr [ebp-64]
 00541F7D    mov         eax,dword ptr [eax]
 00541F7F    mov         ecx,dword ptr [eax]
 00541F81    call        dword ptr [ecx+38]
 00541F84    dec         dword ptr [ebp-28]
 00541F87    lea         eax,[ebp-20]
 00541F8A    mov         edx,2
 00541F8F    call        0067DCA0
 00541F94    push        dword ptr [ebp-58]
 00541F97    call        KERNEL32.CloseHandle
 00541F9C    inc         dword ptr [ebp-48]
 00541F9F    mov         ecx,dword ptr [ebp-48]
 00541FA2    mov         eax,dword ptr [ebp+8]
 00541FA5    mov         edx,dword ptr [eax+304]
 00541FAB    cmp         ecx,edx
>00541FAD    jb          00541CE4
 00541FB3    mov         ecx,dword ptr [ebp+8]
 00541FB6    mov         eax,dword ptr [ecx+2F8]
 00541FBC    mov         eax,dword ptr [eax+22C]
 00541FC2    call        TListItems.EndUpdate
 00541FC7    dec         dword ptr [ebp-28]
 00541FCA    lea         eax,[ebp-4]
 00541FCD    mov         edx,2
 00541FD2    call        0067DCA0
 00541FD7    mov         ecx,dword ptr [ebp-44]
 00541FDA    mov         dword ptr fs:[0],ecx
 00541FE1    pop         ebx
 00541FE2    mov         esp,ebp
 00541FE4    pop         ebp
 00541FE5    ret
end;*}

//00541FE8
procedure TFActiveProcesses.btnCancelClick(Sender:TObject);
begin
{*
 00541FE8    push        ebp
 00541FE9    mov         ebp,esp
 00541FEB    add         esp,0FFFFFFF8
 00541FEE    mov         dword ptr [ebp-8],edx
 00541FF1    mov         dword ptr [ebp-4],eax
 00541FF4    mov         eax,dword ptr [ebp-4]
 00541FF7    call        005D3F3C
 00541FFC    pop         ecx
 00541FFD    pop         ecx
 00541FFE    pop         ebp
 00541FFF    ret
*}
end;

//00542000
procedure TFActiveProcesses.FormShow(Sender:TObject);
begin
{*
 00542000    push        ebp
 00542001    mov         ebp,esp
 00542003    add         esp,0FFFFFFF8
 00542006    mov         dword ptr [ebp-8],edx
 00542009    mov         dword ptr [ebp-4],eax
 0054200C    mov         eax,dword ptr [ebp-4]
 0054200F    mov         eax,dword ptr [eax+2F8];TFActiveProcesses.lvProcesses:TListView
 00542015    call        006288D8
 0054201A    test        eax,eax
 0054201C    setne       dl
 0054201F    and         edx,1
 00542022    mov         ecx,dword ptr [ebp-4]
 00542025    mov         eax,dword ptr [ecx+2F0]
 0054202B    mov         ecx,dword ptr [eax]
 0054202D    call        dword ptr [ecx+64]
 00542030    pop         ecx
 00542031    pop         ecx
 00542032    pop         ebp
 00542033    ret
*}
end;

//00542034
procedure TFActiveProcesses.lvProcessesClick(Sender:TObject);
begin
{*
 00542034    push        ebp
 00542035    mov         ebp,esp
 00542037    add         esp,0FFFFFFF8
 0054203A    mov         dword ptr [ebp-8],edx
 0054203D    mov         dword ptr [ebp-4],eax
 00542040    mov         eax,dword ptr [ebp-4]
 00542043    mov         eax,dword ptr [eax+2F8];TFActiveProcesses.lvProcesses:TListView
 00542049    call        006288D8
 0054204E    test        eax,eax
 00542050    setne       dl
 00542053    and         edx,1
 00542056    mov         ecx,dword ptr [ebp-4]
 00542059    mov         eax,dword ptr [ecx+2F0]
 0054205F    mov         ecx,dword ptr [eax]
 00542061    call        dword ptr [ecx+64]
 00542064    pop         ecx
 00542065    pop         ecx
 00542066    pop         ebp
 00542067    ret
*}
end;

//00542068
{*procedure sub_00542068(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00542068    push        ebp
 00542069    mov         ebp,esp
 0054206B    add         esp,0FFFFFEC0
 00542071    mov         dword ptr [ebp-0C],ecx
 00542074    mov         dword ptr [ebp-8],edx
 00542077    mov         dword ptr [ebp-4],eax
 0054207A    lea         eax,[ebp-20]
 0054207D    push        eax
 0054207E    push        4
 00542080    lea         edx,[ebp-1C]
 00542083    push        edx
 00542084    mov         ecx,dword ptr [ebp-0C]
 00542087    add         ecx,3C
 0054208A    push        ecx
 0054208B    push        dword ptr [ebp-8]
 0054208E    call        KERNEL32.ReadProcessMemory
 00542093    test        eax,eax
>00542095    je          00542158
 0054209B    lea         eax,[ebp-20]
 0054209E    push        eax
 0054209F    push        0F8
 005420A4    lea         edx,[ebp-118]
 005420AA    push        edx
 005420AB    mov         ecx,dword ptr [ebp-0C]
 005420AE    mov         eax,dword ptr [ebp-1C]
 005420B1    add         ecx,eax
 005420B3    push        ecx
 005420B4    push        dword ptr [ebp-8]
 005420B7    call        KERNEL32.ReadProcessMemory
 005420BC    test        eax,eax
>005420BE    je          00542158
 005420C4    mov         edx,dword ptr [ebp-0C]
 005420C7    mov         ecx,dword ptr [ebp-1C]
 005420CA    add         edx,ecx
 005420CC    movzx       eax,word ptr [ebp-104]
 005420D3    add         edx,eax
 005420D5    add         edx,18
 005420D8    mov         dword ptr [ebp-18],edx
 005420DB    push        28
 005420DD    push        0
 005420DF    lea         edx,[ebp-140]
 005420E5    push        edx
 005420E6    call        0066F904
 005420EB    add         esp,0C
 005420EE    movzx       ecx,word ptr [ebp-112]
 005420F5    mov         eax,dword ptr [ebp+8]
 005420F8    mov         dword ptr [eax],ecx
 005420FA    mov         edx,dword ptr [ebp+0C]
 005420FD    mov         dword ptr [ebp-14],edx
 00542100    xor         ecx,ecx
 00542102    mov         dword ptr [ebp-10],ecx
>00542105    jmp         0054214A
 00542107    lea         eax,[ebp-20]
 0054210A    push        eax
 0054210B    push        28
 0054210D    lea         edx,[ebp-140]
 00542113    push        edx
 00542114    mov         ecx,dword ptr [ebp-10]
 00542117    shl         ecx,3
 0054211A    lea         ecx,[ecx+ecx*4]
 0054211D    mov         eax,dword ptr [ebp-18]
 00542120    add         ecx,eax
 00542122    push        ecx
 00542123    push        dword ptr [ebp-8]
 00542126    call        KERNEL32.ReadProcessMemory
 0054212B    test        eax,eax
>0054212D    je          00542158
 0054212F    push        28
 00542131    lea         edx,[ebp-140]
 00542137    push        edx
 00542138    push        dword ptr [ebp-14]
 0054213B    call        0066F8B8
 00542140    add         esp,0C
 00542143    add         dword ptr [ebp-14],28
 00542147    inc         dword ptr [ebp-10]
 0054214A    movzx       ecx,word ptr [ebp-112]
 00542151    mov         eax,dword ptr [ebp-10]
 00542154    cmp         ecx,eax
>00542156    jg          00542107
 00542158    mov         esp,ebp
 0054215A    pop         ebp
 0054215B    ret         8
end;*}

//00542160
{*procedure sub_00542160(?:TFActiveProcesses; ?:Integer; ?:?);
begin
 00542160    push        ebp
 00542161    mov         ebp,esp
 00542163    add         esp,0FFFFF150
 00542169    push        ebx
 0054216A    mov         dword ptr [ebp-34],ecx
 0054216D    mov         dword ptr [ebp-30],edx
 00542170    mov         dword ptr [ebp-2C],eax
 00542173    mov         eax,6E132C
 00542178    call        0066FECC
 0054217D    mov         edx,dword ptr ds:[6E1020];0x0 gvar_006E1020
 00542183    mov         dword ptr [ebp-6C],edx
 00542186    mov         edx,dword ptr ds:[6E1024];0x0 gvar_006E1024
 0054218C    mov         dword ptr [ebp-68],edx
 0054218F    mov         edx,dword ptr ds:[6E1028];0x0 gvar_006E1028
 00542195    mov         dword ptr [ebp-64],edx
 00542198    push        dword ptr [ebp-30]
 0054219B    push        0
 0054219D    push        410
 005421A2    call        KERNEL32.OpenProcess
 005421A7    mov         dword ptr [ebp-5C],eax
 005421AA    mov         ecx,dword ptr [ebp-5C]
 005421AD    test        ecx,ecx
>005421AF    je          0054264B
 005421B5    push        dword ptr [ebp-2C]
 005421B8    call        00541BDC
 005421BD    pop         ecx
 005421BE    test        al,al
>005421C0    jne         00542289
 005421C6    call        KERNEL32.GetCurrentProcessId
 005421CB    push        eax
 005421CC    push        0F
 005421CE    mov         eax,dword ptr [ebp-2C]
 005421D1    call        dword ptr [eax+230C]
 005421D7    mov         dword ptr [ebp-60],eax
 005421DA    mov         edx,dword ptr [ebp-60]
 005421DD    cmp         edx,0FFFFFFFF
>005421E0    je          005422C8
 005421E6    mov         dword ptr [ebp-28C],128
 005421F0    mov         dword ptr [ebp-4B0],224
 005421FA    push        103
 005421FF    push        0
 00542201    lea         ecx,[ebp-268]
 00542207    push        ecx
 00542208    call        0066F904
 0054220D    add         esp,0C
 00542210    lea         eax,[ebp-28C]
 00542216    push        eax
 00542217    push        dword ptr [ebp-60]
 0054221A    mov         edx,dword ptr [ebp-2C]
 0054221D    call        dword ptr [edx+2310]
 00542223    lea         ecx,[ebp-4B0]
 00542229    push        ecx
 0054222A    push        dword ptr [ebp-60]
 0054222D    mov         eax,dword ptr [ebp-2C]
 00542230    call        dword ptr [eax+2318]
>00542236    jmp         00542268
 00542238    lea         edx,[ebp-4B0]
 0054223E    push        edx
 0054223F    push        dword ptr [ebp-60]
 00542242    mov         ecx,dword ptr [ebp-2C]
 00542245    call        dword ptr [ecx+231C]
 0054224B    mov         eax,dword ptr [ebp-284]
 00542251    mov         edx,dword ptr [ebp-30]
 00542254    cmp         eax,edx
>00542256    jne         00542268
 00542258    mov         ecx,dword ptr [ebp-49C]
 0054225E    mov         dword ptr [ebp-6C],ecx
 00542261    mov         dword ptr [ebp-6C],400000
 00542268    lea         eax,[ebp-28C]
 0054226E    push        eax
 0054226F    push        dword ptr [ebp-60]
 00542272    mov         edx,dword ptr [ebp-2C]
 00542275    call        dword ptr [edx+2314]
 0054227B    test        eax,eax
>0054227D    jne         00542238
 0054227F    push        dword ptr [ebp-60]
 00542282    call        KERNEL32.CloseHandle
>00542287    jmp         005422C8
 00542289    mov         ecx,dword ptr [ebp-2C]
 0054228C    add         ecx,308
 00542292    push        ecx
 00542293    push        1000
 00542298    mov         eax,dword ptr [ebp-2C]
 0054229B    add         eax,130C
 005422A0    push        eax
 005422A1    push        dword ptr [ebp-5C]
 005422A4    mov         edx,dword ptr [ebp-2C]
 005422A7    call        dword ptr [edx+2324]
 005422AD    push        0C
 005422AF    lea         ecx,[ebp-6C]
 005422B2    push        ecx
 005422B3    mov         eax,dword ptr [ebp-2C]
 005422B6    push        dword ptr [eax+130C]
 005422BC    push        dword ptr [ebp-5C]
 005422BF    mov         edx,dword ptr [ebp-2C]
 005422C2    call        dword ptr [edx+232C]
 005422C8    mov         ecx,dword ptr [ebp-6C]
 005422CB    test        ecx,ecx
>005422CD    jne         00542319
 005422CF    lea         eax,[ebp-28]
 005422D2    push        eax
 005422D3    push        0
 005422D5    push        0
 005422D7    push        0
 005422D9    push        1
 005422DB    push        4B33C8;sub_004B33C8
 005422E0    push        0
 005422E2    mov         word ptr [ebp-18],8
 005422E8    mov         edx,6E10E8
 005422ED    mov         ecx,dword ptr [ebp-30]
 005422F0    add         edx,ecx
 005422F2    lea         eax,[ebp-4]
 005422F5    call        0067DAB4
 005422FA    inc         dword ptr [ebp-0C]
 005422FD    mov         ecx,dword ptr [eax]
 005422FF    mov         dl,1
 00542301    mov         eax,[00656774];Exception
 00542306    call        Exception.Create;Exception.Create
 0054230B    push        eax
 0054230C    push        401AC0
 00542311    call        0067AD11
 00542316    add         esp,24
 00542319    lea         edx,[ebp-40]
 0054231C    push        edx
 0054231D    push        4
 0054231F    lea         ecx,[ebp-3C]
 00542322    push        ecx
 00542323    mov         eax,dword ptr [ebp-6C]
 00542326    add         eax,3C
 00542329    push        eax
 0054232A    push        dword ptr [ebp-5C]
 0054232D    call        KERNEL32.ReadProcessMemory
 00542332    lea         edx,[ebp-40]
 00542335    push        edx
 00542336    push        0F8
 0054233B    lea         ecx,[ebp-164]
 00542341    push        ecx
 00542342    mov         eax,dword ptr [ebp-6C]
 00542345    mov         edx,dword ptr [ebp-3C]
 00542348    add         eax,edx
 0054234A    push        eax
 0054234B    push        dword ptr [ebp-5C]
 0054234E    call        KERNEL32.ReadProcessMemory
 00542353    lea         ecx,[ebp-0EB0]
 00542359    push        ecx
 0054235A    lea         eax,[ebp-40]
 0054235D    push        eax
 0054235E    mov         ecx,dword ptr [ebp-6C]
 00542361    mov         edx,dword ptr [ebp-5C]
 00542364    mov         eax,dword ptr [ebp-2C]
 00542367    call        00542068
 0054236C    mov         eax,dword ptr [ebp-34]
 0054236F    call        0064902C
 00542374    push        dword ptr [ebp-110]
 0054237A    call        0066EC88
 0054237F    pop         ecx
 00542380    mov         dword ptr [ebp-50],eax
 00542383    lea         edx,[ebp-40]
 00542386    push        edx
 00542387    push        dword ptr [ebp-110]
 0054238D    push        dword ptr [ebp-50]
 00542390    push        dword ptr [ebp-6C]
 00542393    push        dword ptr [ebp-5C]
 00542396    call        KERNEL32.ReadProcessMemory
 0054239B    mov         ecx,dword ptr [ebp-110]
 005423A1    mov         edx,dword ptr [ebp-50]
 005423A4    mov         eax,dword ptr [ebp-34]
 005423A7    call        TStream.WriteBuffer
 005423AC    push        dword ptr [ebp-50]
 005423AF    call        0066EAC0
 005423B4    pop         ecx
 005423B5    lea         ecx,[ebp-0E80]
 005423BB    mov         eax,dword ptr [ecx]
 005423BD    mov         edx,dword ptr [ebp-44]
 005423C0    cmp         eax,edx
>005423C2    jbe         005423D1
 005423C4    lea         ecx,[ebp-0E80]
 005423CA    mov         eax,dword ptr [ecx]
 005423CC    mov         dword ptr [ebp-44],eax
>005423CF    jmp         005423DA
 005423D1    mov         edx,dword ptr [ebp-148]
 005423D7    mov         dword ptr [ebp-44],edx
 005423DA    mov         eax,dword ptr [ebp-34]
 005423DD    call        0064902C
 005423E2    push        dword ptr [ebp-114]
 005423E8    call        0066EC88
 005423ED    pop         ecx
 005423EE    mov         dword ptr [ebp-50],eax
 005423F1    lea         edx,[ebp-40]
 005423F4    push        edx
 005423F5    push        dword ptr [ebp-114]
 005423FB    push        dword ptr [ebp-50]
 005423FE    push        dword ptr [ebp-6C]
 00542401    push        dword ptr [ebp-5C]
 00542404    call        KERNEL32.ReadProcessMemory
 00542409    mov         ecx,dword ptr [ebp-114]
 0054240F    mov         edx,dword ptr [ebp-50]
 00542412    mov         eax,dword ptr [ebp-34]
 00542415    call        TStream.WriteBuffer
 0054241A    push        dword ptr [ebp-50]
 0054241D    call        0066EAC0
 00542422    pop         ecx
 00542423    mov         edx,dword ptr [ebp-3C]
 00542426    add         edx,6
 00542429    xor         ecx,ecx
 0054242B    mov         eax,dword ptr [ebp-34]
 0054242E    mov         ebx,dword ptr [eax]
 00542430    call        dword ptr [ebx+10]
 00542433    mov         word ptr [ebp-36],2
 00542439    lea         edx,[ebp-36]
 0054243C    mov         ecx,2
 00542441    mov         eax,dword ptr [ebp-34]
 00542444    call        TStream.WriteBuffer
 00542449    mov         edx,dword ptr [ebp-3C]
 0054244C    add         edx,0F8
 00542452    xor         ecx,ecx
 00542454    mov         eax,dword ptr [ebp-34]
 00542457    mov         ebx,dword ptr [eax]
 00542459    call        dword ptr [ebx+10]
 0054245C    push        8
 0054245E    push        0
 00542460    lea         eax,[ebp-58]
 00542463    push        eax
 00542464    call        0066F904
 00542469    add         esp,0C
 0054246C    mov         byte ptr [ebp-58],43
 00542470    mov         byte ptr [ebp-57],4F
 00542474    mov         byte ptr [ebp-56],44
 00542478    mov         byte ptr [ebp-55],45
 0054247C    lea         edx,[ebp-58]
 0054247F    mov         ecx,8
 00542484    mov         eax,dword ptr [ebp-34]
 00542487    call        TStream.WriteBuffer
 0054248C    mov         edx,dword ptr [ebp-44]
 0054248F    mov         dword ptr [ebp-4C],edx
 00542492    lea         edx,[ebp-4C]
 00542495    mov         ecx,4
 0054249A    mov         eax,dword ptr [ebp-34]
 0054249D    call        TStream.WriteBuffer
 005424A2    mov         eax,dword ptr [ebp-138]
 005424A8    mov         dword ptr [ebp-4C],eax
 005424AB    lea         edx,[ebp-4C]
 005424AE    mov         ecx,4
 005424B3    mov         eax,dword ptr [ebp-34]
 005424B6    call        TStream.WriteBuffer
 005424BB    mov         edx,dword ptr [ebp-44]
 005424BE    mov         dword ptr [ebp-4C],edx
 005424C1    lea         edx,[ebp-4C]
 005424C4    mov         ecx,4
 005424C9    mov         eax,dword ptr [ebp-34]
 005424CC    call        TStream.WriteBuffer
 005424D1    mov         eax,dword ptr [ebp-110]
 005424D7    mov         dword ptr [ebp-4C],eax
 005424DA    lea         edx,[ebp-4C]
 005424DD    mov         ecx,4
 005424E2    mov         eax,dword ptr [ebp-34]
 005424E5    call        TStream.WriteBuffer
 005424EA    xor         edx,edx
 005424EC    mov         dword ptr [ebp-4C],edx
 005424EF    lea         edx,[ebp-4C]
 005424F2    mov         ecx,4
 005424F7    mov         eax,dword ptr [ebp-34]
 005424FA    call        TStream.WriteBuffer
 005424FF    lea         edx,[ebp-4C]
 00542502    mov         ecx,4
 00542507    mov         eax,dword ptr [ebp-34]
 0054250A    call        TStream.WriteBuffer
 0054250F    lea         edx,[ebp-4C]
 00542512    mov         ecx,4
 00542517    mov         eax,dword ptr [ebp-34]
 0054251A    call        TStream.WriteBuffer
 0054251F    mov         dword ptr [ebp-4C],60000020
 00542526    lea         edx,[ebp-4C]
 00542529    mov         ecx,4
 0054252E    mov         eax,dword ptr [ebp-34]
 00542531    call        TStream.WriteBuffer
 00542536    push        8
 00542538    push        0
 0054253A    lea         eax,[ebp-58]
 0054253D    push        eax
 0054253E    call        0066F904
 00542543    add         esp,0C
 00542546    mov         byte ptr [ebp-58],2E
 0054254A    mov         byte ptr [ebp-57],72
 0054254E    mov         byte ptr [ebp-56],73
 00542552    mov         byte ptr [ebp-55],72
 00542556    mov         byte ptr [ebp-54],63
 0054255A    lea         edx,[ebp-58]
 0054255D    mov         ecx,8
 00542562    mov         eax,dword ptr [ebp-34]
 00542565    call        TStream.WriteBuffer
 0054256A    mov         edx,dword ptr [ebp-0D8]
 00542570    mov         dword ptr [ebp-4C],edx
 00542573    lea         edx,[ebp-4C]
 00542576    mov         ecx,4
 0054257B    mov         eax,dword ptr [ebp-34]
 0054257E    call        TStream.WriteBuffer
 00542583    mov         eax,dword ptr [ebp-0DC]
 00542589    mov         dword ptr [ebp-4C],eax
 0054258C    lea         edx,[ebp-4C]
 0054258F    mov         ecx,4
 00542594    mov         eax,dword ptr [ebp-34]
 00542597    call        TStream.WriteBuffer
 0054259C    mov         edx,dword ptr [ebp-0D8]
 005425A2    mov         dword ptr [ebp-4C],edx
 005425A5    lea         edx,[ebp-4C]
 005425A8    mov         ecx,4
 005425AD    mov         eax,dword ptr [ebp-34]
 005425B0    call        TStream.WriteBuffer
 005425B5    mov         eax,dword ptr [ebp-48]
 005425B8    mov         dword ptr [ebp-4C],eax
 005425BB    lea         edx,[ebp-4C]
 005425BE    mov         ecx,4
 005425C3    mov         eax,dword ptr [ebp-34]
 005425C6    call        TStream.WriteBuffer
 005425CB    xor         edx,edx
 005425CD    mov         dword ptr [ebp-4C],edx
 005425D0    lea         edx,[ebp-4C]
 005425D3    mov         ecx,4
 005425D8    mov         eax,dword ptr [ebp-34]
 005425DB    call        TStream.WriteBuffer
 005425E0    lea         edx,[ebp-4C]
 005425E3    mov         ecx,4
 005425E8    mov         eax,dword ptr [ebp-34]
 005425EB    call        TStream.WriteBuffer
 005425F0    lea         edx,[ebp-4C]
 005425F3    mov         ecx,4
 005425F8    mov         eax,dword ptr [ebp-34]
 005425FB    call        TStream.WriteBuffer
 00542600    mov         dword ptr [ebp-4C],50000040
 00542607    lea         edx,[ebp-4C]
 0054260A    mov         ecx,4
 0054260F    mov         eax,dword ptr [ebp-34]
 00542612    call        TStream.WriteBuffer
 00542617    mov         eax,dword ptr [ebp-130]
 0054261D    mov         edx,dword ptr [ebp-110]
 00542623    add         eax,edx
 00542625    push        eax
 00542626    mov         eax,dword ptr [ebp-34]
 00542629    call        TStream.GetSize
 0054262E    mov         ecx,eax
 00542630    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 00542636    mov         eax,dword ptr [edx]
 00542638    mov         edx,dword ptr [ebp-34]
 0054263B    mov         edx,dword ptr [edx+4]
 0054263E    call        0040BDA4
 00542643    push        dword ptr [ebp-5C]
 00542646    call        KERNEL32.CloseHandle
 0054264B    mov         eax,dword ptr [ebp-28]
 0054264E    mov         fs:[00000000],eax
 00542654    pop         ebx
 00542655    mov         esp,ebp
 00542657    pop         ebp
 00542658    ret         0C
end;*}

//0054265C
procedure TFActiveProcesses.btnDumpClick(Sender:TObject);
begin
{*
 0054265C    push        ebp
 0054265D    mov         ebp,esp
 0054265F    add         esp,0FFFFFF90
 00542662    push        ebx
 00542663    push        esi
 00542664    push        edi
 00542665    mov         dword ptr [ebp-54],edx
 00542668    mov         dword ptr [ebp-50],eax
 0054266B    mov         eax,6E13E0
 00542670    call        0066FECC
 00542675    mov         word ptr [ebp-3C],8
 0054267B    lea         eax,[ebp-8]
 0054267E    call        00401EA8
 00542683    inc         dword ptr [ebp-30]
 00542686    mov         word ptr [ebp-3C],14
 0054268C    mov         edx,dword ptr [ebp-50]
 0054268F    mov         eax,dword ptr [edx+2F8];TFActiveProcesses.lvProcesses:TListView
 00542695    call        006288D8
 0054269A    test        eax,eax
>0054269C    je          00542869
 005426A2    mov         word ptr [ebp-3C],20
 005426A8    mov         edx,dword ptr [ebp-50]
 005426AB    mov         eax,dword ptr [edx+2F8];TFActiveProcesses.lvProcesses:TListView
 005426B1    call        006288D8
 005426B6    mov         dword ptr [ebp-68],eax
 005426B9    mov         word ptr [ebp-3C],2C
 005426BF    lea         eax,[ebp-0C]
 005426C2    call        00401EA8
 005426C7    mov         ecx,eax
 005426C9    inc         dword ptr [ebp-30]
 005426CC    mov         edx,dword ptr [ebp-68]
 005426CF    add         edx,24
 005426D2    mov         eax,6E10FF
 005426D7    call        0067E37C
 005426DC    lea         eax,[ebp-0C]
 005426DF    mov         eax,dword ptr [eax]
 005426E1    call        StrToInt
 005426E6    mov         dword ptr [ebp-58],eax
 005426E9    dec         dword ptr [ebp-30]
 005426EC    lea         eax,[ebp-0C]
 005426EF    mov         edx,2
 005426F4    call        0067DCA0
 005426F9    mov         dl,1
 005426FB    mov         eax,[00642BA0];TMemoryStream
 00542700    call        004290EC
 00542705    mov         dword ptr [ebp-6C],eax
 00542708    lea         ecx,[ebp-5C]
 0054270B    push        ecx
 0054270C    lea         eax,[ebp-60]
 0054270F    push        eax
 00542710    lea         edx,[ebp-64]
 00542713    push        edx
 00542714    mov         ecx,dword ptr [ebp-6C]
 00542717    mov         edx,dword ptr [ebp-58]
 0054271A    mov         eax,dword ptr [ebp-50]
 0054271D    call        00542160
 00542722    mov         eax,dword ptr [ebp-6C]
 00542725    call        TStream.GetSize
 0054272A    cmp         edx,0
>0054272D    jne         00542781
 0054272F    cmp         eax,0
>00542732    jne         00542781
 00542734    mov         edx,dword ptr [ebp-6C]
 00542737    mov         dword ptr [ebp-14],edx
 0054273A    mov         ecx,dword ptr [ebp-14]
 0054273D    test        ecx,ecx
>0054273F    je          00542762
 00542741    mov         eax,dword ptr [ebp-14]
 00542744    mov         edx,dword ptr [eax]
 00542746    mov         dword ptr [ebp-10],edx
 00542749    mov         word ptr [ebp-3C],44
 0054274F    mov         edx,3
 00542754    mov         eax,dword ptr [ebp-14]
 00542757    mov         ecx,dword ptr [eax]
 00542759    call        dword ptr [ecx-4]
 0054275C    mov         word ptr [ebp-3C],38
 00542762    dec         dword ptr [ebp-30]
 00542765    lea         eax,[ebp-8]
 00542768    mov         edx,2
 0054276D    call        0067DCA0
 00542772    mov         ecx,dword ptr [ebp-4C]
 00542775    mov         dword ptr fs:[0],ecx
>0054277C    jmp         0054288B
 00542781    mov         word ptr [ebp-3C],50
 00542787    mov         edx,6E1102
 0054278C    lea         eax,[ebp-18]
 0054278F    call        0067DAB4
 00542794    inc         dword ptr [ebp-30]
 00542797    mov         edx,dword ptr [eax]
 00542799    mov         eax,dword ptr [ebp-6C]
 0054279C    call        00648F90
 005427A1    dec         dword ptr [ebp-30]
 005427A4    lea         eax,[ebp-18]
 005427A7    mov         edx,2
 005427AC    call        0067DCA0
 005427B1    mov         ecx,dword ptr [ebp-6C]
 005427B4    mov         dword ptr [ebp-20],ecx
 005427B7    mov         eax,dword ptr [ebp-20]
 005427BA    test        eax,eax
>005427BC    je          005427DF
 005427BE    mov         edx,dword ptr [ebp-20]
 005427C1    mov         ecx,dword ptr [edx]
 005427C3    mov         dword ptr [ebp-1C],ecx
 005427C6    mov         word ptr [ebp-3C],68
 005427CC    mov         edx,3
 005427D1    mov         eax,dword ptr [ebp-20]
 005427D4    mov         ecx,dword ptr [eax]
 005427D6    call        dword ptr [ecx-4]
 005427D9    mov         word ptr [ebp-3C],5C
 005427DF    push        0
 005427E1    push        0
 005427E3    mov         word ptr [ebp-3C],74
 005427E9    mov         edx,6E1111
 005427EE    lea         eax,[ebp-24]
 005427F1    call        0067DAB4
 005427F6    inc         dword ptr [ebp-30]
 005427F9    mov         ecx,dword ptr [eax]
 005427FB    mov         eax,[006E9C8C];^_FMain_11011981
 00542800    mov         eax,dword ptr [eax]
 00542802    xor         edx,edx
 00542804    call        004236D4
 00542809    dec         dword ptr [ebp-30]
 0054280C    lea         eax,[ebp-24]
 0054280F    mov         edx,2
 00542814    call        0067DCA0
 00542819    mov         word ptr [ebp-3C],14
>0054281F    jmp         00542869
 00542821    mov         word ptr [ebp-3C],80
 00542827    lea         eax,[ebp-28]
 0054282A    call        00401EA8
 0054282F    mov         ecx,eax
 00542831    inc         dword ptr [ebp-30]
 00542834    mov         edx,dword ptr [ebp-4]
 00542837    add         edx,4
 0054283A    mov         eax,6E1120
 0054283F    call        0067E37C
 00542844    lea         eax,[ebp-28]
 00542847    mov         eax,dword ptr [eax]
 00542849    call        005ECEB0
 0054284E    dec         dword ptr [ebp-30]
 00542851    lea         eax,[ebp-28]
 00542854    mov         edx,2
 00542859    call        0067DCA0
 0054285E    mov         word ptr [ebp-3C],28
 00542864    call        0067AF32
 00542869    mov         eax,dword ptr [ebp-50]
 0054286C    call        005D3F3C
 00542871    dec         dword ptr [ebp-30]
 00542874    lea         eax,[ebp-8]
 00542877    mov         edx,2
 0054287C    call        0067DCA0
 00542881    mov         ecx,dword ptr [ebp-4C]
 00542884    mov         dword ptr fs:[0],ecx
 0054288B    pop         edi
 0054288C    pop         esi
 0054288D    pop         ebx
 0054288E    mov         esp,ebp
 00542890    pop         ebp
 00542891    ret
*}
end;

end.