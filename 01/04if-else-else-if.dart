void main() {
  var nome = 'Erick';
  if(nome != 'Erick'){
    print('Executou o IF');
  }
  print('terminou');

  var idade = 09;
  if (idade > 18){
    print('Idade maior q 18');
  } else if (idade >= 10){
    print('Se não, idade maior que 10');
  } else {
    print('Idade não permitida');
  }
}