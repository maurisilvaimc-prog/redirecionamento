//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit7;

interface

uses
  SysUtils, Classes;

    @@Threads@Initialize; stdcall;//00482998
    @@Threads@Finalize; stdcall;//004829A8
    constructor Create(AOwner:TComponent);//004829B8
    procedure FormShow(Sender:TObject);//00482A38
    procedure edtNameEnter(Sender:TObject);//00482A80
    procedure FormCreate(Sender:TObject);//00482AA0
    destructor Destroy;//00482B44
    constructor Create(AOwner:TComponent);//00482B94
    procedure FormShow(Sender:TObject);//00482C10
    procedure cbTextEnter(Sender:TObject);//00482CBC
    procedure FormCreate(Sender:TObject);//00482CE0
    destructor Destroy;//00482D80
    //function sub_00482E1C(?:?):?;//00482E1C
    //procedure sub_00482E7C(?:?; ?:?);//00482E7C
    //procedure sub_00482F08(?:?);//00482F08
    //procedure sub_00482FA8(?:?);//00482FA8
    //procedure sub_00483070(?:?; ?:?);//00483070
    //procedure sub_004830E8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004830E8
    //procedure sub_004833F4(?:?; ?:?);//004833F4
    //procedure sub_004834B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004834B4
    //function sub_0048378C(?:?):?;//0048378C
    //procedure sub_004837F0(?:?; ?:?);//004837F0
    //procedure sub_00483830(?:?);//00483830
    //procedure sub_0048390C(?:?);//0048390C
    //procedure sub_004839E8(?:?; ?:Pointer);//004839E8
    //function sub_00483A34(?:?; ?:Pointer; ?:?; ?:?; ?:?; ?:?):?;//00483A34
    //procedure sub_00483F70(?:?; ?:?; ?:?; ?:?; ?:?);//00483F70
    //procedure sub_0048456C(?:?);//0048456C
    //function sub_004845B8(?:?; ?:?; ?:?; ?:?; ?:?):?;//004845B8
    //function sub_00484A78(?:?; ?:?):?;//00484A78
    //function sub_00484AD0(?:?; ?:?):?;//00484AD0
    //procedure sub_00484B94(?:?; ?:?);//00484B94
    //procedure sub_00484BD4(?:?);//00484BD4
    //procedure sub_00484C20(?:?; ?:Pointer; ?:AnsiString);//00484C20
    //function sub_00485550(?:?; ?:?; ?:?):?;//00485550
    //procedure sub_00485744(?:?; ?:?);//00485744
    //function sub_004858C4(?:?):?;//004858C4
    //procedure sub_0048591C(?:?; ?:?);//0048591C
    //function sub_0048595C(?:?):?;//0048595C
    //procedure sub_00485974(?:?; ?:Pointer);//00485974
    //procedure sub_00485A80(?:?; ?:?);//00485A80
    //function sub_00485AE0(?:?; ?:String):?;//00485AE0
    //procedure sub_00485B40(?:?; ?:?; ?:?; ?:?);//00485B40
    //procedure sub_00485D84(?:?; ?:?; ?:?; ?:?; ?:?);//00485D84
    //procedure sub_0048741C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0048741C
    //procedure sub_00488204(?:?; ?:?; ?:Pointer; ?:?);//00488204
    //procedure sub_004888E0(?:?; ?:dword; ?:?; ?:?; ?:?);//004888E0
    //procedure sub_004890C0(?:?; ?:?; ?:?);//004890C0
    //function sub_004891B4(?:?):?;//004891B4

implementation

//004829B8
constructor TFInputDlg_11011981.Create(AOwner:TComponent);
begin
{*
 004829B8    push        ebp
 004829B9    mov         ebp,esp
 004829BB    add         esp,0FFFFFFD0
 004829BE    mov         byte ptr [ebp-8],dl
 004829C1    test        dl,dl
>004829C3    jle         004829CA
 004829C5    call        0067EF6C
 004829CA    mov         dword ptr [ebp-30],ecx
 004829CD    mov         byte ptr [ebp-29],dl
 004829D0    mov         dword ptr [ebp-4],eax
 004829D3    mov         eax,6B4DB8
 004829D8    call        0066FECC
 004829DD    mov         word ptr [ebp-18],8
 004829E3    mov         ecx,dword ptr [ebp-30]
 004829E6    xor         edx,edx
 004829E8    mov         eax,dword ptr [ebp-4]
 004829EB    call        0040207C
 004829F0    add         dword ptr [ebp-0C],10
 004829F4    mov         edx,dword ptr [ebp-28]
 004829F7    mov         dword ptr fs:[0],edx
 004829FE    mov         eax,dword ptr [ebp-4]
 00482A01    mov         dl,byte ptr [ebp-29]
 00482A04    test        dl,dl
>00482A06    je          00482A0D
 00482A08    call        0067EF79
 00482A0D    mov         esp,ebp
 00482A0F    pop         ebp
 00482A10    ret
*}
end;

//00482A38
procedure TFInputDlg_11011981.FormShow(Sender:TObject);
begin
{*
 00482A38    push        ebp
 00482A39    mov         ebp,esp
 00482A3B    add         esp,0FFFFFFF8
 00482A3E    push        ebx
 00482A3F    mov         dword ptr [ebp-8],edx
 00482A42    mov         dword ptr [ebp-4],eax
 00482A45    mov         edx,0FFFFFFB8
 00482A4A    mov         eax,dword ptr [ebp-4]
 00482A4D    mov         eax,dword ptr [eax+2F8];TFInputDlg_11011981.edtName:TLabeledEdit
 00482A53    call        0067E488
 00482A58    mov         ebx,eax
 00482A5A    mov         eax,dword ptr [ebp-4]
 00482A5D    mov         eax,dword ptr [eax+2F8];TFInputDlg_11011981.edtName:TLabeledEdit
 00482A63    call        ebx
 00482A65    test        al,al
>00482A67    je          00482A7A
 00482A69    mov         edx,dword ptr [ebp-4]
 00482A6C    mov         edx,dword ptr [edx+2F8];TFInputDlg_11011981.edtName:TLabeledEdit
 00482A72    mov         eax,dword ptr [ebp-4]
 00482A75    call        TForm.SetActiveControl
 00482A7A    pop         ebx
 00482A7B    pop         ecx
 00482A7C    pop         ecx
 00482A7D    pop         ebp
 00482A7E    ret
*}
end;

//00482A80
procedure TFInputDlg_11011981.edtNameEnter(Sender:TObject);
begin
{*
 00482A80    push        ebp
 00482A81    mov         ebp,esp
 00482A83    add         esp,0FFFFFFF8
 00482A86    mov         dword ptr [ebp-8],edx
 00482A89    mov         dword ptr [ebp-4],eax
 00482A8C    mov         eax,dword ptr [ebp-4]
 00482A8F    mov         eax,dword ptr [eax+2F8];TFInputDlg_11011981.edtName:TLabeledEdit
 00482A95    call        0059901C
 00482A9A    pop         ecx
 00482A9B    pop         ecx
 00482A9C    pop         ebp
 00482A9D    ret
*}
end;

//00482AA0
procedure TFInputDlg_11011981.FormCreate(Sender:TObject);
begin
{*
 00482AA0    push        ebp
 00482AA1    mov         ebp,esp
 00482AA3    add         esp,0FFFFFFF8
 00482AA6    mov         dword ptr [ebp-8],edx
 00482AA9    mov         dword ptr [ebp-4],eax
 00482AAC    mov         eax,dword ptr [ebp-4]
 00482AAF    call        00531284
 00482AB4    pop         ecx
 00482AB5    pop         ecx
 00482AB6    pop         ebp
 00482AB7    ret
*}
end;

//00482B44
destructor TFInputDlg_11011981.Destroy;
begin
{*
 00482B44    push        ebp
 00482B45    mov         ebp,esp
 00482B47    add         esp,0FFFFFFD4
 00482B4A    call        0067EF81
 00482B4F    mov         byte ptr [ebp-29],dl
 00482B52    mov         dword ptr [ebp-28],eax
 00482B55    mov         eax,6B4F8C
 00482B5A    call        0066FECC
 00482B5F    mov         dl,byte ptr [ebp-29]
 00482B62    test        dl,dl
>00482B64    jl          00482B74
 00482B66    sub         dword ptr [ebp-8],10
 00482B6A    xor         edx,edx
 00482B6C    mov         eax,dword ptr [ebp-28]
 00482B6F    call        0040235C
 00482B74    mov         ecx,dword ptr [ebp-24]
 00482B77    mov         dword ptr fs:[0],ecx
 00482B7E    mov         al,byte ptr [ebp-29]
 00482B81    test        al,al
>00482B83    jle         00482B8D
 00482B85    mov         eax,dword ptr [ebp-28]
 00482B88    call        0067EF74
 00482B8D    mov         esp,ebp
 00482B8F    pop         ebp
 00482B90    ret
*}
end;

//00482B94
constructor TFindDlg_11011981.Create(AOwner:TComponent);
begin
{*
 00482B94    push        ebp
 00482B95    mov         ebp,esp
 00482B97    add         esp,0FFFFFFD0
 00482B9A    mov         byte ptr [ebp-8],dl
 00482B9D    test        dl,dl
>00482B9F    jle         00482BA6
 00482BA1    call        0067EF6C
 00482BA6    mov         dword ptr [ebp-30],ecx
 00482BA9    mov         byte ptr [ebp-29],dl
 00482BAC    mov         dword ptr [ebp-4],eax
 00482BAF    mov         eax,6B4FA4
 00482BB4    call        0066FECC
 00482BB9    mov         word ptr [ebp-18],8
 00482BBF    mov         ecx,dword ptr [ebp-30]
 00482BC2    xor         edx,edx
 00482BC4    mov         eax,dword ptr [ebp-4]
 00482BC7    call        0040207C
 00482BCC    add         dword ptr [ebp-0C],10
 00482BD0    mov         edx,dword ptr [ebp-28]
 00482BD3    mov         dword ptr fs:[0],edx
 00482BDA    mov         eax,dword ptr [ebp-4]
 00482BDD    mov         dl,byte ptr [ebp-29]
 00482BE0    test        dl,dl
>00482BE2    je          00482BE9
 00482BE4    call        0067EF79
 00482BE9    mov         esp,ebp
 00482BEB    pop         ebp
 00482BEC    ret
*}
end;

//00482C10
procedure TFindDlg_11011981.FormShow(Sender:TObject);
begin
{*
 00482C10    push        ebp
 00482C11    mov         ebp,esp
 00482C13    add         esp,0FFFFFFC8
 00482C16    push        ebx
 00482C17    mov         dword ptr [ebp-30],edx
 00482C1A    mov         dword ptr [ebp-2C],eax
 00482C1D    mov         eax,6B4FC8
 00482C22    call        0066FECC
 00482C27    mov         edx,dword ptr [ebp-2C]
 00482C2A    mov         ecx,dword ptr [edx+2FC];TFindDlg_11011981.cbText:TComboBox
 00482C30    add         ecx,23C;TComboBox.FItems:TStrings
 00482C36    mov         dword ptr [ebp-34],ecx
 00482C39    mov         eax,dword ptr [ebp-34]
 00482C3C    mov         eax,dword ptr [eax]
 00482C3E    mov         edx,dword ptr [eax]
 00482C40    call        dword ptr [edx+14]
 00482C43    test        eax,eax
>00482C45    je          00482C9A
 00482C47    mov         word ptr [ebp-18],8
 00482C4D    mov         ecx,dword ptr [ebp-2C]
 00482C50    mov         eax,dword ptr [ecx+2FC];TFindDlg_11011981.cbText:TComboBox
 00482C56    add         eax,23C;TComboBox.FItems:TStrings
 00482C5B    mov         dword ptr [ebp-38],eax
 00482C5E    lea         eax,[ebp-4]
 00482C61    call        00401EA8
 00482C66    mov         ecx,eax
 00482C68    inc         dword ptr [ebp-0C]
 00482C6B    mov         edx,dword ptr [ebp-38]
 00482C6E    mov         eax,dword ptr [edx]
 00482C70    xor         edx,edx
 00482C72    mov         ebx,dword ptr [eax]
 00482C74    call        dword ptr [ebx+0C]
 00482C77    lea         edx,[ebp-4]
 00482C7A    mov         edx,dword ptr [edx]
 00482C7C    mov         eax,dword ptr [ebp-2C]
 00482C7F    mov         eax,dword ptr [eax+2FC];TFindDlg_11011981.cbText:TComboBox
 00482C85    call        TTabPage.SetCaption
 00482C8A    dec         dword ptr [ebp-0C]
 00482C8D    lea         eax,[ebp-4]
 00482C90    mov         edx,2
 00482C95    call        0067DCA0
 00482C9A    mov         ecx,dword ptr [ebp-2C]
 00482C9D    mov         edx,dword ptr [ecx+2FC];TFindDlg_11011981.cbText:TComboBox
 00482CA3    mov         eax,dword ptr [ebp-2C]
 00482CA6    call        TForm.SetActiveControl
 00482CAB    mov         ecx,dword ptr [ebp-28]
 00482CAE    mov         dword ptr fs:[0],ecx
 00482CB5    pop         ebx
 00482CB6    mov         esp,ebp
 00482CB8    pop         ebp
 00482CB9    ret
*}
end;

//00482CBC
procedure TFindDlg_11011981.cbTextEnter(Sender:TObject);
begin
{*
 00482CBC    push        ebp
 00482CBD    mov         ebp,esp
 00482CBF    add         esp,0FFFFFFF8
 00482CC2    mov         dword ptr [ebp-8],edx
 00482CC5    mov         dword ptr [ebp-4],eax
 00482CC8    mov         eax,dword ptr [ebp-4]
 00482CCB    mov         eax,dword ptr [eax+2FC];TFindDlg_11011981.cbText:TComboBox
 00482CD1    mov         edx,dword ptr [eax]
 00482CD3    call        dword ptr [edx+0E8];TComboBox.sub_0059A6E8
 00482CD9    pop         ecx
 00482CDA    pop         ecx
 00482CDB    pop         ebp
 00482CDC    ret
*}
end;

//00482CE0
procedure TFindDlg_11011981.FormCreate(Sender:TObject);
begin
{*
 00482CE0    push        ebp
 00482CE1    mov         ebp,esp
 00482CE3    add         esp,0FFFFFFF8
 00482CE6    mov         dword ptr [ebp-8],edx
 00482CE9    mov         dword ptr [ebp-4],eax
 00482CEC    mov         eax,dword ptr [ebp-4]
 00482CEF    call        00531284
 00482CF4    pop         ecx
 00482CF5    pop         ecx
 00482CF6    pop         ebp
 00482CF7    ret
*}
end;

//00482D80
destructor TFindDlg_11011981.Destroy;
begin
{*
 00482D80    push        ebp
 00482D81    mov         ebp,esp
 00482D83    add         esp,0FFFFFFD4
 00482D86    call        0067EF81
 00482D8B    mov         byte ptr [ebp-29],dl
 00482D8E    mov         dword ptr [ebp-28],eax
 00482D91    mov         eax,6B51BC
 00482D96    call        0066FECC
 00482D9B    mov         dl,byte ptr [ebp-29]
 00482D9E    test        dl,dl
>00482DA0    jl          00482DB0
 00482DA2    sub         dword ptr [ebp-8],10
 00482DA6    xor         edx,edx
 00482DA8    mov         eax,dword ptr [ebp-28]
 00482DAB    call        0040235C
 00482DB0    mov         ecx,dword ptr [ebp-24]
 00482DB3    mov         dword ptr fs:[0],ecx
 00482DBA    mov         al,byte ptr [ebp-29]
 00482DBD    test        al,al
>00482DBF    jle         00482DC9
 00482DC1    mov         eax,dword ptr [ebp-28]
 00482DC4    call        0067EF74
 00482DC9    mov         esp,ebp
 00482DCB    pop         ebp
 00482DCC    ret
*}
end;

//00482E1C
{*function sub_00482E1C(?:?):?;
begin
 00482E1C    push        ebp
 00482E1D    mov         ebp,esp
 00482E1F    add         esp,0FFFFFFD8
 00482E22    mov         dword ptr [ebp-4],eax
 00482E25    mov         eax,6B6840
 00482E2A    call        0066FECC
 00482E2F    mov         word ptr [ebp-18],8
 00482E35    mov         edx,dword ptr [ebp-4]
 00482E38    xor         ecx,ecx
 00482E3A    mov         dword ptr [edx],ecx
 00482E3C    mov         eax,dword ptr [ebp-4]
 00482E3F    xor         edx,edx
 00482E41    mov         dword ptr [eax+4],edx
 00482E44    mov         ecx,dword ptr [ebp-4]
 00482E47    xor         eax,eax
 00482E49    mov         dword ptr [ecx+8],eax
 00482E4C    mov         edx,dword ptr [ebp-28]
 00482E4F    mov         dword ptr fs:[0],edx
 00482E56    mov         eax,dword ptr [ebp-4]
 00482E59    mov         esp,ebp
 00482E5B    pop         ebp
 00482E5C    ret
end;*}

//00482E7C
{*procedure sub_00482E7C(?:?; ?:?);
begin
 00482E7C    push        ebp
 00482E7D    mov         ebp,esp
 00482E7F    add         esp,0FFFFFFCC
 00482E82    mov         dword ptr [ebp-34],edx
 00482E85    mov         dword ptr [ebp-30],eax
 00482E88    mov         eax,6B6864
 00482E8D    call        0066FECC
 00482E92    mov         edx,dword ptr [ebp-30]
 00482E95    test        edx,edx
>00482E97    je          00482EF9
 00482E99    mov         ecx,dword ptr [ebp-30]
 00482E9C    mov         eax,dword ptr [ecx]
 00482E9E    test        eax,eax
>00482EA0    je          00482ED2
 00482EA2    mov         edx,dword ptr [ebp-30]
 00482EA5    mov         ecx,dword ptr [edx]
 00482EA7    mov         dword ptr [ebp-8],ecx
 00482EAA    mov         eax,dword ptr [ebp-8]
 00482EAD    test        eax,eax
>00482EAF    je          00482ED2
 00482EB1    mov         edx,dword ptr [ebp-8]
 00482EB4    mov         ecx,dword ptr [edx]
 00482EB6    mov         dword ptr [ebp-4],ecx
 00482EB9    mov         word ptr [ebp-1C],14
 00482EBF    mov         edx,3
 00482EC4    mov         eax,dword ptr [ebp-8]
 00482EC7    mov         ecx,dword ptr [eax]
 00482EC9    call        dword ptr [ecx-4]
 00482ECC    mov         word ptr [ebp-1C],8
 00482ED2    mov         eax,dword ptr [ebp-30]
 00482ED5    push        dword ptr [eax+4]
 00482ED8    call        00482F08
 00482EDD    pop         ecx
 00482EDE    mov         edx,dword ptr [ebp-30]
 00482EE1    push        dword ptr [edx+8]
 00482EE4    call        00482FA8
 00482EE9    pop         ecx
 00482EEA    test        byte ptr [ebp-34],1
>00482EEE    je          00482EF9
 00482EF0    push        dword ptr [ebp-30]
 00482EF3    call        0066EAB0
 00482EF8    pop         ecx
 00482EF9    mov         ecx,dword ptr [ebp-2C]
 00482EFC    mov         dword ptr fs:[0],ecx
 00482F03    mov         esp,ebp
 00482F05    pop         ebp
 00482F06    ret
end;*}

//00482F08
{*procedure sub_00482F08(?:?);
begin
 00482F08    push        ebp
 00482F09    mov         ebp,esp
 00482F0B    add         esp,0FFFFFFC8
 00482F0E    mov         eax,6B68A4
 00482F13    call        0066FECC
 00482F18    mov         edx,dword ptr [ebp+8]
 00482F1B    test        edx,edx
>00482F1D    je          00482F98
 00482F1F    xor         ecx,ecx
 00482F21    mov         dword ptr [ebp-34],ecx
>00482F24    jmp         00482F5D
 00482F26    mov         edx,dword ptr [ebp-34]
 00482F29    mov         eax,dword ptr [ebp+8]
 00482F2C    call        TList.Get
 00482F31    mov         dword ptr [ebp-38],eax
 00482F34    mov         ecx,dword ptr [ebp-38]
 00482F37    mov         dword ptr [ebp-4],ecx
 00482F3A    mov         eax,dword ptr [ebp-4]
 00482F3D    test        eax,eax
>00482F3F    je          00482F5A
 00482F41    mov         word ptr [ebp-20],14
 00482F47    push        3
 00482F49    push        dword ptr [ebp-4]
 00482F4C    call        0046DD48
 00482F51    add         esp,8
 00482F54    mov         word ptr [ebp-20],8
 00482F5A    inc         dword ptr [ebp-34]
 00482F5D    mov         edx,dword ptr [ebp-34]
 00482F60    mov         ecx,dword ptr [ebp+8]
 00482F63    mov         eax,dword ptr [ecx+8]
 00482F66    cmp         edx,eax
>00482F68    jl          00482F26
 00482F6A    mov         edx,dword ptr [ebp+8]
 00482F6D    mov         dword ptr [ebp-0C],edx
 00482F70    mov         ecx,dword ptr [ebp-0C]
 00482F73    test        ecx,ecx
>00482F75    je          00482F98
 00482F77    mov         eax,dword ptr [ebp-0C]
 00482F7A    mov         edx,dword ptr [eax]
 00482F7C    mov         dword ptr [ebp-8],edx
 00482F7F    mov         word ptr [ebp-20],2C
 00482F85    mov         edx,3
 00482F8A    mov         eax,dword ptr [ebp-0C]
 00482F8D    mov         ecx,dword ptr [eax]
 00482F8F    call        dword ptr [ecx-4]
 00482F92    mov         word ptr [ebp-20],20
 00482F98    mov         eax,dword ptr [ebp-30]
 00482F9B    mov         fs:[00000000],eax
 00482FA1    mov         esp,ebp
 00482FA3    pop         ebp
 00482FA4    ret
end;*}

//00482FA8
{*procedure sub_00482FA8(?:?);
begin
 00482FA8    push        ebp
 00482FA9    mov         ebp,esp
 00482FAB    add         esp,0FFFFFFC8
 00482FAE    mov         eax,6B68FC
 00482FB3    call        0066FECC
 00482FB8    mov         edx,dword ptr [ebp+8]
 00482FBB    test        edx,edx
>00482FBD    je          0048304B
 00482FC3    xor         ecx,ecx
 00482FC5    mov         dword ptr [ebp-34],ecx
>00482FC8    jmp         00483010
 00482FCA    mov         edx,dword ptr [ebp-34]
 00482FCD    mov         eax,dword ptr [ebp+8]
 00482FD0    call        TList.Get
 00482FD5    mov         dword ptr [ebp-38],eax
 00482FD8    mov         ecx,dword ptr [ebp-38]
 00482FDB    mov         dword ptr [ebp-4],ecx
 00482FDE    mov         eax,dword ptr [ebp-4]
 00482FE1    test        eax,eax
>00482FE3    je          0048300D
 00482FE5    mov         word ptr [ebp-20],14
 00482FEB    dec         dword ptr [ebp-14]
 00482FEE    mov         eax,dword ptr [ebp-4]
 00482FF1    add         eax,0A
 00482FF4    mov         edx,2
 00482FF9    call        0067DCA0
 00482FFE    push        dword ptr [ebp-4]
 00483001    call        0066EAB0
 00483006    pop         ecx
 00483007    mov         word ptr [ebp-20],8
 0048300D    inc         dword ptr [ebp-34]
 00483010    mov         ecx,dword ptr [ebp-34]
 00483013    mov         eax,dword ptr [ebp+8]
 00483016    mov         edx,dword ptr [eax+8]
 00483019    cmp         ecx,edx
>0048301B    jl          00482FCA
 0048301D    mov         ecx,dword ptr [ebp+8]
 00483020    mov         dword ptr [ebp-0C],ecx
 00483023    mov         eax,dword ptr [ebp-0C]
 00483026    test        eax,eax
>00483028    je          0048304B
 0048302A    mov         edx,dword ptr [ebp-0C]
 0048302D    mov         ecx,dword ptr [edx]
 0048302F    mov         dword ptr [ebp-8],ecx
 00483032    mov         word ptr [ebp-20],2C
 00483038    mov         edx,3
 0048303D    mov         eax,dword ptr [ebp-0C]
 00483040    mov         ecx,dword ptr [eax]
 00483042    call        dword ptr [ecx-4]
 00483045    mov         word ptr [ebp-20],20
 0048304B    mov         eax,dword ptr [ebp-30]
 0048304E    mov         fs:[00000000],eax
 00483054    mov         esp,ebp
 00483056    pop         ebp
 00483057    ret
end;*}

//00483070
{*procedure sub_00483070(?:?; ?:?);
begin
 00483070    push        ebp
 00483071    mov         ebp,esp
 00483073    add         esp,0FFFFFFD4
 00483076    mov         dword ptr [ebp-4],edx
 00483079    mov         dword ptr [ebp-2C],eax
 0048307C    mov         eax,6B6944
 00483081    call        0066FECC
 00483086    mov         dword ptr [ebp-0C],1
 0048308D    lea         edx,[ebp-4]
 00483090    lea         eax,[ebp-4]
 00483093    call        0067DAEC
 00483098    inc         dword ptr [ebp-0C]
 0048309B    mov         word ptr [ebp-18],8
 004830A1    mov         edx,dword ptr [ebp-2C]
 004830A4    mov         ecx,dword ptr [edx]
 004830A6    test        ecx,ecx
>004830A8    jne         004830BB
 004830AA    mov         dl,1
 004830AC    mov         eax,[006428B0];TStringList
 004830B1    call        0040BB0C
 004830B6    mov         ecx,dword ptr [ebp-2C]
 004830B9    mov         dword ptr [ecx],eax
 004830BB    mov         edx,dword ptr [ebp-4]
 004830BE    mov         eax,dword ptr [ebp-2C]
 004830C1    mov         eax,dword ptr [eax]
 004830C3    mov         ecx,dword ptr [eax]
 004830C5    call        dword ptr [ecx+38]
 004830C8    dec         dword ptr [ebp-0C]
 004830CB    lea         eax,[ebp-4]
 004830CE    mov         edx,2
 004830D3    call        0067DCA0
 004830D8    mov         ecx,dword ptr [ebp-28]
 004830DB    mov         dword ptr fs:[0],ecx
 004830E2    mov         esp,ebp
 004830E4    pop         ebp
 004830E5    ret
end;*}

//004830E8
{*procedure sub_004830E8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004830E8    push        ebp
 004830E9    mov         ebp,esp
 004830EB    add         esp,0FFFFFFB0
 004830EE    mov         dword ptr [ebp-40],ecx
 004830F1    mov         dword ptr [ebp-3C],edx
 004830F4    mov         dword ptr [ebp-38],eax
 004830F7    mov         eax,6B69B4
 004830FC    call        0066FECC
 00483101    mov         dword ptr [ebp-18],2
 00483108    lea         edx,[ebp+0C]
 0048310B    lea         eax,[ebp+0C]
 0048310E    call        0067DAEC
 00483113    inc         dword ptr [ebp-18]
 00483116    mov         word ptr [ebp-24],8
 0048311C    lea         edx,[ebp+8]
 0048311F    lea         eax,[ebp+8]
 00483122    call        0067DAEC
 00483127    inc         dword ptr [ebp-18]
 0048312A    xor         edx,edx
 0048312C    mov         dword ptr [ebp-44],edx
 0048312F    mov         ecx,dword ptr [ebp-38]
 00483132    mov         eax,dword ptr [ecx+4]
 00483135    test        eax,eax
>00483137    jne         0048314B
 00483139    mov         dl,1
 0048313B    mov         eax,[006422A4];TList
 00483140    call        00413424
 00483145    mov         edx,dword ptr [ebp-38]
 00483148    mov         dword ptr [edx+4],eax
 0048314B    mov         ecx,dword ptr [ebp-38]
 0048314E    mov         eax,dword ptr [ecx+4]
 00483151    mov         edx,dword ptr [eax+8]
 00483154    test        edx,edx
>00483156    jne         0048320B
 0048315C    push        15
 0048315E    call        0066EAE4
 00483163    pop         ecx
 00483164    mov         dword ptr [ebp-4],eax
 00483167    test        eax,eax
>00483169    je          00483185
 0048316B    mov         word ptr [ebp-24],20
 00483171    push        dword ptr [ebp-4]
 00483174    call        004534C0
 00483179    pop         ecx
 0048317A    mov         word ptr [ebp-24],14
 00483180    mov         edx,dword ptr [ebp-4]
>00483183    jmp         00483188
 00483185    mov         edx,dword ptr [ebp-4]
 00483188    mov         dword ptr [ebp-44],edx
 0048318B    mov         al,byte ptr [ebp+18]
 0048318E    mov         ecx,dword ptr [ebp-44]
 00483191    mov         byte ptr [ecx],al
 00483193    mov         eax,dword ptr [ebp+14]
 00483196    mov         edx,dword ptr [ebp-44]
 00483199    mov         dword ptr [edx+1],eax
 0048319C    mov         ecx,dword ptr [ebp+10]
 0048319F    mov         eax,dword ptr [ebp-44]
 004831A2    mov         dword ptr [eax+5],ecx
 004831A5    mov         edx,dword ptr [ebp-44]
 004831A8    xor         ecx,ecx
 004831AA    mov         dword ptr [edx+11],ecx
 004831AD    lea         edx,[ebp+0C]
 004831B0    mov         eax,dword ptr [ebp-44]
 004831B3    add         eax,9
 004831B6    call        0067DCD0
 004831BB    lea         edx,[ebp+8]
 004831BE    mov         eax,dword ptr [ebp-44]
 004831C1    add         eax,0D
 004831C4    call        0067DCD0
 004831C9    mov         ecx,dword ptr [ebp-38]
 004831CC    mov         eax,dword ptr [ecx+4]
 004831CF    mov         edx,dword ptr [ebp-44]
 004831D2    call        TList.Add
 004831D7    mov         eax,dword ptr [ebp-44]
 004831DA    push        eax
 004831DB    dec         dword ptr [ebp-18]
 004831DE    lea         eax,[ebp+8]
 004831E1    mov         edx,2
 004831E6    call        0067DCA0
 004831EB    dec         dword ptr [ebp-18]
 004831EE    lea         eax,[ebp+0C]
 004831F1    mov         edx,2
 004831F6    call        0067DCA0
 004831FB    pop         eax
 004831FC    mov         edx,dword ptr [ebp-34]
 004831FF    mov         dword ptr fs:[0],edx
>00483206    jmp         004833ED
 0048320B    xor         ecx,ecx
 0048320D    mov         dword ptr [ebp-48],ecx
 00483210    mov         word ptr [ebp-24],8
 00483216    mov         eax,dword ptr [ebp-38]
 00483219    mov         edx,dword ptr [eax+4]
 0048321C    mov         ecx,dword ptr [edx+8]
 0048321F    dec         ecx
 00483220    mov         dword ptr [ebp-4C],ecx
 00483223    mov         eax,dword ptr [ebp-48]
 00483226    mov         edx,dword ptr [ebp-4C]
 00483229    cmp         eax,edx
>0048322B    jge         0048327C
 0048322D    mov         ecx,dword ptr [ebp-48]
 00483230    mov         eax,dword ptr [ebp-4C]
 00483233    add         ecx,eax
 00483235    sar         ecx,1
>00483237    jns         0048323C
 00483239    adc         ecx,0
 0048323C    mov         dword ptr [ebp-50],ecx
 0048323F    mov         word ptr [ebp-24],8
 00483245    mov         edx,dword ptr [ebp-38]
 00483248    mov         eax,dword ptr [edx+4]
 0048324B    mov         edx,dword ptr [ebp-50]
 0048324E    call        TList.Get
 00483253    mov         dword ptr [ebp-44],eax
 00483256    mov         ecx,dword ptr [ebp+14]
 00483259    mov         eax,dword ptr [ebp-44]
 0048325C    mov         edx,dword ptr [eax+1]
 0048325F    cmp         ecx,edx
>00483261    jg          0048326B
 00483263    mov         ecx,dword ptr [ebp-50]
 00483266    mov         dword ptr [ebp-4C],ecx
>00483269    jmp         00483272
 0048326B    mov         eax,dword ptr [ebp-50]
 0048326E    inc         eax
 0048326F    mov         dword ptr [ebp-48],eax
 00483272    mov         edx,dword ptr [ebp-48]
 00483275    mov         ecx,dword ptr [ebp-4C]
 00483278    cmp         edx,ecx
>0048327A    jl          0048322D
 0048327C    mov         eax,dword ptr [ebp-38]
 0048327F    mov         eax,dword ptr [eax+4]
 00483282    mov         edx,dword ptr [ebp-4C]
 00483285    call        TList.Get
 0048328A    mov         dword ptr [ebp-44],eax
 0048328D    mov         ecx,dword ptr [ebp-44]
 00483290    mov         eax,dword ptr [ecx+1]
 00483293    mov         edx,dword ptr [ebp+14]
 00483296    cmp         eax,edx
>00483298    je          0048332E
 0048329E    push        15
 004832A0    call        0066EAE4
 004832A5    pop         ecx
 004832A6    mov         dword ptr [ebp-8],eax
 004832A9    test        eax,eax
>004832AB    je          004832C7
 004832AD    mov         word ptr [ebp-24],38
 004832B3    push        dword ptr [ebp-8]
 004832B6    call        004534C0
 004832BB    pop         ecx
 004832BC    mov         word ptr [ebp-24],2C
 004832C2    mov         edx,dword ptr [ebp-8]
>004832C5    jmp         004832CA
 004832C7    mov         edx,dword ptr [ebp-8]
 004832CA    mov         dword ptr [ebp-44],edx
 004832CD    mov         al,byte ptr [ebp+18]
 004832D0    mov         ecx,dword ptr [ebp-44]
 004832D3    mov         byte ptr [ecx],al
 004832D5    mov         eax,dword ptr [ebp+14]
 004832D8    mov         edx,dword ptr [ebp-44]
 004832DB    mov         dword ptr [edx+1],eax
 004832DE    mov         ecx,dword ptr [ebp+10]
 004832E1    mov         eax,dword ptr [ebp-44]
 004832E4    mov         dword ptr [eax+5],ecx
 004832E7    mov         edx,dword ptr [ebp-44]
 004832EA    xor         ecx,ecx
 004832EC    mov         dword ptr [edx+11],ecx
 004832EF    lea         edx,[ebp+0C]
 004832F2    mov         eax,dword ptr [ebp-44]
 004832F5    add         eax,9
 004832F8    call        0067DCD0
 004832FD    lea         edx,[ebp+8]
 00483300    mov         eax,dword ptr [ebp-44]
 00483303    add         eax,0D
 00483306    call        0067DCD0
 0048330B    mov         ecx,dword ptr [ebp-38]
 0048330E    mov         eax,dword ptr [ecx+4]
 00483311    mov         edx,dword ptr [ebp-44]
 00483314    call        TList.Add
 00483319    mov         edx,482DD0
 0048331E    mov         eax,dword ptr [ebp-38]
 00483321    mov         eax,dword ptr [eax+4]
 00483324    call        0064557C
>00483329    jmp         004833BE
 0048332E    mov         word ptr [ebp-24],44
 00483334    mov         edx,6B51CC
 00483339    lea         eax,[ebp-0C]
 0048333C    call        0067DAB4
 00483341    inc         dword ptr [ebp-18]
 00483344    lea         edx,[ebp-0C]
 00483347    mov         eax,dword ptr [ebp-44]
 0048334A    add         eax,9
 0048334D    call        0067DD84
 00483352    push        eax
 00483353    dec         dword ptr [ebp-18]
 00483356    lea         eax,[ebp-0C]
 00483359    mov         edx,2
 0048335E    call        0067DCA0
 00483363    pop         ecx
 00483364    test        cl,cl
>00483366    je          00483376
 00483368    lea         edx,[ebp+0C]
 0048336B    mov         eax,dword ptr [ebp-44]
 0048336E    add         eax,9
 00483371    call        0067DCD0
 00483376    mov         word ptr [ebp-24],50
 0048337C    mov         edx,6B51CD
 00483381    lea         eax,[ebp-10]
 00483384    call        0067DAB4
 00483389    inc         dword ptr [ebp-18]
 0048338C    lea         edx,[ebp-10]
 0048338F    mov         eax,dword ptr [ebp-44]
 00483392    add         eax,0D
 00483395    call        0067DD84
 0048339A    push        eax
 0048339B    dec         dword ptr [ebp-18]
 0048339E    lea         eax,[ebp-10]
 004833A1    mov         edx,2
 004833A6    call        0067DCA0
 004833AB    pop         ecx
 004833AC    test        cl,cl
>004833AE    je          004833BE
 004833B0    lea         edx,[ebp+8]
 004833B3    mov         eax,dword ptr [ebp-44]
 004833B6    add         eax,0D
 004833B9    call        0067DCD0
 004833BE    mov         eax,dword ptr [ebp-44]
 004833C1    push        eax
 004833C2    dec         dword ptr [ebp-18]
 004833C5    lea         eax,[ebp+8]
 004833C8    mov         edx,2
 004833CD    call        0067DCA0
 004833D2    dec         dword ptr [ebp-18]
 004833D5    lea         eax,[ebp+0C]
 004833D8    mov         edx,2
 004833DD    call        0067DCA0
 004833E2    pop         eax
 004833E3    mov         edx,dword ptr [ebp-34]
 004833E6    mov         dword ptr fs:[0],edx
 004833ED    mov         esp,ebp
 004833EF    pop         ebp
 004833F0    ret         14
end;*}

//004833F4
{*procedure sub_004833F4(?:?; ?:?);
begin
 004833F4    push        ebp
 004833F5    mov         ebp,esp
 004833F7    add         esp,0FFFFFFE8
 004833FA    mov         dword ptr [ebp-8],edx
 004833FD    mov         dword ptr [ebp-4],eax
 00483400    mov         eax,dword ptr [ebp-4]
 00483403    mov         edx,dword ptr [eax+4]
 00483406    test        edx,edx
>00483408    je          004834B0
 0048340E    mov         ecx,dword ptr [ebp-4]
 00483411    mov         eax,dword ptr [ecx+4]
 00483414    mov         edx,dword ptr [eax+8]
 00483417    test        edx,edx
>00483419    je          004834B0
 0048341F    xor         ecx,ecx
 00483421    mov         dword ptr [ebp-10],ecx
 00483424    mov         eax,dword ptr [ebp-4]
 00483427    mov         edx,dword ptr [eax+4]
 0048342A    mov         ecx,dword ptr [edx+8]
 0048342D    dec         ecx
 0048342E    mov         dword ptr [ebp-14],ecx
 00483431    mov         eax,dword ptr [ebp-10]
 00483434    mov         edx,dword ptr [ebp-14]
 00483437    cmp         eax,edx
>00483439    jge         00483484
 0048343B    mov         ecx,dword ptr [ebp-10]
 0048343E    mov         eax,dword ptr [ebp-14]
 00483441    add         ecx,eax
 00483443    sar         ecx,1
>00483445    jns         0048344A
 00483447    adc         ecx,0
 0048344A    mov         dword ptr [ebp-18],ecx
 0048344D    mov         edx,dword ptr [ebp-4]
 00483450    mov         eax,dword ptr [edx+4]
 00483453    mov         edx,dword ptr [ebp-18]
 00483456    call        TList.Get
 0048345B    mov         dword ptr [ebp-0C],eax
 0048345E    mov         ecx,dword ptr [ebp-0C]
 00483461    mov         eax,dword ptr [ecx+1]
 00483464    mov         edx,dword ptr [ebp-8]
 00483467    cmp         eax,edx
>00483469    jl          00483473
 0048346B    mov         ecx,dword ptr [ebp-18]
 0048346E    mov         dword ptr [ebp-14],ecx
>00483471    jmp         0048347A
 00483473    mov         eax,dword ptr [ebp-18]
 00483476    inc         eax
 00483477    mov         dword ptr [ebp-10],eax
 0048347A    mov         edx,dword ptr [ebp-10]
 0048347D    mov         ecx,dword ptr [ebp-14]
 00483480    cmp         edx,ecx
>00483482    jl          0048343B
 00483484    mov         eax,dword ptr [ebp-4]
 00483487    mov         eax,dword ptr [eax+4]
 0048348A    mov         edx,dword ptr [ebp-14]
 0048348D    call        TList.Get
 00483492    mov         dword ptr [ebp-0C],eax
 00483495    mov         ecx,dword ptr [ebp-0C]
 00483498    mov         eax,dword ptr [ecx+1]
 0048349B    mov         edx,dword ptr [ebp-8]
 0048349E    cmp         eax,edx
>004834A0    jne         004834B0
 004834A2    mov         ecx,dword ptr [ebp-4]
 004834A5    mov         eax,dword ptr [ecx+4]
 004834A8    mov         edx,dword ptr [ebp-14]
 004834AB    call        TList.Delete
 004834B0    mov         esp,ebp
 004834B2    pop         ebp
 004834B3    ret
end;*}

//004834B4
{*procedure sub_004834B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004834B4    push        ebp
 004834B5    mov         ebp,esp
 004834B7    add         esp,0FFFFFFB8
 004834BA    mov         byte ptr [ebp-3E],cl
 004834BD    mov         byte ptr [ebp-3D],dl
 004834C0    mov         dword ptr [ebp-3C],eax
 004834C3    mov         eax,6B6A68
 004834C8    call        0066FECC
 004834CD    mov         dword ptr [ebp-1C],1
 004834D4    lea         edx,[ebp+8]
 004834D7    lea         eax,[ebp+8]
 004834DA    call        0067DAEC
 004834DF    inc         dword ptr [ebp-1C]
 004834E2    mov         word ptr [ebp-28],8
 004834E8    mov         edx,dword ptr [ebp-3C]
 004834EB    mov         ecx,dword ptr [edx+8]
 004834EE    test        ecx,ecx
>004834F0    jne         00483504
 004834F2    mov         dl,1
 004834F4    mov         eax,[006422A4];TList
 004834F9    call        00413424
 004834FE    mov         ecx,dword ptr [ebp-3C]
 00483501    mov         dword ptr [ecx+8],eax
 00483504    xor         eax,eax
 00483506    mov         dword ptr [ebp-48],eax
>00483509    jmp         004836DE
 0048350E    mov         edx,dword ptr [ebp-3C]
 00483511    mov         eax,dword ptr [edx+8]
 00483514    mov         edx,dword ptr [ebp-48]
 00483517    call        TList.Get
 0048351C    mov         dword ptr [ebp-44],eax
 0048351F    movsx       ecx,byte ptr [ebp-3E]
 00483523    cmp         ecx,41
>00483526    je          00483535
 00483528    movsx       eax,byte ptr [ebp-3E]
 0048352C    cmp         eax,56
>0048352F    jne         00483608
 00483535    mov         edx,dword ptr [ebp-44]
 00483538    mov         cl,byte ptr [edx+1]
 0048353B    mov         al,byte ptr [ebp-3E]
 0048353E    cmp         cl,al
>00483540    jne         004836DB
 00483546    mov         edx,dword ptr [ebp-44]
 00483549    mov         ecx,dword ptr [edx+2]
 0048354C    mov         eax,dword ptr [ebp+10]
 0048354F    cmp         ecx,eax
>00483551    jne         004836DB
 00483557    mov         word ptr [ebp-28],14
 0048355D    mov         edx,6B51CE
 00483562    lea         eax,[ebp-4]
 00483565    call        0067DAB4
 0048356A    inc         dword ptr [ebp-1C]
 0048356D    lea         edx,[ebp-4]
 00483570    mov         eax,dword ptr [ebp-44]
 00483573    add         eax,0A
 00483576    call        0067DD84
 0048357B    test        al,al
>0048357D    je          004835B8
 0048357F    mov         edx,6B51CF
 00483584    lea         eax,[ebp-8]
 00483587    call        0067DAB4
 0048358C    inc         dword ptr [ebp-1C]
 0048358F    lea         edx,[ebp-8]
 00483592    lea         eax,[ebp+8]
 00483595    call        0067DD9C
 0048359A    test        al,al
 0048359C    setne       dl
 0048359F    and         edx,1
 004835A2    push        edx
 004835A3    dec         dword ptr [ebp-1C]
 004835A6    lea         eax,[ebp-8]
 004835A9    mov         edx,2
 004835AE    call        0067DCA0
 004835B3    pop         ecx
 004835B4    test        ecx,ecx
>004835B6    jne         004835BC
 004835B8    xor         eax,eax
>004835BA    jmp         004835C1
 004835BC    mov         eax,1
 004835C1    push        eax
 004835C2    dec         dword ptr [ebp-1C]
 004835C5    lea         eax,[ebp-4]
 004835C8    mov         edx,2
 004835CD    call        0067DCA0
 004835D2    pop         ecx
 004835D3    test        cl,cl
>004835D5    je          004835E5
 004835D7    lea         edx,[ebp+8]
 004835DA    mov         eax,dword ptr [ebp-44]
 004835DD    add         eax,0A
 004835E0    call        0067DCD0
 004835E5    xor         eax,eax
 004835E7    push        eax
 004835E8    dec         dword ptr [ebp-1C]
 004835EB    lea         eax,[ebp+8]
 004835EE    mov         edx,2
 004835F3    call        0067DCA0
 004835F8    pop         eax
 004835F9    mov         edx,dword ptr [ebp-38]
 004835FC    mov         dword ptr fs:[0],edx
>00483603    jmp         00483786
 00483608    mov         ecx,dword ptr [ebp-44]
 0048360B    mov         al,byte ptr [ecx+1]
 0048360E    mov         dl,byte ptr [ebp-3E]
 00483611    cmp         al,dl
>00483613    jne         004836DB
 00483619    mov         ecx,dword ptr [ebp-44]
 0048361C    mov         eax,dword ptr [ecx+6]
 0048361F    mov         edx,dword ptr [ebp+0C]
 00483622    cmp         eax,edx
>00483624    jne         004836DB
 0048362A    mov         word ptr [ebp-28],20
 00483630    mov         edx,6B51D0
 00483635    lea         eax,[ebp-0C]
 00483638    call        0067DAB4
 0048363D    inc         dword ptr [ebp-1C]
 00483640    lea         edx,[ebp-0C]
 00483643    mov         eax,dword ptr [ebp-44]
 00483646    add         eax,0A
 00483649    call        0067DD84
 0048364E    test        al,al
>00483650    je          0048368B
 00483652    mov         edx,6B51D1
 00483657    lea         eax,[ebp-10]
 0048365A    call        0067DAB4
 0048365F    inc         dword ptr [ebp-1C]
 00483662    lea         edx,[ebp-10]
 00483665    lea         eax,[ebp+8]
 00483668    call        0067DD9C
 0048366D    test        al,al
 0048366F    setne       cl
 00483672    and         ecx,1
 00483675    push        ecx
 00483676    dec         dword ptr [ebp-1C]
 00483679    lea         eax,[ebp-10]
 0048367C    mov         edx,2
 00483681    call        0067DCA0
 00483686    pop         ecx
 00483687    test        ecx,ecx
>00483689    jne         0048368F
 0048368B    xor         eax,eax
>0048368D    jmp         00483694
 0048368F    mov         eax,1
 00483694    push        eax
 00483695    dec         dword ptr [ebp-1C]
 00483698    lea         eax,[ebp-0C]
 0048369B    mov         edx,2
 004836A0    call        0067DCA0
 004836A5    pop         ecx
 004836A6    test        cl,cl
>004836A8    je          004836B8
 004836AA    lea         edx,[ebp+8]
 004836AD    mov         eax,dword ptr [ebp-44]
 004836B0    add         eax,0A
 004836B3    call        0067DCD0
 004836B8    xor         eax,eax
 004836BA    push        eax
 004836BB    dec         dword ptr [ebp-1C]
 004836BE    lea         eax,[ebp+8]
 004836C1    mov         edx,2
 004836C6    call        0067DCA0
 004836CB    pop         eax
 004836CC    mov         edx,dword ptr [ebp-38]
 004836CF    mov         dword ptr fs:[0],edx
>004836D6    jmp         00483786
 004836DB    inc         dword ptr [ebp-48]
 004836DE    mov         ecx,dword ptr [ebp-3C]
 004836E1    mov         eax,dword ptr [ecx+8]
 004836E4    mov         edx,dword ptr [eax+8]
 004836E7    mov         ecx,dword ptr [ebp-48]
 004836EA    cmp         edx,ecx
>004836EC    jg          0048350E
 004836F2    push        0E
 004836F4    call        0066EAE4
 004836F9    pop         ecx
 004836FA    mov         dword ptr [ebp-14],eax
 004836FD    test        eax,eax
>004836FF    je          00483723
 00483701    mov         word ptr [ebp-28],38
 00483707    mov         eax,dword ptr [ebp-14]
 0048370A    add         eax,0A
 0048370D    call        00401EA8
 00483712    inc         dword ptr [ebp-1C]
 00483715    dec         dword ptr [ebp-1C]
 00483718    mov         word ptr [ebp-28],2C
 0048371E    mov         edx,dword ptr [ebp-14]
>00483721    jmp         00483726
 00483723    mov         edx,dword ptr [ebp-14]
 00483726    mov         dword ptr [ebp-44],edx
 00483729    mov         al,byte ptr [ebp-3D]
 0048372C    mov         ecx,dword ptr [ebp-44]
 0048372F    mov         byte ptr [ecx],al
 00483731    mov         al,byte ptr [ebp-3E]
 00483734    mov         edx,dword ptr [ebp-44]
 00483737    mov         byte ptr [edx+1],al
 0048373A    mov         ecx,dword ptr [ebp+10]
 0048373D    mov         eax,dword ptr [ebp-44]
 00483740    mov         dword ptr [eax+2],ecx
 00483743    mov         edx,dword ptr [ebp+0C]
 00483746    mov         ecx,dword ptr [ebp-44]
 00483749    mov         dword ptr [ecx+6],edx
 0048374C    lea         edx,[ebp+8]
 0048374F    mov         eax,dword ptr [ebp-44]
 00483752    add         eax,0A
 00483755    call        0067DCD0
 0048375A    mov         ecx,dword ptr [ebp-3C]
 0048375D    mov         eax,dword ptr [ecx+8]
 00483760    mov         edx,dword ptr [ebp-44]
 00483763    call        TList.Add
 00483768    mov         al,1
 0048376A    push        eax
 0048376B    dec         dword ptr [ebp-1C]
 0048376E    lea         eax,[ebp+8]
 00483771    mov         edx,2
 00483776    call        0067DCA0
 0048377B    pop         eax
 0048377C    mov         edx,dword ptr [ebp-38]
 0048377F    mov         dword ptr fs:[0],edx
 00483786    mov         esp,ebp
 00483788    pop         ebp
 00483789    ret         0C
end;*}

//0048378C
{*function sub_0048378C(?:?):?;
begin
 0048378C    push        ebp
 0048378D    mov         ebp,esp
 0048378F    add         esp,0FFFFFFD8
 00483792    mov         dword ptr [ebp-4],eax
 00483795    mov         eax,6B6ABC
 0048379A    call        0066FECC
 0048379F    mov         word ptr [ebp-18],8
 004837A5    mov         edx,dword ptr [ebp-4]
 004837A8    xor         ecx,ecx
 004837AA    mov         dword ptr [edx],ecx
 004837AC    mov         eax,dword ptr [ebp-4]
 004837AF    mov         word ptr [eax+4],0
 004837B5    mov         edx,dword ptr [ebp-4]
 004837B8    mov         word ptr [edx+6],0
 004837BE    mov         ecx,dword ptr [ebp-4]
 004837C1    xor         eax,eax
 004837C3    mov         dword ptr [ecx+8],eax
 004837C6    mov         edx,dword ptr [ebp-4]
 004837C9    xor         ecx,ecx
 004837CB    mov         dword ptr [edx+0C],ecx
 004837CE    mov         eax,dword ptr [ebp-4]
 004837D1    xor         edx,edx
 004837D3    mov         dword ptr [eax+10],edx
 004837D6    mov         ecx,dword ptr [ebp-4]
 004837D9    xor         eax,eax
 004837DB    mov         dword ptr [ecx+14],eax
 004837DE    mov         edx,dword ptr [ebp-28]
 004837E1    mov         dword ptr fs:[0],edx
 004837E8    mov         eax,dword ptr [ebp-4]
 004837EB    mov         esp,ebp
 004837ED    pop         ebp
 004837EE    ret
end;*}

//004837F0
{*procedure sub_004837F0(?:?; ?:?);
begin
 004837F0    push        ebp
 004837F1    mov         ebp,esp
 004837F3    add         esp,0FFFFFFF8
 004837F6    mov         dword ptr [ebp-8],edx
 004837F9    mov         dword ptr [ebp-4],eax
 004837FC    mov         eax,dword ptr [ebp-4]
 004837FF    test        eax,eax
>00483801    je          0048382A
 00483803    mov         edx,dword ptr [ebp-4]
 00483806    push        dword ptr [edx+10]
 00483809    call        00483830
 0048380E    pop         ecx
 0048380F    mov         ecx,dword ptr [ebp-4]
 00483812    push        dword ptr [ecx+14]
 00483815    call        0048390C
 0048381A    pop         ecx
 0048381B    test        byte ptr [ebp-8],1
>0048381F    je          0048382A
 00483821    push        dword ptr [ebp-4]
 00483824    call        0066EAB0
 00483829    pop         ecx
 0048382A    pop         ecx
 0048382B    pop         ecx
 0048382C    pop         ebp
 0048382D    ret
end;*}

//00483830
{*procedure sub_00483830(?:?);
begin
 00483830    push        ebp
 00483831    mov         ebp,esp
 00483833    add         esp,0FFFFFFC8
 00483836    mov         eax,6B6AF0
 0048383B    call        0066FECC
 00483840    mov         edx,dword ptr [ebp+8]
 00483843    test        edx,edx
>00483845    je          004838E6
 0048384B    xor         ecx,ecx
 0048384D    mov         dword ptr [ebp-34],ecx
>00483850    jmp         004838AB
 00483852    mov         edx,dword ptr [ebp-34]
 00483855    mov         eax,dword ptr [ebp+8]
 00483858    call        TList.Get
 0048385D    mov         dword ptr [ebp-38],eax
 00483860    mov         ecx,dword ptr [ebp-38]
 00483863    mov         dword ptr [ebp-4],ecx
 00483866    mov         eax,dword ptr [ebp-4]
 00483869    test        eax,eax
>0048386B    je          004838A8
 0048386D    mov         word ptr [ebp-20],14
 00483873    dec         dword ptr [ebp-14]
 00483876    mov         eax,dword ptr [ebp-4]
 00483879    add         eax,0E
 0048387C    mov         edx,2
 00483881    call        0067DCA0
 00483886    dec         dword ptr [ebp-14]
 00483889    mov         eax,dword ptr [ebp-4]
 0048388C    add         eax,0A
 0048388F    mov         edx,2
 00483894    call        0067DCA0
 00483899    push        dword ptr [ebp-4]
 0048389C    call        0066EAB0
 004838A1    pop         ecx
 004838A2    mov         word ptr [ebp-20],8
 004838A8    inc         dword ptr [ebp-34]
 004838AB    mov         ecx,dword ptr [ebp-34]
 004838AE    mov         eax,dword ptr [ebp+8]
 004838B1    mov         edx,dword ptr [eax+8]
 004838B4    cmp         ecx,edx
>004838B6    jl          00483852
 004838B8    mov         ecx,dword ptr [ebp+8]
 004838BB    mov         dword ptr [ebp-0C],ecx
 004838BE    mov         eax,dword ptr [ebp-0C]
 004838C1    test        eax,eax
>004838C3    je          004838E6
 004838C5    mov         edx,dword ptr [ebp-0C]
 004838C8    mov         ecx,dword ptr [edx]
 004838CA    mov         dword ptr [ebp-8],ecx
 004838CD    mov         word ptr [ebp-20],2C
 004838D3    mov         edx,3
 004838D8    mov         eax,dword ptr [ebp-0C]
 004838DB    mov         ecx,dword ptr [eax]
 004838DD    call        dword ptr [ecx-4]
 004838E0    mov         word ptr [ebp-20],20
 004838E6    mov         eax,dword ptr [ebp-30]
 004838E9    mov         fs:[00000000],eax
 004838EF    mov         esp,ebp
 004838F1    pop         ebp
 004838F2    ret
end;*}

//0048390C
{*procedure sub_0048390C(?:?);
begin
 0048390C    push        ebp
 0048390D    mov         ebp,esp
 0048390F    add         esp,0FFFFFFC8
 00483912    mov         eax,6B6B48
 00483917    call        0066FECC
 0048391C    mov         edx,dword ptr [ebp+8]
 0048391F    test        edx,edx
>00483921    je          004839C2
 00483927    xor         ecx,ecx
 00483929    mov         dword ptr [ebp-34],ecx
>0048392C    jmp         00483987
 0048392E    mov         edx,dword ptr [ebp-34]
 00483931    mov         eax,dword ptr [ebp+8]
 00483934    call        TList.Get
 00483939    mov         dword ptr [ebp-38],eax
 0048393C    mov         ecx,dword ptr [ebp-38]
 0048393F    mov         dword ptr [ebp-4],ecx
 00483942    mov         eax,dword ptr [ebp-4]
 00483945    test        eax,eax
>00483947    je          00483984
 00483949    mov         word ptr [ebp-20],14
 0048394F    dec         dword ptr [ebp-14]
 00483952    mov         eax,dword ptr [ebp-4]
 00483955    add         eax,0C
 00483958    mov         edx,2
 0048395D    call        0067DCA0
 00483962    dec         dword ptr [ebp-14]
 00483965    mov         eax,dword ptr [ebp-4]
 00483968    add         eax,8
 0048396B    mov         edx,2
 00483970    call        0067DCA0
 00483975    push        dword ptr [ebp-4]
 00483978    call        0066EAB0
 0048397D    pop         ecx
 0048397E    mov         word ptr [ebp-20],8
 00483984    inc         dword ptr [ebp-34]
 00483987    mov         ecx,dword ptr [ebp-34]
 0048398A    mov         eax,dword ptr [ebp+8]
 0048398D    mov         edx,dword ptr [eax+8]
 00483990    cmp         ecx,edx
>00483992    jl          0048392E
 00483994    mov         ecx,dword ptr [ebp+8]
 00483997    mov         dword ptr [ebp-0C],ecx
 0048399A    mov         eax,dword ptr [ebp-0C]
 0048399D    test        eax,eax
>0048399F    je          004839C2
 004839A1    mov         edx,dword ptr [ebp-0C]
 004839A4    mov         ecx,dword ptr [edx]
 004839A6    mov         dword ptr [ebp-8],ecx
 004839A9    mov         word ptr [ebp-20],2C
 004839AF    mov         edx,3
 004839B4    mov         eax,dword ptr [ebp-0C]
 004839B7    mov         ecx,dword ptr [eax]
 004839B9    call        dword ptr [ecx-4]
 004839BC    mov         word ptr [ebp-20],20
 004839C2    mov         eax,dword ptr [ebp-30]
 004839C5    mov         fs:[00000000],eax
 004839CB    mov         esp,ebp
 004839CD    pop         ebp
 004839CE    ret
end;*}

//004839E8
{*procedure sub_004839E8(?:?; ?:Pointer);
begin
 004839E8    push        ebp
 004839E9    mov         ebp,esp
 004839EB    add         esp,0FFFFFFD4
 004839EE    mov         dword ptr [ebp-2C],edx
 004839F1    mov         dword ptr [ebp-28],eax
 004839F4    mov         eax,6B6B80
 004839F9    call        0066FECC
 004839FE    mov         edx,dword ptr [ebp-2C]
 00483A01    push        dword ptr [edx+6]
 00483A04    mov         ecx,dword ptr [ebp-2C]
 00483A07    push        dword ptr [ecx+0A]
 00483A0A    mov         eax,dword ptr [ebp-2C]
 00483A0D    push        dword ptr [eax+0E]
 00483A10    mov         edx,dword ptr [ebp-2C]
 00483A13    mov         ecx,dword ptr [edx+2]
 00483A16    mov         eax,dword ptr [ebp-2C]
 00483A19    mov         dl,byte ptr [eax]
 00483A1B    mov         eax,dword ptr [ebp-28]
 00483A1E    call        00483A34
 00483A23    mov         edx,dword ptr [ebp-24]
 00483A26    mov         dword ptr fs:[0],edx
 00483A2D    mov         esp,ebp
 00483A2F    pop         ebp
 00483A30    ret
end;*}

//00483A34
{*function sub_00483A34(?:?; ?:Pointer; ?:?; ?:?; ?:?; ?:?):?;
begin
 00483A34    push        ebp
 00483A35    mov         ebp,esp
 00483A37    add         esp,0FFFFFFA8
 00483A3A    mov         dword ptr [ebp-48],ecx
 00483A3D    mov         byte ptr [ebp-41],dl
 00483A40    mov         dword ptr [ebp-40],eax
 00483A43    mov         eax,6B6C04
 00483A48    call        0066FECC
 00483A4D    mov         dword ptr [ebp-20],2
 00483A54    lea         edx,[ebp+0C]
 00483A57    lea         eax,[ebp+0C]
 00483A5A    call        0067DAEC
 00483A5F    inc         dword ptr [ebp-20]
 00483A62    mov         word ptr [ebp-2C],8
 00483A68    lea         edx,[ebp+8]
 00483A6B    lea         eax,[ebp+8]
 00483A6E    call        0067DAEC
 00483A73    inc         dword ptr [ebp-20]
 00483A76    mov         edx,dword ptr [ebp-40]
 00483A79    mov         ecx,dword ptr [edx+10]
 00483A7C    test        ecx,ecx
>00483A7E    jne         00483A92
 00483A80    mov         dl,1
 00483A82    mov         eax,[006422A4];TList
 00483A87    call        00413424
 00483A8C    mov         ecx,dword ptr [ebp-40]
 00483A8F    mov         dword ptr [ecx+10],eax
 00483A92    mov         eax,dword ptr [ebp-40]
 00483A95    mov         edx,dword ptr [eax+10]
 00483A98    mov         ecx,dword ptr [edx+8]
 00483A9B    test        ecx,ecx
>00483A9D    jne         00483B68
 00483AA3    push        12
 00483AA5    call        0066EAE4
 00483AAA    pop         ecx
 00483AAB    mov         dword ptr [ebp-4],eax
 00483AAE    test        eax,eax
>00483AB0    je          00483AE3
 00483AB2    mov         word ptr [ebp-2C],20
 00483AB8    mov         eax,dword ptr [ebp-4]
 00483ABB    add         eax,0A
 00483ABE    call        00401EA8
 00483AC3    inc         dword ptr [ebp-20]
 00483AC6    mov         eax,dword ptr [ebp-4]
 00483AC9    add         eax,0E
 00483ACC    call        00401EA8
 00483AD1    inc         dword ptr [ebp-20]
 00483AD4    add         dword ptr [ebp-20],0FFFFFFFE
 00483AD8    mov         word ptr [ebp-2C],14
 00483ADE    mov         edx,dword ptr [ebp-4]
>00483AE1    jmp         00483AE6
 00483AE3    mov         edx,dword ptr [ebp-4]
 00483AE6    mov         dword ptr [ebp-4C],edx
 00483AE9    mov         al,byte ptr [ebp-41]
 00483AEC    mov         ecx,dword ptr [ebp-4C]
 00483AEF    mov         byte ptr [ecx],al
 00483AF1    mov         eax,dword ptr [ebp-4C]
 00483AF4    mov         byte ptr [eax+1],0
 00483AF8    mov         edx,dword ptr [ebp-48]
 00483AFB    mov         ecx,dword ptr [ebp-4C]
 00483AFE    mov         dword ptr [ecx+2],edx
 00483B01    mov         eax,dword ptr [ebp+10]
 00483B04    mov         edx,dword ptr [ebp-4C]
 00483B07    mov         dword ptr [edx+6],eax
 00483B0A    lea         edx,[ebp+0C]
 00483B0D    mov         eax,dword ptr [ebp-4C]
 00483B10    add         eax,0A
 00483B13    call        0067DCD0
 00483B18    lea         edx,[ebp+8]
 00483B1B    mov         eax,dword ptr [ebp-4C]
 00483B1E    add         eax,0E
 00483B21    call        0067DCD0
 00483B26    mov         ecx,dword ptr [ebp-40]
 00483B29    mov         eax,dword ptr [ecx+10]
 00483B2C    mov         edx,dword ptr [ebp-4C]
 00483B2F    call        TList.Add
 00483B34    mov         eax,dword ptr [ebp-4C]
 00483B37    push        eax
 00483B38    dec         dword ptr [ebp-20]
 00483B3B    lea         eax,[ebp+8]
 00483B3E    mov         edx,2
 00483B43    call        0067DCA0
 00483B48    dec         dword ptr [ebp-20]
 00483B4B    lea         eax,[ebp+0C]
 00483B4E    mov         edx,2
 00483B53    call        0067DCA0
 00483B58    pop         eax
 00483B59    mov         edx,dword ptr [ebp-3C]
 00483B5C    mov         dword ptr fs:[0],edx
>00483B63    jmp         00483F6A
 00483B68    xor         ecx,ecx
 00483B6A    mov         dword ptr [ebp-50],ecx
 00483B6D    mov         word ptr [ebp-2C],8
 00483B73    mov         eax,dword ptr [ebp-40]
 00483B76    mov         eax,dword ptr [eax+10]
 00483B79    mov         edx,dword ptr [ebp-50]
 00483B7C    call        TList.Get
 00483B81    mov         dword ptr [ebp-4C],eax
 00483B84    mov         ecx,dword ptr [ebp-48]
 00483B87    mov         eax,dword ptr [ebp-4C]
 00483B8A    mov         edx,dword ptr [eax+2]
 00483B8D    cmp         ecx,edx
>00483B8F    jge         00483C5D
 00483B95    push        12
 00483B97    call        0066EAE4
 00483B9C    pop         ecx
 00483B9D    mov         dword ptr [ebp-8],eax
 00483BA0    test        eax,eax
>00483BA2    je          00483BD5
 00483BA4    mov         word ptr [ebp-2C],38
 00483BAA    mov         eax,dword ptr [ebp-8]
 00483BAD    add         eax,0A
 00483BB0    call        00401EA8
 00483BB5    inc         dword ptr [ebp-20]
 00483BB8    mov         eax,dword ptr [ebp-8]
 00483BBB    add         eax,0E
 00483BBE    call        00401EA8
 00483BC3    inc         dword ptr [ebp-20]
 00483BC6    add         dword ptr [ebp-20],0FFFFFFFE
 00483BCA    mov         word ptr [ebp-2C],2C
 00483BD0    mov         edx,dword ptr [ebp-8]
>00483BD3    jmp         00483BD8
 00483BD5    mov         edx,dword ptr [ebp-8]
 00483BD8    mov         dword ptr [ebp-4C],edx
 00483BDB    mov         al,byte ptr [ebp-41]
 00483BDE    mov         ecx,dword ptr [ebp-4C]
 00483BE1    mov         byte ptr [ecx],al
 00483BE3    mov         eax,dword ptr [ebp-4C]
 00483BE6    mov         byte ptr [eax+1],0
 00483BEA    mov         edx,dword ptr [ebp-48]
 00483BED    mov         ecx,dword ptr [ebp-4C]
 00483BF0    mov         dword ptr [ecx+2],edx
 00483BF3    mov         eax,dword ptr [ebp+10]
 00483BF6    mov         edx,dword ptr [ebp-4C]
 00483BF9    mov         dword ptr [edx+6],eax
 00483BFC    lea         edx,[ebp+0C]
 00483BFF    mov         eax,dword ptr [ebp-4C]
 00483C02    add         eax,0A
 00483C05    call        0067DCD0
 00483C0A    lea         edx,[ebp+8]
 00483C0D    mov         eax,dword ptr [ebp-4C]
 00483C10    add         eax,0E
 00483C13    call        0067DCD0
 00483C18    mov         ecx,dword ptr [ebp-40]
 00483C1B    mov         eax,dword ptr [ecx+10]
 00483C1E    mov         ecx,dword ptr [ebp-4C]
 00483C21    mov         edx,dword ptr [ebp-50]
 00483C24    call        TList.Insert
 00483C29    mov         eax,dword ptr [ebp-4C]
 00483C2C    push        eax
 00483C2D    dec         dword ptr [ebp-20]
 00483C30    lea         eax,[ebp+8]
 00483C33    mov         edx,2
 00483C38    call        0067DCA0
 00483C3D    dec         dword ptr [ebp-20]
 00483C40    lea         eax,[ebp+0C]
 00483C43    mov         edx,2
 00483C48    call        0067DCA0
 00483C4D    pop         eax
 00483C4E    mov         edx,dword ptr [ebp-3C]
 00483C51    mov         dword ptr fs:[0],edx
>00483C58    jmp         00483F6A
 00483C5D    mov         ecx,dword ptr [ebp-40]
 00483C60    mov         eax,dword ptr [ecx+10]
 00483C63    mov         edx,dword ptr [eax+8]
 00483C66    dec         edx
 00483C67    mov         dword ptr [ebp-54],edx
 00483C6A    mov         word ptr [ebp-2C],8
 00483C70    mov         ecx,dword ptr [ebp-40]
 00483C73    mov         eax,dword ptr [ecx+10]
 00483C76    mov         edx,dword ptr [ebp-54]
 00483C79    call        TList.Get
 00483C7E    mov         dword ptr [ebp-4C],eax
 00483C81    mov         ecx,dword ptr [ebp-48]
 00483C84    mov         eax,dword ptr [ebp-4C]
 00483C87    mov         edx,dword ptr [eax+2]
 00483C8A    cmp         ecx,edx
>00483C8C    jle         00483D57
 00483C92    push        12
 00483C94    call        0066EAE4
 00483C99    pop         ecx
 00483C9A    mov         dword ptr [ebp-0C],eax
 00483C9D    test        eax,eax
>00483C9F    je          00483CD2
 00483CA1    mov         word ptr [ebp-2C],50
 00483CA7    mov         eax,dword ptr [ebp-0C]
 00483CAA    add         eax,0A
 00483CAD    call        00401EA8
 00483CB2    inc         dword ptr [ebp-20]
 00483CB5    mov         eax,dword ptr [ebp-0C]
 00483CB8    add         eax,0E
 00483CBB    call        00401EA8
 00483CC0    inc         dword ptr [ebp-20]
 00483CC3    add         dword ptr [ebp-20],0FFFFFFFE
 00483CC7    mov         word ptr [ebp-2C],44
 00483CCD    mov         edx,dword ptr [ebp-0C]
>00483CD0    jmp         00483CD5
 00483CD2    mov         edx,dword ptr [ebp-0C]
 00483CD5    mov         dword ptr [ebp-4C],edx
 00483CD8    mov         al,byte ptr [ebp-41]
 00483CDB    mov         ecx,dword ptr [ebp-4C]
 00483CDE    mov         byte ptr [ecx],al
 00483CE0    mov         eax,dword ptr [ebp-4C]
 00483CE3    mov         byte ptr [eax+1],0
 00483CE7    mov         edx,dword ptr [ebp-48]
 00483CEA    mov         ecx,dword ptr [ebp-4C]
 00483CED    mov         dword ptr [ecx+2],edx
 00483CF0    mov         eax,dword ptr [ebp+10]
 00483CF3    mov         edx,dword ptr [ebp-4C]
 00483CF6    mov         dword ptr [edx+6],eax
 00483CF9    lea         edx,[ebp+0C]
 00483CFC    mov         eax,dword ptr [ebp-4C]
 00483CFF    add         eax,0A
 00483D02    call        0067DCD0
 00483D07    lea         edx,[ebp+8]
 00483D0A    mov         eax,dword ptr [ebp-4C]
 00483D0D    add         eax,0E
 00483D10    call        0067DCD0
 00483D15    mov         ecx,dword ptr [ebp-40]
 00483D18    mov         eax,dword ptr [ecx+10]
 00483D1B    mov         edx,dword ptr [ebp-4C]
 00483D1E    call        TList.Add
 00483D23    mov         eax,dword ptr [ebp-4C]
 00483D26    push        eax
 00483D27    dec         dword ptr [ebp-20]
 00483D2A    lea         eax,[ebp+8]
 00483D2D    mov         edx,2
 00483D32    call        0067DCA0
 00483D37    dec         dword ptr [ebp-20]
 00483D3A    lea         eax,[ebp+0C]
 00483D3D    mov         edx,2
 00483D42    call        0067DCA0
 00483D47    pop         eax
 00483D48    mov         edx,dword ptr [ebp-3C]
 00483D4B    mov         dword ptr fs:[0],edx
>00483D52    jmp         00483F6A
 00483D57    mov         ecx,dword ptr [ebp-50]
 00483D5A    mov         eax,dword ptr [ebp-54]
 00483D5D    cmp         ecx,eax
>00483D5F    jge         00483DB0
 00483D61    mov         edx,dword ptr [ebp-50]
 00483D64    mov         ecx,dword ptr [ebp-54]
 00483D67    add         edx,ecx
 00483D69    sar         edx,1
>00483D6B    jns         00483D70
 00483D6D    adc         edx,0
 00483D70    mov         dword ptr [ebp-58],edx
 00483D73    mov         word ptr [ebp-2C],8
 00483D79    mov         eax,dword ptr [ebp-40]
 00483D7C    mov         eax,dword ptr [eax+10]
 00483D7F    mov         edx,dword ptr [ebp-58]
 00483D82    call        TList.Get
 00483D87    mov         dword ptr [ebp-4C],eax
 00483D8A    mov         ecx,dword ptr [ebp-48]
 00483D8D    mov         eax,dword ptr [ebp-4C]
 00483D90    mov         edx,dword ptr [eax+2]
 00483D93    cmp         ecx,edx
>00483D95    jg          00483D9F
 00483D97    mov         ecx,dword ptr [ebp-58]
 00483D9A    mov         dword ptr [ebp-54],ecx
>00483D9D    jmp         00483DA6
 00483D9F    mov         eax,dword ptr [ebp-58]
 00483DA2    inc         eax
 00483DA3    mov         dword ptr [ebp-50],eax
 00483DA6    mov         edx,dword ptr [ebp-50]
 00483DA9    mov         ecx,dword ptr [ebp-54]
 00483DAC    cmp         edx,ecx
>00483DAE    jl          00483D61
 00483DB0    mov         eax,dword ptr [ebp-40]
 00483DB3    mov         eax,dword ptr [eax+10]
 00483DB6    mov         edx,dword ptr [ebp-54]
 00483DB9    call        TList.Get
 00483DBE    mov         dword ptr [ebp-4C],eax
 00483DC1    mov         ecx,dword ptr [ebp-4C]
 00483DC4    mov         eax,dword ptr [ecx+2]
 00483DC7    mov         edx,dword ptr [ebp-48]
 00483DCA    cmp         eax,edx
>00483DCC    je          00483E9A
 00483DD2    push        12
 00483DD4    call        0066EAE4
 00483DD9    pop         ecx
 00483DDA    mov         dword ptr [ebp-10],eax
 00483DDD    test        eax,eax
>00483DDF    je          00483E12
 00483DE1    mov         word ptr [ebp-2C],68
 00483DE7    mov         eax,dword ptr [ebp-10]
 00483DEA    add         eax,0A
 00483DED    call        00401EA8
 00483DF2    inc         dword ptr [ebp-20]
 00483DF5    mov         eax,dword ptr [ebp-10]
 00483DF8    add         eax,0E
 00483DFB    call        00401EA8
 00483E00    inc         dword ptr [ebp-20]
 00483E03    add         dword ptr [ebp-20],0FFFFFFFE
 00483E07    mov         word ptr [ebp-2C],5C
 00483E0D    mov         edx,dword ptr [ebp-10]
>00483E10    jmp         00483E15
 00483E12    mov         edx,dword ptr [ebp-10]
 00483E15    mov         dword ptr [ebp-4C],edx
 00483E18    mov         al,byte ptr [ebp-41]
 00483E1B    mov         ecx,dword ptr [ebp-4C]
 00483E1E    mov         byte ptr [ecx],al
 00483E20    mov         eax,dword ptr [ebp-4C]
 00483E23    mov         byte ptr [eax+1],0
 00483E27    mov         edx,dword ptr [ebp-48]
 00483E2A    mov         ecx,dword ptr [ebp-4C]
 00483E2D    mov         dword ptr [ecx+2],edx
 00483E30    mov         eax,dword ptr [ebp+10]
 00483E33    mov         edx,dword ptr [ebp-4C]
 00483E36    mov         dword ptr [edx+6],eax
 00483E39    lea         edx,[ebp+0C]
 00483E3C    mov         eax,dword ptr [ebp-4C]
 00483E3F    add         eax,0A
 00483E42    call        0067DCD0
 00483E47    lea         edx,[ebp+8]
 00483E4A    mov         eax,dword ptr [ebp-4C]
 00483E4D    add         eax,0E
 00483E50    call        0067DCD0
 00483E55    mov         ecx,dword ptr [ebp-40]
 00483E58    mov         eax,dword ptr [ecx+10]
 00483E5B    mov         ecx,dword ptr [ebp-4C]
 00483E5E    mov         edx,dword ptr [ebp-54]
 00483E61    call        TList.Insert
 00483E66    mov         eax,dword ptr [ebp-4C]
 00483E69    push        eax
 00483E6A    dec         dword ptr [ebp-20]
 00483E6D    lea         eax,[ebp+8]
 00483E70    mov         edx,2
 00483E75    call        0067DCA0
 00483E7A    dec         dword ptr [ebp-20]
 00483E7D    lea         eax,[ebp+0C]
 00483E80    mov         edx,2
 00483E85    call        0067DCA0
 00483E8A    pop         eax
 00483E8B    mov         edx,dword ptr [ebp-3C]
 00483E8E    mov         dword ptr fs:[0],edx
>00483E95    jmp         00483F6A
 00483E9A    mov         word ptr [ebp-2C],74
 00483EA0    mov         edx,6B51D2
 00483EA5    lea         eax,[ebp-14]
 00483EA8    call        0067DAB4
 00483EAD    inc         dword ptr [ebp-20]
 00483EB0    lea         edx,[ebp-14]
 00483EB3    mov         eax,dword ptr [ebp-4C]
 00483EB6    add         eax,0A
 00483EB9    call        0067DD84
 00483EBE    push        eax
 00483EBF    dec         dword ptr [ebp-20]
 00483EC2    lea         eax,[ebp-14]
 00483EC5    mov         edx,2
 00483ECA    call        0067DCA0
 00483ECF    pop         ecx
 00483ED0    test        cl,cl
>00483ED2    je          00483EE2
 00483ED4    lea         edx,[ebp+0C]
 00483ED7    mov         eax,dword ptr [ebp-4C]
 00483EDA    add         eax,0A
 00483EDD    call        0067DCD0
 00483EE2    mov         word ptr [ebp-2C],80
 00483EE8    mov         edx,6B51D3
 00483EED    lea         eax,[ebp-18]
 00483EF0    call        0067DAB4
 00483EF5    inc         dword ptr [ebp-20]
 00483EF8    lea         edx,[ebp-18]
 00483EFB    mov         eax,dword ptr [ebp-4C]
 00483EFE    add         eax,0E
 00483F01    call        0067DD84
 00483F06    push        eax
 00483F07    dec         dword ptr [ebp-20]
 00483F0A    lea         eax,[ebp-18]
 00483F0D    mov         edx,2
 00483F12    call        0067DCA0
 00483F17    pop         ecx
 00483F18    test        cl,cl
>00483F1A    je          00483F2A
 00483F1C    lea         edx,[ebp+8]
 00483F1F    mov         eax,dword ptr [ebp-4C]
 00483F22    add         eax,0E
 00483F25    call        0067DCD0
 00483F2A    mov         ecx,dword ptr [ebp-4C]
 00483F2D    mov         al,byte ptr [ecx]
 00483F2F    test        al,al
>00483F31    jne         00483F3B
 00483F33    mov         dl,byte ptr [ebp-41]
 00483F36    mov         ecx,dword ptr [ebp-4C]
 00483F39    mov         byte ptr [ecx],dl
 00483F3B    mov         eax,dword ptr [ebp-4C]
 00483F3E    push        eax
 00483F3F    dec         dword ptr [ebp-20]
 00483F42    lea         eax,[ebp+8]
 00483F45    mov         edx,2
 00483F4A    call        0067DCA0
 00483F4F    dec         dword ptr [ebp-20]
 00483F52    lea         eax,[ebp+0C]
 00483F55    mov         edx,2
 00483F5A    call        0067DCA0
 00483F5F    pop         eax
 00483F60    mov         edx,dword ptr [ebp-3C]
 00483F63    mov         dword ptr fs:[0],edx
 00483F6A    mov         esp,ebp
 00483F6C    pop         ebp
 00483F6D    ret         0C
end;*}

//00483F70
{*procedure sub_00483F70(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00483F70    push        ebp
 00483F71    mov         ebp,esp
 00483F73    add         esp,0FFFFFC78
 00483F79    mov         dword ptr [ebp-68],ecx
 00483F7C    mov         dword ptr [ebp-64],edx
 00483F7F    mov         dword ptr [ebp-60],eax
 00483F82    mov         eax,6B6D6C
 00483F87    call        0066FECC
 00483F8C    mov         word ptr [ebp-4C],8
 00483F92    lea         eax,[ebp-0A]
 00483F95    call        00401EA8
 00483F9A    inc         dword ptr [ebp-40]
 00483F9D    lea         eax,[ebp-6]
 00483FA0    call        00401EA8
 00483FA5    inc         dword ptr [ebp-40]
 00483FA8    inc         dword ptr [ebp-40]
 00483FAB    mov         word ptr [ebp-4C],14
 00483FB1    push        28
 00483FB3    push        dword ptr [ebp-64]
 00483FB6    call        0066FBAD
 00483FBB    add         esp,8
 00483FBE    mov         dword ptr [ebp-70],eax
 00483FC1    mov         edx,dword ptr [ebp-70]
 00483FC4    test        edx,edx
>00483FC6    je          004843F0
 00483FCC    inc         dword ptr [ebp-70]
 00483FCF    mov         ecx,dword ptr [ebp-70]
 00483FD2    mov         dword ptr [ebp-74],ecx
 00483FD5    xor         eax,eax
 00483FD7    mov         dword ptr [ebp-84],eax
 00483FDD    mov         byte ptr [ebp-69],0
 00483FE1    mov         edx,dword ptr [ebp-74]
 00483FE4    mov         cl,byte ptr [edx]
 00483FE6    mov         byte ptr [ebp-79],cl
 00483FE9    movsx       eax,byte ptr [ebp-79]
 00483FED    cmp         eax,29
>00483FF0    je          00484024
 00483FF2    movsx       edx,byte ptr [ebp-79]
 00483FF6    cmp         edx,3A
>00483FF9    jne         00484012
 00483FFB    mov         cl,byte ptr [ebp-69]
 00483FFE    test        cl,cl
>00484000    jne         00484012
 00484002    mov         eax,dword ptr [ebp-74]
 00484005    mov         byte ptr [eax],20
 00484008    inc         dword ptr [ebp-84]
 0048400E    mov         byte ptr [ebp-69],1
 00484012    movsx       edx,byte ptr [ebp-79]
 00484016    cmp         edx,3B
>00484019    jne         0048401F
 0048401B    mov         byte ptr [ebp-69],0
 0048401F    inc         dword ptr [ebp-74]
>00484022    jmp         00483FE1
 00484024    mov         ecx,dword ptr [ebp-84]
 0048402A    test        ecx,ecx
>0048402C    je          004843F6
 00484032    mov         eax,dword ptr [ebp-60]
 00484035    movzx       edx,word ptr [eax+4]
 00484039    mov         dword ptr [ebp-80],edx
 0048403C    mov         ecx,dword ptr [ebp-68]
 0048403F    mov         dword ptr [ebp-88],ecx
 00484045    mov         word ptr [ebp-4C],14
 0048404B    xor         eax,eax
 0048404D    mov         byte ptr [ebp-288],al
 00484053    mov         byte ptr [ebp-188],al
 00484059    mov         byte ptr [ebp-7A],3B
 0048405D    movsx       edx,byte ptr [ebp-7A]
 00484061    push        edx
 00484062    push        dword ptr [ebp-70]
 00484065    call        0066FBAD
 0048406A    add         esp,8
 0048406D    mov         dword ptr [ebp-74],eax
 00484070    mov         ecx,dword ptr [ebp-74]
 00484073    test        ecx,ecx
>00484075    jne         0048408E
 00484077    mov         byte ptr [ebp-7A],29
 0048407B    movsx       eax,byte ptr [ebp-7A]
 0048407F    push        eax
 00484080    push        dword ptr [ebp-70]
 00484083    call        0066FBAD
 00484088    add         esp,8
 0048408B    mov         dword ptr [ebp-74],eax
 0048408E    mov         edx,dword ptr [ebp-74]
 00484091    mov         byte ptr [edx],0
 00484094    mov         byte ptr [ebp-14],21
>00484098    jmp         0048409D
 0048409A    inc         dword ptr [ebp-70]
 0048409D    mov         ecx,dword ptr [ebp-70]
 004840A0    movsx       eax,byte ptr [ecx]
 004840A3    cmp         eax,20
>004840A6    je          0048409A
 004840A8    lea         edx,[ebp-188]
 004840AE    push        edx
 004840AF    push        6B51D4
 004840B4    push        dword ptr [ebp-70]
 004840B7    call        00673530
 004840BC    add         esp,0C
 004840BF    push        6B51D7
 004840C4    lea         ecx,[ebp-188]
 004840CA    push        ecx
 004840CB    call        0066FCB4
 004840D0    add         esp,8
 004840D3    test        eax,eax
>004840D5    jne         00484117
 004840D7    mov         byte ptr [ebp-14],22
 004840DB    lea         eax,[ebp-188]
 004840E1    push        eax
 004840E2    call        0066FAB4
 004840E7    pop         ecx
 004840E8    add         dword ptr [ebp-70],eax
>004840EB    jmp         004840F0
 004840ED    inc         dword ptr [ebp-70]
 004840F0    mov         edx,dword ptr [ebp-70]
 004840F3    movsx       ecx,byte ptr [edx]
 004840F6    cmp         ecx,20
>004840F9    je          004840ED
 004840FB    lea         eax,[ebp-188]
 00484101    push        eax
 00484102    push        6B51DB
 00484107    push        dword ptr [ebp-70]
 0048410A    call        00673530
 0048410F    add         esp,0C
>00484112    jmp         004841BB
 00484117    push        6B51DE
 0048411C    lea         edx,[ebp-188]
 00484122    push        edx
 00484123    call        0066FCB4
 00484128    add         esp,8
 0048412B    test        eax,eax
>0048412D    jne         0048416C
 0048412F    mov         byte ptr [ebp-14],23
 00484133    lea         ecx,[ebp-188]
 00484139    push        ecx
 0048413A    call        0066FAB4
 0048413F    pop         ecx
 00484140    add         dword ptr [ebp-70],eax
>00484143    jmp         00484148
 00484145    inc         dword ptr [ebp-70]
 00484148    mov         eax,dword ptr [ebp-70]
 0048414B    movsx       edx,byte ptr [eax]
 0048414E    cmp         edx,20
>00484151    je          00484145
 00484153    lea         ecx,[ebp-188]
 00484159    push        ecx
 0048415A    push        6B51E4
 0048415F    push        dword ptr [ebp-70]
 00484162    call        00673530
 00484167    add         esp,0C
>0048416A    jmp         004841BB
 0048416C    push        6B51E7
 00484171    lea         eax,[ebp-188]
 00484177    push        eax
 00484178    call        0066FCB4
 0048417D    add         esp,8
 00484180    test        eax,eax
>00484182    jne         004841BB
 00484184    lea         edx,[ebp-188]
 0048418A    push        edx
 0048418B    call        0066FAB4
 00484190    pop         ecx
 00484191    add         dword ptr [ebp-70],eax
>00484194    jmp         00484199
 00484196    inc         dword ptr [ebp-70]
 00484199    mov         ecx,dword ptr [ebp-70]
 0048419C    movsx       eax,byte ptr [ecx]
 0048419F    cmp         eax,20
>004841A2    je          00484196
 004841A4    lea         edx,[ebp-188]
 004841AA    push        edx
 004841AB    push        6B51EB
 004841B0    push        dword ptr [ebp-70]
 004841B3    call        00673530
 004841B8    add         esp,0C
 004841BB    lea         ecx,[ebp-188]
 004841C1    push        ecx
 004841C2    call        0066FAB4
 004841C7    pop         ecx
 004841C8    add         dword ptr [ebp-70],eax
>004841CB    jmp         004841D0
 004841CD    inc         dword ptr [ebp-70]
 004841D0    mov         eax,dword ptr [ebp-70]
 004841D3    movsx       edx,byte ptr [eax]
 004841D6    cmp         edx,20
>004841D9    je          004841CD
 004841DB    push        dword ptr [ebp-70]
 004841DE    lea         ecx,[ebp-288]
 004841E4    push        ecx
 004841E5    call        0066FA84
 004841EA    add         esp,8
 004841ED    lea         eax,[ebp-288]
 004841F3    push        eax
 004841F4    call        0066FAB4
 004841F9    pop         ecx
 004841FA    add         dword ptr [ebp-70],eax
>004841FD    jmp         00484202
 004841FF    inc         dword ptr [ebp-70]
 00484202    mov         edx,dword ptr [ebp-70]
 00484205    movsx       ecx,byte ptr [edx]
 00484208    cmp         ecx,20
>0048420B    je          004841FF
 0048420D    mov         dword ptr [ebp-0E],4
 00484214    push        3A
 00484216    lea         eax,[ebp-288]
 0048421C    push        eax
 0048421D    call        0066FBAD
 00484222    add         esp,8
 00484225    mov         dword ptr [ebp-78],eax
 00484228    mov         edx,dword ptr [ebp-78]
 0048422B    test        edx,edx
>0048422D    je          0048424B
 0048422F    lea         ecx,[ebp-0E]
 00484232    push        ecx
 00484233    push        6B51EE
 00484238    mov         eax,dword ptr [ebp-78]
 0048423B    inc         eax
 0048423C    push        eax
 0048423D    call        00673530
 00484242    add         esp,0C
 00484245    mov         edx,dword ptr [ebp-78]
 00484248    mov         byte ptr [edx],0
 0048424B    mov         ecx,dword ptr [ebp+0C]
 0048424E    test        ecx,ecx
>00484250    jne         0048427E
 00484252    mov         eax,dword ptr [ebp-88]
 00484258    cmp         eax,3
>0048425B    jge         00484270
 0048425D    mov         edx,dword ptr [ebp-0E]
 00484260    cmp         edx,4
>00484263    jne         00484270
 00484265    mov         ecx,dword ptr [ebp-88]
 0048426B    mov         dword ptr [ebp-12],ecx
>0048426E    jmp         0048428A
 00484270    mov         eax,dword ptr [ebp-80]
 00484273    mov         dword ptr [ebp-12],eax
 00484276    mov         edx,dword ptr [ebp-0E]
 00484279    add         dword ptr [ebp-80],edx
>0048427C    jmp         0048428A
 0048427E    mov         ecx,dword ptr [ebp-80]
 00484281    mov         dword ptr [ebp-12],ecx
 00484284    mov         eax,dword ptr [ebp-0E]
 00484287    add         dword ptr [ebp-80],eax
 0048428A    movsx       edx,byte ptr [ebp-188]
 00484291    cmp         edx,3F
>00484294    jne         004842D3
 00484296    mov         cl,byte ptr [ebp-187]
 0048429C    test        cl,cl
>0048429E    jne         004842D3
 004842A0    mov         word ptr [ebp-4C],20
 004842A6    mov         edx,6B51F1
 004842AB    lea         eax,[ebp-18]
 004842AE    call        0067DAB4
 004842B3    inc         dword ptr [ebp-40]
 004842B6    lea         edx,[ebp-18]
 004842B9    lea         eax,[ebp-0A]
 004842BC    call        0067DCD0
 004842C1    dec         dword ptr [ebp-40]
 004842C4    lea         eax,[ebp-18]
 004842C7    mov         edx,2
 004842CC    call        0067DCA0
>004842D1    jmp         00484327
 004842D3    mov         word ptr [ebp-4C],2C
 004842D9    lea         eax,[ebp-20]
 004842DC    call        00401EA8
 004842E1    push        eax
 004842E2    inc         dword ptr [ebp-40]
 004842E5    lea         edx,[ebp-188]
 004842EB    lea         eax,[ebp-1C]
 004842EE    call        0067DAB4
 004842F3    inc         dword ptr [ebp-40]
 004842F6    pop         edx
 004842F7    call        0067E030
 004842FC    lea         edx,[ebp-20]
 004842FF    lea         eax,[ebp-0A]
 00484302    call        0067DCD0
 00484307    dec         dword ptr [ebp-40]
 0048430A    lea         eax,[ebp-20]
 0048430D    mov         edx,2
 00484312    call        0067DCA0
 00484317    dec         dword ptr [ebp-40]
 0048431A    lea         eax,[ebp-1C]
 0048431D    mov         edx,2
 00484322    call        0067DCA0
 00484327    movsx       ecx,byte ptr [ebp-288]
 0048432E    cmp         ecx,3F
>00484331    jne         00484370
 00484333    mov         al,byte ptr [ebp-287]
 00484339    test        al,al
>0048433B    jne         00484370
 0048433D    mov         word ptr [ebp-4C],38
 00484343    mov         edx,6B51F2
 00484348    lea         eax,[ebp-24]
 0048434B    call        0067DAB4
 00484350    inc         dword ptr [ebp-40]
 00484353    lea         edx,[ebp-24]
 00484356    lea         eax,[ebp-6]
 00484359    call        0067DCD0
 0048435E    dec         dword ptr [ebp-40]
 00484361    lea         eax,[ebp-24]
 00484364    mov         edx,2
 00484369    call        0067DCA0
>0048436E    jmp         004843C4
 00484370    mov         word ptr [ebp-4C],44
 00484376    lea         eax,[ebp-2C]
 00484379    call        00401EA8
 0048437E    push        eax
 0048437F    inc         dword ptr [ebp-40]
 00484382    lea         edx,[ebp-288]
 00484388    lea         eax,[ebp-28]
 0048438B    call        0067DAB4
 00484390    inc         dword ptr [ebp-40]
 00484393    pop         edx
 00484394    call        00531D20
 00484399    lea         edx,[ebp-2C]
 0048439C    lea         eax,[ebp-6]
 0048439F    call        0067DCD0
 004843A4    dec         dword ptr [ebp-40]
 004843A7    lea         eax,[ebp-2C]
 004843AA    mov         edx,2
 004843AF    call        0067DCA0
 004843B4    dec         dword ptr [ebp-40]
 004843B7    lea         eax,[ebp-28]
 004843BA    mov         edx,2
 004843BF    call        0067DCA0
 004843C4    lea         edx,[ebp-14]
 004843C7    mov         eax,dword ptr [ebp-60]
 004843CA    call        004839E8
 004843CF    mov         ecx,dword ptr [ebp-74]
 004843D2    mov         byte ptr [ecx],20
 004843D5    mov         eax,dword ptr [ebp-74]
 004843D8    inc         eax
 004843D9    mov         dword ptr [ebp-70],eax
 004843DC    movsx       edx,byte ptr [ebp-7A]
 004843E0    cmp         edx,29
>004843E3    je          004843F6
 004843E5    inc         dword ptr [ebp-88]
>004843EB    jmp         0048404B
 004843F0    mov         ecx,dword ptr [ebp-64]
 004843F3    mov         dword ptr [ebp-70],ecx
 004843F6    push        3A
 004843F8    push        dword ptr [ebp-70]
 004843FB    call        0066FBAD
 00484400    add         esp,8
 00484403    mov         dword ptr [ebp-70],eax
 00484406    mov         eax,dword ptr [ebp-70]
 00484409    test        eax,eax
>0048440B    je          004844F4
 00484411    inc         dword ptr [ebp-70]
 00484414    push        3B
 00484416    push        dword ptr [ebp-70]
 00484419    call        0066FBAD
 0048441E    add         esp,8
 00484421    mov         dword ptr [ebp-74],eax
 00484424    mov         edx,dword ptr [ebp-74]
 00484427    test        edx,edx
>00484429    je          0048444B
 0048442B    mov         ecx,dword ptr [ebp-74]
 0048442E    mov         byte ptr [ecx],0
 00484431    push        dword ptr [ebp-70]
 00484434    lea         eax,[ebp-188]
 0048443A    push        eax
 0048443B    call        0066FA84
 00484440    add         esp,8
 00484443    mov         edx,dword ptr [ebp-74]
 00484446    mov         byte ptr [edx],3B
>00484449    jmp         0048445D
 0048444B    push        dword ptr [ebp-70]
 0048444E    lea         ecx,[ebp-188]
 00484454    push        ecx
 00484455    call        0066FA84
 0048445A    add         esp,8
 0048445D    mov         word ptr [ebp-4C],50
 00484463    lea         eax,[ebp-34]
 00484466    call        00401EA8
 0048446B    push        eax
 0048446C    inc         dword ptr [ebp-40]
 0048446F    lea         edx,[ebp-188]
 00484475    lea         eax,[ebp-30]
 00484478    call        0067DAB4
 0048447D    inc         dword ptr [ebp-40]
 00484480    pop         edx
 00484481    call        0067E030
 00484486    lea         edx,[ebp-34]
 00484489    mov         eax,dword ptr [ebp+8]
 0048448C    call        0067DCD0
 00484491    mov         eax,dword ptr [ebp+8]
 00484494    mov         word ptr [ebp-4C],5C
 0048449A    push        eax
 0048449B    dec         dword ptr [ebp-40]
 0048449E    lea         eax,[ebp-34]
 004844A1    mov         edx,2
 004844A6    call        0067DCA0
 004844AB    dec         dword ptr [ebp-40]
 004844AE    lea         eax,[ebp-30]
 004844B1    mov         edx,2
 004844B6    call        0067DCA0
 004844BB    dec         dword ptr [ebp-40]
 004844BE    dec         dword ptr [ebp-40]
 004844C1    lea         eax,[ebp-6]
 004844C4    mov         edx,2
 004844C9    call        0067DCA0
 004844CE    dec         dword ptr [ebp-40]
 004844D1    lea         eax,[ebp-0A]
 004844D4    mov         edx,2
 004844D9    call        0067DCA0
 004844DE    pop         eax
 004844DF    mov         word ptr [ebp-4C],50
 004844E5    inc         dword ptr [ebp-40]
 004844E8    mov         edx,dword ptr [ebp-5C]
 004844EB    mov         dword ptr fs:[0],edx
>004844F2    jmp         00484566
 004844F4    mov         word ptr [ebp-4C],68
 004844FA    mov         edx,6B51F3
 004844FF    lea         eax,[ebp-38]
 00484502    call        0067DAB4
 00484507    inc         dword ptr [ebp-40]
 0048450A    lea         edx,[ebp-38]
 0048450D    mov         eax,dword ptr [ebp+8]
 00484510    call        0067DCD0
 00484515    mov         eax,dword ptr [ebp+8]
 00484518    mov         word ptr [ebp-4C],74
 0048451E    push        eax
 0048451F    dec         dword ptr [ebp-40]
 00484522    lea         eax,[ebp-38]
 00484525    mov         edx,2
 0048452A    call        0067DCA0
 0048452F    dec         dword ptr [ebp-40]
 00484532    dec         dword ptr [ebp-40]
 00484535    lea         eax,[ebp-6]
 00484538    mov         edx,2
 0048453D    call        0067DCA0
 00484542    dec         dword ptr [ebp-40]
 00484545    lea         eax,[ebp-0A]
 00484548    mov         edx,2
 0048454D    call        0067DCA0
 00484552    pop         eax
 00484553    mov         word ptr [ebp-4C],68
 00484559    inc         dword ptr [ebp-40]
 0048455C    mov         edx,dword ptr [ebp-5C]
 0048455F    mov         dword ptr fs:[0],edx
 00484566    mov         esp,ebp
 00484568    pop         ebp
 00484569    ret         8
end;*}

//0048456C
{*procedure sub_0048456C(?:?);
begin
 0048456C    push        ebp
 0048456D    mov         ebp,esp
 0048456F    add         esp,0FFFFFFF8
 00484572    mov         dword ptr [ebp-4],eax
 00484575    mov         eax,dword ptr [ebp-4]
 00484578    mov         edx,dword ptr [eax+10]
 0048457B    test        edx,edx
>0048457D    je          004845B2
 0048457F    xor         ecx,ecx
 00484581    mov         dword ptr [ebp-8],ecx
>00484584    jmp         00484597
 00484586    mov         edx,dword ptr [ebp-8]
 00484589    mov         eax,dword ptr [ebp-4]
 0048458C    mov         eax,dword ptr [eax+10]
 0048458F    call        TList.Delete
 00484594    inc         dword ptr [ebp-8]
 00484597    mov         edx,dword ptr [ebp-4]
 0048459A    mov         ecx,dword ptr [edx+10]
 0048459D    mov         eax,dword ptr [ecx+8]
 004845A0    mov         edx,dword ptr [ebp-8]
 004845A3    cmp         eax,edx
>004845A5    jg          00484586
 004845A7    mov         ecx,dword ptr [ebp-4]
 004845AA    mov         eax,dword ptr [ecx+10]
 004845AD    mov         edx,dword ptr [eax]
 004845AF    call        dword ptr [edx+8]
 004845B2    pop         ecx
 004845B3    pop         ecx
 004845B4    pop         ebp
 004845B5    ret
end;*}

//004845B8
{*function sub_004845B8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004845B8    push        ebp
 004845B9    mov         ebp,esp
 004845BB    add         esp,0FFFFFFA8
 004845BE    mov         dword ptr [ebp-48],ecx
 004845C1    mov         dword ptr [ebp-44],edx
 004845C4    mov         dword ptr [ebp-40],eax
 004845C7    mov         eax,6B6E68
 004845CC    call        0066FECC
 004845D1    mov         dword ptr [ebp-20],2
 004845D8    lea         edx,[ebp+0C]
 004845DB    lea         eax,[ebp+0C]
 004845DE    call        0067DAEC
 004845E3    inc         dword ptr [ebp-20]
 004845E6    mov         word ptr [ebp-2C],8
 004845EC    lea         edx,[ebp+8]
 004845EF    lea         eax,[ebp+8]
 004845F2    call        0067DAEC
 004845F7    inc         dword ptr [ebp-20]
 004845FA    mov         edx,dword ptr [ebp-40]
 004845FD    mov         ecx,dword ptr [edx+14]
 00484600    test        ecx,ecx
>00484602    jne         00484616
 00484604    mov         dl,1
 00484606    mov         eax,[006422A4];TList
 0048460B    call        00413424
 00484610    mov         ecx,dword ptr [ebp-40]
 00484613    mov         dword ptr [ecx+14],eax
 00484616    mov         eax,dword ptr [ebp-40]
 00484619    mov         edx,dword ptr [eax+14]
 0048461C    mov         ecx,dword ptr [edx+8]
 0048461F    test        ecx,ecx
>00484621    jne         004846DC
 00484627    push        10
 00484629    call        0066EAE4
 0048462E    pop         ecx
 0048462F    mov         dword ptr [ebp-4],eax
 00484632    test        eax,eax
>00484634    je          00484667
 00484636    mov         word ptr [ebp-2C],20
 0048463C    mov         eax,dword ptr [ebp-4]
 0048463F    add         eax,8
 00484642    call        00401EA8
 00484647    inc         dword ptr [ebp-20]
 0048464A    mov         eax,dword ptr [ebp-4]
 0048464D    add         eax,0C
 00484650    call        00401EA8
 00484655    inc         dword ptr [ebp-20]
 00484658    add         dword ptr [ebp-20],0FFFFFFFE
 0048465C    mov         word ptr [ebp-2C],14
 00484662    mov         edx,dword ptr [ebp-4]
>00484665    jmp         0048466A
 00484667    mov         edx,dword ptr [ebp-4]
 0048466A    mov         dword ptr [ebp-4C],edx
 0048466D    mov         eax,dword ptr [ebp-44]
 00484670    mov         ecx,dword ptr [ebp-4C]
 00484673    mov         dword ptr [ecx],eax
 00484675    mov         eax,dword ptr [ebp-48]
 00484678    mov         edx,dword ptr [ebp-4C]
 0048467B    mov         dword ptr [edx+4],eax
 0048467E    lea         edx,[ebp+0C]
 00484681    mov         eax,dword ptr [ebp-4C]
 00484684    add         eax,8
 00484687    call        0067DCD0
 0048468C    lea         edx,[ebp+8]
 0048468F    mov         eax,dword ptr [ebp-4C]
 00484692    add         eax,0C
 00484695    call        0067DCD0
 0048469A    mov         ecx,dword ptr [ebp-40]
 0048469D    mov         eax,dword ptr [ecx+14]
 004846A0    mov         edx,dword ptr [ebp-4C]
 004846A3    call        TList.Add
 004846A8    mov         eax,dword ptr [ebp-4C]
 004846AB    push        eax
 004846AC    dec         dword ptr [ebp-20]
 004846AF    lea         eax,[ebp+8]
 004846B2    mov         edx,2
 004846B7    call        0067DCA0
 004846BC    dec         dword ptr [ebp-20]
 004846BF    lea         eax,[ebp+0C]
 004846C2    mov         edx,2
 004846C7    call        0067DCA0
 004846CC    pop         eax
 004846CD    mov         edx,dword ptr [ebp-3C]
 004846D0    mov         dword ptr fs:[0],edx
>004846D7    jmp         00484A70
 004846DC    xor         ecx,ecx
 004846DE    mov         dword ptr [ebp-50],ecx
 004846E1    mov         word ptr [ebp-2C],8
 004846E7    mov         eax,dword ptr [ebp-40]
 004846EA    mov         eax,dword ptr [eax+14]
 004846ED    mov         edx,dword ptr [ebp-50]
 004846F0    call        TList.Get
 004846F5    mov         dword ptr [ebp-4C],eax
 004846F8    mov         ecx,dword ptr [ebp-44]
 004846FB    neg         ecx
 004846FD    mov         eax,dword ptr [ebp-4C]
 00484700    mov         edx,dword ptr [eax]
 00484702    neg         edx
 00484704    cmp         ecx,edx
>00484706    jge         004847C4
 0048470C    push        10
 0048470E    call        0066EAE4
 00484713    pop         ecx
 00484714    mov         dword ptr [ebp-8],eax
 00484717    test        eax,eax
>00484719    je          0048474C
 0048471B    mov         word ptr [ebp-2C],38
 00484721    mov         eax,dword ptr [ebp-8]
 00484724    add         eax,8
 00484727    call        00401EA8
 0048472C    inc         dword ptr [ebp-20]
 0048472F    mov         eax,dword ptr [ebp-8]
 00484732    add         eax,0C
 00484735    call        00401EA8
 0048473A    inc         dword ptr [ebp-20]
 0048473D    add         dword ptr [ebp-20],0FFFFFFFE
 00484741    mov         word ptr [ebp-2C],2C
 00484747    mov         edx,dword ptr [ebp-8]
>0048474A    jmp         0048474F
 0048474C    mov         edx,dword ptr [ebp-8]
 0048474F    mov         dword ptr [ebp-4C],edx
 00484752    mov         eax,dword ptr [ebp-44]
 00484755    mov         ecx,dword ptr [ebp-4C]
 00484758    mov         dword ptr [ecx],eax
 0048475A    mov         eax,dword ptr [ebp-48]
 0048475D    mov         edx,dword ptr [ebp-4C]
 00484760    mov         dword ptr [edx+4],eax
 00484763    lea         edx,[ebp+0C]
 00484766    mov         eax,dword ptr [ebp-4C]
 00484769    add         eax,8
 0048476C    call        0067DCD0
 00484771    lea         edx,[ebp+8]
 00484774    mov         eax,dword ptr [ebp-4C]
 00484777    add         eax,0C
 0048477A    call        0067DCD0
 0048477F    mov         ecx,dword ptr [ebp-40]
 00484782    mov         eax,dword ptr [ecx+14]
 00484785    mov         ecx,dword ptr [ebp-4C]
 00484788    mov         edx,dword ptr [ebp-50]
 0048478B    call        TList.Insert
 00484790    mov         eax,dword ptr [ebp-4C]
 00484793    push        eax
 00484794    dec         dword ptr [ebp-20]
 00484797    lea         eax,[ebp+8]
 0048479A    mov         edx,2
 0048479F    call        0067DCA0
 004847A4    dec         dword ptr [ebp-20]
 004847A7    lea         eax,[ebp+0C]
 004847AA    mov         edx,2
 004847AF    call        0067DCA0
 004847B4    pop         eax
 004847B5    mov         edx,dword ptr [ebp-3C]
 004847B8    mov         dword ptr fs:[0],edx
>004847BF    jmp         00484A70
 004847C4    mov         ecx,dword ptr [ebp-40]
 004847C7    mov         eax,dword ptr [ecx+14]
 004847CA    mov         edx,dword ptr [eax+8]
 004847CD    dec         edx
 004847CE    mov         dword ptr [ebp-54],edx
 004847D1    mov         word ptr [ebp-2C],8
 004847D7    mov         ecx,dword ptr [ebp-40]
 004847DA    mov         eax,dword ptr [ecx+14]
 004847DD    mov         edx,dword ptr [ebp-54]
 004847E0    call        TList.Get
 004847E5    mov         dword ptr [ebp-4C],eax
 004847E8    mov         ecx,dword ptr [ebp-44]
 004847EB    neg         ecx
 004847ED    mov         eax,dword ptr [ebp-4C]
 004847F0    mov         edx,dword ptr [eax]
 004847F2    neg         edx
 004847F4    cmp         ecx,edx
>004847F6    jle         004848B1
 004847FC    push        10
 004847FE    call        0066EAE4
 00484803    pop         ecx
 00484804    mov         dword ptr [ebp-0C],eax
 00484807    test        eax,eax
>00484809    je          0048483C
 0048480B    mov         word ptr [ebp-2C],50
 00484811    mov         eax,dword ptr [ebp-0C]
 00484814    add         eax,8
 00484817    call        00401EA8
 0048481C    inc         dword ptr [ebp-20]
 0048481F    mov         eax,dword ptr [ebp-0C]
 00484822    add         eax,0C
 00484825    call        00401EA8
 0048482A    inc         dword ptr [ebp-20]
 0048482D    add         dword ptr [ebp-20],0FFFFFFFE
 00484831    mov         word ptr [ebp-2C],44
 00484837    mov         edx,dword ptr [ebp-0C]
>0048483A    jmp         0048483F
 0048483C    mov         edx,dword ptr [ebp-0C]
 0048483F    mov         dword ptr [ebp-4C],edx
 00484842    mov         eax,dword ptr [ebp-44]
 00484845    mov         ecx,dword ptr [ebp-4C]
 00484848    mov         dword ptr [ecx],eax
 0048484A    mov         eax,dword ptr [ebp-48]
 0048484D    mov         edx,dword ptr [ebp-4C]
 00484850    mov         dword ptr [edx+4],eax
 00484853    lea         edx,[ebp+0C]
 00484856    mov         eax,dword ptr [ebp-4C]
 00484859    add         eax,8
 0048485C    call        0067DCD0
 00484861    lea         edx,[ebp+8]
 00484864    mov         eax,dword ptr [ebp-4C]
 00484867    add         eax,0C
 0048486A    call        0067DCD0
 0048486F    mov         ecx,dword ptr [ebp-40]
 00484872    mov         eax,dword ptr [ecx+14]
 00484875    mov         edx,dword ptr [ebp-4C]
 00484878    call        TList.Add
 0048487D    mov         eax,dword ptr [ebp-4C]
 00484880    push        eax
 00484881    dec         dword ptr [ebp-20]
 00484884    lea         eax,[ebp+8]
 00484887    mov         edx,2
 0048488C    call        0067DCA0
 00484891    dec         dword ptr [ebp-20]
 00484894    lea         eax,[ebp+0C]
 00484897    mov         edx,2
 0048489C    call        0067DCA0
 004848A1    pop         eax
 004848A2    mov         edx,dword ptr [ebp-3C]
 004848A5    mov         dword ptr fs:[0],edx
>004848AC    jmp         00484A70
 004848B1    mov         ecx,dword ptr [ebp-50]
 004848B4    mov         eax,dword ptr [ebp-54]
 004848B7    cmp         ecx,eax
>004848B9    jge         0048490D
 004848BB    mov         edx,dword ptr [ebp-50]
 004848BE    mov         ecx,dword ptr [ebp-54]
 004848C1    add         edx,ecx
 004848C3    sar         edx,1
>004848C5    jns         004848CA
 004848C7    adc         edx,0
 004848CA    mov         dword ptr [ebp-58],edx
 004848CD    mov         word ptr [ebp-2C],8
 004848D3    mov         eax,dword ptr [ebp-40]
 004848D6    mov         eax,dword ptr [eax+14]
 004848D9    mov         edx,dword ptr [ebp-58]
 004848DC    call        TList.Get
 004848E1    mov         dword ptr [ebp-4C],eax
 004848E4    mov         ecx,dword ptr [ebp-44]
 004848E7    neg         ecx
 004848E9    mov         eax,dword ptr [ebp-4C]
 004848EC    mov         edx,dword ptr [eax]
 004848EE    neg         edx
 004848F0    cmp         ecx,edx
>004848F2    jg          004848FC
 004848F4    mov         ecx,dword ptr [ebp-58]
 004848F7    mov         dword ptr [ebp-54],ecx
>004848FA    jmp         00484903
 004848FC    mov         eax,dword ptr [ebp-58]
 004848FF    inc         eax
 00484900    mov         dword ptr [ebp-50],eax
 00484903    mov         edx,dword ptr [ebp-50]
 00484906    mov         ecx,dword ptr [ebp-54]
 00484909    cmp         edx,ecx
>0048490B    jl          004848BB
 0048490D    mov         eax,dword ptr [ebp-40]
 00484910    mov         eax,dword ptr [eax+14]
 00484913    mov         edx,dword ptr [ebp-54]
 00484916    call        TList.Get
 0048491B    mov         dword ptr [ebp-4C],eax
 0048491E    mov         ecx,dword ptr [ebp-4C]
 00484921    mov         eax,dword ptr [ecx]
 00484923    mov         edx,dword ptr [ebp-44]
 00484926    cmp         eax,edx
>00484928    je          004849B7
 0048492E    push        10
 00484930    call        0066EAE4
 00484935    pop         ecx
 00484936    mov         dword ptr [ebp-10],eax
 00484939    test        eax,eax
>0048493B    je          0048496E
 0048493D    mov         word ptr [ebp-2C],68
 00484943    mov         eax,dword ptr [ebp-10]
 00484946    add         eax,8
 00484949    call        00401EA8
 0048494E    inc         dword ptr [ebp-20]
 00484951    mov         eax,dword ptr [ebp-10]
 00484954    add         eax,0C
 00484957    call        00401EA8
 0048495C    inc         dword ptr [ebp-20]
 0048495F    add         dword ptr [ebp-20],0FFFFFFFE
 00484963    mov         word ptr [ebp-2C],5C
 00484969    mov         edx,dword ptr [ebp-10]
>0048496C    jmp         00484971
 0048496E    mov         edx,dword ptr [ebp-10]
 00484971    mov         dword ptr [ebp-4C],edx
 00484974    mov         eax,dword ptr [ebp-44]
 00484977    mov         ecx,dword ptr [ebp-4C]
 0048497A    mov         dword ptr [ecx],eax
 0048497C    mov         eax,dword ptr [ebp-48]
 0048497F    mov         edx,dword ptr [ebp-4C]
 00484982    mov         dword ptr [edx+4],eax
 00484985    lea         edx,[ebp+0C]
 00484988    mov         eax,dword ptr [ebp-4C]
 0048498B    add         eax,8
 0048498E    call        0067DCD0
 00484993    lea         edx,[ebp+8]
 00484996    mov         eax,dword ptr [ebp-4C]
 00484999    add         eax,0C
 0048499C    call        0067DCD0
 004849A1    mov         ecx,dword ptr [ebp-40]
 004849A4    mov         eax,dword ptr [ecx+14]
 004849A7    mov         ecx,dword ptr [ebp-4C]
 004849AA    mov         edx,dword ptr [ebp-54]
 004849AD    call        TList.Insert
>004849B2    jmp         00484A41
 004849B7    mov         word ptr [ebp-2C],74
 004849BD    mov         edx,6B51F4
 004849C2    lea         eax,[ebp-14]
 004849C5    call        0067DAB4
 004849CA    inc         dword ptr [ebp-20]
 004849CD    lea         edx,[ebp-14]
 004849D0    lea         eax,[ebp+0C]
 004849D3    call        0067DD9C
 004849D8    push        eax
 004849D9    dec         dword ptr [ebp-20]
 004849DC    lea         eax,[ebp-14]
 004849DF    mov         edx,2
 004849E4    call        0067DCA0
 004849E9    pop         ecx
 004849EA    test        cl,cl
>004849EC    je          004849FC
 004849EE    lea         edx,[ebp+0C]
 004849F1    mov         eax,dword ptr [ebp-4C]
 004849F4    add         eax,8
 004849F7    call        0067DCD0
 004849FC    mov         word ptr [ebp-2C],80
 00484A02    mov         edx,6B51F5
 00484A07    lea         eax,[ebp-18]
 00484A0A    call        0067DAB4
 00484A0F    inc         dword ptr [ebp-20]
 00484A12    lea         edx,[ebp-18]
 00484A15    lea         eax,[ebp+8]
 00484A18    call        0067DD9C
 00484A1D    push        eax
 00484A1E    dec         dword ptr [ebp-20]
 00484A21    lea         eax,[ebp-18]
 00484A24    mov         edx,2
 00484A29    call        0067DCA0
 00484A2E    pop         ecx
 00484A2F    test        cl,cl
>00484A31    je          00484A41
 00484A33    lea         edx,[ebp+8]
 00484A36    mov         eax,dword ptr [ebp-4C]
 00484A39    add         eax,0C
 00484A3C    call        0067DCD0
 00484A41    mov         eax,dword ptr [ebp-4C]
 00484A44    push        eax
 00484A45    dec         dword ptr [ebp-20]
 00484A48    lea         eax,[ebp+8]
 00484A4B    mov         edx,2
 00484A50    call        0067DCA0
 00484A55    dec         dword ptr [ebp-20]
 00484A58    lea         eax,[ebp+0C]
 00484A5B    mov         edx,2
 00484A60    call        0067DCA0
 00484A65    pop         eax
 00484A66    mov         edx,dword ptr [ebp-3C]
 00484A69    mov         dword ptr fs:[0],edx
 00484A70    mov         esp,ebp
 00484A72    pop         ebp
 00484A73    ret         8
end;*}

//00484A78
{*function sub_00484A78(?:?; ?:?):?;
begin
 00484A78    push        ebp
 00484A79    mov         ebp,esp
 00484A7B    add         esp,0FFFFFFF0
 00484A7E    mov         dword ptr [ebp-8],edx
 00484A81    mov         dword ptr [ebp-4],eax
 00484A84    mov         eax,dword ptr [ebp-4]
 00484A87    mov         edx,dword ptr [eax+14]
 00484A8A    test        edx,edx
>00484A8C    je          00484ACA
 00484A8E    xor         ecx,ecx
 00484A90    mov         dword ptr [ebp-0C],ecx
>00484A93    jmp         00484ABA
 00484A95    mov         edx,dword ptr [ebp-0C]
 00484A98    mov         eax,dword ptr [ebp-4]
 00484A9B    mov         eax,dword ptr [eax+14]
 00484A9E    call        TList.Get
 00484AA3    mov         dword ptr [ebp-10],eax
 00484AA6    mov         edx,dword ptr [ebp-10]
 00484AA9    mov         ecx,dword ptr [edx]
 00484AAB    mov         eax,dword ptr [ebp-8]
 00484AAE    cmp         ecx,eax
>00484AB0    jne         00484AB7
 00484AB2    mov         eax,dword ptr [ebp-10]
>00484AB5    jmp         00484ACC
 00484AB7    inc         dword ptr [ebp-0C]
 00484ABA    mov         edx,dword ptr [ebp-4]
 00484ABD    mov         ecx,dword ptr [edx+14]
 00484AC0    mov         eax,dword ptr [ecx+8]
 00484AC3    mov         edx,dword ptr [ebp-0C]
 00484AC6    cmp         eax,edx
>00484AC8    jg          00484A95
 00484ACA    xor         eax,eax
 00484ACC    mov         esp,ebp
 00484ACE    pop         ebp
 00484ACF    ret
end;*}

//00484AD0
{*function sub_00484AD0(?:?; ?:?):?;
begin
 00484AD0    push        ebp
 00484AD1    mov         ebp,esp
 00484AD3    add         esp,0FFFFFFCC
 00484AD6    mov         dword ptr [ebp-4],edx
 00484AD9    mov         dword ptr [ebp-2C],eax
 00484ADC    mov         eax,6B6F04
 00484AE1    call        0066FECC
 00484AE6    mov         dword ptr [ebp-0C],1
 00484AED    lea         edx,[ebp-4]
 00484AF0    lea         eax,[ebp-4]
 00484AF3    call        0067DAEC
 00484AF8    inc         dword ptr [ebp-0C]
 00484AFB    mov         word ptr [ebp-18],8
 00484B01    mov         edx,dword ptr [ebp-2C]
 00484B04    mov         ecx,dword ptr [edx+14]
 00484B07    test        ecx,ecx
>00484B09    je          00484B6F
 00484B0B    xor         eax,eax
 00484B0D    mov         dword ptr [ebp-30],eax
>00484B10    jmp         00484B5F
 00484B12    mov         edx,dword ptr [ebp-30]
 00484B15    mov         ecx,dword ptr [ebp-2C]
 00484B18    mov         eax,dword ptr [ecx+14]
 00484B1B    call        TList.Get
 00484B20    mov         dword ptr [ebp-34],eax
 00484B23    mov         word ptr [ebp-18],8
 00484B29    mov         edx,dword ptr [ebp-34]
 00484B2C    mov         eax,dword ptr [edx+8]
 00484B2F    mov         edx,dword ptr [ebp-4]
 00484B32    call        SameText
 00484B37    test        al,al
>00484B39    je          00484B5C
 00484B3B    mov         eax,dword ptr [ebp-34]
 00484B3E    push        eax
 00484B3F    dec         dword ptr [ebp-0C]
 00484B42    lea         eax,[ebp-4]
 00484B45    mov         edx,2
 00484B4A    call        0067DCA0
 00484B4F    pop         eax
 00484B50    mov         edx,dword ptr [ebp-28]
 00484B53    mov         dword ptr fs:[0],edx
>00484B5A    jmp         00484B8D
 00484B5C    inc         dword ptr [ebp-30]
 00484B5F    mov         ecx,dword ptr [ebp-2C]
 00484B62    mov         eax,dword ptr [ecx+14]
 00484B65    mov         edx,dword ptr [eax+8]
 00484B68    mov         ecx,dword ptr [ebp-30]
 00484B6B    cmp         edx,ecx
>00484B6D    jg          00484B12
 00484B6F    xor         eax,eax
 00484B71    push        eax
 00484B72    dec         dword ptr [ebp-0C]
 00484B75    lea         eax,[ebp-4]
 00484B78    mov         edx,2
 00484B7D    call        0067DCA0
 00484B82    pop         eax
 00484B83    mov         edx,dword ptr [ebp-28]
 00484B86    mov         dword ptr fs:[0],edx
 00484B8D    mov         esp,ebp
 00484B8F    pop         ebp
 00484B90    ret
end;*}

//00484B94
{*procedure sub_00484B94(?:?; ?:?);
begin
 00484B94    push        ebp
 00484B95    mov         ebp,esp
 00484B97    add         esp,0FFFFFFF8
 00484B9A    mov         dword ptr [ebp-8],edx
 00484B9D    mov         dword ptr [ebp-4],eax
 00484BA0    mov         eax,dword ptr [ebp-4]
 00484BA3    mov         edx,dword ptr [eax+14]
 00484BA6    test        edx,edx
>00484BA8    je          00484BCF
 00484BAA    mov         ecx,dword ptr [ebp-8]
 00484BAD    test        ecx,ecx
>00484BAF    jl          00484BCF
 00484BB1    mov         eax,dword ptr [ebp-4]
 00484BB4    mov         edx,dword ptr [eax+14]
 00484BB7    mov         ecx,dword ptr [edx+8]
 00484BBA    mov         eax,dword ptr [ebp-8]
 00484BBD    cmp         ecx,eax
>00484BBF    jle         00484BCF
 00484BC1    mov         edx,dword ptr [ebp-8]
 00484BC4    mov         ecx,dword ptr [ebp-4]
 00484BC7    mov         eax,dword ptr [ecx+14]
 00484BCA    call        TList.Delete
 00484BCF    pop         ecx
 00484BD0    pop         ecx
 00484BD1    pop         ebp
 00484BD2    ret
end;*}

//00484BD4
{*procedure sub_00484BD4(?:?);
begin
 00484BD4    push        ebp
 00484BD5    mov         ebp,esp
 00484BD7    add         esp,0FFFFFFF8
 00484BDA    mov         dword ptr [ebp-4],eax
 00484BDD    mov         eax,dword ptr [ebp-4]
 00484BE0    mov         edx,dword ptr [eax+14]
 00484BE3    test        edx,edx
>00484BE5    je          00484C1A
 00484BE7    xor         ecx,ecx
 00484BE9    mov         dword ptr [ebp-8],ecx
>00484BEC    jmp         00484BFF
 00484BEE    mov         edx,dword ptr [ebp-8]
 00484BF1    mov         eax,dword ptr [ebp-4]
 00484BF4    mov         eax,dword ptr [eax+14]
 00484BF7    call        TList.Delete
 00484BFC    inc         dword ptr [ebp-8]
 00484BFF    mov         edx,dword ptr [ebp-4]
 00484C02    mov         ecx,dword ptr [edx+14]
 00484C05    mov         eax,dword ptr [ecx+8]
 00484C08    mov         edx,dword ptr [ebp-8]
 00484C0B    cmp         eax,edx
>00484C0D    jg          00484BEE
 00484C0F    mov         ecx,dword ptr [ebp-4]
 00484C12    mov         eax,dword ptr [ecx+14]
 00484C15    mov         edx,dword ptr [eax]
 00484C17    call        dword ptr [edx+8]
 00484C1A    pop         ecx
 00484C1B    pop         ecx
 00484C1C    pop         ebp
 00484C1D    ret
end;*}

//00484C20
{*procedure sub_00484C20(?:?; ?:Pointer; ?:AnsiString);
begin
 00484C20    push        ebp
 00484C21    mov         ebp,esp
 00484C23    add         esp,0FFFFFF14
 00484C29    mov         dword ptr [ebp-4],ecx
 00484C2C    mov         dword ptr [ebp-0C0],edx
 00484C32    mov         dword ptr [ebp-0BC],eax
 00484C38    mov         eax,6B7114
 00484C3D    call        0066FECC
 00484C42    mov         dword ptr [ebp-9C],1
 00484C4C    lea         edx,[ebp-4]
 00484C4F    lea         eax,[ebp-4]
 00484C52    call        0067DAEC
 00484C57    inc         dword ptr [ebp-9C]
 00484C5D    mov         word ptr [ebp-0A8],8
 00484C66    mov         edx,dword ptr [ebp-0C0]
 00484C6C    mov         eax,dword ptr [ebp-0BC]
 00484C72    call        00484A78
 00484C77    mov         dword ptr [ebp-0C4],eax
 00484C7D    mov         edx,dword ptr [ebp-0C4]
 00484C83    test        edx,edx
>00484C85    je          0048552C
 00484C8B    mov         word ptr [ebp-0A8],20
 00484C94    mov         edx,dword ptr [ebp-0C4]
 00484C9A    add         edx,8
 00484C9D    lea         eax,[ebp-8]
 00484CA0    call        0067DAEC
 00484CA5    inc         dword ptr [ebp-9C]
 00484CAB    mov         word ptr [ebp-0A8],14
 00484CB4    mov         word ptr [ebp-0A8],2C
 00484CBD    mov         edx,6B51F6
 00484CC2    lea         eax,[ebp-0C]
 00484CC5    call        0067DAB4
 00484CCA    inc         dword ptr [ebp-9C]
 00484CD0    lea         edx,[ebp-0C]
 00484CD3    lea         eax,[ebp-8]
 00484CD6    call        0067DEF4
 00484CDB    mov         dword ptr [ebp-0C8],eax
 00484CE1    dec         dword ptr [ebp-9C]
 00484CE7    lea         eax,[ebp-0C]
 00484CEA    mov         edx,2
 00484CEF    call        0067DCA0
 00484CF4    mov         word ptr [ebp-0A8],14
 00484CFD    mov         ecx,dword ptr [ebp-0C8]
 00484D03    test        ecx,ecx
>00484D05    je          00484D51
 00484D07    mov         word ptr [ebp-0A8],38
 00484D10    lea         eax,[ebp-10]
 00484D13    call        00401EA8
 00484D18    push        eax
 00484D19    inc         dword ptr [ebp-9C]
 00484D1F    mov         ecx,dword ptr [ebp-0C8]
 00484D25    dec         ecx
 00484D26    lea         eax,[ebp-8]
 00484D29    mov         edx,1
 00484D2E    call        0067E0BC
 00484D33    lea         edx,[ebp-10]
 00484D36    lea         eax,[ebp-8]
 00484D39    call        0067DCD0
 00484D3E    dec         dword ptr [ebp-9C]
 00484D44    lea         eax,[ebp-10]
 00484D47    mov         edx,2
 00484D4C    call        0067DCA0
 00484D51    lea         edx,[ebp-4]
 00484D54    mov         eax,dword ptr [ebp-0C4]
 00484D5A    add         eax,0C
 00484D5D    call        0067DCD0
 00484D62    mov         word ptr [ebp-0A8],44
 00484D6B    mov         edx,6B51F8
 00484D70    lea         eax,[ebp-14]
 00484D73    call        0067DAB4
 00484D78    inc         dword ptr [ebp-9C]
 00484D7E    lea         edx,[ebp-14]
 00484D81    lea         eax,[ebp-4]
 00484D84    call        0067DD9C
 00484D89    test        al,al
>00484D8B    je          00484D9F
 00484D8D    lea         edx,[ebp-0CC]
 00484D93    mov         eax,dword ptr [ebp-4]
 00484D96    call        00537754
 00484D9B    cmp         al,0E
>00484D9D    je          00484DA3
 00484D9F    xor         ecx,ecx
>00484DA1    jmp         00484DA8
 00484DA3    mov         ecx,1
 00484DA8    push        ecx
 00484DA9    dec         dword ptr [ebp-9C]
 00484DAF    lea         eax,[ebp-14]
 00484DB2    mov         edx,2
 00484DB7    call        0067DCA0
 00484DBC    pop         ecx
 00484DBD    test        cl,cl
>00484DBF    je          00485510
 00484DC5    mov         word ptr [ebp-0A8],5C
 00484DCE    lea         eax,[ebp-18]
 00484DD1    call        00401EA8
 00484DD6    push        eax
 00484DD7    inc         dword ptr [ebp-9C]
 00484DDD    mov         edx,6B51F9
 00484DE2    lea         eax,[ebp-1C]
 00484DE5    call        0067DAB4
 00484DEA    inc         dword ptr [ebp-9C]
 00484DF0    lea         edx,[ebp-1C]
 00484DF3    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 00484DF9    mov         eax,dword ptr [ecx]
 00484DFB    add         eax,62D
 00484E00    pop         ecx
 00484E01    call        0067DCF8
 00484E06    dec         dword ptr [ebp-9C]
 00484E0C    lea         eax,[ebp-1C]
 00484E0F    mov         edx,2
 00484E14    call        0067DCA0
 00484E19    mov         word ptr [ebp-0A8],50
 00484E22    push        6B5204
 00484E27    lea         eax,[ebp-18]
 00484E2A    call        00403C0C
 00484E2F    push        eax
 00484E30    call        00671CC0
 00484E35    add         esp,8
 00484E38    mov         dword ptr [ebp-0D0],eax
 00484E3E    mov         edx,dword ptr [ebp-0D0]
 00484E44    test        edx,edx
>00484E46    je          00485178
 00484E4C    push        dword ptr [ebp-0D0]
 00484E52    push        400
 00484E57    push        6EA3A0;gvar_006EA3A0
 00484E5C    call        00671948
 00484E61    add         esp,0C
 00484E64    test        eax,eax
>00484E66    je          0048516C
 00484E6C    mov         word ptr [ebp-0A8],74
 00484E75    mov         edx,6EA3A0;gvar_006EA3A0
 00484E7A    lea         eax,[ebp-20]
 00484E7D    call        0067DAB4
 00484E82    inc         dword ptr [ebp-9C]
 00484E88    mov         word ptr [ebp-0A8],68
 00484E91    mov         word ptr [ebp-0A8],80
 00484E9A    lea         eax,[ebp-28]
 00484E9D    call        00401EA8
 00484EA2    push        eax
 00484EA3    inc         dword ptr [ebp-9C]
 00484EA9    mov         edx,6B5207
 00484EAE    lea         eax,[ebp-24]
 00484EB1    call        0067DAB4
 00484EB6    inc         dword ptr [ebp-9C]
 00484EBC    lea         edx,[ebp-24]
 00484EBF    lea         eax,[ebp-4]
 00484EC2    pop         ecx
 00484EC3    call        0067DCF8
 00484EC8    lea         edx,[ebp-28]
 00484ECB    lea         eax,[ebp-20]
 00484ECE    call        0067DEF4
 00484ED3    dec         eax
 00484ED4    sete        dl
 00484ED7    and         edx,1
 00484EDA    push        edx
 00484EDB    dec         dword ptr [ebp-9C]
 00484EE1    lea         eax,[ebp-28]
 00484EE4    mov         edx,2
 00484EE9    call        0067DCA0
 00484EEE    dec         dword ptr [ebp-9C]
 00484EF4    lea         eax,[ebp-24]
 00484EF7    mov         edx,2
 00484EFC    call        0067DCA0
 00484F01    pop         ecx
 00484F02    test        cl,cl
>00484F04    je          0048514B
 00484F0A    push        dword ptr [ebp-0D0]
 00484F10    push        400
 00484F15    push        6EA3A0;gvar_006EA3A0
 00484F1A    call        00671948
 00484F1F    add         esp,0C
 00484F22    test        eax,eax
>00484F24    je          0048514B
 00484F2A    mov         word ptr [ebp-0A8],8C
 00484F33    mov         edx,6EA3A0;gvar_006EA3A0
 00484F38    lea         eax,[ebp-2C]
 00484F3B    call        0067DAB4
 00484F40    mov         edx,eax
 00484F42    inc         dword ptr [ebp-9C]
 00484F48    lea         eax,[ebp-20]
 00484F4B    call        0067DCD0
 00484F50    dec         dword ptr [ebp-9C]
 00484F56    lea         eax,[ebp-2C]
 00484F59    mov         edx,2
 00484F5E    call        0067DCA0
 00484F63    mov         word ptr [ebp-0A8],98
 00484F6C    mov         edx,6B5209
 00484F71    lea         eax,[ebp-30]
 00484F74    call        0067DAB4
 00484F79    inc         dword ptr [ebp-9C]
 00484F7F    lea         edx,[ebp-30]
 00484F82    lea         eax,[ebp-20]
 00484F85    call        0067DEF4
 00484F8A    push        eax
 00484F8B    dec         dword ptr [ebp-9C]
 00484F91    lea         eax,[ebp-30]
 00484F94    mov         edx,2
 00484F99    call        0067DCA0
 00484F9E    pop         ecx
 00484F9F    test        ecx,ecx
>00484FA1    jne         0048514B
 00484FA7    mov         word ptr [ebp-0A8],0A4
 00484FB0    mov         edx,6B520E
 00484FB5    lea         eax,[ebp-34]
 00484FB8    call        0067DAB4
 00484FBD    inc         dword ptr [ebp-9C]
 00484FC3    lea         edx,[ebp-34]
 00484FC6    lea         eax,[ebp-20]
 00484FC9    call        0067DEF4
 00484FCE    push        eax
 00484FCF    dec         dword ptr [ebp-9C]
 00484FD5    lea         eax,[ebp-34]
 00484FD8    mov         edx,2
 00484FDD    call        0067DCA0
 00484FE2    pop         ecx
 00484FE3    test        ecx,ecx
>00484FE5    je          00484F0A
 00484FEB    mov         eax,dword ptr [ebp-20]
 00484FEE    call        00532F88
 00484FF3    mov         dword ptr [ebp-0D4],eax
 00484FF9    mov         word ptr [ebp-0A8],68
 00485002    mov         word ptr [ebp-0A8],0BC
 0048500B    lea         eax,[ebp-38]
 0048500E    call        00401EA8
 00485013    mov         edx,eax
 00485015    inc         dword ptr [ebp-9C]
 0048501B    mov         eax,dword ptr [ebp-20]
 0048501E    call        005330F0
 00485023    mov         word ptr [ebp-0A8],0B0
 0048502C    mov         word ptr [ebp-0A8],0C8
 00485035    lea         eax,[ebp-3C]
 00485038    call        00401EA8
 0048503D    mov         edx,eax
 0048503F    inc         dword ptr [ebp-9C]
 00485045    mov         eax,dword ptr [ebp-20]
 00485048    call        00533210
 0048504D    mov         word ptr [ebp-0A8],0B0
 00485056    mov         edx,dword ptr [ebp-0D4]
 0048505C    test        edx,edx
>0048505E    jl          00485117
 00485064    mov         word ptr [ebp-0A8],0D4
 0048506D    lea         eax,[ebp-44]
 00485070    call        00401EA8
 00485075    push        eax
 00485076    inc         dword ptr [ebp-9C]
 0048507C    mov         edx,6B5211
 00485081    lea         eax,[ebp-40]
 00485084    call        0067DAB4
 00485089    inc         dword ptr [ebp-9C]
 0048508F    lea         edx,[ebp-40]
 00485092    lea         eax,[ebp-8]
 00485095    pop         ecx
 00485096    call        0067DCF8
 0048509B    lea         edx,[ebp-44]
 0048509E    push        edx
 0048509F    lea         eax,[ebp-48]
 004850A2    call        00401EA8
 004850A7    mov         ecx,eax
 004850A9    inc         dword ptr [ebp-9C]
 004850AF    lea         edx,[ebp-38]
 004850B2    pop         eax
 004850B3    call        0067DCF8
 004850B8    lea         edx,[ebp-48]
 004850BB    push        dword ptr [edx]
 004850BD    push        dword ptr [ebp-3C]
 004850C0    mov         edx,dword ptr [ebp-0D4]
 004850C6    mov         eax,dword ptr [ebp-0C0]
 004850CC    add         edx,eax
 004850CE    mov         ecx,1
 004850D3    mov         eax,dword ptr [ebp-0BC]
 004850D9    call        004845B8
 004850DE    dec         dword ptr [ebp-9C]
 004850E4    lea         eax,[ebp-48]
 004850E7    mov         edx,2
 004850EC    call        0067DCA0
 004850F1    dec         dword ptr [ebp-9C]
 004850F7    lea         eax,[ebp-44]
 004850FA    mov         edx,2
 004850FF    call        0067DCA0
 00485104    dec         dword ptr [ebp-9C]
 0048510A    lea         eax,[ebp-40]
 0048510D    mov         edx,2
 00485112    call        0067DCA0
 00485117    dec         dword ptr [ebp-9C]
 0048511D    lea         eax,[ebp-3C]
 00485120    mov         edx,2
 00485125    call        0067DCA0
 0048512A    dec         dword ptr [ebp-9C]
 00485130    lea         eax,[ebp-38]
 00485133    mov         edx,2
 00485138    call        0067DCA0
 0048513D    mov         word ptr [ebp-0A8],68
>00485146    jmp         00484F0A
 0048514B    dec         dword ptr [ebp-9C]
 00485151    lea         eax,[ebp-20]
 00485154    mov         edx,2
 00485159    call        0067DCA0
 0048515E    mov         word ptr [ebp-0A8],50
>00485167    jmp         00484E4C
 0048516C    push        dword ptr [ebp-0D0]
 00485172    call        00671818
 00485177    pop         ecx
 00485178    lea         eax,[ebp-4]
 0048517B    call        00403C0C
 00485180    mov         edx,eax
 00485182    mov         eax,6ECAB4
 00485187    call        00472C40
 0048518C    mov         dword ptr [ebp-0D8],eax
 00485192    mov         word ptr [ebp-0A8],50
 0048519B    lea         eax,[ebp-4]
 0048519E    call        00403C0C
 004851A3    mov         ecx,eax
 004851A5    mov         eax,6ECAB4
 004851AA    mov         edx,dword ptr [ebp-0D8]
 004851B0    call        004701C8
 004851B5    mov         dword ptr [ebp-0DC],eax
 004851BB    mov         ecx,dword ptr [ebp-0D8]
 004851C1    test        ecx,ecx
>004851C3    je          004851D1
 004851C5    push        dword ptr [ebp-0D8]
 004851CB    call        0066EAC0
 004851D0    pop         ecx
 004851D1    mov         eax,dword ptr [ebp-0DC]
 004851D7    inc         eax
>004851D8    je          004854F4
 004851DE    mov         edx,dword ptr [ebp-0DC]
 004851E4    shl         edx,4
 004851E7    mov         ecx,dword ptr ds:[6ECACC];0x0 gvar_006ECACC
 004851ED    mov         eax,dword ptr [ecx+edx+0C]
 004851F1    mov         dword ptr [ebp-0DC],eax
 004851F7    mov         word ptr [ebp-0A8],0E0
 00485200    lea         eax,[ebp-78]
 00485203    call        0046DFF0
 00485208    add         dword ptr [ebp-9C],3
 0048520F    mov         word ptr [ebp-0A8],0EC
 00485218    lea         edx,[ebp-78]
 0048521B    push        edx
 0048521C    mov         eax,6ECAB4
 00485221    mov         ecx,8
 00485226    mov         edx,dword ptr [ebp-0DC]
 0048522C    call        00472158
 00485231    test        eax,eax
>00485233    je          004854D2
 00485239    cmp         word ptr [ebp-5B],0
>0048523E    je          0048547E
 00485244    mov         eax,dword ptr [ebp-59]
 00485247    mov         dword ptr [ebp-0E0],eax
 0048524D    xor         edx,edx
 0048524F    mov         dword ptr [ebp-0E4],edx
>00485255    jmp         00485456
 0048525A    inc         dword ptr [ebp-0E0]
 00485260    mov         ecx,dword ptr [ebp-0E0]
 00485266    mov         eax,dword ptr [ecx]
 00485268    mov         dword ptr [ebp-0E8],eax
 0048526E    mov         word ptr [ebp-0A8],0EC
 00485277    add         dword ptr [ebp-0E0],4
 0048527E    add         dword ptr [ebp-0E0],4
 00485285    mov         edx,dword ptr [ebp-0E0]
 0048528B    movzx       ecx,word ptr [edx]
 0048528E    mov         dword ptr [ebp-0EC],ecx
 00485294    add         dword ptr [ebp-0E0],2
 0048529B    mov         word ptr [ebp-0A8],104
 004852A4    lea         eax,[ebp-7C]
 004852A7    mov         ecx,dword ptr [ebp-0EC]
 004852AD    mov         edx,dword ptr [ebp-0E0]
 004852B3    call        0067DB28
 004852B8    inc         dword ptr [ebp-9C]
 004852BE    mov         word ptr [ebp-0A8],0F8
 004852C7    mov         eax,dword ptr [ebp-0EC]
 004852CD    inc         eax
 004852CE    add         dword ptr [ebp-0E0],eax
 004852D4    mov         edx,dword ptr [ebp-0E0]
 004852DA    movzx       ecx,word ptr [edx]
 004852DD    mov         dword ptr [ebp-0EC],ecx
 004852E3    add         dword ptr [ebp-0E0],2
 004852EA    mov         word ptr [ebp-0A8],110
 004852F3    lea         eax,[ebp-84]
 004852F9    mov         ecx,dword ptr [ebp-0EC]
 004852FF    mov         edx,dword ptr [ebp-0E0]
 00485305    call        0067DB28
 0048530A    push        eax
 0048530B    inc         dword ptr [ebp-9C]
 00485311    lea         eax,[ebp-80]
 00485314    call        00401EA8
 00485319    mov         edx,eax
 0048531B    inc         dword ptr [ebp-9C]
 00485321    pop         eax
 00485322    call        00531D20
 00485327    dec         dword ptr [ebp-9C]
 0048532D    lea         eax,[ebp-84]
 00485333    mov         edx,2
 00485338    call        0067DCA0
 0048533D    mov         word ptr [ebp-0A8],0F8
 00485346    mov         ecx,dword ptr [ebp-0EC]
 0048534C    inc         ecx
 0048534D    add         dword ptr [ebp-0E0],ecx
 00485353    mov         word ptr [ebp-0A8],11C
 0048535C    lea         eax,[ebp-8C]
 00485362    call        00401EA8
 00485367    push        eax
 00485368    inc         dword ptr [ebp-9C]
 0048536E    mov         edx,6B5213
 00485373    lea         eax,[ebp-88]
 00485379    call        0067DAB4
 0048537E    inc         dword ptr [ebp-9C]
 00485384    lea         edx,[ebp-88]
 0048538A    lea         eax,[ebp-8]
 0048538D    pop         ecx
 0048538E    call        0067DCF8
 00485393    lea         edx,[ebp-8C]
 00485399    push        edx
 0048539A    lea         eax,[ebp-90]
 004853A0    call        00401EA8
 004853A5    mov         ecx,eax
 004853A7    inc         dword ptr [ebp-9C]
 004853AD    lea         edx,[ebp-7C]
 004853B0    pop         eax
 004853B1    call        0067DCF8
 004853B6    lea         edx,[ebp-90]
 004853BC    push        dword ptr [edx]
 004853BE    push        dword ptr [ebp-80]
 004853C1    mov         edx,dword ptr [ebp-0C0]
 004853C7    mov         eax,dword ptr [ebp-0E8]
 004853CD    add         edx,eax
 004853CF    mov         ecx,1
 004853D4    mov         eax,dword ptr [ebp-0BC]
 004853DA    call        004845B8
 004853DF    dec         dword ptr [ebp-9C]
 004853E5    lea         eax,[ebp-90]
 004853EB    mov         edx,2
 004853F0    call        0067DCA0
 004853F5    dec         dword ptr [ebp-9C]
 004853FB    lea         eax,[ebp-8C]
 00485401    mov         edx,2
 00485406    call        0067DCA0
 0048540B    dec         dword ptr [ebp-9C]
 00485411    lea         eax,[ebp-88]
 00485417    mov         edx,2
 0048541C    call        0067DCA0
 00485421    dec         dword ptr [ebp-9C]
 00485427    lea         eax,[ebp-80]
 0048542A    mov         edx,2
 0048542F    call        0067DCA0
 00485434    dec         dword ptr [ebp-9C]
 0048543A    lea         eax,[ebp-7C]
 0048543D    mov         edx,2
 00485442    call        0067DCA0
 00485447    mov         word ptr [ebp-0A8],0EC
 00485450    inc         dword ptr [ebp-0E4]
 00485456    movzx       ecx,word ptr [ebp-5B]
 0048545A    mov         eax,dword ptr [ebp-0E4]
 00485460    cmp         ecx,eax
>00485462    jg          0048525A
 00485468    sub         dword ptr [ebp-9C],3
 0048546F    lea         eax,[ebp-78]
 00485472    mov         edx,2
 00485477    call        0046E124
>0048547C    jmp         004854F4
 0048547E    mov         word ptr [ebp-0A8],128
 00485487    mov         edx,6B5215
 0048548C    lea         eax,[ebp-94]
 00485492    call        0067DAB4
 00485497    inc         dword ptr [ebp-9C]
 0048549D    lea         edx,[ebp-94]
 004854A3    lea         eax,[ebp-6B]
 004854A6    call        0067DD9C
 004854AB    push        eax
 004854AC    dec         dword ptr [ebp-9C]
 004854B2    lea         eax,[ebp-94]
 004854B8    mov         edx,2
 004854BD    call        0067DCA0
 004854C2    pop         ecx
 004854C3    test        cl,cl
>004854C5    je          004854D2
 004854C7    lea         edx,[ebp-6B]
 004854CA    lea         eax,[ebp-4]
 004854CD    call        0067DCD0
 004854D2    sub         dword ptr [ebp-9C],3
 004854D9    lea         eax,[ebp-78]
 004854DC    mov         edx,2
 004854E1    call        0046E124
 004854E6    mov         word ptr [ebp-0A8],50
>004854EF    jmp         00485178
 004854F4    dec         dword ptr [ebp-9C]
 004854FA    lea         eax,[ebp-18]
 004854FD    mov         edx,2
 00485502    call        0067DCA0
 00485507    mov         word ptr [ebp-0A8],14
 00485510    dec         dword ptr [ebp-9C]
 00485516    lea         eax,[ebp-8]
 00485519    mov         edx,2
 0048551E    call        0067DCA0
 00485523    mov         word ptr [ebp-0A8],8
 0048552C    dec         dword ptr [ebp-9C]
 00485532    lea         eax,[ebp-4]
 00485535    mov         edx,2
 0048553A    call        0067DCA0
 0048553F    mov         ecx,dword ptr [ebp-0B8]
 00485545    mov         dword ptr fs:[0],ecx
 0048554C    mov         esp,ebp
 0048554E    pop         ebp
 0048554F    ret
end;*}

//00485550
{*function sub_00485550(?:?; ?:?; ?:?):?;
begin
 00485550    push        ebp
 00485551    mov         ebp,esp
 00485553    add         esp,0FFFFFFBC
 00485556    mov         byte ptr [ebp-41],cl
 00485559    mov         dword ptr [ebp-40],edx
 0048555C    mov         dword ptr [ebp-4],eax
 0048555F    mov         eax,6B72A8
 00485564    call        0066FECC
 00485569    mov         word ptr [ebp-2C],8
 0048556F    mov         edx,6BC178
 00485574    mov         ecx,dword ptr [ebp-4]
 00485577    mov         dword ptr [ecx],edx
 00485579    mov         eax,dword ptr [ebp-4]
 0048557C    add         eax,0A
 0048557F    call        00401EA8
 00485584    inc         dword ptr [ebp-20]
 00485587    mov         eax,dword ptr [ebp-4]
 0048558A    add         eax,22
 0048558D    call        00401EA8
 00485592    inc         dword ptr [ebp-20]
 00485595    mov         edx,dword ptr [ebp-4]
 00485598    mov         byte ptr [edx+4],0
 0048559C    mov         ecx,dword ptr [ebp-4]
 0048559F    mov         al,byte ptr [ebp-41]
 004855A2    mov         byte ptr [ecx+5],al
 004855A5    mov         edx,dword ptr [ebp-4]
 004855A8    mov         dword ptr [edx+6],0FFFFFFFF
 004855AF    mov         word ptr [ebp-2C],14
 004855B5    mov         edx,6B5216
 004855BA    lea         eax,[ebp-8]
 004855BD    call        0067DAB4
 004855C2    inc         dword ptr [ebp-20]
 004855C5    lea         edx,[ebp-8]
 004855C8    mov         eax,dword ptr [ebp-4]
 004855CB    add         eax,22
 004855CE    call        0067DCD0
 004855D3    dec         dword ptr [ebp-20]
 004855D6    lea         eax,[ebp-8]
 004855D9    mov         edx,2
 004855DE    call        0067DCA0
 004855E3    mov         word ptr [ebp-2C],20
 004855E9    mov         edx,6B5217
 004855EE    lea         eax,[ebp-0C]
 004855F1    call        0067DAB4
 004855F6    inc         dword ptr [ebp-20]
 004855F9    lea         edx,[ebp-0C]
 004855FC    mov         eax,dword ptr [ebp-4]
 004855FF    add         eax,0A
 00485602    call        0067DCD0
 00485607    dec         dword ptr [ebp-20]
 0048560A    lea         eax,[ebp-0C]
 0048560D    mov         edx,2
 00485612    call        0067DCA0
 00485617    mov         ecx,dword ptr [ebp-4]
 0048561A    xor         eax,eax
 0048561C    mov         dword ptr [ecx+0E],eax
 0048561F    mov         edx,dword ptr [ebp-4]
 00485622    xor         ecx,ecx
 00485624    mov         dword ptr [edx+12],ecx
 00485627    mov         eax,dword ptr [ebp-4]
 0048562A    xor         edx,edx
 0048562C    mov         dword ptr [eax+16],edx
 0048562F    mov         ecx,dword ptr [ebp-4]
 00485632    xor         eax,eax
 00485634    mov         dword ptr [ecx+1A],eax
 00485637    mov         edx,dword ptr [ebp-4]
 0048563A    xor         ecx,ecx
 0048563C    mov         dword ptr [edx+1E],ecx
 0048563F    mov         eax,dword ptr [ebp-4]
 00485642    mov         dl,byte ptr [eax+5]
 00485645    cmp         dl,22
>00485648    jne         00485686
 0048564A    push        4
 0048564C    call        0066EAE4
 00485651    pop         ecx
 00485652    mov         dword ptr [ebp-10],eax
 00485655    test        eax,eax
>00485657    je          00485678
 00485659    mov         word ptr [ebp-2C],38
 0048565F    mov         eax,dword ptr [ebp-10]
 00485662    call        00401EA8
 00485667    inc         dword ptr [ebp-20]
 0048566A    dec         dword ptr [ebp-20]
 0048566D    mov         word ptr [ebp-2C],2C
 00485673    mov         edx,dword ptr [ebp-10]
>00485676    jmp         0048567B
 00485678    mov         edx,dword ptr [ebp-10]
 0048567B    mov         eax,dword ptr [ebp-4]
 0048567E    mov         dword ptr [eax+16],edx
>00485681    jmp         00485709
 00485686    mov         ecx,dword ptr [ebp-4]
 00485689    mov         al,byte ptr [ecx+5]
 0048568C    cmp         al,23
>0048568E    jne         004856C3
 00485690    push        0C
 00485692    call        0066EAE4
 00485697    pop         ecx
 00485698    mov         dword ptr [ebp-14],eax
 0048569B    test        eax,eax
>0048569D    je          004856B8
 0048569F    mov         word ptr [ebp-2C],50
 004856A5    mov         eax,dword ptr [ebp-14]
 004856A8    call        00482E1C
 004856AD    mov         word ptr [ebp-2C],44
 004856B3    mov         edx,dword ptr [ebp-14]
>004856B6    jmp         004856BB
 004856B8    mov         edx,dword ptr [ebp-14]
 004856BB    mov         eax,dword ptr [ebp-4]
 004856BE    mov         dword ptr [eax+1A],edx
>004856C1    jmp         00485709
 004856C3    mov         ecx,dword ptr [ebp-4]
 004856C6    mov         al,byte ptr [ecx+5]
 004856C9    cmp         al,25
>004856CB    jb          00485709
 004856CD    mov         edx,dword ptr [ebp-4]
 004856D0    mov         cl,byte ptr [edx+5]
 004856D3    cmp         cl,29
>004856D6    ja          00485709
 004856D8    push        18
 004856DA    call        0066EAE4
 004856DF    pop         ecx
 004856E0    mov         dword ptr [ebp-18],eax
 004856E3    test        eax,eax
>004856E5    je          00485700
 004856E7    mov         word ptr [ebp-2C],68
 004856ED    mov         eax,dword ptr [ebp-18]
 004856F0    call        0048378C
 004856F5    mov         word ptr [ebp-2C],5C
 004856FB    mov         edx,dword ptr [ebp-18]
>004856FE    jmp         00485703
 00485700    mov         edx,dword ptr [ebp-18]
 00485703    mov         eax,dword ptr [ebp-4]
 00485706    mov         dword ptr [eax+1E],edx
 00485709    mov         ecx,dword ptr [ebp-40]
 0048570C    test        ecx,ecx
>0048570E    jl          00485733
 00485710    mov         eax,[006941CC];0x0 gvar_006941CC
 00485715    mov         edx,dword ptr [ebp-40]
 00485718    mov         ecx,dword ptr [eax+edx*4]
 0048571B    test        ecx,ecx
>0048571D    je          00485725
 0048571F    inc         dword ptr ds:[6B51C4]
 00485725    mov         eax,[006941CC];0x0 gvar_006941CC
 0048572A    mov         edx,dword ptr [ebp-40]
 0048572D    mov         ecx,dword ptr [ebp-4]
 00485730    mov         dword ptr [eax+edx*4],ecx
 00485733    mov         eax,dword ptr [ebp-3C]
 00485736    mov         fs:[00000000],eax
 0048573C    mov         eax,dword ptr [ebp-4]
 0048573F    mov         esp,ebp
 00485741    pop         ebp
 00485742    ret
end;*}

//00485744
{*procedure sub_00485744(?:?; ?:?);
begin
 00485744    push        ebp
 00485745    mov         ebp,esp
 00485747    add         esp,0FFFFFFCC
 0048574A    mov         dword ptr [ebp-34],edx
 0048574D    mov         dword ptr [ebp-4],eax
 00485750    mov         eax,6B734C
 00485755    call        0066FECC
 0048575A    mov         dword ptr [ebp-14],2
 00485761    mov         edx,dword ptr [ebp-4]
 00485764    test        edx,edx
>00485766    je          0048589C
 0048576C    mov         word ptr [ebp-20],8
 00485772    mov         ecx,6BC178
 00485777    mov         eax,dword ptr [ebp-4]
 0048577A    mov         dword ptr [eax],ecx
 0048577C    mov         edx,dword ptr [ebp-4]
 0048577F    mov         ecx,dword ptr [edx+0E]
 00485782    test        ecx,ecx
>00485784    je          004857BE
 00485786    mov         eax,dword ptr [ebp-4]
 00485789    mov         edx,dword ptr [eax+0E]
 0048578C    mov         dword ptr [ebp-8],edx
 0048578F    mov         ecx,dword ptr [ebp-8]
 00485792    test        ecx,ecx
>00485794    je          004857BE
 00485796    mov         word ptr [ebp-20],20
 0048579C    dec         dword ptr [ebp-14]
 0048579F    mov         eax,dword ptr [ebp-8]
 004857A2    add         eax,5
 004857A5    mov         edx,2
 004857AA    call        0067DCA0
 004857AF    push        dword ptr [ebp-8]
 004857B2    call        0066EAB0
 004857B7    pop         ecx
 004857B8    mov         word ptr [ebp-20],14
 004857BE    mov         ecx,dword ptr [ebp-4]
 004857C1    push        dword ptr [ecx+12]
 004857C4    call        0046DDBC
 004857C9    pop         ecx
 004857CA    mov         eax,dword ptr [ebp-4]
 004857CD    mov         dl,byte ptr [eax+5]
 004857D0    cmp         dl,22
>004857D3    jne         00485814
 004857D5    mov         ecx,dword ptr [ebp-4]
 004857D8    mov         eax,dword ptr [ecx+16]
 004857DB    mov         dword ptr [ebp-0C],eax
 004857DE    mov         edx,dword ptr [ebp-0C]
 004857E1    test        edx,edx
>004857E3    je          0048580A
 004857E5    mov         word ptr [ebp-20],38
 004857EB    dec         dword ptr [ebp-14]
 004857EE    mov         edx,2
 004857F3    mov         eax,dword ptr [ebp-0C]
 004857F6    call        0067DCA0
 004857FB    push        dword ptr [ebp-0C]
 004857FE    call        0066EAB0
 00485803    pop         ecx
 00485804    mov         word ptr [ebp-20],2C
 0048580A    mov         ecx,dword ptr [ebp-4]
 0048580D    xor         eax,eax
 0048580F    mov         dword ptr [ecx+16],eax
>00485812    jmp         00485867
 00485814    mov         edx,dword ptr [ebp-4]
 00485817    mov         cl,byte ptr [edx+5]
 0048581A    cmp         cl,23
>0048581D    jne         00485839
 0048581F    mov         eax,dword ptr [ebp-4]
 00485822    mov         eax,dword ptr [eax+1A]
 00485825    mov         edx,3
 0048582A    call        00482E7C
 0048582F    mov         ecx,dword ptr [ebp-4]
 00485832    xor         eax,eax
 00485834    mov         dword ptr [ecx+1A],eax
>00485837    jmp         00485867
 00485839    mov         edx,dword ptr [ebp-4]
 0048583C    mov         cl,byte ptr [edx+5]
 0048583F    cmp         cl,25
>00485842    jb          00485867
 00485844    mov         eax,dword ptr [ebp-4]
 00485847    mov         dl,byte ptr [eax+5]
 0048584A    cmp         dl,29
>0048584D    ja          00485867
 0048584F    mov         ecx,dword ptr [ebp-4]
 00485852    mov         eax,dword ptr [ecx+1E]
 00485855    mov         edx,3
 0048585A    call        004837F0
 0048585F    mov         ecx,dword ptr [ebp-4]
 00485862    xor         eax,eax
 00485864    mov         dword ptr [ecx+1E],eax
 00485867    dec         dword ptr [ebp-14]
 0048586A    mov         eax,dword ptr [ebp-4]
 0048586D    add         eax,22
 00485870    mov         edx,2
 00485875    call        0067DCA0
 0048587A    dec         dword ptr [ebp-14]
 0048587D    mov         eax,dword ptr [ebp-4]
 00485880    add         eax,0A
 00485883    mov         edx,2
 00485888    call        0067DCA0
 0048588D    test        byte ptr [ebp-34],1
>00485891    je          0048589C
 00485893    push        dword ptr [ebp-4]
 00485896    call        0066EAB0
 0048589B    pop         ecx
 0048589C    mov         ecx,dword ptr [ebp-30]
 0048589F    mov         dword ptr fs:[0],ecx
 004858A6    mov         esp,ebp
 004858A8    pop         ebp
 004858A9    ret
end;*}

//004858C4
{*function sub_004858C4(?:?):?;
begin
 004858C4    push        ebp
 004858C5    mov         ebp,esp
 004858C7    add         esp,0FFFFFFD4
 004858CA    mov         dword ptr [ebp-2C],eax
 004858CD    mov         eax,6B73A0
 004858D2    call        0066FECC
 004858D7    mov         word ptr [ebp-18],8
 004858DD    mov         edx,6B5218
 004858E2    lea         eax,[ebp-4]
 004858E5    call        0067DAB4
 004858EA    inc         dword ptr [ebp-0C]
 004858ED    lea         edx,[ebp-4]
 004858F0    mov         eax,dword ptr [ebp-2C]
 004858F3    add         eax,22
 004858F6    call        0067DD9C
 004858FB    push        eax
 004858FC    dec         dword ptr [ebp-0C]
 004858FF    lea         eax,[ebp-4]
 00485902    mov         edx,2
 00485907    call        0067DCA0
 0048590C    pop         eax
 0048590D    mov         edx,dword ptr [ebp-28]
 00485910    mov         dword ptr fs:[0],edx
 00485917    mov         esp,ebp
 00485919    pop         ebp
 0048591A    ret
end;*}

//0048591C
{*procedure sub_0048591C(?:?; ?:?);
begin
 0048591C    push        ebp
 0048591D    mov         ebp,esp
 0048591F    add         esp,0FFFFFFD4
 00485922    mov         dword ptr [ebp-4],edx
 00485925    mov         dword ptr [ebp-2C],eax
 00485928    mov         eax,6B73C4
 0048592D    call        0066FECC
 00485932    mov         word ptr [ebp-18],8
 00485938    mov         edx,dword ptr [ebp-2C]
 0048593B    add         edx,22
 0048593E    mov         eax,dword ptr [ebp-4]
 00485941    call        0067DCD0
 00485946    mov         eax,dword ptr [ebp-4]
 00485949    inc         dword ptr [ebp-0C]
 0048594C    mov         edx,dword ptr [ebp-28]
 0048594F    mov         dword ptr fs:[0],edx
 00485956    mov         esp,ebp
 00485958    pop         ebp
 00485959    ret
end;*}

//0048595C
{*function sub_0048595C(?:?):?;
begin
 0048595C    push        ebp
 0048595D    mov         ebp,esp
 0048595F    push        ecx
 00485960    mov         dword ptr [ebp-4],eax
 00485963    mov         eax,dword ptr [ebp-4]
 00485966    add         eax,22
 00485969    call        00405290
 0048596E    pop         ecx
 0048596F    pop         ebp
 00485970    ret
end;*}

//00485974
{*procedure sub_00485974(?:?; ?:Pointer);
begin
 00485974    push        ebp
 00485975    mov         ebp,esp
 00485977    add         esp,0FFFFFFCC
 0048597A    mov         dword ptr [ebp-4],edx
 0048597D    mov         dword ptr [ebp-34],eax
 00485980    mov         eax,6B7404
 00485985    call        0066FECC
 0048598A    mov         dword ptr [ebp-14],1
 00485991    lea         edx,[ebp-4]
 00485994    lea         eax,[ebp-4]
 00485997    call        0067DAEC
 0048599C    inc         dword ptr [ebp-14]
 0048599F    mov         word ptr [ebp-20],8
 004859A5    mov         eax,[00694254];0x0 gvar_00694254:TCriticalSection
 004859AA    call        00656518
 004859AF    lea         edx,[ebp-4]
 004859B2    mov         eax,dword ptr [ebp-34]
 004859B5    add         eax,22
 004859B8    call        0067DCD0
 004859BD    mov         word ptr [ebp-20],14
 004859C3    lea         eax,[ebp-8]
 004859C6    call        00401EA8
 004859CB    mov         edx,eax
 004859CD    inc         dword ptr [ebp-14]
 004859D0    mov         eax,dword ptr [ebp-34]
 004859D3    add         eax,22
 004859D6    call        00531F50
 004859DB    lea         edx,[ebp-8]
 004859DE    push        edx
 004859DF    mov         edx,6B5219
 004859E4    lea         eax,[ebp-0C]
 004859E7    call        0067DAB4
 004859EC    inc         dword ptr [ebp-14]
 004859EF    lea         edx,[ebp-0C]
 004859F2    pop         eax
 004859F3    call        0067DD9C
 004859F8    test        al,al
>004859FA    je          00485A1B
 004859FC    mov         ecx,dword ptr [ebp-34]
 004859FF    mov         al,byte ptr [ecx+5]
 00485A02    cmp         al,25
>00485A04    jb          00485A1B
 00485A06    mov         edx,dword ptr [ebp-34]
 00485A09    mov         cl,byte ptr [edx+5]
 00485A0C    cmp         cl,29
>00485A0F    ja          00485A1B
 00485A11    mov         eax,dword ptr [ebp-34]
 00485A14    mov         edx,dword ptr [eax+1E]
 00485A17    test        edx,edx
>00485A19    jne         00485A1F
 00485A1B    xor         ecx,ecx
>00485A1D    jmp         00485A24
 00485A1F    mov         ecx,1
 00485A24    push        ecx
 00485A25    dec         dword ptr [ebp-14]
 00485A28    lea         eax,[ebp-0C]
 00485A2B    mov         edx,2
 00485A30    call        0067DCA0
 00485A35    dec         dword ptr [ebp-14]
 00485A38    lea         eax,[ebp-8]
 00485A3B    mov         edx,2
 00485A40    call        0067DCA0
 00485A45    pop         ecx
 00485A46    test        cl,cl
>00485A48    je          00485A56
 00485A4A    mov         eax,dword ptr [ebp-34]
 00485A4D    mov         edx,dword ptr [eax+1E]
 00485A50    or          dword ptr [edx],200000
 00485A56    mov         eax,[00694254];0x0 gvar_00694254:TCriticalSection
 00485A5B    call        0065652C
 00485A60    dec         dword ptr [ebp-14]
 00485A63    lea         eax,[ebp-4]
 00485A66    mov         edx,2
 00485A6B    call        0067DCA0
 00485A70    mov         ecx,dword ptr [ebp-30]
 00485A73    mov         dword ptr fs:[0],ecx
 00485A7A    mov         esp,ebp
 00485A7C    pop         ebp
 00485A7D    ret
end;*}

//00485A80
{*procedure sub_00485A80(?:?; ?:?);
begin
 00485A80    push        ebp
 00485A81    mov         ebp,esp
 00485A83    add         esp,0FFFFFFD4
 00485A86    mov         dword ptr [ebp-4],edx
 00485A89    mov         dword ptr [ebp-2C],eax
 00485A8C    mov         eax,6B7434
 00485A91    call        0066FECC
 00485A96    mov         dword ptr [ebp-0C],1
 00485A9D    lea         edx,[ebp-4]
 00485AA0    lea         eax,[ebp-4]
 00485AA3    call        0067DAEC
 00485AA8    inc         dword ptr [ebp-0C]
 00485AAB    mov         word ptr [ebp-18],8
 00485AB1    lea         edx,[ebp-4]
 00485AB4    mov         eax,dword ptr [ebp-2C]
 00485AB7    add         eax,22
 00485ABA    call        0067DCE4
 00485ABF    dec         dword ptr [ebp-0C]
 00485AC2    lea         eax,[ebp-4]
 00485AC5    mov         edx,2
 00485ACA    call        0067DCA0
 00485ACF    mov         ecx,dword ptr [ebp-28]
 00485AD2    mov         dword ptr fs:[0],ecx
 00485AD9    mov         esp,ebp
 00485ADB    pop         ebp
 00485ADC    ret
end;*}

//00485AE0
{*function sub_00485AE0(?:?; ?:String):?;
begin
 00485AE0    push        ebp
 00485AE1    mov         ebp,esp
 00485AE3    add         esp,0FFFFFFD4
 00485AE6    mov         dword ptr [ebp-4],edx
 00485AE9    mov         dword ptr [ebp-2C],eax
 00485AEC    mov         eax,6B7458
 00485AF1    call        0066FECC
 00485AF6    mov         dword ptr [ebp-0C],1
 00485AFD    lea         edx,[ebp-4]
 00485B00    lea         eax,[ebp-4]
 00485B03    call        0067DAEC
 00485B08    inc         dword ptr [ebp-0C]
 00485B0B    mov         word ptr [ebp-18],8
 00485B11    mov         edx,dword ptr [ebp-4]
 00485B14    mov         ecx,dword ptr [ebp-2C]
 00485B17    mov         eax,dword ptr [ecx+22]
 00485B1A    call        SameText
 00485B1F    push        eax
 00485B20    dec         dword ptr [ebp-0C]
 00485B23    lea         eax,[ebp-4]
 00485B26    mov         edx,2
 00485B2B    call        0067DCA0
 00485B30    pop         eax
 00485B31    mov         edx,dword ptr [ebp-28]
 00485B34    mov         dword ptr fs:[0],edx
 00485B3B    mov         esp,ebp
 00485B3D    pop         ebp
 00485B3E    ret
end;*}

//00485B40
{*procedure sub_00485B40(?:?; ?:?; ?:?; ?:?);
begin
 00485B40    push        ebp
 00485B41    mov         ebp,esp
 00485B43    add         esp,0FFFFFFC0
 00485B46    mov         dword ptr [ebp-30],ecx
 00485B49    mov         byte ptr [ebp-29],dl
 00485B4C    mov         dword ptr [ebp-28],eax
 00485B4F    mov         eax,6B746C
 00485B54    call        0066FECC
 00485B59    mov         edx,dword ptr [ebp-28]
 00485B5C    mov         ecx,dword ptr [edx+12]
 00485B5F    test        ecx,ecx
>00485B61    jne         00485B75
 00485B63    mov         dl,1
 00485B65    mov         eax,[006422A4];TList
 00485B6A    call        00413424
 00485B6F    mov         ecx,dword ptr [ebp-28]
 00485B72    mov         dword ptr [ecx+12],eax
 00485B75    mov         eax,dword ptr [ebp-28]
 00485B78    mov         edx,dword ptr [eax+12]
 00485B7B    mov         ecx,dword ptr [edx+8]
 00485B7E    test        ecx,ecx
>00485B80    jne         00485BC4
 00485B82    push        9
 00485B84    call        0066EAE4
 00485B89    pop         ecx
 00485B8A    mov         dword ptr [ebp-34],eax
 00485B8D    mov         al,byte ptr [ebp-29]
 00485B90    mov         edx,dword ptr [ebp-34]
 00485B93    mov         byte ptr [edx],al
 00485B95    mov         ecx,dword ptr [ebp-30]
 00485B98    mov         eax,dword ptr [ebp-34]
 00485B9B    mov         dword ptr [eax+1],ecx
 00485B9E    mov         edx,dword ptr [ebp+8]
 00485BA1    mov         ecx,dword ptr [ebp-34]
 00485BA4    mov         dword ptr [ecx+5],edx
 00485BA7    mov         eax,dword ptr [ebp-28]
 00485BAA    mov         eax,dword ptr [eax+12]
 00485BAD    mov         edx,dword ptr [ebp-34]
 00485BB0    call        TList.Add
 00485BB5    mov         ecx,dword ptr [ebp-24]
 00485BB8    mov         dword ptr fs:[0],ecx
>00485BBF    jmp         00485D7C
 00485BC4    xor         eax,eax
 00485BC6    mov         dword ptr [ebp-38],eax
 00485BC9    mov         edx,dword ptr [ebp-28]
 00485BCC    mov         eax,dword ptr [edx+12]
 00485BCF    mov         edx,dword ptr [ebp-38]
 00485BD2    call        TList.Get
 00485BD7    mov         dword ptr [ebp-34],eax
 00485BDA    mov         ecx,dword ptr [ebp-30]
 00485BDD    mov         eax,dword ptr [ebp+8]
 00485BE0    add         ecx,eax
 00485BE2    mov         edx,dword ptr [ebp-34]
 00485BE5    mov         eax,dword ptr [edx+1]
 00485BE8    mov         edx,dword ptr [ebp-34]
 00485BEB    mov         edx,dword ptr [edx+5]
 00485BEE    add         eax,edx
 00485BF0    cmp         ecx,eax
>00485BF2    jae         00485C38
 00485BF4    push        9
 00485BF6    call        0066EAE4
 00485BFB    pop         ecx
 00485BFC    mov         dword ptr [ebp-34],eax
 00485BFF    mov         al,byte ptr [ebp-29]
 00485C02    mov         ecx,dword ptr [ebp-34]
 00485C05    mov         byte ptr [ecx],al
 00485C07    mov         eax,dword ptr [ebp-30]
 00485C0A    mov         edx,dword ptr [ebp-34]
 00485C0D    mov         dword ptr [edx+1],eax
 00485C10    mov         ecx,dword ptr [ebp+8]
 00485C13    mov         eax,dword ptr [ebp-34]
 00485C16    mov         dword ptr [eax+5],ecx
 00485C19    mov         edx,dword ptr [ebp-28]
 00485C1C    mov         eax,dword ptr [edx+12]
 00485C1F    mov         ecx,dword ptr [ebp-34]
 00485C22    mov         edx,dword ptr [ebp-38]
 00485C25    call        TList.Insert
 00485C2A    mov         eax,dword ptr [ebp-24]
 00485C2D    mov         fs:[00000000],eax
>00485C33    jmp         00485D7C
 00485C38    mov         edx,dword ptr [ebp-28]
 00485C3B    mov         ecx,dword ptr [edx+12]
 00485C3E    mov         eax,dword ptr [ecx+8]
 00485C41    dec         eax
 00485C42    mov         dword ptr [ebp-3C],eax
 00485C45    mov         edx,dword ptr [ebp-28]
 00485C48    mov         eax,dword ptr [edx+12]
 00485C4B    mov         edx,dword ptr [ebp-3C]
 00485C4E    call        TList.Get
 00485C53    mov         dword ptr [ebp-34],eax
 00485C56    mov         ecx,dword ptr [ebp-30]
 00485C59    mov         eax,dword ptr [ebp+8]
 00485C5C    add         ecx,eax
 00485C5E    mov         edx,dword ptr [ebp-34]
 00485C61    mov         eax,dword ptr [edx+1]
 00485C64    mov         edx,dword ptr [ebp-34]
 00485C67    mov         edx,dword ptr [edx+5]
 00485C6A    add         eax,edx
 00485C6C    cmp         ecx,eax
>00485C6E    jbe         00485CB2
 00485C70    push        9
 00485C72    call        0066EAE4
 00485C77    pop         ecx
 00485C78    mov         dword ptr [ebp-34],eax
 00485C7B    mov         al,byte ptr [ebp-29]
 00485C7E    mov         ecx,dword ptr [ebp-34]
 00485C81    mov         byte ptr [ecx],al
 00485C83    mov         eax,dword ptr [ebp-30]
 00485C86    mov         edx,dword ptr [ebp-34]
 00485C89    mov         dword ptr [edx+1],eax
 00485C8C    mov         ecx,dword ptr [ebp+8]
 00485C8F    mov         eax,dword ptr [ebp-34]
 00485C92    mov         dword ptr [eax+5],ecx
 00485C95    mov         edx,dword ptr [ebp-28]
 00485C98    mov         eax,dword ptr [edx+12]
 00485C9B    mov         edx,dword ptr [ebp-34]
 00485C9E    call        TList.Add
 00485CA3    mov         ecx,dword ptr [ebp-24]
 00485CA6    mov         dword ptr fs:[0],ecx
>00485CAD    jmp         00485D7C
 00485CB2    mov         eax,dword ptr [ebp-38]
 00485CB5    mov         edx,dword ptr [ebp-3C]
 00485CB8    cmp         eax,edx
>00485CBA    jge         00485D12
 00485CBC    mov         ecx,dword ptr [ebp-38]
 00485CBF    mov         eax,dword ptr [ebp-3C]
 00485CC2    add         ecx,eax
 00485CC4    sar         ecx,1
>00485CC6    jns         00485CCB
 00485CC8    adc         ecx,0
 00485CCB    mov         dword ptr [ebp-40],ecx
 00485CCE    mov         edx,dword ptr [ebp-28]
 00485CD1    mov         eax,dword ptr [edx+12]
 00485CD4    mov         edx,dword ptr [ebp-40]
 00485CD7    call        TList.Get
 00485CDC    mov         dword ptr [ebp-34],eax
 00485CDF    mov         ecx,dword ptr [ebp-30]
 00485CE2    mov         eax,dword ptr [ebp+8]
 00485CE5    add         ecx,eax
 00485CE7    mov         edx,dword ptr [ebp-34]
 00485CEA    mov         eax,dword ptr [edx+1]
 00485CED    mov         edx,dword ptr [ebp-34]
 00485CF0    mov         edx,dword ptr [edx+5]
 00485CF3    add         eax,edx
 00485CF5    cmp         ecx,eax
>00485CF7    ja          00485D01
 00485CF9    mov         eax,dword ptr [ebp-40]
 00485CFC    mov         dword ptr [ebp-3C],eax
>00485CFF    jmp         00485D08
 00485D01    mov         ecx,dword ptr [ebp-40]
 00485D04    inc         ecx
 00485D05    mov         dword ptr [ebp-38],ecx
 00485D08    mov         eax,dword ptr [ebp-38]
 00485D0B    mov         edx,dword ptr [ebp-3C]
 00485D0E    cmp         eax,edx
>00485D10    jl          00485CBC
 00485D12    mov         ecx,dword ptr [ebp-28]
 00485D15    mov         eax,dword ptr [ecx+12]
 00485D18    mov         edx,dword ptr [ebp-3C]
 00485D1B    call        TList.Get
 00485D20    mov         dword ptr [ebp-34],eax
 00485D23    mov         ecx,dword ptr [ebp-34]
 00485D26    mov         eax,dword ptr [ecx+1]
 00485D29    mov         edx,dword ptr [ebp-34]
 00485D2C    mov         ecx,dword ptr [edx+5]
 00485D2F    add         eax,ecx
 00485D31    mov         edx,dword ptr [ebp-30]
 00485D34    mov         ecx,dword ptr [ebp+8]
 00485D37    add         edx,ecx
 00485D39    cmp         eax,edx
>00485D3B    je          00485D73
 00485D3D    push        9
 00485D3F    call        0066EAE4
 00485D44    pop         ecx
 00485D45    mov         dword ptr [ebp-34],eax
 00485D48    mov         al,byte ptr [ebp-29]
 00485D4B    mov         edx,dword ptr [ebp-34]
 00485D4E    mov         byte ptr [edx],al
 00485D50    mov         eax,dword ptr [ebp-30]
 00485D53    mov         ecx,dword ptr [ebp-34]
 00485D56    mov         dword ptr [ecx+1],eax
 00485D59    mov         eax,dword ptr [ebp+8]
 00485D5C    mov         edx,dword ptr [ebp-34]
 00485D5F    mov         dword ptr [edx+5],eax
 00485D62    mov         ecx,dword ptr [ebp-28]
 00485D65    mov         eax,dword ptr [ecx+12]
 00485D68    mov         ecx,dword ptr [ebp-34]
 00485D6B    mov         edx,dword ptr [ebp-3C]
 00485D6E    call        TList.Insert
 00485D73    mov         eax,dword ptr [ebp-24]
 00485D76    mov         fs:[00000000],eax
 00485D7C    mov         esp,ebp
 00485D7E    pop         ebp
 00485D7F    ret         4
end;*}

//00485D84
{*procedure sub_00485D84(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00485D84    push        ebp
 00485D85    mov         ebp,esp
 00485D87    add         esp,0FFFFFF40
 00485D8D    mov         dword ptr [ebp-0C],ecx
 00485D90    mov         dword ptr [ebp-8],edx
 00485D93    mov         dword ptr [ebp-4],eax
 00485D96    mov         eax,dword ptr [ebp-8]
 00485D99    test        eax,eax
>00485D9B    jl          00485E2C
 00485DA1    dec         dword ptr [ebp-8]
 00485DA4    mov         edx,dword ptr [ebp-8]
 00485DA7    mov         eax,10
 00485DAC    call        00532B74
 00485DB1    test        al,al
>00485DB3    jne         00485E2C
 00485DB5    mov         edx,dword ptr [ebp-8]
 00485DB8    mov         eax,80000000
 00485DBD    call        00532B74
 00485DC2    test        al,al
>00485DC4    je          00485E21
 00485DC6    mov         eax,dword ptr [ebp-8]
 00485DC9    call        00531360
 00485DCE    xor         edx,edx
 00485DD0    push        edx
 00485DD1    push        eax
 00485DD2    push        0
 00485DD4    lea         ecx,[ebp-0C0]
 00485DDA    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 00485DE0    mov         eax,dword ptr [ebp-8]
 00485DE3    add         edx,eax
 00485DE5    mov         eax,6ECAB0
 00485DEA    call        004749C0
 00485DEF    mov         edx,dword ptr [ebp-3F]
 00485DF2    mov         ecx,dword ptr [ebp-0C]
 00485DF5    cmp         edx,ecx
>00485DF7    je          00485E03
 00485DF9    mov         eax,dword ptr [ebp-43]
 00485DFC    mov         edx,dword ptr [ebp-0C]
 00485DFF    cmp         eax,edx
>00485E01    jne         00485E21
 00485E03    mov         eax,dword ptr [ebp-8]
 00485E06    call        00531360
 00485E0B    mov         edx,dword ptr [ebp+8]
 00485E0E    sub         eax,edx
 00485E10    push        eax
 00485E11    mov         ecx,dword ptr [ebp+8]
 00485E14    mov         dl,byte ptr [ebp+0C]
 00485E17    mov         eax,dword ptr [ebp-4]
 00485E1A    call        00485B40
>00485E1F    jmp         00485E2C
 00485E21    mov         ecx,dword ptr [ebp-8]
 00485E24    test        ecx,ecx
>00485E26    jge         00485DA1
 00485E2C    mov         esp,ebp
 00485E2E    pop         ebp
 00485E2F    ret         8
end;*}

//0048741C
{*procedure sub_0048741C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0048741C    push        ebp
 0048741D    mov         ebp,esp
 0048741F    add         esp,0FFFFFF10
 00487425    mov         byte ptr [ebp-0D9],cl
 0048742B    mov         dword ptr [ebp-0D8],edx
 00487431    mov         dword ptr [ebp-0D4],eax
 00487437    mov         eax,6B79D4
 0048743C    call        0066FECC
 00487441    mov         word ptr [ebp-0C0],14
 0048744A    mov         edx,6B521A
 0048744F    lea         eax,[ebp-4]
 00487452    call        0067DAB4
 00487457    inc         dword ptr [ebp-0B4]
 0048745D    mov         word ptr [ebp-0C0],8
 00487466    mov         dl,byte ptr [ebp-0D9]
 0048746C    test        dl,dl
>0048746E    je          00487616
 00487474    mov         ecx,dword ptr [ebp-0D4]
 0048747A    mov         al,byte ptr [ecx+5]
 0048747D    cmp         al,26
>0048747F    jne         004874C0
 00487481    mov         word ptr [ebp-0C0],20
 0048748A    mov         edx,6B521B
 0048748F    lea         eax,[ebp-0C]
 00487492    call        0067DAB4
 00487497    inc         dword ptr [ebp-0B4]
 0048749D    lea         edx,[ebp-0C]
 004874A0    lea         eax,[ebp-4]
 004874A3    call        0067DCE4
 004874A8    dec         dword ptr [ebp-0B4]
 004874AE    lea         eax,[ebp-0C]
 004874B1    mov         edx,2
 004874B6    call        0067DCA0
>004874BB    jmp         0048759C
 004874C0    mov         ecx,dword ptr [ebp-0D4]
 004874C6    mov         al,byte ptr [ecx+5]
 004874C9    cmp         al,27
>004874CB    jne         0048750C
 004874CD    mov         word ptr [ebp-0C0],2C
 004874D6    mov         edx,6B5227
 004874DB    lea         eax,[ebp-10]
 004874DE    call        0067DAB4
 004874E3    inc         dword ptr [ebp-0B4]
 004874E9    lea         edx,[ebp-10]
 004874EC    lea         eax,[ebp-4]
 004874EF    call        0067DCE4
 004874F4    dec         dword ptr [ebp-0B4]
 004874FA    lea         eax,[ebp-10]
 004874FD    mov         edx,2
 00487502    call        0067DCA0
>00487507    jmp         0048759C
 0048750C    mov         ecx,dword ptr [ebp-0D4]
 00487512    mov         al,byte ptr [ecx+5]
 00487515    cmp         al,29
>00487517    jne         00487555
 00487519    mov         word ptr [ebp-0C0],38
 00487522    mov         edx,6B5232
 00487527    lea         eax,[ebp-14]
 0048752A    call        0067DAB4
 0048752F    inc         dword ptr [ebp-0B4]
 00487535    lea         edx,[ebp-14]
 00487538    lea         eax,[ebp-4]
 0048753B    call        0067DCE4
 00487540    dec         dword ptr [ebp-0B4]
 00487546    lea         eax,[ebp-14]
 00487549    mov         edx,2
 0048754E    call        0067DCA0
>00487553    jmp         0048759C
 00487555    mov         ecx,dword ptr [ebp-0D4]
 0048755B    mov         al,byte ptr [ecx+5]
 0048755E    cmp         al,28
>00487560    jne         0048759C
 00487562    mov         word ptr [ebp-0C0],44
 0048756B    mov         edx,6B523B
 00487570    lea         eax,[ebp-18]
 00487573    call        0067DAB4
 00487578    inc         dword ptr [ebp-0B4]
 0048757E    lea         edx,[ebp-18]
 00487581    lea         eax,[ebp-4]
 00487584    call        0067DCE4
 00487589    dec         dword ptr [ebp-0B4]
 0048758F    lea         eax,[ebp-18]
 00487592    mov         edx,2
 00487597    call        0067DCA0
 0048759C    mov         word ptr [ebp-0C0],50
 004875A5    mov         edx,6B5245
 004875AA    lea         eax,[ebp-1C]
 004875AD    call        0067DAB4
 004875B2    inc         dword ptr [ebp-0B4]
 004875B8    lea         edx,[ebp-1C]
 004875BB    lea         eax,[ebp-4]
 004875BE    call        0067DD9C
 004875C3    push        eax
 004875C4    dec         dword ptr [ebp-0B4]
 004875CA    lea         eax,[ebp-1C]
 004875CD    mov         edx,2
 004875D2    call        0067DCA0
 004875D7    pop         ecx
 004875D8    test        cl,cl
>004875DA    je          00487616
 004875DC    mov         word ptr [ebp-0C0],5C
 004875E5    mov         edx,6B5246
 004875EA    lea         eax,[ebp-20]
 004875ED    call        0067DAB4
 004875F2    inc         dword ptr [ebp-0B4]
 004875F8    lea         edx,[ebp-20]
 004875FB    lea         eax,[ebp-4]
 004875FE    call        0067DCE4
 00487603    dec         dword ptr [ebp-0B4]
 00487609    lea         eax,[ebp-20]
 0048760C    mov         edx,2
 00487611    call        0067DCA0
 00487616    mov         word ptr [ebp-0C0],68
 0048761F    mov         edx,6B5248
 00487624    lea         eax,[ebp-24]
 00487627    call        0067DAB4
 0048762C    inc         dword ptr [ebp-0B4]
 00487632    lea         edx,[ebp-24]
 00487635    mov         eax,dword ptr [ebp-0D4]
 0048763B    add         eax,22
 0048763E    call        0067DD9C
 00487643    push        eax
 00487644    dec         dword ptr [ebp-0B4]
 0048764A    lea         eax,[ebp-24]
 0048764D    mov         edx,2
 00487652    call        0067DCA0
 00487657    pop         ecx
 00487658    test        cl,cl
>0048765A    je          004876BD
 0048765C    mov         al,byte ptr [ebp+10]
 0048765F    test        al,al
>00487661    jne         004876AA
 00487663    mov         word ptr [ebp-0C0],74
 0048766C    lea         eax,[ebp-28]
 0048766F    call        00401EA8
 00487674    mov         edx,eax
 00487676    inc         dword ptr [ebp-0B4]
 0048767C    mov         eax,dword ptr [ebp-0D4]
 00487682    add         eax,22
 00487685    call        005320E4
 0048768A    lea         edx,[ebp-28]
 0048768D    lea         eax,[ebp-4]
 00487690    call        0067DCE4
 00487695    dec         dword ptr [ebp-0B4]
 0048769B    lea         eax,[ebp-28]
 0048769E    mov         edx,2
 004876A3    call        0067DCA0
>004876A8    jmp         004876FF
 004876AA    mov         edx,dword ptr [ebp-0D4]
 004876B0    add         edx,22
 004876B3    lea         eax,[ebp-4]
 004876B6    call        0067DCE4
>004876BB    jmp         004876FF
 004876BD    mov         word ptr [ebp-0C0],80
 004876C6    lea         eax,[ebp-2C]
 004876C9    call        00401EA8
 004876CE    mov         edx,eax
 004876D0    inc         dword ptr [ebp-0B4]
 004876D6    mov         eax,dword ptr [ebp-0D8]
 004876DC    call        005315B0
 004876E1    lea         edx,[ebp-2C]
 004876E4    lea         eax,[ebp-4]
 004876E7    call        0067DCE4
 004876EC    dec         dword ptr [ebp-0B4]
 004876F2    lea         eax,[ebp-2C]
 004876F5    mov         edx,2
 004876FA    call        0067DCA0
 004876FF    mov         ecx,dword ptr [ebp-0D4]
 00487705    mov         eax,dword ptr [ecx+1E]
 00487708    mov         edx,dword ptr [eax+10]
 0048770B    test        edx,edx
>0048770D    je          00487720
 0048770F    mov         ecx,dword ptr [ebp-0D4]
 00487715    mov         eax,dword ptr [ecx+1E]
 00487718    mov         edx,dword ptr [eax+10]
 0048771B    mov         ecx,dword ptr [edx+8]
>0048771E    jmp         00487722
 00487720    xor         ecx,ecx
 00487722    mov         dword ptr [ebp-0E8],ecx
 00487728    mov         dword ptr [ebp-0E4],ecx
 0048772E    xor         eax,eax
 00487730    mov         dword ptr [ebp-0EC],eax
 00487736    mov         edx,dword ptr [ebp-0E4]
 0048773C    test        edx,edx
>0048773E    je          00487797
 00487740    mov         al,byte ptr [ebp+0C]
 00487743    test        al,al
>00487745    jne         00487797
 00487747    mov         edx,dword ptr [ebp-0D4]
 0048774D    mov         cl,byte ptr [edx+5]
 00487750    cmp         cl,26
>00487753    je          00487763
 00487755    mov         eax,dword ptr [ebp-0D4]
 0048775B    mov         dl,byte ptr [eax+5]
 0048775E    cmp         dl,27
>00487761    jne         00487776
 00487763    mov         dword ptr [ebp-0EC],2
 0048776D    sub         dword ptr [ebp-0E4],2
>00487774    jmp         00487797
 00487776    mov         ecx,dword ptr [ebp-0D4]
 0048777C    mov         eax,dword ptr [ecx+1E]
 0048777F    test        dword ptr [eax],38200000
>00487785    je          00487797
 00487787    mov         dword ptr [ebp-0EC],1
 00487791    dec         dword ptr [ebp-0E4]
 00487797    mov         edx,dword ptr [ebp-0E4]
 0048779D    test        edx,edx
>0048779F    je          00487BAB
 004877A5    mov         word ptr [ebp-0C0],8C
 004877AE    mov         edx,6B5249
 004877B3    lea         eax,[ebp-30]
 004877B6    call        0067DAB4
 004877BB    inc         dword ptr [ebp-0B4]
 004877C1    lea         edx,[ebp-30]
 004877C4    lea         eax,[ebp-4]
 004877C7    call        0067DCE4
 004877CC    dec         dword ptr [ebp-0B4]
 004877D2    lea         eax,[ebp-30]
 004877D5    mov         edx,2
 004877DA    call        0067DCA0
 004877DF    mov         cl,byte ptr [ebp+14]
 004877E2    test        cl,cl
>004877E4    je          00487820
 004877E6    mov         word ptr [ebp-0C0],98
 004877EF    mov         edx,6B524B
 004877F4    lea         eax,[ebp-34]
 004877F7    call        0067DAB4
 004877FC    inc         dword ptr [ebp-0B4]
 00487802    lea         edx,[ebp-34]
 00487805    lea         eax,[ebp-4]
 00487808    call        0067DCE4
 0048780D    dec         dword ptr [ebp-0B4]
 00487813    lea         eax,[ebp-34]
 00487816    mov         edx,2
 0048781B    call        0067DCA0
 00487820    mov         ecx,dword ptr [ebp-0EC]
 00487826    mov         dword ptr [ebp-0E0],ecx
 0048782C    mov         eax,dword ptr [ebp-0E0]
 00487832    mov         edx,dword ptr [ebp-0E8]
 00487838    cmp         eax,edx
>0048783A    jge         00487B30
 00487840    mov         ecx,dword ptr [ebp-0E0]
 00487846    mov         eax,dword ptr [ebp-0EC]
 0048784C    cmp         ecx,eax
>0048784E    je          0048790B
 00487854    mov         word ptr [ebp-0C0],0A4
 0048785D    mov         edx,6B524E
 00487862    lea         eax,[ebp-38]
 00487865    call        0067DAB4
 0048786A    inc         dword ptr [ebp-0B4]
 00487870    lea         edx,[ebp-38]
 00487873    lea         eax,[ebp-4]
 00487876    call        0067DCE4
 0048787B    dec         dword ptr [ebp-0B4]
 00487881    lea         eax,[ebp-38]
 00487884    mov         edx,2
 00487889    call        0067DCA0
 0048788E    mov         cl,byte ptr [ebp+14]
 00487891    test        cl,cl
>00487893    je          004878D1
 00487895    mov         word ptr [ebp-0C0],0B0
 0048789E    mov         edx,6B5250
 004878A3    lea         eax,[ebp-3C]
 004878A6    call        0067DAB4
 004878AB    inc         dword ptr [ebp-0B4]
 004878B1    lea         edx,[ebp-3C]
 004878B4    lea         eax,[ebp-4]
 004878B7    call        0067DCE4
 004878BC    dec         dword ptr [ebp-0B4]
 004878C2    lea         eax,[ebp-3C]
 004878C5    mov         edx,2
 004878CA    call        0067DCA0
>004878CF    jmp         0048790B
 004878D1    mov         word ptr [ebp-0C0],0BC
 004878DA    mov         edx,6B5253
 004878DF    lea         eax,[ebp-40]
 004878E2    call        0067DAB4
 004878E7    inc         dword ptr [ebp-0B4]
 004878ED    lea         edx,[ebp-40]
 004878F0    lea         eax,[ebp-4]
 004878F3    call        0067DCE4
 004878F8    dec         dword ptr [ebp-0B4]
 004878FE    lea         eax,[ebp-40]
 00487901    mov         edx,2
 00487906    call        0067DCA0
 0048790B    mov         ecx,dword ptr [ebp-0D4]
 00487911    mov         eax,dword ptr [ecx+1E]
 00487914    mov         eax,dword ptr [eax+10]
 00487917    mov         edx,dword ptr [ebp-0E0]
 0048791D    call        TList.Get
 00487922    mov         dword ptr [ebp-0F0],eax
 00487928    mov         ecx,dword ptr [ebp-0F0]
 0048792E    mov         al,byte ptr [ecx]
 00487930    cmp         al,22
>00487932    jne         00487970
 00487934    mov         word ptr [ebp-0C0],0C8
 0048793D    mov         edx,6B5255
 00487942    lea         eax,[ebp-44]
 00487945    call        0067DAB4
 0048794A    inc         dword ptr [ebp-0B4]
 00487950    lea         edx,[ebp-44]
 00487953    lea         eax,[ebp-4]
 00487956    call        0067DCE4
 0048795B    dec         dword ptr [ebp-0B4]
 00487961    lea         eax,[ebp-44]
 00487964    mov         edx,2
 00487969    call        0067DCA0
>0048796E    jmp         004879B6
 00487970    mov         ecx,dword ptr [ebp-0F0]
 00487976    mov         al,byte ptr [ecx]
 00487978    cmp         al,23
>0048797A    jne         004879B6
 0048797C    mov         word ptr [ebp-0C0],0D4
 00487985    mov         edx,6B525A
 0048798A    lea         eax,[ebp-48]
 0048798D    call        0067DAB4
 00487992    inc         dword ptr [ebp-0B4]
 00487998    lea         edx,[ebp-48]
 0048799B    lea         eax,[ebp-4]
 0048799E    call        0067DCE4
 004879A3    dec         dword ptr [ebp-0B4]
 004879A9    lea         eax,[ebp-48]
 004879AC    mov         edx,2
 004879B1    call        0067DCA0
 004879B6    mov         word ptr [ebp-0C0],0E0
 004879BF    mov         edx,6B5261
 004879C4    lea         eax,[ebp-4C]
 004879C7    call        0067DAB4
 004879CC    inc         dword ptr [ebp-0B4]
 004879D2    lea         edx,[ebp-4C]
 004879D5    mov         eax,dword ptr [ebp-0F0]
 004879DB    add         eax,0A
 004879DE    call        0067DD9C
 004879E3    push        eax
 004879E4    dec         dword ptr [ebp-0B4]
 004879EA    lea         eax,[ebp-4C]
 004879ED    mov         edx,2
 004879F2    call        0067DCA0
 004879F7    pop         ecx
 004879F8    test        cl,cl
>004879FA    je          00487A0F
 004879FC    mov         edx,dword ptr [ebp-0F0]
 00487A02    add         edx,0A
 00487A05    lea         eax,[ebp-4]
 00487A08    call        0067DCE4
>00487A0D    jmp         00487A49
 00487A0F    mov         word ptr [ebp-0C0],0EC
 00487A18    mov         edx,6B5262
 00487A1D    lea         eax,[ebp-50]
 00487A20    call        0067DAB4
 00487A25    inc         dword ptr [ebp-0B4]
 00487A2B    lea         edx,[ebp-50]
 00487A2E    lea         eax,[ebp-4]
 00487A31    call        0067DCE4
 00487A36    dec         dword ptr [ebp-0B4]
 00487A3C    lea         eax,[ebp-50]
 00487A3F    mov         edx,2
 00487A44    call        0067DCA0
 00487A49    mov         word ptr [ebp-0C0],0F8
 00487A52    mov         edx,6B5264
 00487A57    lea         eax,[ebp-54]
 00487A5A    call        0067DAB4
 00487A5F    inc         dword ptr [ebp-0B4]
 00487A65    lea         edx,[ebp-54]
 00487A68    lea         eax,[ebp-4]
 00487A6B    call        0067DCE4
 00487A70    dec         dword ptr [ebp-0B4]
 00487A76    lea         eax,[ebp-54]
 00487A79    mov         edx,2
 00487A7E    call        0067DCA0
 00487A83    mov         word ptr [ebp-0C0],104
 00487A8C    mov         edx,6B5266
 00487A91    lea         eax,[ebp-58]
 00487A94    call        0067DAB4
 00487A99    inc         dword ptr [ebp-0B4]
 00487A9F    lea         edx,[ebp-58]
 00487AA2    mov         eax,dword ptr [ebp-0F0]
 00487AA8    add         eax,0E
 00487AAB    call        0067DD9C
 00487AB0    push        eax
 00487AB1    dec         dword ptr [ebp-0B4]
 00487AB7    lea         eax,[ebp-58]
 00487ABA    mov         edx,2
 00487ABF    call        0067DCA0
 00487AC4    pop         ecx
 00487AC5    test        cl,cl
>00487AC7    je          00487ADC
 00487AC9    mov         edx,dword ptr [ebp-0F0]
 00487ACF    add         edx,0E
 00487AD2    lea         eax,[ebp-4]
 00487AD5    call        0067DCE4
>00487ADA    jmp         00487B16
 00487ADC    mov         word ptr [ebp-0C0],110
 00487AE5    mov         edx,6B5267
 00487AEA    lea         eax,[ebp-5C]
 00487AED    call        0067DAB4
 00487AF2    inc         dword ptr [ebp-0B4]
 00487AF8    lea         edx,[ebp-5C]
 00487AFB    lea         eax,[ebp-4]
 00487AFE    call        0067DCE4
 00487B03    dec         dword ptr [ebp-0B4]
 00487B09    lea         eax,[ebp-5C]
 00487B0C    mov         edx,2
 00487B11    call        0067DCA0
 00487B16    inc         dword ptr [ebp-0E0]
 00487B1C    mov         ecx,dword ptr [ebp-0E0]
 00487B22    mov         eax,dword ptr [ebp-0E8]
 00487B28    cmp         ecx,eax
>00487B2A    jl          00487840
 00487B30    mov         dl,byte ptr [ebp+14]
 00487B33    test        dl,dl
>00487B35    je          00487B71
 00487B37    mov         word ptr [ebp-0C0],11C
 00487B40    mov         edx,6B5269
 00487B45    lea         eax,[ebp-60]
 00487B48    call        0067DAB4
 00487B4D    inc         dword ptr [ebp-0B4]
 00487B53    lea         edx,[ebp-60]
 00487B56    lea         eax,[ebp-4]
 00487B59    call        0067DCE4
 00487B5E    dec         dword ptr [ebp-0B4]
 00487B64    lea         eax,[ebp-60]
 00487B67    mov         edx,2
 00487B6C    call        0067DCA0
 00487B71    mov         word ptr [ebp-0C0],128
 00487B7A    mov         edx,6B526C
 00487B7F    lea         eax,[ebp-64]
 00487B82    call        0067DAB4
 00487B87    inc         dword ptr [ebp-0B4]
 00487B8D    lea         edx,[ebp-64]
 00487B90    lea         eax,[ebp-4]
 00487B93    call        0067DCE4
 00487B98    dec         dword ptr [ebp-0B4]
 00487B9E    lea         eax,[ebp-64]
 00487BA1    mov         edx,2
 00487BA6    call        0067DCA0
 00487BAB    mov         ecx,dword ptr [ebp-0D4]
 00487BB1    mov         al,byte ptr [ecx+5]
 00487BB4    cmp         al,29
>00487BB6    jne         00487CBD
 00487BBC    mov         word ptr [ebp-0C0],134
 00487BC5    mov         edx,6B526E
 00487BCA    lea         eax,[ebp-68]
 00487BCD    call        0067DAB4
 00487BD2    inc         dword ptr [ebp-0B4]
 00487BD8    lea         edx,[ebp-68]
 00487BDB    lea         eax,[ebp-4]
 00487BDE    call        0067DCE4
 00487BE3    dec         dword ptr [ebp-0B4]
 00487BE9    lea         eax,[ebp-68]
 00487BEC    mov         edx,2
 00487BF1    call        0067DCA0
 00487BF6    mov         word ptr [ebp-0C0],140
 00487BFF    mov         edx,6B5270
 00487C04    lea         eax,[ebp-6C]
 00487C07    call        0067DAB4
 00487C0C    inc         dword ptr [ebp-0B4]
 00487C12    lea         edx,[ebp-6C]
 00487C15    mov         eax,dword ptr [ebp-0D4]
 00487C1B    add         eax,0A
 00487C1E    call        0067DD9C
 00487C23    push        eax
 00487C24    dec         dword ptr [ebp-0B4]
 00487C2A    lea         eax,[ebp-6C]
 00487C2D    mov         edx,2
 00487C32    call        0067DCA0
 00487C37    pop         ecx
 00487C38    test        cl,cl
>00487C3A    je          00487C83
 00487C3C    mov         word ptr [ebp-0C0],14C
 00487C45    lea         eax,[ebp-70]
 00487C48    call        00401EA8
 00487C4D    mov         edx,eax
 00487C4F    inc         dword ptr [ebp-0B4]
 00487C55    mov         eax,dword ptr [ebp-0D4]
 00487C5B    add         eax,0A
 00487C5E    call        00531D20
 00487C63    lea         edx,[ebp-70]
 00487C66    lea         eax,[ebp-4]
 00487C69    call        0067DCE4
 00487C6E    dec         dword ptr [ebp-0B4]
 00487C74    lea         eax,[ebp-70]
 00487C77    mov         edx,2
 00487C7C    call        0067DCA0
>00487C81    jmp         00487CBD
 00487C83    mov         word ptr [ebp-0C0],158
 00487C8C    mov         edx,6B5271
 00487C91    lea         eax,[ebp-74]
 00487C94    call        0067DAB4
 00487C99    inc         dword ptr [ebp-0B4]
 00487C9F    lea         edx,[ebp-74]
 00487CA2    lea         eax,[ebp-4]
 00487CA5    call        0067DCE4
 00487CAA    dec         dword ptr [ebp-0B4]
 00487CB0    lea         eax,[ebp-74]
 00487CB3    mov         edx,2
 00487CB8    call        0067DCA0
 00487CBD    mov         word ptr [ebp-0C0],164
 00487CC6    mov         edx,6B5273
 00487CCB    lea         eax,[ebp-78]
 00487CCE    call        0067DAB4
 00487CD3    inc         dword ptr [ebp-0B4]
 00487CD9    lea         edx,[ebp-78]
 00487CDC    lea         eax,[ebp-4]
 00487CDF    call        0067DCE4
 00487CE4    dec         dword ptr [ebp-0B4]
 00487CEA    lea         eax,[ebp-78]
 00487CED    mov         edx,2
 00487CF2    call        0067DCA0
 00487CF7    mov         ecx,dword ptr [ebp-0D4]
 00487CFD    mov         eax,dword ptr [ecx+1E]
 00487D00    mov         dl,byte ptr [eax]
 00487D02    and         dl,7
 00487D05    mov         byte ptr [ebp-0DA],dl
 00487D0B    mov         cl,byte ptr [ebp-0DA]
 00487D11    dec         cl
>00487D13    je          00487D2E
 00487D15    dec         cl
>00487D17    je          00487D6D
 00487D19    dec         cl
>00487D1B    je          00487DAC
 00487D21    dec         cl
>00487D23    je          00487DF1
>00487D29    jmp         00487E34
 00487D2E    mov         word ptr [ebp-0C0],170
 00487D37    mov         edx,6B5275
 00487D3C    lea         eax,[ebp-7C]
 00487D3F    call        0067DAB4
 00487D44    inc         dword ptr [ebp-0B4]
 00487D4A    lea         edx,[ebp-7C]
 00487D4D    lea         eax,[ebp-4]
 00487D50    call        0067DCE4
 00487D55    dec         dword ptr [ebp-0B4]
 00487D5B    lea         eax,[ebp-7C]
 00487D5E    mov         edx,2
 00487D63    call        0067DCA0
>00487D68    jmp         00487E34
 00487D6D    mov         word ptr [ebp-0C0],17C
 00487D76    mov         edx,6B527D
 00487D7B    lea         eax,[ebp-80]
 00487D7E    call        0067DAB4
 00487D83    inc         dword ptr [ebp-0B4]
 00487D89    lea         edx,[ebp-80]
 00487D8C    lea         eax,[ebp-4]
 00487D8F    call        0067DCE4
 00487D94    dec         dword ptr [ebp-0B4]
 00487D9A    lea         eax,[ebp-80]
 00487D9D    mov         edx,2
 00487DA2    call        0067DCA0
>00487DA7    jmp         00487E34
 00487DAC    mov         word ptr [ebp-0C0],188
 00487DB5    mov         edx,6B5286
 00487DBA    lea         eax,[ebp-84]
 00487DC0    call        0067DAB4
 00487DC5    inc         dword ptr [ebp-0B4]
 00487DCB    lea         edx,[ebp-84]
 00487DD1    lea         eax,[ebp-4]
 00487DD4    call        0067DCE4
 00487DD9    dec         dword ptr [ebp-0B4]
 00487DDF    lea         eax,[ebp-84]
 00487DE5    mov         edx,2
 00487DEA    call        0067DCA0
>00487DEF    jmp         00487E34
 00487DF1    mov         word ptr [ebp-0C0],194
 00487DFA    mov         edx,6B5290
 00487DFF    lea         eax,[ebp-88]
 00487E05    call        0067DAB4
 00487E0A    inc         dword ptr [ebp-0B4]
 00487E10    lea         edx,[ebp-88]
 00487E16    lea         eax,[ebp-4]
 00487E19    call        0067DCE4
 00487E1E    dec         dword ptr [ebp-0B4]
 00487E24    lea         eax,[ebp-88]
 00487E2A    mov         edx,2
 00487E2F    call        0067DCA0
 00487E34    mov         word ptr [ebp-0C0],1A0
 00487E3D    mov         edx,6B529B
 00487E42    lea         eax,[ebp-8]
 00487E45    call        0067DAB4
 00487E4A    inc         dword ptr [ebp-0B4]
 00487E50    mov         word ptr [ebp-0C0],8
 00487E59    mov         cl,byte ptr [ebp-0DA]
 00487E5F    test        cl,cl
>00487E61    jne         00487FB1
 00487E67    xor         eax,eax
 00487E69    mov         dword ptr [ebp-0E0],eax
 00487E6F    mov         edx,dword ptr [ebp-0E0]
 00487E75    mov         ecx,dword ptr [ebp-0E8]
 00487E7B    cmp         edx,ecx
>00487E7D    jge         00487FB1
 00487E83    mov         eax,dword ptr [ebp-0D4]
 00487E89    mov         edx,dword ptr [eax+1E]
 00487E8C    mov         eax,dword ptr [edx+10]
 00487E8F    mov         edx,dword ptr [ebp-0E0]
 00487E95    call        TList.Get
 00487E9A    mov         dword ptr [ebp-0F0],eax
 00487EA0    mov         ecx,dword ptr [ebp-0F0]
 00487EA6    mov         eax,dword ptr [ecx+2]
 00487EA9    test        eax,eax
>00487EAB    jne         00487EF5
 00487EAD    mov         word ptr [ebp-0C0],1AC
 00487EB6    mov         edx,6B529C
 00487EBB    lea         eax,[ebp-8C]
 00487EC1    call        0067DAB4
 00487EC6    inc         dword ptr [ebp-0B4]
 00487ECC    lea         edx,[ebp-8C]
 00487ED2    lea         eax,[ebp-8]
 00487ED5    call        0067DCE4
 00487EDA    dec         dword ptr [ebp-0B4]
 00487EE0    lea         eax,[ebp-8C]
 00487EE6    mov         edx,2
 00487EEB    call        0067DCA0
>00487EF0    jmp         00487F97
 00487EF5    mov         ecx,dword ptr [ebp-0F0]
 00487EFB    mov         eax,dword ptr [ecx+2]
 00487EFE    dec         eax
>00487EFF    jne         00487F46
 00487F01    mov         word ptr [ebp-0C0],1B8
 00487F0A    mov         edx,6B529E
 00487F0F    lea         eax,[ebp-90]
 00487F15    call        0067DAB4
 00487F1A    inc         dword ptr [ebp-0B4]
 00487F20    lea         edx,[ebp-90]
 00487F26    lea         eax,[ebp-8]
 00487F29    call        0067DCE4
 00487F2E    dec         dword ptr [ebp-0B4]
 00487F34    lea         eax,[ebp-90]
 00487F3A    mov         edx,2
 00487F3F    call        0067DCA0
>00487F44    jmp         00487F97
 00487F46    mov         ecx,dword ptr [ebp-0F0]
 00487F4C    mov         eax,dword ptr [ecx+2]
 00487F4F    cmp         eax,2
>00487F52    jne         00487F97
 00487F54    mov         word ptr [ebp-0C0],1C4
 00487F5D    mov         edx,6B52A0
 00487F62    lea         eax,[ebp-94]
 00487F68    call        0067DAB4
 00487F6D    inc         dword ptr [ebp-0B4]
 00487F73    lea         edx,[ebp-94]
 00487F79    lea         eax,[ebp-8]
 00487F7C    call        0067DCE4
 00487F81    dec         dword ptr [ebp-0B4]
 00487F87    lea         eax,[ebp-94]
 00487F8D    mov         edx,2
 00487F92    call        0067DCA0
 00487F97    inc         dword ptr [ebp-0E0]
 00487F9D    mov         ecx,dword ptr [ebp-0E0]
 00487FA3    mov         eax,dword ptr [ebp-0E8]
 00487FA9    cmp         ecx,eax
>00487FAB    jl          00487E83
 00487FB1    mov         dl,byte ptr [ebp+18]
 00487FB4    test        dl,dl
>00487FB6    je          00488197
 00487FBC    mov         word ptr [ebp-0C0],1D0
 00487FC5    mov         edx,6B52A2
 00487FCA    lea         eax,[ebp-98]
 00487FD0    call        0067DAB4
 00487FD5    inc         dword ptr [ebp-0B4]
 00487FDB    lea         edx,[ebp-98]
 00487FE1    lea         eax,[ebp-8]
 00487FE4    call        0067DD9C
 00487FE9    push        eax
 00487FEA    dec         dword ptr [ebp-0B4]
 00487FF0    lea         eax,[ebp-98]
 00487FF6    mov         edx,2
 00487FFB    call        0067DCA0
 00488000    pop         ecx
 00488001    test        cl,cl
>00488003    je          00488052
 00488005    mov         word ptr [ebp-0C0],1DC
 0048800E    lea         eax,[ebp-9C]
 00488014    call        00401EA8
 00488019    mov         ecx,eax
 0048801B    inc         dword ptr [ebp-0B4]
 00488021    lea         edx,[ebp-8]
 00488024    mov         eax,6B52A3
 00488029    call        0067E37C
 0048802E    lea         edx,[ebp-9C]
 00488034    lea         eax,[ebp-4]
 00488037    call        0067DCE4
 0048803C    dec         dword ptr [ebp-0B4]
 00488042    lea         eax,[ebp-9C]
 00488048    mov         edx,2
 0048804D    call        0067DCA0
 00488052    mov         ecx,dword ptr [ebp-0D4]
 00488058    mov         eax,dword ptr [ecx+1E]
 0048805B    cmp         word ptr [eax+6],0
>00488060    je          004880F3
 00488066    mov         word ptr [ebp-0C0],1E8
 0048806F    lea         eax,[ebp-0A0]
 00488075    call        00401EA8
 0048807A    mov         edx,eax
 0048807C    inc         dword ptr [ebp-0B4]
 00488082    mov         ecx,dword ptr [ebp-0D4]
 00488088    mov         eax,dword ptr [ecx+1E]
 0048808B    movzx       eax,word ptr [eax+6]
 0048808F    call        0053164C
 00488094    lea         edx,[ebp-0A0]
 0048809A    push        edx
 0048809B    lea         eax,[ebp-0A4]
 004880A1    call        00401EA8
 004880A6    mov         ecx,eax
 004880A8    inc         dword ptr [ebp-0B4]
 004880AE    mov         eax,6B52A7
 004880B3    pop         edx
 004880B4    call        0067E37C
 004880B9    lea         edx,[ebp-0A4]
 004880BF    lea         eax,[ebp-4]
 004880C2    call        0067DCE4
 004880C7    dec         dword ptr [ebp-0B4]
 004880CD    lea         eax,[ebp-0A4]
 004880D3    mov         edx,2
 004880D8    call        0067DCA0
 004880DD    dec         dword ptr [ebp-0B4]
 004880E3    lea         eax,[ebp-0A0]
 004880E9    mov         edx,2
 004880EE    call        0067DCA0
 004880F3    mov         ecx,dword ptr [ebp-0D4]
 004880F9    mov         eax,dword ptr [ecx+1E]
 004880FC    test        byte ptr [eax+2],80
>00488100    je          00488145
 00488102    mov         word ptr [ebp-0C0],1F4
 0048810B    mov         edx,6B52AC
 00488110    lea         eax,[ebp-0A8]
 00488116    call        0067DAB4
 0048811B    inc         dword ptr [ebp-0B4]
 00488121    lea         edx,[ebp-0A8]
 00488127    lea         eax,[ebp-4]
 0048812A    call        0067DCE4
 0048812F    dec         dword ptr [ebp-0B4]
 00488135    lea         eax,[ebp-0A8]
 0048813B    mov         edx,2
 00488140    call        0067DCA0
 00488145    mov         ecx,dword ptr [ebp-0D4]
 0048814B    mov         eax,dword ptr [ecx+1E]
 0048814E    test        byte ptr [eax+2],40
>00488152    je          00488197
 00488154    mov         word ptr [ebp-0C0],200
 0048815D    mov         edx,6B52AE
 00488162    lea         eax,[ebp-0AC]
 00488168    call        0067DAB4
 0048816D    inc         dword ptr [ebp-0B4]
 00488173    lea         edx,[ebp-0AC]
 00488179    lea         eax,[ebp-4]
 0048817C    call        0067DCE4
 00488181    dec         dword ptr [ebp-0B4]
 00488187    lea         eax,[ebp-0AC]
 0048818D    mov         edx,2
 00488192    call        0067DCA0
 00488197    mov         word ptr [ebp-0C0],20C
 004881A0    lea         edx,[ebp-4]
 004881A3    mov         eax,dword ptr [ebp+8]
 004881A6    call        0067DCD0
 004881AB    mov         eax,dword ptr [ebp+8]
 004881AE    mov         word ptr [ebp-0C0],218
 004881B7    push        eax
 004881B8    dec         dword ptr [ebp-0B4]
 004881BE    lea         eax,[ebp-8]
 004881C1    mov         edx,2
 004881C6    call        0067DCA0
 004881CB    dec         dword ptr [ebp-0B4]
 004881D1    lea         eax,[ebp-4]
 004881D4    mov         edx,2
 004881D9    call        0067DCA0
 004881DE    pop         eax
 004881DF    mov         word ptr [ebp-0C0],20C
 004881E8    inc         dword ptr [ebp-0B4]
 004881EE    mov         edx,dword ptr [ebp-0D0]
 004881F4    mov         dword ptr fs:[0],edx
 004881FB    mov         esp,ebp
 004881FD    pop         ebp
 004881FE    ret         14
end;*}

//00488204
{*procedure sub_00488204(?:?; ?:?; ?:Pointer; ?:?);
begin
 00488204    push        ebp
 00488205    mov         ebp,esp
 00488207    add         esp,0FFFFFF8C
 0048820A    mov         dword ptr [ebp-58],ecx
 0048820D    mov         dword ptr [ebp-54],edx
 00488210    mov         dword ptr [ebp-50],eax
 00488213    mov         eax,6B7CB4
 00488218    call        0066FECC
 0048821D    mov         byte ptr [ebp-59],0
 00488221    xor         edx,edx
 00488223    mov         dword ptr [ebp-70],edx
 00488226    mov         ecx,dword ptr [ebp-50]
 00488229    mov         al,byte ptr [ecx+5]
 0048822C    cmp         al,26
>0048822E    jne         00488247
 00488230    push        6B52B0
 00488235    push        6EA3A0;gvar_006EA3A0
 0048823A    call        006734B4
 0048823F    add         esp,8
 00488242    mov         dword ptr [ebp-70],eax
>00488245    jmp         004882AA
 00488247    mov         edx,dword ptr [ebp-50]
 0048824A    mov         cl,byte ptr [edx+5]
 0048824D    cmp         cl,27
>00488250    jne         00488269
 00488252    push        6B52BC
 00488257    push        6EA3A0;gvar_006EA3A0
 0048825C    call        006734B4
 00488261    add         esp,8
 00488264    mov         dword ptr [ebp-70],eax
>00488267    jmp         004882AA
 00488269    mov         eax,dword ptr [ebp-50]
 0048826C    mov         dl,byte ptr [eax+5]
 0048826F    cmp         dl,29
>00488272    jne         0048828B
 00488274    push        6B52C7
 00488279    push        6EA3A0;gvar_006EA3A0
 0048827E    call        006734B4
 00488283    add         esp,8
 00488286    mov         dword ptr [ebp-70],eax
>00488289    jmp         004882AA
 0048828B    mov         ecx,dword ptr [ebp-50]
 0048828E    mov         al,byte ptr [ecx+5]
 00488291    cmp         al,28
>00488293    jne         004882AA
 00488295    push        6B52D0
 0048829A    push        6EA3A0;gvar_006EA3A0
 0048829F    call        006734B4
 004882A4    add         esp,8
 004882A7    mov         dword ptr [ebp-70],eax
 004882AA    mov         edx,dword ptr [ebp-70]
 004882AD    test        edx,edx
>004882AF    jle         004882CC
 004882B1    push        6B52DA
 004882B6    mov         ecx,6EA3A0;gvar_006EA3A0
 004882BB    mov         eax,dword ptr [ebp-70]
 004882BE    add         ecx,eax
 004882C0    push        ecx
 004882C1    call        006734B4
 004882C6    add         esp,8
 004882C9    add         dword ptr [ebp-70],eax
 004882CC    mov         word ptr [ebp-3C],8
 004882D2    mov         edx,6B52DC
 004882D7    lea         eax,[ebp-4]
 004882DA    call        0067DAB4
 004882DF    inc         dword ptr [ebp-30]
 004882E2    mov         edx,dword ptr [eax]
 004882E4    mov         ecx,dword ptr [ebp-50]
 004882E7    mov         eax,dword ptr [ecx+22]
 004882EA    call        SameText
 004882EF    push        eax
 004882F0    dec         dword ptr [ebp-30]
 004882F3    lea         eax,[ebp-4]
 004882F6    mov         edx,2
 004882FB    call        0067DCA0
 00488300    pop         ecx
 00488301    test        cl,cl
>00488303    je          00488309
 00488305    mov         byte ptr [ebp-59],1
 00488309    mov         word ptr [ebp-3C],14
 0048830F    mov         edx,6B52EB
 00488314    lea         eax,[ebp-8]
 00488317    call        0067DAB4
 0048831C    inc         dword ptr [ebp-30]
 0048831F    lea         edx,[ebp-8]
 00488322    mov         eax,dword ptr [ebp-50]
 00488325    add         eax,22
 00488328    call        0067DD9C
 0048832D    push        eax
 0048832E    dec         dword ptr [ebp-30]
 00488331    lea         eax,[ebp-8]
 00488334    mov         edx,2
 00488339    call        0067DCA0
 0048833E    pop         ecx
 0048833F    test        cl,cl
>00488341    je          00488456
 00488347    mov         al,byte ptr [ebp-59]
 0048834A    test        al,al
>0048834C    jne         004883A5
 0048834E    mov         word ptr [ebp-3C],20
 00488354    lea         eax,[ebp-0C]
 00488357    call        00401EA8
 0048835C    mov         edx,eax
 0048835E    inc         dword ptr [ebp-30]
 00488361    mov         eax,dword ptr [ebp-50]
 00488364    add         eax,22
 00488367    call        005320E4
 0048836C    lea         eax,[ebp-0C]
 0048836F    call        00403C0C
 00488374    push        eax
 00488375    push        6B52EC
 0048837A    mov         edx,6EA3A0;gvar_006EA3A0
 0048837F    mov         ecx,dword ptr [ebp-70]
 00488382    add         edx,ecx
 00488384    push        edx
 00488385    call        006734B4
 0048838A    add         esp,0C
 0048838D    add         dword ptr [ebp-70],eax
 00488390    dec         dword ptr [ebp-30]
 00488393    lea         eax,[ebp-0C]
 00488396    mov         edx,2
 0048839B    call        0067DCA0
>004883A0    jmp         00488477
 004883A5    mov         word ptr [ebp-3C],2C
 004883AB    mov         edx,6B52EF
 004883B0    lea         eax,[ebp-10]
 004883B3    call        0067DAB4
 004883B8    inc         dword ptr [ebp-30]
 004883BB    lea         edx,[ebp-10]
 004883BE    mov         eax,dword ptr [ebp-58]
 004883C1    add         eax,0A
 004883C4    call        0067DD9C
 004883C9    push        eax
 004883CA    dec         dword ptr [ebp-30]
 004883CD    lea         eax,[ebp-10]
 004883D0    mov         edx,2
 004883D5    call        0067DCA0
 004883DA    pop         ecx
 004883DB    test        cl,cl
>004883DD    je          00488433
 004883DF    mov         word ptr [ebp-3C],38
 004883E5    lea         eax,[ebp-14]
 004883E8    call        00401EA8
 004883ED    mov         edx,eax
 004883EF    inc         dword ptr [ebp-30]
 004883F2    mov         eax,dword ptr [ebp-58]
 004883F5    add         eax,0A
 004883F8    call        005320E4
 004883FD    lea         eax,[ebp-14]
 00488400    call        00403C0C
 00488405    push        eax
 00488406    push        6B52F0
 0048840B    mov         edx,6EA3A0;gvar_006EA3A0
 00488410    mov         ecx,dword ptr [ebp-70]
 00488413    add         edx,ecx
 00488415    push        edx
 00488416    call        006734B4
 0048841B    add         esp,0C
 0048841E    add         dword ptr [ebp-70],eax
 00488421    dec         dword ptr [ebp-30]
 00488424    lea         eax,[ebp-14]
 00488427    mov         edx,2
 0048842C    call        0067DCA0
>00488431    jmp         00488477
 00488433    mov         ecx,dword ptr [ebp-58]
 00488436    push        dword ptr [ecx+2]
 00488439    push        6B52F3
 0048843E    mov         eax,6EA3A0;gvar_006EA3A0
 00488443    mov         edx,dword ptr [ebp-70]
 00488446    add         eax,edx
 00488448    push        eax
 00488449    call        006734B4
 0048844E    add         esp,0C
 00488451    add         dword ptr [ebp-70],eax
>00488454    jmp         00488477
 00488456    mov         ecx,dword ptr [ebp-58]
 00488459    push        dword ptr [ecx+2]
 0048845C    push        6B52F7
 00488461    mov         eax,6EA3A0;gvar_006EA3A0
 00488466    mov         edx,dword ptr [ebp-70]
 00488469    add         eax,edx
 0048846B    push        eax
 0048846C    call        006734B4
 00488471    add         esp,0C
 00488474    add         dword ptr [ebp-70],eax
 00488477    mov         ecx,dword ptr [ebp-50]
 0048847A    mov         eax,dword ptr [ecx+1E]
 0048847D    mov         edx,dword ptr [eax+10]
 00488480    test        edx,edx
>00488482    je          00488492
 00488484    mov         ecx,dword ptr [ebp-50]
 00488487    mov         eax,dword ptr [ecx+1E]
 0048848A    mov         edx,dword ptr [eax+10]
 0048848D    mov         ecx,dword ptr [edx+8]
>00488490    jmp         00488494
 00488492    xor         ecx,ecx
 00488494    mov         dword ptr [ebp-68],ecx
 00488497    mov         dword ptr [ebp-64],ecx
 0048849A    xor         eax,eax
 0048849C    mov         dword ptr [ebp-6C],eax
 0048849F    mov         edx,dword ptr [ebp-64]
 004884A2    test        edx,edx
>004884A4    je          004886EC
 004884AA    mov         eax,dword ptr [ebp-50]
 004884AD    mov         edx,dword ptr [eax+1E]
 004884B0    test        dword ptr [edx],38200000
>004884B6    je          004884DD
 004884B8    mov         dword ptr [ebp-6C],1
 004884BF    dec         dword ptr [ebp-64]
 004884C2    mov         ecx,dword ptr [ebp-50]
 004884C5    mov         al,byte ptr [ecx+5]
 004884C8    cmp         al,26
>004884CA    je          004884D7
 004884CC    mov         edx,dword ptr [ebp-50]
 004884CF    mov         cl,byte ptr [edx+5]
 004884D2    cmp         cl,27
>004884D5    jne         004884DD
 004884D7    inc         dword ptr [ebp-6C]
 004884DA    dec         dword ptr [ebp-64]
 004884DD    mov         eax,dword ptr [ebp-64]
 004884E0    test        eax,eax
>004884E2    je          004886EC
 004884E8    push        6B52FB
 004884ED    mov         edx,6EA3A0;gvar_006EA3A0
 004884F2    mov         ecx,dword ptr [ebp-70]
 004884F5    add         edx,ecx
 004884F7    push        edx
 004884F8    call        006734B4
 004884FD    add         esp,8
 00488500    add         dword ptr [ebp-70],eax
 00488503    mov         eax,dword ptr [ebp-50]
 00488506    mov         edx,dword ptr [eax+1E]
 00488509    mov         cl,byte ptr [edx]
 0048850B    and         cl,7
 0048850E    mov         byte ptr [ebp-5A],cl
 00488511    mov         eax,dword ptr [ebp-6C]
 00488514    mov         dword ptr [ebp-60],eax
 00488517    mov         edx,dword ptr [ebp-60]
 0048851A    mov         ecx,dword ptr [ebp-68]
 0048851D    cmp         edx,ecx
>0048851F    jge         004886D1
 00488525    mov         eax,dword ptr [ebp-60]
 00488528    mov         edx,dword ptr [ebp-6C]
 0048852B    cmp         eax,edx
>0048852D    je          0048854A
 0048852F    push        6B52FD
 00488534    mov         ecx,6EA3A0;gvar_006EA3A0
 00488539    mov         eax,dword ptr [ebp-70]
 0048853C    add         ecx,eax
 0048853E    push        ecx
 0048853F    call        006734B4
 00488544    add         esp,8
 00488547    add         dword ptr [ebp-70],eax
 0048854A    mov         edx,dword ptr [ebp-50]
 0048854D    mov         ecx,dword ptr [edx+1E]
 00488550    mov         eax,dword ptr [ecx+10]
 00488553    mov         edx,dword ptr [ebp-60]
 00488556    call        TList.Get
 0048855B    mov         dword ptr [ebp-74],eax
 0048855E    mov         ecx,dword ptr [ebp-74]
 00488561    mov         al,byte ptr [ecx]
 00488563    cmp         al,22
>00488565    jne         00488584
 00488567    push        6B5300
 0048856C    mov         edx,6EA3A0;gvar_006EA3A0
 00488571    mov         ecx,dword ptr [ebp-70]
 00488574    add         edx,ecx
 00488576    push        edx
 00488577    call        006734B4
 0048857C    add         esp,8
 0048857F    add         dword ptr [ebp-70],eax
>00488582    jmp         004885A9
 00488584    mov         eax,dword ptr [ebp-74]
 00488587    mov         dl,byte ptr [eax]
 00488589    cmp         dl,23
>0048858C    jne         004885A9
 0048858E    push        6B5305
 00488593    mov         ecx,6EA3A0;gvar_006EA3A0
 00488598    mov         eax,dword ptr [ebp-70]
 0048859B    add         ecx,eax
 0048859D    push        ecx
 0048859E    call        006734B4
 004885A3    add         esp,8
 004885A6    add         dword ptr [ebp-70],eax
 004885A9    mov         word ptr [ebp-3C],44
 004885AF    mov         edx,6B530C
 004885B4    lea         eax,[ebp-18]
 004885B7    call        0067DAB4
 004885BC    inc         dword ptr [ebp-30]
 004885BF    lea         edx,[ebp-18]
 004885C2    mov         eax,dword ptr [ebp-74]
 004885C5    add         eax,0A
 004885C8    call        0067DD9C
 004885CD    push        eax
 004885CE    dec         dword ptr [ebp-30]
 004885D1    lea         eax,[ebp-18]
 004885D4    mov         edx,2
 004885D9    call        0067DCA0
 004885DE    pop         ecx
 004885DF    test        cl,cl
>004885E1    je          0048860C
 004885E3    mov         eax,dword ptr [ebp-74]
 004885E6    add         eax,0A
 004885E9    call        00403C0C
 004885EE    push        eax
 004885EF    push        6B530D
 004885F4    mov         edx,6EA3A0;gvar_006EA3A0
 004885F9    mov         ecx,dword ptr [ebp-70]
 004885FC    add         edx,ecx
 004885FE    push        edx
 004885FF    call        006734B4
 00488604    add         esp,0C
 00488607    add         dword ptr [ebp-70],eax
>0048860A    jmp         00488627
 0048860C    push        6B5310
 00488611    mov         eax,6EA3A0;gvar_006EA3A0
 00488616    mov         edx,dword ptr [ebp-70]
 00488619    add         eax,edx
 0048861B    push        eax
 0048861C    call        006734B4
 00488621    add         esp,8
 00488624    add         dword ptr [ebp-70],eax
 00488627    push        6B5312
 0048862C    mov         ecx,6EA3A0;gvar_006EA3A0
 00488631    mov         eax,dword ptr [ebp-70]
 00488634    add         ecx,eax
 00488636    push        ecx
 00488637    call        006734B4
 0048863C    add         esp,8
 0048863F    add         dword ptr [ebp-70],eax
 00488642    mov         word ptr [ebp-3C],50
 00488648    mov         edx,6B5314
 0048864D    lea         eax,[ebp-1C]
 00488650    call        0067DAB4
 00488655    inc         dword ptr [ebp-30]
 00488658    lea         edx,[ebp-1C]
 0048865B    mov         eax,dword ptr [ebp-74]
 0048865E    add         eax,0E
 00488661    call        0067DD9C
 00488666    push        eax
 00488667    dec         dword ptr [ebp-30]
 0048866A    lea         eax,[ebp-1C]
 0048866D    mov         edx,2
 00488672    call        0067DCA0
 00488677    pop         ecx
 00488678    test        cl,cl
>0048867A    je          004886A5
 0048867C    mov         eax,dword ptr [ebp-74]
 0048867F    add         eax,0E
 00488682    call        00403C0C
 00488687    push        eax
 00488688    push        6B5315
 0048868D    mov         edx,6EA3A0;gvar_006EA3A0
 00488692    mov         ecx,dword ptr [ebp-70]
 00488695    add         edx,ecx
 00488697    push        edx
 00488698    call        006734B4
 0048869D    add         esp,0C
 004886A0    add         dword ptr [ebp-70],eax
>004886A3    jmp         004886C0
 004886A5    push        6B5318
 004886AA    mov         eax,6EA3A0;gvar_006EA3A0
 004886AF    mov         edx,dword ptr [ebp-70]
 004886B2    add         eax,edx
 004886B4    push        eax
 004886B5    call        006734B4
 004886BA    add         esp,8
 004886BD    add         dword ptr [ebp-70],eax
 004886C0    inc         dword ptr [ebp-60]
 004886C3    mov         ecx,dword ptr [ebp-60]
 004886C6    mov         eax,dword ptr [ebp-68]
 004886C9    cmp         ecx,eax
>004886CB    jl          00488525
 004886D1    push        6B531A
 004886D6    mov         edx,6EA3A0;gvar_006EA3A0
 004886DB    mov         ecx,dword ptr [ebp-70]
 004886DE    add         edx,ecx
 004886E0    push        edx
 004886E1    call        006734B4
 004886E6    add         esp,8
 004886E9    add         dword ptr [ebp-70],eax
 004886EC    mov         eax,dword ptr [ebp-50]
 004886EF    mov         dl,byte ptr [eax+5]
 004886F2    cmp         dl,29
>004886F5    jne         004887BF
 004886FB    push        6B531C
 00488700    mov         ecx,6EA3A0;gvar_006EA3A0
 00488705    mov         eax,dword ptr [ebp-70]
 00488708    add         ecx,eax
 0048870A    push        ecx
 0048870B    call        006734B4
 00488710    add         esp,8
 00488713    add         dword ptr [ebp-70],eax
 00488716    mov         word ptr [ebp-3C],5C
 0048871C    mov         edx,6B531E
 00488721    lea         eax,[ebp-20]
 00488724    call        0067DAB4
 00488729    inc         dword ptr [ebp-30]
 0048872C    lea         edx,[ebp-20]
 0048872F    mov         eax,dword ptr [ebp-50]
 00488732    add         eax,0A
 00488735    call        0067DD9C
 0048873A    push        eax
 0048873B    dec         dword ptr [ebp-30]
 0048873E    lea         eax,[ebp-20]
 00488741    mov         edx,2
 00488746    call        0067DCA0
 0048874B    pop         ecx
 0048874C    test        cl,cl
>0048874E    je          004887A4
 00488750    mov         word ptr [ebp-3C],68
 00488756    lea         eax,[ebp-24]
 00488759    call        00401EA8
 0048875E    mov         edx,eax
 00488760    inc         dword ptr [ebp-30]
 00488763    mov         eax,dword ptr [ebp-50]
 00488766    add         eax,0A
 00488769    call        00531D20
 0048876E    lea         eax,[ebp-24]
 00488771    call        00403C0C
 00488776    push        eax
 00488777    push        6B531F
 0048877C    mov         edx,6EA3A0;gvar_006EA3A0
 00488781    mov         ecx,dword ptr [ebp-70]
 00488784    add         edx,ecx
 00488786    push        edx
 00488787    call        006734B4
 0048878C    add         esp,0C
 0048878F    add         dword ptr [ebp-70],eax
 00488792    dec         dword ptr [ebp-30]
 00488795    lea         eax,[ebp-24]
 00488798    mov         edx,2
 0048879D    call        0067DCA0
>004887A2    jmp         004887BF
 004887A4    push        6B5322
 004887A9    mov         ecx,6EA3A0;gvar_006EA3A0
 004887AE    mov         eax,dword ptr [ebp-70]
 004887B1    add         ecx,eax
 004887B3    push        ecx
 004887B4    call        006734B4
 004887B9    add         esp,8
 004887BC    add         dword ptr [ebp-70],eax
 004887BF    push        6B5324
 004887C4    mov         edx,6EA3A0;gvar_006EA3A0
 004887C9    mov         ecx,dword ptr [ebp-70]
 004887CC    add         edx,ecx
 004887CE    push        edx
 004887CF    call        006734B4
 004887D4    add         esp,8
 004887D7    add         dword ptr [ebp-70],eax
 004887DA    mov         al,byte ptr [ebp-59]
 004887DD    test        al,al
>004887DF    je          00488801
 004887E1    push        6B532F
 004887E6    mov         edx,6EA3A0;gvar_006EA3A0
 004887EB    mov         ecx,dword ptr [ebp-70]
 004887EE    add         edx,ecx
 004887F0    push        edx
 004887F1    call        006734B4
 004887F6    add         esp,8
 004887F9    add         dword ptr [ebp-70],eax
>004887FC    jmp         00488888
 00488801    mov         al,byte ptr [ebp-5A]
 00488804    dec         al
>00488806    je          00488816
 00488808    dec         al
>0048880A    je          00488833
 0048880C    dec         al
>0048880E    je          00488850
 00488810    dec         al
>00488812    je          0048886D
>00488814    jmp         00488888
 00488816    push        6B533A
 0048881B    mov         edx,6EA3A0;gvar_006EA3A0
 00488820    mov         ecx,dword ptr [ebp-70]
 00488823    add         edx,ecx
 00488825    push        edx
 00488826    call        006734B4
 0048882B    add         esp,8
 0048882E    add         dword ptr [ebp-70],eax
>00488831    jmp         00488888
 00488833    push        6B5342
 00488838    mov         eax,6EA3A0;gvar_006EA3A0
 0048883D    mov         edx,dword ptr [ebp-70]
 00488840    add         eax,edx
 00488842    push        eax
 00488843    call        006734B4
 00488848    add         esp,8
 0048884B    add         dword ptr [ebp-70],eax
>0048884E    jmp         00488888
 00488850    push        6B534B
 00488855    mov         ecx,6EA3A0;gvar_006EA3A0
 0048885A    mov         eax,dword ptr [ebp-70]
 0048885D    add         ecx,eax
 0048885F    push        ecx
 00488860    call        006734B4
 00488865    add         esp,8
 00488868    add         dword ptr [ebp-70],eax
>0048886B    jmp         00488888
 0048886D    push        6B5355
 00488872    mov         edx,6EA3A0;gvar_006EA3A0
 00488877    mov         ecx,dword ptr [ebp-70]
 0048887A    add         edx,ecx
 0048887C    push        edx
 0048887D    call        006734B4
 00488882    add         esp,8
 00488885    add         dword ptr [ebp-70],eax
 00488888    mov         word ptr [ebp-3C],74
 0048888E    mov         edx,6EA3A0;gvar_006EA3A0
 00488893    lea         eax,[ebp-28]
 00488896    mov         ecx,dword ptr [ebp-70]
 00488899    call        0067DB28
 0048889E    mov         edx,eax
 004888A0    inc         dword ptr [ebp-30]
 004888A3    mov         eax,dword ptr [ebp+8]
 004888A6    call        0067DCD0
 004888AB    mov         eax,dword ptr [ebp+8]
 004888AE    mov         word ptr [ebp-3C],80
 004888B4    push        eax
 004888B5    dec         dword ptr [ebp-30]
 004888B8    lea         eax,[ebp-28]
 004888BB    mov         edx,2
 004888C0    call        0067DCA0
 004888C5    pop         eax
 004888C6    mov         word ptr [ebp-3C],74
 004888CC    inc         dword ptr [ebp-30]
 004888CF    mov         edx,dword ptr [ebp-4C]
 004888D2    mov         dword ptr fs:[0],edx
 004888D9    mov         esp,ebp
 004888DB    pop         ebp
 004888DC    ret         4
end;*}

//004888E0
{*procedure sub_004888E0(?:?; ?:dword; ?:?; ?:?; ?:?);
begin
 004888E0    push        ebp
 004888E1    mov         ebp,esp
 004888E3    add         esp,0FFFFFF54
 004888E9    mov         dword ptr [ebp-90],ecx
 004888EF    mov         dword ptr [ebp-8C],edx
 004888F5    mov         dword ptr [ebp-88],eax
 004888FB    mov         eax,6B7EF8
 00488900    call        0066FECC
 00488905    mov         dword ptr [ebp-68],1
 0048890C    lea         edx,[ebp+0C]
 0048890F    lea         eax,[ebp+0C]
 00488912    call        0067DAEC
 00488917    inc         dword ptr [ebp-68]
 0048891A    mov         word ptr [ebp-74],8
 00488920    xor         edx,edx
 00488922    mov         dword ptr [ebp-0A8],edx
 00488928    mov         word ptr [ebp-74],14
 0048892E    lea         eax,[ebp-4]
 00488931    call        00401EA8
 00488936    inc         dword ptr [ebp-68]
 00488939    mov         word ptr [ebp-74],8
 0048893F    mov         word ptr [ebp-74],20
 00488945    mov         edx,6B5360
 0048894A    lea         eax,[ebp-8]
 0048894D    call        0067DAB4
 00488952    inc         dword ptr [ebp-68]
 00488955    lea         edx,[ebp-8]
 00488958    mov         eax,dword ptr [ebp-88]
 0048895E    add         eax,22
 00488961    call        0067DD9C
 00488966    push        eax
 00488967    dec         dword ptr [ebp-68]
 0048896A    lea         eax,[ebp-8]
 0048896D    mov         edx,2
 00488972    call        0067DCA0
 00488977    pop         ecx
 00488978    test        cl,cl
>0048897A    je          0048898F
 0048897C    mov         edx,dword ptr [ebp-88]
 00488982    add         edx,22
 00488985    lea         eax,[ebp-4]
 00488988    call        0067DCD0
>0048898D    jmp         004889C8
 0048898F    mov         word ptr [ebp-74],2C
 00488995    lea         eax,[ebp-0C]
 00488998    call        00401EA8
 0048899D    mov         edx,eax
 0048899F    inc         dword ptr [ebp-68]
 004889A2    mov         eax,dword ptr [ebp-8C]
 004889A8    call        005315B0
 004889AD    lea         edx,[ebp-0C]
 004889B0    lea         eax,[ebp-4]
 004889B3    call        0067DCD0
 004889B8    dec         dword ptr [ebp-68]
 004889BB    lea         eax,[ebp-0C]
 004889BE    mov         edx,2
 004889C3    call        0067DCA0
 004889C8    mov         ecx,dword ptr [ebp-88]
 004889CE    mov         eax,dword ptr [ecx+1E]
 004889D1    mov         edx,dword ptr [eax+10]
 004889D4    test        edx,edx
>004889D6    je          004889E9
 004889D8    mov         ecx,dword ptr [ebp-88]
 004889DE    mov         eax,dword ptr [ecx+1E]
 004889E1    mov         edx,dword ptr [eax+10]
 004889E4    mov         ecx,dword ptr [edx+8]
>004889E7    jmp         004889EB
 004889E9    xor         ecx,ecx
 004889EB    mov         dword ptr [ebp-0A0],ecx
 004889F1    mov         dword ptr [ebp-9C],ecx
 004889F7    xor         eax,eax
 004889F9    mov         dword ptr [ebp-0A4],eax
 004889FF    mov         edx,dword ptr [ebp-88]
 00488A05    mov         al,byte ptr [edx+5]
 00488A08    cmp         al,26
>00488A0A    je          00488A1A
 00488A0C    mov         edx,dword ptr [ebp-88]
 00488A12    mov         cl,byte ptr [edx+5]
 00488A15    cmp         cl,27
>00488A18    jne         00488A30
 00488A1A    mov         dword ptr [ebp-0A4],2
 00488A24    sub         dword ptr [ebp-9C],2
>00488A2B    jmp         00488BDF
 00488A30    mov         eax,dword ptr [ebp-88]
 00488A36    mov         edx,dword ptr [eax+1E]
 00488A39    test        dword ptr [edx],38200000
>00488A3F    je          00488BDF
 00488A45    mov         ecx,dword ptr [ebp-9C]
 00488A4B    test        ecx,ecx
>00488A4D    jne         00488B1E
 00488A53    push        12
 00488A55    call        0066EAE4
 00488A5A    pop         ecx
 00488A5B    mov         dword ptr [ebp-10],eax
 00488A5E    test        eax,eax
>00488A60    je          00488A93
 00488A62    mov         word ptr [ebp-74],44
 00488A68    mov         eax,dword ptr [ebp-10]
 00488A6B    add         eax,0A
 00488A6E    call        00401EA8
 00488A73    inc         dword ptr [ebp-68]
 00488A76    mov         eax,dword ptr [ebp-10]
 00488A79    add         eax,0E
 00488A7C    call        00401EA8
 00488A81    inc         dword ptr [ebp-68]
 00488A84    add         dword ptr [ebp-68],0FFFFFFFE
 00488A88    mov         word ptr [ebp-74],38
 00488A8E    mov         edx,dword ptr [ebp-10]
>00488A91    jmp         00488A96
 00488A93    mov         edx,dword ptr [ebp-10]
 00488A96    mov         dword ptr [ebp-0AC],edx
 00488A9C    mov         eax,dword ptr [ebp-0AC]
 00488AA2    mov         byte ptr [eax],21
 00488AA5    mov         ecx,dword ptr [ebp-0AC]
 00488AAB    xor         eax,eax
 00488AAD    mov         dword ptr [ecx+2],eax
 00488AB0    mov         edx,dword ptr [ebp-0AC]
 00488AB6    mov         dword ptr [edx+6],4
 00488ABD    mov         word ptr [ebp-74],50
 00488AC3    mov         edx,6B5361
 00488AC8    lea         eax,[ebp-14]
 00488ACB    call        0067DAB4
 00488AD0    inc         dword ptr [ebp-68]
 00488AD3    lea         edx,[ebp-14]
 00488AD6    mov         eax,dword ptr [ebp-0AC]
 00488ADC    add         eax,0A
 00488ADF    call        0067DCD0
 00488AE4    dec         dword ptr [ebp-68]
 00488AE7    lea         eax,[ebp-14]
 00488AEA    mov         edx,2
 00488AEF    call        0067DCA0
 00488AF4    lea         edx,[ebp+0C]
 00488AF7    mov         eax,dword ptr [ebp-0AC]
 00488AFD    add         eax,0E
 00488B00    call        0067DCD0
 00488B05    mov         ecx,dword ptr [ebp-88]
 00488B0B    mov         eax,dword ptr [ecx+1E]
 00488B0E    mov         edx,dword ptr [ebp-0AC]
 00488B14    call        004839E8
>00488B19    jmp         00488BD5
 00488B1E    mov         word ptr [ebp-74],5C
 00488B24    mov         edx,6B5366
 00488B29    lea         eax,[ebp-18]
 00488B2C    call        0067DAB4
 00488B31    inc         dword ptr [ebp-68]
 00488B34    lea         edx,[ebp-18]
 00488B37    lea         eax,[ebp+0C]
 00488B3A    call        0067DD9C
 00488B3F    push        eax
 00488B40    dec         dword ptr [ebp-68]
 00488B43    lea         eax,[ebp-18]
 00488B46    mov         edx,2
 00488B4B    call        0067DCA0
 00488B50    pop         ecx
 00488B51    test        cl,cl
>00488B53    je          00488BCF
 00488B55    mov         eax,dword ptr [ebp-88]
 00488B5B    mov         edx,dword ptr [eax+1E]
 00488B5E    mov         eax,dword ptr [edx+10]
 00488B61    xor         edx,edx
 00488B63    call        TList.Get
 00488B68    mov         dword ptr [ebp-0AC],eax
 00488B6E    mov         word ptr [ebp-74],68
 00488B74    mov         edx,6B5367
 00488B79    lea         eax,[ebp-1C]
 00488B7C    call        0067DAB4
 00488B81    inc         dword ptr [ebp-68]
 00488B84    lea         edx,[ebp-1C]
 00488B87    mov         eax,dword ptr [ebp-0AC]
 00488B8D    add         eax,0A
 00488B90    call        0067DCD0
 00488B95    dec         dword ptr [ebp-68]
 00488B98    lea         eax,[ebp-1C]
 00488B9B    mov         edx,2
 00488BA0    call        0067DCA0
 00488BA5    lea         edx,[ebp+0C]
 00488BA8    mov         eax,dword ptr [ebp-0AC]
 00488BAE    add         eax,0E
 00488BB1    call        0067DCD0
 00488BB6    mov         ecx,dword ptr [ebp-88]
 00488BBC    mov         eax,dword ptr [ecx+1E]
 00488BBF    mov         eax,dword ptr [eax+10]
 00488BC2    mov         ecx,dword ptr [ebp-0AC]
 00488BC8    xor         edx,edx
 00488BCA    call        TList.Put
 00488BCF    dec         dword ptr [ebp-9C]
 00488BD5    mov         dword ptr [ebp-0A4],1
 00488BDF    mov         eax,dword ptr [ebp-9C]
 00488BE5    test        eax,eax
>00488BE7    jle         00488C1A
 00488BE9    mov         word ptr [ebp-74],74
 00488BEF    mov         edx,6B536C
 00488BF4    lea         eax,[ebp-20]
 00488BF7    call        0067DAB4
 00488BFC    inc         dword ptr [ebp-68]
 00488BFF    lea         edx,[ebp-20]
 00488C02    lea         eax,[ebp-4]
 00488C05    call        0067DCE4
 00488C0A    dec         dword ptr [ebp-68]
 00488C0D    lea         eax,[ebp-20]
 00488C10    mov         edx,2
 00488C15    call        0067DCA0
 00488C1A    mov         ecx,dword ptr [ebp-88]
 00488C20    mov         eax,dword ptr [ecx+1E]
 00488C23    mov         dl,byte ptr [eax]
 00488C25    and         dl,7
 00488C28    mov         byte ptr [ebp-91],dl
 00488C2E    mov         ecx,dword ptr [ebp-0A4]
 00488C34    mov         dword ptr [ebp-98],ecx
 00488C3A    mov         eax,dword ptr [ebp-98]
 00488C40    mov         edx,dword ptr [ebp-0A0]
 00488C46    cmp         eax,edx
>00488C48    jge         00488EFE
 00488C4E    mov         ecx,dword ptr [ebp-98]
 00488C54    mov         eax,dword ptr [ebp-0A4]
 00488C5A    cmp         ecx,eax
>00488C5C    je          00488C8F
 00488C5E    mov         word ptr [ebp-74],80
 00488C64    mov         edx,6B5370
 00488C69    lea         eax,[ebp-24]
 00488C6C    call        0067DAB4
 00488C71    inc         dword ptr [ebp-68]
 00488C74    lea         edx,[ebp-24]
 00488C77    lea         eax,[ebp-4]
 00488C7A    call        0067DCE4
 00488C7F    dec         dword ptr [ebp-68]
 00488C82    lea         eax,[ebp-24]
 00488C85    mov         edx,2
 00488C8A    call        0067DCA0
 00488C8F    mov         ecx,dword ptr [ebp-88]
 00488C95    mov         eax,dword ptr [ecx+1E]
 00488C98    mov         eax,dword ptr [eax+10]
 00488C9B    mov         edx,dword ptr [ebp-98]
 00488CA1    call        TList.Get
 00488CA6    mov         dword ptr [ebp-0AC],eax
 00488CAC    mov         ecx,dword ptr [ebp-0AC]
 00488CB2    mov         al,byte ptr [ecx]
 00488CB4    cmp         al,22
>00488CB6    jne         00488CEB
 00488CB8    mov         word ptr [ebp-74],8C
 00488CBE    mov         edx,6B5374
 00488CC3    lea         eax,[ebp-28]
 00488CC6    call        0067DAB4
 00488CCB    inc         dword ptr [ebp-68]
 00488CCE    lea         edx,[ebp-28]
 00488CD1    lea         eax,[ebp-4]
 00488CD4    call        0067DCE4
 00488CD9    dec         dword ptr [ebp-68]
 00488CDC    lea         eax,[ebp-28]
 00488CDF    mov         edx,2
 00488CE4    call        0067DCA0
>00488CE9    jmp         00488D28
 00488CEB    mov         ecx,dword ptr [ebp-0AC]
 00488CF1    mov         al,byte ptr [ecx]
 00488CF3    cmp         al,23
>00488CF5    jne         00488D28
 00488CF7    mov         word ptr [ebp-74],98
 00488CFD    mov         edx,6B5379
 00488D02    lea         eax,[ebp-2C]
 00488D05    call        0067DAB4
 00488D0A    inc         dword ptr [ebp-68]
 00488D0D    lea         edx,[ebp-2C]
 00488D10    lea         eax,[ebp-4]
 00488D13    call        0067DCE4
 00488D18    dec         dword ptr [ebp-68]
 00488D1B    lea         eax,[ebp-2C]
 00488D1E    mov         edx,2
 00488D23    call        0067DCA0
 00488D28    mov         word ptr [ebp-74],0A4
 00488D2E    mov         edx,6B5380
 00488D33    lea         eax,[ebp-30]
 00488D36    call        0067DAB4
 00488D3B    inc         dword ptr [ebp-68]
 00488D3E    lea         edx,[ebp-30]
 00488D41    mov         eax,dword ptr [ebp-0AC]
 00488D47    add         eax,0A
 00488D4A    call        0067DD9C
 00488D4F    push        eax
 00488D50    dec         dword ptr [ebp-68]
 00488D53    lea         eax,[ebp-30]
 00488D56    mov         edx,2
 00488D5B    call        0067DCA0
 00488D60    pop         ecx
 00488D61    test        cl,cl
>00488D63    je          00488D78
 00488D65    mov         edx,dword ptr [ebp-0AC]
 00488D6B    add         edx,0A
 00488D6E    lea         eax,[ebp-4]
 00488D71    call        0067DCE4
>00488D76    jmp         00488DA9
 00488D78    mov         word ptr [ebp-74],0B0
 00488D7E    mov         edx,6B5381
 00488D83    lea         eax,[ebp-34]
 00488D86    call        0067DAB4
 00488D8B    inc         dword ptr [ebp-68]
 00488D8E    lea         edx,[ebp-34]
 00488D91    lea         eax,[ebp-4]
 00488D94    call        0067DCE4
 00488D99    dec         dword ptr [ebp-68]
 00488D9C    lea         eax,[ebp-34]
 00488D9F    mov         edx,2
 00488DA4    call        0067DCA0
 00488DA9    mov         word ptr [ebp-74],0BC
 00488DAF    mov         edx,6B5383
 00488DB4    lea         eax,[ebp-38]
 00488DB7    call        0067DAB4
 00488DBC    inc         dword ptr [ebp-68]
 00488DBF    lea         edx,[ebp-38]
 00488DC2    lea         eax,[ebp-4]
 00488DC5    call        0067DCE4
 00488DCA    dec         dword ptr [ebp-68]
 00488DCD    lea         eax,[ebp-38]
 00488DD0    mov         edx,2
 00488DD5    call        0067DCA0
 00488DDA    mov         word ptr [ebp-74],0C8
 00488DE0    mov         edx,6B5385
 00488DE5    lea         eax,[ebp-3C]
 00488DE8    call        0067DAB4
 00488DED    inc         dword ptr [ebp-68]
 00488DF0    lea         edx,[ebp-3C]
 00488DF3    mov         eax,dword ptr [ebp-0AC]
 00488DF9    add         eax,0E
 00488DFC    call        0067DD9C
 00488E01    push        eax
 00488E02    dec         dword ptr [ebp-68]
 00488E05    lea         eax,[ebp-3C]
 00488E08    mov         edx,2
 00488E0D    call        0067DCA0
 00488E12    pop         ecx
 00488E13    test        cl,cl
>00488E15    je          00488E2A
 00488E17    mov         edx,dword ptr [ebp-0AC]
 00488E1D    add         edx,0E
 00488E20    lea         eax,[ebp-4]
 00488E23    call        0067DCE4
>00488E28    jmp         00488E5B
 00488E2A    mov         word ptr [ebp-74],0D4
 00488E30    mov         edx,6B5386
 00488E35    lea         eax,[ebp-40]
 00488E38    call        0067DAB4
 00488E3D    inc         dword ptr [ebp-68]
 00488E40    lea         edx,[ebp-40]
 00488E43    lea         eax,[ebp-4]
 00488E46    call        0067DCE4
 00488E4B    dec         dword ptr [ebp-68]
 00488E4E    lea         eax,[ebp-40]
 00488E51    mov         edx,2
 00488E56    call        0067DCA0
 00488E5B    mov         ecx,dword ptr [ebp-0AC]
 00488E61    mov         eax,dword ptr [ecx+6]
 00488E64    cmp         eax,4
>00488E67    jle         00488EC7
 00488E69    mov         word ptr [ebp-74],0E0
 00488E6F    lea         eax,[ebp-48]
 00488E72    call        00401EA8
 00488E77    push        eax
 00488E78    inc         dword ptr [ebp-68]
 00488E7B    lea         eax,[ebp-44]
 00488E7E    mov         edx,dword ptr [ebp-0AC]
 00488E84    mov         edx,dword ptr [edx+6]
 00488E87    call        0067DC18
 00488E8C    mov         edx,eax
 00488E8E    inc         dword ptr [ebp-68]
 00488E91    mov         eax,6B5388
 00488E96    pop         ecx
 00488E97    call        0067E37C
 00488E9C    lea         edx,[ebp-48]
 00488E9F    lea         eax,[ebp-4]
 00488EA2    call        0067DCE4
 00488EA7    dec         dword ptr [ebp-68]
 00488EAA    lea         eax,[ebp-48]
 00488EAD    mov         edx,2
 00488EB2    call        0067DCA0
 00488EB7    dec         dword ptr [ebp-68]
 00488EBA    lea         eax,[ebp-44]
 00488EBD    mov         edx,2
 00488EC2    call        0067DCA0
 00488EC7    mov         ecx,dword ptr [ebp-0AC]
 00488ECD    mov         eax,dword ptr [ecx+2]
 00488ED0    cmp         eax,2
>00488ED3    jle         00488EE4
 00488ED5    mov         edx,dword ptr [ebp-0AC]
 00488EDB    mov         ecx,dword ptr [edx+6]
 00488EDE    add         dword ptr [ebp-0A8],ecx
 00488EE4    inc         dword ptr [ebp-98]
 00488EEA    mov         eax,dword ptr [ebp-98]
 00488EF0    mov         edx,dword ptr [ebp-0A0]
 00488EF6    cmp         eax,edx
>00488EF8    jl          00488C4E
 00488EFE    mov         ecx,dword ptr [ebp-9C]
 00488F04    test        ecx,ecx
>00488F06    jle         00488F39
 00488F08    mov         word ptr [ebp-74],0EC
 00488F0E    mov         edx,6B538A
 00488F13    lea         eax,[ebp-4C]
 00488F16    call        0067DAB4
 00488F1B    inc         dword ptr [ebp-68]
 00488F1E    lea         edx,[ebp-4C]
 00488F21    lea         eax,[ebp-4]
 00488F24    call        0067DCE4
 00488F29    dec         dword ptr [ebp-68]
 00488F2C    lea         eax,[ebp-4C]
 00488F2F    mov         edx,2
 00488F34    call        0067DCA0
 00488F39    mov         ecx,dword ptr [ebp-88]
 00488F3F    mov         al,byte ptr [ecx+5]
 00488F42    cmp         al,29
>00488F44    jne         00489027
 00488F4A    mov         word ptr [ebp-74],0F8
 00488F50    mov         edx,6B538E
 00488F55    lea         eax,[ebp-50]
 00488F58    call        0067DAB4
 00488F5D    inc         dword ptr [ebp-68]
 00488F60    lea         edx,[ebp-50]
 00488F63    lea         eax,[ebp-4]
 00488F66    call        0067DCE4
 00488F6B    dec         dword ptr [ebp-68]
 00488F6E    lea         eax,[ebp-50]
 00488F71    mov         edx,2
 00488F76    call        0067DCA0
 00488F7B    mov         word ptr [ebp-74],104
 00488F81    mov         edx,6B5390
 00488F86    lea         eax,[ebp-54]
 00488F89    call        0067DAB4
 00488F8E    inc         dword ptr [ebp-68]
 00488F91    lea         edx,[ebp-54]
 00488F94    mov         eax,dword ptr [ebp-88]
 00488F9A    add         eax,0A
 00488F9D    call        0067DD9C
 00488FA2    push        eax
 00488FA3    dec         dword ptr [ebp-68]
 00488FA6    lea         eax,[ebp-54]
 00488FA9    mov         edx,2
 00488FAE    call        0067DCA0
 00488FB3    pop         ecx
 00488FB4    test        cl,cl
>00488FB6    je          00488FF6
 00488FB8    mov         word ptr [ebp-74],110
 00488FBE    lea         eax,[ebp-58]
 00488FC1    call        00401EA8
 00488FC6    mov         edx,eax
 00488FC8    inc         dword ptr [ebp-68]
 00488FCB    mov         eax,dword ptr [ebp-88]
 00488FD1    add         eax,0A
 00488FD4    call        00531D20
 00488FD9    lea         edx,[ebp-58]
 00488FDC    lea         eax,[ebp-4]
 00488FDF    call        0067DCE4
 00488FE4    dec         dword ptr [ebp-68]
 00488FE7    lea         eax,[ebp-58]
 00488FEA    mov         edx,2
 00488FEF    call        0067DCA0
>00488FF4    jmp         00489027
 00488FF6    mov         word ptr [ebp-74],11C
 00488FFC    mov         edx,6B5391
 00489001    lea         eax,[ebp-5C]
 00489004    call        0067DAB4
 00489009    inc         dword ptr [ebp-68]
 0048900C    lea         edx,[ebp-5C]
 0048900F    lea         eax,[ebp-4]
 00489012    call        0067DCE4
 00489017    dec         dword ptr [ebp-68]
 0048901A    lea         eax,[ebp-5C]
 0048901D    mov         edx,2
 00489022    call        0067DCA0
 00489027    mov         word ptr [ebp-74],128
 0048902D    mov         edx,6B5393
 00489032    lea         eax,[ebp-60]
 00489035    call        0067DAB4
 0048903A    inc         dword ptr [ebp-68]
 0048903D    lea         edx,[ebp-60]
 00489040    lea         eax,[ebp-4]
 00489043    call        0067DCE4
 00489048    dec         dword ptr [ebp-68]
 0048904B    lea         eax,[ebp-60]
 0048904E    mov         edx,2
 00489053    call        0067DCA0
 00489058    mov         ecx,dword ptr [ebp-90]
 0048905E    mov         eax,dword ptr [ebp-0A8]
 00489064    mov         dword ptr [ecx],eax
 00489066    mov         word ptr [ebp-74],134
 0048906C    lea         edx,[ebp-4]
 0048906F    mov         eax,dword ptr [ebp+8]
 00489072    call        0067DCD0
 00489077    mov         eax,dword ptr [ebp+8]
 0048907A    mov         word ptr [ebp-74],140
 00489080    push        eax
 00489081    dec         dword ptr [ebp-68]
 00489084    lea         eax,[ebp-4]
 00489087    mov         edx,2
 0048908C    call        0067DCA0
 00489091    dec         dword ptr [ebp-68]
 00489094    lea         eax,[ebp+0C]
 00489097    mov         edx,2
 0048909C    call        0067DCA0
 004890A1    pop         eax
 004890A2    mov         word ptr [ebp-74],134
 004890A8    inc         dword ptr [ebp-68]
 004890AB    mov         edx,dword ptr [ebp-84]
 004890B1    mov         dword ptr fs:[0],edx
 004890B8    mov         esp,ebp
 004890BA    pop         ebp
 004890BB    ret         8
end;*}

//004890C0
{*procedure sub_004890C0(?:?; ?:?; ?:?);
begin
 004890C0    push        ebp
 004890C1    mov         ebp,esp
 004890C3    add         esp,0FFFFFFC4
 004890C6    mov         dword ptr [ebp-10],ecx
 004890C9    mov         dword ptr [ebp-3C],edx
 004890CC    mov         dword ptr [ebp-38],eax
 004890CF    mov         eax,6B80A4
 004890D4    call        0066FECC
 004890D9    mov         word ptr [ebp-24],8
 004890DF    lea         eax,[ebp-4]
 004890E2    call        00401EA8
 004890E7    inc         dword ptr [ebp-18]
 004890EA    mov         word ptr [ebp-24],14
 004890F0    mov         word ptr [ebp-24],20
 004890F6    mov         edx,6B5395
 004890FB    lea         eax,[ebp-8]
 004890FE    call        0067DAB4
 00489103    inc         dword ptr [ebp-18]
 00489106    lea         edx,[ebp-8]
 00489109    mov         eax,dword ptr [ebp-38]
 0048910C    add         eax,22
 0048910F    call        0067DD9C
 00489114    push        eax
 00489115    dec         dword ptr [ebp-18]
 00489118    lea         eax,[ebp-8]
 0048911B    mov         edx,2
 00489120    call        0067DCA0
 00489125    pop         ecx
 00489126    test        cl,cl
>00489128    je          0048913A
 0048912A    mov         edx,dword ptr [ebp-38]
 0048912D    add         edx,22
 00489130    lea         eax,[ebp-4]
 00489133    call        0067DCD0
>00489138    jmp         00489170
 0048913A    mov         word ptr [ebp-24],2C
 00489140    lea         eax,[ebp-0C]
 00489143    call        00401EA8
 00489148    mov         edx,eax
 0048914A    inc         dword ptr [ebp-18]
 0048914D    mov         eax,dword ptr [ebp-3C]
 00489150    call        005315B0
 00489155    lea         edx,[ebp-0C]
 00489158    lea         eax,[ebp-4]
 0048915B    call        0067DCD0
 00489160    dec         dword ptr [ebp-18]
 00489163    lea         eax,[ebp-0C]
 00489166    mov         edx,2
 0048916B    call        0067DCA0
 00489170    mov         word ptr [ebp-24],38
 00489176    lea         edx,[ebp-4]
 00489179    mov         eax,dword ptr [ebp-10]
 0048917C    call        0067DCD0
 00489181    mov         eax,dword ptr [ebp-10]
 00489184    mov         word ptr [ebp-24],44
 0048918A    push        eax
 0048918B    dec         dword ptr [ebp-18]
 0048918E    lea         eax,[ebp-4]
 00489191    mov         edx,2
 00489196    call        0067DCA0
 0048919B    pop         eax
 0048919C    mov         word ptr [ebp-24],38
 004891A2    inc         dword ptr [ebp-18]
 004891A5    mov         edx,dword ptr [ebp-34]
 004891A8    mov         dword ptr fs:[0],edx
 004891AF    mov         esp,ebp
 004891B1    pop         ebp
 004891B2    ret
end;*}

//004891B4
{*function sub_004891B4(?:?):?;
begin
 004891B4    push        ebp
 004891B5    mov         ebp,esp
 004891B7    add         esp,0FFFFF44C
 004891BD    mov         dword ptr [ebp-0BB4],eax
 004891C3    mov         eax,6BAB14
 004891C8    call        0066FECC
 004891CD    mov         word ptr [ebp-0BA0],8
 004891D6    lea         eax,[ebp-4]
 004891D9    call        00401EA8
 004891DE    inc         dword ptr [ebp-0B94]
 004891E4    mov         word ptr [ebp-0BA0],14
 004891ED    mov         word ptr [ebp-0BA0],20
 004891F6    mov         edx,6B5396
 004891FB    lea         eax,[ebp-8]
 004891FE    call        0067DAB4
 00489203    inc         dword ptr [ebp-0B94]
 00489209    lea         edx,[ebp-8]
 0048920C    mov         eax,dword ptr [ebp-0BB4]
 00489212    add         eax,22
 00489215    call        0067DEF4
 0048921A    push        eax
 0048921B    dec         dword ptr [ebp-0B94]
 00489221    lea         eax,[ebp-8]
 00489224    mov         edx,2
 00489229    call        0067DCA0
 0048922E    pop         ecx
 0048922F    test        ecx,ecx
>00489231    je          00489412
 00489237    mov         eax,dword ptr [ebp-0BB4]
 0048923D    mov         byte ptr [eax+5],29
 00489241    mov         word ptr [ebp-0BA0],2C
 0048924A    mov         edx,6B53A6
 0048924F    lea         eax,[ebp-0C]
 00489252    call        0067DAB4
 00489257    inc         dword ptr [ebp-0B94]
 0048925D    lea         edx,[ebp-0C]
 00489260    mov         eax,dword ptr [ebp-0BB4]
 00489266    add         eax,0A
 00489269    call        0067DCD0
 0048926E    dec         dword ptr [ebp-0B94]
 00489274    lea         eax,[ebp-0C]
 00489277    mov         edx,2
 0048927C    call        0067DCA0
 00489281    mov         ecx,dword ptr [ebp-0BB4]
 00489287    mov         eax,dword ptr [ecx+1E]
 0048928A    and         dword ptr [eax],0FFFFFFF8
 0048928D    mov         edx,dword ptr [ebp-0BB4]
 00489293    mov         ecx,dword ptr [edx+1E]
 00489296    or          dword ptr [ecx],3
 00489299    push        4
 0048929B    mov         word ptr [ebp-0BA0],38
 004892A4    mov         edx,6B53AE
 004892A9    lea         eax,[ebp-10]
 004892AC    call        0067DAB4
 004892B1    inc         dword ptr [ebp-0B94]
 004892B7    push        dword ptr [eax]
 004892B9    mov         edx,6B53B3
 004892BE    lea         eax,[ebp-14]
 004892C1    call        0067DAB4
 004892C6    inc         dword ptr [ebp-0B94]
 004892CC    push        dword ptr [eax]
 004892CE    mov         ecx,8
 004892D3    mov         dl,21
 004892D5    mov         eax,dword ptr [ebp-0BB4]
 004892DB    mov         eax,dword ptr [eax+1E]
 004892DE    call        00483A34
 004892E3    dec         dword ptr [ebp-0B94]
 004892E9    lea         eax,[ebp-14]
 004892EC    mov         edx,2
 004892F1    call        0067DCA0
 004892F6    dec         dword ptr [ebp-0B94]
 004892FC    lea         eax,[ebp-10]
 004892FF    mov         edx,2
 00489304    call        0067DCA0
 00489309    push        4
 0048930B    mov         word ptr [ebp-0BA0],44
 00489314    mov         edx,6B53B4
 00489319    lea         eax,[ebp-18]
 0048931C    call        0067DAB4
 00489321    inc         dword ptr [ebp-0B94]
 00489327    push        dword ptr [eax]
 00489329    mov         edx,6B53B8
 0048932E    lea         eax,[ebp-1C]
 00489331    call        0067DAB4
 00489336    inc         dword ptr [ebp-0B94]
 0048933C    push        dword ptr [eax]
 0048933E    mov         ecx,0C
 00489343    mov         dl,23
 00489345    mov         eax,dword ptr [ebp-0BB4]
 0048934B    mov         eax,dword ptr [eax+1E]
 0048934E    call        00483A34
 00489353    dec         dword ptr [ebp-0B94]
 00489359    lea         eax,[ebp-1C]
 0048935C    mov         edx,2
 00489361    call        0067DCA0
 00489366    dec         dword ptr [ebp-0B94]
 0048936C    lea         eax,[ebp-18]
 0048936F    mov         edx,2
 00489374    call        0067DCA0
 00489379    push        4
 0048937B    mov         word ptr [ebp-0BA0],50
 00489384    mov         edx,6B53BE
 00489389    lea         eax,[ebp-20]
 0048938C    call        0067DAB4
 00489391    inc         dword ptr [ebp-0B94]
 00489397    push        dword ptr [eax]
 00489399    mov         edx,6B53C2
 0048939E    lea         eax,[ebp-24]
 004893A1    call        0067DAB4
 004893A6    inc         dword ptr [ebp-0B94]
 004893AC    push        dword ptr [eax]
 004893AE    mov         ecx,10
 004893B3    mov         dl,22
 004893B5    mov         eax,dword ptr [ebp-0BB4]
 004893BB    mov         eax,dword ptr [eax+1E]
 004893BE    call        00483A34
 004893C3    dec         dword ptr [ebp-0B94]
 004893C9    lea         eax,[ebp-24]
 004893CC    mov         edx,2
 004893D1    call        0067DCA0
 004893D6    dec         dword ptr [ebp-0B94]
 004893DC    lea         eax,[ebp-20]
 004893DF    mov         edx,2
 004893E4    call        0067DCA0
 004893E9    mov         al,1
 004893EB    push        eax
 004893EC    dec         dword ptr [ebp-0B94]
 004893F2    lea         eax,[ebp-4]
 004893F5    mov         edx,2
 004893FA    call        0067DCA0
 004893FF    pop         eax
 00489400    mov         edx,dword ptr [ebp-0BB0]
 00489406    mov         dword ptr fs:[0],edx
>0048940D    jmp         00496D77
 00489412    mov         word ptr [ebp-0BA0],5C
 0048941B    mov         edx,6B53CA
 00489420    lea         eax,[ebp-28]
 00489423    call        0067DAB4
 00489428    inc         dword ptr [ebp-0B94]
 0048942E    lea         edx,[ebp-28]
 00489431    mov         eax,dword ptr [ebp-0BB4]
 00489437    add         eax,22
 0048943A    call        0067DEF4
 0048943F    test        eax,eax
>00489441    jne         0048948C
 00489443    mov         edx,6B53D3
 00489448    lea         eax,[ebp-2C]
 0048944B    call        0067DAB4
 00489450    inc         dword ptr [ebp-0B94]
 00489456    lea         edx,[ebp-2C]
 00489459    mov         eax,dword ptr [ebp-0BB4]
 0048945F    add         eax,22
 00489462    call        0067DEF4
 00489467    test        eax,eax
 00489469    setne       cl
 0048946C    and         ecx,1
 0048946F    push        ecx
 00489470    dec         dword ptr [ebp-0B94]
 00489476    lea         eax,[ebp-2C]
 00489479    mov         edx,2
 0048947E    call        0067DCA0
 00489483    pop         ecx
 00489484    test        ecx,ecx
>00489486    jne         0048948C
 00489488    xor         eax,eax
>0048948A    jmp         00489491
 0048948C    mov         eax,1
 00489491    push        eax
 00489492    dec         dword ptr [ebp-0B94]
 00489498    lea         eax,[ebp-28]
 0048949B    mov         edx,2
 004894A0    call        0067DCA0
 004894A5    pop         ecx
 004894A6    test        cl,cl
>004894A8    je          004895A9
 004894AE    mov         eax,dword ptr [ebp-0BB4]
 004894B4    mov         byte ptr [eax+5],29
 004894B8    mov         word ptr [ebp-0BA0],68
 004894C1    mov         edx,6B53DD
 004894C6    lea         eax,[ebp-30]
 004894C9    call        0067DAB4
 004894CE    inc         dword ptr [ebp-0B94]
 004894D4    lea         edx,[ebp-30]
 004894D7    mov         eax,dword ptr [ebp-0BB4]
 004894DD    add         eax,0A
 004894E0    call        0067DCD0
 004894E5    dec         dword ptr [ebp-0B94]
 004894EB    lea         eax,[ebp-30]
 004894EE    mov         edx,2
 004894F3    call        0067DCA0
 004894F8    mov         ecx,dword ptr [ebp-0BB4]
 004894FE    mov         eax,dword ptr [ecx+1E]
 00489501    and         dword ptr [eax],0FFFFFFF8
 00489504    mov         edx,dword ptr [ebp-0BB4]
 0048950A    mov         ecx,dword ptr [edx+1E]
 0048950D    or          dword ptr [ecx],3
 00489510    push        4
 00489512    mov         word ptr [ebp-0BA0],74
 0048951B    mov         edx,6B53E5
 00489520    lea         eax,[ebp-34]
 00489523    call        0067DAB4
 00489528    inc         dword ptr [ebp-0B94]
 0048952E    push        dword ptr [eax]
 00489530    mov         edx,6B53EA
 00489535    lea         eax,[ebp-38]
 00489538    call        0067DAB4
 0048953D    inc         dword ptr [ebp-0B94]
 00489543    push        dword ptr [eax]
 00489545    mov         ecx,8
 0048954A    mov         dl,21
 0048954C    mov         eax,dword ptr [ebp-0BB4]
 00489552    mov         eax,dword ptr [eax+1E]
 00489555    call        00483A34
 0048955A    dec         dword ptr [ebp-0B94]
 00489560    lea         eax,[ebp-38]
 00489563    mov         edx,2
 00489568    call        0067DCA0
 0048956D    dec         dword ptr [ebp-0B94]
 00489573    lea         eax,[ebp-34]
 00489576    mov         edx,2
 0048957B    call        0067DCA0
 00489580    mov         al,1
 00489582    push        eax
 00489583    dec         dword ptr [ebp-0B94]
 00489589    lea         eax,[ebp-4]
 0048958C    mov         edx,2
 00489591    call        0067DCA0
 00489596    pop         eax
 00489597    mov         edx,dword ptr [ebp-0BB0]
 0048959D    mov         dword ptr fs:[0],edx
>004895A4    jmp         00496D77
 004895A9    mov         word ptr [ebp-0BA0],80
 004895B2    mov         edx,6B53EB
 004895B7    lea         eax,[ebp-3C]
 004895BA    call        0067DAB4
 004895BF    inc         dword ptr [ebp-0B94]
 004895C5    mov         edx,dword ptr [eax]
 004895C7    mov         eax,dword ptr [ebp-0BB4]
 004895CD    mov         eax,dword ptr [eax+22]
 004895D0    call        SameText
 004895D5    push        eax
 004895D6    dec         dword ptr [ebp-0B94]
 004895DC    lea         eax,[ebp-3C]
 004895DF    mov         edx,2
 004895E4    call        0067DCA0
 004895E9    pop         ecx
 004895EA    test        cl,cl
>004895EC    je          00489702
 004895F2    mov         eax,dword ptr [ebp-0BB4]
 004895F8    mov         byte ptr [eax+5],28
 004895FC    push        4
 004895FE    mov         word ptr [ebp-0BA0],8C
 00489607    mov         edx,6B53F9
 0048960C    lea         eax,[ebp-40]
 0048960F    call        0067DAB4
 00489614    inc         dword ptr [ebp-0B94]
 0048961A    push        dword ptr [eax]
 0048961C    mov         edx,6B53FD
 00489621    lea         eax,[ebp-44]
 00489624    call        0067DAB4
 00489629    inc         dword ptr [ebp-0B94]
 0048962F    push        dword ptr [eax]
 00489631    xor         ecx,ecx
 00489633    mov         dl,22
 00489635    mov         eax,dword ptr [ebp-0BB4]
 0048963B    mov         eax,dword ptr [eax+1E]
 0048963E    call        00483A34
 00489643    dec         dword ptr [ebp-0B94]
 00489649    lea         eax,[ebp-44]
 0048964C    mov         edx,2
 00489651    call        0067DCA0
 00489656    dec         dword ptr [ebp-0B94]
 0048965C    lea         eax,[ebp-40]
 0048965F    mov         edx,2
 00489664    call        0067DCA0
 00489669    push        4
 0048966B    mov         word ptr [ebp-0BA0],98
 00489674    mov         edx,6B5405
 00489679    lea         eax,[ebp-48]
 0048967C    call        0067DAB4
 00489681    inc         dword ptr [ebp-0B94]
 00489687    push        dword ptr [eax]
 00489689    mov         edx,6B540E
 0048968E    lea         eax,[ebp-4C]
 00489691    call        0067DAB4
 00489696    inc         dword ptr [ebp-0B94]
 0048969C    push        dword ptr [eax]
 0048969E    mov         ecx,1
 004896A3    mov         dl,21
 004896A5    mov         eax,dword ptr [ebp-0BB4]
 004896AB    mov         eax,dword ptr [eax+1E]
 004896AE    call        00483A34
 004896B3    dec         dword ptr [ebp-0B94]
 004896B9    lea         eax,[ebp-4C]
 004896BC    mov         edx,2
 004896C1    call        0067DCA0
 004896C6    dec         dword ptr [ebp-0B94]
 004896CC    lea         eax,[ebp-48]
 004896CF    mov         edx,2
 004896D4    call        0067DCA0
 004896D9    mov         al,1
 004896DB    push        eax
 004896DC    dec         dword ptr [ebp-0B94]
 004896E2    lea         eax,[ebp-4]
 004896E5    mov         edx,2
 004896EA    call        0067DCA0
 004896EF    pop         eax
 004896F0    mov         edx,dword ptr [ebp-0BB0]
 004896F6    mov         dword ptr fs:[0],edx
>004896FD    jmp         00496D77
 00489702    mov         word ptr [ebp-0BA0],0A4
 0048970B    mov         edx,6B5420
 00489710    lea         eax,[ebp-50]
 00489713    call        0067DAB4
 00489718    inc         dword ptr [ebp-0B94]
 0048971E    mov         edx,dword ptr [eax]
 00489720    mov         eax,dword ptr [ebp-0BB4]
 00489726    mov         eax,dword ptr [eax+22]
 00489729    call        SameText
 0048972E    push        eax
 0048972F    dec         dword ptr [ebp-0B94]
 00489735    lea         eax,[ebp-50]
 00489738    mov         edx,2
 0048973D    call        0067DCA0
 00489742    pop         ecx
 00489743    test        cl,cl
>00489745    je          0048993B
 0048974B    mov         eax,dword ptr [ebp-0BB4]
 00489751    mov         byte ptr [eax+5],28
 00489755    push        4
 00489757    mov         word ptr [ebp-0BA0],0B0
 00489760    mov         edx,6B5432
 00489765    lea         eax,[ebp-54]
 00489768    call        0067DAB4
 0048976D    inc         dword ptr [ebp-0B94]
 00489773    push        dword ptr [eax]
 00489775    mov         edx,6B5436
 0048977A    lea         eax,[ebp-58]
 0048977D    call        0067DAB4
 00489782    inc         dword ptr [ebp-0B94]
 00489788    push        dword ptr [eax]
 0048978A    xor         ecx,ecx
 0048978C    mov         dl,22
 0048978E    mov         eax,dword ptr [ebp-0BB4]
 00489794    mov         eax,dword ptr [eax+1E]
 00489797    call        00483A34
 0048979C    dec         dword ptr [ebp-0B94]
 004897A2    lea         eax,[ebp-58]
 004897A5    mov         edx,2
 004897AA    call        0067DCA0
 004897AF    dec         dword ptr [ebp-0B94]
 004897B5    lea         eax,[ebp-54]
 004897B8    mov         edx,2
 004897BD    call        0067DCA0
 004897C2    push        4
 004897C4    mov         word ptr [ebp-0BA0],0BC
 004897CD    mov         edx,6B543E
 004897D2    lea         eax,[ebp-5C]
 004897D5    call        0067DAB4
 004897DA    inc         dword ptr [ebp-0B94]
 004897E0    push        dword ptr [eax]
 004897E2    mov         edx,6B5447
 004897E7    lea         eax,[ebp-60]
 004897EA    call        0067DAB4
 004897EF    inc         dword ptr [ebp-0B94]
 004897F5    push        dword ptr [eax]
 004897F7    mov         ecx,1
 004897FC    mov         dl,21
 004897FE    mov         eax,dword ptr [ebp-0BB4]
 00489804    mov         eax,dword ptr [eax+1E]
 00489807    call        00483A34
 0048980C    dec         dword ptr [ebp-0B94]
 00489812    lea         eax,[ebp-60]
 00489815    mov         edx,2
 0048981A    call        0067DCA0
 0048981F    dec         dword ptr [ebp-0B94]
 00489825    lea         eax,[ebp-5C]
 00489828    mov         edx,2
 0048982D    call        0067DCA0
 00489832    push        4
 00489834    mov         word ptr [ebp-0BA0],0C8
 0048983D    mov         edx,6B5459
 00489842    lea         eax,[ebp-64]
 00489845    call        0067DAB4
 0048984A    inc         dword ptr [ebp-0B94]
 00489850    push        dword ptr [eax]
 00489852    mov         edx,6B5460
 00489857    lea         eax,[ebp-68]
 0048985A    call        0067DAB4
 0048985F    inc         dword ptr [ebp-0B94]
 00489865    push        dword ptr [eax]
 00489867    mov         ecx,2
 0048986C    mov         dl,21
 0048986E    mov         eax,dword ptr [ebp-0BB4]
 00489874    mov         eax,dword ptr [eax+1E]
 00489877    call        00483A34
 0048987C    dec         dword ptr [ebp-0B94]
 00489882    lea         eax,[ebp-68]
 00489885    mov         edx,2
 0048988A    call        0067DCA0
 0048988F    dec         dword ptr [ebp-0B94]
 00489895    lea         eax,[ebp-64]
 00489898    mov         edx,2
 0048989D    call        0067DCA0
 004898A2    push        4
 004898A4    mov         word ptr [ebp-0BA0],0D4
 004898AD    mov         edx,6B5468
 004898B2    lea         eax,[ebp-6C]
 004898B5    call        0067DAB4
 004898BA    inc         dword ptr [ebp-0B94]
 004898C0    push        dword ptr [eax]
 004898C2    mov         edx,6B546F
 004898C7    lea         eax,[ebp-70]
 004898CA    call        0067DAB4
 004898CF    inc         dword ptr [ebp-0B94]
 004898D5    push        dword ptr [eax]
 004898D7    mov         ecx,8
 004898DC    mov         dl,21
 004898DE    mov         eax,dword ptr [ebp-0BB4]
 004898E4    mov         eax,dword ptr [eax+1E]
 004898E7    call        00483A34
 004898EC    dec         dword ptr [ebp-0B94]
 004898F2    lea         eax,[ebp-70]
 004898F5    mov         edx,2
 004898FA    call        0067DCA0
 004898FF    dec         dword ptr [ebp-0B94]
 00489905    lea         eax,[ebp-6C]
 00489908    mov         edx,2
 0048990D    call        0067DCA0
 00489912    mov         al,1
 00489914    push        eax
 00489915    dec         dword ptr [ebp-0B94]
 0048991B    lea         eax,[ebp-4]
 0048991E    mov         edx,2
 00489923    call        0067DCA0
 00489928    pop         eax
 00489929    mov         edx,dword ptr [ebp-0BB0]
 0048992F    mov         dword ptr fs:[0],edx
>00489936    jmp         00496D77
 0048993B    mov         eax,dword ptr [ebp-0BB4]
 00489941    add         eax,22
 00489944    mov         edx,1
 00489949    call        00403C2C
 0048994E    movsx       ecx,byte ptr [eax]
 00489951    cmp         ecx,40
>00489954    je          0048997F
 00489956    xor         eax,eax
 00489958    push        eax
 00489959    dec         dword ptr [ebp-0B94]
 0048995F    lea         eax,[ebp-4]
 00489962    mov         edx,2
 00489967    call        0067DCA0
 0048996C    pop         eax
 0048996D    mov         edx,dword ptr [ebp-0BB0]
 00489973    mov         dword ptr fs:[0],edx
>0048997A    jmp         00496D77
 0048997F    mov         eax,dword ptr [ebp-0BB4]
 00489985    add         eax,22
 00489988    mov         edx,2
 0048998D    call        00403C2C
 00489992    movsx       ecx,byte ptr [eax]
 00489995    cmp         ecx,4C
>00489998    jne         004899D9
 0048999A    mov         word ptr [ebp-0BA0],0E0
 004899A3    mov         edx,6B5478
 004899A8    lea         eax,[ebp-74]
 004899AB    call        0067DAB4
 004899B0    inc         dword ptr [ebp-0B94]
 004899B6    lea         edx,[ebp-74]
 004899B9    lea         eax,[ebp-4]
 004899BC    call        0067DCD0
 004899C1    dec         dword ptr [ebp-0B94]
 004899C7    lea         eax,[ebp-74]
 004899CA    mov         edx,2
 004899CF    call        0067DCA0
>004899D4    jmp         00489AC4
 004899D9    mov         eax,dword ptr [ebp-0BB4]
 004899DF    add         eax,22
 004899E2    mov         edx,2
 004899E7    call        00403C2C
 004899EC    movsx       ecx,byte ptr [eax]
 004899EF    cmp         ecx,57
>004899F2    jne         00489A33
 004899F4    mov         word ptr [ebp-0BA0],0EC
 004899FD    mov         edx,6B5483
 00489A02    lea         eax,[ebp-78]
 00489A05    call        0067DAB4
 00489A0A    inc         dword ptr [ebp-0B94]
 00489A10    lea         edx,[ebp-78]
 00489A13    lea         eax,[ebp-4]
 00489A16    call        0067DCD0
 00489A1B    dec         dword ptr [ebp-0B94]
 00489A21    lea         eax,[ebp-78]
 00489A24    mov         edx,2
 00489A29    call        0067DCA0
>00489A2E    jmp         00489AC4
 00489A33    mov         eax,dword ptr [ebp-0BB4]
 00489A39    add         eax,22
 00489A3C    mov         edx,2
 00489A41    call        00403C2C
 00489A46    movsx       ecx,byte ptr [eax]
 00489A49    cmp         ecx,55
>00489A4C    jne         00489A8A
 00489A4E    mov         word ptr [ebp-0BA0],0F8
 00489A57    mov         edx,6B548E
 00489A5C    lea         eax,[ebp-7C]
 00489A5F    call        0067DAB4
 00489A64    inc         dword ptr [ebp-0B94]
 00489A6A    lea         edx,[ebp-7C]
 00489A6D    lea         eax,[ebp-4]
 00489A70    call        0067DCD0
 00489A75    dec         dword ptr [ebp-0B94]
 00489A7B    lea         eax,[ebp-7C]
 00489A7E    mov         edx,2
 00489A83    call        0067DCA0
>00489A88    jmp         00489AC4
 00489A8A    mov         word ptr [ebp-0BA0],104
 00489A93    mov         edx,6B549C
 00489A98    lea         eax,[ebp-80]
 00489A9B    call        0067DAB4
 00489AA0    inc         dword ptr [ebp-0B94]
 00489AA6    lea         edx,[ebp-80]
 00489AA9    lea         eax,[ebp-4]
 00489AAC    call        0067DCD0
 00489AB1    dec         dword ptr [ebp-0B94]
 00489AB7    lea         eax,[ebp-80]
 00489ABA    mov         edx,2
 00489ABF    call        0067DCA0
 00489AC4    mov         word ptr [ebp-0BA0],110
 00489ACD    mov         edx,6B549E
 00489AD2    lea         eax,[ebp-84]
 00489AD8    call        0067DAB4
 00489ADD    inc         dword ptr [ebp-0B94]
 00489AE3    lea         edx,[ebp-84]
 00489AE9    lea         eax,[ebp-4]
 00489AEC    call        0067DD9C
 00489AF1    push        eax
 00489AF2    dec         dword ptr [ebp-0B94]
 00489AF8    lea         eax,[ebp-84]
 00489AFE    mov         edx,2
 00489B03    call        0067DCA0
 00489B08    pop         ecx
 00489B09    test        cl,cl
>00489B0B    je          0048CE5F
 00489B11    mov         edx,6B54A0
 00489B16    lea         eax,[ebp-8C]
 00489B1C    call        0067DAB4
 00489B21    inc         dword ptr [ebp-0B94]
 00489B27    push        dword ptr [eax]
 00489B29    mov         word ptr [ebp-0BA0],11C
 00489B32    mov         eax,dword ptr [ebp-0BB4]
 00489B38    add         eax,22
 00489B3B    mov         edx,3
 00489B40    call        00403C2C
 00489B45    mov         edx,eax
 00489B47    lea         eax,[ebp-88]
 00489B4D    call        0067DAB4
 00489B52    inc         dword ptr [ebp-0B94]
 00489B58    mov         eax,dword ptr [eax]
 00489B5A    pop         edx
 00489B5B    call        SameText
 00489B60    push        eax
 00489B61    dec         dword ptr [ebp-0B94]
 00489B67    lea         eax,[ebp-8C]
 00489B6D    mov         edx,2
 00489B72    call        0067DCA0
 00489B77    dec         dword ptr [ebp-0B94]
 00489B7D    lea         eax,[ebp-88]
 00489B83    mov         edx,2
 00489B88    call        0067DCA0
 00489B8D    pop         ecx
 00489B8E    test        cl,cl
>00489B90    je          00489C17
 00489B96    mov         eax,dword ptr [ebp-0BB4]
 00489B9C    mov         byte ptr [eax+5],28
 00489BA0    push        4
 00489BA2    mov         word ptr [ebp-0BA0],128
 00489BAB    mov         edx,6B54A7
 00489BB0    lea         eax,[ebp-90]
 00489BB6    call        0067DAB4
 00489BBB    inc         dword ptr [ebp-0B94]
 00489BC1    push        dword ptr [eax]
 00489BC3    push        dword ptr [ebp-4]
 00489BC6    xor         ecx,ecx
 00489BC8    mov         dl,22
 00489BCA    mov         eax,dword ptr [ebp-0BB4]
 00489BD0    mov         eax,dword ptr [eax+1E]
 00489BD3    call        00483A34
 00489BD8    dec         dword ptr [ebp-0B94]
 00489BDE    lea         eax,[ebp-90]
 00489BE4    mov         edx,2
 00489BE9    call        0067DCA0
 00489BEE    mov         al,1
 00489BF0    push        eax
 00489BF1    dec         dword ptr [ebp-0B94]
 00489BF7    lea         eax,[ebp-4]
 00489BFA    mov         edx,2
 00489BFF    call        0067DCA0
 00489C04    pop         eax
 00489C05    mov         edx,dword ptr [ebp-0BB0]
 00489C0B    mov         dword ptr fs:[0],edx
>00489C12    jmp         00496D77
 00489C17    mov         edx,6B54A9
 00489C1C    lea         eax,[ebp-98]
 00489C22    call        0067DAB4
 00489C27    inc         dword ptr [ebp-0B94]
 00489C2D    push        dword ptr [eax]
 00489C2F    mov         word ptr [ebp-0BA0],134
 00489C38    mov         eax,dword ptr [ebp-0BB4]
 00489C3E    add         eax,22
 00489C41    mov         edx,3
 00489C46    call        00403C2C
 00489C4B    mov         edx,eax
 00489C4D    lea         eax,[ebp-94]
 00489C53    call        0067DAB4
 00489C58    inc         dword ptr [ebp-0B94]
 00489C5E    mov         eax,dword ptr [eax]
 00489C60    pop         edx
 00489C61    call        SameText
 00489C66    push        eax
 00489C67    dec         dword ptr [ebp-0B94]
 00489C6D    lea         eax,[ebp-98]
 00489C73    mov         edx,2
 00489C78    call        0067DCA0
 00489C7D    dec         dword ptr [ebp-0B94]
 00489C83    lea         eax,[ebp-94]
 00489C89    mov         edx,2
 00489C8E    call        0067DCA0
 00489C93    pop         ecx
 00489C94    test        cl,cl
>00489C96    je          00489DC4
 00489C9C    mov         eax,dword ptr [ebp-0BB4]
 00489CA2    mov         byte ptr [eax+5],28
 00489CA6    push        4
 00489CA8    mov         word ptr [ebp-0BA0],140
 00489CB1    mov         edx,6B54B5
 00489CB6    lea         eax,[ebp-9C]
 00489CBC    call        0067DAB4
 00489CC1    inc         dword ptr [ebp-0B94]
 00489CC7    push        dword ptr [eax]
 00489CC9    mov         edx,6B54BE
 00489CCE    lea         eax,[ebp-0A0]
 00489CD4    call        0067DAB4
 00489CD9    inc         dword ptr [ebp-0B94]
 00489CDF    push        dword ptr [eax]
 00489CE1    xor         ecx,ecx
 00489CE3    mov         dl,22
 00489CE5    mov         eax,dword ptr [ebp-0BB4]
 00489CEB    mov         eax,dword ptr [eax+1E]
 00489CEE    call        00483A34
 00489CF3    dec         dword ptr [ebp-0B94]
 00489CF9    lea         eax,[ebp-0A0]
 00489CFF    mov         edx,2
 00489D04    call        0067DCA0
 00489D09    dec         dword ptr [ebp-0B94]
 00489D0F    lea         eax,[ebp-9C]
 00489D15    mov         edx,2
 00489D1A    call        0067DCA0
 00489D1F    push        4
 00489D21    mov         word ptr [ebp-0BA0],14C
 00489D2A    mov         edx,6B54C6
 00489D2F    lea         eax,[ebp-0A4]
 00489D35    call        0067DAB4
 00489D3A    inc         dword ptr [ebp-0B94]
 00489D40    push        dword ptr [eax]
 00489D42    mov         edx,6B54CC
 00489D47    lea         eax,[ebp-0A8]
 00489D4D    call        0067DAB4
 00489D52    inc         dword ptr [ebp-0B94]
 00489D58    push        dword ptr [eax]
 00489D5A    mov         ecx,1
 00489D5F    mov         dl,21
 00489D61    mov         eax,dword ptr [ebp-0BB4]
 00489D67    mov         eax,dword ptr [eax+1E]
 00489D6A    call        00483A34
 00489D6F    dec         dword ptr [ebp-0B94]
 00489D75    lea         eax,[ebp-0A8]
 00489D7B    mov         edx,2
 00489D80    call        0067DCA0
 00489D85    dec         dword ptr [ebp-0B94]
 00489D8B    lea         eax,[ebp-0A4]
 00489D91    mov         edx,2
 00489D96    call        0067DCA0
 00489D9B    mov         al,1
 00489D9D    push        eax
 00489D9E    dec         dword ptr [ebp-0B94]
 00489DA4    lea         eax,[ebp-4]
 00489DA7    mov         edx,2
 00489DAC    call        0067DCA0
 00489DB1    pop         eax
 00489DB2    mov         edx,dword ptr [ebp-0BB0]
 00489DB8    mov         dword ptr fs:[0],edx
>00489DBF    jmp         00496D77
 00489DC4    mov         edx,6B54D4
 00489DC9    lea         eax,[ebp-0B0]
 00489DCF    call        0067DAB4
 00489DD4    inc         dword ptr [ebp-0B94]
 00489DDA    push        dword ptr [eax]
 00489DDC    mov         word ptr [ebp-0BA0],158
 00489DE5    mov         eax,dword ptr [ebp-0BB4]
 00489DEB    add         eax,22
 00489DEE    mov         edx,3
 00489DF3    call        00403C2C
 00489DF8    mov         edx,eax
 00489DFA    lea         eax,[ebp-0AC]
 00489E00    call        0067DAB4
 00489E05    inc         dword ptr [ebp-0B94]
 00489E0B    mov         eax,dword ptr [eax]
 00489E0D    pop         edx
 00489E0E    call        SameText
 00489E13    push        eax
 00489E14    dec         dword ptr [ebp-0B94]
 00489E1A    lea         eax,[ebp-0B0]
 00489E20    mov         edx,2
 00489E25    call        0067DCA0
 00489E2A    dec         dword ptr [ebp-0B94]
 00489E30    lea         eax,[ebp-0AC]
 00489E36    mov         edx,2
 00489E3B    call        0067DCA0
 00489E40    pop         ecx
 00489E41    test        cl,cl
>00489E43    je          00489F1B
 00489E49    mov         eax,dword ptr [ebp-0BB4]
 00489E4F    mov         byte ptr [eax+5],28
 00489E53    push        4
 00489E55    mov         word ptr [ebp-0BA0],164
 00489E5E    mov         edx,6B54DB
 00489E63    lea         eax,[ebp-0B4]
 00489E69    call        0067DAB4
 00489E6E    inc         dword ptr [ebp-0B94]
 00489E74    push        dword ptr [eax]
 00489E76    push        dword ptr [ebp-4]
 00489E79    xor         ecx,ecx
 00489E7B    mov         dl,22
 00489E7D    mov         eax,dword ptr [ebp-0BB4]
 00489E83    mov         eax,dword ptr [eax+1E]
 00489E86    call        00483A34
 00489E8B    dec         dword ptr [ebp-0B94]
 00489E91    lea         eax,[ebp-0B4]
 00489E97    mov         edx,2
 00489E9C    call        0067DCA0
 00489EA1    push        4
 00489EA3    mov         word ptr [ebp-0BA0],170
 00489EAC    mov         edx,6B54E0
 00489EB1    lea         eax,[ebp-0B8]
 00489EB7    call        0067DAB4
 00489EBC    inc         dword ptr [ebp-0B94]
 00489EC2    push        dword ptr [eax]
 00489EC4    push        dword ptr [ebp-4]
 00489EC7    mov         ecx,1
 00489ECC    mov         dl,21
 00489ECE    mov         eax,dword ptr [ebp-0BB4]
 00489ED4    mov         eax,dword ptr [eax+1E]
 00489ED7    call        00483A34
 00489EDC    dec         dword ptr [ebp-0B94]
 00489EE2    lea         eax,[ebp-0B8]
 00489EE8    mov         edx,2
 00489EED    call        0067DCA0
 00489EF2    mov         al,1
 00489EF4    push        eax
 00489EF5    dec         dword ptr [ebp-0B94]
 00489EFB    lea         eax,[ebp-4]
 00489EFE    mov         edx,2
 00489F03    call        0067DCA0
 00489F08    pop         eax
 00489F09    mov         edx,dword ptr [ebp-0BB0]
 00489F0F    mov         dword ptr fs:[0],edx
>00489F16    jmp         00496D77
 00489F1B    mov         edx,6B54E7
 00489F20    lea         eax,[ebp-0C0]
 00489F26    call        0067DAB4
 00489F2B    inc         dword ptr [ebp-0B94]
 00489F31    push        dword ptr [eax]
 00489F33    mov         word ptr [ebp-0BA0],17C
 00489F3C    mov         eax,dword ptr [ebp-0BB4]
 00489F42    add         eax,22
 00489F45    mov         edx,3
 00489F4A    call        00403C2C
 00489F4F    mov         edx,eax
 00489F51    lea         eax,[ebp-0BC]
 00489F57    call        0067DAB4
 00489F5C    inc         dword ptr [ebp-0B94]
 00489F62    mov         eax,dword ptr [eax]
 00489F64    pop         edx
 00489F65    call        SameText
 00489F6A    push        eax
 00489F6B    dec         dword ptr [ebp-0B94]
 00489F71    lea         eax,[ebp-0C0]
 00489F77    mov         edx,2
 00489F7C    call        0067DCA0
 00489F81    dec         dword ptr [ebp-0B94]
 00489F87    lea         eax,[ebp-0BC]
 00489F8D    mov         edx,2
 00489F92    call        0067DCA0
 00489F97    pop         ecx
 00489F98    test        cl,cl
>00489F9A    je          0048A072
 00489FA0    mov         eax,dword ptr [ebp-0BB4]
 00489FA6    mov         byte ptr [eax+5],28
 00489FAA    push        4
 00489FAC    mov         word ptr [ebp-0BA0],188
 00489FB5    mov         edx,6B54EF
 00489FBA    lea         eax,[ebp-0C4]
 00489FC0    call        0067DAB4
 00489FC5    inc         dword ptr [ebp-0B94]
 00489FCB    push        dword ptr [eax]
 00489FCD    push        dword ptr [ebp-4]
 00489FD0    xor         ecx,ecx
 00489FD2    mov         dl,22
 00489FD4    mov         eax,dword ptr [ebp-0BB4]
 00489FDA    mov         eax,dword ptr [eax+1E]
 00489FDD    call        00483A34
 00489FE2    dec         dword ptr [ebp-0B94]
 00489FE8    lea         eax,[ebp-0C4]
 00489FEE    mov         edx,2
 00489FF3    call        0067DCA0
 00489FF8    push        4
 00489FFA    mov         word ptr [ebp-0BA0],194
 0048A003    mov         edx,6B54F4
 0048A008    lea         eax,[ebp-0C8]
 0048A00E    call        0067DAB4
 0048A013    inc         dword ptr [ebp-0B94]
 0048A019    push        dword ptr [eax]
 0048A01B    push        dword ptr [ebp-4]
 0048A01E    mov         ecx,1
 0048A023    mov         dl,23
 0048A025    mov         eax,dword ptr [ebp-0BB4]
 0048A02B    mov         eax,dword ptr [eax+1E]
 0048A02E    call        00483A34
 0048A033    dec         dword ptr [ebp-0B94]
 0048A039    lea         eax,[ebp-0C8]
 0048A03F    mov         edx,2
 0048A044    call        0067DCA0
 0048A049    mov         al,1
 0048A04B    push        eax
 0048A04C    dec         dword ptr [ebp-0B94]
 0048A052    lea         eax,[ebp-4]
 0048A055    mov         edx,2
 0048A05A    call        0067DCA0
 0048A05F    pop         eax
 0048A060    mov         edx,dword ptr [ebp-0BB0]
 0048A066    mov         dword ptr fs:[0],edx
>0048A06D    jmp         00496D77
 0048A072    mov         edx,6B54FB
 0048A077    lea         eax,[ebp-0D0]
 0048A07D    call        0067DAB4
 0048A082    inc         dword ptr [ebp-0B94]
 0048A088    push        dword ptr [eax]
 0048A08A    mov         word ptr [ebp-0BA0],1A0
 0048A093    mov         eax,dword ptr [ebp-0BB4]
 0048A099    add         eax,22
 0048A09C    mov         edx,3
 0048A0A1    call        00403C2C
 0048A0A6    mov         edx,eax
 0048A0A8    lea         eax,[ebp-0CC]
 0048A0AE    call        0067DAB4
 0048A0B3    inc         dword ptr [ebp-0B94]
 0048A0B9    mov         eax,dword ptr [eax]
 0048A0BB    pop         edx
 0048A0BC    call        SameText
 0048A0C1    push        eax
 0048A0C2    dec         dword ptr [ebp-0B94]
 0048A0C8    lea         eax,[ebp-0D0]
 0048A0CE    mov         edx,2
 0048A0D3    call        0067DCA0
 0048A0D8    dec         dword ptr [ebp-0B94]
 0048A0DE    lea         eax,[ebp-0CC]
 0048A0E4    mov         edx,2
 0048A0E9    call        0067DCA0
 0048A0EE    pop         ecx
 0048A0EF    test        cl,cl
>0048A0F1    je          0048A270
 0048A0F7    mov         eax,dword ptr [ebp-0BB4]
 0048A0FD    mov         byte ptr [eax+5],28
 0048A101    push        4
 0048A103    mov         word ptr [ebp-0BA0],1AC
 0048A10C    mov         edx,6B550B
 0048A111    lea         eax,[ebp-0D4]
 0048A117    call        0067DAB4
 0048A11C    inc         dword ptr [ebp-0B94]
 0048A122    push        dword ptr [eax]
 0048A124    push        dword ptr [ebp-4]
 0048A127    xor         ecx,ecx
 0048A129    mov         dl,22
 0048A12B    mov         eax,dword ptr [ebp-0BB4]
 0048A131    mov         eax,dword ptr [eax+1E]
 0048A134    call        00483A34
 0048A139    dec         dword ptr [ebp-0B94]
 0048A13F    lea         eax,[ebp-0D4]
 0048A145    mov         edx,2
 0048A14A    call        0067DCA0
 0048A14F    push        4
 0048A151    mov         word ptr [ebp-0BA0],1B8
 0048A15A    mov         edx,6B5510
 0048A15F    lea         eax,[ebp-0D8]
 0048A165    call        0067DAB4
 0048A16A    inc         dword ptr [ebp-0B94]
 0048A170    push        dword ptr [eax]
 0048A172    mov         edx,6B5517
 0048A177    lea         eax,[ebp-0DC]
 0048A17D    call        0067DAB4
 0048A182    inc         dword ptr [ebp-0B94]
 0048A188    push        dword ptr [eax]
 0048A18A    mov         ecx,1
 0048A18F    mov         dl,21
 0048A191    mov         eax,dword ptr [ebp-0BB4]
 0048A197    mov         eax,dword ptr [eax+1E]
 0048A19A    call        00483A34
 0048A19F    dec         dword ptr [ebp-0B94]
 0048A1A5    lea         eax,[ebp-0DC]
 0048A1AB    mov         edx,2
 0048A1B0    call        0067DCA0
 0048A1B5    dec         dword ptr [ebp-0B94]
 0048A1BB    lea         eax,[ebp-0D8]
 0048A1C1    mov         edx,2
 0048A1C6    call        0067DCA0
 0048A1CB    push        4
 0048A1CD    mov         word ptr [ebp-0BA0],1C4
 0048A1D6    mov         edx,6B5521
 0048A1DB    lea         eax,[ebp-0E0]
 0048A1E1    call        0067DAB4
 0048A1E6    inc         dword ptr [ebp-0B94]
 0048A1EC    push        dword ptr [eax]
 0048A1EE    mov         edx,6B5528
 0048A1F3    lea         eax,[ebp-0E4]
 0048A1F9    call        0067DAB4
 0048A1FE    inc         dword ptr [ebp-0B94]
 0048A204    push        dword ptr [eax]
 0048A206    mov         ecx,2
 0048A20B    mov         dl,21
 0048A20D    mov         eax,dword ptr [ebp-0BB4]
 0048A213    mov         eax,dword ptr [eax+1E]
 0048A216    call        00483A34
 0048A21B    dec         dword ptr [ebp-0B94]
 0048A221    lea         eax,[ebp-0E4]
 0048A227    mov         edx,2
 0048A22C    call        0067DCA0
 0048A231    dec         dword ptr [ebp-0B94]
 0048A237    lea         eax,[ebp-0E0]
 0048A23D    mov         edx,2
 0048A242    call        0067DCA0
 0048A247    mov         al,1
 0048A249    push        eax
 0048A24A    dec         dword ptr [ebp-0B94]
 0048A250    lea         eax,[ebp-4]
 0048A253    mov         edx,2
 0048A258    call        0067DCA0
 0048A25D    pop         eax
 0048A25E    mov         edx,dword ptr [ebp-0BB0]
 0048A264    mov         dword ptr fs:[0],edx
>0048A26B    jmp         00496D77
 0048A270    mov         edx,6B5530
 0048A275    lea         eax,[ebp-0EC]
 0048A27B    call        0067DAB4
 0048A280    inc         dword ptr [ebp-0B94]
 0048A286    push        dword ptr [eax]
 0048A288    mov         word ptr [ebp-0BA0],1D0
 0048A291    mov         eax,dword ptr [ebp-0BB4]
 0048A297    add         eax,22
 0048A29A    mov         edx,3
 0048A29F    call        00403C2C
 0048A2A4    mov         edx,eax
 0048A2A6    lea         eax,[ebp-0E8]
 0048A2AC    call        0067DAB4
 0048A2B1    inc         dword ptr [ebp-0B94]
 0048A2B7    mov         eax,dword ptr [eax]
 0048A2B9    pop         edx
 0048A2BA    call        SameText
 0048A2BF    push        eax
 0048A2C0    dec         dword ptr [ebp-0B94]
 0048A2C6    lea         eax,[ebp-0EC]
 0048A2CC    mov         edx,2
 0048A2D1    call        0067DCA0
 0048A2D6    dec         dword ptr [ebp-0B94]
 0048A2DC    lea         eax,[ebp-0E8]
 0048A2E2    mov         edx,2
 0048A2E7    call        0067DCA0
 0048A2EC    pop         ecx
 0048A2ED    test        cl,cl
>0048A2EF    je          0048A46E
 0048A2F5    mov         eax,dword ptr [ebp-0BB4]
 0048A2FB    mov         byte ptr [eax+5],28
 0048A2FF    push        4
 0048A301    mov         word ptr [ebp-0BA0],1DC
 0048A30A    mov         edx,6B5541
 0048A30F    lea         eax,[ebp-0F0]
 0048A315    call        0067DAB4
 0048A31A    inc         dword ptr [ebp-0B94]
 0048A320    push        dword ptr [eax]
 0048A322    push        dword ptr [ebp-4]
 0048A325    xor         ecx,ecx
 0048A327    mov         dl,22
 0048A329    mov         eax,dword ptr [ebp-0BB4]
 0048A32F    mov         eax,dword ptr [eax+1E]
 0048A332    call        00483A34
 0048A337    dec         dword ptr [ebp-0B94]
 0048A33D    lea         eax,[ebp-0F0]
 0048A343    mov         edx,2
 0048A348    call        0067DCA0
 0048A34D    push        4
 0048A34F    mov         word ptr [ebp-0BA0],1E8
 0048A358    mov         edx,6B5546
 0048A35D    lea         eax,[ebp-0F4]
 0048A363    call        0067DAB4
 0048A368    inc         dword ptr [ebp-0B94]
 0048A36E    push        dword ptr [eax]
 0048A370    mov         edx,6B554D
 0048A375    lea         eax,[ebp-0F8]
 0048A37B    call        0067DAB4
 0048A380    inc         dword ptr [ebp-0B94]
 0048A386    push        dword ptr [eax]
 0048A388    mov         ecx,1
 0048A38D    mov         dl,21
 0048A38F    mov         eax,dword ptr [ebp-0BB4]
 0048A395    mov         eax,dword ptr [eax+1E]
 0048A398    call        00483A34
 0048A39D    dec         dword ptr [ebp-0B94]
 0048A3A3    lea         eax,[ebp-0F8]
 0048A3A9    mov         edx,2
 0048A3AE    call        0067DCA0
 0048A3B3    dec         dword ptr [ebp-0B94]
 0048A3B9    lea         eax,[ebp-0F4]
 0048A3BF    mov         edx,2
 0048A3C4    call        0067DCA0
 0048A3C9    push        4
 0048A3CB    mov         word ptr [ebp-0BA0],1F4
 0048A3D4    mov         edx,6B5557
 0048A3D9    lea         eax,[ebp-0FC]
 0048A3DF    call        0067DAB4
 0048A3E4    inc         dword ptr [ebp-0B94]
 0048A3EA    push        dword ptr [eax]
 0048A3EC    mov         edx,6B555E
 0048A3F1    lea         eax,[ebp-100]
 0048A3F7    call        0067DAB4
 0048A3FC    inc         dword ptr [ebp-0B94]
 0048A402    push        dword ptr [eax]
 0048A404    mov         ecx,2
 0048A409    mov         dl,21
 0048A40B    mov         eax,dword ptr [ebp-0BB4]
 0048A411    mov         eax,dword ptr [eax+1E]
 0048A414    call        00483A34
 0048A419    dec         dword ptr [ebp-0B94]
 0048A41F    lea         eax,[ebp-100]
 0048A425    mov         edx,2
 0048A42A    call        0067DCA0
 0048A42F    dec         dword ptr [ebp-0B94]
 0048A435    lea         eax,[ebp-0FC]
 0048A43B    mov         edx,2
 0048A440    call        0067DCA0
 0048A445    mov         al,1
 0048A447    push        eax
 0048A448    dec         dword ptr [ebp-0B94]
 0048A44E    lea         eax,[ebp-4]
 0048A451    mov         edx,2
 0048A456    call        0067DCA0
 0048A45B    pop         eax
 0048A45C    mov         edx,dword ptr [ebp-0BB0]
 0048A462    mov         dword ptr fs:[0],edx
>0048A469    jmp         00496D77
 0048A46E    mov         edx,6B5566
 0048A473    lea         eax,[ebp-108]
 0048A479    call        0067DAB4
 0048A47E    inc         dword ptr [ebp-0B94]
 0048A484    push        dword ptr [eax]
 0048A486    mov         word ptr [ebp-0BA0],200
 0048A48F    mov         eax,dword ptr [ebp-0BB4]
 0048A495    add         eax,22
 0048A498    mov         edx,3
 0048A49D    call        00403C2C
 0048A4A2    mov         edx,eax
 0048A4A4    lea         eax,[ebp-104]
 0048A4AA    call        0067DAB4
 0048A4AF    inc         dword ptr [ebp-0B94]
 0048A4B5    mov         eax,dword ptr [eax]
 0048A4B7    pop         edx
 0048A4B8    call        SameText
 0048A4BD    push        eax
 0048A4BE    dec         dword ptr [ebp-0B94]
 0048A4C4    lea         eax,[ebp-108]
 0048A4CA    mov         edx,2
 0048A4CF    call        0067DCA0
 0048A4D4    dec         dword ptr [ebp-0B94]
 0048A4DA    lea         eax,[ebp-104]
 0048A4E0    mov         edx,2
 0048A4E5    call        0067DCA0
 0048A4EA    pop         ecx
 0048A4EB    test        cl,cl
>0048A4ED    je          0048A5F0
 0048A4F3    mov         eax,dword ptr [ebp-0BB4]
 0048A4F9    mov         byte ptr [eax+5],28
 0048A4FD    push        4
 0048A4FF    mov         word ptr [ebp-0BA0],20C
 0048A508    mov         edx,6B5572
 0048A50D    lea         eax,[ebp-10C]
 0048A513    call        0067DAB4
 0048A518    inc         dword ptr [ebp-0B94]
 0048A51E    push        dword ptr [eax]
 0048A520    push        dword ptr [ebp-4]
 0048A523    xor         ecx,ecx
 0048A525    mov         dl,22
 0048A527    mov         eax,dword ptr [ebp-0BB4]
 0048A52D    mov         eax,dword ptr [eax+1E]
 0048A530    call        00483A34
 0048A535    dec         dword ptr [ebp-0B94]
 0048A53B    lea         eax,[ebp-10C]
 0048A541    mov         edx,2
 0048A546    call        0067DCA0
 0048A54B    push        4
 0048A54D    mov         word ptr [ebp-0BA0],218
 0048A556    mov         edx,6B5577
 0048A55B    lea         eax,[ebp-110]
 0048A561    call        0067DAB4
 0048A566    inc         dword ptr [ebp-0B94]
 0048A56C    push        dword ptr [eax]
 0048A56E    mov         edx,6B557E
 0048A573    lea         eax,[ebp-114]
 0048A579    call        0067DAB4
 0048A57E    inc         dword ptr [ebp-0B94]
 0048A584    push        dword ptr [eax]
 0048A586    mov         ecx,1
 0048A58B    mov         dl,21
 0048A58D    mov         eax,dword ptr [ebp-0BB4]
 0048A593    mov         eax,dword ptr [eax+1E]
 0048A596    call        00483A34
 0048A59B    dec         dword ptr [ebp-0B94]
 0048A5A1    lea         eax,[ebp-114]
 0048A5A7    mov         edx,2
 0048A5AC    call        0067DCA0
 0048A5B1    dec         dword ptr [ebp-0B94]
 0048A5B7    lea         eax,[ebp-110]
 0048A5BD    mov         edx,2
 0048A5C2    call        0067DCA0
 0048A5C7    mov         al,1
 0048A5C9    push        eax
 0048A5CA    dec         dword ptr [ebp-0B94]
 0048A5D0    lea         eax,[ebp-4]
 0048A5D3    mov         edx,2
 0048A5D8    call        0067DCA0
 0048A5DD    pop         eax
 0048A5DE    mov         edx,dword ptr [ebp-0BB0]
 0048A5E4    mov         dword ptr fs:[0],edx
>0048A5EB    jmp         00496D77
 0048A5F0    mov         edx,6B5587
 0048A5F5    lea         eax,[ebp-11C]
 0048A5FB    call        0067DAB4
 0048A600    inc         dword ptr [ebp-0B94]
 0048A606    push        dword ptr [eax]
 0048A608    mov         word ptr [ebp-0BA0],224
 0048A611    mov         eax,dword ptr [ebp-0BB4]
 0048A617    add         eax,22
 0048A61A    mov         edx,3
 0048A61F    call        00403C2C
 0048A624    mov         edx,eax
 0048A626    lea         eax,[ebp-118]
 0048A62C    call        0067DAB4
 0048A631    inc         dword ptr [ebp-0B94]
 0048A637    mov         eax,dword ptr [eax]
 0048A639    pop         edx
 0048A63A    call        SameText
 0048A63F    push        eax
 0048A640    dec         dword ptr [ebp-0B94]
 0048A646    lea         eax,[ebp-11C]
 0048A64C    mov         edx,2
 0048A651    call        0067DCA0
 0048A656    dec         dword ptr [ebp-0B94]
 0048A65C    lea         eax,[ebp-118]
 0048A662    mov         edx,2
 0048A667    call        0067DCA0
 0048A66C    pop         ecx
 0048A66D    test        cl,cl
>0048A66F    je          0048A772
 0048A675    mov         eax,dword ptr [ebp-0BB4]
 0048A67B    mov         byte ptr [eax+5],28
 0048A67F    push        4
 0048A681    mov         word ptr [ebp-0BA0],230
 0048A68A    mov         edx,6B5594
 0048A68F    lea         eax,[ebp-120]
 0048A695    call        0067DAB4
 0048A69A    inc         dword ptr [ebp-0B94]
 0048A6A0    push        dword ptr [eax]
 0048A6A2    push        dword ptr [ebp-4]
 0048A6A5    xor         ecx,ecx
 0048A6A7    mov         dl,22
 0048A6A9    mov         eax,dword ptr [ebp-0BB4]
 0048A6AF    mov         eax,dword ptr [eax+1E]
 0048A6B2    call        00483A34
 0048A6B7    dec         dword ptr [ebp-0B94]
 0048A6BD    lea         eax,[ebp-120]
 0048A6C3    mov         edx,2
 0048A6C8    call        0067DCA0
 0048A6CD    push        4
 0048A6CF    mov         word ptr [ebp-0BA0],23C
 0048A6D8    mov         edx,6B5599
 0048A6DD    lea         eax,[ebp-124]
 0048A6E3    call        0067DAB4
 0048A6E8    inc         dword ptr [ebp-0B94]
 0048A6EE    push        dword ptr [eax]
 0048A6F0    mov         edx,6B55A0
 0048A6F5    lea         eax,[ebp-128]
 0048A6FB    call        0067DAB4
 0048A700    inc         dword ptr [ebp-0B94]
 0048A706    push        dword ptr [eax]
 0048A708    mov         ecx,1
 0048A70D    mov         dl,21
 0048A70F    mov         eax,dword ptr [ebp-0BB4]
 0048A715    mov         eax,dword ptr [eax+1E]
 0048A718    call        00483A34
 0048A71D    dec         dword ptr [ebp-0B94]
 0048A723    lea         eax,[ebp-128]
 0048A729    mov         edx,2
 0048A72E    call        0067DCA0
 0048A733    dec         dword ptr [ebp-0B94]
 0048A739    lea         eax,[ebp-124]
 0048A73F    mov         edx,2
 0048A744    call        0067DCA0
 0048A749    mov         al,1
 0048A74B    push        eax
 0048A74C    dec         dword ptr [ebp-0B94]
 0048A752    lea         eax,[ebp-4]
 0048A755    mov         edx,2
 0048A75A    call        0067DCA0
 0048A75F    pop         eax
 0048A760    mov         edx,dword ptr [ebp-0BB0]
 0048A766    mov         dword ptr fs:[0],edx
>0048A76D    jmp         00496D77
 0048A772    mov         edx,6B55A9
 0048A777    lea         eax,[ebp-130]
 0048A77D    call        0067DAB4
 0048A782    inc         dword ptr [ebp-0B94]
 0048A788    push        dword ptr [eax]
 0048A78A    mov         word ptr [ebp-0BA0],248
 0048A793    mov         eax,dword ptr [ebp-0BB4]
 0048A799    add         eax,22
 0048A79C    mov         edx,3
 0048A7A1    call        00403C2C
 0048A7A6    mov         edx,eax
 0048A7A8    lea         eax,[ebp-12C]
 0048A7AE    call        0067DAB4
 0048A7B3    inc         dword ptr [ebp-0B94]
 0048A7B9    mov         eax,dword ptr [eax]
 0048A7BB    pop         edx
 0048A7BC    call        SameText
 0048A7C1    push        eax
 0048A7C2    dec         dword ptr [ebp-0B94]
 0048A7C8    lea         eax,[ebp-130]
 0048A7CE    mov         edx,2
 0048A7D3    call        0067DCA0
 0048A7D8    dec         dword ptr [ebp-0B94]
 0048A7DE    lea         eax,[ebp-12C]
 0048A7E4    mov         edx,2
 0048A7E9    call        0067DCA0
 0048A7EE    pop         ecx
 0048A7EF    test        cl,cl
>0048A7F1    je          0048A8F4
 0048A7F7    mov         eax,dword ptr [ebp-0BB4]
 0048A7FD    mov         byte ptr [eax+5],28
 0048A801    push        4
 0048A803    mov         word ptr [ebp-0BA0],254
 0048A80C    mov         edx,6B55B6
 0048A811    lea         eax,[ebp-134]
 0048A817    call        0067DAB4
 0048A81C    inc         dword ptr [ebp-0B94]
 0048A822    push        dword ptr [eax]
 0048A824    push        dword ptr [ebp-4]
 0048A827    xor         ecx,ecx
 0048A829    mov         dl,22
 0048A82B    mov         eax,dword ptr [ebp-0BB4]
 0048A831    mov         eax,dword ptr [eax+1E]
 0048A834    call        00483A34
 0048A839    dec         dword ptr [ebp-0B94]
 0048A83F    lea         eax,[ebp-134]
 0048A845    mov         edx,2
 0048A84A    call        0067DCA0
 0048A84F    push        4
 0048A851    mov         word ptr [ebp-0BA0],260
 0048A85A    mov         edx,6B55BB
 0048A85F    lea         eax,[ebp-138]
 0048A865    call        0067DAB4
 0048A86A    inc         dword ptr [ebp-0B94]
 0048A870    push        dword ptr [eax]
 0048A872    mov         edx,6B55C2
 0048A877    lea         eax,[ebp-13C]
 0048A87D    call        0067DAB4
 0048A882    inc         dword ptr [ebp-0B94]
 0048A888    push        dword ptr [eax]
 0048A88A    mov         ecx,1
 0048A88F    mov         dl,21
 0048A891    mov         eax,dword ptr [ebp-0BB4]
 0048A897    mov         eax,dword ptr [eax+1E]
 0048A89A    call        00483A34
 0048A89F    dec         dword ptr [ebp-0B94]
 0048A8A5    lea         eax,[ebp-13C]
 0048A8AB    mov         edx,2
 0048A8B0    call        0067DCA0
 0048A8B5    dec         dword ptr [ebp-0B94]
 0048A8BB    lea         eax,[ebp-138]
 0048A8C1    mov         edx,2
 0048A8C6    call        0067DCA0
 0048A8CB    mov         al,1
 0048A8CD    push        eax
 0048A8CE    dec         dword ptr [ebp-0B94]
 0048A8D4    lea         eax,[ebp-4]
 0048A8D7    mov         edx,2
 0048A8DC    call        0067DCA0
 0048A8E1    pop         eax
 0048A8E2    mov         edx,dword ptr [ebp-0BB0]
 0048A8E8    mov         dword ptr fs:[0],edx
>0048A8EF    jmp         00496D77
 0048A8F4    mov         edx,6B55CC
 0048A8F9    lea         eax,[ebp-144]
 0048A8FF    call        0067DAB4
 0048A904    inc         dword ptr [ebp-0B94]
 0048A90A    push        dword ptr [eax]
 0048A90C    mov         word ptr [ebp-0BA0],26C
 0048A915    mov         eax,dword ptr [ebp-0BB4]
 0048A91B    add         eax,22
 0048A91E    mov         edx,3
 0048A923    call        00403C2C
 0048A928    mov         edx,eax
 0048A92A    lea         eax,[ebp-140]
 0048A930    call        0067DAB4
 0048A935    inc         dword ptr [ebp-0B94]
 0048A93B    mov         eax,dword ptr [eax]
 0048A93D    pop         edx
 0048A93E    call        SameText
 0048A943    push        eax
 0048A944    dec         dword ptr [ebp-0B94]
 0048A94A    lea         eax,[ebp-144]
 0048A950    mov         edx,2
 0048A955    call        0067DCA0
 0048A95A    dec         dword ptr [ebp-0B94]
 0048A960    lea         eax,[ebp-140]
 0048A966    mov         edx,2
 0048A96B    call        0067DCA0
 0048A970    pop         ecx
 0048A971    test        cl,cl
>0048A973    je          0048AA76
 0048A979    mov         eax,dword ptr [ebp-0BB4]
 0048A97F    mov         byte ptr [eax+5],28
 0048A983    push        4
 0048A985    mov         word ptr [ebp-0BA0],278
 0048A98E    mov         edx,6B55DA
 0048A993    lea         eax,[ebp-148]
 0048A999    call        0067DAB4
 0048A99E    inc         dword ptr [ebp-0B94]
 0048A9A4    push        dword ptr [eax]
 0048A9A6    push        dword ptr [ebp-4]
 0048A9A9    xor         ecx,ecx
 0048A9AB    mov         dl,22
 0048A9AD    mov         eax,dword ptr [ebp-0BB4]
 0048A9B3    mov         eax,dword ptr [eax+1E]
 0048A9B6    call        00483A34
 0048A9BB    dec         dword ptr [ebp-0B94]
 0048A9C1    lea         eax,[ebp-148]
 0048A9C7    mov         edx,2
 0048A9CC    call        0067DCA0
 0048A9D1    push        4
 0048A9D3    mov         word ptr [ebp-0BA0],284
 0048A9DC    mov         edx,6B55DF
 0048A9E1    lea         eax,[ebp-14C]
 0048A9E7    call        0067DAB4
 0048A9EC    inc         dword ptr [ebp-0B94]
 0048A9F2    push        dword ptr [eax]
 0048A9F4    mov         edx,6B55E6
 0048A9F9    lea         eax,[ebp-150]
 0048A9FF    call        0067DAB4
 0048AA04    inc         dword ptr [ebp-0B94]
 0048AA0A    push        dword ptr [eax]
 0048AA0C    mov         ecx,1
 0048AA11    mov         dl,21
 0048AA13    mov         eax,dword ptr [ebp-0BB4]
 0048AA19    mov         eax,dword ptr [eax+1E]
 0048AA1C    call        00483A34
 0048AA21    dec         dword ptr [ebp-0B94]
 0048AA27    lea         eax,[ebp-150]
 0048AA2D    mov         edx,2
 0048AA32    call        0067DCA0
 0048AA37    dec         dword ptr [ebp-0B94]
 0048AA3D    lea         eax,[ebp-14C]
 0048AA43    mov         edx,2
 0048AA48    call        0067DCA0
 0048AA4D    mov         al,1
 0048AA4F    push        eax
 0048AA50    dec         dword ptr [ebp-0B94]
 0048AA56    lea         eax,[ebp-4]
 0048AA59    mov         edx,2
 0048AA5E    call        0067DCA0
 0048AA63    pop         eax
 0048AA64    mov         edx,dword ptr [ebp-0BB0]
 0048AA6A    mov         dword ptr fs:[0],edx
>0048AA71    jmp         00496D77
 0048AA76    mov         edx,6B55F0
 0048AA7B    lea         eax,[ebp-158]
 0048AA81    call        0067DAB4
 0048AA86    inc         dword ptr [ebp-0B94]
 0048AA8C    push        dword ptr [eax]
 0048AA8E    mov         word ptr [ebp-0BA0],290
 0048AA97    mov         eax,dword ptr [ebp-0BB4]
 0048AA9D    add         eax,22
 0048AAA0    mov         edx,3
 0048AAA5    call        00403C2C
 0048AAAA    mov         edx,eax
 0048AAAC    lea         eax,[ebp-154]
 0048AAB2    call        0067DAB4
 0048AAB7    inc         dword ptr [ebp-0B94]
 0048AABD    mov         eax,dword ptr [eax]
 0048AABF    pop         edx
 0048AAC0    call        SameText
 0048AAC5    push        eax
 0048AAC6    dec         dword ptr [ebp-0B94]
 0048AACC    lea         eax,[ebp-158]
 0048AAD2    mov         edx,2
 0048AAD7    call        0067DCA0
 0048AADC    dec         dword ptr [ebp-0B94]
 0048AAE2    lea         eax,[ebp-154]
 0048AAE8    mov         edx,2
 0048AAED    call        0067DCA0
 0048AAF2    pop         ecx
 0048AAF3    test        cl,cl
>0048AAF5    je          0048ABF8
 0048AAFB    mov         eax,dword ptr [ebp-0BB4]
 0048AB01    mov         byte ptr [eax+5],28
 0048AB05    push        4
 0048AB07    mov         word ptr [ebp-0BA0],29C
 0048AB10    mov         edx,6B55FE
 0048AB15    lea         eax,[ebp-15C]
 0048AB1B    call        0067DAB4
 0048AB20    inc         dword ptr [ebp-0B94]
 0048AB26    push        dword ptr [eax]
 0048AB28    push        dword ptr [ebp-4]
 0048AB2B    xor         ecx,ecx
 0048AB2D    mov         dl,22
 0048AB2F    mov         eax,dword ptr [ebp-0BB4]
 0048AB35    mov         eax,dword ptr [eax+1E]
 0048AB38    call        00483A34
 0048AB3D    dec         dword ptr [ebp-0B94]
 0048AB43    lea         eax,[ebp-15C]
 0048AB49    mov         edx,2
 0048AB4E    call        0067DCA0
 0048AB53    push        4
 0048AB55    mov         word ptr [ebp-0BA0],2A8
 0048AB5E    mov         edx,6B5603
 0048AB63    lea         eax,[ebp-160]
 0048AB69    call        0067DAB4
 0048AB6E    inc         dword ptr [ebp-0B94]
 0048AB74    push        dword ptr [eax]
 0048AB76    mov         edx,6B560A
 0048AB7B    lea         eax,[ebp-164]
 0048AB81    call        0067DAB4
 0048AB86    inc         dword ptr [ebp-0B94]
 0048AB8C    push        dword ptr [eax]
 0048AB8E    mov         ecx,1
 0048AB93    mov         dl,23
 0048AB95    mov         eax,dword ptr [ebp-0BB4]
 0048AB9B    mov         eax,dword ptr [eax+1E]
 0048AB9E    call        00483A34
 0048ABA3    dec         dword ptr [ebp-0B94]
 0048ABA9    lea         eax,[ebp-164]
 0048ABAF    mov         edx,2
 0048ABB4    call        0067DCA0
 0048ABB9    dec         dword ptr [ebp-0B94]
 0048ABBF    lea         eax,[ebp-160]
 0048ABC5    mov         edx,2
 0048ABCA    call        0067DCA0
 0048ABCF    mov         al,1
 0048ABD1    push        eax
 0048ABD2    dec         dword ptr [ebp-0B94]
 0048ABD8    lea         eax,[ebp-4]
 0048ABDB    mov         edx,2
 0048ABE0    call        0067DCA0
 0048ABE5    pop         eax
 0048ABE6    mov         edx,dword ptr [ebp-0BB0]
 0048ABEC    mov         dword ptr fs:[0],edx
>0048ABF3    jmp         00496D77
 0048ABF8    mov         edx,6B5616
 0048ABFD    lea         eax,[ebp-16C]
 0048AC03    call        0067DAB4
 0048AC08    inc         dword ptr [ebp-0B94]
 0048AC0E    push        dword ptr [eax]
 0048AC10    mov         word ptr [ebp-0BA0],2B4
 0048AC19    mov         eax,dword ptr [ebp-0BB4]
 0048AC1F    add         eax,22
 0048AC22    mov         edx,3
 0048AC27    call        00403C2C
 0048AC2C    mov         edx,eax
 0048AC2E    lea         eax,[ebp-168]
 0048AC34    call        0067DAB4
 0048AC39    inc         dword ptr [ebp-0B94]
 0048AC3F    mov         eax,dword ptr [eax]
 0048AC41    pop         edx
 0048AC42    call        SameText
 0048AC47    push        eax
 0048AC48    dec         dword ptr [ebp-0B94]
 0048AC4E    lea         eax,[ebp-16C]
 0048AC54    mov         edx,2
 0048AC59    call        0067DCA0
 0048AC5E    dec         dword ptr [ebp-0B94]
 0048AC64    lea         eax,[ebp-168]
 0048AC6A    mov         edx,2
 0048AC6F    call        0067DCA0
 0048AC74    pop         ecx
 0048AC75    test        cl,cl
>0048AC77    je          0048ADF6
 0048AC7D    mov         eax,dword ptr [ebp-0BB4]
 0048AC83    mov         byte ptr [eax+5],28
 0048AC87    push        4
 0048AC89    mov         word ptr [ebp-0BA0],2C0
 0048AC92    mov         edx,6B5623
 0048AC97    lea         eax,[ebp-170]
 0048AC9D    call        0067DAB4
 0048ACA2    inc         dword ptr [ebp-0B94]
 0048ACA8    push        dword ptr [eax]
 0048ACAA    push        dword ptr [ebp-4]
 0048ACAD    xor         ecx,ecx
 0048ACAF    mov         dl,22
 0048ACB1    mov         eax,dword ptr [ebp-0BB4]
 0048ACB7    mov         eax,dword ptr [eax+1E]
 0048ACBA    call        00483A34
 0048ACBF    dec         dword ptr [ebp-0B94]
 0048ACC5    lea         eax,[ebp-170]
 0048ACCB    mov         edx,2
 0048ACD0    call        0067DCA0
 0048ACD5    push        4
 0048ACD7    mov         word ptr [ebp-0BA0],2CC
 0048ACE0    mov         edx,6B5628
 0048ACE5    lea         eax,[ebp-174]
 0048ACEB    call        0067DAB4
 0048ACF0    inc         dword ptr [ebp-0B94]
 0048ACF6    push        dword ptr [eax]
 0048ACF8    mov         edx,6B562F
 0048ACFD    lea         eax,[ebp-178]
 0048AD03    call        0067DAB4
 0048AD08    inc         dword ptr [ebp-0B94]
 0048AD0E    push        dword ptr [eax]
 0048AD10    mov         ecx,1
 0048AD15    mov         dl,21
 0048AD17    mov         eax,dword ptr [ebp-0BB4]
 0048AD1D    mov         eax,dword ptr [eax+1E]
 0048AD20    call        00483A34
 0048AD25    dec         dword ptr [ebp-0B94]
 0048AD2B    lea         eax,[ebp-178]
 0048AD31    mov         edx,2
 0048AD36    call        0067DCA0
 0048AD3B    dec         dword ptr [ebp-0B94]
 0048AD41    lea         eax,[ebp-174]
 0048AD47    mov         edx,2
 0048AD4C    call        0067DCA0
 0048AD51    push        4
 0048AD53    mov         word ptr [ebp-0BA0],2D8
 0048AD5C    mov         edx,6B5639
 0048AD61    lea         eax,[ebp-17C]
 0048AD67    call        0067DAB4
 0048AD6C    inc         dword ptr [ebp-0B94]
 0048AD72    push        dword ptr [eax]
 0048AD74    mov         edx,6B5640
 0048AD79    lea         eax,[ebp-180]
 0048AD7F    call        0067DAB4
 0048AD84    inc         dword ptr [ebp-0B94]
 0048AD8A    push        dword ptr [eax]
 0048AD8C    mov         ecx,2
 0048AD91    mov         dl,21
 0048AD93    mov         eax,dword ptr [ebp-0BB4]
 0048AD99    mov         eax,dword ptr [eax+1E]
 0048AD9C    call        00483A34
 0048ADA1    dec         dword ptr [ebp-0B94]
 0048ADA7    lea         eax,[ebp-180]
 0048ADAD    mov         edx,2
 0048ADB2    call        0067DCA0
 0048ADB7    dec         dword ptr [ebp-0B94]
 0048ADBD    lea         eax,[ebp-17C]
 0048ADC3    mov         edx,2
 0048ADC8    call        0067DCA0
 0048ADCD    mov         al,1
 0048ADCF    push        eax
 0048ADD0    dec         dword ptr [ebp-0B94]
 0048ADD6    lea         eax,[ebp-4]
 0048ADD9    mov         edx,2
 0048ADDE    call        0067DCA0
 0048ADE3    pop         eax
 0048ADE4    mov         edx,dword ptr [ebp-0BB0]
 0048ADEA    mov         dword ptr fs:[0],edx
>0048ADF1    jmp         00496D77
 0048ADF6    mov         edx,6B5648
 0048ADFB    lea         eax,[ebp-188]
 0048AE01    call        0067DAB4
 0048AE06    inc         dword ptr [ebp-0B94]
 0048AE0C    push        dword ptr [eax]
 0048AE0E    mov         word ptr [ebp-0BA0],2E4
 0048AE17    mov         eax,dword ptr [ebp-0BB4]
 0048AE1D    add         eax,22
 0048AE20    mov         edx,3
 0048AE25    call        00403C2C
 0048AE2A    mov         edx,eax
 0048AE2C    lea         eax,[ebp-184]
 0048AE32    call        0067DAB4
 0048AE37    inc         dword ptr [ebp-0B94]
 0048AE3D    mov         eax,dword ptr [eax]
 0048AE3F    pop         edx
 0048AE40    call        SameText
 0048AE45    push        eax
 0048AE46    dec         dword ptr [ebp-0B94]
 0048AE4C    lea         eax,[ebp-188]
 0048AE52    mov         edx,2
 0048AE57    call        0067DCA0
 0048AE5C    dec         dword ptr [ebp-0B94]
 0048AE62    lea         eax,[ebp-184]
 0048AE68    mov         edx,2
 0048AE6D    call        0067DCA0
 0048AE72    pop         ecx
 0048AE73    test        cl,cl
>0048AE75    je          0048AFF4
 0048AE7B    mov         eax,dword ptr [ebp-0BB4]
 0048AE81    mov         byte ptr [eax+5],28
 0048AE85    push        4
 0048AE87    mov         word ptr [ebp-0BA0],2F0
 0048AE90    mov         edx,6B5656
 0048AE95    lea         eax,[ebp-18C]
 0048AE9B    call        0067DAB4
 0048AEA0    inc         dword ptr [ebp-0B94]
 0048AEA6    push        dword ptr [eax]
 0048AEA8    push        dword ptr [ebp-4]
 0048AEAB    xor         ecx,ecx
 0048AEAD    mov         dl,22
 0048AEAF    mov         eax,dword ptr [ebp-0BB4]
 0048AEB5    mov         eax,dword ptr [eax+1E]
 0048AEB8    call        00483A34
 0048AEBD    dec         dword ptr [ebp-0B94]
 0048AEC3    lea         eax,[ebp-18C]
 0048AEC9    mov         edx,2
 0048AECE    call        0067DCA0
 0048AED3    push        4
 0048AED5    mov         word ptr [ebp-0BA0],2FC
 0048AEDE    mov         edx,6B565B
 0048AEE3    lea         eax,[ebp-190]
 0048AEE9    call        0067DAB4
 0048AEEE    inc         dword ptr [ebp-0B94]
 0048AEF4    push        dword ptr [eax]
 0048AEF6    mov         edx,6B5662
 0048AEFB    lea         eax,[ebp-194]
 0048AF01    call        0067DAB4
 0048AF06    inc         dword ptr [ebp-0B94]
 0048AF0C    push        dword ptr [eax]
 0048AF0E    mov         ecx,1
 0048AF13    mov         dl,21
 0048AF15    mov         eax,dword ptr [ebp-0BB4]
 0048AF1B    mov         eax,dword ptr [eax+1E]
 0048AF1E    call        00483A34
 0048AF23    dec         dword ptr [ebp-0B94]
 0048AF29    lea         eax,[ebp-194]
 0048AF2F    mov         edx,2
 0048AF34    call        0067DCA0
 0048AF39    dec         dword ptr [ebp-0B94]
 0048AF3F    lea         eax,[ebp-190]
 0048AF45    mov         edx,2
 0048AF4A    call        0067DCA0
 0048AF4F    push        4
 0048AF51    mov         word ptr [ebp-0BA0],308
 0048AF5A    mov         edx,6B566C
 0048AF5F    lea         eax,[ebp-198]
 0048AF65    call        0067DAB4
 0048AF6A    inc         dword ptr [ebp-0B94]
 0048AF70    push        dword ptr [eax]
 0048AF72    mov         edx,6B5673
 0048AF77    lea         eax,[ebp-19C]
 0048AF7D    call        0067DAB4
 0048AF82    inc         dword ptr [ebp-0B94]
 0048AF88    push        dword ptr [eax]
 0048AF8A    mov         ecx,2
 0048AF8F    mov         dl,21
 0048AF91    mov         eax,dword ptr [ebp-0BB4]
 0048AF97    mov         eax,dword ptr [eax+1E]
 0048AF9A    call        00483A34
 0048AF9F    dec         dword ptr [ebp-0B94]
 0048AFA5    lea         eax,[ebp-19C]
 0048AFAB    mov         edx,2
 0048AFB0    call        0067DCA0
 0048AFB5    dec         dword ptr [ebp-0B94]
 0048AFBB    lea         eax,[ebp-198]
 0048AFC1    mov         edx,2
 0048AFC6    call        0067DCA0
 0048AFCB    mov         al,1
 0048AFCD    push        eax
 0048AFCE    dec         dword ptr [ebp-0B94]
 0048AFD4    lea         eax,[ebp-4]
 0048AFD7    mov         edx,2
 0048AFDC    call        0067DCA0
 0048AFE1    pop         eax
 0048AFE2    mov         edx,dword ptr [ebp-0BB0]
 0048AFE8    mov         dword ptr fs:[0],edx
>0048AFEF    jmp         00496D77
 0048AFF4    mov         edx,6B567B
 0048AFF9    lea         eax,[ebp-1A4]
 0048AFFF    call        0067DAB4
 0048B004    inc         dword ptr [ebp-0B94]
 0048B00A    push        dword ptr [eax]
 0048B00C    mov         word ptr [ebp-0BA0],314
 0048B015    mov         eax,dword ptr [ebp-0BB4]
 0048B01B    add         eax,22
 0048B01E    mov         edx,3
 0048B023    call        00403C2C
 0048B028    mov         edx,eax
 0048B02A    lea         eax,[ebp-1A0]
 0048B030    call        0067DAB4
 0048B035    inc         dword ptr [ebp-0B94]
 0048B03B    mov         eax,dword ptr [eax]
 0048B03D    pop         edx
 0048B03E    call        SameText
 0048B043    push        eax
 0048B044    dec         dword ptr [ebp-0B94]
 0048B04A    lea         eax,[ebp-1A4]
 0048B050    mov         edx,2
 0048B055    call        0067DCA0
 0048B05A    dec         dword ptr [ebp-0B94]
 0048B060    lea         eax,[ebp-1A0]
 0048B066    mov         edx,2
 0048B06B    call        0067DCA0
 0048B070    pop         ecx
 0048B071    test        cl,cl
>0048B073    je          0048B176
 0048B079    mov         eax,dword ptr [ebp-0BB4]
 0048B07F    mov         byte ptr [eax+5],28
 0048B083    push        4
 0048B085    mov         word ptr [ebp-0BA0],320
 0048B08E    mov         edx,6B5687
 0048B093    lea         eax,[ebp-1A8]
 0048B099    call        0067DAB4
 0048B09E    inc         dword ptr [ebp-0B94]
 0048B0A4    push        dword ptr [eax]
 0048B0A6    push        dword ptr [ebp-4]
 0048B0A9    xor         ecx,ecx
 0048B0AB    mov         dl,22
 0048B0AD    mov         eax,dword ptr [ebp-0BB4]
 0048B0B3    mov         eax,dword ptr [eax+1E]
 0048B0B6    call        00483A34
 0048B0BB    dec         dword ptr [ebp-0B94]
 0048B0C1    lea         eax,[ebp-1A8]
 0048B0C7    mov         edx,2
 0048B0CC    call        0067DCA0
 0048B0D1    push        4
 0048B0D3    mov         word ptr [ebp-0BA0],32C
 0048B0DC    mov         edx,6B568C
 0048B0E1    lea         eax,[ebp-1AC]
 0048B0E7    call        0067DAB4
 0048B0EC    inc         dword ptr [ebp-0B94]
 0048B0F2    push        dword ptr [eax]
 0048B0F4    mov         edx,6B5693
 0048B0F9    lea         eax,[ebp-1B0]
 0048B0FF    call        0067DAB4
 0048B104    inc         dword ptr [ebp-0B94]
 0048B10A    push        dword ptr [eax]
 0048B10C    mov         ecx,1
 0048B111    mov         dl,23
 0048B113    mov         eax,dword ptr [ebp-0BB4]
 0048B119    mov         eax,dword ptr [eax+1E]
 0048B11C    call        00483A34
 0048B121    dec         dword ptr [ebp-0B94]
 0048B127    lea         eax,[ebp-1B0]
 0048B12D    mov         edx,2
 0048B132    call        0067DCA0
 0048B137    dec         dword ptr [ebp-0B94]
 0048B13D    lea         eax,[ebp-1AC]
 0048B143    mov         edx,2
 0048B148    call        0067DCA0
 0048B14D    mov         al,1
 0048B14F    push        eax
 0048B150    dec         dword ptr [ebp-0B94]
 0048B156    lea         eax,[ebp-4]
 0048B159    mov         edx,2
 0048B15E    call        0067DCA0
 0048B163    pop         eax
 0048B164    mov         edx,dword ptr [ebp-0BB0]
 0048B16A    mov         dword ptr fs:[0],edx
>0048B171    jmp         00496D77
 0048B176    mov         edx,6B569E
 0048B17B    lea         eax,[ebp-1B8]
 0048B181    call        0067DAB4
 0048B186    inc         dword ptr [ebp-0B94]
 0048B18C    push        dword ptr [eax]
 0048B18E    mov         word ptr [ebp-0BA0],338
 0048B197    mov         eax,dword ptr [ebp-0BB4]
 0048B19D    add         eax,22
 0048B1A0    mov         edx,3
 0048B1A5    call        00403C2C
 0048B1AA    mov         edx,eax
 0048B1AC    lea         eax,[ebp-1B4]
 0048B1B2    call        0067DAB4
 0048B1B7    inc         dword ptr [ebp-0B94]
 0048B1BD    mov         eax,dword ptr [eax]
 0048B1BF    pop         edx
 0048B1C0    call        SameText
 0048B1C5    push        eax
 0048B1C6    dec         dword ptr [ebp-0B94]
 0048B1CC    lea         eax,[ebp-1B8]
 0048B1D2    mov         edx,2
 0048B1D7    call        0067DCA0
 0048B1DC    dec         dword ptr [ebp-0B94]
 0048B1E2    lea         eax,[ebp-1B4]
 0048B1E8    mov         edx,2
 0048B1ED    call        0067DCA0
 0048B1F2    pop         ecx
 0048B1F3    test        cl,cl
>0048B1F5    je          0048B374
 0048B1FB    mov         eax,dword ptr [ebp-0BB4]
 0048B201    mov         byte ptr [eax+5],28
 0048B205    push        4
 0048B207    mov         word ptr [ebp-0BA0],344
 0048B210    mov         edx,6B56AA
 0048B215    lea         eax,[ebp-1BC]
 0048B21B    call        0067DAB4
 0048B220    inc         dword ptr [ebp-0B94]
 0048B226    push        dword ptr [eax]
 0048B228    mov         edx,6B56AF
 0048B22D    lea         eax,[ebp-1C0]
 0048B233    call        0067DAB4
 0048B238    inc         dword ptr [ebp-0B94]
 0048B23E    push        dword ptr [eax]
 0048B240    xor         ecx,ecx
 0048B242    mov         dl,22
 0048B244    mov         eax,dword ptr [ebp-0BB4]
 0048B24A    mov         eax,dword ptr [eax+1E]
 0048B24D    call        00483A34
 0048B252    dec         dword ptr [ebp-0B94]
 0048B258    lea         eax,[ebp-1C0]
 0048B25E    mov         edx,2
 0048B263    call        0067DCA0
 0048B268    dec         dword ptr [ebp-0B94]
 0048B26E    lea         eax,[ebp-1BC]
 0048B274    mov         edx,2
 0048B279    call        0067DCA0
 0048B27E    push        4
 0048B280    mov         word ptr [ebp-0BA0],350
 0048B289    mov         edx,6B56BB
 0048B28E    lea         eax,[ebp-1C4]
 0048B294    call        0067DAB4
 0048B299    inc         dword ptr [ebp-0B94]
 0048B29F    push        dword ptr [eax]
 0048B2A1    push        dword ptr [ebp-4]
 0048B2A4    mov         ecx,1
 0048B2A9    mov         dl,23
 0048B2AB    mov         eax,dword ptr [ebp-0BB4]
 0048B2B1    mov         eax,dword ptr [eax+1E]
 0048B2B4    call        00483A34
 0048B2B9    dec         dword ptr [ebp-0B94]
 0048B2BF    lea         eax,[ebp-1C4]
 0048B2C5    mov         edx,2
 0048B2CA    call        0067DCA0
 0048B2CF    push        4
 0048B2D1    mov         word ptr [ebp-0BA0],35C
 0048B2DA    mov         edx,6B56C2
 0048B2DF    lea         eax,[ebp-1C8]
 0048B2E5    call        0067DAB4
 0048B2EA    inc         dword ptr [ebp-0B94]
 0048B2F0    push        dword ptr [eax]
 0048B2F2    mov         edx,6B56C9
 0048B2F7    lea         eax,[ebp-1CC]
 0048B2FD    call        0067DAB4
 0048B302    inc         dword ptr [ebp-0B94]
 0048B308    push        dword ptr [eax]
 0048B30A    mov         ecx,2
 0048B30F    mov         dl,21
 0048B311    mov         eax,dword ptr [ebp-0BB4]
 0048B317    mov         eax,dword ptr [eax+1E]
 0048B31A    call        00483A34
 0048B31F    dec         dword ptr [ebp-0B94]
 0048B325    lea         eax,[ebp-1CC]
 0048B32B    mov         edx,2
 0048B330    call        0067DCA0
 0048B335    dec         dword ptr [ebp-0B94]
 0048B33B    lea         eax,[ebp-1C8]
 0048B341    mov         edx,2
 0048B346    call        0067DCA0
 0048B34B    mov         al,1
 0048B34D    push        eax
 0048B34E    dec         dword ptr [ebp-0B94]
 0048B354    lea         eax,[ebp-4]
 0048B357    mov         edx,2
 0048B35C    call        0067DCA0
 0048B361    pop         eax
 0048B362    mov         edx,dword ptr [ebp-0BB0]
 0048B368    mov         dword ptr fs:[0],edx
>0048B36F    jmp         00496D77
 0048B374    mov         edx,6B56D1
 0048B379    lea         eax,[ebp-1D4]
 0048B37F    call        0067DAB4
 0048B384    inc         dword ptr [ebp-0B94]
 0048B38A    push        dword ptr [eax]
 0048B38C    mov         word ptr [ebp-0BA0],368
 0048B395    mov         eax,dword ptr [ebp-0BB4]
 0048B39B    add         eax,22
 0048B39E    mov         edx,3
 0048B3A3    call        00403C2C
 0048B3A8    mov         edx,eax
 0048B3AA    lea         eax,[ebp-1D0]
 0048B3B0    call        0067DAB4
 0048B3B5    inc         dword ptr [ebp-0B94]
 0048B3BB    mov         eax,dword ptr [eax]
 0048B3BD    pop         edx
 0048B3BE    call        SameText
 0048B3C3    push        eax
 0048B3C4    dec         dword ptr [ebp-0B94]
 0048B3CA    lea         eax,[ebp-1D4]
 0048B3D0    mov         edx,2
 0048B3D5    call        0067DCA0
 0048B3DA    dec         dword ptr [ebp-0B94]
 0048B3E0    lea         eax,[ebp-1D0]
 0048B3E6    mov         edx,2
 0048B3EB    call        0067DCA0
 0048B3F0    pop         ecx
 0048B3F1    test        cl,cl
>0048B3F3    je          0048B4C3
 0048B3F9    mov         eax,dword ptr [ebp-0BB4]
 0048B3FF    mov         byte ptr [eax+5],29
 0048B403    mov         word ptr [ebp-0BA0],374
 0048B40C    mov         edx,6B56D8
 0048B411    lea         eax,[ebp-1D8]
 0048B417    call        0067DAB4
 0048B41C    inc         dword ptr [ebp-0B94]
 0048B422    lea         edx,[ebp-1D8]
 0048B428    mov         eax,dword ptr [ebp-0BB4]
 0048B42E    add         eax,0A
 0048B431    call        0067DCD0
 0048B436    dec         dword ptr [ebp-0B94]
 0048B43C    lea         eax,[ebp-1D8]
 0048B442    mov         edx,2
 0048B447    call        0067DCA0
 0048B44C    push        4
 0048B44E    mov         word ptr [ebp-0BA0],380
 0048B457    mov         edx,6B56E0
 0048B45C    lea         eax,[ebp-1DC]
 0048B462    call        0067DAB4
 0048B467    inc         dword ptr [ebp-0B94]
 0048B46D    push        dword ptr [eax]
 0048B46F    push        dword ptr [ebp-4]
 0048B472    xor         ecx,ecx
 0048B474    mov         dl,21
 0048B476    mov         eax,dword ptr [ebp-0BB4]
 0048B47C    mov         eax,dword ptr [eax+1E]
 0048B47F    call        00483A34
 0048B484    dec         dword ptr [ebp-0B94]
 0048B48A    lea         eax,[ebp-1DC]
 0048B490    mov         edx,2
 0048B495    call        0067DCA0
 0048B49A    mov         al,1
 0048B49C    push        eax
 0048B49D    dec         dword ptr [ebp-0B94]
 0048B4A3    lea         eax,[ebp-4]
 0048B4A6    mov         edx,2
 0048B4AB    call        0067DCA0
 0048B4B0    pop         eax
 0048B4B1    mov         edx,dword ptr [ebp-0BB0]
 0048B4B7    mov         dword ptr fs:[0],edx
>0048B4BE    jmp         00496D77
 0048B4C3    mov         edx,6B56E2
 0048B4C8    lea         eax,[ebp-1E4]
 0048B4CE    call        0067DAB4
 0048B4D3    inc         dword ptr [ebp-0B94]
 0048B4D9    push        dword ptr [eax]
 0048B4DB    mov         word ptr [ebp-0BA0],38C
 0048B4E4    mov         eax,dword ptr [ebp-0BB4]
 0048B4EA    add         eax,22
 0048B4ED    mov         edx,3
 0048B4F2    call        00403C2C
 0048B4F7    mov         edx,eax
 0048B4F9    lea         eax,[ebp-1E0]
 0048B4FF    call        0067DAB4
 0048B504    inc         dword ptr [ebp-0B94]
 0048B50A    mov         eax,dword ptr [eax]
 0048B50C    pop         edx
 0048B50D    call        SameText
 0048B512    push        eax
 0048B513    dec         dword ptr [ebp-0B94]
 0048B519    lea         eax,[ebp-1E4]
 0048B51F    mov         edx,2
 0048B524    call        0067DCA0
 0048B529    dec         dword ptr [ebp-0B94]
 0048B52F    lea         eax,[ebp-1E0]
 0048B535    mov         edx,2
 0048B53A    call        0067DCA0
 0048B53F    pop         ecx
 0048B540    test        cl,cl
>0048B542    je          0048B61A
 0048B548    mov         eax,dword ptr [ebp-0BB4]
 0048B54E    mov         byte ptr [eax+5],28
 0048B552    push        4
 0048B554    mov         word ptr [ebp-0BA0],398
 0048B55D    mov         edx,6B56E9
 0048B562    lea         eax,[ebp-1E8]
 0048B568    call        0067DAB4
 0048B56D    inc         dword ptr [ebp-0B94]
 0048B573    push        dword ptr [eax]
 0048B575    push        dword ptr [ebp-4]
 0048B578    xor         ecx,ecx
 0048B57A    mov         dl,22
 0048B57C    mov         eax,dword ptr [ebp-0BB4]
 0048B582    mov         eax,dword ptr [eax+1E]
 0048B585    call        00483A34
 0048B58A    dec         dword ptr [ebp-0B94]
 0048B590    lea         eax,[ebp-1E8]
 0048B596    mov         edx,2
 0048B59B    call        0067DCA0
 0048B5A0    push        4
 0048B5A2    mov         word ptr [ebp-0BA0],3A4
 0048B5AB    mov         edx,6B56EE
 0048B5B0    lea         eax,[ebp-1EC]
 0048B5B6    call        0067DAB4
 0048B5BB    inc         dword ptr [ebp-0B94]
 0048B5C1    push        dword ptr [eax]
 0048B5C3    push        dword ptr [ebp-4]
 0048B5C6    mov         ecx,1
 0048B5CB    mov         dl,21
 0048B5CD    mov         eax,dword ptr [ebp-0BB4]
 0048B5D3    mov         eax,dword ptr [eax+1E]
 0048B5D6    call        00483A34
 0048B5DB    dec         dword ptr [ebp-0B94]
 0048B5E1    lea         eax,[ebp-1EC]
 0048B5E7    mov         edx,2
 0048B5EC    call        0067DCA0
 0048B5F1    mov         al,1
 0048B5F3    push        eax
 0048B5F4    dec         dword ptr [ebp-0B94]
 0048B5FA    lea         eax,[ebp-4]
 0048B5FD    mov         edx,2
 0048B602    call        0067DCA0
 0048B607    pop         eax
 0048B608    mov         edx,dword ptr [ebp-0BB0]
 0048B60E    mov         dword ptr fs:[0],edx
>0048B615    jmp         00496D77
 0048B61A    mov         edx,6B56F5
 0048B61F    lea         eax,[ebp-1F4]
 0048B625    call        0067DAB4
 0048B62A    inc         dword ptr [ebp-0B94]
 0048B630    push        dword ptr [eax]
 0048B632    mov         word ptr [ebp-0BA0],3B0
 0048B63B    mov         eax,dword ptr [ebp-0BB4]
 0048B641    add         eax,22
 0048B644    mov         edx,3
 0048B649    call        00403C2C
 0048B64E    mov         edx,eax
 0048B650    lea         eax,[ebp-1F0]
 0048B656    call        0067DAB4
 0048B65B    inc         dword ptr [ebp-0B94]
 0048B661    mov         eax,dword ptr [eax]
 0048B663    pop         edx
 0048B664    call        SameText
 0048B669    push        eax
 0048B66A    dec         dword ptr [ebp-0B94]
 0048B670    lea         eax,[ebp-1F4]
 0048B676    mov         edx,2
 0048B67B    call        0067DCA0
 0048B680    dec         dword ptr [ebp-0B94]
 0048B686    lea         eax,[ebp-1F0]
 0048B68C    mov         edx,2
 0048B691    call        0067DCA0
 0048B696    pop         ecx
 0048B697    test        cl,cl
>0048B699    je          0048B7C2
 0048B69F    mov         eax,dword ptr [ebp-0BB4]
 0048B6A5    mov         byte ptr [eax+5],28
 0048B6A9    push        4
 0048B6AB    mov         word ptr [ebp-0BA0],3BC
 0048B6B4    mov         edx,6B56FD
 0048B6B9    lea         eax,[ebp-1F8]
 0048B6BF    call        0067DAB4
 0048B6C4    inc         dword ptr [ebp-0B94]
 0048B6CA    push        dword ptr [eax]
 0048B6CC    push        dword ptr [ebp-4]
 0048B6CF    xor         ecx,ecx
 0048B6D1    mov         dl,22
 0048B6D3    mov         eax,dword ptr [ebp-0BB4]
 0048B6D9    mov         eax,dword ptr [eax+1E]
 0048B6DC    call        00483A34
 0048B6E1    dec         dword ptr [ebp-0B94]
 0048B6E7    lea         eax,[ebp-1F8]
 0048B6ED    mov         edx,2
 0048B6F2    call        0067DCA0
 0048B6F7    push        4
 0048B6F9    mov         word ptr [ebp-0BA0],3C8
 0048B702    mov         edx,6B5702
 0048B707    lea         eax,[ebp-1FC]
 0048B70D    call        0067DAB4
 0048B712    inc         dword ptr [ebp-0B94]
 0048B718    push        dword ptr [eax]
 0048B71A    push        dword ptr [ebp-4]
 0048B71D    mov         ecx,1
 0048B722    mov         dl,21
 0048B724    mov         eax,dword ptr [ebp-0BB4]
 0048B72A    mov         eax,dword ptr [eax+1E]
 0048B72D    call        00483A34
 0048B732    dec         dword ptr [ebp-0B94]
 0048B738    lea         eax,[ebp-1FC]
 0048B73E    mov         edx,2
 0048B743    call        0067DCA0
 0048B748    push        4
 0048B74A    mov         word ptr [ebp-0BA0],3D4
 0048B753    mov         edx,6B570A
 0048B758    lea         eax,[ebp-200]
 0048B75E    call        0067DAB4
 0048B763    inc         dword ptr [ebp-0B94]
 0048B769    push        dword ptr [eax]
 0048B76B    push        dword ptr [ebp-4]
 0048B76E    mov         ecx,2
 0048B773    mov         dl,21
 0048B775    mov         eax,dword ptr [ebp-0BB4]
 0048B77B    mov         eax,dword ptr [eax+1E]
 0048B77E    call        00483A34
 0048B783    dec         dword ptr [ebp-0B94]
 0048B789    lea         eax,[ebp-200]
 0048B78F    mov         edx,2
 0048B794    call        0067DCA0
 0048B799    mov         al,1
 0048B79B    push        eax
 0048B79C    dec         dword ptr [ebp-0B94]
 0048B7A2    lea         eax,[ebp-4]
 0048B7A5    mov         edx,2
 0048B7AA    call        0067DCA0
 0048B7AF    pop         eax
 0048B7B0    mov         edx,dword ptr [ebp-0BB0]
 0048B7B6    mov         dword ptr fs:[0],edx
>0048B7BD    jmp         00496D77
 0048B7C2    mov         edx,6B5712
 0048B7C7    lea         eax,[ebp-208]
 0048B7CD    call        0067DAB4
 0048B7D2    inc         dword ptr [ebp-0B94]
 0048B7D8    push        dword ptr [eax]
 0048B7DA    mov         word ptr [ebp-0BA0],3E0
 0048B7E3    mov         eax,dword ptr [ebp-0BB4]
 0048B7E9    add         eax,22
 0048B7EC    mov         edx,3
 0048B7F1    call        00403C2C
 0048B7F6    mov         edx,eax
 0048B7F8    lea         eax,[ebp-204]
 0048B7FE    call        0067DAB4
 0048B803    inc         dword ptr [ebp-0B94]
 0048B809    mov         eax,dword ptr [eax]
 0048B80B    pop         edx
 0048B80C    call        SameText
 0048B811    push        eax
 0048B812    dec         dword ptr [ebp-0B94]
 0048B818    lea         eax,[ebp-208]
 0048B81E    mov         edx,2
 0048B823    call        0067DCA0
 0048B828    dec         dword ptr [ebp-0B94]
 0048B82E    lea         eax,[ebp-204]
 0048B834    mov         edx,2
 0048B839    call        0067DCA0
 0048B83E    pop         ecx
 0048B83F    test        cl,cl
>0048B841    je          0048B944
 0048B847    mov         eax,dword ptr [ebp-0BB4]
 0048B84D    mov         byte ptr [eax+5],28
 0048B851    push        4
 0048B853    mov         word ptr [ebp-0BA0],3EC
 0048B85C    mov         edx,6B571A
 0048B861    lea         eax,[ebp-20C]
 0048B867    call        0067DAB4
 0048B86C    inc         dword ptr [ebp-0B94]
 0048B872    push        dword ptr [eax]
 0048B874    push        dword ptr [ebp-4]
 0048B877    xor         ecx,ecx
 0048B879    mov         dl,22
 0048B87B    mov         eax,dword ptr [ebp-0BB4]
 0048B881    mov         eax,dword ptr [eax+1E]
 0048B884    call        00483A34
 0048B889    dec         dword ptr [ebp-0B94]
 0048B88F    lea         eax,[ebp-20C]
 0048B895    mov         edx,2
 0048B89A    call        0067DCA0
 0048B89F    push        4
 0048B8A1    mov         word ptr [ebp-0BA0],3F8
 0048B8AA    mov         edx,6B571F
 0048B8AF    lea         eax,[ebp-210]
 0048B8B5    call        0067DAB4
 0048B8BA    inc         dword ptr [ebp-0B94]
 0048B8C0    push        dword ptr [eax]
 0048B8C2    mov         edx,6B5726
 0048B8C7    lea         eax,[ebp-214]
 0048B8CD    call        0067DAB4
 0048B8D2    inc         dword ptr [ebp-0B94]
 0048B8D8    push        dword ptr [eax]
 0048B8DA    mov         ecx,1
 0048B8DF    mov         dl,21
 0048B8E1    mov         eax,dword ptr [ebp-0BB4]
 0048B8E7    mov         eax,dword ptr [eax+1E]
 0048B8EA    call        00483A34
 0048B8EF    dec         dword ptr [ebp-0B94]
 0048B8F5    lea         eax,[ebp-214]
 0048B8FB    mov         edx,2
 0048B900    call        0067DCA0
 0048B905    dec         dword ptr [ebp-0B94]
 0048B90B    lea         eax,[ebp-210]
 0048B911    mov         edx,2
 0048B916    call        0067DCA0
 0048B91B    mov         al,1
 0048B91D    push        eax
 0048B91E    dec         dword ptr [ebp-0B94]
 0048B924    lea         eax,[ebp-4]
 0048B927    mov         edx,2
 0048B92C    call        0067DCA0
 0048B931    pop         eax
 0048B932    mov         edx,dword ptr [ebp-0BB0]
 0048B938    mov         dword ptr fs:[0],edx
>0048B93F    jmp         00496D77
 0048B944    mov         edx,6B572E
 0048B949    lea         eax,[ebp-21C]
 0048B94F    call        0067DAB4
 0048B954    inc         dword ptr [ebp-0B94]
 0048B95A    push        dword ptr [eax]
 0048B95C    mov         word ptr [ebp-0BA0],404
 0048B965    mov         eax,dword ptr [ebp-0BB4]
 0048B96B    add         eax,22
 0048B96E    mov         edx,3
 0048B973    call        00403C2C
 0048B978    mov         edx,eax
 0048B97A    lea         eax,[ebp-218]
 0048B980    call        0067DAB4
 0048B985    inc         dword ptr [ebp-0B94]
 0048B98B    mov         eax,dword ptr [eax]
 0048B98D    pop         edx
 0048B98E    call        SameText
 0048B993    push        eax
 0048B994    dec         dword ptr [ebp-0B94]
 0048B99A    lea         eax,[ebp-21C]
 0048B9A0    mov         edx,2
 0048B9A5    call        0067DCA0
 0048B9AA    dec         dword ptr [ebp-0B94]
 0048B9B0    lea         eax,[ebp-218]
 0048B9B6    mov         edx,2
 0048B9BB    call        0067DCA0
 0048B9C0    pop         ecx
 0048B9C1    test        cl,cl
>0048B9C3    je          0048BA9B
 0048B9C9    mov         eax,dword ptr [ebp-0BB4]
 0048B9CF    mov         byte ptr [eax+5],29
 0048B9D3    push        4
 0048B9D5    mov         word ptr [ebp-0BA0],410
 0048B9DE    mov         edx,6B5735
 0048B9E3    lea         eax,[ebp-220]
 0048B9E9    call        0067DAB4
 0048B9EE    inc         dword ptr [ebp-0B94]
 0048B9F4    push        dword ptr [eax]
 0048B9F6    push        dword ptr [ebp-4]
 0048B9F9    xor         ecx,ecx
 0048B9FB    mov         dl,21
 0048B9FD    mov         eax,dword ptr [ebp-0BB4]
 0048BA03    mov         eax,dword ptr [eax+1E]
 0048BA06    call        00483A34
 0048BA0B    dec         dword ptr [ebp-0B94]
 0048BA11    lea         eax,[ebp-220]
 0048BA17    mov         edx,2
 0048BA1C    call        0067DCA0
 0048BA21    push        4
 0048BA23    mov         word ptr [ebp-0BA0],41C
 0048BA2C    mov         edx,6B573A
 0048BA31    lea         eax,[ebp-224]
 0048BA37    call        0067DAB4
 0048BA3C    inc         dword ptr [ebp-0B94]
 0048BA42    push        dword ptr [eax]
 0048BA44    push        dword ptr [ebp-4]
 0048BA47    mov         ecx,1
 0048BA4C    mov         dl,21
 0048BA4E    mov         eax,dword ptr [ebp-0BB4]
 0048BA54    mov         eax,dword ptr [eax+1E]
 0048BA57    call        00483A34
 0048BA5C    dec         dword ptr [ebp-0B94]
 0048BA62    lea         eax,[ebp-224]
 0048BA68    mov         edx,2
 0048BA6D    call        0067DCA0
 0048BA72    mov         al,1
 0048BA74    push        eax
 0048BA75    dec         dword ptr [ebp-0B94]
 0048BA7B    lea         eax,[ebp-4]
 0048BA7E    mov         edx,2
 0048BA83    call        0067DCA0
 0048BA88    pop         eax
 0048BA89    mov         edx,dword ptr [ebp-0BB0]
 0048BA8F    mov         dword ptr fs:[0],edx
>0048BA96    jmp         00496D77
 0048BA9B    mov         edx,6B5740
 0048BAA0    lea         eax,[ebp-22C]
 0048BAA6    call        0067DAB4
 0048BAAB    inc         dword ptr [ebp-0B94]
 0048BAB1    push        dword ptr [eax]
 0048BAB3    mov         word ptr [ebp-0BA0],428
 0048BABC    mov         eax,dword ptr [ebp-0BB4]
 0048BAC2    add         eax,22
 0048BAC5    mov         edx,3
 0048BACA    call        00403C2C
 0048BACF    mov         edx,eax
 0048BAD1    lea         eax,[ebp-228]
 0048BAD7    call        0067DAB4
 0048BADC    inc         dword ptr [ebp-0B94]
 0048BAE2    mov         eax,dword ptr [eax]
 0048BAE4    pop         edx
 0048BAE5    call        SameText
 0048BAEA    push        eax
 0048BAEB    dec         dword ptr [ebp-0B94]
 0048BAF1    lea         eax,[ebp-22C]
 0048BAF7    mov         edx,2
 0048BAFC    call        0067DCA0
 0048BB01    dec         dword ptr [ebp-0B94]
 0048BB07    lea         eax,[ebp-228]
 0048BB0D    mov         edx,2
 0048BB12    call        0067DCA0
 0048BB17    pop         ecx
 0048BB18    test        cl,cl
>0048BB1A    je          0048BBEA
 0048BB20    mov         eax,dword ptr [ebp-0BB4]
 0048BB26    mov         byte ptr [eax+5],29
 0048BB2A    mov         word ptr [ebp-0BA0],434
 0048BB33    mov         edx,6B574A
 0048BB38    lea         eax,[ebp-230]
 0048BB3E    call        0067DAB4
 0048BB43    inc         dword ptr [ebp-0B94]
 0048BB49    lea         edx,[ebp-230]
 0048BB4F    mov         eax,dword ptr [ebp-0BB4]
 0048BB55    add         eax,0A
 0048BB58    call        0067DCD0
 0048BB5D    dec         dword ptr [ebp-0B94]
 0048BB63    lea         eax,[ebp-230]
 0048BB69    mov         edx,2
 0048BB6E    call        0067DCA0
 0048BB73    push        4
 0048BB75    mov         word ptr [ebp-0BA0],440
 0048BB7E    mov         edx,6B5752
 0048BB83    lea         eax,[ebp-234]
 0048BB89    call        0067DAB4
 0048BB8E    inc         dword ptr [ebp-0B94]
 0048BB94    push        dword ptr [eax]
 0048BB96    push        dword ptr [ebp-4]
 0048BB99    xor         ecx,ecx
 0048BB9B    mov         dl,22
 0048BB9D    mov         eax,dword ptr [ebp-0BB4]
 0048BBA3    mov         eax,dword ptr [eax+1E]
 0048BBA6    call        00483A34
 0048BBAB    dec         dword ptr [ebp-0B94]
 0048BBB1    lea         eax,[ebp-234]
 0048BBB7    mov         edx,2
 0048BBBC    call        0067DCA0
 0048BBC1    mov         al,1
 0048BBC3    push        eax
 0048BBC4    dec         dword ptr [ebp-0B94]
 0048BBCA    lea         eax,[ebp-4]
 0048BBCD    mov         edx,2
 0048BBD2    call        0067DCA0
 0048BBD7    pop         eax
 0048BBD8    mov         edx,dword ptr [ebp-0BB0]
 0048BBDE    mov         dword ptr fs:[0],edx
>0048BBE5    jmp         00496D77
 0048BBEA    mov         edx,6B5754
 0048BBEF    lea         eax,[ebp-23C]
 0048BBF5    call        0067DAB4
 0048BBFA    inc         dword ptr [ebp-0B94]
 0048BC00    push        dword ptr [eax]
 0048BC02    mov         word ptr [ebp-0BA0],44C
 0048BC0B    mov         eax,dword ptr [ebp-0BB4]
 0048BC11    add         eax,22
 0048BC14    mov         edx,3
 0048BC19    call        00403C2C
 0048BC1E    mov         edx,eax
 0048BC20    lea         eax,[ebp-238]
 0048BC26    call        0067DAB4
 0048BC2B    inc         dword ptr [ebp-0B94]
 0048BC31    mov         eax,dword ptr [eax]
 0048BC33    pop         edx
 0048BC34    call        SameText
 0048BC39    push        eax
 0048BC3A    dec         dword ptr [ebp-0B94]
 0048BC40    lea         eax,[ebp-23C]
 0048BC46    mov         edx,2
 0048BC4B    call        0067DCA0
 0048BC50    dec         dword ptr [ebp-0B94]
 0048BC56    lea         eax,[ebp-238]
 0048BC5C    mov         edx,2
 0048BC61    call        0067DCA0
 0048BC66    pop         ecx
 0048BC67    test        cl,cl
>0048BC69    je          0048BD39
 0048BC6F    mov         eax,dword ptr [ebp-0BB4]
 0048BC75    mov         byte ptr [eax+5],29
 0048BC79    mov         word ptr [ebp-0BA0],458
 0048BC82    mov         edx,6B575F
 0048BC87    lea         eax,[ebp-240]
 0048BC8D    call        0067DAB4
 0048BC92    inc         dword ptr [ebp-0B94]
 0048BC98    lea         edx,[ebp-240]
 0048BC9E    mov         eax,dword ptr [ebp-0BB4]
 0048BCA4    add         eax,0A
 0048BCA7    call        0067DCD0
 0048BCAC    dec         dword ptr [ebp-0B94]
 0048BCB2    lea         eax,[ebp-240]
 0048BCB8    mov         edx,2
 0048BCBD    call        0067DCA0
 0048BCC2    push        4
 0048BCC4    mov         word ptr [ebp-0BA0],464
 0048BCCD    mov         edx,6B5765
 0048BCD2    lea         eax,[ebp-244]
 0048BCD8    call        0067DAB4
 0048BCDD    inc         dword ptr [ebp-0B94]
 0048BCE3    push        dword ptr [eax]
 0048BCE5    push        dword ptr [ebp-4]
 0048BCE8    xor         ecx,ecx
 0048BCEA    mov         dl,21
 0048BCEC    mov         eax,dword ptr [ebp-0BB4]
 0048BCF2    mov         eax,dword ptr [eax+1E]
 0048BCF5    call        00483A34
 0048BCFA    dec         dword ptr [ebp-0B94]
 0048BD00    lea         eax,[ebp-244]
 0048BD06    mov         edx,2
 0048BD0B    call        0067DCA0
 0048BD10    mov         al,1
 0048BD12    push        eax
 0048BD13    dec         dword ptr [ebp-0B94]
 0048BD19    lea         eax,[ebp-4]
 0048BD1C    mov         edx,2
 0048BD21    call        0067DCA0
 0048BD26    pop         eax
 0048BD27    mov         edx,dword ptr [ebp-0BB0]
 0048BD2D    mov         dword ptr fs:[0],edx
>0048BD34    jmp         00496D77
 0048BD39    mov         edx,6B5767
 0048BD3E    lea         eax,[ebp-24C]
 0048BD44    call        0067DAB4
 0048BD49    inc         dword ptr [ebp-0B94]
 0048BD4F    push        dword ptr [eax]
 0048BD51    mov         word ptr [ebp-0BA0],470
 0048BD5A    mov         eax,dword ptr [ebp-0BB4]
 0048BD60    add         eax,22
 0048BD63    mov         edx,3
 0048BD68    call        00403C2C
 0048BD6D    mov         edx,eax
 0048BD6F    lea         eax,[ebp-248]
 0048BD75    call        0067DAB4
 0048BD7A    inc         dword ptr [ebp-0B94]
 0048BD80    mov         eax,dword ptr [eax]
 0048BD82    pop         edx
 0048BD83    call        SameText
 0048BD88    push        eax
 0048BD89    dec         dword ptr [ebp-0B94]
 0048BD8F    lea         eax,[ebp-24C]
 0048BD95    mov         edx,2
 0048BD9A    call        0067DCA0
 0048BD9F    dec         dword ptr [ebp-0B94]
 0048BDA5    lea         eax,[ebp-248]
 0048BDAB    mov         edx,2
 0048BDB0    call        0067DCA0
 0048BDB5    pop         ecx
 0048BDB6    test        cl,cl
>0048BDB8    je          0048BF48
 0048BDBE    mov         eax,dword ptr [ebp-0BB4]
 0048BDC4    mov         byte ptr [eax+5],29
 0048BDC8    lea         edx,[ebp-4]
 0048BDCB    mov         eax,dword ptr [ebp-0BB4]
 0048BDD1    add         eax,0A
 0048BDD4    call        0067DCD0
 0048BDD9    push        4
 0048BDDB    mov         word ptr [ebp-0BA0],47C
 0048BDE4    mov         edx,6B576F
 0048BDE9    lea         eax,[ebp-250]
 0048BDEF    call        0067DAB4
 0048BDF4    inc         dword ptr [ebp-0B94]
 0048BDFA    push        dword ptr [eax]
 0048BDFC    push        dword ptr [ebp-4]
 0048BDFF    xor         ecx,ecx
 0048BE01    mov         dl,23
 0048BE03    mov         eax,dword ptr [ebp-0BB4]
 0048BE09    mov         eax,dword ptr [eax+1E]
 0048BE0C    call        00483A34
 0048BE11    dec         dword ptr [ebp-0B94]
 0048BE17    lea         eax,[ebp-250]
 0048BE1D    mov         edx,2
 0048BE22    call        0067DCA0
 0048BE27    push        4
 0048BE29    mov         word ptr [ebp-0BA0],488
 0048BE32    mov         edx,6B5771
 0048BE37    lea         eax,[ebp-254]
 0048BE3D    call        0067DAB4
 0048BE42    inc         dword ptr [ebp-0B94]
 0048BE48    push        dword ptr [eax]
 0048BE4A    mov         edx,6B5777
 0048BE4F    lea         eax,[ebp-258]
 0048BE55    call        0067DAB4
 0048BE5A    inc         dword ptr [ebp-0B94]
 0048BE60    push        dword ptr [eax]
 0048BE62    mov         ecx,1
 0048BE67    mov         dl,21
 0048BE69    mov         eax,dword ptr [ebp-0BB4]
 0048BE6F    mov         eax,dword ptr [eax+1E]
 0048BE72    call        00483A34
 0048BE77    dec         dword ptr [ebp-0B94]
 0048BE7D    lea         eax,[ebp-258]
 0048BE83    mov         edx,2
 0048BE88    call        0067DCA0
 0048BE8D    dec         dword ptr [ebp-0B94]
 0048BE93    lea         eax,[ebp-254]
 0048BE99    mov         edx,2
 0048BE9E    call        0067DCA0
 0048BEA3    push        4
 0048BEA5    mov         word ptr [ebp-0BA0],494
 0048BEAE    mov         edx,6B577F
 0048BEB3    lea         eax,[ebp-25C]
 0048BEB9    call        0067DAB4
 0048BEBE    inc         dword ptr [ebp-0B94]
 0048BEC4    push        dword ptr [eax]
 0048BEC6    mov         edx,6B5785
 0048BECB    lea         eax,[ebp-260]
 0048BED1    call        0067DAB4
 0048BED6    inc         dword ptr [ebp-0B94]
 0048BEDC    push        dword ptr [eax]
 0048BEDE    mov         ecx,2
 0048BEE3    mov         dl,21
 0048BEE5    mov         eax,dword ptr [ebp-0BB4]
 0048BEEB    mov         eax,dword ptr [eax+1E]
 0048BEEE    call        00483A34
 0048BEF3    dec         dword ptr [ebp-0B94]
 0048BEF9    lea         eax,[ebp-260]
 0048BEFF    mov         edx,2
 0048BF04    call        0067DCA0
 0048BF09    dec         dword ptr [ebp-0B94]
 0048BF0F    lea         eax,[ebp-25C]
 0048BF15    mov         edx,2
 0048BF1A    call        0067DCA0
 0048BF1F    mov         al,1
 0048BF21    push        eax
 0048BF22    dec         dword ptr [ebp-0B94]
 0048BF28    lea         eax,[ebp-4]
 0048BF2B    mov         edx,2
 0048BF30    call        0067DCA0
 0048BF35    pop         eax
 0048BF36    mov         edx,dword ptr [ebp-0BB0]
 0048BF3C    mov         dword ptr fs:[0],edx
>0048BF43    jmp         00496D77
 0048BF48    mov         edx,6B578D
 0048BF4D    lea         eax,[ebp-268]
 0048BF53    call        0067DAB4
 0048BF58    inc         dword ptr [ebp-0B94]
 0048BF5E    push        dword ptr [eax]
 0048BF60    mov         word ptr [ebp-0BA0],4A0
 0048BF69    mov         eax,dword ptr [ebp-0BB4]
 0048BF6F    add         eax,22
 0048BF72    mov         edx,3
 0048BF77    call        00403C2C
 0048BF7C    mov         edx,eax
 0048BF7E    lea         eax,[ebp-264]
 0048BF84    call        0067DAB4
 0048BF89    inc         dword ptr [ebp-0B94]
 0048BF8F    mov         eax,dword ptr [eax]
 0048BF91    pop         edx
 0048BF92    call        SameText
 0048BF97    push        eax
 0048BF98    dec         dword ptr [ebp-0B94]
 0048BF9E    lea         eax,[ebp-268]
 0048BFA4    mov         edx,2
 0048BFA9    call        0067DCA0
 0048BFAE    dec         dword ptr [ebp-0B94]
 0048BFB4    lea         eax,[ebp-264]
 0048BFBA    mov         edx,2
 0048BFBF    call        0067DCA0
 0048BFC4    pop         ecx
 0048BFC5    test        cl,cl
>0048BFC7    je          0048C146
 0048BFCD    mov         eax,dword ptr [ebp-0BB4]
 0048BFD3    mov         byte ptr [eax+5],28
 0048BFD7    push        4
 0048BFD9    mov         word ptr [ebp-0BA0],4AC
 0048BFE2    mov         edx,6B5797
 0048BFE7    lea         eax,[ebp-26C]
 0048BFED    call        0067DAB4
 0048BFF2    inc         dword ptr [ebp-0B94]
 0048BFF8    push        dword ptr [eax]
 0048BFFA    push        dword ptr [ebp-4]
 0048BFFD    xor         ecx,ecx
 0048BFFF    mov         dl,22
 0048C001    mov         eax,dword ptr [ebp-0BB4]
 0048C007    mov         eax,dword ptr [eax+1E]
 0048C00A    call        00483A34
 0048C00F    dec         dword ptr [ebp-0B94]
 0048C015    lea         eax,[ebp-26C]
 0048C01B    mov         edx,2
 0048C020    call        0067DCA0
 0048C025    push        4
 0048C027    mov         word ptr [ebp-0BA0],4B8
 0048C030    mov         edx,6B5799
 0048C035    lea         eax,[ebp-270]
 0048C03B    call        0067DAB4
 0048C040    inc         dword ptr [ebp-0B94]
 0048C046    push        dword ptr [eax]
 0048C048    mov         edx,6B579F
 0048C04D    lea         eax,[ebp-274]
 0048C053    call        0067DAB4
 0048C058    inc         dword ptr [ebp-0B94]
 0048C05E    push        dword ptr [eax]
 0048C060    mov         ecx,1
 0048C065    mov         dl,21
 0048C067    mov         eax,dword ptr [ebp-0BB4]
 0048C06D    mov         eax,dword ptr [eax+1E]
 0048C070    call        00483A34
 0048C075    dec         dword ptr [ebp-0B94]
 0048C07B    lea         eax,[ebp-274]
 0048C081    mov         edx,2
 0048C086    call        0067DCA0
 0048C08B    dec         dword ptr [ebp-0B94]
 0048C091    lea         eax,[ebp-270]
 0048C097    mov         edx,2
 0048C09C    call        0067DCA0
 0048C0A1    push        4
 0048C0A3    mov         word ptr [ebp-0BA0],4C4
 0048C0AC    mov         edx,6B57A7
 0048C0B1    lea         eax,[ebp-278]
 0048C0B7    call        0067DAB4
 0048C0BC    inc         dword ptr [ebp-0B94]
 0048C0C2    push        dword ptr [eax]
 0048C0C4    mov         edx,6B57AD
 0048C0C9    lea         eax,[ebp-27C]
 0048C0CF    call        0067DAB4
 0048C0D4    inc         dword ptr [ebp-0B94]
 0048C0DA    push        dword ptr [eax]
 0048C0DC    mov         ecx,2
 0048C0E1    mov         dl,21
 0048C0E3    mov         eax,dword ptr [ebp-0BB4]
 0048C0E9    mov         eax,dword ptr [eax+1E]
 0048C0EC    call        00483A34
 0048C0F1    dec         dword ptr [ebp-0B94]
 0048C0F7    lea         eax,[ebp-27C]
 0048C0FD    mov         edx,2
 0048C102    call        0067DCA0
 0048C107    dec         dword ptr [ebp-0B94]
 0048C10D    lea         eax,[ebp-278]
 0048C113    mov         edx,2
 0048C118    call        0067DCA0
 0048C11D    mov         al,1
 0048C11F    push        eax
 0048C120    dec         dword ptr [ebp-0B94]
 0048C126    lea         eax,[ebp-4]
 0048C129    mov         edx,2
 0048C12E    call        0067DCA0
 0048C133    pop         eax
 0048C134    mov         edx,dword ptr [ebp-0BB0]
 0048C13A    mov         dword ptr fs:[0],edx
>0048C141    jmp         00496D77
 0048C146    mov         edx,6B57B5
 0048C14B    lea         eax,[ebp-284]
 0048C151    call        0067DAB4
 0048C156    inc         dword ptr [ebp-0B94]
 0048C15C    push        dword ptr [eax]
 0048C15E    mov         word ptr [ebp-0BA0],4D0
 0048C167    mov         eax,dword ptr [ebp-0BB4]
 0048C16D    add         eax,22
 0048C170    mov         edx,3
 0048C175    call        00403C2C
 0048C17A    mov         edx,eax
 0048C17C    lea         eax,[ebp-280]
 0048C182    call        0067DAB4
 0048C187    inc         dword ptr [ebp-0B94]
 0048C18D    mov         eax,dword ptr [eax]
 0048C18F    pop         edx
 0048C190    call        SameText
 0048C195    push        eax
 0048C196    dec         dword ptr [ebp-0B94]
 0048C19C    lea         eax,[ebp-284]
 0048C1A2    mov         edx,2
 0048C1A7    call        0067DCA0
 0048C1AC    dec         dword ptr [ebp-0B94]
 0048C1B2    lea         eax,[ebp-280]
 0048C1B8    mov         edx,2
 0048C1BD    call        0067DCA0
 0048C1C2    pop         ecx
 0048C1C3    test        cl,cl
>0048C1C5    je          0048C319
 0048C1CB    mov         eax,dword ptr [ebp-0BB4]
 0048C1D1    mov         byte ptr [eax+5],28
 0048C1D5    push        4
 0048C1D7    mov         word ptr [ebp-0BA0],4DC
 0048C1E0    mov         edx,6B57BF
 0048C1E5    lea         eax,[ebp-288]
 0048C1EB    call        0067DAB4
 0048C1F0    inc         dword ptr [ebp-0B94]
 0048C1F6    push        dword ptr [eax]
 0048C1F8    push        dword ptr [ebp-4]
 0048C1FB    xor         ecx,ecx
 0048C1FD    mov         dl,23
 0048C1FF    mov         eax,dword ptr [ebp-0BB4]
 0048C205    mov         eax,dword ptr [eax+1E]
 0048C208    call        00483A34
 0048C20D    dec         dword ptr [ebp-0B94]
 0048C213    lea         eax,[ebp-288]
 0048C219    mov         edx,2
 0048C21E    call        0067DCA0
 0048C223    push        4
 0048C225    mov         word ptr [ebp-0BA0],4E8
 0048C22E    mov         edx,6B57C6
 0048C233    lea         eax,[ebp-28C]
 0048C239    call        0067DAB4
 0048C23E    inc         dword ptr [ebp-0B94]
 0048C244    push        dword ptr [eax]
 0048C246    push        dword ptr [ebp-4]
 0048C249    mov         ecx,1
 0048C24E    mov         dl,22
 0048C250    mov         eax,dword ptr [ebp-0BB4]
 0048C256    mov         eax,dword ptr [eax+1E]
 0048C259    call        00483A34
 0048C25E    dec         dword ptr [ebp-0B94]
 0048C264    lea         eax,[ebp-28C]
 0048C26A    mov         edx,2
 0048C26F    call        0067DCA0
 0048C274    push        4
 0048C276    mov         word ptr [ebp-0BA0],4F4
 0048C27F    mov         edx,6B57C8
 0048C284    lea         eax,[ebp-290]
 0048C28A    call        0067DAB4
 0048C28F    inc         dword ptr [ebp-0B94]
 0048C295    push        dword ptr [eax]
 0048C297    mov         edx,6B57CE
 0048C29C    lea         eax,[ebp-294]
 0048C2A2    call        0067DAB4
 0048C2A7    inc         dword ptr [ebp-0B94]
 0048C2AD    push        dword ptr [eax]
 0048C2AF    mov         ecx,2
 0048C2B4    mov         dl,21
 0048C2B6    mov         eax,dword ptr [ebp-0BB4]
 0048C2BC    mov         eax,dword ptr [eax+1E]
 0048C2BF    call        00483A34
 0048C2C4    dec         dword ptr [ebp-0B94]
 0048C2CA    lea         eax,[ebp-294]
 0048C2D0    mov         edx,2
 0048C2D5    call        0067DCA0
 0048C2DA    dec         dword ptr [ebp-0B94]
 0048C2E0    lea         eax,[ebp-290]
 0048C2E6    mov         edx,2
 0048C2EB    call        0067DCA0
 0048C2F0    mov         al,1
 0048C2F2    push        eax
 0048C2F3    dec         dword ptr [ebp-0B94]
 0048C2F9    lea         eax,[ebp-4]
 0048C2FC    mov         edx,2
 0048C301    call        0067DCA0
 0048C306    pop         eax
 0048C307    mov         edx,dword ptr [ebp-0BB0]
 0048C30D    mov         dword ptr fs:[0],edx
>0048C314    jmp         00496D77
 0048C319    mov         edx,6B57D6
 0048C31E    lea         eax,[ebp-29C]
 0048C324    call        0067DAB4
 0048C329    inc         dword ptr [ebp-0B94]
 0048C32F    push        dword ptr [eax]
 0048C331    mov         word ptr [ebp-0BA0],500
 0048C33A    mov         eax,dword ptr [ebp-0BB4]
 0048C340    add         eax,22
 0048C343    mov         edx,3
 0048C348    call        00403C2C
 0048C34D    mov         edx,eax
 0048C34F    lea         eax,[ebp-298]
 0048C355    call        0067DAB4
 0048C35A    inc         dword ptr [ebp-0B94]
 0048C360    mov         eax,dword ptr [eax]
 0048C362    pop         edx
 0048C363    call        SameText
 0048C368    push        eax
 0048C369    dec         dword ptr [ebp-0B94]
 0048C36F    lea         eax,[ebp-29C]
 0048C375    mov         edx,2
 0048C37A    call        0067DCA0
 0048C37F    dec         dword ptr [ebp-0B94]
 0048C385    lea         eax,[ebp-298]
 0048C38B    mov         edx,2
 0048C390    call        0067DCA0
 0048C395    pop         ecx
 0048C396    test        cl,cl
>0048C398    je          0048C4B9
 0048C39E    mov         eax,dword ptr [ebp-0BB4]
 0048C3A4    mov         byte ptr [eax+5],29
 0048C3A8    mov         word ptr [ebp-0BA0],50C
 0048C3B1    mov         edx,6B57DD
 0048C3B6    lea         eax,[ebp-2A0]
 0048C3BC    call        0067DAB4
 0048C3C1    inc         dword ptr [ebp-0B94]
 0048C3C7    lea         edx,[ebp-2A0]
 0048C3CD    mov         eax,dword ptr [ebp-0BB4]
 0048C3D3    add         eax,0A
 0048C3D6    call        0067DCD0
 0048C3DB    dec         dword ptr [ebp-0B94]
 0048C3E1    lea         eax,[ebp-2A0]
 0048C3E7    mov         edx,2
 0048C3EC    call        0067DCA0
 0048C3F1    push        4
 0048C3F3    mov         word ptr [ebp-0BA0],518
 0048C3FC    mov         edx,6B57E5
 0048C401    lea         eax,[ebp-2A4]
 0048C407    call        0067DAB4
 0048C40C    inc         dword ptr [ebp-0B94]
 0048C412    push        dword ptr [eax]
 0048C414    push        dword ptr [ebp-4]
 0048C417    xor         ecx,ecx
 0048C419    mov         dl,23
 0048C41B    mov         eax,dword ptr [ebp-0BB4]
 0048C421    mov         eax,dword ptr [eax+1E]
 0048C424    call        00483A34
 0048C429    dec         dword ptr [ebp-0B94]
 0048C42F    lea         eax,[ebp-2A4]
 0048C435    mov         edx,2
 0048C43A    call        0067DCA0
 0048C43F    push        4
 0048C441    mov         word ptr [ebp-0BA0],524
 0048C44A    mov         edx,6B57EC
 0048C44F    lea         eax,[ebp-2A8]
 0048C455    call        0067DAB4
 0048C45A    inc         dword ptr [ebp-0B94]
 0048C460    push        dword ptr [eax]
 0048C462    push        dword ptr [ebp-4]
 0048C465    mov         ecx,1
 0048C46A    mov         dl,23
 0048C46C    mov         eax,dword ptr [ebp-0BB4]
 0048C472    mov         eax,dword ptr [eax+1E]
 0048C475    call        00483A34
 0048C47A    dec         dword ptr [ebp-0B94]
 0048C480    lea         eax,[ebp-2A8]
 0048C486    mov         edx,2
 0048C48B    call        0067DCA0
 0048C490    mov         al,1
 0048C492    push        eax
 0048C493    dec         dword ptr [ebp-0B94]
 0048C499    lea         eax,[ebp-4]
 0048C49C    mov         edx,2
 0048C4A1    call        0067DCA0
 0048C4A6    pop         eax
 0048C4A7    mov         edx,dword ptr [ebp-0BB0]
 0048C4AD    mov         dword ptr fs:[0],edx
>0048C4B4    jmp         00496D77
 0048C4B9    mov         edx,6B57EE
 0048C4BE    lea         eax,[ebp-2B0]
 0048C4C4    call        0067DAB4
 0048C4C9    inc         dword ptr [ebp-0B94]
 0048C4CF    push        dword ptr [eax]
 0048C4D1    mov         word ptr [ebp-0BA0],530
 0048C4DA    mov         eax,dword ptr [ebp-0BB4]
 0048C4E0    add         eax,22
 0048C4E3    mov         edx,3
 0048C4E8    call        00403C2C
 0048C4ED    mov         edx,eax
 0048C4EF    lea         eax,[ebp-2AC]
 0048C4F5    call        0067DAB4
 0048C4FA    inc         dword ptr [ebp-0B94]
 0048C500    mov         eax,dword ptr [eax]
 0048C502    pop         edx
 0048C503    call        SameText
 0048C508    push        eax
 0048C509    dec         dword ptr [ebp-0B94]
 0048C50F    lea         eax,[ebp-2B0]
 0048C515    mov         edx,2
 0048C51A    call        0067DCA0
 0048C51F    dec         dword ptr [ebp-0B94]
 0048C525    lea         eax,[ebp-2AC]
 0048C52B    mov         edx,2
 0048C530    call        0067DCA0
 0048C535    pop         ecx
 0048C536    test        cl,cl
>0048C538    je          0048C63B
 0048C53E    mov         eax,dword ptr [ebp-0BB4]
 0048C544    mov         byte ptr [eax+5],28
 0048C548    push        4
 0048C54A    mov         word ptr [ebp-0BA0],53C
 0048C553    mov         edx,6B57FB
 0048C558    lea         eax,[ebp-2B4]
 0048C55E    call        0067DAB4
 0048C563    inc         dword ptr [ebp-0B94]
 0048C569    push        dword ptr [eax]
 0048C56B    push        dword ptr [ebp-4]
 0048C56E    xor         ecx,ecx
 0048C570    mov         dl,22
 0048C572    mov         eax,dword ptr [ebp-0BB4]
 0048C578    mov         eax,dword ptr [eax+1E]
 0048C57B    call        00483A34
 0048C580    dec         dword ptr [ebp-0B94]
 0048C586    lea         eax,[ebp-2B4]
 0048C58C    mov         edx,2
 0048C591    call        0067DCA0
 0048C596    push        4
 0048C598    mov         word ptr [ebp-0BA0],548
 0048C5A1    mov         edx,6B57FD
 0048C5A6    lea         eax,[ebp-2B8]
 0048C5AC    call        0067DAB4
 0048C5B1    inc         dword ptr [ebp-0B94]
 0048C5B7    push        dword ptr [eax]
 0048C5B9    mov         edx,6B5804
 0048C5BE    lea         eax,[ebp-2BC]
 0048C5C4    call        0067DAB4
 0048C5C9    inc         dword ptr [ebp-0B94]
 0048C5CF    push        dword ptr [eax]
 0048C5D1    mov         ecx,1
 0048C5D6    mov         dl,21
 0048C5D8    mov         eax,dword ptr [ebp-0BB4]
 0048C5DE    mov         eax,dword ptr [eax+1E]
 0048C5E1    call        00483A34
 0048C5E6    dec         dword ptr [ebp-0B94]
 0048C5EC    lea         eax,[ebp-2BC]
 0048C5F2    mov         edx,2
 0048C5F7    call        0067DCA0
 0048C5FC    dec         dword ptr [ebp-0B94]
 0048C602    lea         eax,[ebp-2B8]
 0048C608    mov         edx,2
 0048C60D    call        0067DCA0
 0048C612    mov         al,1
 0048C614    push        eax
 0048C615    dec         dword ptr [ebp-0B94]
 0048C61B    lea         eax,[ebp-4]
 0048C61E    mov         edx,2
 0048C623    call        0067DCA0
 0048C628    pop         eax
 0048C629    mov         edx,dword ptr [ebp-0BB0]
 0048C62F    mov         dword ptr fs:[0],edx
>0048C636    jmp         00496D77
 0048C63B    mov         edx,6B580C
 0048C640    lea         eax,[ebp-2C4]
 0048C646    call        0067DAB4
 0048C64B    inc         dword ptr [ebp-0B94]
 0048C651    push        dword ptr [eax]
 0048C653    mov         word ptr [ebp-0BA0],554
 0048C65C    mov         eax,dword ptr [ebp-0BB4]
 0048C662    add         eax,22
 0048C665    mov         edx,3
 0048C66A    call        00403C2C
 0048C66F    mov         edx,eax
 0048C671    lea         eax,[ebp-2C0]
 0048C677    call        0067DAB4
 0048C67C    inc         dword ptr [ebp-0B94]
 0048C682    mov         eax,dword ptr [eax]
 0048C684    pop         edx
 0048C685    call        SameText
 0048C68A    push        eax
 0048C68B    dec         dword ptr [ebp-0B94]
 0048C691    lea         eax,[ebp-2C4]
 0048C697    mov         edx,2
 0048C69C    call        0067DCA0
 0048C6A1    dec         dword ptr [ebp-0B94]
 0048C6A7    lea         eax,[ebp-2C0]
 0048C6AD    mov         edx,2
 0048C6B2    call        0067DCA0
 0048C6B7    pop         ecx
 0048C6B8    test        cl,cl
>0048C6BA    je          0048C839
 0048C6C0    mov         eax,dword ptr [ebp-0BB4]
 0048C6C6    mov         byte ptr [eax+5],28
 0048C6CA    push        1
 0048C6CC    mov         word ptr [ebp-0BA0],560
 0048C6D5    mov         edx,6B5816
 0048C6DA    lea         eax,[ebp-2C8]
 0048C6E0    call        0067DAB4
 0048C6E5    inc         dword ptr [ebp-0B94]
 0048C6EB    push        dword ptr [eax]
 0048C6ED    mov         edx,6B5818
 0048C6F2    lea         eax,[ebp-2CC]
 0048C6F8    call        0067DAB4
 0048C6FD    inc         dword ptr [ebp-0B94]
 0048C703    push        dword ptr [eax]
 0048C705    xor         ecx,ecx
 0048C707    mov         dl,21
 0048C709    mov         eax,dword ptr [ebp-0BB4]
 0048C70F    mov         eax,dword ptr [eax+1E]
 0048C712    call        00483A34
 0048C717    dec         dword ptr [ebp-0B94]
 0048C71D    lea         eax,[ebp-2CC]
 0048C723    mov         edx,2
 0048C728    call        0067DCA0
 0048C72D    dec         dword ptr [ebp-0B94]
 0048C733    lea         eax,[ebp-2C8]
 0048C739    mov         edx,2
 0048C73E    call        0067DCA0
 0048C743    push        4
 0048C745    mov         word ptr [ebp-0BA0],56C
 0048C74E    mov         edx,6B581D
 0048C753    lea         eax,[ebp-2D0]
 0048C759    call        0067DAB4
 0048C75E    inc         dword ptr [ebp-0B94]
 0048C764    push        dword ptr [eax]
 0048C766    mov         edx,6B5823
 0048C76B    lea         eax,[ebp-2D4]
 0048C771    call        0067DAB4
 0048C776    inc         dword ptr [ebp-0B94]
 0048C77C    push        dword ptr [eax]
 0048C77E    mov         ecx,1
 0048C783    mov         dl,21
 0048C785    mov         eax,dword ptr [ebp-0BB4]
 0048C78B    mov         eax,dword ptr [eax+1E]
 0048C78E    call        00483A34
 0048C793    dec         dword ptr [ebp-0B94]
 0048C799    lea         eax,[ebp-2D4]
 0048C79F    mov         edx,2
 0048C7A4    call        0067DCA0
 0048C7A9    dec         dword ptr [ebp-0B94]
 0048C7AF    lea         eax,[ebp-2D0]
 0048C7B5    mov         edx,2
 0048C7BA    call        0067DCA0
 0048C7BF    push        4
 0048C7C1    mov         word ptr [ebp-0BA0],578
 0048C7CA    mov         edx,6B582B
 0048C7CF    lea         eax,[ebp-2D8]
 0048C7D5    call        0067DAB4
 0048C7DA    inc         dword ptr [ebp-0B94]
 0048C7E0    push        dword ptr [eax]
 0048C7E2    push        dword ptr [ebp-4]
 0048C7E5    mov         ecx,2
 0048C7EA    mov         dl,22
 0048C7EC    mov         eax,dword ptr [ebp-0BB4]
 0048C7F2    mov         eax,dword ptr [eax+1E]
 0048C7F5    call        00483A34
 0048C7FA    dec         dword ptr [ebp-0B94]
 0048C800    lea         eax,[ebp-2D8]
 0048C806    mov         edx,2
 0048C80B    call        0067DCA0
 0048C810    mov         al,1
 0048C812    push        eax
 0048C813    dec         dword ptr [ebp-0B94]
 0048C819    lea         eax,[ebp-4]
 0048C81C    mov         edx,2
 0048C821    call        0067DCA0
 0048C826    pop         eax
 0048C827    mov         edx,dword ptr [ebp-0BB0]
 0048C82D    mov         dword ptr fs:[0],edx
>0048C834    jmp         00496D77
 0048C839    mov         edx,6B5832
 0048C83E    lea         eax,[ebp-2E0]
 0048C844    call        0067DAB4
 0048C849    inc         dword ptr [ebp-0B94]
 0048C84F    push        dword ptr [eax]
 0048C851    mov         word ptr [ebp-0BA0],584
 0048C85A    mov         eax,dword ptr [ebp-0BB4]
 0048C860    add         eax,22
 0048C863    mov         edx,3
 0048C868    call        00403C2C
 0048C86D    mov         edx,eax
 0048C86F    lea         eax,[ebp-2DC]
 0048C875    call        0067DAB4
 0048C87A    inc         dword ptr [ebp-0B94]
 0048C880    mov         eax,dword ptr [eax]
 0048C882    pop         edx
 0048C883    call        SameText
 0048C888    push        eax
 0048C889    dec         dword ptr [ebp-0B94]
 0048C88F    lea         eax,[ebp-2E0]
 0048C895    mov         edx,2
 0048C89A    call        0067DCA0
 0048C89F    dec         dword ptr [ebp-0B94]
 0048C8A5    lea         eax,[ebp-2DC]
 0048C8AB    mov         edx,2
 0048C8B0    call        0067DCA0
 0048C8B5    pop         ecx
 0048C8B6    test        cl,cl
>0048C8B8    je          0048C988
 0048C8BE    mov         eax,dword ptr [ebp-0BB4]
 0048C8C4    mov         byte ptr [eax+5],29
 0048C8C8    mov         word ptr [ebp-0BA0],590
 0048C8D1    mov         edx,6B583E
 0048C8D6    lea         eax,[ebp-2E4]
 0048C8DC    call        0067DAB4
 0048C8E1    inc         dword ptr [ebp-0B94]
 0048C8E7    lea         edx,[ebp-2E4]
 0048C8ED    mov         eax,dword ptr [ebp-0BB4]
 0048C8F3    add         eax,0A
 0048C8F6    call        0067DCD0
 0048C8FB    dec         dword ptr [ebp-0B94]
 0048C901    lea         eax,[ebp-2E4]
 0048C907    mov         edx,2
 0048C90C    call        0067DCA0
 0048C911    push        4
 0048C913    mov         word ptr [ebp-0BA0],59C
 0048C91C    mov         edx,6B5848
 0048C921    lea         eax,[ebp-2E8]
 0048C927    call        0067DAB4
 0048C92C    inc         dword ptr [ebp-0B94]
 0048C932    push        dword ptr [eax]
 0048C934    push        dword ptr [ebp-4]
 0048C937    xor         ecx,ecx
 0048C939    mov         dl,21
 0048C93B    mov         eax,dword ptr [ebp-0BB4]
 0048C941    mov         eax,dword ptr [eax+1E]
 0048C944    call        00483A34
 0048C949    dec         dword ptr [ebp-0B94]
 0048C94F    lea         eax,[ebp-2E8]
 0048C955    mov         edx,2
 0048C95A    call        0067DCA0
 0048C95F    mov         al,1
 0048C961    push        eax
 0048C962    dec         dword ptr [ebp-0B94]
 0048C968    lea         eax,[ebp-4]
 0048C96B    mov         edx,2
 0048C970    call        0067DCA0
 0048C975    pop         eax
 0048C976    mov         edx,dword ptr [ebp-0BB0]
 0048C97C    mov         dword ptr fs:[0],edx
>0048C983    jmp         00496D77
 0048C988    mov         edx,6B584A
 0048C98D    lea         eax,[ebp-2F0]
 0048C993    call        0067DAB4
 0048C998    inc         dword ptr [ebp-0B94]
 0048C99E    push        dword ptr [eax]
 0048C9A0    mov         word ptr [ebp-0BA0],5A8
 0048C9A9    mov         eax,dword ptr [ebp-0BB4]
 0048C9AF    add         eax,22
 0048C9B2    mov         edx,3
 0048C9B7    call        00403C2C
 0048C9BC    mov         edx,eax
 0048C9BE    lea         eax,[ebp-2EC]
 0048C9C4    call        0067DAB4
 0048C9C9    inc         dword ptr [ebp-0B94]
 0048C9CF    mov         eax,dword ptr [eax]
 0048C9D1    pop         edx
 0048C9D2    call        SameText
 0048C9D7    push        eax
 0048C9D8    dec         dword ptr [ebp-0B94]
 0048C9DE    lea         eax,[ebp-2F0]
 0048C9E4    mov         edx,2
 0048C9E9    call        0067DCA0
 0048C9EE    dec         dword ptr [ebp-0B94]
 0048C9F4    lea         eax,[ebp-2EC]
 0048C9FA    mov         edx,2
 0048C9FF    call        0067DCA0
 0048CA04    pop         ecx
 0048CA05    test        cl,cl
>0048CA07    je          0048CB0A
 0048CA0D    mov         eax,dword ptr [ebp-0BB4]
 0048CA13    mov         byte ptr [eax+5],28
 0048CA17    push        4
 0048CA19    mov         word ptr [ebp-0BA0],5B4
 0048CA22    mov         edx,6B5856
 0048CA27    lea         eax,[ebp-2F4]
 0048CA2D    call        0067DAB4
 0048CA32    inc         dword ptr [ebp-0B94]
 0048CA38    push        dword ptr [eax]
 0048CA3A    push        dword ptr [ebp-4]
 0048CA3D    xor         ecx,ecx
 0048CA3F    mov         dl,22
 0048CA41    mov         eax,dword ptr [ebp-0BB4]
 0048CA47    mov         eax,dword ptr [eax+1E]
 0048CA4A    call        00483A34
 0048CA4F    dec         dword ptr [ebp-0B94]
 0048CA55    lea         eax,[ebp-2F4]
 0048CA5B    mov         edx,2
 0048CA60    call        0067DCA0
 0048CA65    push        4
 0048CA67    mov         word ptr [ebp-0BA0],5C0
 0048CA70    mov         edx,6B585B
 0048CA75    lea         eax,[ebp-2F8]
 0048CA7B    call        0067DAB4
 0048CA80    inc         dword ptr [ebp-0B94]
 0048CA86    push        dword ptr [eax]
 0048CA88    mov         edx,6B5862
 0048CA8D    lea         eax,[ebp-2FC]
 0048CA93    call        0067DAB4
 0048CA98    inc         dword ptr [ebp-0B94]
 0048CA9E    push        dword ptr [eax]
 0048CAA0    mov         ecx,1
 0048CAA5    mov         dl,23
 0048CAA7    mov         eax,dword ptr [ebp-0BB4]
 0048CAAD    mov         eax,dword ptr [eax+1E]
 0048CAB0    call        00483A34
 0048CAB5    dec         dword ptr [ebp-0B94]
 0048CABB    lea         eax,[ebp-2FC]
 0048CAC1    mov         edx,2
 0048CAC6    call        0067DCA0
 0048CACB    dec         dword ptr [ebp-0B94]
 0048CAD1    lea         eax,[ebp-2F8]
 0048CAD7    mov         edx,2
 0048CADC    call        0067DCA0
 0048CAE1    mov         al,1
 0048CAE3    push        eax
 0048CAE4    dec         dword ptr [ebp-0B94]
 0048CAEA    lea         eax,[ebp-4]
 0048CAED    mov         edx,2
 0048CAF2    call        0067DCA0
 0048CAF7    pop         eax
 0048CAF8    mov         edx,dword ptr [ebp-0BB0]
 0048CAFE    mov         dword ptr fs:[0],edx
>0048CB05    jmp         00496D77
 0048CB0A    mov         edx,6B586D
 0048CB0F    lea         eax,[ebp-304]
 0048CB15    call        0067DAB4
 0048CB1A    inc         dword ptr [ebp-0B94]
 0048CB20    push        dword ptr [eax]
 0048CB22    mov         word ptr [ebp-0BA0],5CC
 0048CB2B    mov         eax,dword ptr [ebp-0BB4]
 0048CB31    add         eax,22
 0048CB34    mov         edx,3
 0048CB39    call        00403C2C
 0048CB3E    mov         edx,eax
 0048CB40    lea         eax,[ebp-300]
 0048CB46    call        0067DAB4
 0048CB4B    inc         dword ptr [ebp-0B94]
 0048CB51    mov         eax,dword ptr [eax]
 0048CB53    pop         edx
 0048CB54    call        SameText
 0048CB59    push        eax
 0048CB5A    dec         dword ptr [ebp-0B94]
 0048CB60    lea         eax,[ebp-304]
 0048CB66    mov         edx,2
 0048CB6B    call        0067DCA0
 0048CB70    dec         dword ptr [ebp-0B94]
 0048CB76    lea         eax,[ebp-300]
 0048CB7C    mov         edx,2
 0048CB81    call        0067DCA0
 0048CB86    pop         ecx
 0048CB87    test        cl,cl
>0048CB89    je          0048CD08
 0048CB8F    mov         eax,dword ptr [ebp-0BB4]
 0048CB95    mov         byte ptr [eax+5],28
 0048CB99    push        4
 0048CB9B    mov         word ptr [ebp-0BA0],5D8
 0048CBA4    mov         edx,6B5878
 0048CBA9    lea         eax,[ebp-308]
 0048CBAF    call        0067DAB4
 0048CBB4    inc         dword ptr [ebp-0B94]
 0048CBBA    push        dword ptr [eax]
 0048CBBC    mov         edx,6B587A
 0048CBC1    lea         eax,[ebp-30C]
 0048CBC7    call        0067DAB4
 0048CBCC    inc         dword ptr [ebp-0B94]
 0048CBD2    push        dword ptr [eax]
 0048CBD4    xor         ecx,ecx
 0048CBD6    mov         dl,21
 0048CBD8    mov         eax,dword ptr [ebp-0BB4]
 0048CBDE    mov         eax,dword ptr [eax+1E]
 0048CBE1    call        00483A34
 0048CBE6    dec         dword ptr [ebp-0B94]
 0048CBEC    lea         eax,[ebp-30C]
 0048CBF2    mov         edx,2
 0048CBF7    call        0067DCA0
 0048CBFC    dec         dword ptr [ebp-0B94]
 0048CC02    lea         eax,[ebp-308]
 0048CC08    mov         edx,2
 0048CC0D    call        0067DCA0
 0048CC12    push        4
 0048CC14    mov         word ptr [ebp-0BA0],5E4
 0048CC1D    mov         edx,6B5883
 0048CC22    lea         eax,[ebp-310]
 0048CC28    call        0067DAB4
 0048CC2D    inc         dword ptr [ebp-0B94]
 0048CC33    push        dword ptr [eax]
 0048CC35    mov         edx,6B5889
 0048CC3A    lea         eax,[ebp-314]
 0048CC40    call        0067DAB4
 0048CC45    inc         dword ptr [ebp-0B94]
 0048CC4B    push        dword ptr [eax]
 0048CC4D    mov         ecx,1
 0048CC52    mov         dl,21
 0048CC54    mov         eax,dword ptr [ebp-0BB4]
 0048CC5A    mov         eax,dword ptr [eax+1E]
 0048CC5D    call        00483A34
 0048CC62    dec         dword ptr [ebp-0B94]
 0048CC68    lea         eax,[ebp-314]
 0048CC6E    mov         edx,2
 0048CC73    call        0067DCA0
 0048CC78    dec         dword ptr [ebp-0B94]
 0048CC7E    lea         eax,[ebp-310]
 0048CC84    mov         edx,2
 0048CC89    call        0067DCA0
 0048CC8E    push        4
 0048CC90    mov         word ptr [ebp-0BA0],5F0
 0048CC99    mov         edx,6B5891
 0048CC9E    lea         eax,[ebp-318]
 0048CCA4    call        0067DAB4
 0048CCA9    inc         dword ptr [ebp-0B94]
 0048CCAF    push        dword ptr [eax]
 0048CCB1    push        dword ptr [ebp-4]
 0048CCB4    mov         ecx,2
 0048CCB9    mov         dl,22
 0048CCBB    mov         eax,dword ptr [ebp-0BB4]
 0048CCC1    mov         eax,dword ptr [eax+1E]
 0048CCC4    call        00483A34
 0048CCC9    dec         dword ptr [ebp-0B94]
 0048CCCF    lea         eax,[ebp-318]
 0048CCD5    mov         edx,2
 0048CCDA    call        0067DCA0
 0048CCDF    mov         al,1
 0048CCE1    push        eax
 0048CCE2    dec         dword ptr [ebp-0B94]
 0048CCE8    lea         eax,[ebp-4]
 0048CCEB    mov         edx,2
 0048CCF0    call        0067DCA0
 0048CCF5    pop         eax
 0048CCF6    mov         edx,dword ptr [ebp-0BB0]
 0048CCFC    mov         dword ptr fs:[0],edx
>0048CD03    jmp         00496D77
 0048CD08    mov         edx,6B5898
 0048CD0D    lea         eax,[ebp-320]
 0048CD13    call        0067DAB4
 0048CD18    inc         dword ptr [ebp-0B94]
 0048CD1E    push        dword ptr [eax]
 0048CD20    mov         word ptr [ebp-0BA0],5FC
 0048CD29    mov         eax,dword ptr [ebp-0BB4]
 0048CD2F    add         eax,22
 0048CD32    mov         edx,3
 0048CD37    call        00403C2C
 0048CD3C    mov         edx,eax
 0048CD3E    lea         eax,[ebp-31C]
 0048CD44    call        0067DAB4
 0048CD49    inc         dword ptr [ebp-0B94]
 0048CD4F    mov         eax,dword ptr [eax]
 0048CD51    pop         edx
 0048CD52    call        SameText
 0048CD57    push        eax
 0048CD58    dec         dword ptr [ebp-0B94]
 0048CD5E    lea         eax,[ebp-320]
 0048CD64    mov         edx,2
 0048CD69    call        0067DCA0
 0048CD6E    dec         dword ptr [ebp-0B94]
 0048CD74    lea         eax,[ebp-31C]
 0048CD7A    mov         edx,2
 0048CD7F    call        0067DCA0
 0048CD84    pop         ecx
 0048CD85    test        cl,cl
>0048CD87    je          0048CE5F
 0048CD8D    mov         eax,dword ptr [ebp-0BB4]
 0048CD93    mov         byte ptr [eax+5],28
 0048CD97    push        4
 0048CD99    mov         word ptr [ebp-0BA0],608
 0048CDA2    mov         edx,6B58A1
 0048CDA7    lea         eax,[ebp-324]
 0048CDAD    call        0067DAB4
 0048CDB2    inc         dword ptr [ebp-0B94]
 0048CDB8    push        dword ptr [eax]
 0048CDBA    push        dword ptr [ebp-4]
 0048CDBD    xor         ecx,ecx
 0048CDBF    mov         dl,21
 0048CDC1    mov         eax,dword ptr [ebp-0BB4]
 0048CDC7    mov         eax,dword ptr [eax+1E]
 0048CDCA    call        00483A34
 0048CDCF    dec         dword ptr [ebp-0B94]
 0048CDD5    lea         eax,[ebp-324]
 0048CDDB    mov         edx,2
 0048CDE0    call        0067DCA0
 0048CDE5    push        4
 0048CDE7    mov         word ptr [ebp-0BA0],614
 0048CDF0    mov         edx,6B58A6
 0048CDF5    lea         eax,[ebp-328]
 0048CDFB    call        0067DAB4
 0048CE00    inc         dword ptr [ebp-0B94]
 0048CE06    push        dword ptr [eax]
 0048CE08    push        dword ptr [ebp-4]
 0048CE0B    mov         ecx,1
 0048CE10    mov         dl,21
 0048CE12    mov         eax,dword ptr [ebp-0BB4]
 0048CE18    mov         eax,dword ptr [eax+1E]
 0048CE1B    call        00483A34
 0048CE20    dec         dword ptr [ebp-0B94]
 0048CE26    lea         eax,[ebp-328]
 0048CE2C    mov         edx,2
 0048CE31    call        0067DCA0
 0048CE36    mov         al,1
 0048CE38    push        eax
 0048CE39    dec         dword ptr [ebp-0B94]
 0048CE3F    lea         eax,[ebp-4]
 0048CE42    mov         edx,2
 0048CE47    call        0067DCA0
 0048CE4C    pop         eax
 0048CE4D    mov         edx,dword ptr [ebp-0BB0]
 0048CE53    mov         dword ptr fs:[0],edx
>0048CE5A    jmp         00496D77
 0048CE5F    mov         word ptr [ebp-0BA0],620
 0048CE68    mov         edx,6B58AC
 0048CE6D    lea         eax,[ebp-32C]
 0048CE73    call        0067DAB4
 0048CE78    inc         dword ptr [ebp-0B94]
 0048CE7E    lea         edx,[ebp-32C]
 0048CE84    lea         eax,[ebp-4]
 0048CE87    call        0067DCD0
 0048CE8C    dec         dword ptr [ebp-0B94]
 0048CE92    lea         eax,[ebp-32C]
 0048CE98    mov         edx,2
 0048CE9D    call        0067DCA0
 0048CEA2    mov         word ptr [ebp-0BA0],62C
 0048CEAB    mov         edx,6B58B8
 0048CEB0    lea         eax,[ebp-330]
 0048CEB6    call        0067DAB4
 0048CEBB    inc         dword ptr [ebp-0B94]
 0048CEC1    mov         edx,dword ptr [eax]
 0048CEC3    mov         eax,dword ptr [ebp-0BB4]
 0048CEC9    mov         eax,dword ptr [eax+22]
 0048CECC    call        SameText
 0048CED1    push        eax
 0048CED2    dec         dword ptr [ebp-0B94]
 0048CED8    lea         eax,[ebp-330]
 0048CEDE    mov         edx,2
 0048CEE3    call        0067DCA0
 0048CEE8    pop         ecx
 0048CEE9    test        cl,cl
>0048CEEB    je          0048D0BB
 0048CEF1    mov         eax,dword ptr [ebp-0BB4]
 0048CEF7    mov         byte ptr [eax+5],28
 0048CEFB    push        4
 0048CEFD    mov         word ptr [ebp-0BA0],638
 0048CF06    mov         edx,6B58BE
 0048CF0B    lea         eax,[ebp-334]
 0048CF11    call        0067DAB4
 0048CF16    inc         dword ptr [ebp-0B94]
 0048CF1C    push        dword ptr [eax]
 0048CF1E    push        dword ptr [ebp-4]
 0048CF21    xor         ecx,ecx
 0048CF23    mov         dl,21
 0048CF25    mov         eax,dword ptr [ebp-0BB4]
 0048CF2B    mov         eax,dword ptr [eax+1E]
 0048CF2E    call        00483A34
 0048CF33    dec         dword ptr [ebp-0B94]
 0048CF39    lea         eax,[ebp-334]
 0048CF3F    mov         edx,2
 0048CF44    call        0067DCA0
 0048CF49    push        4
 0048CF4B    mov         word ptr [ebp-0BA0],644
 0048CF54    mov         edx,6B58C0
 0048CF59    lea         eax,[ebp-338]
 0048CF5F    call        0067DAB4
 0048CF64    inc         dword ptr [ebp-0B94]
 0048CF6A    push        dword ptr [eax]
 0048CF6C    mov         edx,6B58C6
 0048CF71    lea         eax,[ebp-33C]
 0048CF77    call        0067DAB4
 0048CF7C    inc         dword ptr [ebp-0B94]
 0048CF82    push        dword ptr [eax]
 0048CF84    mov         ecx,1
 0048CF89    mov         dl,21
 0048CF8B    mov         eax,dword ptr [ebp-0BB4]
 0048CF91    mov         eax,dword ptr [eax+1E]
 0048CF94    call        00483A34
 0048CF99    dec         dword ptr [ebp-0B94]
 0048CF9F    lea         eax,[ebp-33C]
 0048CFA5    mov         edx,2
 0048CFAA    call        0067DCA0
 0048CFAF    dec         dword ptr [ebp-0B94]
 0048CFB5    lea         eax,[ebp-338]
 0048CFBB    mov         edx,2
 0048CFC0    call        0067DCA0
 0048CFC5    push        4
 0048CFC7    mov         word ptr [ebp-0BA0],650
 0048CFD0    mov         edx,6B58CE
 0048CFD5    lea         eax,[ebp-340]
 0048CFDB    call        0067DAB4
 0048CFE0    inc         dword ptr [ebp-0B94]
 0048CFE6    push        dword ptr [eax]
 0048CFE8    mov         edx,6B58D4
 0048CFED    lea         eax,[ebp-344]
 0048CFF3    call        0067DAB4
 0048CFF8    inc         dword ptr [ebp-0B94]
 0048CFFE    push        dword ptr [eax]
 0048D000    mov         ecx,2
 0048D005    mov         dl,21
 0048D007    mov         eax,dword ptr [ebp-0BB4]
 0048D00D    mov         eax,dword ptr [eax+1E]
 0048D010    call        00483A34
 0048D015    dec         dword ptr [ebp-0B94]
 0048D01B    lea         eax,[ebp-344]
 0048D021    mov         edx,2
 0048D026    call        0067DCA0
 0048D02B    dec         dword ptr [ebp-0B94]
 0048D031    lea         eax,[ebp-340]
 0048D037    mov         edx,2
 0048D03C    call        0067DCA0
 0048D041    push        4
 0048D043    mov         word ptr [ebp-0BA0],65C
 0048D04C    mov         edx,6B58DC
 0048D051    lea         eax,[ebp-348]
 0048D057    call        0067DAB4
 0048D05C    inc         dword ptr [ebp-0B94]
 0048D062    push        dword ptr [eax]
 0048D064    push        dword ptr [ebp-4]
 0048D067    mov         ecx,8
 0048D06C    mov         dl,21
 0048D06E    mov         eax,dword ptr [ebp-0BB4]
 0048D074    mov         eax,dword ptr [eax+1E]
 0048D077    call        00483A34
 0048D07C    dec         dword ptr [ebp-0B94]
 0048D082    lea         eax,[ebp-348]
 0048D088    mov         edx,2
 0048D08D    call        0067DCA0
 0048D092    mov         al,1
 0048D094    push        eax
 0048D095    dec         dword ptr [ebp-0B94]
 0048D09B    lea         eax,[ebp-4]
 0048D09E    mov         edx,2
 0048D0A3    call        0067DCA0
 0048D0A8    pop         eax
 0048D0A9    mov         edx,dword ptr [ebp-0BB0]
 0048D0AF    mov         dword ptr fs:[0],edx
>0048D0B6    jmp         00496D77
 0048D0BB    mov         word ptr [ebp-0BA0],668
 0048D0C4    mov         edx,6B58E3
 0048D0C9    lea         eax,[ebp-34C]
 0048D0CF    call        0067DAB4
 0048D0D4    inc         dword ptr [ebp-0B94]
 0048D0DA    mov         edx,dword ptr [eax]
 0048D0DC    mov         eax,dword ptr [ebp-0BB4]
 0048D0E2    mov         eax,dword ptr [eax+22]
 0048D0E5    call        SameText
 0048D0EA    push        eax
 0048D0EB    dec         dword ptr [ebp-0B94]
 0048D0F1    lea         eax,[ebp-34C]
 0048D0F7    mov         edx,2
 0048D0FC    call        0067DCA0
 0048D101    pop         ecx
 0048D102    test        cl,cl
>0048D104    je          0048D283
 0048D10A    mov         eax,dword ptr [ebp-0BB4]
 0048D110    mov         byte ptr [eax+5],28
 0048D114    push        4
 0048D116    mov         word ptr [ebp-0BA0],674
 0048D11F    mov         edx,6B58EB
 0048D124    lea         eax,[ebp-350]
 0048D12A    call        0067DAB4
 0048D12F    inc         dword ptr [ebp-0B94]
 0048D135    push        dword ptr [eax]
 0048D137    push        dword ptr [ebp-4]
 0048D13A    xor         ecx,ecx
 0048D13C    mov         dl,22
 0048D13E    mov         eax,dword ptr [ebp-0BB4]
 0048D144    mov         eax,dword ptr [eax+1E]
 0048D147    call        00483A34
 0048D14C    dec         dword ptr [ebp-0B94]
 0048D152    lea         eax,[ebp-350]
 0048D158    mov         edx,2
 0048D15D    call        0067DCA0
 0048D162    push        4
 0048D164    mov         word ptr [ebp-0BA0],680
 0048D16D    mov         edx,6B58ED
 0048D172    lea         eax,[ebp-354]
 0048D178    call        0067DAB4
 0048D17D    inc         dword ptr [ebp-0B94]
 0048D183    push        dword ptr [eax]
 0048D185    mov         edx,6B58F3
 0048D18A    lea         eax,[ebp-358]
 0048D190    call        0067DAB4
 0048D195    inc         dword ptr [ebp-0B94]
 0048D19B    push        dword ptr [eax]
 0048D19D    mov         ecx,1
 0048D1A2    mov         dl,21
 0048D1A4    mov         eax,dword ptr [ebp-0BB4]
 0048D1AA    mov         eax,dword ptr [eax+1E]
 0048D1AD    call        00483A34
 0048D1B2    dec         dword ptr [ebp-0B94]
 0048D1B8    lea         eax,[ebp-358]
 0048D1BE    mov         edx,2
 0048D1C3    call        0067DCA0
 0048D1C8    dec         dword ptr [ebp-0B94]
 0048D1CE    lea         eax,[ebp-354]
 0048D1D4    mov         edx,2
 0048D1D9    call        0067DCA0
 0048D1DE    push        4
 0048D1E0    mov         word ptr [ebp-0BA0],68C
 0048D1E9    mov         edx,6B58FB
 0048D1EE    lea         eax,[ebp-35C]
 0048D1F4    call        0067DAB4
 0048D1F9    inc         dword ptr [ebp-0B94]
 0048D1FF    push        dword ptr [eax]
 0048D201    mov         edx,6B5901
 0048D206    lea         eax,[ebp-360]
 0048D20C    call        0067DAB4
 0048D211    inc         dword ptr [ebp-0B94]
 0048D217    push        dword ptr [eax]
 0048D219    mov         ecx,2
 0048D21E    mov         dl,21
 0048D220    mov         eax,dword ptr [ebp-0BB4]
 0048D226    mov         eax,dword ptr [eax+1E]
 0048D229    call        00483A34
 0048D22E    dec         dword ptr [ebp-0B94]
 0048D234    lea         eax,[ebp-360]
 0048D23A    mov         edx,2
 0048D23F    call        0067DCA0
 0048D244    dec         dword ptr [ebp-0B94]
 0048D24A    lea         eax,[ebp-35C]
 0048D250    mov         edx,2
 0048D255    call        0067DCA0
 0048D25A    mov         al,1
 0048D25C    push        eax
 0048D25D    dec         dword ptr [ebp-0B94]
 0048D263    lea         eax,[ebp-4]
 0048D266    mov         edx,2
 0048D26B    call        0067DCA0
 0048D270    pop         eax
 0048D271    mov         edx,dword ptr [ebp-0BB0]
 0048D277    mov         dword ptr fs:[0],edx
>0048D27E    jmp         00496D77
 0048D283    mov         word ptr [ebp-0BA0],698
 0048D28C    mov         edx,6B5909
 0048D291    lea         eax,[ebp-364]
 0048D297    call        0067DAB4
 0048D29C    inc         dword ptr [ebp-0B94]
 0048D2A2    mov         edx,dword ptr [eax]
 0048D2A4    mov         eax,dword ptr [ebp-0BB4]
 0048D2AA    mov         eax,dword ptr [eax+22]
 0048D2AD    call        SameText
 0048D2B2    push        eax
 0048D2B3    dec         dword ptr [ebp-0B94]
 0048D2B9    lea         eax,[ebp-364]
 0048D2BF    mov         edx,2
 0048D2C4    call        0067DCA0
 0048D2C9    pop         ecx
 0048D2CA    test        cl,cl
>0048D2CC    je          0048D44B
 0048D2D2    mov         eax,dword ptr [ebp-0BB4]
 0048D2D8    mov         byte ptr [eax+5],28
 0048D2DC    push        4
 0048D2DE    mov         word ptr [ebp-0BA0],6A4
 0048D2E7    mov         edx,6B5911
 0048D2EC    lea         eax,[ebp-368]
 0048D2F2    call        0067DAB4
 0048D2F7    inc         dword ptr [ebp-0B94]
 0048D2FD    push        dword ptr [eax]
 0048D2FF    push        dword ptr [ebp-4]
 0048D302    xor         ecx,ecx
 0048D304    mov         dl,21
 0048D306    mov         eax,dword ptr [ebp-0BB4]
 0048D30C    mov         eax,dword ptr [eax+1E]
 0048D30F    call        00483A34
 0048D314    dec         dword ptr [ebp-0B94]
 0048D31A    lea         eax,[ebp-368]
 0048D320    mov         edx,2
 0048D325    call        0067DCA0
 0048D32A    push        4
 0048D32C    mov         word ptr [ebp-0BA0],6B0
 0048D335    mov         edx,6B5918
 0048D33A    lea         eax,[ebp-36C]
 0048D340    call        0067DAB4
 0048D345    inc         dword ptr [ebp-0B94]
 0048D34B    push        dword ptr [eax]
 0048D34D    mov         edx,6B591D
 0048D352    lea         eax,[ebp-370]
 0048D358    call        0067DAB4
 0048D35D    inc         dword ptr [ebp-0B94]
 0048D363    push        dword ptr [eax]
 0048D365    mov         ecx,1
 0048D36A    mov         dl,22
 0048D36C    mov         eax,dword ptr [ebp-0BB4]
 0048D372    mov         eax,dword ptr [eax+1E]
 0048D375    call        00483A34
 0048D37A    dec         dword ptr [ebp-0B94]
 0048D380    lea         eax,[ebp-370]
 0048D386    mov         edx,2
 0048D38B    call        0067DCA0
 0048D390    dec         dword ptr [ebp-0B94]
 0048D396    lea         eax,[ebp-36C]
 0048D39C    mov         edx,2
 0048D3A1    call        0067DCA0
 0048D3A6    push        4
 0048D3A8    mov         word ptr [ebp-0BA0],6BC
 0048D3B1    mov         edx,6B5929
 0048D3B6    lea         eax,[ebp-374]
 0048D3BC    call        0067DAB4
 0048D3C1    inc         dword ptr [ebp-0B94]
 0048D3C7    push        dword ptr [eax]
 0048D3C9    mov         edx,6B592F
 0048D3CE    lea         eax,[ebp-378]
 0048D3D4    call        0067DAB4
 0048D3D9    inc         dword ptr [ebp-0B94]
 0048D3DF    push        dword ptr [eax]
 0048D3E1    mov         ecx,2
 0048D3E6    mov         dl,21
 0048D3E8    mov         eax,dword ptr [ebp-0BB4]
 0048D3EE    mov         eax,dword ptr [eax+1E]
 0048D3F1    call        00483A34
 0048D3F6    dec         dword ptr [ebp-0B94]
 0048D3FC    lea         eax,[ebp-378]
 0048D402    mov         edx,2
 0048D407    call        0067DCA0
 0048D40C    dec         dword ptr [ebp-0B94]
 0048D412    lea         eax,[ebp-374]
 0048D418    mov         edx,2
 0048D41D    call        0067DCA0
 0048D422    mov         al,1
 0048D424    push        eax
 0048D425    dec         dword ptr [ebp-0B94]
 0048D42B    lea         eax,[ebp-4]
 0048D42E    mov         edx,2
 0048D433    call        0067DCA0
 0048D438    pop         eax
 0048D439    mov         edx,dword ptr [ebp-0BB0]
 0048D43F    mov         dword ptr fs:[0],edx
>0048D446    jmp         00496D77
 0048D44B    mov         word ptr [ebp-0BA0],6C8
 0048D454    mov         edx,6B5937
 0048D459    lea         eax,[ebp-37C]
 0048D45F    call        0067DAB4
 0048D464    inc         dword ptr [ebp-0B94]
 0048D46A    mov         edx,dword ptr [eax]
 0048D46C    mov         eax,dword ptr [ebp-0BB4]
 0048D472    mov         eax,dword ptr [eax+22]
 0048D475    call        SameText
 0048D47A    push        eax
 0048D47B    dec         dword ptr [ebp-0B94]
 0048D481    lea         eax,[ebp-37C]
 0048D487    mov         edx,2
 0048D48C    call        0067DCA0
 0048D491    pop         ecx
 0048D492    test        cl,cl
>0048D494    je          0048D5B5
 0048D49A    mov         eax,dword ptr [ebp-0BB4]
 0048D4A0    mov         byte ptr [eax+5],29
 0048D4A4    mov         word ptr [ebp-0BA0],6D4
 0048D4AD    mov         edx,6B593C
 0048D4B2    lea         eax,[ebp-380]
 0048D4B8    call        0067DAB4
 0048D4BD    inc         dword ptr [ebp-0B94]
 0048D4C3    lea         edx,[ebp-380]
 0048D4C9    mov         eax,dword ptr [ebp-0BB4]
 0048D4CF    add         eax,0A
 0048D4D2    call        0067DCD0
 0048D4D7    dec         dword ptr [ebp-0B94]
 0048D4DD    lea         eax,[ebp-380]
 0048D4E3    mov         edx,2
 0048D4E8    call        0067DCA0
 0048D4ED    push        4
 0048D4EF    mov         word ptr [ebp-0BA0],6E0
 0048D4F8    mov         edx,6B5944
 0048D4FD    lea         eax,[ebp-384]
 0048D503    call        0067DAB4
 0048D508    inc         dword ptr [ebp-0B94]
 0048D50E    push        dword ptr [eax]
 0048D510    push        dword ptr [ebp-4]
 0048D513    xor         ecx,ecx
 0048D515    mov         dl,21
 0048D517    mov         eax,dword ptr [ebp-0BB4]
 0048D51D    mov         eax,dword ptr [eax+1E]
 0048D520    call        00483A34
 0048D525    dec         dword ptr [ebp-0B94]
 0048D52B    lea         eax,[ebp-384]
 0048D531    mov         edx,2
 0048D536    call        0067DCA0
 0048D53B    push        4
 0048D53D    mov         word ptr [ebp-0BA0],6EC
 0048D546    mov         edx,6B594B
 0048D54B    lea         eax,[ebp-388]
 0048D551    call        0067DAB4
 0048D556    inc         dword ptr [ebp-0B94]
 0048D55C    push        dword ptr [eax]
 0048D55E    push        dword ptr [ebp-4]
 0048D561    mov         ecx,1
 0048D566    mov         dl,21
 0048D568    mov         eax,dword ptr [ebp-0BB4]
 0048D56E    mov         eax,dword ptr [eax+1E]
 0048D571    call        00483A34
 0048D576    dec         dword ptr [ebp-0B94]
 0048D57C    lea         eax,[ebp-388]
 0048D582    mov         edx,2
 0048D587    call        0067DCA0
 0048D58C    mov         al,1
 0048D58E    push        eax
 0048D58F    dec         dword ptr [ebp-0B94]
 0048D595    lea         eax,[ebp-4]
 0048D598    mov         edx,2
 0048D59D    call        0067DCA0
 0048D5A2    pop         eax
 0048D5A3    mov         edx,dword ptr [ebp-0BB0]
 0048D5A9    mov         dword ptr fs:[0],edx
>0048D5B0    jmp         00496D77
 0048D5B5    mov         word ptr [ebp-0BA0],6F8
 0048D5BE    mov         edx,6B594D
 0048D5C3    lea         eax,[ebp-38C]
 0048D5C9    call        0067DAB4
 0048D5CE    inc         dword ptr [ebp-0B94]
 0048D5D4    lea         edx,[ebp-38C]
 0048D5DA    lea         eax,[ebp-4]
 0048D5DD    call        0067DCD0
 0048D5E2    dec         dword ptr [ebp-0B94]
 0048D5E8    lea         eax,[ebp-38C]
 0048D5EE    mov         edx,2
 0048D5F3    call        0067DCA0
 0048D5F8    mov         word ptr [ebp-0BA0],704
 0048D601    mov         edx,6B595A
 0048D606    lea         eax,[ebp-390]
 0048D60C    call        0067DAB4
 0048D611    inc         dword ptr [ebp-0B94]
 0048D617    mov         edx,dword ptr [eax]
 0048D619    mov         eax,dword ptr [ebp-0BB4]
 0048D61F    mov         eax,dword ptr [eax+22]
 0048D622    call        SameText
 0048D627    push        eax
 0048D628    dec         dword ptr [ebp-0B94]
 0048D62E    lea         eax,[ebp-390]
 0048D634    mov         edx,2
 0048D639    call        0067DCA0
 0048D63E    pop         ecx
 0048D63F    test        cl,cl
>0048D641    je          0048D744
 0048D647    mov         eax,dword ptr [ebp-0BB4]
 0048D64D    mov         byte ptr [eax+5],28
 0048D651    push        4
 0048D653    mov         word ptr [ebp-0BA0],710
 0048D65C    mov         edx,6B5965
 0048D661    lea         eax,[ebp-394]
 0048D667    call        0067DAB4
 0048D66C    inc         dword ptr [ebp-0B94]
 0048D672    push        dword ptr [eax]
 0048D674    push        dword ptr [ebp-4]
 0048D677    xor         ecx,ecx
 0048D679    mov         dl,21
 0048D67B    mov         eax,dword ptr [ebp-0BB4]
 0048D681    mov         eax,dword ptr [eax+1E]
 0048D684    call        00483A34
 0048D689    dec         dword ptr [ebp-0B94]
 0048D68F    lea         eax,[ebp-394]
 0048D695    mov         edx,2
 0048D69A    call        0067DCA0
 0048D69F    push        4
 0048D6A1    mov         word ptr [ebp-0BA0],71C
 0048D6AA    mov         edx,6B5967
 0048D6AF    lea         eax,[ebp-398]
 0048D6B5    call        0067DAB4
 0048D6BA    inc         dword ptr [ebp-0B94]
 0048D6C0    push        dword ptr [eax]
 0048D6C2    mov         edx,6B5971
 0048D6C7    lea         eax,[ebp-39C]
 0048D6CD    call        0067DAB4
 0048D6D2    inc         dword ptr [ebp-0B94]
 0048D6D8    push        dword ptr [eax]
 0048D6DA    mov         ecx,1
 0048D6DF    mov         dl,21
 0048D6E1    mov         eax,dword ptr [ebp-0BB4]
 0048D6E7    mov         eax,dword ptr [eax+1E]
 0048D6EA    call        00483A34
 0048D6EF    dec         dword ptr [ebp-0B94]
 0048D6F5    lea         eax,[ebp-39C]
 0048D6FB    mov         edx,2
 0048D700    call        0067DCA0
 0048D705    dec         dword ptr [ebp-0B94]
 0048D70B    lea         eax,[ebp-398]
 0048D711    mov         edx,2
 0048D716    call        0067DCA0
 0048D71B    mov         al,1
 0048D71D    push        eax
 0048D71E    dec         dword ptr [ebp-0B94]
 0048D724    lea         eax,[ebp-4]
 0048D727    mov         edx,2
 0048D72C    call        0067DCA0
 0048D731    pop         eax
 0048D732    mov         edx,dword ptr [ebp-0BB0]
 0048D738    mov         dword ptr fs:[0],edx
>0048D73F    jmp         00496D77
 0048D744    mov         word ptr [ebp-0BA0],728
 0048D74D    mov         edx,6B5976
 0048D752    lea         eax,[ebp-3A0]
 0048D758    call        0067DAB4
 0048D75D    inc         dword ptr [ebp-0B94]
 0048D763    mov         edx,dword ptr [eax]
 0048D765    mov         eax,dword ptr [ebp-0BB4]
 0048D76B    mov         eax,dword ptr [eax+22]
 0048D76E    call        SameText
 0048D773    push        eax
 0048D774    dec         dword ptr [ebp-0B94]
 0048D77A    lea         eax,[ebp-3A0]
 0048D780    mov         edx,2
 0048D785    call        0067DCA0
 0048D78A    pop         ecx
 0048D78B    test        cl,cl
>0048D78D    je          0048D90C
 0048D793    mov         eax,dword ptr [ebp-0BB4]
 0048D799    mov         byte ptr [eax+5],28
 0048D79D    push        4
 0048D79F    mov         word ptr [ebp-0BA0],734
 0048D7A8    mov         edx,6B5981
 0048D7AD    lea         eax,[ebp-3A4]
 0048D7B3    call        0067DAB4
 0048D7B8    inc         dword ptr [ebp-0B94]
 0048D7BE    push        dword ptr [eax]
 0048D7C0    push        dword ptr [ebp-4]
 0048D7C3    xor         ecx,ecx
 0048D7C5    mov         dl,21
 0048D7C7    mov         eax,dword ptr [ebp-0BB4]
 0048D7CD    mov         eax,dword ptr [eax+1E]
 0048D7D0    call        00483A34
 0048D7D5    dec         dword ptr [ebp-0B94]
 0048D7DB    lea         eax,[ebp-3A4]
 0048D7E1    mov         edx,2
 0048D7E6    call        0067DCA0
 0048D7EB    push        4
 0048D7ED    mov         word ptr [ebp-0BA0],740
 0048D7F6    mov         edx,6B5983
 0048D7FB    lea         eax,[ebp-3A8]
 0048D801    call        0067DAB4
 0048D806    inc         dword ptr [ebp-0B94]
 0048D80C    push        dword ptr [eax]
 0048D80E    mov         edx,6B598A
 0048D813    lea         eax,[ebp-3AC]
 0048D819    call        0067DAB4
 0048D81E    inc         dword ptr [ebp-0B94]
 0048D824    push        dword ptr [eax]
 0048D826    mov         ecx,1
 0048D82B    mov         dl,21
 0048D82D    mov         eax,dword ptr [ebp-0BB4]
 0048D833    mov         eax,dword ptr [eax+1E]
 0048D836    call        00483A34
 0048D83B    dec         dword ptr [ebp-0B94]
 0048D841    lea         eax,[ebp-3AC]
 0048D847    mov         edx,2
 0048D84C    call        0067DCA0
 0048D851    dec         dword ptr [ebp-0B94]
 0048D857    lea         eax,[ebp-3A8]
 0048D85D    mov         edx,2
 0048D862    call        0067DCA0
 0048D867    push        4
 0048D869    mov         word ptr [ebp-0BA0],74C
 0048D872    mov         edx,6B5990
 0048D877    lea         eax,[ebp-3B0]
 0048D87D    call        0067DAB4
 0048D882    inc         dword ptr [ebp-0B94]
 0048D888    push        dword ptr [eax]
 0048D88A    mov         edx,6B5997
 0048D88F    lea         eax,[ebp-3B4]
 0048D895    call        0067DAB4
 0048D89A    inc         dword ptr [ebp-0B94]
 0048D8A0    push        dword ptr [eax]
 0048D8A2    mov         ecx,2
 0048D8A7    mov         dl,21
 0048D8A9    mov         eax,dword ptr [ebp-0BB4]
 0048D8AF    mov         eax,dword ptr [eax+1E]
 0048D8B2    call        00483A34
 0048D8B7    dec         dword ptr [ebp-0B94]
 0048D8BD    lea         eax,[ebp-3B4]
 0048D8C3    mov         edx,2
 0048D8C8    call        0067DCA0
 0048D8CD    dec         dword ptr [ebp-0B94]
 0048D8D3    lea         eax,[ebp-3B0]
 0048D8D9    mov         edx,2
 0048D8DE    call        0067DCA0
 0048D8E3    mov         al,1
 0048D8E5    push        eax
 0048D8E6    dec         dword ptr [ebp-0B94]
 0048D8EC    lea         eax,[ebp-4]
 0048D8EF    mov         edx,2
 0048D8F4    call        0067DCA0
 0048D8F9    pop         eax
 0048D8FA    mov         edx,dword ptr [ebp-0BB0]
 0048D900    mov         dword ptr fs:[0],edx
>0048D907    jmp         00496D77
 0048D90C    mov         word ptr [ebp-0BA0],758
 0048D915    mov         edx,6B599C
 0048D91A    lea         eax,[ebp-3B8]
 0048D920    call        0067DAB4
 0048D925    inc         dword ptr [ebp-0B94]
 0048D92B    mov         edx,dword ptr [eax]
 0048D92D    mov         eax,dword ptr [ebp-0BB4]
 0048D933    mov         eax,dword ptr [eax+22]
 0048D936    call        SameText
 0048D93B    push        eax
 0048D93C    dec         dword ptr [ebp-0B94]
 0048D942    lea         eax,[ebp-3B8]
 0048D948    mov         edx,2
 0048D94D    call        0067DCA0
 0048D952    pop         ecx
 0048D953    test        cl,cl
>0048D955    je          0048DA2D
 0048D95B    mov         eax,dword ptr [ebp-0BB4]
 0048D961    mov         byte ptr [eax+5],28
 0048D965    push        4
 0048D967    mov         word ptr [ebp-0BA0],764
 0048D970    mov         edx,6B59A5
 0048D975    lea         eax,[ebp-3BC]
 0048D97B    call        0067DAB4
 0048D980    inc         dword ptr [ebp-0B94]
 0048D986    push        dword ptr [eax]
 0048D988    push        dword ptr [ebp-4]
 0048D98B    xor         ecx,ecx
 0048D98D    mov         dl,21
 0048D98F    mov         eax,dword ptr [ebp-0BB4]
 0048D995    mov         eax,dword ptr [eax+1E]
 0048D998    call        00483A34
 0048D99D    dec         dword ptr [ebp-0B94]
 0048D9A3    lea         eax,[ebp-3BC]
 0048D9A9    mov         edx,2
 0048D9AE    call        0067DCA0
 0048D9B3    push        4
 0048D9B5    mov         word ptr [ebp-0BA0],770
 0048D9BE    mov         edx,6B59AA
 0048D9C3    lea         eax,[ebp-3C0]
 0048D9C9    call        0067DAB4
 0048D9CE    inc         dword ptr [ebp-0B94]
 0048D9D4    push        dword ptr [eax]
 0048D9D6    push        dword ptr [ebp-4]
 0048D9D9    mov         ecx,1
 0048D9DE    mov         dl,21
 0048D9E0    mov         eax,dword ptr [ebp-0BB4]
 0048D9E6    mov         eax,dword ptr [eax+1E]
 0048D9E9    call        00483A34
 0048D9EE    dec         dword ptr [ebp-0B94]
 0048D9F4    lea         eax,[ebp-3C0]
 0048D9FA    mov         edx,2
 0048D9FF    call        0067DCA0
 0048DA04    mov         al,1
 0048DA06    push        eax
 0048DA07    dec         dword ptr [ebp-0B94]
 0048DA0D    lea         eax,[ebp-4]
 0048DA10    mov         edx,2
 0048DA15    call        0067DCA0
 0048DA1A    pop         eax
 0048DA1B    mov         edx,dword ptr [ebp-0BB0]
 0048DA21    mov         dword ptr fs:[0],edx
>0048DA28    jmp         00496D77
 0048DA2D    mov         word ptr [ebp-0BA0],77C
 0048DA36    mov         edx,6B59B1
 0048DA3B    lea         eax,[ebp-3C4]
 0048DA41    call        0067DAB4
 0048DA46    inc         dword ptr [ebp-0B94]
 0048DA4C    mov         edx,dword ptr [eax]
 0048DA4E    mov         eax,dword ptr [ebp-0BB4]
 0048DA54    mov         eax,dword ptr [eax+22]
 0048DA57    call        SameText
 0048DA5C    push        eax
 0048DA5D    dec         dword ptr [ebp-0B94]
 0048DA63    lea         eax,[ebp-3C4]
 0048DA69    mov         edx,2
 0048DA6E    call        0067DCA0
 0048DA73    pop         ecx
 0048DA74    test        cl,cl
>0048DA76    je          0048DBCA
 0048DA7C    mov         eax,dword ptr [ebp-0BB4]
 0048DA82    mov         byte ptr [eax+5],28
 0048DA86    push        4
 0048DA88    mov         word ptr [ebp-0BA0],788
 0048DA91    mov         edx,6B59BB
 0048DA96    lea         eax,[ebp-3C8]
 0048DA9C    call        0067DAB4
 0048DAA1    inc         dword ptr [ebp-0B94]
 0048DAA7    push        dword ptr [eax]
 0048DAA9    push        dword ptr [ebp-4]
 0048DAAC    xor         ecx,ecx
 0048DAAE    mov         dl,21
 0048DAB0    mov         eax,dword ptr [ebp-0BB4]
 0048DAB6    mov         eax,dword ptr [eax+1E]
 0048DAB9    call        00483A34
 0048DABE    dec         dword ptr [ebp-0B94]
 0048DAC4    lea         eax,[ebp-3C8]
 0048DACA    mov         edx,2
 0048DACF    call        0067DCA0
 0048DAD4    push        4
 0048DAD6    mov         word ptr [ebp-0BA0],794
 0048DADF    mov         edx,6B59C0
 0048DAE4    lea         eax,[ebp-3CC]
 0048DAEA    call        0067DAB4
 0048DAEF    inc         dword ptr [ebp-0B94]
 0048DAF5    push        dword ptr [eax]
 0048DAF7    push        dword ptr [ebp-4]
 0048DAFA    mov         ecx,1
 0048DAFF    mov         dl,21
 0048DB01    mov         eax,dword ptr [ebp-0BB4]
 0048DB07    mov         eax,dword ptr [eax+1E]
 0048DB0A    call        00483A34
 0048DB0F    dec         dword ptr [ebp-0B94]
 0048DB15    lea         eax,[ebp-3CC]
 0048DB1B    mov         edx,2
 0048DB20    call        0067DCA0
 0048DB25    push        4
 0048DB27    mov         word ptr [ebp-0BA0],7A0
 0048DB30    mov         edx,6B59C7
 0048DB35    lea         eax,[ebp-3D0]
 0048DB3B    call        0067DAB4
 0048DB40    inc         dword ptr [ebp-0B94]
 0048DB46    push        dword ptr [eax]
 0048DB48    mov         edx,6B59CE
 0048DB4D    lea         eax,[ebp-3D4]
 0048DB53    call        0067DAB4
 0048DB58    inc         dword ptr [ebp-0B94]
 0048DB5E    push        dword ptr [eax]
 0048DB60    mov         ecx,2
 0048DB65    mov         dl,21
 0048DB67    mov         eax,dword ptr [ebp-0BB4]
 0048DB6D    mov         eax,dword ptr [eax+1E]
 0048DB70    call        00483A34
 0048DB75    dec         dword ptr [ebp-0B94]
 0048DB7B    lea         eax,[ebp-3D4]
 0048DB81    mov         edx,2
 0048DB86    call        0067DCA0
 0048DB8B    dec         dword ptr [ebp-0B94]
 0048DB91    lea         eax,[ebp-3D0]
 0048DB97    mov         edx,2
 0048DB9C    call        0067DCA0
 0048DBA1    mov         al,1
 0048DBA3    push        eax
 0048DBA4    dec         dword ptr [ebp-0B94]
 0048DBAA    lea         eax,[ebp-4]
 0048DBAD    mov         edx,2
 0048DBB2    call        0067DCA0
 0048DBB7    pop         eax
 0048DBB8    mov         edx,dword ptr [ebp-0BB0]
 0048DBBE    mov         dword ptr fs:[0],edx
>0048DBC5    jmp         00496D77
 0048DBCA    mov         word ptr [ebp-0BA0],7AC
 0048DBD3    mov         edx,6B59D3
 0048DBD8    lea         eax,[ebp-3D8]
 0048DBDE    call        0067DAB4
 0048DBE3    inc         dword ptr [ebp-0B94]
 0048DBE9    mov         edx,dword ptr [eax]
 0048DBEB    mov         eax,dword ptr [ebp-0BB4]
 0048DBF1    mov         eax,dword ptr [eax+22]
 0048DBF4    call        SameText
 0048DBF9    push        eax
 0048DBFA    dec         dword ptr [ebp-0B94]
 0048DC00    lea         eax,[ebp-3D8]
 0048DC06    mov         edx,2
 0048DC0B    call        0067DCA0
 0048DC10    pop         ecx
 0048DC11    test        cl,cl
>0048DC13    je          0048DCEB
 0048DC19    mov         eax,dword ptr [ebp-0BB4]
 0048DC1F    mov         byte ptr [eax+5],28
 0048DC23    push        4
 0048DC25    mov         word ptr [ebp-0BA0],7B8
 0048DC2E    mov         edx,6B59DC
 0048DC33    lea         eax,[ebp-3DC]
 0048DC39    call        0067DAB4
 0048DC3E    inc         dword ptr [ebp-0B94]
 0048DC44    push        dword ptr [eax]
 0048DC46    push        dword ptr [ebp-4]
 0048DC49    xor         ecx,ecx
 0048DC4B    mov         dl,21
 0048DC4D    mov         eax,dword ptr [ebp-0BB4]
 0048DC53    mov         eax,dword ptr [eax+1E]
 0048DC56    call        00483A34
 0048DC5B    dec         dword ptr [ebp-0B94]
 0048DC61    lea         eax,[ebp-3DC]
 0048DC67    mov         edx,2
 0048DC6C    call        0067DCA0
 0048DC71    push        4
 0048DC73    mov         word ptr [ebp-0BA0],7C4
 0048DC7C    mov         edx,6B59E1
 0048DC81    lea         eax,[ebp-3E0]
 0048DC87    call        0067DAB4
 0048DC8C    inc         dword ptr [ebp-0B94]
 0048DC92    push        dword ptr [eax]
 0048DC94    push        dword ptr [ebp-4]
 0048DC97    mov         ecx,1
 0048DC9C    mov         dl,21
 0048DC9E    mov         eax,dword ptr [ebp-0BB4]
 0048DCA4    mov         eax,dword ptr [eax+1E]
 0048DCA7    call        00483A34
 0048DCAC    dec         dword ptr [ebp-0B94]
 0048DCB2    lea         eax,[ebp-3E0]
 0048DCB8    mov         edx,2
 0048DCBD    call        0067DCA0
 0048DCC2    mov         al,1
 0048DCC4    push        eax
 0048DCC5    dec         dword ptr [ebp-0B94]
 0048DCCB    lea         eax,[ebp-4]
 0048DCCE    mov         edx,2
 0048DCD3    call        0067DCA0
 0048DCD8    pop         eax
 0048DCD9    mov         edx,dword ptr [ebp-0BB0]
 0048DCDF    mov         dword ptr fs:[0],edx
>0048DCE6    jmp         00496D77
 0048DCEB    mov         word ptr [ebp-0BA0],7D0
 0048DCF4    mov         edx,6B59E8
 0048DCF9    lea         eax,[ebp-3E4]
 0048DCFF    call        0067DAB4
 0048DD04    inc         dword ptr [ebp-0B94]
 0048DD0A    mov         edx,dword ptr [eax]
 0048DD0C    mov         eax,dword ptr [ebp-0BB4]
 0048DD12    mov         eax,dword ptr [eax+22]
 0048DD15    call        SameText
 0048DD1A    push        eax
 0048DD1B    dec         dword ptr [ebp-0B94]
 0048DD21    lea         eax,[ebp-3E4]
 0048DD27    mov         edx,2
 0048DD2C    call        0067DCA0
 0048DD31    pop         ecx
 0048DD32    test        cl,cl
>0048DD34    je          0048DE88
 0048DD3A    mov         eax,dword ptr [ebp-0BB4]
 0048DD40    mov         byte ptr [eax+5],28
 0048DD44    push        4
 0048DD46    mov         word ptr [ebp-0BA0],7DC
 0048DD4F    mov         edx,6B59F2
 0048DD54    lea         eax,[ebp-3E8]
 0048DD5A    call        0067DAB4
 0048DD5F    inc         dword ptr [ebp-0B94]
 0048DD65    push        dword ptr [eax]
 0048DD67    push        dword ptr [ebp-4]
 0048DD6A    xor         ecx,ecx
 0048DD6C    mov         dl,21
 0048DD6E    mov         eax,dword ptr [ebp-0BB4]
 0048DD74    mov         eax,dword ptr [eax+1E]
 0048DD77    call        00483A34
 0048DD7C    dec         dword ptr [ebp-0B94]
 0048DD82    lea         eax,[ebp-3E8]
 0048DD88    mov         edx,2
 0048DD8D    call        0067DCA0
 0048DD92    push        4
 0048DD94    mov         word ptr [ebp-0BA0],7E8
 0048DD9D    mov         edx,6B59F7
 0048DDA2    lea         eax,[ebp-3EC]
 0048DDA8    call        0067DAB4
 0048DDAD    inc         dword ptr [ebp-0B94]
 0048DDB3    push        dword ptr [eax]
 0048DDB5    push        dword ptr [ebp-4]
 0048DDB8    mov         ecx,1
 0048DDBD    mov         dl,21
 0048DDBF    mov         eax,dword ptr [ebp-0BB4]
 0048DDC5    mov         eax,dword ptr [eax+1E]
 0048DDC8    call        00483A34
 0048DDCD    dec         dword ptr [ebp-0B94]
 0048DDD3    lea         eax,[ebp-3EC]
 0048DDD9    mov         edx,2
 0048DDDE    call        0067DCA0
 0048DDE3    push        4
 0048DDE5    mov         word ptr [ebp-0BA0],7F4
 0048DDEE    mov         edx,6B59FE
 0048DDF3    lea         eax,[ebp-3F0]
 0048DDF9    call        0067DAB4
 0048DDFE    inc         dword ptr [ebp-0B94]
 0048DE04    push        dword ptr [eax]
 0048DE06    mov         edx,6B5A05
 0048DE0B    lea         eax,[ebp-3F4]
 0048DE11    call        0067DAB4
 0048DE16    inc         dword ptr [ebp-0B94]
 0048DE1C    push        dword ptr [eax]
 0048DE1E    mov         ecx,2
 0048DE23    mov         dl,21
 0048DE25    mov         eax,dword ptr [ebp-0BB4]
 0048DE2B    mov         eax,dword ptr [eax+1E]
 0048DE2E    call        00483A34
 0048DE33    dec         dword ptr [ebp-0B94]
 0048DE39    lea         eax,[ebp-3F4]
 0048DE3F    mov         edx,2
 0048DE44    call        0067DCA0
 0048DE49    dec         dword ptr [ebp-0B94]
 0048DE4F    lea         eax,[ebp-3F0]
 0048DE55    mov         edx,2
 0048DE5A    call        0067DCA0
 0048DE5F    mov         al,1
 0048DE61    push        eax
 0048DE62    dec         dword ptr [ebp-0B94]
 0048DE68    lea         eax,[ebp-4]
 0048DE6B    mov         edx,2
 0048DE70    call        0067DCA0
 0048DE75    pop         eax
 0048DE76    mov         edx,dword ptr [ebp-0BB0]
 0048DE7C    mov         dword ptr fs:[0],edx
>0048DE83    jmp         00496D77
 0048DE88    mov         word ptr [ebp-0BA0],800
 0048DE91    mov         edx,6B5A0A
 0048DE96    lea         eax,[ebp-3F8]
 0048DE9C    call        0067DAB4
 0048DEA1    inc         dword ptr [ebp-0B94]
 0048DEA7    mov         edx,dword ptr [eax]
 0048DEA9    mov         eax,dword ptr [ebp-0BB4]
 0048DEAF    mov         eax,dword ptr [eax+22]
 0048DEB2    call        SameText
 0048DEB7    push        eax
 0048DEB8    dec         dword ptr [ebp-0B94]
 0048DEBE    lea         eax,[ebp-3F8]
 0048DEC4    mov         edx,2
 0048DEC9    call        0067DCA0
 0048DECE    pop         ecx
 0048DECF    test        cl,cl
>0048DED1    je          0048E025
 0048DED7    mov         eax,dword ptr [ebp-0BB4]
 0048DEDD    mov         byte ptr [eax+5],28
 0048DEE1    push        4
 0048DEE3    mov         word ptr [ebp-0BA0],80C
 0048DEEC    mov         edx,6B5A13
 0048DEF1    lea         eax,[ebp-3FC]
 0048DEF7    call        0067DAB4
 0048DEFC    inc         dword ptr [ebp-0B94]
 0048DF02    push        dword ptr [eax]
 0048DF04    push        dword ptr [ebp-4]
 0048DF07    xor         ecx,ecx
 0048DF09    mov         dl,21
 0048DF0B    mov         eax,dword ptr [ebp-0BB4]
 0048DF11    mov         eax,dword ptr [eax+1E]
 0048DF14    call        00483A34
 0048DF19    dec         dword ptr [ebp-0B94]
 0048DF1F    lea         eax,[ebp-3FC]
 0048DF25    mov         edx,2
 0048DF2A    call        0067DCA0
 0048DF2F    push        4
 0048DF31    mov         word ptr [ebp-0BA0],818
 0048DF3A    mov         edx,6B5A16
 0048DF3F    lea         eax,[ebp-400]
 0048DF45    call        0067DAB4
 0048DF4A    inc         dword ptr [ebp-0B94]
 0048DF50    push        dword ptr [eax]
 0048DF52    push        dword ptr [ebp-4]
 0048DF55    mov         ecx,1
 0048DF5A    mov         dl,21
 0048DF5C    mov         eax,dword ptr [ebp-0BB4]
 0048DF62    mov         eax,dword ptr [eax+1E]
 0048DF65    call        00483A34
 0048DF6A    dec         dword ptr [ebp-0B94]
 0048DF70    lea         eax,[ebp-400]
 0048DF76    mov         edx,2
 0048DF7B    call        0067DCA0
 0048DF80    push        4
 0048DF82    mov         word ptr [ebp-0BA0],824
 0048DF8B    mov         edx,6B5A19
 0048DF90    lea         eax,[ebp-404]
 0048DF96    call        0067DAB4
 0048DF9B    inc         dword ptr [ebp-0B94]
 0048DFA1    push        dword ptr [eax]
 0048DFA3    mov         edx,6B5A1F
 0048DFA8    lea         eax,[ebp-408]
 0048DFAE    call        0067DAB4
 0048DFB3    inc         dword ptr [ebp-0B94]
 0048DFB9    push        dword ptr [eax]
 0048DFBB    mov         ecx,2
 0048DFC0    mov         dl,21
 0048DFC2    mov         eax,dword ptr [ebp-0BB4]
 0048DFC8    mov         eax,dword ptr [eax+1E]
 0048DFCB    call        00483A34
 0048DFD0    dec         dword ptr [ebp-0B94]
 0048DFD6    lea         eax,[ebp-408]
 0048DFDC    mov         edx,2
 0048DFE1    call        0067DCA0
 0048DFE6    dec         dword ptr [ebp-0B94]
 0048DFEC    lea         eax,[ebp-404]
 0048DFF2    mov         edx,2
 0048DFF7    call        0067DCA0
 0048DFFC    mov         al,1
 0048DFFE    push        eax
 0048DFFF    dec         dword ptr [ebp-0B94]
 0048E005    lea         eax,[ebp-4]
 0048E008    mov         edx,2
 0048E00D    call        0067DCA0
 0048E012    pop         eax
 0048E013    mov         edx,dword ptr [ebp-0BB0]
 0048E019    mov         dword ptr fs:[0],edx
>0048E020    jmp         00496D77
 0048E025    mov         word ptr [ebp-0BA0],830
 0048E02E    mov         edx,6B5A27
 0048E033    lea         eax,[ebp-40C]
 0048E039    call        0067DAB4
 0048E03E    inc         dword ptr [ebp-0B94]
 0048E044    mov         edx,dword ptr [eax]
 0048E046    mov         eax,dword ptr [ebp-0BB4]
 0048E04C    mov         eax,dword ptr [eax+22]
 0048E04F    call        SameText
 0048E054    push        eax
 0048E055    dec         dword ptr [ebp-0B94]
 0048E05B    lea         eax,[ebp-40C]
 0048E061    mov         edx,2
 0048E066    call        0067DCA0
 0048E06B    pop         ecx
 0048E06C    test        cl,cl
>0048E06E    je          0048E146
 0048E074    mov         eax,dword ptr [ebp-0BB4]
 0048E07A    mov         byte ptr [eax+5],28
 0048E07E    push        4
 0048E080    mov         word ptr [ebp-0BA0],83C
 0048E089    mov         edx,6B5A30
 0048E08E    lea         eax,[ebp-410]
 0048E094    call        0067DAB4
 0048E099    inc         dword ptr [ebp-0B94]
 0048E09F    push        dword ptr [eax]
 0048E0A1    push        dword ptr [ebp-4]
 0048E0A4    xor         ecx,ecx
 0048E0A6    mov         dl,21
 0048E0A8    mov         eax,dword ptr [ebp-0BB4]
 0048E0AE    mov         eax,dword ptr [eax+1E]
 0048E0B1    call        00483A34
 0048E0B6    dec         dword ptr [ebp-0B94]
 0048E0BC    lea         eax,[ebp-410]
 0048E0C2    mov         edx,2
 0048E0C7    call        0067DCA0
 0048E0CC    push        4
 0048E0CE    mov         word ptr [ebp-0BA0],848
 0048E0D7    mov         edx,6B5A33
 0048E0DC    lea         eax,[ebp-414]
 0048E0E2    call        0067DAB4
 0048E0E7    inc         dword ptr [ebp-0B94]
 0048E0ED    push        dword ptr [eax]
 0048E0EF    push        dword ptr [ebp-4]
 0048E0F2    mov         ecx,1
 0048E0F7    mov         dl,21
 0048E0F9    mov         eax,dword ptr [ebp-0BB4]
 0048E0FF    mov         eax,dword ptr [eax+1E]
 0048E102    call        00483A34
 0048E107    dec         dword ptr [ebp-0B94]
 0048E10D    lea         eax,[ebp-414]
 0048E113    mov         edx,2
 0048E118    call        0067DCA0
 0048E11D    mov         al,1
 0048E11F    push        eax
 0048E120    dec         dword ptr [ebp-0B94]
 0048E126    lea         eax,[ebp-4]
 0048E129    mov         edx,2
 0048E12E    call        0067DCA0
 0048E133    pop         eax
 0048E134    mov         edx,dword ptr [ebp-0BB0]
 0048E13A    mov         dword ptr fs:[0],edx
>0048E141    jmp         00496D77
 0048E146    mov         word ptr [ebp-0BA0],854
 0048E14F    mov         edx,6B5A36
 0048E154    lea         eax,[ebp-418]
 0048E15A    call        0067DAB4
 0048E15F    inc         dword ptr [ebp-0B94]
 0048E165    mov         edx,dword ptr [eax]
 0048E167    mov         eax,dword ptr [ebp-0BB4]
 0048E16D    mov         eax,dword ptr [eax+22]
 0048E170    call        SameText
 0048E175    push        eax
 0048E176    dec         dword ptr [ebp-0B94]
 0048E17C    lea         eax,[ebp-418]
 0048E182    mov         edx,2
 0048E187    call        0067DCA0
 0048E18C    pop         ecx
 0048E18D    test        cl,cl
>0048E18F    je          0048E292
 0048E195    mov         eax,dword ptr [ebp-0BB4]
 0048E19B    mov         byte ptr [eax+5],28
 0048E19F    push        4
 0048E1A1    mov         word ptr [ebp-0BA0],860
 0048E1AA    mov         edx,6B5A40
 0048E1AF    lea         eax,[ebp-41C]
 0048E1B5    call        0067DAB4
 0048E1BA    inc         dword ptr [ebp-0B94]
 0048E1C0    push        dword ptr [eax]
 0048E1C2    mov         edx,6B5A44
 0048E1C7    lea         eax,[ebp-420]
 0048E1CD    call        0067DAB4
 0048E1D2    inc         dword ptr [ebp-0B94]
 0048E1D8    push        dword ptr [eax]
 0048E1DA    xor         ecx,ecx
 0048E1DC    mov         dl,21
 0048E1DE    mov         eax,dword ptr [ebp-0BB4]
 0048E1E4    mov         eax,dword ptr [eax+1E]
 0048E1E7    call        00483A34
 0048E1EC    dec         dword ptr [ebp-0B94]
 0048E1F2    lea         eax,[ebp-420]
 0048E1F8    mov         edx,2
 0048E1FD    call        0067DCA0
 0048E202    dec         dword ptr [ebp-0B94]
 0048E208    lea         eax,[ebp-41C]
 0048E20E    mov         edx,2
 0048E213    call        0067DCA0
 0048E218    push        4
 0048E21A    mov         word ptr [ebp-0BA0],86C
 0048E223    mov         edx,6B5A4C
 0048E228    lea         eax,[ebp-424]
 0048E22E    call        0067DAB4
 0048E233    inc         dword ptr [ebp-0B94]
 0048E239    push        dword ptr [eax]
 0048E23B    push        dword ptr [ebp-4]
 0048E23E    mov         ecx,1
 0048E243    mov         dl,21
 0048E245    mov         eax,dword ptr [ebp-0BB4]
 0048E24B    mov         eax,dword ptr [eax+1E]
 0048E24E    call        00483A34
 0048E253    dec         dword ptr [ebp-0B94]
 0048E259    lea         eax,[ebp-424]
 0048E25F    mov         edx,2
 0048E264    call        0067DCA0
 0048E269    mov         al,1
 0048E26B    push        eax
 0048E26C    dec         dword ptr [ebp-0B94]
 0048E272    lea         eax,[ebp-4]
 0048E275    mov         edx,2
 0048E27A    call        0067DCA0
 0048E27F    pop         eax
 0048E280    mov         edx,dword ptr [ebp-0BB0]
 0048E286    mov         dword ptr fs:[0],edx
>0048E28D    jmp         00496D77
 0048E292    mov         word ptr [ebp-0BA0],878
 0048E29B    mov         edx,6B5A4E
 0048E2A0    lea         eax,[ebp-428]
 0048E2A6    call        0067DAB4
 0048E2AB    inc         dword ptr [ebp-0B94]
 0048E2B1    mov         edx,dword ptr [eax]
 0048E2B3    mov         eax,dword ptr [ebp-0BB4]
 0048E2B9    mov         eax,dword ptr [eax+22]
 0048E2BC    call        SameText
 0048E2C1    push        eax
 0048E2C2    dec         dword ptr [ebp-0B94]
 0048E2C8    lea         eax,[ebp-428]
 0048E2CE    mov         edx,2
 0048E2D3    call        0067DCA0
 0048E2D8    pop         ecx
 0048E2D9    test        cl,cl
>0048E2DB    je          0048E45A
 0048E2E1    mov         eax,dword ptr [ebp-0BB4]
 0048E2E7    mov         byte ptr [eax+5],28
 0048E2EB    push        4
 0048E2ED    mov         word ptr [ebp-0BA0],884
 0048E2F6    mov         edx,6B5A57
 0048E2FB    lea         eax,[ebp-42C]
 0048E301    call        0067DAB4
 0048E306    inc         dword ptr [ebp-0B94]
 0048E30C    push        dword ptr [eax]
 0048E30E    mov         edx,6B5A5B
 0048E313    lea         eax,[ebp-430]
 0048E319    call        0067DAB4
 0048E31E    inc         dword ptr [ebp-0B94]
 0048E324    push        dword ptr [eax]
 0048E326    xor         ecx,ecx
 0048E328    mov         dl,21
 0048E32A    mov         eax,dword ptr [ebp-0BB4]
 0048E330    mov         eax,dword ptr [eax+1E]
 0048E333    call        00483A34
 0048E338    dec         dword ptr [ebp-0B94]
 0048E33E    lea         eax,[ebp-430]
 0048E344    mov         edx,2
 0048E349    call        0067DCA0
 0048E34E    dec         dword ptr [ebp-0B94]
 0048E354    lea         eax,[ebp-42C]
 0048E35A    mov         edx,2
 0048E35F    call        0067DCA0
 0048E364    push        4
 0048E366    mov         word ptr [ebp-0BA0],890
 0048E36F    mov         edx,6B5A63
 0048E374    lea         eax,[ebp-434]
 0048E37A    call        0067DAB4
 0048E37F    inc         dword ptr [ebp-0B94]
 0048E385    push        dword ptr [eax]
 0048E387    mov         edx,6B5A69
 0048E38C    lea         eax,[ebp-438]
 0048E392    call        0067DAB4
 0048E397    inc         dword ptr [ebp-0B94]
 0048E39D    push        dword ptr [eax]
 0048E39F    mov         ecx,1
 0048E3A4    mov         dl,21
 0048E3A6    mov         eax,dword ptr [ebp-0BB4]
 0048E3AC    mov         eax,dword ptr [eax+1E]
 0048E3AF    call        00483A34
 0048E3B4    dec         dword ptr [ebp-0B94]
 0048E3BA    lea         eax,[ebp-438]
 0048E3C0    mov         edx,2
 0048E3C5    call        0067DCA0
 0048E3CA    dec         dword ptr [ebp-0B94]
 0048E3D0    lea         eax,[ebp-434]
 0048E3D6    mov         edx,2
 0048E3DB    call        0067DCA0
 0048E3E0    push        4
 0048E3E2    mov         word ptr [ebp-0BA0],89C
 0048E3EB    mov         edx,6B5A71
 0048E3F0    lea         eax,[ebp-43C]
 0048E3F6    call        0067DAB4
 0048E3FB    inc         dword ptr [ebp-0B94]
 0048E401    push        dword ptr [eax]
 0048E403    push        dword ptr [ebp-4]
 0048E406    mov         ecx,2
 0048E40B    mov         dl,21
 0048E40D    mov         eax,dword ptr [ebp-0BB4]
 0048E413    mov         eax,dword ptr [eax+1E]
 0048E416    call        00483A34
 0048E41B    dec         dword ptr [ebp-0B94]
 0048E421    lea         eax,[ebp-43C]
 0048E427    mov         edx,2
 0048E42C    call        0067DCA0
 0048E431    mov         al,1
 0048E433    push        eax
 0048E434    dec         dword ptr [ebp-0B94]
 0048E43A    lea         eax,[ebp-4]
 0048E43D    mov         edx,2
 0048E442    call        0067DCA0
 0048E447    pop         eax
 0048E448    mov         edx,dword ptr [ebp-0BB0]
 0048E44E    mov         dword ptr fs:[0],edx
>0048E455    jmp         00496D77
 0048E45A    mov         word ptr [ebp-0BA0],8A8
 0048E463    mov         edx,6B5A73
 0048E468    lea         eax,[ebp-440]
 0048E46E    call        0067DAB4
 0048E473    inc         dword ptr [ebp-0B94]
 0048E479    mov         edx,dword ptr [eax]
 0048E47B    mov         eax,dword ptr [ebp-0BB4]
 0048E481    mov         eax,dword ptr [eax+22]
 0048E484    call        SameText
 0048E489    push        eax
 0048E48A    dec         dword ptr [ebp-0B94]
 0048E490    lea         eax,[ebp-440]
 0048E496    mov         edx,2
 0048E49B    call        0067DCA0
 0048E4A0    pop         ecx
 0048E4A1    test        cl,cl
>0048E4A3    je          0048E59E
 0048E4A9    mov         eax,dword ptr [ebp-0BB4]
 0048E4AF    mov         byte ptr [eax+5],29
 0048E4B3    mov         word ptr [ebp-0BA0],8B4
 0048E4BC    mov         edx,6B5A7B
 0048E4C1    lea         eax,[ebp-444]
 0048E4C7    call        0067DAB4
 0048E4CC    inc         dword ptr [ebp-0B94]
 0048E4D2    lea         edx,[ebp-444]
 0048E4D8    mov         eax,dword ptr [ebp-0BB4]
 0048E4DE    add         eax,0A
 0048E4E1    call        0067DCD0
 0048E4E6    dec         dword ptr [ebp-0B94]
 0048E4EC    lea         eax,[ebp-444]
 0048E4F2    mov         edx,2
 0048E4F7    call        0067DCA0
 0048E4FC    push        4
 0048E4FE    mov         word ptr [ebp-0BA0],8C0
 0048E507    mov         edx,6B5A83
 0048E50C    lea         eax,[ebp-448]
 0048E512    call        0067DAB4
 0048E517    inc         dword ptr [ebp-0B94]
 0048E51D    push        dword ptr [eax]
 0048E51F    mov         edx,6B5A85
 0048E524    lea         eax,[ebp-44C]
 0048E52A    call        0067DAB4
 0048E52F    inc         dword ptr [ebp-0B94]
 0048E535    push        dword ptr [eax]
 0048E537    xor         ecx,ecx
 0048E539    mov         dl,22
 0048E53B    mov         eax,dword ptr [ebp-0BB4]
 0048E541    mov         eax,dword ptr [eax+1E]
 0048E544    call        00483A34
 0048E549    dec         dword ptr [ebp-0B94]
 0048E54F    lea         eax,[ebp-44C]
 0048E555    mov         edx,2
 0048E55A    call        0067DCA0
 0048E55F    dec         dword ptr [ebp-0B94]
 0048E565    lea         eax,[ebp-448]
 0048E56B    mov         edx,2
 0048E570    call        0067DCA0
 0048E575    mov         al,1
 0048E577    push        eax
 0048E578    dec         dword ptr [ebp-0B94]
 0048E57E    lea         eax,[ebp-4]
 0048E581    mov         edx,2
 0048E586    call        0067DCA0
 0048E58B    pop         eax
 0048E58C    mov         edx,dword ptr [ebp-0BB0]
 0048E592    mov         dword ptr fs:[0],edx
>0048E599    jmp         00496D77
 0048E59E    mov         word ptr [ebp-0BA0],8CC
 0048E5A7    mov         edx,6B5A8E
 0048E5AC    lea         eax,[ebp-450]
 0048E5B2    call        0067DAB4
 0048E5B7    inc         dword ptr [ebp-0B94]
 0048E5BD    mov         edx,dword ptr [eax]
 0048E5BF    mov         eax,dword ptr [ebp-0BB4]
 0048E5C5    mov         eax,dword ptr [eax+22]
 0048E5C8    call        SameText
 0048E5CD    push        eax
 0048E5CE    dec         dword ptr [ebp-0B94]
 0048E5D4    lea         eax,[ebp-450]
 0048E5DA    mov         edx,2
 0048E5DF    call        0067DCA0
 0048E5E4    pop         ecx
 0048E5E5    test        cl,cl
>0048E5E7    je          0048E75E
 0048E5ED    mov         eax,dword ptr [ebp-0BB4]
 0048E5F3    mov         byte ptr [eax+5],29
 0048E5F7    mov         word ptr [ebp-0BA0],8D8
 0048E600    mov         edx,6B5A96
 0048E605    lea         eax,[ebp-454]
 0048E60B    call        0067DAB4
 0048E610    inc         dword ptr [ebp-0B94]
 0048E616    lea         edx,[ebp-454]
 0048E61C    mov         eax,dword ptr [ebp-0BB4]
 0048E622    add         eax,0A
 0048E625    call        0067DCD0
 0048E62A    dec         dword ptr [ebp-0B94]
 0048E630    lea         eax,[ebp-454]
 0048E636    mov         edx,2
 0048E63B    call        0067DCA0
 0048E640    push        4
 0048E642    mov         word ptr [ebp-0BA0],8E4
 0048E64B    mov         edx,6B5A9E
 0048E650    lea         eax,[ebp-458]
 0048E656    call        0067DAB4
 0048E65B    inc         dword ptr [ebp-0B94]
 0048E661    push        dword ptr [eax]
 0048E663    mov         edx,6B5AA0
 0048E668    lea         eax,[ebp-45C]
 0048E66E    call        0067DAB4
 0048E673    inc         dword ptr [ebp-0B94]
 0048E679    push        dword ptr [eax]
 0048E67B    xor         ecx,ecx
 0048E67D    mov         dl,22
 0048E67F    mov         eax,dword ptr [ebp-0BB4]
 0048E685    mov         eax,dword ptr [eax+1E]
 0048E688    call        00483A34
 0048E68D    dec         dword ptr [ebp-0B94]
 0048E693    lea         eax,[ebp-45C]
 0048E699    mov         edx,2
 0048E69E    call        0067DCA0
 0048E6A3    dec         dword ptr [ebp-0B94]
 0048E6A9    lea         eax,[ebp-458]
 0048E6AF    mov         edx,2
 0048E6B4    call        0067DCA0
 0048E6B9    push        4
 0048E6BB    mov         word ptr [ebp-0BA0],8F0
 0048E6C4    mov         edx,6B5AA9
 0048E6C9    lea         eax,[ebp-460]
 0048E6CF    call        0067DAB4
 0048E6D4    inc         dword ptr [ebp-0B94]
 0048E6DA    push        dword ptr [eax]
 0048E6DC    mov         edx,6B5AAB
 0048E6E1    lea         eax,[ebp-464]
 0048E6E7    call        0067DAB4
 0048E6EC    inc         dword ptr [ebp-0B94]
 0048E6F2    push        dword ptr [eax]
 0048E6F4    mov         ecx,1
 0048E6F9    mov         dl,21
 0048E6FB    mov         eax,dword ptr [ebp-0BB4]
 0048E701    mov         eax,dword ptr [eax+1E]
 0048E704    call        00483A34
 0048E709    dec         dword ptr [ebp-0B94]
 0048E70F    lea         eax,[ebp-464]
 0048E715    mov         edx,2
 0048E71A    call        0067DCA0
 0048E71F    dec         dword ptr [ebp-0B94]
 0048E725    lea         eax,[ebp-460]
 0048E72B    mov         edx,2
 0048E730    call        0067DCA0
 0048E735    mov         al,1
 0048E737    push        eax
 0048E738    dec         dword ptr [ebp-0B94]
 0048E73E    lea         eax,[ebp-4]
 0048E741    mov         edx,2
 0048E746    call        0067DCA0
 0048E74B    pop         eax
 0048E74C    mov         edx,dword ptr [ebp-0BB0]
 0048E752    mov         dword ptr fs:[0],edx
>0048E759    jmp         00496D77
 0048E75E    mov         word ptr [ebp-0BA0],8FC
 0048E767    mov         edx,6B5AB2
 0048E76C    lea         eax,[ebp-468]
 0048E772    call        0067DAB4
 0048E777    inc         dword ptr [ebp-0B94]
 0048E77D    mov         edx,dword ptr [eax]
 0048E77F    mov         eax,dword ptr [ebp-0BB4]
 0048E785    mov         eax,dword ptr [eax+22]
 0048E788    call        SameText
 0048E78D    push        eax
 0048E78E    dec         dword ptr [ebp-0B94]
 0048E794    lea         eax,[ebp-468]
 0048E79A    mov         edx,2
 0048E79F    call        0067DCA0
 0048E7A4    pop         ecx
 0048E7A5    test        cl,cl
>0048E7A7    je          0048EA16
 0048E7AD    mov         eax,dword ptr [ebp-0BB4]
 0048E7B3    mov         byte ptr [eax+5],29
 0048E7B7    mov         word ptr [ebp-0BA0],908
 0048E7C0    mov         edx,6B5ABD
 0048E7C5    lea         eax,[ebp-46C]
 0048E7CB    call        0067DAB4
 0048E7D0    inc         dword ptr [ebp-0B94]
 0048E7D6    lea         edx,[ebp-46C]
 0048E7DC    mov         eax,dword ptr [ebp-0BB4]
 0048E7E2    add         eax,0A
 0048E7E5    call        0067DCD0
 0048E7EA    dec         dword ptr [ebp-0B94]
 0048E7F0    lea         eax,[ebp-46C]
 0048E7F6    mov         edx,2
 0048E7FB    call        0067DCA0
 0048E800    push        4
 0048E802    mov         word ptr [ebp-0BA0],914
 0048E80B    mov         edx,6B5AC5
 0048E810    lea         eax,[ebp-470]
 0048E816    call        0067DAB4
 0048E81B    inc         dword ptr [ebp-0B94]
 0048E821    push        dword ptr [eax]
 0048E823    mov         edx,6B5AC7
 0048E828    lea         eax,[ebp-474]
 0048E82E    call        0067DAB4
 0048E833    inc         dword ptr [ebp-0B94]
 0048E839    push        dword ptr [eax]
 0048E83B    xor         ecx,ecx
 0048E83D    mov         dl,22
 0048E83F    mov         eax,dword ptr [ebp-0BB4]
 0048E845    mov         eax,dword ptr [eax+1E]
 0048E848    call        00483A34
 0048E84D    dec         dword ptr [ebp-0B94]
 0048E853    lea         eax,[ebp-474]
 0048E859    mov         edx,2
 0048E85E    call        0067DCA0
 0048E863    dec         dword ptr [ebp-0B94]
 0048E869    lea         eax,[ebp-470]
 0048E86F    mov         edx,2
 0048E874    call        0067DCA0
 0048E879    push        4
 0048E87B    mov         word ptr [ebp-0BA0],920
 0048E884    mov         edx,6B5AD0
 0048E889    lea         eax,[ebp-478]
 0048E88F    call        0067DAB4
 0048E894    inc         dword ptr [ebp-0B94]
 0048E89A    push        dword ptr [eax]
 0048E89C    mov         edx,6B5AD7
 0048E8A1    lea         eax,[ebp-47C]
 0048E8A7    call        0067DAB4
 0048E8AC    inc         dword ptr [ebp-0B94]
 0048E8B2    push        dword ptr [eax]
 0048E8B4    mov         ecx,1
 0048E8B9    mov         dl,21
 0048E8BB    mov         eax,dword ptr [ebp-0BB4]
 0048E8C1    mov         eax,dword ptr [eax+1E]
 0048E8C4    call        00483A34
 0048E8C9    dec         dword ptr [ebp-0B94]
 0048E8CF    lea         eax,[ebp-47C]
 0048E8D5    mov         edx,2
 0048E8DA    call        0067DCA0
 0048E8DF    dec         dword ptr [ebp-0B94]
 0048E8E5    lea         eax,[ebp-478]
 0048E8EB    mov         edx,2
 0048E8F0    call        0067DCA0
 0048E8F5    push        4
 0048E8F7    mov         word ptr [ebp-0BA0],92C
 0048E900    mov         edx,6B5ADF
 0048E905    lea         eax,[ebp-480]
 0048E90B    call        0067DAB4
 0048E910    inc         dword ptr [ebp-0B94]
 0048E916    push        dword ptr [eax]
 0048E918    mov         edx,6B5AE6
 0048E91D    lea         eax,[ebp-484]
 0048E923    call        0067DAB4
 0048E928    inc         dword ptr [ebp-0B94]
 0048E92E    push        dword ptr [eax]
 0048E930    mov         ecx,2
 0048E935    mov         dl,21
 0048E937    mov         eax,dword ptr [ebp-0BB4]
 0048E93D    mov         eax,dword ptr [eax+1E]
 0048E940    call        00483A34
 0048E945    dec         dword ptr [ebp-0B94]
 0048E94B    lea         eax,[ebp-484]
 0048E951    mov         edx,2
 0048E956    call        0067DCA0
 0048E95B    dec         dword ptr [ebp-0B94]
 0048E961    lea         eax,[ebp-480]
 0048E967    mov         edx,2
 0048E96C    call        0067DCA0
 0048E971    push        4
 0048E973    mov         word ptr [ebp-0BA0],938
 0048E97C    mov         edx,6B5AEE
 0048E981    lea         eax,[ebp-488]
 0048E987    call        0067DAB4
 0048E98C    inc         dword ptr [ebp-0B94]
 0048E992    push        dword ptr [eax]
 0048E994    mov         edx,6B5AF7
 0048E999    lea         eax,[ebp-48C]
 0048E99F    call        0067DAB4
 0048E9A4    inc         dword ptr [ebp-0B94]
 0048E9AA    push        dword ptr [eax]
 0048E9AC    mov         ecx,8
 0048E9B1    mov         dl,22
 0048E9B3    mov         eax,dword ptr [ebp-0BB4]
 0048E9B9    mov         eax,dword ptr [eax+1E]
 0048E9BC    call        00483A34
 0048E9C1    dec         dword ptr [ebp-0B94]
 0048E9C7    lea         eax,[ebp-48C]
 0048E9CD    mov         edx,2
 0048E9D2    call        0067DCA0
 0048E9D7    dec         dword ptr [ebp-0B94]
 0048E9DD    lea         eax,[ebp-488]
 0048E9E3    mov         edx,2
 0048E9E8    call        0067DCA0
 0048E9ED    mov         al,1
 0048E9EF    push        eax
 0048E9F0    dec         dword ptr [ebp-0B94]
 0048E9F6    lea         eax,[ebp-4]
 0048E9F9    mov         edx,2
 0048E9FE    call        0067DCA0
 0048EA03    pop         eax
 0048EA04    mov         edx,dword ptr [ebp-0BB0]
 0048EA0A    mov         dword ptr fs:[0],edx
>0048EA11    jmp         00496D77
 0048EA16    mov         word ptr [ebp-0BA0],944
 0048EA1F    mov         edx,6B5AFF
 0048EA24    lea         eax,[ebp-490]
 0048EA2A    call        0067DAB4
 0048EA2F    inc         dword ptr [ebp-0B94]
 0048EA35    mov         edx,dword ptr [eax]
 0048EA37    mov         eax,dword ptr [ebp-0BB4]
 0048EA3D    mov         eax,dword ptr [eax+22]
 0048EA40    call        SameText
 0048EA45    push        eax
 0048EA46    dec         dword ptr [ebp-0B94]
 0048EA4C    lea         eax,[ebp-490]
 0048EA52    mov         edx,2
 0048EA57    call        0067DCA0
 0048EA5C    pop         ecx
 0048EA5D    test        cl,cl
>0048EA5F    je          0048ECCE
 0048EA65    mov         eax,dword ptr [ebp-0BB4]
 0048EA6B    mov         byte ptr [eax+5],29
 0048EA6F    mov         word ptr [ebp-0BA0],950
 0048EA78    mov         edx,6B5B0B
 0048EA7D    lea         eax,[ebp-494]
 0048EA83    call        0067DAB4
 0048EA88    inc         dword ptr [ebp-0B94]
 0048EA8E    lea         edx,[ebp-494]
 0048EA94    mov         eax,dword ptr [ebp-0BB4]
 0048EA9A    add         eax,0A
 0048EA9D    call        0067DCD0
 0048EAA2    dec         dword ptr [ebp-0B94]
 0048EAA8    lea         eax,[ebp-494]
 0048EAAE    mov         edx,2
 0048EAB3    call        0067DCA0
 0048EAB8    push        4
 0048EABA    mov         word ptr [ebp-0BA0],95C
 0048EAC3    mov         edx,6B5B13
 0048EAC8    lea         eax,[ebp-498]
 0048EACE    call        0067DAB4
 0048EAD3    inc         dword ptr [ebp-0B94]
 0048EAD9    push        dword ptr [eax]
 0048EADB    mov         edx,6B5B15
 0048EAE0    lea         eax,[ebp-49C]
 0048EAE6    call        0067DAB4
 0048EAEB    inc         dword ptr [ebp-0B94]
 0048EAF1    push        dword ptr [eax]
 0048EAF3    xor         ecx,ecx
 0048EAF5    mov         dl,22
 0048EAF7    mov         eax,dword ptr [ebp-0BB4]
 0048EAFD    mov         eax,dword ptr [eax+1E]
 0048EB00    call        00483A34
 0048EB05    dec         dword ptr [ebp-0B94]
 0048EB0B    lea         eax,[ebp-49C]
 0048EB11    mov         edx,2
 0048EB16    call        0067DCA0
 0048EB1B    dec         dword ptr [ebp-0B94]
 0048EB21    lea         eax,[ebp-498]
 0048EB27    mov         edx,2
 0048EB2C    call        0067DCA0
 0048EB31    push        4
 0048EB33    mov         word ptr [ebp-0BA0],968
 0048EB3C    mov         edx,6B5B1E
 0048EB41    lea         eax,[ebp-4A0]
 0048EB47    call        0067DAB4
 0048EB4C    inc         dword ptr [ebp-0B94]
 0048EB52    push        dword ptr [eax]
 0048EB54    mov         edx,6B5B25
 0048EB59    lea         eax,[ebp-4A4]
 0048EB5F    call        0067DAB4
 0048EB64    inc         dword ptr [ebp-0B94]
 0048EB6A    push        dword ptr [eax]
 0048EB6C    mov         ecx,1
 0048EB71    mov         dl,21
 0048EB73    mov         eax,dword ptr [ebp-0BB4]
 0048EB79    mov         eax,dword ptr [eax+1E]
 0048EB7C    call        00483A34
 0048EB81    dec         dword ptr [ebp-0B94]
 0048EB87    lea         eax,[ebp-4A4]
 0048EB8D    mov         edx,2
 0048EB92    call        0067DCA0
 0048EB97    dec         dword ptr [ebp-0B94]
 0048EB9D    lea         eax,[ebp-4A0]
 0048EBA3    mov         edx,2
 0048EBA8    call        0067DCA0
 0048EBAD    push        4
 0048EBAF    mov         word ptr [ebp-0BA0],974
 0048EBB8    mov         edx,6B5B2D
 0048EBBD    lea         eax,[ebp-4A8]
 0048EBC3    call        0067DAB4
 0048EBC8    inc         dword ptr [ebp-0B94]
 0048EBCE    push        dword ptr [eax]
 0048EBD0    mov         edx,6B5B34
 0048EBD5    lea         eax,[ebp-4AC]
 0048EBDB    call        0067DAB4
 0048EBE0    inc         dword ptr [ebp-0B94]
 0048EBE6    push        dword ptr [eax]
 0048EBE8    mov         ecx,2
 0048EBED    mov         dl,21
 0048EBEF    mov         eax,dword ptr [ebp-0BB4]
 0048EBF5    mov         eax,dword ptr [eax+1E]
 0048EBF8    call        00483A34
 0048EBFD    dec         dword ptr [ebp-0B94]
 0048EC03    lea         eax,[ebp-4AC]
 0048EC09    mov         edx,2
 0048EC0E    call        0067DCA0
 0048EC13    dec         dword ptr [ebp-0B94]
 0048EC19    lea         eax,[ebp-4A8]
 0048EC1F    mov         edx,2
 0048EC24    call        0067DCA0
 0048EC29    push        4
 0048EC2B    mov         word ptr [ebp-0BA0],980
 0048EC34    mov         edx,6B5B3C
 0048EC39    lea         eax,[ebp-4B0]
 0048EC3F    call        0067DAB4
 0048EC44    inc         dword ptr [ebp-0B94]
 0048EC4A    push        dword ptr [eax]
 0048EC4C    mov         edx,6B5B48
 0048EC51    lea         eax,[ebp-4B4]
 0048EC57    call        0067DAB4
 0048EC5C    inc         dword ptr [ebp-0B94]
 0048EC62    push        dword ptr [eax]
 0048EC64    mov         ecx,8
 0048EC69    mov         dl,22
 0048EC6B    mov         eax,dword ptr [ebp-0BB4]
 0048EC71    mov         eax,dword ptr [eax+1E]
 0048EC74    call        00483A34
 0048EC79    dec         dword ptr [ebp-0B94]
 0048EC7F    lea         eax,[ebp-4B4]
 0048EC85    mov         edx,2
 0048EC8A    call        0067DCA0
 0048EC8F    dec         dword ptr [ebp-0B94]
 0048EC95    lea         eax,[ebp-4B0]
 0048EC9B    mov         edx,2
 0048ECA0    call        0067DCA0
 0048ECA5    mov         al,1
 0048ECA7    push        eax
 0048ECA8    dec         dword ptr [ebp-0B94]
 0048ECAE    lea         eax,[ebp-4]
 0048ECB1    mov         edx,2
 0048ECB6    call        0067DCA0
 0048ECBB    pop         eax
 0048ECBC    mov         edx,dword ptr [ebp-0BB0]
 0048ECC2    mov         dword ptr fs:[0],edx
>0048ECC9    jmp         00496D77
 0048ECCE    mov         word ptr [ebp-0BA0],98C
 0048ECD7    mov         edx,6B5B50
 0048ECDC    lea         eax,[ebp-4B8]
 0048ECE2    call        0067DAB4
 0048ECE7    inc         dword ptr [ebp-0B94]
 0048ECED    mov         edx,dword ptr [eax]
 0048ECEF    mov         eax,dword ptr [ebp-0BB4]
 0048ECF5    mov         eax,dword ptr [eax+22]
 0048ECF8    call        SameText
 0048ECFD    push        eax
 0048ECFE    dec         dword ptr [ebp-0B94]
 0048ED04    lea         eax,[ebp-4B8]
 0048ED0A    mov         edx,2
 0048ED0F    call        0067DCA0
 0048ED14    pop         ecx
 0048ED15    test        cl,cl
>0048ED17    je          0048EDC9
 0048ED1D    mov         eax,dword ptr [ebp-0BB4]
 0048ED23    mov         byte ptr [eax+5],28
 0048ED27    push        4
 0048ED29    mov         word ptr [ebp-0BA0],998
 0048ED32    mov         edx,6B5B57
 0048ED37    lea         eax,[ebp-4BC]
 0048ED3D    call        0067DAB4
 0048ED42    inc         dword ptr [ebp-0B94]
 0048ED48    push        dword ptr [eax]
 0048ED4A    mov         edx,6B5B59
 0048ED4F    lea         eax,[ebp-4C0]
 0048ED55    call        0067DAB4
 0048ED5A    inc         dword ptr [ebp-0B94]
 0048ED60    push        dword ptr [eax]
 0048ED62    xor         ecx,ecx
 0048ED64    mov         dl,22
 0048ED66    mov         eax,dword ptr [ebp-0BB4]
 0048ED6C    mov         eax,dword ptr [eax+1E]
 0048ED6F    call        00483A34
 0048ED74    dec         dword ptr [ebp-0B94]
 0048ED7A    lea         eax,[ebp-4C0]
 0048ED80    mov         edx,2
 0048ED85    call        0067DCA0
 0048ED8A    dec         dword ptr [ebp-0B94]
 0048ED90    lea         eax,[ebp-4BC]
 0048ED96    mov         edx,2
 0048ED9B    call        0067DCA0
 0048EDA0    mov         al,1
 0048EDA2    push        eax
 0048EDA3    dec         dword ptr [ebp-0B94]
 0048EDA9    lea         eax,[ebp-4]
 0048EDAC    mov         edx,2
 0048EDB1    call        0067DCA0
 0048EDB6    pop         eax
 0048EDB7    mov         edx,dword ptr [ebp-0BB0]
 0048EDBD    mov         dword ptr fs:[0],edx
>0048EDC4    jmp         00496D77
 0048EDC9    mov         word ptr [ebp-0BA0],9A4
 0048EDD2    mov         edx,6B5B62
 0048EDD7    lea         eax,[ebp-4C4]
 0048EDDD    call        0067DAB4
 0048EDE2    inc         dword ptr [ebp-0B94]
 0048EDE8    mov         edx,dword ptr [eax]
 0048EDEA    mov         eax,dword ptr [ebp-0BB4]
 0048EDF0    mov         eax,dword ptr [eax+22]
 0048EDF3    call        SameText
 0048EDF8    push        eax
 0048EDF9    dec         dword ptr [ebp-0B94]
 0048EDFF    lea         eax,[ebp-4C4]
 0048EE05    mov         edx,2
 0048EE0A    call        0067DCA0
 0048EE0F    pop         ecx
 0048EE10    test        cl,cl
>0048EE12    je          0048EF0D
 0048EE18    mov         eax,dword ptr [ebp-0BB4]
 0048EE1E    mov         byte ptr [eax+5],29
 0048EE22    mov         word ptr [ebp-0BA0],9B0
 0048EE2B    mov         edx,6B5B6B
 0048EE30    lea         eax,[ebp-4C8]
 0048EE36    call        0067DAB4
 0048EE3B    inc         dword ptr [ebp-0B94]
 0048EE41    lea         edx,[ebp-4C8]
 0048EE47    mov         eax,dword ptr [ebp-0BB4]
 0048EE4D    add         eax,0A
 0048EE50    call        0067DCD0
 0048EE55    dec         dword ptr [ebp-0B94]
 0048EE5B    lea         eax,[ebp-4C8]
 0048EE61    mov         edx,2
 0048EE66    call        0067DCA0
 0048EE6B    push        4
 0048EE6D    mov         word ptr [ebp-0BA0],9BC
 0048EE76    mov         edx,6B5B73
 0048EE7B    lea         eax,[ebp-4CC]
 0048EE81    call        0067DAB4
 0048EE86    inc         dword ptr [ebp-0B94]
 0048EE8C    push        dword ptr [eax]
 0048EE8E    mov         edx,6B5B75
 0048EE93    lea         eax,[ebp-4D0]
 0048EE99    call        0067DAB4
 0048EE9E    inc         dword ptr [ebp-0B94]
 0048EEA4    push        dword ptr [eax]
 0048EEA6    xor         ecx,ecx
 0048EEA8    mov         dl,22
 0048EEAA    mov         eax,dword ptr [ebp-0BB4]
 0048EEB0    mov         eax,dword ptr [eax+1E]
 0048EEB3    call        00483A34
 0048EEB8    dec         dword ptr [ebp-0B94]
 0048EEBE    lea         eax,[ebp-4D0]
 0048EEC4    mov         edx,2
 0048EEC9    call        0067DCA0
 0048EECE    dec         dword ptr [ebp-0B94]
 0048EED4    lea         eax,[ebp-4CC]
 0048EEDA    mov         edx,2
 0048EEDF    call        0067DCA0
 0048EEE4    mov         al,1
 0048EEE6    push        eax
 0048EEE7    dec         dword ptr [ebp-0B94]
 0048EEED    lea         eax,[ebp-4]
 0048EEF0    mov         edx,2
 0048EEF5    call        0067DCA0
 0048EEFA    pop         eax
 0048EEFB    mov         edx,dword ptr [ebp-0BB0]
 0048EF01    mov         dword ptr fs:[0],edx
>0048EF08    jmp         00496D77
 0048EF0D    mov         word ptr [ebp-0BA0],9C8
 0048EF16    mov         edx,6B5B7E
 0048EF1B    lea         eax,[ebp-4D4]
 0048EF21    call        0067DAB4
 0048EF26    inc         dword ptr [ebp-0B94]
 0048EF2C    mov         edx,dword ptr [eax]
 0048EF2E    mov         eax,dword ptr [ebp-0BB4]
 0048EF34    mov         eax,dword ptr [eax+22]
 0048EF37    call        SameText
 0048EF3C    push        eax
 0048EF3D    dec         dword ptr [ebp-0B94]
 0048EF43    lea         eax,[ebp-4D4]
 0048EF49    mov         edx,2
 0048EF4E    call        0067DCA0
 0048EF53    pop         ecx
 0048EF54    test        cl,cl
>0048EF56    je          0048F051
 0048EF5C    mov         eax,dword ptr [ebp-0BB4]
 0048EF62    mov         byte ptr [eax+5],29
 0048EF66    mov         word ptr [ebp-0BA0],9D4
 0048EF6F    mov         edx,6B5B87
 0048EF74    lea         eax,[ebp-4D8]
 0048EF7A    call        0067DAB4
 0048EF7F    inc         dword ptr [ebp-0B94]
 0048EF85    lea         edx,[ebp-4D8]
 0048EF8B    mov         eax,dword ptr [ebp-0BB4]
 0048EF91    add         eax,0A
 0048EF94    call        0067DCD0
 0048EF99    dec         dword ptr [ebp-0B94]
 0048EF9F    lea         eax,[ebp-4D8]
 0048EFA5    mov         edx,2
 0048EFAA    call        0067DCA0
 0048EFAF    push        4
 0048EFB1    mov         word ptr [ebp-0BA0],9E0
 0048EFBA    mov         edx,6B5B8F
 0048EFBF    lea         eax,[ebp-4DC]
 0048EFC5    call        0067DAB4
 0048EFCA    inc         dword ptr [ebp-0B94]
 0048EFD0    push        dword ptr [eax]
 0048EFD2    mov         edx,6B5B91
 0048EFD7    lea         eax,[ebp-4E0]
 0048EFDD    call        0067DAB4
 0048EFE2    inc         dword ptr [ebp-0B94]
 0048EFE8    push        dword ptr [eax]
 0048EFEA    xor         ecx,ecx
 0048EFEC    mov         dl,22
 0048EFEE    mov         eax,dword ptr [ebp-0BB4]
 0048EFF4    mov         eax,dword ptr [eax+1E]
 0048EFF7    call        00483A34
 0048EFFC    dec         dword ptr [ebp-0B94]
 0048F002    lea         eax,[ebp-4E0]
 0048F008    mov         edx,2
 0048F00D    call        0067DCA0
 0048F012    dec         dword ptr [ebp-0B94]
 0048F018    lea         eax,[ebp-4DC]
 0048F01E    mov         edx,2
 0048F023    call        0067DCA0
 0048F028    mov         al,1
 0048F02A    push        eax
 0048F02B    dec         dword ptr [ebp-0B94]
 0048F031    lea         eax,[ebp-4]
 0048F034    mov         edx,2
 0048F039    call        0067DCA0
 0048F03E    pop         eax
 0048F03F    mov         edx,dword ptr [ebp-0BB0]
 0048F045    mov         dword ptr fs:[0],edx
>0048F04C    jmp         00496D77
 0048F051    mov         word ptr [ebp-0BA0],9EC
 0048F05A    mov         edx,6B5B9A
 0048F05F    lea         eax,[ebp-4E4]
 0048F065    call        0067DAB4
 0048F06A    inc         dword ptr [ebp-0B94]
 0048F070    mov         edx,dword ptr [eax]
 0048F072    mov         eax,dword ptr [ebp-0BB4]
 0048F078    mov         eax,dword ptr [eax+22]
 0048F07B    call        SameText
 0048F080    push        eax
 0048F081    dec         dword ptr [ebp-0B94]
 0048F087    lea         eax,[ebp-4E4]
 0048F08D    mov         edx,2
 0048F092    call        0067DCA0
 0048F097    pop         ecx
 0048F098    test        cl,cl
>0048F09A    je          0048F195
 0048F0A0    mov         eax,dword ptr [ebp-0BB4]
 0048F0A6    mov         byte ptr [eax+5],29
 0048F0AA    mov         word ptr [ebp-0BA0],9F8
 0048F0B3    mov         edx,6B5BA0
 0048F0B8    lea         eax,[ebp-4E8]
 0048F0BE    call        0067DAB4
 0048F0C3    inc         dword ptr [ebp-0B94]
 0048F0C9    lea         edx,[ebp-4E8]
 0048F0CF    mov         eax,dword ptr [ebp-0BB4]
 0048F0D5    add         eax,0A
 0048F0D8    call        0067DCD0
 0048F0DD    dec         dword ptr [ebp-0B94]
 0048F0E3    lea         eax,[ebp-4E8]
 0048F0E9    mov         edx,2
 0048F0EE    call        0067DCA0
 0048F0F3    push        4
 0048F0F5    mov         word ptr [ebp-0BA0],0A04
 0048F0FE    mov         edx,6B5BA8
 0048F103    lea         eax,[ebp-4EC]
 0048F109    call        0067DAB4
 0048F10E    inc         dword ptr [ebp-0B94]
 0048F114    push        dword ptr [eax]
 0048F116    mov         edx,6B5BAA
 0048F11B    lea         eax,[ebp-4F0]
 0048F121    call        0067DAB4
 0048F126    inc         dword ptr [ebp-0B94]
 0048F12C    push        dword ptr [eax]
 0048F12E    xor         ecx,ecx
 0048F130    mov         dl,22
 0048F132    mov         eax,dword ptr [ebp-0BB4]
 0048F138    mov         eax,dword ptr [eax+1E]
 0048F13B    call        00483A34
 0048F140    dec         dword ptr [ebp-0B94]
 0048F146    lea         eax,[ebp-4F0]
 0048F14C    mov         edx,2
 0048F151    call        0067DCA0
 0048F156    dec         dword ptr [ebp-0B94]
 0048F15C    lea         eax,[ebp-4EC]
 0048F162    mov         edx,2
 0048F167    call        0067DCA0
 0048F16C    mov         al,1
 0048F16E    push        eax
 0048F16F    dec         dword ptr [ebp-0B94]
 0048F175    lea         eax,[ebp-4]
 0048F178    mov         edx,2
 0048F17D    call        0067DCA0
 0048F182    pop         eax
 0048F183    mov         edx,dword ptr [ebp-0BB0]
 0048F189    mov         dword ptr fs:[0],edx
>0048F190    jmp         00496D77
 0048F195    mov         word ptr [ebp-0BA0],0A10
 0048F19E    mov         edx,6B5BB3
 0048F1A3    lea         eax,[ebp-4F4]
 0048F1A9    call        0067DAB4
 0048F1AE    inc         dword ptr [ebp-0B94]
 0048F1B4    mov         edx,dword ptr [eax]
 0048F1B6    mov         eax,dword ptr [ebp-0BB4]
 0048F1BC    mov         eax,dword ptr [eax+22]
 0048F1BF    call        SameText
 0048F1C4    push        eax
 0048F1C5    dec         dword ptr [ebp-0B94]
 0048F1CB    lea         eax,[ebp-4F4]
 0048F1D1    mov         edx,2
 0048F1D6    call        0067DCA0
 0048F1DB    pop         ecx
 0048F1DC    test        cl,cl
>0048F1DE    je          0048F290
 0048F1E4    mov         eax,dword ptr [ebp-0BB4]
 0048F1EA    mov         byte ptr [eax+5],28
 0048F1EE    push        4
 0048F1F0    mov         word ptr [ebp-0BA0],0A1C
 0048F1F9    mov         edx,6B5BBA
 0048F1FE    lea         eax,[ebp-4F8]
 0048F204    call        0067DAB4
 0048F209    inc         dword ptr [ebp-0B94]
 0048F20F    push        dword ptr [eax]
 0048F211    mov         edx,6B5BBC
 0048F216    lea         eax,[ebp-4FC]
 0048F21C    call        0067DAB4
 0048F221    inc         dword ptr [ebp-0B94]
 0048F227    push        dword ptr [eax]
 0048F229    xor         ecx,ecx
 0048F22B    mov         dl,22
 0048F22D    mov         eax,dword ptr [ebp-0BB4]
 0048F233    mov         eax,dword ptr [eax+1E]
 0048F236    call        00483A34
 0048F23B    dec         dword ptr [ebp-0B94]
 0048F241    lea         eax,[ebp-4FC]
 0048F247    mov         edx,2
 0048F24C    call        0067DCA0
 0048F251    dec         dword ptr [ebp-0B94]
 0048F257    lea         eax,[ebp-4F8]
 0048F25D    mov         edx,2
 0048F262    call        0067DCA0
 0048F267    mov         al,1
 0048F269    push        eax
 0048F26A    dec         dword ptr [ebp-0B94]
 0048F270    lea         eax,[ebp-4]
 0048F273    mov         edx,2
 0048F278    call        0067DCA0
 0048F27D    pop         eax
 0048F27E    mov         edx,dword ptr [ebp-0BB0]
 0048F284    mov         dword ptr fs:[0],edx
>0048F28B    jmp         00496D77
 0048F290    mov         word ptr [ebp-0BA0],0A28
 0048F299    mov         edx,6B5BC5
 0048F29E    lea         eax,[ebp-500]
 0048F2A4    call        0067DAB4
 0048F2A9    inc         dword ptr [ebp-0B94]
 0048F2AF    mov         edx,dword ptr [eax]
 0048F2B1    mov         eax,dword ptr [ebp-0BB4]
 0048F2B7    mov         eax,dword ptr [eax+22]
 0048F2BA    call        SameText
 0048F2BF    push        eax
 0048F2C0    dec         dword ptr [ebp-0B94]
 0048F2C6    lea         eax,[ebp-500]
 0048F2CC    mov         edx,2
 0048F2D1    call        0067DCA0
 0048F2D6    pop         ecx
 0048F2D7    test        cl,cl
>0048F2D9    je          0048F3D4
 0048F2DF    mov         eax,dword ptr [ebp-0BB4]
 0048F2E5    mov         byte ptr [eax+5],29
 0048F2E9    mov         word ptr [ebp-0BA0],0A34
 0048F2F2    mov         edx,6B5BCE
 0048F2F7    lea         eax,[ebp-504]
 0048F2FD    call        0067DAB4
 0048F302    inc         dword ptr [ebp-0B94]
 0048F308    lea         edx,[ebp-504]
 0048F30E    mov         eax,dword ptr [ebp-0BB4]
 0048F314    add         eax,0A
 0048F317    call        0067DCD0
 0048F31C    dec         dword ptr [ebp-0B94]
 0048F322    lea         eax,[ebp-504]
 0048F328    mov         edx,2
 0048F32D    call        0067DCA0
 0048F332    push        4
 0048F334    mov         word ptr [ebp-0BA0],0A40
 0048F33D    mov         edx,6B5BD6
 0048F342    lea         eax,[ebp-508]
 0048F348    call        0067DAB4
 0048F34D    inc         dword ptr [ebp-0B94]
 0048F353    push        dword ptr [eax]
 0048F355    mov         edx,6B5BD8
 0048F35A    lea         eax,[ebp-50C]
 0048F360    call        0067DAB4
 0048F365    inc         dword ptr [ebp-0B94]
 0048F36B    push        dword ptr [eax]
 0048F36D    xor         ecx,ecx
 0048F36F    mov         dl,22
 0048F371    mov         eax,dword ptr [ebp-0BB4]
 0048F377    mov         eax,dword ptr [eax+1E]
 0048F37A    call        00483A34
 0048F37F    dec         dword ptr [ebp-0B94]
 0048F385    lea         eax,[ebp-50C]
 0048F38B    mov         edx,2
 0048F390    call        0067DCA0
 0048F395    dec         dword ptr [ebp-0B94]
 0048F39B    lea         eax,[ebp-508]
 0048F3A1    mov         edx,2
 0048F3A6    call        0067DCA0
 0048F3AB    mov         al,1
 0048F3AD    push        eax
 0048F3AE    dec         dword ptr [ebp-0B94]
 0048F3B4    lea         eax,[ebp-4]
 0048F3B7    mov         edx,2
 0048F3BC    call        0067DCA0
 0048F3C1    pop         eax
 0048F3C2    mov         edx,dword ptr [ebp-0BB0]
 0048F3C8    mov         dword ptr fs:[0],edx
>0048F3CF    jmp         00496D77
 0048F3D4    mov         word ptr [ebp-0BA0],0A4C
 0048F3DD    mov         edx,6B5BE1
 0048F3E2    lea         eax,[ebp-510]
 0048F3E8    call        0067DAB4
 0048F3ED    inc         dword ptr [ebp-0B94]
 0048F3F3    mov         edx,dword ptr [eax]
 0048F3F5    mov         eax,dword ptr [ebp-0BB4]
 0048F3FB    mov         eax,dword ptr [eax+22]
 0048F3FE    call        SameText
 0048F403    push        eax
 0048F404    dec         dword ptr [ebp-0B94]
 0048F40A    lea         eax,[ebp-510]
 0048F410    mov         edx,2
 0048F415    call        0067DCA0
 0048F41A    pop         ecx
 0048F41B    test        cl,cl
>0048F41D    je          0048F518
 0048F423    mov         eax,dword ptr [ebp-0BB4]
 0048F429    mov         byte ptr [eax+5],29
 0048F42D    mov         word ptr [ebp-0BA0],0A58
 0048F436    mov         edx,6B5BEB
 0048F43B    lea         eax,[ebp-514]
 0048F441    call        0067DAB4
 0048F446    inc         dword ptr [ebp-0B94]
 0048F44C    lea         edx,[ebp-514]
 0048F452    mov         eax,dword ptr [ebp-0BB4]
 0048F458    add         eax,0A
 0048F45B    call        0067DCD0
 0048F460    dec         dword ptr [ebp-0B94]
 0048F466    lea         eax,[ebp-514]
 0048F46C    mov         edx,2
 0048F471    call        0067DCA0
 0048F476    push        4
 0048F478    mov         word ptr [ebp-0BA0],0A64
 0048F481    mov         edx,6B5BF3
 0048F486    lea         eax,[ebp-518]
 0048F48C    call        0067DAB4
 0048F491    inc         dword ptr [ebp-0B94]
 0048F497    push        dword ptr [eax]
 0048F499    mov         edx,6B5BF5
 0048F49E    lea         eax,[ebp-51C]
 0048F4A4    call        0067DAB4
 0048F4A9    inc         dword ptr [ebp-0B94]
 0048F4AF    push        dword ptr [eax]
 0048F4B1    xor         ecx,ecx
 0048F4B3    mov         dl,22
 0048F4B5    mov         eax,dword ptr [ebp-0BB4]
 0048F4BB    mov         eax,dword ptr [eax+1E]
 0048F4BE    call        00483A34
 0048F4C3    dec         dword ptr [ebp-0B94]
 0048F4C9    lea         eax,[ebp-51C]
 0048F4CF    mov         edx,2
 0048F4D4    call        0067DCA0
 0048F4D9    dec         dword ptr [ebp-0B94]
 0048F4DF    lea         eax,[ebp-518]
 0048F4E5    mov         edx,2
 0048F4EA    call        0067DCA0
 0048F4EF    mov         al,1
 0048F4F1    push        eax
 0048F4F2    dec         dword ptr [ebp-0B94]
 0048F4F8    lea         eax,[ebp-4]
 0048F4FB    mov         edx,2
 0048F500    call        0067DCA0
 0048F505    pop         eax
 0048F506    mov         edx,dword ptr [ebp-0BB0]
 0048F50C    mov         dword ptr fs:[0],edx
>0048F513    jmp         00496D77
 0048F518    mov         word ptr [ebp-0BA0],0A70
 0048F521    mov         edx,6B5BFE
 0048F526    lea         eax,[ebp-520]
 0048F52C    call        0067DAB4
 0048F531    inc         dword ptr [ebp-0B94]
 0048F537    mov         edx,dword ptr [eax]
 0048F539    mov         eax,dword ptr [ebp-0BB4]
 0048F53F    mov         eax,dword ptr [eax+22]
 0048F542    call        SameText
 0048F547    push        eax
 0048F548    dec         dword ptr [ebp-0B94]
 0048F54E    lea         eax,[ebp-520]
 0048F554    mov         edx,2
 0048F559    call        0067DCA0
 0048F55E    pop         ecx
 0048F55F    test        cl,cl
>0048F561    je          0048F613
 0048F567    mov         eax,dword ptr [ebp-0BB4]
 0048F56D    mov         byte ptr [eax+5],28
 0048F571    push        4
 0048F573    mov         word ptr [ebp-0BA0],0A7C
 0048F57C    mov         edx,6B5C05
 0048F581    lea         eax,[ebp-524]
 0048F587    call        0067DAB4
 0048F58C    inc         dword ptr [ebp-0B94]
 0048F592    push        dword ptr [eax]
 0048F594    mov         edx,6B5C07
 0048F599    lea         eax,[ebp-528]
 0048F59F    call        0067DAB4
 0048F5A4    inc         dword ptr [ebp-0B94]
 0048F5AA    push        dword ptr [eax]
 0048F5AC    xor         ecx,ecx
 0048F5AE    mov         dl,22
 0048F5B0    mov         eax,dword ptr [ebp-0BB4]
 0048F5B6    mov         eax,dword ptr [eax+1E]
 0048F5B9    call        00483A34
 0048F5BE    dec         dword ptr [ebp-0B94]
 0048F5C4    lea         eax,[ebp-528]
 0048F5CA    mov         edx,2
 0048F5CF    call        0067DCA0
 0048F5D4    dec         dword ptr [ebp-0B94]
 0048F5DA    lea         eax,[ebp-524]
 0048F5E0    mov         edx,2
 0048F5E5    call        0067DCA0
 0048F5EA    mov         al,1
 0048F5EC    push        eax
 0048F5ED    dec         dword ptr [ebp-0B94]
 0048F5F3    lea         eax,[ebp-4]
 0048F5F6    mov         edx,2
 0048F5FB    call        0067DCA0
 0048F600    pop         eax
 0048F601    mov         edx,dword ptr [ebp-0BB0]
 0048F607    mov         dword ptr fs:[0],edx
>0048F60E    jmp         00496D77
 0048F613    mov         word ptr [ebp-0BA0],0A88
 0048F61C    mov         edx,6B5C10
 0048F621    lea         eax,[ebp-52C]
 0048F627    call        0067DAB4
 0048F62C    inc         dword ptr [ebp-0B94]
 0048F632    mov         edx,dword ptr [eax]
 0048F634    mov         eax,dword ptr [ebp-0BB4]
 0048F63A    mov         eax,dword ptr [eax+22]
 0048F63D    call        SameText
 0048F642    push        eax
 0048F643    dec         dword ptr [ebp-0B94]
 0048F649    lea         eax,[ebp-52C]
 0048F64F    mov         edx,2
 0048F654    call        0067DCA0
 0048F659    pop         ecx
 0048F65A    test        cl,cl
>0048F65C    je          0048F7D3
 0048F662    mov         eax,dword ptr [ebp-0BB4]
 0048F668    mov         byte ptr [eax+5],29
 0048F66C    mov         word ptr [ebp-0BA0],0A94
 0048F675    mov         edx,6B5C19
 0048F67A    lea         eax,[ebp-530]
 0048F680    call        0067DAB4
 0048F685    inc         dword ptr [ebp-0B94]
 0048F68B    lea         edx,[ebp-530]
 0048F691    mov         eax,dword ptr [ebp-0BB4]
 0048F697    add         eax,0A
 0048F69A    call        0067DCD0
 0048F69F    dec         dword ptr [ebp-0B94]
 0048F6A5    lea         eax,[ebp-530]
 0048F6AB    mov         edx,2
 0048F6B0    call        0067DCA0
 0048F6B5    push        4
 0048F6B7    mov         word ptr [ebp-0BA0],0AA0
 0048F6C0    mov         edx,6B5C21
 0048F6C5    lea         eax,[ebp-534]
 0048F6CB    call        0067DAB4
 0048F6D0    inc         dword ptr [ebp-0B94]
 0048F6D6    push        dword ptr [eax]
 0048F6D8    mov         edx,6B5C23
 0048F6DD    lea         eax,[ebp-538]
 0048F6E3    call        0067DAB4
 0048F6E8    inc         dword ptr [ebp-0B94]
 0048F6EE    push        dword ptr [eax]
 0048F6F0    xor         ecx,ecx
 0048F6F2    mov         dl,22
 0048F6F4    mov         eax,dword ptr [ebp-0BB4]
 0048F6FA    mov         eax,dword ptr [eax+1E]
 0048F6FD    call        00483A34
 0048F702    dec         dword ptr [ebp-0B94]
 0048F708    lea         eax,[ebp-538]
 0048F70E    mov         edx,2
 0048F713    call        0067DCA0
 0048F718    dec         dword ptr [ebp-0B94]
 0048F71E    lea         eax,[ebp-534]
 0048F724    mov         edx,2
 0048F729    call        0067DCA0
 0048F72E    push        4
 0048F730    mov         word ptr [ebp-0BA0],0AAC
 0048F739    mov         edx,6B5C2C
 0048F73E    lea         eax,[ebp-53C]
 0048F744    call        0067DAB4
 0048F749    inc         dword ptr [ebp-0B94]
 0048F74F    push        dword ptr [eax]
 0048F751    mov         edx,6B5C33
 0048F756    lea         eax,[ebp-540]
 0048F75C    call        0067DAB4
 0048F761    inc         dword ptr [ebp-0B94]
 0048F767    push        dword ptr [eax]
 0048F769    mov         ecx,1
 0048F76E    mov         dl,21
 0048F770    mov         eax,dword ptr [ebp-0BB4]
 0048F776    mov         eax,dword ptr [eax+1E]
 0048F779    call        00483A34
 0048F77E    dec         dword ptr [ebp-0B94]
 0048F784    lea         eax,[ebp-540]
 0048F78A    mov         edx,2
 0048F78F    call        0067DCA0
 0048F794    dec         dword ptr [ebp-0B94]
 0048F79A    lea         eax,[ebp-53C]
 0048F7A0    mov         edx,2
 0048F7A5    call        0067DCA0
 0048F7AA    mov         al,1
 0048F7AC    push        eax
 0048F7AD    dec         dword ptr [ebp-0B94]
 0048F7B3    lea         eax,[ebp-4]
 0048F7B6    mov         edx,2
 0048F7BB    call        0067DCA0
 0048F7C0    pop         eax
 0048F7C1    mov         edx,dword ptr [ebp-0BB0]
 0048F7C7    mov         dword ptr fs:[0],edx
>0048F7CE    jmp         00496D77
 0048F7D3    mov         word ptr [ebp-0BA0],0AB8
 0048F7DC    mov         edx,6B5C3B
 0048F7E1    lea         eax,[ebp-544]
 0048F7E7    call        0067DAB4
 0048F7EC    inc         dword ptr [ebp-0B94]
 0048F7F2    mov         edx,dword ptr [eax]
 0048F7F4    mov         eax,dword ptr [ebp-0BB4]
 0048F7FA    mov         eax,dword ptr [eax+22]
 0048F7FD    call        SameText
 0048F802    push        eax
 0048F803    dec         dword ptr [ebp-0B94]
 0048F809    lea         eax,[ebp-544]
 0048F80F    mov         edx,2
 0048F814    call        0067DCA0
 0048F819    pop         ecx
 0048F81A    test        cl,cl
>0048F81C    je          0048F917
 0048F822    mov         eax,dword ptr [ebp-0BB4]
 0048F828    mov         byte ptr [eax+5],29
 0048F82C    mov         word ptr [ebp-0BA0],0AC4
 0048F835    mov         edx,6B5C45
 0048F83A    lea         eax,[ebp-548]
 0048F840    call        0067DAB4
 0048F845    inc         dword ptr [ebp-0B94]
 0048F84B    lea         edx,[ebp-548]
 0048F851    mov         eax,dword ptr [ebp-0BB4]
 0048F857    add         eax,0A
 0048F85A    call        0067DCD0
 0048F85F    dec         dword ptr [ebp-0B94]
 0048F865    lea         eax,[ebp-548]
 0048F86B    mov         edx,2
 0048F870    call        0067DCA0
 0048F875    push        4
 0048F877    mov         word ptr [ebp-0BA0],0AD0
 0048F880    mov         edx,6B5C4A
 0048F885    lea         eax,[ebp-54C]
 0048F88B    call        0067DAB4
 0048F890    inc         dword ptr [ebp-0B94]
 0048F896    push        dword ptr [eax]
 0048F898    mov         edx,6B5C4C
 0048F89D    lea         eax,[ebp-550]
 0048F8A3    call        0067DAB4
 0048F8A8    inc         dword ptr [ebp-0B94]
 0048F8AE    push        dword ptr [eax]
 0048F8B0    xor         ecx,ecx
 0048F8B2    mov         dl,22
 0048F8B4    mov         eax,dword ptr [ebp-0BB4]
 0048F8BA    mov         eax,dword ptr [eax+1E]
 0048F8BD    call        00483A34
 0048F8C2    dec         dword ptr [ebp-0B94]
 0048F8C8    lea         eax,[ebp-550]
 0048F8CE    mov         edx,2
 0048F8D3    call        0067DCA0
 0048F8D8    dec         dword ptr [ebp-0B94]
 0048F8DE    lea         eax,[ebp-54C]
 0048F8E4    mov         edx,2
 0048F8E9    call        0067DCA0
 0048F8EE    mov         al,1
 0048F8F0    push        eax
 0048F8F1    dec         dword ptr [ebp-0B94]
 0048F8F7    lea         eax,[ebp-4]
 0048F8FA    mov         edx,2
 0048F8FF    call        0067DCA0
 0048F904    pop         eax
 0048F905    mov         edx,dword ptr [ebp-0BB0]
 0048F90B    mov         dword ptr fs:[0],edx
>0048F912    jmp         00496D77
 0048F917    mov         word ptr [ebp-0BA0],0ADC
 0048F920    mov         edx,6B5C55
 0048F925    lea         eax,[ebp-554]
 0048F92B    call        0067DAB4
 0048F930    inc         dword ptr [ebp-0B94]
 0048F936    mov         edx,dword ptr [eax]
 0048F938    mov         eax,dword ptr [ebp-0BB4]
 0048F93E    mov         eax,dword ptr [eax+22]
 0048F941    call        SameText
 0048F946    push        eax
 0048F947    dec         dword ptr [ebp-0B94]
 0048F94D    lea         eax,[ebp-554]
 0048F953    mov         edx,2
 0048F958    call        0067DCA0
 0048F95D    pop         ecx
 0048F95E    test        cl,cl
>0048F960    je          0048FA5B
 0048F966    mov         eax,dword ptr [ebp-0BB4]
 0048F96C    mov         byte ptr [eax+5],29
 0048F970    mov         word ptr [ebp-0BA0],0AE8
 0048F979    mov         edx,6B5C5F
 0048F97E    lea         eax,[ebp-558]
 0048F984    call        0067DAB4
 0048F989    inc         dword ptr [ebp-0B94]
 0048F98F    lea         edx,[ebp-558]
 0048F995    mov         eax,dword ptr [ebp-0BB4]
 0048F99B    add         eax,0A
 0048F99E    call        0067DCD0
 0048F9A3    dec         dword ptr [ebp-0B94]
 0048F9A9    lea         eax,[ebp-558]
 0048F9AF    mov         edx,2
 0048F9B4    call        0067DCA0
 0048F9B9    push        4
 0048F9BB    mov         word ptr [ebp-0BA0],0AF4
 0048F9C4    mov         edx,6B5C67
 0048F9C9    lea         eax,[ebp-55C]
 0048F9CF    call        0067DAB4
 0048F9D4    inc         dword ptr [ebp-0B94]
 0048F9DA    push        dword ptr [eax]
 0048F9DC    mov         edx,6B5C69
 0048F9E1    lea         eax,[ebp-560]
 0048F9E7    call        0067DAB4
 0048F9EC    inc         dword ptr [ebp-0B94]
 0048F9F2    push        dword ptr [eax]
 0048F9F4    xor         ecx,ecx
 0048F9F6    mov         dl,22
 0048F9F8    mov         eax,dword ptr [ebp-0BB4]
 0048F9FE    mov         eax,dword ptr [eax+1E]
 0048FA01    call        00483A34
 0048FA06    dec         dword ptr [ebp-0B94]
 0048FA0C    lea         eax,[ebp-560]
 0048FA12    mov         edx,2
 0048FA17    call        0067DCA0
 0048FA1C    dec         dword ptr [ebp-0B94]
 0048FA22    lea         eax,[ebp-55C]
 0048FA28    mov         edx,2
 0048FA2D    call        0067DCA0
 0048FA32    mov         al,1
 0048FA34    push        eax
 0048FA35    dec         dword ptr [ebp-0B94]
 0048FA3B    lea         eax,[ebp-4]
 0048FA3E    mov         edx,2
 0048FA43    call        0067DCA0
 0048FA48    pop         eax
 0048FA49    mov         edx,dword ptr [ebp-0BB0]
 0048FA4F    mov         dword ptr fs:[0],edx
>0048FA56    jmp         00496D77
 0048FA5B    mov         word ptr [ebp-0BA0],0B00
 0048FA64    mov         edx,6B5C72
 0048FA69    lea         eax,[ebp-564]
 0048FA6F    call        0067DAB4
 0048FA74    inc         dword ptr [ebp-0B94]
 0048FA7A    mov         edx,dword ptr [eax]
 0048FA7C    mov         eax,dword ptr [ebp-0BB4]
 0048FA82    mov         eax,dword ptr [eax+22]
 0048FA85    call        SameText
 0048FA8A    push        eax
 0048FA8B    dec         dword ptr [ebp-0B94]
 0048FA91    lea         eax,[ebp-564]
 0048FA97    mov         edx,2
 0048FA9C    call        0067DCA0
 0048FAA1    pop         ecx
 0048FAA2    test        cl,cl
>0048FAA4    je          0048FC4E
 0048FAAA    mov         eax,dword ptr [ebp-0BB4]
 0048FAB0    mov         byte ptr [eax+5],28
 0048FAB4    push        4
 0048FAB6    mov         word ptr [ebp-0BA0],0B0C
 0048FABF    mov         edx,6B5C7E
 0048FAC4    lea         eax,[ebp-568]
 0048FACA    call        0067DAB4
 0048FACF    inc         dword ptr [ebp-0B94]
 0048FAD5    push        dword ptr [eax]
 0048FAD7    mov         edx,6B5C80
 0048FADC    lea         eax,[ebp-56C]
 0048FAE2    call        0067DAB4
 0048FAE7    inc         dword ptr [ebp-0B94]
 0048FAED    push        dword ptr [eax]
 0048FAEF    xor         ecx,ecx
 0048FAF1    mov         dl,22
 0048FAF3    mov         eax,dword ptr [ebp-0BB4]
 0048FAF9    mov         eax,dword ptr [eax+1E]
 0048FAFC    call        00483A34
 0048FB01    dec         dword ptr [ebp-0B94]
 0048FB07    lea         eax,[ebp-56C]
 0048FB0D    mov         edx,2
 0048FB12    call        0067DCA0
 0048FB17    dec         dword ptr [ebp-0B94]
 0048FB1D    lea         eax,[ebp-568]
 0048FB23    mov         edx,2
 0048FB28    call        0067DCA0
 0048FB2D    push        4
 0048FB2F    mov         word ptr [ebp-0BA0],0B18
 0048FB38    mov         edx,6B5C89
 0048FB3D    lea         eax,[ebp-570]
 0048FB43    call        0067DAB4
 0048FB48    inc         dword ptr [ebp-0B94]
 0048FB4E    push        dword ptr [eax]
 0048FB50    mov         edx,6B5C8B
 0048FB55    lea         eax,[ebp-574]
 0048FB5B    call        0067DAB4
 0048FB60    inc         dword ptr [ebp-0B94]
 0048FB66    push        dword ptr [eax]
 0048FB68    mov         ecx,1
 0048FB6D    mov         dl,21
 0048FB6F    mov         eax,dword ptr [ebp-0BB4]
 0048FB75    mov         eax,dword ptr [eax+1E]
 0048FB78    call        00483A34
 0048FB7D    dec         dword ptr [ebp-0B94]
 0048FB83    lea         eax,[ebp-574]
 0048FB89    mov         edx,2
 0048FB8E    call        0067DCA0
 0048FB93    dec         dword ptr [ebp-0B94]
 0048FB99    lea         eax,[ebp-570]
 0048FB9F    mov         edx,2
 0048FBA4    call        0067DCA0
 0048FBA9    push        4
 0048FBAB    mov         word ptr [ebp-0BA0],0B24
 0048FBB4    mov         edx,6B5C98
 0048FBB9    lea         eax,[ebp-578]
 0048FBBF    call        0067DAB4
 0048FBC4    inc         dword ptr [ebp-0B94]
 0048FBCA    push        dword ptr [eax]
 0048FBCC    mov         edx,6B5C9F
 0048FBD1    lea         eax,[ebp-57C]
 0048FBD7    call        0067DAB4
 0048FBDC    inc         dword ptr [ebp-0B94]
 0048FBE2    push        dword ptr [eax]
 0048FBE4    mov         ecx,2
 0048FBE9    mov         dl,21
 0048FBEB    mov         eax,dword ptr [ebp-0BB4]
 0048FBF1    mov         eax,dword ptr [eax+1E]
 0048FBF4    call        00483A34
 0048FBF9    dec         dword ptr [ebp-0B94]
 0048FBFF    lea         eax,[ebp-57C]
 0048FC05    mov         edx,2
 0048FC0A    call        0067DCA0
 0048FC0F    dec         dword ptr [ebp-0B94]
 0048FC15    lea         eax,[ebp-578]
 0048FC1B    mov         edx,2
 0048FC20    call        0067DCA0
 0048FC25    mov         al,1
 0048FC27    push        eax
 0048FC28    dec         dword ptr [ebp-0B94]
 0048FC2E    lea         eax,[ebp-4]
 0048FC31    mov         edx,2
 0048FC36    call        0067DCA0
 0048FC3B    pop         eax
 0048FC3C    mov         edx,dword ptr [ebp-0BB0]
 0048FC42    mov         dword ptr fs:[0],edx
>0048FC49    jmp         00496D77
 0048FC4E    mov         word ptr [ebp-0BA0],0B30
 0048FC57    mov         edx,6B5CA7
 0048FC5C    lea         eax,[ebp-580]
 0048FC62    call        0067DAB4
 0048FC67    inc         dword ptr [ebp-0B94]
 0048FC6D    mov         edx,dword ptr [eax]
 0048FC6F    mov         eax,dword ptr [ebp-0BB4]
 0048FC75    mov         eax,dword ptr [eax+22]
 0048FC78    call        SameText
 0048FC7D    push        eax
 0048FC7E    dec         dword ptr [ebp-0B94]
 0048FC84    lea         eax,[ebp-580]
 0048FC8A    mov         edx,2
 0048FC8F    call        0067DCA0
 0048FC94    pop         ecx
 0048FC95    test        cl,cl
>0048FC97    je          0048FE41
 0048FC9D    mov         eax,dword ptr [ebp-0BB4]
 0048FCA3    mov         byte ptr [eax+5],28
 0048FCA7    push        4
 0048FCA9    mov         word ptr [ebp-0BA0],0B3C
 0048FCB2    mov         edx,6B5CB4
 0048FCB7    lea         eax,[ebp-584]
 0048FCBD    call        0067DAB4
 0048FCC2    inc         dword ptr [ebp-0B94]
 0048FCC8    push        dword ptr [eax]
 0048FCCA    mov         edx,6B5CB6
 0048FCCF    lea         eax,[ebp-588]
 0048FCD5    call        0067DAB4
 0048FCDA    inc         dword ptr [ebp-0B94]
 0048FCE0    push        dword ptr [eax]
 0048FCE2    xor         ecx,ecx
 0048FCE4    mov         dl,22
 0048FCE6    mov         eax,dword ptr [ebp-0BB4]
 0048FCEC    mov         eax,dword ptr [eax+1E]
 0048FCEF    call        00483A34
 0048FCF4    dec         dword ptr [ebp-0B94]
 0048FCFA    lea         eax,[ebp-588]
 0048FD00    mov         edx,2
 0048FD05    call        0067DCA0
 0048FD0A    dec         dword ptr [ebp-0B94]
 0048FD10    lea         eax,[ebp-584]
 0048FD16    mov         edx,2
 0048FD1B    call        0067DCA0
 0048FD20    push        4
 0048FD22    mov         word ptr [ebp-0BA0],0B48
 0048FD2B    mov         edx,6B5CBF
 0048FD30    lea         eax,[ebp-58C]
 0048FD36    call        0067DAB4
 0048FD3B    inc         dword ptr [ebp-0B94]
 0048FD41    push        dword ptr [eax]
 0048FD43    mov         edx,6B5CC1
 0048FD48    lea         eax,[ebp-590]
 0048FD4E    call        0067DAB4
 0048FD53    inc         dword ptr [ebp-0B94]
 0048FD59    push        dword ptr [eax]
 0048FD5B    mov         ecx,1
 0048FD60    mov         dl,21
 0048FD62    mov         eax,dword ptr [ebp-0BB4]
 0048FD68    mov         eax,dword ptr [eax+1E]
 0048FD6B    call        00483A34
 0048FD70    dec         dword ptr [ebp-0B94]
 0048FD76    lea         eax,[ebp-590]
 0048FD7C    mov         edx,2
 0048FD81    call        0067DCA0
 0048FD86    dec         dword ptr [ebp-0B94]
 0048FD8C    lea         eax,[ebp-58C]
 0048FD92    mov         edx,2
 0048FD97    call        0067DCA0
 0048FD9C    push        4
 0048FD9E    mov         word ptr [ebp-0BA0],0B54
 0048FDA7    mov         edx,6B5CCB
 0048FDAC    lea         eax,[ebp-594]
 0048FDB2    call        0067DAB4
 0048FDB7    inc         dword ptr [ebp-0B94]
 0048FDBD    push        dword ptr [eax]
 0048FDBF    mov         edx,6B5CD2
 0048FDC4    lea         eax,[ebp-598]
 0048FDCA    call        0067DAB4
 0048FDCF    inc         dword ptr [ebp-0B94]
 0048FDD5    push        dword ptr [eax]
 0048FDD7    mov         ecx,2
 0048FDDC    mov         dl,21
 0048FDDE    mov         eax,dword ptr [ebp-0BB4]
 0048FDE4    mov         eax,dword ptr [eax+1E]
 0048FDE7    call        00483A34
 0048FDEC    dec         dword ptr [ebp-0B94]
 0048FDF2    lea         eax,[ebp-598]
 0048FDF8    mov         edx,2
 0048FDFD    call        0067DCA0
 0048FE02    dec         dword ptr [ebp-0B94]
 0048FE08    lea         eax,[ebp-594]
 0048FE0E    mov         edx,2
 0048FE13    call        0067DCA0
 0048FE18    mov         al,1
 0048FE1A    push        eax
 0048FE1B    dec         dword ptr [ebp-0B94]
 0048FE21    lea         eax,[ebp-4]
 0048FE24    mov         edx,2
 0048FE29    call        0067DCA0
 0048FE2E    pop         eax
 0048FE2F    mov         edx,dword ptr [ebp-0BB0]
 0048FE35    mov         dword ptr fs:[0],edx
>0048FE3C    jmp         00496D77
 0048FE41    mov         word ptr [ebp-0BA0],0B60
 0048FE4A    mov         edx,6B5CDA
 0048FE4F    lea         eax,[ebp-59C]
 0048FE55    call        0067DAB4
 0048FE5A    inc         dword ptr [ebp-0B94]
 0048FE60    mov         edx,dword ptr [eax]
 0048FE62    mov         eax,dword ptr [ebp-0BB4]
 0048FE68    mov         eax,dword ptr [eax+22]
 0048FE6B    call        SameText
 0048FE70    push        eax
 0048FE71    dec         dword ptr [ebp-0B94]
 0048FE77    lea         eax,[ebp-59C]
 0048FE7D    mov         edx,2
 0048FE82    call        0067DCA0
 0048FE87    pop         ecx
 0048FE88    test        cl,cl
>0048FE8A    je          0048FFB8
 0048FE90    mov         eax,dword ptr [ebp-0BB4]
 0048FE96    mov         byte ptr [eax+5],28
 0048FE9A    push        4
 0048FE9C    mov         word ptr [ebp-0BA0],0B6C
 0048FEA5    mov         edx,6B5CE7
 0048FEAA    lea         eax,[ebp-5A0]
 0048FEB0    call        0067DAB4
 0048FEB5    inc         dword ptr [ebp-0B94]
 0048FEBB    push        dword ptr [eax]
 0048FEBD    mov         edx,6B5CE9
 0048FEC2    lea         eax,[ebp-5A4]
 0048FEC8    call        0067DAB4
 0048FECD    inc         dword ptr [ebp-0B94]
 0048FED3    push        dword ptr [eax]
 0048FED5    xor         ecx,ecx
 0048FED7    mov         dl,22
 0048FED9    mov         eax,dword ptr [ebp-0BB4]
 0048FEDF    mov         eax,dword ptr [eax+1E]
 0048FEE2    call        00483A34
 0048FEE7    dec         dword ptr [ebp-0B94]
 0048FEED    lea         eax,[ebp-5A4]
 0048FEF3    mov         edx,2
 0048FEF8    call        0067DCA0
 0048FEFD    dec         dword ptr [ebp-0B94]
 0048FF03    lea         eax,[ebp-5A0]
 0048FF09    mov         edx,2
 0048FF0E    call        0067DCA0
 0048FF13    push        4
 0048FF15    mov         word ptr [ebp-0BA0],0B78
 0048FF1E    mov         edx,6B5CF2
 0048FF23    lea         eax,[ebp-5A8]
 0048FF29    call        0067DAB4
 0048FF2E    inc         dword ptr [ebp-0B94]
 0048FF34    push        dword ptr [eax]
 0048FF36    mov         edx,6B5CF4
 0048FF3B    lea         eax,[ebp-5AC]
 0048FF41    call        0067DAB4
 0048FF46    inc         dword ptr [ebp-0B94]
 0048FF4C    push        dword ptr [eax]
 0048FF4E    mov         ecx,1
 0048FF53    mov         dl,22
 0048FF55    mov         eax,dword ptr [ebp-0BB4]
 0048FF5B    mov         eax,dword ptr [eax+1E]
 0048FF5E    call        00483A34
 0048FF63    dec         dword ptr [ebp-0B94]
 0048FF69    lea         eax,[ebp-5AC]
 0048FF6F    mov         edx,2
 0048FF74    call        0067DCA0
 0048FF79    dec         dword ptr [ebp-0B94]
 0048FF7F    lea         eax,[ebp-5A8]
 0048FF85    mov         edx,2
 0048FF8A    call        0067DCA0
 0048FF8F    mov         al,1
 0048FF91    push        eax
 0048FF92    dec         dword ptr [ebp-0B94]
 0048FF98    lea         eax,[ebp-4]
 0048FF9B    mov         edx,2
 0048FFA0    call        0067DCA0
 0048FFA5    pop         eax
 0048FFA6    mov         edx,dword ptr [ebp-0BB0]
 0048FFAC    mov         dword ptr fs:[0],edx
>0048FFB3    jmp         00496D77
 0048FFB8    mov         word ptr [ebp-0BA0],0B84
 0048FFC1    mov         edx,6B5CFF
 0048FFC6    lea         eax,[ebp-5B0]
 0048FFCC    call        0067DAB4
 0048FFD1    inc         dword ptr [ebp-0B94]
 0048FFD7    mov         edx,dword ptr [eax]
 0048FFD9    mov         eax,dword ptr [ebp-0BB4]
 0048FFDF    mov         eax,dword ptr [eax+22]
 0048FFE2    call        SameText
 0048FFE7    push        eax
 0048FFE8    dec         dword ptr [ebp-0B94]
 0048FFEE    lea         eax,[ebp-5B0]
 0048FFF4    mov         edx,2
 0048FFF9    call        0067DCA0
 0048FFFE    pop         ecx
 0048FFFF    test        cl,cl
>00490001    je          0049012F
 00490007    mov         eax,dword ptr [ebp-0BB4]
 0049000D    mov         byte ptr [eax+5],28
 00490011    push        4
 00490013    mov         word ptr [ebp-0BA0],0B90
 0049001C    mov         edx,6B5D0C
 00490021    lea         eax,[ebp-5B4]
 00490027    call        0067DAB4
 0049002C    inc         dword ptr [ebp-0B94]
 00490032    push        dword ptr [eax]
 00490034    mov         edx,6B5D0E
 00490039    lea         eax,[ebp-5B8]
 0049003F    call        0067DAB4
 00490044    inc         dword ptr [ebp-0B94]
 0049004A    push        dword ptr [eax]
 0049004C    xor         ecx,ecx
 0049004E    mov         dl,22
 00490050    mov         eax,dword ptr [ebp-0BB4]
 00490056    mov         eax,dword ptr [eax+1E]
 00490059    call        00483A34
 0049005E    dec         dword ptr [ebp-0B94]
 00490064    lea         eax,[ebp-5B8]
 0049006A    mov         edx,2
 0049006F    call        0067DCA0
 00490074    dec         dword ptr [ebp-0B94]
 0049007A    lea         eax,[ebp-5B4]
 00490080    mov         edx,2
 00490085    call        0067DCA0
 0049008A    push        4
 0049008C    mov         word ptr [ebp-0BA0],0B9C
 00490095    mov         edx,6B5D17
 0049009A    lea         eax,[ebp-5BC]
 004900A0    call        0067DAB4
 004900A5    inc         dword ptr [ebp-0B94]
 004900AB    push        dword ptr [eax]
 004900AD    mov         edx,6B5D19
 004900B2    lea         eax,[ebp-5C0]
 004900B8    call        0067DAB4
 004900BD    inc         dword ptr [ebp-0B94]
 004900C3    push        dword ptr [eax]
 004900C5    mov         ecx,1
 004900CA    mov         dl,22
 004900CC    mov         eax,dword ptr [ebp-0BB4]
 004900D2    mov         eax,dword ptr [eax+1E]
 004900D5    call        00483A34
 004900DA    dec         dword ptr [ebp-0B94]
 004900E0    lea         eax,[ebp-5C0]
 004900E6    mov         edx,2
 004900EB    call        0067DCA0
 004900F0    dec         dword ptr [ebp-0B94]
 004900F6    lea         eax,[ebp-5BC]
 004900FC    mov         edx,2
 00490101    call        0067DCA0
 00490106    mov         al,1
 00490108    push        eax
 00490109    dec         dword ptr [ebp-0B94]
 0049010F    lea         eax,[ebp-4]
 00490112    mov         edx,2
 00490117    call        0067DCA0
 0049011C    pop         eax
 0049011D    mov         edx,dword ptr [ebp-0BB0]
 00490123    mov         dword ptr fs:[0],edx
>0049012A    jmp         00496D77
 0049012F    mov         word ptr [ebp-0BA0],0BA8
 00490138    mov         edx,6B5D24
 0049013D    lea         eax,[ebp-5C4]
 00490143    call        0067DAB4
 00490148    inc         dword ptr [ebp-0B94]
 0049014E    mov         edx,dword ptr [eax]
 00490150    mov         eax,dword ptr [ebp-0BB4]
 00490156    mov         eax,dword ptr [eax+22]
 00490159    call        SameText
 0049015E    push        eax
 0049015F    dec         dword ptr [ebp-0B94]
 00490165    lea         eax,[ebp-5C4]
 0049016B    mov         edx,2
 00490170    call        0067DCA0
 00490175    pop         ecx
 00490176    test        cl,cl
>00490178    je          004902A6
 0049017E    mov         eax,dword ptr [ebp-0BB4]
 00490184    mov         byte ptr [eax+5],28
 00490188    push        4
 0049018A    mov         word ptr [ebp-0BA0],0BB4
 00490193    mov         edx,6B5D31
 00490198    lea         eax,[ebp-5C8]
 0049019E    call        0067DAB4
 004901A3    inc         dword ptr [ebp-0B94]
 004901A9    push        dword ptr [eax]
 004901AB    mov         edx,6B5D33
 004901B0    lea         eax,[ebp-5CC]
 004901B6    call        0067DAB4
 004901BB    inc         dword ptr [ebp-0B94]
 004901C1    push        dword ptr [eax]
 004901C3    xor         ecx,ecx
 004901C5    mov         dl,22
 004901C7    mov         eax,dword ptr [ebp-0BB4]
 004901CD    mov         eax,dword ptr [eax+1E]
 004901D0    call        00483A34
 004901D5    dec         dword ptr [ebp-0B94]
 004901DB    lea         eax,[ebp-5CC]
 004901E1    mov         edx,2
 004901E6    call        0067DCA0
 004901EB    dec         dword ptr [ebp-0B94]
 004901F1    lea         eax,[ebp-5C8]
 004901F7    mov         edx,2
 004901FC    call        0067DCA0
 00490201    push        4
 00490203    mov         word ptr [ebp-0BA0],0BC0
 0049020C    mov         edx,6B5D3C
 00490211    lea         eax,[ebp-5D0]
 00490217    call        0067DAB4
 0049021C    inc         dword ptr [ebp-0B94]
 00490222    push        dword ptr [eax]
 00490224    mov         edx,6B5D3E
 00490229    lea         eax,[ebp-5D4]
 0049022F    call        0067DAB4
 00490234    inc         dword ptr [ebp-0B94]
 0049023A    push        dword ptr [eax]
 0049023C    mov         ecx,1
 00490241    mov         dl,22
 00490243    mov         eax,dword ptr [ebp-0BB4]
 00490249    mov         eax,dword ptr [eax+1E]
 0049024C    call        00483A34
 00490251    dec         dword ptr [ebp-0B94]
 00490257    lea         eax,[ebp-5D4]
 0049025D    mov         edx,2
 00490262    call        0067DCA0
 00490267    dec         dword ptr [ebp-0B94]
 0049026D    lea         eax,[ebp-5D0]
 00490273    mov         edx,2
 00490278    call        0067DCA0
 0049027D    mov         al,1
 0049027F    push        eax
 00490280    dec         dword ptr [ebp-0B94]
 00490286    lea         eax,[ebp-4]
 00490289    mov         edx,2
 0049028E    call        0067DCA0
 00490293    pop         eax
 00490294    mov         edx,dword ptr [ebp-0BB0]
 0049029A    mov         dword ptr fs:[0],edx
>004902A1    jmp         00496D77
 004902A6    mov         word ptr [ebp-0BA0],0BCC
 004902AF    mov         edx,6B5D4C
 004902B4    lea         eax,[ebp-5D8]
 004902BA    call        0067DAB4
 004902BF    inc         dword ptr [ebp-0B94]
 004902C5    mov         edx,dword ptr [eax]
 004902C7    mov         eax,dword ptr [ebp-0BB4]
 004902CD    mov         eax,dword ptr [eax+22]
 004902D0    call        SameText
 004902D5    push        eax
 004902D6    dec         dword ptr [ebp-0B94]
 004902DC    lea         eax,[ebp-5D8]
 004902E2    mov         edx,2
 004902E7    call        0067DCA0
 004902EC    pop         ecx
 004902ED    test        cl,cl
>004902EF    je          00490499
 004902F5    mov         eax,dword ptr [ebp-0BB4]
 004902FB    mov         byte ptr [eax+5],28
 004902FF    push        4
 00490301    mov         word ptr [ebp-0BA0],0BD8
 0049030A    mov         edx,6B5D5A
 0049030F    lea         eax,[ebp-5DC]
 00490315    call        0067DAB4
 0049031A    inc         dword ptr [ebp-0B94]
 00490320    push        dword ptr [eax]
 00490322    mov         edx,6B5D5C
 00490327    lea         eax,[ebp-5E0]
 0049032D    call        0067DAB4
 00490332    inc         dword ptr [ebp-0B94]
 00490338    push        dword ptr [eax]
 0049033A    xor         ecx,ecx
 0049033C    mov         dl,22
 0049033E    mov         eax,dword ptr [ebp-0BB4]
 00490344    mov         eax,dword ptr [eax+1E]
 00490347    call        00483A34
 0049034C    dec         dword ptr [ebp-0B94]
 00490352    lea         eax,[ebp-5E0]
 00490358    mov         edx,2
 0049035D    call        0067DCA0
 00490362    dec         dword ptr [ebp-0B94]
 00490368    lea         eax,[ebp-5DC]
 0049036E    mov         edx,2
 00490373    call        0067DCA0
 00490378    push        4
 0049037A    mov         word ptr [ebp-0BA0],0BE4
 00490383    mov         edx,6B5D65
 00490388    lea         eax,[ebp-5E4]
 0049038E    call        0067DAB4
 00490393    inc         dword ptr [ebp-0B94]
 00490399    push        dword ptr [eax]
 0049039B    mov         edx,6B5D67
 004903A0    lea         eax,[ebp-5E8]
 004903A6    call        0067DAB4
 004903AB    inc         dword ptr [ebp-0B94]
 004903B1    push        dword ptr [eax]
 004903B3    mov         ecx,1
 004903B8    mov         dl,21
 004903BA    mov         eax,dword ptr [ebp-0BB4]
 004903C0    mov         eax,dword ptr [eax+1E]
 004903C3    call        00483A34
 004903C8    dec         dword ptr [ebp-0B94]
 004903CE    lea         eax,[ebp-5E8]
 004903D4    mov         edx,2
 004903D9    call        0067DCA0
 004903DE    dec         dword ptr [ebp-0B94]
 004903E4    lea         eax,[ebp-5E4]
 004903EA    mov         edx,2
 004903EF    call        0067DCA0
 004903F4    push        4
 004903F6    mov         word ptr [ebp-0BA0],0BF0
 004903FF    mov         edx,6B5D71
 00490404    lea         eax,[ebp-5EC]
 0049040A    call        0067DAB4
 0049040F    inc         dword ptr [ebp-0B94]
 00490415    push        dword ptr [eax]
 00490417    mov         edx,6B5D7A
 0049041C    lea         eax,[ebp-5F0]
 00490422    call        0067DAB4
 00490427    inc         dword ptr [ebp-0B94]
 0049042D    push        dword ptr [eax]
 0049042F    mov         ecx,2
 00490434    mov         dl,21
 00490436    mov         eax,dword ptr [ebp-0BB4]
 0049043C    mov         eax,dword ptr [eax+1E]
 0049043F    call        00483A34
 00490444    dec         dword ptr [ebp-0B94]
 0049044A    lea         eax,[ebp-5F0]
 00490450    mov         edx,2
 00490455    call        0067DCA0
 0049045A    dec         dword ptr [ebp-0B94]
 00490460    lea         eax,[ebp-5EC]
 00490466    mov         edx,2
 0049046B    call        0067DCA0
 00490470    mov         al,1
 00490472    push        eax
 00490473    dec         dword ptr [ebp-0B94]
 00490479    lea         eax,[ebp-4]
 0049047C    mov         edx,2
 00490481    call        0067DCA0
 00490486    pop         eax
 00490487    mov         edx,dword ptr [ebp-0BB0]
 0049048D    mov         dword ptr fs:[0],edx
>00490494    jmp         00496D77
 00490499    mov         word ptr [ebp-0BA0],0BFC
 004904A2    mov         edx,6B5D82
 004904A7    lea         eax,[ebp-5F4]
 004904AD    call        0067DAB4
 004904B2    inc         dword ptr [ebp-0B94]
 004904B8    mov         edx,dword ptr [eax]
 004904BA    mov         eax,dword ptr [ebp-0BB4]
 004904C0    mov         eax,dword ptr [eax+22]
 004904C3    call        SameText
 004904C8    push        eax
 004904C9    dec         dword ptr [ebp-0B94]
 004904CF    lea         eax,[ebp-5F4]
 004904D5    mov         edx,2
 004904DA    call        0067DCA0
 004904DF    pop         ecx
 004904E0    test        cl,cl
>004904E2    je          004905DD
 004904E8    mov         eax,dword ptr [ebp-0BB4]
 004904EE    mov         byte ptr [eax+5],29
 004904F2    mov         word ptr [ebp-0BA0],0C08
 004904FB    mov         edx,6B5D8D
 00490500    lea         eax,[ebp-5F8]
 00490506    call        0067DAB4
 0049050B    inc         dword ptr [ebp-0B94]
 00490511    lea         edx,[ebp-5F8]
 00490517    mov         eax,dword ptr [ebp-0BB4]
 0049051D    add         eax,0A
 00490520    call        0067DCD0
 00490525    dec         dword ptr [ebp-0B94]
 0049052B    lea         eax,[ebp-5F8]
 00490531    mov         edx,2
 00490536    call        0067DCA0
 0049053B    push        4
 0049053D    mov         word ptr [ebp-0BA0],0C14
 00490546    mov         edx,6B5D96
 0049054B    lea         eax,[ebp-5FC]
 00490551    call        0067DAB4
 00490556    inc         dword ptr [ebp-0B94]
 0049055C    push        dword ptr [eax]
 0049055E    mov         edx,6B5D98
 00490563    lea         eax,[ebp-600]
 00490569    call        0067DAB4
 0049056E    inc         dword ptr [ebp-0B94]
 00490574    push        dword ptr [eax]
 00490576    xor         ecx,ecx
 00490578    mov         dl,22
 0049057A    mov         eax,dword ptr [ebp-0BB4]
 00490580    mov         eax,dword ptr [eax+1E]
 00490583    call        00483A34
 00490588    dec         dword ptr [ebp-0B94]
 0049058E    lea         eax,[ebp-600]
 00490594    mov         edx,2
 00490599    call        0067DCA0
 0049059E    dec         dword ptr [ebp-0B94]
 004905A4    lea         eax,[ebp-5FC]
 004905AA    mov         edx,2
 004905AF    call        0067DCA0
 004905B4    mov         al,1
 004905B6    push        eax
 004905B7    dec         dword ptr [ebp-0B94]
 004905BD    lea         eax,[ebp-4]
 004905C0    mov         edx,2
 004905C5    call        0067DCA0
 004905CA    pop         eax
 004905CB    mov         edx,dword ptr [ebp-0BB0]
 004905D1    mov         dword ptr fs:[0],edx
>004905D8    jmp         00496D77
 004905DD    mov         word ptr [ebp-0BA0],0C20
 004905E6    mov         edx,6B5DA1
 004905EB    lea         eax,[ebp-604]
 004905F1    call        0067DAB4
 004905F6    inc         dword ptr [ebp-0B94]
 004905FC    mov         edx,dword ptr [eax]
 004905FE    mov         eax,dword ptr [ebp-0BB4]
 00490604    mov         eax,dword ptr [eax+22]
 00490607    call        SameText
 0049060C    push        eax
 0049060D    dec         dword ptr [ebp-0B94]
 00490613    lea         eax,[ebp-604]
 00490619    mov         edx,2
 0049061E    call        0067DCA0
 00490623    pop         ecx
 00490624    test        cl,cl
>00490626    je          004906CE
 0049062C    push        4
 0049062E    mov         word ptr [ebp-0BA0],0C2C
 00490637    mov         edx,6B5DAA
 0049063C    lea         eax,[ebp-608]
 00490642    call        0067DAB4
 00490647    inc         dword ptr [ebp-0B94]
 0049064D    push        dword ptr [eax]
 0049064F    mov         edx,6B5DAC
 00490654    lea         eax,[ebp-60C]
 0049065A    call        0067DAB4
 0049065F    inc         dword ptr [ebp-0B94]
 00490665    push        dword ptr [eax]
 00490667    xor         ecx,ecx
 00490669    mov         dl,22
 0049066B    mov         eax,dword ptr [ebp-0BB4]
 00490671    mov         eax,dword ptr [eax+1E]
 00490674    call        00483A34
 00490679    dec         dword ptr [ebp-0B94]
 0049067F    lea         eax,[ebp-60C]
 00490685    mov         edx,2
 0049068A    call        0067DCA0
 0049068F    dec         dword ptr [ebp-0B94]
 00490695    lea         eax,[ebp-608]
 0049069B    mov         edx,2
 004906A0    call        0067DCA0
 004906A5    mov         al,1
 004906A7    push        eax
 004906A8    dec         dword ptr [ebp-0B94]
 004906AE    lea         eax,[ebp-4]
 004906B1    mov         edx,2
 004906B6    call        0067DCA0
 004906BB    pop         eax
 004906BC    mov         edx,dword ptr [ebp-0BB0]
 004906C2    mov         dword ptr fs:[0],edx
>004906C9    jmp         00496D77
 004906CE    mov         word ptr [ebp-0BA0],0C38
 004906D7    mov         edx,6B5DB5
 004906DC    lea         eax,[ebp-610]
 004906E2    call        0067DAB4
 004906E7    inc         dword ptr [ebp-0B94]
 004906ED    mov         edx,dword ptr [eax]
 004906EF    mov         eax,dword ptr [ebp-0BB4]
 004906F5    mov         eax,dword ptr [eax+22]
 004906F8    call        SameText
 004906FD    push        eax
 004906FE    dec         dword ptr [ebp-0B94]
 00490704    lea         eax,[ebp-610]
 0049070A    mov         edx,2
 0049070F    call        0067DCA0
 00490714    pop         ecx
 00490715    test        cl,cl
>00490717    je          004907C9
 0049071D    mov         eax,dword ptr [ebp-0BB4]
 00490723    mov         byte ptr [eax+5],28
 00490727    push        4
 00490729    mov         word ptr [ebp-0BA0],0C44
 00490732    mov         edx,6B5DBD
 00490737    lea         eax,[ebp-614]
 0049073D    call        0067DAB4
 00490742    inc         dword ptr [ebp-0B94]
 00490748    push        dword ptr [eax]
 0049074A    mov         edx,6B5DBF
 0049074F    lea         eax,[ebp-618]
 00490755    call        0067DAB4
 0049075A    inc         dword ptr [ebp-0B94]
 00490760    push        dword ptr [eax]
 00490762    xor         ecx,ecx
 00490764    mov         dl,22
 00490766    mov         eax,dword ptr [ebp-0BB4]
 0049076C    mov         eax,dword ptr [eax+1E]
 0049076F    call        00483A34
 00490774    dec         dword ptr [ebp-0B94]
 0049077A    lea         eax,[ebp-618]
 00490780    mov         edx,2
 00490785    call        0067DCA0
 0049078A    dec         dword ptr [ebp-0B94]
 00490790    lea         eax,[ebp-614]
 00490796    mov         edx,2
 0049079B    call        0067DCA0
 004907A0    mov         al,1
 004907A2    push        eax
 004907A3    dec         dword ptr [ebp-0B94]
 004907A9    lea         eax,[ebp-4]
 004907AC    mov         edx,2
 004907B1    call        0067DCA0
 004907B6    pop         eax
 004907B7    mov         edx,dword ptr [ebp-0BB0]
 004907BD    mov         dword ptr fs:[0],edx
>004907C4    jmp         00496D77
 004907C9    mov         word ptr [ebp-0BA0],0C50
 004907D2    mov         edx,6B5DC8
 004907D7    lea         eax,[ebp-61C]
 004907DD    call        0067DAB4
 004907E2    inc         dword ptr [ebp-0B94]
 004907E8    mov         edx,dword ptr [eax]
 004907EA    mov         eax,dword ptr [ebp-0BB4]
 004907F0    mov         eax,dword ptr [eax+22]
 004907F3    call        SameText
 004907F8    push        eax
 004907F9    dec         dword ptr [ebp-0B94]
 004907FF    lea         eax,[ebp-61C]
 00490805    mov         edx,2
 0049080A    call        0067DCA0
 0049080F    pop         ecx
 00490810    test        cl,cl
>00490812    je          00490940
 00490818    mov         eax,dword ptr [ebp-0BB4]
 0049081E    mov         byte ptr [eax+5],28
 00490822    push        4
 00490824    mov         word ptr [ebp-0BA0],0C5C
 0049082D    mov         edx,6B5DD0
 00490832    lea         eax,[ebp-620]
 00490838    call        0067DAB4
 0049083D    inc         dword ptr [ebp-0B94]
 00490843    push        dword ptr [eax]
 00490845    mov         edx,6B5DD2
 0049084A    lea         eax,[ebp-624]
 00490850    call        0067DAB4
 00490855    inc         dword ptr [ebp-0B94]
 0049085B    push        dword ptr [eax]
 0049085D    xor         ecx,ecx
 0049085F    mov         dl,22
 00490861    mov         eax,dword ptr [ebp-0BB4]
 00490867    mov         eax,dword ptr [eax+1E]
 0049086A    call        00483A34
 0049086F    dec         dword ptr [ebp-0B94]
 00490875    lea         eax,[ebp-624]
 0049087B    mov         edx,2
 00490880    call        0067DCA0
 00490885    dec         dword ptr [ebp-0B94]
 0049088B    lea         eax,[ebp-620]
 00490891    mov         edx,2
 00490896    call        0067DCA0
 0049089B    push        4
 0049089D    mov         word ptr [ebp-0BA0],0C68
 004908A6    mov         edx,6B5DDB
 004908AB    lea         eax,[ebp-628]
 004908B1    call        0067DAB4
 004908B6    inc         dword ptr [ebp-0B94]
 004908BC    push        dword ptr [eax]
 004908BE    mov         edx,6B5DE3
 004908C3    lea         eax,[ebp-62C]
 004908C9    call        0067DAB4
 004908CE    inc         dword ptr [ebp-0B94]
 004908D4    push        dword ptr [eax]
 004908D6    mov         ecx,1
 004908DB    mov         dl,21
 004908DD    mov         eax,dword ptr [ebp-0BB4]
 004908E3    mov         eax,dword ptr [eax+1E]
 004908E6    call        00483A34
 004908EB    dec         dword ptr [ebp-0B94]
 004908F1    lea         eax,[ebp-62C]
 004908F7    mov         edx,2
 004908FC    call        0067DCA0
 00490901    dec         dword ptr [ebp-0B94]
 00490907    lea         eax,[ebp-628]
 0049090D    mov         edx,2
 00490912    call        0067DCA0
 00490917    mov         al,1
 00490919    push        eax
 0049091A    dec         dword ptr [ebp-0B94]
 00490920    lea         eax,[ebp-4]
 00490923    mov         edx,2
 00490928    call        0067DCA0
 0049092D    pop         eax
 0049092E    mov         edx,dword ptr [ebp-0BB0]
 00490934    mov         dword ptr fs:[0],edx
>0049093B    jmp         00496D77
 00490940    mov         word ptr [ebp-0BA0],0C74
 00490949    mov         edx,6B5DE9
 0049094E    lea         eax,[ebp-630]
 00490954    call        0067DAB4
 00490959    inc         dword ptr [ebp-0B94]
 0049095F    mov         edx,dword ptr [eax]
 00490961    mov         eax,dword ptr [ebp-0BB4]
 00490967    mov         eax,dword ptr [eax+22]
 0049096A    call        SameText
 0049096F    push        eax
 00490970    dec         dword ptr [ebp-0B94]
 00490976    lea         eax,[ebp-630]
 0049097C    mov         edx,2
 00490981    call        0067DCA0
 00490986    pop         ecx
 00490987    test        cl,cl
>00490989    je          00490B00
 0049098F    mov         eax,dword ptr [ebp-0BB4]
 00490995    mov         byte ptr [eax+5],29
 00490999    mov         word ptr [ebp-0BA0],0C80
 004909A2    mov         edx,6B5DF4
 004909A7    lea         eax,[ebp-634]
 004909AD    call        0067DAB4
 004909B2    inc         dword ptr [ebp-0B94]
 004909B8    lea         edx,[ebp-634]
 004909BE    mov         eax,dword ptr [ebp-0BB4]
 004909C4    add         eax,0A
 004909C7    call        0067DCD0
 004909CC    dec         dword ptr [ebp-0B94]
 004909D2    lea         eax,[ebp-634]
 004909D8    mov         edx,2
 004909DD    call        0067DCA0
 004909E2    push        4
 004909E4    mov         word ptr [ebp-0BA0],0C8C
 004909ED    mov         edx,6B5DFC
 004909F2    lea         eax,[ebp-638]
 004909F8    call        0067DAB4
 004909FD    inc         dword ptr [ebp-0B94]
 00490A03    push        dword ptr [eax]
 00490A05    mov         edx,6B5DFE
 00490A0A    lea         eax,[ebp-63C]
 00490A10    call        0067DAB4
 00490A15    inc         dword ptr [ebp-0B94]
 00490A1B    push        dword ptr [eax]
 00490A1D    xor         ecx,ecx
 00490A1F    mov         dl,22
 00490A21    mov         eax,dword ptr [ebp-0BB4]
 00490A27    mov         eax,dword ptr [eax+1E]
 00490A2A    call        00483A34
 00490A2F    dec         dword ptr [ebp-0B94]
 00490A35    lea         eax,[ebp-63C]
 00490A3B    mov         edx,2
 00490A40    call        0067DCA0
 00490A45    dec         dword ptr [ebp-0B94]
 00490A4B    lea         eax,[ebp-638]
 00490A51    mov         edx,2
 00490A56    call        0067DCA0
 00490A5B    push        4
 00490A5D    mov         word ptr [ebp-0BA0],0C98
 00490A66    mov         edx,6B5E07
 00490A6B    lea         eax,[ebp-640]
 00490A71    call        0067DAB4
 00490A76    inc         dword ptr [ebp-0B94]
 00490A7C    push        dword ptr [eax]
 00490A7E    mov         edx,6B5E0F
 00490A83    lea         eax,[ebp-644]
 00490A89    call        0067DAB4
 00490A8E    inc         dword ptr [ebp-0B94]
 00490A94    push        dword ptr [eax]
 00490A96    mov         ecx,1
 00490A9B    mov         dl,21
 00490A9D    mov         eax,dword ptr [ebp-0BB4]
 00490AA3    mov         eax,dword ptr [eax+1E]
 00490AA6    call        00483A34
 00490AAB    dec         dword ptr [ebp-0B94]
 00490AB1    lea         eax,[ebp-644]
 00490AB7    mov         edx,2
 00490ABC    call        0067DCA0
 00490AC1    dec         dword ptr [ebp-0B94]
 00490AC7    lea         eax,[ebp-640]
 00490ACD    mov         edx,2
 00490AD2    call        0067DCA0
 00490AD7    mov         al,1
 00490AD9    push        eax
 00490ADA    dec         dword ptr [ebp-0B94]
 00490AE0    lea         eax,[ebp-4]
 00490AE3    mov         edx,2
 00490AE8    call        0067DCA0
 00490AED    pop         eax
 00490AEE    mov         edx,dword ptr [ebp-0BB0]
 00490AF4    mov         dword ptr fs:[0],edx
>00490AFB    jmp         00496D77
 00490B00    mov         word ptr [ebp-0BA0],0CA4
 00490B09    mov         edx,6B5E17
 00490B0E    lea         eax,[ebp-648]
 00490B14    call        0067DAB4
 00490B19    inc         dword ptr [ebp-0B94]
 00490B1F    mov         edx,dword ptr [eax]
 00490B21    mov         eax,dword ptr [ebp-0BB4]
 00490B27    mov         eax,dword ptr [eax+22]
 00490B2A    call        SameText
 00490B2F    push        eax
 00490B30    dec         dword ptr [ebp-0B94]
 00490B36    lea         eax,[ebp-648]
 00490B3C    mov         edx,2
 00490B41    call        0067DCA0
 00490B46    pop         ecx
 00490B47    test        cl,cl
>00490B49    je          00490C44
 00490B4F    mov         eax,dword ptr [ebp-0BB4]
 00490B55    mov         byte ptr [eax+5],29
 00490B59    mov         word ptr [ebp-0BA0],0CB0
 00490B62    mov         edx,6B5E22
 00490B67    lea         eax,[ebp-64C]
 00490B6D    call        0067DAB4
 00490B72    inc         dword ptr [ebp-0B94]
 00490B78    lea         edx,[ebp-64C]
 00490B7E    mov         eax,dword ptr [ebp-0BB4]
 00490B84    add         eax,0A
 00490B87    call        0067DCD0
 00490B8C    dec         dword ptr [ebp-0B94]
 00490B92    lea         eax,[ebp-64C]
 00490B98    mov         edx,2
 00490B9D    call        0067DCA0
 00490BA2    push        4
 00490BA4    mov         word ptr [ebp-0BA0],0CBC
 00490BAD    mov         edx,6B5E2A
 00490BB2    lea         eax,[ebp-650]
 00490BB8    call        0067DAB4
 00490BBD    inc         dword ptr [ebp-0B94]
 00490BC3    push        dword ptr [eax]
 00490BC5    mov         edx,6B5E2C
 00490BCA    lea         eax,[ebp-654]
 00490BD0    call        0067DAB4
 00490BD5    inc         dword ptr [ebp-0B94]
 00490BDB    push        dword ptr [eax]
 00490BDD    xor         ecx,ecx
 00490BDF    mov         dl,22
 00490BE1    mov         eax,dword ptr [ebp-0BB4]
 00490BE7    mov         eax,dword ptr [eax+1E]
 00490BEA    call        00483A34
 00490BEF    dec         dword ptr [ebp-0B94]
 00490BF5    lea         eax,[ebp-654]
 00490BFB    mov         edx,2
 00490C00    call        0067DCA0
 00490C05    dec         dword ptr [ebp-0B94]
 00490C0B    lea         eax,[ebp-650]
 00490C11    mov         edx,2
 00490C16    call        0067DCA0
 00490C1B    mov         al,1
 00490C1D    push        eax
 00490C1E    dec         dword ptr [ebp-0B94]
 00490C24    lea         eax,[ebp-4]
 00490C27    mov         edx,2
 00490C2C    call        0067DCA0
 00490C31    pop         eax
 00490C32    mov         edx,dword ptr [ebp-0BB0]
 00490C38    mov         dword ptr fs:[0],edx
>00490C3F    jmp         00496D77
 00490C44    mov         word ptr [ebp-0BA0],0CC8
 00490C4D    mov         edx,6B5E35
 00490C52    lea         eax,[ebp-658]
 00490C58    call        0067DAB4
 00490C5D    inc         dword ptr [ebp-0B94]
 00490C63    mov         edx,dword ptr [eax]
 00490C65    mov         eax,dword ptr [ebp-0BB4]
 00490C6B    mov         eax,dword ptr [eax+22]
 00490C6E    call        SameText
 00490C73    push        eax
 00490C74    dec         dword ptr [ebp-0B94]
 00490C7A    lea         eax,[ebp-658]
 00490C80    mov         edx,2
 00490C85    call        0067DCA0
 00490C8A    pop         ecx
 00490C8B    test        cl,cl
>00490C8D    je          00490E04
 00490C93    mov         eax,dword ptr [ebp-0BB4]
 00490C99    mov         byte ptr [eax+5],29
 00490C9D    mov         word ptr [ebp-0BA0],0CD4
 00490CA6    mov         edx,6B5E41
 00490CAB    lea         eax,[ebp-65C]
 00490CB1    call        0067DAB4
 00490CB6    inc         dword ptr [ebp-0B94]
 00490CBC    lea         edx,[ebp-65C]
 00490CC2    mov         eax,dword ptr [ebp-0BB4]
 00490CC8    add         eax,0A
 00490CCB    call        0067DCD0
 00490CD0    dec         dword ptr [ebp-0B94]
 00490CD6    lea         eax,[ebp-65C]
 00490CDC    mov         edx,2
 00490CE1    call        0067DCA0
 00490CE6    push        4
 00490CE8    mov         word ptr [ebp-0BA0],0CE0
 00490CF1    mov         edx,6B5E49
 00490CF6    lea         eax,[ebp-660]
 00490CFC    call        0067DAB4
 00490D01    inc         dword ptr [ebp-0B94]
 00490D07    push        dword ptr [eax]
 00490D09    mov         edx,6B5E4B
 00490D0E    lea         eax,[ebp-664]
 00490D14    call        0067DAB4
 00490D19    inc         dword ptr [ebp-0B94]
 00490D1F    push        dword ptr [eax]
 00490D21    xor         ecx,ecx
 00490D23    mov         dl,22
 00490D25    mov         eax,dword ptr [ebp-0BB4]
 00490D2B    mov         eax,dword ptr [eax+1E]
 00490D2E    call        00483A34
 00490D33    dec         dword ptr [ebp-0B94]
 00490D39    lea         eax,[ebp-664]
 00490D3F    mov         edx,2
 00490D44    call        0067DCA0
 00490D49    dec         dword ptr [ebp-0B94]
 00490D4F    lea         eax,[ebp-660]
 00490D55    mov         edx,2
 00490D5A    call        0067DCA0
 00490D5F    push        4
 00490D61    mov         word ptr [ebp-0BA0],0CEC
 00490D6A    mov         edx,6B5E54
 00490D6F    lea         eax,[ebp-668]
 00490D75    call        0067DAB4
 00490D7A    inc         dword ptr [ebp-0B94]
 00490D80    push        dword ptr [eax]
 00490D82    mov         edx,6B5E5C
 00490D87    lea         eax,[ebp-66C]
 00490D8D    call        0067DAB4
 00490D92    inc         dword ptr [ebp-0B94]
 00490D98    push        dword ptr [eax]
 00490D9A    mov         ecx,1
 00490D9F    mov         dl,21
 00490DA1    mov         eax,dword ptr [ebp-0BB4]
 00490DA7    mov         eax,dword ptr [eax+1E]
 00490DAA    call        00483A34
 00490DAF    dec         dword ptr [ebp-0B94]
 00490DB5    lea         eax,[ebp-66C]
 00490DBB    mov         edx,2
 00490DC0    call        0067DCA0
 00490DC5    dec         dword ptr [ebp-0B94]
 00490DCB    lea         eax,[ebp-668]
 00490DD1    mov         edx,2
 00490DD6    call        0067DCA0
 00490DDB    mov         al,1
 00490DDD    push        eax
 00490DDE    dec         dword ptr [ebp-0B94]
 00490DE4    lea         eax,[ebp-4]
 00490DE7    mov         edx,2
 00490DEC    call        0067DCA0
 00490DF1    pop         eax
 00490DF2    mov         edx,dword ptr [ebp-0BB0]
 00490DF8    mov         dword ptr fs:[0],edx
>00490DFF    jmp         00496D77
 00490E04    mov         word ptr [ebp-0BA0],0CF8
 00490E0D    mov         edx,6B5E64
 00490E12    lea         eax,[ebp-670]
 00490E18    call        0067DAB4
 00490E1D    inc         dword ptr [ebp-0B94]
 00490E23    mov         edx,dword ptr [eax]
 00490E25    mov         eax,dword ptr [ebp-0BB4]
 00490E2B    mov         eax,dword ptr [eax+22]
 00490E2E    call        SameText
 00490E33    push        eax
 00490E34    dec         dword ptr [ebp-0B94]
 00490E3A    lea         eax,[ebp-670]
 00490E40    mov         edx,2
 00490E45    call        0067DCA0
 00490E4A    pop         ecx
 00490E4B    test        cl,cl
>00490E4D    je          00490F48
 00490E53    mov         eax,dword ptr [ebp-0BB4]
 00490E59    mov         byte ptr [eax+5],29
 00490E5D    mov         word ptr [ebp-0BA0],0D04
 00490E66    mov         edx,6B5E70
 00490E6B    lea         eax,[ebp-674]
 00490E71    call        0067DAB4
 00490E76    inc         dword ptr [ebp-0B94]
 00490E7C    lea         edx,[ebp-674]
 00490E82    mov         eax,dword ptr [ebp-0BB4]
 00490E88    add         eax,0A
 00490E8B    call        0067DCD0
 00490E90    dec         dword ptr [ebp-0B94]
 00490E96    lea         eax,[ebp-674]
 00490E9C    mov         edx,2
 00490EA1    call        0067DCA0
 00490EA6    push        4
 00490EA8    mov         word ptr [ebp-0BA0],0D10
 00490EB1    mov         edx,6B5E78
 00490EB6    lea         eax,[ebp-678]
 00490EBC    call        0067DAB4
 00490EC1    inc         dword ptr [ebp-0B94]
 00490EC7    push        dword ptr [eax]
 00490EC9    mov         edx,6B5E7A
 00490ECE    lea         eax,[ebp-67C]
 00490ED4    call        0067DAB4
 00490ED9    inc         dword ptr [ebp-0B94]
 00490EDF    push        dword ptr [eax]
 00490EE1    xor         ecx,ecx
 00490EE3    mov         dl,22
 00490EE5    mov         eax,dword ptr [ebp-0BB4]
 00490EEB    mov         eax,dword ptr [eax+1E]
 00490EEE    call        00483A34
 00490EF3    dec         dword ptr [ebp-0B94]
 00490EF9    lea         eax,[ebp-67C]
 00490EFF    mov         edx,2
 00490F04    call        0067DCA0
 00490F09    dec         dword ptr [ebp-0B94]
 00490F0F    lea         eax,[ebp-678]
 00490F15    mov         edx,2
 00490F1A    call        0067DCA0
 00490F1F    mov         al,1
 00490F21    push        eax
 00490F22    dec         dword ptr [ebp-0B94]
 00490F28    lea         eax,[ebp-4]
 00490F2B    mov         edx,2
 00490F30    call        0067DCA0
 00490F35    pop         eax
 00490F36    mov         edx,dword ptr [ebp-0BB0]
 00490F3C    mov         dword ptr fs:[0],edx
>00490F43    jmp         00496D77
 00490F48    mov         word ptr [ebp-0BA0],0D1C
 00490F51    mov         edx,6B5E83
 00490F56    lea         eax,[ebp-680]
 00490F5C    call        0067DAB4
 00490F61    inc         dword ptr [ebp-0B94]
 00490F67    mov         edx,dword ptr [eax]
 00490F69    mov         eax,dword ptr [ebp-0BB4]
 00490F6F    mov         eax,dword ptr [eax+22]
 00490F72    call        SameText
 00490F77    push        eax
 00490F78    dec         dword ptr [ebp-0B94]
 00490F7E    lea         eax,[ebp-680]
 00490F84    mov         edx,2
 00490F89    call        0067DCA0
 00490F8E    pop         ecx
 00490F8F    test        cl,cl
>00490F91    je          004910BF
 00490F97    mov         eax,dword ptr [ebp-0BB4]
 00490F9D    mov         byte ptr [eax+5],28
 00490FA1    push        4
 00490FA3    mov         word ptr [ebp-0BA0],0D28
 00490FAC    mov         edx,6B5E89
 00490FB1    lea         eax,[ebp-684]
 00490FB7    call        0067DAB4
 00490FBC    inc         dword ptr [ebp-0B94]
 00490FC2    push        dword ptr [eax]
 00490FC4    mov         edx,6B5E8B
 00490FC9    lea         eax,[ebp-688]
 00490FCF    call        0067DAB4
 00490FD4    inc         dword ptr [ebp-0B94]
 00490FDA    push        dword ptr [eax]
 00490FDC    xor         ecx,ecx
 00490FDE    mov         dl,22
 00490FE0    mov         eax,dword ptr [ebp-0BB4]
 00490FE6    mov         eax,dword ptr [eax+1E]
 00490FE9    call        00483A34
 00490FEE    dec         dword ptr [ebp-0B94]
 00490FF4    lea         eax,[ebp-688]
 00490FFA    mov         edx,2
 00490FFF    call        0067DCA0
 00491004    dec         dword ptr [ebp-0B94]
 0049100A    lea         eax,[ebp-684]
 00491010    mov         edx,2
 00491015    call        0067DCA0
 0049101A    push        4
 0049101C    mov         word ptr [ebp-0BA0],0D34
 00491025    mov         edx,6B5E94
 0049102A    lea         eax,[ebp-68C]
 00491030    call        0067DAB4
 00491035    inc         dword ptr [ebp-0B94]
 0049103B    push        dword ptr [eax]
 0049103D    mov         edx,6B5E9B
 00491042    lea         eax,[ebp-690]
 00491048    call        0067DAB4
 0049104D    inc         dword ptr [ebp-0B94]
 00491053    push        dword ptr [eax]
 00491055    mov         ecx,1
 0049105A    mov         dl,21
 0049105C    mov         eax,dword ptr [ebp-0BB4]
 00491062    mov         eax,dword ptr [eax+1E]
 00491065    call        00483A34
 0049106A    dec         dword ptr [ebp-0B94]
 00491070    lea         eax,[ebp-690]
 00491076    mov         edx,2
 0049107B    call        0067DCA0
 00491080    dec         dword ptr [ebp-0B94]
 00491086    lea         eax,[ebp-68C]
 0049108C    mov         edx,2
 00491091    call        0067DCA0
 00491096    mov         al,1
 00491098    push        eax
 00491099    dec         dword ptr [ebp-0B94]
 0049109F    lea         eax,[ebp-4]
 004910A2    mov         edx,2
 004910A7    call        0067DCA0
 004910AC    pop         eax
 004910AD    mov         edx,dword ptr [ebp-0BB0]
 004910B3    mov         dword ptr fs:[0],edx
>004910BA    jmp         00496D77
 004910BF    mov         word ptr [ebp-0BA0],0D40
 004910C8    mov         edx,6B5EA3
 004910CD    lea         eax,[ebp-694]
 004910D3    call        0067DAB4
 004910D8    inc         dword ptr [ebp-0B94]
 004910DE    mov         edx,dword ptr [eax]
 004910E0    mov         eax,dword ptr [ebp-0BB4]
 004910E6    mov         eax,dword ptr [eax+22]
 004910E9    call        SameText
 004910EE    push        eax
 004910EF    dec         dword ptr [ebp-0B94]
 004910F5    lea         eax,[ebp-694]
 004910FB    mov         edx,2
 00491100    call        0067DCA0
 00491105    pop         ecx
 00491106    test        cl,cl
>00491108    je          00491203
 0049110E    mov         eax,dword ptr [ebp-0BB4]
 00491114    mov         byte ptr [eax+5],29
 00491118    mov         word ptr [ebp-0BA0],0D4C
 00491121    mov         edx,6B5EAC
 00491126    lea         eax,[ebp-698]
 0049112C    call        0067DAB4
 00491131    inc         dword ptr [ebp-0B94]
 00491137    lea         edx,[ebp-698]
 0049113D    mov         eax,dword ptr [ebp-0BB4]
 00491143    add         eax,0A
 00491146    call        0067DCD0
 0049114B    dec         dword ptr [ebp-0B94]
 00491151    lea         eax,[ebp-698]
 00491157    mov         edx,2
 0049115C    call        0067DCA0
 00491161    push        4
 00491163    mov         word ptr [ebp-0BA0],0D58
 0049116C    mov         edx,6B5EB4
 00491171    lea         eax,[ebp-69C]
 00491177    call        0067DAB4
 0049117C    inc         dword ptr [ebp-0B94]
 00491182    push        dword ptr [eax]
 00491184    mov         edx,6B5EB6
 00491189    lea         eax,[ebp-6A0]
 0049118F    call        0067DAB4
 00491194    inc         dword ptr [ebp-0B94]
 0049119A    push        dword ptr [eax]
 0049119C    xor         ecx,ecx
 0049119E    mov         dl,22
 004911A0    mov         eax,dword ptr [ebp-0BB4]
 004911A6    mov         eax,dword ptr [eax+1E]
 004911A9    call        00483A34
 004911AE    dec         dword ptr [ebp-0B94]
 004911B4    lea         eax,[ebp-6A0]
 004911BA    mov         edx,2
 004911BF    call        0067DCA0
 004911C4    dec         dword ptr [ebp-0B94]
 004911CA    lea         eax,[ebp-69C]
 004911D0    mov         edx,2
 004911D5    call        0067DCA0
 004911DA    mov         al,1
 004911DC    push        eax
 004911DD    dec         dword ptr [ebp-0B94]
 004911E3    lea         eax,[ebp-4]
 004911E6    mov         edx,2
 004911EB    call        0067DCA0
 004911F0    pop         eax
 004911F1    mov         edx,dword ptr [ebp-0BB0]
 004911F7    mov         dword ptr fs:[0],edx
>004911FE    jmp         00496D77
 00491203    mov         word ptr [ebp-0BA0],0D64
 0049120C    mov         edx,6B5EBF
 00491211    lea         eax,[ebp-6A4]
 00491217    call        0067DAB4
 0049121C    inc         dword ptr [ebp-0B94]
 00491222    mov         edx,dword ptr [eax]
 00491224    mov         eax,dword ptr [ebp-0BB4]
 0049122A    mov         eax,dword ptr [eax+22]
 0049122D    call        SameText
 00491232    push        eax
 00491233    dec         dword ptr [ebp-0B94]
 00491239    lea         eax,[ebp-6A4]
 0049123F    mov         edx,2
 00491244    call        0067DCA0
 00491249    pop         ecx
 0049124A    test        cl,cl
>0049124C    je          00491347
 00491252    mov         eax,dword ptr [ebp-0BB4]
 00491258    mov         byte ptr [eax+5],29
 0049125C    mov         word ptr [ebp-0BA0],0D70
 00491265    mov         edx,6B5EC9
 0049126A    lea         eax,[ebp-6A8]
 00491270    call        0067DAB4
 00491275    inc         dword ptr [ebp-0B94]
 0049127B    lea         edx,[ebp-6A8]
 00491281    mov         eax,dword ptr [ebp-0BB4]
 00491287    add         eax,0A
 0049128A    call        0067DCD0
 0049128F    dec         dword ptr [ebp-0B94]
 00491295    lea         eax,[ebp-6A8]
 0049129B    mov         edx,2
 004912A0    call        0067DCA0
 004912A5    push        4
 004912A7    mov         word ptr [ebp-0BA0],0D7C
 004912B0    mov         edx,6B5ED1
 004912B5    lea         eax,[ebp-6AC]
 004912BB    call        0067DAB4
 004912C0    inc         dword ptr [ebp-0B94]
 004912C6    push        dword ptr [eax]
 004912C8    mov         edx,6B5ED3
 004912CD    lea         eax,[ebp-6B0]
 004912D3    call        0067DAB4
 004912D8    inc         dword ptr [ebp-0B94]
 004912DE    push        dword ptr [eax]
 004912E0    xor         ecx,ecx
 004912E2    mov         dl,22
 004912E4    mov         eax,dword ptr [ebp-0BB4]
 004912EA    mov         eax,dword ptr [eax+1E]
 004912ED    call        00483A34
 004912F2    dec         dword ptr [ebp-0B94]
 004912F8    lea         eax,[ebp-6B0]
 004912FE    mov         edx,2
 00491303    call        0067DCA0
 00491308    dec         dword ptr [ebp-0B94]
 0049130E    lea         eax,[ebp-6AC]
 00491314    mov         edx,2
 00491319    call        0067DCA0
 0049131E    mov         al,1
 00491320    push        eax
 00491321    dec         dword ptr [ebp-0B94]
 00491327    lea         eax,[ebp-4]
 0049132A    mov         edx,2
 0049132F    call        0067DCA0
 00491334    pop         eax
 00491335    mov         edx,dword ptr [ebp-0BB0]
 0049133B    mov         dword ptr fs:[0],edx
>00491342    jmp         00496D77
 00491347    mov         word ptr [ebp-0BA0],0D88
 00491350    mov         edx,6B5EDC
 00491355    lea         eax,[ebp-6B4]
 0049135B    call        0067DAB4
 00491360    inc         dword ptr [ebp-0B94]
 00491366    mov         edx,dword ptr [eax]
 00491368    mov         eax,dword ptr [ebp-0BB4]
 0049136E    mov         eax,dword ptr [eax+22]
 00491371    call        SameText
 00491376    push        eax
 00491377    dec         dword ptr [ebp-0B94]
 0049137D    lea         eax,[ebp-6B4]
 00491383    mov         edx,2
 00491388    call        0067DCA0
 0049138D    pop         ecx
 0049138E    test        cl,cl
>00491390    je          0049153A
 00491396    mov         eax,dword ptr [ebp-0BB4]
 0049139C    mov         byte ptr [eax+5],28
 004913A0    push        4
 004913A2    mov         word ptr [ebp-0BA0],0D94
 004913AB    mov         edx,6B5EE8
 004913B0    lea         eax,[ebp-6B8]
 004913B6    call        0067DAB4
 004913BB    inc         dword ptr [ebp-0B94]
 004913C1    push        dword ptr [eax]
 004913C3    mov         edx,6B5EEA
 004913C8    lea         eax,[ebp-6BC]
 004913CE    call        0067DAB4
 004913D3    inc         dword ptr [ebp-0B94]
 004913D9    push        dword ptr [eax]
 004913DB    xor         ecx,ecx
 004913DD    mov         dl,22
 004913DF    mov         eax,dword ptr [ebp-0BB4]
 004913E5    mov         eax,dword ptr [eax+1E]
 004913E8    call        00483A34
 004913ED    dec         dword ptr [ebp-0B94]
 004913F3    lea         eax,[ebp-6BC]
 004913F9    mov         edx,2
 004913FE    call        0067DCA0
 00491403    dec         dword ptr [ebp-0B94]
 00491409    lea         eax,[ebp-6B8]
 0049140F    mov         edx,2
 00491414    call        0067DCA0
 00491419    push        4
 0049141B    mov         word ptr [ebp-0BA0],0DA0
 00491424    mov         edx,6B5EF3
 00491429    lea         eax,[ebp-6C0]
 0049142F    call        0067DAB4
 00491434    inc         dword ptr [ebp-0B94]
 0049143A    push        dword ptr [eax]
 0049143C    mov         edx,6B5EF5
 00491441    lea         eax,[ebp-6C4]
 00491447    call        0067DAB4
 0049144C    inc         dword ptr [ebp-0B94]
 00491452    push        dword ptr [eax]
 00491454    mov         ecx,1
 00491459    mov         dl,21
 0049145B    mov         eax,dword ptr [ebp-0BB4]
 00491461    mov         eax,dword ptr [eax+1E]
 00491464    call        00483A34
 00491469    dec         dword ptr [ebp-0B94]
 0049146F    lea         eax,[ebp-6C4]
 00491475    mov         edx,2
 0049147A    call        0067DCA0
 0049147F    dec         dword ptr [ebp-0B94]
 00491485    lea         eax,[ebp-6C0]
 0049148B    mov         edx,2
 00491490    call        0067DCA0
 00491495    push        4
 00491497    mov         word ptr [ebp-0BA0],0DAC
 004914A0    mov         edx,6B5EFD
 004914A5    lea         eax,[ebp-6C8]
 004914AB    call        0067DAB4
 004914B0    inc         dword ptr [ebp-0B94]
 004914B6    push        dword ptr [eax]
 004914B8    mov         edx,6B5F02
 004914BD    lea         eax,[ebp-6CC]
 004914C3    call        0067DAB4
 004914C8    inc         dword ptr [ebp-0B94]
 004914CE    push        dword ptr [eax]
 004914D0    mov         ecx,2
 004914D5    mov         dl,21
 004914D7    mov         eax,dword ptr [ebp-0BB4]
 004914DD    mov         eax,dword ptr [eax+1E]
 004914E0    call        00483A34
 004914E5    dec         dword ptr [ebp-0B94]
 004914EB    lea         eax,[ebp-6CC]
 004914F1    mov         edx,2
 004914F6    call        0067DCA0
 004914FB    dec         dword ptr [ebp-0B94]
 00491501    lea         eax,[ebp-6C8]
 00491507    mov         edx,2
 0049150C    call        0067DCA0
 00491511    mov         al,1
 00491513    push        eax
 00491514    dec         dword ptr [ebp-0B94]
 0049151A    lea         eax,[ebp-4]
 0049151D    mov         edx,2
 00491522    call        0067DCA0
 00491527    pop         eax
 00491528    mov         edx,dword ptr [ebp-0BB0]
 0049152E    mov         dword ptr fs:[0],edx
>00491535    jmp         00496D77
 0049153A    mov         word ptr [ebp-0BA0],0DB8
 00491543    mov         edx,6B5F0A
 00491548    lea         eax,[ebp-6D0]
 0049154E    call        0067DAB4
 00491553    inc         dword ptr [ebp-0B94]
 00491559    mov         edx,dword ptr [eax]
 0049155B    mov         eax,dword ptr [ebp-0BB4]
 00491561    mov         eax,dword ptr [eax+22]
 00491564    call        SameText
 00491569    push        eax
 0049156A    dec         dword ptr [ebp-0B94]
 00491570    lea         eax,[ebp-6D0]
 00491576    mov         edx,2
 0049157B    call        0067DCA0
 00491580    pop         ecx
 00491581    test        cl,cl
>00491583    je          00491635
 00491589    mov         eax,dword ptr [ebp-0BB4]
 0049158F    mov         byte ptr [eax+5],28
 00491593    push        4
 00491595    mov         word ptr [ebp-0BA0],0DC4
 0049159E    mov         edx,6B5F14
 004915A3    lea         eax,[ebp-6D4]
 004915A9    call        0067DAB4
 004915AE    inc         dword ptr [ebp-0B94]
 004915B4    push        dword ptr [eax]
 004915B6    mov         edx,6B5F16
 004915BB    lea         eax,[ebp-6D8]
 004915C1    call        0067DAB4
 004915C6    inc         dword ptr [ebp-0B94]
 004915CC    push        dword ptr [eax]
 004915CE    xor         ecx,ecx
 004915D0    mov         dl,22
 004915D2    mov         eax,dword ptr [ebp-0BB4]
 004915D8    mov         eax,dword ptr [eax+1E]
 004915DB    call        00483A34
 004915E0    dec         dword ptr [ebp-0B94]
 004915E6    lea         eax,[ebp-6D8]
 004915EC    mov         edx,2
 004915F1    call        0067DCA0
 004915F6    dec         dword ptr [ebp-0B94]
 004915FC    lea         eax,[ebp-6D4]
 00491602    mov         edx,2
 00491607    call        0067DCA0
 0049160C    mov         al,1
 0049160E    push        eax
 0049160F    dec         dword ptr [ebp-0B94]
 00491615    lea         eax,[ebp-4]
 00491618    mov         edx,2
 0049161D    call        0067DCA0
 00491622    pop         eax
 00491623    mov         edx,dword ptr [ebp-0BB0]
 00491629    mov         dword ptr fs:[0],edx
>00491630    jmp         00496D77
 00491635    mov         word ptr [ebp-0BA0],0DD0
 0049163E    mov         edx,6B5F1F
 00491643    lea         eax,[ebp-6DC]
 00491649    call        0067DAB4
 0049164E    inc         dword ptr [ebp-0B94]
 00491654    mov         edx,dword ptr [eax]
 00491656    mov         eax,dword ptr [ebp-0BB4]
 0049165C    mov         eax,dword ptr [eax+22]
 0049165F    call        SameText
 00491664    push        eax
 00491665    dec         dword ptr [ebp-0B94]
 0049166B    lea         eax,[ebp-6DC]
 00491671    mov         edx,2
 00491676    call        0067DCA0
 0049167B    pop         ecx
 0049167C    test        cl,cl
>0049167E    je          004917AC
 00491684    mov         eax,dword ptr [ebp-0BB4]
 0049168A    mov         byte ptr [eax+5],28
 0049168E    push        4
 00491690    mov         word ptr [ebp-0BA0],0DDC
 00491699    mov         edx,6B5F29
 0049169E    lea         eax,[ebp-6E0]
 004916A4    call        0067DAB4
 004916A9    inc         dword ptr [ebp-0B94]
 004916AF    push        dword ptr [eax]
 004916B1    mov         edx,6B5F2B
 004916B6    lea         eax,[ebp-6E4]
 004916BC    call        0067DAB4
 004916C1    inc         dword ptr [ebp-0B94]
 004916C7    push        dword ptr [eax]
 004916C9    xor         ecx,ecx
 004916CB    mov         dl,22
 004916CD    mov         eax,dword ptr [ebp-0BB4]
 004916D3    mov         eax,dword ptr [eax+1E]
 004916D6    call        00483A34
 004916DB    dec         dword ptr [ebp-0B94]
 004916E1    lea         eax,[ebp-6E4]
 004916E7    mov         edx,2
 004916EC    call        0067DCA0
 004916F1    dec         dword ptr [ebp-0B94]
 004916F7    lea         eax,[ebp-6E0]
 004916FD    mov         edx,2
 00491702    call        0067DCA0
 00491707    push        4
 00491709    mov         word ptr [ebp-0BA0],0DE8
 00491712    mov         edx,6B5F34
 00491717    lea         eax,[ebp-6E8]
 0049171D    call        0067DAB4
 00491722    inc         dword ptr [ebp-0B94]
 00491728    push        dword ptr [eax]
 0049172A    mov         edx,6B5F3B
 0049172F    lea         eax,[ebp-6EC]
 00491735    call        0067DAB4
 0049173A    inc         dword ptr [ebp-0B94]
 00491740    push        dword ptr [eax]
 00491742    mov         ecx,1
 00491747    mov         dl,21
 00491749    mov         eax,dword ptr [ebp-0BB4]
 0049174F    mov         eax,dword ptr [eax+1E]
 00491752    call        00483A34
 00491757    dec         dword ptr [ebp-0B94]
 0049175D    lea         eax,[ebp-6EC]
 00491763    mov         edx,2
 00491768    call        0067DCA0
 0049176D    dec         dword ptr [ebp-0B94]
 00491773    lea         eax,[ebp-6E8]
 00491779    mov         edx,2
 0049177E    call        0067DCA0
 00491783    mov         al,1
 00491785    push        eax
 00491786    dec         dword ptr [ebp-0B94]
 0049178C    lea         eax,[ebp-4]
 0049178F    mov         edx,2
 00491794    call        0067DCA0
 00491799    pop         eax
 0049179A    mov         edx,dword ptr [ebp-0BB0]
 004917A0    mov         dword ptr fs:[0],edx
>004917A7    jmp         00496D77
 004917AC    mov         word ptr [ebp-0BA0],0DF4
 004917B5    mov         edx,6B5F43
 004917BA    lea         eax,[ebp-6F0]
 004917C0    call        0067DAB4
 004917C5    inc         dword ptr [ebp-0B94]
 004917CB    mov         edx,dword ptr [eax]
 004917CD    mov         eax,dword ptr [ebp-0BB4]
 004917D3    mov         eax,dword ptr [eax+22]
 004917D6    call        SameText
 004917DB    push        eax
 004917DC    dec         dword ptr [ebp-0B94]
 004917E2    lea         eax,[ebp-6F0]
 004917E8    mov         edx,2
 004917ED    call        0067DCA0
 004917F2    pop         ecx
 004917F3    test        cl,cl
>004917F5    je          0049199F
 004917FB    mov         eax,dword ptr [ebp-0BB4]
 00491801    mov         byte ptr [eax+5],28
 00491805    push        4
 00491807    mov         word ptr [ebp-0BA0],0E00
 00491810    mov         edx,6B5F4E
 00491815    lea         eax,[ebp-6F4]
 0049181B    call        0067DAB4
 00491820    inc         dword ptr [ebp-0B94]
 00491826    push        dword ptr [eax]
 00491828    mov         edx,6B5F50
 0049182D    lea         eax,[ebp-6F8]
 00491833    call        0067DAB4
 00491838    inc         dword ptr [ebp-0B94]
 0049183E    push        dword ptr [eax]
 00491840    xor         ecx,ecx
 00491842    mov         dl,22
 00491844    mov         eax,dword ptr [ebp-0BB4]
 0049184A    mov         eax,dword ptr [eax+1E]
 0049184D    call        00483A34
 00491852    dec         dword ptr [ebp-0B94]
 00491858    lea         eax,[ebp-6F8]
 0049185E    mov         edx,2
 00491863    call        0067DCA0
 00491868    dec         dword ptr [ebp-0B94]
 0049186E    lea         eax,[ebp-6F4]
 00491874    mov         edx,2
 00491879    call        0067DCA0
 0049187E    push        4
 00491880    mov         word ptr [ebp-0BA0],0E0C
 00491889    mov         edx,6B5F59
 0049188E    lea         eax,[ebp-6FC]
 00491894    call        0067DAB4
 00491899    inc         dword ptr [ebp-0B94]
 0049189F    push        dword ptr [eax]
 004918A1    mov         edx,6B5F5B
 004918A6    lea         eax,[ebp-700]
 004918AC    call        0067DAB4
 004918B1    inc         dword ptr [ebp-0B94]
 004918B7    push        dword ptr [eax]
 004918B9    mov         ecx,1
 004918BE    mov         dl,21
 004918C0    mov         eax,dword ptr [ebp-0BB4]
 004918C6    mov         eax,dword ptr [eax+1E]
 004918C9    call        00483A34
 004918CE    dec         dword ptr [ebp-0B94]
 004918D4    lea         eax,[ebp-700]
 004918DA    mov         edx,2
 004918DF    call        0067DCA0
 004918E4    dec         dword ptr [ebp-0B94]
 004918EA    lea         eax,[ebp-6FC]
 004918F0    mov         edx,2
 004918F5    call        0067DCA0
 004918FA    push        4
 004918FC    mov         word ptr [ebp-0BA0],0E18
 00491905    mov         edx,6B5F64
 0049190A    lea         eax,[ebp-704]
 00491910    call        0067DAB4
 00491915    inc         dword ptr [ebp-0B94]
 0049191B    push        dword ptr [eax]
 0049191D    mov         edx,6B5F6A
 00491922    lea         eax,[ebp-708]
 00491928    call        0067DAB4
 0049192D    inc         dword ptr [ebp-0B94]
 00491933    push        dword ptr [eax]
 00491935    mov         ecx,2
 0049193A    mov         dl,21
 0049193C    mov         eax,dword ptr [ebp-0BB4]
 00491942    mov         eax,dword ptr [eax+1E]
 00491945    call        00483A34
 0049194A    dec         dword ptr [ebp-0B94]
 00491950    lea         eax,[ebp-708]
 00491956    mov         edx,2
 0049195B    call        0067DCA0
 00491960    dec         dword ptr [ebp-0B94]
 00491966    lea         eax,[ebp-704]
 0049196C    mov         edx,2
 00491971    call        0067DCA0
 00491976    mov         al,1
 00491978    push        eax
 00491979    dec         dword ptr [ebp-0B94]
 0049197F    lea         eax,[ebp-4]
 00491982    mov         edx,2
 00491987    call        0067DCA0
 0049198C    pop         eax
 0049198D    mov         edx,dword ptr [ebp-0BB0]
 00491993    mov         dword ptr fs:[0],edx
>0049199A    jmp         00496D77
 0049199F    mov         word ptr [ebp-0BA0],0E24
 004919A8    mov         edx,6B5F72
 004919AD    lea         eax,[ebp-70C]
 004919B3    call        0067DAB4
 004919B8    inc         dword ptr [ebp-0B94]
 004919BE    mov         edx,dword ptr [eax]
 004919C0    mov         eax,dword ptr [ebp-0BB4]
 004919C6    mov         eax,dword ptr [eax+22]
 004919C9    call        SameText
 004919CE    push        eax
 004919CF    dec         dword ptr [ebp-0B94]
 004919D5    lea         eax,[ebp-70C]
 004919DB    mov         edx,2
 004919E0    call        0067DCA0
 004919E5    pop         ecx
 004919E6    test        cl,cl
>004919E8    je          00491B16
 004919EE    mov         eax,dword ptr [ebp-0BB4]
 004919F4    mov         byte ptr [eax+5],28
 004919F8    push        4
 004919FA    mov         word ptr [ebp-0BA0],0E30
 00491A03    mov         edx,6B5F7E
 00491A08    lea         eax,[ebp-710]
 00491A0E    call        0067DAB4
 00491A13    inc         dword ptr [ebp-0B94]
 00491A19    push        dword ptr [eax]
 00491A1B    mov         edx,6B5F80
 00491A20    lea         eax,[ebp-714]
 00491A26    call        0067DAB4
 00491A2B    inc         dword ptr [ebp-0B94]
 00491A31    push        dword ptr [eax]
 00491A33    xor         ecx,ecx
 00491A35    mov         dl,22
 00491A37    mov         eax,dword ptr [ebp-0BB4]
 00491A3D    mov         eax,dword ptr [eax+1E]
 00491A40    call        00483A34
 00491A45    dec         dword ptr [ebp-0B94]
 00491A4B    lea         eax,[ebp-714]
 00491A51    mov         edx,2
 00491A56    call        0067DCA0
 00491A5B    dec         dword ptr [ebp-0B94]
 00491A61    lea         eax,[ebp-710]
 00491A67    mov         edx,2
 00491A6C    call        0067DCA0
 00491A71    push        4
 00491A73    mov         word ptr [ebp-0BA0],0E3C
 00491A7C    mov         edx,6B5F89
 00491A81    lea         eax,[ebp-718]
 00491A87    call        0067DAB4
 00491A8C    inc         dword ptr [ebp-0B94]
 00491A92    push        dword ptr [eax]
 00491A94    mov         edx,6B5F8B
 00491A99    lea         eax,[ebp-71C]
 00491A9F    call        0067DAB4
 00491AA4    inc         dword ptr [ebp-0B94]
 00491AAA    push        dword ptr [eax]
 00491AAC    mov         ecx,1
 00491AB1    mov         dl,21
 00491AB3    mov         eax,dword ptr [ebp-0BB4]
 00491AB9    mov         eax,dword ptr [eax+1E]
 00491ABC    call        00483A34
 00491AC1    dec         dword ptr [ebp-0B94]
 00491AC7    lea         eax,[ebp-71C]
 00491ACD    mov         edx,2
 00491AD2    call        0067DCA0
 00491AD7    dec         dword ptr [ebp-0B94]
 00491ADD    lea         eax,[ebp-718]
 00491AE3    mov         edx,2
 00491AE8    call        0067DCA0
 00491AED    mov         al,1
 00491AEF    push        eax
 00491AF0    dec         dword ptr [ebp-0B94]
 00491AF6    lea         eax,[ebp-4]
 00491AF9    mov         edx,2
 00491AFE    call        0067DCA0
 00491B03    pop         eax
 00491B04    mov         edx,dword ptr [ebp-0BB0]
 00491B0A    mov         dword ptr fs:[0],edx
>00491B11    jmp         00496D77
 00491B16    mov         word ptr [ebp-0BA0],0E48
 00491B1F    mov         edx,6B5F94
 00491B24    lea         eax,[ebp-720]
 00491B2A    call        0067DAB4
 00491B2F    inc         dword ptr [ebp-0B94]
 00491B35    mov         edx,dword ptr [eax]
 00491B37    mov         eax,dword ptr [ebp-0BB4]
 00491B3D    mov         eax,dword ptr [eax+22]
 00491B40    call        SameText
 00491B45    push        eax
 00491B46    dec         dword ptr [ebp-0B94]
 00491B4C    lea         eax,[ebp-720]
 00491B52    mov         edx,2
 00491B57    call        0067DCA0
 00491B5C    pop         ecx
 00491B5D    test        cl,cl
>00491B5F    je          00491D09
 00491B65    mov         eax,dword ptr [ebp-0BB4]
 00491B6B    mov         byte ptr [eax+5],28
 00491B6F    push        4
 00491B71    mov         word ptr [ebp-0BA0],0E54
 00491B7A    mov         edx,6B5F9F
 00491B7F    lea         eax,[ebp-724]
 00491B85    call        0067DAB4
 00491B8A    inc         dword ptr [ebp-0B94]
 00491B90    push        dword ptr [eax]
 00491B92    mov         edx,6B5FA1
 00491B97    lea         eax,[ebp-728]
 00491B9D    call        0067DAB4
 00491BA2    inc         dword ptr [ebp-0B94]
 00491BA8    push        dword ptr [eax]
 00491BAA    xor         ecx,ecx
 00491BAC    mov         dl,22
 00491BAE    mov         eax,dword ptr [ebp-0BB4]
 00491BB4    mov         eax,dword ptr [eax+1E]
 00491BB7    call        00483A34
 00491BBC    dec         dword ptr [ebp-0B94]
 00491BC2    lea         eax,[ebp-728]
 00491BC8    mov         edx,2
 00491BCD    call        0067DCA0
 00491BD2    dec         dword ptr [ebp-0B94]
 00491BD8    lea         eax,[ebp-724]
 00491BDE    mov         edx,2
 00491BE3    call        0067DCA0
 00491BE8    push        4
 00491BEA    mov         word ptr [ebp-0BA0],0E60
 00491BF3    mov         edx,6B5FAA
 00491BF8    lea         eax,[ebp-72C]
 00491BFE    call        0067DAB4
 00491C03    inc         dword ptr [ebp-0B94]
 00491C09    push        dword ptr [eax]
 00491C0B    mov         edx,6B5FAE
 00491C10    lea         eax,[ebp-730]
 00491C16    call        0067DAB4
 00491C1B    inc         dword ptr [ebp-0B94]
 00491C21    push        dword ptr [eax]
 00491C23    mov         ecx,1
 00491C28    mov         dl,21
 00491C2A    mov         eax,dword ptr [ebp-0BB4]
 00491C30    mov         eax,dword ptr [eax+1E]
 00491C33    call        00483A34
 00491C38    dec         dword ptr [ebp-0B94]
 00491C3E    lea         eax,[ebp-730]
 00491C44    mov         edx,2
 00491C49    call        0067DCA0
 00491C4E    dec         dword ptr [ebp-0B94]
 00491C54    lea         eax,[ebp-72C]
 00491C5A    mov         edx,2
 00491C5F    call        0067DCA0
 00491C64    push        4
 00491C66    mov         word ptr [ebp-0BA0],0E6C
 00491C6F    mov         edx,6B5FB6
 00491C74    lea         eax,[ebp-734]
 00491C7A    call        0067DAB4
 00491C7F    inc         dword ptr [ebp-0B94]
 00491C85    push        dword ptr [eax]
 00491C87    mov         edx,6B5FBC
 00491C8C    lea         eax,[ebp-738]
 00491C92    call        0067DAB4
 00491C97    inc         dword ptr [ebp-0B94]
 00491C9D    push        dword ptr [eax]
 00491C9F    mov         ecx,2
 00491CA4    mov         dl,21
 00491CA6    mov         eax,dword ptr [ebp-0BB4]
 00491CAC    mov         eax,dword ptr [eax+1E]
 00491CAF    call        00483A34
 00491CB4    dec         dword ptr [ebp-0B94]
 00491CBA    lea         eax,[ebp-738]
 00491CC0    mov         edx,2
 00491CC5    call        0067DCA0
 00491CCA    dec         dword ptr [ebp-0B94]
 00491CD0    lea         eax,[ebp-734]
 00491CD6    mov         edx,2
 00491CDB    call        0067DCA0
 00491CE0    mov         al,1
 00491CE2    push        eax
 00491CE3    dec         dword ptr [ebp-0B94]
 00491CE9    lea         eax,[ebp-4]
 00491CEC    mov         edx,2
 00491CF1    call        0067DCA0
 00491CF6    pop         eax
 00491CF7    mov         edx,dword ptr [ebp-0BB0]
 00491CFD    mov         dword ptr fs:[0],edx
>00491D04    jmp         00496D77
 00491D09    mov         word ptr [ebp-0BA0],0E78
 00491D12    mov         edx,6B5FC4
 00491D17    lea         eax,[ebp-73C]
 00491D1D    call        0067DAB4
 00491D22    inc         dword ptr [ebp-0B94]
 00491D28    mov         edx,dword ptr [eax]
 00491D2A    mov         eax,dword ptr [ebp-0BB4]
 00491D30    mov         eax,dword ptr [eax+22]
 00491D33    call        SameText
 00491D38    push        eax
 00491D39    dec         dword ptr [ebp-0B94]
 00491D3F    lea         eax,[ebp-73C]
 00491D45    mov         edx,2
 00491D4A    call        0067DCA0
 00491D4F    pop         ecx
 00491D50    test        cl,cl
>00491D52    je          00491E80
 00491D58    mov         eax,dword ptr [ebp-0BB4]
 00491D5E    mov         byte ptr [eax+5],28
 00491D62    push        4
 00491D64    mov         word ptr [ebp-0BA0],0E84
 00491D6D    mov         edx,6B5FD0
 00491D72    lea         eax,[ebp-740]
 00491D78    call        0067DAB4
 00491D7D    inc         dword ptr [ebp-0B94]
 00491D83    push        dword ptr [eax]
 00491D85    mov         edx,6B5FD2
 00491D8A    lea         eax,[ebp-744]
 00491D90    call        0067DAB4
 00491D95    inc         dword ptr [ebp-0B94]
 00491D9B    push        dword ptr [eax]
 00491D9D    xor         ecx,ecx
 00491D9F    mov         dl,22
 00491DA1    mov         eax,dword ptr [ebp-0BB4]
 00491DA7    mov         eax,dword ptr [eax+1E]
 00491DAA    call        00483A34
 00491DAF    dec         dword ptr [ebp-0B94]
 00491DB5    lea         eax,[ebp-744]
 00491DBB    mov         edx,2
 00491DC0    call        0067DCA0
 00491DC5    dec         dword ptr [ebp-0B94]
 00491DCB    lea         eax,[ebp-740]
 00491DD1    mov         edx,2
 00491DD6    call        0067DCA0
 00491DDB    push        4
 00491DDD    mov         word ptr [ebp-0BA0],0E90
 00491DE6    mov         edx,6B5FDB
 00491DEB    lea         eax,[ebp-748]
 00491DF1    call        0067DAB4
 00491DF6    inc         dword ptr [ebp-0B94]
 00491DFC    push        dword ptr [eax]
 00491DFE    mov         edx,6B5FDF
 00491E03    lea         eax,[ebp-74C]
 00491E09    call        0067DAB4
 00491E0E    inc         dword ptr [ebp-0B94]
 00491E14    push        dword ptr [eax]
 00491E16    mov         ecx,1
 00491E1B    mov         dl,21
 00491E1D    mov         eax,dword ptr [ebp-0BB4]
 00491E23    mov         eax,dword ptr [eax+1E]
 00491E26    call        00483A34
 00491E2B    dec         dword ptr [ebp-0B94]
 00491E31    lea         eax,[ebp-74C]
 00491E37    mov         edx,2
 00491E3C    call        0067DCA0
 00491E41    dec         dword ptr [ebp-0B94]
 00491E47    lea         eax,[ebp-748]
 00491E4D    mov         edx,2
 00491E52    call        0067DCA0
 00491E57    mov         al,1
 00491E59    push        eax
 00491E5A    dec         dword ptr [ebp-0B94]
 00491E60    lea         eax,[ebp-4]
 00491E63    mov         edx,2
 00491E68    call        0067DCA0
 00491E6D    pop         eax
 00491E6E    mov         edx,dword ptr [ebp-0BB0]
 00491E74    mov         dword ptr fs:[0],edx
>00491E7B    jmp         00496D77
 00491E80    mov         word ptr [ebp-0BA0],0E9C
 00491E89    mov         edx,6B5FE7
 00491E8E    lea         eax,[ebp-750]
 00491E94    call        0067DAB4
 00491E99    inc         dword ptr [ebp-0B94]
 00491E9F    mov         edx,dword ptr [eax]
 00491EA1    mov         eax,dword ptr [ebp-0BB4]
 00491EA7    mov         eax,dword ptr [eax+22]
 00491EAA    call        SameText
 00491EAF    push        eax
 00491EB0    dec         dword ptr [ebp-0B94]
 00491EB6    lea         eax,[ebp-750]
 00491EBC    mov         edx,2
 00491EC1    call        0067DCA0
 00491EC6    pop         ecx
 00491EC7    test        cl,cl
>00491EC9    je          00492073
 00491ECF    mov         eax,dword ptr [ebp-0BB4]
 00491ED5    mov         byte ptr [eax+5],28
 00491ED9    push        4
 00491EDB    mov         word ptr [ebp-0BA0],0EA8
 00491EE4    mov         edx,6B5FF2
 00491EE9    lea         eax,[ebp-754]
 00491EEF    call        0067DAB4
 00491EF4    inc         dword ptr [ebp-0B94]
 00491EFA    push        dword ptr [eax]
 00491EFC    mov         edx,6B5FF4
 00491F01    lea         eax,[ebp-758]
 00491F07    call        0067DAB4
 00491F0C    inc         dword ptr [ebp-0B94]
 00491F12    push        dword ptr [eax]
 00491F14    xor         ecx,ecx
 00491F16    mov         dl,22
 00491F18    mov         eax,dword ptr [ebp-0BB4]
 00491F1E    mov         eax,dword ptr [eax+1E]
 00491F21    call        00483A34
 00491F26    dec         dword ptr [ebp-0B94]
 00491F2C    lea         eax,[ebp-758]
 00491F32    mov         edx,2
 00491F37    call        0067DCA0
 00491F3C    dec         dword ptr [ebp-0B94]
 00491F42    lea         eax,[ebp-754]
 00491F48    mov         edx,2
 00491F4D    call        0067DCA0
 00491F52    push        4
 00491F54    mov         word ptr [ebp-0BA0],0EB4
 00491F5D    mov         edx,6B5FFD
 00491F62    lea         eax,[ebp-75C]
 00491F68    call        0067DAB4
 00491F6D    inc         dword ptr [ebp-0B94]
 00491F73    push        dword ptr [eax]
 00491F75    mov         edx,6B6001
 00491F7A    lea         eax,[ebp-760]
 00491F80    call        0067DAB4
 00491F85    inc         dword ptr [ebp-0B94]
 00491F8B    push        dword ptr [eax]
 00491F8D    mov         ecx,1
 00491F92    mov         dl,21
 00491F94    mov         eax,dword ptr [ebp-0BB4]
 00491F9A    mov         eax,dword ptr [eax+1E]
 00491F9D    call        00483A34
 00491FA2    dec         dword ptr [ebp-0B94]
 00491FA8    lea         eax,[ebp-760]
 00491FAE    mov         edx,2
 00491FB3    call        0067DCA0
 00491FB8    dec         dword ptr [ebp-0B94]
 00491FBE    lea         eax,[ebp-75C]
 00491FC4    mov         edx,2
 00491FC9    call        0067DCA0
 00491FCE    push        4
 00491FD0    mov         word ptr [ebp-0BA0],0EC0
 00491FD9    mov         edx,6B6009
 00491FDE    lea         eax,[ebp-764]
 00491FE4    call        0067DAB4
 00491FE9    inc         dword ptr [ebp-0B94]
 00491FEF    push        dword ptr [eax]
 00491FF1    mov         edx,6B600F
 00491FF6    lea         eax,[ebp-768]
 00491FFC    call        0067DAB4
 00492001    inc         dword ptr [ebp-0B94]
 00492007    push        dword ptr [eax]
 00492009    mov         ecx,2
 0049200E    mov         dl,21
 00492010    mov         eax,dword ptr [ebp-0BB4]
 00492016    mov         eax,dword ptr [eax+1E]
 00492019    call        00483A34
 0049201E    dec         dword ptr [ebp-0B94]
 00492024    lea         eax,[ebp-768]
 0049202A    mov         edx,2
 0049202F    call        0067DCA0
 00492034    dec         dword ptr [ebp-0B94]
 0049203A    lea         eax,[ebp-764]
 00492040    mov         edx,2
 00492045    call        0067DCA0
 0049204A    mov         al,1
 0049204C    push        eax
 0049204D    dec         dword ptr [ebp-0B94]
 00492053    lea         eax,[ebp-4]
 00492056    mov         edx,2
 0049205B    call        0067DCA0
 00492060    pop         eax
 00492061    mov         edx,dword ptr [ebp-0BB0]
 00492067    mov         dword ptr fs:[0],edx
>0049206E    jmp         00496D77
 00492073    mov         word ptr [ebp-0BA0],0ECC
 0049207C    mov         edx,6B6017
 00492081    lea         eax,[ebp-76C]
 00492087    call        0067DAB4
 0049208C    inc         dword ptr [ebp-0B94]
 00492092    mov         edx,dword ptr [eax]
 00492094    mov         eax,dword ptr [ebp-0BB4]
 0049209A    mov         eax,dword ptr [eax+22]
 0049209D    call        SameText
 004920A2    push        eax
 004920A3    dec         dword ptr [ebp-0B94]
 004920A9    lea         eax,[ebp-76C]
 004920AF    mov         edx,2
 004920B4    call        0067DCA0
 004920B9    pop         ecx
 004920BA    test        cl,cl
>004920BC    je          004921EA
 004920C2    mov         eax,dword ptr [ebp-0BB4]
 004920C8    mov         byte ptr [eax+5],28
 004920CC    push        4
 004920CE    mov         word ptr [ebp-0BA0],0ED8
 004920D7    mov         edx,6B6023
 004920DC    lea         eax,[ebp-770]
 004920E2    call        0067DAB4
 004920E7    inc         dword ptr [ebp-0B94]
 004920ED    push        dword ptr [eax]
 004920EF    mov         edx,6B6025
 004920F4    lea         eax,[ebp-774]
 004920FA    call        0067DAB4
 004920FF    inc         dword ptr [ebp-0B94]
 00492105    push        dword ptr [eax]
 00492107    xor         ecx,ecx
 00492109    mov         dl,22
 0049210B    mov         eax,dword ptr [ebp-0BB4]
 00492111    mov         eax,dword ptr [eax+1E]
 00492114    call        00483A34
 00492119    dec         dword ptr [ebp-0B94]
 0049211F    lea         eax,[ebp-774]
 00492125    mov         edx,2
 0049212A    call        0067DCA0
 0049212F    dec         dword ptr [ebp-0B94]
 00492135    lea         eax,[ebp-770]
 0049213B    mov         edx,2
 00492140    call        0067DCA0
 00492145    push        4
 00492147    mov         word ptr [ebp-0BA0],0EE4
 00492150    mov         edx,6B602E
 00492155    lea         eax,[ebp-778]
 0049215B    call        0067DAB4
 00492160    inc         dword ptr [ebp-0B94]
 00492166    push        dword ptr [eax]
 00492168    mov         edx,6B6032
 0049216D    lea         eax,[ebp-77C]
 00492173    call        0067DAB4
 00492178    inc         dword ptr [ebp-0B94]
 0049217E    push        dword ptr [eax]
 00492180    mov         ecx,1
 00492185    mov         dl,21
 00492187    mov         eax,dword ptr [ebp-0BB4]
 0049218D    mov         eax,dword ptr [eax+1E]
 00492190    call        00483A34
 00492195    dec         dword ptr [ebp-0B94]
 0049219B    lea         eax,[ebp-77C]
 004921A1    mov         edx,2
 004921A6    call        0067DCA0
 004921AB    dec         dword ptr [ebp-0B94]
 004921B1    lea         eax,[ebp-778]
 004921B7    mov         edx,2
 004921BC    call        0067DCA0
 004921C1    mov         al,1
 004921C3    push        eax
 004921C4    dec         dword ptr [ebp-0B94]
 004921CA    lea         eax,[ebp-4]
 004921CD    mov         edx,2
 004921D2    call        0067DCA0
 004921D7    pop         eax
 004921D8    mov         edx,dword ptr [ebp-0BB0]
 004921DE    mov         dword ptr fs:[0],edx
>004921E5    jmp         00496D77
 004921EA    mov         word ptr [ebp-0BA0],0EF0
 004921F3    mov         edx,6B603A
 004921F8    lea         eax,[ebp-780]
 004921FE    call        0067DAB4
 00492203    inc         dword ptr [ebp-0B94]
 00492209    mov         edx,dword ptr [eax]
 0049220B    mov         eax,dword ptr [ebp-0BB4]
 00492211    mov         eax,dword ptr [eax+22]
 00492214    call        SameText
 00492219    push        eax
 0049221A    dec         dword ptr [ebp-0B94]
 00492220    lea         eax,[ebp-780]
 00492226    mov         edx,2
 0049222B    call        0067DCA0
 00492230    pop         ecx
 00492231    test        cl,cl
>00492233    je          004923DD
 00492239    mov         eax,dword ptr [ebp-0BB4]
 0049223F    mov         byte ptr [eax+5],28
 00492243    push        4
 00492245    mov         word ptr [ebp-0BA0],0EFC
 0049224E    mov         edx,6B6047
 00492253    lea         eax,[ebp-784]
 00492259    call        0067DAB4
 0049225E    inc         dword ptr [ebp-0B94]
 00492264    push        dword ptr [eax]
 00492266    mov         edx,6B6049
 0049226B    lea         eax,[ebp-788]
 00492271    call        0067DAB4
 00492276    inc         dword ptr [ebp-0B94]
 0049227C    push        dword ptr [eax]
 0049227E    xor         ecx,ecx
 00492280    mov         dl,22
 00492282    mov         eax,dword ptr [ebp-0BB4]
 00492288    mov         eax,dword ptr [eax+1E]
 0049228B    call        00483A34
 00492290    dec         dword ptr [ebp-0B94]
 00492296    lea         eax,[ebp-788]
 0049229C    mov         edx,2
 004922A1    call        0067DCA0
 004922A6    dec         dword ptr [ebp-0B94]
 004922AC    lea         eax,[ebp-784]
 004922B2    mov         edx,2
 004922B7    call        0067DCA0
 004922BC    push        4
 004922BE    mov         word ptr [ebp-0BA0],0F08
 004922C7    mov         edx,6B6052
 004922CC    lea         eax,[ebp-78C]
 004922D2    call        0067DAB4
 004922D7    inc         dword ptr [ebp-0B94]
 004922DD    push        dword ptr [eax]
 004922DF    mov         edx,6B6054
 004922E4    lea         eax,[ebp-790]
 004922EA    call        0067DAB4
 004922EF    inc         dword ptr [ebp-0B94]
 004922F5    push        dword ptr [eax]
 004922F7    mov         ecx,1
 004922FC    mov         dl,21
 004922FE    mov         eax,dword ptr [ebp-0BB4]
 00492304    mov         eax,dword ptr [eax+1E]
 00492307    call        00483A34
 0049230C    dec         dword ptr [ebp-0B94]
 00492312    lea         eax,[ebp-790]
 00492318    mov         edx,2
 0049231D    call        0067DCA0
 00492322    dec         dword ptr [ebp-0B94]
 00492328    lea         eax,[ebp-78C]
 0049232E    mov         edx,2
 00492333    call        0067DCA0
 00492338    push        4
 0049233A    mov         word ptr [ebp-0BA0],0F14
 00492343    mov         edx,6B6060
 00492348    lea         eax,[ebp-794]
 0049234E    call        0067DAB4
 00492353    inc         dword ptr [ebp-0B94]
 00492359    push        dword ptr [eax]
 0049235B    mov         edx,6B6066
 00492360    lea         eax,[ebp-798]
 00492366    call        0067DAB4
 0049236B    inc         dword ptr [ebp-0B94]
 00492371    push        dword ptr [eax]
 00492373    mov         ecx,2
 00492378    mov         dl,21
 0049237A    mov         eax,dword ptr [ebp-0BB4]
 00492380    mov         eax,dword ptr [eax+1E]
 00492383    call        00483A34
 00492388    dec         dword ptr [ebp-0B94]
 0049238E    lea         eax,[ebp-798]
 00492394    mov         edx,2
 00492399    call        0067DCA0
 0049239E    dec         dword ptr [ebp-0B94]
 004923A4    lea         eax,[ebp-794]
 004923AA    mov         edx,2
 004923AF    call        0067DCA0
 004923B4    mov         al,1
 004923B6    push        eax
 004923B7    dec         dword ptr [ebp-0B94]
 004923BD    lea         eax,[ebp-4]
 004923C0    mov         edx,2
 004923C5    call        0067DCA0
 004923CA    pop         eax
 004923CB    mov         edx,dword ptr [ebp-0BB0]
 004923D1    mov         dword ptr fs:[0],edx
>004923D8    jmp         00496D77
 004923DD    mov         word ptr [ebp-0BA0],0F20
 004923E6    mov         edx,6B606E
 004923EB    lea         eax,[ebp-79C]
 004923F1    call        0067DAB4
 004923F6    inc         dword ptr [ebp-0B94]
 004923FC    mov         edx,dword ptr [eax]
 004923FE    mov         eax,dword ptr [ebp-0BB4]
 00492404    mov         eax,dword ptr [eax+22]
 00492407    call        SameText
 0049240C    push        eax
 0049240D    dec         dword ptr [ebp-0B94]
 00492413    lea         eax,[ebp-79C]
 00492419    mov         edx,2
 0049241E    call        0067DCA0
 00492423    pop         ecx
 00492424    test        cl,cl
>00492426    je          00492554
 0049242C    mov         eax,dword ptr [ebp-0BB4]
 00492432    mov         byte ptr [eax+5],28
 00492436    push        4
 00492438    mov         word ptr [ebp-0BA0],0F2C
 00492441    mov         edx,6B607C
 00492446    lea         eax,[ebp-7A0]
 0049244C    call        0067DAB4
 00492451    inc         dword ptr [ebp-0B94]
 00492457    push        dword ptr [eax]
 00492459    mov         edx,6B607E
 0049245E    lea         eax,[ebp-7A4]
 00492464    call        0067DAB4
 00492469    inc         dword ptr [ebp-0B94]
 0049246F    push        dword ptr [eax]
 00492471    xor         ecx,ecx
 00492473    mov         dl,22
 00492475    mov         eax,dword ptr [ebp-0BB4]
 0049247B    mov         eax,dword ptr [eax+1E]
 0049247E    call        00483A34
 00492483    dec         dword ptr [ebp-0B94]
 00492489    lea         eax,[ebp-7A4]
 0049248F    mov         edx,2
 00492494    call        0067DCA0
 00492499    dec         dword ptr [ebp-0B94]
 0049249F    lea         eax,[ebp-7A0]
 004924A5    mov         edx,2
 004924AA    call        0067DCA0
 004924AF    push        4
 004924B1    mov         word ptr [ebp-0BA0],0F38
 004924BA    mov         edx,6B6087
 004924BF    lea         eax,[ebp-7A8]
 004924C5    call        0067DAB4
 004924CA    inc         dword ptr [ebp-0B94]
 004924D0    push        dword ptr [eax]
 004924D2    mov         edx,6B6089
 004924D7    lea         eax,[ebp-7AC]
 004924DD    call        0067DAB4
 004924E2    inc         dword ptr [ebp-0B94]
 004924E8    push        dword ptr [eax]
 004924EA    mov         ecx,1
 004924EF    mov         dl,21
 004924F1    mov         eax,dword ptr [ebp-0BB4]
 004924F7    mov         eax,dword ptr [eax+1E]
 004924FA    call        00483A34
 004924FF    dec         dword ptr [ebp-0B94]
 00492505    lea         eax,[ebp-7AC]
 0049250B    mov         edx,2
 00492510    call        0067DCA0
 00492515    dec         dword ptr [ebp-0B94]
 0049251B    lea         eax,[ebp-7A8]
 00492521    mov         edx,2
 00492526    call        0067DCA0
 0049252B    mov         al,1
 0049252D    push        eax
 0049252E    dec         dword ptr [ebp-0B94]
 00492534    lea         eax,[ebp-4]
 00492537    mov         edx,2
 0049253C    call        0067DCA0
 00492541    pop         eax
 00492542    mov         edx,dword ptr [ebp-0BB0]
 00492548    mov         dword ptr fs:[0],edx
>0049254F    jmp         00496D77
 00492554    mov         word ptr [ebp-0BA0],0F44
 0049255D    mov         edx,6B6095
 00492562    lea         eax,[ebp-7B0]
 00492568    call        0067DAB4
 0049256D    inc         dword ptr [ebp-0B94]
 00492573    mov         edx,dword ptr [eax]
 00492575    mov         eax,dword ptr [ebp-0BB4]
 0049257B    mov         eax,dword ptr [eax+22]
 0049257E    call        SameText
 00492583    push        eax
 00492584    dec         dword ptr [ebp-0B94]
 0049258A    lea         eax,[ebp-7B0]
 00492590    mov         edx,2
 00492595    call        0067DCA0
 0049259A    pop         ecx
 0049259B    test        cl,cl
>0049259D    je          00492747
 004925A3    mov         eax,dword ptr [ebp-0BB4]
 004925A9    mov         byte ptr [eax+5],28
 004925AD    push        4
 004925AF    mov         word ptr [ebp-0BA0],0F50
 004925B8    mov         edx,6B60A3
 004925BD    lea         eax,[ebp-7B4]
 004925C3    call        0067DAB4
 004925C8    inc         dword ptr [ebp-0B94]
 004925CE    push        dword ptr [eax]
 004925D0    mov         edx,6B60A5
 004925D5    lea         eax,[ebp-7B8]
 004925DB    call        0067DAB4
 004925E0    inc         dword ptr [ebp-0B94]
 004925E6    push        dword ptr [eax]
 004925E8    xor         ecx,ecx
 004925EA    mov         dl,22
 004925EC    mov         eax,dword ptr [ebp-0BB4]
 004925F2    mov         eax,dword ptr [eax+1E]
 004925F5    call        00483A34
 004925FA    dec         dword ptr [ebp-0B94]
 00492600    lea         eax,[ebp-7B8]
 00492606    mov         edx,2
 0049260B    call        0067DCA0
 00492610    dec         dword ptr [ebp-0B94]
 00492616    lea         eax,[ebp-7B4]
 0049261C    mov         edx,2
 00492621    call        0067DCA0
 00492626    push        4
 00492628    mov         word ptr [ebp-0BA0],0F5C
 00492631    mov         edx,6B60AE
 00492636    lea         eax,[ebp-7BC]
 0049263C    call        0067DAB4
 00492641    inc         dword ptr [ebp-0B94]
 00492647    push        dword ptr [eax]
 00492649    mov         edx,6B60B0
 0049264E    lea         eax,[ebp-7C0]
 00492654    call        0067DAB4
 00492659    inc         dword ptr [ebp-0B94]
 0049265F    push        dword ptr [eax]
 00492661    mov         ecx,1
 00492666    mov         dl,21
 00492668    mov         eax,dword ptr [ebp-0BB4]
 0049266E    mov         eax,dword ptr [eax+1E]
 00492671    call        00483A34
 00492676    dec         dword ptr [ebp-0B94]
 0049267C    lea         eax,[ebp-7C0]
 00492682    mov         edx,2
 00492687    call        0067DCA0
 0049268C    dec         dword ptr [ebp-0B94]
 00492692    lea         eax,[ebp-7BC]
 00492698    mov         edx,2
 0049269D    call        0067DCA0
 004926A2    push        4
 004926A4    mov         word ptr [ebp-0BA0],0F68
 004926AD    mov         edx,6B60BA
 004926B2    lea         eax,[ebp-7C4]
 004926B8    call        0067DAB4
 004926BD    inc         dword ptr [ebp-0B94]
 004926C3    push        dword ptr [eax]
 004926C5    mov         edx,6B60C0
 004926CA    lea         eax,[ebp-7C8]
 004926D0    call        0067DAB4
 004926D5    inc         dword ptr [ebp-0B94]
 004926DB    push        dword ptr [eax]
 004926DD    mov         ecx,2
 004926E2    mov         dl,21
 004926E4    mov         eax,dword ptr [ebp-0BB4]
 004926EA    mov         eax,dword ptr [eax+1E]
 004926ED    call        00483A34
 004926F2    dec         dword ptr [ebp-0B94]
 004926F8    lea         eax,[ebp-7C8]
 004926FE    mov         edx,2
 00492703    call        0067DCA0
 00492708    dec         dword ptr [ebp-0B94]
 0049270E    lea         eax,[ebp-7C4]
 00492714    mov         edx,2
 00492719    call        0067DCA0
 0049271E    mov         al,1
 00492720    push        eax
 00492721    dec         dword ptr [ebp-0B94]
 00492727    lea         eax,[ebp-4]
 0049272A    mov         edx,2
 0049272F    call        0067DCA0
 00492734    pop         eax
 00492735    mov         edx,dword ptr [ebp-0BB0]
 0049273B    mov         dword ptr fs:[0],edx
>00492742    jmp         00496D77
 00492747    mov         word ptr [ebp-0BA0],0F74
 00492750    mov         edx,6B60C8
 00492755    lea         eax,[ebp-7CC]
 0049275B    call        0067DAB4
 00492760    inc         dword ptr [ebp-0B94]
 00492766    mov         edx,dword ptr [eax]
 00492768    mov         eax,dword ptr [ebp-0BB4]
 0049276E    mov         eax,dword ptr [eax+22]
 00492771    call        SameText
 00492776    push        eax
 00492777    dec         dword ptr [ebp-0B94]
 0049277D    lea         eax,[ebp-7CC]
 00492783    mov         edx,2
 00492788    call        0067DCA0
 0049278D    pop         ecx
 0049278E    test        cl,cl
>00492790    je          004928BE
 00492796    mov         eax,dword ptr [ebp-0BB4]
 0049279C    mov         byte ptr [eax+5],28
 004927A0    push        4
 004927A2    mov         word ptr [ebp-0BA0],0F80
 004927AB    mov         edx,6B60D7
 004927B0    lea         eax,[ebp-7D0]
 004927B6    call        0067DAB4
 004927BB    inc         dword ptr [ebp-0B94]
 004927C1    push        dword ptr [eax]
 004927C3    mov         edx,6B60D9
 004927C8    lea         eax,[ebp-7D4]
 004927CE    call        0067DAB4
 004927D3    inc         dword ptr [ebp-0B94]
 004927D9    push        dword ptr [eax]
 004927DB    xor         ecx,ecx
 004927DD    mov         dl,22
 004927DF    mov         eax,dword ptr [ebp-0BB4]
 004927E5    mov         eax,dword ptr [eax+1E]
 004927E8    call        00483A34
 004927ED    dec         dword ptr [ebp-0B94]
 004927F3    lea         eax,[ebp-7D4]
 004927F9    mov         edx,2
 004927FE    call        0067DCA0
 00492803    dec         dword ptr [ebp-0B94]
 00492809    lea         eax,[ebp-7D0]
 0049280F    mov         edx,2
 00492814    call        0067DCA0
 00492819    push        4
 0049281B    mov         word ptr [ebp-0BA0],0F8C
 00492824    mov         edx,6B60E2
 00492829    lea         eax,[ebp-7D8]
 0049282F    call        0067DAB4
 00492834    inc         dword ptr [ebp-0B94]
 0049283A    push        dword ptr [eax]
 0049283C    mov         edx,6B60E4
 00492841    lea         eax,[ebp-7DC]
 00492847    call        0067DAB4
 0049284C    inc         dword ptr [ebp-0B94]
 00492852    push        dword ptr [eax]
 00492854    mov         ecx,1
 00492859    mov         dl,21
 0049285B    mov         eax,dword ptr [ebp-0BB4]
 00492861    mov         eax,dword ptr [eax+1E]
 00492864    call        00483A34
 00492869    dec         dword ptr [ebp-0B94]
 0049286F    lea         eax,[ebp-7DC]
 00492875    mov         edx,2
 0049287A    call        0067DCA0
 0049287F    dec         dword ptr [ebp-0B94]
 00492885    lea         eax,[ebp-7D8]
 0049288B    mov         edx,2
 00492890    call        0067DCA0
 00492895    mov         al,1
 00492897    push        eax
 00492898    dec         dword ptr [ebp-0B94]
 0049289E    lea         eax,[ebp-4]
 004928A1    mov         edx,2
 004928A6    call        0067DCA0
 004928AB    pop         eax
 004928AC    mov         edx,dword ptr [ebp-0BB0]
 004928B2    mov         dword ptr fs:[0],edx
>004928B9    jmp         00496D77
 004928BE    mov         word ptr [ebp-0BA0],0F98
 004928C7    mov         edx,6B60EE
 004928CC    lea         eax,[ebp-7E0]
 004928D2    call        0067DAB4
 004928D7    inc         dword ptr [ebp-0B94]
 004928DD    mov         edx,dword ptr [eax]
 004928DF    mov         eax,dword ptr [ebp-0BB4]
 004928E5    mov         eax,dword ptr [eax+22]
 004928E8    call        SameText
 004928ED    push        eax
 004928EE    dec         dword ptr [ebp-0B94]
 004928F4    lea         eax,[ebp-7E0]
 004928FA    mov         edx,2
 004928FF    call        0067DCA0
 00492904    pop         ecx
 00492905    test        cl,cl
>00492907    je          00492AB1
 0049290D    mov         eax,dword ptr [ebp-0BB4]
 00492913    mov         byte ptr [eax+5],28
 00492917    push        4
 00492919    mov         word ptr [ebp-0BA0],0FA4
 00492922    mov         edx,6B60FC
 00492927    lea         eax,[ebp-7E4]
 0049292D    call        0067DAB4
 00492932    inc         dword ptr [ebp-0B94]
 00492938    push        dword ptr [eax]
 0049293A    mov         edx,6B60FE
 0049293F    lea         eax,[ebp-7E8]
 00492945    call        0067DAB4
 0049294A    inc         dword ptr [ebp-0B94]
 00492950    push        dword ptr [eax]
 00492952    xor         ecx,ecx
 00492954    mov         dl,22
 00492956    mov         eax,dword ptr [ebp-0BB4]
 0049295C    mov         eax,dword ptr [eax+1E]
 0049295F    call        00483A34
 00492964    dec         dword ptr [ebp-0B94]
 0049296A    lea         eax,[ebp-7E8]
 00492970    mov         edx,2
 00492975    call        0067DCA0
 0049297A    dec         dword ptr [ebp-0B94]
 00492980    lea         eax,[ebp-7E4]
 00492986    mov         edx,2
 0049298B    call        0067DCA0
 00492990    push        4
 00492992    mov         word ptr [ebp-0BA0],0FB0
 0049299B    mov         edx,6B6107
 004929A0    lea         eax,[ebp-7EC]
 004929A6    call        0067DAB4
 004929AB    inc         dword ptr [ebp-0B94]
 004929B1    push        dword ptr [eax]
 004929B3    mov         edx,6B6109
 004929B8    lea         eax,[ebp-7F0]
 004929BE    call        0067DAB4
 004929C3    inc         dword ptr [ebp-0B94]
 004929C9    push        dword ptr [eax]
 004929CB    mov         ecx,1
 004929D0    mov         dl,21
 004929D2    mov         eax,dword ptr [ebp-0BB4]
 004929D8    mov         eax,dword ptr [eax+1E]
 004929DB    call        00483A34
 004929E0    dec         dword ptr [ebp-0B94]
 004929E6    lea         eax,[ebp-7F0]
 004929EC    mov         edx,2
 004929F1    call        0067DCA0
 004929F6    dec         dword ptr [ebp-0B94]
 004929FC    lea         eax,[ebp-7EC]
 00492A02    mov         edx,2
 00492A07    call        0067DCA0
 00492A0C    push        4
 00492A0E    mov         word ptr [ebp-0BA0],0FBC
 00492A17    mov         edx,6B6114
 00492A1C    lea         eax,[ebp-7F4]
 00492A22    call        0067DAB4
 00492A27    inc         dword ptr [ebp-0B94]
 00492A2D    push        dword ptr [eax]
 00492A2F    mov         edx,6B611A
 00492A34    lea         eax,[ebp-7F8]
 00492A3A    call        0067DAB4
 00492A3F    inc         dword ptr [ebp-0B94]
 00492A45    push        dword ptr [eax]
 00492A47    mov         ecx,2
 00492A4C    mov         dl,21
 00492A4E    mov         eax,dword ptr [ebp-0BB4]
 00492A54    mov         eax,dword ptr [eax+1E]
 00492A57    call        00483A34
 00492A5C    dec         dword ptr [ebp-0B94]
 00492A62    lea         eax,[ebp-7F8]
 00492A68    mov         edx,2
 00492A6D    call        0067DCA0
 00492A72    dec         dword ptr [ebp-0B94]
 00492A78    lea         eax,[ebp-7F4]
 00492A7E    mov         edx,2
 00492A83    call        0067DCA0
 00492A88    mov         al,1
 00492A8A    push        eax
 00492A8B    dec         dword ptr [ebp-0B94]
 00492A91    lea         eax,[ebp-4]
 00492A94    mov         edx,2
 00492A99    call        0067DCA0
 00492A9E    pop         eax
 00492A9F    mov         edx,dword ptr [ebp-0BB0]
 00492AA5    mov         dword ptr fs:[0],edx
>00492AAC    jmp         00496D77
 00492AB1    mov         word ptr [ebp-0BA0],0FC8
 00492ABA    mov         edx,6B6122
 00492ABF    lea         eax,[ebp-7FC]
 00492AC5    call        0067DAB4
 00492ACA    inc         dword ptr [ebp-0B94]
 00492AD0    mov         edx,dword ptr [eax]
 00492AD2    mov         eax,dword ptr [ebp-0BB4]
 00492AD8    mov         eax,dword ptr [eax+22]
 00492ADB    call        SameText
 00492AE0    push        eax
 00492AE1    dec         dword ptr [ebp-0B94]
 00492AE7    lea         eax,[ebp-7FC]
 00492AED    mov         edx,2
 00492AF2    call        0067DCA0
 00492AF7    pop         ecx
 00492AF8    test        cl,cl
>00492AFA    je          00492C28
 00492B00    mov         eax,dword ptr [ebp-0BB4]
 00492B06    mov         byte ptr [eax+5],28
 00492B0A    push        4
 00492B0C    mov         word ptr [ebp-0BA0],0FD4
 00492B15    mov         edx,6B6131
 00492B1A    lea         eax,[ebp-800]
 00492B20    call        0067DAB4
 00492B25    inc         dword ptr [ebp-0B94]
 00492B2B    push        dword ptr [eax]
 00492B2D    mov         edx,6B6133
 00492B32    lea         eax,[ebp-804]
 00492B38    call        0067DAB4
 00492B3D    inc         dword ptr [ebp-0B94]
 00492B43    push        dword ptr [eax]
 00492B45    xor         ecx,ecx
 00492B47    mov         dl,22
 00492B49    mov         eax,dword ptr [ebp-0BB4]
 00492B4F    mov         eax,dword ptr [eax+1E]
 00492B52    call        00483A34
 00492B57    dec         dword ptr [ebp-0B94]
 00492B5D    lea         eax,[ebp-804]
 00492B63    mov         edx,2
 00492B68    call        0067DCA0
 00492B6D    dec         dword ptr [ebp-0B94]
 00492B73    lea         eax,[ebp-800]
 00492B79    mov         edx,2
 00492B7E    call        0067DCA0
 00492B83    push        4
 00492B85    mov         word ptr [ebp-0BA0],0FE0
 00492B8E    mov         edx,6B613C
 00492B93    lea         eax,[ebp-808]
 00492B99    call        0067DAB4
 00492B9E    inc         dword ptr [ebp-0B94]
 00492BA4    push        dword ptr [eax]
 00492BA6    mov         edx,6B613E
 00492BAB    lea         eax,[ebp-80C]
 00492BB1    call        0067DAB4
 00492BB6    inc         dword ptr [ebp-0B94]
 00492BBC    push        dword ptr [eax]
 00492BBE    mov         ecx,1
 00492BC3    mov         dl,21
 00492BC5    mov         eax,dword ptr [ebp-0BB4]
 00492BCB    mov         eax,dword ptr [eax+1E]
 00492BCE    call        00483A34
 00492BD3    dec         dword ptr [ebp-0B94]
 00492BD9    lea         eax,[ebp-80C]
 00492BDF    mov         edx,2
 00492BE4    call        0067DCA0
 00492BE9    dec         dword ptr [ebp-0B94]
 00492BEF    lea         eax,[ebp-808]
 00492BF5    mov         edx,2
 00492BFA    call        0067DCA0
 00492BFF    mov         al,1
 00492C01    push        eax
 00492C02    dec         dword ptr [ebp-0B94]
 00492C08    lea         eax,[ebp-4]
 00492C0B    mov         edx,2
 00492C10    call        0067DCA0
 00492C15    pop         eax
 00492C16    mov         edx,dword ptr [ebp-0BB0]
 00492C1C    mov         dword ptr fs:[0],edx
>00492C23    jmp         00496D77
 00492C28    mov         word ptr [ebp-0BA0],0FEC
 00492C31    mov         edx,6B6149
 00492C36    lea         eax,[ebp-810]
 00492C3C    call        0067DAB4
 00492C41    inc         dword ptr [ebp-0B94]
 00492C47    mov         edx,dword ptr [eax]
 00492C49    mov         eax,dword ptr [ebp-0BB4]
 00492C4F    mov         eax,dword ptr [eax+22]
 00492C52    call        SameText
 00492C57    test        al,al
>00492C59    jne         00492CA9
 00492C5B    mov         edx,6B6154
 00492C60    lea         eax,[ebp-814]
 00492C66    call        0067DAB4
 00492C6B    inc         dword ptr [ebp-0B94]
 00492C71    mov         edx,dword ptr [eax]
 00492C73    mov         ecx,dword ptr [ebp-0BB4]
 00492C79    mov         eax,dword ptr [ecx+22]
 00492C7C    call        SameText
 00492C81    test        al,al
 00492C83    setne       dl
 00492C86    and         edx,1
 00492C89    push        edx
 00492C8A    dec         dword ptr [ebp-0B94]
 00492C90    lea         eax,[ebp-814]
 00492C96    mov         edx,2
 00492C9B    call        0067DCA0
 00492CA0    pop         ecx
 00492CA1    test        ecx,ecx
>00492CA3    jne         00492CA9
 00492CA5    xor         eax,eax
>00492CA7    jmp         00492CAE
 00492CA9    mov         eax,1
 00492CAE    push        eax
 00492CAF    dec         dword ptr [ebp-0B94]
 00492CB5    lea         eax,[ebp-810]
 00492CBB    mov         edx,2
 00492CC0    call        0067DCA0
 00492CC5    pop         ecx
 00492CC6    test        cl,cl
>00492CC8    je          00492EEE
 00492CCE    mov         eax,dword ptr [ebp-0BB4]
 00492CD4    mov         byte ptr [eax+5],28
 00492CD8    push        4
 00492CDA    mov         word ptr [ebp-0BA0],0FF8
 00492CE3    mov         edx,6B615D
 00492CE8    lea         eax,[ebp-818]
 00492CEE    call        0067DAB4
 00492CF3    inc         dword ptr [ebp-0B94]
 00492CF9    push        dword ptr [eax]
 00492CFB    mov         edx,6B615F
 00492D00    lea         eax,[ebp-81C]
 00492D06    call        0067DAB4
 00492D0B    inc         dword ptr [ebp-0B94]
 00492D11    push        dword ptr [eax]
 00492D13    xor         ecx,ecx
 00492D15    mov         dl,22
 00492D17    mov         eax,dword ptr [ebp-0BB4]
 00492D1D    mov         eax,dword ptr [eax+1E]
 00492D20    call        00483A34
 00492D25    dec         dword ptr [ebp-0B94]
 00492D2B    lea         eax,[ebp-81C]
 00492D31    mov         edx,2
 00492D36    call        0067DCA0
 00492D3B    dec         dword ptr [ebp-0B94]
 00492D41    lea         eax,[ebp-818]
 00492D47    mov         edx,2
 00492D4C    call        0067DCA0
 00492D51    push        0C
 00492D53    mov         word ptr [ebp-0BA0],1004
 00492D5C    mov         edx,6B6168
 00492D61    lea         eax,[ebp-820]
 00492D67    call        0067DAB4
 00492D6C    inc         dword ptr [ebp-0B94]
 00492D72    push        dword ptr [eax]
 00492D74    mov         edx,6B616C
 00492D79    lea         eax,[ebp-824]
 00492D7F    call        0067DAB4
 00492D84    inc         dword ptr [ebp-0B94]
 00492D8A    push        dword ptr [eax]
 00492D8C    mov         ecx,8
 00492D91    mov         dl,21
 00492D93    mov         eax,dword ptr [ebp-0BB4]
 00492D99    mov         eax,dword ptr [eax+1E]
 00492D9C    call        00483A34
 00492DA1    dec         dword ptr [ebp-0B94]
 00492DA7    lea         eax,[ebp-824]
 00492DAD    mov         edx,2
 00492DB2    call        0067DCA0
 00492DB7    dec         dword ptr [ebp-0B94]
 00492DBD    lea         eax,[ebp-820]
 00492DC3    mov         edx,2
 00492DC8    call        0067DCA0
 00492DCD    push        4
 00492DCF    mov         word ptr [ebp-0BA0],1010
 00492DD8    mov         edx,6B6175
 00492DDD    lea         eax,[ebp-828]
 00492DE3    call        0067DAB4
 00492DE8    inc         dword ptr [ebp-0B94]
 00492DEE    push        dword ptr [eax]
 00492DF0    mov         edx,6B617B
 00492DF5    lea         eax,[ebp-82C]
 00492DFB    call        0067DAB4
 00492E00    inc         dword ptr [ebp-0B94]
 00492E06    push        dword ptr [eax]
 00492E08    mov         ecx,1
 00492E0D    mov         dl,21
 00492E0F    mov         eax,dword ptr [ebp-0BB4]
 00492E15    mov         eax,dword ptr [eax+1E]
 00492E18    call        00483A34
 00492E1D    dec         dword ptr [ebp-0B94]
 00492E23    lea         eax,[ebp-82C]
 00492E29    mov         edx,2
 00492E2E    call        0067DCA0
 00492E33    dec         dword ptr [ebp-0B94]
 00492E39    lea         eax,[ebp-828]
 00492E3F    mov         edx,2
 00492E44    call        0067DCA0
 00492E49    push        4
 00492E4B    mov         word ptr [ebp-0BA0],101C
 00492E54    mov         edx,6B6183
 00492E59    lea         eax,[ebp-830]
 00492E5F    call        0067DAB4
 00492E64    inc         dword ptr [ebp-0B94]
 00492E6A    push        dword ptr [eax]
 00492E6C    mov         edx,6B618D
 00492E71    lea         eax,[ebp-834]
 00492E77    call        0067DAB4
 00492E7C    inc         dword ptr [ebp-0B94]
 00492E82    push        dword ptr [eax]
 00492E84    mov         ecx,2
 00492E89    mov         dl,21
 00492E8B    mov         eax,dword ptr [ebp-0BB4]
 00492E91    mov         eax,dword ptr [eax+1E]
 00492E94    call        00483A34
 00492E99    dec         dword ptr [ebp-0B94]
 00492E9F    lea         eax,[ebp-834]
 00492EA5    mov         edx,2
 00492EAA    call        0067DCA0
 00492EAF    dec         dword ptr [ebp-0B94]
 00492EB5    lea         eax,[ebp-830]
 00492EBB    mov         edx,2
 00492EC0    call        0067DCA0
 00492EC5    mov         al,1
 00492EC7    push        eax
 00492EC8    dec         dword ptr [ebp-0B94]
 00492ECE    lea         eax,[ebp-4]
 00492ED1    mov         edx,2
 00492ED6    call        0067DCA0
 00492EDB    pop         eax
 00492EDC    mov         edx,dword ptr [ebp-0BB0]
 00492EE2    mov         dword ptr fs:[0],edx
>00492EE9    jmp         00496D77
 00492EEE    mov         word ptr [ebp-0BA0],1028
 00492EF7    mov         edx,6B6195
 00492EFC    lea         eax,[ebp-838]
 00492F02    call        0067DAB4
 00492F07    inc         dword ptr [ebp-0B94]
 00492F0D    mov         edx,dword ptr [eax]
 00492F0F    mov         eax,dword ptr [ebp-0BB4]
 00492F15    mov         eax,dword ptr [eax+22]
 00492F18    call        SameText
 00492F1D    push        eax
 00492F1E    dec         dword ptr [ebp-0B94]
 00492F24    lea         eax,[ebp-838]
 00492F2A    mov         edx,2
 00492F2F    call        0067DCA0
 00492F34    pop         ecx
 00492F35    test        cl,cl
>00492F37    je          004930E1
 00492F3D    mov         eax,dword ptr [ebp-0BB4]
 00492F43    mov         byte ptr [eax+5],28
 00492F47    push        4
 00492F49    mov         word ptr [ebp-0BA0],1034
 00492F52    mov         edx,6B61A3
 00492F57    lea         eax,[ebp-83C]
 00492F5D    call        0067DAB4
 00492F62    inc         dword ptr [ebp-0B94]
 00492F68    push        dword ptr [eax]
 00492F6A    mov         edx,6B61A5
 00492F6F    lea         eax,[ebp-840]
 00492F75    call        0067DAB4
 00492F7A    inc         dword ptr [ebp-0B94]
 00492F80    push        dword ptr [eax]
 00492F82    xor         ecx,ecx
 00492F84    mov         dl,22
 00492F86    mov         eax,dword ptr [ebp-0BB4]
 00492F8C    mov         eax,dword ptr [eax+1E]
 00492F8F    call        00483A34
 00492F94    dec         dword ptr [ebp-0B94]
 00492F9A    lea         eax,[ebp-840]
 00492FA0    mov         edx,2
 00492FA5    call        0067DCA0
 00492FAA    dec         dword ptr [ebp-0B94]
 00492FB0    lea         eax,[ebp-83C]
 00492FB6    mov         edx,2
 00492FBB    call        0067DCA0
 00492FC0    push        4
 00492FC2    mov         word ptr [ebp-0BA0],1040
 00492FCB    mov         edx,6B61AE
 00492FD0    lea         eax,[ebp-844]
 00492FD6    call        0067DAB4
 00492FDB    inc         dword ptr [ebp-0B94]
 00492FE1    push        dword ptr [eax]
 00492FE3    mov         edx,6B61B0
 00492FE8    lea         eax,[ebp-848]
 00492FEE    call        0067DAB4
 00492FF3    inc         dword ptr [ebp-0B94]
 00492FF9    push        dword ptr [eax]
 00492FFB    mov         ecx,1
 00493000    mov         dl,21
 00493002    mov         eax,dword ptr [ebp-0BB4]
 00493008    mov         eax,dword ptr [eax+1E]
 0049300B    call        00483A34
 00493010    dec         dword ptr [ebp-0B94]
 00493016    lea         eax,[ebp-848]
 0049301C    mov         edx,2
 00493021    call        0067DCA0
 00493026    dec         dword ptr [ebp-0B94]
 0049302C    lea         eax,[ebp-844]
 00493032    mov         edx,2
 00493037    call        0067DCA0
 0049303C    push        4
 0049303E    mov         word ptr [ebp-0BA0],104C
 00493047    mov         edx,6B61BB
 0049304C    lea         eax,[ebp-84C]
 00493052    call        0067DAB4
 00493057    inc         dword ptr [ebp-0B94]
 0049305D    push        dword ptr [eax]
 0049305F    mov         edx,6B61C1
 00493064    lea         eax,[ebp-850]
 0049306A    call        0067DAB4
 0049306F    inc         dword ptr [ebp-0B94]
 00493075    push        dword ptr [eax]
 00493077    mov         ecx,2
 0049307C    mov         dl,21
 0049307E    mov         eax,dword ptr [ebp-0BB4]
 00493084    mov         eax,dword ptr [eax+1E]
 00493087    call        00483A34
 0049308C    dec         dword ptr [ebp-0B94]
 00493092    lea         eax,[ebp-850]
 00493098    mov         edx,2
 0049309D    call        0067DCA0
 004930A2    dec         dword ptr [ebp-0B94]
 004930A8    lea         eax,[ebp-84C]
 004930AE    mov         edx,2
 004930B3    call        0067DCA0
 004930B8    mov         al,1
 004930BA    push        eax
 004930BB    dec         dword ptr [ebp-0B94]
 004930C1    lea         eax,[ebp-4]
 004930C4    mov         edx,2
 004930C9    call        0067DCA0
 004930CE    pop         eax
 004930CF    mov         edx,dword ptr [ebp-0BB0]
 004930D5    mov         dword ptr fs:[0],edx
>004930DC    jmp         00496D77
 004930E1    mov         word ptr [ebp-0BA0],1058
 004930EA    mov         edx,6B61C9
 004930EF    lea         eax,[ebp-854]
 004930F5    call        0067DAB4
 004930FA    inc         dword ptr [ebp-0B94]
 00493100    mov         edx,dword ptr [eax]
 00493102    mov         eax,dword ptr [ebp-0BB4]
 00493108    mov         eax,dword ptr [eax+22]
 0049310B    call        SameText
 00493110    push        eax
 00493111    dec         dword ptr [ebp-0B94]
 00493117    lea         eax,[ebp-854]
 0049311D    mov         edx,2
 00493122    call        0067DCA0
 00493127    pop         ecx
 00493128    test        cl,cl
>0049312A    je          00493258
 00493130    mov         eax,dword ptr [ebp-0BB4]
 00493136    mov         byte ptr [eax+5],28
 0049313A    push        4
 0049313C    mov         word ptr [ebp-0BA0],1064
 00493145    mov         edx,6B61D8
 0049314A    lea         eax,[ebp-858]
 00493150    call        0067DAB4
 00493155    inc         dword ptr [ebp-0B94]
 0049315B    push        dword ptr [eax]
 0049315D    mov         edx,6B61DA
 00493162    lea         eax,[ebp-85C]
 00493168    call        0067DAB4
 0049316D    inc         dword ptr [ebp-0B94]
 00493173    push        dword ptr [eax]
 00493175    xor         ecx,ecx
 00493177    mov         dl,22
 00493179    mov         eax,dword ptr [ebp-0BB4]
 0049317F    mov         eax,dword ptr [eax+1E]
 00493182    call        00483A34
 00493187    dec         dword ptr [ebp-0B94]
 0049318D    lea         eax,[ebp-85C]
 00493193    mov         edx,2
 00493198    call        0067DCA0
 0049319D    dec         dword ptr [ebp-0B94]
 004931A3    lea         eax,[ebp-858]
 004931A9    mov         edx,2
 004931AE    call        0067DCA0
 004931B3    push        4
 004931B5    mov         word ptr [ebp-0BA0],1070
 004931BE    mov         edx,6B61E3
 004931C3    lea         eax,[ebp-860]
 004931C9    call        0067DAB4
 004931CE    inc         dword ptr [ebp-0B94]
 004931D4    push        dword ptr [eax]
 004931D6    mov         edx,6B61E5
 004931DB    lea         eax,[ebp-864]
 004931E1    call        0067DAB4
 004931E6    inc         dword ptr [ebp-0B94]
 004931EC    push        dword ptr [eax]
 004931EE    mov         ecx,1
 004931F3    mov         dl,21
 004931F5    mov         eax,dword ptr [ebp-0BB4]
 004931FB    mov         eax,dword ptr [eax+1E]
 004931FE    call        00483A34
 00493203    dec         dword ptr [ebp-0B94]
 00493209    lea         eax,[ebp-864]
 0049320F    mov         edx,2
 00493214    call        0067DCA0
 00493219    dec         dword ptr [ebp-0B94]
 0049321F    lea         eax,[ebp-860]
 00493225    mov         edx,2
 0049322A    call        0067DCA0
 0049322F    mov         al,1
 00493231    push        eax
 00493232    dec         dword ptr [ebp-0B94]
 00493238    lea         eax,[ebp-4]
 0049323B    mov         edx,2
 00493240    call        0067DCA0
 00493245    pop         eax
 00493246    mov         edx,dword ptr [ebp-0BB0]
 0049324C    mov         dword ptr fs:[0],edx
>00493253    jmp         00496D77
 00493258    mov         word ptr [ebp-0BA0],107C
 00493261    mov         edx,6B61F0
 00493266    lea         eax,[ebp-868]
 0049326C    call        0067DAB4
 00493271    inc         dword ptr [ebp-0B94]
 00493277    mov         edx,dword ptr [eax]
 00493279    mov         eax,dword ptr [ebp-0BB4]
 0049327F    mov         eax,dword ptr [eax+22]
 00493282    call        SameText
 00493287    push        eax
 00493288    dec         dword ptr [ebp-0B94]
 0049328E    lea         eax,[ebp-868]
 00493294    mov         edx,2
 00493299    call        0067DCA0
 0049329E    pop         ecx
 0049329F    test        cl,cl
>004932A1    je          0049344B
 004932A7    mov         eax,dword ptr [ebp-0BB4]
 004932AD    mov         byte ptr [eax+5],28
 004932B1    push        4
 004932B3    mov         word ptr [ebp-0BA0],1088
 004932BC    mov         edx,6B61FF
 004932C1    lea         eax,[ebp-86C]
 004932C7    call        0067DAB4
 004932CC    inc         dword ptr [ebp-0B94]
 004932D2    push        dword ptr [eax]
 004932D4    mov         edx,6B6201
 004932D9    lea         eax,[ebp-870]
 004932DF    call        0067DAB4
 004932E4    inc         dword ptr [ebp-0B94]
 004932EA    push        dword ptr [eax]
 004932EC    xor         ecx,ecx
 004932EE    mov         dl,22
 004932F0    mov         eax,dword ptr [ebp-0BB4]
 004932F6    mov         eax,dword ptr [eax+1E]
 004932F9    call        00483A34
 004932FE    dec         dword ptr [ebp-0B94]
 00493304    lea         eax,[ebp-870]
 0049330A    mov         edx,2
 0049330F    call        0067DCA0
 00493314    dec         dword ptr [ebp-0B94]
 0049331A    lea         eax,[ebp-86C]
 00493320    mov         edx,2
 00493325    call        0067DCA0
 0049332A    push        4
 0049332C    mov         word ptr [ebp-0BA0],1094
 00493335    mov         edx,6B620A
 0049333A    lea         eax,[ebp-874]
 00493340    call        0067DAB4
 00493345    inc         dword ptr [ebp-0B94]
 0049334B    push        dword ptr [eax]
 0049334D    mov         edx,6B620C
 00493352    lea         eax,[ebp-878]
 00493358    call        0067DAB4
 0049335D    inc         dword ptr [ebp-0B94]
 00493363    push        dword ptr [eax]
 00493365    mov         ecx,1
 0049336A    mov         dl,21
 0049336C    mov         eax,dword ptr [ebp-0BB4]
 00493372    mov         eax,dword ptr [eax+1E]
 00493375    call        00483A34
 0049337A    dec         dword ptr [ebp-0B94]
 00493380    lea         eax,[ebp-878]
 00493386    mov         edx,2
 0049338B    call        0067DCA0
 00493390    dec         dword ptr [ebp-0B94]
 00493396    lea         eax,[ebp-874]
 0049339C    mov         edx,2
 004933A1    call        0067DCA0
 004933A6    push        4
 004933A8    mov         word ptr [ebp-0BA0],10A0
 004933B1    mov         edx,6B6216
 004933B6    lea         eax,[ebp-87C]
 004933BC    call        0067DAB4
 004933C1    inc         dword ptr [ebp-0B94]
 004933C7    push        dword ptr [eax]
 004933C9    mov         edx,6B621C
 004933CE    lea         eax,[ebp-880]
 004933D4    call        0067DAB4
 004933D9    inc         dword ptr [ebp-0B94]
 004933DF    push        dword ptr [eax]
 004933E1    mov         ecx,2
 004933E6    mov         dl,21
 004933E8    mov         eax,dword ptr [ebp-0BB4]
 004933EE    mov         eax,dword ptr [eax+1E]
 004933F1    call        00483A34
 004933F6    dec         dword ptr [ebp-0B94]
 004933FC    lea         eax,[ebp-880]
 00493402    mov         edx,2
 00493407    call        0067DCA0
 0049340C    dec         dword ptr [ebp-0B94]
 00493412    lea         eax,[ebp-87C]
 00493418    mov         edx,2
 0049341D    call        0067DCA0
 00493422    mov         al,1
 00493424    push        eax
 00493425    dec         dword ptr [ebp-0B94]
 0049342B    lea         eax,[ebp-4]
 0049342E    mov         edx,2
 00493433    call        0067DCA0
 00493438    pop         eax
 00493439    mov         edx,dword ptr [ebp-0BB0]
 0049343F    mov         dword ptr fs:[0],edx
>00493446    jmp         00496D77
 0049344B    mov         word ptr [ebp-0BA0],10AC
 00493454    mov         edx,6B6224
 00493459    lea         eax,[ebp-884]
 0049345F    call        0067DAB4
 00493464    inc         dword ptr [ebp-0B94]
 0049346A    mov         edx,dword ptr [eax]
 0049346C    mov         eax,dword ptr [ebp-0BB4]
 00493472    mov         eax,dword ptr [eax+22]
 00493475    call        SameText
 0049347A    push        eax
 0049347B    dec         dword ptr [ebp-0B94]
 00493481    lea         eax,[ebp-884]
 00493487    mov         edx,2
 0049348C    call        0067DCA0
 00493491    pop         ecx
 00493492    test        cl,cl
>00493494    je          004935C2
 0049349A    mov         eax,dword ptr [ebp-0BB4]
 004934A0    mov         byte ptr [eax+5],28
 004934A4    push        4
 004934A6    mov         word ptr [ebp-0BA0],10B8
 004934AF    mov         edx,6B6234
 004934B4    lea         eax,[ebp-888]
 004934BA    call        0067DAB4
 004934BF    inc         dword ptr [ebp-0B94]
 004934C5    push        dword ptr [eax]
 004934C7    mov         edx,6B6236
 004934CC    lea         eax,[ebp-88C]
 004934D2    call        0067DAB4
 004934D7    inc         dword ptr [ebp-0B94]
 004934DD    push        dword ptr [eax]
 004934DF    xor         ecx,ecx
 004934E1    mov         dl,22
 004934E3    mov         eax,dword ptr [ebp-0BB4]
 004934E9    mov         eax,dword ptr [eax+1E]
 004934EC    call        00483A34
 004934F1    dec         dword ptr [ebp-0B94]
 004934F7    lea         eax,[ebp-88C]
 004934FD    mov         edx,2
 00493502    call        0067DCA0
 00493507    dec         dword ptr [ebp-0B94]
 0049350D    lea         eax,[ebp-888]
 00493513    mov         edx,2
 00493518    call        0067DCA0
 0049351D    push        4
 0049351F    mov         word ptr [ebp-0BA0],10C4
 00493528    mov         edx,6B623F
 0049352D    lea         eax,[ebp-890]
 00493533    call        0067DAB4
 00493538    inc         dword ptr [ebp-0B94]
 0049353E    push        dword ptr [eax]
 00493540    mov         edx,6B6241
 00493545    lea         eax,[ebp-894]
 0049354B    call        0067DAB4
 00493550    inc         dword ptr [ebp-0B94]
 00493556    push        dword ptr [eax]
 00493558    mov         ecx,1
 0049355D    mov         dl,21
 0049355F    mov         eax,dword ptr [ebp-0BB4]
 00493565    mov         eax,dword ptr [eax+1E]
 00493568    call        00483A34
 0049356D    dec         dword ptr [ebp-0B94]
 00493573    lea         eax,[ebp-894]
 00493579    mov         edx,2
 0049357E    call        0067DCA0
 00493583    dec         dword ptr [ebp-0B94]
 00493589    lea         eax,[ebp-890]
 0049358F    mov         edx,2
 00493594    call        0067DCA0
 00493599    mov         al,1
 0049359B    push        eax
 0049359C    dec         dword ptr [ebp-0B94]
 004935A2    lea         eax,[ebp-4]
 004935A5    mov         edx,2
 004935AA    call        0067DCA0
 004935AF    pop         eax
 004935B0    mov         edx,dword ptr [ebp-0BB0]
 004935B6    mov         dword ptr fs:[0],edx
>004935BD    jmp         00496D77
 004935C2    mov         word ptr [ebp-0BA0],10D0
 004935CB    mov         edx,6B624B
 004935D0    lea         eax,[ebp-898]
 004935D6    call        0067DAB4
 004935DB    inc         dword ptr [ebp-0B94]
 004935E1    mov         edx,dword ptr [eax]
 004935E3    mov         eax,dword ptr [ebp-0BB4]
 004935E9    mov         eax,dword ptr [eax+22]
 004935EC    call        SameText
 004935F1    push        eax
 004935F2    dec         dword ptr [ebp-0B94]
 004935F8    lea         eax,[ebp-898]
 004935FE    mov         edx,2
 00493603    call        0067DCA0
 00493608    pop         ecx
 00493609    test        cl,cl
>0049360B    je          004937B5
 00493611    mov         eax,dword ptr [ebp-0BB4]
 00493617    mov         byte ptr [eax+5],28
 0049361B    push        4
 0049361D    mov         word ptr [ebp-0BA0],10DC
 00493626    mov         edx,6B6257
 0049362B    lea         eax,[ebp-89C]
 00493631    call        0067DAB4
 00493636    inc         dword ptr [ebp-0B94]
 0049363C    push        dword ptr [eax]
 0049363E    mov         edx,6B6259
 00493643    lea         eax,[ebp-8A0]
 00493649    call        0067DAB4
 0049364E    inc         dword ptr [ebp-0B94]
 00493654    push        dword ptr [eax]
 00493656    xor         ecx,ecx
 00493658    mov         dl,22
 0049365A    mov         eax,dword ptr [ebp-0BB4]
 00493660    mov         eax,dword ptr [eax+1E]
 00493663    call        00483A34
 00493668    dec         dword ptr [ebp-0B94]
 0049366E    lea         eax,[ebp-8A0]
 00493674    mov         edx,2
 00493679    call        0067DCA0
 0049367E    dec         dword ptr [ebp-0B94]
 00493684    lea         eax,[ebp-89C]
 0049368A    mov         edx,2
 0049368F    call        0067DCA0
 00493694    push        4
 00493696    mov         word ptr [ebp-0BA0],10E8
 0049369F    mov         edx,6B6262
 004936A4    lea         eax,[ebp-8A4]
 004936AA    call        0067DAB4
 004936AF    inc         dword ptr [ebp-0B94]
 004936B5    push        dword ptr [eax]
 004936B7    mov         edx,6B6264
 004936BC    lea         eax,[ebp-8A8]
 004936C2    call        0067DAB4
 004936C7    inc         dword ptr [ebp-0B94]
 004936CD    push        dword ptr [eax]
 004936CF    mov         ecx,1
 004936D4    mov         dl,21
 004936D6    mov         eax,dword ptr [ebp-0BB4]
 004936DC    mov         eax,dword ptr [eax+1E]
 004936DF    call        00483A34
 004936E4    dec         dword ptr [ebp-0B94]
 004936EA    lea         eax,[ebp-8A8]
 004936F0    mov         edx,2
 004936F5    call        0067DCA0
 004936FA    dec         dword ptr [ebp-0B94]
 00493700    lea         eax,[ebp-8A4]
 00493706    mov         edx,2
 0049370B    call        0067DCA0
 00493710    push        4
 00493712    mov         word ptr [ebp-0BA0],10F4
 0049371B    mov         edx,6B626D
 00493720    lea         eax,[ebp-8AC]
 00493726    call        0067DAB4
 0049372B    inc         dword ptr [ebp-0B94]
 00493731    push        dword ptr [eax]
 00493733    mov         edx,6B6273
 00493738    lea         eax,[ebp-8B0]
 0049373E    call        0067DAB4
 00493743    inc         dword ptr [ebp-0B94]
 00493749    push        dword ptr [eax]
 0049374B    mov         ecx,2
 00493750    mov         dl,21
 00493752    mov         eax,dword ptr [ebp-0BB4]
 00493758    mov         eax,dword ptr [eax+1E]
 0049375B    call        00483A34
 00493760    dec         dword ptr [ebp-0B94]
 00493766    lea         eax,[ebp-8B0]
 0049376C    mov         edx,2
 00493771    call        0067DCA0
 00493776    dec         dword ptr [ebp-0B94]
 0049377C    lea         eax,[ebp-8AC]
 00493782    mov         edx,2
 00493787    call        0067DCA0
 0049378C    mov         al,1
 0049378E    push        eax
 0049378F    dec         dword ptr [ebp-0B94]
 00493795    lea         eax,[ebp-4]
 00493798    mov         edx,2
 0049379D    call        0067DCA0
 004937A2    pop         eax
 004937A3    mov         edx,dword ptr [ebp-0BB0]
 004937A9    mov         dword ptr fs:[0],edx
>004937B0    jmp         00496D77
 004937B5    mov         word ptr [ebp-0BA0],1100
 004937BE    mov         edx,6B627B
 004937C3    lea         eax,[ebp-8B4]
 004937C9    call        0067DAB4
 004937CE    inc         dword ptr [ebp-0B94]
 004937D4    mov         edx,dword ptr [eax]
 004937D6    mov         eax,dword ptr [ebp-0BB4]
 004937DC    mov         eax,dword ptr [eax+22]
 004937DF    call        SameText
 004937E4    push        eax
 004937E5    dec         dword ptr [ebp-0B94]
 004937EB    lea         eax,[ebp-8B4]
 004937F1    mov         edx,2
 004937F6    call        0067DCA0
 004937FB    pop         ecx
 004937FC    test        cl,cl
>004937FE    je          0049392C
 00493804    mov         eax,dword ptr [ebp-0BB4]
 0049380A    mov         byte ptr [eax+5],28
 0049380E    push        4
 00493810    mov         word ptr [ebp-0BA0],110C
 00493819    mov         edx,6B6288
 0049381E    lea         eax,[ebp-8B8]
 00493824    call        0067DAB4
 00493829    inc         dword ptr [ebp-0B94]
 0049382F    push        dword ptr [eax]
 00493831    mov         edx,6B628A
 00493836    lea         eax,[ebp-8BC]
 0049383C    call        0067DAB4
 00493841    inc         dword ptr [ebp-0B94]
 00493847    push        dword ptr [eax]
 00493849    xor         ecx,ecx
 0049384B    mov         dl,22
 0049384D    mov         eax,dword ptr [ebp-0BB4]
 00493853    mov         eax,dword ptr [eax+1E]
 00493856    call        00483A34
 0049385B    dec         dword ptr [ebp-0B94]
 00493861    lea         eax,[ebp-8BC]
 00493867    mov         edx,2
 0049386C    call        0067DCA0
 00493871    dec         dword ptr [ebp-0B94]
 00493877    lea         eax,[ebp-8B8]
 0049387D    mov         edx,2
 00493882    call        0067DCA0
 00493887    push        4
 00493889    mov         word ptr [ebp-0BA0],1118
 00493892    mov         edx,6B6293
 00493897    lea         eax,[ebp-8C0]
 0049389D    call        0067DAB4
 004938A2    inc         dword ptr [ebp-0B94]
 004938A8    push        dword ptr [eax]
 004938AA    mov         edx,6B6295
 004938AF    lea         eax,[ebp-8C4]
 004938B5    call        0067DAB4
 004938BA    inc         dword ptr [ebp-0B94]
 004938C0    push        dword ptr [eax]
 004938C2    mov         ecx,1
 004938C7    mov         dl,21
 004938C9    mov         eax,dword ptr [ebp-0BB4]
 004938CF    mov         eax,dword ptr [eax+1E]
 004938D2    call        00483A34
 004938D7    dec         dword ptr [ebp-0B94]
 004938DD    lea         eax,[ebp-8C4]
 004938E3    mov         edx,2
 004938E8    call        0067DCA0
 004938ED    dec         dword ptr [ebp-0B94]
 004938F3    lea         eax,[ebp-8C0]
 004938F9    mov         edx,2
 004938FE    call        0067DCA0
 00493903    mov         al,1
 00493905    push        eax
 00493906    dec         dword ptr [ebp-0B94]
 0049390C    lea         eax,[ebp-4]
 0049390F    mov         edx,2
 00493914    call        0067DCA0
 00493919    pop         eax
 0049391A    mov         edx,dword ptr [ebp-0BB0]
 00493920    mov         dword ptr fs:[0],edx
>00493927    jmp         00496D77
 0049392C    mov         word ptr [ebp-0BA0],1124
 00493935    mov         edx,6B629E
 0049393A    lea         eax,[ebp-8C8]
 00493940    call        0067DAB4
 00493945    inc         dword ptr [ebp-0B94]
 0049394B    mov         edx,dword ptr [eax]
 0049394D    mov         eax,dword ptr [ebp-0BB4]
 00493953    mov         eax,dword ptr [eax+22]
 00493956    call        SameText
 0049395B    push        eax
 0049395C    dec         dword ptr [ebp-0B94]
 00493962    lea         eax,[ebp-8C8]
 00493968    mov         edx,2
 0049396D    call        0067DCA0
 00493972    pop         ecx
 00493973    test        cl,cl
>00493975    je          00493AA3
 0049397B    mov         eax,dword ptr [ebp-0BB4]
 00493981    mov         byte ptr [eax+5],28
 00493985    push        4
 00493987    mov         word ptr [ebp-0BA0],1130
 00493990    mov         edx,6B62A9
 00493995    lea         eax,[ebp-8CC]
 0049399B    call        0067DAB4
 004939A0    inc         dword ptr [ebp-0B94]
 004939A6    push        dword ptr [eax]
 004939A8    mov         edx,6B62AB
 004939AD    lea         eax,[ebp-8D0]
 004939B3    call        0067DAB4
 004939B8    inc         dword ptr [ebp-0B94]
 004939BE    push        dword ptr [eax]
 004939C0    xor         ecx,ecx
 004939C2    mov         dl,22
 004939C4    mov         eax,dword ptr [ebp-0BB4]
 004939CA    mov         eax,dword ptr [eax+1E]
 004939CD    call        00483A34
 004939D2    dec         dword ptr [ebp-0B94]
 004939D8    lea         eax,[ebp-8D0]
 004939DE    mov         edx,2
 004939E3    call        0067DCA0
 004939E8    dec         dword ptr [ebp-0B94]
 004939EE    lea         eax,[ebp-8CC]
 004939F4    mov         edx,2
 004939F9    call        0067DCA0
 004939FE    push        4
 00493A00    mov         word ptr [ebp-0BA0],113C
 00493A09    mov         edx,6B62B4
 00493A0E    lea         eax,[ebp-8D4]
 00493A14    call        0067DAB4
 00493A19    inc         dword ptr [ebp-0B94]
 00493A1F    push        dword ptr [eax]
 00493A21    mov         edx,6B62BA
 00493A26    lea         eax,[ebp-8D8]
 00493A2C    call        0067DAB4
 00493A31    inc         dword ptr [ebp-0B94]
 00493A37    push        dword ptr [eax]
 00493A39    mov         ecx,1
 00493A3E    mov         dl,21
 00493A40    mov         eax,dword ptr [ebp-0BB4]
 00493A46    mov         eax,dword ptr [eax+1E]
 00493A49    call        00483A34
 00493A4E    dec         dword ptr [ebp-0B94]
 00493A54    lea         eax,[ebp-8D8]
 00493A5A    mov         edx,2
 00493A5F    call        0067DCA0
 00493A64    dec         dword ptr [ebp-0B94]
 00493A6A    lea         eax,[ebp-8D4]
 00493A70    mov         edx,2
 00493A75    call        0067DCA0
 00493A7A    mov         al,1
 00493A7C    push        eax
 00493A7D    dec         dword ptr [ebp-0B94]
 00493A83    lea         eax,[ebp-4]
 00493A86    mov         edx,2
 00493A8B    call        0067DCA0
 00493A90    pop         eax
 00493A91    mov         edx,dword ptr [ebp-0BB0]
 00493A97    mov         dword ptr fs:[0],edx
>00493A9E    jmp         00496D77
 00493AA3    mov         word ptr [ebp-0BA0],1148
 00493AAC    mov         edx,6B62C2
 00493AB1    lea         eax,[ebp-8DC]
 00493AB7    call        0067DAB4
 00493ABC    inc         dword ptr [ebp-0B94]
 00493AC2    mov         edx,dword ptr [eax]
 00493AC4    mov         eax,dword ptr [ebp-0BB4]
 00493ACA    mov         eax,dword ptr [eax+22]
 00493ACD    call        SameText
 00493AD2    push        eax
 00493AD3    dec         dword ptr [ebp-0B94]
 00493AD9    lea         eax,[ebp-8DC]
 00493ADF    mov         edx,2
 00493AE4    call        0067DCA0
 00493AE9    pop         ecx
 00493AEA    test        cl,cl
>00493AEC    je          00493B9E
 00493AF2    mov         eax,dword ptr [ebp-0BB4]
 00493AF8    mov         byte ptr [eax+5],28
 00493AFC    push        4
 00493AFE    mov         word ptr [ebp-0BA0],1154
 00493B07    mov         edx,6B62CD
 00493B0C    lea         eax,[ebp-8E0]
 00493B12    call        0067DAB4
 00493B17    inc         dword ptr [ebp-0B94]
 00493B1D    push        dword ptr [eax]
 00493B1F    mov         edx,6B62CF
 00493B24    lea         eax,[ebp-8E4]
 00493B2A    call        0067DAB4
 00493B2F    inc         dword ptr [ebp-0B94]
 00493B35    push        dword ptr [eax]
 00493B37    xor         ecx,ecx
 00493B39    mov         dl,22
 00493B3B    mov         eax,dword ptr [ebp-0BB4]
 00493B41    mov         eax,dword ptr [eax+1E]
 00493B44    call        00483A34
 00493B49    dec         dword ptr [ebp-0B94]
 00493B4F    lea         eax,[ebp-8E4]
 00493B55    mov         edx,2
 00493B5A    call        0067DCA0
 00493B5F    dec         dword ptr [ebp-0B94]
 00493B65    lea         eax,[ebp-8E0]
 00493B6B    mov         edx,2
 00493B70    call        0067DCA0
 00493B75    mov         al,1
 00493B77    push        eax
 00493B78    dec         dword ptr [ebp-0B94]
 00493B7E    lea         eax,[ebp-4]
 00493B81    mov         edx,2
 00493B86    call        0067DCA0
 00493B8B    pop         eax
 00493B8C    mov         edx,dword ptr [ebp-0BB0]
 00493B92    mov         dword ptr fs:[0],edx
>00493B99    jmp         00496D77
 00493B9E    mov         word ptr [ebp-0BA0],1160
 00493BA7    mov         edx,6B62D8
 00493BAC    lea         eax,[ebp-8E8]
 00493BB2    call        0067DAB4
 00493BB7    inc         dword ptr [ebp-0B94]
 00493BBD    mov         edx,dword ptr [eax]
 00493BBF    mov         eax,dword ptr [ebp-0BB4]
 00493BC5    mov         eax,dword ptr [eax+22]
 00493BC8    call        SameText
 00493BCD    push        eax
 00493BCE    dec         dword ptr [ebp-0B94]
 00493BD4    lea         eax,[ebp-8E8]
 00493BDA    mov         edx,2
 00493BDF    call        0067DCA0
 00493BE4    pop         ecx
 00493BE5    test        cl,cl
>00493BE7    je          00493C99
 00493BED    mov         eax,dword ptr [ebp-0BB4]
 00493BF3    mov         byte ptr [eax+5],28
 00493BF7    push        4
 00493BF9    mov         word ptr [ebp-0BA0],116C
 00493C02    mov         edx,6B62E1
 00493C07    lea         eax,[ebp-8EC]
 00493C0D    call        0067DAB4
 00493C12    inc         dword ptr [ebp-0B94]
 00493C18    push        dword ptr [eax]
 00493C1A    mov         edx,6B62E3
 00493C1F    lea         eax,[ebp-8F0]
 00493C25    call        0067DAB4
 00493C2A    inc         dword ptr [ebp-0B94]
 00493C30    push        dword ptr [eax]
 00493C32    xor         ecx,ecx
 00493C34    mov         dl,22
 00493C36    mov         eax,dword ptr [ebp-0BB4]
 00493C3C    mov         eax,dword ptr [eax+1E]
 00493C3F    call        00483A34
 00493C44    dec         dword ptr [ebp-0B94]
 00493C4A    lea         eax,[ebp-8F0]
 00493C50    mov         edx,2
 00493C55    call        0067DCA0
 00493C5A    dec         dword ptr [ebp-0B94]
 00493C60    lea         eax,[ebp-8EC]
 00493C66    mov         edx,2
 00493C6B    call        0067DCA0
 00493C70    mov         al,1
 00493C72    push        eax
 00493C73    dec         dword ptr [ebp-0B94]
 00493C79    lea         eax,[ebp-4]
 00493C7C    mov         edx,2
 00493C81    call        0067DCA0
 00493C86    pop         eax
 00493C87    mov         edx,dword ptr [ebp-0BB0]
 00493C8D    mov         dword ptr fs:[0],edx
>00493C94    jmp         00496D77
 00493C99    mov         word ptr [ebp-0BA0],1178
 00493CA2    mov         edx,6B62EC
 00493CA7    lea         eax,[ebp-8F4]
 00493CAD    call        0067DAB4
 00493CB2    inc         dword ptr [ebp-0B94]
 00493CB8    mov         edx,dword ptr [eax]
 00493CBA    mov         eax,dword ptr [ebp-0BB4]
 00493CC0    mov         eax,dword ptr [eax+22]
 00493CC3    call        SameText
 00493CC8    push        eax
 00493CC9    dec         dword ptr [ebp-0B94]
 00493CCF    lea         eax,[ebp-8F4]
 00493CD5    mov         edx,2
 00493CDA    call        0067DCA0
 00493CDF    pop         ecx
 00493CE0    test        cl,cl
>00493CE2    je          00493E8C
 00493CE8    mov         eax,dword ptr [ebp-0BB4]
 00493CEE    mov         byte ptr [eax+5],28
 00493CF2    push        4
 00493CF4    mov         word ptr [ebp-0BA0],1184
 00493CFD    mov         edx,6B62FA
 00493D02    lea         eax,[ebp-8F8]
 00493D08    call        0067DAB4
 00493D0D    inc         dword ptr [ebp-0B94]
 00493D13    push        dword ptr [eax]
 00493D15    mov         edx,6B62FC
 00493D1A    lea         eax,[ebp-8FC]
 00493D20    call        0067DAB4
 00493D25    inc         dword ptr [ebp-0B94]
 00493D2B    push        dword ptr [eax]
 00493D2D    xor         ecx,ecx
 00493D2F    mov         dl,22
 00493D31    mov         eax,dword ptr [ebp-0BB4]
 00493D37    mov         eax,dword ptr [eax+1E]
 00493D3A    call        00483A34
 00493D3F    dec         dword ptr [ebp-0B94]
 00493D45    lea         eax,[ebp-8FC]
 00493D4B    mov         edx,2
 00493D50    call        0067DCA0
 00493D55    dec         dword ptr [ebp-0B94]
 00493D5B    lea         eax,[ebp-8F8]
 00493D61    mov         edx,2
 00493D66    call        0067DCA0
 00493D6B    push        4
 00493D6D    mov         word ptr [ebp-0BA0],1190
 00493D76    mov         edx,6B6305
 00493D7B    lea         eax,[ebp-900]
 00493D81    call        0067DAB4
 00493D86    inc         dword ptr [ebp-0B94]
 00493D8C    push        dword ptr [eax]
 00493D8E    mov         edx,6B6307
 00493D93    lea         eax,[ebp-904]
 00493D99    call        0067DAB4
 00493D9E    inc         dword ptr [ebp-0B94]
 00493DA4    push        dword ptr [eax]
 00493DA6    mov         ecx,1
 00493DAB    mov         dl,21
 00493DAD    mov         eax,dword ptr [ebp-0BB4]
 00493DB3    mov         eax,dword ptr [eax+1E]
 00493DB6    call        00483A34
 00493DBB    dec         dword ptr [ebp-0B94]
 00493DC1    lea         eax,[ebp-904]
 00493DC7    mov         edx,2
 00493DCC    call        0067DCA0
 00493DD1    dec         dword ptr [ebp-0B94]
 00493DD7    lea         eax,[ebp-900]
 00493DDD    mov         edx,2
 00493DE2    call        0067DCA0
 00493DE7    push        4
 00493DE9    mov         word ptr [ebp-0BA0],119C
 00493DF2    mov         edx,6B6315
 00493DF7    lea         eax,[ebp-908]
 00493DFD    call        0067DAB4
 00493E02    inc         dword ptr [ebp-0B94]
 00493E08    push        dword ptr [eax]
 00493E0A    mov         edx,6B631B
 00493E0F    lea         eax,[ebp-90C]
 00493E15    call        0067DAB4
 00493E1A    inc         dword ptr [ebp-0B94]
 00493E20    push        dword ptr [eax]
 00493E22    mov         ecx,2
 00493E27    mov         dl,21
 00493E29    mov         eax,dword ptr [ebp-0BB4]
 00493E2F    mov         eax,dword ptr [eax+1E]
 00493E32    call        00483A34
 00493E37    dec         dword ptr [ebp-0B94]
 00493E3D    lea         eax,[ebp-90C]
 00493E43    mov         edx,2
 00493E48    call        0067DCA0
 00493E4D    dec         dword ptr [ebp-0B94]
 00493E53    lea         eax,[ebp-908]
 00493E59    mov         edx,2
 00493E5E    call        0067DCA0
 00493E63    mov         al,1
 00493E65    push        eax
 00493E66    dec         dword ptr [ebp-0B94]
 00493E6C    lea         eax,[ebp-4]
 00493E6F    mov         edx,2
 00493E74    call        0067DCA0
 00493E79    pop         eax
 00493E7A    mov         edx,dword ptr [ebp-0BB0]
 00493E80    mov         dword ptr fs:[0],edx
>00493E87    jmp         00496D77
 00493E8C    mov         word ptr [ebp-0BA0],11A8
 00493E95    mov         edx,6B6323
 00493E9A    lea         eax,[ebp-910]
 00493EA0    call        0067DAB4
 00493EA5    inc         dword ptr [ebp-0B94]
 00493EAB    mov         edx,dword ptr [eax]
 00493EAD    mov         eax,dword ptr [ebp-0BB4]
 00493EB3    mov         eax,dword ptr [eax+22]
 00493EB6    call        SameText
 00493EBB    push        eax
 00493EBC    dec         dword ptr [ebp-0B94]
 00493EC2    lea         eax,[ebp-910]
 00493EC8    mov         edx,2
 00493ECD    call        0067DCA0
 00493ED2    pop         ecx
 00493ED3    test        cl,cl
>00493ED5    je          00494003
 00493EDB    mov         eax,dword ptr [ebp-0BB4]
 00493EE1    mov         byte ptr [eax+5],28
 00493EE5    push        4
 00493EE7    mov         word ptr [ebp-0BA0],11B4
 00493EF0    mov         edx,6B6332
 00493EF5    lea         eax,[ebp-914]
 00493EFB    call        0067DAB4
 00493F00    inc         dword ptr [ebp-0B94]
 00493F06    push        dword ptr [eax]
 00493F08    mov         edx,6B6334
 00493F0D    lea         eax,[ebp-918]
 00493F13    call        0067DAB4
 00493F18    inc         dword ptr [ebp-0B94]
 00493F1E    push        dword ptr [eax]
 00493F20    xor         ecx,ecx
 00493F22    mov         dl,22
 00493F24    mov         eax,dword ptr [ebp-0BB4]
 00493F2A    mov         eax,dword ptr [eax+1E]
 00493F2D    call        00483A34
 00493F32    dec         dword ptr [ebp-0B94]
 00493F38    lea         eax,[ebp-918]
 00493F3E    mov         edx,2
 00493F43    call        0067DCA0
 00493F48    dec         dword ptr [ebp-0B94]
 00493F4E    lea         eax,[ebp-914]
 00493F54    mov         edx,2
 00493F59    call        0067DCA0
 00493F5E    push        4
 00493F60    mov         word ptr [ebp-0BA0],11C0
 00493F69    mov         edx,6B633D
 00493F6E    lea         eax,[ebp-91C]
 00493F74    call        0067DAB4
 00493F79    inc         dword ptr [ebp-0B94]
 00493F7F    push        dword ptr [eax]
 00493F81    mov         edx,6B633F
 00493F86    lea         eax,[ebp-920]
 00493F8C    call        0067DAB4
 00493F91    inc         dword ptr [ebp-0B94]
 00493F97    push        dword ptr [eax]
 00493F99    mov         ecx,1
 00493F9E    mov         dl,21
 00493FA0    mov         eax,dword ptr [ebp-0BB4]
 00493FA6    mov         eax,dword ptr [eax+1E]
 00493FA9    call        00483A34
 00493FAE    dec         dword ptr [ebp-0B94]
 00493FB4    lea         eax,[ebp-920]
 00493FBA    mov         edx,2
 00493FBF    call        0067DCA0
 00493FC4    dec         dword ptr [ebp-0B94]
 00493FCA    lea         eax,[ebp-91C]
 00493FD0    mov         edx,2
 00493FD5    call        0067DCA0
 00493FDA    mov         al,1
 00493FDC    push        eax
 00493FDD    dec         dword ptr [ebp-0B94]
 00493FE3    lea         eax,[ebp-4]
 00493FE6    mov         edx,2
 00493FEB    call        0067DCA0
 00493FF0    pop         eax
 00493FF1    mov         edx,dword ptr [ebp-0BB0]
 00493FF7    mov         dword ptr fs:[0],edx
>00493FFE    jmp         00496D77
 00494003    mov         word ptr [ebp-0BA0],11CC
 0049400C    mov         edx,6B634D
 00494011    lea         eax,[ebp-924]
 00494017    call        0067DAB4
 0049401C    inc         dword ptr [ebp-0B94]
 00494022    mov         edx,dword ptr [eax]
 00494024    mov         eax,dword ptr [ebp-0BB4]
 0049402A    mov         eax,dword ptr [eax+22]
 0049402D    call        SameText
 00494032    push        eax
 00494033    dec         dword ptr [ebp-0B94]
 00494039    lea         eax,[ebp-924]
 0049403F    mov         edx,2
 00494044    call        0067DCA0
 00494049    pop         ecx
 0049404A    test        cl,cl
>0049404C    je          004941F6
 00494052    mov         eax,dword ptr [ebp-0BB4]
 00494058    mov         byte ptr [eax+5],28
 0049405C    push        4
 0049405E    mov         word ptr [ebp-0BA0],11D8
 00494067    mov         edx,6B635B
 0049406C    lea         eax,[ebp-928]
 00494072    call        0067DAB4
 00494077    inc         dword ptr [ebp-0B94]
 0049407D    push        dword ptr [eax]
 0049407F    mov         edx,6B635D
 00494084    lea         eax,[ebp-92C]
 0049408A    call        0067DAB4
 0049408F    inc         dword ptr [ebp-0B94]
 00494095    push        dword ptr [eax]
 00494097    xor         ecx,ecx
 00494099    mov         dl,22
 0049409B    mov         eax,dword ptr [ebp-0BB4]
 004940A1    mov         eax,dword ptr [eax+1E]
 004940A4    call        00483A34
 004940A9    dec         dword ptr [ebp-0B94]
 004940AF    lea         eax,[ebp-92C]
 004940B5    mov         edx,2
 004940BA    call        0067DCA0
 004940BF    dec         dword ptr [ebp-0B94]
 004940C5    lea         eax,[ebp-928]
 004940CB    mov         edx,2
 004940D0    call        0067DCA0
 004940D5    push        4
 004940D7    mov         word ptr [ebp-0BA0],11E4
 004940E0    mov         edx,6B6366
 004940E5    lea         eax,[ebp-930]
 004940EB    call        0067DAB4
 004940F0    inc         dword ptr [ebp-0B94]
 004940F6    push        dword ptr [eax]
 004940F8    mov         edx,6B6368
 004940FD    lea         eax,[ebp-934]
 00494103    call        0067DAB4
 00494108    inc         dword ptr [ebp-0B94]
 0049410E    push        dword ptr [eax]
 00494110    mov         ecx,1
 00494115    mov         dl,21
 00494117    mov         eax,dword ptr [ebp-0BB4]
 0049411D    mov         eax,dword ptr [eax+1E]
 00494120    call        00483A34
 00494125    dec         dword ptr [ebp-0B94]
 0049412B    lea         eax,[ebp-934]
 00494131    mov         edx,2
 00494136    call        0067DCA0
 0049413B    dec         dword ptr [ebp-0B94]
 00494141    lea         eax,[ebp-930]
 00494147    mov         edx,2
 0049414C    call        0067DCA0
 00494151    push        4
 00494153    mov         word ptr [ebp-0BA0],11F0
 0049415C    mov         edx,6B6371
 00494161    lea         eax,[ebp-938]
 00494167    call        0067DAB4
 0049416C    inc         dword ptr [ebp-0B94]
 00494172    push        dword ptr [eax]
 00494174    mov         edx,6B6377
 00494179    lea         eax,[ebp-93C]
 0049417F    call        0067DAB4
 00494184    inc         dword ptr [ebp-0B94]
 0049418A    push        dword ptr [eax]
 0049418C    mov         ecx,2
 00494191    mov         dl,21
 00494193    mov         eax,dword ptr [ebp-0BB4]
 00494199    mov         eax,dword ptr [eax+1E]
 0049419C    call        00483A34
 004941A1    dec         dword ptr [ebp-0B94]
 004941A7    lea         eax,[ebp-93C]
 004941AD    mov         edx,2
 004941B2    call        0067DCA0
 004941B7    dec         dword ptr [ebp-0B94]
 004941BD    lea         eax,[ebp-938]
 004941C3    mov         edx,2
 004941C8    call        0067DCA0
 004941CD    mov         al,1
 004941CF    push        eax
 004941D0    dec         dword ptr [ebp-0B94]
 004941D6    lea         eax,[ebp-4]
 004941D9    mov         edx,2
 004941DE    call        0067DCA0
 004941E3    pop         eax
 004941E4    mov         edx,dword ptr [ebp-0BB0]
 004941EA    mov         dword ptr fs:[0],edx
>004941F1    jmp         00496D77
 004941F6    mov         word ptr [ebp-0BA0],11FC
 004941FF    mov         edx,6B637F
 00494204    lea         eax,[ebp-940]
 0049420A    call        0067DAB4
 0049420F    inc         dword ptr [ebp-0B94]
 00494215    mov         edx,dword ptr [eax]
 00494217    mov         eax,dword ptr [ebp-0BB4]
 0049421D    mov         eax,dword ptr [eax+22]
 00494220    call        SameText
 00494225    push        eax
 00494226    dec         dword ptr [ebp-0B94]
 0049422C    lea         eax,[ebp-940]
 00494232    mov         edx,2
 00494237    call        0067DCA0
 0049423C    pop         ecx
 0049423D    test        cl,cl
>0049423F    je          0049436D
 00494245    mov         eax,dword ptr [ebp-0BB4]
 0049424B    mov         byte ptr [eax+5],28
 0049424F    push        4
 00494251    mov         word ptr [ebp-0BA0],1208
 0049425A    mov         edx,6B638E
 0049425F    lea         eax,[ebp-944]
 00494265    call        0067DAB4
 0049426A    inc         dword ptr [ebp-0B94]
 00494270    push        dword ptr [eax]
 00494272    mov         edx,6B6390
 00494277    lea         eax,[ebp-948]
 0049427D    call        0067DAB4
 00494282    inc         dword ptr [ebp-0B94]
 00494288    push        dword ptr [eax]
 0049428A    xor         ecx,ecx
 0049428C    mov         dl,22
 0049428E    mov         eax,dword ptr [ebp-0BB4]
 00494294    mov         eax,dword ptr [eax+1E]
 00494297    call        00483A34
 0049429C    dec         dword ptr [ebp-0B94]
 004942A2    lea         eax,[ebp-948]
 004942A8    mov         edx,2
 004942AD    call        0067DCA0
 004942B2    dec         dword ptr [ebp-0B94]
 004942B8    lea         eax,[ebp-944]
 004942BE    mov         edx,2
 004942C3    call        0067DCA0
 004942C8    push        4
 004942CA    mov         word ptr [ebp-0BA0],1214
 004942D3    mov         edx,6B6399
 004942D8    lea         eax,[ebp-94C]
 004942DE    call        0067DAB4
 004942E3    inc         dword ptr [ebp-0B94]
 004942E9    push        dword ptr [eax]
 004942EB    mov         edx,6B639B
 004942F0    lea         eax,[ebp-950]
 004942F6    call        0067DAB4
 004942FB    inc         dword ptr [ebp-0B94]
 00494301    push        dword ptr [eax]
 00494303    mov         ecx,1
 00494308    mov         dl,21
 0049430A    mov         eax,dword ptr [ebp-0BB4]
 00494310    mov         eax,dword ptr [eax+1E]
 00494313    call        00483A34
 00494318    dec         dword ptr [ebp-0B94]
 0049431E    lea         eax,[ebp-950]
 00494324    mov         edx,2
 00494329    call        0067DCA0
 0049432E    dec         dword ptr [ebp-0B94]
 00494334    lea         eax,[ebp-94C]
 0049433A    mov         edx,2
 0049433F    call        0067DCA0
 00494344    mov         al,1
 00494346    push        eax
 00494347    dec         dword ptr [ebp-0B94]
 0049434D    lea         eax,[ebp-4]
 00494350    mov         edx,2
 00494355    call        0067DCA0
 0049435A    pop         eax
 0049435B    mov         edx,dword ptr [ebp-0BB0]
 00494361    mov         dword ptr fs:[0],edx
>00494368    jmp         00496D77
 0049436D    mov         word ptr [ebp-0BA0],1220
 00494376    mov         edx,6B63A4
 0049437B    lea         eax,[ebp-954]
 00494381    call        0067DAB4
 00494386    inc         dword ptr [ebp-0B94]
 0049438C    mov         edx,dword ptr [eax]
 0049438E    mov         eax,dword ptr [ebp-0BB4]
 00494394    mov         eax,dword ptr [eax+22]
 00494397    call        SameText
 0049439C    push        eax
 0049439D    dec         dword ptr [ebp-0B94]
 004943A3    lea         eax,[ebp-954]
 004943A9    mov         edx,2
 004943AE    call        0067DCA0
 004943B3    pop         ecx
 004943B4    test        cl,cl
>004943B6    je          0049452D
 004943BC    mov         eax,dword ptr [ebp-0BB4]
 004943C2    mov         byte ptr [eax+5],29
 004943C6    mov         word ptr [ebp-0BA0],122C
 004943CF    mov         edx,6B63AD
 004943D4    lea         eax,[ebp-958]
 004943DA    call        0067DAB4
 004943DF    inc         dword ptr [ebp-0B94]
 004943E5    lea         edx,[ebp-958]
 004943EB    mov         eax,dword ptr [ebp-0BB4]
 004943F1    add         eax,0A
 004943F4    call        0067DCD0
 004943F9    dec         dword ptr [ebp-0B94]
 004943FF    lea         eax,[ebp-958]
 00494405    mov         edx,2
 0049440A    call        0067DCA0
 0049440F    push        4
 00494411    mov         word ptr [ebp-0BA0],1238
 0049441A    mov         edx,6B63B5
 0049441F    lea         eax,[ebp-95C]
 00494425    call        0067DAB4
 0049442A    inc         dword ptr [ebp-0B94]
 00494430    push        dword ptr [eax]
 00494432    mov         edx,6B63BB
 00494437    lea         eax,[ebp-960]
 0049443D    call        0067DAB4
 00494442    inc         dword ptr [ebp-0B94]
 00494448    push        dword ptr [eax]
 0049444A    xor         ecx,ecx
 0049444C    mov         dl,21
 0049444E    mov         eax,dword ptr [ebp-0BB4]
 00494454    mov         eax,dword ptr [eax+1E]
 00494457    call        00483A34
 0049445C    dec         dword ptr [ebp-0B94]
 00494462    lea         eax,[ebp-960]
 00494468    mov         edx,2
 0049446D    call        0067DCA0
 00494472    dec         dword ptr [ebp-0B94]
 00494478    lea         eax,[ebp-95C]
 0049447E    mov         edx,2
 00494483    call        0067DCA0
 00494488    push        4
 0049448A    mov         word ptr [ebp-0BA0],1244
 00494493    mov         edx,6B63C3
 00494498    lea         eax,[ebp-964]
 0049449E    call        0067DAB4
 004944A3    inc         dword ptr [ebp-0B94]
 004944A9    push        dword ptr [eax]
 004944AB    mov         edx,6B63CA
 004944B0    lea         eax,[ebp-968]
 004944B6    call        0067DAB4
 004944BB    inc         dword ptr [ebp-0B94]
 004944C1    push        dword ptr [eax]
 004944C3    mov         ecx,1
 004944C8    mov         dl,21
 004944CA    mov         eax,dword ptr [ebp-0BB4]
 004944D0    mov         eax,dword ptr [eax+1E]
 004944D3    call        00483A34
 004944D8    dec         dword ptr [ebp-0B94]
 004944DE    lea         eax,[ebp-968]
 004944E4    mov         edx,2
 004944E9    call        0067DCA0
 004944EE    dec         dword ptr [ebp-0B94]
 004944F4    lea         eax,[ebp-964]
 004944FA    mov         edx,2
 004944FF    call        0067DCA0
 00494504    mov         al,1
 00494506    push        eax
 00494507    dec         dword ptr [ebp-0B94]
 0049450D    lea         eax,[ebp-4]
 00494510    mov         edx,2
 00494515    call        0067DCA0
 0049451A    pop         eax
 0049451B    mov         edx,dword ptr [ebp-0BB0]
 00494521    mov         dword ptr fs:[0],edx
>00494528    jmp         00496D77
 0049452D    mov         word ptr [ebp-0BA0],1250
 00494536    mov         edx,6B63D1
 0049453B    lea         eax,[ebp-96C]
 00494541    call        0067DAB4
 00494546    inc         dword ptr [ebp-0B94]
 0049454C    mov         edx,dword ptr [eax]
 0049454E    mov         eax,dword ptr [ebp-0BB4]
 00494554    mov         eax,dword ptr [eax+22]
 00494557    call        SameText
 0049455C    push        eax
 0049455D    dec         dword ptr [ebp-0B94]
 00494563    lea         eax,[ebp-96C]
 00494569    mov         edx,2
 0049456E    call        0067DCA0
 00494573    pop         ecx
 00494574    test        cl,cl
>00494576    je          00494720
 0049457C    mov         eax,dword ptr [ebp-0BB4]
 00494582    mov         byte ptr [eax+5],28
 00494586    push        4
 00494588    mov         word ptr [ebp-0BA0],125C
 00494591    mov         edx,6B63D9
 00494596    lea         eax,[ebp-970]
 0049459C    call        0067DAB4
 004945A1    inc         dword ptr [ebp-0B94]
 004945A7    push        dword ptr [eax]
 004945A9    mov         edx,6B63E1
 004945AE    lea         eax,[ebp-974]
 004945B4    call        0067DAB4
 004945B9    inc         dword ptr [ebp-0B94]
 004945BF    push        dword ptr [eax]
 004945C1    xor         ecx,ecx
 004945C3    mov         dl,21
 004945C5    mov         eax,dword ptr [ebp-0BB4]
 004945CB    mov         eax,dword ptr [eax+1E]
 004945CE    call        00483A34
 004945D3    dec         dword ptr [ebp-0B94]
 004945D9    lea         eax,[ebp-974]
 004945DF    mov         edx,2
 004945E4    call        0067DCA0
 004945E9    dec         dword ptr [ebp-0B94]
 004945EF    lea         eax,[ebp-970]
 004945F5    mov         edx,2
 004945FA    call        0067DCA0
 004945FF    push        4
 00494601    mov         word ptr [ebp-0BA0],1268
 0049460A    mov         edx,6B63E8
 0049460F    lea         eax,[ebp-978]
 00494615    call        0067DAB4
 0049461A    inc         dword ptr [ebp-0B94]
 00494620    push        dword ptr [eax]
 00494622    mov         edx,6B63F1
 00494627    lea         eax,[ebp-97C]
 0049462D    call        0067DAB4
 00494632    inc         dword ptr [ebp-0B94]
 00494638    push        dword ptr [eax]
 0049463A    mov         ecx,1
 0049463F    mov         dl,21
 00494641    mov         eax,dword ptr [ebp-0BB4]
 00494647    mov         eax,dword ptr [eax+1E]
 0049464A    call        00483A34
 0049464F    dec         dword ptr [ebp-0B94]
 00494655    lea         eax,[ebp-97C]
 0049465B    mov         edx,2
 00494660    call        0067DCA0
 00494665    dec         dword ptr [ebp-0B94]
 0049466B    lea         eax,[ebp-978]
 00494671    mov         edx,2
 00494676    call        0067DCA0
 0049467B    push        4
 0049467D    mov         word ptr [ebp-0BA0],1274
 00494686    mov         edx,6B63F8
 0049468B    lea         eax,[ebp-980]
 00494691    call        0067DAB4
 00494696    inc         dword ptr [ebp-0B94]
 0049469C    push        dword ptr [eax]
 0049469E    mov         edx,6B6403
 004946A3    lea         eax,[ebp-984]
 004946A9    call        0067DAB4
 004946AE    inc         dword ptr [ebp-0B94]
 004946B4    push        dword ptr [eax]
 004946B6    mov         ecx,2
 004946BB    mov         dl,21
 004946BD    mov         eax,dword ptr [ebp-0BB4]
 004946C3    mov         eax,dword ptr [eax+1E]
 004946C6    call        00483A34
 004946CB    dec         dword ptr [ebp-0B94]
 004946D1    lea         eax,[ebp-984]
 004946D7    mov         edx,2
 004946DC    call        0067DCA0
 004946E1    dec         dword ptr [ebp-0B94]
 004946E7    lea         eax,[ebp-980]
 004946ED    mov         edx,2
 004946F2    call        0067DCA0
 004946F7    mov         al,1
 004946F9    push        eax
 004946FA    dec         dword ptr [ebp-0B94]
 00494700    lea         eax,[ebp-4]
 00494703    mov         edx,2
 00494708    call        0067DCA0
 0049470D    pop         eax
 0049470E    mov         edx,dword ptr [ebp-0BB0]
 00494714    mov         dword ptr fs:[0],edx
>0049471B    jmp         00496D77
 00494720    mov         word ptr [ebp-0BA0],1280
 00494729    mov         edx,6B640B
 0049472E    lea         eax,[ebp-988]
 00494734    call        0067DAB4
 00494739    inc         dword ptr [ebp-0B94]
 0049473F    mov         edx,dword ptr [eax]
 00494741    mov         eax,dword ptr [ebp-0BB4]
 00494747    mov         eax,dword ptr [eax+22]
 0049474A    call        SameText
 0049474F    push        eax
 00494750    dec         dword ptr [ebp-0B94]
 00494756    lea         eax,[ebp-988]
 0049475C    mov         edx,2
 00494761    call        0067DCA0
 00494766    pop         ecx
 00494767    test        cl,cl
>00494769    je          0049479E
 0049476B    mov         eax,dword ptr [ebp-0BB4]
 00494771    mov         byte ptr [eax+5],28
 00494775    mov         al,1
 00494777    push        eax
 00494778    dec         dword ptr [ebp-0B94]
 0049477E    lea         eax,[ebp-4]
 00494781    mov         edx,2
 00494786    call        0067DCA0
 0049478B    pop         eax
 0049478C    mov         edx,dword ptr [ebp-0BB0]
 00494792    mov         dword ptr fs:[0],edx
>00494799    jmp         00496D77
 0049479E    mov         word ptr [ebp-0BA0],128C
 004947A7    mov         edx,6B6415
 004947AC    lea         eax,[ebp-98C]
 004947B2    call        0067DAB4
 004947B7    inc         dword ptr [ebp-0B94]
 004947BD    mov         edx,dword ptr [eax]
 004947BF    mov         eax,dword ptr [ebp-0BB4]
 004947C5    mov         eax,dword ptr [eax+22]
 004947C8    call        SameText
 004947CD    push        eax
 004947CE    dec         dword ptr [ebp-0B94]
 004947D4    lea         eax,[ebp-98C]
 004947DA    mov         edx,2
 004947DF    call        0067DCA0
 004947E4    pop         ecx
 004947E5    test        cl,cl
>004947E7    je          00494A0D
 004947ED    mov         eax,dword ptr [ebp-0BB4]
 004947F3    mov         byte ptr [eax+5],28
 004947F7    push        4
 004947F9    mov         word ptr [ebp-0BA0],1298
 00494802    mov         edx,6B6420
 00494807    lea         eax,[ebp-990]
 0049480D    call        0067DAB4
 00494812    inc         dword ptr [ebp-0B94]
 00494818    push        dword ptr [eax]
 0049481A    mov         edx,6B6425
 0049481F    lea         eax,[ebp-994]
 00494825    call        0067DAB4
 0049482A    inc         dword ptr [ebp-0B94]
 00494830    push        dword ptr [eax]
 00494832    xor         ecx,ecx
 00494834    mov         dl,21
 00494836    mov         eax,dword ptr [ebp-0BB4]
 0049483C    mov         eax,dword ptr [eax+1E]
 0049483F    call        00483A34
 00494844    dec         dword ptr [ebp-0B94]
 0049484A    lea         eax,[ebp-994]
 00494850    mov         edx,2
 00494855    call        0067DCA0
 0049485A    dec         dword ptr [ebp-0B94]
 00494860    lea         eax,[ebp-990]
 00494866    mov         edx,2
 0049486B    call        0067DCA0
 00494870    push        4
 00494872    mov         word ptr [ebp-0BA0],12A4
 0049487B    mov         edx,6B642D
 00494880    lea         eax,[ebp-998]
 00494886    call        0067DAB4
 0049488B    inc         dword ptr [ebp-0B94]
 00494891    push        dword ptr [eax]
 00494893    mov         edx,6B6434
 00494898    lea         eax,[ebp-99C]
 0049489E    call        0067DAB4
 004948A3    inc         dword ptr [ebp-0B94]
 004948A9    push        dword ptr [eax]
 004948AB    mov         ecx,1
 004948B0    mov         dl,21
 004948B2    mov         eax,dword ptr [ebp-0BB4]
 004948B8    mov         eax,dword ptr [eax+1E]
 004948BB    call        00483A34
 004948C0    dec         dword ptr [ebp-0B94]
 004948C6    lea         eax,[ebp-99C]
 004948CC    mov         edx,2
 004948D1    call        0067DCA0
 004948D6    dec         dword ptr [ebp-0B94]
 004948DC    lea         eax,[ebp-998]
 004948E2    mov         edx,2
 004948E7    call        0067DCA0
 004948EC    push        4
 004948EE    mov         word ptr [ebp-0BA0],12B0
 004948F7    mov         edx,6B643C
 004948FC    lea         eax,[ebp-9A0]
 00494902    call        0067DAB4
 00494907    inc         dword ptr [ebp-0B94]
 0049490D    push        dword ptr [eax]
 0049490F    mov         edx,6B6445
 00494914    lea         eax,[ebp-9A4]
 0049491A    call        0067DAB4
 0049491F    inc         dword ptr [ebp-0B94]
 00494925    push        dword ptr [eax]
 00494927    mov         ecx,2
 0049492C    mov         dl,21
 0049492E    mov         eax,dword ptr [ebp-0BB4]
 00494934    mov         eax,dword ptr [eax+1E]
 00494937    call        00483A34
 0049493C    dec         dword ptr [ebp-0B94]
 00494942    lea         eax,[ebp-9A4]
 00494948    mov         edx,2
 0049494D    call        0067DCA0
 00494952    dec         dword ptr [ebp-0B94]
 00494958    lea         eax,[ebp-9A0]
 0049495E    mov         edx,2
 00494963    call        0067DCA0
 00494968    push        4
 0049496A    mov         word ptr [ebp-0BA0],12BC
 00494973    mov         edx,6B644D
 00494978    lea         eax,[ebp-9A8]
 0049497E    call        0067DAB4
 00494983    inc         dword ptr [ebp-0B94]
 00494989    push        dword ptr [eax]
 0049498B    mov         edx,6B6451
 00494990    lea         eax,[ebp-9AC]
 00494996    call        0067DAB4
 0049499B    inc         dword ptr [ebp-0B94]
 004949A1    push        dword ptr [eax]
 004949A3    mov         ecx,8
 004949A8    mov         dl,21
 004949AA    mov         eax,dword ptr [ebp-0BB4]
 004949B0    mov         eax,dword ptr [eax+1E]
 004949B3    call        00483A34
 004949B8    dec         dword ptr [ebp-0B94]
 004949BE    lea         eax,[ebp-9AC]
 004949C4    mov         edx,2
 004949C9    call        0067DCA0
 004949CE    dec         dword ptr [ebp-0B94]
 004949D4    lea         eax,[ebp-9A8]
 004949DA    mov         edx,2
 004949DF    call        0067DCA0
 004949E4    mov         al,1
 004949E6    push        eax
 004949E7    dec         dword ptr [ebp-0B94]
 004949ED    lea         eax,[ebp-4]
 004949F0    mov         edx,2
 004949F5    call        0067DCA0
 004949FA    pop         eax
 004949FB    mov         edx,dword ptr [ebp-0BB0]
 00494A01    mov         dword ptr fs:[0],edx
>00494A08    jmp         00496D77
 00494A0D    mov         word ptr [ebp-0BA0],12C8
 00494A16    mov         edx,6B6459
 00494A1B    lea         eax,[ebp-9B0]
 00494A21    call        0067DAB4
 00494A26    inc         dword ptr [ebp-0B94]
 00494A2C    mov         edx,dword ptr [eax]
 00494A2E    mov         eax,dword ptr [ebp-0BB4]
 00494A34    mov         eax,dword ptr [eax+22]
 00494A37    call        SameText
 00494A3C    push        eax
 00494A3D    dec         dword ptr [ebp-0B94]
 00494A43    lea         eax,[ebp-9B0]
 00494A49    mov         edx,2
 00494A4E    call        0067DCA0
 00494A53    pop         ecx
 00494A54    test        cl,cl
>00494A56    je          00494C00
 00494A5C    mov         eax,dword ptr [ebp-0BB4]
 00494A62    mov         byte ptr [eax+5],28
 00494A66    push        4
 00494A68    mov         word ptr [ebp-0BA0],12D4
 00494A71    mov         edx,6B6465
 00494A76    lea         eax,[ebp-9B4]
 00494A7C    call        0067DAB4
 00494A81    inc         dword ptr [ebp-0B94]
 00494A87    push        dword ptr [eax]
 00494A89    mov         edx,6B646A
 00494A8E    lea         eax,[ebp-9B8]
 00494A94    call        0067DAB4
 00494A99    inc         dword ptr [ebp-0B94]
 00494A9F    push        dword ptr [eax]
 00494AA1    xor         ecx,ecx
 00494AA3    mov         dl,21
 00494AA5    mov         eax,dword ptr [ebp-0BB4]
 00494AAB    mov         eax,dword ptr [eax+1E]
 00494AAE    call        00483A34
 00494AB3    dec         dword ptr [ebp-0B94]
 00494AB9    lea         eax,[ebp-9B8]
 00494ABF    mov         edx,2
 00494AC4    call        0067DCA0
 00494AC9    dec         dword ptr [ebp-0B94]
 00494ACF    lea         eax,[ebp-9B4]
 00494AD5    mov         edx,2
 00494ADA    call        0067DCA0
 00494ADF    push        4
 00494AE1    mov         word ptr [ebp-0BA0],12E0
 00494AEA    mov         edx,6B6472
 00494AEF    lea         eax,[ebp-9BC]
 00494AF5    call        0067DAB4
 00494AFA    inc         dword ptr [ebp-0B94]
 00494B00    push        dword ptr [eax]
 00494B02    mov         edx,6B6479
 00494B07    lea         eax,[ebp-9C0]
 00494B0D    call        0067DAB4
 00494B12    inc         dword ptr [ebp-0B94]
 00494B18    push        dword ptr [eax]
 00494B1A    mov         ecx,1
 00494B1F    mov         dl,21
 00494B21    mov         eax,dword ptr [ebp-0BB4]
 00494B27    mov         eax,dword ptr [eax+1E]
 00494B2A    call        00483A34
 00494B2F    dec         dword ptr [ebp-0B94]
 00494B35    lea         eax,[ebp-9C0]
 00494B3B    mov         edx,2
 00494B40    call        0067DCA0
 00494B45    dec         dword ptr [ebp-0B94]
 00494B4B    lea         eax,[ebp-9BC]
 00494B51    mov         edx,2
 00494B56    call        0067DCA0
 00494B5B    push        4
 00494B5D    mov         word ptr [ebp-0BA0],12EC
 00494B66    mov         edx,6B6481
 00494B6B    lea         eax,[ebp-9C4]
 00494B71    call        0067DAB4
 00494B76    inc         dword ptr [ebp-0B94]
 00494B7C    push        dword ptr [eax]
 00494B7E    mov         edx,6B648A
 00494B83    lea         eax,[ebp-9C8]
 00494B89    call        0067DAB4
 00494B8E    inc         dword ptr [ebp-0B94]
 00494B94    push        dword ptr [eax]
 00494B96    mov         ecx,2
 00494B9B    mov         dl,21
 00494B9D    mov         eax,dword ptr [ebp-0BB4]
 00494BA3    mov         eax,dword ptr [eax+1E]
 00494BA6    call        00483A34
 00494BAB    dec         dword ptr [ebp-0B94]
 00494BB1    lea         eax,[ebp-9C8]
 00494BB7    mov         edx,2
 00494BBC    call        0067DCA0
 00494BC1    dec         dword ptr [ebp-0B94]
 00494BC7    lea         eax,[ebp-9C4]
 00494BCD    mov         edx,2
 00494BD2    call        0067DCA0
 00494BD7    mov         al,1
 00494BD9    push        eax
 00494BDA    dec         dword ptr [ebp-0B94]
 00494BE0    lea         eax,[ebp-4]
 00494BE3    mov         edx,2
 00494BE8    call        0067DCA0
 00494BED    pop         eax
 00494BEE    mov         edx,dword ptr [ebp-0BB0]
 00494BF4    mov         dword ptr fs:[0],edx
>00494BFB    jmp         00496D77
 00494C00    mov         word ptr [ebp-0BA0],12F8
 00494C09    mov         edx,6B6492
 00494C0E    lea         eax,[ebp-9CC]
 00494C14    call        0067DAB4
 00494C19    inc         dword ptr [ebp-0B94]
 00494C1F    mov         edx,dword ptr [eax]
 00494C21    mov         eax,dword ptr [ebp-0BB4]
 00494C27    mov         eax,dword ptr [eax+22]
 00494C2A    call        SameText
 00494C2F    push        eax
 00494C30    dec         dword ptr [ebp-0B94]
 00494C36    lea         eax,[ebp-9CC]
 00494C3C    mov         edx,2
 00494C41    call        0067DCA0
 00494C46    pop         ecx
 00494C47    test        cl,cl
>00494C49    je          00494CFB
 00494C4F    mov         eax,dword ptr [ebp-0BB4]
 00494C55    mov         byte ptr [eax+5],28
 00494C59    push        4
 00494C5B    mov         word ptr [ebp-0BA0],1304
 00494C64    mov         edx,6B64A2
 00494C69    lea         eax,[ebp-9D0]
 00494C6F    call        0067DAB4
 00494C74    inc         dword ptr [ebp-0B94]
 00494C7A    push        dword ptr [eax]
 00494C7C    mov         edx,6B64A6
 00494C81    lea         eax,[ebp-9D4]
 00494C87    call        0067DAB4
 00494C8C    inc         dword ptr [ebp-0B94]
 00494C92    push        dword ptr [eax]
 00494C94    xor         ecx,ecx
 00494C96    mov         dl,21
 00494C98    mov         eax,dword ptr [ebp-0BB4]
 00494C9E    mov         eax,dword ptr [eax+1E]
 00494CA1    call        00483A34
 00494CA6    dec         dword ptr [ebp-0B94]
 00494CAC    lea         eax,[ebp-9D4]
 00494CB2    mov         edx,2
 00494CB7    call        0067DCA0
 00494CBC    dec         dword ptr [ebp-0B94]
 00494CC2    lea         eax,[ebp-9D0]
 00494CC8    mov         edx,2
 00494CCD    call        0067DCA0
 00494CD2    mov         al,1
 00494CD4    push        eax
 00494CD5    dec         dword ptr [ebp-0B94]
 00494CDB    lea         eax,[ebp-4]
 00494CDE    mov         edx,2
 00494CE3    call        0067DCA0
 00494CE8    pop         eax
 00494CE9    mov         edx,dword ptr [ebp-0BB0]
 00494CEF    mov         dword ptr fs:[0],edx
>00494CF6    jmp         00496D77
 00494CFB    mov         word ptr [ebp-0BA0],1310
 00494D04    mov         edx,6B64AE
 00494D09    lea         eax,[ebp-9D8]
 00494D0F    call        0067DAB4
 00494D14    inc         dword ptr [ebp-0B94]
 00494D1A    mov         edx,dword ptr [eax]
 00494D1C    mov         eax,dword ptr [ebp-0BB4]
 00494D22    mov         eax,dword ptr [eax+22]
 00494D25    call        SameText
 00494D2A    push        eax
 00494D2B    dec         dword ptr [ebp-0B94]
 00494D31    lea         eax,[ebp-9D8]
 00494D37    mov         edx,2
 00494D3C    call        0067DCA0
 00494D41    pop         ecx
 00494D42    test        cl,cl
>00494D44    je          00494EEE
 00494D4A    mov         eax,dword ptr [ebp-0BB4]
 00494D50    mov         byte ptr [eax+5],28
 00494D54    push        4
 00494D56    mov         word ptr [ebp-0BA0],131C
 00494D5F    mov         edx,6B64BB
 00494D64    lea         eax,[ebp-9DC]
 00494D6A    call        0067DAB4
 00494D6F    inc         dword ptr [ebp-0B94]
 00494D75    push        dword ptr [eax]
 00494D77    mov         edx,6B64C0
 00494D7C    lea         eax,[ebp-9E0]
 00494D82    call        0067DAB4
 00494D87    inc         dword ptr [ebp-0B94]
 00494D8D    push        dword ptr [eax]
 00494D8F    xor         ecx,ecx
 00494D91    mov         dl,22
 00494D93    mov         eax,dword ptr [ebp-0BB4]
 00494D99    mov         eax,dword ptr [eax+1E]
 00494D9C    call        00483A34
 00494DA1    dec         dword ptr [ebp-0B94]
 00494DA7    lea         eax,[ebp-9E0]
 00494DAD    mov         edx,2
 00494DB2    call        0067DCA0
 00494DB7    dec         dword ptr [ebp-0B94]
 00494DBD    lea         eax,[ebp-9DC]
 00494DC3    mov         edx,2
 00494DC8    call        0067DCA0
 00494DCD    push        4
 00494DCF    mov         word ptr [ebp-0BA0],1328
 00494DD8    mov         edx,6B64C8
 00494DDD    lea         eax,[ebp-9E4]
 00494DE3    call        0067DAB4
 00494DE8    inc         dword ptr [ebp-0B94]
 00494DEE    push        dword ptr [eax]
 00494DF0    mov         edx,6B64CF
 00494DF5    lea         eax,[ebp-9E8]
 00494DFB    call        0067DAB4
 00494E00    inc         dword ptr [ebp-0B94]
 00494E06    push        dword ptr [eax]
 00494E08    mov         ecx,1
 00494E0D    mov         dl,21
 00494E0F    mov         eax,dword ptr [ebp-0BB4]
 00494E15    mov         eax,dword ptr [eax+1E]
 00494E18    call        00483A34
 00494E1D    dec         dword ptr [ebp-0B94]
 00494E23    lea         eax,[ebp-9E8]
 00494E29    mov         edx,2
 00494E2E    call        0067DCA0
 00494E33    dec         dword ptr [ebp-0B94]
 00494E39    lea         eax,[ebp-9E4]
 00494E3F    mov         edx,2
 00494E44    call        0067DCA0
 00494E49    push        4
 00494E4B    mov         word ptr [ebp-0BA0],1334
 00494E54    mov         edx,6B64D7
 00494E59    lea         eax,[ebp-9EC]
 00494E5F    call        0067DAB4
 00494E64    inc         dword ptr [ebp-0B94]
 00494E6A    push        dword ptr [eax]
 00494E6C    mov         edx,6B64E0
 00494E71    lea         eax,[ebp-9F0]
 00494E77    call        0067DAB4
 00494E7C    inc         dword ptr [ebp-0B94]
 00494E82    push        dword ptr [eax]
 00494E84    mov         ecx,2
 00494E89    mov         dl,21
 00494E8B    mov         eax,dword ptr [ebp-0BB4]
 00494E91    mov         eax,dword ptr [eax+1E]
 00494E94    call        00483A34
 00494E99    dec         dword ptr [ebp-0B94]
 00494E9F    lea         eax,[ebp-9F0]
 00494EA5    mov         edx,2
 00494EAA    call        0067DCA0
 00494EAF    dec         dword ptr [ebp-0B94]
 00494EB5    lea         eax,[ebp-9EC]
 00494EBB    mov         edx,2
 00494EC0    call        0067DCA0
 00494EC5    mov         al,1
 00494EC7    push        eax
 00494EC8    dec         dword ptr [ebp-0B94]
 00494ECE    lea         eax,[ebp-4]
 00494ED1    mov         edx,2
 00494ED6    call        0067DCA0
 00494EDB    pop         eax
 00494EDC    mov         edx,dword ptr [ebp-0BB0]
 00494EE2    mov         dword ptr fs:[0],edx
>00494EE9    jmp         00496D77
 00494EEE    mov         word ptr [ebp-0BA0],1340
 00494EF7    mov         edx,6B64F2
 00494EFC    lea         eax,[ebp-9F4]
 00494F02    call        0067DAB4
 00494F07    inc         dword ptr [ebp-0B94]
 00494F0D    mov         edx,dword ptr [eax]
 00494F0F    mov         eax,dword ptr [ebp-0BB4]
 00494F15    mov         eax,dword ptr [eax+22]
 00494F18    call        SameText
 00494F1D    push        eax
 00494F1E    dec         dword ptr [ebp-0B94]
 00494F24    lea         eax,[ebp-9F4]
 00494F2A    mov         edx,2
 00494F2F    call        0067DCA0
 00494F34    pop         ecx
 00494F35    test        cl,cl
>00494F37    je          00495065
 00494F3D    mov         eax,dword ptr [ebp-0BB4]
 00494F43    mov         byte ptr [eax+5],28
 00494F47    push        4
 00494F49    mov         word ptr [ebp-0BA0],134C
 00494F52    mov         edx,6B6501
 00494F57    lea         eax,[ebp-9F8]
 00494F5D    call        0067DAB4
 00494F62    inc         dword ptr [ebp-0B94]
 00494F68    push        dword ptr [eax]
 00494F6A    mov         edx,6B6505
 00494F6F    lea         eax,[ebp-9FC]
 00494F75    call        0067DAB4
 00494F7A    inc         dword ptr [ebp-0B94]
 00494F80    push        dword ptr [eax]
 00494F82    xor         ecx,ecx
 00494F84    mov         dl,22
 00494F86    mov         eax,dword ptr [ebp-0BB4]
 00494F8C    mov         eax,dword ptr [eax+1E]
 00494F8F    call        00483A34
 00494F94    dec         dword ptr [ebp-0B94]
 00494F9A    lea         eax,[ebp-9FC]
 00494FA0    mov         edx,2
 00494FA5    call        0067DCA0
 00494FAA    dec         dword ptr [ebp-0B94]
 00494FB0    lea         eax,[ebp-9F8]
 00494FB6    mov         edx,2
 00494FBB    call        0067DCA0
 00494FC0    push        4
 00494FC2    mov         word ptr [ebp-0BA0],1358
 00494FCB    mov         edx,6B650D
 00494FD0    lea         eax,[ebp-0A00]
 00494FD6    call        0067DAB4
 00494FDB    inc         dword ptr [ebp-0B94]
 00494FE1    push        dword ptr [eax]
 00494FE3    mov         edx,6B6516
 00494FE8    lea         eax,[ebp-0A04]
 00494FEE    call        0067DAB4
 00494FF3    inc         dword ptr [ebp-0B94]
 00494FF9    push        dword ptr [eax]
 00494FFB    mov         ecx,1
 00495000    mov         dl,21
 00495002    mov         eax,dword ptr [ebp-0BB4]
 00495008    mov         eax,dword ptr [eax+1E]
 0049500B    call        00483A34
 00495010    dec         dword ptr [ebp-0B94]
 00495016    lea         eax,[ebp-0A04]
 0049501C    mov         edx,2
 00495021    call        0067DCA0
 00495026    dec         dword ptr [ebp-0B94]
 0049502C    lea         eax,[ebp-0A00]
 00495032    mov         edx,2
 00495037    call        0067DCA0
 0049503C    mov         al,1
 0049503E    push        eax
 0049503F    dec         dword ptr [ebp-0B94]
 00495045    lea         eax,[ebp-4]
 00495048    mov         edx,2
 0049504D    call        0067DCA0
 00495052    pop         eax
 00495053    mov         edx,dword ptr [ebp-0BB0]
 00495059    mov         dword ptr fs:[0],edx
>00495060    jmp         00496D77
 00495065    mov         word ptr [ebp-0BA0],1364
 0049506E    mov         edx,6B6528
 00495073    lea         eax,[ebp-0A08]
 00495079    call        0067DAB4
 0049507E    inc         dword ptr [ebp-0B94]
 00495084    mov         edx,dword ptr [eax]
 00495086    mov         eax,dword ptr [ebp-0BB4]
 0049508C    mov         eax,dword ptr [eax+22]
 0049508F    call        SameText
 00495094    push        eax
 00495095    dec         dword ptr [ebp-0B94]
 0049509B    lea         eax,[ebp-0A08]
 004950A1    mov         edx,2
 004950A6    call        0067DCA0
 004950AB    pop         ecx
 004950AC    test        cl,cl
>004950AE    je          00495258
 004950B4    mov         eax,dword ptr [ebp-0BB4]
 004950BA    mov         byte ptr [eax+5],28
 004950BE    push        4
 004950C0    mov         word ptr [ebp-0BA0],1370
 004950C9    mov         edx,6B6536
 004950CE    lea         eax,[ebp-0A0C]
 004950D4    call        0067DAB4
 004950D9    inc         dword ptr [ebp-0B94]
 004950DF    push        dword ptr [eax]
 004950E1    mov         edx,6B653A
 004950E6    lea         eax,[ebp-0A10]
 004950EC    call        0067DAB4
 004950F1    inc         dword ptr [ebp-0B94]
 004950F7    push        dword ptr [eax]
 004950F9    xor         ecx,ecx
 004950FB    mov         dl,21
 004950FD    mov         eax,dword ptr [ebp-0BB4]
 00495103    mov         eax,dword ptr [eax+1E]
 00495106    call        00483A34
 0049510B    dec         dword ptr [ebp-0B94]
 00495111    lea         eax,[ebp-0A10]
 00495117    mov         edx,2
 0049511C    call        0067DCA0
 00495121    dec         dword ptr [ebp-0B94]
 00495127    lea         eax,[ebp-0A0C]
 0049512D    mov         edx,2
 00495132    call        0067DCA0
 00495137    push        4
 00495139    mov         word ptr [ebp-0BA0],137C
 00495142    mov         edx,6B6542
 00495147    lea         eax,[ebp-0A14]
 0049514D    call        0067DAB4
 00495152    inc         dword ptr [ebp-0B94]
 00495158    push        dword ptr [eax]
 0049515A    mov         edx,6B654B
 0049515F    lea         eax,[ebp-0A18]
 00495165    call        0067DAB4
 0049516A    inc         dword ptr [ebp-0B94]
 00495170    push        dword ptr [eax]
 00495172    mov         ecx,1
 00495177    mov         dl,21
 00495179    mov         eax,dword ptr [ebp-0BB4]
 0049517F    mov         eax,dword ptr [eax+1E]
 00495182    call        00483A34
 00495187    dec         dword ptr [ebp-0B94]
 0049518D    lea         eax,[ebp-0A18]
 00495193    mov         edx,2
 00495198    call        0067DCA0
 0049519D    dec         dword ptr [ebp-0B94]
 004951A3    lea         eax,[ebp-0A14]
 004951A9    mov         edx,2
 004951AE    call        0067DCA0
 004951B3    push        4
 004951B5    mov         word ptr [ebp-0BA0],1388
 004951BE    mov         edx,6B655D
 004951C3    lea         eax,[ebp-0A1C]
 004951C9    call        0067DAB4
 004951CE    inc         dword ptr [ebp-0B94]
 004951D4    push        dword ptr [eax]
 004951D6    mov         edx,6B6564
 004951DB    lea         eax,[ebp-0A20]
 004951E1    call        0067DAB4
 004951E6    inc         dword ptr [ebp-0B94]
 004951EC    push        dword ptr [eax]
 004951EE    mov         ecx,2
 004951F3    mov         dl,22
 004951F5    mov         eax,dword ptr [ebp-0BB4]
 004951FB    mov         eax,dword ptr [eax+1E]
 004951FE    call        00483A34
 00495203    dec         dword ptr [ebp-0B94]
 00495209    lea         eax,[ebp-0A20]
 0049520F    mov         edx,2
 00495214    call        0067DCA0
 00495219    dec         dword ptr [ebp-0B94]
 0049521F    lea         eax,[ebp-0A1C]
 00495225    mov         edx,2
 0049522A    call        0067DCA0
 0049522F    mov         al,1
 00495231    push        eax
 00495232    dec         dword ptr [ebp-0B94]
 00495238    lea         eax,[ebp-4]
 0049523B    mov         edx,2
 00495240    call        0067DCA0
 00495245    pop         eax
 00495246    mov         edx,dword ptr [ebp-0BB0]
 0049524C    mov         dword ptr fs:[0],edx
>00495253    jmp         00496D77
 00495258    mov         word ptr [ebp-0BA0],1394
 00495261    mov         edx,6B656C
 00495266    lea         eax,[ebp-0A24]
 0049526C    call        0067DAB4
 00495271    inc         dword ptr [ebp-0B94]
 00495277    mov         edx,dword ptr [eax]
 00495279    mov         eax,dword ptr [ebp-0BB4]
 0049527F    mov         eax,dword ptr [eax+22]
 00495282    call        SameText
 00495287    push        eax
 00495288    dec         dword ptr [ebp-0B94]
 0049528E    lea         eax,[ebp-0A24]
 00495294    mov         edx,2
 00495299    call        0067DCA0
 0049529E    pop         ecx
 0049529F    test        cl,cl
>004952A1    je          00495543
 004952A7    mov         eax,dword ptr [ebp-0BB4]
 004952AD    mov         byte ptr [eax+5],28
 004952B1    push        4
 004952B3    mov         word ptr [ebp-0BA0],13A0
 004952BC    mov         edx,6B657F
 004952C1    lea         eax,[ebp-0A28]
 004952C7    call        0067DAB4
 004952CC    inc         dword ptr [ebp-0B94]
 004952D2    push        dword ptr [eax]
 004952D4    mov         edx,6B6583
 004952D9    lea         eax,[ebp-0A2C]
 004952DF    call        0067DAB4
 004952E4    inc         dword ptr [ebp-0B94]
 004952EA    push        dword ptr [eax]
 004952EC    xor         ecx,ecx
 004952EE    mov         dl,21
 004952F0    mov         eax,dword ptr [ebp-0BB4]
 004952F6    mov         eax,dword ptr [eax+1E]
 004952F9    call        00483A34
 004952FE    dec         dword ptr [ebp-0B94]
 00495304    lea         eax,[ebp-0A2C]
 0049530A    mov         edx,2
 0049530F    call        0067DCA0
 00495314    dec         dword ptr [ebp-0B94]
 0049531A    lea         eax,[ebp-0A28]
 00495320    mov         edx,2
 00495325    call        0067DCA0
 0049532A    push        4
 0049532C    mov         word ptr [ebp-0BA0],13AC
 00495335    mov         edx,6B658B
 0049533A    lea         eax,[ebp-0A30]
 00495340    call        0067DAB4
 00495345    inc         dword ptr [ebp-0B94]
 0049534B    push        dword ptr [eax]
 0049534D    mov         edx,6B6594
 00495352    lea         eax,[ebp-0A34]
 00495358    call        0067DAB4
 0049535D    inc         dword ptr [ebp-0B94]
 00495363    push        dword ptr [eax]
 00495365    mov         ecx,1
 0049536A    mov         dl,21
 0049536C    mov         eax,dword ptr [ebp-0BB4]
 00495372    mov         eax,dword ptr [eax+1E]
 00495375    call        00483A34
 0049537A    dec         dword ptr [ebp-0B94]
 00495380    lea         eax,[ebp-0A34]
 00495386    mov         edx,2
 0049538B    call        0067DCA0
 00495390    dec         dword ptr [ebp-0B94]
 00495396    lea         eax,[ebp-0A30]
 0049539C    mov         edx,2
 004953A1    call        0067DCA0
 004953A6    push        4
 004953A8    mov         word ptr [ebp-0BA0],13B8
 004953B1    mov         edx,6B65A6
 004953B6    lea         eax,[ebp-0A38]
 004953BC    call        0067DAB4
 004953C1    inc         dword ptr [ebp-0B94]
 004953C7    push        dword ptr [eax]
 004953C9    mov         edx,6B65AC
 004953CE    lea         eax,[ebp-0A3C]
 004953D4    call        0067DAB4
 004953D9    inc         dword ptr [ebp-0B94]
 004953DF    push        dword ptr [eax]
 004953E1    mov         ecx,2
 004953E6    mov         dl,21
 004953E8    mov         eax,dword ptr [ebp-0BB4]
 004953EE    mov         eax,dword ptr [eax+1E]
 004953F1    call        00483A34
 004953F6    dec         dword ptr [ebp-0B94]
 004953FC    lea         eax,[ebp-0A3C]
 00495402    mov         edx,2
 00495407    call        0067DCA0
 0049540C    dec         dword ptr [ebp-0B94]
 00495412    lea         eax,[ebp-0A38]
 00495418    mov         edx,2
 0049541D    call        0067DCA0
 00495422    push        4
 00495424    mov         word ptr [ebp-0BA0],13C4
 0049542D    mov         edx,6B65B4
 00495432    lea         eax,[ebp-0A40]
 00495438    call        0067DAB4
 0049543D    inc         dword ptr [ebp-0B94]
 00495443    push        dword ptr [eax]
 00495445    mov         edx,6B65BA
 0049544A    lea         eax,[ebp-0A44]
 00495450    call        0067DAB4
 00495455    inc         dword ptr [ebp-0B94]
 0049545B    push        dword ptr [eax]
 0049545D    mov         ecx,8
 00495462    mov         dl,21
 00495464    mov         eax,dword ptr [ebp-0BB4]
 0049546A    mov         eax,dword ptr [eax+1E]
 0049546D    call        00483A34
 00495472    dec         dword ptr [ebp-0B94]
 00495478    lea         eax,[ebp-0A44]
 0049547E    mov         edx,2
 00495483    call        0067DCA0
 00495488    dec         dword ptr [ebp-0B94]
 0049548E    lea         eax,[ebp-0A40]
 00495494    mov         edx,2
 00495499    call        0067DCA0
 0049549E    push        4
 004954A0    mov         word ptr [ebp-0BA0],13D0
 004954A9    mov         edx,6B65C2
 004954AE    lea         eax,[ebp-0A48]
 004954B4    call        0067DAB4
 004954B9    inc         dword ptr [ebp-0B94]
 004954BF    push        dword ptr [eax]
 004954C1    mov         edx,6B65C9
 004954C6    lea         eax,[ebp-0A4C]
 004954CC    call        0067DAB4
 004954D1    inc         dword ptr [ebp-0B94]
 004954D7    push        dword ptr [eax]
 004954D9    mov         ecx,0C
 004954DE    mov         dl,22
 004954E0    mov         eax,dword ptr [ebp-0BB4]
 004954E6    mov         eax,dword ptr [eax+1E]
 004954E9    call        00483A34
 004954EE    dec         dword ptr [ebp-0B94]
 004954F4    lea         eax,[ebp-0A4C]
 004954FA    mov         edx,2
 004954FF    call        0067DCA0
 00495504    dec         dword ptr [ebp-0B94]
 0049550A    lea         eax,[ebp-0A48]
 00495510    mov         edx,2
 00495515    call        0067DCA0
 0049551A    mov         al,1
 0049551C    push        eax
 0049551D    dec         dword ptr [ebp-0B94]
 00495523    lea         eax,[ebp-4]
 00495526    mov         edx,2
 0049552B    call        0067DCA0
 00495530    pop         eax
 00495531    mov         edx,dword ptr [ebp-0BB0]
 00495537    mov         dword ptr fs:[0],edx
>0049553E    jmp         00496D77
 00495543    mov         word ptr [ebp-0BA0],13DC
 0049554C    mov         edx,6B65D1
 00495551    lea         eax,[ebp-0A50]
 00495557    call        0067DAB4
 0049555C    inc         dword ptr [ebp-0B94]
 00495562    mov         edx,dword ptr [eax]
 00495564    mov         eax,dword ptr [ebp-0BB4]
 0049556A    mov         eax,dword ptr [eax+22]
 0049556D    call        SameText
 00495572    push        eax
 00495573    dec         dword ptr [ebp-0B94]
 00495579    lea         eax,[ebp-0A50]
 0049557F    mov         edx,2
 00495584    call        0067DCA0
 00495589    pop         ecx
 0049558A    test        cl,cl
>0049558C    je          00495687
 00495592    mov         eax,dword ptr [ebp-0BB4]
 00495598    mov         byte ptr [eax+5],29
 0049559C    mov         word ptr [ebp-0BA0],13E8
 004955A5    mov         edx,6B65DF
 004955AA    lea         eax,[ebp-0A54]
 004955B0    call        0067DAB4
 004955B5    inc         dword ptr [ebp-0B94]
 004955BB    lea         edx,[ebp-0A54]
 004955C1    mov         eax,dword ptr [ebp-0BB4]
 004955C7    add         eax,0A
 004955CA    call        0067DCD0
 004955CF    dec         dword ptr [ebp-0B94]
 004955D5    lea         eax,[ebp-0A54]
 004955DB    mov         edx,2
 004955E0    call        0067DCA0
 004955E5    push        4
 004955E7    mov         word ptr [ebp-0BA0],13F4
 004955F0    mov         edx,6B65E7
 004955F5    lea         eax,[ebp-0A58]
 004955FB    call        0067DAB4
 00495600    inc         dword ptr [ebp-0B94]
 00495606    push        dword ptr [eax]
 00495608    mov         edx,6B65EB
 0049560D    lea         eax,[ebp-0A5C]
 00495613    call        0067DAB4
 00495618    inc         dword ptr [ebp-0B94]
 0049561E    push        dword ptr [eax]
 00495620    xor         ecx,ecx
 00495622    mov         dl,21
 00495624    mov         eax,dword ptr [ebp-0BB4]
 0049562A    mov         eax,dword ptr [eax+1E]
 0049562D    call        00483A34
 00495632    dec         dword ptr [ebp-0B94]
 00495638    lea         eax,[ebp-0A5C]
 0049563E    mov         edx,2
 00495643    call        0067DCA0
 00495648    dec         dword ptr [ebp-0B94]
 0049564E    lea         eax,[ebp-0A58]
 00495654    mov         edx,2
 00495659    call        0067DCA0
 0049565E    mov         al,1
 00495660    push        eax
 00495661    dec         dword ptr [ebp-0B94]
 00495667    lea         eax,[ebp-4]
 0049566A    mov         edx,2
 0049566F    call        0067DCA0
 00495674    pop         eax
 00495675    mov         edx,dword ptr [ebp-0BB0]
 0049567B    mov         dword ptr fs:[0],edx
>00495682    jmp         00496D77
 00495687    mov         word ptr [ebp-0BA0],1400
 00495690    mov         edx,6B65F3
 00495695    lea         eax,[ebp-0A60]
 0049569B    call        0067DAB4
 004956A0    inc         dword ptr [ebp-0B94]
 004956A6    mov         edx,dword ptr [eax]
 004956A8    mov         eax,dword ptr [ebp-0BB4]
 004956AE    mov         eax,dword ptr [eax+22]
 004956B1    call        SameText
 004956B6    push        eax
 004956B7    dec         dword ptr [ebp-0B94]
 004956BD    lea         eax,[ebp-0A60]
 004956C3    mov         edx,2
 004956C8    call        0067DCA0
 004956CD    pop         ecx
 004956CE    test        cl,cl
>004956D0    je          004957CB
 004956D6    mov         eax,dword ptr [ebp-0BB4]
 004956DC    mov         byte ptr [eax+5],29
 004956E0    mov         word ptr [ebp-0BA0],140C
 004956E9    mov         edx,6B6603
 004956EE    lea         eax,[ebp-0A64]
 004956F4    call        0067DAB4
 004956F9    inc         dword ptr [ebp-0B94]
 004956FF    lea         edx,[ebp-0A64]
 00495705    mov         eax,dword ptr [ebp-0BB4]
 0049570B    add         eax,0A
 0049570E    call        0067DCD0
 00495713    dec         dword ptr [ebp-0B94]
 00495719    lea         eax,[ebp-0A64]
 0049571F    mov         edx,2
 00495724    call        0067DCA0
 00495729    push        4
 0049572B    mov         word ptr [ebp-0BA0],1418
 00495734    mov         edx,6B660B
 00495739    lea         eax,[ebp-0A68]
 0049573F    call        0067DAB4
 00495744    inc         dword ptr [ebp-0B94]
 0049574A    push        dword ptr [eax]
 0049574C    mov         edx,6B660F
 00495751    lea         eax,[ebp-0A6C]
 00495757    call        0067DAB4
 0049575C    inc         dword ptr [ebp-0B94]
 00495762    push        dword ptr [eax]
 00495764    xor         ecx,ecx
 00495766    mov         dl,21
 00495768    mov         eax,dword ptr [ebp-0BB4]
 0049576E    mov         eax,dword ptr [eax+1E]
 00495771    call        00483A34
 00495776    dec         dword ptr [ebp-0B94]
 0049577C    lea         eax,[ebp-0A6C]
 00495782    mov         edx,2
 00495787    call        0067DCA0
 0049578C    dec         dword ptr [ebp-0B94]
 00495792    lea         eax,[ebp-0A68]
 00495798    mov         edx,2
 0049579D    call        0067DCA0
 004957A2    mov         al,1
 004957A4    push        eax
 004957A5    dec         dword ptr [ebp-0B94]
 004957AB    lea         eax,[ebp-4]
 004957AE    mov         edx,2
 004957B3    call        0067DCA0
 004957B8    pop         eax
 004957B9    mov         edx,dword ptr [ebp-0BB0]
 004957BF    mov         dword ptr fs:[0],edx
>004957C6    jmp         00496D77
 004957CB    mov         word ptr [ebp-0BA0],1424
 004957D4    mov         edx,6B6617
 004957D9    lea         eax,[ebp-0A70]
 004957DF    call        0067DAB4
 004957E4    inc         dword ptr [ebp-0B94]
 004957EA    mov         edx,dword ptr [eax]
 004957EC    mov         eax,dword ptr [ebp-0BB4]
 004957F2    mov         eax,dword ptr [eax+22]
 004957F5    call        SameText
 004957FA    push        eax
 004957FB    dec         dword ptr [ebp-0B94]
 00495801    lea         eax,[ebp-0A70]
 00495807    mov         edx,2
 0049580C    call        0067DCA0
 00495811    pop         ecx
 00495812    test        cl,cl
>00495814    je          00495A3A
 0049581A    mov         eax,dword ptr [ebp-0BB4]
 00495820    mov         byte ptr [eax+5],28
 00495824    push        4
 00495826    mov         word ptr [ebp-0BA0],1430
 0049582F    mov         edx,6B662A
 00495834    lea         eax,[ebp-0A74]
 0049583A    call        0067DAB4
 0049583F    inc         dword ptr [ebp-0B94]
 00495845    push        dword ptr [eax]
 00495847    mov         edx,6B662E
 0049584C    lea         eax,[ebp-0A78]
 00495852    call        0067DAB4
 00495857    inc         dword ptr [ebp-0B94]
 0049585D    push        dword ptr [eax]
 0049585F    xor         ecx,ecx
 00495861    mov         dl,22
 00495863    mov         eax,dword ptr [ebp-0BB4]
 00495869    mov         eax,dword ptr [eax+1E]
 0049586C    call        00483A34
 00495871    dec         dword ptr [ebp-0B94]
 00495877    lea         eax,[ebp-0A78]
 0049587D    mov         edx,2
 00495882    call        0067DCA0
 00495887    dec         dword ptr [ebp-0B94]
 0049588D    lea         eax,[ebp-0A74]
 00495893    mov         edx,2
 00495898    call        0067DCA0
 0049589D    push        4
 0049589F    mov         word ptr [ebp-0BA0],143C
 004958A8    mov         edx,6B6636
 004958AD    lea         eax,[ebp-0A7C]
 004958B3    call        0067DAB4
 004958B8    inc         dword ptr [ebp-0B94]
 004958BE    push        dword ptr [eax]
 004958C0    mov         edx,6B663F
 004958C5    lea         eax,[ebp-0A80]
 004958CB    call        0067DAB4
 004958D0    inc         dword ptr [ebp-0B94]
 004958D6    push        dword ptr [eax]
 004958D8    mov         ecx,1
 004958DD    mov         dl,21
 004958DF    mov         eax,dword ptr [ebp-0BB4]
 004958E5    mov         eax,dword ptr [eax+1E]
 004958E8    call        00483A34
 004958ED    dec         dword ptr [ebp-0B94]
 004958F3    lea         eax,[ebp-0A80]
 004958F9    mov         edx,2
 004958FE    call        0067DCA0
 00495903    dec         dword ptr [ebp-0B94]
 00495909    lea         eax,[ebp-0A7C]
 0049590F    mov         edx,2
 00495914    call        0067DCA0
 00495919    push        4
 0049591B    mov         word ptr [ebp-0BA0],1448
 00495924    mov         edx,6B6651
 00495929    lea         eax,[ebp-0A84]
 0049592F    call        0067DAB4
 00495934    inc         dword ptr [ebp-0B94]
 0049593A    push        dword ptr [eax]
 0049593C    mov         edx,6B6658
 00495941    lea         eax,[ebp-0A88]
 00495947    call        0067DAB4
 0049594C    inc         dword ptr [ebp-0B94]
 00495952    push        dword ptr [eax]
 00495954    mov         ecx,2
 00495959    mov         dl,21
 0049595B    mov         eax,dword ptr [ebp-0BB4]
 00495961    mov         eax,dword ptr [eax+1E]
 00495964    call        00483A34
 00495969    dec         dword ptr [ebp-0B94]
 0049596F    lea         eax,[ebp-0A88]
 00495975    mov         edx,2
 0049597A    call        0067DCA0
 0049597F    dec         dword ptr [ebp-0B94]
 00495985    lea         eax,[ebp-0A84]
 0049598B    mov         edx,2
 00495990    call        0067DCA0
 00495995    push        4
 00495997    mov         word ptr [ebp-0BA0],1454
 004959A0    mov         edx,6B6660
 004959A5    lea         eax,[ebp-0A8C]
 004959AB    call        0067DAB4
 004959B0    inc         dword ptr [ebp-0B94]
 004959B6    push        dword ptr [eax]
 004959B8    mov         edx,6B666A
 004959BD    lea         eax,[ebp-0A90]
 004959C3    call        0067DAB4
 004959C8    inc         dword ptr [ebp-0B94]
 004959CE    push        dword ptr [eax]
 004959D0    mov         ecx,8
 004959D5    mov         dl,21
 004959D7    mov         eax,dword ptr [ebp-0BB4]
 004959DD    mov         eax,dword ptr [eax+1E]
 004959E0    call        00483A34
 004959E5    dec         dword ptr [ebp-0B94]
 004959EB    lea         eax,[ebp-0A90]
 004959F1    mov         edx,2
 004959F6    call        0067DCA0
 004959FB    dec         dword ptr [ebp-0B94]
 00495A01    lea         eax,[ebp-0A8C]
 00495A07    mov         edx,2
 00495A0C    call        0067DCA0
 00495A11    mov         al,1
 00495A13    push        eax
 00495A14    dec         dword ptr [ebp-0B94]
 00495A1A    lea         eax,[ebp-4]
 00495A1D    mov         edx,2
 00495A22    call        0067DCA0
 00495A27    pop         eax
 00495A28    mov         edx,dword ptr [ebp-0BB0]
 00495A2E    mov         dword ptr fs:[0],edx
>00495A35    jmp         00496D77
 00495A3A    mov         word ptr [ebp-0BA0],1460
 00495A43    mov         edx,6B6672
 00495A48    lea         eax,[ebp-0A94]
 00495A4E    call        0067DAB4
 00495A53    inc         dword ptr [ebp-0B94]
 00495A59    mov         edx,dword ptr [eax]
 00495A5B    mov         eax,dword ptr [ebp-0BB4]
 00495A61    mov         eax,dword ptr [eax+22]
 00495A64    call        SameText
 00495A69    push        eax
 00495A6A    dec         dword ptr [ebp-0B94]
 00495A70    lea         eax,[ebp-0A94]
 00495A76    mov         edx,2
 00495A7B    call        0067DCA0
 00495A80    pop         ecx
 00495A81    test        cl,cl
>00495A83    je          00495C2D
 00495A89    mov         eax,dword ptr [ebp-0BB4]
 00495A8F    mov         byte ptr [eax+5],28
 00495A93    push        4
 00495A95    mov         word ptr [ebp-0BA0],146C
 00495A9E    mov         edx,6B667C
 00495AA3    lea         eax,[ebp-0A98]
 00495AA9    call        0067DAB4
 00495AAE    inc         dword ptr [ebp-0B94]
 00495AB4    push        dword ptr [eax]
 00495AB6    mov         edx,6B6680
 00495ABB    lea         eax,[ebp-0A9C]
 00495AC1    call        0067DAB4
 00495AC6    inc         dword ptr [ebp-0B94]
 00495ACC    push        dword ptr [eax]
 00495ACE    xor         ecx,ecx
 00495AD0    mov         dl,22
 00495AD2    mov         eax,dword ptr [ebp-0BB4]
 00495AD8    mov         eax,dword ptr [eax+1E]
 00495ADB    call        00483A34
 00495AE0    dec         dword ptr [ebp-0B94]
 00495AE6    lea         eax,[ebp-0A9C]
 00495AEC    mov         edx,2
 00495AF1    call        0067DCA0
 00495AF6    dec         dword ptr [ebp-0B94]
 00495AFC    lea         eax,[ebp-0A98]
 00495B02    mov         edx,2
 00495B07    call        0067DCA0
 00495B0C    push        4
 00495B0E    mov         word ptr [ebp-0BA0],1478
 00495B17    mov         edx,6B6688
 00495B1C    lea         eax,[ebp-0AA0]
 00495B22    call        0067DAB4
 00495B27    inc         dword ptr [ebp-0B94]
 00495B2D    push        dword ptr [eax]
 00495B2F    mov         edx,6B668C
 00495B34    lea         eax,[ebp-0AA4]
 00495B3A    call        0067DAB4
 00495B3F    inc         dword ptr [ebp-0B94]
 00495B45    push        dword ptr [eax]
 00495B47    mov         ecx,1
 00495B4C    mov         dl,21
 00495B4E    mov         eax,dword ptr [ebp-0BB4]
 00495B54    mov         eax,dword ptr [eax+1E]
 00495B57    call        00483A34
 00495B5C    dec         dword ptr [ebp-0B94]
 00495B62    lea         eax,[ebp-0AA4]
 00495B68    mov         edx,2
 00495B6D    call        0067DCA0
 00495B72    dec         dword ptr [ebp-0B94]
 00495B78    lea         eax,[ebp-0AA0]
 00495B7E    mov         edx,2
 00495B83    call        0067DCA0
 00495B88    push        4
 00495B8A    mov         word ptr [ebp-0BA0],1484
 00495B93    mov         edx,6B6694
 00495B98    lea         eax,[ebp-0AA8]
 00495B9E    call        0067DAB4
 00495BA3    inc         dword ptr [ebp-0B94]
 00495BA9    push        dword ptr [eax]
 00495BAB    mov         edx,6B6698
 00495BB0    lea         eax,[ebp-0AAC]
 00495BB6    call        0067DAB4
 00495BBB    inc         dword ptr [ebp-0B94]
 00495BC1    push        dword ptr [eax]
 00495BC3    mov         ecx,2
 00495BC8    mov         dl,21
 00495BCA    mov         eax,dword ptr [ebp-0BB4]
 00495BD0    mov         eax,dword ptr [eax+1E]
 00495BD3    call        00483A34
 00495BD8    dec         dword ptr [ebp-0B94]
 00495BDE    lea         eax,[ebp-0AAC]
 00495BE4    mov         edx,2
 00495BE9    call        0067DCA0
 00495BEE    dec         dword ptr [ebp-0B94]
 00495BF4    lea         eax,[ebp-0AA8]
 00495BFA    mov         edx,2
 00495BFF    call        0067DCA0
 00495C04    mov         al,1
 00495C06    push        eax
 00495C07    dec         dword ptr [ebp-0B94]
 00495C0D    lea         eax,[ebp-4]
 00495C10    mov         edx,2
 00495C15    call        0067DCA0
 00495C1A    pop         eax
 00495C1B    mov         edx,dword ptr [ebp-0BB0]
 00495C21    mov         dword ptr fs:[0],edx
>00495C28    jmp         00496D77
 00495C2D    mov         word ptr [ebp-0BA0],1490
 00495C36    mov         edx,6B669D
 00495C3B    lea         eax,[ebp-0AB0]
 00495C41    call        0067DAB4
 00495C46    inc         dword ptr [ebp-0B94]
 00495C4C    mov         edx,dword ptr [eax]
 00495C4E    mov         eax,dword ptr [ebp-0BB4]
 00495C54    mov         eax,dword ptr [eax+22]
 00495C57    call        SameText
 00495C5C    push        eax
 00495C5D    dec         dword ptr [ebp-0B94]
 00495C63    lea         eax,[ebp-0AB0]
 00495C69    mov         edx,2
 00495C6E    call        0067DCA0
 00495C73    pop         ecx
 00495C74    test        cl,cl
>00495C76    je          00495D71
 00495C7C    mov         eax,dword ptr [ebp-0BB4]
 00495C82    mov         byte ptr [eax+5],29
 00495C86    mov         word ptr [ebp-0BA0],149C
 00495C8F    mov         edx,6B66A6
 00495C94    lea         eax,[ebp-0AB4]
 00495C9A    call        0067DAB4
 00495C9F    inc         dword ptr [ebp-0B94]
 00495CA5    lea         edx,[ebp-0AB4]
 00495CAB    mov         eax,dword ptr [ebp-0BB4]
 00495CB1    add         eax,0A
 00495CB4    call        0067DCD0
 00495CB9    dec         dword ptr [ebp-0B94]
 00495CBF    lea         eax,[ebp-0AB4]
 00495CC5    mov         edx,2
 00495CCA    call        0067DCA0
 00495CCF    push        4
 00495CD1    mov         word ptr [ebp-0BA0],14A8
 00495CDA    mov         edx,6B66AE
 00495CDF    lea         eax,[ebp-0AB8]
 00495CE5    call        0067DAB4
 00495CEA    inc         dword ptr [ebp-0B94]
 00495CF0    push        dword ptr [eax]
 00495CF2    mov         edx,6B66B0
 00495CF7    lea         eax,[ebp-0ABC]
 00495CFD    call        0067DAB4
 00495D02    inc         dword ptr [ebp-0B94]
 00495D08    push        dword ptr [eax]
 00495D0A    xor         ecx,ecx
 00495D0C    mov         dl,21
 00495D0E    mov         eax,dword ptr [ebp-0BB4]
 00495D14    mov         eax,dword ptr [eax+1E]
 00495D17    call        00483A34
 00495D1C    dec         dword ptr [ebp-0B94]
 00495D22    lea         eax,[ebp-0ABC]
 00495D28    mov         edx,2
 00495D2D    call        0067DCA0
 00495D32    dec         dword ptr [ebp-0B94]
 00495D38    lea         eax,[ebp-0AB8]
 00495D3E    mov         edx,2
 00495D43    call        0067DCA0
 00495D48    mov         al,1
 00495D4A    push        eax
 00495D4B    dec         dword ptr [ebp-0B94]
 00495D51    lea         eax,[ebp-4]
 00495D54    mov         edx,2
 00495D59    call        0067DCA0
 00495D5E    pop         eax
 00495D5F    mov         edx,dword ptr [ebp-0BB0]
 00495D65    mov         dword ptr fs:[0],edx
>00495D6C    jmp         00496D77
 00495D71    mov         word ptr [ebp-0BA0],14B4
 00495D7A    mov         edx,6B66B8
 00495D7F    lea         eax,[ebp-0AC0]
 00495D85    call        0067DAB4
 00495D8A    inc         dword ptr [ebp-0B94]
 00495D90    mov         edx,dword ptr [eax]
 00495D92    mov         eax,dword ptr [ebp-0BB4]
 00495D98    mov         eax,dword ptr [eax+22]
 00495D9B    call        SameText
 00495DA0    push        eax
 00495DA1    dec         dword ptr [ebp-0B94]
 00495DA7    lea         eax,[ebp-0AC0]
 00495DAD    mov         edx,2
 00495DB2    call        0067DCA0
 00495DB7    pop         ecx
 00495DB8    test        cl,cl
>00495DBA    je          00495EB5
 00495DC0    mov         eax,dword ptr [ebp-0BB4]
 00495DC6    mov         byte ptr [eax+5],29
 00495DCA    mov         word ptr [ebp-0BA0],14C0
 00495DD3    mov         edx,6B66C0
 00495DD8    lea         eax,[ebp-0AC4]
 00495DDE    call        0067DAB4
 00495DE3    inc         dword ptr [ebp-0B94]
 00495DE9    lea         edx,[ebp-0AC4]
 00495DEF    mov         eax,dword ptr [ebp-0BB4]
 00495DF5    add         eax,0A
 00495DF8    call        0067DCD0
 00495DFD    dec         dword ptr [ebp-0B94]
 00495E03    lea         eax,[ebp-0AC4]
 00495E09    mov         edx,2
 00495E0E    call        0067DCA0
 00495E13    push        4
 00495E15    mov         word ptr [ebp-0BA0],14CC
 00495E1E    mov         edx,6B66C8
 00495E23    lea         eax,[ebp-0AC8]
 00495E29    call        0067DAB4
 00495E2E    inc         dword ptr [ebp-0B94]
 00495E34    push        dword ptr [eax]
 00495E36    mov         edx,6B66CD
 00495E3B    lea         eax,[ebp-0ACC]
 00495E41    call        0067DAB4
 00495E46    inc         dword ptr [ebp-0B94]
 00495E4C    push        dword ptr [eax]
 00495E4E    xor         ecx,ecx
 00495E50    mov         dl,21
 00495E52    mov         eax,dword ptr [ebp-0BB4]
 00495E58    mov         eax,dword ptr [eax+1E]
 00495E5B    call        00483A34
 00495E60    dec         dword ptr [ebp-0B94]
 00495E66    lea         eax,[ebp-0ACC]
 00495E6C    mov         edx,2
 00495E71    call        0067DCA0
 00495E76    dec         dword ptr [ebp-0B94]
 00495E7C    lea         eax,[ebp-0AC8]
 00495E82    mov         edx,2
 00495E87    call        0067DCA0
 00495E8C    mov         al,1
 00495E8E    push        eax
 00495E8F    dec         dword ptr [ebp-0B94]
 00495E95    lea         eax,[ebp-4]
 00495E98    mov         edx,2
 00495E9D    call        0067DCA0
 00495EA2    pop         eax
 00495EA3    mov         edx,dword ptr [ebp-0BB0]
 00495EA9    mov         dword ptr fs:[0],edx
>00495EB0    jmp         00496D77
 00495EB5    mov         word ptr [ebp-0BA0],14D8
 00495EBE    mov         edx,6B66D5
 00495EC3    lea         eax,[ebp-0AD0]
 00495EC9    call        0067DAB4
 00495ECE    inc         dword ptr [ebp-0B94]
 00495ED4    mov         edx,dword ptr [eax]
 00495ED6    mov         eax,dword ptr [ebp-0BB4]
 00495EDC    mov         eax,dword ptr [eax+22]
 00495EDF    call        SameText
 00495EE4    push        eax
 00495EE5    dec         dword ptr [ebp-0B94]
 00495EEB    lea         eax,[ebp-0AD0]
 00495EF1    mov         edx,2
 00495EF6    call        0067DCA0
 00495EFB    pop         ecx
 00495EFC    test        cl,cl
>00495EFE    je          00495F33
 00495F00    mov         eax,dword ptr [ebp-0BB4]
 00495F06    mov         byte ptr [eax+5],28
 00495F0A    mov         al,1
 00495F0C    push        eax
 00495F0D    dec         dword ptr [ebp-0B94]
 00495F13    lea         eax,[ebp-4]
 00495F16    mov         edx,2
 00495F1B    call        0067DCA0
 00495F20    pop         eax
 00495F21    mov         edx,dword ptr [ebp-0BB0]
 00495F27    mov         dword ptr fs:[0],edx
>00495F2E    jmp         00496D77
 00495F33    mov         word ptr [ebp-0BA0],14E4
 00495F3C    mov         edx,6B66DE
 00495F41    lea         eax,[ebp-0AD4]
 00495F47    call        0067DAB4
 00495F4C    inc         dword ptr [ebp-0B94]
 00495F52    mov         edx,dword ptr [eax]
 00495F54    mov         eax,dword ptr [ebp-0BB4]
 00495F5A    mov         eax,dword ptr [eax+22]
 00495F5D    call        SameText
 00495F62    push        eax
 00495F63    dec         dword ptr [ebp-0B94]
 00495F69    lea         eax,[ebp-0AD4]
 00495F6F    mov         edx,2
 00495F74    call        0067DCA0
 00495F79    pop         ecx
 00495F7A    test        cl,cl
>00495F7C    je          004960F3
 00495F82    mov         eax,dword ptr [ebp-0BB4]
 00495F88    mov         byte ptr [eax+5],29
 00495F8C    mov         word ptr [ebp-0BA0],14F0
 00495F95    mov         edx,6B66E7
 00495F9A    lea         eax,[ebp-0AD8]
 00495FA0    call        0067DAB4
 00495FA5    inc         dword ptr [ebp-0B94]
 00495FAB    lea         edx,[ebp-0AD8]
 00495FB1    mov         eax,dword ptr [ebp-0BB4]
 00495FB7    add         eax,0A
 00495FBA    call        0067DCD0
 00495FBF    dec         dword ptr [ebp-0B94]
 00495FC5    lea         eax,[ebp-0AD8]
 00495FCB    mov         edx,2
 00495FD0    call        0067DCA0
 00495FD5    push        4
 00495FD7    mov         word ptr [ebp-0BA0],14FC
 00495FE0    mov         edx,6B66EF
 00495FE5    lea         eax,[ebp-0ADC]
 00495FEB    call        0067DAB4
 00495FF0    inc         dword ptr [ebp-0B94]
 00495FF6    push        dword ptr [eax]
 00495FF8    mov         edx,6B66F5
 00495FFD    lea         eax,[ebp-0AE0]
 00496003    call        0067DAB4
 00496008    inc         dword ptr [ebp-0B94]
 0049600E    push        dword ptr [eax]
 00496010    xor         ecx,ecx
 00496012    mov         dl,21
 00496014    mov         eax,dword ptr [ebp-0BB4]
 0049601A    mov         eax,dword ptr [eax+1E]
 0049601D    call        00483A34
 00496022    dec         dword ptr [ebp-0B94]
 00496028    lea         eax,[ebp-0AE0]
 0049602E    mov         edx,2
 00496033    call        0067DCA0
 00496038    dec         dword ptr [ebp-0B94]
 0049603E    lea         eax,[ebp-0ADC]
 00496044    mov         edx,2
 00496049    call        0067DCA0
 0049604E    push        4
 00496050    mov         word ptr [ebp-0BA0],1508
 00496059    mov         edx,6B66FD
 0049605E    lea         eax,[ebp-0AE4]
 00496064    call        0067DAB4
 00496069    inc         dword ptr [ebp-0B94]
 0049606F    push        dword ptr [eax]
 00496071    mov         edx,6B6704
 00496076    lea         eax,[ebp-0AE8]
 0049607C    call        0067DAB4
 00496081    inc         dword ptr [ebp-0B94]
 00496087    push        dword ptr [eax]
 00496089    mov         ecx,1
 0049608E    mov         dl,21
 00496090    mov         eax,dword ptr [ebp-0BB4]
 00496096    mov         eax,dword ptr [eax+1E]
 00496099    call        00483A34
 0049609E    dec         dword ptr [ebp-0B94]
 004960A4    lea         eax,[ebp-0AE8]
 004960AA    mov         edx,2
 004960AF    call        0067DCA0
 004960B4    dec         dword ptr [ebp-0B94]
 004960BA    lea         eax,[ebp-0AE4]
 004960C0    mov         edx,2
 004960C5    call        0067DCA0
 004960CA    mov         al,1
 004960CC    push        eax
 004960CD    dec         dword ptr [ebp-0B94]
 004960D3    lea         eax,[ebp-4]
 004960D6    mov         edx,2
 004960DB    call        0067DCA0
 004960E0    pop         eax
 004960E1    mov         edx,dword ptr [ebp-0BB0]
 004960E7    mov         dword ptr fs:[0],edx
>004960EE    jmp         00496D77
 004960F3    mov         word ptr [ebp-0BA0],1514
 004960FC    mov         edx,6B670B
 00496101    lea         eax,[ebp-0AEC]
 00496107    call        0067DAB4
 0049610C    inc         dword ptr [ebp-0B94]
 00496112    mov         edx,dword ptr [eax]
 00496114    mov         eax,dword ptr [ebp-0BB4]
 0049611A    mov         eax,dword ptr [eax+22]
 0049611D    call        SameText
 00496122    push        eax
 00496123    dec         dword ptr [ebp-0B94]
 00496129    lea         eax,[ebp-0AEC]
 0049612F    mov         edx,2
 00496134    call        0067DCA0
 00496139    pop         ecx
 0049613A    test        cl,cl
>0049613C    je          00496237
 00496142    mov         eax,dword ptr [ebp-0BB4]
 00496148    mov         byte ptr [eax+5],29
 0049614C    mov         word ptr [ebp-0BA0],1520
 00496155    mov         edx,6B6714
 0049615A    lea         eax,[ebp-0AF0]
 00496160    call        0067DAB4
 00496165    inc         dword ptr [ebp-0B94]
 0049616B    lea         edx,[ebp-0AF0]
 00496171    mov         eax,dword ptr [ebp-0BB4]
 00496177    add         eax,0A
 0049617A    call        0067DCD0
 0049617F    dec         dword ptr [ebp-0B94]
 00496185    lea         eax,[ebp-0AF0]
 0049618B    mov         edx,2
 00496190    call        0067DCA0
 00496195    push        4
 00496197    mov         word ptr [ebp-0BA0],152C
 004961A0    mov         edx,6B671C
 004961A5    lea         eax,[ebp-0AF4]
 004961AB    call        0067DAB4
 004961B0    inc         dword ptr [ebp-0B94]
 004961B6    push        dword ptr [eax]
 004961B8    mov         edx,6B6722
 004961BD    lea         eax,[ebp-0AF8]
 004961C3    call        0067DAB4
 004961C8    inc         dword ptr [ebp-0B94]
 004961CE    push        dword ptr [eax]
 004961D0    xor         ecx,ecx
 004961D2    mov         dl,21
 004961D4    mov         eax,dword ptr [ebp-0BB4]
 004961DA    mov         eax,dword ptr [eax+1E]
 004961DD    call        00483A34
 004961E2    dec         dword ptr [ebp-0B94]
 004961E8    lea         eax,[ebp-0AF8]
 004961EE    mov         edx,2
 004961F3    call        0067DCA0
 004961F8    dec         dword ptr [ebp-0B94]
 004961FE    lea         eax,[ebp-0AF4]
 00496204    mov         edx,2
 00496209    call        0067DCA0
 0049620E    mov         al,1
 00496210    push        eax
 00496211    dec         dword ptr [ebp-0B94]
 00496217    lea         eax,[ebp-4]
 0049621A    mov         edx,2
 0049621F    call        0067DCA0
 00496224    pop         eax
 00496225    mov         edx,dword ptr [ebp-0BB0]
 0049622B    mov         dword ptr fs:[0],edx
>00496232    jmp         00496D77
 00496237    mov         word ptr [ebp-0BA0],1538
 00496240    mov         edx,6B672A
 00496245    lea         eax,[ebp-0AFC]
 0049624B    call        0067DAB4
 00496250    inc         dword ptr [ebp-0B94]
 00496256    mov         edx,dword ptr [eax]
 00496258    mov         eax,dword ptr [ebp-0BB4]
 0049625E    mov         eax,dword ptr [eax+22]
 00496261    call        SameText
 00496266    push        eax
 00496267    dec         dword ptr [ebp-0B94]
 0049626D    lea         eax,[ebp-0AFC]
 00496273    mov         edx,2
 00496278    call        0067DCA0
 0049627D    pop         ecx
 0049627E    test        cl,cl
>00496280    je          004963F7
 00496286    mov         eax,dword ptr [ebp-0BB4]
 0049628C    mov         byte ptr [eax+5],29
 00496290    mov         word ptr [ebp-0BA0],1544
 00496299    mov         edx,6B6736
 0049629E    lea         eax,[ebp-0B00]
 004962A4    call        0067DAB4
 004962A9    inc         dword ptr [ebp-0B94]
 004962AF    lea         edx,[ebp-0B00]
 004962B5    mov         eax,dword ptr [ebp-0BB4]
 004962BB    add         eax,0A
 004962BE    call        0067DCD0
 004962C3    dec         dword ptr [ebp-0B94]
 004962C9    lea         eax,[ebp-0B00]
 004962CF    mov         edx,2
 004962D4    call        0067DCA0
 004962D9    push        4
 004962DB    mov         word ptr [ebp-0BA0],1550
 004962E4    mov         edx,6B673E
 004962E9    lea         eax,[ebp-0B04]
 004962EF    call        0067DAB4
 004962F4    inc         dword ptr [ebp-0B94]
 004962FA    push        dword ptr [eax]
 004962FC    mov         edx,6B6740
 00496301    lea         eax,[ebp-0B08]
 00496307    call        0067DAB4
 0049630C    inc         dword ptr [ebp-0B94]
 00496312    push        dword ptr [eax]
 00496314    xor         ecx,ecx
 00496316    mov         dl,22
 00496318    mov         eax,dword ptr [ebp-0BB4]
 0049631E    mov         eax,dword ptr [eax+1E]
 00496321    call        00483A34
 00496326    dec         dword ptr [ebp-0B94]
 0049632C    lea         eax,[ebp-0B08]
 00496332    mov         edx,2
 00496337    call        0067DCA0
 0049633C    dec         dword ptr [ebp-0B94]
 00496342    lea         eax,[ebp-0B04]
 00496348    mov         edx,2
 0049634D    call        0067DCA0
 00496352    push        4
 00496354    mov         word ptr [ebp-0BA0],155C
 0049635D    mov         edx,6B6748
 00496362    lea         eax,[ebp-0B0C]
 00496368    call        0067DAB4
 0049636D    inc         dword ptr [ebp-0B94]
 00496373    push        dword ptr [eax]
 00496375    mov         edx,6B6750
 0049637A    lea         eax,[ebp-0B10]
 00496380    call        0067DAB4
 00496385    inc         dword ptr [ebp-0B94]
 0049638B    push        dword ptr [eax]
 0049638D    mov         ecx,1
 00496392    mov         dl,21
 00496394    mov         eax,dword ptr [ebp-0BB4]
 0049639A    mov         eax,dword ptr [eax+1E]
 0049639D    call        00483A34
 004963A2    dec         dword ptr [ebp-0B94]
 004963A8    lea         eax,[ebp-0B10]
 004963AE    mov         edx,2
 004963B3    call        0067DCA0
 004963B8    dec         dword ptr [ebp-0B94]
 004963BE    lea         eax,[ebp-0B0C]
 004963C4    mov         edx,2
 004963C9    call        0067DCA0
 004963CE    mov         al,1
 004963D0    push        eax
 004963D1    dec         dword ptr [ebp-0B94]
 004963D7    lea         eax,[ebp-4]
 004963DA    mov         edx,2
 004963DF    call        0067DCA0
 004963E4    pop         eax
 004963E5    mov         edx,dword ptr [ebp-0BB0]
 004963EB    mov         dword ptr fs:[0],edx
>004963F2    jmp         00496D77
 004963F7    mov         word ptr [ebp-0BA0],1568
 00496400    mov         edx,6B6758
 00496405    lea         eax,[ebp-0B14]
 0049640B    call        0067DAB4
 00496410    inc         dword ptr [ebp-0B94]
 00496416    mov         edx,dword ptr [eax]
 00496418    mov         eax,dword ptr [ebp-0BB4]
 0049641E    mov         eax,dword ptr [eax+22]
 00496421    call        SameText
 00496426    push        eax
 00496427    dec         dword ptr [ebp-0B94]
 0049642D    lea         eax,[ebp-0B14]
 00496433    mov         edx,2
 00496438    call        0067DCA0
 0049643D    pop         ecx
 0049643E    test        cl,cl
>00496440    je          004965EA
 00496446    mov         eax,dword ptr [ebp-0BB4]
 0049644C    mov         byte ptr [eax+5],28
 00496450    push        4
 00496452    mov         word ptr [ebp-0BA0],1574
 0049645B    mov         edx,6B6761
 00496460    lea         eax,[ebp-0B18]
 00496466    call        0067DAB4
 0049646B    inc         dword ptr [ebp-0B94]
 00496471    push        dword ptr [eax]
 00496473    mov         edx,6B6766
 00496478    lea         eax,[ebp-0B1C]
 0049647E    call        0067DAB4
 00496483    inc         dword ptr [ebp-0B94]
 00496489    push        dword ptr [eax]
 0049648B    xor         ecx,ecx
 0049648D    mov         dl,22
 0049648F    mov         eax,dword ptr [ebp-0BB4]
 00496495    mov         eax,dword ptr [eax+1E]
 00496498    call        00483A34
 0049649D    dec         dword ptr [ebp-0B94]
 004964A3    lea         eax,[ebp-0B1C]
 004964A9    mov         edx,2
 004964AE    call        0067DCA0
 004964B3    dec         dword ptr [ebp-0B94]
 004964B9    lea         eax,[ebp-0B18]
 004964BF    mov         edx,2
 004964C4    call        0067DCA0
 004964C9    push        1
 004964CB    mov         word ptr [ebp-0BA0],1580
 004964D4    mov         edx,6B676A
 004964D9    lea         eax,[ebp-0B20]
 004964DF    call        0067DAB4
 004964E4    inc         dword ptr [ebp-0B94]
 004964EA    push        dword ptr [eax]
 004964EC    mov         edx,6B676F
 004964F1    lea         eax,[ebp-0B24]
 004964F7    call        0067DAB4
 004964FC    inc         dword ptr [ebp-0B94]
 00496502    push        dword ptr [eax]
 00496504    mov         ecx,1
 00496509    mov         dl,21
 0049650B    mov         eax,dword ptr [ebp-0BB4]
 00496511    mov         eax,dword ptr [eax+1E]
 00496514    call        00483A34
 00496519    dec         dword ptr [ebp-0B94]
 0049651F    lea         eax,[ebp-0B24]
 00496525    mov         edx,2
 0049652A    call        0067DCA0
 0049652F    dec         dword ptr [ebp-0B94]
 00496535    lea         eax,[ebp-0B20]
 0049653B    mov         edx,2
 00496540    call        0067DCA0
 00496545    push        1
 00496547    mov         word ptr [ebp-0BA0],158C
 00496550    mov         edx,6B6774
 00496555    lea         eax,[ebp-0B28]
 0049655B    call        0067DAB4
 00496560    inc         dword ptr [ebp-0B94]
 00496566    push        dword ptr [eax]
 00496568    mov         edx,6B6779
 0049656D    lea         eax,[ebp-0B2C]
 00496573    call        0067DAB4
 00496578    inc         dword ptr [ebp-0B94]
 0049657E    push        dword ptr [eax]
 00496580    mov         ecx,2
 00496585    mov         dl,21
 00496587    mov         eax,dword ptr [ebp-0BB4]
 0049658D    mov         eax,dword ptr [eax+1E]
 00496590    call        00483A34
 00496595    dec         dword ptr [ebp-0B94]
 0049659B    lea         eax,[ebp-0B2C]
 004965A1    mov         edx,2
 004965A6    call        0067DCA0
 004965AB    dec         dword ptr [ebp-0B94]
 004965B1    lea         eax,[ebp-0B28]
 004965B7    mov         edx,2
 004965BC    call        0067DCA0
 004965C1    mov         al,1
 004965C3    push        eax
 004965C4    dec         dword ptr [ebp-0B94]
 004965CA    lea         eax,[ebp-4]
 004965CD    mov         edx,2
 004965D2    call        0067DCA0
 004965D7    pop         eax
 004965D8    mov         edx,dword ptr [ebp-0BB0]
 004965DE    mov         dword ptr fs:[0],edx
>004965E5    jmp         00496D77
 004965EA    mov         word ptr [ebp-0BA0],1598
 004965F3    mov         edx,6B677E
 004965F8    lea         eax,[ebp-0B30]
 004965FE    call        0067DAB4
 00496603    inc         dword ptr [ebp-0B94]
 00496609    mov         edx,dword ptr [eax]
 0049660B    mov         eax,dword ptr [ebp-0BB4]
 00496611    mov         eax,dword ptr [eax+22]
 00496614    call        SameText
 00496619    push        eax
 0049661A    dec         dword ptr [ebp-0B94]
 00496620    lea         eax,[ebp-0B30]
 00496626    mov         edx,2
 0049662B    call        0067DCA0
 00496630    pop         ecx
 00496631    test        cl,cl
>00496633    je          0049672E
 00496639    mov         eax,dword ptr [ebp-0BB4]
 0049663F    mov         byte ptr [eax+5],29
 00496643    mov         word ptr [ebp-0BA0],15A4
 0049664C    mov         edx,6B6785
 00496651    lea         eax,[ebp-0B34]
 00496657    call        0067DAB4
 0049665C    inc         dword ptr [ebp-0B94]
 00496662    lea         edx,[ebp-0B34]
 00496668    mov         eax,dword ptr [ebp-0BB4]
 0049666E    add         eax,0A
 00496671    call        0067DCD0
 00496676    dec         dword ptr [ebp-0B94]
 0049667C    lea         eax,[ebp-0B34]
 00496682    mov         edx,2
 00496687    call        0067DCA0
 0049668C    push        0C
 0049668E    mov         word ptr [ebp-0BA0],15B0
 00496697    mov         edx,6B678B
 0049669C    lea         eax,[ebp-0B38]
 004966A2    call        0067DAB4
 004966A7    inc         dword ptr [ebp-0B94]
 004966AD    push        dword ptr [eax]
 004966AF    mov         edx,6B678D
 004966B4    lea         eax,[ebp-0B3C]
 004966BA    call        0067DAB4
 004966BF    inc         dword ptr [ebp-0B94]
 004966C5    push        dword ptr [eax]
 004966C7    xor         ecx,ecx
 004966C9    mov         dl,21
 004966CB    mov         eax,dword ptr [ebp-0BB4]
 004966D1    mov         eax,dword ptr [eax+1E]
 004966D4    call        00483A34
 004966D9    dec         dword ptr [ebp-0B94]
 004966DF    lea         eax,[ebp-0B3C]
 004966E5    mov         edx,2
 004966EA    call        0067DCA0
 004966EF    dec         dword ptr [ebp-0B94]
 004966F5    lea         eax,[ebp-0B38]
 004966FB    mov         edx,2
 00496700    call        0067DCA0
 00496705    mov         al,1
 00496707    push        eax
 00496708    dec         dword ptr [ebp-0B94]
 0049670E    lea         eax,[ebp-4]
 00496711    mov         edx,2
 00496716    call        0067DCA0
 0049671B    pop         eax
 0049671C    mov         edx,dword ptr [ebp-0BB0]
 00496722    mov         dword ptr fs:[0],edx
>00496729    jmp         00496D77
 0049672E    mov         word ptr [ebp-0BA0],15BC
 00496737    mov         edx,6B6796
 0049673C    lea         eax,[ebp-0B40]
 00496742    call        0067DAB4
 00496747    inc         dword ptr [ebp-0B94]
 0049674D    mov         edx,dword ptr [eax]
 0049674F    mov         eax,dword ptr [ebp-0BB4]
 00496755    mov         eax,dword ptr [eax+22]
 00496758    call        SameText
 0049675D    push        eax
 0049675E    dec         dword ptr [ebp-0B94]
 00496764    lea         eax,[ebp-0B40]
 0049676A    mov         edx,2
 0049676F    call        0067DCA0
 00496774    pop         ecx
 00496775    test        cl,cl
>00496777    je          004968A5
 0049677D    mov         eax,dword ptr [ebp-0BB4]
 00496783    mov         byte ptr [eax+5],28
 00496787    push        4
 00496789    mov         word ptr [ebp-0BA0],15C8
 00496792    mov         edx,6B679E
 00496797    lea         eax,[ebp-0B44]
 0049679D    call        0067DAB4
 004967A2    inc         dword ptr [ebp-0B94]
 004967A8    push        dword ptr [eax]
 004967AA    mov         edx,6B67A0
 004967AF    lea         eax,[ebp-0B48]
 004967B5    call        0067DAB4
 004967BA    inc         dword ptr [ebp-0B94]
 004967C0    push        dword ptr [eax]
 004967C2    xor         ecx,ecx
 004967C4    mov         dl,21
 004967C6    mov         eax,dword ptr [ebp-0BB4]
 004967CC    mov         eax,dword ptr [eax+1E]
 004967CF    call        00483A34
 004967D4    dec         dword ptr [ebp-0B94]
 004967DA    lea         eax,[ebp-0B48]
 004967E0    mov         edx,2
 004967E5    call        0067DCA0
 004967EA    dec         dword ptr [ebp-0B94]
 004967F0    lea         eax,[ebp-0B44]
 004967F6    mov         edx,2
 004967FB    call        0067DCA0
 00496800    push        4
 00496802    mov         word ptr [ebp-0BA0],15D4
 0049680B    mov         edx,6B67AB
 00496810    lea         eax,[ebp-0B4C]
 00496816    call        0067DAB4
 0049681B    inc         dword ptr [ebp-0B94]
 00496821    push        dword ptr [eax]
 00496823    mov         edx,6B67B0
 00496828    lea         eax,[ebp-0B50]
 0049682E    call        0067DAB4
 00496833    inc         dword ptr [ebp-0B94]
 00496839    push        dword ptr [eax]
 0049683B    mov         ecx,1
 00496840    mov         dl,22
 00496842    mov         eax,dword ptr [ebp-0BB4]
 00496848    mov         eax,dword ptr [eax+1E]
 0049684B    call        00483A34
 00496850    dec         dword ptr [ebp-0B94]
 00496856    lea         eax,[ebp-0B50]
 0049685C    mov         edx,2
 00496861    call        0067DCA0
 00496866    dec         dword ptr [ebp-0B94]
 0049686C    lea         eax,[ebp-0B4C]
 00496872    mov         edx,2
 00496877    call        0067DCA0
 0049687C    mov         al,1
 0049687E    push        eax
 0049687F    dec         dword ptr [ebp-0B94]
 00496885    lea         eax,[ebp-4]
 00496888    mov         edx,2
 0049688D    call        0067DCA0
 00496892    pop         eax
 00496893    mov         edx,dword ptr [ebp-0BB0]
 00496899    mov         dword ptr fs:[0],edx
>004968A0    jmp         00496D77
 004968A5    mov         word ptr [ebp-0BA0],15E0
 004968AE    mov         edx,6B67B8
 004968B3    lea         eax,[ebp-0B54]
 004968B9    call        0067DAB4
 004968BE    inc         dword ptr [ebp-0B94]
 004968C4    mov         edx,dword ptr [eax]
 004968C6    mov         eax,dword ptr [ebp-0BB4]
 004968CC    mov         eax,dword ptr [eax+22]
 004968CF    call        SameText
 004968D4    push        eax
 004968D5    dec         dword ptr [ebp-0B94]
 004968DB    lea         eax,[ebp-0B54]
 004968E1    mov         edx,2
 004968E6    call        0067DCA0
 004968EB    pop         ecx
 004968EC    test        cl,cl
>004968EE    je          00496A65
 004968F4    mov         eax,dword ptr [ebp-0BB4]
 004968FA    mov         byte ptr [eax+5],29
 004968FE    mov         word ptr [ebp-0BA0],15EC
 00496907    mov         edx,6B67C1
 0049690C    lea         eax,[ebp-0B58]
 00496912    call        0067DAB4
 00496917    inc         dword ptr [ebp-0B94]
 0049691D    lea         edx,[ebp-0B58]
 00496923    mov         eax,dword ptr [ebp-0BB4]
 00496929    add         eax,0A
 0049692C    call        0067DCD0
 00496931    dec         dword ptr [ebp-0B94]
 00496937    lea         eax,[ebp-0B58]
 0049693D    mov         edx,2
 00496942    call        0067DCA0
 00496947    push        4
 00496949    mov         word ptr [ebp-0BA0],15F8
 00496952    mov         edx,6B67C9
 00496957    lea         eax,[ebp-0B5C]
 0049695D    call        0067DAB4
 00496962    inc         dword ptr [ebp-0B94]
 00496968    push        dword ptr [eax]
 0049696A    mov         edx,6B67CB
 0049696F    lea         eax,[ebp-0B60]
 00496975    call        0067DAB4
 0049697A    inc         dword ptr [ebp-0B94]
 00496980    push        dword ptr [eax]
 00496982    xor         ecx,ecx
 00496984    mov         dl,21
 00496986    mov         eax,dword ptr [ebp-0BB4]
 0049698C    mov         eax,dword ptr [eax+1E]
 0049698F    call        00483A34
 00496994    dec         dword ptr [ebp-0B94]
 0049699A    lea         eax,[ebp-0B60]
 004969A0    mov         edx,2
 004969A5    call        0067DCA0
 004969AA    dec         dword ptr [ebp-0B94]
 004969B0    lea         eax,[ebp-0B5C]
 004969B6    mov         edx,2
 004969BB    call        0067DCA0
 004969C0    push        4
 004969C2    mov         word ptr [ebp-0BA0],1604
 004969CB    mov         edx,6B67D6
 004969D0    lea         eax,[ebp-0B64]
 004969D6    call        0067DAB4
 004969DB    inc         dword ptr [ebp-0B94]
 004969E1    push        dword ptr [eax]
 004969E3    mov         edx,6B67DB
 004969E8    lea         eax,[ebp-0B68]
 004969EE    call        0067DAB4
 004969F3    inc         dword ptr [ebp-0B94]
 004969F9    push        dword ptr [eax]
 004969FB    mov         ecx,1
 00496A00    mov         dl,22
 00496A02    mov         eax,dword ptr [ebp-0BB4]
 00496A08    mov         eax,dword ptr [eax+1E]
 00496A0B    call        00483A34
 00496A10    dec         dword ptr [ebp-0B94]
 00496A16    lea         eax,[ebp-0B68]
 00496A1C    mov         edx,2
 00496A21    call        0067DCA0
 00496A26    dec         dword ptr [ebp-0B94]
 00496A2C    lea         eax,[ebp-0B64]
 00496A32    mov         edx,2
 00496A37    call        0067DCA0
 00496A3C    mov         al,1
 00496A3E    push        eax
 00496A3F    dec         dword ptr [ebp-0B94]
 00496A45    lea         eax,[ebp-4]
 00496A48    mov         edx,2
 00496A4D    call        0067DCA0
 00496A52    pop         eax
 00496A53    mov         edx,dword ptr [ebp-0BB0]
 00496A59    mov         dword ptr fs:[0],edx
>00496A60    jmp         00496D77
 00496A65    mov         word ptr [ebp-0BA0],1610
 00496A6E    mov         edx,6B67E3
 00496A73    lea         eax,[ebp-0B6C]
 00496A79    call        0067DAB4
 00496A7E    inc         dword ptr [ebp-0B94]
 00496A84    mov         edx,dword ptr [eax]
 00496A86    mov         eax,dword ptr [ebp-0BB4]
 00496A8C    mov         eax,dword ptr [eax+22]
 00496A8F    call        SameText
 00496A94    push        eax
 00496A95    dec         dword ptr [ebp-0B94]
 00496A9B    lea         eax,[ebp-0B6C]
 00496AA1    mov         edx,2
 00496AA6    call        0067DCA0
 00496AAB    pop         ecx
 00496AAC    test        cl,cl
>00496AAE    je          00496B60
 00496AB4    mov         eax,dword ptr [ebp-0BB4]
 00496ABA    mov         byte ptr [eax+5],28
 00496ABE    push        4
 00496AC0    mov         word ptr [ebp-0BA0],161C
 00496AC9    mov         edx,6B67F0
 00496ACE    lea         eax,[ebp-0B70]
 00496AD4    call        0067DAB4
 00496AD9    inc         dword ptr [ebp-0B94]
 00496ADF    push        dword ptr [eax]
 00496AE1    mov         edx,6B67F2
 00496AE6    lea         eax,[ebp-0B74]
 00496AEC    call        0067DAB4
 00496AF1    inc         dword ptr [ebp-0B94]
 00496AF7    push        dword ptr [eax]
 00496AF9    xor         ecx,ecx
 00496AFB    mov         dl,22
 00496AFD    mov         eax,dword ptr [ebp-0BB4]
 00496B03    mov         eax,dword ptr [eax+1E]
 00496B06    call        00483A34
 00496B0B    dec         dword ptr [ebp-0B94]
 00496B11    lea         eax,[ebp-0B74]
 00496B17    mov         edx,2
 00496B1C    call        0067DCA0
 00496B21    dec         dword ptr [ebp-0B94]
 00496B27    lea         eax,[ebp-0B70]
 00496B2D    mov         edx,2
 00496B32    call        0067DCA0
 00496B37    mov         al,1
 00496B39    push        eax
 00496B3A    dec         dword ptr [ebp-0B94]
 00496B40    lea         eax,[ebp-4]
 00496B43    mov         edx,2
 00496B48    call        0067DCA0
 00496B4D    pop         eax
 00496B4E    mov         edx,dword ptr [ebp-0BB0]
 00496B54    mov         dword ptr fs:[0],edx
>00496B5B    jmp         00496D77
 00496B60    mov         word ptr [ebp-0BA0],1628
 00496B69    mov         edx,6B67FA
 00496B6E    lea         eax,[ebp-0B78]
 00496B74    call        0067DAB4
 00496B79    inc         dword ptr [ebp-0B94]
 00496B7F    mov         edx,dword ptr [eax]
 00496B81    mov         eax,dword ptr [ebp-0BB4]
 00496B87    mov         eax,dword ptr [eax+22]
 00496B8A    call        SameText
 00496B8F    push        eax
 00496B90    dec         dword ptr [ebp-0B94]
 00496B96    lea         eax,[ebp-0B78]
 00496B9C    mov         edx,2
 00496BA1    call        0067DCA0
 00496BA6    pop         ecx
 00496BA7    test        cl,cl
>00496BA9    je          00496C5B
 00496BAF    mov         eax,dword ptr [ebp-0BB4]
 00496BB5    mov         byte ptr [eax+5],28
 00496BB9    push        4
 00496BBB    mov         word ptr [ebp-0BA0],1634
 00496BC4    mov         edx,6B6807
 00496BC9    lea         eax,[ebp-0B7C]
 00496BCF    call        0067DAB4
 00496BD4    inc         dword ptr [ebp-0B94]
 00496BDA    push        dword ptr [eax]
 00496BDC    mov         edx,6B6809
 00496BE1    lea         eax,[ebp-0B80]
 00496BE7    call        0067DAB4
 00496BEC    inc         dword ptr [ebp-0B94]
 00496BF2    push        dword ptr [eax]
 00496BF4    xor         ecx,ecx
 00496BF6    mov         dl,22
 00496BF8    mov         eax,dword ptr [ebp-0BB4]
 00496BFE    mov         eax,dword ptr [eax+1E]
 00496C01    call        00483A34
 00496C06    dec         dword ptr [ebp-0B94]
 00496C0C    lea         eax,[ebp-0B80]
 00496C12    mov         edx,2
 00496C17    call        0067DCA0
 00496C1C    dec         dword ptr [ebp-0B94]
 00496C22    lea         eax,[ebp-0B7C]
 00496C28    mov         edx,2
 00496C2D    call        0067DCA0
 00496C32    mov         al,1
 00496C34    push        eax
 00496C35    dec         dword ptr [ebp-0B94]
 00496C3B    lea         eax,[ebp-4]
 00496C3E    mov         edx,2
 00496C43    call        0067DCA0
 00496C48    pop         eax
 00496C49    mov         edx,dword ptr [ebp-0BB0]
 00496C4F    mov         dword ptr fs:[0],edx
>00496C56    jmp         00496D77
 00496C5B    mov         word ptr [ebp-0BA0],1640
 00496C64    mov         edx,6B6811
 00496C69    lea         eax,[ebp-0B84]
 00496C6F    call        0067DAB4
 00496C74    inc         dword ptr [ebp-0B94]
 00496C7A    mov         edx,dword ptr [eax]
 00496C7C    mov         eax,dword ptr [ebp-0BB4]
 00496C82    mov         eax,dword ptr [eax+22]
 00496C85    call        SameText
 00496C8A    push        eax
 00496C8B    dec         dword ptr [ebp-0B94]
 00496C91    lea         eax,[ebp-0B84]
 00496C97    mov         edx,2
 00496C9C    call        0067DCA0
 00496CA1    pop         ecx
 00496CA2    test        cl,cl
>00496CA4    je          00496D53
 00496CAA    mov         eax,dword ptr [ebp-0BB4]
 00496CB0    mov         byte ptr [eax+5],28
 00496CB4    push        4
 00496CB6    mov         word ptr [ebp-0BA0],164C
 00496CBF    mov         edx,6B6823
 00496CC4    lea         eax,[ebp-0B88]
 00496CCA    call        0067DAB4
 00496CCF    inc         dword ptr [ebp-0B94]
 00496CD5    push        dword ptr [eax]
 00496CD7    mov         edx,6B6825
 00496CDC    lea         eax,[ebp-0B8C]
 00496CE2    call        0067DAB4
 00496CE7    inc         dword ptr [ebp-0B94]
 00496CED    push        dword ptr [eax]
 00496CEF    xor         ecx,ecx
 00496CF1    mov         dl,22
 00496CF3    mov         eax,dword ptr [ebp-0BB4]
 00496CF9    mov         eax,dword ptr [eax+1E]
 00496CFC    call        00483A34
 00496D01    dec         dword ptr [ebp-0B94]
 00496D07    lea         eax,[ebp-0B8C]
 00496D0D    mov         edx,2
 00496D12    call        0067DCA0
 00496D17    dec         dword ptr [ebp-0B94]
 00496D1D    lea         eax,[ebp-0B88]
 00496D23    mov         edx,2
 00496D28    call        0067DCA0
 00496D2D    mov         al,1
 00496D2F    push        eax
 00496D30    dec         dword ptr [ebp-0B94]
 00496D36    lea         eax,[ebp-4]
 00496D39    mov         edx,2
 00496D3E    call        0067DCA0
 00496D43    pop         eax
 00496D44    mov         edx,dword ptr [ebp-0BB0]
 00496D4A    mov         dword ptr fs:[0],edx
>00496D51    jmp         00496D77
 00496D53    xor         eax,eax
 00496D55    push        eax
 00496D56    dec         dword ptr [ebp-0B94]
 00496D5C    lea         eax,[ebp-4]
 00496D5F    mov         edx,2
 00496D64    call        0067DCA0
 00496D69    pop         eax
 00496D6A    mov         edx,dword ptr [ebp-0BB0]
 00496D70    mov         dword ptr fs:[0],edx
 00496D77    mov         esp,ebp
 00496D79    pop         ebp
 00496D7A    ret
end;*}

end.