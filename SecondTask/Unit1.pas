unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Spin, Math;

type
  TForm1 = class(TForm)
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Memo1: TMemo;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dimension, i, j, k, max_el, max_el_j, dob_j: integer;
  summ: real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
dimension := StrToInt(SpinEdit1.Text);
StringGrid1.ColCount := dimension;
StringGrid1.RowCount := dimension;
  for j := 0 to dimension - 1 do
    begin
      for i := 0 to dimension - 1 do
        begin
          if i * j < 3 then begin
            StringGrid1.Cells[i, j] := IntToStr(i + j);
          end
          else begin
            summ := 0;
            for k := 1 to j do
              begin
                summ := summ + Power(-1,k)*k;
              end;
            StringGrid1.Cells[i, j] := FloatToStr(summ);
          end;
        end;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
max_el := StrtoInt(StringGrid1.Cells[0, 0]);
max_el_j := 0;
for j := 1 to dimension - 1 do
    begin
      for i := 1 to dimension - 1 do
        begin
          if i = j then begin
            if max_el < StrToInt(StringGrid1.Cells[i, j]) then begin
              max_el := StrToInt(StringGrid1.Cells[i, j]);
              max_el_j := j;
            end;
          end;
        end;
    end;
dob_j := 1;
for i := 0 to dimension - 1 do
  begin
    dob_j := dob_j * StrToInt(StringGrid1.Cells[i, max_el_j]);
  end;
Memo1.Text := 'Максимальний елемент головної діагоналі: ' + IntToStr(max_el) + #13#10 +'Добуток рядка: ' + IntToStr(dob_j);
end;
end.
