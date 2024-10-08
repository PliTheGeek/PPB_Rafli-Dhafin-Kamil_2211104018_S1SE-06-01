import 'dart:io';

void main(){
  stdout.write("Masukkan panjang piramida: ");
  String? input = stdin.readLineSync();
  int panjang = int.parse(input!);
  printPiramida(panjang);
  // printPiramidaTerbailk(panjang);
}

void printPiramida(int panjang){
  for (int i = 0; i < panjang; i++){
    for (int k = 0; k < (panjang-i-1); k++){
      stdout.write(" ");
    }
    for (int j = 0; j < (i*2 + 1); j++){
      stdout.write("*");
    }
    stdout.write("\n");
  }
}

void printPiramidaTerbailk(int panjang){
  for (int i = panjang-1; i >= 0; i--) {
    for (int k = 0; k <= (panjang - i - 2); k++) {
      stdout.write(" ");
    }
    for (int j = 0; j < (i * 2 + 1); j++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}