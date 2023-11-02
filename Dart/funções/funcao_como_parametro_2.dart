void executarPor(int qtde, Function(String) fn, String valor) {
  for (int i = 0; i < qtde; i++) {
    fn(valor);
  }
}

void main(List<String> args) {
  print('Teste');
  executarPor(10, print, 'Muito legal');
}
