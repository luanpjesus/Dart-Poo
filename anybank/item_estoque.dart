// ignore_for_file: public_member_api_docs, sort_constructors_first
class ItemEstoque {
  String nome;
  int qtde;
  double preco;
  ItemEstoque({
    required this.nome,
    required this.qtde,
    required this.preco,
  });

  void addItem(int valor){
     qtde += valor;
  }

  void changePrice(double valor){
    preco = valor;
  }

  void registrarSaid(int valor){
    if(qtde >= valor){
      qtde -= valor;
    } else {
      print("Estoque vazio");
    }
  }

}
