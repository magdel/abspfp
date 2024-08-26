unit AbsPFP_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 21.11.2006 22:09:38 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Projects\UER\AbsPFP2006\AbsPFP.tlb (1)
// LIBID: {DC735FFB-EC15-456C-9284-9B452EED9E0E}
// LCID: 0
// Helpfile: 
// HelpString: AbsPFP Library
// DepndLst: 
//   (1) v2.0 stdole, (K:\WINDOWS\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AbsPFPMajorVersion = 1;
  AbsPFPMinorVersion = 0;

  LIBID_AbsPFP: TGUID = '{DC735FFB-EC15-456C-9284-9B452EED9E0E}';

  IID_IAbsPFPApplication: TGUID = '{5E7C1840-D602-4772-B77A-664C90A69C2F}';
  CLASS_AbsPFPApplication: TGUID = '{800A1D79-EA9C-4133-A897-3E6FD3032961}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IAbsPFPApplication = interface;
  IAbsPFPApplicationDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  AbsPFPApplication = IAbsPFPApplication;


// *********************************************************************//
// Interface: IAbsPFPApplication
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5E7C1840-D602-4772-B77A-664C90A69C2F}
// *********************************************************************//
  IAbsPFPApplication = interface(IDispatch)
    ['{5E7C1840-D602-4772-B77A-664C90A69C2F}']
    procedure NewCalc; safecall;
    function Get_AutoQuit: WordBool; safecall;
    procedure Set_AutoQuit(Value: WordBool); safecall;
    procedure SetStCount(StC: Integer); safecall;
    procedure SetStCM(StPos: Integer; cm: Single); safecall;
    procedure SetStTek(StPos: Integer; Tek: Single); safecall;
    procedure SetVC(FromStPos: Integer; ToStPos: Integer; VC: Single); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    property AutoQuit: WordBool read Get_AutoQuit write Set_AutoQuit;
    property Visible: WordBool read Get_Visible write Set_Visible;
  end;

// *********************************************************************//
// DispIntf:  IAbsPFPApplicationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5E7C1840-D602-4772-B77A-664C90A69C2F}
// *********************************************************************//
  IAbsPFPApplicationDisp = dispinterface
    ['{5E7C1840-D602-4772-B77A-664C90A69C2F}']
    procedure NewCalc; dispid 201;
    property AutoQuit: WordBool dispid 202;
    procedure SetStCount(StC: Integer); dispid 203;
    procedure SetStCM(StPos: Integer; cm: Single); dispid 204;
    procedure SetStTek(StPos: Integer; Tek: Single); dispid 205;
    procedure SetVC(FromStPos: Integer; ToStPos: Integer; VC: Single); dispid 206;
    property Visible: WordBool dispid 207;
  end;

// *********************************************************************//
// The Class CoAbsPFPApplication provides a Create and CreateRemote method to          
// create instances of the default interface IAbsPFPApplication exposed by              
// the CoClass AbsPFPApplication. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAbsPFPApplication = class
    class function Create: IAbsPFPApplication;
    class function CreateRemote(const MachineName: string): IAbsPFPApplication;
  end;

implementation

uses ComObj;

class function CoAbsPFPApplication.Create: IAbsPFPApplication;
begin
  Result := CreateComObject(CLASS_AbsPFPApplication) as IAbsPFPApplication;
end;

class function CoAbsPFPApplication.CreateRemote(const MachineName: string): IAbsPFPApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AbsPFPApplication) as IAbsPFPApplication;
end;

end.
