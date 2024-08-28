unit AbsPFPSolve;

interface
Uses Windows, SysUtils, Classes;

Const
  vstForce = 1;
  vstExclude = 2;

type

  TCalcInfoRec=packed record
    ciStCount: Cardinal;
    ciSaveTime: TDateTime;
    ciMarCount: Cardinal;
    ciBuild: Cardinal;
    ciMarUsed: Boolean;
  end;

  TCalcThread=class;

  TVanCount=type Integer;
  TMar=array of Cardinal;
  TPers=array of Byte;

  TTrValues=record
    CM: Single;
    VanPer: Single;
    VHPer: Single;
  end;

  TStValues=record
    TrActCount: Integer;
    VanPer: Single;
    VHTr: Single;
    VHPer: Single;
  end;

  PVanStream=^TVanStream;
  TPVanArray=array of PVanStream;

  PTrStream=^TTrStream;
  TTrStream=record
    StNz: Cardinal;
    VanCount: TVanCount;
    Active: Boolean;
    Cm: Double;
    StOt: Cardinal;
    ML: Cardinal;
    MarInd: Cardinal;
    Vans: TPVanArray;
  end;

  TTrArray=array of TTrStream;
  TPTrArray=array of PTrStream;

  TVanStream=record
    TrsStOt: TPTrArray;
    StOt: Cardinal;
    StNz: Cardinal;
    VanCount: TVanCount;
    NazType:Integer;
  end;

  PStParams=^TStParams;
  TStParams=record
    Tek: Double; //экономия
    Trs: TPTrArray; //возможные назначения
    StTrsTo: TMar; //список станций возможных назначений
    Cm: Cardinal; //Cm
    StTrsDs: TMar;
    StInd: Cardinal; //номер станции
    MaxPer: Integer; //максимально доп переработка
    CurrPer: Integer; //текущая по ходу расчета переработка
    MaxN: Integer; //максимальное кол-во назначений по ст
    CurrN: Integer; //текущее кол-во назначений по ст
  end;

  TStArray=array of TStParams;

  TMakePlanProc=procedure of object;

  TPFPRec=record
    St: TStArray;
    Tr: TTrArray;
    PlanValue: Double;
  end;

  TPFPArray=array of TPFPRec;

  TAbsPFPSolve=class(TObject)
  private
    FSt: TStArray; // Станции по ходу расчета
    FTr: TTrArray; // ПФП по ходу расчета
    FVS: array of TVanStream; //Исходные вагонопотоки
    FMars: array of TMar; //Маршруты
    MakePlanProc: TMakePlanProc;
    FMinTrI: Integer;

    FPlanValue: Double;

    CmA: array of Cardinal;
    TekA: array of Double;
    MaxN: array of Integer; //максимальное кол-во назначений по станции
    MaxPer: array of Integer; //максимальное кол-во переработки по станции

    FTrBest: TTrArray; //полный массив назначений, с указаными назначениями оптимального ПФП
    FTrBestOnly: TTrArray; //Только назначения, вошедшие в ПФП

    FMarList: TStringList;
    FMarsUsing: Boolean;
    FStMarCommon: TMar;
    FTerminated: Boolean;

    FPFPArray: TPFPArray; //Варианты ПФП: оптимальный и его приближения
    FMaxPlanValue: Double; //Максимальная стоимость ПФП в массиве
    FPFPSaveCount: Integer; //Количество вариантов для сохранения и сколько сохранилось
    FSelectedPFPIndex: Integer; //Текущий включенный вариант
    FMultThrd: Boolean;

    function MergePFP(const PFPS: array of TPFPArray): TPFPArray;
    function TVFrom(V: PVanStream; St: PStParams): Double;
    function TVFromCount(V: PVanStream; St: PStParams; var TM: TPTrArray; TPos: Integer): Double;
    function VSBetweenExists(StOt, StNz: Cardinal): Boolean;
    function VSBetweenNazType(StOt, StNz: Cardinal): Integer;

    procedure MakePlan;
    procedure MakePlanCount;
    procedure NextCalcT(T: Integer);
    procedure NextThrd(T,MaxT: Integer);

    procedure InitStTr;
    procedure SetSelectedPFPIndex(Ind: Integer);
    procedure SetStCm(I: Integer; const Value: Cardinal);
    procedure SetStTek(I: Integer; const Value: Double);
    procedure SetStN(I: Integer; const Value: Integer);
    procedure SetStPer(I: Integer; const Value: Integer);
    procedure SaveBestTr;
    procedure SortPFPArray;
    function GetTrPFPCount: Int64;
    function GetMars(AIndex: Integer): TMar;
    function GetMarCount: Integer;
    function GetPlanValues(I: Integer): Double;
    function GetTrValue(I: Integer): TTrValues;
    function GetStValues(I: Integer): TStValues;
  public
    MPC: Int64;
    MPCF: Int64;
    StCount: Integer;
    VarCount: Int64;
    ElapsedTime: TDateTime;
    ThrdList:TList;
    MultiGrade:Integer;
    constructor Create;
    destructor Destroy; override;
    function Clone: TAbsPFPSolve;
    procedure AddMar(Mar: TMar);
    procedure AddVS(VS: TVanStream);
    procedure Calc;
    procedure Terminate;
    property PFPSaveCount: Integer read FPFPSaveCount write FPFPSaveCount;
    property PlanValue: Double read FPlanValue;
    property PlanValues[I: Integer]: Double read GetPlanValues;
    property SelectedPFPIndex: Integer read FSelectedPFPIndex write SetSelectedPFPIndex;
    property StCm[I: Integer]: Cardinal write SetStCm;
    property StTek[I: Integer]: Double write SetStTek;
    property StN[I: Integer]: Integer write SetStN;
    property StPer[I: Integer]: Integer write SetStPer;
    property StValues[I: Integer]: TStValues read GetStValues;
    property TrBestOnly: TTrArray read FTrBestOnly;
    property TrPFPCount: Int64 read GetTrPFPCount;
    property MarCount: Integer read GetMarCount;
    property Mars[AIndex: Integer]: TMar read GetMars;
    property TrValues[I: Integer]: TTrValues read GetTrValue;
  end;

  TCalcThread=class(TThread)
  public
    StartI: Integer;
    PFP: TAbsPFPSolve;
    procedure Execute; override;
    destructor Destroy; override;
  end;

  TCalcBaseThread=class(TThread)
  public
    BasePFP: TAbsPFPSolve;
    procedure Execute; override;
  end;

procedure ReadObjStructFromStream(AStream: TStream; var AStruct; StrucSize: Integer); //читает из потока в структуру
procedure WriteObjStructToStream(AStream: TStream; var AStruct; StrucSize: Integer); //читает из потока в структуру

implementation
uses Math;

const
  MAXPFPVALUE:Double = 10E100;

{$DEFINE ASMALGN}

//{$DEFINE SAVETREE}

{$IFDEF SAVETREE}
var
  hTF: TextFile;
  hTFC: Boolean=False;

procedure SaveVarTxt(var Tr: TTrArray; PV: Double);
var
  I: Integer;
  S: String;
  A: Array[Boolean] of String;
begin
  AssignFile(hTF, 'var.txt');
  If hTFC Then
  begin
    Reset(hTF);
    Append(hTF);
  end
  else
    Rewrite(hTF);
  hTFC:=True;
  S:='';
  A[True]:='1'; A[False]:='0';
  For I:=0 To High(Tr) Do
    S:=S+A[Tr[I].Active]+' ';
  S:=S+' '+IntToStr(Round(PV));
  WriteLn(hTF, S);
  CloseFile(hTF);
end;
{$ENDIF}

procedure ReadObjStructFromStream(AStream: TStream; var AStruct; StrucSize: Integer); //читает из потока в структуру
Var
  N: Integer;
  MS: TMemoryStream;
  P: Pointer;
begin
  MS:=TMemoryStream.Create;
  try
    AStream.Read(N, SizeOf(N)); //size of this object
    MS.CopyFrom(AStream, N); //copying contents
    MS.Position:=0;
    MS.Read(N, SizeOf(N)); //size of structure
    P:=@AStruct;
    If N>StrucSize Then
    begin N:=StrucSize;
    End;
    MS.Read(P^, N); //MS.Position:=MS.Position+SOffs;
  finally
    MS.Free;
  end;
end;

procedure WriteObjStructToStream(AStream: TStream; var AStruct; StrucSize: Integer); //читает из потока в структуру
Var
  N: Integer;
  MS: TMemoryStream;
begin
  MS:=TMemoryStream.Create;
  try
    N:=StrucSize; // save size of structure for version control
    MS.Write(N, SizeOf(N));

    MS.Write(AStruct, N); // structure itself

    N:=MS.Position;
    AStream.Write(N, SizeOf(N)); //write size of this calc
    MS.SaveToStream(AStream); //save all content of this object
  finally
    MS.Free;
  end;
end;

{ TAbsPFPSolve }

procedure TAbsPFPSolve.AddMar(Mar: TMar);
begin
  SetLength(FMars, High(FMars)+1+1);
  FMars[High(FMars)]:=Mar;
end;

procedure TAbsPFPSolve.AddVS(VS: TVanStream);
begin
  SetLength(FVS, High(FVS)+2);
  FVS[High(FVS)]:=VS;
 
end;

procedure TAbsPFPSolve.Calc;
var
  I: Integer;

  PFPSS:array of TPFPArray;
begin
  ElapsedTime:=Now;

  If not FMultThrd Then
  begin
    InitStTr;
    NextCalcT(FMinTrI);
  end
  Else
  begin
    InitStTr;
    if FMinTrI+MultiGrade>High(FTr)+1 then
      MultiGrade:=High(FTr)-FMinTrI+1;
    NextThrd(FMinTrI,FMinTrI+MultiGrade);
    for I := 0 to ThrdList.Count - 1 do
      TCalcThread(ThrdList[I]).Resume;

    for I := 0 to ThrdList.Count - 1 do
      TCalcThread(ThrdList[I]).WaitFor;

    SetLength(PFPSS,ThrdList.Count);
    for I := 0 to ThrdList.Count - 1 do
       PFPSS[I]:=TCalcThread(ThrdList[I]).PFP.FPFPArray;

    FPFPArray:=MergePFP(PFPSS);
    MPC:=0;
    for I := 0 to ThrdList.Count - 1 do
       MPC:=MPC+TCalcThread(ThrdList[I]).PFP.MPC;

    FMars:=TCalcThread(ThrdList[0]).PFP.FMars;

    for I := 0 to ThrdList.Count - 1 do
      TCalcThread(ThrdList[I]).Free;
  end;

  FPFPSaveCount:=High(FPFPArray)+1;
  SortPFPArray;
  SelectedPFPIndex:=0;
  ElapsedTime:=Now-ElapsedTime;
end;


function TAbsPFPSolve.Clone: TAbsPFPSolve;
begin
  Result:=TAbsPFPSolve.Create;
  Result.FMultThrd:=False;
  Result.CmA:=CmA;
  Result.TekA:=TekA;
  Result.StCount:=StCount;
  Result.FPFPSaveCount:=FPFPSaveCount;
  Result.FVS:=FVS;
  SetLength(Result.FVS, High(Result.FVS)+1);
  Result.FMars:=FMars;
   Result.MaxN:=MaxN;
  Result.MaxPer:=MaxPer;
  Result.InitStTr;
end;

constructor TAbsPFPSolve.Create;
begin
  inherited;
  FMultThrd:=True;
  FPlanValue:=MAXPFPVALUE;
  FPlanValue:=FPlanValue*1000*100000;
  MakePlanProc:=MakePlan;
  FMarList:=TStringList.Create;
  FPFPSaveCount:=5;
  ThrdList:=TList.Create;
  MultiGrade:=0;
end;

destructor TAbsPFPSolve.Destroy;
begin
  FMarList.Free;
  ThrdList.Free;
  inherited;
end;

function TAbsPFPSolve.GetMarCount: Integer;
begin
  Result:=High(FMars)+1;
end;

function TAbsPFPSolve.GetMars(AIndex: Integer): TMar;
begin
  Result:=FMars[AIndex];
end;

function TAbsPFPSolve.GetPlanValues(I: Integer): Double;
begin
  Result:=FPFPArray[I].PlanValue;
end;

function TAbsPFPSolve.GetTrPFPCount: Int64;
var
  I: Int64;
begin
  Result:=0;
  I:=0;
  While I<=High(FTrBest) Do
  begin
    If FTrBest[I].Active Then Inc(Result);
    Inc(I);
  end;
end;

function IsInMar(var Mar: TMar; St: Cardinal): Boolean;
var
  I: Integer;
begin
  Result:=True;
  For I:=0 To High(Mar) Do
    If Mar[I]=St Then Exit;
  Result:=False;
end;

function IsInMars(var Mars: array of TMar; St: Cardinal): Boolean;
var
  I, J: Integer;
begin
  Result:=True;
  For I:=0 To High(Mars) Do
    For J:=0 To High(Mars[I]) Do
      If Mars[I, J]=St Then Exit;
  Result:=False;
end;

procedure BuildTrsChainFromMars(var Mars: array of TMar; St: Cardinal; out StTrsTo, StTrsDs: TMar);
var
  MI, FSI, I: Integer;
  Mar: TMar;
  L, LD: TList;
begin
  L:=TList.Create;
  LD:=TList.Create;
  try
    For MI:=0 To High(Mars) Do
    begin
      Mar:=Mars[MI];
      FSI:=-1;
      For I:=0 To High(Mar) Do
        If St=Mar[I] Then
        begin
          FSI:=I; Break;
        end;
      If FSI<0 Then Continue;
      For I:=FSI+1 To High(Mar) Do
      begin
        If L.IndexOf(Pointer(Mar[I]))<0 Then
        begin
          L.Add(Pointer(Mar[I]));
          LD.Add(Pointer(I-FSI));
        end;
      end;
    end;

    SetLength(StTrsTo, L.Count);
    For I:=0 To L.Count-1 Do
      StTrsTo[I]:=Cardinal(L[I]);
    SetLength(StTrsDs, LD.Count);
    For I:=0 To LD.Count-1 Do
      StTrsDs[I]:=Cardinal(LD[I]);

  finally
    L.Free;
    LD.Free;
  end;
end;

function MarInd(var Mars: array of TMar; StOt, StNz: Cardinal): Cardinal;
Label
  A1, A2;
var
  I, J: Integer;
begin
  Result:=$FFFFFFFF;
  For I:=0 To High(Mars) Do
  begin
    Result:=I;
    For J:=0 To High(Mars[I]) Do
      If StOt=Mars[I, J] Then goto A1;

    Continue;
    A1:
    For J:=0 To High(Mars[I]) Do
      If StNz=Mars[I, J] Then goto A2;
    Continue;
    A2:
    Exit;
  end;
end;

function TAbsPFPSolve.GetStValues(I: Integer): TStValues;
var
  J, N, TAC: Integer;
  VHPer, VHTr, VPer: Single;
begin
  TAC:=0;
  VHTr:=0; VHPer:=0; VPer:=0;
  For J:=0 To High(FSt[I].Trs) Do
    If FSt[I].Trs[J]^.Active Then
    begin
      Inc(TAC);
      VHTr:=VHTr+FSt[I].Cm;
    end;

  For J:=0 To High(FTr) Do
    If FTr[J].Active Then
      If FTr[J].StNz=FSt[I].StInd Then
      begin
        For N:=0 To High(FTr[J].Vans) Do
          If FTr[J].Vans[N]^.StNz<>FTr[J].StNz Then
          begin
            VPer:=VPer+FTr[J].Vans[N]^.VanCount;
            VHPer:=VHPer+FSt[FTr[J].StNz].Tek*FTr[J].Vans[N]^.VanCount;
          end;
      end;

  Result.TrActCount:=TAC;
  Result.VanPer:=VPer;
  Result.VHPer:=VHPer;
  Result.VHTr:=VHTr;
end;

function TAbsPFPSolve.GetTrValue(I: Integer): TTrValues;
var
  J: Integer;
begin
  Result.CM:=FTr[I].Cm;
  Result.VanPer:=0;
  Result.VHPer:=0;
  For J:=0 To High(FTr[I].Vans) Do
    If FTr[I].Vans[J]^.StNz<>FTr[I].StNz Then
    begin
      Result.VanPer:=Result.VanPer+FTr[I].Vans[J]^.VanCount;
      Result.VHPer:=Result.VHPer+FSt[FTr[I].StNz].Tek*FTr[I].Vans[J]^.VanCount;
    end;
end;

procedure TAbsPFPSolve.InitStTr;
var
  I, J{, TBC}: Integer;
  Tr: TTrStream;
begin
  SetLength(FStMarCommon, StCount);
  For I:=0 To High(FStMarCommon) Do
    FStMarCommon[I]:=I;

  FMarsUsing:=High(FMars)>=0;
  If not FMarsUsing Then
  begin
    SetLength(FMars, 1);
    FMars[0]:=FStMarCommon;
  end;
  SetLength(FSt, High(FStMarCommon)+1);
  For I:=0 To High(FSt) Do
  begin
    If FMarsUsing Then
      If not IsInMars(FMars, I) Then Continue;
    FSt[I].StInd:=I;
    BuildTrsChainFromMars(FMars, I, FSt[I].StTrsTo, FSt[I].StTrsDs);
    FSt[I].Cm:=CmA[I];
    FSt[I].Tek:=TekA[I];
  end;

  For I:=0 To High(FSt) Do
    For J:=0 To High(FSt[I].StTrsTo) Do
    begin
      if VSBetweenNazType(FSt[I].StInd, FSt[I].StTrsTo[J])=vstExclude then Continue;

      if VSBetweenNazType(FSt[I].StInd, FSt[I].StTrsTo[J])=0 then 
      If not VSBetweenExists(FSt[I].StInd, FSt[I].StTrsTo[J]) Then Continue;
      SetLength(FTr, High(FTr)+2);
      FTr[High(FTr)].Active:=False;
      FTr[High(FTr)].StOt:=FSt[I].StInd;
      FTr[High(FTr)].StNz:=FSt[I].StTrsTo[J];
      FTr[High(FTr)].Active:=False;
      FTr[High(FTr)].CM:=FSt[I].Cm;

      FTr[High(FTr)].ML:=FSt[I].StTrsDs[J];
      FTr[High(FTr)].MarInd:=MarInd(FMars, FTr[High(FTr)].StOt, FTr[High(FTr)].StNz);
    end;

  For I:=0 To High(FSt) Do
    FSt[I].MaxPer:=MaxPer[I];

  For I:=0 To High(FSt) Do
    FSt[I].MaxN:=MaxN[I];

//sort tr to extract area tr
  For I:=0 To High(FTr) Do
    For J:=I+1 To High(FTr) Do
      If I<>J Then
        If (FTr[J].ML<FTr[I].ML) Then
        begin
          Tr:=FTr[J]; FTr[J]:=FTr[I]; FTr[I]:=Tr;
        end;

  For I:=0 To High(FTr) Do
    For J:=I+1 To High(FTr) Do
      If I<>J Then
        If ((FTr[I].ML>1) and (VSBetweenNazType(FTr[J].StOt, FTr[J].StNz)=vstForce)) Then
        begin
          Tr:=FTr[J]; FTr[J]:=FTr[I]; FTr[I]:=Tr;
        end;

 //look for first non-area
  FMinTrI:=High(FTr);
  For I:=0 To High(FTr) Do
    If (FTr[I].ML>1)and(VSBetweenNazType(FTr[I].StOt, FTr[I].StNz)<>vstForce) Then
    begin
      FMinTrI:=I; Break;
    end
    Else
    begin
      FTr[I].Active:=True;
      Inc(FSt[FTr[I].StOt].CurrN);
  end;

  For I:=FMinTrI To High(FTr) Do
    For J:=I+1 To High(FTr) Do
      If I<>J Then
        If FTr[J].ML>FTr[I].ML Then
        begin
          Tr:=FTr[J]; FTr[J]:=FTr[I]; FTr[I]:=Tr;
        end;

 //sort tr to move constrained st closer to root node
{  For I:=FMinTrI To High(FTr) Do
    For J:=I+1 To High(FTr) Do
      If I<>J Then
        If FSt[FTr[J].StOt].MaxN>FSt[FTr[I].StOt].MaxN Then
        begin
          Tr:=FTr[J]; FTr[J]:=FTr[I]; FTr[I]:=Tr;
        end;
}

  //now FTr is fixed so we can bind to FSt
  For I:=0 To High(FTr) Do
  begin
    SetLength(FSt[FTr[I].StOt].Trs, High(FSt[FTr[I].StOt].Trs)+2);
    FSt[FTr[I].StOt].Trs[High(FSt[FTr[I].StOt].Trs)]:=@FTr[I];
  end;

  For I:=0 To High(FSt) Do
    If High(FSt[I].StTrsTo)<0 Then FSt[I].Tek:=MAXPFPVALUE*10;

  //now FTr is fixed so we can bind to FSV
  For I:=0 To High(FVS) Do
  begin
    FVS[I].TrsStOt:=FSt[FVS[I].StOt].Trs;
  end;



  For I:=FMinTrI To High(FTr) Do
    If FSt[FTr[I].StOt].CurrN<FSt[FTr[I].StOt].MaxN Then
      Break
    Else
    begin
      Inc(FMinTrI);
        //FSt[FTr[I].StOt].CurrN);
    end;

  {VarCount:=1;
  For I:=0 To StCount-1 Do
  begin
    TBC:=0;
    For J:=0 To High(FSt[I].Trs) Do
      If FSt[I].Trs[J]^.ML>1 Then Inc(TBC);
    J:=Round(Power(2, TBC));
    If J>0 Then
      VarCount:=VarCount*J;
  end;                                        }
  VarCount:=Round(Power(2,High(FTr)-FMinTrI+1));
  FMaxPlanValue:=MAXPFPVALUE;

end;

procedure TAbsPFPSolve.MakePlan;
label
  Br1;
var
  I, T, MT: Integer;
  TrI: Integer;
  MinTVByT: Double;
  TempTV: Double;
{$IFNDEF ASMALGN}
  STV: Double;
{$ENDIF}
  TV: Double;
{$IFNDEF ASMALGN}
  Tr: PTrStream;
{$ENDIF}
{$IFDEF ASMALGN}
//  V:PVanStream;
asm
//  Inc(MPC);
//  TV:=0;

     push ebx
     push edi
     mov  ebx,   eax
     fld1
     lea  eax,   [eax+MPC]
     push esi

     fild   QWORD PTR [eax]
     faddp
     mov  edx, [ebx+FSt]
     fistp  QWORD PTR [eax]
     fldz

//   For I:=0 To High(FSt) Do
//    FSt[I].CurrPer:=0;
     mov esi, [edx-4]
     xor ecx, ecx
     dec esi
     jl  @EndSt
     lea edx, [edx+TStParams.CurrPer]
     nop
     nop
     nop
     nop
     nop
     nop
@NextSt:
     mov [edx], ecx
     add  edx, 48  //SizeOf(TStParams)
     dec esi
     jnl @NextSt
@EndSt:

     fstp   TV

     mov  edx, [ebx+FVS]
//  For I:=0 To High(FVS) Do
     mov  eax, [edx-4]
     dec  eax
     jl   @EndI

@ForI:
     mov  I, eax
     lea  ecx, [eax+eax*4]

//    MinTVByT:=MAXPFPVALUE;
     lea  eax,     MinTVByT
     mov  [eax],   $6ef9f45c
     mov edx, [ebx+FVS]
     mov  [eax+4], $54e6dc18

    //TrI:=-1;
    //MT:=High(FVS[I].TrsStOt)+1;
     mov TrI, -1
     lea edx, [edx+ecx*4]  //FVS[I]
     mov eax, [edx+TVanStream.TrsStOt]
     mov eax, [eax-4] //high(TrsStOt)
     //inc eax
     mov MT, eax

//    For T:=0 To High(FVS[I].TrsStOt) Do

     mov ecx, [edx+TVanStream.TrsStOt]        //FVS[I]
     mov eax, [ecx-4]
     mov edi, ecx   ///TrsStOt
     dec eax
     jl   @EndT
     nop
     nop
     nop
@ForT:
     mov  T, eax
//      Tr:=FVS[I].TrsStOt[T];
     mov eax, [edi+eax*4]

        //mov  eax, Tr
        cmp byte ptr [eax+TTrStream.Active],0

        jz @NextT
        //mov esi, eax   //Tr
        mov eax, [eax+TTrStream.StNz]

        cmp eax, [edx+TVanStream.StNz]
        jnz @NotStNzEq
        fldz
        fstp MinTVByT
        jmp Br1
        nop
        nop
        nop
        nop
        nop
        nop
@NotStNzEq:

     //MT:=T;
     mov ecx,T
     lea eax, [2*eax+eax]
     mov MT, ecx

     //FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer+FVS[I].VanCount;

     add eax, eax
     mov  ecx, [ebx+FSt]
     lea ecx, [ecx+eax*8]
     mov eax, [ecx+TStParams.CurrPer]
     add eax, [edx+TVanStream.VanCount]
     mov [ecx+TStParams.CurrPer], eax


//    TempTV:=FSt[pTr^.StNz].Tek;

     // If (TempTV>=MinTVByT)or(FSt[Tr^.StNz].CurrPer>FSt[Tr^.StNz].MaxPer) Then
     // begin
     //   Continue;
     // end;
    cmp eax, [ecx+TStParams.MaxPer]
    jg Br1

    fld qword ptr [ecx+TStParams.Tek]
    fst  TempTV
    fcomp MinTVByT
    fstsw ax
    sahf
    jnb    @NextT
    
//      STV:=TVFrom(@FVS[I], @FSt[Tr^.StNz]);

    mov   eax,  ebx
    call  TAbsPFPSolve.TVFrom

//      If TempTV+STV<MinTVByT Then
//      begin
//        MinTVByT:=TempTV+STV;
//        TrI:=T;
//      end;

    fadd TempTV
    fcom MinTVByT
    fstsw ax
    sahf
    jnb @NextT87P
    fstp MinTVByT
    mov  eax, T
    mov  TrI, eax
    jmp  @NextT
    nop
@NextT87P:
    ffree st(0)
    nop
    nop

@NextT:
    mov eax,  T
    dec eax
    jnl @ForT   //jnz
@EndT:

Br1:

    //размотка всех вариантов пропуска струи
    //For T:=High(FVS[I].TrsStOt)DownTo MT Do
    //begin
    //  Tr:=FVS[I].TrsStOt[T];
    //  If not Tr^.Active Then Continue;
    //  If TrI<>T Then
    //    FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer-FVS[I].VanCount;
    //end;

     mov  edi, [edx+TVanStream.TrsStOt]        //FVS[I]
     mov  eax, [edi-4]
     dec  eax
     jl   @EndT2
     cmp  eax, MT
     jl   @EndT2
     mov  esi, [ebx+FSt]
     push ebx
     mov  ebx, [edx+TVanStream.VanCount]

@ForT2:
//      Tr:=FVS[I].TrsStOt[T];
        mov ecx, [edi+eax*4]   //Tr

        cmp byte ptr [ecx+TTrStream.Active],0

        jz @NextT2
        cmp eax, TrI
        je @NextT2
        mov ecx, [ecx+TTrStream.StNz]
        lea ecx, [ecx+2*ecx]
        add ecx, ecx
        sub [esi+ecx*8+TStParams.CurrPer], ebx

@NextT2:
        dec eax
        cmp eax, MT
        jnl @ForT2
        pop ebx
@EndT2:

  //      TV:=TV+MinTVByT*FVS[I].VanCount;

     fild DWORD PTR [edx+TVanStream.VanCount]
     fmul MinTVByT
     fadd TV
     fstp TV

@NextI:
      mov eax, I
      dec eax
      //test eax, eax
      jnl @ForI
@EndI:

//  For I:=0 To High(FTr) Do
//    If FTr[I].Active Then
//      TV:=TV+FTr[I].Cm;

   mov esi, [ebx+FTr]
   lea edi, [esi+TTrStream.Active]
   mov eax, [esi-4]
   lea esi, [esi+TTrStream.Cm] //first CM
   mov edx, 40   //SizeOf(TTrStream)
   fld TV
@ForITr:
   cmp byte ptr [edi], 0
   je  @NotAct1
   fadd qword ptr [esi]
@NotAct1:
   add  edi, edx
   add  esi, edx
   dec  eax
   jnz @ForITr
               

//  FPlanValue:=TV;
//  SaveBestTr;

    fstp qword ptr [ebx+FPlanValue]
    mov eax, ebx
    call TAbsPFPSolve.SaveBestTr

@EndPr1:
  pop esi
  pop edi
  pop ebx
@ExitProc:
end;
{$ELSE}
begin
  Inc(MPC);
//N
  For I:=0 To High(FSt) Do
    FSt[I].CurrPer:=0;

  TV:=0;
  //attach each vanstream to best train
  For I:=High(FVS)DownTo 0 Do
  begin
    MinTVByT:=MAXPFPVALUE;
    TrI:=-1;
    MT:=High(FVS[I].TrsStOt)+1;
    For T:=High(FVS[I].TrsStOt) DownTo 0 Do
    begin
      Tr:=FVS[I].TrsStOt[T];
      If not Tr^.Active Then Continue;
      If Tr^.StNz=FVS[I].StNz Then
      begin
        MinTVByT:=0;
        Break;
      end;

     MT:=T;

      FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer+FVS[I].VanCount;

      TempTV:=FSt[Tr^.StNz].Tek;
      If (TempTV>=MinTVByT)or(FSt[Tr^.StNz].CurrPer>FSt[Tr^.StNz].MaxPer) Then
      begin
        Continue;
      end;
      STV:=TVFrom(@FVS[I], @FSt[Tr^.StNz]);
      If TempTV+STV<MinTVByT Then
      begin
        MinTVByT:=TempTV+STV;
        TrI:=T;
      end;

    end;
    Br1:
    
    //размотка всех вариантов пропуска струи
    For T:=High(FVS[I].TrsStOt)DownTo MT Do
    begin
      Tr:=FVS[I].TrsStOt[T];
      If not Tr^.Active Then Continue;
      If TrI<>T Then
        FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer-FVS[I].VanCount;
    end;

    Assert(MinTVByT<MAXPFPVALUE, 'Не найден поезд!');
    TV:=TV+MinTVByT*FVS[I].VanCount;
  end;

  For I:=0 To High(FTr) Do
    If FTr[I].Active Then
      TV:=TV+FTr[I].Cm;

{$IFDEF SAVETREE}
  SaveVarTxt(FTr, TV);
{$ENDIF}

  FPlanValue:=TV;
  SaveBestTr;
end;
{$ENDIF}

procedure TAbsPFPSolve.MakePlanCount;
var
  I, T, J, MT: Integer;
  MinTVByT: Double;
  TempTV, STV: Double;
  TV: Double;
  TrI: Integer;
  //Trs: TPTrArray;
  pTr: PTrStream;
  TM, TMR: TPTrArray; TPos: Integer;
begin
  TV:=0;

  For I:=0 To High(FSt) Do
    FSt[I].CurrPer:=0;

  //now FTr was moved and is fixed again so we can bind to FSt
  For I:=0 To High(FTr) Do
  begin
    SetLength(FSt[FTr[I].StOt].Trs, 0);
  end;

  For I:=0 To High(FTr) Do
  begin
    SetLength(FSt[FTr[I].StOt].Trs, High(FSt[FTr[I].StOt].Trs)+2);
    FSt[FTr[I].StOt].Trs[High(FSt[FTr[I].StOt].Trs)]:=@FTr[I];
  end;

  //attach each vanstream to best train
  For I:=High(FVS) DownTo 0 Do
  begin
    MinTVByT:=MAXPFPVALUE;
    TM:=nil; TPos:=0; TrI:=-1;
    MT:=High(FSt[FVS[I].StOt].Trs)+1;
    For T:=High(FSt[FVS[I].StOt].Trs) DownTo 0 Do
    begin
      pTr:=FSt[FVS[I].StOt].Trs[T];
      If pTr^.StNz=FVS[I].StNz Then
      begin
        SetLength(TM, TPos+1);
        TM[TPos]:=pTr;
        TMR:=TM;
        MinTVByT:=0;
        Break;
      end;

      TempTV:=FSt[pTr^.StNz].Tek;

      FSt[pTr^.StNz].CurrPer:=FSt[pTr^.StNz].CurrPer+FVS[I].VanCount;
      MT:=T;
      If (TempTV>=MinTVByT)or(FSt[pTr^.StNz].CurrPer>FSt[pTr^.StNz].MaxPer) Then
      begin
        Continue;
      end;


      STV:=TVFromCount(@FVS[I], @FSt[pTr^.StNz], TM, TPos+1);

      If TempTV+STV<MinTVByT Then
      begin
        MinTVByT:=TempTV+STV;
        TM[TPos]:=pTr;
        TMR:=TM;
        TrI:=T;
      end;
    end;

    For T:=High(FSt[FVS[I].StOt].Trs) DownTo MT Do
    begin
      pTr:=FSt[FVS[I].StOt].Trs[T];
      If not pTr^.Active Then Continue;
      If TrI<>T Then
        FSt[pTr^.StNz].CurrPer:=FSt[pTr^.StNz].CurrPer-FVS[I].VanCount;
    end;

    Assert(MinTVByT<MAXPFPVALUE, 'Не найден поезд!');
    Assert(TMR<>nil, 'Не найден поезд!');
    TV:=TV+MinTVByT*FVS[I].VanCount;
    For J:=0 To High(TMR) Do
    begin
      If TMR[J]<>nil Then
      begin
        TMR[J]^.VanCount:=TMR[J]^.VanCount+FVS[I].VanCount;
        SetLength(TMR[J]^.Vans, High(TMR[J]^.Vans)+2);
        TMR[J]^.Vans[High(TMR[J]^.Vans)]:=@FVS[I];
      end;
    end;
  end;

end;

procedure TAbsPFPSolve.NextCalcT(T: Integer);
{$IFDEF ASMALGN}
asm
  cmp byte ptr[eax+FTerminated],0
  jnz @Exit1
 // inc edx
  mov ecx, [eax+FTr]
  cmp edx, [ecx-4]
  jge  @MakePl
//  dec  edx
  push esi
  lea esi, [edx+edx*4]
  push ebx
  lea esi, [ecx+esi*8]  //curr Tr
  push edi
  mov  ebx, eax
  mov edi, [esi+TTrStream.StOt]
  add edi, edi
  lea esi, [esi+TTrStream.Active]
  lea edi, [edi+edi*2]
  mov ecx, [eax+FSt]
  lea edi, [ecx+edi*8]   //cur St
  mov eax, [edi+TStParams.MaxN]
  lea edi, [edi+TStParams.CurrN]
  inc edx
  cmp eax, [edi]
  jle @OverW
  inc  dword ptr [edi]
  mov byte ptr [esi],1
  mov  eax, ebx
  push edx
  call TAbsPFPSolve.NextCalcT
  pop  edx
  dec  dword ptr [edi]

@OverW:

  mov byte ptr [esi],0
  mov eax, ebx
  call TAbsPFPSolve.NextCalcT

  pop edi
  pop ebx
  pop esi
@Exit1:
  ret
@MakePl:
  call TAbsPFPSolve.MakePlan
end;

{$ELSE}
begin
  If FTerminated Then Exit;
  If T<=High(FTr) Then
  begin
    If FSt[FTr[T].StOt].CurrN<FSt[FTr[T].StOt].MaxN Then
    begin
      Inc(FSt[FTr[T].StOt].CurrN);
      FTr[T].Active:=True;
      NextCalcT(T+1);
      Dec(FSt[FTr[T].StOt].CurrN);
    end;
    FTr[T].Active:=False;
    NextCalcT(T+1);
  end
  Else
  begin
    MakePlan;
  end;
end;
{$ENDIF}

procedure TAbsPFPSolve.NextThrd(T, MaxT: Integer);
var Thrd:TCalcThread;
    I:Integer;
begin
  If T<MaxT Then
  begin
    If FSt[FTr[T].StOt].CurrN<FSt[FTr[T].StOt].MaxN Then
    begin
      Inc(FSt[FTr[T].StOt].CurrN);
      FTr[T].Active:=True;
      NextThrd(T+1,MaxT);
      Dec(FSt[FTr[T].StOt].CurrN);
    end;
    FTr[T].Active:=False;
    NextThrd(T+1,MaxT);
  end
  Else
  begin
    Thrd:=TCalcThread.Create(True);
    Thrd.PFP:=Clone;
    for I:=0 to High(FTr) do
      Thrd.PFP.FTr[I].Active:=FTr[I].Active;
    for I:=0 to High(FSt) do
      Thrd.PFP.FSt[I].CurrN:=FSt[I].CurrN;

    Thrd.PFP.VarCount:=Round(Thrd.PFP.VarCount / Power(2,MaxT-FMinTrI));
    Thrd.StartI:=MaxT;
    Thrd.Priority:=tpLower;
    ThrdList.Add(Thrd);
  end;
end;

procedure TAbsPFPSolve.SetStCm(I: Integer; const Value: Cardinal);
begin
  If I>High(CmA) Then SetLength(CmA, I+1); CmA[I]:=Value;
end;

procedure TAbsPFPSolve.SetStN(I: Integer; const Value: Integer);
begin
  If I>High(MaxN) Then SetLength(MaxN, I+1); MaxN[I]:=Value;
end;

procedure TAbsPFPSolve.SetStPer(I: Integer; const Value: Integer);
begin
  If I>High(MaxPer) Then SetLength(MaxPer, I+1); MaxPer[I]:=Value;
end;

procedure TAbsPFPSolve.SetStTek(I: Integer; const Value: Double);
begin
  If I>High(TekA) Then SetLength(TekA, I+1); TekA[I]:=Value;
end;

procedure TAbsPFPSolve.Terminate;
var I:Integer;
begin
  If FMultThrd Then
  begin
    for I := 0 to ThrdList.Count - 1 do
    try
      TCalcThread(ThrdList[I]).PFP.FTerminated:=True;
    except end;
  end
end;

function TAbsPFPSolve.MergePFP(const PFPS: array of TPFPArray): TPFPArray;
var
  I, J, CP: Integer;
  P: TPFPRec;
begin
  For I:=0 To High(PFPS) Do
    SetLength(Result, High(Result)+1+High(PFPS[I])+1);
  CP:=0;
  For I:=0 To High(PFPS) Do
  begin
    For J:=0 To High(PFPS[I]) Do
      Result[CP+J]:=PFPS[I][J];
    CP:=CP+High(PFPS[I])+1;
  end;
  For I:=0 To High(Result) Do
    For J:=I+1 To High(Result) Do
      If Result[I].PlanValue>Result[J].PlanValue Then
      begin
        P:=Result[J];
        Result[J]:=Result[I];
        Result[I]:=P;
      end;
  If High(Result)>FPFPSaveCount-1 Then
    SetLength(Result, FPFPSaveCount);
end;

function TAbsPFPSolve.TVFrom(V: PVanStream; St: PStParams): Double;
var
{$IFNDEF ASMALGN}        
  T,
{$ENDIF}
  MT: Integer;
  TrI: Integer;
  TempTV: Double;
{$IFNDEF ASMALGN}
  STV: Double;
 Tr: PTrStream;
{$ENDIF}
{$IFDEF ASMALGN}
  Res: Double;
asm
  push ebx
  push esi
  mov ebx,  eax   //Self
  push edi
  lea  eax,     Res
  mov  [eax],   $6ef9f45c
  mov  esi,     ecx       //St
  mov  [eax+4], $54e6dc18
  mov  [TrI], -1
  //mov  edi,     edx       //V
  mov  eax,     [ecx+TStParams.Trs]
  test eax,   eax
  jz   @NoTrs
  mov  eax,     [eax-4]
  dec  eax
  mov  [MT],     eax
//  For T:=0 To High(St^.Trs) Do
  mov  edi, eax
@ForT:
//   pTr:=St^.Trs[T];
  mov eax, [esi+TStParams.Trs]
  mov eax, [eax+edi*4]  //1pTr
//    If not pTr^.Active Then Continue;
  cmp byte ptr [eax+TTrStream.Active],0
  jz  @NextT
  //mov Tr,  eax   //pTr
  mov eax, [eax+TTrStream.StNz]
  cmp eax, [edx+TVanStream.StNz]
  jne @NotStNzEq
  fldz
  jmp @ExitF
@NotStNzEq:
//    TempTV:=FSt[pTr^.StNz].Tek;
    shl  eax,  1
    mov  ecx,  [ebx+FSt]
    lea   eax,  [eax+eax*2]
    lea   ecx,  [ecx+eax*8]   //@FSt[Tr^.StNz]
    fld  qword ptr  [ecx]    //Tek
 //    If TempTV>=Result Then Continue;
    fst  TempTV
    fcomp Res
    fstsw ax
    sahf
    jnb    @NextT
    
//FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer+V^.VanCount;
//    If (FSt[Tr^.StNz].CurrPer>FSt[Tr^.StNz].MaxPer) Then
//    begin
//      FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer-V^.VanCount;
//      Continue;
//    end;
    mov  [MT], edi
    mov  eax,  [ecx+TStParams.CurrPer]
    add  eax,  [edx+TVanStream.VanCount]
    mov  [ecx+TStParams.CurrPer], eax
    cmp  eax,  [ecx+TStParams.MaxPer]
    jg   @NextT
//    jmp  @Cont1
//@OverLoad:
//    jmp    @NextT

@Cont1:
//STV:=TVFrom(V, @FSt[pTr^.StNz]);
     mov   eax,  ebx
    call  TAbsPFPSolve.TVFrom
//    If TempTV+STV<Result Then
//    begin
//      Result:=TempTV+STV;
//    end;
    fadd TempTV
    //1mov  ecx, T
    fcom Res
    fstsw ax
    sahf
    jnb @NextT87P
    fst Res
    mov  [TrI], edi
    //jmp  @NextT
@NextT87P:
     ffree st(0)
@NextT:
    //1inc  ecx
    dec  edi
    jnl  @ForT

@NoTrs:
   fld Res

@ExitF:

//  For T:=High(St^.Trs)DownTo MT Do
//  begin
//    Tr:=St^.Trs[T];
//    If not Tr^.Active Then Continue;
//    If TrI<>T Then
//      FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer-V^.VanCount;

  //mov  esi,     ecx       //St
  mov  esi,     [esi+TStParams.Trs]
  test esi,   esi
  jz   @NoTrs1
  mov  eax,     [esi-4]
  dec  eax
  cmp  eax, [MT]
//  For T:=High(St^.Trs) downTo MT Do
  jl   @NoTrs1
  mov  edi, eax
  //push edx
  mov  ecx,  [ebx+FSt]
  mov  ebx, [edx+TVanStream.VanCount]
@ForT1:
//   pTr:=St^.Trs[T];
    mov   eax, [esi+edi*4]  //1pTr
//    If not pTr^.Active Then Continue;
    cmp   byte ptr [eax+TTrStream.Active],0
    jz    @NextT1

//    If TrI<>T Then
    cmp   edi, [TrI]
    je    @SkipSt1

//      FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer-V^.VanCount;
    mov   eax, [eax+TTrStream.StNz]
    shl   eax,  1
    lea   eax,  [eax+eax*2]
    sub   [ecx+eax*8+TStParams.CurrPer],edx   //@FSt[Tr^.StNz]

@SkipSt1:

@NextT1:
    dec  edi
    cmp edi, [MT]
    jnl  @ForT1
    //pop  edx

@NoTrs1:



   pop edi
   pop esi
   pop ebx
end;
{$ELSE}
begin
  Result:=MAXPFPVALUE;
  TrI:=-1;
  try
  MT:=High(St^.Trs)+1;
  For T:=High(St^.Trs)DownTo 0 Do
  begin
    Tr:=St^.Trs[T];
    If not Tr^.Active Then Continue;
    If Tr^.StNz=V^.StNz Then
    begin
      Result:=0; Exit;
    end;

    TempTV:=FSt[Tr^.StNz].Tek;
    If TempTV>=Result Then Continue;
    MT:=T;
    FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer+V^.VanCount;
    If (FSt[Tr^.StNz].CurrPer>FSt[Tr^.StNz].MaxPer) Then
    begin
      Continue;
    end;

    STV:=TVFrom(V, @FSt[Tr^.StNz]);
    If TempTV+STV<Result Then
    begin
      Result:=TempTV+STV;
      TrI:=T;
    end;
  end;

  finally
  For T:=High(St^.Trs)DownTo MT Do
  begin
    Tr:=St^.Trs[T];
    If not Tr^.Active Then Continue;
    If TrI<>T Then
      FSt[Tr^.StNz].CurrPer:=FSt[Tr^.StNz].CurrPer-V^.VanCount;
  end;
  end;
end;
{$ENDIF}

function TAbsPFPSolve.TVFromCount(V: PVanStream; St: PStParams; var TM: TPTrArray; TPos: Integer): Double;
var
  T,MT: Integer;
  TempTV, STV: Double;
  TrI: Integer;
  pTr: PTrStream;
  TMR: TPTrArray;
begin
  Result:=MAXPFPVALUE;
  TMR:=TM;
  TrI:=-1;
  MT:=High(St^.Trs)+1;
  try
  For T:=High(St^.Trs) DownTo 0 Do
  begin
    pTr:=St^.Trs[T];
    If pTr^.StNz=V^.StNz Then
    begin
      SetLength(TM, TPos+1);
      TM[TPos]:=pTr;
      Result:=0; Exit;
    end;
    TempTV:=FSt[pTr^.StNz].Tek;

    If TempTV>=Result Then Continue;

    MT:=T;
    FSt[pTr^.StNz].CurrPer:=FSt[pTr^.StNz].CurrPer+V^.VanCount;

    If (FSt[pTr^.StNz].CurrPer>FSt[pTr^.StNz].MaxPer) Then
    begin
      Continue;
    end;

    STV:=TVFromCount(V, @FSt[pTr^.StNz], TM, TPos+1);

    If TempTV+STV<Result Then
    begin
      Result:=TempTV+STV;
      TM[TPos]:=pTr;
      TMR:=TM;
      TrI:=T;
    end;
  end;
  finally
  For T:=High(St^.Trs) DownTo MT Do
  begin
    pTr:=St^.Trs[T];
    If not pTr^.Active Then Continue;
    If TrI<>T Then
      FSt[pTr^.StNz].CurrPer:=FSt[pTr^.StNz].CurrPer-V^.VanCount;
  end;
  end;
  TM:=TMR;
end;

function TAbsPFPSolve.VSBetweenExists(StOt, StNz: Cardinal): Boolean;
var
  I: Integer;
begin
  Result:=True;
  For I:=0 To High(FVS) Do
    If (FVS[I].StOt=StOt)and(FVS[I].StNz=StNz) Then Exit;
  Result:=False;
end;

function TAbsPFPSolve.VSBetweenNazType(StOt, StNz: Cardinal): Integer;
var
  I: Integer;
begin
  Result:=0;
  For I:=0 To High(FVS) Do
    If (FVS[I].StOt=StOt)and(FVS[I].StNz=StNz) Then
  begin Result:=FVS[I].NazType;end;
end;

procedure TAbsPFPSolve.SetSelectedPFPIndex(Ind: Integer);
var
  V, I, N: Integer;
begin
  FTrBest:=FPFPArray[FPFPSaveCount-Ind-1].Tr;
  FSt:=FPFPArray[FPFPSaveCount-Ind-1].St;
  FPlanValue:=FPFPArray[FPFPSaveCount-Ind-1].PlanValue;
  V:=TrPFPCount;
  SetLength(FTrBestOnly, V);
  N:=0;
  For I:=0 To High(FTrBest) Do
  begin
    If FTrBest[I].Active Then
    begin
      FTrBestOnly[N]:=FTrBest[I];
      Inc(N);
    end;
  end;
  FTr:=FTrBestOnly;
  MakePlanCount;
end;

procedure TAbsPFPSolve.SaveBestTr;
var
  I, MaxI: Integer;
  MP: Double;
begin
  If FPlanValue>MAXPFPVALUE Then Exit;
  If High(FPFPArray)<FPFPSaveCount-1 Then
  begin
    SetLength(FPFPArray, High(FPFPArray)+2);
    FPFPArray[High(FPFPArray)].PlanValue:=FPlanValue;
    FPFPArray[High(FPFPArray)].St:=FSt;
    FPFPArray[High(FPFPArray)].Tr:=FTr;
    SetLength(FPFPArray[High(FPFPArray)].St, High(FPFPArray[High(FPFPArray)].St)+1); //make unique reference
    SetLength(FPFPArray[High(FPFPArray)].Tr, High(FPFPArray[High(FPFPArray)].Tr)+1); //make unique reference
  end
  Else
  begin

    If FMaxPlanValue<FPlanValue Then Exit;
    MaxI:=0;
    MP:=0;

    For I:=0 To High(FPFPArray) Do
      If MP<FPFPArray[I].PlanValue Then
      begin
        MP:=FPFPArray[I].PlanValue;
        MaxI:=I;
      end;

    FPFPArray[MaxI].PlanValue:=FPlanValue;
    FPFPArray[MaxI].St:=FSt;
    FPFPArray[MaxI].Tr:=FTr;
    SetLength(FPFPArray[MaxI].St, High(FPFPArray[MaxI].St)+1); //make unique reference
    SetLength(FPFPArray[MaxI].Tr, High(FPFPArray[MaxI].Tr)+1); //make unique reference
  end;

  FTrBest:=FTr;
  SetLength(FTrBest, High(FTrBest)+1); //make unique reference

  MP:=0;
  For I:=0 To High(FPFPArray) Do
    If MP<FPFPArray[I].PlanValue Then MP:=FPFPArray[I].PlanValue;
  FMaxPlanValue:=MP;
end;

procedure TAbsPFPSolve.SortPFPArray;
var
  I, J: Integer;
  P: TPFPRec;
begin
  For I:=0 To High(FPFPArray) Do
    For J:=I+1 To High(FPFPArray) Do
      If FPFPArray[I].PlanValue<FPFPArray[J].PlanValue Then
      begin
        P:=FPFPArray[J];
        FPFPArray[J]:=FPFPArray[I];
        FPFPArray[I]:=P;
      end;
end;

{ TCalcThread }

destructor TCalcThread.Destroy;
begin
  PFP.Free;
end;

procedure TCalcThread.Execute;
begin
  PFP.NextCalcT(StartI);
end;

{ TCalcBaseThread }

procedure TCalcBaseThread.Execute;
begin
  BasePFP.Calc;
end;

end.

