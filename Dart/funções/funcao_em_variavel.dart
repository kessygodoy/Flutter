void main(List<String> args) {
  // int a = 2;
  // tipo nome = valor;
  int Function(int, int) soma1 = somaFn;
  print(soma1(20, 313));

  var soma2 = (x, y) {
    // FUNÇÃO ANONIMA
    return x + y;
  };

  print(soma2(2, 4));
}

int somaFn(int a, int b) {
  return a + b;
}
