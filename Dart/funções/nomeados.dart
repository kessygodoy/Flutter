void main(List<String> args) {
  saudarPessoa(nome: "Joao", idade: 33);
  saudarPessoa(idade: 47, nome: "Maria");
}

//Colocando entre chaves os parametros, eles sao nomeados
//e para chamar a funçao precisa dizer o nome do aprametro
//assim não importa sua posição ao ser chamado
saudarPessoa({String nome = "joe", int idade = 18}) {
  print("Ola $nome nem ´parece que voce tem $idade anos.");
}
