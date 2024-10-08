import 'dart:io';

void main(){
  stdout.write("Masukkan nilai: ");
  String? input = stdin.readLineSync();
  int nilai = int.parse(input!);
  gradeChecker(nilai);
}

void gradeChecker(int nilai){
  if (nilai > 70){
    print("Nilai A");
  }
  else if (nilai > 40){
    print("Nilai B");
  }
  else if (nilai > 0){
    print("Nilai C");
  }
  else{
    print("Tidak valid");
  }
}