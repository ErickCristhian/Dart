void main(){
  hello('Erick');
  hello('Erick', 20, 'cristhian');
}

//void hello(String nome, {String sobrenome: 'Bonito'}){
  //print('hello ' + nome + ' ' + sobrenome);
//}

void hello(String nome, [int idade = 0, sobrenome = 'Bonito']){
  var msg = 'hello ' + nome + ' ' ;
  if(sobrenome != null){
      msg = msg + sobrenome;
  }
  msg = msg + ', '+ idade.toString() + ' anos';
  print(msg);
}
