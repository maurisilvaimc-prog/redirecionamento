//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit79;

interface

uses
  SysUtils, Classes;

type
  TUnknownList = array [1..65536] of IInterface;
  tagMULTI_QI = tagMULTI_QI = record//size=C
f4:IInterface;//f4
end;;
  TMultiQIArray = array [1..65536] of tagMULTI_QI;
  tagSTATDATA = tagSTATDATA = record//size=20
f18:IAdviseSink;//f18
end;;
  tagINTERFACEINFO = tagINTERFACEINFO = record//size=18
f0:IInterface;//f0
end;;
  tagEXCEPINFO = tagEXCEPINFO = record//size=20
f4:WideString;//f4
f8:WideString;//f8
fC:WideString;//fC
end;;
  tagREGKIND = (REGKIND_DEFAULT, REGKIND_REGISTER, REGKIND_NONE);
  tagCONNECTDATA = tagCONNECTDATA = record//size=8
f0:IInterface;//f0
end;;
  tagQACONTAINER = tagQACONTAINER = record//size=38
f4:IOleClientSite;//f4
f8:IAdviseSink;//f8
fC:IPropertyNotifySink;//fC
f10:IInterface;//f10
f20:IFont;//f20
f24:IOleUndoManager;//f24
f34:IBindHost;//f34
end;;
    procedure sub_0063F270;//0063F270
    //function sub_0063FBA4(?:?):?;//0063FBA4

implementation

//0063F270
procedure sub_0063F270;
begin
{*
 0063F270    sub         dword ptr ds:[6ECF74],1
 0063F277    ret
*}
end;

//0063FBA4
{*function sub_0063FBA4(?:?):?;
begin
 0063FBA4    push        ebp
 0063FBA5    mov         ebp,esp
 0063FBA7    add         esp,0FFFFFFF8
 0063FBAA    mov         dword ptr [ebp-4],eax
 0063FBAD    test        byte ptr [ebp-1],80
 0063FBB1    sete        byte ptr [ebp-5]
 0063FBB5    mov         al,byte ptr [ebp-5]
 0063FBB8    pop         ecx
 0063FBB9    pop         ecx
 0063FBBA    pop         ebp
 0063FBBB    ret
end;*}

end.