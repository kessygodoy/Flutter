List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for (E elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

void main(List<String> args) {
  var notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3];
  var boasNotasFn = (double nota) => nota >= 7.5;

  var somenteNotasBoas = filtrar(notas, boasNotasFn);

  print(somenteNotasBoas);

  var nomes = ['Ana', 'Bia', 'Rebeca', 'Kessy', 'Joao'];
  var nomesGrantesFn = (String nome) => nome.length >= 4;

  print(filtrar(nomes, nomesGrantesFn));
}
