unit RandomNum;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SharedUnit;

procedure RandmNum(var q:NumShare);

implementation

 procedure RandmNum(var q:NumShare);
  var
    x: integer;
    y: integer;
 begin
    x:= 1 + Random(100);
    y:= 1 + Random(100);
   q^.num1:= x;
   q^.num2:= y;
  end;

begin
  Randomize;
end.

