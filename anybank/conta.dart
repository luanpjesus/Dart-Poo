// ignore_for_file: public_member_api_docs, sort_constructors_first
class Conta {
  String titular;
  double _saldo;

  Conta({required this.titular, required double saldo}) : _saldo = saldo;

  void receber(double valor) {
    _saldo += valor;
    imprimirSaldo();
  }

  void enviarDinheiro(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      imprimirSaldo();
    } else {
      print("Sem saldo!");
    }
  }

  void imprimirSaldo() {
    print("O saldo atual de ${titular} é de R\$${_saldo}");
  }
}

class ContaCorrent extends Conta {
  double emprestimo = 300;
  ContaCorrent({
    required super.titular,
    required super.saldo,
  });

  @override
  void enviarDinheiro(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo += valor;
      imprimirSaldo();
    }
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;
  ContaPoupanca({
    required super.titular,
    required super.saldo,
  });

  void calcularRendimento() {
    _saldo = _saldo * rendimento;
  }
}

class ContaSalario extends Conta {
  String cnpjEmpresa;
  String nomeEmrpesa;

  ContaSalario({
    required this.cnpjEmpresa,
    required this.nomeEmrpesa,
    required super.titular,
    required super.saldo,
  });

  void depositarSalario(double valor) {
    _saldo += valor;
    print(
        "O sálario da $nomeEmrpesa, de $cnpjEmpresa no valor de R\$$valor foi depositado");
  }
}

mixin Imposto {
  double taxa = 0.03;

  double valorTaxado(double valor) {
    return valor * taxa;
  }
}

class ContaEmpresa extends Conta with Imposto {
  ContaEmpresa({
    required super.titular,
    required super.saldo,
  });

  @override
  void enviarDinheiro(double valor) {
    if (_saldo >= valor + valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      imprimirSaldo();
    }
    ;
  }

  @override
  void receber(double valor) {
    _saldo += valor - valorTaxado(valor);
    imprimirSaldo();
  }
}

class ContaInvestimento extends Conta with Imposto {
  ContaInvestimento({required super.titular, required super.saldo});

  @override
  void enviarDinheiro(double valor) {
    if (_saldo >= valor + valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      imprimirSaldo();
    }
  }

  @override
  void receber(double valor) {
    _saldo += valor - valorTaxado(valor);
    imprimirSaldo();
  }
}

void main() {
  ContaSalario contaCatarina = ContaSalario(
      cnpjEmpresa: "0819283981238013",
      nomeEmrpesa: "Exploration.Ltda",
      titular: "Demon",
      saldo: 666.666);
  contaCatarina.depositarSalario(1000);
  contaCatarina.imprimirSaldo();


  ContaEmpresa contaMateus = ContaEmpresa(titular: "Mateus", saldo: 2000);
  ContaInvestimento contaRoberta = ContaInvestimento(titular: "Roberta", saldo: 2000);
  contaMateus.enviarDinheiro(1000);
  contaRoberta.receber(1000);
}
