unit SelMarsh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TSelMarshForm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Add1: TButton;
    Add2: TButton;
    Del1: TButton;
    Del2: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Panel1: TPanel;
    lSt: TListBox;
    Panel2: TPanel;
    lM: TListBox;
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure Add2Click(Sender: TObject);
    procedure Del2Click(Sender: TObject);
    procedure Del1Click(Sender: TObject);
  private
    FlagRes: boolean;
  public
    function SelectMarsh(BC: integer; var Marsh: string): boolean;
  end;

var
  SelMarshForm: TSelMarshForm;

implementation

{$R *.DFM}

function TSelMarshForm.SelectMarsh(BC: integer; var Marsh: string): boolean;
var
  i, j: integer;
  s: string;
  b: boolean;
begin
  FlagRes := FALSE;
  lSt.Items.Clear;
  lM.Items.Clear;
  S := '';
  if Marsh <> '' then begin
    i := 1;
    while i <= length(Marsh) do begin
      if Marsh[i] = '-' then begin
        lM.Items.Add(S);
        S := ''
      end
      else
        S := S + Marsh[i];
      Inc(i);
    end;
    lM.Items.Add(S);
  end;
  for i := 1 to BC do begin
    b := FALSE;
    for j := 0 to lM.Items.Count-1 do 
      if lM.Items[j] = IntToStr(i) then begin
        b := TRUE;
        Break;
      end;
    if NOT B then
      lSt.Items.Add(IntToStr(i));
  end;
  ShowModal;
  Marsh := '';
  if FlagRes AND (lM.Items.Count > 0) then begin
    for i := 0 to lM.Items.Count-2 do
      Marsh := Marsh + lm.Items[i] + '-';
    Marsh := Marsh + lm.Items[lM.Items.Count-1];
  end;
  Result := FlagRes;
end;

procedure TSelMarshForm.Button5Click(Sender: TObject);
begin
  FlagRes := TRUE;
  Close;
end;

procedure TSelMarshForm.Button6Click(Sender: TObject);
begin
  Close;
end;

procedure TSelMarshForm.Add1Click(Sender: TObject);
var
  S: string;
begin
  if lSt.ItemIndex >= 0 then begin
    S := lSt.Items[lSt.ItemIndex];
    lM.Items.Add(S);
    lSt.Items.Delete(lSt.ItemIndex);
  end;
end;

procedure TSelMarshForm.Add2Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to lSt.Items.Count-1 do
    lM.Items.Add(lSt.Items[i]);
  lSt.Items.Clear;
end;

procedure TSelMarshForm.Del2Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to lM.Items.Count-1 do
    lSt.Items.Add(lM.Items[i]);
  lM.Items.Clear;
end;

procedure TSelMarshForm.Del1Click(Sender: TObject);
var
  S: string;
begin
  if lM.ItemIndex >= 0 then begin
    S := lM.Items[lM.ItemIndex];
    lSt.Items.Add(S);
    lM.Items.Delete(lM.ItemIndex);
  end;
end;

end.
