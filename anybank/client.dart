// ignore_for_file: public_member_api_docs, sort_constructors_first
class Client {
  String nome;

  List<String> _reservas ;
  Client({
     required this.nome,
     required List<String> reservas,}
  ): _reservas = reservas;

  void reservarQuarto(String quarto){
    _reservas.add(quarto);
    _mostrarReservar();
  }

  void _mostrarReservar(){
    print("Quartos reservados pelo ${nome} :  ${_reservas}" );
  }

  void cancelarReserva(String quarto){
    if(_reservas.contains(quarto)){
      _reservas.remove(quarto);
      _mostrarReservar();
    }
  }
}

void main() {
  Client joaquim = Client(nome: 'Joaquim', reservas: [],);
  joaquim.reservarQuarto("101");
  joaquim.reservarQuarto("102");

  joaquim.cancelarReserva("101");
}
