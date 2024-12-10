// ignore_for_file: public_member_api_docs, sort_constructors_first
class Animal {
  String nome;
  Animal({
    required this.nome,
  });

  void emitirSom() {
    print("O esta emitindo um som");
  }
}

class Cachorro extends Animal {
  Cachorro({required super.nome});

  @override
  void emitirSom() {
    print("O cachorro esta latindo");
  }

  void abanarRabo() {
    print("O cachorro esta abanando o rabo");
  }
}

class Gato extends Animal {
  Gato({required super.nome});
  @override
  void emitirSom() {
    print("O gato esta miando");
  }

  void arranharMoveis() {
    print("O gato arranhou os móveis");
  }
}

void main() {
  Cachorro dog = Cachorro(nome: "Feicao");
  Gato pussy = Gato(nome: "PussyCat");
  pussy.emitirSom();

  pussy.arranharMoveis();
  dog.emitirSom();
  dog.abanarRabo();
}
