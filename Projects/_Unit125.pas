//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit125;

interface

uses
  SysUtils, Classes;

    procedure sub_0067ED38;//0067ED38

implementation

//0067ED38
procedure sub_0067ED38;
begin
{*
 0067ED38    push        ebp
 0067ED39    mov         ebp,esp
 0067ED3B    cmp         byte ptr ds:[694044],0;gvar_00694044
 0067ED42    setne       al
 0067ED45    and         eax,1
 0067ED48    push        eax
 0067ED49    push        dword ptr ds:[694093]
 0067ED4F    cmp         byte ptr ds:[69407C],0;gvar_0069407C
 0067ED56    setne       dl
 0067ED59    and         edx,1
 0067ED5C    push        edx
 0067ED5D    cmp         byte ptr ds:[69407D],0;gvar_0069407D
 0067ED64    setne       cl
 0067ED67    and         ecx,1
 0067ED6A    push        ecx
 0067ED6B    call        0040172C
 0067ED70    add         esp,10
 0067ED73    pop         ebp
 0067ED74    ret
*}
end;

end.