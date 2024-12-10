import 'item_estoque.dart';

void main(){
  ItemEstoque notebook = ItemEstoque(nome: "Notebook", qtde: 100, preco: 3000.00);
  ItemEstoque smartphone = ItemEstoque(nome: "Smartphone", qtde: 50, preco: 2000.00);
  ItemEstoque tv = ItemEstoque(nome: "SmartTv", qtde: 130, preco: 4000.00);

  List<ItemEstoque> itens = [notebook, smartphone, tv];


  notebook.addItem(10);
  print(notebook.qtde);

  smartphone.addItem(20);
  print(smartphone.qtde);

  tv.addItem(40);

  tv.changePrice(1000);

  notebook.registrarSaid(120);

    for (ItemEstoque item in itens) {
    print("Produto: ${item.nome}, quantidade em estoque: ${item.qtde} com o valor de ${item.preco}");
  }
}