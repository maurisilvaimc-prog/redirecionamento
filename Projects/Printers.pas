//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Printers;

interface

uses
  SysUtils, Classes, Graphics, Printers;

type
  EPrinter = class(Exception)
  end;
  TPrinter = class(TObject)
  public
    FCanvas:TCanvas;//f4
    FFonts:TStrings;//f8
    FPageNumber:Integer;//fC
    FPrinters:TStrings;//f10
    FPrinterIndex:Integer;//f14
    FTitle:String;//f18
    FPrinting:Boolean;//f1C
    FAborted:Boolean;//f1D
    FCapabilities:TPrinterCapabilities;//f1E
    State:TPrinterState;//f1F
    DC:HDC;//f20
    DevMode:PDeviceMode;//f24
    DeviceMode:THandle;//f28
    FPrinterHandle:THandle;//f2C
    constructor Create;//005A0C60
  end;
  TPrinterDevice = class(TObject)
  public
    Driver:String;//f4
    Device:String;//f8
    Port:String;//fC
    //constructor Create(?:?; ?:?);//005A095C
  end;
  TPrinterCanvas = class(TCanvas)
  published
    procedure UpdateFont;//005A0C00
    procedure Changing;//005A0BD8
    procedure CreateHandle;//005A0BA8
  public
    .....Printer:TPrinter;//f58
    procedure Changing; virtual;//v10//005A0BD8
    procedure CreateHandle; virtual;//v14//005A0BA8
    constructor Create;//005A0B58
  end;
    procedure Printers;//005A075C
    //function sub_005A0824(?:?):?;//005A0824
    //procedure sub_005A0890(?:?);//005A0890
    //function sub_005A09CC(?:?; ?:?; ?:?; ?:?):?;//005A09CC
    //procedure sub_005A0D54(?:TPrinter; ?:?);//005A0D54
    //procedure sub_005A0ED4(?:TPrinter; ?:?);//005A0ED4
    //procedure sub_005A0F5C(?:?);//005A0F5C
    //procedure sub_005A1000(?:?);//005A1000
    //procedure sub_005A104C(?:?);//005A104C
    //procedure sub_005A108C(?:?; ?:?; ?:?; ?:?; ?:?);//005A108C
    //procedure sub_005A1108(?:?; ?:?);//005A1108
    //procedure sub_005A1150(?:TPrinter; ?:PChar; ?:?; ?:?; ?:?);//005A1150
    //function sub_005A1420(?:?):?;//005A1420
    //function sub_005A1458(?:?):?;//005A1458
    //function sub_005A147C(?:?):?;//005A147C
    //procedure sub_005A14F0(?:?; ?:Integer);//005A14F0
    //function sub_005A1578(?:?):?;//005A1578
    //function sub_005A15A4(?:?):?;//005A15A4
    //function sub_005A15D0(?:TPrinter):?;//005A15D0
    //function sub_005A15FC(?:TPrinter):?;//005A15FC
    procedure sub_005A1884(?:TPrinter);//005A1884
    //procedure sub_005A1AF4(?:?);//005A1AF4
    //function sub_005A1B0C:?;//005A1B0C
    procedure Finalization;//005A1B38

implementation

//005A075C
procedure Printers;
begin
{*
 005A075C    sub         dword ptr ds:[6ECCF4],1
 005A0763    ret
*}
end;

//005A0824
{*function sub_005A0824(?:?):?;
begin
 005A0824    push        ebp
 005A0825    mov         ebp,esp
 005A0827    add         esp,0FFFFFFF4
 005A082A    mov         dword ptr [ebp-4],eax
 005A082D    mov         eax,dword ptr [ebp-4]
 005A0830    mov         eax,dword ptr [eax]
 005A0832    mov         dword ptr [ebp-8],eax
 005A0835    mov         eax,dword ptr [ebp-4]
 005A0838    cmp         dword ptr [eax],0
>005A083B    je          005A0886
 005A083D    mov         eax,dword ptr [ebp-4]
 005A0840    mov         eax,dword ptr [eax]
 005A0842    mov         dword ptr [ebp-0C],eax
>005A0845    jmp         005A084A
 005A0847    inc         dword ptr [ebp-0C]
 005A084A    mov         eax,dword ptr [ebp-0C]
 005A084D    cmp         byte ptr [eax],20
>005A0850    je          005A0847
 005A0852    mov         eax,dword ptr [ebp-0C]
 005A0855    mov         dword ptr [ebp-8],eax
>005A0858    jmp         005A085D
 005A085A    inc         dword ptr [ebp-0C]
 005A085D    mov         eax,dword ptr [ebp-0C]
 005A0860    cmp         byte ptr [eax],0
>005A0863    je          005A086D
 005A0865    mov         eax,dword ptr [ebp-0C]
 005A0868    cmp         byte ptr [eax],2C
>005A086B    jne         005A085A
 005A086D    mov         eax,dword ptr [ebp-0C]
 005A0870    cmp         byte ptr [eax],2C
>005A0873    jne         005A087E
 005A0875    mov         eax,dword ptr [ebp-0C]
 005A0878    mov         byte ptr [eax],0
 005A087B    inc         dword ptr [ebp-0C]
 005A087E    mov         eax,dword ptr [ebp-4]
 005A0881    mov         edx,dword ptr [ebp-0C]
 005A0884    mov         dword ptr [eax],edx
 005A0886    mov         eax,dword ptr [ebp-8]
 005A0889    mov         esp,ebp
 005A088B    pop         ebp
 005A088C    ret
end;*}

//005A0890
{*procedure sub_005A0890(?:?);
begin
 005A0890    push        ebp
 005A0891    mov         ebp,esp
 005A0893    push        ecx
 005A0894    mov         dword ptr [ebp-4],eax
 005A0897    mov         ecx,dword ptr [ebp-4]
 005A089A    mov         dl,1
 005A089C    mov         eax,[005A0764];EPrinter
 005A08A1    call        Exception.Create;EPrinter.Create
 005A08A6    call        @RaiseExcept
 005A08AB    pop         ecx
 005A08AC    pop         ebp
 005A08AD    ret
end;*}

//005A095C
{*constructor TPrinterDevice.Create(?:?; ?:?);
begin
 005A095C    push        ebp
 005A095D    mov         ebp,esp
 005A095F    add         esp,0FFFFFFF4
 005A0962    test        dl,dl
>005A0964    je          005A096E
 005A0966    add         esp,0FFFFFFF0
 005A0969    call        @ClassCreate
 005A096E    mov         dword ptr [ebp-0C],ecx
 005A0971    mov         byte ptr [ebp-5],dl
 005A0974    mov         dword ptr [ebp-4],eax
 005A0977    xor         edx,edx
 005A0979    mov         eax,dword ptr [ebp-4]
 005A097C    call        TObject.Create
 005A0981    mov         eax,dword ptr [ebp-4]
 005A0984    add         eax,4
 005A0987    mov         edx,dword ptr [ebp-0C]
 005A098A    call        @LStrFromPChar
 005A098F    mov         eax,dword ptr [ebp-4]
 005A0992    add         eax,8
 005A0995    mov         edx,dword ptr [ebp+0C]
 005A0998    call        @LStrFromPChar
 005A099D    mov         eax,dword ptr [ebp-4]
 005A09A0    add         eax,0C
 005A09A3    mov         edx,dword ptr [ebp+8]
 005A09A6    call        @LStrFromPChar
 005A09AB    mov         eax,dword ptr [ebp-4]
 005A09AE    cmp         byte ptr [ebp-5],0
>005A09B2    je          005A09C3
 005A09B4    call        @AfterConstruction
 005A09B9    pop         dword ptr fs:[0]
 005A09C0    add         esp,0C
 005A09C3    mov         eax,dword ptr [ebp-4]
 005A09C6    mov         esp,ebp
 005A09C8    pop         ebp
 005A09C9    ret         8
end;*}

//005A09CC
{*function sub_005A09CC(?:?; ?:?; ?:?; ?:?):?;
begin
 005A09CC    push        ebp
 005A09CD    mov         ebp,esp
 005A09CF    add         esp,0FFFFFFE8
 005A09D2    push        ebx
 005A09D3    xor         ebx,ebx
 005A09D5    mov         dword ptr [ebp-18],ebx
 005A09D8    mov         dword ptr [ebp-14],ebx
 005A09DB    mov         dword ptr [ebp-8],ecx
 005A09DE    mov         dword ptr [ebp-10],edx
 005A09E1    mov         dword ptr [ebp-4],eax
 005A09E4    xor         eax,eax
 005A09E6    push        ebp
 005A09E7    push        5A0A55
 005A09EC    push        dword ptr fs:[eax]
 005A09EF    mov         dword ptr fs:[eax],esp
 005A09F2    lea         eax,[ebp-14]
 005A09F5    mov         edx,dword ptr [ebp-8]
 005A09F8    call        @LStrFromPChar
 005A09FD    mov         edx,dword ptr [ebp-14]
 005A0A00    mov         eax,dword ptr [ebp-4]
 005A0A03    mov         eax,dword ptr [eax+8]
 005A0A06    call        @LStrCmp
>005A0A0B    jne         005A0A31
 005A0A0D    mov         eax,dword ptr [ebp-4]
 005A0A10    cmp         dword ptr [eax+0C],0
>005A0A14    je          005A0A35
 005A0A16    lea         eax,[ebp-18]
 005A0A19    mov         edx,dword ptr [ebp+8]
 005A0A1C    call        @LStrFromPChar
 005A0A21    mov         edx,dword ptr [ebp-18]
 005A0A24    mov         eax,dword ptr [ebp-4]
 005A0A27    mov         eax,dword ptr [eax+0C]
 005A0A2A    call        @LStrCmp
>005A0A2F    je          005A0A35
 005A0A31    xor         eax,eax
>005A0A33    jmp         005A0A37
 005A0A35    mov         al,1
 005A0A37    mov         byte ptr [ebp-9],al
 005A0A3A    xor         eax,eax
 005A0A3C    pop         edx
 005A0A3D    pop         ecx
 005A0A3E    pop         ecx
 005A0A3F    mov         dword ptr fs:[eax],edx
 005A0A42    push        5A0A5C
 005A0A47    lea         eax,[ebp-18]
 005A0A4A    mov         edx,2
 005A0A4F    call        @LStrArrayClr
 005A0A54    ret
>005A0A55    jmp         @HandleFinally
>005A0A5A    jmp         005A0A47
 005A0A5C    mov         al,byte ptr [ebp-9]
 005A0A5F    pop         ebx
 005A0A60    mov         esp,ebp
 005A0A62    pop         ebp
 005A0A63    ret         4
end;*}

//005A0B58
constructor TPrinterCanvas.Create;
begin
{*
 005A0B58    push        ebp
 005A0B59    mov         ebp,esp
 005A0B5B    add         esp,0FFFFFFF4
 005A0B5E    test        dl,dl
>005A0B60    je          005A0B6A
 005A0B62    add         esp,0FFFFFFF0
 005A0B65    call        @ClassCreate
 005A0B6A    mov         dword ptr [ebp-0C],ecx
 005A0B6D    mov         byte ptr [ebp-5],dl
 005A0B70    mov         dword ptr [ebp-4],eax
 005A0B73    xor         edx,edx
 005A0B75    mov         eax,dword ptr [ebp-4]
 005A0B78    call        TCanvas.Create
 005A0B7D    mov         eax,dword ptr [ebp-4]
 005A0B80    mov         edx,dword ptr [ebp-0C]
 005A0B83    mov         dword ptr [eax+58],edx
 005A0B86    mov         eax,dword ptr [ebp-4]
 005A0B89    cmp         byte ptr [ebp-5],0
>005A0B8D    je          005A0B9E
 005A0B8F    call        @AfterConstruction
 005A0B94    pop         dword ptr fs:[0]
 005A0B9B    add         esp,0C
 005A0B9E    mov         eax,dword ptr [ebp-4]
 005A0BA1    mov         esp,ebp
 005A0BA3    pop         ebp
 005A0BA4    ret
*}
end;

//005A0BA8
procedure TPrinterCanvas.CreateHandle;
begin
{*
 005A0BA8    push        ebp
 005A0BA9    mov         ebp,esp
 005A0BAB    push        ecx
 005A0BAC    mov         dword ptr [ebp-4],eax
 005A0BAF    mov         dl,1
 005A0BB1    mov         eax,dword ptr [ebp-4]
 005A0BB4    mov         eax,dword ptr [eax+58];TPrinterCanvas.......Printer:TPrinter
 005A0BB7    call        005A0D54
 005A0BBC    mov         eax,dword ptr [ebp-4]
 005A0BBF    call        TPrinterCanvas.UpdateFont
 005A0BC4    mov         eax,dword ptr [ebp-4]
 005A0BC7    mov         eax,dword ptr [eax+58];TPrinterCanvas........Printer:TPrinter
 005A0BCA    mov         edx,dword ptr [eax+20];TPrinter.DC:HDC
 005A0BCD    mov         eax,dword ptr [ebp-4]
 005A0BD0    call        TCanvas.SetHandle
 005A0BD5    pop         ecx
 005A0BD6    pop         ebp
 005A0BD7    ret
*}
end;

//005A0BD8
procedure TPrinterCanvas.Changing;
begin
{*
 005A0BD8    push        ebp
 005A0BD9    mov         ebp,esp
 005A0BDB    push        ecx
 005A0BDC    mov         dword ptr [ebp-4],eax
 005A0BDF    mov         dl,1
 005A0BE1    mov         eax,dword ptr [ebp-4]
 005A0BE4    mov         eax,dword ptr [eax+58];TPrinterCanvas.........Printer:TPrinter
 005A0BE7    call        005A0ED4
 005A0BEC    mov         eax,dword ptr [ebp-4]
 005A0BEF    call        005C1B80
 005A0BF4    mov         eax,dword ptr [ebp-4]
 005A0BF7    call        TPrinterCanvas.UpdateFont
 005A0BFC    pop         ecx
 005A0BFD    pop         ebp
 005A0BFE    ret
*}
end;

//005A0C00
procedure TPrinterCanvas.UpdateFont;
begin
{*
 005A0C00    push        ebp
 005A0C01    mov         ebp,esp
 005A0C03    add         esp,0FFFFFFF8
 005A0C06    mov         dword ptr [ebp-4],eax
 005A0C09    push        5A
 005A0C0B    mov         eax,dword ptr [ebp-4]
 005A0C0E    mov         eax,dword ptr [eax+58];TPrinterCanvas..........Printer:TPrinter
 005A0C11    mov         eax,dword ptr [eax+20];TPrinter.DC:HDC
 005A0C14    push        eax
 005A0C15    call        GDI32.GetDeviceCaps
 005A0C1A    mov         edx,dword ptr [ebp-4]
 005A0C1D    mov         edx,dword ptr [edx+0C];TPrinterCanvas.Font:TFont
 005A0C20    cmp         eax,dword ptr [edx+1C];TFont.FPixelsPerInch:Integer
>005A0C23    je          005A0C5B
 005A0C25    mov         eax,dword ptr [ebp-4]
 005A0C28    mov         eax,dword ptr [eax+0C];TPrinterCanvas.Font:TFont
 005A0C2B    call        TFont.GetSize
 005A0C30    mov         dword ptr [ebp-8],eax
 005A0C33    push        5A
 005A0C35    mov         eax,dword ptr [ebp-4]
 005A0C38    mov         eax,dword ptr [eax+58];TPrinterCanvas...........Printer:TPrinter
 005A0C3B    mov         eax,dword ptr [eax+20];TPrinter.DC:HDC
 005A0C3E    push        eax
 005A0C3F    call        GDI32.GetDeviceCaps
 005A0C44    mov         edx,dword ptr [ebp-4]
 005A0C47    mov         edx,dword ptr [edx+0C];TPrinterCanvas.Font:TFont
 005A0C4A    mov         dword ptr [edx+1C],eax;TFont.FPixelsPerInch:Integer
 005A0C4D    mov         edx,dword ptr [ebp-8]
 005A0C50    mov         eax,dword ptr [ebp-4]
 005A0C53    mov         eax,dword ptr [eax+0C];TPrinterCanvas.Font:TFont
 005A0C56    call        TFont.SetSize
 005A0C5B    pop         ecx
 005A0C5C    pop         ecx
 005A0C5D    pop         ebp
 005A0C5E    ret
*}
end;

//005A0C60
constructor TPrinter.Create;
begin
{*
 005A0C60    push        ebp
 005A0C61    mov         ebp,esp
 005A0C63    add         esp,0FFFFFFF8
 005A0C66    test        dl,dl
>005A0C68    je          005A0C72
 005A0C6A    add         esp,0FFFFFFF0
 005A0C6D    call        @ClassCreate
 005A0C72    mov         byte ptr [ebp-5],dl
 005A0C75    mov         dword ptr [ebp-4],eax
 005A0C78    xor         edx,edx
 005A0C7A    mov         eax,dword ptr [ebp-4]
 005A0C7D    call        TObject.Create
 005A0C82    mov         eax,dword ptr [ebp-4]
 005A0C85    mov         dword ptr [eax+14],0FFFFFFFF
 005A0C8C    mov         eax,dword ptr [ebp-4]
 005A0C8F    cmp         byte ptr [ebp-5],0
>005A0C93    je          005A0CA4
 005A0C95    call        @AfterConstruction
 005A0C9A    pop         dword ptr fs:[0]
 005A0CA1    add         esp,0C
 005A0CA4    mov         eax,dword ptr [ebp-4]
 005A0CA7    pop         ecx
 005A0CA8    pop         ecx
 005A0CA9    pop         ebp
 005A0CAA    ret
*}
end;

//005A0D54
{*procedure sub_005A0D54(?:TPrinter; ?:?);
begin
 005A0D54    push        ebp
 005A0D55    mov         ebp,esp
 005A0D57    add         esp,0FFFFFFEC
 005A0D5A    xor         ecx,ecx
 005A0D5C    mov         dword ptr [ebp-14],ecx
 005A0D5F    mov         byte ptr [ebp-5],dl
 005A0D62    mov         dword ptr [ebp-4],eax
 005A0D65    xor         eax,eax
 005A0D67    push        ebp
 005A0D68    push        5A0EC8
 005A0D6D    push        dword ptr fs:[eax]
 005A0D70    mov         dword ptr fs:[eax],esp
 005A0D73    mov         al,byte ptr [ebp-5]
 005A0D76    mov         edx,dword ptr [ebp-4]
 005A0D79    cmp         al,byte ptr [edx+1F];TPrinter.State:TPrinterState
>005A0D7C    je          005A0EB2
 005A0D82    xor         eax,eax
 005A0D84    mov         dword ptr [ebp-0C],eax
 005A0D87    mov         al,byte ptr [ebp-5]
 005A0D8A    sub         al,1
>005A0D8C    jb          005A0D99
>005A0D8E    je          005A0DCF
 005A0D90    dec         al
>005A0D92    je          005A0DE6
>005A0D94    jmp         005A0E19
 005A0D99    xor         edx,edx
 005A0D9B    mov         eax,dword ptr [ebp-4]
 005A0D9E    call        005A0ED4
 005A0DA3    mov         eax,dword ptr [ebp-4]
 005A0DA6    cmp         dword ptr [eax+4],0;TPrinter.FCanvas:TCanvas
>005A0DAA    je          005A0DB9
 005A0DAC    xor         edx,edx
 005A0DAE    mov         eax,dword ptr [ebp-4]
 005A0DB1    mov         eax,dword ptr [eax+4];TPrinter.FCanvas:TCanvas
 005A0DB4    call        TCanvas.SetHandle
 005A0DB9    mov         eax,dword ptr [ebp-4]
 005A0DBC    mov         eax,dword ptr [eax+20];TPrinter.DC:HDC
 005A0DBF    push        eax
 005A0DC0    call        GDI32.DeleteDC
 005A0DC5    mov         eax,dword ptr [ebp-4]
 005A0DC8    xor         edx,edx
 005A0DCA    mov         dword ptr [eax+20],edx;TPrinter.DC:HDC
>005A0DCD    jmp         005A0E19
 005A0DCF    mov         eax,dword ptr [ebp-4]
 005A0DD2    cmp         byte ptr [eax+1F],2;TPrinter.State:TPrinterState
>005A0DD6    je          005A0EB2
 005A0DDC    mov         eax,6928FE;GDI32.CreateICA
 005A0DE1    mov         dword ptr [ebp-0C],eax
>005A0DE4    jmp         005A0E19
 005A0DE6    mov         eax,dword ptr [ebp-4]
 005A0DE9    cmp         dword ptr [eax+4],0;TPrinter.FCanvas:TCanvas
>005A0DED    je          005A0DFC
 005A0DEF    xor         edx,edx
 005A0DF1    mov         eax,dword ptr [ebp-4]
 005A0DF4    mov         eax,dword ptr [eax+4];TPrinter.FCanvas:TCanvas
 005A0DF7    call        TCanvas.SetHandle
 005A0DFC    mov         eax,dword ptr [ebp-4]
 005A0DFF    cmp         dword ptr [eax+20],0;TPrinter.DC:HDC
>005A0E03    je          005A0E11
 005A0E05    mov         eax,dword ptr [ebp-4]
 005A0E08    mov         eax,dword ptr [eax+20];TPrinter.DC:HDC
 005A0E0B    push        eax
 005A0E0C    call        GDI32.DeleteDC
 005A0E11    mov         eax,6928E0;GDI32.CreateDCA:HDC
 005A0E16    mov         dword ptr [ebp-0C],eax
 005A0E19    cmp         dword ptr [ebp-0C],0
>005A0E1D    je          005A0EA9
 005A0E23    mov         eax,dword ptr [ebp-4]
 005A0E26    call        005A15D0
 005A0E2B    push        eax
 005A0E2C    mov         eax,dword ptr [ebp-4]
 005A0E2F    call        005A15FC
 005A0E34    pop         edx
 005A0E35    mov         ecx,dword ptr [eax]
 005A0E37    call        dword ptr [ecx+18]
 005A0E3A    mov         dword ptr [ebp-10],eax
 005A0E3D    mov         eax,dword ptr [ebp-4]
 005A0E40    mov         eax,dword ptr [eax+24];TPrinter.DevMode:PDeviceMode
 005A0E43    push        eax
 005A0E44    mov         eax,dword ptr [ebp-10]
 005A0E47    mov         eax,dword ptr [eax+0C]
 005A0E4A    call        @LStrToPChar
 005A0E4F    push        eax
 005A0E50    mov         eax,dword ptr [ebp-10]
 005A0E53    mov         eax,dword ptr [eax+8]
 005A0E56    call        @LStrToPChar
 005A0E5B    push        eax
 005A0E5C    mov         eax,dword ptr [ebp-10]
 005A0E5F    mov         eax,dword ptr [eax+4]
 005A0E62    call        @LStrToPChar
 005A0E67    push        eax
 005A0E68    call        dword ptr [ebp-0C]
 005A0E6B    mov         edx,dword ptr [ebp-4]
 005A0E6E    mov         dword ptr [edx+20],eax;TPrinter.DC:HDC
 005A0E71    mov         eax,dword ptr [ebp-4]
 005A0E74    cmp         dword ptr [eax+20],0;TPrinter.DC:HDC
>005A0E78    jne         005A0E8F
 005A0E7A    lea         edx,[ebp-14]
 005A0E7D    mov         eax,[006E9E6C];^gvar_0063CAE8
 005A0E82    call        LoadResString
 005A0E87    mov         eax,dword ptr [ebp-14]
 005A0E8A    call        005A0890
 005A0E8F    mov         eax,dword ptr [ebp-4]
 005A0E92    cmp         dword ptr [eax+4],0;TPrinter.FCanvas:TCanvas
>005A0E96    je          005A0EA9
 005A0E98    mov         eax,dword ptr [ebp-4]
 005A0E9B    mov         edx,dword ptr [eax+20];TPrinter.DC:HDC
 005A0E9E    mov         eax,dword ptr [ebp-4]
 005A0EA1    mov         eax,dword ptr [eax+4];TPrinter.FCanvas:TCanvas
 005A0EA4    call        TCanvas.SetHandle
 005A0EA9    mov         al,byte ptr [ebp-5]
 005A0EAC    mov         edx,dword ptr [ebp-4]
 005A0EAF    mov         byte ptr [edx+1F],al;TPrinter.State:TPrinterState
 005A0EB2    xor         eax,eax
 005A0EB4    pop         edx
 005A0EB5    pop         ecx
 005A0EB6    pop         ecx
 005A0EB7    mov         dword ptr fs:[eax],edx
 005A0EBA    push        5A0ECF
 005A0EBF    lea         eax,[ebp-14]
 005A0EC2    call        @LStrClr
 005A0EC7    ret
>005A0EC8    jmp         @HandleFinally
>005A0ECD    jmp         005A0EBF
 005A0ECF    mov         esp,ebp
 005A0ED1    pop         ebp
 005A0ED2    ret
end;*}

//005A0ED4
{*procedure sub_005A0ED4(?:TPrinter; ?:?);
begin
 005A0ED4    push        ebp
 005A0ED5    mov         ebp,esp
 005A0ED7    add         esp,0FFFFFFF0
 005A0EDA    xor         ecx,ecx
 005A0EDC    mov         dword ptr [ebp-10],ecx
 005A0EDF    mov         dword ptr [ebp-0C],ecx
 005A0EE2    mov         byte ptr [ebp-5],dl
 005A0EE5    mov         dword ptr [ebp-4],eax
 005A0EE8    xor         eax,eax
 005A0EEA    push        ebp
 005A0EEB    push        5A0F4E
 005A0EF0    push        dword ptr fs:[eax]
 005A0EF3    mov         dword ptr fs:[eax],esp
 005A0EF6    mov         eax,dword ptr [ebp-4]
 005A0EF9    mov         al,byte ptr [eax+1C];TPrinter.FPrinting:Boolean
 005A0EFC    cmp         al,byte ptr [ebp-5]
>005A0EFF    je          005A0F33
 005A0F01    cmp         byte ptr [ebp-5],0
>005A0F05    je          005A0F1E
 005A0F07    lea         edx,[ebp-0C]
 005A0F0A    mov         eax,[006E9E64];^gvar_0063CAD8
 005A0F0F    call        LoadResString
 005A0F14    mov         eax,dword ptr [ebp-0C]
 005A0F17    call        005A0890
>005A0F1C    jmp         005A0F33
 005A0F1E    lea         edx,[ebp-10]
 005A0F21    mov         eax,[006E9E68];^gvar_0063CAE0
 005A0F26    call        LoadResString
 005A0F2B    mov         eax,dword ptr [ebp-10]
 005A0F2E    call        005A0890
 005A0F33    xor         eax,eax
 005A0F35    pop         edx
 005A0F36    pop         ecx
 005A0F37    pop         ecx
 005A0F38    mov         dword ptr fs:[eax],edx
 005A0F3B    push        5A0F55
 005A0F40    lea         eax,[ebp-10]
 005A0F43    mov         edx,2
 005A0F48    call        @LStrArrayClr
 005A0F4D    ret
>005A0F4E    jmp         @HandleFinally
>005A0F53    jmp         005A0F40
 005A0F55    mov         esp,ebp
 005A0F57    pop         ebp
 005A0F58    ret
end;*}

//005A0F5C
{*procedure sub_005A0F5C(?:?);
begin
 005A0F5C    push        ebp
 005A0F5D    mov         ebp,esp
 005A0F5F    add         esp,0FFFFFFE8
 005A0F62    mov         dword ptr [ebp-4],eax
 005A0F65    xor         edx,edx
 005A0F67    mov         eax,dword ptr [ebp-4]
 005A0F6A    call        005A0ED4
 005A0F6F    mov         dl,2
 005A0F71    mov         eax,dword ptr [ebp-4]
 005A0F74    call        005A0D54
 005A0F79    mov         eax,dword ptr [ebp-4]
 005A0F7C    call        005A1420
 005A0F81    call        005C14B0
 005A0F86    mov         eax,dword ptr [ebp-4]
 005A0F89    call        005A1420
 005A0F8E    call        TPrinterCanvas.UpdateFont
 005A0F93    mov         eax,dword ptr [ebp-4]
 005A0F96    mov         byte ptr [eax+1C],1
 005A0F9A    mov         eax,dword ptr [ebp-4]
 005A0F9D    mov         byte ptr [eax+1D],0
 005A0FA1    mov         eax,dword ptr [ebp-4]
 005A0FA4    mov         dword ptr [eax+0C],1
 005A0FAB    lea         eax,[ebp-18]
 005A0FAE    xor         ecx,ecx
 005A0FB0    mov         edx,14
 005A0FB5    call        @FillChar
 005A0FBA    mov         dword ptr [ebp-18],14
 005A0FC1    mov         eax,dword ptr [ebp-4]
 005A0FC4    mov         eax,dword ptr [eax+18]
 005A0FC7    call        @LStrToPChar
 005A0FCC    mov         dword ptr [ebp-14],eax
 005A0FCF    push        5A08B0
 005A0FD4    mov         eax,dword ptr [ebp-4]
 005A0FD7    mov         eax,dword ptr [eax+20]
 005A0FDA    push        eax
 005A0FDB    call        GDI32.SetAbortProc
 005A0FE0    lea         eax,[ebp-18]
 005A0FE3    push        eax
 005A0FE4    mov         eax,dword ptr [ebp-4]
 005A0FE7    mov         eax,dword ptr [eax+20]
 005A0FEA    push        eax
 005A0FEB    call        GDI32.StartDocA
 005A0FF0    mov         eax,dword ptr [ebp-4]
 005A0FF3    mov         eax,dword ptr [eax+20]
 005A0FF6    push        eax
 005A0FF7    call        GDI32.StartPage
 005A0FFC    mov         esp,ebp
 005A0FFE    pop         ebp
 005A0FFF    ret
end;*}

//005A1000
{*procedure sub_005A1000(?:?);
begin
 005A1000    push        ebp
 005A1001    mov         ebp,esp
 005A1003    push        ecx
 005A1004    mov         dword ptr [ebp-4],eax
 005A1007    mov         dl,1
 005A1009    mov         eax,dword ptr [ebp-4]
 005A100C    call        005A0ED4
 005A1011    mov         eax,dword ptr [ebp-4]
 005A1014    mov         eax,dword ptr [eax+20]
 005A1017    push        eax
 005A1018    call        GDI32.EndPage
 005A101D    mov         eax,dword ptr [ebp-4]
 005A1020    cmp         byte ptr [eax+1D],0
>005A1024    jne         005A1032
 005A1026    mov         eax,dword ptr [ebp-4]
 005A1029    mov         eax,dword ptr [eax+20]
 005A102C    push        eax
 005A102D    call        GDI32.EndDoc
 005A1032    mov         eax,dword ptr [ebp-4]
 005A1035    mov         byte ptr [eax+1C],0
 005A1039    mov         eax,dword ptr [ebp-4]
 005A103C    mov         byte ptr [eax+1D],0
 005A1040    mov         eax,dword ptr [ebp-4]
 005A1043    xor         edx,edx
 005A1045    mov         dword ptr [eax+0C],edx
 005A1048    pop         ecx
 005A1049    pop         ebp
 005A104A    ret
end;*}

//005A104C
{*procedure sub_005A104C(?:?);
begin
 005A104C    push        ebp
 005A104D    mov         ebp,esp
 005A104F    push        ecx
 005A1050    mov         dword ptr [ebp-4],eax
 005A1053    mov         dl,1
 005A1055    mov         eax,dword ptr [ebp-4]
 005A1058    call        005A0ED4
 005A105D    mov         eax,dword ptr [ebp-4]
 005A1060    mov         eax,dword ptr [eax+20]
 005A1063    push        eax
 005A1064    call        GDI32.EndPage
 005A1069    mov         eax,dword ptr [ebp-4]
 005A106C    mov         eax,dword ptr [eax+20]
 005A106F    push        eax
 005A1070    call        GDI32.StartPage
 005A1075    mov         eax,dword ptr [ebp-4]
 005A1078    inc         dword ptr [eax+0C]
 005A107B    mov         eax,dword ptr [ebp-4]
 005A107E    call        005A1420
 005A1083    call        005C14B0
 005A1088    pop         ecx
 005A1089    pop         ebp
 005A108A    ret
end;*}

//005A108C
{*procedure sub_005A108C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005A108C    push        ebp
 005A108D    mov         ebp,esp
 005A108F    add         esp,0FFFFFFF0
 005A1092    mov         dword ptr [ebp-0C],ecx
 005A1095    mov         dword ptr [ebp-8],edx
 005A1098    mov         dword ptr [ebp-4],eax
 005A109B    mov         eax,dword ptr [ebp-4]
 005A109E    call        005A15D0
 005A10A3    push        eax
 005A10A4    mov         eax,dword ptr [ebp-4]
 005A10A7    call        005A15FC
 005A10AC    pop         edx
 005A10AD    mov         ecx,dword ptr [eax]
 005A10AF    call        dword ptr [ecx+18]
 005A10B2    mov         dword ptr [ebp-10],eax
 005A10B5    mov         eax,dword ptr [ebp-10]
 005A10B8    mov         eax,dword ptr [eax+8]
 005A10BB    call        @LStrToPChar
 005A10C0    mov         edx,eax
 005A10C2    mov         eax,dword ptr [ebp-8]
 005A10C5    call        StrCopy
 005A10CA    mov         eax,dword ptr [ebp-10]
 005A10CD    mov         eax,dword ptr [eax+4]
 005A10D0    call        @LStrToPChar
 005A10D5    mov         edx,eax
 005A10D7    mov         eax,dword ptr [ebp-0C]
 005A10DA    call        StrCopy
 005A10DF    mov         eax,dword ptr [ebp-10]
 005A10E2    mov         eax,dword ptr [eax+0C]
 005A10E5    call        @LStrToPChar
 005A10EA    mov         edx,eax
 005A10EC    mov         eax,dword ptr [ebp+0C]
 005A10EF    call        StrCopy
 005A10F4    mov         eax,dword ptr [ebp+8]
 005A10F7    mov         edx,dword ptr [ebp-4]
 005A10FA    mov         edx,dword ptr [edx+28]
 005A10FD    mov         dword ptr [eax],edx
 005A10FF    mov         esp,ebp
 005A1101    pop         ebp
 005A1102    ret         8
end;*}

//005A1108
{*procedure sub_005A1108(?:?; ?:?);
begin
 005A1108    push        ebp
 005A1109    mov         ebp,esp
 005A110B    add         esp,0FFFFFFF8
 005A110E    mov         dword ptr [ebp-8],edx
 005A1111    mov         dword ptr [ebp-4],eax
 005A1114    mov         eax,dword ptr [ebp-4]
 005A1117    mov         dl,byte ptr ds:[5A114C];0x0 gvar_005A114C
 005A111D    mov         byte ptr [eax+1E],dl
 005A1120    test        byte ptr [ebp-8],1
>005A1124    je          005A112D
 005A1126    mov         eax,dword ptr [ebp-4]
 005A1129    or          byte ptr [eax+1E],2
 005A112D    test        byte ptr [ebp-7],1
>005A1131    je          005A113A
 005A1133    mov         eax,dword ptr [ebp-4]
 005A1136    or          byte ptr [eax+1E],1
 005A113A    test        byte ptr [ebp-7],80
>005A113E    je          005A1147
 005A1140    mov         eax,dword ptr [ebp-4]
 005A1143    or          byte ptr [eax+1E],4
 005A1147    pop         ecx
 005A1148    pop         ecx
 005A1149    pop         ebp
 005A114A    ret
end;*}

//005A1150
{*procedure sub_005A1150(?:TPrinter; ?:PChar; ?:?; ?:?; ?:?);
begin
 005A1150    push        ebp
 005A1151    mov         ebp,esp
 005A1153    add         esp,0FFFFFF30
 005A1159    push        ebx
 005A115A    xor         ebx,ebx
 005A115C    mov         dword ptr [ebp-0BC],ebx
 005A1162    mov         dword ptr [ebp-0C0],ebx
 005A1168    mov         dword ptr [ebp-0C],ecx
 005A116B    mov         dword ptr [ebp-8],edx
 005A116E    mov         dword ptr [ebp-4],eax
 005A1171    xor         eax,eax
 005A1173    push        ebp
 005A1174    push        5A140F
 005A1179    push        dword ptr fs:[eax]
 005A117C    mov         dword ptr fs:[eax],esp
 005A117F    xor         edx,edx
 005A1181    mov         eax,dword ptr [ebp-4]
 005A1184    call        005A0ED4
 005A1189    mov         eax,dword ptr [ebp+8]
 005A118C    mov         edx,dword ptr [ebp-4]
 005A118F    cmp         eax,dword ptr [edx+28]
>005A1192    je          005A11BE
 005A1194    mov         eax,dword ptr [ebp-4]
 005A1197    cmp         dword ptr [eax+28],0
>005A119B    je          005A11B5
 005A119D    mov         eax,dword ptr [ebp-4]
 005A11A0    mov         eax,dword ptr [eax+28]
 005A11A3    push        eax
 005A11A4    call        KERNEL32.GlobalUnlock
 005A11A9    mov         eax,dword ptr [ebp-4]
 005A11AC    mov         eax,dword ptr [eax+28]
 005A11AF    push        eax
 005A11B0    call        KERNEL32.GlobalFree
 005A11B5    mov         eax,dword ptr [ebp+8]
 005A11B8    mov         edx,dword ptr [ebp-4]
 005A11BB    mov         dword ptr [edx+28],eax
 005A11BE    mov         eax,dword ptr [ebp-4]
 005A11C1    cmp         dword ptr [eax+28],0
>005A11C5    je          005A11EA
 005A11C7    mov         eax,dword ptr [ebp-4]
 005A11CA    mov         eax,dword ptr [eax+28]
 005A11CD    push        eax
 005A11CE    call        KERNEL32.GlobalLock
 005A11D3    mov         edx,dword ptr [ebp-4]
 005A11D6    mov         dword ptr [edx+24],eax
 005A11D9    mov         eax,dword ptr [ebp-4]
 005A11DC    mov         eax,dword ptr [eax+24]
 005A11DF    mov         edx,dword ptr [eax+28]
 005A11E2    mov         eax,dword ptr [ebp-4]
 005A11E5    call        005A1108
 005A11EA    mov         eax,dword ptr [ebp-4]
 005A11ED    call        005A1AF4
 005A11F2    mov         eax,dword ptr [ebp-4]
 005A11F5    cmp         dword ptr [eax+2C],0
>005A11F9    je          005A120F
 005A11FB    mov         eax,dword ptr [ebp-4]
 005A11FE    mov         eax,dword ptr [eax+2C]
 005A1201    push        eax
 005A1202    call        WINSPOOL.ClosePrinter
 005A1207    mov         eax,dword ptr [ebp-4]
 005A120A    xor         edx,edx
 005A120C    mov         dword ptr [eax+2C],edx
 005A120F    xor         edx,edx
 005A1211    mov         eax,dword ptr [ebp-4]
 005A1214    call        005A0D54
 005A1219    mov         dword ptr [ebp-14],0FFFFFFFF
 005A1220    mov         eax,dword ptr [ebp-4]
 005A1223    call        005A15FC
 005A1228    mov         dword ptr [ebp-18],eax
 005A122B    mov         eax,dword ptr [ebp-18]
 005A122E    mov         edx,dword ptr [eax]
 005A1230    call        dword ptr [edx+14]
 005A1233    dec         eax
 005A1234    test        eax,eax
>005A1236    jl          005A1287
 005A1238    inc         eax
 005A1239    mov         dword ptr [ebp-1C],eax
 005A123C    mov         dword ptr [ebp-10],0
 005A1243    mov         eax,dword ptr [ebp+0C]
 005A1246    push        eax
 005A1247    mov         edx,dword ptr [ebp-10]
 005A124A    mov         eax,dword ptr [ebp-18]
 005A124D    mov         ecx,dword ptr [eax]
 005A124F    call        dword ptr [ecx+18]
 005A1252    mov         ecx,dword ptr [ebp-8]
 005A1255    mov         edx,dword ptr [ebp-0C]
 005A1258    call        005A09CC
 005A125D    test        al,al
>005A125F    je          005A127F
 005A1261    mov         edx,dword ptr [ebp-10]
 005A1264    mov         eax,dword ptr [ebp-18]
 005A1267    mov         ecx,dword ptr [eax]
 005A1269    call        dword ptr [ecx+18]
 005A126C    add         eax,0C
 005A126F    mov         edx,dword ptr [ebp+0C]
 005A1272    call        @LStrFromPChar
 005A1277    mov         eax,dword ptr [ebp-10]
 005A127A    mov         dword ptr [ebp-14],eax
>005A127D    jmp         005A1287
 005A127F    inc         dword ptr [ebp-10]
 005A1282    dec         dword ptr [ebp-1C]
>005A1285    jne         005A1243
 005A1287    cmp         dword ptr [ebp-14],0FFFFFFFF
>005A128B    jne         005A1316
 005A1291    mov         eax,dword ptr [ebp-4]
 005A1294    mov         eax,dword ptr [eax+10]
 005A1297    mov         edx,dword ptr [eax]
 005A1299    call        dword ptr [edx+14]
 005A129C    mov         dword ptr [ebp-14],eax
 005A129F    mov         eax,dword ptr [ebp-8]
 005A12A2    push        eax
 005A12A3    mov         eax,dword ptr [ebp+0C]
 005A12A6    push        eax
 005A12A7    mov         ecx,dword ptr [ebp-0C]
 005A12AA    mov         dl,1
 005A12AC    mov         eax,[005A08DC];TPrinterDevice
 005A12B1    call        TPrinterDevice.Create;TPrinterDevice.Create
 005A12B6    push        eax
 005A12B7    lea         eax,[ebp-0BC]
 005A12BD    push        eax
 005A12BE    lea         edx,[ebp-0C0]
 005A12C4    mov         eax,[006E9E70];^gvar_0063CAF0
 005A12C9    call        LoadResString
 005A12CE    mov         eax,dword ptr [ebp-0C0]
 005A12D4    mov         edx,dword ptr [ebp-8]
 005A12D7    mov         dword ptr [ebp-0D0],edx
 005A12DD    mov         byte ptr [ebp-0CC],6
 005A12E4    mov         edx,dword ptr [ebp+0C]
 005A12E7    mov         dword ptr [ebp-0C8],edx
 005A12ED    mov         byte ptr [ebp-0C4],6
 005A12F4    lea         edx,[ebp-0D0]
 005A12FA    mov         ecx,1
 005A12FF    call        00658FBC
 005A1304    mov         edx,dword ptr [ebp-0BC]
 005A130A    mov         eax,dword ptr [ebp-4]
 005A130D    mov         eax,dword ptr [eax+10]
 005A1310    pop         ecx
 005A1311    mov         ebx,dword ptr [eax]
 005A1313    call        dword ptr [ebx+3C]
 005A1316    mov         eax,dword ptr [ebp-14]
 005A1319    mov         edx,dword ptr [ebp-4]
 005A131C    mov         dword ptr [edx+14],eax
 005A131F    push        0
 005A1321    mov         eax,dword ptr [ebp-4]
 005A1324    add         eax,2C
 005A1327    push        eax
 005A1328    mov         eax,dword ptr [ebp-8]
 005A132B    push        eax
 005A132C    call        WINSPOOL.OpenPrinterA
 005A1331    test        eax,eax
>005A1333    je          005A13F1
 005A1339    mov         eax,dword ptr [ebp-4]
 005A133C    cmp         dword ptr [eax+28],0
>005A1340    jne         005A13D7
 005A1346    push        0
 005A1348    lea         eax,[ebp-0B8]
 005A134E    push        eax
 005A134F    lea         eax,[ebp-0B8]
 005A1355    push        eax
 005A1356    mov         eax,dword ptr [ebp-8]
 005A1359    push        eax
 005A135A    mov         eax,dword ptr [ebp-4]
 005A135D    mov         eax,dword ptr [eax+2C]
 005A1360    push        eax
 005A1361    push        0
 005A1363    call        WINSPOOL.DocumentPropertiesA
 005A1368    push        eax
 005A1369    push        42
 005A136B    call        KERNEL32.GlobalAlloc
 005A1370    mov         edx,dword ptr [ebp-4]
 005A1373    mov         dword ptr [edx+28],eax
 005A1376    mov         eax,dword ptr [ebp-4]
 005A1379    cmp         dword ptr [eax+28],0
>005A137D    je          005A13D7
 005A137F    mov         eax,dword ptr [ebp-4]
 005A1382    mov         eax,dword ptr [eax+28]
 005A1385    push        eax
 005A1386    call        KERNEL32.GlobalLock
 005A138B    mov         edx,dword ptr [ebp-4]
 005A138E    mov         dword ptr [edx+24],eax
 005A1391    push        2
 005A1393    mov         eax,dword ptr [ebp-4]
 005A1396    mov         eax,dword ptr [eax+24]
 005A1399    push        eax
 005A139A    mov         eax,dword ptr [ebp-4]
 005A139D    mov         eax,dword ptr [eax+24]
 005A13A0    push        eax
 005A13A1    mov         eax,dword ptr [ebp-8]
 005A13A4    push        eax
 005A13A5    mov         eax,dword ptr [ebp-4]
 005A13A8    mov         eax,dword ptr [eax+2C]
 005A13AB    push        eax
 005A13AC    push        0
 005A13AE    call        WINSPOOL.DocumentPropertiesA
 005A13B3    test        eax,eax
>005A13B5    jge         005A13D7
 005A13B7    mov         eax,dword ptr [ebp-4]
 005A13BA    mov         eax,dword ptr [eax+28]
 005A13BD    push        eax
 005A13BE    call        KERNEL32.GlobalUnlock
 005A13C3    mov         eax,dword ptr [ebp-4]
 005A13C6    mov         eax,dword ptr [eax+28]
 005A13C9    push        eax
 005A13CA    call        KERNEL32.GlobalFree
 005A13CF    mov         eax,dword ptr [ebp-4]
 005A13D2    xor         edx,edx
 005A13D4    mov         dword ptr [eax+28],edx
 005A13D7    mov         eax,dword ptr [ebp-4]
 005A13DA    cmp         dword ptr [eax+28],0
>005A13DE    je          005A13F1
 005A13E0    mov         eax,dword ptr [ebp-4]
 005A13E3    mov         eax,dword ptr [eax+24]
 005A13E6    mov         edx,dword ptr [eax+28]
 005A13E9    mov         eax,dword ptr [ebp-4]
 005A13EC    call        005A1108
 005A13F1    xor         eax,eax
 005A13F3    pop         edx
 005A13F4    pop         ecx
 005A13F5    pop         ecx
 005A13F6    mov         dword ptr fs:[eax],edx
 005A13F9    push        5A1416
 005A13FE    lea         eax,[ebp-0C0]
 005A1404    mov         edx,2
 005A1409    call        @LStrArrayClr
 005A140E    ret
>005A140F    jmp         @HandleFinally
>005A1414    jmp         005A13FE
 005A1416    pop         ebx
 005A1417    mov         esp,ebp
 005A1419    pop         ebp
 005A141A    ret         8
end;*}

//005A1420
{*function sub_005A1420(?:?):?;
begin
 005A1420    push        ebp
 005A1421    mov         ebp,esp
 005A1423    add         esp,0FFFFFFF8
 005A1426    mov         dword ptr [ebp-4],eax
 005A1429    mov         eax,dword ptr [ebp-4]
 005A142C    cmp         dword ptr [eax+4],0
>005A1430    jne         005A1447
 005A1432    mov         ecx,dword ptr [ebp-4]
 005A1435    mov         dl,1
 005A1437    mov         eax,[005A0A68];TPrinterCanvas
 005A143C    call        TPrinterCanvas.Create;TPrinterCanvas.Create
 005A1441    mov         edx,dword ptr [ebp-4]
 005A1444    mov         dword ptr [edx+4],eax
 005A1447    mov         eax,dword ptr [ebp-4]
 005A144A    mov         eax,dword ptr [eax+4]
 005A144D    mov         dword ptr [ebp-8],eax
 005A1450    mov         eax,dword ptr [ebp-8]
 005A1453    pop         ecx
 005A1454    pop         ecx
 005A1455    pop         ebp
 005A1456    ret
end;*}

//005A1458
{*function sub_005A1458(?:?):?;
begin
 005A1458    push        ebp
 005A1459    mov         ebp,esp
 005A145B    add         esp,0FFFFFFF8
 005A145E    mov         dword ptr [ebp-4],eax
 005A1461    mov         dl,1
 005A1463    mov         eax,dword ptr [ebp-4]
 005A1466    call        005A0D54
 005A146B    mov         eax,dword ptr [ebp-4]
 005A146E    mov         eax,dword ptr [eax+20]
 005A1471    mov         dword ptr [ebp-8],eax
 005A1474    mov         eax,dword ptr [ebp-8]
 005A1477    pop         ecx
 005A1478    pop         ecx
 005A1479    pop         ebp
 005A147A    ret
end;*}

//005A147C
{*function sub_005A147C(?:?):?;
begin
 005A147C    push        ebp
 005A147D    mov         ebp,esp
 005A147F    add         esp,0FFFFFFF4
 005A1482    xor         edx,edx
 005A1484    mov         dword ptr [ebp-0C],edx
 005A1487    mov         dword ptr [ebp-4],eax
 005A148A    xor         eax,eax
 005A148C    push        ebp
 005A148D    push        5A14E1
 005A1492    push        dword ptr fs:[eax]
 005A1495    mov         dword ptr fs:[eax],esp
 005A1498    mov         eax,dword ptr [ebp-4]
 005A149B    call        005A15D0
 005A14A0    mov         eax,dword ptr [ebp-4]
 005A14A3    cmp         dword ptr [eax+28],0
>005A14A7    jne         005A14BE
 005A14A9    lea         edx,[ebp-0C]
 005A14AC    mov         eax,[006E9F9C];^gvar_0063CD48
 005A14B1    call        LoadResString
 005A14B6    mov         eax,dword ptr [ebp-0C]
 005A14B9    call        005A0890
 005A14BE    mov         eax,dword ptr [ebp-4]
 005A14C1    mov         eax,dword ptr [eax+24]
 005A14C4    movsx       eax,word ptr [eax+36]
 005A14C8    mov         dword ptr [ebp-8],eax
 005A14CB    xor         eax,eax
 005A14CD    pop         edx
 005A14CE    pop         ecx
 005A14CF    pop         ecx
 005A14D0    mov         dword ptr fs:[eax],edx
 005A14D3    push        5A14E8
 005A14D8    lea         eax,[ebp-0C]
 005A14DB    call        @LStrClr
 005A14E0    ret
>005A14E1    jmp         @HandleFinally
>005A14E6    jmp         005A14D8
 005A14E8    mov         eax,dword ptr [ebp-8]
 005A14EB    mov         esp,ebp
 005A14ED    pop         ebp
 005A14EE    ret
end;*}

//005A14F0
{*procedure sub_005A14F0(?:?; ?:Integer);
begin
 005A14F0    push        ebp
 005A14F1    mov         ebp,esp
 005A14F3    add         esp,0FFFFFFF4
 005A14F6    xor         ecx,ecx
 005A14F8    mov         dword ptr [ebp-0C],ecx
 005A14FB    mov         dword ptr [ebp-8],edx
 005A14FE    mov         dword ptr [ebp-4],eax
 005A1501    xor         eax,eax
 005A1503    push        ebp
 005A1504    push        5A156D
 005A1509    push        dword ptr fs:[eax]
 005A150C    mov         dword ptr fs:[eax],esp
 005A150F    xor         edx,edx
 005A1511    mov         eax,dword ptr [ebp-4]
 005A1514    call        005A0ED4
 005A1519    mov         eax,dword ptr [ebp-4]
 005A151C    call        005A15D0
 005A1521    mov         eax,dword ptr [ebp-4]
 005A1524    cmp         dword ptr [eax+28],0
>005A1528    jne         005A153F
 005A152A    lea         edx,[ebp-0C]
 005A152D    mov         eax,[006E9F9C];^gvar_0063CD48
 005A1532    call        LoadResString
 005A1537    mov         eax,dword ptr [ebp-0C]
 005A153A    call        005A0890
 005A153F    xor         edx,edx
 005A1541    mov         eax,dword ptr [ebp-4]
 005A1544    call        005A0D54
 005A1549    mov         eax,dword ptr [ebp-4]
 005A154C    mov         eax,dword ptr [eax+24]
 005A154F    mov         dx,word ptr [ebp-8]
 005A1553    mov         word ptr [eax+36],dx
 005A1557    xor         eax,eax
 005A1559    pop         edx
 005A155A    pop         ecx
 005A155B    pop         ecx
 005A155C    mov         dword ptr fs:[eax],edx
 005A155F    push        5A1574
 005A1564    lea         eax,[ebp-0C]
 005A1567    call        @LStrClr
 005A156C    ret
>005A156D    jmp         @HandleFinally
>005A1572    jmp         005A1564
 005A1574    mov         esp,ebp
 005A1576    pop         ebp
 005A1577    ret
end;*}

//005A1578
{*function sub_005A1578(?:?):?;
begin
 005A1578    push        ebp
 005A1579    mov         ebp,esp
 005A157B    add         esp,0FFFFFFF8
 005A157E    mov         dword ptr [ebp-4],eax
 005A1581    mov         dl,1
 005A1583    mov         eax,dword ptr [ebp-4]
 005A1586    call        005A0D54
 005A158B    push        0A
 005A158D    mov         eax,dword ptr [ebp-4]
 005A1590    mov         eax,dword ptr [eax+20]
 005A1593    push        eax
 005A1594    call        GDI32.GetDeviceCaps
 005A1599    mov         dword ptr [ebp-8],eax
 005A159C    mov         eax,dword ptr [ebp-8]
 005A159F    pop         ecx
 005A15A0    pop         ecx
 005A15A1    pop         ebp
 005A15A2    ret
end;*}

//005A15A4
{*function sub_005A15A4(?:?):?;
begin
 005A15A4    push        ebp
 005A15A5    mov         ebp,esp
 005A15A7    add         esp,0FFFFFFF8
 005A15AA    mov         dword ptr [ebp-4],eax
 005A15AD    mov         dl,1
 005A15AF    mov         eax,dword ptr [ebp-4]
 005A15B2    call        005A0D54
 005A15B7    push        8
 005A15B9    mov         eax,dword ptr [ebp-4]
 005A15BC    mov         eax,dword ptr [eax+20]
 005A15BF    push        eax
 005A15C0    call        GDI32.GetDeviceCaps
 005A15C5    mov         dword ptr [ebp-8],eax
 005A15C8    mov         eax,dword ptr [ebp-8]
 005A15CB    pop         ecx
 005A15CC    pop         ecx
 005A15CD    pop         ebp
 005A15CE    ret
end;*}

//005A15D0
{*function sub_005A15D0(?:TPrinter):?;
begin
 005A15D0    push        ebp
 005A15D1    mov         ebp,esp
 005A15D3    add         esp,0FFFFFFF8
 005A15D6    mov         dword ptr [ebp-4],eax
 005A15D9    mov         eax,dword ptr [ebp-4]
 005A15DC    cmp         dword ptr [eax+14],0FFFFFFFF;TPrinter.FPrinterIndex:Integer
>005A15E0    jne         005A15EA
 005A15E2    mov         eax,dword ptr [ebp-4]
 005A15E5    call        005A1884
 005A15EA    mov         eax,dword ptr [ebp-4]
 005A15ED    mov         eax,dword ptr [eax+14];TPrinter.FPrinterIndex:Integer
 005A15F0    mov         dword ptr [ebp-8],eax
 005A15F3    mov         eax,dword ptr [ebp-8]
 005A15F6    pop         ecx
 005A15F7    pop         ecx
 005A15F8    pop         ebp
 005A15F9    ret
end;*}

//005A15FC
{*function sub_005A15FC(?:TPrinter):?;
begin
 005A15FC    push        ebp
 005A15FD    mov         ebp,esp
 005A15FF    add         esp,0FFFFFFAC
 005A1602    push        ebx
 005A1603    push        esi
 005A1604    push        edi
 005A1605    xor         edx,edx
 005A1607    mov         dword ptr [ebp-40],edx
 005A160A    mov         dword ptr [ebp-44],edx
 005A160D    mov         dword ptr [ebp-3C],edx
 005A1610    mov         dword ptr [ebp-4],eax
 005A1613    xor         eax,eax
 005A1615    push        ebp
 005A1616    push        5A1871
 005A161B    push        dword ptr fs:[eax]
 005A161E    mov         dword ptr fs:[eax],esp
 005A1621    mov         eax,dword ptr [ebp-4]
 005A1624    cmp         dword ptr [eax+10],0;TPrinter.FPrinters:TStrings
>005A1628    jne         005A184D
 005A162E    mov         dl,1
 005A1630    mov         eax,[006428B0];TStringList
 005A1635    call        TObject.Create;TStringList.Create
 005A163A    mov         edx,dword ptr [ebp-4]
 005A163D    mov         dword ptr [edx+10],eax;TPrinter.FPrinters:TStrings
 005A1640    mov         eax,dword ptr [ebp-4]
 005A1643    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 005A1646    mov         dword ptr [ebp-8],eax
 005A1649    xor         eax,eax
 005A164B    push        ebp
 005A164C    push        5A182B
 005A1651    push        dword ptr fs:[eax]
 005A1654    mov         dword ptr fs:[eax],esp
 005A1657    mov         eax,[006EA0EC];^gvar_006E498C
 005A165C    cmp         dword ptr [eax],2
>005A165F    jne         005A166E
 005A1661    mov         dword ptr [ebp-1C],6
 005A1668    mov         byte ptr [ebp-29],4
>005A166C    jmp         005A1679
 005A166E    mov         dword ptr [ebp-1C],2
 005A1675    mov         byte ptr [ebp-29],5
 005A1679    xor         eax,eax
 005A167B    mov         dword ptr [ebp-20],eax
 005A167E    lea         eax,[ebp-24]
 005A1681    push        eax
 005A1682    lea         eax,[ebp-20]
 005A1685    push        eax
 005A1686    push        0
 005A1688    push        0
 005A168A    xor         eax,eax
 005A168C    mov         al,byte ptr [ebp-29]
 005A168F    push        eax
 005A1690    push        0
 005A1692    mov         eax,dword ptr [ebp-1C]
 005A1695    push        eax
 005A1696    call        WINSPOOL.EnumPrintersA
 005A169B    cmp         dword ptr [ebp-20],0
>005A169F    jne         005A16AE
 005A16A1    xor         eax,eax
 005A16A3    pop         edx
 005A16A4    pop         ecx
 005A16A5    pop         ecx
 005A16A6    mov         dword ptr fs:[eax],edx
>005A16A9    jmp         005A1856
 005A16AE    mov         eax,dword ptr [ebp-20]
 005A16B1    call        @GetMem
 005A16B6    mov         dword ptr [ebp-14],eax
 005A16B9    xor         eax,eax
 005A16BB    push        ebp
 005A16BC    push        5A181A
 005A16C1    push        dword ptr fs:[eax]
 005A16C4    mov         dword ptr fs:[eax],esp
 005A16C7    lea         eax,[ebp-24]
 005A16CA    push        eax
 005A16CB    lea         eax,[ebp-20]
 005A16CE    push        eax
 005A16CF    mov         eax,dword ptr [ebp-20]
 005A16D2    push        eax
 005A16D3    mov         eax,dword ptr [ebp-14]
 005A16D6    push        eax
 005A16D7    xor         eax,eax
 005A16D9    mov         al,byte ptr [ebp-29]
 005A16DC    push        eax
 005A16DD    push        0
 005A16DF    mov         eax,dword ptr [ebp-1C]
 005A16E2    push        eax
 005A16E3    call        WINSPOOL.EnumPrintersA
 005A16E8    test        eax,eax
>005A16EA    jne         005A16FE
 005A16EC    call        @TryFinallyExit
 005A16F1    xor         eax,eax
 005A16F3    pop         edx
 005A16F4    pop         ecx
 005A16F5    pop         ecx
 005A16F6    mov         dword ptr fs:[eax],edx
>005A16F9    jmp         005A1856
 005A16FE    mov         eax,dword ptr [ebp-14]
 005A1701    mov         dword ptr [ebp-18],eax
 005A1704    mov         eax,dword ptr [ebp-24]
 005A1707    dec         eax
 005A1708    test        eax,eax
>005A170A    jl          005A1801
 005A1710    inc         eax
 005A1711    mov         dword ptr [ebp-30],eax
 005A1714    mov         dword ptr [ebp-28],0
 005A171B    cmp         byte ptr [ebp-29],4
>005A171F    jne         005A1763
 005A1721    mov         eax,dword ptr [ebp-18]
 005A1724    mov         dword ptr [ebp-34],eax
 005A1727    mov         eax,dword ptr [ebp-34]
 005A172A    mov         eax,dword ptr [eax]
 005A172C    push        eax
 005A172D    push        0
 005A172F    xor         ecx,ecx
 005A1731    mov         dl,1
 005A1733    mov         eax,[005A08DC];TPrinterDevice
 005A1738    call        TPrinterDevice.Create;TPrinterDevice.Create
 005A173D    push        eax
 005A173E    lea         eax,[ebp-3C]
 005A1741    mov         edx,dword ptr [ebp-34]
 005A1744    mov         edx,dword ptr [edx]
 005A1746    call        @LStrFromPChar
 005A174B    mov         edx,dword ptr [ebp-3C]
 005A174E    mov         eax,dword ptr [ebp-4]
 005A1751    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 005A1754    pop         ecx
 005A1755    mov         ebx,dword ptr [eax]
 005A1757    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 005A175A    add         dword ptr [ebp-18],0C
>005A175E    jmp         005A17F5
 005A1763    mov         eax,dword ptr [ebp-18]
 005A1766    mov         dword ptr [ebp-38],eax
 005A1769    mov         eax,dword ptr [ebp-38]
 005A176C    mov         eax,dword ptr [eax+4]
 005A176F    mov         dword ptr [ebp-0C],eax
 005A1772    lea         eax,[ebp-0C]
 005A1775    call        005A0824
 005A177A    mov         dword ptr [ebp-10],eax
>005A177D    jmp         005A17E9
 005A177F    mov         eax,dword ptr [ebp-38]
 005A1782    mov         eax,dword ptr [eax]
 005A1784    push        eax
 005A1785    mov         eax,dword ptr [ebp-10]
 005A1788    push        eax
 005A1789    xor         ecx,ecx
 005A178B    mov         dl,1
 005A178D    mov         eax,[005A08DC];TPrinterDevice
 005A1792    call        TPrinterDevice.Create;TPrinterDevice.Create
 005A1797    push        eax
 005A1798    lea         eax,[ebp-40]
 005A179B    push        eax
 005A179C    lea         edx,[ebp-44]
 005A179F    mov         eax,[006E9E70];^gvar_0063CAF0
 005A17A4    call        LoadResString
 005A17A9    mov         eax,dword ptr [ebp-44]
 005A17AC    mov         edx,dword ptr [ebp-38]
 005A17AF    mov         edx,dword ptr [edx]
 005A17B1    mov         dword ptr [ebp-54],edx
 005A17B4    mov         byte ptr [ebp-50],6
 005A17B8    mov         edx,dword ptr [ebp-10]
 005A17BB    mov         dword ptr [ebp-4C],edx
 005A17BE    mov         byte ptr [ebp-48],6
 005A17C2    lea         edx,[ebp-54]
 005A17C5    mov         ecx,1
 005A17CA    call        00658FBC
 005A17CF    mov         edx,dword ptr [ebp-40]
 005A17D2    mov         eax,dword ptr [ebp-4]
 005A17D5    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 005A17D8    pop         ecx
 005A17D9    mov         ebx,dword ptr [eax]
 005A17DB    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 005A17DE    lea         eax,[ebp-0C]
 005A17E1    call        005A0824
 005A17E6    mov         dword ptr [ebp-10],eax
 005A17E9    mov         eax,dword ptr [ebp-10]
 005A17EC    cmp         byte ptr [eax],0
>005A17EF    jne         005A177F
 005A17F1    add         dword ptr [ebp-18],14
 005A17F5    inc         dword ptr [ebp-28]
 005A17F8    dec         dword ptr [ebp-30]
>005A17FB    jne         005A171B
 005A1801    xor         eax,eax
 005A1803    pop         edx
 005A1804    pop         ecx
 005A1805    pop         ecx
 005A1806    mov         dword ptr fs:[eax],edx
 005A1809    push        5A1821
 005A180E    mov         edx,dword ptr [ebp-20]
 005A1811    mov         eax,dword ptr [ebp-14]
 005A1814    call        @FreeMem
 005A1819    ret
>005A181A    jmp         @HandleFinally
>005A181F    jmp         005A180E
 005A1821    xor         eax,eax
 005A1823    pop         edx
 005A1824    pop         ecx
 005A1825    pop         ecx
 005A1826    mov         dword ptr fs:[eax],edx
>005A1829    jmp         005A184D
>005A182B    jmp         @HandleAnyException
 005A1830    mov         eax,dword ptr [ebp-4]
 005A1833    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 005A1836    call        TObject.Free
 005A183B    mov         eax,dword ptr [ebp-4]
 005A183E    xor         edx,edx
 005A1840    mov         dword ptr [eax+10],edx;TPrinter.FPrinters:TStrings
 005A1843    call        @RaiseAgain
 005A1848    call        @DoneExcept
 005A184D    mov         eax,dword ptr [ebp-4]
 005A1850    mov         eax,dword ptr [eax+10];TPrinter.FPrinters:TStrings
 005A1853    mov         dword ptr [ebp-8],eax
 005A1856    xor         eax,eax
 005A1858    pop         edx
 005A1859    pop         ecx
 005A185A    pop         ecx
 005A185B    mov         dword ptr fs:[eax],edx
 005A185E    push        5A1878
 005A1863    lea         eax,[ebp-44]
 005A1866    mov         edx,3
 005A186B    call        @LStrArrayClr
 005A1870    ret
>005A1871    jmp         @HandleFinally
>005A1876    jmp         005A1863
 005A1878    mov         eax,dword ptr [ebp-8]
 005A187B    pop         edi
 005A187C    pop         esi
 005A187D    pop         ebx
 005A187E    mov         esp,ebp
 005A1880    pop         ebp
 005A1881    ret
end;*}

//005A1884
procedure sub_005A1884(?:TPrinter);
begin
{*
 005A1884    push        ebp
 005A1885    mov         ebp,esp
 005A1887    add         esp,0FFFFFBCC
 005A188D    xor         edx,edx
 005A188F    mov         dword ptr [ebp-434],edx
 005A1895    mov         dword ptr [ebp-430],edx
 005A189B    mov         dword ptr [ebp-42C],edx
 005A18A1    mov         dword ptr [ebp-4],eax
 005A18A4    xor         eax,eax
 005A18A6    push        ebp
 005A18A7    push        5A1A7C
 005A18AC    push        dword ptr fs:[eax]
 005A18AF    mov         dword ptr fs:[eax],esp
 005A18B2    xor         eax,eax
 005A18B4    mov         dword ptr [ebp-0C],eax
 005A18B7    xor         eax,eax
 005A18B9    mov         dword ptr [ebp-10],eax
 005A18BC    lea         eax,[ebp-10]
 005A18BF    push        eax
 005A18C0    lea         eax,[ebp-0C]
 005A18C3    push        eax
 005A18C4    push        0
 005A18C6    push        0
 005A18C8    push        5
 005A18CA    push        0
 005A18CC    push        1
 005A18CE    call        WINSPOOL.EnumPrintersA
 005A18D3    test        eax,eax
>005A18D5    jne         005A190D
 005A18D7    call        KERNEL32.GetLastError
 005A18DC    cmp         eax,7A
>005A18DF    je          005A190D
 005A18E1    call        KERNEL32.GetLastError
 005A18E6    cmp         eax,7B
>005A18E9    jne         005A1908
 005A18EB    lea         edx,[ebp-42C]
 005A18F1    mov         eax,[006E9FA0];^gvar_0063CD50
 005A18F6    call        LoadResString
 005A18FB    mov         eax,dword ptr [ebp-42C]
 005A1901    call        005A0890
>005A1906    jmp         005A190D
 005A1908    call        RaiseLastOSError
 005A190D    mov         eax,dword ptr [ebp-0C]
 005A1910    call        0065744C
 005A1915    mov         dword ptr [ebp-1C],eax
 005A1918    xor         eax,eax
 005A191A    push        ebp
 005A191B    push        5A1A3C
 005A1920    push        dword ptr fs:[eax]
 005A1923    mov         dword ptr fs:[eax],esp
 005A1926    lea         eax,[ebp-10]
 005A1929    push        eax
 005A192A    lea         eax,[ebp-0C]
 005A192D    push        eax
 005A192E    mov         eax,dword ptr [ebp-0C]
 005A1931    push        eax
 005A1932    mov         eax,dword ptr [ebp-1C]
 005A1935    push        eax
 005A1936    push        5
 005A1938    push        0
 005A193A    push        1
 005A193C    call        WINSPOOL.EnumPrintersA
 005A1941    cmp         dword ptr [ebp-10],0
>005A1945    jbe         005A1951
 005A1947    mov         eax,dword ptr [ebp-1C]
 005A194A    mov         eax,dword ptr [eax]
 005A194C    mov         dword ptr [ebp-18],eax
>005A194F    jmp         005A1985
 005A1951    push        3FF
 005A1956    lea         eax,[ebp-428]
 005A195C    push        eax
 005A195D    push        5A1A88
 005A1962    push        5A1A8C
 005A1967    push        5A1A94
 005A196C    call        KERNEL32.GetProfileStringA
 005A1971    lea         eax,[ebp-428]
 005A1977    mov         dword ptr [ebp-14],eax
 005A197A    lea         eax,[ebp-14]
 005A197D    call        005A0824
 005A1982    mov         dword ptr [ebp-18],eax
 005A1985    mov         eax,dword ptr [ebp-4]
 005A1988    call        005A15FC
 005A198D    mov         dword ptr [ebp-20],eax
 005A1990    mov         eax,dword ptr [ebp-20]
 005A1993    mov         edx,dword ptr [eax]
 005A1995    call        dword ptr [edx+14]
 005A1998    dec         eax
 005A1999    test        eax,eax
>005A199B    jl          005A1A26
 005A19A1    inc         eax
 005A19A2    mov         dword ptr [ebp-24],eax
 005A19A5    mov         dword ptr [ebp-8],0
 005A19AC    mov         edx,dword ptr [ebp-8]
 005A19AF    mov         eax,dword ptr [ebp-20]
 005A19B2    mov         ecx,dword ptr [eax]
 005A19B4    call        dword ptr [ecx+18]
 005A19B7    mov         eax,dword ptr [eax+8]
 005A19BA    push        eax
 005A19BB    lea         eax,[ebp-430]
 005A19C1    mov         edx,dword ptr [ebp-18]
 005A19C4    call        @LStrFromPChar
 005A19C9    mov         edx,dword ptr [ebp-430]
 005A19CF    pop         eax
 005A19D0    call        006577F4
 005A19D5    test        al,al
>005A19D7    je          005A1A1E
 005A19D9    mov         edx,dword ptr [ebp-8]
 005A19DC    mov         eax,dword ptr [ebp-20]
 005A19DF    mov         ecx,dword ptr [eax]
 005A19E1    call        dword ptr [ecx+18]
 005A19E4    mov         dword ptr [ebp-28],eax
 005A19E7    mov         eax,dword ptr [ebp-28]
 005A19EA    mov         eax,dword ptr [eax+0C]
 005A19ED    call        @LStrToPChar
 005A19F2    push        eax
 005A19F3    push        0
 005A19F5    mov         eax,dword ptr [ebp-28]
 005A19F8    mov         eax,dword ptr [eax+4]
 005A19FB    call        @LStrToPChar
 005A1A00    push        eax
 005A1A01    mov         eax,dword ptr [ebp-28]
 005A1A04    mov         eax,dword ptr [eax+8]
 005A1A07    call        @LStrToPChar
 005A1A0C    mov         edx,eax
 005A1A0E    mov         eax,dword ptr [ebp-4]
 005A1A11    pop         ecx
 005A1A12    call        005A1150
 005A1A17    call        @TryFinallyExit
>005A1A1C    jmp         005A1A5E
 005A1A1E    inc         dword ptr [ebp-8]
 005A1A21    dec         dword ptr [ebp-24]
>005A1A24    jne         005A19AC
 005A1A26    xor         eax,eax
 005A1A28    pop         edx
 005A1A29    pop         ecx
 005A1A2A    pop         ecx
 005A1A2B    mov         dword ptr fs:[eax],edx
 005A1A2E    push        5A1A43
 005A1A33    mov         eax,dword ptr [ebp-1C]
 005A1A36    call        @FreeMem
 005A1A3B    ret
>005A1A3C    jmp         @HandleFinally
>005A1A41    jmp         005A1A33
 005A1A43    lea         edx,[ebp-434]
 005A1A49    mov         eax,[006E9FA0];^gvar_0063CD50
 005A1A4E    call        LoadResString
 005A1A53    mov         eax,dword ptr [ebp-434]
 005A1A59    call        005A0890
 005A1A5E    xor         eax,eax
 005A1A60    pop         edx
 005A1A61    pop         ecx
 005A1A62    pop         ecx
 005A1A63    mov         dword ptr fs:[eax],edx
 005A1A66    push        5A1A83
 005A1A6B    lea         eax,[ebp-434]
 005A1A71    mov         edx,3
 005A1A76    call        @LStrArrayClr
 005A1A7B    ret
>005A1A7C    jmp         @HandleFinally
>005A1A81    jmp         005A1A6B
 005A1A83    mov         esp,ebp
 005A1A85    pop         ebp
 005A1A86    ret
*}
end;

//005A1AF4
{*procedure sub_005A1AF4(?:?);
begin
 005A1AF4    push        ebp
 005A1AF5    mov         ebp,esp
 005A1AF7    push        ecx
 005A1AF8    mov         dword ptr [ebp-4],eax
 005A1AFB    mov         eax,dword ptr [ebp-4]
 005A1AFE    add         eax,8
 005A1B01    call        FreeAndNil
 005A1B06    pop         ecx
 005A1B07    pop         ebp
 005A1B08    ret
end;*}

//005A1B0C
{*function sub_005A1B0C:?;
begin
 005A1B0C    push        ebp
 005A1B0D    mov         ebp,esp
 005A1B0F    push        ecx
 005A1B10    cmp         dword ptr ds:[6E3BC4],0;gvar_006E3BC4:TPrinter
>005A1B17    jne         005A1B2A
 005A1B19    mov         dl,1
 005A1B1B    mov         eax,[005A07BC];TPrinter
 005A1B20    call        TPrinter.Create;TPrinter.Create
 005A1B25    mov         [006E3BC4],eax;gvar_006E3BC4:TPrinter
 005A1B2A    mov         eax,[006E3BC4];0x0 gvar_006E3BC4:TPrinter
 005A1B2F    mov         dword ptr [ebp-4],eax
 005A1B32    mov         eax,dword ptr [ebp-4]
 005A1B35    pop         ecx
 005A1B36    pop         ebp
 005A1B37    ret
end;*}

//005A1B38
procedure Finalization;
begin
{*
 005A1B38    push        ebp
 005A1B39    mov         ebp,esp
 005A1B3B    xor         eax,eax
 005A1B3D    push        ebp
 005A1B3E    push        5A1B69
 005A1B43    push        dword ptr fs:[eax]
 005A1B46    mov         dword ptr fs:[eax],esp
 005A1B49    inc         dword ptr ds:[6ECCF8]
>005A1B4F    jne         005A1B5B
 005A1B51    mov         eax,[006E3BC4];gvar_006E3BC4:TPrinter
 005A1B56    call        TObject.Free
 005A1B5B    xor         eax,eax
 005A1B5D    pop         edx
 005A1B5E    pop         ecx
 005A1B5F    pop         ecx
 005A1B60    mov         dword ptr fs:[eax],edx
 005A1B63    push        5A1B70
 005A1B68    ret
>005A1B69    jmp         @HandleFinally
>005A1B6E    jmp         005A1B68
 005A1B70    pop         ebp
 005A1B71    ret
*}
end;

end.