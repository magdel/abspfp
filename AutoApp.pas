unit AutoApp;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, AbsPFP_TLB, StdVcl,SysUtils;

type
  TAbsPFPApplication = class(TAutoObject, IAbsPFPApplication)
  protected
    procedure NewCalc; safecall;
    function Get_AutoQuit: WordBool; safecall;
    procedure Set_AutoQuit(Value: WordBool); safecall;
    procedure SetStCount(StC: Integer); safecall;
    procedure SetStCM(StPos: Integer; cm: Single); safecall;
    procedure SetStTek(StPos: Integer; Tek: Single); safecall;
    procedure SetVC(FromStPos, ToStPos: Integer; VC: Single); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;

  end;

implementation

uses ComServ, MainForm;

procedure TAbsPFPApplication.NewCalc;
begin
  MainPFPForm.NewCalc;
end;

function TAbsPFPApplication.Get_AutoQuit: WordBool;
begin
  Result:=MainPFPForm.AutoQuit;
end;

procedure TAbsPFPApplication.Set_AutoQuit(Value: WordBool);
begin
  MainPFPForm.AutoQuit:=Value;
end;

procedure TAbsPFPApplication.SetStCount(StC: Integer);
begin
  MainPFPForm.SEST.Value:=StC;
end;

procedure TAbsPFPApplication.SetStCM(StPos: Integer; cm: Single);
begin
  MainPFPForm.CTSG.Cells[StPos,1]:=FormatFloat('0.#',cm);
end;

procedure TAbsPFPApplication.SetStTek(StPos: Integer; Tek: Single);
begin
  MainPFPForm.CTSG.Cells[StPos,2]:=FormatFloat('0.#',Tek);
end;

procedure TAbsPFPApplication.SetVC(FromStPos, ToStPos: Integer;
  VC: Single);
begin
  MainPFPForm.VSG.Cells[ToStPos,FromStPos]:=FormatFloat('0.',VC);
end;

function TAbsPFPApplication.Get_Visible: WordBool;
begin

end;

procedure TAbsPFPApplication.Set_Visible(Value: WordBool);
begin
  
end;

initialization
  TAutoObjectFactory.Create(ComServer, TAbsPFPApplication, Class_AbsPFPApplication,
    ciSingleInstance, tmSingle);
end.
