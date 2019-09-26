void main(){
  List listaDeCompras = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Erick', 70.0, true
  ];
  print(listaDeCompras.length);

  List user = [
    'Erick',
    20,
    70,
    true
  ];
  print(user);

  Map user2 = {
    'nome' : 'Erick',
    'idade' : 20,
    'peso' : 70.0,
    'eTuTorNaSon' : false
  };

  print(user2);

  print(listaDeCompras[10]);

  print(user2['nome']);
}