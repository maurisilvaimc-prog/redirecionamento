//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit10;

interface

uses
  SysUtils, Classes;

type
  TAlign = (alNone, alTop, alBottom, alLeft, alRight, alClient, alCustom);
  Set = set of TAnchorKind;
  bool = (false, true);
  TDragMode = (dmManual, dmAutomatic);
  TTextCase = (tcLowerCase, tcUpperCase, tcAsIs);
  TFormBorderStyle = (bsNone, bsSingle, bsSizeable, bsDialog, bsToolWindow, bsSizeToolWin);
  Set = set of TOutlineOption;
  TScrollStyle = (ssNone, ssHorizontal, ssVertical, ssBoth);
  TOutlineType = (otStandard, otOwnerDraw);
  TDragKind = (dkDrag, dkDock);
  TOutlineOption = (ooDrawTreeRoot, ooDrawFocusRect, ooStretchBitmaps);
  TAnchorKind = (akLeft, akTop, akRight, akBottom);
    procedure sub_0049B42C;//0049B42C
    //function sub_0049B96C(?:?):?;//0049B96C
    //procedure sub_0049BAB8(?:Pointer; ?:?);//0049BAB8
    //function sub_0049BE20(?:Pointer; ?:AnsiString):?;//0049BE20
    //function sub_0049BEE4(?:?):?;//0049BEE4
    //procedure sub_0049BFC8(?:?; ?:?);//0049BFC8
    //function sub_0049D4C4(?:?):?;//0049D4C4
    //procedure sub_0049D520(?:?; ?:dword);//0049D520
    //procedure sub_0049D68C(?:?; ?:TListBox);//0049D68C
    //procedure sub_0049D820(?:?; ?:Pointer; ?:?);//0049D820
    //function sub_0049D8D0(?:?; ?:Pointer):?;//0049D8D0
    //procedure sub_0049D9A0(?:?);//0049D9A0
    //procedure sub_0049DAA4(?:?);//0049DAA4
    //procedure sub_0049DBA4(?:?);//0049DBA4
    //function sub_0049F9D4(?:?; ?:dword; ?:?):?;//0049F9D4
    //function sub_0049FAA0(?:?; ?:AnsiString):?;//0049FAA0
    //procedure sub_0049FB58(?:?; ?:?; ?:?);//0049FB58
    //function sub_004A0680(?:IdrDfmReader; ?:?; ?:?):?;//004A0680
    //procedure sub_004A06E0(?:?; ?:?; ?:?);//004A06E0
    //procedure sub_004A0768(?:?);//004A0768
    destructor Destroy;//004A0808
    constructor Create(AOwner:TComponent);//004A0894
    //function sub_004A0988(?:?; ?:?):?;//004A0988
    destructor Destroy;//004A0A68
    //procedure sub_004A0C30(?:?; ?:?; ?:?);//004A0C30
    procedure sub_004A0C54;//004A0C54
    //procedure sub_004A0C84(?:?; ?:?);//004A0C84
    //procedure sub_004A0CF0(?:?);//004A0CF0
    //procedure sub_004A23E4(?:?; ?:?; ?:?; ?:?);//004A23E4
    //procedure sub_004A2AA8(?:?; ?:?; ?:?);//004A2AA8
    //procedure sub_004A304C(?:IdrDfmForm; ?:?);//004A304C
    //procedure sub_004A3278(?:?);//004A3278
    constructor Create(AOwner:TComponent);//004A32E8
    destructor Destroy;//004A3380
    //procedure sub_004A3430(?:?; ?:?; ?:Pointer; ?:?);//004A3430
    //function sub_004A3938(?:?):?;//004A3938
    @System@TObject@ClassName$qqrv; stdcall;//004A3954
    //procedure sub_004A3978(?:?; ?:?);//004A3978
    @System@TMetaClass@ClassName$qqrv; stdcall;//004A3AA4
    //procedure sub_004A410C(?:?);//004A410C
    procedure Loaded;//004A41B4
    procedure sub_004A41EC;//004A41EC
    //procedure Dispatch(?:?);//004A4994
    destructor Destroy;//004A4A20
    destructor Destroy;//004A4AA0
    constructor Create(AOwner:TComponent);//004A4B18
    @$xp$10TCCalendar; stdcall;//004A4B78
    procedure Dispatch; stdcall;//004A5124
    destructor Destroy;//004A5158
    @$xp$27Cdiroutl@TCDirectoryOutline; stdcall;//004A51AC
    destructor Destroy;//004A586C
    @$xp$16Cspin@TCSpinEdit; stdcall;//004A58D4
    procedure Dispatch; stdcall;//004A5E88
    @$xp$18Cspin@TCSpinButton; stdcall;//004A5F14
    procedure Dispatch; stdcall;//004A6300
    procedure }; stdcall;//004A6368
    procedure sub_004A6C80;//004A6C80
    procedure sub_004A6CDC;//004A6CDC
    destructor Destroy;//004A6E14
    //procedure sub_004A705C(?:?; ?:?);//004A705C
    //procedure sub_004A70B8(?:?);//004A70B8
    //procedure sub_004A7114(?:?; ?:?);//004A7114
    //function sub_004A7268(?:?):?;//004A7268
    //function sub_004A7278(?:?):?;//004A7278
    //function sub_004A7288(?:?):?;//004A7288
    //procedure sub_004A7298(?:?; ?:?);//004A7298
    //procedure sub_004A72BC(?:?; ?:?);//004A72BC
    //procedure sub_004A7364(?:?; ?:?);//004A7364
    //function sub_004A73C0(?:?):?;//004A73C0
    //function sub_004A73CC(?:?):?;//004A73CC
    procedure sub_004A73D8;//004A73D8
    constructor Create(AOwner:TComponent);//004A787C
    destructor Destroy;//004A7940
    procedure sub_004A79DC(?:TFEditFieldsDlg_11011981);//004A79DC
    procedure FormShow(Sender:TObject);//004A7C88
    procedure lbFXrefsDblClick(Sender:TObject);//004A7E34
    procedure lbFieldsClick(Sender:TObject);//004A7F20
    procedure bEditClick(Sender:TObject);//004A8128
    //procedure edtNameChange(?:?);//004A82BC
    //procedure edtTypeChange(?:?);//004A82DC
    procedure bApplyClick(Sender:TObject);//004A82FC
    procedure bCloseClick(Sender:TObject);//004A8914
    procedure bAddClick(Sender:TObject);//004A89F0
    procedure bRemoveClick(Sender:TObject);//004A8B9C
    procedure FormCreate(Sender:TObject);//004A8D20
    constructor Create(AOwner:TComponent);//004A8DD4
    procedure FormCreate(Sender:TObject);//004A8E8C
    procedure sub_004A8EFC(?:TFKBViewer_11011981; ?:dword; ?:Integer);//004A8EFC
    procedure bPrevClick(Sender:TObject);//004A9E94
    procedure bNextClick(Sender:TObject);//004A9ECC
    procedure btnOkClick(Sender:TObject);//004A9F04
    procedure btnCancelClick(Sender:TObject);//004AAA5C
    //procedure edtCurrIdxChange(?:?);//004AAA74
    procedure cbUnitsChange(?:TFMain_11011981);//004AAB18
    procedure FormShow(Sender:TObject);//004AADFC
    destructor Destroy;//004AAF68

implementation

//0049B42C
procedure sub_0049B42C;
begin
{*
 0049B42C    push        ebp
 0049B42D    mov         ebp,esp
 0049B42F    mov         eax,[005CB700];TFrame
 0049B434    mov         [006BDC77],eax;gvar_006BDC77:TFrame
 0049B439    mov         edx,dword ptr ds:[5A23E8];TMainMenu
 0049B43F    mov         dword ptr ds:[6BDC7F],edx;gvar_006BDC7F:TMainMenu
 0049B445    mov         ecx,dword ptr ds:[5A26CC];TPopupMenu
 0049B44B    mov         dword ptr ds:[6BDC87],ecx;gvar_006BDC87:TPopupMenu
 0049B451    mov         eax,[0059205C];TLabel
 0049B456    mov         [006BDC8F],eax;gvar_006BDC8F:TLabel
 0049B45B    mov         edx,dword ptr ds:[5928F4];TEdit
 0049B461    mov         dword ptr ds:[6BDC97],edx;gvar_006BDC97:TEdit
 0049B467    mov         ecx,dword ptr ds:[5DE15C];TLabeledEdit
 0049B46D    mov         dword ptr ds:[6BDC9F],ecx;gvar_006BDC9F:TLabeledEdit
 0049B473    mov         eax,[00593370];TMemo
 0049B478    mov         [006BDCA7],eax;gvar_006BDCA7:TMemo
 0049B47D    mov         edx,dword ptr ds:[594650];TButton
 0049B483    mov         dword ptr ds:[6BDCAF],edx;gvar_006BDCAF:TButton
 0049B489    mov         ecx,dword ptr ds:[594EE0];TCheckBox
 0049B48F    mov         dword ptr ds:[6BDCB7],ecx;gvar_006BDCB7:TCheckBox
 0049B495    mov         eax,[0059560C];TRadioButton
 0049B49A    mov         [006BDCBF],eax;gvar_006BDCBF:TRadioButton
 0049B49F    mov         edx,dword ptr ds:[5960B0];TListBox
 0049B4A5    mov         dword ptr ds:[6BDCC7],edx;gvar_006BDCC7:TListBox
 0049B4AB    mov         ecx,dword ptr ds:[593A7C];TComboBox
 0049B4B1    mov         dword ptr ds:[6BDCCF],ecx;gvar_006BDCCF:TComboBox
 0049B4B7    mov         eax,[00596B14];TScrollBar
 0049B4BC    mov         [006BDCD7],eax;gvar_006BDCD7:TScrollBar
 0049B4C1    mov         edx,dword ptr ds:[5917D0];TGroupBox
 0049B4C7    mov         dword ptr ds:[6BDCDF],edx;gvar_006BDCDF:TGroupBox
 0049B4CD    mov         ecx,dword ptr ds:[5DC38C];TRadioGroup
 0049B4D3    mov         dword ptr ds:[6BDCE7],ecx;gvar_006BDCE7:TRadioGroup
 0049B4D9    mov         eax,[005DAC80];TPanel
 0049B4DE    mov         [006BDCEF],eax;gvar_006BDCEF:TPanel
 0049B4E3    mov         edx,dword ptr ds:[58D350];TActionList
 0049B4E9    mov         dword ptr ds:[6BDCF7],edx;gvar_006BDCF7:TActionList
 0049B4EF    mov         ecx,dword ptr ds:[58D70C];TAction
 0049B4F5    mov         dword ptr ds:[6BDCFF],ecx;gvar_006BDCFF:TAction
 0049B4FB    mov         eax,[00586E00];TEditCut
 0049B500    mov         [006BDD07],eax;gvar_006BDD07:TEditCut
 0049B505    mov         edx,dword ptr ds:[586ED4];TEditCopy
 0049B50B    mov         dword ptr ds:[6BDD0F],edx;gvar_006BDD0F:TEditCopy
 0049B511    mov         ecx,dword ptr ds:[586FA8];TEditPaste
 0049B517    mov         dword ptr ds:[6BDD17],ecx;gvar_006BDD17:TEditPaste
 0049B51D    mov         eax,[00587080];TEditSelectAll
 0049B522    mov         [006BDD1F],eax;gvar_006BDD1F:TEditSelectAll
 0049B527    mov         edx,dword ptr ds:[587160];TEditUndo
 0049B52D    mov         dword ptr ds:[6BDD27],edx;gvar_006BDD27:TEditUndo
 0049B533    mov         ecx,dword ptr ds:[587234];TEditDelete
 0049B539    mov         dword ptr ds:[6BDD2F],ecx;gvar_006BDD2F:TEditDelete
 0049B53F    mov         eax,[005873E8];TWindowClose
 0049B544    mov         [006BDD37],eax;gvar_006BDD37:TWindowClose
 0049B549    mov         edx,dword ptr ds:[5874C4];TWindowCascade
 0049B54F    mov         dword ptr ds:[6BDD3F],edx;gvar_006BDD3F:TWindowCascade
 0049B555    mov         ecx,dword ptr ds:[5875A4];TWindowTileHorizontal
 0049B55B    mov         dword ptr ds:[6BDD47],ecx;gvar_006BDD47:TWindowTileHorizontal
 0049B561    mov         eax,[00587690];TWindowTileVertical
 0049B566    mov         [006BDD4F],eax;gvar_006BDD4F:TWindowTileVertical
 0049B56B    mov         edx,dword ptr ds:[587778];TWindowMinimizeAll
 0049B571    mov         dword ptr ds:[6BDD57],edx;gvar_006BDD57:TWindowMinimizeAll
 0049B577    mov         ecx,dword ptr ds:[587860];TWindowArrange
 0049B57D    mov         dword ptr ds:[6BDD5F],ecx;gvar_006BDD5F:TWindowArrange
 0049B583    mov         eax,[00587A14];THelpContents
 0049B588    mov         [006BDD67],eax;gvar_006BDD67:THelpContents
 0049B58D    mov         edx,dword ptr ds:[587AEC];THelpTopicSearch
 0049B593    mov         dword ptr ds:[6BDD6F],edx;gvar_006BDD6F:THelpTopicSearch
 0049B599    mov         ecx,dword ptr ds:[587BCC];THelpOnHelp
 0049B59F    mov         dword ptr ds:[6BDD77],ecx;gvar_006BDD77:THelpOnHelp
 0049B5A5    mov         eax,[00587CA0];THelpContextAction
 0049B5AA    mov         [006BDD7F],eax;gvar_006BDD7F:THelpContextAction
 0049B5AF    mov         edx,dword ptr ds:[587F14];TFileOpen
 0049B5B5    mov         dword ptr ds:[6BDD87],edx;gvar_006BDD87:TFileOpen
 0049B5BB    mov         ecx,dword ptr ds:[5881B8];TFileOpenWith
 0049B5C1    mov         dword ptr ds:[6BDD8F],ecx;gvar_006BDD8F:TFileOpenWith
 0049B5C7    mov         eax,[005882F0];TFileSaveAs
 0049B5CC    mov         [006BDD97],eax;gvar_006BDD97:TFileSaveAs
 0049B5D1    mov         edx,dword ptr ds:[588598];TFilePrintSetup
 0049B5D7    mov         dword ptr ds:[6BDD9F],edx;gvar_006BDD9F:TFilePrintSetup
 0049B5DD    mov         ecx,dword ptr ds:[588848];TFileExit
 0049B5E3    mov         dword ptr ds:[6BDDA7],ecx;gvar_006BDDA7:TFileExit
 0049B5E9    mov         eax,[00588B3C];TSearchFind
 0049B5EE    mov         [006BDDAF],eax;gvar_006BDDAF:TSearchFind
 0049B5F3    mov         edx,dword ptr ds:[588DE8];TSearchReplace
 0049B5F9    mov         dword ptr ds:[6BDDB7],edx;gvar_006BDDB7:TSearchReplace
 0049B5FF    mov         ecx,dword ptr ds:[58909C];TSearchFindFirst
 0049B605    mov         dword ptr ds:[6BDDBF],ecx;gvar_006BDDBF:TSearchFindFirst
 0049B60B    mov         eax,[00589184];TSearchFindNext
 0049B610    mov         [006BDDC7],eax;gvar_006BDDC7:TSearchFindNext
 0049B615    mov         edx,dword ptr ds:[5893C4];TFontEdit
 0049B61B    mov         dword ptr ds:[6BDDCF],edx;gvar_006BDDCF:TFontEdit
 0049B621    mov         ecx,dword ptr ds:[589668];TColorSelect
 0049B627    mov         dword ptr ds:[6BDDD7],ecx;gvar_006BDDD7:TColorSelect
 0049B62D    mov         eax,[00589914];TPrintDlg
 0049B632    mov         [006BDDDF],eax;gvar_006BDDDF:TPrintDlg
 0049B637    mov         edx,dword ptr ds:[5865F0];TOpenPicture
 0049B63D    mov         dword ptr ds:[6BDDE7],edx;gvar_006BDDE7:TOpenPicture
 0049B643    mov         ecx,dword ptr ds:[586898];TSavePicture
 0049B649    mov         dword ptr ds:[6BDDEF],ecx;gvar_006BDDEF:TSavePicture
 0049B64F    mov         eax,[00639464];TBitBtn
 0049B654    mov         [006BDDF7],eax;gvar_006BDDF7:TBitBtn
 0049B659    mov         edx,dword ptr ds:[638E9C];TSpeedButton
 0049B65F    mov         dword ptr ds:[6BDDFF],edx;gvar_006BDDFF:TSpeedButton
 0049B665    mov         ecx,dword ptr ds:[5A9684];TMaskEdit
 0049B66B    mov         dword ptr ds:[6BDE07],ecx;gvar_006BDE07:TMaskEdit
 0049B671    mov         eax,[005B2D98];TStringGrid
 0049B676    mov         [006BDE0F],eax;gvar_006BDE0F:TStringGrid
 0049B67B    mov         edx,dword ptr ds:[5B2250];TDrawGrid
 0049B681    mov         dword ptr ds:[6BDE17],edx;gvar_006BDE17:TDrawGrid
 0049B687    mov         ecx,dword ptr ds:[5DA234];TImage
 0049B68D    mov         dword ptr ds:[6BDE1F],ecx;gvar_006BDE1F:TImage
 0049B693    mov         eax,[005BEB28];TPicture
 0049B698    mov         [006BDE27],eax;gvar_006BDE27:TPicture
 0049B69D    mov         edx,dword ptr ds:[5BEDD4];TBitmap
 0049B6A3    mov         dword ptr ds:[6BDE2F],edx;gvar_006BDE2F:TBitmap
 0049B6A9    mov         ecx,dword ptr ds:[5BE9D4];TGraphic
 0049B6AF    mov         dword ptr ds:[6BDE37],ecx;gvar_006BDE37:TGraphic
 0049B6B5    mov         eax,[005BEC94];TMetafile
 0049B6BA    mov         [006BDE3F],eax;gvar_006BDE3F:TMetafile
 0049B6BF    mov         edx,dword ptr ds:[5BEF18];TIcon
 0049B6C5    mov         dword ptr ds:[6BDE47],edx;gvar_006BDE47:TIcon
 0049B6CB    mov         ecx,dword ptr ds:[5D9DE0];TShape
 0049B6D1    mov         dword ptr ds:[6BDE4F],ecx;gvar_006BDE4F:TShape
 0049B6D7    mov         eax,[005DA860];TBevel
 0049B6DC    mov         [006BDE57],eax;gvar_006BDE57:TBevel
 0049B6E1    mov         edx,dword ptr ds:[5CACB8];TScrollBox
 0049B6E7    mov         dword ptr ds:[6BDE5F],edx;gvar_006BDE5F:TScrollBox
 0049B6ED    mov         ecx,dword ptr ds:[56F068];TCheckListBox
 0049B6F3    mov         dword ptr ds:[6BDE67],ecx;gvar_006BDE67:TCheckListBox
 0049B6F9    mov         eax,[005DCA64];TSplitter
 0049B6FE    mov         [006BDE6F],eax;gvar_006BDE6F:TSplitter
 0049B703    mov         edx,dword ptr ds:[597374];TStaticText
 0049B709    mov         dword ptr ds:[6BDE77],edx;gvar_006BDE77:TStaticText
 0049B70F    mov         ecx,dword ptr ds:[5DD07C];TControlBar
 0049B715    mov         dword ptr ds:[6BDE7F],ecx;gvar_006BDE7F:TControlBar
 0049B71B    mov         eax,[00556D3C];TChart
 0049B720    mov         [006BDE87],eax;gvar_006BDE87:TChart
 0049B725    mov         edx,dword ptr ds:[54D9B4];TBarSeries
 0049B72B    mov         dword ptr ds:[6BDE8F],edx;gvar_006BDE8F:TBarSeries
 0049B731    mov         ecx,dword ptr ds:[54DBB0];THorizBarSeries
 0049B737    mov         dword ptr ds:[6BDE97],ecx;gvar_006BDE97:THorizBarSeries
 0049B73D    mov         eax,[0054CE0C];TPointSeries
 0049B742    mov         [006BDE9F],eax;gvar_006BDE9F:TPointSeries
 0049B747    mov         edx,dword ptr ds:[54D0B8];TAreaSeries
 0049B74D    mov         dword ptr ds:[6BDEA7],edx;gvar_006BDEA7:TAreaSeries
 0049B753    mov         ecx,dword ptr ds:[54CAFC];TLineSeries
 0049B759    mov         dword ptr ds:[6BDEAF],ecx;gvar_006BDEAF:TLineSeries
 0049B75F    mov         eax,[0054E578];TFastLineSeries
 0049B764    mov         [006BDEB7],eax;gvar_006BDEB7:TFastLineSeries
 0049B769    mov         edx,dword ptr ds:[54E240];TPieSeries
 0049B76F    mov         dword ptr ds:[6BDEBF],edx;gvar_006BDEBF:TPieSeries
 0049B775    mov         ecx,dword ptr ds:[5DED44];TColorBox
 0049B77B    mov         dword ptr ds:[6BDEC7],ecx;gvar_006BDEC7:TColorBox
 0049B781    mov         eax,[00603248];TTabControl
 0049B786    mov         [006BDECF],eax;gvar_006BDECF:TTabControl
 0049B78B    mov         edx,dword ptr ds:[6040B8];TPageControl
 0049B791    mov         dword ptr ds:[6BDED7],edx;gvar_006BDED7:TPageControl
 0049B797    mov         ecx,dword ptr ds:[603AF0];TTabSheet
 0049B79D    mov         dword ptr ds:[6BDEDF],ecx;gvar_006BDEDF:TTabSheet
 0049B7A3    mov         eax,[005EEF08];TImageList
 0049B7A8    mov         [006BDEE7],eax;gvar_006BDEE7:TImageList
 0049B7AD    mov         edx,dword ptr ds:[608B20];TRichEdit
 0049B7B3    mov         dword ptr ds:[6BDEEF],edx;gvar_006BDEEF:TRichEdit
 0049B7B9    mov         ecx,dword ptr ds:[607F7C];TTrackBar
 0049B7BF    mov         dword ptr ds:[6BDEF7],ecx;gvar_006BDEF7:TTrackBar
 0049B7C5    mov         eax,[006080F8];TProgressBar
 0049B7CA    mov         [006BDEFF],eax;gvar_006BDEFF:TProgressBar
 0049B7CF    mov         edx,dword ptr ds:[60989C];TUpDown
 0049B7D5    mov         dword ptr ds:[6BDF07],edx;gvar_006BDF07:TUpDown
 0049B7DB    mov         ecx,dword ptr ds:[60A01C];THotKey
 0049B7E1    mov         dword ptr ds:[6BDF0F],ecx;gvar_006BDF0F:THotKey
 0049B7E7    mov         eax,[0060C774];TAnimate
 0049B7EC    mov         [006BDF17],eax;gvar_006BDF17:TAnimate
 0049B7F1    mov         edx,dword ptr ds:[60FD38];TDateTimePicker
 0049B7F7    mov         dword ptr ds:[6BDF1F],edx;gvar_006BDF1F:TDateTimePicker
 0049B7FD    mov         ecx,dword ptr ds:[60F3D8];TMonthCalendar
 0049B803    mov         dword ptr ds:[6BDF27],ecx;gvar_006BDF27:TMonthCalendar
 0049B809    mov         eax,[00607180];TTreeView
 0049B80E    mov         [006BDF2F],eax;gvar_006BDF2F:TTreeView
 0049B813    mov         edx,dword ptr ds:[60B634];TListView
 0049B819    mov         dword ptr ds:[6BDF37],edx;gvar_006BDF37:TListView
 0049B81F    mov         ecx,dword ptr ds:[606178];THeaderControl
 0049B825    mov         dword ptr ds:[6BDF3F],ecx;gvar_006BDF3F:THeaderControl
 0049B82B    mov         eax,[00604EA4];TStatusBar
 0049B830    mov         [006BDF47],eax;gvar_006BDF47:TStatusBar
 0049B835    mov         edx,dword ptr ds:[60D658];TToolBar
 0049B83B    mov         dword ptr ds:[6BDF4F],edx;gvar_006BDF4F:TToolBar
 0049B841    mov         ecx,dword ptr ds:[60CD78];TToolButton
 0049B847    mov         dword ptr ds:[6BDF57],ecx;gvar_006BDF57:TToolButton
 0049B84D    mov         eax,[0060E6B8];TCoolBar
 0049B852    mov         [006BDF5F],eax;gvar_006BDF5F:TCoolBar
 0049B857    mov         edx,dword ptr ds:[611474];TComboBoxEx
 0049B85D    mov         dword ptr ds:[6BDF67],edx;gvar_006BDF67:TComboBoxEx
 0049B863    mov         ecx,dword ptr ds:[610770];TPageScroller
 0049B869    mov         dword ptr ds:[6BDF6F],ecx;gvar_006BDF6F:TPageScroller
 0049B86F    mov         eax,[00582464];TMediaPlayer
 0049B874    mov         [006BDF77],eax;gvar_006BDF77:TMediaPlayer
 0049B879    mov         edx,dword ptr ds:[5779FC];TTabSet
 0049B87F    mov         dword ptr ds:[6BDF7F],edx;gvar_006BDF7F:TTabSet
 0049B885    mov         ecx,dword ptr ds:[570E38];TOutline
 0049B88B    mov         dword ptr ds:[6BDF87],ecx;gvar_006BDF87:TOutline
 0049B891    mov         eax,[00575FC4];TTabbedNotebook
 0049B896    mov         [006BDF8F],eax;gvar_006BDF8F:TTabbedNotebook
 0049B89B    mov         edx,dword ptr ds:[5DB758];TNotebook
 0049B8A1    mov         dword ptr ds:[6BDF97],edx;gvar_006BDF97:TNotebook
 0049B8A7    mov         ecx,dword ptr ds:[5DB56C];TPage
 0049B8AD    mov         dword ptr ds:[6BDF9F],ecx;gvar_006BDF9F:TPage
 0049B8B3    mov         eax,[005DBE20];THeader
 0049B8B8    mov         [006BDFA7],eax;gvar_006BDFA7:THeader
 0049B8BD    mov         edx,dword ptr ds:[57CC14];TFileListBox
 0049B8C3    mov         dword ptr ds:[6BDFAF],edx;gvar_006BDFAF:TFileListBox
 0049B8C9    mov         ecx,dword ptr ds:[57D4B4];TDirectoryListBox
 0049B8CF    mov         dword ptr ds:[6BDFB7],ecx;gvar_006BDFB7:TDirectoryListBox
 0049B8D5    mov         eax,[0057DD24];TDriveComboBox
 0049B8DA    mov         [006BDFBF],eax;gvar_006BDFBF:TDriveComboBox
 0049B8DF    mov         edx,dword ptr ds:[57E494];TFilterComboBox
 0049B8E5    mov         dword ptr ds:[6BDFC7],edx;gvar_006BDFC7:TFilterComboBox
 0049B8EB    mov         ecx,dword ptr ds:[6E33DC];^@TPerformanceGraph@
 0049B8F1    mov         dword ptr ds:[6BDFCF],ecx;gvar_006BDFCF:TPerformanceGraph
 0049B8F7    mov         eax,[006C1C54];^@Cspin@TCSpinButton@
 0049B8FC    mov         [006BDFD7],eax;gvar_006BDFD7:TCSpinButton
 0049B901    mov         edx,dword ptr ds:[6E2DC0];^@Cspin@TTimerSpeedButton@
 0049B907    mov         dword ptr ds:[6BDFDF],edx;gvar_006BDFDF:TTimerSpeedButton
 0049B90D    mov         ecx,dword ptr ds:[6C1AE8];^@Cspin@TCSpinEdit@
 0049B913    mov         dword ptr ds:[6BDFE7],ecx;gvar_006BDFE7:TCSpinEdit
 0049B919    mov         eax,[0057B190];TColorGrid
 0049B91E    mov         [006BDFEF],eax;gvar_006BDFEF:TColorGrid
 0049B923    mov         edx,dword ptr ds:[6E29B0];^@TCGauge@
 0049B929    mov         dword ptr ds:[6BDFF7],edx;gvar_006BDFF7:TCGauge
 0049B92F    mov         ecx,dword ptr ds:[6C1984];^@Cdiroutl@TCDirectoryOutline@
 0049B935    mov         dword ptr ds:[6BDFFF],ecx;gvar_006BDFFF:TCDirectoryOutline
 0049B93B    mov         eax,[006C181C];^@TCCalendar@
 0049B940    mov         [006BE007],eax;gvar_006BE007:TCCalendar
 0049B945    mov         edx,dword ptr ds:[6E35D4];^@TPie@
 0049B94B    mov         dword ptr ds:[6BE00F],edx;gvar_006BE00F:TPie
 0049B951    mov         ecx,dword ptr ds:[5AC500];TValueListEditor
 0049B957    mov         dword ptr ds:[6BE017],ecx;gvar_006BE017:TValueListEditor
 0049B95D    mov         eax,[006C16F0];IdrDfmDefaultControl
 0049B962    mov         [006BE01F],eax;gvar_006BE01F:IdrDfmDefaultControl
 0049B967    pop         ebp
 0049B968    ret
*}
end;

//0049B96C
{*function sub_0049B96C(?:?):?;
begin
 0049B96C    push        ebp
 0049B96D    mov         ebp,esp
 0049B96F    add         esp,0FFFFFFCC
 0049B972    mov         dword ptr [ebp-4],eax
 0049B975    mov         eax,6BEBC0
 0049B97A    call        0066FECC
 0049B97F    mov         word ptr [ebp-24],8
 0049B985    mov         eax,dword ptr [ebp-4]
 0049B988    add         eax,2
 0049B98B    call        00401EA8
 0049B990    inc         dword ptr [ebp-18]
 0049B993    mov         eax,dword ptr [ebp-4]
 0049B996    add         eax,6
 0049B999    call        00401EA8
 0049B99E    inc         dword ptr [ebp-18]
 0049B9A1    mov         eax,dword ptr [ebp-4]
 0049B9A4    add         eax,0A
 0049B9A7    call        00401EA8
 0049B9AC    inc         dword ptr [ebp-18]
 0049B9AF    mov         edx,dword ptr [ebp-4]
 0049B9B2    mov         byte ptr [edx],0
 0049B9B5    mov         ecx,dword ptr [ebp-4]
 0049B9B8    mov         byte ptr [ecx+1],0
 0049B9BC    mov         word ptr [ebp-24],14
 0049B9C2    mov         edx,6BE59F
 0049B9C7    lea         eax,[ebp-8]
 0049B9CA    call        0067DAB4
 0049B9CF    inc         dword ptr [ebp-18]
 0049B9D2    lea         edx,[ebp-8]
 0049B9D5    mov         eax,dword ptr [ebp-4]
 0049B9D8    add         eax,2
 0049B9DB    call        0067DCD0
 0049B9E0    dec         dword ptr [ebp-18]
 0049B9E3    lea         eax,[ebp-8]
 0049B9E6    mov         edx,2
 0049B9EB    call        0067DCA0
 0049B9F0    mov         word ptr [ebp-24],20
 0049B9F6    mov         edx,6BE5A0
 0049B9FB    lea         eax,[ebp-0C]
 0049B9FE    call        0067DAB4
 0049BA03    inc         dword ptr [ebp-18]
 0049BA06    lea         edx,[ebp-0C]
 0049BA09    mov         eax,dword ptr [ebp-4]
 0049BA0C    add         eax,6
 0049BA0F    call        0067DCD0
 0049BA14    dec         dword ptr [ebp-18]
 0049BA17    lea         eax,[ebp-0C]
 0049BA1A    mov         edx,2
 0049BA1F    call        0067DCA0
 0049BA24    mov         word ptr [ebp-24],2C
 0049BA2A    mov         edx,6BE5A1
 0049BA2F    lea         eax,[ebp-10]
 0049BA32    call        0067DAB4
 0049BA37    inc         dword ptr [ebp-18]
 0049BA3A    lea         edx,[ebp-10]
 0049BA3D    mov         eax,dword ptr [ebp-4]
 0049BA40    add         eax,0A
 0049BA43    call        0067DCD0
 0049BA48    dec         dword ptr [ebp-18]
 0049BA4B    lea         eax,[ebp-10]
 0049BA4E    mov         edx,2
 0049BA53    call        0067DCA0
 0049BA58    mov         dl,1
 0049BA5A    mov         eax,[00642BA0];TMemoryStream
 0049BA5F    call        004290EC
 0049BA64    mov         ecx,dword ptr [ebp-4]
 0049BA67    mov         dword ptr [ecx+0E],eax
 0049BA6A    mov         eax,dword ptr [ebp-4]
 0049BA6D    xor         edx,edx
 0049BA6F    mov         dword ptr [eax+12],edx
 0049BA72    mov         dl,1
 0049BA74    mov         eax,[006422A4];TList
 0049BA79    call        00413424
 0049BA7E    mov         ecx,dword ptr [ebp-4]
 0049BA81    mov         dword ptr [ecx+16],eax
 0049BA84    mov         dl,1
 0049BA86    mov         eax,[006422A4];TList
 0049BA8B    call        00413424
 0049BA90    mov         ecx,dword ptr [ebp-4]
 0049BA93    mov         dword ptr [ecx+1A],eax
 0049BA96    mov         eax,dword ptr [ebp-4]
 0049BA99    xor         edx,edx
 0049BA9B    mov         dword ptr [eax+1E],edx
 0049BA9E    mov         ecx,dword ptr [ebp-4]
 0049BAA1    xor         eax,eax
 0049BAA3    mov         dword ptr [ecx+22],eax
 0049BAA6    mov         edx,dword ptr [ebp-34]
 0049BAA9    mov         dword ptr fs:[0],edx
 0049BAB0    mov         eax,dword ptr [ebp-4]
 0049BAB3    mov         esp,ebp
 0049BAB5    pop         ebp
 0049BAB6    ret
end;*}

//0049BAB8
{*procedure sub_0049BAB8(?:Pointer; ?:?);
begin
 0049BAB8    push        ebp
 0049BAB9    mov         ebp,esp
 0049BABB    add         esp,0FFFFFF84
 0049BABE    mov         dword ptr [ebp-68],edx
 0049BAC1    mov         dword ptr [ebp-4],eax
 0049BAC4    mov         eax,6BEC98
 0049BAC9    call        0066FECC
 0049BACE    mov         dword ptr [ebp-48],3
 0049BAD5    mov         edx,dword ptr [ebp-4]
 0049BAD8    test        edx,edx
>0049BADA    je          0049BDF3
 0049BAE0    mov         word ptr [ebp-54],8
 0049BAE6    mov         ecx,dword ptr [ebp-4]
 0049BAE9    mov         eax,dword ptr [ecx+0E]
 0049BAEC    mov         dword ptr [ebp-0C],eax
 0049BAEF    mov         edx,dword ptr [ebp-0C]
 0049BAF2    test        edx,edx
>0049BAF4    je          0049BB17
 0049BAF6    mov         ecx,dword ptr [ebp-0C]
 0049BAF9    mov         eax,dword ptr [ecx]
 0049BAFB    mov         dword ptr [ebp-8],eax
 0049BAFE    mov         word ptr [ebp-54],20
 0049BB04    mov         edx,3
 0049BB09    mov         eax,dword ptr [ebp-0C]
 0049BB0C    mov         ecx,dword ptr [eax]
 0049BB0E    call        dword ptr [ecx-4]
 0049BB11    mov         word ptr [ebp-54],14
 0049BB17    mov         edx,dword ptr [ebp-4]
 0049BB1A    mov         eax,dword ptr [edx+16]
 0049BB1D    mov         edx,dword ptr [eax+8]
 0049BB20    mov         dword ptr [ebp-6C],edx
 0049BB23    mov         word ptr [ebp-54],8
 0049BB29    xor         ecx,ecx
 0049BB2B    mov         dword ptr [ebp-70],ecx
 0049BB2E    mov         eax,dword ptr [ebp-70]
 0049BB31    mov         edx,dword ptr [ebp-6C]
 0049BB34    cmp         eax,edx
>0049BB36    jge         0049BB95
 0049BB38    mov         ecx,dword ptr [ebp-4]
 0049BB3B    mov         eax,dword ptr [ecx+16]
 0049BB3E    mov         edx,dword ptr [ebp-70]
 0049BB41    call        TList.Get
 0049BB46    mov         dword ptr [ebp-10],eax
 0049BB49    mov         ecx,dword ptr [ebp-10]
 0049BB4C    test        ecx,ecx
>0049BB4E    je          0049BB88
 0049BB50    mov         word ptr [ebp-54],38
 0049BB56    dec         dword ptr [ebp-48]
 0049BB59    mov         eax,dword ptr [ebp-10]
 0049BB5C    add         eax,4
 0049BB5F    mov         edx,2
 0049BB64    call        0067DCA0
 0049BB69    dec         dword ptr [ebp-48]
 0049BB6C    mov         edx,2
 0049BB71    mov         eax,dword ptr [ebp-10]
 0049BB74    call        0067DCA0
 0049BB79    push        dword ptr [ebp-10]
 0049BB7C    call        0066EAB0
 0049BB81    pop         ecx
 0049BB82    mov         word ptr [ebp-54],2C
 0049BB88    inc         dword ptr [ebp-70]
 0049BB8B    mov         ecx,dword ptr [ebp-70]
 0049BB8E    mov         eax,dword ptr [ebp-6C]
 0049BB91    cmp         ecx,eax
>0049BB93    jl          0049BB38
 0049BB95    mov         edx,dword ptr [ebp-4]
 0049BB98    mov         ecx,dword ptr [edx+16]
 0049BB9B    mov         dword ptr [ebp-18],ecx
 0049BB9E    mov         eax,dword ptr [ebp-18]
 0049BBA1    test        eax,eax
>0049BBA3    je          0049BBC6
 0049BBA5    mov         edx,dword ptr [ebp-18]
 0049BBA8    mov         ecx,dword ptr [edx]
 0049BBAA    mov         dword ptr [ebp-14],ecx
 0049BBAD    mov         word ptr [ebp-54],50
 0049BBB3    mov         edx,3
 0049BBB8    mov         eax,dword ptr [ebp-18]
 0049BBBB    mov         ecx,dword ptr [eax]
 0049BBBD    call        dword ptr [ecx-4]
 0049BBC0    mov         word ptr [ebp-54],44
 0049BBC6    mov         eax,dword ptr [ebp-4]
 0049BBC9    mov         edx,dword ptr [eax+1A]
 0049BBCC    mov         ecx,dword ptr [edx+8]
 0049BBCF    mov         dword ptr [ebp-6C],ecx
 0049BBD2    xor         eax,eax
 0049BBD4    mov         dword ptr [ebp-74],eax
 0049BBD7    mov         word ptr [ebp-54],8
 0049BBDD    mov         edx,dword ptr [ebp-74]
 0049BBE0    mov         ecx,dword ptr [ebp-6C]
 0049BBE3    cmp         edx,ecx
>0049BBE5    jge         0049BD04
 0049BBEB    mov         eax,dword ptr [ebp-4]
 0049BBEE    mov         eax,dword ptr [eax+1A]
 0049BBF1    mov         edx,dword ptr [ebp-74]
 0049BBF4    call        TList.Get
 0049BBF9    mov         dword ptr [ebp-78],eax
 0049BBFC    mov         word ptr [ebp-54],8
 0049BC02    mov         ecx,dword ptr [ebp-78]
 0049BC05    mov         eax,dword ptr [ecx+0A]
 0049BC08    test        eax,eax
>0049BC0A    je          0049BCAB
 0049BC10    xor         edx,edx
 0049BC12    mov         dword ptr [ebp-7C],edx
>0049BC15    jmp         0049BC6A
 0049BC17    mov         edx,dword ptr [ebp-7C]
 0049BC1A    mov         eax,dword ptr [ebp-78]
 0049BC1D    mov         eax,dword ptr [eax+0A]
 0049BC20    call        TList.Get
 0049BC25    mov         dword ptr [ebp-1C],eax
 0049BC28    mov         edx,dword ptr [ebp-1C]
 0049BC2B    test        edx,edx
>0049BC2D    je          0049BC67
 0049BC2F    mov         word ptr [ebp-54],68
 0049BC35    dec         dword ptr [ebp-48]
 0049BC38    mov         eax,dword ptr [ebp-1C]
 0049BC3B    add         eax,4
 0049BC3E    mov         edx,2
 0049BC43    call        0067DCA0
 0049BC48    dec         dword ptr [ebp-48]
 0049BC4B    mov         edx,2
 0049BC50    mov         eax,dword ptr [ebp-1C]
 0049BC53    call        0067DCA0
 0049BC58    push        dword ptr [ebp-1C]
 0049BC5B    call        0066EAB0
 0049BC60    pop         ecx
 0049BC61    mov         word ptr [ebp-54],5C
 0049BC67    inc         dword ptr [ebp-7C]
 0049BC6A    mov         ecx,dword ptr [ebp-78]
 0049BC6D    mov         eax,dword ptr [ecx+0A]
 0049BC70    mov         edx,dword ptr [eax+8]
 0049BC73    mov         ecx,dword ptr [ebp-7C]
 0049BC76    cmp         edx,ecx
>0049BC78    jg          0049BC17
 0049BC7A    mov         eax,dword ptr [ebp-78]
 0049BC7D    mov         edx,dword ptr [eax+0A]
 0049BC80    mov         dword ptr [ebp-24],edx
 0049BC83    mov         ecx,dword ptr [ebp-24]
 0049BC86    test        ecx,ecx
>0049BC88    je          0049BCAB
 0049BC8A    mov         eax,dword ptr [ebp-24]
 0049BC8D    mov         edx,dword ptr [eax]
 0049BC8F    mov         dword ptr [ebp-20],edx
 0049BC92    mov         word ptr [ebp-54],80
 0049BC98    mov         edx,3
 0049BC9D    mov         eax,dword ptr [ebp-24]
 0049BCA0    mov         ecx,dword ptr [eax]
 0049BCA2    call        dword ptr [ecx-4]
 0049BCA5    mov         word ptr [ebp-54],74
 0049BCAB    mov         eax,dword ptr [ebp-78]
 0049BCAE    mov         dword ptr [ebp-28],eax
 0049BCB1    mov         edx,dword ptr [ebp-28]
 0049BCB4    test        edx,edx
>0049BCB6    je          0049BCF3
 0049BCB8    mov         word ptr [ebp-54],98
 0049BCBE    dec         dword ptr [ebp-48]
 0049BCC1    mov         eax,dword ptr [ebp-28]
 0049BCC4    add         eax,6
 0049BCC7    mov         edx,2
 0049BCCC    call        0067DCA0
 0049BCD1    dec         dword ptr [ebp-48]
 0049BCD4    mov         eax,dword ptr [ebp-28]
 0049BCD7    add         eax,2
 0049BCDA    mov         edx,2
 0049BCDF    call        0067DCA0
 0049BCE4    push        dword ptr [ebp-28]
 0049BCE7    call        0066EAB0
 0049BCEC    pop         ecx
 0049BCED    mov         word ptr [ebp-54],8C
 0049BCF3    inc         dword ptr [ebp-74]
 0049BCF6    mov         ecx,dword ptr [ebp-74]
 0049BCF9    mov         eax,dword ptr [ebp-6C]
 0049BCFC    cmp         ecx,eax
>0049BCFE    jl          0049BBEB
 0049BD04    mov         edx,dword ptr [ebp-4]
 0049BD07    mov         ecx,dword ptr [edx+1A]
 0049BD0A    mov         dword ptr [ebp-30],ecx
 0049BD0D    mov         eax,dword ptr [ebp-30]
 0049BD10    test        eax,eax
>0049BD12    je          0049BD35
 0049BD14    mov         edx,dword ptr [ebp-30]
 0049BD17    mov         ecx,dword ptr [edx]
 0049BD19    mov         dword ptr [ebp-2C],ecx
 0049BD1C    mov         word ptr [ebp-54],0B0
 0049BD22    mov         edx,3
 0049BD27    mov         eax,dword ptr [ebp-30]
 0049BD2A    mov         ecx,dword ptr [eax]
 0049BD2C    call        dword ptr [ecx-4]
 0049BD2F    mov         word ptr [ebp-54],0A4
 0049BD35    mov         eax,dword ptr [ebp-4]
 0049BD38    mov         edx,dword ptr [eax+1E]
 0049BD3B    test        edx,edx
>0049BD3D    je          0049BD70
 0049BD3F    mov         ecx,dword ptr [ebp-4]
 0049BD42    mov         eax,dword ptr [ecx+1E]
 0049BD45    mov         dword ptr [ebp-38],eax
 0049BD48    mov         edx,dword ptr [ebp-38]
 0049BD4B    test        edx,edx
>0049BD4D    je          0049BD70
 0049BD4F    mov         ecx,dword ptr [ebp-38]
 0049BD52    mov         eax,dword ptr [ecx]
 0049BD54    mov         dword ptr [ebp-34],eax
 0049BD57    mov         word ptr [ebp-54],0C8
 0049BD5D    mov         edx,3
 0049BD62    mov         eax,dword ptr [ebp-38]
 0049BD65    mov         ecx,dword ptr [eax]
 0049BD67    call        dword ptr [ecx-4]
 0049BD6A    mov         word ptr [ebp-54],0BC
 0049BD70    mov         edx,dword ptr [ebp-4]
 0049BD73    mov         eax,dword ptr [edx+22]
 0049BD76    test        eax,eax
>0049BD78    je          0049BDAB
 0049BD7A    mov         edx,dword ptr [ebp-4]
 0049BD7D    mov         ecx,dword ptr [edx+22]
 0049BD80    mov         dword ptr [ebp-40],ecx
 0049BD83    mov         eax,dword ptr [ebp-40]
 0049BD86    test        eax,eax
>0049BD88    je          0049BDAB
 0049BD8A    mov         edx,dword ptr [ebp-40]
 0049BD8D    mov         ecx,dword ptr [edx]
 0049BD8F    mov         dword ptr [ebp-3C],ecx
 0049BD92    mov         word ptr [ebp-54],0E0
 0049BD98    mov         edx,3
 0049BD9D    mov         eax,dword ptr [ebp-40]
 0049BDA0    mov         ecx,dword ptr [eax]
 0049BDA2    call        dword ptr [ecx-4]
 0049BDA5    mov         word ptr [ebp-54],0D4
 0049BDAB    dec         dword ptr [ebp-48]
 0049BDAE    mov         eax,dword ptr [ebp-4]
 0049BDB1    add         eax,0A
 0049BDB4    mov         edx,2
 0049BDB9    call        0067DCA0
 0049BDBE    dec         dword ptr [ebp-48]
 0049BDC1    mov         eax,dword ptr [ebp-4]
 0049BDC4    add         eax,6
 0049BDC7    mov         edx,2
 0049BDCC    call        0067DCA0
 0049BDD1    dec         dword ptr [ebp-48]
 0049BDD4    mov         eax,dword ptr [ebp-4]
 0049BDD7    add         eax,2
 0049BDDA    mov         edx,2
 0049BDDF    call        0067DCA0
 0049BDE4    test        byte ptr [ebp-68],1
>0049BDE8    je          0049BDF3
 0049BDEA    push        dword ptr [ebp-4]
 0049BDED    call        0066EAB0
 0049BDF2    pop         ecx
 0049BDF3    mov         ecx,dword ptr [ebp-64]
 0049BDF6    mov         dword ptr fs:[0],ecx
 0049BDFD    mov         esp,ebp
 0049BDFF    pop         ebp
 0049BE00    ret
end;*}

//0049BE20
{*function sub_0049BE20(?:Pointer; ?:AnsiString):?;
begin
 0049BE20    push        ebp
 0049BE21    mov         ebp,esp
 0049BE23    add         esp,0FFFFFFC8
 0049BE26    mov         dword ptr [ebp-4],edx
 0049BE29    mov         dword ptr [ebp-2C],eax
 0049BE2C    mov         eax,6BED94
 0049BE31    call        0066FECC
 0049BE36    mov         dword ptr [ebp-0C],1
 0049BE3D    lea         edx,[ebp-4]
 0049BE40    lea         eax,[ebp-4]
 0049BE43    call        0067DAEC
 0049BE48    inc         dword ptr [ebp-0C]
 0049BE4B    mov         word ptr [ebp-18],8
 0049BE51    mov         edx,dword ptr [ebp-2C]
 0049BE54    mov         ecx,dword ptr [edx+1A]
 0049BE57    mov         eax,dword ptr [ecx+8]
 0049BE5A    mov         dword ptr [ebp-30],eax
 0049BE5D    xor         edx,edx
 0049BE5F    mov         dword ptr [ebp-34],edx
 0049BE62    mov         ecx,dword ptr [ebp-34]
 0049BE65    mov         eax,dword ptr [ebp-30]
 0049BE68    cmp         ecx,eax
>0049BE6A    jge         0049BEC2
 0049BE6C    mov         edx,dword ptr [ebp-2C]
 0049BE6F    mov         eax,dword ptr [edx+1A]
 0049BE72    mov         edx,dword ptr [ebp-34]
 0049BE75    call        TList.Get
 0049BE7A    mov         dword ptr [ebp-38],eax
 0049BE7D    mov         word ptr [ebp-18],8
 0049BE83    mov         ecx,dword ptr [ebp-38]
 0049BE86    mov         edx,dword ptr [ecx+2]
 0049BE89    mov         eax,dword ptr [ebp-4]
 0049BE8C    call        SameText
 0049BE91    test        al,al
>0049BE93    je          0049BEB5
 0049BE95    mov         al,1
 0049BE97    push        eax
 0049BE98    dec         dword ptr [ebp-0C]
 0049BE9B    lea         eax,[ebp-4]
 0049BE9E    mov         edx,2
 0049BEA3    call        0067DCA0
 0049BEA8    pop         eax
 0049BEA9    mov         edx,dword ptr [ebp-28]
 0049BEAC    mov         dword ptr fs:[0],edx
>0049BEB3    jmp         0049BEE0
 0049BEB5    inc         dword ptr [ebp-34]
 0049BEB8    mov         ecx,dword ptr [ebp-34]
 0049BEBB    mov         eax,dword ptr [ebp-30]
 0049BEBE    cmp         ecx,eax
>0049BEC0    jl          0049BE6C
 0049BEC2    xor         eax,eax
 0049BEC4    push        eax
 0049BEC5    dec         dword ptr [ebp-0C]
 0049BEC8    lea         eax,[ebp-4]
 0049BECB    mov         edx,2
 0049BED0    call        0067DCA0
 0049BED5    pop         eax
 0049BED6    mov         edx,dword ptr [ebp-28]
 0049BED9    mov         dword ptr fs:[0],edx
 0049BEE0    mov         esp,ebp
 0049BEE2    pop         ebp
 0049BEE3    ret
end;*}

//0049BEE4
{*function sub_0049BEE4(?:?):?;
begin
 0049BEE4    push        ebp
 0049BEE5    mov         ebp,esp
 0049BEE7    add         esp,0FFFFFFD0
 0049BEEA    mov         dword ptr [ebp-4],eax
 0049BEED    mov         eax,6BEDC8
 0049BEF2    call        0066FECC
 0049BEF7    mov         word ptr [ebp-1C],8
 0049BEFD    mov         eax,dword ptr [ebp-4]
 0049BF00    add         eax,9
 0049BF03    call        00401EA8
 0049BF08    inc         dword ptr [ebp-10]
 0049BF0B    mov         edx,dword ptr [ebp-4]
 0049BF0E    mov         byte ptr [edx],0
 0049BF11    mov         ecx,dword ptr [ebp-4]
 0049BF14    xor         eax,eax
 0049BF16    mov         dword ptr [ecx+1],eax
 0049BF19    mov         edx,dword ptr [ebp-4]
 0049BF1C    xor         ecx,ecx
 0049BF1E    mov         dword ptr [edx+5],ecx
 0049BF21    mov         word ptr [ebp-1C],14
 0049BF27    mov         edx,6BE5A2
 0049BF2C    lea         eax,[ebp-8]
 0049BF2F    call        0067DAB4
 0049BF34    inc         dword ptr [ebp-10]
 0049BF37    lea         edx,[ebp-8]
 0049BF3A    mov         eax,dword ptr [ebp-4]
 0049BF3D    add         eax,9
 0049BF40    call        0067DCD0
 0049BF45    dec         dword ptr [ebp-10]
 0049BF48    lea         eax,[ebp-8]
 0049BF4B    mov         edx,2
 0049BF50    call        0067DCA0
 0049BF55    mov         dl,1
 0049BF57    mov         eax,[006422A4];TList
 0049BF5C    call        00413424
 0049BF61    mov         ecx,dword ptr [ebp-4]
 0049BF64    mov         dword ptr [ecx+0D],eax
 0049BF67    mov         dl,1
 0049BF69    mov         eax,[006428B0];TStringList
 0049BF6E    call        0040BB0C
 0049BF73    mov         ecx,dword ptr [ebp-4]
 0049BF76    mov         dword ptr [ecx+11],eax
 0049BF79    mov         al,[006BDC76];0x0 gvar_006BDC76
 0049BF7E    test        al,al
>0049BF80    jne         0049BFB6
 0049BF82    xor         edx,edx
 0049BF84    mov         dword ptr [ebp-30],edx
 0049BF87    mov         word ptr [ebp-1C],8
 0049BF8D    mov         ecx,dword ptr [ebp-30]
 0049BF90    mov         eax,dword ptr [ecx*8+6BDC77];gvar_006BDC77:TFrame
 0049BF97    test        eax,eax
>0049BF99    je          0049BFAF
 0049BF9B    mov         edx,dword ptr [ebp-30]
 0049BF9E    mov         eax,dword ptr [edx*8+6BDC77];gvar_006BDC77:TFrame
 0049BFA5    call        0067D9AC
 0049BFAA    inc         dword ptr [ebp-30]
>0049BFAD    jmp         0049BF8D
 0049BFAF    mov         byte ptr ds:[6BDC76],1;gvar_006BDC76
 0049BFB6    mov         edx,dword ptr [ebp-2C]
 0049BFB9    mov         dword ptr fs:[0],edx
 0049BFC0    mov         eax,dword ptr [ebp-4]
 0049BFC3    mov         esp,ebp
 0049BFC5    pop         ebp
 0049BFC6    ret
end;*}

//0049BFC8
{*procedure sub_0049BFC8(?:?; ?:?);
begin
 0049BFC8    push        ebp
 0049BFC9    mov         ebp,esp
 0049BFCB    add         esp,0FFFFFFB4
 0049BFCE    mov         dword ptr [ebp-40],edx
 0049BFD1    mov         dword ptr [ebp-4],eax
 0049BFD4    mov         eax,6BEE28
 0049BFD9    call        0066FECC
 0049BFDE    mov         dword ptr [ebp-20],1
 0049BFE5    mov         edx,dword ptr [ebp-4]
 0049BFE8    test        edx,edx
>0049BFEA    je          0049C0FC
 0049BFF0    mov         word ptr [ebp-2C],8
 0049BFF6    mov         ecx,dword ptr [ebp-4]
 0049BFF9    mov         eax,dword ptr [ecx+5]
 0049BFFC    test        eax,eax
>0049BFFE    je          0049C013
 0049C000    mov         edx,dword ptr [ebp-4]
 0049C003    push        dword ptr [edx+5]
 0049C006    call        KERNEL32.FreeLibrary
 0049C00B    mov         ecx,dword ptr [ebp-4]
 0049C00E    xor         eax,eax
 0049C010    mov         dword ptr [ecx+5],eax
 0049C013    mov         edx,dword ptr [ebp-4]
 0049C016    mov         ecx,dword ptr [edx+0D]
 0049C019    mov         eax,dword ptr [ecx+8]
 0049C01C    mov         dword ptr [ebp-44],eax
 0049C01F    xor         edx,edx
 0049C021    mov         dword ptr [ebp-48],edx
 0049C024    mov         ecx,dword ptr [ebp-48]
 0049C027    mov         eax,dword ptr [ebp-44]
 0049C02A    cmp         ecx,eax
>0049C02C    jge         0049C078
 0049C02E    mov         edx,dword ptr [ebp-4]
 0049C031    mov         eax,dword ptr [edx+0D]
 0049C034    mov         edx,dword ptr [ebp-48]
 0049C037    call        TList.Get
 0049C03C    mov         dword ptr [ebp-4C],eax
 0049C03F    mov         word ptr [ebp-2C],8
 0049C045    mov         ecx,dword ptr [ebp-4C]
 0049C048    mov         dword ptr [ebp-8],ecx
 0049C04B    mov         eax,dword ptr [ebp-8]
 0049C04E    test        eax,eax
>0049C050    je          0049C06B
 0049C052    mov         word ptr [ebp-2C],20
 0049C058    mov         edx,3
 0049C05D    mov         eax,dword ptr [ebp-8]
 0049C060    call        0049BAB8
 0049C065    mov         word ptr [ebp-2C],14
 0049C06B    inc         dword ptr [ebp-48]
 0049C06E    mov         edx,dword ptr [ebp-48]
 0049C071    mov         ecx,dword ptr [ebp-44]
 0049C074    cmp         edx,ecx
>0049C076    jl          0049C02E
 0049C078    mov         eax,dword ptr [ebp-4]
 0049C07B    mov         edx,dword ptr [eax+0D]
 0049C07E    mov         dword ptr [ebp-10],edx
 0049C081    mov         ecx,dword ptr [ebp-10]
 0049C084    test        ecx,ecx
>0049C086    je          0049C0A9
 0049C088    mov         eax,dword ptr [ebp-10]
 0049C08B    mov         edx,dword ptr [eax]
 0049C08D    mov         dword ptr [ebp-0C],edx
 0049C090    mov         word ptr [ebp-2C],38
 0049C096    mov         edx,3
 0049C09B    mov         eax,dword ptr [ebp-10]
 0049C09E    mov         ecx,dword ptr [eax]
 0049C0A0    call        dword ptr [ecx-4]
 0049C0A3    mov         word ptr [ebp-2C],2C
 0049C0A9    mov         eax,dword ptr [ebp-4]
 0049C0AC    mov         edx,dword ptr [eax+11]
 0049C0AF    mov         dword ptr [ebp-18],edx
 0049C0B2    mov         ecx,dword ptr [ebp-18]
 0049C0B5    test        ecx,ecx
>0049C0B7    je          0049C0DA
 0049C0B9    mov         eax,dword ptr [ebp-18]
 0049C0BC    mov         edx,dword ptr [eax]
 0049C0BE    mov         dword ptr [ebp-14],edx
 0049C0C1    mov         word ptr [ebp-2C],50
 0049C0C7    mov         edx,3
 0049C0CC    mov         eax,dword ptr [ebp-18]
 0049C0CF    mov         ecx,dword ptr [eax]
 0049C0D1    call        dword ptr [ecx-4]
 0049C0D4    mov         word ptr [ebp-2C],44
 0049C0DA    dec         dword ptr [ebp-20]
 0049C0DD    mov         eax,dword ptr [ebp-4]
 0049C0E0    add         eax,9
 0049C0E3    mov         edx,2
 0049C0E8    call        0067DCA0
 0049C0ED    test        byte ptr [ebp-40],1
>0049C0F1    je          0049C0FC
 0049C0F3    push        dword ptr [ebp-4]
 0049C0F6    call        0066EAB0
 0049C0FB    pop         ecx
 0049C0FC    mov         ecx,dword ptr [ebp-3C]
 0049C0FF    mov         dword ptr fs:[0],ecx
 0049C106    mov         esp,ebp
 0049C108    pop         ebp
 0049C109    ret
end;*}

//0049D4C4
{*function sub_0049D4C4(?:?):?;
begin
 0049D4C4    push        ebp
 0049D4C5    mov         ebp,esp
 0049D4C7    add         esp,0FFFFFFD8
 0049D4CA    mov         dword ptr [ebp-28],eax
 0049D4CD    mov         eax,6C13A0
 0049D4D2    call        0066FECC
 0049D4D7    push        1
 0049D4D9    push        0
 0049D4DB    push        dword ptr [ebp-28]
 0049D4DE    call        0066F904
 0049D4E3    add         esp,0C
 0049D4E6    mov         edx,dword ptr [ebp-24]
 0049D4E9    mov         dword ptr fs:[0],edx
 0049D4F0    mov         eax,dword ptr [ebp-28]
 0049D4F3    mov         esp,ebp
 0049D4F5    pop         ebp
 0049D4F6    ret
end;*}

//0049D520
{*procedure sub_0049D520(?:?; ?:dword);
begin
 0049D520    push        ebp
 0049D521    mov         ebp,esp
 0049D523    add         esp,0FFFFFFC4
 0049D526    mov         dword ptr [ebp-4],edx
 0049D529    mov         dword ptr [ebp-38],eax
 0049D52C    mov         eax,6BF524
 0049D531    call        0066FECC
 0049D536    mov         dword ptr [ebp-18],1
 0049D53D    lea         edx,[ebp-4]
 0049D540    lea         eax,[ebp-4]
 0049D543    call        0067DAEC
 0049D548    inc         dword ptr [ebp-18]
 0049D54B    mov         word ptr [ebp-24],8
 0049D551    mov         edx,dword ptr [ebp-38]
 0049D554    mov         byte ptr [edx],0
 0049D557    mov         word ptr [ebp-24],14
 0049D55D    lea         eax,[ebp-0C]
 0049D560    call        00401EA8
 0049D565    push        eax
 0049D566    inc         dword ptr [ebp-18]
 0049D569    mov         edx,6BE637
 0049D56E    lea         eax,[ebp-8]
 0049D571    call        0067DAB4
 0049D576    inc         dword ptr [ebp-18]
 0049D579    lea         edx,[ebp-8]
 0049D57C    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 0049D582    mov         eax,dword ptr [ecx]
 0049D584    add         eax,629
 0049D589    pop         ecx
 0049D58A    call        0067DCF8
 0049D58F    lea         edx,[ebp-0C]
 0049D592    push        edx
 0049D593    lea         eax,[ebp-10]
 0049D596    call        00401EA8
 0049D59B    mov         ecx,eax
 0049D59D    inc         dword ptr [ebp-18]
 0049D5A0    mov         edx,dword ptr [ebp-38]
 0049D5A3    add         edx,9
 0049D5A6    pop         eax
 0049D5A7    call        0067DCF8
 0049D5AC    lea         eax,[ebp-10]
 0049D5AF    call        00403C0C
 0049D5B4    push        eax
 0049D5B5    call        KERNEL32.LoadLibraryA
 0049D5BA    mov         edx,dword ptr [ebp-38]
 0049D5BD    mov         dword ptr [edx+5],eax
 0049D5C0    dec         dword ptr [ebp-18]
 0049D5C3    lea         eax,[ebp-10]
 0049D5C6    mov         edx,2
 0049D5CB    call        0067DCA0
 0049D5D0    dec         dword ptr [ebp-18]
 0049D5D3    lea         eax,[ebp-0C]
 0049D5D6    mov         edx,2
 0049D5DB    call        0067DCA0
 0049D5E0    dec         dword ptr [ebp-18]
 0049D5E3    lea         eax,[ebp-8]
 0049D5E6    mov         edx,2
 0049D5EB    call        0067DCA0
 0049D5F0    push        2
 0049D5F2    push        0
 0049D5F4    lea         eax,[ebp-4]
 0049D5F7    call        00403C0C
 0049D5FC    push        eax
 0049D5FD    call        KERNEL32.LoadLibraryExA
 0049D602    mov         dword ptr [ebp-3C],eax
 0049D605    mov         word ptr [ebp-24],8
 0049D60B    mov         edx,dword ptr [ebp-3C]
 0049D60E    test        edx,edx
>0049D610    je          0049D64C
 0049D612    push        dword ptr [ebp-38]
 0049D615    push        49CB9C
 0049D61A    push        0A
 0049D61C    push        dword ptr [ebp-3C]
 0049D61F    call        KERNEL32.EnumResourceNamesA
 0049D624    push        dword ptr [ebp-3C]
 0049D627    call        KERNEL32.FreeLibrary
 0049D62C    mov         al,1
 0049D62E    push        eax
 0049D62F    dec         dword ptr [ebp-18]
 0049D632    lea         eax,[ebp-4]
 0049D635    mov         edx,2
 0049D63A    call        0067DCA0
 0049D63F    pop         eax
 0049D640    mov         edx,dword ptr [ebp-34]
 0049D643    mov         dword ptr fs:[0],edx
>0049D64A    jmp         0049D687
 0049D64C    mov         ecx,dword ptr [ebp-38]
 0049D64F    mov         eax,dword ptr [ecx+5]
 0049D652    test        eax,eax
>0049D654    je          0049D669
 0049D656    mov         edx,dword ptr [ebp-38]
 0049D659    push        dword ptr [edx+5]
 0049D65C    call        KERNEL32.FreeLibrary
 0049D661    mov         ecx,dword ptr [ebp-38]
 0049D664    xor         eax,eax
 0049D666    mov         dword ptr [ecx+5],eax
 0049D669    xor         eax,eax
 0049D66B    push        eax
 0049D66C    dec         dword ptr [ebp-18]
 0049D66F    lea         eax,[ebp-4]
 0049D672    mov         edx,2
 0049D677    call        0067DCA0
 0049D67C    pop         eax
 0049D67D    mov         edx,dword ptr [ebp-34]
 0049D680    mov         dword ptr fs:[0],edx
 0049D687    mov         esp,ebp
 0049D689    pop         ebp
 0049D68A    ret
end;*}

//0049D68C
{*procedure sub_0049D68C(?:?; ?:TListBox);
begin
 0049D68C    push        ebp
 0049D68D    mov         ebp,esp
 0049D68F    add         esp,0FFFFFFA4
 0049D692    mov         dword ptr [ebp-40],edx
 0049D695    mov         dword ptr [ebp-3C],eax
 0049D698    mov         eax,6BF584
 0049D69D    call        0066FECC
 0049D6A2    mov         eax,dword ptr [ebp-40]
 0049D6A5    mov         edx,dword ptr [eax]
 0049D6A7    call        dword ptr [edx+0D4];TCustomListBox.Clear
 0049D6AD    xor         ecx,ecx
 0049D6AF    mov         dword ptr [ebp-48],ecx
 0049D6B2    mov         eax,dword ptr [ebp-40]
 0049D6B5    mov         edx,dword ptr [eax+228];TListBox.FCanvas:TCanvas
 0049D6BB    mov         dword ptr [ebp-4C],edx
 0049D6BE    mov         ecx,dword ptr [ebp-3C]
 0049D6C1    mov         eax,dword ptr [ecx+0D]
 0049D6C4    mov         edx,dword ptr [eax+8]
 0049D6C7    mov         dword ptr [ebp-50],edx
 0049D6CA    xor         ecx,ecx
 0049D6CC    mov         dword ptr [ebp-54],ecx
 0049D6CF    mov         eax,dword ptr [ebp-54]
 0049D6D2    mov         edx,dword ptr [ebp-50]
 0049D6D5    cmp         eax,edx
>0049D6D7    jge         0049D803
 0049D6DD    mov         ecx,dword ptr [ebp-3C]
 0049D6E0    mov         eax,dword ptr [ecx+0D]
 0049D6E3    mov         edx,dword ptr [ebp-54]
 0049D6E6    call        TList.Get
 0049D6EB    mov         dword ptr [ebp-58],eax
 0049D6EE    mov         ecx,dword ptr [ebp-40]
 0049D6F1    add         ecx,218;TListBox.FItems:TStrings
 0049D6F7    mov         dword ptr [ebp-5C],ecx
 0049D6FA    mov         word ptr [ebp-28],8
 0049D700    lea         eax,[ebp-8]
 0049D703    call        00401EA8
 0049D708    push        eax
 0049D709    inc         dword ptr [ebp-1C]
 0049D70C    mov         edx,6BE640
 0049D711    lea         eax,[ebp-4]
 0049D714    call        0067DAB4
 0049D719    inc         dword ptr [ebp-1C]
 0049D71C    lea         edx,[ebp-4]
 0049D71F    mov         eax,dword ptr [ebp-58]
 0049D722    add         eax,2
 0049D725    pop         ecx
 0049D726    call        0067DCF8
 0049D72B    lea         edx,[ebp-8]
 0049D72E    push        edx
 0049D72F    lea         eax,[ebp-0C]
 0049D732    call        00401EA8
 0049D737    mov         ecx,eax
 0049D739    inc         dword ptr [ebp-1C]
 0049D73C    mov         edx,dword ptr [ebp-58]
 0049D73F    add         edx,6
 0049D742    pop         eax
 0049D743    call        0067DCF8
 0049D748    lea         edx,[ebp-0C]
 0049D74B    push        edx
 0049D74C    lea         eax,[ebp-14]
 0049D74F    call        00401EA8
 0049D754    push        eax
 0049D755    inc         dword ptr [ebp-1C]
 0049D758    mov         edx,6BE643
 0049D75D    lea         eax,[ebp-10]
 0049D760    call        0067DAB4
 0049D765    inc         dword ptr [ebp-1C]
 0049D768    lea         edx,[ebp-10]
 0049D76B    pop         ecx
 0049D76C    pop         eax
 0049D76D    call        0067DCF8
 0049D772    lea         edx,[ebp-14]
 0049D775    mov         edx,dword ptr [edx]
 0049D777    mov         eax,dword ptr [ebp-5C]
 0049D77A    mov         eax,dword ptr [eax]
 0049D77C    mov         ecx,dword ptr [eax]
 0049D77E    call        dword ptr [ecx+38]
 0049D781    dec         dword ptr [ebp-1C]
 0049D784    lea         eax,[ebp-14]
 0049D787    mov         edx,2
 0049D78C    call        0067DCA0
 0049D791    dec         dword ptr [ebp-1C]
 0049D794    lea         eax,[ebp-10]
 0049D797    mov         edx,2
 0049D79C    call        0067DCA0
 0049D7A1    dec         dword ptr [ebp-1C]
 0049D7A4    lea         eax,[ebp-0C]
 0049D7A7    mov         edx,2
 0049D7AC    call        0067DCA0
 0049D7B1    dec         dword ptr [ebp-1C]
 0049D7B4    lea         eax,[ebp-8]
 0049D7B7    mov         edx,2
 0049D7BC    call        0067DCA0
 0049D7C1    dec         dword ptr [ebp-1C]
 0049D7C4    lea         eax,[ebp-4]
 0049D7C7    mov         edx,2
 0049D7CC    call        0067DCA0
 0049D7D1    mov         ecx,dword ptr [ebp-58]
 0049D7D4    mov         edx,dword ptr [ecx+2]
 0049D7D7    mov         eax,dword ptr [ebp-4C]
 0049D7DA    call        005C1754
 0049D7DF    mov         dword ptr [ebp-44],eax
 0049D7E2    mov         ecx,dword ptr [ebp-44]
 0049D7E5    mov         eax,dword ptr [ebp-48]
 0049D7E8    cmp         ecx,eax
>0049D7EA    jle         0049D7F2
 0049D7EC    mov         edx,dword ptr [ebp-44]
 0049D7EF    mov         dword ptr [ebp-48],edx
 0049D7F2    inc         dword ptr [ebp-54]
 0049D7F5    mov         ecx,dword ptr [ebp-54]
 0049D7F8    mov         eax,dword ptr [ebp-50]
 0049D7FB    cmp         ecx,eax
>0049D7FD    jl          0049D6DD
 0049D803    mov         edx,dword ptr [ebp-48]
 0049D806    add         edx,2
 0049D809    mov         eax,dword ptr [ebp-40]
 0049D80C    call        TListBox.SetScrollWidth
 0049D811    mov         edx,dword ptr [ebp-38]
 0049D814    mov         dword ptr fs:[0],edx
 0049D81B    mov         esp,ebp
 0049D81D    pop         ebp
 0049D81E    ret
end;*}

//0049D820
{*procedure sub_0049D820(?:?; ?:Pointer; ?:?);
begin
 0049D820    push        ebp
 0049D821    mov         ebp,esp
 0049D823    add         esp,0FFFFFFC4
 0049D826    push        ebx
 0049D827    mov         dword ptr [ebp-38],ecx
 0049D82A    mov         dword ptr [ebp-34],edx
 0049D82D    mov         dword ptr [ebp-30],eax
 0049D830    mov         eax,6BF5A8
 0049D835    call        0066FECC
 0049D83A    mov         dl,1
 0049D83C    mov         eax,[00642BA0];TMemoryStream
 0049D841    call        004290EC
 0049D846    mov         dword ptr [ebp-3C],eax
 0049D849    mov         edx,dword ptr [ebp-34]
 0049D84C    mov         eax,dword ptr [edx+0E]
 0049D84F    call        TStream.GetSize
 0049D854    push        edx
 0049D855    push        eax
 0049D856    mov         eax,dword ptr [ebp-3C]
 0049D859    call        TStream.SetSize64
 0049D85E    xor         ecx,ecx
 0049D860    xor         edx,edx
 0049D862    mov         eax,dword ptr [ebp-34]
 0049D865    mov         eax,dword ptr [eax+0E]
 0049D868    mov         ebx,dword ptr [eax]
 0049D86A    call        dword ptr [ebx+10]
 0049D86D    mov         edx,dword ptr [ebp-3C]
 0049D870    mov         eax,dword ptr [ebp-34]
 0049D873    mov         eax,dword ptr [eax+0E]
 0049D876    call        0064F94C
 0049D87B    xor         ecx,ecx
 0049D87D    xor         edx,edx
 0049D87F    mov         eax,dword ptr [ebp-3C]
 0049D882    mov         ebx,dword ptr [eax]
 0049D884    call        dword ptr [ebx+10]
 0049D887    mov         edx,dword ptr [ebp-3C]
 0049D88A    mov         eax,dword ptr [ebp-38]
 0049D88D    mov         ecx,dword ptr [eax]
 0049D88F    call        dword ptr [ecx+6C]
 0049D892    mov         eax,dword ptr [ebp-3C]
 0049D895    mov         dword ptr [ebp-8],eax
 0049D898    mov         edx,dword ptr [ebp-8]
 0049D89B    test        edx,edx
>0049D89D    je          0049D8C0
 0049D89F    mov         ecx,dword ptr [ebp-8]
 0049D8A2    mov         eax,dword ptr [ecx]
 0049D8A4    mov         dword ptr [ebp-4],eax
 0049D8A7    mov         word ptr [ebp-1C],14
 0049D8AD    mov         edx,3
 0049D8B2    mov         eax,dword ptr [ebp-8]
 0049D8B5    mov         ecx,dword ptr [eax]
 0049D8B7    call        dword ptr [ecx-4]
 0049D8BA    mov         word ptr [ebp-1C],8
 0049D8C0    mov         edx,dword ptr [ebp-2C]
 0049D8C3    mov         dword ptr fs:[0],edx
 0049D8CA    pop         ebx
 0049D8CB    mov         esp,ebp
 0049D8CD    pop         ebp
 0049D8CE    ret
end;*}

//0049D8D0
{*function sub_0049D8D0(?:?; ?:Pointer):?;
begin
 0049D8D0    push        ebp
 0049D8D1    mov         ebp,esp
 0049D8D3    add         esp,0FFFFFFC4
 0049D8D6    mov         dword ptr [ebp-30],edx
 0049D8D9    mov         dword ptr [ebp-2C],eax
 0049D8DC    mov         eax,6BF5E8
 0049D8E1    call        0066FECC
 0049D8E6    mov         word ptr [ebp-18],14
 0049D8EC    lea         eax,[ebp-4]
 0049D8EF    call        00401EA8
 0049D8F4    mov         edx,eax
 0049D8F6    inc         dword ptr [ebp-0C]
 0049D8F9    mov         eax,dword ptr [ebp-30]
 0049D8FC    add         eax,0A
 0049D8FF    call        0053618C
 0049D904    mov         word ptr [ebp-18],8
 0049D90A    mov         edx,dword ptr [ebp-2C]
 0049D90D    mov         ecx,dword ptr [edx+0D]
 0049D910    mov         eax,dword ptr [ecx+8]
 0049D913    mov         dword ptr [ebp-34],eax
 0049D916    xor         edx,edx
 0049D918    mov         dword ptr [ebp-38],edx
 0049D91B    mov         ecx,dword ptr [ebp-38]
 0049D91E    mov         eax,dword ptr [ebp-34]
 0049D921    cmp         ecx,eax
>0049D923    jge         0049D97C
 0049D925    mov         edx,dword ptr [ebp-2C]
 0049D928    mov         eax,dword ptr [edx+0D]
 0049D92B    mov         edx,dword ptr [ebp-38]
 0049D92E    call        TList.Get
 0049D933    mov         dword ptr [ebp-3C],eax
 0049D936    mov         word ptr [ebp-18],8
 0049D93C    mov         edx,dword ptr [ebp-4]
 0049D93F    mov         eax,dword ptr [ebp-3C]
 0049D942    mov         eax,dword ptr [eax+0A]
 0049D945    call        SameText
 0049D94A    test        al,al
>0049D94C    je          0049D96F
 0049D94E    mov         eax,dword ptr [ebp-3C]
 0049D951    push        eax
 0049D952    dec         dword ptr [ebp-0C]
 0049D955    lea         eax,[ebp-4]
 0049D958    mov         edx,2
 0049D95D    call        0067DCA0
 0049D962    pop         eax
 0049D963    mov         edx,dword ptr [ebp-28]
 0049D966    mov         dword ptr fs:[0],edx
>0049D96D    jmp         0049D99A
 0049D96F    inc         dword ptr [ebp-38]
 0049D972    mov         ecx,dword ptr [ebp-38]
 0049D975    mov         eax,dword ptr [ebp-34]
 0049D978    cmp         ecx,eax
>0049D97A    jl          0049D925
 0049D97C    xor         eax,eax
 0049D97E    push        eax
 0049D97F    dec         dword ptr [ebp-0C]
 0049D982    lea         eax,[ebp-4]
 0049D985    mov         edx,2
 0049D98A    call        0067DCA0
 0049D98F    pop         eax
 0049D990    mov         edx,dword ptr [ebp-28]
 0049D993    mov         dword ptr fs:[0],edx
 0049D99A    mov         esp,ebp
 0049D99C    pop         ebp
 0049D99D    ret
end;*}

//0049D9A0
{*procedure sub_0049D9A0(?:?);
begin
 0049D9A0    push        ebp
 0049D9A1    mov         ebp,esp
 0049D9A3    add         esp,0FFFFFFC4
 0049D9A6    mov         dword ptr [ebp-30],eax
 0049D9A9    mov         eax,6BF618
 0049D9AE    call        0066FECC
 0049D9B3    mov         edx,dword ptr [ebp-30]
 0049D9B6    mov         ecx,dword ptr [edx+0D]
 0049D9B9    mov         eax,dword ptr [ecx+8]
 0049D9BC    mov         dword ptr [ebp-34],eax
 0049D9BF    xor         edx,edx
 0049D9C1    mov         dword ptr [ebp-38],edx
 0049D9C4    mov         ecx,dword ptr [ebp-38]
 0049D9C7    mov         eax,dword ptr [ebp-34]
 0049D9CA    cmp         ecx,eax
>0049D9CC    jge         0049DA88
 0049D9D2    mov         edx,dword ptr [ebp-30]
 0049D9D5    mov         eax,dword ptr [edx+0D]
 0049D9D8    mov         edx,dword ptr [ebp-38]
 0049D9DB    call        TList.Get
 0049D9E0    mov         dword ptr [ebp-3C],eax
 0049D9E3    mov         ecx,dword ptr [ebp-3C]
 0049D9E6    mov         al,byte ptr [ecx]
 0049D9E8    cmp         al,2
>0049D9EA    jne         0049DA1C
 0049D9EC    mov         edx,dword ptr [ebp-3C]
 0049D9EF    mov         ecx,dword ptr [edx+1E]
 0049D9F2    test        ecx,ecx
>0049D9F4    je          0049DA0E
 0049D9F6    mov         eax,dword ptr [ebp-3C]
 0049D9F9    mov         edx,dword ptr [eax+1E]
 0049D9FC    mov         cl,byte ptr [edx+57]
 0049D9FF    test        cl,cl
>0049DA01    je          0049DA0E
 0049DA03    mov         eax,dword ptr [ebp-3C]
 0049DA06    mov         eax,dword ptr [eax+1E]
 0049DA09    call        005D3F3C
 0049DA0E    mov         edx,dword ptr [ebp-3C]
 0049DA11    xor         ecx,ecx
 0049DA13    mov         dword ptr [edx+1E],ecx
 0049DA16    mov         eax,dword ptr [ebp-3C]
 0049DA19    mov         byte ptr [eax],1
 0049DA1C    mov         edx,dword ptr [ebp-3C]
 0049DA1F    mov         cl,byte ptr [edx]
 0049DA21    cmp         cl,1
>0049DA24    jne         0049DA77
 0049DA26    mov         eax,dword ptr [ebp-3C]
 0049DA29    mov         edx,dword ptr [eax+22]
 0049DA2C    test        edx,edx
>0049DA2E    je          0049DA61
 0049DA30    mov         ecx,dword ptr [ebp-3C]
 0049DA33    mov         eax,dword ptr [ecx+22]
 0049DA36    mov         dword ptr [ebp-8],eax
 0049DA39    mov         edx,dword ptr [ebp-8]
 0049DA3C    test        edx,edx
>0049DA3E    je          0049DA61
 0049DA40    mov         ecx,dword ptr [ebp-8]
 0049DA43    mov         eax,dword ptr [ecx]
 0049DA45    mov         dword ptr [ebp-4],eax
 0049DA48    mov         word ptr [ebp-1C],14
 0049DA4E    mov         edx,3
 0049DA53    mov         eax,dword ptr [ebp-8]
 0049DA56    mov         ecx,dword ptr [eax]
 0049DA58    call        dword ptr [ecx-4]
 0049DA5B    mov         word ptr [ebp-1C],8
 0049DA61    mov         edx,dword ptr [ebp-3C]
 0049DA64    xor         eax,eax
 0049DA66    mov         dword ptr [edx+1E],eax
 0049DA69    mov         edx,dword ptr [ebp-3C]
 0049DA6C    xor         ecx,ecx
 0049DA6E    mov         dword ptr [edx+22],ecx
 0049DA71    mov         eax,dword ptr [ebp-3C]
 0049DA74    mov         byte ptr [eax],0
 0049DA77    inc         dword ptr [ebp-38]
 0049DA7A    mov         edx,dword ptr [ebp-38]
 0049DA7D    mov         ecx,dword ptr [ebp-34]
 0049DA80    cmp         edx,ecx
>0049DA82    jl          0049D9D2
 0049DA88    mov         eax,[006E9DCC];^Application:TApplication
 0049DA8D    mov         eax,dword ptr [eax]
 0049DA8F    call        005D820C
 0049DA94    mov         edx,dword ptr [ebp-2C]
 0049DA97    mov         dword ptr fs:[0],edx
 0049DA9E    mov         esp,ebp
 0049DAA0    pop         ebp
 0049DAA1    ret
end;*}

//0049DAA4
{*procedure sub_0049DAA4(?:?);
begin
 0049DAA4    push        ebp
 0049DAA5    mov         ebp,esp
 0049DAA7    add         esp,0FFFFFFC0
 0049DAAA    mov         dword ptr [ebp-2C],eax
 0049DAAD    mov         eax,6BF658
 0049DAB2    call        0066FECC
 0049DAB7    mov         edx,dword ptr [ebp-2C]
 0049DABA    mov         ecx,dword ptr [edx+0D]
 0049DABD    mov         eax,dword ptr [ecx+8]
 0049DAC0    mov         dword ptr [ebp-30],eax
 0049DAC3    xor         edx,edx
 0049DAC5    mov         dword ptr [ebp-34],edx
 0049DAC8    mov         ecx,dword ptr [ebp-34]
 0049DACB    mov         eax,dword ptr [ebp-30]
 0049DACE    cmp         ecx,eax
>0049DAD0    jge         0049DB96
 0049DAD6    mov         edx,dword ptr [ebp-2C]
 0049DAD9    mov         eax,dword ptr [edx+0D]
 0049DADC    mov         edx,dword ptr [ebp-34]
 0049DADF    call        TList.Get
 0049DAE4    mov         dword ptr [ebp-38],eax
 0049DAE7    mov         ecx,dword ptr [ebp-38]
 0049DAEA    mov         al,byte ptr [ecx]
 0049DAEC    cmp         al,2
>0049DAEE    jne         0049DB85
 0049DAF4    mov         edx,dword ptr [ebp-38]
 0049DAF7    mov         ecx,dword ptr [edx+1E]
 0049DAFA    test        ecx,ecx
>0049DAFC    je          0049DB85
 0049DB02    mov         eax,dword ptr [ebp-38]
 0049DB05    mov         edx,dword ptr [eax+1E]
 0049DB08    mov         cl,byte ptr [edx+57]
 0049DB0B    test        cl,cl
>0049DB0D    je          0049DB85
 0049DB0F    mov         word ptr [ebp-18],14
 0049DB15    mov         eax,dword ptr [ebp-38]
 0049DB18    mov         edx,dword ptr [eax+1E]
 0049DB1B    add         edx,8
 0049DB1E    lea         eax,[ebp-4]
 0049DB21    call        0067DAEC
 0049DB26    inc         dword ptr [ebp-0C]
 0049DB29    mov         word ptr [ebp-18],8
 0049DB2F    mov         edx,dword ptr [ebp-38]
 0049DB32    mov         eax,dword ptr [edx+1E]
 0049DB35    call        005D3F3C
 0049DB3A    mov         edx,dword ptr ds:[6E9DCC];^Application:TApplication
 0049DB40    mov         eax,dword ptr [edx]
 0049DB42    call        005D820C
 0049DB47    mov         dword ptr [ebp-3C],0FFFFFFFF
 0049DB4E    lea         ecx,[ebp-3C]
 0049DB51    mov         edx,dword ptr [ebp-4]
 0049DB54    mov         eax,dword ptr [ebp-2C]
 0049DB57    call        0049F9D4
 0049DB5C    mov         dword ptr [ebp-40],eax
 0049DB5F    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 0049DB65    mov         eax,dword ptr [edx]
 0049DB67    mov         edx,dword ptr [ebp-40]
 0049DB6A    call        0041F354
 0049DB6F    dec         dword ptr [ebp-0C]
 0049DB72    lea         eax,[ebp-4]
 0049DB75    mov         edx,2
 0049DB7A    call        0067DCA0
 0049DB7F    mov         word ptr [ebp-18],0
 0049DB85    inc         dword ptr [ebp-34]
 0049DB88    mov         ecx,dword ptr [ebp-34]
 0049DB8B    mov         eax,dword ptr [ebp-30]
 0049DB8E    cmp         ecx,eax
>0049DB90    jl          0049DAD6
 0049DB96    mov         edx,dword ptr [ebp-28]
 0049DB99    mov         dword ptr fs:[0],edx
 0049DBA0    mov         esp,ebp
 0049DBA2    pop         ebp
 0049DBA3    ret
end;*}

//0049DBA4
{*procedure sub_0049DBA4(?:?);
begin
 0049DBA4    push        ebp
 0049DBA5    mov         ebp,esp
 0049DBA7    add         esp,0FFFFFE2C
 0049DBAD    push        ebx
 0049DBAE    push        esi
 0049DBAF    push        edi
 0049DBB0    mov         dword ptr [ebp-1C8],eax
 0049DBB6    mov         eax,6BFD1C
 0049DBBB    call        0066FECC
 0049DBC0    mov         edx,dword ptr [ebp-1C8]
 0049DBC6    mov         eax,dword ptr [edx+11]
 0049DBC9    mov         edx,dword ptr [eax]
 0049DBCB    call        dword ptr [edx+14]
 0049DBCE    mov         dword ptr [ebp-1CC],eax
 0049DBD4    xor         ecx,ecx
 0049DBD6    mov         dword ptr [ebp-1D0],ecx
 0049DBDC    mov         eax,dword ptr [ebp-1D0]
 0049DBE2    mov         edx,dword ptr [ebp-1CC]
 0049DBE8    cmp         eax,edx
>0049DBEA    jge         0049F851
 0049DBF0    mov         word ptr [ebp-1B4],14
 0049DBF9    lea         eax,[ebp-8]
 0049DBFC    call        00401EA8
 0049DC01    mov         ecx,eax
 0049DC03    inc         dword ptr [ebp-1A8]
 0049DC09    mov         edx,dword ptr [ebp-1C8]
 0049DC0F    mov         eax,dword ptr [edx+11]
 0049DC12    mov         edx,dword ptr [ebp-1D0]
 0049DC18    mov         ebx,dword ptr [eax]
 0049DC1A    call        dword ptr [ebx+0C]
 0049DC1D    mov         word ptr [ebp-1B4],8
 0049DC26    mov         word ptr [ebp-1B4],20
 0049DC2F    mov         edx,6BE645
 0049DC34    lea         eax,[ebp-0C]
 0049DC37    call        0067DAB4
 0049DC3C    inc         dword ptr [ebp-1A8]
 0049DC42    lea         edx,[ebp-0C]
 0049DC45    lea         eax,[ebp-8]
 0049DC48    call        0067DEF4
 0049DC4D    test        eax,eax
 0049DC4F    sete        cl
 0049DC52    and         ecx,1
 0049DC55    push        ecx
 0049DC56    dec         dword ptr [ebp-1A8]
 0049DC5C    lea         eax,[ebp-0C]
 0049DC5F    mov         edx,2
 0049DC64    call        0067DCA0
 0049DC69    pop         ecx
 0049DC6A    test        cl,cl
>0049DC6C    je          0049F81B
 0049DC72    mov         word ptr [ebp-1B4],38
 0049DC7B    mov         edx,6BE647
 0049DC80    lea         eax,[ebp-10]
 0049DC83    call        0067DAB4
 0049DC88    inc         dword ptr [ebp-1A8]
 0049DC8E    mov         word ptr [ebp-1B4],2C
 0049DC97    mov         word ptr [ebp-1B4],44
 0049DCA0    mov         eax,dword ptr [ebp-8]
 0049DCA3    call        00644304
 0049DCA8    mov         dword ptr [ebp-1D4],eax
 0049DCAE    mov         word ptr [ebp-1B4],44
 0049DCB7    mov         word ptr [ebp-1B4],2C
>0049DCC0    jmp         0049F6F1
 0049DCC5    mov         word ptr [ebp-1B4],50
 0049DCCE    mov         edx,6BE648
 0049DCD3    lea         eax,[ebp-14]
 0049DCD6    call        0067DAB4
 0049DCDB    inc         dword ptr [ebp-1A8]
 0049DCE1    mov         edx,dword ptr [eax]
 0049DCE3    mov         eax,dword ptr [ebp-8]
 0049DCE6    call        SameText
 0049DCEB    push        eax
 0049DCEC    dec         dword ptr [ebp-1A8]
 0049DCF2    lea         eax,[ebp-14]
 0049DCF5    mov         edx,2
 0049DCFA    call        0067DCA0
 0049DCFF    pop         ecx
 0049DD00    test        cl,cl
>0049DD02    je          0049DD43
 0049DD04    mov         word ptr [ebp-1B4],5C
 0049DD0D    mov         edx,6BE650
 0049DD12    lea         eax,[ebp-18]
 0049DD15    call        0067DAB4
 0049DD1A    inc         dword ptr [ebp-1A8]
 0049DD20    lea         edx,[ebp-18]
 0049DD23    lea         eax,[ebp-10]
 0049DD26    call        0067DCD0
 0049DD2B    dec         dword ptr [ebp-1A8]
 0049DD31    lea         eax,[ebp-18]
 0049DD34    mov         edx,2
 0049DD39    call        0067DCA0
>0049DD3E    jmp         0049F6E3
 0049DD43    mov         word ptr [ebp-1B4],68
 0049DD4C    mov         edx,6BE65C
 0049DD51    lea         eax,[ebp-1C]
 0049DD54    call        0067DAB4
 0049DD59    inc         dword ptr [ebp-1A8]
 0049DD5F    mov         edx,dword ptr [eax]
 0049DD61    mov         eax,dword ptr [ebp-8]
 0049DD64    call        SameText
 0049DD69    push        eax
 0049DD6A    dec         dword ptr [ebp-1A8]
 0049DD70    lea         eax,[ebp-1C]
 0049DD73    mov         edx,2
 0049DD78    call        0067DCA0
 0049DD7D    pop         ecx
 0049DD7E    test        cl,cl
>0049DD80    je          0049DDC1
 0049DD82    mov         word ptr [ebp-1B4],74
 0049DD8B    mov         edx,6BE664
 0049DD90    lea         eax,[ebp-20]
 0049DD93    call        0067DAB4
 0049DD98    inc         dword ptr [ebp-1A8]
 0049DD9E    lea         edx,[ebp-20]
 0049DDA1    lea         eax,[ebp-10]
 0049DDA4    call        0067DCD0
 0049DDA9    dec         dword ptr [ebp-1A8]
 0049DDAF    lea         eax,[ebp-20]
 0049DDB2    mov         edx,2
 0049DDB7    call        0067DCA0
>0049DDBC    jmp         0049F6E3
 0049DDC1    mov         word ptr [ebp-1B4],80
 0049DDCA    mov         edx,6BE66B
 0049DDCF    lea         eax,[ebp-24]
 0049DDD2    call        0067DAB4
 0049DDD7    inc         dword ptr [ebp-1A8]
 0049DDDD    mov         edx,dword ptr [eax]
 0049DDDF    mov         eax,dword ptr [ebp-8]
 0049DDE2    call        SameText
 0049DDE7    push        eax
 0049DDE8    dec         dword ptr [ebp-1A8]
 0049DDEE    lea         eax,[ebp-24]
 0049DDF1    mov         edx,2
 0049DDF6    call        0067DCA0
 0049DDFB    pop         ecx
 0049DDFC    test        cl,cl
>0049DDFE    je          0049DE3F
 0049DE00    mov         word ptr [ebp-1B4],8C
 0049DE09    mov         edx,6BE673
 0049DE0E    lea         eax,[ebp-28]
 0049DE11    call        0067DAB4
 0049DE16    inc         dword ptr [ebp-1A8]
 0049DE1C    lea         edx,[ebp-28]
 0049DE1F    lea         eax,[ebp-10]
 0049DE22    call        0067DCD0
 0049DE27    dec         dword ptr [ebp-1A8]
 0049DE2D    lea         eax,[ebp-28]
 0049DE30    mov         edx,2
 0049DE35    call        0067DCA0
>0049DE3A    jmp         0049F6E3
 0049DE3F    mov         word ptr [ebp-1B4],98
 0049DE48    mov         edx,6BE679
 0049DE4D    lea         eax,[ebp-2C]
 0049DE50    call        0067DAB4
 0049DE55    inc         dword ptr [ebp-1A8]
 0049DE5B    mov         edx,dword ptr [eax]
 0049DE5D    mov         eax,dword ptr [ebp-8]
 0049DE60    call        SameText
 0049DE65    push        eax
 0049DE66    dec         dword ptr [ebp-1A8]
 0049DE6C    lea         eax,[ebp-2C]
 0049DE6F    mov         edx,2
 0049DE74    call        0067DCA0
 0049DE79    pop         ecx
 0049DE7A    test        cl,cl
>0049DE7C    je          0049DEBD
 0049DE7E    mov         word ptr [ebp-1B4],0A4
 0049DE87    mov         edx,6BE681
 0049DE8C    lea         eax,[ebp-30]
 0049DE8F    call        0067DAB4
 0049DE94    inc         dword ptr [ebp-1A8]
 0049DE9A    lea         edx,[ebp-30]
 0049DE9D    lea         eax,[ebp-10]
 0049DEA0    call        0067DCD0
 0049DEA5    dec         dword ptr [ebp-1A8]
 0049DEAB    lea         eax,[ebp-30]
 0049DEAE    mov         edx,2
 0049DEB3    call        0067DCA0
>0049DEB8    jmp         0049F6E3
 0049DEBD    mov         word ptr [ebp-1B4],0B0
 0049DEC6    mov         edx,6BE687
 0049DECB    lea         eax,[ebp-34]
 0049DECE    call        0067DAB4
 0049DED3    inc         dword ptr [ebp-1A8]
 0049DED9    mov         edx,dword ptr [eax]
 0049DEDB    mov         eax,dword ptr [ebp-8]
 0049DEDE    call        SameText
 0049DEE3    push        eax
 0049DEE4    dec         dword ptr [ebp-1A8]
 0049DEEA    lea         eax,[ebp-34]
 0049DEED    mov         edx,2
 0049DEF2    call        0067DCA0
 0049DEF7    pop         ecx
 0049DEF8    test        cl,cl
>0049DEFA    je          0049DF3B
 0049DEFC    mov         word ptr [ebp-1B4],0BC
 0049DF05    mov         edx,6BE690
 0049DF0A    lea         eax,[ebp-38]
 0049DF0D    call        0067DAB4
 0049DF12    inc         dword ptr [ebp-1A8]
 0049DF18    lea         edx,[ebp-38]
 0049DF1B    lea         eax,[ebp-10]
 0049DF1E    call        0067DCD0
 0049DF23    dec         dword ptr [ebp-1A8]
 0049DF29    lea         eax,[ebp-38]
 0049DF2C    mov         edx,2
 0049DF31    call        0067DCA0
>0049DF36    jmp         0049F6E3
 0049DF3B    mov         word ptr [ebp-1B4],0C8
 0049DF44    mov         edx,6BE697
 0049DF49    lea         eax,[ebp-3C]
 0049DF4C    call        0067DAB4
 0049DF51    inc         dword ptr [ebp-1A8]
 0049DF57    mov         edx,dword ptr [eax]
 0049DF59    mov         eax,dword ptr [ebp-8]
 0049DF5C    call        SameText
 0049DF61    push        eax
 0049DF62    dec         dword ptr [ebp-1A8]
 0049DF68    lea         eax,[ebp-3C]
 0049DF6B    mov         edx,2
 0049DF70    call        0067DCA0
 0049DF75    pop         ecx
 0049DF76    test        cl,cl
>0049DF78    je          0049DFB9
 0049DF7A    mov         word ptr [ebp-1B4],0D4
 0049DF83    mov         edx,6BE6A2
 0049DF88    lea         eax,[ebp-40]
 0049DF8B    call        0067DAB4
 0049DF90    inc         dword ptr [ebp-1A8]
 0049DF96    lea         edx,[ebp-40]
 0049DF99    lea         eax,[ebp-10]
 0049DF9C    call        0067DCD0
 0049DFA1    dec         dword ptr [ebp-1A8]
 0049DFA7    lea         eax,[ebp-40]
 0049DFAA    mov         edx,2
 0049DFAF    call        0067DCA0
>0049DFB4    jmp         0049F6E3
 0049DFB9    mov         word ptr [ebp-1B4],0E0
 0049DFC2    mov         edx,6BE6AB
 0049DFC7    lea         eax,[ebp-44]
 0049DFCA    call        0067DAB4
 0049DFCF    inc         dword ptr [ebp-1A8]
 0049DFD5    mov         edx,dword ptr [eax]
 0049DFD7    mov         eax,dword ptr [ebp-8]
 0049DFDA    call        SameText
 0049DFDF    push        eax
 0049DFE0    dec         dword ptr [ebp-1A8]
 0049DFE6    lea         eax,[ebp-44]
 0049DFE9    mov         edx,2
 0049DFEE    call        0067DCA0
 0049DFF3    pop         ecx
 0049DFF4    test        cl,cl
>0049DFF6    je          0049E037
 0049DFF8    mov         word ptr [ebp-1B4],0EC
 0049E001    mov         edx,6BE6B7
 0049E006    lea         eax,[ebp-48]
 0049E009    call        0067DAB4
 0049E00E    inc         dword ptr [ebp-1A8]
 0049E014    lea         edx,[ebp-48]
 0049E017    lea         eax,[ebp-10]
 0049E01A    call        0067DCD0
 0049E01F    dec         dword ptr [ebp-1A8]
 0049E025    lea         eax,[ebp-48]
 0049E028    mov         edx,2
 0049E02D    call        0067DCA0
>0049E032    jmp         0049F6E3
 0049E037    mov         word ptr [ebp-1B4],0F8
 0049E040    mov         edx,6BE6C1
 0049E045    lea         eax,[ebp-4C]
 0049E048    call        0067DAB4
 0049E04D    inc         dword ptr [ebp-1A8]
 0049E053    mov         edx,dword ptr [eax]
 0049E055    mov         eax,dword ptr [ebp-8]
 0049E058    call        SameText
 0049E05D    push        eax
 0049E05E    dec         dword ptr [ebp-1A8]
 0049E064    lea         eax,[ebp-4C]
 0049E067    mov         edx,2
 0049E06C    call        0067DCA0
 0049E071    pop         ecx
 0049E072    test        cl,cl
>0049E074    je          0049E0B5
 0049E076    mov         word ptr [ebp-1B4],104
 0049E07F    mov         edx,6BE6CD
 0049E084    lea         eax,[ebp-50]
 0049E087    call        0067DAB4
 0049E08C    inc         dword ptr [ebp-1A8]
 0049E092    lea         edx,[ebp-50]
 0049E095    lea         eax,[ebp-10]
 0049E098    call        0067DCD0
 0049E09D    dec         dword ptr [ebp-1A8]
 0049E0A3    lea         eax,[ebp-50]
 0049E0A6    mov         edx,2
 0049E0AB    call        0067DCA0
>0049E0B0    jmp         0049F6E3
 0049E0B5    mov         word ptr [ebp-1B4],110
 0049E0BE    mov         edx,6BE6D7
 0049E0C3    lea         eax,[ebp-54]
 0049E0C6    call        0067DAB4
 0049E0CB    inc         dword ptr [ebp-1A8]
 0049E0D1    mov         edx,dword ptr [eax]
 0049E0D3    mov         eax,dword ptr [ebp-8]
 0049E0D6    call        SameText
 0049E0DB    push        eax
 0049E0DC    dec         dword ptr [ebp-1A8]
 0049E0E2    lea         eax,[ebp-54]
 0049E0E5    mov         edx,2
 0049E0EA    call        0067DCA0
 0049E0EF    pop         ecx
 0049E0F0    test        cl,cl
>0049E0F2    je          0049E133
 0049E0F4    mov         word ptr [ebp-1B4],11C
 0049E0FD    mov         edx,6BE6E5
 0049E102    lea         eax,[ebp-58]
 0049E105    call        0067DAB4
 0049E10A    inc         dword ptr [ebp-1A8]
 0049E110    lea         edx,[ebp-58]
 0049E113    lea         eax,[ebp-10]
 0049E116    call        0067DCD0
 0049E11B    dec         dword ptr [ebp-1A8]
 0049E121    lea         eax,[ebp-58]
 0049E124    mov         edx,2
 0049E129    call        0067DCA0
>0049E12E    jmp         0049F6E3
 0049E133    mov         word ptr [ebp-1B4],128
 0049E13C    mov         edx,6BE6F1
 0049E141    lea         eax,[ebp-5C]
 0049E144    call        0067DAB4
 0049E149    inc         dword ptr [ebp-1A8]
 0049E14F    mov         edx,dword ptr [eax]
 0049E151    mov         eax,dword ptr [ebp-8]
 0049E154    call        SameText
 0049E159    push        eax
 0049E15A    dec         dword ptr [ebp-1A8]
 0049E160    lea         eax,[ebp-5C]
 0049E163    mov         edx,2
 0049E168    call        0067DCA0
 0049E16D    pop         ecx
 0049E16E    test        cl,cl
>0049E170    je          0049E1B1
 0049E172    mov         word ptr [ebp-1B4],134
 0049E17B    mov         edx,6BE702
 0049E180    lea         eax,[ebp-60]
 0049E183    call        0067DAB4
 0049E188    inc         dword ptr [ebp-1A8]
 0049E18E    lea         edx,[ebp-60]
 0049E191    lea         eax,[ebp-10]
 0049E194    call        0067DCD0
 0049E199    dec         dword ptr [ebp-1A8]
 0049E19F    lea         eax,[ebp-60]
 0049E1A2    mov         edx,2
 0049E1A7    call        0067DCA0
>0049E1AC    jmp         0049F6E3
 0049E1B1    mov         word ptr [ebp-1B4],140
 0049E1BA    mov         edx,6BE70B
 0049E1BF    lea         eax,[ebp-64]
 0049E1C2    call        0067DAB4
 0049E1C7    inc         dword ptr [ebp-1A8]
 0049E1CD    mov         edx,dword ptr [eax]
 0049E1CF    mov         eax,dword ptr [ebp-8]
 0049E1D2    call        SameText
 0049E1D7    push        eax
 0049E1D8    dec         dword ptr [ebp-1A8]
 0049E1DE    lea         eax,[ebp-64]
 0049E1E1    mov         edx,2
 0049E1E6    call        0067DCA0
 0049E1EB    pop         ecx
 0049E1EC    test        cl,cl
>0049E1EE    je          0049E22F
 0049E1F0    mov         word ptr [ebp-1B4],14C
 0049E1F9    mov         edx,6BE71D
 0049E1FE    lea         eax,[ebp-68]
 0049E201    call        0067DAB4
 0049E206    inc         dword ptr [ebp-1A8]
 0049E20C    lea         edx,[ebp-68]
 0049E20F    lea         eax,[ebp-10]
 0049E212    call        0067DCD0
 0049E217    dec         dword ptr [ebp-1A8]
 0049E21D    lea         eax,[ebp-68]
 0049E220    mov         edx,2
 0049E225    call        0067DCA0
>0049E22A    jmp         0049F6E3
 0049E22F    mov         word ptr [ebp-1B4],158
 0049E238    mov         edx,6BE727
 0049E23D    lea         eax,[ebp-6C]
 0049E240    call        0067DAB4
 0049E245    inc         dword ptr [ebp-1A8]
 0049E24B    mov         edx,dword ptr [eax]
 0049E24D    mov         eax,dword ptr [ebp-8]
 0049E250    call        SameText
 0049E255    push        eax
 0049E256    dec         dword ptr [ebp-1A8]
 0049E25C    lea         eax,[ebp-6C]
 0049E25F    mov         edx,2
 0049E264    call        0067DCA0
 0049E269    pop         ecx
 0049E26A    test        cl,cl
>0049E26C    je          0049E2AD
 0049E26E    mov         word ptr [ebp-1B4],164
 0049E277    mov         edx,6BE733
 0049E27C    lea         eax,[ebp-70]
 0049E27F    call        0067DAB4
 0049E284    inc         dword ptr [ebp-1A8]
 0049E28A    lea         edx,[ebp-70]
 0049E28D    lea         eax,[ebp-10]
 0049E290    call        0067DCD0
 0049E295    dec         dword ptr [ebp-1A8]
 0049E29B    lea         eax,[ebp-70]
 0049E29E    mov         edx,2
 0049E2A3    call        0067DCA0
>0049E2A8    jmp         0049F6E3
 0049E2AD    mov         word ptr [ebp-1B4],170
 0049E2B6    mov         edx,6BE73D
 0049E2BB    lea         eax,[ebp-74]
 0049E2BE    call        0067DAB4
 0049E2C3    inc         dword ptr [ebp-1A8]
 0049E2C9    mov         edx,dword ptr [eax]
 0049E2CB    mov         eax,dword ptr [ebp-8]
 0049E2CE    call        SameText
 0049E2D3    push        eax
 0049E2D4    dec         dword ptr [ebp-1A8]
 0049E2DA    lea         eax,[ebp-74]
 0049E2DD    mov         edx,2
 0049E2E2    call        0067DCA0
 0049E2E7    pop         ecx
 0049E2E8    test        cl,cl
>0049E2EA    je          0049E32B
 0049E2EC    mov         word ptr [ebp-1B4],17C
 0049E2F5    mov         edx,6BE749
 0049E2FA    lea         eax,[ebp-78]
 0049E2FD    call        0067DAB4
 0049E302    inc         dword ptr [ebp-1A8]
 0049E308    lea         edx,[ebp-78]
 0049E30B    lea         eax,[ebp-10]
 0049E30E    call        0067DCD0
 0049E313    dec         dword ptr [ebp-1A8]
 0049E319    lea         eax,[ebp-78]
 0049E31C    mov         edx,2
 0049E321    call        0067DCA0
>0049E326    jmp         0049F6E3
 0049E32B    mov         word ptr [ebp-1B4],188
 0049E334    mov         edx,6BE755
 0049E339    lea         eax,[ebp-7C]
 0049E33C    call        0067DAB4
 0049E341    inc         dword ptr [ebp-1A8]
 0049E347    mov         edx,dword ptr [eax]
 0049E349    mov         eax,dword ptr [ebp-8]
 0049E34C    call        SameText
 0049E351    push        eax
 0049E352    dec         dword ptr [ebp-1A8]
 0049E358    lea         eax,[ebp-7C]
 0049E35B    mov         edx,2
 0049E360    call        0067DCA0
 0049E365    pop         ecx
 0049E366    test        cl,cl
>0049E368    je          0049E3A9
 0049E36A    mov         word ptr [ebp-1B4],194
 0049E373    mov         edx,6BE75E
 0049E378    lea         eax,[ebp-80]
 0049E37B    call        0067DAB4
 0049E380    inc         dword ptr [ebp-1A8]
 0049E386    lea         edx,[ebp-80]
 0049E389    lea         eax,[ebp-10]
 0049E38C    call        0067DCD0
 0049E391    dec         dword ptr [ebp-1A8]
 0049E397    lea         eax,[ebp-80]
 0049E39A    mov         edx,2
 0049E39F    call        0067DCA0
>0049E3A4    jmp         0049F6E3
 0049E3A9    mov         word ptr [ebp-1B4],1A0
 0049E3B2    mov         edx,6BE765
 0049E3B7    lea         eax,[ebp-84]
 0049E3BD    call        0067DAB4
 0049E3C2    inc         dword ptr [ebp-1A8]
 0049E3C8    mov         edx,dword ptr [eax]
 0049E3CA    mov         eax,dword ptr [ebp-8]
 0049E3CD    call        SameText
 0049E3D2    push        eax
 0049E3D3    dec         dword ptr [ebp-1A8]
 0049E3D9    lea         eax,[ebp-84]
 0049E3DF    mov         edx,2
 0049E3E4    call        0067DCA0
 0049E3E9    pop         ecx
 0049E3EA    test        cl,cl
>0049E3EC    je          0049E436
 0049E3EE    mov         word ptr [ebp-1B4],1AC
 0049E3F7    mov         edx,6BE76C
 0049E3FC    lea         eax,[ebp-88]
 0049E402    call        0067DAB4
 0049E407    inc         dword ptr [ebp-1A8]
 0049E40D    lea         edx,[ebp-88]
 0049E413    lea         eax,[ebp-10]
 0049E416    call        0067DCD0
 0049E41B    dec         dword ptr [ebp-1A8]
 0049E421    lea         eax,[ebp-88]
 0049E427    mov         edx,2
 0049E42C    call        0067DCA0
>0049E431    jmp         0049F6E3
 0049E436    mov         word ptr [ebp-1B4],1B8
 0049E43F    mov         edx,6BE774
 0049E444    lea         eax,[ebp-8C]
 0049E44A    call        0067DAB4
 0049E44F    inc         dword ptr [ebp-1A8]
 0049E455    mov         edx,dword ptr [eax]
 0049E457    mov         eax,dword ptr [ebp-8]
 0049E45A    call        SameText
 0049E45F    push        eax
 0049E460    dec         dword ptr [ebp-1A8]
 0049E466    lea         eax,[ebp-8C]
 0049E46C    mov         edx,2
 0049E471    call        0067DCA0
 0049E476    pop         ecx
 0049E477    test        cl,cl
>0049E479    je          0049E4C3
 0049E47B    mov         word ptr [ebp-1B4],1C4
 0049E484    mov         edx,6BE77E
 0049E489    lea         eax,[ebp-90]
 0049E48F    call        0067DAB4
 0049E494    inc         dword ptr [ebp-1A8]
 0049E49A    lea         edx,[ebp-90]
 0049E4A0    lea         eax,[ebp-10]
 0049E4A3    call        0067DCD0
 0049E4A8    dec         dword ptr [ebp-1A8]
 0049E4AE    lea         eax,[ebp-90]
 0049E4B4    mov         edx,2
 0049E4B9    call        0067DCA0
>0049E4BE    jmp         0049F6E3
 0049E4C3    mov         word ptr [ebp-1B4],1D0
 0049E4CC    mov         edx,6BE789
 0049E4D1    lea         eax,[ebp-94]
 0049E4D7    call        0067DAB4
 0049E4DC    inc         dword ptr [ebp-1A8]
 0049E4E2    mov         edx,dword ptr [eax]
 0049E4E4    mov         eax,dword ptr [ebp-8]
 0049E4E7    call        SameText
 0049E4EC    push        eax
 0049E4ED    dec         dword ptr [ebp-1A8]
 0049E4F3    lea         eax,[ebp-94]
 0049E4F9    mov         edx,2
 0049E4FE    call        0067DCA0
 0049E503    pop         ecx
 0049E504    test        cl,cl
>0049E506    je          0049E550
 0049E508    mov         word ptr [ebp-1B4],1DC
 0049E511    mov         edx,6BE795
 0049E516    lea         eax,[ebp-98]
 0049E51C    call        0067DAB4
 0049E521    inc         dword ptr [ebp-1A8]
 0049E527    lea         edx,[ebp-98]
 0049E52D    lea         eax,[ebp-10]
 0049E530    call        0067DCD0
 0049E535    dec         dword ptr [ebp-1A8]
 0049E53B    lea         eax,[ebp-98]
 0049E541    mov         edx,2
 0049E546    call        0067DCA0
>0049E54B    jmp         0049F6E3
 0049E550    mov         word ptr [ebp-1B4],1E8
 0049E559    mov         edx,6BE7A2
 0049E55E    lea         eax,[ebp-9C]
 0049E564    call        0067DAB4
 0049E569    inc         dword ptr [ebp-1A8]
 0049E56F    mov         edx,dword ptr [eax]
 0049E571    mov         eax,dword ptr [ebp-8]
 0049E574    call        SameText
 0049E579    push        eax
 0049E57A    dec         dword ptr [ebp-1A8]
 0049E580    lea         eax,[ebp-9C]
 0049E586    mov         edx,2
 0049E58B    call        0067DCA0
 0049E590    pop         ecx
 0049E591    test        cl,cl
>0049E593    je          0049E5DD
 0049E595    mov         word ptr [ebp-1B4],1F4
 0049E59E    mov         edx,6BE7AC
 0049E5A3    lea         eax,[ebp-0A0]
 0049E5A9    call        0067DAB4
 0049E5AE    inc         dword ptr [ebp-1A8]
 0049E5B4    lea         edx,[ebp-0A0]
 0049E5BA    lea         eax,[ebp-10]
 0049E5BD    call        0067DCD0
 0049E5C2    dec         dword ptr [ebp-1A8]
 0049E5C8    lea         eax,[ebp-0A0]
 0049E5CE    mov         edx,2
 0049E5D3    call        0067DCA0
>0049E5D8    jmp         0049F6E3
 0049E5DD    mov         word ptr [ebp-1B4],200
 0049E5E6    mov         edx,6BE7B7
 0049E5EB    lea         eax,[ebp-0A4]
 0049E5F1    call        0067DAB4
 0049E5F6    inc         dword ptr [ebp-1A8]
 0049E5FC    mov         edx,dword ptr [eax]
 0049E5FE    mov         eax,dword ptr [ebp-8]
 0049E601    call        SameText
 0049E606    push        eax
 0049E607    dec         dword ptr [ebp-1A8]
 0049E60D    lea         eax,[ebp-0A4]
 0049E613    mov         edx,2
 0049E618    call        0067DCA0
 0049E61D    pop         ecx
 0049E61E    test        cl,cl
>0049E620    je          0049E66A
 0049E622    mov         word ptr [ebp-1B4],20C
 0049E62B    mov         edx,6BE7C9
 0049E630    lea         eax,[ebp-0A8]
 0049E636    call        0067DAB4
 0049E63B    inc         dword ptr [ebp-1A8]
 0049E641    lea         edx,[ebp-0A8]
 0049E647    lea         eax,[ebp-10]
 0049E64A    call        0067DCD0
 0049E64F    dec         dword ptr [ebp-1A8]
 0049E655    lea         eax,[ebp-0A8]
 0049E65B    mov         edx,2
 0049E660    call        0067DCA0
>0049E665    jmp         0049F6E3
 0049E66A    mov         word ptr [ebp-1B4],218
 0049E673    mov         edx,6BE7DC
 0049E678    lea         eax,[ebp-0AC]
 0049E67E    call        0067DAB4
 0049E683    inc         dword ptr [ebp-1A8]
 0049E689    mov         edx,dword ptr [eax]
 0049E68B    mov         eax,dword ptr [ebp-8]
 0049E68E    call        SameText
 0049E693    push        eax
 0049E694    dec         dword ptr [ebp-1A8]
 0049E69A    lea         eax,[ebp-0AC]
 0049E6A0    mov         edx,2
 0049E6A5    call        0067DCA0
 0049E6AA    pop         ecx
 0049E6AB    test        cl,cl
>0049E6AD    je          0049E6F7
 0049E6AF    mov         word ptr [ebp-1B4],224
 0049E6B8    mov         edx,6BE7EC
 0049E6BD    lea         eax,[ebp-0B0]
 0049E6C3    call        0067DAB4
 0049E6C8    inc         dword ptr [ebp-1A8]
 0049E6CE    lea         edx,[ebp-0B0]
 0049E6D4    lea         eax,[ebp-10]
 0049E6D7    call        0067DCD0
 0049E6DC    dec         dword ptr [ebp-1A8]
 0049E6E2    lea         eax,[ebp-0B0]
 0049E6E8    mov         edx,2
 0049E6ED    call        0067DCA0
>0049E6F2    jmp         0049F6E3
 0049E6F7    mov         eax,dword ptr [ebp-8]
 0049E6FA    call        006442AC
 0049E6FF    test        eax,eax
>0049E701    jne         0049F6E3
 0049E707    mov         word ptr [ebp-1B4],230
 0049E710    mov         edx,6BE7F7
 0049E715    lea         eax,[ebp-0B4]
 0049E71B    call        0067DAB4
 0049E720    inc         dword ptr [ebp-1A8]
 0049E726    lea         edx,[ebp-0B4]
 0049E72C    lea         eax,[ebp-8]
 0049E72F    call        00536240
 0049E734    push        eax
 0049E735    dec         dword ptr [ebp-1A8]
 0049E73B    lea         eax,[ebp-0B4]
 0049E741    mov         edx,2
 0049E746    call        0067DCA0
 0049E74B    pop         ecx
 0049E74C    test        cl,cl
>0049E74E    je          0049E798
 0049E750    mov         word ptr [ebp-1B4],23C
 0049E759    mov         edx,6BE804
 0049E75E    lea         eax,[ebp-0B8]
 0049E764    call        0067DAB4
 0049E769    inc         dword ptr [ebp-1A8]
 0049E76F    lea         edx,[ebp-0B8]
 0049E775    lea         eax,[ebp-10]
 0049E778    call        0067DCD0
 0049E77D    dec         dword ptr [ebp-1A8]
 0049E783    lea         eax,[ebp-0B8]
 0049E789    mov         edx,2
 0049E78E    call        0067DCA0
>0049E793    jmp         0049F6E3
 0049E798    mov         word ptr [ebp-1B4],248
 0049E7A1    mov         edx,6BE80C
 0049E7A6    lea         eax,[ebp-0BC]
 0049E7AC    call        0067DAB4
 0049E7B1    inc         dword ptr [ebp-1A8]
 0049E7B7    lea         edx,[ebp-0BC]
 0049E7BD    lea         eax,[ebp-8]
 0049E7C0    call        00536240
 0049E7C5    push        eax
 0049E7C6    dec         dword ptr [ebp-1A8]
 0049E7CC    lea         eax,[ebp-0BC]
 0049E7D2    mov         edx,2
 0049E7D7    call        0067DCA0
 0049E7DC    pop         ecx
 0049E7DD    test        cl,cl
>0049E7DF    je          0049E829
 0049E7E1    mov         word ptr [ebp-1B4],254
 0049E7EA    mov         edx,6BE816
 0049E7EF    lea         eax,[ebp-0C0]
 0049E7F5    call        0067DAB4
 0049E7FA    inc         dword ptr [ebp-1A8]
 0049E800    lea         edx,[ebp-0C0]
 0049E806    lea         eax,[ebp-10]
 0049E809    call        0067DCD0
 0049E80E    dec         dword ptr [ebp-1A8]
 0049E814    lea         eax,[ebp-0C0]
 0049E81A    mov         edx,2
 0049E81F    call        0067DCA0
>0049E824    jmp         0049F6E3
 0049E829    mov         word ptr [ebp-1B4],260
 0049E832    mov         edx,6BE820
 0049E837    lea         eax,[ebp-0C4]
 0049E83D    call        0067DAB4
 0049E842    inc         dword ptr [ebp-1A8]
 0049E848    lea         edx,[ebp-0C4]
 0049E84E    lea         eax,[ebp-8]
 0049E851    call        00536240
 0049E856    push        eax
 0049E857    dec         dword ptr [ebp-1A8]
 0049E85D    lea         eax,[ebp-0C4]
 0049E863    mov         edx,2
 0049E868    call        0067DCA0
 0049E86D    pop         ecx
 0049E86E    test        cl,cl
>0049E870    je          0049E8BA
 0049E872    mov         word ptr [ebp-1B4],26C
 0049E87B    mov         edx,6BE82B
 0049E880    lea         eax,[ebp-0C8]
 0049E886    call        0067DAB4
 0049E88B    inc         dword ptr [ebp-1A8]
 0049E891    lea         edx,[ebp-0C8]
 0049E897    lea         eax,[ebp-10]
 0049E89A    call        0067DCD0
 0049E89F    dec         dword ptr [ebp-1A8]
 0049E8A5    lea         eax,[ebp-0C8]
 0049E8AB    mov         edx,2
 0049E8B0    call        0067DCA0
>0049E8B5    jmp         0049F6E3
 0049E8BA    mov         word ptr [ebp-1B4],278
 0049E8C3    mov         edx,6BE836
 0049E8C8    lea         eax,[ebp-0CC]
 0049E8CE    call        0067DAB4
 0049E8D3    inc         dword ptr [ebp-1A8]
 0049E8D9    lea         edx,[ebp-0CC]
 0049E8DF    lea         eax,[ebp-8]
 0049E8E2    call        00536240
 0049E8E7    test        al,al
>0049E8E9    jne         0049E933
 0049E8EB    mov         edx,6BE843
 0049E8F0    lea         eax,[ebp-0D0]
 0049E8F6    call        0067DAB4
 0049E8FB    inc         dword ptr [ebp-1A8]
 0049E901    mov         edx,dword ptr [eax]
 0049E903    mov         eax,dword ptr [ebp-8]
 0049E906    call        00652CC8
 0049E90B    test        al,al
 0049E90D    setne       cl
 0049E910    and         ecx,1
 0049E913    push        ecx
 0049E914    dec         dword ptr [ebp-1A8]
 0049E91A    lea         eax,[ebp-0D0]
 0049E920    mov         edx,2
 0049E925    call        0067DCA0
 0049E92A    pop         ecx
 0049E92B    test        ecx,ecx
>0049E92D    jne         0049E933
 0049E92F    xor         eax,eax
>0049E931    jmp         0049E938
 0049E933    mov         eax,1
 0049E938    push        eax
 0049E939    dec         dword ptr [ebp-1A8]
 0049E93F    lea         eax,[ebp-0CC]
 0049E945    mov         edx,2
 0049E94A    call        0067DCA0
 0049E94F    pop         ecx
 0049E950    test        cl,cl
>0049E952    je          0049E99C
 0049E954    mov         word ptr [ebp-1B4],284
 0049E95D    mov         edx,6BE849
 0049E962    lea         eax,[ebp-0D4]
 0049E968    call        0067DAB4
 0049E96D    inc         dword ptr [ebp-1A8]
 0049E973    lea         edx,[ebp-0D4]
 0049E979    lea         eax,[ebp-10]
 0049E97C    call        0067DCD0
 0049E981    dec         dword ptr [ebp-1A8]
 0049E987    lea         eax,[ebp-0D4]
 0049E98D    mov         edx,2
 0049E992    call        0067DCA0
>0049E997    jmp         0049F6E3
 0049E99C    mov         word ptr [ebp-1B4],290
 0049E9A5    mov         edx,6BE850
 0049E9AA    lea         eax,[ebp-0D8]
 0049E9B0    call        0067DAB4
 0049E9B5    inc         dword ptr [ebp-1A8]
 0049E9BB    lea         edx,[ebp-0D8]
 0049E9C1    lea         eax,[ebp-8]
 0049E9C4    call        00536240
 0049E9C9    push        eax
 0049E9CA    dec         dword ptr [ebp-1A8]
 0049E9D0    lea         eax,[ebp-0D8]
 0049E9D6    mov         edx,2
 0049E9DB    call        0067DCA0
 0049E9E0    pop         ecx
 0049E9E1    test        cl,cl
>0049E9E3    je          0049EA2D
 0049E9E5    mov         word ptr [ebp-1B4],29C
 0049E9EE    mov         edx,6BE85C
 0049E9F3    lea         eax,[ebp-0DC]
 0049E9F9    call        0067DAB4
 0049E9FE    inc         dword ptr [ebp-1A8]
 0049EA04    lea         edx,[ebp-0DC]
 0049EA0A    lea         eax,[ebp-10]
 0049EA0D    call        0067DCD0
 0049EA12    dec         dword ptr [ebp-1A8]
 0049EA18    lea         eax,[ebp-0DC]
 0049EA1E    mov         edx,2
 0049EA23    call        0067DCA0
>0049EA28    jmp         0049F6E3
 0049EA2D    mov         word ptr [ebp-1B4],2A8
 0049EA36    mov         edx,6BE862
 0049EA3B    lea         eax,[ebp-0E0]
 0049EA41    call        0067DAB4
 0049EA46    inc         dword ptr [ebp-1A8]
 0049EA4C    lea         edx,[ebp-0E0]
 0049EA52    lea         eax,[ebp-8]
 0049EA55    call        00536240
 0049EA5A    push        eax
 0049EA5B    dec         dword ptr [ebp-1A8]
 0049EA61    lea         eax,[ebp-0E0]
 0049EA67    mov         edx,2
 0049EA6C    call        0067DCA0
 0049EA71    pop         ecx
 0049EA72    test        cl,cl
>0049EA74    je          0049EABE
 0049EA76    mov         word ptr [ebp-1B4],2B4
 0049EA7F    mov         edx,6BE86E
 0049EA84    lea         eax,[ebp-0E4]
 0049EA8A    call        0067DAB4
 0049EA8F    inc         dword ptr [ebp-1A8]
 0049EA95    lea         edx,[ebp-0E4]
 0049EA9B    lea         eax,[ebp-10]
 0049EA9E    call        0067DCD0
 0049EAA3    dec         dword ptr [ebp-1A8]
 0049EAA9    lea         eax,[ebp-0E4]
 0049EAAF    mov         edx,2
 0049EAB4    call        0067DCA0
>0049EAB9    jmp         0049F6E3
 0049EABE    mov         word ptr [ebp-1B4],2C0
 0049EAC7    mov         edx,6BE874
 0049EACC    lea         eax,[ebp-0E8]
 0049EAD2    call        0067DAB4
 0049EAD7    inc         dword ptr [ebp-1A8]
 0049EADD    lea         edx,[ebp-0E8]
 0049EAE3    lea         eax,[ebp-8]
 0049EAE6    call        00536240
 0049EAEB    push        eax
 0049EAEC    dec         dword ptr [ebp-1A8]
 0049EAF2    lea         eax,[ebp-0E8]
 0049EAF8    mov         edx,2
 0049EAFD    call        0067DCA0
 0049EB02    pop         ecx
 0049EB03    test        cl,cl
>0049EB05    je          0049EB4F
 0049EB07    mov         word ptr [ebp-1B4],2CC
 0049EB10    mov         edx,6BE87C
 0049EB15    lea         eax,[ebp-0EC]
 0049EB1B    call        0067DAB4
 0049EB20    inc         dword ptr [ebp-1A8]
 0049EB26    lea         edx,[ebp-0EC]
 0049EB2C    lea         eax,[ebp-10]
 0049EB2F    call        0067DCD0
 0049EB34    dec         dword ptr [ebp-1A8]
 0049EB3A    lea         eax,[ebp-0EC]
 0049EB40    mov         edx,2
 0049EB45    call        0067DCA0
>0049EB4A    jmp         0049F6E3
 0049EB4F    mov         word ptr [ebp-1B4],2D8
 0049EB58    mov         edx,6BE884
 0049EB5D    lea         eax,[ebp-0F0]
 0049EB63    call        0067DAB4
 0049EB68    inc         dword ptr [ebp-1A8]
 0049EB6E    lea         edx,[ebp-0F0]
 0049EB74    lea         eax,[ebp-8]
 0049EB77    call        00536240
 0049EB7C    push        eax
 0049EB7D    dec         dword ptr [ebp-1A8]
 0049EB83    lea         eax,[ebp-0F0]
 0049EB89    mov         edx,2
 0049EB8E    call        0067DCA0
 0049EB93    pop         ecx
 0049EB94    test        cl,cl
>0049EB96    je          0049EBE0
 0049EB98    mov         word ptr [ebp-1B4],2E4
 0049EBA1    mov         edx,6BE894
 0049EBA6    lea         eax,[ebp-0F4]
 0049EBAC    call        0067DAB4
 0049EBB1    inc         dword ptr [ebp-1A8]
 0049EBB7    lea         edx,[ebp-0F4]
 0049EBBD    lea         eax,[ebp-10]
 0049EBC0    call        0067DCD0
 0049EBC5    dec         dword ptr [ebp-1A8]
 0049EBCB    lea         eax,[ebp-0F4]
 0049EBD1    mov         edx,2
 0049EBD6    call        0067DCA0
>0049EBDB    jmp         0049F6E3
 0049EBE0    mov         word ptr [ebp-1B4],2F0
 0049EBE9    mov         edx,6BE89E
 0049EBEE    lea         eax,[ebp-0F8]
 0049EBF4    call        0067DAB4
 0049EBF9    inc         dword ptr [ebp-1A8]
 0049EBFF    lea         edx,[ebp-0F8]
 0049EC05    lea         eax,[ebp-8]
 0049EC08    call        00536240
 0049EC0D    push        eax
 0049EC0E    dec         dword ptr [ebp-1A8]
 0049EC14    lea         eax,[ebp-0F8]
 0049EC1A    mov         edx,2
 0049EC1F    call        0067DCA0
 0049EC24    pop         ecx
 0049EC25    test        cl,cl
>0049EC27    je          0049EC71
 0049EC29    mov         word ptr [ebp-1B4],2FC
 0049EC32    mov         edx,6BE8AB
 0049EC37    lea         eax,[ebp-0FC]
 0049EC3D    call        0067DAB4
 0049EC42    inc         dword ptr [ebp-1A8]
 0049EC48    lea         edx,[ebp-0FC]
 0049EC4E    lea         eax,[ebp-10]
 0049EC51    call        0067DCD0
 0049EC56    dec         dword ptr [ebp-1A8]
 0049EC5C    lea         eax,[ebp-0FC]
 0049EC62    mov         edx,2
 0049EC67    call        0067DCA0
>0049EC6C    jmp         0049F6E3
 0049EC71    mov         word ptr [ebp-1B4],308
 0049EC7A    mov         edx,6BE8B8
 0049EC7F    lea         eax,[ebp-100]
 0049EC85    call        0067DAB4
 0049EC8A    inc         dword ptr [ebp-1A8]
 0049EC90    lea         edx,[ebp-100]
 0049EC96    lea         eax,[ebp-8]
 0049EC99    call        00536240
 0049EC9E    push        eax
 0049EC9F    dec         dword ptr [ebp-1A8]
 0049ECA5    lea         eax,[ebp-100]
 0049ECAB    mov         edx,2
 0049ECB0    call        0067DCA0
 0049ECB5    pop         ecx
 0049ECB6    test        cl,cl
>0049ECB8    je          0049ED02
 0049ECBA    mov         word ptr [ebp-1B4],314
 0049ECC3    mov         edx,6BE8C7
 0049ECC8    lea         eax,[ebp-104]
 0049ECCE    call        0067DAB4
 0049ECD3    inc         dword ptr [ebp-1A8]
 0049ECD9    lea         edx,[ebp-104]
 0049ECDF    lea         eax,[ebp-10]
 0049ECE2    call        0067DCD0
 0049ECE7    dec         dword ptr [ebp-1A8]
 0049ECED    lea         eax,[ebp-104]
 0049ECF3    mov         edx,2
 0049ECF8    call        0067DCA0
>0049ECFD    jmp         0049F6E3
 0049ED02    mov         word ptr [ebp-1B4],320
 0049ED0B    mov         edx,6BE8D0
 0049ED10    lea         eax,[ebp-108]
 0049ED16    call        0067DAB4
 0049ED1B    inc         dword ptr [ebp-1A8]
 0049ED21    lea         edx,[ebp-108]
 0049ED27    lea         eax,[ebp-8]
 0049ED2A    call        00536240
 0049ED2F    push        eax
 0049ED30    dec         dword ptr [ebp-1A8]
 0049ED36    lea         eax,[ebp-108]
 0049ED3C    mov         edx,2
 0049ED41    call        0067DCA0
 0049ED46    pop         ecx
 0049ED47    test        cl,cl
>0049ED49    je          0049ED93
 0049ED4B    mov         word ptr [ebp-1B4],32C
 0049ED54    mov         edx,6BE8E0
 0049ED59    lea         eax,[ebp-10C]
 0049ED5F    call        0067DAB4
 0049ED64    inc         dword ptr [ebp-1A8]
 0049ED6A    lea         edx,[ebp-10C]
 0049ED70    lea         eax,[ebp-10]
 0049ED73    call        0067DCD0
 0049ED78    dec         dword ptr [ebp-1A8]
 0049ED7E    lea         eax,[ebp-10C]
 0049ED84    mov         edx,2
 0049ED89    call        0067DCA0
>0049ED8E    jmp         0049F6E3
 0049ED93    mov         word ptr [ebp-1B4],338
 0049ED9C    mov         edx,6BE8EA
 0049EDA1    lea         eax,[ebp-110]
 0049EDA7    call        0067DAB4
 0049EDAC    inc         dword ptr [ebp-1A8]
 0049EDB2    lea         edx,[ebp-110]
 0049EDB8    lea         eax,[ebp-8]
 0049EDBB    call        00536240
 0049EDC0    push        eax
 0049EDC1    dec         dword ptr [ebp-1A8]
 0049EDC7    lea         eax,[ebp-110]
 0049EDCD    mov         edx,2
 0049EDD2    call        0067DCA0
 0049EDD7    pop         ecx
 0049EDD8    test        cl,cl
>0049EDDA    je          0049EE24
 0049EDDC    mov         word ptr [ebp-1B4],344
 0049EDE5    mov         edx,6BE8FA
 0049EDEA    lea         eax,[ebp-114]
 0049EDF0    call        0067DAB4
 0049EDF5    inc         dword ptr [ebp-1A8]
 0049EDFB    lea         edx,[ebp-114]
 0049EE01    lea         eax,[ebp-10]
 0049EE04    call        0067DCD0
 0049EE09    dec         dword ptr [ebp-1A8]
 0049EE0F    lea         eax,[ebp-114]
 0049EE15    mov         edx,2
 0049EE1A    call        0067DCA0
>0049EE1F    jmp         0049F6E3
 0049EE24    mov         word ptr [ebp-1B4],350
 0049EE2D    mov         edx,6BE904
 0049EE32    lea         eax,[ebp-118]
 0049EE38    call        0067DAB4
 0049EE3D    inc         dword ptr [ebp-1A8]
 0049EE43    lea         edx,[ebp-118]
 0049EE49    lea         eax,[ebp-8]
 0049EE4C    call        00536240
 0049EE51    push        eax
 0049EE52    dec         dword ptr [ebp-1A8]
 0049EE58    lea         eax,[ebp-118]
 0049EE5E    mov         edx,2
 0049EE63    call        0067DCA0
 0049EE68    pop         ecx
 0049EE69    test        cl,cl
>0049EE6B    je          0049EEB5
 0049EE6D    mov         word ptr [ebp-1B4],35C
 0049EE76    mov         edx,6BE916
 0049EE7B    lea         eax,[ebp-11C]
 0049EE81    call        0067DAB4
 0049EE86    inc         dword ptr [ebp-1A8]
 0049EE8C    lea         edx,[ebp-11C]
 0049EE92    lea         eax,[ebp-10]
 0049EE95    call        0067DCD0
 0049EE9A    dec         dword ptr [ebp-1A8]
 0049EEA0    lea         eax,[ebp-11C]
 0049EEA6    mov         edx,2
 0049EEAB    call        0067DCA0
>0049EEB0    jmp         0049F6E3
 0049EEB5    mov         word ptr [ebp-1B4],368
 0049EEBE    mov         edx,6BE922
 0049EEC3    lea         eax,[ebp-120]
 0049EEC9    call        0067DAB4
 0049EECE    inc         dword ptr [ebp-1A8]
 0049EED4    lea         edx,[ebp-120]
 0049EEDA    lea         eax,[ebp-8]
 0049EEDD    call        00536240
 0049EEE2    push        eax
 0049EEE3    dec         dword ptr [ebp-1A8]
 0049EEE9    lea         eax,[ebp-120]
 0049EEEF    mov         edx,2
 0049EEF4    call        0067DCA0
 0049EEF9    pop         ecx
 0049EEFA    test        cl,cl
>0049EEFC    je          0049EF46
 0049EEFE    mov         word ptr [ebp-1B4],374
 0049EF07    mov         edx,6BE92F
 0049EF0C    lea         eax,[ebp-124]
 0049EF12    call        0067DAB4
 0049EF17    inc         dword ptr [ebp-1A8]
 0049EF1D    lea         edx,[ebp-124]
 0049EF23    lea         eax,[ebp-10]
 0049EF26    call        0067DCD0
 0049EF2B    dec         dword ptr [ebp-1A8]
 0049EF31    lea         eax,[ebp-124]
 0049EF37    mov         edx,2
 0049EF3C    call        0067DCA0
>0049EF41    jmp         0049F6E3
 0049EF46    mov         word ptr [ebp-1B4],380
 0049EF4F    mov         edx,6BE936
 0049EF54    lea         eax,[ebp-128]
 0049EF5A    call        0067DAB4
 0049EF5F    inc         dword ptr [ebp-1A8]
 0049EF65    lea         edx,[ebp-128]
 0049EF6B    lea         eax,[ebp-8]
 0049EF6E    call        00536240
 0049EF73    push        eax
 0049EF74    dec         dword ptr [ebp-1A8]
 0049EF7A    lea         eax,[ebp-128]
 0049EF80    mov         edx,2
 0049EF85    call        0067DCA0
 0049EF8A    pop         ecx
 0049EF8B    test        cl,cl
>0049EF8D    je          0049EFD7
 0049EF8F    mov         word ptr [ebp-1B4],38C
 0049EF98    mov         edx,6BE93E
 0049EF9D    lea         eax,[ebp-12C]
 0049EFA3    call        0067DAB4
 0049EFA8    inc         dword ptr [ebp-1A8]
 0049EFAE    lea         edx,[ebp-12C]
 0049EFB4    lea         eax,[ebp-10]
 0049EFB7    call        0067DCD0
 0049EFBC    dec         dword ptr [ebp-1A8]
 0049EFC2    lea         eax,[ebp-12C]
 0049EFC8    mov         edx,2
 0049EFCD    call        0067DCA0
>0049EFD2    jmp         0049F6E3
 0049EFD7    mov         word ptr [ebp-1B4],398
 0049EFE0    mov         edx,6BE946
 0049EFE5    lea         eax,[ebp-130]
 0049EFEB    call        0067DAB4
 0049EFF0    inc         dword ptr [ebp-1A8]
 0049EFF6    lea         edx,[ebp-130]
 0049EFFC    lea         eax,[ebp-8]
 0049EFFF    call        00536240
 0049F004    push        eax
 0049F005    dec         dword ptr [ebp-1A8]
 0049F00B    lea         eax,[ebp-130]
 0049F011    mov         edx,2
 0049F016    call        0067DCA0
 0049F01B    pop         ecx
 0049F01C    test        cl,cl
>0049F01E    je          0049F068
 0049F020    mov         word ptr [ebp-1B4],3A4
 0049F029    mov         edx,6BE953
 0049F02E    lea         eax,[ebp-134]
 0049F034    call        0067DAB4
 0049F039    inc         dword ptr [ebp-1A8]
 0049F03F    lea         edx,[ebp-134]
 0049F045    lea         eax,[ebp-10]
 0049F048    call        0067DCD0
 0049F04D    dec         dword ptr [ebp-1A8]
 0049F053    lea         eax,[ebp-134]
 0049F059    mov         edx,2
 0049F05E    call        0067DCA0
>0049F063    jmp         0049F6E3
 0049F068    mov         word ptr [ebp-1B4],3B0
 0049F071    mov         edx,6BE960
 0049F076    lea         eax,[ebp-138]
 0049F07C    call        0067DAB4
 0049F081    inc         dword ptr [ebp-1A8]
 0049F087    lea         edx,[ebp-138]
 0049F08D    lea         eax,[ebp-8]
 0049F090    call        00536240
 0049F095    push        eax
 0049F096    dec         dword ptr [ebp-1A8]
 0049F09C    lea         eax,[ebp-138]
 0049F0A2    mov         edx,2
 0049F0A7    call        0067DCA0
 0049F0AC    pop         ecx
 0049F0AD    test        cl,cl
>0049F0AF    je          0049F0F9
 0049F0B1    mov         word ptr [ebp-1B4],3BC
 0049F0BA    mov         edx,6BE967
 0049F0BF    lea         eax,[ebp-13C]
 0049F0C5    call        0067DAB4
 0049F0CA    inc         dword ptr [ebp-1A8]
 0049F0D0    lea         edx,[ebp-13C]
 0049F0D6    lea         eax,[ebp-10]
 0049F0D9    call        0067DCD0
 0049F0DE    dec         dword ptr [ebp-1A8]
 0049F0E4    lea         eax,[ebp-13C]
 0049F0EA    mov         edx,2
 0049F0EF    call        0067DCA0
>0049F0F4    jmp         0049F6E3
 0049F0F9    mov         word ptr [ebp-1B4],3C8
 0049F102    mov         edx,6BE96E
 0049F107    lea         eax,[ebp-140]
 0049F10D    call        0067DAB4
 0049F112    inc         dword ptr [ebp-1A8]
 0049F118    lea         edx,[ebp-140]
 0049F11E    lea         eax,[ebp-8]
 0049F121    call        00536240
 0049F126    push        eax
 0049F127    dec         dword ptr [ebp-1A8]
 0049F12D    lea         eax,[ebp-140]
 0049F133    mov         edx,2
 0049F138    call        0067DCA0
 0049F13D    pop         ecx
 0049F13E    test        cl,cl
>0049F140    je          0049F18A
 0049F142    mov         word ptr [ebp-1B4],3D4
 0049F14B    mov         edx,6BE979
 0049F150    lea         eax,[ebp-144]
 0049F156    call        0067DAB4
 0049F15B    inc         dword ptr [ebp-1A8]
 0049F161    lea         edx,[ebp-144]
 0049F167    lea         eax,[ebp-10]
 0049F16A    call        0067DCD0
 0049F16F    dec         dword ptr [ebp-1A8]
 0049F175    lea         eax,[ebp-144]
 0049F17B    mov         edx,2
 0049F180    call        0067DCA0
>0049F185    jmp         0049F6E3
 0049F18A    mov         word ptr [ebp-1B4],3E0
 0049F193    mov         edx,6BE984
 0049F198    lea         eax,[ebp-148]
 0049F19E    call        0067DAB4
 0049F1A3    inc         dword ptr [ebp-1A8]
 0049F1A9    lea         edx,[ebp-148]
 0049F1AF    lea         eax,[ebp-8]
 0049F1B2    call        00536240
 0049F1B7    push        eax
 0049F1B8    dec         dword ptr [ebp-1A8]
 0049F1BE    lea         eax,[ebp-148]
 0049F1C4    mov         edx,2
 0049F1C9    call        0067DCA0
 0049F1CE    pop         ecx
 0049F1CF    test        cl,cl
>0049F1D1    je          0049F21B
 0049F1D3    mov         word ptr [ebp-1B4],3EC
 0049F1DC    mov         edx,6BE98B
 0049F1E1    lea         eax,[ebp-14C]
 0049F1E7    call        0067DAB4
 0049F1EC    inc         dword ptr [ebp-1A8]
 0049F1F2    lea         edx,[ebp-14C]
 0049F1F8    lea         eax,[ebp-10]
 0049F1FB    call        0067DCD0
 0049F200    dec         dword ptr [ebp-1A8]
 0049F206    lea         eax,[ebp-14C]
 0049F20C    mov         edx,2
 0049F211    call        0067DCA0
>0049F216    jmp         0049F6E3
 0049F21B    mov         word ptr [ebp-1B4],3F8
 0049F224    mov         edx,6BE992
 0049F229    lea         eax,[ebp-150]
 0049F22F    call        0067DAB4
 0049F234    inc         dword ptr [ebp-1A8]
 0049F23A    lea         edx,[ebp-150]
 0049F240    lea         eax,[ebp-8]
 0049F243    call        00536240
 0049F248    push        eax
 0049F249    dec         dword ptr [ebp-1A8]
 0049F24F    lea         eax,[ebp-150]
 0049F255    mov         edx,2
 0049F25A    call        0067DCA0
 0049F25F    pop         ecx
 0049F260    test        cl,cl
>0049F262    je          0049F2AC
 0049F264    mov         word ptr [ebp-1B4],404
 0049F26D    mov         edx,6BE99C
 0049F272    lea         eax,[ebp-154]
 0049F278    call        0067DAB4
 0049F27D    inc         dword ptr [ebp-1A8]
 0049F283    lea         edx,[ebp-154]
 0049F289    lea         eax,[ebp-10]
 0049F28C    call        0067DCD0
 0049F291    dec         dword ptr [ebp-1A8]
 0049F297    lea         eax,[ebp-154]
 0049F29D    mov         edx,2
 0049F2A2    call        0067DCA0
>0049F2A7    jmp         0049F6E3
 0049F2AC    mov         word ptr [ebp-1B4],410
 0049F2B5    mov         edx,6BE9A6
 0049F2BA    lea         eax,[ebp-158]
 0049F2C0    call        0067DAB4
 0049F2C5    inc         dword ptr [ebp-1A8]
 0049F2CB    lea         edx,[ebp-158]
 0049F2D1    lea         eax,[ebp-8]
 0049F2D4    call        00536240
 0049F2D9    push        eax
 0049F2DA    dec         dword ptr [ebp-1A8]
 0049F2E0    lea         eax,[ebp-158]
 0049F2E6    mov         edx,2
 0049F2EB    call        0067DCA0
 0049F2F0    pop         ecx
 0049F2F1    test        cl,cl
>0049F2F3    je          0049F33D
 0049F2F5    mov         word ptr [ebp-1B4],41C
 0049F2FE    mov         edx,6BE9B3
 0049F303    lea         eax,[ebp-15C]
 0049F309    call        0067DAB4
 0049F30E    inc         dword ptr [ebp-1A8]
 0049F314    lea         edx,[ebp-15C]
 0049F31A    lea         eax,[ebp-10]
 0049F31D    call        0067DCD0
 0049F322    dec         dword ptr [ebp-1A8]
 0049F328    lea         eax,[ebp-15C]
 0049F32E    mov         edx,2
 0049F333    call        0067DCA0
>0049F338    jmp         0049F6E3
 0049F33D    mov         word ptr [ebp-1B4],428
 0049F346    mov         edx,6BE9C0
 0049F34B    lea         eax,[ebp-160]
 0049F351    call        0067DAB4
 0049F356    inc         dword ptr [ebp-1A8]
 0049F35C    lea         edx,[ebp-160]
 0049F362    lea         eax,[ebp-8]
 0049F365    call        00536240
 0049F36A    push        eax
 0049F36B    dec         dword ptr [ebp-1A8]
 0049F371    lea         eax,[ebp-160]
 0049F377    mov         edx,2
 0049F37C    call        0067DCA0
 0049F381    pop         ecx
 0049F382    test        cl,cl
>0049F384    je          0049F3CE
 0049F386    mov         word ptr [ebp-1B4],434
 0049F38F    mov         edx,6BE9C9
 0049F394    lea         eax,[ebp-164]
 0049F39A    call        0067DAB4
 0049F39F    inc         dword ptr [ebp-1A8]
 0049F3A5    lea         edx,[ebp-164]
 0049F3AB    lea         eax,[ebp-10]
 0049F3AE    call        0067DCD0
 0049F3B3    dec         dword ptr [ebp-1A8]
 0049F3B9    lea         eax,[ebp-164]
 0049F3BF    mov         edx,2
 0049F3C4    call        0067DCA0
>0049F3C9    jmp         0049F6E3
 0049F3CE    mov         word ptr [ebp-1B4],440
 0049F3D7    mov         edx,6BE9D2
 0049F3DC    lea         eax,[ebp-168]
 0049F3E2    call        0067DAB4
 0049F3E7    inc         dword ptr [ebp-1A8]
 0049F3ED    lea         edx,[ebp-168]
 0049F3F3    lea         eax,[ebp-8]
 0049F3F6    call        00536240
 0049F3FB    push        eax
 0049F3FC    dec         dword ptr [ebp-1A8]
 0049F402    lea         eax,[ebp-168]
 0049F408    mov         edx,2
 0049F40D    call        0067DCA0
 0049F412    pop         ecx
 0049F413    test        cl,cl
>0049F415    je          0049F45F
 0049F417    mov         word ptr [ebp-1B4],44C
 0049F420    mov         edx,6BE9DE
 0049F425    lea         eax,[ebp-16C]
 0049F42B    call        0067DAB4
 0049F430    inc         dword ptr [ebp-1A8]
 0049F436    lea         edx,[ebp-16C]
 0049F43C    lea         eax,[ebp-10]
 0049F43F    call        0067DCD0
 0049F444    dec         dword ptr [ebp-1A8]
 0049F44A    lea         eax,[ebp-16C]
 0049F450    mov         edx,2
 0049F455    call        0067DCA0
>0049F45A    jmp         0049F6E3
 0049F45F    mov         word ptr [ebp-1B4],458
 0049F468    mov         edx,6BE9EA
 0049F46D    lea         eax,[ebp-170]
 0049F473    call        0067DAB4
 0049F478    inc         dword ptr [ebp-1A8]
 0049F47E    lea         edx,[ebp-170]
 0049F484    lea         eax,[ebp-8]
 0049F487    call        00536240
 0049F48C    push        eax
 0049F48D    dec         dword ptr [ebp-1A8]
 0049F493    lea         eax,[ebp-170]
 0049F499    mov         edx,2
 0049F49E    call        0067DCA0
 0049F4A3    pop         ecx
 0049F4A4    test        cl,cl
>0049F4A6    je          0049F4F0
 0049F4A8    mov         word ptr [ebp-1B4],464
 0049F4B1    mov         edx,6BE9FB
 0049F4B6    lea         eax,[ebp-174]
 0049F4BC    call        0067DAB4
 0049F4C1    inc         dword ptr [ebp-1A8]
 0049F4C7    lea         edx,[ebp-174]
 0049F4CD    lea         eax,[ebp-10]
 0049F4D0    call        0067DCD0
 0049F4D5    dec         dword ptr [ebp-1A8]
 0049F4DB    lea         eax,[ebp-174]
 0049F4E1    mov         edx,2
 0049F4E6    call        0067DCA0
>0049F4EB    jmp         0049F6E3
 0049F4F0    mov         word ptr [ebp-1B4],470
 0049F4F9    mov         edx,6BEA06
 0049F4FE    lea         eax,[ebp-178]
 0049F504    call        0067DAB4
 0049F509    inc         dword ptr [ebp-1A8]
 0049F50F    lea         edx,[ebp-178]
 0049F515    lea         eax,[ebp-8]
 0049F518    call        00536240
 0049F51D    push        eax
 0049F51E    dec         dword ptr [ebp-1A8]
 0049F524    lea         eax,[ebp-178]
 0049F52A    mov         edx,2
 0049F52F    call        0067DCA0
 0049F534    pop         ecx
 0049F535    test        cl,cl
>0049F537    je          0049F581
 0049F539    mov         word ptr [ebp-1B4],47C
 0049F542    mov         edx,6BEA16
 0049F547    lea         eax,[ebp-17C]
 0049F54D    call        0067DAB4
 0049F552    inc         dword ptr [ebp-1A8]
 0049F558    lea         edx,[ebp-17C]
 0049F55E    lea         eax,[ebp-10]
 0049F561    call        0067DCD0
 0049F566    dec         dword ptr [ebp-1A8]
 0049F56C    lea         eax,[ebp-17C]
 0049F572    mov         edx,2
 0049F577    call        0067DCA0
>0049F57C    jmp         0049F6E3
 0049F581    mov         word ptr [ebp-1B4],488
 0049F58A    mov         edx,6BEA26
 0049F58F    lea         eax,[ebp-180]
 0049F595    call        0067DAB4
 0049F59A    inc         dword ptr [ebp-1A8]
 0049F5A0    lea         edx,[ebp-180]
 0049F5A6    lea         eax,[ebp-8]
 0049F5A9    call        00536240
 0049F5AE    push        eax
 0049F5AF    dec         dword ptr [ebp-1A8]
 0049F5B5    lea         eax,[ebp-180]
 0049F5BB    mov         edx,2
 0049F5C0    call        0067DCA0
 0049F5C5    pop         ecx
 0049F5C6    test        cl,cl
>0049F5C8    je          0049F612
 0049F5CA    mov         word ptr [ebp-1B4],494
 0049F5D3    mov         edx,6BEA36
 0049F5D8    lea         eax,[ebp-184]
 0049F5DE    call        0067DAB4
 0049F5E3    inc         dword ptr [ebp-1A8]
 0049F5E9    lea         edx,[ebp-184]
 0049F5EF    lea         eax,[ebp-10]
 0049F5F2    call        0067DCD0
 0049F5F7    dec         dword ptr [ebp-1A8]
 0049F5FD    lea         eax,[ebp-184]
 0049F603    mov         edx,2
 0049F608    call        0067DCA0
>0049F60D    jmp         0049F6E3
 0049F612    mov         word ptr [ebp-1B4],4A0
 0049F61B    mov         edx,6BEA40
 0049F620    lea         eax,[ebp-188]
 0049F626    call        0067DAB4
 0049F62B    inc         dword ptr [ebp-1A8]
 0049F631    lea         edx,[ebp-188]
 0049F637    lea         eax,[ebp-8]
 0049F63A    call        00536240
 0049F63F    push        eax
 0049F640    dec         dword ptr [ebp-1A8]
 0049F646    lea         eax,[ebp-188]
 0049F64C    mov         edx,2
 0049F651    call        0067DCA0
 0049F656    pop         ecx
 0049F657    test        cl,cl
>0049F659    je          0049F6A0
 0049F65B    mov         word ptr [ebp-1B4],4AC
 0049F664    mov         edx,6BEA50
 0049F669    lea         eax,[ebp-18C]
 0049F66F    call        0067DAB4
 0049F674    inc         dword ptr [ebp-1A8]
 0049F67A    lea         edx,[ebp-18C]
 0049F680    lea         eax,[ebp-10]
 0049F683    call        0067DCD0
 0049F688    dec         dword ptr [ebp-1A8]
 0049F68E    lea         eax,[ebp-18C]
 0049F694    mov         edx,2
 0049F699    call        0067DCA0
>0049F69E    jmp         0049F6E3
 0049F6A0    mov         word ptr [ebp-1B4],4B8
 0049F6A9    mov         edx,6BEA5A
 0049F6AE    lea         eax,[ebp-190]
 0049F6B4    call        0067DAB4
 0049F6B9    inc         dword ptr [ebp-1A8]
 0049F6BF    lea         edx,[ebp-190]
 0049F6C5    lea         eax,[ebp-10]
 0049F6C8    call        0067DCD0
 0049F6CD    dec         dword ptr [ebp-1A8]
 0049F6D3    lea         eax,[ebp-190]
 0049F6D9    mov         edx,2
 0049F6DE    call        0067DCA0
 0049F6E3    mov         word ptr [ebp-1B4],4C
 0049F6EC    call        0067AF32
 0049F6F1    mov         word ptr [ebp-1B4],4C4
 0049F6FA    mov         edx,6BEA62
 0049F6FF    lea         eax,[ebp-194]
 0049F705    call        0067DAB4
 0049F70A    inc         dword ptr [ebp-1A8]
 0049F710    lea         edx,[ebp-194]
 0049F716    lea         eax,[ebp-10]
 0049F719    call        0067DD9C
 0049F71E    push        eax
 0049F71F    dec         dword ptr [ebp-1A8]
 0049F725    lea         eax,[ebp-194]
 0049F72B    mov         edx,2
 0049F730    call        0067DCA0
 0049F735    pop         ecx
 0049F736    test        cl,cl
>0049F738    je          0049F7FF
 0049F73E    mov         word ptr [ebp-1B4],4D0
 0049F747    lea         eax,[ebp-19C]
 0049F74D    call        00401EA8
 0049F752    push        eax
 0049F753    inc         dword ptr [ebp-1A8]
 0049F759    mov         edx,6BEA63
 0049F75E    lea         eax,[ebp-198]
 0049F764    call        0067DAB4
 0049F769    inc         dword ptr [ebp-1A8]
 0049F76F    lea         edx,[ebp-198]
 0049F775    lea         eax,[ebp-8]
 0049F778    pop         ecx
 0049F779    call        0067DCF8
 0049F77E    lea         edx,[ebp-19C]
 0049F784    push        edx
 0049F785    lea         eax,[ebp-1A0]
 0049F78B    call        00401EA8
 0049F790    mov         ecx,eax
 0049F792    inc         dword ptr [ebp-1A8]
 0049F798    lea         edx,[ebp-10]
 0049F79B    pop         eax
 0049F79C    call        0067DCF8
 0049F7A1    lea         ecx,[ebp-1A0]
 0049F7A7    mov         ecx,dword ptr [ecx]
 0049F7A9    mov         eax,dword ptr [ebp-1C8]
 0049F7AF    mov         eax,dword ptr [eax+11]
 0049F7B2    mov         edx,dword ptr [ebp-1D0]
 0049F7B8    mov         ebx,dword ptr [eax]
 0049F7BA    call        dword ptr [ebx+20]
 0049F7BD    dec         dword ptr [ebp-1A8]
 0049F7C3    lea         eax,[ebp-1A0]
 0049F7C9    mov         edx,2
 0049F7CE    call        0067DCA0
 0049F7D3    dec         dword ptr [ebp-1A8]
 0049F7D9    lea         eax,[ebp-19C]
 0049F7DF    mov         edx,2
 0049F7E4    call        0067DCA0
 0049F7E9    dec         dword ptr [ebp-1A8]
 0049F7EF    lea         eax,[ebp-198]
 0049F7F5    mov         edx,2
 0049F7FA    call        0067DCA0
 0049F7FF    dec         dword ptr [ebp-1A8]
 0049F805    lea         eax,[ebp-10]
 0049F808    mov         edx,2
 0049F80D    call        0067DCA0
 0049F812    mov         word ptr [ebp-1B4],8
 0049F81B    dec         dword ptr [ebp-1A8]
 0049F821    lea         eax,[ebp-8]
 0049F824    mov         edx,2
 0049F829    call        0067DCA0
 0049F82E    mov         word ptr [ebp-1B4],0
 0049F837    inc         dword ptr [ebp-1D0]
 0049F83D    mov         ecx,dword ptr [ebp-1D0]
 0049F843    mov         eax,dword ptr [ebp-1CC]
 0049F849    cmp         ecx,eax
>0049F84B    jl          0049DBF0
 0049F851    mov         edx,dword ptr [ebp-1C4]
 0049F857    mov         dword ptr fs:[0],edx
 0049F85E    pop         edi
 0049F85F    pop         esi
 0049F860    pop         ebx
 0049F861    mov         esp,ebp
 0049F863    pop         ebp
 0049F864    ret
end;*}

//0049F9D4
{*function sub_0049F9D4(?:?; ?:dword; ?:?):?;
begin
 0049F9D4    push        ebp
 0049F9D5    mov         ebp,esp
 0049F9D7    add         esp,0FFFFFFC8
 0049F9DA    mov         dword ptr [ebp-30],ecx
 0049F9DD    mov         dword ptr [ebp-4],edx
 0049F9E0    mov         dword ptr [ebp-2C],eax
 0049F9E3    mov         eax,6C02D0
 0049F9E8    call        0066FECC
 0049F9ED    mov         dword ptr [ebp-0C],1
 0049F9F4    lea         edx,[ebp-4]
 0049F9F7    lea         eax,[ebp-4]
 0049F9FA    call        0067DAEC
 0049F9FF    inc         dword ptr [ebp-0C]
 0049FA02    mov         word ptr [ebp-18],8
 0049FA08    xor         edx,edx
 0049FA0A    mov         dword ptr [ebp-34],edx
>0049FA0D    jmp         0049FA64
 0049FA0F    mov         ecx,dword ptr [ebp-2C]
 0049FA12    mov         eax,dword ptr [ecx+0D]
 0049FA15    mov         edx,dword ptr [ebp-34]
 0049FA18    call        TList.Get
 0049FA1D    mov         dword ptr [ebp-38],eax
 0049FA20    mov         word ptr [ebp-18],8
 0049FA26    mov         edx,dword ptr [ebp-4]
 0049FA29    mov         eax,dword ptr [ebp-38]
 0049FA2C    mov         eax,dword ptr [eax+6]
 0049FA2F    call        SameText
 0049FA34    test        al,al
>0049FA36    je          0049FA61
 0049FA38    mov         edx,dword ptr [ebp-30]
 0049FA3B    mov         ecx,dword ptr [ebp-34]
 0049FA3E    mov         dword ptr [edx],ecx
 0049FA40    mov         eax,dword ptr [ebp-38]
 0049FA43    push        eax
 0049FA44    dec         dword ptr [ebp-0C]
 0049FA47    lea         eax,[ebp-4]
 0049FA4A    mov         edx,2
 0049FA4F    call        0067DCA0
 0049FA54    pop         eax
 0049FA55    mov         edx,dword ptr [ebp-28]
 0049FA58    mov         dword ptr fs:[0],edx
>0049FA5F    jmp         0049FA9B
 0049FA61    inc         dword ptr [ebp-34]
 0049FA64    mov         ecx,dword ptr [ebp-2C]
 0049FA67    mov         eax,dword ptr [ecx+0D]
 0049FA6A    mov         edx,dword ptr [eax+8]
 0049FA6D    mov         ecx,dword ptr [ebp-34]
 0049FA70    cmp         edx,ecx
>0049FA72    jg          0049FA0F
 0049FA74    mov         eax,dword ptr [ebp-30]
 0049FA77    mov         dword ptr [eax],0FFFFFFFF
 0049FA7D    xor         eax,eax
 0049FA7F    push        eax
 0049FA80    dec         dword ptr [ebp-0C]
 0049FA83    lea         eax,[ebp-4]
 0049FA86    mov         edx,2
 0049FA8B    call        0067DCA0
 0049FA90    pop         eax
 0049FA91    mov         edx,dword ptr [ebp-28]
 0049FA94    mov         dword ptr fs:[0],edx
 0049FA9B    mov         esp,ebp
 0049FA9D    pop         ebp
 0049FA9E    ret
end;*}

//0049FAA0
{*function sub_0049FAA0(?:?; ?:AnsiString):?;
begin
 0049FAA0    push        ebp
 0049FAA1    mov         ebp,esp
 0049FAA3    add         esp,0FFFFFFCC
 0049FAA6    mov         dword ptr [ebp-4],edx
 0049FAA9    mov         dword ptr [ebp-2C],eax
 0049FAAC    mov         eax,6C02F4
 0049FAB1    call        0066FECC
 0049FAB6    mov         dword ptr [ebp-0C],1
 0049FABD    lea         edx,[ebp-4]
 0049FAC0    lea         eax,[ebp-4]
 0049FAC3    call        0067DAEC
 0049FAC8    inc         dword ptr [ebp-0C]
 0049FACB    mov         word ptr [ebp-18],8
 0049FAD1    xor         edx,edx
 0049FAD3    mov         dword ptr [ebp-30],edx
>0049FAD6    jmp         0049FB25
 0049FAD8    mov         ecx,dword ptr [ebp-2C]
 0049FADB    mov         eax,dword ptr [ecx+0D]
 0049FADE    mov         edx,dword ptr [ebp-30]
 0049FAE1    call        TList.Get
 0049FAE6    mov         dword ptr [ebp-34],eax
 0049FAE9    mov         word ptr [ebp-18],8
 0049FAEF    mov         edx,dword ptr [ebp-4]
 0049FAF2    mov         eax,dword ptr [ebp-34]
 0049FAF5    mov         eax,dword ptr [eax+0A]
 0049FAF8    call        SameText
 0049FAFD    test        al,al
>0049FAFF    je          0049FB22
 0049FB01    mov         eax,dword ptr [ebp-34]
 0049FB04    push        eax
 0049FB05    dec         dword ptr [ebp-0C]
 0049FB08    lea         eax,[ebp-4]
 0049FB0B    mov         edx,2
 0049FB10    call        0067DCA0
 0049FB15    pop         eax
 0049FB16    mov         edx,dword ptr [ebp-28]
 0049FB19    mov         dword ptr fs:[0],edx
>0049FB20    jmp         0049FB53
 0049FB22    inc         dword ptr [ebp-30]
 0049FB25    mov         ecx,dword ptr [ebp-2C]
 0049FB28    mov         eax,dword ptr [ecx+0D]
 0049FB2B    mov         edx,dword ptr [eax+8]
 0049FB2E    mov         ecx,dword ptr [ebp-30]
 0049FB31    cmp         edx,ecx
>0049FB33    jg          0049FAD8
 0049FB35    xor         eax,eax
 0049FB37    push        eax
 0049FB38    dec         dword ptr [ebp-0C]
 0049FB3B    lea         eax,[ebp-4]
 0049FB3E    mov         edx,2
 0049FB43    call        0067DCA0
 0049FB48    pop         eax
 0049FB49    mov         edx,dword ptr [ebp-28]
 0049FB4C    mov         dword ptr fs:[0],edx
 0049FB53    mov         esp,ebp
 0049FB55    pop         ebp
 0049FB56    ret
end;*}

//0049FB58
{*procedure sub_0049FB58(?:?; ?:?; ?:?);
begin
 0049FB58    push        ebp
 0049FB59    mov         ebp,esp
 0049FB5B    add         esp,0FFFFFEEC
 0049FB61    mov         dword ptr [ebp-84],ecx
 0049FB67    mov         dword ptr [ebp-4],edx
 0049FB6A    mov         dword ptr [ebp-80],eax
 0049FB6D    mov         eax,6C0484
 0049FB72    call        0066FECC
 0049FB77    mov         dword ptr [ebp-60],1
 0049FB7E    lea         edx,[ebp-4]
 0049FB81    lea         eax,[ebp-4]
 0049FB84    call        0067DAEC
 0049FB89    inc         dword ptr [ebp-60]
 0049FB8C    mov         word ptr [ebp-6C],8
 0049FB92    lea         ecx,[ebp-88]
 0049FB98    mov         edx,dword ptr [ebp-4]
 0049FB9B    mov         eax,dword ptr [ebp-80]
 0049FB9E    call        0049F9D4
 0049FBA3    mov         dword ptr [ebp-0AC],eax
 0049FBA9    mov         edx,dword ptr [ebp-0AC]
 0049FBAF    test        edx,edx
>0049FBB1    jne         0049FBD2
 0049FBB3    dec         dword ptr [ebp-60]
 0049FBB6    lea         eax,[ebp-4]
 0049FBB9    mov         edx,2
 0049FBBE    call        0067DCA0
 0049FBC3    mov         ecx,dword ptr [ebp-7C]
 0049FBC6    mov         dword ptr fs:[0],ecx
>0049FBCD    jmp         004A065D
 0049FBD2    mov         eax,dword ptr [ebp-0AC]
 0049FBD8    add         eax,0A
 0049FBDB    call        00535E90
 0049FBE0    mov         dword ptr [ebp-0B0],eax
 0049FBE6    mov         eax,dword ptr [ebp-0B0]
 0049FBEC    call        00531EE8
 0049FBF1    test        al,al
>0049FBF3    je          0049FC0B
 0049FBF5    mov         eax,dword ptr [ebp-0B0]
 0049FBFB    call        005312C8
 0049FC00    mov         edx,dword ptr ds:[6941CC];0x0 gvar_006941CC
 0049FC06    mov         ecx,dword ptr [edx+eax*4]
>0049FC09    jmp         0049FC0D
 0049FC0B    xor         ecx,ecx
 0049FC0D    mov         dword ptr [ebp-0A4],ecx
 0049FC13    mov         eax,dword ptr [ebp-0AC]
 0049FC19    test        byte ptr [eax+1],1
>0049FC1D    je          0049FC6F
 0049FC1F    mov         edx,dword ptr [ebp-0AC]
 0049FC25    mov         eax,dword ptr [ebp-80]
 0049FC28    call        0049D8D0
 0049FC2D    mov         dword ptr [ebp-0B4],eax
 0049FC33    mov         edx,dword ptr [ebp-0B4]
 0049FC39    test        edx,edx
>0049FC3B    je          0049FC6F
 0049FC3D    mov         ecx,dword ptr [ebp-0B4]
 0049FC43    mov         edx,dword ptr [ecx+6]
 0049FC46    mov         ecx,dword ptr [ebp-84]
 0049FC4C    mov         eax,dword ptr [ebp-80]
 0049FC4F    call        0049FB58
 0049FC54    mov         eax,dword ptr [ebp-84]
 0049FC5A    mov         edx,dword ptr [eax+8]
 0049FC5D    mov         dword ptr [ebp-0B8],edx
 0049FC63    mov         ecx,dword ptr [ebp-0B8]
 0049FC69    mov         dword ptr [ebp-0B8],ecx
 0049FC6F    mov         eax,dword ptr [ebp-0AC]
 0049FC75    mov         edx,dword ptr [eax+16]
 0049FC78    mov         ecx,dword ptr [edx+8]
 0049FC7B    test        ecx,ecx
>0049FC7D    je          0049FE39
 0049FC83    mov         eax,dword ptr [ebp-0AC]
 0049FC89    mov         edx,dword ptr [eax+16]
 0049FC8C    mov         dword ptr [ebp-0BC],edx
 0049FC92    mov         ecx,dword ptr [ebp-0BC]
 0049FC98    mov         eax,dword ptr [ecx+8]
 0049FC9B    mov         dword ptr [ebp-8C],eax
 0049FCA1    xor         edx,edx
 0049FCA3    mov         dword ptr [ebp-0C0],edx
 0049FCA9    mov         ecx,dword ptr [ebp-0C0]
 0049FCAF    mov         eax,dword ptr [ebp-8C]
 0049FCB5    cmp         ecx,eax
>0049FCB7    jge         0049FE39
 0049FCBD    mov         edx,dword ptr [ebp-0C0]
 0049FCC3    mov         eax,dword ptr [ebp-0BC]
 0049FCC9    call        TList.Get
 0049FCCE    mov         dword ptr [ebp-0C4],eax
 0049FCD4    mov         word ptr [ebp-6C],8
 0049FCDA    push        0C
 0049FCDC    call        0066EAE4
 0049FCE1    pop         ecx
 0049FCE2    mov         dword ptr [ebp-0C],eax
 0049FCE5    test        eax,eax
>0049FCE7    je          0049FD17
 0049FCE9    mov         word ptr [ebp-6C],20
 0049FCEF    mov         eax,dword ptr [ebp-0C]
 0049FCF2    call        00401EA8
 0049FCF7    inc         dword ptr [ebp-60]
 0049FCFA    mov         eax,dword ptr [ebp-0C]
 0049FCFD    add         eax,4
 0049FD00    call        00401EA8
 0049FD05    inc         dword ptr [ebp-60]
 0049FD08    add         dword ptr [ebp-60],0FFFFFFFE
 0049FD0C    mov         word ptr [ebp-6C],14
 0049FD12    mov         edx,dword ptr [ebp-0C]
>0049FD15    jmp         0049FD1A
 0049FD17    mov         edx,dword ptr [ebp-0C]
 0049FD1A    mov         dword ptr [ebp-0A0],edx
 0049FD20    lea         edx,[ebp-4]
 0049FD23    mov         eax,dword ptr [ebp-0A0]
 0049FD29    call        0067DCD0
 0049FD2E    mov         eax,dword ptr [ebp-0A0]
 0049FD34    add         eax,4
 0049FD37    mov         edx,dword ptr [ebp-0C4]
 0049FD3D    call        0067DCD0
 0049FD42    mov         word ptr [ebp-6C],38
 0049FD48    lea         eax,[ebp-14]
 0049FD4B    call        00401EA8
 0049FD50    push        eax
 0049FD51    inc         dword ptr [ebp-60]
 0049FD54    mov         edx,6BEA66
 0049FD59    lea         eax,[ebp-10]
 0049FD5C    call        0067DAB4
 0049FD61    inc         dword ptr [ebp-60]
 0049FD64    lea         edx,[ebp-10]
 0049FD67    mov         eax,dword ptr [ebp-0AC]
 0049FD6D    add         eax,0A
 0049FD70    pop         ecx
 0049FD71    call        0067DCF8
 0049FD76    lea         edx,[ebp-14]
 0049FD79    push        edx
 0049FD7A    lea         eax,[ebp-8]
 0049FD7D    call        00401EA8
 0049FD82    mov         ecx,eax
 0049FD84    inc         dword ptr [ebp-60]
 0049FD87    mov         edx,dword ptr [ebp-0C4]
 0049FD8D    add         edx,4
 0049FD90    pop         eax
 0049FD91    call        0067DCF8
 0049FD96    dec         dword ptr [ebp-60]
 0049FD99    lea         eax,[ebp-14]
 0049FD9C    mov         edx,2
 0049FDA1    call        0067DCA0
 0049FDA6    dec         dword ptr [ebp-60]
 0049FDA9    lea         eax,[ebp-10]
 0049FDAC    mov         edx,2
 0049FDB1    call        0067DCA0
 0049FDB6    mov         word ptr [ebp-6C],2C
 0049FDBC    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 0049FDC2    mov         eax,dword ptr [ecx]
 0049FDC4    mov         ecx,dword ptr [ebp-8]
 0049FDC7    mov         edx,dword ptr [ebp-0A4]
 0049FDCD    call        0040E2BC
 0049FDD2    mov         dword ptr [ebp-0C8],eax
 0049FDD8    mov         eax,dword ptr [ebp-0C8]
 0049FDDE    test        eax,eax
>0049FDE0    je          0049FDED
 0049FDE2    mov         edx,dword ptr [ebp-0C8]
 0049FDE8    mov         ecx,dword ptr [edx+6]
>0049FDEB    jmp         0049FDEF
 0049FDED    xor         ecx,ecx
 0049FDEF    mov         eax,dword ptr [ebp-0A0]
 0049FDF5    mov         dword ptr [eax+8],ecx
 0049FDF8    mov         edx,dword ptr [ebp-0A0]
 0049FDFE    mov         eax,dword ptr [ebp-84]
 0049FE04    call        TList.Add
 0049FE09    dec         dword ptr [ebp-60]
 0049FE0C    lea         eax,[ebp-8]
 0049FE0F    mov         edx,2
 0049FE14    call        0067DCA0
 0049FE19    mov         word ptr [ebp-6C],8
 0049FE1F    inc         dword ptr [ebp-0C0]
 0049FE25    mov         ecx,dword ptr [ebp-0C0]
 0049FE2B    mov         eax,dword ptr [ebp-8C]
 0049FE31    cmp         ecx,eax
>0049FE33    jl          0049FCBD
 0049FE39    mov         edx,dword ptr [ebp-0AC]
 0049FE3F    mov         ecx,dword ptr [edx+1A]
 0049FE42    mov         eax,dword ptr [ecx+8]
 0049FE45    mov         dword ptr [ebp-94],eax
 0049FE4B    xor         edx,edx
 0049FE4D    mov         dword ptr [ebp-0CC],edx
 0049FE53    mov         word ptr [ebp-6C],8
 0049FE59    mov         ecx,dword ptr [ebp-0CC]
 0049FE5F    mov         eax,dword ptr [ebp-94]
 0049FE65    cmp         ecx,eax
>0049FE67    jge         004A0643
 0049FE6D    mov         edx,dword ptr [ebp-0AC]
 0049FE73    mov         eax,dword ptr [edx+1A]
 0049FE76    mov         edx,dword ptr [ebp-0CC]
 0049FE7C    call        TList.Get
 0049FE81    mov         dword ptr [ebp-0D0],eax
 0049FE87    mov         word ptr [ebp-6C],8
 0049FE8D    mov         ecx,dword ptr [ebp-0D0]
 0049FE93    mov         eax,dword ptr [ecx+0A]
 0049FE96    mov         edx,dword ptr [eax+8]
 0049FE99    test        edx,edx
>0049FE9B    je          004A0629
 0049FEA1    mov         ecx,dword ptr [ebp-0D0]
 0049FEA7    mov         eax,dword ptr [ecx+0A]
 0049FEAA    mov         dword ptr [ebp-0D4],eax
 0049FEB0    mov         edx,dword ptr [ebp-0D4]
 0049FEB6    mov         ecx,dword ptr [edx+8]
 0049FEB9    mov         dword ptr [ebp-8C],ecx
 0049FEBF    xor         eax,eax
 0049FEC1    mov         dword ptr [ebp-0D8],eax
 0049FEC7    mov         edx,dword ptr [ebp-0D8]
 0049FECD    mov         ecx,dword ptr [ebp-8C]
 0049FED3    cmp         edx,ecx
>0049FED5    jge         004A0629
 0049FEDB    mov         eax,dword ptr [ebp-0A4]
 0049FEE1    mov         dword ptr [ebp-0A8],eax
 0049FEE7    mov         edx,dword ptr [ebp-0D8]
 0049FEED    mov         eax,dword ptr [ebp-0D4]
 0049FEF3    call        TList.Get
 0049FEF8    mov         dword ptr [ebp-0DC],eax
 0049FEFE    mov         word ptr [ebp-6C],8
 0049FF04    push        0C
 0049FF06    call        0066EAE4
 0049FF0B    pop         ecx
 0049FF0C    mov         dword ptr [ebp-1C],eax
 0049FF0F    test        eax,eax
>0049FF11    je          0049FF41
 0049FF13    mov         word ptr [ebp-6C],50
 0049FF19    mov         eax,dword ptr [ebp-1C]
 0049FF1C    call        00401EA8
 0049FF21    inc         dword ptr [ebp-60]
 0049FF24    mov         eax,dword ptr [ebp-1C]
 0049FF27    add         eax,4
 0049FF2A    call        00401EA8
 0049FF2F    inc         dword ptr [ebp-60]
 0049FF32    add         dword ptr [ebp-60],0FFFFFFFE
 0049FF36    mov         word ptr [ebp-6C],44
 0049FF3C    mov         edx,dword ptr [ebp-1C]
>0049FF3F    jmp         0049FF44
 0049FF41    mov         edx,dword ptr [ebp-1C]
 0049FF44    mov         dword ptr [ebp-0A0],edx
 0049FF4A    mov         edx,dword ptr [ebp-0D0]
 0049FF50    add         edx,2
 0049FF53    mov         eax,dword ptr [ebp-0A0]
 0049FF59    call        0067DCD0
 0049FF5E    mov         eax,dword ptr [ebp-0A0]
 0049FF64    add         eax,4
 0049FF67    mov         edx,dword ptr [ebp-0DC]
 0049FF6D    call        0067DCD0
 0049FF72    mov         word ptr [ebp-6C],68
 0049FF78    mov         edx,6BEA68
 0049FF7D    lea         eax,[ebp-18]
 0049FF80    call        0067DAB4
 0049FF85    inc         dword ptr [ebp-60]
 0049FF88    mov         word ptr [ebp-6C],5C
 0049FF8E    mov         word ptr [ebp-6C],74
 0049FF94    mov         edx,6BEA69
 0049FF99    lea         eax,[ebp-20]
 0049FF9C    call        0067DAB4
 0049FFA1    inc         dword ptr [ebp-60]
 0049FFA4    mov         edx,dword ptr [eax]
 0049FFA6    mov         eax,dword ptr [ebp-0DC]
 0049FFAC    mov         eax,dword ptr [eax]
 0049FFAE    call        SameText
 0049FFB3    push        eax
 0049FFB4    dec         dword ptr [ebp-60]
 0049FFB7    lea         eax,[ebp-20]
 0049FFBA    mov         edx,2
 0049FFBF    call        0067DCA0
 0049FFC4    pop         ecx
 0049FFC5    test        cl,cl
>0049FFC7    je          004A0517
 0049FFCD    mov         word ptr [ebp-6C],8C
 0049FFD3    mov         edx,6BEA70
 0049FFD8    lea         eax,[ebp-24]
 0049FFDB    call        0067DAB4
 0049FFE0    inc         dword ptr [ebp-60]
 0049FFE3    lea         edx,[ebp-24]
 0049FFE6    mov         eax,dword ptr [ebp-0DC]
 0049FFEC    add         eax,4
 0049FFEF    call        0067DEF4
 0049FFF4    mov         dword ptr [ebp-0E0],eax
 0049FFFA    dec         dword ptr [ebp-60]
 0049FFFD    lea         eax,[ebp-24]
 004A0000    mov         edx,2
 004A0005    call        0067DCA0
 004A000A    mov         word ptr [ebp-6C],80
 004A0010    mov         ecx,dword ptr [ebp-0E0]
 004A0016    test        ecx,ecx
>004A0018    je          004A0342
 004A001E    mov         word ptr [ebp-6C],0A4
 004A0024    lea         eax,[ebp-28]
 004A0027    call        00401EA8
 004A002C    push        eax
 004A002D    inc         dword ptr [ebp-60]
 004A0030    mov         ecx,dword ptr [ebp-0E0]
 004A0036    dec         ecx
 004A0037    mov         eax,dword ptr [ebp-0DC]
 004A003D    add         eax,4
 004A0040    mov         edx,1
 004A0045    call        0067E0BC
 004A004A    mov         word ptr [ebp-6C],98
 004A0050    mov         word ptr [ebp-6C],0B0
 004A0056    lea         eax,[ebp-2C]
 004A0059    call        00401EA8
 004A005E    push        eax
 004A005F    inc         dword ptr [ebp-60]
 004A0062    mov         eax,dword ptr [ebp-0DC]
 004A0068    add         eax,4
 004A006B    call        00405290
 004A0070    mov         ecx,eax
 004A0072    mov         edx,dword ptr [ebp-0E0]
 004A0078    sub         ecx,edx
 004A007A    mov         edx,dword ptr [ebp-0E0]
 004A0080    inc         edx
 004A0081    mov         eax,dword ptr [ebp-0DC]
 004A0087    add         eax,4
 004A008A    call        0067E0BC
 004A008F    mov         word ptr [ebp-6C],98
 004A0095    mov         ecx,dword ptr [ebp-80]
 004A0098    mov         eax,dword ptr [ecx+0D]
 004A009B    mov         edx,dword ptr [eax+8]
 004A009E    mov         dword ptr [ebp-9C],edx
 004A00A4    xor         ecx,ecx
 004A00A6    mov         dword ptr [ebp-0E4],ecx
 004A00AC    mov         eax,dword ptr [ebp-0E4]
 004A00B2    mov         edx,dword ptr [ebp-9C]
 004A00B8    cmp         eax,edx
>004A00BA    jge         004A0317
 004A00C0    mov         ecx,dword ptr [ebp-80]
 004A00C3    mov         eax,dword ptr [ecx+0D]
 004A00C6    mov         edx,dword ptr [ebp-0E4]
 004A00CC    call        TList.Get
 004A00D1    mov         dword ptr [ebp-0E8],eax
 004A00D7    mov         word ptr [ebp-6C],98
 004A00DD    mov         ecx,dword ptr [ebp-0E8]
 004A00E3    mov         eax,dword ptr [ecx+6]
 004A00E6    mov         edx,dword ptr [ebp-28]
 004A00E9    call        SameText
 004A00EE    test        al,al
>004A00F0    je          004A02FD
 004A00F6    mov         eax,dword ptr [ebp-0E8]
 004A00FC    add         eax,0A
 004A00FF    call        00535E90
 004A0104    mov         dword ptr [ebp-0B0],eax
 004A010A    mov         eax,dword ptr [ebp-0B0]
 004A0110    call        00531EE8
 004A0115    test        al,al
>004A0117    je          004A012F
 004A0119    mov         eax,dword ptr [ebp-0B0]
 004A011F    call        005312C8
 004A0124    mov         edx,dword ptr ds:[6941CC];0x0 gvar_006941CC
 004A012A    mov         ecx,dword ptr [edx+eax*4]
>004A012D    jmp         004A0131
 004A012F    xor         ecx,ecx
 004A0131    mov         dword ptr [ebp-0A8],ecx
 004A0137    mov         eax,dword ptr [ebp-0E8]
 004A013D    mov         edx,dword ptr [eax+1A]
 004A0140    mov         eax,dword ptr [edx+8]
 004A0143    mov         dword ptr [ebp-98],eax
 004A0149    xor         edx,edx
 004A014B    mov         dword ptr [ebp-0EC],edx
 004A0151    mov         ecx,dword ptr [ebp-0EC]
 004A0157    mov         eax,dword ptr [ebp-98]
 004A015D    cmp         ecx,eax
>004A015F    jge         004A0317
 004A0165    mov         edx,dword ptr [ebp-0E8]
 004A016B    mov         eax,dword ptr [edx+1A]
 004A016E    mov         edx,dword ptr [ebp-0EC]
 004A0174    call        TList.Get
 004A0179    mov         dword ptr [ebp-0F0],eax
 004A017F    mov         word ptr [ebp-6C],98
 004A0185    mov         ecx,dword ptr [ebp-0F0]
 004A018B    mov         eax,dword ptr [ecx+2]
 004A018E    mov         edx,dword ptr [ebp-2C]
 004A0191    call        SameText
 004A0196    test        al,al
>004A0198    je          004A02E1
 004A019E    mov         ecx,dword ptr [ebp-0F0]
 004A01A4    mov         eax,dword ptr [ecx+0A]
 004A01A7    mov         dword ptr [ebp-0F4],eax
 004A01AD    mov         edx,dword ptr [ebp-0F4]
 004A01B3    mov         ecx,dword ptr [edx+8]
 004A01B6    mov         dword ptr [ebp-90],ecx
 004A01BC    xor         eax,eax
 004A01BE    mov         dword ptr [ebp-0F8],eax
 004A01C4    mov         edx,dword ptr [ebp-0F8]
 004A01CA    mov         ecx,dword ptr [ebp-90]
 004A01D0    cmp         edx,ecx
>004A01D2    jge         004A0317
 004A01D8    mov         edx,dword ptr [ebp-0F8]
 004A01DE    mov         eax,dword ptr [ebp-0F4]
 004A01E4    call        TList.Get
 004A01E9    mov         dword ptr [ebp-0FC],eax
 004A01EF    mov         word ptr [ebp-6C],98
 004A01F5    mov         word ptr [ebp-6C],0BC
 004A01FB    mov         edx,6BEA72
 004A0200    lea         eax,[ebp-30]
 004A0203    call        0067DAB4
 004A0208    inc         dword ptr [ebp-60]
 004A020B    mov         edx,dword ptr [eax]
 004A020D    mov         eax,dword ptr [ebp-0FC]
 004A0213    mov         eax,dword ptr [eax]
 004A0215    call        SameText
 004A021A    push        eax
 004A021B    dec         dword ptr [ebp-60]
 004A021E    lea         eax,[ebp-30]
 004A0221    mov         edx,2
 004A0226    call        0067DCA0
 004A022B    pop         ecx
 004A022C    test        cl,cl
>004A022E    je          004A02C5
 004A0234    mov         word ptr [ebp-6C],0C8
 004A023A    lea         eax,[ebp-38]
 004A023D    call        00401EA8
 004A0242    push        eax
 004A0243    inc         dword ptr [ebp-60]
 004A0246    mov         edx,6BEA7C
 004A024B    lea         eax,[ebp-34]
 004A024E    call        0067DAB4
 004A0253    inc         dword ptr [ebp-60]
 004A0256    lea         edx,[ebp-34]
 004A0259    mov         eax,dword ptr [ebp-0E8]
 004A025F    add         eax,0A
 004A0262    pop         ecx
 004A0263    call        0067DCF8
 004A0268    lea         edx,[ebp-38]
 004A026B    push        edx
 004A026C    lea         eax,[ebp-3C]
 004A026F    call        00401EA8
 004A0274    mov         ecx,eax
 004A0276    inc         dword ptr [ebp-60]
 004A0279    mov         edx,dword ptr [ebp-0FC]
 004A027F    add         edx,4
 004A0282    pop         eax
 004A0283    call        0067DCF8
 004A0288    lea         edx,[ebp-3C]
 004A028B    lea         eax,[ebp-18]
 004A028E    call        0067DCD0
 004A0293    dec         dword ptr [ebp-60]
 004A0296    lea         eax,[ebp-3C]
 004A0299    mov         edx,2
 004A029E    call        0067DCA0
 004A02A3    dec         dword ptr [ebp-60]
 004A02A6    lea         eax,[ebp-38]
 004A02A9    mov         edx,2
 004A02AE    call        0067DCA0
 004A02B3    dec         dword ptr [ebp-60]
 004A02B6    lea         eax,[ebp-34]
 004A02B9    mov         edx,2
 004A02BE    call        0067DCA0
>004A02C3    jmp         004A0317
 004A02C5    inc         dword ptr [ebp-0F8]
 004A02CB    mov         ecx,dword ptr [ebp-0F8]
 004A02D1    mov         eax,dword ptr [ebp-90]
 004A02D7    cmp         ecx,eax
>004A02D9    jl          004A01D8
>004A02DF    jmp         004A0317
 004A02E1    inc         dword ptr [ebp-0EC]
 004A02E7    mov         edx,dword ptr [ebp-0EC]
 004A02ED    mov         ecx,dword ptr [ebp-98]
 004A02F3    cmp         edx,ecx
>004A02F5    jl          004A0165
>004A02FB    jmp         004A0317
 004A02FD    inc         dword ptr [ebp-0E4]
 004A0303    mov         eax,dword ptr [ebp-0E4]
 004A0309    mov         edx,dword ptr [ebp-9C]
 004A030F    cmp         eax,edx
>004A0311    jl          004A00C0
 004A0317    dec         dword ptr [ebp-60]
 004A031A    lea         eax,[ebp-2C]
 004A031D    mov         edx,2
 004A0322    call        0067DCA0
 004A0327    dec         dword ptr [ebp-60]
 004A032A    lea         eax,[ebp-28]
 004A032D    mov         edx,2
 004A0332    call        0067DCA0
 004A0337    mov         word ptr [ebp-6C],80
>004A033D    jmp         004A050C
 004A0342    mov         ecx,dword ptr [ebp-0AC]
 004A0348    mov         eax,dword ptr [ecx+1A]
 004A034B    mov         edx,dword ptr [eax+8]
 004A034E    mov         dword ptr [ebp-94],edx
 004A0354    xor         ecx,ecx
 004A0356    mov         dword ptr [ebp-100],ecx
 004A035C    mov         eax,dword ptr [ebp-100]
 004A0362    mov         edx,dword ptr [ebp-94]
 004A0368    cmp         eax,edx
>004A036A    jge         004A050C
 004A0370    mov         ecx,dword ptr [ebp-0AC]
 004A0376    mov         eax,dword ptr [ecx+1A]
 004A0379    mov         edx,dword ptr [ebp-100]
 004A037F    call        TList.Get
 004A0384    mov         dword ptr [ebp-104],eax
 004A038A    mov         word ptr [ebp-6C],80
 004A0390    mov         ecx,dword ptr [ebp-0DC]
 004A0396    mov         edx,dword ptr [ecx+4]
 004A0399    mov         eax,dword ptr [ebp-104]
 004A039F    mov         eax,dword ptr [eax+2]
 004A03A2    call        SameText
 004A03A7    test        al,al
>004A03A9    je          004A04F2
 004A03AF    mov         edx,dword ptr [ebp-104]
 004A03B5    mov         ecx,dword ptr [edx+0A]
 004A03B8    mov         dword ptr [ebp-108],ecx
 004A03BE    mov         eax,dword ptr [ebp-108]
 004A03C4    mov         edx,dword ptr [eax+8]
 004A03C7    mov         dword ptr [ebp-90],edx
 004A03CD    xor         ecx,ecx
 004A03CF    mov         dword ptr [ebp-10C],ecx
 004A03D5    mov         eax,dword ptr [ebp-10C]
 004A03DB    mov         edx,dword ptr [ebp-90]
 004A03E1    cmp         eax,edx
>004A03E3    jge         004A050C
 004A03E9    mov         edx,dword ptr [ebp-10C]
 004A03EF    mov         eax,dword ptr [ebp-108]
 004A03F5    call        TList.Get
 004A03FA    mov         dword ptr [ebp-110],eax
 004A0400    mov         word ptr [ebp-6C],80
 004A0406    mov         word ptr [ebp-6C],0D4
 004A040C    mov         edx,6BEA7E
 004A0411    lea         eax,[ebp-40]
 004A0414    call        0067DAB4
 004A0419    inc         dword ptr [ebp-60]
 004A041C    mov         edx,dword ptr [eax]
 004A041E    mov         eax,dword ptr [ebp-110]
 004A0424    mov         eax,dword ptr [eax]
 004A0426    call        SameText
 004A042B    push        eax
 004A042C    dec         dword ptr [ebp-60]
 004A042F    lea         eax,[ebp-40]
 004A0432    mov         edx,2
 004A0437    call        0067DCA0
 004A043C    pop         ecx
 004A043D    test        cl,cl
>004A043F    je          004A04D6
 004A0445    mov         word ptr [ebp-6C],0E0
 004A044B    lea         eax,[ebp-48]
 004A044E    call        00401EA8
 004A0453    push        eax
 004A0454    inc         dword ptr [ebp-60]
 004A0457    mov         edx,6BEA88
 004A045C    lea         eax,[ebp-44]
 004A045F    call        0067DAB4
 004A0464    inc         dword ptr [ebp-60]
 004A0467    lea         edx,[ebp-44]
 004A046A    mov         eax,dword ptr [ebp-0AC]
 004A0470    add         eax,0A
 004A0473    pop         ecx
 004A0474    call        0067DCF8
 004A0479    lea         edx,[ebp-48]
 004A047C    push        edx
 004A047D    lea         eax,[ebp-4C]
 004A0480    call        00401EA8
 004A0485    mov         ecx,eax
 004A0487    inc         dword ptr [ebp-60]
 004A048A    mov         edx,dword ptr [ebp-110]
 004A0490    add         edx,4
 004A0493    pop         eax
 004A0494    call        0067DCF8
 004A0499    lea         edx,[ebp-4C]
 004A049C    lea         eax,[ebp-18]
 004A049F    call        0067DCD0
 004A04A4    dec         dword ptr [ebp-60]
 004A04A7    lea         eax,[ebp-4C]
 004A04AA    mov         edx,2
 004A04AF    call        0067DCA0
 004A04B4    dec         dword ptr [ebp-60]
 004A04B7    lea         eax,[ebp-48]
 004A04BA    mov         edx,2
 004A04BF    call        0067DCA0
 004A04C4    dec         dword ptr [ebp-60]
 004A04C7    lea         eax,[ebp-44]
 004A04CA    mov         edx,2
 004A04CF    call        0067DCA0
>004A04D4    jmp         004A050C
 004A04D6    inc         dword ptr [ebp-10C]
 004A04DC    mov         ecx,dword ptr [ebp-10C]
 004A04E2    mov         eax,dword ptr [ebp-90]
 004A04E8    cmp         ecx,eax
>004A04EA    jl          004A03E9
>004A04F0    jmp         004A050C
 004A04F2    inc         dword ptr [ebp-100]
 004A04F8    mov         edx,dword ptr [ebp-100]
 004A04FE    mov         ecx,dword ptr [ebp-94]
 004A0504    cmp         edx,ecx
>004A0506    jl          004A0370
 004A050C    mov         word ptr [ebp-6C],5C
>004A0512    jmp         004A05A6
 004A0517    mov         word ptr [ebp-6C],0EC
 004A051D    lea         eax,[ebp-54]
 004A0520    call        00401EA8
 004A0525    push        eax
 004A0526    inc         dword ptr [ebp-60]
 004A0529    mov         edx,6BEA8A
 004A052E    lea         eax,[ebp-50]
 004A0531    call        0067DAB4
 004A0536    inc         dword ptr [ebp-60]
 004A0539    lea         edx,[ebp-50]
 004A053C    mov         eax,dword ptr [ebp-0AC]
 004A0542    add         eax,0A
 004A0545    pop         ecx
 004A0546    call        0067DCF8
 004A054B    lea         edx,[ebp-54]
 004A054E    push        edx
 004A054F    lea         eax,[ebp-58]
 004A0552    call        00401EA8
 004A0557    mov         ecx,eax
 004A0559    inc         dword ptr [ebp-60]
 004A055C    mov         edx,dword ptr [ebp-0DC]
 004A0562    add         edx,4
 004A0565    pop         eax
 004A0566    call        0067DCF8
 004A056B    lea         edx,[ebp-58]
 004A056E    lea         eax,[ebp-18]
 004A0571    call        0067DCD0
 004A0576    dec         dword ptr [ebp-60]
 004A0579    lea         eax,[ebp-58]
 004A057C    mov         edx,2
 004A0581    call        0067DCA0
 004A0586    dec         dword ptr [ebp-60]
 004A0589    lea         eax,[ebp-54]
 004A058C    mov         edx,2
 004A0591    call        0067DCA0
 004A0596    dec         dword ptr [ebp-60]
 004A0599    lea         eax,[ebp-50]
 004A059C    mov         edx,2
 004A05A1    call        0067DCA0
 004A05A6    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004A05AC    mov         eax,dword ptr [ecx]
 004A05AE    mov         ecx,dword ptr [ebp-18]
 004A05B1    mov         edx,dword ptr [ebp-0A8]
 004A05B7    call        0040E2BC
 004A05BC    mov         dword ptr [ebp-114],eax
 004A05C2    mov         word ptr [ebp-6C],5C
 004A05C8    mov         eax,dword ptr [ebp-114]
 004A05CE    test        eax,eax
>004A05D0    je          004A05DD
 004A05D2    mov         edx,dword ptr [ebp-114]
 004A05D8    mov         ecx,dword ptr [edx+6]
>004A05DB    jmp         004A05DF
 004A05DD    xor         ecx,ecx
 004A05DF    mov         eax,dword ptr [ebp-0A0]
 004A05E5    mov         dword ptr [eax+8],ecx
 004A05E8    mov         edx,dword ptr [ebp-0A0]
 004A05EE    mov         eax,dword ptr [ebp-84]
 004A05F4    call        TList.Add
 004A05F9    dec         dword ptr [ebp-60]
 004A05FC    lea         eax,[ebp-18]
 004A05FF    mov         edx,2
 004A0604    call        0067DCA0
 004A0609    mov         word ptr [ebp-6C],8
 004A060F    inc         dword ptr [ebp-0D8]
 004A0615    mov         ecx,dword ptr [ebp-0D8]
 004A061B    mov         eax,dword ptr [ebp-8C]
 004A0621    cmp         ecx,eax
>004A0623    jl          0049FEDB
 004A0629    inc         dword ptr [ebp-0CC]
 004A062F    mov         edx,dword ptr [ebp-0CC]
 004A0635    mov         ecx,dword ptr [ebp-94]
 004A063B    cmp         edx,ecx
>004A063D    jl          0049FE6D
 004A0643    dec         dword ptr [ebp-60]
 004A0646    lea         eax,[ebp-4]
 004A0649    mov         edx,2
 004A064E    call        0067DCA0
 004A0653    mov         ecx,dword ptr [ebp-7C]
 004A0656    mov         dword ptr fs:[0],ecx
 004A065D    mov         esp,ebp
 004A065F    pop         ebp
 004A0660    ret
end;*}

//004A0680
{*function sub_004A0680(?:IdrDfmReader; ?:?; ?:?):?;
begin
 004A0680    push        ebp
 004A0681    mov         ebp,esp
 004A0683    add         esp,0FFFFFFD0
 004A0686    mov         byte ptr [ebp-8],dl
 004A0689    test        dl,dl
>004A068B    jle         004A0692
 004A068D    call        0067EF6C
 004A0692    mov         dword ptr [ebp-30],ecx
 004A0695    mov         byte ptr [ebp-29],dl
 004A0698    mov         dword ptr [ebp-4],eax
 004A069B    mov         eax,6C058C
 004A06A0    call        0066FECC
 004A06A5    mov         word ptr [ebp-18],8
 004A06AB    push        dword ptr [ebp+8]
 004A06AE    mov         ecx,dword ptr [ebp-30]
 004A06B1    xor         edx,edx
 004A06B3    mov         eax,dword ptr [ebp-4]
 004A06B6    call        004A06E0
 004A06BB    add         dword ptr [ebp-0C],4
 004A06BF    mov         edx,dword ptr [ebp-28]
 004A06C2    mov         dword ptr fs:[0],edx
 004A06C9    mov         eax,dword ptr [ebp-4]
 004A06CC    mov         dl,byte ptr [ebp-29]
 004A06CF    test        dl,dl
>004A06D1    je          004A06D8
 004A06D3    call        0067EF79
 004A06D8    mov         esp,ebp
 004A06DA    pop         ebp
 004A06DB    ret         4
end;*}

//004A06E0
{*procedure sub_004A06E0(?:?; ?:?; ?:?);
begin
 004A06E0    push        ebp
 004A06E1    mov         ebp,esp
 004A06E3    add         esp,0FFFFFFD0
 004A06E6    mov         byte ptr [ebp-8],dl
 004A06E9    test        dl,dl
>004A06EB    jle         004A06F2
 004A06ED    call        0067EF6C
 004A06F2    mov         dword ptr [ebp-30],ecx
 004A06F5    mov         byte ptr [ebp-29],dl
 004A06F8    mov         dword ptr [ebp-4],eax
 004A06FB    mov         eax,6C13B8
 004A0700    call        0066FECC
 004A0705    mov         word ptr [ebp-18],8
 004A070B    push        dword ptr [ebp+8]
 004A070E    mov         ecx,dword ptr [ebp-30]
 004A0711    xor         edx,edx
 004A0713    mov         eax,dword ptr [ebp-4]
 004A0716    call        TFiler.Create
 004A071B    add         dword ptr [ebp-0C],2
 004A071F    mov         eax,dword ptr [ebp-4]
 004A0722    add         eax,70
 004A0725    call        00401EA8
 004A072A    inc         dword ptr [ebp-0C]
 004A072D    mov         edx,dword ptr [ebp-28]
 004A0730    mov         dword ptr fs:[0],edx
 004A0737    mov         eax,dword ptr [ebp-4]
 004A073A    mov         dl,byte ptr [ebp-29]
 004A073D    test        dl,dl
>004A073F    je          004A0746
 004A0741    call        0067EF79
 004A0746    mov         esp,ebp
 004A0748    pop         ebp
 004A0749    ret         4
end;*}

//004A0768
{*procedure sub_004A0768(?:?);
begin
 004A0768    push        ebp
 004A0769    mov         ebp,esp
 004A076B    add         esp,0FFFFFFD0
 004A076E    mov         byte ptr [ebp-8],dl
 004A0771    test        dl,dl
>004A0773    jle         004A077A
 004A0775    call        0067EF6C
 004A077A    mov         dword ptr [ebp-30],ecx
 004A077D    mov         byte ptr [ebp-29],dl
 004A0780    mov         dword ptr [ebp-4],eax
 004A0783    mov         eax,6C05B0
 004A0788    call        0066FECC
 004A078D    mov         word ptr [ebp-18],8
 004A0793    mov         ecx,dword ptr [ebp-30]
 004A0796    xor         edx,edx
 004A0798    mov         eax,dword ptr [ebp-4]
 004A079B    call        006461DC
 004A07A0    add         dword ptr [ebp-0C],3
 004A07A4    mov         edx,dword ptr [ebp-4]
 004A07A7    xor         ecx,ecx
 004A07A9    mov         dword ptr [edx+0C],ecx;TComponentEvents.?fC:dword
 004A07AC    mov         dl,1
 004A07AE    mov         eax,[006428B0];TStringList
 004A07B3    call        0040BB0C
 004A07B8    mov         ecx,dword ptr [ebp-4]
 004A07BB    mov         dword ptr [ecx+10],eax
 004A07BE    mov         eax,dword ptr [ebp-4]
 004A07C1    mov         eax,dword ptr [eax+10];TComponentEvents.?f10:dword
 004A07C4    mov         dl,1
 004A07C6    call        0064859C
 004A07CB    mov         ecx,dword ptr [ebp-28]
 004A07CE    mov         dword ptr fs:[0],ecx
 004A07D5    mov         eax,dword ptr [ebp-4]
 004A07D8    mov         dl,byte ptr [ebp-29]
 004A07DB    test        dl,dl
>004A07DD    je          004A07E4
 004A07DF    call        0067EF79
 004A07E4    mov         esp,ebp
 004A07E6    pop         ebp
 004A07E7    ret
end;*}

//004A0808
destructor TComponentEvents.Destroy;
begin
{*
 004A0808    push        ebp
 004A0809    mov         ebp,esp
 004A080B    add         esp,0FFFFFFCC
 004A080E    call        0067EF81
 004A0813    mov         byte ptr [ebp-31],dl
 004A0816    mov         dword ptr [ebp-4],eax
 004A0819    mov         eax,6C05E4
 004A081E    call        0066FECC
 004A0823    mov         dword ptr [ebp-14],3
 004A082A    mov         dl,byte ptr [ebp-31]
 004A082D    test        dl,dl
>004A082F    jl          004A0876
 004A0831    mov         word ptr [ebp-20],8
 004A0837    mov         ecx,dword ptr [ebp-4]
 004A083A    mov         eax,dword ptr [ecx+10]
 004A083D    mov         dword ptr [ebp-0C],eax
 004A0840    mov         edx,dword ptr [ebp-0C]
 004A0843    test        edx,edx
>004A0845    je          004A0868
 004A0847    mov         ecx,dword ptr [ebp-0C]
 004A084A    mov         eax,dword ptr [ecx]
 004A084C    mov         dword ptr [ebp-8],eax
 004A084F    mov         word ptr [ebp-20],20
 004A0855    mov         edx,3
 004A085A    mov         eax,dword ptr [ebp-0C]
 004A085D    mov         ecx,dword ptr [eax]
 004A085F    call        dword ptr [ecx-4]
 004A0862    mov         word ptr [ebp-20],14
 004A0868    sub         dword ptr [ebp-14],3
 004A086C    xor         edx,edx
 004A086E    mov         eax,dword ptr [ebp-4]
 004A0871    call        TCollectionItem.Destroy
 004A0876    mov         edx,dword ptr [ebp-30]
 004A0879    mov         dword ptr fs:[0],edx
 004A0880    mov         cl,byte ptr [ebp-31]
 004A0883    test        cl,cl
>004A0885    jle         004A088F
 004A0887    mov         eax,dword ptr [ebp-4]
 004A088A    call        0067EF74
 004A088F    mov         esp,ebp
 004A0891    pop         ebp
 004A0892    ret
*}
end;

//004A0894
constructor IdrDfmForm.Create(AOwner:TComponent);
begin
{*
 004A0894    push        ebp
 004A0895    mov         ebp,esp
 004A0897    add         esp,0FFFFFFD0
 004A089A    mov         byte ptr [ebp-8],dl
 004A089D    test        dl,dl
>004A089F    jle         004A08A6
 004A08A1    call        0067EF6C
 004A08A6    mov         dword ptr [ebp-30],ecx
 004A08A9    mov         byte ptr [ebp-29],dl
 004A08AC    mov         dword ptr [ebp-4],eax
 004A08AF    mov         eax,6C0620
 004A08B4    call        0066FECC
 004A08B9    mov         word ptr [ebp-18],8
 004A08BF    mov         ecx,dword ptr [ebp-30]
 004A08C2    xor         edx,edx
 004A08C4    mov         eax,dword ptr [ebp-4]
 004A08C7    call        0040207C
 004A08CC    add         dword ptr [ebp-0C],10
 004A08D0    mov         eax,dword ptr [ebp-4]
 004A08D3    add         eax,2F0;IdrDfmForm.?f2F0:?
 004A08D8    call        00401EA8
 004A08DD    inc         dword ptr [ebp-0C]
 004A08E0    mov         eax,dword ptr [ebp-4]
 004A08E3    add         eax,2F4;IdrDfmForm.?f2F4:?
 004A08E8    call        00401EA8
 004A08ED    inc         dword ptr [ebp-0C]
 004A08F0    mov         edx,dword ptr [ebp-4]
 004A08F3    xor         ecx,ecx
 004A08F5    mov         dword ptr [edx+2FC],ecx;IdrDfmForm.?f2FC:dword
 004A08FB    mov         eax,dword ptr [ebp-4]
 004A08FE    xor         edx,edx
 004A0900    mov         dword ptr [eax+2F8],edx;IdrDfmForm.?f2F8:dword
 004A0906    xor         ecx,ecx
 004A0908    mov         dl,1
 004A090A    mov         eax,[005A26CC];TPopupMenu
 004A090F    call        TPopupMenu.Create;TPopupMenu.Create
 004A0914    mov         ecx,dword ptr [ebp-4]
 004A0917    mov         dword ptr [ecx+300],eax
 004A091D    mov         eax,dword ptr [ebp-4]
 004A0920    mov         edx,dword ptr [eax+300];IdrDfmForm.?f300:dword
 004A0926    mov         byte ptr [edx+61],0
 004A092A    mov         ecx,dword ptr [ebp-4]
 004A092D    mov         eax,dword ptr [ecx+300]
 004A0933    mov         dl,1
 004A0935    call        TMainMenu.SetAutoHotkeys
 004A093A    mov         ecx,dword ptr [ebp-4]
 004A093D    xor         eax,eax
 004A093F    mov         dword ptr [ecx+304],eax
 004A0945    mov         edx,dword ptr [ebp-4]
 004A0948    mov         byte ptr [edx+22D],1;IdrDfmForm.FKeyPreview:Boolean
 004A094F    mov         ecx,dword ptr [ebp-28]
 004A0952    mov         dword ptr fs:[0],ecx
 004A0959    mov         eax,dword ptr [ebp-4]
 004A095C    mov         dl,byte ptr [ebp-29]
 004A095F    test        dl,dl
>004A0961    je          004A0968
 004A0963    call        0067EF79
 004A0968    mov         esp,ebp
 004A096A    pop         ebp
 004A096B    ret
*}
end;

//004A0988
{*function sub_004A0988(?:?; ?:?):?;
begin
 004A0988    push        ebp
 004A0989    mov         ebp,esp
 004A098B    add         esp,0FFFFFFD0
 004A098E    mov         byte ptr [ebp-8],dl
 004A0991    test        dl,dl
>004A0993    jle         004A099A
 004A0995    call        0067EF6C
 004A099A    mov         dword ptr [ebp-30],ecx
 004A099D    mov         byte ptr [ebp-29],dl
 004A09A0    mov         dword ptr [ebp-4],eax
 004A09A3    mov         eax,6C0644
 004A09A8    call        0066FECC
 004A09AD    mov         word ptr [ebp-18],8
 004A09B3    push        dword ptr [ebp+8]
 004A09B6    mov         ecx,dword ptr [ebp-30]
 004A09B9    xor         edx,edx
 004A09BB    mov         eax,dword ptr [ebp-4]
 004A09BE    call        004614F8
 004A09C3    add         dword ptr [ebp-0C],10
 004A09C7    mov         eax,dword ptr [ebp-4]
 004A09CA    add         eax,2F0;IdrDfmForm.?f2F0:?
 004A09CF    call        00401EA8
 004A09D4    inc         dword ptr [ebp-0C]
 004A09D7    mov         eax,dword ptr [ebp-4]
 004A09DA    add         eax,2F4;IdrDfmForm.?f2F4:?
 004A09DF    call        00401EA8
 004A09E4    inc         dword ptr [ebp-0C]
 004A09E7    mov         edx,dword ptr [ebp-4]
 004A09EA    xor         ecx,ecx
 004A09EC    mov         dword ptr [edx+2FC],ecx;IdrDfmForm.?f2FC:dword
 004A09F2    mov         eax,dword ptr [ebp-4]
 004A09F5    xor         edx,edx
 004A09F7    mov         dword ptr [eax+2F8],edx;IdrDfmForm.?f2F8:dword
 004A09FD    xor         ecx,ecx
 004A09FF    mov         dl,1
 004A0A01    mov         eax,[005A26CC];TPopupMenu
 004A0A06    call        TPopupMenu.Create;TPopupMenu.Create
 004A0A0B    mov         ecx,dword ptr [ebp-4]
 004A0A0E    mov         dword ptr [ecx+300],eax
 004A0A14    mov         eax,dword ptr [ebp-4]
 004A0A17    mov         edx,dword ptr [eax+300];IdrDfmForm.?f300:dword
 004A0A1D    mov         byte ptr [edx+61],0
 004A0A21    mov         ecx,dword ptr [ebp-4]
 004A0A24    mov         eax,dword ptr [ecx+300]
 004A0A2A    mov         dl,1
 004A0A2C    call        TMainMenu.SetAutoHotkeys
 004A0A31    mov         ecx,dword ptr [ebp-4]
 004A0A34    xor         eax,eax
 004A0A36    mov         dword ptr [ecx+304],eax
 004A0A3C    mov         edx,dword ptr [ebp-4]
 004A0A3F    mov         byte ptr [edx+22D],1;IdrDfmForm.FKeyPreview:Boolean
 004A0A46    mov         ecx,dword ptr [ebp-28]
 004A0A49    mov         dword ptr fs:[0],ecx
 004A0A50    mov         eax,dword ptr [ebp-4]
 004A0A53    mov         dl,byte ptr [ebp-29]
 004A0A56    test        dl,dl
>004A0A58    je          004A0A5F
 004A0A5A    call        0067EF79
 004A0A5F    mov         esp,ebp
 004A0A61    pop         ebp
 004A0A62    ret         4
end;*}

//004A0A68
destructor IdrDfmForm.Destroy;
begin
{*
 004A0A68    push        ebp
 004A0A69    mov         ebp,esp
 004A0A6B    add         esp,0FFFFFFBC
 004A0A6E    call        0067EF81
 004A0A73    mov         byte ptr [ebp-41],dl
 004A0A76    mov         dword ptr [ebp-4],eax
 004A0A79    mov         eax,6C0698
 004A0A7E    call        0066FECC
 004A0A83    mov         dword ptr [ebp-24],12
 004A0A8A    mov         dl,byte ptr [ebp-41]
 004A0A8D    test        dl,dl
>004A0A8F    jl          004A0B9F
 004A0A95    mov         word ptr [ebp-30],8
 004A0A9B    mov         ecx,dword ptr [ebp-4]
 004A0A9E    mov         eax,dword ptr [ecx+2FC]
 004A0AA4    test        eax,eax
>004A0AA6    je          004A0ADC
 004A0AA8    mov         edx,dword ptr [ebp-4]
 004A0AAB    mov         ecx,dword ptr [edx+2FC]
 004A0AB1    mov         dword ptr [ebp-0C],ecx
 004A0AB4    mov         eax,dword ptr [ebp-0C]
 004A0AB7    test        eax,eax
>004A0AB9    je          004A0ADC
 004A0ABB    mov         edx,dword ptr [ebp-0C]
 004A0ABE    mov         ecx,dword ptr [edx]
 004A0AC0    mov         dword ptr [ebp-8],ecx
 004A0AC3    mov         word ptr [ebp-30],20
 004A0AC9    mov         edx,3
 004A0ACE    mov         eax,dword ptr [ebp-0C]
 004A0AD1    mov         ecx,dword ptr [eax]
 004A0AD3    call        dword ptr [ecx-4]
 004A0AD6    mov         word ptr [ebp-30],14
 004A0ADC    mov         eax,dword ptr [ebp-4]
 004A0ADF    xor         edx,edx
 004A0AE1    mov         dword ptr [eax+2FC],edx
 004A0AE7    mov         ecx,dword ptr [ebp-4]
 004A0AEA    mov         eax,dword ptr [ecx+300]
 004A0AF0    mov         dword ptr [ebp-14],eax
 004A0AF3    mov         edx,dword ptr [ebp-14]
 004A0AF6    test        edx,edx
>004A0AF8    je          004A0B1B
 004A0AFA    mov         ecx,dword ptr [ebp-14]
 004A0AFD    mov         eax,dword ptr [ecx]
 004A0AFF    mov         dword ptr [ebp-10],eax
 004A0B02    mov         word ptr [ebp-30],38
 004A0B08    mov         edx,3
 004A0B0D    mov         eax,dword ptr [ebp-14]
 004A0B10    mov         ecx,dword ptr [eax]
 004A0B12    call        dword ptr [ecx-4]
 004A0B15    mov         word ptr [ebp-30],2C
 004A0B1B    mov         edx,dword ptr [ebp-4]
 004A0B1E    mov         eax,dword ptr [edx+304]
 004A0B24    test        eax,eax
>004A0B26    je          004A0B5C
 004A0B28    mov         edx,dword ptr [ebp-4]
 004A0B2B    mov         ecx,dword ptr [edx+304]
 004A0B31    mov         dword ptr [ebp-1C],ecx
 004A0B34    mov         eax,dword ptr [ebp-1C]
 004A0B37    test        eax,eax
>004A0B39    je          004A0B5C
 004A0B3B    mov         edx,dword ptr [ebp-1C]
 004A0B3E    mov         ecx,dword ptr [edx]
 004A0B40    mov         dword ptr [ebp-18],ecx
 004A0B43    mov         word ptr [ebp-30],50
 004A0B49    mov         edx,3
 004A0B4E    mov         eax,dword ptr [ebp-1C]
 004A0B51    mov         ecx,dword ptr [eax]
 004A0B53    call        dword ptr [ecx-4]
 004A0B56    mov         word ptr [ebp-30],44
 004A0B5C    mov         eax,dword ptr [ebp-4]
 004A0B5F    xor         edx,edx
 004A0B61    mov         dword ptr [eax+304],edx
 004A0B67    dec         dword ptr [ebp-24]
 004A0B6A    mov         eax,dword ptr [ebp-4]
 004A0B6D    add         eax,2F4
 004A0B72    mov         edx,2
 004A0B77    call        0067DCA0
 004A0B7C    dec         dword ptr [ebp-24]
 004A0B7F    mov         eax,dword ptr [ebp-4]
 004A0B82    add         eax,2F0
 004A0B87    mov         edx,2
 004A0B8C    call        0067DCA0
 004A0B91    sub         dword ptr [ebp-24],10
 004A0B95    xor         edx,edx
 004A0B97    mov         eax,dword ptr [ebp-4]
 004A0B9A    call        0040235C
 004A0B9F    mov         ecx,dword ptr [ebp-40]
 004A0BA2    mov         dword ptr fs:[0],ecx
 004A0BA9    mov         al,byte ptr [ebp-41]
 004A0BAC    test        al,al
>004A0BAE    jle         004A0BB8
 004A0BB0    mov         eax,dword ptr [ebp-4]
 004A0BB3    call        0067EF74
 004A0BB8    mov         esp,ebp
 004A0BBA    pop         ebp
 004A0BBB    ret
*}
end;

//004A0C30
{*procedure sub_004A0C30(?:?; ?:?; ?:?);
begin
 004A0C30    push        ebp
 004A0C31    mov         ebp,esp
 004A0C33    add         esp,0FFFFFFF8
 004A0C36    mov         byte ptr [ebp-6],cl
 004A0C39    mov         byte ptr [ebp-5],dl
 004A0C3C    mov         dword ptr [ebp-4],eax
 004A0C3F    mov         cl,byte ptr [ebp-6]
 004A0C42    mov         dl,byte ptr [ebp-5]
 004A0C45    mov         eax,dword ptr [ebp-4]
 004A0C48    call        00650C04
 004A0C4D    pop         ecx
 004A0C4E    pop         ecx
 004A0C4F    pop         ebp
 004A0C50    ret
end;*}

//004A0C54
procedure sub_004A0C54;
begin
{*
 004A0C54    push        ebp
 004A0C55    mov         ebp,esp
 004A0C57    push        ecx
 004A0C58    mov         dword ptr [ebp-4],eax
 004A0C5B    mov         eax,dword ptr [ebp-4]
 004A0C5E    mov         dl,byte ptr [eax+22F];IdrDfmForm.FFormStyle:TFormStyle
 004A0C64    cmp         dl,1
>004A0C67    jne         004A0C76
 004A0C69    xor         edx,edx
 004A0C6B    mov         eax,dword ptr [ebp-4]
 004A0C6E    call        TForm.SetFormStyle
 004A0C73    pop         ecx
 004A0C74    pop         ebp
 004A0C75    ret
 004A0C76    mov         eax,dword ptr [ebp-4]
 004A0C79    call        005F8728
 004A0C7E    pop         ecx
 004A0C7F    pop         ebp
 004A0C80    ret
*}
end;

//004A0C84
{*procedure sub_004A0C84(?:?; ?:?);
begin
 004A0C84    push        ebp
 004A0C85    mov         ebp,esp
 004A0C87    add         esp,0FFFFFFF0
 004A0C8A    mov         dword ptr [ebp-8],edx
 004A0C8D    mov         dword ptr [ebp-4],eax
 004A0C90    mov         edx,dword ptr ds:[58D604];TCustomAction
 004A0C96    mov         eax,dword ptr [ebp-8]
 004A0C99    call        006708AC
 004A0C9E    mov         dword ptr [ebp-0C],eax
 004A0CA1    mov         ecx,dword ptr [ebp-0C]
 004A0CA4    test        ecx,ecx
>004A0CA6    je          004A0CBF
 004A0CA8    mov         eax,dword ptr [ebp-0C]
 004A0CAB    cmp         word ptr [eax+84],0
>004A0CB3    je          004A0CBF
 004A0CB5    xor         edx,edx
 004A0CB7    mov         eax,dword ptr [ebp-0C]
 004A0CBA    call        TOpenPicture.SetShortCut
 004A0CBF    mov         edx,dword ptr ds:[5A1ED0];TMenuItem
 004A0CC5    mov         eax,dword ptr [ebp-8]
 004A0CC8    call        006708AC
 004A0CCD    mov         dword ptr [ebp-10],eax
 004A0CD0    mov         edx,dword ptr [ebp-10]
 004A0CD3    test        edx,edx
>004A0CD5    je          004A0CEB
 004A0CD7    mov         ecx,dword ptr [ebp-10]
 004A0CDA    cmp         word ptr [ecx+60],0
>004A0CDF    je          004A0CEB
 004A0CE1    xor         edx,edx
 004A0CE3    mov         eax,dword ptr [ebp-10]
 004A0CE6    call        TMenuItem.SetShortCut
 004A0CEB    mov         esp,ebp
 004A0CED    pop         ebp
 004A0CEE    ret
end;*}

//004A0CF0
{*procedure sub_004A0CF0(?:?);
begin
 004A0CF0    push        ebp
 004A0CF1    mov         ebp,esp
 004A0CF3    add         esp,0FFFFFF90
 004A0CF6    mov         dword ptr [ebp-40],eax
 004A0CF9    mov         eax,6C075C
 004A0CFE    call        0066FECC
 004A0D03    mov         edx,dword ptr [ebp-40]
 004A0D06    mov         dword ptr [ebp-44],edx
 004A0D09    mov         ecx,dword ptr [ebp-40]
 004A0D0C    mov         dword ptr [ebp-48],ecx
 004A0D0F    mov         eax,dword ptr [ebp-48]
 004A0D12    test        eax,eax
>004A0D14    je          004A0DAB
 004A0D1A    lea         eax,[ebp-8]
 004A0D1D    call        00401EA8
 004A0D22    mov         edx,eax
 004A0D24    inc         dword ptr [ebp-20]
 004A0D27    mov         ecx,dword ptr [ebp-48]
 004A0D2A    mov         eax,dword ptr [ecx+80]
 004A0D30    call        005EFA08
 004A0D35    lea         edx,[ebp-8]
 004A0D38    push        dword ptr [edx]
 004A0D3A    mov         word ptr [ebp-2C],8
 004A0D40    mov         edx,dword ptr [ebp-40]
 004A0D43    add         edx,8
 004A0D46    lea         eax,[ebp-4]
 004A0D49    call        0067DAEC
 004A0D4E    inc         dword ptr [ebp-20]
 004A0D51    mov         edx,dword ptr [eax]
 004A0D53    mov         ecx,dword ptr [ebp-48]
 004A0D56    mov         eax,dword ptr [ebp-40]
 004A0D59    call        004A23E4
 004A0D5E    dec         dword ptr [ebp-20]
 004A0D61    lea         eax,[ebp-8]
 004A0D64    mov         edx,2
 004A0D69    call        0067DCA0
 004A0D6E    dec         dword ptr [ebp-20]
 004A0D71    lea         eax,[ebp-4]
 004A0D74    mov         edx,2
 004A0D79    call        0067DCA0
 004A0D7E    mov         ecx,dword ptr [ebp-48]
 004A0D81    mov         dword ptr [ecx+0D0],4A101C
 004A0D8B    mov         eax,dword ptr [ebp-48]
 004A0D8E    mov         edx,dword ptr [ebp-40]
 004A0D91    mov         dword ptr [eax+0D4],edx
 004A0D97    mov         ecx,dword ptr [ebp-48]
 004A0D9A    mov         eax,dword ptr [ecx+7C]
 004A0D9D    test        eax,eax
>004A0D9F    je          004A0DAB
 004A0DA1    xor         edx,edx
 004A0DA3    mov         eax,dword ptr [ebp-48]
 004A0DA6    call        TCCalendar.SetPopupMenu
 004A0DAB    mov         edx,dword ptr ds:[6433E4];TBasicAction
 004A0DB1    mov         eax,dword ptr [ebp-44]
 004A0DB4    call        006708AC
 004A0DB9    mov         dword ptr [ebp-4C],eax
 004A0DBC    mov         edx,dword ptr [ebp-4C]
 004A0DBF    test        edx,edx
>004A0DC1    je          004A0DE0
 004A0DC3    mov         dword ptr [ebp-54],4A10D4
 004A0DCA    mov         ecx,dword ptr [ebp-40]
 004A0DCD    mov         dword ptr [ebp-50],ecx
 004A0DD0    lea         eax,[ebp-54]
 004A0DD3    push        dword ptr [eax+4]
 004A0DD6    push        dword ptr [eax]
 004A0DD8    mov         eax,dword ptr [ebp-4C]
 004A0DDB    mov         edx,dword ptr [eax]
 004A0DDD    call        dword ptr [edx+34]
 004A0DE0    mov         edx,dword ptr [ebp-44]
 004A0DE3    mov         eax,dword ptr [ebp-40]
 004A0DE6    call        004A0C84
 004A0DEB    xor         ecx,ecx
 004A0DED    mov         dword ptr [ebp-58],ecx
>004A0DF0    jmp         004A0FF9
 004A0DF5    mov         edx,dword ptr [ebp-58]
 004A0DF8    mov         eax,dword ptr [ebp-40]
 004A0DFB    call        00650B0C
 004A0E00    mov         dword ptr [ebp-44],eax
 004A0E03    mov         word ptr [ebp-2C],20
 004A0E09    mov         edx,dword ptr [ebp-44]
 004A0E0C    add         edx,8
 004A0E0F    lea         eax,[ebp-0C]
 004A0E12    call        0067DAEC
 004A0E17    inc         dword ptr [ebp-20]
 004A0E1A    mov         word ptr [ebp-2C],14
 004A0E20    mov         edx,dword ptr [ebp-44]
 004A0E23    mov         eax,dword ptr [ebp-40]
 004A0E26    call        004A0C84
 004A0E2B    mov         edx,dword ptr ds:[5EE128];TControl
 004A0E31    mov         eax,dword ptr [ebp-44]
 004A0E34    call        006708AC
 004A0E39    mov         dword ptr [ebp-48],eax
 004A0E3C    mov         ecx,dword ptr [ebp-48]
 004A0E3F    test        ecx,ecx
>004A0E41    je          004A0EEC
 004A0E47    lea         eax,[ebp-14]
 004A0E4A    call        00401EA8
 004A0E4F    mov         edx,eax
 004A0E51    inc         dword ptr [ebp-20]
 004A0E54    mov         ecx,dword ptr [ebp-48]
 004A0E57    mov         eax,dword ptr [ecx+80]
 004A0E5D    call        005EFA08
 004A0E62    lea         edx,[ebp-14]
 004A0E65    push        dword ptr [edx]
 004A0E67    mov         word ptr [ebp-2C],2C
 004A0E6D    mov         edx,dword ptr [ebp-40]
 004A0E70    add         edx,8
 004A0E73    lea         eax,[ebp-10]
 004A0E76    call        0067DAEC
 004A0E7B    inc         dword ptr [ebp-20]
 004A0E7E    mov         edx,dword ptr [eax]
 004A0E80    mov         ecx,dword ptr [ebp-48]
 004A0E83    mov         eax,dword ptr [ebp-40]
 004A0E86    call        004A23E4
 004A0E8B    dec         dword ptr [ebp-20]
 004A0E8E    lea         eax,[ebp-14]
 004A0E91    mov         edx,2
 004A0E96    call        0067DCA0
 004A0E9B    dec         dword ptr [ebp-20]
 004A0E9E    lea         eax,[ebp-10]
 004A0EA1    mov         edx,2
 004A0EA6    call        0067DCA0
 004A0EAB    mov         dl,1
 004A0EAD    mov         eax,dword ptr [ebp-48]
 004A0EB0    call        TCCalendar.SetVisible
 004A0EB5    mov         dl,1
 004A0EB7    mov         eax,dword ptr [ebp-48]
 004A0EBA    mov         ecx,dword ptr [eax]
 004A0EBC    call        dword ptr [ecx+64]
 004A0EBF    mov         eax,dword ptr [ebp-48]
 004A0EC2    mov         dword ptr [eax+0D0],4A101C
 004A0ECC    mov         edx,dword ptr [ebp-48]
 004A0ECF    mov         ecx,dword ptr [ebp-40]
 004A0ED2    mov         dword ptr [edx+0D4],ecx
 004A0ED8    mov         eax,dword ptr [ebp-48]
 004A0EDB    mov         edx,dword ptr [eax+7C]
 004A0EDE    test        edx,edx
>004A0EE0    je          004A0EEC
 004A0EE2    xor         edx,edx
 004A0EE4    mov         eax,dword ptr [ebp-48]
 004A0EE7    call        TCCalendar.SetPopupMenu
 004A0EEC    mov         edx,dword ptr ds:[6040B8];TPageControl
 004A0EF2    mov         eax,dword ptr [ebp-44]
 004A0EF5    call        006708AC
 004A0EFA    mov         dword ptr [ebp-5C],eax
 004A0EFD    mov         ecx,dword ptr [ebp-5C]
 004A0F00    test        ecx,ecx
>004A0F02    je          004A0F2C
 004A0F04    mov         eax,dword ptr [ebp-5C]
 004A0F07    call        0061459C
 004A0F0C    test        eax,eax
>004A0F0E    jle         004A0FE0
 004A0F14    mov         eax,dword ptr [ebp-5C]
 004A0F17    call        0061459C
 004A0F1C    mov         edx,eax
 004A0F1E    dec         edx
 004A0F1F    mov         eax,dword ptr [ebp-5C]
 004A0F22    call        00614E28
>004A0F27    jmp         004A0FE0
 004A0F2C    mov         edx,dword ptr ds:[603AF0];TTabSheet
 004A0F32    mov         eax,dword ptr [ebp-44]
 004A0F35    call        006708AC
 004A0F3A    mov         dword ptr [ebp-60],eax
 004A0F3D    mov         edx,dword ptr [ebp-60]
 004A0F40    test        edx,edx
>004A0F42    je          004A0F53
 004A0F44    mov         dl,1
 004A0F46    mov         eax,dword ptr [ebp-60]
 004A0F49    call        TTabSheet.SetTabVisible
>004A0F4E    jmp         004A0FE0
 004A0F53    mov         edx,dword ptr ds:[6433E4];TBasicAction
 004A0F59    mov         eax,dword ptr [ebp-44]
 004A0F5C    call        006708AC
 004A0F61    mov         dword ptr [ebp-64],eax
 004A0F64    mov         ecx,dword ptr [ebp-64]
 004A0F67    test        ecx,ecx
>004A0F69    je          004A0F8A
 004A0F6B    mov         dword ptr [ebp-6C],4A10D4
 004A0F72    mov         eax,dword ptr [ebp-40]
 004A0F75    mov         dword ptr [ebp-68],eax
 004A0F78    lea         edx,[ebp-6C]
 004A0F7B    push        dword ptr [edx+4]
 004A0F7E    push        dword ptr [edx]
 004A0F80    mov         eax,dword ptr [ebp-64]
 004A0F83    mov         edx,dword ptr [eax]
 004A0F85    call        dword ptr [edx+34]
>004A0F88    jmp         004A0FE0
 004A0F8A    mov         edx,dword ptr ds:[5A1ED0];TMenuItem
 004A0F90    mov         eax,dword ptr [ebp-44]
 004A0F93    call        006708AC
 004A0F98    mov         dword ptr [ebp-70],eax
 004A0F9B    mov         ecx,dword ptr [ebp-70]
 004A0F9E    test        ecx,ecx
>004A0FA0    je          004A0FE0
 004A0FA2    mov         word ptr [ebp-2C],38
 004A0FA8    mov         edx,dword ptr [ebp-40]
 004A0FAB    add         edx,8
 004A0FAE    lea         eax,[ebp-18]
 004A0FB1    call        0067DAEC
 004A0FB6    inc         dword ptr [ebp-20]
 004A0FB9    mov         ecx,dword ptr [eax]
 004A0FBB    mov         edx,dword ptr [ebp-70]
 004A0FBE    mov         eax,dword ptr [ebp-40]
 004A0FC1    call        004A2AA8
 004A0FC6    dec         dword ptr [ebp-20]
 004A0FC9    lea         eax,[ebp-18]
 004A0FCC    mov         edx,2
 004A0FD1    call        0067DCA0
 004A0FD6    mov         dl,1
 004A0FD8    mov         eax,dword ptr [ebp-70]
 004A0FDB    call        TMenuItem.SetEnabled
 004A0FE0    dec         dword ptr [ebp-20]
 004A0FE3    lea         eax,[ebp-0C]
 004A0FE6    mov         edx,2
 004A0FEB    call        0067DCA0
 004A0FF0    mov         word ptr [ebp-2C],0
 004A0FF6    inc         dword ptr [ebp-58]
 004A0FF9    mov         eax,dword ptr [ebp-40]
 004A0FFC    call        00650B4C
 004A1001    mov         edx,dword ptr [ebp-58]
 004A1004    cmp         eax,edx
>004A1006    jg          004A0DF5
 004A100C    mov         ecx,dword ptr [ebp-3C]
 004A100F    mov         dword ptr fs:[0],ecx
 004A1016    mov         esp,ebp
 004A1018    pop         ebp
 004A1019    ret
end;*}

//004A23E4
{*procedure sub_004A23E4(?:?; ?:?; ?:?; ?:?);
begin
 004A23E4    push        ebp
 004A23E5    mov         ebp,esp
 004A23E7    add         esp,0FFFFFF54
 004A23ED    mov         dword ptr [ebp-84],ecx
 004A23F3    mov         dword ptr [ebp-4],edx
 004A23F6    mov         dword ptr [ebp-80],eax
 004A23F9    mov         eax,6C0CB8
 004A23FE    call        0066FECC
 004A2403    mov         dword ptr [ebp-60],2
 004A240A    lea         edx,[ebp-4]
 004A240D    lea         eax,[ebp-4]
 004A2410    call        0067DAEC
 004A2415    inc         dword ptr [ebp-60]
 004A2418    mov         word ptr [ebp-6C],8
 004A241E    lea         edx,[ebp+8]
 004A2421    lea         eax,[ebp+8]
 004A2424    call        0067DAEC
 004A2429    inc         dword ptr [ebp-60]
 004A242C    xor         edx,edx
 004A242E    mov         dword ptr [ebp-88],edx
>004A2434    jmp         004A2A5C
 004A2439    mov         ecx,dword ptr ds:[6941A0];0x0 gvar_006941A0
 004A243F    mov         eax,dword ptr [ecx+0D]
 004A2442    mov         edx,dword ptr [ebp-88]
 004A2448    call        TList.Get
 004A244D    mov         dword ptr [ebp-8C],eax
 004A2453    mov         word ptr [ebp-6C],8
 004A2459    mov         ecx,dword ptr [ebp-8C]
 004A245F    mov         eax,dword ptr [ecx+6]
 004A2462    mov         edx,dword ptr [ebp-4]
 004A2465    call        SameText
 004A246A    test        al,al
>004A246C    je          004A2A56
 004A2472    mov         word ptr [ebp-6C],20
 004A2478    lea         edx,[ebp+8]
 004A247B    lea         eax,[ebp-8]
 004A247E    call        0067DAEC
 004A2483    inc         dword ptr [ebp-60]
 004A2486    mov         word ptr [ebp-6C],14
 004A248C    mov         word ptr [ebp-6C],2C
 004A2492    mov         edx,dword ptr [ebp-84]
 004A2498    add         edx,8
 004A249B    lea         eax,[ebp-0C]
 004A249E    call        0067DAEC
 004A24A3    inc         dword ptr [ebp-60]
 004A24A6    mov         edx,dword ptr [eax]
 004A24A8    mov         eax,dword ptr [ebp-8C]
 004A24AE    mov         eax,dword ptr [eax+6]
 004A24B1    call        SameText
 004A24B6    push        eax
 004A24B7    dec         dword ptr [ebp-60]
 004A24BA    lea         eax,[ebp-0C]
 004A24BD    mov         edx,2
 004A24C2    call        0067DCA0
 004A24C7    pop         ecx
 004A24C8    test        cl,cl
>004A24CA    je          004A273F
 004A24D0    mov         word ptr [ebp-6C],38
 004A24D6    mov         edx,6BEAD8
 004A24DB    lea         eax,[ebp-10]
 004A24DE    call        0067DAB4
 004A24E3    inc         dword ptr [ebp-60]
 004A24E6    lea         edx,[ebp-10]
 004A24E9    lea         eax,[ebp-8]
 004A24EC    call        0067DD9C
 004A24F1    push        eax
 004A24F2    dec         dword ptr [ebp-60]
 004A24F5    lea         eax,[ebp-10]
 004A24F8    mov         edx,2
 004A24FD    call        0067DCA0
 004A2502    pop         ecx
 004A2503    test        cl,cl
>004A2505    je          004A2538
 004A2507    mov         word ptr [ebp-6C],44
 004A250D    mov         edx,6BEAD9
 004A2512    lea         eax,[ebp-14]
 004A2515    call        0067DAB4
 004A251A    inc         dword ptr [ebp-60]
 004A251D    lea         edx,[ebp-14]
 004A2520    lea         eax,[ebp-8]
 004A2523    call        0067DCE4
 004A2528    dec         dword ptr [ebp-60]
 004A252B    lea         eax,[ebp-14]
 004A252E    mov         edx,2
 004A2533    call        0067DCA0
 004A2538    mov         word ptr [ebp-6C],50
 004A253E    lea         eax,[ebp-1C]
 004A2541    call        00401EA8
 004A2546    push        eax
 004A2547    inc         dword ptr [ebp-60]
 004A254A    mov         edx,6BEADB
 004A254F    lea         eax,[ebp-18]
 004A2552    call        0067DAB4
 004A2557    inc         dword ptr [ebp-60]
 004A255A    lea         edx,[ebp-18]
 004A255D    mov         eax,dword ptr [ebp-8C]
 004A2563    add         eax,6
 004A2566    pop         ecx
 004A2567    call        0067DCF8
 004A256C    lea         edx,[ebp-1C]
 004A256F    push        edx
 004A2570    lea         eax,[ebp-20]
 004A2573    call        00401EA8
 004A2578    mov         ecx,eax
 004A257A    inc         dword ptr [ebp-60]
 004A257D    mov         edx,dword ptr [ebp-8C]
 004A2583    add         edx,0A
 004A2586    pop         eax
 004A2587    call        0067DCF8
 004A258C    lea         edx,[ebp-20]
 004A258F    lea         eax,[ebp-8]
 004A2592    call        0067DCE4
 004A2597    dec         dword ptr [ebp-60]
 004A259A    lea         eax,[ebp-20]
 004A259D    mov         edx,2
 004A25A2    call        0067DCA0
 004A25A7    dec         dword ptr [ebp-60]
 004A25AA    lea         eax,[ebp-1C]
 004A25AD    mov         edx,2
 004A25B2    call        0067DCA0
 004A25B7    dec         dword ptr [ebp-60]
 004A25BA    lea         eax,[ebp-18]
 004A25BD    mov         edx,2
 004A25C2    call        0067DCA0
 004A25C7    mov         ecx,dword ptr [ebp-8C]
 004A25CD    mov         eax,dword ptr [ecx+16]
 004A25D0    mov         dword ptr [ebp-90],eax
 004A25D6    mov         word ptr [ebp-6C],14
 004A25DC    xor         edx,edx
 004A25DE    mov         dword ptr [ebp-94],edx
>004A25E4    jmp         004A26C4
 004A25E9    mov         edx,dword ptr [ebp-94]
 004A25EF    mov         eax,dword ptr [ebp-90]
 004A25F5    call        TList.Get
 004A25FA    mov         dword ptr [ebp-98],eax
 004A2600    mov         word ptr [ebp-6C],14
 004A2606    mov         word ptr [ebp-6C],5C
 004A260C    lea         eax,[ebp-24]
 004A260F    call        00401EA8
 004A2614    mov         ecx,eax
 004A2616    inc         dword ptr [ebp-60]
 004A2619    mov         eax,6BEADD
 004A261E    mov         edx,dword ptr [ebp-98]
 004A2624    call        0067E37C
 004A2629    lea         ecx,[ebp-24]
 004A262C    push        ecx
 004A262D    lea         eax,[ebp-2C]
 004A2630    call        00401EA8
 004A2635    push        eax
 004A2636    inc         dword ptr [ebp-60]
 004A2639    mov         edx,6BEADF
 004A263E    lea         eax,[ebp-28]
 004A2641    call        0067DAB4
 004A2646    inc         dword ptr [ebp-60]
 004A2649    lea         edx,[ebp-28]
 004A264C    pop         ecx
 004A264D    pop         eax
 004A264E    call        0067DCF8
 004A2653    lea         edx,[ebp-2C]
 004A2656    push        edx
 004A2657    lea         eax,[ebp-30]
 004A265A    call        00401EA8
 004A265F    mov         ecx,eax
 004A2661    inc         dword ptr [ebp-60]
 004A2664    mov         edx,dword ptr [ebp-98]
 004A266A    add         edx,4
 004A266D    pop         eax
 004A266E    call        0067DCF8
 004A2673    lea         edx,[ebp-30]
 004A2676    lea         eax,[ebp-8]
 004A2679    call        0067DCE4
 004A267E    dec         dword ptr [ebp-60]
 004A2681    lea         eax,[ebp-30]
 004A2684    mov         edx,2
 004A2689    call        0067DCA0
 004A268E    dec         dword ptr [ebp-60]
 004A2691    lea         eax,[ebp-2C]
 004A2694    mov         edx,2
 004A2699    call        0067DCA0
 004A269E    dec         dword ptr [ebp-60]
 004A26A1    lea         eax,[ebp-28]
 004A26A4    mov         edx,2
 004A26A9    call        0067DCA0
 004A26AE    dec         dword ptr [ebp-60]
 004A26B1    lea         eax,[ebp-24]
 004A26B4    mov         edx,2
 004A26B9    call        0067DCA0
 004A26BE    inc         dword ptr [ebp-94]
 004A26C4    mov         ecx,dword ptr [ebp-90]
 004A26CA    mov         eax,dword ptr [ecx+8]
 004A26CD    mov         edx,dword ptr [ebp-94]
 004A26D3    cmp         eax,edx
>004A26D5    jg          004A25E9
 004A26DB    lea         edx,[ebp-8]
 004A26DE    mov         eax,dword ptr [ebp-84]
 004A26E4    add         eax,80
 004A26E9    call        0067DCD0
 004A26EE    mov         dl,1
 004A26F0    mov         eax,dword ptr [ebp-84]
 004A26F6    call        TCCalendar.SetShowHint
 004A26FB    dec         dword ptr [ebp-60]
 004A26FE    lea         eax,[ebp-8]
 004A2701    mov         edx,2
 004A2706    call        0067DCA0
 004A270B    dec         dword ptr [ebp-60]
 004A270E    lea         eax,[ebp+8]
 004A2711    mov         edx,2
 004A2716    call        0067DCA0
 004A271B    dec         dword ptr [ebp-60]
 004A271E    lea         eax,[ebp-4]
 004A2721    mov         edx,2
 004A2726    call        0067DCA0
 004A272B    mov         ecx,dword ptr [ebp-7C]
 004A272E    mov         dword ptr fs:[0],ecx
>004A2735    jmp         004A2AA0
>004A273A    jmp         004A2A40
 004A273F    xor         eax,eax
 004A2741    mov         dword ptr [ebp-9C],eax
 004A2747    mov         word ptr [ebp-6C],14
>004A274D    jmp         004A2A26
 004A2752    mov         edx,dword ptr [ebp-8C]
 004A2758    mov         eax,dword ptr [edx+1A]
 004A275B    mov         edx,dword ptr [ebp-9C]
 004A2761    call        TList.Get
 004A2766    mov         dword ptr [ebp-0A0],eax
 004A276C    mov         word ptr [ebp-6C],14
 004A2772    mov         word ptr [ebp-6C],68
 004A2778    mov         edx,dword ptr [ebp-84]
 004A277E    add         edx,8
 004A2781    lea         eax,[ebp-34]
 004A2784    call        0067DAEC
 004A2789    inc         dword ptr [ebp-60]
 004A278C    mov         edx,dword ptr [eax]
 004A278E    mov         eax,dword ptr [ebp-0A0]
 004A2794    mov         eax,dword ptr [eax+2]
 004A2797    call        SameText
 004A279C    push        eax
 004A279D    dec         dword ptr [ebp-60]
 004A27A0    lea         eax,[ebp-34]
 004A27A3    mov         edx,2
 004A27A8    call        0067DCA0
 004A27AD    pop         ecx
 004A27AE    test        cl,cl
>004A27B0    je          004A2A20
 004A27B6    mov         word ptr [ebp-6C],74
 004A27BC    mov         edx,6BEAE3
 004A27C1    lea         eax,[ebp-38]
 004A27C4    call        0067DAB4
 004A27C9    inc         dword ptr [ebp-60]
 004A27CC    lea         edx,[ebp-38]
 004A27CF    lea         eax,[ebp-8]
 004A27D2    call        0067DD9C
 004A27D7    push        eax
 004A27D8    dec         dword ptr [ebp-60]
 004A27DB    lea         eax,[ebp-38]
 004A27DE    mov         edx,2
 004A27E3    call        0067DCA0
 004A27E8    pop         ecx
 004A27E9    test        cl,cl
>004A27EB    je          004A281E
 004A27ED    mov         word ptr [ebp-6C],80
 004A27F3    mov         edx,6BEAE4
 004A27F8    lea         eax,[ebp-3C]
 004A27FB    call        0067DAB4
 004A2800    inc         dword ptr [ebp-60]
 004A2803    lea         edx,[ebp-3C]
 004A2806    lea         eax,[ebp-8]
 004A2809    call        0067DCE4
 004A280E    dec         dword ptr [ebp-60]
 004A2811    lea         eax,[ebp-3C]
 004A2814    mov         edx,2
 004A2819    call        0067DCA0
 004A281E    mov         word ptr [ebp-6C],8C
 004A2824    lea         eax,[ebp-44]
 004A2827    call        00401EA8
 004A282C    push        eax
 004A282D    inc         dword ptr [ebp-60]
 004A2830    mov         edx,6BEAE6
 004A2835    lea         eax,[ebp-40]
 004A2838    call        0067DAB4
 004A283D    inc         dword ptr [ebp-60]
 004A2840    lea         edx,[ebp-40]
 004A2843    mov         eax,dword ptr [ebp-0A0]
 004A2849    add         eax,2
 004A284C    pop         ecx
 004A284D    call        0067DCF8
 004A2852    lea         edx,[ebp-44]
 004A2855    push        edx
 004A2856    lea         eax,[ebp-48]
 004A2859    call        00401EA8
 004A285E    mov         ecx,eax
 004A2860    inc         dword ptr [ebp-60]
 004A2863    mov         edx,dword ptr [ebp-0A0]
 004A2869    add         edx,6
 004A286C    pop         eax
 004A286D    call        0067DCF8
 004A2872    lea         edx,[ebp-48]
 004A2875    lea         eax,[ebp-8]
 004A2878    call        0067DCE4
 004A287D    dec         dword ptr [ebp-60]
 004A2880    lea         eax,[ebp-48]
 004A2883    mov         edx,2
 004A2888    call        0067DCA0
 004A288D    dec         dword ptr [ebp-60]
 004A2890    lea         eax,[ebp-44]
 004A2893    mov         edx,2
 004A2898    call        0067DCA0
 004A289D    dec         dword ptr [ebp-60]
 004A28A0    lea         eax,[ebp-40]
 004A28A3    mov         edx,2
 004A28A8    call        0067DCA0
 004A28AD    mov         ecx,dword ptr [ebp-0A0]
 004A28B3    mov         eax,dword ptr [ecx+0A]
 004A28B6    mov         dword ptr [ebp-0A4],eax
 004A28BC    mov         word ptr [ebp-6C],14
 004A28C2    xor         edx,edx
 004A28C4    mov         dword ptr [ebp-0A8],edx
>004A28CA    jmp         004A29AA
 004A28CF    mov         edx,dword ptr [ebp-0A8]
 004A28D5    mov         eax,dword ptr [ebp-0A4]
 004A28DB    call        TList.Get
 004A28E0    mov         dword ptr [ebp-0AC],eax
 004A28E6    mov         word ptr [ebp-6C],14
 004A28EC    mov         word ptr [ebp-6C],98
 004A28F2    lea         eax,[ebp-4C]
 004A28F5    call        00401EA8
 004A28FA    mov         ecx,eax
 004A28FC    inc         dword ptr [ebp-60]
 004A28FF    mov         eax,6BEAE8
 004A2904    mov         edx,dword ptr [ebp-0AC]
 004A290A    call        0067E37C
 004A290F    lea         ecx,[ebp-4C]
 004A2912    push        ecx
 004A2913    lea         eax,[ebp-54]
 004A2916    call        00401EA8
 004A291B    push        eax
 004A291C    inc         dword ptr [ebp-60]
 004A291F    mov         edx,6BEAEA
 004A2924    lea         eax,[ebp-50]
 004A2927    call        0067DAB4
 004A292C    inc         dword ptr [ebp-60]
 004A292F    lea         edx,[ebp-50]
 004A2932    pop         ecx
 004A2933    pop         eax
 004A2934    call        0067DCF8
 004A2939    lea         edx,[ebp-54]
 004A293C    push        edx
 004A293D    lea         eax,[ebp-58]
 004A2940    call        00401EA8
 004A2945    mov         ecx,eax
 004A2947    inc         dword ptr [ebp-60]
 004A294A    mov         edx,dword ptr [ebp-0AC]
 004A2950    add         edx,4
 004A2953    pop         eax
 004A2954    call        0067DCF8
 004A2959    lea         edx,[ebp-58]
 004A295C    lea         eax,[ebp-8]
 004A295F    call        0067DCE4
 004A2964    dec         dword ptr [ebp-60]
 004A2967    lea         eax,[ebp-58]
 004A296A    mov         edx,2
 004A296F    call        0067DCA0
 004A2974    dec         dword ptr [ebp-60]
 004A2977    lea         eax,[ebp-54]
 004A297A    mov         edx,2
 004A297F    call        0067DCA0
 004A2984    dec         dword ptr [ebp-60]
 004A2987    lea         eax,[ebp-50]
 004A298A    mov         edx,2
 004A298F    call        0067DCA0
 004A2994    dec         dword ptr [ebp-60]
 004A2997    lea         eax,[ebp-4C]
 004A299A    mov         edx,2
 004A299F    call        0067DCA0
 004A29A4    inc         dword ptr [ebp-0A8]
 004A29AA    mov         ecx,dword ptr [ebp-0A4]
 004A29B0    mov         eax,dword ptr [ecx+8]
 004A29B3    mov         edx,dword ptr [ebp-0A8]
 004A29B9    cmp         eax,edx
>004A29BB    jg          004A28CF
 004A29C1    lea         edx,[ebp-8]
 004A29C4    mov         eax,dword ptr [ebp-84]
 004A29CA    add         eax,80
 004A29CF    call        0067DCD0
 004A29D4    mov         dl,1
 004A29D6    mov         eax,dword ptr [ebp-84]
 004A29DC    call        TCCalendar.SetShowHint
 004A29E1    dec         dword ptr [ebp-60]
 004A29E4    lea         eax,[ebp-8]
 004A29E7    mov         edx,2
 004A29EC    call        0067DCA0
 004A29F1    dec         dword ptr [ebp-60]
 004A29F4    lea         eax,[ebp+8]
 004A29F7    mov         edx,2
 004A29FC    call        0067DCA0
 004A2A01    dec         dword ptr [ebp-60]
 004A2A04    lea         eax,[ebp-4]
 004A2A07    mov         edx,2
 004A2A0C    call        0067DCA0
 004A2A11    mov         ecx,dword ptr [ebp-7C]
 004A2A14    mov         dword ptr fs:[0],ecx
>004A2A1B    jmp         004A2AA0
 004A2A20    inc         dword ptr [ebp-9C]
 004A2A26    mov         eax,dword ptr [ebp-8C]
 004A2A2C    mov         edx,dword ptr [eax+1A]
 004A2A2F    mov         ecx,dword ptr [edx+8]
 004A2A32    mov         eax,dword ptr [ebp-9C]
 004A2A38    cmp         ecx,eax
>004A2A3A    jg          004A2752
 004A2A40    dec         dword ptr [ebp-60]
 004A2A43    lea         eax,[ebp-8]
 004A2A46    mov         edx,2
 004A2A4B    call        0067DCA0
 004A2A50    mov         word ptr [ebp-6C],8
 004A2A56    inc         dword ptr [ebp-88]
 004A2A5C    mov         ecx,dword ptr ds:[6941A0];0x0 gvar_006941A0
 004A2A62    mov         eax,dword ptr [ecx+0D]
 004A2A65    mov         edx,dword ptr [eax+8]
 004A2A68    mov         ecx,dword ptr [ebp-88]
 004A2A6E    cmp         edx,ecx
>004A2A70    jg          004A2439
 004A2A76    dec         dword ptr [ebp-60]
 004A2A79    lea         eax,[ebp+8]
 004A2A7C    mov         edx,2
 004A2A81    call        0067DCA0
 004A2A86    dec         dword ptr [ebp-60]
 004A2A89    lea         eax,[ebp-4]
 004A2A8C    mov         edx,2
 004A2A91    call        0067DCA0
 004A2A96    mov         ecx,dword ptr [ebp-7C]
 004A2A99    mov         dword ptr fs:[0],ecx
 004A2AA0    mov         esp,ebp
 004A2AA2    pop         ebp
 004A2AA3    ret         4
end;*}

//004A2AA8
{*procedure sub_004A2AA8(?:?; ?:?; ?:?);
begin
 004A2AA8    push        ebp
 004A2AA9    mov         ebp,esp
 004A2AAB    add         esp,0FFFFFF60
 004A2AB1    mov         dword ptr [ebp-4],ecx
 004A2AB4    mov         dword ptr [ebp-5C],edx
 004A2AB7    mov         dword ptr [ebp-58],eax
 004A2ABA    mov         eax,6C0E1C
 004A2ABF    call        0066FECC
 004A2AC4    mov         dword ptr [ebp-38],1
 004A2ACB    lea         edx,[ebp-4]
 004A2ACE    lea         eax,[ebp-4]
 004A2AD1    call        0067DAEC
 004A2AD6    inc         dword ptr [ebp-38]
 004A2AD9    mov         word ptr [ebp-44],8
 004A2ADF    mov         byte ptr [ebp-5D],0
 004A2AE3    mov         byte ptr [ebp-5E],0
 004A2AE7    xor         edx,edx
 004A2AE9    mov         dword ptr [ebp-64],edx
 004A2AEC    xor         ecx,ecx
 004A2AEE    mov         dword ptr [ebp-68],ecx
>004A2AF1    jmp         004A2FD9
 004A2AF6    mov         eax,[006941A0];0x0 gvar_006941A0
 004A2AFB    mov         eax,dword ptr [eax+0D]
 004A2AFE    mov         edx,dword ptr [ebp-68]
 004A2B01    call        TList.Get
 004A2B06    mov         dword ptr [ebp-6C],eax
 004A2B09    mov         word ptr [ebp-44],8
 004A2B0F    mov         ecx,dword ptr [ebp-6C]
 004A2B12    mov         eax,dword ptr [ecx+6]
 004A2B15    mov         edx,dword ptr [ebp-4]
 004A2B18    call        SameText
 004A2B1D    test        al,al
>004A2B1F    je          004A2FD6
 004A2B25    mov         ecx,dword ptr [ebp-6C]
 004A2B28    mov         dword ptr [ebp-64],ecx
 004A2B2B    mov         eax,dword ptr [ebp-6C]
 004A2B2E    test        byte ptr [eax+1],1
 004A2B32    setne       dl
 004A2B35    and         edx,1
 004A2B38    mov         byte ptr [ebp-5E],dl
 004A2B3B    xor         ecx,ecx
 004A2B3D    mov         dword ptr [ebp-70],ecx
>004A2B40    jmp         004A2FC2
 004A2B45    mov         eax,dword ptr [ebp-6C]
 004A2B48    mov         eax,dword ptr [eax+1A]
 004A2B4B    mov         edx,dword ptr [ebp-70]
 004A2B4E    call        TList.Get
 004A2B53    mov         dword ptr [ebp-74],eax
 004A2B56    mov         word ptr [ebp-44],8
 004A2B5C    mov         word ptr [ebp-44],14
 004A2B62    mov         edx,dword ptr [ebp-5C]
 004A2B65    add         edx,8
 004A2B68    lea         eax,[ebp-8]
 004A2B6B    call        0067DAEC
 004A2B70    inc         dword ptr [ebp-38]
 004A2B73    mov         edx,dword ptr [eax]
 004A2B75    mov         eax,dword ptr [ebp-74]
 004A2B78    mov         eax,dword ptr [eax+2]
 004A2B7B    call        SameText
 004A2B80    push        eax
 004A2B81    dec         dword ptr [ebp-38]
 004A2B84    lea         eax,[ebp-8]
 004A2B87    mov         edx,2
 004A2B8C    call        0067DCA0
 004A2B91    pop         ecx
 004A2B92    test        cl,cl
>004A2B94    je          004A2FBF
 004A2B9A    mov         eax,dword ptr [ebp-6C]
 004A2B9D    add         eax,0A
 004A2BA0    call        00535E90
 004A2BA5    mov         dword ptr [ebp-78],eax
 004A2BA8    mov         word ptr [ebp-44],8
 004A2BAE    mov         eax,dword ptr [ebp-78]
 004A2BB1    call        00531EE8
 004A2BB6    test        al,al
>004A2BB8    je          004A2BCD
 004A2BBA    mov         eax,dword ptr [ebp-78]
 004A2BBD    call        005312C8
 004A2BC2    mov         edx,dword ptr ds:[6941CC];0x0 gvar_006941CC
 004A2BC8    mov         ecx,dword ptr [edx+eax*4]
>004A2BCB    jmp         004A2BCF
 004A2BCD    xor         ecx,ecx
 004A2BCF    mov         dword ptr [ebp-7C],ecx
 004A2BD2    mov         eax,dword ptr [ebp-74]
 004A2BD5    mov         edx,dword ptr [eax+0A]
 004A2BD8    mov         dword ptr [ebp-80],edx
 004A2BDB    xor         eax,eax
 004A2BDD    mov         dword ptr [ebp-84],eax
>004A2BE3    jmp         004A2F88
 004A2BE8    mov         edx,dword ptr [ebp-84]
 004A2BEE    mov         eax,dword ptr [ebp-80]
 004A2BF1    call        TList.Get
 004A2BF6    mov         dword ptr [ebp-88],eax
 004A2BFC    mov         word ptr [ebp-44],8
 004A2C02    mov         word ptr [ebp-44],2C
 004A2C08    mov         edx,6BEAEE
 004A2C0D    lea         eax,[ebp-0C]
 004A2C10    call        0067DAB4
 004A2C15    inc         dword ptr [ebp-38]
 004A2C18    mov         word ptr [ebp-44],20
 004A2C1E    mov         word ptr [ebp-44],38
 004A2C24    mov         edx,6BEAEF
 004A2C29    lea         eax,[ebp-10]
 004A2C2C    call        0067DAB4
 004A2C31    inc         dword ptr [ebp-38]
 004A2C34    mov         edx,dword ptr [eax]
 004A2C36    mov         ecx,dword ptr [ebp-88]
 004A2C3C    mov         eax,dword ptr [ecx]
 004A2C3E    call        SameText
 004A2C43    push        eax
 004A2C44    dec         dword ptr [ebp-38]
 004A2C47    lea         eax,[ebp-10]
 004A2C4A    mov         edx,2
 004A2C4F    call        0067DCA0
 004A2C54    pop         ecx
 004A2C55    test        cl,cl
>004A2C57    je          004A2D4D
 004A2C5D    mov         word ptr [ebp-44],44
 004A2C63    lea         eax,[ebp-18]
 004A2C66    call        00401EA8
 004A2C6B    push        eax
 004A2C6C    inc         dword ptr [ebp-38]
 004A2C6F    mov         edx,6BEAF7
 004A2C74    lea         eax,[ebp-14]
 004A2C77    call        0067DAB4
 004A2C7C    inc         dword ptr [ebp-38]
 004A2C7F    lea         edx,[ebp-14]
 004A2C82    mov         eax,dword ptr [ebp-6C]
 004A2C85    add         eax,0A
 004A2C88    pop         ecx
 004A2C89    call        0067DCF8
 004A2C8E    lea         edx,[ebp-18]
 004A2C91    push        edx
 004A2C92    lea         eax,[ebp-1C]
 004A2C95    call        00401EA8
 004A2C9A    mov         ecx,eax
 004A2C9C    inc         dword ptr [ebp-38]
 004A2C9F    mov         edx,dword ptr [ebp-88]
 004A2CA5    add         edx,4
 004A2CA8    pop         eax
 004A2CA9    call        0067DCF8
 004A2CAE    lea         edx,[ebp-1C]
 004A2CB1    lea         eax,[ebp-0C]
 004A2CB4    call        0067DCD0
 004A2CB9    dec         dword ptr [ebp-38]
 004A2CBC    lea         eax,[ebp-1C]
 004A2CBF    mov         edx,2
 004A2CC4    call        0067DCA0
 004A2CC9    dec         dword ptr [ebp-38]
 004A2CCC    lea         eax,[ebp-18]
 004A2CCF    mov         edx,2
 004A2CD4    call        0067DCA0
 004A2CD9    dec         dword ptr [ebp-38]
 004A2CDC    lea         eax,[ebp-14]
 004A2CDF    mov         edx,2
 004A2CE4    call        0067DCA0
 004A2CE9    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004A2CEF    mov         eax,dword ptr [ecx]
 004A2CF1    mov         ecx,dword ptr [ebp-0C]
 004A2CF4    mov         edx,dword ptr [ebp-7C]
 004A2CF7    call        0040E2BC
 004A2CFC    mov         dword ptr [ebp-8C],eax
 004A2D02    mov         eax,dword ptr [ebp-8C]
 004A2D08    test        eax,eax
>004A2D0A    je          004A2D17
 004A2D0C    mov         edx,dword ptr [ebp-8C]
 004A2D12    mov         ecx,dword ptr [edx+6]
>004A2D15    jmp         004A2D19
 004A2D17    xor         ecx,ecx
 004A2D19    mov         eax,dword ptr [ebp-5C]
 004A2D1C    mov         dword ptr [eax+0C],ecx
 004A2D1F    mov         edx,dword ptr [ebp-5C]
 004A2D22    mov         dword ptr [edx+88],4A2328
 004A2D2C    mov         eax,dword ptr [ebp-5C]
 004A2D2F    mov         edx,dword ptr [ebp-58]
 004A2D32    mov         dword ptr [eax+8C],edx
 004A2D38    dec         dword ptr [ebp-38]
 004A2D3B    lea         eax,[ebp-0C]
 004A2D3E    mov         edx,2
 004A2D43    call        0067DCA0
>004A2D48    jmp         004A2F82
 004A2D4D    mov         word ptr [ebp-44],50
 004A2D53    mov         edx,6BEAF9
 004A2D58    lea         eax,[ebp-20]
 004A2D5B    call        0067DAB4
 004A2D60    inc         dword ptr [ebp-38]
 004A2D63    mov         edx,dword ptr [eax]
 004A2D65    mov         eax,dword ptr [ebp-88]
 004A2D6B    mov         eax,dword ptr [eax]
 004A2D6D    call        SameText
 004A2D72    push        eax
 004A2D73    dec         dword ptr [ebp-38]
 004A2D76    lea         eax,[ebp-20]
 004A2D79    mov         edx,2
 004A2D7E    call        0067DCA0
 004A2D83    pop         ecx
 004A2D84    test        cl,cl
>004A2D86    je          004A2F6C
 004A2D8C    xor         eax,eax
 004A2D8E    mov         dword ptr [ebp-90],eax
 004A2D94    mov         word ptr [ebp-44],20
>004A2D9A    jmp         004A2F55
 004A2D9F    mov         edx,dword ptr [ebp-6C]
 004A2DA2    mov         eax,dword ptr [edx+1A]
 004A2DA5    mov         edx,dword ptr [ebp-90]
 004A2DAB    call        TList.Get
 004A2DB0    mov         dword ptr [ebp-94],eax
 004A2DB6    mov         word ptr [ebp-44],20
 004A2DBC    mov         ecx,dword ptr [ebp-88]
 004A2DC2    mov         edx,dword ptr [ecx+4]
 004A2DC5    mov         eax,dword ptr [ebp-94]
 004A2DCB    mov         eax,dword ptr [eax+2]
 004A2DCE    call        SameText
 004A2DD3    test        al,al
>004A2DD5    je          004A2F4F
 004A2DDB    mov         edx,dword ptr [ebp-94]
 004A2DE1    mov         ecx,dword ptr [edx+0A]
 004A2DE4    mov         dword ptr [ebp-98],ecx
 004A2DEA    xor         eax,eax
 004A2DEC    mov         dword ptr [ebp-9C],eax
>004A2DF2    jmp         004A2F36
 004A2DF7    mov         edx,dword ptr [ebp-9C]
 004A2DFD    mov         eax,dword ptr [ebp-98]
 004A2E03    call        TList.Get
 004A2E08    mov         dword ptr [ebp-0A0],eax
 004A2E0E    mov         word ptr [ebp-44],20
 004A2E14    mov         word ptr [ebp-44],5C
 004A2E1A    mov         edx,6BEB00
 004A2E1F    lea         eax,[ebp-24]
 004A2E22    call        0067DAB4
 004A2E27    inc         dword ptr [ebp-38]
 004A2E2A    mov         edx,dword ptr [eax]
 004A2E2C    mov         ecx,dword ptr [ebp-0A0]
 004A2E32    mov         eax,dword ptr [ecx]
 004A2E34    call        SameText
 004A2E39    push        eax
 004A2E3A    dec         dword ptr [ebp-38]
 004A2E3D    lea         eax,[ebp-24]
 004A2E40    mov         edx,2
 004A2E45    call        0067DCA0
 004A2E4A    pop         ecx
 004A2E4B    test        cl,cl
>004A2E4D    je          004A2F30
 004A2E53    mov         word ptr [ebp-44],68
 004A2E59    lea         eax,[ebp-2C]
 004A2E5C    call        00401EA8
 004A2E61    push        eax
 004A2E62    inc         dword ptr [ebp-38]
 004A2E65    mov         edx,6BEB0A
 004A2E6A    lea         eax,[ebp-28]
 004A2E6D    call        0067DAB4
 004A2E72    inc         dword ptr [ebp-38]
 004A2E75    lea         edx,[ebp-28]
 004A2E78    mov         eax,dword ptr [ebp-6C]
 004A2E7B    add         eax,0A
 004A2E7E    pop         ecx
 004A2E7F    call        0067DCF8
 004A2E84    lea         edx,[ebp-2C]
 004A2E87    push        edx
 004A2E88    lea         eax,[ebp-30]
 004A2E8B    call        00401EA8
 004A2E90    mov         ecx,eax
 004A2E92    inc         dword ptr [ebp-38]
 004A2E95    mov         edx,dword ptr [ebp-0A0]
 004A2E9B    add         edx,4
 004A2E9E    pop         eax
 004A2E9F    call        0067DCF8
 004A2EA4    lea         edx,[ebp-30]
 004A2EA7    lea         eax,[ebp-0C]
 004A2EAA    call        0067DCD0
 004A2EAF    dec         dword ptr [ebp-38]
 004A2EB2    lea         eax,[ebp-30]
 004A2EB5    mov         edx,2
 004A2EBA    call        0067DCA0
 004A2EBF    dec         dword ptr [ebp-38]
 004A2EC2    lea         eax,[ebp-2C]
 004A2EC5    mov         edx,2
 004A2ECA    call        0067DCA0
 004A2ECF    dec         dword ptr [ebp-38]
 004A2ED2    lea         eax,[ebp-28]
 004A2ED5    mov         edx,2
 004A2EDA    call        0067DCA0
 004A2EDF    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004A2EE5    mov         eax,dword ptr [ecx]
 004A2EE7    mov         ecx,dword ptr [ebp-0C]
 004A2EEA    mov         edx,dword ptr [ebp-7C]
 004A2EED    call        0040E2BC
 004A2EF2    mov         dword ptr [ebp-8C],eax
 004A2EF8    mov         eax,dword ptr [ebp-8C]
 004A2EFE    test        eax,eax
>004A2F00    je          004A2F0D
 004A2F02    mov         edx,dword ptr [ebp-8C]
 004A2F08    mov         ecx,dword ptr [edx+6]
>004A2F0B    jmp         004A2F0F
 004A2F0D    xor         ecx,ecx
 004A2F0F    mov         eax,dword ptr [ebp-5C]
 004A2F12    mov         dword ptr [eax+0C],ecx
 004A2F15    mov         edx,dword ptr [ebp-5C]
 004A2F18    mov         dword ptr [edx+88],4A2328
 004A2F22    mov         eax,dword ptr [ebp-5C]
 004A2F25    mov         edx,dword ptr [ebp-58]
 004A2F28    mov         dword ptr [eax+8C],edx
>004A2F2E    jmp         004A2F6C
 004A2F30    inc         dword ptr [ebp-9C]
 004A2F36    mov         ecx,dword ptr [ebp-98]
 004A2F3C    mov         eax,dword ptr [ecx+8]
 004A2F3F    mov         edx,dword ptr [ebp-9C]
 004A2F45    cmp         eax,edx
>004A2F47    jg          004A2DF7
>004A2F4D    jmp         004A2F6C
 004A2F4F    inc         dword ptr [ebp-90]
 004A2F55    mov         ecx,dword ptr [ebp-6C]
 004A2F58    mov         eax,dword ptr [ecx+1A]
 004A2F5B    mov         edx,dword ptr [eax+8]
 004A2F5E    mov         ecx,dword ptr [ebp-90]
 004A2F64    cmp         edx,ecx
>004A2F66    jg          004A2D9F
 004A2F6C    dec         dword ptr [ebp-38]
 004A2F6F    lea         eax,[ebp-0C]
 004A2F72    mov         edx,2
 004A2F77    call        0067DCA0
 004A2F7C    mov         word ptr [ebp-44],8
 004A2F82    inc         dword ptr [ebp-84]
 004A2F88    mov         ecx,dword ptr [ebp-80]
 004A2F8B    mov         eax,dword ptr [ecx+8]
 004A2F8E    mov         edx,dword ptr [ebp-84]
 004A2F94    cmp         eax,edx
>004A2F96    jg          004A2BE8
 004A2F9C    mov         byte ptr [ebp-5D],1
 004A2FA0    dec         dword ptr [ebp-38]
 004A2FA3    lea         eax,[ebp-4]
 004A2FA6    mov         edx,2
 004A2FAB    call        0067DCA0
 004A2FB0    mov         ecx,dword ptr [ebp-54]
 004A2FB3    mov         dword ptr fs:[0],ecx
>004A2FBA    jmp         004A3048
 004A2FBF    inc         dword ptr [ebp-70]
 004A2FC2    mov         eax,dword ptr [ebp-6C]
 004A2FC5    mov         edx,dword ptr [eax+1A]
 004A2FC8    mov         ecx,dword ptr [edx+8]
 004A2FCB    mov         eax,dword ptr [ebp-70]
 004A2FCE    cmp         ecx,eax
>004A2FD0    jg          004A2B45
 004A2FD6    inc         dword ptr [ebp-68]
 004A2FD9    mov         edx,dword ptr ds:[6941A0];0x0 gvar_006941A0
 004A2FDF    mov         ecx,dword ptr [edx+0D]
 004A2FE2    mov         eax,dword ptr [ecx+8]
 004A2FE5    mov         edx,dword ptr [ebp-68]
 004A2FE8    cmp         eax,edx
>004A2FEA    jg          004A2AF6
 004A2FF0    mov         cl,byte ptr [ebp-5D]
 004A2FF3    test        cl,cl
>004A2FF5    jne         004A302E
 004A2FF7    mov         al,byte ptr [ebp-5E]
 004A2FFA    test        al,al
>004A2FFC    je          004A302E
 004A2FFE    mov         edx,dword ptr [ebp-64]
 004A3001    test        edx,edx
>004A3003    je          004A302E
 004A3005    mov         ecx,dword ptr [ebp-64]
 004A3008    mov         eax,dword ptr [ecx+12]
 004A300B    test        eax,eax
>004A300D    je          004A302E
 004A300F    mov         edx,dword ptr [ebp-64]
 004A3012    mov         edx,dword ptr [edx+12]
 004A3015    add         edx,6
 004A3018    lea         eax,[ebp-4]
 004A301B    call        0067DCD0
 004A3020    mov         ecx,dword ptr [ebp-4]
 004A3023    mov         edx,dword ptr [ebp-5C]
 004A3026    mov         eax,dword ptr [ebp-58]
 004A3029    call        004A2AA8
 004A302E    dec         dword ptr [ebp-38]
 004A3031    lea         eax,[ebp-4]
 004A3034    mov         edx,2
 004A3039    call        0067DCA0
 004A303E    mov         ecx,dword ptr [ebp-54]
 004A3041    mov         dword ptr fs:[0],ecx
 004A3048    mov         esp,ebp
 004A304A    pop         ebp
 004A304B    ret
end;*}

//004A304C
{*procedure sub_004A304C(?:IdrDfmForm; ?:?);
begin
 004A304C    push        ebp
 004A304D    mov         ebp,esp
 004A304F    add         esp,0FFFFFFF8
 004A3052    mov         dword ptr [ebp-8],edx
 004A3055    mov         dword ptr [ebp-4],eax
 004A3058    mov         eax,dword ptr [ebp-8]
 004A305B    cmp         word ptr [eax+4],1B
>004A3060    je          004A306D
 004A3062    mov         edx,dword ptr [ebp-8]
 004A3065    mov         eax,dword ptr [ebp-4]
 004A3068    call        TObject.Dispatch
 004A306D    pop         ecx
 004A306E    pop         ecx
 004A306F    pop         ebp
 004A3070    ret
end;*}

//004A3278
{*procedure sub_004A3278(?:?);
begin
 004A3278    push        ebp
 004A3279    mov         ebp,esp
 004A327B    push        ecx
 004A327C    mov         dword ptr [ebp-4],eax
 004A327F    mov         eax,dword ptr [ebp-4]
 004A3282    mov         dword ptr [eax+2C8],4A3074
 004A328C    mov         edx,dword ptr [ebp-4]
 004A328F    mov         ecx,dword ptr [ebp-4]
 004A3292    mov         dword ptr [ecx+2CC],edx
 004A3298    mov         eax,dword ptr [ebp-4]
 004A329B    mov         dword ptr [eax+290],4A3180
 004A32A5    mov         edx,dword ptr [ebp-4]
 004A32A8    mov         ecx,dword ptr [ebp-4]
 004A32AB    mov         dword ptr [ecx+294],edx
 004A32B1    mov         eax,dword ptr [ebp-4]
 004A32B4    mov         dword ptr [eax+1D8],4A31F4
 004A32BE    mov         edx,dword ptr [ebp-4]
 004A32C1    mov         ecx,dword ptr [ebp-4]
 004A32C4    mov         dword ptr [ecx+1DC],edx
 004A32CA    mov         eax,dword ptr [ebp-4]
 004A32CD    mov         dword ptr [eax+2C0],4A324C
 004A32D7    mov         edx,dword ptr [ebp-4]
 004A32DA    mov         ecx,dword ptr [ebp-4]
 004A32DD    mov         dword ptr [ecx+2C4],edx
 004A32E3    pop         ecx
 004A32E4    pop         ebp
 004A32E5    ret
end;*}

//004A32E8
constructor IdrDfmLoader.Create(AOwner:TComponent);
begin
{*
 004A32E8    push        ebp
 004A32E9    mov         ebp,esp
 004A32EB    add         esp,0FFFFFFD0
 004A32EE    mov         byte ptr [ebp-8],dl
 004A32F1    test        dl,dl
>004A32F3    jle         004A32FA
 004A32F5    call        0067EF6C
 004A32FA    mov         dword ptr [ebp-30],ecx
 004A32FD    mov         byte ptr [ebp-29],dl
 004A3300    mov         dword ptr [ebp-4],eax
 004A3303    mov         eax,6C0EA8
 004A3308    call        0066FECC
 004A330D    mov         word ptr [ebp-18],8
 004A3313    mov         ecx,dword ptr [ebp-30]
 004A3316    xor         edx,edx
 004A3318    mov         eax,dword ptr [ebp-4]
 004A331B    call        TComponent.Create
 004A3320    add         dword ptr [ebp-0C],4
 004A3324    mov         eax,dword ptr [ebp-4]
 004A3327    add         eax,3C;IdrDfmLoader.?f3C:?
 004A332A    call        00401EA8
 004A332F    inc         dword ptr [ebp-0C]
 004A3332    mov         edx,dword ptr [ebp-4]
 004A3335    xor         ecx,ecx
 004A3337    mov         dword ptr [edx+40],ecx;IdrDfmLoader.?f40:dword
 004A333A    mov         eax,dword ptr [ebp-4]
 004A333D    xor         edx,edx
 004A333F    mov         dword ptr [eax+30],edx;IdrDfmLoader.?f30:dword
 004A3342    mov         ecx,dword ptr [ebp-4]
 004A3345    xor         eax,eax
 004A3347    mov         dword ptr [ecx+34],eax
 004A334A    mov         ecx,dword ptr ds:[6C15EC];TComponentEvents
 004A3350    mov         dl,1
 004A3352    mov         eax,[006425DC];TCollection
 004A3357    call        TCollection.Create;TCollection.Create
 004A335C    mov         edx,dword ptr [ebp-4]
 004A335F    mov         dword ptr [edx+38],eax;IdrDfmLoader.?f38:TCollection
 004A3362    mov         ecx,dword ptr [ebp-28]
 004A3365    mov         dword ptr fs:[0],ecx
 004A336C    mov         eax,dword ptr [ebp-4]
 004A336F    mov         dl,byte ptr [ebp-29]
 004A3372    test        dl,dl
>004A3374    je          004A337B
 004A3376    call        0067EF79
 004A337B    mov         esp,ebp
 004A337D    pop         ebp
 004A337E    ret
*}
end;

//004A3380
destructor IdrDfmLoader.Destroy;
begin
{*
 004A3380    push        ebp
 004A3381    mov         ebp,esp
 004A3383    add         esp,0FFFFFFCC
 004A3386    call        0067EF81
 004A338B    mov         byte ptr [ebp-31],dl
 004A338E    mov         dword ptr [ebp-4],eax
 004A3391    mov         eax,6C0EDC
 004A3396    call        0066FECC
 004A339B    mov         dword ptr [ebp-14],5
 004A33A2    mov         dl,byte ptr [ebp-31]
 004A33A5    test        dl,dl
>004A33A7    jl          004A3413
 004A33A9    mov         word ptr [ebp-20],8
 004A33AF    mov         ecx,dword ptr [ebp-4]
 004A33B2    mov         eax,dword ptr [ecx+38]
 004A33B5    test        eax,eax
>004A33B7    je          004A33EA
 004A33B9    mov         edx,dword ptr [ebp-4]
 004A33BC    mov         ecx,dword ptr [edx+38]
 004A33BF    mov         dword ptr [ebp-0C],ecx
 004A33C2    mov         eax,dword ptr [ebp-0C]
 004A33C5    test        eax,eax
>004A33C7    je          004A33EA
 004A33C9    mov         edx,dword ptr [ebp-0C]
 004A33CC    mov         ecx,dword ptr [edx]
 004A33CE    mov         dword ptr [ebp-8],ecx
 004A33D1    mov         word ptr [ebp-20],20
 004A33D7    mov         edx,3
 004A33DC    mov         eax,dword ptr [ebp-0C]
 004A33DF    mov         ecx,dword ptr [eax]
 004A33E1    call        dword ptr [ecx-4]
 004A33E4    mov         word ptr [ebp-20],14
 004A33EA    mov         eax,dword ptr [ebp-4]
 004A33ED    xor         edx,edx
 004A33EF    mov         dword ptr [eax+38],edx
 004A33F2    dec         dword ptr [ebp-14]
 004A33F5    mov         eax,dword ptr [ebp-4]
 004A33F8    add         eax,3C
 004A33FB    mov         edx,2
 004A3400    call        0067DCA0
 004A3405    sub         dword ptr [ebp-14],4
 004A3409    xor         edx,edx
 004A340B    mov         eax,dword ptr [ebp-4]
 004A340E    call        TComponent.Destroy
 004A3413    mov         ecx,dword ptr [ebp-30]
 004A3416    mov         dword ptr fs:[0],ecx
 004A341D    mov         al,byte ptr [ebp-31]
 004A3420    test        al,al
>004A3422    jle         004A342C
 004A3424    mov         eax,dword ptr [ebp-4]
 004A3427    call        0067EF74
 004A342C    mov         esp,ebp
 004A342E    pop         ebp
 004A342F    ret
*}
end;

//004A3430
{*procedure sub_004A3430(?:?; ?:?; ?:Pointer; ?:?);
begin
 004A3430    push        ebp
 004A3431    mov         ebp,esp
 004A3433    add         esp,0FFFFFE90
 004A3439    push        ebx
 004A343A    push        esi
 004A343B    push        edi
 004A343C    mov         dword ptr [ebp-64],ecx
 004A343F    mov         dword ptr [ebp-60],edx
 004A3442    mov         dword ptr [ebp-5C],eax
 004A3445    mov         eax,6C0FB8
 004A344A    call        0066FECC
 004A344F    mov         edx,dword ptr [ebp-5C]
 004A3452    xor         ecx,ecx
 004A3454    mov         dword ptr [edx+40],ecx
 004A3457    xor         ecx,ecx
 004A3459    xor         edx,edx
 004A345B    mov         eax,dword ptr [ebp-60]
 004A345E    mov         ebx,dword ptr [eax]
 004A3460    call        dword ptr [ebx+10]
 004A3463    mov         eax,dword ptr [ebp-64]
 004A3466    test        eax,eax
>004A3468    je          004A34E5
 004A346A    mov         edx,dword ptr [ebp-64]
 004A346D    mov         ecx,dword ptr [edx+12]
 004A3470    test        ecx,ecx
>004A3472    je          004A34E5
 004A3474    xor         ecx,ecx
 004A3476    mov         dl,1
 004A3478    mov         eax,[006C1418];IdrDfmLoader
 004A347D    call        IdrDfmLoader.Create;IdrDfmLoader.Create
 004A3482    mov         edx,dword ptr [ebp-64]
 004A3485    mov         dword ptr [edx+22],eax
 004A3488    push        1
 004A348A    mov         eax,dword ptr [ebp-64]
 004A348D    mov         ecx,dword ptr [eax+12]
 004A3490    mov         eax,dword ptr [ebp-64]
 004A3493    mov         edx,dword ptr [eax+12]
 004A3496    mov         edx,dword ptr [edx+0E]
 004A3499    mov         eax,dword ptr [ebp-64]
 004A349C    mov         eax,dword ptr [eax+22]
 004A349F    call        004A3430
 004A34A4    mov         edx,dword ptr [ebp-5C]
 004A34A7    mov         dword ptr [edx+40],eax
 004A34AA    mov         ecx,dword ptr [ebp-64]
 004A34AD    mov         eax,dword ptr [ecx+22]
 004A34B0    mov         dword ptr [ebp-0C],eax
 004A34B3    mov         edx,dword ptr [ebp-0C]
 004A34B6    test        edx,edx
>004A34B8    je          004A34DB
 004A34BA    mov         ecx,dword ptr [ebp-0C]
 004A34BD    mov         eax,dword ptr [ecx]
 004A34BF    mov         dword ptr [ebp-8],eax
 004A34C2    mov         word ptr [ebp-48],14
 004A34C8    mov         edx,3
 004A34CD    mov         eax,dword ptr [ebp-0C]
 004A34D0    mov         ecx,dword ptr [eax]
 004A34D2    call        dword ptr [ecx-4]
 004A34D5    mov         word ptr [ebp-48],8
 004A34DB    mov         edx,dword ptr [ebp-64]
 004A34DE    xor         eax,eax
 004A34E0    mov         dword ptr [edx+22],eax
>004A34E3    jmp         004A3501
 004A34E5    push        1
 004A34E7    mov         edx,dword ptr ds:[6E9DCC];^Application:TApplication
 004A34ED    mov         ecx,dword ptr [edx]
 004A34EF    mov         dl,1
 004A34F1    mov         eax,[006C14A4];IdrDfmForm
 004A34F6    call        004A0988
 004A34FB    mov         ecx,dword ptr [ebp-5C]
 004A34FE    mov         dword ptr [ecx+40],eax
 004A3501    xor         ecx,ecx
 004A3503    xor         edx,edx
 004A3505    mov         eax,dword ptr [ebp-60]
 004A3508    mov         ebx,dword ptr [eax]
 004A350A    call        dword ptr [ebx+10]
 004A350D    push        1000
 004A3512    mov         ecx,dword ptr [ebp-60]
 004A3515    mov         dl,1
 004A3517    mov         eax,[006C166C];IdrDfmReader
 004A351C    call        004A0680
 004A3521    mov         dword ptr [ebp-68],eax
 004A3524    mov         eax,dword ptr [ebp-68]
 004A3527    mov         dword ptr [eax+50],4A3A08
 004A352E    mov         edx,dword ptr [ebp-68]
 004A3531    mov         ecx,dword ptr [ebp-5C]
 004A3534    mov         dword ptr [edx+54],ecx
 004A3537    mov         eax,dword ptr [ebp-68]
 004A353A    mov         dword ptr [eax+60],4A3AC4
 004A3541    mov         edx,dword ptr [ebp-68]
 004A3544    mov         ecx,dword ptr [ebp-5C]
 004A3547    mov         dword ptr [edx+64],ecx
 004A354A    mov         eax,dword ptr [ebp-68]
 004A354D    mov         dword ptr [eax+68],4A3BF8
 004A3554    mov         edx,dword ptr [ebp-68]
 004A3557    mov         ecx,dword ptr [ebp-5C]
 004A355A    mov         dword ptr [edx+6C],ecx
 004A355D    mov         eax,dword ptr [ebp-68]
 004A3560    mov         dword ptr [eax+38],4A3C18
 004A3567    mov         edx,dword ptr [ebp-68]
 004A356A    mov         ecx,dword ptr [ebp-5C]
 004A356D    mov         dword ptr [edx+3C],ecx
 004A3570    mov         eax,dword ptr [ebp-68]
 004A3573    mov         dword ptr [eax+58],4A3D34
 004A357A    mov         edx,dword ptr [ebp-68]
 004A357D    mov         ecx,dword ptr [ebp-5C]
 004A3580    mov         dword ptr [edx+5C],ecx
 004A3583    mov         eax,dword ptr [ebp-68]
 004A3586    mov         dword ptr [eax+40],4A3E5C
 004A358D    mov         edx,dword ptr [ebp-68]
 004A3590    mov         ecx,dword ptr [ebp-5C]
 004A3593    mov         dword ptr [edx+44],ecx
 004A3596    mov         eax,dword ptr [ebp-68]
 004A3599    mov         dword ptr [eax+48],4A4078
 004A35A0    mov         edx,dword ptr [ebp-68]
 004A35A3    mov         ecx,dword ptr [ebp-5C]
 004A35A6    mov         dword ptr [edx+4C],ecx
 004A35A9    mov         eax,dword ptr [ebp-5C]
 004A35AC    mov         eax,dword ptr [eax+38]
 004A35AF    call        00646560
 004A35B4    mov         edx,dword ptr [ebp-5C]
 004A35B7    mov         dword ptr [edx+34],eax
 004A35BA    mov         ecx,dword ptr [ebp-5C]
 004A35BD    mov         eax,dword ptr [ecx+40]
 004A35C0    mov         edx,dword ptr [ebp-5C]
 004A35C3    mov         ecx,dword ptr [edx+34]
 004A35C6    mov         dword ptr [ecx+0C],eax
 004A35C9    lea         eax,[ebp-69]
 004A35CC    call        0049D4C4
 004A35D1    mov         word ptr [ebp-48],20
 004A35D7    mov         eax,dword ptr [ebp-68]
 004A35DA    call        0064BAFC
 004A35DF    lea         ecx,[ebp-70]
 004A35E2    lea         edx,[ebp-69]
 004A35E5    mov         eax,dword ptr [ebp-68]
 004A35E8    mov         ebx,dword ptr [eax]
 004A35EA    call        dword ptr [ebx+24]
 004A35ED    mov         word ptr [ebp-48],2C
 004A35F3    lea         eax,[ebp-10]
 004A35F6    call        00401EA8
 004A35FB    mov         edx,eax
 004A35FD    inc         dword ptr [ebp-3C]
 004A3600    mov         eax,dword ptr [ebp-68]
 004A3603    call        TReader.ReadStr
 004A3608    lea         edx,[ebp-10]
 004A360B    mov         ecx,dword ptr [ebp-5C]
 004A360E    mov         eax,dword ptr [ecx+40]
 004A3611    add         eax,2F4
 004A3616    call        0067DCD0
 004A361B    dec         dword ptr [ebp-3C]
 004A361E    lea         eax,[ebp-10]
 004A3621    mov         edx,2
 004A3626    call        0067DCA0
 004A362B    mov         word ptr [ebp-48],38
 004A3631    lea         eax,[ebp-14]
 004A3634    call        00401EA8
 004A3639    mov         edx,eax
 004A363B    inc         dword ptr [ebp-3C]
 004A363E    mov         eax,dword ptr [ebp-68]
 004A3641    call        TReader.ReadStr
 004A3646    lea         edx,[ebp-14]
 004A3649    mov         ecx,dword ptr [ebp-5C]
 004A364C    mov         eax,dword ptr [ecx+40]
 004A364F    add         eax,2F0
 004A3654    call        0067DCD0
 004A3659    dec         dword ptr [ebp-3C]
 004A365C    lea         eax,[ebp-14]
 004A365F    mov         edx,2
 004A3664    call        0067DCA0
 004A3669    xor         edx,edx
 004A366B    mov         eax,dword ptr [ebp-68]
 004A366E    call        0064BD54
 004A3673    mov         ecx,dword ptr [ebp-5C]
 004A3676    mov         edx,dword ptr [ecx+40]
 004A3679    mov         eax,dword ptr [ebp-68]
 004A367C    call        0064B700
 004A3681    mov         ecx,dword ptr [ebp-5C]
 004A3684    mov         eax,dword ptr [ecx+40]
 004A3687    mov         dl,1
 004A3689    mov         ecx,dword ptr [eax]
 004A368B    call        dword ptr [ecx+64]
 004A368E    mov         eax,dword ptr [ebp-5C]
 004A3691    mov         eax,dword ptr [eax+40]
 004A3694    xor         edx,edx
 004A3696    call        TCustomForm.SetVisible
 004A369B    mov         ecx,dword ptr [ebp-5C]
 004A369E    mov         eax,dword ptr [ecx+40]
 004A36A1    mov         dl,4
 004A36A3    call        TForm.SetPosition
 004A36A8    mov         ecx,dword ptr [ebp-5C]
 004A36AB    mov         eax,dword ptr [ecx+38]
 004A36AE    mov         edx,dword ptr [ebp-5C]
 004A36B1    mov         ecx,dword ptr [edx+40]
 004A36B4    mov         dword ptr [ecx+2FC],eax
 004A36BA    mov         eax,dword ptr [ebp-5C]
 004A36BD    mov         edx,dword ptr [eax+40]
 004A36C0    mov         ecx,dword ptr [ebp-5C]
 004A36C3    mov         eax,dword ptr [ecx+44]
 004A36C6    mov         dword ptr [edx+308],eax
 004A36CC    mov         eax,dword ptr [ecx+48]
 004A36CF    mov         dword ptr [edx+30C],eax
 004A36D5    mov         edx,dword ptr [ebp-5C]
 004A36D8    mov         eax,dword ptr [edx+40]
 004A36DB    call        004A3278
 004A36E0    mov         edx,dword ptr [ebp-5C]
 004A36E3    mov         eax,dword ptr [edx+40]
 004A36E6    xor         ecx,ecx
 004A36E8    xor         edx,edx
 004A36EA    call        004A0C30
 004A36EF    mov         al,byte ptr [ebp+8]
 004A36F2    test        al,al
>004A36F4    jne         004A3701
 004A36F6    mov         edx,dword ptr [ebp-5C]
 004A36F9    mov         eax,dword ptr [edx+40]
 004A36FC    call        004A0CF0
 004A3701    mov         edx,dword ptr [ebp-5C]
 004A3704    mov         ecx,dword ptr [edx+40]
 004A3707    mov         al,byte ptr [ecx+2E0]
 004A370D    test        al,al
>004A370F    je          004A371E
 004A3711    mov         edx,dword ptr [ebp-5C]
 004A3714    mov         eax,dword ptr [edx+40]
 004A3717    mov         dl,0DE
 004A3719    call        TForm.SetAlphaBlendValue
 004A371E    mov         ecx,dword ptr [ebp-5C]
 004A3721    mov         eax,dword ptr [ecx+40]
 004A3724    xor         edx,edx
 004A3726    mov         ecx,dword ptr [eax]
 004A3728    call        dword ptr [ecx+5C]
 004A372B    mov         eax,dword ptr [ebp-5C]
 004A372E    mov         eax,dword ptr [eax+40]
 004A3731    xor         edx,edx
 004A3733    call        TForm.SetWindowState
 004A3738    mov         ecx,dword ptr [ebp-5C]
 004A373B    mov         eax,dword ptr [ecx+40]
 004A373E    mov         dl,3
 004A3740    call        TForm.SetFormStyle
 004A3745    mov         ecx,dword ptr [ebp-5C]
 004A3748    mov         eax,dword ptr [ecx+40]
 004A374B    add         eax,2EC
 004A3750    call        004A3938
 004A3755    mov         edx,dword ptr [ebp-5C]
 004A3758    mov         ecx,dword ptr [edx+40]
 004A375B    mov         eax,dword ptr [ecx+74]
 004A375E    xor         ecx,ecx
 004A3760    mov         edx,3
 004A3765    call        TSizeConstraints.SetMaxHeight
 004A376A    mov         eax,dword ptr [ebp-5C]
 004A376D    mov         edx,dword ptr [eax+40]
 004A3770    mov         eax,dword ptr [edx+74]
 004A3773    xor         ecx,ecx
 004A3775    mov         edx,2
 004A377A    call        TSizeConstraints.SetMaxHeight
 004A377F    mov         eax,dword ptr [ebp-5C]
 004A3782    mov         edx,dword ptr [eax+40]
 004A3785    mov         eax,dword ptr [edx+74]
 004A3788    xor         ecx,ecx
 004A378A    mov         edx,1
 004A378F    call        TSizeConstraints.SetMaxHeight
 004A3794    mov         eax,dword ptr [ebp-5C]
 004A3797    mov         edx,dword ptr [eax+40]
 004A379A    mov         eax,dword ptr [edx+74]
 004A379D    xor         ecx,ecx
 004A379F    xor         edx,edx
 004A37A1    call        TSizeConstraints.SetMaxHeight
 004A37A6    mov         word ptr [ebp-48],44
 004A37AC    mov         edx,6BEB0E
 004A37B1    lea         eax,[ebp-18]
 004A37B4    call        0067DAB4
 004A37B9    mov         edx,eax
 004A37BB    inc         dword ptr [ebp-3C]
 004A37BE    mov         eax,dword ptr [ebp-5C]
 004A37C1    mov         eax,dword ptr [eax+40]
 004A37C4    add         eax,23C
 004A37C9    call        0067DCD0
 004A37CE    dec         dword ptr [ebp-3C]
 004A37D1    lea         eax,[ebp-18]
 004A37D4    mov         edx,2
 004A37D9    call        0067DCA0
 004A37DE    mov         ecx,dword ptr [ebp-5C]
 004A37E1    xor         eax,eax
 004A37E3    mov         dword ptr [ecx+38],eax
 004A37E6    mov         word ptr [ebp-48],0
>004A37EC    jmp         004A38EF
 004A37F1    mov         word ptr [ebp-48],50
 004A37F7    lea         edx,[ebp-170]
 004A37FD    mov         eax,dword ptr [ebp-4]
 004A3800    call        @System@TObject@ClassName$qqrv
 004A3805    lea         edx,[ebp-170]
 004A380B    push        edx
 004A380C    lea         eax,[ebp-1C]
 004A380F    call        00401EA8
 004A3814    mov         edx,eax
 004A3816    inc         dword ptr [ebp-3C]
 004A3819    pop         eax
 004A381A    call        004A3978
 004A381F    lea         edx,[ebp-1C]
 004A3822    push        edx
 004A3823    lea         eax,[ebp-20]
 004A3826    call        00401EA8
 004A382B    mov         ecx,eax
 004A382D    inc         dword ptr [ebp-3C]
 004A3830    mov         eax,6BEB0F
 004A3835    pop         edx
 004A3836    call        0067E37C
 004A383B    lea         ecx,[ebp-20]
 004A383E    push        ecx
 004A383F    lea         eax,[ebp-28]
 004A3842    call        00401EA8
 004A3847    push        eax
 004A3848    inc         dword ptr [ebp-3C]
 004A384B    mov         edx,6BEB20
 004A3850    lea         eax,[ebp-24]
 004A3853    call        0067DAB4
 004A3858    inc         dword ptr [ebp-3C]
 004A385B    lea         edx,[ebp-24]
 004A385E    pop         ecx
 004A385F    pop         eax
 004A3860    call        0067DCF8
 004A3865    lea         edx,[ebp-28]
 004A3868    push        edx
 004A3869    lea         eax,[ebp-2C]
 004A386C    call        00401EA8
 004A3871    mov         ecx,eax
 004A3873    inc         dword ptr [ebp-3C]
 004A3876    mov         edx,dword ptr [ebp-4]
 004A3879    add         edx,4
 004A387C    pop         eax
 004A387D    call        0067DCF8
 004A3882    lea         eax,[ebp-2C]
 004A3885    mov         eax,dword ptr [eax]
 004A3887    call        005ECEB0
 004A388C    dec         dword ptr [ebp-3C]
 004A388F    lea         eax,[ebp-2C]
 004A3892    mov         edx,2
 004A3897    call        0067DCA0
 004A389C    dec         dword ptr [ebp-3C]
 004A389F    lea         eax,[ebp-28]
 004A38A2    mov         edx,2
 004A38A7    call        0067DCA0
 004A38AC    dec         dword ptr [ebp-3C]
 004A38AF    lea         eax,[ebp-24]
 004A38B2    mov         edx,2
 004A38B7    call        0067DCA0
 004A38BC    dec         dword ptr [ebp-3C]
 004A38BF    lea         eax,[ebp-20]
 004A38C2    mov         edx,2
 004A38C7    call        0067DCA0
 004A38CC    dec         dword ptr [ebp-3C]
 004A38CF    lea         eax,[ebp-1C]
 004A38D2    mov         edx,2
 004A38D7    call        0067DCA0
 004A38DC    mov         ecx,dword ptr [ebp-5C]
 004A38DF    xor         eax,eax
 004A38E1    mov         dword ptr [ecx+40],eax
 004A38E4    mov         word ptr [ebp-48],28
 004A38EA    call        0067AF32
 004A38EF    mov         edx,dword ptr [ebp-68]
 004A38F2    mov         dword ptr [ebp-34],edx
 004A38F5    mov         ecx,dword ptr [ebp-34]
 004A38F8    test        ecx,ecx
>004A38FA    je          004A391D
 004A38FC    mov         eax,dword ptr [ebp-34]
 004A38FF    mov         edx,dword ptr [eax]
 004A3901    mov         dword ptr [ebp-30],edx
 004A3904    mov         word ptr [ebp-48],68
 004A390A    mov         edx,3
 004A390F    mov         eax,dword ptr [ebp-34]
 004A3912    mov         ecx,dword ptr [eax]
 004A3914    call        dword ptr [ecx-4]
 004A3917    mov         word ptr [ebp-48],5C
 004A391D    mov         eax,dword ptr [ebp-5C]
 004A3920    mov         eax,dword ptr [eax+40]
 004A3923    mov         edx,dword ptr [ebp-58]
 004A3926    mov         dword ptr fs:[0],edx
 004A392D    pop         edi
 004A392E    pop         esi
 004A392F    pop         ebx
 004A3930    mov         esp,ebp
 004A3932    pop         ebp
 004A3933    ret         4
end;*}

//004A3938
{*function sub_004A3938(?:?):?;
begin
 004A3938    push        ebp
 004A3939    mov         ebp,esp
 004A393B    push        ecx
 004A393C    mov         dword ptr [ebp-4],eax
 004A393F    push        1
 004A3941    push        0
 004A3943    push        dword ptr [ebp-4]
 004A3946    call        0066F904
 004A394B    add         esp,0C
 004A394E    mov         eax,dword ptr [ebp-4]
 004A3951    pop         ecx
 004A3952    pop         ebp
 004A3953    ret
end;*}

//004A3978
{*procedure sub_004A3978(?:?; ?:?);
begin
 004A3978    push        ebp
 004A3979    mov         ebp,esp
 004A397B    add         esp,0FFFFFFD0
 004A397E    mov         dword ptr [ebp-8],edx
 004A3981    mov         dword ptr [ebp-30],eax
 004A3984    mov         eax,6C13F8
 004A3989    call        0066FECC
 004A398E    mov         word ptr [ebp-1C],8
 004A3994    mov         edx,dword ptr [ebp-30]
 004A3997    xor         ecx,ecx
 004A3999    mov         cl,byte ptr [edx]
 004A399B    mov         edx,dword ptr [ebp-30]
 004A399E    inc         edx
 004A399F    lea         eax,[ebp-4]
 004A39A2    call        0067DB28
 004A39A7    mov         edx,eax
 004A39A9    inc         dword ptr [ebp-10]
 004A39AC    mov         eax,dword ptr [ebp-8]
 004A39AF    call        0067DCD0
 004A39B4    mov         eax,dword ptr [ebp-8]
 004A39B7    mov         word ptr [ebp-1C],14
 004A39BD    push        eax
 004A39BE    dec         dword ptr [ebp-10]
 004A39C1    lea         eax,[ebp-4]
 004A39C4    mov         edx,2
 004A39C9    call        0067DCA0
 004A39CE    pop         eax
 004A39CF    mov         word ptr [ebp-1C],8
 004A39D5    inc         dword ptr [ebp-10]
 004A39D8    mov         edx,dword ptr [ebp-2C]
 004A39DB    mov         dword ptr fs:[0],edx
 004A39E2    mov         esp,ebp
 004A39E4    pop         ebp
 004A39E5    ret
end;*}

//004A410C
{*procedure sub_004A410C(?:?);
begin
 004A410C    push        ebp
 004A410D    mov         ebp,esp
 004A410F    add         esp,0FFFFFFD4
 004A4112    push        ebx
 004A4113    push        esi
 004A4114    push        edi
 004A4115    mov         dword ptr [ebp-2C],edx
 004A4118    mov         dword ptr [ebp-28],eax
 004A411B    mov         eax,6C12D4
 004A4120    call        0066FECC
 004A4125    mov         eax,dword ptr [ebp-28]
 004A4128    call        005F7800
 004A412D    mov         word ptr [ebp-14],8
 004A4133    mov         edx,18
 004A4138    mov         eax,dword ptr [ebp-28]
 004A413B    call        TControl.SetWidth
 004A4140    mov         edx,18
 004A4145    mov         eax,dword ptr [ebp-28]
 004A4148    call        TControl.SetHeight
 004A414D    mov         edx,dword ptr [ebp-2C]
 004A4150    mov         eax,dword ptr [ebp-28]
 004A4153    call        005F6EC4
 004A4158    mov         word ptr [ebp-14],0
 004A415E    mov         eax,dword ptr [ebp-28]
 004A4161    call        005F7814
 004A4166    cmp         word ptr [ebp-12],0
>004A416B    je          004A416E
 004A416D    ret
 004A416E    mov         edx,dword ptr [ebp-28]
 004A4171    mov         ecx,dword ptr [edx+48];IdrDfmDefaultControl.Width:Integer
 004A4174    test        ecx,ecx
>004A4176    jg          004A4185
 004A4178    mov         edx,18
 004A417D    mov         eax,dword ptr [ebp-28]
 004A4180    call        TControl.SetWidth
 004A4185    mov         ecx,dword ptr [ebp-28]
 004A4188    mov         eax,dword ptr [ecx+4C];IdrDfmDefaultControl.Height:Integer
 004A418B    test        eax,eax
>004A418D    jg          004A419C
 004A418F    mov         edx,18
 004A4194    mov         eax,dword ptr [ebp-28]
 004A4197    call        TControl.SetHeight
 004A419C    mov         edx,dword ptr [ebp-24]
 004A419F    mov         dword ptr fs:[0],edx
 004A41A6    mov         edi,dword ptr [ebp-38]
 004A41A9    mov         esi,dword ptr [ebp-34]
 004A41AC    mov         ebx,dword ptr [ebp-30]
 004A41AF    mov         esp,ebp
 004A41B1    pop         ebp
 004A41B2    ret
end;*}

//004A41B4
procedure IdrDfmDefaultControl.Loaded;
begin
{*
 004A41B4    push        ebp
 004A41B5    mov         ebp,esp
 004A41B7    push        ecx
 004A41B8    mov         dword ptr [ebp-4],eax
 004A41BB    mov         eax,dword ptr [ebp-4]
 004A41BE    call        TControl.Loaded
 004A41C3    xor         edx,edx
 004A41C5    mov         eax,dword ptr [ebp-4]
 004A41C8    call        TChart.SetBorderStyle
 004A41CD    mov         edx,dword ptr [ebp-4]
 004A41D0    mov         ecx,dword ptr [edx+70];IdrDfmDefaultControl.FColor:TColor
 004A41D3    cmp         ecx,1FFFFFFF
>004A41D9    jne         004A41E8
 004A41DB    mov         edx,8000000F
 004A41E0    mov         eax,dword ptr [ebp-4]
 004A41E3    call        TControl.SetColor
 004A41E8    pop         ecx
 004A41E9    pop         ebp
 004A41EA    ret
*}
end;

//004A41EC
procedure sub_004A41EC;
begin
{*
 004A41EC    push        ebp
 004A41ED    mov         ebp,esp
 004A41EF    add         esp,0FFFFFFEC
 004A41F2    mov         dword ptr [ebp-4],eax
 004A41F5    mov         eax,dword ptr [ebp-4]
 004A41F8    mov         edx,dword ptr [eax+208];IdrDfmDefaultControl...............................................
 004A41FE    mov         eax,dword ptr [edx+14];TCanvas.Brush:TBrush
 004A4201    mov         edx,dword ptr [ebp-4]
 004A4204    mov         edx,dword ptr [edx+70];IdrDfmDefaultControl.FColor:TColor
 004A4207    call        TBrush.SetColor
 004A420C    mov         eax,dword ptr [ebp-4]
 004A420F    mov         ecx,dword ptr [eax+208];IdrDfmDefaultControl...............................................
 004A4215    mov         eax,dword ptr [ecx+14];TCanvas.Brush:TBrush
 004A4218    mov         dl,1
 004A421A    call        TBrush.SetStyle
 004A421F    mov         ecx,dword ptr [ebp-4]
 004A4222    mov         eax,dword ptr [ecx+208]
 004A4228    mov         eax,dword ptr [eax+10]
 004A422B    mov         edx,808080
 004A4230    call        TPen.SetColor
 004A4235    mov         ecx,dword ptr [ebp-4]
 004A4238    mov         eax,dword ptr [ecx+208]
 004A423E    mov         eax,dword ptr [eax+10]
 004A4241    mov         dl,2
 004A4243    call        TPen.SetStyle
 004A4248    lea         edx,[ebp-14]
 004A424B    mov         eax,dword ptr [ebp-4]
 004A424E    mov         ecx,dword ptr [eax]
 004A4250    call        dword ptr [ecx+44];IdrDfmDefaultControl.sub_005FC204
 004A4253    lea         edx,[ebp-14]
 004A4256    mov         eax,dword ptr [ebp-4]
 004A4259    mov         eax,dword ptr [eax+208];IdrDfmDefaultControl...............................................
 004A425F    call        005C147C
 004A4264    mov         esp,ebp
 004A4266    pop         ebp
 004A4267    ret
*}
end;

//004A4994
{*procedure IdrDfmForm.Dispatch(?:?);
begin
 004A4994    push        ebp
 004A4995    mov         ebp,esp
 004A4997    add         esp,0FFFFFFF8
 004A499A    mov         dword ptr [ebp-8],edx
 004A499D    mov         dword ptr [ebp-4],eax
 004A49A0    mov         eax,dword ptr [ebp-8]
 004A49A3    mov         edx,dword ptr [eax]
 004A49A5    sub         edx,0B005
>004A49AB    jne         004A49BA
 004A49AD    mov         edx,dword ptr [ebp-8]
 004A49B0    mov         eax,dword ptr [ebp-4]
 004A49B3    call        004A304C
>004A49B8    jmp         004A49C5
 004A49BA    mov         edx,dword ptr [ebp-8]
 004A49BD    mov         eax,dword ptr [ebp-4]
 004A49C0    call        TObject.Dispatch
 004A49C5    pop         ecx
 004A49C6    pop         ecx
 004A49C7    pop         ebp
 004A49C8    ret
end;*}

//004A4A20
destructor IdrDfmReader.Destroy;
begin
{*
 004A4A20    push        ebp
 004A4A21    mov         ebp,esp
 004A4A23    add         esp,0FFFFFFD4
 004A4A26    call        0067EF81
 004A4A2B    mov         byte ptr [ebp-29],dl
 004A4A2E    mov         dword ptr [ebp-28],eax
 004A4A31    mov         eax,6C1D94
 004A4A36    call        0066FECC
 004A4A3B    mov         dl,byte ptr [ebp-29]
 004A4A3E    test        dl,dl
>004A4A40    jl          004A4A50
 004A4A42    sub         dword ptr [ebp-8],4
 004A4A46    xor         edx,edx
 004A4A48    mov         eax,dword ptr [ebp-28]
 004A4A4B    call        TReader.Destroy
 004A4A50    mov         ecx,dword ptr [ebp-24]
 004A4A53    mov         dword ptr fs:[0],ecx
 004A4A5A    mov         al,byte ptr [ebp-29]
 004A4A5D    test        al,al
>004A4A5F    jle         004A4A69
 004A4A61    mov         eax,dword ptr [ebp-28]
 004A4A64    call        0067EF74
 004A4A69    mov         esp,ebp
 004A4A6B    pop         ebp
 004A4A6C    ret
*}
end;

//004A4AA0
destructor IdrDfmDefaultControl.Destroy;
begin
{*
 004A4AA0    push        ebp
 004A4AA1    mov         ebp,esp
 004A4AA3    add         esp,0FFFFFFD4
 004A4AA6    call        0067EF81
 004A4AAB    mov         byte ptr [ebp-29],dl
 004A4AAE    mov         dword ptr [ebp-28],eax
 004A4AB1    mov         eax,6C1D9C
 004A4AB6    call        0066FECC
 004A4ABB    mov         dl,byte ptr [ebp-29]
 004A4ABE    test        dl,dl
>004A4AC0    jl          004A4AFA
 004A4AC2    dec         dword ptr [ebp-8]
 004A4AC5    mov         eax,dword ptr [ebp-28]
 004A4AC8    add         eax,224
 004A4ACD    mov         edx,2
 004A4AD2    call        0067DCA0
 004A4AD7    dec         dword ptr [ebp-8]
 004A4ADA    mov         eax,dword ptr [ebp-28]
 004A4ADD    add         eax,220
 004A4AE2    mov         edx,2
 004A4AE7    call        0067DCA0
 004A4AEC    sub         dword ptr [ebp-8],0D
 004A4AF0    xor         edx,edx
 004A4AF2    mov         eax,dword ptr [ebp-28]
 004A4AF5    call        004A6C80
 004A4AFA    mov         ecx,dword ptr [ebp-24]
 004A4AFD    mov         dword ptr fs:[0],ecx
 004A4B04    mov         al,byte ptr [ebp-29]
 004A4B07    test        al,al
>004A4B09    jle         004A4B13
 004A4B0B    mov         eax,dword ptr [ebp-28]
 004A4B0E    call        0067EF74
 004A4B13    mov         esp,ebp
 004A4B15    pop         ebp
 004A4B16    ret
*}
end;

//004A4B18
constructor IdrDfmDefaultControl.Create(AOwner:TComponent);
begin
{*
 004A4B18    push        ebp
 004A4B19    mov         ebp,esp
 004A4B1B    add         esp,0FFFFFFD0
 004A4B1E    mov         byte ptr [ebp-8],dl
 004A4B21    test        dl,dl
>004A4B23    jle         004A4B2A
 004A4B25    call        0067EF6C
 004A4B2A    mov         dword ptr [ebp-30],ecx
 004A4B2D    mov         byte ptr [ebp-29],dl
 004A4B30    mov         dword ptr [ebp-4],eax
 004A4B33    mov         eax,6C1DB4
 004A4B38    call        0066FECC
 004A4B3D    mov         word ptr [ebp-18],8
 004A4B43    mov         ecx,dword ptr [ebp-30]
 004A4B46    xor         edx,edx
 004A4B48    mov         eax,dword ptr [ebp-4]
 004A4B4B    call        TCustomPanel.Create
 004A4B50    add         dword ptr [ebp-0C],0C
 004A4B54    mov         edx,dword ptr [ebp-28]
 004A4B57    mov         dword ptr fs:[0],edx
 004A4B5E    mov         eax,dword ptr [ebp-4]
 004A4B61    mov         dl,byte ptr [ebp-29]
 004A4B64    test        dl,dl
>004A4B66    je          004A4B6D
 004A4B68    call        0067EF79
 004A4B6D    mov         esp,ebp
 004A4B6F    pop         ebp
 004A4B70    ret
*}
end;

//004A5124
procedure TCCalendar.Dispatch; stdcall;
begin
{*
 004A5124    push        ebp
 004A5125    mov         ebp,esp
 004A5127    add         esp,0FFFFFFF8
 004A512A    mov         dword ptr [ebp-8],edx
 004A512D    mov         dword ptr [ebp-4],eax
 004A5130    mov         eax,dword ptr [ebp-8]
 004A5133    mov         edx,dword ptr [eax]
 004A5135    sub         edx,5
>004A5138    jne         004A5147
 004A513A    mov         edx,dword ptr [ebp-8]
 004A513D    mov         eax,dword ptr [ebp-4]
 004A5140    call        @TCCalendar@WMSize$qqrr16Messages@TWMSize
>004A5145    jmp         004A5152
 004A5147    mov         edx,dword ptr [ebp-8]
 004A514A    mov         eax,dword ptr [ebp-4]
 004A514D    call        TObject.Dispatch
 004A5152    pop         ecx
 004A5153    pop         ecx
 004A5154    pop         ebp
 004A5155    ret
*}
end;

//004A5158
destructor TCCalendar.Destroy;
begin
{*
 004A5158    push        ebp
 004A5159    mov         ebp,esp
 004A515B    add         esp,0FFFFFFD4
 004A515E    call        0067EF81
 004A5163    mov         byte ptr [ebp-29],dl
 004A5166    mov         dword ptr [ebp-28],eax
 004A5169    mov         eax,6C1DC8
 004A516E    call        0066FECC
 004A5173    mov         dl,byte ptr [ebp-29]
 004A5176    test        dl,dl
>004A5178    jl          004A5188
 004A517A    sub         dword ptr [ebp-8],0C
 004A517E    xor         edx,edx
 004A5180    mov         eax,dword ptr [ebp-28]
 004A5183    call        TCustomGrid.Destroy
 004A5188    mov         ecx,dword ptr [ebp-24]
 004A518B    mov         dword ptr fs:[0],ecx
 004A5192    mov         al,byte ptr [ebp-29]
 004A5195    test        al,al
>004A5197    jle         004A51A1
 004A5199    mov         eax,dword ptr [ebp-28]
 004A519C    call        0067EF74
 004A51A1    mov         esp,ebp
 004A51A3    pop         ebp
 004A51A4    ret
*}
end;

//004A586C
destructor TCDirectoryOutline.Destroy;
begin
{*
 004A586C    push        ebp
 004A586D    mov         ebp,esp
 004A586F    add         esp,0FFFFFFD4
 004A5872    call        0067EF81
 004A5877    mov         byte ptr [ebp-29],dl
 004A587A    mov         dword ptr [ebp-28],eax
 004A587D    mov         eax,6C1DD0
 004A5882    call        0066FECC
 004A5887    mov         dl,byte ptr [ebp-29]
 004A588A    test        dl,dl
>004A588C    jl          004A58B1
 004A588E    dec         dword ptr [ebp-8]
 004A5891    mov         eax,dword ptr [ebp-28]
 004A5894    add         eax,302
 004A5899    mov         edx,2
 004A589E    call        0067DCA0
 004A58A3    sub         dword ptr [ebp-8],0E
 004A58A7    xor         edx,edx
 004A58A9    mov         eax,dword ptr [ebp-28]
 004A58AC    call        TCustomOutline.Destroy
 004A58B1    mov         ecx,dword ptr [ebp-24]
 004A58B4    mov         dword ptr fs:[0],ecx
 004A58BB    mov         al,byte ptr [ebp-29]
 004A58BE    test        al,al
>004A58C0    jle         004A58CA
 004A58C2    mov         eax,dword ptr [ebp-28]
 004A58C5    call        0067EF74
 004A58CA    mov         esp,ebp
 004A58CC    pop         ebp
 004A58CD    ret
*}
end;

//004A5E88
procedure TCSpinEdit.Dispatch; stdcall;
begin
{*
 004A5E88    push        ebp
 004A5E89    mov         ebp,esp
 004A5E8B    add         esp,0FFFFFFF8
 004A5E8E    mov         dword ptr [ebp-8],edx
 004A5E91    mov         dword ptr [ebp-4],eax
 004A5E94    mov         eax,dword ptr [ebp-8]
 004A5E97    mov         edx,dword ptr [eax]
 004A5E99    cmp         edx,302
>004A5E9F    jg          004A5EB2
>004A5EA1    je          004A5EE6
 004A5EA3    sub         edx,5
>004A5EA6    je          004A5EBF
 004A5EA8    sub         edx,2FB
>004A5EAE    je          004A5EF3
>004A5EB0    jmp         004A5F00
 004A5EB2    sub         edx,0B01A
>004A5EB8    je          004A5ECC
 004A5EBA    dec         edx
>004A5EBB    je          004A5ED9
>004A5EBD    jmp         004A5F00
 004A5EBF    mov         edx,dword ptr [ebp-8]
 004A5EC2    mov         eax,dword ptr [ebp-4]
 004A5EC5    call        @Cspin@TCSpinEdit@WMSize$qqrr16Messages@TWMSize
>004A5ECA    jmp         004A5F0B
 004A5ECC    mov         edx,dword ptr [ebp-8]
 004A5ECF    mov         eax,dword ptr [ebp-4]
 004A5ED2    call        @Cspin@TCSpinEdit@CMEnter$qqrr20Messages@TWMNoParams
>004A5ED7    jmp         004A5F0B
 004A5ED9    mov         edx,dword ptr [ebp-8]
 004A5EDC    mov         eax,dword ptr [ebp-4]
 004A5EDF    call        @Cspin@TCSpinEdit@CMExit$qqrr20Messages@TWMNoParams
>004A5EE4    jmp         004A5F0B
 004A5EE6    mov         edx,dword ptr [ebp-8]
 004A5EE9    mov         eax,dword ptr [ebp-4]
 004A5EEC    call        @Cspin@TCSpinEdit@WMPaste$qqrr20Messages@TWMNoParams
>004A5EF1    jmp         004A5F0B
 004A5EF3    mov         edx,dword ptr [ebp-8]
 004A5EF6    mov         eax,dword ptr [ebp-4]
 004A5EF9    call        @Cspin@TCSpinEdit@WMCut$qqrr20Messages@TWMNoParams
>004A5EFE    jmp         004A5F0B
 004A5F00    mov         edx,dword ptr [ebp-8]
 004A5F03    mov         eax,dword ptr [ebp-4]
 004A5F06    call        TObject.Dispatch
 004A5F0B    pop         ecx
 004A5F0C    pop         ecx
 004A5F0D    pop         ebp
 004A5F0E    ret
*}
end;

//004A6300
procedure TCSpinButton.Dispatch; stdcall;
begin
{*
 004A6300    push        ebp
 004A6301    mov         ebp,esp
 004A6303    add         esp,0FFFFFFF8
 004A6306    mov         dword ptr [ebp-8],edx
 004A6309    mov         dword ptr [ebp-4],eax
 004A630C    mov         eax,dword ptr [ebp-8]
 004A630F    mov         edx,dword ptr [eax]
 004A6311    sub         edx,5
>004A6314    je          004A6325
 004A6316    sub         edx,2
>004A6319    je          004A6332
 004A631B    dec         edx
>004A631C    je          004A633F
 004A631E    sub         edx,7F
>004A6321    je          004A634C
>004A6323    jmp         004A6359
 004A6325    mov         edx,dword ptr [ebp-8]
 004A6328    mov         eax,dword ptr [ebp-4]
 004A632B    call        @Cspin@TCSpinButton@WMSize$qqrr16Messages@TWMSize
>004A6330    jmp         004A6364
 004A6332    mov         edx,dword ptr [ebp-8]
 004A6335    mov         eax,dword ptr [ebp-4]
 004A6338    call        @Cspin@TCSpinButton@WMSetFocus$qqrr20Messages@TWMSetFocus
>004A633D    jmp         004A6364
 004A633F    mov         edx,dword ptr [ebp-8]
 004A6342    mov         eax,dword ptr [ebp-4]
 004A6345    call        @Cspin@TCSpinButton@WMKillFocus$qqrr21Messages@TWMKillFocus
>004A634A    jmp         004A6364
 004A634C    mov         edx,dword ptr [ebp-8]
 004A634F    mov         eax,dword ptr [ebp-4]
 004A6352    call        @Cspin@TCSpinButton@WMGetDlgCode$qqrr20Messages@TWMNoParams
>004A6357    jmp         004A6364
 004A6359    mov         edx,dword ptr [ebp-8]
 004A635C    mov         eax,dword ptr [ebp-4]
 004A635F    call        TObject.Dispatch
 004A6364    pop         ecx
 004A6365    pop         ecx
 004A6366    pop         ebp
 004A6367    ret
*}
end;

//004A6368
procedure TCSpinButton.}; stdcall;
begin
{*
 004A6368    push        ebp
 004A6369    mov         ebp,esp
 004A636B    add         esp,0FFFFFFD4
 004A636E    call        0067EF81
 004A6373    mov         byte ptr [ebp-29],dl
 004A6376    mov         dword ptr [ebp-4],eax
 004A6379    mov         eax,6C1DE8
 004A637E    call        0066FECC
 004A6383    mov         dword ptr [ebp-0C],0A
 004A638A    mov         dl,byte ptr [ebp-29]
 004A638D    test        dl,dl
>004A638F    jl          004A63A5
 004A6391    mov         word ptr [ebp-18],8
 004A6397    sub         dword ptr [ebp-0C],0A
 004A639B    xor         edx,edx
 004A639D    mov         eax,dword ptr [ebp-4]
 004A63A0    call        TWinControl.Destroy
 004A63A5    mov         ecx,dword ptr [ebp-28]
 004A63A8    mov         dword ptr fs:[0],ecx
 004A63AF    mov         al,byte ptr [ebp-29]
 004A63B2    test        al,al
>004A63B4    jle         004A63BE
 004A63B6    mov         eax,dword ptr [ebp-4]
 004A63B9    call        0067EF74
 004A63BE    mov         esp,ebp
 004A63C0    pop         ebp
 004A63C1    ret
*}
end;

//004A6C80
procedure sub_004A6C80;
begin
{*
 004A6C80    push        ebp
 004A6C81    mov         ebp,esp
 004A6C83    add         esp,0FFFFFFD4
 004A6C86    call        0067EF81
 004A6C8B    mov         byte ptr [ebp-29],dl
 004A6C8E    mov         dword ptr [ebp-4],eax
 004A6C91    mov         eax,6C1E14
 004A6C96    call        0066FECC
 004A6C9B    mov         dword ptr [ebp-0C],0C
 004A6CA2    mov         dl,byte ptr [ebp-29]
 004A6CA5    test        dl,dl
>004A6CA7    jl          004A6CBD
 004A6CA9    mov         word ptr [ebp-18],8
 004A6CAF    sub         dword ptr [ebp-0C],0C
 004A6CB3    xor         edx,edx
 004A6CB5    mov         eax,dword ptr [ebp-4]
 004A6CB8    call        004A6CDC
 004A6CBD    mov         ecx,dword ptr [ebp-28]
 004A6CC0    mov         dword ptr fs:[0],ecx
 004A6CC7    mov         al,byte ptr [ebp-29]
 004A6CCA    test        al,al
>004A6CCC    jle         004A6CD6
 004A6CCE    mov         eax,dword ptr [ebp-4]
 004A6CD1    call        0067EF74
 004A6CD6    mov         esp,ebp
 004A6CD8    pop         ebp
 004A6CD9    ret
*}
end;

//004A6CDC
procedure sub_004A6CDC;
begin
{*
 004A6CDC    push        ebp
 004A6CDD    mov         ebp,esp
 004A6CDF    add         esp,0FFFFFFD4
 004A6CE2    call        0067EF81
 004A6CE7    mov         byte ptr [ebp-29],dl
 004A6CEA    mov         dword ptr [ebp-4],eax
 004A6CED    mov         eax,6C1E38
 004A6CF2    call        0066FECC
 004A6CF7    mov         dword ptr [ebp-0C],0B
 004A6CFE    mov         dl,byte ptr [ebp-29]
 004A6D01    test        dl,dl
>004A6D03    jl          004A6D19
 004A6D05    mov         word ptr [ebp-18],8
 004A6D0B    sub         dword ptr [ebp-0C],0B
 004A6D0F    xor         edx,edx
 004A6D11    mov         eax,dword ptr [ebp-4]
 004A6D14    call        TCustomControl.Destroy
 004A6D19    mov         ecx,dword ptr [ebp-28]
 004A6D1C    mov         dword ptr fs:[0],ecx
 004A6D23    mov         al,byte ptr [ebp-29]
 004A6D26    test        al,al
>004A6D28    jle         004A6D32
 004A6D2A    mov         eax,dword ptr [ebp-4]
 004A6D2D    call        0067EF74
 004A6D32    mov         esp,ebp
 004A6D34    pop         ebp
 004A6D35    ret
*}
end;

//004A6E14
destructor TIdrDfmFormTree_11011981.Destroy;
begin
{*
 004A6E14    push        ebp
 004A6E15    mov         ebp,esp
 004A6E17    add         esp,0FFFFFFD0
 004A6E1A    call        0067EF81
 004A6E1F    mov         byte ptr [ebp-29],dl
 004A6E22    mov         dword ptr [ebp-28],eax
 004A6E25    mov         eax,6C1E4C
 004A6E2A    call        0066FECC
 004A6E2F    mov         dl,byte ptr [ebp-29]
 004A6E32    test        dl,dl
>004A6E34    jl          004A6E64
 004A6E36    dec         dword ptr [ebp-8]
 004A6E39    mov         ecx,dword ptr [ebp-28]
 004A6E3C    add         ecx,308
 004A6E42    mov         dword ptr [ebp-30],ecx
 004A6E45    sub         dword ptr [ebp-8],4
 004A6E49    push        2
 004A6E4B    push        dword ptr [ebp-30]
 004A6E4E    call        004A705C
 004A6E53    add         esp,8
 004A6E56    sub         dword ptr [ebp-8],10
 004A6E5A    xor         edx,edx
 004A6E5C    mov         eax,dword ptr [ebp-28]
 004A6E5F    call        0040235C
 004A6E64    mov         ecx,dword ptr [ebp-24]
 004A6E67    mov         dword ptr fs:[0],ecx
 004A6E6E    mov         al,byte ptr [ebp-29]
 004A6E71    test        al,al
>004A6E73    jle         004A6E7D
 004A6E75    mov         eax,dword ptr [ebp-28]
 004A6E78    call        0067EF74
 004A6E7D    mov         esp,ebp
 004A6E7F    pop         ebp
 004A6E80    ret
*}
end;

//004A705C
{*procedure sub_004A705C(?:?; ?:?);
begin
 004A705C    push        ebp
 004A705D    mov         ebp,esp
 004A705F    add         esp,0FFFFFFDC
 004A7062    mov         eax,6C1E64
 004A7067    call        0066FECC
 004A706C    mov         dword ptr [ebp-8],3
 004A7073    mov         edx,dword ptr [ebp+8]
 004A7076    test        edx,edx
>004A7078    je          004A70A9
 004A707A    mov         word ptr [ebp-14],8
 004A7080    push        dword ptr [ebp+8]
 004A7083    call        004A70B8
 004A7088    pop         ecx
 004A7089    sub         dword ptr [ebp-8],3
 004A708D    push        0
 004A708F    push        dword ptr [ebp+8]
 004A7092    call        004A7114
 004A7097    add         esp,8
 004A709A    test        byte ptr [ebp+0C],1
>004A709E    je          004A70A9
 004A70A0    push        dword ptr [ebp+8]
 004A70A3    call        0066EAB0
 004A70A8    pop         ecx
 004A70A9    mov         ecx,dword ptr [ebp-24]
 004A70AC    mov         dword ptr fs:[0],ecx
 004A70B3    mov         esp,ebp
 004A70B5    pop         ebp
 004A70B6    ret
end;*}

//004A70B8
{*procedure sub_004A70B8(?:?);
begin
 004A70B8    push        ebp
 004A70B9    mov         ebp,esp
 004A70BB    mov         eax,dword ptr [ebp+8]
 004A70BE    mov         edx,dword ptr [eax+10]
 004A70C1    test        edx,edx
>004A70C3    je          004A7112
 004A70C5    push        dword ptr [ebp+8]
 004A70C8    call        004A7268
 004A70CD    pop         ecx
 004A70CE    push        dword ptr [eax]
 004A70D0    push        dword ptr [ebp+8]
 004A70D3    call        004A7364
 004A70D8    add         esp,8
 004A70DB    push        dword ptr [ebp+8]
 004A70DE    call        004A7278
 004A70E3    pop         ecx
 004A70E4    mov         ecx,dword ptr [ebp+8]
 004A70E7    mov         edx,dword ptr [ecx+8]
 004A70EA    mov         dword ptr [eax],edx
 004A70EC    push        dword ptr [ebp+8]
 004A70EF    call        004A7268
 004A70F4    pop         ecx
 004A70F5    xor         ecx,ecx
 004A70F7    mov         dword ptr [eax],ecx
 004A70F9    push        dword ptr [ebp+8]
 004A70FC    call        004A7288
 004A7101    pop         ecx
 004A7102    mov         edx,dword ptr [ebp+8]
 004A7105    mov         ecx,dword ptr [edx+8]
 004A7108    mov         dword ptr [eax],ecx
 004A710A    mov         eax,dword ptr [ebp+8]
 004A710D    xor         edx,edx
 004A710F    mov         dword ptr [eax+10],edx
 004A7112    pop         ebp
 004A7113    ret
end;*}

//004A7114
{*procedure sub_004A7114(?:?; ?:?);
begin
 004A7114    push        ebp
 004A7115    mov         ebp,esp
 004A7117    add         esp,0FFFFFFDC
 004A711A    mov         eax,6C1E88
 004A711F    call        0066FECC
 004A7124    mov         dword ptr [ebp-8],2
 004A712B    mov         edx,dword ptr [ebp+8]
 004A712E    test        edx,edx
>004A7130    je          004A716D
 004A7132    mov         word ptr [ebp-14],8
 004A7138    push        1
 004A713A    mov         ecx,dword ptr [ebp+8]
 004A713D    push        dword ptr [ecx+8]
 004A7140    push        dword ptr [ebp+8]
 004A7143    call        004A7298
 004A7148    add         esp,0C
 004A714B    dec         dword ptr [ebp-8]
 004A714E    dec         dword ptr [ebp-8]
 004A7151    push        0
 004A7153    push        dword ptr [ebp+8]
 004A7156    call        004A72BC
 004A715B    add         esp,8
 004A715E    test        byte ptr [ebp+0C],1
>004A7162    je          004A716D
 004A7164    push        dword ptr [ebp+8]
 004A7167    call        0066EAB0
 004A716C    pop         ecx
 004A716D    mov         eax,dword ptr [ebp-24]
 004A7170    mov         fs:[00000000],eax
 004A7176    mov         esp,ebp
 004A7178    pop         ebp
 004A7179    ret
end;*}

//004A7268
{*function sub_004A7268(?:?):?;
begin
 004A7268    push        ebp
 004A7269    mov         ebp,esp
 004A726B    mov         eax,dword ptr [ebp+8]
 004A726E    mov         eax,dword ptr [eax+8]
 004A7271    add         eax,4
 004A7274    pop         ebp
 004A7275    ret
end;*}

//004A7278
{*function sub_004A7278(?:?):?;
begin
 004A7278    push        ebp
 004A7279    mov         ebp,esp
 004A727B    mov         eax,dword ptr [ebp+8]
 004A727E    mov         eax,dword ptr [eax+8]
 004A7281    add         eax,8
 004A7284    pop         ebp
 004A7285    ret
end;*}

//004A7288
{*function sub_004A7288(?:?):?;
begin
 004A7288    push        ebp
 004A7289    mov         ebp,esp
 004A728B    mov         eax,dword ptr [ebp+8]
 004A728E    mov         eax,dword ptr [eax+8]
 004A7291    add         eax,0C
 004A7294    pop         ebp
 004A7295    ret
end;*}

//004A7298
{*procedure sub_004A7298(?:?; ?:?);
begin
 004A7298    push        ebp
 004A7299    mov         ebp,esp
 004A729B    mov         eax,dword ptr [ebp+0C]
 004A729E    test        eax,eax
>004A72A0    je          004A72B7
 004A72A2    mov         edx,dword ptr [ebp+10]
 004A72A5    shl         edx,3
 004A72A8    lea         edx,[edx+edx*2]
 004A72AB    push        edx
 004A72AC    push        dword ptr [ebp+0C]
 004A72AF    call        0045E400
 004A72B4    add         esp,8
 004A72B7    pop         ebp
 004A72B8    ret
end;*}

//004A72BC
{*procedure sub_004A72BC(?:?; ?:?);
begin
 004A72BC    push        ebp
 004A72BD    mov         ebp,esp
 004A72BF    mov         eax,dword ptr [ebp+8]
 004A72C2    test        eax,eax
>004A72C4    je          004A72D5
 004A72C6    test        byte ptr [ebp+0C],1
>004A72CA    je          004A72D5
 004A72CC    push        dword ptr [ebp+8]
 004A72CF    call        0066EAB0
 004A72D4    pop         ecx
 004A72D5    pop         ebp
 004A72D6    ret
end;*}

//004A7364
{*procedure sub_004A7364(?:?; ?:?);
begin
 004A7364    push        ebp
 004A7365    mov         ebp,esp
 004A7367    push        ecx
 004A7368    mov         eax,dword ptr [ebp+0C]
 004A736B    test        eax,eax
>004A736D    je          004A73BD
 004A736F    push        dword ptr [ebp+0C]
 004A7372    call        004A73C0
 004A7377    pop         ecx
 004A7378    push        dword ptr [eax]
 004A737A    push        dword ptr [ebp+8]
 004A737D    call        004A7364
 004A7382    add         esp,8
 004A7385    push        dword ptr [ebp+0C]
 004A7388    call        004A73CC
 004A738D    pop         ecx
 004A738E    mov         edx,dword ptr [eax]
 004A7390    mov         dword ptr [ebp-4],edx
 004A7393    mov         ecx,dword ptr [ebp+0C]
 004A7396    add         ecx,10
 004A7399    push        ecx
 004A739A    call        004A73D8
 004A739F    pop         ecx
 004A73A0    push        1
 004A73A2    push        dword ptr [ebp+0C]
 004A73A5    push        dword ptr [ebp+8]
 004A73A8    call        004A7298
 004A73AD    add         esp,0C
 004A73B0    mov         eax,dword ptr [ebp-4]
 004A73B3    mov         dword ptr [ebp+0C],eax
 004A73B6    mov         edx,dword ptr [ebp+0C]
 004A73B9    test        edx,edx
>004A73BB    jne         004A736F
 004A73BD    pop         ecx
 004A73BE    pop         ebp
 004A73BF    ret
end;*}

//004A73C0
{*function sub_004A73C0(?:?):?;
begin
 004A73C0    push        ebp
 004A73C1    mov         ebp,esp
 004A73C3    mov         eax,dword ptr [ebp+8]
 004A73C6    add         eax,0C
 004A73C9    pop         ebp
 004A73CA    ret
end;*}

//004A73CC
{*function sub_004A73CC(?:?):?;
begin
 004A73CC    push        ebp
 004A73CD    mov         ebp,esp
 004A73CF    mov         eax,dword ptr [ebp+8]
 004A73D2    add         eax,8
 004A73D5    pop         ebp
 004A73D6    ret
end;*}

//004A73D8
procedure sub_004A73D8;
begin
{*
 004A73D8    push        ebp
 004A73D9    mov         ebp,esp
 004A73DB    pop         ebp
 004A73DC    ret
*}
end;

//004A787C
constructor TFEditFieldsDlg_11011981.Create(AOwner:TComponent);
begin
{*
 004A787C    push        ebp
 004A787D    mov         ebp,esp
 004A787F    add         esp,0FFFFFFD0
 004A7882    mov         byte ptr [ebp-8],dl
 004A7885    test        dl,dl
>004A7887    jle         004A788E
 004A7889    call        0067EF6C
 004A788E    mov         dword ptr [ebp-30],ecx
 004A7891    mov         byte ptr [ebp-29],dl
 004A7894    mov         dword ptr [ebp-4],eax
 004A7897    mov         eax,6C1F28
 004A789C    call        0066FECC
 004A78A1    mov         word ptr [ebp-18],8
 004A78A7    mov         ecx,dword ptr [ebp-30]
 004A78AA    xor         edx,edx
 004A78AC    mov         eax,dword ptr [ebp-4]
 004A78AF    call        0040207C
 004A78B4    add         dword ptr [ebp-0C],10
 004A78B8    mov         edx,dword ptr [ebp-4]
 004A78BB    mov         byte ptr [edx+320],0;TFEditFieldsDlg_11011981.?f320:byte
 004A78C2    mov         ecx,dword ptr [ebp-4]
 004A78C5    mov         dword ptr [ecx+321],0FFFFFFFF
 004A78CF    mov         eax,dword ptr [ebp-4]
 004A78D2    mov         dword ptr [eax+325],0FFFFFFFF;TFEditFieldsDlg_11011981.?f325:dword
 004A78DC    mov         edx,dword ptr [ebp-4]
 004A78DF    xor         ecx,ecx
 004A78E1    mov         dword ptr [edx+329],ecx;TFEditFieldsDlg_11011981.?f329:dword
 004A78E7    mov         dl,1
 004A78E9    mov         eax,[006422A4];TList
 004A78EE    call        00413424
 004A78F3    mov         ecx,dword ptr [ebp-4]
 004A78F6    mov         dword ptr [ecx+32D],eax
 004A78FC    mov         eax,dword ptr [ebp-28]
 004A78FF    mov         fs:[00000000],eax
 004A7905    mov         eax,dword ptr [ebp-4]
 004A7908    mov         dl,byte ptr [ebp-29]
 004A790B    test        dl,dl
>004A790D    je          004A7914
 004A790F    call        0067EF79
 004A7914    mov         esp,ebp
 004A7916    pop         ebp
 004A7917    ret
*}
end;

//004A7940
destructor TFEditFieldsDlg_11011981.Destroy;
begin
{*
 004A7940    push        ebp
 004A7941    mov         ebp,esp
 004A7943    add         esp,0FFFFFFCC
 004A7946    call        0067EF81
 004A794B    mov         byte ptr [ebp-31],dl
 004A794E    mov         dword ptr [ebp-4],eax
 004A7951    mov         eax,6C1F5C
 004A7956    call        0066FECC
 004A795B    mov         dword ptr [ebp-14],10
 004A7962    mov         dl,byte ptr [ebp-31]
 004A7965    test        dl,dl
>004A7967    jl          004A79BE
 004A7969    mov         word ptr [ebp-20],8
 004A796F    mov         ecx,dword ptr [ebp-4]
 004A7972    mov         eax,dword ptr [ecx+32D]
 004A7978    test        eax,eax
>004A797A    je          004A79B0
 004A797C    mov         edx,dword ptr [ebp-4]
 004A797F    mov         ecx,dword ptr [edx+32D]
 004A7985    mov         dword ptr [ebp-0C],ecx
 004A7988    mov         eax,dword ptr [ebp-0C]
 004A798B    test        eax,eax
>004A798D    je          004A79B0
 004A798F    mov         edx,dword ptr [ebp-0C]
 004A7992    mov         ecx,dword ptr [edx]
 004A7994    mov         dword ptr [ebp-8],ecx
 004A7997    mov         word ptr [ebp-20],20
 004A799D    mov         edx,3
 004A79A2    mov         eax,dword ptr [ebp-0C]
 004A79A5    mov         ecx,dword ptr [eax]
 004A79A7    call        dword ptr [ecx-4]
 004A79AA    mov         word ptr [ebp-20],14
 004A79B0    sub         dword ptr [ebp-14],10
 004A79B4    xor         edx,edx
 004A79B6    mov         eax,dword ptr [ebp-4]
 004A79B9    call        0040235C
 004A79BE    mov         ecx,dword ptr [ebp-30]
 004A79C1    mov         dword ptr fs:[0],ecx
 004A79C8    mov         al,byte ptr [ebp-31]
 004A79CB    test        al,al
>004A79CD    jle         004A79D7
 004A79CF    mov         eax,dword ptr [ebp-4]
 004A79D2    call        0067EF74
 004A79D7    mov         esp,ebp
 004A79D9    pop         ebp
 004A79DA    ret
*}
end;

//004A79DC
procedure sub_004A79DC(?:TFEditFieldsDlg_11011981);
begin
{*
 004A79DC    push        ebp
 004A79DD    mov         ebp,esp
 004A79DF    add         esp,0FFFFFFA8
 004A79E2    mov         dword ptr [ebp-48],eax
 004A79E5    mov         eax,6C2010
 004A79EA    call        0066FECC
 004A79EF    mov         dl,1
 004A79F1    mov         ecx,dword ptr [ebp-48]
 004A79F4    mov         eax,dword ptr [ecx+2F4]
 004A79FA    mov         ecx,dword ptr [eax]
 004A79FC    call        dword ptr [ecx+64]
 004A79FF    mov         edx,dword ptr [ebp-48]
 004A7A02    mov         eax,dword ptr [edx+2F4]
 004A7A08    mov         edx,dword ptr [eax]
 004A7A0A    call        dword ptr [edx+0D4]
 004A7A10    mov         ecx,dword ptr [ebp-48]
 004A7A13    mov         eax,dword ptr [ecx+32D]
 004A7A19    mov         edx,dword ptr [eax]
 004A7A1B    call        dword ptr [edx+8]
 004A7A1E    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004A7A24    mov         eax,dword ptr [ecx]
 004A7A26    mov         edx,dword ptr [ebp-48]
 004A7A29    mov         ecx,dword ptr [edx+32D]
 004A7A2F    mov         edx,dword ptr [ebp-48]
 004A7A32    mov         edx,dword ptr [edx+329]
 004A7A38    call        0041D0F0
 004A7A3D    mov         dword ptr [ebp-4C],eax
 004A7A40    mov         eax,dword ptr [ebp-4C]
 004A7A43    test        eax,eax
>004A7A45    je          004A7C78
 004A7A4B    mov         ecx,dword ptr [ebp-48]
 004A7A4E    mov         dword ptr [ecx+321],0FFFFFFFF
 004A7A58    xor         eax,eax
 004A7A5A    mov         dword ptr [ebp-50],eax
 004A7A5D    mov         edx,dword ptr [ebp-50]
 004A7A60    mov         ecx,dword ptr [ebp-4C]
 004A7A63    cmp         edx,ecx
>004A7A65    jge         004A7C78
 004A7A6B    mov         edx,dword ptr [ebp-50]
 004A7A6E    mov         eax,dword ptr [ebp-48]
 004A7A71    mov         eax,dword ptr [eax+32D]
 004A7A77    call        TList.Get
 004A7A7C    mov         dword ptr [ebp-54],eax
 004A7A7F    mov         word ptr [ebp-34],14
 004A7A85    lea         eax,[ebp-8]
 004A7A88    call        00401EA8
 004A7A8D    mov         edx,eax
 004A7A8F    inc         dword ptr [ebp-28]
 004A7A92    mov         ecx,dword ptr [ebp-54]
 004A7A95    mov         eax,dword ptr [ecx+1]
 004A7A98    call        00531818
 004A7A9D    lea         edx,[ebp-8]
 004A7AA0    push        edx
 004A7AA1    lea         eax,[ebp-4]
 004A7AA4    call        00401EA8
 004A7AA9    push        eax
 004A7AAA    inc         dword ptr [ebp-28]
 004A7AAD    mov         edx,6C1EB8
 004A7AB2    lea         eax,[ebp-0C]
 004A7AB5    call        0067DAB4
 004A7ABA    inc         dword ptr [ebp-28]
 004A7ABD    lea         edx,[ebp-0C]
 004A7AC0    pop         ecx
 004A7AC1    pop         eax
 004A7AC2    call        0067DCF8
 004A7AC7    dec         dword ptr [ebp-28]
 004A7ACA    lea         eax,[ebp-0C]
 004A7ACD    mov         edx,2
 004A7AD2    call        0067DCA0
 004A7AD7    dec         dword ptr [ebp-28]
 004A7ADA    lea         eax,[ebp-8]
 004A7ADD    mov         edx,2
 004A7AE2    call        0067DCA0
 004A7AE7    mov         word ptr [ebp-34],8
 004A7AED    mov         word ptr [ebp-34],20
 004A7AF3    mov         edx,6C1EBA
 004A7AF8    lea         eax,[ebp-10]
 004A7AFB    call        0067DAB4
 004A7B00    inc         dword ptr [ebp-28]
 004A7B03    lea         edx,[ebp-10]
 004A7B06    mov         eax,dword ptr [ebp-54]
 004A7B09    add         eax,9
 004A7B0C    call        0067DD9C
 004A7B11    push        eax
 004A7B12    dec         dword ptr [ebp-28]
 004A7B15    lea         eax,[ebp-10]
 004A7B18    mov         edx,2
 004A7B1D    call        0067DCA0
 004A7B22    pop         ecx
 004A7B23    test        cl,cl
>004A7B25    je          004A7B37
 004A7B27    mov         edx,dword ptr [ebp-54]
 004A7B2A    add         edx,9
 004A7B2D    lea         eax,[ebp-4]
 004A7B30    call        0067DCE4
>004A7B35    jmp         004A7B68
 004A7B37    mov         word ptr [ebp-34],2C
 004A7B3D    mov         edx,6C1EBB
 004A7B42    lea         eax,[ebp-14]
 004A7B45    call        0067DAB4
 004A7B4A    inc         dword ptr [ebp-28]
 004A7B4D    lea         edx,[ebp-14]
 004A7B50    lea         eax,[ebp-4]
 004A7B53    call        0067DCE4
 004A7B58    dec         dword ptr [ebp-28]
 004A7B5B    lea         eax,[ebp-14]
 004A7B5E    mov         edx,2
 004A7B63    call        0067DCA0
 004A7B68    mov         word ptr [ebp-34],38
 004A7B6E    mov         edx,6C1EBD
 004A7B73    lea         eax,[ebp-18]
 004A7B76    call        0067DAB4
 004A7B7B    inc         dword ptr [ebp-28]
 004A7B7E    lea         edx,[ebp-18]
 004A7B81    lea         eax,[ebp-4]
 004A7B84    call        0067DCE4
 004A7B89    dec         dword ptr [ebp-28]
 004A7B8C    lea         eax,[ebp-18]
 004A7B8F    mov         edx,2
 004A7B94    call        0067DCA0
 004A7B99    mov         word ptr [ebp-34],44
 004A7B9F    mov         edx,6C1EBF
 004A7BA4    lea         eax,[ebp-1C]
 004A7BA7    call        0067DAB4
 004A7BAC    inc         dword ptr [ebp-28]
 004A7BAF    lea         edx,[ebp-1C]
 004A7BB2    mov         eax,dword ptr [ebp-54]
 004A7BB5    add         eax,0D
 004A7BB8    call        0067DD9C
 004A7BBD    push        eax
 004A7BBE    dec         dword ptr [ebp-28]
 004A7BC1    lea         eax,[ebp-1C]
 004A7BC4    mov         edx,2
 004A7BC9    call        0067DCA0
 004A7BCE    pop         ecx
 004A7BCF    test        cl,cl
>004A7BD1    je          004A7BE3
 004A7BD3    mov         edx,dword ptr [ebp-54]
 004A7BD6    add         edx,0D
 004A7BD9    lea         eax,[ebp-4]
 004A7BDC    call        0067DCE4
>004A7BE1    jmp         004A7C14
 004A7BE3    mov         word ptr [ebp-34],50
 004A7BE9    mov         edx,6C1EC0
 004A7BEE    lea         eax,[ebp-20]
 004A7BF1    call        0067DAB4
 004A7BF6    inc         dword ptr [ebp-28]
 004A7BF9    lea         edx,[ebp-20]
 004A7BFC    lea         eax,[ebp-4]
 004A7BFF    call        0067DCE4
 004A7C04    dec         dword ptr [ebp-28]
 004A7C07    lea         eax,[ebp-20]
 004A7C0A    mov         edx,2
 004A7C0F    call        0067DCA0
 004A7C14    mov         ecx,dword ptr [ebp-48]
 004A7C17    mov         eax,dword ptr [ecx+2F4]
 004A7C1D    add         eax,218
 004A7C22    mov         dword ptr [ebp-58],eax
 004A7C25    mov         edx,dword ptr [ebp-58]
 004A7C28    mov         eax,dword ptr [edx]
 004A7C2A    mov         edx,dword ptr [ebp-4]
 004A7C2D    mov         ecx,dword ptr [eax]
 004A7C2F    call        dword ptr [ecx+38]
 004A7C32    mov         eax,dword ptr [ebp-54]
 004A7C35    mov         edx,dword ptr [eax+1]
 004A7C38    mov         ecx,dword ptr [ebp-48]
 004A7C3B    mov         eax,dword ptr [ecx+325]
 004A7C41    cmp         edx,eax
>004A7C43    jne         004A7C51
 004A7C45    mov         edx,dword ptr [ebp-50]
 004A7C48    mov         ecx,dword ptr [ebp-48]
 004A7C4B    mov         dword ptr [ecx+321],edx
 004A7C51    dec         dword ptr [ebp-28]
 004A7C54    lea         eax,[ebp-4]
 004A7C57    mov         edx,2
 004A7C5C    call        0067DCA0
 004A7C61    mov         word ptr [ebp-34],0
 004A7C67    inc         dword ptr [ebp-50]
 004A7C6A    mov         ecx,dword ptr [ebp-50]
 004A7C6D    mov         eax,dword ptr [ebp-4C]
 004A7C70    cmp         ecx,eax
>004A7C72    jl          004A7A6B
 004A7C78    mov         edx,dword ptr [ebp-44]
 004A7C7B    mov         dword ptr fs:[0],edx
 004A7C82    mov         esp,ebp
 004A7C84    pop         ebp
 004A7C85    ret
*}
end;

//004A7C88
procedure TFEditFieldsDlg_11011981.FormShow(Sender:TObject);
begin
{*
 004A7C88    push        ebp
 004A7C89    mov         ebp,esp
 004A7C8B    add         esp,0FFFFFFC8
 004A7C8E    mov         dword ptr [ebp-38],edx
 004A7C91    mov         dword ptr [ebp-34],eax
 004A7C94    mov         eax,6C2094
 004A7C99    call        0066FECC
 004A7C9E    mov         word ptr [ebp-20],8
 004A7CA4    lea         eax,[ebp-4]
 004A7CA7    call        00401EA8
 004A7CAC    mov         edx,eax
 004A7CAE    inc         dword ptr [ebp-14]
 004A7CB1    mov         ecx,dword ptr [ebp-34]
 004A7CB4    mov         eax,dword ptr [ecx+329];TFEditFieldsDlg_11011981.?f329:dword
 004A7CBA    call        00535C94
 004A7CBF    lea         edx,[ebp-4]
 004A7CC2    push        edx
 004A7CC3    lea         eax,[ebp-0C]
 004A7CC6    call        00401EA8
 004A7CCB    push        eax
 004A7CCC    inc         dword ptr [ebp-14]
 004A7CCF    mov         edx,6C1EC2
 004A7CD4    lea         eax,[ebp-8]
 004A7CD7    call        0067DAB4
 004A7CDC    inc         dword ptr [ebp-14]
 004A7CDF    lea         edx,[ebp-8]
 004A7CE2    pop         ecx
 004A7CE3    pop         eax
 004A7CE4    call        0067DCF8
 004A7CE9    lea         edx,[ebp-0C]
 004A7CEC    mov         edx,dword ptr [edx]
 004A7CEE    mov         eax,dword ptr [ebp-34]
 004A7CF1    call        TTabPage.SetCaption
 004A7CF6    dec         dword ptr [ebp-14]
 004A7CF9    lea         eax,[ebp-0C]
 004A7CFC    mov         edx,2
 004A7D01    call        0067DCA0
 004A7D06    dec         dword ptr [ebp-14]
 004A7D09    lea         eax,[ebp-8]
 004A7D0C    mov         edx,2
 004A7D11    call        0067DCA0
 004A7D16    dec         dword ptr [ebp-14]
 004A7D19    lea         eax,[ebp-4]
 004A7D1C    mov         edx,2
 004A7D21    call        0067DCA0
 004A7D26    xor         edx,edx
 004A7D28    mov         eax,dword ptr [ebp-34]
 004A7D2B    mov         eax,dword ptr [eax+304];TFEditFieldsDlg_11011981.edtPanel:TPanel
 004A7D31    call        TCCalendar.SetVisible
 004A7D36    mov         edx,dword ptr [ebp-34]
 004A7D39    mov         ecx,dword ptr [edx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A7D3F    mov         edx,dword ptr [ecx+4C];TListBox.Height:Integer
 004A7D42    mov         eax,dword ptr [ebp-34]
 004A7D45    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A7D4B    call        TControl.SetHeight
 004A7D50    mov         edx,dword ptr [ebp-34]
 004A7D53    mov         eax,dword ptr [edx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A7D59    mov         edx,dword ptr [eax]
 004A7D5B    call        dword ptr [edx+0D4];TCustomListBox.Clear
 004A7D61    mov         eax,dword ptr [ebp-34]
 004A7D64    call        004A79DC
 004A7D69    mov         edx,dword ptr [ebp-34]
 004A7D6C    mov         edx,dword ptr [edx+321];TFEditFieldsDlg_11011981.?f321:dword
 004A7D72    mov         eax,dword ptr [ebp-34]
 004A7D75    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A7D7B    mov         ecx,dword ptr [eax]
 004A7D7D    call        dword ptr [ecx+0CC];TListBox.sub_0059E3F8
 004A7D83    mov         edx,dword ptr [ebp-34]
 004A7D86    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A7D8C    mov         edx,dword ptr [eax]
 004A7D8E    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 004A7D94    test        eax,eax
>004A7D96    je          004A7DAC
 004A7D98    mov         ecx,dword ptr [ebp-34]
 004A7D9B    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A7DA1    mov         edx,dword ptr [eax]
 004A7DA3    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A7DA9    inc         eax
>004A7DAA    jne         004A7DB0
 004A7DAC    xor         edx,edx
>004A7DAE    jmp         004A7DB5
 004A7DB0    mov         edx,1
 004A7DB5    mov         eax,dword ptr [ebp-34]
 004A7DB8    mov         eax,dword ptr [eax+31C];TFEditFieldsDlg_11011981.bEdit:TButton
 004A7DBE    mov         ecx,dword ptr [eax]
 004A7DC0    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A7DC3    mov         dl,1
 004A7DC5    mov         eax,dword ptr [ebp-34]
 004A7DC8    mov         eax,dword ptr [eax+2FC];TFEditFieldsDlg_11011981.bAdd:TButton
 004A7DCE    mov         ecx,dword ptr [eax]
 004A7DD0    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A7DD3    mov         edx,dword ptr [ebp-34]
 004A7DD6    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A7DDC    mov         edx,dword ptr [eax]
 004A7DDE    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 004A7DE4    test        eax,eax
>004A7DE6    je          004A7DFC
 004A7DE8    mov         ecx,dword ptr [ebp-34]
 004A7DEB    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A7DF1    mov         edx,dword ptr [eax]
 004A7DF3    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A7DF9    inc         eax
>004A7DFA    jne         004A7E00
 004A7DFC    xor         edx,edx
>004A7DFE    jmp         004A7E05
 004A7E00    mov         edx,1
 004A7E05    mov         eax,dword ptr [ebp-34]
 004A7E08    mov         eax,dword ptr [eax+300];TFEditFieldsDlg_11011981.bRemove:TButton
 004A7E0E    mov         ecx,dword ptr [eax]
 004A7E10    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A7E13    mov         dl,1
 004A7E15    mov         eax,dword ptr [ebp-34]
 004A7E18    mov         eax,dword ptr [eax+314];TFEditFieldsDlg_11011981.bClose:TButton
 004A7E1E    mov         ecx,dword ptr [eax]
 004A7E20    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A7E23    mov         edx,dword ptr [ebp-30]
 004A7E26    mov         dword ptr fs:[0],edx
 004A7E2D    mov         esp,ebp
 004A7E2F    pop         ebp
 004A7E30    ret
*}
end;

//004A7E34
procedure TFEditFieldsDlg_11011981.lbFXrefsDblClick(Sender:TObject);
begin
{*
 004A7E34    push        ebp
 004A7E35    mov         ebp,esp
 004A7E37    add         esp,0FFFFFFC0
 004A7E3A    push        ebx
 004A7E3B    mov         dword ptr [ebp-30],edx
 004A7E3E    mov         dword ptr [ebp-2C],eax
 004A7E41    mov         eax,6C20C8
 004A7E46    call        0066FECC
 004A7E4B    mov         word ptr [ebp-18],14
 004A7E51    mov         edx,dword ptr [ebp-2C]
 004A7E54    mov         ecx,dword ptr [edx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A7E5A    add         ecx,218;TListBox.FItems:TStrings
 004A7E60    mov         dword ptr [ebp-3C],ecx
 004A7E63    lea         eax,[ebp-4]
 004A7E66    call        00401EA8
 004A7E6B    push        eax
 004A7E6C    inc         dword ptr [ebp-0C]
 004A7E6F    mov         edx,dword ptr [ebp-2C]
 004A7E72    mov         eax,dword ptr [edx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A7E78    mov         edx,dword ptr [eax]
 004A7E7A    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A7E80    mov         edx,eax
 004A7E82    mov         eax,dword ptr [ebp-3C]
 004A7E85    mov         eax,dword ptr [eax]
 004A7E87    pop         ecx
 004A7E88    mov         ebx,dword ptr [eax]
 004A7E8A    call        dword ptr [ebx+0C]
 004A7E8D    mov         word ptr [ebp-18],8
 004A7E93    lea         eax,[ebp-32]
 004A7E96    push        eax
 004A7E97    lea         edx,[ebp-38]
 004A7E9A    push        edx
 004A7E9B    push        6C1ECA
 004A7EA0    lea         eax,[ebp-4]
 004A7EA3    call        00403C0C
 004A7EA8    inc         eax
 004A7EA9    push        eax
 004A7EAA    call        00673530
 004A7EAF    add         esp,10
 004A7EB2    mov         eax,dword ptr [ebp-38]
 004A7EB5    call        005312C8
 004A7EBA    mov         dword ptr [ebp-40],eax
 004A7EBD    mov         edx,dword ptr [ebp-40]
 004A7EC0    test        edx,edx
>004A7EC2    jl          004A7EFF
 004A7EC4    mov         edx,dword ptr [ebp-40]
 004A7EC7    mov         eax,10
 004A7ECC    call        00532B74
 004A7ED1    test        al,al
>004A7ED3    je          004A7EF5
 004A7ED5    push        0FF
 004A7ED7    push        0FF
 004A7ED9    mov         eax,dword ptr [ebp-40]
 004A7EDC    call        00531360
 004A7EE1    mov         edx,eax
 004A7EE3    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004A7EE9    mov         eax,dword ptr [ecx]
 004A7EEB    mov         ecx,dword ptr [ebp-38]
 004A7EEE    call        00414454
>004A7EF3    jmp         004A7EFF
 004A7EF5    dec         dword ptr [ebp-40]
 004A7EF8    mov         edx,dword ptr [ebp-40]
 004A7EFB    test        edx,edx
>004A7EFD    jge         004A7EC4
 004A7EFF    dec         dword ptr [ebp-0C]
 004A7F02    lea         eax,[ebp-4]
 004A7F05    mov         edx,2
 004A7F0A    call        0067DCA0
 004A7F0F    mov         ecx,dword ptr [ebp-28]
 004A7F12    mov         dword ptr fs:[0],ecx
 004A7F19    pop         ebx
 004A7F1A    mov         esp,ebp
 004A7F1C    pop         ebp
 004A7F1D    ret
*}
end;

//004A7F20
procedure TFEditFieldsDlg_11011981.lbFieldsClick(Sender:TObject);
begin
{*
 004A7F20    push        ebp
 004A7F21    mov         ebp,esp
 004A7F23    add         esp,0FFFFFFB8
 004A7F26    mov         dword ptr [ebp-38],edx
 004A7F29    mov         dword ptr [ebp-34],eax
 004A7F2C    mov         eax,6C2128
 004A7F31    call        0066FECC
 004A7F36    mov         edx,dword ptr [ebp-34]
 004A7F39    mov         eax,dword ptr [edx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A7F3F    mov         edx,dword ptr [eax]
 004A7F41    call        dword ptr [edx+0D4];TCustomListBox.Clear
 004A7F47    mov         ecx,dword ptr [ebp-34]
 004A7F4A    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A7F50    mov         edx,dword ptr [eax]
 004A7F52    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A7F58    inc         eax
>004A7F59    jne         004A7F6C
 004A7F5B    mov         ecx,dword ptr [ebp-30]
 004A7F5E    mov         dword ptr fs:[0],ecx
 004A7F65    mov         eax,ecx
>004A7F67    jmp         004A8122
 004A7F6C    mov         word ptr [ebp-20],8
 004A7F72    lea         eax,[ebp-4]
 004A7F75    call        00401EA8
 004A7F7A    inc         dword ptr [ebp-14]
 004A7F7D    mov         word ptr [ebp-20],14
 004A7F83    mov         edx,dword ptr [ebp-34]
 004A7F86    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A7F8C    mov         edx,dword ptr [eax]
 004A7F8E    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A7F94    mov         edx,eax
 004A7F96    mov         eax,dword ptr [ebp-34]
 004A7F99    mov         eax,dword ptr [eax+32D];TFEditFieldsDlg_11011981.?f32D:dword
 004A7F9F    call        TList.Get
 004A7FA4    mov         dword ptr [ebp-3C],eax
 004A7FA7    mov         edx,dword ptr [ebp-3C]
 004A7FAA    mov         ecx,dword ptr [edx+11]
 004A7FAD    test        ecx,ecx
>004A7FAF    je          004A8088
 004A7FB5    xor         eax,eax
 004A7FB7    mov         dword ptr [ebp-40],eax
>004A7FBA    jmp         004A8074
 004A7FBF    mov         edx,dword ptr [ebp-3C]
 004A7FC2    mov         eax,dword ptr [edx+11]
 004A7FC5    mov         edx,dword ptr [ebp-40]
 004A7FC8    call        TList.Get
 004A7FCD    mov         dword ptr [ebp-44],eax
 004A7FD0    mov         word ptr [ebp-20],14
 004A7FD6    mov         word ptr [ebp-20],20
 004A7FDC    lea         eax,[ebp-8]
 004A7FDF    call        00401EA8
 004A7FE4    mov         edx,eax
 004A7FE6    inc         dword ptr [ebp-14]
 004A7FE9    mov         ecx,dword ptr [ebp-44]
 004A7FEC    mov         eax,dword ptr [ecx+1]
 004A7FEF    mov         ecx,dword ptr [ebp-44]
 004A7FF2    mov         ecx,dword ptr [ecx+5]
 004A7FF5    add         eax,ecx
 004A7FF7    call        0053188C
 004A7FFC    lea         edx,[ebp-8]
 004A7FFF    lea         eax,[ebp-4]
 004A8002    call        0067DCD0
 004A8007    dec         dword ptr [ebp-14]
 004A800A    lea         eax,[ebp-8]
 004A800D    mov         edx,2
 004A8012    call        0067DCA0
 004A8017    mov         ecx,dword ptr [ebp-44]
 004A801A    movsx       eax,byte ptr [ecx]
 004A801D    cmp         eax,63
>004A8020    jne         004A8053
 004A8022    mov         word ptr [ebp-20],2C
 004A8028    mov         edx,6C1ED1
 004A802D    lea         eax,[ebp-0C]
 004A8030    call        0067DAB4
 004A8035    inc         dword ptr [ebp-14]
 004A8038    lea         edx,[ebp-0C]
 004A803B    lea         eax,[ebp-4]
 004A803E    call        0067DCE4
 004A8043    dec         dword ptr [ebp-14]
 004A8046    lea         eax,[ebp-0C]
 004A8049    mov         edx,2
 004A804E    call        0067DCA0
 004A8053    mov         ecx,dword ptr [ebp-34]
 004A8056    mov         eax,dword ptr [ecx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A805C    add         eax,218;TListBox.FItems:TStrings
 004A8061    mov         dword ptr [ebp-48],eax
 004A8064    mov         edx,dword ptr [ebp-48]
 004A8067    mov         eax,dword ptr [edx]
 004A8069    mov         edx,dword ptr [ebp-4]
 004A806C    mov         ecx,dword ptr [eax]
 004A806E    call        dword ptr [ecx+38]
 004A8071    inc         dword ptr [ebp-40]
 004A8074    mov         eax,dword ptr [ebp-3C]
 004A8077    mov         edx,dword ptr [eax+11]
 004A807A    mov         ecx,dword ptr [edx+8]
 004A807D    mov         eax,dword ptr [ebp-40]
 004A8080    cmp         ecx,eax
>004A8082    jg          004A7FBF
 004A8088    mov         edx,dword ptr [ebp-34]
 004A808B    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8091    mov         edx,dword ptr [eax]
 004A8093    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 004A8099    test        eax,eax
>004A809B    je          004A80B1
 004A809D    mov         ecx,dword ptr [ebp-34]
 004A80A0    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A80A6    mov         edx,dword ptr [eax]
 004A80A8    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A80AE    inc         eax
>004A80AF    jne         004A80B5
 004A80B1    xor         edx,edx
>004A80B3    jmp         004A80BA
 004A80B5    mov         edx,1
 004A80BA    mov         eax,dword ptr [ebp-34]
 004A80BD    mov         eax,dword ptr [eax+31C];TFEditFieldsDlg_11011981.bEdit:TButton
 004A80C3    mov         ecx,dword ptr [eax]
 004A80C5    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A80C8    mov         edx,dword ptr [ebp-34]
 004A80CB    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A80D1    mov         edx,dword ptr [eax]
 004A80D3    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 004A80D9    test        eax,eax
>004A80DB    je          004A80F1
 004A80DD    mov         ecx,dword ptr [ebp-34]
 004A80E0    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A80E6    mov         edx,dword ptr [eax]
 004A80E8    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A80EE    inc         eax
>004A80EF    jne         004A80F5
 004A80F1    xor         edx,edx
>004A80F3    jmp         004A80FA
 004A80F5    mov         edx,1
 004A80FA    mov         eax,dword ptr [ebp-34]
 004A80FD    mov         eax,dword ptr [eax+300];TFEditFieldsDlg_11011981.bRemove:TButton
 004A8103    mov         ecx,dword ptr [eax]
 004A8105    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8108    dec         dword ptr [ebp-14]
 004A810B    lea         eax,[ebp-4]
 004A810E    mov         edx,2
 004A8113    call        0067DCA0
 004A8118    mov         ecx,dword ptr [ebp-30]
 004A811B    mov         dword ptr fs:[0],ecx
 004A8122    mov         esp,ebp
 004A8124    pop         ebp
 004A8125    ret
*}
end;

//004A8128
procedure TFEditFieldsDlg_11011981.bEditClick(Sender:TObject);
begin
{*
 004A8128    push        ebp
 004A8129    mov         ebp,esp
 004A812B    add         esp,0FFFFFFCC
 004A812E    mov         dword ptr [ebp-30],edx
 004A8131    mov         dword ptr [ebp-2C],eax
 004A8134    mov         eax,6C2170
 004A8139    call        0066FECC
 004A813E    mov         edx,dword ptr [ebp-2C]
 004A8141    mov         byte ptr [edx+320],0;TFEditFieldsDlg_11011981.?f320:byte
 004A8148    mov         ecx,dword ptr [ebp-2C]
 004A814B    mov         eax,dword ptr [ecx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A8151    mov         edx,dword ptr [eax+4C];TListBox.Height:Integer
 004A8154    mov         ecx,dword ptr [ebp-2C]
 004A8157    mov         eax,dword ptr [ecx+304];TFEditFieldsDlg_11011981.edtPanel:TPanel
 004A815D    mov         ecx,dword ptr [eax+4C];TPanel.Height:Integer
 004A8160    sub         edx,ecx
 004A8162    mov         eax,dword ptr [ebp-2C]
 004A8165    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A816B    call        TControl.SetHeight
 004A8170    mov         dl,1
 004A8172    mov         ecx,dword ptr [ebp-2C]
 004A8175    mov         eax,dword ptr [ecx+304];TFEditFieldsDlg_11011981.edtPanel:TPanel
 004A817B    call        TCCalendar.SetVisible
 004A8180    mov         edx,dword ptr [ebp-2C]
 004A8183    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8189    mov         edx,dword ptr [eax]
 004A818B    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A8191    mov         edx,eax
 004A8193    mov         eax,dword ptr [ebp-2C]
 004A8196    mov         eax,dword ptr [eax+32D];TFEditFieldsDlg_11011981.?f32D:dword
 004A819C    call        TList.Get
 004A81A1    mov         dword ptr [ebp-34],eax
 004A81A4    mov         word ptr [ebp-18],8
 004A81AA    lea         eax,[ebp-4]
 004A81AD    call        00401EA8
 004A81B2    mov         edx,eax
 004A81B4    inc         dword ptr [ebp-0C]
 004A81B7    mov         ecx,dword ptr [ebp-34]
 004A81BA    mov         eax,dword ptr [ecx+1]
 004A81BD    call        0053164C
 004A81C2    lea         edx,[ebp-4]
 004A81C5    mov         edx,dword ptr [edx]
 004A81C7    mov         eax,dword ptr [ebp-2C]
 004A81CA    mov         eax,dword ptr [eax+318];TFEditFieldsDlg_11011981.edtOffset:TLabeledEdit
 004A81D0    call        TTabPage.SetCaption
 004A81D5    dec         dword ptr [ebp-0C]
 004A81D8    lea         eax,[ebp-4]
 004A81DB    mov         edx,2
 004A81E0    call        0067DCA0
 004A81E5    xor         edx,edx
 004A81E7    mov         eax,dword ptr [ebp-2C]
 004A81EA    mov         eax,dword ptr [eax+318];TFEditFieldsDlg_11011981.edtOffset:TLabeledEdit
 004A81F0    mov         ecx,dword ptr [eax]
 004A81F2    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A81F5    mov         edx,dword ptr [ebp-34]
 004A81F8    mov         edx,dword ptr [edx+9]
 004A81FB    mov         eax,dword ptr [ebp-2C]
 004A81FE    mov         eax,dword ptr [eax+308];TFEditFieldsDlg_11011981.edtName:TLabeledEdit
 004A8204    call        TTabPage.SetCaption
 004A8209    mov         dl,1
 004A820B    mov         ecx,dword ptr [ebp-2C]
 004A820E    mov         eax,dword ptr [ecx+308];TFEditFieldsDlg_11011981.edtName:TLabeledEdit
 004A8214    mov         ecx,dword ptr [eax]
 004A8216    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8219    mov         edx,dword ptr [ebp-34]
 004A821C    mov         edx,dword ptr [edx+0D]
 004A821F    mov         eax,dword ptr [ebp-2C]
 004A8222    mov         eax,dword ptr [eax+30C];TFEditFieldsDlg_11011981.edtType:TLabeledEdit
 004A8228    call        TTabPage.SetCaption
 004A822D    mov         dl,1
 004A822F    mov         ecx,dword ptr [ebp-2C]
 004A8232    mov         eax,dword ptr [ecx+30C];TFEditFieldsDlg_11011981.edtType:TLabeledEdit
 004A8238    mov         ecx,dword ptr [eax]
 004A823A    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A823D    mov         edx,dword ptr [ebp-2C]
 004A8240    mov         eax,dword ptr [edx+308];TFEditFieldsDlg_11011981.edtName:TLabeledEdit
 004A8246    mov         edx,dword ptr [eax]
 004A8248    call        dword ptr [edx+0C0];TLabeledEdit.sub_005FBFF0
 004A824E    xor         edx,edx
 004A8250    mov         eax,dword ptr [ebp-2C]
 004A8253    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8259    mov         ecx,dword ptr [eax]
 004A825B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A825E    xor         edx,edx
 004A8260    mov         eax,dword ptr [ebp-2C]
 004A8263    mov         eax,dword ptr [eax+310];TFEditFieldsDlg_11011981.bApply:TButton
 004A8269    mov         ecx,dword ptr [eax]
 004A826B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A826E    mov         dl,1
 004A8270    mov         eax,dword ptr [ebp-2C]
 004A8273    mov         eax,dword ptr [eax+314];TFEditFieldsDlg_11011981.bClose:TButton
 004A8279    mov         ecx,dword ptr [eax]
 004A827B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A827E    xor         edx,edx
 004A8280    mov         eax,dword ptr [ebp-2C]
 004A8283    mov         eax,dword ptr [eax+31C];TFEditFieldsDlg_11011981.bEdit:TButton
 004A8289    mov         ecx,dword ptr [eax]
 004A828B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A828E    xor         edx,edx
 004A8290    mov         eax,dword ptr [ebp-2C]
 004A8293    mov         eax,dword ptr [eax+2FC];TFEditFieldsDlg_11011981.bAdd:TButton
 004A8299    mov         ecx,dword ptr [eax]
 004A829B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A829E    xor         edx,edx
 004A82A0    mov         eax,dword ptr [ebp-2C]
 004A82A3    mov         eax,dword ptr [eax+300];TFEditFieldsDlg_11011981.bRemove:TButton
 004A82A9    mov         ecx,dword ptr [eax]
 004A82AB    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A82AE    mov         edx,dword ptr [ebp-28]
 004A82B1    mov         dword ptr fs:[0],edx
 004A82B8    mov         esp,ebp
 004A82BA    pop         ebp
 004A82BB    ret
*}
end;

//004A82BC
{*procedure TFEditFieldsDlg_11011981.edtNameChange(?:?);
begin
 004A82BC    push        ebp
 004A82BD    mov         ebp,esp
 004A82BF    add         esp,0FFFFFFF8
 004A82C2    mov         dword ptr [ebp-8],edx
 004A82C5    mov         dword ptr [ebp-4],eax
 004A82C8    mov         dl,1
 004A82CA    mov         eax,dword ptr [ebp-4]
 004A82CD    mov         eax,dword ptr [eax+310];TFEditFieldsDlg_11011981.bApply:TButton
 004A82D3    mov         ecx,dword ptr [eax]
 004A82D5    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A82D8    pop         ecx
 004A82D9    pop         ecx
 004A82DA    pop         ebp
 004A82DB    ret
end;*}

//004A82DC
{*procedure TFEditFieldsDlg_11011981.edtTypeChange(?:?);
begin
 004A82DC    push        ebp
 004A82DD    mov         ebp,esp
 004A82DF    add         esp,0FFFFFFF8
 004A82E2    mov         dword ptr [ebp-8],edx
 004A82E5    mov         dword ptr [ebp-4],eax
 004A82E8    mov         dl,1
 004A82EA    mov         eax,dword ptr [ebp-4]
 004A82ED    mov         eax,dword ptr [eax+310];TFEditFieldsDlg_11011981.bApply:TButton
 004A82F3    mov         ecx,dword ptr [eax]
 004A82F5    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A82F8    pop         ecx
 004A82F9    pop         ecx
 004A82FA    pop         ebp
 004A82FB    ret
end;*}

//004A82FC
procedure TFEditFieldsDlg_11011981.bApplyClick(Sender:TObject);
begin
{*
 004A82FC    push        ebp
 004A82FD    mov         ebp,esp
 004A82FF    add         esp,0FFFFFF6C
 004A8305    mov         dword ptr [ebp-68],edx
 004A8308    mov         dword ptr [ebp-64],eax
 004A830B    mov         eax,6C2268
 004A8310    call        0066FECC
 004A8315    mov         byte ptr [ebp-6A],0
 004A8319    mov         word ptr [ebp-50],8
 004A831F    lea         eax,[ebp-4]
 004A8322    call        00401EA8
 004A8327    inc         dword ptr [ebp-44]
 004A832A    mov         word ptr [ebp-50],14
 004A8330    mov         edx,dword ptr [ebp-64]
 004A8333    mov         eax,dword ptr [edx+329];TFEditFieldsDlg_11011981.?f329:dword
 004A8339    call        0053A308
 004A833E    mov         dword ptr [ebp-88],eax
 004A8344    mov         edx,dword ptr [ebp-64]
 004A8347    mov         cl,byte ptr [edx+320];TFEditFieldsDlg_11011981.?f320:byte
 004A834D    sub         cl,1
>004A8350    jb          004A8360
 004A8352    sub         cl,2
>004A8355    jb          004A8532
>004A835B    jmp         004A879D
 004A8360    mov         eax,dword ptr [ebp-64]
 004A8363    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8369    mov         edx,dword ptr [eax]
 004A836B    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A8371    mov         edx,eax
 004A8373    mov         eax,dword ptr [ebp-64]
 004A8376    mov         eax,dword ptr [eax+32D];TFEditFieldsDlg_11011981.?f32D:dword
 004A837C    call        TList.Get
 004A8381    mov         dword ptr [ebp-8C],eax
 004A8387    mov         word ptr [ebp-50],20
 004A838D    lea         eax,[ebp-8]
 004A8390    call        00401EA8
 004A8395    mov         edx,eax
 004A8397    inc         dword ptr [ebp-44]
 004A839A    mov         ecx,dword ptr [ebp-64]
 004A839D    mov         eax,dword ptr [ecx+308];TFEditFieldsDlg_11011981.edtName:TLabeledEdit
 004A83A3    call        TTabPage.GetCaption
 004A83A8    lea         edx,[ebp-8]
 004A83AB    push        dword ptr [edx]
 004A83AD    lea         eax,[ebp-0C]
 004A83B0    call        00401EA8
 004A83B5    mov         edx,eax
 004A83B7    inc         dword ptr [ebp-44]
 004A83BA    pop         eax
 004A83BB    call        00657850
 004A83C0    lea         edx,[ebp-0C]
 004A83C3    mov         eax,dword ptr [ebp-8C]
 004A83C9    add         eax,9
 004A83CC    call        0067DCD0
 004A83D1    dec         dword ptr [ebp-44]
 004A83D4    lea         eax,[ebp-0C]
 004A83D7    mov         edx,2
 004A83DC    call        0067DCA0
 004A83E1    dec         dword ptr [ebp-44]
 004A83E4    lea         eax,[ebp-8]
 004A83E7    mov         edx,2
 004A83EC    call        0067DCA0
 004A83F1    mov         word ptr [ebp-50],2C
 004A83F7    lea         eax,[ebp-10]
 004A83FA    call        00401EA8
 004A83FF    mov         edx,eax
 004A8401    inc         dword ptr [ebp-44]
 004A8404    mov         ecx,dword ptr [ebp-64]
 004A8407    mov         eax,dword ptr [ecx+30C];TFEditFieldsDlg_11011981.edtType:TLabeledEdit
 004A840D    call        TTabPage.GetCaption
 004A8412    lea         edx,[ebp-10]
 004A8415    push        dword ptr [edx]
 004A8417    lea         eax,[ebp-14]
 004A841A    call        00401EA8
 004A841F    mov         edx,eax
 004A8421    inc         dword ptr [ebp-44]
 004A8424    pop         eax
 004A8425    call        00657850
 004A842A    lea         edx,[ebp-14]
 004A842D    mov         eax,dword ptr [ebp-8C]
 004A8433    add         eax,0D
 004A8436    call        0067DCD0
 004A843B    dec         dword ptr [ebp-44]
 004A843E    lea         eax,[ebp-14]
 004A8441    mov         edx,2
 004A8446    call        0067DCA0
 004A844B    dec         dword ptr [ebp-44]
 004A844E    lea         eax,[ebp-10]
 004A8451    mov         edx,2
 004A8456    call        0067DCA0
 004A845B    mov         ecx,dword ptr [ebp-8C]
 004A8461    mov         eax,dword ptr [ecx+1]
 004A8464    mov         dword ptr [ebp-80],eax
 004A8467    mov         word ptr [ebp-50],38
 004A846D    lea         eax,[ebp-18]
 004A8470    call        00401EA8
 004A8475    mov         edx,eax
 004A8477    inc         dword ptr [ebp-44]
 004A847A    mov         ecx,dword ptr [ebp-64]
 004A847D    mov         eax,dword ptr [ecx+30C];TFEditFieldsDlg_11011981.edtType:TLabeledEdit
 004A8483    call        TTabPage.GetCaption
 004A8488    lea         eax,[ebp-18]
 004A848B    mov         eax,dword ptr [eax]
 004A848D    lea         edx,[ebp-78]
 004A8490    call        00537754
 004A8495    cmp         al,0E
 004A8497    sete        cl
 004A849A    and         ecx,1
 004A849D    push        ecx
 004A849E    dec         dword ptr [ebp-44]
 004A84A1    lea         eax,[ebp-18]
 004A84A4    mov         edx,2
 004A84A9    call        0067DCA0
 004A84AE    pop         ecx
 004A84AF    test        cl,cl
>004A84B1    je          004A879D
 004A84B7    mov         eax,dword ptr [ebp-80]
 004A84BA    mov         edx,dword ptr [ebp-78]
 004A84BD    add         eax,edx
 004A84BF    mov         dword ptr [ebp-84],eax
 004A84C5    xor         ecx,ecx
 004A84C7    mov         dword ptr [ebp-74],ecx
>004A84CA    jmp         004A851A
 004A84CC    mov         edx,dword ptr [ebp-74]
 004A84CF    mov         eax,dword ptr [ebp-64]
 004A84D2    mov         eax,dword ptr [eax+32D];TFEditFieldsDlg_11011981.?f32D:dword
 004A84D8    call        TList.Get
 004A84DD    mov         dword ptr [ebp-8C],eax
 004A84E3    mov         edx,dword ptr [ebp-8C]
 004A84E9    mov         ecx,dword ptr [edx+1]
 004A84EC    mov         dword ptr [ebp-7C],ecx
 004A84EF    mov         eax,dword ptr [ebp-7C]
 004A84F2    mov         edx,dword ptr [ebp-80]
 004A84F5    cmp         eax,edx
>004A84F7    jle         004A8517
 004A84F9    mov         ecx,dword ptr [ebp-7C]
 004A84FC    mov         eax,dword ptr [ebp-84]
 004A8502    cmp         ecx,eax
>004A8504    jge         004A8517
 004A8506    mov         edx,dword ptr [ebp-88]
 004A850C    mov         eax,dword ptr [edx+1A]
 004A850F    mov         edx,dword ptr [ebp-7C]
 004A8512    call        004833F4
 004A8517    inc         dword ptr [ebp-74]
 004A851A    mov         ecx,dword ptr [ebp-64]
 004A851D    mov         eax,dword ptr [ecx+32D];TFEditFieldsDlg_11011981.?f32D:dword
 004A8523    mov         edx,dword ptr [eax+8]
 004A8526    mov         ecx,dword ptr [ebp-74]
 004A8529    cmp         edx,ecx
>004A852B    jg          004A84CC
>004A852D    jmp         004A879D
 004A8532    lea         eax,[ebp-7C]
 004A8535    push        eax
 004A8536    push        6C1ED5
 004A853B    mov         word ptr [ebp-50],44
 004A8541    lea         eax,[ebp-1C]
 004A8544    call        00401EA8
 004A8549    mov         edx,eax
 004A854B    inc         dword ptr [ebp-44]
 004A854E    mov         ecx,dword ptr [ebp-64]
 004A8551    mov         eax,dword ptr [ecx+318];TFEditFieldsDlg_11011981.edtOffset:TLabeledEdit
 004A8557    call        TTabPage.GetCaption
 004A855C    lea         edx,[ebp-1C]
 004A855F    push        edx
 004A8560    lea         eax,[ebp-20]
 004A8563    call        00401EA8
 004A8568    mov         edx,eax
 004A856A    inc         dword ptr [ebp-44]
 004A856D    pop         eax
 004A856E    call        0067E030
 004A8573    lea         eax,[ebp-20]
 004A8576    call        00403C0C
 004A857B    push        eax
 004A857C    call        00673530
 004A8581    add         esp,0C
 004A8584    dec         dword ptr [ebp-44]
 004A8587    lea         eax,[ebp-20]
 004A858A    mov         edx,2
 004A858F    call        0067DCA0
 004A8594    dec         dword ptr [ebp-44]
 004A8597    lea         eax,[ebp-1C]
 004A859A    mov         edx,2
 004A859F    call        0067DCA0
 004A85A4    mov         ecx,dword ptr [ebp-64]
 004A85A7    mov         al,byte ptr [ecx+320];TFEditFieldsDlg_11011981.?f320:byte
 004A85AD    cmp         al,1
>004A85AF    jne         004A8761
 004A85B5    lea         edx,[ebp-69]
 004A85B8    push        edx
 004A85B9    lea         ecx,[ebp-70]
 004A85BC    push        ecx
 004A85BD    mov         edx,6C1ED9
 004A85C2    lea         eax,[ebp-28]
 004A85C5    call        0067DAB4
 004A85CA    inc         dword ptr [ebp-44]
 004A85CD    push        dword ptr [eax]
 004A85CF    mov         word ptr [ebp-50],50
 004A85D5    lea         eax,[ebp-24]
 004A85D8    call        00401EA8
 004A85DD    mov         edx,eax
 004A85DF    inc         dword ptr [ebp-44]
 004A85E2    mov         eax,dword ptr [ebp-88]
 004A85E8    call        0048591C
 004A85ED    lea         edx,[ebp-24]
 004A85F0    mov         edx,dword ptr [edx]
 004A85F2    mov         eax,[006E9C8C];^_FMain_11011981
 004A85F7    mov         eax,dword ptr [eax]
 004A85F9    mov         ecx,dword ptr [ebp-7C]
 004A85FC    call        00452A44
 004A8601    mov         dword ptr [ebp-8C],eax
 004A8607    dec         dword ptr [ebp-44]
 004A860A    lea         eax,[ebp-28]
 004A860D    mov         edx,2
 004A8612    call        0067DCA0
 004A8617    dec         dword ptr [ebp-44]
 004A861A    lea         eax,[ebp-24]
 004A861D    mov         edx,2
 004A8622    call        0067DCA0
 004A8627    mov         ecx,dword ptr [ebp-8C]
 004A862D    test        ecx,ecx
>004A862F    je          004A8652
 004A8631    push        4
 004A8633    mov         ecx,6C1EEF
 004A8638    mov         edx,6C1EDA
 004A863D    mov         eax,[006E9DCC];^Application:TApplication
 004A8642    mov         eax,dword ptr [eax]
 004A8644    call        0067D9DC
 004A8649    cmp         eax,6
>004A864C    jne         004A8721
 004A8652    push        0B
 004A8654    push        dword ptr [ebp-7C]
 004A8657    push        0FF
 004A8659    mov         word ptr [ebp-50],5C
 004A865F    lea         eax,[ebp-2C]
 004A8662    call        00401EA8
 004A8667    mov         edx,eax
 004A8669    inc         dword ptr [ebp-44]
 004A866C    mov         ecx,dword ptr [ebp-64]
 004A866F    mov         eax,dword ptr [ecx+308];TFEditFieldsDlg_11011981.edtName:TLabeledEdit
 004A8675    call        TTabPage.GetCaption
 004A867A    lea         edx,[ebp-2C]
 004A867D    push        dword ptr [edx]
 004A867F    lea         eax,[ebp-30]
 004A8682    call        00401EA8
 004A8687    mov         edx,eax
 004A8689    inc         dword ptr [ebp-44]
 004A868C    pop         eax
 004A868D    call        00657850
 004A8692    lea         edx,[ebp-30]
 004A8695    push        dword ptr [edx]
 004A8697    lea         eax,[ebp-34]
 004A869A    call        00401EA8
 004A869F    mov         edx,eax
 004A86A1    inc         dword ptr [ebp-44]
 004A86A4    mov         ecx,dword ptr [ebp-64]
 004A86A7    mov         eax,dword ptr [ecx+30C];TFEditFieldsDlg_11011981.edtType:TLabeledEdit
 004A86AD    call        TTabPage.GetCaption
 004A86B2    lea         edx,[ebp-34]
 004A86B5    push        dword ptr [edx]
 004A86B7    lea         eax,[ebp-38]
 004A86BA    call        00401EA8
 004A86BF    mov         edx,eax
 004A86C1    inc         dword ptr [ebp-44]
 004A86C4    pop         eax
 004A86C5    call        00657850
 004A86CA    lea         edx,[ebp-38]
 004A86CD    push        dword ptr [edx]
 004A86CF    mov         ecx,dword ptr [ebp-88]
 004A86D5    mov         eax,dword ptr [ecx+1A]
 004A86D8    xor         ecx,ecx
 004A86DA    xor         edx,edx
 004A86DC    call        004830E8
 004A86E1    dec         dword ptr [ebp-44]
 004A86E4    lea         eax,[ebp-38]
 004A86E7    mov         edx,2
 004A86EC    call        0067DCA0
 004A86F1    dec         dword ptr [ebp-44]
 004A86F4    lea         eax,[ebp-34]
 004A86F7    mov         edx,2
 004A86FC    call        0067DCA0
 004A8701    dec         dword ptr [ebp-44]
 004A8704    lea         eax,[ebp-30]
 004A8707    mov         edx,2
 004A870C    call        0067DCA0
 004A8711    dec         dword ptr [ebp-44]
 004A8714    lea         eax,[ebp-2C]
 004A8717    mov         edx,2
 004A871C    call        0067DCA0
 004A8721    mov         ecx,dword ptr [ebp-8C]
 004A8727    test        ecx,ecx
>004A8729    je          004A8761
 004A872B    mov         eax,dword ptr [ebp-8C]
 004A8731    mov         dl,byte ptr [eax]
 004A8733    cmp         dl,20
>004A8736    jne         004A8761
 004A8738    mov         ecx,dword ptr [ebp-8C]
 004A873E    mov         dword ptr [ebp-3C],ecx
 004A8741    mov         eax,dword ptr [ebp-3C]
 004A8744    test        eax,eax
>004A8746    je          004A8761
 004A8748    mov         word ptr [ebp-50],74
 004A874E    push        3
 004A8750    push        dword ptr [ebp-3C]
 004A8753    call        0046DD48
 004A8758    add         esp,8
 004A875B    mov         word ptr [ebp-50],68
 004A8761    mov         edx,dword ptr [ebp-64]
 004A8764    mov         cl,byte ptr [edx+320];TFEditFieldsDlg_11011981.?f320:byte
 004A876A    cmp         cl,2
>004A876D    jne         004A879D
 004A876F    push        4
 004A8771    mov         ecx,6C1F06
 004A8776    mov         edx,6C1EF8
 004A877B    mov         eax,[006E9DCC];^Application:TApplication
 004A8780    mov         eax,dword ptr [eax]
 004A8782    call        0067D9DC
 004A8787    cmp         eax,6
>004A878A    jne         004A879D
 004A878C    mov         edx,dword ptr [ebp-88]
 004A8792    mov         eax,dword ptr [edx+1A]
 004A8795    mov         edx,dword ptr [ebp-7C]
 004A8798    call        004833F4
 004A879D    mov         ecx,dword ptr [ebp-64]
 004A87A0    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A87A6    mov         edx,dword ptr [eax]
 004A87A8    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A87AE    mov         dword ptr [ebp-90],eax
 004A87B4    mov         word ptr [ebp-50],14
 004A87BA    mov         ecx,dword ptr [ebp-64]
 004A87BD    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A87C3    call        0059E798
 004A87C8    mov         dword ptr [ebp-94],eax
 004A87CE    mov         eax,dword ptr [ebp-64]
 004A87D1    call        004A79DC
 004A87D6    mov         edx,dword ptr [ebp-90]
 004A87DC    mov         ecx,dword ptr [ebp-64]
 004A87DF    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A87E5    mov         ecx,dword ptr [eax]
 004A87E7    call        dword ptr [ecx+0CC];TListBox.sub_0059E3F8
 004A87ED    mov         edx,dword ptr [ebp-94]
 004A87F3    mov         eax,dword ptr [ebp-64]
 004A87F6    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A87FC    call        0059E99C
 004A8801    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004A8807    mov         eax,dword ptr [edx]
 004A8809    call        00414208
 004A880E    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004A8814    mov         eax,dword ptr [edx]
 004A8816    mov         edx,dword ptr [ebp-64]
 004A8819    mov         edx,dword ptr [edx+329];TFEditFieldsDlg_11011981.?f329:dword
 004A881F    call        0041B340
 004A8824    xor         edx,edx
 004A8826    mov         eax,dword ptr [ebp-64]
 004A8829    mov         eax,dword ptr [eax+304];TFEditFieldsDlg_11011981.edtPanel:TPanel
 004A882F    call        TCCalendar.SetVisible
 004A8834    mov         edx,dword ptr [ebp-64]
 004A8837    mov         ecx,dword ptr [edx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A883D    mov         edx,dword ptr [ecx+4C];TListBox.Height:Integer
 004A8840    mov         eax,dword ptr [ebp-64]
 004A8843    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8849    call        TControl.SetHeight
 004A884E    mov         dl,1
 004A8850    mov         ecx,dword ptr [ebp-64]
 004A8853    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8859    mov         ecx,dword ptr [eax]
 004A885B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A885E    mov         edx,dword ptr [ebp-64]
 004A8861    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8867    mov         edx,dword ptr [eax]
 004A8869    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 004A886F    test        eax,eax
>004A8871    je          004A8887
 004A8873    mov         ecx,dword ptr [ebp-64]
 004A8876    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A887C    mov         edx,dword ptr [eax]
 004A887E    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A8884    inc         eax
>004A8885    jne         004A888B
 004A8887    xor         edx,edx
>004A8889    jmp         004A8890
 004A888B    mov         edx,1
 004A8890    mov         eax,dword ptr [ebp-64]
 004A8893    mov         eax,dword ptr [eax+31C];TFEditFieldsDlg_11011981.bEdit:TButton
 004A8899    mov         ecx,dword ptr [eax]
 004A889B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A889E    mov         dl,1
 004A88A0    mov         eax,dword ptr [ebp-64]
 004A88A3    mov         eax,dword ptr [eax+2FC];TFEditFieldsDlg_11011981.bAdd:TButton
 004A88A9    mov         ecx,dword ptr [eax]
 004A88AB    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A88AE    mov         edx,dword ptr [ebp-64]
 004A88B1    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A88B7    mov         edx,dword ptr [eax]
 004A88B9    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 004A88BF    test        eax,eax
>004A88C1    je          004A88D7
 004A88C3    mov         ecx,dword ptr [ebp-64]
 004A88C6    mov         eax,dword ptr [ecx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A88CC    mov         edx,dword ptr [eax]
 004A88CE    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A88D4    inc         eax
>004A88D5    jne         004A88DB
 004A88D7    xor         edx,edx
>004A88D9    jmp         004A88E0
 004A88DB    mov         edx,1
 004A88E0    mov         eax,dword ptr [ebp-64]
 004A88E3    mov         eax,dword ptr [eax+300];TFEditFieldsDlg_11011981.bRemove:TButton
 004A88E9    mov         ecx,dword ptr [eax]
 004A88EB    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A88EE    mov         byte ptr ds:[6941AD],1;gvar_006941AD
 004A88F5    dec         dword ptr [ebp-44]
 004A88F8    lea         eax,[ebp-4]
 004A88FB    mov         edx,2
 004A8900    call        0067DCA0
 004A8905    mov         ecx,dword ptr [ebp-60]
 004A8908    mov         dword ptr fs:[0],ecx
 004A890F    mov         esp,ebp
 004A8911    pop         ebp
 004A8912    ret
*}
end;

//004A8914
procedure TFEditFieldsDlg_11011981.bCloseClick(Sender:TObject);
begin
{*
 004A8914    push        ebp
 004A8915    mov         ebp,esp
 004A8917    add         esp,0FFFFFFF8
 004A891A    mov         dword ptr [ebp-8],edx
 004A891D    mov         dword ptr [ebp-4],eax
 004A8920    xor         edx,edx
 004A8922    mov         eax,dword ptr [ebp-4]
 004A8925    mov         eax,dword ptr [eax+304];TFEditFieldsDlg_11011981.edtPanel:TPanel
 004A892B    call        TCCalendar.SetVisible
 004A8930    mov         edx,dword ptr [ebp-4]
 004A8933    mov         ecx,dword ptr [edx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A8939    mov         edx,dword ptr [ecx+4C];TListBox.Height:Integer
 004A893C    mov         eax,dword ptr [ebp-4]
 004A893F    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8945    call        TControl.SetHeight
 004A894A    mov         dl,1
 004A894C    mov         ecx,dword ptr [ebp-4]
 004A894F    mov         eax,dword ptr [ecx+2F4]
 004A8955    mov         ecx,dword ptr [eax]
 004A8957    call        dword ptr [ecx+64]
 004A895A    mov         edx,dword ptr [ebp-4]
 004A895D    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8963    mov         edx,dword ptr [eax]
 004A8965    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 004A896B    test        eax,eax
>004A896D    je          004A8983
 004A896F    mov         ecx,dword ptr [ebp-4]
 004A8972    mov         eax,dword ptr [ecx+2F4]
 004A8978    mov         edx,dword ptr [eax]
 004A897A    call        dword ptr [edx+0C8]
 004A8980    inc         eax
>004A8981    jne         004A8987
 004A8983    xor         edx,edx
>004A8985    jmp         004A898C
 004A8987    mov         edx,1
 004A898C    mov         eax,dword ptr [ebp-4]
 004A898F    mov         eax,dword ptr [eax+31C];TFEditFieldsDlg_11011981.bEdit:TButton
 004A8995    mov         ecx,dword ptr [eax]
 004A8997    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A899A    mov         dl,1
 004A899C    mov         eax,dword ptr [ebp-4]
 004A899F    mov         eax,dword ptr [eax+2FC];TFEditFieldsDlg_11011981.bAdd:TButton
 004A89A5    mov         ecx,dword ptr [eax]
 004A89A7    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A89AA    mov         edx,dword ptr [ebp-4]
 004A89AD    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A89B3    mov         edx,dword ptr [eax]
 004A89B5    call        dword ptr [edx+0C4];TListBox.sub_0059E38C
 004A89BB    test        eax,eax
>004A89BD    je          004A89D3
 004A89BF    mov         ecx,dword ptr [ebp-4]
 004A89C2    mov         eax,dword ptr [ecx+2F4]
 004A89C8    mov         edx,dword ptr [eax]
 004A89CA    call        dword ptr [edx+0C8]
 004A89D0    inc         eax
>004A89D1    jne         004A89D7
 004A89D3    xor         edx,edx
>004A89D5    jmp         004A89DC
 004A89D7    mov         edx,1
 004A89DC    mov         eax,dword ptr [ebp-4]
 004A89DF    mov         eax,dword ptr [eax+300];TFEditFieldsDlg_11011981.bRemove:TButton
 004A89E5    mov         ecx,dword ptr [eax]
 004A89E7    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A89EA    pop         ecx
 004A89EB    pop         ecx
 004A89EC    pop         ebp
 004A89ED    ret
*}
end;

//004A89F0
procedure TFEditFieldsDlg_11011981.bAddClick(Sender:TObject);
begin
{*
 004A89F0    push        ebp
 004A89F1    mov         ebp,esp
 004A89F3    add         esp,0FFFFFFC8
 004A89F6    mov         dword ptr [ebp-38],edx
 004A89F9    mov         dword ptr [ebp-34],eax
 004A89FC    mov         eax,6C2318
 004A8A01    call        0066FECC
 004A8A06    mov         edx,dword ptr [ebp-34]
 004A8A09    mov         byte ptr [edx+320],1;TFEditFieldsDlg_11011981.?f320:byte
 004A8A10    mov         ecx,dword ptr [ebp-34]
 004A8A13    mov         eax,dword ptr [ecx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A8A19    mov         edx,dword ptr [eax+4C];TListBox.Height:Integer
 004A8A1C    mov         ecx,dword ptr [ebp-34]
 004A8A1F    mov         eax,dword ptr [ecx+304];TFEditFieldsDlg_11011981.edtPanel:TPanel
 004A8A25    mov         ecx,dword ptr [eax+4C];TPanel.Height:Integer
 004A8A28    sub         edx,ecx
 004A8A2A    mov         eax,dword ptr [ebp-34]
 004A8A2D    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8A33    call        TControl.SetHeight
 004A8A38    mov         dl,1
 004A8A3A    mov         ecx,dword ptr [ebp-34]
 004A8A3D    mov         eax,dword ptr [ecx+304];TFEditFieldsDlg_11011981.edtPanel:TPanel
 004A8A43    call        TCCalendar.SetVisible
 004A8A48    mov         word ptr [ebp-20],8
 004A8A4E    mov         edx,6C1F13
 004A8A53    lea         eax,[ebp-4]
 004A8A56    call        0067DAB4
 004A8A5B    inc         dword ptr [ebp-14]
 004A8A5E    mov         edx,dword ptr [eax]
 004A8A60    mov         ecx,dword ptr [ebp-34]
 004A8A63    mov         eax,dword ptr [ecx+318];TFEditFieldsDlg_11011981.edtOffset:TLabeledEdit
 004A8A69    call        TTabPage.SetCaption
 004A8A6E    dec         dword ptr [ebp-14]
 004A8A71    lea         eax,[ebp-4]
 004A8A74    mov         edx,2
 004A8A79    call        0067DCA0
 004A8A7E    mov         dl,1
 004A8A80    mov         eax,dword ptr [ebp-34]
 004A8A83    mov         eax,dword ptr [eax+318];TFEditFieldsDlg_11011981.edtOffset:TLabeledEdit
 004A8A89    mov         ecx,dword ptr [eax]
 004A8A8B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8A8E    mov         word ptr [ebp-20],14
 004A8A94    mov         edx,6C1F14
 004A8A99    lea         eax,[ebp-8]
 004A8A9C    call        0067DAB4
 004A8AA1    inc         dword ptr [ebp-14]
 004A8AA4    mov         edx,dword ptr [eax]
 004A8AA6    mov         ecx,dword ptr [ebp-34]
 004A8AA9    mov         eax,dword ptr [ecx+308];TFEditFieldsDlg_11011981.edtName:TLabeledEdit
 004A8AAF    call        TTabPage.SetCaption
 004A8AB4    dec         dword ptr [ebp-14]
 004A8AB7    lea         eax,[ebp-8]
 004A8ABA    mov         edx,2
 004A8ABF    call        0067DCA0
 004A8AC4    mov         dl,1
 004A8AC6    mov         eax,dword ptr [ebp-34]
 004A8AC9    mov         eax,dword ptr [eax+308];TFEditFieldsDlg_11011981.edtName:TLabeledEdit
 004A8ACF    mov         ecx,dword ptr [eax]
 004A8AD1    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8AD4    mov         word ptr [ebp-20],20
 004A8ADA    mov         edx,6C1F15
 004A8ADF    lea         eax,[ebp-0C]
 004A8AE2    call        0067DAB4
 004A8AE7    inc         dword ptr [ebp-14]
 004A8AEA    mov         edx,dword ptr [eax]
 004A8AEC    mov         ecx,dword ptr [ebp-34]
 004A8AEF    mov         eax,dword ptr [ecx+30C];TFEditFieldsDlg_11011981.edtType:TLabeledEdit
 004A8AF5    call        TTabPage.SetCaption
 004A8AFA    dec         dword ptr [ebp-14]
 004A8AFD    lea         eax,[ebp-0C]
 004A8B00    mov         edx,2
 004A8B05    call        0067DCA0
 004A8B0A    mov         dl,1
 004A8B0C    mov         eax,dword ptr [ebp-34]
 004A8B0F    mov         eax,dword ptr [eax+30C];TFEditFieldsDlg_11011981.edtType:TLabeledEdit
 004A8B15    mov         ecx,dword ptr [eax]
 004A8B17    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8B1A    mov         edx,dword ptr [ebp-34]
 004A8B1D    mov         eax,dword ptr [edx+318];TFEditFieldsDlg_11011981.edtOffset:TLabeledEdit
 004A8B23    mov         edx,dword ptr [eax]
 004A8B25    call        dword ptr [edx+0C0];TLabeledEdit.sub_005FBFF0
 004A8B2B    xor         edx,edx
 004A8B2D    mov         eax,dword ptr [ebp-34]
 004A8B30    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8B36    mov         ecx,dword ptr [eax]
 004A8B38    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8B3B    xor         edx,edx
 004A8B3D    mov         eax,dword ptr [ebp-34]
 004A8B40    mov         eax,dword ptr [eax+310];TFEditFieldsDlg_11011981.bApply:TButton
 004A8B46    mov         ecx,dword ptr [eax]
 004A8B48    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8B4B    mov         dl,1
 004A8B4D    mov         eax,dword ptr [ebp-34]
 004A8B50    mov         eax,dword ptr [eax+314];TFEditFieldsDlg_11011981.bClose:TButton
 004A8B56    mov         ecx,dword ptr [eax]
 004A8B58    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8B5B    xor         edx,edx
 004A8B5D    mov         eax,dword ptr [ebp-34]
 004A8B60    mov         eax,dword ptr [eax+31C];TFEditFieldsDlg_11011981.bEdit:TButton
 004A8B66    mov         ecx,dword ptr [eax]
 004A8B68    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8B6B    xor         edx,edx
 004A8B6D    mov         eax,dword ptr [ebp-34]
 004A8B70    mov         eax,dword ptr [eax+2FC];TFEditFieldsDlg_11011981.bAdd:TButton
 004A8B76    mov         ecx,dword ptr [eax]
 004A8B78    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8B7B    xor         edx,edx
 004A8B7D    mov         eax,dword ptr [ebp-34]
 004A8B80    mov         eax,dword ptr [eax+300];TFEditFieldsDlg_11011981.bRemove:TButton
 004A8B86    mov         ecx,dword ptr [eax]
 004A8B88    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8B8B    mov         edx,dword ptr [ebp-30]
 004A8B8E    mov         dword ptr fs:[0],edx
 004A8B95    mov         esp,ebp
 004A8B97    pop         ebp
 004A8B98    ret
*}
end;

//004A8B9C
procedure TFEditFieldsDlg_11011981.bRemoveClick(Sender:TObject);
begin
{*
 004A8B9C    push        ebp
 004A8B9D    mov         ebp,esp
 004A8B9F    add         esp,0FFFFFFCC
 004A8BA2    mov         dword ptr [ebp-30],edx
 004A8BA5    mov         dword ptr [ebp-2C],eax
 004A8BA8    mov         eax,6C2354
 004A8BAD    call        0066FECC
 004A8BB2    mov         edx,dword ptr [ebp-2C]
 004A8BB5    mov         byte ptr [edx+320],2;TFEditFieldsDlg_11011981.?f320:byte
 004A8BBC    mov         ecx,dword ptr [ebp-2C]
 004A8BBF    mov         eax,dword ptr [ecx+2F0];TFEditFieldsDlg_11011981.lbFXrefs:TListBox
 004A8BC5    mov         edx,dword ptr [eax+4C];TListBox.Height:Integer
 004A8BC8    mov         ecx,dword ptr [ebp-2C]
 004A8BCB    mov         eax,dword ptr [ecx+304];TFEditFieldsDlg_11011981.edtPanel:TPanel
 004A8BD1    mov         ecx,dword ptr [eax+4C];TPanel.Height:Integer
 004A8BD4    sub         edx,ecx
 004A8BD6    mov         eax,dword ptr [ebp-2C]
 004A8BD9    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8BDF    call        TControl.SetHeight
 004A8BE4    mov         dl,1
 004A8BE6    mov         ecx,dword ptr [ebp-2C]
 004A8BE9    mov         eax,dword ptr [ecx+304];TFEditFieldsDlg_11011981.edtPanel:TPanel
 004A8BEF    call        TCCalendar.SetVisible
 004A8BF4    mov         edx,dword ptr [ebp-2C]
 004A8BF7    mov         eax,dword ptr [edx+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8BFD    mov         edx,dword ptr [eax]
 004A8BFF    call        dword ptr [edx+0C8];TListBox.sub_0059E338
 004A8C05    mov         edx,eax
 004A8C07    mov         eax,dword ptr [ebp-2C]
 004A8C0A    mov         eax,dword ptr [eax+32D];TFEditFieldsDlg_11011981.?f32D:dword
 004A8C10    call        TList.Get
 004A8C15    mov         dword ptr [ebp-34],eax
 004A8C18    mov         word ptr [ebp-18],8
 004A8C1E    lea         eax,[ebp-4]
 004A8C21    call        00401EA8
 004A8C26    mov         edx,eax
 004A8C28    inc         dword ptr [ebp-0C]
 004A8C2B    mov         ecx,dword ptr [ebp-34]
 004A8C2E    mov         eax,dword ptr [ecx+1]
 004A8C31    call        0053164C
 004A8C36    lea         edx,[ebp-4]
 004A8C39    mov         edx,dword ptr [edx]
 004A8C3B    mov         eax,dword ptr [ebp-2C]
 004A8C3E    mov         eax,dword ptr [eax+318];TFEditFieldsDlg_11011981.edtOffset:TLabeledEdit
 004A8C44    call        TTabPage.SetCaption
 004A8C49    dec         dword ptr [ebp-0C]
 004A8C4C    lea         eax,[ebp-4]
 004A8C4F    mov         edx,2
 004A8C54    call        0067DCA0
 004A8C59    xor         edx,edx
 004A8C5B    mov         eax,dword ptr [ebp-2C]
 004A8C5E    mov         eax,dword ptr [eax+318];TFEditFieldsDlg_11011981.edtOffset:TLabeledEdit
 004A8C64    mov         ecx,dword ptr [eax]
 004A8C66    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8C69    mov         edx,dword ptr [ebp-34]
 004A8C6C    mov         edx,dword ptr [edx+9]
 004A8C6F    mov         eax,dword ptr [ebp-2C]
 004A8C72    mov         eax,dword ptr [eax+308];TFEditFieldsDlg_11011981.edtName:TLabeledEdit
 004A8C78    call        TTabPage.SetCaption
 004A8C7D    xor         edx,edx
 004A8C7F    mov         ecx,dword ptr [ebp-2C]
 004A8C82    mov         eax,dword ptr [ecx+308];TFEditFieldsDlg_11011981.edtName:TLabeledEdit
 004A8C88    mov         ecx,dword ptr [eax]
 004A8C8A    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8C8D    mov         edx,dword ptr [ebp-34]
 004A8C90    mov         edx,dword ptr [edx+0D]
 004A8C93    mov         eax,dword ptr [ebp-2C]
 004A8C96    mov         eax,dword ptr [eax+30C];TFEditFieldsDlg_11011981.edtType:TLabeledEdit
 004A8C9C    call        TTabPage.SetCaption
 004A8CA1    xor         edx,edx
 004A8CA3    mov         ecx,dword ptr [ebp-2C]
 004A8CA6    mov         eax,dword ptr [ecx+30C];TFEditFieldsDlg_11011981.edtType:TLabeledEdit
 004A8CAC    mov         ecx,dword ptr [eax]
 004A8CAE    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8CB1    xor         edx,edx
 004A8CB3    mov         eax,dword ptr [ebp-2C]
 004A8CB6    mov         eax,dword ptr [eax+2F4];TFEditFieldsDlg_11011981.lbFields:TListBox
 004A8CBC    mov         ecx,dword ptr [eax]
 004A8CBE    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8CC1    mov         dl,1
 004A8CC3    mov         eax,dword ptr [ebp-2C]
 004A8CC6    mov         eax,dword ptr [eax+310];TFEditFieldsDlg_11011981.bApply:TButton
 004A8CCC    mov         ecx,dword ptr [eax]
 004A8CCE    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8CD1    mov         dl,1
 004A8CD3    mov         eax,dword ptr [ebp-2C]
 004A8CD6    mov         eax,dword ptr [eax+314];TFEditFieldsDlg_11011981.bClose:TButton
 004A8CDC    mov         ecx,dword ptr [eax]
 004A8CDE    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8CE1    xor         edx,edx
 004A8CE3    mov         eax,dword ptr [ebp-2C]
 004A8CE6    mov         eax,dword ptr [eax+31C];TFEditFieldsDlg_11011981.bEdit:TButton
 004A8CEC    mov         ecx,dword ptr [eax]
 004A8CEE    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8CF1    xor         edx,edx
 004A8CF3    mov         eax,dword ptr [ebp-2C]
 004A8CF6    mov         eax,dword ptr [eax+2FC];TFEditFieldsDlg_11011981.bAdd:TButton
 004A8CFC    mov         ecx,dword ptr [eax]
 004A8CFE    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8D01    xor         edx,edx
 004A8D03    mov         eax,dword ptr [ebp-2C]
 004A8D06    mov         eax,dword ptr [eax+300];TFEditFieldsDlg_11011981.bRemove:TButton
 004A8D0C    mov         ecx,dword ptr [eax]
 004A8D0E    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 004A8D11    mov         edx,dword ptr [ebp-28]
 004A8D14    mov         dword ptr fs:[0],edx
 004A8D1B    mov         esp,ebp
 004A8D1D    pop         ebp
 004A8D1E    ret
*}
end;

//004A8D20
procedure TFEditFieldsDlg_11011981.FormCreate(Sender:TObject);
begin
{*
 004A8D20    push        ebp
 004A8D21    mov         ebp,esp
 004A8D23    add         esp,0FFFFFFF8
 004A8D26    mov         dword ptr [ebp-8],edx
 004A8D29    mov         dword ptr [ebp-4],eax
 004A8D2C    mov         eax,dword ptr [ebp-4]
 004A8D2F    call        00531284
 004A8D34    pop         ecx
 004A8D35    pop         ecx
 004A8D36    pop         ebp
 004A8D37    ret
*}
end;

//004A8DD4
constructor TFKBViewer_11011981.Create(AOwner:TComponent);
begin
{*
 004A8DD4    push        ebp
 004A8DD5    mov         ebp,esp
 004A8DD7    add         esp,0FFFFFFD0
 004A8DDA    mov         byte ptr [ebp-8],dl
 004A8DDD    test        dl,dl
>004A8DDF    jle         004A8DE6
 004A8DE1    call        0067EF6C
 004A8DE6    mov         dword ptr [ebp-30],ecx
 004A8DE9    mov         byte ptr [ebp-29],dl
 004A8DEC    mov         dword ptr [ebp-4],eax
 004A8DEF    mov         eax,6C26CC
 004A8DF4    call        0066FECC
 004A8DF9    mov         word ptr [ebp-18],8
 004A8DFF    mov         ecx,dword ptr [ebp-30]
 004A8E02    xor         edx,edx
 004A8E04    mov         eax,dword ptr [ebp-4]
 004A8E07    call        0040207C
 004A8E0C    add         dword ptr [ebp-0C],10
 004A8E10    mov         edx,dword ptr [ebp-4]
 004A8E13    xor         ecx,ecx
 004A8E15    mov         dword ptr [edx+32C],ecx;TFKBViewer_11011981.?f32C:dword
 004A8E1B    mov         eax,dword ptr [ebp-4]
 004A8E1E    mov         dword ptr [eax+330],0FFFFFFFF;TFKBViewer_11011981.?f330:dword
 004A8E28    mov         edx,dword ptr [ebp-4]
 004A8E2B    xor         ecx,ecx
 004A8E2D    mov         dword ptr [edx+334],ecx;TFKBViewer_11011981.?f334:dword
 004A8E33    mov         eax,dword ptr [ebp-4]
 004A8E36    xor         edx,edx
 004A8E38    mov         dword ptr [eax+33C],edx;TFKBViewer_11011981.?f33C:dword
 004A8E3E    mov         ecx,dword ptr [ebp-4]
 004A8E41    xor         eax,eax
 004A8E43    mov         dword ptr [ecx+340],eax
 004A8E49    mov         edx,dword ptr [ebp-28]
 004A8E4C    mov         dword ptr fs:[0],edx
 004A8E53    mov         eax,dword ptr [ebp-4]
 004A8E56    mov         dl,byte ptr [ebp-29]
 004A8E59    test        dl,dl
>004A8E5B    je          004A8E62
 004A8E5D    call        0067EF79
 004A8E62    mov         esp,ebp
 004A8E64    pop         ebp
 004A8E65    ret
*}
end;

//004A8E8C
procedure TFKBViewer_11011981.FormCreate(Sender:TObject);
begin
{*
 004A8E8C    push        ebp
 004A8E8D    mov         ebp,esp
 004A8E8F    add         esp,0FFFFFFF0
 004A8E92    mov         dword ptr [ebp-8],edx
 004A8E95    mov         dword ptr [ebp-4],eax
 004A8E98    mov         eax,dword ptr [ebp-4]
 004A8E9B    mov         edx,dword ptr [eax+2F4];TFKBViewer_11011981.lbIDR:TListBox
 004A8EA1    mov         ecx,dword ptr [edx+228];TListBox.FCanvas:TCanvas
 004A8EA7    add         ecx,0C;TCanvas.Font:TFont
 004A8EAA    mov         dword ptr [ebp-0C],ecx
 004A8EAD    mov         eax,dword ptr [ebp-4]
 004A8EB0    mov         edx,dword ptr [eax+2F4];TFKBViewer_11011981.lbIDR:TListBox
 004A8EB6    mov         edx,dword ptr [edx+68];TListBox.FFont:TFont
 004A8EB9    mov         eax,dword ptr [ebp-0C]
 004A8EBC    mov         eax,dword ptr [eax]
 004A8EBE    mov         ecx,dword ptr [eax]
 004A8EC0    call        dword ptr [ecx+8]
 004A8EC3    mov         edx,dword ptr [ebp-4]
 004A8EC6    mov         eax,dword ptr [edx+2F0];TFKBViewer_11011981.lbKB:TListBox
 004A8ECC    mov         edx,dword ptr [eax+228];TListBox.FCanvas:TCanvas
 004A8ED2    add         edx,0C;TCanvas.Font:TFont
 004A8ED5    mov         dword ptr [ebp-10],edx
 004A8ED8    mov         ecx,dword ptr [ebp-4]
 004A8EDB    mov         eax,dword ptr [ecx+2F0]
 004A8EE1    mov         edx,dword ptr [eax+68]
 004A8EE4    mov         ecx,dword ptr [ebp-10]
 004A8EE7    mov         eax,dword ptr [ecx]
 004A8EE9    mov         ecx,dword ptr [eax]
 004A8EEB    call        dword ptr [ecx+8]
 004A8EEE    mov         eax,dword ptr [ebp-4]
 004A8EF1    call        00531284
 004A8EF6    mov         esp,ebp
 004A8EF8    pop         ebp
 004A8EF9    ret
*}
end;

//004A8EFC
procedure sub_004A8EFC(?:TFKBViewer_11011981; ?:dword; ?:Integer);
begin
{*
 004A8EFC    push        ebp
 004A8EFD    mov         ebp,esp
 004A8EFF    add         esp,0FFFFFD8C
 004A8F05    push        ebx
 004A8F06    mov         dword ptr [ebp-0EC],ecx
 004A8F0C    mov         dword ptr [ebp-0E8],edx
 004A8F12    mov         dword ptr [ebp-0E4],eax
 004A8F18    mov         eax,6C292C
 004A8F1D    call        0066FECC
 004A8F22    mov         word ptr [ebp-0D0],8
 004A8F2B    lea         eax,[ebp-4]
 004A8F2E    call        00401EA8
 004A8F33    inc         dword ptr [ebp-0C4]
 004A8F39    mov         word ptr [ebp-0D0],14
 004A8F42    mov         edx,dword ptr [ebp-0E4]
 004A8F48    mov         ecx,dword ptr [ebp-0EC]
 004A8F4E    mov         dword ptr [edx+330],ecx
 004A8F54    mov         eax,dword ptr [ebp-0E4]
 004A8F5A    mov         edx,dword ptr [ebp-0E8]
 004A8F60    mov         dword ptr [eax+334],edx
 004A8F66    mov         word ptr [ebp-0D0],20
 004A8F6F    mov         ecx,dword ptr [ebp-0E4]
 004A8F75    mov         edx,dword ptr [ecx+330]
 004A8F7B    lea         eax,[ebp-2C]
 004A8F7E    call        0067DC18
 004A8F83    inc         dword ptr [ebp-0C4]
 004A8F89    mov         edx,dword ptr [eax]
 004A8F8B    mov         eax,dword ptr [ebp-0E4]
 004A8F91    mov         eax,dword ptr [eax+314]
 004A8F97    call        TTabPage.SetCaption
 004A8F9C    dec         dword ptr [ebp-0C4]
 004A8FA2    lea         eax,[ebp-2C]
 004A8FA5    mov         edx,2
 004A8FAA    call        0067DCA0
 004A8FAF    mov         word ptr [ebp-0D0],2C
 004A8FB8    mov         ecx,dword ptr [ebp-0E4]
 004A8FBE    mov         edx,dword ptr [ecx+330]
 004A8FC4    mov         eax,dword ptr [ebp-0E4]
 004A8FCA    mov         ecx,dword ptr [eax+338]
 004A8FD0    sub         edx,ecx
 004A8FD2    lea         eax,[ebp-30]
 004A8FD5    call        0067DC18
 004A8FDA    inc         dword ptr [ebp-0C4]
 004A8FE0    mov         edx,dword ptr [eax]
 004A8FE2    mov         ecx,dword ptr [ebp-0E4]
 004A8FE8    mov         eax,dword ptr [ecx+30C]
 004A8FEE    call        TTabPage.SetCaption
 004A8FF3    dec         dword ptr [ebp-0C4]
 004A8FF9    lea         eax,[ebp-30]
 004A8FFC    mov         edx,2
 004A9001    call        0067DCA0
 004A9006    mov         ecx,dword ptr [ebp-0E4]
 004A900C    mov         eax,dword ptr [ecx+2F4]
 004A9012    mov         edx,dword ptr [eax]
 004A9014    call        dword ptr [edx+0D4]
 004A901A    mov         ecx,dword ptr [ebp-0E4]
 004A9020    mov         eax,dword ptr [ecx+2F4]
 004A9026    mov         edx,dword ptr [eax+228]
 004A902C    mov         dword ptr [ebp-118],edx
 004A9032    xor         ecx,ecx
 004A9034    mov         dword ptr [ebp-100],ecx
 004A903A    xor         eax,eax
 004A903C    mov         dword ptr [ebp-0F8],eax
>004A9042    jmp         004A91C6
 004A9047    mov         word ptr [ebp-0D0],38
 004A9050    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004A9056    mov         ecx,dword ptr [edx]
 004A9058    mov         eax,dword ptr [ecx+32C]
 004A905E    add         eax,218
 004A9063    mov         dword ptr [ebp-11C],eax
 004A9069    lea         eax,[ebp-34]
 004A906C    call        00401EA8
 004A9071    mov         ecx,eax
 004A9073    inc         dword ptr [ebp-0C4]
 004A9079    mov         edx,dword ptr [ebp-11C]
 004A907F    mov         eax,dword ptr [edx]
 004A9081    mov         edx,dword ptr [ebp-0F8]
 004A9087    mov         ebx,dword ptr [eax]
 004A9089    call        dword ptr [ebx+0C]
 004A908C    lea         edx,[ebp-34]
 004A908F    lea         eax,[ebp-4]
 004A9092    call        0067DCD0
 004A9097    dec         dword ptr [ebp-0C4]
 004A909D    lea         eax,[ebp-34]
 004A90A0    mov         edx,2
 004A90A5    call        0067DCA0
 004A90AA    lea         eax,[ebp-4]
 004A90AD    call        00405290
 004A90B2    dec         eax
 004A90B3    mov         dword ptr [ebp-120],eax
 004A90B9    mov         word ptr [ebp-0D0],14
 004A90C2    mov         edx,dword ptr [ebp-0F8]
 004A90C8    test        edx,edx
>004A90CA    je          004A90D2
 004A90CC    dec         dword ptr [ebp-120]
 004A90D2    mov         word ptr [ebp-0D0],44
 004A90DB    lea         eax,[ebp-38]
 004A90DE    call        00401EA8
 004A90E3    push        eax
 004A90E4    inc         dword ptr [ebp-0C4]
 004A90EA    lea         eax,[ebp-4]
 004A90ED    mov         ecx,dword ptr [ebp-120]
 004A90F3    mov         edx,2
 004A90F8    call        0067E0BC
 004A90FD    lea         edx,[ebp-38]
 004A9100    lea         eax,[ebp-4]
 004A9103    call        0067DCD0
 004A9108    dec         dword ptr [ebp-0C4]
 004A910E    lea         eax,[ebp-38]
 004A9111    mov         edx,2
 004A9116    call        0067DCA0
 004A911B    mov         ecx,dword ptr [ebp-0F8]
 004A9121    test        ecx,ecx
>004A9123    jne         004A9169
 004A9125    mov         word ptr [ebp-0D0],50
 004A912E    lea         eax,[ebp-3C]
 004A9131    call        00401EA8
 004A9136    mov         ecx,eax
 004A9138    inc         dword ptr [ebp-0C4]
 004A913E    lea         edx,[ebp-4]
 004A9141    mov         eax,6C264C
 004A9146    call        0067E37C
 004A914B    lea         edx,[ebp-3C]
 004A914E    lea         eax,[ebp-4]
 004A9151    call        0067DCD0
 004A9156    dec         dword ptr [ebp-0C4]
 004A915C    lea         eax,[ebp-3C]
 004A915F    mov         edx,2
 004A9164    call        0067DCA0
 004A9169    mov         ecx,dword ptr [ebp-0E4]
 004A916F    mov         eax,dword ptr [ecx+2F4]
 004A9175    add         eax,218
 004A917A    mov         dword ptr [ebp-124],eax
 004A9180    mov         edx,dword ptr [ebp-124]
 004A9186    mov         eax,dword ptr [edx]
 004A9188    mov         edx,dword ptr [ebp-4]
 004A918B    mov         ecx,dword ptr [eax]
 004A918D    call        dword ptr [ecx+38]
 004A9190    mov         edx,dword ptr [ebp-4]
 004A9193    mov         eax,dword ptr [ebp-118]
 004A9199    call        005C1754
 004A919E    mov         dword ptr [ebp-0FC],eax
 004A91A4    mov         ecx,dword ptr [ebp-0FC]
 004A91AA    mov         eax,dword ptr [ebp-100]
 004A91B0    cmp         ecx,eax
>004A91B2    jle         004A91C0
 004A91B4    mov         edx,dword ptr [ebp-0FC]
 004A91BA    mov         dword ptr [ebp-100],edx
 004A91C0    inc         dword ptr [ebp-0F8]
 004A91C6    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004A91CC    mov         eax,dword ptr [ecx]
 004A91CE    mov         eax,dword ptr [eax+32C]
 004A91D4    mov         edx,dword ptr [eax]
 004A91D6    call        dword ptr [edx+0C4]
 004A91DC    mov         ecx,dword ptr [ebp-0F8]
 004A91E2    cmp         eax,ecx
>004A91E4    jg          004A9047
 004A91EA    mov         edx,dword ptr [ebp-100]
 004A91F0    add         edx,2
 004A91F3    mov         eax,dword ptr [ebp-0E4]
 004A91F9    mov         eax,dword ptr [eax+2F4]
 004A91FF    call        TListBox.SetScrollWidth
 004A9204    mov         edx,dword ptr [ebp-0E4]
 004A920A    mov         eax,dword ptr [edx+2F0]
 004A9210    mov         edx,dword ptr [eax]
 004A9212    call        dword ptr [edx+0D4]
 004A9218    xor         ecx,ecx
 004A921A    mov         dword ptr [ebp-104],ecx
 004A9220    mov         word ptr [ebp-0D0],5C
 004A9229    lea         eax,[ebp-28]
 004A922C    call        0046E470
 004A9231    add         dword ptr [ebp-0C4],3
 004A9238    mov         word ptr [ebp-0D0],14
 004A9241    lea         edx,[ebp-28]
 004A9244    mov         dword ptr [ebp-128],edx
 004A924A    xor         ecx,ecx
 004A924C    mov         dword ptr [ebp-100],ecx
 004A9252    push        dword ptr [ebp-128]
 004A9258    mov         eax,dword ptr [ebp-0E4]
 004A925E    mov         edx,dword ptr [eax+330]
 004A9264    mov         eax,6ECAB4
 004A9269    mov         ecx,1
 004A926E    call        00471F14
 004A9273    test        eax,eax
>004A9275    je          004A9E2C
 004A927B    mov         word ptr [ebp-0D0],68
 004A9284    lea         eax,[ebp-40]
 004A9287    call        00401EA8
 004A928C    mov         ecx,eax
 004A928E    inc         dword ptr [ebp-0C4]
 004A9294    mov         edx,dword ptr [ebp-128]
 004A929A    mov         dx,word ptr [edx]
 004A929D    mov         eax,6ECAB4
 004A92A2    call        0046EF0C
 004A92A7    lea         edx,[ebp-40]
 004A92AA    mov         edx,dword ptr [edx]
 004A92AC    mov         eax,dword ptr [ebp-0E4]
 004A92B2    mov         eax,dword ptr [eax+320]
 004A92B8    call        TTabPage.SetCaption
 004A92BD    dec         dword ptr [ebp-0C4]
 004A92C3    lea         eax,[ebp-40]
 004A92C6    mov         edx,2
 004A92CB    call        0067DCA0
 004A92D0    lea         ecx,[ebp-10C]
 004A92D6    push        ecx
 004A92D7    lea         ecx,[ebp-108]
 004A92DD    mov         eax,dword ptr [ebp-128]
 004A92E3    mov         dx,word ptr [eax]
 004A92E6    mov         eax,6ECAB4
 004A92EB    call        00471484
 004A92F0    mov         word ptr [ebp-0D0],74
 004A92F9    lea         eax,[ebp-4C]
 004A92FC    call        00401EA8
 004A9301    push        eax
 004A9302    inc         dword ptr [ebp-0C4]
 004A9308    mov         edx,6C2651
 004A930D    lea         eax,[ebp-48]
 004A9310    call        0067DAB4
 004A9315    inc         dword ptr [ebp-0C4]
 004A931B    lea         edx,[ebp-48]
 004A931E    push        edx
 004A931F    lea         eax,[ebp-44]
 004A9322    mov         edx,dword ptr [ebp-108]
 004A9328    call        0067DC18
 004A932D    inc         dword ptr [ebp-0C4]
 004A9333    pop         edx
 004A9334    pop         ecx
 004A9335    call        0067DCF8
 004A933A    lea         eax,[ebp-4C]
 004A933D    push        eax
 004A933E    lea         eax,[ebp-54]
 004A9341    call        00401EA8
 004A9346    push        eax
 004A9347    inc         dword ptr [ebp-0C4]
 004A934D    lea         eax,[ebp-50]
 004A9350    mov         edx,dword ptr [ebp-10C]
 004A9356    call        0067DC18
 004A935B    mov         edx,eax
 004A935D    inc         dword ptr [ebp-0C4]
 004A9363    pop         ecx
 004A9364    pop         eax
 004A9365    call        0067DCF8
 004A936A    lea         edx,[ebp-54]
 004A936D    mov         edx,dword ptr [edx]
 004A936F    mov         eax,dword ptr [ebp-0E4]
 004A9375    mov         eax,dword ptr [eax+328]
 004A937B    call        TTabPage.SetCaption
 004A9380    dec         dword ptr [ebp-0C4]
 004A9386    lea         eax,[ebp-54]
 004A9389    mov         edx,2
 004A938E    call        0067DCA0
 004A9393    dec         dword ptr [ebp-0C4]
 004A9399    lea         eax,[ebp-50]
 004A939C    mov         edx,2
 004A93A1    call        0067DCA0
 004A93A6    dec         dword ptr [ebp-0C4]
 004A93AC    lea         eax,[ebp-4C]
 004A93AF    mov         edx,2
 004A93B4    call        0067DCA0
 004A93B9    dec         dword ptr [ebp-0C4]
 004A93BF    lea         eax,[ebp-48]
 004A93C2    mov         edx,2
 004A93C7    call        0067DCA0
 004A93CC    dec         dword ptr [ebp-0C4]
 004A93D2    lea         eax,[ebp-44]
 004A93D5    mov         edx,2
 004A93DA    call        0067DCA0
 004A93DF    mov         ecx,dword ptr [ebp-0E4]
 004A93E5    mov         eax,dword ptr [ecx+2F0]
 004A93EB    mov         edx,dword ptr [eax+228]
 004A93F1    mov         dword ptr [ebp-118],edx
 004A93F7    mov         word ptr [ebp-0D0],80
 004A9400    lea         eax,[ebp-58]
 004A9403    call        00401EA8
 004A9408    mov         ecx,eax
 004A940A    inc         dword ptr [ebp-0C4]
 004A9410    mov         edx,dword ptr [ebp-128]
 004A9416    add         edx,2
 004A9419    mov         eax,6C2655
 004A941E    call        0067E37C
 004A9423    lea         edx,[ebp-58]
 004A9426    lea         eax,[ebp-4]
 004A9429    call        0067DCD0
 004A942E    dec         dword ptr [ebp-0C4]
 004A9434    lea         eax,[ebp-58]
 004A9437    mov         edx,2
 004A943C    call        0067DCA0
 004A9441    mov         ecx,dword ptr [ebp-0E4]
 004A9447    mov         eax,dword ptr [ecx+2F0]
 004A944D    add         eax,218
 004A9452    mov         dword ptr [ebp-12C],eax
 004A9458    mov         edx,dword ptr [ebp-12C]
 004A945E    mov         eax,dword ptr [edx]
 004A9460    mov         edx,dword ptr [ebp-4]
 004A9463    mov         ecx,dword ptr [eax]
 004A9465    call        dword ptr [ecx+38]
 004A9468    inc         dword ptr [ebp-104]
 004A946E    mov         edx,dword ptr [ebp-4]
 004A9471    mov         eax,dword ptr [ebp-118]
 004A9477    call        005C1754
 004A947C    mov         dword ptr [ebp-0FC],eax
 004A9482    mov         ecx,dword ptr [ebp-0FC]
 004A9488    mov         eax,dword ptr [ebp-100]
 004A948E    cmp         ecx,eax
>004A9490    jle         004A949E
 004A9492    mov         edx,dword ptr [ebp-0FC]
 004A9498    mov         dword ptr [ebp-100],edx
 004A949E    xor         ecx,ecx
 004A94A0    mov         dword ptr [ebp-134],ecx
 004A94A6    mov         word ptr [ebp-0D0],14
 004A94AF    mov         eax,dword ptr [ebp-0E8]
 004A94B5    mov         dword ptr [ebp-138],eax
 004A94BB    mov         edx,dword ptr [ebp-128]
 004A94C1    mov         ecx,dword ptr [edx+16]
 004A94C4    test        ecx,ecx
>004A94C6    je          004A9E15
 004A94CC    mov         eax,dword ptr [ebp-128]
 004A94D2    mov         edx,dword ptr [eax+1A]
 004A94D5    mov         ecx,dword ptr [ebp-128]
 004A94DB    mov         eax,dword ptr [ecx+12]
 004A94DE    add         eax,eax
 004A94E0    add         edx,eax
 004A94E2    mov         dword ptr [ebp-13C],edx
 004A94E8    xor         edx,edx
 004A94EA    mov         dword ptr [ebp-0F4],edx
>004A94F0    jmp         004A9B46
 004A94F5    mov         ecx,dword ptr [ebp-13C]
 004A94FB    mov         al,byte ptr [ecx]
 004A94FD    mov         byte ptr [ebp-13D],al
 004A9503    mov         word ptr [ebp-0D0],14
 004A950C    inc         dword ptr [ebp-13C]
 004A9512    mov         edx,dword ptr [ebp-13C]
 004A9518    mov         ecx,dword ptr [edx]
 004A951A    mov         dword ptr [ebp-144],ecx
 004A9520    add         dword ptr [ebp-13C],4
 004A9527    mov         eax,dword ptr [ebp-13C]
 004A952D    mov         dx,word ptr [eax]
 004A9530    mov         word ptr [ebp-146],dx
 004A9537    add         dword ptr [ebp-13C],2
 004A953E    mov         word ptr [ebp-0D0],98
 004A9547    movzx       ecx,word ptr [ebp-146]
 004A954E    lea         eax,[ebp-5C]
 004A9551    mov         edx,dword ptr [ebp-13C]
 004A9557    call        0067DB28
 004A955C    inc         dword ptr [ebp-0C4]
 004A9562    mov         word ptr [ebp-0D0],8C
 004A956B    movzx       ecx,word ptr [ebp-146]
 004A9572    inc         ecx
 004A9573    add         dword ptr [ebp-13C],ecx
>004A9579    jmp         004A9AFD
 004A957E    mov         eax,dword ptr [ebp-138]
 004A9584    xor         edx,edx
 004A9586    push        edx
 004A9587    push        eax
 004A9588    lea         ecx,[ebp-274]
 004A958E    push        ecx
 004A958F    lea         ecx,[ebp-210]
 004A9595    mov         eax,dword ptr [ebp-128]
 004A959B    mov         edx,dword ptr [eax+1A]
 004A959E    mov         eax,dword ptr [ebp-134]
 004A95A4    add         edx,eax
 004A95A6    mov         eax,6ECAB0
 004A95AB    call        004749C0
 004A95B0    mov         dword ptr [ebp-130],eax
 004A95B6    mov         edx,dword ptr [ebp-130]
 004A95BC    test        edx,edx
>004A95BE    jne         004A9691
 004A95C4    mov         ecx,dword ptr [ebp-0E4]
 004A95CA    mov         eax,dword ptr [ecx+2F0]
 004A95D0    add         eax,218
 004A95D5    mov         dword ptr [ebp-14C],eax
 004A95DB    mov         word ptr [ebp-0D0],0A4
 004A95E4    lea         eax,[ebp-60]
 004A95E7    call        00401EA8
 004A95EC    mov         edx,eax
 004A95EE    inc         dword ptr [ebp-0C4]
 004A95F4    mov         eax,dword ptr [ebp-138]
 004A95FA    call        0053188C
 004A95FF    lea         edx,[ebp-60]
 004A9602    push        edx
 004A9603    lea         eax,[ebp-68]
 004A9606    call        00401EA8
 004A960B    push        eax
 004A960C    inc         dword ptr [ebp-0C4]
 004A9612    mov         edx,6C2659
 004A9617    lea         eax,[ebp-64]
 004A961A    call        0067DAB4
 004A961F    inc         dword ptr [ebp-0C4]
 004A9625    lea         edx,[ebp-64]
 004A9628    pop         ecx
 004A9629    pop         eax
 004A962A    call        0067DCF8
 004A962F    lea         edx,[ebp-68]
 004A9632    mov         edx,dword ptr [edx]
 004A9634    mov         eax,dword ptr [ebp-14C]
 004A963A    mov         eax,dword ptr [eax]
 004A963C    mov         ecx,dword ptr [eax]
 004A963E    call        dword ptr [ecx+38]
 004A9641    dec         dword ptr [ebp-0C4]
 004A9647    lea         eax,[ebp-68]
 004A964A    mov         edx,2
 004A964F    call        0067DCA0
 004A9654    dec         dword ptr [ebp-0C4]
 004A965A    lea         eax,[ebp-64]
 004A965D    mov         edx,2
 004A9662    call        0067DCA0
 004A9667    dec         dword ptr [ebp-0C4]
 004A966D    lea         eax,[ebp-60]
 004A9670    mov         edx,2
 004A9675    call        0067DCA0
 004A967A    inc         dword ptr [ebp-104]
 004A9680    inc         dword ptr [ebp-134]
 004A9686    inc         dword ptr [ebp-138]
>004A968C    jmp         004A9AFD
 004A9691    lea         edx,[ebp-210]
 004A9697    mov         eax,6ECAB0
 004A969C    call        00474648
 004A96A1    mov         byte ptr [ebp-14D],al
 004A96A7    mov         word ptr [ebp-0D0],8C
 004A96B0    mov         word ptr [ebp-0D0],0B0
 004A96B9    lea         eax,[ebp-6C]
 004A96BC    call        00401EA8
 004A96C1    mov         edx,eax
 004A96C3    inc         dword ptr [ebp-0C4]
 004A96C9    mov         eax,dword ptr [ebp-138]
 004A96CF    call        0053188C
 004A96D4    lea         edx,[ebp-6C]
 004A96D7    push        edx
 004A96D8    lea         eax,[ebp-74]
 004A96DB    call        00401EA8
 004A96E0    push        eax
 004A96E1    inc         dword ptr [ebp-0C4]
 004A96E7    mov         edx,6C2663
 004A96EC    lea         eax,[ebp-70]
 004A96EF    call        0067DAB4
 004A96F4    inc         dword ptr [ebp-0C4]
 004A96FA    lea         edx,[ebp-70]
 004A96FD    pop         ecx
 004A96FE    pop         eax
 004A96FF    call        0067DCF8
 004A9704    lea         edx,[ebp-74]
 004A9707    push        edx
 004A9708    lea         eax,[ebp-7C]
 004A970B    call        00401EA8
 004A9710    push        eax
 004A9711    inc         dword ptr [ebp-0C4]
 004A9717    lea         edx,[ebp-274]
 004A971D    lea         eax,[ebp-78]
 004A9720    call        0067DAB4
 004A9725    inc         dword ptr [ebp-0C4]
 004A972B    lea         edx,[ebp-78]
 004A972E    pop         ecx
 004A972F    pop         eax
 004A9730    call        0067DCF8
 004A9735    lea         edx,[ebp-7C]
 004A9738    lea         eax,[ebp-4]
 004A973B    call        0067DCD0
 004A9740    dec         dword ptr [ebp-0C4]
 004A9746    lea         eax,[ebp-7C]
 004A9749    mov         edx,2
 004A974E    call        0067DCA0
 004A9753    dec         dword ptr [ebp-0C4]
 004A9759    lea         eax,[ebp-78]
 004A975C    mov         edx,2
 004A9761    call        0067DCA0
 004A9766    dec         dword ptr [ebp-0C4]
 004A976C    lea         eax,[ebp-74]
 004A976F    mov         edx,2
 004A9774    call        0067DCA0
 004A9779    dec         dword ptr [ebp-0C4]
 004A977F    lea         eax,[ebp-70]
 004A9782    mov         edx,2
 004A9787    call        0067DCA0
 004A978C    dec         dword ptr [ebp-0C4]
 004A9792    lea         eax,[ebp-6C]
 004A9795    mov         edx,2
 004A979A    call        0067DCA0
 004A979F    mov         byte ptr [ebp-0ED],0
 004A97A6    mov         ecx,dword ptr [ebp-134]
 004A97AC    mov         eax,dword ptr [ebp-130]
 004A97B2    add         ecx,eax
 004A97B4    mov         edx,dword ptr [ebp-144]
 004A97BA    cmp         ecx,edx
>004A97BC    jle         004A9A65
 004A97C2    mov         cl,byte ptr [ebp-1AF]
 004A97C8    test        cl,cl
>004A97CA    je          004A9886
 004A97D0    mov         word ptr [ebp-0D0],0BC
 004A97D9    lea         eax,[ebp-80]
 004A97DC    call        00401EA8
 004A97E1    mov         edx,eax
 004A97E3    inc         dword ptr [ebp-0C4]
 004A97E9    mov         eax,dword ptr [ebp-138]
 004A97EF    call        0053188C
 004A97F4    lea         edx,[ebp-80]
 004A97F7    push        edx
 004A97F8    lea         eax,[ebp-88]
 004A97FE    call        00401EA8
 004A9803    push        eax
 004A9804    inc         dword ptr [ebp-0C4]
 004A980A    mov         edx,6C266A
 004A980F    lea         eax,[ebp-84]
 004A9815    call        0067DAB4
 004A981A    inc         dword ptr [ebp-0C4]
 004A9820    lea         edx,[ebp-84]
 004A9826    pop         ecx
 004A9827    pop         eax
 004A9828    call        0067DCF8
 004A982D    lea         edx,[ebp-88]
 004A9833    lea         eax,[ebp-4]
 004A9836    call        0067DCD0
 004A983B    dec         dword ptr [ebp-0C4]
 004A9841    lea         eax,[ebp-88]
 004A9847    mov         edx,2
 004A984C    call        0067DCA0
 004A9851    dec         dword ptr [ebp-0C4]
 004A9857    lea         eax,[ebp-84]
 004A985D    mov         edx,2
 004A9862    call        0067DCA0
 004A9867    dec         dword ptr [ebp-0C4]
 004A986D    lea         eax,[ebp-80]
 004A9870    mov         edx,2
 004A9875    call        0067DCA0
 004A987A    mov         byte ptr [ebp-0ED],1
>004A9881    jmp         004A998D
 004A9886    mov         cl,byte ptr [ebp-14D]
 004A988C    cmp         cl,8F
>004A988F    jne         004A994A
 004A9895    mov         word ptr [ebp-0D0],0C8
 004A989E    lea         eax,[ebp-8C]
 004A98A4    call        00401EA8
 004A98A9    mov         edx,eax
 004A98AB    inc         dword ptr [ebp-0C4]
 004A98B1    mov         eax,dword ptr [ebp-138]
 004A98B7    call        0053188C
 004A98BC    lea         edx,[ebp-8C]
 004A98C2    push        edx
 004A98C3    lea         eax,[ebp-94]
 004A98C9    call        00401EA8
 004A98CE    push        eax
 004A98CF    inc         dword ptr [ebp-0C4]
 004A98D5    mov         edx,6C267D
 004A98DA    lea         eax,[ebp-90]
 004A98E0    call        0067DAB4
 004A98E5    inc         dword ptr [ebp-0C4]
 004A98EB    lea         edx,[ebp-90]
 004A98F1    pop         ecx
 004A98F2    pop         eax
 004A98F3    call        0067DCF8
 004A98F8    lea         edx,[ebp-94]
 004A98FE    lea         eax,[ebp-4]
 004A9901    call        0067DCD0
 004A9906    dec         dword ptr [ebp-0C4]
 004A990C    lea         eax,[ebp-94]
 004A9912    mov         edx,2
 004A9917    call        0067DCA0
 004A991C    dec         dword ptr [ebp-0C4]
 004A9922    lea         eax,[ebp-90]
 004A9928    mov         edx,2
 004A992D    call        0067DCA0
 004A9932    dec         dword ptr [ebp-0C4]
 004A9938    lea         eax,[ebp-8C]
 004A993E    mov         edx,2
 004A9943    call        0067DCA0
>004A9948    jmp         004A998D
 004A994A    mov         word ptr [ebp-0D0],0D4
 004A9953    mov         edx,6C2690
 004A9958    lea         eax,[ebp-98]
 004A995E    call        0067DAB4
 004A9963    inc         dword ptr [ebp-0C4]
 004A9969    lea         edx,[ebp-98]
 004A996F    lea         eax,[ebp-4]
 004A9972    call        0067DCE4
 004A9977    dec         dword ptr [ebp-0C4]
 004A997D    lea         eax,[ebp-98]
 004A9983    mov         edx,2
 004A9988    call        0067DCA0
 004A998D    mov         ecx,dword ptr [ebp-128]
 004A9993    mov         edx,dword ptr [ecx+2]
 004A9996    mov         eax,dword ptr [ebp-5C]
 004A9999    call        SameText
 004A999E    test        al,al
>004A99A0    jne         004A99B2
 004A99A2    lea         edx,[ebp-5C]
 004A99A5    lea         eax,[ebp-4]
 004A99A8    call        0067DCE4
>004A99AD    jmp         004A9A65
 004A99B2    mov         ecx,dword ptr [ebp-0E4]
 004A99B8    mov         eax,dword ptr [ecx+334]
 004A99BE    call        005312C8
 004A99C3    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004A99C9    lea         ecx,[edx+eax]
 004A99CC    mov         eax,dword ptr [ebp-144]
 004A99D2    mov         edx,dword ptr [ecx+eax]
 004A99D5    mov         dword ptr [ebp-110],edx
 004A99DB    movsx       ecx,byte ptr [ebp-13D]
 004A99E2    cmp         ecx,4A
>004A99E5    jne         004A9A0E
 004A99E7    mov         eax,dword ptr [ebp-0E4]
 004A99ED    mov         edx,dword ptr [eax+334]
 004A99F3    mov         ecx,dword ptr [ebp-144]
 004A99F9    add         edx,ecx
 004A99FB    mov         eax,dword ptr [ebp-110]
 004A9A01    add         edx,eax
 004A9A03    add         edx,4
 004A9A06    mov         dword ptr [ebp-114],edx
>004A9A0C    jmp         004A9A1A
 004A9A0E    mov         edx,dword ptr [ebp-110]
 004A9A14    mov         dword ptr [ebp-114],edx
 004A9A1A    mov         word ptr [ebp-0D0],0E0
 004A9A23    lea         eax,[ebp-9C]
 004A9A29    call        00401EA8
 004A9A2E    mov         edx,eax
 004A9A30    inc         dword ptr [ebp-0C4]
 004A9A36    mov         eax,dword ptr [ebp-114]
 004A9A3C    call        0053188C
 004A9A41    lea         edx,[ebp-9C]
 004A9A47    lea         eax,[ebp-4]
 004A9A4A    call        0067DCE4
 004A9A4F    dec         dword ptr [ebp-0C4]
 004A9A55    lea         eax,[ebp-9C]
 004A9A5B    mov         edx,2
 004A9A60    call        0067DCA0
 004A9A65    mov         ecx,dword ptr [ebp-0E4]
 004A9A6B    mov         eax,dword ptr [ecx+2F0]
 004A9A71    add         eax,218
 004A9A76    mov         dword ptr [ebp-154],eax
 004A9A7C    mov         edx,dword ptr [ebp-154]
 004A9A82    mov         eax,dword ptr [edx]
 004A9A84    mov         edx,dword ptr [ebp-4]
 004A9A87    mov         ecx,dword ptr [eax]
 004A9A89    call        dword ptr [ecx+38]
 004A9A8C    mov         al,byte ptr [ebp-0ED]
 004A9A92    test        al,al
>004A9A94    je          004A9AAF
 004A9A96    mov         edx,dword ptr [ebp-0E4]
 004A9A9C    mov         eax,dword ptr [edx+2F0]
 004A9AA2    mov         cl,1
 004A9AA4    mov         edx,dword ptr [ebp-104]
 004A9AAA    call        0059E630
 004A9AAF    inc         dword ptr [ebp-104]
 004A9AB5    mov         edx,dword ptr [ebp-4]
 004A9AB8    mov         eax,dword ptr [ebp-118]
 004A9ABE    call        005C1754
 004A9AC3    mov         dword ptr [ebp-0FC],eax
 004A9AC9    mov         ecx,dword ptr [ebp-0FC]
 004A9ACF    mov         eax,dword ptr [ebp-100]
 004A9AD5    cmp         ecx,eax
>004A9AD7    jle         004A9AE5
 004A9AD9    mov         edx,dword ptr [ebp-0FC]
 004A9ADF    mov         dword ptr [ebp-100],edx
 004A9AE5    mov         ecx,dword ptr [ebp-130]
 004A9AEB    add         dword ptr [ebp-134],ecx
 004A9AF1    mov         eax,dword ptr [ebp-130]
 004A9AF7    add         dword ptr [ebp-138],eax
 004A9AFD    mov         edx,dword ptr [ebp-134]
 004A9B03    mov         ecx,dword ptr [ebp-144]
 004A9B09    cmp         edx,ecx
>004A9B0B    jg          004A9B24
 004A9B0D    mov         eax,dword ptr [ebp-128]
 004A9B13    mov         edx,dword ptr [eax+12]
 004A9B16    mov         ecx,dword ptr [ebp-134]
 004A9B1C    cmp         edx,ecx
>004A9B1E    ja          004A957E
 004A9B24    dec         dword ptr [ebp-0C4]
 004A9B2A    lea         eax,[ebp-5C]
 004A9B2D    mov         edx,2
 004A9B32    call        0067DCA0
 004A9B37    mov         word ptr [ebp-0D0],14
 004A9B40    inc         dword ptr [ebp-0F4]
 004A9B46    mov         ecx,dword ptr [ebp-128]
 004A9B4C    mov         eax,dword ptr [ecx+16]
 004A9B4F    mov         edx,dword ptr [ebp-0F4]
 004A9B55    cmp         eax,edx
>004A9B57    ja          004A94F5
>004A9B5D    jmp         004A9E15
 004A9B62    mov         eax,dword ptr [ebp-138]
 004A9B68    xor         edx,edx
 004A9B6A    push        edx
 004A9B6B    push        eax
 004A9B6C    lea         ecx,[ebp-274]
 004A9B72    push        ecx
 004A9B73    lea         ecx,[ebp-210]
 004A9B79    mov         eax,dword ptr [ebp-128]
 004A9B7F    mov         edx,dword ptr [eax+1A]
 004A9B82    mov         eax,dword ptr [ebp-134]
 004A9B88    add         edx,eax
 004A9B8A    mov         eax,6ECAB0
 004A9B8F    call        004749C0
 004A9B94    mov         dword ptr [ebp-130],eax
 004A9B9A    mov         edx,dword ptr [ebp-130]
 004A9BA0    test        edx,edx
>004A9BA2    jne         004A9C8A
 004A9BA8    mov         ecx,dword ptr [ebp-0E4]
 004A9BAE    mov         eax,dword ptr [ecx+2F0]
 004A9BB4    add         eax,218
 004A9BB9    mov         dword ptr [ebp-158],eax
 004A9BBF    mov         word ptr [ebp-0D0],0EC
 004A9BC8    lea         eax,[ebp-0A0]
 004A9BCE    call        00401EA8
 004A9BD3    mov         edx,eax
 004A9BD5    inc         dword ptr [ebp-0C4]
 004A9BDB    mov         eax,dword ptr [ebp-138]
 004A9BE1    call        0053188C
 004A9BE6    lea         edx,[ebp-0A0]
 004A9BEC    push        edx
 004A9BED    lea         eax,[ebp-0A8]
 004A9BF3    call        00401EA8
 004A9BF8    push        eax
 004A9BF9    inc         dword ptr [ebp-0C4]
 004A9BFF    mov         edx,6C2692
 004A9C04    lea         eax,[ebp-0A4]
 004A9C0A    call        0067DAB4
 004A9C0F    inc         dword ptr [ebp-0C4]
 004A9C15    lea         edx,[ebp-0A4]
 004A9C1B    pop         ecx
 004A9C1C    pop         eax
 004A9C1D    call        0067DCF8
 004A9C22    lea         edx,[ebp-0A8]
 004A9C28    mov         edx,dword ptr [edx]
 004A9C2A    mov         eax,dword ptr [ebp-158]
 004A9C30    mov         eax,dword ptr [eax]
 004A9C32    mov         ecx,dword ptr [eax]
 004A9C34    call        dword ptr [ecx+38]
 004A9C37    dec         dword ptr [ebp-0C4]
 004A9C3D    lea         eax,[ebp-0A8]
 004A9C43    mov         edx,2
 004A9C48    call        0067DCA0
 004A9C4D    dec         dword ptr [ebp-0C4]
 004A9C53    lea         eax,[ebp-0A4]
 004A9C59    mov         edx,2
 004A9C5E    call        0067DCA0
 004A9C63    dec         dword ptr [ebp-0C4]
 004A9C69    lea         eax,[ebp-0A0]
 004A9C6F    mov         edx,2
 004A9C74    call        0067DCA0
 004A9C79    inc         dword ptr [ebp-134]
 004A9C7F    inc         dword ptr [ebp-138]
>004A9C85    jmp         004A9E15
 004A9C8A    mov         word ptr [ebp-0D0],0F8
 004A9C93    lea         eax,[ebp-0AC]
 004A9C99    call        00401EA8
 004A9C9E    mov         edx,eax
 004A9CA0    inc         dword ptr [ebp-0C4]
 004A9CA6    mov         eax,dword ptr [ebp-138]
 004A9CAC    call        0053188C
 004A9CB1    lea         edx,[ebp-0AC]
 004A9CB7    push        edx
 004A9CB8    lea         eax,[ebp-0B4]
 004A9CBE    call        00401EA8
 004A9CC3    push        eax
 004A9CC4    inc         dword ptr [ebp-0C4]
 004A9CCA    mov         edx,6C269C
 004A9CCF    lea         eax,[ebp-0B0]
 004A9CD5    call        0067DAB4
 004A9CDA    inc         dword ptr [ebp-0C4]
 004A9CE0    lea         edx,[ebp-0B0]
 004A9CE6    pop         ecx
 004A9CE7    pop         eax
 004A9CE8    call        0067DCF8
 004A9CED    lea         edx,[ebp-0B4]
 004A9CF3    push        edx
 004A9CF4    lea         eax,[ebp-0BC]
 004A9CFA    call        00401EA8
 004A9CFF    push        eax
 004A9D00    inc         dword ptr [ebp-0C4]
 004A9D06    lea         edx,[ebp-274]
 004A9D0C    lea         eax,[ebp-0B8]
 004A9D12    call        0067DAB4
 004A9D17    inc         dword ptr [ebp-0C4]
 004A9D1D    lea         edx,[ebp-0B8]
 004A9D23    pop         ecx
 004A9D24    pop         eax
 004A9D25    call        0067DCF8
 004A9D2A    lea         edx,[ebp-0BC]
 004A9D30    lea         eax,[ebp-4]
 004A9D33    call        0067DCD0
 004A9D38    dec         dword ptr [ebp-0C4]
 004A9D3E    lea         eax,[ebp-0BC]
 004A9D44    mov         edx,2
 004A9D49    call        0067DCA0
 004A9D4E    dec         dword ptr [ebp-0C4]
 004A9D54    lea         eax,[ebp-0B8]
 004A9D5A    mov         edx,2
 004A9D5F    call        0067DCA0
 004A9D64    dec         dword ptr [ebp-0C4]
 004A9D6A    lea         eax,[ebp-0B4]
 004A9D70    mov         edx,2
 004A9D75    call        0067DCA0
 004A9D7A    dec         dword ptr [ebp-0C4]
 004A9D80    lea         eax,[ebp-0B0]
 004A9D86    mov         edx,2
 004A9D8B    call        0067DCA0
 004A9D90    dec         dword ptr [ebp-0C4]
 004A9D96    lea         eax,[ebp-0AC]
 004A9D9C    mov         edx,2
 004A9DA1    call        0067DCA0
 004A9DA6    mov         ecx,dword ptr [ebp-0E4]
 004A9DAC    mov         eax,dword ptr [ecx+2F0]
 004A9DB2    add         eax,218
 004A9DB7    mov         dword ptr [ebp-15C],eax
 004A9DBD    mov         edx,dword ptr [ebp-15C]
 004A9DC3    mov         eax,dword ptr [edx]
 004A9DC5    mov         edx,dword ptr [ebp-4]
 004A9DC8    mov         ecx,dword ptr [eax]
 004A9DCA    call        dword ptr [ecx+38]
 004A9DCD    mov         edx,dword ptr [ebp-4]
 004A9DD0    mov         eax,dword ptr [ebp-118]
 004A9DD6    call        005C1754
 004A9DDB    mov         dword ptr [ebp-0FC],eax
 004A9DE1    mov         ecx,dword ptr [ebp-0FC]
 004A9DE7    mov         eax,dword ptr [ebp-100]
 004A9DED    cmp         ecx,eax
>004A9DEF    jle         004A9DFD
 004A9DF1    mov         edx,dword ptr [ebp-0FC]
 004A9DF7    mov         dword ptr [ebp-100],edx
 004A9DFD    mov         ecx,dword ptr [ebp-130]
 004A9E03    add         dword ptr [ebp-134],ecx
 004A9E09    mov         eax,dword ptr [ebp-130]
 004A9E0F    add         dword ptr [ebp-138],eax
 004A9E15    mov         edx,dword ptr [ebp-128]
 004A9E1B    mov         ecx,dword ptr [edx+12]
 004A9E1E    mov         eax,dword ptr [ebp-134]
 004A9E24    cmp         ecx,eax
>004A9E26    ja          004A9B62
 004A9E2C    mov         edx,dword ptr [ebp-100]
 004A9E32    add         edx,2
 004A9E35    mov         ecx,dword ptr [ebp-0E4]
 004A9E3B    mov         eax,dword ptr [ecx+2F0]
 004A9E41    call        TListBox.SetScrollWidth
 004A9E46    mov         edx,dword ptr [ebp-0E4]
 004A9E4C    mov         eax,dword ptr [edx+2F0]
 004A9E52    xor         edx,edx
 004A9E54    call        0059E99C
 004A9E59    sub         dword ptr [ebp-0C4],3
 004A9E60    lea         eax,[ebp-28]
 004A9E63    mov         edx,2
 004A9E68    call        0046E58C
 004A9E6D    dec         dword ptr [ebp-0C4]
 004A9E73    lea         eax,[ebp-4]
 004A9E76    mov         edx,2
 004A9E7B    call        0067DCA0
 004A9E80    mov         ecx,dword ptr [ebp-0E0]
 004A9E86    mov         dword ptr fs:[0],ecx
 004A9E8D    pop         ebx
 004A9E8E    mov         esp,ebp
 004A9E90    pop         ebp
 004A9E91    ret
*}
end;

//004A9E94
procedure TFKBViewer_11011981.bPrevClick(Sender:TObject);
begin
{*
 004A9E94    push        ebp
 004A9E95    mov         ebp,esp
 004A9E97    add         esp,0FFFFFFF8
 004A9E9A    mov         dword ptr [ebp-8],edx
 004A9E9D    mov         dword ptr [ebp-4],eax
 004A9EA0    mov         eax,dword ptr [ebp-4]
 004A9EA3    mov         edx,dword ptr [eax+330];TFKBViewer_11011981.?f330:dword
 004A9EA9    inc         edx
>004A9EAA    je          004A9EC7
 004A9EAC    mov         ecx,dword ptr [ebp-4]
 004A9EAF    mov         ecx,dword ptr [ecx+330]
 004A9EB5    dec         ecx
 004A9EB6    mov         eax,dword ptr [ebp-4]
 004A9EB9    mov         edx,dword ptr [eax+334];TFKBViewer_11011981.?f334:dword
 004A9EBF    mov         eax,dword ptr [ebp-4]
 004A9EC2    call        004A8EFC
 004A9EC7    pop         ecx
 004A9EC8    pop         ecx
 004A9EC9    pop         ebp
 004A9ECA    ret
*}
end;

//004A9ECC
procedure TFKBViewer_11011981.bNextClick(Sender:TObject);
begin
{*
 004A9ECC    push        ebp
 004A9ECD    mov         ebp,esp
 004A9ECF    add         esp,0FFFFFFF8
 004A9ED2    mov         dword ptr [ebp-8],edx
 004A9ED5    mov         dword ptr [ebp-4],eax
 004A9ED8    mov         eax,dword ptr [ebp-4]
 004A9EDB    mov         edx,dword ptr [eax+330];TFKBViewer_11011981.?f330:dword
 004A9EE1    inc         edx
>004A9EE2    je          004A9EFF
 004A9EE4    mov         ecx,dword ptr [ebp-4]
 004A9EE7    mov         ecx,dword ptr [ecx+330]
 004A9EED    inc         ecx
 004A9EEE    mov         eax,dword ptr [ebp-4]
 004A9EF1    mov         edx,dword ptr [eax+334];TFKBViewer_11011981.?f334:dword
 004A9EF7    mov         eax,dword ptr [ebp-4]
 004A9EFA    call        004A8EFC
 004A9EFF    pop         ecx
 004A9F00    pop         ecx
 004A9F01    pop         ebp
 004A9F02    ret
*}
end;

//004A9F04
procedure TFKBViewer_11011981.btnOkClick(Sender:TObject);
begin
{*
 004A9F04    push        ebp
 004A9F05    mov         ebp,esp
 004A9F07    add         esp,0FFFFFF14
 004A9F0D    push        ebx
 004A9F0E    mov         dword ptr [ebp-0A8],edx
 004A9F14    mov         dword ptr [ebp-0A4],eax
 004A9F1A    mov         eax,6C2BD0
 004A9F1F    call        0066FECC
 004A9F24    mov         word ptr [ebp-90],8
 004A9F2D    lea         eax,[ebp-24]
 004A9F30    call        0046E470
 004A9F35    add         dword ptr [ebp-84],3
 004A9F3C    mov         word ptr [ebp-90],14
 004A9F45    lea         edx,[ebp-24]
 004A9F48    mov         dword ptr [ebp-0D4],edx
 004A9F4E    mov         word ptr [ebp-90],20
 004A9F57    lea         eax,[ebp-28]
 004A9F5A    call        00401EA8
 004A9F5F    inc         dword ptr [ebp-84]
 004A9F65    mov         word ptr [ebp-90],14
 004A9F6E    mov         word ptr [ebp-90],2C
 004A9F77    lea         eax,[ebp-2C]
 004A9F7A    call        00401EA8
 004A9F7F    inc         dword ptr [ebp-84]
 004A9F85    mov         word ptr [ebp-90],14
 004A9F8E    mov         word ptr [ebp-90],38
 004A9F97    lea         eax,[ebp-30]
 004A9F9A    call        00401EA8
 004A9F9F    inc         dword ptr [ebp-84]
 004A9FA5    mov         word ptr [ebp-90],14
 004A9FAE    mov         word ptr [ebp-90],44
 004A9FB7    lea         eax,[ebp-34]
 004A9FBA    call        00401EA8
 004A9FBF    inc         dword ptr [ebp-84]
 004A9FC5    mov         word ptr [ebp-90],14
 004A9FCE    push        dword ptr [ebp-0D4]
 004A9FD4    mov         eax,6ECAB4
 004A9FD9    mov         ecx,3
 004A9FDE    mov         edx,dword ptr [ebp-0A4]
 004A9FE4    mov         edx,dword ptr [edx+330];TFKBViewer_11011981.?f330:dword
 004A9FEA    call        00471F14
 004A9FEF    test        eax,eax
>004A9FF1    je          004AA9DF
 004A9FF7    mov         eax,[006ECB70];0x0 gvar_006ECB70
 004A9FFC    mov         dword ptr [ebp-0D0],eax
 004AA002    mov         eax,dword ptr [ebp-0D0]
 004AA008    call        005312C8
 004AA00D    mov         dword ptr [ebp-0B8],eax
 004AA013    mov         edx,dword ptr [ebp-0B8]
 004AA019    test        edx,edx
>004AA01B    jge         004AA08F
 004AA01D    dec         dword ptr [ebp-84]
 004AA023    lea         eax,[ebp-34]
 004AA026    mov         edx,2
 004AA02B    call        0067DCA0
 004AA030    dec         dword ptr [ebp-84]
 004AA036    lea         eax,[ebp-30]
 004AA039    mov         edx,2
 004AA03E    call        0067DCA0
 004AA043    dec         dword ptr [ebp-84]
 004AA049    lea         eax,[ebp-2C]
 004AA04C    mov         edx,2
 004AA051    call        0067DCA0
 004AA056    dec         dword ptr [ebp-84]
 004AA05C    lea         eax,[ebp-28]
 004AA05F    mov         edx,2
 004AA064    call        0067DCA0
 004AA069    sub         dword ptr [ebp-84],3
 004AA070    lea         eax,[ebp-24]
 004AA073    mov         edx,2
 004AA078    call        0046E58C
 004AA07D    mov         ecx,dword ptr [ebp-0A0]
 004AA083    mov         dword ptr fs:[0],ecx
>004AA08A    jmp         004AAA57
 004AA08F    mov         eax,dword ptr [ebp-0D0]
 004AA095    call        0053A308
 004AA09A    mov         dword ptr [ebp-0D8],eax
 004AA0A0    mov         edx,dword ptr [ebp-0D8]
 004AA0A6    test        edx,edx
>004AA0A8    jne         004AA11C
 004AA0AA    dec         dword ptr [ebp-84]
 004AA0B0    lea         eax,[ebp-34]
 004AA0B3    mov         edx,2
 004AA0B8    call        0067DCA0
 004AA0BD    dec         dword ptr [ebp-84]
 004AA0C3    lea         eax,[ebp-30]
 004AA0C6    mov         edx,2
 004AA0CB    call        0067DCA0
 004AA0D0    dec         dword ptr [ebp-84]
 004AA0D6    lea         eax,[ebp-2C]
 004AA0D9    mov         edx,2
 004AA0DE    call        0067DCA0
 004AA0E3    dec         dword ptr [ebp-84]
 004AA0E9    lea         eax,[ebp-28]
 004AA0EC    mov         edx,2
 004AA0F1    call        0067DCA0
 004AA0F6    sub         dword ptr [ebp-84],3
 004AA0FD    lea         eax,[ebp-24]
 004AA100    mov         edx,2
 004AA105    call        0046E58C
 004AA10A    mov         ecx,dword ptr [ebp-0A0]
 004AA110    mov         dword ptr fs:[0],ecx
>004AA117    jmp         004AAA57
 004AA11C    mov         eax,dword ptr [ebp-0D8]
 004AA122    mov         eax,dword ptr [eax+1E]
 004AA125    call        0048456C
 004AA12A    push        dword ptr [ebp-0D4]
 004AA130    push        0
 004AA132    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AA138    mov         eax,dword ptr [edx]
 004AA13A    mov         edx,dword ptr ds:[6ECB70];0x0 gvar_006ECB70
 004AA140    call        0040AED8
 004AA145    push        eax
 004AA146    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AA14C    mov         eax,dword ptr [ecx]
 004AA14E    mov         edx,dword ptr [ebp-0A4]
 004AA154    mov         ecx,dword ptr [edx+330];TFKBViewer_11011981.?f330:dword
 004AA15A    mov         edx,dword ptr [ebp-0B8]
 004AA160    call        004052B4
 004AA165    mov         eax,dword ptr [ebp-0A4]
 004AA16B    mov         eax,dword ptr [eax+2F0];TFKBViewer_11011981.lbKB:TListBox
 004AA171    mov         edx,dword ptr [eax]
 004AA173    call        dword ptr [edx+0EC];TListBox.sub_0059E3CC
 004AA179    mov         ebx,eax
 004AA17B    mov         eax,dword ptr [ebp-0A4]
 004AA181    mov         eax,dword ptr [eax+2F4];TFKBViewer_11011981.lbIDR:TListBox
 004AA187    mov         edx,dword ptr [eax]
 004AA189    call        dword ptr [edx+0EC];TListBox.sub_0059E3CC
 004AA18F    cmp         ebx,eax
>004AA191    jne         004AA985
 004AA197    xor         ecx,ecx
 004AA199    mov         dword ptr [ebp-0B0],ecx
 004AA19F    xor         eax,eax
 004AA1A1    mov         dword ptr [ebp-0B4],eax
 004AA1A7    xor         edx,edx
 004AA1A9    mov         dword ptr [ebp-0AC],edx
>004AA1AF    jmp         004AA963
 004AA1B4    mov         word ptr [ebp-90],50
 004AA1BD    mov         edx,6C26A3
 004AA1C2    lea         eax,[ebp-38]
 004AA1C5    call        0067DAB4
 004AA1CA    inc         dword ptr [ebp-84]
 004AA1D0    lea         edx,[ebp-38]
 004AA1D3    lea         eax,[ebp-30]
 004AA1D6    call        0067DCD0
 004AA1DB    dec         dword ptr [ebp-84]
 004AA1E1    lea         eax,[ebp-38]
 004AA1E4    mov         edx,2
 004AA1E9    call        0067DCA0
 004AA1EE    mov         word ptr [ebp-90],5C
 004AA1F7    mov         edx,6C26A4
 004AA1FC    lea         eax,[ebp-3C]
 004AA1FF    call        0067DAB4
 004AA204    inc         dword ptr [ebp-84]
 004AA20A    lea         edx,[ebp-3C]
 004AA20D    lea         eax,[ebp-34]
 004AA210    call        0067DCD0
 004AA215    dec         dword ptr [ebp-84]
 004AA21B    lea         eax,[ebp-3C]
 004AA21E    mov         edx,2
 004AA223    call        0067DCA0
>004AA228    jmp         004AA2BB
 004AA22D    mov         edx,dword ptr [ebp-0B0]
 004AA233    mov         eax,dword ptr [ebp-0A4]
 004AA239    mov         eax,dword ptr [eax+2F0];TFKBViewer_11011981.lbKB:TListBox
 004AA23F    call        0059E5C8
 004AA244    test        al,al
>004AA246    je          004AA2B5
 004AA248    mov         word ptr [ebp-90],68
 004AA251    mov         edx,dword ptr [ebp-0A4]
 004AA257    mov         ecx,dword ptr [edx+2F0];TFKBViewer_11011981.lbKB:TListBox
 004AA25D    add         ecx,218;TListBox.FItems:TStrings
 004AA263    mov         dword ptr [ebp-0E0],ecx
 004AA269    lea         eax,[ebp-40]
 004AA26C    call        00401EA8
 004AA271    mov         ecx,eax
 004AA273    inc         dword ptr [ebp-84]
 004AA279    mov         edx,dword ptr [ebp-0E0]
 004AA27F    mov         eax,dword ptr [edx]
 004AA281    mov         edx,dword ptr [ebp-0B0]
 004AA287    mov         ebx,dword ptr [eax]
 004AA289    call        dword ptr [ebx+0C]
 004AA28C    lea         edx,[ebp-40]
 004AA28F    lea         eax,[ebp-30]
 004AA292    call        0067DCD0
 004AA297    dec         dword ptr [ebp-84]
 004AA29D    lea         eax,[ebp-40]
 004AA2A0    mov         edx,2
 004AA2A5    call        0067DCA0
 004AA2AA    inc         dword ptr [ebp-0B0]
>004AA2B0    jmp         004AA37D
 004AA2B5    inc         dword ptr [ebp-0B0]
 004AA2BB    mov         ecx,dword ptr [ebp-0A4]
 004AA2C1    mov         eax,dword ptr [ecx+2F0];TFKBViewer_11011981.lbKB:TListBox
 004AA2C7    add         eax,218;TListBox.FItems:TStrings
 004AA2CC    mov         dword ptr [ebp-0DC],eax
 004AA2D2    mov         edx,dword ptr [ebp-0DC]
 004AA2D8    mov         eax,dword ptr [edx]
 004AA2DA    mov         edx,dword ptr [eax]
 004AA2DC    call        dword ptr [edx+14]
 004AA2DF    mov         ecx,dword ptr [ebp-0B0]
 004AA2E5    cmp         eax,ecx
>004AA2E7    jg          004AA22D
>004AA2ED    jmp         004AA37D
 004AA2F2    mov         edx,dword ptr [ebp-0B4]
 004AA2F8    mov         eax,dword ptr [ebp-0A4]
 004AA2FE    mov         eax,dword ptr [eax+2F4];TFKBViewer_11011981.lbIDR:TListBox
 004AA304    call        0059E5C8
 004AA309    test        al,al
>004AA30B    je          004AA377
 004AA30D    mov         word ptr [ebp-90],74
 004AA316    mov         edx,dword ptr [ebp-0A4]
 004AA31C    mov         ecx,dword ptr [edx+2F4];TFKBViewer_11011981.lbIDR:TListBox
 004AA322    add         ecx,218;TListBox.FItems:TStrings
 004AA328    mov         dword ptr [ebp-0E8],ecx
 004AA32E    lea         eax,[ebp-44]
 004AA331    call        00401EA8
 004AA336    mov         ecx,eax
 004AA338    inc         dword ptr [ebp-84]
 004AA33E    mov         edx,dword ptr [ebp-0E8]
 004AA344    mov         eax,dword ptr [edx]
 004AA346    mov         edx,dword ptr [ebp-0B4]
 004AA34C    mov         ebx,dword ptr [eax]
 004AA34E    call        dword ptr [ebx+0C]
 004AA351    lea         edx,[ebp-44]
 004AA354    lea         eax,[ebp-34]
 004AA357    call        0067DCD0
 004AA35C    dec         dword ptr [ebp-84]
 004AA362    lea         eax,[ebp-44]
 004AA365    mov         edx,2
 004AA36A    call        0067DCA0
 004AA36F    inc         dword ptr [ebp-0B4]
>004AA375    jmp         004AA3AF
 004AA377    inc         dword ptr [ebp-0B4]
 004AA37D    mov         ecx,dword ptr [ebp-0A4]
 004AA383    mov         eax,dword ptr [ecx+2F4];TFKBViewer_11011981.lbIDR:TListBox
 004AA389    add         eax,218;TListBox.FItems:TStrings
 004AA38E    mov         dword ptr [ebp-0E4],eax
 004AA394    mov         edx,dword ptr [ebp-0E4]
 004AA39A    mov         eax,dword ptr [edx]
 004AA39C    mov         edx,dword ptr [eax]
 004AA39E    call        dword ptr [edx+14]
 004AA3A1    mov         ecx,dword ptr [ebp-0B4]
 004AA3A7    cmp         eax,ecx
>004AA3A9    jg          004AA2F2
 004AA3AF    mov         word ptr [ebp-90],80
 004AA3B8    mov         edx,6C26A5
 004AA3BD    lea         eax,[ebp-48]
 004AA3C0    call        0067DAB4
 004AA3C5    inc         dword ptr [ebp-84]
 004AA3CB    lea         edx,[ebp-48]
 004AA3CE    lea         eax,[ebp-30]
 004AA3D1    call        0067DD9C
 004AA3D6    test        al,al
>004AA3D8    je          004AA419
 004AA3DA    mov         edx,6C26A6
 004AA3DF    lea         eax,[ebp-4C]
 004AA3E2    call        0067DAB4
 004AA3E7    inc         dword ptr [ebp-84]
 004AA3ED    lea         edx,[ebp-4C]
 004AA3F0    lea         eax,[ebp-34]
 004AA3F3    call        0067DD9C
 004AA3F8    test        al,al
 004AA3FA    setne       cl
 004AA3FD    and         ecx,1
 004AA400    push        ecx
 004AA401    dec         dword ptr [ebp-84]
 004AA407    lea         eax,[ebp-4C]
 004AA40A    mov         edx,2
 004AA40F    call        0067DCA0
 004AA414    pop         ecx
 004AA415    test        ecx,ecx
>004AA417    jne         004AA41D
 004AA419    xor         eax,eax
>004AA41B    jmp         004AA422
 004AA41D    mov         eax,1
 004AA422    push        eax
 004AA423    dec         dword ptr [ebp-84]
 004AA429    lea         eax,[ebp-48]
 004AA42C    mov         edx,2
 004AA431    call        0067DCA0
 004AA436    pop         ecx
 004AA437    test        cl,cl
>004AA439    je          004AA95D
 004AA43F    mov         word ptr [ebp-90],8C
 004AA448    mov         edx,6C26A7
 004AA44D    lea         eax,[ebp-50]
 004AA450    call        0067DAB4
 004AA455    inc         dword ptr [ebp-84]
 004AA45B    lea         edx,[ebp-50]
 004AA45E    lea         eax,[ebp-30]
 004AA461    call        0067DEF4
 004AA466    mov         dword ptr [ebp-0C0],eax
 004AA46C    dec         dword ptr [ebp-84]
 004AA472    lea         eax,[ebp-50]
 004AA475    mov         edx,2
 004AA47A    call        0067DCA0
 004AA47F    mov         word ptr [ebp-90],98
 004AA488    mov         edx,6C26AC
 004AA48D    lea         eax,[ebp-54]
 004AA490    call        0067DAB4
 004AA495    inc         dword ptr [ebp-84]
 004AA49B    lea         edx,[ebp-54]
 004AA49E    lea         eax,[ebp-34]
 004AA4A1    call        0067DEF4
 004AA4A6    mov         dword ptr [ebp-0C4],eax
 004AA4AC    dec         dword ptr [ebp-84]
 004AA4B2    lea         eax,[ebp-54]
 004AA4B5    mov         edx,2
 004AA4BA    call        0067DCA0
 004AA4BF    mov         ecx,dword ptr [ebp-0C0]
 004AA4C5    test        ecx,ecx
>004AA4C7    je          004AA95D
 004AA4CD    mov         eax,dword ptr [ebp-0C4]
 004AA4D3    test        eax,eax
>004AA4D5    je          004AA95D
 004AA4DB    mov         word ptr [ebp-90],0A4
 004AA4E4    lea         eax,[ebp-58]
 004AA4E7    call        00401EA8
 004AA4EC    push        eax
 004AA4ED    inc         dword ptr [ebp-84]
 004AA4F3    lea         eax,[ebp-30]
 004AA4F6    call        00405290
 004AA4FB    mov         ecx,eax
 004AA4FD    mov         edx,dword ptr [ebp-0C0]
 004AA503    add         edx,4
 004AA506    lea         eax,[ebp-30]
 004AA509    call        0067E0BC
 004AA50E    lea         edx,[ebp-58]
 004AA511    push        edx
 004AA512    lea         eax,[ebp-5C]
 004AA515    call        00401EA8
 004AA51A    mov         edx,eax
 004AA51C    inc         dword ptr [ebp-84]
 004AA522    pop         eax
 004AA523    call        0067E030
 004AA528    lea         edx,[ebp-5C]
 004AA52B    lea         eax,[ebp-28]
 004AA52E    call        0067DCD0
 004AA533    dec         dword ptr [ebp-84]
 004AA539    lea         eax,[ebp-5C]
 004AA53C    mov         edx,2
 004AA541    call        0067DCA0
 004AA546    dec         dword ptr [ebp-84]
 004AA54C    lea         eax,[ebp-58]
 004AA54F    mov         edx,2
 004AA554    call        0067DCA0
 004AA559    mov         word ptr [ebp-90],0B0
 004AA562    lea         eax,[ebp-60]
 004AA565    call        00401EA8
 004AA56A    push        eax
 004AA56B    inc         dword ptr [ebp-84]
 004AA571    lea         eax,[ebp-34]
 004AA574    call        00405290
 004AA579    mov         ecx,eax
 004AA57B    mov         edx,dword ptr [ebp-0C4]
 004AA581    add         edx,4
 004AA584    lea         eax,[ebp-34]
 004AA587    call        0067E0BC
 004AA58C    lea         edx,[ebp-60]
 004AA58F    push        edx
 004AA590    lea         eax,[ebp-64]
 004AA593    call        00401EA8
 004AA598    mov         edx,eax
 004AA59A    inc         dword ptr [ebp-84]
 004AA5A0    pop         eax
 004AA5A1    call        0067E030
 004AA5A6    lea         edx,[ebp-64]
 004AA5A9    lea         eax,[ebp-2C]
 004AA5AC    call        0067DCD0
 004AA5B1    dec         dword ptr [ebp-84]
 004AA5B7    lea         eax,[ebp-64]
 004AA5BA    mov         edx,2
 004AA5BF    call        0067DCA0
 004AA5C4    dec         dword ptr [ebp-84]
 004AA5CA    lea         eax,[ebp-60]
 004AA5CD    mov         edx,2
 004AA5D2    call        0067DCA0
 004AA5D7    mov         word ptr [ebp-90],0BC
 004AA5E0    mov         edx,6C26B1
 004AA5E5    lea         eax,[ebp-68]
 004AA5E8    call        0067DAB4
 004AA5ED    inc         dword ptr [ebp-84]
 004AA5F3    lea         edx,[ebp-68]
 004AA5F6    lea         eax,[ebp-2C]
 004AA5F9    call        0067DEF4
 004AA5FE    mov         dword ptr [ebp-0BC],eax
 004AA604    dec         dword ptr [ebp-84]
 004AA60A    lea         eax,[ebp-68]
 004AA60D    mov         edx,2
 004AA612    call        0067DCA0
 004AA617    mov         ecx,dword ptr [ebp-0BC]
 004AA61D    test        ecx,ecx
>004AA61F    je          004AA66B
 004AA621    mov         word ptr [ebp-90],0C8
 004AA62A    lea         eax,[ebp-6C]
 004AA62D    call        00401EA8
 004AA632    push        eax
 004AA633    inc         dword ptr [ebp-84]
 004AA639    mov         ecx,dword ptr [ebp-0BC]
 004AA63F    dec         ecx
 004AA640    lea         eax,[ebp-2C]
 004AA643    mov         edx,1
 004AA648    call        0067E0BC
 004AA64D    lea         edx,[ebp-6C]
 004AA650    lea         eax,[ebp-2C]
 004AA653    call        0067DCD0
 004AA658    dec         dword ptr [ebp-84]
 004AA65E    lea         eax,[ebp-6C]
 004AA661    mov         edx,2
 004AA666    call        0067DCA0
 004AA66B    xor         ecx,ecx
 004AA66D    mov         dword ptr [ebp-0D0],ecx
 004AA673    mov         word ptr [ebp-90],0D4
 004AA67C    lea         eax,[ebp-74]
 004AA67F    call        00401EA8
 004AA684    push        eax
 004AA685    inc         dword ptr [ebp-84]
 004AA68B    mov         edx,6C26B3
 004AA690    lea         eax,[ebp-70]
 004AA693    call        0067DAB4
 004AA698    inc         dword ptr [ebp-84]
 004AA69E    lea         edx,[ebp-2C]
 004AA6A1    pop         ecx
 004AA6A2    call        0067DCF8
 004AA6A7    lea         eax,[ebp-74]
 004AA6AA    mov         eax,dword ptr [eax]
 004AA6AC    lea         edx,[ebp-0CC]
 004AA6B2    call        00657D08
 004AA6B7    push        eax
 004AA6B8    dec         dword ptr [ebp-84]
 004AA6BE    lea         eax,[ebp-74]
 004AA6C1    mov         edx,2
 004AA6C6    call        0067DCA0
 004AA6CB    dec         dword ptr [ebp-84]
 004AA6D1    lea         eax,[ebp-70]
 004AA6D4    mov         edx,2
 004AA6D9    call        0067DCA0
 004AA6DE    pop         ecx
 004AA6DF    test        cl,cl
>004AA6E1    je          004AA6EF
 004AA6E3    mov         eax,dword ptr [ebp-0CC]
 004AA6E9    mov         dword ptr [ebp-0D0],eax
 004AA6EF    mov         eax,dword ptr [ebp-0D0]
 004AA6F5    call        005312C8
 004AA6FA    mov         dword ptr [ebp-0B8],eax
 004AA700    mov         word ptr [ebp-90],0E0
 004AA709    mov         edx,6C26B5
 004AA70E    lea         eax,[ebp-78]
 004AA711    call        0067DAB4
 004AA716    inc         dword ptr [ebp-84]
 004AA71C    lea         edx,[ebp-78]
 004AA71F    lea         eax,[ebp-28]
 004AA722    call        0067DD9C
 004AA727    test        al,al
>004AA729    je          004AA735
 004AA72B    mov         edx,dword ptr [ebp-0B8]
 004AA731    test        edx,edx
>004AA733    jge         004AA739
 004AA735    xor         ecx,ecx
>004AA737    jmp         004AA73E
 004AA739    mov         ecx,1
 004AA73E    push        ecx
 004AA73F    dec         dword ptr [ebp-84]
 004AA745    lea         eax,[ebp-78]
 004AA748    mov         edx,2
 004AA74D    call        0067DCA0
 004AA752    pop         ecx
 004AA753    test        cl,cl
>004AA755    je          004AA95D
 004AA75B    mov         eax,dword ptr [ebp-0D0]
 004AA761    call        0053A308
 004AA766    mov         dword ptr [ebp-0D8],eax
 004AA76C    mov         edx,dword ptr [ebp-0D8]
 004AA772    mov         eax,dword ptr [edx+1E]
 004AA775    call        0048456C
 004AA77A    mov         word ptr [ebp-90],0F8
 004AA783    lea         eax,[ebp-7C]
 004AA786    call        00401EA8
 004AA78B    mov         edx,eax
 004AA78D    inc         dword ptr [ebp-84]
 004AA793    mov         ecx,dword ptr [ebp-0A4]
 004AA799    mov         eax,dword ptr [ecx+320];TFKBViewer_11011981.cbUnits:TComboBox
 004AA79F    call        TTabPage.GetCaption
 004AA7A4    lea         eax,[ebp-7C]
 004AA7A7    call        00403C0C
 004AA7AC    mov         edx,eax
 004AA7AE    mov         eax,6ECAB4
 004AA7B3    call        0046EDD0
 004AA7B8    mov         edx,eax
 004AA7BA    mov         eax,6ECAB4
 004AA7BF    call        0047288C
 004AA7C4    mov         dword ptr [ebp-0EC],eax
 004AA7CA    dec         dword ptr [ebp-84]
 004AA7D0    lea         eax,[ebp-7C]
 004AA7D3    mov         edx,2
 004AA7D8    call        0067DCA0
 004AA7DD    mov         word ptr [ebp-90],0EC
 004AA7E6    mov         ecx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AA7EC    mov         eax,dword ptr [ebp-0B8]
 004AA7F2    add         ecx,eax
 004AA7F4    push        ecx
 004AA7F5    lea         eax,[ebp-28]
 004AA7F8    call        00403C0C
 004AA7FD    mov         ecx,eax
 004AA7FF    mov         eax,6ECAB4
 004AA804    mov         edx,dword ptr [ebp-0EC]
 004AA80A    call        004710E4
 004AA80F    mov         dword ptr [ebp-0C8],eax
 004AA815    mov         ecx,dword ptr [ebp-0C8]
 004AA81B    inc         ecx
>004AA81C    je          004AA8A5
 004AA822    mov         eax,dword ptr [ebp-0C8]
 004AA828    shl         eax,4
 004AA82B    mov         edx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 004AA831    mov         ecx,dword ptr [edx+eax+0C]
 004AA835    mov         dword ptr [ebp-0C8],ecx
 004AA83B    mov         eax,6ECAB4
 004AA840    mov         edx,dword ptr [ebp-0C8]
 004AA846    call        004738B4
 004AA84B    test        al,al
>004AA84D    jne         004AA954
 004AA853    push        dword ptr [ebp-0D4]
 004AA859    mov         eax,6ECAB4
 004AA85E    mov         ecx,3
 004AA863    mov         edx,dword ptr [ebp-0C8]
 004AA869    call        00471F14
 004AA86E    test        eax,eax
>004AA870    je          004AA954
 004AA876    push        dword ptr [ebp-0D4]
 004AA87C    push        1
 004AA87E    mov         eax,dword ptr [ebp-0D4]
 004AA884    push        dword ptr [eax+12]
 004AA887    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AA88D    mov         eax,dword ptr [edx]
 004AA88F    mov         ecx,dword ptr [ebp-0C8]
 004AA895    mov         edx,dword ptr [ebp-0B8]
 004AA89B    call        004052B4
>004AA8A0    jmp         004AA954
 004AA8A5    push        0
 004AA8A7    lea         eax,[ebp-28]
 004AA8AA    call        00403C0C
 004AA8AF    mov         ecx,eax
 004AA8B1    mov         eax,6ECAB4
 004AA8B6    mov         edx,dword ptr [ebp-0EC]
 004AA8BC    call        004710E4
 004AA8C1    mov         dword ptr [ebp-0C8],eax
 004AA8C7    mov         ecx,dword ptr [ebp-0C8]
 004AA8CD    inc         ecx
>004AA8CE    je          004AA954
 004AA8D4    mov         eax,dword ptr [ebp-0C8]
 004AA8DA    shl         eax,4
 004AA8DD    mov         edx,dword ptr ds:[6ECAD8];0x0 gvar_006ECAD8
 004AA8E3    mov         ecx,dword ptr [edx+eax+0C]
 004AA8E7    mov         dword ptr [ebp-0C8],ecx
 004AA8ED    mov         eax,6ECAB4
 004AA8F2    mov         edx,dword ptr [ebp-0C8]
 004AA8F8    call        004738B4
 004AA8FD    test        al,al
>004AA8FF    jne         004AA954
 004AA901    push        dword ptr [ebp-0D4]
 004AA907    mov         eax,6ECAB4
 004AA90C    mov         ecx,3
 004AA911    mov         edx,dword ptr [ebp-0C8]
 004AA917    call        00471F14
 004AA91C    test        eax,eax
>004AA91E    je          004AA954
 004AA920    push        dword ptr [ebp-0D4]
 004AA926    push        0
 004AA928    mov         eax,[006E9C8C];^_FMain_11011981
 004AA92D    mov         eax,dword ptr [eax]
 004AA92F    mov         edx,dword ptr [ebp-0D0]
 004AA935    call        0040AED8
 004AA93A    push        eax
 004AA93B    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AA941    mov         eax,dword ptr [ecx]
 004AA943    mov         ecx,dword ptr [ebp-0C8]
 004AA949    mov         edx,dword ptr [ebp-0B8]
 004AA94F    call        004052B4
 004AA954    mov         word ptr [ebp-90],14
 004AA95D    inc         dword ptr [ebp-0AC]
 004AA963    mov         eax,dword ptr [ebp-0A4]
 004AA969    mov         eax,dword ptr [eax+2F0];TFKBViewer_11011981.lbKB:TListBox
 004AA96F    mov         edx,dword ptr [eax]
 004AA971    call        dword ptr [edx+0EC];TListBox.sub_0059E3CC
 004AA977    mov         ecx,dword ptr [ebp-0AC]
 004AA97D    cmp         eax,ecx
>004AA97F    jg          004AA1B4
 004AA985    mov         eax,[006E9C8C];^_FMain_11011981
 004AA98A    mov         eax,dword ptr [eax]
 004AA98C    call        00414208
 004AA991    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AA997    mov         ecx,dword ptr [edx]
 004AA999    mov         eax,dword ptr [ecx+42C]
 004AA99F    mov         edx,dword ptr [eax]
 004AA9A1    call        dword ptr [edx+0C8]
 004AA9A7    push        eax
 004AA9A8    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AA9AE    mov         eax,dword ptr [ecx]
 004AA9B0    mov         edx,dword ptr ds:[6ECB78];0x0 gvar_006ECB78
 004AA9B6    call        0040AAE4
 004AA9BB    push        eax
 004AA9BC    mov         ecx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AA9C2    mov         eax,dword ptr [ecx]
 004AA9C4    mov         eax,dword ptr [eax+42C]
 004AA9CA    call        0059E798
 004AA9CF    mov         ecx,eax
 004AA9D1    mov         edx,dword ptr ds:[6E9C8C];^_FMain_11011981
 004AA9D7    mov         eax,dword ptr [edx]
 004AA9D9    pop         edx
 004AA9DA    call        00434C6C
 004AA9DF    mov         eax,dword ptr [ebp-0A4]
 004AA9E5    call        005D3F3C
 004AA9EA    dec         dword ptr [ebp-84]
 004AA9F0    lea         eax,[ebp-34]
 004AA9F3    mov         edx,2
 004AA9F8    call        0067DCA0
 004AA9FD    dec         dword ptr [ebp-84]
 004AAA03    lea         eax,[ebp-30]
 004AAA06    mov         edx,2
 004AAA0B    call        0067DCA0
 004AAA10    dec         dword ptr [ebp-84]
 004AAA16    lea         eax,[ebp-2C]
 004AAA19    mov         edx,2
 004AAA1E    call        0067DCA0
 004AAA23    dec         dword ptr [ebp-84]
 004AAA29    lea         eax,[ebp-28]
 004AAA2C    mov         edx,2
 004AAA31    call        0067DCA0
 004AAA36    sub         dword ptr [ebp-84],3
 004AAA3D    lea         eax,[ebp-24]
 004AAA40    mov         edx,2
 004AAA45    call        0046E58C
 004AAA4A    mov         ecx,dword ptr [ebp-0A0]
 004AAA50    mov         dword ptr fs:[0],ecx
 004AAA57    pop         ebx
 004AAA58    mov         esp,ebp
 004AAA5A    pop         ebp
 004AAA5B    ret
*}
end;

//004AAA5C
procedure TFKBViewer_11011981.btnCancelClick(Sender:TObject);
begin
{*
 004AAA5C    push        ebp
 004AAA5D    mov         ebp,esp
 004AAA5F    add         esp,0FFFFFFF8
 004AAA62    mov         dword ptr [ebp-8],edx
 004AAA65    mov         dword ptr [ebp-4],eax
 004AAA68    mov         eax,dword ptr [ebp-4]
 004AAA6B    call        005D3F3C
 004AAA70    pop         ecx
 004AAA71    pop         ecx
 004AAA72    pop         ebp
 004AAA73    ret
*}
end;

//004AAA74
{*procedure TFKBViewer_11011981.edtCurrIdxChange(?:?);
begin
 004AAA74    push        ebp
 004AAA75    mov         ebp,esp
 004AAA77    add         esp,0FFFFFFCC
 004AAA7A    push        ebx
 004AAA7B    push        esi
 004AAA7C    push        edi
 004AAA7D    mov         dword ptr [ebp-34],edx
 004AAA80    mov         dword ptr [ebp-30],eax
 004AAA83    mov         eax,6C2D04
 004AAA88    call        0066FECC
 004AAA8D    mov         word ptr [ebp-1C],8
 004AAA93    mov         word ptr [ebp-1C],14
 004AAA99    lea         eax,[ebp-8]
 004AAA9C    call        00401EA8
 004AAAA1    mov         edx,eax
 004AAAA3    inc         dword ptr [ebp-10]
 004AAAA6    mov         ecx,dword ptr [ebp-30]
 004AAAA9    mov         eax,dword ptr [ecx+314];TFKBViewer_11011981.edtCurrIdx:TEdit
 004AAAAF    call        TTabPage.GetCaption
 004AAAB4    lea         eax,[ebp-8]
 004AAAB7    mov         eax,dword ptr [eax]
 004AAAB9    call        StrToInt
 004AAABE    mov         ecx,eax
 004AAAC0    mov         edx,dword ptr [ebp-30]
 004AAAC3    mov         edx,dword ptr [edx+334];TFKBViewer_11011981.?f334:dword
 004AAAC9    mov         eax,dword ptr [ebp-30]
 004AAACC    call        004A8EFC
 004AAAD1    dec         dword ptr [ebp-10]
 004AAAD4    lea         eax,[ebp-8]
 004AAAD7    mov         edx,2
 004AAADC    call        0067DCA0
 004AAAE1    mov         word ptr [ebp-1C],0
>004AAAE7    jmp         004AAB04
 004AAAE9    mov         ecx,dword ptr ds:[6E9DCC];^Application:TApplication
 004AAAEF    mov         eax,dword ptr [ecx]
 004AAAF1    mov         edx,dword ptr [ebp-4]
 004AAAF4    call        005D874C
 004AAAF9    mov         word ptr [ebp-1C],10
 004AAAFF    call        0067AF32
 004AAB04    mov         ecx,dword ptr [ebp-2C]
 004AAB07    mov         dword ptr fs:[0],ecx
 004AAB0E    pop         edi
 004AAB0F    pop         esi
 004AAB10    pop         ebx
 004AAB11    mov         esp,ebp
 004AAB13    pop         ebp
 004AAB14    ret
end;*}

//004AAB18
procedure TFKBViewer_11011981.cbUnitsChange(?:TFMain_11011981);
begin
{*
 004AAB18    push        ebp
 004AAB19    mov         ebp,esp
 004AAB1B    add         esp,0FFFFFF78
 004AAB21    mov         dword ptr [ebp-70],edx
 004AAB24    mov         dword ptr [ebp-6C],eax
 004AAB27    mov         eax,6C2DB4
 004AAB2C    call        0066FECC
 004AAB31    mov         word ptr [ebp-58],8
 004AAB37    lea         eax,[ebp-24]
 004AAB3A    call        0046E470
 004AAB3F    add         dword ptr [ebp-4C],3
 004AAB43    mov         word ptr [ebp-58],14
 004AAB49    lea         edx,[ebp-24]
 004AAB4C    mov         dword ptr [ebp-88],edx
 004AAB52    mov         ecx,dword ptr [ebp-6C]
 004AAB55    mov         dword ptr [ecx+338],0FFFFFFFF;TFKBViewer_11011981.?f338:dword
 004AAB5F    mov         word ptr [ebp-58],20
 004AAB65    lea         eax,[ebp-28]
 004AAB68    call        00401EA8
 004AAB6D    mov         edx,eax
 004AAB6F    inc         dword ptr [ebp-4C]
 004AAB72    mov         ecx,dword ptr [ebp-6C]
 004AAB75    mov         eax,dword ptr [ecx+320];TFKBViewer_11011981.cbUnits:TComboBox
 004AAB7B    call        TTabPage.GetCaption
 004AAB80    lea         eax,[ebp-28]
 004AAB83    call        00403C0C
 004AAB88    mov         edx,eax
 004AAB8A    mov         eax,6ECAB4
 004AAB8F    call        0046EDD0
 004AAB94    mov         word ptr [ebp-72],ax
 004AAB98    dec         dword ptr [ebp-4C]
 004AAB9B    lea         eax,[ebp-28]
 004AAB9E    mov         edx,2
 004AABA3    call        0067DCA0
 004AABA8    cmp         word ptr [ebp-72],0FFFF
>004AABAE    je          004AADA4
 004AABB4    lea         ecx,[ebp-80]
 004AABB7    push        ecx
 004AABB8    lea         ecx,[ebp-7C]
 004AABBB    mov         eax,6ECAB4
 004AABC0    mov         dx,word ptr [ebp-72]
 004AABC4    call        00471484
 004AABC9    test        al,al
>004AABCB    je          004AADA4
 004AABD1    mov         word ptr [ebp-58],2C
 004AABD7    lea         eax,[ebp-2C]
 004AABDA    mov         edx,dword ptr [ebp-7C]
 004AABDD    call        0067DC18
 004AABE2    inc         dword ptr [ebp-4C]
 004AABE5    mov         edx,dword ptr [eax]
 004AABE7    mov         eax,dword ptr [ebp-6C]
 004AABEA    mov         eax,dword ptr [eax+314];TFKBViewer_11011981.edtCurrIdx:TEdit
 004AABF0    call        TTabPage.SetCaption
 004AABF5    dec         dword ptr [ebp-4C]
 004AABF8    lea         eax,[ebp-2C]
 004AABFB    mov         edx,2
 004AAC00    call        0067DCA0
 004AAC05    mov         word ptr [ebp-58],38
 004AAC0B    lea         eax,[ebp-38]
 004AAC0E    call        00401EA8
 004AAC13    push        eax
 004AAC14    inc         dword ptr [ebp-4C]
 004AAC17    mov         edx,6C26B6
 004AAC1C    lea         eax,[ebp-34]
 004AAC1F    call        0067DAB4
 004AAC24    inc         dword ptr [ebp-4C]
 004AAC27    lea         edx,[ebp-34]
 004AAC2A    push        edx
 004AAC2B    lea         eax,[ebp-30]
 004AAC2E    mov         edx,dword ptr [ebp-7C]
 004AAC31    call        0067DC18
 004AAC36    inc         dword ptr [ebp-4C]
 004AAC39    pop         edx
 004AAC3A    pop         ecx
 004AAC3B    call        0067DCF8
 004AAC40    lea         eax,[ebp-38]
 004AAC43    push        eax
 004AAC44    lea         eax,[ebp-40]
 004AAC47    call        00401EA8
 004AAC4C    push        eax
 004AAC4D    inc         dword ptr [ebp-4C]
 004AAC50    lea         eax,[ebp-3C]
 004AAC53    mov         edx,dword ptr [ebp-80]
 004AAC56    call        0067DC18
 004AAC5B    mov         edx,eax
 004AAC5D    inc         dword ptr [ebp-4C]
 004AAC60    pop         ecx
 004AAC61    pop         eax
 004AAC62    call        0067DCF8
 004AAC67    lea         edx,[ebp-40]
 004AAC6A    mov         edx,dword ptr [edx]
 004AAC6C    mov         eax,dword ptr [ebp-6C]
 004AAC6F    mov         eax,dword ptr [eax+328];TFKBViewer_11011981.lblKbIdxs:TLabel
 004AAC75    call        TTabPage.SetCaption
 004AAC7A    dec         dword ptr [ebp-4C]
 004AAC7D    lea         eax,[ebp-40]
 004AAC80    mov         edx,2
 004AAC85    call        0067DCA0
 004AAC8A    dec         dword ptr [ebp-4C]
 004AAC8D    lea         eax,[ebp-3C]
 004AAC90    mov         edx,2
 004AAC95    call        0067DCA0
 004AAC9A    dec         dword ptr [ebp-4C]
 004AAC9D    lea         eax,[ebp-38]
 004AACA0    mov         edx,2
 004AACA5    call        0067DCA0
 004AACAA    dec         dword ptr [ebp-4C]
 004AACAD    lea         eax,[ebp-34]
 004AACB0    mov         edx,2
 004AACB5    call        0067DCA0
 004AACBA    dec         dword ptr [ebp-4C]
 004AACBD    lea         eax,[ebp-30]
 004AACC0    mov         edx,2
 004AACC5    call        0067DCA0
 004AACCA    mov         ecx,dword ptr [ebp-7C]
 004AACCD    mov         dword ptr [ebp-78],ecx
 004AACD0    mov         eax,dword ptr [ebp-78]
 004AACD3    mov         edx,dword ptr [ebp-80]
 004AACD6    cmp         eax,edx
>004AACD8    jg          004AADA4
 004AACDE    mov         ecx,dword ptr [ebp-78]
 004AACE1    shl         ecx,4
 004AACE4    mov         eax,[006ECAD8];0x0 gvar_006ECAD8
 004AACE9    mov         edx,dword ptr [eax+ecx+8]
 004AACED    mov         dword ptr [ebp-84],edx
 004AACF3    mov         eax,6ECAB4
 004AACF8    mov         edx,dword ptr [ebp-84]
 004AACFE    call        004738B4
 004AAD03    test        al,al
>004AAD05    jne         004AAD93
 004AAD0B    push        dword ptr [ebp-88]
 004AAD11    mov         eax,6ECAB4
 004AAD16    mov         ecx,3
 004AAD1B    mov         edx,dword ptr [ebp-84]
 004AAD21    call        00471F14
 004AAD26    test        eax,eax
>004AAD28    je          004AAD93
 004AAD2A    mov         eax,[006ECB70];0x0 gvar_006ECB70
 004AAD2F    call        005312C8
 004AAD34    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 004AAD3A    add         eax,edx
 004AAD3C    mov         edx,dword ptr [ebp-88]
 004AAD42    call        0053EF88
 004AAD47    test        al,al
>004AAD49    je          004AAD93
 004AAD4B    mov         word ptr [ebp-58],44
 004AAD51    lea         eax,[ebp-44]
 004AAD54    mov         edx,dword ptr [ebp-84]
 004AAD5A    call        0067DC18
 004AAD5F    inc         dword ptr [ebp-4C]
 004AAD62    mov         edx,dword ptr [eax]
 004AAD64    mov         eax,dword ptr [ebp-6C]
 004AAD67    mov         eax,dword ptr [eax+314];TFKBViewer_11011981.edtCurrIdx:TEdit
 004AAD6D    call        TTabPage.SetCaption
 004AAD72    dec         dword ptr [ebp-4C]
 004AAD75    lea         eax,[ebp-44]
 004AAD78    mov         edx,2
 004AAD7D    call        0067DCA0
 004AAD82    mov         ecx,dword ptr [ebp-6C]
 004AAD85    mov         eax,dword ptr [ebp-84]
 004AAD8B    mov         dword ptr [ecx+338],eax;TFKBViewer_11011981.?f338:dword
>004AAD91    jmp         004AADA4
 004AAD93    inc         dword ptr [ebp-78]
 004AAD96    mov         edx,dword ptr [ebp-78]
 004AAD99    mov         ecx,dword ptr [ebp-80]
 004AAD9C    cmp         edx,ecx
>004AAD9E    jle         004AACDE
 004AADA4    mov         eax,dword ptr [ebp-6C]
 004AADA7    mov         edx,dword ptr [eax+338];TFKBViewer_11011981.?f338:dword
 004AADAD    inc         edx
>004AADAE    jne         004AADC3
 004AADB0    mov         ecx,dword ptr [ebp-7C]
 004AADB3    mov         edx,dword ptr ds:[6ECB70];0x0 gvar_006ECB70
 004AADB9    mov         eax,dword ptr [ebp-6C]
 004AADBC    call        004A8EFC
>004AADC1    jmp         004AADDA
 004AADC3    mov         ecx,dword ptr [ebp-6C]
 004AADC6    mov         ecx,dword ptr [ecx+338];TFKBViewer_11011981.?f338:dword
 004AADCC    mov         edx,dword ptr ds:[6ECB70];0x0 gvar_006ECB70
 004AADD2    mov         eax,dword ptr [ebp-6C]
 004AADD5    call        004A8EFC
 004AADDA    sub         dword ptr [ebp-4C],3
 004AADDE    lea         eax,[ebp-24]
 004AADE1    mov         edx,2
 004AADE6    call        0046E58C
 004AADEB    mov         ecx,dword ptr [ebp-68]
 004AADEE    mov         dword ptr fs:[0],ecx
 004AADF5    mov         esp,ebp
 004AADF7    pop         ebp
 004AADF8    ret
*}
end;

//004AADFC
procedure TFKBViewer_11011981.FormShow(Sender:TObject);
begin
{*
 004AADFC    push        ebp
 004AADFD    mov         ebp,esp
 004AADFF    add         esp,0FFFFFFC0
 004AAE02    mov         dword ptr [ebp-30],edx
 004AAE05    mov         dword ptr [ebp-2C],eax
 004AAE08    mov         eax,6C2E14
 004AAE0D    call        0066FECC
 004AAE12    mov         edx,dword ptr [ebp-2C]
 004AAE15    mov         ecx,dword ptr [edx+32C];TFKBViewer_11011981.?f32C:dword
 004AAE1B    test        ecx,ecx
>004AAE1D    jne         004AAECD
 004AAE23    xor         eax,eax
 004AAE25    mov         dword ptr [ebp-34],eax
>004AAE28    jmp         004AAEBC
 004AAE2D    mov         edx,dword ptr [ebp-34]
 004AAE30    shl         edx,4
 004AAE33    mov         ecx,dword ptr ds:[6ECABC];0x0 gvar_006ECABC
 004AAE39    mov         eax,dword ptr [ecx+edx+0C]
 004AAE3D    mov         dword ptr [ebp-38],eax
 004AAE40    mov         edx,dword ptr [ebp-38]
 004AAE43    shl         edx,4
 004AAE46    mov         ecx,dword ptr ds:[6ECABC];0x0 gvar_006ECABC
 004AAE4C    mov         ecx,dword ptr [ecx+edx+4]
 004AAE50    mov         eax,dword ptr [ebp-38]
 004AAE53    shl         eax,4
 004AAE56    mov         edx,dword ptr ds:[6ECABC];0x0 gvar_006ECABC
 004AAE5C    mov         edx,dword ptr [edx+eax]
 004AAE5F    mov         eax,6ECAB4
 004AAE64    call        00473858
 004AAE69    mov         dword ptr [ebp-3C],eax
 004AAE6C    mov         ecx,dword ptr [ebp-2C]
 004AAE6F    mov         eax,dword ptr [ecx+320];TFKBViewer_11011981.cbUnits:TComboBox
 004AAE75    add         eax,23C;TComboBox.FItems:TStrings
 004AAE7A    mov         dword ptr [ebp-40],eax
 004AAE7D    mov         word ptr [ebp-18],8
 004AAE83    mov         edx,dword ptr [ebp-3C]
 004AAE86    add         edx,4
 004AAE89    lea         eax,[ebp-4]
 004AAE8C    call        0067DAB4
 004AAE91    inc         dword ptr [ebp-0C]
 004AAE94    mov         edx,dword ptr [eax]
 004AAE96    mov         ecx,dword ptr [ebp-40]
 004AAE99    mov         eax,dword ptr [ecx]
 004AAE9B    mov         ecx,dword ptr [eax]
 004AAE9D    call        dword ptr [ecx+38]
 004AAEA0    dec         dword ptr [ebp-0C]
 004AAEA3    lea         eax,[ebp-4]
 004AAEA6    mov         edx,2
 004AAEAB    call        0067DCA0
 004AAEB0    mov         ecx,dword ptr [ebp-2C]
 004AAEB3    inc         dword ptr [ecx+32C];TFKBViewer_11011981.?f32C:dword
 004AAEB9    inc         dword ptr [ebp-34]
 004AAEBC    mov         eax,dword ptr [ebp-34]
 004AAEBF    mov         edx,dword ptr ds:[6ECAB8];0x0 gvar_006ECAB8
 004AAEC5    cmp         eax,edx
>004AAEC7    jl          004AAE2D
 004AAECD    mov         ecx,dword ptr [ebp-28]
 004AAED0    mov         dword ptr fs:[0],ecx
 004AAED7    mov         esp,ebp
 004AAED9    pop         ebp
 004AAEDA    ret
*}
end;

//004AAF68
destructor TFKBViewer_11011981.Destroy;
begin
{*
 004AAF68    push        ebp
 004AAF69    mov         ebp,esp
 004AAF6B    add         esp,0FFFFFFD4
 004AAF6E    call        0067EF81
 004AAF73    mov         byte ptr [ebp-29],dl
 004AAF76    mov         dword ptr [ebp-28],eax
 004AAF79    mov         eax,6C3100
 004AAF7E    call        0066FECC
 004AAF83    mov         dl,byte ptr [ebp-29]
 004AAF86    test        dl,dl
>004AAF88    jl          004AAF98
 004AAF8A    sub         dword ptr [ebp-8],10
 004AAF8E    xor         edx,edx
 004AAF90    mov         eax,dword ptr [ebp-28]
 004AAF93    call        0040235C
 004AAF98    mov         ecx,dword ptr [ebp-24]
 004AAF9B    mov         dword ptr fs:[0],ecx
 004AAFA2    mov         al,byte ptr [ebp-29]
 004AAFA5    test        al,al
>004AAFA7    jle         004AAFB1
 004AAFA9    mov         eax,dword ptr [ebp-28]
 004AAFAC    call        0067EF74
 004AAFB1    mov         esp,ebp
 004AAFB3    pop         ebp
 004AAFB4    ret
*}
end;

end.