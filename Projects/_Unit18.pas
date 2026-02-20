//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit18;

interface

uses
  SysUtils, Classes;

    @@Progressbar@Initialize; stdcall;//005431C0
    @@Progressbar@Finalize; stdcall;//005431D0
    @TCCalendar@$bctr$qqrp18Classes@TComponent; stdcall;//005431E0
    //function sub_005432C4(?:?):?;//005432C4
    //function sub_005432F4(?:?; ?:?):?;//005432F4
    //function sub_00543340(?:?; ?:?):?;//00543340
    @TCCalendar@Change$qqrv; stdcall;//005433A4
    procedure @TCCalendar@Click$qqrv; stdcall;//005433D4
    @TCCalendar@IsLeapYear$qqri; stdcall;//00543488
    @TCCalendar@DaysPerMonth$qqrii; stdcall;//005434D4
    @TCCalendar@DaysThisMonth$qqrv; stdcall;//00543524
    @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%; stdcall;//0054355C
    @TCCalendar@GetCellText$qqrii; stdcall;//00543684
    @TCCalendar@SelectCell$qqrii; stdcall;//005437C8
    @TCCalendar@SeTCCalendarDate$qqr16System@TDateTime; stdcall;//00543868
    //function sub_0054389C(?:?; ?:?):?;//0054389C
    @TCCalendar@StoreCalendarDate$qqrv; stdcall;//005438C0
    //function @TCCalendar@GetDateElement$qqri:?; stdcall;//005438DC
    procedure @TCCalendar@SetDateElement$qqrii(Value:int); stdcall;//0054393C
    procedure @TCCalendar@SetStartOfWeek$qqrs(Value:short); stdcall;//00543A24
    procedure @TCCalendar@SetUseCurrentDate$qqro(Value:bool); stdcall;//00543A7C
    @TCCalendar@ChangeMonth$qqri; stdcall;//00543AC8
    //procedure sub_00543BBC(?:?; ?:?);//00543BBC
    @TCCalendar@PrevMonth$qqrv; stdcall;//00543BE4
    @TCCalendar@NextMonth$qqrv; stdcall;//00543BFC
    @TCCalendar@NextYear$qqrv; stdcall;//00543C14
    @TCCalendar@PrevYear$qqrv; stdcall;//00543C90
    @TCCalendar@UpdateCalendar$qqrv; stdcall;//00543D0C
    @TCCalendar@WMSize$qqrr16Messages@TWMSize; stdcall;//00543DF8
    //function sub_00543E54(?:?; ?:?; ?:?):?;//00543E54
    @$xp$10TCCalendar; stdcall;//00543EE0
    @TCCalendar@Dispatch$qqrpv; stdcall;//0054448C

implementation

//005432C4
{*function sub_005432C4(?:?):?;
begin
 005432C4    push        ebp
 005432C5    mov         ebp,esp
 005432C7    add         esp,0FFFFFFD8
 005432CA    mov         dword ptr [ebp-28],eax
 005432CD    mov         eax,6E1DA4
 005432D2    call        0066FECC
 005432D7    mov         edx,dword ptr [ebp-28]
 005432DA    xor         ecx,ecx
 005432DC    mov         dword ptr [edx],ecx
 005432DE    mov         dword ptr [edx+4],ecx
 005432E1    mov         eax,dword ptr [ebp-24]
 005432E4    mov         fs:[00000000],eax
 005432EA    mov         eax,dword ptr [ebp-28]
 005432ED    mov         esp,ebp
 005432EF    pop         ebp
 005432F0    ret
end;*}

//005432F4
{*function sub_005432F4(?:?; ?:?):?;
begin
 005432F4    push        ebp
 005432F5    mov         ebp,esp
 005432F7    add         esp,0FFFFFFF8
 005432FA    mov         byte ptr [ebp-5],dl
 005432FD    mov         dword ptr [ebp-4],eax
 00543300    cmp         byte ptr [ebp-5],0
>00543304    jl          00543337
 00543306    cmp         byte ptr [ebp-5],0E
>0054330A    jg          00543337
 0054330C    movsx       ecx,byte ptr [ebp-5]
 00543310    and         ecx,80000007
>00543316    jns         0054331D
 00543318    dec         ecx
 00543319    or          ecx,0FFFFFFF8
 0054331C    inc         ecx
 0054331D    mov         al,1
 0054331F    shl         al,cl
 00543321    not         al
 00543323    movsx       edx,byte ptr [ebp-5]
 00543327    test        edx,edx
>00543329    jns         0054332E
 0054332B    add         edx,7
 0054332E    sar         edx,3
 00543331    mov         ecx,dword ptr [ebp-4]
 00543334    and         byte ptr [ecx+edx],al
 00543337    mov         eax,dword ptr [ebp-4]
 0054333A    pop         ecx
 0054333B    pop         ecx
 0054333C    pop         ebp
 0054333D    ret
end;*}

//00543340
{*function sub_00543340(?:?; ?:?):?;
begin
 00543340    push        ebp
 00543341    mov         ebp,esp
 00543343    add         esp,0FFFFFFF8
 00543346    mov         byte ptr [ebp-5],dl
 00543349    mov         dword ptr [ebp-4],eax
 0054334C    cmp         byte ptr [ebp-5],0
>00543350    jl          00543381
 00543352    cmp         byte ptr [ebp-5],0E
>00543356    jg          00543381
 00543358    movsx       ecx,byte ptr [ebp-5]
 0054335C    and         ecx,80000007
>00543362    jns         00543369
 00543364    dec         ecx
 00543365    or          ecx,0FFFFFFF8
 00543368    inc         ecx
 00543369    mov         al,1
 0054336B    shl         al,cl
 0054336D    movsx       edx,byte ptr [ebp-5]
 00543371    test        edx,edx
>00543373    jns         00543378
 00543375    add         edx,7
 00543378    sar         edx,3
 0054337B    mov         ecx,dword ptr [ebp-4]
 0054337E    or          byte ptr [ecx+edx],al
 00543381    mov         eax,dword ptr [ebp-4]
 00543384    pop         ecx
 00543385    pop         ecx
 00543386    pop         ebp
 00543387    ret
end;*}

//005433D4
procedure @TCCalendar@Click$qqrv; stdcall;
begin
{*
 005433D4    push        ebp
 005433D5    mov         ebp,esp
 005433D7    add         esp,0FFFFFFD0
 005433DA    mov         dword ptr [ebp-30],eax
 005433DD    mov         eax,6E1C30
 005433E2    call        0066FECC
 005433E7    mov         word ptr [ebp-1C],8
 005433ED    lea         eax,[ebp-4]
 005433F0    call        00401EA8
 005433F5    inc         dword ptr [ebp-10]
 005433F8    mov         word ptr [ebp-1C],14
 005433FE    mov         word ptr [ebp-1C],20
 00543404    lea         eax,[ebp-8]
 00543407    call        00401EA8
 0054340C    push        eax
 0054340D    inc         dword ptr [ebp-10]
 00543410    mov         edx,dword ptr [ebp-30]
 00543413    mov         ecx,dword ptr [edx+22C]
 00543419    mov         eax,dword ptr [ebp-30]
 0054341C    mov         edx,dword ptr [eax+228]
 00543422    mov         eax,dword ptr [ebp-30]
 00543425    call        @TCCalendar@GetCellText$qqrii
 0054342A    lea         edx,[ebp-8]
 0054342D    lea         eax,[ebp-4]
 00543430    call        0067DCD0
 00543435    dec         dword ptr [ebp-10]
 00543438    lea         eax,[ebp-8]
 0054343B    mov         edx,2
 00543440    call        0067DCA0
 00543445    lea         eax,[ebp-4]
 00543448    call        0040A248
 0054344D    test        al,al
>0054344F    jne         00543468
 00543451    lea         eax,[ebp-4]
 00543454    call        0067E1A0
 00543459    mov         ecx,eax
 0054345B    mov         edx,3
 00543460    mov         eax,dword ptr [ebp-30]
 00543463    call        @TCCalendar@SetDateElement$qqrii
 00543468    dec         dword ptr [ebp-10]
 0054346B    lea         eax,[ebp-4]
 0054346E    mov         edx,2
 00543473    call        0067DCA0
 00543478    mov         ecx,dword ptr [ebp-2C]
 0054347B    mov         dword ptr fs:[0],ecx
 00543482    mov         esp,ebp
 00543484    pop         ebp
 00543485    ret
*}
end;

//0054389C
{*function sub_0054389C(?:?; ?:?):?;
begin
 0054389C    push        ebp
 0054389D    mov         ebp,esp
 0054389F    add         esp,0FFFFFFF8
 005438A2    mov         dword ptr [ebp-8],edx
 005438A5    mov         dword ptr [ebp-4],eax
 005438A8    mov         eax,dword ptr [ebp-4]
 005438AB    mov         edx,dword ptr [ebp-8]
 005438AE    mov         ecx,dword ptr [edx]
 005438B0    mov         dword ptr [eax],ecx
 005438B2    mov         ecx,dword ptr [edx+4]
 005438B5    mov         dword ptr [eax+4],ecx
 005438B8    mov         eax,dword ptr [ebp-4]
 005438BB    pop         ecx
 005438BC    pop         ecx
 005438BD    pop         ebp
 005438BE    ret
end;*}

//005438DC
{*function @TCCalendar@GetDateElement$qqri:?; stdcall;
begin
 005438DC    push        ebp
 005438DD    mov         ebp,esp
 005438DF    add         esp,0FFFFFFEC
 005438E2    mov         dword ptr [ebp-8],edx
 005438E5    mov         dword ptr [ebp-4],eax
 005438E8    mov         eax,dword ptr [ebp-4]
 005438EB    push        dword ptr [eax+29C]
 005438F1    push        dword ptr [eax+298]
 005438F7    lea         ecx,[ebp-0E]
 005438FA    lea         edx,[ebp-0C]
 005438FD    lea         eax,[ebp-0A]
 00543900    call        DecodeDate
 00543905    mov         ecx,dword ptr [ebp-8]
 00543908    dec         ecx
>00543909    je          00543913
 0054390B    dec         ecx
>0054390C    je          0054391C
 0054390E    dec         ecx
>0054390F    je          00543925
>00543911    jmp         0054392E
 00543913    movzx       eax,word ptr [ebp-0A]
 00543917    mov         dword ptr [ebp-14],eax
>0054391A    jmp         00543935
 0054391C    movzx       edx,word ptr [ebp-0C]
 00543920    mov         dword ptr [ebp-14],edx
>00543923    jmp         00543935
 00543925    movzx       ecx,word ptr [ebp-0E]
 00543929    mov         dword ptr [ebp-14],ecx
>0054392C    jmp         00543935
 0054392E    mov         dword ptr [ebp-14],0FFFFFFFF
 00543935    mov         eax,dword ptr [ebp-14]
 00543938    mov         esp,ebp
 0054393A    pop         ebp
 0054393B    ret
end;*}

//0054393C
procedure @TCCalendar@SetDateElement$qqrii(Value:int); stdcall;
begin
{*
 0054393C    push        ebp
 0054393D    mov         ebp,esp
 0054393F    add         esp,0FFFFFFEC
 00543942    mov         dword ptr [ebp-0C],ecx
 00543945    mov         dword ptr [ebp-8],edx
 00543948    mov         dword ptr [ebp-4],eax
 0054394B    mov         byte ptr [ebp-13],0
 0054394F    cmp         dword ptr [ebp-0C],0
>00543953    jle         00543A1D
 00543959    mov         eax,dword ptr [ebp-4]
 0054395C    push        dword ptr [eax+29C]
 00543962    push        dword ptr [eax+298]
 00543968    lea         ecx,[ebp-12]
 0054396B    lea         edx,[ebp-10]
 0054396E    lea         eax,[ebp-0E]
 00543971    call        DecodeDate
 00543976    mov         ecx,dword ptr [ebp-8]
 00543979    dec         ecx
>0054397A    je          00543984
 0054397C    dec         ecx
>0054397D    je          0054399B
 0054397F    dec         ecx
>00543980    je          005439B8
>00543982    jmp         005439DD
 00543984    movzx       eax,word ptr [ebp-0E]
 00543988    cmp         eax,dword ptr [ebp-0C]
>0054398B    je          005439DD
 0054398D    mov         dx,word ptr [ebp-0C]
 00543991    mov         word ptr [ebp-0E],dx
 00543995    mov         byte ptr [ebp-13],1
>00543999    jmp         005439DD
 0054399B    cmp         dword ptr [ebp-0C],0C
>0054399F    jg          005439DD
 005439A1    movzx       ecx,word ptr [ebp-10]
 005439A5    cmp         ecx,dword ptr [ebp-0C]
>005439A8    je          005439DD
 005439AA    mov         ax,word ptr [ebp-0C]
 005439AE    mov         word ptr [ebp-10],ax
 005439B2    mov         byte ptr [ebp-13],1
>005439B6    jmp         005439DD
 005439B8    mov         eax,dword ptr [ebp-4]
 005439BB    mov         edx,dword ptr [eax]
 005439BD    call        dword ptr [edx+0E8]
 005439C3    cmp         eax,dword ptr [ebp-0C]
>005439C6    jl          005439DD
 005439C8    movzx       ecx,word ptr [ebp-12]
 005439CC    cmp         ecx,dword ptr [ebp-0C]
>005439CF    je          005439DD
 005439D1    mov         ax,word ptr [ebp-0C]
 005439D5    mov         word ptr [ebp-12],ax
 005439D9    mov         byte ptr [ebp-13],1
 005439DD    cmp         byte ptr [ebp-13],0
>005439E1    je          00543A1D
 005439E3    mov         cx,word ptr [ebp-12]
 005439E7    mov         dx,word ptr [ebp-10]
 005439EB    mov         ax,word ptr [ebp-0E]
 005439EF    call        EncodeDate
 005439F4    mov         edx,dword ptr [ebp-4]
 005439F7    fstp        qword ptr [edx+298]
 005439FD    mov         ecx,dword ptr [ebp-4]
 00543A00    mov         byte ptr [ecx+2B5],0
 00543A07    mov         eax,dword ptr [ebp-4]
 00543A0A    mov         edx,dword ptr [eax]
 00543A0C    call        dword ptr [edx+0F0]
 00543A12    mov         eax,dword ptr [ebp-4]
 00543A15    mov         edx,dword ptr [eax]
 00543A17    call        dword ptr [edx+0E4]
 00543A1D    mov         esp,ebp
 00543A1F    pop         ebp
 00543A20    ret
*}
end;

//00543A24
procedure @TCCalendar@SetStartOfWeek$qqrs(Value:short); stdcall;
begin
{*
 00543A24    push        ebp
 00543A25    mov         ebp,esp
 00543A27    add         esp,0FFFFFFF8
 00543A2A    mov         word ptr [ebp-6],dx
 00543A2E    mov         dword ptr [ebp-4],eax
 00543A31    cmp         word ptr [ebp-6],7
>00543A36    jg          00543A3F
 00543A38    cmp         word ptr [ebp-6],1
>00543A3D    jge         00543A4D
 00543A3F    mov         eax,dword ptr [ebp-4]
 00543A42    mov         word ptr [eax+2B2],1
>00543A4B    jmp         00543A76
 00543A4D    mov         dx,word ptr [ebp-6]
 00543A51    mov         ecx,dword ptr [ebp-4]
 00543A54    cmp         dx,word ptr [ecx+2B2]
>00543A5B    je          00543A76
 00543A5D    mov         ax,word ptr [ebp-6]
 00543A61    mov         edx,dword ptr [ebp-4]
 00543A64    mov         word ptr [edx+2B2],ax
 00543A6B    mov         eax,dword ptr [ebp-4]
 00543A6E    mov         edx,dword ptr [eax]
 00543A70    call        dword ptr [edx+0F0]
 00543A76    pop         ecx
 00543A77    pop         ecx
 00543A78    pop         ebp
 00543A79    ret
*}
end;

//00543A7C
procedure @TCCalendar@SetUseCurrentDate$qqro(Value:bool); stdcall;
begin
{*
 00543A7C    push        ebp
 00543A7D    mov         ebp,esp
 00543A7F    add         esp,0FFFFFFF8
 00543A82    mov         byte ptr [ebp-5],dl
 00543A85    mov         dword ptr [ebp-4],eax
 00543A88    mov         al,byte ptr [ebp-5]
 00543A8B    mov         edx,dword ptr [ebp-4]
 00543A8E    cmp         al,byte ptr [edx+2B5]
>00543A94    je          00543AC1
 00543A96    mov         cl,byte ptr [ebp-5]
 00543A99    mov         eax,dword ptr [ebp-4]
 00543A9C    mov         byte ptr [eax+2B5],cl
 00543AA2    cmp         byte ptr [ebp-5],0
>00543AA6    je          00543AC1
 00543AA8    call        Date
 00543AAD    mov         edx,dword ptr [ebp-4]
 00543AB0    fstp        qword ptr [edx+298]
 00543AB6    mov         eax,dword ptr [ebp-4]
 00543AB9    mov         edx,dword ptr [eax]
 00543ABB    call        dword ptr [edx+0F0]
 00543AC1    pop         ecx
 00543AC2    pop         ecx
 00543AC3    pop         ebp
 00543AC4    ret
*}
end;

//00543BBC
{*procedure sub_00543BBC(?:?; ?:?);
begin
 00543BBC    push        ebp
 00543BBD    mov         ebp,esp
 00543BBF    add         esp,0FFFFFFF0
 00543BC2    mov         dword ptr [ebp-8],edx
 00543BC5    mov         dword ptr [ebp-4],eax
 00543BC8    fild        dword ptr [ebp-8]
 00543BCB    mov         eax,dword ptr [ebp-4]
 00543BCE    fadd        qword ptr [eax]
 00543BD0    add         esp,0FFFFFFF8
 00543BD3    fstp        qword ptr [esp]
 00543BD6    lea         eax,[ebp-10]
 00543BD9    call        00543E54
 00543BDE    fld         qword ptr [eax]
 00543BE0    mov         esp,ebp
 00543BE2    pop         ebp
 00543BE3    ret
end;*}

//00543E54
{*function sub_00543E54(?:?; ?:?; ?:?):?;
begin
 00543E54    push        ebp
 00543E55    mov         ebp,esp
 00543E57    add         esp,0FFFFFFD8
 00543E5A    mov         dword ptr [ebp-28],eax
 00543E5D    mov         eax,6E1DAC
 00543E62    call        0066FECC
 00543E67    mov         edx,dword ptr [ebp-28]
 00543E6A    mov         ecx,dword ptr [ebp+8]
 00543E6D    mov         dword ptr [edx],ecx
 00543E6F    mov         ecx,dword ptr [ebp+0C]
 00543E72    mov         dword ptr [edx+4],ecx
 00543E75    mov         eax,dword ptr [ebp-24]
 00543E78    mov         fs:[00000000],eax
 00543E7E    mov         eax,dword ptr [ebp-28]
 00543E81    mov         esp,ebp
 00543E83    pop         ebp
 00543E84    ret         8
end;*}

end.