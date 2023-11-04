import '../model/carro.dart';

void main(List<String> args) {
  var fusca = Carro(300);

  while (!fusca.estaNoLimite()) {
    fusca.acelerar();
  }
  while (fusca.velocidadeAtual > 0) {
    fusca.frear();
  }
  fusca.velocidadeAtual = 306;
  print(fusca.velocidadeAtual);
}
