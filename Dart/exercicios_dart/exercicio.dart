// soma(int a, int b) {
//   return a + b;
// }

// int exec(int a, int b, int Function(int, int) fn) {
//   return fn(a, b);
// }

// main() {
//   final r = exec(2, 3, (a, b) {
//     return a - b;
//   });

//   print('O resultado é $r!!!');
// }

// --------------------------------------------------------------------------

class Produto {
  String nome = '';
  double preco = 0;

  Produto([this.nome = 'Produto', this.preco = 0.0]);
}

void main(List<String> args) {
  var p1 = Produto('Lápis', 4.99);
  var p2 = Produto('Geladeira', 1454.99);
  // p1.nome = 'Lápis';
  // p1.preco = 4.59;

  print("O produto ${p1.nome} tem preço ${p1.preco}");
  print("O produto ${p2.nome} tem preço ${p2.preco}");
}
