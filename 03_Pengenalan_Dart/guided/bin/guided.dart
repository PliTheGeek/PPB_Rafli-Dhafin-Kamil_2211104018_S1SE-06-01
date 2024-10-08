void main() {
  // Hello World

  print("Hello World");

  // Variables

  var name = "Budiono Siregar";
  var age = 12;
  var height = 1.75;
  var dream = "Kapal Lawd";
  var isStudent = true;

  print(name);
  print(dream);

  // Data Types

  //  If Else Statement

  if (isStudent) {
    print("Perkenalkan nama saya $name Cita Cita adalah $dream");
  } else {
    print("Budiono Bukan Kapal Lawd");
  }

  // Switch Case Statement

  var nilai = "A";

  switch (nilai) {
    case "A":
      print("Sangat Baik");
      break;
    case "B":
      print("Baik");
      break;
    case "C":
      print("Cukup");
      break;
    case "D":
      print("Kurang");
      break;
    case "E":
      print("Sangat Kurang");
      break;
    default:
      print("Nilai Tidak Ditemukan");
  }

  // Fixed List (Array)

  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers);
}
