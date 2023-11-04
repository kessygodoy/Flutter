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

  //Construtores Nomeados
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

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

  print(new Data());
  print(Data(31));
  print(Data(31, 12));
  print(Data(31, 12, 2021));

  print(Data.com(ano: 2022));

  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Mickey será público em $dataFinal");

  print(Data.ultimoDiaDoAno(2023));
}
