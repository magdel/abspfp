unit kcUtils;
interface
Uses Windows, SysUtils,Classes;

function GetFileVersion(FN: String): AnsiString;
function GetFileBuild(FN: String): Integer;

implementation

function GetFileBuild(FN: String): Integer;
var FV,B:String;
begin
  FV:=GetFileVersion(FN);
  If FV[Length(FV)]<>'.' Then FV:=FV+'.';
  B:=FN;
  While Pos('.',FV)>0 Do
    begin
      B:=Copy(FV,1,Pos('.',FV)-1);
      Delete(FV,1,Pos('.',FV));
    end;
  Result:=StrToInt(B);
end;

function GetFileVersion(FN: String): AnsiString;
Var
  FISize, VL: Cardinal; LI, CI: Integer;
  pData, pV: Pointer;
  S1, S2: String;
begin
  Result:='';
  try
    FISize:=GetFileVersionInfoSizeA(PAnsichar(FN), FISize);
    If FISize<>0 Then
      begin
        GetMem(pData, FISize+1);
        try
          GetFileVersionInfoA(PAnsichar(FN), 0, FISize, pData);
          VerQueryValueA(pData, PAnsiChar('\VarFileInfo\Translation'), pV, VL);

          CI:=0; LI:=0;
          asm
        mov    eax, pV
        mov    eax, [eax]
        mov    word ptr(LI),  ax
        shr    eax, 16
        mov    word ptr(CI),  ax
          end;
          S1:=IntToHex(LI, 4); S2:=IntToHex(CI, 4);
          VerQueryValueA(pData, PAnsiChar('\StringFileInfo\'+S1+S2+'\FileVersion'), pV, VL);
          Result:=PAnsiChar(pV);
        finally
          FreeMem(pData);
        end;
      end;
  except
  end;
end;

end.
