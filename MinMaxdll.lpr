library MinMaxdll;

{$mode objfpc}{$H+}

uses
  Classes
  { you can add units after this };
 function Min(x:integer; y:integer):integer; stdcall;
  begin
     if x < y then
      Min:=x else
      Min:=y;
  end;
 function Max(x:integer;y:integer):integer; stdcall;
  begin
    if x > y then
     Max:=x else
     Max:=y;
  end;

 exports
   Min, Max;

begin
end.

