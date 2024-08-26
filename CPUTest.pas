unit CPUTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  VclTee.TeeGDIPlus;

type

  TProcTestForm=class(TForm)
    Chart1: TChart;
    Series1: TBarSeries;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Series2: TBarSeries;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Test;
  end;

var
  ProcTestForm: TProcTestForm;
  ProcMemRating: Integer=0;
  ProcCPURating: Integer=0;
  ProcLogicalCount: Integer=0;
  ProcHTSupported: Boolean;

  function GetNumberOfProcessors: Integer;
implementation

uses Registry;

{$R *.dfm}

type

  TVTestRec = record
    TT:Double;
    Active:Boolean;
  end;
  TTestThread=class(TThread)
  private
    FA: Array of Double;
    MA: Array of Cardinal;
    TVA: Array of TVTestRec;
    MD:Double;
    function NextTV(T:Integer):Double;
  public
    MemPR: Integer;
    ProcPR: Integer;
    procedure Execute; override;

  end;


function GetNumberOfProcessors: Integer;
var
   si: TSystemInfo; //Windows.pas
begin
   GetSystemInfo({var}si);
   Result := si.dwNumberOfProcessors;
end;

{ TCalcThread }

procedure TTestThread.Execute;
{$Q-}{$R-}
label
  PCA1,PCA2;
var
  I, J: Integer;
  PCStart, PCEnd, PCPer: Int64;
  MaxTimeTest: Int64;
begin
  QueryPerformanceFrequency(PCPer);
  MaxTimeTest:=PCPer*5; //5 seconds
  MemPR:=1;
  ProcPR:=1;

  SetLength(FA, 3);

  SetLength(MA, 1000000);
  SetLength(TVA, 9);
  MD:=0;
  TVA[0].TT:=4.3;
  TVA[1].TT:=4.1;
  TVA[2].TT:=4.8;
  TVA[3].TT:=3.2;
  TVA[4].TT:=5.8;
  TVA[5].TT:=0.7;
  TVA[6].TT:=34.8;
  TVA[7].TT:=634.8;
  TVA[8].TT:=0.18;

  For J:=0 To High(FA) do
    FA[J]:=J;
  For I:=0 To High(MA) do
    MA[I]:=I;

  QueryPerformanceCounter(PCStart);
  PCA1:

  For J:=0 To High(FA) do
    FA[J]:=J;
  For I:=0 To High(MA) do
    MA[I]:=I;

  For I:=0 To High(MA) do
    For J:=0 To High(FA) do
      MA[I]:=MA[I]*4+Round(FA[High(FA)-J]+((MA[I]*FA[J])));
  Inc(MemPR);
  QueryPerformanceCounter(PCEnd);
  If PCEnd-PCStart<MaxTimeTest Then goto PCA1;

  QueryPerformanceCounter(PCStart);
  PCA2:
  MD:=0;
  NextTV(0);
  Inc(ProcPR);
  QueryPerformanceCounter(PCEnd);
  If PCEnd-PCStart<MaxTimeTest Then goto PCA2;

end;

procedure TProcTestForm.Test;
var
  T: TTestThread;
begin
  Repaint;
  T:=TTestThread.Create(True);
  T.Priority:=tpHighest;
  T.Resume;
  T.WaitFor;
  ProcMemRating:=Round(T.MemPR*(4200/60));
  ProcCPURating:=Round(T.ProcPR*(4200/33303));
  T.Free;
end;

procedure TProcTestForm.FormActivate(Sender: TObject);
var Pos:Integer;
begin
    With Series1 do
  Begin
    Clear;
    Add(980, 'Duron 800MHz', clMaroon);
    Add(1540, 'Cel 1.7GHz', clMaroon);
    Add(1680, 'Athlon 1.45GHz', clMaroon);
    Add(3010, 'Xeon 3.6GHz', clMaroon);
    Add(4200, 'Athlon64 2.2GHz', clMaroon);
  end;
  With Series2 do
  Begin
    Clear;
    Add(1250, '', clOlive);
    Add(2090, '', clOlive);
    Add(2300, '', clOlive);
    Add(3726, '', clOlive);
    Add(4200, '', clOlive);
  end;
  Label1.Visible:=True;
  Label3.Visible:=False;
  Label5.Visible:=False;
  Label7.Visible:=False;
  Test;
  Label1.Visible:=False;
  Button1.Visible:=True;
  Label3.Caption:=IntToStr(ProcMemRating)+'+';
  Label7.Caption:=IntToStr(ProcCPURating)+'+';
  Label5.Caption:=IntToStr(ProcLogicalCount);

  Label3.Visible:=True;
  Label5.Visible:=True;
  Label7.Visible:=True;

  Pos:=0;
  if ProcCPURating>980 then Pos:=1;
  if ProcCPURating>2090 then Pos:=2;
  if ProcCPURating>2300 then Pos:=3;
  if ProcCPURating>3726 then Pos:=4;
  if ProcCPURating>4200 then Pos:=5;

  With Series1 do
  Begin
    Clear;
    if Pos=0 then Add(ProcMemRating, 'This PC', clRed);
    Add(1250, 'Duron 800MHz', clMaroon);
    if Pos=1 then Add(ProcMemRating, 'This PC', clRed);
    Add(1540, 'Cel 1.7GHz', clMaroon);
    if Pos=2 then Add(ProcMemRating, 'This PC', clRed);
    Add(1680, 'Athlon 1.45GHz', clMaroon);
    if Pos=3 then Add(ProcMemRating, 'This PC', clRed);
    Add(3010, 'Xeon 3.6GHz', clMaroon);
    if Pos=4 then Add(ProcMemRating, 'This PC', clRed);
    Add(4200, 'Athlon64 2.2GHz', clMaroon);
    if Pos=5 then Add(ProcMemRating, 'This PC', clRed);
  end;
  With Series2 do
  Begin
    Clear;
    if Pos=0 then Add(ProcCPURating, '', clYellow);;
    Add(980, '', clOlive);
    if Pos=1 then Add(ProcCPURating, '', clYellow);;
    Add(2090, '', clOlive);
    if Pos=2 then Add(ProcCPURating, '', clYellow);;
    Add(2300, '', clOlive);
    if Pos=3 then Add(ProcCPURating, '', clYellow);;
    Add(3726, '', clOlive);
    if Pos=4 then Add(ProcCPURating, '', clYellow);;
    Add(4200, '', clOlive);
    if Pos=5 then Add(ProcCPURating, '', clYellow);;
  end;



end;

procedure ReadPRFromRegistry;
begin
  With TRegistry.Create(KEY_READ or KEY_CREATE_SUB_KEY or KEY_WRITE) Do
  try
    RootKey:=HKEY_CURRENT_USER;
    OpenKey('SOFTWARE\PGUPS\ABSPFP', True);
    If ValueExists('MemPR') Then
      ProcMemRating:=ReadInteger('MemPR');
    If ValueExists('CPUPR') Then
      ProcCPURating:=ReadInteger('CPUPR');
  finally
    Free;
  end;
end;

procedure WritePRToRegistry;
begin
  With TRegistry.Create(KEY_READ or KEY_CREATE_SUB_KEY or KEY_WRITE) Do
  try
    RootKey:=HKEY_CURRENT_USER;
    OpenKey('SOFTWARE\PGUPS\ABSPFP', True);
    WriteInteger('MemPR', ProcMemRating);
    WriteInteger('CPUPR', ProcCPURating);
  finally
    Free;
  end;
end;

function TTestThread.NextTV(T: Integer): Double;
var I:Integer; Res:Double;
begin
  if T<=High(TVA) then
  begin
    Res:=0;
    TVA[T].Active:=True;
    Res:=Res+NextTV(T+1);
    TVA[T].Active:=False;
    Res:=Res+NextTV(T+1);
    Result:=Res;
  end
  else
  begin
    Res:=0;
    for I := 0 to High(TVA) do
      if TVA[I].Active then
      Res:=Res+TVA[I].TT*(I/3.5345642+1);
    for I := 0 to High(TVA) do
      if TVA[I].Active then
      Res:=Res+TVA[I].TT*((I+1)/13.5345642+1);
    if Res<MD then MD:=Res;
    Result:=Res; 
  end;
end;

initialization
  ReadPRFromRegistry;
  try
    ProcLogicalCount:=GetNumberOfProcessors;
  except end;
  If ProcLogicalCount=0 Then ProcLogicalCount:=1;

finalization
  WritePRToRegistry;

end.

