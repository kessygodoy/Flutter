import 'dart:math';

void main(List<String> args) {
  int n1 = numeroAleatorio(100);
  print(n1);

  int n2 = numeroAleatorio();
  print(n2);
}

//colocar a propriedade entre colchetes indica que ela é opcional
// é necessario colocar um valor default quando fizer isso
int numeroAleatorio([int maximo = 10]) {
  return Random().nextInt(maximo);
}

imprimirData([int dia= 1, int mes = 1, int ano = 1970]){
  print('$dia/$mes/$ano')
}