program menghitung_angka_positif;
uses crt;
var
  angka, angkapositif: integer;
begin
  clrscr; 
  angkapositif := 0;
  repeat
    write('Masukkan angka (masukkan angka negatif untuk berhenti): ');
    readln(angka); 
    if (angka >= 0) then
      angkapositif := angkapositif + 1;
  until angka < 0;
  writeln('Jumlah angka positif yang dimasukkan: ', angkapositif);
  readln;
end.