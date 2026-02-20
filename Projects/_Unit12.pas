//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit12;

interface

uses
  SysUtils, Classes;

    @@Ufrmformtree@Initialize; stdcall;//004ADD84
    @@Ufrmformtree@Finalize; stdcall;//004ADD94
    constructor Create(AOwner:TComponent);//004ADDA4
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//004ADE78
    procedure FormCreate(Sender:TObject);//004ADEA0
    destructor Destroy;//004ADF40

implementation

//004ADDA4
constructor TFLegend_11011981.Create(AOwner:TComponent);
begin
{*
 004ADDA4    push        ebp
 004ADDA5    mov         ebp,esp
 004ADDA7    add         esp,0FFFFFFD0
 004ADDAA    mov         byte ptr [ebp-8],dl
 004ADDAD    test        dl,dl
>004ADDAF    jle         004ADDB6
 004ADDB1    call        0067EF6C
 004ADDB6    mov         dword ptr [ebp-30],ecx
 004ADDB9    mov         byte ptr [ebp-29],dl
 004ADDBC    mov         dword ptr [ebp-4],eax
 004ADDBF    mov         eax,6C3CEC
 004ADDC4    call        0066FECC
 004ADDC9    mov         word ptr [ebp-18],8
 004ADDCF    mov         ecx,dword ptr [ebp-30]
 004ADDD2    xor         edx,edx
 004ADDD4    mov         eax,dword ptr [ebp-4]
 004ADDD7    call        0040207C
 004ADDDC    add         dword ptr [ebp-0C],10
 004ADDE0    mov         edx,dword ptr [ebp-4]
 004ADDE3    mov         ecx,dword ptr [edx+304];TFLegend_11011981.lblUnitStd:TLabel
 004ADDE9    mov         eax,dword ptr [ecx+68];TLabel.FFont:TFont
 004ADDEC    mov         edx,0C08000
 004ADDF1    call        TFont.SetColor
 004ADDF6    mov         ecx,dword ptr [ebp-4]
 004ADDF9    mov         eax,dword ptr [ecx+308]
 004ADDFF    mov         eax,dword ptr [eax+68]
 004ADE02    mov         edx,0B000
 004ADE07    call        TFont.SetColor
 004ADE0C    mov         ecx,dword ptr [ebp-4]
 004ADE0F    mov         eax,dword ptr [ecx+30C]
 004ADE15    mov         eax,dword ptr [eax+68]
 004ADE18    mov         edx,0B0
 004ADE1D    call        TFont.SetColor
 004ADE22    mov         ecx,dword ptr [ebp-4]
 004ADE25    mov         eax,dword ptr [ecx+310]
 004ADE2B    mov         eax,dword ptr [eax+68]
 004ADE2E    mov         edx,8080FF
 004ADE33    call        TFont.SetColor
 004ADE38    mov         ecx,dword ptr [ebp-28]
 004ADE3B    mov         dword ptr fs:[0],ecx
 004ADE42    mov         eax,dword ptr [ebp-4]
 004ADE45    mov         dl,byte ptr [ebp-29]
 004ADE48    test        dl,dl
>004ADE4A    je          004ADE51
 004ADE4C    call        0067EF79
 004ADE51    mov         esp,ebp
 004ADE53    pop         ebp
 004ADE54    ret
*}
end;

//004ADE78
procedure TFLegend_11011981.FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin
{*
 004ADE78    push        ebp
 004ADE79    mov         ebp,esp
 004ADE7B    add         esp,0FFFFFFF4
 004ADE7E    mov         dword ptr [ebp-0C],ecx
 004ADE81    mov         dword ptr [ebp-8],edx
 004ADE84    mov         dword ptr [ebp-4],eax
 004ADE87    mov         eax,dword ptr [ebp-0C]
 004ADE8A    cmp         word ptr [eax],1B
>004ADE8E    jne         004ADE98
 004ADE90    mov         eax,dword ptr [ebp-4]
 004ADE93    call        005D3F3C
 004ADE98    mov         esp,ebp
 004ADE9A    pop         ebp
 004ADE9B    ret         4
*}
end;

//004ADEA0
procedure TFLegend_11011981.FormCreate(Sender:TObject);
begin
{*
 004ADEA0    push        ebp
 004ADEA1    mov         ebp,esp
 004ADEA3    add         esp,0FFFFFFF8
 004ADEA6    mov         dword ptr [ebp-8],edx
 004ADEA9    mov         dword ptr [ebp-4],eax
 004ADEAC    mov         eax,dword ptr [ebp-4]
 004ADEAF    call        00531284
 004ADEB4    pop         ecx
 004ADEB5    pop         ecx
 004ADEB6    pop         ebp
 004ADEB7    ret
*}
end;

//004ADF40
destructor TFLegend_11011981.Destroy;
begin
{*
 004ADF40    push        ebp
 004ADF41    mov         ebp,esp
 004ADF43    add         esp,0FFFFFFD4
 004ADF46    call        0067EF81
 004ADF4B    mov         byte ptr [ebp-29],dl
 004ADF4E    mov         dword ptr [ebp-28],eax
 004ADF51    mov         eax,6C3F78
 004ADF56    call        0066FECC
 004ADF5B    mov         dl,byte ptr [ebp-29]
 004ADF5E    test        dl,dl
>004ADF60    jl          004ADF70
 004ADF62    sub         dword ptr [ebp-8],10
 004ADF66    xor         edx,edx
 004ADF68    mov         eax,dword ptr [ebp-28]
 004ADF6B    call        0040235C
 004ADF70    mov         ecx,dword ptr [ebp-24]
 004ADF73    mov         dword ptr fs:[0],ecx
 004ADF7A    mov         al,byte ptr [ebp-29]
 004ADF7D    test        al,al
>004ADF7F    jle         004ADF89
 004ADF81    mov         eax,dword ptr [ebp-28]
 004ADF84    call        0067EF74
 004ADF89    mov         esp,ebp
 004ADF8B    pop         ebp
 004ADF8C    ret
*}
end;

end.