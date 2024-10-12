program faktoriial_dari;
uses crt;
var
  N, i: integer;
  faktorial: longint;
begin
  clrscr;
  write('Masukkan bilangan bulat positif: ');
  readln(N);
  faktorial := 1;
  for i := 1 to N do
  begin
    faktorial := faktorial * i; 
  end;
  writeln('Faktorial dari ', N, ' adalah: ', faktorial);
  readln;
end.
