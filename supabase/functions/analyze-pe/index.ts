import { serve } from "https://deno.land/std@0.168.0/http/server.ts";

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
};

// PE Header constants
const IMAGE_DOS_SIGNATURE = 0x5A4D; // MZ
const IMAGE_NT_SIGNATURE = 0x00004550; // PE\0\0

interface PESection {
  name: string;
  virtualAddress: string;
  virtualSize: number;
  rawSize: number;
  characteristics: string;
}

interface ImportEntry {
  dll: string;
  functions: string[];
}

interface ExportEntry {
  name: string;
  ordinal: number;
  address: string;
}

interface AnalysisResult {
  fileName: string;
  fileSize: number;
  isPE: boolean;
  isDelphi: boolean;
  delphiVersion: string | null;
  machine: string;
  subsystem: string;
  entryPoint: string;
  imageBase: string;
  sections: PESection[];
  imports: ImportEntry[];
  exports: ExportEntry[];
  strings: { value: string; address: string; section: string }[];
  units: { name: string; address: string; type: string }[];
  forms: { name: string; address: string; size: number }[];
  classNames: string[];
}

function readUint16(buf: Uint8Array, offset: number): number {
  return buf[offset] | (buf[offset + 1] << 8);
}

function readUint32(buf: Uint8Array, offset: number): number {
  return (buf[offset] | (buf[offset + 1] << 8) | (buf[offset + 2] << 16) | (buf[offset + 3] << 24)) >>> 0;
}

function readCString(buf: Uint8Array, offset: number, maxLen = 256): string {
  let str = '';
  for (let i = 0; i < maxLen && offset + i < buf.length; i++) {
    if (buf[offset + i] === 0) break;
    str += String.fromCharCode(buf[offset + i]);
  }
  return str;
}

function toHex(n: number, pad = 8): string {
  return n.toString(16).toUpperCase().padStart(pad, '0');
}

function getMachineName(machine: number): string {
  switch (machine) {
    case 0x014C: return 'i386 (x86)';
    case 0x8664: return 'AMD64 (x64)';
    case 0x01C0: return 'ARM';
    case 0xAA64: return 'ARM64';
    default: return `Unknown (0x${machine.toString(16)})`;
  }
}

function getSubsystem(sub: number): string {
  switch (sub) {
    case 1: return 'Native';
    case 2: return 'Windows GUI';
    case 3: return 'Windows Console';
    case 7: return 'POSIX Console';
    case 9: return 'Windows CE';
    case 10: return 'EFI Application';
    default: return `Unknown (${sub})`;
  }
}

function getSectionCharacteristics(chars: number): string {
  const flags: string[] = [];
  if (chars & 0x00000020) flags.push('CODE');
  if (chars & 0x00000040) flags.push('INITIALIZED_DATA');
  if (chars & 0x00000080) flags.push('UNINITIALIZED_DATA');
  if (chars & 0x20000000) flags.push('EXECUTE');
  if (chars & 0x40000000) flags.push('READ');
  if (chars & 0x80000000) flags.push('WRITE');
  return flags.join(' | ');
}

function extractStrings(buf: Uint8Array, minLen = 5, maxStrings = 200): { value: string; offset: number }[] {
  const results: { value: string; offset: number }[] = [];
  let current = '';
  let startOffset = 0;

  for (let i = 0; i < buf.length && results.length < maxStrings; i++) {
    const ch = buf[i];
    if (ch >= 32 && ch < 127) {
      if (current.length === 0) startOffset = i;
      current += String.fromCharCode(ch);
    } else {
      if (current.length >= minLen) {
        results.push({ value: current, offset: startOffset });
      }
      current = '';
    }
  }
  if (current.length >= minLen && results.length < maxStrings) {
    results.push({ value: current, offset: startOffset });
  }
  return results;
}

function detectDelphiVersion(buf: Uint8Array, imports: ImportEntry[]): { isDelphi: boolean; version: string | null } {
  // Check for Borland/Embarcadero signatures
  const fileStr = new TextDecoder('ascii', { fatal: false }).decode(buf.slice(0, Math.min(buf.length, 0x10000)));
  
  const delphiPatterns = [
    { pattern: 'Borland Delphi', version: 'Delphi (Borland)' },
    { pattern: 'Embarcadero Delphi', version: 'Delphi (Embarcadero)' },
    { pattern: 'TApplication', version: null },
    { pattern: 'TPersistent', version: null },
    { pattern: 'System.TObject', version: null },
  ];

  let isDelphi = false;
  let version: string | null = null;

  for (const p of delphiPatterns) {
    if (fileStr.includes(p.pattern)) {
      isDelphi = true;
      if (p.version) version = p.version;
    }
  }

  // Check for Delphi runtime DLLs in imports
  const delphiDlls = ['rtl', 'vcl', 'vclx', 'borlndmm.dll'];
  for (const imp of imports) {
    const dllLower = imp.dll.toLowerCase();
    for (const dd of delphiDlls) {
      if (dllLower.includes(dd)) {
        isDelphi = true;
        break;
      }
    }
  }

  // Detect version from package names in strings
  const versionPatterns = [
    { pattern: 'rtl280', ver: 'Delphi 12 Athens' },
    { pattern: 'rtl270', ver: 'Delphi 11 Alexandria' },
    { pattern: 'rtl260', ver: 'Delphi 10.4 Sydney' },
    { pattern: 'rtl250', ver: 'Delphi 10.3 Rio' },
    { pattern: 'rtl240', ver: 'Delphi 10.2 Tokyo' },
    { pattern: 'rtl230', ver: 'Delphi 10.1 Berlin' },
    { pattern: 'rtl220', ver: 'Delphi 10 Seattle' },
    { pattern: 'rtl210', ver: 'Delphi XE8' },
    { pattern: 'rtl200', ver: 'Delphi XE7' },
    { pattern: 'rtl170', ver: 'Delphi 2005' },
    { pattern: 'rtl150', ver: 'Delphi 7' },
    { pattern: 'rtl140', ver: 'Delphi 6' },
    { pattern: 'rtl100', ver: 'Delphi 3' },
    { pattern: 'Delphi 7', ver: 'Delphi 7' },
    { pattern: 'Delphi 6', ver: 'Delphi 6' },
    { pattern: 'Delphi 5', ver: 'Delphi 5' },
  ];

  for (const vp of versionPatterns) {
    if (fileStr.includes(vp.pattern)) {
      version = vp.ver;
      break;
    }
  }

  return { isDelphi, version };
}

function findDelphiUnits(strings: { value: string; offset: number }[]): { name: string; address: string; type: string }[] {
  const unitNames = new Set<string>();
  const units: { name: string; address: string; type: string }[] = [];
  
  // Known Delphi standard units
  const stdUnits = new Set([
    'System', 'SysUtils', 'Classes', 'Controls', 'Forms', 'StdCtrls',
    'ExtCtrls', 'ComCtrls', 'Dialogs', 'Graphics', 'Menus', 'Buttons',
    'Grids', 'Variants', 'TypInfo', 'Windows', 'Messages', 'Math',
    'Registry', 'IniFiles', 'Printers', 'Clipbrd', 'ShellAPI',
    'ActiveX', 'ComObj', 'StrUtils', 'DateUtils', 'Types', 'ActnList',
    'ImgList', 'ToolWin', 'CommCtrl', 'RichEdit', 'jpeg', 'pngimage',
  ]);

  for (const s of strings) {
    // Look for unit-like names (Pascal identifier patterns)
    const match = s.value.match(/^([A-Z][A-Za-z0-9_]{2,30})$/);
    if (match) {
      const name = match[1];
      if (!unitNames.has(name) && !name.startsWith('HTTP') && !name.startsWith('XML')) {
        unitNames.add(name);
        const isStd = stdUnits.has(name);
        units.push({
          name,
          address: toHex(s.offset),
          type: isStd ? 'standard' : 'user',
        });
      }
    }

    // Look for T-prefixed class names which indicate units
    const classMatch = s.value.match(/^T([A-Z][A-Za-z0-9_]+)$/);
    if (classMatch) {
      const unitGuess = classMatch[1].replace(/Form\d*$/, '');
      if (unitGuess.length > 2 && !unitNames.has(unitGuess)) {
        unitNames.add(unitGuess);
      }
    }
  }

  return units;
}

function findDelphiForms(strings: { value: string; offset: number }[]): { name: string; address: string; size: number }[] {
  const forms: { name: string; address: string; size: number }[] = [];
  const seen = new Set<string>();

  for (const s of strings) {
    // Look for TF* form class names
    const match = s.value.match(/^TF([A-Za-z0-9_]+)$/);
    if (match && !seen.has(match[0])) {
      seen.add(match[0]);
      forms.push({
        name: match[0].substring(1), // Remove leading T
        address: toHex(s.offset),
        size: 0,
      });
    }
    // Also look for form resource names like "FMAIN", etc
    const resMatch = s.value.match(/^(F[A-Z][A-Za-z0-9_]+)$/);
    if (resMatch && resMatch[1].length > 3 && !seen.has(resMatch[1])) {
      seen.add(resMatch[1]);
    }
  }

  return forms;
}

function findClassNames(strings: { value: string; offset: number }[]): string[] {
  const classes = new Set<string>();
  for (const s of strings) {
    // T-prefixed identifiers are typically Delphi classes
    if (/^T[A-Z][A-Za-z0-9_]{2,40}$/.test(s.value)) {
      classes.add(s.value);
    }
  }
  return Array.from(classes).sort();
}

function parsePE(buf: Uint8Array, fileName: string): AnalysisResult {
  const result: AnalysisResult = {
    fileName,
    fileSize: buf.length,
    isPE: false,
    isDelphi: false,
    delphiVersion: null,
    machine: '',
    subsystem: '',
    entryPoint: '',
    imageBase: '',
    sections: [],
    imports: [],
    exports: [],
    strings: [],
    units: [],
    forms: [],
    classNames: [],
  };

  // Check DOS signature
  if (buf.length < 64) return result;
  const dosSig = readUint16(buf, 0);
  if (dosSig !== IMAGE_DOS_SIGNATURE) return result;

  // Get PE header offset
  const peOffset = readUint32(buf, 0x3C);
  if (peOffset + 24 > buf.length) return result;

  // Check PE signature
  const peSig = readUint32(buf, peOffset);
  if (peSig !== IMAGE_NT_SIGNATURE) return result;
  result.isPE = true;

  // COFF Header
  const coffOffset = peOffset + 4;
  const machine = readUint16(buf, coffOffset);
  const numberOfSections = readUint16(buf, coffOffset + 2);
  const sizeOfOptionalHeader = readUint16(buf, coffOffset + 16);
  result.machine = getMachineName(machine);

  // Optional Header
  const optOffset = coffOffset + 20;
  const magic = readUint16(buf, optOffset);
  const is64 = magic === 0x20B;

  if (is64) {
    result.entryPoint = toHex(readUint32(buf, optOffset + 16));
    const imageBaseLow = readUint32(buf, optOffset + 24);
    const imageBaseHigh = readUint32(buf, optOffset + 28);
    result.imageBase = toHex(imageBaseHigh) + toHex(imageBaseLow);
    result.subsystem = getSubsystem(readUint16(buf, optOffset + 68));
  } else {
    result.entryPoint = toHex(readUint32(buf, optOffset + 16));
    result.imageBase = toHex(readUint32(buf, optOffset + 28));
    result.subsystem = getSubsystem(readUint16(buf, optOffset + 68));
  }

  // Section table
  const sectionTableOffset = optOffset + sizeOfOptionalHeader;
  for (let i = 0; i < numberOfSections; i++) {
    const secOff = sectionTableOffset + i * 40;
    if (secOff + 40 > buf.length) break;

    const name = readCString(buf, secOff, 8);
    const virtualSize = readUint32(buf, secOff + 8);
    const virtualAddress = readUint32(buf, secOff + 12);
    const rawSize = readUint32(buf, secOff + 16);
    const characteristics = readUint32(buf, secOff + 36);

    result.sections.push({
      name,
      virtualAddress: toHex(virtualAddress),
      virtualSize,
      rawSize,
      characteristics: getSectionCharacteristics(characteristics),
    });
  }

  // Parse Import Table
  const dataDirectoryOffset = is64 ? optOffset + 112 : optOffset + 96;
  if (dataDirectoryOffset + 8 <= buf.length) {
    const importRVA = readUint32(buf, dataDirectoryOffset + 8); // Import table is 2nd entry
    if (importRVA > 0) {
      // Find which section contains the import RVA
      for (const sec of result.sections) {
        const secRVA = parseInt(sec.virtualAddress, 16);
        const secRawOff = findSectionRawOffset(buf, sectionTableOffset, numberOfSections, secRVA);
        if (importRVA >= secRVA && importRVA < secRVA + sec.virtualSize && secRawOff >= 0) {
          const importFileOff = secRawOff + (importRVA - secRVA);
          parseImports(buf, importFileOff, sectionTableOffset, numberOfSections, result);
          break;
        }
      }
    }
  }

  // Extract strings
  const rawStrings = extractStrings(buf, 5, 300);
  
  // Map strings to sections
  result.strings = rawStrings.slice(0, 150).map(s => {
    let section = 'unknown';
    for (const sec of result.sections) {
      const secRawOff = findSectionRawOffset(buf, sectionTableOffset, numberOfSections, parseInt(sec.virtualAddress, 16));
      if (secRawOff >= 0 && s.offset >= secRawOff && s.offset < secRawOff + sec.rawSize) {
        section = sec.name;
        break;
      }
    }
    return { value: s.value, address: toHex(s.offset), section };
  });

  // Detect Delphi
  const delphiInfo = detectDelphiVersion(buf, result.imports);
  result.isDelphi = delphiInfo.isDelphi;
  result.delphiVersion = delphiInfo.version;

  // Find Delphi units, forms, classes
  result.units = findDelphiUnits(rawStrings);
  result.forms = findDelphiForms(rawStrings);
  result.classNames = findClassNames(rawStrings);

  return result;
}

function findSectionRawOffset(buf: Uint8Array, sectionTableOffset: number, numSections: number, rva: number): number {
  for (let i = 0; i < numSections; i++) {
    const secOff = sectionTableOffset + i * 40;
    if (secOff + 40 > buf.length) break;
    const secVA = readUint32(buf, secOff + 12);
    const secVSize = readUint32(buf, secOff + 8);
    const secRawOff = readUint32(buf, secOff + 20);
    if (rva >= secVA && rva < secVA + secVSize) {
      return secRawOff;
    }
  }
  return -1;
}

function rvaToFileOffset(buf: Uint8Array, sectionTableOffset: number, numSections: number, rva: number): number {
  for (let i = 0; i < numSections; i++) {
    const secOff = sectionTableOffset + i * 40;
    if (secOff + 40 > buf.length) break;
    const secVA = readUint32(buf, secOff + 12);
    const secVSize = readUint32(buf, secOff + 8);
    const secRawOff = readUint32(buf, secOff + 20);
    if (rva >= secVA && rva < secVA + secVSize) {
      return secRawOff + (rva - secVA);
    }
  }
  return -1;
}

function parseImports(buf: Uint8Array, importFileOff: number, sectionTableOffset: number, numSections: number, result: AnalysisResult) {
  let offset = importFileOff;
  
  for (let i = 0; i < 100; i++) { // safety limit
    if (offset + 20 > buf.length) break;
    
    const originalFirstThunk = readUint32(buf, offset);
    const nameRVA = readUint32(buf, offset + 12);
    const firstThunk = readUint32(buf, offset + 16);
    
    // End of import directory
    if (nameRVA === 0 && originalFirstThunk === 0) break;
    
    // Get DLL name
    const nameFileOff = rvaToFileOffset(buf, sectionTableOffset, numSections, nameRVA);
    if (nameFileOff < 0 || nameFileOff >= buf.length) {
      offset += 20;
      continue;
    }
    
    const dllName = readCString(buf, nameFileOff);
    if (!dllName) {
      offset += 20;
      continue;
    }

    const entry: ImportEntry = { dll: dllName, functions: [] };
    
    // Parse imported functions
    const thunkRVA = originalFirstThunk || firstThunk;
    if (thunkRVA > 0) {
      const thunkFileOff = rvaToFileOffset(buf, sectionTableOffset, numSections, thunkRVA);
      if (thunkFileOff >= 0) {
        for (let j = 0; j < 200 && entry.functions.length < 50; j++) {
          const thunkOff = thunkFileOff + j * 4;
          if (thunkOff + 4 > buf.length) break;
          const thunkVal = readUint32(buf, thunkOff);
          if (thunkVal === 0) break;
          
          // Check if import by ordinal
          if (thunkVal & 0x80000000) {
            entry.functions.push(`Ordinal_${thunkVal & 0xFFFF}`);
          } else {
            // Import by name
            const hintNameOff = rvaToFileOffset(buf, sectionTableOffset, numSections, thunkVal);
            if (hintNameOff >= 0 && hintNameOff + 2 < buf.length) {
              const funcName = readCString(buf, hintNameOff + 2);
              if (funcName) entry.functions.push(funcName);
            }
          }
        }
      }
    }
    
    result.imports.push(entry);
    offset += 20;
  }
}

serve(async (req: Request) => {
  if (req.method === 'OPTIONS') {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    const formData = await req.formData();
    const file = formData.get('file') as File | null;
    
    if (!file) {
      return new Response(
        JSON.stringify({ error: 'No file provided' }),
        { status: 400, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
      );
    }

    const arrayBuffer = await file.arrayBuffer();
    const buf = new Uint8Array(arrayBuffer);
    
    const result = parsePE(buf, file.name);

    return new Response(
      JSON.stringify(result),
      { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    );
  } catch (error) {
    const msg = error instanceof Error ? error.message : 'Unknown error';
    console.error('PE analysis error:', msg);
    return new Response(
      JSON.stringify({ error: msg }),
      { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    );
  }
});
