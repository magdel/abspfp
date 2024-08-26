//------------------------------------------------------------------------------
//
//   Модуль для экспорта данных, отображаемых в передаваемых списках TStringGrid,
//   в Microsoft® Excel 97-2002 и позже.
//
//
//------------------------------------------------------------------------------
unit ExcelExport;

interface
uses
  Windows, SysUtils, Grids, Classes, ActiveX, OleServer, Graphics;

procedure SendsToExcel(const DBGrids: array of TStringGrid; const Titles: array of String; DisableGrid: Boolean=True; FormatFromGrid: Boolean=False);

implementation
uses
  WordXP, ExcelXP, comobj,
  Variants,
  contnrs
  ;

procedure SendsToExcel(const DBGrids: array of TStringGrid; const Titles: array of String; DisableGrid: Boolean=True;
  FormatFromGrid: Boolean=False);
var
  IW: ExcelXP.ExcelApplication;
  IB: ExcelXP.ExcelWorkbook;
  ID: ExcelXP.ExcelWorksheet;
  V1, V2: OleVariant;
  I, J: Integer;
  ADBGrid: TStringGrid; ATitle: String;
  S: String;
  RC, R, C: Integer;
  VA: OleVariant;
  Borders: ExcelXP.Borders;
begin
  Assert(High(DBGrids)=High(TItles), 'Несовместимое количество параметров для экспорта');
  Assert(High(DBGrids)>=0, 'Нет данных для экспорта');

  IW:=CoExcelApplication.Create;

  IB:=IW.Workbooks.Add(EmptyParam, LOCALE_USER_DEFAULT);

  ID:=IB.Worksheets.Add(EmptyParam, EmptyParam, 1, xlWorksheet, LOCALE_USER_DEFAULT)as ExcelXP._WorkSheet;

  try
    ADBGrid:=DBGrids[0];
    ATitle:=Titles[0];
    V1:=0;
    V2:=0;

    try

      For I:=1 To ADBGrid.ColCount Do
      begin
        R:=2; C:=I;
        If ADBGrid.ColWidths[I-1]<20 Then
          ID.Cells.Item[R, C].ColumnWidth:=3
        Else
          ID.Cells.Item[R, C].ColumnWidth:=ADBGrid.ColWidths[I-1]/7;

        S:=ADBGrid.Cells[I-1, 0];

        ID.Cells.Item[R, C].NumberFormat:='@';
        ID.Cells.Item[R, C].Value:=S;
        ID.Cells.Item[R, C].WrapText:=True;
        ID.Cells.Item[R, C].HorizontalAlignment:=xlHAlignCenter;
        ID.Cells.Item[R, C].VerticalAlignment:=xlVAlignCenter;
      end;

      try
        RC:=ADBGrid.RowCount-1;

        try
          VA:=VarArrayCreate([1, RC, 1, ADBGrid.ColCount], varOleStr);

          For I:=1 To RC Do
          begin
            For J:=1 To ADBGrid.ColCount Do
            begin
              try
                VA[I, J]:=ADBGrid.Cells[J-1, I];
              except
              end;
            end;

          end;
          R:=3; C:=1; V1:=ID.Cells.Item[R, C];
          R:=2+RC; C:=ADBGrid.ColCount; V2:=ID.Cells.Item[R, C];
          ID.Range[V1, V2].NumberFormat:='@';
          ID.Range[V1, V2].Value2:=VA;

          For J:=1 To ADBGrid.ColCount Do
          begin
            R:=3; C:=J; V1:=ID.Cells.Item[R, C];
            R:=3+RC; C:=J; V2:=ID.Cells.Item[R, C];
            ID.Range[V1, V2].HorizontalAlignment:=xlHAlignCenter;
          end;
          R:=1; J:=1;
          V1:=ID.Cells.Item[R, J];
          R:=R+RC; C:=ADBGrid.ColCount;
          V2:=ID.Cells.Item[R, C];
          ID.Range[V1, V2].Columns.AutoFit;

          R:=2; C:=1; V1:=ID.Cells.Item[R, C];
          R:=2+RC; C:=ADBGrid.ColCount; V2:=ID.Cells.Item[R, C];
          Borders:=ID.Range[V1, V2].Borders;

          Borders.Item[xlInsideVertical].LineStyle:=xlContinuous;
          Borders.Item[xlInsideVertical].Weight:=xlThin;
          Borders.Item[xlInsideVertical].ColorIndex:=xlAutomatic;

          If RC>1 Then
          begin
            Borders.Item[xlInsideHorizontal].LineStyle:=xlContinuous;
            Borders.Item[xlInsideHorizontal].Weight:=xlThin;
            Borders.Item[xlInsideHorizontal].ColorIndex:=xlAutomatic;
          end;

          Borders.Item[xlEdgeLeft].LineStyle:=xlContinuous;
          Borders.Item[xlEdgeLeft].Weight:=xlMedium;
          Borders.Item[xlEdgeLeft].ColorIndex:=xlAutomatic;

          Borders.Item[xlEdgeRight].LineStyle:=xlContinuous;
          Borders.Item[xlEdgeRight].Weight:=xlMedium;
          Borders.Item[xlEdgeRight].ColorIndex:=xlAutomatic;

          Borders.Item[xlEdgeBottom].LineStyle:=xlContinuous;
          Borders.Item[xlEdgeBottom].Weight:=xlMedium;
          Borders.Item[xlEdgeBottom].ColorIndex:=xlAutomatic;

          Borders.Item[xlEdgeTop].LineStyle:=xlContinuous;
          Borders.Item[xlEdgeTop].Weight:=xlMedium;
          Borders.Item[xlEdgeTop].ColorIndex:=xlAutomatic;

          R:=2; C:=1; V1:=ID.Cells.Item[R, C];
          R:=2; C:=ADBGrid.ColCount; V2:=ID.Cells.Item[R, C];
          Borders:=ID.Range[V1, V2].Borders;

          Borders.Item[xlInsideVertical].LineStyle:=xlContinuous;
          Borders.Item[xlInsideVertical].Weight:=xlThin;
          Borders.Item[xlInsideVertical].ColorIndex:=xlAutomatic;

          Borders.Item[xlEdgeLeft].LineStyle:=xlContinuous;
          Borders.Item[xlEdgeLeft].Weight:=xlMedium;
          Borders.Item[xlEdgeLeft].ColorIndex:=xlAutomatic;

          Borders.Item[xlEdgeRight].LineStyle:=xlContinuous;
          Borders.Item[xlEdgeRight].Weight:=xlMedium;
          Borders.Item[xlEdgeRight].ColorIndex:=xlAutomatic;

          Borders.Item[xlEdgeBottom].LineStyle:=xlContinuous;
          Borders.Item[xlEdgeBottom].Weight:=xlMedium;
          Borders.Item[xlEdgeBottom].ColorIndex:=xlAutomatic;

          Borders.Item[xlEdgeTop].LineStyle:=xlContinuous;
          Borders.Item[xlEdgeTop].Weight:=xlMedium;
          Borders.Item[xlEdgeTop].ColorIndex:=xlAutomatic;
          R:=1; C:=1;
          ID.Cells.Item[R, C].Value:=ATitle;
        finally
        end;

      finally
      end;
    finally
      IW.Visible[LOCALE_USER_DEFAULT]:=True;
      ID:=nil;
      IW:=nil;
    end;

  finally
  end;
end;

end.

