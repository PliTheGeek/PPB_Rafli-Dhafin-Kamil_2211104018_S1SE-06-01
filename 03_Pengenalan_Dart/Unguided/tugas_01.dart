// Tugas 01

String nilaiUser(int nilai) {
  if (nilai > 70) {
    return "$nilai merupakan Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "$nilai merupakan Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "$nilai merupakan Nilai C";
  } else {
    return "";
  }
}

void main() {
  int nilai = 80; // Contoh input
  print(nilaiUser(nilai)); // Output: 80 merupakan Nilai A

  nilai = 50; // Contoh input
  print(nilaiUser(nilai)); // Output: 50 merupakan Nilai B
}
