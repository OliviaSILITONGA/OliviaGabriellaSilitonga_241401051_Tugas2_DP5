program ayo_tebak_angka;
uses crt, sysutils;

var
  angkaAcak, tebakan, kesempatan: integer;

begin
  clrscr;  // Membersihkan layar
  randomize;  // Menginisialisasi pengacak angka
  angkaAcak := random(10) + 1;  // Mengacak angka antara 1 hingga 10
  kesempatan := 3;  // Pengguna diberikan 3 kesempatan

  writeln('Permainan Tebak Angka');
  writeln('Saya telah memilih sebuah angka antara 1 hingga 10.');
  writeln('Anda memiliki 3 kesempatan untuk menebak angka tersebut.');
  
  // Perulangan untuk memberikan pengguna 3 kesempatan
  repeat
    write('Masukkan tebakan Anda: ');
    readln(tebakan);  // Membaca input tebakan dari pengguna

    if tebakan = angkaAcak then
    begin
      writeln('Selamat! Tebakan Anda benar.');
      break;  // Jika tebakan benar, keluar dari perulangan
    end
    else
    begin
      kesempatan := kesempatan - 1;  // Mengurangi jumlah kesempatan
      if kesempatan > 0 then
        writeln('Tebakan Anda salah. Anda masih memiliki ', kesempatan, ' kesempatan.')
      else
        writeln('Tebakan Anda salah.');
    end;
  until (tebakan = angkaAcak) or (kesempatan = 0);  // Perulangan berhenti jika tebakan benar atau kesempatan habis

  // Jika kesempatan habis dan tebakan salah
  if tebakan <> angkaAcak then
    writeln('Kesempatan habis. Angka yang benar adalah: ', angkaAcak);
  
  writeln('Terima kasih telah bermain.');
  readln;  // Menunggu input sebelum menutup program
end.