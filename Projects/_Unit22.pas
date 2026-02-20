//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit22;

interface

uses
  SysUtils, Classes;

type
  TGraphKind = (pgBar, pgLine);
    @@Cspin@Initialize; stdcall;//00549F48
    @@Cspin@Finalize; stdcall;//00549F58
    @TPerformanceGraph@$bctr$qqrp18Classes@TComponent; stdcall;//00549F68
    @TPerformanceGraph@GetBandCount$qqrv; stdcall;//0054A16C
    @TPerformanceGraph@$bdtr$qqrv; stdcall;//0054A1A8
    @TPerformanceGraph@Initialize$qqrl; stdcall;//0054A244
    @TPerformanceGraph@Paint$qqrv; stdcall;//0054A4A0
    procedure @TPerformanceGraph@SetGraphKind$qqr10TGraphKind(Value:TGraphKind); stdcall;//0054A528
    procedure @TPerformanceGraph@SetForeColor$qqr15Graphics@TColor(Value:TColor); stdcall;//0054A55C
    procedure @TPerformanceGraph@SetBackColor$qqr15Graphics@TColor(Value:TColor); stdcall;//0054A590
    procedure @TPerformanceGraph@SetGridSize$qqrl(Value:long); stdcall;//0054A5C4
    procedure @TPerformanceGraph@SetStepSize$qqrl(Value:long); stdcall;//0054A604
    procedure @TPerformanceGraph@SetScale$qqrl(Value:long); stdcall;//0054A64C
    @TPerformanceGraph@RoundUp$qqrll; stdcall;//0054A6B8
    procedure @TPerformanceGraph@SetGradient$qqrl(Value:long); stdcall;//0054A6EC
    procedure @TPerformanceGraph@SetGridlines$qqro(Value:bool); stdcall;//0054A720
    procedure @TPerformanceGraph@SetPenWidth$qqrl(Value:long); stdcall;//0054A754
    @TPerformanceGraph@PaintBar$qqr15Graphics@TColorll; stdcall;//0054A7A0
    @TPerformanceGraph@PaintLine$qqr15Graphics@TColorll; stdcall;//0054A888
    @TPerformanceGraph@DataPoint$qqr15Graphics@TColorl; stdcall;//0054A984
    //function sub_0054AAB4(?:ERangeError; ?:?):?;//0054AAB4
    @TPerformanceGraph@ScrollGraph$qqrv; stdcall;//0054AC18
    @TPerformanceGraph@DisplayPoints$qqrl; stdcall;//0054ADD0
    @TPerformanceGraph@LastY$qqri; stdcall;//0054AF3C
    @TPerformanceGraph@ReallocHistory$qqrv; stdcall;//0054AF64
    @TPerformanceGraph@FirstY$qqrv; stdcall;//0054B090
    @TPerformanceGraph@NextY$qqri; stdcall;//0054B0A4
    @TPerformanceGraph@Update$qqrv; stdcall;//0054B0E0
    @TPerformanceGraph@ShiftY$qqrv; stdcall;//0054B1E4
    @TPerformanceGraph@Replay$qqrv; stdcall;//0054B26C
    //procedure sub_0054B368(?:Double; ?:?);//0054B368
    //procedure sub_0054B488(?:Double; ?:?);//0054B488
    procedure sub_0054B734;//0054B734
    procedure sub_0054B78C;//0054B78C
    @$xp$17TPerformanceGraph; stdcall;//0054B7E8

implementation

//0054A528
procedure @TPerformanceGraph@SetGraphKind$qqr10TGraphKind(Value:TGraphKind); stdcall;
begin
{*
 0054A528    push        ebp
 0054A529    mov         ebp,esp
 0054A52B    add         esp,0FFFFFFF8
 0054A52E    mov         byte ptr [ebp-5],dl
 0054A531    mov         dword ptr [ebp-4],eax
 0054A534    mov         al,byte ptr [ebp-5]
 0054A537    mov         edx,dword ptr [ebp-4]
 0054A53A    cmp         al,byte ptr [edx+168]
>0054A540    je          0054A556
 0054A542    mov         cl,byte ptr [ebp-5]
 0054A545    mov         eax,dword ptr [ebp-4]
 0054A548    mov         byte ptr [eax+168],cl
 0054A54E    mov         eax,dword ptr [ebp-4]
 0054A551    call        @TPerformanceGraph@Replay$qqrv
 0054A556    pop         ecx
 0054A557    pop         ecx
 0054A558    pop         ebp
 0054A559    ret
*}
end;

//0054A55C
procedure @TPerformanceGraph@SetForeColor$qqr15Graphics@TColor(Value:TColor); stdcall;
begin
{*
 0054A55C    push        ebp
 0054A55D    mov         ebp,esp
 0054A55F    add         esp,0FFFFFFF8
 0054A562    mov         dword ptr [ebp-8],edx
 0054A565    mov         dword ptr [ebp-4],eax
 0054A568    mov         eax,dword ptr [ebp-8]
 0054A56B    mov         edx,dword ptr [ebp-4]
 0054A56E    cmp         eax,dword ptr [edx+16C]
>0054A574    je          0054A58A
 0054A576    mov         ecx,dword ptr [ebp-8]
 0054A579    mov         eax,dword ptr [ebp-4]
 0054A57C    mov         dword ptr [eax+16C],ecx
 0054A582    mov         eax,dword ptr [ebp-4]
 0054A585    call        @TPerformanceGraph@Replay$qqrv
 0054A58A    pop         ecx
 0054A58B    pop         ecx
 0054A58C    pop         ebp
 0054A58D    ret
*}
end;

//0054A590
procedure @TPerformanceGraph@SetBackColor$qqr15Graphics@TColor(Value:TColor); stdcall;
begin
{*
 0054A590    push        ebp
 0054A591    mov         ebp,esp
 0054A593    add         esp,0FFFFFFF8
 0054A596    mov         dword ptr [ebp-8],edx
 0054A599    mov         dword ptr [ebp-4],eax
 0054A59C    mov         eax,dword ptr [ebp-8]
 0054A59F    mov         edx,dword ptr [ebp-4]
 0054A5A2    cmp         eax,dword ptr [edx+170]
>0054A5A8    je          0054A5BE
 0054A5AA    mov         ecx,dword ptr [ebp-8]
 0054A5AD    mov         eax,dword ptr [ebp-4]
 0054A5B0    mov         dword ptr [eax+170],ecx
 0054A5B6    mov         eax,dword ptr [ebp-4]
 0054A5B9    call        @TPerformanceGraph@Replay$qqrv
 0054A5BE    pop         ecx
 0054A5BF    pop         ecx
 0054A5C0    pop         ebp
 0054A5C1    ret
*}
end;

//0054A5C4
procedure @TPerformanceGraph@SetGridSize$qqrl(Value:long); stdcall;
begin
{*
 0054A5C4    push        ebp
 0054A5C5    mov         ebp,esp
 0054A5C7    add         esp,0FFFFFFF8
 0054A5CA    mov         dword ptr [ebp-8],edx
 0054A5CD    mov         dword ptr [ebp-4],eax
 0054A5D0    mov         eax,dword ptr [ebp-8]
 0054A5D3    mov         edx,dword ptr [ebp-4]
 0054A5D6    cmp         eax,dword ptr [edx+174]
>0054A5DC    je          0054A5FF
 0054A5DE    cmp         dword ptr [ebp-8],2
>0054A5E2    jge         0054A5EB
 0054A5E4    mov         dword ptr [ebp-8],2
 0054A5EB    mov         ecx,dword ptr [ebp-8]
 0054A5EE    mov         eax,dword ptr [ebp-4]
 0054A5F1    mov         dword ptr [eax+174],ecx
 0054A5F7    mov         eax,dword ptr [ebp-4]
 0054A5FA    call        @TPerformanceGraph@Replay$qqrv
 0054A5FF    pop         ecx
 0054A600    pop         ecx
 0054A601    pop         ebp
 0054A602    ret
*}
end;

//0054A604
procedure @TPerformanceGraph@SetStepSize$qqrl(Value:long); stdcall;
begin
{*
 0054A604    push        ebp
 0054A605    mov         ebp,esp
 0054A607    add         esp,0FFFFFFF8
 0054A60A    mov         dword ptr [ebp-8],edx
 0054A60D    mov         dword ptr [ebp-4],eax
 0054A610    mov         eax,dword ptr [ebp-8]
 0054A613    mov         edx,dword ptr [ebp-4]
 0054A616    cmp         eax,dword ptr [edx+178]
>0054A61C    je          0054A647
 0054A61E    cmp         dword ptr [ebp-8],1
>0054A622    jge         0054A62B
 0054A624    mov         dword ptr [ebp-8],1
 0054A62B    mov         ecx,dword ptr [ebp-8]
 0054A62E    mov         eax,dword ptr [ebp-4]
 0054A631    mov         dword ptr [eax+178],ecx
 0054A637    mov         eax,dword ptr [ebp-4]
 0054A63A    call        @TPerformanceGraph@ReallocHistory$qqrv
 0054A63F    mov         eax,dword ptr [ebp-4]
 0054A642    call        @TPerformanceGraph@Replay$qqrv
 0054A647    pop         ecx
 0054A648    pop         ecx
 0054A649    pop         ebp
 0054A64A    ret
*}
end;

//0054A64C
procedure @TPerformanceGraph@SetScale$qqrl(Value:long); stdcall;
begin
{*
 0054A64C    push        ebp
 0054A64D    mov         ebp,esp
 0054A64F    add         esp,0FFFFFFF4
 0054A652    push        ebx
 0054A653    mov         dword ptr [ebp-8],edx
 0054A656    mov         dword ptr [ebp-4],eax
 0054A659    mov         eax,dword ptr [ebp-8]
 0054A65C    mov         edx,dword ptr [ebp-4]
 0054A65F    cmp         eax,dword ptr [edx+17C]
>0054A665    je          0054A6B3
 0054A667    mov         ecx,dword ptr [ebp-4]
 0054A66A    mov         ecx,dword ptr [ecx+180]
 0054A670    mov         edx,dword ptr [ebp-8]
 0054A673    mov         eax,dword ptr [ebp-4]
 0054A676    call        @TPerformanceGraph@RoundUp$qqrll
 0054A67B    mov         edx,dword ptr [ebp-4]
 0054A67E    mov         dword ptr [edx+17C],eax
 0054A684    mov         eax,dword ptr [ebp-4]
 0054A687    cmp         word ptr [eax+192],0
>0054A68F    je          0054A6AB
 0054A691    mov         ecx,dword ptr [ebp-4]
 0054A694    add         ecx,190
 0054A69A    mov         dword ptr [ebp-0C],ecx
 0054A69D    mov         eax,dword ptr [ebp-0C]
 0054A6A0    mov         eax,dword ptr [eax+4]
 0054A6A3    mov         ebx,dword ptr [ebp-0C]
 0054A6A6    mov         edx,dword ptr [ebp-4]
 0054A6A9    call        dword ptr [ebx]
 0054A6AB    mov         eax,dword ptr [ebp-4]
 0054A6AE    call        @TPerformanceGraph@Replay$qqrv
 0054A6B3    pop         ebx
 0054A6B4    mov         esp,ebp
 0054A6B6    pop         ebp
 0054A6B7    ret
*}
end;

//0054A6EC
procedure @TPerformanceGraph@SetGradient$qqrl(Value:long); stdcall;
begin
{*
 0054A6EC    push        ebp
 0054A6ED    mov         ebp,esp
 0054A6EF    add         esp,0FFFFFFF8
 0054A6F2    mov         dword ptr [ebp-8],edx
 0054A6F5    mov         dword ptr [ebp-4],eax
 0054A6F8    mov         eax,dword ptr [ebp-8]
 0054A6FB    mov         edx,dword ptr [ebp-4]
 0054A6FE    cmp         eax,dword ptr [edx+180]
>0054A704    je          0054A71A
 0054A706    mov         ecx,dword ptr [ebp-8]
 0054A709    mov         eax,dword ptr [ebp-4]
 0054A70C    mov         dword ptr [eax+180],ecx
 0054A712    mov         eax,dword ptr [ebp-4]
 0054A715    call        @TPerformanceGraph@Replay$qqrv
 0054A71A    pop         ecx
 0054A71B    pop         ecx
 0054A71C    pop         ebp
 0054A71D    ret
*}
end;

//0054A720
procedure @TPerformanceGraph@SetGridlines$qqro(Value:bool); stdcall;
begin
{*
 0054A720    push        ebp
 0054A721    mov         ebp,esp
 0054A723    add         esp,0FFFFFFF8
 0054A726    mov         byte ptr [ebp-5],dl
 0054A729    mov         dword ptr [ebp-4],eax
 0054A72C    mov         al,byte ptr [ebp-5]
 0054A72F    mov         edx,dword ptr [ebp-4]
 0054A732    cmp         al,byte ptr [edx+184]
>0054A738    je          0054A74E
 0054A73A    mov         cl,byte ptr [ebp-5]
 0054A73D    mov         eax,dword ptr [ebp-4]
 0054A740    mov         byte ptr [eax+184],cl
 0054A746    mov         eax,dword ptr [ebp-4]
 0054A749    call        @TPerformanceGraph@Replay$qqrv
 0054A74E    pop         ecx
 0054A74F    pop         ecx
 0054A750    pop         ebp
 0054A751    ret
*}
end;

//0054A754
procedure @TPerformanceGraph@SetPenWidth$qqrl(Value:long); stdcall;
begin
{*
 0054A754    push        ebp
 0054A755    mov         ebp,esp
 0054A757    add         esp,0FFFFFFF8
 0054A75A    mov         dword ptr [ebp-8],edx
 0054A75D    mov         dword ptr [ebp-4],eax
 0054A760    mov         eax,dword ptr [ebp-8]
 0054A763    mov         edx,dword ptr [ebp-4]
 0054A766    cmp         eax,dword ptr [edx+188]
>0054A76C    je          0054A79C
 0054A76E    mov         ecx,dword ptr [ebp-8]
 0054A771    mov         eax,dword ptr [ebp-4]
 0054A774    mov         dword ptr [eax+188],ecx
 0054A77A    mov         edx,dword ptr [ebp-4]
 0054A77D    mov         ecx,dword ptr [edx+160]
 0054A783    mov         eax,dword ptr [ecx+10]
 0054A786    mov         edx,dword ptr [ebp-4]
 0054A789    mov         edx,dword ptr [edx+188]
 0054A78F    call        TPen.SetWidth
 0054A794    mov         eax,dword ptr [ebp-4]
 0054A797    call        @TPerformanceGraph@Replay$qqrv
 0054A79C    pop         ecx
 0054A79D    pop         ecx
 0054A79E    pop         ebp
 0054A79F    ret
*}
end;

//0054AAB4
{*function sub_0054AAB4(?:ERangeError; ?:?):?;
begin
 0054AAB4    push        ebp
 0054AAB5    mov         ebp,esp
 0054AAB7    add         esp,0FFFFFFCC
 0054AABA    mov         byte ptr [ebp-10],dl
 0054AABD    test        dl,dl
>0054AABF    jle         0054AAC6
 0054AAC1    call        0067EF6C
 0054AAC6    mov         dword ptr [ebp-4],ecx
 0054AAC9    mov         byte ptr [ebp-31],dl
 0054AACC    mov         dword ptr [ebp-8],eax
 0054AACF    mov         eax,6E3250
 0054AAD4    call        0066FECC
 0054AAD9    mov         dword ptr [ebp-14],1
 0054AAE0    lea         edx,[ebp-4]
 0054AAE3    lea         eax,[ebp-4]
 0054AAE6    call        0067DAEC
 0054AAEB    inc         dword ptr [ebp-14]
 0054AAEE    mov         word ptr [ebp-20],8
 0054AAF4    mov         word ptr [ebp-20],14
 0054AAFA    mov         word ptr [ebp-20],20
 0054AB00    lea         edx,[ebp-4]
 0054AB03    lea         eax,[ebp-0C]
 0054AB06    call        0067DAEC
 0054AB0B    inc         dword ptr [ebp-14]
 0054AB0E    mov         ecx,dword ptr [eax]
 0054AB10    xor         edx,edx
 0054AB12    mov         eax,dword ptr [ebp-8]
 0054AB15    call        0054B368
 0054AB1A    add         dword ptr [ebp-14],5
 0054AB1E    dec         dword ptr [ebp-14]
 0054AB21    lea         eax,[ebp-0C]
 0054AB24    mov         edx,2
 0054AB29    call        0067DCA0
 0054AB2E    mov         word ptr [ebp-20],14
 0054AB34    dec         dword ptr [ebp-14]
 0054AB37    lea         eax,[ebp-4]
 0054AB3A    mov         edx,2
 0054AB3F    call        0067DCA0
 0054AB44    mov         ecx,dword ptr [ebp-30]
 0054AB47    mov         dword ptr fs:[0],ecx
 0054AB4E    mov         eax,dword ptr [ebp-8]
 0054AB51    cmp         byte ptr [ebp-31],0
>0054AB55    je          0054AB5C
 0054AB57    call        0067EF79
 0054AB5C    mov         esp,ebp
 0054AB5E    pop         ebp
 0054AB5F    ret
end;*}

//0054B368
{*procedure sub_0054B368(?:Double; ?:?);
begin
 0054B368    push        ebp
 0054B369    mov         ebp,esp
 0054B36B    add         esp,0FFFFFFCC
 0054B36E    mov         byte ptr [ebp-10],dl
 0054B371    test        dl,dl
>0054B373    jle         0054B37A
 0054B375    call        0067EF6C
 0054B37A    mov         dword ptr [ebp-4],ecx
 0054B37D    mov         byte ptr [ebp-31],dl
 0054B380    mov         dword ptr [ebp-8],eax
 0054B383    mov         eax,6E32C0
 0054B388    call        0066FECC
 0054B38D    mov         dword ptr [ebp-14],1
 0054B394    lea         edx,[ebp-4]
 0054B397    lea         eax,[ebp-4]
 0054B39A    call        0067DAEC
 0054B39F    inc         dword ptr [ebp-14]
 0054B3A2    mov         word ptr [ebp-20],8
 0054B3A8    mov         word ptr [ebp-20],14
 0054B3AE    mov         word ptr [ebp-20],20
 0054B3B4    lea         edx,[ebp-4]
 0054B3B7    lea         eax,[ebp-0C]
 0054B3BA    call        0067DAEC
 0054B3BF    inc         dword ptr [ebp-14]
 0054B3C2    mov         ecx,dword ptr [eax]
 0054B3C4    xor         edx,edx
 0054B3C6    mov         eax,dword ptr [ebp-8]
 0054B3C9    call        0054B488
 0054B3CE    add         dword ptr [ebp-14],4
 0054B3D2    dec         dword ptr [ebp-14]
 0054B3D5    lea         eax,[ebp-0C]
 0054B3D8    mov         edx,2
 0054B3DD    call        0067DCA0
 0054B3E2    mov         word ptr [ebp-20],14
 0054B3E8    dec         dword ptr [ebp-14]
 0054B3EB    lea         eax,[ebp-4]
 0054B3EE    mov         edx,2
 0054B3F3    call        0067DCA0
 0054B3F8    mov         ecx,dword ptr [ebp-30]
 0054B3FB    mov         dword ptr fs:[0],ecx
 0054B402    mov         eax,dword ptr [ebp-8]
 0054B405    cmp         byte ptr [ebp-31],0
>0054B409    je          0054B410
 0054B40B    call        0067EF79
 0054B410    mov         esp,ebp
 0054B412    pop         ebp
 0054B413    ret
end;*}

//0054B488
{*procedure sub_0054B488(?:Double; ?:?);
begin
 0054B488    push        ebp
 0054B489    mov         ebp,esp
 0054B48B    add         esp,0FFFFFFCC
 0054B48E    mov         byte ptr [ebp-10],dl
 0054B491    test        dl,dl
>0054B493    jle         0054B49A
 0054B495    call        0067EF6C
 0054B49A    mov         dword ptr [ebp-4],ecx
 0054B49D    mov         byte ptr [ebp-31],dl
 0054B4A0    mov         dword ptr [ebp-8],eax
 0054B4A3    mov         eax,6E3330
 0054B4A8    call        0066FECC
 0054B4AD    mov         dword ptr [ebp-14],1
 0054B4B4    lea         edx,[ebp-4]
 0054B4B7    lea         eax,[ebp-4]
 0054B4BA    call        0067DAEC
 0054B4BF    inc         dword ptr [ebp-14]
 0054B4C2    mov         word ptr [ebp-20],8
 0054B4C8    mov         word ptr [ebp-20],14
 0054B4CE    mov         word ptr [ebp-20],20
 0054B4D4    lea         edx,[ebp-4]
 0054B4D7    lea         eax,[ebp-0C]
 0054B4DA    call        0067DAEC
 0054B4DF    inc         dword ptr [ebp-14]
 0054B4E2    mov         ecx,dword ptr [eax]
 0054B4E4    xor         edx,edx
 0054B4E6    mov         eax,dword ptr [ebp-8]
 0054B4E9    call        Exception.Create
 0054B4EE    add         dword ptr [ebp-14],3
 0054B4F2    dec         dword ptr [ebp-14]
 0054B4F5    lea         eax,[ebp-0C]
 0054B4F8    mov         edx,2
 0054B4FD    call        0067DCA0
 0054B502    mov         word ptr [ebp-20],14
 0054B508    dec         dword ptr [ebp-14]
 0054B50B    lea         eax,[ebp-4]
 0054B50E    mov         edx,2
 0054B513    call        0067DCA0
 0054B518    mov         ecx,dword ptr [ebp-30]
 0054B51B    mov         dword ptr fs:[0],ecx
 0054B522    mov         eax,dword ptr [ebp-8]
 0054B525    cmp         byte ptr [ebp-31],0
>0054B529    je          0054B530
 0054B52B    call        0067EF79
 0054B530    mov         esp,ebp
 0054B532    pop         ebp
 0054B533    ret
end;*}

//0054B734
procedure sub_0054B734;
begin
{*
 0054B734    push        ebp
 0054B735    mov         ebp,esp
 0054B737    add         esp,0FFFFFFD4
 0054B73A    call        0067EF81
 0054B73F    mov         byte ptr [ebp-29],dl
 0054B742    mov         dword ptr [ebp-4],eax
 0054B745    mov         eax,6E33A4
 0054B74A    call        0066FECC
 0054B74F    mov         dword ptr [ebp-0C],4
 0054B756    cmp         byte ptr [ebp-29],0
>0054B75A    jl          0054B770
 0054B75C    mov         word ptr [ebp-18],8
 0054B762    sub         dword ptr [ebp-0C],4
 0054B766    xor         edx,edx
 0054B768    mov         eax,dword ptr [ebp-4]
 0054B76B    call        0054B78C
 0054B770    mov         edx,dword ptr [ebp-28]
 0054B773    mov         dword ptr fs:[0],edx
 0054B77A    cmp         byte ptr [ebp-29],0
>0054B77E    jle         0054B788
 0054B780    mov         eax,dword ptr [ebp-4]
 0054B783    call        0067EF74
 0054B788    mov         esp,ebp
 0054B78A    pop         ebp
 0054B78B    ret
*}
end;

//0054B78C
procedure sub_0054B78C;
begin
{*
 0054B78C    push        ebp
 0054B78D    mov         ebp,esp
 0054B78F    add         esp,0FFFFFFD4
 0054B792    call        0067EF81
 0054B797    mov         byte ptr [ebp-29],dl
 0054B79A    mov         dword ptr [ebp-4],eax
 0054B79D    mov         eax,6E33C8
 0054B7A2    call        0066FECC
 0054B7A7    mov         dword ptr [ebp-0C],3
 0054B7AE    cmp         byte ptr [ebp-29],0
>0054B7B2    jl          0054B7C8
 0054B7B4    mov         word ptr [ebp-18],8
 0054B7BA    sub         dword ptr [ebp-0C],3
 0054B7BE    xor         edx,edx
 0054B7C0    mov         eax,dword ptr [ebp-4]
 0054B7C3    call        00401B24
 0054B7C8    mov         edx,dword ptr [ebp-28]
 0054B7CB    mov         dword ptr fs:[0],edx
 0054B7D2    cmp         byte ptr [ebp-29],0
>0054B7D6    jle         0054B7E0
 0054B7D8    mov         eax,dword ptr [ebp-4]
 0054B7DB    call        0067EF74
 0054B7E0    mov         esp,ebp
 0054B7E2    pop         ebp
 0054B7E3    ret
*}
end;

end.