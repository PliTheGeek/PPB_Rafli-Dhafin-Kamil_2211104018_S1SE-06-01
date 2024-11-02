import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  print('Masukkan sebuah bilangan bulat:');
  int? number = int.tryParse(stdin.readLineSync()!);

  if (number == null) {
    print('Input tidak valid.');
    return;
  }

  if (isPrime(number)) {
    print('bilangan prima');
  } else {
    print('bukan bilangan prima');
  }
}
