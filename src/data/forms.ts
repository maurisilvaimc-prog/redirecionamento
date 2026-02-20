import { DFMForm } from '../lib/index';

export const mockForms: DFMForm[] = [
  {
    id: 'form-main',
    name: 'FMain_11011981',
    content: `object FMain_11011981: TFMain_11011981
  Left = 243
  Top = 124
  Width = 1033
  Height = 855
  Caption = 'Interactive Delphi Reconstructor'
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Name = 'MS Sans Serif'
  KeyPreview = True
  Menu = MainMenu
  object pcWorkArea: TPageControl
    ActivePage = tsCodeView
    Align = alClient
    object tsCodeView: TTabSheet
      Caption = 'CodeViewer (F6)'
      object lbCode: TListBox
        Align = alClient
        Font.Name = 'Courier New'
      end
    end
    object tsClassView: TTabSheet
      Caption = 'ClassViewer (F7)'
    end
    object tsStrings: TTabSheet
      Caption = 'Strings (F8)'
    end
    object tsNames: TTabSheet
      Caption = 'Names (F9)'
    end
    object tsSourceCode: TTabSheet
      Caption = 'SourceCode (F10)'
    end
    object tsMap: TTabSheet
      Caption = 'Map (F11)'
    end
  end
  object pcInfo: TPageControl
    Align = alLeft
    object tsUnits: TTabSheet
      Caption = 'Units (F2)'
    end
    object tsRTTI: TTabSheet
      Caption = 'RTTI (F4)'
    end
    object tsForms: TTabSheet
      Caption = 'Forms (F5)'
    end
  end
end`,
    structure: {
      type: 'TFMain_11011981',
      name: 'FMain_11011981',
      properties: { Caption: 'Interactive Delphi Reconstructor', Width: 1033, Height: 855, Color: 'clBtnFace' },
      children: [
        {
          type: 'TPageControl', name: 'pcWorkArea',
          properties: { Align: 'alClient', ActivePage: 'tsCodeView' },
          children: [
            { type: 'TTabSheet', name: 'tsCodeView', properties: { Caption: 'CodeViewer (F6)' }, children: [
              { type: 'TListBox', name: 'lbCode', properties: { Align: 'alClient', 'Font.Name': 'Courier New' }, children: [] }
            ]},
            { type: 'TTabSheet', name: 'tsClassView', properties: { Caption: 'ClassViewer (F7)' }, children: [] },
            { type: 'TTabSheet', name: 'tsStrings', properties: { Caption: 'Strings (F8)' }, children: [] },
            { type: 'TTabSheet', name: 'tsNames', properties: { Caption: 'Names (F9)' }, children: [] },
            { type: 'TTabSheet', name: 'tsSourceCode', properties: { Caption: 'SourceCode (F10)' }, children: [] },
            { type: 'TTabSheet', name: 'tsMap', properties: { Caption: 'Map (F11)' }, children: [] },
          ]
        },
        {
          type: 'TPageControl', name: 'pcInfo',
          properties: { Align: 'alLeft', Width: 250 },
          children: [
            { type: 'TTabSheet', name: 'tsUnits', properties: { Caption: 'Units (F2)' }, children: [] },
            { type: 'TTabSheet', name: 'tsRTTI', properties: { Caption: 'RTTI (F4)' }, children: [] },
            { type: 'TTabSheet', name: 'tsForms', properties: { Caption: 'Forms (F5)' }, children: [] },
          ]
        }
      ]
    }
  },
  {
    id: 'form-about',
    name: 'FAboutDlg_11011981',
    content: `object FAboutDlg_11011981: TFAboutDlg_11011981
  BorderStyle = bsToolWindow
  Caption = 'About...'
  ClientHeight = 393
  ClientWidth = 540
  Position = poScreenCenter
  object Panel3: TPanel
    Align = alBottom
    Height = 40
    object lblHint: TLabel
      Caption = 'IDR was written in BCB. DeDe sources were not used in IDR.'
      Font.Color = clRed
    end
    object Button2: TButton
      Caption = 'OK'
      ModalResult = 1
    end
  end
  object PageControl1: TPageControl
    Align = alClient
    object tsIDR: TTabSheet
      Caption = 'IDR'
    end
  end
end`,
    structure: {
      type: 'TFAboutDlg_11011981', name: 'FAboutDlg_11011981',
      properties: { Caption: 'About...', ClientWidth: 540, ClientHeight: 393, BorderStyle: 'bsToolWindow' },
      children: [
        { type: 'TPanel', name: 'Panel3', properties: { Align: 'alBottom', Height: 40 }, children: [
          { type: 'TLabel', name: 'lblHint', properties: { Caption: 'IDR was written in BCB. DeDe sources were not used in IDR.' }, children: [] },
          { type: 'TButton', name: 'Button2', properties: { Caption: 'OK', ModalResult: 1 }, children: [] },
        ]},
        { type: 'TPageControl', name: 'PageControl1', properties: { Align: 'alClient' }, children: [
          { type: 'TTabSheet', name: 'tsIDR', properties: { Caption: 'IDR' }, children: [] },
        ]},
      ]
    }
  },
  {
    id: 'form-stringinfo',
    name: 'FStringInfo_11011981',
    content: `object FStringInfo_11011981: TFStringInfo_11011981
  Width = 853
  Height = 190
  Position = poScreenCenter
  KeyPreview = True
  object memStringInfo: TMemo
    Align = alClient
    Font.Name = 'Fixedsys'
    ReadOnly = True
    ScrollBars = ssVertical
  end
end`,
    structure: {
      type: 'TFStringInfo_11011981', name: 'FStringInfo_11011981',
      properties: { Width: 853, Height: 190, Position: 'poScreenCenter' },
      children: [
        { type: 'TMemo', name: 'memStringInfo', properties: { Align: 'alClient', 'Font.Name': 'Fixedsys', ReadOnly: true }, children: [] },
      ]
    }
  },
  {
    id: 'form-explorer',
    name: 'FExplorer_11011981',
    content: `object FExplorer_11011981: TFExplorer_11011981
  Width = 671
  Height = 565
  Caption = 'Explorer'
  Position = poScreenCenter
  object pc1: TPageControl
    Align = alClient
    object tsCode: TTabSheet
      Caption = 'Code'
      object lbCode: TListBox
        Align = alClient
        Font.Name = 'Fixedsys'
      end
    end
    object tsData: TTabSheet
      Caption = 'Data'
    end
  end
end`,
    structure: {
      type: 'TFExplorer_11011981', name: 'FExplorer_11011981',
      properties: { Caption: 'Explorer', Width: 671, Height: 565 },
      children: [
        { type: 'TPageControl', name: 'pc1', properties: { Align: 'alClient' }, children: [
          { type: 'TTabSheet', name: 'tsCode', properties: { Caption: 'Code' }, children: [
            { type: 'TListBox', name: 'lbCode', properties: { Align: 'alClient' }, children: [] },
          ]},
          { type: 'TTabSheet', name: 'tsData', properties: { Caption: 'Data' }, children: [] },
        ]},
      ]
    }
  },
  {
    id: 'form-plugins',
    name: 'FPlugins',
    content: `object FPlugins: TFPlugins
  Width = 548
  Height = 287
  Caption = 'Plugins'
  Position = poScreenCenter
  object cklbPluginsList: TCheckListBox
    Align = alTop
    Height = 209
  end
  object bOk: TButton
    Caption = 'Ok'
  end
  object bCancel: TButton
    Caption = 'Cancel'
  end
end`,
    structure: {
      type: 'TFPlugins', name: 'FPlugins',
      properties: { Caption: 'Plugins', Width: 548, Height: 287 },
      children: [
        { type: 'TCheckListBox', name: 'cklbPluginsList', properties: { Align: 'alTop', Height: 209 }, children: [] },
        { type: 'TButton', name: 'bOk', properties: { Caption: 'Ok' }, children: [] },
        { type: 'TButton', name: 'bCancel', properties: { Caption: 'Cancel' }, children: [] },
      ]
    }
  },
  {
    id: 'form-typeinfo',
    name: 'FTypeInfo_11011981',
    content: `object FTypeInfo_11011981: TFTypeInfo_11011981
  Caption = 'TypeInfo'
  Position = poScreenCenter
  KeyPreview = True
end`,
    structure: {
      type: 'TFTypeInfo_11011981', name: 'FTypeInfo_11011981',
      properties: { Caption: 'TypeInfo', Position: 'poScreenCenter' },
      children: []
    }
  },
  {
    id: 'form-hex2double',
    name: 'FHex2DoubleDlg_11011981',
    content: `object FHex2DoubleDlg_11011981: TFHex2DoubleDlg_11011981
  Caption = 'Hex to Double Converter'
  Position = poScreenCenter
end`,
    structure: {
      type: 'TFHex2DoubleDlg_11011981', name: 'FHex2DoubleDlg_11011981',
      properties: { Caption: 'Hex to Double Converter' },
      children: []
    }
  },
  {
    id: 'form-legend',
    name: 'FLegend_11011981',
    content: `object FLegend_11011981: TFLegend_11011981
  Caption = 'Legend'
  Position = poScreenCenter
end`,
    structure: {
      type: 'TFLegend_11011981', name: 'FLegend_11011981',
      properties: { Caption: 'Legend' },
      children: []
    }
  },
];
