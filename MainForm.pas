unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Spin, ComCtrls, ActnList, ToolWin, ActnMan,
  ActnCtrls, ActnMenus, XPStyleActnCtrls, ExtCtrls, AbsPFPSolve, Menus,
  ImgList, System.ImageList, System.Actions;

type
  TMainPFPForm=class(TForm)
    SB: TStatusBar;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    AClose: TAction;
    ANew: TAction;
    ALoad: TAction;
    ASaveAs: TAction;
    ACalcPFP: TAction;
    AAbout: TAction;
    AHelp: TAction;
    PC: TPageControl;
    tsData: TTabSheet;
    tsRes: TTabSheet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    AMultThrd: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SEST: TSpinEdit;
    Panel4: TPanel;
    CTSG: TStringGrid;
    Splitter1: TSplitter;
    ABTest: TAction;
    Label1: TLabel;
    Label2: TLabel;
    OD: TOpenDialog;
    SD: TSaveDialog;
    Panel5: TPanel;
    Splitter2: TSplitter;
    Panel6: TPanel;
    MarLB: TListBox;
    ActionToolBar1: TActionToolBar;
    ActionToolBar2: TActionToolBar;
    ImageList2: TImageList;
    AAddMar: TAction;
    ARemMar: TAction;
    AClearMar: TAction;
    ATreeMar: TAction;
    ASave: TAction;
    pcRes: TPageControl;
    tsPFP: TTabSheet;
    ScrollBox1: TScrollBox;
    ResImg: TImage;
    tsShowings: TTabSheet;
    sgShw: TStringGrid;
    ActionToolBar3: TActionToolBar;
    AExcel: TAction;
    SBN: TStatusBar;
    Panel7: TPanel;
    Label3: TLabel;
    PFPCB: TComboBox;
    SEBC: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ASuperThrd: TAction;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel8: TPanel;
    VSG: TStringGrid;
    ActionToolBar4: TActionToolBar;
    AForceNaz: TAction;
    AExcudedNaz: TAction;
    A1Way: TAction;
    A2Way: TAction;
    A3Way: TAction;
    A4Way: TAction;
    A5Way: TAction;
    A6Way: TAction;
    A7Way: TAction;
    A8Way: TAction;
    A9Way: TAction;
    A10Way: TAction;
    A11Way: TAction;
    procedure AMultThrdExecute(Sender: TObject);
    procedure A2WayExecute(Sender: TObject);
    procedure AExcudedNazUpdate(Sender: TObject);
    procedure AExcudedNazExecute(Sender: TObject);
    procedure AForceNazUpdate(Sender: TObject);
    procedure AForceNazExecute(Sender: TObject);
    procedure SESTChange(Sender: TObject);
    procedure ACloseExecute(Sender: TObject);
    procedure VSGSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ACalcPFPExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure VSGDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure ABTestExecute(Sender: TObject);
    procedure ASaveAsExecute(Sender: TObject);
    procedure ALoadExecute(Sender: TObject);
    procedure ANewExecute(Sender: TObject);
    procedure ATreeMarExecute(Sender: TObject);
    procedure ATreeMarUpdate(Sender: TObject);
    procedure AAddMarUpdate(Sender: TObject);
    procedure ARemMarUpdate(Sender: TObject);
    procedure AAddMarExecute(Sender: TObject);
    procedure ARemMarExecute(Sender: TObject);
    procedure AClearMarExecute(Sender: TObject);
    procedure AClearMarUpdate(Sender: TObject);
    procedure ASaveExecute(Sender: TObject);
    procedure ASaveUpdate(Sender: TObject);
    procedure AAboutExecute(Sender: TObject);
    procedure AExcelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PFPCBChange(Sender: TObject);
    procedure ASuperThrdExecute(Sender: TObject);
  private
    { Private declarations }
    FPFP: TAbsPFPSolve;
    FCalcBaseThread: TCalcBaseThread;
    FTestVarCount: Int64;
    FApprTime: TDateTime;
    FFileName1: String;
    procedure CalcPFP;
    procedure WritePFPShow;
    procedure DrawPFP;
    procedure SaveAsPFP;
    procedure SavePFP;
    procedure OpenPFP(FN: String);
    procedure PFPFinished;
    procedure ApproximateTime;
    procedure ThrdDone(Sender: TObject);
    procedure LoadGridFromStream(FS: TStream; G: TStringGrid);
    procedure LoadGridObjFromStream(FS: TStream; G: TStringGrid);
    procedure LoadLBFromStream(FS: TStream; LB: TListBox);
    procedure SaveGridToStream(FS: TStream; G: TStringGrid);
    procedure SaveGridObjToStream(FS: TStream; G: TStringGrid);
    procedure SaveLBToStream(FS: TStream; LB: TListBox);
    procedure SetFileName(const Value: String);
    procedure OnLastReleaseObj(var Shutdown: Boolean);
    procedure UpdateOldSaveAfterLoad;
    procedure CreateUserDir;

  public
    { Public declarations }
    AutoQuit: Boolean;
    procedure NewCalc;
    property CalcBaseThread: TCalcBaseThread read FCalcBaseThread;
    property FileName: String read FFileName1 write SetFileName;
  end;

var
  MainPFPForm: TMainPFPForm;

implementation
Uses ClipBrd, ShellApi, ShlObj, ShLwApi, ComServ, SHFolder, Registry, CPUTest, Math, PfpProgress, kcUtils, SelMarsh, AboutForm,
  ExcelExport;

{$R *.dfm}

procedure SaveReg;
Var
  R: TRegistry;
begin
try
  R:=TRegistry.Create;
  try

    R.RootKey:=HKEY_CLASSES_ROOT;
    R.Access:=KEY_CREATE_SUB_KEY or KEY_WRITE or KEY_READ;

// Here we register icon for our saved workfiles
    R.OpenKey('.abspfp', True);
    R.WriteString('', 'AbsPFPDoc');
    R.CloseKey;

    R.OpenKey('AbsPFPDoc', True);
    R.WriteString('', 'Расчет ПФП абсолютным методом');
    R.OpenKey('DefaultIcon', True);

    R.WriteString('',ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))+'\abspfp.exe,1');
    R.CloseKey;

    R.OpenKey('AbsPFPDoc', True);
    R.OpenKey('Shell', True);
    R.OpenKey('Открыть', True);
    R.OpenKey('Command', True);
    R.WriteString('', '"'+Application.ExeName+'" %1');
    R.CloseKey;

  finally
    R.Free;
  End;
except

end;
end;

function StrToMar(SM: String): TMar;
var
  S: String;
  I: Integer;
begin
  S:=''; SetLength(Result, 0);
  if SM<>'' then
  begin
    I:=1;
    while I<=length(SM) do
    begin
      if SM[I]='-' then
      begin
        SetLength(Result, High(Result)+2);
        Result[High(Result)]:=SysUtils.StrToInt(S)-1;
        S:=''
      end
      else
        S:=S+SM[I];
      Inc(I);
    end;
    SetLength(Result, High(Result)+2);
    Result[High(Result)]:=SysUtils.StrToInt(S)-1;
  end;
end;

procedure TMainPFPForm.SESTChange(Sender: TObject);
begin
  CTSG.ColCount:=SEST.Value+1;
  VSG.ColCount:=SEST.Value+1;
  VSG.RowCount:=SEST.Value+1;
  MarLB.Clear;
  ApproximateTime;
end;

procedure TMainPFPForm.ACloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TMainPFPForm.NewCalc;
var
  C,R: Integer;

begin

  FileName:='Новый расчет';
  PC.ActivePageIndex:=0;
  SEST.Value:=4;
  ATreeMar.Checked:=False;
  MarLB.Clear;
  For C:=1 To 15 Do
    CTSG.Cells[C, 1]:='1000';
  For C:=1 To 15 Do
    CTSG.Cells[C, 0]:=IntToStr(C);
  For C:=1 To 15 Do
    CTSG.Cells[C, 3]:='10000';
  For C:=1 To 15 Do
    CTSG.Cells[C, 4]:='100';
  For C:=1 To 15 Do
    VSG.Cells[C, 0]:=IntToStr(C);
  For C:=1 To 15 Do
    VSG.Cells[0, C]:=IntToStr(C);

  VSG.ColWidths[0]:=30;
  CTSG.ColWidths[0]:=34;
  CTSG.Cells[1, 2]:='6';
  CTSG.Cells[2, 2]:='4';
  CTSG.Cells[3, 2]:='3';
  CTSG.Cells[4, 2]:='5';
  CTSG.Cells[5, 2]:='4';
  CTSG.Cells[6, 2]:='5';
  CTSG.Cells[7, 2]:='6';
  CTSG.Cells[8, 2]:='7';
  For C:=1 To 12 Do
  CTSG.Cells[C,2]:='';

  VSG.Cells[2, 1]:='50';
  VSG.Cells[3, 1]:='150';
  VSG.Cells[4, 1]:='350';
  VSG.Cells[5, 1]:='150';
  VSG.Cells[6, 1]:='150';
  VSG.Cells[7, 1]:='150';
  VSG.Cells[3, 2]:='100';
  VSG.Cells[4, 2]:='250';
  VSG.Cells[5, 2]:='50';
  VSG.Cells[6, 2]:='50';
  VSG.Cells[7, 2]:='50';
  VSG.Cells[4, 3]:='40';
  VSG.Cells[5, 3]:='250';
  VSG.Cells[6, 3]:='250';
  VSG.Cells[7, 3]:='250';
  VSG.Cells[5, 4]:='100';
  VSG.Cells[6, 4]:='100';
  VSG.Cells[7, 4]:='100';
  VSG.Cells[6, 5]:='100';
  VSG.Cells[7, 5]:='100';
  VSG.Cells[7, 6]:='100';

  For C:=0 To 12 Do
  For R:=0 To 12 Do VSG.Cells[C,R]:='';

  CTSG.Cells[0, 1]:='cm';
  CTSG.Cells[0, 2]:='Tэк';
  CTSG.Cells[0, 3]:='Nпер';
  CTSG.Cells[0, 4]:='MaxN';
  CTSG.RowCount:=5;
  ApproximateTime;
  ResImg.Picture.Assign(nil);
  try
  VSG.Col:=3;
  except end;
  try
  VSG.Row:=1;
  except end;
  try
  VSG.Col:=3;
  except end;

end;

procedure TMainPFPForm.VSGSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  CanSelect:=ACol<>ARow;
end;

function PinM(M: TMar; StI: Cardinal): Integer;
var
  I: Integer;
begin
  Result:=-1;
  For I:=0 To High(M) do
    if M[I]=StI Then
    begin Result:=I; Exit; End;
end;

procedure TMainPFPForm.DrawPFP;
var
  B: TMetaFileCanvas;
  Mf: TMetafile;
  I, M, MfW: Integer;
  PFPC: Integer;
  MT, MH, OffsY, WD, WDM: Integer;
  S: String;
  CmS, VHPS: Double;
begin
  MT:=40;
  MH:=18;
  Mf:=TMetafile.Create;
  WD:=0;
  For I:=0 To FPFP.MarCount-1 Do
    WD:=WD+(High(FPFP.Mars[I])+1)*MT+MT;
  PFPC:=FPFP.TrPFPCount;
  Mf.Width:=WD+71;
  MfW:=WD+71;
  Mf.Height:=PFPC*MH+70;
  B:=TMetafileCanvas.Create(Mf, Canvas.Handle);
  B.Brush.Style:=bsClear;
  B.Font.Name:='Arial';


  OffsY:=5;
  S:='Общие затраты: '+FormatFloat('0.#', FPFP.PlanValue);
 B.TextOut(MfW div 2-B.TextWidth(S)div 2, OffsY, S);

  WDM:=0;
  For M:=0 To FPFP.MarCount-1 Do
  begin
    OffsY:=20;
    For I:=0 To High(FPFP.Mars[M]) Do
    begin
     B.TextOut(WDM+50+I*MT-B.TextWidth(IntToStr(I+1))div 2, OffsY, IntToStr(FPFP.Mars[M][I]+1));
    end;

    B.Pen.Width:=3;
    B.MoveTo(WDM+50+0, OffsY+15);
    B.LineTo(WDM+50+(High(FPFP.Mars[M]))*MT, OffsY+15);

    OffsY:=55;
    B.Pen.Width:=1;
    For I:=0 To High(FPFP.Mars[M]) Do
    begin
     B.MoveTo(WDM+50+I*MT, OffsY-10);
      B.LineTo(WDM+50+I*MT, OffsY+MH*PFPC);
    end;

   B.Pen.Width:=2;
    CmS:=0; VHPS:=0;
    For I:=0 To PFPC-1 Do
    begin
      If Integer(FPFP.TrBestOnly[I].MarInd)=M Then
      begin
        CmS:=CmS+FPFP.TrValues[I].CM;
        B.TextOut(WDM+20, OffsY+I*MH-10, FormatFloat('0.#', FPFP.TrValues[I].CM));
        VHPS:=VHPS+FPFP.TrValues[I].VHPer;
        B.TextOut(WDM+46+High(FPFP.Mars[M])*MT+10, OffsY+I*MH-10, FormatFloat('0.#', FPFP.TrValues[I].VHPer));

        B.TextOut(WDM+50+
          PinM(FPFP.Mars[M], FPFP.TrBestOnly[I].StOt)*MT+
          (MT)div 2-
          B.TextWidth(FormatFloat('0.#', FPFP.TrBestOnly[I].VanCount))div 2,
          OffsY+I*MH-15,
          FormatFloat('0.#', FPFP.TrBestOnly[I].VanCount));



        B.MoveTo(WDM+50+PinM(FPFP.Mars[M], FPFP.TrBestOnly[I].StOt)*MT, OffsY+I*MH);
        B.LineTo(WDM+50+PinM(FPFP.Mars[M], FPFP.TrBestOnly[I].StNz)*MT, OffsY+I*MH);
        B.MoveTo(WDM+50+PinM(FPFP.Mars[M], FPFP.TrBestOnly[I].StNz)*MT-12, OffsY+I*MH-3);
        B.LineTo(WDM+50+PinM(FPFP.Mars[M], FPFP.TrBestOnly[I].StNz)*MT, OffsY+I*MH);
        B.MoveTo(WDM+50+PinM(FPFP.Mars[M], FPFP.TrBestOnly[I].StNz)*MT-12, OffsY+I*MH+3);
        B.LineTo(WDM+50+PinM(FPFP.Mars[M], FPFP.TrBestOnly[I].StNz)*MT, OffsY+I*MH);
      end;
    end;
    I:=PFPC;
    B.Font.Style:= [fsBold];
    B.TextOut(WDM+46+High(FPFP.Mars[M])*MT+10, OffsY+I*MH, FormatFloat('0.#', VHPS));
    B.TextOut(WDM+20, OffsY+I*MH, FormatFloat('0.#', CmS));
    B.Font.Style:= [];

    WDM:=WDM+(High(FPFP.Mars[M])+1)*MT+MT;
  end;

  B.Free;
  ResImg.Picture.Metafile:=Mf;

end;

procedure TMainPFPForm.CalcPFP;
var
  PFP: TAbsPFPSolve; VS: TVanStream;
  C, R, I: Integer;
begin
  sgShw.RowCount:=1;
  sgShw.ColCount:=1;
  ResImg.Picture.Assign(nil);

  PFP:=TAbsPFPSolve.Create;
  FPFP:=PFP;
  PFP.StCount:=SEST.Value;
  PFP.PFPSaveCount:=SEBC.Value;
  For C:=1 To SEST.Value Do
    PFP.StCm[C-1]:=SysUtils.StrToInt(CTSG.Cells[C, 1]);
  For C:=1 To SEST.Value Do
    PFP.StTek[C-1]:=StrToFloat(CTSG.Cells[C, 2]);
  For C:=1 To SEST.Value Do
    PFP.StPer[C-1]:=SysUtils.StrToInt(CTSG.Cells[C, 3]);
  For C:=1 To SEST.Value Do
    PFP.StN[C-1]:=SysUtils.StrToInt(CTSG.Cells[C, 4]);

  If ATreeMar.Checked Then
  begin
    For I:=0 To MarLB.Items.Count-1 Do
      PFP.AddMar(StrToMar(MarLB.Items[I]));
  end;

  for R:=1 To SEST.Value Do
    For C:=1 To SEST.Value Do
      If C<>R Then
      begin

        If Trim(VSG.Cells[C, R])='' Then
        if VSG.Objects[C, R]=nil then Continue;
        If Trim(VSG.Cells[C, R])='' Then
        VS.VanCount:=0 Else
        VS.VanCount:=SysUtils.StrToInt(VSG.Cells[C, R]);

        VS.StOt:=R-1;
        VS.StNz:=C-1;
        VS.NazType:=Integer(VSG.Objects[C, R]);

        PFP.AddVS(VS);
      end;

  if A1Way.Checked then
    PFP.MultiGrade:=0;
  if A2Way.Checked then
    PFP.MultiGrade:=1;
  if A3Way.Checked then
    PFP.MultiGrade:=2;
  if A4Way.Checked then
    PFP.MultiGrade:=3;
  if A5Way.Checked then
    PFP.MultiGrade:=4;
  if A6Way.Checked then
    PFP.MultiGrade:=5;
  if A7Way.Checked then
    PFP.MultiGrade:=6;
  if A8Way.Checked then
    PFP.MultiGrade:=7;
  if A9Way.Checked then
    PFP.MultiGrade:=8;
  if A10Way.Checked then
    PFP.MultiGrade:=9;
  if A11Way.Checked then
    PFP.MultiGrade:=10;

  FCalcBaseThread:=TCalcBaseThread.Create(True);
  I:=31;
  With FCalcBaseThread Do
  begin
    Priority:=tpLower;
    FreeOnTerminate:=True;
    BasePFP:=PFP;
    OnTerminate:=ThrdDone;
    If I=31 Then
      Resume;
  end;

  ThrdProgressForm.Series1.Clear;
  ThrdProgressForm.Timer1.Enabled:=True;
  ThrdProgressForm.ShowModal;
  ThrdProgressForm.Timer1.Enabled:=False;
end;

procedure TMainPFPForm.ACalcPFPExecute(Sender: TObject);
var
  S: String;
begin
  S:='Примерное окончание расчета: '+FormatDateTime('dd mmmm yyyy  hh:nn:ss', Now+FApprTime)+#10#13+
    'Продолжить?';
  If FApprTime>1/24/3 Then
    If MessageBox(Handle, PChar(S), 'Информация', MB_YESNO or MB_ICONQUESTION)=IDNO Then Exit;

  CalcPFP;
end;

procedure TMainPFPForm.N1Click(Sender: TObject);
var
  W: word;
  AD: THandle;
  AP: HPALETTE;
begin
  ResImg.Picture.SaveToClipBoardFormat(W, AD, AP);
  ClipBoard.SetAsHandle(W, AD);

end;

procedure TMainPFPForm.VSGDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  BC: TColor;
  R,G,B:Integer;
  C:Integer;
  BCC:TColor;
  S:String;
begin

  if VSG.Objects[ACol,ARow]<>nil then
    case Integer(VSG.Objects[ACol,ARow]) of
      vstForce:
        begin
          BC:=clWindow;
          BC:=ColorToRGB(BC);
          R:=BC and clRed;
          B:=(BC and clBlue ) shr 16;
          G:=(BC and clLime ) shr 8;
          C:=Trunc(G*1.1);
          if C>255 then G:=255 Else G:=C;
          C:=Trunc(R*0.8);
          if C>255 then R:=255 Else R:=C;
          C:=Trunc(B*0.8);
          if C>255 then B:=255 Else B:=C;

          BC:=RGB(R,G,B);
          BCC:=TStringGrid(Sender).Canvas.Pen.Color;
          TStringGrid(Sender).Canvas.Brush.Color:=BC;
          TStringGrid(Sender).Canvas.FillRect(Rect);
          S:=TStringGrid(Sender).Cells[ACol,ARow];
          TStringGrid(Sender).Canvas.TextRect(Rect,S,[]);
          TStringGrid(Sender).Canvas.Brush.Color:=BCC;
        end;
      vstExclude:
      begin
          BC:=clWindow;
          BC:=ColorToRGB(BC);
          R:=BC and clRed;
          B:=(BC and clBlue ) shr 16;
          G:=(BC and clLime ) shr 8;
          C:=Trunc(G*0.8);
          if C>255 then G:=255 Else G:=C;
          C:=Trunc(R*1.1);
          if C>255 then R:=255 Else R:=C;
          C:=Trunc(B*0.8);
          if C>255 then B:=255 Else B:=C;

          BC:=RGB(R,G,B);
          BCC:=TStringGrid(Sender).Canvas.Pen.Color;
          TStringGrid(Sender).Canvas.Brush.Color:=BC;
          TStringGrid(Sender).Canvas.FillRect(Rect);
          S:=TStringGrid(Sender).Cells[ACol,ARow];
          TStringGrid(Sender).Canvas.TextRect(Rect,S,[]);
          TStringGrid(Sender).Canvas.Brush.Color:=BCC;
      end;
    end;

  If ACol>0 Then
    If ARow=ACol Then
    begin
      TStringGrid(Sender).Canvas.MoveTo(Rect.Left, Rect.Top);
      TStringGrid(Sender).Canvas.LineTo(Rect.Right, Rect.Bottom);
      TStringGrid(Sender).Canvas.MoveTo(Rect.Right, Rect.Top);
      TStringGrid(Sender).Canvas.LineTo(Rect.Left, Rect.Bottom);
    end;
end;

procedure TMainPFPForm.CreateUserDir;
var hr:HRESULT;
    ppidl: PItemIDList;
    DocPath:Array[0..MAX_PATH+1] of Char;
begin
hr := SHGetSpecialFolderLocation(Handle,
                         CSIDL_PERSONAL,
                         ppidl);

FillChar(DocPath,MAX_PATH+2,0);
SHGetPathFromIDList(ppidl,@DocPath);
CreateDir(DocPath+'\Мои расчеты ПФП'); 
OD.FileName:=DocPath+'\Мои расчеты ПФП\Результат.abspfp';
SD.FileName:=DocPath+'\Мои расчеты ПФП\Результат.abspfp';
end;

procedure TMainPFPForm.FormShow(Sender: TObject);
var
  I: Integer;
  FN: String;
begin
  try
  CreateUserDir;
  except end;
  Caption:=Caption+' - '+GetFileVersion(Application.ExeName);

  if ProcCPURating=0 Then
    ProcTestForm.ShowModal;
  A1Way.Checked:=True;
  A2Way.Checked:=(ProcLogicalCount>1);
  A3Way.Checked:=(ProcLogicalCount>2);
  A4Way.Checked:=(ProcLogicalCount>4);
  A5Way.Checked:=(ProcLogicalCount>8);
  A6Way.Checked:=(ProcLogicalCount>16);
  A7Way.Checked:=(ProcLogicalCount>32);
  A8Way.Checked:=(ProcLogicalCount>64);
  A9Way.Checked:=(ProcLogicalCount>128);
  A10Way.Checked:=(ProcLogicalCount>256);
  A11Way.Checked:=(ProcLogicalCount>512);

  NewCalc;
  If ComServer.StartMode=smAutomation Then Exit;

  If ParamCount>0 Then
  begin
    FN:='';
    For I:=1 To ParamCount Do
      FN:=FN+ParamStr(I)+' ';

    If FN<>'' Then
      OpenPFP(Trim(FN));
  end;
end;

procedure TMainPFPForm.ABTestExecute(Sender: TObject);
begin
  ProcTestForm.ShowModal;
end;

procedure TMainPFPForm.ApproximateTime;
var
  I: Integer;
  T: TDateTime;
  Y, D, InD: TDateTime;
begin
  FTestVarCount:=1;
  For I:=2 To SEST.Value Do
    FTestVarCount:=Round(FTestVarCount*Power(2, I-2));
  T:=(FTestVarCount/2097152/ProcCPURating*4300*16)/60/60/24;
  FApprTime:=T;
  InD:=Frac(T);
  D:=T-InD;
  Y:=Trunc(D/365.25);
  D:=Round((D-Y*365.25));
  If Y<1 Then
  begin
    If D<1 Then
      Label2.Caption:=FormatDateTime('h:nn:ss', T)
    Else
      Label2.Caption:=IntToStr(Round(D))+' дн. и '+FormatDateTime('h:nn:ss', T);
  end
  Else
  begin
    Label2.Caption:=IntToStr(Round(Y))+' лет и '+IntToStr(Round(D))+' дн. и '+FormatDateTime('h:nn:ss', T);
  end;
  Label2.Caption:=Label2.Caption+' (максимальное число вариантов: '+IntToStr(FTestVarCount)+')';
end;

procedure TMainPFPForm.ASaveAsExecute(Sender: TObject);
begin
  SaveAsPFP;
end;

procedure TMainPFPForm.SaveGridObjToStream(FS: TStream; G: TStringGrid);
var
  N, I, J: Integer;
  vst:Integer;
begin
  N:=G.ColCount;
  FS.Write(N, SizeOf(N));
  N:=G.RowCount;
  FS.Write(N, SizeOf(N));
  For I:=0 To G.ColCount-1 Do
    For J:=0 To G.RowCount-1 Do
    begin
      vst:=Integer(G.Objects[I, J]);
      FS.Write(vst, SizeOf(vst));
    end;
end;

procedure TMainPFPForm.SaveGridToStream(FS: TStream; G: TStringGrid);
var
  N, I, J: Integer;
  S: String[10];
begin
  N:=G.ColCount;
  FS.Write(N, SizeOf(N));
  N:=G.RowCount;
  FS.Write(N, SizeOf(N));
  For I:=0 To G.ColCount-1 Do
    For J:=0 To G.RowCount-1 Do
    begin
      S:=G.Cells[I, J];
      FS.Write(S, SizeOf(S));
    end;
end;

procedure TMainPFPForm.LoadGridFromStream(FS: TStream; G: TStringGrid);
var
  N, I, J: Integer;
  S: String[10];
begin
  FS.Read(N, SizeOf(N));
  G.ColCount:=N;
  FS.Read(N, SizeOf(N));
  G.RowCount:=N;
  For I:=0 To G.ColCount-1 Do
    For J:=0 To G.RowCount-1 Do
    begin
      FS.Read(S, SizeOf(S));
      G.Cells[I, J]:=S;
      G.Objects[I, J]:=nil;
    end;
end;

procedure TMainPFPForm.LoadGridObjFromStream(FS: TStream; G: TStringGrid);
var
  N, I, J: Integer;
  vst:Integer;
begin
  FS.Read(N, SizeOf(N));
  G.ColCount:=N;
  FS.Read(N, SizeOf(N));
  G.RowCount:=N;
  For I:=0 To G.ColCount-1 Do
    For J:=0 To G.RowCount-1 Do
    begin
      FS.Read(vst, SizeOf(vst));
      G.Objects[I, J]:=TObject(vst);
    end;
end;

procedure TMainPFPForm.ALoadExecute(Sender: TObject);
begin
  If not OD.Execute Then Exit;
  OpenPFP(OD.FileName);
end;

procedure TMainPFPForm.AMultThrdExecute(Sender: TObject);
begin
//
end;

procedure TMainPFPForm.PFPFinished;
begin
  DrawPFP;
  WritePFPShow;
  SB.Panels[1].Text:=IntToStr(FPFP.MPC);
  SB.Panels[3].Text:=FormatDateTime('h:nn:ss', FPFP.ElapsedTime);
  SB.Panels[5].Text:=FormatFloat('0.#', FPFP.PlanValue);
  SB.Panels[7].Text:=IntToStr(FPFP.TrPFPCount);
end;

procedure TMainPFPForm.ThrdDone(Sender: TObject);
var I:Integer;
begin
  FCalcBaseThread:=nil;
  ThrdProgressForm.ModalResult:=mrOk;
  PFPCB.Clear;
  For I:=FPFP.PFPSaveCount-1 Downto 0 Do
    begin
      PFPCB.Items.Add(FormatFloat('0.#',FPFP.PlanValues[I]));
    end;
  tsRes.Show;
  try
  PFPCB.ItemIndex:=0;
  PFPCB.OnChange(PFPCB);
  except
  end;
end;

procedure TMainPFPForm.ANewExecute(Sender: TObject);
begin
  NewCalc;
end;

procedure TMainPFPForm.ATreeMarExecute(Sender: TObject);
begin
  ATreeMar.Checked:=not ATreeMar.Checked;
end;

procedure TMainPFPForm.ATreeMarUpdate(Sender: TObject);
begin
  MarLB.Enabled:=ATreeMar.Checked;
end;

procedure TMainPFPForm.AAddMarUpdate(Sender: TObject);
begin
  AAddMar.Enabled:=ATreeMar.Checked;
end;

procedure TMainPFPForm.ARemMarUpdate(Sender: TObject);
begin
  ARemMar.Enabled:=(ATreeMar.Checked)and(MarLB.ItemIndex>=0);
end;

procedure TMainPFPForm.AAddMarExecute(Sender: TObject);
Label
  A1;
var
  Mar: string;
begin
  Mar:='';
  A1:
  if SelMarshForm.SelectMarsh(SEST.Value, Mar) then
  begin
    If MarLB.Items.IndexOf(Mar)<0 Then
      MarLB.Items.Add(Mar)
    Else
    begin
      MessageBox(Handle, PChar('Маршрут '+Mar+' уже есть в  списке!'), 'Внимание', MB_OK or MB_ICONWARNING);
      goto A1;
    end;
  end;
end;

procedure TMainPFPForm.ARemMarExecute(Sender: TObject);
begin
  MarLB.Items.Delete(MarLB.ItemIndex);
end;

procedure TMainPFPForm.AClearMarExecute(Sender: TObject);
begin
  MarLB.Clear;
end;

procedure TMainPFPForm.AClearMarUpdate(Sender: TObject);
begin
  AClearMar.Enabled:=(ATreeMar.Checked)and(MarLB.Items.Count>0);
end;

procedure TMainPFPForm.SaveLBToStream(FS: TStream; LB: TListBox);
var
  N, I: Integer;
  S: String[100];
begin
  N:=LB.Items.Count;
  FS.Write(N, SizeOf(N));
  For I:=0 To N-1 Do
  begin
    S:=LB.Items[I];
    FS.Write(S, SizeOf(S));
  end;
end;

procedure TMainPFPForm.LoadLBFromStream(FS: TStream; LB: TListBox);
var
  N, I: Integer;
  S: String[100];
begin
  FS.Read(N, SizeOf(N));
  For I:=0 To N-1 Do
  begin
    FS.Read(S, SizeOf(S));
    LB.Items.Add(S);
  end;
end;

procedure TMainPFPForm.OpenPFP(FN: String);
var
  FS: TFileStream;
  CIR: TCalcInfoRec;
begin
  NewCalc;
  FS:=TFileStream.Create(FN, fmOpenRead);
  try
    ReadObjStructFromStream(FS, CIR, SizeOf(CIR));
    SEST.Value:=CIR.ciStCount;
    ATreeMar.Checked:=CIR.ciMarUsed;
    LoadGridFromStream(FS, CTSG);
    LoadGridFromStream(FS, VSG);
    MarLB.Clear;
    LoadLBFromStream(FS, MarLB);
    //since version 75
    if CIR.ciBuild>=75 then LoadGridObjFromStream(FS, VSG);
  finally
    FS.Free;
  end;
  FileName:=FN;
  UpdateOldSaveAfterLoad;
  CTSG.RowCount:=5;
end;

procedure TMainPFPForm.SavePFP;
var
  FS: TFileStream;
  CIR: TCalcInfoRec;
begin
  If (FileName='Новый расчет')or(FileName='') Then
    SaveAsPFP
  Else
  begin
    FS:=TFileStream.Create(FileName, fmCreate);
    try
      CIR.ciStCount:=SEST.Value;
      CIR.ciSaveTime:=Now;
      CIR.ciMarCount:=MarLB.Items.Count;
      CIR.ciBuild:=GetFileBuild(Application.ExeName);
      CIR.ciMarUsed:=ATreeMar.Checked;
      WriteObjStructToStream(FS, CIR, SizeOf(CIR));
      SaveGridToStream(FS, CTSG);
      SaveGridToStream(FS, VSG);
      SaveLBToStream(FS, MarLB);
      //since version 75
      SaveGridObjToStream(FS, VSG);

    finally
      FS.Free;
    end;
  end;
end;

procedure TMainPFPForm.SaveAsPFP;
begin
  If not SD.Execute Then Exit;
  FileName:=SD.FileName;
  SavePFP;
end;

procedure TMainPFPForm.ASaveExecute(Sender: TObject);
begin
  SavePFP;
end;

procedure TMainPFPForm.ASaveUpdate(Sender: TObject);
begin
  ASave.Enabled:=FileName<>'Новый расчет';
end;

procedure TMainPFPForm.A2WayExecute(Sender: TObject);
begin
  If TAction(Sender).Checked Then
  if not A1Way.Checked then
    If not(ProcLogicalCount>1) Then
      MessageBox(Handle, 'Выигрыш в производительности от параллельных вычислений на этой системе сомнителен.'+
      Chr(13) + Chr(10)+'Паралелльные вычисления включены', 'Инфо', MB_ICONINFORMATION or MB_OK);
end;

procedure TMainPFPForm.AAboutExecute(Sender: TObject);
begin
  With TAboutBox.Create(Self) Do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMainPFPForm.WritePFPShow;
var
  I: Integer;
  VTr: Integer;
  VPer, VHTr, VHPer: Single;
begin
  sgShw.RowCount:=6;
  sgShw.ColCount:=FPFP.StCount+2;
  sgShw.ColWidths[0]:=190;
  sgShw.Cells[0, 0]:='Показатели плана формирования поездов по станциям';
  sgShw.Cells[0, 1]:='Число формируемых назначений';
  sgShw.Cells[0, 2]:='Число перерабатываемых вагонов';
  sgShw.Cells[0, 3]:='Вагоно-часы накопления';
  sgShw.Cells[0, 4]:='Вагоно-часы переработки';
  sgShw.Cells[0, 5]:='Общая затрата вагоно-часов';
  VTr:=0; VPer:=0; VHTr:=0; VHPer:=0;
  For I:=1 To FPFP.StCount Do
  begin
    sgShw.Cells[I, 0]:=IntToStr(I);

    VTr:=VTr+FPFP.StValues[I-1].TrActCount;
    sgShw.Cells[I, 1]:=IntToStr(FPFP.StValues[I-1].TrActCount);
    VPer:=VPer+FPFP.StValues[I-1].VanPer;
    sgShw.Cells[I, 2]:=FormatFloat('0.#', FPFP.StValues[I-1].VanPer);
    VHTr:=VHTr+FPFP.StValues[I-1].VHTr;
    sgShw.Cells[I, 3]:=FormatFloat('0.#', FPFP.StValues[I-1].VHTr);
    VHPer:=VHPer+FPFP.StValues[I-1].VHPer;
    sgShw.Cells[I, 4]:=FormatFloat('0.#', FPFP.StValues[I-1].VHPer);
    sgShw.Cells[I, 5]:=FormatFloat('0.#', FPFP.StValues[I-1].VHPer+FPFP.StValues[I-1].VHTr);
  end;
  sgShw.Cells[FPFP.StCount+1, 0]:='Всего';
  sgShw.Cells[FPFP.StCount+1, 1]:=IntToStr(VTr);
  sgShw.Cells[FPFP.StCount+1, 2]:=FormatFloat('0.#', VPer);
  sgShw.Cells[FPFP.StCount+1, 3]:=FormatFloat('0.#', VHTr);
  sgShw.Cells[FPFP.StCount+1, 4]:=FormatFloat('0.#', VHPer);
  sgShw.Cells[FPFP.StCount+1, 5]:=FormatFloat('0.#', VHPer+VHTr);

end;

procedure TMainPFPForm.AExcelExecute(Sender: TObject);
begin
  SendsToExcel([sgShw], ['Результат расчета '+FileName]);
end;

procedure TMainPFPForm.AExcudedNazExecute(Sender: TObject);
begin
if Integer(VSG.Objects[VSG.Col,VSG.Row])=vstExclude then
VSG.Objects[VSG.Col,VSG.Row]:=nil Else
  VSG.Objects[VSG.Col,VSG.Row]:=TObject(vstExclude);
end;

procedure TMainPFPForm.AExcudedNazUpdate(Sender: TObject);
begin
 AExcudedNaz.Checked:= Integer(VSG.Objects[VSG.Col,VSG.Row])=vstExclude;
end;

procedure TMainPFPForm.AForceNazExecute(Sender: TObject);
begin
if Integer(VSG.Objects[VSG.Col,VSG.Row])=vstForce then
VSG.Objects[VSG.Col,VSG.Row]:=nil Else
  VSG.Objects[VSG.Col,VSG.Row]:=TObject(vstForce);

end;

procedure TMainPFPForm.AForceNazUpdate(Sender: TObject);
begin
  AForceNaz.Checked:= Integer(VSG.Objects[VSG.Col,VSG.Row])=vstForce ;

end;

procedure TMainPFPForm.SetFileName(const Value: String);
begin
  FFileName1:=Value;
  SBN.SimpleText:=FFileName1;
end;

procedure TMainPFPForm.OnLastReleaseObj(var Shutdown: Boolean);
begin
  ShutDown:=AutoQuit;
end;

procedure TMainPFPForm.FormCreate(Sender: TObject);
begin
  ComServer.OnLastRelease:=OnLastReleaseObj;
end;

procedure TMainPFPForm.PFPCBChange(Sender: TObject);
begin
  If PFPCB.ItemIndex>-1 Then
  begin
    FPFP.SelectedPFPIndex:=PFPCB.ItemIndex;
    PFPFinished;
  end;
end;

procedure TMainPFPForm.ASuperThrdExecute(Sender: TObject);
begin
  ASuperThrd.Checked:=not ASuperThrd.Checked;
end;

procedure TMainPFPForm.UpdateOldSaveAfterLoad;
var C:Integer;
begin
  If CTSG.RowCount=3 Then
  begin
  CTSG.RowCount:=5;
  For C:=1 To 15 Do
    CTSG.Cells[C, 3]:='10000';
  For C:=1 To 15 Do
    CTSG.Cells[C, 4]:='100';
  end;
end;

initialization
  SaveReg;

end.

