program bil_genap;
uses crt;
var 
  n, i, jumlah: integer;
begin
  clrscr;
  write('Masukkan bilangan bulat postif: ');
  readln(n);
  
  for i := 1 to n do
  begin
    if (i mod 2 = 0) then
    jumlah:= jumlah + i;
  end;
  writeln('jumlah semua bilangan genap dari 1 hingga ', n , ' adalah ', jumlah);
  readln; 
end.
