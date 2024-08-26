unit AboutForm;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TAboutBox=class;

  TAniThread=class(TThread)
  private
    FAniBmp: TBitmap;
    FAboutBox: TAboutBox;
    FFrmN: Integer;
    procedure Draw;
  public
    destructor Destroy; override;
    procedure Execute; override;
    property AboutBox: TAboutBox read FAboutBox write FAboutBox;
  End;

  TAboutBox=class(TForm)
    Panel1: TPanel;
    ProgramIco_: TImage;
    ProductName: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    AniTimer: TTimer;
    Label5: TLabel;
    Image1: TImage;
    Label4: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AniTimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    FBmp: TBitmap;
    FXP1: Integer;
    FActive1, FActive2: Boolean;
    FS: Integer;
//    FAniThread:TAniThread;
  public
    { Public declarations }
  end;


implementation
uses ShellApi, registry, kcUtils;

{$R *.DFM}


procedure TAboutBox.FormCreate(Sender: TObject);
begin
  Caption:=Caption+' '+ GetFileVersion(Application.ExeName);
  FXP1:=0;
  FS:=0;
end;

procedure TAboutBox.AniTimerTimer(Sender: TObject);
Var
  H, W: Integer; sR: TRect;
begin
  For H:=0 To Height div 20 Do
    For W:=0 To Width div 20 Do
      begin
        sR.Top:=H*20;
        sR.Bottom:=H*20+FS;
        sR.Left:=W*20+FS;
        sR.Right:=W*20+FS+4;

        Canvas.CopyRect(sR, FBmp.Canvas, sR);

      end;

  Inc(FS, 2);
  If FS>24 Then
    begin
      FBmp.Free;
      AniTimer.Enabled:=False;
      Panel1.Visible:=True;
   //   FAniThread.Resume;
    end;
{
  If FXP1>FBmp.Width div 2 Then
    begin
      FBmp.Free;
      AniTimer.Enabled:=False;
      Panel1.Visible:=True;
      Timer1.Enabled:=True;
    end
   Else
    begin
      Canvas.CopyRect(Rect(FBmp.Width div 2 +FXP1,0,FBmp.Width div 2 +FXP1+10,FBmp.Height),FBmp.Canvas,
                      Rect(FBmp.Width div 2 +FXP1,0,FBmp.Width div 2 +FXP1+10,FBmp.Height));
      Canvas.CopyRect(Rect(FXP1,0,FXP1+10,FBmp.Height),FBmp.Canvas,Rect(FXP1,0,FXP1+10,FBmp.Height));
      Inc(FXP1,10);
    end;}
end;

procedure TAboutBox.FormShow(Sender: TObject);
begin
  FBmp:=GetFormImage;
  Panel1.Visible:=False;
  AniTimer.Enabled:=True;
end;

procedure TAboutBox.Image1Click(Sender: TObject);
Var
  Url: String;
begin
  Url:='http://www.amd.ru';
  ShellExecute(Handle, 'open', pchar(Url), Nil, Nil, SW_SHOWNORMAL);
end;

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TAboutBox.FormDestroy(Sender: TObject);
begin
//  FAniThread.Terminate;
  AniTimer.Enabled:=False;
end;

{ TAniThread }

destructor TAniThread.Destroy;
begin
  FAniBmp.Free;
  inherited;
end;

procedure TAniThread.Draw;
Var
  sR: TRect;
begin
  sR.Left:=FFrmN*121;
  sR.Right:=sR.Left+121;
  sR.Top:=0;
  sR.Bottom:=89;
  If Terminated Then Exit;
 // FAboutBox.ProgramIco_.Canvas.CopyRect(FAboutBox.ProgramIco_.BoundsRect,FAniBmp.Canvas,sR);
  FAboutBox.ProgramIco_.Canvas.Draw(-FFrmN*121, 0, FAniBmp);
  Inc(FFrmN);
  If FFrmN=33 Then FFrmN:=0;
end;

procedure TAniThread.Execute;
Var
  H, M, S, mS, mS1: Word;
begin
  FreeOnTerminate:=True;
  FFrmN:=0;
  FAniBmp:=TBitmap.Create;
  FAniBmp.LoadFromResourceID(hInstance, 104);
  While True Do
    begin
      If Terminated Then Exit;
      DecodeTime(Time, H, M, S, mS1);
      mS:=mS1;
      While Abs(mS mod 1000-mS1 mod 1000)<150 Do
        DecodeTime(Time, H, M, S, mS1);
      If Terminated Then Exit;
      Synchronize(Draw);
    end;
end;

procedure TAboutBox.Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//  Label7.Font.Color:=clAqua;
//  Timer1.Enabled:=True;
//  FActive3:=True;
end;

end.
