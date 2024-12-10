// ignore_for_file: public_member_api_docs, sort_constructors_first
class Ingrediente {
  String nome;
  String tipo;

  Ingrediente({required this.nome, required this.tipo});

  void detalhes(){
    print("Ingrediente: $nome");
    print("Tipo: $tipo");

  }
}


class Fruta extends Ingrediente {
 
  Fruta({
    required super.nome,
  }) : super(tipo: "fruta");

}
class Legume extends Ingrediente {
 
  Legume({
    required super.nome,
  }) : super(tipo: "vegetal");

}
class Tempero extends Ingrediente {
 
  Tempero({
    required super.nome,
  }) : super(tipo: "condimento");

}



void main(){

  Fruta fruta = Fruta(nome: 'Maçã');
  fruta.detalhes();


  Legume legumes = Legume(nome: "Cenoura");
  legumes.detalhes();


  Tempero tempero = Tempero(nome: "Pimenta");
  tempero.detalhes();
}