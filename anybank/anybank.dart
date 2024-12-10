// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'conta.dart';
import 'item_estoque.dart';

void main() {
  //################## Esse trecho é a função/método construtora que sempre fica abaixo dos atributos da classe
  Conta contaMateus = Conta(
    titular: 'Matheus',
    saldo: 1000.00,
  );
  Conta contaRoberta = Conta(
    titular: "Roberta",
    saldo: 2000.00,
  );
  Conta contaMaria = Conta(
    titular: "Maria",
    saldo: 3000.00,
  );
  Conta contaJoao = Conta(
    titular: "joão",
    saldo: 6000.00,
  );

  ContaCorrent contaLuan = ContaCorrent(
    titular: "Luan",
    saldo: 10000.00,
  );

  ContaPoupanca contaDenise = ContaPoupanca(titular: "Denise", saldo: 3000);
  List<Conta> contas = [
    contaMateus,
    contaRoberta,
    contaMaria,
    contaJoao,
    contaLuan,
  ];

  contaLuan.imprimirSaldo();
  contaLuan.enviarDinheiro(1000);


  contaDenise.imprimirSaldo();
  contaDenise.enviarDinheiro(4300);
  contaDenise.calcularRendimento();
  contaDenise.imprimirSaldo();

  

   
  for (Conta conta in contas) {
    print(conta.imprimirSaldo);

    print("############################");
  }

  // Receita receitaMacarraoPesto =
  //     Receita(nome: "Macarrão ao pesto", preco: 20.00);
  // Receita receitaLasanha4queijos =
  //     Receita(nome: "Lasanha 4 queijos", preco: 32.00);
  // Receita receitaBurrataPesto =
  //     Receita(nome: "Burrata com pesto", preco: 28.00);

  // List<Receita> receitas = [
  //   receitaMacarraoPesto,
  //   receitaLasanha4queijos,
  //   receitaBurrataPesto
  // ];

  // for (Receita receita in receitas) {
  //   print(receita.nome);
  //   print(receita.preco);
  //   print("##########");
  // }

  // contaMateus.titular;

  contaRoberta.receber(3000);

  contaRoberta.receber(500);
  contaRoberta.enviarDinheiro(1000);

  contaMateus.enviarDinheiro(750);
  contaMateus.receber(1000);

  // print(contaRoberta.saldo);
}

class Receita {
  String nome;
  double preco;

  Receita({required this.nome, required this.preco});
}
