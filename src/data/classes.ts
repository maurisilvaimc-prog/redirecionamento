import { ClassNode } from '../lib/index';

export const mockClasses: ClassNode[] = [
  {
    id: 'class-tobject',
    name: 'TObject',
    address: '0066B808',
    methods: [
      { address: '0066B808', name: 'ClassType', type: 'virtual' },
      { address: '0066B810', name: 'ClassName', type: 'virtual' },
      { address: '0066B824', name: 'ClassNameIs', type: 'virtual' },
      { address: '0066B84C', name: 'ClassParent', type: 'virtual' },
      { address: '0066B888', name: 'InstanceSize', type: 'virtual' },
      { address: '0066B890', name: 'Create', type: 'virtual' },
      { address: '0066B8C0', name: 'Free', type: 'virtual' },
      { address: '0066B8B0', name: 'Destroy', type: 'virtual' },
      { address: '0066BAEC', name: 'InheritsFrom', type: 'virtual' },
      { address: '0066BB44', name: 'MethodAddress', type: 'virtual' },
      { address: '0066BBD4', name: 'FieldAddress', type: 'virtual' },
      { address: '0066BB1C', name: 'Dispatch', type: 'dynamic' },
      { address: '0066BB10', name: 'DefaultHandler', type: 'dynamic' },
    ],
    children: [
      {
        id: 'class-tinterfacedobject',
        name: 'TInterfacedObject',
        address: '0066E4E0',
        parent: 'TObject',
        methods: [
          { address: '0066E4E0', name: '_AddRef', type: 'virtual' },
          { address: '0066E4F4', name: '_Release', type: 'virtual' },
        ],
        children: []
      },
      {
        id: 'class-tpersistent',
        name: 'TPersistent',
        address: '00690000',
        parent: 'TObject',
        methods: [
          { address: '00690010', name: 'Assign', type: 'virtual' },
        ],
        children: [
          {
            id: 'class-tcollection',
            name: 'TCollection',
            address: '00690100',
            parent: 'TPersistent',
            methods: [
              { address: '00690110', name: 'Add', type: 'virtual' },
              { address: '00690120', name: 'Clear', type: 'virtual' },
            ],
            children: []
          },
          {
            id: 'class-tstrings',
            name: 'TStrings',
            address: '00690200',
            parent: 'TPersistent',
            methods: [
              { address: '00690210', name: 'Add', type: 'virtual' },
              { address: '00690220', name: 'Clear', type: 'virtual' },
              { address: '00690230', name: 'IndexOf', type: 'virtual' },
            ],
            children: [
              { id: 'class-tstringlist', name: 'TStringList', address: '00690300', parent: 'TStrings', methods: [
                { address: '00690310', name: 'Sort', type: 'virtual' },
              ], children: [] },
            ]
          },
          {
            id: 'class-tgraphic',
            name: 'TGraphic',
            address: '005BE9D4',
            parent: 'TPersistent',
            methods: [
              { address: '005BE9E0', name: 'Draw', type: 'virtual' },
              { address: '005BE9F0', name: 'LoadFromFile', type: 'virtual' },
            ],
            children: [
              { id: 'class-tbitmap', name: 'TBitmap', address: '005BEDD4', parent: 'TGraphic', methods: [], children: [] },
              { id: 'class-tmetafile', name: 'TMetafile', address: '005BEC94', parent: 'TGraphic', methods: [], children: [] },
              { id: 'class-ticon', name: 'TIcon', address: '005BEF18', parent: 'TGraphic', methods: [], children: [] },
              { id: 'class-tjpegimage', name: 'TJPEGImage', address: '0068F93C', parent: 'TGraphic', methods: [], children: [] },
            ]
          },
          {
            id: 'class-tcomponent',
            name: 'TComponent',
            address: '00691000',
            parent: 'TPersistent',
            methods: [
              { address: '00691010', name: 'FindComponent', type: 'virtual' },
              { address: '00691020', name: 'Loaded', type: 'virtual' },
              { address: '00691030', name: 'Notification', type: 'virtual' },
            ],
            children: [
              {
                id: 'class-tcontrol',
                name: 'TControl',
                address: '005A1000',
                parent: 'TComponent',
                methods: [
                  { address: '005A1010', name: 'Paint', type: 'virtual' },
                  { address: '005A1020', name: 'Resize', type: 'virtual' },
                ],
                children: [
                  {
                    id: 'class-tgraphiccontrol',
                    name: 'TGraphicControl',
                    address: '005A1100',
                    parent: 'TControl',
                    methods: [
                      { address: '005A1110', name: 'Paint', type: 'virtual' },
                    ],
                    children: [
                      { id: 'class-tlabel', name: 'TLabel', address: '0059205C', parent: 'TGraphicControl', methods: [], children: [] },
                      { id: 'class-timage', name: 'TImage', address: '005DA234', parent: 'TGraphicControl', methods: [], children: [] },
                      { id: 'class-tshape', name: 'TShape', address: '005D9DE0', parent: 'TGraphicControl', methods: [], children: [] },
                      { id: 'class-tbevel', name: 'TBevel', address: '005DA860', parent: 'TGraphicControl', methods: [], children: [] },
                      { id: 'class-tspeedbutton', name: 'TSpeedButton', address: '00638E9C', parent: 'TGraphicControl', methods: [], children: [] },
                      { id: 'class-tsplitter', name: 'TSplitter', address: '005DCA64', parent: 'TGraphicControl', methods: [], children: [] },
                    ]
                  },
                  {
                    id: 'class-twincontrol',
                    name: 'TWinControl',
                    address: '005A2000',
                    parent: 'TControl',
                    methods: [
                      { address: '005A2010', name: 'CreateWnd', type: 'virtual' },
                      { address: '005A2020', name: 'DestroyWnd', type: 'virtual' },
                      { address: '005A2030', name: 'WndProc', type: 'dynamic' },
                    ],
                    children: [
                      {
                        id: 'class-tcustomcontrol',
                        name: 'TCustomControl',
                        address: '005A2100',
                        parent: 'TWinControl',
                        methods: [
                          { address: '005A2110', name: 'Paint', type: 'virtual' },
                        ],
                        children: [
                          { id: 'class-tpanel', name: 'TPanel', address: '005DAC80', parent: 'TCustomControl', methods: [], children: [] },
                          { id: 'class-tgroupbox', name: 'TGroupBox', address: '005917D0', parent: 'TCustomControl', methods: [], children: [] },
                          { id: 'class-tstatusbar', name: 'TStatusBar', address: '00604EA4', parent: 'TCustomControl', methods: [], children: [] },
                          { id: 'class-ttoolbar', name: 'TToolBar', address: '0060D658', parent: 'TCustomControl', methods: [], children: [] },
                        ]
                      },
                      {
                        id: 'class-tscrollingwincontrol',
                        name: 'TScrollingWinControl',
                        address: '005A2200',
                        parent: 'TWinControl',
                        methods: [
                          { address: '005A2210', name: 'ScrollInView', type: 'virtual' },
                        ],
                        children: [
                          {
                            id: 'class-tform',
                            name: 'TForm',
                            address: '005B1000',
                            parent: 'TScrollingWinControl',
                            methods: [
                              { address: '005B1010', name: 'Close', type: 'virtual' },
                              { address: '005B1020', name: 'ShowModal', type: 'virtual' },
                            ],
                            children: [
                              { id: 'class-fmain', name: 'TFMain_11011981', address: '00401828', parent: 'TForm', methods: [
                                { address: '00401F40', name: 'Create', type: 'virtual' },
                                { address: '00402160', name: 'Destroy', type: 'virtual' },
                                { address: '004023E0', name: 'FormClose', type: 'dynamic' },
                                { address: '00402400', name: 'FormKeyDown', type: 'dynamic' },
                                { address: '0041258C', name: 'FormCreate', type: 'dynamic' },
                                { address: '00413494', name: 'FormDestroy', type: 'dynamic' },
                                { address: '00413A44', name: 'FormShow', type: 'dynamic' },
                                { address: '0042C588', name: 'FormResize', type: 'dynamic' },
                                { address: '00419C30', name: 'bEPClick', type: 'dynamic' },
                                { address: '00418FD8', name: 'lbCodeDblClick', type: 'dynamic' },
                              ], children: [] },
                              { id: 'class-ftypeinfo', name: 'TFTypeInfo_11011981', address: '004627EC', parent: 'TForm', methods: [
                                { address: '0046281C', name: 'Create', type: 'virtual' },
                                { address: '0046C2F0', name: 'Destroy', type: 'virtual' },
                                { address: '0046BEC8', name: 'bSaveClick', type: 'dynamic' },
                                { address: '0046BE9C', name: 'FormKeyDown', type: 'dynamic' },
                                { address: '0046C168', name: 'FormCreate', type: 'dynamic' },
                              ], children: [] },
                              { id: 'class-fstringinfo', name: 'TFStringInfo_11011981', address: '0046C354', parent: 'TForm', methods: [
                                { address: '0046C374', name: 'Create', type: 'virtual' },
                                { address: '0046C4CC', name: 'Destroy', type: 'virtual' },
                                { address: '0046C3F4', name: 'FormKeyDown', type: 'dynamic' },
                                { address: '0046C420', name: 'FormCreate', type: 'dynamic' },
                              ], children: [] },
                              { id: 'class-fexplorer', name: 'TFExplorer_11011981', address: '0046C51C', parent: 'TForm', methods: [
                                { address: '0046C53C', name: 'Create', type: 'virtual' },
                                { address: '0046DCD8', name: 'Destroy', type: 'virtual' },
                                { address: '0046DBD4', name: 'FormShow', type: 'dynamic' },
                                { address: '0046DC18', name: 'FormCreate', type: 'dynamic' },
                                { address: '0046DA1C', name: 'btnDefCodeClick', type: 'dynamic' },
                                { address: '0046DA48', name: 'btnUndefCodeClick', type: 'dynamic' },
                              ], children: [] },
                              { id: 'class-fabout', name: 'TFAboutDlg_11011981', address: '00433B98', parent: 'TForm', methods: [
                                { address: '00433B98', name: 'FormCreate', type: 'dynamic' },
                              ], children: [] },
                              { id: 'class-finputdlg', name: 'TFInputDlg_11011981', address: '00482998', parent: 'TForm', methods: [
                                { address: '004829B8', name: 'Create', type: 'virtual' },
                                { address: '00482B44', name: 'Destroy', type: 'virtual' },
                                { address: '00482A38', name: 'FormShow', type: 'dynamic' },
                                { address: '00482AA0', name: 'FormCreate', type: 'dynamic' },
                              ], children: [] },
                              { id: 'class-ffinddlg', name: 'TFindDlg_11011981', address: '00482B94', parent: 'TForm', methods: [
                                { address: '00482B94', name: 'Create', type: 'virtual' },
                                { address: '00482D80', name: 'Destroy', type: 'virtual' },
                                { address: '00482C10', name: 'FormShow', type: 'dynamic' },
                                { address: '00482CE0', name: 'FormCreate', type: 'dynamic' },
                              ], children: [] },
                              { id: 'class-feditfields', name: 'TFEditFieldsDlg_11011981', address: '004A787C', parent: 'TForm', methods: [
                                { address: '004A787C', name: 'Create', type: 'virtual' },
                                { address: '004A7940', name: 'Destroy', type: 'virtual' },
                                { address: '004A7C88', name: 'FormShow', type: 'dynamic' },
                              ], children: [] },
                              { id: 'class-fkbviewer', name: 'TFKBViewer_11011981', address: '004A8DD4', parent: 'TForm', methods: [
                                { address: '004A8DD4', name: 'Create', type: 'virtual' },
                                { address: '004AAF68', name: 'Destroy', type: 'virtual' },
                              ], children: [] },
                              { id: 'class-fhex2double', name: 'TFHex2DoubleDlg_11011981', address: '005300A4', parent: 'TForm', methods: [
                                { address: '005300A4', name: 'Create', type: 'virtual' },
                                { address: '00531048', name: 'Destroy', type: 'virtual' },
                              ], children: [] },
                              { id: 'class-fplugins', name: 'TFPlugins', address: '00540B80', parent: 'TForm', methods: [
                                { address: '00540B80', name: 'Create', type: 'virtual' },
                                { address: '005415C0', name: 'Destroy', type: 'virtual' },
                                { address: '00540C80', name: 'FormShow', type: 'dynamic' },
                              ], children: [] },
                            ]
                          },
                          { id: 'class-tscrollbox', name: 'TScrollBox', address: '005CACB8', parent: 'TScrollingWinControl', methods: [], children: [] },
                        ]
                      },
                      { id: 'class-tedit', name: 'TEdit', address: '005928F4', parent: 'TWinControl', methods: [], children: [
                        { id: 'class-tlabelededit', name: 'TLabeledEdit', address: '005DE15C', parent: 'TEdit', methods: [], children: [] },
                        { id: 'class-tmaskedit', name: 'TMaskEdit', address: '005A9684', parent: 'TEdit', methods: [], children: [] },
                      ] },
                      { id: 'class-tmemo', name: 'TMemo', address: '00593370', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tbutton', name: 'TButton', address: '00594650', parent: 'TWinControl', methods: [], children: [
                        { id: 'class-tbitbtn', name: 'TBitBtn', address: '00639464', parent: 'TButton', methods: [], children: [] },
                      ] },
                      { id: 'class-tcheckbox', name: 'TCheckBox', address: '00594EE0', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tradiobutton', name: 'TRadioButton', address: '0059560C', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tlistbox', name: 'TListBox', address: '005960B0', parent: 'TWinControl', methods: [
                        { address: '005C1010', name: 'DrawItem', type: 'virtual' },
                      ], children: [
                        { id: 'class-tchecklistbox', name: 'TCheckListBox', address: '0056F068', parent: 'TListBox', methods: [], children: [] },
                      ] },
                      { id: 'class-tcombobox', name: 'TComboBox', address: '00593A7C', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tpagecontrol', name: 'TPageControl', address: '006040B8', parent: 'TWinControl', methods: [
                        { address: '00591010', name: 'Change', type: 'virtual' },
                      ], children: [
                        { id: 'class-ttabsheet', name: 'TTabSheet', address: '00603AF0', parent: 'TPageControl', methods: [], children: [] },
                      ] },
                      { id: 'class-ttreeview', name: 'TTreeView', address: '00607180', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tlistview', name: 'TListView', address: '0060B634', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-trichedit', name: 'TRichEdit', address: '00608B20', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tradiogroup', name: 'TRadioGroup', address: '005DC38C', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tcolorbox', name: 'TColorBox', address: '005DED44', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tdrawgrid', name: 'TDrawGrid', address: '005B2250', parent: 'TWinControl', methods: [], children: [
                        { id: 'class-tstringgrid', name: 'TStringGrid', address: '005B2D98', parent: 'TDrawGrid', methods: [], children: [] },
                      ] },
                      { id: 'class-ttrackbar', name: 'TTrackBar', address: '00607F7C', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tprogressbar', name: 'TProgressBar', address: '006080F8', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tupdown', name: 'TUpDown', address: '0060989C', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tdatetimepicker', name: 'TDateTimePicker', address: '0060FD38', parent: 'TWinControl', methods: [], children: [] },
                      { id: 'class-tmediaplayer', name: 'TMediaPlayer', address: '00582464', parent: 'TWinControl', methods: [], children: [] },
                    ]
                  }
                ]
              },
              { id: 'class-tactionlist', name: 'TActionList', address: '0058D350', parent: 'TComponent', methods: [], children: [
                { id: 'class-taction', name: 'TAction', address: '0058D70C', parent: 'TActionList', methods: [], children: [] },
              ] },
              { id: 'class-tmainmenu', name: 'TMainMenu', address: '005A23E8', parent: 'TComponent', methods: [], children: [] },
              { id: 'class-tpopupmenu', name: 'TPopupMenu', address: '005A26CC', parent: 'TComponent', methods: [], children: [] },
              { id: 'class-timagelist', name: 'TImageList', address: '005EEF08', parent: 'TComponent', methods: [], children: [] },
              { id: 'class-tpicture', name: 'TPicture', address: '005BEB28', parent: 'TComponent', methods: [], children: [] },
            ]
          }
        ]
      },
      {
        id: 'class-tthread',
        name: 'TThread',
        address: '00680100',
        parent: 'TObject',
        methods: [
          { address: '00680110', name: 'Execute', type: 'virtual' },
          { address: '00680120', name: 'Synchronize', type: 'virtual' },
        ],
        children: [
          { id: 'class-tanalyzethread', name: 'TAnalyzeThread', address: '0046DD28', parent: 'TThread', methods: [
            { address: '00476450', name: 'Execute', type: 'virtual' },
            { address: '004763E4', name: 'Destroy', type: 'virtual' },
          ], children: [] },
        ]
      },
      {
        id: 'class-tlist',
        name: 'TList',
        address: '00680200',
        parent: 'TObject',
        methods: [
          { address: '00680210', name: 'Add', type: 'virtual' },
          { address: '00680220', name: 'Get', type: 'virtual' },
          { address: '00680230', name: 'Clear', type: 'virtual' },
        ],
        children: []
      },
      {
        id: 'class-tstream',
        name: 'TStream',
        address: '00680300',
        parent: 'TObject',
        methods: [
          { address: '00680310', name: 'Read', type: 'virtual' },
          { address: '00680320', name: 'Write', type: 'virtual' },
          { address: '00680330', name: 'Seek', type: 'virtual' },
        ],
        children: [
          { id: 'class-tfilestream', name: 'TFileStream', address: '00680400', parent: 'TStream', methods: [], children: [] },
          { id: 'class-tmemorystream', name: 'TMemoryStream', address: '00680500', parent: 'TStream', methods: [], children: [] },
        ]
      },
    ]
  }
];
