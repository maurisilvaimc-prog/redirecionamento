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
                        id: 'class-tform',
                        name: 'TForm',
                        address: '005B1000',
                        parent: 'TWinControl',
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
                          ], children: [] },
                          { id: 'class-fabout', name: 'TFAboutDlg_11011981', address: '00433B98', parent: 'TForm', methods: [
                            { address: '00433B98', name: 'FormCreate', type: 'dynamic' },
                          ], children: [] },
                        ]
                      },
                      {
                        id: 'class-tpagecontrol',
                        name: 'TPageControl',
                        address: '00591000',
                        parent: 'TWinControl',
                        methods: [
                          { address: '00591010', name: 'Change', type: 'virtual' },
                        ],
                        children: []
                      },
                      {
                        id: 'class-tlistbox',
                        name: 'TListBox',
                        address: '005C1000',
                        parent: 'TWinControl',
                        methods: [
                          { address: '005C1010', name: 'DrawItem', type: 'virtual' },
                        ],
                        children: []
                      },
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  }
];
