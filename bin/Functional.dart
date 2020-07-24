String scream(int length) => "A${'a' * length}h!";

void main() {
  final values = [1, 2, 3, 5, 10, 50];

  /* Programação imperativa */
  // for (var length in values) {
  //   print(scream(length));
  // }

  /* Programação declarativa/funcional */
  // values.map(scream).forEach(print);

  /* pule o primeiro valor, pegue os proximos 3 e imprima usando a função Scream */
  values.skip(1).take(3).map(scream).forEach(print);
}
