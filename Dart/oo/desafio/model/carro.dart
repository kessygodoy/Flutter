class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 200]);
  int acelerar() {
    if (velocidadeAtual + 5 >= velocidadeMaxima) {
      velocidadeAtual = velocidadeMaxima;
    } else
      velocidadeAtual += 5;
    print("Velocidade auemntada para: $velocidadeAtual");
    return velocidadeAtual;
  }

  int frear() {
    if (velocidadeAtual - 5 <= 0) {
      velocidadeAtual = 0;
    } else
      velocidadeAtual -= 5;
    print("Velocidade reduzida para $velocidadeAtual");
    return velocidadeAtual;
  }

  bool estaNoLimite() {
    return velocidadeAtual >= velocidadeMaxima;
  }
}