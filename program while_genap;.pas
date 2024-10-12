program while_genap;
uses crt;
var
  n, i: integer;
begin
  clrscr;
  write('Masukkan bilangan bulat positif: ');
  readln(n);
  i := 2;
  while (i <= n) do
  begin
    write(i);
    i := i + 2;
    if (i <= n) then
      write(', ');
  end;
  writeln;
  readln;
end.
