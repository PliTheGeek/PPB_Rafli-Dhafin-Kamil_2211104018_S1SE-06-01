import 'dart:io';

void main() {
  stdout.write("Masukkan angka: ");
  String? input = stdin.readLineSync();
  int angka = int.parse(input!);
  String hasil = checkPrima(angka);
  print(hasil);
}

String checkPrima(int angka){
  if (angka <= 1){
    return "bukan bilangan prima";
  }
  for (int i = 2; i < angka; i++){
    if (angka % i == 0){
      return "bukan bilangan prima";
    }
  }
  return "bilangan prima";
}