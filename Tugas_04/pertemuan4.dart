void createAndTransposeMatrix(int A, int B) {
  List<List<int>> matrix =
      List.generate(A, (i) => List.generate(B, (j) => j + i * B));

  print('Matriks AxB');
  print('A: $A');
  print('B: $B');
  print('Isi matriks:');
  for (var row in matrix) {
    print(row.join(' '));
  }

  List<List<int>> transposeMatrix =
      List.generate(B, (i) => List.generate(A, (j) => matrix[j][i]));

  print('Hasil transpose:');
  for (var row in transposeMatrix) {
    print(row.join(' '));
  }
}

void main() {
  createAndTransposeMatrix(3, 2);
}
