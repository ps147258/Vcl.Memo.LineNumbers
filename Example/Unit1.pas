unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Memo.LineNumbers;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    LineNumbers: array[0..2] of TLineNumbers;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
  S: string;
begin
  for I := 0 to 73 do
  begin
    S := S + 'String' + I.ToString + #13#10;
  end;
  Memo1.Text := S;

  // ��ܦb ������C
  // Shown in the parent control.
  LineNumbers[0] := TLineNumbers.Create(nil, Memo1, True);

  // ��ܦb Image1 ���C
  // Shown in Image1.
  LineNumbers[1] := TLineNumbers.Create(nil, Memo1, Image1, True);

  // ��ܦb Panel1 ���C
  // Shown in Panel1.
  LineNumbers[2] := TLineNumbers.Create(nil, Memo1, Panel1, True);
end;

procedure TForm1.FormDestroy(Sender: TObject);
var
  I: Integer;
  Item: TLineNumbers;
begin
  // �ϦV�������񪫥�C
  // Release the objects in the reverse order of created.
  for I := Length(LineNumbers) - 1 downto 0 do
  begin
    Item := LineNumbers[I];
    if Assigned(Item) then
      Item.Free;
  end;
end;

end.
