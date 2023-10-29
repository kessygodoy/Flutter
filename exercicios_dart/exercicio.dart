main() {
  print('Primeiro programa');
  int a = 3;
  double b = 3.1;
  bool estaChovendo = true;
  bool estaFrio = false;
  var c = 'Vcx é muito legal'; // var detecta qual o tipo da variavel
  //baseado no que foi atribuido a ela;
  print(c is String);

  print(estaChovendo || estaFrio);

  //LISTA
  var nomes = ['Ana', 'Bia', 'Carlos'];
  nomes.add('Daniel');
  nomes.add('Daniel');
  nomes.add('Daniel'); //Lista aceita elementos repetidos

  print(nomes.length);
  print(nomes.elementAt(0));
  print(nomes[5]);

  //CONJUNTO
  var conjunto = {0, 1, 2, 3, 4, 4, 4, 4};
  print(conjunto.length); //Conjunto(Set) não aceita conteudo repetido
  print(conjunto is Set);

  //Map
  //trabalha com o formato 'chave: valor'
  Map<String, double> notasDosAlunos = {
    'Ana': 9.7,
    'Bia': 9.2,
    'Carlos': 7.8,
  };

  for (var chave in notasDosAlunos.keys) {
    print('chave = $chave');
  }

  for (var valor in notasDosAlunos.values) {
    print('valor = $valor');
  }

  for (var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }

  //Variavle com tipo dinamico
  dynamic x = 'Teste';
  x = 123;
  x = false;

  //Constante

  final d = 3;

  const e = 5;
}
