class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 200]);

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) {
    if (novaVelocidade <= velocidadeMaxima && novaVelocidade >= 0) {
      this._velocidadeAtual = novaVelocidade;
    }
  }

  int acelerar() {
    if (_velocidadeAtual + 5 >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else
      _velocidadeAtual += 5;
    print("Velocidade auemntada para: $_velocidadeAtual");
    return _velocidadeAtual;
  }

  int frear() {
    if (_velocidadeAtual - 5 <= 0) {
      _velocidadeAtual = 0;
    } else
      _velocidadeAtual -= 5;
    print("Velocidade reduzida para $_velocidadeAtual");
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    return _velocidadeAtual >= velocidadeMaxima;
  }
}
