program AbsPFP;

uses
  Forms,
  MainForm in 'MainForm.pas' {MainPFPForm},
  AbsPFPSolve in 'AbsPFPSolve.pas',
  CPUTest in 'CPUTest.pas' {ProcTestForm},
  PfpProgress in 'PfpProgress.pas' {ThrdProgressForm},
  kcUtils in 'kcUtils.pas',
  SelMarsh in 'SelMarsh.pas' {SelMarshForm},
  AboutForm in 'AboutForm.pas' {AboutBox},
  ExcelExport in 'ExcelExport.pas',
  AbsPFP_TLB in 'AbsPFP_TLB.pas',
  AutoApp in 'AutoApp.pas' {AbsPFPApplication: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Расчет ПФП';
  Application.CreateForm(TMainPFPForm, MainPFPForm);
  Application.CreateForm(TProcTestForm, ProcTestForm);
  Application.CreateForm(TThrdProgressForm, ThrdProgressForm);
  Application.CreateForm(TSelMarshForm, SelMarshForm);
  Application.Run;
end.
