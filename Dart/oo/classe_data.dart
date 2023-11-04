class Data {
  int? dia;
  int? mes;
  int? ano;

  // Data(int dia, int mes, int ano) {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }
  //Colocando o this nos parametros vc automaticamente diz que o construtor
  // declara eles como os que vao ser recebidos na instanciação
  Data([this.dia = 1, this.mes = 1, this.ano = 1]);

  String obterFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterFormatada();
  }
}

void main(List<String> args) {
  var dataAniversario = new Data(1, 1, 2020);

  // dataAniversario.dia = 3;
  // dataAniversario.mes = 10;
  // dataAniversario.ano = 2020;

  var dataCompra = Data(1, 1, 1);
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  // print(
  //     "${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano} ");
  // print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano} ");
  dataAniversario.obterFormatada();
  dataCompra.obterFormatada();

  print(dataAniversario);
  print(dataCompra);
}
