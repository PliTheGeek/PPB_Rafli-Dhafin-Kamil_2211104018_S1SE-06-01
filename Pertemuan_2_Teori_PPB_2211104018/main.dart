void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "John Doe",
      "ipk": 3.88,
      "isMarried": false,
    },
    {
      "nama": "Andi Doe",
      "ipk": 3.78,
      "isMarried": true,
    },
    {
      "nama": "Budi Doe",
      "ipk": 3.68,
      "isMarried": true,
    }
  ];

  double totalIpk = 0;
  for (var mahasiswa in daftarMahasiswa) {
    totalIpk += mahasiswa["ipk"];
  }

  double rerataipk = totalIpk / daftarMahasiswa.length;
  print("Rata Rata  IPK: $rerataipk");

// Menjumlahkan Mahasiswa Yang Sudah Menikah

  int totalMenikah = 0;
  for (var mahasiswa in daftarMahasiswa) {
    if (mahasiswa["isMarried"]) {
      totalMenikah++;
    }
  }

  print("Total Mahasiswa yang sudah menikah: $totalMenikah");
}

// Output:


// 1. buatkan algoritma untuk
  // - menghitung rata2 dari ipk
  // - menjumlahan berapa banyak mahasiswa yang sudah nikah
  // 2. masing2 dari point2 1a dan 1b diimplementasikan dalam kodingan