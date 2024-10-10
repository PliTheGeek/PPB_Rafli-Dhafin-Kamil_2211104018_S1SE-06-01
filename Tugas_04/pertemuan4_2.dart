int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

void hitungKPK(int bilangan1, int bilangan2) {
  int kpk = (bilangan1 * bilangan2) ~/ gcd(bilangan1, bilangan2);
  print('Bilangan 1: $bilangan1');
  print('Bilangan 2: $bilangan2');
  print('KPK $bilangan1 dan $bilangan2 = $kpk');
}

// Contoh penggunaan
void main() {
  hitungKPK(12, 8);
}
