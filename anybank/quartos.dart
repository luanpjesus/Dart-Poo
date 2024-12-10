// ignore_for_file: public_member_api_docs, sort_constructors_first
class Quarto {
  String categoria;
  double diaria;
  int qtdsDeDias;
  Quarto({
    required this.categoria,
    required this.diaria,
    required this.qtdsDeDias,
  });

  void reservar(){
    print("Reserva realizada para $qtdsDeDias no quarto $categoria");
  }

  void calcularDiarias(){
     print("Total a pagar = R\$${diaria * qtdsDeDias}");
  }
}


class QuartoSimples extends Quarto{

  QuartoSimples({required super.qtdsDeDias}) : super(categoria: 'Simples', diaria: 80);





}
class QuartoMedio extends Quarto{
  QuartoMedio({required super.qtdsDeDias}) : super(categoria: 'Médio', diaria: 250);


    void servirCafe(){
    print("Servindo café da manha no quarto $categoria ");
  }

}
class QaurtoLuxo extends Quarto{
  QaurtoLuxo({required super.qtdsDeDias}) : super(categoria: 'Luxo', diaria: 1000);


    void servirCafe(){
    print("Servindo café da manha no quarto $categoria ");
  }

  void limparQuarto(){
    print("Limpando quarto $categoria");
  }

}


void main(){

  QuartoSimples quartosimples = QuartoSimples(qtdsDeDias: 10);
  quartosimples.reservar();

  QuartoMedio quartoMedio = QuartoMedio(qtdsDeDias: 20);
  quartoMedio.reservar();


  QaurtoLuxo quartoLuxo = QaurtoLuxo(qtdsDeDias: 7);
  quartoLuxo.reservar();
  quartoLuxo.servirCafe();
  quartoLuxo.limparQuarto();

  quartoLuxo.calcularDiarias();
  quartoMedio.calcularDiarias();
  quartosimples.calcularDiarias();
}
