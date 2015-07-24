unit RandomNum;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SharedUnit;

implementation

 procedure RandmNum(q:NumShare;var x:Te;var y:Te); stdcall;
  begin
    x:= 1 + Random(100);
    y:= 1 + Random(100);
   q^.num1:= x;
   q^.num2:= y;
  end;

begin
end.

