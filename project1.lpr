unit project1;

{$mode objfpc}{$H+}



uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Interfaces;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  s:TSystemTime;
  Start:Double;
  b:Boolean;

implementation

{$R *.lfm}

{ TForm1 }

function GetTime:TDateTime;
var s:TSystemTime;
begin
 GetLocalTime(s);
 Result:=SystemTimeToDateTime(s);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if not (b) then
  Start:=GetTime;
  b:=True;
  Label1.Caption:=FormatDateTime('hh:nn:ss:zzz', GetTime - Start);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  b:=false;
  Timer1.Enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled := not Timer1.Enabled;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Timer1.Enabled := false;
  Label1.Caption:=FormatDateTime('00:00:00:000', GetTime - Start);
end;


end.


