unit PfpProgress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, StdCtrls, ExtCtrls, TeEngine, Series, TeeProcs, Chart,
  TeeFunci, VclTee.TeeGDIPlus;

type
  TThrdProgressForm=class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    Label3: TLabel;
    PrChart: TChart;
    Series1: THorizBarSeries;
    Series2: TLineSeries;
    TeeFunction1: TAverageTeeFunction;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FStDT: TDateTime;
  public
    { Public declarations }
  end;

var
  ThrdProgressForm: TThrdProgressForm;

implementation

uses MainForm, AbsPFPSolve;

{$R *.dfm}

procedure TThrdProgressForm.Timer1Timer(Sender: TObject);
var
  VD, VDL: Int64; Spd, TL, MV: Double;
  I:Integer;
begin
  VD:=0;
  VDL:=0; MV:=10E100;
  try
    begin
      try
        if Series1.MandatoryValueList.Count=0 then
          begin
             With Series1 do
              Begin
                Clear;
               for I := 0 to MainPFPForm.CalcBaseThread.BasePFP.ThrdList.Count - 1 do
                Add(0, IntToStr(I+1));

              end;
            PrChart.BottomAxis.AutomaticMaximum:=False;
            PrChart.BottomAxis.Maximum:=100;
          end;
        for I := 0 to MainPFPForm.CalcBaseThread.BasePFP.ThrdList.Count - 1 do
          begin
            Series1.MandatoryValueList.Value[I]:=
            Round(TCalcThread(MainPFPForm.CalcBaseThread.BasePFP.ThrdList[I]).PFP.MPC/
            TCalcThread(MainPFPForm.CalcBaseThread.BasePFP.ThrdList[I]).PFP.VarCount*100);

            VD:=VD+TCalcThread(MainPFPForm.CalcBaseThread.BasePFP.ThrdList[I]).PFP.MPC;
            VDL:=VDL+TCalcThread(MainPFPForm.CalcBaseThread.BasePFP.ThrdList[I]).PFP.VarCount-TCalcThread(MainPFPForm.CalcBaseThread.BasePFP.ThrdList[I]).PFP.MPC;
        If TCalcThread(MainPFPForm.CalcBaseThread.BasePFP.ThrdList[I]).PFP.PlanValue<MV Then
          MV:=TCalcThread(MainPFPForm.CalcBaseThread.BasePFP.ThrdList[I]).PFP.PlanValue;

          end;
      except end;
         PrChart.ReCalcWidthHeight;

         PrChart.Repaint;
    end;
    try
      Spd:=VD/((Now-FStDT)*24*60*60); //вар/c
      TL:=VDL/(Spd*(24*60*60));
      If TL>1 Then
        Caption:=FormatFloat('0', Spd)+' вар/с - '+FormatDateTime('h:nn:ss', Now-FStDT)+' ('+IntToStr(Trunc(TL))+' дн. '+FormatDateTime('h:nn:ss', Frac(TL))+')'
      Else
        Caption:=FormatFloat('0', Spd)+' вар/с - '+FormatDateTime('h:nn:ss', Now-FStDT)+' ('+FormatDateTime('h:nn:ss', TL)+')';
      Label3.Caption:=FormatFloat('0.#', MV)+' ваг-ч';
    except end;
  except end;
end;

procedure TThrdProgressForm.Button1Click(Sender: TObject);
begin
  If MessageBox(Handle, 'Вы уверены, что хотите остановить расчет ПФП?', 'Внимание', MB_YESNO or MB_ICONWARNING)=IDYES Then
  begin
    MainPFPForm.CalcBaseThread.BasePFP.Terminate;
    ModalResult:=mrCancel;
  end;
end;

procedure TThrdProgressForm.FormShow(Sender: TObject);
begin
  FStDT:=Now;
end;

end.

