program DynamicLink;

{$mode objfpc}{$H+}

uses
  SysUtils, Windows, SharedUnit, RandomNum;
type
  MinMax= function (x,y:integer):integer; stdcall;

 var
   DLinkHandle: THandle;
   p:NumShare;
   x,y:integer;
 const
    Max: MinMax = nil;
    Min: MinMax = nil;



begin
  new(p);
  RandmNum(p);
  x:=p^.num1;
   y:=p^.num2;
  DLinkHandle := LoadLibrary('MinMaxdll.dll');
  if DLinkHandle <> 0 then begin
    Min := MinMax(GetProcAddress(DLinkHandle, 'Min'));
    if Min <> nil then begin
      writeln('min=', Min(x,y));
    end;

    Max := MinMax(GetProcAddress(DLinkHandle,'Max'));
    if Max <> nil then begin
      writeln('max=',Max(x,y));
    end;

    FreeLibrary(DLinkHandle);
  end;
  readln;
  dispose(p);
end.

