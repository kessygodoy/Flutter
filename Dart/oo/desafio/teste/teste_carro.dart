import '../model/carro.dart';

void main(List<String> args) {
  var fusca = Carro();

  while (!fusca.estaNoLimite()) {
    fusca.acelerar();
  }
  while (fusca.velocidadeAtual > 0) {
    fusca.frear();
  }
}
